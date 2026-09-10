# Tenant-Speicher-Hygiene — Report 10.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026) · heute Donnerstag, keine Wochenpflicht

## Big Points

1. **916.05 GB belegt, 86.91 %**, freier Puffer 137.95 GB. Gegenüber gestern **+3 MB**.
2. **Der flache Tag ist mit hoher Wahrscheinlichkeit eine verzögerte Speichermetrik, kein
   Wachstumsstopp.** Belegt ist nur, dass `StorageUsage` sich nicht bewegt hat; die Ursache ist
   plausibel, nicht bewiesen (siehe unten).
3. **Restlaufzeit:** Wochenschnitt 1.82 GB/Tag, rund **76 Tage**, heute durch den flachen Tag
   **geschönt**. Robuster ist der 14-Tage-Schnitt: 2.36 GB/Tag, rund **58 Tage**.
4. **88-%-Marke 11.47 GB entfernt**, bei Werktagstempo drei bis vier Arbeitstage.
5. **Ursache unverändert:** JANS.PROJEKTE begrenzt keine Versionen. Heute erneut gemessen,
   offen seit **59 Tagen**.
6. Auto-Bereinigung: **keine, 0 GB**. Alle zweiten Papierkorb-Stufen leer.

## Der flache Tag: Beleg und Plausibilität getrennt

Beleg (gemessen):

- Tenant-Summe 938'040 MB gegen 938'037 MB gestern um 20:09. Zwei unabhängige Abfragen
  (Einzelwerte aufaddiert, `sum([].StorageUsage)`) ergeben beide exakt 938'040 MB.
- **Alle elf Sites mit Belegung** und der Versionsverlauf (154.03 GB) sind auf zwei
  Nachkommastellen **identisch mit gestern**. Nicht eine Site hat sich bewegt.
- Gleichzeitig zeigt `LastContentModifiedDate` heutige Arbeit: JANS.PROJEKTE 17:53, kispi
  12:02, AD 11:10 UTC.
- Die ersten Papierkorb-Stufen (Live-Wert, nicht verzögert) sind ebenfalls exakt wie gestern:
  682 Objekte, 1.93 GB. Heute wurde nichts gelöscht.

Plausibilität (nicht bewiesen): an einem Werktag mit Bearbeitungen auf der grössten Site,
nach zwei Tagen mit je rund +4 GB, ist ein Zuwachs von 3 MB über den ganzen Tenant kein
realistischer Stillstand, sondern ein ausgebliebener Neuberechnungslauf der Metrik. Das
Muster ist in dieser Reihe schon aufgetreten: Mittwoch 26.08. +0.14 GB, danach +4.46 GB;
Wochenende 23./24.08. mit einem Nachhol-Sprung von +13.9 GB. **Morgen ist ein Nachhol-Wert
zu erwarten**, der zwei Arbeitstage enthält und die 3-GB-Schwelle wahrscheinlich reisst.
Er ist dann als Summe zweier Tage zu lesen, nicht als Sprung.

Werkzeug-Notiz: `m365 spo site get` kennt kein Feld `Usage` (Schlüsselliste geprüft, die
Abfrage liefert `null`). Eine zweite, frischere Speicherquelle gibt es über diesen Befehl also
nicht; der Gegencheck der Metrik bleibt der Papierkorb-Live-Wert und `LastContentModifiedDate`.

## Wachstum und Restlaufzeit

- Delta zum Vorreport (09.09.2026 20:09): **+0.003 GB in rund 24 Stunden**.
- Reihe: +2.03 (03.09.), +2.23 (04.09.), +2.54 (05.–07.09.), +3.96 (08.09.), +4.03 (09.09.),
  **+0.003 (10.09., Metrik vermutlich eingefroren)**.
- Wochenschnitt 03.09. 20:10 bis heute 20:10: 12.76 GB in 7 Tagen, **1.82 GB/Tag**, rund
  **76 Tage** (etwa 25.11.2026). Nach der bisherigen Konvention der massgebliche Wert; heute
  aber um den eingefrorenen Tag zu günstig.
- 14-Tage-Schnitt 27.08. 20:08 bis heute: 33.04 GB in 14 Tagen, **2.36 GB/Tag**, rund
  **58 Tage** (etwa 07.11.2026). Enthält denselben flachen Tag, verdünnt ihn aber auf ein
  Vierzehntel und ist deshalb heute der ehrlichere Wert. Er liegt knapp **unter** der
  60-Tage-Schwelle.
- Rückkehr des Trims vom 13.08. (106 GB): 89.93 GB zurück, **84.8 %**, unverändert seit
  gestern, weil die Metrik stand.

Warnmarken: 88 % (927.52 GB) **11.47 GB entfernt** · 90 % (948.60 GB) 32.55 GB entfernt.

