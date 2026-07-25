# Wissens-Health-Check — KB Auflagebereinigung — 2026-07-01

Phase-1-Audit (unbeaufsichtigt). KB-Pfad: `wissen/auflagebereinigung/`.
Umfang: 6 Wiki-Artikel + INDEX + QUESTIONS, 3 Outputs, raw/ (nur `_INGESTED.md`, keine
Quell-Dateien auf Disk — Register verweist auf 2 Quellen im Projekt-Archiv).

## Zusammenfassung

| Audit | Thema | Ampel | Befund (Kurz) |
|---|---|---|---|
| A | Widersprüche + QUESTIONS | 🟠 | 1 echter Widerspruch: SPA=SAN (brandschutz-Artikel) ↔ SPA=SPR (Zuteilungs-Artikel). 2 QUESTIONS faktisch geklärt, noch offen gelistet. |
| B | Backlinks / Orphans / INDEX | 🟢 | Alle `[[…]]` auflösbar, keine Orphans, alle 6 Artikel im INDEX. |
| C | Unbelegte Claims | 🟢 | Ämter-/Fristen-/Gewerk-Aussagen durchgehend belegt (Entscheid-Ziffer + Norm). Keine unbelegten Claims. |
| D | RAW-Coverage | 🟢 | Beide `_INGESTED`-Quellen vom Wiki zitiert. raw/-Ordner hat keine Dateien (Quell-PDFs im Projekt-Archiv — konzeptkonform). |
| E | Veraltete Artikel | 🟠 | 4 Artikel `last_updated: 2026-06-04` (< 2026-04-02? nein). Aber: brandschutz-Artikel ist inhaltlich überholt (SPA-Split, def. Entscheid BE 1171/26). |
| F | Schreibregel-Verstösse | 🟢 | Echte Umlaute, kein ß, Frontmatter vollständig, Schweizer Hochdeutsch. Keine Deko-Verstösse. |
| G | Promotion-Kandidaten | 🟠 | 2 emerging-Artikel reif für `established` (mehrfach belegt); Einreich-Sicht (Output 13.06.) noch nicht im Wiki. |

Legende: 🟢 ok · 🟠 Aufmerksamkeit · 🔴 Handlungsbedarf.

## Top-3 (Raphaels Aufmerksamkeit)

1. **Widerspruch SPA-Zuteilung (Audit A).** `brandschutz-auflagen-qss.md` (Zeile 50) sagt
   noch «SPA = Gewerk **SAN**», während der massgebliche Artikel
   `auflagentypen-gewerkzuteilung.md` am 04.06. bewusst auf **SPR** (eigener Sprinklerplaner,
   JOMOS) gesplittet wurde. Beide `last_updated: 2026-06-04` — der Brandschutz-Artikel wurde
   beim Split nicht nachgezogen. Phase 2: Zeile 50 auf «SPA = **SPR** (eigener Sprinklerplaner;
   sonst SAN)» korrigieren.

2. **Zwei QUESTIONS faktisch geklärt, aber noch als «Offen» gelistet (Audit A/G).**
   (a) «Vorabzug vs. rechtskräftiger Entscheid» — durch def. BE 1171/26 (08.06.) + Diff im
   Output 13.06. geklärt (keine materiellen Änderungen). (b) «Adressdiskrepanz
   Lenggstrasse/Lengstrasse» — Output 13.06. hält fest, dass «ETC»/Schreibweisen amtliche
   Tippfehler sind, Zustelladresse bestätigt. Phase 2: beide nach «Geklärt (archiviert)»
   verschieben, Erkenntnis in fristenlogik-/vorgehen-Artikel verankern.

3. **Einreich-Aufstellung (Output 13.06.) noch nicht ins Wiki gehoben (Audit G).** Die
   amtsgegliederte Einreich-/Formularsicht mit Bezugsquelle (EVEN ab 01.01.2026, EN-110-ZH-PDF,
   behoerden-zh.mjs) ist ein zweites Standard-Deliverable neben der planerorientierten Liste —
   der Output notiert selbst «→ vorgehen-auflagebereinigung ergänzen», was noch aussteht.

## Details je Audit

### A. Widersprüche + QUESTIONS
- **Widerspruch (aktiv):** `brandschutz-auflagen-qss.md` Z. 50 «SPA = Gewerk SAN» ↔
  `auflagentypen-gewerkzuteilung.md` Z. 23/38 «SPA → SPR (wenn eigener Sprinklerplaner; sonst
  SAN)». CHANGELOG 2026-06-04 dokumentiert den Split explizit; der Brandschutz-Artikel blieb
  auf dem alten Stand. **Vorschlag:** Z. 50 angleichen (SPR, sonst SAN), `last_updated` heben.
