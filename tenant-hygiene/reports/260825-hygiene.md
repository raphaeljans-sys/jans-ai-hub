# Tenant-Speicher-Hygiene — Report 25.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:08 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Dienstag, keine Wochenpflicht

## Kernbefund: ruhiger Tag, aber der Anteil bleibt derselbe — 95 % des Zuwachses ist wieder Versionsverlauf

Nach dem Montags-Ausschlag von 13.90 GB wächst der Tenant heute nur um **2.08 GB**, den
zweitniedrigsten Werktagswert der laufenden Messreihe. Der gestern beschriebene Verdacht
auf eine Handvoll sehr grosser, wiederholt überschriebener Dateien lässt sich damit heute
weder bestätigen noch entkräften: die Tagesmenge ist zu klein, um daraus eine Aussage über
die Versionsgrösse abzuleiten.

Was unverändert gilt, ist der Anteil. Von 2.08 GB Wachstum entfallen:

- JANS.PROJEKTE Versionsverlauf: 105.507 → **107.488 GB**, also **+1.98 GB**
- Belegungszuwachs derselben Site: **+1.98 GB** (614'123 → 616'155 MB)

Das Wachstum der Site ist damit **vollständig** Versionsverlauf, nicht neue Substanz. Auf
den Tenant gerechnet sind es **95.2 %** des Zuwachses. Der zweite, kleine Rest ist
kispi mit **+98 MB** aus laufender Projektarbeit, davon 34 MB Versionen. Alle übrigen
neun belegten Sites bewegen sich um höchstens fünf Megabyte, was innerhalb der
Messverzögerung liegt und keine Aussage trägt.

Der Befund der letzten neun Tage steht unverändert: **es wächst der Versionsverlauf einer
einzigen Site, nicht der Datenbestand des Büros.** Ein ruhiger Tag ändert daran nichts, er
verschiebt nur den Zeitpunkt.

