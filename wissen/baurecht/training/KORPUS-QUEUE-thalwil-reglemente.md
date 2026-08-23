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
| **T5** | **Einzelthemen** | `Kniestock/`, `Massgebendes Terrain/`, `Besonderes Gebäude/`, `Fahrzeugabstellplaetze/`, `Fensterflaechen/`, `Spiel und Ruheflaeche/`, `Baugespann/`, `Wohnungserhebung/` | je bestehender Wiki-Artikel | offen |
| **T6** | **PBG-Screenshots + Näherbaurecht** | `03 PBG Zuerich/` (Vordach § 260 Abs. 3/4, anrechenbares UG), `Näherbaurecht NBR2008/` | [[abstaende-und-hoehen]] (Näherbaurecht § 270 Abs. 3) | offen |
| **T7** | **Archiv-Sichtung** | `_Archiv/` (91 Dateien: VSS-Norm, Merkblätter Konstruktion, Lärmschutz, Naturgefahren, Brandschutz, PV) | Triage; Brandschutz → Skill `brandschutz`, Lärm → [[laermschutz-und-nichtionisierende-strahlung]] | offen |
| **T8** | **Gegenlesen der Claude-Factsheets** | die drei datierten Factsheets (siehe Echo-Schutz) | Fehlerbericht in `outputs/`, keine Aufnahme als Quelle | offen |

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
