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
| 260607_amtlich_zh_bzo-*.md (44 Dateien) | 260607 | oerebdocs.zh.ch (BZO je Gemeinde, via Connector) | direkt konsultiert | Kommunale BZO-Volltexte ZH (gemeinfrei) — Direktkonsultation; Register siehe [[QUELLEN]] |
| 260607_amtlich_sz_baur-*.md (4 Dateien) | 260607 | oereblex.sz.ch (Baureglement je Gemeinde, via Connector) | direkt konsultiert | Kommunale Baureglemente SZ (gemeinfrei); Wollerau = OCR-Pendenz (Bild-PDF) |
| 260823_amtlich_sz_merkblatt-z15-strassenabstand-zufahrten.md | 260823 | Tiefbauamt SZ, Merkblatt Formular Z15 (fehlabgelegt im ZH-Projektordner 2414 Thalwil, Ordner "05 VSS NORM") — Gesetzesauszug StraG/StraV SZ wörtlich zitiert | [[strassenabstand-zufahrten-vorteilsabgabe-sz]] | eingearbeitet, Sekundärquelle (kein vollständiger Connector-Volltext StraG/StraV SZ) |
| 260823_amtlich_zh_formulare-laermschutz-fals-formularS.md | 260823 | Kt. ZH Fachstelle Lärmschutz + Formular S (Struktur-Extrakt aus amtlichen Formularen im Projektordner 2414 Thalwil) | [[laermschutz-und-nichtionisierende-strahlung]] | eingearbeitet |
| 260823_amtlich_sz_strassengesetz.md | 260823 | sz.ch (SRSZ 442.110, amtlich, direkt bezogen, SRSZ-Stand 1.2.2025) | [[strassenabstand-zufahrten-vorteilsabgabe-sz]] | eingearbeitet, Primärquelle-Volltext (gemeinfrei) — Direktkonsultation, ersetzt die bisherige Sekundärquelle (Merkblatt-Auszug) |
| 260823_amtlich_sz_strassenverordnung.md | 260823 | sz.ch (SRSZ 442.111, amtlich, direkt bezogen, SRSZ-Stand 1.2.2025) | [[strassenabstand-zufahrten-vorteilsabgabe-sz]] | eingearbeitet, Primärquelle-Volltext (gemeinfrei) — Direktkonsultation, ersetzt die bisherige Sekundärquelle (Merkblatt-Auszug) |
| 260823_amtlich_ch_gschv-anhang4.md | 260823 | Fedlex (SR 814.201, ELI 1998/2863_2863_2863, Stand 1.12.2025), direkt bezogen über `fedlex.data.admin.ch`-Filestore | `wiki/QUESTIONS.md` (Frage B geklärt, keine Wiki-Absorption nötig — reines Negativergebnis) | eingearbeitet, Primärquelle-Volltext (gemeinfrei Art. 5 URG) — Direktkonsultation |
| 260823_amtlich_zh_verv.md | 260823 | ZH-Lex LS 700.4 (amtlich, konsolidiert, Nachtrag 127, Fassungsstand 1.1.2025, via Connector recht-ch.mjs) | [[umgebungsgestaltung-und-einfriedungen]] | eingearbeitet, ersetzt den Fassungsvorbehalt der bisherigen 2019er-Erlassfassung (260803_amtlich_zh_verkehrserschliessungsv.md, bleibt als Referenz stehen) — § 27/§ 27a-Drift seit 1.12.2024 gefunden und korrigiert |
| 260823_amtlich_zh_strav-1978.md | 260823 | zhlex-Erlassseite LS 700.4, Fassung 069 vom 19.04.1978 (amtlich, AUFGEHOBEN per 01.06.2020, historischer Beleg), direkt bezogen und mit `pdftotext -layout` extrahiert | [[umgebungsgestaltung-und-einfriedungen]] | eingearbeitet, Primärquelle-Volltext §§ 1-12 (gemeinfrei) — belegt §§ 10-12 StrAV wörtlich für den Nachfolgenorm-Check gegen die VErV |
| 260823_amtlich_zh_verv-erlaeuterungsbericht.md | 260823 | zh.ch, Regierungsratsbeschluss-Beilage 5542/2019 (Erläuterungsbericht zur VErV, amtlich), Auszug Abschnitte B+D | [[umgebungsgestaltung-und-einfriedungen]] | eingearbeitet, Primärquelle-Erläuterungsbericht (gemeinfrei) — belegt, dass §§ 10-12 StrAV in der VErV ersatzlos entfallen sind (jede andere StrAV-Norm wird dort einzeln zugeordnet) |
| 260823_amtlich_zh_gg.md | 260823 | zhlex (notes.zh.ch), LS 131.1 Gemeindegesetz, Nachtrag 132 (Stand 1.4.2026, amtlich), direkt bezogen (kein Connector-Key) und mit `pdftotext -layout` extrahiert, Auszug §§ 38-52 + 170-171 | [[baubewilligungsverfahren]] | eingearbeitet, Primärquelle-Auszug (gemeinfrei) — belegt Korrektur § 41 GG (Präsidialentscheide) trägt nicht «Bauvorstand/einzelne Mitglieder», das ist § 44 GG |

**Hinweis Primärquelle-Volltexte (`*_amtlich_*`):** amtliche, konsolidierte Gesetzes-Volltexte
(gemeinfrei nach Art. 5 URG), gezogen mit `skills/baurecht/connectors/recht-ch.mjs`. Sie sind die
**erste Konsultationsstufe** jeder Baurechtsfrage und werden **direkt** zitiert (§ + Erlass), nicht
zwingend in Wiki-Artikel absorbiert. Der Health-Check (Audit D) soll sie NICHT als Coverage-Lücke
werten — Referenzkorpus, kein Roh-Dump zum Verdichten. Aktualisieren: Connector neu laufen lassen
(zieht stets die geltende Fassung). Register/Details: [[QUELLEN]].
