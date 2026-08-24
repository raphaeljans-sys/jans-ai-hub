# ecoBKP 2026: sechs weitere Merkblätter primärquellenverifiziert (ecoBKP 21/211/213/214/215, Beginn 221)

Datum: 2026-08-24 · Lauf: interaktive Session, Fortsetzung des Auftrags «weitere offene Fragen
abarbeiten»

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand,
Anschluss an den letzten Lauf. Nach Prüfung des `- [ ]`-Bestands (A-P2 18/18 erledigt, A-P3
14/17 + 03.13/03.15 zusätzlich geschlossen, E103/E94/E-R148-1/E-R148-2/E-R161-1 an Raphaels
Entscheid gebunden, E-R129-5/E-WC32-1/E-R134-3/E-R150-3 bewusst P3/P4 zurückgestellt) blieb der
A-BLIND-Faden der einzig verbleibende, ohne Freigabe bearbeitbare Dauerauftrag. Der letzte
A-BLIND-Lauf (Compounding-Fund `graue-energie-betriebsenergie`) benannte explizit zwei noch
ungeprüfte `emerging`-Kandidaten: `[[werkhof29-zirkulaeres-bauen-stroh-lehm]]` und
`[[ecobkp-2026-methodik-und-uebersicht]]`.

## Vorgehen

1. `werkhof29-zirkulaeres-bauen-stroh-lehm` geprüft: ist ein Praxis-/Marketing-Dossier
   (Erstvermietungsunterlage), kein Norm-/Verordnungstext — die im Destillat offen benannten
   Punkte (Stroh-Bemessungswert, Solarsplitvertrag-Einordnung) sind bereits an anderer Stelle der
   KB gelöst und verlinkt (`[[strohdaemmung-bemessungswert-brandschutz]]`,
   `[[evg-eigenverbrauchsgemeinschaft-solarsplit]]`). Kein weiterer A-BLIND-Ansatz an diesem
   Destillat — das Dossier selbst ist bereits vollständig gelesen, es gibt keine tiefere
   Primärquelle dahinter.
2. `ecobkp-2026-methodik-und-uebersicht` hatte dagegen einen echten, im eigenen Frontmatter
   benannten Rest: nur S. 1-20 von 138 gelesen, 27 von 30 Merkblättern offen. PDF erneut direkt
   von `ecobau.ch` geladen (8'110'547 Byte, identisch zur Vorlesung) und mit PyPDF2 Seite für
   Seite (S. 14-40) im Volltext gelesen.

## Befund

Sechs weitere Merkblätter vollständig gelesen und destilliert:

- **ecoBKP 21 Rohbau 1** (Rest, S. 13-15): Bauteil-Varianten-Tabelle vollständig — Grundlage
  Anhang D SIA 390/1. Aussenwand über Terrain und geneigtes Dach sind durchgehend als
  Holzkonstruktion mit Naturdämmstoff/Mineralwolle vorgegeben, nicht als echte Auswahl zwischen
  gleichwertigen Varianten.
- **ecoBKP 211 Baumeisterarbeiten** (S. 16-21): RC-Beton-Pflicht nach SIA 2030:2021
  (**nicht empfohlen: Primärbeton, wenn RC-Beton innerhalb 25 km verfügbar ist**), Zementwahl
  CEM III/A/B als 1. Priorität, Lambda-Bandbreiten für Leichtmauerwerk und Wärmedämmungen.
- **ecoBKP 213 Montagebau in Stahl** (S. 22-25): explizite Aussage, Stahlträger/-stützen hätten
  gegenüber Holz «eine deutlich höhere Graue Energie und höhere Treibhausgasemissionen» —
  derselbe Kernbefund wie `[[graue-energie-betriebsenergie]]` (Tragstruktur grösster
  Graue-Energie-Posten), hier auf Bauteilebene bestätigt. Achtung: Brandschutzbeschichtungen vor
  1990 können Asbest enthalten.
