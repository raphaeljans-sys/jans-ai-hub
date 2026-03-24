# Mac Mini Setup — Diesen Text in Claude Code auf dem Mac Mini einfuegen

Fuehre folgendes Setup fuer die gemeinsame NAS Skill-Bibliothek durch:

## Was zu tun ist

1. **NAS-Mount pruefen**: Stelle sicher dass `/Volumes/daten` gemountet ist. Falls nicht, mounte mit: `open smb://192.168.1.10/daten`

2. **Setup-Script ausfuehren**: Fuehre das Script `bash ~/Developer/jans-ai-hub/scripts/setup-nas-skills.sh` aus. Falls das Repo noch nicht geklont ist, klone es zuerst:
   ```
   git clone git@ssh.github.com:raphaeljans-sys/jans-ai-hub.git ~/Developer/jans-ai-hub
   ```

3. **Pruefen**: Nach dem Script sollten diese Symlinks existieren:
   - `.claude/skills/` → `/Volumes/daten/jans-ai-hub/skills/`
   - `.claude/agents/` → `/Volumes/daten/jans-ai-hub/agents/`
   - `.claude/commands/` → `/Volumes/daten/jans-ai-hub/commands/`

4. **GitHub Auto-Sync einrichten**: Richte den automatischen Git-Push/Pull fuer GitHub-Backup ein:
   ```
   bash ~/Developer/jans-ai-hub/scripts/install-auto-sync.sh
   ```
   Das synchronisiert alle 5 Minuten automatisch mit GitHub (pull, commit, push).
   Log ansehen: `tail -f ~/Developer/jans-ai-hub/.git/auto-sync.log`

5. **Claude-Alias einrichten**: Fuege den Claude-Alias in die `.zshrc` ein, damit `claude` immer im richtigen Projektordner startet:
   ```bash
   # Pruefen ob Alias schon existiert
   if ! grep -q "alias claude=" ~/.zshrc 2>/dev/null; then
     cat >> ~/.zshrc << 'EOF'

# ── JANS AI Hub ────────────────────────────────────────
# "claude" startet immer im Projektordner
alias claude='cd ~/Developer/jans-ai-hub && command claude'
# ───────────────────────────────────────────────────────
EOF
     echo "Claude-Alias hinzugefuegt. Lade .zshrc neu..."
     source ~/.zshrc
   else
     echo "Claude-Alias existiert bereits."
   fi
   ```

6. **Terminal-Berechtigungen**: In den macOS Systemeinstellungen sicherstellen:
   - **Datenschutz & Sicherheit → Festplattenvollzugriff → Terminal** aktivieren
   - **Datenschutz & Sicherheit → Automation → Terminal** alle Apps erlauben

7. **CLAUDE.md aktualisieren**: Die CLAUDE.md im Repo muss den NAS-basierten Ansatz beschreiben (nicht mehr Git-Sync oder SSH). Falls sie noch Merge-Konflikte oder veraltete Abschnitte hat, bereinige sie.

## Architektur

```
NAS DiskStation (/Volumes/daten/jans-ai-hub/)
  skills/      ← Gemeinsame Skills
  agents/      ← Gemeinsame Agents
  commands/    ← Gemeinsame Commands
  plugins/     ← Gemeinsame Plugins
  templates/   ← Gemeinsame Templates

Jede Station:
  .claude/skills/   → Symlink auf NAS
  .claude/agents/   → Symlink auf NAS
  .claude/commands/  → Symlink auf NAS
```

Alle Stationen greifen ueber SMB-Mount auf dieselben Dateien zu. Keine Synchronisation noetig.
