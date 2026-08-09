#!/bin/bash
# ============================================================================
# KISPI — Gastzugriffe wiederherstellen (Vorfall 08.08.2026)
# ============================================================================
# Sechs externe Projektbeteiligte haben am 08.08.2026 den Zugriff auf die
# Projektsite «JANS - 2619-KISPI» verloren. Ursache ist die Tenant-Policy
#     ExternalUserExpirationRequired = true
#     ExternalUserExpireInDays       = 60
# (gemessen am 09.08.2026 ueber die SPO-Admin-API). Sie wiederholt sich alle
# 60 Tage und hat vorher schon die Site «JANS DATENAUSTAUSCH» getroffen
# (10.07.2026, ebenfalls unbemerkt).
#
# GEMESSENER BEFUND (09.08.2026, 02:10):
#   - Alle sieben gemeldeten Personen sind weiterhin Mitglied der M365-Gruppe
#     kispi@ und besitzen gueltige Gastkonten im Verzeichnis.
#   - In der Site-User-Liste steht von ihnen nur noch Yasarcan Cetin.
#     Die uebrigen SECHS wurden von der Site entfernt.
#   - Naechste faellige Ablaeufe auf derselben Site: Livdin Bajrami 07.09.2026,
#     Levi Hiltmann 22.09.2026.
#
# DRINGLICHKEIT: Der am 07.08. um 16:12 an B. Kuebler versandte SharePoint-Link
# auf die Roethlisberger-Projektplaene ist tot, und am Mo 10.08.2026 soll der
# definitive Stand der Sanitaerinstallationen ueber diesen Kanal geliefert
# werden.
#
# WAS DIESES SCRIPT TUT:
# Es fuegt die sechs entfernten Personen wieder der SharePoint-Gruppe
# «JANS - 2619-KISPI Members» hinzu. Das entspricht genau dem Zugriff, den sie
# ueber ihre bestehende M365-Gruppenmitgliedschaft ohnehin haben sollen. Es ist
# KEINE Rechteausweitung und jederzeit umkehrbar (Rueckbau am Ende dieser Datei).
#
# Die Mailadressen sind NICHT geraten, sondern am 09.08.2026 aus dem
# Verzeichnis verifiziert (m365 entra user list --type Guest).
#
# VERWENDUNG:
#     bash scripts/kispi-gastzugriff-wiederherstellen.sh            # ausfuehren
#     bash scripts/kispi-gastzugriff-wiederherstellen.sh --pruefen  # nur messen
# ============================================================================

set -uo pipefail
export LANG="${LANG:-de_CH.UTF-8}"
export LC_ALL="${LC_ALL:-de_CH.UTF-8}"

M365="$HOME/Developer/jans-ai-hub/node_modules/.bin/m365"
[ -x "$M365" ] || M365="$(command -v m365 2>/dev/null)"
SITE="https://raphaeljans.sharepoint.com/sites/kispi"
GRUPPE_ID=5   # JANS - 2619-KISPI Members

NUR_PRUEFEN=0
[ "${1:-}" = "--pruefen" ] && NUR_PRUEFEN=1

if [ -z "$M365" ] || [ ! -x "$M365" ]; then
    echo "FEHLER: CLI for Microsoft 365 nicht gefunden."
    echo "Reparatur: bash scripts/wege-doctor.sh"
    exit 1
fi

if ! "$M365" status --output json 2>/dev/null | grep -q '"authType": *"certificate"'; then
    echo "FEHLER: M365 nicht per Zertifikat angemeldet."
    echo "Reparatur: bash scripts/wege-doctor.sh"
    exit 1
fi

# Die sechs entfernten Personen (Cetin steht noch auf der Site und fehlt hier bewusst)
PERSONEN=(
    "benjamin.kuebler_gruner.ch#EXT#@raphaeljans.onmicrosoft.com|Benjamin Kuebler|Gruner"
    "cekdar.duran_gruner.ch#EXT#@raphaeljans.onmicrosoft.com|Cekdar Duran|Gruner"
    "jens.ziegel_gruner.ch#EXT#@raphaeljans.onmicrosoft.com|Jens Ziegel|Gruner"
    "fabian.wuersch_kispi.uzh.ch#EXT#@raphaeljans.onmicrosoft.com|Fabian Wuersch|KISPI"
    "michael.spoerri_kispi.uzh.ch#EXT#@raphaeljans.onmicrosoft.com|Michael Spoerri|KISPI"
    "ms_gastro-online.ch#EXT#@raphaeljans.onmicrosoft.com|Marco Schwander|Gastro-Online"
)

echo "KISPI-Gastzugriffe wiederherstellen"
echo "Site: $SITE"
echo

if [ "$NUR_PRUEFEN" -eq 1 ]; then
    echo "Aktueller Stand der Site-Nutzer (nur Messung):"
    "$M365" request \
        --url "$SITE/_api/web/siteusers?\$filter=IsShareByEmailGuestUser%20eq%20true&\$select=Title,Email,Expiration&\$top=100" \
        --accept 'application/json;odata=nometadata' 2>/dev/null \
      | python3 -c "
import sys, json
d = json.load(sys.stdin)
for u in sorted(d.get('value', []), key=lambda x: x.get('Title','')):
    print(f\"  {u.get('Expiration','') or '(kein Ablauf)':<26} {u.get('Title','')}\")
" 2>/dev/null
    exit 0
fi

ERFOLG=0
FEHLER=0

for eintrag in "${PERSONEN[@]}"; do
    UPN="${eintrag%%|*}"
    REST="${eintrag#*|}"
    NAME="${REST%%|*}"
    FIRMA="${REST##*|}"

    printf "  %-20s %-14s " "$NAME" "($FIRMA)"
    if "$M365" spo group member add \
         --webUrl "$SITE" --groupId "$GRUPPE_ID" \
         --userNames "$UPN" >/dev/null 2>&1
    then
        echo "wiederhergestellt"
        ERFOLG=$((ERFOLG+1))
    else
        echo "FEHLGESCHLAGEN"
        FEHLER=$((FEHLER+1))
    fi
done

echo
echo "Ergebnis: $ERFOLG wiederhergestellt, $FEHLER fehlgeschlagen"
echo
echo "Gegenprobe:"
"$M365" spo group member list --webUrl "$SITE" --groupId "$GRUPPE_ID" --output json 2>/dev/null \
  | grep -E '"(Title|Email)"' | head -30

echo
echo "Naechster Schritt gegen die Wiederholung: die Site von der 60-Tage-Policy"
echo "ausnehmen (SharePoint Admin Center, Site JANS - 2619-KISPI), sonst laufen"
echo "Bajrami am 07.09. und Hiltmann am 22.09.2026 als naechste ab."

# ----------------------------------------------------------------------------
# RUECKBAU, falls die Aenderung zurueckgenommen werden soll:
#   for U in benjamin.kuebler_gruner.ch cekdar.duran_gruner.ch \
#            jens.ziegel_gruner.ch fabian.wuersch_kispi.uzh.ch \
#            michael.spoerri_kispi.uzh.ch ms_gastro-online.ch; do
#     m365 spo group member remove --webUrl "$SITE" --groupId 5 \
#          --userName "${U}#EXT#@raphaeljans.onmicrosoft.com" --force
#   done
# ----------------------------------------------------------------------------
