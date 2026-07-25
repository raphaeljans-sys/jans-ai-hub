# Report: Herkunftsklärung Rohdichte-Vorgabe 800 kg/m³ (KISPI, LBW-Beplankung)

**Datum:** 23.07.2026 · **Anfrage:** Raphael (verifizieren, ob und woher die von
Jens Ziegel/Gruner definierte Rohdichte 800 kg/m³ dem korrekten Sachverhalt im
Projekt 2619 KISPI entspricht) · **Ergebnis:** vollständig geklärt, Vorgabe korrekt.

## Kurzfassung

Die 800 kg/m³ stammen NICHT aus dem globalen Brandschutzkonzept (2016/2018, dort nur
EI-Qualitäten), sondern entsprechen der Bestands-Plattenspezifikation: Das
Erstellungs-LV 271.13 (2020) schreibt für die Typenwände W320/W340/W430/W440
Gipsplatten Typ DFIR vor; das D der EN 520 bedeutet «definierte Dichte ≥ 800 kg/m³».
Verbaut wurden gemäss Unternehmerdokumentation Duraline Vario (≥ 980 kg/m³) und
Habito (ca. 975 kg/m³). Ziegels Vorgabe für die neuen Wände ist damit eine
Gleichwertigkeits-Anforderung an den Bestand und sachlich korrekt. GKB (776 kg/m³,
VKF 18151) genügt nicht; Duraline Vario (VKF 22636) erfüllt sie.

## Details und Beweiskette

Siehe Wiki-Artikel `wiki/kispi-lbw-rohdichte-800.md` (Beweiskette mit DS3-File-IDs)
und `wissen/normen/wiki/en-520-gipsplattentypen.md` (Norm-Grundlage).

## Verwendete Zugänge

- Truninger-DS3 (connectors/truninger-ds3.mjs, read-only): Brandschutzkonzepte,
  Original-LV, Unternehmerdokumentation/Materialdeklaration.
- Lokale Projektablage OneDrive 2619_KINDERSPITAL: QS-Korrektur Ziegel (BIK-Plan),
  VKF-Anerkennungen 18151/22636, Mail Estermann.
- Web (Rigips-Normbroschüre DIN EN 520): Typ-D-Definition; Original-Destillat der
  EN 520 als Lücke in wissen/normen/wiki/QUESTIONS.md erfasst.
