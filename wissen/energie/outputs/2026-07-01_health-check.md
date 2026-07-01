# Wissens-Health-Check: energie — 2026-07-01

Phase-1-Audit (unbeaufsichtigt, Scheduled Task). Nur Befund + Ablage — keine Fixes.
Umfang: 16 Wiki-Dateien (13 Themenartikel + BAUHERREN-FAQ mit 29 Kernfragen + INDEX + QUESTIONS),
50 Destillate (Destillate-Layer), raw/_INGESTED, CHANGELOG (23 Runs), letzter Check keiner
(erster Health-Check dieser KB).

## Zusammenfassung

| Audit | Thema | Findings | Ampel |
|---|---|---|---|
| A | Widersprueche zwischen Artikeln | 0 (echte); 2 sauber dokumentierte Spannungen | gruen |
| B | Kaputte Backlinks / Orphans / INDEX-Abgleich | 1 (INDEX-Doppelzeile / Zaehlung 51 vs. 50) | gelb |
| C | Unbelegte Claims (Kennwerte/U-Werte/Foerderbetraege) | 0 | gruen |
| D | RAW-Coverage | 0 (Vollabdeckung; 2 Destillate nur via Frontmatter, nicht `[[verlinkt]]`) | gruen |
| E | Veraltete Artikel (last_updated < 2026-04-02 + neuere Quelle) | 0 | gruen |
| F | Schreibregel-Verstoesse | 2 (1 falsche Quellenangabe, 1 Formatinkonsistenz `links:`) | gelb |
| G | Promotion-Kandidaten | 2 | gruen |

Gesamtbild: **sehr gesunde KB.** 23 taegliche Runs haben eine dicht verlinkte, durchgehend
belegte Wissensbasis aufgebaut. Keine unbelegten Kennwerte, keine kaputten `[[Backlinks]]`,
keine echten Widersprueche. Die wenigen Findings sind kosmetisch/bookkeeping — keines
gefaehrdet die Bauherren-Antworten.

## Top-3 (Raphaels Aufmerksamkeit)

1. **Falsche Quellenangabe in `wiki/holzbau-bauphysik-clt.md`** — im Frontmatter `sources:`
   steht `destillate/daemmstoffe-lambda.md`; diese Datei existiert nicht (daemmstoffe-lambda
   ist ein **Wiki**-Artikel, kein Destillat). Gemeint ist `destillate/sia-2001-waermedaemmstoffe-lambda.md`.
   Einziger echter Quellen-Fehlverweis der KB.
2. **Destillat-Zaehlung stimmt nicht (51 gemeldet, 50 real).** In `destillate/INDEX.md` ist
   `pv-einmalverguetung-bund-bfe` **doppelt** gelistet (Zeile 38 Original + Zeile 57
   «aktualisiert»). Dadurch melden CHANGELOG/Register «51 Destillate», tatsaechlich sind es 50.
   Reines Bookkeeping, aber es zieht sich durch mehrere Register.
3. **Kein inhaltliches Risiko offen.** Die einzige laufende Faktenunsicherheit (Klimapraemie-
   Laufzeit «bis 2025» ↔ «bis Ende 2027») ist vorbildlich als ⚠ + «nicht ohne Live-Pruefung
   zitieren» markiert und in QUESTIONS getrackt — nichts zu tun, nur zur Kenntnis.

## Details je Audit

### A — Widersprueche zwischen Artikeln

Keine echten Widersprueche gefunden. Zwei potenzielle Spannungen, die die KB **selbst sauber
aufloest**:

- **WP-JAZ: FAWA-Feldwerte (S/W Ø 3,5 · L/W Ø 2,7, Stand 2004) ↔ Richtwert-Tabelle
  (~3/4,5/5).** Kein Widerspruch: F6 und `[[fawa-jaz-feldanalyse-waermepumpen]]` erklaeren die
  Differenz explizit (2004 gemessen vs. moderne Geraete hoeher; Relationen zeitlos). Sauber.
