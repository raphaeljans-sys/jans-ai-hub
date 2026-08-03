# QUESTIONS — offene Punkte der KB `claude-code`

Luecken und ungeklaerte Fragen. Wird beim Ingestieren neuen Materials abgearbeitet.

## Offen (03.08.2026)

0. **`wissens-chef` laeuft, liefert aber seit dem 31.07.2026 nichts Sichtbares.** Befund der
   Verifikations-Rotation `methoden-radar` vom 03.08.2026 (Registerzeile `Methode SPW`, wo der
   Task als eines von zwei Aufsichtsmitteln des Wissens-Layers gefuehrt ist). Der Scheduled Task
   ist enabled=true, taeglich 23:10, `lastRunAt` 02.08.2026 23:12 — aber der letzte Bericht ist
   **Run 22 vom 31.07.2026 23:48** (`wissen/koordination/outputs/2026-07-31_wissens-chef-run22.md`).
   Fuer die Laeufe vom 01.08. und 02.08. fehlt jeder Liefer-Beleg: kein Run-Bericht
   (`find . -iname "*wissens-chef*" -newermt "2026-08-01"` → leer), kein CHANGELOG-Eintrag in
   `wissen/koordination/CHANGELOG.md` (dort stehen fuer den 01.08. nur der Wissenscheck-Sammellauf
   und Synergie-Lauf 03), keine Journalzeile in `logbuch/laeufe/260801|260802|260803-laeufe.jsonl`.
   Zu klaeren: bricht der Lauf ab (Session-/Speicher-/Locale-Ursache — der Wrapper `claude-run.sh`
   war bis 01.08. ungehaertet, siehe Report `2026-08-01_locale-regression…`), oder laeuft er still
   ohne Ertrag? **Nichts deaktiviert und nichts angetastet** (Vorschrift des Loops: nur melden).
   Entscheid ueber Diagnose oder Rueckbau liegt bei Raphael.

## Offen (29.07.2026)

0a. **Quelle der «Methode SPW» nicht identifiziert.** Kanal «bettercreating…» (URL
   abgeschnitten), Referent «Simon» (Nachname unbekannt), Kuerzel SPW nur als Wasserzeichen.
   Zu klaeren bei Gelegenheit: Video-URL fuer sauberen Quellenverweis in
   [[methode-spw-wissensbasis]]; danach ggf. Transkript nach raw/.

1. **Enterprise-Policy-Ebene ungenutzt.** Die Lecture nennt
   `/Library/Application Support/ClaudeCode/CLAUDE.md` und `policies.json` als geteilte
   Enterprise-Schicht. Im Hub existiert beides nicht (geprueft 29.07., beide Stationen).
   Fuer ein Einzelbuero mit zwei Stationen vermutlich Overhead — relevant wuerde es, sobald
   **weitere Mitarbeitende** eigene Stationen bekommen (in CLAUDE.md bereits vorgesehen).
   Zu klaeren: braucht ein MA-Onboarding eine unveraenderliche Policy-Schicht, oder genuegt
   der NAS-Symlink-Weg?

2. **Versionsbindung unbekannt.** Die Lecture nennt `/vibe`, `--resume`, `/memory` und
   Sub-Ordner-CLAUDE.md, ohne Versionen zu nennen. Zu pruefen, welche davon in der hier
   installierten Fassung tatsaechlich existieren — nicht annehmen.

3. **Token-Kosten des Grundkontexts pro Modell.** Gemessen wurde am 29.07. die Byte-Groesse
   (87'398 B nach der Diaet, grob 21'800 Token). Eine exakte Tokenzahl je Modell fehlt.
   Nutzen: erst ab der naechsten groesseren Diaet-Runde relevant.

## Beantwortet

- **Acht fehlende Slides der Anthropic-Lecture** (gestellt 30.07.2026 vom Loop
  `methoden-radar`, gleichentags beantwortet durch Raphael): **bewusst aufgeraeumt.**
  Der OneDrive-Ordner `00 Prompteingaben/260729 Antrophic Lecture` enthaelt seither 24
  statt 32 Bilder (entfernt: IMG_5462, 5464, 5466, 5471, 5472, 5478, 5481, 5485). Kein
  Sync-Problem, keine weitere Pruefung anderer Ordner noetig. Die vollstaendigen 32
  Slides bleiben als Belegbasis der Destillate in `wissen/claude-code/raw/` liegen und
  werden dort NICHT nachgezogen — `raw/` ist der unveraenderliche Quell-Dump (Rule
  `wissens-bibliothekar`), auf den sich [[lecture-260729-anthropic]] und
  [[kontext-architektur]] mit Bildnummern berufen.

- **`/install-github-app` (@claude auf Issues/PRs)** (gestellt 29.07., entschieden
  30.07.2026 durch Raphael): **Verzicht, endgueltig.** GitHub bleibt reines Backup ohne
  Issue-/PR-Betrieb; Auftraege von unterwegs laufen ueber `dispatch-run.sh` (Handy) bzw.
  `remote-tasks/`. Die App wird NICHT installiert und nicht erneut vorgeschlagen.

- **Slash-Commands nur auf Projektebene** (gestellt 29.07., umgesetzt 30.07.2026):
  `~/.claude/commands` ist auf beiden Stationen als Symlink auf `NAS/commands` gesetzt —
  alle Hub-Commands funktionieren jetzt auch ausserhalb des Repos. Neue Stationen erhalten
  den Symlink automatisch via `neue-station.sh` (Schritt 4b).

- **Kandidaten aus dem Ordner `Agenten` + Ordner `Prompts`** (gestellt 29.07., entschieden
  29.07.2026 durch Raphael): Drei-Marken-Strategie verworfen (DOCX geloescht), Ordner
  `Prompts` geloescht, 4-Agenten-Blaupause als Skill-Kandidat aufgenommen — Destillat
  und Stand in [[methoden-register]].
