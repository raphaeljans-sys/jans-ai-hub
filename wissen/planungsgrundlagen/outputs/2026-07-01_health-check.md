# Wissens-Health-Check — KB Planungsgrundlagen (Phase 1) · 2026-07-01

Audit-Lauf ueber alle 16 Wiki-Artikel + State-Files (INDEX, QUESTIONS, CHANGELOG, raw/_INGESTED,
training/curriculum). Nur Phase 1 (Audit + Ablegen), keine Aktionen. Echte Umlaute, kein ß.

## Zusammenfassung

| Audit | Thema | Ampel | Befund (Kurz) |
|---|---|---|---|
| A | Widersprueche / QUESTIONS-Spannungen | 🟡 | 1 offene Daten-Provenienz-Spannung (Egg BFS 192 vs. real 151) — im Artikel selbst gehedged |
| B | Kaputte Backlinks / Orphans / INDEX | 🟡 | 1 malformierter Pfad-Backlink `[[…/geo-zh.mjs]]`; sonst alle 14 Sachartikel im INDEX, keine Orphans |
| C | Unbelegte Claims / Geodaten-Endpunkte | 🟡 | 1 Tool-Referenz auf nicht existierenden Connector (`cad/terrain.sh`); Endpunkte/EGRID-Ketten sonst belegt |
| D | RAW-Coverage | 🟢 | _INGESTED sauber gefuehrt, jede Quelle mit Run-Datum + Ziel-Artikel; keine Waisen-Quelle |
| E | Veraltete Artikel | 🟢 | kein Artikel vor 2026-04-02; oldest 2026-06-05 (oereb-egrid-bezug) — nur weicher Reife-Hinweis |
| F | Schreibregel-Verstoesse | 🟡 | 2 Artikel (INDEX-Convention): `kartenportale-sharepoint-ablage` ohne YAML-Frontmatter |
| G | Promotion-Kandidaten / QUESTIONS | 🟢 | `recht-norm-baurechtsanalysen-benchmarks` (emerging) reif fuer established; 1 QUESTION (K6/A5) faktisch beantwortet, noch `[~]` |

Gesamt: gesund. Keine harten Widersprueche, keine echten Orphans, saubere Compounding-Historie.
3 kleine Hygiene-Punkte (malformierter Backlink, toter Connector-Verweis, fehlendes Frontmatter).

## Top-3 (Raphaels Aufmerksamkeit)

1. **Toter Connector-Verweis (Audit C):** `kartenportale-sharepoint-ablage.md` nennt als
   bevorzugten Terrain-Bezugsweg `connectors/cad/terrain.sh` — **diese Datei existiert nicht**
   (vorhanden sind nur geo-zh/geo-sz/geoshop-zh/gwr-bund/behoerden-zh.mjs). Leser wird auf ein
   nicht vorhandenes Werkzeug geschickt → auf `geo-zh.mjs --produkt height,dtm` reduzieren oder
   terrain.sh nachliefern.
2. **Malformierter Backlink (Audit B):** In `kartenportale-bund-geodaten.md` steht
   `[[planungsgrundlagen/connectors/geo-zh.mjs]]` — ein Pfad im Wiki-Backlink-Format `[[…]]`, das
   auf keinen Wiki-Artikel zeigt. Als normalen Code-Pfad/Verweis schreiben (die anderen Artikel
   nennen den Connector korrekt als `skills/planungsgrundlagen/connectors/geo-zh.mjs`).
3. **Frontmatter fehlt (Audit F):** `kartenportale-sharepoint-ablage.md` hat statt YAML-Frontmatter
   nur eine `**Status:**`-Zeile. Einziger Sachartikel ohne das im Meta-Schema vorgeschriebene
   `title/status/last_updated/sources/links`-Frontmatter → nachziehen (status established,
   last_updated 2026-06-11, sources OneDrive-Spiegel).

## Details je Audit

