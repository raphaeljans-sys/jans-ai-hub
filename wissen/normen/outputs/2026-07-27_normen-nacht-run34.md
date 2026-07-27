# Normen-Training Run 34 (MacBook Pro, 27.07.2026) — SIA/VKF

**Kurzfassung:** Kein neues Grunddestillat (PL-02 weiterhin 0 offene `[ ]`). Dieser Lauf hat die
von Run 33 empfohlene fuenfte unabhaengige Verifikationsrunde fuer die drei verbleibenden
speculativen Lignum-/SIA-Destillate gefahren. **Besonderheit dieses Laufs:** Die eigentliche
Verifikationsarbeit (drei Refuter-Agenten, Destillat-Korrekturen, INDEX-Zeilen fuer zwei der drei
Destillate) war bereits durch eine vorangegangene, nicht zu Ende gefuehrte Instanz desselben
Scheduled Tasks erledigt (Dateistand 27.07.2026 18:30-19:22 Uhr), aber weder im CHANGELOG/Inventar
registriert noch als Report geschrieben noch committet. Diese Instanz hat den Sachstand rekonstruiert
(Datei-Zeitstempel, `grep -rl "Run 34"`, Kollisions-Check via `ps` — keine aktive Zweitinstanz mehr
gefunden), die fehlende Registrierung nachgeholt und eine Luecke geschlossen (INDEX-Zeile und
Frontmatter von `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` waren nur teilweise
nachgefuehrt).

**Ergebnis in einem Satz:** Kein Destillat erreicht in dieser Runde einen sauberen Nulldurchgang;
alle drei bleiben `speculative` mit kleinen, nicht-substanziellen Restbefunden.

---

## 1. Voraussetzungen

- NAS gemountet (`/Volumes/daten` erreichbar).
- Kein Zugriffs-Test auf ein neues Original-PDF noetig, da dieser Lauf primaer die bereits
  abgeschlossene Verifikationsarbeit einer Vorlaeufer-Instanz registriert (siehe Kurzfassung).
- **Kollisionsschutz (Rule 260724) angewendet:** `ps aux` zeigte keine zweite aktive Instanz von
  `normen-training-nacht`; die einzige laufende Instanz mit passendem Prompt ist diese Session
  selbst (PID 95196, gestartet 19:53 Uhr). Die Destillat-Edits stammen mit Zeitstempeln
  18:30-19:22 Uhr nachweislich von einer bereits beendeten Vorlaeufer-Instanz — sicher zum
  Registrieren, kein Race.
- `git status` auf dem NAS-Repo ueber SMB wurde versucht und haengte >2 Minuten (bekanntes Muster,
  Rule 260726/`sync-kanonische-quelle.md`) — Befehl abgebrochen, seither ausschliesslich
  Datei-Edits (Write/Edit) verwendet; Commit erfolgt separat ueber `scripts/nas-commit-now.sh`.

## 2. Fuenfte Verifikationsrunde — 3 Destillate

| Destillat | Runde | Befunde | Schwerster Einzelbefund | Status |
|---|---|---|---|---|
| `lignum-lignatec-brandschutz.md` | 5. | **1** | Figur 1 zweimal mit Fundstelle «S. 3» statt korrekt «S. 2» zitiert — reine Fundstellen-Ungenauigkeit, kein inhaltlicher Fehler | speculative |
| `sia-d0165-2000-kennzahlen-immobilienmanagement.md` | 5. | **3** | Anhang 6: DIN-18960(1976)-Sechs-Punkte-Gliederung in falscher Reihenfolge wiedergegeben (Original-Nummerierung vs. visuelle Tabellenposition verwechselt) | speculative |
| `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` | 5. | **2** | Tab. 431-2: drei nicht belegte Alternativ-Querschnitte (120x140/80x120/80x100 mm) behauptet, die in keiner der zehn Tabellenvarianten vorkommen | speculative |

