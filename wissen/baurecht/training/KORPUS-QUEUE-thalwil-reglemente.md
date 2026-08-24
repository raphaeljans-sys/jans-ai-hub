---
name: KORPUS-QUEUE-thalwil-reglemente
beschreibung: Erschliessungs-Fahrplan fuer den Baurechts-/Reglemente-Ordner des Projekts 2414 Thalwil, Bohlweg 3. Speist den Loop `baurecht-buch-training` als zweite Korpus-Quelle neben dem Standardwerk.
angelegt: 2026-08-03 (Auftrag Raphael, nach der Begleitbeschrieb-Eingabe Bohlweg 3 vom selben Tag)
quelle_pfad: "/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2414 THALWIL/06 Reglemente"
station: Mac Mini (OneDrive-Mount); vom MacBook via `ssh mini` lesbar
umfang: 243 Dateien (ohne .DS_Store), 13 Top-Ordner
---

# Korpus-Queue — Reglemente-Ordner 2414 Thalwil / Bohlweg 3

## Warum dieser Korpus

Das Standardwerk (Fritzsche/Bösch/Wipf/Kunz) liefert die **Dogmatik**. Dieser Ordner liefert,
was dem Harness bisher fehlt: die **kommunale Konkretisierung und die Anwendungsebene** einer
realen Parzelle — BZO Thalwil samt Revision 2025, Merkblätter und Wegleitungen der Gemeinde,
OEREB-Auszug, Näherbaurecht, und Raphaels **eigene** baurechtliche Zusammenfassungen.

Auslöser ist die Eingabe vom 03.08.2026 (Begleitbeschrieb Projektänderung, Bauentscheid
2024.227). Dabei zeigte sich die Lücke konkret: die KB führt in `raw/` nur die **alte**
BZO Thalwil (Stand 07.06.2026). Der Begleitbeschrieb argumentiert durchgehend mit der
**revBZO** (Art. 50 Abs. 1 lit. b, Art. 31 Abs. 1, negative Vorwirkung seit 16.05.2025) —
diese Artikel waren aus der KB heraus **nicht verifizierbar**. Die Synopse liegt in diesem
Ordner.

## Abgrenzung (Rule `projekt-ablage-stand`)

- **In die KB wandert nur Verallgemeinerbares:** BZO-Artikel und ihre Revision, Merkblätter,
  Wegleitungen, Messweisen, kantonale Normen. Diese gelten für **jedes** Thalwiler Projekt.
- **Im Projektordner bleibt Projektgebundenes:** OEREB-Auszug Parzelle 6289/9568, das konkrete
  Näherbaurecht SBB, Verfügungen, projektbezogene Factsheets. Sie werden **zitiert**, nicht
  kopiert.
- **Raw ist Quell-Dump:** was in `raw/` landet, wird nie editiert (Rule `wissens-bibliothekar`).

## Echo-Schutz (wichtig)

`_Zusammenfassungen JANS/` enthält **Raphaels eigene** baurechtliche Zusammenfassungen. Zwei
Klassen sauber trennen:

- **Authentisch (Gold):** von Raphael selbst verfasst, vor der Claude-Ära bzw. ohne
  Claude-Beteiligung — z.B. `200831 BR Grundstück.pdf`, `260302 BR Grundstück Thalwil.docx`.
  Diese dürfen als Fach- **und** Stilquelle dienen.
- **Claude-Erzeugnisse (kein Lernstoff):** die datierten Factsheets im JANS-Schema
  (`260609-Factsheet-02-Gartenmauer-Regularien-Bohlweg3.pdf`,
  `260703-Baurecht-Gartenmauern-Thalwil.*`, `260703-Baurecht-Besondere-Gebaeude-Thalwil.*`).
  Sie sind **Prüfmaterial**, nicht Quelle: gegen den amtlichen Wortlaut gegenlesen und
  gefundene Fehler melden. Nie als Beleg zitieren (eisernes Echo-Verbot, Rule `jans-dna`).

## Batches (Reihenfolge verbindlich, 1 Batch pro Lauf)

| # | Batch | Inhalt | Ziel in der KB | Status |
|---|---|---|---|---|
| **T1** | **BZO-Revision 2025** | `02 BZO Thalwil/_BZO-Revision 2025/`: `20250416-BZO-Vorschriften-Synopse.pdf`, `20250905-Auslegung-negative-Vorwirkung-BZO-Artikel.pdf` | neuer `raw/`-Volltext revBZO Thalwil + neuer Wiki-Artikel [[negative-vorwirkung-und-bzo-revision]] | **erledigt** (Run 72, 03.08.2026) |
| **T2** | **Umgebungsgestaltung** | `02 BZO Thalwil/02 Umgebungsgestaltung/` (Gartenmauern, Vorgarten, Grünanteil) | Wiki [[umgebungsgestaltung-und-einfriedungen]] (neu) | **erledigt** (Run 73, 13.08.2026) |
| **T3** | **Grundmasse + SBV W3** | `02 BZO Thalwil/01 Grundmasse/`, `Sonderbauvorschrift W3/`, `Zonenplan/` | [[zonenkonformitaet]] + [[nutzungsziffern]] schärfen | **erledigt** (Run 75, 23.08.2026) |
| **T4** | **Merkblätter/Wegleitungen** | `02 BZO Thalwil/00 BZO Merkbaltt Wegleitungen/` (Gebäudehöhen-Messweise, qualitative Beurteilungskriterien, Wegleitung BZO 2020, Merkblatt Abstände) | [[abstaende-und-hoehen]], [[gebaeudearten-und-abstandssystem]] | **erledigt** (Run 74, 17.08.2026) |
| **T5** | **Einzelthemen** | `Kniestock/`, `Massgebendes Terrain/`, `Besonderes Gebäude/`, `Fahrzeugabstellplaetze/`, `Fensterflaechen/`, `Spiel und Ruheflaeche/`, `Baugespann/`, `Wohnungserhebung/` | je bestehender Wiki-Artikel | **erledigt** (Run 76, 23.08.2026) |
| **T6** | **PBG-Screenshots + Näherbaurecht** | `03 PBG Zuerich/` (Vordach § 260 Abs. 3/4, anrechenbares UG), `Näherbaurecht NBR2008/` | [[abstaende-und-hoehen]] (Näherbaurecht § 270 Abs. 3) | **erledigt** (Run 77, 23.08.2026) |
| **T7** | **Archiv-Sichtung** | `_Archiv/` (91 Dateien: VSS-Norm, Merkblätter Konstruktion, Lärmschutz, Naturgefahren, Brandschutz, PV) | Triage; Brandschutz → Skill `brandschutz`, Lärm → [[laermschutz-und-nichtionisierende-strahlung]] | **erledigt** (Run 78, 23.08.2026) |
| **T8** | **Gegenlesen der Claude-Factsheets** | die drei datierten Factsheets (siehe Echo-Schutz) | Fehlerbericht in `outputs/`, keine Aufnahme als Quelle | **erledigt** (Run 79, 23.08.2026) |
| **T9** | **Restdateien (nicht in der ursprünglichen Ordnerliste erfasst)** | `13 Verfügungen/`, `14 Liegenschaftsentwaesserung/`, `Anrechenbares Untergeschoss Abgrabunge/Hoi Stefan.docx`, lose Dateien `_BZO Revision Abstimmung.docx` + `IMG_0316.jpeg` | [[abstaende-und-hoehen]] ergänzt; Restliches geroutet, kein Ingest | **erledigt** (Run 87, 23.08.2026) |

## Erledigt

### T1 — BZO-Revision 2025 (Run 72, 03.08.2026)

- `raw/260803_amtlich_zh_bzo-thalwil-revision-synopse.md` angelegt (Synopse «Fassung zur
  Negativen Vorwirkung» vom 05.09.2025, 51 Seiten, dreispaltig).
- Wiki [[negative-vorwirkung-und-bzo-revision]] neu (§ 234/§ 235 PBG, Strenge-Regel,
  Verfahrensstand Thalwil, artikelweise Vorwirkungs-Karte).
- **Die zwei Fassungen sind nicht identisch:** die April-Fassung (16.4.2025, «öffentliche
  Auflage/Anhörung/Vorprüfung») enthält gegenüber der September-Fassung inhaltliche
  Abweichungen. Massgebend ist die **September-Fassung**; die April-Fassung dient nur noch
  als Vergleichsbasis für die Markierungs-Extraktion.
- **Neue Leitplanke (siehe PROGRAMM):** die Grau-Markierung geht bei jeder Textextraktion
  verloren und muss aus der Grafikebene gelesen werden.
- **Fassungsstand-Befund:** die revBZO wurde am 14.06.2026 an der Urne festgesetzt (78.81 %),
  ist aber weder genehmigt noch in Kraft. Die Queue-Kopfzeile «negative Vorwirkung seit
  16.05.2025» ist bestätigt (Auflage 16.05.–15.07.2025).

### T2 — Umgebungsgestaltung (Run 73, 13.08.2026)