### A — Widersprueche & QUESTIONS-Spannungen
- **Datei:** `kartenportale-zonenplan-zh.md` (Benchmarks) + CHANGELOG Run 5.
  **Befund:** AZ-Gemeinde-Benchmark als «Egg, typ_bfsnr **192**» gefuehrt. Egg ZH traegt real
  BFS **151**; 192 ist Uster. Der Artikel hedged korrekt («lt. Datensatz»), es ist also bewusst als
  aus dem WFS uebernommen markiert und kein blinder Erfindungsfehler — aber die Zahl bleibt
  auffaellig (moegliche Geocoder-/Datensatzverwechslung, die der Artikel an anderer Stelle selbst
  als «Nachbargemeinde-Falle» warnt).
  **Vorschlag (Phase 2):** BFS-Nr. am WFS gegenpruefen; bei Bestaetigung 151 korrigieren, sonst
  Herkunft der 192 explizit vermerken. Keine inhaltliche Aussage haengt daran.
- Sonst **keine** Sach-Widersprueche zwischen Artikeln: EVEN-Umstellung 01.01.2026, BSV-2026→2027,
  RPG-2-Etappen, SZ-AZ-Abschaffung sind quer ueber alle betroffenen Artikel konsistent datiert.
- QUESTIONS-Spannungen: keine gegenlaeufigen offenen Fragen. Alle `[~]`/`[ ]` sind echte
  Rest-Luecken, keine ungeloesten Konflikte.

### B — Backlinks, Orphans, INDEX
- **Malformiert:** `kartenportale-bund-geodaten.md` Zeile 19 `[[planungsgrundlagen/connectors/
  geo-zh.mjs]]` — Wiki-Backlink-Syntax auf einen Datei-Pfad statt einen Artikel-Slug. Einziger
  kaputter Backlink der KB.
- **Cross-KB-Links (gueltig, kein Fehler):** `[[u-werte-grenzwerte-ch]]`, `[[graue-energie]]`,
  `[[minergie-standards]]` zeigen bewusst in die Nachbar-KB `wissen/energie/wiki/` — alle drei
  Zieldateien existieren dort. `[[oereb-schwyz]]`, `[[machbarkeit]]` sind Skill-Verweise (kein
  Wiki-Artikel), konventionsgemaess. `[[baurecht]]` wird als KB/Skill-Verweis genutzt.
- **INDEX-Abdeckung:** alle 14 Sachartikel sind im INDEX gelistet (Kartenportale 7, Recht/Norm 2,
  Brandschutz 1 + Sammel-Zeile, Energie 5 + Sammel-Zeile). Keine Waise, kein im INDEX gelisteter,
  aber fehlender Artikel.
- **Orphans:** keiner — jeder Artikel ist aus mindestens einem anderen Artikel oder dem INDEX
  verlinkt.

### C — Unbelegte Claims / Geodaten-Endpunkte
- **Tote Tool-Referenz:** `kartenportale-sharepoint-ablage.md` → `connectors/cad/terrain.sh`
  existiert nicht im Connector-Ordner. (Die in der M1-Checkliste genannten `gwr-bund.mjs` und
  `behoerden-zh.mjs` **existieren** dagegen — dort korrekt.)
- **Geodaten-Endpunkte / EGRID-Ketten:** durchweg belegt und mit Testdatum versehen — OEREB-PDF
  `maps.zh.ch/oereb/v2`, OGD-WFS `maps.zh.ch/wfs/OGDZHWFS` (0156/0154/0158/0152/0153/0150/0185),
  geo.admin height/STAC, Geoshop `geoservices.zh.ch/geoshopapi`, fedlex-ELI-Schema. Benchmark
  Giebelweg 12 (EGRID CH879777718909) als wiederholter Beleg. Keine erfundene EGRID/Parzelle.
- **Speculative sauber markiert:** Fall-Index in `recht-norm-baurechtsanalysen-benchmarks.md`
  weist «aus Dateiname inferiert = speculative, bis gelesen» explizit aus; ObjektwesenZH-Zeile in
  `geoportale-uebersicht` traegt Status `speculative` mit Begruendung (Art. 970 ZGB). Vorbildlich.
