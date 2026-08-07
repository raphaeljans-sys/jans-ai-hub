#!/bin/bash
# =============================================================================
# JANS AI Hub — Scheduled-Tasks-Spiegel (Backup der Task-Registries)
# =============================================================================
# Die Wecker-Dateien der Claude-Scheduled-Tasks liegen pro Station unter
# ~/.claude/scheduled-tasks/ (User-Ebene, NICHT im Git-Backup). Dieses Script
# spiegelt sie nach /Volumes/daten/jans-ai-hub/templates/scheduled-tasks/<station>/,
# wo der native NAS-Committer (nas-selfcommit.sh, 15-Min-Cron) sie versioniert.
#
# - Laeuft auf beiden Stationen; spiegelt immer die LOKALE Registry.
# - Auf dem MacBook Pro wird zusaetzlich die Registry des Mac Mini via
#   `ssh mini` gezogen (opportunistisch: Mini nicht erreichbar = kein Fehler,
#   der letzte Spiegel-Stand bleibt stehen).
# - Der Spiegel ist DOKUMENTATION/BACKUP, nie Live-Zustand: enabled:/cron_target:
#   im Frontmatter koennen dem echten Betrieb widersprechen (Registry-Wahrheit
#   hat nur `list_scheduled_tasks` der jeweiligen Station).
#
# Verwendung: bash /Volumes/daten/jans-ai-hub/scripts/scheduled-tasks-mirror.sh
# Takt: heartbeat Check 11 (werktags ~09:40, MacBook Pro)
# Eingerichtet: 07.08.2026 (Auftrag Raphael, Luecke Git-Backup der Wecker)
# =============================================================================

set -u

NAS_ROOT="/Volumes/daten/jans-ai-hub"
DEST_ROOT="$NAS_ROOT/templates/scheduled-tasks"
SRC="$HOME/.claude/scheduled-tasks"

# NAS-Mount pruefen (Guard analog ensure-nas-mounted.sh, hier nur Lesecheck)
if [ ! -d "$NAS_ROOT/scripts" ]; then
  echo "FEHLER: NAS nicht gemountet ($NAS_ROOT) — Spiegel uebersprungen." >&2
  exit 1
fi

# Station bestimmen (Namen wie in sync-tasks/: macbook-pro, mac-mini)
HOST_SHORT="$(hostname -s)"
case "$HOST_SHORT" in
  Macbookpro|MacBook*|macbook*) STATION="macbook-pro" ;;
  Macmini|macmini|mac-mini*)    STATION="mac-mini" ;;
  *)                            STATION="$(echo "$HOST_SHORT" | tr '[:upper:]' '[:lower:]')" ;;
esac

RC=0

# 1) Lokale Registry spiegeln
if [ -d "$SRC" ]; then
  mkdir -p "$DEST_ROOT/$STATION"
  if rsync -a --delete "$SRC/" "$DEST_ROOT/$STATION/"; then
    N_LOCAL=$(find "$DEST_ROOT/$STATION" -name "SKILL.md" | wc -l | tr -d ' ')
    echo "OK: $STATION gespiegelt ($N_LOCAL Tasks) -> templates/scheduled-tasks/$STATION/"
  else
    echo "FEHLER: rsync lokal ($STATION) fehlgeschlagen." >&2
    RC=1
  fi
else
  echo "HINWEIS: $SRC existiert nicht auf $STATION — nichts zu spiegeln."
fi

# 2) Vom MacBook Pro aus: Mini-Registry opportunistisch dazuholen
if [ "$STATION" = "macbook-pro" ]; then
  if ssh -o ConnectTimeout=8 -o BatchMode=yes mini 'test -d ~/.claude/scheduled-tasks' 2>/dev/null; then
    mkdir -p "$DEST_ROOT/mac-mini"
    if rsync -a --delete -e "ssh -o ConnectTimeout=8 -o BatchMode=yes" \
        mini:.claude/scheduled-tasks/ "$DEST_ROOT/mac-mini/"; then
      N_MINI=$(find "$DEST_ROOT/mac-mini" -name "SKILL.md" | wc -l | tr -d ' ')
      echo "OK: mac-mini gespiegelt ($N_MINI Tasks) -> templates/scheduled-tasks/mac-mini/"
    else
      echo "WARNUNG: rsync mac-mini fehlgeschlagen — letzter Spiegel-Stand bleibt stehen." >&2
    fi
  else
    echo "HINWEIS: Mac Mini nicht erreichbar — letzter Spiegel-Stand bleibt stehen."
  fi
fi

exit $RC