- **Umbau-Faktor Q_h,li: EN-2 (2013) 1,25× ↔ EN-102 (2018) 1,5×.** In `wiki/u-werte-grenzwerte-ch.md`
  Zeile 61 offen dokumentiert und als Versionsabweichung markiert (E-D8 in QUESTIONS), nicht
  still verrechnet. Korrektes Bibliothekar-Verhalten.

Vorschlag: nichts. Beide Spannungen sind Best-Practice-Beispiele fuer «flaggen statt verrechnen».

### B — Kaputte Backlinks, Orphans, INDEX-Abgleich

- **`[[Backlinks]]`:** 61 eindeutige Linkziele geprueft — **alle** aufloesbar (kein toter
  `[[…]]`-Link in der gesamten KB).
- **INDEX-Doppelzeile (Finding):** `destillate/INDEX.md` listet 51 Tabellenzeilen, es gibt aber
  50 Content-Destillate. Ursache: `pv-einmalverguetung-bund-bfe` steht doppelt (Z. 38 + Z. 57).
  → **Vorschlag (Phase 2):** die «aktualisiert»-Zeile 57 mit Zeile 38 verschmelzen (Aktualitaets-
  Vermerk in die bestehende Zeile) und die Destillat-Zaehlung in CHANGELOG/`_INGESTED`/`INDEX`-
  Kopf auf **50** korrigieren.
- **Orphans:** keine. Die zwei Destillate ohne `[[…]]`-Verweis aus einem Themenartikel
  (`enerhaus-minergie-nachweis-efh-umbau`, `grundsaetze-energieeffizientes-bauen`) sind in der
  FAQ-`sources:`-Frontmatter **und** im Destillate-INDEX gelistet → nicht verwaist, nur nicht
  in Prosa verlinkt (siehe D).
- Kein Wiki-Themenartikel fehlt im INDEX; `QUESTIONS.md` ist erwartungsgemaess nicht
  `[[verlinkt]]` (Steuerdatei).

### C — Unbelegte Claims (verschaerft: Kennwerte/U-Werte/Foerderbetraege)

Keine unbelegten zentralen Aussagen. Stichprobe der heikelsten Zahlen — alle mit Quelle +
Datenstand:

- **U-Wert-Grenzwerte** (Neubau 0,17 / Umbau 0,25 / Fenster 1,0) → EN-102 Tab. 2/4 belegt (F3).
- **ZH-Foerdersaetze** (L/W-WP 2'900, Erdsonde 6'800, Daemmung 40/+60, Minergie-ECO 110/70/50,
  Solarthermie 2'400+1'000/kWth) → Foerder-PDF S. 1-37 vollst. (F7).
