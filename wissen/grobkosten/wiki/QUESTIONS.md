# QUESTIONS — wissen/grobkosten

Offene Fragen / Wissenslücken / ungelöste Spannungen. Neueste zuoberst.

## 2026-07-27 — Trainings-Run 9: Option (a) aus Run 8 umgesetzt (Teuerungs-Normalisierung), Frage 1 + 2 bleiben der Blocker

- **Erledigt:** Die Run-8-Baupreisindex-Faktoren wurden auf die vier belastbarsten Einzelfälle
  angewendet (`wiki/kennwerte.md`, Abschnitt "Run 9"). Methode: lineare Interpolation zwischen
  den nächsten zwei belegten Jahres-Stützstellen des Zürcher Index; keine Extrapolation über den
  letzten verfügbaren Anker (01.04.2025) hinaus. Ergebnis: Haus Deuber 1'086 → ≈1'250 CHF/m³
  (+15.1 %), Reckholdern 1'735 → ≈1'757 CHF/m³ (+1.3 %); Niederhasli (1'032) und Albertstrasse
  (2'500) liegen bereits nach dem letzten Anker und bleiben unverändert.
- **Weiterhin ungelöst — jetzt der alleinige Blocker für eine MFH-Median-Bildung:** Selbst nach
  Preisstand-Normalisierung liegen Haus Deuber (≈1'250, MFH) und Niederhasli (1'032, MFH) noch
  ca. 20 % auseinander. Das bestätigt: die Preisstand-Dimension war NICHT die Hauptursache der
  Streuung — Frage 1 (BKP-1-9-vs-1-5-Bezeichnung, betrifft Wald Haselstudstrasse + Pre-Check-
  Tool-Familie) und Frage 2 (Standard-Klassifikation "norm, eloquent" mutmasslich Vorlagentext,
  betrifft Haus Deuber + Reckholdern) bleiben beide nur durch Rückfrage an Raphael Jans bzw.
  durch einen neuen, eindeutig klassifizierten Fall lösbar — nicht autonom in diesem Loop.
- **Empfehlung für Run 10:** Da (a) jetzt erledigt ist, gemäss der in Run 8 genannten Option (b)
  neue, bisher ungeprüfte SharePoint-Bibliotheken sichten: `AR - 02 Wettbewerbe`,
  `AR - 04 Honorarauftraege`, `AR - 05 Transfer` (aus Run 5 als Kandidaten benannt, bisher keine
  geprüft) — mit Fokus auf einen Fall, der die Standard-Klassifikation textlich eindeutig
  belegt (Materialbeschrieb/Ausbaustandard), statt nur ein weiteres Dropdown-Label zu liefern.

## 2026-07-27 — Trainings-Run 8: Stufe-4-Baustein gelöst (Baupreisindex verkettet), Registerlücke geschlossen — neue Empfehlung für Run 9

- **Gelöst:** Der in Run 6 als "möglicher, aber unbewerteter Baustein für Stufe 4" geführte
  Zürcher Baukostenindex (JANS-eigene Quelle bricht 2004 ab) ist jetzt bis 01.04.2025 verkettet
  belegt (`raw/zuercher-index-wohnbaukosten-1939-2025.md`, fertige Umrechnungsfaktoren in
  `wiki/kennwerte.md`). Kein offener Punkt mehr — Stufe 4 kann ab sofort angewendet werden,
  sobald eine Median-Bildung ansteht.
- **Registerlücke behoben:** `raw/2620-albertstrasse.md` (Run 4 extrahiert, nie registriert)
  ist nachgetragen — erster realer Umbau-Kennwert (2'500 CHF/m³) in `kennwerte.md`.
- **Neue Empfehlung für Run 9 — zwei Optionen, beide sinnvoll:** (a) Die jetzt verfügbaren
  Teuerungsfaktoren auf die bestehenden Einzelfälle anwenden (Preisstand-Normalisierung), damit
  ein künftiger Median nicht unterschiedliche Preisstände vermischt. (b) Weiterhin ungeprüfte
  SharePoint-Bibliotheken sichten: `AR - 02 Wettbewerbe`, `AR - 04 Honorarauftraege`, `AR - 05
  Transfer` (aus Run 5 als Kandidaten benannt, bisher keine geprüft). Empfehlung: zuerst (a),
  da risikolos und mit vorhandenem Material machbar, dann (b) für neuen Rohstoff.
- **Weiterhin unverändert offen (aus Run 6/7):** Frage 1 (BKP-1-9-vs-1-5-Bezeichnung, nur durch
  Rückfrage an Raphael lösbar) und Frage 2 (Standard-Label "norm, eloquent" im GKB-Tool ist
  mutmasslich Vorlagentext) — siehe Einträge unten.

## 2026-07-27 — Trainings-Run 7 (Vertiefung Run-6-Kandidaten): Frage 1 bleibt offen, aber mit direktem Tool-Beleg verstärkt

- **Befund:** Die drei in Run 6 identifizierten, aber nicht extrahierten Kandidaten geprüft.
  Pre-Check-Tool 2305 Wädenswil (`raw/2305-waedenswil-precheck.md`) liefert den bisher
  direktesten Beleg für **Offene Frage 1** (BKP-1-9-vs-BKP-1-5-Bezeichnung, siehe Run-6-Eintrag
  unten): im selben Excel-Tool trägt derselbe Faktor (1.13) in derselben Rechenzeile zwei sich
  widersprechende Feldbeschriftungen — «Faktor BKP 2 zu BKP 1-5» (Eingabefeld) versus «Total
  BKP 1-9» (Ausgabefeld). Das bestätigt: die Inkonsistenz liegt im JANS-eigenen Tool selbst,
  nicht in einer Fehlübertragung zwischen Dokumenten. Eine Auflösung ist nur durch Rücksprache
  mit Raphael Jans (Tool-Ersteller) möglich — nicht autonom lösbar. Kennwert (1'380–1'546
  CHF/m³) bewusst NICHT promoviert.
- **Zweiter Kandidat (2304 Waedenswil Residualwert-Tool) geschlossen, nicht verwertbar:**
  Projektnummer-/-name-Felder im Dokument leer — Zahlen (GV 9'080 m³, BKP1-9 12.2-13.1 Mio)
  nicht sicher demselben Projektstand zuordenbar wie 2305 Wädenswil, obwohl im selben
  Projektordner abgelegt (möglicher Hinweis auf eine frühere Tool-Variante oder ein anderes
  Nutzungsszenario). Keine Übernahme ohne verifizierte Provenienz.
- **Dritter Kandidat (Langnau Giebelweg 12) geschlossen, nicht verwertbar:** Erstellungskosten
  im Bewertungsdokument sind explizit eine Annahme innerhalb einer Residualwertrechnung, keine
  eigene BKP-gegliederte Kostenschätzung.
- **Empfehlung für einen künftigen Lauf:** Frage 1 (BKP-1-9-vs-1-5) bleibt der grösste
  strukturelle Blocker für eine MFH-Median-Bildung (betrifft mind. 3 Einzelfälle: Wald
  Haselstudstrasse, 2305 Wädenswil, 2305 Pre-Check-Tool-Familie generell). Eine Klärung
  erfordert entweder eine Rückfrage an Raphael (nicht autonom in diesem Loop) oder das
  Auffinden eines Projekts mit sowohl Pre-Check-Tool-Ergebnis als auch unabhängiger,
  klassischer BKP-1-5-Kostenschätzung zum Abgleich.

## 2026-07-27 — Trainings-Run 6 (vier neue Quellen parallel gesichtet): zwei neue Einzelfälle, drei neue offene Punkte

- **Befund:** `AR - 03 Studien`, `IMMO - 01 Projekte`, `IMMO - 02/03/05` und die zweite
  SharePoint-Bibliothek `...-RaphaelJans-ArchitektenETH` parallel durch vier Subagenten
  geprüft. Zwei neue, gut belegte Einzelfälle in `wiki/kennwerte.md` aufgenommen: 8155
  Niederhasli Seestrasse 64 (1'032 CHF/m³, explizite BKP-1-5-Gliederung + explizites GV im
  selben Dokument — stärkster bisheriger Beleg dieser KB) und 2001 Haus Deuber Thalwil
  (1'086 CHF/m³, eBKP-H-Basis). Details: `raw/8155-niederhasli-seestrasse64.md`,
  `raw/2001-haus-deuber-thalwil.md`.
- **Offene Frage 1 — BKP-1-9-vs-BKP-1-5-Bezeichnung uneinheitlich (neu, betrifft mehrere
  JANS-eigene Pre-Check-/Residualwert-Tools):** Sowohl im Wald-Haselstudstrasse-Dokument
  (`raw/2411-wald-haselstudstrasse.md`) als auch im Pre-Check-Tool 2305 Wädenswil
  (`IMMO - 03 KNOW-HOW`) wird ein Umrechnungsfaktor "BKP 2 → Gesamt = 1.13" verwendet, aber im
  einen Dokument als "BKP 2 → BKP 1-9", im anderen (uneinheitlich) auch als "BKP 2 → BKP 1-5"
  bezeichnet. Da BKP 6-8 laut `references/bkp-2017/` reine Reserve-Kategorien sind (i.d.R.
  null), macht das nur dann keinen Unterschied, wenn BKP 9 (Ausstattung) im Total NICHT
  enthalten ist — das ist aus den vorliegenden PDF-Auszügen nicht abschliessend zu klären. Bis
  geklärt (Einsicht in die Original-Exceldatei "Pre-Check_Tool_Jans.xlsx" nötig, dort ist der
  Faktor als Formel hinterlegt), bleiben alle mit diesem Faktor gebildeten Werte als **obere
  Näherung** markiert und werden NICHT in die Haupttabelle promoviert.
- **Offene Frage 2 — Standard-Klassifikation im JANS-eigenen GKB-Tool ist ein Vorlagentext,
  nicht projektspezifisch:** Sowohl bei 2001 Haus Deuber als auch bei 2304 Reckholdern
  (bereits in Run 4 verwertet) trägt die Grobkostenberechnung das identische Label "norm,
  eloquent" — mutmasslich ein fixes Dropdown-Feld im JANS-eigenen GKB-Tool, keine bewusste
  Standard-Einschätzung je Projekt. Für künftige Läufe: dieses Label NICHT als verlässliche
  Standard-Angabe werten, sondern separat verifizieren (z.B. über Materialbeschrieb/
  Ausbaustandard-Text im selben Dokument), bevor ein Fall einer Standardstufe (einfach/mittel/
  gehoben) zugeordnet wird.
- **Offene Frage 3 — noch keine Median-Bildung trotz n≥2 für "MFH":** Mit inzwischen vier
  MFH-Datenpunkten (Grubenackerstrasse 950-1050 unverifiziert, Haus Deuber 1'086, Niederhasli
  1'032, Wald 1'539-1'765 als obere Näherung) läge rein zahlenmässig n≥2 vor. Bewusst NICHT
  verdichtet, weil die Standard-Einordnung uneinheitlich/unklar ist (siehe Frage 2) und die
  Wald-Werte durch Frage 1 mit Vorbehalt behaftet sind. Vorschlag für einen künftigen Lauf:
  zuerst Fragen 1+2 klären (ggf. durch Excel-Einsicht bzw. Materialbeschrieb-Vertiefung), dann
  erst eine MFH-Median-Bildung erwägen.
- **Drei identifizierte, aber in diesem Lauf aus Kapazitätsgründen nicht extrahierte
  Kandidaten für einen künftigen Lauf:** (a) Pre-Check-Tool 2305 Wädenswil (`IMMO - 03
  KNOW-HOW/05 Residualwert/Exel Tabelle/jans/Immo-02-P23D-Pre-Check_Tool_Jans.xlsx`, GV 11'724 m³
  oi explizit, Erstellungskosten 16.18-18.12 Mio BKP1-9) — echtes JANS-Projekt, lohnt volle
  Extraktion inkl. Klärung von Frage 1 direkt an der Exceldatei. (b) 2304 Waedenswil
  Residualwert-Tool (`AR - 03 Studien`, CHF/m³-Kennwert 1'566 vorhanden, GV nicht explizit). (c)
  Langnau Giebelweg 12 (`IMMO - 01 Projekte`, GV 1'152 m³ explizit, Kosten aber nur als
  "Annahme" in einer Bewertung, keine eigene Kostenschätzung).
- **Möglicher Baustein für Stufe 4 (Teuerungs-Normalisierung), noch nicht bewertet:**
  `IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` enthält eine "Zürcher
  Index der Wohnbaukosten"-Zeitreihe 1939-2004 sowie CHF/m³-Bandbreiten nach Bauklasse I-VI
  (Stand 2003). Das ist potenziell der in `training/PROGRAMM.md` Stufe 4 geforderte "belegte
  Baupreisindex" — aber die Zeitreihe endet 2004, eine Fortschreibung auf 2026 (z.B. via BFS-
  Baupreisindex, bereits als Quelle im Frontmatter-Kaveat von `kennwerte.md` referenziert) wäre
  nötig. Für einen künftigen Lauf: prüfen, ob sich die beiden Indexreihen (Zürcher Index bis
  2004, BFS-Index ab dort) verketten lassen.
- **Nebenbefund, kein grobkosten-Thema, aber vermerkt:** Acht Projektordner unter `AR - 03
  Studien` teilen sich ein identisches, nie ausgefülltes GKS-Copy-Paste-Template (GV 1'668 m³,
  950-1'050 CHF/m³) — ein liegen gebliebener Platzhalter, kein Dokumentationsfehler dieser KB.
  Nur zur Kenntnis, keine Aktion in diesem autonomen Lauf (keine Rückfrage/Mail).

## 2026-07-26 — Trainings-Run 5 (neue Quelle SharePoint `IMMO - 06 Kennwerte`): m²-GF-Benchmark gefunden, zwei neue offene Fragen

- **Befund:** Erste Quelle ausserhalb der Projektordner erschlossen. `_Kennwerte Jans.docx`
  (JANS-eigenes Referenzblatt, 25.03.2025) liefert einen indexierten Erstellungskosten-
  Benchmark für Wohnen Individuell EFH/ZFH (4'485 CHF/m² GF BKP1-5), aber auf einer anderen
  Bezugsgrösse (m² GF) als die geführte Tabelle (m³ GV). Details: `raw/kennwerte-jans-
  referenzdokument.md`, Verdichtung `wiki/kennwerte.md` (neue Parallel-Sektion).
- **Offene Frage 1 — Projekt-Identität "Thalwil Bohlweg 1":** Das im Referenzblatt gerechnete
  Beispiel (950 m² GF, 8-Platz-TG, CHF 4.6 Mio) passt weder in Hausnummer (Bohlweg 1 vs. 3)
  noch in Grössenordnung (Faktor ~10) zum bereits bekannten "2414 THALWIL Bohlweg 3"
  (EFH-Umbau, CHF 526'300 bzw. 482'000, `raw/2414-thalwil.md`). Ungeklärt, ob es sich um ein
  anderes/benachbartes Projekt oder einen früheren, grösseren Planungsstand handelt. Nicht
  autonom auflösbar (keine weitere Quelle in diesem Lauf gefunden) — bei Gelegenheit Raphael
  fragen, oder in einem künftigen Lauf gezielt nach einem Projekt "Bohlweg 1 Thalwil"
  suchen (SharePoint-Projektnummer unbekannt, evtl. unter anderer Nummer/Namen abgelegt).
- **Offene Frage 2 — GV/GF-Umrechnungsfaktor weiterhin ungeklärt (verstärkt den bestehenden
  needs-decision-Punkt aus Wissens-Chef Run 15):** Der neue m²-GF-Benchmark könnte in die
  Haupttabelle (CHF/m³ GV) integriert werden, sobald der GV/GF-Faktor für "Wohnen Individuell"
  entschieden ist. Bis dahin bleibt er als separate Sektion geführt — kein Kennwert wird
  geraten/umgerechnet.
- **Vorschlag für Run 6:** Weitere, in diesem Lauf identifizierte, aber ungeprüfte SharePoint-
  Bibliotheken sichten — Kandidaten mit plausibler Kosten-Relevanz: `AR - 03 Studien` (frühe
  Machbarkeits-/Kostenschätzungen), `IMMO - 01 Projekte`, `IMMO - 02 UBSFS`,
  `IMMO - 03 KNOW-HOW`, `IMMO - 05 Bodenpreise`, sowie die komplett ungesichtete zweite
  SharePoint-Bibliothek `OneDrive-FreigegebeneBibliotheken–RaphaelJans-ArchitektenETH`. Aus
  `IMMO - 04 Marktpreise` ist bereits ein Healthcare-PDF (`crb.ch/Spital_...Kostenkennwerte...`)
  bekannt — Weiterleitung an `kostenschaetzung` prüfen, nicht hier verwenden.

## 2026-07-26 — Trainings-Run 4 (Vertiefung statt neuer Projekte): Reckholdern verwertbar, Ackersteinstrasse-Ursache geklärt — neue offene Frage: Luxus-Standardstufe

- **Befund Reckholdern (gelöst, kein offener Punkt mehr):** Ein fünftes, später datiertes
  JANS-Dokument (`09_Dokumente/Marktwertschaetzung/2304RE20_Marktwertanalyse_RJ.pdf`, Stand
  31.12.2023) liefert GV (1'986 m³) und BKP-1–5-Kosten (CHF 3'446'500, klassischer BKP, deckt
  sich mit dem unabhängig gefundenen KV Siworks) im selben, rechnerisch selbst verifizierten
  Dokument. Der ältere eBKP-H-Widerspruch aus Run 3 (GV 1'715 m³, zwei sich widersprechende
  Kostenstände) ist damit als überholter Zwischenstand eingeordnet, nicht als ungeklärter
  Fehler. Erster Kennwert-Einzelfall mit sauberem GV+BKP-Tripel in dieser KB: 1'735 CHF/m³,
  EFH gehoben/Luxus. Details: `raw/2304-reckholdern.md`.
- **Befund Ackersteinstrasse (gelöst, kein offener Punkt mehr):** Rechnungsprüfung
  (`04_KTV/08_Rechnungen/`) zeigt, dass das Mandat mit der letzten Rechnung 07.09.2023
  ("Plangrundlagen für Abänderungseingabe") endete — keine spätere Rechnung, keine
  Bauleitung/Baubuchhaltung, kein Unternehmerzuschlag. Das Projekt kam nie zur Ausführung; die
  vier widersprüchlichen GKS-Stände aus Run 3 waren Zwischenstände eines nie abgeschlossenen
  Entwurfsprozesses. Eine Bauabrechnung wird für dieses Projekt nie existieren — Fall
  geschlossen (weiterhin nicht verwertbar, aber nicht mehr offen). Details:
  `raw/2202-ackersteinstrasse.md`.
- **Neue offene Frage (aus dem Reckholdern-Fund):** Der Reckholdern-Kennwert (1'735 CHF/m³)
  liegt deutlich über dem bestehenden EFH-Seed-Band (850–1'200), konsistent mit der im
  Quelldokument selbst benannten Luxus-Einordnung (Pool, Erker, Dachreiter, Hanglage). Sollte
  `wiki/kennwerte.md` bei einem zweiten vergleichbaren gehobenen/Luxus-EFH-Fall eine eigene
  Standardstufe "gehoben/Luxus" mit eigenem Band statt nur der bestehenden Stufen
  einfach/mittel/gehoben führen? Bis n=2 in dieser Kategorie vorliegt, keine Strukturänderung.
- **Empfehlung für Run 5:** Die beiden bekannten SharePoint-Quellen (`AR - 01 Projekte`,
  `AR - 07 Archiv`) sind jetzt vollständig geprüft UND vertieft (kein Kandidat mit offenem
  Klärungsbedarf mehr). Ein Run 5 müsste entweder eine neue Quelle identifizieren (z.B. weitere
  SharePoint-Bibliotheken ausserhalb `AR - 01`/`AR - 07`, sofern vorhanden) oder auf einen
  Ereignis-Trigger warten (neuer Kostenstand aus laufenden Mandaten via `kostenkontrolle`) statt
  erneut dieselben Projektordner zu durchsuchen.

## 2026-07-25 — Trainings-Run 3 (Drittquelle AR-07 Archiv geprüft): erstmals GV+BKP im selben Dokument, aber beide Fälle intern widersprüchlich

- **Befund:** SharePoint `AR - 07 Archiv` (abgeschlossene Mandate) vollständig geprüft (4
  Projektordner). Zwei liefern Material: 2202 Ackersteinstrasse 67 (4 Kostenstände über
  2021–2023, Volumen 613–850 m³, Gesamtkosten CHF 480'000–1'219'133, ohne erkennbaren Grund
  für die Abweichung) und 2304 Reckholdern 20 (erstmals GV 1'715 m³ UND vollständige
  eBKP-H-Gliederung im selben Dokument — aber dasselbe Dokument enthält zwei sich
  widersprechende Gesamtkosten, CHF 2'960'000 vs. CHF 1'800'000, wobei letztere erkennbar aus
  einer nicht aktualisierten Fremdprojekt-Vorlage stammt, inkl. sachfremder
  Mietrendite-Berechnung). Details: `raw/2202-ackersteinstrasse.md`, `raw/2304-reckholdern.md`.
- **Neues strukturelles Muster:** Anders als in Run 2 (wo GV und BKP-Kosten in getrennten,
  aber je für sich konsistenten Dokumenten fehlten) liegt hier das Problem NICHT im Fehlen von
  Grösse oder Kostengliederung, sondern in der internen Konsistenz der Dokumente selbst —
  Word/PDF-Vorlagen mit nicht vollständig aktualisierten Vorjahresdaten (Titelseite/
  Rendite-Block aus Fremdprojekt) und mehrfachen, sich widersprechenden Kostenständen ohne
  dokumentierten Anlass für die Änderung. Für künftige Läufe: bei einem Kandidaten mit
  vermeintlich vollständigem GV+BKP-Bild IMMER prüfen, ob das Dokument intern
  in sich konsistent ist (Summe der Positionen = ausgewiesenes Total, Objektbeschrieb passt
  zum Rest des Dokuments), bevor eine Übernahme erwogen wird.
- **Vorschlag für Run 4:** Beide Projekte haben mehrere Kostenstände über die Zeit — ein
  gezielter Blick auf eine allfällige Schlussabrechnung (Ist-Kosten) im selben Projektordner
  könnte die Widersprüche auflösen (in diesem Lauf nicht gesucht, nur die in `PROGRAMM.md`
  vorgeschlagenen KV-/GKS-Dokumente gelesen). Alternativ: Rückfrage an Raphael Jans, welcher
  Stand je Projekt effektiv realisiert wurde. Mit `AR - 07 Archiv` vollständig geprüft (4/4
  Projektordner `[x]`/`[-]`) und `AR - 01 Projekte` in Run 2 vollständig geprüft, sind die
  bekannten SharePoint-Quellen gemäss `PROGRAMM.md` ausgeschöpft — ein Run 4 müsste entweder
  gezielt nach Schlussabrechnungen suchen (statt neue Projektordner) oder eine neue Quelle
  identifizieren (z.B. `kostenkontrolle`-Outputs, falls dort inzwischen Kostenrapporte
  vorliegen).

## 2026-07-25 — Trainings-Run 2 (SharePoint-Zweitquelle geprüft): erste Realdaten, aber durchgängig zu dünn für Promotion

- **Befund:** SharePoint `AR - 01 Projekte` (aktive Mandate) bestätigt die in Run 1 offen
  gelassene Vermutung — hier liegen die echten Kostendokumente, nicht im NAS-Altarchiv. Von 8
  geprüften Mandaten liefern 3 auswertbare Gesamtgebäude-Kostendokumente (Thalwil, Wartstrasse,
  Grubenackerstrasse). Alle drei sind jedoch für eine Kennwert-Promotion **zu dünn**: Thalwil
  hat ein volles BKP-1-6-Bild (CHF 526'300) aber kein Gesamt-GV; Wartstrasse hat gar kein
  GV (Fassaden-Teilprojekt); Grubenackerstrasse hat ein Volumen (1'668 m³), aber nicht
  SIA-416-verifiziert, ohne BKP-Gliederung und ohne Nutzungsangabe. Details: `raw/*.md`.
- **Strukturelles Muster (wichtig für künftige Läufe):** Die Dokumente, die tatsächlich ein
  sauberes GV+BKP-1-5+Nutzung-Tripel enthalten würden, existieren im JANS-Alltag offenbar
  selten als EIN Dokument — GV steckt oft im Vorprojekt/Baugesuch (Planer-Fachdokument), BKP-
  Kosten in einem separaten Kostenblatt. Ein künftiger Lauf sollte pro Projekt gezielt NACH
  dem GV-Dokument (Baugesuch, Vorprojekt-Pläne mit Kubatur) suchen und es mit dem Kostenblatt
  zusammenführen, statt nur das Kostenblatt allein zu prüfen.
- **Ausgeschlossen (bewusst, nicht offen):** 2619 KISPI (Kinderspital Zürich, umfangreichstes
  Kostendossier im Bestand) — Healthcare-Scope, gehört in den Skill `kostenschaetzung`, nicht
  hierher. Empfehlung: eigener Hinweis an den `kostenschaetzung`-Loop, falls dieser die
  KISPI-Kostendaten noch nicht kennt.
- **Nebenbefund (kein grobkosten-Thema, aber notiert):** `2518_Grubenackerstrasse_7/
  04_KostenTermine/1_Kosten/2_Kostenschätzung/230324 Kostenvergleich Liftposition/` enthält
  Fremddaten zweier anderer Projekte (Reckholdern 20, Laternengasse 5) — Fehlablage, read-only
  nicht bereinigt, zur Kenntnis an Raphael.
- **Vorschlag für Run 3:** SharePoint `AR - 07 Archiv` (abgeschlossene Mandate mit
  Schlussabrechnung) prüfen — dort ist die Wahrscheinlichkeit eines vollständigen GV+BKP-Bilds
  höher als bei laufenden Mandaten (deren KV/GKS oft vor Baubeginn und ohne finales GV steht).

## 2026-07-25 — Trainings-Run 1 (Stufe 1, Inventar): Altarchiv `04_Buero/02_Projekte` liefert 0 auswertbare Kostendokumente — Zweitquelle SharePoint prüfen

- **Befund:** Vollständige Durchsicht aller 21 Projektordner unter
  `/Volumes/daten/04_Buero/02_Projekte/` (Details `training/quellen-inventar.md`) ergab **kein
  einziges** auswertbares GV/BKP-1-5-Kostendokument. Ordner, deren Struktur einen vollständigen
  Kostenverlauf suggerieren (z.B. `1602_St_Karli_11` mit 8 Phasenordnern Wettbewerb→
  Kostenfeststellung, `1303_Steinhof` ebenso), sind auf Dateiebene komplett leer (nur
  `.DS_Store`). Andere Treffer sind Honorarofferten (1011), Möbel-/Büroumzugs-Preisvergleiche
  (1527), ein leeres Berechnungs-Template (1115) oder fachfremd (1604, italienisches CISA-
  Palladio-Studienmaterial).
- **Offene Frage:** Ist dieses Alt-NAS-Archiv (`04_Buero/02_Projekte`, Projekte 2010–2015)
  überhaupt der richtige Ort für reale Baukosten, oder laufen JANS-Bauleitungsmandate mit
  echter Kostenkontrolle ausschliesslich über SharePoint (`AR - 03 Studien/`, aktive Mandate
  KISPI/Albertstrasse/Thalwil, Rule `projekt-ablage-stand`)? `training/PROGRAMM.md` nennt
  SharePoint bereits als Zweitquelle ("`kostenkontrolle`-Outputs und Schlussabrechnungen der
  aktuellen Mandate") — noch nicht geprüft, da dieser Lauf sich strikt an die im Prompt
  vorgegebene NAS-Quelle hielt.
- **Vorschlag für den nächsten Lauf:** SharePoint-Projektordner (M365-Connector,
  `09_Dokumente/CLAUDE/` bzw. die BKP-Kostenkontrolle-Ablage der aktiven Mandate) nach
  Schlussabrechnungen/Kostenständen mit GV-Bezug durchsuchen, statt das Alt-NAS-Archiv erneut
  zu prüfen (dort ist die Quellenlage nach dieser Vollprüfung ausgeschöpft).
- **Einzige nicht komplett wertlose Fundstelle:** `1318_Lorraine_Kueche` (BKP-Detailpositionen
  Schreiner/Heizung/Sanitär für einen Kücheneinbau) — kein Gebäude-GV, daher hier nicht
  verwertet; potenziell später für eine BKP-Einzelposition-Kennwert-Erweiterung interessant.

## 2026-07-24 — Nachgetragen aus Health-Check 21.07.2026 (strukturelle Findings, 3 Wochen offen)

- **Reale JANS-Schlussabrechnungen fehlen weiterhin.** Alle Kennwerte in `kennwerte.md` sind
  Status "Seed" (Wüest-kalibriert, keine eigene Realabrechnung). Erster Realwert ist der
  Promotion-Trigger auf "belegt (n=…)".
- **Umbau/Sanierung: eigene m³-Reduktionsfaktoren noch nicht belegt** — derzeit Verweis auf
  Skill `kostenschaetzung` (dort m²-NF-Reduktionsfaktoren, nicht direkt auf m³-GV übertragen).
- **Healthcare bewusst ausgelagert** an Skill `kostenschaetzung` (Wüest-Partner-m²-NF) — kein
  offener Punkt, nur zur Abgrenzung vermerkt.
- **HNF/GF-Umrechnungsfaktoren (0.70 Regelgeschoss, 0.60 Gesamtgebäude) ohne eigene Quelle** —
  erkennbare JANS-Faustannahmen, plausibel und im Band, aber ohne Provenienz-Tag (Audit C,
  Health-Check 21.07.2026). Unkritisch, aber bei Gelegenheit mit einer Herleitung/Quelle
  hinterlegen, sobald eine verfügbar ist.
