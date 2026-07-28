# CHANGELOG — KB `bauprodukte`

## 2026-07-28 — Erster Artikel destilliert + Phase-0/1-Nacharbeit (Mac Mini Nachtschicht, 04:30-Lauf)
- **Phase 0 (Inventar) abgeschlossen:** alle 37 Gewerke-Sektionen erfasst (214 Dateien
  inventarisiert, zuvor 2/37). Vorlauf: drei fruehere Nachtlaeufe (01:44/02:14/03:32)
  hatten `destillat-lauf.sh` per `run_in_background` gestartet und die Session danach
  vorzeitig beendet ("warte auf Benachrichtigung") — das Skript ist Kindprozess der
  Dispatch-Session und stirbt beim Sessionende, Phase 1/2 kamen nie durch. Diesmal
  synchron im Vordergrund gefahren (kein Weiterreichen an eine kuenftige Session).
- **Phase 1 (Triage, Haiku) mit eng gesetztem Budget (0.50 USD) erneut budget-gekappt**
  nach 6 Positionen — genug fuer einen ersten Phase-2-Kandidaten.
- **Fehltriage entdeckt und korrigiert:** `233 Leuchten und Lampen/.../170123
  Leuchtenauswahl Nasszellen.pdf` war faelschlich als "P1 · Feuchtraum-Klassifizierung"
  eingestuft (Dateiname verleitet dazu) — tatsaechlich ein Katalog-Scrapbook mit
  Klebezetteln (Tic Light, Catellani+Smith, eintopf/etna von Martin Wallroth), keine
  IP-/Feuchtraum-Inhalte. Inventar auf `[-]` mit Begruendung korrigiert, kein Artikel
  daraus geschrieben. Lehre fuer kuenftige Triage-Laeufe: bei Scan-Dateien mit
  unspezifischem Dateinamen ("Leuchtenauswahl Nasszellen") ist der Inhalt keine
  verlaessliche Ableitung aus dem Namen allein.
- **Artikel `wiki/dachbegruenung-systeme.md` geschrieben** (status `emerging`) aus
  `224 Bedachungsarbeiten/020426 Dachbegruenung.doc` (Materialrecherche Architekturbuero
  Christian Kerez Zuerich, Projekt Eschenbach, Stand Dez. 2001/Jan. 2002): drei
  CH-Anbieter fuer Dachbegruenungssysteme (CONTEC/NOVAFIOR, FORMTECH/FORMFLOR,
  Getrag/Optigrün) mit Extensive/Intensive-Kriterienlogik. Alle Einzelangaben als
  23-jaehrig unverifiziert gekennzeichnet (Datumsstempel-Pflicht KB-CLAUDE.md); der
  Wert liegt in der Kriteriensystematik, nicht in den Kontaktdaten. `.doc`-Extraktion
  via `textutil -convert txt` (macOS), da Read-Tool kein natives `.doc` liest.
  `wiki/INDEX.md` (BKP-224-Sektion) und `wiki/QUESTIONS.md` (fehlende aktuelle
  Marktuebersicht als offener Punkt) nachgefuehrt.
- **Inventar-Stand danach:** 214 inventarisiert, davon 1 destilliert (`[x]`), 5 triagiert
  offen (`[t]`, P1/P3-Kandidaten fuer den naechsten Phase-2-Lauf), 134 uebersprungen
  (`[-]`, Sektion 0 Kostenplanung), 74 weiterhin offen (`[ ]`).
- Kein Fan-out, kein zusaetzlicher Subagent aus dieser Session heraus; Budget dieses
  Zyklus ca. 3.4 USD von 5 USD (inkl. der beiden budget-gekappten Sub-Laeufe).

## 2026-07-28 — Korpus-Spec geschrieben (Mac Mini Nachtschicht, 01:30-Lauf)
- `skills/wissens-destillat/specs/bauprodukte-spec.md` erstellt (Skill `wissens-destillat`
  verlangt: kein Destillat ohne Spec, erster Lauf schreibt sie und endet danach).
- Ziel, Artikelschnitt und Bewertungskriterien direkt aus der bereits vollständigen
  `CLAUDE.md` verdichtet (kein Widerspruch, keine Neuerfindung).
- **Goldstandard bestimmt:** `wissen/normen/wiki/en-520-gipsplattentypen.md` (kompakter
  Produktgattungs-Artikel, Klassifizierungstabelle + Praxisregeln + Fundstellen-Disziplin
  bei fehlendem Norm-Volltext).
- **Abgrenzung präzisiert:** die erste inventarisierte Sektion «0 nach BKP Nr» ist laut
  Stichprobe kein Bauprodukte-Material, sondern CRB-/SIA-451-Kostenplanungsschulung —
  gehört fachlich zu `grobkosten`/`normen`, nicht zu diesem KB. In der Spec als Ausnahme
  vermerkt statt beim nächsten Destillat-Lauf fälschlich hier verarbeitet zu werden.
- Kein Destillat-Lauf (Phasen 0-2) in diesem Zyklus — das ist gemäss SKILL.md der nächste
  Schritt eines Folgelaufs. Budget bewusst nicht auf einen unvollständigen Pipeline-Start
  verwendet (Nachtschicht-Budgetdisziplin).

## 2026-07-28 — KB angelegt
- Skelett durch Skill `wissens-destillat` erstellt (Korpus 1 der Korpus-Queue).
- Quelle registriert: `/Volumes/daten/03 Bauprodukte_BKP` (37 Gewerke-Sektionen).
- Inventar Phase 0 gestartet: 2 von 37 Sektionen erfasst, 134 Dateien offen.
- Noch keine Artikel — der erste Destillat-Lauf schreibt zuerst die Korpus-Spec.
