# Wissens-Chef — Run 16 (Cross-KB-Konsistenz)

**Datum:** 26.07.2026, 00:00–00:45 (Station MacBook Pro)
**Verfahren:** Workflow-Fan-out, 5 parallele Lese-Agenten + 10 adversariale Verifikatoren
(15 Agenten, ~2.06 Mio. Subagent-Token, 250 Tool-Calls, 10:45 Min Laufzeit)
**Delta-Basis:** alles, was seit Run 15 (25.07., 13:20) gewachsen ist — acht KBs, darunter
energie Run 112 (zwei komplett neue Themenfelder), normen Run 28/29, entwurfs-referenzen v2.0
des Healthcare-Parameter-Sets, planungsgrundlagen Run 86, projekt-lessons.
**Kollisionsschutz (Rule 260724):** vorab und vor den normen-Edits per `ps` geprüft — keine
Zweitinstanz; normen Run 29 war um 00:02 bereits beendet. Commit pathspec-begrenzt.

---

## Bilanz

| | Anzahl |
|---|---|
| Gemeldete Befunde | 15 |
| Davon adversarial verifiziert | 10 |
| **Bestätigt** | **10** (davon 6 materiell) |
| Widerlegt | 0 |
| Direkt korrigiert/gesetzt | 14 |
| Offene Punkte für Raphael bzw. die KB-Loops | 3 |

Bemerkenswert: **kein einziger Befund wurde in der adversarialen Stufe kassiert.** In Run 15
fielen noch 5 von 14. Der Unterschied liegt am Zuschnitt — Run 16 hat gezielt dort gesucht, wo
in den letzten zehn Stunden zwei KBs unabhängig voneinander zum selben Gegenstand geschrieben
haben. Das ist die ertragreichste Konstellation und zugleich die, die kein KB-Loop allein sehen
kann.

---

## Teil 1 — Materielle Fehler (bestätigt und korrigiert)

### M-1 Falscher Befreiungskatalog im ZH-Energierecht (`energie`)
Das am 25.07. um 23:07 neu angelegte Destillat `grossverbraucherartikel-zielvereinbarung-zh-sz.md`
schrieb dem Kanton Zürich an **vier Stellen** den **Schwyzer** Befreiungskatalog zu:
«Befreiung von §§ 6-8/§ 10 EnerG». Diese Reihe stammt wörtlich aus § 9 Abs. 4 kEnG SZ.

Amtlich gilt in Zürich eine andere Konstruktion: § 13a Abs. 2 EnerG delegiert an die Verordnung,
und **§ 48b Abs. 2 BBV I** nennt abschliessend §§ 22a, 23, 26, 29 Abs. 2-4, 30a, 45 und 45a
(die Baudirektion kann weitere Befreiungen in die Vereinbarung aufnehmen), dazu die Befreiung von
der Betriebsoptimierung nach § 13d EnerG / § 48c Abs. 1 lit. b BBV I.

Der Verifier hat nicht nur die Destillate verglichen, sondern das amtliche EnerG-PDF von
notes.zh.ch gezogen und gegengelesen. Die im Destillat behauptete Struktur-Analogie ZH/SZ trägt
nur für die **Schwellenwerte** (5 GWh Wärme / 0,5 GWh Strom sind tatsächlich wortidentisch), nicht
für den Befreiungskatalog.
→ Alle vier Stellen korrigiert, Analogie-Aussage eingeschränkt, Korrekturvermerk gesetzt.
Führend: `wissen/baurecht/raw/260607_amtlich_zh_bbv1.md` Z. 913-919.

### M-2 Betriebsoptimierung: falscher Fristbeginn, fehlende Ausnahmen (`planungsgrundlagen`)
`energie-energienachweis-zh-formulare.md` führte die Betriebsoptimierung als reine
Verbrauchsschwelle: «Betriebe > 200'000 kWh Strom/Jahr → BO innert 3 J nach **Fertigstellung**».

