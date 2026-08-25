# Wissens-Health-Check: auflagebereinigung — 2026-08-25

## Methode dieses Laufs

Nachtschicht-Zyklus Mac Mini, Prioritaet 6 (wissenscheck Phase 1, unbeaufsichtigt) — gewaehlt,
weil `auflagebereinigung` unter allen KBs ohne aktiven Taktgeber sowohl das aelteste
Health-Check-Datum (2026-08-03) als auch den aeltesten inhaltlichen Wiki-Stand (2026-07-29)
traegt. Basis ist der Sammellauf vom **2026-08-03** (22 Tage zuvor). Phase 2 (Aktionen) bewusst
NICHT ausgefuehrt.

Umfang: alle 7 Wiki-Artikel vollstaendig gelesen (Frontmatter + Volltext), `INDEX.md`,
`QUESTIONS.md`, `raw/_INGESTED.md`, `CHANGELOG.md` seit 08-03 (5 Eintraege), die beiden neuen
Outputs vom 03.08. Kein Fan-out (Budget-Rahmen Nachtschicht-Deckel).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans/Frontmatter | 2 |
| C Unbelegte Claims | 1 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 (2 nahen an der 90-Tage-Schwelle) |
| F Schreibregel-Verstoesse | 2 Dateien, unveraendert seit 08-01 |
| G Promotion-/Ruecklauf-Kandidaten | 2 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Wiederkehrender, nie behobener Befund — drittes Audit in Folge unveraendert.** Der tote
   Backlink `[[[fristenlogik-bauentscheid-zh]]` (Klammer-Tippfehler) in
   `wiki/aemter-stadt-zuerich.md` Zeile 6 und der hohe ae/oe/ue-Anteil in
   `wiki/gvz-einreichung-bma-sprinkler.md` + `wiki/formular-verifizierung.md` stehen seit dem
   Audit vom 01.08. unveraendert in jedem Bericht (01.08. → 03.08. → 25.08., 24 Tage). Grund:
   Phase 2 laeuft nur interaktiv, und seit dem Anlegen dieser Artikel (Juni/Juli) hat niemand
   `wissenscheck` interaktiv auf dieser KB gestartet, um die Befunde umzusetzen. Ein rein
   unbeaufsichtigter Taktgeber findet denselben Fehler beliebig oft, behebt ihn aber nie.
2. **PDF-Annotationen-Extraktionsmethode nie ins Wiki uebernommen, obwohl zweifach belegt.**
   Die Lehre aus `outputs/2026-07-31_behoerdenantwort-in-pdf-kommentaren.md` und
   `outputs/2026-08-03_flachgelegte-planmarkierungen-seiten-diff.md` — dass der materielle
   Gehalt einer Behoerdenantwort vollstaendig in PDF-Annotationen (`/Annots`) oder sogar
   eingebrannt in die Seite selbst stecken kann, und der `auflagen-extraktor` deshalb
   programmatisch (`pypdf`, `/Annots` → `/Contents`+`/T`) statt visuell lesen muss — ist
   zweifach unabhaengig bestaetigt und methodisch zentral fuer Schritt 1 des Skills
  `auflagebereinigung`. Trotzdem fehlt sie in `wiki/vorgehen-auflagebereinigung.md` (Abschnitt
   «1. Extrahieren») komplett; der CHANGELOG-Eintrag vom 03.08. verlinkt sogar auf einen
   Artikel `[[behoerdenantwort-in-pdf-kommentaren]]`, der nie angelegt wurde (Rule
   `wissens-ruecklauf` nicht erfuellt).
3. **`fristenlogik-bauentscheid-zh.md` ist reif fuer Promotion `emerging` → `established`.**
   Der Artikel ist gegen fuenf konkrete PBG-/VRG-Paragraphen verifiziert, mit
   `wissen/baurecht/wiki/rechtsschutz-und-rechtsmittelverfahren` cross-verifiziert (dort
   `established`), mehrfach im Projektfall 2619 angewendet und ohne offene Widersprueche.

## Details je Audit

### A. Widersprueche
Keine neue Spannung gefunden. Die SPA-Gewerkzuteilung (SPR bei eigenem Sprinklerplaner, sonst
SAN) ist zwischen `auflagentypen-gewerkzuteilung.md` und `brandschutz-auflagen-qss.md`
konsistent formuliert. Die beiden am 03.08. neu aufgenommenen QUESTIONS-Punkte
(Nachweisdokumente-Frist «mit Anmerkungen erfuellt», Bedeutung von «Art. 12») sind offene
Fragen, keine Widersprueche zu bestehenden Wiki-Aussagen — beide haengen an einer externen
Antwort (Brandschutz-Fachplaner bzw. Gruner→Behoerde) und sind fuer die Nachtschicht nicht
recherchierbar.

