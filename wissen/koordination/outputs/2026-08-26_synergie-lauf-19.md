---
title: Synergie-Lauf 19 (Tagestakt 26.08.2026)
status: established
last_updated: 2026-08-26
sources:
  - git-Fenster 25.08.2026 17:10 bis 26.08.2026 17:10, 116 Commits, HEAD 188eb0923
  - skills/hub-chef/SKILL.md (Commit d80a58ffb)
  - connectors/WEGE.md, rules/betrieb-chronik.md 260826, wissen/twin/CHANGELOG.md Batch 105
links:
  - "[[SYNERGIE-REGISTER]]"
---

# Synergie-Lauf 19 — der Hub lernt einen Ersatzweg, und nur einer merkt es

**Zuschnitt.** Tagestakt, Delta-Basis 25.08.2026 17:10, Fenster 24,0 h, 116 Commits, HEAD
`188eb0923`. Uhr gegen die native Synology-Uhr geprüft (17:10 CEST gegen Selfcommit 17:00:06),
Gegenprobe der Filterung bestanden. Inline-Analyse ohne Fan-out. Null neue Bausteine, sechs
bewegte Bestandsdateien, davon zwei aus dem eigenen Schreibvorgang von Lauf 18.

## Der rote Faden

Alle drei Befunde hängen an derselben Störung: Apple Mail antwortet seit dem 25.08. auf
Apple Events nicht mehr. Der Hub hat daraus gelernt — aber nur an einer Stelle.

**SYN-50 — der Ersatzweg blieb beim Chef.** Der `hub-chef` hat am 26.08. um 08:45 den zweiten
Versandweg in seinen Skill geschrieben (Graph `Mail.Send` über die m365-CLI, mit Zeitgrenze,
Pflicht-`--sender` und Nachmessen in den Gesendeten). Das Wege-Register führt ihn seit dem 25.08.
vollständig. Gemessen kennt ihn ausser dem Register genau ein Baustein. Die vier Kanäle, die nach
Rule 260803 gerade dann selbst melden dürfen, wenn der Chef nicht trägt, schreiben ausnahmslos den
ersten Weg vor. Die Chronik belegt am selben Tag, dass der `ag-gruendung-monitor` seit 25.08. um
06:00 blind ist — und sucht als Abhilfe die Diagnose des ersten Wegs, während der zweite seit
einem Tag belegt danebenliegt. Die Redundanz der Ausnahmekanäle ist damit scheinbar: alle vier
hängen am selben Einzelweg wie der Vertretene. Betroffen sind die Anlässe ohne Aufschub —
Kapitalbescheinigung, Beurkundungstermin, 24-Stunden-Frist, P1-Blocker.

**SYN-51 — der Echo-Schutz hängt neu an einer fremden CSS-Zeile.** Bis zum 25.08. trennte der
Zwilling Hub-Mail von Raphaels eigener Hand über die `internetMessageId`. Seit dem Ausweichen auf
Graph tragen beide denselben Host; die ID beweist nichts mehr. Der Zwilling hat das selbst erhoben
und einen Ersatz gemessen: den CSS-Fingerabdruck. Nur weiss die erzeugende Seite nichts davon —
`hub-chef` und Wege-Register schreiben genau diese Zeichenfolge vor, beide als blosse
Schriftvorgabe. Gliche jemand die Hub-Signatur später an die OWA-Signatur an, was naheliegt, fiele
der Detektor still aus und Hub-Briefings wanderten als Stil-Gold ins Twin-Wiki. Nichts bricht
dabei; der Zwilling lernte einfach das eigene Echo.

**SYN-52 — der Schutz-Hook behindert die Diagnose des Schadens.** `mail-draft-guard.sh` wird
aktiv, sobald der Werkzeug-Input eines der Mail-Muster enthält, und blockiert dann bei
ASCII-Umlaut-Stämmen im gesamten Input. In diesem Lauf hat er zweimal einen reinen `grep`-Aufruf
abgewiesen, der messen sollte, welche Bausteine überhaupt per Apple Mail senden — der Suchstring
selbst erfüllte das Muster. Der Fehlertext benennt einen Mail-Entwurf, den es nicht gibt.
Dokumentiert ist die Falle allein im Prompt eines einzelnen Loops, während die importierte Rule
`umlaute-konvention` unter «Ausnahmen» das Gegenteil erlaubt.

## Was dieser Lauf selbst getan hat

Zwei Querverweise, beide additiv und zeilengenau am Anker (active-with-flagging):

**01.1** Warnsatz an die CSS-Zeile in `skills/hub-chef/SKILL.md` (+6/0) und `connectors/WEGE.md`
(+4/0), mit Zeiger auf die Detektor-Tabelle des Zwillings.

**01.2** Zeiger im Wege-Register auf die vier Kanäle, die den zweiten Weg ebenfalls brauchen
(+7/0), mit der sauberen Abgrenzung, dass er nur das Senden heilt, nicht das Lesen eines Kontos
ohne Delegate-Zugriff.

Nicht getan: die vier Task-Prompts ändern (liegen ausserhalb des Repos, Eingriff in Meldekanäle
ist kein Querverweis) und den Guard einengen (ein Schutzmechanismus wird nicht von der Aufsicht
selbst gelockert).

## Nullbefunde, gemessen statt vermutet

**02.1 Rückkante Wege-Register.** Der Verweis des `hub-chef` stimmt, der Weg ist vollständig
geführt samt Befehl, Pflicht-Parameter, Nachmess-Pflicht und drei Sackgassen.

**02.2 Rückkante Zwilling.** Der genannte Twin-Befund existiert und wurde dort zuerst erhoben,
inklusive Regressionsprobe am eigenen Messwerkzeug. Die Kante ist nicht unbemerkt, nur einseitig
verdrahtet.

**02.3 Anrede-Register.** Die neue Kontaktzeile stammt aus vier belegten Fidelity-Läufen; der
Rückfluss vom Lern-Loop in die importierte Rule läuft in der vorgesehenen Richtung.

## Aufgerollt, ohne neuen Befund

`rules/jans-dna-facetten.md` hat sich erneut bewegt, damit greift die Compounding-Klausel für
SYN-43 zum zweiten Mal. Die Sachfrage hängt am ausstehenden Entscheid Raphaels und wird nicht
durch einen Aufsichtslauf entschieden. Status unverändert.

## Für Raphael, in einem Satz

Der Hub hat diese Woche einen zweiten Versandweg gelernt, aber nur der Tageschef kennt ihn — die
vier Kanäle, die ihn im Ausfall vertreten sollen, melden bei blockiertem ersten Weg weiterhin
still gar nichts, und genau dort hängen Kapitalbescheinigung und Fristen.
