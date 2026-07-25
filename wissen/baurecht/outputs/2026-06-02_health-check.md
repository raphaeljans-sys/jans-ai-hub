# Wissens-Health-Check: baurecht — 2026-06-02

Erster Health-Check dieser Wissensbasis. Scope: 4 Wiki-Artikel, 5 raw/-Quellen,
0 frühere Outputs. Durchgeführt durch Skill `wissenscheck` (Phase 1).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks / Orphans | 0 |
| C Unbelegte / unverifizierte Claims | 3 |
| D RAW-Coverage-Luecken | 1 (+1 Reklassierung) |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Quellenpflicht verletzt (C):** Zwei rechtlich relevante Aussagen ohne harten Beleg
   — Baubewilligungs-Gebühren „1–3 ‰ der Bausumme" (keine Quelle) und die Waldabstand-
   Ausnahmewerte „bis 20 m / bis 10 m" (kein präziser §). Im Baurecht heikel.
2. **Coverage-Lücke (D):** Aus `raw/…pbg-zh.md` sind der ganze Raumplanungsteil
   (Richtplan, Nutzungsplanung) und die Gestaltungsvorschriften (§ 238 Einordnung,
   Ortsbild-/Denkmalschutz) in keinem Wiki-Artikel verarbeitet.
3. **Falsch-Flag korrigiert (D):** `raw/…praxisfaelle.md` ist ein **leerer Platzhalter**
   (nur Themen-Kategorien, keine echten Fälle) — also keine echte Coverage-Lücke. Das
   Setup-Flag „praxisfaelle nicht eingearbeitet" war eine Überzeichnung; `_INGESTED.md`
   sollte auf „leer / kein Inhalt zum Absorbieren" korrigiert werden.

## Details je Audit

### A. Widersprueche zwischen Artikeln
Keine. Die thematisch überlappenden Paare wurden geprüft: `zonenkonformitaet`
(Zonen-Höhen/AZ-Tabelle) ↔ `abstaende-und-hoehen` (Höhenbegriffe) und ↔
`nutzungsziffern` (AZ-Definition) sind konsistent; kleiner Grenzabstand 5 m in der
Zonentabelle deckt sich mit der Begriffsdefinition. Keine in `QUESTIONS.md`
vorgemerkten Spannungen (Sektion noch leer).

### B. Kaputte Backlinks & Orphans
Keine. Alle 26 `[[…]]`-Links lösen auf existierende Dateien auf (`nutzungsziffern`,
`abstaende-und-hoehen`, `baubewilligungsverfahren`, `zonenkonformitaet`, `QUESTIONS`).
Kein Orphan — jeder der 4 Artikel wird von mindestens einem anderen verlinkt, alle 4
stehen im `INDEX.md`.

### C. Unbelegte / unverifizierte Claims
1. **`baubewilligungsverfahren` — Gebühren „typisch 1–3 ‰ der Bausumme".** Keine Quelle
   in `sources`, kein §. → belegen (kommunale Gebührenordnung) oder als Richtwert ohne
   Gewähr kennzeichnen.
2. **`abstaende-und-hoehen` — Waldabstand-Ausnahmen „bis 20 m / Reduktion bis 10 m nur
   durch kantonalen Gestaltungsplan".** Grund-§ vorhanden (§ 18b Waldgesetz, § 268 PBG),
   aber die konkreten Schwellenwerte sind nicht präzise auf einen Artikel/Absatz gepinnt.
   → gegen aktuellen Gesetzestext verifizieren.
3. **`zonenkonformitaet` — Richtwert-Tabelle (AZ / GA / Gebäudehöhe je Zone).** Nur auf
   „BZO Stadt Zürich (Totalrevision 2016)" pauschal gestützt, keine Verifikation der
   Einzelwerte gegen die aktuelle BZO. Artikel kennzeichnet sich selbst als
   „Orientierung" — akzeptabel, aber als `needs-verification` zu führen.

### D. RAW-Coverage
- **Echte Lücke:** `260602_docs-baurecht-pbg-zh.md` ist nur teilweise eingearbeitet.
  Nicht abgebildet im Wiki: Teil 1 Raumplanung (kantonaler Richtplan, regionale/
  kommunale Nutzungsplanung) und Gestaltungsvorschriften (§ 238 Einordnung, Ortsbild-/
  Denkmalschutz). → neuer Artikel `raumplanung-und-gestaltung` oder Ergänzung.
- **Reklassierung:** `260602_docs-baurecht-praxisfaelle.md` ist ein leerer Platzhalter
  (Themen-Kategorien, keine echten Fälle). Kein Inhalt zum Absorbieren → `_INGESTED.md`
  Status von „offen (Coverage-Lücke)" auf „leer / Platzhalter" setzen. Echter Artikel
  `praxisfaelle-jans` erst, wenn reale Fälle reinkommen.
- `bzo-zh` (teilweise): Q-/K-Zonen und Online-Werkzeuge sind abgedeckt; Rest unkritisch.

### E. Veraltete Artikel
Keine. Alle 4 `last_updated: 2026-06-02` (heute), < 90 Tage; keine neueren raw/-Quellen
seit Erstellung.

### F. Schreibregel-Verstoesse
- **`baubewilligungsverfahren.md:45`** verwendet den Pfeil `→` in Prosa
  („Nachforderung → Zeitverlust"). Rule „Keine dekorativen Symbole in JANS-Dokumenten"
  (260601). → durch „führt zu" oder Gedankenstrich ersetzen. (In `QUESTIONS.md` steht
  ebenfalls ein `→`, aber das ist eine interne Arbeits-/Metadatei — niedrigere Priorität.)
- Umlaute/ß sauber: keine ASCII-Umlaute in Prosa (die `ae/oe`-Treffer sind nur
  Dateinamen-Slugs wie `abstaende-und-hoehen`, korrekt), kein ß. Frontmatter auf allen
  4 Artikeln vollständig.

### G. Promotion-Kandidaten
Keine. Alle 4 Artikel sind bereits `established`, kein `speculative`-Artikel vorhanden,
keine `QUESTIONS`-Einträge inzwischen beantwortet. (Backlog statt Promotion:
`Gewässerabstand` wird in `baubewilligungsverfahren` als Stolperstein erwähnt, hat aber
keinen eigenen Artikel — Stub-Kandidat, wenn gewünscht.)

## Empfohlene Aktionen (für Phase 2)
- **C1/C2:** Gebühren-Aussage und Waldabstand-Ausnahmewerte belegen oder als
  unverbindlich kennzeichnen.
- **D:** Artikel `raumplanung-und-gestaltung` aus `pbg-zh` kompilieren.
- **D-Reklassierung:** `_INGESTED.md` für praxisfaelle korrigieren.
- **F:** Pfeil `→` in `baubewilligungsverfahren.md` ersetzen.
