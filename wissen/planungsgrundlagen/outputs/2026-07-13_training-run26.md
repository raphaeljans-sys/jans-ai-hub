# Trainingslauf Planungsgrundlagen — Run 26 (2026-07-13)

Schwerpunkt-Domaenen laut Rotation nach Run 25 (Kartenportale + Energie): **Recht & Norm (PL-02)**
+ **Brandschutz (PL-03)**, Token-Vollgas 2 Domaenen. Wie in Run 25 war der Curriculum-/QUESTIONS-
Rueckstand in beiden Domaenen praktisch vollstaendig abgearbeitet (fast alle bisherigen R-/B-/C-
Punkte `[x]`) — dieser Lauf hat deshalb wieder den vollstaendigen PL-02/PL-03-Ordnerbaum auf
SharePoint nach bisher UNBEARBEITETEN Unterordnern durchsucht, statt bekannte Luecken zu
vertiefen. **Neu in diesem Lauf:** die Tiefenrecherche der beiden Domaenen lief ueber zwei
parallele Fach-Agenten (Multi-Agent-Workflow, autorisiert durch Rule `auto-verbesserungen`
260712), der Hauptlauf hat danach die gemeinsamen Register (`curriculum.md`, `QUESTIONS.md`,
`INDEX.md`, `_INGESTED.md`, `CHANGELOG.md`) zentral konsolidiert, um Schreibkonflikte auf
gemeinsamen Dateien zu vermeiden.

## Bearbeitete Fragen (11)

**Recht & Norm — 6 neue Themen aus bisher unbearbeiteten PL-02-Unterordnern:**

1. Radonschutz nach Strahlenschutzverordnung — welcher Referenzwert, welche Bauherrenpflicht?
   → Die SharePoint-PDF `Radonbelastung/Strahlenschutzverordnung/814.501.pdf` erwies sich als
   **Stammfassung von 1994**, seit der Totalrevision vom 26.04.2017 (in Kraft 01.01.2018) ersetzt.
   Ueber fedlex (ELI `cc/2017/502`) korrigiert: Radonreferenzwert **300 Bq/m³** (Art. 155),
   Arbeitsplatz-Schwelle 1000 Bq/m³ (Art. 156), Bauherrenpflicht Art. 163 (kein eigenes Formular),
   Sanierungspflicht Art. 166; BAG-Vorsorgemassnahmen (durchgehende Bodenplatte, RDS-
   Durchfuehrungen, SIA 272/180/2023) → NEU [[recht-norm-radonschutz]] (established).
2. Zivilschutz-Bautechnik — was regelt TPH-18, wie hoch ist der aktuelle Ersatzbeitrag?
   → TPH-18 (BABS 19.05.2003): gasdichte/druckfeste Durchfuehrungen durch Schutzraum-Huellen,
   Pruefpflicht ab Ø 60 mm. **Ersatzbeitrag-Revision ZSV per 01.01.2026: neu CHF 1'400/
   Schutzplatz** (vorher 800, neu auch fuer Um-/Anbauten) — kreuzverifiziert mit dem bereits in
   `wissen/auflagebereinigung` dokumentierten Fall 2619-KISPI → NEU
   [[recht-norm-zivilschutz-bautechnik]] (emerging).
3. Arbeitsplatz-Bauvorschriften ArGV 3/4 — welche konkreten Bauparameter?
   → Luftraum 12/10 m³ pro Person (Art. 12 ArGV 3), Tageslicht-Grundsatz + Kompensation
   fensterloser Raeume (Art. 15 ArGV 3), gestaffelte Mindest-Raumhoehe 2.75-4.00 m nach
   Bodenflaeche (Art. 5 ArGV 4), Verkehrswegbreite 1.20 m (Art. 6 ArGV 4) → NEU
   [[recht-norm-arbeitsplatz-bauvorschriften]] (established).
