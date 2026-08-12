# Tenant-Speicher-Hygiene — Report 13.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: **Testlauf von Hand** (Auftrag Raphael) mit dem neuen Tages-Prompt, Phase 1
Connector: M365 App-only/Zertifikat (headless)
Takt: seit 13.08.2026 taeglich 20:08 (vorher woechentlich Mo). Dieser Lauf prueft den Prompt.

## Tenant-Summe

- Belegt: **929.7 GB** (951'996 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **88.2 %**, freier Puffer noch ~124 GB
- Delta zum Vorreport (03.08.2026, 904.6 GB): **+25.1 GB in 10 Tagen = 2.51 GB/Tag**

Der Vergleichszeitraum umfasst zehn Tage statt sieben, weil der reguläre Montagslauf vom
10.08. ausgefallen ist (letzter Lauf 03.08., nächster stand auf 17.08.).

**Das Wachstum hat wieder angezogen** (Vorperiode 1.7 GB/Tag, jetzt 2.5 GB/Tag) und die
Ursache ist unverändert: **+23.0 GB der 25.1 GB sind Versionsverlauf von JANS.PROJEKTE**
(134.9 → 157.9 GB). Der tenantweite Nutzdaten-Zuwachs beträgt rund 2 GB.

Zwei Hochrechnungen beim aktuellen Tempo:

- Die 90-%-Marke (948.6 GB) wird in **rund einer Woche** erreicht, also um den 20.08.
- Der Pool ist in **rund 50 Tagen** voll, also Anfang Oktober 2026.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Änderung |
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
| /sites/HLEBWEB | 0 GB | ~0 GB | leer | leer | 07.08.2026 |

Rest (je ~0-2 MB, ohne Papierkorb-Erhebung): /sites/Test, /sites/PA, /sites/WBHafenarealSZ,
2x /sites/AllCompany.50322284545.*, /search, Root-Sites, -my Root.

## Klassifizierung

### Versions-Bloat (Hebel für Phase 2)

- **JANS.PROJEKTE — 157.9 GB Versionen** (24.3 % der Site-Belegung, weit über 20 GB).
  Weiterhin der einzige relevante Hebel und die alleinige Ursache des Wachstums. Bei Trim
  auf 5 Versionen realistisch **~105-130 GB Rücklauf**, was den Tenant auf rund 76-78 %
  zurückbrächte und den Puffer von 50 Tagen auf über ein halbes Jahr streckte.
- **IMMO — 4.72 GB Versionen** (65.4 % der Site-Belegung). Absolut klein, seit vier
  Reports unverändert. Trim bringt ~2-4 GB.
- Alle übrigen Sites unter beiden Schwellen (PL 8.7 %, AD 6.3 %, SE 1.1 %).

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer** (12 Sites geprüft, zwei zusätzlich einzeln
  nachgemessen). Das ist der **vierte Lauf in Folge** mit diesem Befund (13.07., 27.07.,
  03.08., 13.08.). Siehe Prompt-Befund 3 unten.
- Erste Stufen (Undo-Netz, unangetastet): JANS.PROJEKTE 295 Obj / 1.19 GB, kispi 89 Obj /
  0.19 GB, JANSDATENAUSTAUSCH 10 Obj / 0.05 GB, AD 29 Obj / 0.01 GB, IMMO 2 Obj / ~0 GB.
  Zusammen 1.43 GB, kein Hebel.

### Tote/leere Sites (Hinweis, Phase 2)

Unverändert gegenüber 03.08.: WBHafenarealSZ (0 MB, letzte Änderung 06.10.2025, ~10 Monate),
Test (1 MB, 14.05.2026), 2x AllCompany-Restsites (je 1 MB). Keine Site über 18 Monate.

## Durchgeführte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Erste Stufen bleiben als Undo-Netz unangetastet.

## Befunde zum neuen Tages-Prompt (Zweck dieses Testlaufs)

Der Prompt läuft technisch sauber durch: Datum, Vorreport-Delta, Zeitraumberechnung,
Gegenprüfung des gleichförmigen Subagenten-Befunds und Report-Ablage funktionieren wie
vorgesehen. Vier Schwächen sind aufgefallen.

**1. Die Sende-Schwelle ist zu hoch angesetzt und würde heute schweigen.**
Bei 88.2 % Auslastung und 2.5 GB/Tag greift keiner der vier Sendegründe: die
Auslastungsschwelle liegt bei 90 %, die Wachstumsschwelle bei 5 GB/Tag. Der Lauf würde
also still bleiben, obwohl der Pool in rund 50 Tagen voll ist. Die 5-GB-Schwelle ist bei
diesem Tenant faktisch unerreichbar (gemessene Historie 1.7 bis 4.5 GB/Tag), sie kann nie
auslösen. Die 90-%-Marke wiederum meldet erst, wenn nur noch rund sechs Wochen Puffer
bleiben. **Empfehlung:** die absolute Auslastungsschwelle auf 88 % senken, die
Wachstumsschwelle auf 3 GB/Tag, und als eigentlich richtige Grösse eine Restlaufzeit
aufnehmen: melden, sobald die Hochrechnung (Puffer geteilt durch GB pro Tag) unter 60 Tage
fällt. Diese Metrik reagiert auf beide Ursachen zugleich.

**2. Ein Dauerbefund verschwindet in der Stille.** Der Versions-Trim ist seit dem 13.07.
offen und ausdrücklich als «keine Neuigkeit» von der Meldepflicht ausgenommen. Damit kann
der grösste Hebel des Tenants beliebig lange unbemerkt bleiben. **Empfehlung:** ein
wöchentlicher Pflichtbericht (montags) auch ohne Schwellenreissung, damit ein eskalierender
Dauerbefund mindestens einmal pro Woche sichtbar wird.

**3. Die Auto-Bereinigung ist faktisch ein Leerlauf.** Vier Läufe in Folge ohne ein
einziges Objekt in der zweiten Stufe. Der eigentliche Wert des täglichen Laufs ist die
Wachstumsbeobachtung, nicht die Bereinigung. Das ist kein Fehler, aber es verschiebt den
Zweck des Loops und sollte im Prompt so benannt werden.

**4. Die Erhebung ist teurer als nötig.** Der Subagent brauchte 53 Werkzeugaufrufe und
rund vier Minuten für zwölf Sites, obwohl sieben davon beide Stufen leer hatten und fünf
ohnehin unter 10 GB liegen. **Empfehlung:** nur Sites mit mehr als 100 MB Belegung prüfen
und die zweite Stufe zuerst messen, weil nur sie eine Aktion auslöst. Das halbiert die
Aufrufe ohne Informationsverlust.

**Nebenbefund ausserhalb des Prompts:** Der Reports-Ordner führt zwei Namensformate
(achtstellig aus Juni/Juli, sechsstellig seit 13.07.). Die Ermittlung des jüngsten Reports
über eine Namenssortierung ist dadurch nur zufällig korrekt. Entweder die zwei Altdateien
vereinheitlichen oder im Prompt ausdrücklich nach dem sechsstelligen Muster filtern.

## Offene Phase-2-Empfehlungen (nur interaktiv, mit Bestätigung)

| Aktion | Site | Potenzial | Voraussetzung |
|---|---|---|---|
| **Versions-Trim (dringend)** | JANS.PROJEKTE | **~105-130 GB** | interaktiver PnP-Login (siehe unten) |
| Versions-Trim | IMMO | ~2-4 GB | dito |
| Eigene, engere Site-Versions-Policy prüfen | JANS.PROJEKTE | Wachstum stoppen | nach dem Trim |
| Leere Test-/Junk-Sites löschen | WBHafenarealSZ, Test, 2x AllCompany | ~0 GB (Hygiene) | Sichtung |

Versions-Trim-Befehl (Raphaels interaktiver Login nötig, NICHT `-DeviceLogin`):
```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE \
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```
