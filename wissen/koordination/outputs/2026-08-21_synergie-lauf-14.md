---
title: Synergie-Lauf 14 (21.08.2026)
status: established
last_updated: 2026-08-21
sources:
  - git-Log jans-ai-hub, Fenster 20.08.2026 17:10 bis 21.08.2026 17:10 (107 Commits)
  - rules/betrieb-chronik.md, Eintrag 260821 (Commit 520c49e0)
  - rules/auto-verbesserungen.md, Eintrag 260820 (Commit 0d5c11fa)
  - plutil -extract ProgramArguments über fünf LaunchAgents
links:
  - "[[SYNERGIE-REGISTER]]"
---

# Synergie-Lauf 14 — 21.08.2026

## Zuschnitt

Täglicher Lauf, inline, kein Fan-out. Delta-Basis Lauf 13 (20.08.2026 17:10), Fenster
24,0 Stunden, 107 Commits. Uhr-Kontrolle bestanden: Station 17:10 CEST gegen den nativen
Synology-Selfcommit 17:00:07 (HEAD `b78b9e7c`), kein Datumssprung. Der älteste gefilterte
Treffer `1a167215` (20.08. 17:15) schliesst lückenlos an die Basis an.

Strukturelles Delta: **0 neue Bausteine**, 7 geänderte Strukturdateien (2 SKILL.md,
4 Rules, `connectors/WEGE.md`). Der Früh-Ausstieg nach Schritt 2 griff nicht, weil sich
vier Rules bewegt haben.

## Zwei Befunde

**SYN-39 — der einzige Wächter ausserhalb des Repos.** Der Chronik-Eintrag 260821
beschreibt den Bildschirmschoner-Wächter gegen die Universal-Control-Assertion
vollständig, mit Rückbauweg. Was er nicht sagt: das Script liegt unter
`~/bin/screensaver-idle-watchdog.sh` und ist damit nirgends gesichert. Die Gegenprobe über
`plutil -extract ProgramArguments` an den vier vergleichbaren LaunchAgents ist eindeutig —
`speicher-waechter`, `nas-keepalive`, `station-status` und `synctask-runner` zeigen alle vier
auf `~/Developer/jans-ai-hub/scripts/`, und alle sieben Wächter-Scripts des Hub liegen
versioniert unter `scripts/`. Die Folge ist kein Betriebsrisiko, sondern ein Verlustrisiko:
kein Backup, keine Neuaufsetzung, `skills/workstation-setup` kann den Wächter nicht
ausrollen (0 Treffer auf `screensaver`).

Gesetzt wurde die Sicherung, nicht die Umstellung: die identische Kopie liegt jetzt unter
`scripts/screensaver-idle-watchdog.sh`, der laufende Job zeigt weiterhin auf `~/bin/`. Eine
Plist-Umstellung fasst launchd an und gehört nach Rule `interaktive-eingriffe` (Klasse
Persistenz/Autostart) nicht in einen unbeaufsichtigten Lauf. Der fertige `plutil`-Befehl
liegt als Nachtrag im Chronik-Eintrag.

**SYN-40 — die Längenregel benennt ihre Nachbarin, die sie nicht kennt.** Der neue Eintrag
260820 «Abklärungen kurz halten» (Vorgabe Raphael zum zweiseitig geratenen Erzeugnis
«Montagehöhe Wandmischbatterie 2619 KISPI») schliesst wörtlich mit «Ergänzt
`dokument-layout-standard.md` (Form) um die Länge». Dort: 0 Treffer auf «Länge»,
«Abklärung», «kurz». Auch `agents/layout.md`, der Formprüfer gegen genau diesen Standard,
kennt sie nicht.

Der Befund ist bewusst als Typ 3 (Compounding-Lücke) eingestuft und nicht als Typ 1: beide
Rules sind importierter Grundkontext, die Regel erreicht jede Session ohnehin. Verschoben hat
sich der Auffindeweg. Gesetzt wurde ein kurzer Querverweis-Abschnitt, kein Kopieren des
Regeltextes — und ausdrücklich **keine** Längenprüfung im Agenten `layout`: «drei Sätze
plus Skizze» ist eine inhaltliche Vorgabe, kein mechanisch messbarer Wert, und ein Prüfer,
der Länge zählt, erzeugt genau die Fehlbefunde aus SYN-31.

## Was geprüft wurde und sauber war

Die beiden bewegten Skills (`brandschutz`, `pdf2dwg`) tragen im Fenster nur den eigenen
Reparatur-Commit aus Lauf 13. `connectors/WEGE.md` ist eine reine Umlaut-Korrektur (11/11,
Zeilenzahl unverändert). `rules/jans-dna-facetten.md` ist zum vierten Mal in Folge über den
Kompilierweg entstanden, mit allen sechs Quell-Artikeln im selben Commit.
`rules/anrede-kontakte.md` trägt drei neue KISPI-Kontakte und nennt seinen Beleg; die
Rückkante zu `wissen/twin/wiki/QUESTIONS.md` ist beidseitig, und `agents/email.md` führt die
Rule bereits im Contract-Feld.

## Der Punkt, der bewusst offen blieb

Die neue Anrede-Klausel («ein persönliches Treffen kann das Register heben») verlangt einen
zusätzlichen Arbeitsschritt: vor einer Mail an einen Fachplaner den Kalender des laufenden
Tages prüfen. Das sieht nach einer fehlenden Verdrahtung im Agenten `email` aus. Sie steht
aber ausdrücklich als noch nicht bestätigt in der Rule und gilt dort als Hinweis, nicht als
Regel. Sie in den ausführenden Agenten zu schreiben würde sie zur Regel machen, bevor
Raphael entschieden hat. Wieder aufzurollen, sobald QUESTIONS 260821 #1 beantwortet ist.

## Schreib-Kontrolle

Alle Werte mit `git diff --numstat` gemessen: `rules/betrieb-chronik.md` 12/0 (1766/1778),
`rules/dokument-layout-standard.md` 10/0 (49/59), Register 2/0 für die SYN-Zeilen plus 60/0
für die Fussnote (505/565, Tabellenzeilen 38/40),
`scripts/screensaver-idle-watchdog.sh` neu, `diff` gegen das Original leer. Keine Datei hat
Zeilen verloren.
