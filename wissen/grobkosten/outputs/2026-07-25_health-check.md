# Wissens-Health-Check: grobkosten — 2026-07-25

Phase 1 (Audit + Ablage), unbeaufsichtigt (Mac Mini Nachtschicht). Re-Audit nach dem
Nachzieh-Lauf vom 24.07.2026, der drei der vier am 01.07./21.07. gefundenen strukturellen
Findings beheben sollte. Ziel dieses Checks: verifizieren, ob die Fixes tatsächlich greifen
(analog zum kunde-bopp-Re-Audit vom 21.07.), plus vollen 7-Audit-Katalog fahren.

## Zusammenfassung

| Audit | Thema | Ampel | Findings |
|---|---|---|---|
| A | Widersprüche | grün | 0 |
| B | Backlinks / Orphans / State-Files | grün | 0 (**behoben**, war gelb seit 01.07.) |
| C | Unbelegte Claims | grün | 1 offen, aber jetzt sauber in QUESTIONS.md getrackt |
| D | RAW-Coverage | grün | 0 |
| E | Veraltete Artikel | grün | 0 (Mechanismus jetzt funktionsfähig, war zuvor blind) |
| F | Schreibregeln | gelb | 2 (**Teilfix** — kennwerte.md behoben, READMEs + CHANGELOG-Altformate nicht) |
| G | Promotion-Kandidaten | grün | 0 (weiterhin keine Realwerte in raw/) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Fix vom 24.07. hat gegriffen, aber war zu eng gefasst.** Der CHANGELOG-Eintrag
   "Strukturelle Findings nachgezogen" hat sich explizit auf `wiki/kennwerte.md` beschränkt
   ("Dateinamen/Backtick-Pfade... bewusst unverändert"). Verifiziert: `kennwerte.md` ist jetzt
   durchgängig in echten Umlauten (ä/ö/ü) und trägt vollständiges Frontmatter
   (`title/status/last_updated/sources/links`). Die beiden Begleit-READMEs
   (`raw/README.md`, `outputs/README.md`) waren aber im 21.07.-Finding ausdrücklich mitgemeint
   ("betrifft kennwerte.md... sowie weiterhin die Begleit-READMEs") und sind bei diesem Fix
   durchgerutscht — beide weiterhin in ae/oe/ue-Umschrift.
2. **CHANGELOG-Altformate weiterhin nicht nachgezogen.** Die beiden ältesten Einträge
   (`## 010726 — Wissens-Health-Check`, `## 070626 — KB angelegt`, `## 070626 —
   Wüest-Benchmarks angekoppelt`) nutzen weiterhin das alte TTMMJJ-Kopfformat statt
   `JJJJ-MM-TT` — seit dem 01.07.-Fund unverändert, war Teil des ursprünglichen F-Findings,
   aber nicht Teil der 24.07.-Behebung.
3. **Der Kern der Nacharbeit ist solide:** `wiki/QUESTIONS.md` und `raw/_INGESTED.md` existieren
   jetzt, sind inhaltlich sauber (echte Umlaute, korrekte Struktur) und `INDEX.md` verweist
   korrekt darauf statt den alten Fragen-Block zu duplizieren. Der bislang implizit offene
   C-Claim (HNF/GF-Umrechnungsfaktor ohne eigene Quelle) ist jetzt explizit in `QUESTIONS.md`
   dokumentiert statt nur im Health-Check-Report vermerkt — echte strukturelle Verbesserung,
   nicht nur Verschiebung des Problems.

## Details je Audit

### A — Widersprüche
Kein Finding. Keine inhaltlichen Änderungen seit dem letzten Check (24.07. war reine
Struktur-/Schreibregel-Nacharbeit, keine neuen Kennwerte/Aussagen). Die bereits verifizierten
Cross-KB-Bezüge (Gesamtgebäude-Faktor 0.60 als Präzisierung, nicht Korrektur; Doppelzählungs-
Guard zu `energie`) bleiben widerspruchsfrei.

### B — Backlinks / Orphans / State-Files
- **`wiki/QUESTIONS.md` jetzt vorhanden** — verifiziert: existiert, enthält die migrierten
  Fragen aus dem alten INDEX-Block plus den neuen HNF/GF-Provenienz-Punkt, sauber in echten
  Umlauten.
- **`raw/_INGESTED.md` jetzt vorhanden** — verifiziert: registriert korrekt und ehrlich, dass
  `raw/` weiterhin nur das README enthält (kein stiller Anspruch auf Realdaten).
