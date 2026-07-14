---
title: Denkmalschutz/Ortsbildschutz als Planungsgrundlage — ISOS (Bund) + Archäologische Zonen/Denkmalschutzobjekte (Kt. ZH)
status: emerging
last_updated: 2026-07-14
sources:
  - PL-01 Kartenportale/CH Schweiz/gisos.bak.admin.ch/gisos.bak.admin.ch.docx (2 URLs:
    gisos.bak.admin.ch/sites, bak.admin.ch „ISOS in Kürze")
  - PL-01 Kartenportale/Grundstueckkataster/Wald ZH/Archäologische Zonen und
    Denkmalschutzobjekte_A3Hoch_1000.pdf (GIS-ZH Druckprodukt maps.zh.ch, Massstab 1:1000,
    Datenstand 06.05.2024, realer Benchmark Altersheim-Parzellen Wald ZH)
  - maps.zh.ch/wfs/OGDZHWFS GetCapabilities + Live-GetFeature-Test (2026-07-14, Run 40): Layer
    `ms:ogd-0368_giszhpub_arv_kaz_denkmalschutzobjekte_p` + `ms:ogd-0087_arv_kaz_archzonen_f`
    identifiziert und via `geo-zh.mjs --produkt denkmalschutz --adresse "Haselstudstrasse 2, Wald ZH"`
    end-to-end getestet (EGRID CH927798864848, 4 Denkmalschutzobjekte inkl. Ensemble «Montana»/
    «Zelgli», Baujahr/Einstufung/Erlass/GVZ-Nr./EGID belegt)
links: [[kartenportale-geoportale-uebersicht]] [[kartenportale-naturgefahren-objektschutz]]
  [[kartenportale-grundlagen-checkliste-neue-parzelle]] `wissen/baurecht/wiki/naturschutz-und-denkmalschutz.md`
---

# Denkmalschutz/Ortsbildschutz als eigenständige Planungsgrundlage

Schliesst eine bisher unbearbeitete Lücke in PL-01: neben der bereits dokumentierten
Naturgefahren-/Objektschutz-Domäne ([[kartenportale-naturgefahren-objektschutz]]) gibt es eine
zweite, eigenständige Planungsgrundlagen-Kategorie — **Denkmalschutz/Ortsbildschutz** — die auf
**zwei Ebenen** geführt wird: national (ISOS, Bund) und kantonal (Denkmalpflege-/Archäologie-Layer,
hier am Beispiel Kt. ZH belegt). Die materiell-rechtliche Seite (Schutzobjekt-Katalog § 203 PBG,
Schutzmassnahmen § 205 PBG) ist bereits ausführlich in `wissen/baurecht/wiki/
naturschutz-und-denkmalschutz.md` dokumentiert — dieser Artikel deckt nur die **Geodaten-/
Bezugsseite** ab (PL-01-Domäne).

## 1. ISOS — Bundesinventar der schützenswerten Ortsbilder (national)

Quelldatei `gisos.bak.admin.ch.docx` enthält nur zwei Links, ohne weiteren Bearbeitungsvermerk —
Beleg-Tiefe entsprechend gering (Status **emerging**, reiner Verweis, nicht in der Praxis
angewendet dokumentiert):

- **Kartenportal:** `https://www.gisos.bak.admin.ch/sites` — das GIS-Portal des **Bundesamts für
  Kultur (BAK)** zum ISOS (Bundesinventar der schützenswerten Ortsbilder der Schweiz von
  nationaler Bedeutung).
- **Erklärseite:** `https://www.bak.admin.ch/bak/de/home/baukultur/isos-und-ortsbildschutz/
  isos-in-kuerze.html` — „ISOS in Kürze".

**Praxis-Einordnung (aus dem Betreff des Bundesamts, nicht selbst tiefer verifiziert):** ISOS ist
ein **Bundesinventar** (analog BLN für Landschaften) und wirkt primär als Interessenabwägungs-
Grundlage bei Bundesaufgaben (Art. 78 BV, Art. 2/3 NHG) — für ein privates Bauvorhaben also in
erster Linie **mittelbar** relevant (über die kantonale/kommunale Nutzungsplanung, die ISOS bei der
Interessenabwägung berücksichtigen muss), nicht als direkt bindende Bauvorschrift. Für die konkrete,
grundstücksbezogene Prüfung eines Bauvorhabens ist der kantonale/kommunale Layer (Abschnitt 2)
die relevantere erste Anlaufstelle. **Offene Frage:** ob/wie sich ein Grundstück gezielt gegen den
ISOS-Perimeter abfragen lässt (Endpunkt/API), ist mit der vorliegenden Quelle nicht belegt — bisher
nur der Web-Portal-Link bekannt, kein REST-Endpunkt getestet.

## 2. Kt. ZH: „Archäologische Zonen und Denkmalschutzobjekte" (kantonales Druckprodukt)

Realer Beleg: GIS-ZH-Druckprodukt (`maps.zh.ch`, Kanton Zürich GIS-Browser), A3 hoch, Massstab
1:1000, Datenstand 06.05.2024, Benchmark-Ausschnitt Wald ZH (zwei Altersheim-Parzellen rot markiert
als Denkmalschutzobjekt, blaue Punktsignaturen als archäologische Fundstelle/Zone). Die Legende auf
dem Kartenblatt liefert eine belegte, unmittelbar praxisrelevante Zuständigkeits- und
Vollständigkeits-Klärung:

> „Diese Karte zeigt nur Objekte von überkommunaler Bedeutung, welche in die Kompetenz der
> kantonalen Denkmalpflege fallen. Kommunale Objekte fallen in die Kompetenz der Gemeinden, die
> eigene Inventare führen (§§ 203, 211 PBG). Die Publikation stellt keine Inventareröffnung im
> Sinne von § 209 Abs. 2 PBG dar. Auch wenn ein Gebäude in dieser Karte nicht gekennzeichnet ist,
> kann es sich um ein Schutzobjekt handeln."

Drei belegte Praxis-Konsequenzen für eine JANS-Grundlagenbeschaffung:

1. **Zwei-Ebenen-Zuständigkeit** — der ZH-Kartenlayer deckt nur die **kantonale** Denkmalpflege
   (überkommunale Bedeutung) ab; **kommunale** Schutzobjekte führt jede Gemeinde in einem eigenen,
   hier nicht erschlossenen Inventar (§§ 203/211 PBG, Rechtsgrundlage bereits in
   `wissen/baurecht/wiki/naturschutz-und-denkmalschutz.md` dokumentiert). Für eine vollständige
   Prüfung reicht der kantonale Layer allein **nicht** — die Gemeinde ist zusätzlich zu fragen.
2. **Kein abschliessender Charakter** — die Karte „stellt keine Inventareröffnung im Sinne von
   § 209 Abs. 2 PBG dar" und ein nicht gekennzeichnetes Gebäude „kann" trotzdem Schutzobjekt sein.
   Die Karte ist also eine **Orientierungshilfe, kein Negativbeweis** — bei Verdacht (Altbau,
   historischer Ortskern) ist eine Anfrage bei der kantonalen Denkmalpflege/Gemeinde trotz „nicht
   markiert" angezeigt.
3. **Zwei überlagerte Themen in einem Produkt** — „Archäologische Zonen" (Bodenfunde/-verdacht,
   vgl. Schutzobjekt-Katalog § 203 Abs. 1 lit. d PBG) und „Denkmalschutzobjekte" (Bauten/Ensembles,
   lit. c) werden im selben Druckprodukt geführt, aber sind rechtlich unterschiedliche
   Schutzobjekt-Kategorien.

