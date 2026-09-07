# Tenant-Speicher-Hygiene — Report 07.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Montag, **Wochenpflicht greift**

## Vorbemerkung: zwei Läufe fehlen

Der jüngste vorhandene Report ist **260904** (Freitag). Für Samstag 05.09. und Sonntag
06.09. liegt **kein Report** vor, die Läufe sind also ausgefallen. Das Delta unten umfasst
deshalb **drei Tage** statt einem, und die Tageswerte für Samstag, Sonntag und Montag lassen
sich aus dieser einen Messung **nicht voneinander trennen**. Wo im Folgenden ein Montagswert
gebraucht wird, steht deshalb eine benannte Obergrenze, keine Messung.

## Kernbefund: ruhiges Wochenende, aber der Mechanismus ist unverändert

Über die drei Tage seit Freitag wuchs der Tenant um **+2.54 GB**, also **+0.85 GB/Tag** —
der niedrigste Schnitt seit dem Wochenende vom 29./30.08. Der Wochenschnitt fällt dadurch
von 2.91 auf **2.13 GB/Tag**, die Restlaufzeit steigt von 51 auf **69 Tage**.

Die Entlastung ist eine Wochenend-Entlastung, keine Trendwende. Denn die Zusammensetzung des
Zuwachses ist dieselbe wie an den fünf Werktagen davor: von den +2.54 GB entfallen
**+2.48 GB auf JANS.PROJEKTE**, und dort **+2.50 GB auf den Versionsverlauf**. Der
Substanz-Saldo dieser Site ist damit rechnerisch **null bis leicht negativ** (-0.02 GB, innerhalb
der Auflösung von ±5 MB je Site-Wert). Das ist der **sechste** Messpunkt in Folge mit diesem
Muster, diesmal sogar über ein Wochenende hinweg.

Die Ursache bleibt unbehoben und wurde heute erneut direkt gemessen, nicht fortgeschrieben:
JANS.PROJEKTE meldet `InheritVersionPolicyFromTenant: true`, `MajorVersionLimit: 0`,
`MajorWithMinorVersionsLimit: 0`, `EnableAutoExpirationVersionTrim: false`. Es begrenzt nach
wie vor nichts.

Der Versionsanteil von JANS.PROJEKTE steigt auf **21.5 %** (Freitag 21.2 %).

## Tenant-Summe

