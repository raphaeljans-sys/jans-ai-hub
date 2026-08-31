# Tenant-Speicher-Hygiene — Report 31.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Montag, **Wochenpflicht greift**

## Kernbefund: das Trim-Fenster ist verstrichen, und der erste Werktag zeigt sofort, was das kostet

Der Tenant wächst heute um **+7.93 GB**. Das ist der zweitgrösste Tageswert der ganzen
Reihe, übertroffen nur vom 24.08. (+13.90 GB) — ebenfalls einem Montag.

Entscheidend ist nicht die Zahl, sondern ihre Zusammensetzung. Von den +7.93 GB entfallen
**+7.89 GB auf JANS.PROJEKTE**, und dort wiederum **+7.88 GB auf den Versionsverlauf**. An
neuer Substanz bleiben rund **10 MB**. Der Tenant hat heute also fast nichts gespeichert,
was es vorher nicht schon gab; er hat 7.9 GB an Kopien früherer Fassungen angelegt.

Der Vorreport hat das Wochenende vom 29./30.08. als bestes Trim-Fenster der Reihe benannt
und den 30.08. als dessen letzten Tag. Das Fenster ist ungenutzt verstrichen. Der heutige
Wert ist die unmittelbare Folge: der erste Werktag danach kostet mehr, als das ganze
Wochenende davor eingespart hat (Sa +0.054, So -0.005 GB).

