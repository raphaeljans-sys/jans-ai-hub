---
name: workstation-setup
description: >
  Vollständiges Setup einer neuen macOS-Arbeitsstation für Raphael Jans Architekten ETH (JANS):
  Homebrew, Standard-Tools, SSH-Key, Git-Konfiguration, macOS-Systemeinstellungen, NAS-Mount,
  Hub-Einbindung via neue-station.sh (Symlinks, launchd-Jobs, Pendenzen-Queue) und der
  PFLICHT-Schritt Festplattenvollzugriff für /bin/bash (launchd→SMB).
  Diesen Skill verwenden bei: "neue Arbeitsstation einrichten", "neuer Mac", "setup workstation",
  "Mac einrichten", "frischer Mac", "neues Gerät konfigurieren", "workstation setup",
  "neues MacBook", "Station einbinden" — auch wenn nur ein Teilbereich erwähnt wird
  (z.B. "kannst du Homebrew installieren" oder "git einrichten"). Immer vollständig
  durchführen, sofern der Benutzer nichts anderes wünscht. Infrastruktur-Skill;
  Schwester von heartbeat (dort Health-Check, hier Ersteinrichtung).
---

# JANS Workstation Setup

## Contract

- **Trigger:** Greift, wenn ein neuer/frischer Mac für JANS eingerichtet oder eine bestehende Station nachgerüstet werden soll (Homebrew, Git, SSH, NAS, Hub-Einbindung, launchd/FDA). Infrastruktur-Skill.
- **Inputs:** Stationsname (Kleinbuchstaben/Ziffern/Bindestrich, z.B. `station-03`); NAS erreichbar (LAN oder Tailscale); Admin-Rechte auf dem Mac.
- **Output-Ablage:** kein Datei-Output (konfiguriert die Station); Registereintrag in `docs/stationen.md` auf dem NAS erfolgt automatisch durch `neue-station.sh`.
- **Abhaengige Rules:** umlaute-konvention, antwort-formatierung, sync-kanonische-quelle.
- **Vorgelagert:** —
- **Nachgelagert:** `heartbeat` (Verifikation), `/station-sync` (offene Pendenzen der anderen Station).

**Kanonische Quelle:** Dieses SKILL.md auf dem NAS (`skills/workstation-setup/`) ist der
Master. Eine allfällige Kopie als claude.ai-Skill-Upload ist nur ein Wegweiser hierher —
inhaltliche Änderungen IMMER hier machen.

Du richtest eine neue macOS-Arbeitsstation für Raphael Jans Architekten ETH ein. Führe die
Schritte **in dieser Reihenfolge** aus. Prüfe bei jedem Schritt, ob etwas bereits installiert
oder konfiguriert ist — überspringe oder ergänze entsprechend (alles ist idempotent). Gib dem
Benutzer nach jedem abgeschlossenen Block eine kurze Rückmeldung.

---

## 0 — Vorbereitung & Systeminfo

```bash
echo "macOS: $(sw_vers -productVersion)"
echo "Chip:  $(uname -m)"
echo "User:  $(whoami)"
echo "Host:  $(hostname)"
```

Zeige die Ausgabe dem Benutzer und fahre fort.

---

## 1 — Homebrew installieren (falls nicht vorhanden)

```bash
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  # Apple Silicon: PATH ergänzen
  if [[ $(uname -m) == "arm64" ]]; then
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
else
  echo "✓ Homebrew bereits installiert: $(brew --version | head -1)"
fi
```

---

## 2 — Standard-Tools via Homebrew

Installiere die folgenden Tools (überspringe bereits vorhandene):

```bash
brew install git wget curl python3 node nvm jq watch tree
```

**Wichtig:** `nvm` nach der Installation in `~/.zshrc` einbinden:

```bash
if ! grep -q "nvm" ~/.zshrc 2>/dev/null; then
  cat >> ~/.zshrc << 'NVM'

# ── nvm ──────────────────────────────────────────────
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && \. "$(brew --prefix nvm)/nvm.sh"
# ─────────────────────────────────────────────────────
NVM
fi
```

