# SYN-02 Typologischer KI-Entwurfsprozess — Spec

Erstellt: 2026-07-20 · Methode: Skill `spec` (Karpathy/Marchese) · Faktenbasis: Interview-Vorbereitung
`2026-07-15_syn-02-typologischer-entwurfsprozess-spec-interview/` (Gueltigkeits-Check 20.07. bestanden),
Papier GM2/GM3, `SYNERGIE-REGISTER` SYN-02, KBs `wissen/entwurfs-referenzen` · `wissen/wettbewerbs-dna` ·
`wissen/grobkosten`.

Interview: 20.07.2026, E1–E9 via AskUserQuestion mit Raphael bestaetigt.

## Ziel (1 Satz)

Die maschinenlesbaren Parameter-Sets der Wettbewerbs-DNA werden an die Volumen-Pipeline
angeschlossen, sodass aus einer Bauaufgabe typologisch informierte, regelkonform gegliederte
Entwurfsvarianten mit gepruefter Konformitaets-Ampel und belegtem Grobkosten-Band entstehen —
als Kern der Wettbewerbs-Fabrik (GM3).

## Abgrenzung (was NICHT dazugehoert)

- Kein Live-Studio (Regler-Einspeisung ins `machbarkeit-studio`) im MVP — Stufe 2.
- Kein Materialrender, keine Staffelung mehrerer Volumen, kein Materialmodell — Stufe 2.
- Kein Wettbewerbs-Fabrik-Vollausbau (Abgabe-Deliverables, Plakat, Bericht) im MVP — der MVP
  liefert den gepruefte Variantenkatalog als Vorstufe.
- Kein neuer Skill: der MVP lebt als Tool in `skills/volumenstudie/tools/`, orchestriert von
  `machbarkeit`.
- Kein Warten auf den vollen SYN-01-Umbau: Kennwerte werden aus `wissen/grobkosten` gelesen,
  wie sie heute liegen.
- Das Parti entwirft die Maschine NIE — sie liefert den gepruefte Moeglichkeitsraum.

## Ist-Zustand (Scan 15.07., revalidiert 20.07.)

`volumen_generator.py` liest nur CLI-Variantenflags (grenzabstand/geschosse/geschosshoehe/hoehe)
und erzeugt einfache Extrusions-Prismen — das Parameter-Set-JSON (reiches Schema: gebaeude,
flaechen, materialien, kosten_referenz, entwurfs_regeln) wird nirgends gelesen. Genau hier
klafft die SYN-02-Luecke. Parameter-Sets vorhanden: `healthcare-neubau-zh.json` v1.0,
`wohnen-mfh-urban.json` v1.0; Schulbau-Set (B5) ausstehend, obwohl Schulbau-DNA established
(23/23 Destillate). Verifier-Bausteine existieren getrennt: `flaechen-nachweis`,
`programm-pruefer`, `machbarkeit` (Baurecht-Maxima), `wissen/grobkosten` (Kennwert-Baender).

## Schluesselentscheide (bestaetigt 2026-07-20)

- **E1 MVP-Typologie:** Healthcare oder Wohnen (vorhandenes Set v1.0 → Kette sofort
  lauffaehig); Schulbau-Set (B5) parallel nachziehen und als erste echte Anwendung nehmen.
  *Noch beweglich:* welches der beiden Sets konkret — Vorschlag `wohnen-mfh-urban.json`
  (haeufigster Wettbewerbsfall MFH); Festlegung bei der Parzellenwahl in Block 1.
- **E2 Absatzkanal:** **Wettbewerbs-Fabrik (GM3) zuerst** — der Wettbewerb gibt den Takt;
  der MVP wird auf den Wettbewerbs-Harness ausgerichtet (Abweichung vom Default
  «Variantenstudie GM2»). Variantenstudien fuer Bauherren profitieren als Nebenprodukt.
- **E3 Human Gates:** **Nur Gate c (Parti).** Die Pipeline laeuft autonom bis zum gerenderten
  Variantenkatalog durch; kein Pflicht-Gate fuer Set-Freigabe (Schema-Validierung `validate.py`
  ersetzt das menschliche Vorab-Gate) und keines vor dem Rendering. Parti/Gestalt-Entscheid
  bleibt vollstaendig Hand.
- **E4 MVP-Tiefe:** **Adapter + minimale Gliederungs-/Ausrichtungslogik** (Firstrichtung,
  Baukoerper an Parzellenachse, Dachform aus dem Set) — Resultat regelkonform nach Rule
  260627b. Feinausbau (Material, Staffelung) Stufe 2.
- **E5 Verifier:** **Flaechen + Baurecht + Programm-Pruefer**: `flaechen-nachweis` (SIA 416)
  gegen das Parameter-Set-Soll, Baurecht-Max-Abgleich aus `machbarkeit`, PLUS voller
  `programm-pruefer`-Durchlauf (Soll/Ist-Ampel) — passend zur Wettbewerbs-Fabrik. Externes
  Signal: Kennwert-Band aus `wissen/grobkosten`.
- **E6 Studio-Anschluss:** MVP liefert **Variantenkatalog**; Live-Studio-Einspeisung Stufe 2.
- **E7 Owner/Ablage:** Adapter-Tool `typologie_zu_variante.py` in
  `skills/volumenstudie/tools/`, orchestriert von `machbarkeit`; kein neuer Skill.
