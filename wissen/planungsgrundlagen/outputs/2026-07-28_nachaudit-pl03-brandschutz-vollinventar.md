# Nachaudit `PL - 03 Brandschutz` — Vollinventar gegen Wiki (2026-07-28)

**Auftrag Raphael:** «Ordner nochmals gründlich durchkämmen — ist alles nach der Karpathy-Methode
ins Wiki aufgenommen und sind die MD-Files konsistent?»

**Methode:** kein Stichproben-Turnus, sondern **Vollinventar**: alle 153 Dateien des Ordners
(rekursiv, ohne `.DS_Store`) maschinell gegen `wiki/brandschutz-pl03-wegweiser.md`,
`wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md` **und** die KB `normen` abgeglichen
(Dateiname-Stem + markante Tokens, umlaut-/encoding-normalisiert). Jeder Nicht-Treffer wurde
danach **inhaltlich geöffnet** (PDF/DOCX/EML/JPEG), nicht bloss über den Namen beurteilt.

---

## 1 · Abdeckungsbilanz

| | Dateien | Anteil |
|---|---|---|
| Inhaltlich im Wiki verarbeitet (Fundstelle oder belegter Nicht-Fund) | **145** | 95 % |
| Attributionslücke (Inhalt vorhanden, Quelldatei nie genannt) | **4** | 3 % |
| Echte Inhaltslücke (nie gelesen, trägt eigenen Fakt) | **3** | 2 % |
| Phantom-Eintrag (gar keine Datei) | **1** | — |

**Fazit:** die Karpathy-/Spec-Linie hält — der Ordner ist substanziell erschöpfend erschlossen
(28 Runs, §1–§6 mit §5a–§5as). Die Lücken sind Rand-, keine Kernlücken. Alle unten genannten
Punkte sind mit diesem Lauf **geschlossen oder als offene Frage registriert**.

## 2 · Echte Inhaltslücken — geschlossen

**Alle drei liegen im selben Ordner** `_Projekte Themen/Tragwerk Brandschutzanforderung Thalwil
Bohlweg3/`. Bisher war dort nur das Ergebnis-Factsheet katalogisiert, nicht der Weg dorthin:

1. **`250304 Fragestellungen Brandschutz.docx`/`.pdf`** (04.03.2025) — JANS-eigener Fragenkatalog
   mit der vorstrukturierten Gegenüberstellung EFH (k. A.) / MFH geringer Höhe (R 30) / MFH
   mittlerer Höhe nach Sonderbauvorschrift Art. 20a, 4 VG / 13.5 m (R 60).
2. **`250301 Antwort Francesco.docx`** (01.03.2025) — der Bauingenieur lehnt die Beurteilung
   ausdrücklich ab («kein Zeitproblem, sondern ein Kompetenzproblem»). **Verallgemeinerbare
   Lehre:** die Tragwerks-Brandschutzeinstufung ist keine Statiker-Leistung; ohne frühe Zuweisung
   entsteht eine Leerstelle zwischen den Fachplanern.
3. **`250305 Anwendung Brandschutzanforderung Tragwerke.pdf`** — zweites Factsheet-Blatt mit
   Schnitt Bauweise 1:500 (Etappen 1928/2007/2025/20++, hybrid Massiv/Holz) neben der
   **Lignatec-Tabelle 3** (MFH 4 Geschosse: baulich R 60 / Sprinkler R 30; EFH/REFH: keine
   Tragwerksanforderung, REI 90) — die grafische Herleitung des Ergebnisses.

→ neu dokumentiert in [[brandschutz-pl03-wegweiser]] §4b («Vollständige Aktenlage Bohlweg 3»).

**Wichtigster Einzelfund — neue offene Fachfrage (QUESTIONS C40):**
> «Müssen bei einer Transformation EFH → MFH **alle** Bauteile die Brandschutzanforderungen
> erfüllen oder **nur die neuen**?»

Die Frage steht seit 04.03.2025 wörtlich im Katalog und ist **in der ganzen KB unbeantwortet**
(auch `normen` kennt keine Fundstelle). Für JANS ist sie die teuerste Einzelfrage im Bauen im
Bestand: Ertüchtigung der bestehenden Tragstruktur gegen Anforderung nur an Neubauteile.
Zu prüfende Fundstellen: Brandschutznorm 1-15 Art. 2, BSR 15-15 Ziff. 3.7, Arbeitshilfe 1001-15,
§ 357 PBG.

## 3 · Attributionslücken — geschlossen (kein neuer Fakt, ausser einer Faustregel)

| Datei | Befund |
|---|---|
| `_Projekte Themen/IMG_0547.jpeg` | JANS-«Stichwortverzeichnis Beherbergung [a]» (08.10.2024): Zimmer = Brandabschnitt EI 60, gemeinsam genutzte Vorzone, max. 20 m, SN EN 179 / 13637, 2 Pers./m², HFL 1/600 m², max. 40 m zum Löschgerät. **Deckungsgleich** mit §5d/§4f/§5q — nur nie als Quelle genannt → jetzt in §5d attribuiert. |
| `_Projekte Themen/KISPI/IMG_3799.jpeg` | Erläuterungsseite BSR 14-15 Ziff. 4.2/5.2.1. **Ein neuer Kennwert:** 200 MJ/Laufmeter ≈ **60–70 Elektrokabel** (4 × 1.5 mm²), Behörde kann Berechnungsnachweis verlangen → ergänzt §5ad. Praxisrelevant: dicht belegte Elektrotrassen über Spital-/Heimkorridoren erreichen die Schwelle schnell. |
| `_Projekte Themen/Treppen innerhalb Nutzungseinheit/IMG_1515.jpeg` | **ChatGPT-Screenshot** mit derselben Frage; Antwort nennt BSR 16-15 Ziff. 3.2.2 Abs. 3 + 1001-15 Ziff. 7.4.2 Abs. 6. Gegen die Original-PDF geprüft: **stimmt** — bleibt aber ausdrücklich kein Beleg, Fundstelle ist das PDF (Provenienz jetzt in §4b vermerkt). |
| `Gaststaetenbetriebe Alpin GrassenBiwak/Re- Biwak.eml` | Mail Yves Schmitter 18.01.2025 — reine Terminabsprache. Fachinhalt liegt im Anhang `2 A3_komm_Yves.pdf`, der längst in §4f ausgewertet ist. **Bestätigter Nicht-Fund.** |

