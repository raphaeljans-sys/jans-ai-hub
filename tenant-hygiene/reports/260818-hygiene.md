# Tenant-Speicher-Hygiene — Report 18.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: taeglich (seit 13.08.2026)

## Kernbefund: der zweite Werktag bestaetigt den Trend und beschleunigt ihn

Der Report vom 17.08. schloss mit dem Satz, ein einzelner Werktag sei noch keine Reihe.
Der zweite Werktag liefert die Bestaetigung, und zwar nach oben: der Tenant hat in
24 Stunden **5.02 GB zugelegt**, nach 3.27 GB am Vortag. Das ist der hoechste Tageswert
seit Beginn der taeglichen Messung und reisst die Sende-Schwelle von 3 GB/Tag um zwei
Drittel.

Die Herkunft ist unveraendert und noch eindeutiger als gestern. Der gesamte Zuwachs stammt
aus dem **Versionsverlauf einer einzigen Site**:

- JANS.PROJEKTE Belegung: 551.17 → **556.12 GB** (+4.95 GB)
- JANS.PROJEKTE Versionsverlauf: 58.14 → **63.00 GB** (+4.86 GB)
- Versionsverlauf tenantweit: 68.70 → **73.56 GB** (+4.86 GB)

Der Versionszuwachs tenantweit ist auf das Hundertstel identisch mit dem von
JANS.PROJEKTE. Keine andere Site hat heute Versionen gebildet. Zieht man den
Versionsverlauf ab, sind die **Nutzdaten im Tenant um 0.16 GB gewachsen**, also praktisch
gar nicht. Von den 5.02 GB des Tages sind **97 % reiner Verlauf ueber bestehenden
Inhalten**.

Der Trim vom 13.08. hat 106 GB freigeraeumt. In fuenf Tagen, davon zwei Werktage, sind
davon bereits **9.4 GB zurueckgekehrt**. Der seit dem 13.07.2026 offene Punkt 2 des
Vorgangs (Tenant-Versionslimit steht auf «Manuell») ist damit an zwei aufeinander
folgenden Werktagen gemessen bestaetigt.

## Tenant-Summe

