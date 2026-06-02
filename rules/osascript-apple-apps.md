# Regel: osascript fuer Apple-Apps via Bundle-ID

## Hintergrund

Auf macOS Tahoe (Darwin 25.x, ab Mai 2026) konfligiert `tell application "Mail"` mit der QuickLook-Erweiterung MailQuickLookExtension.appex. AppleScript landet bei der falschen App und wirft Syntaxfehler beim ersten echten Mail-Befehl (z.B. `make new outgoing message`).

**Loesung: Bundle-ID verwenden.**

| App | NICHT so | Sondern so |
|---|---|---|
| Mail | `application "Mail"` | `application id "com.apple.mail"` |
| Calendar | `application "Calendar"` | `application id "com.apple.iCal"` |

## Diagnose

```applescript
tell application "Mail" to get name
-- macOS Tahoe: "MailQuickLookExtension.appex"  (falsch)

tell application id "com.apple.mail" to get name
-- "Mail"  (korrekt)
```

## Beispiel — Mail Draft mit Anhaengen

```applescript
set bodyText to (read POSIX file "/path/to/body.txt" as «class utf8»)
set toAddr to "info@example.com"

tell application id "com.apple.mail"
  set newDraft to make new outgoing message with properties {subject:"Betreff", content:bodyText, visible:false}
  tell newDraft
    make new to recipient at end of to recipients with properties {address:toAddr}
    tell content
      make new attachment with properties {file name:(POSIX file "/path/to/anhang.pdf")} at after the last paragraph
    end tell
  end tell
  save newDraft
end tell
```

## Beispiel — Calendar Event mit Erinnerung

```applescript
set startDate to current date
set year of startDate to 2026
set month of startDate to May
set day of startDate to 15
set hours of startDate to 17
set minutes of startDate to 0
set seconds of startDate to 0
set endDate to startDate + (30 * minutes)

tell application id "com.apple.iCal"
  tell calendar "Arbeit"
    set newEvent to make new event with properties {summary:"Titel", start date:startDate, end date:endDate, description:"Beschreibung", location:"Ort"}
    tell newEvent
      make new display alarm at end of display alarms with properties {trigger interval:-4320}
      -- trigger interval in Minuten, negativ = vor dem Termin
      -- -4320 = 3 Tage vor dem Event
    end tell
  end tell
end tell
```

## Weitere robuste Patterns

### 1. Mehrzeilige UTF-8 Strings via Datei einlesen

Heredoc mit Newlines + Sonderzeichen (`–`, `«`, etc.) verwirrt den AppleScript-Parser. Stattdessen Body in Datei und einlesen:

```applescript
set bodyText to (read POSIX file "/tmp/body.txt" as «class utf8»)
```

### 2. Pfade mit en-dash `–` (U+2013)

Pfade wie `OneDrive-FreigegebeneBibliotheken–JANS/...` koennen in osascript-Skripten Position-Errors verursachen. Workaround: Symlink ohne Sonderzeichen anlegen:

```bash
ln -s "/Path/with–dash" /tmp/safe-path
```

Dann den Symlink-Pfad in osascript verwenden.

### 3. Test-Drafts aufraeumen

Wenn experimentelle Drafts ohne `save` erstellt wurden, koennen sie als offene Compose-Fenster stehen bleiben. Aufraeumen:

```bash
osascript <<'EOF'
tell application id "com.apple.mail"
  set tests to (every outgoing message whose subject is "Test")
  repeat with t in tests
    close t saving no
  end repeat
end tell
EOF
```

## Verfuegbare Calendar-Kalender (Stand Mai 2026)

Auf Raphaels Macbook Pro: Privat, Arbeit, Kultur, Freunde, Sport, Haushalt, Kalender, Feiertage in Deutschland, Geburtstage. Standard-Kalender fuer Geschaeftstermine: **"Arbeit"**.

## Wann gilt diese Regel

- Alle osascript-Calls auf macOS Tahoe oder neuer
- Insbesondere fuer Submissions-Workflows, automatisierte Mail-Drafts, Calendar-Erinnerungen
- Sowohl auf Macbook Pro als auch Mac Mini (gleiche macOS-Version)

## Verknuepfung

Wird in CLAUDE.md per `@`-Import eingebunden, sodass die Regel automatisch in jeder Claude-Session aktiv ist.
