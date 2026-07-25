# Wissens-Health-Check — KB kunde-bopp

Datum: 2026-07-01 · Phase 1 (Audit, unbeaufsichtigt) · Skill `wissenscheck`
Umfang: 1 Wiki-Artikel (`profil-christoph-bopp.md`), INDEX, QUESTIONS, raw/ (leer), outputs/ (leer)

## Zusammenfassung

| Audit | Thema | Ampel | Kurzbefund |
|---|---|---|---|
| A | Widersprueche | gruen | Keine inhaltlichen Widersprueche im Artikel/INDEX/QUESTIONS. |
| B | Backlinks / Orphans / nicht im INDEX | gelb | 2 kaputte Backlinks (`[[auftrags-muster-bopp]]`, `[[zusammenarbeit-lessons-bopp]]` — Artikel existieren nicht). Kein Orphan. |
| C | Unbelegte Claims | gelb | Firmenrollen WOMA/Nova nicht via Register verifiziert (selbst in QUESTIONS als offen markiert). Sonst gut belegt. |
| D | RAW-Coverage | gruen* | raw/ leer (0 %) — aber dokumentiert: Seed aus Mail-Archiv, nicht aus raw/. Kein Deckungsproblem. |
| E | Veraltete Artikel | gruen | last_updated 2026-06-03 (nach Cutoff 2026-04-02); keine neuere Quelle unverarbeitet. Milde Datums-Alterung (siehe Detail). |
| F | Schreibregeln | rot | Systematische ae/oe/ue-Digraphen statt echter Umlaute in der Prosa — verletzt KB-Regel Z. 44 + `umlaute-konvention`. |
| G | Promotion-Kandidaten | gelb | 4 Projekt-Detailartikel + 2 Cluster-Artikel als beantwortbar/anlegbar offen; profil-Artikel reif fuer `established`, sobald belegt. |

\* D formal 0 % Coverage, aber bewusst so (Mail-Archiv-Seed), daher keine rote Ampel.

## Top-3 (Raphaels Aufmerksamkeit)

1. **Audit F (rot): echte Umlaute fehlen durchgaengig.** Der einzige Wiki-Artikel schreibt die Prosa in ae/oe/ue-Digraphen (fuer, moegliche, bestaetigen, haeufigstes, Verhaeltnis, Praeferenzen, Eigentuemerschaft, Grundstueck, Begruendung, Bautraeger, Zuerichstrasse …). Das ist der Kern-Verstoss gegen die KB-Schreibregel und die `umlaute-konvention`. → Phase-2-Massnahme: Artikel einmalig auf echte ä/ö/ü umstellen (Skill-Identifikatoren wie `ankaufspruefung` bleiben unveraendert).
2. **Audit B (gelb): 2 tote Backlinks.** `profil-christoph-bopp` verlinkt auf `[[auftrags-muster-bopp]]` und `[[zusammenarbeit-lessons-bopp]]`, die es noch nicht gibt. → entweder Stub-Artikel anlegen oder Links vorerst entschaerfen.
3. **Audit G (gelb): reife Promotion-/Anlage-Kandidaten.** Vier belegte Projekte (Ebmatingen 113/115, Romanshorn Hafenstrasse 46, Baar Zugerstrasse 49, Giebelweg 12) sind aus Archiv/Mail bereits so faktenreich, dass je ein Projekt-Detailartikel angelegt werden koennte — schliesst zugleich die INDEX-Luecken und die offenen QUESTIONS.

## Details je Audit

### A — Widersprueche
- Kein Finding. Rollen-Zuordnung (woma/nova/bluewin), Projektliste und Auftrags-Cluster sind ueber Artikel, INDEX und QUESTIONS konsistent. Das Datum 2026-06-03 wird einheitlich als Stand gefuehrt.

### B — Backlinks / Orphans / nicht im INDEX
- **Finding B1:** `wiki/profil-christoph-bopp.md` (Frontmatter `links:` + Fliesstext) verweist auf `[[auftrags-muster-bopp]]` — Zieldatei existiert nicht. Vorschlag: Stub-Artikel `auftrags-muster-bopp.md` anlegen (Inhalt bereits im Profil vorskizziert) oder Link auf Klartext reduzieren.
- **Finding B2:** derselbe Artikel verweist auf `[[zusammenarbeit-lessons-bopp]]` — Zieldatei existiert nicht. Vorschlag: analog Stub anlegen oder entschaerfen.
- Hinweis (kein Finding): `[[QUESTIONS]]` (INDEX) und `[[project_2620_bauherrschaft]]` (Cross-Referenz auf Memory) zeigen auf Ziele ausserhalb des Wiki-Artikelraums — akzeptabel, kein toter Wiki-Backlink.
- Orphans: keiner — der einzige Artikel ist im INDEX gefuehrt.

