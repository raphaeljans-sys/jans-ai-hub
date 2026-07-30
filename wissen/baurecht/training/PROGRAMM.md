---
name: PROGRAMM
beschreibung: Trainingsprogramm fuer das Buch-Lernen des Baurecht-Harness aus «Zuercher Planungs- und Baurecht, Band 1+2». Erschliesst 780 Screenshot-Doppelseiten Lauf um Lauf, verdichtet ins Wiki, uebt Anwendungsfaelle.
frequenz_phase1: taeglich (Aufbau, ~erste 4 Wochen)
frequenz_phase2: alle 2 Tage (Festigung)
frequenz_phase3: woechentlich (Erhaltung + Anwendungs-Drills)
scheduled_task: baurecht-buch-training
last_updated: 2026-07-30 (Run 69)
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
- **Grep-Toleranz bei Buchstaben-Paragraphen (Pruefregel Modell D, seit Run 47):** der amtliche
  ZH-Volltext schreibt Buchstaben-Paragraphen **mit Leerschlag** («§ 160 a.26», «§ 160 b.26»).
  Ein `grep "160a"` liefert deshalb **0 Treffer, obwohl der Paragraph existiert**. Ein
  grep-gestuetzter Vorbefund «Paragraph existiert nicht» ist ohne Toleranz-Syntax **nicht
  belastbar** — immer `grep -E "§ ?NNN ?[a-z]"` verwenden, bevor ein Zitierfehler behauptet wird.
  Betrifft potenziell jeden §§-Check (§ 110a, § 123a, § 149a, § 87a, § 44a, § 338c …).
  Gegenprobe: die Paragraphensequenz um die Fundstelle herum lesen (Run 47: § 160a CONFIRMED,
  Vorbefund war Fehlalarm — anders als die echten Zitierfehler § 209f PBG und «§ 50a VRG»).
- **Fassungsstand kantonaler Erlasse pruefen (Pruefregel Modell D, seit Run 48):** kantonale Erlasse
  altern schneller als die KB. Run 48 fand, dass die **HWSchV seit 01.06.2026 aufgehoben** ist (→ WsG/WsV)
  und 2017 zusaetzlich **durchnummeriert** wurde (Nachtrag 95) — die KB zitierte totes Recht mit
  veralteten Nummern. Vor jedem Zitat eines kantonalen § deshalb auf zhlex pruefen: **(a) gilt der Erlass
  noch?** (b) **welcher Nachtrag ist die letzte materielle Fassung?** Ein `grep`-Treffer in einer alten
  raw-Datei belegt nur, dass der § **einmal** so lautete. Analog zur Grep-Falle: «existiert nicht» ist ohne
  Fassungspruefung nicht belastbar (Run 48: der Agent waere an der 2013er-Fassung beinahe zum Fehlschluss
  «§ 15m existiert nicht» gekommen).
- **Verweisnormen ZWEITEILIG auf Fassungsstand pruefen (Pruefregel Modell D, seit Run 69):** die
  Fassungspruefung aus Run 48 galt dem **Erlass** (gilt er noch? welcher Nachtrag?). Run 69 fand die
  Drift eine **Ebene darunter**: bei Verweisnormen (§ 3 BBV I → Anhang Ziff. 1; § 360 Abs. 3 PBG →
  Richtlinien/Normalien) ist der Erlass unveraendert in Kraft (BBV I: Nachtrag 133) und **nur die
  verwiesene Anhangsziffer** aufgehoben — Anhang Ziff. 1.2/1.21 BBV I per **1.9.2022** (RRB 8.6.2022,
  OS 77, 378, Fn. 84), womit die kantonale Verbindlicherklaerung der **SIA 181** ersatzlos wegfiel
  (heute Art. 32 Abs. 1 LSV, Bundesrecht). Ein Fassungsstand-Check auf Erlassebene haette **nichts**
  gefunden. Darum: bei jeder Verbindlich-/Beachtlicherklaerung und jedem Anhang-Verweis **beide
  Teile** pruefen — Verweisnorm UND verwiesene Ziffer. Zusatz: eine Fundstelle der Form «§ N Abs. NN»
  mit zweistelligem Absatz ist ein **Warnsignal** — im ZH-Recht meist eine verlesene **Anhangsziffer**
  («Anhang Ziff. 1.2» → «§ 3 Abs. 12»); Absatzzahl immer gegen die tatsaechliche Absatzzahl des
  Paragraphen halten.
- **Register-Sweep nach jeder Korrektur (seit Run 47):** derselbe Fakt steht regelmaessig an
  5-6 Fundorten (Wiki, Destillat, `buecher/INDEX.md`, `wiki/INDEX.md`, `training/curriculum.md`,
  `training/drills.md`). Eine Korrektur nur im Fliesstext laesst **Tabellen und Register
  divergieren** (Run 47: Gewaesserraum-Tabelle widersprach dem eigenen Fliesstext ueber 2 Laeufe
  hinweg; «Art. 32bis USG» ueberlebte in 4 Registern). Nach jeder Korrektur `grep -rn` ueber alle
  sechs Dateiarten laufen lassen.

## Fortschritts-Tracker

