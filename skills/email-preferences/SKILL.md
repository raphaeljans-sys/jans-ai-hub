---
description: E-Mail-Kontoinformationen und Praeferenzen fuer JANS Mail-Agents
---

# JANS E-Mail Praeferenzen

## Contract

- **Trigger:** Greift als Referenz, wann immer ein Mail-Agent/Skill die richtigen E-Mail-Konten, Absenderadressen oder die Mail-Suchstrategie (Apple Mail via osascript) braucht. Reiner Nachschlage-Skill, kein eigener Workflow.
- **Inputs:** keine — stellt die Kontoinformationen und Praeferenzen selbst bereit.
- **Output-Ablage:** kein Datei-Output (nur Antwort/Referenzinfo).
- **Abhaengige Rules:** jans-absenderadresse, mail-formatierung, osascript-apple-apps, umlaute-konvention.
- **Vorgelagert:** —
- **Nachgelagert:** —

## Haupt-E-Mail-Konten (Raphael Jans)
- **Geschaeftlich (Microsoft 365)**: rj@raphaeljans.ch
- **Geschaeftlich (Microsoft 365)**: mail@raphaeljans.ch
- **Privat (Apple/iCloud)**: raphaeljans@me.com (auch: raphaeljans@icloud.com)

## Wichtig
- **NICHT** den Gmail-Connector verwenden — Gmail ist nicht das Haupt-E-Mail-Konto
- E-Mails bevorzugt ueber **Apple Mail** (via osascript) oder **Microsoft 365** senden
- Absender-Adresse: standardmaessig `rj@raphaeljans.ch` fuer geschaeftliche E-Mails

## E-Mail-Suche — Strategie (WICHTIG)

Beim Suchen nach E-Mails **IMMER Apple Mail via osascript als primaere Quelle** verwenden.
Grund: Apple Mail aggregiert alle Konten (M365 + iCloud + mail@raphaeljans.ch).
Der M365-Graph-API-Zugriff deckt nur rj@raphaeljans.ch ab und verpasst iCloud-Mails.

### Schritt 1: Alle Konten durchsuchen (Apple Mail)
```applescript
tell application "Mail"
    set resultList to {}
    repeat with acct in every account
        repeat with mbox in mailboxes of acct
            try
                set matchMsgs to (messages of mbox whose sender contains "SUCHBEGRIFF")
                repeat with msg in matchMsgs
                    set msgDate to date received of msg
                    set msgSubject to subject of msg
                    set msgSender to sender of msg
                    set acctName to name of acct
                    set mboxName to name of mbox
                    set end of resultList to acctName & " | " & mboxName & " | " & (msgDate as string) & " | " & msgSender & " | " & msgSubject
                end repeat
            end try
        end repeat
    end repeat
    return resultList
end tell
```

### Schritt 2: Neueste Mail lesen
```applescript
tell application "Mail"
    -- Ueber alle Accounts suchen, nach Datum sortieren, neueste zurueckgeben
    set newestDate to date "Montag, 1. Januar 2024 um 00:00:00"
    set newestMsg to missing value
    repeat with acct in every account
        repeat with mbox in mailboxes of acct
            try
                set matchMsgs to (messages of mbox whose sender contains "SUCHBEGRIFF")
                repeat with msg in matchMsgs
                    if date received of msg > newestDate then
                        set newestDate to date received of msg
                        set newestMsg to msg
                    end if
                end repeat
            end try
        end repeat
    end repeat
    if newestMsg is not missing value then
        set msgContent to content of newestMsg
        set msgSubject to subject of newestMsg
        set msgDate to date received of newestMsg
        set msgSender to sender of newestMsg
        return "DATE: " & (msgDate as string) & return & "FROM: " & msgSender & return & "SUBJECT: " & msgSubject & return & "---" & return & msgContent
    end if
end tell
```

### Regeln fuer E-Mail-Suche
1. **Immer Apple Mail zuerst** — deckt alle Konten ab (iCloud, M365, mail@raphaeljans.ch)
2. **M365 Graph API nur als Ergaenzung** — z.B. wenn Apple Mail nicht verfuegbar oder fuer erweiterte Filter
3. **Alle Postfaecher durchsuchen** — nicht nur Inbox, auch Sent, Archive etc.
4. **Nach Datum sortieren** — immer die neueste Mail zuerst anzeigen
5. **Gmail-Connector NICHT verwenden** — existiert nur technisch, wird nicht genutzt

## Bekannte Kontakte
| Name | E-Mail | Kontext |
|---|---|---|
| Claudia Klein | contact@claudiakleinphotography.com | Fotografie |
| Hleb Paltanovich | paltanovich.hleb@gmail.com | Webseiten-Programmierer |
| Sandro Mauchle | sandro@mauchle.io | Webseiten/Digital |

## Versandmethode
Bevorzugt Apple Mail via AppleScript (osascript). Beispiel:
```applescript
tell application "Mail"
    set newMessage to make new outgoing message with properties {subject:"...", content:"...", visible:true}
    tell newMessage
        make new to recipient at end of to recipients with properties {address:"..."}
        -- CC hinzufuegen:
        -- make new cc recipient at end of cc recipients with properties {address:"..."}
    end tell
    activate
end tell
```

## Signatur (Deutsch)
Freundliche Gruesse
Raphael Jans
Raphael Jans Architekten ETH

## Signatur (Englisch)
Kind regards,
Raphael Jans
Raphael Jans Architekten ETH
