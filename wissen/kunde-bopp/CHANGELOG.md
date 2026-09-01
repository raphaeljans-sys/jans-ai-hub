# CHANGELOG — Wissensbasis Kunde Christoph Bopp

Jede Aenderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-09-01 (Claude Code Agent, unbeaufsichtigt) — Wissenscheck Phase 1: A1 · B4 (gekennzeichnet ok) · C0 · D0 · E0 · F1 · G2

Letzter Check 19.08., 13 Tage Abstand. Befunde: (A1) Abschnitt «Aktuell offen» in `profil-christoph-bopp` seit 24.07. veraltet, soll gekürzt werden (bekannt seit 25.07. HC, Phase 2 nicht ausgefuehrt); (F1) CHANGELOG/CLAUDE.md/QUESTIONS.md haben ae/oe/ue statt echter Umlaute (121 Treffer, bekannt seit 19.08., Phase 2 nicht ausgefuehrt); (B4) vier Backlinks sind Vorwärtsverweise auf geplante Artikel, bewusst und 25.08. explizit gekennzeichnet, kein struktureller Fehler; (G2) zwei geplante Cluster-Artikel + ein Status-Promotion kandidat. Report abgelegt: `outputs/2026-09-01_health-check.md`.

## 2026-08-25 — Wissens-Chef Run 43: Vorwärtsreferenz als solche gekennzeichnet

`wiki/profil-christoph-bopp.md` Z. 48 (1/1, Zeilenzahl 82/82): «Siehe [[auftrags-muster-bopp]].»
las sich wie ein Verweis auf einen vorhandenen Artikel; der Artikel ist geplant, aber nicht
geschrieben (INDEX Z. 13/16 und die `links:`-Zeile kennzeichnen ihn korrekt als *(geplant)*).
Zusatz gesetzt: «(geplant, noch nicht ausformuliert — der Inhalt steht bis dahin hier)».
Kein toter Link, sondern eine bewusste Vorwärtsreferenz; der `wiki-konsistenz.sh`-Treffer dazu ist
ein Fehlalarm derselben Familie wie in `auflagebereinigung`.

## 2026-08-24 — Wissens-Chef Run 42: Giebelweg-12-Baumassenreserve in QUESTIONS.md berichtigt

`wiki/QUESTIONS.md` fuehrte in der **«beantwortet»-Sektion** den Stand «volle Attika
budgetkonform, **Reserve 8 m³**» — das ist der am 12.06.2026 **verworfene** Zwischenstand ueber ein
ausgemitteltes massgebendes Terrain. Die Ausmittelung ueber den Fussabdruck ist unzulaessig, weil
sie die talseitigen Ecken schoent; `wiki/projekt-giebelweg12.md` Z. 18-24 haelt genau das fest und
nennt den geltenden Endstand vom 13.06.2026 (Nachweis Version 3): Attika **128.9 m²**,
**1'162 m³ anrechenbar, Reserve 105 m³**. Beleg am Original, nicht am Destillat: PROJEKT-STAND.md
im Projektordner (Z. 56, 95-96) nach Rule `projekt-ablage-stand`.

Die Nachfuehrung vom 30.07.2026 (Run 21) hatte nur `wiki/projekt-giebelweg12.md` und den Output
erfasst, **diese Datei nicht** — die falsche Zahl stand seither an der Stelle, die ein spaeterer
Lauf als gesicherte Antwort zitiert. Erschwerend: derselbe Absatz wurde am 24.08.2026 angefasst
(Nachtrag zur ausstehenden Gemeindeantwort), die Zahl daneben blieb stehen. Korrektur additiv
(14/0), der alte Eintrag bleibt als Historie.

**Aussenwirkung:** die Reserve ist die Kernzahl der Machbarkeitsstudie und der Grundlage, auf der
am 30.06.2026 die Einwendung gegen die Baulinien-Festsetzung an die Gemeinde Langnau a/A
eingereicht wurde. 8 m³ statt 105 m³ ist der Unterschied zwischen «am Anschlag» und «belastbarer
Spielraum»; die dahinterliegende Ausmittelungs-Methode waere gegenueber der Behoerde nicht haltbar.

Cross-KB-Nullbefund im selben Lauf bestaetigt: `kunde-bopp` ↔ `projekt-lessons` beruehren sich
inhaltlich nicht (0 Treffer beidseitig). Das ist korrekte Scope-Trennung, kein Mangel — der
Rueckfluss aus Giebelweg 12 ist an den Skill `massgebendes-terrain` gegangen, nicht an
`projekt-lessons`. ⚠ Die Begruendung «projekt-lessons ist auf Bauleitung/Healthcare **begrenzt**»
ueberzeichnet allerdings dessen CLAUDE.md («**Schwerpunkt**», dazu «Kosten & Termine» und
«Behoerden & Bewilligungen») und darf kuenftig nicht als Ausschlussgrund zitiert werden.

