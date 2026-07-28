# QUERBEZUEGE — Register der Cross-KB-Bezuege

Bekannte thematische Ueberschneidungen zwischen den KBs, mit Prueflauf, Befund und Status.
Neueste Pruefung zuoberst je Paar. Gefuehrt vom Wissens-Chef (`wissens-chef`).

## Rollen-/Fuehrungs-Matrix (wer ist fuehrend fuer WAS)

| Thema | Fuehrende KB (Wahrheit) | Zuliefernde KB (verweist dorthin) |
|---|---|---|
| Wald-/Gewaesserabstand, Baulinien, Zonenmasse, Verfahren (Recht) | **baurecht** | planungsgrundlagen (Geodatum/Beschaffung) |
| Geodatum/OEREB/Kataster/Vektorlinien | **planungsgrundlagen** | baurecht (verweist fuer Bezug) |
| Norm-Fundstellen SIA/VKF/VSS (Ziffer/Ausgabe/Kennwert) | **normen** | baurecht (nennt Norm, verweist auf Destillat) |
| Energie-Fachphysik / U-Werte / Grenzwerte / PV-Technologie | **energie** | planungsgrundlagen/energie-* |
| Energienachweis-Verfahren / EVEN / Formulare / Private Kontrolle | **planungsgrundlagen** (energie-*) | energie (verweist fuer Verfahren) |
| Grobkennwerte CHF/m3 GV (BKP 1-5, Wohnbau) | **grobkosten** | immobilienbewertung/realwert |
| Wuest-Ausbaustandard-Tabelle CHF/m2 HNF (Immobilien entwickeln) | **immobilienbewertung** | grobkosten (verweist) |
| Wuest-Kostenbenchmark-Referenz (Median/Quantile) | **skills/kostenschaetzung/referenzen** | grobkosten + immobilienbewertung |
| Spec-Methode (formales Geruest) | **spec** | twin (verweist als Evidenz) |
| Raphaels Arbeitsweise/Denken (Verhaltensevidenz) | **twin** | spec (verweist als Evidenz) |
| Zonenmasse/Nutzungsziffern (AZ/BMZ/UEZ/GrFZ) inkl. **Daemmungs-Kappung** | **baurecht** | energie (MuKEn-Modul 11 verweist dorthin) |
| MuKEn-Musterrecht (EnDK-Module, noch nicht kantonal umgesetzt) | **energie** | baurecht (verweist fuer den Muster-Stand) |
| Regenwasser: Recht/Verfahren (GSchG-Kaskade Art. 7 Abs. 2, Gewaesserraum-Festsetzung) | **planungsgrundlagen** | energie (verweist fuer die Rechtsgrundlage) |
| Regenwasser: Bewilligungsschwellen im Baugesuch (5:1, Bagatell 20 m², Adsorber) + Schwammstadt | **energie** | planungsgrundlagen (verweist fuer die aktuellen Schwellen) |
| Referenz-Architekten/-Projekte + Raumtypologien/Parti (wer/was liegt in der Bibliothek) | **architekten-synobsis** | entwurfs-referenzen (verweist per Katalog/Slug) |
| Entwurfs-Kennwerte je Bauaufgabe (HNF/GF, Programm, Entwurfsregeln, Parameter-Sets) | **entwurfs-referenzen** | architekten-synobsis (nennt die Abnehmer-KB) |
| Healthcare-Kostenkennwerte CHF/m3 GV + CHF je Pflegeplatz (belegte Realwerte) | **immobilienbewertung** (`realwert-sachwert`) | entwurfs-referenzen, machbarkeit, healthcare-wirtschaftlichkeit — **grobkosten fuehrt Healthcare NICHT** (untersagt seine m3-Werte dafuer ausdruecklich) |
| Kantonaler Energie-Erlassstand ZH (EnerG LS 730.1, BBV I §§ 47-48c) — Wortlaut, §§-Nummern, Fassungsstand/Nachtrag | **baurecht** (`raw/260712_amtlich_zh_energ.md`, `raw/260607_amtlich_zh_bbv1.md`) | energie + planungsgrundlagen (zitieren die raw-Dateien, schreiben den Wortlaut nicht fort) — NEU Run 16 |
| Grossverbraucherartikel/Zielvereinbarung — Vollzugswege (UZV/KZV/EVA), Behoerdenpraxis AWEL/AfU, Schwellen-Transfer auf Bauaufgaben, SZ-Energierecht (kEnG/kEnV) | **energie** (`grossverbraucherartikel-zielvereinbarung-zh-sz`) | planungsgrundlagen (Formularseite EN-141/BO), baurecht (Erlasswortlaut) — NEU Run 16 |
| Produkt-/Systemwissen nach BKP (Bauteilaufbauten, Hersteller-/Systemtypen, Verarbeitungs- und Bemusterungspraxis, historische Angebots-/Preisstände als Zeitdokument) | **bauprodukte** | normen (Norm-Fundstellen), grobkosten/immobilienbewertung (Kennwerte), projekt-lessons (Einzelfall) — NEU Run 19 (Erst-Pruefung der KB) |
| Norm-Fundstellen IN bauprodukte-Artikeln (SIA/VKF/SN EN — Ziffer, Ausgabe, Kennwert, Fassungsstand inkl. **Korrigenda**) | **normen** | bauprodukte verweist dorthin und schreibt Normwortlaut NICHT materiell fort (Rule `normen-referenz`) — NEU Run 19 |
| Preise/Kennwerte IN bauprodukte-Artikeln | **grobkosten** (BKP-Kennwerte) bzw. **immobilienbewertung** (Ausbaustandard) | bauprodukte fuehrt KEINE Kennwerte fuer Kalkulationen; historische Herstellerpreise nur als **datierter Zeitstand** und nie als heutiger Ansatz — NEU Run 19 |
| Projekt-Lessons: Beweiskette eines konkreten Einzelfalls (Herkunft einer Vorgabe, Fallwerte aus Unternehmerdoku) | **projekt-lessons** | normen (generische Norm-/VKF-Kennwerte), auflagebereinigung (Auflagen-Ziffer/Amt/Frist), grobkosten/immobilienbewertung (Kennwerte) — **projekt-lessons fuehrt KEINE generischen Kennwerte oder Normfundstellen**, nur den belegten Fall — NEU Run 16 (Erst-Pruefung) |

> **NEU Run 8 — zweites Struktur-Muster «Uebergabe verpufft im abgebenden KB»:** Ein Artikel erkennt
> korrekt, dass eine andere KB nachziehen muss, notiert den Flag aber NUR bei sich. Zwei Fundorte
> in einem Lauf: der Fassungs-Flag zur VKF-BRL 16-15 stand seit Run 52 in `planungsgrundlagen` und
> war in `normen` nie angekommen; die SIA-2048-Uebergabe stand in `energie` und war in `normen`
> nie angekommen (grep «2048»: 0 Treffer). **Regel daraus: Uebergaben gehoeren in die
> `wiki/QUESTIONS.md` der EMPFAENGER-KB**, nicht als Notiz ins abgebende Wiki. Ohne den Cross-KB-Lauf
> haette in beiden Faellen niemand die Bring-Schuld gesehen.
>
> **NEU Run 8 — «Fassungspflege ist der blinde Fleck der Destillate»:** Verifikationen pruefen gegen
> DIESELBE Datei, aus der destilliert wurde, und koennen eine juengere Fassung im Bestand strukturell
> nicht finden (Fall 16-15: Refuter-Notiz «keine Abweichung gefunden» vom 17.07., einen Tag spaeter
> ein seit 2021 ueberholter `established`-Kennwert). **Regel daraus: erst den Bestand nach juengeren
> Fassungen derselben Norm durchsuchen (Dateiname/Stempel), dann Werte gegenlesen.**
>
> **Wiederkehrendes Muster (3. Fundort, Run 6):** VKF-Wortlaut wird in `planungsgrundlagen`-Artikeln
> materiell fortgeschrieben statt aus `normen` gezogen — bisher `brandschutz-pl03-wegweiser` (Run 3),
> dessen §1a (Run 4), neu `energie-pv-eignung-typenwahl` §6b (Run 6). Jedes Mal nachtraeglich verlinkt;
> die Trims bleiben offen. **Strukturbefund fuer den Synergie-Orchestrator:** die Rule `normen-referenz`
> greift beim SCHREIBEN der planungsgrundlagen-Artikel nicht — sie wird erst im Cross-KB-Lauf
> nachtraeglich durchgesetzt. Analoges Muster bei `energie` (Run 6: SIA-180-Fundstellen aus
> Vollzugshilfen rekonstruiert, obwohl das Norm-Destillat 3 Tage aelter war).

## Gepruefte Paare

### baurecht ↔ planungsgrundlagen ↔ energie (Gegenlesung am NEUEN WsG-/WsV-Volltext) — geprueft 2026-07-28 (Run 19)
- **Anlass:** Die in Run 18 als P1 gemeldete Luecke ist eingeloest — `baurecht` hat mit Buch-Run 69
  `raw/260728_amtlich_zh_wsg.md` (WsG, LS 724.1, §§ 1-132) und `raw/260728_amtlich_zh_wsv.md`
  (WsV, LS 724.11, §§ 1-215) beschafft. Erstmals waren damit ALLE rund 60 WsG-/WsV-Fundstellen des
  Hubs am amtlichen Wortlaut pruefbar. Beide raw-Dateien auf Vollstaendigkeit geprueft: lueckenlos,
  Frontmatter-Fassungsstand deckt sich mit dem Textkoerper — kein Befund.
- **Am Volltext BESTAETIGT (kein Handlungsbedarf):** § 45 WsG (Gewaesserschutzbereiche UND
  Grundwasserschutzareale, OEREB 130/132) · § 46 WsG (Grundwasserschutzzonen) · § 48 Abs. 2 WsG
  (Waermenutzungsatlas) · § 74 Abs. 1 lit. b WsG · § 126 WsG (Aufhebung EG GSchG + WWG) · § 11 und
  § 183 lit. b WsV · § 92 WsV · § 213 WsV · § 44 Abs. 1 lit. a Ziff. 3 WsG. **EG-GSchG-Reste ohne
  Aufhebungsvermerk: keine mehr.** Der Sweep aus Run 17/18 ist damit sauber abgeschlossen.
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — Schwere hoch, 3 KBs betroffen):** Die
  grundeigentuemerverbindliche Festlegung des Gewaesserraums wurde hub-weit auf **§ 19 WsG**
  gestuetzt. Amtlich steht das Wort «grundeigentuemerverbindlich» woertlich und ausschliesslich in
  **§ 18 Abs. 1 WsG** (Randtitel «b. Festlegung»); **§ 19 WsG** heisst «c. Beruecksichtigung der
  baulichen Gegebenheiten in dicht ueberbauten Gebieten» und regelt die **Anpassung** — inhaltlich
  das Gegenteil. Betroffen war die Rechtsgrundlagen-Spalte von **OEREB-Thema 190**, also genau die
  Angabe, die aus `planungsgrundlagen` in Behoerdenschreiben ans AWEL wandert. Korrigiert in
  `baurecht/wiki/abstaende-und-hoehen.md`,
  `planungsgrundlagen/wiki/kartenportale-oereb-kataster-system-zh.md` (Tabellenzeile + Warnkasten)
  und `planungsgrundlagen/wiki/recht-norm-abstandsvorschriften-wald-gewaesser.md`. Zusaetzlich ist
  **§ 19 WsG neu als eigene Aussage** in `abstaende-und-hoehen` erfasst (Abs. 2 = der Hebel, wenn
  ein festgelegter Gewaesserraum die bauliche Nutzung erheblich einschraenkt) — er war im Hub
  nirgends als solcher gefuehrt, weil er mit der Festlegung verwechselt wurde.
- **Der Mechanismus dahinter — NEUES STRUKTURMUSTER, gewichtiger als der Einzelfehler:**
  **Autorentext in `raw/` wurde spaeter als amtlicher Wortlaut zitiert.** Die Quelle der
  Verbreitung ist eine **vom KB-Autor geschriebene** Konkordanztabelle im Kopf von
  `baurecht/raw/260717_amtlich_zh_hwschv.md`; der amtliche Teil derselben Datei beginnt erst unter
  «TEIL A». Der Refuter von **Run 8** erklaerte die Zuordnung mit dem Satz «steht woertlich in der
  **amtlichen** Konkordanztabelle» fuer belegt (`outputs/2026-07-18_wissens-chef-run8.md:60`) —
  und behandelte damit Autoren-Interpretation als Primaerquelle. Die Datei markiert das im
  Frontmatter-Feld `umfang` sogar selbst; es wurde nur nicht gelesen. **Regel daraus: eine
  `raw/`-Datei ist nicht als Ganzes amtlich.** Fuehrt sie neben dem Erlasstext Autoren-Hilfstabellen
  (Konkordanz, Mapping, Uebersicht), sind diese sichtbar als «KB-Autorentext, nicht amtlich» zu
  kennzeichnen — sonst wiederholt sich der Fall bei jeder Mapping-Tabelle im Bestand.
  Der Chef fasst `raw/` nicht an (Rule `wissens-bibliothekar`) → als P1 in
  `baurecht/wiki/QUESTIONS.md` an die fuehrende KB uebergeben.
- **Befund 2 (WIDERSPRUCH, BESTAETIGT, korrigiert — Schwere hoch):** `energie` fuehrte fuer die
  Grundwasserwaerme-Konzession «**kein gesetzlicher Maximalwert**, Dauer im Einzelfall». Die
  Einschraenkung war ehrlich formuliert («bevor die WsV geprueft ist») und ist seit dem 28.07.
  einloesbar: **§ 121 Abs. 1 lit. b WsV** nennt fuer die Waermeentnahme/den Waermeeintrag eine
  **Regeldauer 15-30 Jahre** (Abs. 2: bei besonderen Verhaeltnissen laengstens 80). Die kursierenden
  **40 Jahre gelten fuer andere Litera** (lit. a Wasserentnahme, lit. d Inanspruchnahme) — fuer die
  Waermenutzung falsch. **Die Stufe war das Problem, nicht die Recherche:** gesucht wurde im
  **Gesetz**, geregelt ist es in der **Verordnung**. Korrigiert im Destillat UND in
  `energie/wiki/BAUHERREN-FAQ.md` F77 — dort erreichte der Fehler den Bauherrn. Praxisfolge:
  Amortisationshorizont der Waermequelle max. **30 Jahre** (`healthcare-wirtschaftlichkeit`,
  `machbarkeit` Typ B, `immobilienbewertung` DCF). Nebenbefund: die 100-kW/Minergie-Mindestgroesse
  steht **nicht** in der WsV → AWEL-Verwaltungspraxis, nicht Verordnungsrecht; § 173 lit. b WsV
  kennt bei 200 kW nur eine **Verfahrens**schwelle (vereinfachtes Verfahren).
- **Offen (nicht ausgefuehrt):** OEREB-Thema 130 stuetzt sich in `planungsgrundlagen` weiter
  ungeflaggt auf die **KGSchV (LS 711.11)**, die laut eigener KB-Feststellung (Buch-Run 69) per
  01.01.2022 aufgehoben ist; ein Nachfolgeerlass ist im Hub nicht belegt (die WsV enthaelt keine
  Aufhebungsklausel dazu). Nicht selbst gesetzt, weil die Nachfolge unklar ist — gehoert in den
  laufenden KGSchV-Klaerungsauftrag von `baurecht`.

### normen ↔ baurecht ↔ energie (Therapiekuechen-Report, SIA 500 Korrigenda, Buch-Run 69) — geprueft 2026-07-28 (Run 19)
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — hoch):** Der neue Therapiekuechen-Report ordnete
  das Spital der **Gebaeudekategorie IX** zu. Amtlich (**§ 47a Abs. 1 BBV I**) und in `energie`
  (SIA 380/1 Anhang A Tab. 24) ist **Spital = VIII**, **IX = Industrie**. Fuer § 41a bleibt das
  Ergebnis gleich (III-XII umfasst beide), die Nummer ist aber der Rechen-Identifikator: die
  Verwechslung kostet **20 statt 70 kWh/m²**, Innentemperatur 18 statt 22 °C, Qww 25 statt
  100 MJ/m²·a. Korrigiert im Report; zusaetzlich **Leitplanke mit der vollstaendigen Liste I-XII**
  in `normen/wiki/QUESTIONS.md` gesetzt, damit die Nummern nicht wieder aus dem Gedaechtnis kommen.
- **Befund 2 (VERALTET, BESTAETIGT, korrigiert — hoch; der ergiebigste Befund des Laufs):** Das
  SIA-500-Destillat fuehrte Ziff. 9.7.2 im Stand der Basisausgabe 2009. Der Verifikator hat die
  Basisausgabe UND die Korrigenda am Original beschafft: **C3:2013** aendert die **Bezugsgroesse von
  Parkplaetzen auf Wohnungen** (1 rollstuhlgerechter PP pro 25 **Wohnungen**) und fuehrt einen
  100-m-Gehdistanz-Richtwert ein. **Dabei ist ein dem Hub bisher voellig unbekanntes viertes
  Korrigendum C4:2019 aufgetaucht** (aendert Ziff. 3.4.1, 3.7.3, 3.7.4, 3.7.6, 3.7.7, 3.7.8, 6.2.2).
  Ziff. 9.7 nachgefuehrt, Fassungsfeld gesetzt, C4-betroffene Ziffern markiert; der volle Nachzug
  (~20 Stellen) als **P1 an den `normen`-Loop** uebergeben. **Der Fehler hatte die Destillat-Ebene
  schon verlassen:** `bauprodukte/wiki/bkp-261-aufzuege.md` rechnet ein Herstellermass gegen die
  Kabinen-Tabelle aus **Ziff. 3.7.3** — genau eine der von C4 geaenderten Ziffern; dort
  Fassungs-Vorbehalt gesetzt.
- **VERALLGEMEINERTE LEHRE — dritte Variante der Run-8-Regel «Fassungspflege ist der blinde Fleck».**
  Bisher: erst den Bestand nach juengeren **Ausgaben** durchsuchen. Neu: auch bei **unveraenderter
  Ausgabe** koennen **Korrigenda** einzelne Ziffern materiell aendern. Sie tragen keine neue
  Jahreszahl im Normtitel und sind an der Ausgabe **nicht erkennbar** — genau deshalb hat der Hub
  C4:2019 sieben Jahre lang nicht gesehen. Bei jedem SIA-Destillat gehoert ein Blick in die
  Korrigenda-Liste des SIA-Shops dazu; Korrigenda sind Preisgruppe 0 (gratis).
- **Nicht ausgefuehrt (tief):** `normen` schreibt im Therapiekuechen-Report ZH-Erlasswortlaut
  (BBV I §§ 29/36/41 + Anhang, PBG §§ 302/306/309) materiell fort, obwohl `baurecht` dafuer fuehrend
  ist. Als Report (nicht Wiki-Artikel) mit korrekt zitierten Fundstellen vertretbar — bei einer
  Promotion in die `wiki/`-Ebene aber auf Verweise umzustellen.

### energie Run 118 ↔ planungsgrundlagen ↔ baurecht (sechs neue Destillate) — geprueft 2026-07-28 (Run 19)
- **Befund (WIDERSPRUCH, BESTAETIGT, korrigiert — hoch):** Das neue Rueckkuehler-Destillat gab eine
  **30-%-Technikreserve**, deren **Zweckbestimmung** und eine **PV-Reduktionsklausel** als Wortlaut
  von **§ 47b Abs. 1 BBV I** aus. Der Erlass besteht aus **genau zwei Saetzen** und enthaelt nichts
  davon: amtlich ist der **70-%-Belegungsdeckel**; alles Weitere steht in der **Vollzugshilfe**
  (ZH-Leitfaden Solaranlagen Dez. 2022). Gesetzliche Grundlage fuer die Ruecksicht auf hohe Bauten
  ist § 10c Abs. 3 lit. a EnerG als blosse **Delegationsnorm**. Korrekturkasten gesetzt.
- **Mechanik (fuer die Destillat-Praxis lehrreich):** Das als «woertlich» ausgewiesene Blockzitat war
  eine **Montage aus zwei getrennten Textbloecken**, verbunden durch «[…]» — weggefallen war genau
  der einleitende Satz, der die Verwechslung verhindert haette. **Regel: Erlasswortlaut und
  Vollzugshilfe nie in dasselbe Blockzitat montieren.**
- **WIDERLEGT (wertvoller Nicht-Befund):** Der Vorwurf, zwei aeltere Artikel bezoegen den
  70-%-Deckel faelschlich «nur auf hohe Bauten», kippt: der Bezug ist die **amtliche Vollzugslesart**
  des ZH-Leitfadens, nicht eine Falschlesart. Haette man ihn «korrigiert», waere die Vollzugspraxis
  aus dem Hub entfernt worden.

### bauprodukte (NEUE KB) ↔ normen / grobkosten / projekt-lessons — ERST-PRUEFUNG 2026-07-28 (Run 19)
- **Struktureller Hauptbefund (korrigiert):** Die am 28.07. entstandene KB war in dieser
  Fuehrungs-Matrix **ueberhaupt nicht registriert** — weder als fuehrend fuer Produktwissen noch mit
  der Klarstellung, dass Norm-Fundstellen und Kennwerte anderswo gefuehrt werden. **Drei Zeilen
  ergaenzt** (siehe Matrix oben). Genau diese Luecke hat den naechsten Befund erzeugt.
