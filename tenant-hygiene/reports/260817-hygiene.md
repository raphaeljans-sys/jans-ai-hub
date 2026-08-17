# Tenant-Speicher-Hygiene — Report 17.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:08 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: taeglich (seit 13.08.2026)

## Kernbefund: der Versionsverlauf waechst wieder — die Prognose ist eingetreten

Der erste Werktag nach dem Wochenende beantwortet die Frage, die die Reports vom 15. und
16.08. offen lassen mussten. Der Tenant hat in 24 Stunden **3.27 GB zugelegt**, nachdem er
an beiden Wochenendtagen stillgestanden hatte. Das reisst die Sende-Schwelle von 3 GB/Tag.

Entscheidend ist nicht die Summe, sondern ihre Herkunft. Das gesamte Wachstum stammt aus
**einer** Site, und dort praktisch vollstaendig aus dem **Versionsverlauf**:

- JANS.PROJEKTE Belegung: 546.70 → **551.17 GB** (+4.47 GB)
- JANS.PROJEKTE Versionsverlauf: 53.59 → **58.14 GB** (+4.55 GB)

Der Versionszuwachs ist also groesser als der Belegungszuwachs der Site. Rechnet man den
Versionsverlauf tenantweit heraus (64.10 → 68.70 GB, +4.60 GB), sind die **Nutzdaten im
Tenant um rund 1.3 GB geschrumpft**. Es sind keine neuen Inhalte, die den Speicher fuellen,
es ist der Verlauf ueber den bestehenden.

Damit ist der seit dem 13.07.2026 offene Punkt 2 des Vorgangs (Tenant-Versionslimit steht
auf «Manuell») nicht mehr eine Prognose, sondern ein gemessener Befund. Der Trim vom 13.08.
hat 106 GB freigeraeumt; an einem einzigen Werktag sind davon 4.6 GB zurueckgekehrt.

## Tenant-Summe

