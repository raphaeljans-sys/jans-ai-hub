# Tenant-Speicher-Hygiene — Report 21.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: taeglich (seit 13.08.2026)

## Kernbefund: das Tempo faellt auf ein Drittel zurueck, die Ursache bleibt dieselbe

Nach zwei Tagen auf hohem Niveau (13.29 und 13.93 GB) waechst der Tenant heute nur noch um
**4.01 GB**. Das ist eine deutliche Entspannung gegenueber gestern, aber keine Umkehr: die
Herkunft des Wachstums ist zum fuenften Werktag in Folge unveraendert dieselbe Site und
derselbe Mechanismus.

- JANS.PROJEKTE Belegung: 583.23 → **587.03 GB** (+3.80 GB)
- JANS.PROJEKTE Versionsverlauf: 89.89 → **92.86 GB** (+2.97 GB)
- Versionsverlauf tenantweit: 100.45 → **103.42 GB** (+2.97 GB)

Zieht man den Versionsverlauf ab, sind die Nutzdaten im Tenant um **1.04 GB** gewachsen.
Von den 4.01 GB des Tages sind **74.1 % reiner Verlauf ueber bestehenden Inhalten** —
niedriger als die 97.8 % von gestern, weil heute auch echte Nutzdaten dazukamen (kispi
+0.21 GB, JANS.PROJEKTE +0.83 GB ohne Verlauf).

**Zur Einordnung des Rueckgangs:** die Konfiguration hat sich nicht geaendert. Es gilt
weiterhin tenantweit und auf jeder Site `InheritVersionPolicyFromTenant: true`,
`MajorVersionLimit: 0`, `EnableAutoExpirationVersionTrim: false`. Der niedrigere Wert ist
also **Ausdruck geringerer Arbeitslast an einem Freitag, nicht einer greifenden Begrenzung**.
Es existiert nach wie vor nichts, was das Wachstum von selbst begrenzen wuerde. Die
51 neuen Versionen des Tages tragen 2.97 GB, also rund **58 MB je Version** — noch groesser
als der ohnehin hohe Site-Schnitt von 25 MB.

## Tenant-Summe

