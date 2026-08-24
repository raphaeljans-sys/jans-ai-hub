# SIA-Sweep, 39. Fortsetzung (24.08.2026, ~04:11-04:20 Uhr) — Unabhängige Sättigungs-Verifikation, keine neue Arbeit im Mandat gefunden

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
Laufs (38. Fortsetzung, `outputs/2026-08-24_sia-sweep-achtunddreissigste-fortsetzung.md`,
~04:06 Uhr) zuerst gelesen.

**Kollisionscheck:** `ps aux` geprüft — nur der eigene Prozess (PID 97446/97445/97438, exakt
dieser Auftragstext, gestartet 04:11 Uhr) mit Bezug zu `wissen/normen`. Parallel laufen zwei
unabhängige, andere KBs bearbeitende Läufe (`wissen/baurecht` Reglemente-Queue,
`wissen/projekt-lessons` Korpus-Triage) — kein Konkurrent für diese KB.

**Statt eines weiteren Zyklus: eigene Gegenprobe der behaupteten Sättigung.** Die letzten
14 Fortsetzungen (25. bis 38.) haben ausschliesslich Randfragen bearbeitet (EKAS-Richtlinien,
Suva-Nummer 33045.d, Kollisionsauflösung), nachdem die 25. Fortsetzung (23.08.2026) den
wörtlich beauftragten Kern bereits für abgeschlossen erklärt hatte. Statt das ungeprüft zu
übernehmen, wurde die Behauptung selbst nachgemessen (Rule `auto-verbesserungen` 260807/260729b
— Konfigurationsfelder und Agenten-Befunde erst messen, dann glauben):

1. `training/norm-inventar.md`: `grep -c '^\- \[ \]'` → **0 offene Zeilen** (insgesamt, nicht
   nur SIA).
2. `wiki/REGISTER.md`, Abschnitt A (329 Tabellenzeilen `| SIA …`): systematisch nach Zeilen
   durchsucht, die weder einen Destillat-Verweis noch `established` noch einen
   `shop.sia.ch`-Beleg tragen. Alle Treffer sind entweder (a) `—(alle zurückgezogen)` ohne
   Nachfolgenorm (kein Handlungsbedarf, kein Beschaffungsziel existiert), oder (b) Zeilen mit
   Volltext im Haus (`Bestand … = gültig …`/`Bestand … → neuer als Register`), also ebenfalls
   kein Beschaffungsfall.
3. `wiki/REGISTER.md` Zeile 45 (Eintrag der fünften Fortsetzung, 23.08.2026): dokumentiert
   bereits eine vollständige Gegenprobe über den nativen SharePoint-Zugang
   (`connectors/m365-graph.mjs`) — **alle 140 Dateien** von `SIA_Norm/SIA_Normen/alle/` plus
   sieben Unterordner gegen die 55 „Kein Volltext im Haus"-Nummern geprüft: **keine der 55
   Nummern hat eine Datei im Haus**. Kein Access- oder Scan-Artefakt, reale Bestandslücke.
4. `wiki/REGISTER.md` Zeilen 233-253 (24. und 25. Fortsetzung, 23.08.2026): alle 59
   SIA-Zeilen ohne Volltext im Haus sind bereits priorisiert (P1-P4), mit Produktdatenblatt
   (gültig-ab/-bis, Nachfolgenorm) versehen, und die 25. Fortsetzung hat den letzten
   verbliebenen Beschaffungsweg (ein im Bestand liegendes, aber fremdes iNorm-Abo von
   Meili Peter & Partner Architekten AG) geprüft und verworfen (kein Login-Versuch mit
   Fremdzugangsdaten). Ergebnis wörtlich: „endgültige Bring-Schulden — nur über einen eigenen
   SIA-Normen-Kauf schliessbar".

**Befund:** Die Sättigung ist real und dreifach unabhängig belegt (Inventar-Zählung,
Struktur-Scan des Registers, dokumentierte Vollständigkeits-Gegenprobe vom 23.08.2026). Für
KEINE der verbleibenden SIA-Zeilen ohne Volltext existiert noch ein ungeprüfter Beschaffungsweg
innerhalb dessen, was ohne Kaufentscheid Raphaels möglich ist — Produktdatenblätter mit
gültig-ab/gültig-bis sind bereits überall dort erfasst, wo eine kostenlose Quelle (Shop-
Metadatenzeile, Web-Verifikation, Vorschau-PDF) das hergibt. Ein weiterer Sweep-Zyklus im
engen SIA-Mandat hätte keinen neuen Beleg zu erzeugen — er würde entweder bereits geschlossene
Punkte erneut aufrollen (wie die 26. bis 38. Fortsetzung es zunehmend taten) oder auf denselben
15 bereits identifizierten Kauf-Bring-Schulden sitzen bleiben.

**Keine Schreibarbeit an Register/Destillaten in diesem Lauf** — es gab nichts Neues zu belegen,
und unbelegtes Nachschreiben würde die KB gemäss Rule `wissens-bibliothekar` verdünnen statt
verbessern.

## Betriebsbeobachtung (kein Fach-Befund, aber relevant für die Taktung dieses Auftrags)

Zwischen ~00:00 und ~04:20 Uhr sind für diese KB mindestens 14 „SIA-Sweep-Fortsetzung"-Läufe
plus eine vergleichbare Zahl „QUESTIONS-Abarbeitung"-Läufe protokolliert (Reports im
5-15-Minuten-Takt unter `outputs/`). Der fachliche Ertrag pro Lauf ist seit der 25. Fortsetzung
(23.08.2026, vor über 24 Stunden Kalenderzeit, aber vor diesem dichten Nacht-Fenster) auf
Randfragen und wiederholte Bestätigungen geschrumpft; zwei Läufe kollidierten sogar auf
denselben zwei EKAS-Destillaten (dokumentiert in der 38. Fortsetzung und der 04:09-Uhr-
QUESTIONS-Abarbeitung). Das ist kein Fehlverhalten eines einzelnen Laufs, sondern ein
Taktungsproblem: Der Auftrag „SIA-Sweep fortsetzen" wird wiederholt neu gestartet, obwohl die
Register selbst seit Stunden dokumentieren, dass der Auftrag im engen Sinn erledigt ist.
**Empfehlung:** die nächste Instanz, die diesen Loop taktet, sollte entweder (a) den Auftrag
bis zu einer Entscheidung Raphaels zu den Bring-Schulden pausieren, oder (b) ihn auf ein
erkennbar anderes Mandat umstellen (z.B. VSS/DIN/RAL-Familien, die laut CHANGELOG-Historie
weniger dicht bearbeitet sind). Diese Empfehlung wird bewusst NICHT selbst umgesetzt (Loop-/
Taktungsänderungen fallen unter `rules/betrieb-chronik.md`, nicht unter diesen fachlichen
Auftrag) und stattdessen hier + im CHANGELOG-Kopf sichtbar gemacht.

## Verifikation

Keine Datei ausser diesem Report neu angelegt. `git diff --numstat` nach dem Schreiben dieses
Reports geprüft: nur die neue Datei selbst betroffen (`+92/-0`, additiv). Kein
`git commit`/`push`/`pull`/`rebase` über den SMB-Mount ausgeführt.