- Belegt: **908.06 GB** (929'856 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **86.15 %**, freier Puffer **145.94 GB**
- Delta zum Vorreport (04.09.2026, 20:10, 927'255 MB): **+2'601 MB in rund 72 Stunden**,
  also **+0.85 GB/Tag** über drei Tage
- Reihe der letzten sieben Tage: +7.93 (31.08. Mo), +3.02 (01.09. Di), +5.09 (02.09. Mi),
  +2.03 (03.09. Do), +2.23 (04.09. Fr), **+2.54 GB verteilt auf 05.–07.09. (Sa/So/Mo)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller 20 Sites aufaddiert
sowie `sum([].StorageUsage)`); beide ergeben **exakt 929'856 MB**, ohne Rundungsdifferenz.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Massgeblich bleibt der Wochenschnitt, nicht der Tageswert — heute umso mehr, weil der
Tageswert ein Dreitagesmittel ist.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 145.94 GB gerechnet:

- Beim Wochenschnitt der letzten sieben Tage (**2.13 GB/Tag**): rund **69 Tage**, also etwa
  **15. November 2026**. **Das ist der massgebliche Wert** — und er liegt erstmals seit dem
  02.09. wieder **über** der 60-Tage-Schwelle.
- Beim Werktagsschnitt (**2.98 GB/Tag**): rund **49 Tage**, also etwa 26. Oktober 2026.
  Dieser Wert ist eine **Obergrenze mit Vorbehalt**: er unterstellt, dass die vollen 2.54 GB
  der drei Tage auf den Montag entfallen und Samstag/Sonntag bei null lagen. Das ist an den
  beiden letzten Wochenenden so gemessen worden (+0.054 und -0.005 GB/Tag), heute aber nicht
  belegt. Fiel am Wochenende doch etwas an, ist der wahre Montagswert kleiner und der
  Werktagsschnitt entsprechend niedriger.

Die beiden Schnitte fallen heute erstmals auf verschiedene Seiten der 60-Tage-Schwelle. Bis
zur nächsten sauberen Tagesmessung ist der Wochenschnitt zu verwenden, weil er als einziger
ohne Zusatzannahme auskommt.

Warnmarken:

- **88-%-Marke (927.52 GB): 19.46 GB entfernt** — beim Wochenschnitt rund **9 Tage** (etwa
  16. September), beim Werktagsschnitt rund **7 Tage** (etwa 14. September).
- 90-%-Marke (948.60 GB): 40.54 GB entfernt, rund 19 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In fünfundzwanzig Tagen sind davon
**82.20 GB zurückgekehrt**, also **77.5 %** (Freitag 75 %).

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 630.24 GB | 135.59 GB | 21.5 % | 396 Obj / 1.28 GB | leer | 07.09.2026 14:51 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 07.09.2026 05:58 |
| /sites/AD | 51.90 GB | 3.37 GB | 6.5 % | 33 Obj / 0.01 GB | leer | 07.09.2026 06:48 |
| /sites/PL | 40.15 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 18:56 |
| /sites/kispi | 33.74 GB | 0.33 GB | 1.0 % | 197 Obj / 0.55 GB | leer | 07.09.2026 17:27 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.08 GB | 0.42 GB | 4.6 % | leer | leer | 07.09.2026 05:58 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.03 GB | 1.54 GB | 38.1 % | 3 Obj / 0.00 GB | leer | 03.09.2026 18:11 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 05.09.2026 17:04 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **146.30 GB** (16.1 % der Belegung), gegenüber 143.79 GB
am Freitag und 64.10 GB kurz nach dem Trim. **+2.51 GB in drei Tagen.**

Bewegung seit Freitag, mit derselben Einschränkung zur Auflösung (Site-Werte auf zwei
Stellen in GB, also ±5 MB):

- **JANS.PROJEKTE: +2.48 GB** — trägt rund **98 %** des Tenant-Deltas. Davon +2.50 GB
  Versionsverlauf, neue Substanz rechnerisch **-0.02 GB**, also null. Der Versionsanteil am
  Site-Zuwachs beträgt **100 %**.
- **kispi: +0.08 GB** — wieder Zuwachs mit echter Substanz: der Versionsverlauf blieb bei
  0.33 GB, der Papierkorb wuchs um 2 Objekte.
- Alle übrigen neun Sites bewegen sich innerhalb der Auflösungsgrenze und sind als
  unverändert zu lesen. SE steht den zweiundzwanzigsten Tag unverändert, PL den einundzwanzigsten.
- **Neu bei JANSDATENAUSTAUSCH:** erster neuer Zeitstempel seit dem 09.08. (jetzt 05.09.
  17:04), ohne messbare Belegungsänderung und ohne Papierkorb-Bewegung. Nur ein Kontakt,
  kein Speicherereignis.
- **SE und WE** haben neue Stempel (07.09. 05:58) bei **exakt unveränderter Belegung** —
  Nachtbetrieb, der Dateien anfasst, ohne Volumen zu erzeugen. Der Stempel allein ist kein
  Wachstumssignal.

`LastContentModifiedDate` zeigt bei fünf Sites mit Belegung den heutigen Tag
(JANS.PROJEKTE 14:51, kispi 17:27, AD 06:48, SE und WE je 05:58).

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 135.59 GB** Versionen auf 630.24 GB Site (**21.5 %**). Reisst die
  absolute 20-GB-Schwelle um fast das Siebenfache. Trägt **92.7 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 11.3 % (18.08.),
  13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.), 17.9 % (25./26.08.),
  18.4 % (27.08.), 18.7 % (28.08.), 18.6 % (29./30.08.), 19.7 % (31.08.), 20.1 % (01.09.),
  20.7 % (02.09.), 21.0 % (03.09.), 21.2 % (04.09.), **21.5 % heute**.