- Wiki [[umgebungsgestaltung-und-einfriedungen]] **neu** — die grösste gemessene Lücke der
  Priorität (d) ist geschlossen. Trägt die **Vierebenen-Prüfung** (Zonenrecht · Strassenrecht ·
  Privatrecht · Einordnung), die vollständige **Konkordanz StrAV → VErV** und die
  **Wegleitungs-Falle**.
- **Kein neuer `raw/`-Volltext nötig:** der Batch liess sich vollständig aus dem vorhandenen
  amtlichen Bestand belegen (PBG, VErV, EG ZGB, BZO Thalwil, revBZO-Synopse, ABV). Die 16 Dateien
  des Ordners sind Screenshots des amtlichen Gemeinde-Merkblatts, zwei Claude-Erzeugnisse und
  eine Claude-Übersichtsgrafik.
- **Zwei materielle Fassungsbefunde** (nicht bloss Nummernwechsel): Lichtraum über Trottoirs/
  Fuss-/Velowegen **2,5 → 2,65 m** (§ 20 VErV) und Kurveninnenseite von fester 0,80-m-Grenze zur
  blossen **Abstandsbefugnis** (§ 28 VErV). Schliesst die QUESTIONS-Frage «StrAV-Masszahlen».
- **Der wertvollste Befund war nicht beauftragt:** die Thalwiler «max. 1.40 m» für Gartenmauern
  ist **kein Rechtssatz**. Die Wegleitung führt sie unter «*Aufgrund fehlender Rechtsgrundlage
  weggelassene oder gelöschte Absätze, welche daher als Beurteilungsrichtlinie dienen*» — samt
  drei weiteren Sätzen desselben Status. Er stand in keinem Screenshot des T2-Ordners, sondern
  erst im Wegleitungs-PDF aus dem T4-Ordner, das zur Verifikation der Zahl beigezogen wurde.
- **T8 teilweise vorgezogen** (die drei Gartenmauer-Erzeugnisse liegen in diesem Ordner):
  Fehlerbericht in `outputs/2026-08-13_buch-run73.md`, Ziff. 4. Für T8 verbleiben die beiden
  Factsheets vom 03.07.2026 (Gartenmauern/Besondere Gebäude).

### T4 — Merkblätter und Wegleitungen (Run 74, 17.08.2026)

- **Kernbefund: die Klammer-Falle.** Art. 24 Abs. 3 BZO Thalwil und das Gemeinde-Merkblatt über
  den Grenz-/Weg- und Strassenabstand (20.01.2022) geben **§ 18 Abs. 1 BBV II in drei Punkten
  abweichend** wieder: Höhe 2,50 m statt **3 m**, «keine Abstandsvorschriften» statt Befreiung nur
  **gegenüber grundstückinternen Gebäuden**, und die **6-m-Fassadenlänge** (inkl. Pergolen) fehlt
  ganz. Die praktisch gefährlichste Divergenz ist die zweite: § 18 Abs. 1 BBV II befreit vom
  **Gebäudeabstand innerhalb der eigenen Parzelle**, nicht vom **Grenzabstand zum Nachbarn** — und
  der Satz steht ausgerechnet in einem Merkblatt über den Grenzabstand.
- **Zweiteiliger Fassungsstand-Check (Leitplanke Run 71, erstmals kommunal angewandt):** Teil 1 —
  die BBV II ist **in Kraft**, Nachtrag 097 (zhlex, 17.08.2026), also kein totes Recht. Teil 2 —
  die Drift sitzt im **Inhalt** des Verweises. Ein Check auf Erlassebene allein hätte nichts
  gefunden. Zusätzlich widerlegt: die 2,50 m sind **kein eingefrorener Altstand**. Die Fassung 067
  (in Kraft bis 01.03.2017) wurde frisch von zhlex beschafft und lautet «grösste **Höhe 3 m**»; die
  Änderung per 01.03.2017 war rein terminologisch («grösste Höhe» → «Gesamthöhe»).
- **Anhang § 49 Abs. 3 PBG ist Ermächtigung, nicht Definition** — eine Kann-Vorschrift an die
  Gemeinde. Ohne BZO-Regelung greift die Erleichterung nicht; unmittelbar wirkt **Anhang § 273 PBG**
  (3,5 m Gebäudeabstand). Die Merkblatt-Zusatzkriterien (nicht beheizt · nicht von einem
  anrechenbaren Raum zugänglich · Belichtung unter 10 %) stehen **nicht** im Gesetzeswortlaut und
  sind Verwaltungspraxis.
- **Messweisen-Merkblatt gegengelesen, kein Fehler gefunden.** Gebäudehöhe ab gewachsenem Boden,
  Firsthöhe ab Gebäudehöhe bis First, Gesamthöhe als «maximal zulässige höchste Höhe unabhängig der
  Dachform» — konsistent mit dem altrechtlichen Anhang-Regime und der BZO-Fussnote. **Verkürzt**
  ist es aber: die eigentliche Begrenzung der Firsthöhe (45°-Ebene, 7 m, Anhang § 281 PBG) nennt
  das Merkblatt nicht. Bestätigt wurde dabei der Bezugspunkt: in nicht harmonisierten Gemeinden
  gilt der **gewachsene Boden**, nicht das **massgebende Terrain** (harmonisierter § 281 PBG).
- **Kein neuer Wiki-Artikel, kein neuer `raw/`-Volltext.** Der Bestand ([[abstaende-und-hoehen]]
  führt die Doppelspurigkeit harmonisiert/alt bereits sauber) trug den Befund; ergänzt wurden
  [[gebaeudearten-und-abstandssystem]] (neue Gebäudeart + zwei Abschnitte) und das Destillat
  [[15-lage-von-gebaeuden-teil2d]] (§ 18 **Abs. 1** fehlte, Abs. 2 war erfasst).
- **Selbstkorrektur am Run-73-Report:** dessen «Fehler 2» («10 m²/2,50 m entsprechen keiner der
  beiden Grössen») ist präzisiert — die Zahlen stammen wörtlich aus Art. 24 Abs. 3 BZO Thalwil,
  also aus amtlicher kommunaler Quelle. Korrekturvermerk im Report gesetzt.
- **Verbleibend aus diesem Ordner:** Merkblatt LEK, Merkblatt Qualitative Beurteilungskriterien und
  die Wegleitung BZO 2020 wurden bereits in Run 73 beigezogen; ungeprüft bleibt das Blatt
  «Gestaltung und Anordnung von Dachterrassen über Attikageschossen» (PNG) → sinnvoll bei T5
  zusammen mit Art. 25 BZO (Attikageschosse).

### T3 — Grundmasse + Sonderbauvorschrift W3 + Zonenplan (Run 75, 23.08.2026)

- **Kernbefund: die Art.-3-Grundmasse-Tabelle in `raw/260607_amtlich_zh_bzo-thalwil.md` ist
  linearisiert und damit unbrauchbar** — dieselbe Fehlerfamilie wie beim Zürich-Stadt-Fall
  (Buch-Run 56, 25.07.2026): die mehrspaltige Tabelle wurde beim ursprünglichen
  PDF-zu-Markdown-Konvertieren in eine Zeilenkette ohne Spaltenzuordnung zerlegt (Zeilen
  682-918, Zahlen wie «7.50», «10.50 10.50 13.50» ohne erkennbare Zone). Behoben nach
  demselben Muster: `oerebdocs.zh.ch/getDoc?docid=1296` frisch bezogen und mit
  `pdftotext -layout` neu extrahiert → `raw/260823_amtlich_zh_bzo-thalwil-grundmasse.md`.
- **Doppelt gegengelesen:** die frische Extraktion wurde zusätzlich gegen die unabhängige
  zweite Quelle im T3-Ordner selbst geprüft (`01 Grundmasse/…BZO-Seite5.pdf`, Projekt-Export
  vom 26.11.2024) — beide Fassungen sind zeichengleich, obwohl die Gesamtseitenzahl
  differiert (19 vs. 21 Seiten). Das ist ein PDF-Exportartefakt, keine Fassungsdivergenz.
- **Art. 20a (SBV W3/WG3) war im bestehenden Raw bereits korrekt lesbar** — reine
  Bestätigung, kein neuer Ingest nötig. Die Fussnote b) in Art. 3 («im Rahmen von Art. 20a
  ersetzt ein Vollgeschoss das DG») verweist konsistent auf denselben Artikel, der bereits
  in Run 74 für die Klammer-Falle-Analyse gelesen wurde.
- **In die KB eingearbeitet:** `wiki/zonenkonformitaet.md` — neue Sektion «Grundmasse BZO
  Thalwil», analog zur bestehenden Zürich-Stadt-Sektion (vollständige Zonentabelle W1-WG4,
  Sonderbauvorschrift-Tabelle Art. 20a, Zonenarten-Legende aus dem Zonenplan).
- **Zonenplan-PDF (`Zonenplan_20240601.pdf`):** die Geometrie selbst ist reine
  Rastergrafik, nicht textuell extrahierbar; die textliche Legende (Zonenkürzel,
  Empfindlichkeitsstufen LSV, Symbole) wurde vollständig übernommen und ist in
  `raw/260823_amtlich_zh_bzo-thalwil-grundmasse.md` sowie der Wiki-Sektion dokumentiert.
