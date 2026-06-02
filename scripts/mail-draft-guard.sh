#!/bin/bash
# mail-draft-guard.sh — PreToolUse-Hook für den JANS AI Hub.
#
# Prüft den Mail-Body BEVOR ein Entwurf erstellt wird (osascript via Bash oder
# über das Control-your-Mac-osascript-MCP-Tool). Findet er ASCII-Umlaut-Stämme
# im Body, BLOCKIERT er den Tool-Aufruf — so kann gar kein Entwurf mit
# "fuer/Rueckmeldung/Gruesse" in Apple Mail landen.
#
# Das ist die artefakt-nahe Ebene: Der Stop-Hook (umlaut-guard.sh) bewacht nur
# Chat-Antworten; dieser hier bewacht das tatsächliche Erzeugnis am Entstehungs-
# punkt. Body steht laut osascript-Konvention oft in einer Temp-Datei
# (read POSIX file "..."), deshalb werden referenzierte .txt-Dateien mitgelesen.
#
# Eingebunden via settings.json -> hooks.PreToolUse, matcher Bash + osascript-MCP.

set -euo pipefail

input=$(cat)

tool=$(printf '%s' "$input" | jq -r '.tool_name // empty' 2>/dev/null || true)

# Gesamten tool_input als Text (Command bei Bash, script/code beim MCP-Tool).
ti=$(printf '%s' "$input" | jq -r '.tool_input // {} | tostring' 2>/dev/null || true)
[ -z "$ti" ] && exit 0

# Nur aktiv werden, wenn der Aufruf nach Mail-Entwurf aussieht.
if ! printf '%s' "$ti" | grep -qiE 'outgoing message|com\.apple\.mail|to recipient|make new attachment|tell application .*mail'; then
  exit 0
fi

# Body-Quellen sammeln: (a) inline im tool_input, (b) referenzierte Dateien.
combined="$ti"
# Pfade aus  read POSIX file "..."  /  POSIX file "..."  /  "/tmp/....txt"
for f in $(printf '%s' "$ti" | grep -oE '/[A-Za-z0-9._/-]+\.txt' | sort -u); do
  [ -f "$f" ] && combined="$combined
$(cat "$f" 2>/dev/null || true)"
done

# Schweizer "ss" ist korrekt und NICHT in der Liste.
pattern='fuer|rueck|gruess|koenn|koennt|moeglich|verstaend|naechst|waere|haette|kuenft|ueber|muess|muesst|fuehr|ausfuehr|buero|zurueck|gebaeud|taeglich|naemlich|zuerich|gespraech|ungefaehr|aenderung|aendern|spaeter|waehrend|waehl|erklaer|geschaeft|persoenlich|hoeflich|wuensch'

hits=$(printf '%s' "$combined" | grep -oiE "$pattern" 2>/dev/null | sort -u | head -20 | tr '\n' ' ' || true)

if [ -n "$hits" ]; then
  msg="MAIL-ENTWURF BLOCKIERT — ASCII-Umlaute im Body: ${hits}. Setze echte Umlaute (ä/ö/ü; ss bleibt ss), schicke den Body durch den Korrektur-Harness (Skill korrektur), und erstelle den Entwurf dann erneut. Ausserdem Mailschrift Aptos 12 pt prüfen (mail-formatierung.md)."
  # PreToolUse: deny + Begründung an Claude zurück.
  jq -nc --arg r "$msg" '{hookSpecificOutput:{hookEventName:"PreToolUse",permissionDecision:"deny",permissionDecisionReason:$r}}'
  exit 0
fi

exit 0