- Belegt: **831.26 GB** (851'211 MB) ueber 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **78.9 %**, freier Puffer **222.7 GB**
- Delta zum Vorreport (17.08.2026, 20:08, 846'074 MB): **+5'137 MB in 24.0 Stunden**,
  also **+5.02 GB/Tag**
- Reihe der letzten vier Tage: -0.02 (15.08.), -0.09 (16.08.), +3.27 (17.08.),
  **+5.02 GB/Tag (18.08.)**

Die Summe stammt aus zwei unabhaengigen Abfragen (Einzelwerte aufaddiert und
`sum([].StorageUsage)`), beide liefern 851'211 MB. Die Summe der Site-Deltas ergibt
+5.03 GB und deckt sich im Rahmen der Rundung, die Herkunft des Wachstums ist damit
positionsgenau belegt.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 222.7 GB gerechnet:

- **Beim heute gemessenen Tempo** (5.02 GB/Tag): rund **44 Tage**, also etwa
  **1. Oktober 2026**.
- Beim gestrigen Tempo (3.27 GB/Tag): rund 68 Tage.
- Beim Tempo vor dem Trim (2.76 GB/Tag, Zehntagesschnitt): rund 81 Tage.

Die Restlaufzeit hat sich damit gegenueber gestern um 26 Tage verkuerzt und liegt zum
ersten Mal **unter der 60-Tage-Schwelle**.

Naeher liegen die Warnmarken: die 88-%-Marke (927.5 GB) ist **96.3 GB entfernt, rund
19 Tage**, also etwa **6. September 2026**. Die 90-%-Marke (948.6 GB) liegt 117.3 GB
entfernt, rund 23 Tage.

Die Prognose ist bewusst auf das Werktagstempo gerechnet und damit eher konservativ, weil
Wochenenden stillstehen. Rechnet man den Wochenrhythmus ein (fuenf Werktage zu rund
4 GB, zwei stille Tage), ergibt sich ein Wochenschnitt von rund 2.9 GB/Tag und damit rund
77 Tage. Beide Zahlen liegen weit unter dem, was der Tenant ohne Versionswachstum tragen
wuerde: auf Nutzdaten allein gerechnet reicht der Puffer rechnerisch weit ueber ein Jahr.

## Sites mit Belegung (nach Groesse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 556.12 GB | 63.00 GB | 321 Obj / 1.23 GB | leer | 18.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | leer | leer | 07.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 29 Obj / 0.01 GB | leer | 18.08.2026 |
| /sites/PL | 40.19 GB | 3.50 GB | leer | leer | 17.08.2026 |
| /sites/kispi | 31.01 GB | 0.19 GB | 102 Obj / 0.20 GB | leer | 18.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | leer | leer | 07.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | leer | leer | 07.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 2 Obj / 0.00 GB | leer | 13.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung gefuehrt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
OneDrive-Root, WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **73.56 GB** (8.8 % der Belegung), gegenueber 68.70 GB
gestern und 64.10 GB an den drei Tagen davor.

Bewegung heute: **nur zwei Sites veraendern ihre Belegung**, JANS.PROJEKTE (+4.95 GB) und
kispi (+0.08 GB). AD traegt zwar ein aktuelles Aenderungsdatum, bleibt aber auf 51.92 GB,
und PL steht unveraendert auf 40.19 GB. Der Rueckgang von AD um 1.20 GB, den der gestrige
Report zeigte, hat sich heute nicht fortgesetzt.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 63.00 GB** Versionen auf 556.12 GB Site (**11.3 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Dreifache, liegt relativ weiter unter 25 %.
  Traegt **86 %** des gesamten Versionsverlaufs im Tenant und **das gesamte
  Tageswachstum**. Der Anteil steigt stetig: 9.7 % nach dem Trim, 10.6 % gestern,
  11.3 % heute.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, unveraendert seit dem Trim.
- Uebrige unauffaellig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 0.6 %.

### Papierkoerbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites ueber 100 MB geprueft, 0 Objekte.
- **Zehnter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08. (Testlauf),
  13.08. (Nachlauf), 14.08., 15.08., 16.08., 17.08., 18.08.
- Nach Rule `auto-verbesserungen` 260729b wurde der gleichfoermige Subagenten-Befund an
  zwei Sites im Hauptkontext selbst nachgemessen (JANS.PROJEKTE, kispi), beide bestaetigt
  0 Objekte.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **464 Objekte / 1.49 GB** tenantweit,
  gegenueber 461 / 1.49 GB gestern. **JANS.PROJEKTE +3 Objekte** (318 → 321), alle
  uebrigen Sites objektgenau unveraendert.

Der Befund ist inzwischen so stabil, dass die Auto-Bereinigung faktisch ein Leerlauf ist.
Sie bleibt als Sicherung bestehen, kostet aber je Lauf rund 30 Messaufrufe. Eine
Ueberlegung fuer die Zukunft: die zweite Stufe nur noch bei den fuenf Sites mit
Papierkorb-Aktivitaet taeglich pruefen und den Rest woechentlich.

### Tote/leere Sites (Hinweis, Phase 2)

Unveraendert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.4 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
ueberschreitet die 18-Monats-Schwelle.

## Durchgefuehrte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein
einziger `clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen (brauchen Raphaels interaktiven Login)

### 1. Versions-Trim JANS.PROJEKTE, Potenzial rund 50 GB, dringend

Der groesste und inzwischen einzige relevante Hebel. 63.00 GB Versionsverlauf auf einer
Site; ein Trim auf fuenf Major-Versionen gab am 13.08. tenantweit 106 GB frei. Auf dem
heutigen Stand ist mit rund 50 GB zu rechnen, was den Puffer auf gut 270 GB hebt und die
Restlaufzeit beim heutigen Tempo von 44 auf rund 54 Tage streckt.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

### 2. Tenant-Versionslimit auf «Automatisch» stellen, das eigentliche Heilmittel

Seit dem 13.07.2026 offen und heute zum zweiten Mal in Folge als Ursache gemessen. Solange
das Limit auf «Manuell» steht, ist jeder Trim nur eine Verschiebung: der Verlauf baut sich
mit rund 4.9 GB je Werktag wieder auf, ein Trim ist damit nach etwa drei Wochen aufgezehrt.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

**Die Reihenfolge ist wichtig.** Zuerst das Limit umstellen, dann trimmen. Umgekehrt wird
der freigeraeumte Platz sofort wieder gefuellt.

### 3. Tote Sites (nachrangig, rund 0 GB)

WBHafenarealSZ und die drei Kleinstsites belegen zusammen praktisch nichts. Loeschen lohnt
sich nur der Ordnung halber, nicht fuer den Speicher.

## Sende-Schwelle

Gemeldet wird heute, ausgeloest durch **zwei Gruende**:

- **b) Wachstumssprung:** +5.02 GB/Tag, Schwelle 3 GB/Tag.
- **c) Restlaufzeit:** 44 Tage, Schwelle 60 Tage. Zum ersten Mal gerissen.

Nicht gerissen: a) Auslastung 78.9 % (Schwelle 88 %), d) keine Auto-Bereinigung,
e) kein Blocker, f) heute ist Dienstag, keine Wochenpflicht.
