# Tenant-Speicher-Hygiene: Report 18.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:08 bis 20:15 CEST, Station MacBook Pro
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich · heute Freitag, keine Wochenpflicht

## Big Points

1. **828.71 GB belegt, 79.38 %** am gemessenen Kontingent (`StorageQuota` 1'069'056 MB = 1044.00 GB,
   heute erneut gemessen, unverändert). Freier Puffer **215.29 GB**.
2. **+1.99 GB in 24 h** (Vorreport 17.09. 20:08: 846'563 MB, heute 848'596 MB). Unter der
   Sendeschwelle von 3 GB/Tag.
3. **Der Zuwachs ist fast vollständig Versionsverlauf:** JANS.PROJEKTE +1.98 GB, davon
   `VersionSize` 53.76 → **55.73 GB (+1.97 GB)**, bei nur +16 neuen Elementen in «01 Projekte».
4. **Der gestrige Nullwert war kein Trend.** Über zwei Tage gemittelt (16.09. → 18.09.) wächst der
   Versionsverlauf um rund **0.99 GB/Tag**. Die gestrige Plausibilitätsaussage («Auto-Expiration
   bremst den Zuwachs») ist damit nicht gestützt; siehe unten.
5. **Restlaufzeit 91 bis 201 Tage.** Auto-Bereinigung: keine, 0 GB (alle zweiten Stufen leer).

## Wachstum: Beleg und Plausibilität getrennt

Beleg:

- Tenant-Summe `sum([].StorageUsage)`: **848'596 MB**, über die Einzelwerte nachgerechnet
  identisch. Zeitraum zum Vorreport **ein Tag** (17.09. 20:08 → 18.09. 20:08). Delta **+2'033 MB =
  +1.99 GB**.
