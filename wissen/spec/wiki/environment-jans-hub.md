---
title: Layer 3 — The Environment (= der JANS AI Hub)
status: established
last_updated: 2026-08-24
sources: [260616_marchese_the-spec_karpathy-method_transkript.md, CLAUDE.md]
links: [[the-spec]], [[verifier]], [[anwendung-jans]], [[kontext-architektur]] (KB claude-code — gemessener Ist-Zustand des Environments)
---

# Layer 3 — The Environment

Marchese fragt: "How do you create a proper workspace that improves over time?" — vier
Bausteine:
1. Eine ordentliche **CLAUDE.md**.
2. Eine **LLM Knowledge Base** (Karpathy: `raw/` → kompiliertes `wiki/` mit Summaries,
   Backlinks, Konzept-Artikeln).
3. Ein **Skill Set**.
4. **Rules** dafür, woran die KI arbeiten darf und woran nicht.

## Befund: Layer 3 baut JANS bereits — und tiefer als das Video

Der JANS AI Hub *ist* dieser Environment-Layer, in praktisch jedem Punkt schon umgesetzt:

| Video-Baustein | JANS AI Hub | Status |
|---|---|---|
| CLAUDE.md | `CLAUDE.md` (~50k, Architektur + Konventionen) — Groessenangabe ueberholt, siehe Korrekturkasten | vorhanden |
| LLM Knowledge Base (raw→wiki) | `wissen/` mit 16 KBs, Karpathy-Schema, KI-Bibliothekar | vorhanden, ausgebaut |
| Skill Set | `skills/` (49 Skills), "Skills sind das primäre Interface" | vorhanden, ausgebaut |
| Rules / Guardrails | `rules/` (22 Dateien, davon 19 @-importiert, immer aktiv) + Hooks | vorhanden, siehe Lücken-Befund unten |
| Workspace verbessert sich | Scheduled-Task-Trainings-Loops je KB | vorhanden, ausgebaut |

Zählstand 2026-07-23 (Trainingslauf 26, Verifikationslauf): 16 KBs, 49 Skills (13.07.: 47),
22 Rule-Dateien / 19 @-importiert (13.07.: 20). Diese Tabelle veraltet erfahrungsgemäss schnell
(Skills/KBs wachsen laufend) — bei jedem Audit neu zählen statt die letzte Zahl vertrauen.

Der **gemessene Ist-Zustand** des Environments — die vier Ladeschichten, das
Grundkontext-Budget in Bytes/Token und die Entscheidungsregel «automatisch gegen lazily» —
liegt in [[kontext-architektur]] (KB `claude-code`); dort gelten die aktuellen Zahlen. Diese
Tabelle bleibt das **Modell** (Zuordnung Video-Baustein ↔ Hub-Baustein) und wird nicht durch
den Messartikel ersetzt: die Layer-3-Kartierung Skill Set / Knowledge Base existiert dort
nicht.

**Korrektur Wissens-Chef Run 20, 29.07.2026.** Die Zahlen dieses Abschnitts sind überholt und
werden hier bewusst **nicht** neu festgeschrieben, sondern auf die führende KB gezeigt.
Eigene Messung am 29.07.2026, 23:39: `CLAUDE.md` **17'899 B** (nicht ~50k); der Grundkontext
`CLAUDE.md` plus die 20 @-importierten Rules zusammen **96'946 B / ~24'200 Token**
(Messweg und Zeitreihe in [[kontext-architektur]]). Zählstand heute **18 KBs · 50 Skills ·
24 Rule-Dateien, davon 20 @-importiert** gegen die 16 / 49 / 22 / 19 vom 23.07. Die
Byte-/Token-Werte führt ab jetzt [[kontext-architektur]]; die laufende Nachführung der
Zählstände dieses Artikels gehört als Bring-Schuld in `wissen/spec/wiki/QUESTIONS.md`
(noch offen, siehe Rückmeldung dieses Laufs).

## Nachmessung 2026-08-24 (Trainingslauf 39, Verifikationslauf) — F-ENV1 an diesem Artikel geloest

