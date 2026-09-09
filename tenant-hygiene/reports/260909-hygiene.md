# Tenant-Speicher-Hygiene — Report 09.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:09 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Mittwoch, keine Wochenpflicht

## Kernbefund: der Zuwachs ist heute zu 100 % Versionsverlauf, neue Substanz ist null

Der Tenant wuchs in den letzten 24 Stunden um **+4.03 GB** und reisst damit den zweiten Tag
in Folge die Wachstumsschwelle von 3 GB pro Tag (Sendegrund b). Es ist der höchste
Tageswert des Septembers ausser dem Mittwoch 02.09. (+5.09 GB) und die erste Serie zweier
aufeinanderfolgender Tage über 3.9 GB.

Bemerkenswert ist heute nicht die Höhe, sondern die **Reinheit** der Zusammensetzung. Von
den +4.03 GB des Tenants entfallen **+3.93 GB auf JANS.PROJEKTE**, und dort **+3.94 GB auf
den Versionsverlauf**. Die neue Substanz auf dieser Site beträgt damit **-0.002 GB**, also
innerhalb der Auflösungsgrenze **null**: der Versionsanteil am Site-Zuwachs liegt bei
**100.1 %**. An diesem Tag ist auf der grössten Site des Tenants kein einziges neues
Gigabyte an Inhalt entstanden, und sie wuchs trotzdem um vier.

Das ist der achte Tag in Folge mit derselben Ursache, aber der erste, an dem sie sich ohne
jeden Rest zeigt. Der Befund ist damit nicht mehr nur überwiegend, sondern ausschliesslich:
**dieser Tenant füllt sich nicht mit Arbeit, sondern mit Kopien von Arbeit.**

Die Ursache wurde erneut direkt gemessen, nicht fortgeschrieben: JANS.PROJEKTE meldet
`InheritVersionPolicyFromTenant: true`, `MajorVersionLimit: 0`,
`MajorWithMinorVersionsLimit: 0`, `EnableAutoExpirationVersionTrim: false`. Es begrenzt nach
wie vor nichts.

Der Versionsanteil von JANS.PROJEKTE steigt auf **22.5 %** (gestern 22.0 %).

### Werkzeug-Notiz für den nächsten Lauf

Die vier Policy-Felder wurden zuerst über `m365 spo site get --url <site>` abgefragt — der
Befehl antwortet mit **`null` in allen vier Feldern**, obwohl die Werte gesetzt sind. Ein
leeres Ergebnis ist hier also eine Aussage über den Befehl, nicht über den Tenant (Rule
`wege-und-vollmachten`). Belastbar ist `m365 spo site list` mit einem
`[?Url=='<site>']`-Filter; nur dort tragen die Felder Werte. Wer künftig `site get` nimmt und
`null` als «Policy nicht gesetzt» liest, kommt zum gegenteiligen Schluss.

## Tenant-Summe

