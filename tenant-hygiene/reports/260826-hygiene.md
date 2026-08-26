# Tenant-Speicher-Hygiene — Report 26.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:08 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Mittwoch, keine Wochenpflicht

## Kernbefund: Stillstand — erster Werktag der Messreihe ohne Versionswachstum auf JANS.PROJEKTE

Der Tenant wächst heute um **145 MB**, das ist praktisch kein Wachstum und der mit Abstand
niedrigste Werktagswert der laufenden Reihe (der bisherige Tiefstwert lag bei 2.08 GB).
Bemerkenswerter als die Summe ist ihre Zusammensetzung: der Versionsverlauf von
JANS.PROJEKTE steht bei **107.49 GB** und damit auf **zwei Megabyte genau auf dem Wert von
gestern**. Zum ersten Mal seit Beginn der täglichen Messung am 13.08. wächst er an einem
Werktag nicht.

Damit bricht das Muster der letzten neun Tage — an denen 91 bis 100 % des Tageszuwachses
Versionsverlauf waren — heute erstmals. Von den 145 MB entfallen rund **42 MB** auf
Versionen (fast ausschliesslich kispi mit +40 MB), der Rest ist neue Substanz.

**Dieser Befund trägt allerdings kaum Gewicht.** Bei einer Tagesmenge von 145 MB liegt der
Messwert deutlich unter der bekannten Unsicherheit von `StorageUsage` (Verzögerung bis
24 h). Ein einzelner Stillstandstag kann ebenso gut eine verzögerte Verbuchung sein wie
ein tatsächlich arbeitsfreier Tag auf der Projekt-Site. Erst wenn sich der Wert morgen
bestätigt, ist er eine Aussage; heute ist er eine Beobachtung.