- **Kein neuer Wiki-Artikel nötig.** Die Werte fügen sich in die bestehende
  [[zonenkonformitaet]]-Struktur (Zürich-Stadt-Muster) ein, [[nutzungsziffern]] bleibt
  unverändert, da es die kantonale Systematik (nicht die kommunalen Zahlenwerte) behandelt.

### T5 — Einzelthemen (Run 76, 23.08.2026)

- **Ordner-Bestand deutlich dünner als die Queue-Beschreibung vermuten liess:** 6 der 8
  Themenordner enthalten je nur 1-3 Screenshots/PDFs, «Besonderes Gebäude» ist **leer**. Kein
  neuer `raw/`-Volltext nötig — jeder Fund liess sich gegen den bereits ingesteten Bestand
  (`raw/260607_amtlich_zh_bzo-thalwil.md`, Standardwerk-Destillat
  [[kap16-10_gebaeudedimensionen-harmonisierung]]) oder gegen ein bereits in T4 gelesenes,
  aber nicht vollständig ausgewertetes Merkblatt verifizieren.
- **Kniestock** (`SKM_C300i22100617000.pdf`, Scan): ist **keine Thalwiler Quelle**, sondern ein
  Scan der Standardwerk-Seiten 1232 f. — exakt der Bereich, den
  [[kap16-10_gebaeudedimensionen-harmonisierung]] bereits am 2026-06-13 destilliert hat.
  Gegengelesen: wortgleich, **CONFIRMED, 0 Korrekturen**. Daraus ein Kreuzbefund: Thalwils
  eigenes Art. 25 BZO folgt weiterhin der **alten** Drittel-/45°-Attikaregel (§ 292 PBG-Verweis
  im Artikeltext selbst), nicht der harmonisierten h/2-Regel des Standardwerk-Kapitels — Beleg
  jetzt in [[zonenkonformitaet]] nachgeführt.
- **Massgebendes Terrain** (1 Screenshot): Ausschnitt aus dem bereits in T4 gelesenen
  Gebäudehöhen-Messweise-Merkblatt (Gemeinde Thalwil, 20.01.2022) — dort aber nur
  Gebäudehöhe/Firsthöhe/Gesamthöhe geprüft, **die Definition des «gewachsenen Bodens» selbst
  (überbaute/nicht überbaute Grundstücke, DLZ-Interpolationsbefugnis bei Abgrabungen) fehlte
  bislang im Wiki** — echte Lücke, jetzt in [[abstaende-und-hoehen]] nachgetragen.
- **Besonderes Gebäude:** Ordner **leer**. Zum Abschluss des in T4 begonnenen Art.-24-Befunds
  (dort nur Abs. 3, die Klammer-Falle) wurden Abs. 1 (7-%-Deckel) und Abs. 2 (6-m-Grenzbau ohne
  Nachbarzustimmung) aus dem bereits vorhandenen Rohtext ergänzt —
  [[gebaeudearten-und-abstandssystem]].
- **Fahrzeugabstellplätze** (3 Screenshots): Art. 26 BZO **CONFIRMED** gegen Bestand
  (zeichengleich). Ein Screenshot zeigt eine unbelegte private Web-Recherche zu
  Fahrzeugbreiten (77 % > 2 m) — **nicht übernommen** (keine Quelle, keine Norm). Ein weiterer
  Screenshot («6 Anforderungen an Bauten», S. 13) liess sich auf die bereits gelesene
  Wegleitung BZO Thalwil Nachführung 2020 zurückführen und enthält eine **bislang nicht
  erfasste Zahl**: Garageausfahrt-Neigung max. +3 %/-5 % innerhalb 6,0 m ab Strassengrenze,
  dazu der generische VSS-Normen-Verweis — beides jetzt in
  [[fahrzeugabstellplaetze-und-parkierung]].
- **Fensterflächen** (1 Screenshot, Ausschnitt derselben Wegleitungs-Seite): «Fensterfläche
  mind. 1/10 der Bodenfläche» — **CONFIRMED**, deckt sich wortgleich mit dem bereits als
  § 302 PBG geführten Kennwert in [[wohnhygiene-und-raumanforderungen]]. Kein Wiki-Edit nötig.
- **Spiel- und Ruhefläche** (1 PDF, BZO-Seite16): Art. 27-29 BZO (Umgebungsgestaltung,
  Flachdachbegrünung, Spiel-/Ruheflächen, Abstellflächen Velo) **CONFIRMED** gegen Bestand,
  zeichengleich mit `raw/260607_amtlich_zh_bzo-thalwil.md` Z. 1701-1737. Kein Edit nötig.
- **Baugespann** (1 Screenshot): Ausschnitt aus der bislang ungeprüften «Wegleitung für das
  Baugesuch» (Baukommission Thalwil, September 2004, 3 Seiten) — Aussteckungspflicht
  wortgleich mit dem bereits generisch geführten § 311 PBG in [[baubewilligungsverfahren]],
  keine abweichende Frist/Zahl. Das Dokument liefert aber eine **Thalwil-spezifische
  Unterlagenliste** (Formular Gebäude-/Wohnungserhebung, Parkplatzberechnung Art. 26 BZO,
  Spiel-/Ruheflächen-Berechnung Art. 28 BZO u.a.) — als konkretes Anwendungsbeispiel ergänzt.
- **Wohnungserhebung** (1 Link-Dokument): reiner URL-Verweis auf das kantonale Online-Formular,
  keine eigene Rechtsgrundlage — kein Ingest, im Unterlagenlisten-Beleg oben verlinkt.
- **Kein neuer `raw/`-Volltext, keine neuen Wiki-Artikel, 5 bestehende Artikel geschärft**
  ([[abstaende-und-hoehen]], [[gebaeudearten-und-abstandssystem]], [[zonenkonformitaet]],
  [[fahrzeugabstellplaetze-und-parkierung]], [[baubewilligungsverfahren]]). Methodische
  Einordnung: T5 bestätigt das Muster aus T2/T3/T4 — die grösste Ausbeute liegt nicht im
  Screenshot selbst, sondern im **Cross-Check gegen bereits gelesene, aber nicht vollständig
  ausgewertete Quellen** (Wegleitung 2020 zweimal angezapft, Standardwerk-Duplikat erkannt).

### T6 — PBG-Screenshots + Näherbaurecht NBR2008 (Run 77, 23.08.2026)

- **§ 293 Abs. 1/2/4 PBG** (Screenshot «ANRECHENBARES UNTERGESCHOSS», 700.1-Kopfzeile:
  «Nicht anrechenbare Untergeschosse dürfen höchstens 1,5 m über dem gestalteten Boden in
  Erscheinung treten», Ausnahme Haus-/Kellerzugänge/Garagen-Ein-/Ausfahrten, Gemeinde kann
  strenger regeln) **CONFIRMED gegen Bestand** — bereits seit Buch-Run 32 (Modell-D) in
  [[abstaende-und-hoehen]] verifiziert, wortgleich, kein Edit nötig.
- **§ 260 Abs. 3/4 PBG** (zwei Vordach-Screenshots): Screenshots 1/2 zeigen die
  **harmonisierte** Fassung (Abs. 4 Minibau-Privileg 1,5 m/2 m², bereits established seit
  Buch-Run 59) — CONFIRMED. Screenshot 3 zeigt die **alte/Anhang**-Fassung von § 260 Abs. 3
  («Einzelne Vorsprünge dürfen höchstens 2 m in den Abstandsbereich hineinragen, Erker,
  Balkone … höchstens auf einem Drittel der betreffenden Fassadenlänge») — wortgleich mit
  `raw/260607_amtlich_zh_pbg.md` Z. 4342-4343, bereits korrekt als «§ 260 Abs. 3 PBG
  (alt/Anhang)» in [[baulinien-und-abstandslinien]] geführt. Neu ergänzt in
  [[abstaende-und-hoehen]]: eine Klarstellung, dass **«Vordach» im PBG/ABV keine eigene
  Legaldefinition** ist (grep-geprüft, 0 Treffer in beiden Erlassen) und je nach Bauart unter
  die generischen Vorsprung- bzw. Minibau-Regeln fällt.
- **Kernbefund, nicht beauftragt: Art. 6 BZO Thalwil (Bauweise) fehlte vollständig im Wiki**,
  obwohl seit T3 bereits vollständig in `raw/260607_amtlich_zh_bzo-thalwil.md` (Z. 874-908)
  vorhanden. Ein Screenshot aus dem zusätzlichen (nicht in der Queue-Tabelle gelisteten,
  aber im selben Reglemente-Ordner liegenden) Top-Level-Ordner «Anrechenbares Untergeschoss
  Abgrabunge» zeigt Art. 6 Abs. 4/5 (anrechenbares UG an Hanglagen, talseits/bergseits,
  Freilegung auf halben Gebäudeumfang beschränkt) wortgleich — daraus die vollständigen
  Abs. 1-5 (inkl. Grenzbau Abs. 2, Gebäudelängen-Überschreitung Abs. 3) neu in
  [[zonenkonformitaet]] ergänzt.
