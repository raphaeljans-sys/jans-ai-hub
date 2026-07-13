# CHANGELOG — KB wettbewerbs-dna

## 2026-07-13 — Nachbrenner: Rang-Klaerung eingearbeitet, 2102/2206 auf established gehoben
- **Anlass:** Der Volllast-Lauf vom 12.07.2026 endete am Session-Limit (Reset 22:50), bevor
  der bereits erzeugte Report `outputs/2026-07-12_rang-klaerung-2102-2206.md`
  (vollstaendige Rangliste + woertliche Zitate + Querpruefung des Archivs fuer beide
  Faelle) in Dossiers/INDEX/QUESTIONS/PROGRAMM eingearbeitet war. Dieser Nachbrenner-Lauf
  holt das nach.
- **Bestandsaufnahme:** alle 11 Teilnahmen-Dossiers, 17 extern-Notizen (inkl. der neu
  gezaehlten rang-Klaerung als Report, nicht extern), 9 Board-DNA-Analysen und 3
  Muster-Artikel waren bereits vorhanden und lokal committet (`3be5dd08`); Arbeitsbaum
  fuer `wissen/wettbewerbs-dna` sauber (keine unstaged Aenderungen beim Start dieses Laufs).
- **2102 Muttenz + 2206 Schoental auf `established` gehoben:** Die Rang-Klaerung bestaetigt
  in beiden Faellen den bereits dokumentierten Rang zusaetzlich unabhaengig (2206 durch die
  amtliche Verfuegung des Schulrats Altstaetten, die Raphael Jans woertlich «zum dritten
  Rang» gratuliert; 2102 durch die Rang-/Preis-Unterscheidung im Jurybericht) und schliesst
  per Archiv-Querpruefung aus, dass irgendwo ein realer 2. Rang von JANS dokumentiert ist.
  Die Erinnerungs-Diskrepanz mit Raphael («2. Platz» bei beiden) ist damit nicht aufgeloest,
  aber die Beleglage ist eindeutig und zweifach abgesichert — Status-Hebung blockiert die
  offene Kenntnisnahme-Frage nicht laenger. Dossiers, INDEX (Stand-Bilanz jetzt 10
  established, 1 pruefen), QUESTIONS (beide Punkte als «GEKLAERT, Raphael zur
  Kenntnisnahme» markiert) und training/PROGRAMM.md nachgefuehrt.
- **Board-DNA-Luecke 2104/2503 als «nicht anwendbar» dokumentiert:** beide Dossiers wurden
  gegengeprueft — 2104 (Theater Luzern) liegt nur als 1.-Stufe-Abgabe ohne fertiges
  Abgabeboard vor, 2503 (Glockenacker) nur als drei ArchiCAD-Transferdateien ohne
  jedes Planblatt. Kein fehlender Arbeitsschritt, sondern fehlende Quellenlage; im
  INDEX vermerkt statt stillschweigend offen gelassen.
- **Skill-Massnahmen-Report** (`outputs/2026-07-12_massnahmen-skill-wettbewerb.md`, P1–P6)
  war bereits vollstaendig vorhanden; keine Aenderung, Skill `wettbewerb` bleibt gemaess
  Entscheid Raphael unveraendert.
- **Reports-Register in INDEX ergaenzt** um den Rang-Klaerungs-Report (war zuvor nicht
  gelistet).

## 2026-07-12 — Volllast-Abschluss (Session MacBook Pro, spaetabends)
- **Archiv komplett:** die letzten zwei Teilnahmen destilliert + refuter-verifiziert →
  established: 2501 Steinfabrik «SEESTERN» (nicht rangiert, Sieger «ALINGHI»),
  2507 PS Halden «LIMO» (Resultat offen, kein Jurybericht). Damit **11 von 11 Teilnahmen**
  destilliert (2502 leer = pruefen).
- **Draft-Verifikation:** 2104 Theater, 2205 Guggerbach, 2207 Schliengerweg, 2503 Glockenacker
  je Refuter geprueft (alle BESTANDEN, Korrekturen eingearbeitet) → established.
  Stand jetzt: 9 established, 2 draft (nur 2102/2206 wegen Rang-Diskrepanz mit Raphael).
