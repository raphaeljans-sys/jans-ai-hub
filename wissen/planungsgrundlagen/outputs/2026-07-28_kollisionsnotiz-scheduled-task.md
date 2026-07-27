# Kollisionsnotiz — Scheduled Task `planungsgrundlagen-training` zurückgetreten

- **Datum/Zeit:** 2026-07-28, 00:34 (MacBook Pro)
- **Art:** kein Trainingslauf. Bewusster Rücktritt nach Rule `auto-verbesserungen` 260724
  (Kollisionsschutz Lern-/Trainings-Loops, host-interne Zweitinstanz).
- **Keine Run-Nummer belegt**, keine Wiki-/Register-/CHANGELOG-Edits, kein Commit.

## Befund

Beim Pflichtcheck vor Beginn lief auf demselben Host bereits eine zweite Instanz
desselben Loops:

```
PID 97554, Start 00:30, ELAPSED 04:30 zum Prüfzeitpunkt
claude -p "Fuehre EINEN Intensiv-Lauf des Planungsgrundlagen-Trainings aus …
  --permission-mode acceptEdits --max-budget-usd 25 --fallback-model sonnet"
```

Es ist der Dispatch-Run desselben Programms (`training/PROGRAMM.md`, inkl. Sektionen
Verifikations-Stufe, Intensivphase, Token-Vollgas) — also identische Domänen-Rotation,
identische Register, identischer Report-Zielordner.

Die Instanz ist **aktiv**, nicht hängengeblieben. Beleg über die Datei-Mtimes:

| Datei | mtime |
|---|---|
| `wiki/recht-norm-quellenlandkarte.md` | 28.07. **00:34:06** (29 s vor dem Prüfzeitpunkt) |
| `CHANGELOG.md` | 27.07. 23:49:47 |
| `wiki/energie-pv-eignung-typenwahl.md` | 27.07. 23:41:50 |
| `wiki/kartenportale-oereb-kataster-system-zh.md` | 27.07. 23:36:51 |

Die laufende Instanz arbeitet erkennbar die Domäne **Recht/Norm** ab; die drei älteren
Zeitstempel gehören zum vorangegangenen Lauf desselben Abends (Energie + Kartenportale).

## Warum Rücktritt statt Parallelarbeit

Beide Instanzen würden dieselbe Rotation greifen, dieselbe Run-Nummer belegen und
gleichzeitig `curriculum.md`, `QUESTIONS.md`, `INDEX.md` und `CHANGELOG.md` schreiben —
genau der Fall, der am 24.07. zur Rule führte (zwei identische Run-58-Instanzen). Ein
`git`-Schreibzugriff von zwei Seiten hätte zusätzlich die `index.lock` gerissen
(Rules 260724/260726).

Eigene Funde, die zu sichern wären, sind keine entstanden: der Rücktritt erfolgte vor
dem ersten Quellenzugriff, damit kein Token gegen doppelte Arbeit läuft.

## Ableitung für die Taktung (zur Vorlage an Raphael)

Der Scheduled Task und der Dispatch-Run feuern beide kurz nach Mitternacht auf demselben
Host und zielen auf dasselbe Programm. Das ist derselbe Doppel-Taktgeber-Fehler, den
Rule 260727 («Kein zweiter Taktgeber») für Runner ↔ Scheduled Task beschreibt, hier
nur in der Variante Scheduled Task ↔ Dispatch-Run. Solange beide bestehen, ist bei jedem
nächtlichen Lauf eine Instanz Verschwendung.

**Empfehlung:** einen der beiden Auslöser stilllegen — entweder den Scheduled Task
`planungsgrundlagen-training` deaktivieren (dann bleibt der Dispatch-Run mit seinem
$25-Deckel der einzige Taktgeber) oder umgekehrt den Dispatch-Aufruf entfernen. Nach
Rule 260727 ist die Abschaltung erst vollzogen, wenn **beide** Orte nachgezogen sind
(Registry-Eintrag UND der auslösende Script-/Cron-Aufruf) — die reine Dokumentation
genügt nicht.

Entscheid liegt bei Raphael; dieser Lauf nimmt ihn nicht vorweg.

## Was der laufende Lauf liefert

Der Report des Dispatch-Runs erscheint regulär als
`outputs/2026-07-28_training-run<N>.md`; Register und CHANGELOG führt er selbst nach.
Diese Notiz ist bewusst abweichend benannt, damit sie mit keiner Run-Nummer kollidiert.
Persistierung übernimmt der native `nas-selfcommit` (15-Min-Cron) additiv.
