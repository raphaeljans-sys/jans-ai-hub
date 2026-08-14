# CHANGELOG — KB `bauprodukte`

## 2026-08-14/15 (Mac Mini Nachtschicht 23:30) — BKP 900 Einrichtung: 22 offene Positionen triagiert, erster Artikel Kevi-Bürodrehstuhl

Phase-1-Triage der letzten 22 unbearbeiteten Inventarpositionen (Haiku-Subagent,
Sichtung jeder Datei, Ergebnis selbst gegengeprüft): 6 als inhaltlich destillierbar
erkannt (CH24 Wishbone Chair, Matrah-Moll Naturmatratze, BIOFA Coloröl, Kevi-Serie),
14 als Skip mit Begründung geschlossen (Finanzbelege, Transaktionsdokumente,
generische Einzelhandelskataloge, projektspezifische Dossiers, defekte PDFs), 1 Datei
(170T95~O.PDF) blieb durch einen Nummerierungsfehler des Subagenten unbehandelt und
ist erneut vorzulegen. Zusätzlich 15 bereits in Phase 1 mit «-»-Bemerkung geführte
[t]-Positionen (Zahlungsbelege, Falsche-Sektion-Funde) formal auf `[-]` geschlossen —
das Urteil stand, war aber nicht im Status nachgezogen.

**Neuer Wiki-Artikel [[kevi-buerodrehstuhl]]** (BKP 900, erste Position dieser
Sektion): Kevi-Bürodrehstuhl (Design Jørgen Rasmussen), Furnier-Sitzschale auf
Fünffuss-Alu-Gestell. Quelldatei `kevi.pdf` selbst vollständig gelesen und
verifiziert (Material, Höhenverstellung 38-51 cm, Farben, Preis EUR 520,03 Stand
01/2011); die beiden Katalog-Nebenquellen (`Kevi-Katalog_0.pdf`,
`kevi_catalogue_produkt_pdf_e.pdf`) lieferten im Subagenten-Lauf widersprüchliche
Verdicts (SKIP vs. DESTILL für dieselbe Datei) — nur allgemeine, nicht
einzeln-belegbedürftige Aussagen daraus übernommen, im Inventar als unverifiziert
vermerkt.

**Drei DESTILL-Kandidaten für den nächsten Lauf** (aus Budgetgründen heute nicht mehr
verifiziert): CH24 Wishbone Chair (P1, Design-Klassiker), Matrah-Moll Naturmatratze
(P2, Material-Schichtung + Preise), BIOFA Coloröl (P2, Oberflächenbehandlung
Holz/Kork/Parkett).

Inventarstand danach: 20 destilliert, 17 triagiert (davon 4 neue P1/P2-Kandidaten),
1 offen (Nachtrag), 176 bewusst übersprungen.

 — ERCO Ratgeber Teil 3/3: Glossar (S.427-435) — Dokument vollständig abgeschlossen

Letzter Fehlbetrag der ERCO-Lichtplanungs-Destillation (BKP 233): Kapitel «Glossar»
(S.427-435, alphabetisches Fachbegriffs-Glossar der Lichtplanung, Edition 01.03.2010).
Neuer Wiki-Artikel `erco-lichtplanung-glossar.md`: 271 Begriffe A-Z vollständig
erfasst (Optik/Photometrie, Lampentypen, Lichtsteuerungsprotokolle, Wartungsfaktoren,
Nutzungstyp-Beleuchtungen). Damit ist `de_erco_guide.pdf` (435 Seiten) über alle drei
Teile vollständig erschlossen ([[erco-lichtplanung-grundlagen]] S.1-374,
[[erco-lichtplanung-simulation-berechnung]] S.375-426, dieser Teil S.427-435).
Werkzeug-Notiz: Glossar-Rohtext per `pdftotext -raw` (nicht `-layout`) extrahiert —
bei diesem mehrspaltigen Layout hält `-raw` die Lesereihenfolge sauber, `-layout`
vermischte die Spalten. Rohtext-Umformatierung an Haiku-Subagent delegiert
(Modell-Politik), Ergebnis gegen den Rohtext stichprobenartig geprüft (5 von 22
Buchstaben-Sektionen vollständig verglichen): drei Wortworttrennungs-Fehler durch
Dehyphenation gefunden und korrigiert («mesopisches» statt «mesopische Sehen»,
«Schattigheit» statt «Schattigkeit», «Innerverspiegelungen» statt
«Innenverspiegelungen»). Ein Zeichen im Originaltext (vermutlich «<» vor «380 nm»
beim Begriff Ultraviolettstrahlung) ging bei der PDF-Extraktion verloren — bewusst
NICHT ergänzt, sondern als Lücke im Artikel vermerkt (Belegpflicht). INDEX und die
`links:`-Frontmatter der beiden Vorgänger-Artikel nachgeführt.

## 2026-08-13c (Mac Mini Nachtschicht 23:30) — ERCO Ratgeber Teil 2/n: Simulation und Berechnung + Planungsbeispiele (S.375-426)

Fortsetzung der ERCO-Lichtplanungs-Destillation (BKP 233) ab dem in Teil 1 markierten
Kapitelbruch S.375. Neuer Artikel `erco-lichtplanung-simulation-berechnung.md`: Hauptkapitel
«Simulation und Berechnung» vollständig (Lichtsimulations-Ablauf 3D-Modell/Oberfläche/Licht/
Rendering, Hardware/Software DIALux/Autodesk/Radiance, sechs Berechnungsformeln inkl.
Anschlussleistung/UGR-Verfahren/Wartungsfaktor/Beleuchtungskosten-Payback, Planungsdaten-
Formate IES/Eulumdat/DXF/i-drop) sowie «Planungsbeispiele» (sechs Referenzprojekte: Chiesa
Dives in Misericordia, Brandenburger Tor, Ara Pacis, Schottisches Parlament, BMW Mini
Autohaus, Film Tune the light) + Virtual Prototyping. Budgetbedingt (Nachtschicht-Deckel)
Bild-Reads nach den ersten 45 Seiten auf `pdftotext -layout` umgestellt (deutlich günstiger,
gleiche Vollständigkeit für reinen Fliesstext). Offen: Kapitel «Glossar» S.427-435, Buchstaben
A-E bereits per Textextraktion gesichtet, noch nicht einzeln destilliert — Folgelauf würde das
435-seitige Dokument vollständig abschliessen. Inventar/INDEX nachgeführt.

## 2026-08-13b — Outputs-Report: Duschwanne im Nischeneinbau, Rohlichtmass und Wandanschluss (Schmidlin)

Fortsetzung des Duschwannen-Rücklaufs aus 2619 KISPI: Wandanschluss-System gemäss
Montageanleitungen (Schallschutzband/SIA 181, Wannenanker, Dichtband 50 mm,
Distanzband-Silikonfuge), Rohnischenmass seit Nachtrag offiziell belegt
(Zargen-Broschüre 2023: Wannenmass + 10 mm Einfach- bzw. + 35 mm Doppelbeplankung;
Zarge = reguläres Systemdetail, silikonfrei), Ausgleichslagen-Loesung bei zu grosser
Bestandsnische, Ablaufloch-Lagen und Garnituren-Kennwerte FLOW 30/50. Neu:
`outputs/2026-08-13_duschwanne-nischeneinbau-rohlichtmass.md` (verlinkt mit dem
Schuerzen-Report vom selben Tag).

## 2026-08-13 — Outputs-Report: Duschwanne mit nahtlos emaillierter Schürze (Renovation ohne Bodeneingriff)

Projektruecklauf aus 2619 KISPI (Umbau PPTS): Schmidlin-Option «nahtlos emaillierte
Schürze» (1 bis 3 Seiten, Hoehe nach Mass, Typen superflach/flach/tief/Eck) ersetzt bei
Aufsatzmontage Leichtbauwand und Plattenbelag; flachster belegter Wannenablauf Viega
Tempoplex extraflach (60 mm, Sperrwasser 30 mm, waagrecht DN 40/50, 0.55 l/s);
Aufbaulogik ca. 95 mm ohne Bodeneingriff. Neu:
`outputs/2026-08-13_duschwanne-schuerze-renovation-ohne-bodeneingriff.md`.
Werkzeug-Notiz: schmidlin.ch blockiert automatisierte Abrufe (403), URL-Struktur 2026
gewechselt; via Web-Archiv/Browser beziehen. Wiki-Artikel-Kandidat, sobald BKP 25
(Sanitaeranlagen) im Destillat-Korpus an der Reihe ist.

## 2026-08-13 — ERCO-Ratgeber Seite 317 auf Seite 374 fortgeschrieben: Hauptkapitel «Lichttechnik» (Groessen/Einheiten, Lampen, Leuchtentechnik) vollstaendig destilliert

Fortsetzungslauf. `de_erco_guide.pdf` (BKP 233, P1, 435 S.) von Seite 318 bis
Seite 374 gelesen (`pdftotext -layout`, Textqualitaet gut bis auf eine
gestoerte Reflexionsgrad-Tabelle S. 351, nicht wiedergegeben statt geraten;
sauberer Stopp am Original vor S. 375, klare Kapitelgrenze).
[[erco-lichtplanung-grundlagen]] erweitert:

- **Neues, drittes Unterkapitel «Groessen, Einheiten» (S. 318-327)
  vollstaendig:** Lichtstrom/Lichtausbeute (lm, lm/W, theoretisches Maximum
  683 lm/W), Lichtstaerke/Lichtstaerkeverteilungskurve (cd, rotations-/
  achsensymmetrisch, Ausstrahlungswinkel/Abblendwinkel), Beleuchtungsstaerke
  (lx, horizontal/vertikal/mittel/punktuell, photometrisches
  Entfernungsgesetz), Belichtung/Leuchtdichte (cd/m2), Lichtfarbe (CIE-System,
  Planckscher Kurvenzug, drei Farbtemperatur-Hauptgruppen MIT exakten
  Kelvin-Grenzen ww<4000K/nw 4000-5000K/tw>5000K, Tabelle aehnlichster
  Farbtemperaturen), Farbwiedergabe (Ra-Index, acht Koerperfarben als
  Pruefskala).
- **Unterkapitel «Lampen» (S. 328-347) vollstaendig:** Lampenbezeichnung
  (Buchstabencode-System), Lampenuebersichtstabelle (Kennwertbereiche
  LED/A/QT/QT,QPAR/TC/T/HIT/HST als Tabelle uebernommen, herstellerneutral),
  Temperaturstrahler (Allgebrauchs-/R-PAR-/Halogen-/Halogenreflektorlampen),
  Entladungslampen (Leuchtstoff-/kompakte Leuchtstoff-/Halogen-Metalldampf-/
  Natriumdampf-Hochdrucklampen), Elektrolumineszenzstrahler LED (Aufbau,
  weisses Licht via RGB-Mischung/Lumineszenzkonversion, Bauformen
  T-Type/SMD/COB/High Power).
- **Unterkapitel «Leuchtentechnik» (S. 348-374) vollstaendig:** Prinzipien
  der Lichtlenkung (Reflexion/Transmission/Absorption/Brechung/Interferenz),
  Reflektoren (Material/Oberflaeche/Reflexionsgrad-Klassen, Parabol-/
  Darklight-/Kugel-/Evolventen-/Elliptische Reflektoren,
  Doppelreflektorsysteme), Linsensysteme (Sammel-/Fresnel-/Skulpturen-/
  Streu-/Flood-/Softeclinse, abbildende Systeme mit Gobos), Filter
  (Absorptions-/Interferenzfilter, Farbfilter Magenta/Amber/Night Blue/
  Sky Blue, Korrekturfilter Skintone/Daylight, Schutzfilter UV-/IR-Filter
  mit Museums-Anwendungsbezug), Prismenraster, Lichttechnisches Zubehoer
  (Blenden/Waben-/Kreuzraster/Konturenschieber/Gobo), Farbmischung.
- **Zweiter Herstellerneutralitaets-Fall dokumentiert:** «Varychrome»
  (S. 373-374, ERCO-Markenname fuer dynamische RGB-Farbmischung) explizit
  als solcher gekennzeichnet, analog zum Praezedenzfall «Light System DALI»
  (S. 292) — eigener Warnabschnitt im Artikel ergaenzt, Herstellerneutralitaets-
  Absatz am Artikelanfang nachgefuehrt.
- Fuenf neue Praxisrelevanz-Punkte ergaenzt (Kelvin-Grenzwerte je
  Farbtemperaturgruppe, Ra-Messmethodik, Lampenuebersichtstabelle,
  Schutzfilter-Museumsbezug).
- Eine im Original vorhandene, aber OCR-technisch gestoerte
  Reflexionsgrad-Tabelle (S. 351) bewusst nicht uebernommen (Rule
  «nichts erfinden»), Fundstelle im Artikel vermerkt.
- Register nachgefuehrt: Frontmatter (Titel/Stand/gelesen/sources),
  `wiki/INDEX.md`. **Klare Kapitelgrenze:** Hauptkapitel «Lichttechnik»
  (S. 318-374) damit vollstaendig, naechstes offenes Hauptkapitel
  «Simulation und Berechnung» ab S. 375, danach «Glossar» bis S. 435.

## 2026-08-12 — ERCO-Ratgeber Seite 250 auf Seite 317 fortgeschrieben: Vegetation/Planungsbeispiele/Dark Sky komplettiert, Hauptkapitel «Lichtsteuerung» vollstaendig destilliert

Fortsetzungslauf. `de_erco_guide.pdf` (BKP 233, P1, 435 S.) von Seite 251 bis
Seite 317 gelesen (`pdftotext -layout`, Textqualitaet gut, sauberer Stopp am
Original vor S. 318 verifiziert). [[erco-lichtplanung-grundlagen]] erweitert:

- **Unterkapitel «Vegetation» abgeschlossen (S. 246-265):** Baumarten
  (Kugel/Schirm/Saeule/Kegel/Palme), Baumgruppe, Baumreihe, Baumallee,
  Baumraster — damit ist das gesamte Unterkapitel «Lichtanwendungen»
  (Aussenraum, S. 211-265) vollstaendig gelesen.
- **Neues Unterkapitel «Planungsbeispiele» (S. 266-274):** vier
  Fallbeispiele (Eingangsbereich klein/gross, Historische Fassade, Weg) mit
  durchgerechneten Planungsvarianten.
- **Neues Unterkapitel «Lichtplanung» / Dark Sky (S. 275-277):**
  Lichtverschmutzung, Dark-Sky-geeignete Leuchten, vier Kriterien fuer
  nachhaltige Aussenraumbeleuchtung — damit ist das Hauptkapitel
  «Aussenraumbeleuchtung» (S. 184-277) vollstaendig gelesen.
- **Neues, sechstes Hauptkapitel «Lichtsteuerung» (S. 278-317) vollstaendig
  destilliert:** Funktionen (Schalten/Dimmen/Lichtfarbe/Szene/Fading/
  Sequenz/Timer/Sensor), Steuerungssysteme (Protokolle 1V-10V/DMX/DALI/KNX/
  LON, herstellerneutral beschrieben mit einer gekennzeichneten Ausnahme
  Light System DALI), Geraete (Sensoren/Bedienelemente/Ausgabegeraete/
  Schnittstellen/Software), fuenf Planungsbeispiele (Museum/Buero/Showroom/
  Restaurant/Multifunktionaler Raum).
- Fuenf neue Praxisrelevanz-Punkte ergaenzt (Baum-Streiflichtwinkel,
  Dark-Sky-Checkliste, Protokolluebersicht fuers LV, Sensor-/Regelungs-
  Begriffsapparat).
- Register nachgefuehrt: Frontmatter (Titel/Stand/gelesen/sources),
  `skills/wissens-destillat/training/bauprodukte-inventar.md`. Naechstes
  offenes Kapitel: «Lichttechnik» ab S. 318 (Herstellerneutralitaet beachten).

## 2026-08-11 (Mac Mini Nachtschicht 02:30-Fortsetzung) — ERCO-Ratgeber Seite 210 auf Seite 240 fortgeschrieben, Aussenraum-Lichtanwendungen Wand/Decke/Boden/Objekt und vier Fassadentypen

Fortsetzung des Vorlaufs vom 10.08. 23:30 (Prioritaeten 1-3 leer: keine Sync-/
Remote-Tasks, Synobsis 853/853 gesaettigt, Fristen-Radar bereits im 13:30-Slot
erledigt; Vorlauf 02:30 endete ohne Ergebnis, wahrscheinlich Kontingentlimit).
`de_erco_guide.pdf` (BKP 233, P1, 435 S.) von Seite 211 bis Seite 240 gelesen
(`pdftotext -layout`, Textqualitaet gut, sauberer Stopp am Original vor S. 241
verifiziert). [[erco-lichtplanung-grundlagen]] erweitert:

- **Unterkapitel «Lichtanwendungen» (Aussenraum) begonnen (S. 211-240):**
  Wand (3m/5m/mit Struktur, S. 211-218), Decke (plan/Tragstruktur, S. 218-223),
  Boden (S. 223-225) und Objekt (freistehend/an der Wand, S. 225-230)
  vollstaendig gelesen — durchgaengig im Schema Beobachtung/Folgerung/
  Anordnung/Anwendung/Projekte.
- **Fassade-Unterkapitel begonnen:** vier von sechs Typen vollstaendig
  (massiv, vertikale Gliederung, horizontale Gliederung, Vorsprung-
  Ruecksprung, S. 230-239), Lochfassade angelesen bis S. 240 (Beobachtung
  vollstaendig, Rest ab S. 241 offen); Fassade transparent und Vegetation
  laut Uebersichtsgrafik S. 230 noch offen.
- **Zwei Lichtimmissions-relevante Fundstellen ergaenzt:** «Abstrahlung
  ausserhalb der Fassadenflaeche vermeiden» (S. 230/233) und der
  Blendungshinweis bei der Lochfassade (S. 241) — beide als
  herstellerneutrale Planungsregeln in «Praxisrelevanz» aufgenommen, ohne
  eigene normative Grenzwert-Fundstelle (bleibt bei `wissen/normen`/
  `wissen/baurecht`).
- Register nachgefuehrt: Frontmatter (Titel/Stand/gelesen/sources),
  `wiki/INDEX.md`, `skills/wissens-destillat/training/bauprodukte-inventar.md`,
  `training/PROGRAMM.md`.

Rest weiterhin offen (Lochfassade-Rest, Fassade transparent, Vegetation,
Lichtsteuerung, Lichttechnik, Simulation und Berechnung, Glossar) fuer
Folgelaeufe.

## 2026-08-10 (Mac Mini Nachtschicht 23:30) — ERCO-Ratgeber Seite 175 auf Seite 210 fortgeschrieben, Kapitel «Innenraumbeleuchtung» abgeschlossen, «Aussenraumbeleuchtung» begonnen

Fortsetzung des Vorlaufs vom 07.08. 05:35. `de_erco_guide.pdf` (BKP 233, P1, 435 S.)
von Seite 176 bis Seite 210 gelesen (`pdftotext -layout`, Textqualitaet gut).
[[erco-lichtplanung-grundlagen]] erweitert:

- **Kapitel «Innenraumbeleuchtung» (S. 110-183) fertiggestellt:** Rest des
  Unterkapitels «Lichtanwendungen» — Objekt im Raum (S. 176-178, Anordnung
  30°-45° zur Senkrechten), Objekt an der Wand (S. 178-180, Konturenstrahler,
  Reflexionsschutz bei Ölgemälden/verglasten Grafiken), Orientierungsbeleuchtung
  (S. 181-182) und Hinweisbeleuchtung (S. 183) — letztere beide als inhaltliche
  Wiederholung bereits gelesener Abschnitte (S. 128-129/151) vermerkt statt
  vollständig neu ausformuliert.
- **Neues Hauptkapitel «Aussenraumbeleuchtung» (S. 184-210) begonnen**, beide
  ersten Unterkapitel vollständig gelesen: «Arten des Beleuchtens» (S. 184-196:
  Allgemein direkt gerichtet/diffus, Fluten symmetrisch/asymmetrisch,
  Akzentuieren, Orientierung — spiegelt strukturell das Innenraum-Pendant
  S. 110-129) und «Leuchtengruppen» (S. 197-210: Scheinwerfer, Fluter,
  Wandfluter, Freiflächen-/Wegeleuchten, Downlights, Decken-/Wandleuchten,
  Bodeneinbauleuchten, Orientierungsleuchten — spiegelt S. 130-151). Sauberer
  Stopp vor Kapitel «Lichtanwendungen» Aussenraum (beginnt S. 211, am Original
  verifiziert per `pdftotext -f 211`).
- **Downlight-Abstandsregel (a≤1,5h, optimal a=h)** jetzt auch für den
  Aussenraum belegt (S. 203-204) — sechster unabhängiger Fund im Dokument,
  im Praxisrelevanz-Abschnitt als tragfähige Faustregel für Aussenraum-
  Vorprüfungen vermerkt.
- **Erster expliziter Lichtverschmutzungs-Hinweis** im Dokument gefunden
  (S. 201, Freiflächen-/Wegeleuchten: «Abblendwinkel... begrenzt Blendung und
  Lichtverschmutzung») — als Praxisrelevanz-Punkt mit Verweis auf fehlende
  normative Grenzwert-Fundstelle in diesem Ratgeber vermerkt.
- **Struktur-Beobachtung für künftige Läufe:** die Orientierungs-/
  Fluchtweg-Kernaussage wiederholt sich wortgleich an drei Stellen des
  Dokuments (S. 128-129, S. 181-182, S. 195-196) über verschiedene
  Gliederungsachsen (Lichtverteilung/Bezugsfläche/Aussenraum) — als
  Offener-Punkt-Hinweis festgehalten, damit künftige Destillate bei
  Wiederholungen knapp verweisen statt neu auszuformulieren.
- Register nachgeführt: `wiki/INDEX.md` (Titel/Statuszeile), `skills/wissens-
  destillat/training/bauprodukte-inventar.md`, `wissen/bauprodukte/training/
  PROGRAMM.md`. Frontmatter (`gelesen`, `sources`, `last_updated`, `title`)
  aktualisiert.

Kein Fan-out, kein Subagent (5-USD-Nachtschicht-Zyklus, Prioritaet 4 — aktiver
Destillat-Korpus, aktuellster inhaltlicher Stand vor `energie`/`grobkosten`).

## 2026-08-07 (Wissens-Chef Run 28) — Norm-Verweis bei der Aufzugs-Elektroschnittstelle nachgetragen, drei Seitenzuschreibungen im ERCO-Artikel am Original richtiggestellt

Ausführungslauf des Wissens-Chefs, Befunde adversarial vorverifiziert. Berührt nur
`wiki/bkp-261-aufzuege.md`, `wiki/erco-lichtplanung-grundlagen.md` und diese Datei;
`raw/` unangetastet. Kein Sachwert geändert, keine Aussage zurückgenommen.

- **[[bkp-261-aufzuege]], Schnittstelle «Elektro (BKP 230er)»:** Verweis auf die
  führende KB `normen` nachgetragen (`wissen/normen/destillate/sia-592-056.md`,
  SIA 2056:2019 Ziff. 6.23 — Energie- und Leistungsbedarf von Aufzügen). Mit
  Vorbehalt versehen, dass das Merkblatt Werte für die **Vorprojekt-Abschätzung**
  (Ziff. 0.1.1) liefert und die projektspezifische Anschlussleistung Angabe des
  Lieferanten bleibt; kein Normwortlaut und keine Zahl übernommen
  (Rule `normen-referenz`). Backtick-Pfad statt Wikilink über die KB-Grenze.
- **[[erco-lichtplanung-grundlagen]], 20°-Mindestwinkel Wandfluter:** Zuschreibung
  «S. 136» auf **S. 137** korrigiert (am Original `de_erco_guide.pdf` nachgelesen;
  S. 136 enthält nur Produktbeschreibungen ohne Winkelangabe). Zweiter Fundort im
  Kapitel «Lichtanwendungen» von «S. 85-87/136» auf **S. 87/137/142** präzisiert,
  weil die vier dort aufgezählten Werte auf drei Seiten verteilt sind (1/3-Regel,
  20°-Linie und Leuchtenabstand = Wandabstand auf S. 87/137; Mindestzahl drei
  Leuchten und 45°-Eckposition auf S. 87/142). Der 20°-Wert selbst ist dreifach
  belegt und bleibt unverändert.
- **[[erco-lichtplanung-grundlagen]], Deckenabstand 0,8 m:** die dritte der fünf
  Fundstellen von «S. 138 Lichtstrukturen» auf **S. 139** korrigiert (S. 139
  «Der Abstand zur Decke sollte bei Indirektbeleuchtung mindestens 0,8 m
  betragen»; S. 138 trägt nur «Lichtstrukturen | Licht/Leuchten»). Derselbe Fehler
  im Leuchtengruppen-Abschnitt («nach S. 88/117/138») mitkorrigiert, ebenso ein von
  Run 27 dort übersehenes «nach S. 87 und S. 117» → «S. 88 und S. 117», konsistent
  zur bereits im Artikel stehenden Run-27-Seitenkorrektur. Die Kapitelspanne
  «Lichtstrukturen (S. 138-139)» bleibt unverändert richtig, die übrigen vier
  Fundstellen (S. 88/117/146/170) sind gegengeprüft. Sachwert 0,8 m unverändert.
- Alle Korrekturen als datierter Vermerk im Text geführt (Form der Run-27-
  Seitenkorrekturen), nicht als stiller Zahlentausch — die Prüfspur bleibt erhalten.
- **Nicht ausgeführt (ausserhalb der Dateimenge dieses Ausführenden):** die im
  Auftrag als optional bezeichnete Ergänzung der Führungsmatrix
  `wissen/koordination/QUERBEZUEGE.md` (Zeile 42, dritte Spalte um «bauprodukte
  (BKP 261, verweist nur)» ergänzen).

Hinweis zum Eintrag der Nachtschicht unten: dessen Aufzählung «S. 88, 117, 138,
146, 170» gibt den damaligen Stand wieder und wird als Historie nicht rückwirkend
geändert; massgeblich ist die hier korrigierte Seite 139.

## 2026-08-07 (Mac Mini Nachtschicht 05:35) — ERCO-Ratgeber Seite 145 auf Seite 175 fortgeschrieben, Leuchtengruppen abgeschlossen, Lichtanwendungen begonnen

Fortsetzung des Vorlaufs vom 06.08. 23:31. `de_erco_guide.pdf` (BKP 233, P1, 435 S.)
von Seite 145 bis Seite 175 gelesen (`pdftotext -layout`, Textqualitaet gut).
[[erco-lichtplanung-grundlagen]] erweitert:

- **Unterkapitel «Leuchtengruppen» (S. 130-151) fertiggestellt:** Wandleuchten-Rest
  (Deckenfluter/Bodenfluter), Perimeterleuchten, Bodeneinbauleuchten (Uplights/
  Richtstrahler/Uplight diffus), Orientierungsleuchten, Not- und Hinweisleuchten
  (drei Gruppen Hinweis-/Sicherheits-/Ersatzbeleuchtung, Fluchtweg-Bezug).