- **ecoBKP 214 Montagebau in Holz** (S. 26-30): Formaldehyd-Grenzwerte, **nicht empfohlen:
  Montage-/Füllschäume** (keine Trennbarkeit, keine verlässliche Luftdichtheit).
- **ecoBKP 215 Montagebau als Leichtkonstruktion** (S. 31-34): Fassadenbekleidungs-Prioritäten
  inkl. Blechdicken, Naturstein-Transportdistanz < 500 km, bodengebundene vor
  fassadengebundener Begrünung.
- **ecoBKP 221 Fenster/Aussentüren/Tore** (Beginn, S. 35): Lüftungskonzept-Pflicht nach SIA 180,
  permanente Fensteröffnung unzulässig. Nur Allgemeines + Holzauswahl gelesen — Rest offen.

**Kein Zitierfehler gefunden**, anders als bei den A-BLIND-Fällen 1-3 (ChemRRV, GSchG) war hier
noch keine Behauptung im Bestand, die widerlegt werden konnte — das Destillat wurde von Grund auf
neu aus der Primärquelle destilliert, nicht gegengeprüft. Der Fall zeigt trotzdem den A-BLIND-
Zweck: statt eine Sekundärquellen-Zusammenfassung zu übernehmen, trägt jede Aussage jetzt die
exakte Seitenzahl.

## Eingearbeitet

- `destillate/ecobkp-2026-methodik-und-uebersicht.md`: Frontmatter (`quelle`/`gelesen`/
  `last_updated` auf S. 1-40 erweitert, `status` bleibt `emerging` — 21 von 30 Merkblättern
  weiterhin offen), sechs neue Merkblatt-Abschnitte, Offene-Punkte-Abschnitt aktualisiert
  (Rest benannt, Cross-Check zu `[[ecobkp-2009-merkblaetter-nach-bkp]]` neu vermerkt), neue
  Backlinks-Sektion.
- `destillate/INDEX.md`: Zeile 39 auf neuen Lesestand (S. 1-40/138) aktualisiert.
- `wiki/QUESTIONS.md`: neuer datierter Abschnitt mit Belegkette.
- `CHANGELOG.md`: Eintrag.

## Für den nächsten Lauf

- ecoBKP 221 Fortsetzung (Oberflächenbehandlung, U-/g-Werte, Beschläge) sowie die Merkblätter
  222-450 (21 von 30 Merkblättern, S. 36-138) bleiben offen — grösster verbleibender Rest der
  Primärquelle.
- Sobald ecoBKP 221 (Fensterrahmen) vollständig gelesen ist: gegen die bereits belegte
  2009→2026-Sachänderung in `[[ecobkp-2009-merkblaetter-nach-bkp]]` abgleichen (dort nur aus
  Sekundärvergleich dokumentiert, nicht am 2026-Wortlaut selbst).
- `werkhof29-zirkulaeres-bauen-stroh-lehm` ist für A-BLIND ausgeschöpft (Marketing-Dossier ohne
  tiefere Primärquelle) — aus der A-BLIND-Kandidatenliste zu streichen.
- A-BLIND-Gesamtstand unverändert: von den 37 Kandidaten im 18-29-Backlink-Bereich sind weiterhin
  16 einzeln geprüft, rund 21 offen (dieser Lauf betraf ein Destillat unterhalb der
  Backlink-Schwelle, das explizit aus dem Vorlauf benannt war, keine neue Zählung).

`git diff --numstat` geprüft: `destillate/ecobkp-2026-methodik-und-uebersicht.md` +82/-14
(sechs neue Merkblatt-Absätze, Offene-Punkte-Abschnitt präzisiert, keine Löschung von Substanz —
die 14 entfernten Zeilen sind der alte, jetzt durch die vollständige Fassung ersetzte
21-Rohbau-1-Absatz und die alte Offene-Punkte-Formulierung), `destillate/INDEX.md` +1/-1 (eine
Zeile ersetzt).
