# Tenant-Speicher-Hygiene — Report 08.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Dienstag, keine Wochenpflicht

## Kernbefund: erste saubere Tagesmessung seit Freitag, und sie ist die zweithöchste des Monats

Der Tenant wuchs in den letzten 24 Stunden um **+3.96 GB** — der zweithöchste Tageswert im
September, nur der Mittwoch 02.09. lag mit +5.09 GB darüber. Damit **reisst die
Wachstumsschwelle von 3 GB pro Tag** (Sendegrund b).

Der Wert ist eine echte Tagesmessung, keine Verteilung: der Vorreport vom 07.09. musste drei
Tage zusammenfassen, weil die Läufe vom Samstag und Sonntag ausgefallen waren. Heute stehen
sich zwei Messungen im Abstand von rund 24 Stunden gegenüber.

Damit lässt sich die offene Frage des Vorreports beantworten. Er hatte den Montagswert nicht
vom Wochenende trennen können und zwei Restlaufzeiten nebeneinandergestellt (69 Tage nach
Wochenschnitt, 49 nach Werktagsschnitt). Die heutige Messung stützt die **ungünstigere**
Lesart: an einem gewöhnlichen Werktag fallen in diesem Tenant drei bis fünf GB an, und die
ruhigen +0.85 GB/Tag des verlängerten Wochenendes waren tatsächlich eine
Wochenend-Entlastung, keine Trendwende.

Die Zusammensetzung ist unverändert und heute zum **siebten Mal in Folge** dieselbe: von den
+3.96 GB entfallen **+3.83 GB auf JANS.PROJEKTE**, und dort **+3.77 GB auf den
Versionsverlauf**. Neue Substanz auf dieser Site: **+0.05 GB**. Der Versionsanteil am
Site-Zuwachs beträgt **98.4 %**.

Die Ursache wurde erneut direkt gemessen, nicht fortgeschrieben: JANS.PROJEKTE meldet
`InheritVersionPolicyFromTenant: true`, `MajorVersionLimit: 0`,
`MajorWithMinorVersionsLimit: 0`, `EnableAutoExpirationVersionTrim: false`. Es begrenzt nach
wie vor nichts.

Der Versionsanteil von JANS.PROJEKTE überschreitet heute erstmals die **22-Prozent-Marke**
(22.0 %, gestern 21.5 %).

## Tenant-Summe

- Belegt: **912.02 GB** (933'910 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **86.53 %**, freier Puffer **141.98 GB**
- Delta zum Vorreport (07.09.2026, 20:10, 929'856 MB): **+4'054 MB in rund 24 Stunden**,
  also **+3.96 GB/Tag**
- Reihe der letzten Tage: +7.93 (31.08. Mo), +3.02 (01.09. Di), +5.09 (02.09. Mi),
  +2.03 (03.09. Do), +2.23 (04.09. Fr), +2.54 verteilt auf 05.–07.09. (Sa/So/Mo),
  **+3.96 GB (08.09. Di)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte aller 20 Sites aufaddiert sowie
`sum([].StorageUsage)`); beide ergeben **exakt 933'910 MB**, ohne Rundungsdifferenz.

Einschränkung wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis ~24 h).
Massgeblich bleibt der Wochenschnitt, nicht der Tageswert.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 141.98 GB gerechnet:

- Beim Wochenschnitt der letzten sieben Tage (**2.26 GB/Tag**, gemessen vom 01.09. 20:10 bis
  heute 20:10, also über ein volles Sieben-Tage-Fenster ohne Zusatzannahme): rund
  **63 Tage**, also etwa **9. November 2026**. **Das ist der massgebliche Wert.** Er liegt
  weiterhin über der 60-Tage-Schwelle, aber nur noch um drei Tage (Vorreport: neun).
- Beim Werktagsschnitt der letzten fünf gemessenen Werktage (01., 02., 03., 04. und 08.09.,
  **3.26 GB/Tag**): rund **43 Tage**, also etwa 21. Oktober 2026. Dieser Wert kommt heute
  **ohne den Vorbehalt des Vorreports aus** — er besteht aus fünf sauberen Einzelmessungen,
  nicht aus einer Verteilungsannahme.
