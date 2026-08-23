---
quelle: amtlich
ebene: Gemeinde (Kanton Zürich)
erlass: Bau- und Zonenordnung — Thalwil
kuerzel: BZO
gemeinde: Thalwil
docid: 1296
titel: Bauordnung Thalwil — Grundmasse-Tabelle Art. 3 (Layout-Extraktion)
quelle_url: https://oerebdocs.zh.ch/getDoc?docid=1296
abgerufen: 2026-08-23
lizenz: Amtlicher Text — gemeinfrei (Art. 5 URG)
---

# BZO Thalwil — Grundmasse-Tabelle Art. 3 (saubere Layout-Extraktion)

Ergänzung zu `raw/260607_amtlich_zh_bzo-thalwil.md` (dessen Markdown-Konvertierung die
mehrspaltige Grundmasse-Tabelle in Art. 3 linearisiert und dadurch die Zahlen von ihren
Spaltenköpfen getrennt hatte — Zellen wie «2.», «1», «7.50», «10.50 10.50 13.50» stehen dort
ohne erkennbare Zonen-Zuordnung, Zeilen 682-918). Diese Datei extrahiert dasselbe amtliche
PDF (`oerebdocs.zh.ch/getDoc?docid=1296`) erneut mit `pdftotext -layout`, wodurch die
Spaltenausrichtung erhalten bleibt — dieselbe Methode wie bei
`raw/260725_amtlich_zh_bzo-zurich-stadt-grundmasse.md` (Buch-Run 56). Anlass: Korpus-Queue
Batch T3 (Buch-Run 75, 23.08.2026), Ordner `02 BZO Thalwil/01 Grundmasse/`.

**Gegenprobe:** Die Werte sind identisch mit der unabhängigen Quelle im Thalwil-
Reglemente-Ordner (`01 Grundmasse/SR_700.1_Bau-_und_Zonenordnung_BZO-Seite5.pdf`, Stand
26.11.2024, 19-seitige Export-Fassung) — trotz abweichender Gesamtseitenzahl (19 vs. 21 in
der hier frisch bezogenen Fassung) sind Artikeltext und Zahlenwerte zeichengleich. Die
Differenz ist ein PDF-Exportartefakt (Kopf-/Fusszeilen-Zählung), keine Rechtsänderung.

## Art. 3 — Grundmasse Wohnzonen

```
                                                   Zonen
Bestimmungen                    W1       W2      WG2     W3      WG3       WG4
                                                          WGS

Max. Ausnützungsziffer          30%      40%     40 %a 60%       60%       70%
Max. Zuschlag für Gewerbe                        10%             10%       10%
(Art. 5 Abs. 2)
Max. Vollgeschosse              2        2       2       3b      3b        4
Max. Dachgeschosse              1        1       1       1b      1b        1
Max. anrechenbare Unter-        1c       1c      1       1       1         1
geschosse
Max. zusätzlich mögliche        -        1       1       2       2         1
Vollgeschosse bei Areal-
überbauungen (Art. 22 Abs. 1)

Max. Gebäudehöhe in Meter       7.50     7.50    7.50    10.50   10.50     13.50
Max Gebäudelänge in Meter       25.00d   30.00   30.00   40.00   40.00     40.00
Max. Firsthöhe in Meter         4.50     4.50    4.50    5.50    5.50      5.50
Min. Grundabstand in Meter      5.00     5.00    5.00    5.00    5.00      5.00

Mehrlängenzuschlag e            ¼ der Mehrlänge über der Grundlänge von
                                 15.00 m, max. jedoch bis 7.00 m
```

Fussnoten (Art. 3 Abs. 1):
- a) In der Zone WGS darf in Vollgeschossen max. 50 % der anrechenbaren Geschossfläche für
  Wohnen verwendet werden.
- b) Im Rahmen der Sonderbauvorschriften Aufwertung und Verdichtung (Art. 20a) ist anstelle
  des Dachgeschosses ein Vollgeschoss zulässig.
- c) Der Ausbau zu Wohn- und Arbeitsräumen ist bis zu maximal 50 % der nach § 255 Abs. 2 PBG
  zulässigen Geschossflächen erlaubt.
