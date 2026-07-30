---
title: Denkmalschutz/Ortsbildschutz als Planungsgrundlage — ISOS (Bund) + Archäologische Zonen/Denkmalschutzobjekte (Kt. ZH) + BILU/KDV (Kt. LU)
status: established
last_updated: 2026-07-30 (Wartungslauf 01: BAK-ISOS-URL korrigiert)
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
  - PL-01 Kartenportale/KtLU Luzern/Geodatenshop Kanton Luzern/03 Produkte Geodatenshop/
    Denkmalverzeichnis und Bauinventar/ (BILU-Bauinventar + KDV-Denkmalverzeichnis + Kulturgüter +
    Legende, map.geo.lu.ch/kulturgueter/denkmaeler, 29.05.2024, realer Beleg Haus Jans
    Steinhofstrasse 25 Luzern, Grundstück 1737) + .../Grundbuchplan/ + .../Oeffentlich rechtliche
    Eigentumsbeschränkung/document.pdf (ÖREB-Auszug Kt. LU, ch.LU.20240529171105821, Run 65,
    2026-07-25, Token-Vollgas)
links: [[kartenportale-geoportale-uebersicht]] [[kartenportale-naturgefahren-objektschutz]]
  [[kartenportale-grundlagen-checkliste-neue-parzelle]] [[kartenportale-oereb-kataster-system-zh]]
  `wissen/baurecht/wiki/naturschutz-und-denkmalschutz.md`
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
- **Erklärseite:** `https://www.bak.admin.ch/de/isos` — ISOS-Einstiegsseite des BAK (HTTP 200,
  gemessen 2026-07-30). ⚠ **Adresse korrigiert (Wartungslauf 01, 2026-07-30):** die bis dahin
  hier geführte Fundstelle `www.bak.admin.ch/bak/de/home/baukultur/isos-und-ortsbildschutz/
  isos-in-kuerze.html` („ISOS in Kürze") liefert **HTTP 404**; das BAK hat seinen Webauftritt auf
  kurze Pfade umgestellt. Der Abschnittspfad `.../baukultur/isos-und-ortsbildschutz.html` leitet
  seinerseits auf `bak.admin.ch/de/isos` weiter — daher direkt die Zieladresse zitiert.

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

## 3. Kt. LU: zweistufiges System BILU/KDV + Kulturdenkmäler als eigenes ÖREB-Thema (Run 65, 2026-07-25)

Realer Beleg: Portal `map.geo.lu.ch/kulturgueter/denkmaeler` (Bau-, Umwelt- und
Wirtschaftsdepartement, Raum und Wirtschaft), Druck-Exporte 29.05.2024, plus der amtliche
ÖREB-Auszug desselben Grundstücks (Nr. 1737, E-GRID CH213596508835, Grundbuch Luzern linkes Ufer).
Realer JANS-Bezug: das abgefragte Objekt ist **Haus Jans, Steinhofstrasse 25, Luzern** (Baujahr
1931, Architekt Otto Dreyer, «Bauhaus entlehnte Elemente … typisches Schema des Einfamilienhauses
mit Satteldach», städtebaulich prägend an der Strassengabelung).

**Zwei-Ebenen-Inventar, analog zur ZH-Struktur, aber mit einem klaren Bindungs-Unterschied:**

1. **Bauinventar BILU** (kantonal, nicht rechtsverbindlich) — Stufung **erhaltenswert** (blau) /
   **schützenswert** (rot) / **Baugruppe**; Portal-Hinweis wörtlich: *„Gezeigte Daten haben keine
   Rechtswirksamkeit und erheben keinen Anspruch auf Vollständigkeit. Im Zweifelsfall … kontaktieren
   Sie die kantonale Denkmalpflege."* Haus Jans ist hier als **schützenswert** (Baugattung
   Einfamilienhaus [c] Wohnbauten, Inkraftsetzung Bauinventar 01.12.2017) geführt.
2. **Kantonales Denkmalverzeichnis KDV** (die rechtsverbindliche Stufe darüber) — Layer-Werte
   **denkmalgeschütztes Objekt** / **keine digitalen Daten verfügbar** / **denkmalgeschützte
   Gärten und Pärke (in Arbeit)**. Für Haus Jans ist im KDV-Layer **kein** Eintrag hinterlegt —
   das Objekt steht also (Stand 2024) im vorgelagerten BILU, aber (noch) nicht im rechtsverbindlichen
   KDV. Zuständige Fachstelle für beide Layer: **Denkmalpflege und Archäologie (da)**,
   `denkmalpflege.lu.ch`.
3. Zusätzliche Layer im selben Portal: **Archäologische Fundstellen** und **Inventar der
   schützenswerten Ortsbilder der Schweiz (ISOS)** — damit führt Kt. LU alle vier
   Denkmalschutz-/Ortsbild-Ebenen (kommunal fehlt) in **einem** Portal, während Kt. ZH sie auf
   getrennte Systeme (maps.zh.ch-Druckprodukt vs. Bundes-ISOS-Portal) verteilt.

