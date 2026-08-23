# INDEX — Parameter-Sets

Maschinenlesbare JSON-Dateien pro Bauaufgabe/Typologie.
Schema: `../../parameter-schema/entwurfs-parameter.schema.json`

## Vorhandene Parameter-Sets
- [healthcare-neubau-zh.json](healthcare-neubau-zh.json) — Pflegeheim/Alterszentrum/betreutes Alterswohnen CH (Etappe-3-Baustein B5, v2.0, abgeleitet aus wettbewerbs-dna kennwerte-healthcare + jury-argumente-healthcare, refuter-BESTANDEN 25.07.2026). Akutspital/Psychiatrie/gemischt bewusst nicht abgedeckt (eigene Sets geplant).
- [wohnen-mfh-urban.json](wohnen-mfh-urban.json) — Mehrfamilienhaus urban, gemeinnützig/genossenschaftlich/institutionell CH (Etappe-3-Baustein B5, v2.0, abgeleitet aus wettbewerbs-dna kennwerte-wohnungsbau + jury-argumente-wohnungsbau, refuter-BESTANDEN 27.07.2026, 2 Refuter-Durchgänge). Ersetzt v1.0 (generische, nicht Etappe-3-abgeleitete Werte).
- [schule-volksschule-ch.json](schule-volksschule-ch.json) — Volksschule/Bildungsbau CH (Etappe-3-Baustein B5, abgeleitet aus wettbewerbs-dna kennwerte-schulbauten + jury-argumente-schulbauten, refuter-BESTANDEN 21.07.2026). Ersetzt das geplante bildung-schulhaus.json (Namens-Abstimmung gemäss CHANGELOG 2026-07-20).

## Schema-Deckung und Preisstand (Stand 23.08.2026)

- **Preisstand jetzt maschinenlesbar.** Alle drei Sets führen `kosten_referenz.preisstand`
  (`jahr`, optional `stichtag`, `teuerungsanker`, `hinweis`, optional `indexiert`). Bis zum
  23.08.2026 stand der Preisstand nur in Prosa und war maschinell nicht auswertbar. Wer ein
  Kostenband aus diesen Sets verwendet, muss den Preisstand mitlesen — die Bänder stehen
  bewusst **auf ihrem Quell-Preisstand**, nicht aufindexiert.
- **`chf_m3_gv_band` ist in allen drei Sets leer und bleibt es.** Kein Jurybericht der
  Feeder-Quelle nennt ein Gebäudevolumen (dreimal unabhängig belegt: Healthcare, Schulbau,
  Wohnungsbau). Führend für CHF/m³ GV ist `wissen/grobkosten/`.
- **Die Geometriefelder sind fast durchgehend leer** — `geschosshoehe_m` in keinem Set, obwohl
  es das einzige Feld ist, das `volumen_generator.py` lesen könnte. Das ist Belegdisziplin, kein
  Versäumnis: Juryberichte belegen Regeln und Kosten, nicht Regelgeometrie. Herleitung und die
  Entscheidfrage dazu in [../QUESTIONS.md](../QUESTIONS.md), Vertiefungslauf 23.08.2026.
- **Sieben de-facto benutzte Felder sind seit 23.08.2026 im Schema deklariert** (vorher nur
  gültig, weil `additionalProperties` offen ist). `additionalProperties` bleibt bewusst offen.

## Geplante Parameter-Sets
- wohnen-efh-hang.json — Einfamilienhaus Hanglage
- wohnen-reihen-vorstaedte.json — Reihenhäuser Agglomeration
- gewerbe-buero-standard.json — Bürogebäude Standard
- mischnutzung-eg-gewerbe.json — Wohn-/Gewerbemischung (EG Gewerbe)
- healthcare-akutspital.json — Spital / Klinik (Kennwerte in kennwerte-healthcare.md B6 bereits established: Tragwerksraster 7.1–10.8 m Schwerpunkt 7.5–8.4, Fensteranteil-Warnschwelle, Zimmerachse-Regel)
- healthcare-psychiatrie.json — Psychiatrie/Kinder- und Jugendpsychiatrie (Kennwerte in kennwerte-healthcare.md B6 bereits established, Belegbasis noch duenn: 2 Quellen)
- umbau-sanierung-wohnen.json — Sanierung Wohnbau (Bestand)