4. Trockenraeume + Bettenlift-Pflicht (MPP-Praxisnotizen) — welche Zahlen, welche Ausnahme?
   → § 297 PBG/§ 39 BBV I + Stadt-ZH-Vollzugspraxis (1 Trockenraum/10 m² je 9 Wohnungen); § 40
   BBV I Bettenlift-Pflicht ab >5 Geschossen, **eingeschraenkt durch BRKE I 0117/1999 auf
   Alters-/Krankenheime** (nicht normale Wohnnutzung) — direkte Healthcare-Relevanz →
   [[recht-norm-raumprogramm-referenzwerke]] erweitert (§4/§5).
5. Attika-Praxisfall «Zuerichseegut» — was steckt hinter dem Kuerzel ZSG im MPP-Ordner?
   → Namensverwechslung aufgeloest: ZSG = Projektabkuerzung «Zuerichseegut», nicht
   Zivilschutzgesetz. Praxis-Argumentationslinien zu Art. 292 PBG (Aesthetikermessen,
   Firstrichtungs-Vermutung, zonenfremde Nutzung) ergaenzt →
   [[recht-norm-baurechtsanalysen-benchmarks]] erweitert.
6. Mehrwertrevers/Beseitigungsrevers — eigener Artikel oder Cross-Referenz?
   → Das Material (ZBl-1993-Aufsatz, Screenshot notariate-zh.ch) bringt kaum neue Fakten
   gegenueber der bereits gruendlich dokumentierten `wissen/baurecht`-KB (Nebenbestimmungen/
   §§ 100/101 PBG) — deshalb bewusst nur als kurze Cross-Referenz mit Klarstellung Revers ≠
   Mehrwertabgabe (RPG Art. 5) → [[recht-norm-dispensrecht]] ergaenzt.

**Brandschutz — 5 neue Themen aus bisher unbearbeiteten PL-03-Unterordnern (§5b-§5f):**

7. Wie sieht ein fertiger Brandschutz-/Feuerwehrplansatz konkret aus (Symbolik, Aufbau)?
   → Realer bsvonline.ch-Musterplansatz (BSPUB-1394520214-207): Legende «BS-Plan einfach»
   (EI60-RF1 dunkelblau, EI30-RF1 hellblau, Fluchtwege gruen), Objektdatenblatt Feuerwehrplaene
   mit Pflichtangaben (Zufahrt, Schluesseldepot, Loeschwasserversorgung) → §5b (established).
8. Wie werden Feuerwehr-Bewegungs-/Stellflaechen bei Gebaeuden mittlerer Hoehe bemessen?
   → 6×11 m Bewegungsflaeche, Schlauchlaenge max. 60 m, Stuetzenlast 800 kN/m² (nicht
   unterkellert) — **⚠ Quelle nur ein Foto ohne erkennbaren Dokumenttitel**, Verifikation
   gegen die formelle VKF-Publikation offen → §5c (emerging).
9. Wie ist das Fluchtwegkonzept fuer Beherbergungsbetriebe [a] (Kinderspital/Pflegeheim) geregelt?
   → BSR 16-15 Ziff. 3.6.1: horizontale Fluchtwege muessen mit den Patientenzimmern mind. zwei
   unabhaengige Brandabschnitte bilden (horizontale Evakuierung statt Vertikalflucht) — zentraler
   Vorprojekt-Layoutparameter fuer Bettengeschosse, real am KISPI-Ordner belegt → §5d
   (established).
10. Ergaenzt das Blaue Buch (Kap. 18 Brandschutz) die VKF-Ebene?
    → Band 2 Kap. 18 ist die PBG-rechtliche Verankerung: Schutzziel Art. 8/9 BSN, eigener
    Geschossbegriff (Art. 13 Abs. 4 BSN), **§ 305 PBG geht vor wo strenger** (z.B. Haustuer-
    Lichtmass 1 m statt 0.9 m). Nur 2 von vermutlich >10 Doppelseiten gelesen → §5e (emerging).
