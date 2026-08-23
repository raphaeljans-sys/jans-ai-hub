#!/usr/bin/env python3
"""kb-check — deterministischer Selbsttest der Wissensbasis Energie.

Entstanden aus dem Qualitaets-Audit vom 23.08.2026
(`outputs/2026-08-23_energie-audit-qualitaetsoffensive.md`). Das Audit hat 47 belegte
Befunde in vier Fehlerklassen sortiert; drei davon sind maschinell fassbar. Dieses Script
prueft genau diese drei, damit sie nicht mehr zufaellig gefunden werden muessen.

    konsistenz  (Klasse 04.4)  Statusskala, Register, Waisen, Linkgraph, Dubletten
    kennzahlen  (Klasse 04.1)  Bezugsgroesse wandert nicht mit der Zahl
    frische     (Klasse 04.3)  die Zahl kommt ohne ihr Alter beim Leser an

Die vierte Klasse (04.2, "die KB weiss es besser, als sie sagt") braucht einen Textvergleich
zwischen Destillat und Erzeugnis und laeuft als eigener Schritt im Lauf, nicht hier.

Aufruf:
    python3 tools/kb-check.py                 # alle Pruefungen
    python3 tools/kb-check.py --nur frische   # eine Pruefung
    python3 tools/kb-check.py --leise         # nur Zaehlstand, fuer den Lauf-Bericht

Das Script ist LESEND und aendert nie eine Datei. Es meldet Kandidaten, keine Urteile:
jeder Treffer ist am Umfeld zu beurteilen. Ein Treffer, der nach Pruefung in Ordnung ist,
gehoert mit einer Zeile Begruendung in `wiki/QUESTIONS.md`, damit ihn der naechste Lauf
nicht erneut aufgreift.
"""

import argparse
import datetime
import pathlib
import re
import sys
from collections import defaultdict

KB = pathlib.Path(__file__).resolve().parent.parent
DEST = KB / "destillate"
WIKI = KB / "wiki"
INDEX = DEST / "INDEX.md"

STATUS_SKALA = ("speculative", "emerging", "established", "superseded")
STATUS_RANG = {s: i for i, s in enumerate(STATUS_SKALA)}

# Kennzahlen, die ohne ihre Bezugsgroesse regelmaessig falsch weitergereicht werden.
# Ausloeser des Audits: «Unabhaengigkeit» 53 % war ein Deckungsgrad, keine Autarkie.
KENNZAHLEN_LEXIKON = {
    "Autarkie": ("Eigenverbrauch", "Verbrauch", "Selbstversorgung", "Deckungsgrad"),
    "Selbstversorgungsgrad": ("Eigenverbrauch", "Verbrauch", "Autarkie"),
    "Deckungsgrad": ("Produktion", "Verbrauch", "Bedarf", "Kollektor", "Autarkie"),
    "THGE": ("EBF", "GF", "Geschossflaeche", "Geschossfläche", "m2", "m²"),
    "qE50": ("Huellflaeche", "Hüllfläche", "m³/(h·m²)", "m3/(h*m2)", "n50"),
    "n50": ("Innenvolumen", "Volumen", "h⁻¹", "h-1", "qE50"),
}

# Nur diese Kennzahlen werden auf die fehlende Bezugsgroesse geprueft. THGE steht bewusst
# nicht darin: der Begriff kommt zu haeufig in erklaerendem Fliesstext vor und erzeugte in
# der ersten Fassung dieses Scripts mehr Fehlalarme als Befunde. Sein Nenner-Problem
# (EBF gegen GF, Audit-Befund 01.1) faengt die Unmoeglichkeits- und die Nennerprobe.
BEZUGSPFLICHT = ("Autarkie", "Selbstversorgungsgrad", "Deckungsgrad", "qE50", "n50")

# Quoten, die 100 % nie ueberschreiten koennen.
QUOTEN_MIT_DECKEL = ("Autarkie", "Selbstversorgungsgrad", "Eigenverbrauchsquote", "Eigenverbrauchsgrad")

