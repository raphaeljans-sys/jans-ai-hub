---
name: wettbewerb
description: >-
  Wettbewerbs-Harness fuer Architektur-Konkurrenzen — orchestriert aus dem
  Wettbewerbsprogramm-PDF die pruefbaren Abgabe-Liefergegenstaende und zieht den Entwurf
  ueber eine Konformitaets-Schleife so lange gegen das Programm, bis jede Soll-Vorgabe
  erfuellt ist. Erzeugt/verifiziert: Raumprogramm- und Flaechen-Nachweis (SIA 416),
  Erlaeuterungsbericht, Konzept-Schemas, Plakat-Layout-Geruest, Situationsmodell-STL (3D-Print)
  und eine luckenlose Abgabe-Checkliste. Diesen Skill verwenden wenn der Benutzer fragt:
  "Wettbewerb aufsetzen", "Wettbewerbsprogramm auswerten", "Konkurrenz abgeben",
  "Abgabe-Checkliste Wettbewerb", "Raumprogramm-Nachweis", "Plakatlayout Wettbewerb",
  "Wettbewerbsbeitrag generieren", "Flaechennachweis Abgabe". Mantelstufe wie
  studien-generator, aber fuer Wettbewerbe statt Studien; nutzt volumenstudie (Volumen/STL),
  machbarkeit/baurecht (Rahmen), planungsgrundlagen (Geodaten), grobkosten-onepager (Kennzahl);
  Geometrie-/Bildproduktion bleibt Mensch + Fachwerkzeug (siehe Reife-Ampel).
---

# JANS Wettbewerbs-Harness (Programm-PDF -> verifizierte Abgabe)

## Contract

- **Trigger:** Greift, sobald ein Architektur-Wettbewerb aufgesetzt oder ein
  Wettbewerbsprogramm-PDF zu einer Abgabe verarbeitet werden soll. Mantelstufe um die
  Fach-Skills, analog `studien-generator` — erzeugt das Gefaess + die pruefbaren Nachweise
  und fuehrt die Konformitaets-Schleife.
- **Inputs:** Wettbewerbsprogramm-PDF (Pflicht), Projektnummer + Name, Ort/Parzelle,
  Wettbewerbsart (offen/selektiv/Studienauftrag), Abgabeformat (Planformat/Massstaebe/
  Boardzahl), Termine. Optional Parti/Entwurfsidee des Architekten (Human Gate, Phase 2).
- **Output-Ablage:** Projektordner `OneDrive/AR - 04 Wettbewerbe/<nr> <name>/` mit 12er-
  Ordnerstruktur (Pfad bei Erstnutzung verifizieren — Rule identifikatoren-verifizieren);
  Skelette (Raumprogramm-Soll, Erlaeuterungsbericht, Abgabe-Checkliste) in `01`/`07`/`08`/`11`.
  Finale Abgabe-PDFs in `11_Abgabe`; Output-Kopie nach SharePoint `30 JANS AI HUB OUTPUT`.
- **Abhaengige Rules:** dateinamen-konvention, dokument-layout-standard, umlaute-konvention,
  identifikatoren-verifizieren (Projektnr./Adresse/Parzelle/Termine), bkp-2017-referenz,
  auftrags-dekomposition; **Korrektur-Pflicht** (jeder Abgabetext via Skill `korrektur`).
- **Vorgelagert:** planungsgrundlagen (Geodaten), machbarkeit/baurecht (Rahmen) — soweit
  vorhanden; sonst startet der Harness mit dem Programm-PDF.
- **Nachgelagert:** volumenstudie (Volumen/STL), grobkosten-onepager (Kennzahl),
  honorarberechnung-sia102 (bei Auftrag nach Gewinn).

## Leitidee

Der Hebel des Harness ist **nicht** der autonome Gewinner-Entwurf, sondern die
**geschlossene Konformitaets-Schleife**: jeder Liefergegenstand wird gegen das aus dem
Programm extrahierte **Soll** geprueft und nachgezogen, bis er passt. Der gestalterische
Kern (das Parti) wird vom Architekten **gesetzt** (Human Gate), nicht halluziniert. So
produziert der Harness die laborintensive, verifizierbare Substanz und bereitet die
kreativen/visuellen Teile sauber vor — statt sie vorzutaeuschen.

