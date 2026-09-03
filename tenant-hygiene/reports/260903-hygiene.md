# Tenant-Speicher-Hygiene — Report 03.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Donnerstag, keine Wochenpflicht

## Kernbefund: der ruhigste Werktag der Reihe, das Muster bleibt trotzdem

Der Tenant wächst heute um **+2.03 GB**, nach +5.09 GB gestern. Das ist der **niedrigste
Werktagswert dieser Reihe**. Der Wochenschnitt fällt entsprechend von 3.23 auf **2.90
GB/Tag**, die Restlaufzeit steigt von 47 auf **52 Tage**.

Das ist eine Entspannung des Tempos, keine Entwarnung: die Restlaufzeit bleibt unter der
60-Tage-Schwelle, **Grund c) greift den zweiten Tag in Folge**.

Die Zusammensetzung ist unverändert und bleibt der eigentliche Befund. Von den +2.03 GB
entfallen **+1.96 GB auf JANS.PROJEKTE**, und dort **+1.97 GB auf den Versionsverlauf**. An
neuer Substanz bleibt rechnerisch **nichts** übrig, der Saldo ist mit -0.01 GB erneut leicht
negativ. Das ist der **vierte** aufeinanderfolgende Werktag mit diesem Muster. Der geringere
Tageszuwachs ändert am Mechanismus nichts, er zeigt nur, dass heute weniger an den
betroffenen Dateien gespeichert wurde.

