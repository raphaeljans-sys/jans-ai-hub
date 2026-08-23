# QUESTIONS-Abarbeitung, dritter Lauf (23.08.2026)

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: `CHANGELOG.md` (Kopfeintrag «SIA-Sweep, fünfte Fortsetzung») und der letzte Tages-
Report `outputs/2026-08-23_questions-abarbeitung2.md`.

## Ausgangslage

Der Vorlauf hatte am selben Tag bereits mehrfach dieselben drei N-SIASWEEP-Fragen vertieft
und zwei Punkte (BRL 17-15, NIN) bearbeitet; N60-1, N60-2 und BRL-13-15-Duplikat sind
ausdrücklich Entscheid-/Freigabepunkte für Raphael und wurden nicht erneut angefasst, um
Doppelarbeit bzw. eigenmächtige Entscheide zu vermeiden. Ein Durchgang durch die älteren
Run-Abschnitte (Run 52-57) fand zwei kleinere, selbständig abschliessbare Punkte, die als
«gering, billig» bzw. als reine Primärquellen-Bestätigung markiert waren.

## 1. N57-4 — SIA 416:2003, Gültigkeit primärverifiziert — GESCHLOSSEN

Der Punkt war als «gering, billig» markiert: das Destillat `sia-416-2003.md` stützt sich
durchgehend auf SIA 416:2003 als geltende Bezugsnorm, aber die geratene Shop-URL für das
Produktdatenblatt lief ins Leere.

- `WebSearch` fand die korrekte URL:
  `http://shop.sia.ch/normenwerk/architekt/sia%20416/dfi/D/Product` (SN 504416) — der
  Pfad-Slug lautet `sia%20416/dfi/D/Product`, nicht wie zuvor vermutet ein direkter
  Produkt-Slug.
- `WebFetch` bestätigt: **SIA 416:2003 aktuell**, gültig ab 01.10.2003, kein
  Gültig-bis-Datum. Vorgängerausgabe SIA 416:1993 war gültig bis 30.09.2003.
- Neuer Abschnitt «Gültigkeit (primärverifiziert 23.08.2026)» in `destillate/sia-416-2003.md`
  ergänzt, `last_updated` auf 2026-08-23 nachgezogen. Status bleibt `established` — der
  Norminhalt (Ziff. 0-6) war bereits primär gelesen, ergänzt wurde nur der
  Gültigkeitsstatus.
- `QUESTIONS.md`, Eintrag N57-4, mit Schliessungsbox versehen (ursprünglicher Fragetext
  bleibt stehen, rein additiv).

## 2. N53-3 — SIA 215:1978, formelle Rückzugsfrage — TEILWEISE GESCHLOSSEN

Der Punkt fragte, ob SIA 215:1978 formell zurückgezogen ist (das Destillat hatte bislang
«formell nicht zurückgezogen» notiert) und ob für Kalk/Gips Nachfolgenormen (SN EN 459-1,
SN EN 13279-1) existieren.

- `WebSearch` + `WebFetch` auf `https://shop.sia.ch/normenwerk/ingenieur/sia%20215/d/D/Product`
  (SN 551215): **SIA 215:1978 archiviert seit 30.06.2014.** Genannter Nachfolgestandard:
  **SIA 242.002:2008** «Gipsbinder und Gipstrockenmörtel, Teil 1: Begriffe und
  Anforderungen» — einziger auf der Produktseite geführter Nachfolger, deckt nur den
  Gips-Teil ab.
- **Unabhängiger Abgleich:** dieselbe Fundstelle war bereits am selben Tag von der
  interaktiven SIA-Sweep-Session in `wiki/REGISTER.md` (Abschnitt A, Zeile SIA 215)
  eingetragen worden — zweite, eigene Abfrage derselben Quelle, kein Zirkelschluss, Ergebnis
  identisch.
- `destillate/sia-215-1978.md`, Frontmatter-Feld `ersetzt_durch` korrigiert: von «formell
  NICHT ersetzt» auf «archiviert seit 30.06.2014, Nachfolger für Gips benannt».
- **Kalk (hydraulischer Kalk, Weisskalk) bleibt offen** — die Produktseite nennt
  ausschliesslich den Gips-Nachfolger, kein Kalk-Nachfolger verzeichnet. SN EN 459-1 bleibt
  unbelegte Vermutung, nicht im Haus, nicht auf der Shop-Seite genannt. Zement bleibt wie
  bisher separat über SIA 215.002/215.003 referenziert (andere Referenzierungsart, kein
  Widerspruch).
- `QUESTIONS.md`, Eintrag N53-3, komplett neu gefasst (alter Fragetext ersetzt durch
  Schliessungsbox + präzisierten Restpunkt Kalk).

## Nebenbefund — nicht selbst verursacht

Während dieses Laufs hat eine parallele Session (Cross-KB `energie` → `normen`, Kürzel
E-R129-2 / E-R143-2) additiv Änderungen an `destillate/sia-mb-2024-2006.md` (Datenblatt 4.1
Schulzimmer nachgetragen) und `wiki/QUESTIONS.md` (SN EN 12193, zweiter Anwendungsfall)
vorgenommen. Geprüft (Diff gelesen, Inhalt plausibel und additiv), nicht angefasst — gehört
nicht zu diesem Auftrag. Gemäss Vorgabe: ein `claude`-Prozess mit fremdem Lauf-Namen ist kein
Konkurrent.

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat -- wissen/normen/` geprüft:
`destillate/sia-416-2003.md` 11/1 (Frontmatter-Datum + neuer Abschnitt), `destillate/
sia-215-1978.md` 1/1 (Frontmatter-Feld ersetzt), `wiki/QUESTIONS.md` 38/7 (zwei
Schliessungsboxen additiv, N53-3-Fragetext gezielt ersetzt), `CHANGELOG.md` 47/0. Keine
fremde Zeile verändert oder gelöscht; die 3/2-Änderung an `sia-mb-2024-2006.md` stammt vom
Nebenbefund oben, nicht von diesem Lauf.

## Nicht geleistet / offene Bring-Schulden

- Kalk-Nachfolgenorm zu SIA 215:1978 (SN EN 459-1) weiterhin nicht identifiziert.
- Die drei N-SIASWEEP-Fragen, N60-1, N60-2, BRL-13-15-Duplikat und die NIN-Frage unverändert
  offen (siehe Vorlauf-Reports) — bewusst nicht erneut angefasst.
- Kein Normtext gekauft oder gelesen; beide Funde sind Shop-Metadaten, keine Volltexte.
