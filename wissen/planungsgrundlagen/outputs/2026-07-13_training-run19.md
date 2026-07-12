# Training Run 19 — KB Planungsgrundlagen · 2026-07-13

**Schwerpunkt-Domaenen (Token-Vollgas, 2 Domaenen):** Kartenportale (PL-01) + Brandschutz (PL-03).
Rotation Run 16 Kartenportale → Run 17 Energie → Run 18 Recht/Norm → Run 19 **Brandschutz**
(naechste laut Rotation) plus **Kartenportale** (Prioritaet, konkrete testbare Restluecke K5).
**Connector-Schritt: ja** (Kartenportale — proj-Baulinien-Erkennung implementiert und live getestet).

## Ausgangslage / erkannte Luecke

- **Kartenportale:** Run 16 hatte den senkrechten Abstand Linie↔Parzellengrenze geloest, aber
  offen gelassen: die **proj-Layer** der Abstandslinien (analog A6 bei der Grundnutzung) waren
  noch nicht an einem realen Revisionsfall validiert (K5-Rest).
- **Brandschutz:** Der einzige offene Punkt (C6/B5 BSV 2026) ist bis zur politischen Vernehmlassung
  (08/2026) blockiert. Statt Leerlauf: die PL-03-Projektordner (`_Projekte Themen/`) enthalten
  reale, bisher nicht erschlossene JANS-Faelle mit konkreten Planungsfragen (Brandschutzabstand,
  Tragwerks-Feuerwiderstand, Treppen) — diese Luecke wurde bearbeitet.

## Bearbeitete Fragen (Run 19)

**Kartenportale:**
1. Existieren proj-Layer fuer alle 5 Abstandslinien-Datensaetze (0150/0152/0153/0158/0185), und
   folgen sie demselben Namensschema wie bei der Grundnutzung? → **Nein** — per GetCapabilities
   verifiziert: 0150 (Waldgrenze) heisst abweichend `_prj_l` (nicht `_proj_l`), 0153 (Gewaesser)
   wechselt den Namensraum auf `giszhpub` statt `arv_basis`. Beide Fallen jetzt im Connector-
   Kommentar dokumentiert.
2. Liefern die proj-Layer echte, aktuell laufende Faelle? → Ja, kantonsweite Probe ergab je
   mindestens 1 Fund pro Layer: Kloten (Baulinie, Rechtsmittelverfahren), Wila/Boppelsen (Wald,
   Festsetzung), Winterthur (Waldgrenze, oeffentliche Auflage), Niederglatt (Gewaesser, Aufhebung),
   Bachs (Gewaesserraum, oeffentliche Auflage ohne Vorwirkung).
3. Funktioniert die Revisionserkennung end-to-end an einer realen Adresse? → Ja, Hardackerstrasse 2
   Kloten (EGRID CH670577750811) meldet `⚠ LAUFENDE REVISION: 4 baulinie` — Live-Test bestanden.

**Brandschutz:**
4. Welche Regel-/reduzierten Brandschutzabstaende gelten zwischen Gebaeuden, und wie hat JANS sie
   in einem realen Fall angewandt? → BSR 15-15de Ziff. 2.1-2.4 (5/7.5/10 m bzw. 4/5/6 m) + real
   angewandt im Fall Regensdorf (EFP-AG-Anfrage 16.02.2024).
5. Welcher Tragwerks-Feuerwiderstand gilt je Gebaeudehoehenkategorie und Nutzung — und was bedeutet
   das konkret fuer Healthcare? → Tabellen 1-3 (Ziff. 3.7.1) belegt; Beherbergung [a] (Krankenhaus/
   Pflegeheim) durchgaengig R 60 auch bei geringer Hoehe — strenger als Wohnen/Buero.
6. Wie hat JANS diese Tabelle real in einem Vorprojekt genutzt? → Benchmark Thalwil Bohlweg 3
   (Factsheet 05.03.2025): EFH-Befreiung (k.A.) vs. MFH-Sonderbauvorschrift (R 60) als
   Entscheidungsgrundlage VOR der Statik.
7. Brauchen interne Treppen (z. B. Duplex-Wohnung) einen Fluchtweg-Nachweis? → Nein, «keine
   Anforderungen» innerhalb der Nutzungseinheit (BSR 16-15, Z.3.2.2 A3); im Unterschied dazu die
   Mindestbreiten von Fluchtweg-Treppen (1.2/1.5/0.9 m) dokumentiert.
