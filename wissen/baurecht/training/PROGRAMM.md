---
name: PROGRAMM
beschreibung: Trainingsprogramm fuer das Buch-Lernen des Baurecht-Harness aus «Zuercher Planungs- und Baurecht, Band 1+2». Erschliesst 780 Screenshot-Doppelseiten Lauf um Lauf, verdichtet ins Wiki, uebt Anwendungsfaelle.
frequenz_phase1: taeglich (Aufbau, ~erste 4 Wochen)
frequenz_phase2: alle 2 Tage (Festigung)
frequenz_phase3: woechentlich (Erhaltung + Anwendungs-Drills)
scheduled_task: baurecht-buch-training
last_updated: 2026-06-28
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
- **Seiten distilliert:** ~390 / 1550 (~194 Doppelseiten; Kap. 14 weitgehend, Kap. 15 vollst. ausser
  § 274, Kap. 16 Teil 1, Kap. 17 Teil 1, Kap. 20 Kern (§§ 220/357), Kap. 6 + Kap. 9 Kernbereich +
  **Kap. 7 VOLLSTAENDIG** + **Kap. 8 Teil 1** Band 1 + **Kap. 12 Teil 1+2** (12.1/12.2/12.3 vollst. ausser § 236) Band 2).
- **Kapitel-Destillate:** 13 Buch-Destillate (Kap. 12 (T1+T2)/14, 15×4-Teile/16/17/20 Band 2 + Kap. 6/7×2/8/9 Band 1; alle `emerging`).
- **Wiki:** 16 Artikel (geschaerft [[baureife-und-erschliessung]] 2026-06-28 `emerging` (Zugangsarten/OEV);
  [[bauausfuehrung-und-baukontrolle]] 2026-06-22 `emerging`;
  [[baurechtlicher-vorentscheid-und-voranfrage]] 2026-06-21 `emerging`;
  [[baubewilligungsverfahren]] korrigiert: Baubewilligungsfrist nicht verlaengerbar).
- **Letzter Lauf:** Run 15, 2026-06-28 — **Kap. 12 Teil 2 (Zugaenglichkeit-Detail/OEV)**, Shots 364-372,
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
- **Naechster Lauf:** **Kap. 12 Restschuld** (Band 2, S. 742 ff., Shots ab 373: Wasser/Energie § 236 +
  Abwasser/Abfall/Altlasten — schliesst das Kapitel) — ODER **Kap. 13** «Weitere Grundanforderungen»
  (S. 809, Shot ~407) bzw. eine P1-Restschuld (Kap. 16 Hoehen/
  Dachaufbauten, Kap. 17 Ausruestungen, Kap. 20 § 357 Abs. 4/5) oder **Kap. 8 Restschuld** (S. 510-534).
- **Restschuld Kap. 12:** Wasser-/Energieversorgung § 236 + Beseitigung Abwasser/Abfall/Altlasten +
  EV-Abschnitt (S. 749); **ab S. 742 / Shot 373** bis Kapitelende vor Kap. 13 (S. 809).
  (Zugaenglichkeit-Detail/Zugangsarten/OEV erledigt Run 15.)
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
