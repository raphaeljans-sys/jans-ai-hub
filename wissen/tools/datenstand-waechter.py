#!/usr/bin/env python3
"""datenstand-waechter — Frage: ALTER. Kommt die Zahl mit ihrem Alter beim Leser an?

Sechstes Werkzeug im Wissens-Layer, angelegt 23.08.2026. Die vier bestehenden pruefen Form,
Zugang, Inhalt und Ziel, das fuenfte den Nenner — keines prueft, ob eine Zahl ihr Alter
mittraegt. Genau daran hingen im Audit der KB energie
(`wissen/energie/outputs/2026-08-23_energie-audit-qualitaetsoffensive.md`, Fehlerklasse 04.3)
sechs Befunde:

  * 35 von 37 Themenartikeln hatten kein Feld `datenstand`. `last_updated` misst den letzten
    Zugriff, nicht das Alter der Zahlen — die Routing-Ebene der KB konnte also gar nicht altern.
  * Preisstaende von 2019 und 2020 wurden ohne Teuerungsvorbehalt als heutige CHF-Zahl zitiert.
  * Ein selbst gesetzter Pruefstichtag verstrich unbemerkt, weil er in einem ABGEHAKTEN Eintrag
    stand, wo ihn kein Radar sucht.

Darum die drei Regeln unten. Bewusst NICHT geprueft wird das Alter von Rechts- und
Norm-Destillaten: die altern nicht still, sie werden abgeloest und bekommen dann `superseded`
— dafuer ist `wiki-konsistenz.sh` zustaendig. Geld und Markt dagegen veralten, ohne dass es
jemand mitteilt. Eine Altersmeldung fuer jedes historische Dokument hat den Prueflauf in der
ersten Fassung dieses Scripts unlesbar gemacht (152 statt 24 Treffer).

Aufruf:
    python3 wissen/tools/datenstand-waechter.py            # alle Wissensbasen
    python3 wissen/tools/datenstand-waechter.py energie     # eine
    python3 wissen/tools/datenstand-waechter.py --heute 2026-12-01
Exit: 0 = keine Befunde · 1 = Befunde (wie die uebrigen Werkzeuge).

LESEND. Verstrichene Termine gehoeren nach `logbuch/fristen.md`, nicht in einen Laufbericht
(Rule `auto-verbesserungen` 260805).
"""

import argparse
import datetime
import pathlib
import re
import sys

HUB = pathlib.Path("/Volumes/daten/jans-ai-hub")

# Alterungsschwellen in Monaten. Ein Dokument gilt erst als Geld- oder Marktdokument, wenn
# das Stichwort mehrfach vorkommt — eine beilaeufige Erwaehnung von «Foerderung» macht aus
# einem Norm-Destillat kein alterndes Preisdokument.
SCHWELLEN = (
    (("foerder", "förder", "einmalverg", "beitrag", "subvention", "klimapraemie", "klimaprämie"), 12),
    (("preis", "kosten", "chf", "tarif", "markt", "offerte"), 18),
)

# Nur SELBST GESETZTE Pruefstichtage. «gueltig bis» und «befristet bis» sind eine Eigenschaft
# der Quelle, kein Versaeumnis der KB, und stehen in historischen Dokumenten zu Hunderten.
TERMIN_SPRACHE = re.compile(
    r"(naechste Pruefung|nächste Prüfung|zu pruefen bis|zu prüfen bis|Pruefstichtag|Prüfstichtag|"
    r"erneut pruefen am|erneut prüfen am|wieder vorlegen am|nachfassen am|Beobachtungspunkt bis)"
    r"[^\n]{0,80}?(\d{1,2}\.\d{1,2}\.\d{4}|\d{4}-\d{2}-\d{2})",
    re.IGNORECASE,
)

# Ein verstrichener Stichtag, der im Umfeld ausdruecklich quittiert wurde, ist kein Versaeumnis
# mehr, sondern Historie. Er wird weiterhin ausgewiesen, aber getrennt und ohne Befundstatus —
# die Absicht von Regel 3 (Stichtage auch in ABGEHAKTEN Eintraegen sehen) bleibt damit erhalten,
# waehrend der Prueflauf nicht Lauf um Lauf dieselben erledigten Punkte meldet.
# Ergaenzt 28.08.2026 (energie Run 166): vier von vier gemeldeten Stichtagen der KB energie
# waren quittiert, drei davon woertlich mit «kein offener Punkt mehr».
QUITTUNG_SPRACHE = re.compile(
    r"(ist|sind) erledigt|kein offener Punkt mehr|nicht mehr offen|"
    r"[✓✔]\s*\*{0,2}Nachtrag|nachgeholt|erledigt, siehe|jetzt wirklich gepr(ue|ü)ft",
    re.IGNORECASE,
)

