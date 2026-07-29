# Methoden-Lern-Loop («methoden-radar»)

Stand 29.07.2026 · Kanonisch auf dem NAS · Umsetzung erfolgt

## 1. Anlass

Raphael sammelt Methoden-Material (abfotografierte Lectures, YouTube-Destillate,
Prompt-Ideen) im OneDrive-Ordner
`AD - 01 Geschaeftsfuerung/JANS AI/03 Prompteingaben/`. Auftrag vom 29.07.2026:
vertiefte Analyse aller Inhalte und ein Lern-Loop, der sicherstellt, dass diese
Methoden permanent am Hub ueberprueft, trainiert und implementiert werden.

## 2. Befund der Vollanalyse (29.07.2026, alle 9 Unterordner)

| Ordner | Befund |
|---|---|
| 3 EASY STEPS - the Spec | bereits voll implementiert (Rule spec-methode, Skill spec, KB wissen/spec, spec-training) |
| 260729 Antrophic Lecture | bereits voll implementiert (Rule 260729, KB wissen/claude-code, Kontext-Diaet 2.0) |
| Methode SPW | Video-Blaupause des Wissens-Layers — Prinzipien 1:1 im Hub (wissens-bibliothekar, wissenscheck mit den 7 Audits), aber Quelle war NIRGENDS registriert → Destillat + Registrierung nachgeholt |
| 260725 Archetypen | bereits implementiert (Rollen-Taxonomie 260729) |
| Agenten | teilweise gelebt; 2 offene Kandidaten (Drei-Marken-Strategie → synergie-orchestrator; Baueingabe-Check + QA-Trace-Matrix als Skill-Ideen) |
| Prompts / CAD Verarbeitung / Fabel 5 / Anthropic | ohne Methodengehalt bzw. reine Belege — registriert, keine Aktion |

Die strukturelle Luecke war also nicht fehlende Implementation, sondern fehlende
**Buchhaltung**: niemand hielt fest, welche Quelle wozu wurde, und niemand bemerkte
neues Material systematisch (SPW und Agenten lagen monatelang unregistriert).

## 3. Architektur des Loops

Drei Bausteine, alle kanonisch auf dem NAS:

1. **Register** — `wissen/claude-code/wiki/methoden-register.md`: je Quelle die Kette
   Quelle → Destillat → Implementation → Training → letzte Verifikation. Die eine
   Wahrheit ueber den Methoden-Stand.
2. **Vorfilter-Script** — `scripts/methoden-scan.sh`: deterministischer Delta-Scan
   (Dateizahl, juengste mtime, Bytes je Unterordner) gegen
   `logbuch/methoden-radar/scan-state.tsv`. Exit 0 = kein Delta, 10 = Delta,
   2/3 = Mount fehlt. Kontext-Diaet-Prinzip: erst grep-artig messen, nur bei Delta
   wirklich lesen. Beide Pfade am 29.07. nachgemessen.
3. **Scheduled Task `methoden-radar`** — woechentlich Mo 21:00 (MacBook, ausserhalb
   der Arbeitszeit, 2 h Abstand zu wissens-chef 23:10):
   - Bei Delta: neues Material destillieren (KB claude-code oder fachlich passende KB),
     Register + _INGESTED + INDEX/QUESTIONS/CHANGELOG nachfuehren, Scan-Stand einfrieren.
     Fehlt eine Implementation: Status «destilliert, Implementation offen» + Vorschlag
     an hub-chef-Briefing — keine eigenmaechtigen Rules/Skills.
   - Ohne Delta: Verifikations-Rotation — genau EINE Register-Zeile pruefen
     (Implementation existiert? Training aktiv? Liefer-Beleg seit letzter Verifikation?),
     Stempel setzen, Befunde an QUESTIONS + hub-chef.
   - Leerlauf-Disziplin nach Betriebs-Kurzregeln: 3x ohne Lieferung → Vorschlag
     Monatstakt, 5x → Ruecktaktung dokumentiert. Max. 1 Grossordner-Destillat pro Lauf.
   - Abschluss immer: CHANGELOG-Zeile + `nas-commit-now.sh`. Kein Mail-Versand
     (Briefing-Kanal ist hub-chef).

Rolle gemaess Rollen-Taxonomie: **maintainer** (Aufsicht ueber den Methoden-Layer),
eingetragen in `logbuch/rollen/rollen-map.tsv`.

## 4. Abgrenzung

- `wissenscheck-monatlich` prueft die **Gesundheit einer KB** (Widersprueche, Links,
  Claims). Der methoden-radar prueft die **Kette Quelle→Implementation→Training** ueber
  KBs hinweg und bewacht den Eingangsordner. Keine Doppelspurigkeit: der Radar liest
  keine Wiki-Artikel auf Konsistenz, der Wissenscheck kennt den OneDrive-Ordner nicht.
- `wissens-chef` (taeglich) bleibt Cross-KB-Meta-Aufsicht; der Radar liefert ihm
  hoechstens Befunde ueber das CHANGELOG.
- Der Loop steht NICHT zusaetzlich im Endlos-Runner (Betriebs-Kurzregel).

## 5. Erstbefuellung 29.07.2026

- `wissen/claude-code/wiki/methode-spw-wissensbasis.md` (Destillat der 30 Screenshots)
- `wissen/claude-code/wiki/methoden-register.md` (alle 9 Quellen registriert)
- `wissen/claude-code/raw/_INGESTED.md` (fehlte in dieser KB)
- 3 offene Kandidaten fuer Raphael in QUESTIONS.md (Drei-Marken-Strategie,
  Baueingabe-Check/Trace-Matrix, Archivierung Ordner Prompts)
- Scan-Stand eingefroren (9 Ordner)