Die Ursache bleibt unbehoben und wurde heute erneut direkt gemessen, nicht aus dem
Vorreport fortgeschrieben: JANS.PROJEKTE meldet `InheritVersionPolicyFromTenant: true`,
`MajorVersionLimit: 0`, `MajorWithMinorVersionsLimit: 0`,
`EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor nichts.

Der Versionsanteil von JANS.PROJEKTE steigt auf **21.0 %** (gestern 20.7 %).

## Tenant-Summe

- Belegt: **903.30 GB** (924'975 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **85.70 %**, freier Puffer **150.70 GB**
- Delta zum Vorreport (02.09.2026, 20:12, 922'901 MB): **+2'074 MB in rund 24 Stunden**,
  also **+2.03 GB/Tag**
- Reihe der letzten sieben Tage: +2.16 (28.08. Fr), +0.054 (29.08. Sa), -0.005 (30.08. So),
  +7.93 (31.08. Mo), +3.02 (01.09. Di), +5.09 (02.09. Mi), **+2.03 GB/Tag (03.09. Do)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller 20 Sites aufaddiert
sowie `sum([].StorageUsage)`); beide ergeben **exakt 924'975 MB**, ohne Rundungsdifferenz.
Der Tenant-Delta ist damit auf das MB genau belegt.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Einzelne Tageswerte können Nachmeldungen enthalten. Massgeblich bleibt darum der
Wochenschnitt, nicht der Tageswert.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 150.70 GB gerechnet:

- Beim Wochenschnitt der letzten sieben Tage (**2.90 GB/Tag**): rund **52 Tage**, also etwa
  **25. Oktober 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (**4.05 GB/Tag**): rund **37 Tage**, also
  etwa 10. Oktober 2026.

Beide Schnitte fallen gegenüber gestern (Woche 3.23 → 2.90, Werktag 4.51 → 4.05 GB/Tag).
Die Restlaufzeit steigt von 47 auf 52 Tage. Sie bleibt damit unter der 60-Tage-Schwelle,
und zwar bei beiden Schnitten.

Warnmarken:

- **88-%-Marke (927.52 GB): 24.22 GB entfernt** — beim Wochenschnitt rund **8 Tage**
  (etwa 12. September), beim Werktagsschnitt rund **6 Tage** (etwa 9. September).
- 90-%-Marke (948.60 GB): 45.30 GB entfernt, rund 16 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In einundzwanzig Tagen, davon fünfzehn
Werktagen, sind davon **77.72 GB zurückgekehrt**, also **73 %** (gestern 71 %).

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 625.59 GB | 131.11 GB | 21.0 % | 374 Obj / 1.26 GB | leer | 03.09.2026 15:57 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 31.08.2026 01:02 |
| /sites/AD | 51.92 GB | 3.37 GB | 6.5 % | 33 Obj / 0.01 GB | leer | 03.09.2026 06:24 |
| /sites/PL | 40.15 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 18:56 |
| /sites/kispi | 33.60 GB | 0.33 GB | 1.0 % | 191 Obj / 0.54 GB | leer | 03.09.2026 15:46 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 4.6 % | leer | leer | 31.08.2026 01:02 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.03 GB | 1.54 GB | 38.1 % | 3 Obj / 0.00 GB | leer | 03.09.2026 15:50 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **141.82 GB** (15.7 % der Belegung), gegenüber 139.84 GB
gestern und 64.10 GB kurz nach dem Trim. **+1.98 GB an einem Tag.**

Bewegung heute, mit derselben Einschränkung zur Auflösung wie an den Vortagen (Site-Werte
auf zwei Stellen in GB, also ±5 MB):

- **JANS.PROJEKTE: +1.96 GB** — trägt rund **97 %** des Tenant-Deltas. Davon +1.97 GB
  Versionsverlauf, neue Substanz rechnerisch null (Saldo -0.01 GB).
- **kispi: +0.06 GB** — erneut Zuwachs mit echter Substanz: der Versionsverlauf blieb bei
  0.33 GB, der Papierkorb wuchs um 4 Objekte. Der Zuwachs ist neue Substanz.
- **IMMO: +0.01 GB**, an der Auflösungsgrenze. Bemerkenswert ist nicht die Menge, sondern
  der Zeitstempel: IMMO trägt heute erstmals seit dem 22.08. wieder eine tagesaktuelle
  Aenderung (15:50) und ein zusätzliches Papierkorb-Objekt. Die Site wurde also wieder
  angefasst.
- Alle übrigen acht Sites bewegen sich innerhalb der Auflösungsgrenze und sind als
  unverändert zu lesen. SE steht den achtzehnten Tag unverändert, PL den siebzehnten.

`LastContentModifiedDate` zeigt bei vier Sites den heutigen Tag (JANS.PROJEKTE 15:57,
IMMO 15:50, kispi 15:46, AD 06:24). SE und WE stehen weiterhin auf dem Nachtbetrieb vom
31.08. 01:02 und haben seither keinen Stempel erhalten.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 131.11 GB** Versionen auf 625.59 GB Site (**21.0 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Sechsfache. Trägt **92.4 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  17.9 % (25./26.08.), 18.4 % (27.08.), 18.7 % (28.08.), 18.6 % (29./30.08.), 19.7 %
  (31.08.), 20.1 % (01.09.), 20.7 % (02.09.), **21.0 % heute**.
- IMMO: 1.54 GB auf 4.03 GB, **38.1 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 1.0 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Sechsundzwanzigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 03.09.
- Messweg: die Erhebung lief über einen **Haiku-Subagenten** (27 Aufrufe), wie es die
  Modell-Politik der Task vorsieht. Weil er einen **durchgehend gleichförmigen Befund**
  meldete («alle zweiten Stufen leer»), wurden gemäss Rule `auto-verbesserungen` 260729b
  anschliessend **zwei Sites im Hauptkontext selbst nachgemessen** (JANS.PROJEKTE und
  kispi, je zweite Stufe) — beide bestätigt mit 0.
- **Korrektur an einer Subagenten-Zahl:** seine tenantweite Summe der ersten Stufe
  (1'991'091'631 Bytes) ist falsch; die Einzelwerte addieren sich auf **1'992'091'631
  Bytes**. Ein Ziffernschlupf von einer Million Bytes, ohne Auswirkung auf den auf zwei
  Stellen gerundeten GB-Wert. Die Einzelwerte selbst wurden nachgerechnet und stimmen.
  Vermerkt, weil eine ungeprüft übernommene Subagenten-Summe genau der Fall ist, den
  Rule 260729b adressiert.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **611 Objekte / 1.86 GB** tenantweit,
  gegenüber 604 / 1.86 GB gestern. JANS.PROJEKTE 374 / 1.26 GB (+2 Obj),
  kispi 191 / 0.54 GB (+4 Obj), AD 33 / 0.01 GB (unverändert),
  JANSDATENAUSTAUSCH 10 / 0.05 GB (unverändert), IMMO 3 / 0.00 GB (+1 Obj).

### Tote/leere Sites (Hinweis, Phase 2)

Unverändert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.9 Monate), Test
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

Seit dem 13.07.2026 offen, also heute seit **52 Tagen**. Der heutige Tag ist der billigste
der Reihe und beziffert trotzdem dasselbe: 1.97 GB Versionsverlauf bei rechnerisch null
neuer Substanz auf derselben Site.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 113 GB

131.11 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **113 GB** zu rechnen, was den
Puffer auf gut 264 GB und die Auslastung auf rund **75.0 %** senkt. Beim Wochenschnitt von
2.90 GB/Tag kauft das rund **39 Tage** zusätzliche Restlaufzeit (52 auf 91 Tage), beim
Werktagsschnitt rund 28 Tage (37 auf 65).

Die 113 GB sind eine **Hochrechnung**, keine Messung: sie skalieren die Schätzung des
Vorreports (111 GB bei 129.14 GB Versionen) mit dem seitherigen Versionswachstum. Belastbar
gemessen ist nur der Trim vom 13.08. selbst.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

**Zum Zeitpunkt.** Der ruhigere Tag verschafft etwas Luft: die 88-%-Marke liegt beim
Werktagsschnitt wieder rund sechs Tage entfernt (etwa 9. September), beim Wochenschnitt
rund acht (etwa 12. September). Das Wochenende vom 05./06.09. liegt damit knapp davor und
bleibt ein brauchbares Fenster, aber weiterhin ohne Reserve. **Punkt 1 (Versionslimit) ist
ohnehin zeitunkritisch und sollte in jedem Fall vorher erledigt werden** — sonst füllt sich
der freigeräumte Platz im selben Muster wieder auf, wie es seit dem 13.08. nachweislich
geschieht (73 % Rückfluss in 21 Tagen).

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Unverändert offen, und heute an einem **vierten** unabhängigen Datenpunkt bestätigt:
+1.97 GB Versionsverlauf bei rechnerisch null neuer Substanz. Vier aufeinanderfolgende
Werktage mit demselben extremen Verhältnis deuten auf wenige sehr grosse, wiederholt
gespeicherte Dateien hin, nicht auf breites Arbeiten an vielen kleinen. Zu klären bleibt,
welche Bibliothek und welche Dateien das sind. Ergibt sich eine einzelne Bibliothek, kann
diese zusätzlich vom Versionieren ausgenommen werden — das wäre die zielgenauere Massnahme
als ein wiederkehrender tenantweiter Trim.

Der heutige Tag liefert zusätzlich ein Argument für diese Lesart: der Tageszuwachs fiel um
mehr als die Hälfte, das **Verhältnis** von Versionen zu Substanz blieb aber unverändert
extrem. Das passt zu einer festen, kleinen Menge sehr grosser Dateien, die je nach
Arbeitstag unterschiedlich oft gespeichert werden — nicht zu einem breiten Effekt, der mit
dem Arbeitsvolumen skaliert.

Den Gegenbeleg liefert heute erneut kispi: dort wuchs die Belegung um 0.06 GB, der
Versionsverlauf um 0.00 GB. So sieht normale Projektarbeit in diesem Tenant aus.

## Git-Stand (Backup)

Nativ per ssh auf der Synology gemessen (nie `git` über den SMB-Mount): HEAD und
`github/main` stehen beide auf **`8f0f488e4`** vom 03.09.2026 20:00, Divergenz **0 voraus /
0 nicht integriert**. Das Backup läuft. Der P1-Vorgang der Reporte vom 29.08. bis 01.09.
bleibt aufgelöst.

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 924'975 MB, dazu die
  Einzelwerte projiziert und aufaddiert → ebenfalls 924'975 MB.
- Site-Einzelwerte: `m365 spo site list` mit Projektion auf Url, StorageUsage, VersionSize,
  LastContentModifiedDate. Der ungefilterte JSON-Dump ist zu gross für eine Rückgabe und
  wurde deshalb von Beginn an projiziert abgefragt.
- Versions-Policy: `m365 spo site list --query "[?contains(Url,'JANS.PROJEKTE')]..."` →
  Inherit true, Major 0, MajorMinor 0, Trim false. Direkt gemessen, nicht aus dem
  Vorreport übernommen.
- Papierkorb: Haiku-Subagent, je Site zuerst zweite Stufe (`--secondary --query
  "length(@)"`), danach erste Stufe, Grössenabfrage nur bei `length(@) > 0`; 27 Aufrufe.
  Anschliessend zwei zweite Stufen im Hauptkontext gegengemessen (Rule 260729b), und seine
  tenantweite Byte-Summe nachgerechnet und korrigiert.
- `LastContentModifiedDate` im Format `/Date(2026,8,3,...)/` ist der **3. September 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt (`^[0-9]{6}-hygiene\.md$`):
  `260902-hygiene.md`. Zeitraum 02.09. 20:12 bis 03.09. 20:10, also rund 24 Stunden.
- Git-Stand nativ per ssh auf `/volume2/daten/jans-ai-hub`, nicht über den SMB-Mount.
- Sende-Schwelle: Grund **c)** greift (52 Tage Restlaufzeit beim Wochenschnitt, Schwelle
  60; der Werktagsschnitt sagt 37 Tage) — den zweiten Tag in Folge. Grund b) greift heute
  **nicht** mehr (Delta +2.03 GB/Tag, Schwelle 3). Auslastung 85.70 % (unter 88), keine
  Auto-Bereinigung, kein Blocker, heute Donnerstag (keine Wochenpflicht).
