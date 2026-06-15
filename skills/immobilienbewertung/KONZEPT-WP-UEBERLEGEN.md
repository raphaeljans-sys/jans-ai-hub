# Pflichtenheft — JANS-Bewertungsgutachten «besser als Wüest Partner»

Stand: 15.06.2026 · Quelle der Entscheide: Raphael Jans (2 Frage-Runden)
Referenz-Benchmark: `IMMO - 04 Marktpreise/wuest partner/Wuest Reports/Hedonic/WuestPartnerAG_Appraisal_Long_Beispiel_EFH.pdf`

## 1. Strategischer Entscheid

Das Ziel ist **kein** WP-Klon (anonymer Modellwert ab CHF 450 ohne Besichtigung), sondern ein
**signiertes Experten-Gutachten** nach Schweizer Standard. Der Wettbewerbsvorteil ist genau das,
was WP selbst ausschliesst: **Augenschein, Architekten-Tiefe, Haftung, drei triangulierte Verfahren.**

| Dimension | Wüest Partner (Hedonic) | JANS-Gutachten (Ziel) |
|---|---|---|
| Methode | 1 Verfahren (hedonische Regression) | 3 Verfahren trianguliert (Real-/Ertrags-/Vergleichswert) + Residual bei Entwicklung |
| Datenbasis | proprietäre Transaktions-DB (Moat) | UBS Fact Sheets/Wüest-Benchmarks (aktiv) + Inserate-Proxy + Triangulation |
| Besichtigung | **keine** (Selbstauskunft Kunde) | **strukturierter Augenschein** mit Aufnahmeblatt + Fotos |
| Haftung | **keine** Gewährleistung | **signiertes Gutachten**, SVS/SVKG-konform |
| Architektur/Baurecht | nicht enthalten | Ausbaureserven, Sanierungsstau, Volumen, Zonenkonformität (JANS-Kern) |
| Standard | Modellwert | **methodisch SVS-konform** (Schätzerhandbuch SVKG/SEK/SVIT 2012) |
| Form | PDF-Report 9 Seiten | DOCX/PDF im JANS-Layout, WP-Struktur + Mehrwert |

## 2. Entscheide (verbindlich)

1. **Produkt:** Experten-Gutachten, signiert, mit Besichtigung.
2. **Standard:** methodisch nach Schweizer Schätzungsstandard (SVS) / Schätzerhandbuch SVKG/SEK/SVIT
   2012 (in der KB bereits Faktenbasis — `wiki/bewertungsverfahren-ueberblick.md`). **Wording-Regel
   (verbindlich, siehe `rules/auto-verbesserungen.md` 260615):** auf die Methode/den Standard berufen;
   eine persönliche SVKG-Zertifizierung des Verfassers WEDER behaupten/implizieren NOCH verneinen —
   die Frage bleibt offen/unerwähnt. Es geht um Methodentreue, nicht um einen Titel.
3. **Datenbasis:** vorhandene Abos (aktiv: **nur UBS Fact Sheets / Wüest-Benchmarks**) +
   Angebots-/Inserate-Daten als Proxy. keevalue/realadvisor/comparis NICHT aktiv → kein API-Bezug,
   manuelle/halbautomatische Erfassung. Angebotspreise IMMER als Angebots- ≠ Transaktionspreis kennzeichnen.
4. **Scope:** alle vier Objekttypen (EFH/EWG · MFH/Rendite · Healthcare · Bauland/Entwicklung).
   **Start: EFH/EWG** am realen Fall (Bahnhofstrasse 27 Wangen liegt vor).
5. **Besichtigung:** Aufnahmeblatt + Foto-Integration (iPhone-tauglich), speist Zustand/Standard
   und damit den Realwert-Abschlag.
6. **Form:** bestehenden Skill `immobilienbewertung` ausbauen → DOCX/PDF.

## 3. Gap-Analyse — was WP hat, das wir ergänzen

WP-Berichtsstruktur (9 Seiten): Titelblatt(MW) · Inhalt · Hedonische Bewertung (Objekt-/Quanti-/
Quali-Faktoren, Bewertungsergebnis mit Preisspanne + statistischer Ampel, Marktwertbereinigungen,
Kennzahlen, Datengrundlage) · **Qualitätsprofil** (Standard/Zustand/Mikrolage mit Skalen 1–5) ·
**Karten** (Makro-/Mikrolage) · Kontext (Disclaimer/Methode) · **Glossar**.

