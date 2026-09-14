# Tenant-Speicher-Hygiene: Report 14.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST, Station MacBook Pro
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich · heute **Montag, Wochenpflicht** (Sendegrund f)

## Big Points

1. **917.67 GB belegt, 87.07 %**, freier Puffer 136.33 GB. 88-%-Marke **9.85 GB** entfernt.
2. **Delta über vier Tage**, weil die Läufe 11., 12. und 13.09. **gar nicht gestartet** wurden
   (Run-Liste der Task: nach dem 10.09. 20:08 erst wieder heute 20:08, kein Fehlschlag, kein
   Start). +1.62 GB in 4 Tagen, **0.40 GB/Tag**.
3. **Restlaufzeit:** Wochenschnitt 1.37 GB/Tag, rund **99 Tage** (Konvention). Mit dem Tempo
   vor dem Einbruch (14-Tage-Schnitt vom 10.09., 2.36 GB/Tag) rund **58 Tage**. Die Wahrheit
   liegt dazwischen, siehe unten.
4. **Korrektur der Ursachen-Empfehlung.** Die Reports 08. bis 10.09. führten «Tenant-Versionslimit
   auf Automatisch» als offen seit 13.07. Das trifft nicht zu: die Tenant-Einstellung steht
   **seit spätestens 27.07. auf Automatisch** (heute erneut gemessen). Sie wirkt aber laut
   Microsoft **nur auf neue Bibliotheken**. Die sieben genutzten Bibliotheken von
   JANS.PROJEKTE stehen weiterhin **manuell auf 500 Versionen ohne Ablauf** (heute gemessen).
   Der richtige Schritt ist ein anderer Befehl, siehe Phase 2, Punkt 1.
5. Auto-Bereinigung: **keine, 0 GB**. Alle zweiten Papierkorb-Stufen leer.

## Die Versionsrichtlinie: was gemessen ist

- Tenant (`spo tenant settings list`): `EnableAutoExpirationVersionTrim: true`,
  `MajorVersionLimit: 500`, `ExpireVersionsAfterDays: 30`. Identisch mit den Messungen vom
  27.07. und 03.08. (Reports 260727, 260803). Also nie verändert, schon lange «Automatisch».
- Site JANS.PROJEKTE (`spo site list`): `InheritVersionPolicyFromTenant: true`, Site-Felder
  `false / 0 / 0 / 0`. `spo site versionpolicy get`: `defaultTrimMode: inheritTenant`,
  `majorVersionLimit: -1`. Das ist die Vorgabe für **neu angelegte** Bibliotheken der Site.