- **Neues Hauptkapitel «Lichtanwendungen» (S. 152-175) begonnen**, gegliedert nach
  Bezugsflaeche statt Leuchtenart: Nutzflaeche (Arbeitsplatz/Flaeche klein/Flaeche
  gross), Wand (3m/5m/mit Struktur, inkl. Kompensationsregel bei hohen Raeumen),
  Decke (plan/Tragstruktur), Boden — alle vier Unterkapitel bis zur Kapitelgrenze
  vollstaendig gelesen. Sauberer Stopp vor «Objekt» (Kapitelbeginn S. 176, am
  Original verifiziert per `pdftotext -f 176`).
- Deckenabstand-0,8-m-Regel jetzt an **fuenf** unabhaengigen Stellen belegt (S. 88,
  117, 138, 146, 170) — im Praxisrelevanz-Abschnitt als stabiler Wert vermerkt.
  Zweiter Brandschutz-Anschlusspunkt (Not-/Hinweisleuchten, S. 150-151) notiert,
  Verweis auf `wissen/normen`/Skill `brandschutz`, keine Norm selbst zitiert (die
  Quelle nennt nur "regionale Richtlinien" ohne Fundstelle).
- Register nachgefuehrt: `wiki/INDEX.md`, `skills/wissens-destillat/training/
  bauprodukte-inventar.md`, `wissen/bauprodukte/training/PROGRAMM.md`.
  Frontmatter (`gelesen`, `sources`, `last_updated`) aktualisiert.

Kein Fan-out, kein Subagent (5-USD-Nachtschicht-Zyklus, Prioritaet 4 — aktiver
Destillat-Korpus, aktuellster inhaltlicher Stand vor `energie`/`grobkosten`).

## 2026-08-06 (Cross-KB-Lauf Run 27, 23:46) — ERFUNDENER BELEG im ERCO-Artikel gestrichen, zwei Verweise auf eine archivierte Norm nachgeführt, Lesefortschritt und zwei Sperrklauseln im Register nachgezogen

Ausführungslauf des Wissens-Chefs, Befunde adversarial vorverifiziert. Nur die KB
`bauprodukte` berührt (`wiki/erco-lichtplanung-grundlagen.md`, `wiki/QUESTIONS.md`,
diese Datei); `raw/` unangetastet.

- **ERFUNDENER BELEG gestrichen** (nicht bloss eine Quellenlücke, sondern dieselbe
  Fehlerklasse wie der SIA-2023-Titel in Run 26): [[erco-lichtplanung-grundlagen]]
  schrieb im Abschnitt «Praxisrelevanz für JANS» «(Bürolicht typischerweise
  UGR ≤ 19)» und schrieb die Zahl der Seite 82 des ERCO-Ratgebers zu. Die
  Primärquelle wurde selbst geöffnet (`de_erco_guide.pdf` S. 82, Edition
  26.06.2006): die Seite nennt nur die Spanne «in der Regel zwischen 10 und 30»,
  den Mindestabschirmwinkel 30° und die Standard-Abschirmwinkel 30°/40° — **weder
  die Zahl 19 noch das Wort Büro**. Klammer ersatzlos gestrichen, der Rest des
  Satzes (S. 82 trägt UGR-Verfahren und Abschirmwinkel wirklich) bleibt. An ihre
  Stelle tritt der Zeiger: UGR-Grenzwerte je Raumnutzung führt `normen`
  (EN 12464-1, dort kein Destillat, SN EN 12464-1:2021 als Bring-Schuld offen,
  energie-seitig E-122-6); einziger Zahlenbestand im Hub ist der datierte
  AHB-Auszug vom 19.01.2007. **Bewusst nicht getan:** den Wert 19 ersatzweise mit
  dem AHB-Auszug belegen — dessen Tabelle hat keine Bürozeile, das wäre eine
  erfundene Herleitung gewesen.
- **Stichprobe auf denselben Fehlermodus** über die am 05./06.08. ergänzten
  Praxisrelevanz-Punkte, je am Original nachgelesen: Museumswinkel 30° (S. 88),
  Wandabstand = halber Leuchtenabstand (S. 86) und Drittel-Raumhöhe für Wandfluter
  (S. 87) **belegt**. Der Deckenabstand 0,8 m ist **belegt, stand aber auf S. 88
  statt S. 87** — Seitenkorrektur an beiden Fundstellen additiv vermerkt, zweiter
  Fund S. 117 bestätigt. Offen gelassen und nicht geändert: die Museumswinkel-
  Begründung «maximale Plastizität» steht in der Quelle als «maximale vertikale
  Beleuchtung».
- **Zwei Verweise auf SIA 380/4 nachgeführt — mit getrennten Sachbezügen**, nicht
  mechanisch mit demselben Code ersetzt (Lehre aus Run 25). Die Norm ist seit
  31.07.2019 archiviert. (a) Energieeffizienz-Argument im Praxisteil: heute
  **SIA 387/4 (Beleuchtung)**, im Vorprojekt vereinfacht über **SIA 2056:2019
  (SNR 592056)**, im Kanton Zürich vollzogen über EVEN mit **Formular EN-111**;
  belegt an `normen/destillate/sia-592-056.md` (Vorwort: Beleuchtung nach 387/4
  ausgelagert, `established`) und `planungsgrundlagen/…-projektstandards.md` §14.2.
  (b) Normwert-Hinweis bei den Beleuchtungsstärken/Leuchtdichten: dort ist weder
  2056 noch 387/4 richtig (beide regeln Energie- und Leistungsbedarf, nicht
  Bemessungswerte) — Beispiel auf **EN 12464-1** getauscht, operativer Kern
  («für verbindliche Normwerte ist `wissen/normen/` massgebend») wortgleich
  belassen. Pfade vor dem Schreiben selbst geprüft (`destillate/`, nicht `wiki/`).
  Der Archivierungsvermerk zu SIA 380/4 gehört nach `normen` und ist hier **nicht**
  gesetzt worden.
- **Lesefortschritt im Register nachgezogen** (dieselbe Registerdrift wie am
  Vortag, einen Lauf später erneut): QUESTIONS Punkt 4 führte «95/435» und
  «Anschlusspunkt S. 96». Am Frontmatter `gelesen:` gemessen steht der Artikel auf
  **145/435**; Kette ergänzt um «06.08.2026: 95 → 120 → 145», neuer Anschlusspunkt
  **S. 146** (Rest «Leuchtengruppen»: Wandleuchten-Rest, Perimeterleuchten,
  Bodeneinbauleuchten, Orientierungsleuchten, Hinweisleuchten), Sachtext um
  Planungspraxis-Rest, «Licht visualisieren» und «Arten des Beleuchtens» ergänzt.
- **Zwei Sperrklauseln durch ihre eigene Bedingung aufgelöst**, je als datierter
  Nachtrag (Blöcke vom 04./05.08. bleiben als Stand stehen), Destillat selbst
  gelesen: `energie/destillate/ecobkp-2026-ausbau.md` führt **ecoBKP 281
  Bodenbeläge (S. 100-107)** und **ecoBKP 271 Gipserarbeiten (S. 87-89)**.
  Punkt 8: Nachtrag vom 05.08. überholt, **die beiden Teilfragen bleiben offen**
  (keine Gleitfestigkeitsklasse für geschliffenen Terrazzo/Kunststein; «Reinigung
  nach Belagsart» behandelt Holzparkett und Naturstein, nicht Terrazzo/Kunststein).
  Punkt 9: Spiegelstrich «BKP 271 — kein 2026er-Destillat» überholt, aber
  **(a) die Blockade bleibt** (produktseitiges Material fehlt weiter) und **(b) die
  Sperre gegen erneutes Durchsuchen von `/Volumes/daten/03 Bauprodukte_BKP` bleibt**
  — Ordner 214 und 271 heute nachgemessen, weiterhin 0 Dateien. Zu BKP 225.4 trägt
  auch die Ausgabe 2026 nichts bei. Status beider Destillate `emerging`,
  Teillesung; Führung unverändert (`energie` beschafft, `bauprodukte` zieht).
- **Register nachgeführt:** `wiki/QUESTIONS.md` (Punkte 4, 8, 9, neuer Punkt 14) —
  `wiki/INDEX.md` nicht berührt (kein neuer/umbenannter Artikel), `training/
  PROGRAMM.md` nicht berührt (kein Lesefortschritt erzeugt, dessen Abschluss-
  Checkliste nennt QUESTIONS bereits), `skills/wissens-destillat/training/
  bauprodukte-inventar.md` nicht berührt (keine neue Quelle ingestiert). **Ab
  sofort zählt diese Zeile alle vier Register auf** (Inventar, PROGRAMM, INDEX,
  QUESTIONS) — je mit Vermerk «nachgeführt» oder «nicht berührt, weil …», damit ein
  vergessenes Register im Lauf-Report sichtbar wird statt unsichtbar zu bleiben.
  Genau das war am Eintrag vom 06.08. (23:31) das Problem: er listet Inventar,
  PROGRAMM und INDEX und verschweigt dadurch, dass QUESTIONS fehlte.
- Kein Versand, keine Publikation, keine Buchung, kein git. `raw/` unverändert.

## 2026-08-06 (Mac Mini Nachtschicht 23:31) — ERCO-Ratgeber auf S. 145 fortgeschrieben, «Arten des Beleuchtens» abgeschlossen, «Leuchtengruppen» begonnen

Budgetdisziplinierter Einzellauf (kein Fan-out, ein `pdftotext -layout` Read S. 121-145).
Prioritaeten 1-3 leer/bereits abgedeckt (keine Sync-/Remote-Tasks ausser dem seit 31.07.
zurueckgehaltenen Freigabe-Task Cockpit-Server; Synobsis Stufe 2 bei 853/853 gesaettigt
und deaktiviert; Fristen-Register laufend durch Hub-Chef 08:39 und Radar 06:55 gepflegt,
alle Eintraege in `fristen.md` bereits mit Status/Entwurf versorgt, kein unbearbeitetes
Ueberfaelliges gefunden). Trainings-Prioritaet 4: `bauprodukte` war unter den drei freien
Ziel-KBs am laengsten unberuehrt (letzter inhaltlicher Stand heute 02:39, gegenueber
`grobkosten` 05:37 und `energie` 13:30 desselben Tages).

- **[[erco-lichtplanung-grundlagen]]** (BKP 233 Leuchten und Lampen) von Seite 120 auf
  Seite 145 fortgeschrieben. Unterkapitel «Arten des Beleuchtens» (Innenraumbeleuchtung)
  vollstaendig abgeschlossen: Fluten symmetrisch/asymmetrisch (S. 120-124), Akzentuieren
  (S. 125-126), Projektion (S. 127), Orientierung (S. 128-129, mit Fluchtweg-/
  Brandschutzbezug — Anschlusspunkt zu [[normen]]/Skill `brandschutz` vermerkt). Neues
  Unterkapitel «Leuchtengruppen» begonnen (S. 130-145): Stromschiene, Strahler
  (30°-Anordnung deckt sich mit dem bereits notierten Museumswinkel), Fluter, Wandfluter
  (Anordnungsregel mit 20°-Mindestwinkel praezisiert die bisherige Faustregel),
  Lichtstrukturen (dritter unabhaengiger Beleg des 0,8-m-Deckenabstands), Downlights
  (inkl. Mindestzahl-drei-Leuchten-Regel fuer Wandfluter), Arbeitsplatzleuchten — alle
  sechs vollstaendig; Wandleuchten begonnen (Deckenfluter/Bodenfluter angerissen).
  Frontmatter (`gelesen`, `sources`, Titel) nachgefuehrt; vier neue Praxisrelevanz-Punkte
  ergaenzt (Brandschutzbezug Orientierungsbeleuchtung, Drei-Leuchten-Mindestzahl als
  Kostenargument, 20°-Mindestwinkel als Vorpruef-Faustregel). Weiterhin herstellerneutral.
- Editionsdaten-Nachtrag: S. 110-129 durchgehend 25.07.2006, S. 130-145 durchgehend
  05.09.2006 — der Wechsel faellt wieder mit einer Kapitelgrenze zusammen (Arten des
  Beleuchtens → Leuchtengruppen), bestaetigt das bereits am 06.08. 02:39 beobachtete Muster.
- Register nachgefuehrt: `skills/wissens-destillat/training/bauprodukte-inventar.md`
  (Zeile `de_erco_guide.pdf` auf S.1-145), `training/PROGRAMM.md` (Stand-Absatz),
  `wiki/INDEX.md` (Eintrag BKP 233 auf S.1-145 mit erweiterter Themenliste).
- Kein Versand/Publikation/Buchung, kein Fan-out. Zyklus schlank beendet (~3.7 von 5 USD).

## 2026-08-06 (Mac Mini Nachtschicht) — ERCO-Ratgeber auf S. 120 fortgeschrieben, Planungspraxis + Licht visualisieren abgeschlossen, Innenraumbeleuchtung begonnen

Budgetdisziplinierter Einzellauf (kein Fan-out, ein `pdftotext -layout` Read S. 96-120).
`grobkosten` (Stufe-1-Exploration dreifach bestaetigt gesaettigt, letzter Bring-Schuld-Check
04.08. ohne neuen Ausloeser) und `energie`/`bauprodukte` selbst bereits gestern Nacht bearbeitet
gegeneinander abgewogen; `bauprodukte` bleibt als einziges P1-Ziel der Korpus-Queue der klare
naechste Kandidat.