- **Befund (WIDERSPRUCH, BESTAETIGT, korrigiert — hoch):** `dachbegruenung-systeme` fuehrte die
  Dachbegruenung allein unter **BKP 224** und kannte die massgebliche CH-Norm gar nicht.
  **SIA 312:2013** liegt seit laengerem als Destillat in `normen` und verlangt die Aufteilung
  **224 (Schichtaufbau) / 288 (Vegetation)** — wer alles unter 224 ausschreibt, verliert die
  Gaertnerleistung aus dem Devis. Normabschnitt mit verbindlichen Schichtdicken (extensiv 80-200 mm,
  intensiv 120-300 bzw. 200 bis >500 mm), Niederschlagsklassen-Tabelle und Neigungsschwellen
  (6°/15°) nachgetragen, **beidseitige Verlinkung** bauprodukte ↔ normen gesetzt.
- **WIDERLEGT (Kipp-Grund: falsche Leitnorm):** Der Vorwurf, die «fehlende normative Klassifizierung»
  bei Terrazzo/Kunststein sei durch **SN EN 16954:2018** laengst geschlossen, kippt — fuer die
  beschriebenen zementgebundenen Kunststein-/Terrazzoplatten ist **SIA 244:2006 «Kunststeinarbeiten»**
  die einschlaegige CH-Norm. Die Umsetzung haette eine falsche Normzuordnung in eine neue KB gesetzt.
- **Beobachtung ohne Handlungsbedarf:** `bauprodukte/.!33499!CHANGELOG.md` ist ein **0-Byte-
  SMB-Schreibfragment** vom 28.07. 01:37; das echte `CHANGELOG.md` ist intakt. Kein Datenverlust.
  **Nicht geloescht** (Rule: Loeschungen nie ohne Rueckfrage) → Entscheid Raphael, siehe Bericht.

### projekt-lessons ↔ normen / auflagebereinigung / BKP  UND  planungsgrundlagen Run 92 ↔ normen — geprueft 2026-07-28 (Run 19)
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — hoch):** `planungsgrundlagen` C41 fuehrte die
  Treppenbreite 1.20 m als «im Destillat nicht mit Ziffer belegt». Sie ist **dreifach belegt**:
  Grundmass **Ziff. 2.4.5 Abs. 3 = 1.5 m** gewendelt (innere Auftrittsbreite 0.15 m), die **1.2 m
  bei 0.1 m** sind eine ziffern-gebundene Erleichterung (Ziff. 3.1 Abs. 2 / 3.2.2 / 3.3.2 / 3.6.2).
- **Der Verifikator fand dahinter den groesseren Fehler — eine Luecke im Norm-Destillat selbst:**
  `normen/destillate/vkf-brl-16-15` liess in Ziff. 3.1 die Tatbestandsvoraussetzung «**welche
  mehrere Nutzungseinheiten erschliessen**» und Abs. 3 weg, und in Ziff. 3.2.2 den Abs. 3
  «**An Treppen innerhalb der Nutzungseinheit werden keine Anforderungen gestellt**» (gleichlautend
  3.3.2 Abs. 2). Das Destillat las sich dadurch, als gaelte die 1.2-m-Erleichterung generell — und
  es kannte die **praktisch haeufigste** Regel (interne Treppe) nicht. Beide Absaetze nachgetragen.
  C41 entsprechend umgeschrieben: **zuerst die Nutzungseinheit abgrenzen, dann die Breite bestimmen.**
- **Befund 2 (BKP, korrigiert — tief):** Die neue Lesson trug im Frontmatter `bkp: "273.35"` — ein
  Code, den die BKP-2017-Liste nicht kennt (dort existiert nur 273.3). Kuechen-/Gastroeinrichtungen
  sind **BKP 258**; «273.35» ist die **projektinterne Los-Nummer** KISPI. Feld praezisiert.
- **WIDERLEGT (3 von 3 Kipp-Gruenden griffen):** Der Vorwurf, die SBB-Lesson uebergehe die
  Unterscheidung projektbezogenes/generelles Naeherbaurecht, kippt — die Lesson erhebt gar keine
  Rechtsbehauptung, sie dokumentiert einen belegten Projektverlauf. **Der Vorschlag haette Schaden
  angerichtet:** er wollte ein «Vorsprungsprivileg § 260 Abs. 3 PBG» zitieren, das im geltenden
  Hauptteil des PBG einen anderen Gegenstand hat (Getrenntmessung bei gegliederten Gebaeuden).
- **Zwei Zusatzbefunde in `baurecht`, an die KB gemeldet (nicht selbst korrigiert):** (a) im
  Destillat `band-2/15-lage-von-gebaeuden-teil2d.md` sind **drei Saetze des Abschnitts C
  grammatisch zerstoert** (fehlende Negation, Satz ohne Subjekt) und damit nicht zitierfaehig —
  ausgerechnet die Passage zum generellen Naeherbaurecht; (b) `wiki/abstaende-und-hoehen.md` zitiert
  die 1/3-/1.3-m-Vorsprungsregel weiterhin ungebrochen als «§ 260 Abs. 3 PBG», obwohl die KB die
  Haupt-/Anhang-Divergenz am 27.07. (Buch-Run 62) selbst als offene Frage markiert hat.


### baurecht ↔ planungsgrundlagen (Nachkontrolle EG-GSchG-Sweep) — geprueft 2026-07-27 (Run 18)
- **Anlass:** Die Nachtschicht zog den in Run 17 angeordneten Sweep nach (12/15 Fundorte). Dieser
  Lauf prueft nicht das Verschwinden des Strings, sondern die **Ersetzung**.
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** Der Sweep baute einen NEUEN Fehler
  ein. Frontmatter `baurecht/buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md:7` ordnete die
  Abwasserparagraphen **§§ 45-48 WsG** (planerischer Gewaesserschutz) zu; richtig ist **§§ 49 ff.,
  Abschnitt C Siedlungsentwaesserung** — so auch der Fliesstext derselben Datei (Z. 17/55) und Band 1
  (03-erschliessung Z. 97). Chef am amtlichen PDF gegengelesen. Zusatz: «§ 13 ff.» ist ein
  Uebertragungsfehler fuer «§§ 14 ff.» (§ 13 regelt die Sicherheitsleistung).
- **Befund 2 (VERALTET, BESTAETIGT, korrigiert — materiell):** Der in `baurecht/training/PROGRAMM.md`
  selbst angemeldete **Drittkanal** blieb offen: `planungsgrundlagen/wiki/kartenportale-oereb-kataster-
  system-zh.md` fuehrte OEREB 130/131/132 weiter auf LS 711.1, `established`, ungeflaggt; dritter
  Fundort `recht-norm-regenwasser-gewaesserraum-zh.md:108`. Zuordnung am Volltext verifiziert:
  **§ 45 WsG** (130 + 132), **§ 46 WsG** (131), **§ 48 Abs. 2 WsG** = Waermenutzungsatlas.
- **Befund 3 (VERALTET, gemeldet, NICHT ausgefuehrt — P1):** Der **WsG-Volltext fehlt im ganzen Hub**
  (`find *724.1*` = 0), obwohl `baurecht` ihn an ~14 Stellen zitiert. In `baurecht/wiki/QUESTIONS.md`
  mit funktionierender notes.zh.ch-URL + Mindestumfang angemeldet (die zh.ch-`dam`-URL liefert HTML).
- **Status:** korrigiert; P1-Bring-Schuld offen beim baurecht-Loop.
- **Regel daraus:** **nach einem Erlass-Sweep prueft eine zweite Instanz die ERSETZUNG.** Fehlerarten
  (a) neue Falschzuordnung, (b) nicht erreichter Drittkanal, (c) Register-Selbstwiderspruch sind fuer
  eine grep-Erfolgskontrolle unsichtbar, weil der gesuchte String weg ist.

### energie ↔ planungsgrundlagen ↔ baurecht (EnerGIS/Waermeversorgung Stadt ZH) — geprueft 2026-07-27 (Run 18)
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** 70-%-Kurzschluss in
  `energis-kartenwerk-stadt-zuerich.md:172-175` UND `fernwaerme-anschlusspflicht-zh.md:61-63`:
  § 295 Abs. 2 PBG kennt **keine Prozentschwelle**, sondern zwei kumulative Voraussetzungen
  (lokale Abwaerme/erneuerbar UND technisch-wirtschaftliche Gleichwertigkeit). Drei 70-%-Regeln
  getrennt: WVV Art. 8 lit. a (staedtisch) / § 47 g BBV I (kantonal) / AfB-Merkblatt (Vollzug).
- **Befund 2 (FEHLENDE QUERVERLINKUNG, BESTAETIGT, gesetzt):** planungsgrundlagen hatte **0 Treffer**
  fuer EnerGIS/WVV/Waermenutzungsatlas ueber alle 51 Wiki-Artikel → beide Portale in die
  Portaluebersicht aufgenommen, Flaechenkonkurrenz-Warnung in den PV-Artikel, Rueckverweise gesetzt.
- **Fuehrung neu festgehalten:** Kartenportal/Zugriffsweg → **planungsgrundlagen**; materielle
  Rechts-/Fachaussage (WVV, Gasverbot, Verbindlichkeit) → **energie**; Erlasswortlaut → **baurecht**.
- **Offen (P2):** §§ 4-7 EnerG fehlen in `baurecht/raw/260712_amtlich_zh_energ.md` (auf §§ 9-14
  begrenzt), weshalb `energie` den Wortlaut selbst pflegt — in baurecht/QUESTIONS angemeldet.

### energie ↔ normen (Baeder-/Rueckkuehler-Normen) — geprueft 2026-07-27 (Run 18)
- **Befund 1 (VERALTET, BESTAETIGT, korrigiert):** «Bezeichnungskollision SIA 385/1» stand als
  ungeklaert, obwohl `normen` sie zwei Tage zuvor (Run 22) aufgeloest hatte: Nummern-Wiederverwendung,
  Badewasser laeuft ueber **SIA 385/9**. **Verifikator verschaerfte:** geltende Ausgabe laut SIA-Shop
  **385/9:2023**; das normen-REGISTER speist sich aus einem Bestand mit **Stand 25.02.2013** und
  bildet spaetere Revisionen strukturell nicht ab → Fassungs-Pruefauftrag in normen/QUESTIONS (P1).
  **Klasse offen:** dieselbe 2013er-Grenze betrifft potenziell jede nach 2013 revidierte Norm.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, gesetzt):** **EN 13487** und **EN 12102-1** fehlen in der
  fuehrenden KB ganz (grep je 0), werden von energie aber zitiert — in normen/QUESTIONS angemeldet.
  Abgrenzung festgehalten: Cercle-Bruit-Vollzugshilfen 6.20/6.21 sind **keine** Normen und bleiben
  bei `energie`.
- **Befund 3 (VERALTET, korrigiert):** BFE-Kennwerte 1993 standen ohne Alters-Vorbehalt am Zahlenort
  und wurden ueber `destillate/INDEX.md` weiterpropagiert; Bezugsgroessen SIA 116:1952 / SIA 180/4:1982
  sind zurueckgezogen (Nachfolge SIA 416:2003 / 416/1:2007) → Vorbehalt an die Zahlen UND in den INDEX.

### energie ↔ baurecht (SZ-Abwaerme, Submetering) + energie-intern — geprueft 2026-07-27 (Run 18)
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** Submetering-Destillat verneinte die
  Befreiung der Zwischenzone 200'000-500'000 kWh; **§ 48c Abs. 1 lit. c BBV I** befreit
  schwellenunabhaengig (freiwillige Zielvereinbarung/KMU-Modell). **7. Fundort des Musters
  «Korrekturen sind nicht ansteckend»** — dieselbe Korrektur stand seit Run 16 in
  `planungsgrundlagen` und war dort markiert.
- **Befund 2 (DOPPELSPURIGKEIT, korrigiert):** § 30a BBV I aus einem Schwesterdestillat statt aus
  `baurecht/raw` zitiert → «zumutbar» statt amtlich «**tragbar**», Ausloesetatbestand von Abs. 2
  weggefallen. Chef am Original gegengelesen (raw Z. 444-446).
- **Befund 3 (FEHLENDE QUERVERLINKUNG, gesetzt):** Der Vorlaeufer aus Run 116 lief unmarkiert mit der
  nur websuchgestuetzten SZ-Fassung weiter → Ueberholt-Vermerk + Backlink auf die Volltext-Vertiefung.
- **Befund 4 (WIDERLEGT — wertvollster Nicht-Befund des Laufs):** «Amt fuer Gewaesser SZ existiert
  nicht» beruhte auf einem hub-internen grep-Negativbefund. Das **AfG existiert**; SZ teilt die
  Gewaesserschutzfachstelle: **AfG** fuer Abwasser (§ 17 EGzGSchG), **AfU** fuer Grundwasser
  (§ 29 EGzGSchG). Die Umsetzung haette die Falschangabe erst erzeugt. Unterscheidung im
  Ueberholt-Vermerk festgehalten. **Regel: «steht nicht in unserer KB» ist nie «gibt es nicht».**

### energie ↔ baurecht (Abwaerme/Prozessenergie, EG GSchG → WsG) — geprueft 2026-07-27 (Run 17)
- **Anlass:** energie Run 116 (27.07.) legte vier neue Abwaerme-Destillate + einen Wiki-Artikel an
  (Abwasserwaerme Kanalisation ZH/SZ, Grosskuechen-Lueftung, Serverraum-Kuehlung, Waescherei
  Pflegeheim/Spital).
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell, ERGIEBIGSTER BEFUND DES LAUFS):**
  Beide KBs stuetzten die AWEL-Bewilligung fuer Waermenutzung aus Wasser auf **§ 8 EG GSchG**;
  `energie` behauptete zugleich — ungeprueft aus dem AWEL-Glossar 2025 uebernommen — die Abloesung
  durch das WsG und liess im selben Atemzug offen, ob das WsG ueberhaupt in Kraft sei. **Der Chef hat
  das amtliche PDF `724.1_12.12.24_133.pdf` (zhlex) selbst gezogen und drei Stellen im Volltext
  gegengelesen:** § 126 lit. a hebt das **Einfuehrungsgesetz zum Gewaesserschutzgesetz vom 8.12.1974
  auf**, Fn. 2 nennt das Inkrafttreten **1. Juni 2026** (OS 81, 145), und § 44 Abs. 1 lit. a Ziff. 3
  erfasst die Nutzung «von Boden, Untergrund oder **Abwasser** zur Gewinnung von **Energie**»
  neu ausdruecklich. **Ergebnis: `energie` hatte sachlich recht (ohne Beleg), die laut Matrix
  FUEHRENDE KB `baurecht` zitierte aufgehobenes Recht** — an 17 Fundorten.
  **Ursache:** der WsG/WsV-Nachzug aus Buch-Run 50 sweepte nur den Suchbegriff «HWSchV» und wurde in
  Run 64 als «bleibt geschlossen» verbucht; § 126 hebt aber ZWEI Erlasse auf.
  **Verallgemeinerte Regel: nach dem NACHFOLGE-Erlass sweepen, nicht nach dem einen Erlass, der den
  Anlass gab.** → `energie` auf § 44 Abs. 1 lit. a WsG umgestellt (historischer Vermerk, offener
  Punkt geschlossen, Setzfehler «§ EGSchG» bereinigt); in `baurecht` die zwei konsumierten Stellen
  direkt korrigiert, die restlichen 15 Fundorte als **Prioritaet (a) im ARBEITSREGISTER**
  (`training/PROGRAMM.md`) mit Fundortliste, Erledigt-Kriterium und §-Zuordnungen angemeldet,
  Zeiger in `wiki/QUESTIONS.md`. Neu enger gefasst offen: ist die **KGSchV (LS 711.11)** ebenfalls
  aufgehoben (§ 126 hebt nur *Gesetze* auf)?
- **Befund 2 (VERALTETES, BESTAETIGT, korrigiert):** dasselbe Destillat fuehrte das Inkrafttreten des
  WsG als «offenen Punkt», obwohl es sowohl in `baurecht` (Nachtrag 133, Buch-Run 54) als auch im
  energie-EIGENEN Schwester-Destillat seit dem 15.07. primaerquellen-belegt war. → geschlossen.
- **Befund 3 (FEHLENDE QUERVERLINKUNG, gesetzt):** keine der fuenf neuen Dateien enthielt einen
  einzigen Verweis auf `baurecht` oder `planungsgrundlagen` (grep-Zaehler je 0) — **5. Fundort** des
  Musters «Rule `normen-referenz` greift beim SCHREIBEN nicht». Die §-Zitate selbst waren alle
  korrekt (am Volltext geprueft, keine ZH/SZ-Verwechslung). → Querbezug-Block gesetzt.
- **Offen an den Loop:** Anrechnungsregel Duschwasser-WRG wird in `energie` fortgeschrieben, obwohl
  `planungsgrundlagen` fuer Nachweisregeln/Formulare fuehrend ist.

### normen ↔ planungsgrundlagen (Lignum-Holzbau-Brandschutz) — geprueft 2026-07-27 (Run 17)
- **Anlass:** normen Run 30/34/35 legte sechs neue Brandschutz-Destillate an (Lignum 4.1/4.2/Lignatec,
  VKF AH 1001-15, VKF allgemein anerkannte Bauprodukte, Brandschutznachweis-Anleitung V.3).
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell, GEFAEHRLICHSTER BEFUND):**
  `brandschutz-pl03-wegweiser` kehrte die **Kapselungsregel** um: K stand als fixe 30 Minuten mit der
  Differenz als blosser Obergrenze, statt als **Rechenwert nach unten** (Gesamtbauteil minus 30 Min.,
  Untergrenze K30-RF1). Folge: bei **REI 90-RF1** sah **K30-RF1** zulaessig aus, wo Tab. 232-2
  zwingend **K60-RF1** verlangt — eine **unterdimensionierte Brandschutzbekleidung**, die aus dem
  Vorprojekt-Grobcheck in eine Ausschreibungsklausel wandern kann. → an den Normwortlaut angeglichen.
- **Befund 2 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** **Wandtraglast q'd,fi** war
  «durchgehend» je Feuerwiderstandsklasse angegeben (20/50 kN/m'), gilt aber nur fuer EINEN der
  sieben Systemtypen. Fehler in beide Richtungen: Blockbau 50 statt 20 kN/m' (**unsichere
  Ueberschaetzung**), Brettstapel 20 statt 70 kN/m' (unnoetig konservativ). `normen` hatte denselben
  Fehler in Refuter-Runde 31 bei sich bereits korrigiert — in der Abnehmer-KB lief er weiter.
  → Werte je Systemtyp eingesetzt, dazu der zweite uebersehene Punkt (90-Min.-Tabellen bestehen nur
  fuer zwei der sieben Systeme). Bildpruefung am Original S. 46-51 durch den Verifikations-Agenten.
- **Befund 3 (VERALTETES, korrigiert — materiell):** **Lignatec 17/2005** (TKB-VKF-Anerkennung bezogen
  auf VKF-Ausgabe **2003**) wurde ohne Ausgabenummer, ohne Jahr und ohne Vorbehalt **vorrangig vor
  der geltenden VKF-BSR-Tabelle** empfohlen — waehrend die fuehrende KB `normen` dieselbe Publikation
  seit dem 26.07. als «VERALTET» kennzeichnet. Zwei KBs, dasselbe PDF, gegenlaeufige
  Handlungsanweisung. → Vorrang umgekehrt, Vorbehalt gesetzt; festgehalten, dass die abgeleiteten
  Healthcare-Aussagen nur tragen, weil §4b sie unabhaengig aus der geltenden BSR 15-15 belegt.
- **Befund 4 (DOPPELSPURIGKEIT, Querbezug gesetzt):** Lignum 4.1/4.2/Lignatec wurden in beiden KBs
  parallel gefuehrt, ohne einen einzigen Verweis in irgendeiner Richtung. → Querbezug-Block im
  fuehrenden Destillat gesetzt, der die zwei obigen Fehler ausdruecklich benennt, damit eine kuenftige
  Aenderung an Tab. 232-2 oder den Traglasttabellen nicht wieder an der Abnehmer-KB vorbeilaeuft.

### baurecht ↔ auflagebereinigung (Nebenbestimmungen/Fristen/Rechtsmittel) — geprueft 2026-07-27 (Run 17)
- **Anlass:** baurecht Buch-Run 67 hat `nebenbestimmungen-und-reverse` erstmals Modell-D-verifiziert;
  Paar zuletzt am 12.07. (Run 2) geprueft.
- **Befund 1 (FEHLENDE QUERVERLINKUNG, BESTAETIGT, korrigiert — materiell):** Der Fristen-Artikel der
  `auflagebereinigung` — die Frist-Wahrheit dieser KB — listete sechs Einreichungszeitpunkte und
  **keine einzige gesetzliche Frist**. Ein grep ueber die ganze KB nach «Rechtsmittel», «anfechten»,
  «Anfechtung», «Rechtsschutz» lieferte **0 Treffer**. Fehlend: die **Rekursfrist 30 Tage**
  (§ 22 Abs. 1/2 VRG, Baurekursgericht § 329 Abs. 1 PBG, Verwirkung § 316 Abs. 1 PBG). Materiell: wer
  Auflagen nur «bereinigt», akzeptiert sie faktisch, waehrend die Frist parallel laeuft; Verhandeln
  mit dem Amt hemmt sie nicht. Ebenso fehlte der Zusammenhang, der die Spalte «vor Baubeginn» lesbar
  macht (§ 25 Abs. 1 VRG aufschiebende Wirkung, § 339 PBG Beschraenkung + Teilfreigabe).
  → Abschnitt «Vorgelagert: die einzige gesetzliche Frist» eingesetzt (inkl. § 322 PBG Erloeschen
  nach 3 Jahren), **Frist-Gate vor Schritt 1** im Prozessartikel: abarbeiten ODER anfechten.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, BESTAETIGT, korrigiert):** Der einzige Handoff von `baurecht`
  in diese KB lief ueber die [[ausnahmebewilligung-und-bestandesschutz]]-Linie — ein Artikel, der nur
  Dispens § 220 und Bestandesschutz § 357 PBG behandelt (0 Treffer fuer «Baubeginn»/«Auflage»).
  Zustaendig ist § 321 PBG → [[nebenbestimmungen-und-reverse]]. Die Gegenrichtung war korrekt gesetzt,
  nur die Hinrichtung griff ins Leere. → umgehaengt, § 326 lit. a PBG als Stuetze, Gegenverweis gesetzt.

