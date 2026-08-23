---
title: Synergie-Lauf 16 (Tagestakt) — 23.08.2026
status: established
last_updated: 2026-08-23
sources: [git-log 22.08.2026 17:10 – 23.08.2026 17:10, SYNERGIE-REGISTER.md, rules/, wissen/]
links: [[SYNERGIE-REGISTER]]
---

# Synergie-Lauf 16 — 23.08.2026, 17:10–17:45

**Delta-Basis** 22.08.2026 17:10 (Start Lauf 15) · **Fenster** 24,0 Stunden · **126 Commits**

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr 17:10 CEST, juengster nativer Synology-Log-Eintrag 17:05:20
(`sync-tasks/log/selfcommit-202608.log`). Abweichung im Minutenbereich, **kein Uhr-Vorbehalt**.

## Schritt 1 — Delta mit Gegenprobe

Gegenprobe bestanden: juengster Treffer im gefilterten Fenster ist der HEAD `063edde4` selbst,
aeltester `8ebd5566` (22.08. 17:15) schliesst lueckenlos an die Delta-Basis an.

**Strukturell:** 0 neue Skills, Agenten, Connectoren, Commands, Services, Rules; keine neue KB.
Einziger Neuzugang unter den Bausteinpfaden ist eine Trainingsdatei
(`skills/wissens-destillat/training/buero-projekte-triage-20260823-1546.md`) — kein Baustein.

**Geaenderte Rules:** `betrieb-chronik` (4 Commits, nicht importiert), `wissens-bibliothekar`
(`9646355d`, 15/0, importiert), `jans-dna-facetten` (`d4d79ced`, 26/26, nicht importiert),
`anrede-kontakte` (`fe6224f0`, 10/0, importiert). Frueh-Ausstieg nach Schritt 2 greift damit nicht.

## Befund: SYN-43 — Anrede-Divergenz zwischen importierter Rule und Facetten-Datei

Zwei Dateien haben sich im Fenster sieben Stunden versetzt zur **selben Sachfrage** bewegt, und
die operative Anweisung der immer geladenen Fassung ist am selben Korpus als verfehlt gemessen.

**Die importierte Fassung** (`rules/anrede-kontakte.md`, Z. 41-47) traegt die Treffen-Klausel mit
**Sofortwirkung**: «die neue Stufe bleibt danach», praktische Folge «vor einer Mail an einen
Fachplaner den Kalender des laufenden Tages pruefen; hat ein Treffen stattgefunden, ist die
Anrede des letzten Threads ueberholt». Der am selben Tag angehaengte Gegenbeleg (`fe6224f0`)
korrigiert nur die **Achse** — kein Wechsel Sie → Du —, nicht die Sofortwirkung.

**Die nicht importierte Fassung** (`rules/jans-dna-facetten.md`, `d4d79ced`, 23.08. 06:00) fasst
dieselbe Frage eine Ebene tiefer: die Stufe ist eine **Trajektorie, kein Standbild**, der
Kanalwechsel wirkt **verzoegert, nicht sofort** — Furrer (Behoerde) 24.07. → 28.07. nach der
Besprechung, Stadelmann (Unternehmer) 22.07. **trotz** Telefonat unveraendert und erst am 03.08.
waermer. Der belegte Opener gilt **innerhalb** des Vorgangs, nicht ueber Wochen; Cc, Gewicht und
Telefonat heben im selben Vorgang nicht automatisch (**260822, 3/3 verfehlt**).

**Richtungsprobe:** `jans-dna-facetten` nennt `anrede-kontakte` (Z. 235), zurueck verweist
nichts (`grep -c` = 0). Die **immer geladene** Datei traegt damit die groebere Fassung, die
**nicht importierte** die belegte Praezisierung — die Asymmetrie zeigt in die unguenstige
Richtung. Besonders betroffen sind die neun Bausteine ohne Facetten-Zeiger aus SYN-22.

**Ehrliche Abgrenzung:** keine harte Kappung. Der importierte Kern `rules/jans-dna.md` weist
jede Session an, die Facetten vor einem ausgehenden Text zu lesen; wer das tut, sieht die
neuere Fassung. Verschoben hat sich die **Verlaesslichkeit**, nicht die Erreichbarkeit.

