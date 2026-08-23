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

## Vertiefungslauf 23.08.2026 (Revendo) — Schema-Deckungs-Audit, Preisstand-Lücke geschlossen, Verdrahtungs-Befund präzisiert

Auftrag Raphael: JSON-Parameter-Sets prüfen und ausbauen. Zuerst geprüft, dann ergänzt — alle
Ergänzungen rein additiv, alle drei Sets nach jedem Schritt mit `validate.py --all` gegengelesen.

### Befund 1 — das Schema deckte nur einen Teil dessen ab, was die Sets tatsächlich führen

Feldweiser Abgleich Schema gegen alle drei Sets ergab **sieben benutzte, aber nicht deklarierte
Felder**: `scope_hinweis` (Top-Level), `flaechen.hinweis`, `kosten_referenz.chf_m2_hnf_band`,
`.chf_m2_hnf_bkp_scope`, `.hinweis`, `.quelle_kb_m2_nf`, `.quelle_kb_nicht_anwendbar`. Sie
validierten nur deshalb, weil das Schema **kein `additionalProperties: false`** setzt — ein
konsumierendes Werkzeug hat für sie also keinen Vertrag, obwohl sie inhaltlich tragend sind
(`quelle_kb_nicht_anwendbar` verhindert im Healthcare-Set ausdrücklich eine falsche Kostenquelle).
Alle sieben sind jetzt **nachträglich deklariert**. `additionalProperties` bleibt bewusst offen —
ein Umstellen auf `false` würde künftige, noch unbekannte Belegfelder blockieren; die Deckungslücke
wird stattdessen bei jedem Lauf neu gemessen.

### Befund 2 — das einzige deklarierte Kostenfeld ist genau das, was die Quellen nicht hergeben

`kosten_referenz.chf_m3_gv_band` ist im Schema deklariert und in **keinem** der drei Sets gesetzt.
Der Grund steht dreimal unabhängig belegt in den Sets selbst: **kein einziger Jurybericht nennt
ein Gebäudevolumen** — derselbe Befund für Healthcare, Schulbau und Wohnungsbau. Das faktisch
benutzte Kostenfeld (`chf_m2_hnf_band`) war dagegen undeklariert. Das Schema war also am
CHF/m³-Denken von `volumen_generator.py` gebaut, die Quellenlage liefert aber m²- und
Einheitswerte. Neu deklariert und in Gebrauch genommen: `chf_m2_gf_einzelwert` (für den Fall,
dass die Quellenlage nur einen Einzelwert hergibt — bewusst getrennt vom Band, damit ein
Einzelfall nicht als Band gelesen wird) und `chf_je_einheit` (Kosten je Klassenzimmer/Pflegeplatz/
Wohnung). `chf_m3_gv_band` bleibt deklariert und leer; führend dafür ist `wissen/grobkosten/`.

### Befund 3 — GESCHLOSSEN: es gab keinen maschinenlesbaren Preisstand

Alle Kostenangaben trugen ihren Preisstand **nur in Prosa** im Feld `hinweis`. Ein Werkzeug, das
`chf_m2_hnf_band: [3500, 3900]` liest, konnte nicht wissen, dass das Zürcher Geld von 2018/2019
ist. Neu: **`kosten_referenz.preisstand`** mit `jahr`, optionalem `stichtag`, `teuerungsanker`,
`hinweis` und einem optionalen Block `indexiert`. In allen drei Sets befüllt:

- **wohnen-mfh-urban:** Preisstand **2018/2019** (Auslobung Koch-Areal Zürich). Teuerungsanker
  **ZIW** — regional passend, weil das Band aus einem Zürcher Verfahren stammt. Stützstellen
  (Basis 1939 = 100): 01.04.2018 = 1036.8 · 01.04.2019 = 1046.3 · 01.04.2025 = 1210.4;
  01.04.2026 ≈ 1221.3 (verkettet über die publizierte Jahresteuerung +0.9 %). Faktor **1.167 bis
  1.178** → indexiert rund **4'090–4'600 CHF/m² HNF** auf 01.04.2026, im Block `indexiert`
  **als gekennzeichnete Ableitung** geführt. Das Rohband bleibt unverändert auf 3'500–3'900
  stehen, damit die Belegkette lesbar bleibt.
