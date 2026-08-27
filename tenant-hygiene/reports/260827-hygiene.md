# Tenant-Speicher-Hygiene — Report 27.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:08 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Donnerstag, keine Wochenpflicht

## Kernbefund: Der Stillstand von gestern war Messverzögerung, nicht Ruhe

Der gestrige Report meldete auf JANS.PROJEKTE einen Versionsverlauf, der auf zwei Megabyte
genau auf dem Vortageswert stand, und hielt ausdrücklich fest, das sei eine Beobachtung
und noch keine Aussage: bei 145 MB Tagesmenge liege der Messwert unter der bekannten
Unsicherheit von `StorageUsage`. Diese Zurückhaltung war berechtigt. Heute wächst der
Versionsverlauf derselben Site um **3.92 GB** — mehr als an jedem Tag seit dem 24.08. und
ungefähr so viel, wie die beiden ruhigen Tage zusammen hätten bringen müssen.

Der Tenant wächst heute um **4.35 GB**, davon sind **3.94 GB Versionsverlauf**, also
**90.6 %**. Damit ist das Muster der Vortage zurück: seit dem 13.08. sind an jedem Tag mit
nennenswertem Wachstum 91 bis 100 % davon Versionen gewesen, und die zwei ruhigen Tage
dazwischen erweisen sich als Verbuchungslücke, nicht als arbeitsfreie Tage.

**Praktische Folge für die Lesart dieser Reihe:** ein einzelner Tageswert taugt in beide
Richtungen nicht. Der gestrige Bericht hat daraus richtigerweise keine Entwarnung gemacht,
sondern den Wochenschnitt als massgeblich bezeichnet. Genau so ist es eingetreten.