8. Hat sich am BSV-2026-Terminplan seit dem letzten Check (30.06.2026) etwas geaendert? →
   Web-Refresh: Stand unveraendert (politische Vernehmlassung startet 08/2026); neu erfasst:
   separates Pyroverbot in oeffentlich zugaenglichen Raeumen per 01.04.2026 (Sofortmassnahme).

## Was geaendert wurde

- **`geo-zh.mjs`:** `BAULINIE_PROJ_LAYER`-Konstante (5 proj-Layer, Namensschema-Ausnahmen
  kommentiert) + `fetchBaulinien` fragt sie im selben Fenster ab (`proj`-Objekt, `proj_treffer`,
  `revision_laeuft`); CLI-Ausgabe zeigt `⚠ LAUFENDE REVISION` mit Kategorien. Getestet: Regression
  Langnau/Seuzach unveraendert gruen, Live-Positivtest Kloten bestanden.
- **[[kartenportale-baulinien-abstandslinien-zh]]:** proj-Layer-Tabelle mit Namensschema-Ausnahmen,
  neuer Abschnitt «Laufende Revision erkennen» mit Live-Benchmark-Tabelle (Kloten + 4 weitere
  Kantons-Belegfaelle), Merksatz zu Mehrfachzustaenden (Aufhebung+Neu gleichzeitig), «Grenzen/offen»
  bereinigt (proj-Item als erledigt markiert, `dist_m` bei proj-Treffern als Rest-Offen notiert).
- **[[brandschutz-pl03-wegweiser]]:** NEU **§4b Brandschutzabstaende zwischen Gebaeuden** (Regel-
  und reduzierte Abstaende, Sonderfaelle, Benchmark Regensdorf) + **Tragwerk-/Brandabschnitts-
  Feuerwiderstand-Matrix** (Tab. 1-3, Healthcare-Kernbefund R60, Benchmark Thalwil Bohlweg 3) +
  **Treppen innerhalb Nutzungseinheit vs. Fluchtweg-Treppen**; BSV-2026-Datenstand-Refresh mit
  Pyroverbot-Ergaenzung; §5-Routing um die drei neuen Fragetypen ergaenzt; Frontmatter/Quellen
  erweitert (`last_updated` 2026-07-13, status weiterhin `established`).
- **Register:** curriculum (Domaene 1 K5 Anmerkung proj erledigt; Domaene 4 NEU B6/B7/B8 [x] +
  B5-Refresh), QUESTIONS (Domaene A K5 proj-Ergaenzung; Domaene C NEU C7/C8/C9 [x]), INDEX (beide
  Artikel-Zeilen aktualisiert), raw/_INGESTED (6 neue Zeilen), CHANGELOG.

## Verifikation

- **Kartenportale:** Connector-Aenderung live gegen den echten ZH-OGD-WFS getestet (kein Mock);
  Regression an 2 Bestands-Benchmarks (Langnau, Seuzach) unveraendert; Live-Positivtest an neuem
  Benchmark (Kloten, per GWR-reverse-lookup echt verifizierte Adresse) — bestanden.
- **Brandschutz:** Alle Kernzahlen (Abstaende, Tabellen 1-3, Treppenbreiten) direkt aus der
  Original-VKF-Richtlinie (BSR 15-15de, BSR 16-15 via Wohnbauten-Arbeitshilfe) mit Ziffer-Beleg
  entnommen, nicht aus Sekundaerquellen. Beide realen JANS-Benchmarks sind eigene Buero-Dokumente
  (Factsheet/Mail-Notiz), keine Annahme.
- BSV-2026-Web-Refresh gegen zwei unabhaengige Abfragen (WebFetch bsvonline.ch/de/aktuell +
  WebSearch) konsistent — kein Widerspruch, Stand bestaetigt.

## Naechster Lauf (Run 20)

Rotation → **Kartenportale** (Prioritaet) oder **Energie**. Kandidaten: `dist_m` bei proj-Baulinien-
Treffern auch im Log ausgeben (kleiner Rest aus §4b/Kartenportale); K6/A5 ObjektwesenZH-Stand
formal abschliessen; Energie D5-Rest (installierter System-CHF/kWp Typ B/C/D aus echter JANS-
Schlussabrechnung) oder D6-Rest (realer KISPI-EVEN-Walkthrough). Brandschutz-Rest: C6/B5 BSV 2026
bleibt blockiert bis 08/2026 (politische Vernehmlassung) — nicht vor Ablauf erneut pruefen, ausser
neue Meldung auf bsvonline.ch.