- **Referenz-Verifikationswelle:** 15 externe Jury-Notizen + 9 Board-DNA-Analysen (48 Agenten,
  0 Fehler); 22 von 24 auf established gehoben, Rest-draft nur bei OCR-/Scan-Vorbehalt.
- **Muster-Synthesen (Hauptsession, inline):** `muster/jury-argumente-schulbauten.md`
  (Jury-DNA aus 15+3 Berichten) und `muster/jans-board-dna.md` (9 Board-Analysen, im
  Nachbrenner-Lauf zur reicheren «Plakat-Handschrift» ausgebaut).
- **Normbezug:** SIA 400:2000 destilliert (wissen/normen/), SIA 142/143:2009 bereits vorhanden,
  im INDEX unter «Normbezug» verlinkt. Reports: Generalprobe Muttenz, PDF-Vektor-Pilot,
  Massnahmen-Skill-wettbewerb (M1–M6).
- INDEX komplett neu geschrieben (Registerstand); QUESTIONS um die Rang-Diskrepanzen + neue
  offene Punkte ergaenzt.

## 2026-07-12 — Muster-Artikel `muster/jans-board-dna.md` verdichtet (Fach-Bibliothekar-Lauf)
- **Aktion:** `wiki/muster/jans-board-dna.md` neu geschrieben (Status `draft`) als
  Verdichtung aller neun Board-DNA-Einzelanalysen (2101, 2102, 2103, 2205, 2206, 2207,
  2408, 2501, 2507). Ersetzt einen frueheren, weniger belegten Zwischenstand desselben
  Artikels.
- **Aufbau:** Teil A = verallgemeinerte JANS-Plakat-Handschrift, gegliedert in A0
  durchgaengige Muster (15 belegte Merkmale, je mit den stuetzenden Teilnahmen), A1
  haeufig-aber-nicht-durchgaengig, A2 projekt-spezifische Einzelfaelle, A3 Widersprueche/
  duenne Stellen. Teil B = 14-Punkte-Vorgaben-Checkliste fuer den Agenten `plakat-setzer`
  (Blattarchitektur, Pflichtleisten Kennwort/Massstab/Nord, Dramaturgie gross→klein,
  harte Farbregel, Plangrafik-Standard, Anonymitaet).
- **Staerkste durchgaengige Merkmale:** Querformat (9/9), weisser Fond ohne Rahmen,
  feste Blattarchitektur, Board-Index-Piktogramm (alle Mehr-Board-Sets), Dramaturgie
  gross→klein (9/9), Massstab-Kaskade 1:500/1:200/1:50, monochrome Farbdisziplin mit
  EINEM thesenhaften Akzent, Werkplan-Detail 1:50–1:20 mit Schichtaufbau-Listen,
  Kreis-Nordpfeil, gestufte Massstabsleiste (haeufig).
- **Ehrlich vermerkt:** 2206 = Nachweis-Set (kein Finalplakat), 2205 nur Board 1, 2501
  Plan-only; plan-first-Auftakt und schwere Poche in den 2025er-Boards (2408, 2507)
  schwaecher (moeglicher Stil-Drift). Board 2104 noch nicht analysiert (offener Punkt).
- **Status:** `draft`; Hebung auf `established` erst nach Refuter-Pruefung gegen die
  Original-Boards.

## 2026-07-12 — Lauf 2: Verifikation 2101 + 2103, INDEX-Reconcile (Session MacBook Pro, 23:00)
- **Ausgangslage:** In einem Zwischenlauf (Dossiers erstellt ~19:04–19:11, committet via
  nas-selfcommit 20:00) waren 2101, 2103, 2205, 2503 als Status `draft` angelegt, aber
  INDEX/QUESTIONS/CHANGELOG/PROGRAMM nicht nachgefuehrt und die Verifikation fehlte.
