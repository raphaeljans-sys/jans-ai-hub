---
titel: Energie-Loop — Nebenlauf: Doppeltakt-Kollision wiederholt sich, Bereinigung vom 28.07. hat den falschen Agenten stehen lassen
datum: 2026-07-28
typ: Kollisions-/Strukturbefund (kein Inhaltslauf)
status: Befund, Fix NICHT ausgefuehrt (Entscheid Raphael)
vorlauf: 2026-07-27_energie-nebenlauf-kollision-zweiter-taktgeber.md
---

# Energie-Loop 28.07.2026 — Nebenlauf statt Run 118

## Kurzfassung

Der Scheduled Task `energie-training` startete um **22:38** und traf erneut auf eine bereits
laufende **Zweitinstanz desselben Loops** (PID 43069, Start **22:30:05**, launchd-Agent
`ch.jans.training-energie` → `cron-training-mini.sh energie` → `dispatch-run.sh`, Budget $25).
Nach Rule `auto-verbesserungen` 260724 (Kollisionsschutz) bin ich als spaetere Instanz
**zurueckgetreten**: kein Inhaltslauf, keine Register-Edits, kein `git`. Die Run-Nummer 118 bleibt
unbelegt und gehoert der Erstinstanz.

Das ist die **zweite Nacht in Folge** mit exakt derselben Kollision. Die Prognose des gestrigen
Nebenlauf-Reports («ohne Eingriff wiederholt sich das ab jetzt jede Nacht») ist damit empirisch
bestaetigt — der Doppeltakt ist kein Einzelereignis, sondern der neue Normalzustand.

## Der eigentliche Neubefund: die Bereinigung vom 28.07. hat den kollidierenden Agenten verschont

Heute wurde die launchd-Trainingsflotte auf dem Mac Mini ausdruecklich untersucht und bereinigt
(Rule `auto-verbesserungen` 260727, Nachtrag 28.07. — «es sind DREI Orte, nicht zwei»). Ergebnis
dieser Bereinigung, am Dateibestand belegt:

| Agent | Zustand nach der Bereinigung 28.07. | Kollidiert mit App-Task? |
|---|---|---|
| `ch.jans.training-plg` | **abgeschaltet** (`.plist.disabled-260728`) | ja (`planungsgrundlagen-training`) |
| `ch.jans.training-energie` | **aktiv gelassen**, geladen (PID 43041) | **ja** (`energie-training`, taeglich ~22:38) |
| `ch.jans.training-normen` | plist liegt scharf im Ordner, nicht geladen | derzeit nein |

Die Rule-Begruendung fuer die Ungleichbehandlung lautet woertlich: `training-plg` abgeschaltet wegen
**27 Delta-Null-Laeufen in Folge**, `training-energie` «bewusst aktiv gelassen (**produktiv**)».

Damit wurde die Entscheidung ueber die Abschaltung am Kriterium **«liefert der Loop noch Stoff?»**
getroffen — und nicht am Kriterium **«existiert fuer diesen Loop ein zweiter Taktgeber?»**. Genau
das ist der Fehlschluss: Rule 260727 verbietet den zweiten Taktgeber **unabhaengig** von der
Ergiebigkeit des Loops. Ein produktiver Loop mit zwei Taktgebern ist nicht harmloser als ein
unproduktiver — er ist **teurer**, weil beide Instanzen echte Arbeit doppelt tun statt beide
folgenlos leerzulaufen.

Der Nachbar-Agent im selben Ordner wurde angefasst, der kollidierende blieb stehen. Der gestrige
Nebenlauf-Report, der die Kollision fuer genau diesen Agenten benannt und den Fix vorformuliert
hatte, ist in die Bereinigung offenkundig nicht eingeflossen.

## Verallgemeinerte Lehre (Vorschlag zur Rule-Schaerfung, nicht selbst eingetragen)

> Wird eine Flotte automatischer Taktgeber bereinigt, entscheidet ueber die Abschaltung eines
> Doppel-Taktgebers **allein die Frage, ob ein zweiter Taktgeber fuer denselben Loop existiert** —
> nie die Ergiebigkeit des Loops. Die Delta-Null-Zaehlung (Rule 260727, Leerlauf-Waechter) ist ein
> **eigenstaendiges** Kriterium fuer die Stilllegung eines ganzen Loops und darf nicht als Filter
> dafuer dienen, welcher Doppeltakt bereinigt wird. Wer beim Aufraeumen einen Agenten anfasst,
> prueft die **uebrigen Agenten desselben Ordners** auf denselben Defekt, statt nur den auffaelligen
> zu behandeln.

Nicht selbst in `rules/auto-verbesserungen.md` eingetragen: dieser Lauf ist ein Rueckzugslauf ohne
Schreibrecht auf geteilte Register, und der Eintrag wuerde eine heute bewusst getroffene,
dokumentierte Entscheidung korrigieren. Das gehoert Raphael.