Ebenfalls geprüft und als korrekt bestätigt: die 5 Feuerwehrplan-Einzeldateien (`FW-Anfahrtsplan`,
`FW-Situationsplan`, `FW-Detailplan EG/UG`, `FW-Oekologieplan`) sind in §5b als **Plansatz**
beschrieben — Einzelnennung nicht nötig. Ebenso die Screenshot-Serien Regensdorf / Blaues Buch /
Lignum / brandschutznachweis.ch (Inhalt jeweils über die zugehörigen PDF/Abschnitte erfasst).

## 4 · Phantom-Datei — QUESTIONS C39 geschlossen

Die in Run 92 als «neue, unlesbare 201-Byte-Datei» geführte Datei im Lignum-4.1-Ordner ist
**kein Dokument, sondern ein defekter Symlink** (203 Byte, 27.07.2026 18:23). Er zeigt auf
`06 Lignum Brandschutz/Lignum 4.1 … mit Feuerwiderstand` — also auf den Ordnernamen **ohne** den
Tippfehler `Feuerwiederstand`, den der reale Ordner trägt. Ziel existiert nicht (`test -e` = false);
die `EDEADLK`-Meldung war ein Folgefehler des OneDrive-Providers, kein Sync-Timing. Kein
Wissensverlust — der Ordner enthält unverändert nur die drei bereits volltext gelesenen PDF.

**Aufräum-Hinweis an Raphael:** Symlink löschen, sonst erscheint er in jedem Inventarlauf erneut als
Phantom-Datei und blockiert den Loop mit einer Scheinaufgabe.

## 5 · MD-Konsistenz der KB

**Behoben in diesem Lauf:**
- **6 zerrissene Backlinks** — `[[recht-norm-\n submissionsverordnung-zh]]` u. a.: durch den
  Zeilenumbruch mitten im Wikilink löste keiner davon auf (QUESTIONS ×2,
  energie-energienachweis-zh-formulare, energie-uebersicht, recht-norm-ahb-stadt-zuerich-projektstandards).
- **2 Artikel fehlten im INDEX** — `recht-norm-rechtsprechung-vg-zh` (seit Run 41) und
  `recht-norm-sanitaerraeume-planungsgrundlagen` (seit Run 52). Beide `established`, beide über
  Monate nur über die Volltextsuche auffindbar. Jetzt registriert.
- **Falsche Ordnerangabe** in §1 des Wegweisers: `11 Projekte/` existiert nicht mehr (war früher
  als «geprüft: leer» vermerkt) → ersetzt durch das verifizierte Vollinventar (153 Dateien,
  12 Ordner + `_LINK.docx`).

**Offen gelassen (Entscheid nötig, siehe QUESTIONS F-KONSISTENZ):** sechs **Phantom-Backlinks** auf
nie geschriebene Artikel — `[[u-werte-grenzwerte-ch]]` (5×), `[[graue-energie]]` (4×),
`[[minergie-standards]]` (2×), `[[abstaende-und-hoehen]]` (2×),
`[[muken-2025-anhang-4-5-daemmstaerken-leitungen]]`, `[[oelheizung-gasheizung-ersatzpflicht-zh-sz]]`,
`[[regenwasserbewirtschaftung-versickerung-zh]]` — plus zwei Pfad-statt-Artikel-Links. Alle im
Bereich Energie/Kartenportale, keiner in PL-03. Entweder Artikel schreiben oder Links umbiegen —
das ist eine inhaltliche Entscheidung, keine Reparatur.

**Frontmatter/Schreibregeln:** alle 49 Artikel haben vollständiges Frontmatter
(`title`/`status`/`last_updated`/`sources`); kein «ß» im Fliesstext (der einzige Treffer ist ein
wörtlich zitierter Quellentitel in einer `sources:`-Zeile).

## 6 · Methodenkritik für den Loop

Der Brandschutz-Turnus prüft seit Run 67 mit `find -newer` auf **neue/geänderte** Dateien und
meldet seither 27× «Delta Null». Das ist logisch korrekt und trotzdem blind: `find -newer` findet
nie eine Datei, die **von Anfang an nie gelesen wurde**. Genau dort lagen die drei Bohlweg-Dokumente
(alle vom März 2025, also älter als jeder Vergleichszeitpunkt). **Empfehlung:** den Frischecheck um
einen periodischen **Vollinventar-Abgleich** ergänzen (Dateiliste gegen Wiki-Erwähnung, wie hier) —
einmal je Quartal genügt, kostet wenige Sekunden und deckt genau die Klasse Fehler auf, die der
Delta-Check strukturell nicht sehen kann.

---

**Geänderte Dateien:** `wiki/brandschutz-pl03-wegweiser.md` (Frontmatter, §1, §4b ×2, §5d, §5ad),
`wiki/QUESTIONS.md` (C39 geschlossen, C40 neu, F-KONSISTENZ neu, 3 Backlinks repariert),
`wiki/INDEX.md` (2 Artikel nachgetragen), `wiki/energie-uebersicht.md`,
`wiki/energie-energienachweis-zh-formulare.md`,
`wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` (je 1 Backlink repariert).
