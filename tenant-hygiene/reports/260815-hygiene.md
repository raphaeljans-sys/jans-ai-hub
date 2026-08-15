# Tenant-Speicher-Hygiene — Report 15.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: taeglich (seit 13.08.2026)

## Kernbefund: der Tenant steht still

Erster voller Tag nach Raphaels Versions-Trim vom 13.08. Der Tenant hat in 24 Stunden
**18 MB** zugelegt, das sind 0.02 GB. Kein Nachwachsen des Versionsverlaufs messbar, keine
Bewegung in den Papierkoerben, keine Site mit nennenswertem Zuwachs. Die 109 GB, die der
Trim freigemacht hat, sind unangetastet geblieben.

Ein Samstag ist als Beobachtungstag allerdings wenig aussagekraeftig — die entscheidende
Frage, ob der Versionsverlauf unter dem weiterhin auf «Manuell» stehenden Tenant-Limit
wieder anwaechst, beantworten erst die Werktage der kommenden Woche.

## Tenant-Summe

- Belegt: **823.1 GB** (842'812 MB) ueber 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **78.1 %**, freier Puffer **230.9 GB**
- Delta zum Vorreport (14.08.2026, 20:08, 842'794 MB): **+18 MB in 24.0 Stunden**,
  also **+0.02 GB/Tag**

Die Summe stammt aus zwei unabhaengigen Abfragen (Einzelwerte aufaddiert und
`sum([].StorageUsage)`), beide liefern 842'812 MB.

## Restlaufzeit-Hochrechnung

Aus einem einzelnen Tag mit +0.02 GB laesst sich keine belastbare Rate bilden — sie wuerde
auf mehr als 10'000 Tage hochrechnen und waere reine Fiktion. Es bleiben deshalb die beiden
Szenarien des Vorreports, gerechnet auf den heutigen Puffer von 230.9 GB:

- **Reines Nutzdatenwachstum** (rund 0.27 GB/Tag, Zehntagesschnitt ohne Versionen):
  rund **855 Tage**.
- **Wachstum inklusive Versionsverlauf wie vor dem Trim** (2.76 GB/Tag): rund **84 Tage**,
  also Anfang November 2026.

Der heutige Nullwert ist ein erstes, schwaches Indiz fuer das obere Szenario, mehr nicht.
Die 90-%-Marke (948.6 GB) liegt 125.5 GB entfernt.

## Sites mit Belegung (nach Groesse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 546.70 GB | 53.59 GB | 311 Obj / 1.22 GB | leer | 15.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | leer | leer | 07.08.2026 |
| /sites/AD | 53.20 GB | 3.37 GB | 29 Obj / 0.01 GB | leer | 15.08.2026 |
| /sites/PL | 40.20 GB | 3.50 GB | leer | leer | 12.08.2026 |
| /sites/kispi | 30.91 GB | 0.18 GB | 102 Obj / 0.20 GB | leer | 14.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | leer | leer | 07.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | leer | leer | 07.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.03 GB | 1.53 GB | 2 Obj / 0.00 GB | leer | 13.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung gefuehrt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
OneDrive-Root, WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **64.1 GB** (7.8 % der Belegung).

## Klassifizierung

### Versions-Bloat

Keine Site ueber der 20-GB-Schwelle, zweiter Lauf in Folge.

- JANS.PROJEKTE: 53.59 GB auf 546.70 GB, **9.8 %**. Gegenueber gestern rechnerisch
  unveraendert — der Job aus dem Trim vom 13.08. hat keine weiteren Versionen mehr
  abgeraeumt, die angekuendigte Nachlaufloeschung ist entweder abgeschlossen oder steht
  noch aus.
- IMMO: 1.53 GB auf 4.03 GB, **38.1 %**. Reisst die 25-%-Schwelle weiterhin, absolut ohne
  Bedeutung. Kein Handlungsbedarf.
- Uebrige unauffaellig: PL 8.7 %, AD 6.3 %, SE 1.1 %, kispi 0.6 %.

### Papierkoerbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites ueber 100 MB geprueft, 0 Objekte.
- **Siebter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08. (Testlauf),
  13.08. (Nachlauf), 14.08., 15.08.
- Nach Rule `auto-verbesserungen` 260729b wurde der gleichfoermige Subagenten-Befund an
  zwei Sites im Hauptkontext selbst nachgemessen (JANS.PROJEKTE, AD), beide bestaetigt
  0 Objekte.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **454 Objekte / 1.48 GB** tenantweit.
  Objektzahl und Verteilung sind gegenueber gestern **identisch** (311 / 29 / 102 / 10 / 2)
  — an diesem Tag wurde im Tenant nichts geloescht.

### Tote/leere Sites (Hinweis, Phase 2)

Unveraendert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
ueberschreitet die 18-Monats-Schwelle.

## Durchgefuehrte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen

| Aktion | Potenzial | Voraussetzung | Stand |
|---|---|---|---|
| **Tenant-Versionslimit auf «Automatisch»** | verhindert das Nachwachsen von bis zu 2.5 GB/Tag | Admin Center, Einstellungen, Versionsverlauf-Limits | offen seit 13.07.2026, weiterhin der wichtigste Punkt |
| Erste Papierkorb-Stufe JANS.PROJEKTE | 1.22 GB | `recyclebinitem remove --ids` in 1000er-Batches | offen, kein Druck |
| Leere Test-/Junk-Sites loeschen | ~0 GB (Hygiene) | Sichtung | offen, kein Druck |

Ein erneuter Versions-Trim ist nicht angezeigt: mit 53.59 GB auf JANS.PROJEKTE liegt der
Bestand unter beiden Bloat-Schwellen, und ein Trim direkt nach dem letzten haette kaum
Substanz zum Abraeumen. Der Hebel liegt jetzt allein beim Tenant-Limit, das den
Wiederaufbau verhindert. Falls doch:

```
Connect-PnPOnline -Url <site> -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

(NICHT `-DeviceLogin`.)

## Sende-Entscheid

**Keine der sechs Schwellen greift:** Auslastung 78.1 % (unter 88 %), Delta +0.02 GB/Tag
(unter 3), Restlaufzeit 84 bis 855 Tage (ueber 60), Auto-Bereinigung 0 GB, kein Blocker,
heute ist Samstag (Wochenpflicht greift am Montag).

**Still beendet.** Der Lauf ist vollstaendig durchgefuehrt, der Report geschrieben.
