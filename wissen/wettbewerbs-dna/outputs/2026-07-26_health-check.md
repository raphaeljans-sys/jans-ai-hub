# Wissens-Health-Check: wettbewerbs-dna — 2026-07-26 (Nachtschicht Mac Mini)

Zweiter Health-Check dieser KB (erster: 21.07.2026). Die KB ist seither stark gewachsen
(Etappe-3-Refuter-Wellen Schulbau + Healthcare, 25.07.2026): neu 63 Wiki-Dateien (vorher 40),
85 raw-Dateien (vorher 73). Gepruefter Bestand: komplette Backlink-Graph-Analyse (alle
`[[...]]`-Links gegen Datei-/Basename-Index), RAW-Coverage aller `.txt`-Dateien gegen
Wiki-Zitate, gezielte Nachpruefung der drei 21.07.-Top-Findings, Stichprobe der neuen
Healthcare-Artikel auf Backlink-Integration. Kein Volltext-Neulesen der bereits am 21.07.
und in den CHANGELOG-Refuter-Wellen geprueften Bestandsartikel (Kostendisziplin
Nachtschicht-Budget).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 (persistierend seit 21.07., trotz 2. Meldung nicht behoben) |
| B Kaputte Backlinks/Orphans | 15 (7 kaputte Links + 3 Bare-Folder-Links + 5 Orphans — alle bereits am 21.07. gemeldet, unveraendert) |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 1 (neu, aber inhaltsleer — kein echter Verlust) |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 2 (beide seit 21.07. unveraendert) |
| G Promotion-Kandidaten | 1 (identisch mit Audit-A-Fund) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Der zentrale Befund des 21.07.-Checks ist 5 Tage und einen weiteren Health-Check
   spaeter immer noch nicht behoben — und die KB widerspricht sich jetzt sogar
   innerhalb derselben Datei.** `wiki/QUESTIONS.md` fuehrt den 2206-Schoental-GF-Wert
   an zwei Stellen gegensaetzlich: Zeile 78–84 (Abschnitt "Offen", Datierung 20.07.2026)
   nennt ihn einen ungeloesten Widerspruch (1'792 m² vs. 1'545 m², HNF/GF 0.655 vs.
   0.759) und schliesst 2206 deshalb vom Kennwert-Referenzband aus; Zeile 180
   (aelterer, bereits archivierter Eintrag vom 13.07.2026) sagt "B12-Widerspruch
   aufgelöst (massgebend Kopfblock 1'792 m2; EG-Zeile fehlt im Formular)". Das
   Teilnahme-Dossier `wiki/teilnahmen/2206-schoental.md` traegt diese Aufloesung seit
   dem 13.07. Der Muster-Artikel `wiki/muster/kennwerte-schulbauten.md` (Abschnitt 1,
   Zeile 68–79) rechnet unveraendert mit beiden Werten und fuehrt 2206 als Ausreisser
   ausserhalb des Bands. **Vorschlag unveraendert vom 21.07.:** `kennwerte-schulbauten.md`
   auf 1'792 m² als einzig gueltigen GF-Wert festlegen (HNF/GF ≈ 0.655, GV/GF
   3.84 m³/m²), den offenen QUESTIONS-Eintrag (Zeile 78–84) loeschen bzw. ins
   "Geklaert"-Kapitel zur Zeile-180-Notiz verschieben, 2206 ins Referenzband pruefen.
2. **Alle 7 kaputten Board-DNA-Backlinks aus dem 21.07.-Befund bestehen unveraendert**
   (2101, 2103 doppelt, 2207, 2408, 2501, 2507 — nur 2102/2205/2206 korrekt; siehe
   Audit B). Mechanisch trivial (Dateinamen angleichen), aber in zwei Nachtschicht-
   Zyklen seit der ersten Meldung nicht angefasst worden — vermutlich weil die
   Trainings-/Refuter-Laeufe der KB inhaltlich (Zahlen, Quellenbelege) statt strukturell
   (Wiki-Netz) priorisieren. Reine Fleissarbeit, kein Rechercheaufwand.
3. **5 Orphan-Artikel unveraendert ohne eingehenden Link**, trotz betraechtlichem
   Wachstum der KB seit 21.07.: `teilnahmen/2104-theater-luzern.md`,
   `teilnahmen/2207-schliengerweg-basel.md`, `teilnahmen/2501-steinfabrik-hafenareal.md`,
   `teilnahmen/2503-glockenacker.md`, `extern/jurybericht-tagesbetreuung-boppartshof-
   st-gallen.md`. Positiv: kein einziger NEUER Orphan unter den 19 seit 21.07.
   hinzugekommenen Wiki-Dateien (alle Healthcare-Artikel und 2501/2507 aus der
   Etappe-3-Welle sind sauber ins Netz eingehaengt) — das Muster ist Altlast, keine
   neue Regression.

## Details je Audit

### A. Widersprueche

1. **2206 Schoental GF-Wert — siehe Top-3 Punkt 1.** Zusaetzlich zum 21.07.-Befund neu
   festgestellt: der Selbst-Widerspruch liegt jetzt nicht nur zwischen zwei Artikeln,
   sondern **innerhalb von `QUESTIONS.md` selbst** (Zeile 78–84 vs. Zeile 180).
2. **`jury-argumente-schulbauten.md` behauptet weiterhin 23 ausgewertete Juryberichte**
   (Titel, Frontmatter, 4 Fliesstext-Stellen), waehrend `extern/jurybericht-
   tagesbetreuung-boppartshof-st-gallen.md` nach wie vor nicht referenziert ist.
   Unveraendert seit 21.07., keine neue Information seither.