- **Verifikation (Pflicht, Regel 260712):** je ein unabhaengiger Refuter-Agent gegen die
  raw-Extrakte fuer 2101 KSSG und 2103 Steinhof. Beide **VERDIKT: BESTANDEN**, keine
  Diskrepanzen — alle Kern-Behauptungen (Kennwort/Nr., Ausscheiderunde, Team, Sieger,
  Rangfolge, woertliche Jury-Zitate, eigene Kennzahlen) mit Fundstelle belegt:
  - 2101 «LOUISE» Nr. 04, ausgeschieden 2. Rundgang; Sieger Nr. 06 «Insere»
    (Schneider & Schneider, Aarau); Sammelurteil-Zitat 2. Rundgang wortgleich; eigene
    GF 3'417 m2 belegt. → Status **established**.
  - 2103 «Patio in Nobile» Nr. 9, engere Wahl (6 Projekte 1/4/6/9/11/14), im finalen
    Rundgang in den 3. zurueckgestuft; Sieger Nr. 6 «Gigelisuppe» (Huber Waser Muehlebach,
    Luzern) = Weiterbauen/Bestand-Erhalt der Turnhalle; Delta-Zitate wortgleich.
    → Status **established**.
- **INDEX-Reconcile:** Tabelle auf den realen Stand gebracht (2101/2103 established mit
  Resultat; 2205/2503 als draft eingetragen — waren zuvor faelschlich «ausstehend/—»);
  Stand-Bilanz ergaenzt (3 established, 4 draft, 4 ausstehend, 1 pruefen). Muster-Basis
  von 3 auf 6 Dossiers aktualisiert.
- **Bauaufgaben-Breite:** mit 2101 (Spital/Healthcare) und 2103 (Primarschule + Turnhalle,
  Hanglage, Grundsatzfrage Erhalt/Ersatz) sind nun beide Kern-Typologien der JANS-DNA
  belegt. QUESTIONS.md um die offenen Punkte beider Teilnahmen ergaenzt.
- Raw-Extrakte lagen bereits aus dem Zwischenlauf vor (saubere Namen + Quell-Header);
  keine Doppel-Extraktion.

## 2026-07-12 — Seed-Lauf: 3 Dossiers + Muster (Session MacBook Pro)
- Dossiers angelegt (Status draft): wiki/teilnahmen/2102-muttenz.md,
  2206-schoental.md, 2408-biwak-grassen.md; Raw-Extrakte je Teilnahme in raw/.
- **Belegte Resultate weichen von der Erinnerung ab:** 2102 Muttenz «PATIO IM PIANO
  NOBILE» = 4. Rang / 3. Preis (Jurybericht S. 15); 2206 Schoental «ARCHE» = 3. Rang /
  3. Preis (Schlussbericht S. 11, Titelblatt «Entwurf»); 2408 «-Babuschka-» =
  ausgeschieden im 2. Rundgang. Diskrepanzen in QUESTIONS.md, Klaerung bei Raphael.
- Muster-Artikel wiki/muster/delta-zum-ersten-rang.md (6 Befunde + Konsequenz fuer
  den Agenten programm-pruefer); INDEX mit belegten Resultaten nachgefuehrt.
- Verifikations-Runde (3 unabhaengige Refuter-Agenten) abgeschlossen:
  2102 Muttenz BESTANDEN (7 Praezisierungen eingearbeitet: Statik-Fundstelle S. 19
  statt S. 40, Mittagstisch-Beleg S. 22/S. 16, Zitat-Flexionen, Datums-/Seitenkorrekturen);
  2206 Schoental zunaechst DURCHGEFALLEN (Zitier-Praezision), 3 Korrekturen +
  B12-Widerspruchs-Fussnote (GF 1'792 Kopfblock vs. 1'545 Geschosssumme) eingearbeitet;
  2408 BIWAK BESTANDEN (4 Praezisierungen eingearbeitet: Tragwerkselemente-Liste,
  Schneeverfrachtungs-Hypothese entschaerft, 18×32/18-36-Widerspruch vermerkt) —
  Status auf established gehoben. 2102/2206 bleiben draft bis zur Klaerung der
  Rang-Diskrepanz durch Raphael.

## 2026-07-12 — Anlage der KB (Session MacBook Pro)
- KB angelegt (CLAUDE.md, wiki/INDEX.md, wiki/QUESTIONS.md, training/PROGRAMM.md)
  gemaess Spec `wissen/spec/outputs/2026-07-12_wettbewerbs-layer_spec.md`.
- Quelle: Scan `OneDrive/AR - 02 Wettbewerbe/` (12 Teilnahmen, 17'045 Dateien).
- Goldstandard-Vorgabe Raphael: 2. Plaetze 2102 Muttenz + 2206 Schoental.
- Erste Destillationen gestartet: 2102, 2206, 2408.