Die Konfiguration ist dieselbe wie am ersten Tag: tenantweit und auf allen elf belegten
Sites `InheritVersionPolicyFromTenant: true`, `MajorVersionLimit: 0`,
`EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor nichts.

## Tenant-Summe

- Belegt: **878.52 GB** (899'608 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **83.35 %**, freier Puffer **175.48 GB**
- Delta zum Vorreport (24.08.2026, 20:08, 897'476 MB): **+2'132 MB in 24.0 Stunden**,
  also **+2.08 GB/Tag**
- Reihe der letzten sieben Tage: +13.29 (19.08. Mi), +13.93 (20.08. Do), +4.01 (21.08. Fr),
  +0.05 (22.08. Sa), -0.005 (23.08. So), +13.90 (24.08. Mo), **+2.08 GB/Tag (25.08. Di)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte der elf belegten Sites
aufaddiert plus 9 MB Kleinstsites, sowie `sum([].StorageUsage)`: 899'608 MB), beide decken
sich.

Einschränkung, wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis 24 h). Bei
einem Tageswert dieser Grössenordnung ist das **relevant** — die Unsicherheit liegt in
derselben Grössenordnung wie der Messwert selbst. Der heutige Wert ist deshalb als
Einzelwert schwach; massgeblich bleibt der Wochenschnitt.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 175.48 GB gerechnet:

- Beim heute gemessenen Tempo (2.08 GB/Tag): rund **84 Tage**. Dieser Wert ist nicht
  belastbar, siehe Messverzögerung oben.
- Beim Wochenschnitt der letzten sieben Tage (6.75 GB/Tag): rund **26 Tage**, also etwa
  **20. September 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (9.44 GB/Tag): rund **19 Tage**, also
  etwa **13. September 2026**.

Die Restlaufzeit liegt den achten Tag in Folge unter der 60-Tage-Schwelle. Gegenüber
gestern hat sie sich um einen Tag verlängert (25 → 26 Tage) — der ruhige Tag hat den
Wochenschnitt leicht gesenkt, mehr nicht.

Warnmarken:

- **88-%-Marke (927.5 GB): 48.98 GB entfernt** — beim Wochenschnitt rund **7 Tage**
  (etwa 1. September), beim Werktagsschnitt rund **5 Tage**.
- 90-%-Marke (948.6 GB): 70.08 GB entfernt, rund 10 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In zwölf Tagen, davon sieben Werktage, sind
davon **55.34 GB zurückgekehrt**, also gut die Hälfte.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 601.71 GB | 107.49 GB | 17.9 % | 343 Obj / 1.24 GB | leer | 25.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 23.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 6.5 % | 29 Obj / 0.01 GB | leer | 25.08.2026 |
| /sites/PL | 40.19 GB | 3.50 GB | 8.7 % | leer | leer | 23.08.2026 |
| /sites/kispi | 32.68 GB | 0.23 GB | 0.7 % | 116 Obj / 0.24 GB | leer | 25.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 4.6 % | leer | leer | 22.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.54 GB | 38.2 % | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **118.09 GB** (13.4 % der Belegung), gegenüber 116.08 GB
gestern, 103.42 GB am 21.–23.08. und 64.10 GB kurz nach dem Trim.

Bewegung heute: nur zwei Sites verändern ihre Belegung nennenswert — JANS.PROJEKTE
+1.98 GB und kispi +0.10 GB. SE steht damit den neunten, PL den achten Tag unverändert.
AD trägt den 25.08. als letztes Aenderungsdatum, bewegt aber weder Belegung noch
Versionsvolumen.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 107.49 GB** Versionen auf 601.71 GB Site (**17.9 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Fünffache. Trägt **91.0 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  **17.9 % heute**. Der Anteil steigt auch an einem ruhigen Tag, weil das Wachstum der
  Site praktisch vollständig aus Versionen besteht.
- Zum gestrigen Befund von rund 480 MB je neu entstandener Version: heute nicht
  überprüfbar. Bei einem Tageszuwachs von 1.98 GB und der bekannten Messverzögerung
  wäre jede abgeleitete Stückgrösse Spekulation. Der Befund bleibt als Spur für
  Empfehlung 3 stehen, ohne heute bestätigt zu sein.
- IMMO: 1.54 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 0.7 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Siebzehnter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 25.08.
- Messweg wie an den fünf Vortagen: die gesamte Papierkorb-Erhebung lief **im
  Hauptkontext**, elf Einzelabfragen der zweiten Stufe und elf der ersten, dazu vier
  Grössenabfragen für die nicht leeren ersten Stufen. Kein Subagent beteiligt, jede Zahl
  ist ein eigener Aufruf. Grund bleibt der Subagenten-Befund vom 20.08. (gemeldete Prüfung
  von elf Sites bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **500 Objekte / 1.54 GB** tenantweit,
  gegenüber 498 / 1.54 GB gestern. JANS.PROJEKTE 343 / 1.24 GB (+2 Obj), kispi 116 /
  0.24 GB (unverändert), AD 29 / 0.01 GB, JANSDATENAUSTAUSCH 10 / 0.05 GB, IMMO 2 /
  0.00 GB. Der ruhige Tag zeigt sich auch hier: zwei neue Objekte gegenüber 17 gestern.

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

Der heutige Tag ist das sauberste Argument dafür, das bisher gemessen wurde: **an einem
Tag mit fast keiner neuen Substanz wuchs die grösste Site trotzdem um zwei Gigabyte, und
zwar zu hundert Prozent aus Versionen.** Ein Trim ohne vorherige Limit-Umstellung bleibt
eine Verzögerung, keine Lösung.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, also heute seit **43 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 91 GB, dringend — nach Schritt 1

107.49 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **91 GB** zu rechnen, was den
Puffer auf gut 266 GB und die Auslastung auf rund 74.7 % senkt. Beim Wochenschnitt von
6.75 GB/Tag kauft das rund **13 Tage** zusätzliche Restlaufzeit.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

Der Trim läuft als Job über die Site, während an ihr gearbeitet wird; das ist zulässig,
kostet aber Wirkung, weil parallel neue Versionen entstehen. **Bestes Fenster ist der
Abend oder das kommende Wochenende (29./30.08.).** Bei rund 7 Tagen bis zur 88-%-Marke
liegt das Wochenende noch knapp davor, aber ohne Reserve.

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Gestern erstmals eingegrenzt (rund 480 MB je Version), heute mangels Datenmenge nicht
nachprüfbar. Zu klären bleibt, welche Bibliothek und welche Dateien diese Versionen
erzeugen. Ergibt sich eine einzelne Bibliothek, kann diese zusätzlich vom Versionieren
ausgenommen werden.

Das ist eine Diagnose, keine Bereinigung, und ersetzt die Limit-Umstellung nicht.

### 4. Tote Sites (nachrangig, rund 0 GB)

WBHafenarealSZ und die drei Kleinstsites belegen zusammen praktisch nichts. Löschen lohnt
sich nur der Ordnung halber, nicht für den Speicher.

## Sende-Schwelle

Gemeldet wird, ausgelöst durch **einen Grund**:

- **c) Restlaufzeit unter 60 Tagen:** 26 Tage beim Wochenschnitt, 19 Tage beim
  Werktagsschnitt.

Nicht gegriffen haben: a) Auslastung 83.35 % (Schwelle 88 %, rund 7 Tage entfernt),
b) Wachstum 2.08 GB/Tag (Schwelle 3 GB/Tag), d) keine Auto-Bereinigung, e) kein Blocker —
Connector, NAS und alle 20 Sites waren abfragbar, f) heute ist Dienstag.