Zwei Fehler in einer Zeile. Erstens läuft die Frist ab **Inbetriebsetzung** (§ 13d Abs. 1 EnerG).
Zweitens — und das ist der praxisrelevante Teil — ist die Verordnung als **Befreiungsnorm** gebaut:
§ 48c Abs. 1 BBV I befreit Betriebsstätten (a) mit weniger als 200'000 kWh Strom/Jahr, (b) mit
Grossverbraucher-Zielvereinbarung oder (c) mit freiwilliger Zielvereinbarung (KMU-Modell). Die
Ausnahmen (b) und (c) fehlten ganz.

**Warum das für JANS zählt:** Spital und Pflegeheim überschreiten die Stromschwelle regelmässig,
fallen aber über (b)/(c) häufig doch aus der Pflicht. Nach der bisherigen Formulierung hätte die
Nachweisplanung eine Pflicht angenommen, die nicht besteht.
→ Zeile an den amtlichen Wortlaut angeglichen, beide Ausnahmen ergänzt, auf das energie-Destillat
und die amtlichen raw-Dateien verwiesen.

### M-3 SIA-181-Wert auf den falschen Fall angewandt (`energie`, 4 Stellen)
Das neue Körperschall-Destillat (Run 112, 23:07) erklärte den Tabelle-6-Wert **28 dB(A)** zum
Zielmass «im eigenen Schlafzimmer». SIA 181 trennt aber zwei Fälle, und die Trennung ist der
Kern der Norm:

- **Zwischen** Nutzungseinheiten (Nachbarwohnung im selben Haus): Tabelle 6 / Ziff. 3.2.3.3 —
  28 dB(A) bei mittlerer Empfindlichkeit, erhöhte Anforderung −3 dB, Kleinstwert 25 dB(A)
  (Ziff. 3.2.3.4). Verbindlich. Bei neu begründetem STWEG gelten nach Ziff. 2.2.2 zwingend die
  erhöhten Anforderungen, dort also 25 statt 28 dB(A).
- **Innerhalb** der eigenen Nutzungseinheit (eigener Keller unter eigenem Schlafzimmer): nach
  Ziff. 0.1.2 gibt die Norm nur **Empfehlungen** (Anhang G: 30 dB(A) Stufe 1 / 25 dB(A) Stufe 2) —
  vertraglich zu vereinbaren, nicht normativ geschuldet.

Der Verifier hat die Trennung an drei weiteren Ziffern des Originals belegt (2.1.4, 3.2.3.2,
3.2.3.7.1) und ausdrücklich festgehalten, dass der Geltungsbereichs-Einwand hier nicht entlastet,
sondern genau den Fehler bildet.
→ Fallunterscheidung an allen vier Fundstellen eingesetzt: Destillat, `wiki/waermepumpen-laermschutz`,
BAUHERREN-FAQ F159, `wiki/INDEX`.

### M-4 «Wird von keiner Behörde geprüft» (`energie`, 2 Stellen)
Wiki und FAQ verallgemeinerten eine engere Aussage des Quell-Destillats («keine
*Bewilligungs*behörde») zu «von keiner Behörde geprüft». Das ist rechtlich zu weit: SIA 181
Ziff. 0.1.1 nennt den abgestrahlten Körperschall ausdrücklich im Geltungsbereich, und Ziff. 0.1.7
unterstellt ihn bis zum Inkrafttreten der eidg. Erschütterungsverordnung **direkt dem USG**
(Ziff. B.5 für die Messung).
→ Auf «nicht Gegenstand des LSV-Lärmschutznachweises im Baubewilligungsverfahren» präzisiert,
USG-Bezug ergänzt. Das ist zugleich das stärkere Argument gegenüber dem Bauherrn, die Entkopplung
einzufordern — die Korrektur macht die Aussage nicht schwächer, sondern brauchbarer.

### M-5 Übergabe für erledigt erklärt, ohne dass sie ankam (`energie` → `normen`)
`energie/wiki/QUESTIONS.md` hat den seit mehreren Runs offenen Punkt «normen führt SIA 382/1:2014
fälschlich als aktuell» geprüft und **geschlossen** — mit Verweis auf eine ⚠-Notiz in
`normen/wiki/REGISTER.md:472`.

