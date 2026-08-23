# Destillat-Lauf `buero-projekte` Phase 2, P2-Start (Run 3) — 2026-08-23

Ziel-KB: `wissen/projekt-lessons` · Korpus-Spec: `skills/wissens-destillat/specs/buero-projekte-spec.md`
Vorlauf: Run 1+2 (23.08.2026) — alle 62 P1-Zeilen abgearbeitet, 91 P2 / 26 P3 offen.

## Was gemacht wurde

Erster Lauf auf den P2-Zeilen: zwei parallele Lese-Agenten (nur lesend im Archiv
`/Volumes/daten/04_Buero/02_Projekte/`, kein Schreibzugriff), je Projekt-Cluster:

- **Agent A — `1011_Lorrainestr_4`** (20 Zeilen: 18 P2 + 2 P3): historische Bauakten,
  Denkmalpflege-Vorbereitung, Bauherren-Prämissen, Korrespondenz.
- **Agent B — `1602_St_Karli_11`** (25 Zeilen P2): Systemvergleich Metallfenster BKP 221
  über sechs Hersteller (Forster, Jansen, MHB, Mira Contour, Schweizer, Wicona).

## Ergebnis

### Neuer Artikel: Vordach-Erneuerung 1011 (2010)

`wiki/vordach-lorrainestrasse4-1011-glasbaustein-denkmalpflege-2010.md` (status emerging).
Fünf Dateien tragen eine konsolidierte, chronologisch belegte Lesson: eigenes JANS-Mandat
2010 (Miteigentümerin Maria Jans) zur materiellen Erneuerung des Vordachs
(Wellplatte → Glasbaustein) am Gebäude Lorrainestrasse 4, Bern (1895/96). Vier Schritte:
(1) historische Baubewilligung gerade des Vordachs (1963/64) vorab beschafft; (2) Checkliste
vor der Denkmalpflege-Besprechung, datiert 26.05.2010; (3) quantifizierte Materialstudie
(Massberechnung Glasbausteine, Fotomontage), datiert 16./28.08.2010; (4) Bauherren-Kostendach
(CHF 30'000.- exkl. Eigenleistungen) erst am 03.09.2010 fixiert — **nach** der
Denkmalpflege-Vorbereitung, nicht davor. Eigene Fach-Empfehlung ans Bauherren-Team am
20.09.2010: «möglichst wenige und schlichte materialien... was der Denkmalpflege sicher
entsprechen würde». Regel: bei Eingriff an einem einzelnen Bauteil eines Altbaus dessen
eigene Baubewilligung beschaffen und mit bezifferter Materialstudie statt Idee in die
Behördenbesprechung gehen.

Bidirektional mit dem bestehenden Schwester-Artikel
[[dachstock-lorrainestrasse4-1011-denkmalpflege-foerderkombination-2003]] (anderes,
zehn Jahre früheres Fremdmandat im selben Gebäude) verlinkt.

**Einschränkung:** Ausgang (Bewilligung erteilt? Realisiert?) im gesichteten Material nicht
belegt — die Fotomontage ist ein Entwurfsstand, kein Ausführungsbeleg.

### Datenhygiene-Funde (keine Artikel, aber vermerkt)

- Eine Plandatei im selben Projektordner trägt den irreführenden Namen
  «Dachstocksanierung_Pläne_Oktober2003.pdf», die Planstempel zeigen jedoch effektiv
  **24.01./29.05.1988** (Architekt W. Kulik, Nasszellen-Einbau 4. OG) — ein drittes,
  eigenständiges Fremdmandat. Als Warnhinweis in beiden betroffenen Wiki-Artikeln vermerkt,
  damit eine spätere Recherche die Datei keinem der beiden Fälle fälschlich zuordnet.
- `04_Kosten/00_Offerten/PDF/111122_Projektbeschrieb.pdf` im Projektordner 1011 ist inhaltlich
  ein Text über eine Kirchenfassade (Referenz Sangallo/Prato Santa Maria delle Carceri) —
  offensichtlich fehlabgelegtes Fremddokument, kein Bezug zu Lorrainestrasse. Nur im Inventar
  als `[-]` vermerkt, keine weitere Aktion.

### Cluster ohne Lesson: 1602 St. Karli 11

24 der 25 geprüften Dateien sind unkommentierte Herstellerprospekte/-kataloge zu
Metallfenstersystemen BKP 221 (Forster fuego light, Jansen Janisol/JanisolArte, MHB
Classic-ISO/SL30-ISO, Mira Contour, Schweizer IS4, Wicona Wicline) — reines Produktmaterial
ohne JANS-eigene Anmerkung (per PDF-Annotation-Scan geprüft: keine Highlight-/Freitext-Marker
gefunden), gehören allenfalls in `wissen/bauprodukte`, nicht in diese KB.

Einzige Datei mit echtem JANS-Entscheidungskontext: «Fragen an Herr Hirt Metallbauer
bezüglich...docx» — ein Fragenkatalog zur Systemwahl (Alu vs. Metallfenster, konkret Jansen
Janisol vs. MHB Classic-ISO-Plus) für vier Bauteile (Balkonfenster, Falttor, Schaufenster,
Eingangstüre) sowie eine Sonderfrage zu einem hochwassersicheren Rollladen mit
Referenzvorbild («Keller Dieter Kunstobjekte»). Ohne dokumentierte Antwort im Ordner.

**Eigene Nachprüfung (Orchestrator, gezielte Verzeichnissuche, kein weiterer Agent):** im
Projektordner 1602 existieren unter `12_Schrift_Datenverkehr/` drei Korrespondenzordner zu
den tatsächlichen Endanbietern — `221 Profiel-Systemhersteller Jansen (Mumenthaler Roger)`,
`221 Profiel-Systemhersteller Wigona (Moser Peter)`, `221 Holz-Metall-Fenster (Hr. Naef)` —
alle drei mit `in`/`out`-Unterordnern angelegt, aber **leer** (nur `.DS_Store`). Kein
Entscheiddokument im gesamten Projektordner auffindbar, welches System am Ende gewählt wurde
und warum. Als offene Frage in `wiki/QUESTIONS.md` festgehalten — auch als möglicher
Datenpunkt für den Pflicht-Zusatzauftrag `bevorzugte-systeme-jans.md` (Entscheid Raphael
31.07.2026), sollte die Information anderswo auftauchen.

## Verifikation (Stufe 3, in dieser Session)

- Jedes Zitat und jede Datumsangabe im neuen Artikel stammt wörtlich aus dem
  Agenten-Rohbericht, der seinerseits Fundstellen mit Zitat nennt; keine Interpolation.
- Die Aussage «Korrespondenzordner leer» selbst am Dateisystem nachvollzogen (`find`/`ls`
  auf `/Volumes/daten/04_Buero/02_Projekte/1602_St_Karli_11/12_Schrift_Datenverkehr/`), nicht
  nur aus dem Agentenbericht übernommen.
- Anonymisierung: keine privaten Kontaktdaten aus dem 1011-Konvolut in den Artikel
  übernommen; Handwerker-/Bauherrennamen nur wo für die Lesson sachlich nötig (Maria Jans als
  Miteigentümerin, da die Lesson ihren eigenen Input dokumentiert).
- BKP-Feld des neuen Artikels bewusst «— (Denkmalpflege-Verfahren/Materialwahl)» gesetzt,
  keine einzelne Gewerkeposition — analog zum Schwester-Artikel 2003/2004.
- Frankenbeträge (CHF 30'000.-, Stand 2010) im Artikel explizit als historischer Wert
  markiert, kein aktueller Kostenrichtwert (Spec-Kriterium 6).
- Nach jedem Schreibvorgang `git diff --numstat` geprüft (Rule `auto-verbesserungen` 260811):
  Inventar exakt 45/45 (nur die 45 bearbeiteten Zeilen, keine Fremdänderung, kein
  Konfliktmarker). Die Wiki-Änderungen (neuer Artikel, INDEX.md, QUESTIONS.md, `links`-Feld
  im Schwester-Artikel) wurden während der Session vom laufenden 15-Minuten-NAS-Selfcommit
  automatisch miterfasst (Commit `e14bc048`, gemeinsam mit unabhängiger Fremdarbeit an
  `wissen/normen` aus einer parallelen Session) — Stat-Diff dieses Commits für die
  betroffenen Wiki-Dateien geprüft und deckt sich exakt mit den beabsichtigten Änderungen,
  keine Vermischung oder Konflikt.
- Inventar-Zeilen wurden per eindeutigem Dateipfad-Anker gesetzt (kein Blanket-`sed`), 39 von
  45 automatisiert über eindeutige Pfad-Substrings, die restlichen 6 (Encoding-/Leerzeichen-
  Abweichungen bei Umlauten) gezielt über die verifizierte Zeilennummer.

## Offen / nächster Schritt

- **46 verbleibende P2-Zeilen:** `00_Allgemein` (17), `1318_Lorraine_Kueche` (28 weitere,
  über die P1-Zeilen aus Run 1/2 hinaus), `1527 EH Europe GmbH` (3).
- **26 P3-Zeilen:** `1012_Ardez` (19), `00_Allgemein` (3), `1527 EH Europe GmbH` (2) —
  `1011_Lorrainestr_4` P3 (2 Zeilen) ist in diesem Lauf bereits miterledigt.
- Pflicht-Zusatzauftrag `bevorzugte-systeme-jans.md` (Entscheid Raphael 31.07.2026): weiterhin
  nicht begonnen — Materialbasis bleibt zu dünn (ein Projekt mit dokumentiertem
  Abwägungsprozess, aber ohne belegten Entscheid).

Kein «KORPUS KOMPLETT» — Korpus `buero-projekte` bleibt in `KORPUS-QUEUE.md` auf `aktiv`.