# Alterungsschwellen in Monaten, nach Themenfeld. Bewusst NUR fuer Geld und Markt:
# ein Rechts- oder Norm-Destillat altert nicht still, es wird abgeloest und bekommt dann
# `superseded` — dafuer ist die Konsistenzpruefung zustaendig. Foerdersaetze und Preise
# dagegen veralten, ohne dass es jemand mitteilt. Eine Altersmeldung fuer jedes historische
# Dokument haette den Prueflauf unlesbar gemacht (erste Fassung: 152 statt 24 Treffer).
SCHWELLE_STANDARD = None
SCHWELLEN = (
    (("foerder", "förder", "einmalverg", "beitrag", "subvention", "klimapraemie", "klimaprämie"), 12),
    (("preis", "kosten", "chf", "tarif", "markt", "offerte"), 18),
)

# Bewusst nur SELBST GESETZTE Pruefstichtage. «gueltig bis» und «befristet bis» stehen in
# historischen Dokumenten zu Tausenden und sind eine Eigenschaft der Quelle, kein Versaeumnis
# der KB — sie gehoeren in die Statuspruefung (superseded), nicht in die Terminwache.
TERMIN_SPRACHE = re.compile(
    r"(naechste Pruefung|nächste Prüfung|zu pruefen bis|zu prüfen bis|Pruefstichtag|Prüfstichtag|"
    r"erneut pruefen am|erneut prüfen am|wieder vorlegen am|nachfassen am|Beobachtungspunkt bis)"
    r"[^\n]{0,80}?(\d{1,2}\.\d{1,2}\.\d{4}|\d{4}-\d{2}-\d{2})",
    re.IGNORECASE,
)

CHF_ZEILE = re.compile(r"CHF\s?[\d'’.]{3,}|[\d'’.]{3,}\s?(CHF|Fr\.)|Rp\./kWh")
JAHRESZAHL = re.compile(r"(19|20)\d{2}")


def frontmatter(text):
    """Liest den YAML-artigen Kopf. Bewusst zeilenweise statt mit yaml — die KB
    enthaelt Frontmatter-Werte mit Doppelpunkten, Klammern und Umlauten, die ein
    strikter Parser zurueckweisen wuerde."""
    if not text.startswith("---"):
        return {}
    ende = text.find("\n---", 3)
    if ende == -1:
        return {}
    feld = {}
    for zeile in text[3:ende].splitlines():
        if ":" in zeile and not zeile.startswith((" ", "\t", "-")):
            schluessel, wert = zeile.split(":", 1)
            feld[schluessel.strip()] = wert.strip()
    return feld


def lade(ordner):
    dateien = {}
    for pfad in sorted(ordner.glob("*.md")):
        text = pfad.read_text(encoding="utf-8", errors="replace")
        dateien[pfad.stem] = {"pfad": pfad, "text": text, "fm": frontmatter(text)}
    return dateien


def status_wort(roh):
    """Der Statuswert traegt in dieser KB oft eine Begruendung hinter dem Wort.
    Massgeblich ist das erste Wort."""
    if not roh:
        return None
    return re.split(r"[\s(,;.]", roh.strip(), maxsplit=1)[0].lower()


def monate_alt(datum_roh, heute):
    treffer = re.search(r"(\d{4})-(\d{2})", datum_roh or "")
    if not treffer:
        treffer = re.search(r"(\d{4})", datum_roh or "")
        if not treffer:
            return None
        jahr, monat = int(treffer.group(1)), 6
    else:
        jahr, monat = int(treffer.group(1)), int(treffer.group(2))
    return (heute.year - jahr) * 12 + (heute.month - monat)


def schwelle_fuer(text):
    """Ein Dokument gilt erst dann als Geld- oder Marktdokument, wenn das Stichwort
    mehrfach vorkommt. Eine beilaeufige Erwaehnung von «Foerderung» macht aus einem
    Norm-Destillat kein alterndes Preisdokument."""
    unten = text.lower()
    for stichworte, monate in SCHWELLEN:
        if sum(unten.count(s) for s in stichworte) >= 3:
            return monate
    return SCHWELLE_STANDARD


# ---------------------------------------------------------------- Konsistenz

