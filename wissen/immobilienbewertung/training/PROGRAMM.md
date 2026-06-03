# Trainingsprogramm — Lern-Loop der KB Immobilienbewertung

Selbststudium-Loop, der die KB kompoundierend verbessert: aus dem Rohmaterial (`raw/` +
die IMMO-SharePoint-Ordner) werden laufend bessere Wiki-Artikel — damit zukuenftige
Bewertungsanfragen Top-Resultate liefern.

## Takt & Umfang (verbindlich)

- **Frequenz:** alle **2 Tage** (Scheduled Task `immobewertung-training`, sonst manuell via
  Skill `immobilienbewertung` → "Training").
- **Umfang pro Lauf:** **10 Themen/Lektionen** vertieft recherchieren und in die Wiki-Artikel
  einarbeiten.
- **Schwerpunkt:** die **Wuest-Partner-Unterlagen zur Immobilienentwicklung** — der
  236-seitige Fachkurs "Immobilien entwickeln" (`curriculum.md`). Dieser wird systematisch
  durchgearbeitet, bis vollstaendig eingearbeitet; danach DXMA-Erfolgsfaktoren, Pre-Check-/
  Residualwert-Tools, Schaetzungsanleitung, dann Auffrischung/Aktualisierung.
- **Monatlicher Health-Check:** zusaetzlich Skill `wissenscheck` auf diese KB (Audit).

## Ablauf eines Laufs (immer gleich)

1. **Stand lesen:** `raw/_INGESTED.md` (was offen), `curriculum.md` (naechste Lektionen),
   `wiki/wissensluecken.md` (offene T-Aufgaben).
2. **10 Themen waehlen** — Prioritaet: (a) offene Curriculum-Lektionen des Wuest-Kurses,
   (b) offene T-Aufgaben aus `wissensluecken.md`, (c) Aktualisierungen (veraltete Daten).
3. **Pro Thema vertiefen:**
   - Quelle lesen (PDF-Seiten via Read `pages:`, DOCX via unzip-Textextraktion, Web bei
     Aktualisierungen). Bei Wuest-Kurs: jeweils den naechsten Folien-Block (~10-20 Seiten).
   - Kerngehalt in den passenden Wiki-Artikel einarbeiten: Fakten mit **Quelle+Seite**,
     Formeln/Kennwerte belegt, Annahmen als Annahme markiert, `[[backlinks]]` setzen.
   - Status heben wo belegt (`speculative`→`emerging`→`established`), `last_updated` setzen.
4. **Register pflegen:** `raw/_INGESTED.md` (Status der Quelle), `curriculum.md` (Lektion ✓),
   `wiki/wissensluecken.md` (T-Aufgabe ✓ / neue Luecke), `wiki/INDEX.md` bei neuen Artikeln.
5. **Output schreiben:** kurzer Lern-Report nach `outputs/JJJJ-MM-TT_training-runN.md`
   (welche 10 Themen, was gelernt, was geaendert, was als naechstes).
6. **CHANGELOG** der KB ergaenzen (neueste zuoberst).
7. **Sichern:** NAS-Repo committen + pushen (Rule `git-auto-push`/`sync-kanonische-quelle`).

## Leitplanken (Qualitaet)

- **Nie erfinden:** kein Kennwert/Satz ohne Beleg. Unsicheres bleibt `speculative` mit
  Verifikationsvermerk — lieber eine ehrliche Luecke als eine falsche Zahl.
- **Datenstand zwingend:** jeder Markt-/Kostenwert mit Monat/Jahr; >18 Mt. → ⚠ + Luecke.
- **Kompoundieren:** jeder Lauf baut auf den vorigen auf; Artikel wachsen, nicht duplizieren.
- **Reale Faelle einweben:** wo ein JANS-Projekt (IMMO-01) eine Methode belegt, als
  Referenz-Benchmark zitieren (anonymisierbar).

## Fortschritts-Tracker

Gesamtfortschritt des Wuest-Kurses und der T-Aufgaben siehe `curriculum.md` (Spalte Status)
und `wiki/wissensluecken.md` (Abschnitt B). Der jeweils letzte Lauf steht in `outputs/`.