### wettbewerbs-dna ↔ entwurfs-referenzen ↔ grobkosten ↔ immobilienbewertung (Wohnbau-Kennwerte) — geprueft 2026-07-27 (Run 17)
- **Anlass:** Etappe 3 des wettbewerbs-dna-Trainings abgeschlossen (Baustein B5 Wohnungsbau),
  `wohnen-mfh-urban.json` v1.0 → v2.0, grobkosten `wiki/kennwerte.md` geaendert.
- **Beide gemeldeten Befunde WIDERLEGT — und das ist ein POSITIV-Ergebnis.** Gesucht wurde gezielt
  dieselbe Fehlerklasse, die beim Healthcare-Set in Run 15/16 zutraf (Kennwertband gegen die fuehrende
  Quelle verschoben; schaerfster Kaveat beim Transfer verloren). Der Verifier hat beides verworfen:
  der Kaveat «Zielkostendach, vom Sieger MOERAKI verfehlt» steht vollstaendig im Array
  `entwurfs_regeln` inkl. Projektname und Fundstellenverweis (B4/B6); die Bandbreiten-Differenz
  erklaert sich aus verschiedenen Bezugsgroessen und Scopes. **Der KB-Loop hat beim Wohnbau-Set genau
  das richtig gemacht, was er beim Healthcare-Set falsch gemacht hatte** — zwei aufeinanderfolgende
  Cross-Laeufe, dieselbe Fehlerklasse, beim zweiten Mal nicht mehr da. Belegter Fortschritt.
- **Fuehrungslage bestaetigt:** fuer den **Wohnbau** ist `grobkosten` zu Recht fuehrend (anders als bei
  Healthcare); `quelle_kb` zeigt korrekt dorthin.
- **Struktur (gesetzt):** `grobkosten/wiki/kennwerte.md` kannte seine zwei neuen Abnehmer nicht
  (0 Treffer fuer «entwurfs-referenzen», «parameter-set», «wettbewerbs-dna») → Abnehmer-Block gesetzt,
  inkl. ausdruecklicher Abgrenzung, dass diese KB fuer Healthcare NICHT fuehrend ist.
- **Offen an den Loop:** `kosten_referenz` nennt nur EINE `quelle_kb` — fuer die ebenfalls enthaltene
  m2-HNF-Dimension fehlt der Zeiger auf die dafuer fuehrende `immobilienbewertung`.

### twin ↔ spec ↔ rules (DNA-Kompilat, Kontaktliste) — geprueft 2026-07-27 (Run 17, rotierend)
- **Anlass:** twin Batch 80 (27.07.) hat alle Facetten-Artikel geaendert; spec Run 36/37.
- **Befund 1 (VERALTETES, BESTAETIGT, korrigiert — nicht materiell, da die Rule selbst massgeblich
  bleibt):** `spec/wiki/environment-jans-hub.md` fuehrte als `status: established` die aktive
  Handlungsempfehlung, direkt ueber den SMB-Mount zu committen — genau die Praxis, die am **26.07.**
  verboten wurde (Rule `sync-kanonische-quelle` Abschnitt «NIE», neuer Kopfabschnitt in
  `git-auto-push`, Auto-Verbesserung 260726). Der Lauf-9-Schluss hatte den Regel-Widerspruch 2026-07-13
  per **Betriebs-Empirie** zugunsten des direkten Commits entschieden. → Nachtrag gesetzt; der Schluss
  bleibt als Methodik-Beispiel stehen, aber mit umgekehrtem Vorzeichen. **Lehrsatz fuer den
  Verifier-Schritt der Spec-Methode: ein Verifier aus Betriebs-Empirie belegt den Ist-Zustand, nicht
  die Belastungsgrenze — ein daraus abgeleiteter Regel-Entscheid braucht ein Verfallsdatum oder eine
  Re-Pruefung statt `established`.**
- **Befund 2 (WIDERSPRUCH, BESTAETIGT — NICHT vom Chef geaendert, Entscheid Raphael):**
  `rules/anrede-kontakte.md` fuehrt Besnik starr als «nackter Vorname-Opener», waehrend
  `twin/wiki/beziehungsregister.md` am authentischen Beleg (21.05.2026) «Geschaetzter Besnik» +
  direkten FG-Block belegt. Weil die Rule laut eigener Konvention VOR dem Wiki konsultiert wird, wirkt
  der veraltete Stand. Der twin-Loop hat die Korrektur ausformuliert, aber korrekt nicht selbst in die
  Rule geschrieben (Freigabe-Bindung, twin-CHANGELOG 2026-07-25j). **Der Chef ebenfalls nicht.**
  → im Bericht als Entscheid vorgelegt; wirksamer als die Besnik-Zeile waere eine **generelle Klausel**
  im Abschnitt «Konvention» (Anrede-Stufe folgt dem Gewicht des Anliegens, dreifach belegt:
  Tschopp/Besnik/Hiltmann) — sie heilt alle Zeilen zugleich. Zustellvermerk in `twin/wiki/QUESTIONS.md`.
- **Befund 3 (WIDERSPRUCH, ungeprueft, ebenfalls Entscheid Raphael):** **Felix Staehlin** — Rule fuehrt
  «Karl Waechter AG», zwei juengere twin-Batches (60/61) «Staehlin AG Sanitaer». Anredeform stimmt
  ueberein, Firmenzuordnung nicht; das Wiki ist selbst uneinheitlich. Nach Rule
  `identifikatoren-verifizieren` ist der Firmenname ein Identifikator, der in Anschreiben, Adressblatt,
  Submittentenliste und Werkvertrag wandert. Aus dem Korpus nicht entscheidbar → vorgelegt.

### energie ↔ normen (Koerperschall WP / SIA 181 Schallschutz) — geprueft 2026-07-26 (Run 16)
- **Anlass:** beide KBs haben am selben Abend im Abstand von 20 Minuten zum selben Normenfeld
  geschrieben — energie Run 112 (23:07) legte das komplett neue Themenfeld «Koerperschallisolation bei
  Waermepumpen» an (EMPA Baschnagel 2002), normen Run 28 (22:47) vervollstaendigte
  `sia-181-2006.md` um Anhang A+B. Genau die Konstellation, in der Doppelspurigkeit entsteht.
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** Der neue energie-Artikel erklaerte
  den Tabelle-6-Wert **28 dB(A)** zum Zielmass «im eigenen Schlafzimmer». SIA 181 trennt aber zwei
  Faelle: Tabelle 6 / Ziff. 3.2.3.3 gilt **zwischen** Nutzungseinheiten (28 dB(A) mittlere
  Empfindlichkeit, 25 dB(A) erhoeht nach Ziff. 3.2.3.4); **innerhalb** der eigenen Nutzungseinheit
  gibt die Norm nach Ziff. 0.1.2 nur **Empfehlungen** (Anhang G: 30/25 dB(A)). Der Verifier hat den
  Scheinwiderspruchs-Test am Original gefuehrt und die Trennung an drei Ziffern belegt (2.1.4,
  3.2.3.2, 3.2.3.7.1). → Fallunterscheidung an **allen vier** energie-Stellen eingesetzt (Destillat,
  `wiki/waermepumpen-laermschutz`, BAUHERREN-FAQ F159, `wiki/INDEX`), inkl. Hinweis, dass bei neu
  begruendetem STWEG nach Ziff. 2.2.2 verbindlich die erhoehten Anforderungen gelten (25 statt 28).
- **Befund 2 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell):** Wiki und FAQ behaupteten pauschal,
  Koerperschall werde «von keiner Behoerde geprueft» (das Quell-Destillat formulierte enger: «keine
  *Bewilligungs*behoerde»). SIA 181 Ziff. 0.1.1 nennt den abgestrahlten Koerperschall im
  Geltungsbereich, Ziff. 0.1.7 unterstellt ihn bis zum Inkrafttreten der eidg. Erschuetterungs-
  verordnung **direkt dem USG** (Ziff. B.5 fuer die Messung). → auf «nicht Gegenstand des
  LSV-Laermschutznachweises im Baubewilligungsverfahren» praezisiert, USG-Bezug ergaenzt. Das ist
  zugleich das staerkere Argument gegenueber dem Bauherrn, die Entkopplung einzufordern.
- **Befund 3 (FEHLENDE QUERVERLINKUNG, gesetzt):** Das neue Destillat zitierte «SIA 181» ohne Ausgabe
  und ohne Ziffer und verlinkte nur KB-intern, waehrend alle Schwesterartikel (schallschutz-sia181,
  sommerlicher-waermeschutz-sia180) den Querbezug-Block fuehren — die Rule `normen-referenz` greift
  beim SCHREIBEN neuer Artikel weiterhin nicht (bekanntes Muster, 4. Fundort). → Querbezug-Block mit
  ziffern-genauen Fundstellen gesetzt.
- **Befund 4 (DOPPELSPURIGKEIT, ⚠-Flag beidseitig gesetzt):** Beide KBs fuehren die
  SIA-181-Anforderungswerte, aber aus **verschiedenen Ausgaben**: energie aus einer Buero-
  Zusammenfassung der **Ausgabe 2020** (erhoeht +4 dB), normen aus dem **Original 2006** (+3 dB) —
  ohne Verweis zwischen den Destillaten. Das ist eine Ausgaben-, keine Sachdifferenz. → ⚠-Zeile in
  beiden Destillaten, Arbeitsteilung wie beim SIA-180-Paar festgeschrieben (normen fuehrt die
  Fundstelle, energie die Vollzugsebene). **Offen: Re-Destillat SIA 181:2020 aus dem Original**
  (Bring-Schuld `normen`, Register-Eintrag vorhanden).
  **Status: 2 materielle Korrekturen (6 Stellen), 1 Querbezug-Block, 1 Ausgaben-Flag beidseitig.**

### energie ↔ baurecht ↔ planungsgrundlagen (Grossverbraucherartikel, Betriebsoptimierung ZH) — ERST-PRUEFUNG 2026-07-26 (Run 16)
- **Anlass:** zweites brandneues Themenfeld aus energie Run 112 — kantonales Energierecht, ein Feld,
  fuer das die Rollen-Matrix bisher **keine Zeile** hatte.
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert — Rechtsfehler):** Das neue Destillat schrieb dem
  Kanton Zuerich den **Schwyzer** Befreiungskatalog zu («§§ 6-8/§ 10 EnerG», an vier Stellen). Amtlich
  gilt in ZH ein voellig anderer: § 13a Abs. 2 EnerG delegiert an die Verordnung, und **§ 48b Abs. 2
  BBV I** nennt §§ 22a, 23, 26, 29 Abs. 2-4, 30a, 45, 45a (weitere Befreiungen kann die Baudirektion
  aufnehmen). Der Verifier hat zusaetzlich das amtliche EnerG-PDF von notes.zh.ch gezogen und
  gegengelesen. Die Reihe «§§ 6-8/§ 10» gehoert ausschliesslich zu SZ (§ 9 Abs. 4 kEnG); die
  behauptete Struktur-Analogie ZH/SZ traegt nur fuer die **Schwellenwerte**. → an allen vier Stellen
  korrigiert, Analogie-Aussage entsprechend eingeschraenkt.
- **Befund 2 (WIDERSPRUCH, BESTAETIGT, korrigiert — materiell, praxisrelevant fuer Healthcare):**
  `planungsgrundlagen/wiki/energie-energienachweis-zh-formulare.md` fuehrte die Betriebsoptimierung als
  reine Verbrauchsschwelle mit Fristbeginn «nach Fertigstellung». Amtlich laeuft die Frist ab
  **Inbetriebsetzung** (§ 13d Abs. 1 EnerG), und die Verordnung ist als **Befreiungs**norm gebaut:
  § 48c Abs. 1 BBV I befreit (a) < 200'000 kWh Strom/Jahr, (b) Grossverbraucher mit Zielvereinbarung,
  (c) freiwillige Zielvereinbarung (KMU-Modell). Beide Ausnahmen fehlten ganz — nach der bisherigen
  Formulierung waere gerade Spital/Pflegeheim faelschlich in die Pflicht gefallen. → korrigiert,
  beide Ausnahmen ergaenzt, auf das energie-Destillat und die amtlichen raw-Dateien verwiesen.
- **Befund 3 (VERALTETES, BESTAETIGT, NICHT korrigiert — Verifier hat die Freigabe zurueckgehalten):**
  Das Frontmatter des Destillats bezeichnet die Fassung als «EnerG ZH Nachtrag vom 19.4.2021». Im
  Kt. ZH ist «Nachtrag» aber die Nummer der **konsolidierten Fassung** (aktuell **Nachtrag 129**,
  Stand Publikation 1.7.2025 — Fusszeile «1. 7. 25 - 129» am Original-PDF verifiziert), waehrend
  Aenderungserlasse als «G vom <Datum>» zitiert werden. Materiell ist der Inhalt aktuell, nur die
  Fassungsbezeichnung irrefuehrend. → als **offener Punkt** an die KB `energie` (siehe Bericht).
- **Befund 4 (FEHLENDE QUERVERLINKUNG, gesetzt) + offene Bring-Schuld geschlossen:** Das Destillat
  fuehrte die Verordnungsebene als offenen Punkt («nicht durch eigene Verordnungslektuere vertieft»),
  obwohl §§ 48a-48c BBV I amtlich und primaerquellenverifiziert in `baurecht/raw/` liegen. → Quelle
  ergaenzt, offener Punkt geschlossen, Cross-KB-Block (baurecht = Erlasswortlaut, pg = Formularseite)
  gesetzt; Gegenrichtung in pg gesetzt.
- **Befund 5 (DOPPELSPURIGKEIT/Fuehrung ungeklaert, Matrix ergaenzt):** Fuer kantonales Energierecht
  gab es keine Matrix-Zeile, obwohl die Fuehrung faktisch schon einmal geklaert worden war (energie
  gibt sie ausdruecklich an baurecht ab, Run 9 Befund 5) — und wieder unterlaufen wurde. → **zwei neue
  Matrix-Zeilen**: Erlassstand/Wortlaut ZH → `baurecht`; Vollzugswege/Behoerdenpraxis/SZ-Recht →
  `energie`.
  **Status: 2 materielle Rechtskorrekturen, 1 Bring-Schuld geschlossen, 2 Matrix-Zeilen, 1 offener Punkt.**

### projekt-lessons ↔ normen ↔ auflagebereinigung — ERST-PRUEFUNG 2026-07-26 (Run 16, Rotation)
- **Ausgangslage:** `projekt-lessons` war seit Bestehen dieses Registers **nie geprueft** (kein
  Paar-Eintrag), obwohl die KB am 25.07. aktualisiert wurde. Bestand: ein einziger Artikel
  (`kispi-lbw-rohdichte-800`, 2619 KISPI, Rohdichte 800 kg/m³ fuer LBW-Beplankungen).
- **Befund 1 (WIDERSPRUCH KB-intern, BESTAETIGT, teilweise behoben):** Die KB-eigene Schreibregel
  (`CLAUDE.md`: «jede Lesson mit Gewerk/BKP, SIA-Phase und den betroffenen Skills taggen, damit
  Erkenntnisse in die Skills zurueckfliessen») ist im einzigen Artikel nicht umgesetzt: `links: []`,
  keine SIA-Phase, kein Skill-Tag. Der Health-Check vom 25.07. hat das Frontmatter dennoch als
  «korrekt» abgenommen — die Tagging-Regel ist nicht Teil seiner Pruefliste. → Frontmatter nachgezogen
  (Gewerk, BKP 271.10/271.13, SIA-Phase 5, Skills brandschutz/unternehmerkontrolle/ausschreibung,
  links auf beide Cross-KB-Ziele). **Offen: die Health-Check-Pruefung F um genau diesen Punkt
  erweitern** — das ist eine Aenderung am Pruefprogramm und gehoert nicht in einen Cross-Lauf.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, gesetzt, hoher Wert):** Lesson und
  `auflagebereinigung/wiki/brandschutz-auflagen-qss.md` dokumentieren **denselben Vorgang** am selben
  Projekt — die Auflage II.19 «Detailplaene brandschutzrel. Innenwaende (Material/Aufbau)» — ohne
  voneinander zu wissen. → bidirektional verlinkt mit klarer Rollentrennung: `auflagebereinigung`
  fuehrt Ziffer/Amt/Frist, `projekt-lessons` die Beweiskette der Material-Substanz.
- **Befund 3 (DOPPELSPURIGKEIT, kosmetisch, gekennzeichnet):** Das Lesson-Fazit schreibt generische
  VKF-/Produktwerte materiell fort (Typ-A-GKB 776 kg/m³ / VKF 18151; Duraline Vario 1'003 / VKF 22636),
  die identisch im fuehrenden `normen/wiki/en-520-gipsplattentypen.md` stehen. → nicht geloescht (sie
  tragen die Fallargumentation), aber als **abgeleitet** gekennzeichnet mit Verweis auf die fuehrende KB.
- **Matrix:** neue Zeile — `projekt-lessons` fuehrt die **Beweiskette des Einzelfalls**, nie generische
  Kennwerte oder Normfundstellen.
  **Status: 1 Frontmatter nachgezogen, 1 bidirektionale Erst-Verlinkung, 1 Ableitungs-Kennzeichnung,
  1 Matrix-Zeile; 1 offener Punkt (Health-Check-Pruefliste).**

### baurecht ↔ planungsgrundlagen (Verfahren, IVHB, PBG-Revision, OEREB-Bezugswege) — geprueft 2026-07-25 (Run 15)
- **Anlass:** pg Run 59 + Health-Check 25.07.; baurecht Buch-Run 51/52.
- **Befund 1 (WIDERSPRUCH-Verdacht → WIDERLEGT):** «Genehmigungsfiktion im Anzeigeverfahren». pg fuehrt
  «gilt als bewilligt, wenn 30 Tage nach Anzeige keine Antwort vorliegt», der baurecht-Wiki-Artikel nennt nur
  die Behandlungsfrist. Der Verifier zeigt: **argumentum e silentio** — die baurecht-Beleg-Schicht
  (Buch-Destillat Bd. 1 S. 415/416) fuehrt sehr wohl «Verfahrensabschluss durch Stillschweigen». Der
  Wiki-Satz sagt, wie lang die Frist ist, nicht was bei Ablauf geschieht. Keine Korrektur an pg.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, gesetzt, hoher Wert):** pg haelt das Destillat des **amtlichen
  IVHB-Leitfadens der Baudirektion ZH** (1.3.2017, 29-Begriffe-Inventar §§ 2/2a/2b/2c/5/6/6a ABV), das
  baurecht nicht besitzt — waehrend `baurecht/wiki/QUESTIONS.md:504-509` genau dazu einen offenen
  needs-verification-Punkt (Fassungsstand nPBG/nABV) fuehrt. `grep «ivhb-baubegriffe»` in baurecht: 0 Treffer.
  → Reziprok verlinkt; im baurecht-QUESTIONS-Punkt als **Teil-Antwort** vermerkt.
- **Befund 3 (STRUKTUR, angemeldet):** Der ZH-Revisionsstrang «Erleichtertes Bauen im Bestand»
  (§ 220a/§ 357 E-PBG, Aufhebung Mehrlaengenzuschlag §§ 23/24 ABV) hat in `wissen/baurecht` **0 Treffer** —
  die fuehrende Recht-KB ist blind fuer die laufende Revision ihrer eigenen Leitnormen, die sie als
  geltendes Recht fuehrt. Kein Widerspruch (Vorentwurf), aber in `baurecht/wiki/QUESTIONS.md` angemeldet
  und in pg reziprok verlinkt.
- **Befund 4 (DOPPELSPUR, Gegenrichtung, offen):** `baurecht/wiki/QUELLEN.md` fuehrt **Beschaffungswissen**,
  das pg laut Matrix gehoert und dort fehlt (OEREBlex-SZ-attachmentId-Kette, geoportal.ch/SG 403-Sperre;
  `grep «oereblex»` in pg: 0 Treffer). Die fuehrende Beschaffungs-KB ist hier aermer als die zuliefernde.
  Nicht gespiegelt (waere Substanzverschiebung) — vorgemerkt fuer den naechsten pg-Lauf.
  **Status: 1 Verdacht widerlegt, 3 Cross-Links/Anmeldungen gesetzt, 1 Punkt vorgemerkt.**

### normen ↔ baurecht (Norm-Fundstellen) — geprueft 2026-07-25 (Run 15)
- **Anlass:** normen Run 20 (NFC-Diff-Vollstaendigkeitsverifikation SIA/VKF), baurecht Buch-Run 51/52.
- **Kein Sachwiderspruch:** die SIA-181-Aussagen beider KBs (Art. 32 Abs. 1 LSV Mindestanforderung vs.
  Abs. 2 Verschaerfung) decken sich; der Anhang-6-LSV-Stoff beruehrt keine SIA/VKF-Fundstelle.
