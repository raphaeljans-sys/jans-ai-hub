---
name: PROGRAMM
beschreibung: Trainingsprogramm fuer das Buch-Lernen des Baurecht-Harness aus «Zuercher Planungs- und Baurecht, Band 1+2». Erschliesst 780 Screenshot-Doppelseiten Lauf um Lauf, verdichtet ins Wiki, uebt Anwendungsfaelle.
frequenz_phase1: taeglich (Aufbau, ~erste 4 Wochen)
frequenz_phase2: alle 2 Tage (Festigung)
frequenz_phase3: woechentlich (Erhaltung + Anwendungs-Drills)
scheduled_task: baurecht-buch-training
last_updated: 2026-06-18
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

- **Phase:** 1 (Aufbau, taeglich) — Start 2026-06-07. Kap. 7 **Teil 1** (7.1 Der kommunale baurechtl.
  Entscheid) ist erfasst; **noch nicht** auf alle 2 Tage heruntergetaktet, weil der buerorelevante
  Kern von Kap. 7 — die **Voranfrage / der baurechtl. Vorentscheid (7.2/7.3)** — erst im naechsten Lauf
  distilliert wird. **Achtung:** Nach Kap. 7 **Teil 2** sind ALLE P1-Kapitel (14/16/15/17/20/6/7) im
  Kern erfasst → dann **Phasenwechsel** hier vermerken und Cron auf alle 2 Tage (`30 7 */2 * *`)
  heruntertakten (update_scheduled_task).
- **Seiten distilliert:** ~290 / 1550 (~145 Doppelseiten; Kap. 14 weitgehend, Kap. 15 vollst. ausser
  § 274, Kap. 16 Teil 1, Kap. 17 Teil 1, Kap. 20 Kern (§§ 220/357), Kap. 6 + Kap. 9 Kernbereich + Kap. 7
  Teil 1 Band 1).
- **Kapitel-Destillate:** 10 Buch-Destillate (Kap. 14, 15×4-Teile/16/17/20 Band 2 + Kap. 6/7/9 Band 1; alle `emerging`).
- **Wiki:** 13 Artikel (neu [[nebenbestimmungen-und-reverse]] 2026-06-19 `emerging`; [[baubewilligungsverfahren]] geschaerft).
- **Letzter Lauf:** Run 11, 2026-06-19 — **Kap. 7 Teil 1 (Der kommunale baurechtliche Entscheid)**,
  Shots 213-225, S. 424-447 (11 Doppelseiten; 1 Dup, 2 ueberbel.): **Zustaendigkeit** § 318 PBG +
  GG-Delegationen (§§ 41/44/45/50/51 GG), kein gemeindeinternes Einspracheverfahren (§ 315 Abs. 3 PBG
  vor § 170 GG; direkt-Rekurs § 329), **Ausstand** (Art. 29/30 BV), **Inhalt** Rubrum/Begruendung/
  Dispositiv, **Nebenbestimmungen § 321 PBG** (Auflage/Bedingung/Befristung/Reverse; Grundbuch-Anmerkung
  deklaratorisch), Kostenentscheid-Beginn; neues Destillat [[07-zustaendigkeiten-entscheide-auskuenfte]],
  neuer Wiki-Artikel [[nebenbestimmungen-und-reverse]] (Faktenbasis `auflagebereinigung`),
  [[baubewilligungsverfahren]] geschaerft, **Modell C** 7 Karten + **Modell A** «Revers vor Baubeginn =
  Auflage». (Run 10, 2026-06-18: Kap. 20 Ausnahmen/Bestandesschutz.)
- **Naechster Lauf:** **Kap. 7 Teil 2** (Auskuenfte + baurechtlicher Vorentscheid / Voranfrage;
  Band 1, S. 448-484, Shots ab ~226) — **hohe Bueroprioritaet** (Voranfrage = Kernwerkzeug); danach
  P1 im Kern vollstaendig → Phasenwechsel + Cron-Taktung.
- **Restschuld Kap. 20:** § 357 Abs. 4 (Verbesserungen) + Abs. 5 (Milderungen) + baupolizeiliche
  Missstaende (S. 1456 ff.) + Brandstattrecht § 307 PBG (S. 1457 ff.) — Shots ab 729.
- **Restschuld Kap. 14:** Mischrechnungsverbot + § 10/13 ABV (Shots 486-495) bei Gelegenheit.
- **Restschuld Kap. 15:** nur noch § 274 PBG (Grenzbaurecht/geschlossene Bauweise/Anbau) + § 27 Abs. 2 ABV — Shots ab 560, S. 1112 ff. (§§ 269-273 erledigt 2026-06-15/16).
- **Restschuld Kap. 16:** Gebaeude-/Firsthoehe, Dachgestaltung, Dachaufbauten/Lukarnen, Umgebung
  (Shots ab 581, S. 1154 ff.).
- **Restschuld Kap. 17:** Ausruestungen-Teil (Heizung/Klima/Elektro/Beförderungsanlagen § 4 ABV),
  §§ 295-298 PBG, Einstellraeume-Detail (Garagen §§ 37-39 BBV I) — Shots ab 632, S. 1256 ff.
- **Restschuld Kap. 7:** 7.2/7.3 Auskuenfte + baurechtl. Vorentscheid/Voranfrage (Shots ab ~226,
  S. 448-484) + Kostenentscheid-Detail; Restschuld Kap. 6 S. 405-422.
- Detailstand: `buecher/seiten-inventar.md` (Shots) + `buecher/INDEX.md` (Abdeckung) +
  `curriculum.md` (Kapitel).
