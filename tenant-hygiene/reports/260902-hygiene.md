# Tenant-Speicher-Hygiene — Report 02.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:12 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Mittwoch, keine Wochenpflicht

## Kernbefund: der Wachstumssprung kehrt zurück, und die Restlaufzeit reisst erstmals die Schwelle

Der Tenant wächst heute um **+5.09 GB**, nach +3.02 GB gestern und +7.93 GB am Montag. Das
ist der zweithöchste Tageswert dieser Reihe.

Entscheidender als der Tageswert ist die Folge daraus: der Wochenschnitt steigt auf
**3.23 GB/Tag**, und damit fällt die Restlaufzeit auf **47 Tage**. Sie liegt erstmals seit
Beginn dieser Reihe **auch beim Wochenschnitt** unter der 60-Tage-Schwelle. Bisher griff
Grund c) nur beim Werktagsschnitt und wurde als «formale Entwarnung» geführt. Diese
Entwarnung ist heute weg.

Die Zusammensetzung ist unverändert und bleibt der eigentliche Befund. Von den +5.09 GB
entfallen **+4.88 GB auf JANS.PROJEKTE**, und dort **+4.95 GB auf den Versionsverlauf**. An
neuer Substanz bleibt auf dieser Site rechnerisch **nichts** übrig, der Saldo ist mit
-0.07 GB sogar leicht negativ. Das ist der **dritte** aufeinanderfolgende Werktag mit
diesem Muster.

