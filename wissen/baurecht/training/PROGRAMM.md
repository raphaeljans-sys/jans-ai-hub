---
name: PROGRAMM
beschreibung: Trainingsprogramm fuer das Buch-Lernen des Baurecht-Harness aus «Zuercher Planungs- und Baurecht, Band 1+2». Erschliesst 780 Screenshot-Doppelseiten Lauf um Lauf, verdichtet ins Wiki, uebt Anwendungsfaelle.
frequenz_phase1: taeglich (Aufbau, ~erste 4 Wochen)
frequenz_phase2: alle 2 Tage (Festigung)
frequenz_phase3: woechentlich (Erhaltung + Anwendungs-Drills)
scheduled_task: baurecht-buch-training
last_updated: 2026-07-02
---

# Trainingsprogramm — Buch-Lernen Baurecht-Harness

**Ziel:** Das Standardwerk **Fritzsche/Boesch/Wipf/Kunz, «Zuercher Planungs- und Baurecht»,
Band 1+2** (6. Aufl. 2019) zum **integralen Expertenwissen** des Baurecht-Harness machen —
sodass jede baurechtliche Frage und jeder Bericht auf diesem Fundus aufsetzt und mit
**Band/Kapitel/Seite** belegt antwortet. Die schiere Menge (1550 S. / 780 Doppelseiten) wird
ueber wiederkehrende Laeufe in zitierbare Destillate und verdichtete Wiki-Artikel ueberfuehrt.

## Lernkurve: anfangs haeufig, dann ausduennend (verbindlich)

Damit der Wissenszuwachs schnell anlaeuft, ist die Frequenz **degressiv**:

| Phase | Zeitraum | Frequenz | Fokus |
|-------|----------|----------|-------|
| **1 — Aufbau** | erste ~4 Wochen | **taeglich** | Erschliessung P1-Kapitel (14,16,15,17,20,6,7), max. Tempo |
| **2 — Vertiefung** | danach ~6 Wochen | **alle 2 Tage** | restliche Kapitel + Querverlinkung Wiki |
| **3 — Festigung** | dauerhaft | **woechentlich** | Anwendungs-Drills, Aktualisierung, Luecken |

Die Frequenz wird ueber den Scheduled Task `baurecht-buch-training` gesteuert; beim
Phasenwechsel die `cronExpression` anpassen (taeglich `0 7 * * *` → alle 2 Tage `0 7 */2 * *`
→ woechentlich `0 7 * * 1`). Den Phasenstand unten im Tracker fuehren.

## Umfang pro Lauf — drei feste Bloecke

1. **TRANSFER (Pflicht):** **8-15 Doppelseiten** (= 16-30 Buchseiten) aus dem aktuellen
   Prioritaets-Kapitel (`curriculum.md`, Reihenfolge) lesen und in ein Kapitel-Destillat unter
   `buecher/band-<n>/<kap>-<slug>.md` ueberfuehren. Echte Seitenzahl aus der Reader-Fussnote
   uebernehmen, `seiten-inventar.md` auf `[x]` setzen + Destillat verlinken.
2. **VERDICHTUNG (Pflicht):** aus den neuen Destillaten **mindestens 1 `wiki/`-Themenartikel**
   neu schreiben oder schaerfen (mit `[[backlinks]]`, Status heben), und `wiki/QUESTIONS.md`
   um neu beantwortete/aufgeworfene Fragen nachfuehren.
3. **ANWENDUNG / DRILL (Pflicht):** **1 Anwendungsfall** durchrechnen oder eine
   Selbst-Prueffrage beantworten (siehe «Trainingsmodelle») — der Lern-Transfer, der aus
   Wissen Koennen macht. Ergebnis in `outputs/` ablegen.

## Trainingsmodelle (wie der Harness praeziser wird)

Nicht nur lesen — **anwenden und pruefen**. Jeder Lauf nutzt mindestens eines:

- **A · Frage→Beleg-Drill:** Nimm eine Frage aus `wiki/QUESTIONS.md` oder eine typische
  Buerofrage und beantworte sie **nur** mit Buchbeleg (Band/Seite/§). Fehlt der Beleg → als
  Wissensluecke markieren und im naechsten TRANSFER gezielt schliessen.
