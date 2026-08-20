# Tenant-Speicher-Hygiene — Report 20.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:09 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: taeglich (seit 13.08.2026)

## Kernbefund: das hohe Tempo haelt an, und die Ursache ist jetzt am Objekt belegt

Der vierte Werktag in Folge mit Versionswachstum, und der zweite auf dem neuen, hohen
Niveau. Der Tenant hat in 24 Stunden **13.93 GB zugelegt**, nach 13.29 GB gestern. Die
gestrige Eskalation war damit kein einmaliger Ausreisser, sondern der neue Betriebszustand.

Die Herkunft ist zum vierten Mal in Folge dieselbe und wieder auf das Hundertstel genau
zurechenbar:

- JANS.PROJEKTE Belegung: 569.38 → **583.23 GB** (+13.85 GB)
- JANS.PROJEKTE Versionsverlauf: 76.27 → **89.89 GB** (+13.62 GB)
- Versionsverlauf tenantweit: 86.83 → **100.45 GB** (+13.62 GB)

Zieht man den Versionsverlauf ab, sind die Nutzdaten im Tenant um **0.31 GB** gewachsen.
Von den 13.93 GB des Tages sind **97.8 % reiner Verlauf ueber bestehenden Inhalten**.

**Neu und wichtig: die Ursache ist heute nicht mehr nur erschlossen, sondern gemessen.**
Die Site-Eigenschaften zeigen tenantweit und auf jeder einzelnen Site

- `InheritVersionPolicyFromTenant: true`
- `MajorVersionLimit: 0`
- `EnableAutoExpirationVersionTrim: false`

Damit ist der seit dem 13.07.2026 offene Punkt 1 (Tenant-Versionslimit steht auf «Manuell»)
nicht mehr eine Vermutung aus dem Wachstumsverlauf, sondern direkt aus der Konfiguration
belegt: es existiert **kein** Versionslimit, weder auf Tenant- noch auf Site-Ebene, und die
automatische Versionsbereinigung ist ueberall abgeschaltet. Es gibt im gegenwaertigen
Zustand nichts, was das Wachstum von selbst begrenzen wuerde.

## Tenant-Summe