- **healthcare-neubau-zh:** Preisstand **2011–2025, gemischt** — das ist hier der wichtigere
  Befund als jede Zahl. Das Band spannt über 14 Jahre, das Teilband 1'053–1'420 gilt nur für die
  sechs Neubauten ab 2019, und der führende Artikel führt die Objekte bereits teuerungsbereinigt
  auf Index-Stand ~115. **Kein pauschaler Teuerungsanker gesetzt** — wer aufindexiert, muss
  zuerst entscheiden, ob er vom Roh- oder vom bereinigten Band ausgeht, sonst wird doppelt
  indexiert.
- **schule-volksschule-ch:** Preisstand **2021** für den m²-Wert (Bericht des Preisgerichts
  Kantonsschule Wattwil, 29.04.2021 — der Ordnername «2025» im Referenzarchiv täuscht ein
  jüngeres Datum vor), **2012–2026** als Korpus-Spanne für die Einheitswerte.
  **Teuerungsanker bewusst offen gelassen:** das Objekt liegt im Kanton St. Gallen, der in den
  Hub-KBs verifizierte Anker ist der Zürcher ZIW (regional unpassend), und für den
  BFS-Baupreisindex ist hier nur die Basis Oktober 2025 = 100 mit dem Stand April 2026 belegt —
  keine bis 2021 zurückreichende verkettete Reihe. Eine Aufindexierung wäre geraten und
  unterbleibt.

### Befund 4 — der Kostenblock des Schul-Sets war leer, obwohl die Quelle belegte Werte führt

`schule-volksschule-ch.json` trug in `kosten_referenz` nur `bkp_schwerpunkte` und `quelle_kb` —
obwohl die im eigenen Feld `quellen` bereits zitierte Quelle
`wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` (established, 25 Quellen,
refuter-bestätigt) zwei abgeleitete Orientierungsgrössen führt. Nachgetragen:

- **`chf_m2_gf_einzelwert: 4250`** — Kantonsschule Wattwil, max. 60 Mio. CHF Anlagekosten inkl.
  Umgebung exkl. MWST / 14'100 m² GF. **Abgeleiteter Einzelwert aus einem Kostenziel, kein
  Ist-Kostenwert und kein Band** — der einzige Fall des Korpus, in dem Kosten und GF aus derselben
  Quelle stammen.
- **`chf_je_einheit`**: Klassenzimmer **1.6–1.8 Mio. CHF** (Regelschul-Neubau, **Gesamtanlage** je
  Klassenzimmer, nicht der Raum); Sonderschule rund 2.5 Mio. (Einzelfall, im `umfang`-Text).
  Sanierungs-/Erweiterungsfälle bewusst nicht umgerechnet.

Die zehn Kostendach-/Zielkostenwerte des Korpus sind **nicht** als Rohtabelle übernommen — sie
haben unterschiedlichen BKP-Umfang und MwSt-Status und sind untereinander nicht vergleichbar.

### Befund 5 — die Verdrahtung zum Generator ist BEIDSEITIG leer (Präzisierung des Punktes vom selben Tag)

Der Eintrag vom 23.08.2026 (Abschnitt «Integration») hält fest, `machbarkeit`/`machbarkeit-studio`
referenzierten die Parameter-Sets mit 0 Treffern — «die Verdrahtung fehlt im aufrufenden Skill,
nicht im Generator». Die Feldmessung zeigt: **sie fehlt auf beiden Seiten.**

`volumen_generator.py` kennt vier Schlüssel (`grenzabstand`, `geschosse`, `geschosshoehe`,
`hoehe`). Davon könnte das Schema zwei bedienen: `gebaeude.geschosse_min/max` und
`gebaeude.geschosshoehe_m`. Tatsächlicher Bestand:

| Set | `geschosse_min/max` | `geschosshoehe_m` | sonstige Geometriefelder |
|---|---|---|---|
| healthcare-neubau-zh | — | — | keine; `gebaeude` enthält **nur** `orientierung_regeln` |
| wohnen-mfh-urban | — | — | keine; `gebaeude` enthält **nur** `orientierung_regeln` |
| schule-volksschule-ch | 1 / 5 | — | `erschliessung: atrium` |