Die Ursache ist unverändert nicht behoben: tenantweit und auf allen elf belegten Sites
gilt weiterhin `InheritVersionPolicyFromTenant: true`, `MajorVersionLimit: 0`,
`EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor nichts — ein ruhiger
Tag ändert daran nichts, er verschiebt nur den Zeitpunkt.

## Tenant-Summe

- Belegt: **878.67 GB** (899'753 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **83.36 %**, freier Puffer **175.33 GB**
- Delta zum Vorreport (25.08.2026, 20:08, 899'608 MB): **+145 MB in 24.0 Stunden**,
  also **+0.14 GB/Tag**
- Reihe der letzten sieben Tage: +13.93 (20.08. Do), +4.01 (21.08. Fr), +0.05 (22.08. Sa),
  -0.005 (23.08. So), +13.90 (24.08. Mo), +2.08 (25.08. Di), **+0.14 GB/Tag (26.08. Mi)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte der elf belegten Sites
aufaddiert plus 9 MB Kleinstsites, sowie `sum([].StorageUsage)`: 899'753 MB), beide decken
sich.

Einschränkung, wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis 24 h). Beim
heutigen Tageswert ist das **entscheidend** — die Unsicherheit ist um ein Vielfaches
grösser als der Messwert. Der heutige Wert taugt als Einzelwert nicht; massgeblich bleibt
der Wochenschnitt.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 175.33 GB gerechnet:

- Beim heute gemessenen Tempo (0.14 GB/Tag): rechnerisch über drei Jahre. Der Wert ist
  wertlos, siehe Messverzögerung oben, und wird nur der Vollständigkeit halber genannt.
- Beim Wochenschnitt der letzten sieben Tage (4.87 GB/Tag): rund **36 Tage**, also etwa
  **1. Oktober 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (6.81 GB/Tag): rund **26 Tage**, also
  etwa **21. September 2026**.

Die Restlaufzeit liegt den neunten Tag in Folge unter der 60-Tage-Schwelle. Gegenüber
gestern hat sie sich um zehn Tage verlängert (26 → 36 Tage), weil zwei ruhige Tage
hintereinander den Wochenschnitt von 6.75 auf 4.87 GB/Tag gedrückt haben. **Das ist eine
Entspannung des Mittelwerts, keine Entwarnung** — die beiden grossen Tage vom 20. und
24.08. (je rund 14 GB) stehen weiterhin in der Reihe und werden sie beim nächsten
Arbeitstag dieser Art wieder heben.

Warnmarken:

- **88-%-Marke (927.5 GB): 48.85 GB entfernt** — beim Wochenschnitt rund **10 Tage**
  (etwa 5. September), beim Werktagsschnitt rund **7 Tage**.
- 90-%-Marke (948.6 GB): 69.93 GB entfernt, rund 14 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In dreizehn Tagen, davon acht Werktagen, sind
davon **55.49 GB zurückgekehrt**, also gut die Hälfte.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 601.78 GB | 107.49 GB | 17.9 % | 343 Obj / 1.24 GB | leer | 26.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 23.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 6.5 % | 29 Obj / 0.01 GB | leer | 26.08.2026 |
| /sites/PL | 40.17 GB | 3.50 GB | 8.7 % | leer | leer | 23.08.2026 |
| /sites/kispi | 32.77 GB | 0.27 GB | 0.8 % | 128 Obj / 0.27 GB | leer | 26.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 4.6 % | leer | leer | 22.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 38.2 % | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **118.13 GB** (13.4 % der Belegung), gegenüber 118.09 GB
gestern, 116.08 GB am 24.08. und 64.10 GB kurz nach dem Trim. Der Zuwachs von 40 MB an
einem Tag ist der kleinste der Messreihe.

Bewegung heute: JANS.PROJEKTE +63 MB Belegung bei **+2 MB Versionen**, kispi +75 MB
Belegung bei +40 MB Versionen. Alle übrigen neun Sites bewegen sich um höchstens 20 MB,
was innerhalb der Messverzögerung liegt. SE steht den zehnten, PL den neunten Tag
unverändert.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 107.49 GB** Versionen auf 601.78 GB Site (**17.9 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Fünffache. Trägt **91.0 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  17.9 % (25.08.), **17.9 % heute**. Erster Tag der Reihe ohne Anstieg des Anteils.
- Der Befund vom 24.08. (rund 480 MB je neu entstandener Version) bleibt an beiden
  Folgetagen unüberprüfbar: gestern war die Datenmenge zu klein, heute gibt es gar keine
  neue Version. Er steht als Spur für Empfehlung 3, unbestätigt.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 0.8 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Achtzehnter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 26.08.
- Messweg wie an den sechs Vortagen: die gesamte Papierkorb-Erhebung lief **im
  Hauptkontext**, elf Einzelabfragen der zweiten Stufe und elf der ersten, dazu fünf
  Grössenabfragen für die nicht leeren ersten Stufen. Kein Subagent beteiligt, jede Zahl
  ist ein eigener Aufruf. Grund bleibt der Subagenten-Befund vom 20.08. (gemeldete Prüfung
  von elf Sites bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **512 Objekte / 1.57 GB** tenantweit,
  gegenüber 500 / 1.54 GB gestern. JANS.PROJEKTE 343 / 1.24 GB (unverändert), kispi 128 /
  0.27 GB (+12 Obj), AD 29 / 0.01 GB, JANSDATENAUSTAUSCH 10 / 0.05 GB, IMMO 2 / 0.00 GB.
  Die einzige Bewegung im Tenant liegt heute bei kispi, was zum dortigen Belegungszuwachs
  passt.

### Tote/leere Sites (Hinweis, Phase 2)

Unverändert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.7 Monate), Test
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

Der heutige Stillstand ist **kein Gegenargument**. Er zeigt nur, dass an diesem Tag nichts
Grosses überschrieben wurde. Die fehlende Begrenzung bleibt bestehen, und sie ist der
Grund, warum die Tage vom 20. und 24.08. je rund 14 GB kosteten. Ein Trim ohne vorherige
Limit-Umstellung bleibt eine Verzögerung, keine Lösung.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, also heute seit **44 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 91 GB, dringend — nach Schritt 1

107.49 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **91 GB** zu rechnen, was den
Puffer auf gut 266 GB und die Auslastung auf rund **74.7 %** senkt. Beim Wochenschnitt von
4.87 GB/Tag kauft das rund **19 Tage** zusätzliche Restlaufzeit.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

Der Trim läuft als Job über die Site, während an ihr gearbeitet wird; das ist zulässig,
kostet aber Wirkung, weil parallel neue Versionen entstehen. **Bestes Fenster ist das
kommende Wochenende (29./30.08.)** — es liegt jetzt drei bis vier Tage voraus, während die
88-%-Marke beim Wochenschnitt zehn und beim Werktagsschnitt sieben Tage entfernt ist. Die
zwei ruhigen Tage haben hier tatsächlich Luft geschaffen: gestern lag dasselbe Wochenende
noch ohne Reserve vor der Marke.

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Am 24.08. erstmals eingegrenzt (rund 480 MB je Version), an beiden Folgetagen nicht
nachprüfbar. Zu klären bleibt, welche Bibliothek und welche Dateien diese Versionen
erzeugen. Ergibt sich eine einzelne Bibliothek, kann diese zusätzlich vom Versionieren
ausgenommen werden.

Der heutige Stillstand macht diese Diagnose **einfacher, nicht überflüssig**: an einem Tag
ohne neue Versionen liesse sich eine Bibliotheks-Analyse ohne laufende Veränderung fahren.
Sie ersetzt die Limit-Umstellung nicht.

### 4. Tote Sites (nachrangig, rund 0 GB)

WBHafenarealSZ und die drei Kleinstsites belegen zusammen praktisch nichts. Löschen lohnt
sich nur der Ordnung halber, nicht für den Speicher.

## Sende-Schwelle

Gemeldet wird, ausgelöst durch **einen Grund**:

- **c) Restlaufzeit unter 60 Tagen:** 36 Tage beim Wochenschnitt, 26 Tage beim
  Werktagsschnitt.

Nicht gegriffen haben: a) Auslastung 83.36 % (Schwelle 88 %, rund 10 Tage entfernt),
b) Wachstum 0.14 GB/Tag (Schwelle 3 GB/Tag), d) keine Auto-Bereinigung, e) kein Blocker —
Connector, NAS und alle 20 Sites waren abfragbar, f) heute ist Mittwoch.
