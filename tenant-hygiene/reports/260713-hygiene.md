# Tenant-Speicher-Hygiene — Report 13.07.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1 (Erkennen + Report + sichere Auto-Bereinigung)
Connector: M365 App-only/Zertifikat (headless)

## Tenant-Summe

- Belegt: **830.3 GB** (850'266 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **78.8 %**
- Delta zum letzten dokumentierten Stand (968 GB, Cleanup-Memo): **-138 GB** — der interaktive Versions-Trim von damals wirkt nach, Puffer wieder komfortabel (~224 GB frei).

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Änderung |
|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 553.0 GB | 66.2 GB | 111 Obj / 0.14 GB | leer | 12.07.2026 |
| /sites/SE | 108.1 GB | 1.24 GB | leer | leer | 11.07.2026 |
| /sites/AD | 52.4 GB | 2.48 GB | 2 Obj / 0.00 GB | leer | 12.07.2026 |
| /sites/PL | 40.1 GB | 3.50 GB | leer | leer | 13.07.2026 |
| /sites/kispi | 29.6 GB | 0.13 GB | 6 Obj / 0.00 GB | leer | 11.07.2026 |
| /sites/BI | 18.2 GB | ~0 GB | leer | leer | 07.07.2026 |
| /sites/WE | 9.2 GB | 0.42 GB | leer | leer | 11.07.2026 |
| /sites/IMMO | 7.3 GB | 4.72 GB | leer | leer | 07.07.2026 |
| /sites/MO | 7.0 GB | n/a | leer | leer | 07.07.2026 |
| /sites/WO | 5.3 GB | 0.31 GB | leer | leer | 07.07.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.12 GB | ~0 GB | leer | leer | 10.07.2026 |

Rest (je ~0-1 MB): /sites/Test, /sites/PA, /sites/WBHafenarealSZ, /sites/HLEBWEB,
2x /sites/AllCompany.50322284545.*, /search, Root-Sites, -my Root.

## Klassifizierung

### Versions-Bloat (Hebel für Phase 2)
- **JANS.PROJEKTE — 66.2 GB Versionen** (absolut > 20 GB). Grösster einzelner Hebel des Tenants. 12 % der Site-Belegung; bei Trim auf 5 Versionen realistisch **~40-55 GB** Rücklauf.
- **IMMO — 4.72 GB Versionen** (65 % der Site-Belegung > 25 %). Relativ stark aufgebläht, absolut klein; Trim bringt ~2-4 GB.
- Alle übrigen Sites unter beiden Schwellen (kein Bloat).

### Tote/leere Sites (Hinweis, Phase 2)
- **/sites/WBHafenarealSZ** — 0 MB, letzte Änderung Okt. 2025 (~9 Mte.). Leerer Wettbewerbs-Site, noch nicht > 18 Mte. — beobachten / bei nächstem Lauf ggf. archivieren.
- **/sites/Test** — 1 MB Test-Site, kann bei Gelegenheit gelöscht werden.
- **2x /sites/AllCompany.50322284545.\*** (xxbendwx, rvcerjxq) — je 1 MB, Viva-Engage-Restsites, Junk-Kandidaten (vernachlässigbar).
- Keine Site älter als 18 Monate → keine echte Alt-Leiche.

### Versions-Policy (Go-forward)
- Alle grossen Sites: `InheritVersionPolicyFromTenant = True`, `EnableAutoExpirationVersionTrim = False`.
  Die Sites folgen also der **Tenant-Standardrichtlinie**. Damit die Versionen (v.a. JANS.PROJEKTE) nicht erneut anwachsen, im Admin Center prüfen, dass das Tenant-Versionslimit auf **"Automatisch"** steht (nicht "Manuell/500/Nie").

## Durchgeführte Auto-Bereinigung (Phase 1)

**Keine.** Alle zweiten Papierkorb-Stufen sind bereits leer (0 Objekte auf allen Sites). Es gab nichts sicher automatisch zu löschen. Die ersten Papierkorb-Stufen (JANS.PROJEKTE 111 Obj/0.14 GB, kispi 6 Obj, AD 2 Obj) bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen (nur interaktiv, mit Bestätigung)

| Aktion | Site | Potenzial | Voraussetzung |
|---|---|---|---|
| **Versions-Trim** | JANS.PROJEKTE | ~40-55 GB | interaktiver PnP-Login (siehe unten) |
| Versions-Trim | IMMO | ~2-4 GB | dito |
| Tenant-Versionslimit auf "Automatisch" | Tenant | Wachstum verhindern | Admin Center |
| Leere Test-/Junk-Sites löschen | WBHafenarealSZ, Test, 2x AllCompany | ~0 GB (Hygiene) | Sichtung |

Versions-Trim-Befehl (Raphaels interaktiver Login nötig, NICHT `-DeviceLogin`):
```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE \
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```
