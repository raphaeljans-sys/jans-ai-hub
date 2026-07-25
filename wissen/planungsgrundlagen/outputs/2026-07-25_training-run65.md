# Training Run 65 — Kartenportale + Energie (Token-Vollgas)

Intensiv-Lauf gemäss `training/PROGRAMM.md` (Token-Vollgas bis 10.08.2026): **2 Domänen** im
Schwerpunkt — Kartenportale (PL-01) und Energie (PL-04), gemäss Domänen-Rotation (Recht/Norm +
Brandschutz hatten Run 64). Direkt in der Hauptsession durchgeführt (Hintergrund-Subagenten
stallen auf OneDrive-Pfaden, vgl. Memory `feedback_background_agent_onedrive_stall`).

## Ablauf

1. Stand gelesen: `curriculum.md` (Domäne 1 Kartenportale K1-K54 vollständig `[x]`, Domäne 2
   Energie E1-E44 vollständig `[x]`), `wiki/QUESTIONS.md` Sektionen A/D, letzter Report (Run 64 —
   Recht/Norm+Brandschutz, dort die Empfehlung: den in Run 63/64 entdeckten
   **Cloud-Only-Check** (`mdls -name kMDItemNumberOfPages` → `(null)` als Marker) auch auf
   PL-01/PL-04 anwenden).
2. **Scout-Abgleich** beider PL-Ordner (`find -maxdepth 3 -type d` gegen den Volltext von
   curriculum.md/_INGESTED.md/QUESTIONS.md gegrept) — die meisten unerwähnten Ordner erwiesen
   sich als bereits über andere Namen dokumentierte reale Projektordner (Maur, Thalwil,
   Regensdorf, Niederhasli u.a.). Fünf echte, bisher nie ausgewertete Fundstellen identifiziert,
   alle im Ordner `KtLU Luzern/`.

## Funde (Kartenportale, K55-K58)

- **K55 — Denkmalverzeichnis/Bauinventar Kt. LU:** zweistufiges System — **BILU** (Bauinventar,
  Portal-Hinweis wörtlich «keine Rechtswirksamkeit») als vorgelagerte, nicht rechtsverbindliche
  Stufe, **KDV** (Kantonales Denkmalverzeichnis) als rechtsverbindliche Stufe darüber, plus
  Archäologische Fundstellen und ISOS in **einem** Portal (`map.geo.lu.ch/kulturgueter/denkmaeler`).
  Realer Beleg: **Haus Jans, Steinhofstrasse 25, Luzern** (Otto Dreyer, 1931, «dem Bauhaus
  entlehnte Elemente», BILU-Status «schützenswert», noch kein KDV-Eintrag). Genuiner struktureller
  Delta zum bisher dokumentierten ZH-System: der amtliche ÖREB-Auszug Kt. LU führt
  **«Kulturdenkmäler» als eigenes, rechtskräftiges ÖREB-Thema** (Rechtsgrundlage Verordnung SRL
  310, 66 m²/13 % «schützenswert» direkt auf der Parzelle) — Kt. LU bindet den Denkmalschutz damit
  in den ÖREB-Kataster selbst ein, während Kt. ZH ihn als separates GIS-Druckprodukt außerhalb des
  ÖREB führt. → NEU §3 [[kartenportale-denkmalschutz-isos]], established (schließt die seit
  Artikel-Anlage offene Frage «Kt. SZ/andere Kantone: äquivalenter Layer noch nicht kartiert» für
  Kt. LU).
- **K56 — Grundbuchplan als login-freier Web-Ausdruck:** `geoportal.lu.ch` liefert einen direkten
  PDF-Sofort-Ausdruck «Grundbuchplan (amtliche Vermessung)» 1:1'000 ohne Bestellprozess — Delta zum
  bereits dokumentierten, bezahlten Geodatenshop-DXF-Bezug (K4).
- **K57 — Gebäudeenergie/Solarpotential-Layer:** kantonales Kartenprodukt-Pendant zu
  `sonnendach.ch`/`uvek-gis.admin.ch`; liefert nur die Kartendarstellung, keine eigene
  Eignungsmethodik.
- **K58 — Stadt Luzern GIS-Kundendienst:** dritte Portalebene (Gemeinde) neben Kanton/Bund, realer
  Kontakt (Industriestrasse 6, `gis@stadtluzern.ch`, 041 208 74 00) + reale FAQ («amtliche
  Vermesserdaten mit Baulinie» werden dort angefragt, nicht beim Kanton) + CityMap-
  (`map.stadtluzern.ch/citymap`) und Landschaftsmodell-Produkt-URL (`geo.lu.ch/landschaftsmodell`).
- **Bestätigte Doppelfunde:** `Tiefbauamt.docx` (JANS-Arbeitsnotiz Baumwurzelwerk) und
  `_Stadt Luzern Stadt Modell.docx` sind identisch mit den bereits dokumentierten K53/K43 — keine
  neue Bearbeitung, reine Registerbestätigung.
- **Praezisierung:** `geoportal.ch/Oberägeri` läuft konkret über `geoportal.ch/ktzg/` — bestätigt,
  dass das Portal **kantonal für Kt. Zug** organisiert ist, mit demselben Login-Gate-Muster wie
  `geoportal.ch/Einsiedeln`.
- **Bestätigter Nicht-Fund:** `bfs.admin.ch`-Ordnercluster (5 Unterordner) enthält keine
  materialisierten Dateien.

## Funde (Energie, E45)