**`geschosshoehe_m` ist in keinem Set gesetzt** — also genau das Feld, das die Brücke bilden
müsste. Selbst wenn `machbarkeit` die Sets morgen läse, käme in zwei von drei Fällen kein
einziger Geometriewert beim Generator an. Die fünf weiteren deklarierten Geometriefelder
(`dachform`, `fassaden_raster_m`, `grundriss_tiefe_m`, `statik_system` und in zwei Sets auch
`erschliessung`) sind ebenfalls durchgehend leer.

**Warum das in diesem Lauf nicht gefüllt wurde — Belegdisziplin, nicht Nachlässigkeit:**
- **Schule:** die Quelle belegt eine **lichte Raumhöhe Klassenzimmer von mindestens 3.00 m**
  (2206 Schöntal). Das ist neu als **`gebaeude.lichte_raumhoehe_m`** eingetragen — mit
  ausdrücklichem Vermerk, dass daraus **kein** `geschosshoehe_m` abgeleitet wird: zwischen lichter
  Raumhöhe und Geschosshöhe liegen Decken- und Bodenaufbau, und keine Quelle des Korpus nennt eine
  Schul-Geschosshöhe. Umrechnen wäre Raten.
- **Healthcare:** `kennwerte-healthcare.md` führt breit belegte Tragwerksraster (7.5 / 8.0 / 8.1 /
  8.4 / 10.8 m) und Geschosshöhen (3.60 m Soll, 3.00 m Minimum) — aber **alle aus Akutspital
  (KSA Aarau, LUKS Sursee) und Psychiatrie (ipw Winterthur, KJPK Basel)**. Dieses Set ist
  ausdrücklich auf Pflegeheim/Alterszentrum begrenzt, und B6 verbietet die Quer-Übertragung
  zwischen Subtypen. **Bewusst nichts übernommen.**
- **Wohnen:** nur ein einziger Rasterwert im gesamten Korpus (3.20 m Holzbauraster, Walkeweg,
  «kein Vergleichswert» laut Quelle). Ein Einzelfall taugt nicht als typologisches
  `fassaden_raster_m`. **Nicht eingetragen.**

**Offen und an Raphael:** die Geometriefelder lassen sich aus den Wettbewerbs-Quellen nicht
seriös füllen — Juryberichte belegen Regeln und Kosten, nicht Regelgeometrie. Wenn die Brücke zum
Generator geschlossen werden soll, braucht es entweder (a) eigene JANS-Projektgeometrie als Quelle
(Geschosshöhen aus abgerechneten Projekten) oder (b) den Entscheid, dass die Sets bewusst
**keine** Geometrie liefern und `volumen_generator.py` seine Geometrie weiterhin ausschliesslich
aus dem Baufeld rechnet — dann wäre `geschosshoehe_m` aus dem Schema zu streichen statt leer
mitzuführen. Beides ist ein Entscheid, keine Recherche.

## Vertiefungslauf 2, 23.08.2026 (Revendo) — Healthcare-Flächenblock gefüllt; eine Geometrie-Brücke ist doch belegbar

Zweite Runde. Angesetzt an der grössten verbliebenen Lücke: der **`flaechen`-Block des
Healthcare-Sets war vollständig leer** — er enthielt nur einen Hinweis, warum nichts drinsteht.

### Was gefüllt wurde und woher

Der führende Artikel `wissen/immobilienbewertung/wiki/realwert-sachwert.md` (established, Run 14)
führt den **JANS-8-Objekt-Referenzvergleich** «Kennwerte Altersheime Gesundheitszentren»
(WALD-2410-Arbeitsgrundlagen, R. Jans): acht reale CH-Alters-/Pflegeheime 2011–2025 mit
**GF, GV nach SIA 416 und Bettzahl** in derselben Tabelle. Daraus lassen sich drei Flächen-Kennwerte
**rechnerisch ableiten**, ohne irgendetwas zu schätzen:

| Kennwert | Band (reine Heime) | Median |
|---|---|---|
| **GF je Pflegeplatz** | 90–135 m² | 111 m² |
| **GV je Pflegeplatz** | 289–436 m³ | 343 m³ |
| **GV/GF-Faktor** | 3.06–3.48 | **3.2** |

### Die B6-Sperre bleibt unberührt

Der bisherige Hinweis ist **erhalten und weiterhin gültig**: der Spital-Korridor 95–100 m²/Bett
bleibt **nicht übernommen** (subtypfremd, doppelt abgeleitet), und ein **NF/GF-Faktor für
Pflegeheime bleibt unbelegt**. Gefüllt sind ausschliesslich Grössen, die sich aus einem
**pflegeheim-eigenen** Bestand ableiten.

