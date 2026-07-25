# Buchhaltungssystem JANS (Einzelfirma, AG-ready) — Spec

Datum: 02.07.2026 · Interview + 4 Schluesselentscheide via AskUserQuestion bestaetigt.

## Ziel (1 Satz)
Ein effizientes, praktikables Buchhaltungssystem mit **bexio als fuehrendem System**
(Quelle der Wahrheit), in dem Claude die Geschaeftsvorfaelle kontiert und **nach
Einzelfreigabe** via Connector bucht, die OneDrive-Ablage zum schlanken Jahres-Archiv
wird, und mit dem Jahresabschluss + Steuererklaerung 2025 als erster Anwendungsfall
erstellt werden (Treuhand als Verifier).

## Abgrenzung (NICHT dazu)
- Keine Lohnbuchhaltung/Payroll-Automatisierung (aktuell keine Angestellten-Loehne via bexio).
- Keine automatischen Zahlungen, keine Reconciliation/Dedup des UBS-Feeds (bleibt
  bexio-UI-/Treuhand-Aufgabe, harte Regel aus `zahlungsabgleich`).
- Keine rueckwirkende Neu-Verbuchung der Jahre 2020–2024 (abgeschlossen, bleiben wie sie sind).
- AG-Buchhaltung selbst (kommt als neuer Mandant nach Gruendung; hier nur AG-Readiness).

## Ist-Zustand (Scan 02.07.2026, OneDrive AD - 06 Unternehmung)
- **03 Buchhaltung:** Jahresordner `20xx Buchhaltung`; 2022–2024 sauber als
  Ordner-Kontenplan (01 Aktiven … 08 Steuern, 4-stellige Konten `4400 <Lieferant>`,
  `5477 SVA`, `65xx` …). Abschluss = `GA20xx_RJ_Kontenplan.xlsx/pdf` (unterschrieben).
- **Erosion:** 2025 gemischt (Semester-Ordner + Konten + `_alle Rechnungen` mehrfach),
  2026 nur noch flach `Rechnungen Debitoren` / `Rechnungen Kreditoren` mit `_bez`-Praefix.
  → Die manuelle Ordner-Kontierung ist im Alltag zu schwer; genau hier setzt das neue System an.
- **04 Steuern/01 Steuererklaerung:** je Periode `1 Steuerbelege` (Beilagen-Systematik
  CSS/UBS/SVA/JANS-GA + Beilageverzeichnis.docx) → `2 Steuererklaerung` (ZH online,
  Zugangscode-Ordner) → `3 Rechnungen/Veranlagung`. 2024 eingereicht 09/2025.
  **2025 offen, faellig ca. 09/2026.**
- bexio aktiv (Debitoren `re-000xx`, UBS-Bank-Feed, Kontenplan von Treuhand 2022 aufgesetzt),
  MWST Saldosatz semesterweise. Connector `connectors/bexio.mjs` bislang read + Mahnwesen.

## Schluesselentscheide (bestaetigt 02.07.2026)
1. **Leitsystem: bexio fuehrend.** Belege + Buchungen leben in bexio; OneDrive wird
   schlankes Jahres-Archiv (1 Eingangsordner + Abschluss-/Steuer-Exporte).
2. **Buchen nach Einzelfreigabe.** Claude kontiert (Bank-Feed + Belege) und zeigt je Lauf
   eine Buchungsliste; gebucht wird erst nach explizitem Ja (`--ja`-Muster wie beim
   Mahnwesen). Erweitert die Whitelist-Regel «Buchungen NIE» um genau diese kontrollierte
   Ausnahme — nie automatisch, nie ohne Liste.
3. **Jahr 2025: Claude erstellt, Treuhand prueft.** GA2025 nach Goldstandard GA2024 +
   Steuerbeilagen + Hilfsblatt A; eine Treuhand-Pruefstunde als Verifier vor Einreichung.
4. **Horizont: Einzelfirma jetzt, AG-ready.** Kontenplan/Prozesse so, dass die JANS AG
   sie ab Gruendung als neuer bexio-Mandant 1:1 uebernimmt.

