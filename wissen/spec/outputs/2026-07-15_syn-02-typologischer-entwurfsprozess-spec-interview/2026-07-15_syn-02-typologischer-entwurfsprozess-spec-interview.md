# Spec-Interview-Vorbereitung: SYN-02 — Typologischer KI-Entwurfsprozess

Datum: 15.07.2026 · Verfasser: Claude (Scheduled Task `syn02-spec-anstoss`, Station MacBook Pro)
Auftraggeber: Raphael Jans · Methode: Spec (Karpathy/Marchese, 3 Easy Steps), Schritt 1
Status: **Interview vorbereitet — Start auf Zuruf** («Spec SYN-02 starten»)

> Dies ist NICHT die Spec. Es ist die Vorbereitung von Schritt 1 (Ziel aufdecken): die
> Schluesselfragen an Raphael plus die je Frage bereits recherchierte Faktenlage, damit im
> Interview nur wirklich Offenes gefragt wird. Kein Bau, kein Interview automatisch gefuehrt.

---

## 1. Vorentwurf «wahres Ziel» (im Interview zu bestaetigen/schaerfen)

Aus dem Papier GM2 (Geschaeftsmodell, 15.07.2026) und dem Register-Eintrag SYN-02:

Die Wettbewerbs-DNA und die Entwurfs-Referenzen (maschinenlesbare JSON-Parameter-Sets je
Bauaufgabe) sollen an die Volumen-Pipeline angeschlossen werden, sodass Entwurfsvarianten
nicht mehr nur baurechtlich maximiert (Rule 260624), sondern **typologisch informiert**
erzeugt und ueber den Konformitaets-Loop (Soll/Ist-Ampel) iterativ verbessert werden.

Der Fuenf-Schritt-Prozess laut Papier: (1) Bauaufgabe erkennen und Parameter-Set aus der
DNA-KB ziehen, (2) Varianten ueber die Volumen-Pipeline generieren (echte swisstopo-
Grundlagen), (3) jede Variante gegen Programm, Baurecht und Flaechennachweis SIA 416
ampeln, (4) Grobkosten und Residualwert je Variante live rechnen, (5) der Architekt
entscheidet am Parti (Human Gate), die Maschine liefert den geprueften Moeglichkeitsraum.

Das dahinterliegende Geschaeftsziel: mehr gepruefte Entwurfsvarianten zum gleichen Honorar
(GM2) und/oder tragbar mehr Wettbewerbsteilnahmen (GM3, Wettbewerbs-Fabrik).

---

## 2. Faktenbasis (Scan 15.07.2026)

- **Register:** SYN-02, Typ 5 (Entwurfsprozess-Potenzial), Status «freigegeben 15.07.2026 —
  Spec-Start nach Limit-Reset». Beteiligte Harnesse: `wissen/entwurfs-referenzen` ·
  `volumenstudie` · `machbarkeit` · `wettbewerb`.
- **Parameter-Schema** (`entwurfs-referenzen/parameter-schema/entwurfs-parameter.schema.json`):
  reich — `gebaeude` (geschosse_min/max, geschosshoehe_m, grundriss_tiefe, fassaden_raster,
  erschliessung, statik_system, dachform, orientierung_regeln), `flaechen`
  (hnf_pro_einheit, vf_anteil, agf_bgf_faktor, nf_gf_faktor), `materialien`,
  `kosten_referenz` (chf_m3_gv_band, bkp_schwerpunkte, quelle_kb → `wissen/grobkosten/`),
  `entwurfs_regeln`, `referenz_projekte`, `rendering`. Validator `validate.py` vorhanden.
- **Vorhandene Parameter-Sets:** `healthcare-neubau-zh.json` v1.0 und `wohnen-mfh-urban.json`
  v1.0 (beide «Revision nach B6» offen). **Schulbau: Parameter-Set noch NICHT gebaut**
  (ETAPPE-3 B5 «ausstehend»), obwohl Schulbau die hoechste DNA-Prioritaet ist.
