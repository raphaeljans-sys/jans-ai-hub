# Wissens-Health-Check: immobilienbewertung — 2026-07-23

Phase-1-Audit (unbeaufsichtigt, Nachtschicht Mac Mini, keine Aktionen). Auditiert: 26
Wiki-Artikel (davon 11 Gemeinde-Marktblaetter + README), `wiki/wissensluecken.md`,
`raw/_INGESTED.md`, `training/`, CHANGELOG seit letztem Check. Bezugsdatum: 2026-07-23.
Referenz letzter Check: `outputs/2026-07-01_health-check.md` (22 Tage, 11 CHANGELOG-Eintraege
seither: Trainings-Runs 34-41, Wissens-Chef Cross-KB Run 11, Run 36 Luzern-Korrektur).

## Zusammenfassung

| Audit | Thema | Findings | Ampel |
|---|---|---|---|
| A | Widersprueche zwischen Artikeln / QUESTIONS-Spannungen | 0 neu (1 alte, weiterhin tolerierbar) | gruen |
| B | Kaputte Backlinks / Orphans / nicht im INDEX | 1 (systemisch, gering) | gelb |
| C | Unbelegte Claims / speculative belegt? | 0 (Stichprobe; Quellenpflicht weiter vorbildlich) | gruen |
| D | RAW-Coverage | 0 (alle offenen Quellen weiterhin als Gap registriert) | gruen |
| E | Veraltete Artikel / stale last_updated | 0 (alle Artikel < 45 Tage, aktiv gepflegt) | gruen |
| F | Schreibregel-Verstoesse | 1 (**gross**: KB-weite Umlaut-Konvention) | rot |
| G | Promotion-Kandidaten | 1 | gruen |

Gesamtbild: **die 5 Findings des letzten Checks (01.07.) sind alle korrekt behoben** (Run-11-
Nachtrag, 2 Backlink-Fixes, Kanton-Vereinheitlichung, Thalwil-PLZ, nutzungskonzepte-Status —
siehe Details unten). Die KB bleibt inhaltlich aussergewoehnlich diszipliniert (Delta-Null-Runs
statt erfundener Themen, Cross-KB-Verifikation, Luzern-Korrektur mit Refuter-Agent). Der neue
Fund ist rein orthografisch, aber gross: die KB verstoesst KB-weit gegen ihre eigene
Umlaute-Regel — analog zum heutigen Fund in der KB `spec` (Lauf 07:30 Uhr, selbe Nacht).

## Top-3 (Raphaels Aufmerksamkeit)

1. **KB-weite ae/oe/ue-Ersatzschreibung statt echter Umlaute** (Audit F). Ueber alle 26
   Wiki-Dateien geschaetzt **> 2'000 Ersatzschreibungen** (fuer/ueber/zusaetzlich/Flaeche/…)
   gegen vereinzelte echte Umlaute. Extremfall `wiki/residualwertmethode.md`: **0 echte
   Umlaute** gegen 197 Ersatzschreibungen (100 % Verstoss). `wiki/ertragswert-dcf.md`: 38 echte
   Umlaute gegen 383 Ersatzschreibungen. Der Check vom 01.07. hatte Audit F faelschlich gruen
   bewertet ("echte Umlaute durchgaengig im Prosa-Text") — das stimmte nicht und wurde nie
   geprueft, nur behauptet. Gleicher Fehlertyp heute auch in `wissen/spec` gefunden (968
   Ersatzschreibungen, Report `wissen/spec/outputs/2026-07-23_health-check.md`) — moeglicher
   KB-uebergreifender Blindspot der bisherigen Health-Checks (Audit F wurde nie tatsaechlich
   ausgezaehlt, nur stichprobenartig "gelesen"). **Empfehlung:** Phase-2-Massenkorrektur via
   Skill `korrektur` (Agent `rechtschreibung`) je KB, danach Audit F in `wissenscheck` um eine
   verbindliche Auszaehlung (nicht nur Leseeindruck) ergaenzen.
