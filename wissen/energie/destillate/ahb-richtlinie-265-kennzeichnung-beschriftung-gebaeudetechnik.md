---
quelle: "Richtlinie Kennzeichnung und Beschriftung Gebäudetechnik, stadt-zuerich.ch/content/dam/web/de/planen-bauen/projekte-und-ausschreibungen/dokumente/hochbauvorhaben/vorgaben/energie-gebaeudetechnik/richtlinie-kennzeichnung-beschriftung-gebaeudetechnik.pdf"
herausgeber: "Stadt Zürich, Amt für Hochbauten (AHB), Fachstelle Energie- und Gebäudetechnik"
ausgabe: "Juli 2022, Version 3.0, M-System-Nr. 265 (28 S.; Vorgänger V 2.2 vom 01.09.2007)"
gelesen: "grösstenteils (Kap. 1-3.1 vollständig, S. 1-11/28, PyMuPDF-Volltext via pdftotext -layout; Kap. 3.2-4 [Kennfarben, Detail-Beschriftungsregeln, Anhang-Beispiele] nicht ausgewertet), HTTP 200/application/pdf vor Auswertung per curl verifiziert, 631'948 Byte"
datenstand: "Juli 2022 — von der aktuellen Dokumentenliste in [[ahb-richtlinie-gebaeudetechnik-229-2025]] (Stand 08.2025) unter Dok.-Nr. 265 weiterhin geführt, keine neuere Fassung gefunden"
status: emerging
last_updated: "2026-08-24"
---

# Destillat — Richtlinie Kennzeichnung und Beschriftung Gebäudetechnik, AHB Stadt Zürich, Dok.-Nr. 265, Juli 2022

## Das Wichtigste in 1 Satz

Verbindliches Kennzeichnungs-/Beschriftungssystem der Stadt Zürich für gebäudetechnische
Betriebsmittel und GA-Datenpunkte — ein sechsteiliger Adress-Code (Standort/Gebäude/Stockwerk-
Raum/Anlage/Betriebsmittel/Funktion) plus eine Medien-Abkürzungstabelle je Gewerk; als
Ausschreibungs-/Pflichtenheft-Vorlage für konsistente Beschriftung über alle Planungsphasen
verwendbar, unabhängig vom AHB-Kontext.

## Fund-Anlass

Referenziert in `[[ahb-richtlinie-gebaeudetechnik-229-2025]]` als eines der noch nicht einzeln
destillierten AHB-Fachmerkblätter. Primärdokument per direktem PDF-Download gefunden (`curl -sI`
im selben `energie-gebaeudetechnik`-Verzeichnis wie Dok. 229/386/389, HTTP 200/application/pdf).

## Adress-Struktur (Kap. 2.2)

Sechs Kennzeichnungsblöcke, je nach Informationsgehalt des Betriebsmittels nicht alle nötig:

```
S NNNN  G NNNNN  AA NN . XXX  =  ANN  .  ANN  :  XXX…
Standort Gebäude  Stockwerk  Raum  Anlage  Betriebsmittel  Funktion
```

Beispiel: `S0142 G00372 UG01.003` (Standort 0142, Gebäude 00372, 1. Untergeschoss, Raum 003).
Raum-Nummerierung: 3-stellig fortlaufend je Stockwerk, **Funktionsräume (Technik) beginnen mit
Ziffer 7** (z. B. `.705`). Funktionsblock (Kap. 2.6) unterscheidet sechs Arten:
Ereignismeldungen (D), Zählwerte (Z), Schaltbefehle (S), Messwerte (M), Stellbefehle (Y),
virtuelle Punkte digital/analog (H/W) — z. B. `…=L02.M01:S1` für den Schaltbefehl des
Zuluftventilator-Motors M01.

## Medienbezeichnungen (Kap. 3.1, Auszug)

Dreistellige Abkürzungen je Gewerk, u. a.: **Elektro** — EPE Elektro PV Eigenverbrauch, EPP PV
Produktion, EPR PV Rückspeisung, EWP Elektro Wärmepumpe, EHV/EUV Haupt-/Unterverteilung;
**Heizung** — HEV/HER Vorlauf/Rücklauf, FWZ Fernwärme, WRG Wärmerückgewinnung, HOS/HOP
Holzschnitzel/-pellets; **Kälte** — KAV/KAR, RUE Rückkühlung, FKA Fernkälte; **Lüftung** — AUL/
ZUL/ABL/UML/FOL/MIL (Aussen-/Zu-/Ab-/Um-/Fort-/Mischluft); **Sanitär** — WTK/WTW Trink-
wasser kalt/warm, WAR Regenabwasser, GAS Erdgas, GAB Biogas; **Energiedatenbank** — BMH/BMS/
BMM Betriebsmeldung Stunden/Starts/Meldung, ALS/ALA Störung/Alarm, GCM Globalstrahlung.

## Geltungsbereich (Kap. 1.2–1.3)

Pflicht bei **Neubauten und weitgehendem/vollständigem Ersatz** der Gebäudetechnik-Installationen;
bei Teilerneuerungen/kleineren Umbauten unter Verhältnismässigkeit anzuwenden. Zuständig für
Pflege/Aktualisierung: FS EGT. Vorgängerversion V 2.2 datierte vom 01.09.2007 — die vorliegende
V 3.0 (Juli 2022) ist die erste grössere Überarbeitung seit 15 Jahren.

## Bauherren-Transfer

- Als **Vorlage für ein privates Pflichtenheft Gebäudeautomation** direkt brauchbar, insbesondere
  die Medien-Abkürzungstabelle (Kap. 3.1) — verhindert Uneinheitlichkeit zwischen Elektro-, HLKS-
  und GA-Planer bei Schemata und Datenpunktlisten.
- Ergänzt `[[sia-386-bacs-gebaeudeautomation]]` und `wiki/gebaeudetechnik-pflichtenheft.md` um die
  konkrete Namenskonvention, die dort bisher nicht behandelt wird.
- Die **PV-spezifischen Kürzel** (EPE/EPP/EPR/ECE/ECP/ECR für Eigenverbrauch/Produktion/
  Rückspeisung, auch als Contracting-Variante) sind ein direkter Anknüpfungspunkt zu
  `[[pv-eigenverbrauch-zev]]` — die Richtlinie unterscheidet Contracting- und Eigentums-Varianten
  bereits in der Kennzeichnung selbst.

## Offene Punkte

- Kap. 3.2–4 (Kennfarben Medienbezeichnungen, detaillierte Beschriftungsregeln für SGK/Kabel/
  Steckdosen, Anhang mit Betriebsmittelkennzeichnungs-Beispielen, S. 12-28) nicht ausgewertet —
  für eine konkrete Ausschreibung nachzuholen.
- Keine Aktualitätsprüfung über den Verweis in Dok. 229 (Stand 08.2025) hinaus.

**Backlinks:** [[ahb-richtlinie-gebaeudetechnik-229-2025]]
