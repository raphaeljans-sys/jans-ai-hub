# Tenant-Speicher-Hygiene — Report 13.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, **erster Lauf im neuen Tagestakt**, Phase 1
Connector: M365 App-only/Zertifikat (headless), Messzeitpunkt 01:35 CEST
Takt: seit 13.08.2026 taeglich (vorher woechentlich Mo)

## Vorbemerkung: dieser Lauf misst denselben Zustand wie der Testlauf

Der Testlauf von Hand lief heute um **01:13**, dieser Lauf um **01:35**, also 22 Minuten
spaeter. Alle Messwerte sind deshalb **identisch mit dem Testlauf-Report**, bis auf die
Byteangaben genau. Das ist kein Fehler, sondern die erwartete Folge davon, dass
`StorageUsage` tenantseitig um Stunden bis rund 24 Stunden nachlaeuft. Ein Delta in GB pro
Tag laesst sich ueber 22 Minuten nicht bilden.

Der Testlauf-Report wurde nicht ueberschrieben, sondern nach
`260813-hygiene-testlauf.md` umbenannt. Er enthaelt die vier Prompt-Befunde, die zur
Schaerfung der Sende-Schwellen gefuehrt haben, und bleibt als Beleg erhalten. Der
Dateiname faellt bewusst aus dem sechsstelligen Muster, damit die Vorreport-Ermittlung
kuenftiger Laeufe ihn nicht als juengsten Report auffasst.

**Fuer die Trendaussage wird deshalb auf den letzten inhaltlich verschiedenen Report
zurueckgegriffen: 03.08.2026.**

## Tenant-Summe

- Belegt: **929.7 GB** (951'996 MB) ueber 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **88.2 %**, freier Puffer noch ~124.3 GB
- Delta zum Vorreport (13.08.2026, 01:13, 929.7 GB): **0.0 GB in 22 Minuten**, kein
  belastbarer Tageswert
- Trend gegen den letzten verschiedenen Stand (03.08.2026, 904.6 GB): **+25.1 GB in
  10 Tagen = 2.51 GB/Tag**

Der Zehntagesabstand kam zustande, weil der regulaere Montagslauf vom 10.08. ausgefallen
ist. Ursache des Wachstums ist unveraendert der Versionsverlauf von JANS.PROJEKTE: von den
25.1 GB entfallen 23.0 GB auf diese eine Position (134.9 auf 157.9 GB). Der tenantweite
Nutzdaten-Zuwachs betraegt rund 2 GB in zehn Tagen.

**Restlaufzeit-Hochrechnung:** 124.3 GB Puffer geteilt durch 2.51 GB/Tag ergibt rund
**50 Tage**, der Pool waere damit **Anfang Oktober 2026** voll. Die 90-%-Marke (948.6 GB)
faellt bei diesem Tempo um den **20.08.2026**, also in rund einer Woche.

## Sites mit Belegung (nach Groesse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 650.3 GB | 157.9 GB | 295 Obj / 1.19 GB | leer | 12.08.2026 |
| /sites/SE | 108.1 GB | 1.24 GB | leer | leer | 07.08.2026 |
| /sites/AD | 53.2 GB | 3.37 GB | 29 Obj / 0.01 GB | leer | 12.08.2026 |
| /sites/PL | 40.2 GB | 3.50 GB | leer | leer | 12.08.2026 |
| /sites/kispi | 30.7 GB | 0.17 GB | 89 Obj / 0.19 GB | leer | 12.08.2026 |
| /sites/BI | 18.2 GB | ~0 GB | leer | leer | 07.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | leer | leer | 07.08.2026 |
| /sites/IMMO | 7.21 GB | 4.72 GB | 2 Obj / 0.00 GB | leer | 12.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | leer | leer | 07.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Unter der 100-MB-Schwelle und daher ohne Papierkorb-Erhebung (neu seit diesem Lauf, spart
rund die Haelfte der Aufrufe ohne Informationsverlust): /sites/HLEBWEB (0 MB), /sites/PA
(2 MB), /sites/Test (1 MB), /sites/WBHafenarealSZ (0 MB), 2x
/sites/AllCompany.50322284545.* (je 1 MB), /search, beide Root-Sites, -my Root.

## Klassifizierung

### Versions-Bloat (Hebel fuer Phase 2)

- **JANS.PROJEKTE, 157.9 GB Versionen** (24.3 % der Site-Belegung, weit ueber der
  20-GB-Schwelle). Weiterhin der einzige relevante Hebel und die alleinige Ursache des
  Wachstums. Bei Trim auf 5 Versionen realistisch **105 bis 130 GB Ruecklauf**. Das
  braechte den Tenant auf rund 76 bis 78 % zurueck und streckte den Puffer von 50 Tagen
  auf ueber ein halbes Jahr.
- **IMMO, 4.72 GB Versionen** (65.4 % der Site-Belegung). Relativ stark aufgeblaeht,
  absolut klein und seit fuenf Reports unveraendert. Trim bringt 2 bis 4 GB.
- Alle uebrigen Sites unter beiden Schwellen: PL 8.7 %, AD 6.3 %, SE 1.1 %.

### Papierkoerbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites ueber 100 MB geprueft. JANS.PROJEKTE
  und kispi wurden nach dem gleichfoermigen Subagenten-Befund zusaetzlich selbst
  nachgemessen, beide bestaetigt 0 Objekte.
- Das ist der **fuenfte Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08.,
  13.08. (Testlauf), 13.08. (dieser Lauf).
- Erste Stufen (Undo-Netz, bleibt unangetastet): JANS.PROJEKTE 295 Obj / 1.19 GB,
  kispi 89 Obj / 0.19 GB, JANSDATENAUSTAUSCH 10 Obj / 0.05 GB, AD 29 Obj / 0.01 GB,
  IMMO 2 Obj / 0.002 GB. Zusammen 1.43 GB, kein Hebel.

### Tote/leere Sites (Hinweis, Phase 2)

Unveraendert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10 Monate), Test
(1 MB, 14.05.2026), 2x AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site ueber der
18-Monats-Schwelle, also keine echte Alt-Leiche.