- **DNA-Reife (`wettbewerbs-dna/training/ETAPPE-3.md`):** Schulbau B3+B4 **established**
  (23/23 Destillate, Refuter-Welle bestanden), B5/B6 ausstehend. Healthcare/Wohnen: B3 erst
  0/8, nur Param-Set v1.0 vorhanden. Prioritaet gesetzt: 1. Schulbau · 2. Healthcare ·
  3. Wohnungsbau (Entscheid Raphael 14.07.2026).
- **Generator-Schnittstelle (`skills/volumenstudie/tools/volumen_generator.py`):** liest
  aktuell **nur CLI-Variantenflags** `NAME:grenzabstand=,geschosse=,geschosshoehe=,hoehe=`.
  Er liest das **Parameter-Set-JSON nicht** und erzeugt einen **einfachen Extrusions-
  Prismenkoerper** — keine Gliederung, keine Dachform, keine Ausrichtung. **Genau hier
  klafft die SYN-02-Luecke.** Zusatz-Tools vorhanden: `situationsmodell.py`, `c4d_szene.py`,
  `c4d_situation.py`, `axo_render.py`, `dxf_austausch.py`, `render-remote.sh`.
- **Spannung zu bestehenden Rules:** 260624 (immer max. zulaessiges Volumen ausreizen),
  260627b (Koerper ausgerichtet + architektonisch gegliedert, NIE nackter schraeger Quader),
  260627 (echte swisstopo-Grundlagen). Der typologische Prozess muss diese respektieren.
- **Konformitaets-Loop:** Skill `wettbewerb` mit Agent `programm-pruefer` (Soll/Ist-Ampel)
  und `flaechen-nachweis` (SIA 416); baurechtliche Maxima liefert `machbarkeit`.
- **Anschlussstelle Wirtschaft:** `machbarkeit-studio` (interaktives Live-Studio + Dossier,
  Rechen-Kern `studio_calc.py`); `grobkosten-onepager`/`grobkosten-rechner` (Kennwerte).
- **Offene Nachbar-Synergie:** SYN-01 (fuehrende Kennwerte-DB `wissen/grobkosten`) ist noch
  offen; `kosten_referenz.quelle_kb` in den Sets zeigt bereits dorthin.

---

## 3. Die Schluesselfragen (Interview-Schritt 1)

Fuenf Kern-Entscheide (E1–E5) plus vier technische Folgeentscheide (E6–E9). Je Frage die
vorgefundene Faktenlage und ein Default-Vorschlag, damit die Antwort leichtfaellt.

### E1 — Welche Bauaufgabe verdrahten wir zuerst (MVP-Typologie)?
- **Faktenlage:** DNA-Prioritaet ist Schulbau (Destillate established), aber ein Schulbau-
  Parameter-Set existiert noch NICHT. Fertige Sets liegen nur fuer Healthcare und Wohnen
  (je v1.0). Der MVP braucht ein lauffaehiges Set als Input.
- **Offen / Default-Vorschlag:** MVP technisch auf **Healthcare** oder **Wohnen** bauen (Set
  vorhanden → Kette sofort lauffaehig), Schulbau-Set (B5) parallel im Loop nachziehen und
  als erste «echte» Anwendung nehmen. Alternative: zuerst das Schulbau-Set bauen und dann
  darauf. Was ist Dir lieber — schnell lauffaehig oder gleich an der Prio-Typologie?

### E2 — Welchen Absatzkanal bedienen wir zuerst: Variantenstudie (GM2) oder Wettbewerbs-Fabrik (GM3)?
- **Faktenlage:** GM2 nennt beide Verkaufsformen. Die Studien-Pipeline (S1 Machbarkeits-
  Studio) ist produktiv; der Wettbewerbs-Harness ist noch im DNA-Aufbau (Etappe 3).
- **Offen / Default-Vorschlag:** Zuerst **Variantenstudie fuer Bauherren** (naeher an der
  produktiven Pipeline, direkter Honorarbezug), Wettbewerbs-Fabrik als zweite Ausbaustufe.
  Einverstanden, oder soll der Wettbewerb den Takt geben?

### E3 — Wo genau greift der Mensch ein (Human-Gate-Punkte)?
- **Faktenlage:** Papier-Schritt 5 = Architekt entscheidet am Parti; Skill `wettbewerb`
  haelt das Parti als Human Gate. Rules 260627b/260624 geben Form- und Volumenregeln vor.
