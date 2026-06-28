---
quelle: "Schallschutz im Holzbau — Kooperationsprojekt BFH-Lignum, Bericht 2712-SB-01"
herausgeber: "Lignum (Holzwirtschaft Schweiz) + Berner Fachhochschule Architektur, Holz und Bau (BFH-AHB); gefoerdert durch BAFU"
verfasser: "Bernhard Furrer, Matthias Schmid, Heinz Weber"
ausgabe: "04.12.2008 (Vorprojekt-/Bedarfsanalyse-Bericht)"
gelesen: 2026-06-28 (S. 1-14 vollst.: Abstract + Kap. 1-5.2 Ausgangslage/Stand der Technik/Bauteilkennwerte)
datenstand: "⚠ 2008 — Norm-Bezug SIA 181:2006 + EN 12354:2001. Der Flanken-/Nachweis-MECHANISMUS ist normgueltig und zeitlos; SIA 181 ist heute :2020 (Komfort + 1 dB ggue. 2006 → vgl. [[sia-181-schallschutz-anforderungswerte]]). Konkrete Holzbau-Konstruktions-/Flankenkennwerte stehen in den spaeteren Lignum-Dokumentationen (LIT-Reihe), nicht hier."
status: established
last_updated: 2026-06-28
---

# Schallschutz im Holzbau — Flankenuebertragung & Nachweis-Mechanik (BFH-Lignum 2008)

## Das Wichtigste in 1 Satz
Seit SIA 181:2006 (mit direktem Bezug zur EN 12354) zaehlt fuer den Schallschutz **nicht der
Labor-Einzahlwert eines Bauteils, sondern die Bausituation inklusive der ~12 Nebenwege ueber die
flankierenden Bauteile** — und genau diese Flankenkennwerte sind im Holzbau die grosse Planungs-
luecke, weshalb der Planer mit Reserve auslegen muss.

## Kontext / was dieser Bericht ist
Dies ist der **Vorprojekt-/Bedarfsanalysebericht** (Phase 1) des nationalen Kooperationsprojekts
«Schallschutz im Holzbau» von Lignum + BFH-AHB. Er begruendet den Forschungsbedarf und erklaert
die akustischen Grundlagen — er liefert **noch keine** fertigen Konstruktionstabellen. Ausloeser:
die neue Norm **SIA 181:2006 «Schallschutz im Hochbau»** verlangt neu detaillierte Angaben ueber
**Flankenwege** und **spektrale Anpassungswerte**, und der geforderte akustische Komfort ist
gegenueber frueher um **~5 dB** gestiegen (Luft- wie Trittschall) — das setzte neue Massstaebe fuer
die bauakustische Dokumentation, gerade beim mehrgeschossigen Holzbau.

## Kernbegriffe (die Mechanik, normgueltig)

### Labor vs. Bau — der Strich macht den Unterschied
| Groesse | Bedeutung | Situation |
|---|---|---|
| **R_w** (ohne Strich) | Direkt-Schalldaemm-Mass, reine **Bauteil**kenngroesse | Labor, **ohne** Nebenwege |
| **R'_w** (mit Strich) | bewertetes **Bau**-Schalldaemm-Mass | Bau, **mit** bauueblichen Flanken |
| **L_n,w** | Norm-Trittschallpegel des Bauteils | Labor, ohne Flanken |
| **L'_n,w** (mit Strich) | bewerteter Norm-Trittschallpegel | Bau, mit Flanken |

Merksatz: **Strich = am Bau, mit Flankenuebertragung.** Beispiel aus dem Bericht: eine
Wohnungstrennwand erreicht am Bau ein R'_w bis ~55 dB, das reine Direktdaemm-Mass R_w kann sogar
~60 dB erreichen — die Differenz frisst die Flanke.

### Projektierungszuschlag K_P und Flanken-Zuschlag K_F
- **K_P (Projektierungszuschlag, SIA 181:2006 Ziff. 4.1.1.2):** Sicherheitsabschlag in dB(A), der
  pruefstandsabhaengige Streuungen abdeckt.
- **K_F (Flankenuebertragung, Ziff. 4.1.1.3):** planmaessige Schallnebenweguebertragungen sind
  **zusaetzlich** zum Projektierungszuschlag zu beruecksichtigen — entweder ueber das
  **Prognoseverfahren nach EN 12354** oder ueber eine **Abschaetzung** (Ab-/Zuschlaege K_F aus dem
  Vergleich Labor↔Bau bei gleichartigen Bauteilen). SIA 181 hat damit den **direkten Bezug zur
  EN 12354**: neben dem Trennbauteil sind **12 Nebenwege** ueber die flankierenden Bauteile in die
  Prognose einzubeziehen.

