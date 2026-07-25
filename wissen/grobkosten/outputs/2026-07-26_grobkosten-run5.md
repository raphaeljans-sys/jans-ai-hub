# Grobkosten-Trainingslauf Run 5 (26.07.2026)

Station: Mac Mini (VOLLGAS-Endlos-Runner). Kollisionscheck via `ps` durchgeführt — einziger
gefundener Prozess war die eigene Parent-Instanz dieses Laufs, keine echte Zweitinstanz.

## Ausgangslage

Runs 1-4 hatten die beiden bekannten SharePoint-Projektquellen (`AR - 01 Projekte`,
`AR - 07 Archiv`) vollständig geprüft und vertieft: 5 Projekte in `raw/` dokumentiert, davon
1 promotionsfähig als Einzelfall n=1 (2304 Reckholdern, 1'735 CHF/m³ GV, EFH gehoben/Luxus).
Empfehlung für Run 5 (aus `wiki/QUESTIONS.md`): eine neue Quelle identifizieren statt
dieselben Projektordner erneut zu durchsuchen.

## Vorgehen

1. Top-Level-Ordner beider SharePoint-Bibliotheken gesichtet
   (`OneDrive-FreigegebeneBibliotheken–JANS` und `...–RaphaelJans-ArchitektenETH`).
2. Kandidat mit direktem thematischem Bezug identifiziert: `IMMO - 06 Kennwerte` (kuratierte
   Kennwerte-/Benchmark-Ablage, nach Thema statt Projekt gegliedert).
3. Alle Unterordner/-dokumente gesichtet und geprüft (siehe Tabelle in
   `training/quellen-inventar.md`, Run-5-Abschnitt).

## Ergebnis

**Ein verwertbarer neuer Kennwert gefunden**, aber in abweichender Bezugsgrösse:

- Quelle: `_Kennwerte Jans.docx` (Raphael Jans, Stand 25.03.2025)
- Wert: **4'485 CHF/m² GF (BKP 1-5)**, Nutzung "Wohnen Individuell" (EFH/ZFH), Medianwert-
  Herleitung 2020 (2'900 CHF/m² GF BKP2) indexiert auf 2025 (Index 116 → 3'365), BKP2-Anteil
  75 % → BKP1-5 100 %.
- Zusatz: Tiefgarage 42'000 CHF/Parkplatz (BKP1-5), aus einem im selben Dokument gerechneten
  Beispiel "Thalwil Bohlweg 1" (950 m² GF, 8 SP, Total CHF 4.6 Mio).

**Bewusst nicht in die geführte m³-GV-Tabelle konvertiert**, da die Bezugsgrösse (m² GF statt
m³ GV) eine Umrechnung erfordern würde und der GV/GF-Faktor selbst als offener
"needs-decision"-Punkt geführt wird (Wissens-Chef Run 15). Stattdessen als eigene, klar
gekennzeichnete Parallel-Sektion in `wiki/kennwerte.md` dokumentiert — Leitplanke "fehlende
Bezugsgrössen nie rechnerisch ergänzen" eingehalten.

**Neue offene Frage:** Das Rechenbeispiel "Thalwil Bohlweg 1" lässt sich weder in Hausnummer
noch Grössenordnung mit dem bereits bekannten Projekt "2414 THALWIL Bohlweg 3" (`raw/2414-
thalwil.md`, EFH-Umbau ~500'000 CHF) in Einklang bringen (Faktor ~10 Unterschied) — Projekt-
Identität ungeklärt, nicht autonom auflösbar, in `wiki/QUESTIONS.md` festgehalten.

**Nicht verwertbar (geprüft, dokumentiert):** Link-Sammlung ohne eigene Zahlen, ein
Drittsoftware-Handbuch "BBase Grobkosten" (PMS Informatik AG, 2012, generische Methodik, kein
JANS-Projekt), eine Büro-Marktmietanalyse (hbre, Marktmiete statt Erstellungskosten), zwei
leere Ordner, ein Healthcare-Unterordner (bewusst ausserhalb Scope, gehört zu
`kostenschaetzung`).

## Register-Nachführung

- Neuer Roh-Beleg: `raw/kennwerte-jans-referenzdokument.md`
- Verdichtet in: `wiki/kennwerte.md` (neue Sektion "Run 5", Frontmatter-Quellen ergänzt)
- Nachgeführt: `training/quellen-inventar.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`,
  `raw/_INGESTED.md`, `CHANGELOG.md`

## Empfehlung für Run 6

Weitere, in diesem Lauf identifizierte, aber ungeprüfte SharePoint-Bibliotheken:
`AR - 03 Studien` (frühe Machbarkeits-/Kostenschätzungen, wahrscheinlichster nächster
Kandidat), `IMMO - 01 Projekte`, `IMMO - 02 UBSFS`, `IMMO - 03 KNOW-HOW`,
`IMMO - 05 Bodenpreise`, sowie die komplett ungesichtete zweite SharePoint-Bibliothek
`OneDrive-FreigegebeneBibliotheken–RaphaelJans-ArchitektenETH`. Kein Leerlauf: diese KB wächst
weiterhin, auch wenn die zwei ursprünglich im `PROGRAMM.md` genannten Quellen (NAS-Altarchiv,
`AR - 01`/`AR - 07`) inzwischen ausgeschöpft sind.
