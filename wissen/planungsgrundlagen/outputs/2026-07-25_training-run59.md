# Training Run 59 — Kartenportale + Energie (Token-Vollgas, OneDrive-Blocker-Lauf)

Intensiv-Lauf gemäss `training/PROGRAMM.md` (Verifikations-Stufe/Intensivphase/Token-Vollgas bis
10.08.2026): **2 Domänen** im Schwerpunkt — Kartenportale (PL-01) und Energie (PL-04), gemäss
Domänen-Rotation und der Balance-Empfehlung aus Run 58 ("nächster Schwerpunkt turnusgemäss
wieder Kartenportale/Energie"; beide Domänen hatten zuletzt substanziell Run 55/56, 21.–22.07.
gearbeitet). Direkt in der Hauptsession durchgeführt (nicht per Fan-out an
`geodaten-beschaffer`/`energie-berater`), gemäss der dokumentierten Lehre aus Run 56
(Hintergrund-Subagenten stallen auf OneDrive-Pfaden).

## Ablauf

1. Stand gelesen: `curriculum.md` (beide Domänen — alle `[ ]`-Lektionen bereits abgeschlossen,
   nur E5/E9 als `[~]`-Refresh-Punkte offen), `wiki/QUESTIONS.md`, letzter Report (Run 58).
2. **Systematischer Delta-Scan** beider PL-Ordner (`find` über PL-01/PL-04, alle PDF/DOCX,
   Verzeichnisstruktur bis Ebene 3) gegen das Curriculum K1–K45/E1–E40 abgeglichen, um
   unkatalogisierte Dateien/Ordner zu finden.
3. Kandidaten identifiziert und geprüft: PL-01 `CH Schweiz/bfs.admin.ch` (leer, bestätigter
   Nicht-Fund), `cadastre.ch`, `geoportal.ch` (inkl. Einsiedeln/Oberaegeri/Wald),
   `map.geo.admin.ch/_Importversuche`+`test.map.geo.admin.ch` (leer), `geodienste.ch/
   Luzern+Maur+Muenchwiler+Thalwil`, `KtLU Luzern/Geodatenshop Kanton Luzern` (reicher,
   nie ausgewerteter Produktkatalog); PL-04 `Solaranlage/_Literatur`, `energieheld.ch`,
   `solarapp.ch/Basel+Willerzell`, `sonnenverlauf.de`, `pv sol premium`,
   `energieschweiz.ch/Diemtigen`, `D Fassaden PV Anlage`.
4. **Genuiner Fund (K46):** `geoportal.ch/_Adresse_Betreiber.docx` enthält einen Kommentar von
   Brigitte Friemel, "Service Desk **GEOINFO Applications AG**" (Kasernenstrasse 69, 9100
   Herisau) — Betreiber-Identifikation für ein bisher nur als "div. Gemeinden, tlw. Login"
   geführtes Portal. Damit vierter identifizierter White-Label-GIS-Anbieter (neben
   achtgradost.ch/geoglatt.ch/Stadt Luzern). Nebeneffekt: der Kommentar bestätigt den bereits
   dokumentierten Werkleitungs-Verweis auf EW Lachen AG für Einsiedeln.
5. **Delta-Check statt Neufund (E41):** `pv sol premium`, `solarapp.ch` (Basel/Willerzell),
   `energieschweiz.ch/Diemtigen` wurden vollständig gelesen — alle drei waren jedoch bereits in
   Run 40/42 (E34/E37/E38) vollständig als Benchmark-Zeilen dokumentiert. Vor dem Schreiben
   eines vermeintlich neuen Wiki-Abschnitts per Grep gegen `curriculum.md` gegengeprüft und die
   Dopplung vermieden — echter Zusatzfund blieb die bisher nicht extrahierte
   Richtpreis-Stückliste (Basel) mit Markenpositionen.
6. **Refresh E5/E9:** MuKEn-2025-ZH-Überführung per WebSearch erneut geprüft (turnusgemäß, siehe
   Run 20/34/38/46/47) — unverändert bestätigt, keine neue ZH-Vernehmlassung/kein Termin.
