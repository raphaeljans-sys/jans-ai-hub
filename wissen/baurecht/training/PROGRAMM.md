---
name: PROGRAMM
beschreibung: Trainingsprogramm fuer das Buch-Lernen des Baurecht-Harness aus «Zuercher Planungs- und Baurecht, Band 1+2». Erschliesst 780 Screenshot-Doppelseiten Lauf um Lauf, verdichtet ins Wiki, uebt Anwendungsfaelle.
frequenz_phase1: taeglich (Aufbau, ~erste 4 Wochen)
frequenz_phase2: alle 2 Tage (Festigung)
frequenz_phase3: woechentlich (Erhaltung + Anwendungs-Drills)
scheduled_task: baurecht-buch-training
last_updated: 2026-07-12
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

- **Phase:** **3 (Erhaltung/Drills + Modell-D-Volltextabgleich) — Start 2026-07-11 (Run 28).** Alle 23 Kapitel
  substanziell geschlossen (Kap. 18 = Querverweis `brandschutz`), Cron auf **woechentlich** (`30 7 * * 1`).
  Phase-3-Laeufe verifizieren `emerging`-Belege am amtlichen Volltext (`raw/*_amtlich_zh_*.md`) und heben sie
  auf `established`, statt neue TRANSFER-Doppelseiten zu lesen.
  - **Run 30 (2026-07-12, Modell-D-Volltextabgleich, 3 Komplexe parallel via Workflow-Tool):** **§§ 233-237
    (Baureife), §§ 326-329 (Baufreigabe/Kontrolle/Unterbruch), §§ 340/340a/341 (Strafe/Wiederherstellung)**
    gegen `raw/260607_amtlich_zh_pbg.md` je durch einen Refutations-Agenten geprueft. **7 Korrekturen/
    Praezisierungen + 1 Nachtrag:** § 234 (Gemeindevorstand-Antrag), § 235 (3-J-Erlassfrist ergaenzt),
    § 236 («Behandlung» statt «Beseitigung»), § 237 Abs. 4 (Grundbuch-Anmerkung statt Benuetzungsrechte-
    Fehlzuordnung), § 237 Abs. 1 Gleisanschluss (ohne «wirtschaftlich»); § 328 Abs. 2 lit. b (Foerderung,
    **nicht** Abbruch) + Abs. 3 (Kostentraeger) + § 326-Plattform-Fassung, Nachtrag § 328a; § 341 (amtl.
    Wortlaut «rechtmaessigen Zustand herbeifuehren», Vorbehalt nur ggue. Strafverfahren) + § 340 Abs. 4/5
    (Gehilfenschaft/Solidarhaftung) + § 340a (Verfolgung UND Strafe). **§ 329 Abs. 1 = BRG-Anfechtung
    bestaetigt** (Agent-OFFEN am Volltext aufgeloest). Wiki [[bauausfuehrung-und-baukontrolle]] +
    [[widerrechtliche-bauten-und-sanktionen]] `emerging`→**`established`**; [[baureife-und-erschliessung]]
    (schon established) geschaerft. 6 Drills (1×A/4×D/1×C). **Naechste Phase-3-Ziele:** § 120/§ 150/§ 264/§ 346
    PBG (Landsicherung/Baulinien/Planungszone), §§ 8/9/10c/15/30 VRG + § 30 VRG-Dreiteilung, §§ 269-274 PBG
    (Grenz-/Gebaeudeabstand-Zahlenwerk) am Volltext. Report `outputs/2026-07-12_buch-run30.md`.
  - **Run 29 (2026-07-12, erster Phase-3-Verifikationslauf, Modell D+E):** **Fahrzeugabstellplaetze
    §§ 242-249 PBG** (Kap. 13 T3) gegen `raw/260607_amtlich_zh_pbg.md` abgeglichen → Destillat
    [[band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3]] + Wiki [[fahrzeugabstellplaetze-und-parkierung]]
    auf **`established`**. **2 Fassungsstand-Korrekturen:** § 243 Abs. 2→**Abs. 3** (bestehende Bauten;
    neuer Abs. 2 = antragsgebundene Reduktion), § 247 Abs. 1 «**nur fuer die Mobilitaet**» (statt enger
    Parkraum/OEV-Bindung); dazu lit. b «andere» statt «staerkere», § 309 Abs. 1 lit. i bestaetigt. 5 Drills
    (2×D/3×C). **Naechste Phase-3-Ziele:** §§ 233-237 (Baureife), §§ 326-328 (Baufreigabe), § 340/§ 341
    (Wiederherstellung/Strafe) am Volltext. Report `outputs/2026-07-12_buch-run29.md`.