def pruefe_konsistenz(dest, wiki, befunde):
    index_text = INDEX.read_text(encoding="utf-8", errors="replace") if INDEX.exists() else ""

    for name, d in dest.items():
        if name == "INDEX":
            continue
        wort = status_wort(d["fm"].get("status"))
        if wort is None:
            befunde("konsistenz", d["pfad"], "kein Statusfeld im Frontmatter")
        elif wort not in STATUS_SKALA:
            befunde("konsistenz", d["pfad"],
                    f"Statuswert «{wort}» liegt ausserhalb der Skala {'/'.join(STATUS_SKALA)} "
                    f"— die Datei entgeht damit jeder Statuspruefung")
        if f"[[{name}]]" not in index_text and name not in index_text:
            befunde("konsistenz", d["pfad"], "kein Eintrag in destillate/INDEX.md (Waise)")

    # Register stuft hoeher ein als das Frontmatter — die gefaehrliche Richtung.
    for zeile in index_text.splitlines():
        links = re.findall(r"\[\[([^\]]+)\]\]", zeile)
        if len(links) != 1:
            continue                      # Sammelzeilen sonst als Fehlalarm
        ziel = dest.get(links[0])
        if not ziel:
            continue
        fm_wort = status_wort(ziel["fm"].get("status"))
        index_woerter = [w for w in STATUS_SKALA if re.search(rf"\b{w}\b", zeile, re.IGNORECASE)]
        if fm_wort in STATUS_RANG and index_woerter:
            hoechster = max(index_woerter, key=lambda w: STATUS_RANG[w])
            if STATUS_RANG[hoechster] > STATUS_RANG[fm_wort]:
                befunde("konsistenz", INDEX,
                        f"Register fuehrt [[{links[0]}]] als «{hoechster}», das Frontmatter sagt "
                        f"«{fm_wort}» — Register schreibt Status zweit statt ihn abzuleiten")

    # Linkgraph
    bekannt = set(dest) | set(wiki)
    tote = defaultdict(list)
    for sammlung in (dest, wiki):
        for name, d in sammlung.items():
            for ziel in re.findall(r"\[\[([^\]|]+)\]\]", d["text"]):
                if ziel.strip() not in bekannt:
                    tote[ziel.strip()].append(name)
    for ziel, quellen in sorted(tote.items()):
        befunde("konsistenz", KB,
                f"Linkziel [[{ziel}]] loest in der KB nicht auf ({len(quellen)} Vorkommen, "
                f"u.a. {quellen[0]})")

    # Dubletten ueber das quelle-Feld
    nach_quelle = defaultdict(list)
    for name, d in dest.items():
        quelle = (d["fm"].get("quelle") or "").strip().lower()
        if len(quelle) > 25:
            nach_quelle[quelle[:120]].append(name)
    for quelle, namen in nach_quelle.items():
        if len(namen) > 1:
            befunde("konsistenz", DEST,
                    f"dieselbe Quelle in {len(namen)} Destillaten destilliert: {', '.join(namen)}")


# ---------------------------------------------------------------- Kennzahlen

def saetze(text):
    for absatz in text.split("\n"):
        for satz in re.split(r"(?<=[.;!?])\s+", absatz):
            if satz.strip():
                yield satz.strip()


def pruefe_kennzahlen(dest, wiki, befunde):
    for sammlung in (dest, wiki):
        for name, d in sammlung.items():
            for nr, zeile in enumerate(d["text"].splitlines(), 1):
                for satz in saetze(zeile):
                    # (1) Unmoeglichkeitsregel
                    for quote in QUOTEN_MIT_DECKEL:
                        if quote.lower() in satz.lower():
                            for wert in re.findall(r"(\d{2,3})(?:[.,]\d+)?\s?%", satz):
                                if int(wert) > 100:
                                    befunde("kennzahlen", d["pfad"],
                                            f"Z. {nr}: «{quote}» mit {wert} % — eine Quote auf den "
                                            f"eigenen Bedarf kann 100 % nicht ueberschreiten; "
                                            f"vermutlich ein Deckungsgrad")
                    # (2) Kennzahl ohne Bezugsgroesse im selben Satz — nur dort, wo ein
                    # konkreter Prozentwert steht. Ohne Zahl ist der Satz Erklaerung und
                    # braucht den Nenner nicht.
                    for kennzahl in BEZUGSPFLICHT:
                        bezuege = KENNZAHLEN_LEXIKON[kennzahl]
                        if not re.search(rf"\b{re.escape(kennzahl)}\b", satz):
                            continue
                        if not re.search(r"\d+(?:[.,]\d+)?\s?%", satz):
                            continue
                        if any(b.lower() in satz.lower() for b in bezuege):
                            continue
                        befunde("kennzahlen", d["pfad"],
                                f"Z. {nr}: «{kennzahl}» mit Zahlenwert, ohne Bezugsgroesse im selben "
                                f"Satz ({'/'.join(bezuege[:2])} …): {satz[:110]}")

            pruefe_tabellen_nenner(name, d, befunde)