### B. Kaputte Backlinks / Orphans

**Kaputte Links (7, alle identisch mit 21.07., 4 Tage unveraendert):**

| Datei | Kaputter Link | Sollziel |
|---|---|---|
| `board-dna/2101.md` | `[[teilnahmen/2101]]` | `teilnahmen/2101-kssg-h14` |
| `board-dna/2103.md` | `[[board-dna/uebersicht]]` | existiert nirgends |
| `board-dna/2103.md` | `[[teilnahmen/2103-luzern-steinhofschule]]` | `teilnahmen/2103-steinhofschule` |
| `board-dna/2207.md` | `[[teilnahmen/2207]]` | `teilnahmen/2207-schliengerweg-basel` |
| `board-dna/2408.md` | `[[wiki/teilnahmen/2408-grassen-biwak]]` | `teilnahmen/2408-biwak-grassen` (Praefix UND Wortstellung falsch) |
| `board-dna/2501.md` | `[[teilnahmen/2501-hafenareal-sz]]` | `teilnahmen/2501-steinfabrik-hafenareal` |
| `board-dna/2507.md` | `[[teilnahmen/2507-tkhl]]` | `teilnahmen/2507-tkhl-ps-halden` |

**Bare-Folder-Links (3 Dateien, `[[teilnahmen]]`/`[[muster]]` ohne Zielartikel,
unveraendert seit 21.07):** `extern/jurybericht-kantonsschule-wattwil.md`,
`extern/jurybericht-heilpaedagogische-schule-bern.md`,
`extern/jurybericht-schulhaus-muhen.md` (`[[teilnahmen]]` + `[[muster]]`),
`extern/jurybericht-volksschule-stoeckacker-bern.md`,
`extern/jurybericht-zelgli-schlieren.md` (`[[muster]]`).

**Orphans (5, unveraendert seit 21.07, siehe Top-3 Punkt 3).** Keine neuen Orphans
unter den 19 seit 21.07 hinzugekommenen Dateien.

**INDEX.md-Abdeckung:** vollstaendig, inkl. aller neuen Healthcare- und Etappe-3-Artikel.

### C. Unbelegte Claims

Keine Funde. Weiterhin vorbildlich belegt; die Refuter-Wellen vom 25.07. (siehe
CHANGELOG, u.a. "21 Zahlenwerte geprueft, 21 bestaetigt" fuer 2101, "71 Aussagen
geprueft" fuer die Spital/Klinik-Quellgruppe) haben die neuen Healthcare-Artikel bereits
unabhaengig gegengeprueft — staerker verifiziert als der KB-Durchschnitt.

### D. RAW-Coverage-Luecken

1. **Neu:** `raw/2206-schoental_entscheid-221109.txt` wird in keinem Wiki-Artikel
   zitiert. Inhaltlich aber kein echter Verlust: die Datei enthaelt nur den
   Quellpfad-Header, der `pdftotext`-Extrakt selbst ist leer (vermutlich Scan ohne
   Textlayer). Vorschlag: in `raw/_INGESTED.md` (sobald angelegt, siehe Audit F) als
   "leer, nicht extrahierbar" vermerken statt als Luecke zu fuehren.

Alle 84 uebrigen raw-Dateien sind mindestens einmal im Wiki zitiert.

### E. Veraltete Artikel

Keine Funde. Aeltester `last_updated`-Stand rund 14 Tage (12.07.–26.07.) — die 90-Tage-
Schwelle kann strukturell noch nicht greifen.

### F. Schreibregel-Verstoesse

1. **`raw/_INGESTED.md` fehlt weiterhin** (seit 21.07. unveraendert). Coverage ist laut
   Audit D bis auf eine leere Datei vollstaendig, bleibt also ein Schema-, kein
   Substanzproblem.
2. **Uneinheitliches Link-Format bleibt** (Freitext an Wikilinks in der Frontmatter,
   siehe 21.07.-Befund) — unveraendert, keine neuen Instanzen identifiziert.

### G. Promotion-Kandidaten

1. Identisch mit Audit A.1 / G.1 vom 21.07.: der `QUESTIONS.md`-Eintrag zum 2206-GF-
   Widerspruch sollte nach Korrektur von `kennwerte-schulbauten.md` konsolidiert und ins
   "Geklaert"-Kapitel verschoben werden (dort liegt de facto bereits die Aufloesung,
   siehe Zeile 180). Keine neuen `speculative`/`emerging`-Artikel gefunden — die
   Etappe-3-Welle hat Healthcare direkt auf `established` gehoben (analog zum
   Schulbau-Vorgehen).

## Methodik-Hinweis

Backlink- und RAW-Coverage-Pruefung ueber vollstaendige Skript-Abgleiche (alle
`[[...]]`-Links gegen Datei-/Basename-Index, alle `raw/*.txt` gegen Wiki-Volltext-
Erwaehnung), nicht per Handpruefung jeder Datei. Die drei 21.07.-Top-Findings gezielt
gegen den aktuellen Wortlaut nachgeprueft. Neu seit 21.07. hinzugekommene Artikel
(19 Dateien, v.a. Healthcare-Etappe-3) nur auf Backlink-Integration und RAW-Coverage
gestichprobt, nicht volltext-audit-C-geprueft — diese sind aus den CHANGELOG-Refuter-
Wellen vom 25.07. bereits staerker verifiziert, als es ein Health-Check leisten wuerde.
Budget-Deckel Nachtschicht-Zyklus eingehalten (kein Neulesen bereits taeglich
refuter-geprueften Bestands).
