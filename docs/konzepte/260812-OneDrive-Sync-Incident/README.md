# OneDrive-Sync-Incident 08.–12.08.2026 — Chronik, Restpunkte, Lehren

Stand: 12.08.2026 abends. Bearbeitet aus der Cloud-Session "OneDrive Sync-Fehler
und Datenchaos" (claude.ai/code), ausgefuehrt von Raphael am Mac Mini.

## Was passiert ist (Kurzfassung)

- **Sa 08.08. 17:46–18:09**: Eine lokale Claude-Session operiert am OneDrive-Sync.
  Im Minutentakt entstehen neue FileProvider-Domains; Sync-Wurzeln verschachteln
  sich rekursiv ("OneDrive-Freigegebene…–OneDrive-Freigegebene…–JANS2 2" usw.).
  Der Sync geraet in eine Endlosschleife ueber zehntausende Platzhalter-Dateien.
  Die Session legt immerhin `~/OneDrive-Quarantaene-260808/` an (Sicherung der
  lokalen Ordner + `vorher-inventar.txt`).
- **08.–12.08.**: Mehrere OneDrive-Neuinstallationen scheitern, weil die alten
  Domains ueberleben — jede Neuinstallation erzeugt neue Suffix-Ordner ("JANS 2",
  "JANS 22"…). Ordner erscheinen ohne Wolken-Symbol (kein nativer On-Demand-Sync).
- **Di 12.08. (Bereinigung)**: OneDrive-Prozess gekillt (`killall OneDrive` —
  Prozessname ist "OneDrive", nicht "Microsoft OneDrive"!), App + Container +
  Caches entfernt, alle 12 verwaisten Domain-Datenbanken in
  `~/Library/Application Support/FileProvider/` geloescht, CloudStorage-Leichen
  entfernt. Zwei dataless-Phantomordner blieben (von Time-Machine-Schnappschuessen
  festgehalten). Festplattendienstprogramm-Erste-Hilfe reparierte die korrupten
  dataless-Inodes (fsck: "dataless bsd_flag is not set").
- **Di 12.08. abends**: Saubere Neuinstallation. Neue Ordner heissen korrekt
  `OneDrive-JANS` und `OneDrive-FreigegebeneBibliotheken–JANS` (ohne Suffix),
  Sync laeuft nativ und gut.

Kollateralschaden: Drei Mac-Mini-Neustarts sperrten den Schluesselbund →
git-auto-sync/Remote-Tasks stumm bis `security unlock-keychain`; lokale
Claude-Sessions verloren ihre Remote-Control-Verbindung.

## Offene Restpunkte

### R1 — Zwei Geisterordner loeschen (ab 14.08. moeglich)

In `~/Library/CloudStorage/` liegen noch zwei leere dataless-Phantomordner vom
08.08. Sie sind inert (0 Byte, kein Prozess). Loeschbar, sobald die
Time-Machine-Schnappschuesse vom 11./12.08. weggealtert sind (~24–48 h).

**WICHTIG: NIE MEHR `rm -rf ~/Library/CloudStorage/OneDrive*` verwenden!**
Der Wildcard traefe jetzt auch die gesunden neuen Ordner `OneDrive-JANS` und
`OneDrive-FreigegebeneBibliotheken–JANS`. Nur noch das gezielte Script
`260814-onedrive-geister-cleanup.sh` (in diesem Ordner) verwenden — es prueft
vor dem Loeschen, dass die Ziele leer/winzig sind, und fasst nur die zwei
exakten Pfade an. Ausfuehrung via Remote-Task-Queue oder lokal.

### R2 — Quarantaene-Ordner abgleichen, dann erst loeschen

`~/OneDrive-Quarantaene-260808/` (2.8 GB, 1'133 Dateien >1 KB) enthaelt die
lokalen Kopien vom Samstag — moeglicherweise letzte Arbeitsstaende, die nie
hochgeladen wurden. Ablauf:
1. Neuen Sync einige Tage stabil laufen lassen.
2. rsync-Trockenlauf (nur Bericht, aendert nichts) je Ordnerpaar, z.B.:
   `rsync -rn --itemize-changes --size-only "…/Quarantaene/JANS - AR - 01 Projekte/" "…/CloudStorage/<neuer Sync-Pfad>/"`
   → listet Dateien, die nur lokal existieren oder abweichen.
3. Abweichungen gezielt in die Cloud kopieren (Browser-Upload oder Kopie in den
   Sync-Ordner), verifizieren.
4. Erst danach Quarantaene loeschen.

### R3 — Haertung (Lehren des Vorfalls, fuer den Hub-Audit / Rules)

1. **Neustart-Konzept**: Nach Reboot ist der Schluesselbund gesperrt → Git-Sync
   faellt stumm aus. Loesung: Post-Boot-Check (launchd) mit Warnung, oder
   Keychain-Unlock-Erinnerung; Heartbeat soll "letzter erfolgreicher Push < X h"
   pruefen und alarmieren.
2. **Stille Ausfaelle**: Auto-Sync-/Runner-Ausfall blieb unbemerkt. Alarmweg
   definieren (Mail/Briefing).
3. **Schutzgitter fuer Sync-Chirurgie**: Eingriffe an FileProvider, CloudStorage,
   Sync-Konfiguration und Keychain gehoeren auf die Freigabe-Liste
   (sync-task-guard-Kategorien erweitern) — auch fuer interaktive lokale Sessions
   als Rule.
4. **Merkregel**: OneDrive-Prozess heisst `OneDrive`; Domains liegen in
   `~/Library/Application Support/FileProvider/`; dataless-Phantome loest
   Erste-Hilfe auf "Macintosh HD - Data".

Audit-Auftrag (2 Phasen, Beleg-Pflicht) ist vorbereitet — Prompt liegt in der
Session-Historie; Ergebnis-Ablage vorgesehen unter `docs/konzepte/260812-Hub-Audit/`.

**Option B aktiviert (12.08., Freigabe Raphael):** Einmaliger launchd-Trigger
`ch.jans.onedrive-geister-trigger` feuert Fr 14.08. 09:00 auf dem Mac Mini,
legt das Cleanup-Script in die Task-Queue und baut sich selbst ab. Bericht
danach unter `remote-tasks/results/260814-onedrive-geister-cleanup/`.