CHF_ZEILE = re.compile(r"CHF\s?[\d'’.]{3,}|[\d'’.]{3,}\s?(CHF|Fr\.)|Rp\./kWh")
JAHRESZAHL = re.compile(r"(19|20)\d{2}")

# Norm-/Richtliniennummern wie «DIN 1946-4» oder «EN 1992-1» faellen sonst als vermeintliche
# Jahreszahl in die blosse-Jahr-Rueckfallebene von monate_alt() (Fund 24.08.2026: DIN 1946-4
# in `swki-lueftung-gesundheitsbau-hygiene-energie.md` ergab 962 Monate statt eines echten
# Alters). Vor der Jahres-Extraktion wird der Zahlenteil solcher Bezeichnungen entfernt.
NORMBEZEICHNUNG = re.compile(
    r"\b(?:DIN|ISO|SIA|EN|SN|SNV|VDI|VKF|prEN|ÖNORM|CEN)\s?(?:19|20)\d{2}(?:[/-]\d+)?\b"
)


def frontmatter(text):
    """Zeilenweise statt mit yaml: die KBs enthalten Frontmatter-Werte mit Doppelpunkten,
    Klammern und Umlauten, die ein strikter Parser zurueckweisen wuerde."""
    if not text.startswith("---"):
        return {}
    ende = text.find("\n---", 3)
    if ende == -1:
        return {}
    feld = {}
    for zeile in text[3:ende].splitlines():
        if ":" in zeile and not zeile.startswith((" ", "\t", "-")):
            k, v = zeile.split(":", 1)
            feld[k.strip()] = v.strip()
    return feld


def monate_alt(roh, heute):
    """Massgeblich ist die JUENGSTE Jahresangabe im Feld. Viele datenstand-Felder sind
    Fliesstext («Rechtsbasis EnG 2016 + revidierte EnV, Stand 01.01.2025») — wer dort die
    erste Zahl nimmt, meldet ein taggenau gepflegtes Destillat als zehn Jahre alt."""
    roh = NORMBEZEICHNUNG.sub(" ", roh or "")
    kandidaten = []
    for jahr, monat in re.findall(r"(\d{4})-(\d{2})", roh or ""):
        kandidaten.append((int(jahr), int(monat)))
    for tag, monat, jahr in re.findall(r"(\d{1,2})\.(\d{1,2})\.((?:19|20)\d{2})", roh or ""):
        kandidaten.append((int(jahr), int(monat)))
    if not kandidaten:
        jahre = re.findall(r"(?:19|20)\d{2}", roh or "")
        if not jahre:
            return None
        kandidaten = [(int(max(jahre)), 6)]          # blosse Jahresangabe: Jahresmitte
    jahr, monat = max(kandidaten)
    return (heute.year - jahr) * 12 + (heute.month - monat)


def schwelle_fuer(text):
    unten = text.lower()
    for stichworte, monate in SCHWELLEN:
        if sum(unten.count(s) for s in stichworte) >= 3:
            return monate
    return None


