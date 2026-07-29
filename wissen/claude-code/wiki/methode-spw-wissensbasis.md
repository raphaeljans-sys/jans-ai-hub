---
title: Methode «SPW» — die Video-Blaupause des JANS-Wissens-Layers
status: established
last_updated: 2026-07-29
sources: [OneDrive 03 Prompteingaben/Methode SPW/ (30 Screenshots IMG_4942 bis IMG_4972, IMG_4954 fehlt), Analyse-Lauf 29.07.2026]
links: [[methoden-register]], [[lecture-260729-anthropic]], [[INDEX]]
---

# Methode «SPW» — die Video-Blaupause des JANS-Wissens-Layers

Destillat der 30 Screenshots im OneDrive-Ordner
`AD - 01 Geschaeftsfuerung/JANS AI/03 Prompteingaben/Methode SPW/`.
Die Screenshots dokumentieren ein YouTube-Video, in dem eine selbstverbessernde
persoenliche Wissensbasis («Second Brain») mit Claude als KI-Bibliothekar gebaut wird —
komplett in Claude Cowork, ohne Obsidian, ohne Datenbank. Die Methode geht auf einen
X-Post von Andrej Karpathy zurueck (IMG_4972: «Karparthy's X Post that started it»).

**Zum Namen:** «SPW» ist nur das Wasserzeichen unten rechts im Video (IMG_4942/4943/4967),
mutmasslich die Initialen des Kanalinhabers («bettercreating…», Referent heisst in den
Beispielen «Simon»). Ein Methodenname «SPW» kommt auf keiner Folie vor. Kanal-URL und
voller Name sind offen (siehe [[QUESTIONS]]).

## Die Methode in Kuerze

1. **Architektur:** 3 Ordner + 1 Datei (IMG_4944/4945): `raw/` («Your junk drawer …
   Don't organise it»), `wiki/` («Where Claude writes the organised version. You never
   edit by hand»), `outputs/` («Answers, briefings, reports»), `CLAUDE.md` als Schema.
2. **Rollentausch (Karpathy-Prinzip, IMG_4958):** «You don't have to be the librarian
   anymore.» Der Mensch kippt Material hinein und stellt Fragen; die KI organisiert,
   verlinkt, indexiert und haelt Ordnung.
3. **Autonomie-Spektrum (IMG_4950):** Cautious / Active / Aggressive librarian.
   «Karpathy's setup leans aggressive.» Der Referent waehlt «active … between active and
   aggressive … using scheduled tasks».
4. **Fuenf Schritte (IMG_4942/4957):** Set up (5 Min) · Dump (10 Min) · Build (30 Min) ·
   Compounding Loop (laufend: «Every query makes the next better») · Health check
   (monatlich).
5. **Health-Check-Skill (IMG_4965 bis 4971):** zwei Phasen (Phase 1 Audit immer, auch
   unbeaufsichtigt; Phase 2 Aktionen nur interaktiv), sieben Audits, Report nach
   `outputs/`, 1-Zeilen-Summary ins CHANGELOG, im Chat nur Zahlen + Top-3.

## Abgleich mit dem Hub: bereits 1:1 implementiert

Der JANS-Wissens-Layer ist die direkte Umsetzung dieses Videos — bis in die
Formulierungen hinein (im Video sagt Claude woertlich «active-with-flagging», dieselbe
Wortwahl wie in der Rule):

| Video-Element | Hub-Umsetzung |
|---|---|
| 3 Ordner + CLAUDE.md je KB | `wissen/<kb>/{raw,wiki,outputs}` + `CLAUDE.md`, Meta-Schema `wissen/WISSEN-CLAUDE.md` |
| Librarian-Rolle, Autonomie «active», CHANGELOG-Pflicht, Pause vor Destruktivem | Rule `rules/wissens-bibliothekar.md` |
| Compounding-Loop (jede Antwort als Report, Rueckfluss ins Wiki) | Rule `wissens-bibliothekar.md`, Abschnitt Compounding-Loop |
| Health-Check-Skill, 2 Phasen, 7 Audits (Widersprueche, Backlinks, Claims-Stichprobe 3/Artikel, RAW-Coverage via `_INGESTED.md`, Staleness 90 Tage + neuere Quelle, Schreibregeln, Promotion) | Skill `skills/wissenscheck/SKILL.md` (Audits A bis G, praktisch wortgleich) |
| Monatlicher Takt via Scheduled Task | Task `wissenscheck-monatlich` (1. des Monats) |
| Mehrere KBs unter einem Dach mit uebergeordnetem Schema | `wissen/` mit 19 KBs + `WISSEN-CLAUDE.md`, Aufsicht `wissens-chef` (taeglich) |

**Befund der Nachpruefung 29.07.2026:** Kein inhaltliches Delta zwischen Video und
Hub-Implementation gefunden. Was am 29.07. fehlte, war einzig der Quellenverweis: weder
die KB-Struktur noch `wissenscheck` nannten diese Screenshots als Ursprung. Das ist mit
diesem Artikel und dem [[methoden-register]] geschlossen.

## Merkenswerte Original-Definitionen (fuer Nachscharfungen)

- Widerspruch (Audit A): «Both articles make a claim about the same question, and the
  claims point in opposite directions, and neither article acknowledges or reconciles
  the other.»
- Staleness (Audit E): aelter als 90 Tage UND seither neue raw-Quelle — «Pure age isn't
  a problem.»
- Claim-Pruefung (Audit C): «three claims per article — full verification of every claim
  is too expensive monthly.»
- Chat-Disziplin: «Print a tight summary into chat — counts only, plus the top three
  findings … Do not dump the whole report.»

## Grenzen der Quelle

Sekundaerquelle (YouTube-Screenshots, kein Transkript); Audit C nur angeschnitten, das
siebte Audit auf den Bildern nicht lesbar; Kanal/Referent nicht abschliessend
identifiziert. Fuer den Hub unkritisch, da die eigene Implementation laengst weiter
dokumentiert ist.
