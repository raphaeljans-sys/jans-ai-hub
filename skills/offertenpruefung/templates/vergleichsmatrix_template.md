# Template: Vergleichsmatrix (mehrere Offerten)

Wird verwendet, wenn zwei oder mehr Offerten zum gleichen Gewerk vorliegen und positionsweise gegenuebergestellt werden sollen. Dient als Arbeitsdokument fuer die spaetere Vergabeempfehlung (siehe `ausschreibung/templates/vergabeempfehlung_template.md`).

## Zweck

- Faktenbasis fuer die Vergabe-Entscheidung
- Aufdeckung von Lieferumfangs-Differenzen
- Identifikation fehlender oder zu viel gelieferter Positionen
- Plausibilitaetscheck der Einzelpreise (Bandbreite zwischen Anbietern)

## Format

Output kann je nach Bedarf:
- **DOCX/PDF** als formelles Vergleichs-Dokument (JANS-Layout-Standard, Cambria 11pt)
- **XLSX** als Arbeitsblatt mit Formeln (Differenzen, Prozent, Faerbungen)
- **Markdown** als Schnell-Vergleich fuer interne Notizen

Fuer die formelle Empfehlung an die Bauherrschaft: immer **DOCX/PDF**.

## Spaltenstruktur

| Pos. | Bezeichnung | Menge | Anbieter A EP | Anbieter A GP | Anbieter B EP | Anbieter B GP | Differenz GP | Bemerkung |

Bei mehr als zwei Anbietern: pro zusaetzlichem Anbieter zwei Spalten (EP, GP).

## Plichtfelder pro Zeile

- **Pos.**: Eindeutige Positionsnummer aus dem Leistungsverzeichnis (LV). Bei abweichender Nummerierung zwischen Anbietern: LV-Pos. als Master, in Bemerkung den abweichenden Bezug ("bei Gastro als 4.01 gefuehrt").
- **Bezeichnung**: Kompakte Beschreibung gemaess LV. Bei Geometrie-/Spezifikations-Abweichung beider Anbieter: BEIDE Varianten dokumentieren (z.B. "Plan .3: 2289 mm / Plan .4: 3040 mm").
- **Menge / Einh.**: Aus LV uebernehmen.
- **Preise**: Aus Anbieter-Offerte, exklusive MwSt, in CHF. Werte:
  - Zahl in CHF (mit Tausender-Apostroph: 12'940)
  - `—` = Position fehlt vollstaendig
  - `bestehend` = uebernommen
  - `bauseits` = ausserhalb Lieferumfang
- **Differenz GP**: Absolut (CHF) und optional Prozent. Faerbung wenn moeglich:
  - Guenstigster Anbieter pro Zeile: gruen markieren
  - Teuerster Anbieter pro Zeile: rot markieren
  - Bei Vergleichsdokument ohne Farbe (JANS-Layout): per Spalte "Bemerkung" textuell ausweisen
- **Bemerkung**: Pflicht wenn Differenz > 20% oder wenn Positionen nicht vergleichbar sind:
  - "Identische Beschreibung, Diff +X%"
  - "Nicht direkt vergleichbar (Plan-Revision)"
  - "Fehlt bei <Anbieter>"
  - "bauseits bei <Anbieter>"
  - "Funktional unterschiedlich: <Begruendung>"

## Strukturierung in Bereiche

Tabelle pro Bereich (1.0 Spuelen, 2.0 Warme Kueche, 3.0 Herdanlage, ...). Pro Bereich Zwischensumme.

Bei sehr vielen Positionen (>40): Bereiche auf eigene Seiten verteilen.

## Total-Tabelle am Ende

Folgende Zeilen mindestens:
1. Summe der Zwischensummen (rechnerisch) pro Anbieter
2. Ausgewiesene Summe pro Anbieter (gemaess Offerten-Total)
3. Differenz zwischen 1) und 2) pro Anbieter — markiert Rechenfehler
4. Projektrabatt / Skonto (falls vorhanden)
5. Zwischentotal
6. Lieferung / Montage / Inbetriebnahme
7. **Gesamttotal exkl. MwSt** (fett)

## Pflicht: Bereinigte Schaetzung

Wenn die Offerten nicht auf identischem Plan-Stand oder Lieferumfang sind, muss eine **bereinigte Schaetzung auf gleichem Stand** ergaenzt werden. Sonst ist der nominale Vergleich irrefuehrend.

Format:
- Pro Anbieter Bandbreite (z.B. "rund 78'000 - 83'000 CHF brutto")
- Begruendung welche Aufschlaege oder Abzuege beruecksichtigt wurden
- Quelle der Bandbreite (z.B. Vergleich mit anderem Anbieter, Marktdaten, Wuest Partner)

## Ablage

Wenn Teil der Vergabeempfehlung:
```
30 JANS AI HUB OUTPUT/submission/<projekt-nr>-<projekt>-<gewerk>/auswertung/
  YYMMDD_Vergleichsmatrix_<Projekt>_<Gewerk>.xlsx
  YYMMDD_Vergabeempfehlung_<Projekt>_<Gewerk>.docx
```

## Hinweise

- **Niemals Position weglassen** — auch wenn ein Anbieter sie nicht offeriert hat. Dann `—` und Bemerkung "Fehlt bei <Anbieter>".
- **Bauseits konsequent dokumentieren** — Verschiebungen zwischen Anbietern sind oft das wertvollste Verhandlungsmaterial.
- **Plan-Versionen pro Spalte ausweisen** — wenn Anbieter A auf Plan .3 und Anbieter B auf Plan .4 offerierte, in der Stammdaten-Sektion deutlich machen.
- **Rechenfehler immer markieren** — auch wenn 4'000 CHF "nur" 6% Differenz sind; sie deuten oft auf Sorgfaltsmaengel hin, die sich bei Detailpositionen wiederholen koennen.
