# Trainingsprogramm — NACHT-Loop der KB Normen (`normen-training-nacht`)

Ziel: die komplette Normen-Bibliothek (SharePoint `PL - 02_Recht_Norm/02_Normen/`,
Inventar 528 Dateien) in belegte, schnell verfügbare Destillate überführen —
**jede Nacht ab 22:00, bis das Inventar abgearbeitet ist** (Entscheid Raphael 11.07.2026).

## Takt & Umfang (verbindlich)

- **Frequenz:** täglich 22:00 (Scheduled Task `normen-training-nacht`). Der Lauf arbeitet
  so viele Normen wie in einer Session sauber möglich (Richtwert **8–12 Destillate**),
  Qualität vor Menge; spätestens um 08:00 ist Schluss.
- **Endbedingung:** Sind alle P1–P3-Positionen im `norm-inventar.md` destilliert oder
  begründet übersprungen, meldet der Lauf «INVENTAR KOMPLETT» im Output und bittet
  Raphael, den Scheduled Task zu beenden (Loop läuft nicht ewig weiter).
- **Reihenfolge:** P1 zuerst (Skill-Kernnormen), dann P2 (übrige SIA de), dann P3
  (DIN/VSS/RAL). Sprachvarianten (e/f/i) und `xalt` werden NICHT destilliert.

## Lauf 1 — Sonderprogramm (Pflicht, vor allen Destillaten)

1. `ersetzte_normen.pdf` + `Gesamtverzeichnis SIA.pdf` destillieren →
   `wiki/REGISTER.md` aufbauen: je Norm-Nr. die gültige Ausgabe, ersetzte Ausgaben,
   Datenstand des Verzeichnisses.
2. Inventar-Abgleich: bei Normen mit mehreren Ausgaben im Bestand (z.B. SIA 102
   2001/2003/2014/2020) die alten als «— ersetzt durch <Jahr>» markieren.

## Ablauf jedes Laufs (immer gleich)

1. **Stand lesen:** `training/norm-inventar.md` (offene Positionen, P1 zuerst),
   `wiki/QUESTIONS.md`, letzter `outputs/`-Report.
2. **Zugriffs-Check:** 1 Test-PDF via Read öffnen. Scheitert der Zugriff auf
   `~/Library/CloudStorage/OneDrive…` (TCC-Blockade launchd, bekanntes Muster),
   Fallback: Download via M365-Connector (SharePoint-Pfad identisch); scheitert auch
   das, Lauf mit Fehlermeldung im Output abbrechen — NICHT raten.
3. **Destillieren:** je Norm Read mit `pages:` (max 20 S./Request; grosse Normen über
   mehrere Nächte, Fortschritt im Frontmatter `gelesen:` festhalten).
   Destillat nach Muster `destillate/INDEX.md`; nichts erfinden, Fundstellen (Ziffer)
   notieren; DRM-geschützte DIN-PDFs als «DRM, manuell» markieren und überspringen.
4. **Register nachführen:** `norm-inventar.md` (Status `[x] JJMMTT`), `destillate/INDEX.md`,
   `wiki/REGISTER.md` (Gültigkeit), `wiki/QUESTIONS.md`.
5. **Output:** `outputs/JJJJ-MM-TT_normen-nacht-runN.md` — was destilliert, was offen,
   Plan für die nächste Nacht.
6. **CHANGELOG** ergänzen (neueste zuoberst), NAS-Repo committen + pushen.

## Methodik-Pflichten (neu ab Run 22, 25.07.2026 — aus belegten Fehlbefunden)

Die Runs 15-21 haben SIA/VKF sieben Mal als «komplett» gemeldet; Run 22 hat gezeigt, dass die
Vollständigkeits-Metrik zu schmal war und reale Arbeit unsichtbar blieb. Vier Pflichten folgen daraus:

1. **Zwei Ablagen scannen, nicht eine.** Der Normen-Bestand liegt in `PL - 02_Recht_Norm/02_Normen/`
   **und** in `PL - 03 Brandschutz/`; die geltenden VKF-Fassungen 2017/2022 liegen in PL-03. Weil das
   Inventar lange nur PL-02 scannte, standen zwei Destillate unbemerkt auf der überholten Fassung
   01.01.2015. **Entscheid Raphael 26.07.2026: PL-03 ist als gleichrangige Quelle ins Inventar
   aufgenommen** (Abschnitt «PL-03 Brandschutz» in `norm-inventar.md`, mit Fassungs-Spalte). Jeder
   Lauf pflegt beide Ablagen; jede VKF-Fundstelle wird vor Verwendung gegen die jüngste im Haus
   liegende Fassung geprüft.
