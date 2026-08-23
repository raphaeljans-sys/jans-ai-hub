# Projekt-Stammdaten — 2619 Universitäts-Kinderspital Zürich

Angelegt 23.08.2026 beim LV Plattenarbeiten Nasszellen. Bis dahin führte der Skill für dieses
Projekt keine Stammdatei, obwohl mehrere Lose ausgeschrieben waren — die Bauherrschaft musste
jedes Mal neu aus Alt-Erzeugnissen verifiziert werden.

| Feld | Wert (verbindlich, in jedem Los identisch verwenden) |
|---|---|
| Projektnummer | 2619 |
| Objekt | Universitäts-Kinderspital Zürich, Lenggstrasse 30, 8008 Zürich. Projektteil je Los bezeichnen, u.a. Akutspital sowie PPTS-Umnutzung Etage B (Bezeichnung aus dem Projekt-Register, am Projektordner noch gegenzulesen) |
| Bauherrschaft | **Universitäts-Kinderspital Zürich – Eleonorenstiftung, Lenggstrasse 30, 8008 Zürich** |
| Bauleitung | Raphael Jans Architekten ETH/SIA, Grubenstrasse 37, 8045 Zürich |
| Projektablage (intern, inkl. MD) | `AR - 01 Projekte/2619_KINDERSPITAL/03_BKP/<LOS-Gewerk>/` |
| Projektablage (geteilt, OHNE MD) | `JANS - 2619-KISPI - Dokumente/2 Umbauprojekt Neu PPTS/33.04 BKP/<LOS-Gewerk>/` |
| AI-Hub-Output | `output/ausschreibung/2619-kispi-<gewerk>/` (NAS) |
| Besichtigungstermin | pro Los festzulegen, projektweit **nicht** fix |

## Verbindlich für jedes Submissionspaket 2619

- **Doppelte Ablage mit Reduktion** (Rule `auto-verbesserungen` 260813): Original inklusive
  MD-Quelldatei in die interne Bibliothek, Spiegelung mit gleicher Ordnerstruktur und gleichen
  Namensstämmen, aber **nur DOCX/PDF/Grafiken**, in die für alle Projektbeteiligten sichtbare
  Bibliothek `JANS - 2619-KISPI - Dokumente`. MD-Arbeitsdateien bleiben privat.
- **Öffentlicher Bauherr.** Die «Gleichwertig»-Klausel gehört in jedes Begleitschreiben und in
  jedes LV (IVöB/BöB). Submissionsunterlagen neutral formulieren, keine Angabe zur Vergabeart,
  nie offenlegen, wer oder wie viele eingeladen sind (Regel 260626).
- **Bauen im Betrieb.** Laufender Spitalbetrieb. Emissionen, Zugänge, Arbeitszeiten und
  Etappierung gehören als eigener Vorbemerkungs-Punkt in jedes LV.

## Los-Nomenklatur (bürointern, belegt)

Die Lose tragen die Form `LOS <BKP>.<lfd>`, zum Beispiel `LOS_281.00 Bodenbeläge Grundlagen`,
`LOS 281.21 Bodenbeläge Linoleum/Kautschuk`, `LOS 274.01`. **Diese Nummern sind bürointerne
Los-Nummern, keine BKP-2017-Codes** (Rule `bkp-2017-referenz`, Abschnitt «Bürointerne
Los-Nummern sind keine BKP-Codes»). Im LV-Titel steht der echte BKP-2017-Code.

## Bereits ausgeschriebene beziehungsweise laufende Lose

- Gastroküche Therapiestation (Vergabeempfehlung 13.05.2026) — Bauherrschaft dort bestätigt.
- LOS 281.21 Bodenbeläge Linoleum/Kautschuk (Inevo AG, vormals Pfister Professional AG).
- LOS 274.01 innere Verglasung.
- **Plattenarbeiten Nasszellen, BKP 281.6 / 282.4 — LV vom 23.08.2026, bürointerne Los-Nummer
  noch nicht vergeben.**

## Quelle der Verifikation

Bauherrschaft aus `wissen/auflagebereinigung/outputs/2026-06-04_2619-kispi-planer-kontakte.md`
(«Universitäts-Kinderspital Zürich – Eleonorenstiftung, Lenggstrasse 30, 8008 Zürich»),
gegengelesen an den Vergabeempfehlungs-Generatoren `skills/ausschreibung/beispiele/`
(`260513_build_vergabeempfehlung_KISPI*.js`, Stammzeile «Bauherr»). Ablagepfade aus Rule
`auto-verbesserungen` 260813 und `logbuch/fristen.md`.


---

## Ergänzung 23.08.2026 (Session LOS 281.21 Linoleum Therapieküche)

Additiv angefügt, nachdem diese Datei zeitgleich von zwei Läufen angelegt wurde. Der Teil
oberhalb stammt aus dem Lauf «Plattenarbeiten Nasszellen» und ist unverändert.

### Ansprechpersonen Bauherrschaft und Fachplanung

Belegt aus dem Planblatt `S-ARC_1341_GR-01_41_GRUNDR-OG1-41-UMB`, Stand 17.08.2026.

