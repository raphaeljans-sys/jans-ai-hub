# Training Run 60 — Recht/Norm + Brandschutz (Token-Vollgas)

Intensiv-Lauf gemäss `training/PROGRAMM.md` (Verifikations-Stufe/Intensivphase/Token-Vollgas bis
10.08.2026): **2 Domänen** im Schwerpunkt — Recht & Norm (PL-02) und Brandschutz (PL-03), gemäß
Domänen-Rotation (Kartenportale/Energie hatten Run 59 bereits, siehe dortige Empfehlung "nächster
Schwerpunkt turnusgemäß Recht/Norm/Brandschutz"). Direkt in der Hauptsession durchgeführt (nicht
per Fan-out an Subagenten), gemäß der dokumentierten Lehre aus Run 56 (Hintergrund-Subagenten
stallen auf OneDrive-Pfaden).

## Ablauf

1. Stand gelesen: `curriculum.md` (Domäne 3 Recht/Norm bis R60, Domäne 4 Brandschutz bis B45 —
   beide praktisch vollständig `[x]`, nur B5/BSV-2026 als laufender Refresh-Punkt `[~]`),
   `wiki/QUESTIONS.md` Sektionen B/C, letzter Report (Run 59).
2. **Backlog-Check zuerst:** der in §9 des AHB-Artikels seit Run 52 offen geführte OneDrive-Lock
   auf zwei Unterordner (`09-Projektdokumentation/`, `10-Projektablauf/10.6-Projektabschluss/`)
   erneut versucht — analog dem dokumentierten Sync-Timing-Muster (Naturgefahren-/Lignum-Fall,
   löst sich typischerweise im übernächsten Lauf). **Lock war aufgelöst**, alle vier Dateien
   vollständig lesbar (PDF via Read, DOC via `textutil -convert txt`, XLS via `soffice --convert-to
   csv`).
3. **Delta-Scan** beider PL-Ordner (`find -newermt 2026-07-15`) auf kürzlich hinzugefügte Dateien
   — keine neuen Funde (nur OneDrive-Sync-Marker-Dateien, kein Content).
4. Gezielter Zweitfund im Brandschutz-Ordner: `Brandschutznachweis_MFH-5g-RF1_V.2_-_ohne_Logo.docx`
   war seit langem nur als Existenz-Verweis in §2 geführt, nie inhaltlich ausgewertet — jetzt
   vollständig gelesen.
5. BSV-2026-Refresh (Turnus-Check, siehe Run 19/34/38/39/47/52/58): WebSearch + WebFetch gegen
   `bsvonline.ch/de/aktuell/information-bsv-2026` — Stand unverändert.

## Funde

### R61 — Projektdokumentation (PAB 2.16.R) + Abnahmeprotokoll SIA 118 (grösster Fund)

Vier Dateien vollständig ausgewertet, schliesst den letzten offenen Backlog-Punkt aus R59/§9:

- **PAB 2.16.R «Richtlinie für Projektdokumentationen»** (Stand 01.06.2008): verbindliche
  7-Kapitel-Gliederung für die Vorprojekt-/Bauprojekt-Dokumentation bei Stadt-ZH-Mandaten, inkl.
  Beispiel-Kennzahlen — darunter **CHF pro Kranken- oder Altersheimbett**, direkt JANS-
  Healthcare-relevant.
- **Muster-DOC:** keine leere Vorlage, sondern eine reale, vollständig ausformulierte Fallstudie
  (Instandsetzung Schulanlage Döltschi, Leutwyler Partner Architekten, Stand 01.10.2008,
  Gesamtanlagekosten 20.68 Mio. CHF) — inkl. eines methodisch bemerkenswerten Grundsatzes: bei
  unverhältnismässiger Eingriffstiefe kann im Bestand auf Minergie-Umbaustandard/kontrollierte
  Lüftung verzichtet werden.
- **Muster-KV.xls:** vollständige reale BKP-1-9-Kostengliederung als durchgerechnetes
  Zahlenbeispiel (3-/4-stellige Positionen mit Frankenbeträgen).