### Spektrum-Anpassungswerte (C-Werte)
Neu mit SIA 181:2006 obligatorisch: die **Spektrum-Anpassungswerte C, C_tr, C_I** (Korrekturen, die
die Frequenzabhaengigkeit einer Laermquelle ans Gehoer anpassen). Schreibweise:
**R_w(C;C_tr) = 53(-1;-5) dB**. Faustregel aus dem Bericht: **C_tr** ist zutreffend fuer
**staedtischen Strassenverkehr** (laute tiefe Anteile), **C** eher fuer Autobahnlaerm. Aussagekraeftig
fuer das Schalldaemmvermoegen ist erst die **Summe** aus R_w bzw. L_n,w **plus** dem passenden
Anpassungswert — nicht R_w allein.

## Die Holzbau-spezifische Luecke (Stand 2008)
- **Datenlage Decken (Luftschall-Messungen):** Balkendecken gut dokumentiert (n = 128, davon 76 Labor /
  52 Bau). Zeitgerechtere Systeme massiv unterdokumentiert: **Massivholz n = 15, Kasten n = 3,
  Holz-Beton-Verbund (HBV) n = 1**. → Fuer moderne Holz-Decken war die Planungssicherheit gering,
  zusaetzliche Labor-/Baumessungen noetig.
- **Verfuegbarkeit der Kennwerte (Abb. 8):** Bauteilkennwerte aus Labormessung **ohne** Flanken nur
  *teilweise* verfuegbar; **Flankenuebertragungs-Kennwerte praktisch nicht/teilweise** — die
  zentrale Planungsluecke. Grund: Holzbauteile sind mehrschichtig/mehrteilig, die Vielzahl der
  Kombinationen ist nicht alle im Labor messbar.
- **Konsequenz fuer den Planer:** «Sind die entsprechenden Kennwerte nicht verfuegbar, ist der Planer
  bei der Konstruktionswahl gezwungen, **genuegend Sicherheit einzuplanen**, um die geforderten
  Zielvorgaben einzuhalten.» → genau die Labor-Reserve, die im JANS-Workflow gefordert wird.

## Bauherren-Transfer
- **Warum «Rw 52» auf dem Datenblatt nicht reicht:** Verbindlich ist der **Bauwert** (D_nT,w / L'_nT,w
  am fertigen Bau **inkl. der 12 Flankenwege**), nicht der Labor-Einzahlwert des Trennbauteils. Im
  Holzbau liegt der Bauwert wegen durchlaufender Scheiben/Stoesse teils **3-8 dB** unter dem Laborwert
  (→ vgl. F17/F25, `[[clt-schallschutz-stora-enso]]`). **Deshalb Labor-Reserve einplanen.**
- **Der Hebel liegt an den Stoessen, nicht nur in der Wand:** Schallschutz im Holzbau gewinnt man
  ueber **elastisch entkoppelte Anschluesse** (Wand/Decke), weil sonst die Flanke die gute Trennwand
  zunichtemacht — die Wand allein zu verbessern bringt wenig, wenn der Stoss durchschallt.
- **Frueh den Bauphysiker holen:** Weil die Flankenkennwerte (gerade fuer neue Holz-Systeme) oft fehlen,
  ist die Prognose nach EN 12354 + Reserve Pflicht; das gehoert in die Ausschreibung (Ziel
  **D_nT/L'_nT** statt nur «Rw»), nicht erst in die Abnahme.
- **Laermquelle bestimmt die Anforderung:** ob C oder C_tr massgebend ist, haengt an der Quelle
  (Strassen- vs. Autobahnlaerm) — relevant fuer den Aussenlaerm-Nachweis (vgl.
  `[[sia-181-schallschutz-anforderungswerte]]`).

## Offene Punkte / Abgrenzung
- **Konkrete Konstruktionsdetails + gemessene K_F-/Bauteilwerte** liefert dieser 2008er Bericht NICHT —
  sie stehen in den **spaeteren Lignum-Dokumentationen** «Schallschutz im Holzbau» (LIT-Reihe,
  Decken/Waende/Anschluesse). → kuenftige Destillat-Quelle (Lignum-Shop / lignum.ch).
- **Normversion:** Bericht referenziert SIA 181:**2006**; aktuell gilt SIA 181:**2020** (Anforderungen
  + 1 dB Komfort, vier Schutzziele) → `[[sia-181-schallschutz-anforderungswerte]]`. Der Flanken-/
  Nachweis-Mechanismus (R_w/R'_w, K_P, K_F, 12 Nebenwege, EN 12354, C-Werte) ist unveraendert gueltig.
- **Brandschutz** der gleichen entkoppelten Aufbauten → Skill `brandschutz`; **oeffentlich-rechtlicher
  Laermschutz** (USG/LSV) → Skill `baurecht`.

→ Backlinks: `[[schallschutz-sia181]]`, `[[sia-181-schallschutz-anforderungswerte]]`,
`[[clt-schallschutz-stora-enso]]`, `[[holzbau-bauphysik-clt]]`, BAUHERREN-FAQ F17 / F25.