Prüfe nach der Installation:
```bash
git --version && python3 --version && node --version && echo "✓ Alle Tools OK"
```

---

## 3 — SSH-Key einrichten

```bash
SSH_KEY="$HOME/.ssh/id_ed25519"
if [ -f "$SSH_KEY" ]; then
  echo "✓ SSH-Key bereits vorhanden:"
  cat "${SSH_KEY}.pub"
else
  ssh-keygen -t ed25519 -C "raphaeljans@me.com" -f "$SSH_KEY" -N ""
  echo ""
  echo "✓ Neuer SSH-Key erstellt. Public Key:"
  cat "${SSH_KEY}.pub"
fi

# ssh-agent konfigurieren
if ! grep -q "ssh-agent" ~/.zshrc 2>/dev/null; then
  cat >> ~/.zshrc << 'SSH'

# ── SSH Agent ────────────────────────────────────────
eval "$(ssh-agent -s)" &>/dev/null
ssh-add --apple-use-keychain ~/.ssh/id_ed25519 2>/dev/null
# ─────────────────────────────────────────────────────
SSH
fi
eval "$(ssh-agent -s)" &>/dev/null
ssh-add --apple-use-keychain "$SSH_KEY" 2>/dev/null || ssh-add "$SSH_KEY" 2>/dev/null
```

Zeige den Public Key dem Benutzer: Er muss bei GitHub unter **Settings → SSH Keys**
hinterlegt werden (Repo `raphaeljans-sys/jans-ai-hub`). GitHub-SSH läuft bei JANS über
**Port 443** (`ssh.github.com`), weil Port 22 durch die Firewall blockiert ist:

```bash
if ! grep -q "ssh.github.com" ~/.ssh/config 2>/dev/null; then
  cat >> ~/.ssh/config << 'GH'
Host ssh.github.com
  HostName ssh.github.com
  Port 443
  User git
GH
fi
```

---

## 4 — Git konfigurieren

```bash
git config --global user.name  "Raphael Jans"
git config --global user.email "raphaeljans@me.com"
git config --global core.editor "nano"
git config --global init.defaultBranch "main"
git config --global pull.rebase false
git config --global core.autocrlf input

echo "✓ Git konfiguriert:"
git config --global --list | grep -E "user\.|core\.|init\.|pull\."
```

---

## 5 — macOS Systemeinstellungen

Diese Einstellungen werden per `defaults write` gesetzt. **Danach ist ein Neustart des Finders
und Docks erforderlich** (am Ende dieses Blocks automatisch).

### Finder
```bash
# Dateiendungen immer anzeigen
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Versteckte Dateien anzeigen
defaults write com.apple.finder AppleShowAllFiles -bool true
# Pfadleiste im Finder anzeigen
defaults write com.apple.finder ShowPathbar -bool true
# Statusleiste anzeigen
defaults write com.apple.finder ShowStatusBar -bool true
# Suche standardmässig im aktuellen Ordner
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# Keine .DS_Store auf Netzlaufwerken (wichtig fürs NAS!)
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# Keine .DS_Store auf USB-Sticks
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# Neues Finder-Fenster zeigt Home-Verzeichnis
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
```

### Dock
```bash
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0.1
defaults write com.apple.dock autohide-time-modifier -float 0.4
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock orientation -string "left"
```

### Screenshots
```bash
defaults write com.apple.screencapture type jpg
defaults write com.apple.screencapture disable-shadow -bool true
mkdir -p "$HOME/Documents/Screenshots"
defaults write com.apple.screencapture location "$HOME/Documents/Screenshots"
```

### Tastatur & Trackpad
```bash
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
```

### Finder & Dock neu starten
```bash
killall Finder 2>/dev/null || true
killall Dock   2>/dev/null || true
echo "✓ macOS Einstellungen gesetzt — Finder & Dock neu gestartet"
```

---

## 6 — NAS mounten

Das NAS (Synology DS918+) ist die zentrale Skill-Bibliothek des Hub und muss unter
`/Volumes/daten` gemountet sein:

