---
quelle: Web-Synthese mehrerer Fachquellen (Heizsystem-/JAZ-Richtwerte) + KB-Bestand (WPesti/EN-LCC-ZH/SIA 384)
herausgeber: u.a. EnergieSchweiz-/Branchenkontext, Vaillant CH, energie-experten.org, FWS-Tagungskontext (BFE)
ausgabe: Web-Stand Juni 2026
gelesen: Web-Recherche 2026-06-18 (JAZ-Bandbreiten je WP-Typ, Heizsystem-Vergleich WP/Fernwaerme/Pellets)
datenstand: 2026-06-18 (Richtwerte) · Feld-JAZ-Beleg ergaenzt 2026-06-27 (FAWA/BFE + EN 14825); exakte JAZ projekt-/geraeteabhaengig (WPesti)
status: established
last_updated: 2026-06-27
---

# Destillat — Waermepumpe vs. Fernwaerme vs. Pellets (Systemwahl + JAZ/COP)

> Grundlage fuer die Bauherren-Frage **F6** «Welches Heizsystem?». **Wichtig:** Die JAZ-Zahlen unten
> sind **Richtwerte/Bandbreiten** aus mehreren Fachquellen, **keine** projektgenauen Werte — die
> verbindliche Effizienz rechnet **WPesti** (Minergie) bzw. **SIA 384/3**, die Systemwahl/das fossile
> Heizverbot regelt **Skill `baurecht`** (EnerG §10a/§11, EN-LCC-ZH).

## Das Wichtigste in 1 Satz
Im Schweizer Neubau heisst die Antwort fast immer **Waermepumpe** (oder **Fernwaerme**, wo ein Netz
liegt); **Pellets/Holz** sind die Option, wo eine WP technisch schlecht passt (hohe Vorlauftemperatur,
kein Erdsondenrecht, Ersatz im schlecht gedaemmten Altbau) — fossile Systeme sind im Neubau praktisch
verboten.

## COP vs. SCOP vs. JAZ (Begriff)
- **COP** (Coefficient of Performance) = Wirkungsgrad im **Labor-Pruefpunkt** (Momentanwert; LW B2/W35,
  SW B0/W35, WW W10/W35) — **kein Systemvergleich** moeglich.
- **SCOP** (EN 14825) = saisonal gewichteter Labor-Wert; Referenzklima **Strassburg** → fuer die CH
  **~5-7 % zu hoch** (vgl. `[[cop-scop-jaz-waermepumpe-gruenenwald]]`).
- **JAZ** (Jahresarbeitszahl) = **gelieferte Waerme / Stromverbrauch ueber das Jahr**, im **Feld gemessen** —
  die praxisrelevante Kennzahl; eine WP «macht aus 1 kWh Strom 3-5 kWh Waerme».
- **Hebel fuer eine hohe JAZ:** tiefe **Vorlauftemperatur** (Flaechenheizung, BBV I ≤ 35 °C, vgl.
  F14), gute Quelle (Erdreich/Grundwasser stabiler als Aussenluft), saubere Dimensionierung (vgl. F13).

## Feldbeweis (Schweizer Primaerquelle FAWA/BFE)
Die BFE-Feldanalyse **FAWA** (236 Anlagen, 1,3 Mio. Betriebsstunden) belegt die obige Logik mit real
gemessenen JAZ: **Sole/Wasser Ø 3,5**, **Luft/Wasser Ø 2,7** (S/W **+32 %**; ⚠ Stand 2004, moderne
Geraete hoeher), Anlagenpark CH 2,5 → 3,0. Sanierung **−9 % JAZ** (Vorlauftemperatur +5 K), Regler mit
Raumtemperatur-Aufschaltung **+8 %**, **technische Pufferspeicher ohne JAZ-Nutzen**, S/W-WP **haeufig zu
gross ausgelegt** (Sicherheitszuschlaege vermeiden) → `[[fawa-jaz-feldanalyse-waermepumpen]]`.

## JAZ-Richtwerte je WP-Typ (Bandbreiten, Stand 2026)
| WP-Typ | Quelle | JAZ-Richtwert | Charakter |
|---|---|---|---|
| **Luft-Wasser** | Aussenluft | **~2,5-3,5** (moderne bis ~4,0) | guenstigste Investition, keine Bohrung/Bewilligung; tiefere JAZ bei Kaelte, Schall-/Standortthema |
| **Sole-Wasser (Erdsonde)** | Erdreich | **~4,0-4,5** | hohe, stabile Effizienz; Bohrung + **Gewaesserschutz-Gesuch AWEL**, hoehere Investition |
| **Wasser-Wasser (Grundwasser)** | Grundwasser | **~5** | hoechste Effizienz; nur wo Grundwasser nutzbar + bewilligt (AWEL); Brunnen/Unterhalt |