- **Befund (Struktur-Muster 1 «Uebergabe verpufft», behoben):** `normen/wiki/QUESTIONS.md` enthielt
  **0 Treffer** fuer «baurecht» — es war noch nie eine Bring-Schuld aus der Recht-KB dort angekommen.
  baurecht zitiert jedoch vier Normen mit Fundstellenfunktion, die in `normen` **null Praesenz** haben:
  **SIA 491**, **SN EN 12193:2008**, **SN 640 052**, **SN 641 400**. → als eigener Abschnitt in
  `normen/wiki/QUESTIONS.md` angemeldet, inkl. Gegenrichtung (die dortige SIA-380/1:2016-Bring-Schuld
  nennt nur `energie`/`planungsgrundlagen` als Adressaten, obwohl baurecht die Norm ebenfalls fuehrt).
- **Befund (fehlender Hinlink, gesetzt):** `baurecht/wiki/laermschutz-und-nichtionisierende-strahlung`
  nennt SIA 181 dreimal materiell ohne Verweis auf das Destillat → Rule `normen-referenz` nachgezogen,
  inkl. Fassungsvorbehalt SIA 181:2020.
  **Status: 1 Bring-Schuld-Block (4 Normen) + 1 Hinlink; kein Sachwiderspruch.**
- **STATUS-RUECKNAHME 26.07.2026 (Run 16):** «angemeldet» war nicht «angekommen». Der danach gelaufene
  normen-Run 28 (25.07., 22:47) hat den Block **nicht aufgegriffen** und sein Thema ausdruecklich als
  «kein Bring-Schulden-Fall» gewaehlt; `training/norm-inventar.md` hatte 0 Treffer fuer alle vier
  Normbezeichnungen. Ursache: der Nacht-Loop waehlt seine Arbeit aus dem **Inventar**, nicht aus
  `wiki/QUESTIONS.md`. → Die vier Normen sind am 26.07. zusaetzlich als eigene Inventar-Zeilen
  eingetragen (neuer Abschnitt «Bring-Schulden aus anderen KBs», P2, mit Fundstelle und Auftrag);
  in QUESTIONS.md steht der Nachtrag mit der Begruendung. **Verallgemeinerte Regel: eine Uebergabe an
  eine KB gehoert in deren ARBEITSREGISTER, nicht nur in deren Fragenliste** — Fragenlisten werden
  gelesen, Arbeitsregister werden abgearbeitet.
- **WIRKUNGSNACHWEIS 27.07.2026 (Run 17): die Regel greift — erster belegter Fall.** Der normen-Loop
  hat in **Run 30 (27.07.)** zwei der vier Inventar-Zeilen tatsaechlich abgearbeitet: SIA 491 und
  SN EN 12193 tragen jetzt den Vermerk «Bestand geprueft 260727 (Run 30): weder in PL-02 noch in PL-03
  vorhanden — bleibt externe Bring-Schuld (SIA-Shop-Kauf), keine PL-03-Fehlklassierung», bei EN 12193
  zusaetzlich «Nachfolgeausgabe weiterhin abzuklaeren». Dieselben vier Normen waren im Vorlauf zwei
  Runs lang unberuehrt geblieben, solange sie nur in `wiki/QUESTIONS.md` standen. **Damit ist die
  Run-16-Diagnose nicht nur plausibel, sondern verifiziert: der Ort der Anmeldung entscheidet, nicht
  die Qualitaet des Eintrags.** SN 640 052 und SN 641 400 stehen weiter offen (P2, korrekt platziert).
  Status dieses Bezugs von «angemeldet, nicht aufgegriffen» auf **«teilweise abgearbeitet, Mechanismus
  bestaetigt»** gehoben.
- **ANWENDUNG DER REGEL 27.07.2026 (Run 17), 7. Fundort des Musters:** Die Bring-Schuld
  **SIA 181:2020 re-destillieren** stand seit **Run 3 (13.07.2026)** — also 14 Tage — ausschliesslich
  in `normen/wiki/QUESTIONS.md:545` und war nie im Inventar. Genau der Ort, den der Loop nicht
  abarbeitet; entsprechend ist in 14 Tagen nichts geschehen, waehrend `energie` (Ausgabe 2020, +4 dB)
  und `normen` (Ausgabe 2006, +3 dB) unveraendert nebeneinander laufen. → als Inventar-Zeile mit
  **Prioritaet P1** nachgetragen (hoeher als die vier baurecht-Schulden, weil die Rule `normen-referenz`
  fuer LV/Werkvertrag die 2006er Fundstelle zieht), Ruecklink in QUESTIONS.md gesetzt.
  **Beschaffung bleibt Bring-Schuld Raphael** (SIA-Shop, kostenpflichtig — Claude taetigt keine Kaeufe).


### energie ↔ planungsgrundlagen (EN-102-Ausgabe, Regenwasser/Versickerung, PV-Preise) — geprueft 2026-07-25 (Run 15)
- **Anlass:** energie Run 88 + Health-Check 25.07.; pg Run 59 + Health-Check 25.07.
- **Befund 1 (WIDERSPRUCH, BESTAETIGT, korrigiert):** Normbasis der EnFK-Vollzugshilfe EN-102-d (Dez. 2018).
  pg fuehrte «Basis SIA 380/1:2009», energie «:2016». Der Verifier hat das Original-PDF geladen (curl +
  pdftotext): Kopfzeile **jeder** Seite lautet «Ausgabe Dezember 2018 (Basis: Norm SIA 380/1, Ausgabe 2016)».
  Ursache ist der irrefuehrende SharePoint-Dateiname `EN-102-d_Waermeschutz_3801_2009_2018Dez.pdf`.
  → pg an zwei Stellen korrigiert (`energie-heizwaermebedarf-waermeerzeugerleistung:172`,
  `energie-uebersicht:33`), Fallstrick dokumentiert, Verweis auf das fuehrende energie-Destillat gesetzt.
  Die Grenzwerte (0,17 / 1,0 / 0,25 Umbau) waren beidseitig identisch und bleiben unveraendert.
- **Befund 2 (WIDERSPRUCH, BESTAETIGT, korrigiert — Rechtsfehler):** Versickerungspflicht. pg schrieb
  «nach Art. 7 GSchG muss nicht verschmutztes Regenwasser **nicht** versickert werden», energie «versickert
  auf der Parzelle». Verifier am Fedlex-Volltext (SR 814.20, Konsolidierung 01.02.2023): **Art. 7 Abs. 2
  GSchG macht die Versickerung zum Regelfall**; Einleitung/ARA sind die Ausnahmen der Kaskade. Die pg-Aussage
  kehrte die Regel um → korrigiert, amtliche Fundstelle ergaenzt, bidirektionaler Link gesetzt.
- **Befund 3 (VERALTETES, BESTAETIGT, Flag gesetzt):** Die in pg destillierte AWEL-«Richtlinie und Praxishilfe
  **Regenwasserentsorgung**» (2005/V2.2 Maerz 2006) wurde umbenannt und neu aufgelegt; die konsolidierte
  **BBV I (LS 700.21)** verweist im Anhang der anerkannten Regeln der Baukunde auf die Ausgabe **2025**
  («Regenwasser**bewirtschaftung**»). Ausgaben-Flag im Stil der bestehenden WWG/HWSchV-Flags gesetzt; die
  ueberholte «VSA-Richtlinie Regenwasserentsorgung 2002» auf die Nachfolge «Abwasserbewirtschaftung bei
  Regenwetter» (2019) nachgefuehrt. Kein Trim, kein Neuschrieb — GSchG-Substanz bleibt gueltig.
- **Befund 4 (VERALTETES-Verdacht → WIDERLEGT):** CHF/kWp-PV-Preisniveau pg gegen BFE-Marktmediane 2024.
  Scheinwiderspruch: die pg-Tabelle ist eine **datierte Belegtabelle** (Basel 2022, Diemtigen 2023,
  schluesselfertig inkl. MwSt), das energie-Destillat ein **Marktmedian 2024 ohne MwSt**. Keine Wert-Korrektur.
- **Querbefund (Entlastung):** die 82 kaputten `sources:`-Referenzen aus dem energie-Health-Check 25.07. haben
  **keine** Cross-KB-Wirkung (ausschliesslich KB-interne `destillate/…md`-Pfade) und sind von Run 88 behoben.
  **Status: 4 Aktionen (2 Faktenkorrekturen, 1 Ausgaben-Flag + Normnachfolge, 2 reziproke Links); Rollen neu in der Matrix fixiert.**

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung-Ref (Flaechenfaktoren) — geprueft 2026-07-25 (Run 15)
- **Anlass:** grobkosten Health-Check-Re-Audit 25.07.; Delta-Check des seit Run 3 stabilen Kennwert-Felds.
- **Ankerzahlen weiterhin widerspruchsfrei** (4'800 / 4'360 CHF/m² HNF, Quantile 3'460–7'250, ~1'020 CHF/m³ GV,
  Ebmatingen ~855, Wuest-Healthcare-Mediane) — der Null-Befund aus Run 14 haelt fuer die Zahlen.
