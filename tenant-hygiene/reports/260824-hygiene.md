# Tenant-Speicher-Hygiene — Report 24.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:08 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Montag, damit Wochenpflicht

## Kernbefund: der Montag holt das ruhige Wochenende in einem Tag nach, und die einzelne Version ist achtmal so gross wie bisher

Nach zwei stillstehenden Wochenendtagen wächst der Tenant heute um **13.90 GB**, den
höchsten Wert der laufenden Woche und auf dem Niveau des 19./20.08. (13.29 und 13.93 GB).
Die am Sonntag ausgesprochene Erwartung, «am Montag ist mit dem Werktagsniveau zu rechnen»,
ist damit nicht nur eingetroffen, sondern übertroffen.

Der eigentliche neue Befund steckt aber nicht in der Summe, sondern in ihrer Zerlegung:

- JANS.PROJEKTE Versionsverlauf: 92.857 → **105.507 GB** (+12.65 GB)
- Versionsanzahl derselben Site: 3'777 → **3'804**, also **+27 Versionen**
- Daraus folgt eine Grösse von rund **480 MB je neu entstandener Version**

Bisher lag dieser Wert bei rund 58 MB je Stück, gegenüber einem Site-Schnitt von 24.6 MB.
**Er hat sich heute verachtfacht.** Es sind nicht mehr «wenige, sehr grosse» Dateien, es
sind sehr wenige, ausserordentlich grosse: 27 Speichervorgänge kosten 12.65 GB. Das ist
die Signatur von wiederholtem Speichern einer Handvoll Dateien in der Grössenordnung
halber Gigabytes — Punktwolken, Renderings, CAD-Archive oder Videomaterial.

Für Empfehlung 3 (Verursacher identifizieren) ist das die bislang schärfste Spur: gesucht
wird nicht eine Bibliothek mit vielen Nutzern, sondern eine Handvoll einzelner Dateien.

Der zweite, kleinere Teil des Wachstums ist unauffällig und erklärt sich von selbst:
**kispi wächst um 1.23 GB** bei +9 Versionen und praktisch unverändertem Versionsvolumen
(0.190 → 0.198 GB). Das sind echte neue Dateien aus der laufenden Projektarbeit, kein
Bloat. Alle übrigen Sites liegen auf das Megabyte auf dem Vortageswert.

Zusammen: von 13.90 GB Wachstum sind **12.65 GB (91.0 %) Versionsverlauf einer einzigen
Site** und 1.23 GB regulärer Projektzuwachs. Der seit einer Woche gemessene Zusammenhang
gilt unverändert.

