# Tenant-Speicher-Hygiene — Report 14.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:08 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: taeglich (seit 13.08.2026)

## Kernbefund: der Versions-Trim hat gewirkt

Raphael hat den Versions-Trim am 13.08.2026 um 23:26 interaktiv angestossen. Dieser Lauf
ist die erste Nachmessung, exakt 24 Stunden nach dem letzten Messpunkt. Der Tenant hat
**109.2 GB zurueckgewonnen**, die Auslastung faellt von 88.4 % auf **78.1 %**. Der seit
dem 13.07.2026 offene Dauerbefund ist damit im Kern erledigt.

## Tenant-Summe

- Belegt: **823.0 GB** (842'794 MB) ueber 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **78.1 %**, freier Puffer **231.0 GB**
- Delta zum Vorreport (13.08.2026, 20:08, 932.2 GB): **-109.2 GB in genau 24 Stunden**

Der Rueckgang ist kein Messrauschen und kein Nachlauf-Artefakt, sondern deckt sich
positionsgenau mit den beiden angestossenen Trim-Jobs:

| Position | 13.08. 20:08 | 14.08. 20:08 | Delta |
|---|---|---|---|
| JANS.PROJEKTE Versionsverlauf | 159.8 GB | 53.59 GB | **-106.2 GB** |
| JANS.PROJEKTE Site gesamt | 652.7 GB | 546.7 GB | -106.0 GB |
| IMMO Versionsverlauf | 4.72 GB | 1.53 GB | **-3.19 GB** |
| IMMO Site gesamt | 7.21 GB | 4.03 GB | -3.18 GB |
| Tenant gesamt | 932.2 GB | 823.0 GB | -109.2 GB |

Die beiden Versions-Deltas erklaeren zusammen 109.4 GB und damit den gesamten
Tenant-Rueckgang. Die uebrigen Sites sind stabil, der normale Nutzdaten-Zuwachs des Tages
liegt im Zehntel-GB-Bereich (kispi +0.11 GB, BI -0.05 GB).

### Korrektur am Vorreport: der IMMO-Trim ist doch gelaufen

Der Nachtrag vom 13.08. haelt fest, der IMMO-Befehl sei im Terminal mit der naechsten
Zeile zusammengeklebt worden und es habe keine Erfolgsmeldung gegeben, der IMMO-Trim sei
folglich offen. Die Messung widerspricht dem: IMMO hat **3.19 GB Versionsverlauf
verloren**, exakt das prognostizierte Potenzial. Der Befehl hat also ausgefuehrt, obwohl
die Rueckmeldung im Terminal unterging. **Die fehlende Erfolgsmeldung war kein Beleg fuer
einen fehlgeschlagenen Lauf** — der Beleg ist die Nachmessung. Punkt 2 der offenen
Phase-2-Empfehlungen entfaellt damit.

### Der Job laeuft serverseitig weiter

Die Serverantwort lautete «Versions specified will be permanently deleted in the upcoming
days». Ein Teil der Loeschung kann noch ausstehen, und `StorageUsage` laeuft zusaetzlich
bis zu 24 h nach. Die 53.59 GB Restversionen auf JANS.PROJEKTE koennen also noch weiter
sinken. Die naechsten Laeufe beobachten das; ein erneuter Trim ist vorerst nicht noetig.

## Restlaufzeit-Hochrechnung

Ein Delta pro Tag laesst sich aus einem Bereinigungstag nicht bilden, der heutige Wert ist
negativ. Zwei Szenarien fuer den Puffer von 231.0 GB:

- **Reines Nutzdatenwachstum** (rund 0.27 GB/Tag, aus dem Zehntagesschnitt ohne
  Versionen): rund **850 Tage**.
- **Wachstum wie bisher inklusive Versionsverlauf** (2.76 GB/Tag, der belastbare Wert der
  letzten zehn Tage): rund **84 Tage**, also Anfang November 2026.

Welches der beiden gilt, entscheidet ein einziger offener Punkt: das Tenant-Versionslimit
steht weiterhin auf «Manuell». Solange es dort steht, waechst der Versionsverlauf nach
demselben Muster nach, und der heute gewonnene Puffer ist in rund drei Monaten wieder
aufgezehrt. Der Trim waere dann Dauerpflicht statt einmaliger Bereinigung.

Die 90-%-Marke (948.6 GB) ist mit 125.6 GB Abstand vorerst ausser Reichweite.

## Sites mit Belegung (nach Groesse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 546.7 GB | 53.59 GB | 311 Obj / 1.22 GB | leer | 14.08.2026 |
| /sites/SE | 108.1 GB | 1.24 GB | leer | leer | 07.08.2026 |
| /sites/AD | 53.2 GB | 3.37 GB | 29 Obj / 0.01 GB | leer | 14.08.2026 |
| /sites/PL | 40.2 GB | 3.50 GB | leer | leer | 12.08.2026 |
| /sites/kispi | 30.9 GB | 0.18 GB | 102 Obj / 0.20 GB | leer | 14.08.2026 |
| /sites/BI | 18.3 GB | ~0 GB | leer | leer | 07.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | leer | leer | 07.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.03 GB | 1.53 GB | 2 Obj / 0.00 GB | leer | 13.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung gefuehrt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
OneDrive-Root, WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

## Klassifizierung

### Versions-Bloat

Erstmals seit Beginn der Messreihe **keine Site ueber der 20-GB-Schwelle**.

- JANS.PROJEKTE: 53.59 GB Versionen auf 546.7 GB Site, **9.8 %** der Belegung. Vor dem
  Trim waren es 24.5 %. Damit unter beiden Schwellen und kein Hebel mehr.
- IMMO: 1.53 GB auf 4.03 GB Site, **38 %**. Anteilig weiterhin der schlechteste Wert im
  Tenant, absolut ohne Bedeutung. Kein Handlungsbedarf.
- Alle uebrigen unveraendert unauffaellig: PL 8.7 %, AD 6.3 %, SE 1.1 %.

### Papierkoerbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites ueber 100 MB geprueft, 0 Objekte.
- Das ist der **sechste Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08.
- Nach Rule `auto-verbesserungen` 260729b wurde der gleichfoermige Subagenten-Befund an
  zwei Sites im Hauptkontext selbst nachgemessen (JANS.PROJEKTE, kispi), beide bestaetigt
  0 Objekte. Diesmal keine Vertauschung im Agenten-Befund, anders als am 13.08.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **454 Objekte / 1.48 GB** tenantweit,
  davon JANS.PROJEKTE 311 Obj / 1.22 GB und kispi 102 Obj / 0.20 GB. Beide leicht
  gewachsen (+16 bzw. +10 Objekte gegenueber gestern), kein Hebel.

### Tote/leere Sites (Hinweis, Phase 2)

Unveraendert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
ueberschreitet die 18-Monats-Schwelle.

## Durchgefuehrte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet. Der
gesamte Rueckgang dieses Laufs stammt aus Raphaels interaktivem Phase-2-Trim, nicht aus
Phase 1.

## Offene Phase-2-Empfehlungen

| Aktion | Potenzial | Voraussetzung | Stand |
|---|---|---|---|
| **Tenant-Versionslimit auf «Automatisch»** | verhindert das Nachwachsen von rund 2.5 GB/Tag | Admin Center, Einstellungen, Versionsverlauf-Limits | offen seit 13.07.2026, jetzt der wichtigste Punkt |
| Erste Papierkorb-Stufe JANS.PROJEKTE | 1.22 GB | `recyclebinitem remove --ids` in 1000er-Batches | offen, kein Druck |
| Leere Test-/Junk-Sites loeschen | ~0 GB (Hygiene) | Sichtung | offen, kein Druck |

**Erledigt und aus der Liste genommen:** Versions-Trim JANS.PROJEKTE (106.2 GB realisiert)
und Versions-Trim IMMO (3.19 GB realisiert), beide am 13.08.2026 durch Raphael.

Mit dem Trim ist das **Tenant-Versionslimit vom zweitrangigen zum wichtigsten offenen
Punkt** geworden. Es entscheidet, ob die gewonnenen 109 GB dauerhaft frei bleiben oder in
rund drei Monaten wieder belegt sind. Der Weg fuehrt ueber das SharePoint Admin Center und
laesst sich nicht headless erledigen.

## Sende-Entscheid

**Keine der sechs formalen Schwellen greift:** Auslastung 78.1 % (unter 88 %), Delta
negativ (kein Wachstumssprung), Restlaufzeit 84 bis 850 Tage (ueber 60), Auto-Bereinigung
0 GB, kein Blocker, heute ist Freitag.

**Gemeldet wird trotzdem**, aus zwei Gruenden, die dem Zweck der Schwellen entsprechen:
Raphael hat gestern Abend selbst gehandelt und wartet auf die Nachmessung seines Eingriffs,
und der Vorreport enthaelt einen Befund zu IMMO, der sich als falsch erwiesen hat und
korrigiert gehoert. Ein Zustandswechsel dieser Groessenordnung — ein seit einem Monat
eskalierender Dauerbefund faellt weg — ist die Gegenrichtung desselben Anliegens, das
Schwelle f) schuetzt.