Die Verifikation lief gegen das falsche Artefakt. Das gemeldete **Destillat**
`normen/destillate/sia-382-1-2014.md` lief unverändert als `status: established` mit
`datenstand: "2014"`, ohne jeden Fassungshinweis (grep «2025» → 0 Treffer). Genau dieses Destillat
wird gezogen, wenn die Rule `normen-referenz` für LV oder Werkvertrag eine Fundstelle braucht — die
Gefahr, eine seit 1.2.2025 ersetzte Ausgabe als geltend zu zitieren, bestand also unverändert
weiter.
→ Im Destillat `ausgabe_ueberholt`-Feld gesetzt und Status auf «established (Ausgabe 2014, durch
SIA 382/1:2025 überholt)» präzisiert; die Schliessung in `energie` mit Begründung teilweise
zurückgenommen.
**Lehre:** Eine Übergabe gilt erst als angekommen, wenn sie im *genutzten* Artefakt steht, nicht
im Register darüber.

### M-6 Falsche Leitquelle im Healthcare-Parameter-Set (`entwurfs-referenzen`)
Siehe Teil 2 — der Befund hängt am Verlauf des Run-15-Sperrvermerks und wird dort im Zusammenhang
dargestellt.

---

## Teil 2 — Der Fall E-2: wie ein offener Entscheid sich selbst erledigte, und was übrig blieb

Run 15 hatte am 25.07. um 13:20 im Parameter-Set `healthcare-neubau-zh.json` ein Feld **gesperrt**
statt gelöscht (Löschung = rückfragepflichtig) und die Wertsetzung als Fachentscheid an Raphael
gegeben: Das Set führte ein Wohnbau-Band 850–1'050 CHF/m³ GV für Healthcare und berief sich auf
`grobkosten` — die KB, die genau das untersagt.

Um 21:53, achteinhalb Stunden später, hat der KB-Loop das Set komplett neu geschrieben (v1.0 → v2.0).
Der Befund dazu, geprüft und bestätigt:

- **Der Sperrvermerk ist weg, aber nicht heimlich.** Die Neufassung ist im CHANGELOG und im
  Trainingsprogramm begründet dokumentiert: Muster B6 belegt, dass **keiner** der 11 externen
  Healthcare-Juryberichte einen projektspezifischen CHF/m²- oder CHF/m³-Kennwert nennt. v2.0 führt
  für Healthcare deshalb gar keine eigenen Kostenzahlen mehr, sondern nur noch den Verweis auf
  `realwert-sachwert.md` (826–1'420 CHF/m³ GV, Median ~1'100) — wortgenau deckungsgleich mit der
  führenden Quelle. **Der Entscheid an Raphael entfällt damit.**
- **Anzumerken bleibt:** faktisch wurde damit Option (a) «Feld streichen» gezogen, die Run 15
  ausdrücklich als rückfragepflichtig markiert hatte. Die Entscheidung fiel im KB-Loop, nicht beim
  Chef. Sachlich ist sie gut begründet; verfahrensmässig ist sie ein Präzedenzfall, der benannt
  gehört.
- **Der eigentliche Restbefund lag in der anderen Hälfte** (M-6): Die **Quellenzuweisung** wurde
  unverändert nach v2.0 übernommen — `"quelle_kb": "wissen/grobkosten/"`, und im Hinweistext
  «für CHF/m³ bzw. CHF/m² führend bleiben wissen/grobkosten/…». Die Zahl war bereinigt, der
  Quellenzeiger nicht. Der Verifier hat drei Entlastungsversuche geführt und alle verworfen; er
  hält fest, dass `quelle_kb` das einzige **maschinenlesbare** Feld ist — ein konsumierendes
  Werkzeug (grobkosten-rechner, studien-generator) wird damit für ein Healthcare-Set genau auf die
  untersagte Quelle gelenkt.
  → `quelle_kb` auf `immobilienbewertung/wiki/realwert-sachwert.md` umgestellt, m²-NF auf den Skill
  `kostenschaetzung`, `grobkosten` in einem eigenen Feld `quelle_kb_nicht_anwendbar` explizit
  ausgeschlossen. JSON weiter schema-valide (geprüft).

