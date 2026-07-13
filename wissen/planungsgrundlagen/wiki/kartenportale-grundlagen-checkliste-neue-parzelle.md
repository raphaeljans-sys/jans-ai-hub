---
title: Grundlagen-Checkliste «neue Parzelle» — was JANS IMMER zuerst holt (M1)
status: established
last_updated: 2026-06-30
sources: [eigene Connectoren skills/planungsgrundlagen/connectors/ (geo-zh.mjs, geo-sz.mjs, geoshop-zh.mjs, gwr-bund.mjs, behoerden-zh.mjs), validiert end-to-end am Benchmark Giebelweg 12 Langnau a.A. (EGRID CH879777718909, Kat. 3338, BFS 136) am 2026-06-30, zusammengefuehrt aus den established-Artikeln der KB]
links: [[kartenportale-oereb-egrid-bezug]], [[kartenportale-zonenplan-zh]], [[kartenportale-baulinien-abstandslinien-zh]], [[kartenportale-bund-geodaten]], [[kartenportale-geoportale-uebersicht]], [[kartenportale-sharepoint-ablage]], [[recht-norm-quellenlandkarte]], [[brandschutz-pl03-wegweiser]], [[energie-uebersicht]], [[oereb-schwyz]], [[kartenportale-naturgefahren-objektschutz]], [[kartenportale-werkleitungskataster]]
---

# Grundlagen-Checkliste «neue Parzelle» (M1)

Beantwortet **M1** (curriculum Meta/Querschnitt): **was holt man IMMER zuerst**, wenn eine neue
Parzelle/Adresse auf den Tisch kommt — als reproduzierbarer **Standard-Output** fuer den Start
jeder Studie. Vorgelagerte Grundlagen-Stufe zu `machbarkeit`, `ankaufspruefung`,
`behoerden-vorabklaerung` und `volumenstudie`. Alle Schritte sind **login-frei** und ueber die
eigenen Connectoren automatisiert; jeder Punkt verlinkt den vertiefenden Artikel.

> **Goldene Regel (Rule `identifikatoren-verifizieren`):** Nie eine EGRID/Parzelle/Koordinate
> erfinden. Der Bezug startet **immer** mit der validierten Kette **Adresse → EGRID** (Schritt 0);
> alle Folgeprodukte haengen an dieser einen verifizierten ID. Adress-Fallgrube SZ: Adresse trifft
> oft die **Nachbarparzelle** → in SZ ueber Parzellennummer beziehen ([[oereb-schwyz]]).

---

## Die 8 Pflicht-Grundlagen (Reihenfolge = Bezugsreihenfolge)

| # | Grundlage | Warum zuerst | Bezug (Kt. ZH) | Artikel |
|---|---|---|---|---|
| **0** | **EGRID + Parzelle + Koordinate** | Schluessel-ID fuer alles Weitere; verifiziert Adresse↔Grundstueck | `geo-zh.mjs --adresse "…" --json` | [[kartenportale-oereb-egrid-bezug]] |
| **1** | **OEREB-Auszug (PDF)** | amtlicher Gesamtblick: Nutzungsplanung, Baulinien, Laerm, Grundwasser, Altlasten, Wald | `geo-zh.mjs --egrid … --oereb --out …` | [[kartenportale-oereb-egrid-bezug]] |
| **2** | **Grundnutzung/Zonenplan (Vektor: Zone, BMZ/AZ, Hoehen, VG, ES-Laerm)** | das **Baurecht in Zahlen** — mehr als der OEREB-PDF; inkl. ⚠ laufende BZO-Revision (proj-Layer) | `geo-zh.mjs --adresse "…" --produkt zonenplan --out …` | [[kartenportale-zonenplan-zh]] |
| **3** | **Baulinien + Abstandslinien (Verkehr/Wald/Gewaesser/Waldgrenze/Gewaesserraum)** | grenzen das **Baufeld** ein (Agent `baulinien-analyst`) | `geo-zh.mjs --adresse "…" --produkt baulinien --out …` | [[kartenportale-baulinien-abstandslinien-zh]] |
| **4** | **Amtliche Vermessung (Situationsplan/Kataster DXF)** | CAD-Grundlage fuer Baufeld/Volumen; Parzellengeometrie | `geoshop-zh.mjs --gemeinde "…"` (Produkt 10016 DXF) | [[kartenportale-geoportale-uebersicht]] |
| **5** | **Hoehenmodell (swissALTI3D/DTM) + Orthofoto (SWISSIMAGE)** | Terrain/Hang (massgebendes Terrain), Kontext; 3D-Render | `geo-zh.mjs --adresse "…" --produkt height,dtm,orthofoto --download --out …` | [[kartenportale-bund-geodaten]] |
| **6** | **GWR-Gebaeudedaten (bei Bestand: Volumen, EBF, Baujahr, Waermeerzeuger)** | Basis fuer Energienachweis/Kostenschaetzung/Umnutzung | `gwr-bund.mjs` (Layer ch.bfs.gebaeude_wohnungs_register) | [[kartenportale-gwr-bund]] |
| **7** | **Zustaendige Behoerden/Aemter** | wer entscheidet/ist anzufragen (Vorabklaerung) | `behoerden-zh.mjs` (Registry je BFS) | [[recht-norm-quellenlandkarte]] |

