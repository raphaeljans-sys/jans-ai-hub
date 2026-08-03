# Tenant-Speicher-Hygiene — Report 03.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1 (Erkennen + Report + sichere Auto-Bereinigung)
Connector: M365 App-only/Zertifikat (headless)

## Tenant-Summe

- Belegt: **904.6 GB** (926'327 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **85.8 %**, freier Puffer noch ~149 GB
- Delta zum letzten Report (27.07.2026, 892.6 GB): **+12.0 GB in 7 Tagen** (1.7 GB/Tag)

Das Wachstumstempo hat sich gegenüber der Vorperiode (4.5 GB/Tag) deutlich verlangsamt.
Die Ursache ist aber unverändert: **+11.7 GB der 12.0 GB entfallen auf den Versionsverlauf
von JANS.PROJEKTE** (123.2 → 134.9 GB). Der tenantweite Nutzdaten-Zuwachs beträgt rund
0.3 GB, ist also praktisch null. Der gesamte Zuwachs dieser Woche ist Versionsverlauf einer
einzigen Site.

Beim aktuellen Tempo reicht der Puffer rechnerisch rund drei Monate, beim Tempo der
Vorperiode rund fünf Wochen. Die Spanne ist gross, weil zwei Wochen keine belastbare
Trendlinie ergeben. Die Richtung ist in beiden Fällen dieselbe.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Änderung |
|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 625.6 GB | 134.9 GB | 277 Obj / 1.18 GB | leer | 03.08.2026 |
| /sites/SE | 108.1 GB | 1.24 GB | leer | leer | 01.08.2026 |
| /sites/AD | 53.1 GB | 3.08 GB | 29 Obj / 0.01 GB | leer | 03.08.2026 |
| /sites/PL | 40.1 GB | 3.50 GB | leer | leer | 27.07.2026 |
| /sites/kispi | 30.5 GB | 0.16 GB | 71 Obj / 0.17 GB | leer | 03.08.2026 |
| /sites/BI | 18.2 GB | ~0 GB | leer | leer | 27.07.2026 |
| /sites/WE | 9.1 GB | 0.42 GB | leer | leer | 01.08.2026 |
| /sites/IMMO | 7.24 GB | 4.72 GB | leer | leer | 27.07.2026 |
| /sites/MO | 6.95 GB | 0 GB | leer | leer | 27.07.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | leer | leer | 27.07.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 10 Obj / 0.05 GB | leer | 27.07.2026 |
| /sites/HLEBWEB | 0 GB | ~0 GB | leer | leer | 30.07.2026 |

Rest (je ~0-1 MB, ohne Papierkorb-Erhebung): /sites/Test, /sites/PA, /sites/WBHafenarealSZ,
2x /sites/AllCompany.50322284545.*, /search, Root-Sites, -my Root.

## Klassifizierung

### Versions-Bloat (Hebel für Phase 2)

- **JANS.PROJEKTE — 134.9 GB Versionen** (absolut weit über 20 GB, 21.6 % der Site-Belegung).
  Weiterhin der mit Abstand grösste Hebel und die alleinige Ursache des Speicherwachstums.
  Bei Trim auf 5 Versionen realistisch **~90-110 GB Rücklauf**, was den Tenant auf rund
  75-77 % Auslastung zurückbrächte.
- **IMMO — 4.72 GB Versionen** (65.2 % der Site-Belegung, weit über der 25 %-Schwelle).
  Relativ stark aufgebläht, absolut klein. Trim bringt ~2-4 GB. Unverändert seit 27.07.
- Alle übrigen Sites unter beiden Schwellen (PL 8.7 %, AD 5.8 %, SE 1.1 %). Kein Bloat.

### Papierkörbe

- Alle **zweiten Stufen sind tenantweit leer** (0 Objekte auf allen 12 geprüften Sites).
  Zwei Sites (JANS.PROJEKTE, kispi) wurden zusätzlich einzeln nachgemessen, um den
  durchgehend gleichförmigen Befund zu bestätigen.
- Erste Stufen (Undo-Netz, bleibt unangetastet): JANS.PROJEKTE 277 Obj / 1.18 GB,
  kispi 71 Obj / 0.17 GB, JANSDATENAUSTAUSCH 10 Obj / 0.05 GB, AD 29 Obj / 0.01 GB.
  Zusammen 1.41 GB, kein nennenswerter Hebel.

### Tote/leere Sites (Hinweis, Phase 2)

- **/sites/WBHafenarealSZ** — 0 MB, letzte Änderung 06.10.2025 (~10 Monate). Weiterhin
  unter der 18-Monats-Schwelle. Beobachten.
- **/sites/Test** — 1 MB, letzte Änderung 14.05.2026. Kann bei Gelegenheit gelöscht werden.
- **2x /sites/AllCompany.50322284545.\*** (xxbendwx, rvcerjxq) — je 1 MB, Viva-Engage-Restsites.
- Keine Site älter als 18 Monate, also keine echte Alt-Leiche.

### Versions-Policy: Antwort auf die Prüffrage vom 27.07.

Der Vorreport hatte die Prüffrage gestellt, ob die Tenant-Automatik auf JANS.PROJEKTE
faktisch greift. Die Messung dieser Woche beantwortet sie: **Nein, jedenfalls nicht
wirksam.** Die Versionen sind trotz aktiver Automatik um weitere 11.7 GB gewachsen.

Gemessener Zustand:

- Tenant-Ebene: `EnableAutoExpirationVersionTrim = true`, `MajorVersionLimit = 500`,
  `ExpireVersionsAfterDays = 30`. Die Automatik ist also eingeschaltet.
- Site JANS.PROJEKTE: `InheritVersionPolicyFromTenant = true`, die Site-eigenen Felder
  stehen auf `false` / `0` / `0`. Die naheliegende Lesart ist, dass die Site keine eigene
  Policy führt und die Felder deshalb leer bleiben, nicht dass die Vererbung ausfällt.
  Der Befund ist damit nicht abschliessend geklärt.

Was die Zahlen unabhängig von dieser Auslegung belegen: Ein Limit von 500 Versionen und
eine Ablauffrist von 30 Tagen sind für diese Site zu grosszügig, um den Zuwachs zu bremsen,
und die Automatik trimmt den **bestehenden Altbestand nicht rückwirkend**. Der einmalige
Batch-Delete-Job bleibt zwingend nötig. Nach dem Trim sollte zusätzlich geprüft werden, ob
für JANS.PROJEKTE eine eigene, engere Site-Policy gesetzt werden muss, damit der Bestand
nicht erneut anwächst.

## Durchgeführte Auto-Bereinigung (Phase 1)

**Keine.** Alle zweiten Papierkorb-Stufen waren bereits leer (0 Objekte auf allen 12
geprüften Sites), es gab also nichts sicher automatisch zu löschen. Entsprechend wurde kein
einziger `clear`-Befehl abgesetzt. Die ersten Papierkorb-Stufen bleiben als Undo-Netz
unangetastet.

## Offene Phase-2-Empfehlungen (nur interaktiv, mit Bestätigung)

| Aktion | Site | Potenzial | Voraussetzung |
|---|---|---|---|
| **Versions-Trim (dringend)** | JANS.PROJEKTE | **~90-110 GB** | interaktiver PnP-Login (siehe unten) |
| Versions-Trim | IMMO | ~2-4 GB | dito |
| Eigene, engere Site-Versions-Policy prüfen | JANS.PROJEKTE | Wachstum stoppen | nach dem Trim |
| Leere Test-/Junk-Sites löschen | WBHafenarealSZ, Test, 2x AllCompany | ~0 GB (Hygiene) | Sichtung |

Versions-Trim-Befehl (Raphaels interaktiver Login nötig, NICHT `-DeviceLogin`):
```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE \
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```