- Beim heutigen Tageswert allein (3.96 GB/Tag): rund 36 Tage. Ein einzelner Tag trägt keine
  Prognose; der Wert steht hier nur als Obergrenze des Denkbaren.

Der Abstand zwischen Wochen- und Werktagsschnitt (63 gegen 43 Tage) ist kein Widerspruch,
sondern der Wochenendeffekt: an Samstagen und Sonntagen wächst dieser Tenant messbar nicht.
Wer plant, wann etwas zu tun ist, rechnet mit dem Werktagsschnitt; wer den Trend beurteilt,
mit dem Wochenschnitt.

Warnmarken:

- **88-%-Marke (927.52 GB): 15.50 GB entfernt** — beim Wochenschnitt rund **7 Tage** (etwa
  15. September), beim Werktagsschnitt rund **5 Tage** (etwa 13. September, also
  **kommendes Wochenende**).
- 90-%-Marke (948.60 GB): 36.58 GB entfernt, rund 16 Tage beim Wochenschnitt, 11 beim
  Werktagsschnitt.

Der Trim vom 13.08. hat 106 GB freigeräumt. In sechsundzwanzig Tagen sind davon
**86.16 GB zurückgekehrt**, also **81.3 %** (gestern 77.5 %). Der Rückfluss beschleunigt sich
nicht, er läuft schlicht weiter: rund 3.3 GB pro Tag, seit vier Wochen.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 634.07 GB | 139.36 GB | 22.0 % | 425 Obj / 1.30 GB | leer | 08.09.2026 14:53 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 07.09.2026 05:58 |
| /sites/AD | 51.91 GB | 3.37 GB | 6.5 % | 35 Obj / 0.01 GB | leer | 08.09.2026 14:55 |
| /sites/PL | 40.15 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 18:56 |
| /sites/kispi | 33.80 GB | 0.33 GB | 1.0 % | 199 Obj / 0.55 GB | leer | 08.09.2026 14:55 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 |
| /sites/WE | 9.08 GB | 0.42 GB | 4.6 % | leer | leer | 07.09.2026 05:58 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.10 GB | 1.56 GB | 38.1 % | 4 Obj / 0.00 GB | leer | 08.09.2026 15:33 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 05.09.2026 17:04 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **150.10 GB** (16.5 % der Belegung), gegenüber 146.30 GB
gestern und 64.10 GB kurz nach dem Trim. **+3.80 GB an einem Tag.**

Bewegung seit gestern, mit der üblichen Einschränkung zur Auflösung (Site-Werte auf zwei
Stellen in GB, also ±5 MB):

- **JANS.PROJEKTE: +3.83 GB** — trägt rund **97 %** des Tenant-Deltas. Davon +3.77 GB
  Versionsverlauf, neue Substanz +0.05 GB. Der Versionsanteil am Site-Zuwachs beträgt
  **98.4 %**.
- **IMMO: +0.07 GB**, davon +0.02 GB Versionen, also +0.05 GB Substanz. Erste messbare
  Bewegung seit dem 03.09.; der Papierkorb wuchs um 1 Objekt.
- **kispi: +0.06 GB** bei unverändertem Versionsverlauf (0.33 GB) — der zweite Gegenbeleg
  des Tages: so sieht Projektarbeit ohne Versions-Aufblähung aus.
- Alle übrigen acht Sites bewegen sich innerhalb der Auflösungsgrenze und sind als
  unverändert zu lesen. SE steht den dreiundzwanzigsten Tag unverändert, PL den
  zweiundzwanzigsten.
- **SE und WE** tragen heute **denselben Zeitstempel wie gestern** (07.09. 05:58). Der
  nächtliche Lauf, der dort seit Wochen Dateien anfasst, ohne Volumen zu erzeugen, hat
  heute nicht stattgefunden oder ist noch nicht in die Statistik eingegangen. Ohne
  Belegungsänderung ist das kein Speicherereignis, aber es ist der erste Tag seit langem
  ohne diesen Stempel.

