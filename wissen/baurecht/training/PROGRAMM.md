---
name: PROGRAMM
beschreibung: Trainingsprogramm fuer das Buch-Lernen des Baurecht-Harness aus «Zuercher Planungs- und Baurecht, Band 1+2». Erschliesst 780 Screenshot-Doppelseiten Lauf um Lauf, verdichtet ins Wiki, uebt Anwendungsfaelle.
frequenz_phase1: taeglich (Aufbau, ~erste 4 Wochen)
frequenz_phase2: alle 2 Tage (Festigung)
frequenz_phase3: woechentlich (Erhaltung + Anwendungs-Drills)
scheduled_task: baurecht-buch-training
last_updated: 2026-06-17
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

- **Phase:** 1 (Aufbau, taeglich) — Start 2026-06-07. P1-Restkapitel: 17 (Rest), 20, 7 — daher
  weiter taeglich (kein Phasenwechsel/Cron-Anpassung).
- **Seiten distilliert:** ~252 / 1550 (~126 Doppelseiten; Kap. 14 weitgehend, Kap. 15 vollst. ausser
  § 274, Kap. 16 Teil 1, Kap. 17 Teil 1 (Wohnhygiene), Kap. 6 + Kap. 9 Kernbereich Band 1).
- **Kapitel-Destillate:** 8 Buch-Destillate (Kap. 14, 15×4-Teile/16/17 Band 2 + Kap. 6/9 Band 1; alle `emerging`).
- **Wiki:** 11 Artikel (neu [[wohnhygiene-und-raumanforderungen]] 2026-06-17 `emerging`).
- **Letzter Lauf:** Run 9, 2026-06-17 — **Kap. 17 Teil 1 (Gebaeude und Raeume; Wohnhygiene)**,
  Shots 624-631, S. 1241-1255 (8 Doppelseiten): Grundlagen §§ 295/299/300 PBG, Ausrichtung Wohnraeume
  § 301, **Belichtung/Belueftung § 302** (Fenster ≥ 1/10 Bodenflaeche, oeffenbar, ins Freie;
  Lichtschacht-Falle VB.2017.00452/BEZ 2001 Nr. 30; Dachflaechenfenster BEZ 2008 Nr. 27),
  **Mindestflaeche ≥ 10 m² § 303**, **lichte Raumhoehe 2,4 m / Kernzone 2,3 m § 304** (Dachraum halbe
  Bodenflaeche, BEZ 2011 Nr. 15), Rauminhalt § 10 BBV II, **innere Erschliessung § 305 + Aufzugspflicht
  § 40 BBV I** (> 5 Geschosse → 2,1 × 1,1 m krankentransporttauglich), EFH-Ausnahme § 32 ABV; neues
  Destillat [[17-gebaeude-und-raeume]], neuer Wiki-Artikel [[wohnhygiene-und-raumanforderungen]],
  **Modell C** 6 Karten + **Modell A** UG-Umnutzung-Buerofrage. (Run 8, 2026-06-16: Kap. 6 Verfahren +
  Kap. 9 Rechtsschutz Band 1.)
- **Naechster Lauf:** **Kap. 20** (Ausnahmen/Bestandesschutz — § 357 PBG, Besitzstandsgarantie),
  Shots ab 719, S. 1433 ff. ODER bei Gelegenheit Kap. 17 Ausruestungen-Teil (Shots ab 632) bzw.
  § 274 PBG (Kap. 15, Shots ab 560) nachziehen.
- **Restschuld Kap. 14:** Mischrechnungsverbot + § 10/13 ABV (Shots 486-495) bei Gelegenheit.
- **Restschuld Kap. 15:** nur noch § 274 PBG (Grenzbaurecht/geschlossene Bauweise/Anbau) + § 27 Abs. 2 ABV — Shots ab 560, S. 1112 ff. (§§ 269-273 erledigt 2026-06-15/16).
- **Restschuld Kap. 16:** Gebaeude-/Firsthoehe, Dachgestaltung, Dachaufbauten/Lukarnen, Umgebung
  (Shots ab 581, S. 1154 ff.).
- **Restschuld Kap. 17:** Ausruestungen-Teil (Heizung/Klima/Elektro/Beförderungsanlagen § 4 ABV),
  §§ 295-298 PBG, Einstellraeume-Detail (Garagen §§ 37-39 BBV I) — Shots ab 632, S. 1256 ff.
- Detailstand: `buecher/seiten-inventar.md` (Shots) + `buecher/INDEX.md` (Abdeckung) +
  `curriculum.md` (Kapitel).