### Vier Vorbehalte, alle im Set mitgeschrieben

1. **Ist-Werte realer Heime, keine Sollwerte.**
2. **Das Zentrum St. Anna LU ist ausgeschlossen** — 207 m²/PZ und 715 m³/PZ, klarer Ausreisser,
   konsistent mit seinem CHF/PZ-Ausreisser von 780'000. Beim **GV/GF-Faktor ist es mit 3.45
   dagegen unauffällig**: der Zentrumscharakter zeigt sich in der Fläche je Platz, nicht in der
   Höhe. Das ist ein innerer Konsistenzbefund, der die Ableitung stützt.
3. **Zwei Zeilen sind quellenintern inkonsistent** (Averecura, Vella — D10 in der führenden KB).
   Beim Nachrechnen bestätigt: BKP 2 / GV ergibt **1'285 statt 1'420** bzw. **1'021 statt 845**,
   die übrigen **sechs reproduzieren exakt**. Ohne diese beiden Zeilen bleibt das GF/PZ-Band
   **unverändert** 90–135 (Median sinkt auf 99), GV/PZ verengt sich auf 289–412 (Median 334), der
   **GV/GF-Faktor bleibt unverändert**. Der Kernwert ist also gegen den bekannten Quellenfehler
   robust.
4. **Der GV/GF-Faktor ist eine mittlere rechnerische Höhe** inkl. Unter- und Dachgeschossanteilen,
   **nicht** die konstruktive Geschosshöhe.

### Fortschritt gegenüber dem eigenen Befund von heute Morgen

Der Vertiefungslauf 1 hielt fest, die Geometriefelder liessen sich «aus den Wettbewerbs-Quellen
nicht seriös füllen — Juryberichte belegen Regeln und Kosten, nicht Regelgeometrie», und die
Entscheidfrage laute, ob man eigene JANS-Projektgeometrie erschliesse. **Genau das ist hier
passiert**, nur aus einer anderen Richtung: nicht aus Wettbewerbsberichten, sondern aus dem
**eigenen JANS-Referenzblatt**, das GF, GV und Bettzahl derselben Objekte nebeneinander führt.

Der **GV/GF-Faktor ist die gesuchte Brücke zu `volumen_generator.py`** — er ist die Grösse, mit
der aus einer Geschossfläche ein Volumen wird. Er ist bewusst **nicht** als
`gebaeude.geschosshoehe_m` eingetragen, sondern als eigenes, neu deklariertes Feld
`flaechen.gv_gf_faktor`: das Schema-Feld meint die konstruktive Geschosshöhe, der Faktor ist eine
mittlere rechnerische Höhe. Sie gleichzusetzen wäre genau der stille Fehler, den diese KB
vermeiden soll.

**Damit verschiebt sich die Entscheidfrage aus Vertiefungslauf 1:** sie lautet nicht mehr «lässt
sich Geometrie überhaupt belegen», sondern **ob `volumen_generator.py` einen GV/GF-Faktor
entgegennehmen soll statt einer Geschosshöhe**. Das ist eine Schnittstellenfrage an Raphael, keine
Recherche. Für Schule und Wohnen fehlt ein vergleichbares Referenzblatt mit GF und GV derselben
Objekte — dort bleibt die Lücke.

### Auch gefüllt: die Healthcare-Kostenbänder sind jetzt maschinenlesbar

Sie standen bisher nur in Prosa im Feld `hinweis`. Neu: `chf_m3_gv_band` **[826, 1420]** (spiegelt
den führenden Artikel), `chf_m3_gv_band_reproduzierbar` **[826, 1285]** (der beim Recompute
bestätigte Teil, neu deklariertes Feld), `chf_m3_gv_median` 1100, `chf_je_einheit` Pflegeplatz
**272'780–530'000 CHF** (BKP 2; das Zentrum St. Anna mit 780'000 bewusst ausserhalb) und
`bkp_scope`. **Welcher Band gilt, ist der offene Entscheid D10 bei Raphael** — hier bewusst nicht
vorweggenommen, sondern **beides sichtbar gemacht**, statt einen Rand stillschweigend mitwandern
zu lassen.