**Konvergenz-Befund:** `lignum-lignatec-brandschutz.md` haelt seit Run 32 stabil bei genau 1
Befund pro Runde (17→1→1→1→1) — die verbleibenden Einzelbefunde sind durchgehend
Fundstellen-Praezisierungen, kein inhaltlicher Fehler mehr seit Run 32. `sia-d0165...md` steigt
in dieser Runde von 1 auf 3 Befunde (Run 33: 1, Run 34: 3) — kein sauberer Trend, aber alle drei
Befunde sind vom Typ «verkuerzte/vertauschte Wiedergabe», nicht neu erfundener Inhalt.
`lignum-4-1...md` bleibt bei 2 Befunden (Run 33: 1) und zeigt mit dem Abb.-310-2-Fall eine
bemerkenswerte **Doppel-Regression**: Runde 3 hatte «Massivholzplatten» faelschlich aus einer
Sechser-Aufzaehlung entfernt, Runde 4 hatte diese fehlerhafte Entfernung faelschlich als korrekt
bestaetigt — zwei aufeinanderfolgende, voneinander unabhaengige Refuter-Runden lagen beide falsch,
bis eine dritte (Runde 5) den direkten Bildvergleich machte und den Fehler aufdeckte.

## 3. Nachgeführt

- `destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`: Frontmatter-Statuszeile
  war nach der Vorlaeufer-Instanz stehen geblieben bei «vierte Runde, Run 33» — auf den
  vollstaendigen Run-34-Befund nachgezogen.
- `destillate/INDEX.md`: Zeile fuer `lignum-4-1...md` ergaenzt (Run 34 fehlte); Zeilen fuer
  `sia-d0165...md` und `lignum-lignatec...md` waren bereits durch die Vorlaeufer-Instanz korrekt
  nachgefuehrt, keine Aenderung noetig.
- `training/norm-inventar.md`: neuer Run-34-Eintrag oben.
- `CHANGELOG.md`: neuer Kopfeintrag mit Hinweis auf die nachgeholte Registrierung.
- `wiki/QUESTIONS.md`: keine neuen offenen Fragen aus dieser Runde (alle drei Befunde sind
  Destillat-interne Korrekturen, keine externen Recherche-Auftraege).

## 4. Offen

1. **Sechste Runde** fuer alle drei Destillate ist der naheliegende naechste Batch — keines hat
   einen Nulldurchgang erreicht; `lignum-lignatec-brandschutz.md` ist mit vier Runden in Folge bei
   genau 1 (reinem Fundstellen-)Befund am naechsten dran.
2. **Zwei Strukturentscheide aus Run 31/32 weiterhin unveraendert bei Raphael:** (a) Reichweite des
   Normen-Inventars auf die ~680 bisher nie gescannten PL-02-Ordner ausweiten oder nicht?
   (b) Soll `established` systematisch einen sauberen Nulldurchgang verlangen? (Wird bereits so
   gelebt, aber nicht explizit als Regel im PROGRAMM.md festgehalten.)
3. **VKF-Merkblatt 2003-15** bleibt externe Beschaffung, unveraendert seit Run 32.
4. **Bring-Schulden unveraendert:** SIA 491, SN EN 12193, SN 640 052, SN 641 400 (KB `baurecht`).
5. **Prozess-Lehre fuer den Loop selbst:** Scheduled-Task-Instanzen, die vor der Registrierung
   enden (Budget/Zeit/Absturz), hinterlassen einen Zwischenstand, der nicht selbsterklaerend ist
   (Destillat-Edits ohne CHANGELOG/Report/Commit). Empfehlung fuer kuenftige Laeufe: vor dem
   Start immer per `grep -rl "Run <N>"` in der KB pruefen, ob die naechste erwartete Run-Nummer
   bereits teilweise bearbeitet wurde, bevor neue Arbeit begonnen wird.

**Keine «SIA/VKF KOMPLETT»-Meldung.** Die Grunddestillation bleibt vollstaendig; dieser Lauf hat
die fuenfte Verifikationsrunde sauber registriert, aber keines der drei Destillate hat den fuer
`established` noetigen Nulldurchgang erreicht.
