# CHANGELOG — wissen/grobkosten

## 2026-07-27 — Trainings-Run 8 (Registerpflege + Stufe-4-Baustein extern gelöst, kein neuer Projektordner)

- Kollisionscheck via `ps`/`PPID`-Abgleich: einziger Treffer war die eigene Parent-Instanz,
  keine echte Zweitinstanz auf diesem Host.
- **Registerlücke geschlossen:** `raw/2620-albertstrasse.md` war bereits in Run 4 (25.07.2026)
  im Hauptkontext extrahiert worden, aber nie in `wiki/kennwerte.md`, `training/quellen-
  inventar.md` oder diesem CHANGELOG nachgeführt (widersprach der eigenen Notiz in
  `raw/_INGESTED.md`, die "eingearbeitet" bereits behauptete). Nachgetragen: Dachausbau-
  Variante 2620 Albertstrasse 7 (350 m³ Umbauvolumen, CHF 2'500/m³, Nova Property Fund
  Management AG) ist jetzt der **erste reale Umbau-Einzelfall** dieser KB
  (`wiki/kennwerte.md`, Abschnitt "Umbau/Sanierung"). `training/quellen-inventar.md`-Zeile
  2620_KELLER korrigiert (Run 2 fand nichts unter `AR - 01 Projekte`, der reale Fund lag unter
  `AR - 03 Studien/2620 ALBERTSTRASSE 7/`).