7. **Systemischer OneDrive-Blocker:** ein `EDEADLK`/"Resource deadlock avoided"-Fehler
   (identisches Muster zu Run 53, 2026-07-19) sperrte einen erheblichen Teil der heute
   geprüften PL-01-Dateien — auch nach mehrfachem Retry sowie Alternativversuchen (`pdftotext`,
   `textutil`, sogar ein reiner `cp`-Test) nicht lesbar. Betroffen: `cadastre.ch/
   Cadastralinfo…pdf`, `geoportal.ch/Einsiedeln/*.pdf` (inkl. ÖREB-Auszug-Kandidat),
   `geodienste.ch/Maur+Thalwil/*.eml`, sowie **der gesamte** `KtLU Luzern/Geodatenshop Kanton
   Luzern/`-Ordner (Registrierungs-/Bestellungs-E-Mails zu Bestellung R694081564 und ein
   reichhaltiger, bisher nur als "Kurzprofil/niedrige Priorität" geführter Produktkatalog:
   DTM, Höhenlinien, Grenzen, Gebäudeenergie/Solarpotential, ÖREB, Historische Karten,
   Denkmalverzeichnis/Bauinventar, Nachführung AV, Ortsplan, 3D-Gebäudemodelle,
   Landschaftsmodell, Orthophoto, Nutzungsplanung, Grundbuchplan, Baulinien, Einzelbäume).
   PL-04 (Energie) war im gleichen Zeitraum vollständig lesbar — der Blocker betraf gezielt
   diese PL-01-Unterordner, nicht den gesamten Mount.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Der einzige neue Fakt (K46, Betreiber-Identifikation) stammt direkt aus einem im Ordner
liegenden E-Mail-Kommentar der genannten Firma — keine Status-Hebung auf `established`
erforderlich (als `emerging` eingetragen, da Einzelbeleg ohne Zweitquelle). Kein Adversarial-
Verify-Workflow nötig, da keine widersprüchliche/unsichere Behauptung entstanden ist. Der
Basel-BOM-Zusatzfund (E41) ist eine reine Extraktion aus einem bereits als Quelle geführten
PDF (established). Der MuKEn-Refresh bestätigt lediglich den bestehenden Stand.

## Token-Vollgas-Bilanz

Deutlich unter dem Zielkorridor 10–16 Fragen — ehrlich begründet: (1) beide Domänen sind laut
Curriculum bereits vollständig ohne offene `[ ]`-Lektionen erschlossen, der Lauf musste aus
Delta-Scans neuer Dateien schöpfen; (2) ein systemischer, mehrfach bestätigter OneDrive-Blocker
verhinderte den Zugriff auf die ergiebigsten neuen Kandidaten (v. a. den reichen KtLU-
Geodatenshop-Produktkatalog); (3) zwei der drei geprüften Energie-Kandidaten erwiesen sich beim
Gegencheck als bereits dokumentiert — bewusst als Delta-Check statt als künstlich aufgeblasener
Neufund verbucht (Leitplanke "kein Doppel", PROGRAMM.md). Ergebnis: 1 echter Kartenportale-
Neufund (K46) + 1 Energie-Delta-Fund mit Zusatzwert (E41) + 1 Datenstand-Refresh (E5/E9) + 1
dokumentierter Blocker.

## Register nachgeführt

- `wiki/kartenportale-geoportale-uebersicht.md`: neuer Abschnitt "Vierter White-Label-GIS-
  Betreiber" + Tabellenzeile `geoportal.ch`, Frontmatter (sources/last_updated) aktualisiert.
- `wiki/energie-pv-eignung-typenwahl.md`: Ergänzung nach der Benchmark-Tabelle (Basel-BOM),
  Frontmatter last_updated aktualisiert.
- `training/curriculum.md`: K46 neu (Domäne 1), E5-Refresh-Eintrag ergänzt, E41 neu (Domäne 2).
- `wiki/QUESTIONS.md`: neuer A-Eintrag K46 (inkl. Blocker-Vermerk), neuer D-Eintrag E41.
- `raw/_INGESTED.md`: 2 neue Zeilen.
- `wiki/INDEX.md`: beide Artikel-Einträge ergänzt.

## Nächster Schritt

Blocker-Nachtrag im nächsten Kartenportale-Turnus: `cadastre.ch`, `geoportal.ch/Einsiedeln`,
`geodienste.ch/Maur+Thalwil`, vor allem aber den vollständigen `KtLU Luzern/Geodatenshop Kanton
Luzern/`-Ordner auswerten (Produktkatalog + realer Bestellablauf R694081564) — sollte der
OneDrive-Zugriff dann wieder funktionieren, ist dort der ergiebigste bekannte offene Kandidat.
