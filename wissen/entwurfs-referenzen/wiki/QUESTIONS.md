# Offene Fragen — Entwurfs-Referenzen

## Koordination mit Nachbar-KBs — ERLEDIGT (geschlossen 21.07.2026)
- [x] **Namens-Abstimmung Schulhaus-Set:** `schule-volksschule-ch.json` ist aus
  wettbewerbs-dna B5/B6 (`kennwerte-schulbauten`, established) + B4
  (`jury-argumente-schulbauten`) eingetroffen, gegen `parameter-schema/entwurfs-parameter.schema.json`
  validiert (validate.py: OK) und durch einen unabhaengigen Refuter-Agenten bestanden
  (CHANGELOG 21.07.2026). Haupt-INDEX (`wiki/INDEX.md`) war noch auf «angekündigt» stehen
  geblieben — am 21.07.2026 (Nachtschicht-Zyklus Mac Mini) nachgezogen.

## Seed-Import — ÜBERHOLT (geklärt 20.07.2026, Erst-Audit)
Die drei ursprünglichen Seed-Fragen sind durch die KB `architekten-synobsis` beantwortet:
Katalog 853/853 Architekten (Stufe 1), semantischer Vektorindex (Stufe 2), kuratiertes
Themenregister THEMEN.md + 849 Kurzdossiers (Stufe 3). **Neuer Weg statt Roh-Import:**
Artikel dieser KB werden bei Bedarf aus synobsis-Abfragen destilliert
(`tools/synobsis_query.py`, Stichwort + `--semantic`); `raw/` bleibt für KB-eigene
Quellen (Kennwert-Extrakte, Buch-Destillate) reserviert.
- **Nachgezogen 23.07.2026 (Nachtschicht Mac Mini):** Die vier Domänen-Sub-Indizes
  (`wiki/typologien|entwurfsprinzipien|architekten|materialien/INDEX.md`) sowie das
  Haupt-`wiki/INDEX.md` behaupteten bis dahin noch wörtlich einen ausstehenden
  Roh-Seed-Import — Widerspruch zu diesem Beschluss. Alle fünf Dateien auf den
  Abfrage-Workflow-Wortlaut umgestellt.
- **Nachgezogen 25.07.2026 (Nachtschicht Mac Mini, Health-Check):** `raw/_INGESTED.md`
  war die letzte verbliebene Datei mit der veralteten Formulierung (von den Checks am
  20./23./24.07. übersehen) — jetzt ebenfalls auf den Abfrage-Workflow-Wortlaut umgestellt.
  Damit sollte kein widersprechendes Vorkommen mehr in der KB stehen.

## Promotion-Kandidat — ERLEDIGT (kompiliert 24.07.2026, Nachtschicht Mac Mini)
- [x] **typologien/bildung.md**: aus dem refuter-verifizierten
  `parameter-sets/schule-volksschule-ch.json` + dem established wettbewerbs-dna-Benchmark
  `kennwerte-schulbauten.md` kompiliert — erster echter Wiki-Artikel dieser bisher reinen
  JSON-Parameter-Set-KB. Reine Kompilation bereits belegter Quellen, keine neue Recherche.
  INDEX.md (Haupt + `typologien/`) nachgezogen.

## Parameter-Sets — BEANTWORTET (23.08.2026, gegen den tatsächlichen Code/Bestand geprüft)
- [x] **Rendering-Vorgaben (Kamerawinkel, Lichtstimmung) im Parameter-Set?** Nein. Befund aus
  `skills/volumenstudie/tools/c4d_szene.py`: Kamera (`kamera(doc, f"Kamera_{aname}", pos, mitte)`)
  und die beiden Lichter («Sonne», «Fuelllicht») werden pro Volumen-Variante aus der Geometrie
  berechnet bzw. fest im Code gesetzt, nicht aus einem JSON gelesen. `axo_render.py` exponiert
  Kamera-/Lichtwinkel bereits als eigene, situative CLI-Flags (`--azimut` default 315°,
  `--elevation` default 30°) — pro Lauf/Standort gesetzt, nicht typologiegebunden: ein Pflegeheim
  braucht keinen anderen Sonnenstand als ein Schulhaus. Kamerawinkel/Lichtstimmung gehören damit
  zur Darstellung eines konkreten Projekts an einem konkreten Ort, nicht zur Bauaufgabe. Das
  bestehende optionale `rendering`-Feld (`farbpalette`, `stil`) bleibt unveraendert richtig, weil
  Materialcharakter/Ausdruck tatsaechlich typologisch ist. Kein Schema-Zusatz.