- **Näherbaurecht NBR2008** (`251121 NBR2008.pdf`, Raphaels eigene Kurzfassung, InDesign-
  Layout, Echo-Schutz-Klasse «authentisch», nicht im Claude-Datumsschema): Kernaussage «das
  Näherbaurecht ist objektbezogen, nicht generell» ist rechtsdogmatisch **bestätigt** — Art.
  738 ZGB (Buch Bd 2 Kap. 22.9.3, S. 1534: Grundbucheintrag primär massgebend) trägt genau
  diese Auslegung und war bislang **nicht** in [[abstaende-und-hoehen]] verankert, jetzt
  ergänzt. **Eine Zahl im Dokument liess sich dagegen nicht verifizieren:** die Aussage
  «Vordach > 1,0 m Tiefe ist abstandspflichtig gemäss kantonaler Praxis (ABV)» — weder § 260
  Abs. 3 PBG (2 m Tiefe) noch § 27 Abs. 1 ABV (1,3 m, aber Höhe für Fassadenlängen-Anrechnung,
  nicht Tiefe für Abstandsprivileg) stützen den Wert 1,0 m. **Nicht in die KB übernommen**,
  im Wiki als offene Diskrepanz vermerkt.
- **Kein neuer `raw/`-Volltext nötig** (alle Screenshot-Inhalte bereits im Bestand oder aus
  bereits vorhandenem Raw belegbar). 2 Wiki-Artikel geschärft
  ([[zonenkonformitaet]] neue Sektion, [[abstaende-und-hoehen]] zwei Ergänzungen). Report
  `outputs/2026-08-23_buch-run77.md`.

### T7 — Archiv-Sichtung (Run 78, 23.08.2026)

- **VSS NORM (2 Dateien):** Projektplan-PDF ist reine Projektzeichnung, kein Ingest. Das
  Merkblatt zu Formular Z15 erwies sich als **Kanton-Schwyz-Dokument** (nicht ZH) —
  fehlabgelegt im Thalwiler Ordner, aber verallgemeinerbares SZ-Recht: neuer Wiki-Artikel
  [[strassenabstand-zufahrten-vorteilsabgabe-sz]] + neuer `raw/`-Beleg.
- **Merkblätter Konstruktion (7 Dateien):** stichprobenweise geprüft (ein Merkblatt
  vollständig gelesen) — reine suissetec-Konstruktionsdetails (Fassadenanschluss/Geländer/
  Flachdachdurchdringung/Abdichtung), kein Baurecht. Kein Ingest; Kandidat für eine
  allfällige KB `wissen/bauprodukte`, ausserhalb dieses Laufs.
- **Lärmschutz (8 Dateien):** GIS-ZH-Lärmübersicht (projektspezifische Karte, Legende
  generisch übernommen), amtliches Zusatzformular «Lärmsituation und Lärmschutz» (FALS) und
  Formular S (SIA-181-Projektkontrolle) vollständig gelesen — Formularstruktur ergänzt
  [[laermschutz-und-nichtionisierende-strahlung]] (bereits `established`, reine Ergänzung).
  Formular S bestätigt SIA 181:**2020** als ZH-Vollzugsfassung.
- **Naturgefahren (3 Screenshots):** stammen aus einem VKF-BSM-Solaranlagen-Leitfaden
  (Wind/Hagel/Schneedruck/Dachlawinen bei PV) — inhaltlich PV/Energie, nicht Baurecht. Kein
  Ingest, Routing-Hinweis KB `wissen/energie`.
- **Brandschutz (17 Dateien):** wie in der Queue vorgesehen zum Skill `brandschutz` geroutet,
  nicht destilliert. Datierung März 2025 (vor Hub-Ära) spricht für echte Büro-Arbeitsprodukte,
  nicht für Claude-Erzeugnisse — Klassifikation nicht abschliessend geprüft, ausserhalb des
  Auftrags dieses Laufs.
- **PV Anlage (22 Dateien):** durchweg PV/Solar-Fachthema, kein Baurecht. Kein Ingest,
  Routing-Hinweis KB `wissen/energie` (dort ggf. bereits teilweise abgedeckt, nicht geprüft).
- Report `outputs/2026-08-23_buch-run78.md`.

### T8 — Gegenlesen der Claude-Factsheets (Run 79, 23.08.2026) — Queue vollständig abgearbeitet

- **Gartenmauern-Factsheet (`260703-Baurecht-Gartenmauern-Thalwil`): ein schwerwiegender
  Befund.** Abschnitt 2 präsentiert die seit 01.06.2020 aufgehobene StrAV im Fliesstext
  unbedingt als geltendes Recht für Thalwil (sechs Einzelbestimmungen im Präsens zitiert);
  der einzige Vorbehalt steht versteckt in der Quellenzeile. Gleiche Fehlerfamilie wie
  Run 73/Fehler 1. Sekundärbefund: «Sichtbereiche … Höhe auf 0.80 m begrenzt» verkürzt die
  materiell andere Freihalte-Pflicht des heute geltenden § 23 VErV. Positiv: die
  Kurveninnenseiten-Regel ist inhaltlich richtig (Ermessensentscheid statt starre Grenze),
  nur falsch zugeordnet. Grundgrenzabstand 5,00 m (Art. 3 BZO, W3) CONFIRMED.
- **Besondere-Gebäude-Factsheet (`260703-Baurecht-Besondere-Gebaeude-Thalwil`): kein eigener
  Fehler, aber vererbt die Klammer-Falle.** Zitiert Art. 24 Abs. 3 BZO Thalwil (Klammer-Falle,
  siehe T4/Run 74) wortgleich und unkommentiert — zum Erstellungsdatum 03.07.2026 war der
  Befund noch nicht bekannt. Alle übrigen Prüfpunkte (§ 49 Abs. 3 PBG, § 273 PBG, Art. 24
  Abs. 1/2, Art. 14/15/17/17e/19/30 BZO, ABV §§ 13/25/28, § 290 PBG) CONFIRMED wortgleich
  gegen den amtlichen Bestand. Eine Methodik-Lehre: die erste OCR-Extraktion von Art. 14 im
  Rohdokument war unvollständig (fehlte Abs. 4) — erst die zweite, vollständigere Extraktion
  im selben Rohdokument bestätigte das Factsheet-Zitat. Ohne zweiten Durchlauf wäre das ein
  falscher Fehlerbefund gewesen.
- **Offen gelassen, nicht als Fehler gewertet:** die Übertragung der 10°-Schrägdach-Schwelle
  (BEZ 1996 Nr. 30, im Standardwerk nur für die Firsthöhen-Berechnung § 281 PBG belegt) auf
  die 4-m/5-m-Grenze der besonderen Gebäude — neue offene Frage in `wiki/QUESTIONS.md`.
- **Kein Ingest (Echo-Schutz):** beide Factsheets bleiben Prüfmaterial. Ergänzt wurde nur der
  bereits `established` Artikel [[gebaeudearten-und-abstandssystem]] um einen Warn-Satz, dass
  sich die Klammer-Falle bereits verbreitet hat.
- Report `outputs/2026-08-23_buch-run79.md`.

### T9 — Restdateien (Run 87, 23.08.2026)

- **Anlass:** Der Ordner zählt heute 234 Dateien statt der 243 aus dem Queue-Kopf (angelegt
  03.08.2026) — fünf Dateien/Screenshots liegen in Ordnern, die in keiner T1-T8-Zeile
  auftauchen (`13 Verfügungen/`, `14 Liegenschaftsentwaesserung/`, ein zweiter Fund im bereits
  in T6 teilweise ausgewerteten `Anrechenbares Untergeschoss Abgrabunge/`, zwei lose Dateien
  auf oberster Ebene). Vor dem Abschluss der Queue-Sichtung geprüft, ob dort noch
  Verallgemeinerbares liegt.
- **`Anrechenbares Untergeschoss Abgrabunge/Hoi Stefan.docx` — der wertvollste Fund, echter
  Wiki-Zuwachs.** Raphaels eigene, undatierte Bauherren-Erklärung (authentisch, Echo-Schutz-
  Klasse Gold, kein Claude-Datumsschema) an Stefan Tschopp (Du-Kontakt 2414 Thalwil): «Zu viel
  Abgraben macht aus einem Untergeschoss ein Vollgeschoss.» Die Kausalkette war im Wiki bereits
  in Einzelteilen vorhanden (§ 293 PBG Freilegungsgrenze, § 276 PBG Anrechenbarkeits-Zählung,
  Art. 6 Abs. 5 BZO Thalwil Freilegungsflächen-Deckel), aber nie explizit verknüpft. Alle drei
  Fundstellen einzeln gegen `raw/260607_amtlich_zh_pbg.md` und
  `raw/260607_amtlich_zh_bzo-thalwil.md` wortlautverifiziert (§ 276 Abs. 1/2: «Als Geschosse
  zählen Voll-, Dach-, Attika- und Untergeschosse … zusammengerechnet dürfen sie jedoch die
  erlaubte Zahl der Vollgeschosse nicht überschreiten»). Neu in [[abstaende-und-hoehen]] als
  Sektion «Praxisfolge einer zu weiten Abgrabung» ergänzt.
- **`IMG_0316.jpeg`** (Screenshot Art. 24/25 BZO Thalwil): CONFIRMED, wortgleich mit
  `raw/260607_amtlich_zh_bzo-thalwil.md` Z. 1608-1645. Bereits vollständig im Bestand, kein
  neuer Fund, kein Edit.