- **Stufe-4-Baustein (Teuerungs-Normalisierung) extern gelöst:** Der in Run 6 identifizierte,
  aber unbewertete Zürcher Baukostenindex (JANS-eigene Quelle bricht 01.04.2004 ab) wurde per
  WebSearch/WebFetch im Hauptkontext (kein OneDrive-Zugriff nötig, daher keine Delegation an
  Background-Subagenten gemäss Memory `feedback_background_agent_onedrive_stall`) mit einer bis
  01.04.2025 fortgeführten Fassung derselben amtlichen Reihe (Stadt Zürich, Publisher HEV Kt.
  Schwyz) verkettet — Werte bis 2004 identisch, danach nahtlos weitergeführt. Neuer Roh-Beleg
  `raw/zuercher-index-wohnbaukosten-1939-2025.md` mit fertigen Umrechnungsfaktoren (z.B.
  Preisstand 2004→2025: +33.4 %, 2022→2025: +7.2 %); in `wiki/kennwerte.md` als eigener
  Abschnitt "Baupreisindex ZH (Teuerungs-Normalisierung, Stufe 4)" dokumentiert. Damit ist die
  in `training/PROGRAMM.md` für Stufe 4 verlangte Voraussetzung ("belegter Baupreisindex ...
  in der KB hinterlegt") erstmals erfüllt — Anwendung auf die bestehenden Einzelfälle steht
  noch aus (Vorschlag für Run 9).
- Register durchgehend nachgeführt: `training/quellen-inventar.md` (Run-8-Abschnitt +
  2620-Korrektur), `raw/_INGESTED.md` (zwei neue Zeilen), `wiki/QUESTIONS.md` (neuer
  Run-8-Eintrag, Empfehlung für Run 9), `wiki/kennwerte.md` (sources-Frontmatter, zwei neue
  Abschnitte).

## 2026-07-27 — Trainings-Run 7 (Vertiefung der drei Run-6-Kandidaten, keine neue Quelle)

- Kollisionscheck via `ps`/`PPID`-Abgleich durchgeführt: einziger Treffer war die eigene
  Parent-Instanz dieses Laufs, keine echte Zweitinstanz auf diesem Host.
- Lokale venv `/tmp/venv-xlsx-grobkosten` (openpyxl) angelegt, um die beiden JANS-eigenen
  Pre-Check-Tool-Excels aus Run 6 direkt auszulesen (bisher nur als PDF/Namen bekannt).
- **Pre-Check-Tool 2305 Wädenswil** (`IMMO - 03 KNOW-HOW/05 Residualwert/.../
  Immo-02-P23D-Pre-Check_Tool_Jans.xlsx`) extrahiert: GV oi 11'724.48 m³, Baukosten-Feld trägt
  intern widersprüchliche Beschriftung — derselbe Faktor (1.13) heisst im Eingabefeld «Faktor
  BKP 2 zu BKP 1-5», im Ausgabefeld zwei Zeilen darunter «Total BKP 1-9». Das vertieft die in
  Run 6 offen gelassene «Offene Frage 1» mit einem direkten Tool-internen Beleg, löst sie aber
  nicht — Kennwert (1'380–1'546 CHF/m³) bewusst NICHT in `wiki/kennwerte.md` promoviert (wie
  Wald Haselstudstrasse). Details: `raw/2305-waedenswil-precheck.md`.
- **2304 Waedenswil Residualwert-Tool-Variante** geprüft und geschlossen: Projektnummer-/
  -name-Felder im Dokument leer, Zahlen (GV 9'080 m³, BKP1-9 12.2-13.1 Mio) nicht sicher
  demselben Projektstand zuordenbar — keine Übernahme ohne verifizierte Provenienz.
- **Langnau Giebelweg 12** geprüft und geschlossen: Erstellungskosten im Bewertungsdokument
  sind eine Annahme innerhalb einer Residualwertrechnung, keine eigene BKP-Kostenschätzung.
- Register nachgeführt: `training/quellen-inventar.md` (Run-7-Abschnitt), `wiki/QUESTIONS.md`
  (Frage 1 vertieft), `wiki/kennwerte.md` (Provenienz-Eintrag + Frontmatter-Source), `wiki/
  INDEX.md`, `raw/_INGESTED.md`. Kein neuer Kennwert in dieser Runde. Report:
  `outputs/2026-07-27_grobkosten-run7.md`.

## 2026-07-27 — Trainings-Run 6 (vier neue Quellen parallel: `AR - 03 Studien`, `IMMO - 01/02/03/05`, zweite SharePoint-Bibliothek)

- Kollisionscheck via `ps` durchgeführt: einziger Treffer war die eigene Parent-Instanz dieses
  Laufs (PPID-Abgleich bestätigt), keine echte Zweitinstanz auf diesem Host.
- Gemäss Vorschlag aus `wiki/QUESTIONS.md` (Run 5) vier bisher ungeprüfte SharePoint-Bereiche
  durch vier parallele Subagenten (sonnet) gesichtet: `AR - 03 Studien` (18 Projektordner),
  `IMMO - 01 Projekte` (14 Ordner), `IMMO - 02 UBSFS`/`IMMO - 03 KNOW-HOW`/`IMMO - 05
  Bodenpreise`, sowie die komplett ungesichtete zweite Bibliothek `OneDrive-
  FreigegebeneBibliotheken–RaphaelJans-ArchitektenETH`.
- **Zwei neue Einzelfälle in `wiki/kennwerte.md` aufgenommen** (beide mit explizitem
  SIA-416-GV UND nachvollziehbarer BKP-1-5-Kostenbasis im selben Dokument):
  - **8155 Niederhasli, Seestrasse 64**: GV 3'843.8 m³ (ober+unter, je Geschoss ausgewiesen),
    BKP 1-5 einzeln aufgeschlüsselt (408'400 + 2'813'573 + 0 + 150'930 + 593'503 = 3'966'406
    CHF) → **1'032 CHF/m³ GV**. Stärkster bisheriger Beleg dieser KB (echte BKP-Einzelgliederung
    statt Summenbucket). Standard-Einordnung bleibt unklar (Kostenniveau liegt über beiden im
    Dokument genannten Referenzstufen). Machbarkeitsstudie, kein Ausführungsbeleg, Preisstand
    07/2025. Details: `raw/8155-niederhasli-seestrasse64.md`.
  - **2001 Haus Deuber, Thalwil**: GV 2'725 m³, Anlagekosten B-Z (eBKP-H, näherungsweise
    BKP-1-5-äquivalent) inkl. MwSt. CHF 2'960'000 → **1'086 CHF/m³ GV**. eBKP-H- statt
    BKP-2017-Klassifikation (Näherung, keine 1:1-Übersetzung verifiziert); Projekt nie zur
    Ausführung gekommen (sistierte Baueingabe), Preisstand 10/2020. Details: `raw/2001-haus-
    deuber-thalwil.md`.
- **Zwei weitere Rohbelege dokumentiert, aber bewusst NICHT promoviert:** 2411 Wald
  Haselstudstrasse (GV 5'921 m³ explizit, aber Kostentotal uneinheitlich als "BKP 1-9"
  bezeichnet — Vorbehalt zu BKP9-Anteil ungeklärt, `raw/2411-wald-haselstudstrasse.md`); 8123
  Ebmatingen Im Grossacher 2, zweites Dokument (Residualwert-Tool, GV nicht explizit
  ausgewiesen, keine Rückrechnung gemäss Leitplanke — Addendum in `raw/2412-ebmatingen-
  grossacher.md`).
