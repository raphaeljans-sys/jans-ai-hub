# Wissens-Health-Check: architekten-synobsis — 2026-07-01

## Vorbemerkung: Nicht-Standard-KB
`architekten-synobsis` folgt NICHT dem Standard-KB-Bauplan (`raw/ wiki/ outputs/` + CHANGELOG + QUESTIONS). Es ist eine **Tool-/Katalog-KB**: ein AI-Recherche-Werkzeug, das die read-only Referenzbibliothek `/Volumes/daten/05_Architekten_Synobsis` (853 Architekten-Ordner) durchsuchbar macht. Aufbau: `tools/` (Scan/Query/Embed-Skripte), `catalog/` (JSON-Datensaetze + documents.jsonl + INDEX), `state/processed.json` (Fortschritt), `outputs/`.

Die sieben Standard-Audits (Widersprueche/Backlinks/unbelegte Claims/RAW-Coverage/Veraltung/Schreibregeln/Promotion) greifen hier nicht, weil es kein Wiki mit Artikeln, Backlinks oder Frontmatter gibt. Der relevante Gesundheits-Indikator ist stattdessen der **Verarbeitungsfortschritt** und die **KB-Integritaet** (fehlende Standard-Scaffolding-Files).

## Zusammenfassung
| Audit | Findings |
|---|---|
| A Widersprueche | n/a (kein Wiki) |
| B Kaputte Backlinks/Orphans | n/a (kein Wiki) |
| C Unbelegte Claims | n/a (kein Wiki) |
| D RAW-Coverage | n/a (Katalog statt raw/) |
| E Veraltete Artikel | n/a (kein Wiki) |
| F Schreibregel-Verstoesse | 0 (CLAUDE.md/INDEX sauber, echte Umlaute) |
| G Promotion-Kandidaten | n/a |
| **Prozess: Scan-Fortschritt** | **5 / 853 Architekten (~0.6 %)** |
| **Struktur: fehlende KB-Files** | **2 (CHANGELOG.md, QUESTIONS.md)** |

## Top-3 (Raphaels Aufmerksamkeit)
1. **Scan steht seit 28.06.2026 bei 5 von 853 Architekten (~0.6 %).** `state/processed.json` unveraendert seit 28.06.2026 12:26 — der kompoundierende Batch-Lauf laeuft aktuell NICHT weiter. Deckt sich mit dem bekannten Blocker: Stufe 2 (Embeddings) haengt auf dem Mac Mini an Python 3.14, Stufe 1 (Scan) muesste aber weiterlaufen. Batch-Task/launchd auf dem Mac Mini pruefen.
2. **KB-Scaffolding unvollstaendig:** kein `CHANGELOG.md` und kein `wiki/QUESTIONS.md`. Auch wenn es eine Tool-KB ist, fehlt damit die Aenderungs-/Lueckenspur. Entscheidung noetig: entweder minimales CHANGELOG anlegen (Laufprotokoll) oder die KB explizit als Nicht-Standard vom Health-Check ausklammern.
3. **Explizite Health-Check-Ausnahme empfehlenswert:** damit der monatliche Sammel-Task diese KB nicht jedes Mal mit «n/a» durchlaeuft, sollte in `WISSEN-CLAUDE.md` oder im Task-Prompt vermerkt werden, dass `architekten-synobsis` (wie kuenftige Tool-KBs) ueber den Scan-Status statt ueber die 7 Audits geprueft wird.

## Details

### Prozess-Status (der eigentliche Health-Indikator)
- `state/processed.json`: 5 Architekten verarbeitet (1 Selection, 6a Architects, AASZ, Aalto_Alvar, Aando_Tadao), Stand `2026-06-28T12:26:39`.
- `catalog/documents.jsonl`: 5 Zeilen. `catalog/INDEX.md`: «5 Architekten indexiert».
- Quelle umfasst 853 Ordner → Abdeckung ~0.6 %. Der Lauf ist alphabetisch am Anfang steckengeblieben.
- `outputs/` ist leer (noch keine Laufprotokolle/Reports abgelegt), obwohl CLAUDE.md dort «Laufprotokolle, Reports» vorsieht.

### F. Schreibregeln
- `CLAUDE.md`, `PROGRAMM.md`, `RUNBOOK-MAC-MINI.md`, `catalog/INDEX.md`: Schweizer Hochdeutsch, echte Umlaute, kein ß, keine dekorativen Symbole. Sauber.

### Struktur/Integritaet
- Vorhanden: CLAUDE.md, PROGRAMM.md, RUNBOOK-MAC-MINI.md, tools/, catalog/, state/, outputs/.
- Fehlend ggue. Standard-KB: `CHANGELOG.md`, `wiki/` (inkl. INDEX/QUESTIONS). Bei einer Tool-KB tolerierbar, aber bewusst zu entscheiden.

## Empfehlung
Kein inhaltliches Wissensproblem, aber ein **stehender Verarbeitungslauf**. Aktion (interaktiv, ausserhalb dieses Phase-1-Laufs): Batch-Runner auf dem Mac Mini pruefen/neu anstossen (`tools/synobsis_batch.sh` bzw. der Scheduled Task/launchd) und den py3.14-Blocker fuer Stufe 2 aufloesen. Siehe Memory-Notiz «Synobsis-Aufbereitung» und `RUNBOOK-MAC-MINI.md`.