## Bewertungskriterien (woran Erfolg gemessen wird)
- Jeder Geschaeftsvorfall ist in bexio gebucht und hat einen Beleg; monatlicher
  Kontierungslauf < 30 Min Aufwand fuer Raphael (nur Freigabe der Liste).
- Abgleich Bank↔bexio via `--abgleich` ohne ungeklaerte Differenzen (Verifier-Signal).
- GA2025 stimmt formal mit Goldstandard GA2024 ueberein (gleiche Konten, gleiche Struktur)
  und die Summen sind gegen bexio + UBS-Feed belegt, nie geschaetzt.
- Steuererklaerung 2025 mit vollstaendiger Beilagen-Systematik (Beilageverzeichnis wie
  250916_Beilageverzeichnis_2024.docx) vor der ZH-Frist eingereicht.
- MWST-Zusammenstellungen S1/S2 entstehen aus bexio-Daten per Knopfdruck (bestehende
  MWST-Ablage-Konvention `30 JANS AI HUB OUTPUT/mwst/YYYY/`).

## Plan (enge Scopes + Checkpoints)
- **Scope 1 — Connector-Ausbau `bexio.mjs`:** `--konten` (Kontenplan lesen),
  `--buchungen <Jahr>` (manual entries + Journal lesen), `--kontieren` (Vorschlagsliste
  aus Bank-Feed/Belegen), `--buchen <Liste> --ja` (Einzelfreigabe-Buchung).
  Checkpoint: Trockenlauf-Liste an Raphael, erste 3 Buchungen gemeinsam.
- **Scope 2 — Aufarbeitung 2025:** alle 2025-Vorfaelle aus UBS-Feed + Belegordnern
  kontieren, Luecken-/Fehlbelegliste, nach Freigabe buchen. Checkpoint: Saldenliste
  2025 vs. Kontoauszuege.
- **Scope 3 — GA2025 + Steuererklaerung 2025:** GA2025 (Excel+PDF nach GA2024-Muster),
  Beilagen 1–n, Hilfsblatt A, Beilageverzeichnis; Ablage nach Steuer-Ordnervorlage.
  Checkpoint: Treuhand-Review, dann Einreichung ZH online.
- **Scope 4 — Laufender Betrieb 2026:** neue Ablage-Konvention (1 Eingangsordner
  `20xx Buchhaltung/00 Inbox`, Claude benennt/kontiert/verschiebt), monatlicher
  Scheduled-Task-Lauf `buchhaltung-kontierung` (Liste an hub-chef-Briefing),
  Skill `buchhaltung` als Dach (nutzt zahlungsabgleich/mahnwesen/kostenkontrolle).
- **Scope 5 — AG-Uebergang (bei Gruendung):** neuer Mandant, Eroeffnungsbilanz,
  Sacheinlage-/Umwandlungsfragen mit Treuhand/Notar (verweist auf Spec AG-Gruendung).

## Verifikation (zweite Instanz + externes Signal)
- Externe Signale: bexio-API (`--abgleich` Bank↔Buchung), UBS-Feed, SVA-/CSS-/UBS-Bescheinigungen.
- Treuhand-Review vor Einreichung (Scope 3).
- Dokumente durch Skill `korrektur` + `twin`; Zahlen nie ohne Beleg (Rule identifikatoren-verifizieren).

## Faktenbasis
- Goldstandards: `GA2024_RJ_Kontenplan.pdf` (Abschluss), `250916_Beilageverzeichnis_2024.docx`
  + Steuerperiode-2024-Ordner (Steuererklaerung), Ordnervorlagen in `03 Buchhaltung/00_Allgemein`.
- Connector `connectors/bexio.mjs`; Skills `zahlungsabgleich`, `mahnwesen`, `kostenkontrolle`, `logbuch`.
- Kontenplan-Referenzen: SIA-Kontenplan, bexio chart-of-accounts (00_Allgemein/01_Buchfuerung/Kontenplan).
- Anweisungsdokument Raphael 26.09.25 (Saeule 3a ~20 % des steuerbaren Einkommens im Dezember
  auffuellen; monatlich CHF 300 an Steuerbehoerde) — in Scope 3/4 beruecksichtigen.
