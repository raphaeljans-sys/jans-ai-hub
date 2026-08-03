---
title: Grundlagen-Checkliste «neue Parzelle» — was JANS IMMER zuerst holt (M1)
status: established
last_updated: 2026-07-20 (Run 54)
sources: [eigene Connectoren skills/planungsgrundlagen/connectors/ (geo-zh.mjs, geo-sz.mjs, geoshop-zh.mjs, gwr-bund.mjs, behoerden-zh.mjs), validiert end-to-end am Benchmark Giebelweg 12 Langnau a.A. (EGRID CH879777718909, Kat. 3338, BFS 136) am 2026-06-30, zusammengeführt aus den established-Artikeln der KB]
links: [[kartenportale-oereb-egrid-bezug]], [[kartenportale-zonenplan-zh]], [[kartenportale-baulinien-abstandslinien-zh]], [[kartenportale-bund-geodaten]], [[kartenportale-geoportale-uebersicht]], [[kartenportale-sharepoint-ablage]], [[recht-norm-quellenlandkarte]], [[brandschutz-pl03-wegweiser]], [[energie-uebersicht]], [[oereb-schwyz]], [[kartenportale-naturgefahren-objektschutz]], [[kartenportale-werkleitungskataster]]
---

# Grundlagen-Checkliste «neue Parzelle» (M1)

Beantwortet **M1** (curriculum Meta/Querschnitt): **was holt man IMMER zuerst**, wenn eine neue
Parzelle/Adresse auf den Tisch kommt — als reproduzierbarer **Standard-Output** für den Start
jeder Studie. Vorgelagerte Grundlagen-Stufe zu `machbarkeit`, `ankaufspruefung`,
`behoerden-vorabklaerung` und `volumenstudie`. Alle Schritte sind **login-frei** und über die
eigenen Connectoren automatisiert; jeder Punkt verlinkt den vertiefenden Artikel.

> **Goldene Regel (Rule `identifikatoren-verifizieren`):** Nie eine EGRID/Parzelle/Koordinate
> erfinden. Der Bezug startet **immer** mit der validierten Kette **Adresse → EGRID** (Schritt 0);
> alle Folgeprodukte hängen an dieser einen verifizierten ID. Adress-Fallgrube SZ: Adresse trifft
> oft die **Nachbarparzelle** → in SZ über Parzellennummer beziehen ([[oereb-schwyz]]).

---

## Die 8 Pflicht-Grundlagen (Reihenfolge = Bezugsreihenfolge)

| # | Grundlage | Warum zuerst | Bezug (Kt. ZH) | Artikel |
|---|---|---|---|---|
| **0** | **EGRID + Parzelle + Koordinate** | Schlüssel-ID für alles Weitere; verifiziert Adresse↔Grundstück | `geo-zh.mjs --adresse "…" --json` | [[kartenportale-oereb-egrid-bezug]] |
| **1** | **OEREB-Auszug (PDF)** | amtlicher Gesamtblick: Nutzungsplanung, Baulinien, Lärm, Grundwasser, Altlasten, Wald | `geo-zh.mjs --egrid … --oereb --out …` | [[kartenportale-oereb-egrid-bezug]] |
| **2** | **Grundnutzung/Zonenplan (Vektor: Zone, BMZ/AZ, Höhen, VG, ES-Lärm)** | das **Baurecht in Zahlen** — mehr als der OEREB-PDF; inkl. ⚠ laufende BZO-Revision (proj-Layer) | `geo-zh.mjs --adresse "…" --produkt zonenplan --out …` | [[kartenportale-zonenplan-zh]] |
| **3** | **Baulinien + Abstandslinien (Verkehr/Wald/Gewässer/Waldgrenze/Gewässerraum)** | grenzen das **Baufeld** ein (Agent `baulinien-analyst`) | `geo-zh.mjs --adresse "…" --produkt baulinien --out …` | [[kartenportale-baulinien-abstandslinien-zh]] |
| **4** | **Amtliche Vermessung (Situationsplan/Kataster DXF)** | CAD-Grundlage für Baufeld/Volumen; Parzellengeometrie | `geoshop-zh.mjs --gemeinde "…"` (Produkt 10016 DXF) | [[kartenportale-geoportale-uebersicht]] |
| **5** | **Höhenmodell (swissALTI3D/DTM) + Orthofoto (SWISSIMAGE)** | Terrain/Hang (massgebendes Terrain), Kontext; 3D-Render | `geo-zh.mjs --adresse "…" --produkt height,dtm,orthofoto --download --out …` | [[kartenportale-bund-geodaten]] |
| **6** | **GWR-Gebäudedaten (bei Bestand: Volumen, EBF, Baujahr, Wärmeerzeuger)** | Basis für Energienachweis/Kostenschätzung/Umnutzung | `gwr-bund.mjs` (Layer ch.bfs.gebaeude_wohnungs_register) | [[kartenportale-gwr-bund]] |
| **7** | **Zuständige Behörden/Ämter** | wer entscheidet/ist anzufragen (Vorabklärung) | `behoerden-zh.mjs` (Registry je BFS) | [[recht-norm-quellenlandkarte]] |