- **E8 Kennwerte:** MVP liest `wissen/grobkosten` (nutzt SYN-01 faktisch mit, ohne auf den
  Umbau zu warten).
- **E9 MVP-Grenze:** eine Typologie, eine echte Parzelle, Parameter-Set → 2–3 typologisch
  informierte, ausgerichtete/gegliederte Varianten auf swisstopo-Grundlage →
  Verifier-Kette → Kennzahlen + Grobkosten-Band. Nicht mehr.

## Bewertungskriterien (vorab)

- Der Generator liest ein schema-valides Parameter-Set und erzeugt daraus regelkonforme
  Varianten: ausgerichtet + gegliedert + Dachform (Rule 260627b), Volumen ausgereizt
  (Rule 260624), echte swisstopo-Grundlagen (Rule 260627).
- Jede Variante traegt geometrisch exakte Kennzahlen (Baufeld m2, aGF, m3, rueckgerechnet
  gegen das Baufeld) und ein Grobkosten-Band aus `wissen/grobkosten` — nichts erfunden,
  Kennwerte belegt.
- Die Verifier-Kette ampelt jede Variante dreifach: SIA-416-Flaechen gegen Set-Soll,
  Baurecht-Maximum (`machbarkeit`), Programm-Konformitaet (`programm-pruefer`).
- Human Gate klar markiert: die Maschine entscheidet das Parti nicht; alles davor laeuft
  autonom durch (E3).
- Der Variantenkatalog ist wettbewerbs-anschlussfaehig (Kennzahlen/Ampeln in der Form, die
  `wettbewerb`/`flaechen-nachweis` als Input erwarten).

## Plan (enge Scopes + Checkpoints)

- [ ] **Block 1 — Adapter:** `typologie_zu_variante.py` liest Parameter-Set-JSON
  (Schema-Validierung via `validate.py`) und erzeugt 2–3 Varianten-Definitionen
  (Geschosse/Hoehen/Tiefe/Dachform/Orientierung aus dem Set, Zonen-Maxima als Deckel).
  Parzellenwahl + Set-Festlegung (E1 beweglich) gehoeren hierhin.
  → Checkpoint: Varianten-Definitionen als JSON/CLI-Aufrufe sichtbar, Review.
- [ ] **Block 2 — Generator-Erweiterung Minimal-Gliederung:** Firstrichtung, Ausrichtung an
  Parzellenachse, Dachform aus Set; echte swisstopo-Grundlage (Situationsmodell).
  → Checkpoint: 3dm/Rendering der Varianten, regelkonform 260627b, Review.
- [ ] **Block 3 — Verifier-Kette:** `flaechen-nachweis` gegen Set-Soll + Baurecht-Max
  (`machbarkeit`) + `programm-pruefer`-Ampel; Kennwert-Band aus `wissen/grobkosten`.
  → Checkpoint: Ampel-Report je Variante, Review.
- [ ] **Block 4 — Variantenkatalog:** Kennzahlen + Grobkosten-Band + Ampeln je Variante als
  Dossier (Layout-Standard, durch `korrektur`).
  → Checkpoint: Katalog an Raphael — **Parti-Human-Gate**, Abnahme des MVP.
- [ ] **Parallel (nicht MVP-kritisch):** Schulbau-Parameter-Set B5 nachziehen (erste echte
  Anwendung nach MVP-Abnahme).

## Verifikation

- Autoritative Instanz (bindend): **der Architekt am Parti-Human-Gate** (bueroeigener
  Entwerfer; im spaeteren Wettbewerbs-Einsatz: die Jury gemaess Zeile «Wettbewerb» der
  [[verifier]]-Tabelle).
- Zweite Pruefinstanz: `flaechen-nachweis` (SIA 416 gegen Set-Soll) + Baurecht-Max
  (`machbarkeit`) + `programm-pruefer` (Soll/Ist-Ampel).
- Externes Signal (Indiz): Kennwert-Band `wissen/grobkosten` (CHF/m3 GV) + geometrische
  Rueckrechnung der Kennzahlen gegen das Baufeld.
- Format-Vorlage: JANS-Referenz-Variantenstudien (Gliederung/Ausrichtung); fuer den Katalog
  der Grobkosten-Onepager-Standard.
- Zweite Textinstanz: `korrektur` (+ `twin`-Gate bei ausgehenden Fassungen).

## Faktenbasis

- Interview-Vorbereitung `outputs/2026-07-15_syn-02-typologischer-entwurfsprozess-spec-interview/`
  (Scan 15.07., Gueltigkeits-Check 20.07.).
- `wissen/entwurfs-referenzen/parameter-schema/entwurfs-parameter.schema.json` + Sets
  `healthcare-neubau-zh.json` / `wohnen-mfh-urban.json` (je v1.0).
- `wissen/wettbewerbs-dna/training/ETAPPE-3.md` (Schulbau B3/B4 established, B5 ausstehend;
  Prioritaet Raphael 14.07.2026).
- `skills/volumenstudie/tools/` (Generator + Situations-/Render-Tools), Rules 260624/260627/260627b.
- `wissen/koordination/SYNERGIE-REGISTER.md` (SYN-02, SYN-01 offen, SYN-03/S5 aktiviert).

## Monitor-Log

- 2026-07-20: Spec erstellt und bestaetigt (Interview E1–E9). MVP-Bau: Block 1 startet auf
  Freigabe. Verifier-Zeile «Entwurfsprozess» in [[verifier]] promoviert.