```bash
# Im Büro (LAN):
open "smb://192.168.1.10/daten"
# Extern (Tailscale muss installiert und angemeldet sein):
open "smb://diskstation918.tail8265aa.ts.net/daten"
```

Warten bis der Mount steht, dann prüfen:

```bash
ls /Volumes/daten/jans-ai-hub/ >/dev/null && echo "✓ NAS gemountet"
```

Im Finder zusätzlich: **Systemeinstellungen → Allgemein → Anmeldeobjekte** — das
Volume wird später durch den launchd-Job `com.jans.nas-auto-mount` automatisch
nachgemountet (installiert `neue-station.sh` in Schritt 7).

---

## 7 — Hub-Einbindung: neue-station.sh (Kernstück)

Die eigentliche Einbindung in den JANS AI Hub macht EIN Script — nicht von Hand nachbauen:

```bash
bash /Volumes/daten/jans-ai-hub/scripts/neue-station.sh <stationsname>
# Beispiel: bash /Volumes/daten/jans-ai-hub/scripts/neue-station.sh station-03
```

Es erledigt idempotent: Stations-Identität (`~/.jans-station`), SSD-Repo-Klon
(`~/Developer/jans-ai-hub`, GitHub mit NAS-Fallback), Symlinks
`.claude/skills|agents|commands → NAS`, launchd-Jobs (NAS-Auto-Mount, Git-Auto-Sync,
Sync-Task-Runner), den **FDA-Check** (Schritt 5b, siehe unten), die eigene
Pendenzen-Queue (`sync-tasks/<station>/`) und den Eintrag im Stations-Register
(`docs/stationen.md`). Am Ende druckt es die Checkliste der manuellen Restschritte
(Claude Code, Tailscale, M365-Zertifikat, `.env`, Apple Mail).

---

## 7b — Festplattenvollzugriff für /bin/bash (launchd → SMB, PFLICHT)

macOS-TCC blockiert von **launchd** gestartete `/bin/bash`-Jobs beim Zugriff auf den
SMB-Mount `/Volumes/daten` («Operation not permitted») — entdeckt am 11.06.2026 auf
MacBook Pro UND Mac Mini. Betroffen sind alle JANS-Hintergrund-Jobs, die aufs NAS
zugreifen (`ch.jans.synctask-runner`, `com.jans.station-status`); der Sync-Task-Runner
scheitert dabei **still mit Exit 0** — Pendenzen bleiben unbemerkt liegen.
Festplattenvollzugriff für Terminal reicht NICHT, weil launchd die Jobs ohne
Terminal startet.

**Zwei Massnahmen:**

1. **launchd-Plists zeigen auf die lokale SSD-Script-Kopie**
   (`~/Developer/jans-ai-hub/scripts/...`), nie auf den NAS-Pfad. Die Installer
   (`install-synctask-runner.sh` etc.) machen das automatisch.

2. **`/bin/bash` Festplattenvollzugriff geben** — manuell, TCC lässt sich nicht
   scripten. Öffne die Einstellungen direkt:

   ```bash
   open "x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles"
   ```

   Dann unter **Festplattenvollzugriff** auf **+** klicken, **Cmd+Shift+G** drücken,
   Pfad `/bin/bash` eingeben, öffnen und den Schalter aktivieren.

**Verifizieren** (testet den NAS-Zugriff aus echtem launchd-Kontext via
Probe-Job + Schreibtest; gibt bei Fehlschlag die Anleitung aus):

```bash
bash /Volumes/daten/jans-ai-hub/scripts/check-launchd-fda.sh
```

Danach den Runner anstossen und das Log prüfen:

```bash
launchctl kickstart -k gui/$(id -u)/ch.jans.synctask-runner
tail -5 ~/Library/Logs/jans-synctask-runner.err.log 2>/dev/null
```

---

## 8 — Optional: Claude Cowork Agent (Dispatch-Stationen)

Nur für Stationen, die headless Aufträge entgegennehmen sollen (heute: Mac Mini).
Das Installations-Script liegt in OneDrive (`JANS AI/Claude-Cowork/`); falls OneDrive
auf der Station synchronisiert ist:

