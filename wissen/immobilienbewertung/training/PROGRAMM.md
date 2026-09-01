# Trainingsprogramm — Lern-Loop der KB Immobilienbewertung

> **STATUS: EREIGNIS-TRIGGER statt Zeittakt (Entscheid Raphael 26.07.2026, Registry-Nachzug
> 27.07.).** Der Scheduled Task `immobewertung-training` steht auf `enabled=false`. Der
> naechste vorgesehene Lauf ist der One-Time-Task `immobewertung-marktpuls-260901`
> (Stichtag **01.09.2026**) oder ein realer Bewertungsauftrag. **Damit ist die KB KEIN
> gueltiges Ziel fuer die Nachtschicht-Prioritaet 4** (die «am laengsten nicht
> trainiert»-Auswahl) — ueberspringen und die naechste faellige KB nehmen. Der Abschnitt
> «Takt & Umfang» unten beschreibt den Umfang eines ausgeloesten Laufs, nicht einen
> laufenden Takt. (Statuskopf gesetzt vom `vollgas-chef-radar` 29.07.2026.)
>
> **ZUSAETZLICHER EREIGNIS-TRIGGER (gesetzt 31.07.2026, Wissens-Chef Run 22):** Einarbeitung der
> fuenf Ingest-Reports vom 31.07.2026 (`outputs/2026-07-31_ingest-cluster-A…E`) in die
> `wiki/`-Artikel. Die Ziel-Zuordnung je Befund liegt im Cluster-E-Report vor; die offenen Punkte
> aus B und C gehoeren nach `wiki/wissensluecken.md` (diese KB fuehrt keine QUESTIONS.md). Ohne
> diesen Anker laegen rund 370 KB destillierten Materials bis zum 01.09.2026 brach — die Reports
> sind geschrieben, aber im Wiki ist noch nichts davon angekommen.
>
> **✓ DER STICHTAG 01.09.2026 IST EINGELOEST (Lauf vom 01.09.2026).** Der Task
> `immobewertung-marktpuls-260901` hat an seinem Datum gefeuert und ist damit **verbraucht**.
> Beschafft und in die Artikel eingearbeitet: **BWO-Publikation 01.09.2026** (Referenzzinssatz
> **1.25 % unveraendert ab 02.09.2026**, Durchschnittszinssatz **1.31 % per Stichtag
> 30.06.2026** — der Abwaertstrend ist gestoppt, 6 Bp unter der Erhoehungsschwelle 1.37 %);
> **SREBI Q2-2026 am UBS-Primaerdokument verifiziert** (Status `established`, vier
> Perspektiv-Scores, Revisionsgrund, regionale Karte); **SNB-Tagesfeed als neue R10-Quelle**
> (0.469 % per 31.08.2026, loest den am 23.08. als eingefroren belegten Weg ab); **neuer
> Abschnitt Leerwohnungsziffer** (ZH 0.52 % per 01.06.2026, **Neubau 3.02 %** → neue
> Anwendungsregel in `residualwertmethode`). **Offen geblieben, weil am Stichtag nicht
> publiziert und bewusst nicht geschaetzt:** BFS-Leerwohnungsziffer **Schweiz** und **Kanton
> SZ** per 01.06.2026, LIK August 2026, SMG-Mietindex August 2026, SNB-Quartalsheft 3/2026.
> Voller Bericht: `outputs/2026-09-01_immobewertung-marktpuls.md`, Details im `CHANGELOG.md`.
>
> **NAECHSTER EREIGNIS-ZEITPUNKT: One-Time-Task `immobewertung-marktpuls-261201`, 01.12.2026,
> 09:00.** Drei faellige Groessen in einem Fenster: BWO-Publikation 01.12.2026 (Stichtag
> 30.09.2026 — Leitfrage sind die verbleibenden **6 Basispunkte** zur Erhoehungsschwelle),
> SNB-Lagebeurteilung 10.12.2026, **BFS-Baupreisindex Dez-2026** aus der Oktober-Erhebung (der
> einzige Termin des Jahres, an dem `realwert-sachwert.md` nachzufuehren ist). **Uhrzeit 09:00
> statt 07:00, gemessen:** die BWO publizierte am 01.09.2026 zwischen **07:52 und 08:00** — ein
> Lauf um 07:00, der nur einmal schaut, verfehlt den Termin. **Zuerst zu holen**, weil dann
> laengst publiziert: die oben offen gebliebenen Werte. **Nicht erneut zu holen:** BWO-Wert per
> 30.06.2026, SREBI Q2-2026, IMPI Q2-2026, LIK 07.2026.
>
> **⚠ DER GROESSERE RUECKSTAND BLEIBT DER ZWEITE TRIGGER**, nicht der Marktpuls: die
> Einarbeitung der fuenf Ingest-Reports vom 31.07.2026 (rund 370 KB) in die `wiki/`-Artikel ist
> seit dem 31.07. offen und wurde von **zwei** Marktpuls-Laeufen in Folge korrekt nicht
> mitgenommen — ein Ingest dieser Groesse ist kein Anhang an einen Marktpuls. Er braucht einen
> eigenen Lauf; der Entscheid darueber liegt bei Raphael.

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
