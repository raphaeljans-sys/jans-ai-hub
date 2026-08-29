# Tenant-Speicher-Hygiene — Report 29.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:12 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Samstag, keine Wochenpflicht

## Kernbefund: der Wachstumsstillstand des Wochenendes ist eingetreten

Der Tenant wächst heute um **55 MB**, also **0.054 GB**. Das ist der kleinste Tageswert
seit dem 26.08. und liegt in derselben Grössenordnung wie das letzte Wochenende
(22.08. +0.05 GB, 23.08. -0.005 GB). Das Muster der Reihe bestätigt sich damit ein
zweites Mal: **die Site ruht am Wochenende**, der Verbrauch entsteht an Werktagen.

Der Versionsverlauf steht heute tenantweit unverändert bei **124.08 GB**, auf
JANS.PROJEKTE bei **113.38 GB**. Beide Werte bewegen sich nicht messbar. Genau das macht
den heutigen Befund operativ bedeutsam, und zwar nicht wegen der Zahl, sondern wegen des
Zeitpunkts: der Vorreport hat das Wochenende 29./30.08. als **das beste Trim-Fenster der
ganzen Reihe** benannt, und die heutige Messung belegt, dass die Voraussetzung dafür
tatsächlich vorliegt. Das Fenster ist offen und schliesst am Montagmorgen wieder.

Die Ursache bleibt unbehoben und wurde heute erneut direkt gemessen, nicht aus dem
Vorreport fortgeschrieben: JANS.PROJEKTE meldet `InheritVersionPolicyFromTenant: true`,
`MajorVersionLimit: 0`, `MajorWithMinorVersionsLimit: 0`, `EnableAutoExpirationVersionTrim: false`.
Es begrenzt nach wie vor nichts.

## Tenant-Summe

