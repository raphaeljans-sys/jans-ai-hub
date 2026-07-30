# Stations-Status: macbook-pro

Stand: 30.07.2026 10:37:45

## Aktive Claude-Sessions (Transkript-Aktivitaet < 30 Min)
- Developer/jans/ai/hub  (letzte Aktivitaet 10:37)

## Laufende Arbeits-Prozesse
- /bin/zsh -c source /Users/raphaeljans/.claude/shell-snapshots/snapshot-zsh-1785387474344-fkvip1.sh 2>/dev/null || true
echo "=== Schlusskontrolle, alle fuenf Entscheide ==="
echo "1 E14 — eine Wahrheit fuer Kt. SZ:"
echo "   NAS:  $(node skills/oereb-schwyz/connectors/geo-sz.mjs 2>&1 | head -1 | cut -c1-40)..."
echo "   Ziel: skills/planungsgrundlagen/connectors/geo-sz.mjs ($(wc -c < skills/planungsgrundlagen/connectors/geo-sz.mj
echo "2 E13 — Restbestand toISOString (soll: nur bexio):"
grep -rn '"'"'toISOString().slice(0, *10)'"'"' connectors/ skills/ 2>/dev/null | wc -l | sed '"'"'s/^/   Vorkommen: /'"'
echo "3 Report umbenannt:"; ls wissen/planungsgrundlagen/outputs/ | grep 2026-07-30 | sed '"'"'s/^/   /'"'"'
echo "4 settings.json Write-Pfadregeln:"; grep -cE '"'"'Write\(//'"'"' .claude/settings.json | sed '"'"'s/^/   /'"'"'
echo "5 Neuer Takt im Rollen-Register:"; grep -c '"'"'planungsgrundlagen-wartung'"'"' logbuch/rollen/rollen-map.tsv | se
echo ""
echo "=== Git-Status NAS ==="; git status --porcelain | head -3; echo "   (leer = alles gesichert)"' && pwd -P >| /tmp/c

## Projektordner-Aktivitaet (OneDrive, letzte 12 h)
- keine

## Hub-Git-Stand (NAS)
- 3672a3a6 FIX E14: Symlink durch Weiterleitungsdatei ersetzt — ein echter Symlink wird vom macOS-SMB-Client als XSym-Textdatei geschrieben und vom nativen Committer als Inhalt erfasst, wodurch Klone eine kaputte 1-KB-Datei statt des Connectors zogen (auf dem Mini belegt und behoben)