```
Programm-PDF
  └─ programm-leser   → Raumprogramm-Soll · Abgabevorgaben · Termine · Kriterien
HUMAN GATE: Parti/Entwurfsidee setzt der Architekt
  └─ volumenstudie    → Baufeld · Volumen je Variante · Situationsmodell-STL (3D-Print)
Nachweise (auto + verifizierbar)
  ├─ flaechen-nachweis → SIA 416, Soll/Ist-Delta
  ├─ bericht-autor     → Erlaeuterungsbericht  (Roadmap)
  └─ schema-zeichner   → Konzeptdiagramme       (Roadmap)
Layout
  └─ plakat-setzer     → Board-Geruest          (Roadmap)
KONFORMITAETS-SCHLEIFE
  └─ programm-pruefer  → Ampel je Vorgabe; bei Rot zurueck in Phase 2/3
```

## Reife je Liefergegenstand (ehrliche Ampel)

| Deliverable | Reife heute | Lieferant |
|---|---|---|
| Flaechen-/Raumprogramm-Nachweis (SIA 416) | gruen (verifizierbar) | `flaechen-nachweis` |
| Erlaeuterungsbericht / Beschriebe | gruen | `bericht-autor` (Roadmap), `korrektur` |
| Konzept-Schemas (Erschliessung/Tragwerk/Energie/Brandschutz) | gruen-gelb | `schema-zeichner` (Roadmap) |
| Plakat-Layout (Boards, nummeriert) | gelb (Geruest) | `plakat-setzer` (Roadmap) |
| 3D-Print Situationsmodell (Einsatzmodell) | gelb | `volumenstudie` (OBJ/STL) |
| Plaene (Grundriss/Schnitt/Ansicht) | orange (CAD noetig) | Mensch + CAD |
| Visualisierungen / Bilder | rot (externer Render) | Mensch + Render/Bild-Tool |

Verbindlich: Der Harness behauptet nie, einen roten/orangen Punkt vollautomatisch geliefert
zu haben. Was nicht maschinell belastbar erzeugt wurde, wird in der Abgabe-Checkliste offen
als **offen/Hand** markiert.

## Standard-Ordnerstruktur (Wettbewerb)
`00_Admin · 01_Wettbewerbsprogramm · 02_Grundlagen · 03_Entwurf · 04_Plaene ·
05_Visualisierung · 06_Schemas · 07_Flaechen · 08_Bericht · 09_Plakate ·
10_Modell · 11_Abgabe`

## Workflow (Stufen)

1. **Scaffolden** — Ordner + Skelette + Abgabe-Checkliste anlegen:
   ```
   python3 /Volumes/daten/jans-ai-hub/skills/wettbewerb/tools/scaffold_wettbewerb.py \
     --nr 2702 --name "Schulhaus Musterquartier" --ort "8000 Zuerich" \
     --art selektiv [--basis "<AR - 04 Wettbewerbe>"] [--dry-run]
   ```
   `--dry-run` zeigt Vorschau ohne zu schreiben. Existiert der Ordner, werden Ordner
   ergaenzt und Skelette NICHT ueberschrieben (kein Datenverlust).
2. **Programm lesen** — Agent `programm-leser` zieht aus dem PDF Raumprogramm-Soll,
   Abgabevorgaben, Termine, Beurteilungskriterien; fuellt `01_Wettbewerbsprogramm/
   Raumprogramm-Soll.md` und die Abgabe-Checkliste. Nichts erfinden — was im Programm
   unklar ist, als **Rueckfrage an die Wettbewerbsausschreiber** vermerken.
3. **Parti setzen (Human Gate)** — der Architekt gibt die Entwurfsidee/Varianten vor.
   Erst danach Geometrie: `volumenstudie` (Baufeld, Volumen, Situationsmodell-STL).
4. **Nachweise** — `flaechen-nachweis` (SIA 416 Soll/Ist), Bericht/Schemas (Roadmap).
5. **Konformitaets-Schleife** — Agent `programm-pruefer` ampelt jede Vorgabe; bei Rot
   zurueck in Phase 3/4, bis alles gruen oder als bewusste Abweichung begruendet ist.
6. **Abgabe** — Texte durch Skill `korrektur`; Plakate/PDFs in `11_Abgabe`; doppelte Ablage.

## SVG-Generatoren (Stufe 2)

Die Agenten `schema-zeichner` / `plakat-setzer` *beschreiben* — diese Tools *rendern* das
masshaltige Geruest (abhaengigkeitsfrei, reines Python, gueltiges SVG):

```bash
# Board-Geruest je Plan (Papierformat, Platzhalter, Pflichtleiste Kennwort/Massstab/Nord)
python3 skills/wettbewerb/tools/build_board.py \
  --name 2702_Schulhaus --boards 2 --format A0 --orientierung hoch \
  --kennwort "TANGRAM" --out "<Projekt>/09_Plakate"

# Konzept-Schema je Thema (erschliessung|tragwerk|energie|brandschutz)
python3 skills/wettbewerb/tools/build_schema.py \
  --thema erschliessung --name 2702_Schulhaus --out "<Projekt>/06_Schemas"
```

