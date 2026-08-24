# EN-102-Ausgabedatum korrigiert: Januar 2020 statt Dezember 2018

Datum: 2026-08-24 · Lauf: interaktive Session, Fortsetzung der Pruefwarteschlange aus dem
Qualitaets-Audit vom 23.08.2026 (`outputs/2026-08-23_energie-audit-qualitaetsoffensive.md`)

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, dort weitermachen, wo der letzte Lauf
aufgehoert hat. Nach Sichtung der Pruefwarteschlange (Abschnitt «Audit 23.08.2026») blieb aus
A-P3 genau ein Punkt ohne primaerquellen-gestuetzte Loesung: **03.15, der Widerspruch zum
Ausgabedatum der Vollzugshilfe EN-102.**

## Ausgangslage

Zwei Aussagen standen unvereinbar nebeneinander:

- Das **established**-Destillat `destillate/enfk-en-102-waermeschutz-2018.md` (Erstanlage Run 2,
  06.06.2026; mehrfach nachgeprueft und established bestaetigt bis 23.07.2026) nennt im
  Frontmatter **«Ausgabe Dezember 2018»**, mit einer Original-URL
  `energie.tg.ch/public/upload/assets/95320/22_EN-102-d_Waermeschutz_3801_2016.pdf`.
- Drei Stellen in `wiki/BAUHERREN-FAQ.md` sowie das Destillat
  `sommerlicher-waermeschutz-sia180-nachweisverfahren.md` zitieren fuer **dieselbe** Vollzugshilfe
  **«Ausgabe Januar 2020»**.

Das Audit (23.08.2026) hatte den Widerspruch unter 03.15 vermerkt, aber ausdruecklich als
ungeloest markiert: «Aufloesung braucht den Original-PDF-Abgleich».

## Vorgehen

1. **Erster Versuch:** die im Destillat zitierte TG-URL direkt abrufen (`curl`, `WebFetch`).
   Ergebnis: **301-Redirect auf `https://energie/...`** — ein nicht aufloesbarer interner
   Hostname. Die Quelle ist seit der letzten Lesung (17.07.2026) tot.
2. **Ersatzquelle gesucht:** Web-Suche nach der Vollzugshilfe EN-102 liefert Spiegel bei mehreren
   Kantonen (TG, SH, VS). Der Kt.-Schaffhausen-Spiegel
   (`sh.ch/CMS/get/file/31530027-6467-41e2-9546-311c53380766`) liess sich laden.
3. **Auslesen per PyPDF2**, da `pdftotext` auf dieser Station nicht installiert ist. Das
   heruntergeladene PDF ist ein 33-seitiges **Sammel-PDF** («Register 2 Gebaeudehuelle») der
   SH-Energiefachstelle mit mehreren Vollzugshilfen darin.

## Befund

Die **Registerseite S. 1** listet alle fuenf im Sammel-PDF enthaltenen Dokumente mit ihrem
jeweils exakten Ausgabedatum:

| Dokument | Ausgabedatum laut SH-Register |
|---|---|
| Überblick zu den Wärmeschutzanforderungen | Januar 2024 |
| **Vollzugshilfe „EN-102 Wärmeschutz von Gebäuden"** | **Januar 2020** |
| Vollzugshilfe „EN-112 Kühlräume" | **Dezember 2018** |
| Empfehlung „EN-131 Beheizte Gewächshäuser" | Juni 2017 |
| Empfehlung „EN-132 Beheizte Traglufthallen" | Juni 2017 |

Die Zahl **«Dezember 2018»**, die unsere KB seit Run 2 als Ausgabedatum von EN-102 fuehrt, ist
tatsaechlich das Ausgabedatum von **EN-112 «Kühlräume»** — einem anderen Dokument im selben
Register. Naheliegende Erklaerung: Verwechslung bei der Erstdestillation, begünstigt durch den
irrefuehrenden SharePoint-Dateinamen `…_3801_2009_2018Dez.pdf` (der schon einmal, in
`planungsgrundlagen`, zu einer Fehlzuordnung gefuehrt hatte, dort am 25.07.2026 korrigiert).

**Zweiter, unabhaengiger Beleg:** die Fusszeile jeder einzelnen EN-102-Seite (S. 4-21 des
Sammel-PDF) traegt durchgehend den Wortlaut «Ausgabe Januar 2020 (Basis: Norm SIA 380/1, Ausgabe
2016)». **Dritter Beleg:** die PDF-Metadaten (`Title: Vollzugshilfe EN-102`, `CreationDate:
2020-02-20T14:43:19+01:00`, `Author: EnFK / AG MuKEn / CG`).

**Die Zahlenwerte selbst sind unveraendert korrekt.** Tabelle 2 (Einzelbauteilnachweis Neubau,
inkl. der Zeile «Storenkasten 0,50/0,50») aus dem SH-Mirror ist bit-genau identisch mit dem, was
im KB-Destillat seit Run 2 steht. Der Fehler betraf ausschliesslich das Ausgabedatum im
Frontmatter — nicht die U-Wert- oder Q_H,li-Grenzwerte, die bereits am 23.07.2026 unabhaengig
gegen den Kanton Luzern (KEnV) verifiziert worden waren.

