---
title: Synergie-Lauf 17 (Tagestakt) — 24.08.2026
status: established
last_updated: 2026-08-24
sources: git-Delta 23.08.2026 17:10 bis 24.08.2026 17:10 (177 Commits), HEAD 0a27fab4
links: [[SYNERGIE-REGISTER]], [[QUERBEZUEGE]]
---

# Synergie-Lauf 17 — 24.08.2026

Delta-Basis 23.08.2026 17:10, Fenster 23,8 Stunden, **177 Commits**. Uhr-Check bestanden
(Station 17:10 CEST, nativer Synology-Log 17:00:05). Gegenprobe der Filterung bestanden:
aeltester Treffer `1b34d09e` schliesst lueckenlos an, juengster ist der HEAD.

## Was das Fenster brachte

Keine neuen Bausteine, aber vier geaenderte `SKILL.md` (`twin`, `honorarberechnung-sia102`,
`heartbeat`, `brandschutz`), die `CLAUDE.md`, drei Rules und eine neue Projekt-Stammdatei.
Damit kein Frueh-Ausstieg. Drei Befunde, zwei davon im selben Lauf gesetzt.

## SYN-44 — der Fachentscheid und sein unbemerkter Zweitbeleg

Der Wissens-Chef korrigierte am 24.08. (`7e389361`) im Honorar-Skill eine Merkzeile, die fuer
ein Spital ein um 13-17 % zu tiefes q fuehrte. Weil q multiplikativ in den Honorarsatz eingeht,
unterpreist ein zu tiefes q das eigene Angebot — die Korrektur hat direkte Geldfolge. Zugleich
bekraeftigt der Commit drei Norm-Vorbehalte als «weiterhin offener Fachentscheid Raphaels»,
darunter: die Norm SIA 102:2014 kennt das Symbol **n** mit sieben Kategorien n = 0.7-1.3, die
buerointerne Tabelle fuehrt `q` mit sechs.

