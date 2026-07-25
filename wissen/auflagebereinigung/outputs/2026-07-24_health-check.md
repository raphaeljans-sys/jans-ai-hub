# Wissens-Health-Check: auflagebereinigung — 2026-07-24

Nachtschicht-Zyklus Mac Mini, Priorität 6 (wissenscheck Phase 1, unbeaufsichtigt) — alle
Mac-Mini-Trainingsdomänen (energie/planungsgrundlagen/synobsis/normen DIN-VSS-RAL) waren
für heute bereits erschöpft bzw. abgeschlossen; auflagebereinigung hatte mit 2026-07-21 den
ältesten Audit-Stand und wurde heute Nacht von keinem anderen Lauf angefasst.

## Zusammenfassung
| Audit | Findings |
|---|---|
| A Widersprüche | 0 |
| B Kaputte Backlinks/Orphans | 1 (Orphan) |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Lücken | 1 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstösse | 1 (schwerwiegend: ganzer Artikel) |
| G Promotion-Kandidaten | 4 |

## Top-3 (Raphaels Aufmerksamkeit)
1. **`wiki/gvz-einreichung-bma-sprinkler.md` durchgängig in ASCII-Umlauten (ae/oe/ue statt
   ä/ö/ü)** — rund 40+ Fundstellen im gesamten Artikel (established, Stand 20.07.2026, einer
   der jüngsten und wichtigsten Artikel der KB). Verstösst gegen Rule `umlaute-konvention.md`.
2. **`raw/_INGESTED.md` seit Gründung nicht nachgeführt** — führt nur die zwei
   Ursprungsquellen (Vorabzug + GRUNER-Adressliste), obwohl seither mit dem definitiven
   Bauentscheid BE 1171/26, den EN-105/EN-110-ZH-Formular-Originalen und den GVZ-Weisungen
   20.07/20.08 drei weitere primäre Belegquellen in die KB eingeflossen sind.
