# Tenant-Speicher-Hygiene — Report 30.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Sonntag, keine Wochenpflicht

## Kernbefund: das Trim-Fenster steht offen und schliesst morgen früh

Der Tenant wächst heute nicht, er schrumpft minimal: **-5 MB**, also **-0.005 GB**. Das ist
der zweite Wochenendtag in Folge ohne Zuwachs (gestern +0.054 GB) und deckt sich exakt mit
dem Wochenende davor (22.08. +0.05, 23.08. -0.005 GB). Das Muster ist damit zum dritten Mal
belegt: **an Wochenenden entsteht in diesem Tenant nichts.**

Der Versionsverlauf steht tenantweit unverändert bei **124.08 GB**, auf JANS.PROJEKTE bei
**113.38 GB**. Beide Werte bewegen sich seit Freitagabend nicht messbar.

Operativ zählt heute nicht die Zahl, sondern das Datum. Der Vorreport hat dieses Wochenende
als das beste Trim-Fenster der ganzen Reihe benannt; heute ist sein **letzter Tag**. Ab
morgen früh laufen wieder Werktage, an denen der Trim-Job gegen neu entstehende Versionen
arbeitet und einen Teil seiner Wirkung verliert. Das nächste vergleichbare Fenster liegt
sieben Tage später, und bis dahin ist die 88-%-Marke beim Werktagsschnitt nur noch rund
neun Tage entfernt.

Die Ursache bleibt unbehoben und wurde heute erneut direkt gemessen, nicht aus dem
Vorreport fortgeschrieben: JANS.PROJEKTE meldet `InheritVersionPolicyFromTenant: true`,
`MajorVersionLimit: 0`, `MajorWithMinorVersionsLimit: 0`, `EnableAutoExpirationVersionTrim: false`.
Es begrenzt nach wie vor nichts.

## Tenant-Summe