- Bibliotheken (`spo list list`, BaseTemplate 101): 01 Projekte (30'506 Elemente),
  02 Wettbewerbe (21'649), 03 Studien (32'995), 04 Honorarauftraege (5'715), 05 Transfer (964),
  07 Archiv (24'909), Websiteobjekte (9): **alle `MajorVersionLimit: 500`**, Versionierung an.
- Microsoft Learn, «Set default organization version limits»: die Tenant-Einstellung gilt
  «to all new libraries created». Bestehende Bibliotheken ändert erst
  `Set-SPOSite -EnableAutoExpirationVersionTrim $true -ApplyToExistingDocumentLibraries`
  («Set version limits for a site», learn.microsoft.com/sharepoint/site-version-limits).

Folge: der Trim vom 13.08. hat den Bestand einmalig gekürzt, die Bibliotheken behalten danach
wieder bis zu 500 Versionen je Datei. Das erklärt den Wiederaufbau (Versionsverlauf tenantweit
64.10 GB nach dem Trim, heute **156.02 GB**; 91.92 GB zurück, **86.7 %** der 106 GB).
Die CLI for Microsoft 365 hat keinen Set-Befehl für Versionsrichtlinien (Befehlssuche
geprüft, nur `spo site versionpolicy get`); der Schritt geht also nicht headless.

## Wachstum: Beleg und Plausibilität getrennt

Beleg:

- 939'697 MB heute gegen 938'040 MB am 10.09. 20:10. Summe über die Einzelwerte nachgerechnet,
  identisch.
- Bewegt haben sich JANS.PROJEKTE (+1.67 GB; Versionen +1.99 GB), AD (−0.07 GB), kispi und WE
  (je wenige MB). Die Metrik ist also **nicht eingefroren** wie am 10.09., sie hat sich
  neu berechnet.
- Reihe: +3.96 (08.09.), +4.03 (09.09.), +0.003 (10.09.), **+1.62 über 11. bis 14.09.**
- Wochenschnitt 07.09. 20:13 bis heute: 9.61 GB in 7 Tagen, 1.37 GB/Tag, 99 Tage.
  14-Tage-Schnitt 31.08. bis heute: 24.52 GB, 1.75 GB/Tag, 78 Tage.

Plausibilität (nicht bewiesen): der am 10.09. erwartete Nachhol-Sprung ist ausgeblieben.
Zwei Lesarten passen zu den Zahlen. Entweder hinkt die Metrik weiter nach und der Sprung kommt
noch; oder das Wachstum ist tatsächlich eingebrochen, weil in denselben Tagen weniger
automatisch geschrieben wurde: dieselbe Station hat 11. bis 13.09. auch diese Task nicht
gestartet, und SE, WE, BI, IMMO tragen seit dem 10.09. 22:0x UTC keinen neuen Zeitstempel.
Der Versionszuwachs (+1.99 GB in vier Tagen gegen rund 3.9 GB pro Werktag in der Vorwoche)
spricht eher für die zweite Lesart. Die nächsten zwei Werktage entscheiden es.

Warnmarken: 88 % (927.52 GB) 9.85 GB entfernt · 90 % (948.60 GB) 30.93 GB entfernt.

## Sites mit Belegung

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | 2. Stufe | Letzte Änderung (UTC) |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 639.67 GB | 145.29 GB | 22.7 % | 427 Obj / 1.30 GB | leer | 14.09.2026 15:13 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 10.09.2026 22:04 |
| /sites/AD | 51.84 GB | 3.37 GB | 6.5 % | 35 Obj / 0.01 GB | leer | 11.09.2026 06:24 |
| /sites/PL | 40.15 GB | 3.50 GB | 8.7 % | leer | leer | 29.08.2026 18:56 |
| /sites/kispi | 33.87 GB | 0.34 GB | 1.0 % | 207 Obj / 0.57 GB | leer | 14.09.2026 15:13 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 10.09.2026 22:05 |
| /sites/WE | 9.08 GB | 0.42 GB | 4.6 % | leer | leer | 10.09.2026 22:05 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 01:10 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 01:10 |
| /sites/IMMO | 4.14 GB | 1.56 GB | 37.7 % | 5 Obj / 0.00 GB | leer | 10.09.2026 22:02 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 05.09.2026 17:04 |

Zeitstempel roh in UTC (Monat nullbasiert umgerechnet), Lokalzeit UTC+2. Neun Sites unter
100 MB ohne Papierkorb-Erhebung: PA, Test, zwei AllCompany-Restsites, /search, beide
Root-Sites, WBHafenarealSZ, HLEBWEB.

Versionsverlauf tenantweit **156.02 GB** (17.0 % der Belegung), davon 93.1 % auf JANS.PROJEKTE.

## Klassifizierung

- **Versions-Bloat:** JANS.PROJEKTE 145.29 GB (22.7 %), mehr als das Siebenfache der
  20-GB-Schwelle. IMMO 37.7 % relativ, absolut 1.56 GB ohne Bedeutung.
- **Papierkörbe:** alle zweiten Stufen leer (11 Sites), erhoben per Haiku-Subagent
  (27 Aufrufe, nur Rohwerte). Weil gleichförmig, im Hauptkontext nachgemessen:
  JANS.PROJEKTE 0, SE 0. Erste Stufen 684 Objekte / 1.93 GB, Summen im Hauptkontext gerechnet.
- **Tote/leere Sites:** unverändert WBHafenarealSZ (0 MB, letzte Änderung 06.10.2025), Test,
  zwei AllCompany-Restsites; keine über 18 Monate.

## Durchgeführte Auto-Bereinigung

**Keine, 0 GB.** Kein `clear` abgesetzt, keine zweite Stufe hatte Inhalt. Erste Stufen
unangetastet.

## Offene Phase-2-Empfehlungen (Raphaels interaktiver Login)

1. **Automatik auf die bestehenden Bibliotheken von JANS.PROJEKTE anwenden.** Einziger Schritt,
   der den Wiederaufbau stoppt; **zuerst**, vor dem Trim. SharePoint Online Management Shell,
   als SharePoint-Administrator:
   ```
   Connect-SPOService -Url https://raphaeljans-admin.sharepoint.com
   Set-SPOSite -Identity https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
     -EnableAutoExpirationVersionTrim $true -ApplyToExistingDocumentLibraries
   Get-SPOSiteVersionPolicyJobProgress -Identity https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE
   ```
   Kontrolle danach headless: `m365 spo list list --webUrl …/JANS.PROJEKTE --properties
   "Title,MajorVersionLimit"` (die Bibliotheken dürfen nicht mehr auf manuell 500 stehen).
   Admin-URL nach Konvention abgeleitet, nicht gemessen.
2. **Versions-Trim JANS.PROJEKTE**, Potenzial rund **130 GB** (Hochrechnung aus dem Trim vom
   13.08. mit 106 GB; gemessen ist nur dieser). Senkt die Auslastung auf rund 74.7 %.
   ```
   Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE \
     -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
     -Tenant raphaeljans.onmicrosoft.com -Interactive
   New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
   ```
   Nicht `-DeviceLogin`.
3. Erste Papierkorb-Stufe (1.93 GB): Undo-Netz, kein Handlungsbedarf.
4. Tote Sites (zusammen 2 MB): nur aus Ordnungsgründen.

## Betrieb (ohne Speicherwirkung)

- Ausgefallene Läufe 11. bis 13.09.: die Task wurde auf dem MacBook Pro nicht gestartet
  (keine Session, kein Fehler). Vorher schon 05./06.09. Muster: die Station bzw. die
  Desktop-App lief in diesen Fenstern nicht. Gehört an den Betrieb.
- Skill `tenant-hygiene`, Abschnitt Go-forward, im selben Lauf präzisiert: er prüfte nur die
  Tenant-Ebene, was die falsche Empfehlung der Vorreports erzeugt hat.

## Sende-Entscheid

**Gemeldet**, Sendegrund **f (Montag, Wochenpflicht)**. Übrige Gründe nicht gerissen:
87.07 % (unter 88 %), 0.40 GB/Tag (unter 3), Restlaufzeit nach Konvention 99 Tage (über 60),
0 GB bereinigt, kein Blocker. Operativ neu: die korrigierte Ursache (Punkt 4 der Big Points).