- Belegt: **862.49 GB** (883'194 MB) ueber 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **81.83 %**, freier Puffer **191.5 GB**
- Delta zum Vorreport (20.08.2026, 20:09, 879'091 MB): **+4'103 MB in 24.0 Stunden**,
  also **+4.01 GB/Tag**
- Reihe der letzten sieben Tage: -0.02 (15.08.), -0.09 (16.08.), +3.27 (17.08.),
  +5.02 (18.08.), +13.29 (19.08.), +13.93 (20.08.), **+4.01 GB/Tag (21.08.)**

Die Summe stammt aus zwei unabhaengigen Abfragen (Einzelwerte aufaddiert: 883'186 MB ueber
die elf belegten Sites plus 8 MB Kleinstsites, sowie `sum([].StorageUsage)`: 883'194 MB),
beide decken sich. Die Summe der Site-Deltas ergibt +4.00 GB und deckt sich im Rahmen der
Rundung.

Einschraenkung, wie in jedem Lauf: `StorageUsage` ist zeitverzoegert (Stunden bis 24 h).
Der heutige Rueckgang koennte teilweise Nachlauf-Effekt sein und morgen wieder korrigiert
werden. Ein einzelner Tageswert traegt diese Unsicherheit immer; die Fuenftagesreihe der
Werktage (3.27, 5.02, 13.29, 13.93, 4.01) ist der belastbarere Massstab.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 191.5 GB gerechnet:

- **Beim heute gemessenen Tempo** (4.01 GB/Tag): rund **48 Tage**, also etwa
  **8. Oktober 2026**.
- Beim Fuenftagesschnitt der Werktage (7.90 GB/Tag): rund **24 Tage**, also etwa
  **14. September 2026**.
- Mit Wochenrhythmus gerechnet (fuenf Werktage zu 7.90 GB, zwei stille Tage, also
  5.65 GB/Tag im Schnitt): rund **34 Tage**, also etwa **24. September 2026**.

Die Restlaufzeit liegt den vierten Tag in Folge unter der 60-Tage-Schwelle, hat sich aber
gegenueber gestern (14 Tage) auf 48 Tage erholt. Der belastbarere Wochenschnitt liegt bei
34 Tagen. Die Lage ist entspannter als gestern, bleibt aber unter der Schwelle.

Naeher liegen die Warnmarken:

- **88-%-Marke (927.5 GB): 65.0 GB entfernt** — beim heutigen Tempo rund 16 Tage
  (etwa 6. September), beim Wochenschnitt rund 12 Tage (etwa 2. September).
- 90-%-Marke (948.6 GB): 86.1 GB entfernt, 21 bzw. 15 Tage.

Der Trim vom 13.08. hat 106 GB freigeraeumt. In acht Tagen, davon fuenf Werktage, sind
davon **39.32 GB zurueckgekehrt** — 37 % in gut einer Woche.

## Sites mit Belegung (nach Groesse)

| Site | Belegung | Versionen | Ver.-Anzahl | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 587.03 GB | 92.86 GB | 3'777 | 333 Obj / 1.23 GB | leer | 21.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 290 | leer | leer | 21.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 4'694 | 29 Obj / 0.01 GB | leer | 21.08.2026 |
| /sites/PL | 40.19 GB | 3.50 GB | 245 | leer | leer | 17.08.2026 |
| /sites/kispi | 31.33 GB | 0.19 GB | 151 | 107 Obj / 0.21 GB | leer | 21.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | 42 | leer | leer | 21.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 402 | leer | leer | 21.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | 13 | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 264 | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 188 | 2 Obj / 0.00 GB | leer | 13.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 18 | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung gefuehrt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
OneDrive-Root, WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **103.42 GB** (12.0 % der Belegung), gegenueber 100.45 GB
gestern, 86.83 GB am 19.08., 73.56 GB am 18.08., 68.70 GB am 17.08. und 64.10 GB an den
drei Tagen davor.

Bewegung heute: **nur drei Sites veraendern ihre Belegung nennenswert**, JANS.PROJEKTE
(+3.80 GB), kispi (+0.21 GB) und MO (+3 MB). SE steht objektgenau still auf 110'735 MB,
PL unveraendert auf 41'152 MB; AD, BI, WE, WO und JANSDATENAUSTAUSCH geben je wenige MB ab.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 92.86 GB** Versionen auf 587.03 GB Site (**15.8 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Vierfache und naehert sich weiter der relativen
  25-%-Schwelle. Traegt **89.8 %** des gesamten Versionsverlaufs im Tenant und **das
  gesamte Versionswachstum des Tages**. Der Anteil steigt in jedem Lauf: 9.7 % nach dem
  Trim, 10.6 % (17.08.), 11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), **15.8 % heute**.
- **Herkunft weiter eingegrenzt:** die 51 heute hinzugekommenen Versionen tragen 2.97 GB,
  also rund **58 MB je Version**. Der Site-Durchschnitt liegt bei 24.6 MB je Version
  (92.86 GB / 3'777), AD dagegen bei 0.7 MB (3.37 GB / 4'694). Das bestaetigt und
  verschaerft den gestrigen Befund: es sind **wenige, sehr grosse, wiederholt
  ueberschriebene Dateien** — und die zuletzt hinzugekommenen sind noch groesser als der
  Bestand. Typisch fuer CAD-, Render-, Punktwolken- oder Archivdateien.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unveraendert.
- Uebrige unauffaellig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 0.6 %.

### Papierkoerbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites ueber 100 MB geprueft, 0 Objekte.
- **Dreizehnter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 21.08.
- **Messweg heute geaendert:** nach dem Subagenten-Befund vom 20.08. (gemeldete Pruefung
  von elf Sites bei nur acht Werkzeugaufrufen) wurde die gesamte Papierkorb-Erhebung
  **im Hauptkontext selbst** durchgefuehrt — elf Einzelabfragen der zweiten Stufe und elf
  der ersten, in zwei parallelen Bloecken. Kein Subagent beteiligt, jede Zahl ist ein
  eigener Aufruf. Das ist zugleich die Umsetzung der seit drei Laeufen notierten
  Ueberlegung zum Messaufwand (siehe unten).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **481 Objekte / 1.50 GB** tenantweit,
  gegenueber 476 / 1.50 GB gestern. JANS.PROJEKTE +4 Objekte (329 → 333), kispi +1 Objekt
  (106 → 107), AD, IMMO und JANSDATENAUSTAUSCH objektgenau unveraendert.

### Tote/leere Sites (Hinweis, Phase 2)

Unveraendert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.5 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
ueberschreitet die 18-Monats-Schwelle.

## Durchgefuehrte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen (brauchen Raphaels interaktiven Login)

### 1. Tenant-Versionslimit auf «Automatisch» stellen — zuerst, vor dem Trim

Unveraendert und weiterhin der einzige Punkt, der die Ursache behebt. Die Konfiguration
zeigt `MajorVersionLimit: 0`, `EnableAutoExpirationVersionTrim: false`,
`InheritVersionPolicyFromTenant: true` auf allen Sites — es gibt keine Begrenzung, die
greifen koennte.

Der heutige Rueckgang auf 4.01 GB aendert daran nichts. Beim Wochenschnitt von 5.65 GB/Tag
kauft ein Trim von rund 78 GB knapp **14 Tage** zusaetzliche Restlaufzeit, beim
Werktagsschnitt von 7.90 GB/Tag rund zehn. Danach ist der Zustand derselbe wie heute. Ein
Trim ohne vorherige Limit-Umstellung bleibt eine Verzoegerung, keine Loesung.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, heute zum fuenften Werktag in Folge als Hauptursache gemessen
(3.27 → 5.02 → 13.27 → 13.62 → 2.97 GB Versionszuwachs je Werktag).

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 78 GB, dringend — nach Schritt 1

92.86 GB Versionsverlauf auf einer Site; ein Trim auf fuenf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund 78 GB zu rechnen, was den
Puffer auf gut 270 GB und die Auslastung auf rund 74 % senkt.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

### 3. Grosse, wiederholt ueberschriebene Dateien auf JANS.PROJEKTE identifizieren

Die heutige Messung schaerft den Ansatzpunkt: die 51 neuen Versionen des Tages liegen bei
rund 58 MB je Stueck, mehr als das Doppelte des Site-Schnitts. Es genuegt also, **eine
Handvoll Dateien** zu finden — nicht eine ganze Bibliothek zu durchforsten. Lohnend ist die
Pruefung, welche Bibliothek diese Versionen erzeugt und ob dort ein Sync-Client oder ein
Autospeichern-Zyklus laeuft. Ergibt sich eine einzelne Bibliothek (typischerweise CAD,
Renderings, Punktwolken oder Archive), kann diese zusaetzlich vom Versionieren ausgenommen
werden.

Das ist eine Diagnose, keine Bereinigung, und ersetzt die Limit-Umstellung nicht.

### 4. Tote Sites (nachrangig, rund 0 GB)

WBHafenarealSZ und die drei Kleinstsites belegen zusammen praktisch nichts. Loeschen lohnt
sich nur der Ordnung halber, nicht fuer den Speicher.

## Anmerkung zum Messaufwand

Die seit drei Laeufen notierte Ueberlegung ist heute erstmals in der Praxis geloest, wenn
auch anders als vorgeschlagen: statt die Pruefung der zweiten Stufe auf die vier bis fuenf
Sites mit Papierkorb-Aktivitaet zu reduzieren, wurden alle 22 Messungen **im Hauptkontext
in zwei parallelen Bloecken** abgesetzt. Der Aufwand blieb dadurch klein genug, dass kein
Subagent noetig war, und jede Zahl ist einzeln belegt. Dieser Weg sollte beibehalten
werden: er kostet weniger als die Delegation samt anschliessender Nachpruefung und
beseitigt die Fehlerquelle, die am 20.08. auffiel.

## Sende-Schwelle

Gemeldet wird heute, ausgeloest durch **zwei Gruende**:

- **b) Wachstumssprung:** +4.01 GB/Tag, Schwelle 3 GB/Tag.
- **c) Restlaufzeit:** 48 Tage beim heutigen Tempo, 34 Tage im Wochenschnitt — Schwelle
  60 Tage.

Nicht gerissen: a) Auslastung 81.83 % (Schwelle 88 %, in 12 bis 16 Tagen erreicht),
d) keine Auto-Bereinigung, e) kein Blocker, f) heute ist Freitag, keine Wochenpflicht.
