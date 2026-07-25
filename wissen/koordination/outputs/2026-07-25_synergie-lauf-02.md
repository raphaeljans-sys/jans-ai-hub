---
title: "Synergie-Lauf 02 — Delta-Prüfung seit dem Erstlauf"
status: established
last_updated: 2026-07-25
sources:
  - "Git-Log NAS-Repo seit 15.07.2026 (Datei-Delta, --diff-filter=A für Neuzugänge)"
  - "CHANGELOGs der Wissens-KBs (grobkosten, wettbewerbs-dna, entwurfs-referenzen, architekten-synobsis)"
  - "SYNERGIE-REGISTER.md (Stand Lauf 01, 15.07.2026)"
links:
  - "[[../SYNERGIE-REGISTER]]"
  - "[[../../spec/outputs/2026-07-20_syn-02-typologischer-entwurfsprozess_spec]]"
---

# Synergie-Lauf 02 — Delta-Prüfung seit dem Erstlauf

Datum: 25.07.2026 · Auslöser: Scheduled Task `synergie-lauf-monatlich` · Modus: gedrosselt
(Rule 260714 — Inline-Analyse, kein Multi-Agent-Fan-out) · Vorlauf: Lauf 01 vom 15.07.2026.

Kollisionsschutz nach Rule 260724 vor Beginn geprüft: keine zweite Instanz dieses Loops auf
dem Host. Der Commit am Schluss läuft pathspec-begrenzt.

## Inventar-Delta seit dem 15.07.2026

Basis: Git-Log des NAS-Repos plus die KB-CHANGELOGs. Das Delta ist stark asymmetrisch — die
Fähigkeiten-Schicht steht fast still, die Wissens-Schicht ist massiv gewachsen.

Struktur (Skills/Agenten/Rules):

- **1 neuer Skill:** `pdf2dwg` (Vektor-PDF → leichtes DWG für ArchiCAD).
- **0 neue Agenten, 0 neue Verhaltens-Rules.** Einzige neue Rule-Datei ist
  `auto-verbesserungen-archiv.md` — eine Auslagerung aus der Kontext-Diät vom 19.07., kein
  neues Verhalten.
- Bearbeitet: `rules/jans-dna.md`, `dokument-layout-standard`, `mail-formatierung`,
  `osascript-apple-apps`, `sync-kanonische-quelle`, `CLAUDE.md`, `skills/logbuch`,
  Connectoren `geo-zh`/`geo-sz`/`truninger-ds3`/`claude-usage`.

Wissen (die eigentliche Bewegung):

- **wettbewerbs-dna:** Etappe 3 eröffnet — Healthcare-Quellen-Sweep mit 42 HTTP-verifizierten
  Juryberichten, 6 bereits als `wiki/extern/`-Artikel kompiliert, dazu der established
  Benchmark `muster/kennwerte-schulbauten.md` (431 refuter-bestätigte Kennzahlen).
- **entwurfs-referenzen:** Parameter-Set `schule-volksschule-ch.json` und der erste
  Wiki-Artikel `typologien/bildung.md`.
- **architekten-synobsis:** `wiki/RAUMTYPOLOGIEN.md` + `catalog/typology-map.json`.
- **energie:** rund 50 neue Destillate; **baurecht:** Buch-Runs 47–51 plus amtliche Rohtexte;
  **spec:** SYN-02-Spec und Trainings-Runs 22–27; **twin, projekt-lessons,
  planungsgrundlagen** laufend.

Konsequenz für diesen Lauf: Es sind kaum neue Kanten zwischen Skills entstanden, dafür viele
neue Kanten zwischen Wissen und Skills — und genau dort liegen die drei neuen Befunde.

## Neue Befunde

### SYN-13 — Typologie-Asymmetrie zuungunsten der Kern-Bauaufgabe (Typ 3)

Der wichtigste Befund dieses Laufs. Für den **Bildungsbau** ist die Kette vom Rohmaterial bis
zum nutzbaren Entwurfsparameter inzwischen vollständig durchgezogen:

    25 Quellen → kennwerte-schulbauten (established, 431 bestätigte Kennzahlen)
              → schule-volksschule-ch.json (schema-valide, refuter-bestanden 21.07.)
              → typologien/bildung.md (established 24.07.)

Für **Healthcare** endet dieselbe Kette beim ersten Glied. Der Sweep vom 23.07. hat 42
Juryberichte verifiziert (22 Pflegeheim/Alterszentrum, 11 Spital/Klinik, 6 Psychiatrie), aber:
`healthcare-neubau-zh.json` steht unverändert auf v1.0 und stützt sich auf CURAVIVA-Richtwerte,
den Wüest-Baukostenindex und eigene Projekte — nicht auf die neuen Juryberichte. Es gibt kein
`typologien/healthcare.md`. Und weder `skills/healthcare-wirtschaftlichkeit/` noch
`skills/kostenschaetzung/` verweisen mit einem einzigen Wort auf `wettbewerbs-dna`.

