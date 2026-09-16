# Tenant-Speicher-Hygiene: Report 16.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST, Station MacBook Pro
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich · heute Mittwoch, keine Wochenpflicht

## Big Points

1. **826.75 GB belegt, 78.44 %**, freier Puffer 227.25 GB. 88-%-Marke 100.77 GB entfernt.
2. **Delta +1.25 GB über genau einen Tag** (Vorreport 15.09. 20:10: 825.49 GB, 78.32 %). Ruhiger
   Tag, kein Wachstumssprung.
3. **Der Zuwachs besteht zu 78 % aus Versionen**: von +1.25 GB tenantweit entfallen +0.98 GB auf
   den Versionsverlauf von JANS.PROJEKTE. Echter Nutzdaten-Zuwachs des ganzen Tenants rund
   +0.27 GB.
4. **Die Bibliotheks-Richtlinie greift nicht sichtbar — die 24-h-Frist ist abgelaufen.** Alle zehn
   versionierten Bibliotheken von JANS.PROJEKTE stehen um 20:15 weiterhin auf
   `MajorVersionLimit: 500`, gesetzt wurde die Richtlinie am 15.09. um 17:28. Das ist der Befund
   der für heute ab 17:30 vorgesehenen Gegenmessung. Nächster Schritt: delegierte Statusabfrage.
5. **Restlaufzeit 130 bis 181 Tage.** Mit dem heutigen Tempo 181 Tage, mit dem 14-Tage-Schnitt
   130 Tage.
6. Auto-Bereinigung: **keine, 0 GB**. Alle zweiten Papierkorb-Stufen leer.

## Wachstum: Beleg und Plausibilität getrennt

Beleg:

- Tenant-Summe `sum([].StorageUsage)`: 846'588 MB heute gegen 845'305 MB am 15.09. 20:10,
  Zeitraum **genau ein Tag**. Summe über die Einzelwerte nachgerechnet, identisch.
- JANS.PROJEKTE Belegung 547.23 → 548.42 GB (+1.19 GB), davon `VersionSize` 52.77 → 53.75 GB
  (+0.98 GB). Die Nutzdaten dieser Site wuchsen also um rund +0.21 GB.
- Zweite Bewegung: kispi +0.11 GB. SE −0.04 GB. Alle übrigen Sites unverändert (Abweichung
  unter 0.01 GB).
- Papierkorb erste Stufe tenantweit 689 Objekte / 1.93 GB gegen 685 / 1.93 GB gestern.

Plausibilität (nicht bewiesen): dass drei Viertel des Tageszuwachses wieder Versionen sind, passt
zum Muster vor dem Trim und ist der Grund, weshalb die Bibliotheks-Richtlinie überhaupt gesetzt
wurde. Ein einzelner Tag trägt diesen Schluss aber nicht; ob sich der Versions-Wiederaufbau auf
dem Niveau von rund 1 GB/Tag einpendelt, zeigen erst die nächsten Läufe. Das Vortrim-Tempo lag bei
2 bis 2.5 GB/Tag Versionszuwachs.

Restlaufzeit: heutiges Delta 1.25 GB/Tag → **181 Tage**; 14-Tage-Schnitt 1.75 GB/Tag → 130 Tage;
Tempo vor dem Einbruch vom 10.09. 2.36 GB/Tag → 96 Tage. Der Wochenschnitt ist derzeit nicht
brauchbar, weil der Trim vom 15.09. mit −92.18 GB darin liegt.

Warnmarken: 88 % (927.52 GB) 100.77 GB entfernt · 90 % (948.60 GB) 121.85 GB entfernt.

## Sites mit Belegung