**Querschnitt-Pruefungen, die aus 0–7 folgen** (kein eigener Bezug, sondern Auswertung):
- **Recht/Norm**: welcher Erlass/Datenstand gilt → [[recht-norm-quellenlandkarte]] (Skill `baurecht` fuer die Wuerdigung).
- **Brandschutz**: QSS-Einstufung + Vorschriftenstand BSV 2015/17/22 (⚠ BSV 2026 verschoben/Marschhalt) → [[brandschutz-pl03-wegweiser]].
- **Naturgefahren** (bei Hang-/Bachlage IMMER pruefen, nicht nur bei offensichtlichem Risiko):
  Gefahrenstufe rot/blau/gelb kann trotz unauffaelligem Zonenplan/Baulinien das Baufeld einschraenken
  → [[kartenportale-naturgefahren-objektschutz]].
- **Ablage**: Produkte sofort in die PL-01-Sollstruktur legen → [[kartenportale-sharepoint-ablage]].

**Nicht Teil der 8 Pflicht-Grundlagen, aber vor Baueingabe/Ausfuehrung noetig:** der
**Werkleitungskataster** (Strom/Kommunikation/Gas/Wasser) — betreiberspezifisch, login-pflichtig,
kein zentrales Geoportal, kurze Gueltigkeit (EKZ 2 Wochen) → erst kurz vor Ausfuehrungsreife
anfragen, nicht schon im Vorprojekt → [[kartenportale-werkleitungskataster]].

---

## Kanton Schwyz (Kurz-Variante)

Fuer SZ-Parzellen laeuft 0/1 ueber den eigenen Connector `geo-sz.mjs` bzw. Skill
[[oereb-schwyz]] — **Bezug ueber Parzellennummer** (eindeutig; SZ-BFS-Filter), **nicht** ueber
Adresse (trifft Nachbarparzelle). Zonen/Mass: SZ ist IVHB-aligned (**§ 31i GFZ / § 31g BMZ**,
AZ kantonal abgeschafft — aber alte Bezirks-/QGP-Ordnungen tragen teils weiter eine AZ),
Quellen-Trias **Kanton / Bezirk / Quartiergestaltungsplan** → [[recht-norm-quellenlandkarte]] SZ-Block.

---

## Validierter End-to-End-Benchmark (2026-06-30)

**Giebelweg 12, 8135 Langnau am Albis** — Standard-Smoke-Test der Kette:

```
node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis" --json
  -> EGRID CH879777718909 · Parzelle 3338 · BFS 136 · E 2682864 / N 1238219   (Schritt 0 ✓)

node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis" --produkt zonenplan --json
  -> W/1.5 (W1) · BMZ 1.5 · GH 4.5 · FH 7 · ES_II · inKraft · keine Revision   (Schritt 2 ✓)
```

Beide Produkte login-frei, Antwortzeit < 5 s. Damit ist die Pflicht-Kette **0 → 2** als
**established** bestaetigt; Schritte 1/3/5 sind in den jeweiligen Artikeln separat validiert
(OEREB-PDF, Baulinien ±150 m, height/STAC). Dieser Block dient als wiederholbarer Funktionstest
des Connectors zu Beginn jedes Laufs.

---

## Anwendung / Anschluss

- **Output-Form:** Als Studien-Start gibt JANS daraus ein **Grundlagen-Deckblatt** (EGRID, Zone,
  BMZ/AZ, Hoehen, Baufeld-Restriktionen, Behoerden, Datenstand je Produkt) — die Basis, auf der
  `machbarkeit` Typ A das Volumen rechnet und `behoerden-vorabklaerung` die Fragen stellt.
- **Datenstand-Pflicht:** je Produkt das Bezugsdatum vermerken (OEREB-PDF traegt Stand; Zonen-Layer
  Festsetzungsdatum; BSV-Stand). ⚠ Laufende BZO-Revision (proj-Layer) immer mitziehen — sonst
  rechnet die Studie auf veraltetem Recht.
- **Offen (Folge-Loops):** senkrechtes Abstandsmass Linie↔Grenze automatisiert (Agent
  `baulinien-analyst` mit Parzellengeometrie aus Schritt 4); ZH-Naturgefahren-Endpunkt noch nicht
  kartiert (vermutlich AWEL, analog Gewaesserraum-Layer).
- **M2 erledigt 2026-07-13 (Run 22):** die Studien-Skills `machbarkeit`/`ankaufspruefung`/
  `behoerden-vorabklaerung` referenzieren den Skill `planungsgrundlagen` jetzt explizit als
  bevorzugte GIS-/Geodaten-Quelle (statt nur manuellem GIS-Browser-Verweis) — Anbindung war zuvor
  nur einseitig (planungsgrundlagen kannte die drei Skills, umgekehrt nicht).