## Korrigierte Dateien (10)

- `destillate/enfk-en-102-waermeschutz-2018.md` — Frontmatter (`ausgabe`, `gelesen`,
  `datenstand`, `sources` neu, `last_updated`), Titelzeile, Absatz «Offene Punkte/zu pruefen»
- `destillate/INDEX.md` — Zeile zum Destillat
- `wiki/u-werte-grenzwerte-ch.md` — Einleitungssatz, Versionsabgleich-Ueberschrift + 3 Zeilen
  darunter, Abschnitt «Datenstand/Aktualitaet»
- `wiki/BAUHERREN-FAQ.md` — Z. 2194 (Waermebruecken-Fensteranschlag-Antwort)
- `destillate/g-werte-verglasungstypen-ch.md`
- `destillate/waermebrueckenkatalog-bfe-fensteranschluss.md`
- `destillate/waermebrueckenkatalog-bfe-rollladenkasten.md`
- `destillate/innendaemmung-altbau-bauphysik-ch.md`
- `destillate/sia-380-1-2016-aenderungen-gegenueber-2009.md`
- `destillate/muken-2025-anhang-1-3-uwert-heizwaermebedarf.md` (Nachtrag als neue `sources`-Zeile;
  die historische Lauf-Narrative vom 17.07.2026, die noch «Dezember 2018» beschreibt, wurde
  bewusst **nicht** umgeschrieben — KB-Konvention: Status-Recaps werden angehaengt, nicht
  rueckwirkend editiert)

**Nicht angefasst:** der Dateiname `enfk-en-102-waermeschutz-2018.md` selbst. Ein Umbenennen ist
laut Rule `wissens-bibliothekar` destruktiv und braucht Raphaels Bestaetigung (`AskUserQuestion`),
nicht eigenmaechtiges Handeln. Der Dateiname traegt jetzt bewusst ein falsches Jahr im Slug — das
ist ein offener Kosmetik-Punkt, kein Sachfehler mehr.

## Nebenbefund: A-P2-Vollstaendigkeit praezisiert

Beim Nachschlagen von 03.15 fiel auf, dass die Behauptung «A-P2: alle 18 Punkte erledigt» (ein
frueherer Lauf desselben Tages) auf einer Zaehlung beruhte, die 02.17 als erledigt mitzaehlte.
Nachpruefung per `grep -c "^datenstand:" wiki/*.md`: **28 von 37** Themenartikeln fuehren das
Pflichtfeld weiterhin nicht. Das Pruefwerkzeug `datenstand-waechter.py` ist gebaut, die
Nachruestung nicht. In `wiki/QUESTIONS.md` direkt an der betroffenen Zeile nachgetragen (Zeile
selbst nicht geloescht, Praezisierung als eigener Absatz angehaengt).

## Warum das verallgemeinerbar ist

1. **Tote Original-URLs sind der Normalfall, nicht die Ausnahme**, sobald zwischen Lesung und
   Nachpruefung mehr als ein paar Monate liegen (hier: TG-URL tot nach gut fuenf Wochen — von
   17.07. bis 24.08.2026 gerechnet, plausibel schon frueher). Ein unabhaengiger Zweitmirror
   derselben Vollzugshilfe (andere Kantons-Energiefachstelle) traegt dieselbe Beweiskraft wie das
   Original, **sofern zwei voneinander unabhaengige Belege in derselben Ersatzdatei uebereinstimmen**
   (hier: Registerindex + Fusszeile jeder Seite + PDF-Metadaten — drei von einander unabhaengige
   Signale, nicht nur eines).
2. **Aehnliche Dokumentnummern/-titel in derselben Registerfamilie sind eine bekannte
   Fehlerquelle** — EN-102 und EN-112 liegen im selben PDF-Register, ihre Ausgabedaten wurden bei
   der Erstdestillation vertauscht. Wo mehrere verwandte Vollzugshilfen derselben Behoerde
   destilliert werden (EN-101 bis EN-13x), lohnt ein bewusster Kurzabgleich der Dokumentnummer
   gegen das Ausgabedatum.
3. **PyPDF2 ist als Fallback ausreichend**, wenn `pdftotext`/`curl+pdftotext` (der sonst in dieser
   KB uebliche Weg) auf der Station fehlt — Metadaten-Extraktion (CreationDate) liefert zudem ein
   unabhaengiges drittes Signal, das reiner Fliesstext nicht bietet.

## Register nachgefuehrt

`wiki/QUESTIONS.md` (03.15 als eigener `[x]`-Eintrag mit vollem Beleg, A-P2-Praezisierung
angehaengt), `CHANGELOG.md`, alle zehn oben genannten Inhaltsdateien. `git diff --numstat` nach
jedem Schreibvorgang geprueft — beide betroffenen Commits laufen additiv bzw. mit genau der
erwarteten einen ersetzten Datumszeile, keine fremde Loeschung.
