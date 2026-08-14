# Rule: Modellwahl bei Routinen (Minimum Viable Model)

**Kurzregel, immer aktiv.** Routine-Laeufe (Scheduled Tasks, Messungen, Checks) sammeln Daten
und geben nach Vorlage aus. Sie sollen nicht das teuerste Modell in voller Breite binden,
damit das Kontingent auf echte Entscheidungen trifft.

Belege, Messwerte und der Rollout-Stand stehen in `rules/betrieb-chronik.md`, Abschnitt 260807
(**nicht importiert**) — dort nachlesen, wer an Scheduled Tasks arbeitet.

## Die Regel

1. **Der Hauptlauf orchestriert und urteilt, ein Subagent arbeitet.** In jede Routine-Task
   gehoert ein Modell-Politik-Block ans Ende des Prompts: mechanische Arbeit (Daten sammeln,
   Scripts ausfuehren, Outputs zusammenfassen, formatieren) an `model: haiku`, textlastige
   Destillation an `model: sonnet`.

2. **Urteil wird nie delegiert.** Priorisierung, Fristenschaerfe, Sendeentscheid,
   Whitelist-Aktionen, Entwuerfe an Dritte und die Frage, ob ein Befund operativ ist, bleiben
   im Hauptkontext. Das gilt namentlich fuer `logbuch-radar`, `hub-chef-taeglich` und
   `ag-gruendung-monitor`.

3. **Nicht delegieren, wo es sich nicht lohnt.** Der Subagent laedt den Grundkontext neu
   (gemessen: 78'000 Token fuer einen einzelnen Bash-Aufruf). Bei einem Zweizeiler ist die
   direkte Ausfuehrung guenstiger.

   **⚠ Schwelle beziffert 08.08.2026** (Rueckmeldung Raphael «bist etwas lahm», eigene Messung
   am `vollgas-chef-radar`): ein Haiku-Subagent brauchte **90 Sekunden und 87'562 Token fuer
   neun Shell-Befehle**, die inline rund zehn Sekunden dauern. **Faustregel: weniger als etwa
   zehn Werkzeugaufrufe → inline; mehr, oder das Lesen ganzer Transcripts/Dokumente →
   Subagent.** Unabhaengige Messbefehle gehoeren dabei in EINEN parallelen Block, nicht in eine
   Kette von Einzelaufrufen — die Kette ist der zweite, haeufigere Grund fuer einen zaehen Lauf.
   Bei einem Routine-Lauf ohne Befund zaehlt auch die Berichtslaenge: ein Regellauf meldet
   knapp, ausfuehrlich wird nur das Neue.

4. **⚠ Das Frontmatter-Feld `model:` wirkt NICHT.** Am 07.08.2026 widerlegt: alle
   Scheduled-Task-Hauptlaeufe fahren `claude-opus-5`, auch die Task, die das Feld traegt.
   Gleiche Familie wie `enabled:`/`cron_target:` — Dokumentation, nicht Live-Zustand. **Nie
   ein Konfigurationsfeld setzen und den Verbrauch damit als gesenkt betrachten**, ohne die
   Wirkung gemessen zu haben.

5. **Manuelle Auftraege bleiben unberuehrt.** Das Standardmodell interaktiver Sessions ist
   seit 14.08.2026 **Opus 5**; **Fable 5** nur punktuell und nur durch Raphael via `/model`
   (Rule `auto-verbesserungen` 260814b). Scheduled Tasks und Loops werden **nie** auf Fable
   gestellt — fuer sie gilt ausschliesslich diese Rule. Raphael arbeitet selbst; jede interaktive
   Session ist ein Operator-Auftrag und laeuft im Standardmodell. Ebenso Diagnose bei
   unerwartetem Fehlschlag, neue Sachverhalte und P1-Blocker.

6. **Ausnahme `twin-fidelity-review`:** beurteilt die Stimmtreue des Zwillings und wird nicht
   delegiert — ein schwaecheres Modell als Richter ueber die eigene Stimme ist verkehrt.

## Der groessere Hebel

Rund 97 kB Grundkontext (CLAUDE.md, User-CLAUDE.md, 22 importierte Rules; Stand 07.08.2026)
fallen in jede Session aller rund 40 Tasks — und zusaetzlich in jeden Subagenten. Keine
Modellwahl heilt das. Vor jedem neuen @-Import und jedem Anwachsen einer importierten Rule
gilt Rule `auto-verbesserungen`, Eintrag 260719: Belege und Messwerte sind nie Grundkontext.

## Geltungsbereich

Alle Scheduled Tasks, alle Stationen.
