# Tenant-Speicher-Hygiene: Report 15.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST, Station MacBook Pro
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich · heute Dienstag, keine Wochenpflicht

## Big Points

1. **825.49 GB belegt, 78.32 %**, freier Puffer 228.51 GB. 88-%-Marke 102.03 GB entfernt.
2. **Der Versions-Trim hat gewirkt: −92.18 GB in 24 h** (Vorreport 14.09. 20:10: 917.67 GB,
   87.07 %). Ausgelöst von Raphael heute um 17:3x (interaktiv, delegiert,
   `-MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5`, Register `logbuch/fristen.md`).
3. **Versionsverlauf JANS.PROJEKTE 145.29 → 52.77 GB**, praktisch derselbe Sockel wie nach
   dem Trim vom 13.08. (53.59 GB). Tenantweit 156.02 → 63.50 GB.
4. **Noch nicht wirksam: die Bibliotheks-Richtlinie.** Alle zehn versionierten Bibliotheken von
   JANS.PROJEKTE stehen um 20:10 weiterhin auf `MajorVersionLimit: 500`. Der Richtlinien-Job
   von 17:28 hat bis 24 h Zeit; die vorgesehene Gegenmessung ist ab 16.09. 17:30. Kein Befund,
   nur noch nicht fällig.
5. **Restlaufzeit 97 bis 167 Tage** (Vortrim-Tempo 2.36 bzw. 1.37 GB/Tag). Die Richtlinie sollte
   den Versions-Wiederaufbau zusätzlich bremsen, also eher das obere Ende.
6. Auto-Bereinigung: **keine, 0 GB**. Alle zweiten Papierkorb-Stufen leer.

## Wachstum: Beleg und Plausibilität getrennt

Beleg:

- Tenant-Summe `sum([].StorageUsage)`: 845'305 MB heute gegen 939'697 MB am 14.09. 20:10,
  Zeitraum genau ein Tag. Summe über die Einzelwerte nachgerechnet, identisch.
- JANS.PROJEKTE Belegung −92.44 GB, davon Versionen −92.52 GB. Die Nutzdaten der Site sind also
  um rund +0.08 GB gewachsen. Übrige Bewegung: kispi +0.27 GB, alle anderen Sites unverändert
  (Abweichung unter 0.01 GB).
- Die vom Trim gelöschten Versionen landen nicht im Papierkorb: die erste Stufe von JANS.PROJEKTE
  zählt 428 Objekte / 1.30 GB, gestern 427 / 1.30 GB.

Plausibilität (nicht bewiesen): Microsoft meldet den Trim als «in the upcoming days», die Metrik
zeigt aber schon nach rund zweieinhalb Stunden den Sockel vom 13.08. Der Job ist damit
wahrscheinlich weitgehend durch. Ein kleiner Nachlauf in den nächsten Tagen ist möglich.

Restlaufzeit: das heutige Delta ist negativ und taugt nicht als Wachstumsrate. Hochgerechnet wird
darum mit dem Tempo vor dem Trim: Wochenschnitt bis 14.09. 1.37 GB/Tag → **167 Tage**,
14-Tage-Schnitt 1.75 GB/Tag → 131 Tage, Tempo vor dem Einbruch vom 10.09. 2.36 GB/Tag → 97 Tage.
Welches Tempo sich nach dem Trim einstellt, zeigen erst die nächsten Läufe.

Warnmarken: 88 % (927.52 GB) 102.03 GB entfernt · 90 % (948.60 GB) 123.11 GB entfernt.

## Sites mit Belegung

| Site | Belegung | Versionen | Anteil | Papierkorb 1. Stufe | 2. Stufe | Letzte Änderung (UTC) |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 547.23 GB | 52.77 GB | 9.6 % | 428 Obj / 1.30 GB | leer | 15.09.2026 16:39 |
| /sites/SE | 108.14 GB | 1.24 GB | 1.1 % | leer | leer | 10.09.2026 22:04 |
| /sites/AD | 51.84 GB | 3.37 GB | 6.5 % | 35 Obj / 0.01 GB | leer | 15.09.2026 15:57 |
| /sites/PL | 40.15 GB | 3.50 GB | 8.7 % | leer | leer | 14.09.2026 22:00 |
| /sites/kispi | 34.14 GB | 0.34 GB | 1.0 % | 207 Obj / 0.57 GB | leer | 15.09.2026 16:39 |
| /sites/BI | 18.25 GB | ~0 GB | 0.0 % | leer | leer | 10.09.2026 22:05 |
| /sites/WE | 9.08 GB | 0.42 GB | 4.6 % | leer | leer | 10.09.2026 22:05 |
| /sites/MO | 6.95 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 01:10 |
| /sites/WO | 5.33 GB | 0.31 GB | 5.7 % | leer | leer | 07.08.2026 01:10 |
| /sites/IMMO | 4.14 GB | 1.56 GB | 37.7 % | 5 Obj / 0.00 GB | leer | 15.09.2026 14:54 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 0.2 % | 10 Obj / 0.05 GB | leer | 05.09.2026 17:04 |