| Rolle | Person | Kontakt |
|---|---|---|
| Bauherr, Leitung Technischer Dienst | Albin Spahic | albin.spahic@kispi.uzh.ch, +41 44 249 31 50 |
| Bauherr, Stv. Leitung TD / Teamleitung HLKKS | Michael Spörri | michael.spoerri@kispi.uzh.ch |
| Fachkoordination GT, HLK, SAN, ELE | Gruner AG, St. Jakobs-Strasse 199, 4020 Basel | +41 61 317 61 61 |
| Sanitärplanung (Gruner) | Mustafa Eren | mustafa.eren@gruner.ch |
| QS-Brandschutz (Gruner) | Jens Ziegel | jens.ziegel@gruner.ch |
| Weitere Fachplanung (Gruner) | Benjamin Kübler, Yasarcan Cetin, Cekdar Duran | vorname.nachname@gruner.ch |

Anrede-Register je Person: Rule `anrede-kontakte.md` — Spahic, Spörri, Ziegel und Eren sind
dort belegt geführt. Nicht raten.

### Phasen-Unterordner je Los (am Original gemessen)

Die Lose des Projekts tragen die Phasenordner **ohne** Projektnummer-Präfix, abweichend vom
Standard in `SKILL.md`: `<BKP> 01 Grundlagen · 02 Richtofferten · 03 AS versand ·
04 Offerte UN · 05 Vergabe · 06 WV · 08 Korrespondenz · 10 Rechnungen, NT, Regie · 11 SR`.
Gemessen 23.08.2026 am Los `LOS_281.63 Plattenarbeiten Süd AG Keramik GmbH`, dessen
Unterordner `281.63 03 AS versand` heisst. Neue Lose diesem Muster folgen lassen.

### Bodenbeläge PPTS 1. OG — massgebende Festlegung

Grundlage ist die Abklärung **«Konstruktionsaufbau Bodenbelag und Materialisierung»,
Raphael Jans, 21.08.2026**, abgelegt in `LOS_281.00 Bodenbeläge Grundlagen/JANS Factsheet/`.

| Belag | Räume | Aufbau ab Betondecke, total 150 mm |
|---|---|---|
| **FB70** Steinzeug 100 × 100 × 6.5 mm, R10/R10b, Hohlkehlsockel | 2.035, 2.036 WC D/H | 8 mm Fliesen im Dünnbett, 2 mm Ausgleich, 90 mm UB CT C30-F5 mit FBH, Trennlage, 50 mm Trittschall |
| **FB71** wie FB70, aber 50 × 50 mm, im Gefälle 2 % | 2.332, 2.333, 2.334, 2.337, 2.335, 2.336 | wie FB70 |
| **FB50** Linoleum antistatisch, 2.5 mm, PUR matt, R10, Bahnen, Stösse verschweisst | **2.339 Küche, 2.338 Hauswirtschaftsraum** | 5 mm Belagszone, 85 mm UB CT C30-F5 mit FBH, Trennlage, 60 mm Trittschall |
| **FB56** gewebter Vinylbelag Bolon BKB Sisal Plain Sand, Bfl-s1, DoP 0402-CPR-419004 | Wohnräume, Flure, Gruppenräume, Behandlung, Besprechung | 5 mm Belagszone, 85 mm UB, Trennlage, 60 mm Trittschall |

⚠ **Zwei Diskrepanzen zum Ausführungsgrundriss vom 17.08.2026**, beide zugunsten der jüngeren
Abklärung vom 21.08. aufgelöst und im LV der Submission 281.21 als Vorbehalt benannt: der
Küchenbereich trägt im Plan den Plattenaufbau FB70, der Raumstempel 2.338 trägt FB56. Eine
Planrevision steht aus. Wer ein weiteres Bodenbelagslos schreibt, prüft zuerst, ob sie vorliegt.

⚠ Die Belagszone ist im Bauteilkatalog mit 5 mm angesetzt. Bei der spezifizierten Fliese von
6.5 mm beziehungsweise dem Linoleum von 2.5 mm ist die Estrichdicke anzupassen.

Raumflächen aus dem Grundriss: 2.338 Hauswirtschaftsraum **NF 10.21 m²** (Raumstempel),
2.339 Küche **ca. 32 m²** (Raumbeschriftung, kein Raumstempel im Plan — vor der Vergabe
am Bau prüfen).

### Unternehmer LOS 281.21 Bodenbeläge Linoleum und Kautschuk

**INEVO AG**, Bernstrasse Ost 49, 5034 Suhr; ausführende Filiale Hochbordstrasse 4,
8600 Dübendorf, +41 44 517 50 80. Vormals Pfister Professional AG, Rebranding 2022/23,
gleicher Betrieb — **der Ordnername in der Projektablage trägt noch den alten Namen**.
Ansprechperson **Mischa Baldauf**, mischa.baldauf@inevo.ch, +41 44 517 50 81; daneben
Joël Futterer, joel.futterer@inevo.ch. Werkvertrag 13.09.2021, Auftragsnummer 281201,
Auftragssumme CHF 1'984'974.00; Baugarantie Helvetia Police 4.001.311.224-684.648 bis
31.07.2029, seit 01.08.2026 auf der reduzierten Stufe CHF 99'249.00.

**Tot und nicht mehr zu verwenden:** Hochbordstrasse 24, +41 44 823 95 35, sämtliche
Adressen auf @pfister-professional.ch und @pfister.ch.

### Weiteres ausgeschriebenes Los

- **LOS 281.21 Bodenbeläge Linoleum, Therapieküche 2.339 und Hauswirtschaftsraum 2.338**
  (BKP 281.2), Dossier vom 23.08.2026 an die INEVO AG, Eingabefrist 11.09.2026, ca. 42 m².
- **LOS 273.35 Küchenbau** — Röthlisberger AG / Emmeküche, S. Lanz und T. Inniger;
  Rahmenbudget der Bauherrschaft CHF 70'000 exkl. MwSt.