**Gesetzt (active-with-flagging):** Verweis-Nachtrag in `rules/anrede-kontakte.md` (9/0,
106→115 Zeilen), der auf die praezisere Fassung zeigt und die gemessene 3/3-Verfehlung benennt.
Der **Wortlaut der Klausel bleibt unangetastet** — beide Dateien fuehren sie ausdruecklich als
«Entscheid Raphael ausstehend» (`wissen/twin/wiki/QUESTIONS.md` 260821 #1, 260822b #1), und
Claude aendert den Wortlaut einer Rule nicht selbst. Die Zusammenfuehrung ist Raphaels Entscheid.

## Adversarial gegengeprueft und bewusst verworfen

**(a) Cross-KB-Bringschuld.** Die neue Klausel in `rules/wissens-bibliothekar.md` (`9646355d`,
15/0) sah nach einer Ketten-Luecke aus: weder `rules/wissens-ruecklauf.md` (die Schwester-Rule,
die genau den Ruecklauf in KBs regelt) noch `wissen/WISSEN-CLAUDE.md` (das Meta-Schema, das jede
KB zuerst liest) kennen sie — je 0 Treffer. **Zwei Gegenbefunde entkraeften das:** beide Rules
sind **importiert**, wer die eine liest, hat die andere im Kontext; und der Mechanismus ist
gelebt belegt funktionierend — der Anlassfall `F-UEBERGABE` in
`wissen/planungsgrundlagen/wiki/QUESTIONS.md` Z. 1515 ist am 23.08. **geschlossen**, und die
energie→normen-Uebergabe zu SIA 493 ist drueben angekommen (`wissen/normen/wiki/QUESTIONS.md`
Z. 1037 «E-123-2 … geschlossen», `wiki/REGISTER.md` Z. 721). Die Klausel kodifiziert eine
funktionierende Praxis. Ein Querverweis waere Rauschen, nicht Verdrahtung.

*Nebenmessung, festgehalten ohne Befund:* die gelebte Formulierung ist mit Abstand
«Bring-Schuld» (83 Treffer in `wissen/*/wiki/QUESTIONS.md`), waehrend die Rule «→ Uebergabe an
KB X» / «Bring-Schuld bei KB X» nennt und die Praepositionen im Bestand streuen (aus/an/bei/der).
Das trifft die Rule nicht: ihr Punkt 2 verlangt den **KB-Namen** im Bericht, nicht die Phrase.

**(b) `nas-commit-now.sh` im Buero-LAN.** Der Chronik-Eintrag 260823 las sich wie eine
Sackgasse, die weder `rules/sync-kanonische-quelle`, `rules/git-auto-push` noch
`connectors/WEGE.md` kennen (je 0 Treffer) — und er betrifft den Commit-Weg, den jede Session
benutzen muss. Am Objekt weitergelesen ist der Eintrag ausdruecklich als **ueberholt** markiert;
die korrigierte Fassung darueber weist **gestopptes Tailscale** auf dem Mac Mini als Ursache aus:
«das Script ist in Ordnung, der Dienst ist aus». Kein Rule-Befund, kein WEGE-Eintrag noetig; der
Punkt ist als Betriebssache im Fristen-Register verankert. Genau die Falle, vor der der Eintrag
selbst warnt («erst messen, dann deuten»).

**(c) Dritte Station `macbook-revendo`** (HEAD `063edde4`): registriert in der kanonischen Quelle
`connectors/hub-setup-daten.json`, in `docs/stationen.md`, im Vollgas-RADAR und im
Kontingent-Journal — nur `station-status/macbook-revendo.md` fehlt. Stationen sind keine
Bausteine im Sinne dieses Skills und tragen keine Zeile in `rollen-map.tsv`; die Statusdatei
entsteht beim ersten Lauf des Status-Jobs. Betriebssache.

**(d) Neue energie-Antworten mit moeglichen Abnehmern** (Asbest-Meldepflicht ZH, Konzessionsdauer
Seewasser SZ/ZG): die Abnehmer-Gegenprobe ueber `skills/` und `agents/` ergab nur
`skills/ankaufspruefung/SKILL.md`, und der fuehrt Asbest ausdruecklich als «Abklaerungsbedarf
benennen, kein Laborbefund» (Z. 52-53, 75-76) — **kein widersprechender Wert**, also nicht der
SYN-41-Typ (dort trug ein Skill einen ueberholten Norm-Wert). Die fehlende Verdrahtung
`ankaufspruefung` ↔ `wissen/energie` ist bereits SYN-20 und wird nicht gedoppelt.

## Gemessen, aber nicht aufgerollt

Reine KB-Inhaltsarbeit ohne neue Bausteine: `energie` (64), `normen` (61), `baurecht` (24),
`twin` (19), `planungsgrundlagen` (16), `architekten-synobsis` (6), `wettbewerbs-dna` (5),
`immobilienbewertung` (5), `firmengruendung-ch` (4), `entwurfs-referenzen` (4), `grobkosten` (3),
`projekt-lessons` (2), `bauprodukte` (2).

Fuer die beiden grossen wurde die Schritt-2-Ausnahme geprueft, weil offene Eintraege sie
namentlich nennen (SYN-24/37 `normen`, SYN-07/20/21/30 `energie`): das normen-Delta ist
Register-Formatkorrektur und Vollstaendigkeitsverifikation, ausdruecklich «keine neuen
Destillate»; das energie-Delta schliesst 15 offene Fragen, ohne eine bestehende Aussage zu
kippen. In beiden Faellen hat sich **kein Abnehmer-Baustein** bewegt.

Nicht neu aufgerollt (Compounding, kein Beteiligter bewegt): SYN-01 bis SYN-42.
Kein neuer Service-ENTWURF, kein Katalog-Bezug, keine Mail (still by default).

## Schreib-Kontrolle (Rule `auto-verbesserungen` 260811)

| Datei | numstat | Zeilen vorher/nachher | Verfahren |
|---|---|---|---|
| `rules/anrede-kontakte.md` | 9/0 | 106/115 | Einsetzen an eindeutigem Anker, Trefferzahl vorher auf 1 assertiert |
| `wissen/koordination/SYNERGIE-REGISTER.md` (SYN-43) | 1/0 | 639/640, 42→43 Tabellenzeilen | Zeileneinfuegung nach der SYN-42-Zeile |
| dieselbe Datei (Fussnote) | 67/0 | 640/706 | reines Anhaengen |

Kein globales Suchen-und-Ersetzen, keine Datei hat Zeilen verloren.