- Belegt: **885.23 GB** (906'475 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **83.99 %**, freier Puffer **168.77 GB**
- Delta zum Vorreport (28.08.2026, 20:10, 906'420 MB): **+55 MB in 24.0 Stunden**,
  also **+0.054 GB/Tag**
- Reihe der letzten sieben Tage: -0.005 (23.08. So), +13.90 (24.08. Mo), +2.08 (25.08. Di),
  +0.14 (26.08. Mi), +4.35 (27.08. Do), +2.16 (28.08. Fr), **+0.054 GB/Tag (29.08. Sa)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller Sites aufaddiert sowie
`sum([].StorageUsage)`); beide ergeben **exakt 906'475 MB**, ohne Rundungsdifferenz. Der
Tenant-Delta ist damit auf das MB genau belegt.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Massgeblich bleibt der Wochenschnitt, nicht der Tageswert. Beim heutigen Wert kommt hinzu,
dass ein Tageswert nahe null nichts über die Zukunft aussagt und **nicht** hochgerechnet
werden darf: eine Restlaufzeit auf 0.054 GB/Tag wären über 3'000 Tage, was offensichtlich
sinnlos ist.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 168.77 GB gerechnet:

- Beim Wochenschnitt der letzten sieben Tage (3.24 GB/Tag): rund **52 Tage**, also etwa
  **20. Oktober 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (4.53 GB/Tag): rund **37 Tage**, also
  etwa 5. Oktober 2026. Das Werktagsfenster ist heute unverändert, weil Samstag kein
  Werktag ist und die Reihe 24.08. bis 28.08. weiterhin trägt.
- Der heutige Tageswert wird bewusst nicht hochgerechnet (siehe oben).

Die Restlaufzeit liegt den **zwölften Tag in Folge** unter der 60-Tage-Schwelle. Wochen-
und Werktagsschnitt sind gegenüber gestern unverändert (3.24 bzw. 4.53 GB/Tag), weil der
heutige Wert praktisch null ist und der ausgefallene Tag am anderen Ende der Reihe
ebenfalls nahe null lag.

Warnmarken:

- **88-%-Marke (927.5 GB): 42.29 GB entfernt** — beim Wochenschnitt rund **13 Tage**
  (etwa 11. September), beim Werktagsschnitt rund **9 Tage** (etwa 7. September).
- 90-%-Marke (948.6 GB): 63.37 GB entfernt, rund 20 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In sechzehn Tagen, davon zehn Werktagen, sind
davon **60.03 GB zurückgekehrt**, also 57 %.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 607.95 GB | 113.38 GB | 18.6 % | 364 Obj / 1.25 GB | leer | 28.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 23.08.2026 |
| /sites/AD | 51.91 GB | 3.37 GB | 6.5 % | 29 Obj / 0.01 GB | leer | 29.08.2026 |
| /sites/PL | 40.17 GB | 3.50 GB | 8.7 % | leer | leer | 23.08.2026 |
| /sites/kispi | 33.16 GB | 0.33 GB | 1.0 % | 173 Obj / 0.46 GB | leer | 28.08.2026 |
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

Bewegung heute, mit einer Einschränkung zur Auflösung: der Vorreport hält die Site-Werte in
GB auf zwei Stellen fest, also auf rund ±5 MB genau. Nur **kispi** überschreitet diese
Auflösung mit **+65 MB** (33.10 auf 33.16 GB). Alle übrigen zehn Sites liegen innerhalb der
Rundungsgrenze und sind damit als unverändert zu lesen; da der Tenant-Delta exakt +55 MB
beträgt, steht kispi allein für das gesamte Tageswachstum, und die Summe der übrigen Sites
ist netto leicht rückläufig. SE steht den dreizehnten, PL den zwölften Tag unverändert.

`LastContentModifiedDate` von AD steht heute auf dem 29.08. (06:29), was mit dem
Nachtbetrieb der Hub-Ablage zusammenpasst; die Belegung der Site ändert sich dabei nicht.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 113.38 GB** Versionen auf 607.95 GB Site (**18.6 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Fünffache. Trägt **91.4 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  17.9 % (25./26.08.), 18.4 % (27.08.), 18.7 % (28.08.), **18.6 % heute**.
  Der Anteil stagniert erstmals seit dem Trim; die Bewegung von 18.7 auf 18.6 % ist
  Rundung, keine Trendumkehr. Sie bestätigt lediglich, dass am Wochenende nichts entsteht.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 1.0 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Einundzwanzigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 29.08.
- Messweg wie an den neun Vortagen: die gesamte Papierkorb-Erhebung lief **im
  Hauptkontext**, elf Einzelabfragen der zweiten Stufe und elf der ersten, dazu fünf
  Grössenabfragen für die nicht leeren ersten Stufen. Kein Subagent beteiligt, jede Zahl
  ist ein eigener Aufruf. Grund bleibt der Subagenten-Befund vom 20.08. (gemeldete Prüfung
  von elf Sites bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **578 Objekte / 1.77 GB** tenantweit,
  gegenüber 575 / 1.77 GB gestern. JANS.PROJEKTE 364 / 1.25 GB (unverändert), kispi 173 /
  0.46 GB (+3 Obj), AD 29 / 0.01 GB, JANSDATENAUSTAUSCH 10 / 0.05 GB, IMMO 2 / 0.00 GB.
  Die drei neuen Objekte auf kispi passen zum dortigen Belegungszuwachs.

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

Seit dem 13.07.2026 offen, also heute seit **47 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 97 GB — das Fenster ist heute offen

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

**Warum heute und nicht später:** der Trim läuft als Job über die Site, während an ihr
gearbeitet wird. An Werktagen entstehen parallel neue Versionen und fressen einen Teil der
Wirkung wieder auf. Die heutige Messung belegt, dass die Site jetzt ruht (+0.054 GB, davon
nichts auf JANS.PROJEKTE), wie schon am Wochenende 22./23.08. (zusammen +0.045 GB). Nach
Montag ist das nächste vergleichbare Fenster erst wieder in sieben Tagen, und bis dahin ist
die 88-%-Marke beim Werktagsschnitt nur noch rund neun Tage entfernt.

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Unverändert offen. Der heutige Lauf trägt dazu nichts bei, weil auf der Site nichts
entstanden ist; die Datengrundlage bleibt die des Vorreports (1.97 GB neuer
Versionsverlauf bei rund 60 MB neuer Substanz am 28.08.). Zu klären bleibt, welche
Bibliothek und welche Dateien diese Versionen erzeugen. Ergibt sich eine einzelne
Bibliothek, kann diese zusätzlich vom Versionieren ausgenommen werden.

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 906'475 MB, dazu die
  Einzelwerte projiziert und aufaddiert → ebenfalls 906'475 MB.
- Site-Einzelwerte: `m365 spo site list` mit Projektion auf Url, StorageUsage, VersionSize,
  LastContentModifiedDate. Der ungefilterte JSON-Dump ist mit rund 93'000 Zeichen zu gross
  für eine Rückgabe und wurde deshalb von Beginn an projiziert abgefragt.
- Versions-Policy: `m365 spo site list --query "[?contains(Url,'JANS.PROJEKTE')]..."` →
  Inherit true, Major 0, MajorMinor 0, Trim false. Direkt gemessen, nicht aus dem
  Vorreport übernommen.
- Papierkorb: je Site zuerst zweite Stufe (`--secondary --query "length(@)"`), danach
  erste Stufe, Grössenabfrage nur bei `length(@) > 0`.
- `LastContentModifiedDate` im Format `/Date(2026,7,29,...)/` ist der **29. August 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt (`^[0-9]{6}-hygiene\.md$`):
  `260828-hygiene.md`. Zeitraum 28.08. 20:10 bis 29.08. 20:12, also 24.0 Stunden.
- Sende-Schwelle: Grund c) greift (Restlaufzeit 52 Tage beim Wochenschnitt, unter 60).
  Auslastung 83.99 % (unter 88 %), Delta 0.054 GB/Tag (unter 3), keine Auto-Bereinigung,
  kein Blocker, kein Montag.