### C — Unbelegte Claims
- **Finding C1:** Firmenrollen «WOMA Maur — Verwaltung/Bautraeger» und «Nova Property — Investor/Asset-Management» sind Zuschreibungen ohne Register-Beleg. In `QUESTIONS.md` selbst als offen markiert («Exakte Firmenrollen verifizieren (Handelsregister/Zefix)»). Vorschlag: via `connectors/zefix.mjs --firm` verifizieren und Quelle nachtragen; bis dahin die betreffenden Zeilen mit Vorbehalt kennzeichnen.
- Gut belegt: Natel, Honorar-Pauschale CHF 1'000 (Mail 2026-06-03), die 5 Archiv-Studien (Quelle `AR - 03 Studien`), Notariatstermin 15.12.2025. Der Artikel-Status `emerging` passt zu diesem Belegstand.

### D — RAW-Coverage
- raw/ enthaelt nur `_INGESTED.md`; formale Coverage 0 %. Das ist dokumentiert und beabsichtigt: der Seed-Artikel wurde direkt aus dem Apple-Mail-Archiv (25 Mails) kompiliert. Kein offenes, uneingearbeitetes Rohmaterial → keine rote Ampel.
- **Empfehlung (kein Verstoss):** kuenftige Bopp-Threads/Dossiers (Giebelweg-Dossier, Wertquoten-xlsx) als Datei in raw/ ablegen und in `_INGESTED.md` registrieren, damit die Belegkette pruefbar wird.

### E — Veraltete Artikel
- `profil-christoph-bopp` last_updated 2026-06-03 → juenger als der Cutoff 2026-04-02, gilt **nicht** als veraltet.
- **Milder Hinweis:** Der Abschnitt «Aktuell offen (Stand 2026-06-03)» zu Giebelweg 12 sowie der Notariatstermin Ebmatingen 15.12.2025 liegen zeitlich zurueck; Status heute (2026-07-01) unklar. Beim naechsten Bopp-Kontakt Stand nachfuehren (deckt sich mit QUESTIONS).

### F — Schreibregeln
- **Finding F1 (Haupt-Verstoss):** Durchgaengige ae/oe/ue-Digraphen in der Prosa statt echter Umlaute — u. a. `fuer`, `moegliche`, `bestaetigen`, `haeufigstes`, `gewuenscht`, `gegenueber`, `beruecksichtigen`, `ausfaellt`, `klaeren`, `Verhaeltnis`, `Praeferenzen`, `Persoenliches`/`persoenlich`, `Eigentuemerschaft(en)`, `Grundstueck`, `Begruendung`, `Auftraege`, `Vorabklaerungen`, `Bautraeger`, `Zuerichstrasse`/`Zuerichstr.`, `schlaegt`, `pruefer`, `Rentabilitaet`. Verstoss gegen KB-CLAUDE.md Z. 44 («ae/oe/ue → ä/ö/ü») und Rule `umlaute-konvention`.
  - Abzugrenzen (kein Verstoss): Skill-/Agent-Identifikatoren wie `ankaufspruefung`, `dienstbarkeiten-pruefer`, E-Mail-Teile (`bluewin`), englische Begriffe (`Due` Diligence) bleiben unveraendert.
  - Vorschlag Phase 2: einmalige, wortweise Umlaut-Konvertierung des Artikels (nicht blind ersetzen — Identifikatoren/Mails ausnehmen), danach als Regelfall fuer alle neuen Artikel dieses KB durchhalten.
- **Finding F2 (leicht):** Kein ß gefunden (gut). Frontmatter vollstaendig und schema-konform (title/status/last_updated/sources/links) — keine Deko/Emoji. Nur F1 bleibt.

### G — Promotion-Kandidaten / beantwortete QUESTIONS
- **G1:** `profil-christoph-bopp` ist inhaltlich dicht und mehrfach belegt (Mail + Archiv). Promotion `emerging → established` moeglich, sobald die Firmenrollen (C1) belegt sind.
- **G2 (Anlage-Kandidaten aus QUESTIONS, bereits faktenreich):**
  - Ebmatingen Zuerichstrasse 113/115 (STWEG, Notariat 15.12.2025) → Detailartikel anlegbar.
  - Romanshorn Hafenstrasse 46 (STWEG Schlossberg, Steigleitungen OG4/OG5) → Detailartikel anlegbar.
  - Baar Zugerstrasse 49 (TDD Hochhaus 06/2025) → Detailartikel + Referenzfall fuer `ankaufspruefung`.
  - Giebelweg 12 Langnau (Machbarkeit BZO/Baulinie, Dienstbarkeit Parzelle 3339) → Detailartikel, sobald Ergebnis-Memo vorliegt.
- **G3:** Cluster-Artikel `auftrags-muster-bopp` und `zusammenarbeit-lessons-bopp` (aktuell nur geplant/verlinkt) ausformulieren — loest zugleich Finding B1/B2.

---
Phase-2-Aktionen (Umlaut-Konvertierung, Stub-/Detailartikel, Zefix-Verifikation) NICHT ausgefuehrt — nur interaktiv.
