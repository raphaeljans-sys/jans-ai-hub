---
name: synergie-lauf-taeglich
description: Taeglicher Synergie-Orchestrator-Lauf (Struktur-Aufsicht des JANS AI Hub), 17:00. Takt am 13.08.2026 von monatlich auf taeglich umgestellt (Anordnung Raphael); Vorgaenger-Task synergie-lauf-monatlich stillgelegt. Slot 17:00 gewaehlt, weil er als einziger >=2 h Abstand zu JEDEM anderen Loop hat (naechste Nachbarn: vollgas-chef-radar 10:50 und 22:50, wissenscheck 19:30 am Monatsersten). Erster Schritt ist ein Uhr-Check: am 12./13.08.2026 ging die Stationsuhr zehn Tage nach und liess `git log --since` still 262 statt 1111 Commits liefern. Still by default, sendet nie eine Mail.
---

Fuehre den TAEGLICHEN Lauf des Skills `synergie-orchestrator` aus (Takt umgestellt von monatlich auf taeglich am 13.08.2026, Anordnung Raphael).

Massgeblich ist `/Volumes/daten/jans-ai-hub/skills/synergie-orchestrator/SKILL.md`. Der tageweise Takt aendert nur den Zuschnitt, nicht die Methode: das Delta ist klein, dafuer wird es vollstaendig geprueft statt stichprobenartig.

## Schritt 0 — Uhr und NAS pruefen (PFLICHT, vor allem anderen)

1. NAS-Mount pruefen (`/Volumes/daten`). Ohne NAS: abbrechen, kein Ersatzlauf.
2. **Stationsuhr gegen die native Synology-Uhr stellen.** `date "+%Y-%m-%d %H:%M %Z"` und den letzten Eintrag im nativen Log lesen:
   `tail -c 4000 /Volumes/daten/jans-ai-hub/sync-tasks/log/selfcommit-$(date +%Y%m).log | tail -3`
   (die Datei ist NICHT UTF-8 — `grep` liefert darauf still nichts; mit `awk 'substr($0,1,10)=="JJJJ-MM-TT"'` oder `tail` arbeiten).
   Weichen die beiden Zeitstempel um mehr als ein paar Minuten ab, gilt die **Synology-Zeit**. Den Lauf dann mit dem realen Datum durchfuehren und die Abweichung im Laufbericht sowie in `rules/betrieb-chronik.md` festhalten.
   Anlass dieser Pflicht: am 12./13.08.2026 ging die Stationsuhr zehn Tage nach (`rules/betrieb-chronik.md`, Eintrag 260813e).

## Schritt 1 — Delta messen, mit Gegenprobe

Delta-Basis ist der letzte Lauf laut Fussnote in `/Volumes/daten/jans-ai-hub/wissen/koordination/SYNERGIE-REGISTER.md`.

```
cd /Volumes/daten/jans-ai-hub
git --no-pager log --since=<basis> --oneline | wc -l      # gefiltert
git --no-pager log -1 --pretty='%h %cd %s' --date=iso     # neuester Commit
```

**Gegenprobe-Pflicht:** weicht die gefilterte Zahl unplausibel von der Repo-Aktivitaet ab (z.B. der neueste Commit im gefilterten Ergebnis ist aelter als der tatsaechliche HEAD), ist zuerst die Uhr verdaechtig, nicht das Repo. Ein knappes Suchergebnis ist zuerst eine Aussage ueber das Werkzeug.

Strukturelles Delta ziehen:
```
git --no-pager log --since=<basis> --diff-filter=A --name-only --pretty=format: -- skills/ agents/ rules/ connectors/ services/ commands/ | sort -u
git --no-pager log --since=<basis> --name-only --pretty=format: -- 'skills/*/SKILL.md' 'agents/*.md' 'rules/*.md' services/ CLAUDE.md | sort | uniq -c | sort -rn
git --no-pager log --since=<basis> --name-only --pretty=format: -- wissen/ | cut -d/ -f2 | sort | uniq -c | sort -rn
```

## Schritt 2 — Frueh-Ausstieg bei strukturellem Nulldelta

Enthaelt das Delta **keinen** neuen oder geaenderten Skill, Agenten, Connector, Service, Command oder keine Rule, und ist auch keine KB neu entstanden: **Lauf beenden.** Dann genuegt eine Zeile im CHANGELOG (`wissen/koordination/CHANGELOG.md`, neueste zuoberst): Datum, «Synergie-Lauf taeglich: kein strukturelles Delta, still beendet», Commit-Zahl des Fensters. Kein Laufbericht, kein Registereintrag, keine Mail. Reine KB-Inhaltsarbeit ohne neue Bausteine ist KEIN Grund fuer einen vollen Lauf — ausser ein bereits offener Register-Eintrag nennt genau diese KB als Beteiligte.