2. **«Sprachvariante» ist eine Behauptung, keine Feststellung.** Vor dem Überspringen einer Datei als
   f/i/e-Variante ist die Sprache am Dateiinhalt bzw. an den Titel-Metadaten zu prüfen. Belegte Fälle:
   `alle/i/266_1_d.pdf` ist deutsch (SIA 266/1), `alle/f/410_d_f_i.pdf` ist dreisprachig und enthält
   den deutschen Volltext (SIA 410). Beide galten jahrelang als erledigt, weil sie im «falschen» Ordner lagen.
3. **Fassungsstand vor Werteabgleich.** Erster Schritt jeder Verifikation ist die Suche nach einer
   **jüngeren Fassung derselben Norm** im Bestand (Dateiname, Titelblatt-Stempel, Änderungsliste meist
   S. 2). Eine Refuter-Prüfung gegen dieselbe Datei, aus der destilliert wurde, kann eine jüngere Fassung
   grundsätzlich nicht finden. Ausgabejahr und Fassungsdatum sind strikt getrennt zu führen und zu zitieren.
4. **Bildvergleich-Pflicht bei Normen mit Prinzipskizzen.** `pdftotext` allein ist dort strukturell blind:
   Masse, Legenden und Begriffe liegen teils als Rastertext INNERHALB der Zeichnungen. Eine Aussage «alle
   übrigen Werte identisch» ist ohne Bildvergleich unbelegt. Vorgehen: `pdfimages -list` über beide
   Fassungen, Paarvergleich nach Seite/Dimension/Bytegrösse, bei Abweichung Extraktion und Sichtkontrolle.
   So wurde in Run 22 eine übersehene Änderung auf S. 16 der BRL 16-15 gefunden.

5. **Eindeutige Render-Präfixe — und Agenten-Befunde über defekte Dateien selbst gegenprüfen.**
   Beim Rendern mit `pdftoppm` IMMER ein normspezifisches Präfix verwenden (`/tmp/sia144-r1-`,
   nicht `tb-`). Mehrere Agenten teilen sich dasselbe Scratchpad; generische Namen führen dazu,
   dass ein Agent das Alt-Rendering einer **fremden Norm** liest und für seine eigene hält.
   Belegt in Run 36 (28.07.2026): ein Agent meldete als «SCHWERWIEGEND», die Datei `144_2013.pdf`
   beginne mit zwei Seiten der Norm SIA 384.201 (Heizlast). Die Gegenprüfung des Hauptprozesses
   am Original (eigenes Rendering + OCR) widerlegte das vollständig — S. 1 ist «Ordnung SIA 144
   2013», S. 3 das Innentitelblatt SN 507 144, auf S. 1-4 kein einziger Treffer auf
   12831/384.201/Heizlast. Ein zweiter Agent (SIA 312) geriet in denselben Fehler, bemerkte ihn
   aber selbst. **Daraus die zweite, wichtigere Pflicht:** Meldet ein Agent eine Quelldatei als
   defekt, fremdbestückt oder unvollständig, wird dieser Befund NIE ohne eigene Gegenprüfung am
   Original übernommen — solche Befunde sind besonders folgenreich (sie führen zu Datei-Eingriffen)
   und zugleich der wahrscheinlichste Ort für ein Werkzeug-Artefakt.

**Konsequenz für die Endbedingung.** «0 offene `[ ]`» plus «keine neuen Dateien» ist KEIN Nachweis, dass
nichts zu tun ist — es misst nur Datei-Existenz. Vor jeder «KOMPLETT»-Meldung ist zusätzlich `wiki/QUESTIONS.md`
durchzuarbeiten: dort liegt der eigentliche Rückstand (Run 22 hat daraus 11 Punkte geschlossen). Ein
Frischecheck auf Datei-Anzahl/Änderungsdatum ersetzt das nicht.

**Run-Nummer erst nach Sicht der jüngsten `outputs/`-Datei belegen** — am 25.07.2026 haben zwei Läufe
unabhängig die Nummer 21 vergeben.

## Entscheid Raphael 28.07.2026 — Lignum-Routinerunden entfallen

Die beiden Destillate `lignum-lignatec-brandschutz.md` und
`lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` haben sechs Verifikationsrunden
durchlaufen (Konvergenz 17→1→1→1→1→1 bzw. 26→5→1→2→2). Seit Run 32 sind in den Kern-Tabellen
keine neuen Kernwert-Fehler mehr aufgetreten; die verbleibenden Befunde sind Rand- und
Nuance-Fragen. **Entscheid: beide werden als «speculative, stabil» akzeptiert.** Keine
Routine-Runden mehr — eine Neuprüfung erfolgt erst, wenn sich die Quelle ändert. Der Status
bleibt bewusst `speculative` (nicht `established`), die dokumentierten Restbefunde bleiben im
Destillat sichtbar. Das spart je Lauf zwei teure Bild-Agenten bei absehbar geringem Ertrag.

