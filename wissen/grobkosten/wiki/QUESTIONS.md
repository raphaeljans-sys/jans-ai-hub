# QUESTIONS — wissen/grobkosten

Offene Fragen / Wissenslücken / ungelöste Spannungen. Neueste zuoberst.

## 2026-07-25 — Trainings-Run 1 (Stufe 1, Inventar): Altarchiv `04_Buero/02_Projekte` liefert 0 auswertbare Kostendokumente — Zweitquelle SharePoint prüfen

- **Befund:** Vollständige Durchsicht aller 21 Projektordner unter
  `/Volumes/daten/04_Buero/02_Projekte/` (Details `training/quellen-inventar.md`) ergab **kein
  einziges** auswertbares GV/BKP-1-5-Kostendokument. Ordner, deren Struktur einen vollständigen
  Kostenverlauf suggerieren (z.B. `1602_St_Karli_11` mit 8 Phasenordnern Wettbewerb→
  Kostenfeststellung, `1303_Steinhof` ebenso), sind auf Dateiebene komplett leer (nur
  `.DS_Store`). Andere Treffer sind Honorarofferten (1011), Möbel-/Büroumzugs-Preisvergleiche
  (1527), ein leeres Berechnungs-Template (1115) oder fachfremd (1604, italienisches CISA-
  Palladio-Studienmaterial).
- **Offene Frage:** Ist dieses Alt-NAS-Archiv (`04_Buero/02_Projekte`, Projekte 2010–2015)
  überhaupt der richtige Ort für reale Baukosten, oder laufen JANS-Bauleitungsmandate mit
  echter Kostenkontrolle ausschliesslich über SharePoint (`AR - 03 Studien/`, aktive Mandate
  KISPI/Albertstrasse/Thalwil, Rule `projekt-ablage-stand`)? `training/PROGRAMM.md` nennt
  SharePoint bereits als Zweitquelle ("`kostenkontrolle`-Outputs und Schlussabrechnungen der
  aktuellen Mandate") — noch nicht geprüft, da dieser Lauf sich strikt an die im Prompt
  vorgegebene NAS-Quelle hielt.
- **Vorschlag für den nächsten Lauf:** SharePoint-Projektordner (M365-Connector,
  `09_Dokumente/CLAUDE/` bzw. die BKP-Kostenkontrolle-Ablage der aktiven Mandate) nach
  Schlussabrechnungen/Kostenständen mit GV-Bezug durchsuchen, statt das Alt-NAS-Archiv erneut
  zu prüfen (dort ist die Quellenlage nach dieser Vollprüfung ausgeschöpft).
- **Einzige nicht komplett wertlose Fundstelle:** `1318_Lorraine_Kueche` (BKP-Detailpositionen
  Schreiner/Heizung/Sanitär für einen Kücheneinbau) — kein Gebäude-GV, daher hier nicht
  verwertet; potenziell später für eine BKP-Einzelposition-Kennwert-Erweiterung interessant.

## 2026-07-24 — Nachgetragen aus Health-Check 21.07.2026 (strukturelle Findings, 3 Wochen offen)

- **Reale JANS-Schlussabrechnungen fehlen weiterhin.** Alle Kennwerte in `kennwerte.md` sind
  Status "Seed" (Wüest-kalibriert, keine eigene Realabrechnung). Erster Realwert ist der
  Promotion-Trigger auf "belegt (n=…)".
- **Umbau/Sanierung: eigene m³-Reduktionsfaktoren noch nicht belegt** — derzeit Verweis auf
  Skill `kostenschaetzung` (dort m²-NF-Reduktionsfaktoren, nicht direkt auf m³-GV übertragen).
- **Healthcare bewusst ausgelagert** an Skill `kostenschaetzung` (Wüest-Partner-m²-NF) — kein
  offener Punkt, nur zur Abgrenzung vermerkt.
- **HNF/GF-Umrechnungsfaktoren (0.70 Regelgeschoss, 0.60 Gesamtgebäude) ohne eigene Quelle** —
  erkennbare JANS-Faustannahmen, plausibel und im Band, aber ohne Provenienz-Tag (Audit C,
  Health-Check 21.07.2026). Unkritisch, aber bei Gelegenheit mit einer Herleitung/Quelle
  hinterlegen, sobald eine verfügbar ist.