- **Offen:** Genaue Gate-Stellen. Vorschlag drei Gates: (a) Freigabe/Anpassung des
  Parameter-Sets vor dem Lauf, (b) Auswahl der weiterzuverfolgenden Varianten vor dem
  Rendering, (c) Parti/Gestalt bleibt vollstaendig Hand. Passt diese Dreiteilung?

### E4 — Wie tief geht der MVP: nur Adapter oder Generator-Erweiterung?
- **Faktenlage:** `volumen_generator.py` nutzt heute nur geschosse/hoehe/grenzabstand und
  baut einen einfachen Quader; Rule 260627b verlangt aber gegliederte, ausgerichtete
  Koerper mit Dachform. Ein reiner «Parameter-Set → bestehende Flags»-Adapter waere schnell,
  liesse aber Gliederung/Dachform/Erschliessung/Orientierung ungenutzt (und verletzt 260627b
  im Ergebnisbild).
- **Offen / Default-Vorschlag:** MVP = **Adapter + minimale Gliederungs-/Ausrichtungslogik**
  (Firstrichtung, Baukoerper an Parzellenachse, Dachform aus Set), damit das Resultat
  regelkonform ist; Feinausbau (Materialmodell, Staffelung mehrerer Volumen) in Stufe 2.
  Oder soll der MVP bewusst nur die Zahlenkette (aGF/m3/Kosten) treffen und die Geometrie
  vorerst einfach bleiben?

### E5 — Welcher Verifier bestaetigt eine «gute» typologische Variante?
- **Faktenlage:** Spec-Methode verlangt zweite Pruefinstanz + externes Signal. Kandidaten:
  `programm-pruefer` (Soll/Ist-Ampel Programm), `flaechen-nachweis` (SIA-416-Rueckrechnung),
  Kennwert-Refuter (Kosten), `korrektur`/`twin` (Texte im Dossier).
- **Offen / Default-Vorschlag:** Primaerer Verifier = **`flaechen-nachweis` gegen das
  Parameter-Set-Soll (HNF/Einheit, agf_bgf_faktor)** plus **Baurecht-Max-Abgleich** aus
  `machbarkeit`; als externes Signal die Kennwert-Bandbreite aus `wissen/grobkosten`.
  Reicht das als Abnahme-Signal, oder willst Du den vollen `programm-pruefer`-Durchlauf
  schon im MVP?

### E6 — Anschluss ans Machbarkeits-Studio: Live-Regler oder Variantenkatalog?
- **Faktenlage:** `machbarkeit-studio` erzeugt interaktives Live-Studio (Regler je Variante)
  + Dossier; `studio_calc.py` ist der Rechen-Kern. `volumenstudie` speist heute schon
  `grobkosten-onepager`.
- **Offen / Default-Vorschlag:** MVP liefert einen **Variantenkatalog** (mehrere gepruefte
  Volumen mit Kennzahlen); die Einspeisung als Regler-Varianten ins Live-Studio als
  Stufe 2. Einverstanden?

### E7 — Wo lebt das Ganze (Owner/Ablage)?
- **Faktenlage:** Kandidaten: neues Tool in `skills/volumenstudie/tools/` (Naehe zum
  Generator), Erweiterung von `machbarkeit` (dort liegt die Parameter-Hoheit), oder ein
  eigener duenner Skill «typologie-entwurf» als Orchestrator.
- **Offen / Default-Vorschlag:** **Adapter-Tool in `volumenstudie/tools/`** (z.B.
  `typologie_zu_variante.py`), orchestriert von `machbarkeit` (Parameter-Hoheit bleibt dort).
  Kein neuer Skill im MVP. Passt die Verortung?

### E8 — Kennwerte gleich an die fuehrende DB koppeln (SYN-01)?
- **Faktenlage:** SYN-01 (grobkosten als EINE fuehrende Kennwerte-DB) ist noch offen; die
  Sets verweisen mit `kosten_referenz.quelle_kb` bereits auf `wissen/grobkosten/`.
- **Offen / Default-Vorschlag:** MVP liest Kosten aus `wissen/grobkosten` (nutzt SYN-01
  faktisch mit), ohne auf den vollen SYN-01-Umbau zu warten. Einverstanden?