- IMMO: 1.54 GB auf 4.03 GB, **38.1 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 1.0 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Dreissigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 04.09., 07.09.
- Messweg: die Erhebung lief über einen **Haiku-Subagenten** (39 Aufrufe), wie es die
  Modell-Politik der Task vorsieht. Weil er einen **durchgehend gleichförmigen Befund**
  meldete («alle zweiten Stufen leer»), wurden gemäss Rule `auto-verbesserungen` 260729b
  anschliessend **zwei Sites im Hauptkontext selbst nachgemessen** (JANS.PROJEKTE und kispi,
  je zweite Stufe) — beide bestätigt mit 0.
- **Zu seinen Aggregaten, drittes Mal in Folge geprüft:** die Objektsumme (639) stimmt heute.
  Die Grössenangaben in seiner Zusammenfassung waren gerundete Einzelwerte ohne
  Gesamtsumme; die tenantweite Byte-Summe wurde wie an den Vortagen im Hauptkontext selbst
  gebildet: **2'025'596'280 Bytes = 1.89 GB**. Die Praxis bleibt: Einzelmessungen des
  Subagenten übernehmen, Aggregate nachrechnen.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **639 Objekte / 1.89 GB** tenantweit,
  gegenüber 618 / 1.86 GB am Freitag. JANS.PROJEKTE 396 / 1.28 GB (+16 Obj),
  kispi 197 / 0.55 GB (+2 Obj), AD 33 / 0.01 GB (unverändert),
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
`EnableAutoExpirationVersionTrim: false`, `InheritVersionPolicyFromTenant: true`.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, also heute seit **56 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 117 GB

135.59 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **117 GB** zu rechnen, was den
Puffer auf rund 263 GB und die Auslastung auf rund **75.0 %** senkt. Beim Wochenschnitt von
2.13 GB/Tag kauft das rund **55 Tage** zusätzliche Restlaufzeit (69 auf 124 Tage), beim
Werktagsschnitt rund 39 Tage (49 auf 88).

Die 117 GB sind eine **Hochrechnung**, keine Messung: sie skalieren die Schätzung des
Vorreports (115 GB bei 133.09 GB Versionen) mit dem seitherigen Versionswachstum. Belastbar
gemessen ist nur der Trim vom 13.08. selbst.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

**Zum Zeitpunkt.** Das Wochenendfenster, das der Freitagsreport empfohlen hatte, ist
ungenutzt verstrichen. Die 88-%-Marke liegt jetzt rund **9 Tage** entfernt (Wochenschnitt),
im ungünstigen Fall **7 Tage**. Der Puffer ist durch das ruhige Wochenende etwas grösser
geworden, der Handlungsbedarf dadurch aufgeschoben, nicht aufgehoben.
**Punkt 1 (Versionslimit) ist zeitunkritisch und sollte in jedem Fall vorher erledigt
werden** — sonst füllt sich der freigeräumte Platz im selben Muster wieder auf, wie es seit
dem 13.08. nachweislich geschieht (77.5 % Rückfluss in 25 Tagen).

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Unverändert offen, und heute an einem **sechsten** unabhängigen Datenpunkt bestätigt:
+2.50 GB Versionsverlauf bei rechnerisch null neuer Substanz auf derselben Site — diesmal
über ein Wochenende hinweg gemessen. Sechs aufeinanderfolgende Messpunkte mit einem
Versionsanteil von 89 bis 100 % am Site-Zuwachs deuten auf wenige sehr grosse, wiederholt
gespeicherte Dateien hin, nicht auf breites Arbeiten an vielen kleinen. Zu klären bleibt,
welche Bibliothek und welche Dateien das sind. Ergibt sich eine einzelne Bibliothek, kann
diese zusätzlich vom Versionieren ausgenommen werden — das wäre die zielgenauere Massnahme
als ein wiederkehrender tenantweiter Trim.

