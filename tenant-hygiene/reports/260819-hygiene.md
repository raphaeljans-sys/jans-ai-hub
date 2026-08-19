# Tenant-Speicher-Hygiene — Report 19.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: taeglich (seit 13.08.2026)

## Kernbefund: das Versionswachstum eskaliert, die Restlaufzeit faellt auf 16 Tage

Der dritte Werktag in Folge bringt keinen Trend, sondern eine Eskalation. Der Tenant hat
in 24 Stunden **13.29 GB zugelegt** — nach 3.27 GB am 17.08. und 5.02 GB am 18.08. Das ist
mehr als das Zweieinhalbfache des gestrigen Rekordwertes und das **Vierfache der
Sende-Schwelle** von 3 GB/Tag.

Die Herkunft ist zum dritten Mal in Folge dieselbe und wieder auf das Hundertstel genau
zurechenbar. Der gesamte Zuwachs stammt aus dem **Versionsverlauf einer einzigen Site**:

- JANS.PROJEKTE Belegung: 556.12 → **569.38 GB** (+13.26 GB)
- JANS.PROJEKTE Versionsverlauf: 63.00 → **76.27 GB** (+13.27 GB)
- Versionsverlauf tenantweit: 73.56 → **86.83 GB** (+13.27 GB)

Der Versionszuwachs tenantweit ist identisch mit dem von JANS.PROJEKTE; keine andere Site
hat Versionen gebildet. Zieht man den Versionsverlauf ab, sind die **Nutzdaten im Tenant
um 0.02 GB gewachsen**, praktisch gar nicht. Von den 13.29 GB des Tages sind **99.8 %
reiner Verlauf ueber bestehenden Inhalten**.

Der Trim vom 13.08. hat 106 GB freigeraeumt. In sechs Tagen, davon drei Werktage, sind
davon bereits **22.7 GB zurueckgekehrt** — also ein Fuenftel in weniger als einer Woche.
Der seit dem 13.07.2026 offene Punkt 2 des Vorgangs (Tenant-Versionslimit steht auf
«Manuell») ist damit an drei aufeinander folgenden Werktagen gemessen bestaetigt, mit
steigender Rate.

## Tenant-Summe

