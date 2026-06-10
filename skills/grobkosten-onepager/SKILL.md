---
name: grobkosten-onepager
description: >
  Grobkosten-Onepager-Agent fuer JANS — erzeugt eine einseitige, sofort lesbare
  Grobkostenschaetzung nach der einfachen Logik Volumen x Kennwert (BKP 1-5),
  praesentierwuerdig mit grossen Kosten-Kennzahlen je Variante. Diesen Skill
  verwenden wenn der Benutzer fragt: "Grobkosten auf einer Seite", "Kostenuebersicht
  Varianten", "Volumen mal Koeffizient", "Kosten-Onepager", "schnelle Grobkosten je
  Variante", "Praesentationsblatt Kosten", "was kostet das ueberschlaegig je Variante",
  "Kostenblatt fuer die Bauherrschaft". Schlankes, schnelles Gegenstueck zum Skill
  kostenschaetzung (dort die detaillierte m2-NF-/BKP-Schaetzung): hier eine A4-Seite,
  Volumen x Kennwert, fuer fruehe Studien/Varianten. Nutzt das Lernmodell
  wissen/grobkosten (Kennwerte-DB, kompoundierend) und den Agenten grobkosten-rechner.
---

Base directory for this skill: /Volumes/daten/jans-ai-hub/skills/grobkosten-onepager

# Grobkosten-Onepager JANS

## Contract

- **Trigger:** Wenn eine schnelle, praesentierwuerdige Grobkosten-UEbersicht auf EINER A4-Seite verlangt wird — typisch fuer mehrere Volumen-/Studien-Varianten in fruehen Phasen. Logik bewusst simpel: **Volumen x Kennwert**.
- **Inputs:** Je Variante ein Gebaeudevolumen (GV, m3, idealerweise SIA 416) + Kurzbeschrieb; ein Kennwert (CHF/m3) mit Bandbreite; optional ein Zuschlag (z.B. Hang). Kennwert kommt aus der KB `wissen/grobkosten/wiki/kennwerte.md` (nie raten — belegen).
- **Output-Ablage:** Projektordner (z.B. `04_KostenTermine`) ODER AI-Hub-Output `30 JANS AI HUB OUTPUT/kostenschaetzung/`; Namensschema `JJMMTT_Grobkostenschaetzung_<Thema>.docx` + PDF + die `*.config.json` (Reproduzierbarkeit).
- **Abhaengige Rules:** umlaute-konvention, dokument-layout-standard, dateinamen-konvention, bkp-2017-referenz; **Korrektur-Pflicht** via Skill `korrektur` vor Ausgabe.
- **Vorgelagert:** `machbarkeit` / Variantenstudie (liefert die Volumen je Variante).
- **Nachgelagert:** `kostenschaetzung` (detaillierte m2-NF-/BKP-Schaetzung), `kostenkontrolle` (Ausfuehrung).

Schlankes Gegenstueck zum Skill `kostenschaetzung`: nicht detailliert nach m2-NF/BKP,
sondern **eine A4-Seite, Volumen x Kennwert**, gross und auf den ersten Blick klar —
fuer die Bauherrschaft in der Studienphase.

## Methode (bewusst einfach)

```
Erstellungskosten (BKP 1-5)  ≈  Gebaeudevolumen GV  ×  Kennwert (CHF/m3)
Bandbreite                   =  GV × Kennwert_low … GV × Kennwert_high
Zuschlag (optional)          ×  (1 + Zuschlag%)        z.B. Hanglage, Untergeschoss-Aushub
```

- **GV** = Gebaeudevolumen nach SIA 416 (inkl. Untergeschoss), NICHT die baurechtliche
  Baumasse (die ist meist kleiner, weil nur oberirdisch). Bei Bedarf umrechnen/abschaetzen.
- **Kennwert** = BKP 1-5 (Gebaeude + Umgebung + Baunebenkosten inkl. Planerhonorare),
  exkl. Land (BKP 0), Reserven/Finanzierung (BKP 6-9). Quelle: KB `wissen/grobkosten`.
