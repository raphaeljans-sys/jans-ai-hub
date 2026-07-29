# CHANGELOG — KB `bauprodukte`

## 2026-07-29 — Aufraeumen nach Freigabe Raphael
- **[geloescht, freigegeben]** `.!33499!CHANGELOG.md` — 0-Byte-SMB-Schreibfragment vom 28.07. 01:37,
  entstanden beim Anlegen der KB. Vor der Loeschung nochmals geprueft: 0 Byte, kein Inhalt; das
  echte `CHANGELOG.md` intakt (13'697 Byte). Kein Datenverlust.


## 2026-07-28 — Wissens-Chef Run 19: ERST-PRUEFUNG dieser KB (Cross-KB)
- **[register, strukturell] Die KB war in `koordination/QUERBEZUEGE.md` ueberhaupt nicht
  registriert** — weder als fuehrend fuer Produktwissen noch mit der Klarstellung, dass
  Norm-Fundstellen und Kennwerte anderswo gefuehrt werden. **Drei Fuehrungszeilen ergaenzt:**
  bauprodukte fuehrt **Produkt-/Systemwissen nach BKP**; **normen** fuehrt die Norm-Fundstellen
  (inkl. Fassungsstand und **Korrigenda**); **grobkosten/immobilienbewertung** fuehren die Kennwerte
  — historische Herstellerpreise hier nur als **datierter Zeitstand**, nie als heutiger Ansatz.
  Genau diese Registerluecke hat den naechsten Befund erzeugt.
- **[korrektur, materiell] Dachbegruenung: BKP-Aufteilung fehlte, CH-Norm fehlte ganz.**
  `wiki/dachbegruenung-systeme.md` fuehrte die Dachbegruenung allein unter **BKP 224**. Massgebend
  ist **SIA 312:2013 «Begruenung von Daechern»** (SN 564312, seit 1.11.2013) — sie liegt seit
  laengerem als Destillat in `normen` und verlangt die Aufteilung **224 (Schichtaufbau) / 288
  (Vegetation)**: wer alles unter 224 ausschreibt, verliert die Gaertnerleistung aus dem Devis.
  Normabschnitt nachgetragen (Schichtdicken extensiv 80-200 mm, intensiv 120-300 bzw. 200 bis
  >500 mm; Niederschlagsklassen-Tabelle 2; Neigungsschwellen 6°/15°), BKP-Codes gegen
  `references/bkp-2017/` verifiziert, **beidseitige Verlinkung** zu `normen` gesetzt.
- **[fassungs-vorbehalt] `wiki/bkp-261-aufzuege.md`:** die zitierten Kabinen-Mindestmasse stammen aus
  **SIA 500:2009 Ziff. 3.7.3** — einer der Ziffern, die das Korrigendum **SN 521500/C4:2019** aendert
  (im Hub bis heute unbekannt, in diesem Lauf entdeckt). Vorbehalt gesetzt; der Kabinen-Abgleich
  steht bis zum Nachzug in `normen` unter Vorbehalt.
- **[WIDERLEGT]** Der Vorwurf, die offene Normfrage bei Terrazzo/Kunststein sei durch
  **SN EN 16954:2018** laengst geschlossen, kippt: fuer zementgebundene Kunststein-/Terrazzoplatten
  ist **SIA 244:2006 «Kunststeinarbeiten»** einschlaegig. Die Umsetzung haette eine falsche
  Normzuordnung in die neue KB gesetzt.
- **[beobachtet, NICHT geloescht]** `.!33499!CHANGELOG.md` ist ein **0-Byte-SMB-Schreibfragment**
  vom 28.07. 01:37; das echte CHANGELOG ist intakt, kein Datenverlust. Loeschung nur nach Rueckfrage.
- Bericht: `koordination/outputs/2026-07-28_wissens-chef-run19.md`.


## 2026-07-28 — Neuer Artikel BKP 281 Bodenbeläge (Mac Mini Nachtschicht, 07:30-Lauf)
- **Artikel `wiki/terrazzo-kunststein-bodenbelaege.md` geschrieben** (status
  `emerging`) aus den zwei P1-triagierten Dateien `281 Bodenbelaege/020226 Terrazzo
  1.doc` und `020226 Terrazzo 2.doc` (Materialrecherche Architekturbüro Christian
  Kerez Zürich, Sitzung mit Fa. Studer Frick, 26.02.2002, Projekte Schule Eschenbach
  und MFH Forsterstrasse). Deckt zwei BKP-Subpositionen ab: Kunststein-Plattenboden
  (281.5, zwei Verlegevarianten Mörtelbett/geklebt) und vor Ort gegossener Terrazzo/
  geschliffener Beton (281.1, inkl. Rezeptur-Hinweise Zementgehalt/Hydrolent und der
  im Dokument namentlich zugeschriebenen Zweischicht-Idee von J. Schwartz). Alle
  Preise/Angaben direkt aus den zwei .doc-Dateien übernommen (per `textutil -convert
  txt` extrahiert), keine Ergänzung, Preise explizit als 2002er-Stand markiert.
  BKP-Codes 281.1/281.5 gegen `references/bkp-2017/BKP-2017-Liste.md` verifiziert.
- `wiki/INDEX.md` (neue BKP-281-Sektion) und `wiki/QUESTIONS.md` (1 neuer offener
  Punkt: keine Rutschfestigkeits-/Reinigungsangaben, normative Klassifizierung fehlt)
  nachgeführt.
- Inventar `skills/wissens-destillat/training/bauprodukte-inventar.md`: beide
  Quelldateien von `[t]` auf `[x]` gesetzt. Die dritte, bereits als Kostendokument
  triagierte Datei (`Offerte_Terrazzo_Belaege.pdf`) bewusst nicht destilliert (kein
  Fachwissen, reine Preisofferte 2005 — siehe Inventar-Notiz).
- Beleg-Prüfung in derselben Session durchgeführt (kein separater Kurator-Lauf,
  Nachtschicht-Budgetdisziplin): beide Quelldokumente vollständig gelesen, alle
  Preise/Verfahrensangaben im Artikel gegen den Volltext zurückgeprüft, keine
  Abweichung gefunden. Kein Fan-out, keine `AskUserQuestion`.

## 2026-07-28 — Neuer Artikel BKP 273 Schreinerarbeiten (Mac Mini Nachtschicht, 06:30-Lauf)
- **Artikel `wiki/arbeitsplatten-verbinder-schreinerei.md` geschrieben** (status
  `emerging`) aus den drei P1-triagierten Dateien in `273 Schreinerarbeiten/
  Zusammenzieher/` (OPO-Net-Katalogausdrucke OPO Oeschger AG, alle datiert
  07.02.2011): Vergleich dreier Arbeitsplatten-Verbindersysteme
  (Kunststoff-Exzenter, HETTICH AVB 5, Zip Bold Mini) nach Werkstoff, Bohr-Ø,
  Montagewerkzeug, Plattendicke und Stückpreis (2011). Alle Zahlen/Angaben direkt
  aus den drei PDFs übernommen, keine Ergänzung. Datumsstempel-Pflicht
  eingehalten (Preise/Artikelnummern explizit als 2011er-Stand markiert).
  BKP-Code 273.3 «Allgemeine Schreinerarbeiten» gegen `references/bkp-2017/
  BKP-2017-Liste.md` verifiziert (Rule `bkp-2017-referenz`).
- `wiki/INDEX.md` (neue BKP-273-Sektion) und `wiki/QUESTIONS.md` (1 neuer offener
  Punkt: nur ein Händler-Sortiment, kein Systemvergleich mit Alternativen wie
  Lamello/Domino, keine geprüften Zugkraftwerte) nachgeführt.
- Inventar `training/bauprodukte-inventar.md`: die drei Quelldateien von `[t]` auf
  `[x]` gesetzt (Destillat abgeschlossen).
- Beleg-Prüfung in derselben Session durchgeführt (kein separater Kurator-Lauf,
  Nachtschicht-Budgetdisziplin): alle Tabellenwerte gegen die drei Quell-PDFs
  zurückgeprüft, keine Abweichung gefunden. Kein Fan-out, keine `AskUserQuestion`.

## 2026-07-28 — Kurator-Stufe (Phase 3) für die vier Fliessarbeit-Artikel (Mac Mini Nachtschicht, 05:30-Lauf)
- **Beleg-Prüfung:** `pu-beschichtung-fassade.md` und `chromstahltreppe-oberflaechen.md`
  vollständig gegen ihre `.doc`-Rohquellen gegengelesen (`textutil -convert txt`) —
  alle Zahlen/Referenzen stimmen wortgetreu, keine unbelegte Aussage gefunden.
  `bkp-261-aufzuege.md` (Bild-PDFs ohne Textlayer) und `erco-lichtplanung-
  grundlagen.md` (grosses Werk, nur Auszug) plausibilitätsgeprüft statt Wort-für-
  Wort, ebenfalls kein Widerspruch.
- **Cross-KB-Fund verwoben:** [[sia-500-2009]] (`wissen/normen`, `established`)
  zitiert in Ziff. 3.7.3/Tabelle 4 die massgebliche Schweizer Aufzugs-Kabinenmasse
  (SN EN 81-70). Gerechneter Abgleich ergänzt: die AS-Winner-Kabine (1250×1460 mm)
  übertrifft die SIA-500-Standardmasse (1.10×1.40 m) rechnerisch, obwohl der
  Hersteller sie nur als «bedingt rollstuhlgängig» führt — Lehre für JANS:
  Kabinenmass immer gegen die Norm-Tabelle selbst rechnen, nicht die
  Herstellerkategorie übernehmen. Backlinks in beide Richtungen gesetzt
  (`bkp-261-aufzuege.md` ↔ `sia-500-2009.md`).
- **Promotion:** keine — alle vier Artikel bleiben `status: emerging` (keine
  unabhängige Zweitquelle, Rule 260714).
- Report: `outputs/2026-07-28_destillat-lauf2-kurator.md`. Keine neue Destillation
  in diesem Lauf (reine Kuratierung, Budget-Disziplin Nachtschicht).

## 2026-07-28 — Vier Artikel destilliert (Destillat-Stufe, Fliessarbeit-Lauf)
- **8 P1-Positionen `[t]` abgearbeitet** aus dem Inventar (BKP 225, 233, 260/261, 272),
  4 Artikel geschrieben (alle `status: emerging`), 4 Inventarzeilen auf `[x]` gesetzt:
  - `wiki/pu-beschichtung-fassade.md` (BKP 225.3) aus `021230 Beschichtung PU.doc`
    (.doc via `textutil -convert txt`) — PU-Fassadenbeschichtung, Aufbau/Verarbeitung/
    Elastizitätsgrenzen, Stand 2002.
  - `wiki/erco-lichtplanung-grundlagen.md` (BKP 233) aus `de_erco_guide.pdf` — grosses
    Werk (435 Seiten laut PDF-Struktur, 62.6 MB), nur Seiten 1-20 (Kapitel Grundlagen:
    Geschichte, Sehen/Wahrnehmen) gelesen; Lesefortschritt im Artikel-Frontmatter
    `gelesen:` festgehalten, Rest offen für Folgeläufe (Multi-Run-Werk gemäss
    Destillat-Anweisung). Inventarzeile bleibt bewusst NICHT auf `[x]`, sondern wird
    im Kommentar als «Teil 1/n gelesen» geführt, da die Quelldatei weitere Läufe
    speist (s.u. Sonderbehandlung).
  - `wiki/bkp-261-aufzuege.md` (BKP 261, korrigiert von der ungenauen Archiv-Ordner-
    bezeichnung «260 Transportanlagen» — 260 ist laut BKP-2017-Liste nur die
    Übergangsposition) aus 5 Herstellerdatenblättern (AS Aufzüge Winner + Rollstuhl-
    Skizze, Garaventa Liftech VAN GOGH, Schindler 3100, Schmitt+Sohn SP): drei
    Systemtypen (MRL-Traktionsaufzug, Seilaufzug mit Maschinenraum, Sitzlift),
    Kennwerte-Tabellen, Barrierefreiheit/EN 81-70.
  - `wiki/chromstahltreppe-oberflaechen.md` (BKP 272) aus `020320 Chromstahltreppe.doc`
    (.doc via `textutil`) — 5 Oberflächenvarianten mit Preisrangfolge Stand 2002,
    Ausführungsrisiken (Anlauffarbe, Verzug, Abnutzung an Stufenkanten).
- **BKP-Codes gegen `references/bkp-2017/BKP-2017-Liste.md` verifiziert**, nicht aus
  Ordnernamen übernommen: Archiv-Ordner «260 Transportanlagen» → korrekt BKP 261
  Aufzüge (260 ist Übergangsposition der Hauptgruppe 26); «272 Metallbauarbeiten»
  ohne eigene Treppen-Subposition, daher generisch auf BKP 272 zitiert statt einen
  Subcode zu erfinden.
- `wiki/INDEX.md` (4 neue BKP-Sektionen 225/233/261/272) und `wiki/QUESTIONS.md`
  (3 neue offene Punkte: ERCO-Restkapitel, AS-Datierung nur aus Dateiname, EN 81-70
  nicht im Volltext geprüft) nachgeführt.
- Kein Fan-out, keine `AskUserQuestion` (Destillat-Stufe urteilt nicht über
  Status-Promotion und committet nicht — das macht die Kurator-Stufe).

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
