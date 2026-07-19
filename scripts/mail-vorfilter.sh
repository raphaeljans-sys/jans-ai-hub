#!/bin/bash
# mail-vorfilter.sh — deterministischer Mail-Extrakt fuer logbuch-radar / hub-chef
#
# Kontext-Diaet 19.07.2026 (grep-Prinzip): statt dass Claude alle Mails im Rohformat
# liest, liefert dieses Script einen kompakten Extrakt der letzten N Stunden ueber
# ALLE in Apple Mail eingerichteten Konten (M365 rj@/mail@, outlook.com, iCloud):
# je Mail Richtung, Datum, Absender, Betreff und die Signal-Zeilen des Inhalts
# (Betraege, Fristen, Termine, Fragen, Rechnungs-/Mahn-/Offert-Begriffe).
#
# Der Radar priorisiert auf dem Extrakt und oeffnet NUR die relevanten Threads im
# Original — die Beleg-Lese-Pflicht (Rule 260709: Anhaenge oeffnen, Status aus dem
# Beleg) bleibt vollumfaenglich bestehen; der Vorfilter reduziert die Breite,
# nicht die Beleg-Tiefe.
#
# Aufruf:  bash mail-vorfilter.sh [stunden]   (Default 26)
# Output:  stdout, pro Mail ein Block; rein lesend.

set -uo pipefail
HOURS="${1:-26}"

RAW=$(osascript <<EOF
set cutoff to (current date) - ($HOURS * hours)
set out to ""
tell application id "com.apple.mail"
  repeat with acc in accounts
    set accName to name of acc
    repeat with mb in mailboxes of acc
      set mbName to name of mb
      -- nur Posteingang/Gesendete (deutsch + englisch benannte Mailboxen)
      if mbName is in {"Posteingang", "INBOX", "Inbox", "Gesendete Elemente", "Gesendet", "Sent Messages", "Sent Items", "Sent"} then
        try
          set msgs to (every message of mb whose date received > cutoff)
          repeat with m in msgs
            try
              set out to out & "@@MAIL@@" & linefeed
              set out to out & "KONTO: " & accName & " | BOX: " & mbName & linefeed
              set out to out & "DATUM: " & ((date received of m) as string) & linefeed
              set out to out & "VON: " & (sender of m) & linefeed
              set out to out & "BETREFF: " & (subject of m) & linefeed
              set out to out & "ANHAENGE: " & (count of mail attachments of m) & linefeed
              set out to out & "@@BODY@@" & linefeed
              set out to out & (content of m) & linefeed
              set out to out & "@@ENDE@@" & linefeed
            end try
          end repeat
        end try
      end if
    end repeat
  end repeat
end tell
return out
EOF
)

if [ -z "$RAW" ]; then
  echo "KEINE_MAILS fenster=${HOURS}h (oder Apple Mail nicht erreichbar)"
  exit 0
fi

echo "=== MAIL-EXTRAKT fenster=${HOURS}h stand=$(date '+%Y-%m-%d %H:%M') ==="
echo "(Signal-Zeilen gefiltert; relevante Threads IMMER im Original samt Anhaengen oeffnen)"

# Header 1:1 durchreichen, Body auf Signal-Zeilen reduzieren (max. 12 je Mail)
printf '%s\n' "$RAW" | awk '
  /^@@MAIL@@$/ { inbody=0; print ""; print "-----"; next }
  /^@@BODY@@$/ { inbody=1; nsig=0; next }
  /^@@ENDE@@$/ { inbody=0; next }
  !inbody { print; next }
  inbody && nsig < 12 && $0 ~ /CHF|EUR|Frist|frist|Termin|termin|Rechnung|rechnung|Mahnung|mahnung|Offerte|offerte|Zahlung|zahlung|Vertrag|vertrag|Bewilligung|bewilligung|Entscheid|Auflage|bitte|Bitte|\?|dringend|Deadline|bis am|bis zum|Sitzung|Abgabe/ {
    line=$0
    gsub(/^[ \t]+|[ \t]+$/, "", line)
    if (length(line) > 3) { print "  > " line; nsig++ }
  }
'
echo ""
echo "=== ENDE MAIL-EXTRAKT ==="
