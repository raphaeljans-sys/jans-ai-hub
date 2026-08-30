# SYNERGIE-REGISTER — Prozess-Synergien des JANS AI Hub

Kompoundierendes Register des Skills `synergie-orchestrator`. Je Befund: ID, beteiligte
Harnesse, Typ (1 Ketten-Luecke · 2 Doppelrechnung · 3 Compounding-Luecke · 4 Service-
Kombination · 5 Entwurfsprozess-Potenzial · 6 Redundanz), Befund, Empfehlung, Status.
Neueste Laeufe ergaenzen unten je Eintrag; abgeschlossene Eintraege bleiben stehen (Historie).

| ID | Harnesse | Typ | Befund | Empfehlung | Status |
|---|---|---|---|---|---|
| SYN-01 | grobkosten-rechner · kostenschaetzung · realwert-rechner · wirtschaftlichkeit-rechner | 2 | Vier Instanzen nutzen Kosten-Kennwerte aus je eigener Quelle (KB `wissen/grobkosten`, Wuest-Referenzen, Bewertungs-KB, Skill-interne Werte). Gefahr divergenter Zahlen im selben Projekt. | `wissen/grobkosten` zur EINEN fuehrenden Kennwerte-DB erklaeren; die drei anderen beziehen Kennwerte von dort und schreiben neue Datenpunkte dorthin zurueck. | halb geschlossen (Lauf 03, 01.08.): `skills/kostenschaetzung/SKILL.md` Z. 84 und `agents/grobkosten-rechner.md` (4 Treffer) sind an `wissen/grobkosten` angeschlossen. **Offen bleiben die zwei Bewertungs-/Wirtschaftlichkeitsrechner:** `agents/realwert-rechner.md` und `agents/wirtschaftlichkeit-rechner.md` je 0 Treffer |
| SYN-02 | wissen/entwurfs-referenzen · volumenstudie · machbarkeit · wettbewerb | 5 | Die maschinenlesbaren Parameter-Sets (Wettbewerbs-DNA, JSON mit Schema) sind noch NICHT als Input an `tools/volumen_generator.py` angeschlossen; Volumenstudien entstehen nur aus Zonen-Maxima (Rule 260624) + Gliederungsregel (260627b). | Typologisch informierter Entwurfsprozess: Bauaufgabe → Parameter-Set aus DNA-KB → Varianten-Generierung → Konformitaets-Loop (`programm-pruefer`). Als Spec aufgleisen; Kern des Papiers «Typologischer KI-Entwurfsprozess». | Spec bestaetigt 20.07.2026 (Interview E1–E9, `wissen/spec/outputs/2026-07-20_syn-02-typologischer-entwurfsprozess_spec.md`) — MVP-Bau Block 1 startet auf Freigabe; Kanal: Wettbewerbs-Fabrik (GM3). **Lauf 02 (25.07.):** Datenseite hat aufgeholt — die im Spec als «ausstehend» notierte Luecke B5 ist geschlossen (`parameter-sets/schule-volksschule-ch.json` v1.0 schema-valide + refuter-bestanden 21.07., daraus `typologien/bildung.md` established 24.07.). Codeseite unveraendert: `volumen_generator.py` kennt weiterhin nur die CLI-Flags `--parzelle/--out/--name` + Zonenflags, liest kein Parameter-Set (Z. 127 ff.). MVP-Bau weiterhin offen. **Lauf 03 (01.08.):** unveraendert nachgemessen — CLI weiterhin nur `--parzelle/--out/--name/--variante` (Z. 128 ff.), letzte inhaltliche Aenderung der Datei liegt vor dem 25.07. **Lauf 04 (13.08.):** erneut unveraendert nachgemessen — CLI weiterhin `--parzelle/--out/--name/--variante` (Z. 128–131), kein Commit auf die Datei seit dem 25.07. |
| SYN-03 | wettbewerb · volumenstudie · flaechen-nachweis · studien-generator | 4 | Konformitaets-Loop + SIA-416-Flaechennachweis + 3D-Pipeline erlauben mehr Wettbewerbsteilnahmen bei gleichem Personalaufwand; Faehigkeit ist im Service-Katalog nicht abgebildet. | Katalog-ENTWURF «S5 Wettbewerbs-Fabrik»: eigene Teilnahmen skalieren + Zulieferung (Flaechennachweis/Programm-Konformitaetspruefung) fuer Partnerbueros. | umgesetzt 15.07.2026 — S5 im Katalog aktiviert (Freigabe Raphael) |
| SYN-04 | behoerden-vorabklaerung · auflagebereinigung | 1+3 | Die Fragen VOR dem Entscheid und die Auflagen NACH dem Entscheid sind nicht rueckgekoppelt: Vorabklaerungs-Antworten speisen keine Auflagen-Erwartung; `auflagen-tracker`-Erkenntnisse verbessern die Fragen-Generierung nicht. | Loop schliessen: je Projekt Vorabklaerungs-QA als Input der Auflagebereinigung; wiederkehrende Auflagen-Muster als neue Standardfragen in den Fragenkatalog zurueckschreiben (KB `wissen/auflagebereinigung`). | teilweise geschlossen (Lauf 02, 25.07.): **Hinrichtung dokumentiert** — `skills/auflagebereinigung/SKILL.md` Z. 30 «Vorgelagert: `behoerden-vorabklaerung` (Fragen VOR dem Entscheid)» + Kettengrafik Z. 43. **Rueckkopplung weiterhin offen:** `agents/auflagen-tracker.md` Z. 19 schreibt Erkenntnisse nur in das EIGENE Wiki zurueck; `skills/behoerden-vorabklaerung/SKILL.md` kennt keinen Auflagen-Input, der Fragenkatalog waechst nicht aus realen Auflagen-Mustern |
| SYN-05 | unternehmerfindung (Stammdaten-DB) · macOS-Kontakte · bexio-Kontakte | 2 | Firmen-/Kontaktdaten werden dreifach gepflegt; Submittentenlisten und Rechnungen koennen divergieren. | Stammdaten-DB `ausschreibung/anbieter/stammdaten/` als fuehrend bestimmen; Abgleich-Routine gegen bexio/Kontakte (read-only Diff, Meldung statt Auto-Merge). | offen |
| SYN-06 | offertenpruefung · kostenkontrolle · wissen/grobkosten | 3 | Reale Marktpreise (eingehende Offerten, gepruefte Schlussabrechnungen) verpuffen — sie fuettern die Kennwerte-DB nicht. | Rueckfluss-Schritt in beide Skills: je Offertenauswertung/Schlussabrechnung einen anonymisierten Kennwert-Datenpunkt nach `wissen/grobkosten/raw/` kippen (Bibliothekar kompiliert). | teilweise adressiert (Lauf 03, 01.08.): die neue Rule `wissens-ruecklauf` (31.07., importiert) macht den Rueckfluss nach jedem substanziellen Deliverable zur **allgemeinen** Pflicht. Der **benannte Kanal fehlt weiterhin**: `skills/offertenpruefung/SKILL.md` und `skills/kostenkontrolle/SKILL.md` je 0 Treffer auf `grobkosten` und 0 auf einen Rueckfluss-Schritt. Eine generische Pflicht ersetzt den konkreten Kippschritt nach `wissen/grobkosten/raw/` nicht |
| SYN-07 | wissen/energie · energie-berater · planungsgrundlagen | 4 | Strategische Energie-KB (120 PDF, Destillate, Bauherren-FAQ) + Fachagent existieren, aber kein verkaufbares Paket im Katalog. | Katalog-ENTWURF «S6 Energie-Vorabklaerung»: PV-/Solar-Eignung + Energienachweis-Vorpruefung + belegte Bauherren-Antworten als Fixpreis-Produkt (Add-on zu S1/S3). | umgesetzt 15.07.2026 — S6 im Katalog aktiviert (Freigabe Raphael) |
| SYN-08 | twin · marketing (linkedin-texter/-engagement) | 1 | LinkedIn-Agenten fuehren eine EIGENE Stil-Definition (polarisierender Stakkato-Stil); das Twin-Fidelity-Gate laeuft dort nicht — zwei Stimmen-Modelle nebeneinander. | LinkedIn-Erzeugnisse ebenfalls durch `twin-chef` (Facette Stimme/Haltung) fuehren; Stakkato-Stil als dokumentierte Ausnahme-Registerlage IN der Twin-KB statt daneben. | offen, **verschaerft durch Lauf 04 (13.08.)**: die Grundkontext-Diaet hat den DNA-Feinregelsatz nach `rules/jans-dna-facetten.md` ausgelagert (nicht importiert). Die drei LinkedIn-Agenten haben je 0 Treffer auf `jans-dna-facetten`, 0 auf `jans-dna` und 0 auf `twin` — sie beziehen den JANS-Stil weder ueber einen expliziten Zeiger noch ueber das Fidelity-Gate. Siehe SYN-22 |
| SYN-09 | machbarkeit-studio (Hosting) · website-content · marketing | 4 | Live-Studios (Hostpoint-Links) sind ein Akquise-Differenzierer, werden aber weder auf raphaeljans.ch noch in LinkedIn-Posts systematisch eingesetzt. | Demo-Studio (anonymisierte Parzelle) auf der Website verlinken; LinkedIn-Content-Saeule «interaktiv statt PDF» im Redaktionsplan verankern. | offen |
| SYN-10 | auflagebereinigung · terminplanung · logbuch | 1 | Auflagen-Fristen fliessen ins Logbuch-Fristenregister, aber nicht automatisch in Bauprogramme/Ausfuehrungsterminplaene (`terminplanung`). | Uebergabeformat definieren: Auflagenliste-Fristen als Meilenstein-Input fuer `terminplanung` (vor Baubeginn/Arbeitsvergabe/Inbetriebnahme). | Kante beidseitig gesetzt (Lauf 02, 25.07.): `auflagebereinigung` nannte `terminplanung` bereits als nachgelagert (SKILL.md Z. 32), die Gegenseite stand auf «Vorgelagert: —» — asymmetrische Kante, die empfangende Seite kannte den Zulieferer nicht. Querverweis in `skills/terminplanung/SKILL.md` direkt gesetzt (active-with-flagging). **Offen bleibt das Uebergabe-FORMAT** (welche Frist wird zu welchem Meilenstein) — inhaltliche Arbeit, nicht nur Verweis |
| SYN-11 | Bauleitungs-Backend (S4) · hub-chef | 4 | «auch fuer Dritte» steht im Katalog, ist aber nicht als B2B-Angebot ausformuliert (Zielgruppe: Bueros ohne KI-Infrastruktur). | Im Geschaeftsmodell-Konzept als eigenes Modell (GM4) ausarbeiten; Preislogik pro Stufe statt SIA-Prozent. | offen |
| SYN-12 | versandplanung | 6 | Parkiert per Entscheid 11.07.2026 — korrekt stillgelegt, keine Doppelpflege festgestellt. | Keine Aktion; Wiedereinstieg nur auf Zuruf bei Spec E1. | erledigt |
| SYN-13 | wissen/wettbewerbs-dna (Etappe 3) · healthcare-wirtschaftlichkeit · kostenschaetzung · wissen/entwurfs-referenzen | 3 | **Typologie-Asymmetrie zuungunsten der Kern-Bauaufgabe.** Der Sweep vom 23.07. hat 48 Healthcare-Wettbewerbe gesichtet und **42 Juryberichte per HTTP verifiziert** (22 Pflegeheim/Alterszentrum, 11 Spital/Klinik, 6 Psychiatrie — `outputs/2026-07-23_etappe3-healthcare-sweep.md`), 6 sind bereits als `wiki/extern/`-Artikel kompiliert. Fuer den Bildungsbau ist dieselbe Kette vollstaendig durchgezogen (Benchmark `kennwerte-schulbauten` established, 431 refuter-bestaetigte Kennzahlen → Parameter-Set `schule-volksschule-ch.json` refuter-bestanden → Wiki-Artikel `typologien/bildung.md`). Fuer Healthcare — die eigentliche JANS-Kern-Bauaufgabe mit zwei eigenen Skills — endet die Kette beim Rohmaterial: `parameter-sets/healthcare-neubau-zh.json` steht unveraendert auf v1.0 und stuetzt sich auf CURAVIVA-Richtwerte, Wuest-Baukostenindex und eigene Projekte, **nicht** auf die neuen Juryberichte; kein `typologien/healthcare.md`; kein einziger Verweis von `skills/healthcare-wirtschaftlichkeit/` oder `skills/kostenschaetzung/` auf `wettbewerbs-dna` (Grep ueber beide Skills: 0 Treffer). | Die Bildungs-Kette als Bauplan auf Healthcare anwenden: Etappe-3-Folgelaeufe B2–B6 fuer Healthcare durchziehen (Takt-Regel: EIN Baustein je Lauf), daraus `healthcare-neubau-zh.json` auf v2.0 mit belegten Referenzbaendern heben (Betten-/Pflegeplatzzahlen, HNF/GF, Programm-Mengengeruest) und `typologien/healthcare.md` kompilieren. Erst danach die beiden Healthcare-Skills per Contract-Zeile an die KB anschliessen. Direkter Hebel auf S5 (Wettbewerbs-Fabrik) und SYN-02, weil Healthcare die Bauaufgabe mit der hoechsten JANS-Trefferquote ist. | offen — **Lauf 04 (13.08.) nachgemessen trotz Bewegung in `wettbewerbs-dna`:** Etappe 4 Lauf 01 vertiefte `2408 BIWAK` (SAC-Huette), nicht Healthcare; `wissen/entwurfs-referenzen/wiki/typologien/` enthaelt weiterhin nur `INDEX.md` und `bildung.md`. Kein `healthcare.md`, Befund unveraendert in voller Schaerfe |
| SYN-14 | pdf2dwg · volumenstudie · ankaufspruefung · Rule projekt-ablage-stand | 1+2 | **Neuer Skill als Insel eingehaengt.** `pdf2dwg` (erstmals im Git-Delta seit Lauf 01) ist funktional fertig und am Referenzfall 2619 KISPI validiert (240'414 Striche → ~14'500 Entities), aber strukturell nicht verdrahtet: (a) kein `## Contract`-Block — einer von nur 4 der 49 Skills ohne (neben `oereb-schwyz`, `planungsgrundlagen`, `volumenstudie`), also ohne Vorgelagert/Nachgelagert/Abhaengige-Rules; (b) ausser CLAUDE.md verweist **kein** Skill/Agent/Rule auf ihn, obwohl `volumenstudie` einen validierten DXF-Rueckkanal fuehrt (SKILL.md Z. 96 ff.) und `ezdxf` bereits im selben Werkzeugkasten liegt; (c) die Ablage-Ansage «schreibt das DWG in denselben Ordner wie das Quell-PDF» kollidiert mit Rule `projekt-ablage-stand.md` Z. 21, die CAD-Austausch verbindlich nach `09_Dokumente/CLAUDE/09_CAD-Austausch/` (`00_Grundlage/10_Raphael/20_Rueck/99_Archiv/`) legt. | Contract-Block nachruesten und darin die Ablage auf den CAD-Austausch-Ordner umstellen (bzw. die Abweichung explizit begruenden, falls das Ablegen neben dem Quell-PDF fuer Fremdplaene gewollt ist — dann als dokumentierte Ausnahme, nicht als stiller Widerspruch). Kette benennen: Fremdplan-PDF → `pdf2dwg` → `volumenstudie` (Bestandsgeometrie) bzw. `ankaufspruefung` (Bestandsplaene). Contract-Nachruestung der drei uebrigen Skills im selben Zug pruefen. | offen — **Lauf 04 (13.08.) nachgemessen: unveraendert**, alle vier Skills (`pdf2dwg`, `oereb-schwyz`, `planungsgrundlagen`, `volumenstudie`) weiterhin ohne `## Contract`-Block und ohne die drei Pflichtfelder. Durch SYN-20 zum Muster verstaerkt (zweiter neuer Skill in Folge mit fehlenden Graph-Feldern) |
| SYN-15 | wissen/architekten-synobsis · wissen/entwurfs-referenzen · SYN-02-Spec | 3+5 | **Typologie-Schicht entstand vier Tage nach der Spec, die sie braucht.** `wissen/architekten-synobsis/wiki/RAUMTYPOLOGIEN.md` (24.07., established) macht die Sammlung «1 Selection» als Entwurfsreferenz nutzbar: 9 Raumtypologien mit 105 zugeordneten Projekten, maschinenlesbar hinterlegt in `catalog/typology-map.json` + `catalog/raumtypen-beschreibungen.json`. Die SYN-02-Spec vom 20.07. listet als Faktenbasis nur `entwurfs-referenzen`, `wettbewerbs-dna` und `grobkosten` — RAUMTYPOLOGIEN/`typology-map.json` sind darin nicht vorgesehen und werden ausserhalb der eigenen KB nirgends referenziert (Grep ueber `entwurfs-referenzen/`, `spec/`, `skills/`: 0 Treffer). `typologien/INDEX.md` verweist bereits generisch auf Abfragen gegen die Synobsis, kennt aber das konkrete neue Artefakt nicht. | Die Raumtypologie als **dritte Dimension** in den SYN-02-MVP aufnehmen (heute: Zonen-Maxima + typologisches Parameter-Set; neu zusaetzlich die Parti-/Raumfigur-Ebene). Konkret: Spec-Nachtrag «Quellen» um `typology-map.json` ergaenzen und in `typologien/INDEX.md` den Direktverweis setzen. Klein im Aufwand, gross in der Wirkung — es ist der Unterschied zwischen regelkonformem Volumen und typologisch begruendetem Entwurfsvorschlag. | offen |

| SYN-16 | wissen/bauprodukte · wissens-destillat · ausschreibung · offertenpruefung · kostenschaetzung | 1+2 | **Neue KB haengt als Insel, daneben laeuft Parallelwissen.** Der Skill `wissens-destillat` hat am 28.07. Korpus 1 eroeffnet und `wissen/bauprodukte` mit 8 Wiki-Artikeln gefuellt (`bkp-261-aufzuege.md`, `terrazzo-kunststein-bodenbelaege.md`, `dachbegruenung-systeme.md` u.a.). Grep ueber `skills/`, `agents/`, `rules/`, `services/`: **null Verweise** ausserhalb des Erzeugers; einziger Fundort ist die Aufzaehlung in `CLAUDE.md` Z. 253. Dabei benennt die KB ihren Konsumenten selbst — `wissen/bauprodukte/CLAUDE.md` Schreibregel 5 verlangt «herstellerneutral formulieren, wo der Artikel in ein LV fliessen koennte». `skills/ausschreibung/SKILL.md` nennt in «Inputs» keine einzige `wissen/`-KB. **KORREKTUR am selben Tag (01.08., nachgemessen):** Die im Erstbefund behauptete zweite Haelfte — eine sich anbahnende Doppelspurigkeit mit `ausschreibung/wissensbasis/05_knowhow-gewerke.md` — **traegt nicht**. Die Sektionsliste des Korpus enthaelt 272 (Metallbau) bereits, aber `05_knowhow-gewerke.md` sagt zu 272 ausschliesslich LV-Schreibpraxis («funktional ausschreiben — zu spezifisch fuer ein NPK-LV; Grundlage Architektenplaene statt Positionsverzeichnis») und zu 281/282 nichts. Die Datei enthaelt durchgehend Ausschreibungsform, keine Produktaussage; 271/226/285 fehlen im Bauprodukte-Korpus ganz. Die Rollentrennung, die der Erstbefund als Entscheid vorlegte, wird faktisch bereits gelebt. Der Befund reduziert sich auf **Typ 1**. | Kante setzen (Rollentrennung braucht keinen Entscheid, sie besteht): `bauprodukte` in die «Inputs»-Zeile von `ausschreibung`, `offertenpruefung`, `kostenschaetzung` — Produktnamen im LV nur als Beispiel, nie als Vorgabe (Rule 260626). Kollisionsflaeche kuenftiger Laeufe bleibt zu beobachten, aber nicht praeventiv zu regeln. | umgesetzt 01.08.2026 (Lauf 03 — Contract-Querverweis in den drei Skills gesetzt, active-with-flagging; kein Entscheid Raphael noetig, Erstbefund korrigiert) |
| SYN-17 | connectors/hub-setup-daten.json · CLAUDE.md · Rule 260730 · Rule 260719 | 2 | **Setup-Fakten doppelt gepflegt, die Kopie liegt im immer geladenen Kontext.** Rule 260730 erklaert `connectors/hub-setup-daten.json` zur kanonischen Quelle («nur dort pflegen»). Dieselben Fakten stehen ausformuliert in drei CLAUDE.md-Tabellen: Netzwerk (LAN-/Tailscale-IPs aller Stationen), E-Mail-Konten (6 Adressen mit Typ/Verwendung), M365-Connector (App-ID, Tenant-ID, Zertifikatspfad, Gueltigkeit bis 03/2028). Beide Staende stimmen heute ueberein (gemessen, nicht angenommen). Das Risiko ist asymmetrisch: CLAUDE.md wird IMMER geladen, die JSON nur bei bewusstem Connector-Aufruf — bei der naechsten Aenderung (Zertifikatserneuerung, IP-Wechsel) gewinnt in der Praxis die Kopie. Zusaetzlich Kollision mit Rule 260719 (CLAUDE.md ist Wegweiser, nicht Dokumentation). | Die drei Tabellen auf je eine Wegweiser-Zeile eindampfen («Stationen, IPs, SSH-Wege, Mail-Konten, M365-Parameter: `node connectors/hub-setup.mjs --alles`»), Details nur noch in der JSON. Spart Grundkontext und beseitigt die Divergenzquelle in einem Schritt. | umgesetzt 01.08.2026 (Freigabe Raphael) — differenziert wie empfohlen: Netzwerk-Tabelle und M365-Parameter aus CLAUDE.md entfernt und durch einen Wegweiser auf `hub-setup.mjs --alles` ersetzt; die drei nur in CLAUDE.md gefuehrten M365-Fakten (Berechtigungen, Gruppen-Logik, Erneuerungs-Anleitung) VORHER in `hub-setup-daten.json` nachgetragen, damit nichts verloren geht (gegengeprueft: 14 Stichproben, JSON=0-Treffer nirgends). Mail-Konten bewusst als zwei Zeilen Verhaltenswissen behalten (Standard-Absender, kein Gmail, Apple Mail), Adressliste in die JSON. Zertifikats-Faelligkeit 23.03.2028 bleibt sichtbar, weil Termin und nicht Nachschlagewert |
| SYN-18 | wissens-destillat · SKILL-CONTRACT · spec · wissenscheck | 1 | **Contract des neuen Skills war unvollstaendig.** `skills/wissens-destillat/SKILL.md` (28.07.) trug Trigger, Inputs, Output und Nicht-Ziel, aber keines der drei Pflichtfelder **Abhaengige Rules / Vorgelagert / Nachgelagert** (`skills/SKILL-CONTRACT.md`, Abschnitt 2). Genau diese Felder tragen den Prozess-Graphen: ohne sie ist ein Skill fuer jeden Ketten-Befund unsichtbar — obwohl dieser hier Wissen fuer vier Fach-Skills erzeugt. Rollen-Registrierung war korrekt (`rollen-map.tsv` Z. 78/113, `sweeper`). | Erledigt: Felder nachgetragen (vorgelagert `spec`; nachgelagert `wissenscheck` + Bibliothekar-Betrieb der Ziel-KB + die je Korpus konsumierenden Fach-Skills). | umgesetzt 01.08.2026 (Lauf 03, active-with-flagging — mechanische Vervollstaendigung gegen SKILL-CONTRACT, ohne inhaltliche Entscheidung) |
| SYN-19 | CLAUDE.md · brandschutz · honorarberechnung-sia102 · masterclass · telesales · tenant-hygiene · heartbeat · email-preferences | 1 | **Sieben von 50 Skills fehlen im Wegweiser.** Case-insensitive Volltextsuche in CLAUDE.md: 0 Treffer fuer `brandschutz`, `honorarberechnung-sia102`, `masterclass`, `telesales`, `tenant-hygiene`, `email-preferences`; `heartbeat` nur als Command, nicht in der Skill-Tabelle. Zwei davon sind fachliche Kern-Skills mit Status `aktiv` im Rollen-Register: `brandschutz` (builder) und `honorarberechnung-sia102` (builder). **Ehrliche Abgrenzung:** das technische Routing laeuft ueber die `description`-Frontmatter, nicht ueber CLAUDE.md — es ist kein harter Trigger-Block. Verloren geht die Kompositionssicht bei der Auftrags-Dekomposition. Die Verbindung zu den Register-Notizen «nie geladen» (telesales, masterclass, Stand 29.07.) ist damit **Hypothese, kein Beweis** — aber pruefbar. | Die sieben Zeilen in der Skill-Tabelle ergaenzen (`email-preferences` steht als `referenz`/`parkiert` — dort genuegt eine Fussnote). Danach in der naechsten Rollen-Bilanz nachmessen, ob sich die Ladehaeufigkeit von `telesales`/`masterclass` bewegt: das trennt die Sichtbarkeits-Hypothese von echtem Bedarfsmangel. | umgesetzt 01.08.2026 (Freigabe Raphael) — 6 Zeilen ergaenzt (`brandschutz`, `honorarberechnung-sia102`, `heartbeat`, `tenant-hygiene`, `masterclass`, `telesales`), `email-preferences` als Fussnote statt Tabellenzeile. Gegenprobe: alle 50 Skills auf Platte sind jetzt in CLAUDE.md erwaehnt, 0 Fehlstellen |
| SYN-20 | energie (neuer Skill) · machbarkeit · machbarkeit-studio · kostenschaetzung · grobkosten-onepager · ankaufspruefung · immobilienbewertung · healthcare-wirtschaftlichkeit · wettbewerb · auflagebereinigung · energie-berater · SKILL-CONTRACT | 1 | **Neuer Fuehrungs-Skill einseitig verdrahtet, Contract-Graph fehlte.** `skills/energie/SKILL.md` (Freigabe Raphael, Meta-Punkt M2) loest den Umweg ueber `planungsgrundlagen` (PL-04) ab und benennt Z. 80–82 neun Fach-Skills, die «hier belegen», sowie Z. 79 den Agenten `energie-berater` als Fan-out. Gegenprobe ueber alle zehn Dateien: **0 von 10 nennen den Skill `energie`**, 0 von 10 nennen `wissen/energie`. Einzige gesetzte Rueckkante ist `planungsgrundlagen` (3 Treffer, Z. 29 und Z. 65–70) — dort ist die Abgabe sauber und datiert dokumentiert. Exakt das SYN-10-Muster: eine Kante, die nur der Zulieferer kennt. Zweitens trug der Skill zwar einen `## Contract`-Block, aber **keines der drei Pflichtfelder** `Abhaengige Rules`/`Vorgelagert`/`Nachgelagert` (`skills/SKILL-CONTRACT.md` Abschnitt 2) — der zweite neue Skill in Folge mit diesem Defekt (nach SYN-18, `wissens-destillat`, 28.07.), zusammen mit den vier contractlosen Skills aus SYN-14 ein Muster und kein Einzelfall. | (a) Rueckkanten in den neun Fach-Skills setzen (je eine Zeile in «Inputs»/«Verknuepfungen»), damit die empfangende Seite die neue fuehrende Quelle kennt. (b) Mechanische Contract-Pruefung bauen: kleines Script, das alle `skills/*/SKILL.md` ohne die drei Pflichtfelder listet, in `heartbeat` oder `wissenscheck` einhaengen — sonst wiederholt sich der Defekt beim naechsten neuen Skill. | Contract-Teil **umgesetzt 13.08.2026** (Lauf 04, active-with-flagging — die drei Felder in `skills/energie/SKILL.md` nachgetragen, inhaltlich aus dem Skill-eigenen Text abgeleitet, keine inhaltliche Entscheidung). **Rueckkanten (a) und Pruefscript (b) offen** — **Lauf 05 (13.08.) nachgemessen: (a) weiterhin 0 von 9**, keiner der neun genannten Fach-Skills nennt `energie` oder `wissen/energie`. Bewegt hat sich stattdessen ein **zehnter**: `stockwerkeigentum` hat am 13.08. (Wissens-Chef Run 29) die Rueckkante zu `energie` gesetzt (Heizungsersatz als Ausloeser des Sanierungsbeschlusses) — mit der Begruendung, die Energie-KB verweise bereits hierher und der Rueckweg fehle. Die Reparatur zielt damit neben die dokumentierte Luecke. Die neue Kante war zudem selbst wieder einseitig: `skills/energie/SKILL.md` fuehrte `stockwerkeigentum` nicht in seiner Konsumentenliste (0 Treffer); **im Lauf 05 nachgezogen** (active-with-flagging). (b) **Pruefscript umgesetzt 13.08.2026** (Parallel-Instanz desselben Laufs 05, active-with-flagging): `scripts/contract-check.sh` prueft alle `skills/*/SKILL.md` gegen `skills/SKILL-CONTRACT.md` Abschnitt 2 und trennt dabei die zwei Groessen, die bisher vermischt wurden — (A) Skills ganz ohne `## Contract`-Block = die SYN-14-Groesse, heute **4** (`oereb-schwyz`, `pdf2dwg`, `planungsgrundlagen`, `volumenstudie`); (B) Skills mit Block, aber unvollstaendigen Pflichtfeldern = die SYN-20-Groesse, heute **9** (`hub-chef`, `logbuch`, `mahnwesen`, `massgebendes-terrain`, `normen`, `spec`, `tenant-hygiene`, `versandplanung`, `zahlungsabgleich`). **Zusammen 13 von 51 Skills** — der Defekt ist damit kein Muster aus zwei Faellen, sondern ein Viertel des Bestands, darunter drei Fuehrungs-Skills (`hub-chef`, `logbuch`, `spec`), deren Graph-Kanten die Orchestrierung tragen. Exit-Code 1 bei Fehlstellen, damit der Check in `heartbeat`/`wissenscheck` einhaengbar ist; die Einhaengung selbst ist **nicht** erfolgt, weil `skills/heartbeat/SKILL.md` im selben Fenster von einem anderen Lauf bearbeitet wurde (Check 14) und ein paralleler Edit derselben Datei genau das Risiko aus Rule `auto-verbesserungen` 260811 ist) |
| SYN-21 | services/KATALOG.md (S6) · energie · energie-berater · planungsgrundlagen | 1 | **Aktiver Service zeigt auf den abgeloesten Weg.** S6 «Energie-Vorabklaerung» (aktiviert 15.07.2026 aus SYN-07) fuehrt in der Zeile «Pipeline» weiterhin «Agent `energie-berater` (PL-04) · KB `wissen/energie/` · Grundlagen via `planungsgrundlagen`» — 0 Treffer auf den Skill `energie`. Seit der Verselbstaendigung fuehrt aber der Skill dieses Feld, und `planungsgrundlagen` hat die Abgabe bereits vermerkt (Z. 29, Z. 65–70). Der Agent bleibt richtig (er ist weiterhin der Fan-out), die **Fuehrung** stimmt nicht mehr. | Pipeline-Zeile umstellen auf: «Skill `energie` (fuehrt die Fachantwort) · Agent `energie-berater` (Fan-out PV/U-Wert/Nachweis) · KB `wissen/energie/` · Grundlagen via `planungsgrundlagen`». Nicht im Lauf ausgefuehrt — der Katalog ist Raphaels Produkttext (Leitplanke: Services nie eigenmaechtig aendern). Nebenbeobachtung: S6 steht heute auf deutlich reiferem Fundament als bei der Aktivierung (212+ Destillate, 196+ Kernfragen, ZH und SZ vollstaendig) — ob das Preis/Umfang aendert, ist ein Entscheid, keine Messung. | offen (Freigabe Raphael noetig) |
| SYN-22 | rules/jans-dna-facetten.md · linkedin-texter/-engagement/-stratege · bericht-autor · website-content · marketing · protokoll · telesales · twin | 1 | **Nebenwirkung der Grundkontext-Diaet auf den Stil-Strang.** Commit `b2f29162` (Freigabe Raphael) hat den DNA-Feinregelsatz (30.7 kB) aus dem immer geladenen `rules/jans-dna.md` nach `rules/jans-dna-facetten.md` ausgelagert — bewusst **nicht** importiert; der Kern traegt die Leseanweisung «vor JEDEM ausgehenden Texterzeugnis zu lesen». Explizit nachverdrahtet wurden fuenf Stellen (`grep -rl`): `skills/twin`, `skills/korrektur`, `agents/email`, `agents/dokument`, `scripts/mail-draft-guard.sh`. **Nicht verdrahtet**, je 0 Treffer auf `jans-dna-facetten` UND 0 auf `jans-dna`: `linkedin-texter`, `linkedin-engagement`, `linkedin-stratege`, `bericht-autor`, `website-content` (Agent + Skill), `marketing`, `protokoll`, `telesales`. **Ehrliche Abgrenzung:** keine harte Kappung — die Leseanweisung im importierten Kern erreicht jede Session. Verschoben hat sich die Verlaesslichkeit: vier Konsumenten haben einen expliziten Zeiger, neun verlassen sich allein auf die generische Pflicht. Betroffen ist ausgerechnet der LinkedIn-Strang aus SYN-08. | Bedingten Zeiger in den neun Bausteinen setzen («vor dem Ausformulieren eines ausgehenden Textes `rules/jans-dna-facetten.md` lesen») — bedingt formuliert, nicht als Pauschal-Import, damit der Diaet-Gewinn (117.2 → 85.9 kB, −26 %) erhalten bleibt. Schliesst zugleich die Haelfte von SYN-08. Adversariale Gegenpruefung: das einzige Gegenargument (neun neue Zeiger untergraben die Diaet) wird durch die bedingte Formulierung entschaerft. | offen |