Zeitstempel roh in UTC (Monat nullbasiert umgerechnet), Lokalzeit UTC+2. Neun Sites unter
100 MB ohne Papierkorb-Erhebung: PA, Test, zwei AllCompany-Restsites, /search, beide
Root-Sites, WBHafenarealSZ, HLEBWEB.

Versionsverlauf tenantweit **63.50 GB** (7.7 % der Belegung), davon 83.1 % auf JANS.PROJEKTE.

## Bibliotheks-Ebene JANS.PROJEKTE (gemessen 20:10)

`m365 spo list list --filter "BaseTemplate eq 101"`: 01 Projekte (30'668 Elemente),
02 Wettbewerbe (21'649), 03 Studien (32'995), 04 Honorarauftraege (5'715), 05 Transfer (964),
06 Referenzen (0), 07 Archiv (24'909), Dokumente (0), Formatbibliothek (0), Websiteobjekte (9):
**alle `MajorVersionLimit: 500`**, Versionierung an. Formularvorlagen ohne Versionierung.
Gegenüber dem 14.09. unverändert. Der Richtlinien-Job von 17:28 läuft bis 24 h, sein Status ist
app-only nicht lesbar (Sackgasse in `connectors/WEGE.md`, Nachtrag 15.09.).

## Klassifizierung

- **Versions-Bloat:** JANS.PROJEKTE 52.77 GB, formal noch über der 20-GB-Schwelle, aber das ist
  der Sockel nach dem Trim auf fünf Versionen und kein offener Hebel mehr. IMMO 37.7 % relativ,
  absolut 1.56 GB ohne Bedeutung.
- **Papierkörbe:** alle zweiten Stufen leer (11 Sites), erhoben per Haiku-Subagent (nur
  Rohwerte). Weil gleichförmig, im Hauptkontext nachgemessen: JANS.PROJEKTE 0, kispi 0.
  Erste Stufen 685 Objekte / 1.93 GB, Summen im Hauptkontext gerechnet.
- **Tote/leere Sites:** unverändert WBHafenarealSZ (0 MB, letzte Änderung 06.10.2025), Test,
  zwei AllCompany-Restsites; keine über 18 Monate.

## Durchgeführte Auto-Bereinigung

**Keine, 0 GB.** Kein `clear` abgesetzt, keine zweite Stufe hatte Inhalt. Erste Stufen
unangetastet.

## Offene Phase-2-Empfehlungen

1. **Gegenmessung der Bibliotheks-Richtlinie ab 16.09. 17:30** (headless, im nächsten Lauf):
   `MajorVersionLimit` der zehn Bibliotheken darf nicht mehr auf manuell 500 stehen. Steht es
   dann noch so, delegiert `Get-PnPSiteVersionPolicyStatus` prüfen (Raphaels Anmeldung).
2. Versions-Trim: **erledigt**, kein weiteres Potenzial von Gewicht (Sockel 52.77 GB bei fünf
   Versionen).
3. Erste Papierkorb-Stufe (1.93 GB): Undo-Netz, kein Handlungsbedarf.
4. Tote Sites (zusammen 2 MB): nur aus Ordnungsgründen.

## Register

Datierter Nachtrag an der bestehenden Zeile in `logbuch/fristen.md` (Speicherpool/Versions-Trim)
gesetzt: Trim-Wirkung gemessen, offen nur noch die Richtlinien-Gegenmessung ab 16.09. 17:30.

## Sende-Entscheid

**Still beendet.** Kein Sendegrund gerissen: 78.32 % (unter 88 %), Delta −92.18 GB/Tag (kein
Wachstumssprung), Restlaufzeit 97 bis 167 Tage (über 60), 0 GB auto-bereinigt, kein Blocker,
Dienstag. Die Trim-Wirkung steht im Register, dort liest sie der Hub-Chef.