`LastContentModifiedDate` zeigt bei vier Sites mit Belegung den heutigen Tag
(JANS.PROJEKTE 14:53, AD 14:55, kispi 14:55, IMMO 15:33).

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 139.36 GB** Versionen auf 634.07 GB Site (**22.0 %**). Reisst die
  absolute 20-GB-Schwelle um fast das Siebenfache. Trägt **92.8 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteilsverlauf: 9.7 % nach dem Trim, 11.3 % (18.08.),
  13.4 % (19.08.), 15.4 % (20.08.), 15.8 % (21.–23.08.), 17.6 % (24.08.), 17.9 % (25./26.08.),
  18.4 % (27.08.), 18.7 % (28.08.), 18.6 % (29./30.08.), 19.7 % (31.08.), 20.1 % (01.09.),
  20.7 % (02.09.), 21.0 % (03.09.), 21.2 % (04.09.), 21.5 % (07.09.), **22.0 % heute**.
- IMMO: 1.56 GB auf 4.10 GB, **38.1 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 1.0 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Einunddreissigster Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 04.09., 07.09., 08.09.
- Messweg: die Erhebung lief über einen **Haiku-Subagenten** (27 fachliche Aufrufe), wie es
  die Modell-Politik der Task vorsieht. Weil er einen **durchgehend gleichförmigen Befund**
  meldete («alle zweiten Stufen leer»), wurden gemäss Rule `auto-verbesserungen` 260729b
  anschliessend **zwei Sites im Hauptkontext selbst nachgemessen** (JANS.PROJEKTE und kispi,
  je zweite Stufe) — beide bestätigt mit 0.
- **Zu seinen Aggregaten, viertes Mal in Folge geprüft, und heute erstmals mit Befund:** die
  Objektsumme (673) stimmt. Seine **Byte-Summe war falsch** — er meldete 2'057'876'879
  Bytes, die Einzelwerte ergeben **2'055'876'879**, eine Abweichung von exakt 2'000'000
  Bytes (Ziffernfehler im Aggregat, nicht in den Messungen). Korrekt sind **1.91 GB**. Die
  Praxis bewährt sich also: Einzelmessungen des Subagenten übernehmen, Aggregate im
  Hauptkontext nachrechnen. Wer den gemeldeten Summenwert ungeprüft übernommen hätte, trüge
  heute eine falsche Zahl im Report.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **673 Objekte / 1.91 GB** tenantweit,
  gegenüber 639 / 1.89 GB gestern. JANS.PROJEKTE 425 / 1.30 GB (+29 Obj),
  kispi 199 / 0.55 GB (+2 Obj), AD 35 / 0.01 GB (+2 Obj), IMMO 4 / 0.00 GB (+1 Obj),
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

Seit dem 13.07.2026 offen, also heute seit **57 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 120 GB

139.36 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund **120 GB** zu rechnen, was den
Puffer auf rund 262 GB und die Auslastung auf rund **75.1 %** senkt. Beim Wochenschnitt von
2.26 GB/Tag kauft das rund **53 Tage** zusätzliche Restlaufzeit (63 auf 116 Tage), beim
Werktagsschnitt rund **37 Tage** (43 auf 80).

Die 120 GB sind eine **Hochrechnung**, keine Messung: sie skalieren die Schätzung des
Vorreports mit dem seitherigen Versionswachstum. Belastbar gemessen ist nur der Trim vom
13.08. selbst.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

**Zum Zeitpunkt.** Die 88-%-Marke ist beim Werktagsschnitt nur noch rund **fünf Tage**
entfernt, also etwa Sonntag 13.09. Praktisch heisst das: sie fällt an einem der drei
verbleibenden Werktage dieser Woche oder unmittelbar danach. Das kommende Wochenende ist
damit das letzte Fenster, in dem der Trim vor Erreichen der 88-Prozent-Marke stattfinden
kann. Danach ist er weiterhin möglich, aber die Aufsicht meldet ab dann täglich.
**Punkt 1 (Versionslimit) ist zeitunkritisch und sollte in jedem Fall vorher erledigt
werden** — sonst füllt sich der freigeräumte Platz im selben Muster wieder auf, wie es seit
dem 13.08. nachweislich geschieht (81.3 % Rückfluss in 26 Tagen).

### 3. Die grossen, wiederholt überschriebenen Dateien auf JANS.PROJEKTE identifizieren

