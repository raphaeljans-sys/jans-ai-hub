# Trainings-Lauf 12 — KB Planungsgrundlagen

- **Datum:** 2026-06-30
- **Schwerpunkt-Domaene:** **Brandschutz (PL-03)** per Rotation (Run 11 Recht/Norm → Run 12
  Brandschutz) — **+ Pivot auf Kartenportale (Prioritaet)**, weil Brandschutz inhaltlich erschoepft ist.
- **Connector-Schritt:** **ja** (geo-zh.mjs end-to-end getestet, Benchmark Giebelweg 12).

## Ausgangslage & Schwerpunkt-Entscheid
Brandschutz war nach Run 8 (C1/B2/B3/QSS belegt) bis auf **eine** Frage abgearbeitet: **C6/B5**
— BSV 2026 bei Publikation nachziehen, ein reiner externer Beobachtungs-Punkt. Eine ganze
Runde nur darauf waere duenn gewesen. Das Programm priorisiert ausdruecklich **Kartenportale +
Energie** («die zwei echten Luecken»), und Run 11 hatte als naechsten Kartenportale-Schritt
**M1 Grundlagen-Checkliste «neue Parzelle»** markiert. Darum **Doppel-Fokus**:
1. Brandschutz-Pflicht erfuellt — **BSV-2026-Stand verifiziert** (C6/B5 auf aktuellen Stand gehoben).
2. Hauptwert in der Prioritaets-Domaene — **M1-Standardoutput neu angelegt** (kompoundierender Nutzen).

## Bearbeitete Selbstfragen (8)
**Brandschutz / BSV 2026 (C6/B5):**
1. **Ist die definitive BSV-2026-Fassung inzwischen publiziert?** → Nein. Projekt verschoben von
   **2026 auf 2027**.
2. **Warum die Verzoegerung (offizieller Zeitplan)?** → **Konsolidierungsphase** (bsvonline.ch
   «Information BSV 2026»): Detailabstimmungen zwischen Vorschriftenteilen noch noetig. Neuer
   Plan: pol. Vernehmlassung **08–11/2026**, IOTH-Genehmigung **03/2027**, Inkraft **2027**.
3. **Gibt es einen politischen Eingriff?** → **Ja — «Marschhalt bei den Liberalisierungs-
   bestrebungen»** (VKG-Medienmitteilung **06.01.2026**), ausgeloest durch das **Brandunglueck
   Crans-Montana**. Der Entwurf soll «mit Fokus auf die realen Risiken von Grund auf neu
   aufgebaut» werden; **neuer Terminplan erst nach Auswertung der Brand-Untersuchung**.
4. **Konsequenz fuer JANS?** → Bis Inkrafttreten weiter **BSV 2015/17/22** (voraussichtlich ueber
   2027 hinaus); **keine antizipierten Erleichterungen der BSV 2026 in Projekte einplanen**, da
   der Marschhalt sie streichen/verschaerfen kann.

**Kartenportale / M1 (neue Parzelle):**
5. **Was holt JANS bei einer neuen Parzelle IMMER zuerst — und mit welchem Befehl?** → 8 Pflicht-
   Grundlagen definiert: 0 EGRID, 1 OEREB-PDF, 2 Zonenplan-Vektor (BMZ/AZ/Hoehen/ES), 3 Baulinien/
   Abstandslinien, 4 amtl. Vermessung DXF, 5 DTM/Orthofoto, 6 GWR-Gebaeudedaten, 7 Behoerden —
   je mit konkretem Connector-Befehl.
6. **Funktioniert die Bezugskette aktuell noch (Smoke-Test)?** → **Ja.** geo-zh.mjs an Giebelweg 12
   getestet: Adresse → **EGRID CH879777718909 · Parz. 3338 · BFS 136**; `--produkt zonenplan` →
   **W/1.5 (W1), BMZ 1.5, GH 4.5, FH 7, ES II, inKraft, keine Revision**. Login-frei, < 5 s.
7. **Wie laeuft die Kurz-Variante fuer Kt. Schwyz?** → Bezug ueber **Parzellennummer** (nicht Adresse
   — Nachbarparzellen-Falle) via geo-sz.mjs/Skill `oereb-schwyz`; SZ IVHB-aligned (§ 31i GFZ/§ 31g
   BMZ), Quellen-Trias Kanton/Bezirk/QGP.