- **NEU auf der Flaechenfaktor-Ebene (2 Befunde, beide BESTAETIGT, beide Fachentscheid Raphael):**
  (a) Der als «kanonisch, Hub-weit» deklarierte **E1-Regelgeschoss-Wert 0.70** (Wissens-Chef-Entscheid
  12.07.2026) kollidiert mit dem **belegten 0.75** (Band 0.73–0.80) im fuehrenden Flaechen-Artikel
  `immobilienbewertung/wiki/flaechendefinitionen-sia:84`. Gleicher Geltungsbereich, gleiche Bezugsgroesse —
  der Entscheid hat die Gesamtgebaeude-Haelfte (0.60–0.61) harmonisiert und die Regelgeschoss-Haelfte auf
  einem quellenlosen Faustwert festgeschrieben. (b) Die Begruendung «die ~1'020 CHF/m³ beruhen auf GV/HNF 4.7
  (Gesamtgebaeude), das 0.70 dient nur als Geschoss-Kennwert» ist nachrechenbar falsch: **3.3 / 0.70 = 4.71**.
  Mit Gesamtgebaeude-Faktoren ergaebe sich GV/HNF ≈ 5.0–5.5 und ein Anker von ~870–960 CHF/m³.
  → In beiden KBs **needs-decision-Box** gesetzt (additiv, kein Wertwechsel); der Anker bleibt bis zum
  Entscheid gueltig (oberer Rand des eigenen Bands 850–1'050, innerhalb der ±25-%-Spanne).
- **2 Verdachtsfaelle WIDERLEGT:** (a) «Baumasse vs. GV unvereinbar behandelt» — Scheinwiderspruch, weil
  Flaeche/Volumen-Verhaeltnisse gegenueber dem UG-Ein-/Ausschluss invariant sind (GF/Volumen ≈ 1/mittlere
  Geschosshoehe; am Objekt Averecura auf GV-Basis verifiziert: 0.323 / 0.196). Die Faustregel GV ≈ Baumasse ×
  1.25–1.45 darf ausdruecklich **nicht** in die Flaechenfaktoren hineingerechnet werden. (b) Die 0,70/0,60-
  Kopplungsformulierung in der Wuest-Referenz — beide Richtwerte sind unabhaengig aus der Quantilstabelle
  indexiert, kein Faktor im Spiel; das Quellen-Verhaeltnis wandert selbst von 0,70 (Q1.0) auf 0,60 (Q5.0).
  **Damit ist der seit Run 14 gefuehrte niederprioritaere Punkt (4) erledigt — als Scheinbefund geschlossen.**
- **Fehlender dritter Verweis-Guard:** `skills/kostenschaetzung/` → `immobilienbewertung` (0 Treffer; nur
  `grobkosten` ist verlinkt). Vorgemerkt, nicht gesetzt (Skill-Datei, kein KB-Wiki).
  **Status: 2 needs-decision-Boxen; 3 Altpunkte geschlossen (2 widerlegt, 1 als Scheinbefund).**

### wettbewerbs-dna ↔ grobkosten/kostenschaetzung/entwurfs-referenzen (Healthcare-Kennwerte) — geprueft 2026-07-25 (Run 15, rotierend)
- **Anlass:** wettbewerbs-dna Healthcare-Tranche 2 (25.07.: LUKS Sursee, Haus der Demenz Bombach, Taegermoos)
  und Synergie-Befund SYN-13 (Kennwert-Kompetenz waechst am vorgesehenen Ort vorbei).
- **Entlastung fuer die neuen Artikel:** Sursee und Taegermoos publizieren ausdruecklich keine Kostenkennwerte;
  Bombach traegt mit «rund Fr. 18.5 Mio. BKP 1–9 fuer 40 Plaetze» einen harten Anker, der die belegten
  immobilienbewertung-Werte **bestaetigt** statt ihnen zu widersprechen. Kein Widerspruch aus Tranche 2.
- **Befund (WIDERSPRUCH, 2x BESTAETIGT, Sperrvermerk gesetzt):** `entwurfs-referenzen/wiki/parameter-sets/
  healthcare-neubau-zh.json` fuehrt als Healthcare-Kostenreferenz das **Wohnbau-MFH-Band 850–1'050 CHF/m³ GV**
  und beruft sich dafuer auf `wissen/grobkosten` — ausgerechnet die KB, die diese Verwendung fuer «Spital,
  Klinik, Alters-/Pflegeheim, Reha, Praxis» **ausdruecklich untersagt** (`kennwerte.md:66-68`). Zweitens liegt
  das Band deutlich unter dem belegten Healthcare-Niveau (Neubauten ab 2019: **1'053–1'420 CHF/m³ GV**, BKP 2,
  Median ~1'100; acht reale Objekte, fuenf davon Kt. ZH). → Feld **nicht geloescht** (Loeschung = Rueckfrage),
  sondern `status: GESPERRT` + belegter Hinweis im Block ergaenzt; Schema-Validator laeuft weiter (`OK`).
  Wertsetzung ist Fachentscheid Raphael.
- **Befund (VERALTET-Verdacht → WIDERLEGT):** WALD-Anker ~CHF 4'000/m² GF sei ueberholt. Gegenteil: die neue
  8-Objekt-Basis **zitiert und bestaetigt** ihn ausdruecklich («deckt sich mit dem WALD-Anker»).
- **Strukturbefund:** Healthcare-Erstellungskennwerte werden an **vier** Orten materiell gefuehrt
  (machbarkeit/wissensbasis, healthcare-wirtschaftlichkeit/SKILL, immobilienbewertung, kostenschaetzung-Ref)
  ohne benannte Leitquelle → **neue Matrix-Zeile** gesetzt (immobilienbewertung fuehrend fuer CHF/m³ GV +
  CHF/Pflegeplatz; grobkosten fuehrt Healthcare **nicht**).
  **Status: 1 Sperrvermerk, 1 Matrix-Zeile; Wertsetzung offen (Raphael).**
- **NACHTRAG 26.07.2026 (Run 16) — E-2 ist erledigt, aber anders als erwartet; der Restbefund war ein
  anderer.** Am 25.07. um 21:53 (also 8½ h nach Run 15) hat die KB `entwurfs-referenzen` das
  Parameter-Set komplett neu geschrieben (v1.0 → v2.0). Damit ist das beanstandete Band **ersatzlos
  entfallen** — nicht heimlich, sondern begruendet dokumentiert (CHANGELOG + `wettbewerbs-dna/training/
  ETAPPE-3.md`): Muster B6 belegt, dass **keiner** der 11 externen Healthcare-Juryberichte einen
  projektspezifischen CHF/m²- oder CHF/m³-Kennwert nennt. v2.0 fuehrt fuer Healthcare gar keine eigenen
  Kostenzahlen mehr, sondern nur noch den Verweis auf `realwert-sachwert.md` (826–1'420, Median ~1'100)
  — wortgenau deckungsgleich mit der fuehrenden Quelle. **Der Sperrvermerk ist damit gegenstandslos;
  die Wertsetzungs-Frage an Raphael entfaellt** (keinem Phantom-Entscheid nachlaufen). Anzumerken
  bleibt: faktisch wurde damit Option (a) «Feld streichen» gezogen, die Run 15 als rueckfragepflichtig
  markiert hatte — die Entscheidung fiel im KB-Loop, nicht beim Chef.
  **Der Restbefund lag in der anderen Haelfte des Run-15-Befundes und war noch offen:** die
  **Quellenzuweisung** wurde unveraendert nach v2.0 uebernommen (`quelle_kb: wissen/grobkosten/`) —
  ein Werkzeug, das das Set konsumiert, waere also weiterhin auf die untersagte Quelle gelenkt worden.
  Am 26.07.2026 korrigiert: `quelle_kb` → `immobilienbewertung/wiki/realwert-sachwert.md`, m²-NF →
  Skill `kostenschaetzung`, grobkosten explizit als **nicht anwendbar** deklariert (neues Feld
  `quelle_kb_nicht_anwendbar`), JSON weiterhin schema-valide. Zusaetzlich: Abnehmer-Block in
  `realwert-sachwert.md` gesetzt (die fuehrende Quelle kannte ihre Abnehmer nicht) und der
  Haupt-`INDEX.md` der KB von den entfallenen v1.0-Quellen (CURAVIVA/Wueest/2410+2619) befreit.
  **Praezisierung fuer die Weitergabe:** das oft zitierte Teilband **1'053–1'420** gilt nur fuer die
  sechs Neubauten ab 2019; das Gesamtband der acht Objekte ist **826–1'420**, der Median ~1'100 gehoert
  zum Gesamtband. Fundstelle des grobkosten-Verbots korrigiert: `kennwerte.md`, Abschnitt «Healthcare /
  Spezialnutzung» (frueher als `:66-68` zitiert — dort steht heute die MFH-/EFH-Tabelle).
  **Status: erledigt; kein offener Entscheid mehr fuer Raphael.**

### architekten-synobsis ↔ entwurfs-referenzen — ERST-PRUEFUNG 2026-07-25 (Run 15, aus der Rotationsliste)
- **Ausgangslage:** Die beiden KBs beruehrten sich **nie** (0 Grep-Treffer in beiden Richtungen), obwohl
  entwurfs-referenzen den Referenz-Katalog als deklarierten Arbeitsweg fuehrt. Der erste Typologie-Artikel
  (`typologien/bildung.md`, 24.07.) ist ohne eine einzige synobsis-Quelle kompiliert worden.
- **Die Sorge aus dem Auftrag (kollidierende Typologie-Systematiken) bestaetigt sich NICHT:**
  `RAUMTYPOLOGIEN.md` fuehrt **Raumfiguren/Parti**, entwurfs-referenzen fuehrt **Gebaeudenutzungen** —
  zwei Achsen, gleiches Wort, kein Sachwiderspruch.
- **Befund (WIDERSPRUCH, BESTAETIGT, korrigiert):** `architekten-synobsis/CLAUDE.md:50-52` nannte zwei der
  neun Raumtypen anders als der kanonische Katalog-Schluessel («Grosser Raum» statt **«Grosse Halle»**,
  «Skulpturaler» statt **«Skulptularer Raum»**) — die dokumentierte Abfrage `--raumtyp` schlaegt damit fehl.
  Git-Historie: die Schluessel lauteten nie anders. → auf die literalen Schluessel korrigiert, inkl. Hinweis,
  dass «Skulptularer» ein Schreibfehler im **read-only** Quellordner ist und bewusst so bleibt (eine
  Bereinigung am Quellordner waere destruktiv → Freigabe Raphael, hier nicht vorgeschlagen).
- **Erst-Verlinkung gesetzt (beide Richtungen)** + **zwei neue Matrix-Zeilen** (Rollenteilung Katalog/Raumfigur
  gegen Entwurfs-Kennwerte). Offen (Bau-Arbeit, nicht Wissens-Chef): optionales Feld `synobsis_slug` in
  `referenz_projekte`, damit die in den Sets genannten Architekten maschinell auf den Katalog zeigen.
  **Status: 1 Korrektur, 2 Links, 2 Matrix-Zeilen — Paar aus der Rotationsliste ausgetragen.**


### baurecht ↔ planungsgrundlagen (Laerm/ES, Anhang 6 LSV) — geprueft 2026-07-24 (Run 14)
- **Anlass:** baurecht Buch-Run 51 (24.07., Anhang 6 LSV Industrie-/Gewerbelaerm volltextverifiziert); pg Run 58.
- **Befund 1 (FEHLENDE QUERVERLINKUNG, autonom gesetzt, bidirektional):** Der Laerm/ES-Artikel hatte keinen
  Rollen-Link zur pg-Beschaffungsseite (GIS-Layer 0154) und umgekehrt. Reziprok gesetzt analog Abstaende-Muster:
  baurecht `laermschutz-und-nichtionisierende-strahlung` → pg `kartenportale-zonenplan-zh` (Beschaffung dort);
  pg → baurecht (Recht/ES-Grenzwerte hier fuehrend).
- **Befund 2 (DOPPELSPUR mild):** pg `energie-baueingabe-zusatzformulare.md` schreibt die ES-I-IV-Rechtsdefinition
  materiell nach (nur Zonenzuordnung, kein Grenzwert) → mit Recht-fuehrend-Rueckverweis auf baurecht versehen
  (bekanntes Muster «normen-referenz greift beim Schreiben nicht»). Kein Trim, nur Verlinkung.
- **Befund 3 (VERALTETES-Verdacht → UNBESTIMMT):** pg-⚠-Vorbehalt «USG/LSV per 01.04.2026 geaendert» vs. baurecht
  Anhang 3/4/6 Stand 1.11.2023. Adversarialer Verifier Run 14: **UNBESTIMMT mit Entlastungstendenz** — pg behauptet
  KEINE Grenzwert-Aenderung (bestaetigt ES-Fortbestand); Novelle koennte nur Art. 31 ff. betreffen. baurecht NICHT
  veraltet markiert; needs-verification in `baurecht/wiki/QUESTIONS.md` gesetzt (Fedlex SR 814.41 20260401 pruefen).
  **Status: 4 autonome Aktionen (3 Cross-Links bidirektional + 1 needs-verification-Flag); 1 offener Verifikationspunkt (Loop/Web).**

### normen ↔ baurecht (SIA-181-Meilenstein / neue Destillate 405+2056 / tote Links) — geprueft 2026-07-24 (Run 14)
- **Anlass:** normen Run 19 (24.07.) Meilenstein «SIA/VKF KOMPLETT» + neue Destillate sia-405-1998 / sia-592-056
  (SIA 2056:2019) + «4+2 tote Wiki-Links behoben».
- **SCHEINWIDERSPRUCH aufgeloest (kein Handlungsbedarf):** Der vom Health-Check 24.07. gemeldete Konflikt
  «Meilenstein komplett» vs. offener Bring-Schuld «SIA 181:2020 re-destillieren» ist KEIN Sachwiderspruch:
  SIA 181 ist **P2** (norm-inventar Z.74), SIA 181:2020 liegt **nicht im JANS-Bestand** (kostenpflichtige
  Bring-Schuld). «Komplett» = Vertiefungs-Abdeckung der vorhandenen Bestandsdateien (inkl. SIA 181:2006).
  Die normen-KB hat das am selben Tag im Health-Check-Eintrag selbst korrekt verdiktet (Empfehlung: kuenftig
  «Bestand komplett» statt «komplett» formulieren). Kein Cross-KB-Eingriff.
- **FEHLENDE QUERVERLINKUNG: Null** — baurecht nennt weder SIA 405 noch SIA 2056 (0 grep-Treffer), also kein
  unverlinkter Verweis. **Tote Links: verifiziert sauber** (die 6 Run-19-Korrekturen greifen; Restlisten = dokumentierte
  Bestandsluecken). **Status: legitimes Null-Ergebnis + 1 geklaerter Scheinwiderspruch.**

### energie ↔ planungsgrundlagen (Run 87 F116/EN-104 + Private-Kontrolle-Trim) — geprueft 2026-07-24 (Run 14)
- **Anlass:** energie Run 87 (24.07., FAQ F1–F116, 8 Primaerquellen).
- **WIDERSPRUECHE: Null** — U-Werte (0,17/0,25), PV-Pflicht (10 W/m² EBF, EN-104, max 30 kW), MuKEn-2025 (20 W/m²)
  KB-uebergreifend fassungsgleich verifiziert.
- **FEHLENDE QUERVERLINKUNG (autonom gesetzt):** F116 (BAUHERREN-FAQ) verlinkte nur das energie-eigene Destillat,
  nicht die pg-fuehrende EN-104-Formularseite → Querbezug `energie-energienachweis-zh-formulare` gesetzt.
- **DOPPELSPUR (WEITER OFFEN, nicht autonom):** Private-Kontrolle-/EN-Formular-Verfahren — energie-Destillat
  `private-kontrolle-zh.md` traegt die Run-11-Note «pg fuehrend», fuehrt aber im Body weiter die volle Verfahrens-
  Substanz (Drei-Unterschriften-Tabelle, EN-Formular-Nummern). Trim = destruktiv → Rueckfrage Raphael. Seit Run 11 getrackt.
  **Status: 1 autonomer Cross-Link; 1 offener Trim (Entscheid Raphael).**

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung/referenzen (Kennwerte) — geprueft 2026-07-24 (Run 14)
- **Anlass:** grobkosten «Strukturelle Findings nachgezogen» (24.07., nur Struktur/Schreibregel, kein Kennwert-Eingriff);
  immobilienbewertung Run 42 (Delta-Null).
- **Befund: Null (Cross-KB widerspruchsfrei).** Alle geteilten Ankerwerte identisch (4'800 CHF/m² HNF, 4'360 roh,
  ~1'020 CHF/m³ GV, HNF/GF-Faktor 0,70/0,60-0,61, Ebmatingen ~855 CHF/m³). Verweise bidirektional intakt, Rollen-Matrix
  eingehalten, Doppelzaehlungs-Guard (Run 4) intakt. Einzige Notiz: **grobkosten-INTERNE** Kopplungsformulierung
  (kennwerte.md:21 vs. :37-38, 0,70 vs. 0,60) — niederprioritaer, KB-intern, kein Cross-KB. **Status: legitimes Null-Ergebnis.**

### firmengruendung-ch ↔ immobilienbewertung / kunde-bopp (rotierend, Steuern/Holding) — geprueft 2026-07-24 (Run 14)
- **Anlass:** firmengruendung-ch neue Artikel «Steuern bei Gruendung» + «Holding-Struktur ueber bestehende AG» (24.07.);
  kunde-bopp Giebelweg-12-Detailartikel. Erste Cross-Pruefung dieses Paars.
- **Cross-KB: Null.** Verschiedene Domaenen — immobilienbewertung schliesst Grundstueckgewinnsteuer bewusst aus
  (`residualwertmethode.md:288`), keine kollidierende Steueraussage; kein KB-uebergreifender Backlink konventionell noetig.
  Holding-Artikel verdiktet Holding fuer die reale JANS AG aktuell ohne Mehrwert; JANS-AG-Namensblocker separat in
  `ag-gruendungsablauf` erfasst (Namensrecht, kein Holding-Thema).
- **Intra-KB-Linkhygiene (notiert, NICHT autonom editiert — firmengruendung-ch hat eigenen Nacht-Loop, Kollisionsschutz):**
  `steuern-bei-gruendung` hat keine Inhalts-Ruecklinks (nur INDEX/QUESTIONS); `holding-struktur` Frontmatter-`links:`
  unvollstaendig ggue. Body. Empfehlung an den firmengruendung-Loop. **Status: Null Cross-KB; 2 intra-KB-Hygiene-Hinweise.**

### energie ↔ planungsgrundlagen (Erdwaerme F110 / Anergienetz F109 / Naturgefahren) — geprueft 2026-07-23 (Run 13)
- **Anlass:** energie Run 85/86 (23.07.) mit neuen FAQ F109 Anergienetz/kalte Fernwaerme + F110 oberflaechennahe
  Erdwaerme; pg Run 57 Naturgefahren-GIS-Endpunkt.
- **Befund 1 (FEHLENDE QUERVERLINKUNG, autonom gesetzt):** F110 Erdwaerme hatte keinen Verweis auf den amtlichen
  pg-Eignungslayer (`naturgefahren-objektschutz` §6c Erdwaermenutzung + §8b Grundwasserschutzzonen) → beidseitig
  verlinkt (energie F110 → pg §6c/§8b; pg §6c → energie F108/F110/F109). Rollenteilung: pg = beschaffbare
  Eignungsgrundlage (GIS), energie = Physik/Verfahren/Kennwerte.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, autonom gesetzt):** F109 Anergienetz nannte «kommunale Energieplanung»,
  aber nicht die Bezugsquelle → energie F109 → pg `geoportale-uebersicht` (ZH-Waermerichtplan-Layer / LU
  klimafreundlichheizen.ch).
- **Befund 3 (WIDERSPRUCH, adversarial CONFIRMED, autonom korrigiert):** «Indach +60 %» in energie
  `pv-solar-technologien.md` stale, widersprach eigener Run-86-Korrektur (E-R86c) + pg `energie-pv-eignung-typenwahl`
  → Vorbehalt gesetzt, kein Zahlenwert erfunden (KB-intern, aber Cross-KB relevant).
- **Naturgefahren (pg Run 57) ↔ energie:** legitimes Null-Ergebnis (energie deckt Objektschutz/Hochwasser nicht ab).
  **Status: 3 autonome Aktionen (2 Cross-Links bidirektional + 1 verifizierte Korrektur); keine offenen Entscheide.**

### energie ↔ grobkosten ↔ immobilienbewertung (PV-Marktpreise BFE-2024) — geprueft 2026-07-23 (Run 13)
- **Anlass:** energie Run 86 neue PV-Marktpreise BFE-2024 + Indach-Korrektur.
- **Befund: Null.** Weder grobkosten noch immobilienbewertung fuehren eigene PV-Kostenwerte (CHF/kWp, Indach); beide
  deferieren per Verweis auf das energie-Destillat `pv-marktzahlen-kosten-ch-2025` (bidirektional intakt, kein Broken
  Link). Die Run-86-Aktualisierung propagiert automatisch, ohne Pflege in den Konsumenten-KBs. E1/Run-4 unangetastet.
  **Status: legitimes Null-Ergebnis, kein Handlungsbedarf.**

### normen ↔ baurecht (SN 640 066 Ausgabe-Divergenz + SIA-500 + 4 fehlende Links) — geprueft 2026-07-23 (Run 13)
- **Befund 1 (WIDERSPRUCH, adversarial CONFIRMED, autonom aufgeloest):** baurecht fuehrte SN 640 066 als «VSS 40 066
  (2011/2019), neuer Titel Parkieren; Projektierung»; normen-Destillat `vss-640066-1996` nur Ausgabe 1996 mit
  `ersetzt_durch: nicht bekannt`, WAEHREND `vss-640065-2011` (Ziff. 2-3, S. 4) 640 066 bereits mit dem neuen Titel
  zitiert (KB-interne Inkonsistenz). Aufgeloest: normen `ersetzt_durch` Cross-Verweis + [[vss-640065-2011]] in links +
  Body-Nachtrag; baurecht Herkunfts-Vorbehalt. Titel belegt, Ausgabe-Jahr NICHT als gesichert gesetzt.
- **SIA 500 «1 je 25 Parkplaetze»:** in normen `sia-500-2009` bestaetigt, deckungsgleich mit baurechts korrigierter
  Lesart. Der offene ⚠-Flag betrifft nur die Herkunft des alten Falschwerts (getrackt, nicht neu).
- **Befund 2 (FEHLENDE QUERVERLINKUNG, niederprioritaer, NICHT ausgefuehrt):** 4 baurecht→normen-Links bei
  existierenden Destillaten (SIA 380/1, SIA 358, SIA 414/10, SIA 431) — illustrative «weitere Normen»-Aufzaehlungen,
  keine Fundstellen-Pflicht; SIA 414/10 hat zusaetzlich moeglichen Ausgabe-Mismatch (414/10 vs. 414:1980, vor
  Verlinkung pruefen). Als Loop-Arbeit geflaggt.
  **Status: 1 verifizierter Widerspruch aufgeloest (normen+baurecht); 4 Links niederprioritaer offen.**

### baurecht ↔ planungsgrundlagen (Naturgefahren/Gefahrenzonen Dangling-Delegation) — geprueft 2026-07-23 (Run 13)
- **Befund (FEHLENDE QUERVERLINKUNG, strukturell, autonom teil-gesetzt):** pg `naturgefahren-objektschutz` deklariert
  «fuer den Recht-Status ist baurecht fuehrend», baurecht hielt aber kein Gefahrenzonen-Destillat und keinen
  INDEX-Anker (nur der Gewaesserraum-/Hochwasser-Aspekt in `abstaende-und-hoehen`, Run-8-Rueckverweis). Delegation
  zeigte ins Leere. Aktion: baurecht INDEX-Backlog-Anker «Naturgefahren/Gefahrenzonen (Rechtsstatus rote/blaue Zone)»
  gesetzt, der die pg-Delegation als Bring-Schuld sichtbar macht — OHNE Destillat zu erfinden.
- **§ 22 WWG Bring-Schuld (Verweis-Check):** pg hat inzwischen sauberen Verweis auf baurecht (markiert als
  Bring-Schuld, «vor verbindlicher Aussage gegenpruefen»). Kein neuer Handlungsbedarf pg-seitig. Bleibt getrackt.
  **Status: 1 autonomer INDEX-Anker; Gefahrenzonen-Destillat = Loop-Arbeit/Bring-Schuld (kein Entscheid).**

### projekt-lessons ↔ normen (EN 520 / VKF-BRL 15) + energie graue-energie ↔ normen (rotierend) — geprueft 2026-07-23 (Run 13)
- **projekt-lessons ↔ normen (EN 520):** 0 Widerspruch — der neue Lesson-Artikel `kispi-lbw-rohdichte-800` ist mit
  dem normen-Destillat `en-520-gipsplattentypen` deckungsgleich (DFIR=Typ D≥800 kg/m³, Rohdichten konsistent). Der
  Cross-KB-Verweis besteht bereits beidseitig INLINE (Lesson:37 → en-520; en-520:44 → Lesson); die frontmatter-`[[]]`
  sind KB-intern, daher fuer diesen Cross-KB-Bezug nicht die Konvention — kein Fix noetig. Lesson→normen
  `synthese-sia-vkf` (VKF-BRL 15 EI30-mit-Loeschanlage) waere additiv, aber niederprioritaer (dichte-fokussierte
  Lesson) → geflaggt, nicht gesetzt.
- **energie graue-energie ↔ normen sia-2040 (FEHLENDE QUERVERLINKUNG, autonom bidirektional gesetzt):** graue-energie
  zitierte SIA 2032/2040 ohne normen-Link; normen `sia-2040-2017` ohne energie-Rueckverweis → beidseitig verlinkt
  (energie = angewandte Kennwerte, normen = Norm-Ziffern/Rechenkette). 0 Kennwert-Widerspruch (normen fuehrt keine
  eigenen kg-CO2-Zahlen). Praezisierung: der Punkt D8 «graue Energie ZH» gehoert zu planungsgrundlagen, nicht normen.
  **Status: 1 bidirektionaler Cross-Link autonom; 1 Link (Lesson→VKF-BRL 15) niederprioritaer geflaggt.**

### normen ↔ auflagebereinigung (SIA 181 Schallschutz Federführung, Erst-Check) — geprueft 2026-07-22 (Run 12)
- **Anlass:** auflagebereinigung hat am 22.07. die QUESTIONS-Lücke «Schallschutz SIA 181 Federführung» geklärt
  (neuer Abschnitt in `auflagentypen-gewerkzuteilung.md`). SIA 181 ist laut Rollen-Matrix normen-geführt.
- **0 Kennwert-/Aussage-Widerspruch:** auflagebereinigung zitiert **keine** dB-Werte, nur die Ziffer-Struktur
  (4.2/4.3/4.4, 2.2.3/2.2.4) — exakt deckungsgleich mit dem normen-Destillat `sia-181-2006`. Kernaussage «SIA 181
  weist keine Federführung zu» ist normkonform (Norm regelt Anforderungswerte, keine Zuständigkeiten). **KEINE
  Doppelspur:** auflagebereinigung ergänzt nur die organisatorische Gewerk-Ebene (genuin eigene Domäne), schreibt
  keine Norm-Substanz fort. Verlinkung auflagebereinigung → normen vorbildlich (sources + inline).
- **Befund (VERALTETES, mittel):** auflagebereinigung verankert auf **SIA 181:2006** ohne Fassungs-Vorbehalt,
  obwohl normen die neuere **SIA 181:2020** flaggt (Re-Destillat ausstehend); die Supersession lebte nur in
  normen-REGISTER/QUESTIONS, **nicht im Destillat-Frontmatter** — wer nur das verlinkte Destillat liest, sah sie nicht.
- **Aktion (autonom):** `ersetzt_durch`-Hinweis ins normen-Destillat-Frontmatter gesetzt; Fassungs-Vorbehalt-Kasten
  in die auflagebereinigung-SIA-181-Sektion (Ziffern beim Re-Destillat gegenprüfen). **Status: bereinigt + verlinkt;
  Paar neu im Register; Bring-Schuld SIA 181:2020 Re-Destillat bleibt (normen-Loop).**

### normen ↔ baurecht (SN 640 060 + SIA-500-Follow-up + DIN-Ersetzung) — geprueft 2026-07-22 (Run 12)
- **Befund 1 (WIDERSPRUCH → adversarial TEILWEISE, wichtig):** baurecht `fahrzeugabstellplaetze` (Buch-Run 33)
  führte «SN 640 060 existiert nicht / Fehlzitat entfernt». normen hält `vss-640060-1994` (established, echtes VSS-PDF).
  **Verifier-Verdikt TEILWEISE:** das normen-Destillat ist KEINE Halluzination (gegen baurechts EIGENES Buch-Destillat
  Bd. 2 S. 914-915 gegengeprüft, das SN 640 060/065/066 als reale ergänzende Zweiradverkehr-Normen zitiert). Der
  baurecht-Wiki-Fliesstext war eng korrekt («in der Parkierungsnormen-Struktur nicht»), aber die «Fehlzitat/existiert
  nicht»-Etikettierung widersprach der eigenen Buchquelle → **Rollen-Korrektur** (640 060 = Grundlagen, 640 065 = Bedarf,
  640 066 = Geometrie) + Cross-Link, statt Löschung. Autonom umgesetzt in Wiki + QUESTIONS + INDEX-Zeile.
- **Befund 2 (SIA-500-Follow-up):** der Run-11-Kennwert-Flag («1/25 Wohnungen/100 m» vs. SIA 500:2009 Ziff. 9.7.2
  «1 je 25 Parkplätze») ist vom baurecht-Loop NICHT aufgelöst worden — steht sachgerecht offen im Haupttext (kein
  Live-Fehler, korrekt geflaggt). Aber der **INDEX** trug den umstrittenen Wert + alte Bezeichnung «SN 521 500» noch
  als Faktum → autonom auf den geflaggten Stand nachgezogen. Wert selbst bleibt offen (nicht raten).
- **Befund 3 (DIN-Ersetzung 22.07.): NULL-BEFUND** — grep «DIN 276/4102/1356» in baurecht = 0 Treffer; die am 22.07.
  in normen geschlossene ersetzt_durch-Lücke berührt baurecht nicht.
- **Status: bereinigt + verlinkt; SIA-500-Kennwert-Herkunft weiter offen (baurecht-Loop).**

### baurecht ↔ planungsgrundlagen (WWG/Naturgefahren, GSchV-Doppelspur) — geprueft 2026-07-22 (Run 12)
- **0 materieller Cross-KB-Widerspruch.** Das Wasserrecht-Fundament (WWG/HWSchV → WsG/WsV per 1.6.2026) ist zwischen
  beiden KBs durchgängig und korrekt nachgeführt; der baurecht-KB-weite Nachzug ist laut baurecht-QUESTIONS (Buch-Run 50)
  abgeschlossen. Der frische K45-SZ-Naturgefahren-Stoff (pg Run 55/56) ist reines Geodatum/Connector, keine Recht-Kollision.
- **Befund 1 (VERALTETES, weich, autonom):** pg `kartenportale-naturgefahren-objektschutz.md` Z.407 nannte § 22 WWG im
  Präsens; der Aufhebungs-Flag stand ~14 Zeilen entfernt. → Inline-Kurzflag an der Bullet gesetzt.
- **Befund 2 (DANGLING-DELEGATION, nicht autonom):** pg delegiert den § 22 WWG-Nachfolge-§ an baurecht als «führend»,
  aber baurecht führt Gefahrenbereiche/§ 22 WWG in KEINEM Artikel (0 Treffer) — die Delegation zeigt ins Leere.
  Bring-Schuld in der führenden KB baurecht. → **Bericht.**
- **Befund 3 (DOPPELSPUR, nicht autonom, WEITER OFFEN):** GSchV Art. 41a/41b-Bemessungstabelle materiell in baurecht
  `abstaende-und-hoehen` UND pg `abstandsvorschriften-wald-gewaesser` (Zahlen identisch, kein Widerspruch); Trim auf
  Verweis = Umstrukturierung, seit Run 7/8 offen. **Status: 1 Inline-Flag autonom; 2 Struktur-Punkte offen.**

### energie ↔ planungsgrundlagen (Private Kontrolle, CLT-U-Werte) — geprueft 2026-07-22 (Run 12)
- **0 Kennwert-Widerspruch:** EN-Formular-Matrix, Drei-Unterschriften-Tabelle, EN-104-30-kW-Deckel, CLT-λ (0,12),
  WDV §8/6 vs. EN-110-ZH-Trennung — alle fassungsgleich. Private-Kontrolle-Verlinkung (Run 11) hält bidirektional.
- **Befund 1 (VERALTETES Frontmatter, autonom):** energie `private-kontrolle-zh.md` `last_updated` 2026-06-11 trotz
  Run-11-Edit vom 21.07. → auf 2026-07-21 nachgezogen.
- **Befund 2 (FEHLENDE QUERVERLINKUNG, autonom):** pg `energie-uebersicht` (CLT-Abschnitt) destilliert dieselbe
  Stora-Enso-Doku wie energie `clt-bauphysik-stora-enso`, ohne Verweis → Querlink zum führenden energie-Destillat gesetzt.
- **Befund 3 (DOPPELSPUR, nicht autonom, WEITER OFFEN):** Private-Kontrolle-Rollen-Trim (Verfahrens-Substanz aus dem
  energie-Destillat an pg abgeben) seit Run 11 offen. **Status: 2 Fixe autonom; 1 Rollen-Trim offen.**

### firmengruendung-ch ↔ spec ↔ kunde-bopp (Nach-Gründung AHV/BVG/UVG/MWST, Erst-Check) — geprueft 2026-07-22 (Run 12)
- **Anlass:** neuer firmengruendung-Artikel `nachgruendung-anmeldungen` (22.07.). **0 Widerspruch, 0 substanzielle
  Doppelspur:** Gründungs-Fachfakten (MWST-Schwelle 100'000, Fristen, BVG-Eintritt 22'680) liegen ausschliesslich in
  firmengruendung-ch; spec führt sie nur als Next-Step-Stichzeile + Fall-Log — saubere Arbeitsteilung (firmengruendung =
  Fakten, spec = Methode/Live-Fall). Namens-Lektion «JANS AG durch JANS GmbH blockiert» beidseits konsistent.
- **kunde-bopp: NULL-BEFUND bestätigt** (Run 10) — «AG/Genossenschaft» dort nur Identifikatoren, kein Fachwissen.
- **Nur gemeldet (schwache Links, KEIN autonomer Edit):** spec-Output ist ein datiert-eingefrorenes Fall-Log (nicht editieren);
  die tragfähige Verlinkung gehört ins lebende `logbuch/fristen.md` (Betriebshaftpflicht-/Anmeldungs-Pendenz, auf die der
  neue Artikel bereits zeigt). **Status: kein Befund; Feld aus prioritärer Rotation, sauber.**

### baurecht ↔ energie (BVV-Meldeverfahren §§ 2a-2e, Bring-Schuld-Abschluss) — geprueft 2026-07-21 (Run 11)
- **Anlass:** baurecht Buch-Run 50 (20.07.) hat die §§ 2a-2e BVV integriert = die Run-10-Bring-Schuld.
- **Verifiziert am raw-BVV.** 0 Widerspruch: §-Zuordnung/Schwellen (2 m³, 2,5 m)/Fristen (30 T) deckungsgleich,
  BVV **Nachtrag 133** beidseits, EnerG § 11 (nicht § 10a) hält. **Bring-Schuld materiell ERFÜLLT**,
  QUESTIONS als ✅ ERLEDIGT geführt; bidirektionale Verlinkung vorhanden (Run-10-Fix hält).
- **Aktion:** QUESTIONS-Titelzeile «§§ 2a-2c» → «§§ 2a-2e» korrigiert (Body war korrekt).
- **Offen (nicht autonom, Struktur):** geringfügige Doppelspur — baurecht restatet die WP-Detailschwellen
  (2 m³ / 2,5 m / Lärmschutznachweis), die laut Rollen-Matrix energie führt; trimmbar auf reinen Verweis,
  aber Trim über KB-Grenze → Bericht (mittel-tief, beide fassungsgleich, nur Pflege-Risiko).
- **Status: bereinigt; Bring-Schuld geschlossen; 1 offener Struktur-Punkt (WP-Schwellen-Doppelspur).**

### normen ↔ baurecht (Norm-Fundstellen SIA/VKF/VSS + SIA-500-Kennwert) — geprueft 2026-07-21 (Run 11)
- **Anlass:** normen Audit-B (26 Destillate registriert) + baurecht Buch-Run 50. Der frische WsG/WsV/BVV-Stoff
  = Bundes-/Kantonsrecht, **keine** neuen SIA/VKF/VSS-Fundstellen → Prüfung an den stehenden Norm-Nennungen.
- **Befund adversarial verifiziert (TEILWEISE, wichtig):** parkierung.md nannte «SN 521 500» als massgebend.
  Die **Nummer ist NICHT abgelöst** (persistente SN-Registriernummer der geltenden SIA 500:2009) — der
  ursprüngliche «veraltete Bezeichnung»-Vorwurf war zu stark. Der **reale Mangel:** (a) unpräzise Zitierung
  (Ausgabe/Ziffer fehlten) → korrigiert auf «SIA 500:2009, Ziff. 9.7» + Destillat-Link; (b) **Kennwert-Mismatch**
  — Wiki «1 je 25 **Wohnungen** / 100 m» vs. SIA 500:2009 Ziff. 9.7.2 «1 je weitere 25 **Parkplätze**, keine 100 m».
  Herkunft des Wiki-Werts offen → **Wert NICHT geändert, geflaggt** (QUESTIONS 2026-07-21).
- **Aktion (fehlende Querverlink./veraltet, autonom):** SIA 181 (grundlagen) mit Destillat-Link + Fassungs-
  vorbehalt (2006/⚠2020); «VSS SN 640 291a» → «VSS 40 291 (2021)»; VKF-BRL 12-15 (bauausfuehrung) verlinkt.
- **Doppelspur:** weitgehend KEIN BEFUND (baurecht diszipliniert, «kein Volltext-/Tabellenzitat»).
- **Offen (Bring-Schuld normen):** SIA 181:2020 Re-Destillat (bekannt, REGISTER). **Status: bereinigt + verlinkt; 1 Kennwert-Flag, 1 Bring-Schuld.**

### energie ↔ planungsgrundlagen (Private Kontrolle ZH) — geprueft 2026-07-21 (Run 11)
- **Anlass:** energie Run 83. **0 Widerspruch** zwischen den KBs: WP-Weichen korrigiert-fassungsgleich,
  WDV §8 Abs.6 (5 kWh/m² Neubau) vs. EN-110-ZH (12 W/m² Bestand) sauber getrennt, EN-104 30-kW übereinstimmend;
  Formularmatrix EN-101…141 bewusst abgegrenzt (expliziter Querbezug-Block, korrekt umgesetzt).
- **Befund (mittel):** `energie/destillate/private-kontrolle-zh` und `pg/wiki/energie-private-kontrolle-zh`
  destillieren dasselbe AWEL-Merkblatt, ohne gegenseitigen Verweis. → **beidseitig verlinkt** (pg führend
  fürs Verfahren, energie hält Quellstand). Rollen-TRIM (Substanz zusammenführen) nicht autonom → Bericht.
- **Nur gemeldet (energie-intern):** destillate/INDEX.md Z.166 trägt die in Run 82 widerlegte
  «Kühlmöglichkeit»-Aussage (Z.167 korrigiert) = Teil der 35 Dubletten-Zeilen (Health-Check 21.07.).
- **Status: bereinigt + verlinkt; 1 offener Struktur-Punkt (PK-Rollen-Trim); 1 energie-Loop-Backlog gemeldet.**

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung/referenzen (Kennwerte) — geprueft 2026-07-21 (Run 11)
- **0 Zahlen-Widerspruch:** alle deckungsgleichen Kennwerte exakt identisch (Wüest-Median 4'360 /
  Quantile 3'460-7'250 / mind. 4'800 / GF 2'840-2'330 / SIA-2020 MFH 2'800 / m³-Brücke ~1'020 CHF/m³).
  Faktor 0.70/0.60-61 kontextabhängig aufgelöst (E1-Entscheid 12.07.); **Doppelzählungs-Guard (Run 4) weiter gültig**
  (beide zitieren dasselbe Prinzip/Datum).
- **Befund (mittel):** immobilienbewertung `realwert-sachwert` verwies nicht auf die laut Matrix führende
  Median/Quantile-Quelle (kostenschaetzung-Referenzdatei); grobkosten tat es korrekt. → **Link gesetzt**.
- **Veraltet (tief, ±25%-Spanne abgesichert):** realwert-BFS-Teuerung auf alter Basis (Okt-2020=100) ggü.
  grobkosten (rebasiert Okt-2025=100) → KB-intern immo (Abgleich `investorenmarkt-makro`); führende
  kostenschaetzung-Referenzdatei teuerungsseitig am ältesten Stand (Kernzahl 4'360→4'800 überall gleich).
- **Status: bereinigt + verlinkt; 2 Veraltet-Nebenpunkte gemeldet (KB-intern/Skill-Referenz).**

### wettbewerbs-dna ↔ entwurfs-referenzen (Schulbau-Handoff B5, Erst-Check) — geprueft 2026-07-21 (Run 11)
- **Substanzielle Überschneidung JA** (echter Produzent→Konsument-Handoff `schule-volksschule-ch.json`).
  **0 Kennwert-Widerspruch:** HNF/GF 0.53, Klassenzimmer 64-75, 900-m²-Schwelle, 2:1, Kostendach 1.6-1.8 Mio/KZ
  deckungsgleich; chf_m3_gv bewusst weggelassen (→grobkosten). Beidseitig verlinkt (Pfad-Strings, cross-KB korrekt).
  Kein veralteter Stand (B5-Set 21.07. nach B6-Benchmark 20.07., zitiert ihn).
- **Befund (mittel, prozessual):** JSON = eingefrorenes Derivat v1.0 ohne Regenerierungs-Trigger → **Drift-Guard
  in kennwerte-schulbauten §8 gesetzt** («bei B4/B6-Änderung neu ableiten»). Führend = wettbewerbs-dna.
- **Nur gemeldet (KB-intern wettbewerbs-dna):** geerbte «23 statt 22 Juryberichte»-Zählung (Boppartshof fehlt),
  nf_gf_faktor-Etikett (NF/GF vs. HNF/GF), erschliessung «atrium» als Einzelwert. **Status: verlinkt; Paar neu im Register.**

### energie ↔ baurecht (§ 2a BVV Wärmepumpen-Meldeverfahren) — geprueft 2026-07-20 (Run 10)
- **Anlass:** frischer Stoff energie Run 81/82 (§ 2a/§ 2c BVV, LS 700.6, WP-Meldeverfahren; F101-Korrektur).
- **Null-Ergebnisse (ausdrücklich):** BVV **fassungsgleich** (beide Nachtrag 133, Datei `700.6_3.12.97_133.pdf`);
  EnerG **fassungsgleich** (beide Nachtrag 129); Fossilfrei-Neubau-Gebot in beiden korrekt an § 11 EnerG
  (kein Rückfall auf § 10a — Run-9-Ergebnis hält); F101-«Kühlmöglichkeit»-Fehler war rein energie-intern,
  kein Cross-KB-Ausläufer; § 325a PBG sauber verlinkt. **0 Widerspruch, 0 Veraltetes.**
- **Befund 1 (CONFIRMED, mittel):** FEHLENDE QUERVERLINKUNG (beide Richtungen). Das neue Destillat
  `energie/destillate/bvv-zh-meldeverfahren-...` verlinkte nur energie-intern; baurecht
  `baubewilligungsverfahren.md` verwies für energie nur auf den Energienachweis, nicht aufs Meldeverfahren.
  → gegenseitiger Querbezug gesetzt; Rollenteilung fixiert (energie = Rechtsgrundlage/WP-Weichen, baurecht
  = Verfahrenstyp-Systematik).
- **Befund 2 (CONFIRMED, mittel):** VOLLSTÄNDIGKEITSLÜCKE in baurecht — «Meldeverfahren» kommt in keinem
  baurecht-Hauptartikel vor (0 Treffer), obwohl §§ 2a-2c BVV im eigenen raw voll vorliegen; der 4.
  ZH-Verfahrenstyp (WP/Solar) fehlt in der Enumeration. → **NICHT autonom destilliert** (Umstrukturierung
  + E1-analoge Doppelspur-Gefahr): als baurecht-QUESTIONS-Bring-Schuld aufgenommen, arbeitsteilig zu energie.
- **Befund 3 (CONFIRMED, tief):** VERWECHSLUNGSRISIKO § 2a **ABV** (LS 700.2, Klein-/Anbauten) vs. § 2a **BVV**
  (LS 700.6, Meldeverfahren) — gleiche Nummer, andere Erlasse. → Abgrenzung im baurecht-Querbezug-Block markiert.
- **Status: verlinkt/bereinigt; 1 Bring-Schuld (baurecht-Meldeverfahren-Destillat, Loop-Arbeit).**

### energie ↔ planungsgrundlagen (§ 2a BVV WP-Meldeverfahren / WTA-Formular) — geprueft 2026-07-20 (Run 10)
- **Anlass:** derselbe Run-82-Stoff; Meldeverfahren ist ein Verfahren → planungsgrundlagen matrix-führend.
- **Null-Ergebnisse:** Fakten deckungsgleich (3 Verfahrenswege, LN-1a/1b, AWEL-Gewässerschutzgesuch Erdsonde);
  2-m³-/§-2a-Kriterien nur in energie, von pg nirgends abweichend dargestellt. **0 Widerspruch, 0 Veraltetes,
  keine echte Textdoppelung.**
- **Befund 1 (CONFIRMED, hoch):** FEHLENDE QUERVERLINKUNG (beide Richtungen) — das energie-Destillat und der
  pg-WTA-Artikel `energie-baueingabe-zusatzformulare.md` (der das Meldeverfahren voll beschreibt) zeigten
  nirgends aufeinander. → Querbezug in pg gesetzt (WTA-Weiche → energie-Rechtsgrundlage § 2a BVV); energie-Block
  zeigt zurück auf pg (Formular/Verfahren).
- **Befund 2 (CONFIRMED, mittel):** FÜHRUNGSLÜCKE — die verfahrensführende KB (pg) enthielt die WP-Meldeverfahren-
  Entscheidungsregel weder selbst noch als Verweis; die § 2a/§ 2c-Grundlage liegt matrix-konform in energie.
  → Brückenlink schliesst die Lücke (kein Trim/keine Umstrukturierung nötig).
- **Status: bereinigt.**

### normen ↔ planungsgrundlagen ↔ auflagebereinigung (Brandschutz/GVZ/BMA/Sprinkler) — geprueft 2026-07-20 (Run 10)
- **Anlass:** pg Run 54 (§5ao/§5ap Feuerwehrplan Störfall ABC / StFV) + neuer auflagebereinigung-Artikel
  `gvz-einreichung-bma-sprinkler`.
- **Null-Ergebnisse (ausdrücklich):** **0 Kennwert-Widerspruch** (GVZ-Schwellen deckungsgleich mit VKF-BRL);
  **keine Doppelspur** GVZ-Einreichungsweg pg↔auflagebereinigung (pg-Wegweiser führt ihn nicht, nur der neue
  Artikel); die frischen §5ao/§5ap schreiben **keine** VKF-Ziffern materiell fort (Musterplan-Beispielwerte
  markiert) — das wiederkehrende «VKF-Wortlaut fortgeschrieben»-Muster trat **nicht** auf; Zuständigkeit
  GVZ (Brandschutzbehörde + Inspektionsstelle) vs. Feuerpolizei konsistent; Risikogruppen-Turnus = GVZ-Vollzug,
  korrekt nur in auflagebereinigung (kein Konflikt mit normen).
- **Befund 1 (CONFIRMED, mittel):** der GVZ-Artikel trägt norm-geführte Schwellen (BMA >10/600 m² = VKF-BRL
  20-15 Ziff. 4.1; SPA >10/100 m² = 19-15 Ziff. 5.1; Ausserbetriebsetzung = 20-15 Ziff. 3.10 / 19-15 Ziff. 4.4)
  ohne normen-Link. Mildernd: GVZ-Weisung ist ein eigenständiges kantonales Dokument, das die Werte selbst trägt
  (kein Erfinden/Duplizieren von VKF-Wortlaut). → Querbezug beidseitig gesetzt (auflagebereinigung → normen führend;
  normen-JANS-Praxis-Transfer → konkreter GVZ-Artikel).
- **Befund 2 (CONFIRMED, tief):** reziproker Backlink `brandschutz-auflagen-qss` → `gvz-einreichung-bma-sprinkler`
  fehlte. → gesetzt.
- **Status: bereinigt + verlinkt.**

### kunde-bopp ↔ firmengruendung-ch (Erst-Check, Rotation) — geprueft 2026-07-20 (Run 10)
- **Befund:** **Legitimes Null-Ergebnis — keine substanzielle Überschneidung.** firmengruendung-ch führt weder
  «Genossenschaft» noch «UID/CHE-» (0 Treffer); die Rechtsform-Tabelle deckt nur Einzelfirma/Kollektiv-Komm./
  GmbH/AG/Ltd ab. In kunde-bopp sind «Genossenschaft»/«AG» reine Identifikatoren (WOMA = Genossenschaft
  CHE-103.976.168; Nova = AG CHE-403.795.970), kein materielles Rechtsform-Fachwissen → **0 Widerspruch,
  0 Doppelspur, kein sinnvoller Querlink.**
- **Nebenbeobachtung (KB-intern, NICHT Cross-KB):** firmengruendung-ch hat keinen Genossenschafts-Artikel
  (interne Coverage-Lücke; kunde-bopp liefert dafür keine verallgemeinerbaren Inhalte). Nur vermerkt.
- **Aktion: keine.** Paar aus der prioritären Rotation genommen (künftig nicht mehr vorrangig gegeneinander prüfen).
- **Status: kein Befund.**

### energie ↔ normen (SIA 279 Bemessungswert, VKF-BRL 13-15, SIA 2024) — geprueft 2026-07-19 (Run 9)
- **Anlass:** neuer Stoff aus energie Run 79/80 (18.07.2026).
- **Befund 1 (CONFIRMED, hoch):** WIDERSPRUCH. Das neue Destillat
  `naturdaemmstoffe-bemessungswerte-brandverhalten` fuehrte «Bemessungswert **immer hoeher** als
  Nennwert (Sicherheitszuschlag)» — am Normvolltext widerlegt: SIA 279:2018 **Ziff. 3.2.2.1**
  (werkmaessig hergestellte Daemmstoffe nach europaeischen Normen: Bemessungswert = Nennwert,
  **ohne Zuschlag**), Zuschlag nur fuer Ortdaemmstoffe (Ziff. 3.2.2.2). Die Sicherheiten stecken in
  der Nennwert-Ermittlung (Ziff. 2.2.3.1: 23 °C/50 % r.F., Alterung 25 J, λ90/90).
  → Passage korrigiert, «Zuschlagsformel» als Scheinluecke geschlossen, Weg fuer Baustroh auf
  Ziff. 3.5/SIA-Register gestellt.
- **Befund 2 (CONFIRMED, hoch):** energie fuehrte den SIA-279-Volltext als «nicht gelesen
  (kostenpflichtig)», obwohl er im JANS-Normenbestand liegt und seit 12.07.2026 in `normen`
  destilliert ist (`established`). Ursache des Widerspruchs oben. → Querbezugs-Block gesetzt,
  Frontmatter auf SIA 279:2018 korrigiert.
- **Befund 3 (CONFIRMED, mittel):** VKF-BRL 13-15 ohne Verweis auf das normen-Destillat zitiert;
  Terminologie abweichend («RF3 hinnehmbarer Beitrag» statt Ziff. 2.1 «zulaessiger Brandbeitrag»),
  Holzbeispiele ungedeckt. → verlinkt, Terminologie korrigiert, Negativbefund praezisiert auf
  «keine produktbezogene EN-13501-1-Klasse/VKF-Anerkennung fuer Baustroh» (der **Klassierungsweg**
  ist belegt: Ziff. 2.4.1 EN 13501-1 → RF, Ziff. 2.4.4 BKZ → RF, Kapselungsregel K30-RF1).
- **Befund 4 (CONFIRMED, mittel):** normen fuehrte die SIA-2024:2021-Bring-Schuld unveraendert als
  «kostenpflichtiger Volltext», obwohl energie Run 80 eine **freie amtliche Quelle** erschlossen hat
  (SIA-Grundlagenbericht Revision 2021 inkl. C1:2024). → REGISTER-Zeile ergaenzt, Bring-Schuld auf
  Anhang A/F + zitierfaehige Ziffern-Fundstelle **verengt** statt geschlossen.
- **Befund 5 (REFUTED):** «Tabelle 6 der SIA 380/1» sei eine unverifizierbare Norm-Fundstelle. Es
  ist eine **Erlass**-Aussage (WDV § 2 Abs. 1 lit. b) und am Erlass vollstaendig belegt — keine
  Uebergabe an `normen` noetig. *(Nebenbefund, noch offen: die Klammer «(Heizwaermebedarf, § 3)» im
  WDV-Destillat ist auf «Verweis in WDV § 2 Abs. 1 lit. b» zu korrigieren.)*
- **Status: bereinigt; 1 Nebenbefund offen (WDV-Klammer), Bring-Schuld SIA 2024 verengt.**

### energie ↔ planungsgrundlagen (VHKA, WDV, Oel-/Gasheizung) — geprueft 2026-07-19 (Run 9)
- **Befund 1 (CONFIRMED, mittel):** VHKA-Stoff wird in beiden KBs gefuehrt (pg: Formularbefund
  EN-101c/KEnV § 26 SZ; energie: materielle ZH/SZ-Gegenueberstellung) — **null gegenseitige
  Verweise**. → bidirektionaler Prosa-Querbezug gesetzt (nicht im Frontmatter-`links`-Feld, das
  erzeugt tote Backlinks). Fuehrend: `energie` fuer Rechtsgrundlage/Schwellenwerte, `planungs-
  grundlagen` fuer Formular/Verfahren.
- **Befund 2 (CONFIRMED, tief):** planungsgrundlagen zitiert WDV-Paragrafen, ohne auf das
  primaerquellen-verifizierte WDV-Destillat der KB energie zu zeigen (grep «LS 700.211» in
  planungsgrundlagen: 0 Treffer). → Verweiszeile ergaenzt.
- **Befund 3 (REFUTED):** «pg spricht von verschaerfter SZ-Anforderung, energie belegt das
  Gegenteil». Die Praemisse «SZ in allen Parametern milder» ist am energie-Destillat selbst falsch
  (§ 27 EnV 1 SZ kennt **keine** Minergie-Befreiung, ZH schon → SZ dort strenger). Kein Widerspruch;
  das Formularwort «verschaerft» bleibt als Zitat stehen, mit Pruefvorbehalt.
- **Befund 4 (REFUTED):** fehlende Bruecke Oel-/Gasheizungs-Ersatzpflicht. Die Bruecke existiert
  bereits eine Ebene hoeher (`energie/wiki/energienachweis-zh.md` Z. 40-44, inkl. Fuehrungs-
  klaerung) — der Leser hatte nur auf Destillat-Ebene gesucht. Trotzdem als **billiger Zusatznutzen**
  beidseitig verlinkt.
- **Befund 5 (REFUTED):** Doppelspur Betriebsoptimierung mit angeblicher Luecke bei planungs-
  grundlagen. Umgekehrt richtig — die Praezisierungs-Schuld lag bei `energie` (siehe Paar
  energie ↔ baurecht, Befund 1). **Zwei unabhaengige Agenten sind ueber dieselbe Stelle gestolpert.**
- **Status: bereinigt.**

### energie ↔ baurecht (Energienachweis-/Vollzugsrecht ZH) — geprueft 2026-07-19 (Run 9)
- **Befund 1 (CONFIRMED, hoch):** WIDERSPRUCH. `BAUHERREN-FAQ` F100 und das Modul-7-Destillat
  behaupteten eine **5-Jahres-Kadenz der Betriebsoptimierung als geltendes ZH-Recht (§ 13d EnerG)**.
  Am amtlichen Volltext widerlegt: § 13d Abs. 1 EnerG verlangt sie nur «innerhalb dreier Jahre nach
  Inbetriebsetzung»; §§ 48a-48c BBV I regeln Befreiung/Inhalt/Bericht/Aufbewahrung, **keine
  Periodizitaet**. Die 5 Jahre sind **MuKEn-Musterrecht** (Art. 7.4 MuKEn 2025 / Art. 8.4 MuKEn 2014).
  → F100 + Destillat auf den belegten ZH-Stand zurueckgenommen, MuKEn/ZH sauber getrennt.
- **Befund 2 (CONFIRMED, hoch):** WIDERSPRUCH. Das **Fossilfrei-Gebot fuer Neubauten** wurde in der
  energie-KB durchgehend **§ 10a EnerG** zugeschrieben — amtlich steht es in **§ 11 Abs. 1 EnerG**
  («Der Energiebedarf von Neubauten … muss ohne CO₂-Emissionen aus fossilen Brennstoffen gedeckt
  werden»); § 10a ist die Effizienz-/Delegationsnorm («moeglichst wenig Energie»). Beide durch
  dasselbe G vom 19.04.2021 per 1.9.2022 in Kraft — kein Fassungsfenster, das die Zuschreibung
  rettet. → 8 Fundstellen in `energie` + `planungsgrundlagen` korrigiert.
- **Befund 3 (CONFIRMED, hoch):** FEHLENDE QUERVERLINKUNG. energie fuehrte den 200'000-kWh-Wert als
  offene Bring-Schuld («beim AWEL anfragen»), obwohl `baurecht` den amtlichen Verordnungstext haelt:
  **§ 48c Abs. 1 lit. a BBV I** (raw/260607_amtlich_zh_bbv1.md, Z. 923-944). → Bring-Schuld
  geschlossen, Schwellenwert am ZH-Primaertext verifiziert, Aufbewahrungspflicht mitbelegt.
- **Befund 4 (CONFIRMED, mittel):** VERALTETES in `baurecht`. `baureife-und-erschliessung.md` zitiert
  im Praesens «§§ 8a/9–13 EnerG» — korrekt uebernommener **Buchstand 2019**, aber § 13 EnerG ist per
  1.9.2022 aufgehoben. → auf Nachtrag 129 nachgefuehrt; § 8a **nicht** stillschweigend gestrichen
  (die raw-Datei deckt ihn nicht ab), sondern als offener Verifikationspunkt markiert.
- **Befund 5 (CONFIRMED, mittel):** DOPPELSPURIGKEIT. `energie` gibt die Fuehrung im Energierecht
  ausdruecklich an `baurecht` ab («nicht doppeln»), fuehrt aber in drei Rechts-Destillaten
  ZH-EnerG-Paragrafen auf Absatz- und Fassungsstand-Ebene. Heute inhaltlich deckungsgleich — das
  Risiko ist die naechste EnerG-Revision, die dann an zwei Orten nachzuziehen waere.
  → **NICHT selbst aufgeloest: offener Entscheid fuer Raphael (E1, siehe unten).**
- **Befund 6 (CONFIRMED, mittel):** VERALTETES im eigenen Register (Rotationsliste). → bereinigt.
- **Status: bereinigt bis auf E1 (Doppelspur Energierecht ZH) + § 8a EnerG offen.**

### normen ↔ planungsgrundlagen (Brandschutz VKF/BSR 16-15) — geprueft 2026-07-18 (Run 8)
- **Befund:** Die Ausgangsvermutung (Ausgaben-Widerspruch «2022 vs. 2015/2017») ist **REFUTED** —
  beide KBs sind sich einig, dass die Ausgabe 2015 ist; pg spricht sauber von «Fassung/Stand».
  **Dahinter aber ein schwererer, CONFIRMED-Befund:** `normen` fuehrte die **Personenbelegung Verkauf**
  (0.5 / 0.35 / 0.25 P./m2) als `established` ohne Vorbehalt, obwohl sie per **Beschluss TKB 09.06.2021**
  ersatzlos gestrichen und durch eine Betriebstyp-Matrix ersetzt wurde (Fachmaerkte 0.10/0.10,
  Supermaerkte 0.38/0.15, hochfrequentierte Supermaerkte 0.45/0.21). Am Original beidseitig verifiziert
  (pdftotext-Volltextvergleich der Fassungen 01.01.2017 und Stand 01.12.2022). Der Wert geht in
  Fluchtwegbreiten ein — Fehlerwirkung bis Faktor 5. `normen` ist fuehrend und hatte den falschen Wert,
  `planungsgrundlagen` den richtigen: **Fuehrungs-Umkehr** wie schon bei GreenPV (Run 6) und SIA 380/1 (Run 7).
- **Aktion:** Destillat + Synthese + REGISTER nachgefuehrt (alte Werte markiert statt geloescht),
  3 QUESTIONS-Eintraege in normen, Querbezug-Block im pg-Wegweiser, Gremiums-Korrektur ABSV statt IOTH.
- **Offen (nicht autonom):** (a) **Volltext-Destillation der 2022er-Fassung** — die Deltas ABSV 22.03.2017
  (Ziff. 2.4.3/2.4.4) und Fehlerkorrektur 01.12.2022 (Ziff. 3.7) sind ungeprueft; (b) **Uebernahme der
  Matrix nach normen + Trim von pg §5am** auf reinen Fundstellen-Verweis = Umstrukturierung ueber
  KB-Grenzen, Rueckfrage noetig; (c) pg-Passage «Apotheke, Kiosk, Quartierladen» ueberdehnt die Matrix —
  seit dem Wegfall der Auffangzeile ist Kleinverkauf im Einzelfall mit der Behoerde zu klaeren.
  **Status: bereinigt + verlinkt; 3 offene Punkte.**

### planungsgrundlagen ↔ baurecht (OEREB-Themenkatalog / WWG-HWSchV-Nachlauf) — geprueft 2026-07-18 (Run 8)
- **Befund:** Der Run-7-Nachlauf war unvollstaendig. **CONFIRMED:** `kartenportale-oereb-kataster-system-zh`
  fuehrte fuer OEREB-Thema 190 `LS 724.112 § 15` (HWSchV, aufgehoben 01.06.2026) ungeflaggt; der INDEX
  trug die Repeal-Flags zweier Artikel nicht nach. **REFUTED:** die vermutete LS-724.11-Kollision ist
  kein Fehler, sondern eine belegte **Nummern-Wiederverwendung** (WWG bis 31.05.2026, WsV ab 01.06.2026).
  Run 51 (Kartenportale) selbst: **kein Befund** — keine Erlass-Zitate.
- **Aktion:** Zeile 190 korrigiert + Warnkasten, INDEX nachgezogen, Rueckverweis-Block in
  `baurecht/wiki/abstaende-und-hoehen` (die Verlinkung war einseitig), Wiederverwendungs-Hinweis in
  `baurecht/wiki/baureife-und-erschliessung`.
- **Offen (nicht autonom):** die **GSchV-Doppelspur** (Art. 41a/41b-Bemessungstabelle materiell in
  beiden KBs) besteht unveraendert weiter — Trim = Umstrukturierung, seit Run 7 offen.
  **Status: bereinigt + bidirektional verlinkt; 1 offener Punkt.**

### energie ↔ normen (Ψ-Werte/Waermebruecken, MuKEn Modul 7) — geprueft 2026-07-18 (Run 8)
- **Befund:** Kein Zahlen-Widerspruch. **CONFIRMED (stale):** der Themenartikel `energie/wiki/innendaemmung`
  fuehrte den Negativbefund zur Massivdecken-Ψ-Zahl weiter, obwohl E93 am selben Tag geschlossen wurde —
  **das Destillat wurde aktualisiert, der Themenartikel nicht mitgezogen** (Einstiegsebene zeigte den
  ueberholten Stand). **REFUTED:** die Zuschreibung «Ψ ≤ 0,20 (SIA 380/1)» ist sachlich korrekt gedeckt
  (EN-102 Fusszeile «Basis: Norm SIA 380/1, Ausgabe 2016»); die normen-Sperre betrifft nur Q_H-/U-Werte
  und Gebaeudekategorien, nicht Waermebruecken-Ψ — der Befund dehnte den Sperrumfang ueber seinen Wortlaut aus.
- **Aktion:** Themenartikel nachgezogen (Ψ-Werte, Konsequenz, Normgenerations-Vorbehalt 2001 vs. 2016),
  offener Punkt geschlossen, Backlink gesetzt; Flags fuer **SIA 180-C2:2020** (in energie 0 Treffer, von
  normen am 16.07. belegt) und **SIA 2024:2019 vs. 2021+C1:2024**; SIA-2048-Uebergabe an normen eingetragen.
- **Offen (nicht autonom):** Inhalt von **C2:2020** beidseitig unverifiziert (Bring-Schuld seit Run 6);
  Healthcare-EBF-Schwellen VIII.1/VIII.2 am SIA-2024:2021-Volltext nachrechnen.
  **Status: bereinigt + verlinkt; 2 Bring-Schulden.**

### baurecht ↔ planungsgrundlagen ↔ energie (WWG/HWSchV → WsG/WsV) — geprueft 2026-07-17 (Run 7)
- **Befund:** Die Run-5-Bring-Schuld ist einloesbar geworden — baurecht hat heute (Buch-Run 48) die
  Aufhebung von **HWSchV UND WWG per 1.6.2026** (OS 81, 144 → WsG LS 724.1 + WsV LS 724.11) amtlich
  belegt (`baurecht/raw/260717_amtlich_zh_hwschv.md`, Konkordanztabelle alt/neu). Drei
  planungsgrundlagen-Artikel hinkten hinterher. Vier Befunde, alle **CONFIRMED** (an den Zitatstellen
  + der amtlichen raw-Quelle verifiziert, baurecht als fuehrend bestaetigt): (1) `kartenportale-
  naturgefahren-objektschutz` behauptete «§ 22 WWG unveraendert in Kraft» (positive Falschaussage);
  (2) `recht-norm-abstandsvorschriften-wald-gewaesser` fuehrte **§ 15d** (alte Nummer vor Nachtrag 95,
  richtig § 15k) + HWSchV/WWG ohne Flag; das eingedolt-«11 m» ist als kantonales Mass **entfallen**
  (§ 24 WsV nur Verringerung); (3) selber Artikel knuepfte die 15 m stehender Gewaesser faelschlich an
  die 0,5-ha-Schwelle (die ist nur Verzichtsgrund Art. 41b Abs. 4 lit. b, kein Formel-Kriterium —
  baurecht Modell-D-verifiziert); (4) `recht-norm-regenwasser-gewaesserraum-zh` hatte den WWG-Flag
  (Run 5), aber HWSchV/«HWV» ungeflaggt.
- **Aktion:** alle vier autonom korrigiert (Aufhebungs-Flags, § 15d→§ 15k, eingedolt-Sachlage,
  0,5-ha-Korrektur, HWV→HWSchV, Verfahren 2/3 «bis 31.5.2026», Verweis auf baurecht als fuehrend).
- **Offen (nicht autonom):** (a) **WsG-/WsV-Nachfolge-§ fuer § 22 WWG** (Gefahrenbereiche) am Volltext
  verifizieren — raw deckt nur die HWSchV-§§, nicht § 22 WWG (Bring-Schuld); (b) **Doppelspur
  GSchV-Bemessungstabelle** (baurecht `abstaende-und-hoehen` + planungsgrundlagen `abstandsvorschriften`
  fuehren dieselbe Art.-41a/41b-Tabelle materiell) — Trim auf reinen Verweis = Umstrukturierung, Rueckfrage.
  Ergaenzt den offenen §-Mapping-Punkt aus Run 5 (jetzt via baurecht-Konkordanztabelle groesstenteils
  vorhanden). **Status: bereinigt + verlinkt; 2 offene Bring-Schulden.**

### normen ↔ energie (SIA 380/1:2016) — geprueft 2026-07-17 (Run 7)
- **Befund:** 0 Zahlen-Widerspruch. **Fuehrungs-Anomalie:** die fuehrende KB `normen` legte heute
  (Run 15) das Destillat `sia-380-1-2016` an — aber nur als **Vorschau/Auszug (6/60 S., `speculative`)**
  und fuehrt Grenz-/U-Werte als **P1-Blocker («komplett unerschlossen»)**, obwohl `energie` dieselben
  Werte via Vollzugshilfe **EnFK EN-102** (`enfk-en-102-waermeschutz-2018`, `established`, am Original
  gegengeprueft) laengst belegt. energie `sia-380-1-aktualitaets-check-2026` beantwortet zudem die von
  normen offen gelassene Ausgabe-/Korrigenda-Frage (2016 + C1/2019 aktuell). Beidseitig fehlende
  Querlinks. **Nebenbefund (autonom erledigt):** der von energie gemeldete Transkriptionsfehler in
  enfk-en-102 Tab. 5 war bereits behoben, wurde aber im `muken`-Destillat noch als «offen» gefuehrt.
- **Aktion:** bidirektionale «Querbezug»-Bloecke (energie-aktualitaets-check → normen als Fundstelle;
  normen-Destillat → energie/EnFK-EN-102 als Interims-Wertquelle, P1-Blocker relativiert auf die
  zitierfaehige Norm-Fundstelle); Stale-Hinweis im `muken`-Destillat auf «ERLEDIGT 17.07.» umgeschrieben.
- **Offen (nicht autonom, Bring-Schuld):** SIA 380/1:2016 Volltext (SIA-Abo) fuer die zitierfaehige
  Fundstelle; Korrigenda C1:2019-Inhalt am Volltext lesen. **Status: verlinkt/bereinigt; 2 Bring-Schulden.**

### normen ↔ baurecht (SIA-Vertrags-/Honorarnormen) — geprueft 2026-07-17 (Run 7, rotierend/leicht)
- **Befund:** **Keine Ueberschneidung — legitimes Null-Ergebnis.** Die heute in normen destillierte
  SIA-Vertrags-/Honorarfamilie (SIA 102/103/105/108, 118, 1001-*, 1023, 100, KBOB-Honorar) hat in
  baurecht **null Praesenz** (gezielte greps: 0 Treffer «SIA 2009», «Honorarempfehlung», «KBOB»,
  «16-15», «SIA 102/118»). Die zwei normen-Richtigstellungen (Honorarempfehlung 2009 = KBOB nicht SIA;
  VKF-BRL 16-15 = Ausgabe 2015/Fassung 2017) koennen baurecht daher nicht widersprechen. Einzige
  Beruehrung: **SIA 416** (Flaechendefinition), inhaltlich sauber getrennt (baurecht = PBG-Mass,
  normen = SIA-416-Flaeche) und ueberwiegend verlinkt.
- **Aktion:** keine substanzielle noetig. **Kuer (offen, niedrig):** ein fehlender SIA-416-Querlink in
  `baurecht/wiki/abstaende-und-hoehen.md:338` (Klein-/Anbaute «nur SIA-416-Nebennutzflaechen»). **Status:
  kein Befund; 1 optionaler Querlink offen.**

### energie ↔ normen ↔ planungsgrundlagen (SIA 180 sommerlicher Waermeschutz) — geprueft 2026-07-16 (Run 6)
- **Befund:** Am neuen energie-Destillat `sommerlicher-waermeschutz-sia180-nachweisverfahren` (Run 74)
  **1 echter Sachfehler + 1 unnoetige Wissensluecke**, beide durch Nicht-Nutzung der KB `normen`
  (Rule `normen-referenz`) entstanden — das Norm-Destillat `sia-180-2014` war 3 Tage aelter.
  (a) **V3-Kriterium falsch zugeschrieben:** «Nachweis ueber Uebertemperaturstunden» unter der
  Ueberschrift «Die drei Nachweisverfahren (SIA 180:2014)»; normativ gilt Ziff. 5.2.6.3/Fig. 3
  (0 h Ueberschreitung). (b) **gtot-Grenzwerte als «offener Punkt»** gefuehrt («Normtext
  kostenpflichtig, nicht eingesehen»), obwohl normen sie aus dem Original-PDF ziffern-genau fuehrt
  (Ziff. 5.2.4.1/Fig. 12). (c) EN-ZH-/EVEN-Verfahren materiell in energie, obwohl planungsgrundlagen
  fuehrend. (d) normen-REGISTER Z. 106 widersprach sich selbst (SIA 180 «1999 / vermutlich aktuell»
  vs. Tabelle C + Destillat «2014»).
- **WIDERLEGT (adversariale Verifikation):** Der zuerst gemeldete Hauptbefund «100 h / Figur 4 ist eine
  falsche SIA-180-Zuschreibung» hielt **nicht**. Der Verifier beschaffte die amtlichen Primaerquellen:
  die **Stadt-ZH-Wegleitung Ziff. 4.1.1** schreibt Fig. 4 ausdruecklich abweichend vor («Die Beurteilung
  … erfolgt immer … nach Figur 4 (Ziffer 2.3.2) … maximal 100 Stunden … 400 Stunden»), die
  **HBA-Richtlinie** deckt die 400 h ueber SIA 382/1. Zahlen korrekt + amtlich belegt; der Fehler
  beschraenkte sich auf **eine** Tabellenzeile, die die Vollzugs-Abweichung der Norm zuschrieb.
- **Aktion:** V3-Zeile korrigiert (Norm vs. Vollzugs-Abweichung getrennt); Fig.-12-Formeln aus normen
  uebernommen, offener Punkt auf Fig. 13 eingeschraenkt; 2 Querbezug-Bloecke (→ normen, →
  planungsgrundlagen) + Cross-KB-Zeile; EVEN-Luecke per Verweis geschlossen; normen-REGISTER Z. 106 auf
  «2014 BESTAETIGT» nachgefuehrt. **Nebenfund:** Korrigenda **C2:2020 existiert** (Wegleitung zitiert sie),
  Inhalt nicht verifiziert → normen-Destillat entsprechend praezisiert.
  **Offen (Bring-Schuld normen-Loop):** C2:2020 am Original pruefen. **Offen (energie-Loop):** EN-102-Ausgabe
  **2018 vs. 2020** KB-uebergreifend klaeren (energie fuehrt beides unverbunden; `planungsgrundlagen`
  nennt fuer EN-102a/b bereits SIA 380/1:2016, an 2 anderen Stellen noch 2009 — Spannung in beiden KBs).
  **Status: bereinigt + verlinkt; 2 offene Bring-Schulden.**

### energie ↔ baurecht (MuKEn 2025 Modul 11 — Daemmung/Nutzungsziffern) — geprueft 2026-07-16 (Run 6)
- **Befund:** **Luecken auf beiden Seiten, kein Sachwiderspruch.** energie fuehrte Modul 11 (35-cm-Kappung
  bei BMZ/GFZ) als «Grundsatz seit 2005 bekannt, erstmals mit Zahlenwert kodifiziert / planungsrechtlich
  direkt relevant fuer JANS» — **ohne ZH-Kontext**, obwohl die Kappung im Kt. ZH seit **1.4.2013** gilt
  (§ 256 II / § 257 III / § 258 IV / § 253a PBG, § 12 III ABV). Spiegelbildlich fuehrte der **fuehrende**
  baurecht-Artikel `nutzungsziffern` die Daemmungs-Kappung **gar nicht** (der Stoff lag ungehoben im
  eigenen Buch-Destillat `14-nutzungsdichte-ausnuetzung`).
- **Verifikation (adversarial):** Muster-vs-geltend-Kennzeichnung von MuKEn insgesamt **korrekt** (kein
  Befund). «Erstmals kodifiziert» **auf Muster-Ebene nicht widerlegbar** (MuKEn-2014-Modultext nicht in
  der KB) → Befund schrumpfte von «Fehler» auf **Praezisierung**. Bestaetigt blieben: «seit 2005»
  **unbelegt** (einziger Datumsanker 1.4.2013); ZH-Aussage nicht skopiert; **keine 35-cm-Kappung fuer die
  AZ (§ 255 PBG)**; **GFZ in ZH nicht verfuegbar** (Kritik an energie insoweit widerlegt — MuKEn ist
  Musterrecht fuer alle Kantone, «BMZ/GFZ» zitiert das Muster korrekt); Gegenprobe Zweitfassung im
  PBG-Anhang («Stand 28.02.2017») traegt die Kappung **ebenfalls** — kein Schlupfloch.
- **Aktion:** energie Modul-11-Zeile skopiert (Muster-Ebene vs. ZH-Ist, «seit 2005» gestrichen, ZH-Sonderfall
  § 253a Abs. 2 als *weitergehend* benannt, Verweis auf baurecht); baurecht `nutzungsziffern` um die Sektion
  «Aussenwaermedaemmung und Nutzungsziffern (35-cm-Kappung)» + Querbezug KB energie + `sources` ergaenzt;
  Modul-12-Querbezug (E-Mobilitaet ↔ `fahrzeugabstellplaetze-und-parkierung`) gesetzt.
  **Offen (baurecht-Loop, NICHT autonom):** (a) **§ 33a ABV widerspruechlich** in baurecht (15 cm/aufgehoben
  vs. 35 cm/geltend, 2 Wiki-Artikel gegen 2 andere); (b) moeglicher **veralteter Numerierungsstand** in
  `nutzungsziffern` (BMZ als «§ 254 geltend», raw fuehrt § 258 in beiden Regimes) — beruehrt die
  Uebergangsmechanik. **Status: bereinigt + verlinkt; 2 offene KB-interne Widersprueche.**

### energie ↔ planungsgrundlagen (GreenPV/Fassaden-PV) — geprueft 2026-07-16 (Run 6)
- **Befund:** **Doppelspur + Fuehrungs-Umkehr.** Dieselbe HSLU-GreenPV-Studie wird in beiden KBs materiell
  gefuehrt: energie `greenpv-fassade-pv-begruenung-hslu` (seit 20.06.2026, Workshop-2-Foliensatz 15.06.2022,
  `emerging`) und planungsgrundlagen `energie-pv-eignung-typenwahl` §6/§6b. Identische Kennwerte doppelt
  (Modul-Wirkungsgrade 20/14 %, NOCT 42±2 °C, Begruenung 30 kg/m², Referenzgebaeude-U-Werte) — **0
  Widerspruch**, aber redundant. **Fuehrungs-Anomalie:** nach Matrix ist Energie-Fachstoff `energie`-Sache;
  faktisch hat planungsgrundlagen (Run 50) die **Schlussbroschuere vom 27.08.2024** volltext ausgewertet und
  ist auf `established`, waehrend energie auf dem 2022er-Zwischenstand steht und dort drei offene Punkte
  fuehrt (Endergebnisse / kWh/kWp je Orientierung / Kosten CHF/m²), **die alle drei laengst beantwortet sind**.
  Zusaetzlich: **VKF-Hoehen-/RF-Staffel in §6b ohne Cross-Link** (3. Fundort des Musters, s. Kasten oben);
  **Divergenz innerhalb** planungsgrundlagen: Sued-Fassade Jahres-Minderertrag §6 **−14 %** vs. §6b **−20 %**.
- **Aktion:** Aktualitaets-Flag + 3 erledigte offene Punkte in energie (Bring-Schuld: Broschuere
  re-destillieren, dann kehrt die Fuehrung um); bidirektionale Querbezuege energie ↔ planungsgrundlagen;
  «Querbezug KB normen»-Block vor der VKF-Staffel (mit Praezisierung: Ziel ist `vkf-brl-verwendung-baustoffe`
  + `vkf-brandschutznorm-2015`, **nicht** das Solaranlagen-Merkblatt); Divergenz-Flag §6↔§6b (massgebend:
  finale Broschuere −20 %). **Offen (nicht autonom):** Trim §6b auf Planungs-Framing; Trim §6/§6b nach
  energie-Re-Destillat; **Swissolar-Uebergangsdokument** «PV an Fassaden» galt **bis 31.12.2024** (19 Monate
  abgelaufen) — Nachfolge in keiner der drei KBs geprueft. **Status: verlinkt/geflaggt; 3 offene Punkte.**

### normen (KB-intern, Nebenbefund aus Run 6) — 2026-07-16
- **Befund:** **Dublette** — `destillate/vkf-merkblatt-2001-15-solaranlagen.md` und
  `destillate/vkf-brm-2001-15-solaranlagen.md` destillieren **dieselbe PDF** (identische `quelle:`,
  `ausgabe: 06.03.2015`, `last_updated: 2026-07-13`, beide `established`).
  `planungsgrundlagen/wiki/energie-pv-brandschutz` referenziert bereits **beide nebeneinander**.
- **Aktion: KEINE** — Merge/Loeschung ist destruktiv (Rule `wissens-bibliothekar`: Pause + Rueckfrage).
  **→ Entscheid Raphael noetig** (siehe Bericht). Blockiert nebenbei die saubere Zielwahl kuenftiger
  Querlinks. **Status: offener Entscheid.**

### energie ↔ planungsgrundlagen (PV-Einmalverguetung/Wirtschaftlichkeit) — geprueft 2026-07-15 (Run 5)
- **Befund:** **Doppelspur bestaetigt** — beide KBs fuehren die Pronovo-EIV-Foerdersystematik.
  energie `pv-einmalverguetung-bund-bfe` (established, BFE-Faktenblatt) ist die autoritative Quelle;
  planungsgrundlagen `energie-betriebsenergie-pv-wirtschaftlichkeit` §1 (emerging, 07-14) leitet sie
  ohne Cross-Link nochmals her (KLEIV/GREIV/HEIV, Grund-/Leistungsbeitrag, Neigungs-/Parkflaechenbonus).
  **KEIN Sachwiderspruch** (Saetze konsistent: integriert 400 / angebaut 200 CHF/kW seit 1.1.2025,
  Deckel 30 %). §2/§3 (Amortisation EFH-Fall, Eigenverbrauch-Hebel) sind **komplementaer**, nicht in
  energie — bleiben in planungsgrundlagen.
- **Aktion:** bidirektionale Querbezuege gesetzt (planungsgrundlagen §1 → energie als fuehrend;
  energie → planungsgrundlagen fuer die Wirtschaftlichkeits-Anwendung). §1-Trim als offen markiert
  (Umstrukturierung, NICHT autonom). **Status: verlinkt/geflaggt; 1 offener Trim (planungsgrundlagen §1).**

### baurecht ↔ planungsgrundlagen ↔ energie (WWG → WsG Aktualitaet) — geprueft 2026-07-15 (Run 5)
- **Befund:** **Veraltet-Cross-KB bestaetigt.** baurecht (`baureife-und-erschliessung`, § 27 WWG) und
  planungsgrundlagen (`recht-norm-regenwasser-gewaesserraum-zh` § 18 WWG; auch `kartenportale-natur-
  gefahren-objektschutz` § 22 WWG) fuehren das ZH **Wasserwirtschaftsgesetz WWG (LS 724.11, 1991)** als
  geltend. energie (`grundwasserwaermenutzung-bewilligung-zh-sz`, 07-15, primaerquellen-verifiziert)
  belegt: das WWG wurde **per 1.6.2026 durch das Wassergesetz WsG vom 12.12.2022 abgeloest** (§ 126 WsG,
  explizite Aufhebung; §§ 48/74/96/126 WsG Volltext gelesen). Heute (15.07.) bereits geltendes Recht.
- **Aktion:** Aktualitaets-Flags in baurecht `baureife-und-erschliessung` + planungsgrundlagen
  `recht-norm-regenwasser-gewaesserraum-zh` gesetzt (WWG-§§ nicht umbenannt — quellentreu 2019-Werk).
  Buecher-Destillate baurecht (band-2/12, /15, /20) bewusst unangetastet (quellentreu). **Offen (nicht
  autonom, Bring-Schuld):** WsG-/WsV-Volltext beschaffen, §-Mapping WWG→WsG erstellen, dann die
  current-Rechtslage-Wiki-§§ nachziehen; planungsgrundlagen `kartenportale-naturgefahren-objektschutz`
  (§ 22 WWG) noch zu flaggen. **Status: geflaggt; §-Mapping + 1 weiteres Flag offen.**

### normen ↔ energie (SIA 2024, SIA 382/1) — geprueft 2026-07-14 (Run 4)
- **Befund:** 0 Widersprueche. **Veraltetes 2x — der FUEHRENDE KB normen ist ueberholt:** (1) SIA 2024 —
  normen REGISTER Z.266 fuehrt **2006**, energie fuehrt **SIA 2024:2021** (inkl. Korrigenda C1:2024); (2)
  SIA 382/1 — normen REGISTER Z.464 fuehrt **2014**, energie fuehrt **SIA 382/1:2025** (in Kraft seit
  1.2.2025). Beide Editionen **WebSearch-verifiziert am SIA-Shop** (bestaetigt). 3 fehlende «Querbezug KB
  normen»-Bloecke im Run-69-SIA-2024-Stoff (energie nannte SIA-Normen als Prosa ohne normen-Verweis).
  Doppelspur SIA-382/1-Kennwerte (beide KBs, divergierende Ausgabe). «Zu verifizieren»: energie zitiert
  «SIA 384/2 Heizlast» als SIA-2024-Herleitung — benigne historische Zitierung (kein Aktualitaets-Claim).
- **Aktion:** 2 Ausgaben-Flags in normen REGISTER (Z.266 + Z.464, Format analog SIA-181:2020-Flag Run 3);
  3 «Querbezug KB normen»-Bloecke in energie (2× sia-2024, 1× komfortlueftung). **Offen (Bring-Schuld
  normen-Loop):** Re-Destillate SIA 2024:2021 + SIA 382/1:2025 (kostenpflichtiger Volltext SIA-Shop).
  **Status: verlinkt/geflaggt; 2 offene Re-Destillate.**

### normen ↔ planungsgrundlagen (VKF, Normkonzept BSV 2026) — geprueft 2026-07-14 (Run 4)
- **Befund:** 0 Sachwidersprueche (BSV 2015 geltend, BSV 2026 Zukunft/Inkrafttreten ~2027 — beidseitig
  deckungsgleich; RF-/EI-Klassen konsistent). **Neubefund «Fuehrung in der falschen KB»:** der neue §1a
  (planungsgrundlagen `brandschutz-pl03-wegweiser` Z.137ff, Run 48) fuehrt das VKF-Primaerdokument
  «Normkonzept BSV 2026» (38 Eckpunkte) materiell und unverlinkt; laut Rule `normen-referenz` ist normen
  fuehrend. normen hat die PDF beschafft (CHANGELOG/QUESTIONS), aber **kein Destillat** → Querlink derzeit
  nicht auf einen Zielartikel setzbar. Restbestand RF/EI-Doppelspur im §4 bereits selbst-geflaggt (Run 37
  teilbereinigt).
- **Aktion:** «Querbezug KB normen»-Block in §1a gesetzt (Fuehrung + offener Trim-Hinweis). **Offen (nicht
  autonom, heikel):** normen destilliert Normkonzept BSV 2026 → dann §1a auf Planungs-Framing kuerzen +
  verlinken (Trim = groessere Umstrukturierung). **Status: verlinkt/geflaggt; 1 offener Trim (nach
  normen-Destillat).**

### energie ↔ grobkosten ↔ immobilienbewertung (Run-69 Kostenthemen) — geprueft 2026-07-14 (Run 4)
- **Befund:** 0 Widersprueche, 0 Doppelspur — **Metrik-Ebenen sauber getrennt**: energie fuehrt
  Komponenten-/Betriebs-/Anschlusskosten (CHF/kWp, Fernwaerme-Anschluss, Rp/kWh), grobkosten/immo fuehren
  aggregierte Erstellungskennwerte (CHF/m3 GV BKP 1-5 / BKP-2-Anteile). Einziger Befund: fehlende
  bidirektionale Querverlinkung + **latentes Doppelzaehlungs-Risiko** (energie-Komponenten sind BKP-23/24/25
  und stecken bereits in den Aggregaten).
- **Aktion:** bidirektionale «nicht additiv»-Querbezuege gesetzt: grobkosten `kennwerte` + immo
  `realwert-sachwert` → energie; energie `fernwaerme-anschlusskosten-zh` + `pv-marktzahlen-kosten-ch-2025`
  → grobkosten/immo (Doppelzaehlungs-Guard). **Status: bereinigt.**

### normen ↔ planungsgrundlagen (Brandschutz VKF) — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche (VKF-Kennwerte deckungsgleich). **Doppelspur** (hoch relevant):
  planungsgrundlagen `brandschutz-pl03-wegweiser` fuehrt nach Run 34 VKF-BSR-Ziffern/Kennwerte
  im Wortlaut, obwohl **normen** die fuehrende Norm-Fundstelle ist (Rule `normen-referenz.md`).
  Gebremst durch die bereits vorhandene C1-Arbeitsteilung (delegiert Fach-Detail an Skill
  `brandschutz`), aber ohne Cross-Link zu normen. **Veraltetes:** normen-Destillat
  `vkf-merkblatt-2001-15-solaranlagen` fuehrt Ausgabe 2015; planungsgrundlagen belegt Rev. 2022
  (RF3(cr) statt RF4(cr)).
- **Aktion:** 2 Querbezuege → normen gesetzt (wegweiser + pv-brandschutz); normen-Destillat +
  REGISTER + QUESTIONS mit 2022-Flag annotiert. **Offen (Raphael/Loop):** VKF-Ziffern im Wegweiser
  via normen ziehen statt duplizieren (Trim = grosse Umstrukturierung, NICHT autonom); VKF-Merkblatt
  2022 re-destillieren. **Status: verlinkt/geflaggt; 2 offene Punkte.**

### normen ↔ energie (SIA 380/1, SIA 181, SIA 180, SIA 279) — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche. **Veraltetes 2x:** (1) normen REGISTER fuehrt **SIA 181:2006**,
  energie arbeitet mit **SIA 181:2020** (energie aktueller); (2) energie `daemmstoffe-lambda`
  stuetzt sich auf zurueckgezogenes **SIA 2001:2005**, normen fuehrt aktuelles **SIA 279:2018**
  (normen aktueller). 4 fehlende Links (energie nennt SIA-Normen als Prosa ohne normen-Verweis).
- **Aktion:** 4 Querbezuege energie → normen (sia-181/sia-180/sia-279/REGISTER-380-1); zwei energie-
  «Offen»-Punkte (sommerlicher WS, Bemessungswerte) durch Verweis geschlossen; normen REGISTER Z.109
  + QUESTIONS mit SIA-181:2020-Flag. **Offen:** SIA 181:2020 re-destillieren (Bring-Schuld SIA-Shop).
  **Status: verlinkt; 1 offener Punkt (SIA-181:2020-Destillat).**

### energie ↔ baurecht — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche, 0 Doppelspur. 3 fehlende Links an der Verfahrens-/Nachweis-Nahtstelle
  (Energienachweis-Beilagepflicht, § 325a PBG Anzeigeverfahren, Minergie-Vermutung § 4 Abs. 4 BBV I).
- **Aktion:** 3 Querbezuege gesetzt (baubewilligungsverfahren → energie; energienachweis-zh → baurecht
  § 325a; minergie-standards → baurecht Minergie-Vermutung). Rollenteilung Recht=baurecht /
  Nachweisphysik=energie fixiert. **Status: bereinigt.**

### immobilienbewertung ↔ grobkosten (vertieft) — geprueft 2026-07-13 (Run 3)
- **Befund:** 0 Widersprueche (E1-Faktor konsistent, nicht erneut geprueft). 1 fehlender Link:
  `residualwertmethode` nutzt Erstellungskosten als groessten Landwert-Hebel, verweist aber nicht
  auf die kanonischen grobkosten-Kennwerte.
- **Aktion:** Querbezug residualwertmethode → grobkosten `kennwerte` (inkl. E1-Faktor). **Status: bereinigt.**

### baurecht ↔ planungsgrundlagen — geprueft 2026-07-12 (Run 1)
- **Befund:** Doppelspur Wald-/Gewaesserabstand (Rechtsmasse in beiden voll gepflegt). 3 Diskrepanzen:
  W1 (Fliessgewaesser-Regime vermischt, hoch) **BESTAETIGT** -> baurecht korrigiert;
  W3 (stehende Gewaesser 0,5-ha-Schwelle fehlte, niedrig) **BESTAETIGT** -> baurecht korrigiert;
  W2 (§66 vs §262 Waldabstandslinie, mittel) **WIDERLEGT** (komplementaer, kein Eingriff).
- **Aktion:** 3 Backlinks gesetzt (beide Richtungen), Rollenteilung fixiert. **Status: bereinigt.**

### normen ↔ baurecht — geprueft 2026-07-12 (Run 1)
- **Befund:** Keine Widersprueche. 3 fehlende Verlinkungen (baurecht nennt SIA 416 / VSS-Velo als
  Prosa ohne Verweis auf die normen-Destillate).
- **Aktion:** 2 Backlinks gesetzt (nutzungsziffern -> sia-416-2003; fahrzeugabstellplaetze ->
  vss-merkblatt-veloabstellplaetze-1998). Offen: aGF-Definition-Detailabgleich SIA 416 ↔ § 254 PBG
  (kein Widerspruch, Kandidat fuer Vertiefung). **Status: weitgehend bereinigt.**

### energie ↔ planungsgrundlagen — geprueft 2026-07-12 (Run 1)
- **Befund:** Doppelte Energie-Ebene. 1 echter Fehler: energie-W1 (EN-105 WRG-Grenzwert falsch
  «>=75 % mit Bypass») **BESTAETIGT** -> energie korrigiert. W2 (PV-Ertragsbaender) + W3 (U-Werte)
  **WIDERLEGT** (verschiedene Bezugsgroessen bzw. inhaltsgleich).
- **Aktion:** Backlink energie -> planungsgrundlagen-Verfahrensartikel; Rollenteilung fixiert
  (Physik=energie, Verfahren=planungsgrundlagen). **Status: bereinigt.**

### grobkosten ↔ immobilienbewertung ↔ kostenschaetzung-Ref — geprueft 2026-07-12 (Run 1)
- **Befund:** Kennwerte grundsaetzlich konsistent. W1/W4 (Wuest-Tabellen scheinbar widerspruechlich)
  **WIDERLEGT** (verschiedene Wuest-Produkte/Bezugsbasis). **W2 (m2->m3-Faktor 0.70 grobkosten vs.
  0.60-0.61 immobilienbewertung) BESTAETIGT + HEIKEL** -> **ENTSCHIEDEN 12.07.2026 (E1):** Faktor
  kontextabhaengig — Regelgeschoss 0.70, Gesamtgebaeude 0.60–0.61 (kanonisch fuer m²↔m³-Bruecke),
  in beiden KBs verankert. W3 (Baupreisindex-Stand) unverifiziert (Schema-Retry) -> Run 2 nachziehen.
- **Aktion:** 2 Backlinks (grobkosten ↔ immobilienbewertung) + Bezugsbasis-Warnung + E1-Entscheid.
  **Status: E1 bereinigt; verbleibt 1 offene Verifikation (W3, Run 2).**

### twin ↔ spec — geprueft 2026-07-12 (Run 1, rotierend)
- **Befund:** Konzeptuelle Ueberschneidung Arbeitsweise/Methodik, KEIN Widerspruch (W1 doppelspur
  **WIDERLEGT** — verschiedene Rollen). Mehrere fehlende Querlinks.
- **Aktion:** Backlink beide Richtungen (arbeitsweise ↔ anwendung-jans). **Status: bereinigt.**

### auflagebereinigung ↔ baurecht — geprueft 2026-07-12 (Run 2)
- **Befund:** Inhaltlich konsistent, verschiedene Flughoehen (baurecht = Rechtsnatur/Verfahren,
  auflagebereinigung = operative Umsetzung). 1 Widerspruch W1 (Baubeginn-Definition, niedrig)
  **WIDERLEGT** (nur Praezisionsstufe: umgangssprachl. Spatenstich = jur. Aushubbeginn). 1 Doppelspur
  (Fristen-Phasen = designter Handoff, kein Eingriff). 5 fehlende Backlinks.
- **Aktion:** 4 Backlinks gesetzt (fristenlogik -> nebenbestimmungen + bauausfuehrung; aemter ->
  baubewilligungsverfahren; bauausfuehrung -> fristenlogik) + Baubeginn juristisch praezisiert
  (§ 326 PBG). **Status: bereinigt.**

### W3-Nachverifikation (Baupreisindex) — 2026-07-12 (Run 2)
- **grobkosten Teuerungsstand vs. immobilienbewertung BFS-Index:** adversarial **WIDERLEGT** — Seed
  ±25 % legitim, reale Bauteuerung 2023->2026 ~2-3 %. Teuerungs-Check-Verlinkung gesetzt. **Erledigt.**

## Noch nie gepruefte Paare (Rotation kuenftige Laeufe)

> **Bereinigt Run 9 (19.07.2026):** Die Liste war zur Karteileiche geworden — vier der sechs
> Zeilen betrafen Paare, die laengst datierte Prueflauf-Eintraege haben (energie ↔ baurecht sogar
> doppelt gefuehrt und dreimal beruehrt: Run 3, Run 6, Run 9). **Regel ab jetzt:** ein Paar wandert
> mit dem Eintrag seines datierten Prueflaufs automatisch aus dieser Liste; vor jedem Lauf die
> Rotationsliste gegen die «geprueft»-Ueberschriften diffen. Offene Restfragen gehoeren an den
> datierten Paar-Eintrag, nicht hierhin.

- kunde-bopp ↔ machbarkeit/stockwerkeigentum/ankaufspruefung (Kunden-Kontext)

*Ausgetragen 25.07.2026 (Run 15):* architekten-synobsis ↔ entwurfs-referenzen (→ Run 15, Erst-Pruefung:
1 Widerspruch korrigiert, Erst-Verlinkung + 2 Matrix-Zeilen) · grobkosten ↔ immobilienbewertung ↔
kostenschaetzung-Ref (→ Run 15, Delta-Check gefahren: Ankerzahlen stabil, neu 2 Flaechenfaktor-Punkte).
*Ausgetragen 20.07.2026 (Run 10, bereits gepruefte Paare):* kunde-bopp ↔ firmengruendung-ch
(→ Run 10, Erst-Check = Null-Ergebnis, disjunkt).
*Ausgetragen 19.07.2026 (bereits gepruefte Paare):* energie ↔ baurecht (mehrfach, → Run 3/Run 6/Run 9/Run 10) ·
immobilienbewertung ↔ grobkosten vertieft (→ Run 3, bereinigt) · normen ↔ energie SIA 380/1,
SIA 180/181 (→ Run 3 + Run 7; offener Restpunkt SIA-181:2020-Destillat bleibt dort vermerkt).
