# Wissens-Health-Check: wettbewerbs-dna — 2026-07-21

Erster Health-Check dieser KB (kein vorheriger Report vorhanden). Gepruefter Bestand:
`wiki/` komplett (INDEX.md, QUESTIONS.md, 11 Teilnahmen-Dossiers, 9 Board-DNA-Analysen,
23 externe Juryberichte, 4 Muster-Artikel, 1 Referenz-Katalog — alle vollstaendig
gelesen), `raw/` (Verzeichnislisting, 73 Textdateien, kein `_INGESTED.md` vorhanden),
`outputs/` (6 bisherige Reports, nur Titel gesichtet), `CHANGELOG.md` (Volltext seit
Anlage 12.07.2026).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 2 |
| B Kaputte Backlinks/Orphans | 18 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 2 |
| G Promotion-Kandidaten | 1 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Echter Sachwiderspruch, den die KB selbst schon geloest hatte, aber nicht genutzt
   hat:** `wiki/muster/kennwerte-schulbauten.md` (20.07.2026) und `wiki/QUESTIONS.md`
   fuehren den GF-Wert von 2206 Schoental «ARCHE» als **ungeloesten Quellen-Widerspruch**
   (1'792 m² vs. 1'545 m²) und schliessen den Fall deshalb aus dem Kennwert-Referenzband
   aus. Der Teilnahme-Dossier `wiki/teilnahmen/2206-schoental.md` hatte diesen
   vermeintlichen Widerspruch aber bereits am 13.07.2026 aufgeloest: 1'792 m² ist der
   vollstaendige, massgebende Kopfblock-Wert; 1'545 m² ist keine zweite gueltige
   Lesart, sondern eine luckenhafte Geschoss-Teilsumme (der EG-Zeile fehlt im
   Originalformular). Der spaetere Kennwerte-Lauf hat diese bereits vorhandene
   Aufloesung offenbar nicht gegen den eigenen Dossier-Bestand geprueft und rechnet
   seither mit einer falschen zweiten Kennzahl (HNF/GF 0.759 aus 1'545 m² ist nicht
   valide). **Vorschlag:** `kennwerte-schulbauten.md` Abschnitt 1 und `QUESTIONS.md`
   korrigieren (1'792 m² als einzig gueltiger Wert, HNF/GF ≈ 0.655 statt Bandbreite
   0.655–0.759), 2206 ggf. ins Referenzband aufnehmen oder begruendet ausserhalb lassen.
2. **7 von 9 Board-DNA-Artikeln verlinken auf ihr Teilnahme-Dossier mit falschem oder
   nicht existierendem Dateinamen** (z.B. `[[teilnahmen/2101]]` statt
   `teilnahmen/2101-kssg-h14`, `[[board-dna/uebersicht]]` existiert gar nicht). Nur
   2102, 2205, 2206 verlinken korrekt. Betrifft 2101, 2103 (doppelt), 2207, 2408, 2501,
   2507 — 7 kaputte Backlink-Instanzen allein in diesem einen wiederkehrenden Muster.
   Leicht mechanisch reparierbar (Dateinamen angleichen), aber bislang nicht aufgefallen,
   weil INDEX.md die Teilnahmen unabhaengig davon korrekt auflistet.
3. **5 Artikel ohne jeden gueltigen eingehenden Link (Orphans)**, obwohl sie
   inhaltlich fertig und `established` sind: `teilnahmen/2104-theater-luzern.md`,
   `teilnahmen/2207-schliengerweg-basel.md`, `teilnahmen/2501-steinfabrik-hafenareal.md`,
   `teilnahmen/2503-glockenacker.md` sowie `extern/jurybericht-tagesbetreuung-
   boppartshof-st-gallen.md` (dieser zudem im Widerspruch zur eigenen Zaehlung — dazu
   mehr unter Audit A). Nur ueber INDEX.md auffindbar, nicht ueber das Wiki-Netz selbst.

## Details je Audit

### A. Widersprueche