- **`INDEX.md` bereinigt** — verweist jetzt auf `QUESTIONS.md` statt den Fragen-Block zu
  duplizieren; kein Orphan (`kennwerte.md` verlinkt, einziger Wiki-Artikel).
- Beide Findings aus dem 21.07.-Report damit vollständig behoben.

### C — Unbelegte Claims
- **HNF/GF-Umrechnungsfaktoren (0.70 Regelgeschoss / 0.60 Gesamtgebäude) weiterhin ohne
  eigene Quelle** — unverändert als JANS-Faustannahme, plausibel und im Band, aber ohne
  Provenienz-Tag. **Verbesserung gegenüber 21.07.:** der Punkt steht jetzt explizit in
  `wiki/QUESTIONS.md` (nicht mehr nur im Health-Check-Archiv), damit für jede künftige
  Session sichtbar statt nur bei erneutem Wissenscheck.
- Bereits verifizierte Claims (Wüest-Benchmark-Ankopplung, drei energie-Destillate,
  immobilienbewertung-Querbezüge) unverändert, Quelldateien weiterhin vorhanden.

### D — RAW-Coverage
Kein Finding. `raw/` enthält weiterhin nur `README.md`, jetzt zusätzlich ehrlich im neuen
`_INGESTED.md` protokolliert. Keine stille Höherstufung der Seed-Werte.

### E — Veraltete Artikel
Kein Finding. `kennwerte.md` trägt jetzt `last_updated: 2026-07-24` im Frontmatter — der
Audit kann erstmals mechanisch statt nur über CHANGELOG-Lektüre prüfen. Inhaltlich weiterhin
aktuell (Teuerungs-Check vom 12.07. bleibt gültig, ~2–3 % kumulierte Bauteuerung, weit
innerhalb ±25 %).

### F — Schreibregeln
- **Behoben:** `wiki/kennwerte.md` — Stichprobe von rund 15 vormals betroffenen Textstellen
  (u.a. „für", „Gebäude", „Zürich", „Grobschätzung", „zurückgespeisten", „Zuschläge",
  „Schätzungen") jetzt durchgängig mit echten Umlauten. Verbleibende ae/oe/ue-Fundstellen
  (`Wuest`, `kostenschaetzung`) sind bewusst-korrekte ASCII-Dateinamen-/Ordner-Referenzen
  gemäss `dateinamen-konvention.md` — kein Verstoss.
- **Offen (neu präzisiert, war Teil des alten Findings):** `raw/README.md` (u.a. „fuer",
  „moeglichst", „Gebaeudevolumen", „gepruefte") und `outputs/README.md` (u.a. „Schaetzungen",
  „bestaetigte", „zurueck") weiterhin in ae/oe/ue-Umschrift — vom 24.07.-Fix nicht erfasst,
  da dieser explizit auf `kennwerte.md` begrenzt war.
- **Offen (unverändert seit 01.07.):** CHANGELOG-Kopfzeilen `## 010726` und `## 070626`
  (zwei Einträge) weiterhin im alten TTMMJJ-Format statt `JJJJ-MM-TT`.
- Weiterhin positiv: kein `ß`, keine Deko-/Emoji-Verstösse, Tabellen sauber, alle Einträge ab
  12.07. im CHANGELOG bereits korrekt datiert und in echten Umlauten.

### G — Promotion-Kandidaten
Kein Finding. Alle Kennwerte weiterhin „Seed, Wüest-kalibriert" — 0 Realwerte in `raw/`.
Status `emerging` im neuen Frontmatter korrekt gewählt (angekoppelt an belegte
Fremd-Benchmarks, aber ohne eigene Realabrechnung — nicht „established").

## Fazit

Der Nachzieh-Lauf vom 24.07. hat sein selbstgestecktes, eng gefasstes Ziel sauber erreicht:
die drei Kern-Findings (QUESTIONS.md, _INGESTED.md, Frontmatter+Umlaute in `kennwerte.md`)
sind verifiziert behoben, keine neuen Fehler eingeschleppt. Zwei kleine Restpunkte aus dem
ursprünglichen, breiter gefassten 01.07.-Finding wurden dabei nicht mitgezogen (README-
Umlaute, CHANGELOG-Altformate) — beide kosmetisch, kein inhaltliches Risiko. Empfehlung:
bei nächster interaktiver Session die zwei READMEs + zwei CHANGELOG-Kopfzeilen in einem
kleinen Aufwisch-Schritt mitnehmen, dann ist die KB strukturell vollständig sauber.