- Belegt: **916.05 GB** (938'037 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **86.91 %**, freier Puffer **137.95 GB**
- Delta zum Vorreport (08.09.2026, 20:10, 933'910 MB): **+4'127 MB in rund 24 Stunden**,
  also **+4.03 GB/Tag**
- Reihe der letzten Tage: +3.02 (01.09. Di), +5.09 (02.09. Mi), +2.03 (03.09. Do),
  +2.23 (04.09. Fr), +2.54 verteilt auf 05.–07.09. (Sa/So/Mo), +3.96 (08.09. Di),
  **+4.03 GB (09.09. Mi)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller 20 Sites aufaddiert sowie
`sum([].StorageUsage)`); beide ergeben **exakt 938'037 MB**, ohne Rundungsdifferenz.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Massgeblich bleibt der Wochenschnitt, nicht der Tageswert.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 137.95 GB gerechnet:

- Beim Wochenschnitt der letzten sieben Tage (**2.11 GB/Tag**, gemessen vom 02.09. 20:10 bis
  heute 20:09, also über ein volles Sieben-Tage-Fenster ohne Zusatzannahme): rund
  **65 Tage**, also etwa **13. November 2026**. **Das ist der massgebliche Wert.** Er liegt
  weiterhin über der 60-Tage-Schwelle.
- Beim Werktagsschnitt der letzten fünf gemessenen Werktage (02., 03., 04., 08. und 09.09.,
  **3.47 GB/Tag**): rund **40 Tage**, also etwa 19. Oktober 2026.
- Beim heutigen Tageswert allein (4.03 GB/Tag): rund 34 Tage. Ein einzelner Tag trägt keine
  Prognose; der Wert steht hier nur als Obergrenze des Denkbaren.

Zur Lesart des Wochenschnitts, weil er heute **gestiegen** ist (63 auf 65 Tage), obwohl der
Tenant kräftiger wuchs als gestern: das Sieben-Tage-Fenster hat vorne den +5.09-GB-Mittwoch
02.09. verloren und hinten die +4.03 GB von heute gewonnen. Der Schnitt sinkt dadurch von
2.26 auf 2.11 GB/Tag. **Das ist ein Fenster-Effekt, keine Entspannung** — der Werktagsschnitt
ist im selben Zeitraum von 3.26 auf 3.47 GB/Tag gestiegen, und er beschreibt die Tage, an
denen in diesem Büro gearbeitet wird. Wer plant, wann etwas zu tun ist, rechnet mit dem
Werktagsschnitt; wer den Trend beurteilt, mit dem Wochenschnitt.

Warnmarken:

- **88-%-Marke (927.52 GB): 11.47 GB entfernt** — beim Wochenschnitt rund **5 Tage** (etwa
  15. September), beim Werktagsschnitt rund **3 Tage** (etwa **12. September**, also Freitag
  dieser Woche).
- 90-%-Marke (948.60 GB): 32.55 GB entfernt, rund 15 Tage beim Wochenschnitt, 9 beim
  Werktagsschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In siebenundzwanzig Tagen sind davon
**89.93 GB zurückgekehrt**, also **84.8 %** (gestern 81.3 %). Beim aktuellen Tempo ist der
gesamte Ertrag jenes Eingriffs **in rund vier Tagen aufgezehrt**.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung (UTC) |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 638.00 GB | 143.30 GB | 22.5 % | 427 Obj / 1.30 GB | leer | 09.09.2026 13:05 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 07.09.2026 05:58 |
| /sites/AD | 51.91 GB | 3.37 GB | 6.5 % | 35 Obj / 0.01 GB | leer | 09.09.2026 06:29 |
| /sites/PL | 40.15 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 18:56 |
| /sites/kispi | 33.85 GB | 0.34 GB | 1.0 % | 205 Obj / 0.57 GB | leer | 09.09.2026 12:30 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 17:08 |
| /sites/WE | 9.08 GB | 0.42 GB | 4.6 % | leer | leer | 07.09.2026 05:58 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 01:10 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 01:10 |
| /sites/IMMO | 4.14 GB | 1.56 GB | 37.7 % | 5 Obj / 0.00 GB | leer | 09.09.2026 13:03 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 05.09.2026 17:04 |

Die Zeitstempel stehen hier als **rohe UTC-Werte der API** (`LastContentModifiedDate`, Monat
nullbasiert), ohne Umrechnung in die Lokalzeit. Frühere Reports haben diese Spalte teils
umgerechnet und teils roh übernommen, was sie untereinander unvergleichbar machte; roh ist
nachprüfbar. Lokalzeit ist UTC+2.

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **154.03 GB** (16.8 % der Belegung), gegenüber 150.10 GB
gestern und 64.10 GB kurz nach dem Trim. **+3.93 GB an einem Tag.**

Bewegung seit gestern, mit der üblichen Einschränkung zur Auflösung (Site-Werte auf zwei
Stellen in GB, also ±5 MB):

- **JANS.PROJEKTE: +3.93 GB** — trägt **97.5 %** des Tenant-Deltas. Davon +3.94 GB
  Versionsverlauf, neue Substanz -0.002 GB, also null. Versionsanteil am Site-Zuwachs
  **100.1 %**.
- **kispi: +0.05 GB**, davon +0.01 GB Versionen. Der Papierkorb wuchs um 6 Objekte und
  0.02 GB — hier ist die Bewegung erkennbar Arbeit, nicht Versionierung. Zweiter Gegenbeleg
  in Folge.
- **IMMO: +0.04 GB** bei unverändertem Versionsverlauf (1.56 GB), Papierkorb +1 Objekt.
- Alle übrigen acht Sites bewegen sich innerhalb der Auflösungsgrenze und sind als
  unverändert zu lesen. SE steht den vierundzwanzigsten Tag unverändert, PL den
  dreiundzwanzigsten.
- **SE und WE** tragen den **zweiten Tag in Folge denselben Zeitstempel** (07.09. 05:58 UTC).
  Der nächtliche Lauf, der dort seit Wochen Dateien anfasst, ohne Volumen zu erzeugen, hat
  nun zwei Nächte ausgesetzt. Ohne Belegungsänderung ist das kein Speicherereignis, aber es
  ist erstmals ein Muster und keine einmalige Lücke. Wer diesen Lauf gebaut hat, sollte
  wissen, dass er steht — der Hinweis gehört an den Betrieb, nicht in die Speicher-Bilanz.

`LastContentModifiedDate` zeigt bei vier Sites mit Belegung den heutigen Tag
(JANS.PROJEKTE 13:05, IMMO 13:03, kispi 12:30, AD 06:29 UTC).

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 143.30 GB** Versionen auf 638.00 GB Site (**22.5 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Siebenfache. Trägt **93.0 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 11.3 % (18.08.),
  13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.), 17.9 % (25./26.08.),
  18.4 % (27.08.), 18.7 % (28.08.), 18.6 % (29./30.08.), 19.7 % (31.08.), 20.1 % (01.09.),
  20.7 % (02.09.), 21.0 % (03.09.), 21.2 % (04.09.), 21.5 % (07.09.), 22.0 % (08.09.),
  **22.5 % heute**.
- IMMO: 1.56 GB auf 4.14 GB, **37.7 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 1.0 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Zweiunddreissigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 04.09., 07.09., 08.09., 09.09.
- Messweg: die Erhebung lief über einen **Haiku-Subagenten** (28 fachliche Aufrufe), wie es
  die Modell-Politik der Task vorsieht. Weil er einen **durchgehend gleichförmigen Befund**
  meldete («alle zweiten Stufen leer»), wurden gemäss Rule `auto-verbesserungen` 260729b
  anschliessend **zwei Sites im Hauptkontext selbst nachgemessen** (JANS.PROJEKTE und AD,
  je zweite Stufe) — beide bestätigt mit 0.
- **Zu seinen Aggregaten:** er wurde diesmal ausdrücklich angewiesen, **keine** Summen zu
  bilden, nachdem sein Byte-Aggregat am 08.09. um exakt 2'000'000 Bytes falsch war. Er hielt
  sich daran und lieferte nur Einzelwerte; die Summen unten sind im Hauptkontext gerechnet.
  Damit ist die Fehlerquelle der letzten Läufe nicht mehr bloss nachkontrolliert, sondern
  beseitigt — die richtige Lehre aus einem Aggregatfehler ist, das Aggregat nicht dort zu
  bilden, wo es unzuverlässig ist.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **682 Objekte / 1.93 GB** tenantweit,
  gegenüber 673 / 1.91 GB gestern. JANS.PROJEKTE 427 / 1.30 GB (+2 Obj),
  kispi 205 / 0.57 GB (+6 Obj), AD 35 / 0.01 GB (unverändert), IMMO 5 / 0.00 GB (+1 Obj),
  JANSDATENAUSTAUSCH 10 / 0.05 GB (unverändert).

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

Seit dem 13.07.2026 offen, also heute seit **58 Tagen**.

Der heutige Befund ist das schärfste Argument für diesen Schritt, das die Messreihe bisher
hervorgebracht hat: bei null neuer Substanz vier Gigabyte Zuwachs. Ohne diese Einstellung
ist jeder Trim eine Massnahme mit bekanntem Verfallsdatum — der Ertrag des Trims vom 13.08.
ist zu 84.8 % zurück und in rund vier Tagen vollständig aufgezehrt.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 130 GB

143.30 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **130 GB** zu rechnen, was den
Puffer auf rund 268 GB und die Auslastung auf rund **74.6 %** senkt. Beim Wochenschnitt von
2.11 GB/Tag kauft das rund **62 Tage** zusätzliche Restlaufzeit (65 auf 127 Tage), beim
Werktagsschnitt rund **38 Tage** (40 auf 78).

Die 130 GB sind eine **Hochrechnung**, keine Messung: sie skalieren die Schätzung des
Vorreports mit dem seitherigen Versionswachstum. Belastbar gemessen ist nur der Trim vom
13.08. mit 106 GB.

Befehl (Voraussetzungen einmalig erledigt: delegierte Perm `AllSites.FullControl`,
Redirect-URI `http://localhost`; **nicht** `-DeviceLogin`):

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE \
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Reihenfolge bleibt: **zuerst Punkt 1, dann Punkt 2.** Ein Trim ohne die Policy-Umstellung
räumt nur auf, was in wenigen Wochen wieder da ist.

### 3. Erste Papierkorb-Stufe (1.93 GB) — weiterhin kein Handlungsbedarf

Sie ist das Undo-Netz und mit 1.93 GB ohne Gewicht neben dem Versionsverlauf. Nur anfassen,
wenn Raphael es ausdrücklich verlangt.

### 4. Tote Sites archivieren — geringes Potenzial

WBHafenarealSZ, Test und die zwei AllCompany-Restsites belegen zusammen 2 MB. Aufräumen aus
Ordnungsgründen möglich, für den Speicher irrelevant.

## Sende-Entscheid

**Gemeldet.** Sendegrund **b**: Delta +4.03 GB/Tag, zweiter Tag in Folge über der
3-GB-Schwelle. Nicht gerissen: 88 % (86.91 %, aber nur 11.47 GB entfernt), Restlaufzeit
(65 Tage nach Wochenschnitt, über 60), Auto-Bereinigung (0 GB), Blocker (keiner),
Wochenpflicht (heute Mittwoch).
