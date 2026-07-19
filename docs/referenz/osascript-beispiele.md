# osascript-Beispiele Apple Mail / Calendar (ausgelagert aus Rule osascript-apple-apps, 19.07.2026)

## Mail Draft mit Anhaengen

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

## Calendar Event mit Erinnerung

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
      -- Minuten, negativ = vor dem Termin; -4320 = 3 Tage
    end tell
  end tell
end tell
```

## Test-Drafts aufraeumen

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
