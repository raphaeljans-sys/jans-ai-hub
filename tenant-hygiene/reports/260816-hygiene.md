# Tenant-Speicher-Hygiene — Report 16.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:08 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: taeglich (seit 13.08.2026)

## Kernbefund: der Tenant schrumpft leicht

Zweiter voller Tag nach Raphaels Versions-Trim vom 13.08. Der Tenant hat in 24 Stunden
**90 MB verloren**, liegt also minim unter dem gestrigen Stand. Ueber die letzten 48 Stunden
sind es 72 MB weniger. Das ist kein Rueckgang mit Aussagekraft, sondern das uebliche
Rauschen der zeitverzoegerten Speicher-Metrik — die belastbare Aussage lautet: der Tenant
steht still, den zweiten Tag in Folge.

Die Papierkoerbe erster Stufe sind objektgenau unveraendert (454 Objekte, gleiche
Verteilung wie am 14. und 15.08.). Im Tenant wurde an diesem Tag nichts geloescht.

Ein Wochenende bleibt als Beobachtungszeitraum schwach. Die entscheidende Frage, ob der
Versionsverlauf unter dem weiterhin auf «Manuell» stehenden Tenant-Limit wieder anwaechst,
beantworten erst die Werktage der kommenden Woche.

## Korrektur am Vorreport: JANS.PROJEKTE reisst die 20-GB-Schwelle doch

Die Reports vom 14.08. und 15.08. schliessen ihren Bloat-Abschnitt mit «keine Site ueber
der 20-GB-Schwelle» — und fuehren im selben Abschnitt JANS.PROJEKTE mit 53.59 GB
Versionsverlauf. Das widerspricht sich. Das Bloat-Kriterium lautet «VersionSize > 20 GB
**ODER** > 25 % der Site-Belegung», die beiden Schwellen sind alternativ, nicht kumulativ.
53.59 GB reissen die absolute Schwelle um mehr als das Zweieinhalbfache.

Der Rohwert ist heute nachgeprueft: `VersionSize` = 57'542'766'372 Bytes = 53.59 GB, exakt
der Wert der beiden Vorreports. Es geht also nicht um eine Messaenderung, sondern um eine
Fehlklassifizierung, die zweimal fortgeschrieben wurde. Vermutliche Ursache: nach dem Trim
fiel der **relative** Anteil von 24.5 % auf 9.8 %, und aus diesem Rueckgang wurde
faelschlich auf beide Schwellen geschlossen.

Praktisch aendert das an der Empfehlung wenig — ein zweiter Trim so kurz nach dem ersten
findet kaum Substanz, siehe unten. Aber die Site gehoert korrekt als Versions-Bloat
gefuehrt, sonst faellt sie aus der Beobachtung, obwohl sie 84 % des gesamten
Versionsverlaufs im Tenant traegt.

## Tenant-Summe