Davon im JANS-Skill heute noch NICHT formalisiert und nachzurüsten:
- [ ] **Qualitätsprofil-Raster** Standard/Zustand/Mikrolage mit 1–5-Skalen (WP-vergleichbar, aber
      durch echten Augenschein gefüllt statt Selbstauskunft). → neuer KB-Artikel + Aufnahmeblatt.
- [ ] **Statistische Ampel / Preisspanne** als eigene Ergebnis-Darstellung (Bandbreite).
- [ ] **Karten Makro-/Mikrolage** automatisiert (via `geo-zh.mjs` / swisstopo / OEREB).
- [ ] **Glossar** als wiederverwendbarer Bericht-Baustein.
- [ ] **Marktwertbereinigungen** (Garagen/Parkplätze, Baurecht/Baurechtszins kapitalisiert).
- [ ] **Titelblatt** mit grossem Marktwert + Referenznummer + Bewertungsstichtag.

Mehrwert über WP hinaus (JANS-Alleinstellung):
- [ ] Besichtigungs-/Augenschein-Protokoll mit Fotos und Sanierungsstau je Bauteil.
- [ ] Baurecht-/Volumen-Modul (Ausbaureserven monetär bewertet) — Brücke zu `machbarkeit`.
- [ ] 3-Verfahren-Synthese mit begründeter Gewichtung (Tab. 22 Schätzungsanleitung, in KB).
- [ ] Sensitivität/Szenarien (CS-Deliverable).

## 4. Bauplan (Phasen)

**Phase 1 — EFH/EWG-Goldstandard (Start)**
- KB-Artikel `wiki/qualitaetsprofil-raster.md` (Standard/Zustand/Mikrolage-Skalen 1–5, WP-kompatibel).
- KB-Artikel `wiki/svs-svkg-standard.md` (Gutachten-Aufbau, Pflichtangaben, Disclaimer, Haftung).
- Besichtigungs-Aufnahmeblatt (`tools/aufnahmeblatt.*`) inkl. Foto-Ablage-Konvention.
- Berichts-Skelett EFH/EWG (Titelblatt/Ergebnis/Qualitätsprofil/Karten/Synthese/Glossar/Vorbehalte).
- Pilot: Bahnhofstrasse 27 Wangen durchspielen, gegen WP-Logik plausibilisieren.

**Phase 2 — Generator & Layout**  ✓ Generator/Optik erledigt (15.06.2026)
- ✓ DOCX/PDF-Generator `tools/build_gutachten.py` (Titelblatt mit grosser Marktwert-Kennzahl,
  Qualitätsprofil-Balken 1–5, Tabellen, Glossar, Unterschrift; JANS-Layout via `jans_docx.py`;
  venv `~/.venvs/jansdocx`). Validiert am Fall Wangen (4-seitiges Gutachten + 2-seitiges
  Aufnahmeblatt-Formular, beide gerendert/gesichtet).
- Offen: Karten-Integration via `geo-zh.mjs` (Makro/Mikro, OEREB, Orthofoto) als Bild-Block.

**Phase 3 — weitere Objekttypen**
- MFH/Rendite (Ertragswert/DCF führt), Healthcare (Kennwerte KB), Bauland (Residual, Brücke `machbarkeit`).

**Phase 4 (optional, später) — Web-Frontend**
- Bestellformular wie WP als Akquise-Lead → Skill als Engine. Erst wenn Bericht sitzt.

## 5. Offene Punkte / Vorbehalte
- ✓ SVKG-Zertifizierung geklärt (15.06.2026): keine persönliche Zertifizierung → Wording rein
  methoden-basiert, Zertifizierungsfrage offen lassen (siehe Abschnitt 2 + Dauerregel 260615).
- Inserate-Proxy: Quelle + Erhebungsmethode sauber dokumentieren (Angebots- ≠ Transaktionspreis).
- Foto-Integration: Ablageort (Projektordner) + Bericht-Einbettung technisch festlegen.