1. **2206 Schoental GF-Wert: geloester Widerspruch wird an anderer Stelle erneut als
   offen gefuehrt.** Siehe Top-3 Punkt 1 fuer die vollstaendige Herleitung. Betroffene
   Dateien: `wiki/muster/kennwerte-schulbauten.md` (Abschnitt 1, Zeile "Ausreisser mit
   Quellen-Widerspruch"), `wiki/QUESTIONS.md` (Eintrag "Widerspruch in der eigenen
   Flaechenberechnung 2206 Schoental «ARCHE» (Befund B6, 20.07.2026)") vs.
   `wiki/teilnahmen/2206-schoental.md` (Abschnitt 3, "Massgebender GF-Wert geklaert").
   Die beiden erstgenannten Eintraege sind zeitlich JUENGER (20.07.) als die Aufloesung
   im Dossier (13.07.) — der Ruecksprung zum vermeintlichen Widerspruch ist also eine
   Regression, kein neuer Befund. **Vorschlag:** Dossier-Text als kanonische Aufloesung
   referenzieren, Kennwerte-Artikel und QUESTIONS korrigieren.
2. **`jury-argumente-schulbauten.md` behauptet 23 ausgewertete externe Juryberichte,
   verlinkt in der Frontmatter aber nur 22.** Der fehlende `[[extern/jurybericht-
   tagesbetreuung-boppartshof-st-gallen]]` taucht auch im Fliesstext des Artikels an
   keiner Stelle auf (kein Zitat, keine Tabellenzeile, kein K.-o.-Punkt aus diesem
   Bericht). Der Bericht selbst ist ein vollwertiger, `established` destillierter
   Jurybericht mit eigenen, uebertragbaren Regeln (Kueche als Herzstueck bei Hort-/
   Tagesbetreuungsbauten) — er passt inhaltlich zur Synthese, wurde aber entweder aus
   Versehen nicht eingearbeitet oder bewusst (z.B. weil Betreuungsbau statt
   Klassenzimmer-Schule) ausgeschlossen, ohne dass das dokumentiert ist. **Vorschlag:**
   entweder die 22-Beleg-Zahl im Titel/Verifikations-Hinweis korrigieren, oder
   Boppartshof nachtraeglich einarbeiten (die Kueche-als-Herzstueck-Regel waere ein
   eigenstaendiger Ergaenzungspunkt zu Sektion 3 der Synthese).

### B. Kaputte Backlinks / Orphans

**Kaputte oder auf nicht existierende Ziele zeigende Links (13 Instanzen):**

| Datei | Kaputter Link | Sollziel |
|---|---|---|
| `board-dna/2101.md` | `[[teilnahmen/2101]]` | `teilnahmen/2101-kssg-h14` |
| `board-dna/2103.md` | `[[board-dna/uebersicht]]` | existiert nirgends im Wiki |
| `board-dna/2103.md` | `[[teilnahmen/2103-luzern-steinhofschule]]` | `teilnahmen/2103-steinhofschule` |
| `board-dna/2207.md` | `[[teilnahmen/2207]]` | `teilnahmen/2207-schliengerweg-basel` |
| `board-dna/2408.md` | `[[wiki/teilnahmen/2408-grassen-biwak]]` | `teilnahmen/2408-biwak-grassen` |
| `board-dna/2501.md` | `[[teilnahmen/2501-hafenareal-sz]]` | `teilnahmen/2501-steinfabrik-hafenareal` |
| `board-dna/2507.md` | `[[teilnahmen/2507-tkhl]]` | `teilnahmen/2507-tkhl-ps-halden` |
| `extern/jurybericht-heilpaedagogische-schule-bern.md` | `[[teilnahmen]]` | kein Zieldokument (Ordnername statt Artikel) |
| `extern/jurybericht-kantonsschule-wattwil.md` | `[[teilnahmen]]` | dito |
| `extern/jurybericht-schulhaus-muhen.md` | `[[teilnahmen]]` | dito |
| `extern/jurybericht-schulhaus-muhen.md` | `[[muster]]` | dito |
| `extern/jurybericht-volksschule-stoeckacker-bern.md` | `[[muster]]` | dito |
| `extern/jurybericht-zelgli-schlieren.md` | `[[muster]]` | dito |

Nur 3 von 9 Board-DNA-Artikeln (2102, 2205, 2206) verlinken ihr Teilnahme-Dossier
korrekt. Die `[[teilnahmen]]`/`[[muster]]`-Links in 5 externen Juryberichten zeigen
auf Ordnernamen statt auf konkrete Artikel — vermutlich als Platzhalter gedacht und nie
konkretisiert.

**Orphans (kein einziger gueltiger eingehender Link aus einem anderen Wiki-Artikel,
nur ueber INDEX.md auffindbar):**

- `wiki/teilnahmen/2104-theater-luzern.md`
- `wiki/teilnahmen/2207-schliengerweg-basel.md` (der einzige potenzielle Verweis aus
  `board-dna/2207.md` ist selbst kaputt, siehe oben)
- `wiki/teilnahmen/2501-steinfabrik-hafenareal.md` (dito, `board-dna/2501.md` kaputt)
- `wiki/teilnahmen/2503-glockenacker.md`
- `wiki/extern/jurybericht-tagesbetreuung-boppartshof-st-gallen.md` (fehlt im
  Beleg-Netz von `jury-argumente-schulbauten.md`, siehe Audit A.2)

**Fehlend im INDEX.md:** keine Funde — INDEX.md fuehrt alle 11 Teilnahmen, alle 9
Board-DNA-Artikel, alle 23 externen Juryberichte und alle 4 Muster-Artikel korrekt auf.

### C. Unbelegte Claims

Keine Funde. Die KB ist ungewoehnlich konsequent belegt: praktisch jede nicht-triviale
Aussage traegt Seitenzahl + Zitat, und die KB betreibt bereits ein eigenes,
dokumentiertes Verifikationsregime (unabhaengige Refuter-Agenten je Artikel, Verdikte
im CHANGELOG protokolliert). Verbleibende Unsicherheiten sind bereits von der KB selbst
offen ausgewiesen (z.B. `jury-argumente-schulbauten.md`: Ochsenmatt-Zitat
«LABUBU-Suedeingang» als sinngemaess statt woertlich markiert; Bruehl-Solothurn nur
teilweise gegengeprueft; Kantonsschule-Wattwil-Extrakt als KI-Transkription statt
Primaertext gekennzeichnet) — das ist vorbildliche Selbst-Flaggung, keine Luecke.

### D. RAW-Coverage-Luecken

Keine Funde. Alle Text-Extrakte in `raw/` (50 projektbezogene + 23 externe = 73
Dateien) sind 1:1 in den `sources`-Frontmatter-Feldern der jeweiligen Wiki-Artikel
zitiert; jede raw-Quelle wird von mindestens einem Artikel verwendet. Kein
`raw/_INGESTED.md`-Register vorhanden (siehe Audit F).

### E. Veraltete Artikel

Keine Funde. Die KB wurde am 12.07.2026 angelegt; der aelteste `last_updated`-Stand
liegt bei 9 Tagen — strukturell kann die 90-Tage-Schwelle noch nicht greifen. Ein
Grenzfall wurde bewusst NICHT als neuer Fund gezaehlt, weil er in `QUESTIONS.md`
bereits aktiv verfolgt wird: `teilnahmen/2507-tkhl-ps-halden.md` fuehrt das Resultat
noch als "offen", waehrend `QUESTIONS.md` (Eintrag 20.07.2026) bereits eine
Medienmitteilung vom 02.04.2026 mit Sieger «ZVIERI» referenziert und die Destillation
als "faellig" markiert. Das ist ein legitimer, bereits gemanagter Nacharbeits-Punkt,
kein neuer Health-Check-Fund.

### F. Schreibregel-Verstoesse

1. **`raw/_INGESTED.md` fehlt.** Das Meta-Schema (`wissen/WISSEN-CLAUDE.md`) sieht
   dieses Register als Standardbestandteil jeder KB vor ("was liegt in raw/ und wurde
   es eingearbeitet?"). Die KB-eigene `CLAUDE.md` begruendet zwar ein abweichendes
   Quellen-Prinzip (Originale bleiben im OneDrive-Archiv, `raw/` nur Text-Extrakte),
   erwaehnt aber keine bewusste Ausnahme von der `_INGESTED.md`-Pflicht. Da die
   Coverage laut Audit D ohnehin vollstaendig ist, ist das kein inhaltliches, aber ein
   Schema-Konformitaets-Problem.
2. **Uneinheitliches Link-Format.** Mehrere `links`-Eintraege in der Frontmatter
   haengen erklaerenden Freitext direkt an den Wikilink an (z.B.
   `"[[teilnahmen/2102-muttenz]] (Referenz-Bericht aus dem Muttenz-Ordner)"`,
   `"[[extern/jurybericht-thurgauerstrasse-zuerich]] (Vergleichsfall Primarschule, dort
   offener Wettbewerb)"`). Das ist inhaltlich hilfreich, weicht aber vom im
   Meta-Schema vorgesehenen reinen `[[artikel-name]]`-Format ab und macht maschinelles
   Link-Parsing (wie in diesem Audit) fehleranfaelliger. Keine echten Schreibfehler,
   keine Verstoesse gegen Umlaute-/Hochdeutsch-Konvention gefunden — dort ist die KB
   sauber.

### G. Promotion-Kandidaten

1. **`QUESTIONS.md`-Eintrag "Widerspruch in der eigenen Flaechenberechnung 2206
   Schoental «ARCHE»" ist laut Wiki-Inhalt bereits beantwortet** (siehe Audit A.1) —
   der Eintrag sollte nach Korrektur von `kennwerte-schulbauten.md` ins
   "Geklaert (Archiv)"-Kapitel verschoben werden, nicht als offene Frage stehen
   bleiben. Kein Artikel mit Status `speculative`/`emerging` wurde gefunden (die KB hat
   in mehreren dokumentierten Wellen bereits alles auf `established` gehoben) — insofern
   ist dies der einzige echte Promotion-/Bereinigungs-Kandidat dieses Laufs.

## Methodik-Hinweis

Vollstaendige Lektuere aller 40 Wiki-Dateien (Frontmatter + Fliesstext), INDEX.md,
QUESTIONS.md und der letzten ~15 CHANGELOG-Eintraege. `raw/` per Verzeichnislisting
gegen die `sources`-Felder abgeglichen (kein Volltext-Lesen noetig, da Coverage
lueckenlos zitiert ist). `outputs/` nur als Titel-Chronologie gesichtet.
