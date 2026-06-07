# RAW — Ingest-Register (Baurecht)

Register von allem, was in `raw/` liegt: Quelle, wann reingekippt, ob in einen
Wiki-Artikel eingearbeitet. Der Health-Check (`wissenscheck`, Audit D) prüft, ob
jeder Eintrag von mindestens einem Wiki-Artikel zitiert wird.

| Datei | Reingekippt | Quelle | Eingearbeitet in Wiki | Status |
|---|---|---|---|---|
| 260602_docs-baurecht-begriffe.md | 260602 | docs/baurecht/begriffe.md (Seed) | [[nutzungsziffern]], [[abstaende-und-hoehen]] | eingearbeitet |
| 260602_docs-baurecht-pbg-zh.md | 260602 | docs/baurecht/pbg_zh.md (Seed) | [[nutzungsziffern]], [[abstaende-und-hoehen]], [[baubewilligungsverfahren]], [[raumplanung-und-gestaltung]] | eingearbeitet |
| 260602_docs-baurecht-bzo-zh.md | 260602 | docs/baurecht/bzo_zh.md (Seed) | [[zonenkonformitaet]] | eingearbeitet |
| 260602_docs-baurecht-verfahren.md | 260602 | docs/baurecht/verfahren.md (Seed) | [[baubewilligungsverfahren]] | eingearbeitet |
| 260602_docs-baurecht-praxisfaelle.md | 260602 | docs/baurecht/praxisfaelle.md (Seed) | — | leer / Platzhalter (kein Inhalt zum Absorbieren) |
| 260607_amtlich_zh_pbg.md | 260607 | ZH-Lex LS 700.1 (amtlich, via Connector recht-ch.mjs) | direkt konsultiert | Primärquelle-Volltext (gemeinfrei Art. 5 URG) — Direktkonsultation |
| 260607_amtlich_zh_abv.md | 260607 | ZH-Lex LS 700.2 (amtlich, via Connector) | direkt konsultiert | Primärquelle-Volltext (gemeinfrei) — Direktkonsultation |
| 260607_amtlich_zh_bvv.md | 260607 | ZH-Lex LS 700.6 (amtlich, via Connector) | direkt konsultiert | Primärquelle-Volltext (gemeinfrei) — Direktkonsultation |
| 260607_amtlich_zh_bbv1.md | 260607 | ZH-Lex LS 700.21 (amtlich, via Connector) | direkt konsultiert | Primärquelle-Volltext (gemeinfrei) — Direktkonsultation |
| 260607_amtlich_zh_bbv2.md | 260607 | ZH-Lex LS 700.22 (amtlich, via Connector) | direkt konsultiert | Primärquelle-Volltext (gemeinfrei) — Direktkonsultation |

**Hinweis Primärquelle-Volltexte (`*_amtlich_*`):** amtliche, konsolidierte Gesetzes-Volltexte
(gemeinfrei nach Art. 5 URG), gezogen mit `skills/baurecht/connectors/recht-ch.mjs`. Sie sind die
**erste Konsultationsstufe** jeder Baurechtsfrage und werden **direkt** zitiert (§ + Erlass), nicht
zwingend in Wiki-Artikel absorbiert. Der Health-Check (Audit D) soll sie NICHT als Coverage-Lücke
werten — Referenzkorpus, kein Roh-Dump zum Verdichten. Aktualisieren: Connector neu laufen lassen
(zieht stets die geltende Fassung). Register/Details: [[QUELLEN]].
