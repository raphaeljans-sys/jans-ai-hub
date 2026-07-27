# Tenant-Speicher-Hygiene — Report 27.07.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1 (Erkennen + Report + sichere Auto-Bereinigung)
Connector: M365 App-only/Zertifikat (headless)

## Tenant-Summe

- Belegt: **892.6 GB** (914'045 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **84.7 %** — freier Puffer noch ~161 GB
- Delta zum letzten Report (13.07.2026, 830.3 GB): **+62.3 GB in 14 Tagen**

**Der Puffer schrumpft schnell.** Vom Zuwachs entfallen **+57.0 GB (91 %) allein auf den
Versionsverlauf von JANS.PROJEKTE** (66.2 → 123.2 GB, fast eine Verdoppelung in zwei
Wochen). Der Nutzdaten-Zuwachs ist mit ~5 GB unauffällig. Bei diesem Tempo (~4.5 GB/Tag)
wäre der Pool in rund fünf Wochen voll — die Hochrechnung ist grob, aber der Trend ist
eindeutig und der Versions-Trim damit nicht mehr nur Hygiene, sondern terminkritisch.

Hinweis zur Reihe: Zwischen dem 13.07. und heute fehlt ein Report (20.07.) — der
Wochenlauf ist an jenem Tag nicht durchgelaufen. Das Delta oben umfasst deshalb zwei
Wochen statt einer.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Änderung |
|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 613.9 GB | 123.2 GB | 250 Obj / 1.15 GB | leer | 27.07.2026 |
| /sites/SE | 108.1 GB | 1.24 GB | leer | leer | 26.07.2026 |
| /sites/AD | 52.7 GB | 2.78 GB | 2 Obj / 0.00 GB | leer | 27.07.2026 |
| /sites/PL | 40.1 GB | 3.50 GB | leer | leer | 27.07.2026 |
| /sites/kispi | 30.4 GB | 0.16 GB | 65 Obj / 0.17 GB | leer | 27.07.2026 |
| /sites/BI | 18.2 GB | ~0 GB | leer | leer | 17.07.2026 |
| /sites/WE | 9.2 GB | 0.42 GB | leer | leer | 26.07.2026 |
| /sites/IMMO | 7.3 GB | 4.72 GB | leer | leer | 17.07.2026 |
| /sites/MO | 7.0 GB | 0 GB | leer | leer | 17.07.2026 |
| /sites/WO | 5.3 GB | 0.31 GB | leer | leer | 17.07.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 10 Obj / 0.05 GB | leer | 27.07.2026 |

Rest (je ~0-1 MB, ohne Papierkorb-Erhebung): /sites/Test, /sites/PA, /sites/WBHafenarealSZ,
/sites/HLEBWEB, 2x /sites/AllCompany.50322284545.*, /search, Root-Sites, -my Root.

## Klassifizierung

### Versions-Bloat (Hebel für Phase 2)

- **JANS.PROJEKTE — 123.2 GB Versionen** (absolut weit über 20 GB, 20.1 % der Site-Belegung).
  Der mit Abstand grösste Hebel des Tenants und die alleinige Ursache des Speicherwachstums
  dieser Periode. Bei Trim auf 5 Versionen realistisch **~80-100 GB Rücklauf** — das brächte
  den Tenant auf rund 62-64 % Auslastung zurück.
- **IMMO — 4.72 GB Versionen** (64.7 % der Site-Belegung, weit über der 25 %-Schwelle).
  Relativ stark aufgebläht, absolut klein; Trim bringt ~2-4 GB.
- Alle übrigen Sites unter beiden Schwellen (PL 8.7 %, AD 5.3 %, SE 1.1 % — kein Bloat).

### Papierkörbe

- Alle **zweiten Stufen sind tenantweit leer** (0 Objekte auf allen 11 Sites mit Belegung).
- Erste Stufen (Undo-Netz, bleibt unangetastet): JANS.PROJEKTE 250 Obj / 1.15 GB,
  kispi 65 Obj / 0.17 GB, JANSDATENAUSTAUSCH 10 Obj / 0.05 GB, AD 2 Obj / ~0 GB.
  Zusammen ~1.37 GB — kein nennenswerter Hebel.

### Tote/leere Sites (Hinweis, Phase 2)

- **/sites/WBHafenarealSZ** — 0 MB, letzte Änderung 06.10.2025 (~9.7 Monate). Leerer
  Wettbewerbs-Site, weiterhin unter der 18-Monats-Schwelle. Beobachten.
- **/sites/Test** — 1 MB, letzte Änderung 14.05.2026. Kann bei Gelegenheit gelöscht werden.
- **2x /sites/AllCompany.50322284545.\*** (xxbendwx, rvcerjxq) — je 1 MB, Viva-Engage-Restsites.
- Keine Site älter als 18 Monate → keine echte Alt-Leiche.

### Versions-Policy (Go-forward) — wichtiger Befund

Die **Tenant-Richtlinie steht bereits auf "Automatisch"**: `EnableAutoExpirationVersionTrim = true`,
`MajorVersionLimit = 500`, `ExpireVersionsAfterDays = 30`. Alle grossen Sites erben sie
(`InheritVersionPolicyFromTenant = true`).

Trotzdem sind die Versionen von JANS.PROJEKTE in zwei Wochen um 57 GB gewachsen. Die
Empfehlung «Tenant-Limit auf Automatisch» aus den Vorreports ist damit erledigt, aber sie
löst das Problem nicht: die automatische Ablaufsteuerung wirkt auf den laufenden Betrieb und
trimmt den **bestehenden Altbestand nicht rückwirkend**. Der einmalige Batch-Delete-Job
bleibt zwingend nötig — und das beobachtete Wachstumstempo legt nahe, die Wirksamkeit der
Automatik auf JANS.PROJEKTE nach dem Trim gezielt nachzuprüfen (nächster Wochenlauf:
wächst die Versionsgrösse erneut, greift die Policy dort faktisch nicht).

## Durchgeführte Auto-Bereinigung (Phase 1)

**Keine.** Alle zweiten Papierkorb-Stufen waren bereits leer (0 Objekte auf allen 11 Sites
mit Belegung) — es gab nichts sicher automatisch zu löschen, entsprechend wurde kein
einziger `clear`-Befehl abgesetzt. Die ersten Papierkorb-Stufen bleiben als Undo-Netz
unangetastet.

## Offene Phase-2-Empfehlungen (nur interaktiv, mit Bestätigung)

| Aktion | Site | Potenzial | Voraussetzung |
|---|---|---|---|
| **Versions-Trim (dringend)** | JANS.PROJEKTE | **~80-100 GB** | interaktiver PnP-Login (siehe unten) |
| Versions-Trim | IMMO | ~2-4 GB | dito |
| Wirksamkeit Auto-Trim nachprüfen | JANS.PROJEKTE | Wachstum stoppen | nächster Wochenlauf |
| Leere Test-/Junk-Sites löschen | WBHafenarealSZ, Test, 2x AllCompany | ~0 GB (Hygiene) | Sichtung |

Versions-Trim-Befehl (Raphaels interaktiver Login nötig, NICHT `-DeviceLogin`):
```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE \
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```
