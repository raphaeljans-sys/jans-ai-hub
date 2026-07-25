#!/bin/bash
# Erstellt 6 Apple Mail Drafts mit allen PDF-Anhaengen pro Anbieter.
# WICHTIG: Mail.app via Bundle-ID adressieren (in Tahoe sonst Konflikt mit
# MailQuickLookExtension).
set -e

# Symlink ohne Sonderzeichen (en-dash) - schon angelegt
VERSAND="/tmp/build_kispi/versand"
BODY_FILE="/tmp/build_kispi/mail_body.txt"
SUBJECT="Submission Kuecheneinrichtung Therapiestation KiSpi Zuerich - Eingabe bis Freitag 15. Mai 2026"

ANBIETER=(
  "Pius-Nadler-AG|info@piusnadlerag.ch"
  "RAMETALL-AG|info@rametall.ch"
  "Schmocker-AG|info@schmocker-ag.ch"
  "Hauser-Gastro-AG|info@hauser-gastro.ch"
  "Hugentobler-AG|info@hugentobler.ch"
  "Resta-AG|info@resta.ch"
)

for entry in "${ANBIETER[@]}"; do
  IFS='|' read -r slug email <<< "$entry"
  ordner="$VERSAND/$slug"
  scpt="/tmp/build_kispi/draft_${slug}.applescript"

  cat > "$scpt" <<APPLE
set bodyText to (read POSIX file "${BODY_FILE}" as «class utf8»)
set subjectText to "${SUBJECT}"
set toAddr to "${email}"

tell application id "com.apple.mail"
  set newDraft to make new outgoing message with properties {subject:subjectText, content:bodyText, visible:false}
  tell newDraft
    make new to recipient at end of to recipients with properties {address:toAddr}
    tell content
APPLE

  for pdf in "$ordner"/*.pdf; do
    echo "      make new attachment with properties {file name:(POSIX file \"${pdf}\")} at after the last paragraph" >> "$scpt"
  done

  cat >> "$scpt" <<'APPLE'
    end tell
  end tell
  save newDraft
end tell
APPLE

  echo "Draft fuer $slug ($email) ..."
  osascript "$scpt" && echo "  -> erstellt" || echo "  !! Fehler"
done

echo ""
echo "FERTIG: 6 Drafts in Apple Mail erstellt (NICHT versendet)."
echo "Pruefe sie unter Apple Mail > Entwuerfe."