def pruefe_kb(wurzel, kb, heute, melde):
    wiki_pfad, dest_pfad = wurzel / kb / "wiki", wurzel / kb / "destillate"
    wiki, dest = {}, {}
    for ziel, ordner in ((wiki, wiki_pfad), (dest, dest_pfad)):
        if ordner.is_dir():
            for p in sorted(ordner.glob("*.md")):
                t = p.read_text(encoding="utf-8", errors="replace")
                ziel[p.stem] = {"pfad": p, "text": t, "fm": frontmatter(t)}

    # Welche Destillate speisen ueberhaupt ein Erzeugnis? Nur deren Alter draengt.
    # Ein altes Destillat, das niemand zitiert, altert folgenlos.
    zitiert = set()
    for d in wiki.values():
        zitiert.update(re.findall(r"\[\[([^\]|]+)\]\]", d["text"]))

    # Regel 1 — Themenartikel ohne Altersfeld
    for name, d in wiki.items():
        if name in ("INDEX", "QUESTIONS", "BAUHERREN-FAQ") or name.isupper():
            continue
        if "datenstand" not in d["fm"]:
            melde(d["pfad"], "Themenartikel ohne Frontmatter-Feld «datenstand» — last_updated "
                             "misst den letzten Zugriff, nicht das Alter der Zahlen")
            # Solange der Artikel kein Alter traegt, gehen auch seine Preise ohne Alter beim
            # Leser an. Sobald das Feld steht, verschwindet diese Meldung von selbst.
            zeilen = d["text"].splitlines()
            for nr, zeile in enumerate(zeilen, 1):
                if CHF_ZEILE.search(zeile) and not JAHRESZAHL.search(zeile):
                    umfeld = "\n".join(zeilen[max(0, nr - 4):nr + 3])
                    if not JAHRESZAHL.search(umfeld):
                        melde(d["pfad"], f"Z. {nr}: CHF-Wert ohne Jahreszahl, in einem Artikel "
                                         f"ohne datenstand: {zeile.strip()[:80]}")

    # Regel 2 — Geld/Markt ueber der Schwelle, und zitiert
    for sammlung in (dest, wiki):
        for name, d in sammlung.items():
            roh = d["fm"].get("datenstand") or d["fm"].get("ausgabe")
            if not roh:
                continue
            alter = monate_alt(roh, heute)
            grenze = schwelle_fuer(d["text"][:4000])
            if alter is None or grenze is None:
                continue
            if alter > grenze and (sammlung is wiki or name in zitiert):
                melde(d["pfad"], f"datenstand «{roh}» ist {alter} Monate alt (Schwelle {grenze} "
                                 f"fuer Geld/Markt) und wird in einem Erzeugnis zitiert")

    # Regel 3 — verstrichene selbst gesetzte Termine, auch in abgehakten Eintraegen
    for sammlung in (dest, wiki):
        for d in sammlung.values():
            zeilen = d["text"].splitlines()
            for nr, zeile in enumerate(zeilen, 1):
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
                    if datum >= heute:
                        continue
                    # Quittungsfenster: dieselbe Zeile plus die sechs folgenden. Ein Nachtrag
                    # steht in der Praxis unmittelbar unter dem Eintrag, den er schliesst.
                    umfeld = "\n".join(zeilen[nr - 1:nr + 6])
                    quittiert = bool(QUITTUNG_SPRACHE.search(umfeld))
                    melde(d["pfad"], f"Z. {nr}: selbst gesetzter Pruefstichtag {rohdatum} ist "
                                     f"verstrichen — gehoert nach logbuch/fristen.md",
                          quittiert)


def main():
    p = argparse.ArgumentParser(description="Altersaufsicht fuer den Wissens-Layer")
    p.add_argument("kb", nargs="*", help="Wissensbasen (ohne Angabe: alle mit wiki/)")
    p.add_argument("--hub", default=str(HUB))
    p.add_argument("--heute", help="Stichtag JJJJ-MM-TT (Vorgabe: heute)")
    args = p.parse_args()

    heute = datetime.date.fromisoformat(args.heute) if args.heute else datetime.date.today()
    wurzel = pathlib.Path(args.hub) / "wissen"
    if not wurzel.is_dir():
        print("wissen/ nicht erreichbar — NAS gemountet?")
        return 2

    kbs = args.kb or sorted(d.parent.name for d in wurzel.glob("*/wiki") if d.is_dir())
    gesamt = 0
    print(f"Stichtag: {heute}")
    for kb in kbs:
        treffer, quittiert = [], []
        pruefe_kb(wurzel, kb, heute,
                  lambda pf, t, q=False: (quittiert if q else treffer).append((pf, t)))
        print(f"\n== {kb}")
        if not treffer:
            print("  keine Befunde.")
        for pfad, text in treffer:
            print(f"  ! {pfad.name:48s} {text}")
        for pfad, text in quittiert:
            print(f"  · {pfad.name:48s} {text} [im Umfeld quittiert — kein Befund]")
        gesamt += len(treffer)

    print(f"\nTotal: {gesamt} Befund(e).")
    return 1 if gesamt else 0


if __name__ == "__main__":
    sys.exit(main())
