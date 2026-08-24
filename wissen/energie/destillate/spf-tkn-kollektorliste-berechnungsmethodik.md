---
quelle: "SPF Institut für Solartechnik (OST — Ostschweizer Fachhochschule Rapperswil), «Erläuterungen zur kollektorliste.ch», Anhang A «Thermische Kollektor Nennleistung TKN» (S. 4-6/9); ergänzend BFE/EnergieSchweiz-Merkblatt 161.3d «Dimensionierung von Sonnenkollektoranlagen» (S. 2, Abschnitt 3.2)"
herausgeber: "SPF Institut für Solartechnik OST Rapperswil, im Auftrag von EnergieSchweiz/BFE (Autor Andreas Bohren); Zweitquelle Bundesamt für Energie (Autor «Sepp», EnergieSchweiz)"
ausgabe: "«Erläuterungen zur kollektorliste.ch», Stand 12/2021 (PDF-Fusszeile jeder Seite); BFE-Merkblatt 161.3d, PDF-Metadaten CreationDate 25.09.2001"
gelesen: "2026-08-24, vollständig (PDF direkt heruntergeladen von ost.ch bzw. pubdb.bfe.admin.ch, mit PyMuPDF seitenweise ausgelesen, kein WebFetch-Zusammenfassungsumweg)"
datenstand: "⚠ Die TKN-Berechnungsformel (Anhang A) ist Stand 12/2021, methodisch weiterhin die geltende Grundlage des Harmonisierten Fördermodells der Kantone HFM2015 (keine spätere Fassung gefunden). Das BFE-Merkblatt 161.3d ist von 2001, ⚠⚠⚠ 25 Jahre alt — sein Wert 700 W/m² ist eine andere, ältere Kenngrösse (siehe unten), nicht die TKN."
status: established
last_updated: 2026-08-24
links:
  - [[solarthermie-vs-pv-warmwasser-ch]]
  - [[foerderprogramm-energie-zh-2026]]
  - [[foerderprogramm-energie-sz-2026]]
  - [[sia-2060-kosten-ladeinfrastruktur-vertiefung]]
---

# Destillat — Warum es keinen festen Umrechnungsfaktor m² → kWth für Solarthermie-Förderung gibt (TKN-Methodik)

## Das Wichtigste in einem Satz

Die für die Förderung massgebende **Thermische Kollektor Nennleistung (TKN)** wird nicht aus der
Kollektorfläche geschätzt, sondern **je Produkt** aus vier Solar-Keymark-Prüfwerten
(Leistung bei vier Betriebstemperaturen) und zwei Winkelfaktoren berechnet — deshalb gibt es
**bewusst keinen** allgemeingültigen m²→kWth-Faktor, und die bisherige KB-Aussage «Primärquelle
wäre `kollektorliste.ch` je Produkt» (Audit-Korrektur A-P3 03.13, 24.08.2026) ist damit nicht nur
plausibel, sondern an der Berechnungsvorschrift selbst bestätigt.

## Die TKN-Formel (Primärquelle, Anhang A, Formel 1)

Grundlage: das offizielle **Solar-Keymark-Datenblatt** jedes Kollektors, das die Leistung P bei
den vier Referenz-Temperaturdifferenzen ΔT = 10 K, 30 K, 50 K, 70 K sowie zwei Winkelfaktoren
K_θ(50°) für Diffusstrahlung ausweist:

> TKN = [P(ΔT=10K) + P(ΔT=30K) + P(ΔT=50K) + 4·P(ΔT=70K)] / 7 · K_θ(50°) · K_θdiff(50°) · 0.9

(K_θdiff(50°) ist der Winkelfaktor für den Diffusstrahlungsanteil; 0.9 ist ein empirischer
Korrekturfaktor.) Das im Anhang durchgerechnete Beispiel eines realen Solar-Keymark-Datenblatts
ergibt **TKN = 1'436 W** für einen Kollektor mit **2.505 m² Aperturfläche** — das entspricht rund
**573 W/m² Apertur** für diesen einen Kollektor. Der SPF-Vergleich (275 vermessene Kollektoren
verschiedener Bauart) zeigt, dass die TKN im Mittel nahe am real gemessenen SPF-Referenzertrag
liegt (Abweichung ca. ±8 % je nach Anlagenüberwachung), **aber nicht, dass sie über Kollektortypen
hinweg auf einen konstanten W/m²-Wert konvergiert** — die vier Leistungswerte hängen vom
Wirkungsgradverlauf des einzelnen Kollektors ab (Flachkollektor, Vakuumröhre, unverglast
unterscheiden sich hier systematisch, siehe [[pv-solar-technologien]] für die Bauartübersicht).

