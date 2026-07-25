# Training Run 63 — Kartenportale + Energie (Token-Vollgas)

Intensiv-Lauf gemäss `training/PROGRAMM.md` (Token-Vollgas bis 10.08.2026): **2 Domänen** im
Schwerpunkt — Kartenportale (PL-01) und Energie (PL-04), gemäss Domänen-Rotation (Recht/Norm +
Brandschutz hatten Run 62). Direkt in der Hauptsession durchgeführt (nicht per Fan-out an
Hintergrund-Subagenten für die eigentliche Quellenlektüre), gemäss der dokumentierten Lehre aus
Run 56 (Hintergrund-Subagenten stallen auf OneDrive-Pfaden) — ein Vordergrund-Scout-Agent wurde
für den reinen Ordner-/Register-Abgleich (Bash/Grep, keine OneDrive-Datei-Reads) eingesetzt.

## Ablauf

1. Stand gelesen: `curriculum.md` (Domäne 1 Kartenportale K1-K46 vollständig `[x]`, Domäne 2
   Energie E1-E43/D1-D24 vollständig `[x]`), `wiki/QUESTIONS.md` Sektionen A/D, letzter Output
   (Run 62).
2. **Delta-Scan** beider PL-Ordner (`find -newermt 2026-07-20`) — keine neuen Dateien seit dem
   letzten Lauf.