3. **Vier `emerging`-Artikel sind Promotion-Kandidaten** (aemter-stadt-zuerich,
   brandschutz-auflagen-qss, fristenlogik-bauentscheid-zh, vorgehen-auflagebereinigung) — ihre
   gemeinsame Quelle (Vorabzug Bauentscheid 2619-KISPI) ist seit 22.07.2026 (QUESTIONS.md
   „Geklärt") als materiell deckungsgleich mit dem rechtskräftigen Entscheid BE 1171/26
   bestätigt.

## Details je Audit

### A. Widersprüche
Keine gefunden. Die 7 Artikel sind eng verlinkt und konsistent — insbesondere die
SPA-Gewerkzuteilung (SPR vs. SAN, abhängig vom Sprinklerplaner) wird in
`auflagentypen-gewerkzuteilung.md` UND `brandschutz-auflagen-qss.md` identisch dargestellt
und referenziert sich gegenseitig statt zu duplizieren.

### B. Kaputte Backlinks & Orphans
- Keine toten `[[links]]` — alle 9 verwendeten Linkziele existieren als Datei.
- **Orphan:** `formular-verifizierung.md` wird nur aus `INDEX.md` referenziert, aber von
  keinem anderen Wiki-Artikel per `[[formular-verifizierung]]` zurückverlinkt (0 Backlinks
  im Fliesstext). Inhaltlich passt es zu `auflagentypen-gewerkzuteilung.md`
  (Energie-Formulare EN-ZH/EN-105/EN-110-ZH) — dort fehlt der Rückverweis.
- INDEX.md ist vollständig: alle 7 Artikel sind gelistet, keine fehlenden Einträge.

### C. Unbelegte Claims
Stichprobe (3 Kernaussagen je der 4 „älteren" Artikel) ohne Beanstandung — jeder Artikel
trägt ein sauberes `sources:`-Frontmatter mit konkreter Fundstelle (Bauentscheid-Ziffer,
PBG-/BVV-Paragraf, VKF-RL, GVZ-Weisung inkl. Lesedatum). Keine unbelegte zentrale Aussage
gefunden.

### D. RAW-Coverage-Lücken
`raw/_INGESTED.md` listet nur 2 Quellen (Vorabzug Bauentscheid 2619-KISPI, GRUNER-
Adressliste), beide vollständig eingearbeitet. Seither zitieren aber
`formular-verifizierung.md` und `gvz-einreichung-bma-sprinkler.md` drei weitere
primäre Belegquellen, die im Register fehlen:
- Bauentscheid BE 1171/26 (B26-00705.01) vom 08.06.2026 — der definitive Entscheid
- EN-105 (EnFK, August 2017) und EN-110-ZH (Kt. ZH, September 2022) Formular-Originale
- GVZ-Weisung 20.07 „Brandmeldeanlagen" (2015) und 20.08 „Sprinkleranlagen" (2015)

Kein Coverage-Problem im engeren Sinn (die Inhalte sind eingearbeitet), aber das Register
ist nicht mehr die vollständige Quellen-Wahrheit — sollte bei Gelegenheit nachgezogen werden.

### E. Veraltete Artikel
Kein Artikel älter als 90 Tage (ältester Stand 2026-06-04, 50 Tage). Kein Findung.

### F. Schreibregel-Verstösse
1. **`gvz-einreichung-bma-sprinkler.md` — Umlaute-Konvention (schwerwiegend).** Durchgängig
   ASCII-Ersatzformen statt echter Umlaute: „Ausfuehrungsbeginn", „Brandschutzbehoerde",
   „Ueberwachungsflaeche", „massstaebliche", „Generalueberholungen", „Aenderungen",
   „Vorabklaerung", „Loeschmittel", „zulaessige Stapelhoehe", „guenstigste/unguenstigste
   Wirkflaeche", „Gewaesserschutzbehoerde", „Abnahmepruefung", „Orientierungsplaene",
   „haendigt der Eigentuemerschaft", „Revisionsplaene", „Alarmuebertragung", „oeffentliche",
   „spaetestens", „Spitaeler", „Projektpruefung", „erfuellt", „Rueckmeldung", „gewuenschtem"
   u.v.m. (rund 40+ Fundstellen im ganzen Artikel). Der einzige Artikel der KB mit diesem
   Muster — die anderen 6 sind sauber in echten Umlauten.
2. **`gvz-einreichung-bma-sprinkler.md` — Frontmatter-Schema weicht ab.** Nutzt `quellen:` +
   `herkunft:` statt der schema-Felder `sources:`/`links:` (`wissen/WISSEN-CLAUDE.md`
   Ziff. „Artikel-Format"); `links:` fehlt im Frontmatter ganz, Rückverweise stehen
   stattdessen als „Backlinks:"-Zeile am Artikelende.

### G. Promotion-Kandidaten
Vier `emerging`-Artikel, deren einzige Quelle (Vorabzug Bauentscheid 2619-KISPI) laut
`QUESTIONS.md` („Vorabzug vs. rechtskräftiger Entscheid", 22.07.2026) inzwischen als
materiell deckungsgleich mit dem rechtskräftigen Entscheid BE 1171/26 bestätigt ist:
- `aemter-stadt-zuerich.md`
- `brandschutz-auflagen-qss.md`
- `fristenlogik-bauentscheid-zh.md`
- `vorgehen-auflagebereinigung.md`

Einschränkung: Alle vier stützen sich bislang auf **ein einziges Projekt** (2619-KISPI,
Stadt Zürich) — eine Promotion zu `established` wäre inhaltlich vertretbar für die
Verfahrens-/Fristenlogik (stadtspezifisch, nicht projektspezifisch), sollte aber idealerweise
an einem zweiten Zürcher Fall gegenkontrolliert werden, bevor sie als generell bewährt gilt.
Entscheid Phase 2 / Raphael.

## Keine Aktion in dieser Phase
Reine Audit-Phase (Phase 1, unbeaufsichtigt) — keine Datei wurde verändert. Backlink-Fix,
Register-Nachtrag, Umlaute-Korrektur und Promotion sind Phase-2-Kandidaten für die nächste
interaktive Session.