- **`_BZO Revision Abstimmung.docx`** (reiner Link auf `thalwil.ch/medienmitteilungen/2904355`):
  abgerufen, bestätigt exakt die bereits in [[negative-vorwirkung-und-bzo-revision]] geführten
  Werte (14.06.2026, 78,81 % Ja, 4'546:1'222 Stimmen). Kein neuer Fund.
- **`13 Verfügungen/WDV_700.211_Waermedaemmvorschriften_8.6.22_oBgr.pdf`:** kantonale
  Wärmedämmvorschriften — Energiethema, nicht Baurecht i.e.S. Trotz Ordnername («Verfügungen»,
  laut Abgrenzung projektgebunden) ist der Inhalt eine generische kantonale Vorschrift, keine
  projektspezifische Verfügung — gleiche Fehlablage-Familie wie der SZ-Formular-Fund in T7. Kein
  Ingest in `baurecht`; Routing-Hinweis für die KB `wissen/energie` gesetzt (dort nicht geprüft,
  ausserhalb dieses Laufs).
- **`14 Liegenschaftsentwaesserung/GEO Geomorphologische Landeskarte.pdf`:** geologische
  Übersichtskarte, kein baurechtlicher Inhalt. Kein Ingest, keine Routing-Empfehlung (reine
  Grundlagenkarte ohne destillierbare Aussage).
- **Kein neuer `raw/`-Volltext.** Ein bestehender Artikel geschärft ([[abstaende-und-hoehen]]).
  Bericht `outputs/2026-08-23_buch-run87.md`.

**Damit ist die Reglemente-Queue 2414 Thalwil (T1-T9) vollständig abgearbeitet**, inklusive der
erst nachträglich im Ordner aufgetauchten Restdateien.

**Nachträge nach Queue-Abschluss (bleiben ausserhalb von T1-T9, gleiche Quelle/Themenfeld):**
Run 88 (Rechtsprechungs-Register § 238 Abs. 1 PBG) und Run 89 (§§ 10-12 StrAV ersatzlos
entfallen) haben je einen aus dieser Queue offen gelassenen Punkt in
[[umgebungsgestaltung-und-einfriedungen]] nachträglich geschlossen — siehe CHANGELOG und
`outputs/2026-08-23_buch-run88.md` / `outputs/2026-08-23_buch-run89.md`.

**Fortsetzung ab Run 90 (ausserhalb dieser Queue, gleiche KB):** seit der Queue-Abarbeitung läuft
die von den Läufen selbst vorgeschlagene Modell-D-Re-Verifikationskette der `established`-Artikel
nach ältestem `verifiziert`-Datum (Runs 90-100, siehe CHANGELOG). Run 97 (2026-08-23) hat
[[raumplanung-und-gestaltung]] re-verifiziert — erstmals die Bundesrechts-Zitate (RPG/RPV/BV)
frisch gegen `fedlex.data.admin.ch` geprüft, 2 Korrekturen (15-Jahre-Regel korrekt Art. 15 Abs. 1
RPG allein zugeordnet; Art. 15 Abs. 4 lit. e ergänzt). Report `outputs/2026-08-23_buch-run97.md`.
Run 98 hat statt eines weiteren Re-Verifikationslaufs den seit Run 68 offenen Punkt zum
ZH-Mehrwertausgleich (MAG) in [[enteignung-und-entschaedigung]] geschlossen — MAG erstmals als
`raw/`-Volltext beschafft, 2 echte Korrekturen (kant. Satz fix 20 % statt Entwurfs-5 %, kommunaler
Höchstsatz 40 % statt Entwurfs-15 %). Report `outputs/2026-08-23_buch-run98.md`. Run 99 hat die
Kette fortgesetzt: [[naturschutz-und-denkmalschutz]] re-verifiziert — gleiche Lücke wie bei
Run 97 (Bundesrechts-Zitate, hier Art. 78 BV + neun NHG-Artikel + Art. 17 RPG, noch nie am
Wortlaut geprüft), diesmal **CONFIRMED wortgleich, 0 Korrekturen**. Report
`outputs/2026-08-23_buch-run99.md`. Run 100 hat [[bauausfuehrung-und-baukontrolle]] re-verifiziert
— erstmals die dort zitierten ZGB-/BV-/USG-/LSV-Artikel gegen den amtlichen Wortlaut geprüft:
Art. 8/679/684/836 ZGB und Art. 29a BV **CONFIRMED wortgleich**; Art. 32bbis USG inhaltlich
CONFIRMED, aber präzisiert (Rückforderungsanspruch seit 1.11.2021 verwirkt); der Beleg
«Art. 38 Abs. 2 USG» für das Vorsorgeprinzip war **falsch** und wurde auf Art. 11 Abs. 2 USG
korrigiert (Art. 6 LSV bleibt für die Baulärm-Richtlinien-Erlasskompetenz richtig). Report
`outputs/2026-08-23_buch-run100.md`. Run 101 hat [[widerrechtliche-bauten-und-sanktionen]]
re-verifiziert — erstmals alle 12 zitierten Bundesrechts-Artikel (RPG/BV/StGB/OR/ZGB/StPO) gegen
den amtlichen Wortlaut geprüft: 11/12 **CONFIRMED wortgleich**. **1 echte Korrektur:** Art. 229
Abs. 1 StGB (Vorsatz) ist seit 1.7.2023 Freiheitsstrafe bis **5** statt 3 Jahre (3 Jahre gilt nur
für Abs. 2, fahrlässig). **1 substanzieller Neubefund:** Art. 25 Abs. 5 RPG kodifiziert seit
1.1.2026 die 30-Jahre-Verwirkung des Wiederherstellungsanspruchs erstmals bundesrechtlich, aber nur
für Bauvorhaben ausserhalb der Bauzonen — innerhalb bleibt es bei der bisherigen kantonalen
Praxis/Rechtsprechung (BGer 1C_726/2013). Report `outputs/2026-08-23_buch-run101.md`. Run 102 hat
Run 101s Empfehlung ([[nebenbestimmungen-und-reverse]]) zuerst widerlegt — der Artikel ist bereits
seit Buch-Run 67 (27.07.2026) vollständig inkl. Art. 962 ZGB/Art. 164 GBV verifiziert — und statt
dessen [[rechtsschutz-und-rechtsmittelverfahren]] gewählt (11 Bundesrechts-Zitate über 6 Erlasse
BV/BGG/RPG/NHG/EMRK/ZPO, bislang keines geprüft). **10/11 CONFIRMED wortgleich, 1 Korrektur:**
Art. 103 BGG trägt die bisherige Aussage «Bund: keine, ausser Antrag» nicht selbst — die
Antrags-Möglichkeit für eine vorsorgliche Massnahme steht in **Art. 104 BGG**. Report
`outputs/2026-08-23_buch-run102.md`. Run 103 hat den von Run 102 benannten letzten Kandidaten
abgearbeitet: [[ausnahmebewilligung-und-bestandesschutz]] re-verifiziert, alle vier
Bundesrechts-Zitate (Art. 24c RPG, Art. 41c GSchV, Art. 26 BV, Art. 8 ZGB) gegen frische
fedlex-Volltexte geprüft — **4/4 CONFIRMED, 0 Korrekturen**. Nebenbefund: Art. 24c Abs. 1 RPG
wurde per 1.1.2026 materiell revidiert (neuer Titel «Altrechtliche Bauten und Anlagen»), im
Wiki als Fassungsstand-Hinweis vermerkt, ohne den (für diesen Artikel nur abgrenzenden) Verweis
im Detail nachzuvollziehen. Report `outputs/2026-08-23_buch-run103.md`. **Damit ist die
Re-Verifikationskette (Runs 90-103) am Bundesrechts-Kriterium abgeschlossen** — kein Artikel der
Kette hat mehr ein ungeprüftes Bundesrechts-Zitat offen. **Nächster Schritt für einen künftigen
Lauf:** ausserhalb dieser Kette weiterarbeiten (neue KB-Lücken, Health-Check, oder eine zweite
Re-Verifikationsrunde nach Ablauf der `verifiziert`-Daten der acht re-verifizierten Artikel).

**Run 104 (2026-08-23, ausserhalb T1-T9 und ausserhalb der Bundesrechts-Kette):** Reglemente-Queue
und Re-Verifikationskette laut eigenen Abschlussvermerken vollständig; stattdessen die seit
Wissens-Chef Run 21 (03.08.2026) in `wiki/QUESTIONS.md` offene Rest-Frage zu BEZ 2019 Nr. 5
bearbeitet — Entscheid (BRGE III Nr. 0170/2018) erstmals im Volltext gelesen (Baurekursgericht-ZH-
Entscheiddatenbank, Rubrik «Absturzsicherungen», dort einziger Treffer): ein § 358-PBG-Fall
(baupolizeiliche Kontrolle ausserhalb eines Baugesuchs), § 357 PBG nirgends zitiert, 15-%-Schwelle
der Stadt-Zürcher Richtlinie im Entscheid nicht erwähnt — damit weder bestätigt noch verworfen.
Neuer `raw/260823_amtlich_zh_brge-iii-0170-2018_bez-2019-nr5.md`, eingearbeitet in
[[ausnahmebewilligung-und-bestandesschutz]]. Report `outputs/2026-08-23_buch-run104.md`.
**Nächster Schritt:** keine offene Frage mehr aus der Thalwil-Queue oder der Bundesrechts-Kette;
frei für Health-Check, neue KB-Lücken aus `QUESTIONS.md`, oder eine zweite Re-Verifikationsrunde.

