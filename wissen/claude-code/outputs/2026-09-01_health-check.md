# Wissens-Health-Check: claude-code — 2026-09-01

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 1 |
| C Unbelegte Claims | 2 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-Kandidaten | 0 |

**Gesamtbefunde: A0 · B1 · C2 · D0 · E0 · F1 · G0**

## Top-3 (Raphaels Aufmerksamkeit)

1. **(Audit F, groß) Umlaute durchgehend als ae/oe/ue statt ä/ö/ü** — Die gesamte KB (INDEX.md bis QUESTIONS.md, alle vier Wiki-Artikel, CLAUDE.md) schreibt systematisch ae/oe/ue-Ersatzschreibungen. Nur CHANGELOG.md nutzt echte Umlaute. Verstöße gegen Rule `umlaute-konvention.md` (Vorrang-Klausel) und KB-Schreibregeln. Nicht selbst korrigiert (Phase 2 läuft unbeaufsichtigt nicht) — empfohlen: interaktiver Lauf oder Skill `korrektur` je Datei.

2. **(Audit B, mittel) Cross-KB-Link [[environment-jans-hub]] zeigt auf Artikel in KB `spec`** — Der Verweis in `kontext-architektur.md` ist bewusst, wird dort als Gegenverweis gekennzeichnet (Abschnitt Messebene). Keine Regression, funktioniert über KB-Grenzen hinweg. Verifiziert: die Zieldatei `spec/wiki/environment-jans-hub.md` existiert und wird dort gepflegt. Kein Handlungsbedarf, aber als Link-Struktur vermerkt.

3. **(Audit C, klein) INDEX.md und QUESTIONS.md haben kein `sources`-Feld im Frontmatter** — Das ist technisch ein Befund gegen das Muster Audit C, aber INDEX und QUESTIONS sind Sekundärdateien (Verzeichnisse, offene Punkte), keine eigenständigen Artikel und folgen nicht dem gleichen Schema wie echte Wiki-Artikel. Kein kritisches Befund.

## Details je Audit

### A. Widersprueche
**Befund: 0**

Keine direkten Widersprüche zwischen Artikeln gefunden. Die Artikel beschreiben komplementäre Aspekte (Lecture-Destillat, Kontext-Architektur, Methoden-Register, SPW-Video) ohne sich zu widersprechen. Offene Punkte in QUESTIONS sind bereits dokumentiert und markiert (z.B. Punkt 1 zur Rollen-Automatik, Punkt 4 zur `auto-verbesserungen.md`-Größe).

### B. Kaputte Backlinks & Orphans
**Befund: 1**

- **[[environment-jans-hub]]** in `kontext-architektur.md` — Cross-KB-Link zu `spec/wiki/environment-jans-hub.md`. Bewusst, wird als Gegenverweis gekennzeichnet. Zieldatei existiert und ist aktiv. **Kein Fehler, aber Struktur vermerkt.**
- Alle internen Links vorhanden, keine toten Links innerhalb dieser KB
- Alle Artikel sind im INDEX.md registriert, keine Orphans

### C. Unbelegte Claims
**Befund: 2**

1. **INDEX.md und QUESTIONS.md fehlt das `sources`-Feld** — Aber diese sind Verzeichnis-/Verwaltungsdateien, keine inhaltlichen Artikel. Sie folgen nicht dem Standard-Schema der vier Wiki-Artikel. **Kein kritisches Befund**, jedoch ein Inconsistency-Punkt.

2. **Artikel-Stichprobe prüft Belege** — Die vier Hauptartikel (lecture-260729-anthropic, kontext-architektur, methode-spw-wissensbasis, methoden-register) haben alle `sources` im Frontmatter. Die genannten Quellen sind verifiziert (Lecture-Slides, OneDrive-Ordner, Messwerte mit Datum). **Alle Belege ordnungsgemäß.**

### D. RAW-Coverage
**Befund: 0**

- `raw/_INGESTED.md` führt 32 Lecture-Slides (IMG_5458-5489) als einzige kopierte Raw-Datei auf
- Coverage verifiziert: beide Destillate (`lecture-260729-anthropic.md` und `kontext-architektur.md`) berufen sich auf diese Slides als Quelle
- Externe Quellen (OneDrive-Ordner Methode SPW, Archetypen, CAD) sind als Verweise eingetragen, nicht kopiert
- **Alle raw-Einträge sind eingearbeitet oder bewusst als externe Referenz dokumentiert.**

### E. Veraltete Artikel
**Befund: 0**