2. **~30 Pseudo-Backlinks `[[marktdaten-gemeinden]]` ohne Ziel** (Audit B, gering). In 12
   Dateien (u.a. `INDEX.md`, `az-gfz-kennwerte.md`, `wissensluecken.md`, alle Gemeinde-Blaetter
   selbst) wird `[[marktdaten-gemeinden]]` als Backlink-Syntax verwendet, zeigt aber auf keine
   existierende Wiki-Datei (Ordner statt Artikel — das eigentliche Ziel waere vermutlich
   `marktdaten-gemeinden/README.md`, wird aber schon an anderen Stellen korrekt als
   Klartext-Pfad referenziert). Kosmetisch/konsistent verwendet, kein Verwirrungsrisiko, aber
   Meta-Schema-Verstoss (Backlinks nur auf Artikel-Dateinamen). **Vorschlag (Phase 2):** entweder
   `marktdaten-gemeinden/README` als echtes Backlink-Ziel schreiben, oder alle Vorkommen auf
   Klartext `Sammelordner marktdaten-gemeinden/` umstellen.
3. **`az-gfz-kennwerte.md` reifer Promotion-Kandidat** (Audit G). Weiterhin `status: emerging`
   trotz sehr breiter Belegung (19 Gemeinden, 3 unabhaengige Verifikationsrunden inkl. Run-36-
   Refuter-Korrektur Luzern). Einziger offener Rest: Langnau am Albis (BZO-Revision haengig).
   **Vorschlag:** bei Abschluss Langnau auf `established` heben — bis dahin legitim `emerging`.

## Details je Audit

### A. Widersprueche zwischen Artikeln

- **`wiki/ertragswert-dcf.md` — 0.24-0.40 % vs. ~0.35 % Basiszins (unveraendert tolerierbar).**
  Beide Werte stehen weiterhin im Artikel (Zeile 194/205 vs. Zeile 659); genauer geprueft als
  beim letzten Mal: Zeile 659 ist Teil des **datierten Run-Historie-Logs** ("✓ 2026-06-30 (Run
  11)... 0.24-0.40 %" folgt direkt danach auf Zeile 678-679 und aktualisiert den Run-9-Wert
  explizit) — kein lebender Widerspruch, sondern korrekt gefuehrte Versionshistorie. Kein
  Finding, bestaetigt die Einschaetzung vom 01.07.
- Keine neuen Widersprueche zwischen Artikeln gefunden (Stichprobe: ertragswert-dcf,
  realwert-sachwert, residualwertmethode, az-gfz-kennwerte — die am staerksten frequentierten
  seit dem letzten Check).
- `wissensluecken.md` fuehrt weiterhin sauber getrennt D-Luecken (Raphael) und T-Luecken
  (Training); keine ungeloeste neue Spannung.

### B. Kaputte Backlinks / Orphans / INDEX

- **Die 2 vom 01.07. gemeldeten Backlink-Fehler sind behoben:** `zh-wald-8636.md` verweist auf
  den Skill `healthcare-wirtschaftlichkeit` jetzt als Klartext (nicht mehr `[[...]]`);
  `sz-wangen-8854.md` verweist auf den Output-Report ebenfalls als Klartext.
- **Neu/uebersehen: `[[marktdaten-gemeinden]]`-Pseudo-Backlink** — siehe Top-3 Punkt 2. Zaehlung:
  Vorkommen in `INDEX.md`, `wissensluecken.md`, `vergleichswert-hedonisch.md`,
  `investorenmarkt-makro.md`, `projektstruktur-deliverables.md`, `az-gfz-kennwerte.md`, sowie in
  8 der 11 Gemeinde-Blaetter selbst (Cross-Referenz untereinander).
- `wissensluecken.md` enthaelt zudem `[[healthcare-wirtschaftlichkeit]]` (Skill, kein
  KB-Artikel) und `[[outputs]]` (Ordner) als Backlink-Syntax — gleiche Kategorie wie oben, nicht
  separat gezaehlt.
- **Orphans:** keine — alle 25 Kernartikel (ohne wissensluecken) sind mind. einmal
  Backlink-Ziel oder im INDEX referenziert.
- **INDEX-Vollstaendigkeit:** vollstaendig — alle 26 Dateien (15 Kernartikel + 11
  Gemeinde-Blaetter inkl. README) sind gelistet, keine Karteileiche, keine fehlende.

### C. Unbelegte Claims / Belegpflicht

- Stichprobe (ertragswert-dcf Sources-Feld, realwert-sachwert, az-gfz-kennwerte): weiterhin
  durchgaengige Quellenpflicht mit Lauf-Nummer, Datum und Dokument/Web-Stand. Kein
  unbelegter harter Claim gefunden.
