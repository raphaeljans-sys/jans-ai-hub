# Lebenszyklus-Reifegrad des Bauleitungs-Harness

Dieses Dokument ist die **Selbstdiagnose des Harness**: Es haelt fest, wie
vollstaendig der SIA-102-Lebenszyklus (C → I) als Skill-Pipeline abgebildet ist,
und wo die naechsten Hebel liegen. Es ist der strategische Gegenpol zu
`reifegrad.py` (das die LV-/Gewerk-Abdeckung misst) — hier wird die
**Phasen-Abdeckung** gemessen. Stand: Juni 2026.

## Das Harness in einem Satz

> Ein optimales Bauleitungs-Harness bildet den **gesamten Projekt-Lebenszyklus
> C → I** als Pipeline von Phasen-Skills ab, die an einem gemeinsamen
> **Projekt-Rueckgrat** haengen, je **Gewerk parallel** durchlaufen werden, aus
> einer **reifenden Referenz-Bibliothek** (R0–R5) speisen und von einer
> **Selbstlernschleife** (Mecano) aktuell gehalten werden.

## Die vier tragenden Prinzipien

1. **Projekt-Rueckgrat (Spine)** — Master-Ablage je Projekt nach SIA-Buchstaben
   C/D/F/G/H/I (`00_ordnerstruktur-bauleitung.md`). Jeder Buchstabe = eine Phase
   = ein Skill.
2. **Gewerk-Fan-out** — pro Gewerk laeuft dieselbe 11-Phasen-Pipeline
   (`01_workflow-ausschreibung.md`) unabhaengig/parallel.
3. **Reifende Referenz-Bibliothek** — Goldstandard-LVs, Vorlagen, Kataloge,
   veredelt R0–R5 (`09_datenaufbereitung-pipeline.md`). Format: `.md` = Quelle,
   `.crbx`/SIA-451 = Maschinen-Austausch, PDF = Verbindlichkeit, `.xlsx` =
   Vergleich.
4. **Selbstlernschleife (Mecano)** — Unsicherheit → `wissensluecken.md` →
   schliessen → integrieren → messen (`08_selbsttraining-mecano.md`).

## Phasen-Abdeckung (Lebenszyklus C → I)

| Phase | SIA | Inhalt | Skill | Status |
|---|---|---|---|---|
| C | Honorar | Architektenhonorar | `honorarberechnung-sia102` | ✅ |
| D | Kostenplanung | KV / Grobkosten | `kostenschaetzung` | ✅ |
| — | vor F | Brandschutz-Grundlage | `brandschutz` | ✅ |
| — | vor F | Submittenten-Findung | `unternehmerfindung` | ✅ |
| F | Ausschreibung 01–05 | LV, Versand, Vergabe | `ausschreibung` + `offertenpruefung` | ✅ stark |
| **G** | **Vertraege** | **Werkvertrag (3 Verguetungsmodelle SIA 118)** | **`werkvertrag`** | **✅ neu (Juni 2026)** |
| **H** | **Realisierung** | **Ausmass, NT, Regie, Abnahme, Maengel, Garantie** | **`unternehmerkontrolle`** | **✅ neu (Juni 2026)** |
| **I** | **Kostenkontrolle** | **Baubuchhaltung, Schlussabrechnung, Garantieverfall** | **`kostenkontrolle`** | **✅ neu (Juni 2026)** |
| quer | — | Termine | `terminplanung` | ✅ |
| quer | — | Sitzungen / offene Punkte | `protokoll`, `pendenzenliste` | ✅ |

## Erkenntnis aus der Selbstanalyse (Juni 2026)

Vor diesem Ausbau war das Harness **vorne stark, hinten hohl**: Phasen C–F
(Vorbereitung bis Vergabe) waren als Skills abgebildet, aber der gesamte
**Ausfuehrungs-Block G/H/I** — die Phase, in der „Bauleitung" im engeren Sinn
ueberhaupt stattfindet (Vertrag, Ausmass, Nachtrag, Regie, Abnahme,
Schlussrechnung, Kostenkontrolle) — hatte **keine Skill-Engine**. Die
vorhandenen Quer-Skills (Protokoll, Pendenzen, Termine) sind die
*Koordinations*-Werkzeuge dieser Phase, aber nicht ihr Vertrags-/Kontroll-/
Kosten-Rueckgrat.

Quelle fuer das Schliessen der Luecke: `AR - 07 Archiv/08_Bauleitung/Vertraege`
(drei JANS-Werkvertrags-Vorlagen Ausmass/Pauschal/Kostendach) + BBase-Schulungen
W695/W696. Geprueft und **verworfen** als Bauleitungsquelle: `AR - 06 Referenzen`
(Entwurfs-/Wettbewerbsbibliothek, keine Ausfuehrungs-Grundlagen).

## Naechste Reifegrad-Stufen (offen)

- **Projekt-Spine-Skill** `stammdaten` (gemeinsames Rueckgrat C–I) noch nicht angelegt.
- G/H/I-Skills sind **R2** (gegruendet, Vorlagen aus einer Quelle) → an realem
  Projekt erproben → R5 (validiert).
- H-Vorlagen Abnahme-/Maengelprotokoll/Garantieschein aus SIA 118 + Protokoll-Skill
  abgeleitet — **Benutzer-Muster zur Validierung** noch ausstehend.
- Oeffentliche Beschaffung IVoeB/BoeB (L11) bleibt offen.
