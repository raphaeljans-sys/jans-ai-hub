# Tenant-Speicher-Hygiene — Report 04.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Freitag, keine Wochenpflicht

## Kernbefund: fünfter Werktag in Folge mit demselben Mechanismus

Der Tenant wächst heute um **+2.23 GB**, nach +2.03 GB gestern. Zwei ruhige Werktage
hintereinander; der Wochenschnitt bleibt praktisch unverändert bei **2.91 GB/Tag** (gestern
2.90), die Restlaufzeit sinkt leicht von 52 auf **51 Tage**. **Grund c) greift den dritten
Tag in Folge.**

Die Zusammensetzung ist erneut die eigentliche Nachricht. Von den +2.23 GB entfallen
**+2.17 GB auf JANS.PROJEKTE**, und dort **+1.98 GB auf den Versionsverlauf**. An neuer
Substanz bleiben auf dieser Site rechnerisch **+0.19 GB** übrig. Das ist der **fünfte**
aufeinanderfolgende Werktag mit diesem Muster.

Ein Unterschied zu den vier Vortagen ist festzuhalten, damit die Reihe ehrlich bleibt: der
Substanz-Saldo auf JANS.PROJEKTE ist heute **leicht positiv** (+0.19 GB), während er am
02.09. und 03.09. rechnerisch null bis leicht negativ war. Bei einer Auflösung von ±5 MB je
Site-Wert ist das ein realer, wenn auch kleiner Unterschied. Am Mechanismus ändert er
nichts: **89 % des Zuwachses auf dieser Site sind Versionsverlauf.**