Das ist deshalb bemerkenswert, weil Healthcare die JANS-Kern-Bauaufgabe ist — mit zwei eigenen
Skills, einem Goldstandard-Projekt (2410 WALD) und der höchsten Trefferquote im
Wettbewerbsgeschäft. Die Reihenfolge ist sachlich nachvollziehbar (Bildung war Prio 1 der
Etappe), aber das Ergebnis ist, dass die am besten belegte Typologie derzeit die ist, die JANS
am wenigsten braucht.

Empfehlung: die Bildungs-Kette als Bauplan eins zu eins auf Healthcare anwenden, Baustein für
Baustein im gedrosselten Takt. Erst danach die beiden Healthcare-Skills per Contract-Zeile
anschliessen — vorher gäbe es nur einen Verweis auf halb Belegtes.

### SYN-14 — `pdf2dwg` als Insel eingehängt (Typ 1+2)

Der einzige neue Skill ist funktional fertig und am Referenzfall 2619 KISPI validiert
(240'414 Striche → rund 14'500 Entities), strukturell aber nicht verdrahtet:

- **Kein Contract-Block.** Damit ist er einer von nur 4 der 49 Skills ohne — die anderen drei
  sind `oereb-schwyz`, `planungsgrundlagen` und `volumenstudie`. Ohne Contract fehlen
  Vorgelagert/Nachgelagert und die abhängigen Rules.
- **Keine eingehende Referenz** ausser CLAUDE.md, obwohl `volumenstudie` einen validierten
  DXF-Rückkanal führt (SKILL.md Z. 96 ff.) und `ezdxf` bereits im selben Werkzeugkasten liegt.
- **Ablage-Widerspruch:** Der Skill schreibt das DWG «in denselben Ordner wie das Quell-PDF».
  Rule `projekt-ablage-stand.md` Z. 21 legt CAD-Austausch verbindlich nach
  `09_Dokumente/CLAUDE/09_CAD-Austausch/`. Das ist kein Formfehler, sondern die Frage, ob
  konvertierte Fremdpläne Teil des Schichtenvertrags sind oder nicht.

Der Ablage-Punkt ist bewusst als Frage und nicht als Fehler formuliert: für zugelieferte
Unternehmerpläne kann das Ablegen neben dem Quell-PDF durchaus gewollt sein. Dann gehört es
als dokumentierte Ausnahme in den Contract — nicht als stiller Widerspruch zur Rule.

### SYN-15 — Raumtypologie entstand vier Tage nach der Spec, die sie braucht (Typ 3+5)

`wiki/RAUMTYPOLOGIEN.md` (24.07.) macht die kuratierte Sammlung «1 Selection» als
Entwurfsreferenz nutzbar: 9 Raumtypologien, 105 zugeordnete Projekte, maschinenlesbar in
`catalog/typology-map.json`. Die SYN-02-Spec vom 20.07. kennt sie nicht — sie listet als
Faktenbasis nur `entwurfs-referenzen`, `wettbewerbs-dna` und `grobkosten`. Ausserhalb der
eigenen KB wird das Artefakt nirgends referenziert.

Inhaltlich ist das die fehlende dritte Dimension des Entwurfsprozesses: Der MVP kennt heute
Zonen-Maxima (was darf gebaut werden) und das typologische Parameter-Set (welches Programm mit
welchen Flächen). Die Raumfigur — Parti, zentrale Mitte, fliessender Raum, modulare Fügung —
fehlt. Das ist der Unterschied zwischen einem regelkonformen Volumen und einem typologisch
begründeten Entwurfsvorschlag. Der Aufwand ist klein: Spec-Nachtrag bei den Quellen plus ein
Direktverweis in `typologien/INDEX.md`, der heute nur generisch auf die Synobsis zeigt.

## Nachgeführte Status offener Einträge

- **SYN-02** (typologischer Entwurfsprozess): Datenseite hat aufgeholt — die in der Spec als
  «ausstehend» notierte Lücke B5 ist geschlossen. Codeseite unverändert: `volumen_generator.py`
  kennt weiterhin nur `--parzelle/--out/--name` plus Zonenflags und liest kein Parameter-Set.
  Der MVP-Bau ist damit weiterhin der Engpass, nicht die Datenlage.
- **SYN-04** (Vorabklärung ↔ Auflagen): Hinrichtung dokumentiert (`auflagebereinigung`
  Z. 30 + Kettengrafik Z. 43). Die Rückkopplung bleibt offen — `auflagen-tracker` schreibt
  Erkenntnisse nur ins eigene Wiki, der Fragenkatalog wächst nicht aus realen Auflagen-Mustern.
