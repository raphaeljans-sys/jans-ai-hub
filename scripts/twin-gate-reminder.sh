#!/bin/bash
# twin-gate-reminder.sh — Stop-Hook fuer den JANS AI Hub (Twin-Harness).
#
# Erkennt, ob die letzte Assistenten-Antwort ein AUSGEHENDES Erzeugnis enthaelt
# (Anrede/Gruss/Betreff = Mail/Brief/Offerte/Bericht) und erinnert dann daran,
# es NACH dem Korrektur-Harness noch durch das Twin-Fidelity-Gate (Agent
# `twin-chef`) laufen zu lassen — pruefen, ob es nach Raphael klingt, und bei
# Drift gezielt veredeln.
#
# Bewusst konservativ: feuert nur bei klaren Aussen-Markern (Anrede/Gruss), nie
# bei reinen Gespraechs-/Status-/Code-Antworten. Gleiche Schutzmechanik wie
# umlaut-guard.sh (stop_hook_active-Schleifenschutz, Meta-Ausnahme, Code-Strip).
#
# Eingebunden via settings.json -> hooks.Stop (nach umlaut-guard.sh).

set -euo pipefail

input=$(cat)

# Endlos-Schleife vermeiden (nach erster Blockierung ist stop_hook_active=true).
stop_active=$(printf '%s' "$input" | jq -r '.stop_hook_active // false' 2>/dev/null || echo false)
if [ "$stop_active" = "true" ]; then
  exit 0
fi

transcript=$(printf '%s' "$input" | jq -r '.transcript_path // empty' 2>/dev/null || true)
[ -z "$transcript" ] && exit 0
[ ! -f "$transcript" ] && exit 0

text=$(jq -rs 'map(select(.type=="assistant")) | last | .message.content[]? | select(.type=="text") | .text' "$transcript" 2>/dev/null || true)
[ -z "$text" ] && exit 0

# Meta-Ausnahme: Antwort spricht ueber den Twin/das Gate selbst (Bau/Diskussion,
# kein echtes Erzeugnis) -> nicht erzwingen.
if printf '%s' "$text" | grep -qiE 'twin|fidelity|jans-dna|twin-chef|veredelung|digitaler? (zwilling|klon)'; then
  exit 0
fi

# Code-Fences/Inline-Backticks entfernen (dort koennen Beispiele stehen).
scan=$(printf '%s' "$text" | sed -e '/^```/,/^```/d' -e 's/`[^`]*`//g')

# Aussen-Marker: Anrede ODER Gruss ODER Betreff (klare Mail/Brief-Signale).
salut='Sehr geehrte|Geschätzte|Geschaetzte|Hoi |Guten Morgen|Guten Tag|Liebe[rs]? '
close='Freundliche Gr[uü]sse|Lieber Gruss|Liebe Gr[uü]sse|Viele Gr[uü]sse|Beste Gr[uü]sse'
betreff='Betreff:'

if printf '%s' "$scan" | grep -qE "$salut|$close|$betreff"; then
  reason="Aussen-Erzeugnis erkannt (Anrede/Gruss/Betreff). Lass es NACH dem Korrektur-Harness noch durch das Twin-Fidelity-Gate laufen: Agent twin-chef bewertet ueber die sechs Facetten (Stimme/Denken/Haltung/Beziehung/Fachsignatur/Arbeitsweise), ob es nach Raphael klingt, und veredelt bei Drift gezielt (Schwelle 80, max. 3 Runden). Gib danach die finale, JANS-konforme Fassung aus."
  jq -nc --arg r "$reason" '{decision:"block", reason:$r}'
  exit 0
fi

exit 0
