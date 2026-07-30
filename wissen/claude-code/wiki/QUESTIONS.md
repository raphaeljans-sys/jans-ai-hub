# QUESTIONS — offene Punkte der KB `claude-code`

Luecken und ungeklaerte Fragen. Wird beim Ingestieren neuen Materials abgearbeitet.

## Offen (29.07.2026, ergaenzt 30.07.2026)

0b. **Acht Slides der Anthropic-Lecture sind aus OneDrive verschwunden.** Der Ordner
   `00 Prompteingaben/260729 Antrophic Lecture` enthaelt am 30.07.2026 noch 24 statt 32
   Dateien; es fehlen IMG_5462, 5464, 5466, 5471, 5472, 5478, 5481, 5485. Die mtime aller
   verbliebenen Dateien ist unveraendert (29.07. 01:32). **Kein Wissensverlust**: alle 32
   Bilder liegen vollstaendig in `wissen/claude-code/raw/`. Zu klaeren bei Gelegenheit mit
   Raphael: bewusst aufgeraeumt oder unvollstaendiger OneDrive-Sync? Beim zweiten Fall
   waere die Frage, ob weitere Ordner betroffen sind. Kein Handlungsdruck, da die
   Arbeitskopie vollstaendig ist — es wurde nichts wiederhergestellt und nichts geloescht.

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
