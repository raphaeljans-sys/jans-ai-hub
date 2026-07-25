---
title: "Massnahmen fuer den Skill wettbewerb — priorisiert aus Generalprobe 2102 + PDF-Vektor-Pilot"
status: vorschlag
last_updated: 2026-07-12
sources:
  - "outputs/2026-07-12_generalprobe-muttenz.md (Retrospektive Skill-Generalprobe am jurierten Fall 2102, Trefferquote 3/5)"
  - "outputs/2026-07-12_pdf-vektor-pilot.md (Machbarkeits-Pilot PDF-Vektorextraktion, Entscheid E3)"
  - "wiki/teilnahmen/2102-muttenz.md"
  - "wiki/muster/delta-zum-ersten-rang.md"
links:
  - "[[2102-muttenz]]"
  - "[[delta-zum-ersten-rang]]"
---

# Massnahmen fuer den Skill `wettbewerb` (Vorschlag, priorisiert)

**Wichtig:** Dies ist ein Aenderungs-Vorschlag, kein ausgefuehrter Umbau. Der Skill
`/Volumes/daten/jans-ai-hub/skills/wettbewerb/SKILL.md` wird hier bewusst **NICHT**
geaendert (Entscheid Raphael 12.07.2026). Umsetzung erst nach dessen Freigabe.

## Ausgangslage

Die Generalprobe am real jurierten Fall 2102 Muttenz (4. Rang / 3. Preis) hat die
Leitidee des Skills bestaetigt — die Konformitaets-Schleife lieferte die
«Eintrittskarte» (der Beitrag war formal sauber und kam in die engere Wahl, 7 von 29) —
aber sie hat auch die Grenze scharf gezeigt: von den 5 Jury-Kritikpunkten machte der
simulierte `programm-pruefer` nur 3 als Risiko sichtbar (alle nur Gelb, kein hartes Rot),
und die **2 unsichtbaren Punkte (K1, K2) waren genau die betrieblichen Argumente, mit
denen die Jury das Projekt vom Podest fernhielt**. Kernbefund: der Skill prueft heute
Konformitaet mit den EXPLIZITEN Programm-Solls; die Jury entscheidet ueber IMPLIZITE
Betriebs-Solls (Typologie-Wissen) und ueber den FELD-Vergleich (Kennwerte). Konformitaet
ist die Eintrittskarte, nicht das Podest.

Die Massnahmen sind nach **Hebel auf das Jury-Ergebnis** priorisiert (P1 = trifft die
podest-entscheidenden Punkte), nicht nach Umsetzungsaufwand.

---

## P1 — Betriebsregel-Katalog (implizite Betriebs-Solls je Typologie)

**Befund:** Traf K1 (Lernhalle «kein eigentlicher Mehrwert») und K2 (EG «keine
Nutzungen, die den Pausenplatz beleben») — die beiden komplett unsichtbaren, aber
podest-entscheidenden Punkte. Fehlende Pruefregel, nicht fehlende Daten: die EG-Raum-
Labels waren maschinenlesbar, der EG-Nutzungsanteil am Fussabdruck (unter 25 %)
berechenbar. Es fehlte die Regel.

**Aenderung:**
1. In `wissen/wettbewerbs-dna/wiki/muster/` je Bauaufgabe einen Betriebsregel-Katalog
   fuehren (Startset Schulbau, gespiesen aus Juryberichten). Erste belegte Regeln aus 2102
   und den Schul-Juryberichten: Mittagstisch/Mehrzweckraum ins EG mit Orientierung zum
   Pausenplatz; EG muss den Pausenplatz beleben (messbare Heuristik: EG-Nutzungsanteil am
   Fussabdruck, Schwelle z.B. 50 %); jeder Luftraum/Zentralraum braucht eine benannte
   Nutzung mit Nachweis, wem er dient; Trennung lärmige/ruhige Nutzungen auf verschiedenen
   Geschossen.
2. Agent `programm-leser` erhaelt einen Pflicht-Schritt «implizite Solls aus Bauaufgabe +
   Muster-KB ergaenzen und als solche kennzeichnen». Agent `programm-pruefer` ampelt diese
   impliziten Solls getrennt von den expliziten (damit die Herkunft transparent bleibt).

**Aufwand:** mittel (KB-Artikel + zwei Agenten-Schritte). **Abhaengigkeit:** die KB
`wettbewerbs-dna` liefert den Regelkatalog (kompoundiert mit jedem Jurybericht — genau
dafuer existiert der `jury-argumente-<gruppe>`-Muster-Strang). **Erfolgskriterium:** in
einer Wiederholung der Generalprobe 2102 werden K1 und K2 als Gelb/Rot sichtbar.

