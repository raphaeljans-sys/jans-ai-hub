---
description: "Speicher-Hygiene- und Daten-Cleaning-Check fuer den Microsoft-365/SharePoint-Tenant (raphaeljans). Stellt sicher, dass der Tenant nur operativ benoetigten Speicher belegt und technische Altlasten (volle Papierkoerbe, aufgeblaehter Versionsverlauf, tote Sites, Junk-Dateien) erkannt und sicher bereinigt werden. Schwester von heartbeat (System-Health) und wissenscheck (Wissens-Health) — hier Speicher-/Tenant-Health. Verwenden wenn: 'Speicher-Hygiene', 'Tenant aufraeumen', 'Daten-Cleaning', 'Speicher voll', 'Tenant-Speicher pruefen', 'Altlasten bereinigen', 'Papierkoerbe + Versionen pruefen', oder als woechentlicher Scheduled Task tenant-hygiene-weekly. Laeuft in zwei Phasen: Phase 1 (Erkennen + Report + sichere Auto-Bereinigung) immer/unbeaufsichtigt, Phase 2 (riskante Loeschungen) nur interaktiv mit Bestaetigung."
---

# JANS AI Hub — Tenant-Speicher-Hygiene

## Contract

- **Trigger:** Speicher-/Daten-Hygiene des M365-Tenants — auf Anfrage ("Speicher-Hygiene", "Tenant aufraeumen", "Speicher voll") oder als woechentlicher Scheduled Task `tenant-hygiene-weekly`. Infrastruktur-/Aufsichts-Skill.
- **Inputs:** keine — liest den Tenant-Zustand selbst ueber den M365-Connector (`mcp__microsoft-365__m365_run_command`, App-only Zertifikat, headless-faehig).
- **Output-Ablage:** dated Report nach `/Volumes/daten/jans-ai-hub/tenant-hygiene/reports/JJJJMMTT-hygiene.md`.
- **Abhaengige Rules:** antwort-formatierung, dateinamen-konvention.
- **Verwandt:** `heartbeat` (System-Health), `wissenscheck` (Wissens-Health), `logbuch` (Aufsicht). Siehe Memory `project_m365_speicher_cleanup`.

## Zweck

Haelt den 1-TB-SharePoint-Pool schlank: erkennt regelmaessig, **wo Speicher belegt
wird, der nicht operativ benoetigt wird**, und bereinigt die unstrittig sicheren
Altlasten automatisch. Riskantes (Loeschen echter Dateien/Sites) wird nur erkannt,
beziffert und Raphael zur Bestaetigung vorgelegt — nie automatisch ausgefuehrt.

## Sicherheits-Doktrin (wie zahlungsabgleich/wissenscheck)

- **Phase 1 (auto):** read-only Erkennung + Report + NUR sichere Auto-Bereinigung.
- **Phase 2 (interaktiv):** alles potenziell Riskante nur mit ausdruecklicher Bestaetigung.
- Im Zweifel: **melden, nicht loeschen.**

## Wichtige technische Fakten (validiert 25.06.2026)

- Speicher-Metrik (`StorageUsage`) ist **zeitverzoegert** (Stunden bis ~24 h). Verifikation ueber Objekt-Listen, nicht ueber StorageUsage.
- Papierkorb **erste Stufe**: `recyclebinitem clear` wirkt **app-only NICHT** → per `recyclebinitem remove --ids @datei.txt` in 1000er-Batches (nur Phase 2/interaktiv).
- Papierkorb **zweite Stufe**: `recyclebinitem clear --siteUrl <url> --secondary --force` funktioniert app-only → sichere Auto-Bereinigung.
- **Versions-Trim** (groesster Hebel) braucht **delegated/interaktiven** Login (PnP), geht NICHT headless → immer nur flaggen, nie auto. Befehl siehe Phase 2.

## Phase 1 — Erkennen + Report + sichere Auto-Bereinigung (auto)

1. **Speicher-Ueberblick:** `m365 spo site list --output json` → je Site `Url`, `StorageUsage` (MB), `VersionSize` (bytes), `LastContentModifiedDate`. Tenant-Summe `sum([].StorageUsage)` vs. Limit (~1.03 TB).
2. **Papierkoerbe beziffern** (Sites mit Belegung): je Site beide Stufen
   `m365 spo site recyclebinitem list --siteUrl <url> [--secondary] --query "sum([].to_number(Size))"` und `length(@)`.
3. **Altlasten klassifizieren:**
   - Papierkorb-Belegung (1. + 2. Stufe) je Site.
   - **Versions-Bloat:** Sites mit `VersionSize` > 20 GB oder > 25 % der Site-Belegung.
   - **Tote/leere Sites:** `StorageUsage` ~0 oder `LastContentModifiedDate` > 18 Monate.
   - **Junk-Muster** (Hinweis, kein Auto-Loeschen): `~$*`, `*.tmp`, `.DS_Store`, `Thumbs.db`, `*.bak`.
4. **Sichere Auto-Bereinigung (NUR das):**
   - **Zweite Stufe** der Papierkoerbe leeren: je Site mit 2.-Stufe-Inhalt
     `m365 spo site recyclebinitem clear --siteUrl <url> --secondary --force`.
   - Erste Stufe bleibt als Undo-Netz unangetastet.
   - Jede Auto-Loeschung im Report protokollieren (Site, GB, Anzahl).
5. **Report schreiben** nach `tenant-hygiene/reports/JJJJMMTT-hygiene.md`:
   Tenant-Summe + %, Tabelle je Site (Belegung/Versionen/Papierkorb), durchgefuehrte Auto-Bereinigung, offene Phase-2-Empfehlungen mit beziffertem Potenzial.
6. **Informieren:** kurze Zusammenfassung ausgeben (wird Completion-Notification): aktueller Speicher, Delta, was auto-bereinigt wurde, groesste offene Hebel.

## Phase 2 — Riskante Bereinigung (nur interaktiv, mit Bestaetigung)

Erst nach ausdruecklicher Freigabe je Aktion:

- **Versions-Trim** (groesster Hebel, braucht interaktiven Login):
  ```
  Connect-PnPOnline -Url <site> -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
    -Tenant raphaeljans.onmicrosoft.com -Interactive
  New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
  ```
  Voraussetzungen (einmalig erledigt): App hat delegierte SharePoint-Perm `AllSites.FullControl` + Redirect-URI `http://localhost`. NICHT `-DeviceLogin` (auf PnP 3.1.0 defekt).
- **Erste Papierkorb-Stufe** leeren (per `recyclebinitem remove --ids @datei.txt` in 1000er-Batches).
- **Tote Sites** loeschen/archivieren (M365 Archiv).
- **Junk-Dateien** nach Sichtung loeschen.

## Go-forward (Wachstum verhindern)

Tenant-Versionslimit (Admin Center → Einstellungen → Versionsverlauf-Limits) sollte auf
"Automatisch" stehen statt "Manuell/500/Nie" — sonst wachsen die Versionen erneut an.
Im Report vermerken, falls noch auf Manuell.
