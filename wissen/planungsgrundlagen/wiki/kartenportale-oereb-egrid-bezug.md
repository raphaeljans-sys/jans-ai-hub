---
title: OEREB-Auszug und EGRID beziehen (Kt. ZH)
status: established
last_updated: 2026-06-05
sources: [GIS-Helpdesk Kt. ZH (Hannah Gies, 2026), api3.geo.admin.ch, maps.zh.ch/oereb/v2]
links: [[kartenportale-geoportale-uebersicht]], [[recht-norm-quellenlandkarte]], [[kartenportale-oereb-kataster-system-zh]]
---

# OEREB-Auszug und EGRID beziehen (Kt. ZH)

Der **OEREB-Auszug** (Kataster der oeffentlich-rechtlichen Eigentumsbeschraenkungen) ist der
amtliche Nachweis, welche Beschraenkungen (Nutzungsplanung, Baulinien, Laermschutz, Wald,
Gewaesser, Belastungen) auf einer Parzelle liegen. Er ist die wichtigste Einzel-Grundlage am
Anfang jeder Studie/Baueingabe.

## Bezugskette (validiert 2026-06-05)

```
Adresse  --SearchServer-->  Koordinate (LV95, sr=2056)
Koordinate  --identify-->  EGRID + Parzelle + BFS
EGRID  --maps.zh.ch-->  OEREB-Auszug (PDF, 7 S.)
```

1. **Adresse → Koordinate** (api3.geo.admin.ch SearchServer):
   `…/SearchServer?searchText=<Adresse>&type=locations&origins=address&sr=2056`
   liefert `y` (Ost, ~2.68 Mio) und `x` (Nord, ~1.24 Mio).
2. **Koordinate → EGRID** (identify auf Layer `ch.swisstopo-vd.amtliche-vermessung`):
   benoetigt `imageDisplay` und `mapExtent`; Attribut `egris_egrid` enthaelt den EGRID,
   `number` die Parzellennummer, `bfsnr` die Gemeindenummer.
3. **EGRID → OEREB-PDF** (Kt. ZH, **kein Login**):
   `https://maps.zh.ch/oereb/v2/extract/pdf.pdf?EGRID=<EGRID>`
   Einstieg manuell: GIS-Browser `https://maps.zh.ch?topic=OerebKatasterZH` → Grundstueck
   anklicken → Infoabfrage → «Auszug drucken».

> Quelle Bezugsweg: GIS-Helpdesk Kt. ZH, Hannah Gies (Baudirektion, ARE, Geoinformation), 2026.

## EGRID — Format & Bedeutung

Der **EGRID** (Eidg. Grundstueckidentifikator) ist der schweizweit eindeutige Schluessel einer
Parzelle: `CH` + 12 Zeichen, z.B. `CH879777718909`. Er ist stabil (anders als die kantonale
Parzellennummer) und der richtige Schluessel fuer OEREB, Grundbuch-/Eigentumsabfragen.

## Dateinamen-Konvention

Der ZH-Server liefert via `content-disposition` bereits den JANS-Standardnamen:
`Oereb-Auszug_<BFS>_<Parzelle>_<JJJJ-MM-TT>.pdf`. Unveraendert uebernehmen.

## Realer Beleg (Benchmark)

Giebelweg 12, 8135 Langnau am Albis → **EGRID CH879777718909**, Parzelle **3338**, BFS **136**;
OEREB-PDF `Oereb-Auszug_136_3338_2026-06-05.pdf` (7 Seiten, ~945 KB). Projekt `2621 Giebelweg 12`.

## Connector

`skills/planungsgrundlagen/connectors/geo-zh.mjs` kapselt die ganze Kette:
`node geo-zh.mjs --adresse "Giebelweg 12 Langnau am Albis" --oereb --out <A> --out <B>`.

## Standard-Ablage

(1) `PL - 01 Kartenportale/OEREB-Auszug` (buerofweit) und
(2) Projektordner `…/01_Plaene/99 Plangrundlage`.

## Grenzen / offen

- Nur **Kt. ZH** validiert. Jeder Kanton hat einen eigenen OEREB-Service — SZ etc. offen
  (siehe `wiki/QUESTIONS.md`). Die EGRID-Ermittlung (Schritt 1+2) ist national.
