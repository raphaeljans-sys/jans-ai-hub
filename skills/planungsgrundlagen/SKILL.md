---
name: planungsgrundlagen
description: >-
  Planungsgrundlagen-Harness fuer JANS — beschafft und buendelt zu einer Parzelle/Adresse
  die planerischen Grundlagen aus den vier PL-Bibliotheken (Kartenportale, Recht/Norm,
  Brandschutz, Energie). Kernfaehigkeit: amtliche Geodaten-Beschaffung — OEREB-Auszug,
  EGRID-Ermittlung, Grundstueckkataster, Zonenplan, Hoehenmodell, Orthofoto, Eigentumsabfrage
  (Kt. ZH via maps.zh.ch / geo.admin.ch, kein Login noetig). Diesen Skill verwenden wenn der
  Benutzer fragt: "OEREB-Auszug", "OEREB Kataster", "EGRID herausfinden", "Eigentumsabfrage",
  "Grundbuch/Parzelle abfragen", "Zonenplan beschaffen", "Kataster", "Grundstueckdaten",
  "Plangrundlagen besorgen", "Geodaten", "Hoehenmodell", "Orthofoto", "Situationsplan amtliche
  Vermessung", "Baulinienplan", "Grundlagen fuer Parzelle/Adresse X", "Planungsunterlagen
  zusammenstellen", "U-Wert berechnen", "PV/Solar Eignung", "Energienachweis", "welches
  Geoportal fuer Kanton X". Nutzt den Connector connectors/geo-zh.mjs und fan-out auf die
  Agenten geodaten-beschaffer (PL-01) und energie-berater (PL-04); fuer Recht/Norm (PL-02) und
  Brandschutz (PL-03) ruft es die bestehenden Skills baurecht und brandschutz als Faktenbasis.
  Speist die Wissens-KB wissen/planungsgrundlagen und die Studien-Skills machbarkeit/
  ankaufspruefung/behoerden-vorabklaerung mit den beschafften Grundlagen.
---

# Planungsgrundlagen-Harness

Das **Front-End fuer planerische Grundlagenarbeit**: zu einem Ort, einer Parzelle oder einer
Fachfrage stellt dieser Skill die richtigen Grundlagen zusammen — beschafft sie wo moeglich
automatisch (Geodaten), recherchiert sie sonst in den vier PL-Bibliotheken und den
Fach-Skills, und legt sie projektgerecht ab.

Destilliert aus den vier buerofweiten **PL-Grundordnern** auf SharePoint:

| PL-Ordner | Domaene | Behandlung in diesem Harness |
|---|---|---|
| PL - 01 Kartenportale | Geodaten / Kartenportale | **Kernfaehigkeit** — Agent `geodaten-beschaffer` + Connector `geo-zh.mjs` |
| PL - 02_Recht_Norm | Recht & Normen | verweist auf Skill `baurecht` + KB `wissen/baurecht` (kein Doppel) |
| PL - 03 Brandschutz | Brandschutz (VKF) | verweist auf Skill `brandschutz` |
| PL - 04 Energie | Energie / PV / U-Wert | Agent `energie-berater` (Kandidat fuer eigenes Skill `energie-nachweis`) |

## Wann dieser Skill, wann ein anderer

- **Hier**, wenn es ums *Beschaffen/Buendeln von Grundlagen* geht (OEREB, Kataster, Zonenplan,
  Geodaten, Plangrundlagen fuer ein Projekt, Energie-/U-Wert-Frage).
- **`baurecht`**, sobald die Frage *rechtlich/auslegend* wird (Ausnuetzung rechnen, Abstaende,
  Bewilligungsfaehigkeit). Dieser Skill liefert dann die Grundlage, `baurecht` die Wuerdigung.
- **`machbarkeit` / `ankaufspruefung` / `behoerden-vorabklaerung`**: diese rufen
  `planungsgrundlagen` als Vorstufe, um die Datengrundlage (EGRID, OEREB, Zone) zu holen.

## Workflow

### A — Geodaten-Beschaffung (PL-01, der Hauptfall)

