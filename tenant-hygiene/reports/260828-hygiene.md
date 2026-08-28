# Tenant-Speicher-Hygiene — Report 28.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Freitag, keine Wochenpflicht

## Kernbefund: halbes Tagestempo, unverändertes Muster

Der Tenant wächst heute um **2.16 GB**, also gut die Hälfte des gestrigen Werts. Am Muster
ändert das nichts: **2.01 GB davon sind Versionsverlauf, also 93.1 %**. Seit dem 13.08.
gilt an jedem Tag mit nennenswertem Wachstum, dass 91 bis 100 % davon Versionen sind — der
heutige Tag reiht sich ein, er weicht nur in der Menge ab, nicht in der Zusammensetzung.

Auf JANS.PROJEKTE stehen **+2.03 GB Belegung bei +1.97 GB Versionen**. Die neue Substanz
auf der Site beträgt damit rund **60 MB**; der Rest ist Versionsverlauf. Das Verhältnis ist
noch extremer als gestern (220 MB Substanz zu 4.14 GB Belegung) und weist in dieselbe
Richtung: der Verbrauch skaliert nicht mit der geleisteten Arbeit, sondern mit Dateigrösse
mal Zahl der Speichervorgänge.

Die Ursache ist unverändert nicht behoben und heute erneut direkt gemessen, nicht aus dem
Vorreport fortgeschrieben: JANS.PROJEKTE meldet `InheritVersionPolicyFromTenant: true`,
`MajorVersionLimit: 0`, `EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor
nichts.

## Tenant-Summe

- Belegt: **885.18 GB** (906'420 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **83.98 %**, freier Puffer **168.82 GB**
- Delta zum Vorreport (27.08.2026, 20:08, 904'210 MB): **+2'210 MB in 24.0 Stunden**,
  also **+2.16 GB/Tag**
- Reihe der letzten sieben Tage: +0.05 (22.08. Sa), -0.005 (23.08. So), +13.90 (24.08. Mo),
  +2.08 (25.08. Di), +0.14 (26.08. Mi), +4.35 (27.08. Do), **+2.16 GB/Tag (28.08. Fr)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller Sites aufaddiert:
906'413 MB, sowie `sum([].StorageUsage)`: 906'420 MB), beide decken sich bis auf 7 MB
Rundung in den Kleinstsites.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Massgeblich bleibt der Wochenschnitt, nicht der Tageswert.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 168.82 GB gerechnet:

- Beim heute gemessenen Tempo (2.16 GB/Tag): rund **78 Tage**, also etwa 14. November 2026.
- Beim Wochenschnitt der letzten sieben Tage (3.24 GB/Tag): rund **52 Tage**, also etwa
  **19. Oktober 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der letzten fünf Werktage (4.53 GB/Tag): rund **37 Tage**, also
  etwa 4. Oktober 2026.

Die Restlaufzeit liegt den elften Tag in Folge unter der 60-Tage-Schwelle. Der
Wochenschnitt ist von 3.50 auf 3.24 GB/Tag gefallen, der Werktagsschnitt von 4.90 auf
4.53 GB/Tag. Beide Bewegungen sind klein und liegen im Rahmen der Messverzögerung; eine
Verlangsamung ist daraus nicht abzuleiten, solange die Versionsquote bei über 90 % bleibt.

Warnmarken:

- **88-%-Marke (927.5 GB): 42.34 GB entfernt** — beim Wochenschnitt rund **13 Tage**
  (etwa 10. September), beim Werktagsschnitt rund **9 Tage** (etwa 6. September).
- 90-%-Marke (948.6 GB): 63.42 GB entfernt, rund 20 Tage beim Wochenschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In fünfzehn Tagen, davon zehn Werktagen, sind
davon **59.98 GB zurückgekehrt**, also gut 56 %.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 607.95 GB | 113.38 GB | 18.7 % | 364 Obj / 1.25 GB | leer | 28.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 23.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 6.5 % | 29 Obj / 0.01 GB | leer | 28.08.2026 |
| /sites/PL | 40.17 GB | 3.50 GB | 8.7 % | leer | leer | 23.08.2026 |
| /sites/kispi | 33.10 GB | 0.33 GB | 1.0 % | 170 Obj / 0.46 GB | leer | 28.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 4.6 % | leer | leer | 22.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 38.2 % | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **124.08 GB** (14.0 % der Belegung), gegenüber 122.07 GB
gestern und 64.10 GB kurz nach dem Trim.

Bewegung heute: JANS.PROJEKTE +2.03 GB Belegung bei +1.97 GB Versionen. kispi +122 MB
Belegung bei +38 MB Versionen. AD unverändert in der Belegung (-5 MB, Messrauschen) bei
+3 MB Versionen. Alle übrigen acht Sites bewegen sich um höchstens 5 MB, was innerhalb der
Messverzögerung liegt. SE steht den zwölften, PL den elften Tag unverändert.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 113.38 GB** Versionen auf 607.95 GB Site (**18.7 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Fünffache. Trägt **91.4 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 10.6 % (17.08.),
  11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.),
  17.9 % (25./26.08.), 18.4 % (27.08.), **18.7 % heute**. Der Anteil steigt an jedem Tag
  der Reihe, unabhängig davon, wie viel gearbeitet wurde.
- Heutiges Verhältnis: rund **60 MB neue Substanz zu 1.97 GB neuem Versionsverlauf**, also
  etwa das Dreiunddreissigfache. Das stützt Empfehlung 3 (wenige, sehr grosse, wiederholt
  überschriebene Dateien) weiter, bleibt aber unverifiziert, solange die verursachende
  Bibliothek nicht benannt ist.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 1.0 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Zwanzigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 28.08.
- Messweg wie an den acht Vortagen: die gesamte Papierkorb-Erhebung lief **im
  Hauptkontext**, elf Einzelabfragen der zweiten Stufe und elf der ersten, dazu fünf
  Grössenabfragen für die nicht leeren ersten Stufen. Kein Subagent beteiligt, jede Zahl
  ist ein eigener Aufruf. Grund bleibt der Subagenten-Befund vom 20.08. (gemeldete Prüfung
  von elf Sites bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **575 Objekte / 1.77 GB** tenantweit,
  gegenüber 567 / 1.74 GB gestern. JANS.PROJEKTE 364 / 1.25 GB (+1 Obj), kispi 170 /
  0.46 GB (+7 Obj), AD 29 / 0.01 GB, JANSDATENAUSTAUSCH 10 / 0.05 GB, IMMO 2 / 0.00 GB.

### Tote/leere Sites (Hinweis, Phase 2)

Unverändert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.7 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
überschreitet die 18-Monats-Schwelle.

## Durchgeführte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen (brauchen Raphaels interaktiven Login)

### 1. Tenant-Versionslimit auf «Automatisch» stellen — zuerst, vor dem Trim

Unverändert und weiterhin der einzige Punkt, der die Ursache behebt. Heute erneut direkt
gemessen: `MajorVersionLimit: 0`, `EnableAutoExpirationVersionTrim: false`,
`InheritVersionPolicyFromTenant: true`. Es gibt keine Begrenzung, die greifen könnte.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, also heute seit **46 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 97 GB, dringend — nach Schritt 1

113.38 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **97 GB** zu rechnen, was den
Puffer auf gut 266 GB und die Auslastung auf rund **74.8 %** senkt. Beim Wochenschnitt von
3.24 GB/Tag kauft das rund **30 Tage** zusätzliche Restlaufzeit.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

Der Trim läuft als Job über die Site, während an ihr gearbeitet wird; das ist zulässig,
kostet aber Wirkung, weil parallel neue Versionen entstehen. **Das Wochenende 29./30.08.
beginnt morgen** und ist damit das nächstgelegene und beste Fenster der ganzen Reihe: die
Site ruht dann erfahrungsgemäss (22./23.08. brachten zusammen 0.045 GB), und die
88-%-Marke ist beim Werktagsschnitt nur noch neun Tage entfernt.

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Heute mit der schärfsten Datengrundlage der Reihe: 1.97 GB neuer Versionsverlauf bei rund
60 MB neuer Substanz. Zu klären bleibt, welche Bibliothek und welche Dateien diese
Versionen erzeugen. Ergibt sich eine einzelne Bibliothek, kann diese zusätzlich vom
Versionieren ausgenommen werden.

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 906'420 MB.
- Site-Einzelwerte: `m365 spo site list` mit Projektion auf Url, StorageUsage, VersionSize,
  LastContentModifiedDate.
- Versions-Policy: `m365 spo site list --query "[?contains(Url,'JANS.PROJEKTE')]..."` →
  Inherit true, Major 0, Trim false. Direkt gemessen, nicht aus dem Vorreport übernommen.
- Papierkorb: je Site zuerst zweite Stufe (`--secondary --query "length(@)"`), danach
  erste Stufe, Grössenabfrage nur bei `length(@) > 0`.
- `LastContentModifiedDate` im Format `/Date(2026,7,28,...)/` ist der **28. August 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt: `260827-hygiene.md`. Zeitraum
  27.08. 20:08 bis 28.08. 20:10, also 24.0 Stunden.
- Sende-Schwelle: Grund c) greift (Restlaufzeit 52 Tage beim Wochenschnitt, unter 60).
  Auslastung 83.98 % (unter 88 %), Delta 2.16 GB/Tag (unter 3), keine Auto-Bereinigung,
  kein Blocker, kein Montag.