def zahl(zelle):
    roh = re.sub(r"[^\d.,]", "", zelle.replace("'", "").replace("’", ""))
    roh = roh.replace(",", ".")
    try:
        return float(roh) if roh and roh.count(".") <= 1 else None
    except ValueError:
        return None


def pruefe_tabellen_nenner(name, d, befunde):
    """Tabellen-Nennerprobe: wo eine Tabelle eine Summe und einen Jahreswert fuehrt,
    muss der implizite Nenner ueber die Zeilen konstant sein. Der Audit-Befund 02.11
    (Vollkostentabelle F30) hing genau daran."""
    zeilen = d["text"].splitlines()
    block, start = [], 0
    for nr, zeile in enumerate(zeilen + [""], 1):
        if zeile.strip().startswith("|"):
            if not block:
                start = nr
            block.append((nr, [z.strip() for z in zeile.strip().strip("|").split("|")]))
            continue
        if len(block) >= 4:
            pruefe_block(name, d, block, start, befunde)
        block = []


def pruefe_block(name, d, block, start, befunde):
    spalten = max(len(z[1]) for z in block)
    if spalten < 3:
        return
    for a in range(1, spalten):
        for b in range(a + 1, spalten):
            quotienten = []
            for nr, zellen in block:
                if len(zellen) <= b:
                    continue
                x, y = zahl(zellen[a]), zahl(zellen[b])
                # Nur Spaltenpaare, deren Verhaeltnis wie eine Jahres- oder Stueckzahl
                # aussieht (5 bis 60). Sonst wird jede Tabelle mit zwei beliebigen
                # Zahlenspalten zum Kandidaten.
                # x muss wie eine Summe aussehen (>= 1000). Ohne diese Schranke meldet die
                # Probe jede Bauteiltabelle, in der Daemmstaerke durch U-Wert geteilt
                # zufaellig im Bereich einer Jahreszahl liegt.
                if x and y and y != 0 and x >= 1000 and 5 <= x / y <= 60:
                    quotienten.append((nr, x / y))
            if len(quotienten) < 4 or len(quotienten) < len(block) - 2:
                continue
            werte = [q for _, q in quotienten]
            streuung = (max(werte) - min(werte)) / min(werte)
            if 0.08 < streuung < 0.60:
                befunde("kennzahlen", d["pfad"],
                        f"Tabelle ab Z. {start}: die Spalten {a} und {b} haben je Zeile einen "
                        f"anderen impliziten Nenner ({min(werte):.1f} bis {max(werte):.1f}) — "
                        f"die beiden Spalten sind nicht ineinander umrechenbar, das gehoert "
                        f"unter die Tabelle geschrieben")


# ---------------------------------------------------------------- Frische