- **B · Fall-Nachrechnung:** Realer JANS-Fall (z.B. Dachausbau Wangen) — rechne die
  einschlaegige Groesse (AZ, Mehrflaeche, Gebaeudehoehe, Abstand) Schritt fuer Schritt mit
  Formel + § vor; vergleiche mit dem Buch-Beispielfall.
- **C · Selbsttest (Karteikarte):** Aus jedem neuen Destillat 2-3 Q/A-Paare bilden und in
  `training/drills.md` sammeln; alte Karten stichprobenartig wiederholen (spaced repetition).
- **D · Gegenprobe/Adversarial:** Eine soeben gegebene Antwort kritisch hinterfragen — stimmt
  der Paragraph? gilt er noch (amtlicher Volltext)? gibt es Gegenpraxis? Korrektur dokumentieren.
- **E · Quervernetzung:** Neues Wissen mit bestehenden Wiki-Artikeln + amtlichen Volltexten
  (`raw/*_amtlich_zh_*.md`) verknuepfen; Widersprueche in `QUESTIONS.md`.

## Ablauf eines Laufs (immer gleich)

1. **Stand lesen:** `training/curriculum.md` (naechstes P-Kapitel), `buecher/seiten-inventar.md`
   (offene Shots), `buecher/INDEX.md`, `wiki/QUESTIONS.md`, letzter `outputs/`-Report.
2. **TRANSFER:** 8-15 Doppelseiten lesen (Read mit dem Screenshot-Pfad; Dateinamen aus dem
   Inventar). Pro Kapitel ein Destillat fuehren/erweitern (Format siehe `buecher/CLAUDE.md`).
   Quelle treu, **nichts erfinden**, eigene Einordnung als «Anwendungs-Transfer JANS» markieren.
3. **VERDICHTUNG:** `wiki/`-Artikel + `wiki/INDEX.md` + `wiki/QUESTIONS.md` nachfuehren.
4. **ANWENDUNG:** ein Trainingsmodell (A-E) ausfuehren, Ergebnis in `outputs/`.
5. **Register:** `seiten-inventar.md` Status, `curriculum.md` Status, `buecher/INDEX.md` Abdeckung.
6. **Output:** `outputs/<JJJJ-MM-TT>_buch-runN.md` — welche Seiten distilliert, welcher Wiki-
   Artikel gewachsen, welcher Drill, was offen, **was als naechstes**.
7. **CHANGELOG** (`wissen/baurecht/CHANGELOG.md`) ergaenzen (neueste zuoberst).
8. **Sichern:** Repo committen + pushen (Rules `git-auto-push` / `sync-kanonische-quelle`).

## Leitplanken (Qualitaet)

- **Nie erfinden** (§, Zahl, Schwellenwert) — Unsicheres bleibt `speculative` + Vermerk
  (Rule `identifikatoren-verifizieren`).
- **Seitentreue:** echte Buchseite belegen (nicht die geschaetzte Inventar-Seite).
- **Kanton ZH:** das Werk ist Zuercher Recht; SZ-Faelle nur sinngemaess, immer kennzeichnen.
- **Kompoundieren:** jeder Lauf baut auf den vorigen; Destillate/Wiki wachsen, nicht duplizieren.
- **Brandschutz (Kap. 18)** nur Querverweis auf Skill `brandschutz` (kein Doppelaufbau).
- **Echte Umlaute ae/oe/ue → ä/ö/ü, Schweizer Hochdeutsch, kein ß.**

## Fortschritts-Tracker

- **Phase:** **2 (Vertiefung, alle 2 Tage) — Start 2026-06-21.** Mit Run 12 (Kap. 7 Teil 2) sind
  **ALLE P1-Kapitel (14/16/15/17/20/6/7) im Kern erfasst** → Phase-1-Aufbau (taeglich) abgeschlossen.
  **Cron auf alle 2 Tage** (`30 7 */2 * *`) heruntergetaktet per update_scheduled_task (2026-06-21).
  Fokus Phase 2: restliche Kapitel (8, 12/13, 9-Rest, 10, 1-5, 11, 19, 21-23) + Restschulden der
  P1-Kapitel + Querverlinkung/Verdichtung Wiki. Spaeter Phase 3 (woechentlich, `30 7 * * 1`).