- **Historischer Rest (nicht Wiki, kein Fehler):** Output `2026-06-04_…plan-dokumentenliste.md`
  Z. 26 nennt noch «SPA=SAN» — als datierter Output korrekt/eingefroren, nicht zu ändern.
- **QUESTIONS geklärt, noch offen gelistet:** «Vorabzug vs. rechtskräftig» und
  «Adressdiskrepanz Lenggstrasse/Lengstrasse» sind durch Output 13.06. beantwortet.
  **Vorschlag:** archivieren. **Weiter offen (korrekt):** Schallschutz SIA 181 Federführung,
  GVZ-Einreichungsweg BMA/Sprinkler, Ämter-Direktnummern-Bündelung.

### B. Backlinks / Orphans / INDEX
- Alle 31 `[[…]]`-Verweise lösen auf existierende Dateien auf (inkl. `[[INDEX]]`, `[[QUESTIONS]]).
- Keine Orphans: alle 6 Content-Artikel sind im INDEX gelistet und untereinander verlinkt.
- `formular-verifizierung` korrekt im INDEX (seit 2026-06-10). **Kein Handlungsbedarf.**

### C. Unbelegte Claims
- Stichprobe Ämter-Zuordnungen (`aemter-stadt-zuerich.md`), Fristen (`fristenlogik-…`),
  Gewerk-Mapping (`auflagentypen-…`), Formular-Zuordnung (`formular-verifizierung.md`): jede
  trägt Beleg (Entscheid-Ziffer II.x, PBG/BVV/VKF-RL, Formular-Original). Quellenpflicht der
  KB-Schreibregeln eingehalten. **Kein Handlungsbedarf.**

### D. RAW-Coverage
- `_INGESTED.md` registriert 2 Quellen (Vorabzug-Entscheid 2619-KISPI, GRUNER-Adressliste),
  beide von mehreren Wiki-Artikeln zitiert → Coverage vollständig.
- raw/ enthält physisch nur `_INGESTED.md`; die Quell-PDFs bleiben laut CLAUDE.md bewusst im
  Projekt-Archiv (SharePoint). Konzeptkonform, keine Lücke. **Hinweis:** Der def. Entscheid
  BE 1171/26 (08.06.) ist bereits im Wiki verarbeitet, aber (noch) nicht als Zeile im
  `_INGESTED.md` registriert — Coverage-Register könnte um diese Quelle ergänzt werden (Phase 2).

### E. Veraltete Artikel
- `last_updated < 2026-04-02` UND neuere Quelle: **keiner** (alle Daten 2026-06).
- Inhaltlich überholt trotz jungem Datum: `brandschutz-auflagen-qss.md` (2026-06-04) — SPA-Split
  nicht nachgezogen (siehe A) und def. Entscheid BE 1171/26 bestätigt/präzisiert einige Ziffern
  (Formular-Zuordnung wurde in `formular-verifizierung.md` nachgeführt, im Brandschutz-Artikel
  nicht referenziert). **Vorschlag:** beim Fix aus A gleich `last_updated` + Verweis auf
  def. Entscheid ergänzen.

### F. Schreibregel-Verstösse
- Frontmatter (title/status/last_updated/sources/links) in allen 6 Artikeln vollständig.
- Echte Umlaute ä/ö/ü durchgehend; kein ß gefunden; Schweizer Hochdeutsch; keine Deko-/
  Emoji-Verstösse in den Wiki-Artikeln. **Kein Handlungsbedarf.**

### G. Promotion-Kandidaten
- **`aemter-stadt-zuerich.md`** (emerging): mehrfach belegt (Vorabzug + def. Entscheid), im
  Produktiveinsatz (2 Outputs) → Kandidat für `established`.
- **`fristenlogik-bauentscheid-zh.md`** (emerging): durch Vorbemerkungen-Mechanik + def.
  Entscheid bestätigt → Kandidat für `established`.
- **`vorgehen-auflagebereinigung.md`**: sollte um die Einreich-Aufstellungs-Sicht (Output 13.06.)
  ergänzt werden, bevor Promotion sinnvoll ist.
- **Beantwortete QUESTIONS → siehe A** (zwei archivierbar).
