# Trainingsprogramm — Lern-Loop der KB Planungsgrundlagen

Selbststudium-Loop, der den Harness `planungsgrundlagen` kompoundierend besser macht: aus den
vier **PL-Grundordnern** (SharePoint) werden laufend bessere Wiki-Artikel und ein staerkerer
Connector — damit zukuenftige planerische Fragen Top-Resultate liefern. Vorbild: der
`immobewertung-training`-Loop.

## Takt & Umfang (verbindlich)

- **Frequenz:** alle **2 Tage** (Scheduled Task `planungsgrundlagen-training`; sonst manuell
  via Skill `planungsgrundlagen` → "Training").
- **Umfang pro Lauf:** **1 Domaene im Schwerpunkt + 6–10 konkrete Fragen** (aus `curriculum.md`
  / `wiki/QUESTIONS.md`) vertieft beantworten und in die Wiki-Artikel einarbeiten.
- **Rotation der Domaenen** (damit alle vier wachsen):
  Lauf 1 Kartenportale · Lauf 2 Energie · Lauf 3 Recht/Norm · Lauf 4 Brandschutz · dann wieder.
  Kartenportale + Energie haben Prioritaet (die zwei echten Luecken).
- **Monatlicher Health-Check:** zusaetzlich Skill `wissenscheck` auf diese KB.

## Ablauf eines Laufs (immer gleich)

1. **Stand lesen:** `curriculum.md` (naechste Lektionen der Schwerpunkt-Domaene),
   `wiki/QUESTIONS.md` (offene A–E-Aufgaben), letzter `outputs/`-Report.
2. **Selbst Fragen stellen:** formuliere 6–10 praezise Planer-Fragen, die ein JANS-Projekt
   wirklich braucht (Beispiele in `curriculum.md`). Gute Frage = beantwortbar + belegbar +
   macht die naechste Studie schneller.
3. **Pro Frage vertiefen:**
   - **Quelle lesen:** den passenden PL-Ordner auf SharePoint (PDFs via Read `pages:`, DOCX via
     Textextraktion, Screenshots via Read-Bild), Web nur fuer Aktualisierungen/Endpunkte.
   - **In den Wiki-Artikel einarbeiten:** Fakten mit **Quelle (+Seite/URL)**, Endpunkte/Kennwerte
     belegt, Annahmen markiert, `[[backlinks]]` setzen.
   - **Status heben** wo belegt (`speculative`→`emerging`→`established`), `last_updated` setzen.
4. **Connector verbessern (wenn die Domaene Kartenportale dran ist):** neu kartierte Endpunkte/
   Kantone in `geo-zh.mjs` hinterlegen und mit einem realen Beispiel **testen** (nie ungetestet
   committen). Erfolgreiche Tests als Benchmark in den Wiki-Artikel.
5. **Register pflegen:** `raw/_INGESTED.md` (Quellen-Status), `curriculum.md` (Lektion ✓),
   `wiki/QUESTIONS.md` (Aufgabe ✓ / neue Luecke), `wiki/INDEX.md` (neue Artikel).
6. **Output schreiben:** kurzer Lern-Report `outputs/JJJJ-MM-TT_training-runN.md` (welche
   Domaene, welche Fragen, was gelernt/geaendert, was als naechstes).
7. **CHANGELOG** ergaenzen (neueste zuoberst).
8. **Sichern:** NAS-Repo committen + pushen (Rules `git-auto-push` / `sync-kanonische-quelle`).

## Leitplanken (Qualitaet)

- **Nie erfinden:** kein EGRID/Endpunkt/Kennwert ohne Beleg. Unsicheres bleibt `speculative`
  mit Verifikationsvermerk — lieber eine ehrliche Luecke als eine falsche Zahl/URL.
- **Endpunkte/Connector immer testen,** bevor sie als `established` gelten.
- **Datenstand zwingend:** rechtliche/energetische/kartenbezogene Werte mit Monat/Jahr bzw.
  Normversion; >18 Mt. ohne Pruefung → ⚠ + QUESTIONS-Eintrag.
- **Kein Doppel:** Recht/Brandschutz verlinken, nicht abschreiben.
- **Kompoundieren:** jeder Lauf baut auf den vorigen; Artikel wachsen, nicht duplizieren.
- **Reale JANS-Faelle einweben** (z.B. Giebelweg 12 → EGRID-Benchmark).

## Fortschritts-Tracker
Schwerpunkt-Rotation und Lektionsstand in `curriculum.md`; offene Aufgaben in
`wiki/QUESTIONS.md`; der jeweils letzte Lauf in `outputs/`.

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