**Zwei Folgekorrekturen aus demselben Nest:**
- Der Haupt-`INDEX.md` der KB beschrieb das Set noch mit den v1.0-Quellen (CURAVIVA/Wüest/JANS
  2410+2619/SIA 416), die die Neufassung ersatzlos entfernt hat — der Sub-Index war bereits korrekt.
  → angeglichen.
- Die **führende** Kennwertquelle kannte ihre Abnehmer nicht: in `immobilienbewertung/wiki/` null
  Treffer für «entwurfs-referenzen», «parameter-set» oder «wettbewerbs-dna». Eine künftige Änderung
  des Bands wäre dort unbemerkt geblieben. → Abnehmer-Block gesetzt.

**Präzisierung, die beim Weiterreichen zählt:** Das häufig zitierte Teilband **1'053–1'420** gilt nur
für die sechs Neubauten ab 2019. Das Gesamtband der acht Objekte ist **826–1'420**, und der Median
~1'100 gehört zum Gesamtband. v2.0 zitiert korrekt; der Run-15-Bericht und zwei CHANGELOG-Einträge
führen die 1'053 ohne den Qualifier. Datierte Historie bleibt unverändert — aber wer die 1'053 als
Untergrenze weiterreicht, reicht sie falsch weiter.

---

## Teil 3 — Struktur: Muster 1 zum fünften und sechsten Mal, mit neuer Diagnose

Das Muster «Übergabe verpufft im abgebenden KB» ist im Register seit Run 8 viermal belegt. Run 16
findet es zweimal neu — und liefert diesmal die **Ursache**, nicht nur den Fall.

**S-1 Die Lauf-15-Bring-Schulden sind nicht angekommen.** Run 15 hatte vier von `baurecht` zitierte
Normen (SIA 491, SN EN 12193:2008, SN 640 052, SN 641 400) in `normen/wiki/QUESTIONS.md` angemeldet.
Der danach gelaufene normen-Run 28 (25.07., 22:47) hat den Block mit keinem Wort aufgegriffen und
sein Thema ausdrücklich als «kein Bring-Schulden-Fall» gewählt. `training/norm-inventar.md` hatte
0 Treffer für alle vier Normbezeichnungen.

**Diagnose:** Der Nacht-Loop wählt seine Arbeit aus dem **Arbeitsregister** (`training/norm-inventar.md`),
nicht aus der **Fragenliste** (`wiki/QUESTIONS.md`). Anmelden am falschen Ort ist wirkungslos, egal
wie gut der Eintrag ist.
→ Die vier Normen als eigene Inventar-Zeilen eingetragen (neuer Abschnitt «Bring-Schulden aus anderen
KBs», Priorität P2, je mit Fundstelle und Auftrag), Nachtrag in QUESTIONS.md, Registerstatus von
«behoben» auf «angemeldet, vom Empfänger-Loop nicht aufgegriffen» zurückgenommen.

**Verallgemeinerte Regel für künftige Übergaben:** Eine Übergabe gehört in das **Arbeitsregister** der
Empfänger-KB, nicht nur in deren Fragenliste. Fragenlisten werden gelesen, Arbeitsregister werden
abgearbeitet. Das ist die Präzisierung der Run-8-Regel, die bisher nur «gehört in die QUESTIONS.md
der Empfänger-KB» sagte.

**S-2 Neuer Fall, gleiches Muster.** `energie` hat am 25.07. einen Korrekturhinweis an `baurecht`
formuliert (§ 273 PBG: die zitierte Regel «Besondere Gebäude ≤4/5 m, 3,5 m» ist Stand 2017 und war
eine Gebäudeabstands-, keine Grenzabstands-Erleichterung; die geltende Freistellung für Kleinbauten
steht in § 260 Abs. 4) — und ihn ausschliesslich bei sich selbst notiert. In `baurecht`: 0 Treffer.
→ Als offener Punkt in `baurecht/wiki/QUESTIONS.md` eingetragen (neuer Abschnitt «Cross-KB-Eingang
aus der KB energie»), mit dem Hinweis, am eigenen `raw/`-Volltext gegenzuprüfen — für den PBG-Wortlaut
ist `baurecht` führend, nicht das energie-Destillat. Zustellvermerk im abgebenden Artikel gesetzt.