Die Ursache bleibt unbehoben und wurde heute erneut direkt gemessen, nicht aus dem
Vorreport fortgeschrieben: JANS.PROJEKTE meldet `InheritVersionPolicyFromTenant: true`,
`MajorVersionLimit: 0`, `MajorWithMinorVersionsLimit: 0`,
`EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor nichts.

Der Versionsanteil von JANS.PROJEKTE steigt auf **20.7 %** (gestern 20.1 %).

## Tenant-Summe

- Belegt: **901.27 GB** (922'901 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **85.51 %**, freier Puffer **152.73 GB**
- Delta zum Vorreport (01.09.2026, 20:10, 917'690 MB): **+5'211 MB in rund 24 Stunden**,
  also **+5.09 GB/Tag**
- Reihe der letzten sieben Tage: +4.35 (27.08. Do), +2.16 (28.08. Fr), +0.054 (29.08. Sa),
  -0.005 (30.08. So), +7.93 (31.08. Mo), +3.02 (01.09. Di), **+5.09 GB/Tag (02.09. Mi)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller 20 Sites aufaddiert
sowie `sum([].StorageUsage)`); beide ergeben **exakt 922'901 MB**, ohne Rundungsdifferenz.
Der Tenant-Delta ist damit auf das MB genau belegt.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Einzelne Tageswerte können Nachmeldungen enthalten. Massgeblich bleibt darum der
Wochenschnitt, nicht der Tageswert — und genau der ist heute gestiegen.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 152.73 GB gerechnet:

- Beim Wochenschnitt der letzten sieben Tage (**3.23 GB/Tag**): rund **47 Tage**, also etwa
  **19. Oktober 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (**4.51 GB/Tag**): rund **34 Tage**, also
  etwa 6. Oktober 2026.

Beide Schnitte steigen deutlich (Woche 2.52 → 3.23, Werktag 3.52 → 4.51 GB/Tag). Die
Restlaufzeit fällt von 63 auf 47 Tage, also um 16 Tage an einem einzigen Tag.

**Grund c) greift damit erstmals ohne Einschränkung.** Der Vorreport konnte die
60-Tage-Schwelle beim Wochenschnitt noch mit 63 Tagen halten und musste die Abweichung des
Werktagsschnitts eigens einordnen. Diese Differenzierung ist heute gegenstandslos: beide
Schnitte liegen unter der Schwelle.

Warnmarken:

- **88-%-Marke (927.5 GB): 26.25 GB entfernt** — beim Wochenschnitt rund **8 Tage**
  (etwa 10. September), beim Werktagsschnitt rund **6 Tage** (etwa 8. September).
- 90-%-Marke (948.6 GB): 47.33 GB entfernt, rund 15 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In zwanzig Tagen, davon vierzehn Werktagen,
sind davon **75.74 GB zurückgekehrt**, also **71 %** (gestern 67 %).

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 623.63 GB | 129.14 GB | 20.7 % | 372 Obj / 1.26 GB | leer | 02.09.2026 17:11 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 31.08.2026 01:02 |
| /sites/AD | 51.91 GB | 3.37 GB | 6.5 % | 33 Obj / 0.01 GB | leer | 02.09.2026 06:28 |
| /sites/PL | 40.15 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 18:56 |
| /sites/kispi | 33.54 GB | 0.33 GB | 1.0 % | 187 Obj / 0.54 GB | leer | 02.09.2026 17:58 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 4.6 % | leer | leer | 31.08.2026 01:02 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 38.2 % | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **139.84 GB** (15.5 % der Belegung), gegenüber 134.86 GB
gestern und 64.10 GB kurz nach dem Trim. **+4.98 GB an einem Tag.**

Bewegung heute, mit derselben Einschränkung zur Auflösung wie an den Vortagen (Site-Werte
auf zwei Stellen in GB, also ±5 MB):

- **JANS.PROJEKTE: +4.88 GB** — trägt rund **96 %** des Tenant-Deltas. Davon +4.95 GB
  Versionsverlauf, neue Substanz rechnerisch null (Saldo -0.07 GB).
- **kispi: +0.22 GB** — die einzige weitere Site über der Auflösungsgrenze, und erneut der
  einzige Zuwachs mit echter Substanz: der Versionsverlauf stieg nur um 0.03 GB, der
  Papierkorb um 5 Objekte / 0.04 GB. Rund 0.19 GB sind neue Substanz.
- Alle übrigen neun Sites bewegen sich zwischen -20 und +5 MB und sind als unverändert zu
  lesen. SE steht den siebzehnten Tag unverändert, PL den sechzehnten.

`LastContentModifiedDate` zeigt bei drei Sites den heutigen Tag (kispi 17:58,
JANS.PROJEKTE 17:11, AD 06:28). SE und WE stehen weiterhin auf dem Nachtbetrieb vom
31.08. 01:02 und haben seither keinen Stempel erhalten.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 129.14 GB** Versionen auf 623.63 GB Site (**20.7 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Sechsfache. Trägt **92.3 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  17.9 % (25./26.08.), 18.4 % (27.08.), 18.7 % (28.08.), 18.6 % (29./30.08.), 19.7 %
  (31.08.), 20.1 % (01.09.), **20.7 % heute**.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 1.0 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Fünfundzwanzigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 02.09.
- Messweg heute abweichend von den Vortagen: die Erhebung lief über einen
  **Haiku-Subagenten** (27 Aufrufe: 11 zweite Stufen, 11 erste Stufen, 5 Grössenabfragen),
  wie es die Modell-Politik der Task vorsieht. Weil er einen **durchgehend gleichförmigen
  Befund** meldete («alle zweiten Stufen leer»), wurden gemäss Rule `auto-verbesserungen`
  260729b anschliessend **zwei Sites im Hauptkontext selbst nachgemessen**
  (JANS.PROJEKTE und kispi, je zweite Stufe) — beide bestätigt mit 0. Die
  Objektzahlen der ersten Stufen sind gegenüber gestern plausibel fortgeschrieben
  (+7 Objekte), was den Befund zusätzlich stützt.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **604 Objekte / 1.86 GB** tenantweit,
  gegenüber 597 / 1.85 GB gestern. JANS.PROJEKTE 372 / 1.26 GB (+2 Obj),
  kispi 187 / 0.54 GB (+5 Obj), AD 33 / 0.01 GB (unverändert),
  JANSDATENAUSTAUSCH 10 / 0.05 GB (unverändert), IMMO 2 / 0.00 GB (unverändert).

### Tote/leere Sites (Hinweis, Phase 2)

Unverändert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 11.0 Monate), Test
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

Seit dem 13.07.2026 offen, also heute seit **51 Tagen**. Der heutige Tag beziffert erneut,
was das Offenlassen kostet: 4.95 GB Versionsverlauf bei rechnerisch null neuer Substanz auf
derselben Site — der teuerste Einzeltag dieser Reihe nach dem 31.08.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 111 GB

129.14 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **111 GB** zu rechnen, was den
Puffer auf gut 264 GB und die Auslastung auf rund **75.0 %** senkt. Beim Wochenschnitt von
3.23 GB/Tag kauft das rund **35 Tage** zusätzliche Restlaufzeit (47 auf 82 Tage), beim
Werktagsschnitt rund 25 Tage (34 auf 59).

Die 111 GB sind eine **Hochrechnung**, keine Messung: sie skalieren die Schätzung des
Vorreports (107 GB bei 124.19 GB Versionen) mit dem seitherigen Versionswachstum. Belastbar
gemessen ist nur der Trim vom 13.08. selbst.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

**Zum Zeitpunkt — das Fenster ist enger geworden.** Der Vorreport hielt das Wochenende vom
05./06.09. für vertretbar, weil die 88-%-Marke damals rund neun Werktage entfernt lag.
Heute sind es beim Werktagsschnitt noch **rund sechs Tage** (etwa 8. September). Das
Wochenende liegt damit weiterhin knapp davor, aber ohne Reserve: fällt ein weiterer Tag wie
heute an, wird die Marke am Wochenende selbst erreicht. **Punkt 1 (Versionslimit) ist
ohnehin zeitunkritisch und sollte in jedem Fall vorher erledigt werden** — sonst füllt sich
der freigeräumte Platz im selben Muster wieder auf, wie es seit dem 13.08. nachweislich
geschieht (71 % Rückfluss in 20 Tagen).

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Unverändert offen, und heute an einem **dritten** unabhängigen Datenpunkt bestätigt:
+4.95 GB Versionsverlauf bei rechnerisch null neuer Substanz. Drei aufeinanderfolgende
Werktage mit demselben extremen Verhältnis deuten auf wenige sehr grosse, wiederholt
gespeicherte Dateien hin, nicht auf breites Arbeiten an vielen kleinen. Zu klären bleibt,
welche Bibliothek und welche Dateien das sind. Ergibt sich eine einzelne Bibliothek, kann
diese zusätzlich vom Versionieren ausgenommen werden — das wäre die zielgenauere Massnahme
als ein wiederkehrender tenantweiter Trim.

Den Gegenbeleg liefert heute erneut kispi: dort wuchs die Belegung um 0.22 GB, davon nur
0.03 GB Versionsverlauf. So sieht normale Projektarbeit in diesem Tenant aus. Das Problem
ist nicht das Arbeitsvolumen, sondern eine bestimmte Datei- oder Bibliotheksklasse auf
JANS.PROJEKTE.

## Erledigt: der GitHub-Blocker ist aufgelöst

Der P1-Vorgang der Vorreporte vom 29.08. bis 01.09. **besteht nicht mehr**. Nativ per ssh
auf der Synology gemessen (nie `git` über den SMB-Mount):

- HEAD und `github/main` stehen beide auf **`d11d3c7bb`** vom 02.09.2026 20:00
- Divergenz **0 voraus / 0 nicht integriert** (gestern 20:1x noch 609/267)
- Kein `MERGE_HEAD`, kein laufender Rebase; Arbeitsbaum bis auf zwei
  `station-status/`-Dateien sauber

Das Backup läuft wieder. Die Reports vom 29.08. bis 01.09., die vier Tage lang nur auf dem
NAS lagen, sind mit dem Abgleich nachgezogen worden. Wie die Divergenz aufgelöst wurde, ist
aus diesem Lauf heraus nicht feststellbar und war nicht Gegenstand der Messung; festgestellt
ist allein der heutige Zustand.

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 922'901 MB, dazu die
  Einzelwerte projiziert und aufaddiert → ebenfalls 922'901 MB.
- Site-Einzelwerte: `m365 spo site list` mit Projektion auf Url, StorageUsage, VersionSize,
  LastContentModifiedDate. Der ungefilterte JSON-Dump ist zu gross für eine Rückgabe und
  wurde deshalb von Beginn an projiziert abgefragt.
- Versions-Policy: `m365 spo site list --query "[?contains(Url,'JANS.PROJEKTE')]..."` →
  Inherit true, Major 0, MajorMinor 0, Trim false. Direkt gemessen, nicht aus dem
  Vorreport übernommen.
- Papierkorb: Haiku-Subagent, je Site zuerst zweite Stufe (`--secondary --query
  "length(@)"`), danach erste Stufe, Grössenabfrage nur bei `length(@) > 0`; 27 Aufrufe.
  Anschliessend zwei zweite Stufen im Hauptkontext gegengemessen (Rule 260729b).
- `LastContentModifiedDate` im Format `/Date(2026,8,2,...)/` ist der **2. September 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt (`^[0-9]{6}-hygiene\.md$`):
  `260901-hygiene.md`. Zeitraum 01.09. 20:10 bis 02.09. 20:12, also rund 24 Stunden.
- Git-Stand nativ per ssh auf `/volume2/daten/jans-ai-hub`, nicht über den SMB-Mount.
- Sende-Schwelle: Grund **b)** greift (Delta +5.09 GB/Tag, Schwelle 3) und Grund **c)**
  greift (47 Tage Restlaufzeit beim Wochenschnitt, Schwelle 60 — erstmals ohne
  Einschränkung, der Werktagsschnitt sagt 34 Tage). Auslastung 85.51 % (unter 88), keine
  Auto-Bereinigung, kein Blocker (der bisherige ist aufgelöst), heute Mittwoch (keine
  Wochenpflicht).