- **Neue offene Fragen** (Details `wiki/QUESTIONS.md`): (1) Bezeichnung "BKP 1-9" vs. "BKP 1-5"
  für denselben Umrechnungsfaktor (1.13) in zwei JANS-eigenen Tools uneinheitlich verwendet —
  ungeklärt, ob BKP 9 (Ausstattung) im Total enthalten ist. (2) Standard-Label "norm, eloquent"
  taucht wortgleich in zwei unabhängigen Projekten (Haus Deuber, Reckholdern) auf — mutmasslich
  ein Vorlagentext des JANS-GKB-Tools, keine projektspezifische Einschätzung. (3) Trotz
  rechnerisch n≥2 für "MFH" bewusst KEINE Median-Bildung ausgelöst, da Standards uneinheitlich
  und ein Teil der Werte (Wald) mit Vorbehalt behaftet ist — Konservativ bis Fragen 1+2 geklärt.
- **Drei identifizierte, aber aus Kapazitätsgründen nicht extrahierte Kandidaten** für einen
  künftigen Lauf: Pre-Check-Tool 2305 Wädenswil (`IMMO - 03 KNOW-HOW`, GV 11'724 m³ oi
  explizit), 2304 Waedenswil Residualwert-Tool (`AR - 03 Studien`, GV nicht explizit), Langnau
  Giebelweg 12 (`IMMO - 01 Projekte`, GV explizit, Kosten nur als Annahme).
- **Möglicher Baustein für Stufe 4 (Teuerungs-Normalisierung) identifiziert, nicht bewertet:**
  `IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` — Zürcher Index der
  Wohnbaukosten 1939-2004 + CHF/m³-Bandbreiten nach Bauklasse I-VI (Stand 2003).
- **`IMMO - 02 UBSFS` und `IMMO - 05 Bodenpreise` vollständig geprüft**: beide komplett out of
  scope (reine Markt-/Landpreis-Statistik, keine Gebäude-Erstellungskosten).
- **Zweite SharePoint-Bibliothek vollständig geprüft**: nur 4 Dateien insgesamt, keine
  verwertbaren Kostendaten (2 Dubletten bekannter Projekte, 2 reine Architektur-Pläne).
- Nebenbefund (kein grobkosten-Thema, nur vermerkt): acht Projektordner unter `AR - 03 Studien`
  teilen ein identisches, nie ausgefülltes GKS-Copy-Paste-Template — Datenqualitäts-Beobachtung
  für Raphael, keine Aktion in diesem autonomen Lauf.
- Nachgeführt: `training/quellen-inventar.md` (Run-6-Abschnitt), `wiki/kennwerte.md` (neue
  Sektion + Frontmatter-Quellen + Provenienz-Historie), `wiki/INDEX.md`, `wiki/QUESTIONS.md`,
  `raw/_INGESTED.md`. Lauf-Report: `outputs/2026-07-27_grobkosten-run6.md`.
- Vorschlag für Run 7: die drei zurückgestellten Kandidaten extrahieren (insbesondere
  Pre-Check-Tool 2305 Wädenswil direkt aus der Exceldatei, um Frage 1 aufzulösen), danach
  MFH-Median-Bildung neu prüfen.

## 2026-07-26 — Trainings-Run 5 (neue Quelle: SharePoint `IMMO - 06 Kennwerte`)

- Kollisionscheck via `ps` durchgeführt (der einzige gefundene Prozess war die eigene
  Parent-Instanz dieses Laufs, keine echte Zweitinstanz auf diesem Host).
