#!/bin/bash
# ============================================================================
# KISPI — Projektsite dauerhaft von der 60-Tage-Gastablauf-Policy ausnehmen
# ============================================================================
# Auftrag Raphael 09.08.2026, direkt nach der Wiederherstellung der sechs
# entfernten Gastzugriffe.
#
# DAS PROBLEM:
# Der Tenant erzwingt `ExternalUserExpirationRequired = true` mit
# `ExternalUserExpireInDays = 60`. Damit verliert JEDER externe Projektbeteiligte
# alle 60 Tage den Zugriff, unabhaengig davon, ob das Projekt laeuft. Bereits
# zweimal eingetreten und beide Male unbemerkt geblieben:
#   10.07.2026  Site «JANS DATENAUSTAUSCH»
#   08.08.2026  Site «JANS - 2619-KISPI», sieben Personen
# Naechste faellige Ablaeufe auf der KISPI-Site: Livdin Bajrami 07.09.2026,
# Levi Hiltmann 22.09.2026.
#
# WAS DIESES SCRIPT TUT:
# Es setzt auf der Site-Collection «JANS - 2619-KISPI» die Eigenschaft
#     OverrideTenantExternalUserExpirationPolicy = true
# Damit gilt die 60-Tage-Regel fuer DIESE Site nicht mehr. Der Rest des Tenants
# bleibt unveraendert.
#
# WARUM DIESER UMWEG:
# Die SharePoint Online Management Shell kennt den Befehl auch, ist aber ein
# reines Windows-Modul und laeuft auf macOS nicht. PnP PowerShell kann dasselbe
# und ist plattformuebergreifend — nur nimmt es das PEM-Zertifikat nicht an
# (nur PFX). Loesung: den Token ueber den hub-eigenen Graph-Connector holen und
# PnP per `-AccessToken` damit anmelden. Beide Wege stehen in `connectors/WEGE.md`.
#
# FOLGEPFLICHT (wichtig):
# Ohne Ablauf bleiben Gaeste unbegrenzt berechtigt, auch ausgeschiedene. Die
# Bereinigung ist damit eine bewusste Aufgabe statt eines Automatismus. Der
# Wege-Radar meldet den Gaestebestand der Site periodisch zur Durchsicht.
#
# VERWENDUNG:
#     bash scripts/kispi-ablaufpolicy-ausnehmen.sh            # setzen
#     bash scripts/kispi-ablaufpolicy-ausnehmen.sh --pruefen  # nur lesen
#     bash scripts/kispi-ablaufpolicy-ausnehmen.sh --rueckbau # zurueckstellen
# ============================================================================

set -uo pipefail
export LANG="${LANG:-de_CH.UTF-8}"
export LC_ALL="${LC_ALL:-de_CH.UTF-8}"

HUB="/Volumes/daten/jans-ai-hub"
[ -d "$HUB" ] || HUB="$HOME/Developer/jans-ai-hub"
CONNECTOR="$HUB/connectors/m365-graph.mjs"
ADMIN_URL="https://raphaeljans-admin.sharepoint.com"
SITE_URL="https://raphaeljans.sharepoint.com/sites/kispi"

MODUS="setzen"
case "${1:-}" in
    --pruefen) MODUS="pruefen" ;;
    --rueckbau) MODUS="rueckbau" ;;
esac

command -v pwsh >/dev/null 2>&1 || { echo "FEHLER: pwsh nicht installiert."; exit 1; }
[ -f "$CONNECTOR" ] || { echo "FEHLER: $CONNECTOR fehlt."; exit 1; }

echo "Token holen (App-only, Zertifikat) ..."
TOKEN="$(node "$CONNECTOR" --token admin 2>/dev/null)"
if [ -z "$TOKEN" ] || [ "${#TOKEN}" -lt 100 ]; then
    echo "FEHLER: kein gueltiger Token. Reparatur: bash scripts/wege-doctor.sh"
    exit 1
fi
export PNP_TOKEN="$TOKEN"   # nicht als Argument, damit er nicht in `ps` steht

# PowerShell parst das gesamte Script vorab, darum braucht auch der Pruefmodus
# einen syntaktisch gueltigen Wert — er wird dort nie erreicht (frueher exit).
case "$MODUS" in
  pruefen)  WERT='$false' ;;
  setzen)   WERT='$true' ;;
  rueckbau) WERT='$false' ;;
esac

pwsh -NoProfile -Command "
\$ErrorActionPreference = 'Stop'
try {
    Connect-PnPOnline -Url '$ADMIN_URL' -AccessToken \$env:PNP_TOKEN

    \$vorher = Get-PnPTenantSite -Identity '$SITE_URL'
    Write-Output ('Site:    ' + \$vorher.Title)
    Write-Output ('Vorher:  Override=' + \$vorher.OverrideTenantExternalUserExpirationPolicy)

    if ('$MODUS' -eq 'pruefen') {
        Write-Output 'Nur Messung, nichts geaendert.'
        exit 0
    }

    Set-PnPTenantSite -Identity '$SITE_URL' -OverrideTenantExternalUserExpirationPolicy $WERT
    Start-Sleep -Seconds 5

    \$nachher = Get-PnPTenantSite -Identity '$SITE_URL'
    Write-Output ('Nachher: Override=' + \$nachher.OverrideTenantExternalUserExpirationPolicy)

    if (\$nachher.OverrideTenantExternalUserExpirationPolicy -eq ($WERT)) {
        Write-Output 'ERFOLG — Gegenprobe bestaetigt.'
    } else {
        Write-Output 'WARNUNG — Gegenprobe weicht ab, bitte im Admin Center nachsehen.'
        exit 1
    }
} catch {
    Write-Output ('FEHLER: ' + \$_.Exception.Message)
    exit 1
}
"
RC=$?

unset PNP_TOKEN

if [ "$RC" -eq 0 ] && [ "$MODUS" = "setzen" ]; then
    echo
    echo "Die KISPI-Site ist von der 60-Tage-Policy ausgenommen."
    echo "Bajrami (07.09.) und Hiltmann (22.09.) laufen damit nicht mehr ab."
    echo
    echo "Folgepflicht: Gaeste laufen jetzt NIE mehr automatisch ab. Den Bestand"
    echo "periodisch durchsehen:"
    echo "    node connectors/m365-graph.mjs --gaeste kispi"
fi

exit $RC