| Site | Belegung | Delta 24 h | Versionen | Anteil | Papierkorb 1. Stufe | 2. Stufe | Letzte Änderung (UTC) |
|---|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 548.42 GB | +1.19 GB | 53.75 GB | 9.8 % | 429 Obj / 1.30 GB | leer | 16.09.2026 08:28 |
| /sites/SE | 108.10 GB | −0.04 GB | 1.24 GB | 1.1 % | leer | leer | 10.09.2026 22:04 |
| /sites/AD | 51.84 GB | 0.00 GB | 3.37 GB | 6.5 % | 36 Obj / 0.01 GB | leer | 16.09.2026 10:47 |
| /sites/PL | 40.15 GB | 0.00 GB | 3.50 GB | 8.7 % | leer | leer | 14.09.2026 22:00 |
| /sites/kispi | 34.25 GB | +0.11 GB | 0.34 GB | 1.0 % | 209 Obj / 0.57 GB | leer | 16.09.2026 10:51 |
| /sites/BI | 18.25 GB | 0.00 GB | ~0 GB | 0.0 % | leer | leer | 10.09.2026 22:05 |
| /sites/WE | 9.08 GB | 0.00 GB | 0.42 GB | 4.6 % | leer | leer | 10.09.2026 22:05 |
| /sites/MO | 6.95 GB | 0.00 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 01:10 |
| /sites/WO | 5.33 GB | 0.00 GB | 0.31 GB | 5.8 % | leer | leer | 07.08.2026 01:10 |
| /sites/IMMO | 4.14 GB | 0.00 GB | 1.56 GB | 37.7 % | 5 Obj / 0.00 GB | leer | 16.09.2026 02:34 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | 0.00 GB | ~0 GB | 0.0 % | 10 Obj / 0.05 GB | leer | 05.09.2026 17:04 |

Zeitstempel roh in UTC (Monat nullbasiert umgerechnet), Lokalzeit UTC+2. Neun Sites unter
100 MB ohne Papierkorb-Erhebung: PA, Test, zwei AllCompany-Restsites, /search, beide
Root-Sites, WBHafenarealSZ, HLEBWEB. Insgesamt 20 Sites.

Versionsverlauf tenantweit **64.49 GB** (7.8 % der Belegung), davon 83.3 % auf JANS.PROJEKTE.

## Gegenmessung Bibliotheks-Richtlinie JANS.PROJEKTE (gemessen 20:15)

Dies war die für heute ab 17:30 vorgesehene Gegenmessung aus dem Report vom 15.09.

`m365 spo list list --webUrl .../sites/JANS.PROJEKTE --filter "BaseTemplate eq 101"`:

| Bibliothek | Elemente | MajorVersionLimit | Versionierung |
|---|---|---|---|
| 01 Projekte | 30'735 | 500 | an |
| 02 Wettbewerbe | 21'649 | 500 | an |
| 03 Studien | 32'995 | 500 | an |
| 04 Honorarauftraege | 5'715 | 500 | an |
| 05 Transfer | 964 | 500 | an |
| 06 Referenzen | 0 | 500 | an |
| 07 Archiv | 24'909 | 500 | an |
| Dokumente | 0 | 500 | an |
| Formatbibliothek | 0 | 500 | an |
| Websiteobjekte | 9 | 500 | an |
| Formularvorlagen | 0 | 0 | aus |

**Gemessener Stand: unverändert 500 bei allen zehn versionierten Bibliotheken**, gegenüber dem
14.09. und dem 15.09. identisch. Der Richtlinien-Job `7fc93ccd-4e72-4a70-a711-2b1f9bebf8db` wurde
am 15.09. um 17:28 gesetzt, das genannte 24-h-Fenster lief also um 16.09. 17:28 ab; gemessen wurde
2 h 47 nach Ablauf.