⚠ Die Werte streuen je Quelle (z.B. Luft-Wasser «2,5-4,0»); fuer ein Projekt gilt der **WPesti-/
SIA-384/3-Wert**, nicht die Faustzahl. Foerder-/Effizienz-**Mindest-JAZ** sind kantonsabhaengig — fuer
ZH am aktuellen Foerderprogramm/EVEN pruefen, nicht aus DE-Quellen uebernehmen.

## Systemvergleich (Entscheidungslogik)
| System | Pro | Contra / Bedingung |
|---|---|---|
| **Luft-Wasser-WP** | tiefste Investition, kein Erdeingriff, schnell | tiefere JAZ, **Schall/Nachbarschaft (LN-1a/1b)**, Aussengeraet |
| **Sole-/Wasser-WP** | hoechste JAZ, leise, langlebig | Bohrung/Brunnen + AWEL-Gesuch, Investition, Vorlaufzeit |
| **Fernwaerme** | schlankster Weg, kein Erzeuger/Unterhalt im Haus, Platz | **nur wo Netz liegt**, keine Brennstoffwahl, Anschluss-/Leitungskosten, Netz-CO₂ extern |
| **Pellets/Holz** | hohe Vorlauftemperatur moeglich (Altbau), CO₂-arm (biogen) | **Lagerraum + Zufuhr**, Feinstaub (Ballungsraum), Wartung/Asche, Feuerpolizei + Abgasanlage |
| **Fossil (Oel/Gas)** | — | **Neubau verboten** (EnerG § 11 Abs. 1); Bestand nur mit EN-LCC-ZH + EN-120 (vgl. F14) |

## Faustregel zur Wahl
1. **Liegt ein Fernwaermenetz an?** → meist **Fernwaerme** (schlankster Weg, vgl. F7/F14).
2. **Sonst Neubau/gut gedaemmt + Flaechenheizung** → **Luft-Wasser-WP** als Standard; bei Platz/
   Budget fuer Bohrung und Effizienzanspruch **Erdsonden-WP** (hoehere JAZ, hoehere Foerderung, vgl. F7).
3. **Grundwasser nutzbar + bewilligt** → **Wasser-Wasser-WP** (hoechste JAZ).
4. **WP technisch schwierig** (sehr hohe Vorlauftemperatur im unsanierten Altbau, kein Erdsondenrecht,
   Schall/Platz) → **Pellets/Holz** oder **erst Huelle daemmen, dann WP** (vgl. F2/F13).

## Bauherren-Transfer
- **Die JAZ ist die Stromrechnung der WP:** eine Erdsonden-WP (JAZ ~4,5) braucht fuer dieselbe Waerme
  rund **ein Drittel weniger Strom** als eine Luft-WP (JAZ ~3,0) — das relativiert die hoehere
  Bohr-Investition, zumal die Erdsonden-WP **mehr Foerderung** bekommt (vgl. F7).
- **Wer zuerst die Huelle daemmt, senkt die Vorlauftemperatur** und hebt die JAZ — daemmen und
  Heizungswahl gehoeren zusammen gedacht (vgl. F2/F13).
- **Schall bei der Luft-WP ist der haeufigste Streitpunkt** mit Nachbarn → Laermschutznachweis
  LN-1a/1b frueh (vgl. F14).

## Offene Punkte / Folgelaeufe
- **Belegluecke geschlossen ✓ 2026-06-27:** Schweizer Primaerquelle fuer Feld-JAZ jetzt im Bestand
  (`[[fawa-jaz-feldanalyse-waermepumpen]]`, BFE/FAWA) + Begriffsklaerung COP/SCOP/JAZ
  (`[[cop-scop-jaz-waermepumpe-gruenenwald]]`, EN 14825). Die Bandbreiten oben bleiben als **heutige**
  Richtwerte gueltig (FAWA = historischer Boden 2004 + zeitlose Planungslogik).
- **Offen:** **moderne** projektgenaue JAZ-Defaults (WPesti/SIA 384/3, FWS-Aktuellstatistik),
  WP + PV-Eigenverbrauch (Lastmanagement), WP-Schallnachweis im Detail, Kosten-/
  Amortisationsvergleich (CHF) — eigene Grundlage.
- **Abgrenzung:** Heizsystem-**Entscheid/Bewilligung** + fossiles Heizverbot → Skill `baurecht`;
  Foerderbeitraege → F7 / `[[foerderprogramm-energie-zh-2026]]`; Dimensionierung → F13 /
  `[[bfe-waermeerzeugerleistung-2015]]`; Verfahren/Beilagen Heizungsersatz → F14 /
  `[[wta-formular-zh-waermetechnische-anlagen]]`.
</content>