8. **Welche Identifikatoren duerfen NIE erfunden werden?** → EGRID/Parzelle/Koordinate + EPROID
   (GWR — nur ueber das fuehrende Amt; gwr-bund.mjs gibt sie bewusst nicht aus). Rule
   `identifikatoren-verifizieren` ist im M1-Artikel als goldene Regel verankert.

## Geaendert / NEU
- **NEU** `wiki/kartenportale-grundlagen-checkliste-neue-parzelle.md` (**established**): M1-Standard-
  Output, 8 Pflicht-Grundlagen mit Connector-Befehlen, SZ-Kurzvariante, validierter End-to-End-
  Benchmark Giebelweg 12 (2026-06-30), Anschluss an `machbarkeit`/`behoerden-vorabklaerung`.
- `wiki/brandschutz-pl03-wegweiser.md` (last_updated **2026-06-30**): BSV-2026-Block §1 von
  Einzeiler zu **doppelt-gebremst-Darstellung** (Konsolidierungsphase + Marschhalt Crans-Montana
  06.01.2026, Konsequenz für JANS); Frontmatter-Quellen erweitert.
- `wiki/INDEX.md`: M1-Artikel eingetragen (Kartenportale), Brandschutz-Zeile auf neuen BSV-Stand.
- `wiki/QUESTIONS.md`: **C6/B5** auf `[~]` mit verifiziertem Stand-Update; **M1** im curriculum auf `[x]`.
- `training/curriculum.md`: B5 Stand-Update, **M1 erledigt**.
- `raw/_INGESTED.md`: 2 Run-12-Zeilen (BSV-2026-Web, M1-Connector-Synthese).

## Belegte Kernfakten (neu)
- **BSV 2026 verschiebt sich auf 2027** — zwei Bremsen: fachliche **Konsolidierungsphase** (offiz.)
  **und** politischer **Marschhalt bei den Liberalisierungen** nach **Crans-Montana** (VKG-MM
  06.01.2026). Bis Inkrafttreten **BSV 2015/17/22**; keine Erleichterungen vorab einplanen.
- **M1-Bezugskette validiert (2026-06-30):** geo-zh.mjs Adresse→EGRID + `--produkt zonenplan`
  login-frei funktionsfaehig (Giebelweg 12: W/1.5, BMZ 1.5).

## Kein-Doppel-Entscheid
M1 buendelt nur die bereits in den Einzelartikeln validierten Produkte zu einer Bezugsreihenfolge
(verlinkt, nicht abgeschrieben). Brandschutz-Fach-/Detailarbeit bleibt im Skill `brandschutz`;
hier nur der Vorschriftenstand. Recht/Norm-Wuerdigung → Skill `baurecht`.

## Datenstand-Warnungen
- **BSV 2026**: Terminplan **mit Vorbehalt** (Marschhalt) → naechster Check **08/2026** (Start pol.
  Vernehmlassung) bzw. bei Publikation des neuen Terminplans/Untersuchungsberichts.
- **SZ-Mass-Definitionen** weiter Stand SRSZ 1.2.2021 (> 18 Mt., QUESTIONS B4/R2) — vor Zitat pruefen.

## Naechster Lauf
Rotation → **Energie (PL-04)** (Prioritaet). Offen: **D5** PV-Benchmark Typ B/C/D (Dachziegel/
transparent/Fassade) als belegter CHF/kWp-Wert; **D6** EVEN-Bedienung am realen KISPI-Fall
dokumentieren (sobald Nachweis dort gefuehrt — vgl. Memory KISPI-EVEN); **D8** ZH-graue-Energie-
Grenzwert bei Publikation. Danach Kartenportale: **K5-Rest** senkrechtes Abstandsmass Linie↔Grenze
(Agent `baulinien-analyst` mit Parzellengeometrie aus M1-Schritt 4), **M2** Anbindung an die
Studien-Skills schaerfen. Brandschutz erst wieder bei BSV-2026-Publikation (Beobachtung).
