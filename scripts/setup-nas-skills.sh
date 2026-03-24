#!/bin/bash
# ============================================================================
# JANS AI Hub — NAS Skill-Bibliothek Setup
# ============================================================================
# Richtet die gemeinsame Skill-Bibliothek auf dem NAS ein.
# Laeuft auf jeder Arbeitsstation (MacBook Pro, Mac Mini, etc.)
#
# Was passiert:
# 1. Prueft ob NAS gemountet ist
# 2. Sichert bestehende lokale Skills
# 3. Erstellt Symlinks: .claude/skills/ → NAS
# 4. Richtet GitHub-Backup Cron ein (optional)
#
# Ausfuehren:
#   bash ~/Developer/jans-ai-hub/scripts/setup-nas-skills.sh
# ============================================================================

set -e

# Farben
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

REPO_DIR="$HOME/Developer/jans-ai-hub"
CLAUDE_DIR="$REPO_DIR/.claude"
NAS_MOUNT="/Volumes/daten"
NAS_HUB="$NAS_MOUNT/jans-ai-hub"
HOSTNAME=$(scutil --get LocalHostName 2>/dev/null || hostname -s)
BACKUP_DIR="$CLAUDE_DIR/_backup_$(date +%Y%m%d_%H%M%S)"

echo ""
echo "============================================"
echo "  JANS AI Hub — NAS Skill-Bibliothek Setup"
echo "  Station: $HOSTNAME"
echo "============================================"
echo ""

# --------------------------------------------------
# 1. NAS-Mount pruefen
# --------------------------------------------------
echo -n "1. NAS-Mount pruefen... "
if [ -d "$NAS_MOUNT" ] && [ -r "$NAS_MOUNT" ]; then
    echo -e "${GREEN}OK${NC} ($NAS_MOUNT)"
else
    echo -e "${RED}FEHLER${NC}"
    echo ""
    echo "NAS ist nicht gemountet. Bitte zuerst mounten:"
    echo "  Im Buero:  open smb://192.168.1.10/daten"
    echo "  Extern:    open smb://diskstation918.tail8265aa.ts.net/daten"
    exit 1
fi

# --------------------------------------------------
# 2. NAS Skill-Bibliothek pruefen / erstellen
# --------------------------------------------------
echo -n "2. Skill-Bibliothek auf NAS... "
if [ -d "$NAS_HUB/skills" ]; then
    echo -e "${GREEN}existiert bereits${NC}"
else
    echo -e "${YELLOW}wird erstellt${NC}"
    mkdir -p "$NAS_HUB/skills"
    mkdir -p "$NAS_HUB/agents"
    mkdir -p "$NAS_HUB/commands"
    mkdir -p "$NAS_HUB/plugins"
    mkdir -p "$NAS_HUB/templates"
    echo "   Ordner erstellt: skills, agents, commands, plugins, templates"
fi

# --------------------------------------------------
# 3. Lokale Dateien sichern (falls vorhanden und keine Symlinks)
# --------------------------------------------------
echo -n "3. Lokale Dateien sichern... "
NEEDS_BACKUP=false

for DIR in skills agents commands; do
    if [ -d "$CLAUDE_DIR/$DIR" ] && [ ! -L "$CLAUDE_DIR/$DIR" ]; then
        NEEDS_BACKUP=true
        break
    fi
done

if [ "$NEEDS_BACKUP" = true ]; then
    mkdir -p "$BACKUP_DIR"
    for DIR in skills agents commands; do
        if [ -d "$CLAUDE_DIR/$DIR" ] && [ ! -L "$CLAUDE_DIR/$DIR" ]; then
            cp -R "$CLAUDE_DIR/$DIR" "$BACKUP_DIR/"

            # Falls NAS-Ordner leer: lokale Dateien dorthin kopieren
            if [ -z "$(ls -A "$NAS_HUB/$DIR/" 2>/dev/null)" ]; then
                cp -R "$CLAUDE_DIR/$DIR/"* "$NAS_HUB/$DIR/" 2>/dev/null || true
                echo ""
                echo "   → Lokale $DIR auf NAS kopiert (NAS war leer)"
            fi
        fi
    done
    echo -e "${GREEN}OK${NC} → $BACKUP_DIR"
else
    echo -e "${YELLOW}uebersprungen${NC} (bereits Symlinks oder keine Daten)"
fi

# --------------------------------------------------
# 4. Symlinks erstellen
# --------------------------------------------------
echo -n "4. Symlinks erstellen... "
LINKS_CREATED=0

for DIR in skills agents commands; do
    TARGET="$NAS_HUB/$DIR"
    LINK="$CLAUDE_DIR/$DIR"

    if [ -L "$LINK" ]; then
        CURRENT_TARGET=$(readlink "$LINK")
        if [ "$CURRENT_TARGET" = "$TARGET" ]; then
            continue  # Symlink zeigt bereits auf NAS
        fi
    fi

    # Alten Ordner/Symlink entfernen
    rm -rf "$LINK"

    # Neuen Symlink erstellen
    ln -s "$TARGET" "$LINK"
    LINKS_CREATED=$((LINKS_CREATED + 1))
done

if [ $LINKS_CREATED -gt 0 ]; then
    echo -e "${GREEN}$LINKS_CREATED Symlinks erstellt${NC}"
else
    echo -e "${GREEN}bereits korrekt${NC}"
fi

# --------------------------------------------------
# 5. Verifizieren
# --------------------------------------------------
echo ""
echo "Verifizierung:"
for DIR in skills agents commands; do
    LINK="$CLAUDE_DIR/$DIR"
    if [ -L "$LINK" ]; then
        TARGET=$(readlink "$LINK")
        COUNT=$(find "$LINK" -type f -not -name '.DS_Store' 2>/dev/null | wc -l | tr -d ' ')
        echo -e "  $DIR → $TARGET (${GREEN}$COUNT Dateien${NC})"
    else
        echo -e "  $DIR → ${RED}KEIN SYMLINK${NC}"
    fi
done

# --------------------------------------------------
# 6. Git-Repo auf NAS (fuer Versionierung)
# --------------------------------------------------
echo ""
echo -n "5. Git-Repo auf NAS... "
if [ -d "$NAS_HUB/.git" ]; then
    echo -e "${GREEN}existiert${NC}"
else
    cd "$NAS_HUB"
    git init > /dev/null 2>&1
    git add -A > /dev/null 2>&1
    git commit -m "Initial: Skill-Bibliothek [$HOSTNAME]" > /dev/null 2>&1
    echo -e "${GREEN}initialisiert${NC}"
    cd "$REPO_DIR"
fi

# --------------------------------------------------
# Zusammenfassung
# --------------------------------------------------
echo ""
echo "============================================"
echo -e "  ${GREEN}Setup abgeschlossen!${NC}"
echo "============================================"
echo ""
echo "  NAS Skill-Bibliothek: $NAS_HUB"
echo "  Symlinks in:          $CLAUDE_DIR"
echo "  Station:              $HOSTNAME"
echo ""
echo "  Alle Stationen die dieses Script ausfuehren"
echo "  teilen automatisch dieselben Skills, Agents"
echo "  und Commands ueber das NAS."
echo ""
echo "  Neue Skills erstellen:"
echo "    → Einfach in Claude Code einen Skill erstellen"
echo "    → Er landet automatisch auf dem NAS"
echo "    → Alle anderen Stationen sehen ihn sofort"
echo ""