- **Seiten distilliert:** ~700 / 1550 (~350 Doppelseiten). Run 18 (2026-07-02, Forcierung): +46
  Doppelseiten (Kap. 2 T3 S.170-204 / Kap. 3 T1 S.208-239 / Kap. 6 T2 S.402-421) → **Kap. 6
  vollstaendig, Kap. 2 weitgehend, Kap. 3 eroeffnet**. Ausfuehrlicher Vorstand:
  Band 2 weitgehend komplett: Kap. 11/13/14/15
  (inkl. § 274, nur 15.13 offen)/16 (T1+T2)/17 (T1+T2)/19/20 (inkl. § 357 Abs. 4)/21/22/23 + Kap. 12 (T1-T3,
  bis S.769; Teil 4 §236-Rest/Abfall/Altlasten offen); Band 1 **Kap. 1 VOLLSTAENDIG** + **Kap. 2 Teil 1+2**
  (T2 = 2.3 Nutzungsplanung/Zonenarten, Shot 76 offen) + Kap. 6 + 9 Kernbereich + **Kap. 7 VOLLSTAENDIG** +
  **Kap. 8 Teil 1**. Run 17 (regulaer) 2026-06-30: +12 Doppelseiten Kap. 2 Teil 2.
- **Kapitel-Destillate:** 30 Buch-Destillate (Run 18 neu: 02-T3, 03-T1, 06-T2) (Band 1: Kap. 1/2×3/3/6×2/7×2/8/9; Band 2: Kap. 11/12 (T1+T2/T3)/13/
  14/15×4-Teile/16 (T1+T2)/17 (T1+T2)/19/20/21/22/23; alle `emerging`).
- **Wiki:** 17 Artikel (geschaerft [[raumplanung-und-gestaltung]] 2026-06-30 Run 17: **Zonenarten/BZO-
  Platzhalter gefuellt** — numerus clausus § 48 Abs. 2 PBG, Typ-Katalog, Neueinzonung Art. 15 RPG,
  Arealueberbauung §§ 69-73; NEU [[grundlagen-planungs-baurecht]] 2026-06-30 `emerging` (oeff./privates Recht/SIA-
  Normen/Verfassungsgrundsaetze); geschaerft [[raumplanung-und-gestaltung]] 2026-06-30 (Planungsstufen-Belege)
  + [[baureife-und-erschliessung]] 2026-06-30 (rechtl. Sicherung §237 Abs.4 + Versorgung/Entsorgung §236);
  geschaerft [[baureife-und-erschliessung]] 2026-06-28 `emerging` (Zugangsarten/OEV);
  [[bauausfuehrung-und-baukontrolle]] 2026-06-22 `emerging`;
  [[baurechtlicher-vorentscheid-und-voranfrage]] 2026-06-21 `emerging`;
  [[baubewilligungsverfahren]] korrigiert: Baubewilligungsfrist nicht verlaengerbar).
- **Welle 1 (Forcierung) 2026-06-29:** in EINER parallelen Welle 10 Destillate Band 2 geschrieben
  (von parallelen Agenten), Buchhaltung zentral nachgefuehrt: **Kap. 11** (S. 686-704, §§218-232 PBG +
  Hammerschlagsrecht §§229/230) · **Kap. 13 Teil 1** (S. 810-857, §238 Aesthetik-Generalklausel + Solar
  Art.18a RPG) · **Kap. 16 Teil 2** (S. 1154-1193, Gebaeude-/Firsthoehe §§278-281, §292/Art.7a BO
  «Kaeseglocke», §5 ABV gewachsener Boden) · **Kap. 17 Teil 2** (S. 1256-1303, §§295-298 PBG Heizung/
  Fernwaerme, §4 ABV, §§239a/239b BehiG, Schutzraeume) · **Kap. 19** (S. 1357-1403, USG/LRV/LSV, Laerm
  ES I-IV, Art.31/32 LSV, SIA 181) · **Kap. 20 Rest** (S. 1450-1455, §357 Abs.4 Verbesserungen) · **Kap. 15
  §274** (S. 1112-1123, Grenzbaurecht + §27 Abs.2 ABV) · **Kap. 21** (S. 1459-1503, Art.16/16a/24/24a-e RPG,
  Art.42 RPV 30%/100m², Stichtag 1.7.1972) · **Kap. 22** (S. 1517-1534, Nachbarrecht ZGB Art.679/684/685 ff.
  + §§169-178 EG ZGB Pflanzenabstaende) · **Kap. 23** (S. 1537-1549, Glossar mit §-Belegen). Alle
  `emerging`. Damit **Band 2 weitgehend komplett**; Tail = Band 1 Kap. 1-5/10 + Kap. 12-Rest §236.