- **SZ-Foerdersaetze** (Daemmung 60/m², L/W-WP 3'200+120/kW_th, Minergie-P-EFH 155/m²) →
  SZ-Vollzugshilfe S. 1-40 vollst. (F28).
- **Minergie-Kennzahlen** 51/46/29 + THGE 11 kg CO₂/m²·a → «Besser planen» 09/2023 (F5).
- **PV-Ertrag** ~1'000 kWh/kWp, EV 8–44 %, Marktpreise 2'400–3'200 CHF/kWp → drei CH-Praxis-
  reports + Swissolar/CKW (F18/F26).
- **Klimapraemie ~360/kW** → Destillat energiefranken, mit ausdruecklichem ⚠ + Live-Pruef-
  vorbehalt (F29).

Kein `status: speculative` mehr in der KB (alle frueheren speculative/emerging promoviert oder
established). Vorschlag: nichts.

### D — RAW-Coverage

Vollabdeckung. Jeder substanzielle `_INGESTED`-Eintrag ist in mind. einem Destillat/Wiki-Artikel
verarbeitet; `_INGESTED` markiert den PDF-Bestand explizit als «erschoepft» (Loop pivotiert auf
Web/Aktualitaet). Keine unbearbeitete Luecke.

- **Hinweis (kein Finding):** `enerhaus-minergie-nachweis-efh-umbau` und
  `grundsaetze-energieeffizientes-bauen` sind zwar destilliert und in FAQ-`sources:` + Destillate-
  INDEX erfasst, werden aber aus keinem Themenartikel per `[[…]]` in der Prosa zitiert.
  → **Vorschlag (optional, Phase 2):** je einen `[[…]]`-Verweis setzen — `enerhaus…` im Umbau-
  Kontext (`energienachweis-zh` / F12), `grundsaetze…` in `u-werte-grenzwerte-ch` oder F2 —
  damit die Prosa-Verlinkung zur Frontmatter-Abdeckung aufschliesst.

### E — Veraltete Artikel

Keine. Aeltester `last_updated` ist **2026-06-09** (daemmstoffe-lambda, sommerlicher-waermeschutz,
u-werte-grenzwerte-ch) — die KB ist erst rund einen Monat alt (angelegt 2026-06-05). Kein Artikel
liegt vor der Schwelle 2026-04-02; keine neuere raw-Quelle steht einem alten Artikel gegenueber.

### F — Schreibregel-Verstoesse

- **Falsche Quellenangabe (Finding, ernst):** `wiki/holzbau-bauphysik-clt.md` Z. 5 `sources:`
  enthaelt `destillate/daemmstoffe-lambda.md` — existiert nicht (daemmstoffe-lambda ist ein
  Wiki-Artikel). → **Vorschlag:** ersetzen durch `destillate/sia-2001-waermedaemmstoffe-lambda.md`
  (dessen Inhalt der Artikel tatsaechlich nutzt).
- **Formatinkonsistenz `links:` (Finding, kosmetisch):** drei Artikel trennen die `[[…]]`-Links
  mit **Leerzeichen** statt Komma (Meta-Schema-Konvention): `daemmstoffe-lambda.md`,
  `pv-solar-technologien.md`, `foerderung-energie-sz.md`. Die uebrigen Artikel nutzen Komma.
  → **Vorschlag:** auf Komma-Trennung vereinheitlichen.
- **Sonst konform:** kein `ß` (Stichprobe wiki + destillate = 0 Treffer), keine Deko-Emojis
  (nur ⚠ als Warnmarker, konventionskonform), echte Umlaute durchgaengig (ä/ö/ü in Titeln wie
  «Dämmstoffe», «Förderung», «Zürich»), Frontmatter vollstaendig (title/status/last_updated/
  sources/links). BKP/sechsstellige Daten nicht einschlaegig.

### G — Promotion-Kandidaten

- **`regenwasserbewirtschaftung-versickerung-zh` (emerging → established):** vollstaendig belegt
  (AWEL-Formular + Normen VSA 2019 / SN 592 000:2012 / AWEL-Richtlinie 2022), beantwortet F24
  abschliessend; QUESTIONS E14 ✓. Substanz traegt `established`.
- **`sommerlicher-waermeschutz` (emerging → established):** dreifach belegt (Minergie 09/2023 +
  EN-2 2013 + EN-102 2018), beantwortet F11; QUESTIONS E3 im Kern geschlossen. Kandidat, sofern
  der offene Rand «eigener Fenster-Artikel U_w/g-Wert» separat gefuehrt wird.

→ **Vorschlag (Phase 2):** beide auf `established` heben (nach kurzer Sichtung durch Raphael);
Belegdichte rechtfertigt es.

---

**Fazit:** gruen mit zwei gelben Randnotizen. Kein inhaltliches Risiko. Empfohlene Phase-2-
Kleinaktionen: (1) Quellenverweis holzbau korrigieren, (2) INDEX-Doppelzeile
pv-einmalverguetung verschmelzen + Destillat-Zaehlung auf 50, (3) `links:`-Trennung
vereinheitlichen, (4) 2 Destillate in Prosa verlinken, (5) 2 Promotionen. Alle
niederschwellig, keine destruktiven Eingriffe.