- Belegt: **858.49 GB** (879'091 MB) ueber 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **81.45 %**, freier Puffer **195.5 GB**
- Delta zum Vorreport (19.08.2026, 20:10, 864'825 MB): **+14'266 MB in 24.0 Stunden**,
  also **+13.93 GB/Tag**
- Reihe der letzten sechs Tage: -0.02 (15.08.), -0.09 (16.08.), +3.27 (17.08.),
  +5.02 (18.08.), +13.29 (19.08.), **+13.93 GB/Tag (20.08.)**

Die Summe stammt aus zwei unabhaengigen Abfragen (Einzelwerte aufaddiert und
`sum([].StorageUsage)`), beide liefern 879'091 MB. Die Summe der Site-Deltas ergibt
+13.94 GB und deckt sich im Rahmen der Rundung; die Herkunft des Wachstums ist damit
positionsgenau belegt.

Einschraenkung, wie in jedem Lauf: `StorageUsage` ist zeitverzoegert (Stunden bis 24 h).
Ein einzelner Tageswert kann Nachlauf aus dem Vortag tragen. Ueber vier Werktage zeigt die
Reihe jedoch keine Schwankung um einen Mittelwert, sondern eine Verdopplung des Niveaus mit
anschliessender Verstetigung.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 195.5 GB gerechnet:

- **Beim heute gemessenen Tempo** (13.93 GB/Tag): rund **14 Tage**, also etwa
  **3. September 2026**.
- Beim Viertagesschnitt der Werktage (8.88 GB/Tag): rund 22 Tage.
- Mit Wochenrhythmus gerechnet (fuenf Werktage zu 8.88 GB, zwei stille Tage, also
  6.34 GB/Tag im Schnitt): rund 31 Tage, also etwa **20. September 2026**.

Die Restlaufzeit liegt den dritten Tag in Folge unter der 60-Tage-Schwelle. Gegenueber
gestern (16 Tage) hat sie sich nur noch um zwei Tage verkuerzt, weil das Tempo nicht mehr
weiter gestiegen ist. Das ist keine Entwarnung, sondern die Bestaetigung des hohen Niveaus.

Naeher liegen die Warnmarken:

- **88-%-Marke (927.5 GB): 69.0 GB entfernt, rund 5 Tage** — also etwa **25. August 2026**.
- 90-%-Marke (948.6 GB): 90.1 GB entfernt, rund 6 bis 7 Tage.

Der Trim vom 13.08. hat 106 GB freigeraeumt. In sieben Tagen, davon vier Werktage, sind
davon **36.35 GB zurueckgekehrt** — gut ein Drittel in einer Woche.

## Sites mit Belegung (nach Groesse)

| Site | Belegung | Versionen | Ver.-Anzahl | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 583.23 GB | 89.89 GB | 3'726 | 329 Obj / 1.23 GB | leer | 20.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 290 | leer | leer | 07.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 4'694 | 29 Obj / 0.01 GB | leer | 20.08.2026 |
| /sites/PL | 40.19 GB | 3.50 GB | 245 | leer | leer | 17.08.2026 |
| /sites/kispi | 31.12 GB | 0.19 GB | 151 | 106 Obj / 0.21 GB | leer | 20.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | 42 | leer | leer | 07.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 402 | leer | leer | 07.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | 13 | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 264 | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 188 | 2 Obj / 0.00 GB | leer | 13.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 18 | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung gefuehrt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
OneDrive-Root, WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **100.45 GB** (11.7 % der Belegung), gegenueber 86.83 GB
gestern, 73.56 GB am 18.08., 68.70 GB am 17.08. und 64.10 GB an den drei Tagen davor. Die
Marke von 100 GB reinem Verlauf ist heute erstmals ueberschritten.

Bewegung heute: **nur drei Sites veraendern ihre Belegung**, JANS.PROJEKTE (+13.85 GB),
kispi (+0.08 GB) und AD (+0.01 GB). Alle uebrigen stehen objektgenau still, PL unveraendert
auf 41'152 MB, SE auf 110'735 MB.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 89.89 GB** Versionen auf 583.23 GB Site (**15.4 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Vierfache und naehert sich der relativen
  25-%-Schwelle. Traegt **89 %** des gesamten Versionsverlaufs im Tenant und **das gesamte
  Tageswachstum**. Der Anteil steigt in jedem Lauf: 9.7 % nach dem Trim, 10.6 % am 17.08.,
  11.3 % am 18.08., 13.4 % am 19.08., **15.4 % heute**.
- **Diagnostischer Hinweis zur Herkunft (neu):** JANS.PROJEKTE haelt 89.89 GB in nur
  **3'726 Versionen**, das sind im Schnitt **rund 25 MB je Version**. Zum Vergleich traegt
  AD mit 4'694 Versionen — also mehr Versionen — nur 3.37 GB, rund 0.7 MB je Version. Das
  Wachstum stammt also nicht aus vielen kleinen Bueroddokumenten, sondern aus **wenigen,
  sehr grossen, wiederholt ueberschriebenen Dateien**. Das deckt sich mit CAD-, Render-,
  Punktwolken- oder Archivdateien und ist der konkrete Ansatzpunkt fuer Empfehlung 3.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unveraendert.
- Uebrige unauffaellig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 0.6 %.

### Papierkoerbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites ueber 100 MB geprueft, 0 Objekte.
- **Zwoelfter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08. (Testlauf),
  13.08. (Nachlauf), 14.08., 15.08., 16.08., 17.08., 18.08., 19.08., 20.08.
- **Gegenpruefung heute verschaerft:** der Subagent meldete alle elf Sites als geprueft,
  benoetigte dafuer aber nur acht Werkzeugaufrufe — rechnerisch zu wenig fuer die
  verlangten Messungen. Nach Rule `auto-verbesserungen` 260729b wurde deshalb nicht nur
  stichprobenweise, sondern **die zweite Stufe aller elf Sites im Hauptkontext selbst
  nachgemessen**; alle elf bestaetigt mit 0 Objekten. Zusaetzlich wurde die erste Stufe von
  JANS.PROJEKTE selbst nachgemessen (329 Objekte, bestaetigt). Der gemeldete Befund war
  inhaltlich richtig, sein Zustandekommen aber nicht belegt.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **476 Objekte / 1.50 GB** tenantweit,
  gegenueber 469 / 1.49 GB gestern. JANS.PROJEKTE +3 Objekte (326 → 329), kispi +4 Objekte
  (102 → 106), alle uebrigen Sites objektgenau unveraendert.

### Tote/leere Sites (Hinweis, Phase 2)

Unveraendert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.5 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
ueberschreitet die 18-Monats-Schwelle.

## Durchgefuehrte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen (brauchen Raphaels interaktiven Login)

### 1. Tenant-Versionslimit auf «Automatisch» stellen — zuerst, vor dem Trim

Die Reihenfolge aus dem gestrigen Report bleibt bestehen und ist heute durch die
Konfigurationsmessung gehaertet: `MajorVersionLimit: 0`,
`EnableAutoExpirationVersionTrim: false`, `InheritVersionPolicyFromTenant: true` auf allen
Sites. Es gibt keine Begrenzung, die greifen koennte.

Bei 13.93 GB/Tag kauft ein Trim von rund 75 GB nur noch **gut fuenf Tage** zusaetzliche
Restlaufzeit; nach etwa fuenf Wochen waere er vollstaendig aufgezehrt. Ein Trim ohne
vorherige Limit-Umstellung ist damit keine Loesung, sondern eine Verzoegerung, die den
Eindruck erweckt, das Problem sei behandelt.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, heute zum vierten Mal in Folge als alleinige Ursache gemessen
(3.27 → 5.02 → 13.27 → 13.62 GB Versionszuwachs je Werktag) und erstmals direkt aus der
Site-Konfiguration belegt.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 75 GB, dringend — nach Schritt 1

89.89 GB Versionsverlauf auf einer Site; ein Trim auf fuenf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund 75 GB zu rechnen, was den
Puffer auf gut 270 GB hebt.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

Mit vorangegangener Limit-Umstellung streckt der Trim die Restlaufzeit dauerhaft; ohne sie
sind die 75 GB in rund fuenf Wochen wieder aufgebraucht.

### 3. Grosse, wiederholt ueberschriebene Dateien auf JANS.PROJEKTE identifizieren

Die heutige Kennzahl von rund 25 MB je Version (gegenueber 0.7 MB auf AD) grenzt die Suche
deutlich ein: es geht um wenige sehr grosse Dateien, nicht um Bueroalltag. Lohnend ist die
Pruefung, welche Bibliothek diese Versionen erzeugt und ob dort ein Sync-Client oder ein
Autospeichern-Zyklus laeuft. Ergibt die Pruefung eine einzelne Bibliothek (typischerweise
CAD, Renderings, Punktwolken oder Archive), kann diese zusaetzlich vom Versionieren
ausgenommen werden.

Das ist eine Diagnose, keine Bereinigung, und ersetzt die Limit-Umstellung nicht.

### 4. Tote Sites (nachrangig, rund 0 GB)

WBHafenarealSZ und die drei Kleinstsites belegen zusammen praktisch nichts. Loeschen lohnt
sich nur der Ordnung halber, nicht fuer den Speicher.

## Anmerkung zum Messaufwand

Die zweite Papierkorb-Stufe ist zum zwoelften Mal in Folge tenantweit leer. Die
Auto-Bereinigung ist damit faktisch ein Leerlauf, kostet aber je Lauf rund 30 Messaufrufe.
Die seit zwei Laeufen notierte Ueberlegung bleibt gueltig und gewinnt durch den heutigen
Subagenten-Befund an Gewicht: die zweite Stufe nur noch bei den vier Sites mit
Papierkorb-Aktivitaet (JANS.PROJEKTE, AD, kispi, IMMO, JANSDATENAUSTAUSCH) taeglich
pruefen, den Rest woechentlich. Das haelt den Aufwand klein genug, dass die Messung
zuverlaessig im Hauptkontext erfolgen kann, statt an einen Subagenten zu gehen, dessen
Arbeitsweise nachgeprueft werden muss.

## Sende-Schwelle

Gemeldet wird heute, ausgeloest durch **zwei Gruende**:

- **b) Wachstumssprung:** +13.93 GB/Tag, Schwelle 3 GB/Tag — mehr als das Vierfache.
- **c) Restlaufzeit:** 14 Tage, Schwelle 60 Tage.

Nicht gerissen: a) Auslastung 81.45 % (Schwelle 88 %, in rund 5 Tagen erreicht),
d) keine Auto-Bereinigung, e) kein Blocker, f) heute ist Donnerstag, keine Wochenpflicht.