- `status: speculative` weiterhin bei keinem der 26 Artikel — die einzige *emerging*-Markierung
  (az-gfz-kennwerte) ist bewusst und dokumentiert (siehe G).

### D. RAW-Coverage

- `raw/_INGESTED.md` weiterhin sauber gefuehrt: offene/teilweise Quellen (Marktpreise,
  Bodenpreise, Kennwerte-DOCX, JANS-Healthcare-Raster) sind als benannte Gaps (D1/D2/D5/D8 usw.)
  in `wissensluecken.md` registriert, nicht als "eingearbeitet" fehlzitiert. Keine neue
  Coverage-Luecke seit 01.07.

### E. Veraltete Artikel

- Alle 15 Kernartikel tragen `last_updated` zwischen 2026-06-10 und 2026-07-17 (juengster:
  az-gfz-kennwerte 17.07., aeltester: bewertungsverfahren-ueberblick/lageklasse-landwertanteil
  10.06. — 43 Tage, aber ohne neuere widerlegende Quelle, daher kein E-Finding gemaess
  Definition "nur bei neuerer Evidenz").
- Gemeinde-Blaetter: die bekannten UBS-FS-Alters-Flags (⚠, Gap D1) bleiben unveraendert
  bestehen (Waedenswil/Einsiedeln/Regensdorf/Wald 12/2023, Thalwil/Muri/Maur 7/2024) — kein
  neuer Fund, weiterhin bewusst offene, dokumentierte Bring-Schuld Raphael.

### F. Schreibregel-Verstoesse

- **Siehe Top-3 Punkt 1 — der Hauptfund dieses Checks.** Kein `ß` gefunden (Konvention
  eingehalten), keine Deko-Symbole ausser den KB-konventionellen `⚠`/`✓`. Aber die
  Umlaute-Pflicht ("echte Umlaute ae/oe/ue" gemaess eigener `CLAUDE.md` — die selbst
  interessanterweise "ae/oe/ue" statt "ä/ö/ü" schreibt, ein Indiz, dass die Regel nach
  KB-Anlage verschaerft, aber nie rueckwirkend durchgesetzt wurde) wird KB-weit verletzt.
  Betroffen sind praktisch alle 26 Dateien, am staerksten die kennwertreichsten
  (wissensluecken, ertragswert-dcf, realwert-sachwert, investorenmarkt-makro,
  projektstruktur-deliverables, residualwertmethode).
- Frontmatter-Vollstaendigkeit (title/status/last_updated/sources/links) weiterhin
  durchgaengig gegeben — kein struktureller Verstoss.

### G. Promotion-Kandidaten / beantwortete QUESTIONS

- **az-gfz-kennwerte.md** — siehe Top-3 Punkt 3. Legitim noch *emerging* wegen Langnau, aber
  naeher an *established* als noch am 01.07.
- Keine weiteren reifen Output-Inhalte ausserhalb des Wiki (Compounding-Loop laeuft: alle
  11 CHANGELOG-Eintraege seit 01.07. haben ihre materiellen Befunde bereits in Kernartikel
  verdichtet, inkl. der Luzern-Korrektur Run 36 und der Wissens-Chef-Verlinkung Run 21).

## Vom letzten Check (01.07.) behobene Punkte (zur Nachvollziehbarkeit)

1. Run-11-Prozessleck (last_updated/CHANGELOG/Output nicht nachgefuehrt) → mit Run 12
   nachgetragen (im Artikel selbst dokumentiert, Zeile 678-681).
2. Backlink `[[healthcare-wirtschaftlichkeit]]` in zh-wald-8636.md → Klartext-Skill-Verweis.
3. Backlink `[[outputs/...]]` in sz-wangen-8854.md → Klartext-Report-Verweis.
4. `kanton:`-Frontmatter uneinheitlich → alle 11 Gemeinde-Blaetter jetzt konsistent (echte
   Umlaute: Zürich/Schwyz/Aargau/Luzern).
5. Thalwil `plz: 8136` → korrigiert auf `plz: 8800`.
6. `nutzungskonzepte.md` INDEX-Status *emerging* → INDEX und Frontmatter jetzt konsistent
   *established*.
