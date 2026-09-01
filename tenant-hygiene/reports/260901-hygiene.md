# Tenant-Speicher-Hygiene — Report 01.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Dienstag, keine Wochenpflicht

## Kernbefund: dasselbe Muster wie gestern, auf ein Drittel der Höhe

Der Tenant wächst heute um **+3.02 GB**, nach +7.93 GB am gestrigen Montag. Der Wert liegt
knapp über der Meldeschwelle von 3 GB/Tag und ist damit ein gewöhnlicher Werktag dieser
Reihe, kein Sprung.

Die Zusammensetzung ist unverändert und bleibt der eigentliche Befund. Von den +3.02 GB
entfallen **+2.92 GB auf JANS.PROJEKTE**, und dort **+2.93 GB auf den Versionsverlauf**.
An neuer Substanz bleibt auf dieser Site rechnerisch **nichts** übrig; der Zuwachs ist
vollständig Versionsverlauf. Der Tenant hat heute erneut fast ausschliesslich Kopien
früherer Fassungen angelegt.

Die Ursache bleibt unbehoben und wurde heute erneut direkt gemessen, nicht aus dem
Vorreport fortgeschrieben: JANS.PROJEKTE meldet `InheritVersionPolicyFromTenant: true`,
`MajorVersionLimit: 0`, `MajorWithMinorVersionsLimit: 0`,
`EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor nichts.

Der Versionsanteil von JANS.PROJEKTE überschreitet heute erstmals seit dem Trim die
**20-Prozent-Marke** (20.1 %).

## Tenant-Summe

- Belegt: **896.18 GB** (917'690 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **85.03 %**, freier Puffer **157.82 GB**
- Delta zum Vorreport (31.08.2026, 20:10, 914'593 MB): **+3'097 MB in 24.0 Stunden**,
  also **+3.02 GB/Tag**
- Reihe der letzten sieben Tage: +0.14 (26.08. Mi), +4.35 (27.08. Do), +2.16 (28.08. Fr),
  +0.054 (29.08. Sa), -0.005 (30.08. So), +7.93 (31.08. Mo), **+3.02 GB/Tag (01.09. Di)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller 20 Sites aufaddiert
sowie `sum([].StorageUsage)`); beide ergeben **exakt 917'690 MB**, ohne Rundungsdifferenz.
Der Tenant-Delta ist damit auf das MB genau belegt.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Der gestrige Montagssprung kann Nachmeldung des Wochenendes enthalten haben, der heutige
Wert entsprechend entlastet sein. Massgeblich bleibt darum der Wochenschnitt, nicht der
Tageswert.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 157.82 GB gerechnet:

- Beim Wochenschnitt der letzten sieben Tage (**2.52 GB/Tag**): rund **63 Tage**, also etwa
  **3. November 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (**3.52 GB/Tag**): rund **45 Tage**, also
  etwa 16. Oktober 2026.

Beide Schnitte sind gegenüber gestern praktisch stabil (Woche 2.39 → 2.52, Werktag
3.33 → 3.52 GB/Tag). Die Restlaufzeit fällt von 67 auf 63 Tage. Die formale Entwarnung bei
Grund c) hält damit den zweiten Tag, bleibt aber knapp: der Werktagsschnitt, der die
tatsächliche Arbeitsbelastung abbildet, sagt weiterhin **45 Tage** und liegt deutlich unter
der 60-Tage-Schwelle.

Warnmarken:

- **88-%-Marke (927.5 GB): 31.34 GB entfernt** — beim Wochenschnitt rund **12 Tage**
  (etwa 13. September), beim Werktagsschnitt rund **9 Tage** (etwa 10. September).
- 90-%-Marke (948.6 GB): 52.42 GB entfernt, rund 21 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In neunzehn Tagen, davon dreizehn Werktagen,
sind davon **70.76 GB zurückgekehrt**, also **67 %** (gestern 64 %).

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 618.75 GB | 124.19 GB | 20.1 % | 370 Obj / 1.26 GB | leer | 01.09.2026 17:27 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 31.08.2026 01:02 |
| /sites/AD | 51.92 GB | 3.37 GB | 6.5 % | 33 Obj / 0.01 GB | leer | 01.09.2026 07:42 |
| /sites/PL | 40.17 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 |
| /sites/kispi | 33.32 GB | 0.30 GB | 0.9 % | 182 Obj / 0.54 GB | leer | 01.09.2026 17:20 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 4.6 % | leer | leer | 31.08.2026 01:02 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 38.2 % | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **134.86 GB** (15.0 % der Belegung), gegenüber 131.98 GB
gestern und 64.10 GB kurz nach dem Trim. **+2.88 GB an einem Tag.**

Bewegung heute, mit derselben Einschränkung zur Auflösung wie an den Vortagen (Site-Werte
auf zwei Stellen in GB, also ±5 MB):

- **JANS.PROJEKTE: +2.92 GB** — trägt rund **97 %** des Tenant-Deltas. Davon +2.93 GB
  Versionsverlauf, neue Substanz rechnerisch null.
- **kispi: +0.11 GB** — die einzige weitere Site über der Auflösungsgrenze, und der
  einzige Zuwachs mit echter Substanz: der Versionsverlauf dieser Site ist im selben
  Zeitraum von 0.35 auf 0.30 GB **gesunken**, der Papierkorb um 7 Objekte / 0.07 GB
  gewachsen. Hier wurde gearbeitet und gelöscht, nicht versioniert.
- Alle übrigen neun Sites bewegen sich zwischen -5 und +5 MB und sind als unverändert zu
  lesen. SE steht den sechzehnten Tag unverändert, PL den fünfzehnten.

`LastContentModifiedDate` zeigt bei drei Sites den heutigen Tag (JANS.PROJEKTE 17:27,
kispi 17:20, AD 07:42). SE und WE stehen auf dem gestrigen Nachtbetrieb 01:02 und haben
heute keinen Stempel erhalten.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 124.19 GB** Versionen auf 618.75 GB Site (**20.1 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Sechsfache. Trägt **92.1 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  17.9 % (25./26.08.), 18.4 % (27.08.), 18.7 % (28.08.), 18.6 % (29./30.08.), 19.7 %
  (31.08.), **20.1 % heute**. Erstmals seit dem Trim über 20 %.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 0.9 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Vierundzwanzigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 01.09.
- Messweg wie an den Vortagen: die gesamte Papierkorb-Erhebung lief **im Hauptkontext**,
  elf Einzelabfragen der zweiten Stufe und elf der ersten, dazu fünf Grössenabfragen für
  die nicht leeren ersten Stufen. Kein Subagent beteiligt, jede Zahl ist ein eigener
  Aufruf. Grund bleibt der Subagenten-Befund vom 20.08. (gemeldete Prüfung von elf Sites
  bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **597 Objekte / 1.85 GB** tenantweit,
  gegenüber 590 / 1.78 GB gestern. JANS.PROJEKTE 370 / 1.26 GB (unverändert),
  kispi 182 / 0.54 GB (+7 Obj / +0.07 GB), AD 33 / 0.01 GB (unverändert),
  JANSDATENAUSTAUSCH 10 / 0.05 GB (unverändert), IMMO 2 / 0.00 GB (unverändert).

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

Seit dem 13.07.2026 offen, also heute seit **50 Tagen**. Der heutige Tag beziffert
erneut, was das Offenlassen kostet: 2.9 GB Versionsverlauf bei rechnerisch null neuer
Substanz auf derselben Site.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 107 GB

124.19 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **107 GB** zu rechnen, was den
Puffer auf gut 264 GB und die Auslastung auf rund **74.9 %** senkt. Beim Wochenschnitt von
2.52 GB/Tag kauft das rund **42 Tage** zusätzliche Restlaufzeit (63 auf 105 Tage), beim
Werktagsschnitt rund 30 Tage (45 auf 75).

Die 107 GB sind eine **Hochrechnung**, keine Messung: sie skalieren die Schätzung des
Vorreports (104 GB bei 121.26 GB Versionen) mit dem seitherigen Versionswachstum. Belastbar
gemessen ist nur der Trim vom 13.08. selbst.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

**Zum Zeitpunkt:** Das nächste ruhende Fenster ist das Wochenende vom **05./06.09.**, in
vier bzw. fünf Tagen. Die 88-%-Marke liegt beim Werktagsschnitt rund neun Tage entfernt,
das Fenster also noch davor. Warten bis zum Wochenende bleibt vertretbar. **Punkt 1
(Versionslimit) ist ohnehin zeitunkritisch und sollte in jedem Fall vorher erledigt
werden** — sonst füllt sich der freigeräumte Platz im selben Muster wieder auf, wie es seit
dem 13.08. nachweislich geschieht (67 % Rückfluss in 19 Tagen).

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Unverändert offen. Der heutige Tag bestätigt die Diagnose des Vorreports an einem zweiten,
unabhängigen Datenpunkt: **+2.93 GB Versionsverlauf bei rechnerisch null neuer Substanz**.
Das Verhältnis ist damit an zwei aufeinanderfolgenden Werktagen extrem und deutet auf
wenige sehr grosse, wiederholt gespeicherte Dateien hin, nicht auf breites Arbeiten an
vielen kleinen. Zu klären bleibt, welche Bibliothek und welche Dateien das sind. Ergibt
sich eine einzelne Bibliothek, kann diese zusätzlich vom Versionieren ausgenommen werden —
das wäre die zielgenauere Massnahme als ein wiederkehrender tenantweiter Trim.

Der Gegenbeleg dazu liefert heute kispi: dort wuchs die Belegung um 0.11 GB, während der
Versionsverlauf **sank**. So sieht normale Projektarbeit in diesem Tenant aus. Das Problem
ist nicht das Arbeitsvolumen, sondern eine bestimmte Datei- oder Bibliotheksklasse auf
JANS.PROJEKTE.

## Blocker (Grund e): das GitHub-Backup steht weiterhin still — vierter Tag

Der P1-Vorgang aus dem Vorreport besteht unverändert und hat sich verschärft. Nativ per
ssh auf der Synology gemessen (nie `git` über den SMB-Mount):

- Divergenz **609 Commits voraus / 267 nicht integriert** (gestern 20:2x: 484/267)
- Letzter gemeinsamer Stand `01204714a` vom **29.08.2026 22:04**, also rund **70 Stunden** alt
- `github/main` unverändert bei `66df04125` vom **31.08.2026 06:12** — seit rund 38 Stunden
  kein Fortschritt auf dem Remote
- HEAD auf der Synology `48e4f265d` (01.09.2026 20:00), Arbeitsbaum bis auf zwei Dateien
  sauber, **kein `MERGE_HEAD`** — der lokale Stand ist intakt, nur der Abgleich scheitert

**Folge für diese Reihe:** die Hygiene-Reports vom 29., 30. und 31.08. sowie der heutige
liegen ausschliesslich auf dem NAS und sind nicht im GitHub-Backup — der **vierte Tag in
Folge**.

**Nicht selbst aufgelöst** (Git-Interna, unbeaufsichtigter Lauf, fremde unbestätigte Arbeit
mehrerer Lanes in den Konfliktdateien; Rule `interaktive-eingriffe` Punkt 3, Rule
`auto-verbesserungen` 260811 Punkt 3). Die Auflösung braucht Raphaels Entscheid darüber,
welche Fassung der append-at-top-Dateien gilt.

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 917'690 MB, dazu die
  Einzelwerte projiziert und aufaddiert → ebenfalls 917'690 MB.
- Site-Einzelwerte: `m365 spo site list` mit Projektion auf Url, StorageUsage, VersionSize,
  LastContentModifiedDate. Der ungefilterte JSON-Dump ist zu gross für eine Rückgabe und
  wurde deshalb von Beginn an projiziert abgefragt.
- Versions-Policy: `m365 spo site list --query "[?contains(Url,'JANS.PROJEKTE')]..."` →
  Inherit true, Major 0, MajorMinor 0, Trim false. Direkt gemessen, nicht aus dem
  Vorreport übernommen.
- Papierkorb: je Site zuerst zweite Stufe (`--secondary --query "length(@)"`), danach
  erste Stufe, Grössenabfrage nur bei `length(@) > 0`.
- `LastContentModifiedDate` im Format `/Date(2026,8,1,...)/` ist der **1. September 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt (`^[0-9]{6}-hygiene\.md$`):
  `260831-hygiene.md`. Zeitraum 31.08. 20:10 bis 01.09. 20:10, also 24.0 Stunden.
- Git-Stand nativ per ssh auf `/volume2/daten/jans-ai-hub`, nicht über den SMB-Mount.
- Sende-Schwelle: Grund **b)** greift (Delta +3.02 GB/Tag, Schwelle 3 — knapp) und Grund
  **e)** greift (GitHub-Backup seit vier Tagen blockiert). Grund c) greift beim
  Wochenschnitt **nicht** (63 Tage, über 60), beim Werktagsschnitt mit 45 Tagen schon; die
  Abweichung ist oben eingeordnet. Auslastung 85.03 % (unter 88), keine Auto-Bereinigung,
  heute Dienstag (keine Wochenpflicht).
