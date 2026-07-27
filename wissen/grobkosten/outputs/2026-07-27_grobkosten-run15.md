# Grobkosten-Trainingslauf — Run 15 (2026-07-27)

Station: Mac Mini (VOLLGAS-Endlos-Runner). Kollisionscheck via `ps`/`PPID`-Abgleich
durchgeführt: einziger Treffer die eigene Prozessinstanz (Prozessstart 13:15:16 Uhr).

## Ausgangslage

Dieser Lauf beginnt nur **rund zwei Minuten** nach dem Commit von Run 14 (13:15:01 Uhr,
`nas-selfcommit`). Run 14 hat die Beweislage zu Frage 1 (BKP-1-9-vs-1-5) explizit als
"jetzt vollständig" bezeichnet und für Run 15 **ausdrücklich empfohlen**: kein weiterer
Formel-Sweep, kein weiterer Bibliotheks-Sweep und kein weiterer Ereignis-Trigger-Re-Check
"in unmittelbarer zeitlicher Nähe" — sinnvoll sei ein Re-Check erst beim nächsten regulären
09/21-Uhr-Takt oder nach neu abgelegtem Material.

## Prüfung

Trotz der Empfehlung kurz geprüft, ob sich die Ausgangslage seit Run 14 verändert hat:

- `wiki/kennwerte.md`, `training/quellen-inventar.md`, `wiki/QUESTIONS.md`: keine
  Änderung seit dem Run-14-Commit (13:15:01 Uhr, also faktisch zeitgleich mit diesem Lauf).
- Kein neuer Kostenstand denkbar in einem Zwei-Minuten-Fenster — ein Ereignis-Trigger-Check
  (Run 12: `find` über die gesamte SharePoint-Bibliothek nach Änderungen) würde garantiert
  dasselbe Nullergebnis liefern wie vor 20 Minuten.

## Ergebnis

Kein neuer Rohbeleg, kein neuer Kennwert, keine Registeränderung an `kennwerte.md`,
`quellen-inventar.md` oder `raw/`. Die einzige inhaltlich neue Erkenntnis dieses Laufs ist
eine Beobachtung zur **Taktung selbst**, nicht zur Wissensbasis: der Scheduled Task trägt
`cron_target: "0 9,21 * * *"` (2x täglich), tatsächlich feuert der VOLLGAS-Endlos-Runner ihn
seit heute Mittag im Abstand von wenigen Minuten (12:00, 12:16, 12:24, 12:32, 12:36, 12:45,
12:53, 12:56, 13:05, 13:12, 13:15 Uhr — 11 Läufe/Kollisionen in 75 Minuten). Seit Run 12
(12:56 Uhr) ist die Wissensbasis in einem dokumentierten Sättigungszustand: alle bekannten
SharePoint-Bibliotheken sind `[x]`/`[-]`, die beiden verbleibenden Blocker (Frage 1/2) sind
nicht autonom lösbar. Drei aufeinanderfolgende Läufe (12, 13, 14) haben das unabhängig
bestätigt und Rücktaktung empfohlen — dieser Lauf ist der vierte in Folge ohne neuen
Kennwert.

## Empfehlung (wiederholt, jetzt mit Vier-Läufe-Beleg)

Keine Registeränderung an `wiki/kennwerte.md`/`training/quellen-inventar.md` nötig, da
inhaltlich identisch zu Run 14. Erneuter Hinweis an den `vollgas-chef-radar` bzw. an
Raphael Jans direkt: dieser Loop sollte JETZT auf den in `training/PROGRAMM.md` vorgesehenen
Ereignis-Trigger zurückgetaktet werden (neuer Kostenstand aus `kostenkontrolle` ODER
Antwort auf Frage 1/2) statt im Minutenabstand weiterzulaufen — die letzten vier Läufe haben
ausschliesslich Beweisführung zu bereits bekannten offenen Fragen erbracht, keinen neuen
Kennwert. Ohne eine externe Taktänderung wird jeder weitere Lauf in diesem Fenster dasselbe
Ergebnis liefern.