**Praktische Konsequenz für die Bauherren-FAQ:** Die TKN eines konkreten, offerierten Kollektors
steht **direkt** auf `kollektorliste.ch` (seit 2022 auch als frei herunterladbare Exceltabelle) —
das ist der Weg, nicht eine Faustformel. Ein Bauherr mit einer offerierten Kollektorfläche kann
den Förderbetrag erst berechnen, wenn Hersteller/Modell bekannt sind.

## Die «700 W/m²» aus dem BFE-Merkblatt 2001 — eine ANDERE Kenngrösse, nicht die TKN

Das ältere BFE/EnergieSchweiz-Merkblatt 161.3d «Dimensionierung von Sonnenkollektoranlagen»
(Autor «Sepp», 25.09.2001) nennt im Abschnitt 3.2 (Planungshinweise Kollektorkreislauf) einen
Wert von **700 W/m² «maximale Kollektorleistung»** — dieser dient dort zur Dimensionierung des
internen Wärmetauschers (Temperaturdifferenz 10-15 K), nicht der Förderberechnung. Es handelt
sich um eine **andere, ältere Kenngrösse** mit anderer Definition (Peak-Leistung unter
Volleinstrahlung, pauschal für alle Kollektortypen) als die produktspezifische TKN des HFM2015.
**Wichtiger Vorbehalt für die KB:** Diese beiden Zahlen (~570-700 W/m² TKN-Beispiel vs. 700 W/m²
BFE-Dimensionierungswert) liegen zufällig in ähnlicher Grössenordnung, dürfen aber **nicht
gleichgesetzt oder als austauschbar zitiert werden** — wer die 700-W/m²-Zahl aus dem 2001er-Merkblatt
für eine Förderberechnung verwendet, begeht denselben Fehler, den diese KB gerade vermeiden will
(eine pauschale Faustzahl statt der produktspezifischen TKN).

## Bauherren-Transfer

- **Kurzantwort für F40:** Es gibt keine seriöse Pauschalformel m² → kWth für die
  Solarthermie-Förderung. Die massgebende Nennleistung (TKN) steht für jeden auf dem Schweizer
  Markt zugelassenen Kollektor auf `kollektorliste.ch` — dort nach Hersteller/Modell suchen oder
  die Exceltabelle herunterladen, sobald ein konkretes Produkt zur Debatte steht.
- **Grobe Grössenordnung, falls überhaupt ein Anhaltspunkt vor der Produktwahl nötig ist:** das
  einzige primärquellen-belegte Rechenbeispiel dieser KB liegt bei ~570 W/m² Apertur für einen
  Flachkollektor (Solar-Keymark-Beispiel, Anhang A) — **als Grössenordnung, nicht als Kennwert**,
  da die TKN je nach Kollektortyp und Baureihe deutlich abweicht.
- **Was das für die Förderrechnung heisst:** Solange kein konkretes Kollektormodell feststeht,
  bleibt der CHF-Betrag der Solarthermie-Förderung (2'400 + 1'000/kWth, [[foerderprogramm-energie-zh-2026]]
  / [[foerderprogramm-energie-sz-2026]]) nur grob schätzbar — verbindlich wird er erst mit dem
  offerierten Produkt.

## Offene Punkte

- **Keine über mehrere Kollektortypen gemittelte TKN/m²-Statistik primärquellen-verifiziert** —
  das SPF-Dokument zeigt nur ein Einzelbeispiel und eine Vergleichsgrafik (Fig. 3) ohne
  tabellierte W/m²-Mittelwerte je Bauart; eine solche Statistik wäre nur über eine eigene
  Auswertung der `kollektorliste.ch`-Exceltabelle (mehrere hundert Produkte) zu gewinnen — ausserhalb
  des Aufwands dieses Laufs.
- **Aktualität der Formel seit 2021 nicht erneut bei EnergieSchweiz/SPF gegengeprüft** — das
  Dokument selbst trägt kein Ablaufdatum; keine Hinweise auf eine neuere Fassung gefunden.