**Querschnitt-Prüfungen, die aus 0–7 folgen** (kein eigener Bezug, sondern Auswertung):
- **Recht/Norm**: welcher Erlass/Datenstand gilt → [[recht-norm-quellenlandkarte]] (Skill `baurecht` für die Würdigung).
- **Brandschutz**: QSS-Einstufung + Vorschriftenstand BSV 2015/17/22 (⚠ BSV 2026 verschoben/Marschhalt) → [[brandschutz-pl03-wegweiser]].
- **Naturgefahren** (bei Hang-/Bachlage IMMER prüfen, nicht nur bei offensichtlichem Risiko):
  Gefahrenstufe rot/blau/gelb kann trotz unauffälligem Zonenplan/Baulinien das Baufeld einschränken.
  **Seit Run 54 automatisiert** (Kt. ZH): `geo-zh.mjs --adresse "…" --produkt naturgefahren` —
  meldet die massgebende Gefahrenstufe 1-4 und ab Stufe 3 den Objektschutz-Hinweis.
  ⚠ Kein Treffer = «hier keine Gefahrenfläche», NICHT «Gemeinde nicht kartiert»
  → [[kartenportale-naturgefahren-objektschutz]] §8a.
- **Grundwasserschutzzone** (bei jedem Vorhaben mit **Untergeschoss/Aushub/Erdwärmesonde**):
  S1 = faktisches Bauverbot, S2 = UG/Sonden i.d.R. unzulässig, S3 = auflagenbehaftet — das
  entscheidet über das UG und damit über die Wirtschaftlichkeit, bevor gezeichnet wird.
  `geo-zh.mjs --adresse "…" --produkt grundwasser` (Run 54)
  → [[kartenportale-naturgefahren-objektschutz]] §8b.
- **Ablage**: Produkte sofort in die PL-01-Sollstruktur legen → [[kartenportale-sharepoint-ablage]].

**Nicht Teil der 8 Pflicht-Grundlagen, aber vor Baueingabe/Ausführung nötig:** der
**Werkleitungskataster** (Strom/Kommunikation/Gas/Wasser) — betreiberspezifisch, login-pflichtig,
kein zentrales Geoportal, kurze Gültigkeit (EKZ 2 Wochen) → erst kurz vor Ausführungsreife
anfragen, nicht schon im Vorprojekt → [[kartenportale-werkleitungskataster]].

---

## Kanton Schwyz (Kurz-Variante)

Für SZ-Parzellen läuft 0/1 über den eigenen Connector `geo-sz.mjs` bzw. Skill
[[oereb-schwyz]] — **Bezug über Parzellennummer** (eindeutig; SZ-BFS-Filter), **nicht** über
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
**established** bestätigt; Schritte 1/3/5 sind in den jeweiligen Artikeln separat validiert
(OEREB-PDF, Baulinien ±150 m, height/STAC). Dieser Block dient als wiederholbarer Funktionstest
des Connectors zu Beginn jedes Laufs.

---

## Anwendung / Anschluss

- **Output-Form:** Als Studien-Start gibt JANS daraus ein **Grundlagen-Deckblatt** (EGRID, Zone,
  BMZ/AZ, Höhen, Baufeld-Restriktionen, Behörden, Datenstand je Produkt) — die Basis, auf der
  `machbarkeit` Typ A das Volumen rechnet und `behoerden-vorabklaerung` die Fragen stellt.
- **Datenstand-Pflicht:** je Produkt das Bezugsdatum vermerken (OEREB-PDF trägt Stand; Zonen-Layer
  Festsetzungsdatum; BSV-Stand). ⚠ Laufende BZO-Revision (proj-Layer) immer mitziehen — sonst
  rechnet die Studie auf veraltetem Recht.
- **Offen (Folge-Loops):** senkrechtes Abstandsmass Linie↔Grenze automatisiert (Agent
  `baulinien-analyst` mit Parzellengeometrie aus Schritt 4).
  **ERLEDIGT Run 54 (2026-07-20):** der ZH-Naturgefahren-Endpunkt ist gefunden, verifiziert und
  als `--produkt naturgefahren` gebaut (AWEL-Themengruppe 44 «Gewässer», nicht «Naturgefahr» —
  daher die lange Suche); ebenso `--produkt grundwasser` (Schutzzonen S1/S2/S3).
- **M2 erledigt 2026-07-13 (Run 22):** die Studien-Skills `machbarkeit`/`ankaufspruefung`/
  `behoerden-vorabklaerung` referenzieren den Skill `planungsgrundlagen` jetzt explizit als
  bevorzugte GIS-/Geodaten-Quelle (statt nur manuellem GIS-Browser-Verweis) — Anbindung war zuvor
  nur einseitig (planungsgrundlagen kannte die drei Skills, umgekehrt nicht).