**Bezugsweg (Druckprodukt):** Wie die bereits dokumentierten ZH-Druckprodukte (Höhenkurven-
„Benutzerkarte", [[kartenportale-geoportale-uebersicht]] K28) läuft der manuelle Bezug über den
**GIS-Browser `maps.zh.ch`** als Ausdruck/PDF-Export je Parzellenausschnitt.

**Bezugsweg (Connector, getestet 2026-07-14):** Anders als zunächst vermutet, sind BEIDE zugrunde
liegenden Layer auch über den **OGD-WFS** `maps.zh.ch/wfs/OGDZHWFS` login-frei per GetFeature
abfragbar — gefunden per `GetCapabilities` und live verifiziert:

- `ms:ogd-0368_giszhpub_arv_kaz_denkmalschutzobjekte_p` (Punkt) — liefert je Objekt Ensemble,
  Objektbezeichnung, Baujahr, Einstufung (z.B. „regional"), Erlass (RRB-/AREV-Nummer), Schutzstatus,
  Strasse, GVZ-Nr., EGID, Katasternummer.
- `ms:ogd-0087_arv_kaz_archzonen_f` (Fläche) — liefert Zonen-Name/-Nummer + internen Suchbegriff
  (`ag_suchbegriff`), keine weiteren Feinattribute.
- Live-Test: `node geo-zh.mjs --adresse "Haselstudstrasse 2, Wald ZH" --produkt denkmalschutz`
  (EGRID CH927798864848) liefert **4 Denkmalschutzobjekte** im ±60-m-Fenster — u.a. «Ehem.
  Fabrikantenvilla» (Ensemble «Montana», Baujahr 1906-1907, Einstufung regional, Schutzstatus PD,
  Erlass RRB Nr. 5113/1979 + RRB Nr. 3488/1987) und ein weiteres Ensemble «Zelgli» (Ökonomiegebäude,
  Baujahr 1902, AREV Nr. 0136/2022). Archäologische Zonen: 0 Treffer im engen Fenster, aber im
  ±500-m-Testfenster 2 Zonen (`WALD-AZ010`/`WALD-AZ011`) bestätigt gefunden — der Layer funktioniert,
  ist aber räumlich enger verteilt als die Denkmalschutzobjekte.
- Connector-Feature `--produkt denkmalschutz` (default-Fenster ±60 m, `--radius` überschreibbar)
  ist ab sofort in `skills/planungsgrundlagen/connectors/geo-zh.mjs` verfügbar — analog zu
  `zonenplan`/`baulinien` nur für Kt. ZH hinterlegt.

## Zusammenfassung / Einordnung

| Ebene | Quelle/Portal | Rechtsgrundlage | Bezugsweg (belegt) | Automatisierbarkeit |
|---|---|---|---|---|
| National (ISOS) | `gisos.bak.admin.ch` (BAK) | Art. 78 BV, Art. 2/3 NHG | Web-Portal | nicht getestet |
| Kantonal ZH (überkommunal) | `maps.zh.ch` GIS-Browser + OGD-WFS 0368/0087 | §§ 203, 209 Abs. 2, 211 PBG | Druckprodukt/PDF-Export **und** OGD-WFS (login-frei, getestet) | **ja — Connector `--produkt denkmalschutz`** |
| Kommunal ZH | gemeindeeigenes Inventar | §§ 203, 211 PBG | nicht erschlossen (je Gemeinde) | offen |

Für eine belastbare Denkmalschutz-/Ortsbildschutz-Abklärung braucht es also **mindestens drei**
Anfragen (ISOS-Portal grob, kantonaler Layer für überkommunale Objekte, Gemeinde für das
kommunale Inventar) — analog zur bereits dokumentierten Werkleitungskataster-Domäne
([[kartenportale-werkleitungskataster]]) gibt es **kein einziges, abschliessendes Portal**.

## Offen (→ QUESTIONS)

- ISOS-Perimeter grundstücksbezogen abfragen (API/WFS?) — nicht getestet.
- Kt. SZ/andere Kantone: äquivalenter Denkmalschutz-/Archäologie-Layer noch nicht kartiert.
- Kommunale Schutzobjekt-Inventare (§§ 203/211 PBG, unterhalb der kantonalen Schwelle) sind
  gemeindespezifisch und hier bewusst nicht erschlossen (kein einheitlicher Bezugsweg zu erwarten,
  analog Baumkataster [[kartenportale-geoportale-uebersicht]] §Baumkataster).
