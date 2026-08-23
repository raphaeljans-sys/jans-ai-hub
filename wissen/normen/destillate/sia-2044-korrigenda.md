---
quelle: "shop.sia.ch/normenwerk/architekt/2044_2011_d/D/Product — zwei kostenlose Anhänge (Preisgruppe 0): 'Korrigenda C1' (UUID 0a5fa570-d337-485d-a67d-932405cc8293), 'Korrigenda C2' (UUID 06531029-72c4-4975-b4e2-3b575da20df0); Basis-Merkblatt SIA 2044:2011 selbst kostenpflichtig und NICHT im Haus"
herausgeber: "Schweizerischer Ingenieur- und Architektenverein (SIA), Zürich"
ausgabe: "Korrigenda C1 (8 S., gültig ab 01.01.2013), Korrigenda C2 (2 S., gültig ab 01.04.2013), beide zum Merkblatt SIA 2044:2011, 1. Auflage 2010-11"
ersetzt: "korrigieren das Merkblatt SIA 2044:2011 «Klimatisierte Gebäude — Standard-Berechnungsverfahren für den Leistungs- und Energiebedarf» (Basistext selbst nicht im Haus); Merkblatt archiviert seit 31.07.2019, ersetzt durch SIA 2044:2019 (ebenfalls nicht im Haus, deckt sich mit Register-Zeile SIA 380/2, N29-1)"
gelesen: "beide vollständig (C1 8 S., C2 2 S.), direkte PDF-Downloads (Preisgruppe 0, kein Kauf nötig) und `pdftotext -layout`"
datenstand: "C1 gültig ab 01.01.2013; C2 gültig ab 01.04.2013"
status: established
last_updated: 2026-08-23
verifikation: "Direktlektüre beider Original-PDFs (Modell D), vollständig vom Herausgeber-Shop geladen (kostenloser Download). Keine separate Refuter-Runde; Korrekturtabellen mit Formelnotation, sinngemäss statt wörtlich wiedergegeben."
links: [[REGISTER]]
---

# SIA 2044 — Korrigenda C1/C2 zum Merkblatt «Klimatisierte Gebäude — Standard-Berechnungsverfahren»

## Das Wichtigste in 3 Sätzen

Zwei kostenlose Korrigenda-Dokumente zum bauphysikalischen Berechnungsverfahren-Merkblatt
SIA 2044:2011: C1 (gültig ab 01.01.2013, 8 S.) korrigiert überwiegend Formelindizes,
Begriffsdefinitionen (thermische Masse/Massenfläche) und Symbol-Einheiten des
Wärmetransfer-/Speicherfähigkeits-Berechnungsverfahrens; C2 (gültig ab 01.04.2013, 2 S.)
korrigiert einen Norm-Literaturverweis (SIA 416/1→SIA 384/3) und eine Vorzeichenkorrektur
in Gleichung 87 (Nenner 1-e→1+e). Beide Korrekturen betreffen ein bereits archiviertes
Merkblatt (ersetzt durch SIA 2044:2019, ebenfalls nicht im Haus) und sind für die laufende
JANS-Praxis nur bei Rückgriff auf Altberechnungen relevant.

## Kernkorrekturen mit Fundstelle

### Korrigenda C1 (gültig ab 01.01.2013)
- **Ziff. 2.1.2:** Begriff präzisiert von «Thermische Masse und Zerlegung der Bauteile» zu
  «Thermische Masse und Massenfläche» — die Wärmespeicherfähigkeit eines Raumes entspricht
  neu der Summe der **inneren** Wärmespeicherfähigkeit der Bauteile (statt innen+aussen);
  bei Fenstern/Türen wird sie generell vernachlässigt.
- **Ziff. 2.1.3, Gleichung (9)→(7):** Umbenennung/Neuindizierung mehrerer Formeln, neue
  Formel Hop,m für den Wärmetransferkoeffizienten der schweren Bauteile eingeführt
  (Aj,m = Bruttofläche, nicht mehr «Fläche», des schweren Bauteils j).
- **Ziff. 1.1.2.4/1.1.3.2/1.1.4.7/1.2:** kleinere Formel- und Symbolkorrekturen (z.B.
  Reflexionsgrad ist **abhängig**, nicht unabhängig, von spektraler Verteilung/Polarisation/
  geometrischer Lichtverteilung — sachliche Umkehrung einer Aussage).

### Korrigenda C2 (gültig ab 01.04.2013)
- **Ziff. 0.2.1 (Literaturverweise):** Verweis auf SIA 416/1:2007 als «Kennzahlen für die
  Gebäudetechnik» **entfernt**, stattdessen neu **SIA 384/3:2013 «Heizungsanlagen in
  Gebäuden — Energiebedarf»** als Grundlagennorm aufgeführt.
- **Ziff. 2.4.4.3, Gleichung 87:** Vorzeichenkorrektur im Nenner — neu **1+e** statt 1-e.
- **Ziff. 2.8.2.1:** Ergänzung, dass bei Wärmepumpen-COP-Werten alternativ nach SIA 384/3
  Ziff. A.2.2 interpoliert werden kann.

## JANS-Praxis-Transfer

- **Skill `energie`:** geringe eigenständige Relevanz, da das Merkblatt selbst archiviert
  ist. Bei Prüfung historischer Energienachweise (Altberechnungen nach SIA 2044:2011 vor
  2019) ist der geänderte Literaturbezug zu SIA 384/3 statt SIA 416/1 zu beachten.

## Nicht geleistet / Grenzen dieses Destillats

- Das Basis-Merkblatt SIA 2044:2011 selbst (Hauptkapitel, vollständiges
  Berechnungsverfahren) bleibt nicht im Haus.
- Die aktuell gültige Ausgabe **SIA 2044:2019** ist ebenfalls nicht im Haus und nicht auf
  eigene kostenlose Korrigenda geprüft (deckt sich mit der bereits offenen Bring-Schuld
  N29-1 bei SIA 380/2).
- Formeln sinngemäss statt als exakte mathematische Notation wiedergegeben (PDF-Extraktion
  von Formelsatz ist verlustbehaftet) — bei Bedarf am Original-PDF nachprüfen
  (`/tmp/siacheck/2044-korrigenda-c1.pdf` bzw. c2, nur lokaler Lauf-Cache).

## Nachgeführte Register-Punkte

- `wiki/REGISTER.md`, Zeile SIA 2044: Korrigenda-Fund + Literaturverweis-Wechsel ergänzt.
- `destillate/INDEX.md`: neue Zeile.