11. Lohnt sich eine Vertiefung des VKF-Verzeichnisses 40-15 «Weitere Bestimmungen»?
    → Reine Konkordanz-Tabelle (BSR/BSE ↔ weitere Erlasse) — niedrige Prioritaet bestaetigt,
    als schlanker Nachschlage-Hinweis eingeordnet, keine BSR-fuer-BSR-Ausarbeitung → §5f
    (established, als Wegweiser-Hinweis).

**Zusaetzlich geprueft, keine Inhalte:** Ordner `PL-03/11 Projekte/` ist leer (nur `.DS_Store`);
`PL-02/01_Gesetze/01_Bund/07_Neuffert` und `04_Merkblätter` sind leer.

## Neue/erweiterte Artikel

- **NEU [[recht-norm-radonschutz]]** (established)
- **NEU [[recht-norm-zivilschutz-bautechnik]]** (emerging)
- **NEU [[recht-norm-arbeitsplatz-bauvorschriften]]** (established)
- **[[recht-norm-raumprogramm-referenzwerke]] erweitert:** neue §4 (Trockenraeume) + §5
  (Bettenlift-Pflicht)
- **[[recht-norm-baurechtsanalysen-benchmarks]] erweitert:** Attika-Fall Zuerichseegut
- **[[recht-norm-dispensrecht]] ergaenzt:** Mehrwertrevers-Cross-Referenz
- **[[brandschutz-pl03-wegweiser]] erweitert:** neue §5b-§5f (Musterplansatz, Feuerwehr-
  Bewegungsflaechen, Fluchtwegkonzept Beherbergung, Blaues Buch Kap. 18, VKF-Verzeichnis 40-15)
  + §6-Navigation ergaenzt

## Verifikations-Stufe (Modell-D-Volltextabgleich + Multi-Agent)

Alle neu ausgewerteten Quellen wurden **direkt im Original gelesen** (PDF/Foto/Screenshot) —
kein Sekundaerzitat. Der Radon-Fund ist ein Beispiel fuer die Verifikations-Pflicht in der Praxis:
die abgelegte SharePoint-PDF war eine ueberholte Fassung (1994 statt 2017), das haette ohne
fedlex-Gegenpruefung zu einem falschen Referenzwert gefuehrt. Keine Endpunkte/Kennwerte
erfunden; wo eine Quelle nur ein Foto ohne erkennbaren Dokumenttitel war (§5c Feuerwehr-
Bewegungsflaechen), ist das ehrlich als `emerging`/Verifikation offen dokumentiert statt als
`established` behauptet. Kein Verdikt "beanstandet".

## Was als naechstes

- **Naechste Domaenen laut Rotation:** Kartenportale + Energie fuer den naechsten Lauf (Methode:
  weiterhin `find`-Abgleich gegen `raw/_INGESTED.md`, da die "einfachen" Curriculum-Punkte in
  allen vier Domaenen weitgehend abgearbeitet sind).
- **Offen bleibt:** fedlex-ELI fuer SR 520.11 (ZSV) und SR 822.113/822.114 (ArGV 3/4) noch nicht
  ermittelt; `twp84d.pdf`/`TPH-19-d` nicht gelesen; Schutzplatz-Bemessungsformel (Personen/m²)
  nicht gefunden; Feuerwehr-Bewegungsflaechen-Quelle (§5c) gegen die formelle VKF-Publikation
  verifizieren, sobald das Originaldokument auffindbar ist; Blaues Buch Kap. 18 restliche Ziffern
  (18.1/18.2/18.4/18.6ff.) nachziehen; B5/C6 (BSV-2026-Totalrevision) bleibt wie vorgesehen bis
  2027 unbearbeitet.
- **Methodik-Erkenntnis:** der Multi-Agent-Ansatz (zwei parallele Fach-Agenten je Domaene, danach
  zentrale Register-Konsolidierung durch den Hauptlauf) hat sich bewaehrt — schnellere
  Tiefenrecherche pro Domaene, keine Schreibkonflikte auf `curriculum.md`/`QUESTIONS.md`/
  `INDEX.md`, da diese bewusst dem Hauptlauf vorbehalten blieben.