Die Ursache bleibt unbehoben und wurde heute erneut direkt gemessen, nicht aus dem
Vorreport fortgeschrieben: JANS.PROJEKTE meldet `InheritVersionPolicyFromTenant: true`,
`MajorVersionLimit: 0`, `MajorWithMinorVersionsLimit: 0`,
`EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor nichts.

## Tenant-Summe

- Belegt: **893.16 GB** (914'593 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **84.74 %**, freier Puffer **160.84 GB**
- Delta zum Vorreport (30.08.2026, 20:10, 906'470 MB): **+8'123 MB in 24.0 Stunden**,
  also **+7.93 GB/Tag**
- Reihe der letzten sieben Tage: +2.08 (25.08. Di), +0.14 (26.08. Mi), +4.35 (27.08. Do),
  +2.16 (28.08. Fr), +0.054 (29.08. Sa), -0.005 (30.08. So), **+7.93 GB/Tag (31.08. Mo)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller 20 Sites aufaddiert
sowie `sum([].StorageUsage)`); beide ergeben **exakt 914'593 MB**, ohne Rundungsdifferenz.
Der Tenant-Delta ist damit auf das MB genau belegt.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Ein Teil des heutigen Sprungs kann Nachmeldung des Wochenendes sein. Massgeblich bleibt
darum der Wochenschnitt, nicht der Tageswert.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 160.84 GB gerechnet:

- Beim Wochenschnitt der letzten sieben Tage (**2.39 GB/Tag**): rund **67 Tage**, also etwa
  **6. November 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (**3.33 GB/Tag**): rund **48 Tage**, also
  etwa 18. Oktober 2026.

**Wichtig zur Einordnung:** Der Wochenschnitt ist gegenüber gestern von 3.24 auf 2.39 GB/Tag
gefallen und die Restlaufzeit damit von 52 auf 67 Tage gestiegen — erstmals seit dreizehn
Tagen über der 60-Tage-Schwelle. **Das ist kein Nachlassen des Wachstums, sondern ein
Fenster-Effekt.** Aus dem Sieben-Tage-Fenster ist der 24.08. (+13.90 GB) herausgefallen und
durch den heutigen Tag (+7.93 GB) ersetzt worden. Der Werktagsschnitt, der die tatsächliche
Arbeitsbelastung abbildet, ist gleichzeitig von 4.53 auf 3.33 GB/Tag gefallen und sagt
weiterhin **48 Tage**. Die formale Entwarnung bei Grund c) ist rechnerisch korrekt und
sachlich irreführend; sie wird hier ausdrücklich als solche benannt.

Warnmarken:

- **88-%-Marke (927.5 GB): 34.36 GB entfernt** — beim Wochenschnitt rund **14 Tage**
  (etwa 14. September), beim Werktagsschnitt rund **10 Tage** (etwa 10. September).
- 90-%-Marke (948.6 GB): 55.44 GB entfernt, rund 23 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In achtzehn Tagen, davon zwölf Werktagen, sind
davon **67.88 GB zurückgekehrt**, also **64 %**. Der Rückfluss hat sich gegenüber gestern
(57 %) an einem einzigen Tag um sieben Prozentpunkte beschleunigt.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 615.83 GB | 121.26 GB | 19.7 % | 370 Obj / 1.26 GB | leer | 31.08.2026 15:05 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 31.08.2026 01:02 |
| /sites/AD | 51.92 GB | 3.37 GB | 6.5 % | 33 Obj / 0.01 GB | leer | 31.08.2026 15:43 |
| /sites/PL | 40.17 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 |
| /sites/kispi | 33.21 GB | 0.35 GB | 1.0 % | 175 Obj / 0.47 GB | leer | 31.08.2026 15:59 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 4.6 % | leer | leer | 31.08.2026 01:02 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 38.2 % | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **131.98 GB** (14.8 % der Belegung), gegenüber 124.08 GB
gestern und 64.10 GB kurz nach dem Trim. **+7.90 GB an einem Tag** — der grösste
Tageszuwachs des Versionsverlaufs seit dem Trim.

Bewegung heute, mit derselben Einschränkung zur Auflösung wie an den Vortagen (Site-Werte
auf zwei Stellen in GB, also ±5 MB):

- **JANS.PROJEKTE: +8'076 MB (+7.89 GB)** — trägt **99.4 %** des Tenant-Deltas.
- kispi: +41 MB (+0.04 GB), die einzige weitere Site über der Auflösungsgrenze.
- Alle übrigen neun Sites bewegen sich zwischen -5 und +5 MB und sind als unverändert zu
  lesen. SE steht den fünfzehnten Tag unverändert, PL den vierzehnten.

`LastContentModifiedDate` zeigt bei fünf Sites den heutigen Tag (JANS.PROJEKTE 15:05,
AD 15:43, kispi 15:59, SE und WE je 01:02). Bei SE und WE belegt der Stempel den
Nachtbetrieb ohne jede Belegungsänderung; bei JANS.PROJEKTE fällt er mit dem
Versionszuwachs zusammen und markiert den Nachmittag als dessen Entstehungsfenster.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 121.26 GB** Versionen auf 615.83 GB Site (**19.7 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Sechsfache. Trägt **91.9 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  17.9 % (25./26.08.), 18.4 % (27.08.), 18.7 % (28.08.), 18.6 % (29./30.08.),
  **19.7 % heute**. Die zweitägige Stagnation war die Wochenendruhe; mit dem ersten Werktag
  setzt der Anstieg mit dem grössten Tagessprung der Reihe wieder ein.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 1.0 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Dreiundzwanzigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 31.08.
- Messweg wie an den Vortagen: die gesamte Papierkorb-Erhebung lief **im Hauptkontext**,
  elf Einzelabfragen der zweiten Stufe und elf der ersten, dazu fünf Grössenabfragen für
  die nicht leeren ersten Stufen. Kein Subagent beteiligt, jede Zahl ist ein eigener
  Aufruf. Grund bleibt der Subagenten-Befund vom 20.08. (gemeldete Prüfung von elf Sites
  bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **590 Objekte / 1.78 GB** tenantweit,
  gegenüber 578 / 1.77 GB gestern. JANS.PROJEKTE 370 / 1.26 GB (+6 Obj), kispi 175 /
  0.47 GB (+2), AD 33 / 0.01 GB (+4), JANSDATENAUSTAUSCH 10 / 0.05 GB (unverändert),
  IMMO 2 / 0.00 GB (unverändert).

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

Seit dem 13.07.2026 offen, also heute seit **49 Tagen**. Der heutige Tag beziffert, was
das Offenlassen kostet: 7.9 GB an einem einzigen Werktag, bei rund 10 MB neuer Substanz.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 104 GB

121.26 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **104 GB** zu rechnen, was den
Puffer auf gut 265 GB und die Auslastung auf rund **74.9 %** senkt. Beim Wochenschnitt von
2.39 GB/Tag kauft das rund **44 Tage** zusätzliche Restlaufzeit (67 auf 111 Tage), beim
Werktagsschnitt rund 31 Tage (48 auf 79).

Die 104 GB sind eine **Hochrechnung**, keine Messung: sie skalieren die Schätzung des
Vorreports (97 GB bei 113.38 GB Versionen) mit dem seitherigen Versionswachstum. Belastbar
gemessen ist nur der Trim vom 13.08. selbst.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

**Zum Zeitpunkt:** Das ideale Fenster (ruhendes Wochenende) ist gestern verstrichen, das
nächste liegt am 05./06.09. Der Trim ist an Werktagen nicht unmöglich, verliert aber einen
Teil seiner Wirkung an parallel entstehende Versionen. Bei einem Werktagsschnitt von
3.33 GB/Tag und einer 88-%-Marke in rund zehn Tagen ist Warten bis zum Wochenende
vertretbar, aber nicht mehr komfortabel. **Punkt 1 (Versionslimit) ist ohnehin
zeitunkritisch und sollte in jedem Fall vorher erledigt werden** — sonst füllt sich der
freigeräumte Platz im selben Muster wieder auf, wie es seit dem 13.08. nachweislich
geschieht (64 % Rückfluss in 18 Tagen).

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Unverändert offen, heute aber mit der bislang besten Datengrundlage: **7.88 GB neuer
Versionsverlauf bei rund 10 MB neuer Substanz**, entstanden im Tagesfenster bis 15:05. Ein
Verhältnis von rund 1:800 deutet auf wenige sehr grosse, wiederholt gespeicherte Dateien
hin, nicht auf breites Arbeiten an vielen kleinen. Zu klären bleibt, welche Bibliothek und
welche Dateien das sind. Ergibt sich eine einzelne Bibliothek, kann diese zusätzlich vom
Versionieren ausgenommen werden — das wäre die zielgenauere Massnahme als ein wiederkehrender
tenantweiter Trim.

## Betriebsvorfall während dieses Laufs

Zwischen der letzten Messabfrage und dem Schreiben des Reports ist der **SMB-Mount
`/Volumes/daten` weggefallen** (erster Schreibversuch scheiterte mit «No such file or
directory»; der Mount war zu Laufbeginn um 20:10 nachweislich vorhanden). Der Remount über
`scripts/ensure-nas-mounted.sh` (SSD-Klon, weil das NAS-Script selbst nicht erreichbar war)
lief mit rc=0 durch, danach war der Reports-Ordner wieder da und der Report konnte
geschrieben werden. Keine Daten verloren, keine Messung wiederholt.

Das ist das bekannte Idle-Stall-Muster der mobilen Station (Memory
`project_nas_mount_haerten`). Bemerkenswert ist nur, dass es einen Lauf traf, dessen
Messphase rund 25 M365-Aufrufe ohne NAS-Zugriff umfasst — genau das Idle-Fenster, das die
Härtung adressiert. Falls sich das an weiteren Läufen wiederholt, gehört ein
`ensure-nas-mounted.sh` **vor** den Schreibschritt dieser Task, nicht nur an ihren Anfang.

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 914'593 MB, dazu die
  Einzelwerte projiziert und aufaddiert → ebenfalls 914'593 MB.
- Site-Einzelwerte: `m365 spo site list` mit Projektion auf Url, StorageUsage, VersionSize,
  LastContentModifiedDate. Der ungefilterte JSON-Dump ist zu gross für eine Rückgabe und
  wurde deshalb von Beginn an projiziert abgefragt.
- Versions-Policy: `m365 spo site list --query "[?contains(Url,'JANS.PROJEKTE')]..."` →
  Inherit true, Major 0, MajorMinor 0, Trim false. Direkt gemessen, nicht aus dem
  Vorreport übernommen.
- Papierkorb: je Site zuerst zweite Stufe (`--secondary --query "length(@)"`), danach
  erste Stufe, Grössenabfrage nur bei `length(@) > 0`.
- `LastContentModifiedDate` im Format `/Date(2026,7,31,...)/` ist der **31. August 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt (`^[0-9]{6}-hygiene\.md$`):
  `260830-hygiene.md`. Zeitraum 30.08. 20:10 bis 31.08. 20:10, also 24.0 Stunden.
- Sende-Schwelle: Grund **b)** greift (Delta +7.93 GB/Tag, Schwelle 3) und Grund **f)**
  greift (Montag, Wochenpflicht). Grund c) greift beim Wochenschnitt **nicht** mehr
  (67 Tage, über 60) — beim Werktagsschnitt mit 48 Tagen weiterhin schon; die Abweichung
  ist ein Fenster-Effekt und oben ausdrücklich eingeordnet. Auslastung 84.74 % (unter 88),
  keine Auto-Bereinigung, kein Blocker.