3. Da beide Domänen laut eigener Registerlage (K46-Nachtrag/Run 61: Kartenportale-Backlog
   „vollständig geschlossen"; Energie: nur der wartende D9-Punkt offen) ohne bekannten
   Backlog-Punkt waren, **Scout-Agent** beauftragt: vollständigen Ordnerbaum von PL-01 (979
   Dateien) und PL-04 (317 Dateien) gegen den Text von `curriculum.md`/`_INGESTED.md` abgleichen
   und tatsächlich unerschlossene Fundstellen identifizieren (nicht nur „X Screenshots
   ausgewertet"-pauschal abgehakte Ordner).
4. Scout-Ergebnis: 7 echte Fundstellen in PL-01 (alle im bisher unter-ausgewerteten
   `KtLU Luzern/`-Cluster), 1 echte Fundstelle in PL-04 (`_Heizwaermebedarf/`-Restdatei).
5. Alle 8 Fundstellen selbst gelesen (Screenshots/PDF/DOCX via Read, ein DOCX via `textutil`
   da Read binäre DOCX in diesem Fall nicht textuell extrahieren konnte) und ausgewertet.

## Funde

### Kartenportale (K47-K54) — Kt.-LU-Vertiefung

- **K47 Einzelbäume (echter Delta zu K12):** Kt. Luzern führt entgegen der bisherigen Einschätzung
  («kein Kanton hat ein standardisiertes Baumkataster-Portal») doch ein **kantonsweites, offen
  lizenziertes** Produkt (`daten.geo.lu.ch/download/einzbaum_ds_v1`, Lizenz «Open-By»,
  login-frei, WMS/WFS/ESRI-Geodatabase/GeoPackage). Die bisherige K12-Aussage wird damit
  **kantonsspezifisch präzisiert** statt widerlegt — gilt weiterhin für ZH/SZ, nicht generell.
- **K48 Historische Karten:** amtliches Kt.-LU-WebGIS (`kanton-luzern.ch`, swisstopo-Quelle) mit
  Zeitschieberegler 1845-64/1880/1930/1970/2017 + Vergleichsfunktion — amtliche Ergänzung zum
  bereits dokumentierten privaten Weg (achtgradost.ch, K14): qualitativer Kartenvergleich statt
  quantitativer Höhenlinien.
- **K49 Baugesuchsverwaltung eBAGE+ / GRAVIS:** kantonale (nicht kommunale wie eBau SZ)
  elektronische Baubewilligungsplattform + separates, kostenpflichtiges Grundbuch-
  informationssystem für Berechtigte.
- **K50 Leitungen digital:** echter **Organisationsmodell-Delta** zum bereits dokumentierten
  ZH-Werkleitungskataster (Betreiber-Einzelportale EKZ/Swisscom/UPC) — Kt. LU bündelt den
  Werkleitungsbezug über den «Verein Raumdatenpool Kanton Luzern» (Mitgliedschaft Kategorie
  A Kanton/Gemeinden/Werke, Kategorie B z. B. ARA-Verbände, plus private Büros im Auftrag eines
  Mitglieds — kein Direktzugang für JANS ohne Mandat).
- **K51 Höhenlinien-DXF:** reale Lieferdatei (`DTM18H1M_V2_LI_T1150422.dxf`, Kachel-Logik)
  bestätigt DXF-Format auch für Höhenlinien-Produkte — Ergänzung zur K8-Formattabelle.
- **K52 Nachführung amtliche Vermessung:** Emch+Berger-Medienbeitrag (08.07.2019) belegt private,
  vom Regierungsrat konzessionierte Geometer-Nachführungskreise (Kreis Mitte) — bestätigt das
  ZH-analoge Muster kantonsübergreifend.
- **K53 Baumwurzelwerk/Fundamentplanung:** reale JANS-Arbeitsnotiz aus einem Gespräch mit dem
  Baumexperten des Tiefbauamts Stadt Luzern — nur öffentliche Bäume sind kartiert, drei
  Wurzeltypen (Pfahl-/Teller-/Herzwurzel) mit unterschiedlicher Fundament-Konsequenz, Lösung
  auskragende Bodenplatte statt Wurzeldurchtrennung, Sondageschlitz zur Wurzelanlauf-Ortung vor
  Baugrubenplanung neben Altbäumen.
- **K54 Grenzen-Kategorie:** geprüft, bestätigter Nicht-Fund (33 generische administrative
  Grenzprodukte ohne Planungsbezug).

→ alle sechs inhaltlichen Funde in [[kartenportale-geoportale-uebersicht]] eingearbeitet
(§Baumkataster ergänzt + neuer Abschnitt «Kt.-LU-Vertiefung» nach dem bestehenden LU-Kurzprofil).

### Energie (E44)

- **E44 SIA-380/1-Warmwasser-PDF:** letzte unausgewertete Datei im Ordner `_Heizwaermebedarf/`
  gelesen — bestätigter Nicht-Fund, byte-identische Tab.-24/25-Doppelseite, bereits vollständig
  in [[energie-heizwaermebedarf-waermeerzeugerleistung]] erfasst. Ordner damit vollständig
  ausgewertet.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` ohne Beleg. K47 (Lizenz-/Formatangabe direkt auf der
Produktseite gelesen) und K51/K52 (reale Lieferdatei bzw. Primärquellen-Medienbeitrag) auf
`established`; K48-K50/K53 bewusst auf `emerging`/`speculative` belassen (Portal-Übersichten
bzw. unverifizierte Einzelgespräch-Notiz). Kein Adversarial-Verify-Workflow nötig (keine
strittigen Rechtsaussagen in diesem Lauf).

## Token-Vollgas-Bilanz

8 Quellen gelesen + 1 Scout-Agent-Vorlauf = 9 bearbeitete Punkte, am unteren Rand des
Zielkorridors 10-16. Grund: beide Domänen sind nach 46 (Kartenportale) bzw. 43 (Energie)
Curriculum-Lektionen über 62 Läufe hinweg extrem ausgeschöpft — der Scout fand nach
vollständigem Ordnerabgleich nur noch 8 echte unausgewertete Dateien in zwei Kantonen
(1'296 Dateien insgesamt in PL-01+PL-04). Bewusst keine künstlichen Zusatzfragen erzeugt, um
die 10-16-Zielzahl zu erreichen (Rule wissens-bibliothekar: nichts erfinden, keine Pseudo-Tiefe).

## Nächster Schritt

Kartenportale und Energie sind nun **beide ohne jeden bekannten unerschlossenen Datei-Backlog**
(Kartenportale: K1-K54 vollständig; Energie: E1-E44 vollständig, nur D9 wartet auf ein reales
MFH-/ZEV-Projekt). Der nächste Kartenportale/Energie-Turnus sollte primär auf einen erneuten
Delta-Scan (neue SharePoint-Dateien seit diesem Lauf) reduziert werden — ein erneuter
Vollabgleich wie in diesem Lauf lohnt sich erst wieder, wenn neues Material auf PL-01/PL-04
abgelegt wird oder D9 durch ein reales Projekt schliessbar wird.
