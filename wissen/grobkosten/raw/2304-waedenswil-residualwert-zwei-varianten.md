# Rohdaten — 2304 Wädenswil, Residualwertberechnung (zwei Varianten)

**Quelle:** SharePoint `AR - 03 Studien/2304 Waedenswil/09_Dokumente/03_Residualwertberechnung/`,
Unterordner `03_Immo-02-P23D-Residualwert_Projektbewertung_Jans_Variante_Atrium` und
`..._Variante_Zwei_Treppenhaeuser`. JANS-eigenes Residualwert-/Projektbewertungstool
(Vorprojektphase), Stand 29./31.08.2023. Dazu `230829_Flaechenauszug.pdf` (Flächenauszug
BGF/NGF/HNF, ohne Kostenbezug).

**Abrufweg:** Der native OneDrive-Mount war für diesen Ordner seit mindestens 07.08.2026
mit `Resource deadlock avoided` blockiert (Run 13/14, `wiki/QUESTIONS.md`). Am 11.08.2026
(Nachtschicht) erfolgreich über **Weg 2** bezogen: CLI for Microsoft 365, zertifikatsangemeldet,
`spo file get --webUrl <Site> --url <server-relative Pfad> --asFile --path <Ziel>` — liest
direkt über Graph/SharePoint-API, umgeht den hängenden File-Provider vollständig. Dateigrössen
gegen die Graph-Listing-Metadaten verifiziert (exakte Übereinstimmung). Details/Befehl:
`connectors/WEGE.md`.

## Grunddaten (aus beiden PDF, identisch für beide Varianten)

- Grundstücksfläche: 1'662 m² GSF
- Zonenkonformität: AZ gemäss Bauzone (2.45 Atrium / 2.49 Zwei Treppenhäuser)
- Nutzungsmix: Wohnen 80 %, Gewerbe (Büro/Verkauf) 20 %

## Variante Atrium

| Grösse | Wert |
|---|---|
| Geschossfläche oberirdisch (GF) | 4'066 m² |
| HNF (entspricht) | 2'875 m² |
| **Summe Erstellungskosten** (Dokument-Label: **"TOTAL (BKP 1-9)"**) | CHF 17'146'000 |
| Kennzahl ø CHF/m² GF | 4'584 |
| Kennzahl ø CHF/m² HNF | 5'960 |
| Kennzahl ø CHF/m³ GV | **1'576** |
| GV (rechnerisch abgeleitet: 17'146'000 ÷ 1'576) | ≈ 10'881 m³ — **nicht SIA-416-ausgemessen**, reine Rückrechnung aus dem Tool-Kennwert |

## Variante Zwei Treppenhäuser

| Grösse | Wert |
|---|---|
| Geschossfläche oberirdisch (GF) | 4'140 m² |
| HNF (entspricht) | 2'928 m² |
| **Summe Erstellungskosten** (Dokument-Label: **"TOTAL (BKP 1-9)"**) | CHF 17'345'000 |
| Kennzahl ø CHF/m² GF | 4'554 |
| Kennzahl ø CHF/m² HNF | 5'920 |
| Kennzahl ø CHF/m³ GV | **1'566** (= der in `training/quellen-inventar.md` Run 6 bereits notierte, bis heute ungeklärte Wert) |
| GV (rechnerisch abgeleitet: 17'345'000 ÷ 1'566) | ≈ 11'078 m³ — ebenfalls nicht SIA-416-ausgemessen |

## Flächenauszug (unabhängiges Dokument, kein Kostenbezug)

BGF oberirdisch (Neubau) 4'140 m² (deckt sich mit der GF der Variante Zwei Treppenhäuser),
BGF unterirdisch (Bestand) 1'179 m², BGF Total 5'919 m². NGF/HNF-Aufschlüsselung nach
Geschoss und Nutzungsart vorhanden, aber ohne jeden Kostenbezug — kein GV-in-m³-Ausmass.

## Bewertung: NICHT verwertbar für `wiki/kennwerte.md`

Beide Dokumente beschriften ihre einzige Kostensumme explizit und unzweideutig als
**"ERSTELLUNGSKOSTEN TOTAL (BKP 1-9)"** — anders als beim Pre-Check-Tool
(`raw/2305-waedenswil-precheck.md`, Run 7/13) gibt es hier keine widersprüchliche
Doppelbeschriftung, sondern eine klare, aber für diese KB falsche Kostenabgrenzung: eine
BKP-1-5-Teilsumme ist im Dokument **nicht vorhanden**, auch nicht rechnerisch rückführbar
(keine BKP-Einzelpositionen ausgewiesen). Damit gilt dieselbe Ausschlussregel wie beim
Pre-Check-Tool und bei Wald Haselstudstrasse (`raw/2411-wald-haselstudstrasse.md`): kein
Kennwert, weder als Einzelfall n=1 noch als obere Näherung. Zusätzlich ist das GV in beiden
Varianten nur rechnerisch rückgeleitet, nicht SIA-416-feldverifiziert — ein zweiter,
eigenständiger Ausschlussgrund.

**Damit ist der seit Run 6 (27.07.2026) offene Kandidat «2304 Wädenswil Residualwert-Tool»
abschliessend geschlossen** — nicht durch neuen Zugriff auf einen Blocker, sondern durch eine
inhaltlich eindeutige Negativantwort, die den Fall endgültig aus der offenen Liste nimmt.

Abrufdatum: 2026-08-11.
