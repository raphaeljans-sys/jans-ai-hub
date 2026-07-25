#!/usr/bin/env bash
# ---------------------------------------------------------------------------
# UserPromptSubmit-Hook: Verbesserungs-Erfassung
# ---------------------------------------------------------------------------
# Liest die Benutzereingabe (JSON via stdin), prueft heuristisch auf
# Verbesserungs-/Korrektur-/Dauerregel-Signale und injiziert bei Treffer eine
# Anweisung an Claude, die Verbesserung als Rule abzulegen.
#
# Designprinzip: Der billige Stichwort-Filter (hier, in Bash) ist das Gate,
# die finale Bewertung ("ist das wirklich eine Dauerregel?") macht Claude.
# Kein Treffer -> kein Output -> null Overhead fuer normale Eingaben.
# ---------------------------------------------------------------------------

input="$(cat)"

# Signal-Muster (case-insensitive). Bewusst breit gefasst — Claude filtert final.
signals='immer|niemals|nie |ab jetzt|ab sofort|kuenftig|künftig|in zukunft|merk dir|merke dir|stattdessen|nicht so|grundsaetzlich|grundsätzlich|standardmaessig|standardmäßig|das naechste mal|das nächste mal|naechstes mal|nächstes mal|korrigier|korrektur|verbesserung|mach das so|so machen|bitte immer|generell|jedes mal|hinterleg'

if echo "$input" | grep -iqE "$signals"; then
  cat <<'EOF'
<system-reminder>
VERBESSERUNGS-CHECK (automatisch via Hook): Diese Eingabe enthaelt moeglicherweise eine dauerhafte Verhaltens- oder Stilanweisung.

Pruefe zuerst: Will der Benutzer, dass du etwas AB JETZT IMMER (oder NIE) so machst — also eine dauerhafte Regel, die ueber diese eine Aufgabe hinausgeht?

WENN JA:
- Standardfall: Haenge einen neuen, datierten Eintrag oben an
  /Volumes/daten/jans-ai-hub/rules/auto-verbesserungen.md an (Format siehe Dateikopf, neueste zuoberst).
- Eigenstaendiges, groesseres Thema (z.B. ein ganzer neuer Stilbereich): Lege stattdessen eine
  dedizierte Rule-Datei in /Volumes/daten/jans-ai-hub/rules/ an, registriere sie in rules/README.md
  und ergaenze den @-Import in /Users/raphaeljans/Developer/jans-ai-hub/CLAUDE.md.
- Bestaetige dem Benutzer in EINEM Satz, was als Regel hinterlegt wurde.

WENN NEIN (einmalige Aufgabe, kein Dauer-Charakter): ignoriere diesen Check und lege NICHTS ab.
</system-reminder>
EOF
fi

exit 0