Reale Anwendung der Regel, die dieser Artikel selbst seit Run 20 als offene Bring-Schuld
fuehrt (F-ENV1, unten in [[QUESTIONS]]) und die [[anwendung-jans]] Schritt 2 als fuenften
Alterungsmodus verallgemeinert hat: **Zaehlstaende gehoeren nicht als eingefrorene Zahl in
den bindenden Text, sondern brauchen einen reproduzierbaren Messweg.** Nachgemessen heute mit
denselben vier Kennzahlen wie in der Korrektur vom 29.07., Messweg wortwoertlich angegeben,
damit jeder kuenftige Leser selbst nachmisst statt eine der Zahlen hier fortzuschreiben:

| Kennzahl | Befehl | Stand 24.08.2026 | Stand 29.07.2026 |
|---|---|---|---|
| Skills | `find skills -maxdepth 1 -type d \| tail -n +2 \| wc -l` | **51** | 50 |
| KBs (`wissen/`) | `find wissen -maxdepth 1 -type d \| tail -n +2 \| wc -l` | **20** | 18 |
| Rule-Dateien | `find rules -maxdepth 1 -name "*.md" \| wc -l` | **29** | 24 |
| davon @-importiert | `grep -c "^@/Volumes/daten/jans-ai-hub/rules/" CLAUDE.md` | **24** | 20 |
| `CLAUDE.md` | `wc -c CLAUDE.md` | **19'014 B** | 17'899 B |

Alle fuenf Werte sind in 26 Tagen gewachsen — das bestaetigt die F-ENV1-These direkt am
eigenen Artikel: eine kopierte Zahl ist in diesem Hub binnen weniger Wochen falsch. **Fix
dieses Laufs:** die aelteren Zaehlstand-Absaetze unten bleiben als datierter historischer
Beleg stehen (sie zeigen die Wachstumskurve); ab hier gilt fuer diesen Artikel die
Alterungsmodus-5-Regel woertlich — wer den aktuellen Stand braucht, fuehrt die fuenf Befehle
oben aus, statt eine der hier notierten Zahlen weiterzutragen. Byte-/Token-Budget des
Grundkontexts fuehrt unveraendert [[kontext-architektur]] (KB `claude-code`) mit eigenem,
dort dokumentiertem Messweg. Damit ist **F-ENV1 fuer diesen Artikel exemplarisch geloest**
(Messweg dokumentiert + reproduzierbar); die Bring-Schuld in `wiki/QUESTIONS.md` ist erledigt.

Kein neuer Fund bei den beiden anderen offenen Faeden dieses Laufs (Verifikationslauf, keine
neue reale Spec seit Lauf 38 am 30.07.): **F1** (Ueberdehnungs-Gegentest) bleibt unbelegt,
kein genervter Mittelfall in `outputs/`. **F3** (Marketing/Text als letzte offene
Verifier-Zeile) bleibt offen — Suche ueber `skills/marketing/`, `wissen/koordination/` und
alle `*_spec.md` im Hub ergab keinen belegten Fall. **SYN-02** (Reue-Check gegen
`wissen/koordination/SYNERGIE-REGISTER.md`, dort Stand 13.08.2026): MVP-Codeseite
weiterhin unveraendert (`volumen_generator.py` liest kein Parameter-Set) — kein neuer
Fund fuer diese KB, das Mandat liegt beim Synergie-Orchestrator.

## Environment-Audit Trainingslauf 8 (2026-07-13) — Befund: Rule-Datei existiert, ist aber nicht verdrahtet

Der periodische Audit-Prompt (unten) deckte eine konkrete, belegte Lücke auf: zwei Rule-Dateien
lagen vollständig ausformuliert in `rules/`, waren aber **nicht** im @-Import von `CLAUDE.md`
eingebunden — ein reiner Verdrahtungsfehler, keine inhaltliche Frage.

1. **`rules/jans-dna.md`** (das "Gehirn" des Twin-Harness) — die Datei selbst UND
   `skills/twin/SKILL.md` (Zeile 28f.) dokumentieren explizit: *"@-Import ganz oben in
   CLAUDE.md → rahmt jede Erzeugung"*. Der Import fehlte komplett. Damit lief die gesamte
   Twin-Personalisierungs-Pipeline (7 Facetten-Agenten + `build_dna.py`) ins Leere, solange
   das kompilierte Ergebnis nie automatisch geladen wurde. **Fix (dieser Lauf, klar belegt,
   direkt umgesetzt):** `@/Volumes/daten/jans-ai-hub/rules/jans-dna.md` als ersten Eintrag
   des Rule-Imports in `CLAUDE.md` ergänzt (Sektion "Geteilte Verhaltensregeln").