Die Ursache ist unverändert nicht behoben: tenantweit und auf allen elf belegten Sites
gilt weiterhin `InheritVersionPolicyFromTenant: true`, `MajorVersionLimit: 0`,
`EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor nichts.

## Tenant-Summe

- Belegt: **883.02 GB** (904'210 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **83.78 %**, freier Puffer **170.98 GB**
- Delta zum Vorreport (26.08.2026, 20:08, 899'753 MB): **+4'457 MB in 24.0 Stunden**,
  also **+4.35 GB/Tag**
- Reihe der letzten sieben Tage: +4.01 (21.08. Fr), +0.05 (22.08. Sa), -0.005 (23.08. So),
  +13.90 (24.08. Mo), +2.08 (25.08. Di), +0.14 (26.08. Mi), **+4.35 GB/Tag (27.08. Do)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte der elf belegten Sites
aufaddiert: 904'202 MB, plus 8 MB Kleinstsites, sowie `sum([].StorageUsage)`: 904'210 MB),
beide decken sich.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Der heutige Wert ist mit hoher Wahrscheinlichkeit teilweise Nachbuchung der beiden
Vortage — er ist damit kein Ausreisser nach oben, sondern die Korrektur zweier Ausreisser
nach unten. Massgeblich bleibt der Wochenschnitt.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 170.98 GB gerechnet:

- Beim heute gemessenen Tempo (4.35 GB/Tag): rund **39 Tage**, also etwa 5. Oktober 2026.
- Beim Wochenschnitt der letzten sieben Tage (3.50 GB/Tag): rund **49 Tage**, also etwa
  **15. Oktober 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (4.90 GB/Tag): rund **35 Tage**, also
  etwa 1. Oktober 2026.

Die Restlaufzeit liegt den zehnten Tag in Folge unter der 60-Tage-Schwelle. Der
Wochenschnitt ist gegenüber gestern von 4.87 auf 3.50 GB/Tag gefallen, weil der grosse
Tag vom 20.08. (13.93 GB) aus dem Siebentagefenster herausgerollt ist. **Das ist ein
Fenstereffekt, keine Verlangsamung** — die tatsächliche Tagesmenge ist heute um das
Dreissigfache gegenüber gestern gestiegen.

Warnmarken:

- **88-%-Marke (927.5 GB): 44.50 GB entfernt** — beim Wochenschnitt rund **13 Tage**
  (etwa 9. September), beim Werktagsschnitt rund **9 Tage** (etwa 5. September).
- 90-%-Marke (948.6 GB): 65.58 GB entfernt, rund 19 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In vierzehn Tagen, davon neun Werktagen, sind
davon **59.84 GB zurückgekehrt**, also gut 56 %.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 605.92 GB | 111.41 GB | 18.4 % | 363 Obj / 1.25 GB | leer | 27.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 23.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 6.5 % | 29 Obj / 0.01 GB | leer | 27.08.2026 |
| /sites/PL | 40.17 GB | 3.50 GB | 8.7 % | leer | leer | 23.08.2026 |
| /sites/kispi | 32.98 GB | 0.29 GB | 0.9 % | 163 Obj / 0.43 GB | leer | 27.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 4.6 % | leer | leer | 22.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 38.2 % | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **122.07 GB** (13.8 % der Belegung), gegenüber 118.13 GB
gestern, 118.09 GB am 25.08. und 64.10 GB kurz nach dem Trim. Der Tageszuwachs von
3.94 GB ist der zweitgrösste der Messreihe nach dem 24.08.

Bewegung heute: JANS.PROJEKTE **+4.14 GB Belegung bei +3.92 GB Versionen** — die neue
Substanz auf dieser Site beträgt also rund 220 MB, alles andere ist Versionsverlauf.
kispi +211 MB Belegung bei +18 MB Versionen. Alle übrigen neun Sites bewegen sich um
höchstens 5 MB, was innerhalb der Messverzögerung liegt. SE steht den elften, PL den
zehnten Tag unverändert.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 111.41 GB** Versionen auf 605.92 GB Site (**18.4 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Fünffache. Trägt **91.3 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  17.9 % (25./26.08.), **18.4 % heute**. Der Anteil steigt nach einem Tag Pause weiter.
- Der Befund vom 24.08. (rund 480 MB je neu entstandener Version) ist heute erstmals
  wieder prüfbare Grössenordnung, aber weiterhin nicht verifiziert: 3.92 GB neuer
  Versionsverlauf bei 220 MB neuer Substanz bedeutet, dass **rund das Achtzehnfache der
  neuen Datenmenge als Versionen anfällt**. Das ist mit sehr grossen, wiederholt
  überschriebenen Einzeldateien vereinbar und stützt Empfehlung 3, beweist sie aber nicht.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 0.9 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Neunzehnter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 27.08.
- Messweg wie an den sieben Vortagen: die gesamte Papierkorb-Erhebung lief **im
  Hauptkontext**, elf Einzelabfragen der zweiten Stufe und elf der ersten, dazu fünf
  Grössenabfragen für die nicht leeren ersten Stufen. Kein Subagent beteiligt, jede Zahl
  ist ein eigener Aufruf. Grund bleibt der Subagenten-Befund vom 20.08. (gemeldete Prüfung
  von elf Sites bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **567 Objekte / 1.74 GB** tenantweit,
  gegenüber 512 / 1.57 GB gestern. JANS.PROJEKTE 363 / 1.25 GB (+20 Obj), kispi 163 /
  0.43 GB (+35 Obj), AD 29 / 0.01 GB, JANSDATENAUSTAUSCH 10 / 0.05 GB, IMMO 2 / 0.00 GB.
  Nach zwei ruhigen Tagen bewegen sich heute wieder beide aktiven Sites.

### Tote/leere Sites (Hinweis, Phase 2)

Unverändert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.7 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
überschreitet die 18-Monats-Schwelle.

## Durchgeführte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen (brauchen Raphaels interaktiven Login)

### 1. Tenant-Versionslimit auf «Automatisch» stellen — zuerst, vor dem Trim

Unverändert und weiterhin der einzige Punkt, der die Ursache behebt. Die Konfiguration
zeigt auf allen elf belegten Sites `MajorVersionLimit: 0`,
`EnableAutoExpirationVersionTrim: false`, `InheritVersionPolicyFromTenant: true` — es gibt
keine Begrenzung, die greifen könnte.

Der heutige Tag belegt das so deutlich wie kein anderer der Reihe: 220 MB neue Substanz
auf JANS.PROJEKTE kosten 4.14 GB Speicher. Ohne Limit skaliert der Verbrauch nicht mit der
Arbeit, sondern mit der Dateigrösse mal der Zahl der Speichervorgänge.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, also heute seit **45 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 95 GB, dringend — nach Schritt 1

111.41 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **95 GB** zu rechnen, was den
Puffer auf gut 266 GB und die Auslastung auf rund **74.7 %** senkt. Beim Wochenschnitt von
3.50 GB/Tag kauft das rund **27 Tage** zusätzliche Restlaufzeit.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

Der Trim läuft als Job über die Site, während an ihr gearbeitet wird; das ist zulässig,
kostet aber Wirkung, weil parallel neue Versionen entstehen. **Das kommende Wochenende
(29./30.08.) bleibt das beste Fenster** und liegt jetzt zwei bis drei Tage voraus, während
die 88-%-Marke beim Werktagsschnitt neun Tage entfernt ist. Die Reserve vor der Marke ist
damit weiterhin vorhanden, aber sie ist heute um vier Tage kleiner geworden.

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Heute erstmals seit dem 24.08. wieder mit Datengrundlage: 3.92 GB neuer Versionsverlauf
bei rund 220 MB neuer Substanz. Zu klären bleibt, welche Bibliothek und welche Dateien
diese Versionen erzeugen. Ergibt sich eine einzelne Bibliothek, kann diese zusätzlich vom
Versionieren ausgenommen werden.

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 904'210 MB.
- Site-Einzelwerte: `m365 spo site list --output json` mit Projektion auf Url,
  StorageUsage, VersionSize, LastContentModifiedDate.
- Papierkorb: je Site zuerst zweite Stufe (`--secondary --query "length(@)"`), danach
  erste Stufe, Grössenabfrage nur bei `length(@) > 0`.
- `LastContentModifiedDate` im Format `/Date(2026,7,27,...)/` ist der **27. August 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt: `260826-hygiene.md`. Zeitraum
  26.08. 20:08 bis 27.08. 20:08, also exakt 24.0 Stunden.