**Run 105 (2026-08-24, ausserhalb T1-T9):** Queue-Status geprüft und bestätigt (weiterhin
vollständig). Als Option 1 aus Run 104 `wiki/QUESTIONS.md` systematisch gesichtet: drei Einträge
waren bereits inhaltlich gelöst, aber nie als geschlossen nachgetragen (Kap. 15.13 Fassungsstand
nPBG/nABV, LSV Art. 40/Anhang 3-4, Healthcare-Coverage teilaktualisiert) — reine
Bookkeeping-Pflege, kein neuer Fachinhalt. Report `outputs/2026-08-24_buch-run105.md`.
**Nächster Schritt:** Anhang 3 LRV Ziff. 4 ff. (kleine echte Restlücke) oder ein Brücken-Artikel
«Bauen im Betrieb (Healthcare)» bei Praxisanlass; sonst weiterhin Health-Check oder eine zweite
Re-Verifikationsrunde.

**Run 106 (2026-08-24, ausserhalb T1-T9):** Die von Run 105 benannte Restlücke bearbeitet: Anhang 3
LRV Ziff. 4 ff. («Detailanforderungen an einzelne Feuerungstypen, Prüfnormen für
Herstellerkonformität», seit 13.07.2026/Buch-Run 33 als OFFEN geführt) erstmals vollständig gelesen
(Fedlex-PDF, Stand 1.1.2026). **Die Prämisse der offenen Frage war falsch:** Ziff. 4 ff. enthält
keine Herstellerkonformitäts-Regelung, sondern reine Emissionsgrenzwert-Tabellen je Brennstoff
(4 Ölfeuerungen, 5 feste Brennstoffe, 6 Gasfeuerungen). Die einzige Konformitäts-Bestimmung im
ganzen Anhang (Ziffer 524) ist eng auf serienmässig hergestellte Einzelraum-Feststofffeuerungen
begrenzt und stützt sich auf Art. 7 EnEV, nicht auf LRV-eigenes Recht — für Öl-/Gasfeuerungen
bleibt die bereits gefundene Antwort (periodische Feuerungskontrolle Art. 13 Abs. 3 LRV) die
einzige Qualitätssicherung. Eingearbeitet in `raw/260713_amtlich_ch_lrv.md`,
`buecher/band-2/17-haustechnische-anlagen-teil3.md`, `wiki/QUESTIONS.md`. Kein neuer Wiki-Artikel.
Report `outputs/2026-08-24_buch-run106.md`. **Damit ist auch die von Run 33 offen gelassene
LRV-Restlücke geschlossen.** **Nächster Schritt:** kein Fachpunkt mehr aus der Thalwil-Queue offen;
frei für Health-Check-Aktionen (Phase 2, Umlaut-Ersatzschreibung) oder eine zweite
Re-Verifikationsrunde.

**Run 107 (2026-08-24, ausserhalb T1-T9):** Health-Check-Phase-2-Aktion Umlaut-Ersatzschreibung
begonnen. Der Health-Check-Befund «~340 Treffer in 23/26 Artikeln» zählte blind; nach Maskierung
von Wiki-Links, Backtick-Pfaden und `raw/`/`wissen/`/`buecher/`-Referenzen (die als Bezeichner
absichtlich ASCII bleiben, Rule `dateinamen-konvention`) blieben **~20 echte Fliesstext-Stellen in
8 Artikeln**, alle einzeln kontextgeprüft und korrigiert. Die B4/F2-Befunde (Frontmatter, defekte
Backlinks, dekorative ✅) waren beim Nachprüfen bereits anderweitig behoben —
`wiki-konsistenz.sh baurecht` meldet 0 Befunde. Ein Wort («zaegig») nicht geraten, sondern als
offene Frage vermerkt. Report `outputs/2026-08-24_buch-run107.md`. **Nächster Schritt:** «zaegig»
am zitierten Entscheid verifizieren, sonst Health-Check-Turnus oder zweite Re-Verifikationsrunde.

**Run 108 (2026-08-24, ausserhalb T1-T9):** Die von Run 107 offen gelassene Frage bearbeitet:
VB.2014.00026 (VGr ZH, 22.05.2014, BEZ 2014 Nr. 46) erstmals im Volltext gelesen
(`entscheidsuche.ch`, analog zur BRGE-Beschaffungsmethode aus Run 104). **Die Prämisse war
richtig, das Wort war falsch:** «zaegig» kommt im amtlichen Text nicht vor; E. 3.1.2 lautet
wörtlich «derart langsam gearbeitet wird, dass die Gesamtdauer der Bauarbeiten in keinem
vernünftigen Verhältnis zum Bauvolumen bzw. der Bauaufgabe mehr steht» — weder «zögerlich» noch
«schleppend» (beide in Run 107 als Vermutung diskutiert) treffen zu. Neuer
`raw/260824_amtlich_zh_vb-2014-00026.md` (Regeste + E. 3.1.2/3.1.3 wörtlich), Korrektur in
[[bauausfuehrung-und-baukontrolle]] samt Frontmatter/`verifiziert`, QUESTIONS.md-Nachtrag über
dem Run-107-Eintrag (dieser bleibt unverändert stehen). Report `outputs/2026-08-24_buch-run108.md`.
**Damit ist auch die von Run 107 offen gelassene Restfrage geschlossen.** **Nächster Schritt:**
kein Fachpunkt mehr aus der Thalwil-Queue oder ihren Nachträgen offen; frei für den regulären
Health-Check-Turnus, eine zweite Re-Verifikationsrunde, oder eine neue Lücke aus `QUESTIONS.md`.

**Run 109 (2026-08-24, ausserhalb T1-T9):** `wiki/QUESTIONS.md` systematisch nach Run-108-Option 4
gesichtet (analog Run 105). Der Block «2026-07-08, aus Buch-Run 23: Kap. 4 Natur-/Heimatschutz»
führte drei `needs-verification`-Flags (KNHV-Paragraphen §§ 2a/4/6/7/8/9/10/12/13-32; PBG-Paragraphen
§§ 203-217/50/76/238/338b + Bundesrecht Art. 78 BV/NHG/Art. 17 RPG; VRG-Paragraphen Kap. 9 Teil 2
+ § 338/339 PBG), die inhaltlich bereits durch die Läufe 31/33/39/44/61/64/99/102 geschlossen waren
— nie als erledigt nachgetragen. Geprüft und bestätigt: KNHV §§ 10/12 CONFIRMED gegen
`raw/260714_amtlich_zh_knhv.md` (Run 61); alle genannten PBG-Paragraphen CONFIRMED gegen
`raw/260607_amtlich_zh_pbg.md`; die Bundesrechts-Zitate (Art. 78 Abs. 1 BV, neun NHG-Artikel,
Art. 17 RPG) CONFIRMED gegen frische fedlex-Volltexte (Run 99); VRG-Paragraphen inkl. Fassungsstand
§ 26b/§ 339 PBG und die Gerichtsgebühr-Bandbreite Fr. 500-50'000 (§ 338 Abs. 2 PBG) CONFIRMED
(Run 44/64/102). Alle drei Flags in `wiki/QUESTIONS.md` mit Fundstellenverweis geschlossen — reine
Bookkeeping-Pflege, kein neuer Fachbefund. Report `outputs/2026-08-24_buch-run109.md`. **Nächster
Schritt:** kein Fachpunkt mehr aus der Thalwil-Queue oder ihren bisher gesichteten Nachträgen offen;
ältere `QUESTIONS.md`-Blöcke (ab ca. Zeile 2000, Kap. 7/8/12/16 T2/T3) sind noch nicht auf denselben
Stale-Flag-Befund geprüft, sonst regulärer Health-Check-Turnus oder zweite Re-Verifikationsrunde.