## Durchgefuehrte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Befund zum Takt

Zwei Laeufe innerhalb von 22 Minuten haben denselben Zustand gemessen. Der Testlauf-Report
nennt als neuen Takt taeglich 20:08, tatsaechlich feuerte dieser Lauf um 01:35. Solange
`StorageUsage` um Stunden nachlaeuft, liefert ein zweiter Lauf am selben Tag per
Konstruktion keine neue Information. Fuer die Wachstumsbeobachtung genuegt **ein** Lauf pro
Tag, und er sollte moeglichst weit von den anderen Laeufen entfernt liegen. Punkt fuer die
naechste Takt-Durchsicht, kein operativer Mangel.

## Sende-Schwelle

Gemeldet wird, zwei Gruende greifen:

- **a) Auslastung 88.2 %**, Schwelle 88 % erreicht.
- **c) Restlaufzeit rund 50 Tage**, Schwelle 60 Tage unterschritten.

Nicht gegriffen haben: b) Wachstum (2.51 GB/Tag, Schwelle 3), d) Auto-Bereinigung (0 GB),
e) Blocker (keiner), f) Wochenpflicht (heute Donnerstag).

## Offene Phase-2-Empfehlungen (nur interaktiv, mit Bestaetigung)

| Aktion | Site | Potenzial | Voraussetzung |
|---|---|---|---|
| **Versions-Trim (dringend)** | JANS.PROJEKTE | **105 bis 130 GB** | interaktiver PnP-Login |
| Versions-Trim | IMMO | 2 bis 4 GB | dito |
| Eigene, engere Site-Versions-Policy pruefen | JANS.PROJEKTE | Wachstum stoppen | nach dem Trim |
| Leere Test-/Junk-Sites loeschen | WBHafenarealSZ, Test, 2x AllCompany | ~0 GB (Hygiene) | Sichtung |

Der Versions-Trim ist seit dem **13.07.2026** offen, also seit 31 Tagen. In dieser Zeit ist
der Versionsverlauf von JANS.PROJEKTE weiter gewachsen und traegt praktisch das gesamte
Tenant-Wachstum.

Versions-Trim-Befehl (Raphaels interaktiver Login noetig, NICHT `-DeviceLogin`):
```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE \
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```
