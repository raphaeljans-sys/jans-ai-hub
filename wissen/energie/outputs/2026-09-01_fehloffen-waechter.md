---
titel: "E-R171-1 mechanisiert: Werkzeug fehloffen-waechter.py"
datum: 2026-09-01
lauf: "Nachtschicht Mac Mini, Versuchs-Slot 13:30"
---

# E-R171-1 mechanisiert: Werkzeug `fehloffen-waechter.py`

## Auftrag

Nachtschicht-Zyklus, Prioritaet 4 (naechste faellige Trainingslektion). Run 171 (30./31.08.2026)
hatte fuer den naechsten Lauf ausdruecklich «E-R171-1 zuerst» empfohlen: ein methodischer Befund,
der eine ganze Klasse kuenftiger Laeufe betrifft und vor dem naechsten PDF-Transfer bearbeitet
werden sollte.

## Befund E-R171-1 (Ausgangslage)

Zwei Laeufe in Folge (170, 171) haben je einen QUESTIONS-Eintrag der Form «X noch nicht
gelesen/destilliert» bearbeitet, obwohl die Widerlegung woertlich im Frontmatter-Feld `gelesen:`
eines eigenen Destillats stand — ohne dass eine Volltextsuche noetig gewesen waere. Beide
Fehleintraege stammten aus demselben Ursprungslauf (169) und derselben Quellenfamilie. Der
Vorschlag aus Run 171: ein kleiner Waechter, analog `datenstand-waechter.py`, der QUESTIONS nach
den drei Formulierungen durchsucht und gegen die Destillat-Frontmatter abgleicht.

## Umsetzung

Neues Werkzeug `wissen/tools/fehloffen-waechter.py` (siebtes im Wissens-Layer, Frage
«Redundanz»). Fuer jeden offenen (`- [ ]`) QUESTIONS-Eintrag mit einer der drei Formulierungen:

1. Fett gesetzte und `[[verlinkte]]` Begriffe im Eintrag extrahieren.
2. Gegen die Frontmatter-Felder `quelle`/`titel` sowie den Dateinamen jedes Destillats abgleichen
   (zwei Wortarten: Sachwoerter ab vier Buchstaben, plus Grossbuchstaben-Abkuerzungen und
   Versions-/Jahresmarken — der reale Fall E-R169-2 «BD LEG – CH 2025 V2» besteht fast nur aus
   Letzteren).
3. Bei mindestens zwei gemeinsamen Woertern/Codes UND einem `gelesen:`-Feld ohne Teillese-Marker
   («nicht vollst…», «nur auszugsweise», «Seiten X-Y (Teil») gilt der Treffer als Verdacht.

**Fehlalarm gefunden und behoben.** Ein erster Testlauf gegen die echte KB `energie` meldete einen
falschen Treffer: E-R171-2 erwaehnt beilaeufig «AHB-Merkblatt», und «ahb»+«merkblatt» kommen in
rund einem Fuenftel aller energie-Destillate vor — zu generisch, um zwei Dokumente zu
unterscheiden. Behoben mit einem Dokumentfrequenz-Filter (Woerter, die in mehr als 5 % der
Destillate einer KB vorkommen, zaehlen nicht mehr fuer den Abgleich). Der Filter braucht kein
Domain-Tuning und passt sich automatisch an jede KB-Groesse an.

## Verifikation

| Testfall | Erwartung | Ergebnis |
|---|---|---|
| Synthetischer Nachbau «BD LEG – CH 2025 V2» (offen, Destillat vollstaendig gelesen) | 1 Treffer | **bestanden** |
| Derselbe Eintrag, aber abgehakt (`- [x]`) | kein Treffer | **bestanden** |
| Thematisch unabhaengiger offener Eintrag | kein Treffer | **bestanden** |
| Destillat mit Teillese-Marker im Feld `gelesen:` | kein Treffer | **bestanden** |
| Realer Fehlalarm «AHB»/«Merkblatt» vor dem DF-Filter | kein Treffer nach Fix | **bestanden** |
| Volllauf `energie` + `normen` (die beiden KBs mit `destillate/`) | plausibel 0, da E-R169-1/-2 bereits geschlossen | **0 Befunde** |

## Ergebnis

- `wissen/tools/fehloffen-waechter.py` — neues Werkzeug, LESEND, Exit 1 bei Befunden.
- `wissen/tools/README.md` — Tabelle auf sieben Werkzeuge erweitert, Abschnitt mit Motivation,
  Funktionsweise, bewussten Grenzen und Abnahmestand.
- `wissen/energie/wiki/QUESTIONS.md` — E-R171-1 auf ✓ gesetzt.
- `wissen/energie/CHANGELOG.md` — Eintrag ergaenzt.

## Fuer den naechsten Lauf

Kein TRANSFER/VERDICHTUNG in diesem Zyklus — bewusst die P1-Empfehlung aus Run 171 statt der
naechsten PDF-Destillation bearbeitet. Offen bleibt der P3-Rest der 169er-Reihe: **E-R169-4**
(zwei Minergie-Broschueren + Anwendungshilfe 2026.2), **E-R169-5** (ElCom-Weisung 4/2025
Volltext), **E-R169-6** (VSE-HER-Anpassung) — bei allen dreien zuerst den Bestand pruefen, jetzt
mit `python3 wissen/tools/fehloffen-waechter.py energie` als zusaetzlicher Gegenprobe, bevor
beschafft wird. Ausserdem offen: E-R171-2 (SLG 305 Teil 5 / EN 12193 nur sekundaer belegt, P2),
E-R171-3 (Figur 1 nicht erschlossen, P3).

## Bezug zur laufenden P1-Pendenz (NAS↔GitHub-Sync)

Nicht Teil dieses Fachauftrags: die bestehende P1-Divergenz (Befund B6,
`docs/konzepte/260830-Laufzeitschicht-Umbau/SPEC.md`) ist unveraendert offen und wartet auf
Raphaels Einzelentscheid; dieser Lauf hat sie nicht erneut diagnostiziert oder selbst aufgeloest
(Rule `interaktive-eingriffe.md` Punkt 3).