**Run 110 (2026-08-24, ausserhalb T1-T9):** Stale-Flag-Sweep aus Run 109 fortgesetzt — die beiden
nächstältesten Blöcke «Kap. 7 Teil 1» (2026-06-19) und «Kap. 7 Teil 2» (2026-06-21) geprüft, vier
`needs-verification`-Flags. **Zwei waren stale:** § 322/§ 324/§ 328 PBG bereits CONFIRMED
(`verifiziert`-Feld [[baurechtlicher-vorentscheid-und-voranfrage]] Run 66/96,
[[bauausfuehrung-und-baukontrolle]] Run 30); § 326 PBG + Art. 962 ZGB/Art. 164 GBV bereits CONFIRMED
([[nebenbestimmungen-und-reverse]] Run 67) — nur der Zeiger in `QUESTIONS.md` war veraltet. **Zwei
waren echte, bisher ungeprüfte Lücken** und wurden neu geschlossen: §§ 5a/13/14 VRG frisch von
zhlex bezogen (weiterhin Nachtrag 133) — § 5a VRG (Ausstand) war im Wiki bis dahin gar nicht
geführt, § 14 VRG präzisiert die bisherige «Solidarhaftung»-Vermutung zur amtlich richtigen Regel
(subsidiäre Haftung für das Ganze, Solidarhaftung nur ausnahmsweise); Art. 138 ZPO (Zustellfiktion)
+ Art. 49 BGG (Rechtsmittelbelehrung) erstmals von Fedlex bezogen (neue Primärquellen
`raw/260824_amtlich_ch_zpo-art138.md`, `raw/260824_amtlich_ch_bgg-art49.md`; die korrekte BGG-ELI
2006/218 liess sich erst per WebSearch finden, drei geratene ELI scheiterten an der JS-App-Hülle)
— beide CONFIRMED wortgleich; § 20 BVV (Gültigkeitsdauer-Definition) ebenfalls neu CONFIRMED. Neuer
Abschnitt 2b «Ausstand» in [[rechtsschutz-und-rechtsmittelverfahren]], neuer Abschnitt «Zustellung,
Rechtsmittelbelehrung, Gültigkeitsdauer der Bewilligung» in
[[baurechtlicher-vorentscheid-und-voranfrage]]. Report `outputs/2026-08-24_buch-run110.md`.
**Nächster Schritt:** Stale-Flag-Sweep fortsetzen an den nächstälteren Blöcken (Kap. 8/12/1/2/3/6,
`QUESTIONS.md` ab ca. Zeile 2060) — einige davon enthalten nach erster Durchsicht echte, weiterhin
offene Lücken (z.B. §§ 120/150/264/346 PBG in Kap. 12), nicht nur veraltete Zeiger; sonst regulärer
Health-Check-Turnus oder zweite Re-Verifikationsrunde.