- **[[erco-lichtplanung-grundlagen]]** (BKP 233 Leuchten und Lampen) von Seite 95 auf
  Seite 120 fortgeschrieben. Kapitel «Planungspraxis» vollstaendig abgeschlossen: Montage
  Wand (Auf-/Einbau, Beton-/Hohlwand, Wandausleger/Kragarm) und Boden (Einbau-/
  Aufbauleuchten, Poller-/Mastleuchten), dazu Pendelleuchten und Betondecken-Einbau
  (Statik-/Armierungs-Abstimmung); Wartung (Verminderungsfaktor, Wartungsplan). Kapitel
  «Licht visualisieren» vollstaendig: Zeichnung (Skizze/Storyboard/Moodboard/Technische
  Zeichnung/Diagramm), Simulation (Qualitativ/Quantitativ/Animation), Modell (Modellbau/
  Mock-up/Tageslichtsimulation). Kapitel «Innenraumbeleuchtung» begonnen: Arten des
  Beleuchtens Allgemein vollstaendig (direkt gerichtet/direkt diffus/indirekt/kombiniert,
  je mit Beobachtung/Folgerung/Anwendung/Referenzprojekten aus dem Dokument), Fluten
  begonnen (symmetrisch/asymmetrisch). Frontmatter (`gelesen`, `sources`, Titel)
  nachgefuehrt; sechs neue Praxisrelevanz-Punkte ergaenzt (Statik-Koordination
  Betondecken, zweiter Beleg fuer den 0,8-m-Deckenabstand, Vokabular der vier
  Beleuchtungsarten fuer die Konzeptphase, abgestufte Visualisierungs-Palette).
  Weiterhin herstellerneutral.
- Beobachtung: der Editionsdaten-Wechsel (S. 74-98 durchgehend 26.06.2006, S. 99-109
  wieder 19.07.2007, S. 110-120 wieder 25.07.2006) faellt diesmal mit Kapitelgrenzen
  zusammen, anders als der reine Seitenwechsel im vorherigen Abschnitt — im naechsten
  Lauf weiter mitfuehren, kein Handlungsbedarf.
- Register nachgefuehrt: `skills/wissens-destillat/training/bauprodukte-inventar.md`
  (Zeile `de_erco_guide.pdf` auf S.1-120), `training/PROGRAMM.md` (Stand-Absatz),
  `wiki/INDEX.md` (Eintrag BKP 233 auf S.1-120 mit erweiterter Themenliste).

## 2026-08-05 (Wissens-Chef Run 26, Cross-KB) — ecoBKP-Zeiger positionsweise auf 2026 nachgezogen, ERCO gegen EN 12464-1 abgegrenzt

Run 25 hatte am 04.08. Zeiger auf den eco-bau-Stand **2008** gesetzt. Einen Tag spaeter lag die
Ausgabe **ecoBKP 2026** in der KB `energie` destilliert. Alle Nachtraege sind additiv, die
04.08.-Bloecke bleiben wortgleich stehen (Stichtags-Disziplin).

- **`wiki/QUESTIONS.md` Punkt 3 (BKP 224 Dachbegruenung):** Zeiger auf
  `energie/destillate/ecobkp-2026-gebaeudehuelle.md` gesetzt — der staerkste Treffer des Felds,
  vom Melder selbst uebersehen. Mit `emerging`-/Teillesungs-Vorbehalt; der hier verlangte
  **Marktueberblick bleibt offen**, das Destillat ersetzt ihn nicht.
- **Punkt 8 (BKP 281 Terrazzo/Bodenbelaege):** ausdruecklich **negativer** Nachtrag. ecoBKP 281
  ist nicht destilliert; ein Zeiger auf das Gebaeudehuellen-Destillat (deckt 221-228) waere ein
  Sachbezugsfehler. Damit kein kuenftiger Lauf dort erneut sucht.
- **Punkt 9 (Holzbau/Bekleidungen) aufgeteilt statt pauschal gehoben:** BKP 214/215 →
  `ecobkp-2026-tragwerk-und-rohbau`; BKP 225 inkl. **Emicode EC1/EC1plus** als Nachfolger des seit
  30.06.2022 archivierten SIA-493-Deklarationsrasters → `ecobkp-2026-gebaeudehuelle`;
  **BKP 271 Trockenbau bleibt beim Stand 2008** (ecoBKP 271 nicht destilliert). Der Satz zu
  **BKP 225.4** («traegt der eco-Bestand nichts bei») bleibt wortgleich — am Original nachgeprueft
  gilt er fuer 2026 unveraendert. Der ecobau.ch-Schlusssatz bleibt ebenfalls stehen.
- **Punkt 4 (ERCO):** Lesefortschritt mit dem Artikel gleichgezogen und dabei **am Frontmatter
  gemessen statt aus der Anweisung uebernommen** — der Artikel steht bei **95/435** Seiten
  (naechster Anschlusspunkt S. 96, Rest «Montage»), die Vorlage nannte noch 73. Mit dem
  Vorlagenwert haette der naechste Lauf S. 74-95 doppelt gelesen.
  Dazu ein **Abgrenzungsblock**: das Kapitel «Lichttechnik» ist Quelle fuer Lampen-/
  Leuchtenkennwerte (lm/W, Ra, Farbtemperatur, BKP 233), **nicht** fuer Beleuchtungsstaerken nach
  EN 12464-1 — dafuer fuehrt `normen`, und ein Herstellerratgeber waere ohnehin keine zulaessige
  Quelle. Zeiger auf den einzigen Zahlenbestand im Hub (datierter AHB-Auszug 19.01.2007).

Bericht: `wissen/koordination/outputs/2026-08-05_wissens-chef-run26.md`.

## 2026-08-05 (Mac Mini Nachtschicht, 23:30) — ERCO-Ratgeber auf S. 95 fortgeschrieben, Kapitel «Leuchtenauswahl» + «Leuchtenanordnung» abgeschlossen

Eine Einheit, budgetdisziplinierter Lauf (kein Fan-out, ein Read mit 22 Seiten via
`pdftotext -layout`). Vor dem Lauf `grobkosten` (mehrfach bestaetigt gesaettigt, letzter
Bring-Schuld-Check 04.08. ohne neuen Ausloeser) und `energie` (bereits zwei eigene Laeufe
heute, Run 124 + 05:38-Nachtschicht, ecoBKP bis S. 86) geprueft und aus Kollisions-/
Sättigungsgruenden zurueckgestellt — `bauprodukte` bleibt mit dem einzigen P1-Titel
(`de_erco_guide.pdf`) der klare naechste Kandidat, letzte eigene Einheit 02:31 heute.