- **SYN-10** (Auflagen-Fristen → Terminplanung): Die Kante war asymmetrisch — `auflagebereinigung`
  nannte `terminplanung` als nachgelagert, die empfangende Seite stand auf «Vorgelagert: —».
  Querverweis in `skills/terminplanung/SKILL.md` direkt gesetzt (active-with-flagging, siehe
  unten). Das Übergabe-Format bleibt offen.
- **Unverändert offen:** SYN-01 (Kennwerte-Monopol), SYN-05 (Stammdaten), SYN-06
  (Kennwert-Rückfluss), SYN-08 (zwei Stimmen-Modelle), SYN-09 (Studio als Akquise),
  SYN-11 (Bauleitungs-Backend B2B).
- **SYN-03 / SYN-07** bleiben umgesetzt: S5 und S6 stehen im Katalog.

Erwähnenswert, weil es zwei offene Einträge verbindet: `wissen/grobkosten` — laut SYN-01 die
künftig führende Kennwerte-Quelle — steht nach wie vor auf `status: emerging` und enthält in
`raw/` ausser README und `_INGESTED.md` **keinen einzigen Datenpunkt**. Der Artikel sagt es
selbst: «noch NICHT mit realen JANS-Schlussabrechnungen (m³) verifiziert». Der in SYN-06
vorgeschlagene Rückfluss aus `offertenpruefung` und `kostenkontrolle` ist in beiden Skills
weiterhin nicht verankert (Grep auf «grobkosten»: 0 Treffer). Solange das so bleibt, wird die
designierte Leitquelle nicht reifer, während parallel in `wettbewerbs-dna` 431 verifizierte
Kennzahlen entstanden sind — die Kennwert-Kompetenz wächst am vorgesehenen Ort vorbei.

## Direkt gesetzt (active-with-flagging)

Eine Kleinigkeit im Sinn von Phase 4, ein fehlender Contract-Querverweis:

`skills/terminplanung/SKILL.md` — «Vorgelagert: —» ersetzt durch den Verweis auf
`auflagebereinigung` (Auflagen-Fristen als Meilenstein-Input, mit Nennung der Gegenzeile).
Damit ist die SYN-10-Kante beidseitig sichtbar.

Nichts anderes wurde verändert. Keine Skills gelöscht, gemergt oder parkiert, kein
Katalog-Eintrag aktiviert.

## Geschäftsmodell-Ableitung (ENTWURF, nicht aktiviert)

Aus den Befunden Typ 3/5 ergibt sich in diesem Lauf **kein neues Service-Paket** — aber eine
Schärfung eines bestehenden. Referenzdokument:
`docs/konzepte/260715-Geschaeftsmodell-KI-Architekturbuero/`.

**Entwurf zu S5 «Wettbewerbs-Fabrik» — Schwerpunkt Healthcare.** S5 ist heute typologie-neutral
formuliert. Die Datenlage legt eine Zuspitzung nahe: Mit 42 verifizierten Healthcare-
Juryberichten, zwei Healthcare-Skills und dem Goldstandard 2410 WALD hätte JANS in dieser
Bauaufgabe eine belegte Beurteilungsgrundlage, die kaum ein Büro dieser Grösse vorweisen kann
— aber erst, wenn SYN-13 abgearbeitet ist. Reihenfolge deshalb: erst die Kette schliessen,
dann den Katalogtext schärfen. Vorher wäre es ein Versprechen ohne Deckung.

Bewusst **kein** Vorschlag: ein eigener Service rund um `pdf2dwg`. Die Konvertierung ist ein
internes Werkzeug mit einem validierten Referenzfall; daraus eine Dienstleistung abzuleiten,
wäre aus einem einzigen Datenpunkt hochgerechnet.

## Nächste Schritte (Empfehlung an Raphael)

1. **SYN-13** — Healthcare-Bausteine der Etappe 3 in den Nachtfenster-Takt aufnehmen (ein
   Baustein je Lauf, wie beim Bildungsbau). Grösster inhaltlicher Hebel.
2. **SYN-15** — Spec-Nachtrag und Direktverweis auf `typology-map.json` setzen. Kleinster
   Aufwand im ganzen Register, wirkt direkt auf den SYN-02-MVP.
3. **SYN-14** — Entscheid zur `pdf2dwg`-Ablage (CAD-Austausch-Ordner oder dokumentierte
   Ausnahme), danach Contract-Block nachrüsten; die drei übrigen Skills ohne Contract im
   selben Zug.
4. **SYN-01/SYN-06** — der Kennwert-Rückfluss ist jetzt seit zwei Läufen unbewegt. Entweder
   in `offertenpruefung`/`kostenkontrolle` verankern oder den Anspruch «führende Quelle»
   für `wissen/grobkosten` bewusst zurücknehmen.

Nächster Lauf: regulär in einem Monat, oder auf Zuruf.
