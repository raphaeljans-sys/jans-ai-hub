# Normen-Nacht-Run 30 — 27.07.2026 (MacBook Pro)

## Ausgangslage
Das SIA/VKF-Hauptinventar (PL-02) ist seit Run 20 durchgehend bei 0 offenen `[ ]`-Positionen;
Run 22-29 haben die Endbedingung wiederholt durch Retro-Verifikation statt neuer Destillate
bestaetigt (Bestandsfallen, Q&A-Selbstbefragung, Tiefendestillate). Dieser Lauf hat stattdessen
den erst am 26.07.2026 als gleichrangige Quelle aufgenommenen Abschnitt "PL-03 Brandschutz" in
`training/norm-inventar.md` geprueft — dieser Abschnitt war seit seiner Aufnahme nicht mehr
gegen den tatsaechlichen Destillat-Stand abgeglichen worden.

## Befund 1 — Stale Bookkeeping: BRL 13-15/14-15 "Handlungsbedarf" war bereits erledigt
Der PL-03-Abschnitt listete fuer `BSPUB-1394520214-71.pdf` (BRL 13-15de) und
`BSPUB-1394520214-77.pdf` (BRL 14-15de) "Re-Destillation noetig" gegen die 2017-Fassung, basierend
auf dem Mapping-Report vom 25.07.2026. Tatsaechlich hatten Run 23 (25.07., Re-Destillation) und
Run 24 (25.07., Re-Verifikation) diese Arbeit bereits erledigt und established gehoben — nur die
PL-03-Tabelle (aufgenommen einen Tag spaeter) wurde nie nachgefuehrt. Korrigiert: beide Zeilen auf
"erledigt" gesetzt, mit Verweis auf die tatsaechlichen Runs.

**Lehre (analog Run 22/24):** eine Status-Tabelle, die auf einem aelteren Snapshot-Report basiert,
muss vor jeder "Handlungsbedarf"-Aussage gegen den aktuellen Destillat-Stand (Frontmatter
`ausgabe:`/`datenstand:`) geprueft werden — nicht nur gegen den Zeitpunkt des Reports.

## Befund 2 — PL-03-Unterordner 01/03/04/05 sind vollstaendige Duplikate von PL-02
Datei-fuer-Datei-MD5-Abgleich (26 Dateien: 1x Brandschutznorm 1-15, 1x Verzeichnis 40-15, 9x
Erlaeuterungen 100-15 bis 108-15, 4x Arbeitshilfen 1000/1001/1002-03/1002-15 — die 5. Arbeitshilfen-
Datei "1001-15 Auszug" ist ein separates Dokument, siehe Befund 3): **alle byte-identisch** mit
bereits am 260714 destillierten PL-02-Kopien unter `VKF_Norm/01_.../03_.../04_.../05_...`. PL-02
spiegelt die PL-03-Unterordnerstruktur 1:1 fuer diese vier Unterordner — keine neue Quelle, keine
neue Destillation noetig. Alle 12 betroffenen Destillate bereits `established` seit 260714.