- Belegt: **826.24 GB** (846'074 MB) ueber 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **78.4 %**, freier Puffer **227.8 GB**
- Delta zum Vorreport (16.08.2026, 20:08, 842'722 MB): **+3'352 MB in exakt 24.0 Stunden**,
  also **+3.27 GB/Tag**
- Zum Vergleich die beiden Vortage: -0.09 GB/Tag (16.08.), -0.02 GB/Tag (15.08.)

Die Summe stammt aus zwei unabhaengigen Abfragen (Einzelwerte aufaddiert und
`sum([].StorageUsage)`), beide liefern 846'074 MB. Die Summe der elf Site-Deltas ergibt
ebenfalls +3.27 GB, die Herkunft des Wachstums ist damit positionsgenau belegt.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 227.8 GB gerechnet:

- **Beim heute gemessenen Tempo** (3.27 GB/Tag): rund **70 Tage**, also etwa
  **26. Oktober 2026**.
- **Beim Tempo vor dem Trim** (2.76 GB/Tag, Zehntagesschnitt): rund **83 Tage**,
  Anfang November 2026.
- **Nur Nutzdaten, ohne Versionsverlauf**: heute negativ; im Zehntagesschnitt rund
  0.27 GB/Tag, das traegt rund **840 Tage**.

Die drei Zahlen liegen nicht weit auseinander, weil der Versionsverlauf das Tempo
bestimmt. Die Sende-Schwelle von 88 % (927.5 GB) liegt 101.3 GB entfernt, beim heutigen
Tempo rund 31 Tage. Die 90-%-Marke (948.6 GB) liegt 122.4 GB entfernt, rund 37 Tage.

Ein einzelner Werktag ist noch keine Reihe. Ob 3.27 GB/Tag das neue Normalmass ist oder ein
Nachholeffekt nach zwei stillen Wochenendtagen, zeigen die Laeufe von Dienstag bis Freitag.

## Sites mit Belegung (nach Groesse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 551.17 GB | 58.14 GB | 318 Obj / 1.23 GB | leer | 17.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | leer | leer | 07.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 29 Obj / 0.01 GB | leer | 17.08.2026 |
| /sites/PL | 40.19 GB | 3.50 GB | leer | leer | 17.08.2026 |
| /sites/kispi | 30.93 GB | 0.19 GB | 102 Obj / 0.20 GB | leer | 17.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | leer | leer | 07.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | leer | leer | 07.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 2 Obj / 0.00 GB | leer | 13.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung gefuehrt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
OneDrive-Root, WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **68.70 GB** (8.3 % der Belegung), gegenueber 64.10 GB
an den drei Vortagen.

Vier Sites tragen heute ein aktuelles Aenderungsdatum (JANS.PROJEKTE, AD, PL, kispi), nach
drei Tagen mit hoechstens einer. Der Tenant ist wieder in Betrieb. Die Gegenbewegung: **AD
verliert 1.20 GB** (53.12 → 51.92 GB), PL und IMMO je rund 10 MB.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 58.14 GB** Versionen auf 551.17 GB Site (**10.6 %**). Reisst die
  absolute 20-GB-Schwelle um fast das Dreifache, liegt relativ unter 25 %. Traegt
  **85 %** des gesamten Versionsverlaufs im Tenant und **das gesamte Tageswachstum**.
- IMMO: 1.53 GB auf 4.02 GB, **38.1 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, unveraendert seit dem Trim.
- Uebrige unauffaellig: PL 8.7 %, AD 6.5 %, SE 1.1 %, kispi 0.6 %.

### Papierkoerbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites ueber 100 MB geprueft, 0 Objekte.
- **Neunter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08. (Testlauf),
  13.08. (Nachlauf), 14.08., 15.08., 16.08., 17.08.
- Nach Rule `auto-verbesserungen` 260729b wurde der gleichfoermige Subagenten-Befund an
  zwei Sites im Hauptkontext selbst nachgemessen (JANS.PROJEKTE, AD), beide bestaetigt
  0 Objekte.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **461 Objekte / 1.49 GB** tenantweit,
  gegenueber 454 / 1.48 GB an den drei Vortagen. **JANS.PROJEKTE +7 Objekte** (311 → 318,
  1.22 → 1.23 GB), alle uebrigen Sites objektgenau unveraendert. Die dreitaegige
  Loesch-Stille ist damit beendet, passend zum Werktag.

### Tote/leere Sites (Hinweis, Phase 2)

Unveraendert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.4 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
ueberschreitet die 18-Monats-Schwelle.

## Durchgefuehrte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen

| Aktion | Potenzial | Voraussetzung | Stand |
|---|---|---|---|
| **Tenant-Versionslimit auf «Automatisch»** | stoppt den heute gemessenen Zuwachs von 4.6 GB/Werktag | Admin Center, Einstellungen, Versionsverlauf-Limits | **offen seit 13.07.2026, ab heute belegt statt prognostiziert** |
| Versions-Trim JANS.PROJEKTE | derzeit rund 4.6 GB (der Nachwuchs seit dem 13.08.) | interaktiver PnP-Login | moeglich, aber Symptombehandlung |
| Erste Papierkorb-Stufe JANS.PROJEKTE | 1.23 GB | `recyclebinitem remove --ids` in 1000er-Batches | offen, kein Druck |
| Leere Test-/Junk-Sites loeschen | ~0 GB (Hygiene) | Sichtung | offen, kein Druck |

Der Hebel liegt eindeutig beim **Tenant-Limit**, nicht beim Trim. Ein Trim raeumt heute die
4.6 GB ab, die seit Donnerstag entstanden sind; ohne Umstellung des Limits sind sie in
einer Woche wieder da, und der Trim wird zur Dauerpflicht. Solange das Limit auf «Manuell»
steht, ist jeder Trim eine Wiederholung.

Falls doch getrimmt werden soll:

```
Connect-PnPOnline -Url <site> -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

(NICHT `-DeviceLogin`.)

## Sende-Entscheid

**Zwei Schwellen greifen:**

- **b) Delta ≥ 3 GB/Tag:** +3.27 GB in 24.0 Stunden. Erstmals seit Einfuehrung der
  geschaerften Schwelle am 13.08.2026.
- **f) Wochenpflicht:** heute ist Montag.

Nicht gegriffen: Auslastung 78.4 % (unter 88 %), Restlaufzeit 70 Tage (ueber 60, aber
erstmals in derselben Groessenordnung wie die Schwelle), Auto-Bereinigung 0 GB, kein
Blocker.

**Gemeldet.** Der Befund geht zusaetzlich als datierter Nachtrag in `logbuch/fristen.md`
an den bestehenden Vorgang vom 13.08.2026 (Rule `auto-verbesserungen` 260805).