| SYN-23 | mahnwesen · zahlungsabgleich · connectors/bexio.mjs · hub-chef | 1 | **Der Mahn-Skill kennt den Vorbehalt nicht, der ihn korrigiert — und er ist die Seite, die nach aussen wirkt.** `zahlungsabgleich` fuehrt seit 13.08.2026 den Befund `unrecOhneZwilling`: ein CREDIT im Status `unreconciled`, zu dem KEINE abgeglichene Transaktion mit gleichem Konto, Typ, Valuta und Betrag existiert — also nicht das bekannte Doppelimport-Duplikat, sondern unzugeordnetes Geld (`skills/zahlungsabgleich/SKILL.md`, Commit `72a0e5aa`; Connector-Feld ergaenzt in `connectors/bexio.mjs`). Genau dieser Fall bricht die harte Kernregel des Mahnwesens: `skills/mahnwesen/SKILL.md` Z. 44–46 leitet Verzug ausschliesslich von der **Rechnungsseite** ab (`total_remaining_payments` > 0 UND `is_valid_to` < heute). Ist das Geld in bexio angekommen, aber nie einer Rechnung zugeordnet, bleibt der Restbetrag stehen und die Rechnung erscheint ueberfaellig, obwohl sie gedeckt ist. Belegt, nicht hypothetisch: Tx 3630 vom 07.08.2026, CHF 6'000, deckungsgleich mit der offenen RE-00101 (`logbuch/fristen.md` Z. 71, 89–91). Kanten-Messung: `zahlungsabgleich` nennt `mahnwesen` **8-mal**, `mahnwesen` nennt `zahlungsabgleich` **0-mal** — das SYN-10-Muster, diesmal mit der unwissenden Seite am Kundenkontakt. Gegenprobe `hub-chef`: nennt beide Loops (Z. 25 als Morgen-Loops, Z. 123 als Dispatch-Ziel), stellt aber keine Beziehung zwischen ihnen her, ueberbrueckt die Luecke also nicht. **Ehrliche Daempfung:** Phase 2 des Mahnwesens ist ausnahmslos interaktiv, ein Mensch sieht den Vorschlag; und der konkrete Tx 3630 wird im Fristen-Register aktiv gefuehrt. Der Fehler waere also eine falsche Vorlage, kein automatisch versandter Mahnbrief. Strukturell bleibt er: der naechste gleichgelagerte Fall trifft dieselbe blinde Kernregel. | Erledigt (a): Querverweis in `mahnwesen` gesetzt — Vorbehalts-Block direkt unter der Kernregel mit der Gegenpruefung `node connectors/bexio.mjs --abgleich --json` → Feld `unrecOhneZwilling` vor jedem Mahnvorschlag, plus `zahlungsabgleich` in der Zeile «Verwandt». Offen (b): ob die Gegenpruefung zusaetzlich **maschinell** in Phase 1 gehoert (der `--verzug`-Scan koennte die Treffer selbst markieren, statt sich auf die Lese-Disziplin zu verlassen) — das ist eine Aenderung am Connector und an einem geldnahen Skill, deshalb hier nur vorgeschlagen. | (a) umgesetzt 13.08.2026 (Lauf 05, active-with-flagging — Querverweis auf einen bestehenden Befund, keine Aenderung an der Mahn-Mechanik); (b) offen |
| SYN-24 | Rule normen-referenz · wissen/normen · normen · ausschreibung · werkvertrag · unternehmerkontrolle · 8 weitere Fach-Skills | 1+3 | **Der Verifikationsstatus der Destillate erreicht einen von elf Abnehmern.** Rule `normen-referenz.md` (importiert, immer aktiv) schickt in Z. 21–23 elf Fach-Skills in die Normen-KB («Register + Destillate»), nennt den Verifikationsstatus aber nirgends (0 Treffer auf `status`/`speculative`/`established`). Die KB fuehrt ihn sehr wohl: `wiki/INDEX.md` hat eine Status-Spalte, und von 368 Destillaten stehen rund 35 auf `speculative`. Gemessen ueber alle elf: nur `ausschreibung` traegt den Vorbehalt (4 Treffer, gesetzt am 13.08. durch Wissens-Chef Run 30, Commit `2b6177dc`); die uebrigen zehn haben je **0 Treffer auf den Status und 0 auf «Destillat» ueberhaupt** — sie erreichen die KB ausschliesslich ueber die Rule. Der Anlass ist kein Gedankenspiel: `normen` Run 48 destillierte zu SIA 118/262 Ziff. 8.4.2.2 die Bedeutungsumkehr «beim Betonbau gar nicht inbegriffen», Run 29 verdrahtete sie um 01:13 in `ausschreibung`, Run 49 widerlegte sie um 01:43 am Original, Run 30 zog den Abnehmer nach. Die Korrekturkette funktionierte — aber nur fuer den einen zufaellig verdrahteten Abnehmer. Zweitens benennt die Warnkarte `wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` (`status: speculative`, ausdruecklich «keine Zitierquelle») selbst drei Konsumenten; gemessen kennen `werkvertrag` und `unternehmerkontrolle` sie nicht (je 0 Treffer auf `abb-reihe` UND auf `wissen/normen`), waehrend `skills/normen/SKILL.md` Z. 50 sie umgekehrt als Abnehmer fuehrt — das SYN-10-Muster, doppelt. | (a) Den Status-Vorbehalt in die **Rule** setzen statt in elf Skills: eine Stelle erreicht alle Abnehmer, auch die zehn, die «Destillat» gar nicht kennen. (b) Die zwei fehlenden Rueckkanten der Warnkarte setzen, mit dem Vermerk «Warnkarte, keine Zitierquelle». (c) Mechanische Absicherung pruefen: nichts hindert einen kuenftigen Lauf daran, erneut einen `speculative`-Wert in einen Fach-Skill zu verdrahten — genau das geschah heute um 01:13. Ein Check, der Skill-Zitate gegen den Status ihres Destillats haelt, waere der dauerhafte Schutz. | (a) und (b) **umgesetzt 13.08.2026** (Lauf 06, active-with-flagging): Punkt 1b in `rules/normen-referenz.md` (bewusst als Unterpunkt, kein Umnummerieren — Gegenprobe: kein Verweis im Hub zielt auf Punktnummern dieser Rule), Rueckkanten samt `normen-referenz` in den Pflichtfeldern von `werkvertrag` und `unternehmerkontrolle`. **Adversariale Gegenpruefung:** (i) Das Anwachsen einer importierten Rule ist per Rule 260719 begruendungspflichtig — 9 Zeilen Grundkontext gegen elf Abnehmer, und die Alternative (elf Skill-Edits) kostet beim Laden dasselbe und divergiert mit der Zeit. (ii) `wissen/WISSEN-CLAUDE.md` Z. 47 und 58–59 definiert die Status-Stufen bereits, aber das ist die Bibliothekar-Seite (Schreiben); kein Fach-Skill liest sie. Der Befund traegt. (c) offen |
| SYN-25 | pdf2dwg · connectors/WEGE.md · Rule wege-und-vollmachten | 1 | **Werkzeugwissen entsteht im Skill, das Wege-Register erfaehrt nichts davon.** Commit `675657b0` (13.08.) trug den Fall Schmidlin in `skills/pdf2dwg/SKILL.md` ein: Fremd-DXF nach DWG ueber ezdxf-Abflachung, dazu zwei belegte Sackgassen (LibreDWGs DXF-Reader scheitert an SPLINE/HATCH mit `READ ERROR 0x800`; ein 3DSOLID/ACIS uebersteht die Konvertierung nicht) und eine Verifikations-Falle (`dwg2SVG` zeigt fuer korrekte DWGs 1e20-Koordinaten, ein Render-Bug, kein Datenfehler). `connectors/WEGE.md` hatte dazu 0 Treffer auf `pdf2dwg`, `libredwg`, `dxf`, `dwg` und `ezdxf` — obwohl Rule `wege-und-vollmachten` Punkt 4 die Eintragung jeder gelaufenen Sackgasse verlangt («dieselbe Sackgasse zweimal zu laufen ist der teuerste vermeidbare Fehler») und die Faehigkeits-Matrix bereits Nicht-M365-Zeilen fuehrt (Git auf dem NAS, Mac-App-Store-Updates). | Matrix-Zeile setzen, die auf den Skill **zeigt**, statt den technischen Block zu kopieren: zwei Fassungen desselben Wissens divergieren, und die Sackgassen gehoeren dorthin, wo sie gepflegt werden. | umgesetzt 13.08.2026 (Lauf 06, active-with-flagging — Matrix-Zeile «CAD: Vektor-PDF oder Fremd-DXF nach DWG» plus Kurzhinweis auf die drei Fallen, mit ausdruecklichem Verweis auf `skills/pdf2dwg/SKILL.md` als fuehrende Fassung) |
| SYN-26 | Rule auto-verbesserungen (260813) · Rule projekt-ablage-stand · 2619 KISPI | 1 | **Die neue Ablageregel nennt ihr Ziel, das Ziel kennt sie nicht.** `rules/auto-verbesserungen.md`, Eintrag 260813 (Commit `2641d5ad`, Freigabe Raphael), schreibt fuer 2619 KISPI die zweifache Ablage fest — Original inklusive MD in die interne Bibliothek, Spiegel ohne MD in die fuer Projektbeteiligte zugaengliche — und verallgemeinert sie ausdruecklich («in geteilte, fuer Dritte zugaengliche Projektbibliotheken gehoeren nie MD-Quell- oder Arbeitsdateien»). Der Eintrag endet mit «ergaenzt Rule `projekt-ablage-stand.md`». Gemessen trug `projekt-ablage-stand.md` dazu nichts. Verschaerfend: derselbe Abschnitt dort (Z. 49–52) regelt Plattform-Downloads als **exakten** Spiegel der Quelle — ohne Querverweis liest sich «Spiegel» im selben Abschnitt gegenlaeufig zur neuen, bewusst reduzierten Spiegelung. | Querverweis in `projekt-ablage-stand.md` mit expliziter Abgrenzung der beiden Spiegel-Arten, damit die Ablage-Rule fuer sich allein lesbar bleibt (sie ist die importierte, die in jeder Session gilt). | umgesetzt 13.08.2026 (Lauf 06, active-with-flagging — Aufzaehlungspunkt im Abschnitt «Plattform-Downloads und Konzept-Dokumente», Wortlaut und Pfade bleiben in `auto-verbesserungen.md`, hier nur Zeiger und Abgrenzung) |
| SYN-27 | Rule dokument-layout-standard (260814c) · studien-generator (md2docx.py) · templates/dokument-layout · alle dokumentproduzierenden Skills | 1 | **Die Listen-Neuregelung erreicht die Werkzeugschicht nicht.** `rules/dokument-layout-standard.md` Z. 15–21 (Commit `1a85e022`, Vorgabe Raphael) verbietet in ausgehenden Dokumenten seit 14.08.2026 jede Aufzaehlungs-Bullet («•» wie «-») und verlangt nummerierte Positionen im Fliesstext (Themenblock 01, 02 …; Positionen 01.1, 01.2 …), weil Klick-Listen als KI-Erzeugnis identifizierbar und nicht referenzierbar sind. Beide Generatoren stehen unveraendert auf der alten Fassung: `skills/studien-generator/tools/md2docx.py` Z. 192 setzt fuer jede `- `/`* `-Zeile `doc.add_paragraph(style="List Bullet")`, und `templates/dokument-layout/build-document.template.js` Z. 81 ff. fuehrt `itemBold` mit `numbering: { reference: "items" }` als Bullet-Helper. Gegenprobe: 0 Treffer auf «Neuregelung», «14.08.2026» oder «Positionsnummer» in `templates/` und `skills/studien-generator/tools/`. Die Kante existiert sogar schon in der richtigen Richtung — `md2docx.py` Z. 10 nennt die Rule ausdruecklich als Grundlage —, sie zeigt nur auf den ueberholten Stand. Gewicht: `rules/dateinamen-konvention.md` erklaert md2docx.py zum Standardweg jeder MD→DOCX-Konvertierung, die Regel greift also genau dort nicht, wo am meisten Dokumente entstehen. | Beide Generatoren auf nummerierte Positionen umstellen (im Konverter: `- `-Zeilen nicht mehr nach «List Bullet», sondern als Positionsabsatz mit fetter Nummer; in der Vorlage `itemNum` zum Default machen). Braucht eine Vorgabe Raphaels zur Nummerierungstiefe und dazu, ob Word-Nummerierung oder Klartext-Praefix — deshalb hier gemeldet und nicht selbst umgesetzt. | offen (Lauf 07, 14.08.). **Warnhinweise gesetzt** (active-with-flagging): Kopf von `md2docx.py` und `templates/dokument-layout/BUILD-ANLEITUNG.md` nennen die Neuregelung samt Zwischenloesung (Positionen bereits in der MD-Quelle nummerieren; `itemNum` statt `itemBold`). Die Konverter-Logik ist bewusst unveraendert |
| SYN-28 | connectors/WEGE.md (Sackgasse 14.08.) · docs/referenz/osascript-beispiele.md · skills/email-preferences · Rule osascript-apple-apps | 1 | **Die Mail-Skriptsammlungen kennen weder die neue Sackgasse noch die geltende Rule.** (a) `connectors/WEGE.md` Z. 198 (Commit `1c84780f`) traegt seit 14.08. ein, dass der Apple-Mail-`whose`-Filter auf frisch synchronisierten Nachrichten still «nicht gefunden» liefert — belegt am Hub-Chef-Briefing (gesendet 08:51:44, per Filter unauffindbar, per Enumeration sofort). Die beiden Stellen, an denen im Hub tatsaechlich `whose` steht, wussten davon nichts: `docs/referenz/osascript-beispiele.md` Z. 49 (die von Rule `osascript-apple-apps.md` benannte Beispielsammlung) und `skills/email-preferences/SKILL.md` Z. 39/64 (`whose sender contains`). Gegenprobe: 0 Treffer auf «WEGE», «Sackgasse» oder «Enumeration» in beiden Dateien. (b) Beim Nachmessen fiel ein zweiter, aelterer Bruch auf: `skills/email-preferences/SKILL.md` Z. 34, 57 und 101 rufen `tell application "Mail"` mit dem Klarnamen auf — genau das, was die importierte Rule `osascript-apple-apps.md` seit macOS Tahoe verbietet (Konflikt mit der QuickLook-Erweiterung, Syntaxfehler beim ersten Mail-Befehl). Es ist die einzige Datei im Hub mit diesem Muster. Wirkung beider Teile: wer die Referenz oder den Skill als Vorlage nimmt, kopiert einen belegten Fehlweg und protokolliert im schlimmsten Fall einen erfolgreichen Versand als Fehlschlag — mit Zweitversand als Folge. | Warnhinweise an beiden Fundstellen, mit Verweis auf das Wege-Register und den Enumerations-Weg; die drei Klarnamen-Aufrufe auf die Bundle-ID nachziehen. | (a) umgesetzt 14.08.2026 (Lauf 07, active-with-flagging): Warnabschnitt in `osascript-beispiele.md` vor dem Test-Draft-Beispiel, inkl. Abgrenzung, dass `outgoing message` im eigenen Prozess unbetroffen bleibt; Warnblock in `email-preferences/SKILL.md` vor Schritt 1. (b) **umgesetzt 14.08.2026** (Wissens-Chef Run 32, Commit `fd176ad4` — nicht durch diesen Skill): alle drei Aufrufe in `skills/email-preferences/SKILL.md` auf `application id "com.apple.mail"` umgeschrieben, Warnblock entsprechend von «noch nicht nachgezogen» auf «nachgezogen» korrigiert. **Lauf 08 (15.08.) hub-weit gegengeprueft:** ausser der Rule selbst und den beiden Laufberichten, die den Fehler beschreiben, existiert kein Klarnamen-Aufruf von Mail oder Calendar mehr in `*.md`/`*.sh`/`*.mjs`/`*.py` — die Kante ist vollstaendig geschlossen |
| SYN-29 | Rule interaktive-eingriffe · Rule auto-verbesserungen (260814) · Rule modellwahl-routine (260814b) | 1 | **Zwei neue Regeln praezisieren je eine importierte Rule, ohne dass die praezisierte Rule davon weiss** — beide sind importiert und gelten damit in jeder Session, die Leserichtung ist aber einseitig. (a) Eintrag 260814 (Commit `92a5e7ac`) legt fest, dass systemseitige Cloud-Schalter (OneDrive-/Dropbox-Einstellungen, «Dateien bei Bedarf», Finder «Speicherplatz freigeben») **Raphael selbst** bedient und Claude dafuer keine Systemprozesse ausloest. `rules/interaktive-eingriffe.md` fuehrt Cloud-Sync/FileProvider aber als Klasse 2 unter der Regel «vorher ankuendigen, dann umkehrbar handeln» (Z. 15 f.) — wer nur diese Rule liest, kaeme fuer genau diese Schalter zum gegenteiligen Schluss. Das ist kein fehlender Querverweis, sondern ein inhaltlicher Widerspruch zwischen zwei gleichzeitig geltenden Regeln. (b) Eintrag 260814b (Commit `bbe29f93`) macht Opus 5 zum interaktiven Standard und Fable 5 zur punktuellen Ausnahme auf Raphaels Zuruf; `rules/modellwahl-routine.md` Z. 41 sagt dazu nur «jede interaktive Session laeuft im Standardmodell», ohne dass erkennbar waere, welches das ist und dass Loops nie auf Fable gestellt werden. Schwaecher als (a), aber dieselbe Bauart. | Gegenkante in beide praezisierten Rules setzen; bei (a) die Ausnahme direkt in der Klassenbeschreibung, damit die Rule fuer sich allein lesbar bleibt. | umgesetzt 14.08.2026 (Lauf 07, active-with-flagging): `interaktive-eingriffe.md` Klasse 2 nennt die Verschaerfung samt Abgrenzung, dass die uebrigen Cloud-Eingriffe bei der Ankuendigungspflicht bleiben; `modellwahl-routine.md` Punkt 5 nennt Opus-5-Default, Fable-Ausnahme und das Fable-Verbot fuer Loops. Wortlaut bleibt in `auto-verbesserungen.md`, hier nur Zeiger |
| SYN-30 | wissen/energie (bauoekologischer Beschaffungsstrang) · ausschreibung · werkvertrag · unternehmerkontrolle · kostenkontrolle | 1 | **Der Zulieferer nennt seine vier Konsumenten beim Namen, alle vier nennen nichts zurueck — und der Inhalt ist reines Bauleitungsmaterial.** Der Wissens-Chef hat am 14.08. (Commits `71d58190` 22:54 und `979f7d92` 23:39, beide im Fenster) den Artikel `wissen/energie/wiki/oekologische-materialvorgaben-beschaffung.md` um die Vertragsstufe erweitert und drei AHB-Destillate ergaenzt. Der Artikel schreibt seine Konsumenten Z. 241–243 ausdruecklich hin: «`ausschreibung` (LV-Positionen, Devis), `werkvertrag` (Ueberbindung, SIA 118), `unternehmerkontrolle` (Ausfuehrungskontrolle), `kostenkontrolle` (Kostenfolge bei Abweichung)», Z. 288–289 ein zweites Mal. Gegenprobe ueber alle vier: **0 Treffer auf `energie` oder `wissen/energie`** in jeder der vier `SKILL.md`. Auch `skills/energie/SKILL.md` fuehrte keinen der vier in seiner Konsumentenliste — die Kante existierte also nur im Wiki-Artikel, in keiner Skill-Datei. Der Inhalt ist dabei nicht energetisch, sondern vergaberechtlich: `ahb-devis-und-baustellenkontrolle-2008.md` traegt den Dokumenttitel «Kontrolle Oekologievorgaben in Ausschreibungen», `ahb-bedingungen-werkleistungen-nachhaltiges-bauen.md` ist laut Quelle «integrierter Bestandteil aller Werkvertraege», dazu `bauoekologische-submissionsbedingungen.md` und die sechsteilige ECO-BKP-Reihe **nach BKP-Code** (`ecobkp-2026-*`) — die Systematik, in der ein LV geschrieben wird. **Kein Doppelbefund:** Grep ueber `skills/ausschreibung/`, `werkvertrag/`, `unternehmerkontrolle/` nach `oekolog\|eco-bau\|SIA 493\|Warendeklaration` findet **eine** Streuerwaehnung in einem Goldstandard-LV, sonst nichts — es ist eine Ketten-Luecke (Typ 1), keine Doppelrechnung. Abgrenzung zu SYN-20: dort die neun Fach-Skills aus der Energie-Konsumentenliste; diese vier stehen dort nicht und sind eine eigene, neu entstandene Inhaltsklasse. Abgrenzung zu QUERBEZUEGE `normen ↔ energie` (13.08.): dort KB↔KB zur SIA 112/1, hier KB↔Skill. | Kante beidseitig setzen (mechanisch, kein Entscheid noetig — SYN-16-Praezedenz): je eine Klausel in der «Inputs»-Zeile von `ausschreibung`, `werkvertrag`, `unternehmerkontrolle`, dazu die Gegenrichtung in `skills/energie/SKILL.md`. Jede Klausel traegt den Alterskorpus-Vorbehalt mit, damit die Quelle von 2006/2008 nicht unbesehen in ein heutiges LV oder einen heutigen Vertrag wandert. | umgesetzt 15.08.2026 (Lauf 08, active-with-flagging): drei Inputs-Klauseln + Gegenkante in `energie` gesetzt, jede mit dem ⚠-Vorbehalt «uebertragbar ist die Mechanik, nicht der Wortlaut»; in `werkvertrag` zusaetzlich der Hinweis, dass die Rangfolge der Vertragsbestandteile nach SIA 118:1991 Art. 21/7 gilt und nicht nach der Selbstzuschreibung der Quelle (den Attributionsvorbehalt fuehrt das Destillat selbst). **`kostenkontrolle` bewusst NICHT verdrahtet:** der Artikel nennt es, die Substanz dazu ist aber ein einziger Mechanismus («Kostenfolge zulasten der Unternehmung»), und der erreicht die Kostenkontrolle ohnehin ueber den Werkvertrag, dessen Summen ihr Input sind — eine vierte Kante haette Kantenzahl statt Erreichbarkeit erhoeht |
| SYN-31 | agents/layout · agents/rechtschreibung · agents/dokument · skills/korrektur · Rule jans-dna | 1+3 | **Die teuer gelernte Formatregel steht nur beim einen der zwei parallelen Pruefer — und bei keinem Erzeuger.** Commit `f6d56967` (16.08., 07:07) verankert in `agents/layout.md` Z. 41–50 das Schweizer Zahlen-/Betragsformat: **Dezimaltrennzeichen bei Geldbetraegen ist der Punkt** (CHF 4'250.50, CHF 71.00), Apostroph als Tausendertrennzeichen, «%» mit Leerschlag — ausdruecklich als «NIE korrigieren» und mit dem Anlass im Text: der Agent meldete am selben Tag in einem Radar-Lauf **vier korrekte Frankenbetraege als Fehler** und verlangte Dezimalkomma, aus deutschem Sprachgefuehl abgeleitet. Gegenprobe hub-weit: `grep -rln "Dezimaltrenn\|Dezimalpunkt"` ueber `rules/`, `agents/`, `skills/`, `templates/` liefert **genau einen Treffer — `agents/layout.md`**. Auch anders formuliert existiert sie nicht (0 Treffer auf `Rappen`, `Nachkommastell`, `Betragsformat`, `Zahlenformat`); es gibt nur **Beispiele** mit Punkt (`agents/grobkosten-rechner.md` Z. 44 «CHF 1.45»), also gelebten Gebrauch ohne ausgesprochene Regel — genau die Konstellation, in der ein Pruefer sie «korrigiert». **Der akute Fall ist der Schwester-Agent:** `agents/rechtschreibung.md` laeuft laut `skills/korrektur/SKILL.md` Z. 43–45 **parallel** im selben Harness und traegt in Z. 62 selbst eine Zahlen-Regel («Schweizer Tausender-Apostroph (12'500), CHF vor der Zahl») — er ist fuer Zahlen also zustaendig, kennt das Dezimaltrennzeichen aber nicht und kann denselben Fehlbefund morgen erzeugen. **Verschaerfend die Merge-Reihenfolge:** `korrektur/SKILL.md` Z. 49–50 macht die Fassung von `rechtschreibung` zur **Text-Basis**, auf die `layout` erst danach angewendet wird — die Regel steht ausgerechnet in der nachgelagerten Instanz. Drittens die Erzeugerseite: `agents/dokument.md` Z. 42 (DOCX/XLSX-Erzeuger) und `rules/jans-dna.md` Z. 25 (Mikro-Stil, importierter Grundkontext) fuehren beide nur Apostroph und «%»; `rules/dokument-layout-standard.md` hat 0 Treffer auf Betrag/Dezimal. Wirkung ist nicht hub-intern: ein «korrigierter» Betrag in Offerte, LV oder Rechnung ist ein Fehler beim Kunden. Typ 3 (Compounding-Luecke), nicht Typ 1 — die Lehre existiert, sie erreicht nur einen von vier Beteiligten. | (a) Klausel in `agents/rechtschreibung.md` mit Verweis auf die fuehrende Fassung in `layout.md` und auf die Merge-Reihenfolge. (b) Klausel in `agents/dokument.md` (Erzeuger). (c) **Vorgeschlagen, nicht gesetzt:** die sechs Woerter «Dezimalpunkt bei Betraegen» in den bestehenden Mikro-Stil-Punkt `rules/jans-dna.md` Z. 25 — das ist der einzige Ort, der **jede** Erzeugung erreicht statt nur die Pruefer. Bewusst offen gelassen: die Datei ist importierter Grundkontext (Anwachsen begruendungspflichtig, Rule 260719) und wird vom Twin-Harness kompiliert; der Kern-Fingerabdruck ist Raphaels Stil-Definition, keine Synergie-Frage. | (a) und (b) umgesetzt 16.08.2026 (Lauf 09, active-with-flagging — Querverweise auf eine bereits getroffene Entscheidung, keine neue Formatvorgabe). (c) offen, Vorgabe Raphael noetig |
| SYN-32 | agents/twin-chef · skills/twin · Rule modellwahl-routine · Registry `twin-fidelity-review` | 1 | **Der Agent korrigiert seinen Takt am Registry-Stand, der Skill bleibt auf der alten Zahl — und der Lauf ist einer der wenigen, die nie delegiert werden duerfen.** Commit `9846c102` (16.08., 06:08) stellt `agents/twin-chef.md` Z. 49 von «Scheduled, alle 2 Tage» auf «Scheduled, taeglich — Registry-Stand `40 5 * * *`». `skills/twin/SKILL.md` fuehrte unveraendert an **zwei** Stellen «alle 2 Tage» (Z. 69 Workflow-C-Titel, Z. 93 Trainingsrhythmus). Am Objekt gemessen statt aus dem Frontmatter geglaubt (Rule 260807): `wissen/twin/outputs/*_fidelity.md` zeigt **lueckenlos taegliche** Laeufe 03.–08.08. und 13.–16.08. — der Agent hat recht, der Skill ist der veraltete Stand. Gewicht ueber die blosse Doku-Drift hinaus: Rule `modellwahl-routine.md` Punkt 6 nimmt `twin-fidelity-review` ausdruecklich von der Delegation aus («ein schwaecheres Modell als Richter ueber die eigene Stimme ist verkehrt»), der Lauf faellt also voll im Hauptmodell an — wer den Takt aus dem Skill liest, unterschaetzt den Verbrauch eines nicht delegierbaren Loops um Faktor 2. **Beim Nachmessen ein zweiter Bruch:** der Registry-Prompt `~/.claude/scheduled-tasks/twin-fidelity-review/SKILL.md` widerspricht **sich selbst** — Frontmatter `description` «1x taeglich (05:40, fokussiert 25.07.2026)», Prompttext darunter «FIDELITY-REVIEW (alle 2 Tage)». Die Fokussierung vom 25.07. wurde also im Kopf der Datei nachgezogen, im Auftragstext nicht; von dort stammt die Zahl, die sich in den Skill fortgeschrieben hat. **Ehrliche Daempfung:** operativ laeuft alles richtig, der Cron entscheidet, nicht der Prosatext. Der Schaden ist Planungswissen, kein Fehllauf. | Beide Skill-Stellen auf den gemessenen Takt ziehen, mit dem Messbeleg statt mit einer blossen Zahl. Den widerspruechlichen Registry-Prompt melden, nicht selbst anfassen: er liegt stationslokal unter `~/.claude/`, ist nicht kanonisch pflegbar (zwei Registries, je Station) und ein Scheduled-Task-Prompt ist Persistenz — Klasse 5 nach Rule `interaktive-eingriffe`. | umgesetzt 16.08.2026 (Lauf 09, active-with-flagging — Z. 69 und Z. 93 auf «taeglich 05:40» samt Messbeleg und Delegationsverbot; Registry-Widerspruch als ⚠-Hinweis im Skill vermerkt, Datei selbst unberuehrt) |
| SYN-33 | skills/normen (Router) · kostenkontrolle · offertenpruefung · ausschreibung · Rule normen-referenz | 1 | **Die SIA-118-Achse kennt sich nur in eine Richtung — und die Gegenkante blieb zwei Laeufe hintereinander liegen, waehrend auf der Skill-Seite jedes Mal korrigiert wurde.** Wissens-Chef Run 34 (Commit `0999939f`, 16.08. 23:30) hat die Achse `normen → Bauleitungs-Skills` erneut bearbeitet: `offertenpruefung` bekam die Fristenkorrektur (Art. 172 statt «SIA 118 5 Jahre») **und** `normen-referenz` ins Contract-Feld, `werkvertrag` und `unternehmerkontrolle` die Trennung von Rueckbehalt (Art. 149-150) und Solidarbuergschaft (Art. 181). Die Gegenrichtung wurde erneut nicht angefasst: `skills/normen/SKILL.md` Z. 50-53 fuehrte als SIA-118-Abnehmer nur `ausschreibung`/`werkvertrag`/`unternehmerkontrolle`. Es fehlten **beide** Skills, die im selben Fenster bzw. im Lauf davor an die Norm-KB angeschlossen wurden: `offertenpruefung` (seit 16.08. mit Rule im Contract) und vor allem `kostenkontrolle` — der Skill traegt mit Art. 150/152/153-156/172/177/180/190 plus SIA 416:2003 die **dichteste SIA-118-Strecke aller fuenf** (Z. 82-115, 5 Treffer auf `wissen/normen`, mehr als jeder andere), und das Destillat `sia-118-1991.md` Z. 148 nennt ihn seinerseits namentlich als Abnehmer. **Der Befund ist aktenkundig, nicht neu entdeckt:** QUERBEZUEGE Z. 348 notiert ihn seit Run 33 woertlich («der Router `skills/normen/SKILL.md` Z. 51 fuehrt ihn nicht in seiner Abnehmerliste»), und Run 34 schliesst mit «Trefferquote der Achse bisher 4 von 5 Skills» (Z. 211), ohne die Router-Zeile zu beruehren. Zweitens fehlte `normen-referenz` im Contract-Pflichtfeld von `kostenkontrolle` (Z. 13) und `ausschreibung` (Z. 13) — bei den drei Schwesterskills steht sie seit dem 16.08. **Ehrliche Daempfung:** `normen-referenz` ist eine importierte Always-on-Rule, das fehlende Feld schaltet sie also NICHT ab. Der Schaden ist Auffindbarkeit und Contract-Konsistenz, nicht Wirkungslosigkeit — Run 34 hat denselben Mangel bei `offertenpruefung` gleichwohl als korrekturwuerdig behandelt, und ein Router, der seine staerksten Abnehmer nicht kennt, laesst jeden kuenftigen Norm-Lauf die Stichprobe falsch schneiden (genau so entstand «4 von 5»). | Gegenkante setzen (mechanisch, kein Entscheid noetig — SYN-10-/SYN-16-Praezedenz): `kostenkontrolle` und `offertenpruefung` in die Abnehmerliste des Routers, mit dem Grund je Skill statt als blosse Namensnennung; `normen-referenz` in die Contract-Pflichtfelder von `kostenkontrolle` und `ausschreibung`. | umgesetzt 17.08.2026 (Lauf 10, active-with-flagging): Router-Zeile `skills/normen/SKILL.md` auf die volle Phasenkette G bis I erweitert samt Herkunftsvermerk; `normen-referenz` in `skills/kostenkontrolle/SKILL.md` Z. 13 (mit Artikelliste als Begruendung) und `skills/ausschreibung/SKILL.md` Z. 13 (mit Verweis auf SYN-34) gesetzt |
| SYN-34 | ausschreibung (Wissensbasis) · werkvertrag · normen (SIA 118 C1:2026) | 1 | **Die von Run 34 selbst geparkte Pruefung kostet drei Greps — und findet am vorgelagerten Ende der Kette genau die Formel, die am nachgelagerten Ende korrigiert wurde.** Run 34 schliesst die Achse mit «**Offen: `ausschreibung`** (402 Zeilen) ueber die Stichprobe hinaus ungeprueft» (QUERBEZUEGE Z. 212). Nachgeholt: **`skills/ausschreibung/wissensbasis/06_glossar.md` Z. 23** («Garantie / Gewährleistung: Nach SIA 118 i.d.R. 2 Jahre Rügefrist + 5 Jahre verdeckte Mängel») und **`wissensbasis/07_werkvertrag-unternehmerkontrolle.md` Z. 13** («Garantieverfalldaten — i.d.R. 2 Jahre Rügefrist, 5 Jahre verdeckte Mängel (SIA 118)»). Beide ohne Ausgabe, ohne Artikel, ohne den Vertragsvorbehalt «nur sofern SIA 118 vereinbart». Zwei Sachprobleme, beide am Destillat `sia-118-1991.md` (`status: established`) belegt: **(a)** die 5 Jahre sind die Verjaehrung **aller** Maengelrechte nach Art. 180 (bei absichtlich verschwiegenem Mangel 10 Jahre), nicht eine Sonderfrist «fuer verdeckte Maengel» — die Kurzformel bindet die Zahl an den falschen Tatbestand und verschweigt die 10-Jahres-Variante. **(b) Terminkritisch:** die Ruegepflicht fuer verdeckte Maengel ist seit dem **01.01.2026** nicht mehr «sofort», sondern **zwingend 60 Tage ab Entdeckung** — OR-Revision Baumaengel, nachgefuehrt in der Korrigenda **SIA 118-C1:2026** (`wissen/normen/destillate/sia-118-c1-2026.md`, `status: established`, refuter-bestanden 07.08.2026, Art. 179 Abs. 2). Das Destillat haelt ausdruecklich fest, dass die Frist **zwingendes Gesetzesrecht** ist und vertraglichen Bestimmungen vorgeht, also fuer jeden Neuvertrag ohnehin gilt. Genau diesen Hinweis hat Run 33 in `skills/werkvertrag/templates/werkvertrag-vorlage.md` und `skills/unternehmerkontrolle/templates/abnahmeprotokoll.md` additiv gesetzt (QUERBEZUEGE Z. 340-345) — **`ausschreibung` ist der vorgelagerte Skill, in dem die Vertragsbedingungs- und Garantietexte entstehen, die spaeter in den Werkvertrag wandern**, und wurde dabei uebersprungen. Die Korrektur laeuft der Kette also rueckwaerts hinterher. | Beide Wissensbasis-Stellen am Destillat nachziehen: Art. 172 (Garantie-/Ruegefrist 2 J.) und Art. 180 (Verjaehrung 5 J., 10 J. bei absichtlichem Verschweigen) getrennt benennen, Ausgabe und Vertragsvorbehalt mitfuehren, dazu den additiven C1:2026-Hinweis (60 Tage) analog zu den beiden Vorlagen aus Run 33. | **offen — Raphael vorgelegt, bewusst nicht selbst gesetzt.** Die beiden Stellen sind Vertragsbedingungs-Text mit Geld- und Rechtsfolge, der ueber Devis und LV nach aussen geht; die Guardrail des Skills erlaubt Querverweise und Contract-Felder, nicht Fristenaussagen in ausgehenden Vertragstexten. Praezedenz: Run 34 hat aus demselben Grund einen «teilweise»-Befund an `ausschreibung` vorgelegt statt gesetzt. Das Contract-Feld `normen-referenz` ist gesetzt (SYN-33), die Fundstellenpflicht greift also ab sofort, auch solange der Wortlaut unveraendert ist |
| SYN-35 | ausschreibung · wissen/projekt-lessons · kostenschaetzung · kostenkontrolle | 3 | **Der Zulieferer nennt vier Abnehmer, verankert wurden drei.** Wissens-Chef Run 35 (Commit `f3a2f1ad`, 17.08. 23:39) hat aus dem neuen Fall `wissen/projekt-lessons/wiki/nerves-2015-kv-nebengewerke-unterschaetzt.md` Fuehrungszeilen in `skills/kostenschaetzung/SKILL.md` («Wichtige Hinweise», +8 Z.) und `skills/kostenkontrolle/SKILL.md` (Schritt 4, +6 Z.) gesetzt. Der Artikel fuehrt in seinem Feld `skills:` (Z. 12) aber **drei** Abnehmer: `[kostenschaetzung, ausschreibung, kostenkontrolle]`. `skills/ausschreibung/SKILL.md` hatte 0 Treffer auf `projekt-lessons` — die halbe Kante, die nur der Zulieferer kennt (gleicher Typ wie SYN-10, SYN-14, SYN-16, SYN-20). Die Lehre traegt fuer diesen Skill sachlich: der Artikel endet mit «wo moeglich fruehzeitig eine indikative Marktofferte einholen» (Z. 63-64), also einer Ausschreibungs-Handlung, nicht einer Schaetzungs-Handlung. Der Skill kannte «Richtofferte» bislang nur als Ordnernamen (Z. 359), nicht als Anweisung. | Verweis in den Inputs von `ausschreibung` ergaenzt, mit dem `status: emerging`-Vorbehalt und der ausdruecklichen Warnung, dass der dort genannte Zuschlagsfaktor kein Kennwert ist. **Nicht** in den Skill uebernommen wurde der zweite neue Artikel `lorrainestrasse-2011-...`, der `ausschreibung` ebenfalls in `skills:` fuehrt (Z. 12): dort ist «Ausschreibung» nur die SIA-Phasenbezeichnung im Honorarfall, die Lehre («keine Phase ohne Preis») gehoert allein zu `honorarberechnung-sia102` und ist dort verankert. Eine nominelle Nennung im Feld `skills:` ist kein Beleg fuer eine tragende Kante. | umgesetzt (active-with-flagging, Lauf 11) |
| SYN-36 | wissen/normen (`sia-102-2014.md`) · honorarberechnung-sia102 · wissen/koordination | 2 | **Die Korrektur heilte den systematischen Teil, nicht die Abschrift 26 Zeilen weiter unten — in derselben Datei.** `wissen/normen/destillate/sia-102-2014.md` Z. 65 haelt seit der Retro-Verifikation vom 14.07.2026 ausdruecklich fest: «**Alterswohnungen/Alterssiedlungen UND Altersheime beide Kat. V** (nicht VI, wie zuvor faelschlich im Destillat gestanden — Original S. 45 weist beide Bauwerksarten derselben Spalte V zu)»; das Frontmatter Z. 9 fuehrt die Korrektur als «1 Fehler korrigiert Baukategorien-Zuordnung Altersheime». Im Abschnitt **«JANS-Praxis-Transfer»** derselben Datei stand Z. 91 unveraendert «Alters-/Pflegeeinrichtungen **VI**» — genau der Wert, den Z. 65 verwirft. Kein Ausweg ueber den Sammelbegriff: Z. 65 fuehrt beide Bestandteile getrennt und beide als V (Altersheime V; Pflegeheime/Reha/Sanatorien V). **Geldfolge:** Kat. V gegen VI ist ein Schritt im Schwierigkeitsgrad `n` (1.1 gegen 1.2, Ziff. 7.6), rund 9 % Honorar — im Healthcare-Kerngeschaeft. Der Praxis-Transfer ist zudem die Stelle, die ein Skill zuerst liest. Dieselbe Figur wie BKP «271.10» (Rule `bkp-2017-referenz`): der systematische Teil schlaegt die Schnellreferenz, und die Schnellreferenz traegt den Fehler weiter. Zweiter Punkt in derselben Zeile: die Auflage «vor Verwendung gegen SIA 102:2020 Original verifizieren (**Art. 6/7 dort noch nicht gelesen**)» war erfuellt — Wissens-Chef Run 36 hat das Original am 18.08.2026 gelesen (S. 1-41, Ausgabe endet mit Art. 6, **kein** Art. 7). Eine stehengebliebene Pruefauflage laedt zur zweiten Durchfuehrung derselben Verifikation ein, und die Klammer «Art. 6/7» haelt genau die Vermutung am Leben, aus der der Fehler M1-1 entstand. **Abgrenzung:** Run 36 pruefte KB → Skill und arbeitete sauber (der Skill-Vermerk zitiert korrekt Z. 65); ungeprueft blieb die Kante **innerhalb** der KB. | Z. 91 auf Kat. V berichtigt, mit Ruecklink auf Z. 65 als Beleg; die erledigte Pruefauflage durch das Ergebnis von Run 36 ersetzt. Werte im Skill **nicht** angefasst — die Kategorien-Zuordnung liegt Raphael seit Run 36 als E1 vor und ist ein Geschaeftsentscheid, kein Registerbefund. | umgesetzt (active-with-flagging, Lauf 12) |
| SYN-37 | skills/brandschutz · wissen/normen (Destillate + Fassungsmatrix) · Rule normen-referenz | 1+2 | **Die Normen-KB ist in diesem Skill nur im Modus B verdrahtet — und der Fehler ueberlebte deshalb 26 Tage im Modus A.** `skills/brandschutz/SKILL.md` fuehrt einen Abschnitt «Verbindliche Kontextquellen (immer konsultieren)», der bis heute sagte: «Bei jeder Brandschutz-Anfrage sind diese **beiden** Quellen primaer auszuwerten» — und beide sind SharePoint-**Rohbibliotheken**. Die KB `wissen/normen` mit rund 50 VKF-Destillaten wurde ausschliesslich im Modus-B-Block genannt (Z. 252 und Z. 303, beide zwischen Z. 195 und Z. 304), also nur fuer Wettbewerb und Vorprojekt. Modus A (Ertuechtigungs-Factsheet, Ausfuehrungsphase, Z. 127-194) und der Bodenbelag-Praxisteil kannten sie nicht; sie zitieren «gem. VKF-Anerkennung» und «VKF-Entsprechung (Stand 2026)» **ohne eine einzige Ziffern-Fundstelle**, was Rule `normen-referenz` Punkt 2 ausdruecklich untersagt. **Die Folge ist gemessen, nicht vermutet:** die drei einschlaegigen Destillate tragen die richtige BSR-Nummernzuordnung seit dem **25.07.2026** (`vkf-brl-16-15-flucht-rettungswege.md`, `vkf-brl-verwendung-baustoffe.md`, `vkf-brl-15-15-brandschutzabstaende-tragwerke.md`, alle mit `--diff-filter=A` datiert) und nennen diesen Skill sogar namentlich als Abnehmer. Der Skill fuehrte die **vertauschte** Zuordnung (14-15 = Flucht- und Rettungswege, 16-15 = «Brandschutzabschluesse», eine BSR, die es nicht gibt) bis zum 20.08.2026 weiter, Commit `865d1df3`. Die Rueckkante KB → Skill war die ganze Zeit da; die Hinkante Skill → KB fehlte im Contract. **Zweiter, materieller Fund als Nachwirkung derselben Vertauschung:** Z. 375 nannte fuer die **Anforderung** an Bodenbelaege im Fluchtweg von Spitaelern die BSR 13-15. Falsch: 13-15 «Baustoffe und Bauteile» ist die **Klassifikationsquelle** (Destillat Z. 15: «Nachschlagequelle fuer die RF-Klassen, die in anderen Richtlinien (z.B. Verwendung von Baustoffen 14-15de) als Anforderung genannt werden, aber selbst nicht definiert sind»); die Anforderung je Einbauort — «Gebaeudeausbau: Innenwaende, Decken, Boeden, **Fluchtwege**» — steht in **BSR 14-15**, Ziff. 2/3. Der Skill produziert genau dort seine Bodenbelag-Nachweise (Praxisfall KISPI Bolon-Sisal). **Dritter Fund:** das Destillat `vkf-brl-verwendung-baustoffe.md` Z. 129 richtet einen offenen Pruefauftrag namentlich an diesen Skill (cr-Ausnahmekatalog Ziff. 2 Abs. 3 lit. a-i, neu ab Fassung 01.01.2017, «zu streng geplant/ausgeschrieben»), der im Skill nirgends ankam. Dieselbe Figur wie SYN-36 und BKP «271.10»: der systematische Teil wurde geheilt, die Sachverweise weiter unten trugen die Folge weiter. | (a) Normen-KB als Abschnitt **0** in die Kontextquellen aufgenommen, Rangfolge ausdruecklich **destilliert vor roh**, mit Verweis auf die Fassungsmatrix `training/n58-vkf-fassungsmatrix-260820.md`; die Rohbibliotheken bleiben fuer Volltexte, Anhang-Tabellen und Matrix-Zellen zustaendig (die Destillate benennen diese Grenze selbst). (b) `normen-referenz` ins Contract-Pflichtfeld «Abhaengige Rules» gesetzt — der Skill war der einzige der elf in der Rule genannten Abnehmer ohne dieses Feld (gemessen ueber alle elf: `honorarberechnung-sia102`, `kostenschaetzung`, `terminplanung`, `stockwerkeigentum` fehlen ebenfalls, siehe «nicht aufgerollt»). (c) Z. 375 **sachbezogen** berichtigt: 14-15 als Anforderungsquelle, 13-15 ausdruecklich als Klassifikationsquelle stehengelassen, weil die EN↔RF-Umrechnungstabelle darueber korrekt auf 13-15 fusst (Lehre 1 aus Rule `bkp-2017-referenz`: nicht mechanisch ersetzen). (d) Den cr-Pruefauftrag als markierten offenen Punkt in den Skill uebernommen, **mit der Einschraenkung, die das Destillat selbst macht**: die Ausnahme nimmt Fluchtwege aus, der Spielraum liegt in den angrenzenden Flaechen. | umgesetzt (active-with-flagging, Lauf 13) |
| SYN-38 | connectors/WEGE.md · skills/pdf2dwg · Rule wege-und-vollmachten | 1 | **Das Register erklaert den Skill zum kanonischen Ort der Grenzen und legt dann eine Grenze bei sich selbst ab.** `connectors/WEGE.md` Z. 60-61 sagt woertlich, die CAD-Sackgassen stuenden «vollstaendig in `skills/pdf2dwg/SKILL.md` (Abschnitt Grenzen)» und wuerden «hier bewusst nicht kopiert». Im Fenster dieses Laufs wuchs das Register um vier Commits auf der CAD-Achse (`8552ac0b`, `d5b2ab46`, `06df323b`, `652a565d`, zusammen +84/-1) und trug dabei zwei Angaben ein, die im Skill fehlen: die **Stationsverfuegbarkeit** (LibreDWG und das venv `~/.venvs/pdf2dwg` existieren nur auf dem Mac Mini, nicht auf dem MacBook Pro, samt zwei Ersatz-Pruefwegen) und den **Nachbarweg** 3D-Hersteller-DWG nach 2D-Plan ueber Rhino an der besetzten Station. Gemessen: `WEGE.md` nennt `pdf2dwg` **4 Mal**, `skills/pdf2dwg/SKILL.md` nennt das Register **0 Mal** — die haeufigste Figur dieses Skills (SYN-10, SYN-14, SYN-16, SYN-20), hier mit dem Zusatz, dass der Zulieferer die Kanonizitaet selbst behauptet. | Verweis-Block an den Anfang des Abschnitts «Grenzen» gesetzt, der beide Angaben nennt und auf das Register zurueckzeigt. Bewusst **kein** Kopieren des Registerinhalts in den Skill — das erzeugte genau die Divergenz, die das Register mit seinem Satz vermeiden will. | umgesetzt (active-with-flagging, Lauf 13) |
| SYN-39 | rules/betrieb-chronik.md (Eintrag 260821) · scripts/ · skills/workstation-setup · launchd `ch.jans.screensaver-idle` | 1 | **Der einzige Stations-Waechter, dessen Script ausserhalb des Repos liegt — die Chronik dokumentiert den Eingriff vollstaendig, aber nicht, dass er nirgends gesichert ist.** Der neue Eintrag `rules/betrieb-chronik.md` 260821 (Commit `520c49e0`, 19/0) beschreibt den Bildschirmschoner-Waechter gegen die Universal-Control-Assertion sauber samt Rueckbauweg und nennt als Programm `~/bin/screensaver-idle-watchdog.sh`. Gegenprobe ueber die vier vergleichbaren LaunchAgents mit `plutil -extract ProgramArguments`: `ch.jans.speicher-waechter`, `com.jans.nas-keepalive`, `com.jans.station-status` und `ch.jans.synctask-runner` zeigen **alle vier** auf `~/Developer/jans-ai-hub/scripts/` (der `speicher-waechter` zusaetzlich mit NAS-Fallback), und alle sieben Waechter-Scripts des Hub (`nas-keepalive`, `speicher-waechter`, `stationen-watchdog`, `kontingent-waechter`, `sync-task-guard`, `umlaut-guard`, `mail-draft-guard`) liegen versioniert unter `scripts/`. `~/bin/` enthaelt ausser diesem Script nur den persoenlichen Shortcut `mini`. **Folge, nicht vermutet:** das Script ist nicht im Backup, ueberlebt keine Neuaufsetzung, und `skills/workstation-setup` kann es nicht ausrollen (0 Treffer auf `screensaver`). Der Rueckbau-Satz der Chronik («Plist und Script loeschen») zeigt damit auf einen Pfad, den kein zweiter Rechner hat. **Adversariale Gegenpruefung:** Das einzige denkbare Gegenargument — der Waechter sei stationsspezifisch — traegt nicht: `nas-keepalive.sh` ist ebenfalls nur auf dem MacBook Pro im Einsatz und liegt trotzdem im Repo. Stationsspezifisch ist die **Aktivierung**, nicht die **Sicherung**. | Identische Kopie nach `scripts/screensaver-idle-watchdog.sh` gelegt (NAS kanonisch, `diff` gegen das Original leer). Der laufende Job wurde **bewusst nicht umgestellt**: das fasst launchd an und gehoert nach Rule `interaktive-eingriffe` (Klasse Persistenz/Autostart) nicht in einen unbeaufsichtigten Lauf. Der fertige `plutil`-Umstellungsbefehl liegt als Nachtrag im Chronik-Eintrag und wartet auf einen interaktiven Lauf. | umgesetzt bis zur Sicherung (active-with-flagging, Lauf 14); Plist-Umstellung offen, interaktiv |
| SYN-40 | rules/auto-verbesserungen.md (Eintrag 260820) · rules/dokument-layout-standard.md · agents/layout | 3 | **Die neue Laengenregel benennt die Datei, die sie ergaenzt — und steht dort mit null Treffern.** Der Eintrag 260820 «Abklaerungen kurz halten» (Commit `0d5c11fa`, 16 Zeilen, Vorgabe Raphael zum Erzeugnis «Montagehoehe Wandmischbatterie 2619 KISPI») schliesst woertlich mit «Ergaenzt `dokument-layout-standard.md` (Form) um die Laenge». Gegenprobe in `rules/dokument-layout-standard.md`: 0 Treffer auf «Laenge», «Abklaerung», «kurz». Auch `agents/layout.md` — der mechanische Formpruefer, der genau gegen diesen Standard prueft — hat 0 Treffer. Die haeufigste Figur dieses Skills (SYN-10, SYN-14, SYN-16, SYN-20, SYN-38), hier wieder mit dem Zusatz, dass der Zulieferer die Kante selbst behauptet. **Ehrliche Abgrenzung, darum Typ 3 und nicht Typ 1:** beide Rules sind importierter Grundkontext, die Laengenregel erreicht also jede Session ohnehin — es gibt keine harte Kappung. Verschoben hat sich der Auffindeweg: wer vom Formstandard herkommt (Generator-Vorlage `templates/dokument-layout/`, Korrektur-Harness, Agent `dokument`), findet dort Schrift, Raender, Tabellen und Listen, aber nichts zur Laenge. **Kein Konflikt mit SYN-24:** dort wurde entschieden, einen Vorbehalt nicht in elf Skill-Kopien zu schreiben; hier geht es um einen Querverweis zwischen zwei Rules, den die eine Seite bereits behauptet. | Kurzer Abschnitt «Laenge (nicht hier geregelt)» in `rules/dokument-layout-standard.md` gesetzt, der auf den Eintrag 260820 zeigt und die Abgrenzung (Abklaerung kurz, Studien/Berichte/Offerten/Protokolle ausfuehrlich) mitnennt. Bewusst **kein** Kopieren des Regeltextes und **keine** Laengenpruefung in `agents/layout.md` — die Vorgabe ist inhaltlich («drei Saetze plus Skizze»), nicht mechanisch messbar, und ein Pruefer, der Laenge zaehlt, erzeugt genau die Fehlbefunde aus SYN-31. | umgesetzt (active-with-flagging, Lauf 14) |
| SYN-41 | wissen/normen (5 Fassungs-Delta-Destillate · wiki/synthese-sia-vkf-fachskills · wiki/REGISTER) · skills/brandschutz | 1 | **Der Skill wurde nachgezogen, die `established`-Synthese zwischen Destillat und Skill nicht — und genau sie traegt das Guetesiegel, das ohne Gegenlesen zitierfaehig macht.** Der Normen-Lauf 59 destillierte am 22.08.2026 fuenf VKF-Fassungs-Deltas (Commits `d4f0e294`, `69027822`). `skills/brandschutz/SKILL.md` ist im selben Commit `69027822` nachgezogen (+25/0, Pflichtlektuere-Block: Gesamthoehe am Flachdach, QSS-Tabelle, ueberhohe Raeume, neue Begriffe). `wissen/normen/wiki/synthese-sia-vkf-fachskills.md` wurde im ganzen Fenster **null Mal** angefasst (gemessen `git log --since` = 0 Commits), steht auf `last_updated: 2026-07-17` und traegt die Ueberschrift «## 4. Skill `brandschutz` — VKF-Brandschutzvorschriften **2015**». Zwei Stellen widersprechen dem Delta konkret: Z. 269-271 klassifiziert geringe/mittlere Hoehe/Hochhaus ueber die **Gesamthoehe**, deren Messweise am Flachdach mit der Fassung 01.01.2019 gewechselt hat (neu ab Dachflaeche ueber dem tiefstgelegenen massgebenden Terrain); Z. 331 gewaehrt die Fluchtweg-Erleichterung «bei ueberhohen Raeumen … bis 50 m», waehrend dieselbe Fassung das Flaechenkriterium > 4'800 m² fuer «ueberhohe Raeume» **gestrichen** hat (es genuegt Raumhoehe > 6.0 m) — die Erleichterung erfasst damit ein Vielfaches an Raeumen. Der Artikel ist `status: established`, also nach Rule `normen-referenz` Ziff. 1b ohne Gegenlesen zitierfaehig, und wird ueber `wissen/koordination/QUERBEZUEGE.md` sowie zwei normen-Wiki-Artikel referenziert. **Adversariale Gegenpruefung:** Der naheliegende Einwand, der Artikel sei als 2015-Korpus-Schnappschuss gemeint, traegt nicht — er fuehrt bereits vier eigene Fassungs-Annotationen inline (Z. 303, 316, 323, 329, 332) und wurde laut `wissen/normen/CHANGELOG.md` Z. 3763 bei einer frueheren Fassungsaenderung (Personenbelegung Verkauf, Stand 01.12.2022) genau so nachgefuehrt. Nachfuehren ist hier die Konvention, nicht die Ausnahme. **Zweiter gepruefter, aber verworfener Kandidat:** die naheliegende Forderung, jedes der fuenf Delta-Destillate solle `brandschutz` als Abnehmer zurueckbenennen, ist **kein** Befund — gemessen tragen nur 3 von 376 normen-Destillaten und 5 von 325 energie-Destillaten ueberhaupt einen Abnehmer-Vermerk; die Rueckkante liegt in dieser Architektur bewusst im REGISTER, nicht im Destillat. | Fassungs-Vorbehalt an den Anfang von Abschnitt 4 gesetzt (16 Zeilen), der die fuenf Delta-Destillate namentlich nennt, die beiden beruehrten Stellen benennt und ausdruecklich festhaelt, dass der `status: established` sie **nicht** ohne Gegenlesen zitierfaehig macht. Bewusst **keine** Korrektur der Tabellenwerte selbst: das verlangt das Original-PDF und ist Arbeit der KB `normen` (Run 59 fuehrt sie unter «18 der 23 bleiben offen»), nicht eines Aufsichtslaufs. | umgesetzt bis zum Vorbehalt (active-with-flagging, Lauf 15); Nachfuehrung der Tabellen offen bei `normen` |
| SYN-42 | wissen/normen/wiki/REGISTER.md (Zeile 37) · skills/brandschutz | 6 | **Die Statuszelle war schon in dem Commit ueberholt, der sie schrieb.** `wissen/normen/wiki/REGISTER.md` Z. 37 (Run 59, 22.08.2026) fuehrte die fuenf Fassungs-Deltas mit dem Status «offen — die Abnehmer-Skills sind noch nicht nachgezogen (v.a. `brandschutz`: QSS-Tabelle, Gesamthoehe, BFS-Pruefintervalle)». Gegenprobe am Commit-Inhalt: `git show 69027822 --name-only` enthaelt **sowohl** `wissen/normen/wiki/REGISTER.md` **als auch** `skills/brandschutz/SKILL.md` (+25/0, exakt die drei genannten Punkte). Der Zulieferer meldete also eine Bringschuld als offen, die er im selben Zug erfuellt hatte. Folge: der naechste Leser — Mensch wie Loop — haelt den Skill fuer veraltet und zieht ihn ein zweites Mal nach, oder er misstraut ihm ohne Anlass. **Kein Vorwurf an den Lauf:** ein Selfcommit buendelt 15 Minuten Dateiarbeit, die Reihenfolge innerhalb des Bundles ist nicht sichtbar; genau deshalb gehoert der Status am Ende des Laufs gegen den eigenen Arbeitsstand geprueft und nicht beim Schreiben der Zeile gesetzt. | Statuszelle zeilenindiziert korrigiert (1/1, keine Zeile verloren, kein globales Ersetzen): «teilweise erledigt», Commit-Hash genannt, und der real verbliebene offene Rest benannt — der Synthese-Artikel aus SYN-41. | umgesetzt (active-with-flagging, Lauf 15) |
| SYN-43 | rules/anrede-kontakte.md (importiert) · rules/jans-dna-facetten.md (nicht importiert) · agents/email · agents/twin-beziehung · skills/korrektur | 1 | **Dieselbe Anrede-Frage steht in zwei Dateien, und die operative Anweisung der importierten Fassung ist am selben Korpus als verfehlt gemessen.** `rules/anrede-kontakte.md` (Commit `fe6224f0`, 22.08. 23:30, 10/0) traegt die Treffen-Klausel weiterhin mit Sofortwirkung: «die neue Stufe bleibt danach» und als praktische Folge «vor einer Mail an einen Fachplaner den Kalender des laufenden Tages pruefen; hat ein Treffen stattgefunden, ist die Anrede des letzten Threads ueberholt» (Z. 41-47). Der am selben Tag angehaengte Gegenbeleg korrigiert nur die Achse (kein Wechsel Sie → Du), nicht die Sofortwirkung. Sieben Stunden spaeter praezisiert `rules/jans-dna-facetten.md` (Commit `d4d79ced`, 23.08. 06:00, 26/26) dieselbe Frage eine Ebene tiefer: die Stufe sei eine **Trajektorie, kein Standbild**, der Kanalwechsel wirke **verzoegert, nicht sofort** (Furrer 24.07. → 28.07.; Stadelmann 22.07. trotz Telefonat unveraendert → erst 03.08.), und der belegte Opener gelte **innerhalb** des Vorgangs, nicht ueber Wochen; die Ausloeser Cc, Gewicht und Telefonat heben im selben Vorgang nicht automatisch (**260822, 3/3 verfehlt**). **Richtungsprobe:** `jans-dna-facetten` nennt `anrede-kontakte` (Z. 235), zurueck verweist nichts (`grep -c` = 0). Damit traegt die **immer geladene** Datei die groebere Fassung und die **nicht importierte** die belegte Praezisierung — die Asymmetrie zeigt in die ungeguenstige Richtung. Betroffen sind besonders die neun Bausteine ohne Facetten-Zeiger aus SYN-22. **Ehrliche Abgrenzung:** keine harte Kappung — der importierte Kern `jans-dna.md` weist jede Session an, die Facetten vor einem ausgehenden Text zu lesen; wer das tut, sieht die neuere Fassung. Verschoben hat sich die Verlaesslichkeit, nicht die Erreichbarkeit. | Verweis-Nachtrag in `rules/anrede-kontakte.md` gesetzt (9/0, 106→115 Zeilen, kein globales Ersetzen, Anker vorher auf 1 Treffer geprueft): zeigt auf die praezisere Fassung, benennt die gemessene 3/3-Verfehlung und laesst den Wortlaut der Klausel unangetastet. **Offen bleibt die Sachfrage** — die beiden Fassungen zusammenzufuehren heisst, den Regeltext zu aendern, und beide Dateien fuehren die Klausel ausdruecklich als «Entscheid Raphael ausstehend» (`wissen/twin/wiki/QUESTIONS.md` 260821 #1, 260822b #1). Wieder aufzurollen, sobald dieser Entscheid vorliegt. | teilweise umgesetzt (active-with-flagging, Lauf 16) |
| SYN-44 | skills/honorarberechnung-sia102 · wissen/planungsgrundlagen (wiki/recht-norm-ahb-stadt-zuerich-projektstandards §5) · agents/honorar-angebotspruefung | 3 | **Der offene Fachentscheid im Skill hat seit Wochen einen belegten Zweitbeleg im Haus, und der Skill kennt ihn nicht.** Commit `7e389361` (24.08., Wissens-Chef Run 41) korrigiert in `skills/honorarberechnung-sia102/SKILL.md` Z. 48-55 eine Merkzeile, die fuer ein Spital ein um 13-17 % zu tiefes q fuehrte (direkte Geldfolge, q geht multiplikativ in den Honorarsatz), und bekraeftigt die drei Norm-Vorbehalte in Z. 145-152 als «weiterhin offener Fachentscheid Raphaels» — darunter Vorbehalt 1: die Norm kennt das Symbol **n**, nicht `q`, mit sieben Kategorien n = 0.7-1.3. Gegenprobe im Hub: `wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` (1'439 Z., `established`) fuehrt Z. 322-325 exakt dieselbe Lesart aus **unabhaengiger zweiter Quelle** — «Schwierigkeitsgrad n = 0.7-1.3 (SIA 102/103/108)», Amt fuer Hochbauten Stadt Zuerich — und dazu fuenf Faktoren, die der Skill gar nicht fuehrt: Anpassungsfaktor r, Teamfaktor i, Sonderleistungsfaktor s (bis 1.5), Umbauzuschlag max. 50 % (SIA 102/1) und die Reduktionstabelle der aufwandbestimmenden Baukosten bei Fachplaner-Beizug (Elektro/HLKKS max. 30 %). Der Artikel fuehrt seinen §5 unter dem Titel «Honorarwesen AHB — direkt relevant fuer Skill `honorarberechnung-sia102`» (Z. 245) und nennt ihn ein zweites Mal in Z. 838; der Skill hat **0 Treffer** auf `AHB`, `planungsgrundlagen` oder `Stadt Z`. Der Pruef-Agent `honorar-angebotspruefung` ist dagegen sauber: er fuehrt keine eigenen q-Werte und verweist in Z. 10/14/23/85 zurueck — **keine Doppelrechnung**, reine Compounding-Luecke. | Querverweis im Skill an der Vorbehalts-Stelle gesetzt, mit der Trennung, auf die es ankommt: der AHB-Wert ist eine **Bauherren-Vorgabe (bindend nur bei AHB-Auftraegen)**, kein Norm-Beleg — den traegt weiterhin `wissen/normen/destillate/sia-102-2014.md`. Werte der buerointernen Tabelle **unveraendert** gelassen; der Fachentscheid bleibt Raphaels. Rueckkante besteht bereits (Artikel §5). | umgesetzt 24.08.2026 (Lauf 17, active-with-flagging — additiver Querverweis auf eine `established`-Fundstelle, kein Eingriff in Honorarwerte) |
| SYN-45 | CLAUDE.md (KB-Liste) · wissen/claude-code | 1 | **Die einzige KB, die niemand findet — und die Liste wurde im selben Fenster angefasst.** Commit `7e389361` traegt die neue KB `architektur-fachwissen` in die KB-Aufzaehlung der `CLAUDE.md` (Z. 250-255) ein. Messung ueber alle 19 Verzeichnisse unter `wissen/` mit eigener `CLAUDE.md`: **18 sind dort genannt, `claude-code` als einziges nicht** (0 Treffer). Dabei ist sie keine Ruine — eigene `CLAUDE.md`/`CHANGELOG.md`, `wiki/` mit 6 Artikeln, letzte Aenderung 22.08.2026, angelegt am 29.07.2026 mit dem ausdruecklichen Zweck «Wissen ueber das Werkzeug selbst … Der JANS AI Hub ruht vollstaendig auf Claude Code». Gegenprobe auf einen zweiten Auffindeweg: `wissen/WISSEN-CLAUDE.md` fuehrt **gar keine** KB-Liste (0 Treffer fuer jede der 19 KBs) — der Wegweiser in `CLAUDE.md` ist der einzige. Verdrahtung sonst: **0 Treffer** in `skills/`, `agents/`, `rules/` (importiert); einziger Fundort ist `rules/auto-verbesserungen-archiv.md`, das nicht importiert wird. Die KB ueber das Werkzeug ist damit fuer jede Session unsichtbar. | Einzeiler in der KB-Aufzaehlung der `CLAUDE.md` nachgetragen (bewusst knapp, Rule 260719 Kontext-Diaet — die Zeile faellt in jede Session). Nach dem Nachtrag sind alle 19 KBs gelistet, nachgemessen. Eine Verdrahtung in einzelne Skills waere hier Kantenzahl statt Erkenntnis: die KB richtet sich an jede Session, nicht an ein Gewerk. | umgesetzt 24.08.2026 (Lauf 17, active-with-flagging) |
| SYN-46 | logbuch/rollen/rollen-map.tsv · scripts/tailscale-waechter.sh · scripts/speicher-waechter.sh · scripts/stationen-watchdog.sh · scripts/lauf-gate.sh · scripts/rollen-bilanz.sh · Rule rollen-taxonomie | 3 | **Die Gattung Schutz-Waechter fehlt geschlossen im Rollen-Register, und im Fenster ist der vierte dazugekommen.** Commit `ec1ee78b` (24.08.) baut den `tailscale-waechter` samt Selbstheilung, `heartbeat` Check 15 und launchd-Vorlage — breit verdrahtet in `skills/heartbeat/SKILL.md`, `rules/auto-verbesserungen.md` (260824), `rules/betrieb-chronik.md` und `logbuch/fristen.md`, aber ohne Zeile in `logbuch/rollen/rollen-map.tsv`. **Erste Vermutung (Ausreisser am neuen Baustein) durch Gegenprobe widerlegt:** auch `lauf-gate`, `speicher-waechter` und `stationen-watchdog` haben je 0 Registerzeilen; die fuenf dort gefuehrten Scripts sind ausnahmslos **Mess-Scripts** (arbeits-weiche, rollen-bilanz, nutzungs-radar, schutzmechanik-selbsttest, vorgaenge-bilanz). Es ist also kein Versaeumnis dieses Commits, sondern eine systematische Luecke. **Ehrliche Eingrenzung:** Rule `rollen-taxonomie` Punkt 1 nennt woertlich nur «Skills, Agenten und Loops» — die fuenf Script-Zeilen sind eine freiwillige Erweiterung, **kein Regelverstoss**. Der messbare Effekt ist real, aber klein: `scripts/rollen-bilanz.sh` speist den **Bestand** aus dem Register (Z. 59) und die **Zeit/Ertrag**-Haelfte aus dem Lauf-Journal (Z. 70) — vier fehlende maintainer-Bausteine verzerren die Bestandsquote um 4 von 139 Zeilen, im Zeit-Teil gar nicht, weil die Waechter ueber launchd laufen und nicht ueber `claude-run.sh`. Genau der Fall, vor dem Rule `rollen-taxonomie` Punkt 4 warnt: zuerst fragen, was ein Zaehler wirklich zaehlt. | **Nicht gesetzt, Entscheid Raphael.** Das Register ist ausdruecklich «kanonisch, von Hand gepflegt» (Kopfzeile + `rollen-bilanz.sh` Z. 27); vier Zeilen fuer eine Gattung aufzunehmen, die die Rule nicht verlangt, ist eine Taxonomie-Entscheidung, keine Kantenpflege. Zwei Wege: (a) Schutz-Waechter als `script`/`maintainer` aufnehmen (dann alle vier zugleich, sonst waechst die Schieflage mit jedem neuen Waechter weiter) — oder (b) den Geltungsbereich in Rule `rollen-taxonomie` Punkt 1 ausdruecklich auf «Skills, Agenten und Loops» begrenzen und die fuenf vorhandenen Script-Zeilen als bewusste Ausnahme kennzeichnen. Beides ist vertretbar; unentschieden bleibt der Zaehler unsauber. | offen, Entscheid Raphael |
| SYN-47 | CLAUDE.md (Command-Tabelle) · commands/vermaschung | 1 | **Der einzige neue Baustein des Fensters steht in keiner Session-sichtbaren Liste.** `commands/vermaschung.md` entstand am 24.08.2026 18:37 (Commit `3de6139c8`, 45 Zeilen) samt `scripts/vermaschungs-test.sh` (18'254 Bytes). Gemessen ueber alle 13 Commands: **11 stehen in der Command-Tabelle der `CLAUDE.md`, `/vermaschung` nicht** (0 Treffer). Verdrahtet ist er sonst gut: `connectors/WEGE.md` Z. 60 fuehrt ihn als ersten Weg der Faehigkeit «Vermaschung der drei Stationen pruefen», mit Rangfolge und der belegten Abgrenzung zu `stationen-watchdog.sh` («liest Statusdateien, misst aber KEINE Erreichbarkeit»); `rules/betrieb-chronik.md` traegt den Bauentscheid 260824f. Der Wegweiser fehlt genau dort, wo eine Session ihn ohne Suche findet. **Adversariale Gegenpruefung, zwei Einwaende:** (a) Kontext-Diaet (Rule 260719) spraeche gegen jede neue Zeile in der `CLAUDE.md`. Traegt nicht: die Tabelle existiert und fuehrt 11 Einzeiler; ein zwoelfter kostet eine Zeile und erspart, dass der Test nicht gefunden wird. (b) Praezedenz `/twin` steht ebenfalls nicht in der Tabelle. Traegt ebenfalls nicht: `/twin` ist ueber den gleichnamigen Skill erreichbar, `/vermaschung` hat **keinen** Skill (`skills/vermaschung` existiert nicht), der Command ist der einzige Einstieg. `/twin` ist zudem Altbestand und wurde in diesem Fenster nicht bewegt, wird also nach der Compounding-Klausel nicht aufgerollt. | Einzeiler in der Command-Tabelle nachgetragen (1/0, 306 → 307 Zeilen, Anker vorher auf 1 Treffer assertiert, kein globales Ersetzen). Nach dem Nachtrag sind 12 von 13 Commands gelistet. | umgesetzt 25.08.2026 (Lauf 18, active-with-flagging) |
| SYN-48 | commands/station-status · commands/vermaschung · rules/auto-verbesserungen 260824 | 1 | **Der Befehl, der die Falle traegt, warnt nicht vor ihr — und die Kante kennt nur der neue Baustein.** `commands/vermaschung.md` grenzt sich ausdruecklich ab: «`/station-status` liest, was eine andere Station ueber sich selbst aufs NAS geschrieben hat. Das bleibt gruen, waehrend sie von aussen unerreichbar ist (Vorfall 260824c).» Richtungsprobe: `commands/station-status.md` nennt `vermaschung` **null Mal**, ebenso `commands/status.md` und `skills/heartbeat/SKILL.md`. Schwerer als die fehlende Kante wiegt, was stattdessen dort steht: Z. 21-23 weist an, «ist der Status aelter als 30 Min: Station vermutlich offline» — im Umkehrschluss also frisch gleich in Ordnung. Genau diese Lesart verdeckte den Ausfall vom 20. bis 24.08.2026: der Mac Mini war vier Tage vom Tailnet getrennt, waehrend seine Statusdatei ueber den LAN-SMB-Mount frisch blieb. Rule `auto-verbesserungen` 260824 zieht daraus die Lehre «bei jeder Zustandsaussage ueber eine Station «laeuft» und «ist erreichbar» getrennt messen»; `/station-status` **ist** eine solche Zustandsaussage und misst nur das Erste. Der Befund ist damit keine Kantenzahl, sondern eine Interpretationsanweisung, die in die falsche Richtung zeigt. **Adversariale Gegenpruefung:** der Einwand, `/vermaschung` sei ja neu und die Rule stehe ohnehin im Grundkontext, traegt nicht — die Rule sagt, WAS getrennt zu messen ist, nicht WOMIT; das Werkzeug dafuer nennt nur `WEGE.md` Z. 60, und dorthin schaut, wer `/station-status` tippt, nicht. | Warn-Absatz in `commands/station-status.md` direkt an der Interpretationsstelle gesetzt (8/0, 32 → 40 Zeilen): «Frisch heisst nicht erreichbar», Vorfall und Rule benannt, `/vermaschung` samt `--netz`-Variante als der Test genannt, der die Wege wirklich faehrt, und die P1-Einstufung des Fernzugangs. Die 30-Minuten-Regel selbst **unangetastet** — sie stimmt fuer ihre Frage (arbeitet dort jemand?). | umgesetzt 25.08.2026 (Lauf 18, active-with-flagging) |
| SYN-49 | skills/heartbeat/SKILL.md · scripts/heartbeat.sh · logbuch/fristen.md | 6 | **Der Skill ist im Fenster auf 16 Checks gewachsen, das ausfuehrende Script steht bei acht — und die SKILL.md behauptet weiterhin Gleichwertigkeit.** Commit `c1852043d` (24.08.) fuegte Check 16 «Git-Abgleich» hinzu (+23/0) samt `scripts/git-divergenz.sh`; die SKILL.md fuehrt damit 16 nummerierte Checks. `scripts/heartbeat.sh` hat 306 Zeilen, acht Checks und als letzten Commit `50f4553a9` vom **13.08.2026**, also vor Check 14, 15 und 16. Der Abschnitt «Schnell-Ausfuehrung» sagt dennoch ohne jede Einschraenkung «Das Heartbeat-Script kann direkt ausgefuehrt werden», und das Output-Format endet auf «STATUS: ✅ Alles OK». Wer das Script faehrt, haelt 16 Checks fuer bestanden, von denen acht nie liefen. Muster Rule `auto-verbesserungen` 260807: eine Gegenmassnahme gilt als vorhanden, weil sie dokumentiert ist. **Adversariale Gegenpruefung, und sie greift teilweise:** die Sachlage ist in `logbuch/fristen.md` (Nachtrag 25.08.2026 09:4x) bereits vollstaendig und praezise erfasst, inklusive der Zahl acht, des fehlenden Tailscale-Checks und der Begruendung, warum die Nachruestung nicht geschrieben wurde (Auto-Mode-Klassifikator blockierte den Schreibzugriff, Fassung liegt als `scripts/heartbeat.sh.VORSCHLAG-260825`). Das Betriebsproblem ist also korrekt gefuehrt und **kein** neuer Befund; die `.VORSCHLAG`-Datei im Repo ist aus demselben Grund kein Redundanz-Befund. Offen blieb allein die Folge fuer den Skill selbst: die Zusage in «Schnell-Ausfuehrung» wurde nicht nachgezogen, und sie ist es, die den Leser in die Irre fuehrt. Genau dieser Rest ist Synergie-Sache (Doku gegen ausfuehrenden Baustein), das Uebrige Betriebsschicht. | Vorbehalt im Abschnitt «Schnell-Ausfuehrung» gesetzt (13 Zeilen): benennt die acht gedeckten Checks, die acht ungedeckten, den fehlenden Tailscale-Check als Schutz vor Vorfall 260824c, den Fristen-Eintrag als fuehrende Stelle und die Regel «fuer eine belastbare Aussage den Skill fahren, nicht das Script». Zusaetzlich `/vermaschung` unter «Verwandte Befehle» ergaenzt (2 Zeilen, Rueckkante aus SYN-48). Insgesamt 15/0, 365 → 380 Zeilen. **Kein Eingriff ins Script** — der ist blockiert und gehoert in die Betriebsschicht. | umgesetzt 25.08.2026 (Lauf 18, active-with-flagging — additiver Vorbehalt, keine Aenderung an Checks oder Script). **Nachtrag 28.08.2026 (Lauf 21): der gesetzte Vorbehalt ist durch den Script-Umbau vom 28.08. ueberholt und war zuletzt in der Sache falsch** (Tailscale-Check jetzt im Script, acht → neun Checks). Aufgerollt und aktualisiert unter SYN-56; der Kern des Vorbehalts — sieben Skill-Checks bleiben ungedeckt — gilt unveraendert |
| SYN-50 | skills/hub-chef/SKILL.md · connectors/WEGE.md · logbuch-radar · ag-gruendung-monitor · vollgas-fruehwarnung · vollgas-chef-radar · Rule auto-verbesserungen 260803 | 1 | **Der Hub hat den Ersatz-Versandweg gelernt, aber nur der eine Kanal, der ihn gerade brauchte.** Commit `d80a58ffb` (26.08. 08:45, +34/0) traegt in `skills/hub-chef/SKILL.md` Z. 153 bis 186 den belegten zweiten Weg nach (Graph `Mail.Send` ueber die m365-CLI), samt Zeitgrenze, Pflicht-`--sender` und Nachmessen in den Gesendeten; `connectors/WEGE.md` Z. 45 und 696 ff. fuehrt ihn seit 25.08. vollstaendig. Gemessen ueber alle Skills, Agenten und Commands kennt ihn ausser dem Register nur `skills/hub-chef/SKILL.md` (grep `outlook mail send`: 2 Treffer). **Die vier Kanaele, die nach Rule `auto-verbesserungen` 260803 im Ausnahmefall selbst melden duerfen, schreiben ausnahmslos den ersten Weg vor:** `logbuch-radar` Schritt 6 (Z. 44), `ag-gruendung-monitor` Z. 25, `vollgas-fruehwarnung` Z. 48, `vollgas-chef-radar` Z. 64. **Das ist kein theoretischer Fall.** `rules/betrieb-chronik.md` 260826 (Commit `1299681a9`, 26.08. 07:52) misst denselben Ausfall am dritten Tag und haelt fest: «Seitdem blind: beide Mail-Kanaele fuer `ag-gruendung-monitor` (mail@UBS, rj@Notariat) nicht erreichbar» — und sucht als Abhilfe die Diagnose des ersten Wegs (TCC, Keychain, Prozess-Neustart), waehrend Weg 2 seit einem Tag belegt danebenliegt. Genau das verbietet Rule `wege-und-vollmachten` Ziff. 1 und 2. Die Redundanz der Ausnahmekanaele ist damit **scheinbar**: alle vier haengen am selben Einzelweg wie der Chef, den sie im Ausfall vertreten sollen. Betroffen sind die Anlaesse, die keinen Aufschub dulden — UBS-Kapitalbescheinigung, verfallender Beurkundungstermin, 24-h-Frist, P1-Blocker, erschoepftes Kontingent. | Den Abschnitt «Antwortet der erste Weg nicht» aus `skills/hub-chef/SKILL.md` in die vier Task-Prompts uebernehmen, verkuerzt auf drei Zeilen mit Zeiger auf `connectors/WEGE.md`. **Sauber abgrenzen:** Weg 2 heilt nur das Senden (mit `--sender rj@raphaeljans.ch`, `Mail.Send` ist in der App-Registrierung belegt, `WEGE.md` Z. 17 und 168), nicht das Lesen eines Kontos ohne Delegate-Zugriff — der Lesestrang von `ag-gruendung-monitor` auf mail@ bleibt am ersten Weg haengen und braucht die Diagnose weiterhin. **Adversariale Gegenpruefung:** das einzige Gegenargument — Rule `wege-und-vollmachten` verpflichtet ohnehin jeden Lauf, das Register zu konsultieren, bevor er aufgibt — ist empirisch widerlegt: der `hub-chef` hatte dasselbe Register und griff drei Tage lang nicht danach, der Nachtrag im Skill war noetig («wurde jedes Mal von Hand gespielt, weil dieser Abschnitt fehlte; am 24.08. fiel das Tagesbriefing deswegen ganz aus»). Was fuer den Chef noetig war, ist fuer seine Vertreter nicht entbehrlich. | offen — Task-Prompts liegen ausserhalb des Repos, Aenderung an Meldekanaelen ist kein Querverweis und gehoert nicht in einen unbeaufsichtigten Lauf; Zeiger auf die vier Kanaele in `connectors/WEGE.md` gesetzt (active-with-flagging, Lauf 19) |
| SYN-51 | skills/hub-chef/SKILL.md · connectors/WEGE.md · wissen/twin/wiki/arbeitsweise.md · Rule jans-dna (Echo-Schutz) · Rule mail-formatierung | 1 | **Der Echo-Schutz des Zwillings haengt neu an einer CSS-Zeile, die zwei andere Bausteine als blosse Formatvorgabe fuehren.** Bis zum 25.08. trennte der Zwilling Hub-Mail von Raphaels eigener Hand ueber die `internetMessageId`; seit dem Ausweichen auf Graph tragen beide denselben `PROD.OUTLOOK.COM`-Host, die ID beweist nichts mehr (`wissen/twin/CHANGELOG.md` 26.08., Batch 105). Der Zwilling hat sauber nachgezogen und einen Ersatz gemessen: `wissen/twin/wiki/arbeitsweise.md` Z. 3481 bis 3483 trennt jetzt am **CSS-Fingerabdruck** — `Aptos,Calibri,Helvetica,sans-serif` mit `color:#000000` heisst Hub, `Aptos,Arial,Helvetica,sans-serif` mit `color:rgb(0,0,0)` heisst eigene Hand. **Die erzeugende Seite weiss davon nichts.** `skills/hub-chef/SKILL.md` und `connectors/WEGE.md` schreiben genau diese Zeichenfolge vor, beide mit der Begruendung «Rule `mail-formatierung` gilt weiter» — also als Schriftvorgabe, nicht als Detektor. `mail-formatierung` selbst nennt als Ersatzschriften «Calibri/Helvetica» und kennt den Unterschied Calibri gegen Arial nicht. Damit ist die Kante einseitig: der Abnehmer kennt sie, der Erzeuger nicht. **Risiko konkret:** eine spaetere Angleichung der Hub-Signatur an Raphaels OWA-Signatur — naheliegend, weil sie «wie die eigenen Mails» aussaehe — laesst den Detektor still ausfallen; Hub-Briefings wanderten dann als Stil-Gold ins Twin-Wiki, gegen den in Rule `jans-dna` als eisern bezeichneten Echo-Schutz. Ein stiller Ausfall, weil nichts bricht: der Zwilling lernt einfach das eigene Echo. | Warnsatz an beide Fundstellen gesetzt (siehe Status). Zusaetzlich pruefen, ob der Zwilling den Detektor regelmaessig gegen den erzeugenden Baustein rueckmisst, statt ihn als gegeben zu fuehren — ein Detektor, dessen Merkmal ein anderer Baustein frei setzen darf, ist genau so lange gueltig, wie niemand dort aufraeumt. **Adversariale Gegenpruefung:** das Gegenargument, der Zwilling fuehre den Vorbehalt ohnehin selbst, traegt nicht — sein eigener Batch 105 nennt als Lehre, dass die Vorbedingungspruefung `grep sendMail` nie ausloesen konnte, weil sie nur den bekannten Weg prueft. Derselbe Fehlertyp wiederholt sich, wenn die Erkennung an einem fremd gesetzten Merkmal haengt. | umgesetzt als Querverweis (active-with-flagging, Lauf 19): Warnsatz in `skills/hub-chef/SKILL.md` (+6/0) und `connectors/WEGE.md` (+4/0), beide mit Zeiger auf die Detektor-Tabelle; die Frage der Rueckmessung bleibt offen |
| SYN-52 | scripts/mail-draft-guard.sh · Rule umlaute-konvention · logbuch-radar · skills/masterclass | 2+3 | **Ein Schutz-Hook stuft Lesebefehle als Mail-Entwurf ein, und das Wissen darum liegt in einem einzigen Task-Prompt ausserhalb des Repos.** `scripts/mail-draft-guard.sh` (PreToolUse, matcher `Bash`) wird aktiv, sobald der Werkzeug-Input eines der Mail-Muster enthaelt (Z. 28), und blockiert dann bei ASCII-Umlaut-Staemmen im gesamten Input — Kommentare und Suchmuster eingeschlossen. **Heute in diesem Lauf zweimal ausgeloest:** ein reiner `grep -rln`-Aufruf, der Skills nach dem Vorkommen der Mail-Bundle-ID durchsuchte, wurde mit «MAIL-ENTWURF BLOCKIERT» abgewiesen, weil der Suchstring selbst das Muster erfuellte und ein Echo-Kommentar «Rueck…» enthielt. Der Fehlertext benennt einen Mail-Entwurf, den es nicht gibt. **Zwei Folgen.** (a) Betroffen ist ausgerechnet die Diagnose des blockierten Versandwegs — wer messen will, wer ueberhaupt per Apple Mail sendet, loest den Guard aus (unmittelbar verbunden mit SYN-50). (b) Die Falle ist im Repo nirgends beschrieben: `rules/auto-verbesserungen-archiv.md` Z. 217 und `skills/masterclass` nennen nur den Stop-Hook `umlaut-guard.sh` auf Chat-Antworten. Dokumentiert ist sie allein im Prompt von `logbuch-radar` (Z. 44: «in den Shell-Kommandos KEINE ASCII-Ersatzformen … ein Hook blockiert sonst») — ein lokaler Flicken statt einer Hub-Regel, obwohl der Hook jeden Bash-Aufruf jeder Session trifft. **Dazu ein Widerspruch:** die importierte Rule `umlaute-konvention` fuehrt unter «Ausnahmen» ausdruecklich «Bash-Skripte und Code-Variablen — ASCII-only beibehalten», also genau das, was der Hook bestraft. | Zwei getrennte Schritte, keiner davon in einem unbeaufsichtigten Lauf: (1) den Guard so einengen, dass ein reiner Lesebefehl (`grep`, `rg`, `awk`, `sed -n`, `cat` ohne Schreibziel) nicht als Entwurf gilt — das Muster in Z. 28 trifft heute den Suchstring so gut wie den Befehl; (2) die Falle einzeilig in `rules/umlaute-konvention.md` neben die Bash-Ausnahme setzen, damit der Widerspruch aufgeloest ist und das Wissen nicht an einem Task-Prompt haengt. **Adversariale Gegenpruefung:** dass ein breiter Schutz billige Fehlalarme haben darf, traegt hier nur halb — die Umformulierung ist billig, aber nur fuer den, der den Grund erkennt; ein unbeaufsichtigter Lauf kann aus «MAIL-ENTWURF BLOCKIERT» ebenso schliessen, der Versandweg sei gesperrt. Kein Eingriff am Hook durch diesen Lauf: ein Schutzmechanismus wird nicht von der Aufsicht selbst gelockert. | offen |
| SYN-53 | rules/anrede-kontakte.md (importiert) · rules/jans-dna-facetten.md (NICHT importiert) · wissen/twin (Fidelity-Review 27.08.) · agents/email · skills/korrektur | 1 | **Die belegte Anrede eines aktiven Kontakts steht nur in der Datei, die eine Session vielleicht liest — nicht in der, die sie immer lädt.** Der Fidelity-Review vom 27.08.2026 korrigierte den Marker «Englisch: «Hello <Vorname>,», nicht «Hi»» zu «die englische Anrede hängt am **Kontakt**, nicht an der Sprache» (`wissen/twin/wiki/stimme.md` Z. 108-110, `rules/jans-dna-facetten.md` Z. 82-84): «Hi Hleb» beim Webprogrammierer, zweifach aus Raphaels eigener Hand belegt (16.02. und 27.06.2026, also vor **und** nach dem Hub, mithin keine Claude-Kontamination), «Hello <Vorname>» beim 3D-Freelancer. Der Zwilling buchte den Fall als «Entscheid Raphael nicht nötig, Beleg genügt» (`wissen/twin/wiki/QUESTIONS.md` 260827b #1) und zog folgerichtig den Marker nach — **aber nur dort**. `rules/anrede-kontakte.md` ist die **importierte** Rule, die in JEDER Session lädt, sagt von sich selbst «Bei Mails, Briefen, Memo-Begleittexten immer zuerst hier nachschlagen» und setzt «**Default = Sie**, wenn die Person nicht in der Liste steht». Hleb stand nicht in der Liste; Yorck von Dietze stand darin, aber ohne den englischen Opener. Wer also nach Vorschrift zuerst das Register liest, bekommt für beide die falsche Auskunft — und `jans-dna-facetten.md` ist ausdrücklich **nicht** importiert, sondern «vor JEDEM ausgehenden Texterzeugnis zu lesen», also genau die Datei, die in einer Chat-Antwort oder einem Nebenlauf ausbleibt. **Die Rückkante fehlt nur in dieser einen Richtung:** derselbe Harness hat am 26.08. die Zeile Undine Hofer und am 20./21.08. sechs weitere Zeilen (Hansen, Spörri, Ziegel, Guerini, Suljanovic, Eren) genau so nachgetragen — das Verfahren ist etabliert, es lief hier nicht, weil der Befund als reine Marker-Korrektur verbucht wurde. | Zeile «Hleb» nachgetragen (englisch, Du-Äquivalent, «Hi Hleb», Schreibweise geklärt, Beleg verlinkt) und die Notiz-Zelle Yorck von Dietze um den englischen Opener «Hello <Vorname>,» ergänzt — beides rein additiv, ohne Klausel-Wortlaut anzufassen (`anrede-kontakte.md`: «Claude ändert den Wortlaut einer Rule nicht selbst»). Der Nachname von Hleb ist **nicht** belegt und bleibt offen statt geraten (Rule `identifikatoren-verifizieren`). | umgesetzt (active-with-flagging, Lauf 20) |
| SYN-54 | wissen/normen (`wiki/synthese-sia-vkf-fachskills.md` · `wiki/INDEX.md` · `wiki/QUESTIONS.md`) · Rule normen-referenz · werkvertrag · ausschreibung · unternehmerkontrolle · honorarberechnung-sia102 · brandschutz | 3 | **Der zentrale Weiterverteiler der Normen-KB sammelt Vorbehalte, während sein Gütesiegel unverändert grün bleibt — und die verlangte Durchsicht stand nur im Laufbericht.** `wissen/normen/wiki/synthese-sia-vkf-fachskills.md` trägt im Frontmatter Z. 3/4 weiterhin `status: established` / `last_updated: 2026-07-17`. Seither haben **drei voneinander unabhängige Läufe** je einen ⚠-Vorbehalt **inline** hineingesetzt: Z. 270 (22.08.2026, VKF-Fassungsstand, Synergie-Lauf 15 / SYN-41), Z. 89 (26.08.2026, Quelle `sia-118-1991.md` auf `speculative` herabgestuft, Wissens-Chef Run 44) und Z. 176/177 (27.08.2026, Quelle `sia-102-2020.md` auf `speculative` plus eine korrigierte Fundstelle, `normen` Run 63). **Zwei der im Frontmatter geführten Quellen sind damit Entwurf.** Rule `normen-referenz` Ziff. 1b macht genau dieses Feld zum Entscheidungskriterium («zuerst sein Feld `status:` lesen … nur `established` ist ohne Gegenlesen zitierfähig») — wer der Rule folgt, sieht grün und hört 89 bzw. 270 Zeilen vor dem Vorbehalt auf zu lesen. Verschärfend: Wissens-Chef Run 43 hat den Artikel am 25.08. im `INDEX.md` **nachregistriert**, er wurde also für die Fach-Skills genau dann auffindbar, als seine Grundlage unsicher wurde. Run 63 hat den Bedarf selbst benannt («er ist der zentrale Weiterverteiler und verdient eine eigene Durchsicht») — dieser Satz steht im CHANGELOG und im Lauf-Report, **nicht** in `wiki/QUESTIONS.md`: N63-1 und N63-2 betreffen das Destillat, nicht die Synthese. Genau das Muster, das Rule `auto-verbesserungen` 260805 verbietet: ein Laufbericht ist kein Meldekanal. **Abgrenzung zu SYN-41:** der deckt den VKF-Fassungsteil ab und steht auf «Nachführung offen bei `normen`»; neu ist, dass seither zwei **weitere, sachfremde** Quellen herabgestuft wurden und der Artikel damit die Schnittmenge dreier unverbundener Vorbehalte ist. | Die Durchsicht als **N63-3** in `wissen/normen/wiki/QUESTIONS.md` registriert (Cross-KB-Bringschuld nach Rule `wissens-bibliothekar`) und die INDEX-Zeile um einen ⚠-Zeiger auf die drei Vorbehalte ergänzt. **Der Statusentscheid wurde NICHT vorweggenommen** — er gehört der KB `normen` (so schon Run 44 ausdrücklich), nicht einem Aufsichtslauf. | umgesetzt bis zur Registrierung (active-with-flagging, Lauf 20); Durchsicht und Statusentscheid offen bei `normen`. **Nachtrag 29.08.2026 (Lauf 22), Beteiligter bewegt, Befund verschaerft, Bringschuld laeuft:** die Normen-Nacht Run 65 (`b90d8d663`, 29.08. 01:54) hat einen **vierten** ⚠-Vorbehalt inline in denselben Artikel gesetzt (Z. 228, Abschnitt SIA 416:2003) — damit stehen jetzt **drei der Frontmatter-Quellen auf `speculative`** (`sia-118-1991` Run 62, `sia-102-2020` Run 63, `sia-416-2003` Run 64/65), waehrend Z. 3/4 unveraendert `status: established` / `last_updated: 2026-07-17` tragen, obwohl vier Laeufe seit dem 22.08. in den Artikel geschrieben haben. **Positiv und ausdruecklich festgehalten:** die von Lauf 20 gesetzte Bringschuld wirkt — die KB fuehrt N63-3 selbst nach und verstaerkt sie («vier aus N63-3, einer neu», `wissen/normen/wiki/QUESTIONS.md` Z. 6367). Der Statusentscheid bleibt bei der KB `normen`; **kein neuer Befund, nur Nachfuehrung** |
| SYN-55 | Rule normen-referenz (importiert) · wissen/normen (`training/n62-3-pruefstand-kandidaten.md`) · alle normzitierenden Fach-Skills | 1 | **Die Rule teilt die Welt in zwei Status, die KB hat am selben Tag einen dritten gemessen — und die Messung nennt die Rule, die Rule die Messung nicht.** `wissen/normen/training/n62-3-pruefstand-kandidaten.md` (neu 27.08.2026, Run 63) misst: von **310** `established`-Destillaten tragen **2** einen Prüfstand, beide DIN; im SIA/VKF-Bestand dieser Station **keines**. Und: beide bisher überhaupt gefahrenen Abdeckungsläufe fanden in `established`-Destillaten erhebliche Lücken bei **null falschen Werten** (`sia-416-1-2007` Run 54, `sia-118-1991` Run 62 mit 84 Kern- und 82 Nebenlücken). `established` belegt also die **Richtigkeit** des Erfassten, nicht die **Vollständigkeit** — die KB sagt das selbst sauber («Die Liste misst Ungewissheit, nicht Mangel»). Rule `normen-referenz` Ziff. 1b kennt diesen dritten Zustand nicht und gibt `established` binär als «ohne Gegenlesen zitierfähig» frei. Gefährlich ist dabei nicht der zitierte Wert, sondern der **Umkehrschluss aus dem Schweigen**: «steht nicht im Destillat, also verlangt die Norm es nicht» — genau der Schluss, den ein Leistungsumfang, eine Honorarabgrenzung oder ein Vollständigkeitsnachweis zieht. Die Kandidatenliste führt `rules/normen-referenz` selbst als Konsumenten von `sia-416-2003.md` auf (Z. 68) — die Kante ist also gesehen, aber nur vom Zulieferer; in der Rule steht nichts davon. | Ziff. **1c** als reiner Querverweis in `rules/normen-referenz.md` gesetzt: `established` = Werte geprüft, nicht Vollständigkeit; bei breitem Leistungs- oder Vollständigkeitsschluss das Original beiziehen; Zeiger auf die Messung. **Der binäre Status bleibt unangetastet** — ob daraus ein eigener Status wird, entscheidet die KB `normen` mit Raphael (N63-2 liegt in derselben Richtung bereits vor). | umgesetzt als Querverweis (active-with-flagging, Lauf 20); Statusfrage offen bei `normen`/Raphael. **Nachtrag 29.08.2026 (Lauf 22), Beteiligter bewegt:** `destillate/sia-416-2003.md` — in der Kandidatenliste Z. 68 als Konsument der Rule gefuehrt — ist inzwischen selbst auf `speculative` herabgestuft und hat mit Run 64 (12 Kernluecken, null falsche Werte) und Run 65 (Refuter-Runde) **beide Pruefrichtungen** durchlaufen. Der von SYN-55 als fehlend beschriebene Pruefstand-Mechanismus laeuft also und bestaetigt die Ausgangsmessung ein drittes Mal: Luecken ja, falsche Werte nein. **Kein neuer Befund**; der gesetzte Querverweis Ziff. 1c deckt die Lage unveraendert |
| SYN-56 | skills/heartbeat/SKILL.md · scripts/heartbeat.sh · rules/betrieb-chronik.md 260828 · logbuch/fristen.md · (Vorlaeufer SYN-49) | 1 | **Der Vorbehalt, den Lauf 18 gegen das hinterherhinkende Script setzte, hinkt jetzt selbst dem Script hinterher — mit umgedrehtem Vorzeichen.** Der Umbau vom 28.08. (`scripts/heartbeat.sh`, Commit `c09742dab`, +63/−2, 306 → 367 Zeilen) baute den Erreichbarkeits-Check «Tailscale» ein; der Lauf zog `rules/auto-verbesserungen.md`, `rules/betrieb-chronik.md` und `logbuch/fristen.md` sauber nach, **nicht aber `skills/heartbeat/SKILL.md`** — also genau die Datei, die den ausdruecklichen Vorbehalt traegt. Der stand bis heute unveraendert seit dem 25.08. (`ed2c63ab5`) und behauptete am Objekt widerlegbar: «306 Zeilen, letzter Commit `50f4553a9` vom 13.08.2026», «**acht** Checks», und woertlich «Namentlich der Tailscale-Check fehlt (`grep -i tailscale scripts/heartbeat.sh` liefert null Treffer), also genau der Schutz vor dem Vorfall 260824c». Gemessen 28.08. 17:2x: 367 Zeilen, Commit `c09742dab`, **neun** Checks, `grep -ci tailscale` = **7**. **Wirkung:** SYN-49 hatte den Vorbehalt gegen die Selbsttaeuschung von Rule 260807 gesetzt (eine Gegenmassnahme gilt als vorhanden, weil sie dokumentiert ist). Jetzt bewirkt derselbe Absatz die Gegenrichtung — eine **vorhandene** Gegenmassnahme erscheint als abwesend, samt Testbefehl, der das Gegenteil beweist. Wer ihn liest, faehrt den Skill statt des Scripts, um einen Schutz zu bekommen, den das Script laengst traegt. **Adversariale Gegenpruefung, und sie greift teilweise:** der Vorbehalt ist im **Kern** weiterhin richtig — sieben der sechzehn Skill-Checks (8, 9, 10, 11, 12, 13, 14, 16) leistet das Script nach wie vor nicht. Falsch sind allein die Zahlen und der Tailscale-Satz. Darum wurde der Absatz **nicht gestrichen**, sondern auf den gemessenen Stand gebracht. | Vorbehalt am Anker zeilengenau aktualisiert (22/12, davon 12 gewollte Zeilenersetzung des alten Absatzes; 380 → 390 Zeilen): neun statt acht Checks, aktuelle Zeilenzahl und Commit, die sieben ungedeckten Checks einzeln nummeriert, dazu ein datierter ⚠-Absatz, der die alte Fassung samt ihrem Testbefehl als ueberholt ausweist und die Vorzeichenumkehr benennt. Der offene Rest (launchd-Job `ch.jans.tailscale-waechter` auf keiner Station geladen, Persistenz-Klasse, Aktion Raphael) ausdruecklich stehengelassen. **Kein Eingriff ins Script.** | umgesetzt 28.08.2026 (Lauf 21, active-with-flagging — Faktenaktualisierung am Anker, keine Aenderung an Checks, Script oder Vorbehalts-Kern) |
| SYN-57 | rules/betrieb-chronik.md 260828 · logbuch/fristen.md Nachtrag 28.08. · scripts/heartbeat.sh.VORSCHLAG-260825 · Rule wege-und-vollmachten / auto-verbesserungen 260809 · (Register SYN-49) | 1 | **Aus dem Neubau vom 28.08. wurde eine Lehre gezogen, die das eigene Repo widerlegt — und sie ist bereits als Rule-Kandidat formuliert.** `rules/betrieb-chronik.md` 260828 haelt als Lehre 2 fest: «Ein Fund, der nur im Scratchpad liegt, ist verloren. Die Arbeit vom 25.08. war fertig und getestet; weil sie an einer Berechtigungsgrenze hing und nur als Pfad im Register vermerkt war, musste sie am 28.08. neu gebaut werden. Was ein Klassifikator blockiert, gehoert als fertiger Befehl oder als Patch **in den Repo-Baum**, nicht in ein sessiongebundenes Verzeichnis.» Der Fristen-Nachtrag vom 28.08. sagt dasselbe («lag im damaligen Scratchpad und war mit der Session weg»). **Gegenprobe am Objekt:** `scripts/heartbeat.sh.VORSCHLAG-260825` ist seit Commit `2d70d19de` vom **25.08.2026 10:00** git-getrackt im Repo-Baum — 372 Zeilen, `bash -n` fehlerfrei, zehn Tailscale-Treffer, dieselben drei Messungen (Daemon · Peer · Waechter). Der Patch lag also **genau dort, wohin die Lehre ihn verlangt**, drei Tage lang, und sein Pfad stand woertlich an zwei Stellen: in `skills/heartbeat/SKILL.md` Z. 361 und im Fristen-Nachtrag vom 25.08. Das Register wusste es ausdruecklich — SYN-49 (Lauf 18) haelt fest, die `.VORSCHLAG`-Datei im Repo sei «aus demselben Grund kein Redundanz-Befund». **Wirkung:** eine falsch gezogene Lehre ist teurer als gar keine, weil sie eine Gegenmassnahme gegen ein Problem baut, das nicht bestand, und das wirkliche verdeckt. Die tragende Lehre ist Rule 260809: ein vorhandener Weg, den niemand findet, ist so gut wie keiner — hier verschaerft, weil er zweifach vermerkt war. **Adversariale Gegenpruefung:** (a) War die Fassung unbrauchbar, sodass ein Neubau noetig war? Nein — syntaktisch sauber, vollstaendig, funktionsgleich; der Diff (116 Zeilen, 372 → 367) ist eine Umschrift, keine Reparatur. (b) Entstand sie erst nachtraeglich? Nein, Commit-Zeitpunkt 25.08. 10:00, und der Fristen-Nachtrag vom 25.08. 09:4x nennt sie bereits. (c) Steht der Befund schon woanders? Nein — SYN-49 nennt die Datei, zieht aber die gegenteilige Lehre nicht in Zweifel, weil sie am 25.08. noch gar nicht formuliert war. | ⚠-Berichtigung als datierter Nachtrag direkt an Lehre 2 gesetzt (16/0, rein additiv; 2656 → 2672 Zeilen): Beleglage, die widerlegende Commit-Referenz, die tragende Lehre 260809 und als praktische Folge, vor dem Neubau einer blockierten Massnahme zuerst nach einer abgelegten Fassung zu suchen (`git log -S`, `ls *.VORSCHLAG*`, Pfad im Register lesen). **Wortlaut der urspruenglichen Lehre unangetastet**, Lehre 1 und der uebrige Eintrag ausdruecklich als gueltig bestaetigt. Offen und **Entscheid Raphael**: ob `scripts/heartbeat.sh.VORSCHLAG-260825` jetzt, nach vollzogenem Einbau, aus dem Repo genommen wird — als Doppelbestand neben dem produktiven Script ist sie verwechselbar, aber das Loeschen eines Bausteins ist nie Sache dieses Laufs. | teilweise umgesetzt 28.08.2026 (Lauf 21, active-with-flagging — Berichtigungsvermerk gesetzt); Verbleib der `.VORSCHLAG`-Datei offen, Entscheid Raphael |
| SYN-58 | rules/auto-verbesserungen.md 260824 (importiert) · rules/betrieb-chronik.md 260828 · skills/heartbeat/SKILL.md · scripts/heartbeat.sh | 1 | **Derselbe Check traegt zwei Nummern, und die Korrektur vom 28.08. erklaerte die eine faelschlich zum Planungsartefakt.** Der Lauf vom 28.08. korrigierte in `rules/auto-verbesserungen.md` 260824 und in der Chronik «heartbeat Check 15» zu «der 9. Check» mit der Begruendung, «die Nummer stammte aus einer Planung, nicht aus dem Script». **Gegenprobe:** `skills/heartbeat/SKILL.md` fuehrt Z. 273 `### 15. Fernzugang (Tailscale-Waechter)` in einer lueckenlosen Reihe `### 1.` bis `### 16.`; die Zeile steht dort seit Commit `ec1ee78ba` vom **24.08.2026**. Die 15 ist also real vergeben, nur eben in der Skill-Zaehlung, waehrend die 9 die Ausfuehrungsreihenfolge im Script meint. Beide Zahlen sind in ihrem Rahmen richtig, keine der beiden Stellen nannte den Rahmen. **Wirkung:** die importierte Rule liegt in **jeder** Session im Grundkontext und sagt jetzt «9», der Skill sagt «15» — wer den Check sucht oder zitiert, greift ins Leere oder korrigiert die jeweils andere Stelle zurueck. Dieselbe Ursache wie SYN-56: der Lauf vom 28.08. zog vier Stellen nach und las den Skill nicht. | An beiden Enden den Rahmen ergaenzt statt eine Zahl durchzusetzen: in `rules/auto-verbesserungen.md` 260824 knapp (5/2, davon 2 gewollte Zeilenersetzung; 412 → 415 Zeilen) «im **Script** der 9. Check, im **Skill** als Nr. 15 gefuehrt — beide Zahlen gelten, je nach Rahmen», samt Berichtigung der Planungs-Behauptung; in `skills/heartbeat/SKILL.md` ein ⚠-Absatz unter der Ueberschrift von Check 15 (8/0; 390 → 398 Zeilen) mit derselben Aussage und der Bitte, beim Zitieren den Rahmen zu nennen. Die Nummerierungen selbst **unangetastet** — beide sind in ihrem System korrekt, und eine Umnummerierung waere ein Eingriff in fremde Bausteine. | umgesetzt 28.08.2026 (Lauf 21, active-with-flagging — additive Rahmenangabe, keine Umnummerierung) |
| SYN-59 | rules/betrieb-chronik.md 260829 · connectors/WEGE.md · Rule wege-und-vollmachten Ziff. 4 · Rule osascript-apple-apps (importiert) · (Vorlaeufer SYN-57) | 4 · 1 | **Die Chronik legt am 29.08. wieder einen ausdruecklich als wiederverwendbar bezeichneten Baustein ins Scratchpad — einen Tag nachdem genau diese Frage im Eintrag direkt darunter verhandelt wurde.** `rules/betrieb-chronik.md` 260829 haelt fest: die drei GUI-Apps nehmen «**keine** `System Events`-Klicks zum Navigieren an; ein echter Doppelklick braucht `CGEvent` mit `mouseEventClickState` — dafuer liegt ein 20-Zeilen-Swift-Helfer **im Scratchpad**, der bei kuenftiger GUI-Automatisierung auf Catalyst-Apps Zeit spart», dazu «Messdaten und Script: Scratchpad `iptv/`». **Gemessen 29.08. 17:1x:** ueber **122** vorhandene Scratchpad-Verzeichnisse plus Home, `/tmp` und `mdfind` ist **keines** der genannten Artefakte auffindbar — nicht der Swift-Helfer, nicht `messkopf.py`, nicht `A2_tailscale_AN.csv`/`B_tailscale_AUS.csv`; der einzige verbliebene Systemtreffer fuer «messkopf» ist **die Chronikdatei selbst**. Der Verweis war also schon beim Schreiben fluechtig und ist vier Stunden spaeter tot. **Der eigentliche Synergie-Befund liegt eine Ebene tiefer:** die belegte **Sackgasse** (`System Events` wird von Catalyst-Apps nicht angenommen) und der belegte **Weg** stehen in keinem Register. `connectors/WEGE.md` fuehrt 0 Treffer fuer «CGEvent» und hat keine Fahigkeitszeile fuer GUI-Steuerung; Rule `wege-und-vollmachten` Ziff. 4 verlangt aber ausdruecklich «Jede gelaufene Sackgasse wird eingetragen. Dieselbe Sackgasse zweimal zu laufen ist der teuerste vermeidbare Fehler». Die importierte Rule `osascript-apple-apps` regelt die Bundle-ID-Adressierung und kennt diese Grenze ebenfalls nicht. **Adversariale Gegenpruefung:** (a) Steht es schon woanders? Nein — `grep -ril mouseEventClickState` ueber das ganze Repo trifft ausschliesslich `rules/betrieb-chronik.md`. (b) Ist das ueberhaupt Hub-Sache, wo der Anlass privat war? Ja — die verallgemeinerte Aussage ist werkzeugtechnisch und trifft jede GUI-Automatisierung; Ziff. 4 kennt keine Beschraenkung auf Geschaeftsfaehigkeiten. (c) Ist der Verlust der Messdaten der Befund? Nein, ausdruecklich nicht — der Sachbefund steht vollstaendig in der Chronik, die CSV sind verschmerzbar. Zugespitzt wird allein auf den als **wiederverwendbar** bezeichneten Helfer. | Fahigkeitszeile «GUI-App steuern, die AppleScript-Klicks nicht annimmt (Catalyst/Mac-Catalyst)» in `connectors/WEGE.md` gesetzt (+1/0; 884 → 885), in Rangfolge: **Weg 1** App-eigener `defaults`-Schluessel statt GUI-Klick (belegt 29.08., `NSDEFAULT_USECACHEMAIN` — der Weg, der im Fall tatsaechlich trug), **Weg 2** MCP `computer-use`, **Weg 3** `CGEvent` mit `mouseEventClickState`, **Weg 4** die Sackgasse durchgestrichen. Weg 3 ist ausdruecklich als «**Code NICHT mehr vorhanden**, wer ihn braucht, schreibt ihn neu» gekennzeichnet — sonst entstuende genau das Muster SYN-56, eine dokumentierte Gegenmassnahme, die fuer eine vorhandene gehalten wird. Dazu ein ⚠-Nachtrag an der Chronikstelle (13/0; 2766 → 2779) mit der Messung und dem Zeiger ins Register. **Der Helfer wird nicht rekonstruiert** — er ist weg, und Code aus einer Beschreibung nachzubauen waere geraten, nicht belegt. | umgesetzt 29.08.2026 (Lauf 22, active-with-flagging — Registereintrag ueber eine belegte Sackgasse, wie Rule `wege-und-vollmachten` Ziff. 4 ihn verlangt; kein Eingriff in Code, kein Nachbau) |
| SYN-60 | rules/betrieb-chronik.md 260829 (NICHT importiert) · rules/auto-verbesserungen.md 260730b (importiert) · alle Beratungs-/Diagnose-Sitzungen | 1 · 3 | **Eine Regel, die ausdruecklich fuer interaktive Sitzungen formuliert wurde, liegt in der Datei, die sich selbst auf automatische Laeufe und Infrastrukturarbeit beschraenkt.** Der Chronik-Eintrag 260829 formuliert woertlich eine «**Praktische Verschaerfung fuer Diagnose-Sitzungen: wird eine Empfehlung ausgesprochen, auf die der Benutzer handeln kann, ist der zugehoerige Messwert im Schlussbericht neu zu erheben — nicht zu zitieren**» und nennt im selben Satz ihre Herkunft: «Das ist Rule `auto-verbesserungen` 260730b, Punkt 3, in Reinform». **Die Zielrule kennt sie nicht:** `grep -in "neu zu erheben|neu erheben|Schlussbericht" rules/auto-verbesserungen.md` = **0 Treffer**. Und `rules/betrieb-chronik.md` sagt in ihrem eigenen Vorspann, sie gelte «fuer **automatische Laeufe und Infrastrukturarbeit**, nicht fuer jede Session» — die Verschaerfung adressiert aber genau die Sitzung mit einem anwesenden Benutzer. Sie liegt damit in der einzigen Datei, die der zustaendige Leser nicht geladen hat. **Beleg fuer den Schaden im Anlassfall:** ein um 10:45 korrekt gemessenes 35-W-Netzteil wurde im Schlussbericht als Gegenwart wiederholt, obwohl Raphael in der Zwischenzeit auf 96 W getauscht hatte (zwei unabhaengige Quellen, andere Seriennummer). Der Ist-Zustand im Bericht war falsch, waehrend jeder Einzelmesswert richtig war. Die Reichweite ist nicht auf Infrastruktur beschraenkt: dieselbe Mechanik trifft `zahlungsabgleich` (Zahlstatus nach ausgeloester Zahlung), `mahnwesen`, `kostenkontrolle` und jede Offert-/Pruefsitzung, in der Raphael waehrenddessen handelt. **Adversariale Gegenpruefung, und sie daempft den Befund:** 260730b Punkt 3 traegt die Familie bereits («nie aus dem letzten gelesenen Registerstand fortgeschrieben») — neu ist nicht das Prinzip, sondern der **Ausloeser** (eine Empfehlung, auf die der Benutzer handeln konnte) und der **Ort** (der Schlussbericht). Darum wurde die Verschaerfung als **Querverweis an den bestehenden Eintrag** gehaengt und **nicht** als eigener Rule-Eintrag angelegt: Rule 260719 verbietet das Anwachsen des Grundkontexts ohne Not, und ein zweiter Eintrag fuer dieselbe Familie waere Doppelrechnung. | An 260730b Punkt 3 einen Absatz «Verschaerfung fuer Beratungs- und Diagnose-Sitzungen» angehaengt (12/0; 415 → 427 Zeilen), mit Beleg-Zeiger auf `betrieb-chronik.md` 260829 und dem Netzteil-Fall in zwei Zeilen. Mitgenommen sind die drei uebrigen generalisierbaren Lehren desselben Eintrags, die ebenfalls nur in der Chronik standen: **ein auffaelliges Muster ist zuerst eine Aussage ueber das Instrument** (Sampling-Scripts messen die Taktabweichung mit — im Fall waren die Spitzenwerte um bis zu 2,8x aufgeblaeht), **Plausibilitaet und Beleg getrennt ausweisen**, und **wer nur die Quelle anschaut, haelt ein loesbares Problem faelschlich fuer fremdverschuldet** (die Lieferluecken des Anbieters waren real, entscheidend war der zu kleine Puffer auf der eigenen Seite). **Der Wortlaut der Chronik bleibt unangetastet**, ebenso die Nummerierung der Rule. | umgesetzt 29.08.2026 (Lauf 22, active-with-flagging — Querverweis an einen bestehenden Eintrag, kein neuer Rule-Eintrag, kein neuer @-Import) |
| SYN-61 | scripts/vollgas-schub.sh · Rule sync-kanonische-quelle (importiert) · Rule auto-verbesserungen 260726 (importiert) · rules/betrieb-chronik.md 260729 (NICHT importiert) · Rule auto-verbesserungen 260830 | 1 | **Die Gegenmassnahme gegen 600 ertraglose Laeufe misst ihren Ertrag mit genau dem Befehl, den die Chronik als ueber-SMB-haengend gemessen hat — und beruft sich dabei woertlich auf die Rule, welche die Praezisierung nicht kennt.** Rule `auto-verbesserungen` 260830 (Commit `64accb80e`, 30.08. 08:21) verlangt eine «Abbruchbedingung aus **gemessenem Liefer-Delta**» und nennt `scripts/vollgas-schub.sh` als Umsetzung. Das Script setzt sie in Z. 124 so um: `DELTA=$(cd "$HUB" && git status --porcelain 2>/dev/null | wc -l)`, mit dem Kommentar Z. 122/123 «Lesendes git ueber SMB ist erlaubt (Rule 260726 verbietet nur schreibende Befehle)». **`rules/betrieb-chronik.md` 260729 widerlegt genau diesen Satz, und zwar gemessen:** «auch ein reines `git status --porcelain` gegen `/Volumes/daten/jans-ai-hub` lief in den 2-Minuten-Timeout, waehrend im Hintergrund ein `claude -p`-Lauf und der 15-Min-Committer aktiv waren»; Konsequenz dort woertlich «Fuer den Zustand des NAS-Repos nicht `git status` ueber den Mount aufrufen». Das im Beleg beschriebene Szenario ist bei dieser Lane **per Konstruktion immer gegeben** — sie IST der `claude -p`-Lauf, und der 15-Min-Committer laeuft daneben. **Wirkung:** `2>/dev/null` und `wc -l` schlucken den Fehlschlag; ein haengender oder leer zurueckkommender Befehl liefert `DELTA=0`, `KOPF` bleibt leer, beide Messungen fallen auf «ertraglos» — die Lane bricht nach drei Runden ab, auch wenn sie liefert. Die Fehlrichtung ist die sichere, aber sie ist eine Fehlrichtung, und sie ist stumm. **Der Kern ist eine Grundkontext-Luecke, nicht ein Script-Fehler:** die importierte Rule `sync-kanonische-quelle` sagt «Datei-Edits ueber SMB sind erlaubt; nur `git` gehoert nativ auf die Synology», 260726 sagt dasselbe — beide im Grundkontext **jeder** Session. Die Einschraenkung auf **schreibende** Befehle steht ausschliesslich in der Chronik, die ausdruecklich nicht importiert ist. Wer nur den Grundkontext hat, zieht denselben Umkehrschluss wie der Script-Kommentar; das ist keine Nachlaessigkeit, sondern die vorhersagbare Lesart. **Adversariale Gegenpruefung:** (a) Steht es woanders? Nein — `grep -rinE "git status --porcelain"` ueber `fristen.md`, beide Rule-Dateien und das Register trifft ausschliesslich die Chronikstelle selbst. (b) Ist die Messung von 260729 durch die NAS-Mount-Haertung ueberholt? Nein — die Haertung (`nsmb.conf` + Keepalive, Commit `035cb9c1`) gilt laut Beleg **nur fuer das MacBook**; die Schub-Lanes laufen auf dem **Mac Mini**. (c) Ist der Befund akademisch, weil die Lanes stehen? Nein — die Datei ist scharf und wurde am 30.08. eigens fuer diesen Zweck geschrieben. | Querverweis in `rules/sync-kanonische-quelle.md` gesetzt (11/0; 39 → 50 Zeilen): ⚠-Absatz direkt unter dem missverstaendlichen Satz, der die gemessene Widerlegung, den nativen Weg per `ssh` und die Warnung «haengt ein Befehl doch einmal, NICHT wiederholen» traegt, mit Zeiger auf Chronik 260729 und auf diesen Eintrag. **Kein Eingriff ins Script** — Praezedenz SYN-49/SYN-56: ein ausfuehrender Baustein wird von diesem Lauf nicht angefasst, auch nicht im Kommentar. Empfehlung an den Betrieb: die Messung nativ per `ssh` fahren oder auf ein Lane-eigenes Merkmal umstellen (siehe SYN-62). | umgesetzt bis zum Querverweis 30.08.2026 (Lauf 23, active-with-flagging); Umstellung der Messung offen, Betriebsschicht |
| SYN-62 | scripts/vollgas-schub.sh · Rule auto-verbesserungen 260830 · Rule rollen-taxonomie Ziff. 4 · logbuch/vollgas/schub/*.log | 1 · 2 | **Die Lane misst nicht ihren eigenen Ertrag, sondern den des ganzen Repos — bei Mehr-Lane-Betrieb rettet jede Lane jede andere vor dem Abbruch.** `scripts/vollgas-schub.sh` Z. 124-133 wertet eine Runde als ertragreich, wenn `git status --porcelain` im **HUB** nicht leer ist ODER sich der **Commit-Kopf des ganzen Repos** bewegt hat (`KOPF != KOPF_VOR`). Beide Messungen sind global. Gemessen am 30.08.: das Repo trug ueber den ganzen Tag **8 bis 24 Commits pro Stunde**, also im Mittel alle 2,5 bis 7 Minuten einen — bei fuenf parallelen Lanes plus `nas-selfcommit` (15-Min-Takt) plus den uebrigen Loops ist praktisch garantiert, dass sich zwischen zwei Runden einer Lane etwas bewegt, das **nicht von ihr stammt**. `ERTRAGLOS` erreicht dann nie die geforderten drei. Rule 260830 nennt «neuer Commit-Kopf» selbst als zulaessiges Kriterium — der Konstruktionsfehler steckt also bereits in der Regel, nicht erst im Script. Es ist derselbe Fehler eine Ebene hoeher: die alte Fassung zaehlte Laeufe statt Ertrag, die neue zaehlt **fremden** Ertrag. Rule `rollen-taxonomie` Ziff. 4 traegt die Familie ausdruecklich («Nie Laeufe zaehlen, immer Ertrag — und allgemein: zuerst fragen, was ein Zaehler wirklich zaehlt»). **Adversariale Gegenpruefung, und sie daempft den Befund deutlich:** (a) Es gibt eine zweite, **lane-lokale** Sicherung — die Selbstauskunft-Erkennung (Z. 136-143, Muster `nichts mehr zu bearbeiten`, `nichts mehr offen`, `Nullstand`, `STILLGELEGT`). Sie hat bei SYNOBSIS nachweislich gegriffen und ist im Alltag der wirksamere Weg. Der Befund trifft also nicht die Abbruchfaehigkeit ueberhaupt, sondern den als **Hauptmechanismus** benannten Weg. (b) Sie ist Textmuster-Erkennung und greift nur, wenn der Lauf die Phrase trifft — genau darum ist die Delta-Messung als robuster Weg vorgesehen, und genau der ist blind. (c) Aktuell laeuft nur noch eine Lane (FACHWISSEN), die real liefert; der Befund ist damit **latent, nicht akut** — er schlaegt beim naechsten Mehr-Lane-Schub wieder durch. (d) Steht es woanders? Der Fristen-Eintrag vom 30.08. («Dispatch-Schleife feuert wortgleiche Auftraege an bereits stillgelegte Lanes», 677 Laeufe / 515 ohne Delta) fuehrt das **Betriebsproblem** vollstaendig und richtig, adressiert aber den Scheduler, nicht die Abbruchlogik des Treibers — die ist dort nicht erwaehnt. | **Nur gemeldet, kein Eingriff.** Die Messung lane-lokal zu machen (Pfad-Filter auf den Schreibbereich der Lane, z.B. `git status --porcelain -- wissen/<kb>` bzw. `git log` gegen den Lane-Pfad) ist eine Aenderung an einem ausfuehrenden Baustein und gehoert in die Betriebsschicht, nicht in einen Aufsichtslauf. Ebenso der Vorschlag, in Rule 260830 «neuer Commit-Kopf» auf «neuer Commit-Kopf **im Schreibbereich der Lane**» zu praezisieren — der Wortlaut einer Rule wird von diesem Lauf nicht geaendert. | offen — gemeldet 30.08.2026 (Lauf 23), Umsetzung Betriebsschicht / Entscheid Raphael |
| SYN-63 | logbuch/vollgas/schub/synobsis.prompt · Rule auto-verbesserungen 260830 Punkte 2 und 3 · scripts/vollgas-schub.sh · (Vergleichsobjekt fachwissen.prompt) | 1 | **Von fuenf Lane-Prompts hat die Korrektur vom 30.08. vier erreicht — der fuenfte ist ausgerechnet der mit den meisten ertraglosen Runden.** Rule 260830 Punkt 3 verbietet, dass ein wiederholt zugestellter Prompt einen Fortschrittsstand behauptet; Punkt 2 verlangt, dass er einen **festen** Abbruchsatz fordert, auf den der Treiber hoert. Umgesetzt wurde beides sauber: `fachwissen.prompt` (Commit `64accb80e`) sagt jetzt woertlich «Dieser Prompt nennt bewusst KEINE Zahlen und KEINEN Fortschrittsstand … Lies also zuerst den tatsaechlichen Zustand» und verlangt den festen Satz «Es gibt nichts mehr zu bearbeiten»; drei weitere Prompts (`baurecht-thalwil`, `grobkosten`, `normen-pruefstand`) wurden vom Leerlauf-Waechter durch Stilllegungs-Prompts ersetzt, Originale als `.prompt.orig-260830` gesichert. **`synobsis.prompt` blieb unberuehrt** — letzter Commit `cf0e18922` vom **29.08. 19:00**, also vor der Korrektur. Er behauptet weiterhin einen Stand (Z. 3-9: «Charge 1 ist seit 29.08.2026 vollstaendig (14/14). **Charge 2 und folgende sind offen**», dazu namentliche Maengellisten), waehrend die Lane laut eigenem Log seit dem 29.08. meldet: «Es gibt nichts mehr zu bearbeiten. Dies ist Lauf 30+ mit identischem Nullstand … kein Schreiben, kein CHANGELOG-Eintrag, kein Commit ausgeloest.» Genau die Dauerluege, die 260830 beschreibt. Zweitens fehlt der feste Abbruchsatz: Z. 27 sagt nur «Ist NICHTS mehr offen, sage genau das in einem Satz» — kein Wortlaut. Dass der Treiber trotzdem stoppen konnte, lag daran, dass der Lauf zufaellig zwei der vier Erkennungsmuster traf (`nichts mehr zu bearbeiten`, `Nullstand`); konstruiert war es nicht. Die Lane steht bei **Runde 348** und ist seit 08:17 ohne Log-Eintrag (letzte Zeile ein `Broken pipe` aus `claude-run.sh`). **Adversariale Gegenpruefung:** (a) Ist der Prompt gegenstandslos, weil die Lane tot ist? Nein — er liegt scharf und unveraendert; ein Redispatch aktiviert den falschen Stand sofort, und genau solche Redispatches sind im Fristen-Register vom 30.08. als laufendes Problem belegt («88. wortgleicher Dispatch»). (b) Steht der Befund schon woanders? Der Fristen-Eintrag zaehlt SYNOBSIS mit 281 ertraglosen Laeufen, benennt aber den Scheduler als Adressaten; der **Prompt-Inhalt** kommt dort nicht vor. | **Nur gemeldet, kein Eingriff.** Ob `synobsis` wie die drei anderen Lanes stillgelegt oder auf einen Zustands-selbst-ermittelnden Prompt nach dem Muster `fachwissen.prompt` umgestellt wird, ist Entscheid des Leerlauf-Waechters bzw. Raphaels — ein Aufsichtslauf schreibt keinen fremden Auftragstext um und legt keine Lane still. Empfohlen wird die Umstellung nach dem Vorbild `fachwissen.prompt`, weil sie den Befund an der Wurzel loest, statt die Lane nur zu stoppen. | offen — gemeldet 30.08.2026 (Lauf 23), Entscheid Raphael / Leerlauf-Waechter |

Erstlauf: 15.07.2026 (Lauf 01, Session Synergie-Orchestrator-Einrichtung).
Lauf 02: 25.07.2026 (monatlicher Lauf, vorgezogen auf den Task-Termin; Delta-Basis Git-Log +
KB-CHANGELOGs seit 15.07.2026). Geprueft: 1 neuer Skill (`pdf2dwg`), 0 neue Agenten, 0 neue
Verhaltens-Rules, starkes KB-Wachstum (wettbewerbs-dna Etappe 3, energie, baurecht, spec,
entwurfs-referenzen, architekten-synobsis). Neu: SYN-13 bis SYN-15; Status nachgefuehrt:
SYN-02, SYN-04, SYN-10. Unveraendert offen: SYN-01, SYN-05, SYN-06, SYN-08, SYN-09, SYN-11.
Lauf 03: 01.08.2026 (erster planmaessiger Termin des Scheduled Task `synergie-lauf-monatlich`,
04:40; Delta-Basis 26.07.–01.08.2026). **Messhinweis:** Commit `7b4c0777` vom 25.07. 21:00
(«3185 Datei(en)») erfasst den ganzen Bestand als Add — ein `--diff-filter=A --since=2026-07-25`
meldet deshalb fast jeden Skill faelschlich als neu; Delta ab 26.07. messen. Geprueft: 1 neuer
Skill (`wissens-destillat`), 2 neue KBs (`bauprodukte`, `claude-code`), 2 neue importierte Rules
(`wissens-ruecklauf`, `rollen-taxonomie`), 1 neuer Connector (`hub-setup`), 0 neue Agenten;
50 Skills auf Platte. Neu: SYN-16 bis SYN-19 (SYN-18 im selben Lauf umgesetzt); Status
nachgefuehrt: SYN-01 (halb geschlossen), SYN-02 (unveraendert nachgemessen), SYN-06 (teilweise),
SYN-14 (unveraendert, weiterhin 4 Skills ohne Contract). Nicht neu aufgerollt (Compounding, keine
Aenderung der Beteiligten): SYN-04, SYN-05, SYN-08, SYN-09, SYN-11, SYN-13, SYN-15.
Kein neuer Service-ENTWURF — das Delta ist fast vollstaendig infrastrukturell.
Laufbericht: `outputs/2026-08-01_synergie-lauf-03.md`.
Lauf 04: 13.08.2026 (Start unbeaufsichtigt am 12.08. ~23:28, interaktiv korrigiert und beendet
am 13.08. ~01:10; Delta-Basis 01.08.2026 14:20 – 13.08.2026 01:05).

⚠ **Messfehler im ersten Durchgang, vollstaendig korrigiert — die Lehre gehoert ins Register:**
Die Stationsuhr ging zehn Tage nach (`date` meldete 03.08. 23:28, real war der 12.08.; Beleg
`sync-tasks/log/selfcommit-202608.log`, lueckenlos bis `2026-08-13T01:04:27`). Unter der
schiefen Uhr lieferte `git log --since=2026-08-01T14:20` **262 Commits** statt der realen
**1111** — die Traversierung brach an den schief datierten Commits ab, ohne Fehler oder
Warnung. Der erste Durchgang schloss daraus «Delta duenn» und «Takt zu eng, fruehestens
01.09.»; beide Aussagen sind **zurueckgezogen**. Fuer kuenftige Laeufe: gefilterte Commit-Zahl
immer gegen die ungefilterte pruefen, und Commit-Daten im Fenster 03.–13.08.2026 sind
teilweise unbrauchbar (nur `nas-selfcommit`-Commits tragen die korrekte Synology-Zeit) —
deshalb mit Hashes belegen, nicht mit Daten.

Geprueft (korrigiertes Fenster): 1 neuer Skill (`energie`), **4 neue Rules**
(`interaktive-eingriffe`, `modellwahl-routine`, `wege-und-vollmachten` importiert;
`jans-dna-facetten` bewusst nicht importiert), **2 neue Connectoren** (`m365-graph.mjs`,
Wege-Register `WEGE.md`), 1 neuer Command (`/tiefenrecherche`), 0 neue Agenten/Services.
Verdrahtungs-Gegenprobe: alle neuen Bausteine korrekt registriert (README/@-Import/CLAUDE.md/
rollen-map); einzige Fehlstelle `m365-graph.mjs` in der Allowlist `.claude/settings.json`
(0 Treffer). Neu: SYN-20 bis SYN-22 (Contract-Teil von SYN-20 im selben Lauf umgesetzt).
Status nachgefuehrt: SYN-02 (unveraendert), SYN-08 (verschaerft), SYN-13 (unveraendert trotz
KB-Bewegung), SYN-14 (unveraendert, zum Muster verstaerkt). Nicht neu aufgerollt (Compounding):
SYN-01, SYN-04, SYN-05, SYN-06, SYN-09, SYN-11, SYN-15 — bei 1111 Commits ist diese Auswahl
weniger sicher als bei einem Wochenfenster, was der neue Tagestakt behebt.
Kein neuer Service-ENTWURF; einziger Katalog-Bezug ist die Korrektur an S6 (SYN-21).
**Takt ab 13.08.2026 taeglich** (Anordnung Raphael): Task `synergie-lauf-taeglich`, 17:00,
mit Uhr-Check als erstem Schritt und Frueh-Ausstieg bei strukturellem Nulldelta. Der als
monatlich gefuehrte Vorgaenger-Task `synergie-lauf-monatlich` ist stillgelegt.
Laufbericht: `outputs/2026-08-13_synergie-lauf-04.md`.

Lauf 05: 13.08.2026 01:19–01:35 (erster Lauf im neuen Tagestakt; Delta-Basis 13.08.2026 01:05,
Fenster 14 Minuten, 10 Commits). Uhr-Check bestanden: Station 01:19 CEST gegen Synology
`2026-08-13T01:18:59` — die Schieflage aus 260813e ist behoben, Commit-Daten ab hier wieder
belastbar. Gegenprobe bestanden (neuester Commit im gefilterten Ergebnis = HEAD `efa7df0a`).
Strukturelles Delta: **0 neue Bausteine**, aber 5 geaenderte Skills (`zahlungsabgleich`,
`stockwerkeigentum`, `heartbeat`, `ausschreibung`, `synergie-orchestrator`) und 1 geaenderter
Connector (`bexio.mjs`) — der Frueh-Ausstieg griff daher nicht. Thema des Fensters: Rueckkanten,
gesetzt vom `wissens-chef` Run 29 (Commit `397d4fc5`).

**Messhinweis fuer den Tagestakt:** die Commit-Messages im Fenster passen nicht zu den
geaenderten Dateien (`nas-selfcommit` erfasst laufende Fremdarbeit unter fremder Message,
Chronik 260813d). Zuordnung deshalb ueber `git diff` am Inhalt, nie ueber die Message.

Neu: SYN-23 (Teil (a) im selben Lauf umgesetzt). Status nachgefuehrt: SYN-20 (a weiterhin 0/9,
zehnter Konsument bewegt, dessen Gegenkante nachgezogen; b unveraendert offen). Geprueft und
tragfaehig befunden, kein Befund: die neue Kante `ausschreibung` → `wissen/normen` (ABB-Reihe
SIA 118/xxx) — der Zielartikel existiert, ist korrekt als `speculative` gekennzeichnet und nur
zur Orientierung freigegeben, die 10 ABB-Destillate `sia-118-{244,246,248,257,262,263,265,
266-1,266-2,267}` liegen vor, und `skills/normen/SKILL.md` Z. 50 nennt `ausschreibung`
zurueck — beidseitige Kante, belegte Fundstelle, kein Handlungsbedarf. Nicht neu aufgerollt
(Compounding, kein Beteiligter bewegt): SYN-01 bis SYN-19, SYN-21, SYN-22.
Kein neuer Service-ENTWURF, kein Katalog-Bezug.

⚠ **Korrektur an der Lauf-04-Fussnote:** Die dort als «einzige Fehlstelle» gemeldete fehlende
Allowlist-Freigabe fuer `m365-graph.mjs` in `.claude/settings.json` ist ein **Fehlbefund** und
wird zurueckgezogen. Die Datei enthaelt genau einen Bash-Eintrag, und der lautet `"Bash(*)"` —
eine pauschale Freigabe, unter der jeder Connector laeuft. Der 0-Treffer-Grep nach dem
Connector-Namen war eine Aussage ueber die Suchform, nicht ueber die Freigabe; dieselbe Falle
wie in Rule `wege-und-vollmachten` Punkt 5 und `auto-verbesserungen` 260807. Bei kuenftigen
Allowlist-Pruefungen zuerst die Struktur der Datei lesen, dann darin suchen.
Laufbericht: `outputs/2026-08-13_synergie-lauf-05.md`.

Lauf 06: 13.08.2026 17:10–17:35 (Delta-Basis 13.08.2026 01:35, Fenster 15,5 Stunden,
80 Commits). Uhr-Check bestanden: Station 17:10 CEST gegen den nativen Synology-Log
`2026-08-13T17:00:06`. Gegenprobe bestanden (neuester Commit im gefilterten Ergebnis =
HEAD `d6b59600`, identisch in NAS-Repo und SSD-Klon; die Git-Lesevorgaenge liefen deshalb
auf dem Klon, nicht ueber SMB). Strukturelles Delta: **0 neue Bausteine**, aber 2 geaenderte
Skills (`ausschreibung` Commit `2b6177dc`, `pdf2dwg` Commit `675657b0`), 2 geaenderte Rules
(`auto-verbesserungen` `2641d5ad`, `jans-dna-facetten` `6c207435`) und CLAUDE.md
(`b1782600`) — der Frueh-Ausstieg griff daher nicht. Thema des Fensters: **Verifikations-
und Ablage-Vorbehalte, die nur ihr Erzeuger kennt.**

Neu: SYN-24 (Normen-Destillat-Status; Teile a und b im selben Lauf umgesetzt), SYN-25
(pdf2dwg-Sackgassen nicht im Wege-Register, umgesetzt), SYN-26 (Ablage-Spiegelung 260813
ohne Gegenkante, umgesetzt). Geprueft und **kein Befund**: die Aenderung an
`rules/jans-dna-facetten.md` (Commit `6c207435`, 16 Zeilen zu 12) — Verdichtung plus zwei
neue Marker (Traktandenliste-Register, Breadcrumb-Ablageverweise); der dabei entfallene
`[[stimme]]`-Backlink ist kein Bruch, weil die Datei kein Wiki-Artikel ist und das
Twin-Wiki die Facette unveraendert fuehrt. Ebenfalls kein Befund: die CLAUDE.md-Aenderung
(`b1782600`) zieht nur den Befund des `methoden-radar` nach, dass die drei Rollen-Scripts
nie im heartbeat hingen. Nicht neu aufgerollt (Compounding, kein Beteiligter bewegt):
SYN-01 bis SYN-23, ausser wo oben genannt. Kein neuer Service-ENTWURF, kein Katalog-Bezug.

**Messhinweis, bestaetigt:** die Zuordnung Commit-Message zu geaenderter Datei traegt auch
in diesem Fenster nicht (`nas-selfcommit` sammelt Fremdarbeit unter eigener Message) —
alle fuenf Bausteine wurden ueber `git show <hash> -- <pfad>` am Inhalt zugeordnet.
Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811: `git diff --numstat` ueber alle
sechs bearbeiteten Dateien zeigt 8/0, 9/0, 7/0, 2/1, 2/1 und die Register-Ergaenzung —
die beiden Einer-Loeschungen sind die beabsichtigten Zeilenersetzungen in den zwei
Contract-Bloecken, keine Datei hat Bestand verloren.
Laufbericht: `outputs/2026-08-13_synergie-lauf-06.md`.

Lauf 07: 14.08.2026 17:10–17:45 (erster Lauf im Tagestakt mit vollen 24 h Abstand;
Delta-Basis 13.08.2026 17:35, Fenster 23,5 Stunden, 124 Commits). Uhr-Check bestanden:
Station 17:10 CEST gegen den nativen Synology-Log `2026-08-14T17:00:01`. Gegenprobe
bestanden (neuester Commit im gefilterten Ergebnis = HEAD `91615d12`, identisch im
SSD-Klon; die Git-Lesevorgaenge liefen deshalb auf dem Klon, nicht ueber SMB).
Strukturelles Delta: **0 neue Bausteine**, aber 3 geaenderte Rules
(`dokument-layout-standard` `1a85e022`, `auto-verbesserungen` viermal, `betrieb-chronik`
siebenmal) und `connectors/WEGE.md` (`1c84780f`) — der Frueh-Ausstieg griff daher nicht.
Thema des Fensters: **vier neue Regeln vom 14.08., die alle mit «ergaenzt Rule X» enden —
und in drei Faellen ergaenzt die genannte Rule nichts zurueck.**

Neu: SYN-27 (Listen-Neuregelung erreicht die Generatoren nicht, Warnhinweise gesetzt,
Umstellung offen), SYN-28 (Mail-Skriptsammlungen kennen die neue `whose`-Sackgasse nicht;
Teil a umgesetzt, Teil b Klarname statt Bundle-ID offen), SYN-29 (zwei einseitige
Regel-Kanten, davon eine mit inhaltlichem Widerspruch; umgesetzt). Nicht neu aufgerollt
(Compounding, kein Beteiligter bewegt): SYN-01 bis SYN-26. Kein neuer Service-ENTWURF,
kein Katalog-Bezug.

**Zwei Werkzeugfallen im eigenen Lauf**, beide der Familie «leeres Ergebnis ist zuerst eine
Aussage ueber das Werkzeug» (Rule `wege-und-vollmachten` Punkt 5): (1) eine `&&`-Kette
brach nach dem ersten Teilbefehl ab, weil ein leerer `grep` rc=1 liefert — der Eindruck
war «keine geaenderten Strukturdateien», tatsaechlich lief die Messung nie; (2) ungequotete
`--include=*.sh`-Muster wurden von zsh expandiert, der erste Sackgassen-Grep meldete
faelschlich null Treffer. Beide Messungen wurden wiederholt, bevor ein Befund darauf
gestuetzt wurde. Fuer kuenftige Laeufe: Messbefehle mit `;` statt `&&` verketten und
grep-Muster quoten.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811: `git diff --numstat` ueber alle
sieben bearbeiteten Dateien zeigt 16/0, 9/0, 7/1, 4/1, 9/0, 8/0 und 37/0 — **zwei geloeschte
Zeilen insgesamt**, beides beabsichtigte Zeilenersetzungen am Anker
(`interaktive-eingriffe.md` Z. 15, `modellwahl-routine.md` Z. 41). Zeilenzahlen vorher/
nachher stimmen in allen sieben Dateien mit dem Zuwachs ueberein; keine Datei hat Bestand
verloren.
Laufbericht: `outputs/2026-08-14_synergie-lauf-07.md`.

Lauf 08: 15.08.2026 17:10–17:50 (Tagestakt, Delta-Basis 14.08.2026 17:45, Fenster 23,4
Stunden, 108 Commits). Uhr-Check bestanden: Station 17:10 CEST gegen den nativen
Synology-Log `2026-08-15T17:00:05`. Gegenprobe bestanden (neuester Commit im gefilterten
Ergebnis = HEAD `df34cf9d`, identisch mit dem letzten Push im Synology-Log; die
Git-Lesevorgaenge liefen auf dem SSD-Klon, nicht ueber SMB — `git fetch` scheiterte
mangels SSH-Agent in der unbeaufsichtigten Session, der Klon war ueber den Log-Abgleich
aber nachweislich aktuell). Strukturelles Delta: **0 neue Bausteine, 1 geaenderter Skill**
(`email-preferences`, Commit `fd176ad4`) — der Frueh-Ausstieg griff daher nicht, wenn auch
knapp. Keine Aenderung an Rules, Agenten, Connectoren, Commands, Services, CLAUDE.md,
`docs/` oder `templates/`; in `connectors/`, `scripts/` und `commands/` null Treffer.
Thema des Fensters: **ein Wiki-Artikel, der seine vier Konsumenten beim Namen nennt,
waehrend keine einzige Skill-Datei ihn kennt.**

Neu: SYN-30 (bauoekologischer Beschaffungsstrang in `wissen/energie` ohne Rueckkante zu
den Bauleitungs-Skills; umgesetzt). Statuswechsel: **SYN-28 (b) von offen auf umgesetzt** —
nicht durch diesen Skill, sondern durch den Wissens-Chef Run 32 in der Nacht auf den 15.08.;
hub-weit gegengeprueft und vollstaendig. Geprueft und **kein Befund**: (1) das neue
Normen-Destillat `sia-416-1-2007.md` (`status: speculative`, korrekt gesetzt) ist in
`wiki/REGISTER.md` und `destillate/INDEX.md` verzeichnet — die SYN-24-Mechanik traegt, keine
Insel; (2) die sechs neuen `bauprodukte`-Wiki-Artikel, davon zwei BKP-codiert
(`bkp-221-holzfenster-3fach-verglasung`, `bkp-281-estrich-systeme`) — die SYN-16-Kante von
01.08. deckt sie ohne Nacharbeit ab, weil sie auf die KB zeigt und nicht auf einzelne
Artikel; (3) `wissen/twin` (23 Dateien, aber nur ein Fidelity-Output, kein neuer Baustein).
Nicht neu aufgerollt (Compounding, kein Beteiligter bewegt): SYN-01 bis SYN-27, SYN-29.
Kein neuer Service-ENTWURF, kein Katalog-Bezug.

**Methodischer Hinweis zum Tagestakt:** das strukturelle Delta bestand aus genau einem
geaenderten Skill, der Befund kam jedoch aus der KB-Bewegung — aus einem Wiki-Artikel, den
das Standard-Grep-Set des Schritts 1 gar nicht erfasst. Der Frueh-Ausstieg des Schritts 2
haette ihn bei striktem Nulldelta uebersehen. Die Regel bleibt richtig (KB-Inhaltsarbeit ist
kein Grund fuer einen vollen Lauf), aber die Ausnahme «ausser ein offener Register-Eintrag
nennt genau diese KB» sollte um den Fall erweitert werden, dass eine KB **neue Wiki-Artikel**
erhaelt, die Skills namentlich adressieren — das ist billig zu messen
(`grep -l 'Anschluss an die \(JANS-\)\?Skills'` ueber die neuen Dateien) und war hier der
einzige Zugang zum Befund.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811: `git diff --numstat` ueber alle
sechs bearbeiteten Dateien zeigt 1/1, 1/1, 1/1 (die drei «Inputs»-Zeilen sind je eine
einzelne Zeile, das Anhaengen erscheint als Zeilenersetzung am Anker), 7/0 (`energie`),
2/1 (Register: SYN-30 plus Statusersetzung in SYN-28) und den Laufbericht als Neuanlage.
Zeilenzahlen vorher/nachher: `ausschreibung` 402/402, `werkvertrag` 84/84,
`unternehmerkontrolle` 82/82, `energie` 98/105, Register 186/187 und 29/30 Tabellenzeilen —
**keine Datei hat Bestand verloren**, alle vier Loeschungen sind beabsichtigte
Zeilenersetzungen.
Laufbericht: `outputs/2026-08-15_synergie-lauf-08.md`.

Lauf 09: 16.08.2026 17:10–17:45 (Tagestakt, Delta-Basis 15.08.2026 17:50, Fenster 23,3
Stunden, 112 Commits). Uhr-Check bestanden: Station 17:10 CEST gegen Synology-Log 17:00:06
(`selfcommit-202608.log`, native Zeit). Gegenprobe der gefilterten Commit-Zahl bestanden:
HEAD `936279f2` (16.08. 17:00) liegt im Fenster, aeltester Treffer `d7772a3c` (15.08. 18:00)
schliesst direkt an die Delta-Basis an. Strukturelles Delta: **0 neue Skills/Agenten/
Connectoren/Commands/Services/Rules**, 1 neue Datei unter `skills/` (eine Korpus-Spec, kein
Baustein), **4 geaenderte Bausteine** (`agents/twin-chef.md`, `agents/layout.md`,
`skills/kostenkontrolle/SKILL.md`, `rules/jans-dna-facetten.md`). Der Frueh-Ausstieg griff
daher nicht. Thema des Fensters: **zwei Selbstkorrekturen des Hub, die je nur an einer von
mehreren zustaendigen Stellen ankamen.**

Neu: SYN-31 (Zahlen-/Betragsformat nur im Pruef-Agenten `layout`, Teile a und b umgesetzt,
Teil c Raphael vorgelegt) und SYN-32 (Takt-Divergenz `twin-fidelity-review`, umgesetzt).
Geprueft und **kein Befund**: (1) **die Gegenprobe zu SYN-24 (c)** — `kostenkontrolle` hat
am 15.08. (Wissens-Chef Run 33, Commit `b73a6ae7`) 53 Zeilen SIA-118-/SIA-416-Fundstellen
aufgenommen und dabei **beide** Destillate korrekt gewaehlt: `sia-118-1991.md` und
`sia-416-2003.md` stehen auf `status: established`, der Skill nennt zusaetzlich Ausgabe,
Vertragsvorbehalt («nur sofern SIA 118 vereinbart») und die Bring-Schuld SIA 118:2013. Genau
der Fall, den SYN-24 (c) als kuenftiges Risiko benennt, trat also ein und ging gut aus —
die Rule-Ergaenzung vom 13.08. traegt. (2) Die neue Korpus-Spec `buero-projekte-spec.md`
(Commit `2ac7d3cb`) ist beidseitig verdrahtet: `KORPUS-QUEUE.md` Z. 15 fuehrt sie mit Status
«aktiv», `skills/wissens-destillat/SKILL.md` Z. 16/26/50/73 kennt das Spec-Muster als
Pflicht-Gate. (3) `rules/jans-dna-facetten.md` (nicht importiert) und die sechs
twin-Facetten-Artikel: Umlaut-Normalisierung und Praezedenz-Verdichtung durch den
Fidelity-Lauf, keine neue Kante. Nicht neu aufgerollt (Compounding, kein Beteiligter
bewegt): SYN-01 bis SYN-30. Kein neuer Service-ENTWURF, kein Katalog-Bezug.

**Bewusst nicht als eigener Befund gefuehrt:** `wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md`
wuchs im Fenster um 9 Zeilen und adressiert sieben Skills namentlich, waehrend
`honorarberechnung-sia102`, `unternehmerkontrolle` und `kostenkontrolle` je **0 Treffer** auf
den Artikel oder `wissen/planungsgrundlagen` fuehren. Die 9 Zeilen sind aber ausschliesslich
die KB↔KB-Gegenkante zu `energie`, die der Wissens-Chef bereits gesetzt hat; die fehlenden
Skill-Rueckkanten sind Altbestand und in diesem Fenster nicht entstanden. Sie hier als
neuen SYN aufzumachen haette Kantenzahl statt Erkenntnis erzeugt — vermerkt fuer den Lauf,
der den Artikel als Ganzes prueft.

**Methodischer Nachtrag zum Hinweis aus Lauf 08:** die dort vorgeschlagene Zusatzmessung
(neue Wiki-Artikel, die Skills namentlich adressieren) wurde gefahren und kostete drei
Sekunden — im Fenster gab es **keine** neuen Wiki-Artikel, wohl aber zehn geaenderte mit
Skill-Adressierung. Die Messung findet also mehr, als der Frueh-Ausstieg braucht; sie
taugt als Ergaenzung von Schritt 1, nicht als Ausstiegskriterium.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811: `git diff --numstat` ueber die
vier bearbeiteten Dateien zeigt **9/0** (`rechtschreibung`, reines Anhaengen), **4/1**
(`dokument`, eine Zeilenersetzung am «%»-Punkt), **10/2** (`twin`, zwei Zeilenersetzungen an
Z. 69 und Z. 93) und **54/0** (Register, reines Anhaengen: zwei SYN-Zeilen plus diese
Fussnote, **null Loeschungen**). Zeilenzahlen vorher/nachher: `rechtschreibung` 88/97,
`dokument` 76/79, `twin` 103/111, Register 233/287 und **30/32 Tabellenzeilen** — keine Datei
hat Bestand verloren, die drei Loeschungen in den Baustein-Dateien sind beabsichtigte
Zeilenersetzungen. Dieser Absatz wurde zweimal nachgezogen, weil die zuerst notierten Zahlen
geschaetzt und nicht gemessen waren — genau der Fehlertyp, den dieser Skill prueft.
Laufbericht: `outputs/2026-08-16_synergie-lauf-09.md`.

Lauf 10: 17.08.2026 17:10–17:50 (Tagestakt, Delta-Basis 16.08.2026 17:10, Fenster 23,8
Stunden, 113 Commits). Uhr-Check bestanden: Station 17:10 CEST gegen Synology-Log 17:00:05
(`selfcommit-202608.log`, native Zeit, `2a06264c`). Gegenprobe der gefilterten Commit-Zahl
bestanden: neuester Treffer `2a06264c` ist zugleich der tatsaechliche HEAD, aeltester
Treffer `4192a468` (16.08. 17:15) schliesst direkt an die Delta-Basis an. Strukturelles
Delta: **0 neue Skills/Agenten/Connectoren/Commands/Services/Rules**, 4 neue Dateien unter
`skills/wissens-destillat/training/` (Inventar-, Sektions- und zwei Laufprotokolle des
Korpus `buero-projekte`, keine Bausteine), **9 geaenderte Bausteine**. Davon entfielen drei
(`agents/rechtschreibung.md`, `agents/dokument.md`, `skills/twin/SKILL.md`, Commit
`31df12e2`) auf die eigenen Schreibvorgaenge von Lauf 09 und wurden nicht neu aufgerollt.
Der Frueh-Ausstieg griff nicht. Thema des Fensters: **eine Korrektur-Achse, die auf der
Skill-Seite dreimal nachgezogen wurde und auf der Router-Seite zweimal liegen blieb.**

Neu: SYN-33 (Gegenkante der SIA-118-Achse plus zwei fehlende Contract-Pflichtfelder,
umgesetzt) und SYN-34 (`ausschreibung`-Wissensbasis, die von Run 34 selbst geparkte
Pruefung — nachgeholt, Befund bestaetigt, wegen Aussenwirkung Raphael vorgelegt statt
gesetzt). Geprueft und **kein Befund**: (1) die drei am 16.08. korrigierten Skills
(`offertenpruefung` Z. 70 ff., `werkvertrag` Z. 66 ff., `unternehmerkontrolle` Z. 73 ff.)
sind sachlich am Destillat korrekt — Art. 149-150 gegen Art. 181 sauber getrennt, beide
Schwellen (Fr. 300'000 / Fr. 200'000) richtig zugeordnet, Ausgabe und Statusfeld genannt.
(2) `skills/kostenkontrolle/SKILL.md` Z. 82-115 traegt die SIA-118-Strecke inhaltlich
vollstaendig und korrekt, inklusive der Rechtsfolge des Pruefversaeumnisses (Art. 155
Abs. 2) und des Vorrangs anderer Fachverbandsnormen bei der Garantiedauer — der Mangel lag
allein im Contract-Feld und in der Router-Gegenkante. (3) Die vier neuen
`buero-projekte`-Dateien sind beidseitig verdrahtet: `KORPUS-QUEUE.md` Z. 15 fuehrt den
Korpus mit Status «aktiv» und dem Stand Phase 0. (4) `rules/anrede-kontakte.md` (Commit
`728e53c6`, hub-chef 17.08.) und `rules/jans-dna-facetten.md` (`5d6d096b`) sind
Registerpflege mit Beleg, keine neue Kante. Nicht neu aufgerollt (Compounding, kein
Beteiligter bewegt): SYN-01 bis SYN-32. Kein neuer Service-ENTWURF, kein Katalog-Bezug.

**Bewusst nicht als eigener Befund gefuehrt:** der zusammengezogene Kurzschluessel
«Rueckbehalt/Garantie 10 %» ueberlebt in `skills/kostenkontrolle/SKILL.md` Z. 76 und im
Arbeitstemplate `templates/baubuchhaltung.md` Z. 38 — also in genau der Formel, die Run 34
in `werkvertrag` und `unternehmerkontrolle` aufgeloest hat. Er ist im Skill selbst zwanzig
Zeilen weiter unten (Z. 99-105) korrekt aufgeloest und dort ausdruecklich als «Regelfall,
nicht der einzige» markiert; der Punkt gehoert damit sachlich zu SYN-33 und nicht in eine
eigene Zeile. **Vermerkt fuer den naechsten Lauf, der die Bauleitungs-Templates als Ganzes
prueft:** die Abhak-Zeile im Template traegt die Aufloesung nicht mit, und zwischen
Fr. 200'000 und Fr. 300'000 divergieren die beiden Sicherheiten sofort — dort haekelt der
Bauleiter «10 %» ab, wo 5 % plus 5 % gelten.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811: **9/1** (`skills/normen/SKILL.md`,
eine Zeilenersetzung am Kopf der Abnehmerliste), **1/1** (`kostenkontrolle`, Zeilenersetzung
am Contract-Feld Z. 13), **1/1** (`ausschreibung`, dieselbe Stelle) und **58/0** (Register,
reines Anhaengen: zwei SYN-Zeilen plus diese Fussnote, **null Loeschungen**). Zeilenzahlen
vorher/nachher: `normen` 53/61, `kostenkontrolle` 130/130, `ausschreibung` 402/402,
Register 288/346 und **32/34 Tabellenzeilen** — keine Datei hat Bestand verloren, die drei
Loeschungen sind beabsichtigte Zeilenersetzungen. Die drei Skill-Dateien mussten gegen
Commit `7ef6c2a6` (17:15) statt gegen den Arbeitsbaum gemessen werden, weil der
15-Minuten-Selfcommit waehrend des Laufs dazwischenfuhr und `git diff` sie deshalb nicht
mehr anzeigte — ein leeres `diff` ist auch hier zuerst eine Aussage ueber den Messzeitpunkt,
nicht ueber die Datei. **Dieser Absatz wurde einmal nachgezogen:** die zuerst notierten
Werte (11/4 und 35/1) waren geschaetzt, nicht gemessen — derselbe Fehlertyp, den Lauf 09 an
dieser Stelle schon einmal korrigieren musste, und genau der, den dieser Skill prueft.
Laufbericht: `outputs/2026-08-17_synergie-lauf-10.md`.

Lauf 11: 18.08.2026 17:10–17:45 (Tagestakt, Delta-Basis 17.08.2026 17:10, Fenster 23,8
Stunden, 112 Commits). Uhr-Check bestanden: Station 17:10 CEST gegen Synology-Log 17:00:08
(`selfcommit-202608.log`, native Zeit, `8d2d2013`). Gegenprobe der gefilterten Commit-Zahl
bestanden: neuester Treffer `8d2d2013` ist zugleich der tatsaechliche HEAD, aeltester
Treffer `7ef6c2a6` (17.08. 17:15) schliesst direkt an die Delta-Basis an. Strukturelles
Delta: **0 neue Skills/Agenten/Connectoren/Commands/Services/Rules**, 3 neue Dateien
ausserhalb `wissen/` (zwei Logbuch-Journale, ein Hygiene-Report, keine Bausteine),
**8 geaenderte Bausteine**. Davon entfielen drei (`skills/normen/SKILL.md`,
`skills/ausschreibung/SKILL.md`, `skills/kostenkontrolle/SKILL.md`, Commit `7ef6c2a6`) auf
die eigenen Schreibvorgaenge von Lauf 10 und wurden nicht neu aufgerollt. Der Frueh-Ausstieg
griff nicht. Thema des Fensters: **ein Wissens-Rueckfluss, der drei von vier genannten
Abnehmern erreichte.**

Neu: SYN-35 (`ausschreibung` fehlte die Kante zur KB `projekt-lessons`, umgesetzt).
Geprueft und **kein Befund**: (1) Die zwei neuen `projekt-lessons`-Artikel sind zu den drei
von Run 35 bearbeiteten Skills **beidseitig** verdrahtet — beide Artikel nennen die Skills im
Feld `skills:` und im Abschnitt «Wo diese Lehre gelandet ist», beide Skills nennen den Artikel
mitsamt `status: emerging`-Vorbehalt. Sauber gearbeitet; die Luecke lag allein beim vierten
genannten Abnehmer. (2) `agents/energie-berater.md` und `agents/geodaten-beschaffer.md`
(Commit `15f9749c`) haben je die Frontmatter-Zeile `tools: All tools` verloren. Das ist eine
korrekte Bereinigung, keine Kappung: der Wert war tautologisch, und nach der Aenderung traegt
**kein** Agent mehr `All tools` (0 Treffer), waehrend die 14 Agenten mit `tools:`-Feld
durchgehend echte Einschraenkungen als mehrzeilige YAML-Liste fuehren (`layout`,
`rechtschreibung`, die acht `twin-*`, die drei `linkedin-*`, `website-content`). (3)
`rules/jans-dna-facetten.md` (`42ced312`, +38 Z.) ist eine **generierte** Datei
(`kompiliert_von: skills/twin/tools/build_dna.py`, Kopfzeile «Nicht von Hand editieren») —
der Verdacht auf einen Handedit ist widerlegt: derselbe Commit aendert alle sechs
Quell-Artikel unter `wissen/twin/wiki/` und hebt in `build_dna.py` `MAX_AUTO_BYTES` von
30'000 auf 34'000 B an. Der Kompilierweg wurde eingehalten, der Riegel bewusst entschieden
(`wissen/twin/outputs/2026-08-18_fidelity.md` Z. 270 ff.). Nicht neu aufgerollt (Compounding,
kein Beteiligter bewegt): SYN-01 bis SYN-34. Kein neuer Service-ENTWURF, kein Katalog-Bezug.

**Nebenbefund, im Lauf behoben:** `skills/ausschreibung/SKILL.md` Z. 13 verwies auf
«den offenen Punkt zur Wissensbasis in **SYN-35**» — diese ID existierte im Register nicht
(0 Treffer), gemeint war **SYN-34**, der von Lauf 10 selbst angelegte Eintrag zur
`ausschreibung`-Wissensbasis. Ein toter Verweis, gesetzt vom eigenen Vorlauf. Korrigiert auf
SYN-34. Die Reihenfolge ist Absicht: erst den Fehlverweis heilen, dann die neue ID vergeben —
haette dieser Lauf zuerst SYN-35 angelegt, waere aus dem toten Verweis ein **falscher**
geworden, der auf den Nachbarbefund zeigt und dadurch nicht mehr auffaellt. **Lehre fuer
kuenftige Laeufe: eine SYN-ID nie in einem Baustein zitieren, bevor die Registerzeile
geschrieben ist.**

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811: **2/2**
(`skills/ausschreibung/SKILL.md`, zwei Zeilenersetzungen — Fehlverweis Z. 13 und
KB-Verweis in der Inputs-Zeile Z. 11), Zeilenzahl 402/402. Register **53/0** (reines
Anhaengen: eine SYN-Zeile plus diese Fussnote, **null Loeschungen**), Zeilenzahl 346/399 und
**34/35 Tabellenzeilen**; der Wert schliesst diesen Korrekturabsatz mit ein und zaehlt sich
damit selbst. Zweimal nachgemessen: zuerst notiert war die Zwischenmessung nach der SYN-Zeile
allein (+1/0, 346/347), dann der Stand vor diesem Absatz (51/0, 346/397). Keine Datei hat Bestand verloren; die zwei Loeschungen in
`ausschreibung` sind beabsichtigte Zeilenersetzungen und mit `git diff --numstat` gemessen,
nicht geschaetzt. Laufbericht: `outputs/2026-08-18_synergie-lauf-11.md`.

Lauf 12: 19.08.2026 17:10–17:35 (Tagestakt, Delta-Basis 18.08.2026 17:10, Fenster 23,8
Stunden, 109 Commits). Uhr-Check bestanden: Station 17:10 CEST gegen Synology-Log 17:00:06
(`selfcommit-202608.log`, native Zeit, = HEAD `86936dbc`). Gegenprobe der gefilterten
Commit-Zahl bestanden: neuester Treffer `86936dbc` ist zugleich der tatsaechliche HEAD,
aeltester Treffer `b25de279` (18.08. 17:15) schliesst luckenlos an die Delta-Basis an.
Strukturelles Delta: **0 neue Skills/Agenten/Connectoren/Commands/Services/Rules** (die
einzige neue Datei unter den Baustein-Pfaden ist
`skills/wissens-destillat/training/buero-projekte-lauf-20260819-1331.md`, ein
Trainings-Laufprotokoll, kein Baustein), **4 geaenderte Bausteine**. Der Frueh-Ausstieg
griff nicht. Thema des Fensters: **eine Korrektur, die den systematischen Teil heilte und
die Abschrift in derselben Datei stehenliess.**

Neu: SYN-36 (`sia-102-2014.md` Z. 91 trug den Kategorie-Wert weiter, den Z. 65 seit dem
14.07. ausdruecklich verwirft; umgesetzt). Geprueft und **kein Befund**: (1) Die Kante
`honorarberechnung-sia102` ↔ KB `normen` ist nach Run 36 **beidseitig** verdrahtet — der
Skill nennt seit den Commits `a41e5ad0`/`895e7cb1` beide Destillate mitsamt `status`-Angabe,
beide Destillate nennen den Skill im Abschnitt «JANS-Praxis-Transfer» (`sia-102-2020.md`
Z. 447, `sia-102-2014.md` Z. 91). Die Rueckkante, die dieser Skill sonst am haeufigsten
vermisst, war hier vorhanden; der Fehler sass **innerhalb** eines Knotens, nicht zwischen
zweien. (2) `rules/jans-dna-facetten.md` (`48d9afa7`, 76/72) ist erneut ueber den
Kompilierweg entstanden, nicht von Hand: derselbe Commit aendert alle sechs Quell-Artikel
unter `wissen/twin/wiki/` sowie `wissen/twin/CHANGELOG.md` — gleiche Pruefung wie in Lauf 11,
gleiches Ergebnis. (3) `skills/synergie-orchestrator/SKILL.md` (`b58bf082`, +8/0) und
`skills/ausschreibung/SKILL.md` (`b25de279`, 2/2) sind die eigenen Schreibvorgaenge und der
Nachlauf von Lauf 11; nicht neu aufgerollt. Die dort verankerte Lehre wurde in diesem Lauf
zum ersten Mal angewandt: **erst die Registerzeile SYN-36 geschrieben, dann die ID im
Destillat zitiert.** Nicht neu aufgerollt (Compounding, kein Beteiligter bewegt): SYN-01 bis
SYN-35. Kein neuer Service-ENTWURF, kein Katalog-Bezug.

**Bewusst nicht angefasst:** die Kategorien-Zuordnung **im Skill** (`honorarberechnung-sia102`
fuehrt Pflegeheim bei III-IV, die Norm bei V). Sie liegt Raphael seit Run 36 als E1 vor und
ist ein Geschaeftsentscheid mit Honorarfolge, kein Registerbefund. Dieser Lauf hat allein die
KB-interne Widerspruechlichkeit geheilt — die Quelle sagt dort eindeutig V, und zwar in
derselben Datei zwei Mal.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811: Destillat
`wissen/normen/destillate/sia-102-2014.md` **1/1** (eine beabsichtigte Zeilenersetzung,
Z. 91), Zeilenzahl 100/100; Gegenprobe am Objekt: der alte Wert «Alters-/Pflegeeinrichtungen
VI» kommt nur noch als Zitat im Korrekturvermerk vor, die geltende Aussage lautet V, und
Z. 65 ist unberuehrt. Register **1/0** fuer die SYN-Zeile (reines Anhaengen, null
Loeschungen), Zeilenzahl 399/400 und **35/36 Tabellenzeilen**; diese Fussnote haengt
zusaetzlich an. Alle Werte mit `git diff --numstat` gemessen, nicht geschaetzt. Laufbericht:
`outputs/2026-08-19_synergie-lauf-12.md`.

Lauf 13: 20.08.2026 17:10-17:55 (Tagestakt, Delta-Basis 19.08.2026 17:10, Fenster 23,8
Stunden, 109 Commits). Uhr-Check bestanden: Stationsuhr 17:10 CEST gegen den nativen
Synology-Log (letzter Eintrag 16:59:39, `selfcommit-202608.log`) — keine Abweichung.
Gegenprobe zur Commit-Zahl bestanden: neuester Treffer `652a565d` ist zugleich der
tatsaechliche HEAD, aeltester Treffer `eda03310` (19.08. 17:15) schliesst lueckenlos an die
Delta-Basis an. Strukturelles Delta: **0 neue Skills/Agenten/Connectoren/Commands/Services/
Rules**, **6 geaenderte Bausteine** (`connectors/WEGE.md` in vier Commits, `skills/wettbewerb`,
`skills/brandschutz`, `rules/jans-dna-facetten`, `rules/anrede-kontakte`,
`agents/flaechen-nachweis`). Der Frueh-Ausstieg griff nicht. Thema des Fensters: **eine
Rueckkante war da, die Hinkante fehlte — und der Fehler ueberlebte 26 Tage.**

Neu: SYN-37 (`skills/brandschutz` band die Normen-KB nur im Modus B ein; Modus A und der
Bodenbelag-Praxisteil kannten sie nicht, weshalb die vertauschte BSR-Nummernzuordnung 26 Tage
ueberlebte, obwohl die Destillate sie seit dem 25.07. richtig fuehren und den Skill namentlich
als Abnehmer nennen; dazu die Fehl-Fundstelle 13-15 statt 14-15 fuer die Anforderung an
Bodenbelaege im Fluchtweg; umgesetzt) und SYN-38 (`connectors/WEGE.md` erklaert
`skills/pdf2dwg` zum kanonischen Ort der CAD-Grenzen und legte im Fenster selbst zwei neue
Grenzen ab; Register nennt den Skill 4 Mal, der Skill das Register 0 Mal; umgesetzt).

Geprueft und **kein Befund**: (1) `skills/wettbewerb/SKILL.md` (`9317e163`, 10/1) und
`agents/flaechen-nachweis.md` (derselbe Commit, 4/2) sind die Gegenrichtung desselben
Normen-Laufs und **beidseitig sauber**: beide tragen `normen-referenz` neu im Contract-Feld,
beide zitieren `wissen/normen/destillate/sia-416-2003.md` mit Fundstelle, und der Skill grenzt
zusaetzlich gegen die 2015 zurueckgezogene SIA 416/1:2007 ab. Nicht aufgerollt. (2)
`rules/jans-dna-facetten.md` (`d57a23d4`, 44/59) ist erneut ueber den Kompilierweg entstanden:
derselbe Commit aendert alle sechs Quell-Artikel unter `wissen/twin/wiki/` samt QUESTIONS —
gleiche Pruefung wie in Lauf 11 und 12, gleiches Ergebnis. (3) `rules/anrede-kontakte.md`
(`16d7d6e3`, 7/0) traegt drei neue Kontakte aus `twin-mail-training` Batch 99 und nennt den
Beleg (`wissen/twin/raw/260820-mailbatch-99.md`) in der Datei selbst — Kante vorhanden.
(4) **Widerlegte Hypothese, adversarial gegengeprueft:** der Verdacht, die neue
VKF-Fassungsmatrix liege unregistriert in `training/` und sei damit ein Verweisziel ohne
Register-Anschluss, traegt nicht. `wissen/normen/CLAUDE.md` Z. 13 fuehrt `training/` ausdruecklich
als Register-Bestandteil, und die Matrix ist in `wiki/REGISTER.md` (Abschnitt D), `wiki/QUESTIONS.md`,
`destillate/INDEX.md`, `training/norm-inventar.md` und im CHANGELOG registriert. Der Normen-Lauf
hat dort vollstaendig gearbeitet; die Luecke lag allein auf der Abnehmerseite.

**Gemessen, aber bewusst nicht aufgerollt:** ueber alle elf in `rules/normen-referenz.md`
Z. 30-32 genannten Abnehmer gepruefte Contract-Felder ergeben vier weitere ohne
`normen-referenz` — `honorarberechnung-sia102`, `kostenschaetzung`, `terminplanung`,
`stockwerkeigentum`. Keiner dieser vier hat sich im Fenster bewegt, und **SYN-24 (Lauf 06) hat
die Grundsatzfrage bereits anders entschieden**: der Vorbehalt gehoert in die importierte Rule,
die alle elf erreicht, nicht in elf Skill-Kopien. Bei `brandschutz` war die Umsetzung dennoch
richtig, weil zwei Dinge zusammenkamen, die dort fehlen: der Beteiligte hat sich heute bewegt
(`865d1df3`), und der Befund ist materiell (falsche Fundstelle im Praxisteil), nicht bloss
formal. Nicht neu aufgerollt (Compounding, kein Beteiligter bewegt): SYN-01 bis SYN-36.
SYN-24 (c) — die mechanische Absicherung, die Skill-Zitate gegen den `status:` ihres Destillats
haelt — bleibt weiterhin offen und haette diesen Fall nicht gefangen (die Nummer war falsch,
nicht der Status). Kein neuer Service-ENTWURF, kein Katalog-Bezug.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, alle Werte mit `git diff --numstat`
gemessen: `skills/brandschutz/SKILL.md` **12/3** (drei beabsichtigte Zeilenersetzungen: Contract-Feld,
Kontextquellen-Kopf, Sachverweis Bodenbelaege), Zeilenzahl 399/408; `skills/pdf2dwg/SKILL.md`
**10/0** (reines Anhaengen im Abschnitt «Grenzen»), 88/98; Register **2/0** fuer die beiden
SYN-Zeilen, **36/38 Tabellenzeilen**, diese Fussnote haengt zusaetzlich an. Gegenprobe am Objekt:
im brandschutz-Skill kommt «13-15» noch drei Mal vor, jedes Mal korrekt (Destillat-Dateiname,
Bibliotheks-Beschreibung, und als ausdruecklich benannte Klassifikationsquelle), und die
Anforderungsaussage lautet nun 14-15. Laufbericht:
`outputs/2026-08-20_synergie-lauf-13.md`.

---

Lauf 14: 21.08.2026 17:10-17:20 (Tagestakt, Delta-Basis 20.08.2026 17:10, Fenster 24,0
Stunden, **107 Commits**). Uhr-Kontrolle bestanden: Station 17:10 CEST gegen den nativen
Synology-Selfcommit 17:00:07 (HEAD `b78b9e7c`), konsistent mit dem 15-Min-Takt, kein
Datumssprung. Gegenprobe zur Delta-Filterung: aeltester Treffer `1a167215` (20.08. 17:15)
schliesst lueckenlos an die Delta-Basis an, juengster ist der HEAD selbst. Strukturelles
Delta: **0 neue Skills/Agenten/Connectoren/Commands/Services/Rules** (einziger `--diff-filter=A`-Treffer
unter den Baustein-Pfaden ist `skills/wissens-destillat/training/buero-projekte-lauf-20260820-2332.md`,
eine Lauf-Datei innerhalb eines bestehenden Skills, kein Baustein); **7 geaenderte
Strukturdateien**; KB-Aktivitaet `energie` 25, `twin` 20, `koordination` 6,
`architekten-synobsis` 5, `normen` 3, `planungsgrundlagen` 2, `bauprodukte` 1. Der
Frueh-Ausstieg nach Schritt 2 griff nicht, weil sich vier Rules bewegt haben.

**Neu: SYN-39** (Bildschirmschoner-Waechter unversioniert unter `~/bin/`, als einziger von
fuenf Stations-Waechtern; Sicherung ins Repo gesetzt, launchd bewusst nicht angefasst) und
**SYN-40** (die neue Laengenregel 260820 benennt `dokument-layout-standard.md` als die von ihr
ergaenzte Datei und steht dort mit 0 Treffern; Querverweis gesetzt).

Geprueft und **kein Befund**: (1) `skills/brandschutz/SKILL.md` und `skills/pdf2dwg/SKILL.md`
tragen im Fenster nur den Commit `a3793804` — die eigenen Reparaturen aus Lauf 13. Nicht
aufgerollt. (2) `connectors/WEGE.md` (`c6d9e7f9`, 11/11) ist eine reine Umlaut-Korrektur des
Korrektur-Harness am CAD-Block; Zeilenzahl unveraendert, kein Sachverweis beruehrt.
(3) `rules/jans-dna-facetten.md` (`39089b81`, 31 Zeilen) ist zum vierten Mal in Folge ueber
den Kompilierweg entstanden: derselbe Commit aendert alle sechs Quell-Artikel unter
`wissen/twin/wiki/` samt QUESTIONS und CHANGELOG — gleiche Pruefung wie in Lauf 11, 12 und 13,
gleiches Ergebnis. (4) `rules/anrede-kontakte.md` (`7374b200`, 15/0) traegt drei neue
KISPI-Kontakte und die neue Klausel «ein persoenliches Treffen kann das Register heben»; die
Rueckkante ist **beidseitig** gesetzt (die Klausel nennt `wissen/twin/wiki/QUESTIONS.md` 260821 #1,
und QUESTIONS nennt die Rule an mehreren Stellen namentlich), und `agents/email.md` fuehrt
`anrede-kontakte` bereits im Contract-Feld «Abhaengige Rules».

**Adversarial gegengeprueft und bewusst nicht gesetzt:** die neue Anrede-Klausel verlangt einen
zusaetzlichen Arbeitsschritt («vor einer Mail an einen Fachplaner den Kalender des laufenden
Tages pruefen»), was zunaechst nach einer fehlenden Verdrahtung in `agents/email.md` aussieht.
Sie steht aber ausdruecklich als **noch nicht bestaetigt** in der Rule («gilt bis dahin als
Hinweis, nicht als Regel»). Einen unbestaetigten Hinweis in einen ausfuehrenden Agenten zu
schreiben wuerde ihn zur Regel machen, bevor Raphael entschieden hat — das ist kein
Registerbefund, sondern eine Vorwegnahme. Wieder aufzurollen, sobald QUESTIONS 260821 #1
beantwortet ist.

**Gemessen, aber nicht aufgerollt:** `rules/betrieb-chronik.md` erhielt im Fenster ausser dem
Screensaver-Eintrag keine weitere Bewegung; die rollen-map wurde geprueft und fuehrt
Stations-Waechter grundsaetzlich nicht (einziger Treffer `schutzmechanik-selbsttest`), der
fehlende Registereintrag fuer `ch.jans.screensaver-idle` ist deshalb **kein** Ausreisser und
kein Befund. Reine KB-Inhaltsarbeit in `energie` (25) und `twin` (20) ohne neue Bausteine:
nach Schritt 2 kein Grund fuer eine Aufrollung; kein offener Register-Eintrag nennt diese
beiden als Beteiligte mit heute bewegtem Partner. Nicht neu aufgerollt (Compounding, kein
Beteiligter bewegt): SYN-01 bis SYN-38. Kein neuer Service-ENTWURF, kein Katalog-Bezug.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, alle Werte mit `git diff --numstat`
gemessen: `rules/betrieb-chronik.md` **12/0** (reines Anhaengen), Zeilenzahl 1766/1778;
`rules/dokument-layout-standard.md` **10/0** (neuer Abschnitt vor «Geltung», per Python-Einsatz
an einem eindeutigen Anker, kein globales Ersetzen), 49/59; Register **2/0** fuer die beiden
SYN-Zeilen, **38/40 Tabellenzeilen**, 505/507, diese Fussnote haengt zusaetzlich an;
`scripts/screensaver-idle-watchdog.sh` neu angelegt, `diff` gegen `~/bin/`-Original leer.
Keine Datei hat Zeilen verloren. Laufbericht: `outputs/2026-08-21_synergie-lauf-14.md`.


---

Lauf 15: 22.08.2026 17:10-17:35 (Tagestakt, Delta-Basis 21.08.2026 17:10, Fenster 24,0
Stunden, 105 Commits). Uhr-Check bestanden: Stationsuhr 17:10 CEST, juengster nativer
Synology-Push `11a6af91` um 17:00:06 — Abweichung im Minutenbereich, kein Umdatieren noetig.
Gegenprobe zur Delta-Messung bestanden: HEAD des SSD-Klons ist derselbe Commit `11a6af91`,
und der aelteste Treffer im Fenster (`fbc5511f`, 21.08. 17:15) schliesst lueckenlos an die
Delta-Basis an. Strukturelles Delta: **0 neue** Skills/Agenten/Connectoren/Commands/Services/
Rules, **8 geaenderte** Struktur-Dateien — davon zwei (`rules/dokument-layout-standard.md`,
`rules/betrieb-chronik.md`) die eigenen Edits aus Lauf 14 und deshalb nicht aufgerollt.
Schritt 2 (Frueh-Ausstieg) griff wegen der sechs echten Aenderungen nicht.

**Neu: SYN-41** (die fuenf VKF-Fassungs-Deltas erreichten `skills/brandschutz/SKILL.md`, aber
nicht den `established`-Synthese-Artikel `wissen/normen/wiki/synthese-sia-vkf-fachskills.md`,
der zwischen Destillat und Skill sitzt und ohne Gegenlesen zitierfaehig ist; Fassungs-Vorbehalt
gesetzt) und **SYN-42** (die Statuszelle in `wissen/normen/wiki/REGISTER.md` Z. 37 meldete die
Bringschuld an `brandschutz` als offen, obwohl derselbe Commit `69027822` sie erfuellte;
korrigiert).

Geprueft und **kein Befund**: (1) `skills/wettbewerb/SKILL.md` (`66bcbd21`, 8/0) verdrahtet den
Harness an `wissen/wettbewerbs-dna/wiki/muster/jury-argumente-*.md` — alle drei Zieldateien
existieren, und die Rueckkante ist **beidseitig**: die KB nennt den Skill in `CLAUDE.md`,
`CHANGELOG.md` und drei Muster-Artikeln. (2) `skills/kostenschaetzung/SKILL.md` (`66bcbd21`, 8/1)
setzt die Bezugsgroessen-Abgrenzung CHF/m² NF ↔ CHF/m³ GV; `wissen/immobilienbewertung/wiki/
realwert-sachwert.md` nennt `kostenschaetzung` an fuenf Stellen zurueck, `wissen/koordination/
QUERBEZUEGE.md` fuehrt die Rollen-Matrix — Kante beidseitig, nichts zu setzen. (3)
`skills/unternehmerkontrolle/SKILL.md` (`14bd91de`, 1/1) nimmt die Prozent-Auswertung der
Auflage 2005 auf; das Zieldestillat existiert, und die fehlende Rueckbenennung ist nach der
oben gemessenen Konvention (5 von 325 energie-Destillaten) **kein** Befund. (4)
`rules/jans-dna-facetten.md` (`aa2e8ef5`, 12/13) ist zum **fuenften** Mal in Folge ueber den
Kompilierweg entstanden: derselbe Commit aendert alle sechs Quell-Artikel unter
`wissen/twin/wiki/` samt QUESTIONS und CHANGELOG — gleiche Pruefung wie in Lauf 11 bis 14,
gleiches Ergebnis. (5) `rules/anrede-kontakte.md` (`66bcbd21`, 17/1) annotiert die
Nivellier-Klausel gegen sechs Korpus-Belege und markiert sie ausdruecklich als
«Entscheid Raphael ausstehend» — dieselbe Lage wie in Lauf 14: einen unbestaetigten Hinweis in
einen ausfuehrenden Agenten zu schreiben wuerde ihn zur Regel machen, bevor Raphael entschieden
hat. Wieder aufzurollen, sobald `wissen/twin/wiki/QUESTIONS.md` 260821 #1 beantwortet ist.

**Adversarial gegengeprueft und bewusst verworfen:** (a) `skills/massgebendes-terrain/SKILL.md`
nennt die **Gesamthoehe** und sah damit wie der naechste Abnehmer der geaenderten
VKF-Messweise aus. Am Objekt gelesen (Z. 108-110) fuehrt der Skill die Gesamthoehe nach
**§ 281 nPBG** — Zuercher Planungs- und Baurecht, ein anderes Rechtsregime als die
VKF-Brandschutz-Gesamthoehe. Gleiches Wort, andere Norm, kein Konflikt. (b)
`skills/auflagebereinigung/SKILL.md` nennt **QSS** und verweist auf
`wissen/auflagebereinigung/wiki/brandschutz-auflagen-qss.md`; die 2019er-Fassung hat die
QSS-Schwelle fuer den Brandschutzkonzept-Bericht von 3 auf 4 gehoben und die
Uebereinstimmungserklaerung auf den QS-Verantwortlichen verengt. Am Objekt gelesen behauptet der
Artikel **keine** allgemeine Schwelle, sondern haelt die QSS-Stufe 3 als projektbezogenen Befund
aus dem Bauentscheid 2619 KISPI fest, und fuehrt die Uebereinstimmungserklaerung bereits als
«QS-unterzeichnet» — beides deckungsgleich mit dem Delta. Kein Befund. (c) Die
4'800-m²-Treffer in `skills/kostenschaetzung` und `wissen/normen/wiki/synthese-...` sind zur
Haelfte die **Parking-Brandabschnittsflaeche** (BRL 15-15 Ziff. 3.7.11) und nicht das
gestrichene Kriterium fuer ueberhohe Raeume — dieselbe Zahl, anderer Sachverhalt; nur der
Treffer an Z. 331 (Fluchtweg) traegt und ist in SYN-41 eingegangen.

**Gemessen, aber nicht aufgerollt:** reine KB-Inhaltsarbeit ohne neue Bausteine in `twin` (19),
`normen` (17), `energie` (12), `planungsgrundlagen` (6), `immobilienbewertung` (2),
`architekten-synobsis` (2) — nach Schritt 2 kein Grund fuer eine Aufrollung, soweit nicht wie
bei `normen` ein offener Register-Eintrag den Partner nennt. `wissen/claude-code/` ist **keine**
neue KB (angelegt `fe6f1150`, 29.07.2026). Nicht neu aufgerollt (Compounding, kein Beteiligter
bewegt): SYN-01 bis SYN-40. Kein neuer Service-ENTWURF, kein Katalog-Bezug.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, alle Werte mit `git diff --numstat`
gemessen: `wissen/normen/wiki/synthese-sia-vkf-fachskills.md` **16/0** (reines Einsetzen an
einem eindeutigen Anker, Trefferzahl vor dem Schreiben auf 1 geprueft), Zeilenzahl 549/565;
`wissen/normen/wiki/REGISTER.md` **1/1** (zeilenindizierte Ersetzung nur der Statuszelle, Praefix
und Suffix vorher assertiert), Zeilenzahl 741/741; Register **2/0** fuer die beiden SYN-Zeilen,
**40/42 Tabellenzeilen**, 565/567, diese Fussnote haengt zusaetzlich an. Kein globales
Suchen-und-Ersetzen, keine Datei hat Zeilen verloren. Laufbericht:
`outputs/2026-08-22_synergie-lauf-15.md`.


Lauf 16: 23.08.2026 17:10-17:45 (Tagestakt, Delta-Basis 22.08.2026 17:10, Fenster 24,0
Stunden, 126 Commits). Uhr-Check bestanden: Stationsuhr 17:10 CEST, juengster nativer
Synology-Log-Eintrag 17:05:20 — Abweichung im Minutenbereich, kein Uhr-Vorbehalt.
Gegenprobe bestanden: juengster Treffer im Fenster ist der HEAD `063edde4` selbst,
aeltester `8ebd5566` (22.08. 17:15) schliesst lueckenlos an die Delta-Basis an.
Strukturelles Delta: **0 neue** Skills/Agenten/Connectoren/Commands/Services/Rules und
**keine neue KB**; einziger Neuzugang unter den Bausteinpfaden ist eine Trainingsdatei
(`skills/wissens-destillat/training/buero-projekte-triage-20260823-1546.md`), kein Baustein.
Geaendert: vier Rules — `betrieb-chronik` (4 Commits, nicht importiert), `wissens-bibliothekar`
(`9646355d`, 15/0, importiert), `jans-dna-facetten` (`d4d79ced`, 26/26, nicht importiert),
`anrede-kontakte` (`fe6224f0`, 10/0, importiert). Damit greift der Frueh-Ausstieg nach
Schritt 2 nicht.

**Geprueft und als Befund aufgenommen:** die Anrede-Divergenz zwischen `anrede-kontakte`
und `jans-dna-facetten` (SYN-43) — beide Dateien haben sich im Fenster sieben Stunden
versetzt zur selben Sachfrage bewegt, die Richtungsprobe ergab eine einseitige Kante
(`jans-dna-facetten` → `anrede-kontakte` Z. 235, zurueck 0 Treffer).

**Adversarial gegengeprueft und bewusst verworfen:** (a) **Cross-KB-Bringschuld** — die neue
Klausel in `rules/wissens-bibliothekar.md` (`9646355d`) sah nach einer klassischen Ketten-Luecke
aus, weil weder `rules/wissens-ruecklauf.md` noch `wissen/WISSEN-CLAUDE.md` sie kennen (je 0
Treffer). Zwei Gegenbefunde am Objekt entkraeften das: beide Rules sind **importiert**, wer die
eine liest, hat die andere im Kontext; und der Mechanismus ist gelebt belegt funktionierend —
der Anlassfall `F-UEBERGABE` in `wissen/planungsgrundlagen/wiki/QUESTIONS.md` Z. 1515 ist am
23.08. **geschlossen**, und die energie→normen-Uebergabe zu SIA 493 ist drueben angekommen
(`wissen/normen/wiki/QUESTIONS.md` Z. 1037 «E-123-2 … geschlossen», `wiki/REGISTER.md` Z. 721).
Die Klausel kodifiziert eine funktionierende Praxis; ein Querverweis waere Rauschen.
(b) **`nas-commit-now.sh` im Buero-LAN** — der Chronik-Eintrag 260823 las sich wie eine
Sackgasse, die weder `rules/sync-kanonische-quelle`, `rules/git-auto-push` noch
`connectors/WEGE.md` kennen (je 0 Treffer). Am Objekt weitergelesen: der Eintrag ist
ausdruecklich als **ueberholt** markiert, die korrigierte Fassung darueber weist gestopptes
Tailscale auf dem Mac Mini als Ursache aus, «das Script ist in Ordnung, der Dienst ist aus».
Kein Rule-Befund; der Punkt ist als Betriebssache im Fristen-Register verankert. Genau die
Falle, vor der der Eintrag selbst warnt («erst messen, dann deuten»).
(c) **Dritte Station `macbook-revendo`** (HEAD `063edde4`): in der kanonischen Quelle
`connectors/hub-setup-daten.json`, in `docs/stationen.md`, im Vollgas-RADAR und im
Kontingent-Journal registriert — nur `station-status/macbook-revendo.md` fehlt. Stationen sind
keine Bausteine im Sinne dieses Skills und keine Zeile in `rollen-map.tsv`; die Statusdatei
entsteht beim ersten Lauf des Status-Jobs. Betriebssache, kein Registereintrag.
(d) **Neue energie-Antworten mit moeglichen Abnehmern** (Asbest-Meldepflicht ZH, Konzessionsdauer
Seewasser SZ/ZG): Abnehmer-Gegenprobe ueber `skills/` und `agents/` ergab nur
`skills/ankaufspruefung/SKILL.md`, und der fuehrt Asbest ausdruecklich als «Abklaerungsbedarf
benennen, kein Laborbefund» (Z. 52-53, 75-76) — **kein widersprechender Wert**, also nicht der
SYN-41-Typ. Die fehlende Verdrahtung `ankaufspruefung` ↔ `wissen/energie` ist bereits SYN-20,
nicht gedoppelt.

**Gemessen, aber nicht aufgerollt:** reine KB-Inhaltsarbeit ohne neue Bausteine in `energie`
(64), `normen` (61), `baurecht` (24), `twin` (19), `planungsgrundlagen` (16),
`architekten-synobsis` (6), `wettbewerbs-dna` (5), `immobilienbewertung` (5),
`firmengruendung-ch` (4), `entwurfs-referenzen` (4), `grobkosten` (3), `projekt-lessons` (2),
`bauprodukte` (2). Fuer die beiden grossen wurde die Ausnahme geprueft, weil offene Eintraege
sie nennen (SYN-24/37 `normen`, SYN-07/20/21/30 `energie`): das normen-Delta ist
Register-Formatkorrektur und Vollstaendigkeitsverifikation, ausdruecklich «keine neuen
Destillate»; das energie-Delta schliesst 15 offene Fragen, ohne eine bestehende Aussage zu
kippen — in beiden Faellen hat sich kein Abnehmer-Baustein bewegt. Nicht neu aufgerollt
(Compounding, kein Beteiligter bewegt): SYN-01 bis SYN-42. Kein neuer Service-ENTWURF, kein
Katalog-Bezug.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, alle Werte mit `git diff --numstat`
gemessen: `rules/anrede-kontakte.md` **9/0** (Einsetzen an einem eindeutigen Anker, Trefferzahl
vor dem Schreiben auf 1 assertiert), Zeilenzahl 106/115; Register **1/0** fuer die SYN-43-Zeile,
**42/43 Tabellenzeilen**, 639/640, diese Fussnote haengt zusaetzlich an. Kein globales
Suchen-und-Ersetzen, keine Datei hat Zeilen verloren. Laufbericht:
`outputs/2026-08-23_synergie-lauf-16.md`.


---

Lauf 17: 24.08.2026 17:10-17:55 (Tagestakt, Delta-Basis 23.08.2026 17:10, Fenster 23,8
Stunden, **177 Commits**). Uhr-Check bestanden: Station `2026-08-24 17:10 CEST`, nativer
Synology-Log `2026-08-24T17:00:05` — Abweichung im Minutenbereich, kein Umdatieren noetig.
Gegenprobe der Filterung bestanden: aeltester Treffer `1b34d09e` (23.08. 17:15) schliesst
lueckenlos an die Delta-Basis an, juengster ist der HEAD selbst (`0a27fab4`).

Strukturelles Delta: **0 neue** Skills/Agenten/Connectoren/Commands/Services/Rules; **4
geaenderte SKILL.md** (`twin`, `honorarberechnung-sia102`, `heartbeat`, `brandschutz`), die
`CLAUDE.md`, drei Rules (`betrieb-chronik` 9x, `auto-verbesserungen` 2x, `jans-dna-facetten`,
`anrede-kontakte`) und eine neue Projekt-Stammdatei
(`skills/ausschreibung/projekte/2619-kispi.md` — Stammdatenquelle nach Rule
`identifikatoren-verifizieren`, kein Baustein im Sinne des Contracts). Kein Frueh-Ausstieg.
Neu: **SYN-44, SYN-45, SYN-46**.

**Geprueft und ohne Befund geblieben:** (a) **`brandschutz` ↔ BSR 103-15** (`ffe18448`): der
Rueckzug per 31.08.2025 und der Nachfolger «Stand der Technik Papier Teil B» des Fachverbands
feusuisse (kein VKF-Dokument, Bezug ueber feusuisse.ch) sind im Skill mit Verweis auf
`wissen/normen/destillate/vkf-brl-103-15-cheminees.md` eingetragen — die Kante zeigt vom
Abnehmer zur Quelle, also gerade nicht die Figur «nur der Zulieferer kennt sie». (b) **`twin`**
(`e0900974`): der neue Blind-Zuschnitt der Goldproben («`summary`-Feld beim Zuschnitt nicht
lesen») steht beidseitig, in `skills/twin/SKILL.md` und in `wissen/twin/CLAUDE.md`, je einmal.
(c) **KB `architektur-fachwissen`**: in der `CLAUDE.md` eingetragen und in `QUERBEZUEGE.md`
zweifach gefuehrt; `wissen/WISSEN-CLAUDE.md` fuehrt **gar keine** KB-Liste (0 Treffer fuer
jede der 19 KBs), und `rollen-map.tsv` kennt keine KBs als Typ — beides also keine
Registrierungsluecke, sondern ein Register, das es nicht gibt. Erst diese Messung machte
SYN-45 sichtbar. (d) **Agent `honorar-angebotspruefung`**: fuehrt keine eigenen q-Werte und
grenzt die Angemessenheitsbewertung in Z. 20 ausdruecklich ab — die naheliegende
Doppelrechnung existiert nicht.

**Aufgerollt, obwohl frueher verworfen — mit Begruendung:** Lauf 09 (16.08.) hatte die
fehlenden Skill-Rueckkanten auf `recht-norm-ahb-stadt-zuerich-projektstandards` bewusst nicht
als Befund gefuehrt («Altbestand, in diesem Fenster nicht entstanden … vermerkt fuer den Lauf,
der den Artikel als Ganzes prueft»). Das war richtig und bleibt es. Neu ist nicht der Artikel,
sondern der **Abnehmer**: `honorarberechnung-sia102` hat sich im Fenster genau an der Stelle
bewegt, an der §5 des Artikels etwas beizutragen hat (Symbol `n`, Bandbreite 0.7-1.3). Damit
greift die Compounding-Klausel des Skills («nicht neu aufrollen, ausser ein Beteiligter hat
sich bewegt»), und der Befund ist SYN-44, kein Doppel von Lauf 09.

**Operativer Nebenbefund, nicht Sache dieses Skills:** der native Selfcommit scheitert seit
mindestens 12:45 an einem Rebase-Konflikt (`selfcommit-202608.log`, 17:00: «rebase
fehlgeschlagen — abgebrochen, naechster Lauf versucht erneut»), das NAS-Repo steht auf
`main...github/main [voraus 19, hinterher 51]`. Ein Rebase-Rest liegt **nicht** im Arbeitsbaum
(`.git/rebase-merge` und `-apply` fehlen), der Abbruch raeumt also sauber auf; die Divergenz
selbst bleibt. Gehoert in die Betriebsschicht (Chronik/Fristen), nicht ins Synergie-Register —
hier nur vermerkt, weil dieser Lauf ihn beim Uhr-Check gemessen hat und der naechste Lauf sonst
dieselbe Sackgasse misst.

**Gemessen, aber nicht aufgerollt:** reine KB-Inhaltsarbeit ohne neue Bausteine in `normen`
(432), `baurecht` (402), `energie` (355), `architektur-fachwissen` (56), `immobilienbewertung`
(55), `planungsgrundlagen` (45), `projekt-lessons` (43), `entwurfs-referenzen` (32), `twin` (27),
`grobkosten` (27), `koordination` (9), `firmengruendung-ch` (9), `wettbewerbs-dna` (8), `spec`
(8), `kunde-bopp` (5), `architekten-synobsis` (5), `bauprodukte` (3). Fuer `planungsgrundlagen`
wurde die Ausnahme geprueft und griff (SYN-44). Nicht neu aufgerollt (Compounding, kein
Beteiligter bewegt): SYN-01 bis SYN-43. Kein neuer Service-ENTWURF, kein Katalog-Bezug.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, alle Werte mit `git diff --numstat`
gemessen: `skills/honorarberechnung-sia102/SKILL.md` **12/0** (reines Anhaengen am
Vorbehalts-Abschnitt, Anker vor dem Schreiben auf Trefferzahl 1 assertiert), 298/310 Zeilen;
`CLAUDE.md` **2/1** (eine Zeilenersetzung, weil die Aufzaehlung umbrach), 305/306, danach alle
19 KBs gelistet nachgemessen; Register **3/0** fuer SYN-44 bis SYN-46, **43/46 Tabellenzeilen**,
706/709, diese Fussnote haengt zusaetzlich an. Kein globales Suchen-und-Ersetzen, keine Datei
hat Zeilen verloren. Laufbericht: `outputs/2026-08-24_synergie-lauf-17.md`.


Lauf 18: 25.08.2026 17:10-17:40 (Tagestakt, Delta-Basis 24.08.2026 17:10, Fenster 24,0
Stunden, **124 Commits**). Uhr-Check bestanden: Station `2026-08-25 17:10 CEST`, nativer
Synology-Log `2026-08-25T17:00:06` — Abweichung im Minutenbereich, kein Umdatieren noetig.
Gegenprobe der Filterung bestanden: aeltester Treffer `cf632451c` (24.08. 17:15) schliesst
lueckenlos an die Delta-Basis an, juengster ist der HEAD selbst (`b4aa253d5`). **Der operative
Nebenbefund von Lauf 17 hat sich erledigt:** der Selfcommit-Rebase-Konflikt ist behoben, der
Log zeigt seit 17:00 wieder «push OK», und `git status -sb` meldet `main...github/main` ohne
`voraus`/`hinterher`. Kein Nachtrag noetig.

Strukturelles Delta: **1 neuer Baustein** — `commands/vermaschung.md` (Commit `3de6139c8`,
24.08. 18:37) samt `scripts/vermaschungs-test.sh`. Geaendert: `rules/betrieb-chronik.md` (7x),
`skills/heartbeat/SKILL.md` (+23/0, Check 16), `skills/honorarberechnung-sia102/SKILL.md`
(+12/0, das ist die Umsetzung von SYN-44 aus Lauf 17), `rules/jans-dna-facetten.md` (33/31),
`CLAUDE.md` (2/1, Umsetzung SYN-45/46). Neue Scripts ausserhalb der Filterliste:
`git-divergenz.sh`, `heartbeat.sh.VORSCHLAG-260825`, `nas-selfcommit.sh.backup-260824`.

Geprueft und als Befund gefuehrt: die Verdrahtung des neuen Commands (SYN-47), seine fehlende
Rueckkante bei `/station-status` (SYN-48) und die Divergenz zwischen der auf 16 Checks
gewachsenen `heartbeat`-SKILL.md und dem bei acht Checks stehenden Script (SYN-49).

**Vier gemessene Nullbefunde, die ohne Messung Befunde geworden waeren:** (a) **Rollen-Register**
— die fehlende Zeile fuer `/vermaschung` ist kein Befund: gemessen stehen nur **3 von 13**
Commands in `logbuch/rollen/rollen-map.tsv` (`korrektur`, `tiefenrecherche`, `twin`), und Rule
`rollen-taxonomie` Ziff. 1 verpflichtet ausdruecklich «Skills, Agenten und Loops», nicht Commands.
Der neue Baustein weicht vom Normalfall nicht ab. (b) **`WEGE.md`** — vollstaendig verdrahtet
(Z. 60, mit Rangfolge und der Abgrenzung zu `stationen-watchdog.sh`), also keine Registrierungsluecke.
(c) **`scripts/heartbeat.sh.VORSCHLAG-260825`** — zwei Fassungen desselben Bausteins im
versionierten Repo saehen nach Redundanz aus; `logbuch/fristen.md` fuehrt sie samt Grund
(blockierter Schreibzugriff) korrekt in der Betriebsschicht. (d) **`scripts/git-divergenz.sh`** —
in `skills/heartbeat/SKILL.md`, `logbuch/fristen.md` und `logbuch/vollgas/RADAR.md` registriert,
keine Luecke.

**Aufgerollt, obwohl Lauf 16 es offen liess — Ergebnis: kein neuer Befund.**
`rules/jans-dna-facetten.md` hat sich im Fenster bewegt (33/31, Commit-Bundle `1395f0613` vom
25.08. 06:00), damit greift die Compounding-Klausel fuer SYN-43 (Anrede-Klausel doppelt gefuehrt,
importierte Fassung groeber als die nicht importierte). Der Verweis-Nachtrag aus Lauf 16 steht
unveraendert in `rules/anrede-kontakte.md`; die Sachfrage haengt weiterhin am ausstehenden
Entscheid Raphaels (`wissen/twin/wiki/QUESTIONS.md` 260821 #1, 260822b #1) und wird nicht durch
einen Aufsichtslauf entschieden. Status von SYN-43 bleibt «teilweise umgesetzt».

**Gemessen, aber nicht aufgerollt:** reine KB-Inhaltsarbeit ohne neue Bausteine in `energie` (21),
`baurecht` (18), `twin` (16), `normen` (7), `koordination` (6), `planungsgrundlagen` (5),
`claude-code` (3), `kunde-bopp` (2), `entwurfs-referenzen` (2), `auflagebereinigung` (2),
`architekten-synobsis` (2), `spec` (1). Fuer keine dieser KBs nennt ein offener Register-Eintrag
sie als Beteiligte, die Ausnahme griff also nicht. Nicht neu aufgerollt (Compounding, kein
Beteiligter bewegt): SYN-01 bis SYN-42, SYN-44 bis SYN-46. `/twin` fehlt wie `/vermaschung` in der
Command-Tabelle, ist aber Altbestand und in diesem Fenster nicht bewegt — vermerkt fuer den Lauf,
der die Tabelle als Ganzes prueft. Kein neuer Service-ENTWURF, kein Katalog-Bezug.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, alle Werte mit `git diff --numstat`
gemessen, jeder Anker vor dem Schreiben auf Trefferzahl 1 assertiert, kein globales
Suchen-und-Ersetzen: `CLAUDE.md` **1/0** (306 → 307); `commands/station-status.md` **8/0**
(32 → 40); `skills/heartbeat/SKILL.md` **15/0** (365 → 380); Register **3/0** fuer SYN-47 bis
SYN-49, **46 → 49 Tabellenzeilen**, diese Fussnote haengt zusaetzlich an. Keine Datei hat Zeilen
verloren, alle vier Eingriffe rein additiv. Laufbericht:
`outputs/2026-08-25_synergie-lauf-18.md`.

Lauf 19: 26.08.2026 17:10-17:55 (Tagestakt, Delta-Basis 25.08.2026 17:10, Fenster 24,0 h,
**116 Commits**, HEAD `188eb0923`). Uhr-Kontrolle bestanden: 17:10 CEST gegen nativen
Synology-Selfcommit 17:00:06. Gegenprobe bestanden — aeltester Treffer im Fenster `8e4cd8622`
(25.08. 17:15) schliesst luckenlos an die Delta-Basis an, juengster ist der HEAD selbst.
Strukturelles Delta: **0 neue** Skills/Agenten/Connectoren/Commands/Services/Rules, aber
**sechs bewegte Bestandsdateien** — der Frueh-Ausstieg griff darum nicht.

Zwei davon sind der eigene Schreibvorgang von Lauf 18 (`CLAUDE.md` und `skills/heartbeat/SKILL.md`,
beide Commit `ed2c63ab5` vom 25.08. 17:20) und wurden nicht erneut aufgerollt. Geprueft wurden die
vier echten Bewegungen: `skills/hub-chef/SKILL.md` (+34/0, `d80a58ffb`), `rules/betrieb-chronik.md`
(zwei Eintraege, `1299681a9` und `bac5aeda1`), `rules/jans-dna-facetten.md` (62/60, `2824da0f2`)
und `rules/anrede-kontakte.md` (+1/0, `ec45c5d6b`).

Neu als Befund gefuehrt: der nur beim `hub-chef` hinterlegte Ersatz-Versandweg, waehrend die vier
Ausnahme-Meldekanaele der Rule 260803 ausnahmslos am ersten Weg haengen (SYN-50, durch
`betrieb-chronik.md` 260826 unabhaengig belegt); die einseitige Kante zwischen der vom `hub-chef`
vorgeschriebenen CSS-Signatur und dem daran neu aufgehaengten Echo-Schutz-Detektor des Zwillings
(SYN-51); und das Fehlalarm-Verhalten von `scripts/mail-draft-guard.sh` gegenueber reinen
Lesebefehlen samt der nur in einem Task-Prompt dokumentierten Falle (SYN-52, in diesem Lauf
zweimal am eigenen Leib ausgeloest).

**Drei gemessene Nullbefunde, die ohne Messung Befunde geworden waeren:** (a) **Rueckkante
`WEGE.md`** — der Verweis des `hub-chef` auf den Abschnitt «Mail senden, zweiter Weg» stimmt, das
Register fuehrt den Weg vollstaendig (Z. 45 in der Rangfolge-Tabelle, Z. 696 ff. mit Befehl,
Pflicht-`--sender`, Nachmess-Pflicht und drei Sackgassen). Keine Registrierungsluecke. (b)
**Rueckkante Zwilling** — der `hub-chef`-Nachtrag nennt einen «Befund `twin` 26.08.2026»; der
Zwilling fuehrt ihn tatsaechlich und hat ihn zuerst erhoben (`wissen/twin/CHANGELOG.md`,
Batch 105, mit gemessenem Ersatzdetektor und Regressionsprobe am Messwerkzeug). Die Kante ist
also nicht unbemerkt, sie ist nur einseitig verdrahtet — das ist SYN-51 und nicht ein fehlender
Verweis. (c) **`rules/anrede-kontakte.md`** — die neue Zeile (Undine Hofer) stammt aus vier
belegten Fidelity-Laeufen des Zwillings und ist rein additiv; hier laeuft der Rueckfluss vom
Lern-Loop in die importierte Rule genau in der vorgesehenen Richtung, kein Befund.

**Aufgerollt, weil ein Beteiligter sich bewegt hat — Ergebnis: kein neuer Befund.**
`rules/jans-dna-facetten.md` hat sich erneut bewegt (62/60), damit greift die Compounding-Klausel
fuer SYN-43 zum zweiten Mal. Die Sachfrage haengt unveraendert am ausstehenden Entscheid Raphaels
(`wissen/twin/wiki/QUESTIONS.md` 260821 #1, 260822b #1) und wird nicht durch einen Aufsichtslauf
entschieden. Status von SYN-43 bleibt «teilweise umgesetzt».

**Gemessen, aber nicht aufgerollt:** reine KB-Inhaltsarbeit ohne neue Bausteine in `energie` (25),
`twin` (24), `normen` (13), `planungsgrundlagen` (7), `koordination` (6), `projekt-lessons` (4),
`auflagebereinigung` (3), `kunde-bopp` (2), `firmengruendung-ch` (2), `baurecht` (2), `spec` (1).
Fuer keine dieser KBs nennt ein offener Register-Eintrag sie als Beteiligte — mit der Ausnahme
`twin`, die ueber SYN-51 gerade aufgerollt wurde. Nicht neu aufgerollt (Compounding, kein
Beteiligter bewegt): SYN-01 bis SYN-42, SYN-44 bis SYN-49. Kein neuer Service-ENTWURF, kein
Katalog-Bezug.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, jeder Anker vor dem Schreiben auf
Trefferzahl 1 assertiert, kein globales Suchen-und-Ersetzen, alle Eingriffe zeilengenau am Anker:
`skills/hub-chef/SKILL.md` **+6/0** (200 → 206); `connectors/WEGE.md` **+11/0** (799 → 810, zwei
getrennte Einfuegungen); Register **58/1** fuer SYN-50 bis SYN-52 samt Fussnote,
**49 → 52 Tabellenzeilen** (835 → 893 Zeilen); `wissen/koordination/CHANGELOG.md` **+33/0**
(2560 → 2593); `logbuch/fristen.md` **+32/0** (4014 → 4046, Eintrag zu SYN-50 nach Rule
`auto-verbesserungen` 260805, weil terminkritisch — ein Laufbericht ist kein Meldekanal). **Zur einen gezaehlten Loeschung im Register:** sie ist ein Zeilenende-Artefakt,
kein Inhaltsverlust — die Datei endete bisher ohne abschliessendes Newline («\ No newline at end
of file»), die betroffene Zeile («Laufbericht: `outputs/2026-08-25_synergie-lauf-18.md`.») steht
unveraendert und weiterhin genau einmal in der Datei, gegengeprueft per `grep -c`. Netto also
57 Zeilen hinzugefuegt, keine entfernt; alle Eingriffe rein additiv. Laufbericht: `outputs/2026-08-26_synergie-lauf-19.md`.

Lauf 20: 27.08.2026 17:10-17:55 (Tagestakt, Delta-Basis 26.08.2026 17:10, Fenster 24,0 h,
**111 Commits**, HEAD `0ac25fdad`). Uhr-Kontrolle bestanden: 17:10 CEST gegen nativen
Synology-Selfcommit 17:00:05. Gegenprobe bestanden — ältester Treffer im Fenster `7fd8fc0c7`
(26.08. 17:15) schliesst lückenlos an die Delta-Basis an, jüngster ist der HEAD selbst.
Strukturelles Delta: **0 neue** Skills/Agenten/Connectoren/Commands/Services/Rules und keine neue
KB, aber **drei bewegte Bestandsdateien** — der Früh-Ausstieg griff darum nicht.

Eine der drei ist der eigene Schreibvorgang von Lauf 19 (`skills/hub-chef/SKILL.md`, +6/0 aus
Commit `b1e955983`) und trägt keinen neuen Befund. Geprüft wurden die beiden echten Bewegungen:
`skills/honorarberechnung-sia102/SKILL.md` (+3/−1, `ce498d218`) und `rules/jans-dna-facetten.md`
(18/18, `715b44d92`). **Drei neue Befunde: SYN-53** (belegte Kontakt-Anrede nur im nicht
importierten Block, nicht im importierten Register), **SYN-54** (Synthese-Artikel sammelt drei
Vorbehalte, Frontmatter bleibt `established`, Durchsicht nur im Laufbericht) und **SYN-55**
(Rule `normen-referenz` kennt den von der KB gemessenen dritten Status nicht).

**Ein gemessener Nullbefund, und er ist der wichtigere Teil des Tages:** die Rückkante von
`normen` Run 63 in den Fach-Skill hat **funktioniert**. Der Lauf hat `sia-102-2020.md` auf
`speculative` herabgestuft und im selben Lauf `skills/honorarberechnung-sia102/SKILL.md` Z. 82-85
nachgezogen — samt der präzisen Einschränkung, dass der für den Skill entscheidende
Negativbefund «kein Art. 7» von der Herabstufung **nicht** betroffen ist, weil er an den
Schlussseiten des Originals eigens nachgeprüft wurde. Das ist genau die Bewegung, deren Fehlen
SYN-36 und SYN-41 gerügt hatten. Der Befund SYN-54 richtet sich darum **nicht** gegen diesen
Lauf, sondern gegen die eine Kante, die er offen liess: den Weiterverteiler zwischen Destillat
und Skill.

**Aufgerollt, weil ein Beteiligter sich bewegt hat — Ergebnis: kein neuer Befund.**
`rules/jans-dna-facetten.md` hat sich zum dritten Mal in Folge bewegt (18/18, netto ±0 unter dem
33'978-B-Riegel), damit greift die Compounding-Klausel für SYN-43 zum dritten Mal. Die Sachfrage
hängt unverändert am ausstehenden Entscheid Raphaels (`wissen/twin/wiki/QUESTIONS.md` 260821 #1,
260822b #1) und wird nicht durch einen Aufsichtslauf entschieden. Status von SYN-43 bleibt
«teilweise umgesetzt».

**Zwei weitere Nullbefunde, gemessen statt vermutet:** (a) die neue Datei
`wissen/normen/training/n62-3-pruefstand-kandidaten.md` zählt Konsumenten je Norm und berührt
damit scheinbar `wissen/koordination/QUERBEZUEGE.md` — die Prüf-Frage 2 (Doppelrechnung) trägt
aber nicht: QUERBEZUEGE führt **inhaltliche** Querbezüge zwischen KBs und Skills, die
Kandidatenliste eine **Reichweiten-Metrik** zur Priorisierung eines Prüfprogramms. Verschiedene
Grössen, kein Doppelbestand. Übernommen wird nur der Befund selbst (SYN-55). (b) Kein neuer
Baustein im Fenster heisst auch: keine fehlenden Contract-Pflichtfelder, keine fehlende Zeile in
`logbuch/rollen/rollen-map.tsv`, keine fehlende Allowlist-Freigabe in `.claude/settings.json`.

**Gemessen, aber nicht aufgerollt:** reine KB-Inhaltsarbeit ohne neue Bausteine in `twin` (19),
`normen` (14), `energie` (13), `koordination` (9), `architekten-synobsis` (4),
`auflagebereinigung` (2), `spec` (1). Für keine dieser KBs nennt ein offener Register-Eintrag
sie als Beteiligte, ausser `twin` und `normen` — die über SYN-53 bis SYN-55 gerade aufgerollt
wurden. Nicht neu aufgerollt (Compounding, kein Beteiligter bewegt): SYN-01 bis SYN-42, SYN-44
bis SYN-52. Kein neuer Service-ENTWURF, kein Katalog-Bezug.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, jeder Anker vor dem Schreiben auf
Trefferzahl 1 assertiert, kein globales Suchen-und-Ersetzen, alle Eingriffe zeilengenau am Anker:
`rules/anrede-kontakte.md` **2/1** (117 → 118 Zeilen, 22 → 23 Tabellenzeilen; die eine Löschung
ist die gewollte Zeilenersetzung in der Notiz-Zelle Yorck von Dietze);
`wissen/normen/wiki/QUESTIONS.md` **+16/0** (6191 → 6207); `wissen/normen/wiki/INDEX.md` **1/1**
(16 Zeilen unverändert, gewollte Zeilenersetzung in der Synthese-Zeile);
`rules/normen-referenz.md` **+9/0** (36 → 45); Register **+3 Tabellenzeilen** (52 → 55) plus
diese Fussnote. Laufbericht: `outputs/2026-08-27_synergie-lauf-20.md`.

---

Lauf 21: 28.08.2026 17:10-17:55 (Tagestakt, Delta-Basis 27.08.2026 17:10, Fenster 24,0 h,
110 Commits). Uhr-Check bestanden: Stationsuhr 17:10 CEST, juengster Synology-Selfcommit
17:00:06 nativ geloggt, Abweichung unter zehn Minuten. Gegenprobe der Delta-Filterung
bestanden: aeltester Treffer `6bdd33d55` (27.08. 17:15) schliesst lueckenlos an die
Delta-Basis an, juengster ist der HEAD selbst (`8cf274647`). Strukturelles Delta: **0 neue**
Skills, Agenten, Connectoren, Commands, Services, Rules oder KBs; **5 geaenderte Rules**, davon
zwei (`normen-referenz`, `anrede-kontakte`, beide 27.08. 17:22/17:28) Eigenrauschen des Laufs 20
und darum nicht geprueft. Ausserhalb `wissen/` und `logbuch/` entstand im ganzen Fenster genau
eine neue Datei (`tenant-hygiene/reports/260827-hygiene.md`); genau ein Script bewegte sich:
`scripts/heartbeat.sh`.

**Der Lauf haengt an diesem einen Script.** Commit `c09742dab` (28.08. 09:45, +63/−2) baute den
seit dem 24.08. dokumentierten, aber nie existierenden Erreichbarkeits-Check ein. Der Lauf zog
`rules/auto-verbesserungen.md`, `rules/betrieb-chronik.md` und `logbuch/fristen.md` sauber nach
und liess **`skills/heartbeat/SKILL.md` aus** — die eine Datei, die den ausdruecklichen
Vorbehalt gegen genau dieses Script traegt. Daraus die drei Befunde: **SYN-56** (der Vorbehalt
aus SYN-49 hat sein Vorzeichen umgedreht und laesst eine vorhandene Gegenmassnahme als abwesend
erscheinen — sein Testbefehl `grep -i tailscale scripts/heartbeat.sh` beweist heute das
Gegenteil dessen, was danebensteht: 7 Treffer statt der behaupteten null), **SYN-57** (die
Chronik-Lehre «ein Fund, der nur im Scratchpad liegt, ist verloren» ist am eigenen Repo
widerlegt — die Fassung lag seit `2d70d19de` vom 25.08. 10:00 git-getrackt im Repo-Baum, 372
Zeilen, `bash -n` sauber, und ihr Pfad stand an zwei Stellen) und **SYN-58** (derselbe Check
traegt im Script die Nummer 9, im Skill die 15; die Korrektur vom 28.08. erklaerte die 15 zum
Planungsartefakt, obwohl `### 15. Fernzugang` seit `ec1ee78ba` vom 24.08. real vergeben ist).

**Aufgerollt, weil ein Beteiligter sich bewegt hat.** SYN-49 (Lauf 18) ist der direkte Vorlaeufer
von SYN-56 und wurde im Status nachgefuehrt statt neu gefasst; sein Kern — sieben der sechzehn
Skill-Checks bleiben ungedeckt — gilt unveraendert und wurde deshalb nicht gestrichen, sondern
auf den gemessenen Stand gebracht. `rules/jans-dna-facetten.md` hat sich zum **vierten** Mal in
Folge bewegt (21/24 netto −3, Fidelity-Review 28.08. 05:58), damit greift die
Compounding-Klausel fuer SYN-43 zum vierten Mal: aufgerollt, **kein neuer Befund**. Die
Sachfrage haengt unveraendert am ausstehenden Entscheid Raphaels
(`wissen/twin/wiki/QUESTIONS.md` 260821 #1, 260822b #1) und wird nicht durch einen
Aufsichtslauf entschieden; Status bleibt «teilweise umgesetzt».

**Was ausdruecklich NICHT als Befund uebernommen wurde.** (a) Die `.VORSCHLAG`-Datei als
Doppelbestand (Pruef-Frage 6): SYN-49 hatte sie am 25.08. mit Begruendung als Nicht-Befund
eingestuft, und seit dem Einbau ist die Lage neu — aber das Entfernen eines Bausteins ist nie
Sache dieses Laufs, darum als Entscheid Raphael in SYN-57 vermerkt statt als eigener Befund.
(b) Die Riegel-Differenz an `rules/jans-dna-facetten.md` (Datei 35'180 B, Loop meldet
33'952/34'000): plausibel misst der Twin-Loop nur die Facetten-Sektionen, nicht den Rahmen —
ohne Beleg wird daraus kein Befund, und es ist Twin-KB-Interna, keine Synergie-Frage.
(c) Der Wegweiser-Einzeiler zu `heartbeat` in CLAUDE.md nennt sechs Checks statt sechzehn: das
ist das Wegweiser-Prinzip, kein Defekt.

**Kein neuer Baustein im Fenster** heisst zugleich: keine fehlenden Contract-Pflichtfelder,
keine fehlende Zeile in `logbuch/rollen/rollen-map.tsv`, keine fehlende Allowlist-Freigabe in
`.claude/settings.json`, kein neuer @-Import. Kein Service-ENTWURF, kein Katalog-Bezug.

**Gemessen, aber nicht aufgerollt:** reine KB-Inhaltsarbeit ohne neue Bausteine in `twin` (20),
`normen` (15), `energie` (14), `koordination` (10), `architekten-synobsis` (6),
`projekt-lessons` (4), `planungsgrundlagen` (4), `wettbewerbs-dna` (3), `spec` (1),
`baurecht` (1). Fuer keine dieser KBs nennt ein offener Register-Eintrag sie als Beteiligte.
Nicht neu aufgerollt (Compounding, kein Beteiligter bewegt): SYN-01 bis SYN-42, SYN-44 bis
SYN-48, SYN-50 bis SYN-55.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, jeder Anker vor dem Schreiben auf
Trefferzahl 1 assertiert, kein globales Suchen-und-Ersetzen, alle Eingriffe zeilengenau am
Anker, Sicherungskopien der drei bearbeiteten Bestandsdateien im Scratchpad:
`skills/heartbeat/SKILL.md` **30/12** (380 → 398 Zeilen; die 12 Loeschungen sind die gewollte
Zeilenersetzung des ueberholten Vorbehalts-Absatzes, Check-Nummerierung 1 bis 16 unveraendert);
`rules/betrieb-chronik.md` **16/0** (2656 → 2672); `rules/auto-verbesserungen.md` **5/2**
(412 → 415; die 2 Loeschungen sind die gewollte Zeilenersetzung in der Klammer des Eintrags
260824); Register **+3 Tabellenzeilen** (55 → 58) plus SYN-49-Statuszelle (1 gewollte
Zeilenersetzung) und diese Fussnote. Laufbericht:
`outputs/2026-08-28_synergie-lauf-21.md`.

---

Lauf 22: 29.08.2026 17:10-17:40 (Tagestakt, Delta-Basis 28.08.2026 17:10, Fenster 24,0 h,
108 Commits). Uhr-Check bestanden: Stationsuhr 17:10 CEST, juengster Synology-Selfcommit
17:00:04 nativ geloggt, Abweichung unter zehn Minuten. Gegenprobe der Delta-Filterung
bestanden: aeltester Treffer `a3cf96b4c` (28.08. 17:15) schliesst lueckenlos an die
Delta-Basis an, juengster ist der HEAD selbst (`ce257e700`). Strukturelles Delta: **0 neue**
Skills, Agenten, Connectoren, Commands, Services, Rules oder KBs; **3 geaenderte Kern-Bausteine**,
davon **zwei reines Eigenrauschen** — `skills/heartbeat/SKILL.md` und
`rules/auto-verbesserungen.md` bewegten sich ausschliesslich durch Commit `aafae2564`, den
Schreibvorgang des Laufs 21 selbst, und wurden darum nicht geprueft. Ausserhalb `wissen/` und
`logbuch/` entstand im Fenster genau eine neue Datei (`tenant-hygiene/reports/260828-hygiene.md`)
plus der Ergebnisbaum eines Remote-Tasks (`wissenscheck-phase1`, auf dem Mac Mini 08:17 mit
`success` beendet); **kein Script bewegte sich**.

**Der Lauf haengt an einer einzigen Datei.** Echtes Delta unter den Kern-Bausteinen ist allein
`rules/betrieb-chronik.md` mit drei Schreibvorgaengen am 29.08. (11:15 +56, 11:30 +16/−2,
13:00 +24), zusammen der neue Eintrag **260829** zur IPTV-Diagnose. Daraus die zwei Befunde:
**SYN-59** (die Chronik legt einen ausdruecklich als wiederverwendbar bezeichneten Swift-Helfer
ins Scratchpad — gemessen ueber 122 Scratchpad-Verzeichnisse, Home, `/tmp` und `mdfind` ist er
samt Messkopf und CSV **nicht mehr auffindbar**, einziger Systemtreffer fuer «messkopf» ist die
Chronikdatei selbst; die belegte Sackgasse und die tragenden Wege standen in keinem Register,
obwohl Rule `wege-und-vollmachten` Ziff. 4 das ausdruecklich verlangt) und **SYN-60** (die
woertlich als «Praktische Verschaerfung fuer Diagnose-Sitzungen» formulierte Regel liegt in der
nicht importierten Chronik, die sich selbst auf automatische Laeufe und Infrastrukturarbeit
beschraenkt, waehrend sie die Sitzung mit anwesendem Benutzer adressiert und ihre eigene Herkunft
mit `auto-verbesserungen` 260730b benennt — dort 0 Treffer).

**Aufgerollt, weil ein Beteiligter sich bewegt hat.** **SYN-54**: Normen-Nacht Run 65
(`b90d8d663`, 29.08. 01:54) setzte einen **vierten** ⚠-Vorbehalt in
`wissen/normen/wiki/synthese-sia-vkf-fachskills.md`; damit sind drei der Frontmatter-Quellen
`speculative` bei unveraendert gruenem Frontmatter — Status nachgefuehrt, **kein neuer Befund**,
und ausdruecklich festgehalten, dass die Bringschuld aus Lauf 20 wirkt (die KB verstaerkt N63-3
selbst). **SYN-55**: `sia-416-2003.md` hat beide Pruefrichtungen durchlaufen, der beschriebene
Pruefstand-Mechanismus laeuft — Status nachgefuehrt, kein neuer Befund. **SYN-43 nicht
aufgerollt:** `rules/jans-dna-facetten.md` hat sich im Fenster **nicht** bewegt, die vierfache
Serie aus den Laeufen 18 bis 21 reisst hier. **SYN-01 geprueft, nicht aufgerollt:** `wissen/grobkosten`
bewegte sich (CHANGELOG + ein Report), aber die offene Kante des Eintrags sind
`agents/realwert-rechner.md` und `agents/wirtschaftlichkeit-rechner.md` — beide unbewegt.

**Was ausdruecklich NICHT als Befund uebernommen wurde.** (a) Der Verlust von `messkopf.py` und
den beiden CSV: Rohdaten einer abgeschlossenen Diagnose, deren Befund vollstaendig in der Chronik
steht — SYN-59 ist bewusst allein auf den als wiederverwendbar bezeichneten Helfer zugespitzt.
(b) Das falsche `last_updated: 2026-07-17` am Synthese-Artikel: bereits Bestandteil von SYN-54,
kein Zweiteintrag. (c) Die offenen Punkte des Chronik-Eintrags (DFS-Kanal 124, Laendercode NL des
Routers) sind ausdruecklich als Raphaels Entscheid und Nicht-Hub-Thema markiert und bleiben es.
(d) Der Wissenscheck-Remote-Task und die Stations-/Kontingent-Dateien sind Betriebsroutine ohne
Baustein-Bezug.

**Kein neuer Baustein im Fenster** heisst zugleich: keine fehlenden Contract-Pflichtfelder, keine
fehlende Zeile in `logbuch/rollen/rollen-map.tsv`, keine fehlende Allowlist-Freigabe in
`.claude/settings.json`, kein neuer @-Import. Kein Service-ENTWURF, kein Katalog-Bezug.

**Gemessen, aber nicht aufgerollt:** reine KB-Inhaltsarbeit ohne neue Bausteine in `energie` (18),
`twin` (17), `normen` (12, siehe SYN-54/55), `architekten-synobsis` (8), `koordination` (6,
Eigenrauschen Lauf 21), `projekt-lessons` (4), `grobkosten` (4, siehe SYN-01), `baurecht` (4),
`immobilienbewertung` (2), `bauprodukte` (1). Nicht neu aufgerollt (Compounding, kein Beteiligter
bewegt): SYN-01 bis SYN-42, SYN-44 bis SYN-53, SYN-56 bis SYN-58.

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, jeder Anker vor dem Schreiben auf
Trefferzahl 1 assertiert, kein globales Suchen-und-Ersetzen, alle Eingriffe zeilengenau am Anker,
Umfang gegen Sicherungskopien im Scratchpad gemessen (nicht per `git` ueber SMB):
`connectors/WEGE.md` **+1/−0** (884 → 885); `rules/auto-verbesserungen.md` **+12/−0** (415 → 427);
`rules/betrieb-chronik.md` **+13/−0** (2766 → 2779) — **alle drei rein additiv, null Loeschungen**;
Register **+2 Tabellenzeilen** (58 → 60) plus zwei Statuszellen (SYN-54, SYN-55, je additiv
angehaengt) und diese Fussnote. Laufbericht:
`outputs/2026-08-29_synergie-lauf-22.md`.

Lauf 23: 30.08.2026 17:10-17:5x (Tagestakt, Delta-Basis 29.08.2026 17:10, Fenster 24,0 h,
359 Commits im NAS-Repo). Uhr-Check bestanden: Stationsuhr 17:10 CEST, juengste native
Synology-Logzeile 17:07:21, Abweichung unter drei Minuten. **Gegenprobe der Delta-Filterung
bestanden, aber mit einem eigenen Befund:** das gefilterte Fenster ist plausibel (juengster
Treffer ist der HEAD `2f1307fdf` von 17:07), doch NAS und SSD-Klon zaehlen verschieden — 359
gegen 251 Commits. Das ist **keine Uhr-Schieflage**, sondern die seit dem 29.08. 21:51 laufende
Sync-Divergenz, die im Fristen-Register bereits als P1 gefuehrt wird; aktueller Stand Versuch
363, 293 lokal / 186 remote, im Register als datierter Nachtrag ergaenzt (Rule
`auto-verbesserungen` 260805: ein Laufbericht ist kein Meldekanal). Gemessen wurde in diesem Lauf
durchgehend gegen das **NAS** als kanonische Quelle.

Strukturelles Delta: **0 neue** Skills, Agenten, Connectoren, Commands, Services oder KBs; **2
neue Dateien** unter `skills/` (`wissens-destillat/specs/archiv-fachwissen-spec.md` und
`buero-referenzen-spec.md` — Korpus-Specs eines bestehenden Skills, keine neuen Bausteine, daher
keine Contract-, Rollen- oder Allowlist-Pflicht); **2 geaenderte Rules** (`betrieb-chronik.md` 5x,
`auto-verbesserungen.md` 2x). Damit greift der Frueh-Ausstieg nach Schritt 2 nicht.

Geprueft wurde die **Verdrahtung der Rule 260830** (Commit `64accb80e`, 30.08. 08:21), weil sie
als einzige Regeaenderung des Fensters einen ausfuehrenden Baustein und fuenf Auftragstexte
benennt. Ergebnis gemischt und ausdruecklich festgehalten: **die Umsetzung existiert wirklich** —
`scripts/vollgas-schub.sh` traegt den Delta-Abbruch (Z. 110-148) und die Selbstauskunft-Erkennung,
`fachwissen.prompt` ist mustergueltig auf Zustands-Selbstermittlung umgestellt, drei weitere
Prompts sind stillgelegt und ihre Originale gesichert. **Kein SYN-56-Muster** (dokumentierte
Gegenmassnahme ohne Substanz). Die drei Befunde liegen eine Ebene tiefer: der gewaehlte
Messbefehl (SYN-61), die globale statt lane-lokale Messung (SYN-62) und der einzige nicht
erreichte Prompt (SYN-63).

**Nicht aufgerollt (Compounding, kein Beteiligter bewegt):** SYN-01 bis SYN-60 mit einer
Ausnahme — SYN-49/SYN-56/SYN-57/SYN-58 wurden auf Bewegung geprueft, `skills/heartbeat/SKILL.md`
und `scripts/heartbeat.sh` haben sich im Fenster **nicht** bewegt. SYN-43 (`jans-dna-facetten.md`)
zum zweiten Mal in Folge unbewegt.

**Was ausdruecklich NICHT als Befund uebernommen wurde.** (a) Die 359 gegen 251 Commits: Symptom
der bereits gefuehrten Sync-Divergenz, kein eigener Synergie-Befund — nur der Registernachtrag.
(b) Die ueber 600 ertraglosen Laeufe der Nacht: vollstaendig und richtig in `logbuch/fristen.md`
(30.08., «Dispatch-Schleife feuert wortgleiche Auftraege an bereits stillgelegte Lanes», 677
Laeufe / 515 ohne Delta) gefuehrt, Adressat Scheduler — Synergie-Sache ist allein die
Abbruchlogik des Treibers (SYN-62) und der nicht erreichte Prompt (SYN-63). (c) Der `Broken
pipe` in `scripts/claude-run.sh` Z. 135 am Ende des SYNOBSIS-Logs: Betriebsstoerung ohne
Baustein-Bezug. (d) Die zwei neuen Korpus-Specs: sachgerecht am Ort des Skills abgelegt, vom
Lane-Prompt namentlich als Schreibbereich gefuehrt, keine Verdrahtungsluecke.

**Kein neuer Baustein im Fenster** heisst zugleich: keine fehlenden Contract-Pflichtfelder, keine
fehlende Zeile in `logbuch/rollen/rollen-map.tsv`, keine fehlende Allowlist-Freigabe in
`.claude/settings.json`, kein neuer @-Import. Kein Service-ENTWURF, kein Katalog-Bezug.

**Gemessen, aber nicht aufgerollt:** reine KB-Inhaltsarbeit ohne neue Bausteine in
`architektur-fachwissen` (151), `architekten-synobsis` (65), `normen` (33), `twin` (31),
`energie` (26), `baurecht` (11), `grobkosten` (8), `koordination` (7, Eigenrauschen Lauf 22),
`firmengruendung-ch` (3), `immobilienbewertung` (2).

Schreib-Kontrolle nach Rule `auto-verbesserungen` 260811, jeder Anker vor dem Schreiben auf
Trefferzahl 1 assertiert, kein globales Suchen-und-Ersetzen, alle Eingriffe zeilengenau am Anker,
Umfang gegen Sicherungskopien im Scratchpad gemessen (nicht per `git` ueber SMB):
`rules/sync-kanonische-quelle.md` **+11/−0** (39 → 50); `logbuch/fristen.md` **+11/−0**
(4546 → 4557) — **beide rein additiv, null Loeschungen**; Register **+3 Tabellenzeilen** (60 → 63)
und diese Fussnote. Laufbericht: `outputs/2026-08-30_synergie-lauf-23.md`.
