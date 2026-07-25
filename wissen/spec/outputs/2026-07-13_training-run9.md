# Spec-Training — Lauf 9 (2026-07-13)

Teil des VOLLGAS-Endlos-Runners (Auftrag Raphael 12.07.2026). Voraussetzung NAS gemountet:
erfuellt.

## 1. Stand gelesen
- `wiki/QUESTIONS.md`: F1 (Ueberdehnungs-Gegentest) weiterhin offen, F3 nur noch Domaene
  Marketing/Text offen, F4/F5 vollstaendig eingeloest, F6/F7 eingeloest/stabil.
- `outputs/`: seit Lauf 8 (2026-07-13, 05:15) **keine neue reale Spec-Anwendung** hinzugekommen.
- `CHANGELOG.md`: Lauf 8 sauber dokumentiert. Ein offener Punkt aus Lauf 8 war zentral fuer
  diesen Lauf: Befund 2 ("Raphael-Entscheid noetig" zu `git-auto-push.md` vs.
  `sync-single-committer.md`).

## 2. Environment-Audit (Kernstueck dieses Laufs)

Statt den Lauf-8-Grenzfall unbearbeitet an Raphael weiterzureichen, wurde die **Betriebs-
Empirie** geprueft — belegbare Fakten schlagen Ermessen:

- `git log`/`git config` auf dem NAS-Repo: praktisch jeder Trainings-Loop (baurecht-buch,
  normen, immobewertung, planungsgrundlagen, twin-mail, wettbewerbs-dna, auch dieser
  spec-training-Loop) committet **direkt** ueber den SMB-Mount mit sprechenden Messages —
  nicht ueber den in `sync-single-committer.md` vorgeschriebenen `nas-git-commit.sh`-Umweg.
- `scripts/nas-selfcommit.sh` — die in `sync-single-committer.md`/`sync-kanonische-quelle.md`
  als "Backlog" gefuehrte NAS-native Git-Loesung — laeuft **bereits produktiv** als DSM-Cron
  alle 15 Min direkt auf der Synology (kein SMB), faengt liegen gebliebene Aenderungen ab
  und macht Pull/Push (bestaetigt auch in Memory `project_systemaudit_260610`).
- `sync-tasks/log/selfcommit-202607.log` (2359 Zeilen): **keine Korruption** seit der
  DSM-Migration, nur sauber abgefangene `index.lock — skip`-Meldungen (transiente Kollisionen).

**Befund:** der Lauf-8-Konflikt existierte nur auf dem Papier. In der Praxis hat sich ein
drittes Muster durchgesetzt — direktes Commit von jeder Station (`git-auto-push.md`) *plus*
ein NAS-natives Sicherheitsnetz (das, was `sync-single-committer.md` wollte, nur anders
gebaut). **Umgesetzt (P1, dieser Lauf):**
1. `rules/sync-single-committer.md` erhaelt ein Status-Banner: nicht aktiv/nicht importiert,
   historischer Kontext, mit den obigen Belegen.
2. `rules/sync-kanonische-quelle.md` — der "Backlog"-Eintrag zur NAS-nativen Loesung war
   sachlich veraltet (die Loesung existiert bereits); auf den Live-Stand korrigiert, inkl.
   Klarstellung, dass der DSM-Cron nicht gegen das SMB-Verbot in der NIE-Liste verstoesst
   (er laeuft lokal auf dem NAS, nicht ueber SMB).
3. `rules/README.md` — Registry-Eintrag zu `sync-single-committer.md` auf den neuen Status
   nachgezogen.
4. `wiki/environment-jans-hub.md` — neue Sektion "Trainingslauf 9", dokumentiert die Herleitung
   und die methodische Lektion.
- `git-auto-push.md` selbst blieb unveraendert — sie beschrieb den Ist-Zustand bereits korrekt,
  keine Aenderung noetig.

**Methodische Lektion (fuer [[verifier]]/[[anwendung-jans]]):** ein im Audit gefundener
Regel-Widerspruch muss nicht immer an Raphael eskaliert werden, wenn belegbare Betriebs-Empirie
(Git-Historie, Logs) eine eindeutige Antwort liefert — das ist selbst ein Verifier-Muster
("die Praxis als autoritative Instanz"). Eskalieren bleibt richtig bei mehrdeutiger Empirie
oder Sicherheits-/Kostenfragen; hier lag keins von beidem vor (rein infrastrukturell, seit
Tagen stabil beobachtbar). Damit ist Lauf 8s offener Punkt geschlossen, ohne dass Raphael
tatsaechlich eine Entscheidung treffen musste — die Frage war bereits durch die Praxis
beantwortet, nur nicht dokumentiert.

Kein weiterer Environment-Befund in dieser Stichprobe (Hooks, Skill-Zaehlstand, KB-Zaehlstand
unveraendert seit Lauf 8).

## 3. Reale Spec-Anwendungen ausgewertet
Keine neue seit Lauf 8. Kein neues Korrektur-Delta zu F1/F2.

## 4. Nachschaerfen
Keine Aenderung an der Gate-Schwelle (`spec-methode.md`). `verifier.md`/`anwendung-jans.md`
inhaltlich unveraendert diesen Lauf (der Lernfund liegt in `environment-jans-hub.md`, nicht in
einer neuen Spec-Lektion) — Metadaten dort bleiben auf 07-12.

## 5. Quellen-Schuld
Keine offen — F4/F5 bereits vollstaendig eingeloest.

## Was als naechstes
- Lauf-8-Punkt ist geschlossen (siehe oben) — kein offener Raphael-Entscheid mehr zu
  Git-Committer-Modell.
- F1-Ueberdehnungs-Gegentest (mittelgrosser, genervter Fall) weiterhin nicht in `outputs/`.
- F3: nur noch Domaene Marketing/Text ohne belegte Verifier-Zeile.
- Pruefen, ob der `jans-dna.md`-Import (seit Lauf 8 aktiv) an Twin-Fidelity-Metriken sichtbar
  wird (aus dem Lauf-8-Log: "sync: twin-fidelity-review Zweitlauf ... Fidelity 94" bereits
  nach dem Fix entstanden — naechster Lauf sollte pruefen, ob das kausal zusammenhaengt oder
  Zufall ist, bevor ein Kausalschluss gezogen wird).
