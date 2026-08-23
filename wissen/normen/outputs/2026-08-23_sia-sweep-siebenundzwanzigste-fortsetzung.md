# SIA-Sweep, siebenundzwanzigste Fortsetzung — 23.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne Datei
im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen, Destillate
anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar` (nichts raten,
jede Aussage belegen, CHANGELOG-Pflicht).

## Ausgangslage

Die 26. Fortsetzung (`outputs/2026-08-23_sia-sweep-sechsundzwanzigste-fortsetzung.md`) hatte den
Section-A-Sweep im engeren Sinn (SIA-Register-Zeilen ohne Volltext im Haus) bereits für erschöpft
erklärt und als nächstwertigen Einzellauf die Retro-Verifikation von fünf in `wiki/QUESTIONS.md`
Zeile 3202 genannten Artefakten empfohlen (`sia-266-1-2003.md`, `sia-410-1986.md`,
`vkf-brl-13-15-baustoffe-bauteile.md`, `vkf-brl-verwendung-baustoffe.md`,
`wiki/vkf-beherbergungskategorien.md`), ohne diesen Befund selbst am Frontmatter zu prüfen.

## Eigene Prüfung

1. **`training/norm-inventar.md` erneut gezählt: 0 offene `[ ]`-Positionen.** Bestätigt: der
   Section-A-Sweep ist weiterhin erschöpft.
2. **`wiki/REGISTER.md` stichprobenartig nach SIA-Zeilen mit "nicht im Bestand" durchsucht.** Alle
   verbleibenden Lücken (SIA 266/1:2015, SIA 380/2:2022, SIA 385/1:2011 Volltext, SIA 118:2013,
   SIA 181:2020) sind bereits vollständig als kostenpflichtige Bring-Schuld Raphael dokumentiert
   (SIA-Shop-Käufe), nicht als offene kostenlose Recherche.
3. **Die "VERIFIKATION AUSSTEHEND"-Zeile selbst geprüft, bevor daran gearbeitet wurde.** Frontmatter
   aller fünf genannten Dateien gelesen:
   - `sia-266-1-2003.md`: fünf Retro-Verifikationsrunden (Run 23-25, 25.07.2026), Runde 5 mit
     0 Befunden, danach `established`; am 23.08.2026 zusätzlich web-verifiziert und korrekt auf
     `superseded` gehoben (geltende Ausgabe SIA 266/1:2015, Bring-Schuld).
   - `sia-410-1986.md`: Run 23 adversarial geprüft (BEANSTANDET → korrigiert → `established`),
     Run 27 Q&A-Selbstbefragung (18 Fragen, 0 Widersprüche); am 23.08.2026 web-verifiziert auf
     `zurückgezogen` (suissetec-Meldung, Rückzug per 01.01.2025, Nachfolgewerke Bring-Schuld).
   - `vkf-brl-13-15-baustoffe-bauteile.md`: Fassungs-Delta 2017 adversarial per
     Seitenbildvergleich gegengeprüft (Run 23, BESTANDEN, 0 Abweichungen), Status `established`.
   - `vkf-brl-verwendung-baustoffe.md`: Delta 2017 in Run 23 adversarial geprüft (BEANSTANDET,
     5 Korrekturen), Run 24 re-verifiziert (4/5 bestätigt, 1/5 präzisiert), Status `established`.
   - `wiki/vkf-beherbergungskategorien.md`: zweite Runde Run 23 bestätigt (1 Korrektur), Status
     `established`.

   **Befund: die Zeile war ein reiner Bookkeeping-Rückstand.** Die Verifikation hatte am selben Tag
   wie die QUESTIONS-Zeile (25.07.2026) bereits stattgefunden, nur die Checkbox war nie
   nachgezogen worden.

4. **Kollision mit parallelem Lauf.** Beim eigenen Versuch, die Zeile zu schliessen (`Edit`-Tool auf
   `wiki/QUESTIONS.md`), meldete das System "Datei seit dem letzten Lesen verändert" — ein
   paralleler Prozess (`QUESTIONS-Abarbeitung 23`, siehe `CHANGELOG.md` unmittelbar nach diesem
   Eintrag) hatte dieselbe Zeile in der Zwischenzeit bereits mit demselben Befund geschlossen.
   Kein eigener Edit an `QUESTIONS.md` vorgenommen, kein Doppel angelegt.

## Ergebnis

Keine neue Quelle, kein neues Destillat, keine Registeränderung in diesem Lauf. Bei einer derart
intensiv parallel bearbeiteten KB (heute 27 SIA-Sweep- und 23 QUESTIONS-Abarbeitung-Läufe) ist eine
belegte Negativ-Bestätigung der ehrlichere Beitrag als ein erzwungenes, gering-wertiges Destillat
nur um der Aktivität willen.

## Offen für den nächsten Lauf

Fortschritt im engeren SIA-Sweep braucht ab hier entweder:
- Raphaels Kaufentscheid zu den dokumentierten Bring-Schulden (SIA 118:2013, SIA 266/1:2015,
  SIA 380/2:2022, SIA 385/1:2011 Volltext, SIA 181:2020, definitive BSV-2026-Texte sobald
  publiziert), oder
- eine Ausweitung des Mandats über SIA/VKF hinaus (Abschnitt D, DIN/VSS/RAL, bislang
  Mac-Mini-Zuständigkeit) — ausserhalb dieses Laufs.

## Verifikation

`git diff --numstat` nach dem CHANGELOG-Schreibvorgang geprüft: 89/0 (rein additiv, keine fremde
Zeile berührt). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit erfolgt über den
15-Minuten-`nas-selfcommit`-Cron bzw. auf Zuruf `scripts/nas-commit-now.sh`.