### B. Kaputte Backlinks / Orphans / Frontmatter
- `wiki/aemter-stadt-zuerich.md` Zeile 6: `[[[fristenlogik-bauentscheid-zh]]` — drei oeffnende
  Klammern, loest nicht auf. Unveraendert seit 01.08.
- `wiki/gvz-einreichung-bma-sprinkler.md`: Frontmatter weicht vom KB-Schema
  (`wissen/WISSEN-CLAUDE.md`) ab — Felder heissen `quellen:`/`herkunft:` statt `sources:`, ein
  `links:`-Feld fehlt ganz (Backlinks stehen stattdessen als Klartext-Absatz am Artikelende).
  Der Inhalt selbst ist gut belegt (3 konkrete Quellen mit URL+Datum) — der 03.08.-Befund
  «ohne sources» war ein Schema-Treffer, kein inhaltlicher Belegmangel. Praezisierung dieses
  Laufs; Fix bleibt trivial (Feld umbenennen + `links:` ergaenzen).
- Keine Orphans: alle 7 Wiki-Artikel stehen im `INDEX.md`. Alle uebrigen `[[...]]`-Links in
  allen 7 Artikeln + `QUESTIONS.md` geprueft — loesen korrekt auf.

### C. Unbelegte Claims
- `wiki/brandschutz-auflagen-qss.md`: die QSS-3-Pflicht und die VKF-Anerkennungspflicht
  berufen sich in `sources` nur generisch auf «VKF-Brandschutzrichtlinien» ohne RL-Nummer und
  ohne Link auf eine `wissen/normen`-Destillatdatei — anders als der Schwesterartikel
  `gvz-einreichung-bma-sprinkler.md`, der dieselbe Norm-Familie mit konkreter RL-Nummer
  (VKF-BRL 20-15/19-15) und Cross-KB-Verweis zitiert. Nachziehen: passende VKF-RL
  «Qualitaetssicherung im Brandschutz» in `wissen/normen` identifizieren und verlinken.

### D. RAW-Coverage
`_INGESTED.md` fuehrt 2 Quellen, beide als «vollstaendig» eingearbeitet markiert. Kein neues
Rohmaterial seit dem letzten Check. Keine Luecke.

### E. Veraltete Artikel
Keine Datei ueber 90 Tage seit `last_updated`. Zwei naehern sich der Schwelle:
`brandschutz-auflagen-qss.md` und `vorgehen-auflagebereinigung.md` (beide 04.06.2026, heute
82 Tage) — kein Handlungsbedarf, aber beim naechsten Check (voraussichtlich ueber 90 Tage)
gegen neueres Rohmaterial pruefen, falls bis dahin welches eintrifft.

### F. Schreibregel-Verstoesse
Ae/oe/ue-Anteil unveraendert konzentriert in denselben zwei Dateien wie am 01.08. und 03.08.
gemeldet: `wiki/gvz-einreichung-bma-sprinkler.md` und `wiki/formular-verifizierung.md`
(Stichwortproben: «Ausfuehrungsbeginn», «Fachfirma», «Ueberwachungsflaeche», «woertlich»,
«Kuehlungs-Formular», «zustaendigen Fach-KB»). Drittes Audit in Folge ohne Fix — siehe Top-1.
Keine Deko-Symbole gefunden. Kein `ß` ausser dem Regelzitat in `CLAUDE.md` selbst (kein
Verstoss).

### G. Promotion-/Ruecklauf-Kandidaten
- **Ruecklauf-Luecke:** PDF-Annotationen-Extraktionsmethode (siehe Top-2) — Kandidat fuer
  einen neuen Abschnitt in `wiki/vorgehen-auflagebereinigung.md`, Schritt 1 «Extrahieren», oder
  einen eigenen Artikel `behoerdenantwort-in-pdf-kommentaren.md` (der Name ist bereits an zwei
  Stellen verlinkt, existiert aber nicht).
- **Promotion-Kandidat:** `fristenlogik-bauentscheid-zh.md` `emerging` → `established`
  (siehe Top-3).
- Statusbild unveraendert: 5 `emerging` / 2 `established` (Formular-Verifizierung,
  GVZ-Einreichungsweg).

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Nachtschicht-Lauf. Fuer die Umsetzung
eines Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen `auflagebereinigung`.*