- Belegt: **844.56 GB** (864'825 MB) ueber 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **80.1 %**, freier Puffer **209.4 GB**
- Delta zum Vorreport (18.08.2026, 20:10, 851'211 MB): **+13'614 MB in 24.0 Stunden**,
  also **+13.29 GB/Tag**
- Reihe der letzten fuenf Tage: -0.02 (15.08.), -0.09 (16.08.), +3.27 (17.08.),
  +5.02 (18.08.), **+13.29 GB/Tag (19.08.)**

Die Summe stammt aus zwei unabhaengigen Abfragen (Einzelwerte aufaddiert und
`sum([].StorageUsage)`), beide liefern 864'825 MB. Die Summe der Site-Deltas ergibt
+13.29 GB und deckt sich exakt, die Herkunft des Wachstums ist damit positionsgenau
belegt.

Einschraenkung, wie in jedem Lauf: `StorageUsage` ist zeitverzoegert (Stunden bis 24 h).
Ein einzelner Tageswert kann Nachlauf aus dem Vortag tragen. Die Reihe ueber drei Werktage
zeigt jedoch keine Schwankung um einen Mittelwert, sondern eine monotone Steigerung.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 209.4 GB gerechnet:

- **Beim heute gemessenen Tempo** (13.29 GB/Tag): rund **16 Tage**, also etwa
  **4. September 2026**.
- Beim Dreitagesschnitt der Werktage (7.19 GB/Tag): rund 29 Tage.
- Beim Tempo vor dem Trim (2.76 GB/Tag, Zehntagesschnitt): rund 76 Tage.

Die Restlaufzeit hat sich gegenueber gestern (44 Tage) um **28 Tage verkuerzt** und liegt
damit den zweiten Tag in Folge unter der 60-Tage-Schwelle, nun deutlich.

Naeher liegen die Warnmarken: die 88-%-Marke (927.5 GB) ist **83.0 GB entfernt, rund
6 Tage**, also etwa **25. August 2026**. Die 90-%-Marke (948.6 GB) liegt 104.0 GB
entfernt, rund 8 Tage.

Rechnet man den Wochenrhythmus ein (fuenf Werktage zu rund 7 GB, zwei stille Tage),
ergibt sich ein Wochenschnitt von rund 5.1 GB/Tag und damit rund 41 Tage. Auch diese
mildere Rechnung fuehrt vor Mitte Oktober an den vollen Pool.

## Sites mit Belegung (nach Groesse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 569.38 GB | 76.27 GB | 326 Obj / 1.23 GB | leer | 19.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | leer | leer | 07.08.2026 |
| /sites/AD | 51.91 GB | 3.37 GB | 29 Obj / 0.01 GB | leer | 19.08.2026 |
| /sites/PL | 40.19 GB | 3.50 GB | leer | leer | 17.08.2026 |
| /sites/kispi | 31.04 GB | 0.19 GB | 102 Obj / 0.20 GB | leer | 19.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | leer | leer | 07.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | leer | leer | 07.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 2 Obj / 0.00 GB | leer | 13.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung gefuehrt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
OneDrive-Root, WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **86.83 GB** (10.3 % der Belegung), gegenueber 73.56 GB
gestern, 68.70 GB am 17.08. und 64.10 GB an den drei Tagen davor.

Bewegung heute: **nur zwei Sites veraendern ihre Belegung**, JANS.PROJEKTE (+13.26 GB) und
kispi (+0.03 GB). AD traegt zwar ein aktuelles Aenderungsdatum, bleibt aber im Rahmen der
Rundung unveraendert (53'166 → 53'160 MB), PL steht objektgenau auf 41'152 MB.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 76.27 GB** Versionen auf 569.38 GB Site (**13.4 %**). Reisst die
  absolute 20-GB-Schwelle um beinahe das Vierfache, liegt relativ weiter unter 25 %.
  Traegt **88 %** des gesamten Versionsverlaufs im Tenant und **das gesamte
  Tageswachstum**. Der Anteil steigt in jedem Lauf: 9.7 % nach dem Trim, 10.6 % am 17.08.,
  11.3 % am 18.08., 13.4 % heute.
- IMMO: 1.53 GB auf 4.02 GB, **38.1 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unveraendert.
- Uebrige unauffaellig: PL 8.7 %, AD 6.5 %, WO 5.8 %, WE 4.6 %, SE 1.1 %, kispi 0.6 %.

### Papierkoerbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites ueber 100 MB geprueft, 0 Objekte.
- **Elfter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08. (Testlauf),
  13.08. (Nachlauf), 14.08., 15.08., 16.08., 17.08., 18.08., 19.08.
- Nach Rule `auto-verbesserungen` 260729b wurde der gleichfoermige Subagenten-Befund an
  zwei Sites im Hauptkontext selbst nachgemessen (JANS.PROJEKTE, AD), beide bestaetigt
  0 Objekte.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **469 Objekte / 1.49 GB** tenantweit,
  gegenueber 464 / 1.49 GB gestern. **JANS.PROJEKTE +5 Objekte** (321 → 326), alle
  uebrigen Sites objektgenau unveraendert.

Der Befund ist so stabil, dass die Auto-Bereinigung faktisch ein Leerlauf ist. Sie bleibt
als Sicherung bestehen, kostet aber je Lauf rund 30 Messaufrufe. Die im Vorreport notierte
Ueberlegung bleibt gueltig: die zweite Stufe nur noch bei den fuenf Sites mit
Papierkorb-Aktivitaet taeglich pruefen, den Rest woechentlich.

### Tote/leere Sites (Hinweis, Phase 2)

Unveraendert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.4 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
ueberschreitet die 18-Monats-Schwelle.

## Durchgefuehrte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen (brauchen Raphaels interaktiven Login)

### 1. Tenant-Versionslimit auf «Automatisch» stellen — jetzt zuerst, nicht mehr danach

Bisher stand der Trim an erster Stelle und die Limit-Umstellung als flankierende Massnahme
daneben. **Die Reihenfolge dreht sich mit dem heutigen Messwert um.** Bei 13.29 GB/Tag
kauft ein Trim von rund 60 GB nur noch **rund viereinhalb Tage** zusaetzliche Restlaufzeit;
nach etwa drei Wochen waere er vollstaendig aufgezehrt. Ein Trim vor der Limit-Umstellung
ist damit keine Loesung mehr, sondern eine Verzoegerung, die den Eindruck erweckt, das
Problem sei behandelt.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen und heute zum dritten Mal in Folge als alleinige Ursache
gemessen, mit steigender Rate (3.27 → 5.02 → 13.27 GB Versionszuwachs je Werktag).

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 60 GB, dringend — nach Schritt 1

76.27 GB Versionsverlauf auf einer Site; ein Trim auf fuenf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund 60 GB zu rechnen, was den
Puffer auf gut 269 GB hebt.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

Mit vorangegangener Limit-Umstellung streckt der Trim die Restlaufzeit dauerhaft; ohne sie
sind die 60 GB in rund drei Wochen wieder aufgebraucht.

### 3. Ursache des Sprungs auf JANS.PROJEKTE klaeren (neu)

Drei Werktage mit 3.3, 5.0 und 13.3 GB Versionszuwachs auf einer einzigen Site sind kein
gleichmaessiges Grundrauschen. Es lohnt sich zu pruefen, ob ein Sync-Client, ein
Autospeichern-Zyklus oder ein wiederholt ueberschriebener grosser Datensatz (CAD-, Render-
oder Archivdatei) die Versionen erzeugt. Das ist eine Diagnose, keine Bereinigung, und
kann die Limit-Umstellung nicht ersetzen — sie kann aber zeigen, ob zusaetzlich eine
einzelne Bibliothek vom Versionieren auszunehmen ist.

### 4. Tote Sites (nachrangig, rund 0 GB)

WBHafenarealSZ und die drei Kleinstsites belegen zusammen praktisch nichts. Loeschen lohnt
sich nur der Ordnung halber, nicht fuer den Speicher.

## Sende-Schwelle

Gemeldet wird heute, ausgeloest durch **zwei Gruende**:

- **b) Wachstumssprung:** +13.29 GB/Tag, Schwelle 3 GB/Tag — Vierfaches der Schwelle.
- **c) Restlaufzeit:** 16 Tage, Schwelle 60 Tage.

Nicht gerissen: a) Auslastung 80.1 % (Schwelle 88 %, in rund 6 Tagen erreicht),
d) keine Auto-Bereinigung, e) kein Blocker, f) heute ist Mittwoch, keine Wochenpflicht.