- **Letzter Lauf:** Run 18, 2026-07-02 (Forcierung, 3 Kapitelteile parallel, 46 Doppelseiten) —
  **Kap. 2 Teil 3** (S.170-204, Shots 76+86-104): Sondernutzung/**Gestaltungsplan §§83-89 PBG** (§83 ersetzt
  Grundordnung; privat **2/3-Quorum §85 Abs.2**; Aufhebung 5 J. §§82/87), **Gestaltungsplanpflicht §48 Abs.3**,
  **preisguenstiger Wohnraum §49b**, **Verfahren Nutzungsplanung** (Auflage 60 T Art.4 RPG/§7, **kant.
  Genehmigung §89/Art.26 Abs.3 RPG konstitutiv**), **einmaliger Rechtsschutz**; **Kap. 3 Teil 1** (S.208-239,
  Shots 105-120): **Erschliessungsarten** Grund/Grob/Fein (Art.19 RPG/Art.4-5 WEG), **Erschliessungspflicht
  Gemeinde 15 J.** (Selbsterschliessung/Bevorschussung Art.19 Abs.3 RPG), **Baulinien §§96 ff./Werkplan
  §§114-119/vorsorgl. Bauverbot §§120-122**, StrG-Mehrwertbeitraege §62; **Kap. 6 Teil 2** (S.402-421, Shots
  202-211): **Anzeigeverfahren §325 PBG/§§13-15 BVV** + **private Kontrolle §§4-7 BBV I** → **Kap. 6
  vollstaendig**. Neue Destillate [[band-1/02-nutzungsplanung-sondernutzung-verfahren-teil3]] /
  [[band-1/03-erschliessung-landsicherung-teil1]] / [[band-1/06-baurechtliches-verfahren-teil2]]. Wiki
  geschaerft: [[raumplanung-und-gestaltung]] + [[baureife-und-erschliessung]] + [[baubewilligungsverfahren]]
  (**Modell-D-Korrektur** §315: 20 statt 30 Tage). Modell C (11) + A (1). Report `outputs/2026-07-02_buch-run18.md`.
  OFFEN: Kap. 3 Teil 2 (Landumlegung ab S.238), Kap. 5/10, Kap. 12 T4.
- **Lauf davor:** Run 17, 2026-06-30 (regulaer, Kap. 2 Teil 2, 12 Doppelseiten) — **2.3 Nutzungsplanung/
  Zonenarten** (S.144-169, Shots 73-85 ohne 76): grundeigentuemerverbindlich Art.21 RPG, **numerus clausus
  Bauzonentypen §48 Abs.2 PBG** (Kern §50/Quartiererhaltung §50a/Zentrum §51/Wohn §52/Industrie-Gewerbe §56
  [Heime ausgeschlossen]/oeff. Bauten §60/Erholung §61/Freihalte §39,62/Reserve §65/**Weiler Art.33 RPV
  ≥10 Geb.**), **Neueinzonung Art.15 Abs.4 RPG** (4 kumulativ), **Arealueberbauung §§69-73 PBG** («Ringling»
  BGer 1C_313/2015), Grundzonenplan 1:5000/Ergaenzungsplaene §§4/10 VDNP, Wald §2 WaG-ZH (800m²/12m/20J),
  Grundwasserschutz S1/S2/S3. Destillat [[band-1/02-nutzungsplanung-zonenarten-teil2]], Wiki
  [[raumplanung-und-gestaltung]] geschaerft (Zonenarten-Platzhalter gefuellt). Modell C (6) + A (1).
  Report `outputs/2026-06-30_buch-run17.md`. OFFEN: Shot 76/S.150-151 (OneDrive-I/O-Fehler) + Kap. 2 Teil 3
  Sondernutzungs-/Gestaltungsplan §§83 ff. PBG.
- **Lauf davor:** Run 16, 2026-06-30 (Forcierung, 3 Kapitelteile parallel, 46 Doppelseiten) —
  **Kap. 1 Grundlagen VOLLSTAENDIG** (S.80-110, Shots 41-56: oeff./privates Baurecht §317 PBG,
  Rechtsquellen, SIA-Normen-Verbindlichkeit §3 Abs.12 BBV I/§360 Abs.3 PBG, Verfassungsgrundsaetze,
  intertemporales Recht §318), **Kap. 2 Teil 1** (S.112-143, Shots 57-72: Ziele Art.1 RPG, 15-J-Bauzone
  Art.15 RPG, Koordination Art.25a RPG, Planungszone §346, Richtplan behoerdenverbindlich Art.9 RPG/§19 PBG),
  **Kap. 12 Teil 3** (S.742-769, Shots 373-386: rechtl. Sicherung §237 Abs.4, Wasser/Energie §236/Loeschwasser
  §16 FeuerwehrV, Abwasser GSchG/Kanalisationsanschluss Art.17). Neues Wiki [[grundlagen-planungs-baurecht]],
  geschaerft [[raumplanung-und-gestaltung]] + [[baureife-und-erschliessung]]. EV (§11/12) als geltend belegt
  (Buch S.750). Modell C (6) + A (1). Report `outputs/2026-06-30_buch-run16.md`.
- **Lauf davor (regulaer):** Run 15, 2026-06-28 — **Kap. 12 Teil 2 (Zugaenglichkeit-Detail/OEV)**, Shots 364-372,
  S. 724-741 (9 Doppelseiten): **12.3.3 Technische Anforderungen/Zugangsarten § 2 Abs. 1 ZN** + die
  **Anhang-ZN-Tabelle** (S. 726: Breite/Radius/lichte Hoehe je WE-Zahl; Kriterium Wohneinheiten =
  baulich Moegliches VB.2002.00273), **Kehrplatz** (Stichstrasse, VSS-Norm SN 640 052), **Erhoehung
  Grenzwerte § 4 Abs. 2 ZN** (dichte+OEV-gute Bebauung), **Fussgaengerschutz** (Bankett 30 cm/Trottoir
  1 m), **Erleichterungen § 11 ZN / wichtige Gruende § 360 Abs. 3 PBG / letzte Bauluecke**,
  **Umweltschutzrecht** (Art. 24 Abs. 2 USG/Art. 30 LSV/§ 128 PBG), **12.3.4 groessere Ueberbauungen**
  (Gleisanschluesse § 237 Abs. 1, Einkaufszentren 2000 m² § 12 BBV II, Schwertransporte § 227 PBG),
  **12.3.5 Erreichbarkeit OEV § 237 Abs. 1 Satz 2 PBG** (kein Erschliessungsanspruch URP 2000/2002,
  ABER Pflicht ab «groesserer Ueberbauung» 300 Bew./Arb./Ausb. → Haltestelle § 4 Abs. 1 AngebotsV,
  § 18 PVG). Destillat [[band-2/12-baureife]] erweitert (Anhang-ZN-Tabelle als Markdown), Wiki
  [[baureife-und-erschliessung]] geschaerft, **Modell C** 6 Karten + **Modell A** 1 Drill. Restschuld
  Kap. 12: Wasser/Energie § 236 + Abwasser/Abfall/Altlasten ab S. 742 / Shot 373.
- **Lauf davor:** Run 14, 2026-06-26 — **Kap. 12 Teil 1 (Baureife)**, Shots 355-363, S. 707-723
  (9 Doppelseiten): **12.1 Allgemeines**, **12.2 Planungsrechtliche Baureife § 234** (negative Vorwirkung,
  Abgrenzung § 150/§ 264/Planungszone § 346 3+2 J./§ 120), **12.3 Zugaenglichkeit Teil 1** (§§ 234-237,
  Erreichbarkeit 80/40 m, Notzufahrt 3 m/16 t § 3 ZN). Neues Destillat [[band-2/12-baureife]], neuer
  Wiki-Artikel [[baureife-und-erschliessung]]. (Run 13, 2026-06-22: Kap. 8 Teil 1; Run 12, 2026-06-21:
  Kap. 7 Teil 2 → Phasenwechsel Phase 2.)
- **⚠ Run 19 (2026-07-02) ABGEBROCHEN — TCC-Blockade:** Quell-Screenshots im OneDrive-CloudStorage-Ordner nicht lesbar (`cat`/`cp`/`xattr` → «Operation not permitted», auch ohne Sandbox; `stat`/`ls` OK, Dateien materialisiert, OneDrive online). Der ausfuehrende Prozess hat keinen **Festplattenvollzugriff** auf den geschuetzten CloudStorage-Ort (analog launchd→SMB). **Fix noetig, bevor der naechste TRANSFER laufen kann** — Report `outputs/2026-07-02_buch-run19-BLOCKED.md`. Kein Distillat geschrieben, Register unveraendert; +1 belegte Modell-A-Karte aus vorhandenem Destillat.
- **Naechster Lauf:** **Band-1-Tail weiter** — **Kap. 3 Teil 2** (Quartierplan 3.9 §§125/126/237 + Grenzbereinigung/Landumlegung/Gueterzusammenlegung ab S.238/Shot 121), **Kap. 5** (Entschaedigung, S.311), **Kap. 10** (widerrechtliche Bauten, S.609), **Kap. 12 Teil 4** (S.770-809 Altlasten Art.32c USG). *(erledigt Run 18: Kap. 2 T3 / Kap. 3 T1 / Kap. 6 T2.)* Alt-Notiz:  **Kap. 2 Teil 2 (HOHE Prio)** — S. 142 ff. / 2.3 Nutzungsplanung (Zonenarten/BZO/
  Sondernutzung/Quartierplan/Nutzungsplanverfahren), Shots ab 73; plus **Band-1-Tail** Kap. 3 (Erschliessung/
  Landumlegung, ab Shot 105/S. 207), Kap. 5 (Entschaedigung), Kap. 10 (widerrechtliche Bauten, S. 609);
  dazu **Kap. 12 Teil 4** (Band 2, S. 770-809: Anschlussgebuehren-Rest + Abfall/Kehricht + Altlasten
  Art. 32c USG — schliesst das Kapitel). Band-2-Restschulden nur noch klein (Kap. 13 §§239a/240/242/248,
  Kap. 15.13 Harmonisierungsvorlage, Kap. 16 «Umgebung», Kap. 17 Garagen §§37-39 BBV I, Kap. 19 ab Shot 706,
  Kap. 20 § 357 Abs. 5/§ 307, Kap. 21 Art.24d/24e/37a, Kap. 8 Rest S.510-534).
- **Restschuld Kap. 12 (Teil 4):** Anschlussgebuehren-Bemessung (Rest 12.5) + Beseitigung Abfall/Kehricht +
  belastete Standorte/Altlasten (Art. 32c USG/AltlV); **ab S. 770 / Shot 387** bis Kapitelende vor Kap. 13
  (S. 809). (12.3.6 rechtl. Sicherung + 12.4 Wasser/Energie §236 + 12.5 Abwasser bis S.769 erledigt Run 16.)
- **Restschuld Kap. 8:** 8.3 Sicherheit der Baustelle Detail (Bauherrenhaftung, Schutz Nachbargrundstuecke,
  Werkleitungen) + Kap.-Ende bis S. 534 (Shots 257-269).
- **Restschuld Kap. 20:** § 357 Abs. 4 (Verbesserungen) + Abs. 5 (Milderungen) + baupolizeiliche
  Missstaende (S. 1456 ff.) + Brandstattrecht § 307 PBG (S. 1457 ff.) — Shots ab 729.
- **Restschuld Kap. 14:** Mischrechnungsverbot + § 10/13 ABV (Shots 486-495) bei Gelegenheit.
- **Restschuld Kap. 15:** nur noch § 274 PBG (Grenzbaurecht/geschlossene Bauweise/Anbau) + § 27 Abs. 2 ABV — Shots ab 560, S. 1112 ff. (§§ 269-273 erledigt 2026-06-15/16).
- **Restschuld Kap. 16:** Gebaeude-/Firsthoehe, Dachgestaltung, Dachaufbauten/Lukarnen, Umgebung
  (Shots ab 581, S. 1154 ff.).
- **Restschuld Kap. 17:** Ausruestungen-Teil (Heizung/Klima/Elektro/Beförderungsanlagen § 4 ABV),
  §§ 295-298 PBG, Einstellraeume-Detail (Garagen §§ 37-39 BBV I) — Shots ab 632, S. 1256 ff.
- **Kap. 7: erledigt** (Teil 1 + Teil 2, S. 424-484). Restschuld Kap. 6 S. 405-422 offen.
- Detailstand: `buecher/seiten-inventar.md` (Shots) + `buecher/INDEX.md` (Abdeckung) +
  `curriculum.md` (Kapitel).