- **Phase (historisch):** **2 (Vertiefung, alle 2 Tage) — Start 2026-06-21.** Mit Run 12 (Kap. 7 Teil 2) sind
  **ALLE P1-Kapitel (14/16/15/17/20/6/7) im Kern erfasst** → Phase-1-Aufbau (taeglich) abgeschlossen.
  **Cron auf alle 2 Tage** (`30 7 */2 * *`) heruntergetaktet per update_scheduled_task (2026-06-21).
  Fokus Phase 2: restliche Kapitel (8, 12/13, 9-Rest, 10, 1-5, 11, 19, 21-23) + Restschulden der
  P1-Kapitel + Querverlinkung/Verdichtung Wiki. Spaeter Phase 3 (woechentlich, `30 7 * * 1`).
- **Seiten distilliert:** ~999 / 1550 (~500 Doppelseiten). **Run 27 (2026-07-11, Forcierung, 2 Kapitelteile,
  22 Doppelseiten):** Kap. 17 Teil 3/Schluss + Kap. 19 Teil 2/Schluss → **Kap. 19 VOLLSTAENDIG, Kap. 17
  substanziell komplett.** **Kap. 17** (S. 1304-1319, Shots 656-663): **17.9 Haustechnische Anlagen** —
  Abwaerme/WRG/WKK § 30a BBV I, Feuerungen Oel/Gas/Holz § 24 BBV I/LRV/Feuerungskontrolle 2 J. Art. 13 LRV,
  **Kaminhoehen 0,5/1,5/2 m**, **Elektroheizungsverbot § 10b EnerG**, Warmwasser **max. 60 °C § 26 BBV I** /
  Vorlauf ≤ 50 °C-Boden ≤ 35 °C § 23 BBV I, **VHKA ab 5 Nutzeinheiten § 9 EnerG**, besondere Heizungen
  (Rampen-/**Garagenheizung Ziff. 2.31 Anhang BBV I**), Klima/Lueftung § 29 BBV I/EBF > 1000 m² § 45 Abs. 3,
  **Garagenlueftung § 37 Abs. 1 BBV I**, Elektro NIV Art. 37 ff., **Aufzugspflicht > 5 anrechenb. Geschosse**
  (Kabine 2,10 × 1,10 m, > 9 = 2 Aufzuege § 40 Abs. 2 BBV I), Liftanbau Altbau § 19a BBV II, Befoerderungs-
  anlagen § 296 PBG, Briefkaesten Art. 73 ff. VPG. **Kap. 19** (S. 1404-1431, Shots 706-719): **Laermschutz-
  Detail** (**Aufhebung Lueftungsfensterpraxis BGE 142 II 100**, **Baubewilligung trotz IGW-Ueberschreitung
  Art. 31 Abs. 2 LSV**, verschaerfte Schalldaemmung Art. 32 Abs. 2 LSV/SIA 181, **Fluglaerm Art. 31a LSV**) +
  **NIS/NISV** (zweistufig IGW/**AGW Faktor 10 nur OMEN**, **OMEN Art. 3 Abs. 3 NISV** Balkone NICHT, **Mobilfunk
  AGW 4-6 V/m** Ziff. 64 Anhang 1 NISV, Bauzone Anspruch § 320 PBG ohne Beduerfnisnachweis BGer 1C_329/2013,
  Standortdatenblatt Art. 11 NISV). Neue Destillate [[band-2/17-haustechnische-anlagen-teil3]] /
  [[band-2/19-baulicher-umweltschutz-teil2-laerm-nisv]]. **NEU Wiki [[laermschutz-und-nichtionisierende-strahlung]]**.
  Modell C (6) + A (1). Report `outputs/2026-07-11_buch-run27.md`. **→ Alle substanziellen Kapitel geschlossen;
  Forcierungs-Phase kann abgeschlossen werden (nur Kleinreste 15.13/16.9/17.10/11 offen).**
- **Seiten distilliert (frueher):** ~977 / 1550 (~488 Doppelseiten). **Run 26 (2026-07-10, regulaer/Lueckenschluss,
  6 Tail-Doppelseiten Kap. 14: Shots 489/492/495/497/499/500, S. 970-992):** **Kap. 14 (P1) damit
  lueckenlos gelesen (Shots 462-500).** Nachgetragen: **Nutzungsart-Detail 14.2.2-14.2.6** — mit Wohnung
  zusammenhaengende Arbeitsraeume **Art. 52 Abs. 1 PBG** (1/4-1/3), **nicht stoerende Betriebe** § 52
  Abs. 1/3 (stillschweigend erlaubt + funktionale Zweckbestimmung BEZ 2010 Nr. 2), **ideelle Immissionen**
  BGE 108 Ia 140, **Pflegewohnung zonenkonform BEZ 2015 Nr. 36** (Healthcare!), **Parkplatz/Erschliessung
  Zonenkonformitaet 14.2.4** (dienende Funktion), **besondere Nutzungsanordnungen § 49a Abs. 3** +
  **Erdgeschoss Laeden/Gaststaetten § 49a Abs. 3 Satz 2**, **Uebertragung von Nutzweisen § 17 Abs. 2 ABV**
  (Radius 150/300 m BO Zuerich Art. 6, NICHT = Ausnuetzungsuebertragung); **BMZ integrierte Garagen**
  § 13 ABV/BEZ 2012 Nr. 2; **Harmonisierungsvorlage-Formeln 14.3.3-14.3.6** (AZ/BMZ ueber Terrain/UEZ mit
  Unterniveaubauten+projizierte Fassadenlinie/Gruenflaechenziffer, +20 % Bonus § 11/13 nABV) +
  **Verzicht auf Nutzungsziffern § 251 lit. b PBG 14.3.7**. **Mischrechnungsverbot RESOLVIERT:** keine
  benannte Doktrin in Kap. 14 (jede Ziffer bindet abschliessend, § 251 PBG). Destillat
  [[band-2/14-nutzungsdichte-ausnuetzung]] `established` erweitert; Wiki [[ausnuetzungsuebertragung]] auf
  `established` (Abgrenzung Nutzweisen-Uebertragung) + [[nutzungsziffern]] geschaerft. Modell C (5 Karten)
  + Modell A (1). Report `outputs/2026-07-10_buch-run26.md`.
- **Seiten distilliert (frueher):** ~965 / 1550 (~482 Doppelseiten). **Run 25 (2026-07-10, Forcierung, 3 Kapitelteile,
  19 Doppelseiten):** Kap. 13 Schluss + Kap. 20 Schluss + Kap. 21 Schluss → **Kap. 13, 20, 21 neu VOLLSTAENDIG**.
  **Kap. 13** (S. 892-916, Shots 449-461): **Fahrzeugabstellplaetze §§ 242-247 PBG** — Normbedarf BZO/PPV
  § 242 Abs. 1, Reduktion + **Maximum § 242 Abs. 2** (Massnahmenplan Lufthygiene/Wegleitung 1997 BGE 124 II 272),
  **autoarme Nutzungen** (Mobilitaetskonzept/Grundbuch-Anmerkung), **Fahrtenmodell** BEZ 2004 Nr. 46,
  Behindertenparkplaetze SIA SN 521 500, § 243 (abschliessend), **nuetzliche Entfernung § 244** (300/600/150-200 m),
  Realerfuellung vor **Ersatzabgabe § 246 / Parkplatzfonds § 247**, Veloabstellplaetze, **§ 248 Spiel-/Ruheflaechen**
  (nur MFH). **Kap. 20** (Shot 732): **§ 357 Abs. 5** Milderung (§ 253a Aussendaemmung 35 cm), **§ 358** Missstaende
  (BGer 1C_567/2014 Steinschlag-Aussiedlung), **§ 307 Brandstattrecht** (Wiederaufbau innert **3 J.**).
  **Kap. 21** (S. 1504-1513, Shots 756-760): **Art. 37a RPG** Gewerbe (Stichtag 1.1.1980/+30 %), **Art. 24d Abs. 1/2/3**
  (Wohnen bleibt Wohnen/Rustico/gemeinsame Voraussetzungen), **Art. 24e** Hobby-Tierhaltung, **Bauen im Wald**,
  § 358a PBG. Neue Destillate [[band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3]] /
  [[band-2/20-ausnahmen-teil2-milderung-missstaende-brandstatt]] / [[band-2/21-ausserhalb-bauzonen-teil2-art37a-24d-24e-wald]].
  NEU Wiki [[fahrzeugabstellplaetze-und-parkierung]]. Modell A (autoarme Nutzung) + Modell C (6 Karten).
  Report `outputs/2026-07-10_buch-run25.md`.
- **Seiten distilliert (frueher):** ~946 / 1550 (~473 Doppelseiten). **Run 24 (2026-07-09, Forcierung, 3 Kapitelteile,
  49 Doppelseiten):** Kap. 8 Schluss + Kap. 13 Teil 2 + Kap. 16 Teil 3. **Kap. 8 «Ausfuehrung» VOLLSTAENDIG**
  (S. 510-535: 8.3 Baustellensicherheit — Rissprotokoll/Beweislast Art. 8 ZGB/BEZ 2016 Nr. 15, VUV/BauAV,
  Entsorgungskonzept > 200 m³ Art. 16 VVEA, Bauherren-Altlast 2/3 Art. 32bis USG, Baulaerm-Stufen A/B/C,
  amtl. Vermessung § 19 KVAV; Kap. endet S. 535). **Kap. 13 → 🟢 weitgehend** (S. 858-891: § 238-Forts.
  Umgebung/Baumschutz, § 239 Regeln der Baukunde/Baumaterialien, **§§ 240/241 Verkehrssicherheit /
  Sichtbereiche 90/150/50 m § 16 StrAV**, Strassenreklamen Art. 6 SVG; offen §§ 242/248 ab S. 892). **Kap. 16
  → 🟢 weitgehend** (S. 1194-1229: Hochhaeuser > 25 m § 282/§ 284/Schattenwurf > 2 h § 30 ABV, Gebaeudelaenge
  § 28 ABV, **Dachaufbauten-Drittelsregel § 292**, Freilegung UG § 293; offen 16.9-Schluss S. 1230 f.).
  Neue Destillate [[band-1/08-ausfuehrung-teil2-baustellensicherheit]] / [[band-2/13-weitere-grundanforderungen-teil2]]
  / [[band-2/16-gebaeudedimensionen-teil3-umgebung]]. Wiki geschaerft [[abstaende-und-hoehen]] (Hochhaeuser/
  Dachaufbauten) + [[bauausfuehrung-und-baukontrolle]] (Baustellensicherheit). Modell C (8 Karten, davon 1
  Modell-A-Drill). Report `outputs/2026-07-09_buch-run24.md`.
- **Seiten distilliert (frueher):** ~897 / 1550 (~448 Doppelseiten). **Run 23 (2026-07-08, Forcierung, 1 grosses
  Kapitel, 21 Doppelseiten): Kap. 4 Natur- und Heimatschutz VOLLSTAENDIG** (S. 268-309, Shots 134-155) →
  **BAND 1 SUBSTANZIELL KOMPLETT** (offen nur Kap. 18 Brandschutz = Querverweis auf Skill `brandschutz`).
  Kern: Schutzobjekt-Katalog **§ 203 Abs. 1 lit. a-g PBG**, Inventare (BLN/ISOS/IVS schutzwuerdig, **binden
  nur die Behoerde**), Massnahmen **§ 205 lit. a-d** (**Kernzone § 50 ≠ Substanzschutz**), Selbstbindung
  § 204, Interessenabwaegung/Verhaeltnismaessigkeit, Provokation § 213 (irreversibel), Rechtsschutz § 211
  Abs. 4. Neues Destillat [[band-1/04-natur-und-heimatschutz]], NEU Wiki [[naturschutz-und-denkmalschutz]].
  Modell C (7) + Modell A (1). TCC-Blockade (Run 19) behoben. Report `outputs/2026-07-08_buch-run23.md`.
- **Seiten distilliert (frueher):** ~855 / 1550. Run 22 (2026-07-06, regulaer, 1 Kapitel):
  +17 Doppelseiten (Kap. 9 Teil 2, S.576-606, Shots 290-306) → **Kap. 9 Rechtsschutz VOLLSTAENDIG; Band 1
  offen nur noch Kap. 4** (Natur-/Heimatschutz, P3, Shots ~130-155/294 ff.). Kernstueck: **aufschiebende
  Wirkung § 339 PBG** (Teilfreigabe bei Nachbarrekurs), Kosten § 338/§ 17 VRG, ausserordentliche Rechtsmittel
  (Revision § 86a), Mediation. Neues Destillat [[band-1/09-rechtsschutz-teil2-ablauf-kosten-revision]], NEU
  Wiki [[rechtsschutz-und-rechtsmittelverfahren]] (synthetisiert Teil 1+2). Modell C (6 Karten) + Modell A (1).
  Report `outputs/2026-07-06_buch-run22.md`.
- **Seiten distilliert (frueher):** ~821 / 1550. Run 21 (2026-07-04, regulaer, 1 Kapitel):
  +13 Doppelseiten (Kap. 5, S.311-334, Shots 156-168) → **Kap. 5 vollstaendig; Band 1 offen nur noch
  Kap. 4 (P3) + Kap. 9-Rest S.575-608.** Run 20 (2026-07-03, Forcierung): +47
  Doppelseiten (Kap. 3 T2 S.240-265 / Kap. 12 T4 S.770-807 / Kap. 10 S.609-636) → **Kap. 3, Kap. 10,
  Kap. 12 vollstaendig; Band 1 bis auf Kap. 4/5 komplett.** Run 18 (2026-07-02): +46 Doppelseiten
  (Kap. 2 T3 / Kap. 3 T1 / Kap. 6 T2). Ausfuehrlicher Vorstand:
  Band 2 weitgehend komplett: Kap. 11/13/14/15
  (inkl. § 274, nur 15.13 offen)/16 (T1+T2)/17 (T1+T2)/19/20 (inkl. § 357 Abs. 4)/21/22/23 + Kap. 12 (T1-T3,
  bis S.769; Teil 4 §236-Rest/Abfall/Altlasten offen); Band 1 **Kap. 1 VOLLSTAENDIG** + **Kap. 2 Teil 1+2**
  (T2 = 2.3 Nutzungsplanung/Zonenarten, Shot 76 offen) + Kap. 6 + 9 Kernbereich + **Kap. 7 VOLLSTAENDIG** +
  **Kap. 8 Teil 1**. Run 17 (regulaer) 2026-06-30: +12 Doppelseiten Kap. 2 Teil 2.
- **Kapitel-Destillate:** 35 Buch-Destillate (Run 22 neu: 09-T2 Rechtsschutz Ablauf/Kosten/Revision; Run 21
  neu: 05 Planung/Entschaedigung) (Band 1: Kap. 1/2×3/3×2/5/6×2/7×2/8/9×2/10; Band 2: Kap. 11/12 (T1+T2/T3/T4)/13/
  14/15×4-Teile/16 (T1+T2)/17 (T1+T2)/19/20/21/22/23; alle `emerging`).
- **Wiki:** 21 Artikel (Run 22 neu [[rechtsschutz-und-rechtsmittelverfahren]] `emerging`; Run 21 neu [[enteignung-und-entschaedigung]] `emerging`; Run 20 neu [[widerrechtliche-bauten-und-sanktionen]] `emerging`; [[baureife-und-erschliessung]] auf `established` — Quartierplan + Altlasten. Frueher: geschaerft [[raumplanung-und-gestaltung]] 2026-06-30 Run 17: **Zonenarten/BZO-
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
- **Letzter Lauf:** Run 21, 2026-07-04 (regulaer, 1 Kapitel, 13 Doppelseiten) — **Kap. 5 Planung und
  Entschaedigung VOLLSTAENDIG** (S.311-334, Shots 156-168): **5.1** Wertaenderungen (Art.26 BV); **5.2
  formelle Enteignung** (Art.36 BV kumulativ, **EntG SR711/AbtrG LS781**, enteignungsfaehige Rechte,
  Flughafen **Laerm** [Spezialitaet/Unvorhersehbarkeit Stichtag 1.1.1961/Schwere 10-15 %] ↔ **direkter
  Ueberflug** [1.25°-ILS-Korridor, ≤150m ja/≥350m nein], MIFLU/ESchK, Strassenlaerm Art.17 LSV); **5.3
  materielle Enteignung** (Art.26 Abs.2 BV/Art.5 Abs.2 RPG, **2 Tatbestaende** schwerer Eingriff/Sonderopfer
  **BGE 125 II 433**; Fallgruppen Aus-/Nichteinzonung/Abzonung ~1/3-Schwelle/Umzonung/Baulinien §102/
  Gewaesserraum Art.36a GSchG/Denkmalschutz BGE 117 Ib 264/Polizei/befristete Bauverbote §§122/235/346);
  **5.4** Heimschlag §§41-43/165/214, **Zugrecht §43a** >2/3, Vorkaufsrecht §64, Treu+Glauben,
  **Mehrwertabschoepfung** Art.5 RPG min.20 %/MAG; **5.5 Enteignungsverfahren** (Anmeldung **10 J. §183ter
  EG ZGB**, Rekurs **20 T §46 AbtrG**, **Verkehrswert BGE 102 Ib 273/Alles-oder-nichts**, Vollzug §56 AbtrG).
  Destillat [[band-1/05-planung-und-entschaedigung]], Wiki [[enteignung-und-entschaedigung]] neu. Modell C
  (8 Karten). Report `outputs/2026-07-04_buch-run21.md`. OFFEN: Kap. 4 (P3), Kap. 9 Rest S.575-608.
- **Lauf davor:** Run 20, 2026-07-03 (Forcierung, 3 Kapitelteile parallel, 47 Doppelseiten) —
  **Kap. 3 Teil 2** (S.240-265, Shots 121-133): **Quartierplan §§ 123 ff. PBG** (amtlich § 158 vs. privat
  § 160a/**Einstimmigkeit**, Kombination Gestaltungsplan § 129/§ 81, **Quartierplanbann § 150**, Verfahren
  §§ 147-159, Umlegung/Realersatz/Aequivalenz §§ 137-145, Vollzug §§ 161-176 **Heimschlag § 165/60 T**,
  **Grenzbereinigung §§ 178-183** ≤ 2 Mt./keine Genehmigung, Gueterzusammenlegung §§ 76-94 LG) →
  **Kap. 3 vollstaendig**; **Kap. 12 Teil 4** (S.770-807, Shots 387-406): Anschlussgebuehren Art. 60a
  GSchG, Abfall/Kehricht Art. 30-32b USG/VVEA, **Altlasten Art. 32c/32d USG/AltlV/KbS** (Realleistung
  Standortinhaber ↔ Kostentragung Verursacher; Bauherren-Altlast Art. 32b bis; Veraeusserung Art. 32d bis
  AWEL) → **Kap. 12 vollstaendig**; **Kap. 10** (S.609-636, Shots 307-320): widerrechtliche Bauten —
  formell/materiell, **Wiederherstellung § 341 PBG** (Verhaeltnismaessigkeit, **30-J-Verwirkung**),
  vorsorgl. Massnahmen § 339 Abs. 2/§ 6 VRG, Vollstreckung § 30 VRG, **Strafe § 340 PBG bis 50'000** (auch
  Architekt/Ingenieur; § 340a Verj. 5 J.) → **Kap. 10 vollstaendig, letzte Sektion Band 1**. Neue Destillate
  [[band-1/03-quartierplan-landumlegung-teil2]] / [[band-2/12-baureife-teil4-gebuehren-abfall-altlasten]] /
  [[band-1/10-widerrechtliche-bauten-teil1]]. NEU Wiki [[widerrechtliche-bauten-und-sanktionen]];
  [[baureife-und-erschliessung]] auf `established`. Modell C (9 Karten). Report `outputs/2026-07-03_buch-run20.md`.
  OFFEN: Kap. 4 (P3), Kap. 5 (P3), Kap. 9 Rest S.575-608.
- **Lauf davor:** Run 18, 2026-07-02 (Forcierung, 3 Kapitelteile parallel, 46 Doppelseiten) —
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
- **Naechster Lauf:** ~~Kap. 13 Schluss (§§ 242-248) / Kap. 20 Schluss (§ 357 Abs. 5/§ 358/§ 307) / Kap. 21
  Schluss (Art. 37a/24d/24e)~~ **erledigt Run 25 (2026-07-10) → Kap. 13/20/21 VOLLSTAENDIG.** ~~**Kap. 14**
  Mischrechnungsverbot/Tail (Shots 489/492/495/497/499/500)~~ **erledigt Run 26 (2026-07-10) → Kap. 14 (P1)
  VOLLSTAENDIG, Mischrechnungsverbot geklaert.** ~~**Kap. 17** Garagen/Haustechnik (ab Shot 656) /
  **Kap. 19-Rest** (ab Shot 706)~~ **erledigt Run 27 (2026-07-11) → Kap. 17 substanziell komplett, Kap. 19
  VOLLSTAENDIG.** Verbleibende **Band-2-Kleinreste** (nur noch Feinschliff, je schon `emerging`-Destillat):
  **Kap. 15.13** Harmonisierungsvorlage (S. 1124-1133), **Kap. 16.9-Schluss / Kap. 17.10-Rest** nPBG
  (S. 1230 f. / S. 1320 f., teils via [[kap16-10_gebaeudedimensionen-harmonisierung]]), **Kap. 11** (Feinschliff
  §§ 218-232). Kap. 18 Brandschutz **nur Querverweis** auf Skill `brandschutz`. **Alle substanziellen Kapitel
  damit geschlossen → Forcierungs-Phase kann abgeschlossen werden: Cron auf woechentlich (`30 7 * * 1`)
  heruntertakten + Phase 3 (Erhaltung/Drills + Modell-D-Volltextabgleich der needs-verification); die Kleinreste
  (15.13/16.9/17.10/11) in Phase 3 mitnehmen.** *(erledigt Run 20: Kap. 3 T2 / Kap. 10 / Kap. 12 T4 → Kap. 3/10/12 vollstaendig.)* Alt-Notiz:  **Kap. 2 Teil 2 (HOHE Prio)** — S. 142 ff. / 2.3 Nutzungsplanung (Zonenarten/BZO/
  Sondernutzung/Quartierplan/Nutzungsplanverfahren), Shots ab 73; plus **Band-1-Tail** Kap. 3 (Erschliessung/
  Landumlegung, ab Shot 105/S. 207), Kap. 5 (Entschaedigung), Kap. 10 (widerrechtliche Bauten, S. 609);
  dazu **Kap. 12 Teil 4** (Band 2, S. 770-809: Anschlussgebuehren-Rest + Abfall/Kehricht + Altlasten
  Art. 32c USG — schliesst das Kapitel). Band-2-Restschulden nur noch klein (Kap. 13 §§239a/240/242/248,
  Kap. 15.13 Harmonisierungsvorlage, Kap. 16 «Umgebung», Kap. 17 Garagen §§37-39 BBV I, Kap. 19 ab Shot 706,
  Kap. 20 § 357 Abs. 5/§ 307, Kap. 21 Art.24d/24e/37a, Kap. 8 Rest S.510-534).
- ~~**Restschuld Kap. 12 (Teil 4):**~~ **erledigt Run 20** (2026-07-03): Anschlussgebuehren + Abfall/
  Kehricht + Altlasten Art. 32c/32d USG (S. 770-807) distilliert → [[band-2/12-baureife-teil4-gebuehren-abfall-altlasten]].
  **Kap. 12 vollstaendig.**
- ~~**Restschuld Kap. 8:**~~ **erledigt Run 24 (2026-07-09):** 8.3 Baustellensicherheit + Entsorgung +
  Bauemissionen + amtl. Vermessung (S. 510-535) → [[band-1/08-ausfuehrung-teil2-baustellensicherheit]].
  **Kap. 8 vollstaendig (Kap. endet S. 535).**
- ~~**Restschuld Kap. 20:**~~ **erledigt Run 25 (2026-07-10):** § 357 Abs. 5 Milderung + § 358 baupolizeiliche
  Missstaende + Brandstattrecht § 307 PBG (S. 1456-1457) → [[band-2/20-ausnahmen-teil2-milderung-missstaende-brandstatt]].
  **Kap. 20 vollstaendig.**
- **Restschuld Kap. 14:** Mischrechnungsverbot + § 10/13 ABV (Shots 486-495) bei Gelegenheit.
- **Restschuld Kap. 15:** nur noch § 274 PBG (Grenzbaurecht/geschlossene Bauweise/Anbau) + § 27 Abs. 2 ABV — Shots ab 560, S. 1112 ff. (§§ 269-273 erledigt 2026-06-15/16).
- **Restschuld Kap. 16:** Gebaeude-/Firsthoehe, Dachgestaltung, Dachaufbauten/Lukarnen, Umgebung
  (Shots ab 581, S. 1154 ff.).
- **Restschuld Kap. 17:** Ausruestungen-Teil (Heizung/Klima/Elektro/Beförderungsanlagen § 4 ABV),
  §§ 295-298 PBG, Einstellraeume-Detail (Garagen §§ 37-39 BBV I) — Shots ab 632, S. 1256 ff.
- **Kap. 7: erledigt** (Teil 1 + Teil 2, S. 424-484). Restschuld Kap. 6 S. 405-422 offen.
- Detailstand: `buecher/seiten-inventar.md` (Shots) + `buecher/INDEX.md` (Abdeckung) +
  `curriculum.md` (Kapitel).

## Verifikations-Stufe (PFLICHT ab 12.07.2026, Rule auto-verbesserungen 260712)

Jede Status-Hebung auf `established` durchlaeuft VOR der Hebung eine unabhaengige
Widerlegungs-Pruefung (Verifier-Prinzip der Spec-Methode, automatisiert):

- **Adversarial Verify:** 2–3 unabhaengige Pruef-Agenten (oder ein Volltextabgleich an der
  amtlichen/Original-Quelle, Modell D) versuchen die Aussage zu WIDERLEGEN — jede Fundstelle,
  Ziffer, Kennwert wird an der Quelle gegengeprueft. Nur was die Pruefung besteht, wird
  `established`; Beanstandungen werden korrigiert oder auf `speculative` gesenkt.
- **Workflow-Orchestrierung autorisiert:** Multi-Agent-Workflows (paralleles Destillieren +
  Verifikations-Pipeline) sind fuer diesen Loop von Raphael freigegeben (12.07.2026).
  Mechanische Extraktion darf auf guenstigeren Modellen laufen; die Verifikations-/Richter-
  Stufe laeuft auf dem Hauptmodell.
- **Protokoll:** Verdikte (bestanden/beanstandet je Artikel/Destillat) gehoeren in den
  Lauf-Report unter `outputs/` und ins CHANGELOG.

## Intensivphase (ab 12.07.2026, bis auf Widerruf)

Der Loop laeuft intensiviert (auch tagsueber und am Wochenende, Rule 260712), bis ein markant
besserer Wissensstand erreicht ist (Inventar/Rueckstaende abgearbeitet, keine auto-schliessbaren
Luecken). Dann Ruecktaktung ins Nachtfenster VORSCHLAGEN (nicht stillschweigend umsetzen).

### Token-Vollgas bis 10.08.2026 (Rule 260712b)

Bis und mit 10.08.2026 gilt maximaler Durchsatz (20x-Abo): Batch-Volumen pro Lauf
VERDOPPELN gegenueber den oben genannten Richtwerten (z.B. Normen 15-25 Positionen,
Energie 6-10 PDFs, Planungsgrundlagen 2 Domaenen + 10-16 Fragen, Baurecht 4-6
Verifikations-Komplexe), Workflow-Parallelisierung als Standard. Ab 11.08.2026
(5x-Abo) gelten wieder die urspruenglichen Richtwerte und der Sparbetrieb; die
Ruecktaktung erledigt der One-Time-Task `token-drosselung-100810`.
