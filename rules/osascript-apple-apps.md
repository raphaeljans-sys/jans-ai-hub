# Regel: osascript fuer Apple-Apps via Bundle-ID

Auf macOS Tahoe (Darwin 25.x) konfligiert `tell application "Mail"` mit der QuickLook-
Erweiterung (landet bei MailQuickLookExtension.appex, Syntaxfehler beim ersten Mail-Befehl).
**Immer die Bundle-ID verwenden:**

| App | NICHT so | Sondern so |
|---|---|---|
| Mail | `application "Mail"` | `application id "com.apple.mail"` |
| Calendar | `application "Calendar"` | `application id "com.apple.iCal"` |

## Robuste Patterns (Kurzform)

- **Mehrzeilige UTF-8-Bodies via Datei einlesen** statt Heredoc-String:
  `set bodyText to (read POSIX file "/tmp/body.txt" as «class utf8»)`
- **Pfade mit en-dash `–`** (OneDrive-Bibliotheken) verursachen Position-Errors:
  Symlink ohne Sonderzeichen anlegen (`ln -s "/Path/with–dash" /tmp/safe-path`)
- Drafts mit `save` sichern; Erinnerungen via `display alarm` (trigger interval in Minuten,
  negativ = vorher)

Vollstaendige Beispiele (Draft mit Anhaengen, Calendar-Event, Aufraeumen):
`docs/referenz/osascript-beispiele.md`.

Kalender auf dem MacBook Pro (Stand Mai 2026): Privat, Arbeit, Kultur, Freunde, Sport,
Haushalt, Kalender, Feiertage in Deutschland, Geburtstage. Standard fuer Geschaeftstermine:
**«Arbeit»**. Gilt fuer alle osascript-Calls auf beiden Stationen.