```bash
COWORK_SCRIPT=$(ls ~/Library/CloudStorage/OneDrive-*/JANS\ AI/Claude-Cowork/cowork_mac_installation.sh 2>/dev/null | head -1)
[ -n "$COWORK_SCRIPT" ] && bash "$COWORK_SCRIPT" || echo "~ Cowork-Script nicht gefunden — Schritt überspringen (nur für Dispatch-Stationen nötig)"
```

---

## 9 — Abschlussprüfung

```bash
echo ""
echo "═══════════════════════════════════════════"
echo "  JANS Workstation Setup — Zusammenfassung"
echo "═══════════════════════════════════════════"
echo ""

command -v brew &>/dev/null \
  && echo "  ✓ Homebrew      $(brew --version | head -1)" \
  || echo "  ✗ Homebrew      FEHLT"

command -v git &>/dev/null \
  && echo "  ✓ Git           $(git --version)" \
  || echo "  ✗ Git           FEHLT"

command -v python3 &>/dev/null \
  && echo "  ✓ Python        $(python3 --version)" \
  || echo "  ✗ Python        FEHLT"

command -v node &>/dev/null \
  && echo "  ✓ Node          $(node --version)" \
  || echo "  ✗ Node          FEHLT"

[ -f ~/.ssh/id_ed25519 ] \
  && echo "  ✓ SSH Key       ~/.ssh/id_ed25519" \
  || echo "  ✗ SSH Key       FEHLT"

GIT_NAME=$(git config --global user.name 2>/dev/null)
[ -n "$GIT_NAME" ] \
  && echo "  ✓ Git User      $GIT_NAME" \
  || echo "  ✗ Git User      nicht konfiguriert"

[ -d /Volumes/daten/jans-ai-hub ] \
  && echo "  ✓ NAS           /Volumes/daten gemountet" \
  || echo "  ✗ NAS           nicht gemountet (open smb://192.168.1.10/daten)"

[ -L ~/Developer/jans-ai-hub/.claude/skills ] \
  && echo "  ✓ Symlinks      .claude/skills → NAS" \
  || echo "  ✗ Symlinks      fehlen (neue-station.sh ausführen)"

launchctl list 2>/dev/null | grep -q ch.jans.synctask-runner \
  && echo "  ✓ Runner        ch.jans.synctask-runner geladen" \
  || echo "  ✗ Runner        nicht geladen (install-synctask-runner.sh)"

bash /Volumes/daten/jans-ai-hub/scripts/check-launchd-fda.sh >/dev/null 2>&1
case $? in
  0) echo "  ✓ FDA           launchd-bash darf auf /Volumes/daten" ;;
  2) echo "  ~ FDA           nicht prüfbar (NAS fehlt)" ;;
  *) echo "  ✗ FDA           BLOCKIERT — Schritt 7b ausführen!" ;;
esac

echo ""
echo "  → 'source ~/.zshrc' ausführen um alles zu aktivieren"
echo "  → Mac neu starten empfohlen (macOS Einstellungen)"
echo ""
```

---

## Hinweise

- Das Setup ist idempotent — es kann auf einer bereits teilweise eingerichteten Station
  problemlos erneut ausgeführt werden.
- Netzdaten: NAS `192.168.1.10` (LAN) / `100.92.246.28` (Tailscale), Mac Mini
  `192.168.1.210` / `100.120.219.12` — Details in `CLAUDE.md` (Sektion Netzwerk).
- Die Hub-Logik (Symlinks, launchd, Queue, Register) lebt in `scripts/neue-station.sh` —
  dort ändern, nicht hier duplizieren. Dieser Skill ist die Komfort-Hülle drumherum.
- Bei Firmensoftware (Vectorworks, Adobe, etc.) muss der Benutzer die Lizenzen selbst
  aktivieren — das Setup beschränkt sich auf die Infrastruktur.
- Nach dem Setup: Skill `heartbeat` laufen lassen und `/station-sync` prüfen.