- Rest-Claims ≤ 3/Artikel unbelegt: nichts Auffaelliges ueber die genannten Punkte hinaus.

### D — RAW-Coverage
- `raw/_INGESTED.md` ist ein sauber gefuehrtes Register: die vier PL-Ordner (SharePoint) als
  Primaerquelle, jede eingearbeitete Datei/Web-Quelle mit Run-Nr., Datum und Ziel-Artikel-Backlink.
- Kein Eintrag «teilweise/offen» ohne Anschlussvermerk; die als «teilweise» markierten PL-Ordner
  (PL-01…04) sind bewusst laufende Domaenen mit dokumentiertem Rest (D5 Typ B/C/D, D6 EVEN,
  proj-Abstandslinien). Keine Waisen-Quelle, keine out-of-scope-Ablage.
- physisches `raw/` haelt nur `_INGESTED.md` (Rohmaterial liegt auf SharePoint) — konsistent mit
  der im Register beschriebenen Konvention.

### E — Veraltete Artikel
- Kein Artikel mit `last_updated` vor 2026-04-02 → nach der harten Regel **kein** veralteter
  Artikel.
- Weicher Hinweis: `kartenportale-oereb-egrid-bezug.md` (2026-06-05, aeltester) ist seit dem
  KB-Seed unveraendert, obwohl die Kette inzwischen im M1-Artikel (2026-06-30) end-to-end
  reifer dokumentiert ist. Kein Widerspruch, nur Reife-Gefaelle — bei naechster Beruehrung
  Querverweis auf `[[kartenportale-grundlagen-checkliste-neue-parzelle]]` setzen.
- Interne ⚠-Datenstaende (SRSZ 1.2.2021 >18 Mt.; EN-105 gueltig bis 31.12.2026; VKF-BSM 2001-15;
  MuKEn-2025-ZH-Ueberfuehrung) sind allesamt bereits in QUESTIONS/Artikeln als nachzuziehen
  markiert — sauber getrackt, nicht «still veraltet».

### F — Schreibregel-Verstoesse
- **Frontmatter fehlt:** `kartenportale-sharepoint-ablage.md` nutzt statt YAML-Frontmatter eine
  `**Status:** established · **Quelle:** …`-Zeile. Verstoss gegen das Meta-Schema-Format
  (`title/status/last_updated/sources/links`). Einziger betroffener Sachartikel.
- **Umlaute/ß/Schweizer Hochdeutsch:** kein ß in der ganzen KB; echte Umlaute durchgaengig; keine
  Deko-Ketten. Sechsstellige Daten werden nicht verwendet (KB nutzt JJJJ-MM-TT, korrekt fuer Wiki).
- Frontmatter der uebrigen 13 Sachartikel vollstaendig (title/status/last_updated/sources/links).

### G — Promotion-Kandidaten & beantwortete QUESTIONS
- **Promotion emerging→established:** `recht-norm-baurechtsanalysen-benchmarks.md` (status
  `emerging`). Inzwischen zwei Faelle voll gelesen/belegt (Maur ZH Struktur-Goldstandard +
  Willerzell SZ Quellen-Trias) plus belegter Fall-Index → traegt genug fuer `established`; der
  offene Punkt (R4b: je Fall 1–2 Saetze) ist Compounding, kein Established-Blocker.
- **QUESTION faktisch beantwortet, noch `[~]`:** curriculum **K6** / QUESTIONS **A5**
  (Eigentumsabfrage ObjektwesenZH) ist inhaltlich abschliessend geklaert (nur mit
  Interessennachweis Art. 970 ZGB, **nicht** login-frei automatisierbar) — kann von `[~]` auf
  `[x] (negativ abgeschlossen)` gesetzt werden, statt als offen zu erscheinen.
- Sonst keine QUESTION, die im Wiki laengst beantwortet, aber noch als offen gefuehrt waere.

---
_Phase 1 abgeschlossen. Phase-2-Aktionen (Backlink/Frontmatter/Connector-Fix, Promotion,
QUESTION-Statusupdate, BFS-192-Verifikation) nur interaktiv nach Freigabe._