## Beleg, dass der Rueckzug auch sachlich richtig war

Die Erstinstanz arbeitet produktiv und hat seit 22:30 als erste Datei genau
`destillate/sia-386-bacs-gebaeudeautomation.md` in Bearbeitung — das ist **woertlich Prioritaet 1
des Run-117-Reports** («Cross-KB-Nachzug: fehlender Geltungsstatus der MuKEn-2025-2'000-m²-Schwelle
ergaenzen»). Ein paralleler Inhaltslauf meinerseits haette also erneut exakt dieselbe Datei
bearbeitet — wie schon in der Nacht zuvor. Zwei Naechte, zwei Mal dieselbe Doppelarbeit vermieden.

## Kosten des Zustands

Der launchd-Weg feuert taeglich mit **$25**-Budget (Standard-Deckel des Dispatch ist $5), zusaetzlich
zum App-Task. Solange das Wochenkontingent traegt, laufen beide durch; ist es knapp, konkurrieren
sie um dieselbe Ressource. Der historische Praezedenzfall steht in Rule 260727: die Doppellaeufe
vom 25.07. fuhren das Wochenkontingent leer (Totalausfall 26.07. 00:53 bis 27.07. 12:00).

## Empfohlener Fix — unveraendert, NICHT ausgefuehrt

Ein Eingriff in die Autostart-Definitionen ist eine Konfigurationsaenderung, die dieser Task nicht
beauftragt, und der betroffene Prozess laeuft gerade. Nach Rule 260727 ist eine Deaktivierung erst
vollzogen, wenn **beide Orte** nachgezogen sind (Agent entladen **und** plist entschaerft), sonst
kehrt sie beim naechsten Login/Reboot zurueck:

```bash
launchctl bootout gui/$(id -u)/ch.jans.training-energie
cd ~/Library/LaunchAgents && mv ch.jans.training-energie.plist ch.jans.training-energie.plist.disabled-260728
mv ch.jans.training-normen.plist ch.jans.training-normen.plist.disabled-260728
```

Der laufende Dispatch sollte vorher zu Ende laufen (er schreibt Register und CHANGELOG). Danach
bleibt je Loop genau **ein** Taktgeber: der App Scheduled Task, der die gepflegte SKILL.md mit
Modell-Politik und Leitplanken traegt. `training-normen` ist mitzunehmen, weil die plist scharf im
Ordner liegt und beim naechsten Load denselben Defekt erzeugt.

## Regel-Konformitaet dieses Laufs

- **Rule 260724 (Kollisionsschutz):** Zweitinstanz vor jeder Aktion erkannt → zurueckgetreten. Keine
  Edits an `destillate/INDEX.md`, `training/pdf-inventar.md`, `wiki/BAUHERREN-FAQ.md`,
  `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `training/curriculum.md`, `raw/_INGESTED.md`, `CHANGELOG.md`.
  Keine Run-Nummer belegt.
- **Rule 260726 / `sync-kanonische-quelle`:** kein `git` ueber den SMB-Mount. Diese rein additive
  Datei uebernimmt der native `nas-selfcommit` (15-Min-Cron) kollisionsfrei.
- **Rule 260728 (Lauf-Gate):** `scripts/lauf-gate.sh energie-training` vorab aufgerufen, Exit 0
  (Speicher/Prozesszahl im Rahmen). Das Gate zaehlt Speicher und Prozesse — eine **fachliche**
  Loop-Kollision erkennt es baulich nicht; dafuer ist der Check nach Rule 260724 zustaendig.
- **Rule 260727 (Leerlauf-Waechter):** dies ist **kein** Delta-Null-Lauf. Der Energie-Loop ist
  inhaltlich weiter produktiv (Run 117: sechs neue Destillate, F172–F177); gemeldet wird ein
  struktureller Doppeltakt, kein fehlender Stoff.

## Offen fuer Raphael

1. **Entscheid Doppeltakt `energie`** — zweite Nacht in Folge wirksam, taeglich $25 zusaetzlich.
   Der 28.07.-Bereinigungslauf hat diesen Agenten bewusst verschont, aber ohne Kenntnis der
   Kollision. Empfehlung: launchd-Agent entfernen, App-Task behalten.
2. **`ch.jans.training-normen`** — plist scharf im Ordner, beim naechsten Load dieselbe Doppelung.
3. Unveraendert aus Run 116/117: die **fuenf gebuendelten Kaufentscheide** (B1-Konsolidierung,
   SWKI VA105-01, SIA 385/1, SIA 385/2, SIA 384.354) warten jetzt im **zwanzigsten** Lauf in Folge.
4. Meta-Punkt M2 (eigenstaendiger Skill «energie») seit Run 45 spruchreif.