Bemerkenswert am heutigen Datenpunkt: das Verhältnis hält auch dann, wenn die absolute Menge
auf ein Drittel des Werktagsniveaus fällt. Wenn am Wochenende gearbeitet wurde, dann an
denselben wenigen Dateien; wenn nicht, kam der Zuwachs vollständig vom Montag. Beides stützt
die Lesart, dass hier eine kleine Zahl grosser Dateien wiederholt gespeichert wird.

Den Gegenbeleg liefert erneut kispi: dort wuchs die Belegung um 0.08 GB, der Versionsverlauf
um 0.00 GB. So sieht normale Projektarbeit in diesem Tenant aus.

### 4. Ausgefallene Läufe am 05./06.09. klären

Zwei Tagesläufe fehlen ersatzlos. Für die Speicheraufsicht ist das folgenlos geblieben, weil
`StorageUsage` kumulativ ist und die Summe nachträglich stimmt. Verloren ist die
**Auflösung**: der Montagswert lässt sich nicht mehr vom Wochenende trennen, und genau
dieser Wert entscheidet heute darüber, ob die Restlaufzeit bei 69 oder bei 49 Tagen liegt.
Fällt der Lauf erneut aus, sollte die Ursache geprüft werden (Scheduled-Task-Registry der
ausführenden Station, Wach-/Schlafzustand am Wochenende).

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 929'856 MB, dazu die
  Einzelwerte projiziert und aufaddiert → ebenfalls 929'856 MB.
- Site-Einzelwerte: `m365 spo site list` mit Projektion auf Url, StorageUsage, VersionSize,
  LastContentModifiedDate.
- Versions-Policy: `m365 spo site list --query "[?contains(Url,'JANS.PROJEKTE')]..."` →
  Inherit true, Major 0, MajorMinor 0, Trim false. Direkt gemessen, nicht aus dem
  Vorreport übernommen.
- Papierkorb: Haiku-Subagent, je Site zuerst zweite Stufe (`--secondary --query
  "length(@)"`), danach erste Stufe, Grössenabfrage nur bei `length(@) > 0`; 39 Aufrufe.
  Anschliessend zwei zweite Stufen im Hauptkontext gegengemessen (Rule 260729b), Byte-Summe
  im Hauptkontext gebildet.
- `LastContentModifiedDate` im Format `/Date(2026,8,7,...)/` ist der **7. September 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt (`^[0-9]{6}-hygiene\.md$`):
  `260904-hygiene.md`. Zeitraum 04.09. 20:10 bis 07.09. 20:10, also rund **72 Stunden** —
  die Läufe vom 05. und 06.09. sind ausgefallen.
- Heutiges Datum aus `date "+%y%m%d"` → 260907.
- Sende-Schwelle: Grund **f)** greift (Montag, Wochenpflicht). Grund a) greift nicht
  (86.15 %, Schwelle 88). Grund b) greift nicht (+0.85 GB/Tag, Schwelle 3). Grund c) greift
  nach dem massgeblichen Wochenschnitt **nicht mehr** (69 Tage, Schwelle 60), nach dem
  Werktagsschnitt mit Vorbehalt schon (49 Tage) — beides ist gemeldet. Keine
  Auto-Bereinigung, kein Blocker.

## Git-Stand (Backup)

Nativ per ssh auf der Synology gemessen (nie `git` über den SMB-Mount): der heutige Report
ist als **`91a91d5b8`** vom 07.09.2026 20:12 committet, die Divergenz zu `github/HEAD`
beträgt **0 voraus / 0 nicht integriert**. Das Backup läuft.

Hinweis zum Messweg, damit ihn der nächste Lauf nicht erneut sucht: das Repo liegt auf der
Synology unter **`/volume2/daten/jans-ai-hub`**, nicht unter `/volume1/...` — eine Abfrage
gegen `/volume1` scheitert mit «not a git repository» und darf nicht als Backup-Ausfall
gelesen werden. Ebenso führt das Repo weiterhin nur `github/HEAD`, keinen Tracking-Ref
`github/main`.