1. **Ort bestimmen.** Adresse oder Parzelle vom Benutzer; bei Unklarheit Gemeinde nachfragen.
2. **EGRID ermitteln.** Connector `connectors/geo-zh.mjs --adresse "..."` →
   liefert EGRID + Parzellennummer + BFS. EGRID wird **nie erfunden** (Rule
   `identifikatoren-verifizieren`); bei 0/mehrdeutigen Treffern Mensch fragen.
3. **OEREB-Auszug beziehen.** `--oereb --out <Ordner>` (mehrere `--out` moeglich).
   Kein Login noetig (Kt. ZH, bestaetigt Fachstelle GIS). Dateiname = Server-Konvention
   `Oereb-Auszug_<BFS>_<Parzelle>_<JJJJ-MM-TT>.pdf`.
4. **Weitere Produkte** (auf Wunsch): Grundstueckkataster, Zonenplan, Hoehenmodell, Orthofoto,
   Baulinien — Bezugswege in `wissen/planungsgrundlagen/wiki/` (Domaene Kartenportale).
5. **Ablage** standardmaessig in **beide** Orte: die buerofweite Bibliothek
   `PL - 01 Kartenportale/OEREB-Auszug` **und** den Projektordner
   `AR - 03 Studien/<Projekt>/01_Plaene/99 Plangrundlage` (bzw. `01 Projekte`).
6. **Quittung** an den Benutzer: EGRID, Parzelle, Ablageorte, Seitenzahl.

### B — Recht/Norm (PL-02) → Skill `baurecht`
Frage an `baurecht` durchreichen; PL-02 ist die reichere Rohquelle (Gesetze Bund/SZ/ZH,
Rechtsprechung, Dispensrecht, Baurechtsanalysen, SIA/VKF/DIN-Normen).

### C — Brandschutz (PL-03) → Skill `brandschutz`
Frage an `brandschutz` durchreichen (VKF-Norm 2015, Richtlinien, EI/RF-Klassen).

### D — Energie (PL-04) → Agent `energie-berater`
PV-/Solar-Eignung (Indach/Ziegel/transparent/Fassade/Aufdach), U-Wert/Bauteilkatalog
(SIA 380/1), Energienachweis-Vorpruefung, ZH-Baueingabe-Energieformulare.

## Connector

`connectors/geo-zh.mjs` — siehe `connectors/README.md`. Validiert fuer Kt. ZH. Beispiel:

```bash
node connectors/geo-zh.mjs --adresse "Giebelweg 12 Langnau am Albis" --oereb \
  --out ".../PL - 01 Kartenportale/OEREB-Auszug" \
  --out ".../AR - 03 Studien/2621 Giebelweg 12/01_Plaene/99 Plangrundlage"
```

## Wissens-KB & Training

- **KB:** `wissen/planungsgrundlagen/` — vier Domaenen (kartenportale, recht-norm,
  brandschutz, energie). Verlinkt zu `[[baurecht]]`/Brandschutz statt zu duplizieren.
- **Training:** Scheduled Task `planungsgrundlagen-training` (alle 2 Tage) arbeitet
  `wissen/planungsgrundlagen/training/curriculum.md` durch und verbessert die KB
  kompoundierend — siehe `training/PROGRAMM.md`.

## Output-Konvention

- OEREB/Geodaten: in die zwei Ablageorte oben, Server-/JANS-Dateinamen behalten.
- Erzeugte Berichte (Grundlagen-Dossier, Energie-Vorpruefung): nach
  `30 JANS AI HUB OUTPUT/` und — wenn projektbezogen — in den Projektordner.
- Vor jeder Text-Ausgabe an den Benutzer: Skill `korrektur`.

## Verbindliche Regeln
- EGRID/Identifikatoren nie erfinden (`identifikatoren-verifizieren`).
- Echte Umlaute, Schweizer Hochdeutsch (`umlaute-konvention`).
- Sechsstellige/normierte Daten und Dateinamen (`dateinamen-konvention`).
- NAS ist kanonisch; nach Aenderungen committen/pushen (`sync-kanonische-quelle`).