---

## P1/P2 — Kennwert-Benchmark-Stufe (Feld-Vergleich statt Absolutwert)

**Befund:** Traf K4 («groesste Geschossflaeche wie auch das groesste Volumen», hohe
Kosten) und K5 (grosser unterirdischer Fussabdruck). Absolut waren die Werte berechenbar
(GF/HNF ~1.8–1.9, GV/HNF ~7.5), aber «groesste im Feld» ist ex ante nicht wissbar — es
fehlte der Referenz-Massstab. Das Programm kuendigt in Kap. 2.13 den Kennwert-Vergleich
der Vorpruefung selbst an; der Skill sollte ihn vorwegnehmen.

**Aenderung:**
1. Agent `flaechen-nachweis` rechnet neu PFLICHTIG die Relationen GF/HNF, GV/HNF,
   Fassadenabwicklung und den Anteil unterirdischen Volumens des eigenen Projekts.
2. Benchmark gegen eine Referenzgroessen-Datenbank in der KB (Aufbau aus publizierten
   Juryberichten + Vorpruefungs-Statistiken). Ampel Rot, sobald das eigene Projekt ueber
   dem Referenzband liegt — das simuliert die Vorpruefungs-Frage «Wie liest uns der
   Bauoekonomie-Experte?» VOR der Abgabe.

**Aufwand:** mittel (Rechenschritt trivial; Referenz-DB muss wachsen). **Abhaengigkeit:**
Referenzband je Bauaufgabe/Kanton — anfangs duenn, wird mit jedem Dossier belastbarer;
bis dahin ehrlich als «Band unsicher, nur Tendenz» ampeln, nie ein hartes Rot vortaeuschen.
**Erfolgskriterium:** K4/K5 in der 2102-Wiederholung als Rot statt Gelb.

---

## P2 — Fluchtweg-Verifier via Skill `brandschutz` + Selbstdeklarations-Verbot

**Befund:** Traf K3 (Fluchtweg-Balkon «kann seine Aufgabe wegen der Richtungsaenderung
nicht erfuellen»). Der Skill markierte das Risiko nur Gelb, weil er die
Selbstdeklaration der Abgabe («zweiter Fluchtweg via Sonnenterrasse und Aussentreppe»)
als Beschrieb nahm statt sie geometrisch zu pruefen.

**Aenderung:**
1. Unabhaengiger Verifier-Schritt: der Skill `brandschutz` prueft Flucht- und
   Rettungswege an der Plan-Geometrie (Fuehrung, Breiten, Richtungswechsel, Distanzen),
   nie am Erlaeuterungstext. Jede Aussen-/Balkon-/Terrassen-Fluchtwegfuehrung ist
   automatisch ein Pflicht-Review-Fall.
2. Generelles **Selbstdeklarations-Verbot** im `programm-pruefer`: eine Behauptung der
   eigenen Abgabe ist kein Nachweis. Ampel Gruen nur bei unabhaengig verifizierbarem
   Beleg (Geometrie, Formular, Fremddokument).

**Aufwand:** klein bis mittel (Skill-Verzahnung wettbewerb ↔ brandschutz; die
Geometrie-Pruefung profitiert vom PDF-/CAD-Weg unten). **Abhaengigkeit:** verwertbare
Fluchtweg-Geometrie (siehe P2/P3 und Nachrangiges). **Erfolgskriterium:** deklarierte,
aber geometrisch mangelhafte Fluchtwege werden als Rot markiert, nicht mehr als Gelb.

---

## P2/P3 — PDF-Pruef-Connector (Flaechen-/Massstabs-/Plansatz-Audit der ABGABE)

**Befund:** Der PDF-Vektor-Pilot (an 2507-Publisher-PDFs) verdikt: **JA fuer
Text/Masse/Beschriftung/Statistik, NEIN fuer Bauteilsemantik.** Robust und schnell
(< 0.4 s/Plan) extrahierbar sind Raumstempel (Nr/Name/m2), das SIA-416-Flaechenblatt
(NF je Geschoss + Total, direkt maschinenlesbar), Massketten/Koten und eine
Massstabs-Rueckrechnung (im Pilot: angeschrieben 1:200, rueckgerechnet 1:199).