Die in Run 34/35 wiederholt vorgelegte Taktungsfrage ist damit beantwortet und geschlossen.

## Leitplanken (Qualität)

- **Nie Ziffern/Kennwerte erfinden** — nur was im PDF steht; Unsicheres `speculative`.
- **Ausgabe + Datenstand zwingend** in jedem Destillat.
- **Urheberrecht:** Destillate = eigene Kurzfassung mit Fundstellen, keine
  Tabellen-/Textkopien im Wortlaut; alles bleibt intern auf dem NAS.
- **Kompoundieren:** bestehende Destillate wachsen (Frontmatter `gelesen:`), keine Duplikate.
- **Echte Umlaute ä/ö/ü, Schweizer Hochdeutsch.**

## Fortschritts-Tracker

Arbeitsliste: `training/norm-inventar.md` · Destillat-Stand: `destillate/INDEX.md` ·
Gültigkeit: `wiki/REGISTER.md` · letzter Lauf: `outputs/` · Änderungen: `CHANGELOG.md`.

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

## Stations-Split (verbindlich ab 12.07.2026)

Beide Stationen arbeiten auf dieselbe NAS-KB — darum feste Zuteilung, keine Kollisionen:

| Station | Norm-Familien |
|---|---|
| MacBook Pro (Task `normen-training-nacht`, 3x taeglich) | **SIA + VKF** |
| Mac Mini (Task `normen-training-mini`) | **DIN + VSS + RAL** |

Jede Station destilliert und hakt NUR ihre Familien im `norm-inventar.md` ab. Vor dem
Commit `git pull` (Rule sync-kanonische-quelle), damit die Inventar-Staende beider
Stationen zusammenlaufen.

### Token-Vollgas bis 10.08.2026 (Rule 260712b, eskaliert 260712c: DAUERBETRIEB)

Bis und mit 10.08.2026 gilt maximaler Durchsatz (20x-Abo), seit 12.07.2026 abends
zusaetzlich **Dauerbetrieb** (Entscheid Raphael: «ununterbrochen laufen lassen,
maximale Rechenleistung»):

- **Batch-Volumen: 30-40 Positionen pro Lauf** (statt 15-25). Ein Lauf bricht nicht
  aus Budgetgruenden vorzeitig ab; er endet erst, wenn der Batch sauber destilliert,
  verifiziert, registriert und committet ist.
- **Taktung: alle 2 Stunden, rund um die Uhr, beide Stationen** (MacBook Pro
  `normen-training-nacht` SIA/VKF, Mac Mini `normen-training-mini` DIN/VSS/RAL;
  gemaess Rule 260712c VOLLGAS-ENDLOS). Zusaetzliche Sofort-Laeufe auf Zuruf sind
  ausdruecklich erwuenscht; Limit-Pausen sind akzeptiert und kein Fehler.
- **Gross-Normen vorziehen:** die zurueckgestellten scanlastigen Brocken
  (DIN 18040-1/2, DIN 4102-1/2, DIN 1946-6, VSS 640-Familie) werden NICHT weiter
  geschoben, sondern via Workflow segmentiert (1 Agent je ca. 20 Seiten) abgearbeitet.
- **Nach Inventar-Abschluss einer Familie** wechselt der Lauf nicht in den Leerlauf,
  sondern auf die Vertiefungsstufen: (a) Tiefendestillate der P1-Kernnormen
  (Artikel-fuer-Artikel, z.B. SIA 118, SIA 102, SIA 416, VKF), (b) Retro-Verifikation
  bestehender Destillate mit 3 unabhaengigen Widerlegungs-Agenten, (c) Q&A-Selbst-
  befragung (15-20 Pruefungsfragen je Norm, unabhaengig beantwortet am Original),
  (d) Querschnitts-Synthesen fuer die Fach-Skills (werkvertrag/honorar/brandschutz/
  flaechen-nachweis). Erst wenn auch diese Stufen abgearbeitet sind: «INVENTAR
  KOMPLETT» melden.

Ab 11.08.2026 (5x-Abo) gelten wieder die urspruenglichen Richtwerte und der
Sparbetrieb; die Ruecktaktung erledigt der One-Time-Task `token-drosselung-100810`.
Weiterhin unveraendert: Qualitaets-Leitplanken (nichts erfinden, Verifikations-
Pflicht vor `established`, Stations-Split, git pull vor Commit).