**Was das belegt und was nicht.** Belegt ist allein, dass die Bibliotheks-Grenzen unverändert auf
manuell 500 stehen. **Nicht** belegt ist, dass der Job fehlgeschlagen ist: sein Status ist app-only
nicht lesbar (dokumentierte Sackgasse in `connectors/WEGE.md`, Nachtrag 15.09.), und es ist
denkbar, dass die automatische Ablauf-Trimmung auf Site-Ebene wirkt, ohne das Feld
`MajorVersionLimit` der einzelnen Bibliothek zu überschreiben. Beides lässt sich hier nicht
auseinanderhalten. Der Versionszuwachs von +0.98 GB an genau diesem Tag spricht eher dafür, dass
noch nichts bremst, ist aber für sich allein kein Beweis.

**Nächster Schritt wie am 15.09. vorgesehen:** `Get-PnPSiteVersionPolicyStatus` delegiert prüfen
(Raphaels Anmeldung), da app-only verweigert.

## Klassifizierung

- **Versions-Bloat:** JANS.PROJEKTE 53.75 GB, formal über der 20-GB-Schwelle, aber das ist der
  Sockel nach dem Trim auf fünf Versionen plus ein Tag Wiederaufbau, kein sofort hebbares
  Potenzial. IMMO 37.7 % relativ, absolut 1.56 GB ohne Bedeutung.
- **Papierkörbe:** alle zweiten Stufen leer (11 Sites), erhoben per Haiku-Subagent (nur Rohwerte).
  Weil gleichförmig, im Hauptkontext nachgemessen: JANS.PROJEKTE 0, AD 0 (Rule
  `auto-verbesserungen` 260729b). Erste Stufen 689 Objekte / 1.93 GB, Summen im Hauptkontext
  gerechnet.
- **Tote/leere Sites:** unverändert WBHafenarealSZ (0 MB, letzte Änderung 06.10.2025), Test, zwei
  AllCompany-Restsites; keine über 18 Monate.

## Durchgeführte Auto-Bereinigung

**Keine, 0 GB.** Kein `clear` abgesetzt, keine zweite Stufe hatte Inhalt. Erste Stufen
unangetastet.

## Offene Phase-2-Empfehlungen

1. **Status der Bibliotheks-Richtlinie delegiert prüfen** (interaktiv, Raphaels Anmeldung), da die
   Bibliotheks-Grenzen nach Ablauf des 24-h-Fensters unverändert auf 500 stehen:
   `Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f -Tenant raphaeljans.onmicrosoft.com -Interactive`
   (**nicht** `-DeviceLogin`), dann `Get-PnPSiteVersionPolicyStatus`. Zeigt der Job einen Fehler,
   `Set-PnPSiteVersionPolicy -EnableAutoExpirationVersionTrim $true -ApplyToExistingDocumentLibraries`
   wiederholen.
2. Versions-Trim: **keine Wiederholung nötig**, Sockel 53.75 GB bei fünf Versionen. Ein neuer Trim
   lohnt erst, wenn der Versionsverlauf wieder deutlich anwächst — beobachten, ob sich das heutige
   Tempo von rund 1 GB/Tag hält.
3. Erste Papierkorb-Stufe (1.93 GB): Undo-Netz, kein Handlungsbedarf.
4. Tote Sites (zusammen 2 MB): nur aus Ordnungsgründen.

## Register

Datierter Nachtrag an der bestehenden Zeile in `logbuch/fristen.md` (Speicherpool/Versions-Trim)
gesetzt: Gegenmessung gefahren, Bibliotheks-Grenzen unverändert 500, offen die delegierte
Statusabfrage.

## Sende-Entscheid

**Still beendet.** Kein Sendegrund gerissen: 78.44 % (unter 88 %), Delta +1.25 GB/Tag (unter
3 GB/Tag), Restlaufzeit 130 bis 181 Tage (über 60), 0 GB auto-bereinigt, kein Blocker im Sinn der
Schwelle (Connector, NAS und alle Sites antworteten, kein `clear` nötig), Mittwoch. Der offene
Punkt aus Ziffer 1 ist Hub-Infrastruktur ohne Aussenwirkung und steht im Register, dort liest ihn
der Hub-Chef.
