---
title: Synergie-Lauf 18 (25.08.2026) — ein neuer Baustein, drei Kanten nachgezogen
status: established
last_updated: 2026-08-25
sources:
  - git-Log NAS-Repo, Fenster 24.08.2026 17:10 bis 25.08.2026 17:10 (124 Commits)
  - wissen/koordination/SYNERGIE-REGISTER.md (SYN-47 bis SYN-49, Fussnote Lauf 18)
links:
  - "[[SYNERGIE-REGISTER]]"
---

# Synergie-Lauf 18 — 25.08.2026

Tagestakt, leichtgewichtig, inline. Delta-Basis 24.08.2026 17:10 (Lauf 17), Fenster 24,0
Stunden, 124 Commits, HEAD `b4aa253d5`.

## Schritt 0 — Uhr und NAS

NAS gemountet. Station `2026-08-25 17:10 CEST`, nativer Synology-Log
`2026-08-25T17:00:06 push OK`. Abweichung im Minutenbereich, kein Umdatieren noetig.

Der operative Nebenbefund aus Lauf 17 hat sich erledigt: der Selfcommit scheiterte am
24.08. ab 12:45 an einem Rebase-Konflikt, das NAS-Repo stand auf
`main...github/main [voraus 19, hinterher 51]`. Heute meldet der Log durchgehend «push OK»
und `git status -sb` zeigt `main...github/main` ohne Divergenz. Kein Nachtrag noetig.

## Schritt 1 — Delta, mit Gegenprobe

Gegenprobe bestanden: aeltester Treffer im Fenster `cf632451c` (24.08. 17:15) schliesst
lueckenlos an die Delta-Basis an, juengster ist der HEAD selbst. Keine Uhr-Schieflage.

Strukturell: **ein** neuer Baustein, `commands/vermaschung.md` (Commit `3de6139c8`,
24.08. 18:37, 45 Zeilen) samt `scripts/vermaschungs-test.sh` (18'254 Bytes). Geaendert:
`rules/betrieb-chronik.md` (7 Commits), `skills/heartbeat/SKILL.md` (+23/0, Check 16),
`skills/honorarberechnung-sia102/SKILL.md` (+12/0) und `CLAUDE.md` (2/1) — die letzten
beiden sind die Umsetzungen von SYN-44 bis SYN-46 aus Lauf 17, also eigene Arbeit,
kein neues Delta. `rules/jans-dna-facetten.md` 33/31.

Schritt 2 (Frueh-Ausstieg) griff nicht: ein neuer Command ist strukturelles Delta.

## Die drei Befunde

**SYN-47 — der neue Baustein steht in keiner Session-sichtbaren Liste.** 11 von 13 Commands
stehen in der Command-Tabelle der `CLAUDE.md`, `/vermaschung` nicht. Sonst ist er gut
verdrahtet: `connectors/WEGE.md` Z. 60 fuehrt ihn mit Rangfolge und der belegten Abgrenzung
zu `stationen-watchdog.sh`, `rules/betrieb-chronik.md` traegt den Bauentscheid 260824f.
Es fehlt genau der Ort, an dem eine Session ihn ohne Suche findet. Nachgetragen (1/0).

**SYN-48 — der Befehl, der die Falle traegt, warnt nicht vor ihr.** `/vermaschung` grenzt
sich ausdruecklich gegen `/station-status` ab («das bleibt gruen, waehrend sie von aussen
unerreichbar ist»); zurueck verweist nichts. Schwerer wiegt, was stattdessen dort steht:
die Anweisung «ist der Status aelter als 30 Min: Station vermutlich offline» legt im
Umkehrschluss nahe, frisch sei in Ordnung. Genau diese Lesart verdeckte den viertaegigen
Tailnet-Ausfall des Mac Mini vom 20. bis 24.08.2026, denn die Statusdatei wird ueber den
LAN-SMB-Mount geschrieben und blieb frisch. Warn-Absatz gesetzt (8/0), die
30-Minuten-Regel selbst unangetastet — sie stimmt fuer ihre eigene Frage.

**SYN-49 — der Skill wuchs auf 16 Checks, das Script steht bei acht.** `scripts/heartbeat.sh`
hat 306 Zeilen, acht Checks und als letzten Commit `50f4553a9` vom 13.08.2026, also vor den
Checks 14, 15 und 16. Die SKILL.md sagt dennoch ohne Einschraenkung «Das Heartbeat-Script
kann direkt ausgefuehrt werden» und endet auf «STATUS: ✅ Alles OK». Vorbehalt gesetzt
(15/0, inkl. Rueckkante `/vermaschung`), kein Eingriff ins Script.

## Was die Gegenpruefung verhindert hat

Vier Nullbefunde, die ohne Messung Befunde geworden waeren:

**Rollen-Register.** Die fehlende Zeile fuer `/vermaschung` sah nach einer Contract-Luecke aus.
Gemessen stehen nur 3 von 13 Commands in `rollen-map.tsv`, und Rule `rollen-taxonomie` Ziff. 1
verpflichtet «Skills, Agenten und Loops», nicht Commands. Der neue Baustein weicht vom
Normalfall nicht ab — ein Befund waere hier Kantenzahl statt Erkenntnis gewesen.

**`WEGE.md`.** Vollstaendig verdrahtet, keine Registrierungsluecke.

**`scripts/heartbeat.sh.VORSCHLAG-260825`.** Zwei Fassungen desselben Bausteins im
versionierten Repo sehen nach Redundanz aus. `logbuch/fristen.md` fuehrt sie samt Grund
(der Auto-Mode-Klassifikator blockierte den Schreibzugriff auf das Script) korrekt in der
Betriebsschicht. Der Fristen-Eintrag misst die acht Checks bereits selbst — SYN-49 zieht
deshalb bewusst nur die Folge fuer die Skill-Doku, nicht den Betriebspunkt.

**`scripts/git-divergenz.sh`.** In drei Dateien registriert, keine Luecke.

## Aufgerollt, obwohl frueher offen

`rules/jans-dna-facetten.md` hat sich bewegt, damit greift die Compounding-Klausel fuer
SYN-43 (Anrede-Klausel doppelt gefuehrt, importierte Fassung groeber als die nicht
importierte). Ergebnis: kein neuer Befund. Der Verweis-Nachtrag aus Lauf 16 steht
unveraendert, und die Sachfrage haengt am ausstehenden Entscheid Raphaels
(`wissen/twin/wiki/QUESTIONS.md` 260821 #1, 260822b #1). Ein Aufsichtslauf entscheidet ihn
nicht. Status bleibt «teilweise umgesetzt».

## Schreib-Kontrolle

Alle Werte mit `git diff --numstat` gemessen, jeder Anker vor dem Schreiben auf Trefferzahl 1
assertiert, kein globales Suchen-und-Ersetzen (Rule `auto-verbesserungen` 260811):

| Datei | numstat | Zeilen |
|---|---|---|
| `CLAUDE.md` | 1/0 | 306 → 307 |
| `commands/station-status.md` | 8/0 | 32 → 40 |
| `skills/heartbeat/SKILL.md` | 15/0 | 365 → 380 |
| `wissen/koordination/SYNERGIE-REGISTER.md` | 61/0 | 775 → 835 (46 → 49 Tabellenzeilen) |

Keine Datei hat Zeilen verloren, alle vier Eingriffe rein additiv (active-with-flagging).
Keine Mail — dieser Loop ist still by default (Rule `auto-verbesserungen` 260803); kein
P1-Blocker, kein Sendegrund.
