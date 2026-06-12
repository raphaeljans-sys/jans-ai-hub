# Trainings-Lauf 4 — KB Planungsgrundlagen

- **Datum:** 2026-06-12
- **Schwerpunkt-Domaene:** **Energie (PL-04)** — per Rotation (nach Kartenportale) und Prioritaet.
  Kartenportale lief zuletzt am 10.06. (Run 3) und nochmals am 11.06. (A4 Geoshop/Situationsplan,
  Baulinien-WFS) — also frisch versorgt; Energie war seit Run 1 (06-06) nicht mehr dran. Beide
  Domaenen sind Prioritaet, daher Energie diesmal gezogen.
- **Connector-Schritt:** nein (gilt nur fuer Kartenportale).

## Ausgangslage
E4 (Energienachweis ZH) war im Hauptformular EN-ZH belegt, aber die **Fachformular-Liste je
Fachbereich** (D4) fehlte — und damit die Antwort auf «welcher EN-Nachweis betrifft mein Projekt,
welche Rechtsgrundlage, welcher Inhalt». Direkt relevant fuer den laufenden Fall **2619-KISPI**
(Auflage UGZ II.8.a/b/c → EN-ZH / EN-105 / EN-110-ZH).

## Bearbeitete Selbstfragen (curriculum/QUESTIONS)
- **D4 — EN-ZH Fachformular-Liste** → ✓ erledigt. Aus den Original-PDF (PL-04/_Formulare Kt. ZH):
  EN-ZH (Version Juli 2022, 5 S.) **Seite 2** liefert die vollstaendige Checkliste, **S. 3-4** die
  Rechtsbezuege. Komplette Liste belegt erfasst: **EN-101a/b/c** (Energiebedarf) · **EN-102a/b**
  (Waermedaemmung, SIA 380/1:2016) · **EN-103 / EN-LCC-ZH / EN-120** (Heizung/WW + erneuerb. Waerme
  bei Erzeugerersatz) · **EN-104-ZH** (Eigenstrom, 10 W/m² EBF, PV ≤ 70 % bei hohen Bauten) ·
  **EN-105 / EN-110-ZH** (Lueftung/Kuehlung) · **EN-111** (Beleuchtung >1000 m² EBF) · **EN-112/
  131/132/133/134/135/141** (Spezialanlagen) + Betriebsoptimierung · **S / LN-1** (Schall/WP-Laerm).
  Je Zeile Rechtsbezug (EnerG/BBV I/WDV) und Schwellenwerte (GA EN-141 ab 5000 m², BO ab 200'000
  kWh, etc.).
- **D4-Detail EN-105** → Lueftung: WRG ≥ 70 % (bzw. 75 % feucht), Luftgeschwindigkeiten gestaffelt,
  WRG-Daemmstaerken, spez. Leistung; EnDK Version Aug 2017, gueltig bis **31.12.2026**.
- **D4-Detail EN-110-ZH** → Kuehlung/Befeuchtung **nur Bestand/Umbau (Neubau: kein EN-110)**;
  spez. Leistung < 12 W/m², θcw ≥ 14/10 °C, EER, SIA 382/1, PV-Deckung; Version Sept 2022.
- **D1-Update — EVEN** → ✓ wichtig: **seit 01.01.2026** wickelt Kt. ZH den Energienachweis ueber
  die Plattform **EVEN** (`energievollzug.ch`) ab; EN-101…EN-141 sind dort digital, PDF entfallen
  bis auf Ausnahmen (EN-104-ZH, EN-110-ZH, WTA, Ausfuehrungskontrolle, Lueftung Spezialfaelle).
  Alt-Projekte via «Energiehub Gebaeude». Quelle zh.ch/energienachweise (abgerufen 12.06.).
  → erklaert die «EVEN»-Notiz im KISPI-Projekt.

## Geaendert
- **NEU** `wiki/energie-energienachweis-zh-formulare.md` (**established**) — vollstaendige
  Fachformular-Liste mit Inhalt/Rechtsbezug, Detail EN-105 + EN-110-ZH, EVEN-Umstellung 2026,
  Praxis-Merkposten + Datenstand. Reale KISPI-Verknuepfung eingewoben.
- `wiki/energie-uebersicht.md` — Energienachweis-Sektion auf EVEN + Verweis auf neuen Artikel
  umgestellt, D4 als erledigt markiert, `last_updated` 2026-06-12.
- Register: `INDEX.md` (neuer Artikel), `QUESTIONS.md` (D4 ✓, D1-Update EVEN, neu D6 EVEN-Bedienung),
  `training/curriculum.md` (E4 vollstaendig), `raw/_INGESTED.md` (PL-04 Formulare + EVEN-Web).

## Belegte Kernfakten (neu)
- EVEN-Plattform `energievollzug.ch` ab 01.01.2026 (zh.ch, 12.06.2026).
- EN-ZH-Checkliste vollstaendig (EN-101a…EN-141, S, LN-1) mit EnerG/BBV I/WDV-Bezug (EN-ZH S.2-4).
- EN-105 (Aug 2017, gueltig bis 31.12.2026), EN-110-ZH (Sept 2022, gueltig bis 31.12.2025 → EVEN).
- EN-110-ZH nur Bestand/Umbau; bei Neubau kein EN-110.

## Naechster Lauf
Rotation → **Recht/Norm (PL-02)** oder zurueck auf Prioritaet **Kartenportale** (harter Brocken
A2/E2: login-freier kommunaler ZH-Zonenplan-WMS, wms.zh.ch-401). Energie-Restpunkte: **D5**
(aktuelle JANS-PV-Benchmarks je Typ A-E), **D6** (EVEN-Bedienung am KISPI-Fall dokumentieren),
**E6** (Brandschutz Solar → Skill `brandschutz`). Empfehlung: beim naechsten realen KISPI-Schritt
die EVEN-Maskenfuehrung mitschneiden und in den neuen Artikel zurueckspeisen (Compounding).