- Belegt: **885.22 GB** (906'470 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **83.99 %**, freier Puffer **168.78 GB**
- Delta zum Vorreport (29.08.2026, 20:12, 906'475 MB): **-5 MB in 24.0 Stunden**,
  also **-0.005 GB/Tag**
- Reihe der letzten sieben Tage: +13.90 (24.08. Mo), +2.08 (25.08. Di), +0.14 (26.08. Mi),
  +4.35 (27.08. Do), +2.16 (28.08. Fr), +0.054 (29.08. Sa), **-0.005 GB/Tag (30.08. So)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller 20 Sites aufaddiert
sowie `sum([].StorageUsage)`); beide ergeben **exakt 906'470 MB**, ohne Rundungsdifferenz.
Der Tenant-Delta ist damit auf das MB genau belegt.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Massgeblich bleibt der Wochenschnitt, nicht der Tageswert. Ein negativer Tageswert wird
selbstverständlich **nicht** hochgerechnet.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 168.78 GB gerechnet:

- Beim Wochenschnitt der letzten sieben Tage (3.24 GB/Tag): rund **52 Tage**, also etwa
  **21. Oktober 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (4.53 GB/Tag): rund **37 Tage**, also
  etwa 6. Oktober 2026. Das Werktagsfenster (24.08. bis 28.08.) ist unverändert, weil
  Samstag und Sonntag keine Werktage sind.
- Der heutige Tageswert wird nicht hochgerechnet (siehe oben).

Die Restlaufzeit liegt den **dreizehnten Tag in Folge** unter der 60-Tage-Schwelle. Wochen-
und Werktagsschnitt sind gegenüber gestern unverändert (3.24 bzw. 4.53 GB/Tag): der heutige
Wert ist praktisch null, und der aus der Reihe gefallene Tag am anderen Ende lag ebenfalls
nahe null.

Warnmarken:

- **88-%-Marke (927.5 GB): 42.30 GB entfernt** — beim Wochenschnitt rund **13 Tage**
  (etwa 12. September), beim Werktagsschnitt rund **9 Tage** (etwa 8. September).
- 90-%-Marke (948.6 GB): 63.38 GB entfernt, rund 20 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In siebzehn Tagen, davon zehn Werktagen, sind
davon **59.98 GB zurückgekehrt**, also 57 %.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 607.94 GB | 113.38 GB | 18.6 % | 364 Obj / 1.25 GB | leer | 28.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 23.08.2026 |
| /sites/AD | 51.91 GB | 3.37 GB | 6.5 % | 29 Obj / 0.01 GB | leer | 30.08.2026 |
| /sites/PL | 40.17 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 |
| /sites/kispi | 33.17 GB | 0.33 GB | 1.0 % | 173 Obj / 0.46 GB | leer | 30.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 4.6 % | leer | leer | 22.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 38.2 % | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **124.08 GB** (14.0 % der Belegung), gegenüber 124.08 GB
gestern und 64.10 GB kurz nach dem Trim. Keine messbare Bewegung.

Bewegung heute, mit derselben Einschränkung zur Auflösung wie gestern: der Vorreport hält
die Site-Werte in GB auf zwei Stellen fest, also auf rund ±5 MB genau. **Keine einzige Site
überschreitet diese Auflösung**, die grössten Rohbewegungen liegen bei -11 MB
(JANS.PROJEKTE) und +6 MB (kispi). Alle elf Sites sind damit als unverändert zu lesen; der
Tenant-Delta von -5 MB ist die Summe dieser Kleinstbewegungen. SE steht den vierzehnten, PL
den dreizehnten Tag unverändert.

`LastContentModifiedDate` von AD (30.08. 06:24) und kispi (30.08. 06:47) passt zum
Nachtbetrieb der Hub- und Projektablage; die Belegung beider Sites ändert sich dabei nicht
messbar. Die Stempel belegen Schreibzugriffe, nicht Wachstum.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 113.38 GB** Versionen auf 607.94 GB Site (**18.6 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Fünffache. Trägt **91.4 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  17.9 % (25./26.08.), 18.4 % (27.08.), 18.7 % (28.08.), 18.6 % (29.08.), **18.6 % heute**.
  Der Anteil stagniert den zweiten Tag; das ist die Wochenendruhe, keine Trendumkehr.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 1.0 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Zweiundzwanzigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 30.08.
- Messweg wie an den zehn Vortagen: die gesamte Papierkorb-Erhebung lief **im
  Hauptkontext**, elf Einzelabfragen der zweiten Stufe und elf der ersten, dazu fünf
  Grössenabfragen für die nicht leeren ersten Stufen. Kein Subagent beteiligt, jede Zahl
  ist ein eigener Aufruf. Grund bleibt der Subagenten-Befund vom 20.08. (gemeldete Prüfung
  von elf Sites bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **578 Objekte / 1.77 GB** tenantweit,
  gleichauf mit gestern (578 / 1.77 GB). JANS.PROJEKTE 364 / 1.25 GB, kispi 173 / 0.46 GB,
  AD 29 / 0.01 GB, JANSDATENAUSTAUSCH 10 / 0.05 GB, IMMO 2 / 0.00 GB. Keine Site hat heute
  ein Objekt hinzu- oder abgegeben.

### Tote/leere Sites (Hinweis, Phase 2)

Unverändert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.8 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
überschreitet die 18-Monats-Schwelle.

## Durchgeführte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen (brauchen Raphaels interaktiven Login)

### 1. Tenant-Versionslimit auf «Automatisch» stellen — zuerst, vor dem Trim

Unverändert und weiterhin der einzige Punkt, der die Ursache behebt. Heute erneut direkt
gemessen: `MajorVersionLimit: 0`, `MajorWithMinorVersionsLimit: 0`,
`EnableAutoExpirationVersionTrim: false`, `InheritVersionPolicyFromTenant: true`. Es gibt
keine Begrenzung, die greifen könnte.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, also heute seit **48 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 97 GB — heute ist der letzte Fenstertag

113.38 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **97 GB** zu rechnen, was den
Puffer auf gut 266 GB und die Auslastung auf rund **74.8 %** senkt. Beim Wochenschnitt von
3.24 GB/Tag kauft das rund **30 Tage** zusätzliche Restlaufzeit (52 auf 82 Tage).

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

**Warum heute:** der Trim läuft als Job über die Site, während an ihr gearbeitet wird. An
Werktagen entstehen parallel neue Versionen und fressen einen Teil der Wirkung wieder auf.
Die heutige Messung belegt, dass die Site ruht (JANS.PROJEKTE unverändert, Tenant -5 MB) —
das dritte so gemessene Wochenende in Folge. Morgen früh beginnt wieder ein Werktag.

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Unverändert offen. Der heutige Lauf trägt dazu nichts bei, weil auf der Site nichts
entstanden ist; die Datengrundlage bleibt die des Reports vom 28.08. (1.97 GB neuer
Versionsverlauf bei rund 60 MB neuer Substanz). Zu klären bleibt, welche Bibliothek und
welche Dateien diese Versionen erzeugen. Ergibt sich eine einzelne Bibliothek, kann diese
zusätzlich vom Versionieren ausgenommen werden.

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 906'470 MB, dazu die
  Einzelwerte projiziert und aufaddiert → ebenfalls 906'470 MB.
- Site-Einzelwerte: `m365 spo site list` mit Projektion auf Url, StorageUsage, VersionSize,
  LastContentModifiedDate. Der ungefilterte JSON-Dump ist zu gross für eine Rückgabe und
  wurde deshalb von Beginn an projiziert abgefragt.
- Versions-Policy: `m365 spo site list --query "[?contains(Url,'JANS.PROJEKTE')]..."` →
  Inherit true, Major 0, MajorMinor 0, Trim false. Direkt gemessen, nicht aus dem
  Vorreport übernommen.
- Papierkorb: je Site zuerst zweite Stufe (`--secondary --query "length(@)"`), danach
  erste Stufe, Grössenabfrage nur bei `length(@) > 0`.
- `LastContentModifiedDate` im Format `/Date(2026,7,30,...)/` ist der **30. August 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt (`^[0-9]{6}-hygiene\.md$`):
  `260829-hygiene.md`. Zeitraum 29.08. 20:12 bis 30.08. 20:10, also 24.0 Stunden.
- Sende-Schwelle: Grund c) greift (Restlaufzeit 52 Tage beim Wochenschnitt, unter 60).
  Auslastung 83.99 % (unter 88 %), Delta -0.005 GB/Tag (unter 3), keine Auto-Bereinigung,
  kein Blocker, kein Montag.