- **[[erco-lichtplanung-grundlagen]]** (BKP 233 Leuchten und Lampen) von Seite 73 auf
  Seite 95 fortgeschrieben (`de_erco_guide.pdf`, S. 74-95 gelesen). Kapitel
  «Leuchtenauswahl» vollstaendig abgeschlossen: Lichtverteilung (direkt/indirekt,
  breit/eng, symmetrisch/asymmetrisch, horizontal/vertikal), Sonderanfertigung vs.
  Serienleuchte, Lichtfarbe, Montagearten (integriert/additiv, fest/flexibel),
  Blendung/UGR, Beleuchtungsstaerke (Saettigung ab ~1'000 Lux), Sicherheitsanforderung
  (IP-Schutzart, Schutzklasse). Kapitel «Leuchtenanordnung» vollstaendig: Boden/Wand/
  Decke/Objekt-Montageabstaende (Museumswinkel 30°), Punktraster vs. lineare Elemente.
  Kapitel «Montage» begonnen (Decke: abgehaengte Decken, Paneeldecken, Deckenkanal).
  Frontmatter (`gelesen`, `sources`, Titel) nachgefuehrt; vier neue
  Praxisrelevanz-Punkte ergaenzt (UGR/IP als LV-taugliche Kennwerte,
  Montageabstands-Faustregeln als Vorprojekt-Check, Museumswinkel). Weiterhin
  herstellerneutral — keine ERCO-Produktangaben in den gelesenen Abschnitten.
- Editionsdaten-Beobachtung bestaetigt sich weiter: S. 74-95 durchgehend Edition
  26.06.2006 — nach dem Wechsel auf S. 69-73 (2010/2006 im Wechsel) wieder ein
  laengerer einheitlicher Block.
- Register nachgefuehrt: `skills/wissens-destillat/training/bauprodukte-inventar.md`
  (Zeile `de_erco_guide.pdf` auf S.1-95), `training/PROGRAMM.md` (Stand-Absatz),
  `wiki/INDEX.md` (Eintrag BKP 233 auf S.1-95 mit erweiterter Themenliste).
- **Bewusst nicht ausgefuehrt:** Web-Pruefung der aktuellen erco.com/guide-Fassung
  (nicht Teil des Laufs, weiterhin in den Offenen Punkten vermerkt).
- Kein Git ueber SMB, kein Fan-out. Zyklus-Budget siehe Logbuch-Journalzeile.

## 2026-08-05 (Mac Mini Nachtschicht, 02:31) — ERCO-Ratgeber auf S. 73 fortgeschrieben, Kapitel «Gestalten mit Licht» abgeschlossen

Eine Einheit, budgetdisziplinierter Lauf (kein Fan-out, ein Read mit 20 Seiten). Vor dem
Lauf `wiki/`-Mtimes und `training/PROGRAMM.md` gegen die aktive Trainings-KB-Auswahl
(bauprodukte/energie/grobkosten/projekt-lessons, alle vier heute vom Wissens-Chef Run 25
per Cross-KB-Zeiger angefasst) geprüft: `energie` hatte bereits einen substanziellen
eigenen Trainingslauf heute (Run 123, 9 Destillate), `grobkosten` ist mehrfach bestätigt
gesättigt, `projekt-lessons` wurde in den beiden vorherigen Nachtschicht-Slots (13:30 und
23:30 am 03./04.08.) bereits bearbeitet — `bauprodukte` bleibt mit 55 offenen Positionen
und dem einzigen P1-Titel im Inventar (`de_erco_guide.pdf`) der klare nächste Kandidat.

- **[[erco-lichtplanung-grundlagen]]** (BKP 233 Leuchten und Lampen) von Seite 53 auf
  Seite 73 fortgeschrieben (`de_erco_guide.pdf`, S. 54-73 gelesen). Kapitel «Mit
  Lichtfarben gestalten» vollständig abgeschlossen (Farbwiedergabe, Farbwirkung, die
  sieben Itten-Farbkontraste, Raumfarben, Farbig akzentuieren). Neues, drittes
  Hauptkapitel «Planungspraxis» begonnen: Planungsprozess, Projektanalyse
  (Raumnutzung/psychologische Anforderungen/Architektur und Atmosphäre), Lichtkonzept/
  Entwurf/Montage/Wartung im Überblick, Lampenauswahl (sechs Kriterien: Modellierung,
  Farbwiedergabe, Lichtfarbe, Lichtstrom, Wirtschaftlichkeit, Strahlungsbelastung) und
  Leuchtenauswahl begonnen. Frontmatter (`gelesen`, `sources`, Titel) auf den neuen
  Stand nachgeführt; vier neue Praxisrelevanz-Punkte ergänzt (Itten-Kontraste als
  Bauherren-Vokabular, Projektanalyse-Gliederung fürs Vorprojektgespräch,
  Wirtschaftlichkeits-Kennwertrahmen Lampenauswahl). Weiterhin herstellerneutral —
  keine ERCO-Produktangaben in den gelesenen Abschnitten.
- Editionsdaten-Beobachtung bestätigt sich weiter: S. 69-71 (Lampenauswahl) tragen
  erneut Edition 01.03.2010, S. 72-73 (Leuchtenauswahl-Beginn) wieder 26.06.2006 — das
  Dokument wird seitenweise, nicht kapitelweise nachgeführt.
- Register nachgeführt: `skills/wissens-destillat/training/bauprodukte-inventar.md`
  (Zeile `de_erco_guide.pdf` auf S.1-73), `training/PROGRAMM.md` (Stand-Absatz).
- **Bewusst nicht ausgeführt:** Web-Prüfung der aktuellen erco.com/guide-Fassung (nicht
  Teil des Laufs, in den Offenen Punkten vermerkt).
- Kein Git über SMB, kein Fan-out. Zyklus-Budget siehe Logbuch-Journalzeile.

## 2026-08-04 (Wissens-Chef Run 25, Cross-KB) — Erst-Verlinkung zur KB `energie` über die eco-BKP-Achse

Befund F1-ecoBKP, Meldung 3. Messung dahinter: `grep bauprodukte` über `wissen/energie/` = 0
Treffer, `grep energie` über `wissen/bauprodukte/` = 0 Treffer — zwei KBs, die beide nach BKP
gliedern, kannten einander in keiner Richtung. Gesetzt wurde in diesem Lauf **nur die
bauprodukte-Seite** (die energie-Seite bearbeitet eine andere Gruppe).

- **`wiki/QUESTIONS.md` Punkt 9 (Holzbau und Bekleidungen, GEBLOCKT mangels Quellmaterial):**
  Teil-Antwort mit Zeigern auf die eco-Destillate der KB `energie` —
  `energie/destillate/eco-bau-merkblaetter-bkp-2008-huelle.md` Abschnitte «BKP 214» und
  «BKP 215» sowie «BKP 225», und
  `energie/destillate/eco-bau-merkblaetter-bkp-2008-technik-ausbau.md` Abschnitt «BKP 271»
  (Trockenbau). Ausdrücklich festgehalten: zu **BKP 225.4 Brandschutzbekleidungen** trägt der
  eco-Bestand nichts bei; die **Blockade ist nicht aufgehoben, sondern nur teilweise umgangen**
  — für einen Artikel mit Bauprodukte-Mehrwert fehlt weiterhin produktseitiges Material.
- **Punkt 3 (Dachbegrünung):** Zeiger auf `…-huelle.md`, Abschnitt «BKP 224 —
  Bedachungsarbeiten», Unterabschnitt «Dachbegrünung». Der Punkt bleibt offen; massgebende
  Fachnorm bleibt SIA 312:2013 (führend `wissen/normen`).
- **Punkt 8 (Terrazzo/Kunststein):** Zeiger auf `…-technik-ausbau.md`, Abschnitt «BKP 281 —
  Bodenbeläge». Ausdrücklich festgehalten: zu den beiden dort offenen Punkten
  (Gleitfestigkeitsklasse, Reinigungs-/Pflegeverhalten) sagt die eco-Quelle **nichts**.
- **Datierungsvorbehalt an jedem der drei Zeiger:** Quelle ist die Ausgabe **2008** der
  «Merkblätter nach BKP». Die Reihe lebt als ecoBKP weiter (aktuell Ausgabe 2026 bei
  ecobau.ch; Materialempfehlungen auf die Methodik «Baumaterialien ecobau 2025» umgestellt, in
  ecoBKP 214/215 kamen 2026 Empfehlungen zu Rückbaubarkeit/Reversibilität hinzu). Das Destillat
  kennzeichnet seine Materialprioritäten selbst als «historischer Stand von 2008 und nicht als
  heutige Empfehlung verwendbar» (Aktualitätsprüfung Run 123, 04.08.2026). Übertragbar ist die
  Systematik, nicht der Materialentscheid — vor jeder LV-Verwendung ist die geltende
  ecoBKP-Ausgabe von ecobau.ch zu ziehen.
- Punktnummern vor dem Eingriff am aktuellen Text verifiziert (3, 8, 9 unverändert zutreffend).
  Keine Zahl, kein Bestandssatz und kein Abschnitt entfernt; nur Nachträge.

## 2026-08-04 (Mac Mini, 13:30-Versuchsslot) — ERCO-Destillat fortgeschrieben: Seiten 40 → 53
- Prioritäten 1-3 ohne offenen Punkt (0 Sync-/Remote-Tasks; Synobsis Stufe 2 abgeschlossen,
  Batch-Task bewusst deaktiviert seit 25.07., kein neues Material; Fristen-/Pendenzen-Radar
  bereits um 08:39 als Hub-Chef-Briefing gelaufen). `grobkosten` wurde im 02:31-Lauf dieser
  Nacht bereits erschöpfend geprüft und bleibt extern blockiert (Rückfrage Raphael oder neues
  Rohmaterial nötig); `bauprodukte` trägt weiterhin die höchste Priorität unter den freien KBs
  und der ERCO-Titel selbst ist als P1 im Inventar geführt — daher hier weitergearbeitet.
- **Kontinuierliche Extraktion (Stufe 1, `pdftotext -layout`), kein Fan-out, kein Subagent.**
  `de_erco_guide.pdf` (BKP 233) Seiten 41-53 gelesen und in
  [[erco-lichtplanung-grundlagen]] eingearbeitet: «Räume verbinden» vollständig abgeschlossen
  (Aussenraum-Innenraum-Spiegeleffekt, Aussenraum-Aussenraum), neues Unterkapitel «Objekte
  beleuchten» komplett (Lichtrichtung 5°-45°/Optimum 30°, Lichtverteilung Skulpturen-/
  Floodlinse, Objekt-Kontrastskala 1:2/1:5/1:10/1:100), neues Hauptkapitel «Mit Lichtfarben
  gestalten» begonnen (Farbe, Farbsysteme CIE/Munsell, Lichtfarbe Weiss/Farbig, Farbmischung).
  Frontmatter `gelesen:`/`sources:`/Titel aktualisiert, `wiki/INDEX.md` und
  `wiki/QUESTIONS.md` Punkt 4 sowie die Inventar-Zeile in
  `skills/wissens-destillat/training/bauprodukte-inventar.md` nachgeführt.
- **Verifikation:** BKP 233 gegen `references/bkp-2017/BKP-2017-Liste.md` bereits im
  Ursprungsartikel verifiziert, unverändert gültig. Alle neuen Kennwerte (Winkel, Kontraststufen,
  Farbbegriffe) tragen die Quelle (Seitenzahl im Dokument) inline, keine Herstellerangaben in
  diesem Auszug. Editionsdatum der Seiten 41-53 durchgehend 26.06.2006 (keine neue Edition
  gegenüber dem Vorlauf) — im Artikel als Beobachtung vermerkt, dass ab S. 55/56 erstmals
  Edition 01.03.2010 auftaucht (offen für den nächsten Lauf).
- **Nächster Anschlusspunkt (S. 54):** Rest «Mit Lichtfarben gestalten» (Farbwiedergabe,
  Farbwirkung, Farbkontraste, Raumfarben, Farbig akzentuieren), danach neues Kapitel
  «Planungspraxis» (Leuchtenauswahl/Leuchtenanordnung).

## 2026-08-04 (Mac Mini Nachtschicht 05:30) — Ein triagierter Positionsposten gegen die Altersregel geprüft, kein Artikel
- Prioritaeten 1–3 der Nachtschicht ohne offenen Punkt (keine neuen remote-/sync-Tasks,
  Synobsis Stufe 2 weiterhin abgeschlossen, Fristen-Radar zuletzt 22:30 gelaufen). Unter
  den freien KBs (`bauprodukte`, `grobkosten`, `projekt-lessons`) traegt `bauprodukte` seit
  30.07.2026 den Status "AKTIV, hoechste Prioritaet" (`training/PROGRAMM.md`); der letzte
  inhaltliche Wiki-Zuwachs war der ERCO-Artikel vom Vorlauf 23:30 (Kurator-Korrektur, kein
  neuer Inhalt) — `grobkosten` wurde bereits im 02:31-Lauf dieser Nacht erschoepfend
  geprueft und ist extern blockiert (kein neues Rohmaterial), daher hier weitergearbeitet
  statt derselbe Block sofort erneut angefasst.
- **Eine Einheit statt Neuinventur:** aus den verbleibenden 29 triagierten `[t]`-Positionen
  war `paustian_mirror_mirror_product_sheet.pdf` (900 Einrichtung, P2 "Spiegelelement
  Moebel-Datenblatt") die einzige mit P1/P2-Prioritaet ausserhalb des laufenden
  ERCO-Grosswerks. Gegen die Altersregel (Entscheid Raphael 31.07.2026, `CLAUDE.md`)
  geprueft: PDF-Stand 08.09.2015 (Adobe-Metadaten, >10 Jahre alt), reines
  Hersteller-Datenblatt eines konkreten Serienprodukts (Paustian "Mirror Mirror",
  Design Maria Bruun, Winkelspiegel in 3 Groessen, Eiche/Chromstahl) ohne
  Konstruktionsprinzip oder System — die Regel erlaubt aus >10 Jahre alten Dokumenten
  nur einen Prinzip-Artikel, keinen Produkt-Eintrag, und hier gibt es kein
  destillierbares Prinzip. **Kein neuer Wiki-Artikel** — die Position korrekt als
  `[-]` (bewusst uebersprungen) geschlossen statt sie im `[t]`-Rueckstand liegen zu
  lassen. Inventar-Zeile (`skills/wissens-destillat/training/bauprodukte-inventar.md`)
  aktualisiert mit Begruendung.
- **Inventar-Stand danach:** 214 erfasst, 16 destilliert `[x]`, 29 triagiert `[t]`,
  22 offen `[ ]`, 147 uebersprungen `[-]` (Vorlauf 03.08.: 16/30/22/146 — ein Posten
  von `[t]` nach `[-]` verschoben, sonst unveraendert; Summe konsistent 214).
- Kein Fan-out, kein Subagent, keine neuen Kosten ausser dieser Session. Beleg fuer die
  breitere Beobachtung (nicht in dieser Session verfolgt): der Rest-Bestand `[t]`/`[ ]`
  unter "900 Einrichtung" besteht ueberwiegend aus Konsumgueter-Moebelkatalogen (IKEA-
  Matratzen, Buerostuhl-Kataloge, Klappmoebel) ohne erkennbaren Baustoff-/Systembezug —
  moeglicher Kandidat fuer eine pauschale Sektions-Entscheidung statt Einzelpruefung,
  siehe `wiki/QUESTIONS.md`.

## 2026-08-03 (Mac Mini Nachtschicht, 23:30) — Triage-Tranche 9 Positionen, Kurator-Korrektur am ERCO-Artikel
- **Phase 1 (Triage, Haiku):** 15 Positionen aus dem Inventar geprüft (Budget 0.5 USD,
  rc=0). 9 mit Priorität versehen und auf `[t]` gesetzt (P2: Oberflächenausführung
  Wandbelag 282, Produktdatenblatt Einrichtung, Spiegelelement Möbel 900; P3: 6 x Scan/
  Dateiname ohne verwertbaren Kontext). 6 weitere als sachfremd erkannt (Zahlungsbelege,
  Finanzdokumente, Router-/NAS-Anleitungen unter `900 Einrichtung/00 best/` — falsch
  einsortiertes Fremdmaterial, keine inhaltliche Änderung nötig). Inventar-Stand danach:
  214 erfasst, 16 destilliert `[x]`, 30 triagiert `[t]`, 22 weiterhin offen `[ ]`, 146
  übersprungen `[-]`.
- **Phase 2 (Destillat, Sonnet) brach beim Budgetlimit ab (1.5 USD, rc=1)** — mit einer
  Nebenwirkung, die die Kurator-Stufe (dieser Lauf) korrigiert hat: `[[erco-lichtplanung-
  grundlagen]]` (Teil 1/n des 435-seitigen ERCO-Ratgebers) trug nach dem Abbruch Titel und
  Frontmatter mit dem Stand «Seiten 1-60», inkl. Behauptung, die Abschnitte «Objekte
  beleuchten», «Mit Lichtfarben gestalten» sowie «Räume verbinden» vollständig (alle vier
  Richtungen) seien gelesen — **der Artikeltext selbst enthält davon keine Zeile**, er
  endet unverändert bei «Räume verbinden — Innenraum-Aussenraum» (Stand 31.07.2026, S. 40).
  Der Sub-Agent hatte offensichtlich die Metadaten vorab auf das Zielergebnis geschrieben
  und ist vor dem eigentlichen Lesen/Schreiben der Seiten 41-60 ins Budgetlimit gelaufen.
  **Frontmatter, Titel und der Abschnittshinweis „deckt die ersten … Seiten" auf den
  belegten Stand (1-40) zurückgesetzt**, ebenso die zugehörige Inventar-Bemerkung
  (`training/bauprodukte-inventar.md`, Zeile `de_erco_guide.pdf`) von der ebenfalls
  veralteten Angabe „S.1-20" auf „S.1-40" korrigiert. Kein neuer Artikelinhalt in diesem
  Zyklus — **Delta an destilliertem Fachwissen: Null**, Delta an korrekt triagierten
  Positionen: 9.
- **Lehre für den Skill:** Phase 2 sollte Frontmatter-Fortschrittsangaben erst NACH dem
  erfolgreichen Schreiben des zugehörigen Abschnitts setzen, nicht vorab — sonst überlebt
  ein Budgetabbruch als unbelegte Fortschrittsbehauptung im KB. Nicht in dieser Session
  behoben (Skill-Änderung wäre ein eigener Auftrag), hier nur als Beobachtung vermerkt.
- Kein Fan-out. Budget dieses Zyklus: Sub-Läufe 0.5+1.5 USD gedeckelt (tatsächlich
  verbraucht: Triage voll, Destillat bis zum Limit), Kurator-Session zusätzlich.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B0 · C0 · D0 · E0 · F1 · G1

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Strukturell sauber (keine toten Backlinks, Frontmatter vollstaendig, RAW-Register konsistent). 9 Artikel, alle `emerging` — Promotion erst mit Zweitbeleg je Produktgruppe. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-01 (Mac Mini Nachtschicht, Versuchs-Slot 13:30)

- **Artikel `wiki/cheminee-aufbau-hafnerarbeiten.md` geschrieben** (status `emerging`) aus
  `284 Cheminee/Cheminee.pdf` (Detailplan Scheitlin-Syfrig+Partner Architekten Luzern,
  Projekt «Haus Karlsen», datiert 18.06.2009, Fremdbüro-Referenz): Schichtenfolge
  Porenbeton/Brandschutz um den Cheminée-Einsatz, Zuluft-Trennung vom Raum,
  Kaminaufsatz-Anschluss inkl. Kupfer-Einfassung. Konstruktionsprinzip übernommen,
  Produktnamen (Rüegg Neptun, Ohnsorg Söhne) als Beispiel Stand 2009 markiert
  (Altersregel 31.07.2026).
- Inventar-Zeile `284 Cheminee/Cheminee.pdf` auf `[x]` gesetzt →
  [[cheminee-aufbau-hafnerarbeiten]]; `wiki/INDEX.md` (neue Sektion BKP 284) und
  `wiki/QUESTIONS.md` (Punkt 12: VKF-Zulassungsnummer im Plan nicht genannt,
  ereignisgetrieben) nachgefuehrt.
- **Inventar-Stand danach:** 214 Dateien erfasst, davon 16 destilliert `[x]`, 21
  triagiert `[t]`, 31 weiterhin offen `[ ]`, 146 uebersprungen `[-]`.
- Kein Fan-out, ein Artikel, Budget dieses Zyklus gering (Einzelfile-Extraktion via
  pdftotext, keine Subagenten).

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B0 · C0 · D0 · E0 · F1 · G4

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. Erster Health-Check dieser KB (angelegt 28. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-31 (Wissens-Chef Run 22, Cross-KB) — Selbstwiderspruch in bkp-261-aufzuege aufgeloest, Erst-Verlinkung zu projekt-lessons

- **[widerspruch] `wiki/bkp-261-aufzuege.md` schrieb aus, was es zwei Zeilen spaeter zu unterlassen
  versprach.** Der Absatz gab die bedingt formulierte Ziff.-3.6-Abs.-2-Neuregelung der VKF-BRL 23-15
  (Teilrevision 2017) woertlich samt Bedingung wieder — und behauptete unmittelbar danach, diese
  Anforderungen wuerden «hier nicht fortgeschrieben (Rule `normen-referenz`)». Das verletzte zugleich
  die Fuehrungsmatrix, die fuer dieses Paar ausdruecklich festhaelt: fuehrend ist `normen`,
  `bauprodukte` verweist und schreibt die bedingt formulierten Anforderungen nicht fort.
  Zusaetzlich fehlte der Hinweis, dass `normen` dieselbe Aussage ausdruecklich als **nicht am
  amtlichen Original der 2017er-Ausgabe verifiziert** fuehrt (Quelle ist ein Delta-Destillat aus
  einer Drittanbieter-Schulungsunterlage).
- **Ersetzt** durch Verweis auf die fuehrende Fundstelle plus den praktisch entscheidenden
  Anwendungsfall (**Einzel-Untergeschoss-Erschliessung**, z. B. Kellerabteil-/Lagerzugang) — ohne
  die Belegstufe zu duplizieren. Ein Verweis, der nicht sagt, wann er einschlaegig ist, wird nicht
  verfolgt; die Belegstufe dagegen gehoert der fuehrenden KB, sonst wird die Kopie falsch, sobald
  `normen` am Original verifiziert.
- **[querverlinkung, Erst-Verlinkung] QUESTIONS Punkt 9 (Trockenbau/Bekleidungen) hat eine
  Teil-Antwort im Haus.** Der Punkt ist mangels Quellmaterial GEBLOCKT — die Korpus-Ordner
  `214 Montagebau in Holz` und `271 Gipserarbeiten` enthalten null Dateien. Gleichzeitig fuehrt
  `wissen/projekt-lessons/wiki/kispi-lbw-rohdichte-800.md` (`established`) den **einzigen belegten
  Praxisfall des Hubs** zur Trockenbau-Bekleidung: LV-Kuerzel-Lesart nach NPK 643 (DFIR bzw.
  DFH2IR/H2/S) und die real verbauten Plattenqualitaeten — genau das produktseitige Gegenstueck, das
  dem Korpus fehlt. Vor Run 22 gab es auf Artikelebene in **keiner Richtung** eine Verbindung.
  Verweis gesetzt, mit der Abgrenzung: EN-520-/VKF-Kennwerte fuehrt `normen`, zu BKP 214.1/214.3 und
  225.4 traegt der Fall nichts bei. Die Bezeichnungen 271.10/271.13 dort sind Projektnomenklatur,
  **kein** BKP-2017-Code.
- **[nicht uebernommen]** Die Preis-Bringschuld aus `grobkosten` (Einheitspreis Estrich und
  RF1-Bekleidung) wurde **bewusst nicht** hier angemeldet: diese KB fuehrt laut Matrix keine
  Kalkulations-Kennwerte, und ihr Korpus enthaelt Produktunterlagen, keine Devis. Die falsche
  Erwartung ist stattdessen bei `grobkosten` korrigiert worden.

## 2026-07-31 (Mac Mini Nachtschicht, 23:30) — ERCO-Ratgeber auf S. 40 fortgeschrieben, Punkt 9 als Fehlannahme korrigiert
Zwei Punkte aus der ausschreibungsrelevanten Priorisierung bearbeitet:
- **Punkt 4 (ERCO Lichttechnik):** [[erco-lichtplanung-grundlagen]] von S. 20 auf S. 40
  fortgeschrieben (Kapitel «Grundlagen» damit vollständig: Wahrnehmungskonstanz,
  Gestaltgesetze, Aufmerksamkeitslenkung; Kapitel «Gestalten mit Licht» begonnen:
  Architekturbeleuchtung Innenräume — Funktionszonen, Raumgrenzen, Architekturelemente,
  Räume verbinden bis Innenraum-Aussenraum). Frontmatter `gelesen:` nachgeführt,
  `last_updated` 2026-07-31. Weiterhin herstellerneutral, keine ERCO-Produktangaben
  übernommen.
- **Punkt 9 (Holzbau/Bekleidungen BKP 214/225/271) — als nicht bearbeitbar erkannt:**
  Vor dem Schreibversuch die Quellordner geprüft. `214 Montagebau in Holz` und
  `271 Gipserarbeiten` sind leere Ordner (0 Dateien), `225` enthält nur ein
  PU-Aussenisolations-Fallbeispiel ohne Holzbau-/Bekleidungsbezug. Die Prämisse in
  `QUESTIONS.md` («Quellarchiv führt die Sektionen») war irreführend formuliert — sie
  bezog sich nur auf existierende Ordnernamen, nicht auf Inhalt. Punkt 9 in
  `wiki/QUESTIONS.md` korrigiert und als geblockt (fehlendes Quellmaterial) markiert,
  damit kein künftiger Lauf dieselbe leere Suche wiederholt. Kein Artikel geschrieben —
  reine Normwiedergabe ohne Produktbeleg wäre gegen die KB-Schreibregel 4
  (kein Hersteller-Marketing, aber auch kein Artikel ohne Quellsubstanz).

## 2026-07-31 (Mac Mini Nachtschicht) — QUESTIONS Punkt 10 geschlossen: VKF-BRL-23-15-Teilrevision auf Aufzüge geprüft
Gemäss Raphaels Priorisierung (heutiger Eintrag oben: ausschreibungsrelevante Punkte 4/9/10
zuerst) Punkt 10 bearbeitet: Delta-Destillat `vkf-brl-aenderungen-2017.md` (KB `normen`)
gegen die BRL 23-15 geprüft. **Materiell betroffen:** neuer Abs. 2 zu Ziff. 3.6
Untergeschosse — Aufzugsschachttüren dürfen bei Anlagen mit nur einem bedienten
Untergeschoss direkt in eine Nutzungseinheit führen (Bedingung: Feuerwiderstand nach
Ziff. 3.4 Abs. 2), 2015 nicht vorgesehen. Ziff. 5.1 (Fahrtreppen) nur kosmetisch (RF3 →
RF3 (cr)). Geändert: `wiki/bkp-261-aufzuege.md` (Fassungsfrage-Absatz präzisiert),
`wiki/QUESTIONS.md` (Punkt 10 geschlossen). Rücklauf in die abgebende KB: `normen/CHANGELOG.md`
+ `normen/destillate/vkf-brl-23-15-befoerderungsanlagen.md` (Ziff. 3.6/5.1 ergänzt, Offene-
Punkte-Zeile aufgelöst, Frontmatter-Link nachgetragen). Kein Versand, keine Publikation.

## 2026-07-31 — Drei Grundsatzentscheide Raphaels eingearbeitet
- **Altersregel** (Schreibregel 1 in CLAUDE.md ergänzt): keine harte Altersgrenze;
  Unterlagen älter als zehn Jahre nur als **Prinzip/System**, nie als Produkt
  (Typenbezeichnung, Sortiment, Preis, Zulassungsnummer, Bezugsquelle).
- **Bevorzugte Systeme:** nicht abgefragt, sondern aus den eigenen Projekten abzuleiten.
  Pflicht-Zusatzauftrag beim Korpus `buero-projekte` in `KORPUS-QUEUE.md` verankert;
  Ergebnis kommt als Entwurf `bevorzugte-systeme-jans.md` zur Bestätigung, nicht als
  gesetzter Artikel. Bis dahin bleiben alle Destillate herstellerneutral.
- **Restfragen priorisiert:** ausschreibungsrelevant zuerst — Punkt 4 (ERCO Lichttechnik),
  9 (Holzbau und Bekleidungen, Lignum liegt destilliert vor) und 10 (VKF-Fassungsfrage).
  Alle übrigen ereignisgetrieben, sobald ein reales Projekt das Gewerk berührt;
  Punkte mit Hersteller-Rückfrage (5, 11, teilweise 7) bleiben als Prüfauftrag stehen.
- Fragen 1 und 2 in `wiki/QUESTIONS.md` damit geschlossen.

## 2026-07-30 (Wissens-Chef Run 21, Cross-KB) — Kabinenmass korrigiert, Normverweise nachgetragen, drei neue offene Punkte
- **[Widerspruch korrigiert, LV-relevant] `wiki/bkp-261-aufzuege.md`:** Die aus dem Schachtmass
  1500 × 1500 mm **abgeleitete** Kabinenbreite 1250 mm ist gestrichen. Das Winner-Datenblatt
  enthaelt gar kein Kabinenmass; belegt ist allein die AS-Masskizze «Swisslift» mit Kabinenbreite
  1050 mm (beide Tuervarianten) und Kabinentiefe 1085 mm (Standard) bzw. 1460 mm (Option Tuerfront
  ueber die ganze Schachtbreite). Ob Winner und Swisslift dieselbe Kabine haben, bleibt ausdruecklich
  ungeklaert.
- **[Folgekorrektur] Der SIA-500-Abgleich kippt damit:** vorher «uebertrifft rechnerisch beide Masse
  der Standard-Kategorie (1.25 > 1.10 m Breite, 1.46 > 1.40 m Tiefe)», neu: 1.05 m Breite verfehlt die
  Standard-Kategorie 1.10 × 1.40 m in **jeder** Variante; die Kategorie «bedingt zulaessig»
  1.00 × 1.25 m ist **nur in der Options-Variante** erfuellt (1.05/1.46), in der Standardvariante
  (1.05/1.085) nicht. Fassungs-Vorbehalt SN 521500/C4:2019 bleibt stehen. Die frueher formulierte
  Ratlosigkeit («nicht ableitbar, warum AS die schwaechere Kategorie vergibt») wird **nicht** fuer
  aufgeloest erklaert, sondern praezisiert und als offene Frage gefuehrt.
- **[Querverlinkung nachgetragen] `wiki/bkp-261-aufzuege.md`:** Frontmatter `links` um
  [[vkf-brl-23-15-befoerderungsanlagen]] und [[sia-370-028-2003]] ergaenzt; im Abschnitt
  «Schnittstellen zu Nachbargewerken» ein Verweis-Satz auf die fuehrende KB `normen` **ohne
  Kennwerte** (die VKF-Anforderungen an Schacht, Tueren, Kabine und Brandfallsteuerung sind bedingt
  formuliert und werden hier nicht fortgeschrieben, Rule `normen-referenz`); in der herstellerneutralen
  LV-Musterzeile nur ein Pruefhinweis (Brandfallsteuerung nach Ziff. 3.7 projektbezogen abklaeren),
  keine generelle Bedingung. [[sia-370-080-2003]] bewusst NICHT verlinkt (betrifft die Nachruestung
  bestehender Anlagen, kein Bestandsbezug im Artikel).
- **[Cross-KB-Verweis nachgetragen] `wiki/terrazzo-kunststein-bodenbelaege.md`:** Frontmatter `links`
  um `[[../../normen/destillate/sia-244-2006]]` und `[[../../normen/destillate/bfu-bodenbelaege]]`
  ergaenzt (relative Form wie in `dachbegruenung-systeme.md`, sonst toter Link). Neuer datierter
  Abschnitt «Normative Grundlage Gleitfestigkeit»: fuehrend ist **SIA 244:2006 Ziff. 6.7
  «Gleitfestigkeit»**, die bfu-Publikationen sind nur Auslegungshilfe (im Streitfall gilt die Norm).
  LV-Musterzeile um die Gleitfestigkeitsklasse als Pflichtangabe erweitert, als Fundstellen-Verweis
  mit Platzhaltern statt kopierter Zahlenwerte.
- **[QUESTIONS aktualisiert] `wiki/QUESTIONS.md`:** Punkt 8 auf «teilweise geschlossen 30.07.2026»
  umgeschrieben, mit **zwei** verbleibenden offenen Punkten (produktbezogene Klasse fuer geschliffenen
  Terrazzo/Kunststein **und** Reinigungs-/Pflegeverhalten). Neu aufgenommen: Punkt 9 (kein Artikel zu
  BKP 214.1/214.3 Montagebau in Holz sowie 271.1 Trockenbau und 225.4 Brandschutzbekleidungen,
  Normgrundlage in den Lignum-Destillaten vorhanden, `lignum-lignatec-brandschutz.md` ausdruecklich
  NICHT heranziehen), Punkt 10 (Teilrevision 2017 der VKF-BRL 23-15 auf Aufzugsrelevanz pruefen),
  Punkt 11 (AS-Kabinenbreite 1050 mm beim Hersteller verifizieren).
- **Geaenderte Dateien:** `wiki/bkp-261-aufzuege.md`, `wiki/terrazzo-kunststein-bodenbelaege.md`,
  `wiki/QUESTIONS.md`, `CHANGELOG.md`.
- **Nicht angefasst:** `raw/` (Rule `wissens-bibliothekar`), die Gegenrichtung in `wissen/normen/`
  (setzt ein anderer Agent), sowie alle Dateien ausserhalb dieser KB.

## 2026-07-30 13:30 — Nachtschicht (Versuchs-Slot): AS-Aufzuege-Masskizze destilliert (BKP 261)
- **[destilliert, Artikel ergaenzt]** `wiki/bkp-261-aufzuege.md` erweitert um die Schachtbemassung
  aus `260 Transportanlagen/Lift/AS/100426_AS_Aufzuege_Masskizze.pdf` (gescannte technische
  Zeichnung, per `pdftoppm` gerendert und bildlich gelesen — kein Text extrahierbar). Neu belegt:
  Schachtquerschnitt 1500 × 1500 mm mit zwei Tuernischen-Varianten (335/80 mm bzw. volle
  Schachtbreite 20/20 mm), Schachtkopfhoehe 3400 mm (Option 2900 mm reduziert) nach der Regel
  Schachtkopf ≥ Tuerhoehe + 400 mm, Schachtgrube 1060-1230 mm.
- **[Widerspruch dokumentiert, nicht aufgeloest]** Die Masskizze traegt den Produktnamen
  «Swisslift» (Referenz 2.1.0053.01.8) mit **max. Foerderhoehe 30 m**, waehrend das bereits
  destillierte Winner-Datenblatt (2.1.0053.12.9, gleicher Hersteller AS Aufzuege) bei sonst
  identischen Kenndaten **27 m** angibt. Beide Dokumente teilen dasselbe Dateidatum
  (26.04.2010) ohne Versionsvermerk — als offener Punkt im Artikel vermerkt statt spekulativ
  aufgeloest.
- **Register nachgefuehrt:** Inventar-Zeile in
  `skills/wissens-destillat/training/bauprodukte-inventar.md` auf `[x]`, Stand-Zeile in
  `wissen/bauprodukte/training/PROGRAMM.md` (15 destilliert, 21 triagiert).
- Bewusst **eine** Einheit (Budget-Disziplin Nachtschicht-Versuchs-Slot 13:30, 5 USD).
  Prioritaeten 1-2 der Nachtschicht-Anweisung waren an diesem Slot leer bzw. bereits erledigt
  (Sync-/Remote-Queues leer; Synobsis Stufe 2 seit 02.07. bei 853/853 fertig und bewusst
  deaktiviert); Prioritaet 3 (Fristen-Radar) war 7 h zuvor (06:55) bereits vollstaendig
  gelaufen, ein konkreter Entwurfs-Kandidat (KISPI-Therapiekueche-Fragen buendeln) war wegen
  eines OneDrive-Sync-Locks («Resource deadlock avoided» auf dem Zielordner) nicht bearbeitbar
  — daher Ausweichen auf Prioritaet 4, hier die am laengsten unberuehrte KB.

## 2026-07-29 23:30 — Nachtschicht: Z-Winkel destilliert (BKP 273 Schreinerarbeiten)
- **[destilliert]** Neuer Artikel `wiki/z-winkel-beschlag-schreinerei.md` aus
  `273 Schreinerarbeiten/Z_Winkel/110207_Z_Winkel.pdf` (OPO-Net-Katalogausdruck OPO
  Oeschger AG, 07.02.2011): 5 Stahlwinkel-Varianten (Bolzengrösse, Bohr-Ø, Plattengrösse,
  Preis) für offene Korpus-/Montageverbindungen.
- **[abgrenzung]** Bewusst nicht in [[arbeitsplatten-verbinder-schreinerei]] integriert,
  obwohl gleiche Quelle/gleicher Tagesausdruck: der Z-Winkel ist ein offen montierter
  Stahlwinkel, kein verdeckter Stossverbinder — andere Funktion, eigener Artikel,
  beidseitige Verlinkung gesetzt (`links`-Frontmatter + Abschnitt «Offene Punkte»).
- **Register nachgefuehrt:** `wiki/INDEX.md` (BKP 273), Inventar-Zeile in
  `skills/wissens-destillat/training/bauprodukte-inventar.md` auf `[x]` mit Datum,
  Stand-Zeile in `wissen/bauprodukte/training/PROGRAMM.md` (14 destilliert, 22 triagiert).
- Bewusst **eine** Einheit (Budget-Disziplin Nachtschicht 5 USD, PROGRAMM.md Vorgabe
  «eine Einheit pro Lauf»).

## 2026-07-29 — Nachtrag zum Statuskopf: der eigene CHANGELOG-Eintrag von 10:04 verstellt die Auswahl (vollgas-chef-radar 12:57)
- **[struktur]** Der Fix von 09:57 (Anlegen von `training/PROGRAMM.md`) hat einen **Nebeneffekt**,
  der ihn teilweise aufheben kann: er setzte den CHANGELOG dieser KB auf den **29.07. 10:04** und
  machte sie damit zur **juengsten von neun** Kandidatinnen der Nachtschicht-Prioritaet 4 — also
  zur letzten, die drankommt, obwohl sie mit **55 offenen Positionen** die groesste Luecke traegt.
  Der letzte **inhaltliche** Stand datiert unveraendert vom **28.07. 23:42** (`wiki/`).
- **Lehre:** eine Struktur-Korrektur an einer KB sieht fuer jeden datumsbasierten Auswaehler aus
  wie geleistete Arbeit. Wer Sichtbarkeit herstellt, verschiebt damit zugleich die Rangfolge.
- **Massnahme:** Warnhinweis im Statuskopf von `training/PROGRAMM.md` — massgeblich ist der
  Dateistand in `wiki/` und der Inventarstand, nicht das CHANGELOG-Datum. Kein inhaltlicher
  Eingriff, kein neuer Takt.

## 2026-07-29 — `training/PROGRAMM.md` angelegt: die KB war fuer jeden Taktgeber unsichtbar
- **[struktur] Befund (vollgas-chef-radar 09:57, unabhaengig bestaetigt nach dem Strukturhinweis
  der `vollgas-fruehwarnung` 07:15):** Die Mac-Mini-Nachtschicht — seit dem Ausbau des
  Endlos-Runners der faktische Taktgeber dieses Korpus — waehlt in **Prioritaet 4** ueber das
  Muster `wissen/*/training/PROGRAMM.md`. `bauprodukte` hatte als einzige vorbereitete KB
  **kein `training/`-Verzeichnis** und konnte darum von dieser Prioritaet **nie** getroffen
  werden. Erreichbar war die KB nur ueber Prioritaet 5 (offene `QUESTIONS.md`), wo sie als eine
  unter vielen konkurrierte und verlor: die letzten Nachtschicht-Laeufe gingen an
  `firmengruendung-ch`.
- **[belegter Stillstand]** Letzte inhaltliche Aenderung im `wiki/` am 28.07. 23:42, seither
  rund 34 h ohne Delta — bei **55 offenen Positionen** (32 `[ ]` offen, 23 `[t]` triagiert von
  214 erfassten Dateien, 146 bewusst uebersprungen, 13 destilliert). Der Korpus ist also nicht
  erschoepft, sondern unerreichbar. Laut `KORPUS-QUEUE.md` ist er der Korpus mit dem
  **hoechsten direkten Hebel** (Nr. 1 von 4).
- **[angelegt]** `wissen/bauprodukte/training/PROGRAMM.md` — Wegweiser auf die bestehende
  Buchhaltung im Destillat-Skill (Spec, Inventar, Sektionsstand, Korpus-Queue), plus Umfang je
  Lauf im 5-USD-Budget der Nachtschicht, Reihenfolge nach Arbeitsnutzen und Endbedingung.
  **Kein neuer Loop, kein neuer Takt, keine zusaetzlichen Kosten** — die Datei macht nur einen
  vorhandenen Korpus fuer einen vorhandenen Mechanismus auffindbar. Gegenprobe: das
  Nachtschicht-Muster trifft die KB jetzt.

## 2026-07-29 — Aufraeumen nach Freigabe Raphael
- **[geloescht, freigegeben]** `.!33499!CHANGELOG.md` — 0-Byte-SMB-Schreibfragment vom 28.07. 01:37,
  entstanden beim Anlegen der KB. Vor der Loeschung nochmals geprueft: 0 Byte, kein Inhalt; das
  echte `CHANGELOG.md` intakt (13'697 Byte). Kein Datenverlust.


## 2026-07-28 — Wissens-Chef Run 19: ERST-PRUEFUNG dieser KB (Cross-KB)
- **[register, strukturell] Die KB war in `koordination/QUERBEZUEGE.md` ueberhaupt nicht
  registriert** — weder als fuehrend fuer Produktwissen noch mit der Klarstellung, dass
  Norm-Fundstellen und Kennwerte anderswo gefuehrt werden. **Drei Fuehrungszeilen ergaenzt:**
  bauprodukte fuehrt **Produkt-/Systemwissen nach BKP**; **normen** fuehrt die Norm-Fundstellen
  (inkl. Fassungsstand und **Korrigenda**); **grobkosten/immobilienbewertung** fuehren die Kennwerte
  — historische Herstellerpreise hier nur als **datierter Zeitstand**, nie als heutiger Ansatz.
  Genau diese Registerluecke hat den naechsten Befund erzeugt.
- **[korrektur, materiell] Dachbegruenung: BKP-Aufteilung fehlte, CH-Norm fehlte ganz.**
  `wiki/dachbegruenung-systeme.md` fuehrte die Dachbegruenung allein unter **BKP 224**. Massgebend
  ist **SIA 312:2013 «Begruenung von Daechern»** (SN 564312, seit 1.11.2013) — sie liegt seit
  laengerem als Destillat in `normen` und verlangt die Aufteilung **224 (Schichtaufbau) / 288
  (Vegetation)**: wer alles unter 224 ausschreibt, verliert die Gaertnerleistung aus dem Devis.
  Normabschnitt nachgetragen (Schichtdicken extensiv 80-200 mm, intensiv 120-300 bzw. 200 bis
  >500 mm; Niederschlagsklassen-Tabelle 2; Neigungsschwellen 6°/15°), BKP-Codes gegen
  `references/bkp-2017/` verifiziert, **beidseitige Verlinkung** zu `normen` gesetzt.
- **[fassungs-vorbehalt] `wiki/bkp-261-aufzuege.md`:** die zitierten Kabinen-Mindestmasse stammen aus
  **SIA 500:2009 Ziff. 3.7.3** — einer der Ziffern, die das Korrigendum **SN 521500/C4:2019** aendert
  (im Hub bis heute unbekannt, in diesem Lauf entdeckt). Vorbehalt gesetzt; der Kabinen-Abgleich
  steht bis zum Nachzug in `normen` unter Vorbehalt.
- **[WIDERLEGT]** Der Vorwurf, die offene Normfrage bei Terrazzo/Kunststein sei durch
  **SN EN 16954:2018** laengst geschlossen, kippt: fuer zementgebundene Kunststein-/Terrazzoplatten
  ist **SIA 244:2006 «Kunststeinarbeiten»** einschlaegig. Die Umsetzung haette eine falsche
  Normzuordnung in die neue KB gesetzt.
- **[beobachtet, NICHT geloescht]** `.!33499!CHANGELOG.md` ist ein **0-Byte-SMB-Schreibfragment**
  vom 28.07. 01:37; das echte CHANGELOG ist intakt, kein Datenverlust. Loeschung nur nach Rueckfrage.
- Bericht: `koordination/outputs/2026-07-28_wissens-chef-run19.md`.


## 2026-07-28 — Neuer Artikel BKP 281 Bodenbeläge (Mac Mini Nachtschicht, 07:30-Lauf)
- **Artikel `wiki/terrazzo-kunststein-bodenbelaege.md` geschrieben** (status
  `emerging`) aus den zwei P1-triagierten Dateien `281 Bodenbelaege/020226 Terrazzo
  1.doc` und `020226 Terrazzo 2.doc` (Materialrecherche Architekturbüro Christian
  Kerez Zürich, Sitzung mit Fa. Studer Frick, 26.02.2002, Projekte Schule Eschenbach
  und MFH Forsterstrasse). Deckt zwei BKP-Subpositionen ab: Kunststein-Plattenboden
  (281.5, zwei Verlegevarianten Mörtelbett/geklebt) und vor Ort gegossener Terrazzo/
  geschliffener Beton (281.1, inkl. Rezeptur-Hinweise Zementgehalt/Hydrolent und der
  im Dokument namentlich zugeschriebenen Zweischicht-Idee von J. Schwartz). Alle
  Preise/Angaben direkt aus den zwei .doc-Dateien übernommen (per `textutil -convert
  txt` extrahiert), keine Ergänzung, Preise explizit als 2002er-Stand markiert.
  BKP-Codes 281.1/281.5 gegen `references/bkp-2017/BKP-2017-Liste.md` verifiziert.
- `wiki/INDEX.md` (neue BKP-281-Sektion) und `wiki/QUESTIONS.md` (1 neuer offener
  Punkt: keine Rutschfestigkeits-/Reinigungsangaben, normative Klassifizierung fehlt)
  nachgeführt.
- Inventar `skills/wissens-destillat/training/bauprodukte-inventar.md`: beide
  Quelldateien von `[t]` auf `[x]` gesetzt. Die dritte, bereits als Kostendokument
  triagierte Datei (`Offerte_Terrazzo_Belaege.pdf`) bewusst nicht destilliert (kein
  Fachwissen, reine Preisofferte 2005 — siehe Inventar-Notiz).
- Beleg-Prüfung in derselben Session durchgeführt (kein separater Kurator-Lauf,
  Nachtschicht-Budgetdisziplin): beide Quelldokumente vollständig gelesen, alle
  Preise/Verfahrensangaben im Artikel gegen den Volltext zurückgeprüft, keine
  Abweichung gefunden. Kein Fan-out, keine `AskUserQuestion`.

## 2026-07-28 — Neuer Artikel BKP 273 Schreinerarbeiten (Mac Mini Nachtschicht, 06:30-Lauf)
- **Artikel `wiki/arbeitsplatten-verbinder-schreinerei.md` geschrieben** (status
  `emerging`) aus den drei P1-triagierten Dateien in `273 Schreinerarbeiten/
  Zusammenzieher/` (OPO-Net-Katalogausdrucke OPO Oeschger AG, alle datiert
  07.02.2011): Vergleich dreier Arbeitsplatten-Verbindersysteme
  (Kunststoff-Exzenter, HETTICH AVB 5, Zip Bold Mini) nach Werkstoff, Bohr-Ø,
  Montagewerkzeug, Plattendicke und Stückpreis (2011). Alle Zahlen/Angaben direkt
  aus den drei PDFs übernommen, keine Ergänzung. Datumsstempel-Pflicht
  eingehalten (Preise/Artikelnummern explizit als 2011er-Stand markiert).
  BKP-Code 273.3 «Allgemeine Schreinerarbeiten» gegen `references/bkp-2017/
  BKP-2017-Liste.md` verifiziert (Rule `bkp-2017-referenz`).
- `wiki/INDEX.md` (neue BKP-273-Sektion) und `wiki/QUESTIONS.md` (1 neuer offener
  Punkt: nur ein Händler-Sortiment, kein Systemvergleich mit Alternativen wie
  Lamello/Domino, keine geprüften Zugkraftwerte) nachgeführt.
- Inventar `training/bauprodukte-inventar.md`: die drei Quelldateien von `[t]` auf
  `[x]` gesetzt (Destillat abgeschlossen).
- Beleg-Prüfung in derselben Session durchgeführt (kein separater Kurator-Lauf,
  Nachtschicht-Budgetdisziplin): alle Tabellenwerte gegen die drei Quell-PDFs
  zurückgeprüft, keine Abweichung gefunden. Kein Fan-out, keine `AskUserQuestion`.

## 2026-07-28 — Kurator-Stufe (Phase 3) für die vier Fliessarbeit-Artikel (Mac Mini Nachtschicht, 05:30-Lauf)
- **Beleg-Prüfung:** `pu-beschichtung-fassade.md` und `chromstahltreppe-oberflaechen.md`
  vollständig gegen ihre `.doc`-Rohquellen gegengelesen (`textutil -convert txt`) —
  alle Zahlen/Referenzen stimmen wortgetreu, keine unbelegte Aussage gefunden.
  `bkp-261-aufzuege.md` (Bild-PDFs ohne Textlayer) und `erco-lichtplanung-
  grundlagen.md` (grosses Werk, nur Auszug) plausibilitätsgeprüft statt Wort-für-
  Wort, ebenfalls kein Widerspruch.
- **Cross-KB-Fund verwoben:** [[sia-500-2009]] (`wissen/normen`, `established`)
  zitiert in Ziff. 3.7.3/Tabelle 4 die massgebliche Schweizer Aufzugs-Kabinenmasse
  (SN EN 81-70). Gerechneter Abgleich ergänzt: die AS-Winner-Kabine (1250×1460 mm)
  übertrifft die SIA-500-Standardmasse (1.10×1.40 m) rechnerisch, obwohl der
  Hersteller sie nur als «bedingt rollstuhlgängig» führt — Lehre für JANS:
  Kabinenmass immer gegen die Norm-Tabelle selbst rechnen, nicht die
  Herstellerkategorie übernehmen. Backlinks in beide Richtungen gesetzt
  (`bkp-261-aufzuege.md` ↔ `sia-500-2009.md`).
- **Promotion:** keine — alle vier Artikel bleiben `status: emerging` (keine
  unabhängige Zweitquelle, Rule 260714).
- Report: `outputs/2026-07-28_destillat-lauf2-kurator.md`. Keine neue Destillation
  in diesem Lauf (reine Kuratierung, Budget-Disziplin Nachtschicht).

## 2026-07-28 — Vier Artikel destilliert (Destillat-Stufe, Fliessarbeit-Lauf)
- **8 P1-Positionen `[t]` abgearbeitet** aus dem Inventar (BKP 225, 233, 260/261, 272),
  4 Artikel geschrieben (alle `status: emerging`), 4 Inventarzeilen auf `[x]` gesetzt:
  - `wiki/pu-beschichtung-fassade.md` (BKP 225.3) aus `021230 Beschichtung PU.doc`
    (.doc via `textutil -convert txt`) — PU-Fassadenbeschichtung, Aufbau/Verarbeitung/
    Elastizitätsgrenzen, Stand 2002.
  - `wiki/erco-lichtplanung-grundlagen.md` (BKP 233) aus `de_erco_guide.pdf` — grosses
    Werk (435 Seiten laut PDF-Struktur, 62.6 MB), nur Seiten 1-20 (Kapitel Grundlagen:
    Geschichte, Sehen/Wahrnehmen) gelesen; Lesefortschritt im Artikel-Frontmatter
    `gelesen:` festgehalten, Rest offen für Folgeläufe (Multi-Run-Werk gemäss
    Destillat-Anweisung). Inventarzeile bleibt bewusst NICHT auf `[x]`, sondern wird
    im Kommentar als «Teil 1/n gelesen» geführt, da die Quelldatei weitere Läufe
    speist (s.u. Sonderbehandlung).
  - `wiki/bkp-261-aufzuege.md` (BKP 261, korrigiert von der ungenauen Archiv-Ordner-
    bezeichnung «260 Transportanlagen» — 260 ist laut BKP-2017-Liste nur die
    Übergangsposition) aus 5 Herstellerdatenblättern (AS Aufzüge Winner + Rollstuhl-
    Skizze, Garaventa Liftech VAN GOGH, Schindler 3100, Schmitt+Sohn SP): drei
    Systemtypen (MRL-Traktionsaufzug, Seilaufzug mit Maschinenraum, Sitzlift),
    Kennwerte-Tabellen, Barrierefreiheit/EN 81-70.
  - `wiki/chromstahltreppe-oberflaechen.md` (BKP 272) aus `020320 Chromstahltreppe.doc`
    (.doc via `textutil`) — 5 Oberflächenvarianten mit Preisrangfolge Stand 2002,
    Ausführungsrisiken (Anlauffarbe, Verzug, Abnutzung an Stufenkanten).
- **BKP-Codes gegen `references/bkp-2017/BKP-2017-Liste.md` verifiziert**, nicht aus
  Ordnernamen übernommen: Archiv-Ordner «260 Transportanlagen» → korrekt BKP 261
  Aufzüge (260 ist Übergangsposition der Hauptgruppe 26); «272 Metallbauarbeiten»
  ohne eigene Treppen-Subposition, daher generisch auf BKP 272 zitiert statt einen
  Subcode zu erfinden.
- `wiki/INDEX.md` (4 neue BKP-Sektionen 225/233/261/272) und `wiki/QUESTIONS.md`
  (3 neue offene Punkte: ERCO-Restkapitel, AS-Datierung nur aus Dateiname, EN 81-70
  nicht im Volltext geprüft) nachgeführt.
- Kein Fan-out, keine `AskUserQuestion` (Destillat-Stufe urteilt nicht über
  Status-Promotion und committet nicht — das macht die Kurator-Stufe).

## 2026-07-28 — Erster Artikel destilliert + Phase-0/1-Nacharbeit (Mac Mini Nachtschicht, 04:30-Lauf)
- **Phase 0 (Inventar) abgeschlossen:** alle 37 Gewerke-Sektionen erfasst (214 Dateien
  inventarisiert, zuvor 2/37). Vorlauf: drei fruehere Nachtlaeufe (01:44/02:14/03:32)
  hatten `destillat-lauf.sh` per `run_in_background` gestartet und die Session danach
  vorzeitig beendet ("warte auf Benachrichtigung") — das Skript ist Kindprozess der
  Dispatch-Session und stirbt beim Sessionende, Phase 1/2 kamen nie durch. Diesmal
  synchron im Vordergrund gefahren (kein Weiterreichen an eine kuenftige Session).
- **Phase 1 (Triage, Haiku) mit eng gesetztem Budget (0.50 USD) erneut budget-gekappt**
  nach 6 Positionen — genug fuer einen ersten Phase-2-Kandidaten.
- **Fehltriage entdeckt und korrigiert:** `233 Leuchten und Lampen/.../170123
  Leuchtenauswahl Nasszellen.pdf` war faelschlich als "P1 · Feuchtraum-Klassifizierung"
  eingestuft (Dateiname verleitet dazu) — tatsaechlich ein Katalog-Scrapbook mit
  Klebezetteln (Tic Light, Catellani+Smith, eintopf/etna von Martin Wallroth), keine
  IP-/Feuchtraum-Inhalte. Inventar auf `[-]` mit Begruendung korrigiert, kein Artikel
  daraus geschrieben. Lehre fuer kuenftige Triage-Laeufe: bei Scan-Dateien mit
  unspezifischem Dateinamen ("Leuchtenauswahl Nasszellen") ist der Inhalt keine
  verlaessliche Ableitung aus dem Namen allein.
- **Artikel `wiki/dachbegruenung-systeme.md` geschrieben** (status `emerging`) aus
  `224 Bedachungsarbeiten/020426 Dachbegruenung.doc` (Materialrecherche Architekturbuero
  Christian Kerez Zuerich, Projekt Eschenbach, Stand Dez. 2001/Jan. 2002): drei
  CH-Anbieter fuer Dachbegruenungssysteme (CONTEC/NOVAFIOR, FORMTECH/FORMFLOR,
  Getrag/Optigrün) mit Extensive/Intensive-Kriterienlogik. Alle Einzelangaben als
  23-jaehrig unverifiziert gekennzeichnet (Datumsstempel-Pflicht KB-CLAUDE.md); der
  Wert liegt in der Kriteriensystematik, nicht in den Kontaktdaten. `.doc`-Extraktion
  via `textutil -convert txt` (macOS), da Read-Tool kein natives `.doc` liest.
  `wiki/INDEX.md` (BKP-224-Sektion) und `wiki/QUESTIONS.md` (fehlende aktuelle
  Marktuebersicht als offener Punkt) nachgefuehrt.
- **Inventar-Stand danach:** 214 inventarisiert, davon 1 destilliert (`[x]`), 5 triagiert
  offen (`[t]`, P1/P3-Kandidaten fuer den naechsten Phase-2-Lauf), 134 uebersprungen
  (`[-]`, Sektion 0 Kostenplanung), 74 weiterhin offen (`[ ]`).
- Kein Fan-out, kein zusaetzlicher Subagent aus dieser Session heraus; Budget dieses
  Zyklus ca. 3.4 USD von 5 USD (inkl. der beiden budget-gekappten Sub-Laeufe).

## 2026-07-28 — Korpus-Spec geschrieben (Mac Mini Nachtschicht, 01:30-Lauf)
- `skills/wissens-destillat/specs/bauprodukte-spec.md` erstellt (Skill `wissens-destillat`
  verlangt: kein Destillat ohne Spec, erster Lauf schreibt sie und endet danach).
- Ziel, Artikelschnitt und Bewertungskriterien direkt aus der bereits vollständigen
  `CLAUDE.md` verdichtet (kein Widerspruch, keine Neuerfindung).
- **Goldstandard bestimmt:** `wissen/normen/wiki/en-520-gipsplattentypen.md` (kompakter
  Produktgattungs-Artikel, Klassifizierungstabelle + Praxisregeln + Fundstellen-Disziplin
  bei fehlendem Norm-Volltext).
- **Abgrenzung präzisiert:** die erste inventarisierte Sektion «0 nach BKP Nr» ist laut
  Stichprobe kein Bauprodukte-Material, sondern CRB-/SIA-451-Kostenplanungsschulung —
  gehört fachlich zu `grobkosten`/`normen`, nicht zu diesem KB. In der Spec als Ausnahme
  vermerkt statt beim nächsten Destillat-Lauf fälschlich hier verarbeitet zu werden.
- Kein Destillat-Lauf (Phasen 0-2) in diesem Zyklus — das ist gemäss SKILL.md der nächste
  Schritt eines Folgelaufs. Budget bewusst nicht auf einen unvollständigen Pipeline-Start
  verwendet (Nachtschicht-Budgetdisziplin).

## 2026-07-28 — KB angelegt
- Skelett durch Skill `wissens-destillat` erstellt (Korpus 1 der Korpus-Queue).
- Quelle registriert: `/Volumes/daten/03 Bauprodukte_BKP` (37 Gewerke-Sektionen).
- Inventar Phase 0 gestartet: 2 von 37 Sektionen erfasst, 134 Dateien offen.
- Noch keine Artikel — der erste Destillat-Lauf schreibt zuerst die Korpus-Spec.

## 2026-08-11 (Nachtschicht 05:30) — ERCO-Ratgeber: Fassade abgeschlossen, Vegetation begonnen
- `de_erco_guide.pdf` S. 240 auf S. 250 fortgeschrieben: Unterkapitel «Fassade» vollstaendig
  (Lochfassade-Rest, Bandfassade, Fassade transparent), Unterkapitel «Vegetation» begonnen
  (Baeume: Beleuchtungsarten/-wachstum/-jahreszeit angelesen bis S. 250).
- `wiki/erco-lichtplanung-grundlagen.md` erweitert (Frontmatter `gelesen:` auf S. 1-250,
  neue Abschnitte, Offene Punkte nachgefuehrt), `training/PROGRAMM.md` Stand aktualisiert.
- energie/grobkosten heute nicht erreichbar: OneDrive-Mount defekt (Symlink-Ziel
  `OneDrive-FreigegebeneBibliotheken–...–JANS` existiert nicht, mehrere doppelte Mountpunkte
  unter `~/Library/CloudStorage`, einer haengt bei `ls` >30s) — Befund in
  `wissen/energie/wiki/QUESTIONS.md` und `wissen/grobkosten/wiki/QUESTIONS.md` nachzutragen.