## Befund 3 — 1001-15 Wohnbauten: Seitenzahl-Varianz aufgeklaert, 0 inhaltliche Abweichung
PL-03s `1001-15_Wohnbauten.pdf` hat 29 Seiten (PL-02: 27). Diff (`pdftotext`) zeigt: die 2
Zusatzseiten enthalten Ziff. 3.2/3.3 (Fluchtwege Wohnen/Buero) aus BRL 16-15 — dieser Inhalt ist
bereits eigenstaendig in `vkf-brl-16-15-flucht-rettungswege.md` destilliert, keine neue Information.
Zusaetzlich liegt in PL-03 ein separates 4-seitiges "Auszug"-Dokument
(`1001-15_Wohnbauten Auszug Brandschutz_Arbeitshilfe_Wohnbauten.pdf`, Kopfzeile "01.01.2017 /
1001-15de, Stand 17.05.2018", Fassung gemaess TK-VKF-Beschluss vom 29.09.2016) mit den Ziffern 3, 5
(Brandschutzabstaende) und 6 (Tragwerke/Brandabschnitte). Zeile-fuer-Zeile gegen das established-
Destillat `vkf-ah-1001-15-wohnbauten.md` verglichen: **0 Abweichungen** — alle Abstandswerte
(4/5/6/7.5/10 m) und alle Tragwerk-Tabellenwerte (R30/R60/REI30/REI60/EI30) identisch. Das
established-Destillat ist damit zusaetzlich gegen die 2017/2018-Fassung cross-verifiziert;
Frontmatter entsprechend ergaenzt (Status/Datenstand/gelesen-Feld).

## Befund 4 — Lignum-Unterordner 06: genuin neue Quelle, 3 Dokumente destilliert + verifiziert
`PL - 03 Brandschutz/06 Lignum Brandschutz/` hat KEIN Gegenstueck in PL-02 (`VKF_Norm/Lignum` dort
leer). Drei Bild-Scan-Dokumente ohne Textlayer visuell komplett gelesen und destilliert (4 parallele
Destillier-Agenten fuer 4.1, 4.2, Lignatec — Workflow-Tool nicht verwendet, gemaess Run-28-Erfahrung
direkt per Agent-Aufruf, PROGRAMM.md-Fallback):

| Destillat | Seiten | Kernthema | Verifikation |
|---|---|---|---|
| `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` | 40 (80 gedruckt) | Bauteilkatalog Decken/Waende/Bekleidungen Holzbau, RF1-Kapselungslogik, 7+7 Systeme | 9 Befunde korrigiert |
| `lignum-4-2-anschluesse-feuerwiderstand.md` | 33 (64 gedruckt) | Anschlussdetails Holzbauteile, EI30/60/90-Mindestmasse, 8 Beispielkonstruktionen | 2 Befunde korrigiert |
| `lignum-lignatec-brandschutz.md` | 12 | Uebersichts-Auszug Brandschutzanforderungen Holzbau, 8 Axonometrien | 2 Befunde korrigiert |

Jedes Destillat wurde von einem unabhaengigen Refuter-Agenten gegen den Original-Scan geprueft
(Refuter-Prinzip: aktiv zu widerlegen versuchen). **13 Befunde total**, alle direkt im Destillat
korrigiert — sachlich relevanteste: Fugentyp Wand/Decke vertauscht (4.1), REI60/REI90-Tabellen-
verwechslung (4.1), R60/EI60-Vertauschung (4.1), nbb-Suffix faelschlich auch auf R30 statt nur R60
angewendet (Lignatec), R30/R60-Geschosszahl-Verwechslung 3 vs. 4 Geschosse (Lignatec). Alle drei
Destillate bleiben bewusst `speculative` — kein sauberer Nulldurchgang, analog SIA D 0165 in Run 29.
`Erdbebengerechte_Holzbauten_d.pdf` (25 S.) NICHT destilliert: Thema Erdbeben, kein Brandschutz-/
Normeninhalt dieser KB — als Hinweis in `wiki/QUESTIONS.md` fuer den Wissens-Chef vermerkt.

## Befund 5 — Bring-Schulden SIA 491 / SN EN 12193 bestaetigt weiterhin fehlend
Erneute Suche in PL-02 UND PL-03 (26.07. neu aufgenommen): beide Normen in keiner der beiden
Ablagen vorhanden. Anders als bei den beiden Brandschutz-Dokumenten in Run 22 liegt hier keine
Fehlklassierung vor — echte externe Bring-Schuld (SIA-Shop-Kauf durch Raphael noetig).

## Nachgefuehrt
- `training/norm-inventar.md`: PL-03-Abschnitt vollstaendig korrigiert (Kopftabelle + Fassungs-
  Befunde-Tabelle + neuer Run-30-Kopfeintrag), Bring-Schulden-Zeilen SIA 491/EN 12193 aktualisiert
- `destillate/vkf-ah-1001-15-wohnbauten.md`: Frontmatter cross-verifiziert (Ziff.3/5/6 gegen 2018)
- `destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`,
  `destillate/lignum-4-2-anschluesse-feuerwiderstand.md`,
  `destillate/lignum-lignatec-brandschutz.md`: neu, destilliert + verifiziert
- `destillate/INDEX.md`: 3 neue Zeilen + Verifikations-Verdikte nachgefuehrt
- `wiki/QUESTIONS.md`: Run-30-Abschnitt (Bookkeeping-Korrektur, Erdbeben-Dokument out-of-scope,
  Bring-Schulden bestaetigt)
- `CHANGELOG.md`: 4 Eintraege (Reconcile-Hinweis, Lignatec, Lignum 4.1, Lignum 4.2)

## Kein Kollisionsfall (Klarstellung)
Die drei Destillier-Agenten fuer Lignum 4.1/4.2/Lignatec liefen als Teil dieses einen Run-30-Laufs
parallel im Hintergrund; da der Run-30-Kopfeintrag in `norm-inventar.md` bereits waehrend ihrer
Laufzeit geschrieben wurde, haben zwei der drei Agenten dies faelschlich als moeglichen zweiten,
unabhaengigen Prozess interpretiert und (korrekterweise vorsichtig, gemaess Rule 260724) selbst
keine Register-Dateien anfassen wollen. Klargestellt in `CHANGELOG.md`: kein Kollisionsfall, alle
Teile gehoeren zu diesem einen Run.

## Empfehlung fuer den naechsten Lauf
- PL-03-Restordner ohne Normen-Relevanz (`00 Brandschutzplaene bsvonline.ch`,
  `00 Brandschutznachweis.ch`, `_Projekte Themen`, `08 QS`/`z_Administration`) bleiben bewusst
  ausserhalb des Inventars (projektbezogen/Werkzeuge, keine Normtexte) — keine weitere Pruefung
  noetig, PROGRAMM.md-Tabelle ist damit fuer alle PL-03-Unterordner final.
- Die 3 neuen Lignum-Destillate stehen fuer eine weitere Verifikationsrunde offen, falls ein
  naechster Lauf einen zweiten unabhaengigen Refuter-Durchgang fuer establishe-Faehigkeit ansetzen
  will (analog SIA D 0165 in Run 29 — "naechste Runde ohne Beanstandung wuerde established
  rechtfertigen").
- SIA-Shop-Beschaffung SIA 491/EN 12193 bleibt Bring-Schuld bei Raphael, nicht durch den Loop
  loesbar.
