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

## Verifikations-Stufe (PFLICHT ab 12.07.2026, Rule auto-verbesserungen 260712)

Jede Status-Hebung auf `established` durchlaeuft VOR der Hebung eine unabhaengige
Widerlegungs-Pruefung (Verifier-Prinzip der Spec-Methode, automatisiert):

- **Adversarial Verify:** 2–3 unabhaengige Pruef-Agenten (oder ein Volltextabgleich an der
  amtlichen/Original-Quelle, Modell D) versuchen die Aussage zu WIDERLEGEN — jede Fundstelle,
  Ziffer, Kennwert wird an der Quelle gegengeprueft. Nur was die Pruefung besteht, wird
  `established`; Beanstandungen werden korrigiert oder auf `speculative` gesenkt.
- **Workflow-Orchestrierung autorisiert:** Multi-Agent-Workflows (paralleles Destillieren +
  Verifikations-Pipeline) sind fuer diesen Loop von Raphael freigegeben (12.07.2026).
  Mechanische Extraktion darf auf guenstigeren Modellen laufen; die Verifikations-/Richter-
  Stufe laeuft auf dem Hauptmodell.
- **Protokoll:** Verdikte (bestanden/beanstandet je Artikel/Destillat) gehoeren in den
  Lauf-Report unter `outputs/` und ins CHANGELOG.

## Intensivphase (ab 12.07.2026, bis auf Widerruf)

Der Loop laeuft intensiviert (auch tagsueber und am Wochenende, Rule 260712), bis ein markant
besserer Wissensstand erreicht ist (Inventar/Rueckstaende abgearbeitet, keine auto-schliessbaren
Luecken). Dann Ruecktaktung ins Nachtfenster VORSCHLAGEN (nicht stillschweigend umsetzen).

### Token-Vollgas bis 10.08.2026 (Rule 260712b)

Bis und mit 10.08.2026 gilt maximaler Durchsatz (20x-Abo): Batch-Volumen pro Lauf
VERDOPPELN gegenueber den oben genannten Richtwerten (z.B. Normen 15-25 Positionen,
Energie 6-10 PDFs, Planungsgrundlagen 2 Domaenen + 10-16 Fragen, Baurecht 4-6
Verifikations-Komplexe), Workflow-Parallelisierung als Standard. Ab 11.08.2026
(5x-Abo) gelten wieder die urspruenglichen Richtwerte und der Sparbetrieb; die
Ruecktaktung erledigt der One-Time-Task `token-drosselung-100810`.