**Genuiner struktureller Delta zu ZH — Kulturdenkmäler als eigenes, rechtskräftiges ÖREB-Thema:**
im amtlichen ÖREB-Auszug Kt. LU (`ch.LU.20240529171105821`, S. 5) erscheint **„Kulturdenkmäler"**
als eigenständiges Thema unter den das Grundstück **betreffenden** OEREB-Themen (neben
Zonenplan und Lärmempfindlichkeitsstufen) — mit Status **Rechtskräftig**, Rechtsgrundlage
*Verordnung zum Gesetz über den Schutz der Kulturdenkmäler* (SRL 310), Flächenanteil 66 m² /
13 % **schützenswert** direkt auf der Parzelle ausgewiesen und Link zur Online-Karte
(`map.geo.lu.ch/kulturgueter/denkmaeler?EGRID=…`). Kt. LU bindet den Denkmalschutz damit **direkt
in den ÖREB-Kataster** ein statt (wie im bisher dokumentierten ZH-Modell) als separates
GIS-Druckprodukt ausserhalb des ÖREB zu führen — bei einer LU-Grundlagenbeschaffung liefert der
**ÖREB-Auszug allein bereits** die rechtsverbindliche Denkmalschutz-Auskunft, ohne dass zusätzlich
das Kulturgüter-Portal separat abgefragt werden muss (Delta-Prüfung dort bleibt trotzdem
sinnvoll, weil das BILU als vorgelagerte Stufe NICHT im ÖREB erscheint, siehe Punkt 1 oben).

**Bezugsweg:** `map.geo.lu.ch/kulturgueter/denkmaeler` (Adress-/Objektsuche, Layer einzeln
zuschaltbar, PDF-Druckexport A4 1:500) für BILU/KDV/Archaeologie/ISOS; ÖREB-Auszug über den
kantonalen ÖREB-Geoportal-Zugang (Katasterverantwortliche Stelle: Raum und Wirtschaft rawi,
analog zu den bereits dokumentierten ZH/SZ-ÖREB-Auszuegen). Status **established** (amtliche
Primärquelle, Feldbezeichnungen/Rechtsgrundlage wörtlich aus dem Portal/Auszug übernommen).

## Zusammenfassung / Einordnung

| Ebene | Quelle/Portal | Rechtsgrundlage | Bezugsweg (belegt) | Automatisierbarkeit |
|---|---|---|---|---|
| National (ISOS) | `gisos.bak.admin.ch` (BAK) | Art. 78 BV, Art. 2/3 NHG | Web-Portal | nicht getestet |
| Kantonal ZH (überkommunal) | `maps.zh.ch` GIS-Browser + OGD-WFS 0368/0087 | §§ 203, 209 Abs. 2, 211 PBG | Druckprodukt/PDF-Export **und** OGD-WFS (login-frei, getestet) | **ja — Connector `--produkt denkmalschutz`** |
| Kommunal ZH | gemeindeeigenes Inventar | §§ 203, 211 PBG | nicht erschlossen (je Gemeinde) | offen |
| Kantonal LU, vorgelagert (BILU) | `map.geo.lu.ch/kulturgueter/denkmaeler` | nicht rechtsverbindlich (Portal-Hinweis) | Web-Portal + PDF-Druckexport | nein (Web-only) |
| Kantonal LU, rechtsverbindlich (KDV) | dass. Portal **und** ÖREB-Auszug (eigenes Thema) | Verordnung zum Gesetz über den Schutz der Kulturdenkmäler (SRL 310) | ÖREB-Auszug amtlich, Web-Portal | ÖREB-Auszug ja (amtlicher Bezug, wie ZH/SZ) |

Für eine belastbare Denkmalschutz-/Ortsbildschutz-Abklärung braucht es also **mindestens drei**
Anfragen (ISOS-Portal grob, kantonaler Layer für überkommunale Objekte, Gemeinde für das
kommunale Inventar) — analog zur bereits dokumentierten Werkleitungskataster-Domäne
([[kartenportale-werkleitungskataster]]) gibt es **kein einziges, abschliessendes Portal**.

## Offen (→ QUESTIONS)

- ISOS-Perimeter grundstücksbezogen abfragen (API/WFS?) — nicht getestet.
- Kt. SZ: äquivalenter Denkmalschutz-/Archäologie-Layer noch nicht kartiert (Kt. LU seit Run 65,
  2026-07-25, belegt — siehe §3).
- Kommunale Schutzobjekt-Inventare (§§ 203/211 PBG, unterhalb der kantonalen Schwelle) sind
  gemeindespezifisch und hier bewusst nicht erschlossen (kein einheitlicher Bezugsweg zu erwarten,
  analog Baumkataster [[kartenportale-geoportale-uebersicht]] §Baumkataster).
- Kt. LU: ob/wie sich ein KDV-Eintrag (rechtsverbindlich) nachträglich aus einem BILU-Eintrag
  (vorgelagert) ergibt und ob es dafür ein laufendes Verfahren/eine Frist gibt, ist mit der
  vorliegenden Quelle nicht belegt (nur der Ist-Zustand einer Stichprobe, kein Verfahrenstext
  gelesen).