**S-3 Die Rule `normen-referenz` greift beim Schreiben weiterhin nicht.** Vierter Fundort: Das neue
Körperschall-Destillat zitiert «SIA 181» ohne Ausgabe und ohne Ziffer und verlinkt nur KB-intern —
während alle Schwesterartikel derselben KB den Querbezug-Block sauber führen. Die Rule wird
nachträglich im Cross-Lauf durchgesetzt, nicht beim Verfassen. → Querbezug-Block mit ziffern-genauen
Fundstellen gesetzt.

**S-4 Ausgaben-Doppelspur SIA 181.** Beide KBs führen die Anforderungswerte, aber aus verschiedenen
Ausgaben: `energie` aus einer Büro-Zusammenfassung der **Ausgabe 2020** (erhöht +4 dB), `normen` aus
dem **Original 2006** (+3 dB) — ohne Verweis zwischen den Destillaten. Das ist eine Ausgaben-, keine
Sachdifferenz; wer sie ohne Kontext nebeneinander liest, hält sie für einen Widerspruch.
→ ⚠-Zeile in beiden Destillaten, Arbeitsteilung wie beim funktionierenden SIA-180-Paar
festgeschrieben (normen führt die Fundstelle, energie die Vollzugsebene).

---

## Teil 4 — Erst-Prüfung `projekt-lessons` (Rotation)

Die KB war seit Bestehen des Registers **nie geprüft**. Bestand: ein einziger Artikel
(`kispi-lbw-rohdichte-800`, Projekt 2619 KISPI).

- **Die KB-eigene Schreibregel ist im einzigen Artikel nicht umgesetzt.** `CLAUDE.md` verlangt, jede
  Lesson mit Gewerk/BKP, SIA-Phase und den betroffenen Skills zu taggen, «damit Erkenntnisse in die
  Skills zurückfliessen» — genau der Zweck der KB. Der Artikel führt `links: []`, keine SIA-Phase,
  keinen Skill-Tag. Der Health-Check vom 25.07. hat das Frontmatter dennoch als «korrekt» abgenommen;
  die Tagging-Regel ist nicht Teil seiner Prüfliste. Der Verifier hat den Kern bestätigt und
  gleichzeitig die Beweisführung des Finders relativiert — die SIA-Phase fehlt unter jeder Lesart,
  darauf stützt sich der Befund. → Frontmatter nachgezogen.
- **Lesson und `auflagebereinigung` dokumentieren denselben Vorgang, ohne voneinander zu wissen:**
  die Auflage II.19 «Detailpläne brandschutzrel. Innenwände (Material/Aufbau)» am selben Projekt.
  Die eine Seite führt Ziffer/Amt/Frist, die andere die Beweiskette der Material-Substanz.
  → bidirektional verlinkt mit ausdrücklicher Rollentrennung.
- **Generische VKF-/Produktwerte im Fazit** (Typ-A-GKB 776 kg/m³ / VKF 18151, Duraline Vario 1'003 /
  VKF 22636) stehen identisch im führenden `normen/wiki/en-520-gipsplattentypen.md`.
  → nicht gelöscht (sie tragen die Fallargumentation), aber als **abgeleitet** gekennzeichnet.
- **Rollen-Matrix:** neue Zeile — `projekt-lessons` führt die Beweiskette des Einzelfalls, nie
  generische Kennwerte oder Normfundstellen.

---

## Teil 5 — Offene Punkte

**Für Raphael — nichts Blockierendes.** Der einzige Fachentscheid, der aus Run 15 offen war (E-2,
Healthcare-Kostenband), hat sich erledigt: das Feld ist in v2.0 ersatzlos entfallen, der belegte
Verweis auf die führende Quelle steht. Kein Handlungsbedarf.