Die Gegenprobe im Hub foerderte zutage, dass genau dazu seit Wochen ein zweiter, unabhaengiger
Beleg im Haus liegt: `wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md`
(1'439 Zeilen, `established`) fuehrt in Z. 322-325 die Berechnungsfaktoren des Amts fuer
Hochbauten der Stadt Zuerich — «Schwierigkeitsgrad n = 0.7-1.3 (SIA 102/103/108)», also die
Norm-Lesart, aus der Praxis eines realen Bauherrn. Dazu fuenf Faktoren, die der Skill gar nicht
fuehrt: Anpassungsfaktor r, Teamfaktor i, Sonderleistungsfaktor s (bis 1.5), Umbauzuschlag
max. 50 % nach SIA 102/1 und die Reduktionstabelle der aufwandbestimmenden Baukosten bei
Beizug von Fachplanenden (Elektro/HLKKS max. 30 %, Fassade 50 %, Grosskuechen 50-75 %).

Der Artikel weiss, wohin das gehoert: sein §5 heisst woertlich «Honorarwesen AHB — direkt
relevant fuer Skill `honorarberechnung-sia102`» (Z. 245), ein zweites Mal in Z. 838. Der Skill
fuehrte **0 Treffer** auf `AHB`, `planungsgrundlagen` oder `Stadt Z`. Die haeufigste Figur
dieses Skills, hier mit dem Zusatz, dass es um Geld geht.

**Gesetzt (active-with-flagging):** Querverweis an der Vorbehalts-Stelle, mit der Trennung, auf
die es ankommt — der AHB-Wert ist eine **Bauherren-Vorgabe und bindet nur bei AHB-Auftraegen**,
er ist kein Norm-Beleg. Den traegt weiterhin `wissen/normen/destillate/sia-102-2014.md`. Die
Werte der buerointernen Tabelle blieben unangetastet; der Fachentscheid ist Raphaels.

**Warum das kein Doppel von Lauf 09 ist:** Lauf 09 hatte die fehlenden Skill-Rueckkanten auf
diesen Artikel bewusst verworfen, weil sie Altbestand waren. Das war richtig. Neu ist nicht der
Artikel, sondern der Abnehmer — er hat sich im Fenster genau an der Stelle bewegt, zu der §5
etwas beitraegt. Damit greift die Compounding-Klausel.

## SYN-45 — die KB, die niemand findet

Derselbe Sammel-Commit traegt die neue KB `architektur-fachwissen` in die KB-Aufzaehlung der
`CLAUDE.md` ein. Die Messung ueber alle 19 Verzeichnisse unter `wissen/` mit eigener
`CLAUDE.md` zeigte: 18 sind dort genannt, **`claude-code` als einziges nicht**.

Sie ist keine Ruine — eigene `CLAUDE.md` und `CHANGELOG.md`, sechs Wiki-Artikel, letzte
Aenderung 22.08.2026, angelegt am 29.07.2026 mit dem Zweck «Wissen ueber das Werkzeug selbst …
Der JANS AI Hub ruht vollstaendig auf Claude Code». Die Gegenprobe auf einen zweiten
Auffindeweg ergab, dass `wissen/WISSEN-CLAUDE.md` **gar keine** KB-Liste fuehrt (0 Treffer fuer
jede der 19 KBs) und `rollen-map.tsv` KBs ueberhaupt nicht als Typ kennt. Der Wegweiser in
`CLAUDE.md` ist also der einzige Weg, und ausserhalb des nicht importierten
`auto-verbesserungen-archiv.md` verweist kein Skill, kein Agent und keine importierte Rule auf
die KB. Eine Wissensbasis ueber das Werkzeug, die fuer jede Session unsichtbar ist.

**Gesetzt:** Einzeiler in der Aufzaehlung, bewusst knapp (die Zeile faellt in jede Session,
Rule 260719). Danach sind alle 19 KBs gelistet, nachgemessen. Eine Verdrahtung in einzelne
Skills waere hier Kantenzahl statt Erkenntnis — die KB richtet sich an jede Session.

## SYN-46 — die Waechter im Rollen-Register (Entscheid Raphael)

Der neue `tailscale-waechter` (`ec1ee78b`) ist breit verdrahtet — `heartbeat` Check 15, Rule
260824, Chronik, Fristen-Register, launchd-Vorlage — aber ohne Zeile in `rollen-map.tsv`.

Die naheliegende Deutung («Versaeumnis dieses Commits») hielt der Gegenprobe **nicht** stand:
auch `lauf-gate`, `speicher-waechter` und `stationen-watchdog` haben je 0 Registerzeilen. Die
fuenf dort gefuehrten Scripts sind ausnahmslos Mess-Scripts. Es ist eine Gattungsluecke, kein
Einzelfall — und Rule `rollen-taxonomie` Punkt 1 nennt woertlich nur «Skills, Agenten und
Loops», die Script-Zeilen sind eine freiwillige Erweiterung. **Kein Regelverstoss.**

Der messbare Effekt ist real, aber klein: `rollen-bilanz.sh` speist den Bestand aus dem
Register (Z. 59), die Zeit-/Ertragshaelfte aus dem Lauf-Journal (Z. 70). Vier fehlende
maintainer-Bausteine verzerren die Bestandsquote um 4 von 139 Zeilen; im Zeit-Teil gar nicht,
weil die Waechter ueber launchd laufen und nicht ueber `claude-run.sh`.

**Nicht gesetzt.** Das Register ist ausdruecklich «kanonisch, von Hand gepflegt». Vier Zeilen
fuer eine Gattung aufzunehmen, welche die Rule nicht verlangt, ist eine Taxonomie-Entscheidung.
Zwei vertretbare Wege stehen im Register; unentschieden bleibt der Zaehler unsauber, und die
Schieflage waechst mit jedem neuen Waechter.

## Geprueft, ohne Befund

- **`brandschutz` ↔ BSR 103-15:** Rueckzug per 31.08.2025 und der Nachfolger «Stand der
  Technik Papier Teil B» des Fachverbands feusuisse (kein VKF-Dokument, Bezug ueber
  feusuisse.ch) sind im Skill mit Quellverweis eingetragen. Die Kante zeigt vom Abnehmer zur
  Quelle — gerade nicht die Figur «nur der Zulieferer kennt sie».
- **`twin`:** der neue Blind-Zuschnitt der Goldproben steht beidseitig, in `SKILL.md` und in
  `wissen/twin/CLAUDE.md`.
- **Agent `honorar-angebotspruefung`:** fuehrt keine eigenen q-Werte, grenzt die
  Angemessenheitsbewertung in Z. 20 ab und verweist viermal zurueck. Die naheliegende
  Doppelrechnung existiert nicht.
- **KB `architektur-fachwissen`:** ordentlich eingetragen; die vermutete Registrierungsluecke
  in `WISSEN-CLAUDE.md` und `rollen-map.tsv` erwies sich als Register, das es nicht gibt.

## Operativer Nebenbefund (Betriebsschicht, nicht Synergie)

Der native Selfcommit scheitert seit mindestens 12:45 an einem Rebase-Konflikt
(`sync-tasks/log/selfcommit-202608.log`, 17:00: «rebase fehlgeschlagen — abgebrochen,
naechster Lauf versucht erneut»); das NAS-Repo steht auf `main...github/main [voraus 19,
hinterher 51]`. Ein Rebase-Rest liegt **nicht** im Arbeitsbaum (`.git/rebase-merge` und
`-apply` fehlen) — der Abbruch raeumt sauber auf, die Divergenz bleibt. Gehoert in Chronik und
Fristen-Register, hier nur vermerkt, damit der naechste Lauf nicht dieselbe Sackgasse misst.

## Methodisches

Zwei der drei Befunde entstanden erst durch eine **Gegenprobe, die die erste Deutung kippte** —
bei SYN-46 rettete sie vor einem Fehlbefund am neuen Baustein, bei SYN-45 legte sie den
eigentlichen Befund erst frei. Die Regel «ein leeres Suchergebnis ist zuerst eine Aussage ueber
das Werkzeug» hat hier zweimal getragen.