- Belegt: **822.97 GB** (842'722 MB) ueber 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **78.1 %**, freier Puffer **231.0 GB**
- Delta zum Vorreport (15.08.2026, 20:10, 842'812 MB): **-90 MB in 23.97 Stunden**,
  also **-0.09 GB/Tag**
- Delta ueber zwei Tage (14.08., 842'794 MB): **-72 MB in 48 Stunden**

Die Summe stammt aus zwei unabhaengigen Abfragen (Einzelwerte aufaddiert und
`sum([].StorageUsage)`), beide liefern 842'722 MB.

## Restlaufzeit-Hochrechnung

Das Wachstum ist negativ. Eine Hochrechnung auf den vollen Pool ergibt daraus keinen
endlichen Wert und waere Fiktion. Es bleiben die beiden Szenarien der Vorreports, gerechnet
auf den heutigen Puffer von 231.0 GB:

- **Reines Nutzdatenwachstum** (rund 0.27 GB/Tag, Zehntagesschnitt ohne Versionen):
  rund **856 Tage**.
- **Wachstum inklusive Versionsverlauf wie vor dem Trim** (2.76 GB/Tag): rund **84 Tage**,
  also Anfang November 2026.

Zwei Nulltage hintereinander sind ein zunehmend brauchbares Indiz fuer das obere Szenario,
aber beide Tage waren Wochenendtage. Die 90-%-Marke (948.6 GB) liegt 125.6 GB entfernt, die
Sende-Schwelle von 88 % (927.5 GB) liegt 104.5 GB entfernt.

## Sites mit Belegung (nach Groesse)

| Site | Belegung | Versionen | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 546.70 GB | 53.59 GB | 311 Obj / 1.22 GB | leer | 15.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | leer | leer | 07.08.2026 |
| /sites/AD | 53.12 GB | 3.37 GB | 29 Obj / 0.01 GB | leer | 16.08.2026 |
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

Summe Versionsverlauf tenantweit: **64.1 GB** (7.8 % der Belegung), unveraendert gegenueber
den beiden Vortagen.

Einzige Site mit Aenderung heute: **AD** (53.20 auf 53.12 GB, -82 MB, zugleich die einzige
Site mit heutigem Aenderungsdatum). Alle uebrigen Belegungen sind MB-genau identisch mit
gestern.

## Klassifizierung

### Versions-Bloat

**Eine Site ueber der absoluten Schwelle** (korrigiert gegenueber den Vorreports, siehe oben):

- **JANS.PROJEKTE: 53.59 GB** Versionen auf 546.70 GB Site. Reisst die 20-GB-Schwelle,
  liegt mit **9.8 %** aber deutlich unter der relativen 25-%-Schwelle. Traegt 84 % des
  gesamten Versionsverlaufs im Tenant. Seit dem Trim vom 13.08. rechnerisch unveraendert —
  der Job hat keine weiteren Versionen mehr abgeraeumt, die damals angekuendigte
  Nachlaufloeschung ist entweder abgeschlossen oder steht noch aus.
- IMMO: 1.53 GB auf 4.03 GB, **38.0 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf.
- Uebrige unauffaellig: PL 8.7 %, AD 6.3 %, SE 1.1 %, kispi 0.6 %.

### Papierkoerbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites ueber 100 MB geprueft, 0 Objekte.
- **Achter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08. (Testlauf),
  13.08. (Nachlauf), 14.08., 15.08., 16.08.
- Nach Rule `auto-verbesserungen` 260729b wurde der gleichfoermige Subagenten-Befund an
  zwei Sites im Hauptkontext selbst nachgemessen (JANS.PROJEKTE, kispi), beide bestaetigt
  0 Objekte.
- Erste Stufen (Undo-Netz, bleibt unangetastet): **454 Objekte / 1.48 GB** tenantweit.
  Objektzahl und Verteilung sind den **dritten Tag in Folge identisch**
  (311 / 29 / 102 / 10 / 2) — im Tenant wurde seit dem 14.08. nichts geloescht.

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
| Versions-Trim JANS.PROJEKTE | derzeit gering, siehe unten | interaktiver PnP-Login | beobachten, nicht angezeigt |
| Erste Papierkorb-Stufe JANS.PROJEKTE | 1.22 GB | `recyclebinitem remove --ids` in 1000er-Batches | offen, kein Druck |
| Leere Test-/Junk-Sites loeschen | ~0 GB (Hygiene) | Sichtung | offen, kein Druck |

Zum Versions-Trim: JANS.PROJEKTE ist zwar korrekt als Bloat klassifiziert, ein erneuter
Trim ist heute trotzdem nicht angezeigt. Der Bestand ist seit dem 13.08. unveraendert, ein
Job wuerde also dieselben 53.59 GB vorfinden, die der letzte Lauf bereits als
behaltenswert eingestuft hat (5 Haupt-/5 Nebenversionen). Substanz entsteht erst wieder,
wenn neue Versionen anwachsen — und genau das soll das Tenant-Limit verhindern. Der Hebel
liegt weiterhin dort, nicht beim Trim. Falls doch:

```
Connect-PnPOnline -Url <site> -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f \
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

(NICHT `-DeviceLogin`.)

## Sende-Entscheid

**Keine der sechs Schwellen greift:** Auslastung 78.1 % (unter 88 %), Delta -0.09 GB/Tag
(unter 3), Restlaufzeit 84 bis 856 Tage (ueber 60), Auto-Bereinigung 0 GB, kein Blocker,
heute ist Sonntag (die Wochenpflicht greift morgen, Montag 17.08.).

Die Korrektur der Bloat-Klassifizierung ist kein Sendegrund: sie aendert die
Handlungsempfehlung nicht, und der dahinterliegende Dauerbefund (Tenant-Limit auf
«Manuell») steht ohnehin seit dem 13.07. im Register. Er gehoert in das
Montags-Pflichtbriefing von morgen.

**Still beendet.** Der Lauf ist vollstaendig durchgefuehrt, der Report geschrieben.
