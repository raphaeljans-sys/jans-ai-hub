# Masterclass-Modul: Harness-Review (Meta-Lern-Loop)

Wiederkehrender Review-Schritt, der den JANS-Harness sich **selbst verbessern** laesst.
Er hebt den Lern-Loop von rein **reaktiv** (Hook `verbesserung-capture.sh` → Eintrag in
`auto-verbesserungen.md`) auf **geschlossen**: erfasste Korrekturen werden konsolidiert,
zu echten Rules/Skill-Edits befoerdert, Rueckfaelle gemessen und veraltetes bereinigt.

Das ist die Generalisierung des `ausschreibung`-Selbsttrainings
(`wissensbasis/08_selbsttraining-mecano.md` + `wissensluecken.md`) auf den **ganzen** Harness.

## Wann ausfuehren

- Als fester Review-Schritt im Masterclass-Rhythmus (siehe `FORTSCHRITT.md`), z.B. alle
  2 Wochen, sowie auf Zuruf («Harness-Review», «Lern-Loop», «was hat sich angesammelt»).
- Immer, wenn `auto-verbesserungen.md` deutlich gewachsen ist (Faustregel: ≥ 5 neue Eintraege).

## Eingangsdaten

1. `bash /Volumes/daten/jans-ai-hub/scripts/session-insights.sh` ausfuehren → liefert
   Themen-Cluster, Korrektur-Signale, Rueckfall-Kandidaten, Eintrags-Status.
2. `rules/auto-verbesserungen.md` lesen (die gesammelten Korrekturen).
3. Bestehende Rules in `rules/` und das Set der Skills/Agents kennen.

## Die 4 Schritte

### 1. Consolidate
- Aus `session-insights.sh` + `auto-verbesserungen.md` die Korrekturen zu **Clustern**
  gruppieren (gleiches Thema, auch wenn anders formuliert).
- Widerspruechliche Eintraege markieren (neuer korrigiert alten).

### 2. Promote
- Cluster, das **≥ 3× wiederkehrt** oder ein eigenstaendiges Stil-/Verhaltensthema ist
  → von Log-Eintrag zu **dedizierter Rule** befoerdern:
  1. Rule-Datei in `rules/<thema>.md` anlegen (Format wie bestehende Rules).
  2. In `rules/README.md` registrieren.
  3. `@`-Import in `CLAUDE.md` ergaenzen.
  4. Den/die Log-Eintraege in `auto-verbesserungen.md` durch **einen Verweis** auf die
     neue Rule ersetzen (Mechanik steht im Dateikopf von `auto-verbesserungen.md`).
- Betrifft ein Cluster nur **einen Skill** → direkt den `SKILL.md`-Koerper praezisieren
  (Trigger/Output-Ablage/Hinweis), statt eine globale Rule zu bauen.

### 3. Measure Rueckfall
- Aus dem Abschnitt «Rueckfall-Kandidaten»: tritt ein Korrektur-Thema **trotz bestehender
  Rule** weiter auf, reicht die Rule (= Text) nicht — sie braucht eine **deterministische
  Absicherung**:
  - Neuer Guard-Hook nach Vorbild `scripts/umlaut-guard.sh` (Stop-Hook, der das Beenden
    blockiert, bis die Korrektur erfolgt ist), registriert in `.claude/settings.json`.
  - Beispiel bereits umgesetzt: Umlaute → `umlaut-guard.sh`; Mail-Drafts → `mail-draft-guard.sh`.
- Faustregel: **Text-Rule fuer Stil, Guard-Hook fuer wiederholte Rueckfaelle.**

### 4. Prune
- Veraltete, erledigte oder durch Promote ersetzte Eintraege aus `auto-verbesserungen.md`
  entfernen bzw. durch Verweis ersetzen.
- Doppelte Rules zusammenfuehren. `rules/README.md` und die `@`-Importe in `CLAUDE.md`
  konsistent halten.

## Output

- 0–n neue/aktualisierte Rule-Dateien **oder** praezisierte SKILL.md-Koerper.
- ggf. 1 neuer Guard-Hook + `.claude/settings.json`-Eintrag.
- bereinigte `auto-verbesserungen.md`.
- Kurzprotokoll in `FORTSCHRITT.md` (Datum, was befoerdert/abgesichert/bereinigt wurde).
- Sync: `git commit` + push (Rule `git-auto-push.md`), Station-Sync-Task fuer die andere Station.

## Warum das «Lernen zu lernen» ist

Der Harness erfasst Korrekturen nicht nur (reaktiv), sondern **reflektiert ueber seine
eigenen Korrekturen**: er erkennt, welche Regeln greifen und welche nicht (Rueckfall-
Messung), befoerdert wiederkehrende Muster in die passende Schicht (Text-Rule vs.
deterministischer Guard) und haelt sich selbst sauber (Prune). Mit jeder Runde wird der
Harness praeziser — ohne dass eine Korrektur zweimal manuell gegeben werden muss.