Unverändert offen, und heute an einem **siebten** unabhängigen Datenpunkt bestätigt:
+3.77 GB Versionsverlauf bei +0.05 GB neuer Substanz auf derselben Site. Sieben
aufeinanderfolgende Messpunkte mit einem Versionsanteil von 89 bis 100 % am Site-Zuwachs
deuten auf wenige sehr grosse, wiederholt gespeicherte Dateien hin, nicht auf breites
Arbeiten an vielen kleinen. Zu klären bleibt, welche Bibliothek und welche Dateien das sind.
Ergibt sich eine einzelne Bibliothek, kann diese zusätzlich vom Versionieren ausgenommen
werden — das wäre die zielgenauere Massnahme als ein wiederkehrender tenantweiter Trim.

Bemerkenswert am heutigen Datenpunkt: das Verhältnis hält auch bei **hoher** absoluter Menge.
Der Vorreport hatte gezeigt, dass es bei einem Drittel des Werktagsniveaus hält; heute hält
es beim Doppelten des Wochenendwerts. Die Menge schwankt, das Verhältnis nicht. Genau das
erwartet man, wenn dieselben wenigen grossen Dateien unterschiedlich oft gespeichert werden.

Zwei Gegenbelege am selben Tag: kispi (+0.06 GB Belegung, +0.00 GB Versionen) und IMMO
(+0.07 GB Belegung, +0.02 GB Versionen). So sieht normale Projektarbeit in diesem Tenant aus.

### 4. Ausgefallene Läufe am 05./06.09. — heute keine Wiederholung

Der heutige Lauf hat stattfinden können, die Lücke vom Wochenende hat sich nicht
fortgesetzt. Die Ursache des damaligen Ausfalls bleibt ungeklärt; sie wird erst wieder
relevant, wenn ein Lauf erneut fehlt (dann Scheduled-Task-Registry der ausführenden Station
und Wach-/Schlafzustand prüfen). Der Nutzen einer lückenlosen Reihe hat sich heute gezeigt:
erst die saubere Tagesmessung erlaubte es, die beiden konkurrierenden Restlaufzeiten des
Vorreports gegeneinander zu entscheiden.

## Messweg (Nachvollziehbarkeit)

- Tenant-Summe: `m365 spo site list --query "sum([].StorageUsage)"` → 933'910 MB, dazu die
  Einzelwerte projiziert und aufaddiert → ebenfalls 933'910 MB.
- Site-Einzelwerte: `m365 spo site list` mit Projektion auf Url, StorageUsage, VersionSize,
  LastContentModifiedDate.
- Versions-Policy: `m365 spo site list --query "[?contains(Url,'JANS.PROJEKTE')]..."` →
  Inherit true, Major 0, MajorMinor 0, Trim false. Direkt gemessen, nicht aus dem
  Vorreport übernommen.
- Papierkorb: Haiku-Subagent, je Site zuerst zweite Stufe (`--secondary --query
  "length(@)"`), danach erste Stufe, Grössenabfrage nur bei `length(@) > 0`; 27 fachliche
  Aufrufe, keine Fehler. Anschliessend zwei zweite Stufen im Hauptkontext gegengemessen
  (Rule 260729b), Byte-Summe im Hauptkontext gebildet und dabei ein Aggregatfehler des
  Subagenten gefunden (siehe oben).
- `LastContentModifiedDate` im Format `/Date(2026,8,8,...)/` ist der **8. September 2026**
  (nullbasierter Monat).
- Vorreport über das sechsstellige Muster ermittelt (`^[0-9]{6}-hygiene\.md$`):
  `260907-hygiene.md`. Zeitraum 07.09. 20:10 bis 08.09. 20:10, also rund **24 Stunden** —
  eine saubere Tagesmessung, kein Sammelwert.
- Wochenschnitt aus dem Sieben-Tage-Fenster 01.09. 20:10 → 08.09. 20:10 gebildet
  (917'690 → 933'910 MB = 15.84 GB), nicht aus der Summe gerundeter Tageswerte.
- Heutiges Datum aus `date "+%y%m%d"` → 260908.
- Sende-Schwelle: Grund **b)** greift (+3.96 GB/Tag, Schwelle 3). Grund a) greift nicht
  (86.53 %, Schwelle 88). Grund c) greift nach dem massgeblichen Wochenschnitt nicht
  (63 Tage, Schwelle 60), nach dem Werktagsschnitt schon (43 Tage) — beides ist gemeldet.
  Grund f) greift nicht (Dienstag). Keine Auto-Bereinigung, kein Blocker.