- [x] **Granularität Fassaden-Parameter (nur Material oder auch Detaillierung)?** Bereits gelebte
  Praxis, am Bestand geprüft: `parameter-sets/healthcare-neubau-zh.json`, Feld
  `materialien.fassade`, führt Material UND belegte Detaillierungsregeln gemischt (Fensteranteil
  35-60 %, Warnschwelle ab 60 %, feuerpolizeiliche Materialklasse Demenz-Sondertyp), je mit
  Fundstelle. `wohnen-mfh-urban.json` führt dagegen GAR KEIN `fassade`-Feld, weil die Quelle B4
  dort keinen belegten Kennwert liefert (nur im `tragwerk`-Feld: Mischbauweise verbreitet, aber
  kein Sieg-Kriterium). Das Schema selbst schränkt `fassade` nicht auf reine Materialnamen ein
  (`"items":{"type":"string"}`, keine Enum). Die Granularität wird also bereits korrekt durch die
  Belegpflicht selbst geregelt (CLAUDE.md «Schreibregeln»: keine erfundenen Kennwerte, lieber
  Lücke) — freie, quellenbelegte Sätze inkl. Detaillierungsschwellen sind zulässig und richtig,
  ein leeres Feld bei fehlendem Beleg ebenso. Kein Schema-Zusatz.