- **Abnahmeprotokoll-SIA.doc:** amtliches Stadt-ZH-Formular für die Werkabnahme nach Art. 157-161
  SIA 118 (Mängel-Kategorien, Fristen, Unterschriftenfelder) — direkt anschlussfähig an Skill
  `unternehmerkontrolle`.

→ NEU §18 [[recht-norm-ahb-stadt-zuerich-projektstandards]]. Der zehnteilige «Projektadmin AHB»-
Ordner ist damit **vollständig ausgewertet** — §9 verbleibt nur noch als Register des bewusst
niedrigprioritären Rest-Backlogs (23 Nachhaltiges-Bauen-Einzelmerkblätter + 4 GT-Kleinrichtlinien).

### B46/C38 — Brandschutznachweis-Muster MFH-5g-RF1, DOCX vollständig gelesen

Reales ausformuliertes MFH-Beispiel (Gebäude mittlerer Höhe 13.50 m, Massivbauweise) mit
konkreter Feuerwiderstands-Matrix (Tragwerk R60 UG/EG-OG, Attika k.A.; Brandabschnittsdecken
REI 60 durchgehend; Wände/horizontale Fluchtwege EI 60 UG / EI 30 EG-OG-Attika; Fluchtweg
vertikal REI 60-RF1 durchgehend) und einem Ausführungsdetail, das die bereits dokumentierte
WDVS-Brandriegel-Pflicht (BSR 14-15 Ziff. 3.2.2, §5ad) am realen Beispiel bestätigt (Mineralwolle
RF1, Schmelztemperatur ≥1'000 °C, Mindesthöhe 20 cm) → Ergänzung §2
[[brandschutz-pl03-wegweiser]].

### BSV-2026-Refresh — kein Delta

Terminplan erneut geprüft (politische Vernehmlassung 08-11/2026, IOTH-Genehmigung 03/2027,
Inkrafttreten 2027 ohne Quartalsangabe) — unverändert seit Run 58 (24.07.2026), kein neuer
Erkenntnisgewinn.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf nötig — R61 wird als `established` (amtliche
Primärquelle Stadt Zürich AHB, Formulare direkt aus dem Original) geführt, B46/C38 als Ergänzung
zum bereits `established` geführten §2. Kein Adversarial-Verify-Workflow nötig, da keine
widersprüchliche/unsichere Behauptung entstanden ist — beide Funde sind direkte Extraktionen aus
amtlichen/realen Primärdokumenten ohne Interpretationsspielraum.

## Token-Vollgas-Bilanz

Unter dem Zielkorridor 10-16 Fragen — ehrlich begründet: beide Domänen sind laut Curriculum
praktisch vollständig erschlossen (Recht/Norm bis R60, Brandschutz bis B45, nur B5/BSV-2026 als
laufender Refresh). Der Lauf konzentrierte sich bewusst auf den einzigen bekannten offenen
Backlog-Punkt (R61, OneDrive-Lock) statt künstlich neue Fragen zu erzeugen; der Delta-Scan beider
PL-Ordner ergab keine weiteren neuen Dateien. Ergebnis: 1 substanzieller Recht/Norm-Neufund (R61,
schliesst den letzten AHB-Backlog-Punkt vollständig ab) + 1 Brandschutz-Delta-Fund (B46/C38) +
1 Datenstand-Refresh (BSV-2026, kein Delta) + 1 bestätigter Nicht-Fund (Delta-Scan beider
Domänen).

## Nächster Schritt

Beide Domänen sind nun ohne bekannte offene Backlog-Punkte (ausser dem bewusst niedrigprioritären
AHB-Rest-Backlog und dem laufenden BSV-2026-Terminplan-Refresh). Nächster Recht/Norm-Turnus:
Rest-Backlog §9 (23 Nachhaltiges-Bauen-Einzelmerkblätter, 4 GT-Kleinrichtlinien) bei Bedarf
vertiefen, sonst auf reine Datenstand-Refreshs (R6/E5/E9/B5) und neue Delta-Scans zurückfallen.