## Sites mit Belegung

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | 2. Stufe | Letzte Änderung (UTC) |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 638.00 GB | 143.30 GB | 22.5 % | 427 Obj / 1.30 GB | leer | 10.09.2026 17:53 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 07.09.2026 05:58 |
| /sites/AD | 51.91 GB | 3.37 GB | 6.5 % | 35 Obj / 0.01 GB | leer | 10.09.2026 11:10 |
| /sites/PL | 40.15 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 18:56 |
| /sites/kispi | 33.85 GB | 0.34 GB | 1.0 % | 205 Obj / 0.57 GB | leer | 10.09.2026 12:02 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 22.08.2026 17:08 |
| /sites/WE | 9.08 GB | 0.42 GB | 4.6 % | leer | leer | 07.09.2026 05:58 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 01:10 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 01:10 |
| /sites/IMMO | 4.14 GB | 1.56 GB | 37.7 % | 5 Obj / 0.00 GB | leer | 09.09.2026 13:03 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 05.09.2026 17:04 |

Zeitstempel roh in UTC aus der API (Monat nullbasiert umgerechnet), Lokalzeit UTC+2.
Neun Sites unter 100 MB ohne Papierkorb-Erhebung: PA, Test, zwei AllCompany-Restsites,
/search, beide Root-Sites, WBHafenarealSZ, HLEBWEB.

Versionsverlauf tenantweit **154.03 GB** (16.8 % der Belegung), davon 93.0 % auf
JANS.PROJEKTE.

Betriebshinweis ohne Speicherwirkung: **SE und WE** tragen den **dritten Tag in Folge**
denselben Zeitstempel (07.09. 05:58 UTC). Der nächtliche Lauf, der dort sonst täglich
Dateien anfasst, steht seit drei Nächten. Gehört an den Betrieb, nicht in die Speicher-Bilanz.

## Klassifizierung

- **Versions-Bloat:** JANS.PROJEKTE 143.30 GB (22.5 %), mehr als das Siebenfache der
  20-GB-Schwelle. IMMO 37.7 % relativ, absolut 1.56 GB ohne Bedeutung.
- **Papierkörbe:** alle zweiten Stufen leer (11 Sites). **Dreiunddreissigster Lauf in Folge**
  mit diesem Befund. Erhoben per Haiku-Subagent (39 Aufrufe, nur Rohwerte, keine Aggregate);
  weil gleichförmig, im Hauptkontext zwei Sites nachgemessen (JANS.PROJEKTE, kispi): beide 0.
  Erste Stufen 682 Objekte / 1.93 GB, Summen im Hauptkontext gerechnet.
- **Tote/leere Sites:** unverändert WBHafenarealSZ (0 MB, letzte Änderung 06.10.2025), Test,
  zwei AllCompany-Restsites; keine über 18 Monate.

## Durchgeführte Auto-Bereinigung

**Keine, 0 GB.** Kein `clear` abgesetzt, weil keine zweite Stufe Inhalt hatte. Erste Stufen
unangetastet.

## Offene Phase-2-Empfehlungen (Raphaels interaktiver Login)

1. **Tenant-Versionslimit auf «Automatisch»** (Admin Center → Einstellungen →
   Versionsverlauf-Limits). Heute gemessen: `InheritVersionPolicyFromTenant: true`,
   `MajorVersionLimit: 0`, `MajorWithMinorVersionsLimit: 0`,
   `EnableAutoExpirationVersionTrim: false`. Offen seit 13.07.2026, **59 Tage**. Einziger
   Schritt, der die Ursache behebt; **zuerst**, vor dem Trim.
2. **Versions-Trim JANS.PROJEKTE**, Potenzial rund **130 GB** (Hochrechnung aus dem Trim vom
   13.08. mit 106 GB; gemessen ist nur dieser). Senkt die Auslastung auf rund 74.6 %.
   ```
   Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE \
     -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
     -Tenant raphaeljans.onmicrosoft.com -Interactive
   New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
   ```
   Nicht `-DeviceLogin`.
3. Erste Papierkorb-Stufe (1.93 GB): Undo-Netz, kein Handlungsbedarf.
4. Tote Sites (zusammen 2 MB): nur aus Ordnungsgründen.

## Sende-Entscheid

**Still beendet.** Kein Grund gerissen: Auslastung 86.91 % (unter 88 %), Delta 0.003 GB/Tag
(unter 3), Restlaufzeit nach der Konvention Wochenschnitt 76 Tage (über 60), Auto-Bereinigung
0 GB, kein Blocker (Connector und NAS erreichbar, alle Sites abfragbar), Donnerstag.

Vorbehalt zum Entscheid: der 14-Tage-Schnitt ergibt 58 Tage und läge unter der Schwelle. Der
Lauf bleibt bei der eingeführten Konvention, weil ein Methodenwechsel an genau dem Tag, an
dem er einen Sendegrund erzeugt, keine Messung wäre, sondern eine Wahl. Raphael wurde gestern
mit 65 Tagen und demselben Ursachenbefund informiert; der heutige Tag bringt keinen neuen
operativen Befund. Der morgige Nachhol-Wert wird die Frage voraussichtlich über Sendegrund b
von selbst stellen.