**Zur Kenntnis, verfahrensmässig:** Der KB-Loop hat mit der Neufassung faktisch die Löschoption
gezogen, die der Chef als rückfragepflichtig markiert hatte. Sachlich gut begründet — aber wenn das
Schule macht, verliert der Sperrvermerk seine Funktion. Wenn gewünscht, kann ich Sperrvermerke
künftig maschinenlesbar setzen (Feld im JSON statt Kommentar), damit ein Neuschrieb sie nicht
unbemerkt überschreibt.

**An die KB-Loops (kein Chef-Entscheid):**
1. **`energie`** — Fassungsbezeichnung im Grossverbraucher-Destillat: «EnerG ZH Nachtrag vom
   19.4.2021» ist irreführend. «Nachtrag» ist im Kt. ZH die Nummer der konsolidierten Fassung
   (aktuell **129**, Stand 1.7.2025, am PDF-Fussteil verifiziert), Änderungserlasse heissen «G vom
   <Datum>». Materiell ist der Inhalt aktuell. Der Verifier hat die Korrektur bestätigt, die
   Freigabe aber zurückgehalten — deshalb nicht selbst geändert. Vorgeschlagene Fassung:
   «EnerG ZH LS 730.1, konsolidierte Fassung Nachtrag 129 (Stand Publikation 1.7.2025); §§ 13a/13d
   eingefügt durch G vom 19.4.2021, in Kraft seit 1.9.2022».
2. **`normen`** — Re-Destillat **SIA 181:2020** aus dem Original (Bring-Schuld, Register-Eintrag
   vorhanden). Solange es fehlt, laufen zwei Ausgaben parallel; die ⚠-Flags halten den Zustand
   sichtbar, lösen ihn aber nicht.
3. **`projekt-lessons`** — Prüfung F des Health-Checks um die Tagging-Regel erweitern: `links: []`
   bei einem Artikel mit belegten Cross-KB-Bezügen ist kein korrektes Frontmatter. Das ist eine
   Änderung am Prüfprogramm und gehört nicht in einen Cross-Lauf.

**Weiter offen aus früheren Runs, unverändert:** Private-Kontrolle-Trim `energie` ↔ `planungsgrundlagen`
(destruktiv, Entscheid Raphael, seit Run 11) · Umlaut-Config-Bug (getrackt, keine Doppelmeldung).

---

## Bewertung

Der Lauf bestätigt eine These, die sich seit Run 15 abzeichnet: **Die Ausbeute des Cross-Laufs hängt
weniger an der Zahl der Agenten als am Zuschnitt der Paare.** Fünf Agenten mit gezieltem Delta-Fokus
haben eine höhere Trefferquote erzielt (10 von 10 bestätigt) als sechs mit breiterem Auftrag (9 von
14). Wo zwei KBs innerhalb von Stunden unabhängig zum selben Gegenstand schreiben, entsteht der
Fehler — und dort findet man ihn auch.

Drei der sechs materiellen Fehler betrafen **frisch angelegtes** Material, keines davon älter als
elf Stunden. Der Cross-Lauf wirkt hier nicht als Archiv-Pflege, sondern als unmittelbare zweite
Instanz über dem, was die Nacht-Loops gerade produziert haben. Das spricht dafür, den Chef weiterhin
**nach** dem Hauptfeld der Lern-Loops laufen zu lassen und nicht davor.

Der wertvollste Einzelbefund ist nicht der grösste: M-5 zeigt, dass eine KB eine Bring-Schuld für
erledigt erklären kann, obwohl das gemeldete Artefakt unverändert falsch weiterläuft — weil die
Verifikation gegen das Register statt gegen das Destillat lief. Zusammen mit S-1 (Anmeldung im
falschen Register) ergibt das eine gemeinsame Lehre: **Übergaben zwischen KBs müssen am Ort ihrer
Wirkung überprüft werden, nicht am Ort ihrer Ankündigung.**