- [x] **Parameter-Sets für Sanierung/Umbau?** Kein Sofortbedarf, aus zwei belegten Gründen:
  (1) Die einzige bisherige Quelle für diese Parameter-Sets, `wissen/wettbewerbs-dna` (48
  Roh-Dateien, 11+ Teilnahmen/externe Juryberichte, `training/PROGRAMM.md`), enthält
  ausschliesslich Neubau-Wettbewerbe — 0 Treffer für „sanierung"/„umbau" im gesamten KB-Bestand.
  Es gibt aktuell keine belegte Quelle für ein Sanierungs-Set nach demselben Ableitungsmuster.
  (2) Sanierung/Umbau wird bereits an anderer, passenderer Stelle geführt: Skill
  `kostenschaetzung` (Reduktionsfaktoren Umbau/Sanierung in % der Neubaukosten + eigenes
  JANS-Umbau-Kostenband nach Stationstyp, `SKILL.md` Abschnitt „Reduktionsfaktoren
  Umbau/Sanierung") und Skill `ankaufspruefung` (CapEx/Zustand Bestand). Beide brauchen kein
  geometrisches Parzelle→Volumen-Set wie `volumen_generator.py` — Umbau geht vom bestehenden
  Gebäude aus, nicht von einer Baufeld-Herleitung. `umbau-sanierung-wohnen.json` bleibt darum zu
  Recht als «geplant» in `parameter-sets/INDEX.md` vermerkt (Marker für eine künftige belegte
  Quelle), wird aber nicht mit geratenen Werten vorgezogen.

## Integration — BEANTWORTET (23.08.2026, gegen den tatsächlichen Code/Bestand geprüft)
- [x] **`--parameter-set`-Flag für `volumen_generator.py`?** Nein, nicht im Skript selbst.
  Code gelesen (`skills/volumenstudie/tools/volumen_generator.py`): `--variante NAME:key=val`
  kennt genau vier Schlüssel (`grenzabstand`, `geschosse`, `geschosshoehe`, `hoehe`), alle
  Zahlen. Docstring-Absicht: „baurechtliche Verbindlichkeit … liefert der Skill machbarkeit" —
  das Skript rechnet bewusst nur exakte Geometrie aus dem Baufeld, jede Fachlogik bleibt beim
  orchestrierenden Skill. Von den rund neun `gebaeude`/`materialien`/`kosten_referenz`-Feldern
  im Schema deckt das Skript nur zwei ab (`geschosshoehe_m`, indirekt ein Einzelwert aus
  `geschosse_min/max`); Fassadenraster, Erschliessung, Statik, Dachform, Materialien, Kosten,
  Entwurfsregeln fliessen gar nicht in die Geometrie-Erzeugung ein. Ausserdem ist
  `geschosse_min/max` ein Band, das Skript braucht aber je Variante einen Einzelwert — die
  Übersetzung Band→Variante ist ein Fachentscheid, keine mechanische Übernahme. **Eigentlicher
  Befund:** weder `skills/machbarkeit/SKILL.md` noch `skills/machbarkeit-studio/SKILL.md`
  referenzieren `entwurfs-referenzen`/`parameter-set` (0 Treffer) — die Integration ist heute
  komplett unverdrahtet. Die richtige Stelle für eine Parameter-Set→Variante-Übersetzung ist die
  Fachlogik im aufrufenden Skill (`machbarkeit`/`machbarkeit-studio`), nicht ein CLI-Flag im rein
  geometrischen Generator. Das ist Bau-Arbeit für einen eigenen Lauf an jenen Skills, nicht an
  dieser KB.
- [x] **Rückkopplung aus realen Projekten: manuell oder Output-Compounding?** Output-Compounding
  — der Mechanismus existiert bereits generisch für alle KBs und wird an dieser KB bereits
  gelebt, eine KB-eigene Zusatzlösung ist nicht nötig. Rule `wissens-ruecklauf.md` (importiert)
  verlangt nach jedem substanziellen Deliverable einen datierten Report nach `<kb>/outputs/`;
  Rule `wissens-bibliothekar.md` + `CLAUDE.md` dieser KB (Abschnitt „Compounding-Logik", Punkte
  1-4) beschreiben denselben Fluss speziell für Parameter-Sets: Output einer Machbarkeitsstudie
  → Erfahrungswert zurück ins Set → CHANGELOG. Die Cross-KB-Läufe des Scheduled Task
  `wissens-chef` haben das an dieser KB bereits mehrfach vorgemacht (CHANGELOG-Einträge Run
  15/16/27/35: Quellenzuweisung korrigiert, Kostenband-Vorbehalt nachgetragen, Quellenstand
  nachgezogen). **Offene Lücke, nicht diese Frage selbst:** die Rückkopplung lief bisher nur
  einseitig aus anderen KBs (wettbewerbs-dna, immobilienbewertung) hinein, noch nie aus einem
  echten `machbarkeit`/`machbarkeit-studio`-Lauf zurück — weil diese Skills die Parameter-Sets
  laut Integrationsbefund oben noch gar nicht konsumieren. Der Mechanismus ist geklärt, die
  Konsumentenseite fehlt.
- [x] **Eigener Scheduled Task für den Compounding-Loop?** Nein. Zwei bereits laufende,
  generische Tasks bedienen diese KB de facto schon:
  `templates/scheduled-tasks/macbook-pro/wettbewerbs-dna-training` (wöchentlich Mo 02:20,
  liefert Parameter-Sets als „Zulauf", belegt CHANGELOG 21./25./27.07.2026) und
  `templates/scheduled-tasks/macbook-pro/wissens-chef` (täglich 23:10, Cross-KB-Aufsicht ohne
  KB-Einschränkung laut eigener `SKILL.md`, mehrfach an dieser KB tätig geworden). Diese KB
  taucht in `logbuch/rollen/rollen-map.tsv` nicht als eigener Registereintrag auf — sie hat nie
  eine eigene Rolle beansprucht, sondern lebt bewusst als Empfänger zweier bestehender Loops.
  Rule `rollen-taxonomie.md`: vor einem neuen Baustein erst prüfen, ob die Rolle bereits
  überbesetzt ist — ein dritter, KB-eigener Task wäre ein zusätzlicher builder/sweeper für die
  kleinste KB des Bestands (Health-Check 01.08.2026: „kleinste KB, kein einziger Sachartikel").
  Der fehlende Teil ist nicht Automatisierungs-Kapazität, sondern die Konsumentenseite (siehe
  Flag-Frage oben) — eine einmalige Verdrahtungsarbeit, kein wiederkehrender Loop.

## Vertiefung Parameter-Sets (23.08.2026) — `synobsis_slug` nachgetragen
Der am 25.07.2026 (Wissens-Chef Run 15, CHANGELOG) offen als «Bau-Arbeit» vermerkte Punkt
(optionales Feld `synobsis_slug` in `referenz_projekte`, damit wörtlich genannte
Referenz-Architekten maschinell auf den `architekten-synobsis`-Katalog zeigen) ist umgesetzt:
Schema-Feld ergänzt, siehe CHANGELOG. Gegen den Katalog geprüft (`wissen/architekten-synobsis/
catalog/*.json`, Feld `slug`): **Boltshauser Architekten** → `Boltshauser_Architekten.json`
eindeutiger Treffer, in `healthcare-neubau-zh.json` eingetragen. **Bewusst NICHT eingetragen:**
`wohnen-mfh-urban.json`, Referenzprojekt Kandalama/Brisgi-Areal, Feld `architekt`
„Müller Sigrist Architekten / Meier Leder Architekten" — im Katalog existiert nur
`Mueller_Sigrist.json`, für Meier Leder kein Eintrag. Ein Slug nur für die Hälfte der genannten
Büros hätte einen vollständigeren Treffer vorgetäuscht als belegt ist (Rule
`identifikatoren-verifizieren.md`) — bleibt offen, bis Meier Leder im Katalog auftaucht oder
Raphael eine andere Zuordnung bestätigt. „Harder Spreyermann Architekten" (Pinarello/Seebahn-
Höfe, selbe Datei) hat ebenfalls keinen Katalog-Treffer — kein Fund, kein Eintrag.

## Promotion-Kandidat — ERLEDIGT (kompiliert 18.08.2026, Nachtschicht Mac Mini)
- [x] **Donald Judd, «It's Hard to Find a Good Lamp» (1993, © Judd Foundation)** — vollständig
  gelesen bei der Schluss-Triage von `wissen/bauprodukte` (Quelle:
  `/Volumes/daten/03 Bauprodukte_BKP/233 Leuchten und Lampen/6 Pendellampe/Judd/`, dort als
  kein Bauprodukt verworfen, siehe `bauprodukte-inventar.md` Z. 165). Am 15.08.2026 nur als
  Fund vermerkt, jetzt als erster Artikel des bisher leeren Ordners `entwurfsprinzipien/`
  kompiliert: [[entwurfsprinzipien/trennung-kunst-funktion-judd]] — Trennung Kunst/Funktion,
  Proportion als «visible reasonableness», Kritik an Stil-Imitation und
  Distributions-Oligopolen. Urheberrecht beachtet (nur kurze Zitate, kein Volltext-Nachdruck).
  Einquellen-Artikel; weitere Diskurstexte aus `05_Architekten_Synobsis` bleiben ein eigener
  Folgelauf.