- **E45 — Korrektur zu E44 (Run 63):** die Datei `_Literatur/
  Final_Dossier_Solararchitekur_tiefaufgeloest.pdf` trägt einen Tippfehler im Dateinamen
  («Architekur» ohne «t») und wurde deshalb vom Run-63-Scout-Grep (der gegen den korrekt
  geschriebenen Begriff prüfte) nicht erfasst — obwohl die Datei lokal längst materialisiert war,
  nicht cloud-only. Vollständige Lektüre (25 S.) ergab: es ist **dasselbe** TEC21-Dossier
  «Solares Bauen», das in [[energie-pv-eignung-typenwahl]] §5 bereits mit 2 von 10 Bauten
  ausgewertet war (Höngg-Plusenergiehaus, Umwelt Arena Spreitenbach — dort über anderslautende
  Quellenverweise gefunden). Acht weitere, bisher fehlende Referenzbauten mit vollständigen
  Energiekennwerten eingearbeitet: Swiss Tech Convention Center EPFL Ecublens (**Graetzel-Zellen**
  — transluzente, farbige Farbstoffsolarzellen, neue vierte PV-Kategorie), Palazzo deltaZero
  Lugano (unsichtbare Solarintegration als Gegenbeispiel zur Umwelt Arena), Sihlweid Zürich
  Leimbach (PV-Fassade an allen vier Himmelsrichtungen, bewohnte Sanierung), Romanshorn TG (erster
  MFH-Umbau zum Plusenergiehaus CH), CeRN Bursins (unverglaste Solarthermie-Fassade + Recycling-
  Baustoffe), Kunstdepot Freiburg, 3M Pioltello, Flims GR → NEU §5b [[energie-pv-eignung-typenwahl]].

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` ohne direkte Primärquellen-Lektüre. K55/K56/K57 auf
`established` gesetzt — Grundlage sind amtliche Kt.-LU-Portalexporte bzw. der amtliche ÖREB-Auszug
selbst, wörtlich zitiert. E45 auf `established` (Fachzeitschriften-Primärdaten je Projekt,
Datenstand 2012 klar als historisches Beispiel geflaggt, analog zum bestehenden §5-Vermerk). Kein
Adversarial-Verify-Workflow nötig (reine Fakten-/Kennzahlen-Extraktion aus Primärquellen, keine
strittigen Rechtsaussagen).

## Methodische Lehre

1. Der Cloud-Only-Check (`mdls -name kMDItemNumberOfPages` → `(null)`) aus Run 64 funktioniert
   auch auf PL-01 — alle fünf LU-PDF-Fundstellen mussten per `cp` nach `/tmp` materialisiert
   werden, bevor sie lesbar waren.
2. **Neue Lehre (E45):** ein reiner Text-Grep gegen den *erwarteten* Suchbegriff ist
   tippfehleranfällig — die Solararchitektur-Dossier-Datei trug seit Jahren einen Tippfehler im
   Dateinamen und blieb dadurch trotz vollständiger lokaler Materialisierung unentdeckt. Empfehlung
   für künftige Scout-Läufe: Dateinamen zusätzlich gegen Seitenzahl/Dateigröße als Fundstellen-
   Kandidat prüfen, nicht nur gegen die erwarteten Suchbegriffe.
3. Die reale Verknüpfung mit dem eigenen Familienhaus (Haus Jans, Steinhofstrasse 25 Luzern) im
   BILU-Bauinventar zeigt exemplarisch, wie der Denkmalschutz-Status bei einem 1931er-Einfamilienhaus
   (Architekt Otto Dreyer) über zwei separate, unterschiedlich bindende Stufen geführt wird — ein
   direkt nachvollziehbarer Benchmark für künftige JANS-Bauinventar-Abklärungen.

## Token-Vollgas-Bilanz

Sechs bearbeitete Punkte (K55-K58 als vier separate inhaltliche Funde plus zwei Registerbestätigungen,
E45 als ein grosser Fund mit acht Referenzbauten) — unter dem Zielkorridor 10-16, aber mit
überdurchschnittlicher Tiefe je Fund (vollständige PDF-Lektüren inkl. 20 Seiten TEC21-Dossier,
7-seitiger ÖREB-Auszug, 4 Denkmalschutz-PDF). Analog zur Begründung in Run 63/64: nach 54
Kartenportale- bzw. 44 Energie-Curriculum-Lektionen ist die Domäne stark ausgeschöpft; der
Scout-Ansatz fand nach vollständigem Ordner-/Dateinamens-Abgleich nur noch diese sechs echten
Fundstellen. Bewusst keine künstlichen Zusatzfragen erzeugt (Rule wissens-bibliothekar: nichts
erfinden, keine Pseudo-Tiefe).

## Nächster Schritt

Kartenportale und Energie sind nach diesem Lauf erneut ohne bekannten Backlog-Punkt (bis auf den
seit Run 36 offenen D9-Punkt, der auf ein reales Projekt wartet). Für den nächsten
Recht/Norm+Brandschutz-Turnus (Run 66 laut Rotation): SWKI VA103-01 Kap. 3-9 (Rest-Backlog aus Run
64) bleibt als konkreter Vertiefungspunkt vorgemerkt. Für einen künftigen Kartenportale/Energie-
Turnus: die Tippfehler-Lehre (Punkt 2 oben) auf PL-02/PL-03 rückübertragen — ein
dateinamensbasierter statt begriffsbasierter Scout könnte auch dort noch unentdeckte Dateien
finden.