def pruefe_frische(dest, wiki, befunde, heute):
    # Welche Destillate speisen ueberhaupt ein Bauherren-Erzeugnis? Nur deren Alter ist
    # dringend. Ein altes Destillat, das niemand zitiert, altert folgenlos.
    zitiert = set()
    for d in wiki.values():
        zitiert.update(re.findall(r"\[\[([^\]|]+)\]\]", d["text"]))

    for name, d in wiki.items():
        if name in ("INDEX", "QUESTIONS", "BAUHERREN-FAQ"):
            continue
        if "datenstand" not in d["fm"]:
            befunde("frische", d["pfad"],
                    "Themenartikel ohne Frontmatter-Feld «datenstand» — last_updated misst den "
                    "letzten Zugriff, nicht das Alter der Zahlen")
            # Solange der Artikel kein Alter traegt, gehen auch seine Preise ohne Alter
            # beim Leser an. Sobald das Feld steht, verschwindet diese Meldung von selbst.
            for nr, zeile in enumerate(d["text"].splitlines(), 1):
                if CHF_ZEILE.search(zeile) and not JAHRESZAHL.search(zeile):
                    umfeld = "\n".join(d["text"].splitlines()[max(0, nr - 4):nr + 3])
                    if not JAHRESZAHL.search(umfeld):
                        befunde("frische", d["pfad"],
                                f"Z. {nr}: CHF-Wert ohne Jahreszahl, in einem Artikel ohne "
                                f"datenstand: {zeile.strip()[:90]}")

    for sammlung in (dest, wiki):
        for name, d in sammlung.items():
            roh = d["fm"].get("datenstand") or d["fm"].get("ausgabe")
            alter = monate_alt(roh, heute) if roh else None
            if alter is not None and (sammlung is wiki or name in zitiert):
                grenze = schwelle_fuer(d["text"][:4000])
                if grenze is not None and alter > grenze:
                    befunde("frische", d["pfad"],
                            f"datenstand «{roh}» ist {alter} Monate alt (Schwelle {grenze}) "
                            f"und das Destillat wird in einem Erzeugnis zitiert")

            for nr, zeile in enumerate(d["text"].splitlines(), 1):
                for treffer in TERMIN_SPRACHE.finditer(zeile):
                    rohdatum = treffer.group(2)
                    try:
                        if "-" in rohdatum:
                            datum = datetime.date.fromisoformat(rohdatum)
                        else:
                            t, m, j = rohdatum.split(".")
                            datum = datetime.date(int(j), int(m), int(t))
                    except ValueError:
                        continue
                    if datum < heute:
                        befunde("frische", d["pfad"],
                                f"Z. {nr}: selbst gesetzter Termin {rohdatum} ist verstrichen "
                                f"— gehoert nach logbuch/fristen.md, nicht in einen Laufbericht")


# ---------------------------------------------------------------- Rahmen

def main():
    parser = argparse.ArgumentParser(description="Selbsttest der KB Energie")
    parser.add_argument("--nur", choices=("konsistenz", "kennzahlen", "frische"))
    parser.add_argument("--leise", action="store_true", help="nur den Zaehlstand ausgeben")
    parser.add_argument("--heute", help="Stichtag JJJJ-MM-TT (Vorgabe: heute)")
    args = parser.parse_args()

    heute = datetime.date.fromisoformat(args.heute) if args.heute else datetime.date.today()
    dest, wiki = lade(DEST), lade(WIKI)

    treffer = defaultdict(list)

    def befunde(bereich, pfad, text):
        treffer[bereich].append((pathlib.Path(pfad).name, text))

    laeufe = {
        "konsistenz": lambda: pruefe_konsistenz(dest, wiki, befunde),
        "kennzahlen": lambda: pruefe_kennzahlen(dest, wiki, befunde),
        "frische": lambda: pruefe_frische(dest, wiki, befunde, heute),
    }
    for bereich, lauf in laeufe.items():
        if args.nur in (None, bereich):
            lauf()

    print(f"kb-check {heute} — {len(dest) - 1} Destillate, {len(wiki)} Wiki-Dateien")
    gesamt = 0
    for bereich in ("konsistenz", "kennzahlen", "frische"):
        if args.nur not in (None, bereich):
            continue
        eintraege = treffer[bereich]
        gesamt += len(eintraege)
        print(f"\n=== {bereich.upper()}: {len(eintraege)} Kandidaten")
        if args.leise:
            continue
        for datei, text in eintraege:
            print(f"  [{datei}] {text}")

    print(f"\nGesamt: {gesamt} Kandidaten. Jeder Treffer ist ein Kandidat, kein Urteil — "
          f"am Umfeld beurteilen.")
    return 1 if gesamt else 0


if __name__ == "__main__":
    sys.exit(main())