2. **`rules/sync-single-committer.md`** — ebenfalls nicht importiert, aber hier zusätzlich
   ein **Beleg-Konflikt**: die Rule verbietet rohes Git direkt auf dem NAS-Repo ("nur der
   markierte Mac Mini committet/pusht, über `scripts/nas-git-commit.sh`"), während die
   aktiv importierte `git-auto-push.md` genau das Gegenteil anweist (direkt `git commit` +
   `git push` auf `/Volumes/daten/jans-ai-hub`, explizit als Beispiel genannt). Da beide
   Dateien Verhalten alle Stationen betreffen und sich widersprechen, ist das **kein**
   Fall für eine autonome Fix (Rule-Inhalt ändern), sondern ein **Grenzfall für
   Raphael**: welche der beiden Anweisungen gilt für NAS-Git-Operationen? Nur die
   Registry-Lücke (README.md-Eintrag) wurde diesen Lauf geschlossen, der @-Import bewusst
   NICHT ergänzt, bis der Widerspruch entschieden ist.
3. **`rules/README.md`** ("Aktive Rules"-Liste) war ebenfalls veraltet — 5 existierende
   Regeln fehlten (`anrede-kontakte`, `jans-absenderadresse`, `normen-referenz`, `jans-dna`,
   `sync-single-committer`). Rein additive Dokumentations-Nachführung, kein Verhaltens-
   risiko → diesen Lauf direkt nachgezogen.

**Lektion für den Loop:** der Audit-Prompt sollte nicht nur zählen (Skills/KBs/Regeln),
sondern bei Rules explizit gegenchecken, ob jede Datei unter `rules/*.md` sowohl in
`rules/README.md` **als auch** im `CLAUDE.md`-@-Import auftaucht — die drei Listen
(Dateisystem, README, CLAUDE.md-Import) können unbemerkt auseinanderlaufen, weil das
Anlegen einer Rule-Datei allein noch keine Wirkung entfaltet.

## Environment-Audit Trainingslauf 9 (2026-07-13) — Grenzfall aus Lauf 8 durch Empirie gelöst

Lauf 8 flaggte Punkt 2 oben als **Raphael-Entscheid** (welche Regel gilt: `git-auto-push.md`
vs. `sync-single-committer.md`?). Dieser Lauf hat die Frage nicht per Ermessen entschieden,
sondern **den tatsächlichen Betrieb belegt** und daraus die Antwort abgeleitet — eine dritte
Option, die beide Konflikt-Parteien in Lauf 8 nicht auf dem Schirm hatten:

- `git log` auf dem NAS-Repo (Autor-Feld + Commit-Messages) zeigt: praktisch **jeder**
  Trainings-Loop (baurecht-buch, normen, immobewertung, planungsgrundlagen, twin-mail,
  wettbewerbs-dna, auch dieser spec-training-Loop selbst) committet **direkt** über den
  SMB-Mount — mit sprechenden Messages, nicht über `nas-git-commit.sh`/Sync-Task-Umweg.
- `scripts/nas-selfcommit.sh` (die in `sync-single-committer.md` als "Backlog" bezeichnete
  Ziel-Architektur) läuft **bereits produktiv** als DSM-Cron alle 15 Min direkt auf der
  Synology (kein SMB) und fängt liegen gebliebene Änderungen ab, inkl. Pull/Push.
- `sync-tasks/log/selfcommit-202607.log` (2359 Zeilen) zeigt **keine Korruption** seit der
  DSM-Migration — nur sauber abgefangene, transiente `index.lock — skip`-Meldungen.
- **Schluss:** der Konflikt existiert nur auf dem Papier. In der Praxis hat sich weder die
  eine noch die andere Regel durchgesetzt, sondern ein drittes, robusteres Muster: direktes
  Commit von jeder Station (wie `git-auto-push.md` vorschreibt) *plus* ein NAS-natives
  Sicherheitsnetz (das, was `sync-single-committer.md` eigentlich wollte, nur anders gebaut
  als dort beschrieben). Umgesetzt: `sync-single-committer.md` trägt jetzt ein Status-Banner
  ("nicht aktiv, historischer Kontext"), `sync-kanonische-quelle.md`s "Backlog"-Eintrag ist
  auf den Live-Stand korrigiert, `rules/README.md` nachgezogen. `git-auto-push.md` bleibt
  unverändert die aktive Regel — sie beschrieb den Ist-Zustand bereits korrekt.

**Nachtrag 2026-07-27 (Wissens-Chef Run 17) — der Schluss von Lauf 9 ist überholt.** Die
Betriebs-Empirie hat sich gedreht: am **26.07.2026** wurde genau diese Praxis ausdrücklich
**verboten**. `rules/sync-kanonische-quelle.md` untersagt im Abschnitt «NIE» neu **jeden**
git-Schreibbefehl (commit/push/pull/rebase) über den SMB-Mount auf das NAS-`.git` — «nicht durch
Claude, nicht durch die Loops, nicht als Cron. Solche Befehle hängen unter Last uninterruptibel und
blockieren die `.git/index.lock` für alle (belegt 25.07.2026 mehrfach)»; einziger erlaubter
NAS-Committer ist der native `nas-selfcommit.sh` auf der Synology, auf Zuruf via `nas-commit-now.sh`.
`rules/git-auto-push.md` trägt seit dem 26.07. einen neuen Kopfabschnitt, der die darunter stehenden
Commit-Schritte ausdrücklich auf **andere** Repos begrenzt (lokaler SSD-Klon, Projekt-Repos); die
Auto-Verbesserung 260726 hält dasselbe fest. **Die Lauf-9-Aussage «`git-auto-push.md` bleibt
unverändert die aktive Regel» ist damit gegenstandslos** — die Datei wurde genau an dieser Stelle
umgeschrieben. Der Lauf-9-Schluss «direktes Commit von jeder Station» gilt **nicht mehr als
Handlungsanweisung**; er bleibt hier als Methodik-Beispiel stehen.

**Und genau als Methodik-Beispiel ist er jetzt wertvoller als vorher — mit umgekehrtem Vorzeichen.**
Die Empirie vom 13.07. belegte die **Abwesenheit von Schaden im damaligen Beobachtungsfenster**, nicht
dessen Unmöglichkeit. Der Schadensfall trat am 25.07. unter Last mehrfach ein. **Lehrsatz für den
Verifier-Schritt der Spec-Methode: ein Verifier aus Betriebs-Empirie belegt den Ist-Zustand, nicht die
Belastungsgrenze. Ein daraus abgeleiteter Regel-Entscheid braucht ein Verfallsdatum oder eine
Re-Prüfung — er darf nicht als `established` festgeschrieben werden.** Das ist die Ergänzung zur
Lektion darunter: die Betriebs-Empirie durfte den Widerspruch entscheiden, aber nicht dauerhaft.

**Methodische Lektion für den Loop:** ein im Audit gefundener Regel-**Widerspruch** muss
nicht immer an Raphael eskaliert werden, wenn die **Betriebs-Empirie** (Logs, Git-Historie)
eine eindeutige, unabhängig überprüfbare Antwort liefert — das ist selbst eine Form von
Verifier (die Praxis als autoritative Instanz, vgl. [[verifier]]). Eskalieren bleibt richtig,
wenn die Empirie mehrdeutig wäre oder eine Sicherheits-/Kostenfrage berührt; hier war beides
nicht der Fall (rein infrastrukturell, seit Tagen beobachtbar stabil).

Karpathys 3-Schichten-Hoheit (`raw/` unveränderlich · `wiki/` Claude pflegt ·
`frameworks/` gemeinsam) entspricht 1:1 dem JANS-Schema `raw/` / `wiki/` / `outputs/`
(Rule `wissens-bibliothekar`, Meta `WISSEN-CLAUDE.md`).

## Konsequenz für das Hub

Layer 3 ist nicht der Nachholbedarf. **Neu und erzwungen einzubauen sind Layer 1 (Spec)
und Layer 2 (Verifier)** als bewusster *erster Schritt* grosser Anfragen — bisher passierte
das nur implizit. Genau das leisten der Skill `spec` und die Rule `spec-methode`. Details:
[[anwendung-jans]].

## Environment-Audit-Prompt (periodisch nutzbar)
> "Check my CLAUDE.md, my knowledge base, my skills, and my guardrails. For each of the top
> 5 gaps, name the file, the problem, and the exact fix — and flag which risky actions need
> a hook so I can't bypass them."

Dieser Prompt ist die Grundlage des `spec-training`-Loops ([[anwendung-jans]]).