- Zwei-Tages-Sicht seit 16.09. 20:10 (846'588 MB): **+2'008 MB = +0.98 GB/Tag**. Der gestrige
  Wert −0.02 GB und der heutige +1.99 GB heben sich ungefähr auf. `StorageUsage` ist laut Skill um
  Stunden bis ~24 h verzögert; ein Teil des heutigen Sprungs dürfte gestern schon angefallen sein.
- Seit dem Trim vom 15.09. 20:10 (845'305 MB): **+3'291 MB über drei Tage = +1.07 GB/Tag**.
- JANS.PROJEKTE 548.37 → **550.35 GB** (+1.98 GB), `VersionSize` 53.76 → **55.73 GB** (+1.97 GB).
  «01 Projekte» 30'772 → **30'788 Elemente** (+16), letzte Änderung 18.09. 14:27 UTC.
- Übrige Sites: kispi +0.01 GB, alle anderen unverändert (Abweichung unter 0.01 GB).

Plausibilität (nicht bewiesen): 16 neue Dateien erklären keine 1.97 GB Versionen. Wahrscheinlicher
sind wiederholt gespeicherte grosse Dateien (CAD/PDF) mit jeweils neuer Vollversion. Das verträgt
sich mit einer **aktiven** Auto-Expiration: der Tenant läuft laut `spo tenant settings list` mit
`ExpireVersionsAfterDays: 30`, und der Trim vom 15.09. hat den Bestand auf fünf Versionen gesetzt.
Versionen, die seither entstehen, werden frühestens um den **15.10.2026** zur Löschung fällig. Bis
dahin ist ein Zuwachs von rund 1 GB/Tag zu erwarten, danach sollte er abflachen. **Ob die Trimmung
greift, zeigt sich also erst ab Mitte Oktober, nicht an einzelnen Tagen im September.** Der Satz
im Vorreport, der Nullwert vom 17.09. «passe zur aktiven Auto-Expiration», war zu früh.

Versions-Richtlinie heute nachgemessen, unverändert: `spo site versionpolicy get` JANS.PROJEKTE
`{"defaultTrimMode":"inheritTenant","majorVersionLimit":-1}`; Tenant
`EnableAutoExpirationVersionTrim: true`, `ExpireVersionsAfterDays: 30`, `MajorVersionLimit: 500`.
Bibliotheken von JANS.PROJEKTE weiterhin `MajorVersionLimit: 500` (erwartet, siehe Vorreport).

Restlaufzeit, Puffer 215.29 GB: heutiges Tempo 1.99 GB/Tag → **108 Tage**; Nach-Trim-Schnitt
1.07 GB/Tag → **201 Tage**; Vortrim-Tempo 2.36 GB/Tag → **91 Tage**. Belastbar ist am ehesten der
Nach-Trim-Schnitt, als Vorsichtswert gilt das Vortrim-Tempo. 88-%-Marke bei 918.72 GB,
**90.01 GB entfernt**.

## Sites mit Belegung

| Site | Belegung | Delta 24 h | Versionen | Anteil | Papierkorb 1. Stufe | 2. Stufe | Letzte Änderung (UTC) |
|---|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 550.35 GB | +1.98 GB | 55.73 GB | 10.1 % | 431 Obj / 1.30 GB | leer | 18.09.2026 14:27 |
| /sites/SE | 108.08 GB | 0.00 GB | 1.24 GB | 1.1 % | leer | leer | 10.09.2026 22:04 |
| /sites/AD | 51.84 GB | 0.00 GB | 3.37 GB | 6.5 % | 36 Obj / 0.01 GB | leer | 18.09.2026 11:47 |
| /sites/PL | 40.15 GB | 0.00 GB | 3.50 GB | 8.7 % | leer | leer | 14.09.2026 22:00 |
| /sites/kispi | 34.29 GB | +0.01 GB | 0.34 GB | 1.0 % | 210 Obj / 0.57 GB | leer | 18.09.2026 14:26 |
| /sites/BI | 18.25 GB | 0.00 GB | ~0 GB | 0.0 % | leer | leer | 10.09.2026 22:05 |
| /sites/WE | 9.08 GB | 0.00 GB | 0.42 GB | 4.6 % | leer | leer | 10.09.2026 22:05 |
| /sites/MO | 6.95 GB | 0.00 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 01:10 |
| /sites/WO | 5.33 GB | 0.00 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 01:10 |
| /sites/IMMO | 4.14 GB | 0.00 GB | 1.56 GB | 37.7 % | 5 Obj / 0.00 GB | leer | 17.09.2026 07:38 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | 0.00 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 05.09.2026 17:04 |

Zeitstempel roh in UTC (Monat nullbasiert umgerechnet), Lokalzeit UTC+2. Neun Sites unter
100 MB ohne Papierkorb-Erhebung: PA, Test, zwei AllCompany-Restsites, /search, beide Root-Sites,
WBHafenarealSZ, HLEBWEB. Insgesamt 20 Sites.

Versionsverlauf tenantweit **66.46 GB** (8.0 % der Belegung), davon 83.9 % auf JANS.PROJEKTE.
Papierkorb erste Stufe tenantweit **692 Objekte / 1.93 GB** (gestern 691 / 1.93 GB).

## Klassifizierung

- **Versions-Bloat:** JANS.PROJEKTE 55.73 GB, formal über der 20-GB-Schwelle. Sockel nach dem
  Trim vom 15.09. (52.77 GB) plus drei Tage Zuwachs; kein Trim-Anlass, solange die
  Auto-Expiration ab Mitte Oktober nachweislich abbaut. IMMO 37.7 % relativ, absolut 1.56 GB.
- **Papierkörbe:** alle elf zweiten Stufen leer, erste Stufen 692 Objekte / 1.93 GB.
- **Tote/leere Sites:** unverändert WBHafenarealSZ (0 MB, letzte Änderung 06.10.2025), Test, zwei
  AllCompany-Restsites; keine über 18 Monate.

## Durchgeführte Auto-Bereinigung

**Keine, 0 GB.** Kein `clear` abgesetzt, keine zweite Stufe hatte Inhalt. Erste Stufen
unangetastet.

## Werkzeug-Notiz

Die Papierkorb-Erhebung (22 Aufrufe) lief heute bewusst **im Hauptkontext**, in zwei parallelen
Blöcken, statt an einen Haiku-Subagenten. Grund: der Subagent des Vorlaufs meldete den Connector
fälschlich als defekt (das MCP-Werkzeug ist im Subagenten zurückgestellt und muss erst geladen
werden). Zwei parallele Blöcke kosten weniger als ein Subagent, der den Grundkontext neu lädt und
dann nachgemessen werden muss. Alle Werte dieses Reports sind selbst gemessen.

## Offene Phase-2-Empfehlungen

1. **Versions-Richtlinie: keine Aktion.** Zustand app-only belegt (Tenant Auto-Expiration, 30 Tage,
   Site erbt). **Prüfpunkt neu: ab 15.10.2026** muss der tägliche Versionszuwachs von JANS.PROJEKTE
   sichtbar unter die heutigen rund 1 GB/Tag fallen. Tut er das nicht, greift die Trimmung nicht,
   und ein erneuter Trim wäre vor Jahresende fällig (bei ~1 GB/Tag rund +30 GB pro Monat).
2. **Versions-Trim: keine Wiederholung** vor diesem Prüfpunkt.
3. Erste Papierkorb-Stufe (1.93 GB): Undo-Netz, kein Handlungsbedarf.
4. Tote Sites (zusammen 2 MB): nur aus Ordnungsgründen.
5. **Quota im Skill nachgezogen** (heute, `skills/tenant-hygiene/SKILL.md`): das Limit wird aus
   `StorageQuota` gemessen, nicht angenommen. Der Auftragstext der Scheduled Task nennt weiterhin
   «~1054 GB»; das ist dort zu korrigieren (Konfiguration der Task, nicht in diesem Lauf geändert).

## Register

Datierter Nachtrag in `logbuch/fristen.md` beim Nachtrag vom 17.09. (Speicherpool/Versionen):
Versionszuwachs läuft mit rund 1 GB/Tag weiter, der Nullwert vom 17.09. war kein Trend;
Prüfpunkt der Auto-Expiration ab 15.10.2026.

## Sende-Entscheid

**Still beendet.** Kein Sendegrund: 79.38 % (unter 88 %), +1.99 GB/Tag (unter 3 GB/Tag),
Restlaufzeit 91 bis 201 Tage (über 60), 0 GB auto-bereinigt, kein Blocker (Connector, NAS und
alle Sites antworteten), Freitag.
