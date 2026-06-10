# Wissensbasis: grobkosten — Betriebsanleitung

Kennwerte-Lernmodell fuer die schnelle Grobkostenschaetzung (Volumen × Kennwert, BKP 1–5).
Speist den Skill `grobkosten-onepager` und den Agenten `grobkosten-rechner`.

## Rolle

Claude arbeitet hier als **KI-Bibliothekar** (Rule `wissens-bibliothekar`, Autonomie
*active-with-flagging*): schreibt/verlinkt ohne Rueckfrage, loggt jede Aenderung im `CHANGELOG.md`,
fragt nur vor Destruktivem.

## Struktur

```
grobkosten/
  raw/    ← reale Kostenwerte reinkippen (nie ordnen): Schlussabrechnungen, gepruefte Offerten,
            Benchmarks. Pro Eintrag: Projekt, Nutzung, Standard, Region, GV (m³), Kosten je BKP,
            Quelle, Datum. Claude liest, editiert nie.
  wiki/   ← kompilierte Kennwerte (Claudes Domaene; nie von Hand editieren):
            kennwerte.md (Quelle der Wahrheit), INDEX.md
  outputs/← erzeugte Grobkostenblaetter/Configs; gute Werte fliessen zurueck nach raw/ → wiki/
  CLAUDE.md / CHANGELOG.md
```

## Pflege-Regeln

- **Kennwerte nie raten.** Jeder Wert in `wiki/kennwerte.md` traegt Reife (Seed / belegt n=…) und
  Provenienz. Seed = Marktannahme; belegt = aus realen Werten in `raw/` verdichtet.
- **Compounding:** neuer Realwert → `raw/` → verdichten in `wiki/kennwerte.md` (Median + Band) →
  Reife heben → `CHANGELOG.md`.
- **Preisstand** mitfuehren; veraltete Werte beim `wissenscheck` markieren.
- **Healthcare** nicht hier, sondern ueber `kostenschaetzung` (Wuest-Partner-m²-NF-Daten).

## Verwandt

- Skill `grobkosten-onepager`, Agent `grobkosten-rechner`
- Skill `kostenschaetzung` (detailliert, m²-NF), `kostenkontrolle` (liefert Realwerte zurueck)
- Rules: `wissens-bibliothekar`, `bkp-2017-referenz`, `identifikatoren-verifizieren`