Die Konfiguration ist dieselbe wie am ersten Tag: tenantweit und auf allen elf belegten
Sites `InheritVersionPolicyFromTenant: true`, `MajorVersionLimit: 0`,
`EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor nichts.

## Tenant-Summe

- Belegt: **876.44 GB** (897'476 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **83.15 %**, freier Puffer **177.56 GB**
- Delta zum Vorreport (23.08.2026, 20:10, 883'244 MB): **+14'232 MB in 23.97 Stunden**,
  also **+13.90 GB/Tag**
- Reihe der letzten acht Tage: +3.27 (17.08. Mo), +5.02 (18.08. Di), +13.29 (19.08. Mi),
  +13.93 (20.08. Do), +4.01 (21.08. Fr), +0.05 (22.08. Sa), -0.005 (23.08. So),
  **+13.90 GB/Tag (24.08. Mo)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte der elf belegten Sites
aufaddiert plus 9 MB Kleinstsites, sowie `sum([].StorageUsage)`: 897'476 MB), beide decken
sich.

Einschränkung, wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis 24 h). Bei
einem Tageswert dieser Grössenordnung fällt das nicht ins Gewicht — anders als am
Wochenende, wo die Unsicherheit grösser war als der Messwert.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 177.56 GB gerechnet:

- Beim heute gemessenen Tempo (13.90 GB/Tag): rund **13 Tage**, also etwa
  **6. September 2026**.
- Beim Wochenschnitt der letzten sieben Tage (7.17 GB/Tag): rund **25 Tage**, also etwa
  **18. September 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten sechs Werktage (8.90 GB/Tag): rund **20 Tage**, also
  etwa **13. September 2026**.

Die Restlaufzeit liegt den siebten Tag in Folge unter der 60-Tage-Schwelle. Sie hat sich
gegenüber gestern um **neun Tage verkürzt** (34 → 25 Tage). Die beiden Nullwerte des
Wochenendes sind damit innerhalb eines einzigen Arbeitstages aufgezehrt.

Näher liegen weiterhin die Warnmarken:

- **88-%-Marke (927.5 GB): 51.08 GB entfernt** — beim Wochenschnitt rund **7 Tage**
  (etwa 31. August), beim heutigen Tempo rund **4 Tage** (etwa 28. August).
- 90-%-Marke (948.6 GB): 72.16 GB entfernt, 10 Tage beim Wochenschnitt, 5 Tage beim
  heutigen Tempo.

Der Trim vom 13.08. hat 106 GB freigeräumt. In elf Tagen, davon sechs Werktage, sind davon
**53.26 GB zurückgekehrt — die Hälfte**.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Ver.-Anzahl | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 599.73 GB | 105.51 GB | 3'804 | 341 Obj / 1.24 GB | leer | 24.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 290 | leer | leer | 23.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 4'694 | 29 Obj / 0.01 GB | leer | 24.08.2026 |
| /sites/PL | 40.19 GB | 3.50 GB | 245 | leer | leer | 23.08.2026 |
| /sites/kispi | 32.58 GB | 0.20 GB | 160 | 116 Obj / 0.24 GB | leer | 24.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | 42 | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 402 | leer | leer | 22.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | 13 | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 264 | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 188 | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 18 | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **116.08 GB** (13.2 % der Belegung), gegenüber 103.42 GB
an den drei Vortagen, 100.45 GB am 20.08., 86.83 GB am 19.08. und 64.10 GB kurz nach dem
Trim. **Der Stillstand der beiden Wochenendtage ist beendet.**

Bewegung heute: nur zwei Sites verändern ihre Belegung überhaupt — JANS.PROJEKTE +12.67 GB
und kispi +1.23 GB. SE steht damit den achten, PL den siebten Tag unverändert. AD trägt den
24.08. als letztes Aenderungsdatum, ohne dass sich Belegung oder Versionsanzahl bewegen.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 105.51 GB** Versionen auf 599.73 GB Site (**17.6 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Fünffache. Trägt **90.9 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), **17.6 % heute**.
  Der Stillstand war eine Pause, keine Umkehr.
- **Neu und der wichtigste Einzelbefund des Laufs:** rund **480 MB je neu entstandener
  Version** (12.65 GB auf 27 Versionen), gegenüber bisher rund 58 MB. Der Verursacher ist
  damit auf sehr wenige, sehr grosse, wiederholt überschriebene Dateien eingegrenzt. Da an
  den beiden arbeitsfreien Tagen keine einzige Version entstand, bleibt der Zusammenhang
  mit aktiver Arbeitstätigkeit belegt; ein Hintergrund- oder Dauer-Sync-Prozess scheidet
  weiterhin aus.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 0.6 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Sechzehnter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 24.08.
- Messweg wie an den vier Vortagen: die gesamte Papierkorb-Erhebung lief **im
  Hauptkontext**, elf Einzelabfragen der zweiten Stufe und elf der ersten, dazu fünf
  Grössenabfragen für die nicht leeren ersten Stufen. Kein Subagent beteiligt, jede Zahl
  ist ein eigener Aufruf. Grund bleibt der Subagenten-Befund vom 20.08. (gemeldete Prüfung
  von elf Sites bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **498 Objekte / 1.54 GB** tenantweit,
  gegenüber 481 / 1.50 GB gestern. JANS.PROJEKTE 341 / 1.24 GB (+8 Obj), kispi 116 /
  0.24 GB (+9 Obj), AD 29 / 0.01 GB, JANSDATENAUSTAUSCH 10 / 0.05 GB, IMMO 2 / 0.00 GB.
  Die 17 neuen Objekte stammen aus derselben Arbeitstätigkeit wie das Wachstum.

### Tote/leere Sites (Hinweis, Phase 2)

Unverändert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.6 Monate), Test
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

Der heutige Tag zeigt die Konsequenz in Reinform: **ein einzelner Arbeitstag hat die
Restlaufzeit um neun Tage verkürzt.** Beim Wochenschnitt von 7.17 GB/Tag kauft ein Trim von
rund 89 GB gut **12 Tage** zusätzliche Restlaufzeit, beim heutigen Tempo sechs. Danach ist
der Zustand derselbe wie heute. Ein Trim ohne vorherige Limit-Umstellung bleibt eine
Verzögerung, keine Lösung.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, also heute seit **42 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 89 GB, dringend — nach Schritt 1

105.51 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **89 GB** zu rechnen, was den
Puffer auf gut 266 GB und die Auslastung auf rund 74.7 % senkt.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

Das günstige Wochenendfenster ist verstrichen. Der Trim läuft als Job über die Site,
während an ihr gearbeitet wird; das ist zulässig, kostet aber Wirkung, weil parallel neue
Versionen entstehen. **Bestes verbleibendes Fenster ist der Abend oder das kommende
Wochenende.** Bei 7 Tagen bis zur 88-%-Marke sollte er nicht bis dahin warten.

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Heute erstmals scharf eingegrenzt: rund 480 MB je Version, 27 Versionen an einem Tag. Es
geht um eine Handvoll einzelner Dateien, nicht um eine breite Nutzungsgewohnheit. Zu prüfen
ist, welche Bibliothek und welche Dateien diese Versionen erzeugen — bei dieser
Grössenordnung sollte das über die grössten Dateien der Site auffindbar sein. Ergibt sich
eine einzelne Bibliothek, kann diese zusätzlich vom Versionieren ausgenommen werden.

Das ist eine Diagnose, keine Bereinigung, und ersetzt die Limit-Umstellung nicht.

### 4. Tote Sites (nachrangig, rund 0 GB)

WBHafenarealSZ und die drei Kleinstsites belegen zusammen praktisch nichts. Löschen lohnt
sich nur der Ordnung halber, nicht für den Speicher.

## Sende-Schwelle

Gemeldet wird, ausgelöst durch **drei Gründe gleichzeitig**:

- **b) Wachstumssprung:** +13.90 GB/Tag, Schwelle 3 GB/Tag — um mehr als das Vierfache
  gerissen, höchster Tageswert der Woche.
- **c) Restlaufzeit unter 60 Tagen:** 25 Tage beim Wochenschnitt, 13 Tage beim heutigen
  Tempo.
- **f) Wochenpflicht:** heute ist Montag.

Nicht gegriffen haben: a) Auslastung 83.15 % (Schwelle 88 %, aber nur noch rund 7 Tage
entfernt), d) keine Auto-Bereinigung, e) kein Blocker — Connector, NAS und alle 20 Sites
waren abfragbar.