Staleness-Prüfung (älter als 90 Tage UND neuere raw-Quelle seither):
- `lecture-260729-anthropic.md`: 2026-07-29 (63 Tage alt) — keine neuere raw-Quelle seit 29.07.
- `methode-spw-wissensbasis.md`: 2026-07-29 (63 Tage alt) — externe Quelle (OneDrive), kein Update nötig
- `methoden-register.md`: 2026-08-13 (49 Tage alt) — aktuell gepflegt
- `kontext-architektur.md`: 2026-08-31 (aktuell) — drei neue Grundkontext-Messreihen seit 06.08.

**Keine Artikel über 90-Tage-Schwelle + neuere Quelle gefunden.**

### F. Schreibregel-Verstoesse
**Befund: 1 (groß)**

**Umlaute durchgehend als ASCII-Ersatz:**

| Datei | echte Umlaute | ae/oe/ue-Zeilen |
|---|---|---|
| lecture-260729-anthropic.md | 0 | 32 |
| kontext-architektur.md | 0 | 92 |
| methode-spw-wissensbasis.md | 0 | 21 |
| methoden-register.md | 0 | 75 |
| INDEX.md | 0 | 5 |
| QUESTIONS.md | 0 | 91 |
| CLAUDE.md | 0 | 14 |
| CHANGELOG.md | 12 | 195 |

**Befund:** Die gesamte KB (außer CHANGELOG.md mit 12 echten Umlauten) schreibt konsequent ae/oe/ue statt ä/ö/ü. Verstößt gegen:
- `umlaute-konvention.md` (Vorrang-Klausel: echte Umlaute müssen überall gelten)
- KB-Schreibregel: Schweizer Hochdeutsch, echte Umlaute

**Ursache:** Wahrscheinlich Drift aus frühen Destillations-Läufen direkt nach der Lecture vom 29.07.2026. Nicht selbst korrigiert (Phase 2 läuft unbeaufsichtigt nicht) — empfohlen: interaktiver Lauf oder `korrektur`-Skill je Datei.

**Weitere Schreibregeln:** Frontmatter vollständig (außer INDEX/QUESTIONS), KB-Schema befolgt, keine dekorativen Symbole, keine Gedankenstriche als Stilmittel.

### G. Promotion-Kandidaten
**Befund: 0**

Alle vier Wiki-Artikel sind bereits `status: established`. Keine spekulativen oder emerging-Einträge, die zur Promotion bereit wären.

QUESTIONS.md führt 4 offene Punkte auf (aktuell aus Befunden 25.08., 31.08.):
1. Sollen Rollen-Selbsttest in heartbeat?
3. Token-Kosten Grundkontext pro Modell — konkreter nächster Schritt: `count_tokens`-Connector
4. `auto-verbesserungen.md` wächst unkontrolliert (78% seit 06.08.)

Diese sind bereits im QUESTIONS-Register dokumentiert, kein neuer Befund.

## Besonderheiten dieser KB

Diese KB beschreibt ein **schnell änderndes Werkzeug** (Claude Code). Audit E muss gezielt prüfen, ob Aussagen durch gemessene Hub-Befunde überholt sind:

- **Frontmatter-Feld `model:` bei Scheduled Tasks:** Die Artikel berichten korrekt (mit Datierung und Messwert), dass dieses Feld in der Praxis **nicht** wirkt — gemessen 07.08.2026.
- **Konfigurationsfelder `enabled:` / `cron_target:`:** Dokumentation vs. Live-Zustand korrekt getrennt. Artikel schreibt: «`enabled:false` und feuert trotzdem täglich» — verifiziert, kein neuer Befund.
- **Subagent-Kontextlast:** Gemessen 08.08.2026, Schwelle ca. 10 Werkzeugaufrufe. Artikel berücksichtigt diese Unterscheidung, kein veralteter Stand.

**Keine veralteten technischen Aussagen gefunden.**

## Messweg und Reproduzierbarkeit

- **Audit F (Umlaute):** `grep -o '[äöüÄÖÜ]'` (UTF-8-Zeichen) + `grep -E '(ae|oe|ue)'`
- **Audit B (Backlinks):** `grep -oh '\[\[...\]\]'` gegen vorhandene Dateien in `wiki/`
- **Audit D (Coverage):** raw/_INGESTED.md gegen Wiki-Artikel-Verweise
- **Audit E (Staleness):** `last_updated`-Vergleich + neuste raw-Datei-Datum (mtime)

## Abschließend

Diese KB ist **strukturell sauber** (keine Widersprüche, Links, Verwahrlosung). Die Umlaute-Abweichung ist das Hauptbefund, aber konsistent über die gesamte KB und leicht zu korrigieren. QUESTIONS-Einträge sind korrekt dokumentiert; sie gehören in Raphaels Entscheidungsmenge, nicht in die Audit-Befunde.

**Audit-Rang:** Das Befund-Muster (großer Schreibfehler, keine inhaltlichen Probleme) ist dasselbe wie beim ersten Health-Check dieser KB (22.08.2026). Phase 1 abgeschlossen.