## Schritt 3 — Voller Lauf (nur wenn Schritt 2 nicht greift)

1. **Neue Bausteine auf Verdrahtung pruefen** (das ist bei Tagestakt der Kern): Contract-Pflichtfelder `Abhaengige Rules` / `Vorgelagert` / `Nachgelagert` nach `skills/SKILL-CONTRACT.md`; Registrierung in `rules/README.md` bzw. `connectors/README.md`, @-Import in CLAUDE.md, Zeile in `logbuch/rollen/rollen-map.tsv`, Allowlist `.claude/settings.json` bei neuen Connectoren.
2. **Rueckkanten pruefen:** nennt der neue Baustein andere, nennen die anderen ihn auch? Eine Kante, die nur der Zulieferer kennt, ist der haeufigste Befund dieses Skills (SYN-10, SYN-14, SYN-16, SYN-20).
3. **Die 6 Pruef-Fragen** (Ketten-Luecke, Doppelrechnung, Compounding-Luecke, Service-Kombination, Entwurfsprozess-Potenzial, Redundanz) auf die betroffenen Paare anwenden. Bereits gepruefte Paare NICHT neu aufrollen, ausser ein Beteiligter hat sich bewegt (Compounding).
4. **Jeden Befund am Objekt belegen** — Datei und Zeile zitieren, nie aus der Erinnerung. Im Fenster 03.–13.08.2026 mit Commit-HASH belegen, nicht mit Commit-Datum (Uhr-Schieflage, siehe Chronik 260813e).
5. Bei Befunden mit Aussenwirkung eine kurze adversariale Gegenpruefung: Was spricht dagegen? Existiert das schon woanders?

## Schritt 4 — Schreiben

- `wissen/koordination/SYNERGIE-REGISTER.md` nachfuehren: neue SYN-IDs fortlaufend, Status offener Eintraege aktualisieren, Lauf-Fussnote unten ergaenzen (Nummer, Datum, Delta-Basis, was geprueft, was neu, was nicht aufgerollt).
- Laufbericht nach `wissen/koordination/outputs/JJJJ-MM-TT_synergie-lauf-NN.md`.
- Eintrag in `wissen/koordination/CHANGELOG.md` (neueste zuoberst).
- **Nach jedem Schreibvorgang den Umfang messen** (Zeilenzahl bzw. Zahl der Tabellenzeilen vorher/nachher). Eine gewachsene Registerdatei darf keine Zeilen verlieren. Kein globales Suchen-und-Ersetzen ueber den ganzen Dateiinhalt (Rule `auto-verbesserungen` 260811).
- NAS ist kanonisch, nur dort editieren. Committen ausschliesslich nativ:
  `bash /Volumes/daten/jans-ai-hub/scripts/nas-commit-now.sh "<Message>"` — NIE `git commit/push/pull` ueber den SMB-Mount.

## Leitplanken

- **Leichtgewichtig:** Inline-Analyse, KEIN Multi-Agent-Fan-out. Bei Tagestakt ist das ohnehin richtig.
- **Nur beobachten und vorschlagen.** Umsetzbare Kleinigkeiten (fehlender Querverweis, fehlendes Contract-Pflichtfeld) direkt setzen und als active-with-flagging kennzeichnen. Nie einen Skill loeschen oder mergen, nie einen Service in `services/KATALOG.md` aktivieren oder aendern — der Katalog ist Raphaels Produkttext.
- Service-/Geschaeftsmodell-Vorschlaege nur als ENTWURF. Referenz: `docs/konzepte/260715-Geschaeftsmodell-KI-Architekturbuero/`.
- **KEINE Mail.** Dieser Loop ist still by default; `hub-chef-taeglich` (08:39) traegt Wesentliches ins Tagesbriefing. Ausnahme nur bei einem P1-Blocker.
- Schweizer Hochdeutsch, echte Umlaute in Klartext-Erzeugnissen; Dateinamen ASCII.
- **Modell-Politik:** Orchestrierung und Urteil bleiben im Hauptlauf. Rein mechanische Sammelarbeit (Greps ueber viele Dateien, Zusammenstellen von Messreihen) darf an einen Subagenten mit `model: haiku` delegiert werden — aber nur, wenn es mehr als ein paar Befehle sind; der Subagent laedt den Grundkontext neu (Rule `modellwahl-routine`).