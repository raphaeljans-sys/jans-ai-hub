# QUESTIONS — offene Punkte der KB `claude-code`

Luecken und ungeklaerte Fragen. Wird beim Ingestieren neuen Materials abgearbeitet.

## Offen (29.07.2026)

1. **Enterprise-Policy-Ebene ungenutzt.** Die Lecture nennt
   `/Library/Application Support/ClaudeCode/CLAUDE.md` und `policies.json` als geteilte
   Enterprise-Schicht. Im Hub existiert beides nicht (geprueft 29.07., beide Stationen).
   Fuer ein Einzelbuero mit zwei Stationen vermutlich Overhead — relevant wuerde es, sobald
   **weitere Mitarbeitende** eigene Stationen bekommen (in CLAUDE.md bereits vorgesehen).
   Zu klaeren: braucht ein MA-Onboarding eine unveraenderliche Policy-Schicht, oder genuegt
   der NAS-Symlink-Weg?

2. **`/install-github-app` nicht eingerichtet.** Die Lecture zeigt `@claude` auf Issues und
   PRs. Der Hub nutzt GitHub nur als Backup (kein Issue-Betrieb). Zu klaeren: entsteht durch
   Issue-basierte Auftraege ein Nutzen, oder bleibt das Handy ueber `dispatch-run.sh` der
   bessere Weg?

3. **Slash-Commands nur auf Projektebene.** `~/.claude/commands/` existiert nicht (geprueft
   29.07.). Damit sind die zehn Hub-Commands ausserhalb des Repos nicht verfuegbar. Zu
   klaeren: welche davon sind stationsweit sinnvoll (`/nas`, `/status`, `/m365`)?

4. **Versionsbindung unbekannt.** Die Lecture nennt `/vibe`, `--resume`, `/memory` und
   Sub-Ordner-CLAUDE.md, ohne Versionen zu nennen. Zu pruefen, welche davon in der hier
   installierten Fassung tatsaechlich existieren — nicht annehmen.

5. **Token-Kosten des Grundkontexts pro Modell.** Gemessen wurde am 29.07. die Byte-Groesse
   (87'398 B nach der Diaet, grob 21'800 Token). Eine exakte Tokenzahl je Modell fehlt.
   Nutzen: erst ab der naechsten groesseren Diaet-Runde relevant.

## Beantwortet

- *(noch keine)*