- Immer als **Grobschaetzung ±25 %** deklarieren, keine Kostengarantie.

## Ablauf

1. **Volumen je Variante** aus der Variantenstudie/Machbarkeit uebernehmen (GV SIA 416).
2. **Kennwert + Band** aus `wissen/grobkosten/wiki/kennwerte.md` waehlen (Nutzung, Region,
   Standard, Neubau/Umbau). Kennwert nie erfinden — wenn keiner passt, Agent
   `grobkosten-rechner` beauftragen oder Skill `kostenschaetzung` heranziehen.
3. **Config schreiben** (`*.config.json`, Schema siehe unten) und Generator ausfuehren:
   ```
   python tools/build_grobkosten_onepager.py <config.json> <ausgabe.docx>
   bash ~/Developer/jans-ai-hub/scripts/docx2pdf.sh <ausgabe.docx>
   ```
4. **Korrektur** (Skill `korrektur`) und PDF visuell pruefen (eine Seite, keine Umbrueche).
5. **Ablegen** (Projektordner + Config daneben) und **Lernschleife** anstossen (siehe unten).

## Config-Schema (`*.config.json`)

```json
{
  "titel": "Grobkostenschätzung Ersatzneubau — <Ort>",
  "zeile2": "Studie <Nr> · Volumen × Kennwert (BKP 1–5) · …",
  "datum": "JJMMTT",
  "summary": "Erstellungskosten: rund CHF X–Y Mio je nach Variante (BKP 1–5, ±25 %).",
  "kennwert": 950, "band_low": 850, "band_high": 1050,
  "einheit": "m³", "bkp": "BKP 1–5",
  "kennwert_quelle": "… (mit Herkunft/Stand)",
  "varianten": [
    {"name": "A — …", "kurz": "…", "volumen": 1600, "zuschlag_pct": 0, "zuschlag_label": ""},
    {"name": "C — …", "kurz": "…", "volumen": 1850, "zuschlag_pct": 10, "zuschlag_label": "Hang"}
  ],
  "herleitung": ["…"], "vorbehalte": ["…"], "footer": "…"
}
```

## Lernmodell (Compounding) — Pflicht-Schleife

Dieser Skill wird mit jeder Anwendung besser, weil er die Kennwerte aus realen Daten nachfuehrt:

1. **Nutzen:** Kennwert immer aus `wissen/grobkosten/wiki/kennwerte.md` ziehen (belegt, mit Stand).
2. **Zurueckspeisen:** Wird spaeter ein realer Kostenwert bekannt (Schlussabrechnung via
   `kostenkontrolle`, eine gepr12fte Unternehmer-Offerte, ein Benchmark), als Rohwert in
   `wissen/grobkosten/raw/` ablegen — Rohmaterial nie ordnen, nur reinkippen.
3. **Kompilieren:** Der KI-Bibliothekar (Rule `wissens-bibliothekar`) verdichtet die Rohwerte
   in `wiki/kennwerte.md` (Median + Band je Nutzung/Region/Standard), aktualisiert den Stand
   und protokolliert im `CHANGELOG.md`.
4. So wandert der Kennwert vom **Erfahrungswert-Seed** schrittweise zu **datenbelegt** —
   die 50. Schaetzung steht auf den realen Werten der ersten 49.

Health-Check: Skill `wissenscheck` auditiert `wissen/grobkosten` (unbelegte Claims, veraltete Kennwerte).

## Abgrenzung

- **`kostenschaetzung`** (Schwester): detailliert, m2-NF nach SIA 416, BKP-Struktur, Wuest-Partner-Daten — fuer belastbarere Phasen.
- **`grobkosten-onepager`** (dieser Skill): eine Seite, Volumen x Kennwert, Praesentation in der Studienphase.
- Bei Healthcare-Nutzung die Kennwerte aus `kostenschaetzung` (Wuest Partner) bevorzugen.

## Referenzen

`referenzen/` — hochpriorisierte Kennwert-Quellen (Marktreports, interne Auswertungen).
Lernmodell/Kennwerte-DB: `wissen/grobkosten/`.