Beide erzeugen bewusst ein **Geruest/Konzeptdiagramm** (kein Feinsatz, nicht massstaeblich);
leere Platzhalter bleiben in der Abgabe-Checkliste rot/orange. Anonymitaet gewahrt (kein
Bueroname/Logo).

## Fan-out-Agenten

| Agent | Rolle | Status |
|---|---|---|
| `programm-leser` | Programm-PDF -> strukturiertes Soll (Raumprogramm/Vorgaben/Termine/Kriterien) | MVP |
| `flaechen-nachweis` | SIA-416-Flaechen-/Raumprogramm-Nachweis, Soll/Ist-Delta | MVP |
| `programm-pruefer` | Konformitaets-Schleife: Ampel je Programmvorgabe, Rueckkopplung | MVP |
| `bericht-autor` | Erlaeuterungsbericht/Beschriebe aus Konzept + Kennzahlen | Stufe 2 |
| `schema-zeichner` | Konzeptdiagramme (Erschliessung/Tragwerk/Energie/Brandschutz), SVG | Stufe 2 |
| `plakat-setzer` | Board-Layout-Geruest nach Abgabeformat (Plan-/Bildplatzierung), SVG | Stufe 2 |

## Hinweise

- Der Scaffolder schreibt nur ins Wettbewerbs-Archiv (OneDrive), nichts ins Repo.
- Projektnummer-Konvention wie im Archiv (JJNN). Adresse/Parzelle/Termine verifizieren
  (Rule `identifikatoren-verifizieren`) — Abgabetermine sind hart, nie raten.
- Geometrie-Parameter (Grenzabstand/Hoehe/Geschosse) sind Inputs; baurechtlich verbindliche
  Werte liefert `machbarkeit`/`baurecht`. `volumenstudie` rechnet nur die Geometrie.
- STL fuers Situationsmodell: aus den `volumenstudie`-OBJ/`situationsmodell.py`-Outputs;
  Druckvorbereitung (Wandstaerke/Skalierung Einsatzmodell) als eigener, markierter Schritt.

## Roadmap (naechste Ausbaustufen)

1. MVP "Programm-zu-Nachweis" haerten: `programm-leser` + `flaechen-nachweis` +
   `programm-pruefer` an einem realen JANS-Wettbewerbsprogramm validieren.
2. ~~Bericht/Schemas/Plakat: `bericht-autor` + `schema-zeichner` + `plakat-setzer` als
   Agent-Files~~ erledigt (Stufe 2) — fehlen noch die SVG-Generatoren (tools/).
3. ~~SVG-Generatoren bauen: `tools/build_schema.py` + `tools/build_board.py`~~ erledigt
   (abhaengigkeitsfrei, SVG-validiert). Naechste Feinung: Board-Slots aus dem Programm-Soll
   automatisch ableiten statt Default-Set.
4. STL-Druckvorbereitung im `volumenstudie`-Pfad als benannter Schritt (Einsatzmodell).
5. Plaene/Bilder: erst wenn ein belastbarer CAD-/Render-Pfad steht (eigene Stufe, eigenes Risiko).

## Orchestrierung als Multi-Agent-Workflow (autorisiert 12.07.2026)

Fuer grosse Laeufe dieses Skills sind Multi-Agent-Workflows von Raphael freigegeben
(Rule auto-verbesserungen 260712). Muster:

1. **Paralleler Fan-out statt sequenzieller Kette:** die unabhaengigen Grundlagen-Stufen
   (Geodaten/OEREB, Baurecht/Zone, Volumen, Kennwerte/Kosten, Bewertung/Markt) laufen als
   parallele Workflow-Agenten, nicht nacheinander.
2. **Judge-Panel:** ein Richter-Schritt prueft die Teilresultate GEGENEINANDER auf
   Konsistenz (z.B. aGF aus Volumenstufe = aGF in der Kostenstufe; Kennwert-Herkunft belegt;
   Parzellen-/EGRID-Identitaet ueberall gleich). Widersprueche zurueck an die betroffene Stufe.
3. **Konformitaets-Schleife bis gruen:** Soll/Ist-Ampel gegen die Anforderungen (Programm,
   Auftrag, Checkliste) laeuft als Schleife, bis alle Pflichtpunkte erfuellt oder ehrlich
   als offen markiert sind — nie schoenfaerben.
4. **Verifikations-Pflicht:** Zahlen und Fundstellen werden von einem unabhaengigen
   Pruef-Agenten an der Quelle gegengeprueft, bevor sie ins Deliverable gehen
   (Verifier-Prinzip der Spec-Methode).

Human Gates (Parti, Schluesselentscheide, Versand) bleiben unveraendert bestehen.
