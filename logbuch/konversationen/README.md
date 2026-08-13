# Konversations-Gedaechtnis (Super-Brain-Layer)

Entscheid Raphael 16.07.2026: Alle Claude-Gespraeche, die Raphael von irgendeinem Geraet
fuehrt, werden inhaltlich destilliert und fliessen in das uebergeordnete Monitoring
(Logbuch-Radar-Morgenbriefing) ein — damit z.B. eine Offerten-Besprechung am Mac Mini
am naechsten Morgen im Briefing sachlogisch beruecksichtigt ist.

## Ablage

Pro Tag EIN Destillat: `YYMMDD-konversationen.md` (Dateinamen-Konvention).
Erzeugt vom Scheduled Task `konversations-log` (MacBook Pro, taeglich 06:10),
gelesen vom Scheduled Task `logbuch-radar` (06:45) und von `hub-chef-taeglich` (08:35).

**Zweitlauf am selben Tag: anhaengen, nie ueberschreiben.** Feuert der Task ein zweites Mal
(Nachhol-Sturm nach einem Ausfall, manueller Lauf), existiert die Tagesdatei bereits. Dann
NICHT neu schreiben, sondern zuerst den Stand der bestehenden Kopfzeile lesen, nur die
Sessions ab diesem Stand destillieren und das Ergebnis als eigenen Abschnitt
`# Nachtrag <HH:MM> CEST — Fenster <von> bis <bis>` **anhaengen** (`cat >>`). Danach den
Umfang messen: der Bestand vor der Anhaengestelle muss unveraendert sein (Rule
`auto-verbesserungen` 260811). Belegt am 13.08.2026: der Nachhol-Sturm liess den Task um
01:56 und um 06:13 laufen; das 26-h-Fenster ueberlappte fast vollstaendig, ein Neuschreiben
haette das ausfuehrlichere erste Destillat samt seinen vier Register-Verweisen verworfen.

## Quellen je Lauf

| Quelle | Weg | Abdeckung |
|---|---|---|
| MacBook Pro Sessions | `scripts/konversations-extract.sh` lokal | Claude Code lokal + Cowork |
| Mac Mini Sessions | dasselbe Script via `ssh mini` | Claude Code lokal + Dispatch-Laeufe (dispatch-run.sh) |
| Cloud (claude.ai/code) | `remote-tasks/results/` (Git) | Remote-Task-Ergebnisse |
| Dispatch-Logs | `dispatch/` auf dem NAS | Handy-Auftraege an den Mini |

**Bekannte Grenze:** Chats in der Claude-App auf iPhone/iPad (claude.ai) sind headless
nicht auslesbar — es gibt keine API auf die claude.ai-Chat-Historie. Abgedeckt ist alles,
was ueber Claude Code, Cowork, Dispatch oder remote-tasks laeuft. Soll ein reiner
App-Chat einfliessen, genuegt ein Satz in einer Code-Session («nimm ins Logbuch: …»)
oder ein Dispatch-Auftrag.

## Destillat-Format

Pro besprochenem Thema ein Block:

```
## <Thema> (Station, Datum/Zeit)
- Kern/Entscheid: …
- Offene Punkte / Folgeaktionen: …
- Radar-relevant: ja/nein (Frist? Pendenz? Zusage?)
```

Radar-relevante Punkte uebernimmt der `logbuch-radar` ins Fristen-Register und
ins Morgenbriefing (Sektion «Aus unseren Gespraechen»).