**Run 111 (2026-08-24, ausserhalb T1-T9):** Stale-Flag-Sweep fortgesetzt — Block «2026-07-09, Kap. 8
T2/13 T2/16 T3» vollständig, Teile von «2026-06-22, Kap. 8» geprüft. **Kap. 16 T3 (§ 282/§ 284/§ 30
ABV/§ 28 ABV/§ 292/§ 293 PBG): komplett stale**, bereits seit Buch-Run 32/33 CONFIRMED. **Kap. 13 T2:
vier echte Neubefunde** — § 241 PBG (Ersatzzufahrt/Enteignung) CONFIRMED gegen
`raw/260607_amtlich_zh_pbg.md`; Art. 6 SVG, Art. 95-99 SSV (Strassenreklamen) und Art. 15 FrSV
(Neobiota) erstmals von Fedlex bezogen und CONFIRMED (neue Primärquellen
`raw/260824_amtlich_ch_svg-art6.md`, `raw/260824_amtlich_ch_ssv-art95-99.md`,
`raw/260824_amtlich_ch_frsv-art15.md`). **Echte Fassungsstand-Falle:** § 16 StrAV (fest 90/150/50 m)
ist nicht schlicht durch § 23 VErV ersetzt — § 23 trägt keine Masszahl, die Werte liegen in Anhang 3
(Fahrbahn, jetzt geschwindigkeitsabhängig, Tabelle in der Quelle formatierungsgestört, nicht
geraten) und Anhang 4 (Velowege, neigungsabhängig 30-50 m, sauber extrahiert) — Regimewechsel, nicht
nur Nummernwechsel. **Die «NEU Kap. 13 §§ 242/248»-Flag hatte eine falsche Prämisse:** § 242 PBG =
Fahrzeugabstellplätze, § 248 PBG = Spiel-/Ruheflächen (beide seit Run 70 established), nicht
Antennen/Camping — Aussenantennen stehen in § 309 Abs. 1 lit. l PBG, jetzt als vollständiger
Bewilligungspflicht-Katalog (lit. a-o) in [[baubewilligungsverfahren]] ergänzt. **Kap.-8-Block
teilweise:** § 239/§ 309 Abs. 1 lit. c CONFIRMED; **§ 12a BBV I war ein Suchfehler eines früheren
Laufs** (Fundstelle im Raw als «§ 12 a.» mit Leerzeichen erfasst), jetzt CONFIRMED — dabei eine
falsche Attribution korrigiert («Sanitäreinrichtungen → BBV II» stimmte nicht, BBV II kennt kein
§ 12a, beide Kriterien stehen im selben § 12a BBV I; § 24 BVV als echte Lücke ergänzt (elektronische
Protokollierung, qualifizierte Signatur). **Art. 3a ABV bleibt trotz Suche NICHT verifizierbar** —
im etablierten Artikel unverändert stehen gelassen (nicht ohne Gegenbeleg entfernt), als offene
Diskrepanz in `QUESTIONS.md` geführt. Geänderte Wiki-Artikel:
[[umgebungsgestaltung-und-einfriedungen]], [[baubewilligungsverfahren]],
[[bauausfuehrung-und-baukontrolle]]. Report `outputs/2026-08-24_buch-run111.md`.
**Nächster Schritt:** «16.9-Schluss» (S. 1230 f., kleine Buch-Restlücke, keine reine Zeiger-Prüfung),
§ 8 Abs. 2 IDG ZH, Art. 3a ABV (Alternativquelle prüfen); sonst Stale-Flag-Sweep an den restlichen
Blöcken (Kap. 12/1/2/3/6, `QUESTIONS.md` ab ca. Zeile 2140) fortsetzen — Kap. 12 enthält bekannte
echte Lücken (§§ 120/150/264/346 PBG bereits über [[baulinien-und-abstandslinien]] teilweise
mitverifiziert, gegenprüfen ob vollständig).

**Run 112 (2026-08-24, ausserhalb T1-T9):** Die drei kleinen Run-111-Restpunkte abgearbeitet, dazu
der Stale-Flag-Sweep über den kompletten «2026-06-26/06-30, Kap. 12»-Block. **16.9-Schluss: stale**
— Shots 607-622 (S. ~1208-1239) sind bereits vollständig als `[x]` erfasst, die 16.9-Auslegung
(§ 293 Abs. 1/4 PBG, VB.2016.00592) endet regulär im Buch, kein abgeschnittener Text; keine
Buch-Seitenlektüre nötig. **Art. 3a ABV: aufgelöst, keine reine Zeiger-Korrektur.** Die Fundstelle
war eine Abkürzungs-Verwechslung: die kantonale ABV kennt keinen Art. 3a, die zutreffende Norm ist
Bundesrecht — **Art. 3 Abs. 2 + Art. 82-86 BauAV** (SR 832.311.141), CONFIRMED gegen
fedlex.data.admin.ch (neue Primärquelle `raw/260824_amtlich_ch_bauav-art3-82-86.md`). Derselbe
Wiki-Artikel zitierte dieselbe Pflicht an anderer Stelle bereits korrekt, aber mit der
Vor-2021-Nummerierung «Art. 60a/60b BauAV» — beide Stellen harmonisiert. Die Datumsgenealogie «seit
1.6.2018» bleibt offen (Fedlex-Filestore lieferte für die alte ELI 2005/560 keinen Snapshot). **§ 8
Abs. 2 IDG ZH: nicht gelöst, aber ein Leck gefunden** — der zitierte Drohnen-Fall Horw ist ein
Luzerner, nicht Zürcher Fall (Kantonsgericht LU, 18.04.2018); «IDG ZH» als Fundstelle ist damit
mutmasslich falsch, bleibt tangential offen. **Kap.-12-Block: durchgängig stale**, kein neuer
Fachbefund — § 120/150/264/346 PBG bereits am 13.07.2026 volltextverifiziert (Zeiger seit über
einem Monat veraltet), Kap. 12 Teil 4 (S. 770-807) bereits am 2026-07-03 (Run 20) vollständig
distilliert («Kap. 12 VOLLSTAENDIG»), § 227 PBG/§ 12 BBV II bereits im Buchdestillat bzw. am
amtlichen BBV-II-Volltext bestätigt. **Echte Korrektur stattdessen bei «Stand EV»:** die vom Buch
als «EV» bezeichnete Erschliessungsverordnung ist dieselbe **Verkehrserschliessungsverordnung
(VErV)**, die am 03.08.2026 bereits für die StrAV-Frage beschafft, aber nie gegen diese
Zugangskategorien-Frage geprüft worden war — sie ersetzt neben der StrAV auch die Zugangsnormalien
(ZN) und die Verkehrssicherheitsverordnung (VSiV), alle drei per 01.06.2020 aufgehoben (Dispositiv
IV/V des Erlasses). Die Zugangskategorien-Schwellenwerte (Zufahrtsweg/-strasse 1/2,
Erschliessungsstrasse) stehen in Anhang 1 VErV, freigegeben über § 10 Abs. 3/4 VErV — nicht in
§§ 11/12 VErV, die nur die nachgelagerte Feinerschliessungsplanung regeln; zudem war der WE-Wert
für Zufahrtsstrasse 1 falsch beziffert (150/300 WE statt 100/300 WE). Geänderte Wiki-Artikel:
[[baureife-und-erschliessung]], [[bauausfuehrung-und-baukontrolle]]. Report
`outputs/2026-08-24_buch-run112.md`.
**Nächster Schritt:** verbleibende Stale-Flag-Blöcke «2026-06-30, Kap. 1/2 T1/12 T3» und
«2026-07-02, Kap. 2 T3/3 T1/6 T2» (`QUESTIONS.md` ab ca. Zeile 2213) prüfen; Datumsgenealogie
Art. 3a ABV → Art. 60a/60b BauAV (Teilrevision vor 2021) bei Gelegenheit nachrecherchieren.

**Run 113 (2026-08-24, ausserhalb T1-T9):** Stale-Flag-Block «2026-06-30, Kap. 1/Kap. 2 T1/Kap. 12
T3» vollständig abgearbeitet, alle drei Flags geschlossen. **«§ 935» als Arealüberbauungsbonus war
kein OCR-Lesefehler**, sondern **§ 70 PBG** — seit 1.2.1992 aufgehoben (G vom 1.9.1991, OS 51, 817),
CONFIRMED gegen `raw/260607_amtlich_zh_pbg.md` Z. 793; der Bonus wird seither ausschliesslich
kommunal über die BZO geregelt (§ 69 PBG i.V.m. § 72 PBG), kein kantonaler Fixwert mehr. **§§ 8a/9-13
EnerG als zusammenhängender Block war eine falsche Prämisse:** frisch von zhlex bezogener Volltext
(§§ 7-8e EnerG, additiv in `raw/260712_amtlich_zh_energ.md` nachgetragen) zeigt, dass §§ 8a-8e EnerG
den kantonalen Vollzug des Stromversorgungsgesetzes regeln (Netzgebiets-Zuteilung, **Anschlussrecht/
-pflicht § 8c**, Leistungsaufträge, Tarifangleichung, Rechtsschutz) — eine andere Materie als die
Bauenergiesparmassnahmen §§ 9 ff.; § 8 EnerG selbst ist seit 1.6.2022 aufgehoben. § 8c EnerG neu als
tragende Norm für die Anschlusspflicht ans Elektrizitätsnetz in [[baureife-und-erschliessung]]
ergänzt. **PBG-Titelgliederung (Kap. 1) komplett CONFIRMED:** alle sieben Titelgrenzen direkt am
amtlichen Volltext gelesen, Buchtabelle (I §§1-7 · II §§8-202 · III §§203-217 · IV §§218-328 ·
V §§329-339b · VI §§340-341 · VII §§342-361) war bereits wortgleich richtig, keine Korrektur nötig.
**Kap.-12-T3-Restpunkte** (§ 237 Abs. 4 PBG, § 16 FeuerwehrV, §§ 109-115 LG, Art. 694 ZGB, Art.
10/11/17 GSchG, § 8 KGSchV) waren bereits durch Run 71/86/93 in [[baureife-und-erschliessung]]
CONFIRMED — nur der Zeiger in `QUESTIONS.md` war veraltet; § 27/§ 39 WWG neu als ohne praktische
Relevanz geschlossen (WWG per 1.6.2026 aufgehoben, Substanz liegt in §§ 93/100 WsG). Geänderte
Wiki-Artikel: [[raumplanung-und-gestaltung]], [[baureife-und-erschliessung]]. Report
`outputs/2026-08-24_buch-run113.md`.
**Nächster Schritt:** Stale-Flag-Block «2026-07-02, Kap. 2 T3/3 T1/6 T2» (`QUESTIONS.md` ab ca.
Zeile 2282) — enthält neben reinen Stale-Flag-Checks auch die noch nicht distillierte «Kap. 3 Teil 2»
(Grenzbereinigung/Gebietssanierung/Landumlegung/Güterzusammenlegung, echte Lesearbeit).

**Run 114 (2026-08-24, ausserhalb T1-T9):** Stale-Flag-Block «2026-07-02, Kap. 2 T3/3 T1/6 T2»
vollständig abgearbeitet, alle fünf Flags geschlossen — entgegen der Run-113-Einschätzung war
**keine** echte Lesearbeit mehr nötig. Die als «noch nicht distilliert» geführte **Kap. 3 Teil 2**
(Grenzbereinigung/Gebietssanierung/Landumlegung/Güterzusammenlegung) war stale: `buecher/band-1/
03-quartierplan-landumlegung-teil2.md` (S. 240-265, `status: established`) deckt sie bereits seit
14.07.2026 vollständig ab, nur der Zeiger im QUESTIONS.md war seither nie nachgezogen worden — die
Distillation lag am selben Tag wie Run 44 (§ 160a/§ 160b/§ 81/§ 129 PBG daraus). Auch die drei
needs-verification-Listen (Kap. 3 T1, Kap. 2 T3, Kap. 6 T2) waren durchweg bereits durch Run 36/37/
39/40/43/44 (13./14.07.2026, Modell-D-Volltextabgleich) CONFIRMED und in [[raumplanung-und-gestaltung]],
[[baureife-und-erschliessung]], [[baulinien-und-abstandslinien]] und [[baubewilligungsverfahren]]
belegt — keine inhaltliche Wiki-Änderung nötig, reine Zeiger-Bereinigung. **Einzige echte, weiterhin
offene Lücke: `RRB 262/2010`** (Gestaltungsgrundsätze Staatsstrassen), Beschluss-Nummer im
Buch-Reader schwer lesbar, kein amtliches ZH-RRB-Archiv 2010 im Hub verfügbar — Flag bleibt
`speculative`. Report `outputs/2026-08-24_buch-run114.md`.

**Nächster Schritt:** Stale-Flag-Block «Health-Check 2026-06-02» (`QUESTIONS.md` Zeile ~2326) —
zwei Punkte: Gebühren 1-3‰ ([[baubewilligungsverfahren]], Quelle/kommunale Gebührenordnung noch
zu hinterlegen) und BZO-Richtwert-Tabelle ([[zonenkonformitaet]], Einzelwerte gegen aktuelle BZO
prüfen); ein dritter Punkt (Waldabstand-Ausnahmen) war schon 2026-06-11 geklärt.

## Arbeitsregeln je Batch

1. **Fassungsstand zuerst.** Kommunales Recht altert wie kantonales. Vor jeder Übernahme
   klären: gilt der Artikel, und in welcher Fassung (alt / revBZO / negative Vorwirkung)?
   Die Leitplanke «Verweisnormen zweiteilig prüfen» (Run 71) gilt hier doppelt: BZO-Artikel
   verweisen oft auf PBG-Paragraphen, die ihrerseits gealtert sind.
2. **Alt- und revBZO nebeneinander führen**, nie ersetzen. Die negative Vorwirkung heisst,
   dass für laufende Verfahren **beide** Fassungen relevant sind — jeweils die strengere.
   Artikel-Nummern unterscheiden sich zwischen den Fassungen; Zitate immer mit «BZO» oder
   «revBZO» kennzeichnen.
   **Präzisierung 04.08.2026 (Wissens-Chef Run 25, verifiziert).** «Nebeneinander führen» heisst
   **nicht** pauschaler Doppelnachweis über alle Artikel. Vor wirkt nur, was in der Synopse
   «Fassung zur Negativen Vorwirkung» vom 05.09.2025 **grau markiert** ist, und die Markierung ist
   **absatz-, teils zellengenau, nicht artikelweise** (Buch-Run 72: 23 von 55 revBZO-Artikeln,
   Auswertung in [[negative-vorwirkung-und-bzo-revision]] Ziff. 5). Je Einzelbestimmung
   entscheiden, nicht je Artikel. Eine nicht markierte revBZO-Bestimmung als Massstab heranzuziehen
   ist unzulässige positive Vorwirkung (VB.2008.00044). **Und umgekehrt:** fällt eine kommunale
   Bestimmung weg, ist zu prüfen, ob **kantonales** Recht die Steuerung übernimmt, das ohnehin
   schon gilt. Musterfall Klein- und Anbauten: Art. 45 revBZO ist **nicht** markiert, es gilt
   Art. 24 Abs. 1 BZO (7 %) weiter, und die 50-m²-Grenze folgt aus **§ 2a Abs. 1 ABV**
   (kantonal in Kraft), nicht aus der revBZO. Belege und volle Auflösung:
   `outputs/2026-07-31_bzo-thalwil-besondere-gebaeude-art24-art45.md` (Korrekturvermerk
   04.08.2026) und `training/PROGRAMM.md` Ziff. 7.
3. **Screenshots sind Belege**, keine Volltexte: Fundstelle (Artikel, Seite) notieren, den
   Wortlaut aber am amtlichen Text verifizieren, wo einer beschaffbar ist.
4. **Gemeinde-Merkblätter sind Verwaltungsverordnungen** — sie binden die Behörde im Interesse
   der Rechtsgleichheit, sind für Private aber nicht direkt verbindlich
   ([[grundlagen-planungs-baurecht]], BGE 139 II 470). Diese Stufe im Wiki mitschreiben.
5. **Kein Projektgeheimnis in die KB:** Eigentümernamen, Kaufpreise, private Korrespondenz
   bleiben draussen. Parzellennummer und Zone sind öffentlich (OEREB) und dürfen bleiben.