## 2026-08-19 (Wissenscheck, Nachtschicht Mac Mini, Phase 1) — A1 · B5 · C0 · D0 · E0 · F1 · G2

- Health-Check-Report abgelegt: `outputs/2026-08-19_health-check.md`. KB seit 03.08.
  unveraendert. Kernbefund: `CLAUDE.md`/`CHANGELOG.md`/`wiki/INDEX.md`/aeltere
  `QUESTIONS.md`-Abschnitte sind mit 121 echten Treffern (statt der am 03.08. gezaehlten
  34) durchgehend in ae/oe/ue-Digraphen statt echten Umlauten geschrieben — der Fix vom
  20.07. hat nur `wiki/profil-christoph-bopp.md` erfasst. Neu praezisiert (Audit A statt
  E): Abschnitt «Aktuell offen» in `profil-christoph-bopp.md` widerspricht implizit dem
  neueren `projekt-giebelweg12.md`. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter
  Lauf.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B5 · C0 · D0 · E0 · F1 · G1

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Fuenf tote Backlink-Fundstellen: `[[auftrags-muster-bopp]]` und `[[zusammenarbeit-lessons-bopp]]` (angekuendigt, nie angelegt) sowie `[[project_2620_bauherrschaft]]` — ein Memory-Name, der als Backlink geschrieben wurde. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B5 · C0 · D0 · E0 · F10 · G0

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. 5 Backlinks zeigen auf Artikel, die es nicht gibt (Audit B) — und zwar sowohl aus `INDEX. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-30 (Wissens-Chef Run 21, Cross-KB) — Giebelweg-12-Endstand nachgefuehrt, Baar-Querverweis gesetzt
- **[widerspruch] `wiki/projekt-giebelweg12.md` (Abschnitt «Machbarkeitsstudie (Juni 2026)») auf den
  Endstand vom 13.06.2026 nachgefuehrt.** Vorher stand dort der am selben Tag verworfene
  Zwischenstand «ausgemitteltes MT 549.27 m ue.M. → volle Attika 130.25 m2, 1'259 ≤ 1'267 m3,
  Reserve 8 m3». Neu: Abtreppung in drei Stufen (Stufendaecher 554.61 / 553.55 / 552.48 m ue.M.,
  Fassadenhoehe 4.5 m an jeder Ecke einzeln), Attika regelkonform 128.9 m2, **1'162 m3 anrechenbar,
  Reserve 105 m3**. Der Mittelwert 549.27 steht neu ausdruecklich nur als MT-Statistik
  (min 548.00 / mean 549.27 / max 551.09), nicht als Rechenweg — eine Ausmittelung ueber den
  Fussabdruck ist unzulaessig. Fuehrung ergaenzt: Zahlen aus der Projekt-Wahrheit
  (Rule `projekt-ablage-stand`), Methode aus Skill `massgebendes-terrain`.
  Verifiziert am Original vor dem Edit: PROJEKT-STAND.md im Projektordner 2621 (Eintraege 260612
  Version 2 und 260613 Version 3, Deliverable-Tabelle Zeile 260613) und Volltext des Deliverables
  `12_MBS_Vorlagenstil/260612_Hangschnitt-Nachweis_Giebelweg-12.pdf` (Dateiname 260612, Inhalt
  Version 3, mtime 13.06.2026 00:30). Frontmatter `last_updated` und `sources` entsprechend gesetzt.
- **[historie] `outputs/2026-07-24_giebelweg12-projektstand.md` nicht umgeschrieben**, sondern mit
  einer datierten Korrekturnotiz am Kopf versehen (Outputs bleiben historisch).
- **[querverlinkung] `wiki/QUESTIONS.md` und `wiki/INDEX.md`: Baar Zugerstrasse 49 nicht umgebucht**,
  sondern je um dieselbe Beleg-Zeile ergaenzt — Teilaspekt «Referenzfall fuer Skill
  `ankaufspruefung`» erledigt (`skills/ankaufspruefung/SKILL.md`, Abschnitt
  «JANS-Goldstandard-Methodik (Beleg: reale TDD 2513 BAAR, Zugerstrasse 49)», Z. 78-109, bestehend
  seit 03.06.2026); offen bleiben Projekt-Detailartikel und Ausgang der Ankaufsentscheidung. Der
  OneDrive-/EDEADLK-Blocker-Hinweis blieb unveraendert, weil er beide offenen Teile betrifft.
- **[extern] Ausserhalb dieser KB mitgeaendert (kein eigener CHANGELOG):**
  `skills/massgebendes-terrain/SKILL.md` (Validierter Fall auf 1'162 m3 / Attika 128.9 m2 / Endstand
  260613 nachgefuehrt, Zwischenstand 1'167 m3 als ueberholt markiert) und
  `skills/stockwerkeigentum/SKILL.md` (neue Ziffer 6 «Kunden-Kontext» in «Eingaben, die du brauchst»;
  Kunden-KB-Zeile im Compounding-Punkt auf `wissen/kunde-<name>/`, Prototyp `kunde-bopp` konkretisiert).

## 2026-07-25 — Dritter Wissens-Health-Check (Phase 1, Mac Mini Nachtschicht)
- Re-Audit nach 21.07.: A0 gruen · B2 gelb (dieselben 2 toten Backlinks, unveraendert seit
  01.07.) · C0 gruen (neuer Artikel `projekt-giebelweg12` sauber belegt) · D0 gruen (Sonderfall)
  · **E1 gelb, NEU:** Abschnitt «Aktuell offen (Stand 2026-06-03)» in `profil-christoph-bopp.md`
  durch den neuen Detailartikel `projekt-giebelweg12` (24.07.) inhaltlich ueberholt, nicht
  nachgezogen — Vorschlag: Abschnitt auf Verweis `[[projekt-giebelweg12]]` kuerzen · F0 gruen
  (kein ae/oe/ue, kein ß, Frontmatter vollstaendig) · G3 gelb (unveraendert: Status-Promotion
  `profil-christoph-bopp`, 2 geplante Cluster-Artikel). Reine Audit-Phase, keine Wiki-Datei
  inhaltlich veraendert. Report `outputs/2026-07-25_health-check.md`.

## 2026-07-24 — Projekt-Detailartikel Giebelweg 12 (Mac Mini Nachtschicht)
- Offene Frage aus `QUESTIONS.md` recherchiert (Priorität 5 der Nachtschicht: offene KB-Frage
  bearbeiten): Projektordner `AR - 03 Studien/2621 Giebelweg 12/` gelesen (PROJEKT-STAND.md +
  Korrespondenzordner). Neuer Wiki-Artikel [[projekt-giebelweg12]] (emerging): Machbarkeitsstudie
  Juni 2026 loeste Baumasse-Konflikt via Hangschnitt-Nachweis massgebendes Terrain; darauf
  aufbauend hat Christoph am 30.06.2026 fuer seine Mutter (Eigentuemerin) formell Einwendung
  gegen die Baulinien-Festsetzung bei der Gemeinde Langnau a/A eingereicht — Antwort stand per
  24.07. noch aus. Report `outputs/2026-07-24_giebelweg12-projektstand.md`. INDEX.md und
  QUESTIONS.md nachgefuehrt (Frage nach «Beantwortet» verschoben).
- Zweite offene Frage (Baar Zugerstrasse 49, TDD-Ausgang) versucht, aber gescheitert: die
  relevanten Dateien im IMMO-Projektordner sind nicht lokal materialisierte OneDrive-
  Cloud-Platzhalter (`EDEADLK` beim Lesezugriff, auch im Vordergrund-Read-Tool, nicht nur bei
  Background-Agents). In `QUESTIONS.md` mit Ursache vermerkt statt geraten oder ausgelassen.

## 2026-07-21 — Zweiter Health-Check: Re-Audit bestaetigt Verbesserung (Mac Mini Nachtschicht, ~23:35)
- Wissenscheck Phase 1 (unbeaufsichtigt) auf `kunde-bopp` erneut ausgefuehrt — letzter Check
  war 01.07., seither zwei inhaltliche Aktualisierungen (20./21.07., ebenfalls Mac-Mini-
  Nachtschicht). Ampel jetzt A gruen · B gelb (unveraendert) · C gruen (**verbessert**,
  Firmenrollen jetzt registerverifiziert) · D gruen* · E gruen · F gruen (**behoben**, die am
  01.07. rot geflaggten ae/oe/ue-Digraphen sind seit 20.07. korrigiert, hiermit unabhaengig
  bestaetigt) · G 3 Kandidaten (neu: Status-Promotion `profil-christoph-bopp` emerging→
  established; unveraendert: 2 Cluster-Artikel `auftrags-muster-bopp`/
  `zusammenarbeit-lessons-bopp` anlegbar).
- Nur Audit + Ablegen (Phase 1); keine Phase-2-Aktionen (Status-Hebung/Artikel-Auslagerung
  bleiben fuer eine interaktive Session vorgemerkt).
- Report: `outputs/2026-07-21_health-check-2.md`.

## 2026-07-21 — Viertes Mandat identifiziert (Mac Mini Nachtschicht)
- Offene Faktenfrage aus QUESTIONS.md (2026-07-20, "drittes KMU-Vehikel") beantwortet:
  **Feag Facility Engineering AG**, Zuerich (UID CHE-108.531.313) — Bopp-Familienunternehmen
  (Bauphysik/-akustik/Energie, Facility Management). Christoph Bopp seit Jan. 2003 im
  Vorstand, seit Maerz 2019 Praesident des Verwaltungsrats (Nachfolge Vater Walter Bopp).
  Read-only Web-Recherche (moneyhouse.ch Personensuche, northdata.com Vorstands-Historie,
  business-monitor.ch aktuelle Organe).
- `wiki/profil-christoph-bopp.md` aktualisiert (neues Mandat, sources/last_updated).
- Report: `outputs/2026-07-21_drittes-kmu-mandat.md`.

## 2026-07-20 — Firmenrollen verifiziert (Mac Mini Nachtschicht)
- Offene Faktenfrage aus QUESTIONS.md beantwortet: exakte Rollen bei WOMA Maur und Nova
  Property via oeffentliche Register/Webseiten verifiziert (kein Mail-Archiv noetig).
  WOMA Maur ist eine **Genossenschaft** (UID CHE-103.976.168, Sitz Binz), Christoph seit 2013
  Vorstand Ressort Liegenschaften + Vizepraesident. Nova Property Fund Management AG
  (UID CHE-403.795.970, Sitz Freienbach/Pfaeffikon SZ), Christoph seit 2021 Head Development &
  Construction, erweiterte Geschaeftsleitung (davor Losinger Marazzi AG 2010-2021).
- Neuer Lead: drittes, nicht identifiziertes KMU-Vorstandsmandat seit 2004 (Nova-Kurzbio) —
  als neue Frage in QUESTIONS.md aufgenommen.
- `wiki/profil-christoph-bopp.md` aktualisiert (Rollen-Tabelle, Qualifikation) und dabei die im
  Health-Check 01.07. als "rot" geflaggten ae/oe/ue-Digraphen auf echte Umlaute korrigiert.
- Report: `outputs/2026-07-20_firmenrollen-verifikation.md`. Read-only Web-Recherche, kein
  Versand, kein Kontakt mit Dritten.

## 2026-07-01 — Health-Check Phase 1 (Audit)
- Erster Wissens-Health-Check (Skill `wissenscheck`, unbeaufsichtigt) durchgefuehrt.
  Report: `outputs/2026-07-01_health-check.md`.
- Ampel A gruen · B gelb · C gelb · D gruen · E gruen · F rot · G gelb.
- Top-Findings: (F) durchgaengige ae/oe/ue-Digraphen statt echter Umlaute im Artikel
  `profil-christoph-bopp`; (B) 2 tote Backlinks `[[auftrags-muster-bopp]]` /
  `[[zusammenarbeit-lessons-bopp]]`; (G) 4 Projekt-Detailartikel anlegbar.
- Nur Audit + Ablegen; keine Phase-2-Aktionen ausgefuehrt.

## 2026-06-03 — Belegte Projekte ergaenzt (aus Studien-Archiv)
- `profil-christoph-bopp`: Tabelle "Belegte JANS-Projekte fuer Bopp/Nova" ergaenzt — 5 reale
  Studien aus `AR - 03 Studien` (WOMA Maur, Ebmatingen, Baar, Regensdorf, WALD/Nova).
  Erkenntnis: Bopp/Nova ist der wichtigste Studien-Kunde (5 von 16 Archiv-Studien).
- Quelle: Analyse der 16 Machbarkeitsstudien beim Aufbau der `machbarkeit`-Wissensbasis.

## 2026-06-03 — KB angelegt
- Neuer Kunden-KB `wissen/kunde-bopp/` aus dem Bopp-Harness-Aufbau erstellt.
- Seed-Artikel `wiki/profil-christoph-bopp.md` aus dem Mail-Archiv kompiliert (25 Mails,
  Absender woma-maur.ch / novaproperty.ch / bluewin.ch; Stand 2026-06-03).
- `INDEX.md`, `QUESTIONS.md`, `raw/_INGESTED.md` initialisiert.
- Offene Coverage: Projekt-Detailartikel (Ebmatingen 113/115, Romanshorn Hafenstrasse 46,
  Baar Zugerstrasse 49, Giebelweg 12 Langnau) noch nicht angelegt — siehe QUESTIONS.
