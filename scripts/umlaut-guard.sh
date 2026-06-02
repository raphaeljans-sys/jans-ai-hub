#!/bin/bash
# umlaut-guard.sh — Stop-Hook für den JANS AI Hub.
#
# Scannt die letzte Assistenten-Antwort auf hochsichere ASCII-Umlaut-Verdachts-
# wörter (Stämme, die im Deutschen praktisch immer eine Umlaut-Elision sind).
# Findet er welche, blockiert er das Beenden und erinnert daran, das Erzeugnis
# durch den Korrektur-Harness (Skill `korrektur`) zu schicken und echte ä/ö/ü
# zu setzen.
#
# Bewusst KEIN blindes ae/oe/ue-Matching — sonst feuert es bei legitimen Wörtern
# wie "neue", "Quelle", "aktuell", "Aerosol". Nur die kuratierte Stamm-Liste.
# Schweizer "ss" (Schliessplan, Massnahme, Strasse) ist KORREKT und steht NICHT
# in der Liste.
#
# Zwei Schutzmechanismen gegen Fehlauslöser bei Meta-Gesprächen:
#   1) Code-Blöcke / Backtick-Spans werden vor dem Scan entfernt (dort zitiere
#      ich die Negativbeispiele).
#   2) Diskutiert die Antwort das Thema selbst (enthält "umlaut", "korrektur-
#      harness", "ä/ö/ü", "ae/oe/ue", "rechtschreib"), wird nicht erzwungen —
#      ein echtes Erzeugnis (Kundenmail, LV) enthält diese Meta-Begriffe nicht.
#
# Eingebunden via settings.json -> hooks.Stop

set -euo pipefail

input=$(cat)

# Endlos-Schleife vermeiden.
stop_active=$(printf '%s' "$input" | jq -r '.stop_hook_active // false' 2>/dev/null || echo false)
if [ "$stop_active" = "true" ]; then
  exit 0
fi

transcript=$(printf '%s' "$input" | jq -r '.transcript_path // empty' 2>/dev/null || true)
[ -z "$transcript" ] && exit 0
[ ! -f "$transcript" ] && exit 0

text=$(jq -rs 'map(select(.type=="assistant")) | last | .message.content[]? | select(.type=="text") | .text' "$transcript" 2>/dev/null || true)
[ -z "$text" ] && exit 0

# (2) Meta-Ausnahme: Antwort spricht über das Umlaut-/Korrektur-Thema selbst.
if printf '%s' "$text" | grep -qiE 'umlaut|korrektur-harness|ä/ö/ü|ae/oe/ue|rechtschreib'; then
  exit 0
fi

# (1) Code-Fences und Inline-Backticks entfernen (dort stehen zitierte Beispiele).
scan=$(printf '%s' "$text" | sed -e '/^```/,/^```/d' -e 's/`[^`]*`//g')

# Kuratierte Stämme: praktisch immer Umlaut-Elisionen. KEINE ss-Wörter.
pattern='fuer|rueck|gruess|koenn|koennt|moeglich|verstaend|naechst|waere|haette|kuenft|ueber|muess|muesst|fuehr|ausfuehr|buero|zurueck|gebaeud|taeglich|naemlich|zuerich|gespraech|ungefaehr|aenderung|aendern|spaeter|waehrend|waehl|erklaer|geschaeft|persoenlich|hoeflich|wuensch'

hits=$(printf '%s' "$scan" | grep -oiE "$pattern" 2>/dev/null | sort -u | head -20 | tr '\n' ' ' || true)

if [ -n "$hits" ]; then
  reason="ASCII-Umlaut-Verdacht ausserhalb von Code/Zitaten: ${hits}— Setze echte Umlaute (ä/ö/ü, ss bleibt ss) dort, wo es wirklich Umlaute sind (NICHT mechanisch — neue/Quelle/aktuell etc. bleiben), und schicke jedes Texterzeugnis vor der Ausgabe durch den Korrektur-Harness (Skill korrektur). Gib die korrigierte Fassung erneut aus."
  jq -nc --arg r "$reason" '{decision:"block", reason:$r}'
  exit 0
fi

exit 0