- Gemäss Empfehlung aus Run 4 (`wiki/QUESTIONS.md`: "neue Quelle identifizieren, statt
  dieselben Projektordner erneut zu prüfen") die SharePoint-Bibliotheken ausserhalb
  `AR - 01 Projekte`/`AR - 07 Archiv` gesichtet. `IMMO - 06 Kennwerte` (kuratierte,
  themenweise statt projektweise gegliederte Kennwerte-Ablage) als erste neue Quelle geprüft.
- **`_Kennwerte Jans.docx` (JANS-eigenes Referenzblatt, 25.03.2025)** liefert einen
  indexierten Erstellungskosten-Benchmark für Wohnen Individuell EFH/ZFH: BKP2-Medianwert
  2'900 CHF/m² GF (2020), indexiert auf 3'365 CHF/m² GF (2025, Index 116), hochgerechnet auf
  BKP 1-5 (Anteil BKP2 = 75 %) zu **4'485 CHF/m² GF**. Zusätzlich ein Rechenbeispiel
  "Thalwil Bohlweg 1" (950 m² GF, TG 8 SP à 42'000, Total CHF 4.6 Mio) und ein TG-Kennwert
  (42'000 CHF/Parkplatz BKP1-5).
- **Bewusst nicht in die m³-GV-Haupttabelle konvertiert** — die Bezugsgrösse (m² GF) weicht
  von der geführten m³-GV-Tabelle ab, und der GV/GF-Umrechnungsfaktor ist laut Frontmatter von
  `wiki/kennwerte.md` selbst ein offener "needs-decision"-Punkt (Wissens-Chef Run 15). Stattdessen
  als eigenständige, klar gekennzeichnete Parallel-Sektion geführt (Leitplanke "fehlende
  Bezugsgrössen nie rechnerisch ergänzen").
- **Neue offene Frage:** Das Rechenbeispiel "Thalwil Bohlweg 1" passt weder in Hausnummer noch
  Grössenordnung zum bereits bekannten Projekt "2414 THALWIL Bohlweg 3" — Projekt-Identität
  ungeklärt, in `wiki/QUESTIONS.md` festgehalten (nicht autonom auflösbar).
- Weitere in derselben Quelle geprüfte Dokumente (Link-Sammlung, Drittsoftware-Handbuch
  "BBase Grobkosten" von PMS Informatik AG 2012, Büro-Marktmietanalyse hbre, leere Ordner,
  Healthcare-Unterordner bewusst ausgeklammert) liefern keine verwertbaren JANS-Kostendaten.
- Neuer Roh-Beleg: `raw/kennwerte-jans-referenzdokument.md`. Nachgeführt: `wiki/kennwerte.md`
  (neue Sektion + Frontmatter-Quellen + Provenienz-Historie), `training/quellen-inventar.md`
  (Run-5-Abschnitt), `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md`. Lauf-Report:
  `outputs/2026-07-26_grobkosten-run5.md`.
- Vorschlag für Run 6: weitere identifizierte, aber ungeprüfte SharePoint-Bibliotheken sichten
  (`AR - 03 Studien`, `IMMO - 01/02/03/05`, zweite Bibliothek `...-RaphaelJans-ArchitektenETH`)
  — Details/Priorisierung in `wiki/QUESTIONS.md`.

## 2026-07-26 — Trainings-Run 4 (Vertiefung der beiden Run-3-Kandidaten: erster verwertbarer Kennwert)

- Kollisionscheck via `ps` durchgeführt (keine zweite Loop-Instanz auf diesem Host aktiv) —
  Stand geprüft: `training/quellen-inventar.md`, `wiki/kennwerte.md`, `wiki/QUESTIONS.md`.
- Gemäss Empfehlung in `wiki/QUESTIONS.md` (Run 3) keine neuen Projektordner erschlossen,
  sondern die beiden Run-3-Kandidaten (2202 Ackersteinstrasse, 2304 Reckholdern) vertieft:
  Rechnungen, Zahlungskontrolle, Baubuchhaltungs-/TUV-Ordner und ein bisher nicht gelesenes
  JANS-eigenes Arbeitspapier (`09_Dokumente/Marktwertschaetzung/2304RE20_Marktwertanalyse_RJ.pdf`,
  Stand 31.12.2023) geprüft.
- **2304 Reckholdern 20 — erster verwertbarer Kennwert dieser KB.** Die Marktwertanalyse liefert
  GV (1'986 m³ SIA 416) und BKP-1–5-Kosten (CHF 3'446'500, klassischer BKP, deckt sich mit dem
  unabhängig in Run 3 gefundenen KV Siworks) im selben Dokument, rechnerisch selbst verifiziert
  (P/GF, P/HNF, P/GV stimmen exakt). Löst den in Run 3 dokumentierten internen Widerspruch auf
  (älterer eBKP-H-Stand war ein überholter Zwischenstand). Neuer Eintrag in `wiki/kennwerte.md`:
  **1'735 CHF/m³ GV, EFH Ersatzneubau gehoben/Luxus, Preisstand 12/2023, Kanton Schwyz —
  Einzelfall n=1** (Seed-Band unverändert, da n=1; Wert liegt über dem bestehenden EFH-Band,
  konsistent mit der im Quelldokument selbst benannten Luxus-Einordnung).
- **2202 Ackersteinstrasse 67 — Ursache geklärt, Fall geschlossen.** Rechnungsprüfung zeigt: das
  Mandat endete 09/2023 mit der Lieferung von Plangrundlagen für eine Abänderungseingabe, keine
  spätere Rechnung/Bauleitung/Baubuchhaltung. Das Projekt kam nie zur Ausführung — die vier in
  Run 3 gefundenen widersprüchlichen GKS-Stände waren Zwischenstände eines nie abgeschlossenen
  Entwurfsprozesses, kein Dokumentationsfehler. Weiterhin nicht verwertbar für einen Kennwert,
  aber nicht mehr als offene Frage geführt.
- `raw/2304-reckholdern.md` und `raw/2202-ackersteinstrasse.md` je um einen "Run 4"-Abschnitt
  ergänzt; `wiki/kennwerte.md` (neuer Run-4-Abschnitt + Frontmatter/Provenienz aktualisiert),
  `wiki/QUESTIONS.md` (Run-3-Fragen beantwortet, eine neue Frage: eigene Standardstufe
  "gehoben/Luxus" bei n=2 erwägen), `wiki/INDEX.md`, `training/quellen-inventar.md`
  nachgeführt. Lauf-Report: `outputs/2026-07-26_grobkosten-run4.md`.
- Empfehlung für Run 5: beide bekannten SharePoint-Quellen sind jetzt vollständig geprüft UND
  vertieft; nächster Lauf braucht eine neue Quelle oder einen Ereignis-Trigger (neuer
  Kostenstand aus `kostenkontrolle`), kein erneutes Durchsuchen derselben Projektordner.

## 2026-07-25 — Trainings-Run 3 (Stufe 2: SharePoint-Drittquelle AR-07 Archiv, zwei Fälle geprüft, keiner verwertbar)
- `training/quellen-inventar.md` erweitert: alle 4 Projektordner unter SharePoint
  `AR - 07 Archiv/01_Projekte/` (abgeschlossene Mandate) geprüft. 2202 Ackersteinstrasse und
  2304 Reckholdern liefern GV+BKP-Material, 1318 Lorraine (Duplikat aus Run 1) und _SCHAFFNER
  ohne verwertbaren Inhalt. Damit sind beide bekannten SharePoint-Quellen (`AR - 01 Projekte`
  Run 2, `AR - 07 Archiv` Run 3) vollständig geprüft.
- **Neue `raw/`-Einträge:** `raw/2202-ackersteinstrasse.md` (vier widersprüchliche
  Kostenstände 2021–2023, Volumen 613–850 m³, Gesamtkosten CHF 480'000–1'219'133, kein
  dokumentierter Grund für die Abweichung), `raw/2304-reckholdern.md` (GV 1'715 m³ und
  eBKP-H-Gliederung erstmals gleichzeitig im selben Dokument vorhanden — aber dasselbe
  Dokument nennt widersprüchlich sowohl CHF 2'960'000 als auch CHF 1'800'000, letzteres
  erkennbar aus einer nicht aktualisierten Fremdprojekt-Vorlage mit sachfremder
  Mietrendite-Berechnung).
- **Keine Kennwert-Promotion, kein neuer Einzelfall-Eintrag:** beide Fälle sind nicht nur dünn
  belegt, sondern in sich widersprüchlich — strenger als die Run-2-Bar ("Einzelfall n=1 mit
  Kaveat"). `wiki/kennwerte.md` erhält nur einen transparenten Prüfvermerk unter "Run 3",
  Seed-Werte und die Run-2-Einzelfälle bleiben unverändert.
- Neue Frage in `wiki/QUESTIONS.md`: strukturelles Muster erkannt (Vorlagen mit nicht
  vollständig aktualisierten Vorjahresdaten als Fehlerquelle); Vorschlag für Run 4: gezielt
  nach Schlussabrechnungen in beiden Projektordnern suchen statt neue Projekte zu erschliessen,
  da die bekannten SharePoint-Quellen jetzt ausgeschöpft sind. Lauf-Report:
  `outputs/2026-07-25_grobkosten-run3.md`.

## 2026-07-25 — Trainings-Run 2 (Stufe 1+2: SharePoint-Zweitquelle, erster raw/-Ingest)
- `training/quellen-inventar.md` erweitert: alle 8 aktiven Mandate unter SharePoint
  `AR - 01 Projekte` auf Kostendokumente geprüft (Zweitquelle gemäss Empfehlung aus Run 1).
  3 von 8 liefern auswertbare Gesamtgebäude-Kostendokumente (Thalwil, Wartstrasse,
  Grubenackerstrasse); 2619 KISPI bewusst als Healthcare-Scope ausgeschlossen (gehört zu
  Skill `kostenschaetzung`); 4 weitere ohne verwertbares Material (leer/kein Treffer).
- **Erster echter `raw/`-Ingest:** `raw/2414-thalwil.md`, `raw/2515-wartstrasse.md`,
  `raw/2518-grubenackerstrasse.md` neu angelegt. Keiner der drei Fälle erreicht die Bar für
  eine Promotion auf "belegt (n=…)" — Thalwil hat volle BKP-1-6-Kosten (526'300) aber kein
  Gesamt-GV, Wartstrasse hat gar kein GV (Fassaden-Teilprojekt), Grubenackerstrasse hat ein
  Volumen (1'668 m³) ohne SIA-416-Verifikation und ohne BKP-Gliederung.
- `wiki/kennwerte.md`: neuer Abschnitt "Erste reale Datenpunkte (Run 2)" mit den zwei
  brauchbaren Einzelfällen (Thalwil-Teilvolumen 1'600/800 CHF/m³, Grubenackerstrasse
  950-1'050 CHF/m³ unverifiziert) — Seed-Werte bewusst NICHT überschrieben (Regel: bei n=1
  Seed nicht ersetzen). Frontmatter/Provenienz-Abschnitt nachgeführt.
- Neue Frage in `wiki/QUESTIONS.md`: strukturelles Muster erkannt (GV und BKP-Kosten liegen
  bei JANS meist in getrennten Dokumenten, künftige Läufe sollten gezielt beide zusammenführen);
  Vorschlag für Run 3: SharePoint `AR - 07 Archiv` (abgeschlossene Mandate mit
  Schlussabrechnung) prüfen. Nebenbefund Fehlablage in Grubenackerstrasse-Ordner vermerkt
  (read-only, nicht bereinigt). Lauf-Report: `outputs/2026-07-25_grobkosten-run2.md`.

## 2026-07-25 — Trainings-Run 1 (Stufe 1: Quellen-Inventar 04_Buero/02_Projekte)
- `training/quellen-inventar.md` neu angelegt: alle 21 Projektordner unter
  `/Volumes/daten/04_Buero/02_Projekte/` systematisch auf Kostendokumente geprüft (10 ohne
  jeden Kosten-Treffer, 11 mit "Kosten" im Pfad einzeln auf Dateiebene verifiziert).
- **Ergebnis: 0 auswertbare GV/BKP-1-5-Kostendokumente.** Mehrere Ordner mit vollständig
  suggerierter Phasenkette (Wettbewerb→Kostenfeststellung, z.B. 1602_St_Karli_11,
  1303_Steinhof) sind auf Dateiebene leere Struktur-Schablonen; andere Treffer sind
  Honorarofferten, Möbel-/Umzugs-Preisvergleiche, ein leeres Berechnungs-Template oder
  fachfremdes Material (Details siehe Inventar-Datei).
- `wiki/kennwerte.md` bleibt unverändert auf Status Seed — keine Extraktion möglich, keine
  Verdichtung (Stufe 2/3 dieses Laufs entfällt mangels Material).
- Neue Frage in `wiki/QUESTIONS.md`: SharePoint-Projektordner (aktive Mandate,
  Rule `projekt-ablage-stand`) als Zweitquelle für den nächsten Lauf statt erneuter Prüfung
  des jetzt ausgeschöpften NAS-Altarchivs. Lauf-Report: `outputs/2026-07-25_grobkosten-run1.md`.

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): needs-decision zum Flaechenfaktor-Komplex; ein Altpunkt geschlossen
- **needs-decision-Box in `wiki/kennwerte.md`** (additiv, kein Wertwechsel): (a) Die Begruendung «die ~1020 CHF/m3 beruhen auf GV/HNF 4.7 (Gesamtgebaeude), das 0.70 dient nur als Geschoss-Kennwert» ist nachrechenbar falsch — **3.3 / 0.70 = 4.71**, die 4.7 ist regelgeschoss-basiert. Mit Gesamtgebaeude-Faktoren ergaebe sich GV/HNF ~5.0-5.5 und ein Anker von ~870-960 CHF/m3. (b) Gekoppelt: der E1-Regelgeschoss-Wert **0.70** kollidiert mit dem belegten **0.75** in `immobilienbewertung/wiki/flaechendefinitionen-sia:84`. Beides adversarial BESTAETIGT, beides Fachentscheid Raphael (Korrektur eines frueheren Wissens-Chef-Entscheids) — der Anker bleibt bis dahin gueltig (oberer Rand des eigenen Bands 850-1050, innerhalb ±25 %).
- **Altpunkt geschlossen:** die seit Run 14 gefuehrte «0,70/0,60-Kopplungsformulierung» in der Wuest-Referenz ist ein **Scheinbefund** — beide Richtwerte sind unabhaengig aus der Quantilstabelle indexiert (4360 CHF/m2 HNF, 2840 CHF/m2 GF), kein Faktor im Spiel; das Quellen-Verhaeltnis wandert selbst von 0,70 (Q1.0) auf 0,60 (Q5.0). Kein Handlungsbedarf.
- **Rollen-Klarstellung (neue Matrix-Zeile):** diese KB fuehrt Healthcare **nicht** — `kennwerte.md:66-68` untersagt die Verwendung ihrer m3-Werte fuer Spital/Klinik/Pflegeheim ausdruecklich. Ein Parameter-Set in `entwurfs-referenzen` hat sich trotzdem darauf berufen (dort gesperrt).
- Ankerzahlen im Kennwert-Feld weiterhin widerspruchsfrei (Delta-Check gefahren). Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-25 — Wissens-Health-Check Phase 1: Re-Audit nach dem 24.07.-Fix (Mac Mini Nachtschicht)
- [health-check] A0·B0(**behoben**)·C1(jetzt sauber in QUESTIONS.md getrackt)·D0·E0(Frontmatter-
  Mechanismus jetzt funktionsfähig)·F2(**Teilfix**)·G0 — der 24.07.-Nachziehlauf hat die drei
  Kern-Findings (QUESTIONS.md, raw/_INGESTED.md, Frontmatter+Umlaute in kennwerte.md) verifiziert
  behoben, war aber explizit auf `kennwerte.md` begrenzt: `raw/README.md` und `outputs/README.md`
  bleiben in ae/oe/ue-Umschrift, die beiden ältesten CHANGELOG-Kopfzeilen (`010726`, `070626`)
  weiterhin im alten Datumsformat. Beides kosmetisch, kein inhaltliches Risiko. Report:
  `outputs/2026-07-25_health-check.md`.

## 2026-07-24 — Strukturelle Findings nachgezogen (Mac Mini Nachtschicht, 3 Wochen fällig)
- [struktur] Die drei seit 01.07.2026 offenen und im Health-Check 21.07.2026 dreifach
  bestätigten strukturellen Findings behoben: `wiki/QUESTIONS.md` neu angelegt (Fragen aus dem
  bisherigen INDEX-Block übernommen + HNF/GF-Provenienz-Lücke ergänzt), `raw/_INGESTED.md` neu
  angelegt (raw/ weiterhin nur README, ehrlich als Seed-Basis vermerkt), Frontmatter
  (`title/status/last_updated/sources/links`) in `wiki/kennwerte.md` ergänzt (status `emerging`,
  da an belegte Wüest-Benchmarks angekoppelt aber ohne eigene Realabrechnung).
- [umlaute] `wiki/kennwerte.md` durchgängig auf echte Umlaute ä/ö/ü umgestellt (Rule
  `umlaute-konvention.md` hat Vorrang) — rund 30 Fundstellen; Dateinamen/Backtick-Pfade
  (z.B. `fernwaerme-anschlusskosten-zh`, `kostenschaetzung`) bewusst unverändert gelassen
  (ASCII-Dateinamen-Konvention). `wiki/INDEX.md` redundanten Fragen-Block entfernt, verweist
  jetzt auf `QUESTIONS.md`.
- Kein inhaltlicher Eingriff in die Kennwerte/Tabellen selbst — reine Struktur-/Schreibregel-
  Nacharbeit gemäss Empfehlung aus `outputs/2026-07-21_health-check.md`.

## 2026-07-21 — Wissens-Health-Check Phase 1 (Mac Mini Nachtschicht)
- [health-check] A0·B2·C1offen/3neu-verifiziert·D0·E0·F3·G0 — inhaltlich weiterhin sauber
  (neue Cross-KB-Bezuege aus den Wissens-Chef-Runs 12./14.07. widerspruchsfrei, Quellen
  verifiziert), aber die drei strukturellen Findings vom 01.07. (fehlende `wiki/QUESTIONS.md` +
  `raw/_INGESTED.md`, kein Frontmatter in `kennwerte.md`, Umlaut-Umschrift ae/oe/ue statt
  ä/ö/ü) sind trotz dreimaliger inhaltlicher Bearbeitung unveraendert offen — 3 Wochen
  faellig, Phase 2 fuer diese KB nie gelaufen. Report: outputs/2026-07-21_health-check.md.

## 2026-07-14 — Wissens-Chef Run 4 (Cross-KB): Querbezug KB energie (Doppelzaehlungs-Guard)
- [link] `wiki/kennwerte.md`: neuer Abschnitt «Querbezug KB energie» — Waermeerzeuger-/PV-/Fernwaerme-Komponentenkosten (CHF/kWp, Anschluss, Rp/kWh) werden in `wissen/energie` gefuehrt, stecken als BKP 23/24/25 bereits in den hier gefuehrten CHF/m3-GV-Kennwerten (BKP 1-5) — **nicht additiv** aufrechnen. Fuehrung m3-GV-Erstellungskennwerte bleibt hier; energie liefert Detail-/Betriebskosten. Kein Widerspruch/Doppelspur. Bericht: koordination/outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-12 — Wissens-Chef Run 2 (Cross-KB): Teuerungs-Check verlinkt
- [befund] W3 (Teuerungsstand grobkosten «Wüest 2022/23» vs. aktueller BFS-Baupreisindex) adversarial **WIDERLEGT**: Seed-Basis legitim (Werte explizit Seed ±25 %, Kalibrierquelle transparent, reale Bauteuerung 2023->2026 nur ~2-3 %, weit unter der Spanne). Kein Fehler.
- [link] kennwerte.md: Teuerungs-Check-Note + Verweis auf `immobilienbewertung/wiki/investorenmarkt-makro` (BFS April 2026 = 100.6). Compounding-Verlinkung, keine Wertkorrektur.

## 2026-07-12 — Wissens-Chef Run 1 Nachtrag: E1 entschieden (HNF/GF-Faktor kontextabhaengig)
- [entscheid] Fachentscheid E1 (Raphael 12.07.2026): HNF/GF-Faktor ist kontextabhaengig — **Regelgeschoss 0.70**, **Gesamtgebaeude 0.60–0.61** (inkl. Sockel/Attika/UG). Fuer die m²↔m³-Kostenbruecke ist der Gesamtgebaeude-Faktor 0.60 kanonisch. In kennwerte.md verankert; die ~1'020 CHF/m³-Ankopplung bleibt gueltig (beruht auf GV/HNF 4.7 Gesamtgebaeude). Cross-KB-Fund grobkosten-W2 damit aufgeloest.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Kennwerte-Bruecke zu immobilienbewertung
- [link] kennwerte.md -> `immobilienbewertung/wiki/realwert-sachwert` (und zurueck). Klargestellt: die dortige Wuest-Tabelle «Immobilien entwickeln» S. 37 (ausbaustandard-/lagegestuft) und der hier gefuehrte Wuest-Dimensions-Median sind ZWEI verschiedene Wuest-Produkte mit verschiedener Bezugsbasis — kein Widerspruch (adversarial verifiziert, kennwerte-W1/W4 WIDERLEGT). Vergleich nur basisgleich.
- [offen] Kennwerte-W2 (m2->m3-Umrechnungsfaktor 0.70 in kennwerte vs. 0.60-0.61 dreifach trianguliert in immobilienbewertung) BESTAETIGT + als heikel markiert -> Entscheid Raphael (siehe koordination/outputs/2026-07-12_wissens-chef-run1.md).

## 010726 — Wissens-Health-Check (Phase 1)
- Audit A-G unbeaufsichtigt gelaufen. Inhaltlich sauber (A/C/D/E/G gruen), formal 2 Findings:
  B (QUESTIONS.md + raw/_INGESTED.md fehlen), F (kein Frontmatter, ae/oe/ue statt echter Umlaute,
  CHANGELOG-Datumsformat). Keine falschen Kennwerte, alle Werte korrekt Seed + Provenienz.
- Report: `outputs/2026-07-01_health-check.md`. Phase-2-Fixes offen (nur interaktiv).

## 070626 — KB angelegt (Seed)
- KB `grobkosten` erstellt (raw/ wiki/ outputs/, CLAUDE.md).
- `wiki/kennwerte.md`: Seed-Kennwerte Wohnbau-Neubau CHF/m3 GV (BKP 1-5), Region ZH —
  Erfahrungswerte, kalibriert an Studie 2621 Giebelweg 12 (MFH gehoben 950, Band 850-1050).
  Noch NICHT mit Realabrechnungen belegt (Reife: Seed).
- Zuschlagstabelle (Hang, Baugrund, Standard, Kleinvolumen) + Umrechnung Baumasse→GV.
- Speist Skill `grobkosten-onepager` + Agent `grobkosten-rechner`.
- Naechster Schritt: erste Realwerte (Schlussabrechnung/Offerte) in raw/ → wiki nachfuehren.

## 070626 — Wüest-Benchmarks angekoppelt
- Belegte Wüest-Kostenbenchmarks Wohnbau (CHF/m² HNF/GF, BKP 1–5/2, Stand 2022/23) als Referenz in
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md` abgelegt
  (Quelle Wüest Academy P23D S. 32–34 + SIA 2020 + BfS; Visualisierung/Anhang im IMMO-Ordner).
- `wiki/kennwerte.md`: m³-Seed an die m²-Benchmarks angekoppelt (4'800 CHF/m² HNF ≈ 1'020 CHF/m³ GV
  bestaetigt Band 850–1'050). Reife: Seed → «Seed, Wüest-kalibriert».
- Skill `kostenschaetzung` SKILL.md um Wohnbau-Benchmark-Sektion erweitert.