- **Phase:** **3 (Erhaltung/Drills + Modell-D-Volltextabgleich) — Start 2026-07-11 (Run 28).** Alle 23 Kapitel
  substanziell geschlossen (Kap. 18 = Querverweis `brandschutz`), Cron auf **woechentlich** (`30 7 * * 1`).
  Phase-3-Laeufe verifizieren `emerging`-Belege am amtlichen Volltext (`raw/*_amtlich_zh_*.md`) und heben sie
  auf `established`, statt neue TRANSFER-Doppelseiten zu lesen.
  - **PRIORITÄT (a) NEU EINGESTELLT — Wissens-Chef Run 17 (2026-07-27), Cross-KB energie ↔ baurecht:
    der WsG/WsV-Nachzug ist NICHT geschlossen.** Run 64 hat ihn als «bleibt geschlossen» verbucht;
    gesweept wurde aber nur der Suchbegriff **«HWSchV»**. Das WsG hebt in § 126 **zwei** Erlasse auf:
    «§ 126. Die nachstehenden Gesetze werden aufgehoben: a. **Einführungsgesetz zum
    Gewässerschutzgesetz vom 8. Dezember 1974**, b. Wasserwirtschaftsgesetz vom 2. Juni 1991»
    (Inkrafttreten Fn. 2: 1. Juni 2026; OS 81, 145). Der Chef hat § 126 und § 44 am amtlichen PDF
    `724.1_12.12.24_133.pdf` (zhlex, Nachtrag 133) selbst gegengelesen — die Aufhebung des
    **EG GSchG (LS 711.1)** ist damit belegt, die Zitate in dieser KB sind es nicht. **Auftrag:**
    an allen Fundorten einen Aufhebungsvermerk + Nachfolgenorm setzen, den Buchtext (6. Aufl. 2019)
    dabei quellentreu stehen lassen — genau das Muster des HWSchV-Nachzugs aus Run 48/50.
    **Erledigt-Kriterium:** `grep -rniI "EG GSchG\|EGSchG\|711\.1"` über `wiki/`, `buecher/` und
    `training/` liefert nur noch Stellen mit Aufhebungsvermerk.
    **ABGESCHLOSSEN (Stand 27.07.2026 23:45, Nachtschicht Mac Mini): alle 17 von 17 Fundorte
    korrigiert.** Die letzten 3 (reiner Verweis-Text, kein materieller Fehler) in diesem Lauf
    nachgezogen: `buecher/INDEX.md` (§ 45 EG GSchG → Aufhebungsvermerk + §§ 61/62 WsG ergänzt) ·
    `wiki/INDEX.md` (dito) · `training/curriculum.md` Zeile Kap. 12 Teil 4 (dito). Erledigt-Kriterium
    verifiziert: `grep -rniI "EG GSchG\|EGSchG\|711\.1"` über `wiki/`, `buecher/`, `training/` liefert
    nur noch Stellen mit Aufhebungsvermerk (Buchtext-Zitate, CHANGELOG/QUESTIONS-Historie und
    `raw/` unangetastet, wie vorgesehen). **In den vorangehenden Laeufen erledigt (12 Fundorte, alle
    mit Aufhebungsvermerk + Nachfolgenorm, amtlicher WsG-Volltext `724.1_12.12.24_133.pdf` selbst
    gezogen und gegengelesen):**
    `buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md` (7×, inkl. Frontmatter) ·
    `buecher/band-2/12-baureife-teil4-gebuehren-abfall-altlasten.md` (3×, inkl. Frontmatter) ·
    `buecher/band-1/02-nutzungsplanung-zonenarten-teil2.md` (2×) ·
    `buecher/band-1/03-erschliessung-landsicherung-teil1.md` (1×) ·
    `buecher/band-1/07-vorentscheid-auskuenfte-besondere-zustaendigkeiten.md` (1×).
    **Zuordnungen praezisiert (Wortlaut-Abgleich, nicht mehr nur "bekannt"):** § 8 → § 44 Abs. 1
    lit. a WsG (bestaetigt) · § 15 Abs. 2 → § 52 lit. a WsG (30-Einwohnerwerte-Kriterium wortgleich
    bestaetigt) · § 15 Abs. 3 (40-m-Nebenanlagen) → keine wortwoertliche WsG-Entsprechung gefunden,
    als offen markiert (nicht geraten) · § 35 → **§ 46 WsG** (nicht § 45 — Wortlaut "Gemeindevorstand
    setzt fest / Direktion genehmigt Grundwasserschutzzonen" ist deckungsgleich; praezisiert
    gegenueber der bisherigen Pauschalzuordnung §§35/36→§§45/46) · § 36 Abs. 2 (Grundbuch-Anmerkung)
    → keine exakte Entsprechung gefunden, offen markiert · § 45 (Anschlussgebuehren) → §§ 61/62 WsG
    · § 52 Abs. 1 (Rekurs) → § 122 Abs. 1 WsG (wortgleich bestaetigt) · §§ 13 ff./14 ff./16 →
    generisch §§ 45-48 bzw. §§ 49 ff. WsG zugeordnet (Abschnitts-Ebene, nicht Einzelparagraph-genau).
    **Bereits vom Chef erledigt:** `buecher/band-2/17-haustechnische-anlagen-teil3.md` (§ 8 → § 44
    Abs. 1 lit. a WsG) und `wiki/baureife-und-erschliessung.md` (Fassungs-Warnung gesetzt).
    **Bekannte §-Zuordnungen** (im Einzelnen noch zu verifizieren): § 8 → **§ 44 Abs. 1 lit. a WsG**
    (Wortlaut geprüft: «die der Nutzung von Boden, Untergrund oder Abwasser zur Gewinnung von Energie
    oder zur Kühlung dienen») · § 35 → **§ 46 WsG** (verifiziert 27.07.2026, NICHT § 45 — die frühere
    Pauschalzuordnung «§§ 35/36 → §§ 45/46» ist damit überholt und hier gestrichen; § 36 Abs. 2
    bleibt offen) · § 52 Abs. 1 (Rekurs) → § 122 WsG · §§ 14 ff. (Kanalisationspflicht) → **§§ 49 ff.
    WsG, Abschnitt C Siedlungsentwässerung** · § 45 (Anschlussgebühren) → **§§ 61/62 WsG**
    (beides am amtlichen Volltext bestätigt, Wissens-Chef Run 18, 27.07.2026: § 61 Abs. 1 lit. b
    «Gebühren für den Anschluss von Grundstücken, Bauten und Anlagen an die öffentliche Kanalisation»,
    § 62 Abs. 1 «kostendeckend und verursachergerecht»).
    **Bring-Schuld separat:** Ist die **KGSchV (LS 711.11)** ebenfalls aufgehoben? § 126 WsG hebt nur
    *Gesetze* auf; die Materie von § 35 KGSchV steht heute in § 92 WsV — das indiziert die Aufhebung,
    belegt sie aber nicht. An zhlex LS 711.11 prüfen. **Drittkanal (andere KB, nur melden):**
    `planungsgrundlagen/wiki/kartenportale-oereb-kataster-system-zh.md` Z. 32/34 führt «LS 711.1
    §§ 3/34/37» als geltende ÖREB-Rechtsgrundlage der Themen 130/132 — dort mitzuziehen.
  - **Run 69 (2026-07-30, Festigungsmodus, Priorität (c) Erst-Verifikation + Priorität (a) zwei
    beschaffbare Lücken, kein Agent-Fan-out):** [[grundlagen-planungs-baurecht]] gewählt — der
    **letzte** nie durch den Modell-D-Loop gelaufene Artikel (kein `verifiziert`-Feld, `emerging`
    seit 2026-06-30). Vollständiger Wortlautabgleich §§ 317/218 Abs. 2/270 Abs. 3/238 Abs. 1/320/
    328/360 Abs. 3 PBG gegen `raw/260607_amtlich_zh_pbg.md`, § 20 Abs. 1 lit. c VRG, § 3 + Anhang
    BBV I, Art. 32 Abs. 1 LSV, Art. 679 ZGB (Fedlex). **3 echte Zitierfehler korrigiert:**
    (1) **Art. 679 Abs. 2 ZGB mit invertierter Polarität** zitiert — Abs. 2 ist eine
    Anspruchs*beschränkung* («nur, wenn … die damals geltenden Vorschriften **nicht** eingehalten
    wurden»), die Regel trägt Abs. 1 i.V.m. Art. 684 ZGB (gleiches Muster wie Art. 164 GBV, Run 67);
    (2) **«§ 3 Abs. 12 BBV I» existiert nicht** (§ 3 hat 4 Abs.) — verlesene **Anhangsziffer 1.2**,
    und diese ist samt Ziff. 1.21 **per 1.9.2022 aufgehoben** (RRB 8.6.2022, OS 77, 378), womit die
    kantonale Verbindlicherklärung der **SIA 181** wegfiel (heute Art. 32 Abs. 1 LSV);
    (3) **§ 220 PBG als «Nebenbestimmungen» etikettiert** — amtlich «C. Ausnahmebewilligungen»,
    Nebenbestimmungen sind § 321 PBG. **2 Präzisierungen:** § 318 PBG trägt die intertemporale Regel
    nicht (nur Zuständigkeit; Grundsatz = Rechtsprechung VB.2012.00734, Kompressionsmuster wie
    § 253/§ 320 in Run 63); Unangemessenheit instanzenscharf (§ 20 Abs. 1 lit. c VRG im Rekurs vs.
    § 50 Abs. 2 VRG vor VGr). Status **emerging → established** — **damit trägt kein Wiki-Artikel
    dieser KB mehr ein fehlendes `verifiziert`-Feld.** Register-Sweep über Destillat, beide INDEX,
    `curriculum.md`, `drills.md`. **Priorität (a), zwei Lücken geschlossen:** (i) **KGSchV-Bring-
    Schuld beantwortet** — die **KGSchV (LS 711.11) ist per 01.01.2022 aufgehoben** (zhlex-
    Erlassseite: Aufhebungsdatum 01.01.2022, letzte Fassung Nachtrag 099), über vier Jahre vor dem
    EG GSchG; Aufhebungsvermerke an 6 Fundorten gesetzt, Nachfolgeerlass 2022 aber **noch unbelegt**
    (WsV enthält keine Aufhebungsklausel; § 92 WsV trägt die Erdwärme-Materie des § 35 KGSchV = Indiz,
    nicht Beleg). (ii) **P1 aus Wissens-Chef Run 18 geschlossen** — `raw/260730_amtlich_zh_wsg.md`
    und `raw/260730_amtlich_zh_wsv.md` angelegt (beide Nachtrag 133, in Kraft 01.06.2026); **§ 126
    WsG am eigenen Volltext gegengelesen**, Aufhebung EG GSchG + WWG jetzt KB-intern belegt; die zwei
    offenen §-Zuordnungen (§ 15 Abs. 3 40-m-Nebenanlagen, § 36 Abs. 2 Grundbuch-Anmerkung) sind an
    **beiden** Volltexten unauffindbar und bleiben ausdrücklich offen. **Neue Frage aufgeworfen:**
    ist SIA 380/1 noch teilverbindlich? (am geltenden BBV-I-Anhang nicht belegbar, Cross-KB an
    `energie`/`normen`). **0 Halluzinationen, 3 echte Fehler, 1 Fassungsstand-Drift, 2 Präzisierungen,
    1 Statuserhöhung, 2 Lücken geschlossen, 3 Fragen neu/offen.** 4 neue Drill-Karten.
    **Neue Leitplanke eingetragen:** Verweisnormen zweiteilig prüfen (Erlass UND Anhangsziffer altern
    getrennt) + Warnsignal «§ N Abs. NN» mit zweistelligem Absatz. Report
    `outputs/2026-07-30_buch-run69.md`. **«Rückstand abgebaut» weiterhin NICHT ausgerufen**
    (Leitplanke Run 48) — der Artikel galt vier Wochen als «vollständig erschlossen» und trug drei
    substanzielle Fehler, einen davon mit umgekehrter Rechtsfolge. **Nächster Schritt:** die
    Erst-Verifikations-Liste ist abgearbeitet; es beginnt ein **neuer Umlauf über die ältesten
    `verifiziert`-Daten** (`grep -h "^verifiziert:" wiki/*.md | sort`; älteste Kerne
    [[fahrzeugabstellplaetze-und-parkierung]] 2026-07-12, [[rechtsschutz-und-rechtsmittelverfahren]]
    / [[wohnhygiene-und-raumanforderungen]] 2026-07-12/13) — alternativ die drei neu offenen Fragen
    dieses Laufs.
  - **Run 68 (2026-07-27, Festigungsmodus, Priorität (c) Erst-Verifikation, kein Agent-Fan-out):**
    [[enteignung-und-entschaedigung]] gewählt (letzter der beiden nie durch den Modell-D-Loop
    gelaufenen `emerging`-Artikel, von Run 67 empfohlen). Vollständiger Wortlautabgleich aller
    14 PBG-Fundstellen (§§ 41-43a/62/64/65/102/103/119/122/165/202/212/214/235/346) gegen
    `raw/260607_amtlich_zh_pbg.md` (Nachtrag 133) — **alle CONFIRMED, 0 Korrekturen.** AbtrG
    (LS 781) und EG ZGB §§ 183ff. waren bislang nur aus dem Buchzitat übernommen, nie live
    geprüft — beide erstmals frisch von zhlex.zh.ch geladen (neue Primärquelle
    `raw/260727_amtlich_zh_abtrg.md`, Erweiterung `raw/260725_amtlich_zh_egzgb.md` um
    §§ 180-183quater). **3 echte Zitierfehler gefunden und korrigiert:** (1) «gütliche
    Einigung» steht in § 29 AbtrG, nicht § 28 (§ 32 AbtrG verweist explizit auf «die in § 29
    vorgesehene gütliche Verständigung»); (2) die vier Schätzungskommissionen/-kreise stehen
    in §§ 33/34 AbtrG, nicht §§ 40/41; (3) der Zinsenlauf-Satz steht in § 183bis Abs. 3 EG ZGB,
    nicht § 183 (dieser ist seit 2011 aufgehoben). §§ 39/46/54/56 AbtrG sowie § 183ter/
    § 183quater EG ZGB CONFIRMED. AbtrG-Fassungsstand erstmals geprüft: Nachtrag 099 (aktuell,
    1.1.2018), keine neuere Revision trotz vom Buch (Stand 2019) vermerkter
    Revisionsbedürftigkeit (RRB 58/2005) — bis heute unumgesetzt. Register-Sweep: derselbe
    § 28-Fehler unabhängig auch in `buecher/band-1/09-rechtsschutz-teil2-ablauf-kosten-
    revision.md` gefunden und korrigiert. Status **emerging → established** angehoben,
    erstmaliges `verifiziert`-Feld ergänzt, `wiki/INDEX.md` Statusmarker nachgezogen. **0
    Halluzinationen, 3 echte Zitierfehler korrigiert, 1 Fassungsstand erstmals bestätigt.**
    3 neue Drill-Karten (2×A, 1×D). Report `outputs/2026-07-27_buch-run68.md`.
    **«Rückstand abgebaut» weiterhin NICHT ausgerufen** (Leitplanke Run 48). **Nächster
    Schritt:** [[grundlagen-planungs-baurecht]] als letzter verbleibender nie verifizierter
    `emerging`-Artikel — danach beginnt ein neuer Umlauf über die inzwischen ältesten
    `verifiziert`-Daten unter den `established`-Artikeln.
  - **Run 67 (2026-07-27, Festigungsmodus, Priorität (c) Erst-Verifikation, kein Agent-Fan-out):**
    [[nebenbestimmungen-und-reverse]] gewählt (von Run 66 empfohlen, eines von drei nie durch den
    Modell-D-Loop gelaufenen `emerging`-Artikeln). Vollständiger Wortlautabgleich §§ 320/321/326/
    73/100/101/244/360 PBG gegen `raw/260607_amtlich_zh_pbg.md`, §§ 30/31 VRG gegen
    `raw/260712_amtlich_zh_vrg.md`, § 16 Abs. 2 BBV I gegen `raw/260607_amtlich_zh_bbv1.md` —
    **alle CONFIRMED, 0 Korrekturen**, Fassungsstand PBG weiterhin Nachtrag 133. **2 echte Funde**
    bei den bisher nur sekundär belegten Bundesrechts-/VRG-Zitaten (gegen Fedlex/zhlex amtlich
    nachgeprüft): (1) **§ 10a VRG → § 10b VRG** — Fassungsstand-Drift, in Kraft seit 1.1.2026
    (Änderung 30.10.2023, OS Band 79: neuer § 10a VRG elektronische Benachrichtigung eingefügt,
    bisherige §§ 10a-10d VRG zu §§ 10b-10e verschoben, Begründungspflicht inhaltlich unverändert
    jetzt § 10b Abs. 1 VRG); (2) **Art. 164 GBV war mit invertierter Polarität zitiert** — korrigiert
    von «müssen nur angemerkt werden» auf amtlich korrekt «müssen NICHT angemerkt werden»
    (Fedlex `eli/cc/2011/667`, Übergangsausnahme von der erst 2012 mit Art. 962 Abs. 1 ZGB
    eingeführten Anmerkungspflicht) — vermutlich Transkriptionsfehler bei Ersterfassung Run 11,
    im Quell-Destillat markiert statt stillschweigend übernommen. Zusätzlich 1 Präzisierung:
    § 326 PBG regelt die Baubeginn-Sperre, nicht direkt die Vollstreckung (§§ 30/31 VRG). Status
    **emerging → established** angehoben, erstmaliges `verifiziert`-Feld ergänzt. Register-Sweep
    ueber `buecher/INDEX.md`, beide betroffenen Kap.-7-Destillate, `wiki/INDEX.md`,
    `training/drills.md`. **0 Halluzinationen, 1 Fassungsstand-Drift, 1 inhaltlicher Fehler,
    1 Präzisierung.** 2 neue Drill-Karten (2×D). Report `outputs/2026-07-27_buch-run67.md`.
    **«Rückstand abgebaut» weiterhin NICHT ausgerufen** (Leitplanke Run 48). **Nächster Schritt:**
    [[enteignung-und-entschaedigung]] oder [[grundlagen-planungs-baurecht]] als verbleibende
    nie verifizierte Priorität-(c)-Kandidaten.
  - **Run 66 (2026-07-27, Festigungsmodus, Priorität (a) Cross-KB-Nachtrag + Priorität (c)
    Erst-Verifikation, kein Agent-Fan-out):** **Priorität (c):**
    [[baurechtlicher-vorentscheid-und-voranfrage]] gewählt — einer von vier Wiki-Artikeln, die
    seit ihrer Erstellung **nie** durch den Modell-D-Loop gelaufen waren (kein `verifiziert`-Feld,
    `emerging` seit 2026-06-21). Vollständiger Wortlautabgleich §§ 322/323/324 PBG (Vorentscheid-
    Kernnormen, Gültigkeit/Rechtswirkung), § 310 Abs. 3 PBG (Baubefugnis-Nachweis-Ausnahme),
    § 315 PBG (Zustellungsbegehren) und § 213 PBG (Provokationsverfahren Schutzwürdigkeit) gegen
    `raw/260607_amtlich_zh_pbg.md` — **alle CONFIRMED, 0 Korrekturen, 0 Halluzinationen**,
    Fassungsstand weiterhin Nachtrag 133. Status **emerging → established** angehoben,
    erstmaliges `verifiziert`-Feld ergänzt, Register-Sweep in `wiki/INDEX.md` (Status-Marker
    korrigiert). **Priorität (a):** der seit Wissens-Chef Run 15 (25.07.2026) offene Cross-KB-
    Befund zum PBG-Revisionsstrang «Erleichtertes Bauen im Bestand» (§ 220a E-PBG,
    Mehrlängenzuschlag-Aufhebung §§ 21/23/24 ABV) bearbeitet: als Vorentwurfsstatus (keine
    Rechtswirkung, keine Kantonsratsvorlage per 24.07.2026) in [[ausnahmebewilligung-und-
    bestandesschutz]] und [[abstaende-und-hoehen]] nachgetragen, mit Querverweis auf die
    führende KB `planungsgrundlagen`. **0 Halluzinationen, 1 Statuserhöhung, 1 Cross-KB-Befund
    geschlossen.** 2 neue Drill-Karten (1×A, 1×D). Report `outputs/2026-07-27_buch-run66.md`.
    **«Rückstand abgebaut» weiterhin NICHT ausgerufen** (Leitplanke Run 48). **Nächster
    Schritt:** die verbleibenden drei nie verifizierten `emerging`-Artikel
    ([[enteignung-und-entschaedigung]], [[nebenbestimmungen-und-reverse]],
    [[grundlagen-planungs-baurecht]]) als nächste Priorität-(c)-Kandidaten.
  - **Run 65 (2026-07-27, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** [[ausnahmebewilligung-und-bestandesschutz]] gewählt (letzter Check Buch-Run
    45/46, 2026-07-15 — von Run 64 empfohlen). Vollständiger Modell-D-Wortlautabgleich §§ 218/219/
    220 (Abs. 1-3), § 357 (Abs. 1/4/5), § 307 (Abs. 1/2), § 321, § 101, §§ 318/320 PBG gegen
    `raw/260607_amtlich_zh_pbg.md` — **alle CONFIRMED, 0 Korrekturen**, Fassungsstand weiterhin
    Nachtrag 133. Sekundärprüfung § 49 Abs. 3 PBG (Höhe 4 m/5 m «Besonderes Gebäude»): Zitat trifft
    nur auf die Anhang-Fassung zu, Nuance bereits an anderer Stelle der KB ([[abstaende-und-hoehen]])
    korrekt geführt, kein Register-Sweep-Nachzug nötig. **0 Halluzinationen, 0 Korrekturen.** 2 neue
    Drill-Karten (2×D). Report `outputs/2026-07-27_buch-run65.md`. **«Rückstand abgebaut» NICHT
    ausgerufen:** der Fassungsstand-Check bleibt Daueraufgabe (Leitplanke Run 48), und weitere
    Priorität-(c)-Kandidaten mit älterem `verifiziert`-Datum sind noch nicht durchlaufen.
    **Nächster Schritt:** Fassungsstand-Sammelcheck der verbleibenden, noch nie live gegen zhlex
    geprüften kantonalen Erlasse fortsetzen oder nächster Priorität-(c)-Kandidat nach ältestem
    `verifiziert`-Datum (`grep -h "^verifiziert:" wiki/*.md | sort`).
  - **Run 64 (2026-07-27, Festigungsmodus, Priorität (a) Negativsweep + Priorität (b)
    Fassungsstand-Check + Priorität (c) Re-Verifikation, kein Agent-Fan-out):** **Priorität (a):**
    vollständiger KB-weiter Sweep nach HWSchV/Hochwasserschutz/Gewässerabstand — 0 neue stale
    Fundorte seit Run 50, WsG/WsV-Nachzug bleibt geschlossen. **Priorität (b):** VRG (LS 175.2)
    als Fassungsstand-Kandidat gewählt (nie seit Beschaffung 12.07.2026 live gegen zhlex
    geprüft). Fund: Basisquelle war auf **Nachtrag 129** eingefroren, aktuell **Nachtrag 133**
    (zhlex `history-entry-0`). Frisches PDF Wort für Wort gegen alle 7 zitierten VRG-Paragraphen
    (§§ 8/9/10c/15/29a/30/31) geprüft — **CONFIRMED, 0 materielle Änderung**. **Priorität (c):**
    [[rechtsschutz-und-rechtsmittelverfahren]] (letzter Check Run 46, 2026-07-15) adversarial
    re-verifiziert — Run-44-Korrektur zur Nicht-Erstreckbarkeit der 30-Tage-Vernehmlassungsfrist
    (§ 26b/§ 12 VRG) bestätigt unverändert bei Nachtrag 133. Register-Sweep: Fassungsstand-Vermerk
    in [[widerrechtliche-bauten-und-sanktionen]] und [[bauausfuehrung-und-baukontrolle]] (beide
    zitieren dieselbe VRG-Rohquelle) nachgezogen. **0 Halluzinationen, 1 Fassungsstand-Drift
    entdeckt und als materiell folgenlos dokumentiert, 0 neue inhaltliche Fehler.** 2 neue
    Drill-Karten (2×D). Report `outputs/2026-07-27_buch-run64.md`. **«Rückstand abgebaut» NICHT
    ausgerufen:** der Fassungsstand-Check ist eine Daueraufgabe (Leitplanke Run 48) — weitere,
    bisher nie live geprüfte kantonale/kommunale Erlasse können noch existieren, und die
    Priorität-(c)-Liste ist nicht vollständig durchlaufen ([[ausnahmebewilligung-und-
    bestandesschutz]], zuletzt 2026-07-15, steht als nächster Kandidat aus). **Nächster
    Schritt:** [[ausnahmebewilligung-und-bestandesschutz]] als Priorität-(c)-Kandidat.
  - **Run 63 (2026-07-27, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** [[raumplanung-und-gestaltung]] gewählt (letzter verbleibender Kandidat mit
    `verifiziert`-Datum 2026-07-14, empfohlen von Run 62). Vollständiger Modell-D-Wortlautabgleich
    §§ 7/18/19/39/46 Abs. 3/48/49-65/69-73/346 PBG (Zonentypen-Enumeration numerus clausus § 48
    Abs. 2, Fristen 60-Tage-Auflage § 7/Planungszone 3+2 Jahre § 346) gegen
    `raw/260607_amtlich_zh_pbg.md` — **CONFIRMED, 0 Korrekturen** an diesem Bestand (§§ 83-89/44a
    PBG bereits Run 43 CONFIRMED, nicht erneut geprüft). **1 echte Korrektur:** «Anspruch auf
    Bewilligung … § 253 PBG» war fehlzugeordnet — § 253 PBG regelt nur die Nutzweise/
    Zonenkonformität, die Anspruchsnorm ist **§ 320 PBG** (im übrigen Wiki-Bestand bereits
    durchgängig korrekt geführt, isolierte Wiki-Kompressionsabweichung, Register-Sweep negativ:
    keine Propagation in `wiki/INDEX.md`/`buecher/INDEX.md`/`training/curriculum.md`).
    **0 Halluzinationen, 1 echte Korrektur, 0 neue Fehler im übrigen Bestand.** 3 neue Drill-
    Karten (2×D, 1×A). Report `outputs/2026-07-27_buch-run63.md`. Damit ist die von Run 55
    begonnene Liste der ältesten `verifiziert`-Daten (Stand 2026-07-14) einmal vollständig
    durchlaufen (`baulinien-und-abstandslinien`/`naturschutz-und-denkmalschutz`/
    `raumplanung-und-gestaltung` alle Run 61-63 re-verifiziert). **Nächster Schritt:** erneuter
    Fassungsstand-Sammelcheck der kantonalen Erlasse gegen zhlex.zh.ch (Daueraufgabe, Leitplanke
    Run 48, zuletzt vollständig Run 52-54) oder neuer Umlauf über die inzwischen ältesten
    `verifiziert`-Daten (`grep -h "^verifiziert:" wiki/*.md | sort`).
  - **Run 62 (2026-07-27, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** [[baulinien-und-abstandslinien]] gewählt (letzter verbleibender Kandidat
    mit `verifiziert`-Datum 2026-07-14 vor [[raumplanung-und-gestaltung]], empfohlen von Run 61).
    Vollständiger Wortlautabgleich §§ 90-122 PBG (Erschliessungsplan, Baulinien, Niveau-/Ski-
    Schlittellinien, Werkplan, vorsorgliches Bauverbot) gegen `raw/260607_amtlich_zh_pbg.md` —
    **CONFIRMED, 0 Korrekturen am Kernbestand**, Fassungsstand weiterhin Nachtrag 133. **2 echte
    Register-Sweep-Korrekturen gefunden:** § 33a ABV (Aussendämmung 35 cm) ist seit RRB 11.5.2016
    aufgehoben — korrekte, an anderer Stelle der KB ([[ausnahmebewilligung-und-bestandesschutz]])
    bereits verwendete Fundstelle ist § 253a PBG, war aber nie in diesen Artikel gesweept worden;
    zusätzlich Klarstellung Haupt- vs. Anhang-Fassung § 260 Abs. 3 PBG für die per Gerichtspraxis
    analog herangezogene 1/3-Fassadenlänge-Vorsprungsregel (harmonisierte Fassung hat anderen
    Regelungsgegenstand, offene Praxisfrage markiert statt übernommen). StrG-Fassungsstand-
    Vermerk aus Run 53 (Nachtrag 133) nachgezogen. **0 Halluzinationen, 2 Register-Sweep-
    Korrekturen, 0 neue Fehler im Kernbestand.** 3 neue Drill-Karten (2×D, 1×A). Report
    `outputs/2026-07-27_buch-run62.md`. **Nächster Schritt:** [[raumplanung-und-gestaltung]]
    (letzter verbleibender Priorität-(c)-Kandidat mit `verifiziert`-Datum 2026-07-14).
  - **Run 61 (2026-07-27, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** [[naturschutz-und-denkmalschutz]] gewählt (eines von drei Artikeln mit
    ältestem `verifiziert`-Datum 2026-07-14, breitester Paragraphen-Fächer). Vollständiger
    Modell-D-Wortlautabgleich aller 14 zitierten PBG-§§ (203/204/205/207/208/209/210/211/213/
    216/217/238a/50/76/338b) gegen `raw/260607_amtlich_zh_pbg.md` sowie beider KNHV-§§
    (10/12) gegen `raw/260714_amtlich_zh_knhv.md`. **Alle 16 Fundstellen CONFIRMED, 0
    Korrekturen, 0 Halluzinationen.** Bemerkenswert bestätigt: § 209 Abs. 1/4/5 PBG
    tatsächlich aufgehoben (nur Abs. 2/3 in Kraft), § 213 Abs. 3 PBG trägt die «+1 Jahr»-
    Erstreckungsklausel wortgleich (gilt nur für den Provokationsentscheid, nicht analog
    zwingend für § 209), § 238 Abs. 3 PBG aufgehoben zugunsten § 238a. Fassungsstand PBG
    weiterhin Nachtrag 133, keine Drift gegenüber Run 58/59/60. Kein Register-Sweep nötig (0
    Fehler). 3 neue Drill-Karten (2×C, 1×D). Report `outputs/2026-07-27_buch-run61.md`.
    **Nächster Schritt:** verbleibende Priorität-(c)-Kandidaten mit `verifiziert`-Datum
    2026-07-14 (`baulinien-und-abstandslinien`/`raumplanung-und-gestaltung`).
  - **Run 60 (2026-07-27, Festigungsmodus, Priorität (a) Cross-KB-Frage SIA-500-Kennwert +
    Priorität (c) Stichproben-Re-Verifikation, kein Agent-Fan-out):** Die seit 2026-07-21
    (Wissens-Chef Run 11) offene Cross-KB-Frage zur Herkunft des Behindertenparkplatz-
    Kennwerts («1 je 25 Wohnungen + 100 m Gehdistanz» in `wiki/fahrzeugabstellplaetze-und-
    parkierung.md`) geklärt: Wert stammt wörtlich aus dem Standardwerk (Bd. 2, S. 900,
    § 13.5.1.5), das dort **SN 521 500 Korrigendum C3 (1.10.2013)** zitiert, nicht die
    SIA-500:2009-Basisausgabe, gegen die Run 11 verglichen hatte. Kein Fehlzitat, keine
    Halluzination — nur die Norm-Referenz war ungenau; Quellenangabe im Wiki präzisiert,
    Cross-KB-Hinweis an `normen` ergänzt (Norm-Korrigendum-Wortlaut selbst bleibt
    kostenpflichtig/unverifizierbar wie VSS SN 640). **Priorität (c):** [[wohnhygiene-und-
    raumanforderungen]] (ältestes `verifiziert`-Datum, 2026-07-13, seit Run 33 nicht mehr
    geprüft) — §§ 299-306 PBG, § 40 BBV I, § 32/§ 4 ABV erneut vollständig Wort für Wort
    gegen die amtlichen Volltexte geprüft, **CONFIRMED, 0 materielle Korrekturen**;
    Fassungsstand PBG/ABV/BBV I ohne Drift gegenüber Run 53/58/59. **Register-Sweep-
    Nebenbefund:** `wiki/INDEX.md:29` führte den Artikel noch als `emerging` trotz
    `established`-Frontmatter — korrigiert (gleiches Muster wie Run 44/54). **0
    Halluzinationen, 1 Herkunftsklärung (Priorität a), 1 Stale-Status-Korrektur, 0 neue
    materielle Fehler (Priorität c).** 3 neue Drill-Karten (1×A, 1×D, 1×C).
    Report `outputs/2026-07-27_buch-run60.md`. **Nächster Schritt:** Priorität-(c)-Kandidat
    unter den zuletzt 2026-07-14 geprüften Artikeln (`baulinien-und-abstandslinien`/
    `naturschutz-und-denkmalschutz`/`raumplanung-und-gestaltung`).
  - **Run 59 (2026-07-27, Festigungsmodus, Priorität (a) Cross-KB-Flag + Priorität (c)
    Stichproben-Re-Verifikation, kein Agent-Fan-out):** Cross-KB-Flag der KB `energie`
    (Wissens-Chef Run 16, 26.07.2026) zu § 273/§ 260 Abs. 4 PBG bearbeitet. Zwei der drei
    gemeldeten Fundorte (`wiki/gebaeudearten-und-abstandssystem.md:31`, `wiki/INDEX.md:17`)
    waren bereits korrekt (Minibau § 260 Abs. 4 und Besonderes Gebäude § 273 schon als zwei
    getrennte Kategorien geführt). **Echte Lücke** in `wiki/abstaende-und-hoehen.md`
    geschlossen: § 260 Abs. 4 PBG (Minibau, 1,5 m/2 m², vollständige Grenz-/Gebäudeabstands-
    befreiung) fehlte im Hauptabschnitt «Grenzabstand» komplett, jetzt ergänzt und klar von
    § 273 (nur reduzierter Gebäudeabstand 3,5 m) abgegrenzt. **Echter Fund, in der Meldung
    nicht benannt:** `buecher/band-2/15-lage-von-gebaeuden-teil3-harmonisierung.md:72`
    zitierte Minibauten fälschlich als «§ 273 nPBG» statt § 260 Abs. 4 PBG — korrigiert;
    Register-Sweep über `training/curriculum.md` negativ (dort bereits korrekt). Beide
    Wiki-Zielartikel wortlautverifiziert gegen `raw/260607_amtlich_zh_pbg.md` +
    `raw/260607_amtlich_zh_abv.md`. **Priorität (c):** [[geschosse-und-kniestock]] (ältestes
    `verifiziert`-Datum, zuletzt Run 34/13.07.2026) — §§ 275/276 PBG **beide Fassungen**
    (harmonisiert + alt/Anhang) wortlautgeprüft, **CONFIRMED, 0 Korrekturen.** **0
    Halluzinationen, 1 echte Lücke geschlossen, 1 Fehlzitat korrigiert, 0 neue Fehler bei der
    Re-Verifikation.** 3 neue Drill-Karten (1×A, 1×D, 1×C). Report
    `outputs/2026-07-27_buch-run59.md`. **Nächster Schritt:** zweitältestes
    `verifiziert`-Datum als Priorität-(c)-Kandidat (`baulinien-und-abstandslinien`/
    `naturschutz-und-denkmalschutz`/`raumplanung-und-gestaltung`/
    `wohnhygiene-und-raumanforderungen`, alle zuletzt 2026-07-14 geprüft).
  - **Run 58 (2026-07-25, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** Run 57s Empfehlung gefolgt — die zwei zurückgestellten Kandidaten
    [[bauausfuehrung-und-baukontrolle]] und [[widerrechtliche-bauten-und-sanktionen]] (beide
    `established` seit Run 30/31, nur `verifiziert`-Feld fehlte) geprüft. **[[widerrechtliche-
    bauten-und-sanktionen]]:** Stichprobe §§ 340/340a/341 PBG gegen `raw/260607_amtlich_zh_pbg.md`
    + § 30/31 VRG gegen `raw/260712_amtlich_zh_vrg.md` wortlautgeprüft — **alle CONFIRMED, 0
    Korrekturen.** PBG-Fassungsstand live gegen zhlex.zh.ch bestätigt (Nachtrag 133, keine Drift
    zur raw-Datei). `verifiziert`-Feld ergänzt. **[[bauausfuehrung-und-baukontrolle]]:** Bestand
    §§ 326-329 PBG + §§ 10c/30 VRG aus Run 30/31 bestätigt, **aber Register-Sweep-Rückstand aus
    Run 47 gefunden:** die dort an 4 Stellen korrigierte Geisterbezeichnung «Art. 32bis USG»
    (amtlich korrekt **Art. 32bbis USG**) überlebte an **3 weiteren, von Run 47 nicht erfassten
    Fundorten** — Wiki-Frontmatter + -Fliesstext, Destillat `buecher/band-1/08-ausfuehrung-teil2-
    baustellensicherheit.md` (5 Stellen), `training/curriculum.md` (1 Stelle). Alle korrigiert;
    historische Fundorte (CHANGELOG/outputs/QUESTIONS/PROGRAMM-Tracker/drills.md-Beschreibungen),
    die die vergangene Korrektur selbst dokumentieren, bewusst unverändert gelassen. Beide
    Artikel erhielten ihr erstes `verifiziert`-Feld. **0 Halluzinationen, 1 Register-Sweep-
    Korrektur (Altfund), 0 neue materielle Fehler.** 3 neue Drill-Karten (2×D, 1×A). Report
    `outputs/2026-07-25_buch-run58.md`. **Nächster Schritt:** nach diesem Lauf trägt (ausser
    Registerdateien) kein `established`-Artikel mehr ein fehlendes `verifiziert`-Feld —
    nächster Priorität-(c)-Kandidat: ältestes `verifiziert`-Datum unter den bereits geprüften
    Artikeln (`grep -h "^verifiziert:" wiki/*.md | sort`) oder Fassungsstand-Sammelcheck auf
    weitere kantonale Erlasse ausserhalb der in Run 52-54 geprüften Liste ausweiten.
  - **Run 57 (2026-07-25, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** [[bestandsumbau-eingriffstiefe]] gewählt (Kt. SZ, seit Seed 07.06.2026 nie
    durch den Modell-D-Loop gelaufen, gegenüber dem Run-56-Alternativkandidaten mit höherem
    Erkenntniswert). **Befund: das PBG SZ (Planungs- und Baugesetz Kt. Schwyz, SRSZ 400.100) war
    bislang KEIN amtlicher Volltext in der KB** — der Artikel zitierte «§ 60 PBG SZ» und flaggte
    die Besitzstandsgarantie als «SZ analog — § verifizieren», beides seit dem Seed unbelegt.
    Amtliches PDF (sz.ch, SRSZ-Stand 1.2.2025) mit `pdftotext -layout` beschafft
    (`raw/260725_amtlich_sz_pbg.md`). **§ 60 PBG SZ CONFIRMED** (Grenzabstand 50 % Gebäudehöhe/
    min. 3 m, Attika-Rücksprungregel Abs. 3 lit. c bestätigt die im Praxisfall Wangen verwendete
    Firstprojektionslinien-Logik) — bestehendes Zitat war korrekt, nur nie amtlich belegt.
    **Echte Lücke geschlossen: § 72 Abs. 1 PBG SZ** («Bestehende, rechtmässig erstellte Bauten
    und Anlagen, die den neuen Vorschriften widersprechen, sind in ihrem Bestande garantiert»)
    als amtliches SZ-Pendant zu § 357 PBG ZH identifiziert; § 72 Abs. 3 (5-J-Wiederaufbaurecht)
    ergänzt. **Neue offene Frage bewusst markiert:** § 72 PBG SZ trägt keine mit § 357 PBG ZH
    vergleichbare Übernutzungs-Kasuistik im Gesetzeswortlaut — Übertragung der ZH-Gerichtspraxis
    auf SZ ungeprüft, im Artikel als offene Frage (nicht stillschweigend gleichgesetzt) markiert.
    Register-Sweep negativ (Zitate nur im Zielartikel, keine weiteren Fundorte). **0
    Halluzinationen, 0 Fehlzitate** (Beleglücke geschlossen, keine Korrektur eines falschen
    Werts). Erstmaliges `verifiziert`-Feld ergänzt. 3 neue Drill-Karten (2×D, 1×A). Report
    `outputs/2026-07-25_buch-run57.md`. **Nächster Schritt:** `bauausfuehrung-und-baukontrolle.md`/
    `widerrechtliche-bauten-und-sanktionen.md` (laut Run 55 bereits in Run 30/31
    volltextverifiziert, nur `verifiziert`-Feld fehlt) oder neue Kandidatensuche via
    `grep -L "^verifiziert:" wiki/*.md`.
  - **Run 56 (2026-07-25, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** Run 55s Empfehlung gefolgt: [[zonenkonformitaet]] (last_updated 2026-06-02,
    ältester `established`-Bestand ohne `verifiziert`-Feld, ausschliesslich Buch-/BZO-Quellen
    ohne einen einzigen PBG-§-Beleg) geprüft. **Grosser Fund:** die komplette Grundmasse-Tabelle
    (Zonen W2-W5, Z5) stammte aus `raw/260602_docs-baurecht-bzo-zh.md`, einer selbst verfassten
    Platzhalterdatei, die die Werte explizit als unbelegte Schätzung auswies («TODO: Werte
    ergänzen») — nie gegen den amtlichen Erlass geprüft, trotzdem seit Ersterfassung Teil eines
    `established`-Artikels. Amtliche Quelle `raw/260607_amtlich_zh_bzo-zurich-stadt.md` (BZO
    Zürich Stadt, Stand 29.05.2024) enthielt Art. 13/14/18 bereits, war aber beim Ersteinlesen
    tabellarisch linearisiert (Spalten verschoben, unbrauchbar). Original-PDF
    (`oerebdocs.zh.ch/getDoc?docid=6`) frisch mit `pdftotext -layout` extrahiert — Tabelle damit
    sauber lesbar. **Alle Zahlenwerte waren falsch:** Systematik «grosser/kleiner Grenzabstand»
    existiert in der Stadt-Zürich-BZO nicht (kantonale PBG/ABV-Regelbauweise-Terminologie,
    fälschlich zugeordnet) — echte Systematik: einheitlicher Grundgrenzabstand 5 m (Wohnzonen)/
    3,5 m (Zentrumszonen) + Mehrlängenzuschlag Art. 14; AZ in % statt Dezimalbruch (W2 60 %, W3
    90 %, W4b 105 %, W4 120 %, W5 165 %, W6 205 %, Z5-Z7 200/230/260 %); Gebäudehöhen weichen
    durchweg ab (W2 9 m statt 7,5 m, W3 9,5 m statt 10,5 m, W4 12,5 m statt 13,5 m, W5 15,5 m
    statt 16,5 m); Zonen W2bI-III, W4b, W6, Z5-Z7 fehlten komplett. **Register-Sweep negativ**
    (falsche Werte nur im Wiki-Artikel + seiner abgelösten Quelldatei, keine weiteren Fundorte in
    `buecher/`, `wiki/INDEX.md`, `training/curriculum.md`). Neue Quelldatei `raw/260725_amtlich_
    zh_bzo-zurich-stadt-grundmasse.md`. **0 Halluzinationen** (der Artikel hatte den Platzhalter
    bereits korrekt als `needs-verification` geflaggt — ein weiterer Beleg der Leitplanke «ein
    Flag ist selten harmlos»), 1 kompletter Tabellen-Fehlbestand korrigiert, 4 neue Drill-Karten.
    Report `outputs/2026-07-25_buch-run56.md`. **Nächster Schritt:** `bauausfuehrung-und-
    baukontrolle.md` / `widerrechtliche-bauten-und-sanktionen.md` (laut Run 55 in Run 30/31
    bereits volltextverifiziert, nur `verifiziert`-Feld fehlt) oder `bestandsumbau-eingriffstiefe.md`
    (Kt. SZ, noch nie geprüft) als nächster Priorität-(c)-Kandidat.
  - **Run 55 (2026-07-25, Festigungsmodus, Priorität (c) Stichproben-Re-Verifikation, kein
    Agent-Fan-out):** Nach Run 54s Empfehlung auf Priorität (c) umgeschwenkt: Kandidaten mit
    fehlendem/ältestem `verifiziert`-Feld ermittelt (sechs `established`-Artikel ganz ohne dieses
    Feld; [[nutzungsziffern]] + [[ausnuetzungsuebertragung]], last_updated 2026-07-10, als
    erreichbarster Kandidat vor der Fassungsstand-Umkehr-Erkennung Run 31 gewählt). **Grosser
    Fund — dritte Fassungsstand-Umkehr** (nach [[abstaende-und-hoehen]] Run 31,
    [[geschosse-und-kniestock]] Run 33/34): [[nutzungsziffern]] zitierte die harmonisierten
    §§ 255/256/257/258 PBG + §§ 9-13 ABV als künftige «Harmonisierungsvorlage/nPBG», obwohl sie
    seit der PBG-Änderung 14.9.2015 / ABV-Änderung 11.5.2016 (in Kraft 1.3.2017) **bereits
    geltender Hauptteil** sind; die Anhang-Fassung (Stand 28.2.2017) gilt nur bis zur BZO-Anpassung
    der jeweiligen Gemeinde. **3 Einzelkorrekturen:** § 9 ABV «UG mehrheitlich über gewachsenem
    Boden» ist im Hauptteil gestrichen (nur Anhang-Recht) — das Buch-Destillat hatte dies bereits
    Run 24 (2026-07-08) als needs-verification vermutet, jetzt am amtlichen Volltext bestätigt;
    § 10 lit. c ABV aktuell **20 %** statt 10 %; **§ 17 Abs. 2 ABV existiert nicht** (aufgehoben
    seit 1.2.1992) — Nutzweisen-Übertragung beruht ausschliesslich auf kommunalem Recht. Korrigiert
    in [[nutzungsziffern]], [[ausnuetzungsuebertragung]], Destillat [[14-nutzungsdichte-
    ausnuetzung]] + vollständiger Register-Sweep (`wiki/INDEX.md`, `buecher/INDEX.md`,
    `training/curriculum.md`, `training/drills.md` — 3 Karten korrigiert, 2 neu). Beide Wiki-Artikel
    + Destillat erhielten erstmals ein `verifiziert`-Frontmatter-Feld. 1 neuer needs-verification-
    Flag (ÜZ-«Unterniveaubauten»-Neuregelung am § 256-PBG-Wortlaut nicht wörtlich bestätigt — evtl.
    Buchkommentar). **0 Halluzinationen.** Report `outputs/2026-07-25_buch-run55.md`. **Nächster
    Schritt:** [[zonenkonformitaet]] (last_updated 2026-06-02, ausschliesslich Buch-/BZO-Quellen
    ohne PBG-§-Beleg, ältester ungeprüfter Bestand) als nächster Priorität-(c)-Kandidat.
  - **Run 54 (2026-07-25, Festigungsmodus, Fortsetzung Fassungsstand-Check + PPV-Primärquelle
    gefunden — kein Agent-Fan-out):** Fortsetzung Priorität (b) aus Run 53: **EnerG (LS 730.1)
    und WsG/WsV (LS 724.1/724.11) live gegen zhlex geprüft — beide ohne Drift** (EnerG weiterhin
    Nachtrag 129; WsG/WsV Nachtrag 133, deckungsgleich mit dem bereits in `raw/260717_amtlich_zh_
    hwschv.md` erfassten Stand). **Echter Lückenschluss:** die seit Run 33 (13.07.2026) nur über
    ein Leitfaden-Sekundärzitat abgesicherte PPV-Stelle (Art. 8 Abs. 5-8 autoarme Nutzungen)
    erhielt ihre **amtliche Primärquelle** — per Websuche die konsolidierte PPV-PDF «mit
    Änderungen bis 16. Dezember 2015» lokalisiert (`741.500_Parkplatzverordnung_16_V4.pdf`,
    Fussnote «Fassung gem. GRB vom 16. Dezember 2015; Inkraftsetzung 12. September 2016»),
    `pdftotext -layout` extrahiert und Wort für Wort geprüft: **CONFIRMED, 0 materielle
    Korrekturen** (einzige Differenz: Leitfaden fügt in Abs. 6 stilistisch «dabei» ein, kein
    Gesetzeswortlaut). Nachgezogen: `raw/260713_amtlich_zh_ppv-stadt-zuerich.md` (neuer
    Abschnitt), Wiki [[fahrzeugabstellplaetze-und-parkierung]] (Quellen + verifiziert-Feld +
    Fliesstext), Destillat [[13-fahrzeugabstellplaetze-spielflaechen-teil3]] (offene-Punkte-Zeile
    geschlossen). **Register-Sweep-Nebenbefund:** `wiki/INDEX.md` führte den Artikel noch als
    `emerging` trotz seit Run 29 geltendem `established`-Frontmatter — korrigiert. **0
    Halluzinationen**, 1 Lückenschluss, 2 Fassungsstand-Vermerke, 2 neue Drill-Karten. Damit ist
    die seit Run 48 aufgebaute Liste kantonaler Erlasse (ABV/BBV I/BBV II/BVV/KNHV/StrG/EnerG/
    WsG/WsV/PPV) **einmal vollständig durchlaufen**. **«Rückstand abgebaut» weiterhin NICHT
    ausgerufen** (Leitplanke Run 48: Daueraufgabe) — Vorschlag für den nächsten Lauf: Wechsel zu
    Priorität (c), Stichproben-Re-Verifikation eines `established`-Bestands mit ältestem
    `verifiziert`-Datum. Report `outputs/2026-07-25_buch-run54.md`.
  - **Run 53 (2026-07-25, Festigungsmodus, MacBook Pro, Fassungsstand-Sammelcheck — kein Agent-
    Fan-out):** Priorität (a) geprüft und bereits geschlossen vorgefunden (Anhang 6 LSV = Run 51,
    WsG/WsV-Nachzug = Run 50) → direkt zu Priorität (b) übergegangen. **Sechs kantonale Erlasse
    live gegen zhlex.zh.ch geprüft** (effiziente Methode: `curl -sIL` auf
    `zhlex.zh.ch/Erlass.html?Open&Ordnr=<LS>` liest den aktuellen Nachtrag aus dem Location-Header,
    ohne PDF-Download): **ABV (LS 700.2, Nachtrag 127), BBV I (700.21, 133), BBV II (700.22, 097),
    BVV (700.6, 133), KNHV (702.11, 130) — alle fünf ohne Drift**, KB-Rohquellen-Nachtragsnummern
    stimmen exakt. **StrG (LS 722.1): Drift gefunden** — die KB-Rohquelle `raw/260713_amtlich_zh_
    strg.md` (13.07.2026) hatte eine bereits damals archivierte zhlex-Fassung (Nachtrag 109, Stand
    1.7.2020) bezogen statt der zum Abrufzeitpunkt aktuellen; aktuell ist **Nachtrag 133** (Stand
    1.7.2026). **Volltextvergleich §§ 59-64 StrG (PDF Nachtrag 133 vs. Nachtrag 109): wortgleich
    unverändert** — die Zwischenrevisionen 113/117/133 betrafen andere Gesetzesteile, nicht Kapitel
    VII (Schlussbestimmungen). **0 materielle Korrektur nötig**, die bestehende § 62-StrG-Analyse
    (Run 36/40: kein kommunal/kantonal-Split, max. ½ Wertvermehrung/¾ Kosten, max. ½ Trottoir-
    Kosten) bleibt gültig. Fassungsstand-Prüfvermerk ergänzt in `raw/260713_amtlich_zh_strg.md` +
    `verifiziert`-Feld in `buecher/band-1/03-erschliessung-landsicherung-teil1.md`. **0
    Halluzinationen**, 2 neue Drill-Karten (Modell D). Report `outputs/2026-07-25_buch-run53.md`.
    **«Rückstand abgebaut» NICHT ausgerufen** (Leitplanke): weitere kantonale Erlasse (EnerG, WsG/
    WsV, PPV Stadt Zürich als Gemeinderecht) sind noch nicht in diesem Zyklus (Run 52/53) auf
    zhlex-Aktualität geprüft; der periodische Fassungsstand-Check bleibt eine Daueraufgabe.
  - **Run 52 (2026-07-25, Modell D, MacBook Pro, Fassungsstand-Check — kein Agent-Fan-out, VOLLGAS-
    Einzellauf):** Priorität (b) des Festigungsmodus: **LSV-Novelle 01.04.2026** (offener needs-
    verification-Flag Wissens-Chef Run 14, 24.07.2026) an der amtlichen Fedlex-Quelle geklärt.
    Fedlex-Filestore-URLs für USG (ELI 1984/1122_1122_1122) und LSV (ELI 1987/338_338_338) mit
    Datumssegment 20260401 getestet, per `curl`+`grep` direkt aus dem HTML-Quelltext extrahiert
    (nicht nur WebFetch-Zusammenfassung) — Titelblatt bestätigt Stand 1. April 2026 für beide
    Erlasse. **Anhang 3/4/5/6 LSV materiell unverändert** (Stichprobe Anhang 3 Ziff. 2 ES II
    nachgerechnet, identisch zu Stand 1.11.2023) — der Wissens-Chef-Vorbehalt («Entlastungstendenz»)
    war korrekt. **Neuer Fund, bisher nicht geflaggt: Art. 31a LSV ist per 1.4.2026 AUFGEHOBEN**
    (V vom 25.2.2026, AS 2026 114) — die alte Fluglärm-Sonderregel (automatisch schliessendes
    Schlafraumfenster) existiert im Gesetzeswortlaut nicht mehr, aufgegangen in der generalisierten
    Ausnahme **Art. 31 Abs. 2 LSV** (Fluglärm ODER ≤10 % Wohneinheiten grosser Wohnüberbauungen,
    kantonale Zustimmung + überwiegendes Interesse). Korrigiert an **6 Fundorten**: Wiki
    [[laermschutz-und-nichtionisierende-strahlung]] (Hauptkorrektur, neuer Abschnitt «Bauen bei
    Grenzwertüberschreitung»), Destillat `buecher/band-2/19-baulicher-umweltschutz-teil2-laerm-
    nisv.md` (Fassungsstand-Vermerke, Buchstand 2019 bleibt als solcher erkennbar stehen),
    `buecher/INDEX.md`, `wiki/INDEX.md` (dabei stale `emerging`→`established`-Statuskorrektur als
    Nebenbefund), `training/drills.md` (1 Karte korrigiert + 1 neue Modell-D-Karte). Zusätzlich
    **Art. 22 USG neu gefasst** (3 KWL-/Fenster-Wege je Wohneinheit + verschärfter Mindestschutz
    Art. 21 USG, Art. 31 Abs. 1bis LSV KWL/Kühlsysteme Stand der Technik) und **Nebenfund Art. 24
    Abs. 3 USG** (neue Innenentwicklungs-Ausnahme bei Einzonung trotz Planungswert-/IGW-
    Überschreitung) ins Wiki integriert. Neuer amtlicher Volltext
    `raw/260725_amtlich_ch_usg-lsv-novelle-20260401.md`. **0 Halluzinationen**, 1 strukturelle
    Korrektur, 2 Ergänzungen, 2 Drill-Karten (1×A, 1×D). QUESTIONS-Flag geschlossen (Kopf + Archiv-
    Fundstelle Z. 903). Report `outputs/2026-07-25_buch-run52.md`. **«Rückstand abgebaut» NICHT
    ausgerufen** (Leitplanke): der Fassungsstand-Check ist eine dauerhafte Pflicht, kein
    abschliessbarer Bestand — weitere kantonale Erlasse (ABV, StrG, PPV, BBV II) sind noch nicht in
    diesem Zyklus geprüft.
  - **Run 51 (2026-07-24, Modell E, Nachtschicht Mac Mini, gezielte Luecke, kein Agent-Fan-out —
    Budget-Disziplin Nachtschicht):** **Anhang 6 LSV** (Industrie-/Gewerbelaerm, seit Run 48 als
    offen geflaggt) via Fedlex-Filestore-HTML (Rule 260721) beschafft (`raw/260724_amtlich_ch_lsv-
    anhang6.md`, Stand 1.11.2023) — Geltungsbereich Ziff. 1 (inkl. Parkhaeuser/HLK-Anlagen),
    Grenzwerttabelle ES I-IV Ziff. 2 (**wertidentisch zu Anhang 3/4**, PW < IGW < AW CONFIRMED),
    Beurteilungspegel-Formel + Pegelkorrekturen K1/K2/K3 Ziff. 3 neu erfasst. Wiki
    [[laermschutz-und-nichtionisierende-strahlung]] um Abschnitt «Industrie- und Gewerbelaerm»
    ergaenzt. **0 Korrekturen, 0 Halluzinationen** — bestehende Destillat-Referenz
    (Fahrzeugabstellplaetze) war bereits korrekt, keine Wiki↔Destillat-Divergenz. 1 neue Drill-Karte
    (Modell C). QUESTIONS-Flag geschlossen. Report `outputs/2026-07-24_buch-run51.md`.
  - **Run 50 (2026-07-20, Festigungsmodus — 2 beschaffbare Luecken aus dem eigenen raw geschlossen, kein
    externer Abruf):** (a) **WsG/WsV-Nachzug abgeschlossen** (Restposten Run 48): KB-weiter HWSchV-Sweep ueber
    wiki/buecher/training; 2 veraltete Register-Stellen korrigiert — `training/drills.md` Z. 83 «§ 15d HWSchV /
    11 m eingedolt» war dreifach ueberholt (Renumbering § 15d→§ 15k, Aufhebung 01.06.2026, § 24 WsV OHNE
    Mindestmass — 11 m nur noch via Art. 41a Abs. 2 lit. a GSchV) + `training/curriculum.md` Z. 74 «§ 15m HWSchV»
    ohne Aufhebungsvermerk. § 183 lit. b WsV als Nachfolger von § 15h (Festlegung Baudirektion) bestaetigt.
    (b) **Meldeverfahren §§ 2a-2e BVV** (LS 700.6) als **vierter Verfahrenstyp** ins Wiki [[baubewilligungsverfahren]]
    integriert (Bring-Schuld Cross-KB Run 10 erledigt) — § 2a Tatbestaende + Rueckausnahme Abs. 2 (Kernzonen/
    Denkmalschutz bewilligungspflichtig), § 2b Tragweite, § 2c Unterlagen, § 2d Einreichung (30 T vor Baubeginn,
    Behandlungsfrist 30 T), § 2e **Genehmigungsfiktion**; Flag-Notiz «§§ 2a-2c» → §§ 2a-2e korrigiert. Belegt
    gegen `raw/260607_amtlich_zh_bvv.md` (Fassungsstand 1.7.2026 NT 133). **0 Halluzinationen**, 3 Drills, ~7
    Fundorte synchronisiert. **«Rueckstand abgebaut» NICHT ausgerufen:** Anhang 6 LSV + periodischer
    zhlex-Fassungsstand-Check brauchen externen Abruf (online-faehiger Lauf). Report `outputs/2026-07-20_buch-run50.md`.
  - **Run 48 (2026-07-17, Modell-D Beschaffungslauf — die 3 «beschaffbaren» Luecken aus Run 47 geschlossen,
    Freigabe Raphael):** **4 neue amtliche Volltexte** (LSV Art. 40-42 + Anhang 3/4; GSchV Art. 41c +
    UebgBest. 4.5.2011; HWSchV ZH + **Nachfolgerecht WsG/WsV**; USG Art. 32e + VASA). **Jede Luecke deckte
    einen echten Fehler auf** — schwerster: **die HWSchV ist seit 01.06.2026 aufgehoben** (OS 81, 144), die
    KB zitierte totes kantonales Recht; § 15m stand **auf dem Kopf** (Verweis/beguenstigend statt Vorrang/
    einschraenkend); Renumbering Nachtrag 95 uebersehen (§ 15d→§ 15k etc.); LSV-**Additionsprinzip ohne
    seine Ausnahme** (PW neue Anlagen); **VASA-Stichtag** falsch (Berechtigung 1.2.2001 vs. Satz-Staffelung
    40 %/30 %). **5 echte Korrekturen, 0 Halluzinationen**, ~15 Fundorte, 4 Drills. **Neue Leitplanke:**
    Fassungsstand kantonaler Erlasse pruefen. Report `outputs/2026-07-17_buch-run48.md`.
  - **Run 47 (2026-07-17, Modell-D — 4 Komplexe adversarial parallel via Agent-Fan-out: Gewaesserraum GSchV,
    LSV-Schallschutz, Quartierplan PBG, USG-Nomenklatur):** **Die Run-46-Meldung «Verifikations-Rueckstand
    abgebaut» war verfrueht** — eine Gegenprobe ueber das ganze QUESTIONS-Dokument fand 4 Flags, die am
    inzwischen vorhandenen Volltext sehr wohl pruefbar waren (sie standen weiter unten und wurden vom
    Run-46-Sweep nicht erfasst). Befunde: Gewaesserraum-**Kennzahlen-Tabelle widersprach dem eigenen
    Fliesstext** (Run-32-Korrektur nur dort nachgefuehrt; Schwellen 1 m/2 m, Art. 41b Abs. 2 fehlzitiert) +
    **Art. 41c → Art. 41a Abs. 4 lit. a** in band-1/02; **LSV 6 Praezisierungen + 4 Luecken** (gewichtigste:
    **Art. 32 Abs. 3 LSV** — Schallschutzpflicht auch im Umbau/Fensterersatz, fehlte ueberall); Quartierplan
    **vollstaendig CONFIRMED** (Vorbefund «§ 160a existiert nicht» = **Leerschlag-Falle** «§ 160 a.26»);
    USG **«Art. 32bis» als Geisterbezeichnung** an 4 Register-Fundorten. **0 Halluzinationen**, ~20 Fundorte
    synchronisiert, 4 Drills. **2 neue Pruefregeln** oben in den Leitplanken verankert (Grep-Toleranz,
    Register-Sweep). Ruecktaktungs-Empfehlung bleibt bestehen. Report `outputs/2026-07-17_buch-run47.md`.
  - **Run 45 (2026-07-15, Modell-D — 3 Komplexe adversarial parallel via Agent-Tool: §§ 218/219/220 PBG,
    KNHV §§ 13-22/29-32, USG-Altlasten Re-Verifikation):** § 220 Abs. 2 PBG **Gemeinwesen-Ausnahme** (offene
    Luecke seit Run 34) vollstaendig in [[ausnahmebewilligung-und-bestandesschutz]] ergaenzt + Abs. 3-Praezisierung
    + §§ 218/219-Trias (raw/260607_amtlich_zh_pbg.md Z. 2179-2194). KNHV: Fehlzuordnung Naturschutz-Lebensraeume
    «§§ 19-22» → **§ 13 KNHV** korrigiert, Abschnitts-Randtitel Nachtrag 130 bestaetigt, § 14/§ 30 KNHV neu belegt
    (raw/260714_amtlich_zh_knhv.md). USG-Altlasten adversariale Re-Verifikation: Kern haelt (Art. 32c/32d/32dbis/
    32bbis alle CONFIRMED), 1 Absatz-Korrektur Art. 32d **Abs. 4** statt Abs. 3 (Kostenverteilungsverfuegung).
    **3 echte Korrekturen, 0 Halluzinationen.** 5 neue Drills. Mehrere Stale-Flags geschlossen. **Befund:
    Verifikations-Rueckstand weitgehend abgebaut** — Ruecktaktung auf woechentlich empfohlen. Report
    `outputs/2026-07-15_buch-run45.md`.
  - **Run 44 (2026-07-14, Modell-D — 4 Komplexe parallel via Agent-Tool: VRG-Rechtsschutz, § 238→§ 238a-
    Divergenz, Quartierplan § 160a/81/129, RPG/WEG-Erschliessung):** VRG-Rechtsschutz (§§ 25/26/26a-d/
    55/58/86-89 VRG + § 317/338/339/339b PBG) gegen `raw/260714_amtlich_zh_vrg_rechtsschutz2.md` +
    `raw/260712_amtlich_zh_vrg.md` + `raw/260607_amtlich_zh_pbg.md` — 2 Praezisierungen (Replikrecht
    § 26b VRG ist Praxis aus Art. 29 Abs. 2 BV, nicht Gesetzeswortlaut; Zivilgericht-Forum folgt aus
    § 317 PBG, nicht aus § 339b PBG allein), [[rechtsschutz-und-rechtsmittelverfahren]] bleibt
    `emerging`. **Wiki↔Wiki-Divergenz § 238 Abs. 3 → § 238a PBG** (Vorgaerten/Beguenung seit 1.12.2024)
    behoben in [[baulinien-und-abstandslinien]] + 2 Buch-Destillaten + `wiki/INDEX.md`-Statuskorrektur
    (dort faelschlich noch `emerging` trotz laengst `established`). Quartierplan § 160a/§ 160b/§ 81/
    § 129 PBG unabhaengig CONFIRMED (Kollision mit Parallel-Instanz, die denselben Komplex am selben
    Tag bereits erledigt hatte — kein Schaden). Art. 19/22/27 RPG + WEG-Klaerung: 2 neue
    Bundesrechts-Volltexte via Fedlex beschafft (`raw/260714_amtlich_ch_rpg-erschliessung.md`,
    `raw/260714_amtlich_ch_weg.md`), 1 Praezisierung (15-J-Frist steht in Art. 5 Abs. 1 WEG, nicht
    Art. 19 Abs. 2 RPG). **3 echte Korrekturen, 0 Halluzinationen.** 6 neue Drills (Modell D). Workflow-
    Tool bewusst nicht verwendet (kein Nutzer-Opt-in), stattdessen 4 parallele Agent-Tool-Aufrufe nach
    dem in Run 31/36 erprobten Muster. Report `outputs/2026-07-14_buch-run44.md`.
  - **Run 43 (2026-07-14, Modell-D Gestaltungsplan §§ 83-89 + § 44a PBG, kein Agent-Fan-out —
    Kollisionsvermeidung zu einer parallel laufenden Instanz, die zeitgleich Kap. 17 Ausruestungen als
    „Run 42" bereits committet hatte):** Wiki [[raumplanung-und-gestaltung]] (bleibt `established`,
    erstmals `verifiziert`-Feld) gegen `raw/260607_amtlich_zh_pbg.md` Z. 483-493/909-972 gegengeprueft
    — **§§ 83-89 PBG (Gestaltungsplan Inhalt/oeffentlich/privat/Zustimmung/Aufhebung/Vorpruefung-
    Festsetzung-Genehmigung) + § 44a PBG (Materialgewinnung/-ablagerung) alle CONFIRMED, 0 Fehler.**
    Zusaetzlich zwei liegen gebliebene **NISV-AGW-Fundstellen-Divergenzen** («Art. 6 Abs. 3» statt
    «Art. 3 Abs. 6 NISV») bereinigt, die der Run-39-Fix (dort nur `buecher/INDEX.md`) nicht erfasst
    hatte: `wiki/INDEX.md` (Zeile [[laermschutz-und-nichtionisierende-strahlung]]) und eine Drill-Karte
    in `training/drills.md`. 6 neue Drills (3×D/2×C/1×A). **Neue Lehre:** `buecher/INDEX.md` und
    `wiki/INDEX.md` sind zwei separate Dateien mit redundanten Kurzfassungen — eine Korrektur muss
    beide treffen, nicht nur eine. **Nebenbefund:** die PROGRAMM-Tracker-Nachfuehrung fuer Run 41 fehlte
    (Report/CHANGELOG vorhanden, aber kein Tracker-Eintrag) — hier nicht rekonstruiert, nur vermerkt.
    Report `outputs/2026-07-14_buch-run43.md`.
  - **Run 40 (2026-07-14, Modell-D BBV-I-Wortlaut vollständig abgeschlossen + § 62 StrG Nachzug, kein
    Agent-Fan-out — Kollisionsvermeidung zu Parallel-Lauf «Run 38» KNHV/USG/VRG):** [[17-haustechnische-
    anlagen-teil3]] `emerging`→**`established`** — §§ 18/21/22/23/24/26/29/30a/31/32/33/37/40/42/43/44/
    45/45a/46/46a BBV I + § 19a BBV II volltextverifiziert gegen `raw/260607_amtlich_zh_bbv1.md`/`bbv2.md`.
    **Zweite Wiki↔Destillat-Divergenz nach Run 39 gefunden:** die bereits am 2026-07-13 (Run 32/33) im
    Wiki [[wohnhygiene-und-raumanforderungen]] korrigierten Fehler (§ 24 BBV I ≠ AWEL-Bewilligung, «§ 45
    Abs. 3» existiert nicht → § 45a, § 42a aufgehoben → § 43) waren im Destillat noch nicht nachgeführt;
    **plus 2 bisher unentdeckte Fehler** (§ 29 Abs. 2 BBV I keine «Ausnahme innenliegende Räume»; § 42
    Abs. 1 BBV I kein «> 1 Kochplatte»-Kriterium). 6 Korrekturen, 1 Ergänzung (12-W/m²-Komfortklimadeckel).
    **Zweiter Komplex:** § 62 StrG Mehrwertbeiträge — die am 2026-07-13 (Run 36) im Wiki
    [[baulinien-und-abstandslinien]] korrigierte Regel (§ 62 lit. c/d, max. ½ Wertvermehrung/¾ Kosten
    bzw. ½ Trottoir-Kosten, kein kommunal/kantonal-Split) an 4 weiteren Stellen nachgezogen (Buch-Destillat
    `03-erschliessung-landsicherung-teil1.md`, Wiki [[baureife-und-erschliessung]], `buecher/INDEX.md`
    2×). 8 Drills (6×D, 2×C). **BBV-I-Wortlaut damit vollständig abgeschlossen** — das war die letzte
    explizit benannte Restschuld aus Run 39. **Naechste Phase-3-Ziele:** § 357 Abs. 5 PBG
    Verordnungspraxis (Shots ab 732), Kap. 17 Restteile §§ 295-298 PBG, Kap. 2 Teil 3 Gestaltungsplan
    (noch kein Wiki-Artikel), § 48 BBV I im Destillat nachtragen (geringe Prio). Report
    `outputs/2026-07-14_buch-run40.md`.
  - **Run 39 (2026-07-14, Modell-D EnerG §§ 9-14 Fassungsstand, kein Agent-Fan-out — Kollisionsvermeidung
    bei mehreren zeitgleichen VOLLGAS-Instanzen):** Wiki↔Destillat-Divergenz geschlossen — die EnerG-
    Korrekturen aus Run 32 (Wiki [[wohnhygiene-und-raumanforderungen]]) waren im Buch-Destillat
    [[17-haustechnische-anlagen-teil3]] + `buecher/INDEX.md` NICHT nachgeführt (trotz «verifiziert»-Vermerk).
    Gegen `raw/260712_amtlich_zh_energ.md` (Nachtrag 129): **VHKA-Schwelle «ab 5 Nutzeinheiten» korrigiert →
    Neubau ≥ 2 / Bestand ≥ 3 (§ 9 Abs. 1/3), Befreiung § 9 Abs. 5**; **fossile WKK/Notstrom § 12b EnerG
    (Probeläufe ≤ 50 h), nicht § 30a Abs. 2 BBV I / § 13**; **§ 13 aufgehoben, § 9a existiert nicht**; § 10a/§ 10c
    (Eigenstromerzeugung/PV) als neu erfasst. Zusätzlich **NISV-INDEX-Fundstelle «Art. 6 Abs. 3» → «Art. 3 Abs. 6
    NISV»** korrigiert. **5 Korrekturen, 0 Halluzinationen**, 4 neue Drills (3×D, 1×A). Kollisionsfrei zu
    Parallel-Lauf «Run 38» (KNHV/USG/VRG). **Offen:** BBV-I-Wortlaut Kap. 17 (raw bbv1). Report
    `outputs/2026-07-14_buch-run39.md`.
  - **Run 36 (2026-07-13, Modell-D-Volltextabgleich, 5 Komplexe parallel via Agent-Tool — Workflow-Tool
    bewusst vermieden, siehe Run-32-Lehre):** [[wohnhygiene-und-raumanforderungen]] `emerging`→`established`
    (PBG §§ 299-306 + § 32/§ 4 ABV, alle 10 Fundstellen CONFIRMED, 0 Fehler); [[ausnahmebewilligung-und-
    bestandesschutz]] ergaenzt (§ 357 Abs. 5 PBG Milderung-von-Bauvorschriften, echte Luecke geschlossen);
    [[abstaende-und-hoehen]] doppelt verifiziert (§282/284/292/293 PBG + § 30 ABV Schattenwurf **3 Std.**
    CONFIRMED, **§ 28 ABV korrigiert:** 0,5-m-Regel ist Gerichtspraxis VB.2005.00519, kein Gesetzeswortlaut);
    [[baulinien-und-abstandslinien]] erweitert (§§ 90-95/§ 111/§§ 114-122 PBG neu, **§ 106 PBG korrigiert:**
    Niveaulinien auch ueber Baulinien fuer Wasserbauprojekte, nicht nur Verkehrsbaulinien; § 62 StrG bleibt
    offen mangels Volltext); [[baubewilligungsverfahren]] praezisiert (§ 325/§ 325a PBG, **Solaranlagen-
    Zuordnung korrigiert:** § 1/§§ 2a-2c BVV statt nicht mehr existentem PBG-Verweis). **3 Korrekturen,
    0 Halluzinationen.** Ein erster Kap.-16-Agent lieferte keinen Diff und wurde erfolgreich neu gestartet.
    5 neue Drills (4×C/D, 1×A). **Naechste Phase-3-Ziele:** § 62 StrG (Volltext beschaffen), § 357 Abs. 5
    PBG Verordnungspraxis (Buchtext Shots ab 732), Kap. 17 Restteile §§ 295-298 PBG, Kap. 2 Teil 3
    (§ 49b/§§ 83-89/§ 87a/§ 44a PBG Gestaltungsplan, noch kein Wiki-Artikel). Report
    `outputs/2026-07-13_buch-run36.md`.
  - **Run 33-35 (2026-07-13, Modell-D-Volltextabgleich, zwei zeitgleiche VOLLGAS-Laeufe mit teilweiser
    Ziel-Ueberschneidung — Details je CHANGELOG.md):** [[geschosse-und-kniestock]] `emerging`→`established`
    (Fassungsstand-Umkehr: harmonisiert § 275/276 PBG Kniestock **1,5 m**/4 Geschossarten inkl. Attika ist
    heute geltender Hauptteil, alt 0,9/1,3 m nur noch Anhang-Weitergeltung — analog [[abstaende-und-hoehen]]);
    [[ausnahmebewilligung-und-bestandesschutz]] + [[gebaeudearten-und-abstandssystem]] `emerging`→`established`;
    [[laermschutz-und-nichtionisierende-strahlung]] `emerging`→`established` (Anhang 5 Ziff. 222 LSV
    Restklaerung geschlossen); [[fahrzeugabstellplaetze-und-parkierung]] verifiziert (Wegleitung 1997
    CONFIRMED, PPV Stadt Zuerich Art. 8 Abs. 5-8 Wortlaut ergaenzt, VSS-Fehlzitat "SN 640 060" entfernt);
    [[naturschutz-und-denkmalschutz]] § 209 PBG "+1 Jahr"-Verlaengerung als reine Analogie bestaetigt (kein
    Gesetzeswortlaut, keine Halluzination); [[wohnhygiene-und-raumanforderungen]] Kaminhoehen/LRV verifiziert
    (Art. 20 LRV per 1.1.2022 aufgehoben, Feuerungskontroll-Rhythmus praezisiert 4/2/3 Jahre statt pauschal
    2). **Hinweis fuer Radar:** Zeitgleiche ueberlappende Laeufe fuehrten zu doppelter Bearbeitung derselben
    Ziele (geschosse-und-kniestock, PPV) — Lock-Mechanismus fuer `baurecht-buch-training` pruefen. Reports
    `outputs/2026-07-13_buch-run32.md` (Vortag) + `outputs/2026-07-13_buch-run35.md`.
  - **Run 32 (2026-07-12/13, Modell-D-Volltextabgleich, 5 Komplexe parallel via Agent-Tool — Workflow-Tool
    scheiterte an Freigabe-Gate im unbeaufsichtigten Lauf):** **§§ 278-293 PBG** (Hoehen/Dach/Hochhaus,
    [[abstaende-und-hoehen]] KORRIGIERT: Gebaeudehoehe-Beleg falsch zugeordnet, Untergeschoss "80 cm" nicht
    auffindbar → richtig § 275 Abs. 3 = 2,5 m/3 m, Schattenwurf-Schwelle vertauscht → richtig **3 Std.**
    nicht 2), **§§ 8/9/10c/15 VRG** (Akteneinsicht/Realakte, echte Luecke in [[rechtsschutz-und-rechtsmittelverfahren]]
    ergaenzt), **Art. 41a/41b GSchV** (Gewaesserraum-Widerspruch [[abstaende-und-hoehen]] vs.
    [[15-lage-von-gebaeuden]] AUFGELOEST — kein echter Widerspruch, nur Abs.1/Abs.2-Verwechslung), **LSV/NISV**
    ([[laermschutz-und-nichtionisierende-strahlung]] KORRIGIERT: AGW-Legaldefinition Art. 3 Abs. 6 NISV nicht
    Art. 6, Mobilfunk-Grenzwerte frequenzbereichs- statt einzelfrequenz-gestaffelt), **BBV I/II + EnerG**
    ([[wohnhygiene-und-raumanforderungen]] KORRIGIERT, **Fassungsstand-Befund**: § 42a/§ 45 Abs.3/§ 48 BBV I
    existieren nicht mehr, §§ 9-13 EnerG im Buch-Destillat teils veraltet gegenueber Nachtrag 129/1.7.2025).
    **3 neue Quelldateien:** `raw/260712_amtlich_ch_gschv.md`, `raw/260712_amtlich_ch_lsv-nisv.md`,
    `raw/260712_amtlich_zh_energ.md`. 10 Korrekturen gesamt, 0 Halluzinationen. 5 Drills (3×D/1×A). **Naechste
    Phase-3-Ziele:** [[geschosse-und-kniestock]] (alte § 275/276-Zaehlweise, noch `emerging`), Anhang 5
    Ziff. 222 LSV (Detail offen). Report `outputs/2026-07-13_buch-run32.md`.
  - **Run 31 (2026-07-12, Modell-D-Volltextabgleich, 5 Komplexe parallel via Workflow-Tool):** **§§ 218-232
    (Baupolizeirecht), §§ 269-274+292 (Abstaende), § 120/122/150/264/346 (Landsicherung), §§ 203-213 (Natur-/
    Heimatschutz), § 30 VRG** je durch einen Refutations-Agenten geprueft. **GROSSER BEFUND — Fassungsstand-
    Umkehr:** der amtliche PBG-Volltext (LS 700.1, Stand 1.7.2026) fuehrt die **harmonisierte IVHB-Fassung als
    geltenden Hauptteil** (§ 273 «Kleinbauten und Anbauten», § 292 Dachaufbauten **½**), das alte Recht (bes.
    Gebaeude 4/5 m, 1/3) nur noch im **Anhang Stand 28.2.2017** (Weitergeltung bis BZO-Harmonisierung der
    Gemeinde); [[abstaende-und-hoehen]] Fassungsstand-Box umgekehrt + § 273/§ 292 Doppelwerte (bleibt
    `established`, Zahlenwerk bestaetigt). **13 Korrekturen gesamt:** § 219 nur Verschaerfung/zwingend, § 220
    allg. Dispens, § 225 (Bau, statt § 224 Abs. 2), § 230 Abs. 2 (30-T-Frist), § 232 Abs. 2/3, § 226 Abs. 2,
    § 270 Abs. 3 PBG (statt «§ 270 ZGB»); § 213 Abs. 3 (statt Abs. 1), § 209 Abs. 2/3; § 122 Abs. 1 «seit
    Rechtskraft»; Grundpfand **Art. 836 ZGB** (statt § 15 VRG). **NEU `raw/260712_amtlich_zh_vrg.md`** (§§
    8/9/10c/15/30 VRG). Status-Hebungen `emerging`→**`established`**: [[11-allgemeine-bestimmungen-baupolizeirecht]],
    [[04-natur-und-heimatschutz]], [[naturschutz-und-denkmalschutz]], [[baulinien-und-abstandslinien]]. 7 Drills
    (1×A/6×C-D). **Naechste Phase-3-Ziele:** §§ 278-293 nPBG (harmonisierte Hoehen/Dach/Attika am Hauptteil),
    §§ 8/9/15 VRG (Rechtsschutz-Verfahren), GSchV Art. 41a/41b (Gewaesserraum-Widerspruch 15-lage↔abstaende).
    Report `outputs/2026-07-12_buch-run31.md`.
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
- **TRANSFER ABGESCHLOSSEN (festgestellt Buch-Run 49, 20.07.2026):** Alle Inhaltskapitel
  beider Baende sind destilliert (Kap. 1–17 und 19–23; Kap. 2 mit bekanntem Set-Rest
  S. 152–169, siehe curriculum.md). Die frueheren Restschuld-Notizen (Kap. 6/14/15/16/17)
  waren VERALTET — am Inventar und an den Quellen verifiziert: Shots 486–495 [x], §§ 269–274
  [x], Kap.-16-Schluss S. 1230 (16.9.3) in [[band-2/kap16-10_gebaeudedimensionen-harmonisierung]]
  erfasst (Run 49 direkt am Shot 619 verifiziert und angereichert), Kap.-17-Ausruestungen [x],
  «Restschuld Kap. 6 S. 405–422» war nur der Kapiteltrenner Kap. 7 (Shot 212, S. 422/423, leer).
- **Verbleibende offene Shots — KEIN Destillationsstoff:** 1–40 Front-Matter Band 1 (Titel/
  Verzeichnisse bis S. ~77); 321–344 Front-Matter Band 2 (Titelseite S. 638/639 am Bild
  verifiziert, Verzeichnisse bis Kap.-11-Start S. 685); 664–681 Kap. 18 Brandschutz (BEWUSST
  ausgelassen → Skill `brandschutz`, kein Doppelaufbau).
- **Kuenftige Laeufe = Phase 3:** Drills, Modell-D-Volltextverifikationen offener Wiki-Artikel
  (z.B. [[wohnhygiene-und-raumanforderungen]] `emerging` bis PBG §§ 299–306 verifiziert),
  QUESTIONS-Restposten, Aktualitaets-Checks (Beispiel HWSchV-Aufhebung Run 48). Die
  Ruecktaktung auf woechentlich (Phase 3) ist seit Run 48 VORGESCHLAGEN — Entscheid Raphael.
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
