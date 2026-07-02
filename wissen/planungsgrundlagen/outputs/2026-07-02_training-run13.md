# Training Run 13 — KB Planungsgrundlagen · 2026-07-02

**Schwerpunkt-Domaene:** Kartenportale (PL-01) — Rotation Run 12 Brandschutz → Run 13 Kartenportale
(Prioritaetsdomaene). **Connector-Schritt:** ja (`gwr-bund.mjs` erweitert + live getestet).

## Ausgangslage / erkannte Luecke

Kartenportale ist die reifste Domaene der KB (8 established-Artikel). Beim Stand-Lesen fiel auf:
Das **GWR** (Gebaeude- und Wohnungsregister) ist **Nr. 6 der M1-Grundlagen-Checkliste** und hat
einen fertigen, funktionierenden Connector (`gwr-bund.mjs`), aber **keinen eigenen Wiki-Artikel** —
der Backlink der Checkliste zeigte ersatzweise auf `energie-uebersicht`. Das ist die eine echte
Restluecke unter den 8 Pflicht-Grundlagen. Diesen Lauf darauf fokussiert.

## Bearbeitete Fragen (K9)

1. **Wie beziehe ich GWR-Gebaeudedaten login-frei?** → EGID / Adresse / EGRID via
   `api3.geo.admin.ch` Layer `ch.bfs.gebaeude_wohnungs_register`; EGRID mehrdeutig (Liste).
2. **Welche Felder liefert das GWR (planungsrelevant)?** → Baujahr/Bauperiode, Klasse/Kategorie/
   Status, Geschosse, Wohnungen, Flaeche, **Volumen**, **EBF**, **Waermeerzeuger + Energietraeger**
   Heizung/WW. Nicht: EPROID (nur fuehrendes Amt).
3. **Was bedeutet GVOLNORM — wie verlaesslich ist das Volumen?** → belegt aus Merkmalskatalog v4.2:
   961 SIA 116 / 962 SIA 416 / **969 unbekannt**. **KISPI-Volumen = 969 (unbekannt)** — nicht blind
   als SIA-416-Wert in die Kostenschaetzung nehmen.
4. **Woher stammt das Volumen (GVOLSCE)?** → 851 amtl. Vermessung … 869 Baubewilligung … 878 nicht
   geschlossenes Gebaeude. KISPI = 869 (Baubewilligung).
5. **Mehrdeutigkeit EGRID → mehrere Gebaeude?** → Giebelweg 12: Haupthaus (EFH) + Nebenbau; Connector
   listet, raet nicht.
6. **Baujahr vs. Bauperiode — was gilt?** → Baujahr (`gbauj`). KISPI: Periode 8023 «2016-2020» aber
   Baujahr 2024 → Baujahr ist die nachgefuehrte Realitaet.
7. **Wozu im JANS-Workflow?** → EN/EVEN (Waermeerzeuger+EBF), Kostenschaetzung (Volumen×Kennwert nach
   Norm-Check), Umnutzung/Ankauf (Baujahr+Heizsystem = Sanierungsstau-Indikator).
8. **EPROID?** → nicht maschinell (Autorisierung noetig); Behoerdenweg Stadt ZH: AfB / Statistik.

## Was geaendert wurde

- **NEU** Wiki `kartenportale-gwr-bund.md` (established) — Bezugswege, Feldliste, GVOLNORM/GVOLSCE-
  Tabellen, «Baujahr schlaegt Bauperiode», 2 Benchmarks, Wozu-im-Workflow, offene Punkte.
- **Connector `gwr-bund.mjs`**: CODES.gvolnorm + CODES.gvolsce ergaenzt; `shape()` dekodiert Norm +
  neue `gebaeudevolumen_quelle`; `steckbrief()` zeigt Norm + Quelle. **Getestet** an KISPI + Giebelweg.
- Register: INDEX, M1-Checkliste (Backlink → GWR-Artikel), curriculum K9 ✓, QUESTIONS K9 ✓,
  raw/_INGESTED (+Merkmalskatalog v4.2), connectors/README (Decode-Block + Benchmarks), CHANGELOG.

## Test-Benchmarks (live, 2026-07-02)

| Fall | EGID | Befund |
|---|---|---|
| KISPI Lenggstrasse 30 | 302064023 | Krankenhaus (1264), Baujahr 2024, 5 Gesch., Flaeche 18'042 m2, Vol. 362'570 m3 (Norm **969 unbekannt** / Quelle 869 Baubewilligung), EBF **78'834 m2**, WP+Erdsonde / Gas-Redundanz |
| Giebelweg 12 (Parzelle) | CH879777718909 | 2 Gebaeude: 57977 (EFH 1936, Gas) + 210237818 (Nebenbau 1274) — Mehrdeutigkeit korrekt |

## Naechster Lauf (Run 14)

Rotation → **Energie** (Prioritaet). Offene Punkte: **D5** PV-CHF/kWp-Benchmark Typ B/C/D
(Dachziegel/transparent/Fassade), **D6** EVEN-Bedienung am realen KISPI-Fall dokumentieren, **D8**
graue-Energie-ZH-Grenzwert bei Publikation. GWR-seitig offen: `--wohnungen` (EWID-Ebene),
Katalog-v5.0-Abgleich der Code-Listen.
