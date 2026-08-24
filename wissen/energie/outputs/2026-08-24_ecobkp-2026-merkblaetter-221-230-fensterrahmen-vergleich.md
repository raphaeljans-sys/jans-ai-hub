# ecoBKP 2026: Merkblätter 221-228 vollständig, 230 begonnen; 2009→2026-Fensterrahmen-Vergleich abgeschlossen

Datum: 2026-08-24 · Lauf: Scheduled Task `energie-training` (interaktive Fortsetzung desselben Tages)

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, danach
in die Wiki-Artikel einarbeiten. Anschluss an den unmittelbaren Vorlauf
(`outputs/2026-08-24_ecobkp-2026-merkblaetter-21-215-primaerquelle.md`), dessen eigene Empfehlung
für den nächsten Schritt lautete: ecoBKP 221 fertigstellen, dann 222-450, danach der seit Run 137
offene Abgleich der ecoBKP-221-Fensterrahmen-Vorgabe gegen die bereits belegte 2009er-Fassung.

## Vorgehen

1. Zuerst den gesamten `- [ ]`/`- [~]`-Bestand von `QUESTIONS.md` durchgesehen, nicht der Prosa
   der Vorläufe vertraut (Fehlerklasse aus Run 152/153/154: «Lücke angenommen, ohne das eigene
   Register zu durchsuchen»). Ergebnis identisch zum dokumentierten Stand: jeder andere offene
   Punkt hängt an einem Beschaffungsentscheid Raphaels (E-R148-1 Normkauf SIA 380/1:2016, Rest
   von E-R161-1 SN EN ISO 6946, E103/E94 JANS-Projektdaten) oder ist als nicht abschliessend
   auflösbar dokumentiert (E-R134-3, E-R150-3, A-P3 03.13). Der ecoBKP-Auftrag aus dem Vorlauf war
   der einzig echte, unblockierte Rest.
2. PDF erneut direkt von `ecobau.ch` geladen — Byte-Grösse (8'110'547) identisch mit der bereits
   geprüften Fassung, kein Versionswechsel während der Bearbeitung.
3. S. 35-70/138 per PyPDF2 seitenweise als Volltext extrahiert und gelesen.
4. Sieben Merkblätter vollständig destilliert, eines begonnen; anschliessend der versprochene
   Vergleich gegen `[[ecobkp-2009-merkblaetter-nach-bkp]]` (dort selbst primärquellenbelegt) am
   nun vollständigen 2026-Wortlaut nachvollzogen.

## Ergebnis

**Vollständig gelesen:** ecoBKP 221 Fenster/Aussentüren/Tore, ecoBKP 222 Spenglerarbeiten,
ecoBKP 224 Bedachungsarbeiten, ecoBKP 225 Spezielle Dichtungen und Dämmungen, ecoBKP 226
Fassadenputze, ecoBKP 227 Äussere Oberflächenbehandlungen, ecoBKP 228 Äussere Abschlüsse/
Sonnenschutz. **Begonnen:** ecoBKP 230 Elektroanlagen (Energieverbrauch/Monitoring ab 2000 m²
EBF, elektromagnetische Felder/NIS-Zonenplan mit Nutzungszonen A/B, Haushaltgeräte nach
Energieetikette, Aufzugsanlagen — bis S. 70 gelesen).

**Vergleich 2009→2026 (echter Befund, primärquellenbelegt):**

- Die 2009er-Fassung nannte für Fenster je Priorität einen Uf-Zahlenwert (1. Priorität
  Holzrahmen Uf=1,3 und Holz-Metallrahmen Uf=1,2; 2. Priorität inkl. Kunststoff Uf=1,1-1,2). Die
  2026er-Fassung nennt **keinen Uf-Wert mehr** — nur noch Materialpriorität (1. Priorität
  Holzfenster, 2. Priorität Holz-Metall-Fenster).
- **Kunststofffenster (PVC) ist aus der Fenster-Materialpriorität verschwunden** und taucht 2026
  nur noch als separate Position im Abschnitt «Oberflächenbehandlung» (Beschichtung, keine
  Materialwahl) auf — die 2008→2009 begonnene Herabstufung ist 2026 konsequent zu Ende geführt.
- Glasrandverbund unverändert seit 2009 (1. Priorität Kunststoff/Butyl, 2. Priorität Edelstahl).
- Nebenbefund (ecoBKP 224, im selben Vergleichsauftrag mitgeführt): die Dachbegrünungs-Kennwerte
  sind vom festen 2009er-Zahlenwert («10 cm Substrat, 45 l/m² Wasserrückhaltekapazität») auf eine
  **SIA-312-Bandbreite** (8-11 cm / 40-55 l/m² Mindeststandard, 1. Priorität +3 cm) umgestellt —
  Begründung im Text selbst: abhängig von der lokalen Jahresniederschlagsmenge.

**Neuer offener Punkt (P4, klein):** ecoBKP 230 behauptet, das neue Energieetiketten-Schema A-G
gelte «noch nicht für Wäschetrockner» — nicht separat am geltenden Etikettenrecht gegengeprüft,
gleiche Themenfamilie wie die bereits dokumentierte Alterung in
`[[haushaltgeraete-effizienz-beschaffung-topten]]`.

## Eingearbeitet

- `destillate/ecobkp-2026-methodik-und-uebersicht.md`: Frontmatter (Quelle/gelesen/last_updated),
  sieben neue Merkblatt-Abschnitte, eigener Abschnitt «Vergleich ecoBKP 221 Fenster: 2009 gegen
  2026», Offene-Punkte nachgeführt, Backlinks erweitert.
- `destillate/INDEX.md` Zeile 39 nachgeführt.
- `destillate/energiemonitoring-submetering-grossverbraucher-zh-sz.md`: Backlink auf die
  ecoBKP-230-Monitoring-Pflicht ergänzt (gleiche 2000-m²-EBF-Schwelle).
- `wiki/QUESTIONS.md`: neuer datierter Abschnitt, ein Punkt sofort geschlossen (E-R137-N1), ein
  neuer P4-Punkt eröffnet (E-R230-1).
- `CHANGELOG.md`: Eintrag mit Anschlusslogik zum Vorlauf.

`git diff --numstat` nach Abschluss aller Schreibvorgänge geprüft: `CHANGELOG.md` +35/-0,
`destillate/INDEX.md` +1/-1 (eine Zeile ersetzt), `destillate/ecobkp-2026-methodik-und-uebersicht.md`
+16/-7 (Stub-Absatz zu ecoBKP 221 durch vollständigen Abschnitt ersetzt, Offene-Punkte
nachgeführt), `destillate/energiemonitoring-submetering-grossverbraucher-zh-sz.md` +2/-1
(Backlink-Zeile erweitert), `wiki/QUESTIONS.md` +64/-0. Alle Änderungen additiv bzw. mit exakt
den erwarteten ersetzten Zeilen, keine fremde Löschung.

## Für den nächsten Lauf

ecoBKP 230 Fortsetzung (Rest ab S. 70) sowie die Merkblätter 240-450 (13 von 30 noch ungelesen,
S. 70-138). Status bleibt `emerging`, bis alle 30 Merkblätter gelesen sind.