- d) Für Grundstücke am Seeufer darf die Gesamtlänge der Gebäude max. 50 % der
  Seeanstosslänge des Grundstückes betragen, und es gilt eine Freiflächenziffer von min. 75 %.
- e) Beträgt der nachbarlich vereinbarte Gebäudeabstand (§ 270 Abs. 3 PBG) weniger als
  7.00 m, gilt für den Mehrlängenzuschlag die Summe der massgebenden Fassadenlängen,
  abzüglich der Grundlängen von 15.00 m der beteiligten Gebäude. Sind die Gebäudelängen
  kleiner oder gleich 15.00 m, sind die tatsächlichen Gebäudelängen in die Berechnung
  einzusetzen.

Art. 3 Abs. 2: Bei Grundstücken am Seeufer im Bereich von Landanlagen (Konzessionsland
gemäss Plan der kantonalen Baudirektion) sind auch die z.T. von der BZO abweichenden
Bestimmungen in der entsprechenden Richtlinie zu beachten.

## Cross-Check Art. 20a (Sonderbauvorschriften Aufwertung/Verdichtung W3/WG3)

Die zweite Quelle im Ordner (`Sonderbauvorschrift W3/SR_700.1_Bau-_und_Zonenordnung_BZO-
Seite13.pdf`) deckt sich vollständig mit dem bereits ingestierten Volltext in
`raw/260607_amtlich_zh_bzo-thalwil.md` Zeilen 1438-1496 (dort **nicht** linearisiert,
korrekt lesbar) — kein neuer Ingest nötig, reine Bestätigung. Art. 20a erhöht für W3/WG3
gegenüber Art. 3 die AZ auf max. 80 %, die Vollgeschosszahl auf 4 (kein zusätzliches DG) und
die Gebäudehöhe auf 13.50 m, unter den in Art. 20a Abs. 6 genannten Bedingungen
(Wohnanteil-Reservierung, HNF-Deckel nach SIA 416).

## Zonenplan-Legende (Ergänzung, Kontext)

Aus `Zonenplan/Zonenplan_20240601.pdf` (Stand AV September 2024, von der Baudirektion
genehmigt 01.06.2024, KS-0086/24) — reine Legende, die Geometrie selbst liegt nur als
Rastergrafik vor und ist nicht textuell extrahierbar:

W1 zweigeschossige Wohnzone (ES II) · W2 zweigeschossige Wohnzone (ES II) · WG2
zweigeschossige Wohnzone mit Gewerbe (ES III) · W3 dreigeschossige Wohnzone (ES II) · WG3
dreigeschossige Wohnzone mit Gewerbeerleichterung (ES III) · WG4 viergeschossige Wohnzone
mit Gewerbeerleichterung (ES III) · WGS Wohnzone mit Gewerbeerleichterung am Seeufer
(ES III) · G Gewerbezone (ES IV) · Z Zentrumszone (ES III) · KA Kernzone A (ES III) · KB
Kernzone B (ES III) · QEZ Quartiererhaltungszone · OE Zone für öffentliche Bauten und
Anlagen (ES siehe Plan) · F Freihaltezone (ES III) · E Erholungszone (ES III) · R
Reservezone · F Freihaltezone §§ 39 ff. PBG (ES III) · L Landwirtschaftszone §§ 36 ff. PBG
(ES III). Symbole: Gestaltungsplanpflicht, mässig störendes Gewerbe zulässig (ES III),
Wohnzone mit Lärmvorbelastung (ES III), Aussichtspunkt, Perimeter Reduktion
Pflichtparkplätze, Gebiete mit Gestaltungsplan, Gebiete mit Sonderbauvorschriften, Wald,
Gewässer.

## Methodenhinweis

Bestätigt das Vorgehen aus dem Zürich-Stadt-Fall (`raw/260725_amtlich_zh_bzo-zurich-stadt-
grundmasse.md`): bei erkennbar linearisierten Grundmasse-Tabellen in amtlichen ZH-
Kommunal-Erlassen lohnt sich `curl` auf die `oerebdocs.zh.ch/getDoc?docid=<n>`-URL +
`pdftotext -layout` als Neuextraktion, bevor ein Wert als unklar geflaggt wird.
