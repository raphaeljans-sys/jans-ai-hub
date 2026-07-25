---
title: Naturgefahrenkarte & Objektschutzkonzept — Gefahrenstufen, Schutzziele, Bezugswege ZH/SZ
status: established
last_updated: 2026-07-23 (Run 57, Registerpflege)
sources:
  - opendata.swiss CKAN-API (`package_show?id=gefahrenkarte1`, Amt fuer Geoinformation Kt. SZ) —
    liefert die realen Service-URLs hinter dem bisher nur als manuellem WebGIS-Link bekannten
    Layer-Namen `ch.sz.a012b.naturgefahrenkarte.*`; live GetCapabilities/GetFeature/
    DescribeFeatureType gegen `map.geo.sz.ch/mapserv_proxy`; Connector `geo-sz.mjs --produkt
    naturgefahren` end-to-end verifiziert Willerzell 3301 (±5/60 m) + Negativ Wangen 25 (Run 55, 2026-07-22)
  - map.geo.sz.ch/mapserv_proxy WFS 1.1.0 GetCapabilities Volltext-Scan (1'016 FeatureTypes) —
    SZ-Grundwasserschutz unter Themencode `a013a.planerischergewaesserschutz.*` (gwszone S1/S2/S3
    inkraft/provisorisch, gwsareal, gsbereiche.bereich.au); Schema per DescribeFeatureType; Connector
    `geo-sz.mjs --produkt grundwasser` gebaut + end-to-end verifiziert Freienbach 1976 (S2/S3 «Halten»),
    Wangen 25 (Bereich Au), Galgenen 439 (Punktlage-Nuance), Negativ Willerzell 3301 (Run 55, 2026-07-22)
  - maps.zh.ch/wfs/OGDZHWFS GetCapabilities Volltext-Grep — Datensatz 0327
    `giszhpub_gs_gw_isohypse_{hw,mw,mw_halb}_l` (Grundwasser-Isohypsen), live GetFeature-Test
    Hardau 24 Winterthur (Run 55, 2026-07-21)
  - PL-02/04_Merkblätter/GVZ_Leitfaden_Hochwassergefahrenkarte.pdf ("Leitfaden zur Umsetzung der
    Gefahrenkarten Hochwasser", Baudirektion Kt. ZH/AWEL Abt. Wasserbau + Gebäudeversicherung
    Kt. ZH, Autor Ernst Basler + Partner AG, © 2003 — ⚠ Datenstand 2003, Run 37 2026-07-14)
  - Kt. SZ, Amt fuer Wald und Naturgefahren — "Naturgefahrenkarten: Das Wesentliche in Kuerze"
    (I:\AWN\Schwyz\Natgef\Gefahrenkarten\Umsetzung\Info_zumThema.doc, 5 S.) — Rechtsgrundlagen,
    Gefahrenstufen, Perimeter A/B/C, Umsetzung Nutzungsplanung
  - Realer JANS-Fall Reckholdernstrasse 20, 8846 Willerzell (Objektschutzkonzept 26.09.2023,
    Auftraggeber-Dokument 2304RE20_Naturgefahren_Objektschutzkonzept.pdf) — Gefahrenkarte Rutschung
    (mittlere/geringe/erhebliche Gefaehrdung auf derselben Parzelle), WebGIS-Direktlink SZ
  - schutz-vor-naturgefahren.ch (VKG/SIA/HEV/ASA-SVV/Kantonalbank/Gemeindeverband) —
    "Checkliste fuer die Planung und Umsetzung von Gebaeudeschutzmassnahmen" (Dezember 2020,
    **vollstaendig gelesen S.1-12/12** inkl. Bauteilkatalog, Run 51 2026-07-18) + "Empfehlungen
    Gebaeudeschutz" (Onlinetool) + "Rutschungen und
    Hangmuren — Hintergrundwissen fuer Bauherren"
  - PL-01/Objektschutz/Reckholdern/Naturgefahrenkarte_Das_Wesentliche_in_Kuerze.pdf +
    2304RE20_Naturgefahren_Objektschutzkonzept.pdf + 27_Checkliste_SvN_D.pdf +
    Grundwasserkarte_mapgeoszch.pdf (WebGIS Kt. SZ, Amt fuer Geoinformation AGI, Stand 22.11.2023)
  - inggeol.ch (Ingenieurgeologie Schweiz, Arbeitsgruppe Geologie und Naturgefahren AGN-DNG) —
    Praxishilfe "Bauen im Rutschgebiet — Hinweise fuer Bauherrschaften und Baubehoerden"
    (1.9.2023, im Auftrag BAFU/Abteilung Gefahrenpraevention, PL-01/Objektschutz/
    _schutz-vor-naturgefahren.ch/inggeol/27_inggeol_ch-praxishilfe_bauen_in_rutschgebieten_20230901-1.pdf,
    S. 1-9 vollstaendig gelesen)
  - PL-01/KtSZ Schwyz/map.geo.sz.ch/Willerzell/Ökomorphologie_Fliessgewässer/
    ökomorpho_Fliesgewässer.pdf (WebGIS Kt. SZ, 22.11.2023 10:44, dieselbe Parzelle Reckholdern —
    Kartenexport traegt den Titel «Grundwasserkarte Mittelwasserstand», die mitexportierte Legende
    enthaelt zusaetzlich die Kategorien der **Gewaesser-Oekomorphologie**, Run 27)
  - PL-01/KtSZ Schwyz/map.geo.sz.ch/Willerzell/Erdwaermenutzung/231122_Erdwaermenutzung.pdf
    (WebGIS Kt. SZ, 22.11.2023 10:50, dieselbe Parzelle Reckholdern — Layer «Erdwaermenutzung»
    mit Zulaessigkeitszonierung + Bestandeskataster Erdregister/Energiekorb/Energiepfahl/
    Erdwaermesonde, Run 27)
links: [[kartenportale-geoportale-uebersicht]] [[kartenportale-baulinien-abstandslinien-zh]]
  [[recht-norm-abstandsvorschriften-wald-gewaesser]] [[kartenportale-sharepoint-ablage]]
  [[kartenportale-grundlagen-checkliste-neue-parzelle]] [[brandschutz-pl03-wegweiser]]
  [[energie-pv-eignung-typenwahl]]
---

# Naturgefahrenkarte & Objektschutzkonzept

Schliesst eine bisher unbearbeitete Luecke in PL-01 (Ordner `Objektschutz/`): die
**Naturgefahrenkarte** ist neben Zonenplan/Baulinien eine eigenstaendige, rechtserhebliche
Planungsgrundlage — sie kann ein Baufeld einschraenken (rote Zone = de facto Bauverbot), auch wenn
Zonenplan und Baulinien unauffaellig sind. Bei Hanglagen, Bachnaehe und in den Kantonen SZ/ZH mit
ausgepraegtem Relief (Einsiedeln, Wollerau, Oberrieden, Thalwil) ist die Karte **immer** zu pruefen,
nicht nur bei offensichtlichem Hangrisiko.

## 1. Rechtliche Verankerung

- **Bund:** Art. 6 Abs. 2 RPG verpflichtet die Kantone, naturgefahrengefaehrdete Gebiete zu
  ermitteln; Art. 15 RPG — gefaehrdete Flaechen eignen sich nicht/nur beschraenkt als Bauland;
  Art. 15 Abs. 1 WaV (Wald) + Art. 27 WBV (Wasserbau) verpflichten zu Gefahrenkataster/-karten.
- **Kanton SZ:** § 20 PBG — Gefahrenzonen werden nach den kantonalen Gefahrenkarten ausgeschieden;
  § 17 PBG — die Gemeinde scheidet im Zonenplan die Gefahrenzone aus. Zustaendig: **Amt fuer Wald
  und Naturgefahren** (AWN, Bahnhofstrasse 20, 6431 Schwyz).
- **Rechtlicher Status der Karte:** ein im Auftrag des Kantons erstelltes Fachgutachten mit
  **rechtserheblichem** Sachverhalt — im Verwaltungsverfahren nicht ignorierbar, **auch wenn die
  Karte noch nicht in die Nutzungsplanung umgesetzt ist** (Quelle: AWN SZ "Das Wesentliche in
  Kuerze", Abschnitt "Rechtlicher Status"). Gemeinden muessen die Karte innert **2 Jahren** nach
  Erstellung grundeigentuemerverbindlich in die Nutzungsplanung ueberfuehren.
- **Bearbeitungstiefe (Perimeter):** A = Siedlungsgebiet, **parzellenscharf**, alle 4 Gefahrenstufen
  dargestellt; B = einzelne Gebaeude/Landwirtschaft, nur Gefahrenhinweisbereich; C = kaum begangene
  Gebiete, keine Darstellung. JANS-Projekte liegen praktisch immer in Perimeter A.

## 2. Gefahrenstufen — Bedeutung + Bauvorschrift

Erfasste Prozesse: Hochwasser, Murgang, Sturzprozesse (Stein-/Blockschlag, Fels-/Bergsturz),
Rutschungen, Hangmuren, Dolinen/Bodenabsenkung, Lawinen, Gleitschnee. Wiederkehrperiode auf der
Karte bis 300 Jahre, im Restgefaehrdungsbereich noch seltener.

| Stufe | Bedeutung | Bauvorschrift (Kernaussage) |
|---|---|---|
| **Rot** — erhebliche Gefaehrdung | Personen innerhalb UND ausserhalb Gebaeude gefaehrdet; rasche Gebaeudezerstoerung moeglich | De facto **Verbotsbereich**: keine neuen Bauten fuer Mensch/Tier-Aufenthalt; unbebaute Bauzonen sollen rueckgezont werden; Wiederaufbau nur in Ausnahmefaellen mit Sicherheitsmassnahmen |
| **Blau** — mittlere Gefaehrdung | Personen innerhalb kaum, ausserhalb gefaehrdet; Gebaeudeschaeden moeglich, keine rasche Zerstoerung bei eingehaltenen Auflagen | **Gebotsbereich**: Bauen erlaubt **mit Auflagen** im Bau-/Zonenreglement; keine besonders sensiblen Objekte (z.B. Alters-/Pflegeheim!); moeglichst keine neuen Bauzonen |
| **Gelb** | Personen kaum gefaehrdet, geringe Gebaeudeschaeden | **Hinweisbereich**: Grundeigentuemer informieren; Massnahmenplanung fuer sensible Objekte |
| **Gelb-weiss gestreift** | Restgefaehrdung (sehr selten, hohe Intensitaet) | Hinweisbereich; Notfallplanung + Massnahmen fuer sensible Objekte; Anlagen mit sehr hohem Schadenpotenzial vermeiden |
| **Weiss** | keine/vernachlaessigbare Gefaehrdung | keine Einschraenkung |
| **Braun** (Gefahrenhinweisbereich, Perimeter B) | Intensitaet/Wahrscheinlichkeit nicht bestimmt | Einzelfallpruefung |

**JANS-Praxisrelevanz Healthcare:** die Formulierung "keine besonders sensiblen Objekte" in der
blauen Zone trifft **Alters-/Pflegeheime direkt** (eingeschraenkt mobile Bewohnerschaft) — bei
Healthcare-Projekten in blauer Zone ist das ein eigener Abklaerungspunkt, nicht nur eine
bautechnische Auflage.

## 3. Bezugswege

| Kanton | Portal | Layer/Endpunkt | Login |
|---|---|---|---|
| **SZ** | `map.geo.sz.ch/mapserv_proxy` (WFS 1.1.0) | **GELOEST Run 55, 2026-07-21** — `ms:ch.sz.a012b.naturgefahrenkarte.gefahrenflaechen.ueberlagert` (Perimeter A) + `.hinweisflaechen.ueberlagert` (Perimeter B) + `.erhebungsgebiet` (Kartierungsstand); im Connector als `geo-sz.mjs --produkt naturgefahren`. Details Abschnitt 8c | login-frei |
| **ZH** | `maps.zh.ch/wfs/OGDZHWFS` (OGD-WFS, AWEL Wasserbau) | **GELOEST Run 54, 2026-07-20** — `ms:ogd-0044_giszhpub_wb_syn_gk_f` (synoptische Gefahrenkarte 44.13) + `_wb_hw_gk_f` (Hochwasser 44.2) + `_wb_mb_gk_f` (Massenbewegungen 44.7); im Connector als `--produkt naturgefahren`. Details Abschnitt 8a | login-frei |
| **Alle CH (privat)** | `schutz-vor-naturgefahren.ch` | Adressgenauer "Naturgefahren-Check" (Eigentuemer/Architekten-Ansicht) + generische Gebaeudeschutz-Empfehlungen je Bauteilgruppe (Dach/Fassade, Innenraum, Technik, Tragstruktur, Oeffnungen/Zugaenge, Umgebung) x Naturgefahr (Hochwasser, Rutschung, Hagel, Schnee, Erdbeben, ...) | login-frei |

**Historischer WebGIS-Direktlink** (Reckholdernstrasse 20, Willerzell, Zentrumskoordinate
E=2'703'371 N=1'222'906, EPSG:2056) — bis Run 54 der einzige bekannte Zugriffsweg, jetzt durch den
REST-Endpunkt in Abschnitt 8c abgeloest, bleibt als manuelle Kartenansicht nuetzlich:
```
https://map.geo.sz.ch/?lang=de&baselayer_ref=Landeskarte grau (aktuell)
  &tree_groups=grp_Naturrisiken_Naturgefahrenkarte_V2
  &tree_group_layers_grp_Naturrisiken_Naturgefahrenkarte_V2=
    ch.sz.a012b.naturgefahrenkarte.perimeter_in_ueberarbeitung,
    ch.sz.a012b.naturgefahrenkarte.gefahrenflaechen.ueberlagert,
    ch.sz.a012b.naturgefahrenkarte.hinweisflaechen.ueberlagert,
    ch.sz.a012b.naturgefahrenkarte.perimeter_nicht_beurteilt
  &map_x=2703371&map_y=1222906&map_zoom=9
```

## 4. Reale Anwendung: Objektschutzkonzept Reckholdern 20 (2023)

Auftrag: "Welche Objektschutzmassnahmen hat die Situation zur Folge?" — Parzelle Reckholdernstrasse
20, 8846 Willerzell. Ausgangslage laut Naturgefahrenkarte: **mittlere Gefaehrdung** (Rutschung) im
Osten der Parzelle, **geringe Gefaehrdung** im Westen, hangaufwaerts Richtung Nordost ein Hang mit
**erheblicher Gefaehrdung**. Eine einzelne Parzelle kann also mehrere Gefahrenstufen gleichzeitig
tragen — die Karte ist **flaechenscharf**, nicht parzellenscharf im Sinn "eine Stufe pro Grundstueck".

Vorgehen laut Konzept:
1. Amtliche Gefahrenkarte + Ausgangslage-Beschrieb (Amt fuer Wald und Natur SZ als zustaendige
   Fachstelle).
2. **Empfehlungen Gebaeudeschutz** via `schutz-vor-naturgefahren.ch/bauherr` — Online-Filter nach
   Bauteilgruppe x Naturgefahr, liefert konkrete Massnahmen ("Schutzhoehe definieren",
   "Oberflaechenabfluss verifizieren", "Terraingestaltung: Wasserabfluss vom Gebaeude wegfuehrend
   planen").
3. **Checkliste Gebaeudeschutzmassnahmen** (2-Schritt-Formular): Schritt 1 "Was kann passieren?"
   (Gefaehrdung je Naturgefahr durch Architekt/Ingenieur vor Ort abklaeren) → Schritt 2 "Welche
   Schutzmassnahmen?" (vier Ebenen: **planerisch** [Gebaeudehuelle/Tragwerk schadenarm], **technisch**
   [z.B. automatisches Schott, Windwaechter], **Materialwahl** [robuste Produkte], **organisatorisch**
   [Verhaltensregeln, Alarmorganisation]).
4. Fachplaner-Zuzug: Gutachter/Unternehmer/Fachplaner/Geologe/Statiker/Foerster je nach Prozess.

### 3b. Checkliste im Detail (vollstaendig gelesen, Run 24 2026-07-13)

Herausgeber: **VKG (Vereinigung Kantonaler Gebaeudeversicherungen), SIA, HEV Schweiz, ASA/SVV
(Schweizerischer Versicherungsverband), Kantonalbank, Schweizerischer Gemeindeverband** —
Dezember 2020, `27_Checkliste_SvN_D.pdf`. Ist ein **ausfuellbares Formular** (Grundstueck/
Bauherrschaft/Architekt-Planer als Kopfzeile), gedacht zur gemeinsamen Bearbeitung durch Bauherr +
Architekt/Ingenieur — passt als Vorlage direkt in ein JANS-Vorprojekt-Pflichtenheft.

**Schritt 1 — Gefaehrdungsabklaerung je Naturgefahr, mit konkreter Quellenzuordnung:**

| Naturgefahr | Abzuklaeren gemaess |
|---|---|
| Sturm | Norm SIA 261 |
| Hagel | Norm SIA 261/1 + VKF-Karten «Hagelgefaehrdung in der Schweiz» |
| Hochwasser | kantonale Gefahrenkarte Hochwasser |
| Starker Regen/Oberflaechenabfluss | kantonale Gefahrenkarte Hochwasser bzw. Gefaehrdungskarte Oberflaechenabfluss + Erfahrungswerte Anwohner/Gemeinde |
| Schneedruck/Schneerutsch | Normen SIA 261 und SIA 261/1 |
| Erdrutsch/Lawinen/Murgang/Steinschlag | kantonale Gefahrenkarte + Erfahrungswerte Anwohner/Gemeinde |
| Erdbeben | **SIA 261 bei Neubau, SIA 269/8 bei Umbau** (Erdbebenertuechtigung Bestand — eigene Norm, nicht identisch mit der Neubau-Norm!) |
| Radon | Radonkarte des Bundesamts fuer Gesundheit (BAG) |

> **Praezisierung gegenueber §5 (Schutzziele-Tabelle):** die dortige Schutzziel-Tabelle nennt fuer
> Erdbeben pauschal «SIA 261»; die Checkliste unterscheidet **Neubau (SIA 261) vs. Umbau (SIA
> 269/8)** — bei Sanierungs-/Umbauprojekten (JANS-Kerngeschaeft) ist **SIA 269/8** die massgebende
> Erdbeben-Ertuechtigungsnorm, nicht SIA 261.

**Schritt 2 — Bauteilkatalog-Prinzip:** die Checkliste fuehrt einen «**Bauteilkatalog**»-Gedanken:
fuer viele Bauteile (Ziegel, Kunststoffplatten/Lichtdurchlaesse, etc.) gibt es sowohl schadenanfaellige
als auch robuste Produktvarianten — die Wahl der Ausfuehrung entscheidet, ob das SIA-Schutzziel
tatsaechlich erreicht wird. Zwei Konkretisierungen mit direktem Marktbezug:
- **Hagel:** Verwendung hagelgeprueft er Bauteile gemaess **Hagelregister** (`www.hagelregister.ch`);
  Empfehlung: Gebaeudehuelle soll mindestens **Hagelwiderstand HW3** aufweisen (deckungsgleich mit
  der HW3-Empfehlung in [[energie-pv-brandschutz]] fuer PV-Module — dieselbe Kennzahl, zwei
  Anwendungsfaelle).
- **Sturm:** z. B. Tonziegel sind hagelrobust, muessen aber gegen Sturm zusaetzlich **mit Klammern
  am Dachrand befestigt** werden — Robustheit gegen eine Naturgefahr heisst nicht automatisch
  Robustheit gegen alle.

### 3c. Bauteilkatalog S. 7–12 vollstaendig (Run 51, 2026-07-18)

Die Checkliste `27_Checkliste_SvN_D.pdf` (Dez. 2020) war bis Run 50 nur S. 1–6 gelesen; der
eigentliche **Bauteilkatalog S. 7–12** (Matrix Bauteil × Naturgefahr Sturm/Hagel/Schnee/
Ueberschwemmung, je mit «Bei der Planung beruecksichtigen» + «Hinweise fuer Unterhalt/Betrieb»)
war die letzte offene K41-Datei und ist jetzt volltextlich erschlossen. Die JANS-relevanten
Kernanweisungen, konsolidiert nach Bauteilgruppe:

| Bauteilgruppe | Massgebende Planungsanweisung (belegt S. 6–12) |
|---|---|
| **Dach — Ziegel** | Sturmklammern am Dachrand; Unterdach/geschlossene Schalung im Vordachbereich; hagelgepruefte Ziegel; **Punktlasten durch Aufbauten vermeiden**; Verschraubung durch Fachperson auf Sturmfestigkeit nach SIA pruefen |
| **Dach — Flachdach (Kunststoff/Bitumen)** | Aufkantungen durch Blechverwahrungen oder Kiesbedeckung vor Sonne/Schneedruck/Hagel schuetzen (sonst schnellere Alterung als die Flaeche); hagelgepruefte Folien |
| **Lichtdurchlaesse (Lichtkuppel/Kunststoffplatten PC/PMMA)** | **Widerstandsfaehigkeit sinkt je nach Material schon nach 5 Jahren um bis zu 80 %** → nicht-alternde Elemente (**Glas**) verwenden oder Schutzgitter anbringen; hagelgepruefte Produkte |
| **Fassade — Putz auf Aussenwaermedaemmung** | hagelgepruefte Produkte; im **Ueberschwemmungsbereich** wasserfeste Daemmstoffe + geeigneter Systemaufbau (**Betonsockel hochziehen**) |
| **Fassade — Holz** | widerstandsfaehige **Dickschicht-Beschichtung** oder Metallprofil-Schutz; im Ueberschwemmungsbereich **kein lackiertes Holz**, Betonsockel hochziehen; Duennschichtlasuren vermeiden |
| **Sonnenschutz (Rollladen/Lamellenstoren/Markisen)** | **hoechste Sturmwiderstandsklasse nach SIA 342**; geschuetzt in Fensterleibung einbauen; **automatischer Einzug bei drohendem Unwetter** (Zentralsteuerung, z.B. «Hagelschutz – einfach automatisch»); **Markise ist Sonnen-, kein Wetterschutz** (Eingaenge nicht durch Markisen schuetzen) |
| **Aufbauten Energiegewinnung (Solar/PV)** | Befestigung/Unterkonstruktion durch Fachperson auf Tragfaehigkeit nach SIA pruefen; hagelgepruefte Module; Schneerutschsicherungen + Schutz vor Schneelasten durch Windverwehung/Gleiten; **Lasten direkt ins Tragwerk, nicht auf die Dachhaut** leiten (erhoehte Punktlasten beruecksichtigen); in erhoehten Lagen nur gepruefte Konstruktionen (**Schneedruckregister**) |
| **Installationen — Bleche/Spenglerarbeit** | Empfehlungen **Suissetec-Merkblatt «Hagelresistentes Bauen bei Spenglerarbeiten und Metalldeckungen»** beachten (mehrfach als massgebende Fachquelle genannt) |
| **Oeffnungen/Fenster** | **Grundsatz: im Ueberschwemmungsbereich keine Fenster planen**; Lichtschaechte **erhoehen und abdichten**; Fenster in Lichtschaechten nach Wasserdruck dimensionieren |

**JANS-Merksatz:** der Bauteilkatalog ist die konkrete Uebersetzung der abstrakten SIA-261/261-1-
Schutzziele (§5) in **Ausschreibungs-/Devis-taugliche Produktanforderungen** — Hagelwiderstand HW3
([[energie-pv-brandschutz]]), Sturmwiderstandsklasse SIA 342 fuer Sonnenschutz, Suissetec-Merkblatt
fuer Spenglerarbeiten, Betonsockel-Hochzug im Ueberschwemmungsbereich. Bei Objektschutzkonzepten
(wie Reckholdern, §4) liefert er die Formulierung fuer die «gewaehlten Schutzmassnahmen» je Gefahr.
Damit ist die K41-Datei `27_Checkliste_SvN_D.pdf` vollstaendig ausgewertet (kein offenes Kapitel).

## 5. Schutzziele nach SIA 261/261-1 (Kurzreferenz)

Fuer Neubauten/Anbauten definieren SIA 261 und SIA 261/1 die konkreten Schutzziele je Naturgefahr
(Quelle: schutz-vor-naturgefahren.ch Checkliste S. 2). Norm-Tiefe → Skill `baurecht`/`brandschutz`;
hier nur die planungsrelevante Groessenordnung:

| Naturgefahr | Schutzziel (Kurzform) |
|---|---|
| Hochwasser/Oberflaechenabfluss | Gebaeude bleibt bis zum **300-jaehrlichen** Ereignis intakt, UG trocken, schwimmt nicht auf |
| Sturm | Widerstand bis zum **50-jaehrlichen** Wind, keine abgerissenen Bauteile |
| Hagel | Bis zum **50-jaehrlichen** Hagel keine Schaeden an Fassade/Dach/Solaranlagen (Hagelwiderstand HW3 empfohlen — Querverweis [[energie-pv-brandschutz]]) |
| Schnee | Dach/Aussenwaende/Vordaecher/Solaranlagen halten dem **50-jaehrlichen** Schnee stand |
| Erdbeben | Gebaeude schuetzt die Personen bis zum **475-jaehrlichen** Erdbeben |
| Rutschung/Murgang/Steinschlag/Lawine | Gebaeude bleibt auch bei **300-jaehrlichen** Ereignissen intakt und schuetzt die Personen |

Merksatz zur Jaehrlichkeit: ein "300-jaehrliches" Ereignis hat pro Jahr 0.33 % Eintretens-
wahrscheinlichkeit — ueber eine typische 50-jaehrige Gebaeudelebensdauer aber **15 %** kumulierte
Wahrscheinlichkeit (≈ eine 6 in einem Wurf). Seltene Naturgefahren duerfen deshalb bei
Healthcare-/langlebigen Bauten nicht unterschaetzt werden.

## 6. Grundwasserkarte als ergaenzende Planungsgrundlage (Run 24, 2026-07-13)

Bisher unbearbeitete Quelle im selben Ordner: `Objektschutz/Reckholdern/
Grundwasserkarte_mapgeoszch.pdf` (WebGIS Kt. SZ, Amt fuer Geoinformation AGI, Massstab 1:2'000,
Stand 22.11.2023). Zeigt fuer dieselbe Parzelle Reckholdernstrasse 20 zusaetzlich zur
Naturgefahrenkarte die **Grundwasserkarte Mittelwasserstand**: Isohypsen, Fliessrichtung
(nachgewiesen/vermutet), Maechtigkeitsklassen des Grundwasserleiters (< 2 m / 2-10 m / 10-20 m /
> 20 m), Gebiete geringer Durchlaessigkeit, gespanntes Grundwasservorkommen/tieferes
Grundwasserstockwerk, Vorfluter/Infiltrant.

**Praxisrelevanz fuer JANS:** die Grundwasserkarte ist eine **eigenstaendige, vom Naturgefahren-
/Baulinien-Layer unabhaengige Planungsgrundlage**, die bei jedem Neubau mit **Unterkellerung/
Untergeschoss** zu pruefen ist — sie entscheidet ueber die Notwendigkeit einer **Weissen Wanne**
(wasserundurchlaessige Betonkonstruktion) vs. einer einfachen Abdichtung gegen nicht druckendes
Wasser. Der übliche rechtliche Vorbehalt gilt auch hier: **nur informativer Charakter**, keine
rechtsverbindliche Auskunft — verbindlich ist die zustaendige Fachstelle (Amt fuer Geoinformation
AGI Kt. SZ).

**ZH-Pendant GEFUNDEN (Run 55, 2026-07-21):** `maps.zh.ch/wfs/OGDZHWFS` fuehrt unter Datensatz
**0327** die **Grundwasser-Isohypsen** als eigenstaendigen, von den bereits dokumentierten
Grundwasserschutzzonen (§8b, Datensatz 0143/0149) unabhaengigen Layer — dieselbe informative
Aquifer-Ebene wie die SZ-Grundwasserkarte oben, nicht die rechtliche Schutzzonen-Ebene:

| Zweck | Typname |
|---|---|
| Isohypsen Hochwasserstand | `ms:ogd-0327_giszhpub_gs_gw_isohypse_hw_l` |
| Isohypsen Mittelwasserstand | `ms:ogd-0327_giszhpub_gs_gw_isohypse_mw_l` |
| Isohypsen Mittelwasserstand (Halblinien) | `ms:ogd-0327_giszhpub_gs_gw_isohypse_mw_halb_l` |

Live `GetFeature` an der bereits bekannten Grundwasserschutzzonen-Benchmark-Parzelle **Hardau 24,
8408 Winterthur** (±200 m um E=2'693'598/N=1'263'249) liefert 3 Isohypsenlinien mit Attribut
`label` = Kote in m ü. M. (397/398/399) — der Layer ist gefuellt und funktionsfaehig, aber noch
**nicht** als Connector-Produkt gebaut (nur der Live-Test, kein `--produkt grundwasserkarte`
in `geo-zh.mjs`). Attribute zusaetzlich `linientyp`, `created`/`edited`/`editedby`
(Nachfuehrungsdatum je Linie — nuetzlich fuer eine Datenstand-Angabe im Bericht). Status
`emerging`: Endpunkt live verifiziert, aber noch nicht produktiv im Connector verdrahtet — das ist
die naheliegende Anschlussaufgabe fuer den naechsten Kartenportale-Run (Analogie zu §8a/§8b: erst
Positiv-Benchmark, dann Connector-Feature, dann `established`).

## 6b. Gewaesser-Oekomorphologie als mitgelieferte Planungsgrundlage (Run 27, 2026-07-13)

Derselbe Kartenexport (`ökomorpho_Fliesgewässer.pdf`, WebGIS Kt. SZ, 22.11.2023 10:44 — gleiche
Zentrumskoordinaten E=2'703'221/N=1'222'915 wie die Grundwasserkarte oben, offenbar derselbe
Druckauftrag mit zusaetzlich aktiviertem Themenlayer) liefert die Legende der **oekomorphologischen
Klassifizierung von Fliessgewaessern** — sechsstufig:

- **natuerlich, naturnah**
- **wenig beeintraechtigt**
- **stark beeintraechtigt**
- **naturfremd, kuenstlich**
- **eingedolt**
- **nicht bestimmt**

**Praxisrelevanz:** diese Klassifizierung ist die Kt.-SZ-Entsprechung zur bereits fuer Kt. ZH
dokumentierten Karte «Gewaesser-Oekomorphologie» (gis.zh.ch, Thema Wasser), aus der die
**natuerliche Gerinnesohlenbreite (GSB) und Breitenvariabilitaet** fuer die Gewaesserraum-Bemessung
nach GSchV Art. 41a/41b abgelesen werden (→ [[recht-norm-abstandsvorschriften-wald-gewaesser]]
Abschnitt 3c/4). Ein stark beeintraechtigtes oder eingedoltes Gewaesser ist in der Regel ein
Kandidat fuer eine **kuenftige Revitalisierung** (Art. 41a Abs. 3 GSchV: Gewaesserraum kann dafuer
vergroessert werden) — bei der Baufeld-Abschaetzung als Unsicherheitsfaktor mitzudenken, wenn ein
Gewaesser diese Klassifizierung traegt. Status `emerging`: der Layer ist im WebGIS Kt. SZ real
belegt (Legende vollstaendig gelesen), aber die genaue Klassifizierung fuer eine konkrete Parzelle
wurde bisher nicht abgefragt (keine Attributwerte im Export sichtbar, nur die Legende).

## 6c. Erdwaermenutzung als eigenstaendige Planungsgrundlage (Run 27, 2026-07-13)

Dritter Kartenexport aus demselben Willerzell-WebGIS-Batch (`231122_Erdwaermenutzung.pdf`,
WebGIS Kt. SZ, 22.11.2023 10:50, gleiche Zentrumskoordinaten E=2'703'221/N=1'222'915 wie
Grundwasserkarte + Oekomorphologie oben). Der Layer **«Erdwaermenutzung»** zoniert eine Parzelle
in drei Zulaessigkeitsstufen fuer Erdwaerme-Systeme:

- **zulaessig** (gruen)
- **Abklaerung noetig** (gelb)
- **nicht zulaessig** (rot) — typischerweise Grundwasserschutzzonen/-areale

Zusaetzlich zeigt der Layer punktuelle Bestandes-Erdwaermenutzungen mit eigener Symbolik:
**Erdregister**, **Energiekorb**, **Energiepfahl**, **Erdwaermesonde** sowie separat markiert
**Erdwaermesonde (nicht mehr bewilligungsfaehig)** — d.h. der Kanton fuehrt nicht nur eine
Eignungszonierung, sondern auch ein Bestandeskataster einzelner Anlagen inkl. Widerrufs-/
Auslaufstatus.

**Praxisrelevanz:** bevor eine Erdwaermesonde/Energiepfahl-Gruendung geplant wird, ist dieser
Layer die erste Pruefstelle — analog zur Grundwasserkarte (Abschnitt 6) fuer den Weisse-Wanne-
Entscheid, hier aber fuer die Heizungs-/Energiekonzept-Wahl. Eine "gelb" oder "rot" gezonte
Parzelle bedeutet fruehzeitigen Kontakt mit dem Amt fuer Umweltschutz/Amt fuer Geoinformation,
bevor die Haustechnikplanung auf Erdwaerme festgelegt wird.

**Querbezug KB energie** (Bewilligungsverfahren, Kosten, Systemwahl): Flaechenkollektor/
Erdwaermekorb/Energiepfahl vs. Sonde, ZH-Zusatzformular «Oberflaechennahe Erdwaerme» (BVV Ziff.
5.6.2) und Anergienetz/kalte Fernwaerme in `wissen/energie/wiki/BAUHERREN-FAQ.md` F108/F110/F109.
Rollenteilung: planungsgrundlagen haelt die beschaffbare Eignungsgrundlage (GIS-Layer), energie
die Physik/das Verfahren/die Kennwerte.

**Status `emerging`:** Legende + Zonierungslogik vollstaendig belegt (Original gelesen), aber
kein ZH-Vergleichslayer gepruft und kein Connector-Zugriff getestet (derselbe Beschaffungsweg
wie Grundwasserkarte/Oekomorphologie — manueller WebGIS-Export Kt. SZ, kein bekannter REST-
Endpunkt). Ergaenzt [[energie-pv-eignung-typenwahl]] thematisch (Energiekonzept-Vorabklaerung),
kein Doppel — dort PV, hier Erdwaerme.

## 7. Rutschgebiete im Detail — Praxishilfe inggeol.ch (Run 25, 2026-07-13)

Bisher unbearbeitete Quelle im selben Ordner (`Objektschutz/_schutz-vor-naturgefahren.ch/inggeol/`):
**"Bauen im Rutschgebiet — Hinweise fuer Bauherrschaften und Baubehoerden"** (inggeol.ch —
Ingenieurgeologie Schweiz, Arbeitsgruppe Geologie und Naturgefahren AGN-DNG, 1. September 2023,
im Auftrag des BAFU/Abteilung Gefahrenpraevention). Vertieft den Prozess **Rutschung**, der in der
Naturgefahrenkarte (Abschnitt 2-4 oben) nur als Gefahrenstufe erscheint, aber ohne dieses
Hintergrundwissen fuer Nicht-Fachleute unterschaetzt wird.

**Kernbotschaft:** die Naturgefahrenkarte bildet nur den **ungestoerten, natuerlichen Zustand**
ab (Rutschgeschwindigkeit ohne Bauvorhaben). Ein Bauvorhaben selbst — Baugrube, Aushubdepot,
Wassereintrag — ist eine **Zustandsaenderung**, die eine seit Jahrzehnten scheinbar stabile
Rutschung (auch in der **gelben** Gefahrenstufe!) aktivieren kann. Dieses baubedingte
Gefahrenpotenzial ist **projektabhaengig und in der Karte nicht ersichtlich** — der haeufigste
Grund, weshalb gerade das gelbe "geringe Risiko" in der Praxis unterschaetzt wird.

- **Was ist eine Rutschung:** Bewegung entlang eines Gleithorizonts im Untergrund, Wasserverhaeltnisse
  massgeblich; rund **6 % der Schweizer Landesflaeche** sind instabile Haenge (permanente
  Rutschungen). Rutschungen sind nicht auf Steilhaenge beschraenkt — treten auch im Gelaende mit
  10-15°, in Extremfaellen unter 10° Neigung auf; Flaeche wenige Aren bis mehrere km². Tiefe des
  Gleithorizonts: flachgruendig (wenige Meter) / mittelgruendig (bis 10 m) / tiefgruendig
  (Zehnermeter bis hunderte Meter) — die Naturgefahrenkarte macht dazu **keine Angaben**.
- **Typische baubedingt ausgeloeste Rutschursachen:** (1) talseitiges Abgraben (z.B. Baugrube),
  (2) hangseitige Auflasten (z.B. Aushubdepot), (3) Eintrag von Wasser in Untergrund/Gleitflaeche
  (z.B. Abhumusieren, Drainagen, Lecks). Schaeden zunaechst meist Riss-/Setzungsbilder, im
  fortschreitenden Fall Gebaeude-Verkippung/Unbewohnbarkeit; besonders tueckisch sind unsichtbare
  Untergrundschaeden (z.B. eine reissende Wasserleitung, die ihrerseits eine Hangmure ausloesen kann).
  Schadenfaelle haben fast immer ein **juristisches Nachspiel** — die rechtliche/versicherungs-
  technische Aufarbeitung ist oft aufwendiger als die eigentliche Sicherung.
- **Massnahmen zur Risikominderung (Kap. 7, die praktisch wichtigste Stelle):**
  - Fuer **Baubehoerden**: bei der Einzonung Bereiche mit speziellen Auflagen im Bau-/Zonenreglement
    ausscheiden; Stabilitaetsnachweise + Ueberwachungskonzepte als auflagenrelevant definieren;
    bei der Baubewilligung projektspezifische geologisch-geotechnische Baugrunduntersuchungen
    verlangen; bei der Baueingabe ein Konzept fuer Ueberwachung/Kontrolle/Intervention waehrend
    der Bauphase einfordern.
  - Fuer **Bauherrschaften/Planer**: umsichtige Planung unter Beizug ausgewiesener Fachpersonen
    (Bauingenieure/Geotechniker/Geologen mit Rutschungserfahrung); detaillierte Baugrundkenntnisse
    gestuetzt auf aussagekraeftige geologisch-geotechnische Untersuchungen; robuste Konzipierung/
    Bemessung; adaequate Bauueberwachung gemaess Konzept.
  - **Bewaehrte Rollenverteilung** (typisch): Architekturfirma/Generalunternehmung = Gesamtprojekt-
    leitung + Bauleitung (verantwortlich fuer Bauueberwachung); Bauingenieurbuero = Projektplaene +
    Sicherheitsnachweise (Projektverfasser), waehrend Bauphase geotechnische Fachbauleitung;
    Geologiebuero = geologisch-geotechnische Grundlagen (Spezialist), waehrend Bauphase Beratung der
    Bauleitung gemaess Aufgebot. **JANS-Praxisrelevanz:** in Rutschgebieten braucht das
    Vorprojekt-Team zusaetzlich zum Bauingenieur ein **separates Geologiebuero** — nicht nur eine
    Linienposition im Devis, sondern eine eigene Fachdisziplin mit eigenem Auftrag.
- **Einordnung ZGB:** auch bei gutem Baugrund sind gewisse Immissionen/kleinere Schaeden
  (lokale Setzungen) zumutbar hinzunehmen (ZGB-Nachbarrecht) — die Grenze zur haftungsrelevanten
  Rutschungsausloesung liegt bei der Zustandsaenderung durch das Bauvorhaben selbst.
- **Fallbeispiele (Anhang 1):** 3 positive (Neubau/Ueberbauung in rutschanfaelligem bzw.
  tiefgruendigem Rutschhang mit fachgerechtem Vorgehen erfolgreich) + 3 negative (Baugrube loest
  weitraeumige Rutschung/Hangdeformationen aus, forsches Bauvorgehen destabilisiert Rutschhang) —
  belegen konkret, dass fachgerechtes Bauen in Rutschgebieten moeglich ist, aber Sorgfalt verlangt.
- **Normen-Fundstellen** (Literaturverzeichnis Kap. 8): SN 505 267 Geotechnik + 267/1 Ergaenzende
  Festlegungen, SN 505 261 Einwirkungen auf Tragwerke + 261/1, SN 670 305 Ueberwachung von
  Bauwerken in nicht stabilem Gelaende (inkl. Beobachtungsinstrumente-Liste).

**Anschluss an die Skills:** ergaenzt `machbarkeit`/`ankaufspruefung`/`behoerden-vorabklaerung` um
eine konkrete Frueherkennungs-Frage bei Hanglagen: "Ist die Rutschgefahrenstufe (auch gelb!)
gesetzt, UND veraendert das Bauvorhaben Topografie oder Wasserhaushalt des Hangs?" — bei Ja ist ein
Geologiebuero fruehzeitig (Vorprojekt, nicht erst Baubewilligung) beizuziehen.

## 7b. ZH-Rechtsgrundlage Hochwassergefahrenkarte (GVZ/AWEL-Leitfaden, Run 37, 2026-07-14)

Bisher unerschlossener Fund im Ordner `04_Merkblätter`: der **«Leitfaden zur Umsetzung der
Gefahrenkarten Hochwasser»** (Baudirektion Kt. ZH/AWEL Abt. Wasserbau + Gebäudeversicherung
Kt. ZH, Autor Ernst Basler + Partner AG, **© 2003**) — schliesst den in Abschnitt 3 offen
geführten ZH-Rechts-/Verfahrens-Teil für die Naturgefahr **Hochwasser**, auch wenn der
GIS-Layer-Endpunkt weiterhin nicht kartiert ist.

> ⚠ **Datenstand 2003 — über 20 Jahre alt.** Die genannten Fristen/Prioritätenlisten sind
> überholt; die **gesetzliche Grundmechanik** (WBG/WaG/RPG Bund, WWG § 22 ZH) beruht in der
> Sache weiter (Gefahrenbereiche berücksichtigen), **die zitierte kantonale Norm § 22 WWG ist
> aber nicht mehr in Kraft**: das WWG wurde per 1.6.2026 durch das Wassergesetz WsG (LS 724.1)
> + WsV abgelöst (§ 126 WsG, explizite Aufhebung; belegt in KB `energie`
> `grundwasserwaermenutzung-bewilligung-zh-sz` und `baurecht`). Der konkrete WsG-/WsV-
> Nachfolge-§ für § 22 WWG (Gefahrenbereiche der Gemeinden) ist **noch nicht am Volltext
> verifiziert** (Bring-Schuld); für den Recht-Status ist die KB `baurecht` führend. Vor einer
> verbindlichen Aussage im Projekt gegenprüfen. (Aktualisiert Wissens-Chef Run 7, 17.07.2026.)

**Rechtsgrundlage:**
- **Bund:** WBG (Wasserbaugesetz, 1991) + WaG (Waldgesetz, 1991) verpflichten die Kantone,
  Gefahrenkarten zu erstellen und bei raumwirksamen Tätigkeiten zu berücksichtigen — konkretisiert
  den Auftrag zur Ausscheidung gefährdeter Gebiete nach **Art. 6 RPG**.
- **Kanton ZH:** **§ 22 WWG** (Wasserwirtschaftsgesetz, 2.6.1991; ⚠ WWG per 1.6.2026 aufgehoben,
  Nachfolge WsG/WsV — Nachfolge-§ für die Gefahrenbereiche noch zu belegen, siehe Bring-Schuld unten)
  verpflichtet die **Gemeinden**, die Gefahrenbereiche bei planungsrechtlichen Festlegungen **und**
  bei baurechtlichen Verfahren zu berücksichtigen. Die **Baudirektion erlässt** — nach Anhören der Gemeinden — die Pläne über
  die Gefahrenbereiche.
- Zuständig für die Kartierung: **AWEL, Abteilung Wasserbau** (in einer ersten Phase die am
  meisten gefährdeten Gemeinden, danach Prüfung weiterer Gemeinden — Prioritätenliste von 2003
  „hat keinen abschliessenden Charakter", kann sich durch Ereignisse verschieben).

**Gefahrenarten + Gefahrenstufen (deckungsgleiches Schema zur bereits dokumentierten SZ-Tabelle
in Abschnitt 2, ZH-Terminologie mit Farbcode statt Rot/Blau/Gelb-Wortlaut):**

| Gefahrenart | Beschreibung |
|---|---|
| Überschwemmung | im Kt. ZH aufgrund der Topografie **die dominante** Gefahrenart |
| Ufererosion | v.a. in steilen Bachtobeln oberhalb Siedlungsgebiet, kann Rutschungen auslösen |
| Übermurung | Ablagerung von Geröll/Schlamm |

Intensitätsstufen nach Überschwemmungstiefe (h) / Fliessgeschwindigkeit×Tiefe (v×h):
**stark** h > 2 m oder v×h > 2 m²/s · **mittel** 0.5–2 m oder 0.5–2 m²/s · **schwach** h < 0.5 m
oder v×h < 0.5 m²/s. Eintretenswahrscheinlichkeit: **hoch** = HQ30 oder häufiger, **mittel** =
HQ30–HQ100, **gering** = HQ100–HQ300, **sehr gering** = Restgefährdung/Extremereignis. Aus der
**Gefahrenmatrix** (Intensität × Wahrscheinlichkeit) resultieren die Gefahrenstufen:

| Zone | Bedeutung |
|---|---|
| **rote Zone** (erhebliche Gefährdung, Verbotsbereich) | Personengefährdung innerhalb UND ausserhalb Gebäude; Gebäudezerstörung möglich |
| **blaue Zone** (mittlere Gefährdung, Gebotsbereich) | Personengefährdung v.a. ausserhalb; Gebäudeschäden möglich |
| **gelbe Zone** (geringe Gefährdung, Hinweisbereich) | kaum Personengefährdung; geringe Schäden |
| **gelb-weiss gestreift** (Restgefährdung, Hinweisbereich) | sehr geringe Eintretenswahrscheinlichkeit |
| **weiss** | keine/vernachlässigbare Gefährdung |

Deckt sich konzeptionell 1:1 mit der bereits in Abschnitt 2 dokumentierten SZ-Stufung
rot/blau/gelb/gelb-weiss/weiss — **dasselbe Bundes-Empfehlungsschema** (BWW/BRP/BUWAL 1997) liegt
beiden Kantonen zugrunde.

**Rechtliche Wirkung / Eigentumsbeschränkung (für Machbarkeitsstudien direkt relevant):**
- Eine Massnahme zum Hochwasserschutz kann durchgesetzt werden, wenn sie auf **genügender
  gesetzlicher Grundlage** beruht, durch **ausreichendes öffentliches Interesse** gedeckt ist und
  den **Grundsatz der Verhältnismässigkeit** wahrt — diese drei Grundsätze gelten als erfüllt bei
  Grundstücken/Objekten in **roter und blauer Zone**.
  - Kein Entschädigungsanspruch: Der Eintrag in die Gefahrenkarte gilt als
  **entschädigungslose, öffentlich-rechtliche Eigentumsbeschränkung** — kein Anspruch auf
  Schadenersatz wegen Wertverminderung (die materielle-Enteignungs-Schwelle wird in der Regel
  nicht erreicht, weil das Eigentum beim Grundeigentümer verbleibt und die Massnahme polizeilich
  motiviert ist).
- Die Gemeinde trägt eine **Informationspflicht**: Gefahrenkarten sind auf Anfrage offenzulegen
  (kein Interessennachweis nötig); unterlässt die Gemeinde die aktive Information, drohen ihr
  Schadenersatzforderungen bei späteren Hochwasserschäden.

**JANS-Praxisrelevanz:** analog zur bereits dokumentierten SZ-Blauzonen-Warnung («keine
besonders sensiblen Objekte») gilt für ZH: Ein Vorhaben in der **blauen Zone** ist zwar bewilligt
grundsätzlich möglich (Gebotsbereich, Bauen mit Auflagen), aber bei **Alters-/Pflegeheimen** ist
die Auflagenlast sorgfältig zu prüfen — dieselbe Healthcare-Fallgrube wie bei den Rutschungs-Stufen
in Abschnitt 2.

**Aktueller Bezugsweg für die konkrete Parzelle: GELÖST (Run 54, 2026-07-20, nachgetragen Run 57,
2026-07-23).** Der Leitfaden von 2003 beschreibt nur das Verfahren, nicht den heutigen
GIS-Zugriffspunkt — dieser ist seit Run 54 bekannt und verifiziert: `maps.zh.ch/wfs/OGDZHWFS`,
Layer `ms:ogd-0044_giszhpub_wb_hw_gk_f` (Hochwasser, Nr. 44.2) bzw. der kombinierte
`ms:ogd-0044_giszhpub_wb_syn_gk_f` (synoptische Gefahrenkarte, Nr. 44.13). Login-frei, im Connector
als `geo-zh.mjs --produkt naturgefahren` nutzbar. Volle Herleitung, Attribute und Benchmark siehe
Abschnitt 8a — diese Zeile war bis Run 57 stehen geblieben, obwohl Abschnitt 8a die Frage bereits
beantwortet hatte (Registerlücke, kein neuer Rechercheaufwand).

## 8. Offene Punkte

- **ZH-Grundwasserschutzzonen-Endpunkt GELOEST (Run 33, 2026-07-13):** Das in
  Run 24 gemeldete `GetCapabilities`-Problem war **kein dauerhafter Ausfall**
  — ein erneuter Abruf von `https://maps.zh.ch/wfs/OGDZHWFS?service=WFS&
  version=2.0.0&request=GetCapabilities` liefert diesmal ein vollstaendiges,
  14'503-zeiliges Capabilities-Dokument mit allen Layer-Namen. Stichwortsuche
  darin ergibt die **rechtskraeftige Grundwasserschutzzone**:
  `ms:ogd-0143_arv_basis_grundwasser_gws_zone_f` (Dataset 0143, + projektiert
  `_proj_f`) sowie das **Grundwasserschutzareal**:
  `ms:ogd-0149_arv_basis_grundwasser_gws_areal_f` (+ `awel_gs_gw_gws_areal_proj_f`).
  Live-Test per `GetFeature` (bbox ±200-300 m um EGRID CH879777718909 Langnau
  Kat. 3338 sowie CH245295777451 Wetzikon Kat. 6505): beide Abfragen liefern
  ein **schema-valides, fehlerfreies** `FeatureCollection`-Dokument mit
  `numberMatched="0"` — der Endpunkt **funktioniert** (kein Server-/Auth-Fehler),
  an diesen zwei Benchmark-Parzellen liegt schlicht **keine** Grundwasserschutz-
  zone (plausibel, beide nicht in einem bekannten Grundwasserfassungsgebiet).
  **ERLEDIGT Run 54 (2026-07-20):** Positiv-Benchmark erbracht, Status
  **established**, Connector-Produkt gebaut — s. Abschnitt 8b.
- **ZH-Endpunkt fuer Naturgefahrenkarte GELOEST (Run 54, 2026-07-20; Register-Nachtrag Run 57,
  2026-07-23):** der Run-33-Befund (kein Treffer im OGD-WFS fuer die Stichworte "gefahr"/"hazard"/
  "naturgefahr") war korrekt, aber eine **Stichwort-**, keine Vollständigkeitssuche — die
  Gefahrenkarte liegt im selben `maps.zh.ch/wfs/OGDZHWFS`, nur unter der AWEL-Themengruppe 44
  "Gewaesser/Wasserbau" statt unter einem Naturgefahren-Stichwort (der geratene login-pflichtige
  WMS-Pfad `maps.zh.ch/wms/NaturgefahrenZH` bleibt irrelevant/Sackgasse). Volle Herleitung,
  Layer-Liste, Attribute und Positiv-/Negativ-Benchmark: Abschnitt 8a. Dieser Punkt stand nach
  Run 54 noch drei Tage als "offen" im Register, obwohl Abschnitt 8a bereits die Lösung enthielt —
  reine Registerpflege-Lücke, kein neuer Rechercheaufwand in Run 57.
- **SZ-Naturgefahren-Endpunkt GELOEST (Run 55, 2026-07-22):** war nur als manueller WebGIS-Link
  bekannt — jetzt REST-faehig getestet und im Connector, s. Abschnitt 8c. Damit sind **beide**
  Kantone (ZH Abschnitt 8a, SZ Abschnitt 8c) auf einen automatisierten Naturgefahren-Zugriff gebracht.
- **SZ-Grundwasserschutz-Endpunkt GELOEST (Run 55, 2026-07-22):** S1/S2/S3-Zonen + Gewaesserschutz-
  bereich Au + Schutzareal ueber `map.geo.sz.ch/mapserv_proxy` (a013a), Connector-Produkt
  `geo-sz.mjs --produkt grundwasser` gebaut + verifiziert, s. Abschnitt 8d. Damit deckt auch der
  SZ-Connector das UG-relevante Grundlagenpaar (Naturgefahr + Grundwasserschutz) ab.
- **ZH-Grundwasserisohypsen (informative Aquiferkarte) neu gefunden, noch nicht im Connector**
  (Run 55) — s. Abschnitt 6, Status `emerging`. Naechster Schritt: `--produkt grundwasserkarte`
  in `geo-zh.mjs` bauen (analog zu `--produkt grundwasser` fuer die Schutzzonen).

## 8a. ZH-Naturgefahrenkarte — Endpunkt gefunden und verifiziert (Run 54, 2026-07-20)

**Der Fund.** Die ZH-Gefahrenkarte liegt im **bereits bekannten** `maps.zh.ch/wfs/OGDZHWFS` —
kein neuer Dienst, kein Login. Sie war nur deshalb ueber fuenf Laeufe hinweg unauffindbar, weil
alle bisherigen Suchen nach den Stichworten *naturgefahr* / *gefahr* / *hazard* im Layer-**Namen**
filterten. Der Kanton fuehrt die Gefahrenkarte aber unter der **AWEL-Themengruppe 44 «Gewaesser/
Wasserbau»**, weil Hochwasser der dominante Prozess ist. Ein Volltext-Grep ueber das gesamte
`GetCapabilities` (801 KB, 516 Layer) statt einer Stichwort-Suche legte sie frei.

> **Lehre fuer kuenftige Endpunkt-Suchen:** nicht nach dem Fach-Stichwort im Layer-Namen suchen,
> sondern das GetCapabilities **vollstaendig** durchsuchen und die kantonale **Themengruppen-Logik**
> mitdenken (wer ist fachlich zustaendig — hier AWEL Wasserbau, nicht ein «Naturgefahren»-Amt).

**Layer (alle login-frei, GeoJSON via `OUTPUTFORMAT=geojson`):**

| Zweck | Typname | Nr. |
|---|---|---|
| **Synoptische Gefahrenkarte** (Kombination aller Prozesse) — der Standardlayer | `ms:ogd-0044_giszhpub_wb_syn_gk_f` | 44.13 |
| Gefahrenbereiche **Hochwasser** | `ms:ogd-0044_giszhpub_wb_hw_gk_f` | 44.2 |
| Gefahrenbereiche **Massenbewegungen** (Rutschung) | `ms:ogd-0044_giszhpub_wb_mb_gk_f` | 44.7 |
| Intensitaetsflaechen HW je Wiederkehrperiode | `…_wb_hw_ik30/100/300/1000_f` | — |
| Intensitaetsflaechen MB (inkl. `_ikp_f` permanente Rutschungen) | `…_wb_mb_ik30/100/300_f` | — |
| **Kartierungsstand je Gemeinde** | `…_wb_gk_projektuebersicht_f` | 44.1 |

**Attribute** (per `DescribeFeatureType` + realer Antwort verifiziert): `gefstufe` (Integer 1-4) und
`gefstufe_txt`, zusaetzlich prozessgetrennt `gefstufe_hw`/`_txt` (Hochwasser) und `gefstufe_mb`/`_txt`
(Massenbewegung). Die Stufenskala deckt sich exakt mit der in Abschnitt 2 dokumentierten
CH-Systematik:

| `gefstufe` | `gefstufe_txt` | Farbe |
|---|---|---|
| 1 | Restgefaehrdung | gelb-weiss |
| 2 | geringe Gefaehrdung | gelb |
| 3 | mittlere Gefaehrdung | blau |
| 4 | erhebliche Gefaehrdung | rot |

**Eigenstaendig verifiziert 2026-07-20** (nicht nur Layer-Existenz): `GetFeature` ueber ein
10x10-km-Fenster Langnau/Adliswil lieferte 200 Flaechen mit der vollstaendigen Stufenverteilung
(80x Stufe 1, 94x Stufe 2, 25x Stufe 3, 1x Stufe 4) — der Layer ist also nicht nur vorhanden,
sondern **inhaltlich gefuellt und differenziert**.

**Positiv-Benchmark (Punktlage):** *Buchserstrasse 9, 8108 Daellikon* — EGRID `CH875077785530`,
Parzelle 1923, BFS 84 → **Stufe 3 «mittlere Gefaehrdung» (blau)**, Prozess Hochwasser
(Massenbewegung: keine). **Negativ-Kontrolle:** *Giebelweg 12, 8135 Langnau am Albis*
(EGRID `CH879777718909`, Parz. 3338) → keine Gefahrenflaeche.

**Connector.** `geo-zh.mjs --produkt naturgefahren` (Run 54) fragt alle drei Gefahrenbereich-Layer
ab, meldet die **hoechste** Stufe als planungsbestimmend und gibt ab Stufe 3 einen Objektschutz-
Hinweis aus. Default-Radius ±5 m (die Punktlage entscheidet, anders als bei Baulinien).

⚠ **Zwei Fallen beim Lesen des Ergebnisses:**
1. **Kein Treffer heisst «hier keine Gefahrenflaeche», nicht «Gemeinde nicht kartiert».** Wer das
   verwechselt, haelt eine unkartierte Parzelle faelschlich fuer sicher. Der Kartierungsstand ist
   ein **eigener** Layer (44.1) — bei Verdacht dort gegenpruefen.
2. **Sturz/Steinschlag fuehrt der ZH-WFS nicht** (topografisch plausibel, ZH ist kein alpiner
   Sturzkanton). Fuer Sturzprozesse bleibt die kantonale Fachstelle zustaendig — im Kt. SZ dagegen
   ist Sturz Teil der Gefahrenkarte (Abschnitt 3).
- Verhaeltnis zu [[recht-norm-abstandsvorschriften-wald-gewaesser]] (Wald/Gewaesser als eigene
  Abstandsvorschrift) und Brandschutz-Naturgefahren-Bezug in [[energie-pv-brandschutz]] (SIA 261
  bei Solaranlagen) — Naturgefahrenkarte ist die uebergeordnete Planungsgrundlage, aus der sich
  Teile dieser Anforderungen ableiten.

## 8b. ZH-Grundwasserschutzzonen — Positiv-Benchmark und Connector (Run 54, 2026-07-20)

Seit Run 33 war der Endpunkt bekannt, aber **nur mit 0-Treffer-Abfragen** belegt. Das ist ein
schwacher Beweis: eine leere `FeatureCollection` unterscheidet nicht zwischen «Endpunkt arbeitet
korrekt, hier liegt keine Zone» und «Endpunkt liefert stumm nichts». Run 54 schliesst diese Luecke.

**Verifikation.** Eine 300er-Stichprobe aus `ms:ogd-0143_arv_basis_grundwasser_gws_zone_f` liefert
die vollstaendige, empirisch belegte Codeliste:

| Code | `code_bezeichnung` | n (Stichprobe 300) |
|---|---|---|
| S1 | Fassungsbereich | 127 |
| S2 / S2a / S2b / S2c | Engere Schutzzone | 71 / 13 / 7 / 1 |
| S3 / S3a | Weitere Schutzzone | 79 / 1 |
| Spezialzone | Spezialzone | 1 |

Das **Schutzareal** (`…_gws_areal_f`, Layer 0149) fuehrt planerisch gesicherte **kuenftige** Zonen
mit eigenem Codewert `ZukuenftigeZoneS1` / `ZukuenftigeZoneS2` (Beispiele: «Grundwasserschutzareal
Weiacher Hard», «… Zelgli»). ⚠ Beobachtete Eigenheit der Quelldaten: bei `ZukuenftigeZoneS1` steht
als Klartext «zukuenftige **engere** Schutzzone», obwohl S1 sonst der Fassungsbereich ist — im
Zweifel den **Code**, nicht den Klartext auswerten.

**Weitere belegte Felder je Treffer:** `bezeichnung` (Fassungsname), `nutzniesser` (Gemeinde/Werk),
`rechtsstatus` (z. B. `inKraft`), `grundwasserrechtsnr`, `festsetzungsdatum`, `bfsnr`.

**Positiv-Benchmark:** *Hardau 24, 8408 Winterthur* — EGRID `CH827726200895`, Parzelle WU2856,
BFS 230 → **S3 «Weitere Schutzzone» «Hard, Klaeranlage»**, `inKraft`, GW-Recht `i 01-0028, i 03-0025`.
Zusaetzlich Punkt-in-Polygon gegen Zone «Rotzibuech» (Rorbas, BFS 53, S2) — 1 Treffer.
**Negativ-Kontrolle:** Giebelweg 12 Langnau → keine Zone. Damit sind die frueheren 0-Treffer an
Langnau/Wetzikon als **echte Negativbefunde** bestaetigt.

**Connector.** `geo-zh.mjs --produkt grundwasser` (Run 54), Default-Radius ±5 m. Die Ausgabe ist
**zonengerecht** formuliert, weil sich die Bauwirkung fundamental unterscheidet:

- **S1 Fassungsbereich** — Bauten grundsaetzlich unzulaessig.
- **S2 engere Schutzzone** — stark eingeschraenkt; UG/Aushub ins Grundwasser i. d. R. unzulaessig,
  Erdwaermesonden verboten; AWEL-Vorabklaerung noetig.
- **S3 weitere Schutzzone** — Bauen moeglich, aber auflagenbehaftet (Aushubtiefe/Grundwasserabstand,
  Waermesonden meist verboten, Tankanlagen eingeschraenkt).

Rechtsgrundlage GSchG/GSchV, Vollzug AWEL. Fuer die Grundwasser**karte** (Flurabstand, Weisse-Wanne-
Entscheid) bleibt Abschnitt 6 massgeblich; die Schutzzone ist die **rechtliche**, die Karte die
**bautechnische** Grundlage — beide gehoeren in die Grundlagenphase, vgl.
[[kartenportale-grundlagen-checkliste-neue-parzelle]].

## 8c. SZ-Naturgefahrenkarte — Endpunkt gefunden und verifiziert (Run 55, 2026-07-22)

Der SZ-Layer `ch.sz.a012b.naturgefahrenkarte.*` war seit Run 22 (K10) **nur als manueller WebGIS-
Link** bekannt, nie als REST-Endpunkt getestet. Jetzt geschlossen — beide Kantone (ZH Abschnitt 8a,
SZ hier) sind auf einen automatisierten Naturgefahren-Zugriff gebracht.

**Der Fund (gleiche Lehre wie ZH: nach Inhalt, nicht nach dem Fachwort suchen).** Der reale
Service hinter dem WebGIS wurde ueber die **opendata.swiss-CKAN-API** (`package_show?id=gefahrenkarte1`,
Amt fuer Geoinformation Kt. SZ) gefunden: die WMS-/WFS-Ressourcen zeigen auf
**`map.geo.sz.ch/mapserv_proxy`**. Das dortige `GetCapabilities` fuehrt exakt die aus dem WebGIS
bekannten Layer-Namen.

⚠ **Protokoll-Falle:** Der Dienst spricht **nur WFS 1.1.0 + GML 3.1.1**, nicht WFS 2.0.0. Ein
`OUTPUTFORMAT=geojson` liefert HTTP 400 («outputformat 'geojson' is not permitted»). Deshalb liest
der Connector die GML-Attribute mit einem simplen Regex-Parser (kein XML-Package im Hub-Node
vorausgesetzt); `TYPENAME` (Singular), `SRSNAME`/`BBOX-CRS` als `urn:ogc:def:crs:EPSG::2056`.

**Layer:**

| Zweck | Typname |
|---|---|
| **Gefahrenflaechen ueberlagert** (Perimeter A, parzellenscharf) — der Standardlayer | `ms:ch.sz.a012b.naturgefahrenkarte.gefahrenflaechen.ueberlagert` |
| Hinweisflaechen ueberlagert (Perimeter B, ausserhalb Siedlung) | `ms:ch.sz.a012b.naturgefahrenkarte.hinweisflaechen.ueberlagert` |
| **Erhebungsgebiet** (Kartierungsstand — analog ZH-Layer 44.1) | `ms:ch.sz.a012b.naturgefahrenkarte.erhebungsgebiet` |

**Attribute** (per realer Antwort verifiziert): je Prozess ein eigenes Textfeld —
`lawine_gefahrenstufe_tx`, `rutsch_gefahrenstufe_tx`, `wasser_gefahrenstufe_tx`,
`steinschlag_gefahrenstufe_tx` mit den Werten `keine` / `Restgefährdung` / `geringe` / `mittlere` /
`erhebliche Gefährdung`. Anders als ZH (dort nur HW + MB) fuehrt SZ **alle vier alpinen Prozesse
getrennt** (inkl. Lawine + Steinschlag) — das deckt sich mit der in Abschnitt 3 dokumentierten
SZ-Besonderheit. Das `erhebungsgebiet`-Feature traegt `a012b_typ_tx` (z. B. «Erhebung
abgeschlossen») + Info-Link auf die AWN-Fachstelle.

**Eigenstaendig verifiziert 2026-07-22 am realen JANS-Benchmark:**

| Fall | Radius | Ergebnis |
|---|---|---|
| **Willerzell/Reckholdern** Parz. 3301 Einsiedeln (EGRID `CH527708492462`) | ±5 m | 1 Flaeche, Rutsch **geringe Gefaehrdung** (parzellenpunkt-genau) |
| dieselbe Parzelle | ±60 m | **10 Flaechen**, Rutsch gemischt (3x erheblich / 2x mittel / 5x gering), **massgebend erhebliche Gefaehrdung** — deckt sich mit dem Objektschutzkonzept 26.09.2023 (Abschnitt 4) |
| **Negativ-Kontrolle** Wangen 25 (flaches Seeufer Obersee) | ±5 m | 0 Treffer, sauberer Negativbefund |

⚠ **Radius-Nuance (wichtig fuer die Auslegung):** Der Default ±5 m gibt die **punktgenaue** Stufe
am Parzellenschwerpunkt. Eine Parzelle kann aber mehrere Prozess-/Stufenfelder ueberlagern (hier:
gering am Schwerpunkt, erheblich am Hang derselben Parzelle) — fuer die **parzellenweite**
massgebende Stufe mit `--radius` (z. B. 40-60 m) auf die Parzellenausdehnung erweitern und die
hoechste Stufe werten. Der Negativbefund ist ausserdem gegen den `erhebungsgebiet`-Layer zu lesen
(Kartierungsstand ≠ Gefahrenfreiheit — dieselbe Falle wie ZH-Layer 44.1).

**Connector.** `geo-sz.mjs --produkt naturgefahren` (braucht Koordinate, also `--parzelle`/
`--adresse`, nicht `--egrid` allein) meldet die massgebende Stufe ueber alle vier Prozesse und gibt
ab «mittlere»/«erhebliche Gefaehrdung» den Objektschutz-Hinweis (§ 20/17 PBG SZ, SIA 261/261-1,
sensible Nutzungen) aus. Status **established** (Endpunkt + Positiv/Negativ-Benchmark verifiziert).

## 8d. SZ-Grundwasserschutz — Endpunkt gebaut und verifiziert (Run 55, 2026-07-22)

Das SZ-Pendant zum ZH-Grundwasser-Paar (Abschnitt 8b): entscheidet ueber das **Untergeschoss**
(Weisse Wanne / Aushub / Erdwaermesonde), bevor gezeichnet wird. Derselbe WFS wie die
Naturgefahren (8c). Die Layer wurden ueber einen **Volltext-Scan des GetCapabilities** (1'016
FeatureTypes) unter dem SZ-Themencode **a013a «planerischer Gewaesserschutz»** gefunden — nicht
unter einem «grundwasser»-Layernamen (gleiche ZH-Lehre).

**Layer:**

| Zweck | Typname |
|---|---|
| **Grundwasserschutzzone** S1/S2/S3 (rechtskraeftig) | `ms:ch.sz.a013a.planerischergewaesserschutz.gwszonen.gwszone.inkraft` |
| Schutzzone (provisorisch) | `…gwszonen.gwszone.provisorisch` |
| Schutzareal (Vorsorge fuer kuenftige Fassung) | `…gwszonen.gwsareal` |
| **Gewaesserschutzbereich Au** (nutzbares Grundwasservorkommen) | `…gsbereiche.bereich.au` |

**Attribute** (per `DescribeFeatureType` + realer Antwort belegt): die Zone traegt `typ` (S1/S2/S3),
`bezeichnung` (Fassungsname), `wasserversorger`, `rechtskraftdatum`. Der **Bereich Au** ist ein
reines Praesenz-Polygon (nur `identifikator`) — ein Treffer heisst «Parzelle liegt im
Gewaesserschutzbereich Au».

**Eigenstaendig verifiziert 2026-07-22 (Connector-Produkt heute gebaut + end-to-end getestet):**

| Fall | Ergebnis |
|---|---|
| **Freienbach 1976** (EGRID `CH707738332629`) | Schutzzone **S3 UND S2 «Halten»** (Kloster Einsiedeln, rk 2006-07-04); Parzelle ueberlagert beide Ringe, massgebend **S2** |
| **Wangen 25** (EGRID `CH379377805305`) | **Gewaesserschutzbereich Au**, aber **keine** S-Schutzzone |
| **Galgenen 439** (EGRID `CH656153779347`) | am Schwerpunkt ±5/40 m **negativ**, obwohl die S3-Zone «Altstofel Ruchweid» die Parzellengrenze beruehrt — belegt die Punktlage-Nuance (s. u.) |
| **Negativ-Kontrolle** Willerzell 3301 | weder S-Zone noch Bereich Au |

⚠ **Punktlage-Nuance (wie bei Naturgefahren):** Default ±5 m ist parzellenpunkt-genau. Beruehrt eine
Zone nur die Parzellengrenze (Galgenen 439), meldet der Punkt-Test korrekt **negativ** — fuer die
parzellenweite Aussage `--radius` erhoehen. Umgekehrt kann eine Parzelle wie Freienbach 1976 zwei
Ringe (S2 **und** S3) ueberlagern; der Connector wertet den **strengsten** (S2) als massgebend.

**Connector.** `geo-sz.mjs --produkt grundwasser` (braucht Koordinate), Ausgabe **zonengerecht**
identisch zur ZH-Logik (Abschnitt 8b): S1 faktisches Bauverbot · S2 UG/Aushub/Erdsonden i. d. R.
unzulaessig · S3 auflagenbehaftet · **Bereich Au** = Anlagen/Aushub/Versickerung bewilligungspflichtig
(GSchG Art. 19 / GSchV Anh. 4 Ziff. 21). Kombinierbar mit Naturgefahren in einem Lauf
(`--produkt naturgefahren,grundwasser`). Status **established** (Endpunkt + S-Zonen-/Bereich-Au-/
Negativ-Benchmark verifiziert). Damit deckt der SZ-Connector dieselben zwei UG-relevanten Grundlagen
ab wie der ZH-Connector; vgl. [[kartenportale-grundlagen-checkliste-neue-parzelle]] und
[[recht-norm-abstandsvorschriften-wald-gewaesser]] (SZ § 66/67, Gewaesser-Oekomorphologie).