### E9 — Umfang MVP vs. Vollausbau (Abgrenzung)?
- **Faktenlage:** Voller Prozess = 5 Schritte inkl. Live-Rechnung + Dossier + Wettbewerbs-
  Fabrik. Das ist zu gross fuer einen ersten Scope.
- **Offen / Default-Vorschlag MVP-Grenze:** MVP = **eine Typologie, eine echte Parzelle,
  Parameter-Set → 2–3 typologisch informierte, ausgerichtete/gegliederte Varianten auf
  swisstopo-Grundlage → Flaechen-/Baurecht-Verifier → Kennzahlen + Grobkosten-Band.** Kein
  Live-Studio, keine Wettbewerbs-Fabrik, kein Materialrender im MVP. Ziehen wir die Grenze so?

---

## 4. Vorschlag Bewertungskriterien (vorab, im Interview zu bestaetigen)

- Der Generator liest ein schema-valides Parameter-Set und erzeugt daraus regelkonforme
  Varianten (Rule 260627b: ausgerichtet + gegliedert + Dachform; 260624: Volumen ausgereizt;
  260627: echte swisstopo-Grundlagen).
- Jede Variante traegt geometrisch exakte Kennzahlen (Baufeld m2, aGF, m3) und ein
  Grobkosten-Band aus `wissen/grobkosten`.
- Der Flaechen-/Baurecht-Verifier ampelt jede Variante gegen Soll (Parameter-Set) und Maximum
  (`machbarkeit`); nichts erfunden, Kennwerte belegt.
- Human-Gate-Punkte klar markiert; die Maschine entscheidet das Parti nicht.

## 5. Vorschlag Verifier (Spec-Pflicht: zweite Instanz + externes Signal)

- Zweite Pruefinstanz: `flaechen-nachweis` (SIA 416) + Baurecht-Max-Abgleich `machbarkeit`.
- Externes Signal: Kennwert-Bandbreite `wissen/grobkosten` (Kosten je m3 GV) als Plausibilitaet.
- Geometrie: Zahlen gegen das Baufeld rueckgerechnet (Generator ist geometrisch exakt).
- Texte im spaeteren Dossier: `korrektur` + `twin`-Gate.

## 6. Naechster Schritt

Interview auf Zuruf starten («Spec SYN-02 starten»). Ablauf dann: E1–E9 durchgehen (gern via
AskUserQuestion), bestaetigte Entscheide in eine finale Spec `..._syn-02_spec.md` giessen,
Deliverable-Checkliste (TaskCreate) fuer den MVP-Scope, dann erst bauen. Kein Bau vor
bestaetigter Spec.

---

## 7. Gueltigkeits-Check 20.07.2026 (Limit-Reset-Lauf)

Das Wochenlimit ist am 20.07.2026 zurueckgesetzt worden; der Task `syn02-spec-anstoss` hat
die Faktenlage von Abschnitt 2 gegen den heutigen Stand geprueft. Ergebnis: **unveraendert
gueltig, keine Frage muss neu gestellt werden.**

| Geprueft | Stand 15.07. | Stand 20.07. | Folge |
|---|---|---|---|
| Schulbau B5 Parameter-Set | ausstehend | weiterhin ausstehend (ETAPPE-3 Stand-Tabelle) | E1 bleibt offen wie formuliert |
| Param-Sets Healthcare/Wohnen | je v1.0 | unveraendert (letzte Aenderung 14.07., `wohnen-mfh-urban.json`) | MVP-Basis weiterhin gegeben |
| `volumen_generator.py` | liest nur CLI-Flags | unveraendert — kein `--parameter-set`, kein JSON-Set-Import | SYN-02-Luecke besteht, E4 bleibt der Kern-Entscheid |
| SYN-01 (fuehrende Kennwerte-DB) | offen | weiterhin offen | E8 bleibt wie vorgeschlagen (MVP liest `wissen/grobkosten` mit) |
| DNA-Loop | B3/B4 Schulbau established | keine neue Etappen-3-Zelle geschlossen (Drossel Rule 260714) | Prioritaetenbild unveraendert |

Damit ist der Spec-Start ohne Nacharbeit moeglich: E1–E9 gelten unveraendert.