**Aenderung — kleiner Pruef-Connector (~1 Tag, PyMuPDF ist im venv `~/.venvs/volumen3d`
schon vorhanden), NICHT als Geometrie-Quelle:**
1. **Flaechen-/Beschriftungs-Check**: Raumstempel + SIA-416-Blatt aus dem Abgabe-PDF
   lesen und gegen Raumprogramm-Soll ampeln (Zulieferer fuer `flaechen-nachweis` /
   `programm-pruefer`). Geprueft wird die ABGABE selbst, nicht das Modell — genau das
   will die Konformitaets-Schleife. Pairing Name↔Flaeche ueber Vertikal-Nachbarschaft
   (das «m2»-Superscript ist in zwei Spans gesplittet).
2. **Massstabs-Verifikation**: angeschriebener vs. rueckgerechneter Massstab, Toleranz ±2 %.
3. **Plansatz-Audit**: Plankopf-Vollstaendigkeit (Kennwort, Massstab, Titel),
   Stift-/Strichstaerken-Konsistenz ueber den Plansatz, Format-Check gegen Abgabevorgabe.

**Ausdruecklich NICHT:** Wand-/Bauteil-Rekonstruktion aus PDF-Pfaden (der Publisher
plaettet alles zu anonymen Pfaden, keine Layer/Semantik) — dafuer bleibt **IFC**
(ifcopenshell) der Hebel (Entscheid E3 bestaetigt). DWG/DXF-Parsing ebenfalls nicht
(IFC ist semantisch reicher, im Spec gesetzt).

**Aufwand:** klein (~1 Tag). **Abhaengigkeit:** keine (Pilot lauffaehig). **Erfolgs-
kriterium:** automatischer Soll/Ist-Flaechenabgleich + Massstabs-/Plankopf-Check aus dem
Abgabe-PDF ohne ArchiCAD.

---

## Nachrangig (P3) — Vollstaendigkeit der Datengrundlage + formale Checks

- **Beilagen-Ingest-Pflicht:** `programm-leser` muss ALLE abgegebenen Unterlagen einlesen
  (bei 2102 fehlten die Raumprogramm-Beilage b, Richtlinien l, Ausbaustandards k) — die
  bindenden raumweisen Betriebs-Anforderungen stehen in den Beilagen, nicht im Programm-PDF.
  Ohne sie bleibt der Soll-Katalog auf Gruppen-Totale beschraenkt (verhinderte die
  K1-Erkennung und den raumscharfen Raumprogramm-Soll/Ist).
- **CAD-Nebenprodukt bei eigenen Abgaben:** der CAD-Pfad erzeugt kuenftig als Nebenprodukt
  eine strukturierte Raumliste (Nr/Name/Flaeche/Geschoss) + ein Fluchtweg-Schema als
  Geometrie (Polylinien mit Laengen). Damit werden Raumprogramm-Soll/Ist und
  Fluchtweg-Distanzen automatisch pruefbar statt aus Pixeln geschaetzt (staerkt P2-Fluchtweg).
- **Formale Detail-Checks in die Abgabe-Checkliste des Scaffolders:** Kennwort-Position
  (bei 2102 oben links statt gefordert oben rechts), Vollstaendigkeit der Ansichten je
  Fassade (nur eine Ansicht abgegeben), jedes explizite «nachzuweisen»-Soll als eigene
  Checklisten-Zeile (Schachtflaechen bei 2102 nicht beziffert), jeder geforderte Standard
  namentlich adressiert (SNBS Gold bei 2102 nicht adressiert).

---

## Zusammenfassung / Reihenfolge

1. **P1 Betriebsregel-Katalog** — groesster Hebel (traf die podest-entscheidenden K1/K2),
   kompoundiert mit der KB.
2. **P1/P2 Kennwert-Benchmark** — traf K4/K5, braucht wachsende Referenz-DB.
3. **P2 Fluchtweg-Verifier + Selbstdeklarations-Verbot** — traf K3, verzahnt mit `brandschutz`.
4. **P2/P3 PDF-Pruef-Connector** — kleiner, sofort machbarer Zulieferer (Abgabe-QS),
   IFC bleibt fuer Geometrie.
5. **P3 Beilagen-Ingest, CAD-Nebenprodukt, formale Checks** — schliessen die Datenluecken.

Leitsatz aus der Generalprobe: der Harness wird vom Konformitaets- zum Podest-Werkzeug
erst, wenn er zusaetzlich (a) implizite Betriebs-Solls aus der Typologie-KB prueft,
(b) Kennwerte gegen Referenzgroessen benchmarkt und (c) sicherheitsrelevante Nachweise
unabhaengig verifiziert. Jeder ausgewertete Jurybericht macht Muster-Katalog und
Referenzgroessen-DB besser.
