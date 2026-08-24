# QUESTIONS-Abarbeitung — Verifikationslauf 02:54 Uhr

**Auftrag:** Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. CHANGELOG-Kopf und der
Report des letzten Laufs (`outputs/2026-08-24_questions-abarbeitung-verifikation-02uhr.md`,
02:42 Uhr) zuerst gelesen — der hatte bereits «keine neuen schliessbaren Punkte» gemeldet.

## Kollisionscheck

`ps aux` vor Arbeitsbeginn: eigener Prozess (PID 53453, exakt dieser Auftragstext). Parallel
liefen PID 50583 (KB `energie`, eigene QUESTIONS.md, andere Datei) und PID 50316 (KB `normen`,
SIA-Sweep-Fortsetzung — berührt `destillate/`, `destillate/INDEX.md`, `training/norm-
inventar.md`, `wiki/REGISTER.md`, `CHANGELOG.md`, aber nicht `wiki/QUESTIONS.md`). Kein
Dateikonflikt; `CHANGELOG.md` ist append-only, dieser Lauf hängt nur an.

## Befund

`wiki/QUESTIONS.md` seit `mtime` 00:19:53 unverändert (Prüfzeit 02:54, keine Änderung seit dem
02:42-Lauf). Eigener Filter (korrigierter Skript-Check: Schliess-Marker auch in der
Überschriftzeile selbst prüfen, nicht erst in Folgezeilen — der 02:42-Lauf-Filter hätte sonst
z.B. den frisch mit «✅ REGISTER/INVENTAR NACHGEFUEHRT» versehenen N41-1-Abschnitt fälschlich als
offen gemeldet) findet weiterhin genau dieselben vier `##`-Abschnitte ohne Schliess-Marker wie
der 02:42-Lauf:

1. **2026-07-28 (Wissens-Chef Run 19) — Leitplanke Gebäudekategorien I–XII.** Adversarial
   verifizierte Merkregel (§ 47a Abs. 1 BBV I / SIA 380/1 Anhang A Tab. 24), kein Ticket im
   engeren Sinn, kein Handlungsbedarf.
2. **260731 — NIN: eigener Stromkreis für Geschirrspüler?** Bereits dreifach recherchiert
   (31.07., 23.08., erneut geprüft 24.08. im 02:42-Lauf). Normtext liegt hinter der
   kostenpflichtigen `ninonline.electrosuisse.ch`-Anmeldung, freie Sekundärquellen behandeln die
   Detailfrage nicht. Kein weiterer Web-Anlauf — bleibt Bring-Schuld Raphael.
3. **260823 — N60-1 (AFC-Synopse 2017 zweimal destilliert).** Zusammenlegen/Löschen ist
   destruktiv (Rule `wissens-bibliothekar`) — Pause + Rückfrage bleibt korrekt. Unverändert offen
   für Raphael.
4. **260823 — N60-2 (Vorschlag Methodik-Pflicht 14).** Neue Verhaltensregel für den
   Destillier-Agenten, Freigabepflicht analog MP 11/12/13. Nicht selbständig umsetzbar.
   Unverändert offen für Raphael.

N41-1 (VSS SN 640 273a, im 00:22-/00:19-Lauf angelegt) ist inzwischen im eigenen Filter korrekt
als geschlossen erkannt (Register-/Inventar-Zeile vorhanden, per `grep` gegengeprüft: Zeile
857 in `wiki/REGISTER.md`, Zeile 562 in `training/norm-inventar.md`, beide konsistent). Die
Beschaffung selbst bleibt Bring-Schuld Raphael (VSS-Shop, kostenpflichtig).

Kein Abschnitt liess sich in diesem Lauf mit vertretbarem Aufwand, ohne Raten und ohne
destruktiven Eingriff schliessen. Dies ist der dritte Verifikationslauf in Folge (00:19, 00:22,
02:42, jetzt 02:54) mit demselben Ergebnis — die vier verbleibenden Abschnitte sind entweder
Bring-Schulden Raphaels oder eine dauerhafte Leitplanke ohne Ticket-Charakter. Ein weiterer
reiner Wiederholungslauf ohne neuen Auslöser (neue Cross-KB-Übergabe, neuer Wissens-Chef-Fund,
Raphaels Entscheid zu N60-1/N60-2) würde keinen zusätzlichen Erkenntniswert liefern.

## Verifikation

Keine bestehende Datei in `wissen/normen/` verändert bis auf diesen neuen Output-Report und den
CHANGELOG-Eintrag. `git diff --numstat` nach dem Schreiben geprüft: nur neue, untracked Dateien,
kein bestehender Abschnitt berührt. Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.