Die Ursache bleibt unbehoben und wurde heute erneut direkt gemessen, nicht aus dem
Vorreport fortgeschrieben: JANS.PROJEKTE meldet `InheritVersionPolicyFromTenant: true`,
`MajorVersionLimit: 0`, `MajorWithMinorVersionsLimit: 0`,
`EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor nichts.

Der Versionsanteil von JANS.PROJEKTE steigt auf **21.2 %** (gestern 21.0 %).

## Tenant-Summe

- Belegt: **905.52 GB** (927'255 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **85.91 %**, freier Puffer **148.48 GB**
- Delta zum Vorreport (03.09.2026, 20:10, 924'975 MB): **+2'280 MB in rund 24 Stunden**,
  also **+2.23 GB/Tag**
- Reihe der letzten sieben Tage: +0.054 (29.08. Sa), -0.005 (30.08. So), +7.93 (31.08. Mo),
  +3.02 (01.09. Di), +5.09 (02.09. Mi), +2.03 (03.09. Do), **+2.23 GB/Tag (04.09. Fr)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller 20 Sites aufaddiert
sowie `sum([].StorageUsage)`); beide ergeben **exakt 927'255 MB**, ohne Rundungsdifferenz.
Der Tenant-Delta ist damit auf das MB genau belegt.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Einzelne Tageswerte können Nachmeldungen enthalten. Massgeblich bleibt darum der
Wochenschnitt, nicht der Tageswert.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 148.48 GB gerechnet:

- Beim Wochenschnitt der letzten sieben Tage (**2.91 GB/Tag**): rund **51 Tage**, also etwa
  **25. Oktober 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (**4.06 GB/Tag**): rund **37 Tage**, also
  etwa 11. Oktober 2026.

Beide Schnitte stehen praktisch still gegenüber gestern (Woche 2.90 → 2.91, Werktag
4.05 → 4.06 GB/Tag). Die Restlaufzeit bleibt unter der 60-Tage-Schwelle, und zwar bei
beiden Schnitten.

Warnmarken:

- **88-%-Marke (927.52 GB): 22.00 GB entfernt** — beim Wochenschnitt rund **8 Tage**
  (etwa 12. September), beim Werktagsschnitt rund **5 Tage** (etwa 9. September).
- 90-%-Marke (948.60 GB): 43.08 GB entfernt, rund 15 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In zweiundzwanzig Tagen, davon sechzehn
Werktagen, sind davon **79.69 GB zurückgekehrt**, also **75 %** (gestern 73 %).

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 627.76 GB | 133.09 GB | 21.2 % | 380 Obj / 1.26 GB | leer | 04.09.2026 16:14 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 31.08.2026 01:02 |
| /sites/AD | 51.92 GB | 3.37 GB | 6.5 % | 33 Obj / 0.01 GB | leer | 04.09.2026 06:25 |
| /sites/PL | 40.15 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 18:56 |
| /sites/kispi | 33.66 GB | 0.33 GB | 1.0 % | 195 Obj / 0.55 GB | leer | 04.09.2026 14:34 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 4.6 % | leer | leer | 31.08.2026 01:02 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.03 GB | 1.54 GB | 38.1 % | 3 Obj / 0.00 GB | leer | 03.09.2026 18:11 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **143.79 GB** (15.9 % der Belegung), gegenüber 141.82 GB
gestern und 64.10 GB kurz nach dem Trim. **+1.97 GB an einem Tag.**

Bewegung heute, mit derselben Einschränkung zur Auflösung wie an den Vortagen (Site-Werte
auf zwei Stellen in GB, also ±5 MB):

- **JANS.PROJEKTE: +2.17 GB** — trägt rund **97 %** des Tenant-Deltas. Davon +1.98 GB
  Versionsverlauf, neue Substanz +0.19 GB. Der Versionsanteil am Site-Zuwachs beträgt
  **89 %**.
- **kispi: +0.06 GB** — wie an den Vortagen Zuwachs mit echter Substanz: der
  Versionsverlauf blieb bei 0.33 GB, der Papierkorb wuchs um 4 Objekte.
- Alle übrigen neun Sites bewegen sich innerhalb der Auflösungsgrenze und sind als
  unverändert zu lesen. SE steht den neunzehnten Tag unverändert, PL den achtzehnten.
- **IMMO** hat heute keinen neuen Stempel bekommen, der Zeitstempel wanderte lediglich
  innerhalb des gestrigen Tages weiter (15:50 → 18:11). Der gestern vermerkte Wiederkontakt
  hat sich also nicht fortgesetzt.

`LastContentModifiedDate` zeigt bei drei Sites mit Belegung den heutigen Tag
(JANS.PROJEKTE 16:14, kispi 14:34, AD 06:25). SE und WE stehen weiterhin auf dem
Nachtbetrieb vom 31.08. 01:02. Die Site HLEBWEB trägt zwar einen heutigen Stempel
(05:12), hat aber 0 MB Belegung und bleibt ohne Bedeutung für den Speicher.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 133.09 GB** Versionen auf 627.76 GB Site (**21.2 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Sechsfache. Trägt **92.6 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  17.9 % (25./26.08.), 18.4 % (27.08.), 18.7 % (28.08.), 18.6 % (29./30.08.), 19.7 %
  (31.08.), 20.1 % (01.09.), 20.7 % (02.09.), 21.0 % (03.09.), **21.2 % heute**.
- IMMO: 1.54 GB auf 4.03 GB, **38.1 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 1.0 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Siebenundzwanzigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 04.09.
- Messweg: die Erhebung lief über einen **Haiku-Subagenten** (31 Aufrufe), wie es die
  Modell-Politik der Task vorsieht. Weil er einen **durchgehend gleichförmigen Befund**
  meldete («alle zweiten Stufen leer»), wurden gemäss Rule `auto-verbesserungen` 260729b
  anschliessend **zwei Sites im Hauptkontext selbst nachgemessen** (JANS.PROJEKTE und AD,
  je zweite Stufe) — beide bestätigt mit 0.
- **Korrektur an einer Subagenten-Zahl, zum zweiten Mal in Folge:** er gab die tenantweite
  Summe der ersten Stufe mit «ca. 1,95 GB» an. Die von ihm selbst gelieferten Einzelwerte
  addieren sich auf **1'994'717'908 Bytes = 1.86 GB**. Die Einzelwerte stimmen, die
  gerundete Gesamtsumme war um rund 0.09 GB zu hoch. Gestern war es ein Ziffernschlupf in
  derselben Summe. **Das ist damit kein Einzelfall mehr, sondern ein Muster im
  Arbeitsschritt «Summe bilden»** — die Einzelmessungen des Subagenten sind belastbar,
  seine Aggregate sind es nicht und werden weiterhin im Hauptkontext nachgerechnet.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **618 Objekte / 1.86 GB** tenantweit,
  gegenüber 611 / 1.86 GB gestern. JANS.PROJEKTE 380 / 1.26 GB (+6 Obj),
  kispi 195 / 0.55 GB (+4 Obj), AD 33 / 0.01 GB (unverändert),
  JANSDATENAUSTAUSCH 10 / 0.05 GB (unverändert), IMMO 3 / 0.00 GB (unverändert).

### Tote/leere Sites (Hinweis, Phase 2)

Unverändert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 11 Monate), Test
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

Seit dem 13.07.2026 offen, also heute seit **53 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 115 GB

133.09 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **115 GB** zu rechnen, was den
Puffer auf rund 263 GB und die Auslastung auf rund **75.0 %** senkt. Beim Wochenschnitt von
2.91 GB/Tag kauft das rund **39 Tage** zusätzliche Restlaufzeit (51 auf 90 Tage), beim
Werktagsschnitt rund 28 Tage (37 auf 65).

Die 115 GB sind eine **Hochrechnung**, keine Messung: sie skalieren die Schätzung des
Vorreports (113 GB bei 131.11 GB Versionen) mit dem seitherigen Versionswachstum. Belastbar
gemessen ist nur der Trim vom 13.08. selbst.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

**Zum Zeitpunkt.** Das Wochenende vom 05./06.09. beginnt morgen und ist das letzte Fenster
vor der 88-%-Marke: die liegt beim Werktagsschnitt rund fünf Tage entfernt (etwa
9. September), beim Wochenschnitt rund acht (etwa 12. September). An den beiden letzten
Wochenenden lag der Zuwachs bei praktisch null (+0.054 und -0.005 GB/Tag), das Fenster
selbst kostet also nichts. **Punkt 1 (Versionslimit) ist zeitunkritisch und sollte in jedem
Fall vorher erledigt werden** — sonst füllt sich der freigeräumte Platz im selben Muster
wieder auf, wie es seit dem 13.08. nachweislich geschieht (75 % Rückfluss in 22 Tagen).

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Unverändert offen, und heute an einem **fünften** unabhängigen Datenpunkt bestätigt:
+1.98 GB Versionsverlauf bei +0.19 GB neuer Substanz auf derselben Site. Fünf
aufeinanderfolgende Werktage mit einem Versionsanteil von 89 bis 100 % am Site-Zuwachs
deuten auf wenige sehr grosse, wiederholt gespeicherte Dateien hin, nicht auf breites
Arbeiten an vielen kleinen. Zu klären bleibt, welche Bibliothek und welche Dateien das
sind. Ergibt sich eine einzelne Bibliothek, kann diese zusätzlich vom Versionieren
ausgenommen werden — das wäre die zielgenauere Massnahme als ein wiederkehrender
tenantweiter Trim.

Zwei ruhige Werktage hintereinander (+2.03 und +2.23 GB) bei unverändert extremem
Verhältnis stützen diese Lesart weiter: die Menge schwankt mit dem Arbeitstag, das
Verhältnis nicht.

Den Gegenbeleg liefert heute erneut kispi: dort wuchs die Belegung um 0.06 GB, der
Versionsverlauf um 0.00 GB. So sieht normale Projektarbeit in diesem Tenant aus.

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 927'255 MB, dazu die
  Einzelwerte projiziert und aufaddiert → ebenfalls 927'255 MB.
- Site-Einzelwerte: `m365 spo site list` mit Projektion auf Url, StorageUsage, VersionSize,
  LastContentModifiedDate. Der ungefilterte JSON-Dump ist zu gross für eine Rückgabe und
  wurde deshalb von Beginn an projiziert abgefragt.
- Versions-Policy: `m365 spo site list --query "[?contains(Url,'JANS.PROJEKTE')]..."` →
  Inherit true, Major 0, MajorMinor 0, Trim false. Direkt gemessen, nicht aus dem
  Vorreport übernommen.
- Papierkorb: Haiku-Subagent, je Site zuerst zweite Stufe (`--secondary --query
  "length(@)"`), danach erste Stufe, Grössenabfrage nur bei `length(@) > 0`; 31 Aufrufe.
  Anschliessend zwei zweite Stufen im Hauptkontext gegengemessen (Rule 260729b), und seine
  tenantweite Byte-Summe nachgerechnet und korrigiert.
- `LastContentModifiedDate` im Format `/Date(2026,8,4,...)/` ist der **4. September 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt (`^[0-9]{6}-hygiene\.md$`):
  `260903-hygiene.md`. Zeitraum 03.09. 20:10 bis 04.09. 20:10, also rund 24 Stunden.
- Sende-Schwelle: Grund **c)** greift (51 Tage Restlaufzeit beim Wochenschnitt, Schwelle
  60; der Werktagsschnitt sagt 37 Tage) — den dritten Tag in Folge. Grund b) greift
  **nicht** (Delta +2.23 GB/Tag, Schwelle 3). Auslastung 85.91 % (unter 88), keine
  Auto-Bereinigung, kein Blocker, heute Freitag (keine Wochenpflicht).
