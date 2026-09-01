# Wissens-Health-Check: auflagebereinigung — 2026-09-01

## Methode dieses Laufs

Phase 1 (Audit), unbeaufsichtigte Nachtschicht. Basis ist der Health-Check vom **2026-08-25** (7 Tage zuvor). Der CHANGELOG-Nachtrag vom 26.08.2026 (Wissens-Chef Run 44) meldete, dass die drei Audit-B- und F-Befunde des 25.08. alle Werkzeug-Artefakte waren und behoben wurden (tote Backlinks durch Klammer-Tippfehler, Frontmatter-Feldnamen). Dieses Audit überprüft, ob die Behebung vollständig ist und ob neue Befunde entstanden sind.

Umfang: alle 7 Wiki-Artikel (Frontmatter + Volltext), `INDEX.md`, `QUESTIONS.md`, `raw/_INGESTED.md`, CHANGELOG seit 25.08. Mechanische Konsistenzprüfung mit `wiki-konsistenz.sh` und `fehloffen-waechter.py` durchgeführt.

## Zusammenfassung

| Audit | Befunde |
|---|---|
| A Widersprüche | 0 |
| B Kaputte Backlinks/Orphans/Frontmatter | 0 |
| C Unbelegte Claims | 1 |
| D RAW-Coverage-Lücken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstösse | 1 |
| G Promotion-/Rücklauf-Kandidaten | 2 |

## Top-Befunde

1. **Frontmatter-Behoebung vom 26.08. erfolgreich, aber Text-ae/oe/ue bleiben.** Der 26.08.2026-Nachtrag korrigierte den Feldnamen in `gvz-einreichung-bma-sprinkler.md` von `quellen:` zu `sources:` — damit war der Audit-B-Befund «ohne sources» tatsächlich ein Werkzeug-Treffer auf den falschen Feldnamen. **Aber die Textdatei selbst traegt weiterhin ASCII-Umlaute (`fuer`, `zustaendig`, `gehoert`, `Ausserbetriebsetzungs` statt ä/ö/ü)**. Audit F meldet dies neu; es ist kein vergessener Lauf, sondern eine echte Schreibregel-Verletzung.

2. **`brandschutz-auflagen-qss.md` zitiert VKF-Richtlinien generisch ohne Norm-Nummern.** Der Artikel nennt in den `sources` nur «VKF-Brandschutzrichtlinien» ohne die konkrete Nummer. Der Schwester-Artikel `gvz-einreichung-bma-sprinkler.md` zeigt das Muster richtig (VKF-BRL 20-15 / 19-15 mit Ziff.-Nummern). Audit C Befund 1.

3. **`fristenlogik-bauentscheid-zh.md` ist reif für Promotion `emerging` → `established`.** Der Artikel wurde gegen fünf konkrete PBG-/VRG-Paragraphen (§§ 22/315/316/322/329/339 VRG, PBG) verifiziert, cross-verifiziert mit `wissen/baurecht/wiki/rechtsschutz-und-rechtsmittelverfahren` (established), mehrfach im Projektfall 2619 angewendet und ist widerspruchsfrei.

## Details je Audit

### A. Widersprüche
Keine neuen Spannungen erkannt. Die SPA-Gewerkzuteilung (SPR wenn eigener Sprinklerplaner, sonst SAN) ist zwischen `auflagentypen-gewerkzuteilung.md` und `brandschutz-auflagen-qss.md` konsistent. Die drei offenen QUESTIONS-Punkte (Nachweisfrist «mit Anmerkungen erfüllt», Art. 12-Bedeutung, Möblierungs-Schwelle) sind externe Abhängigkeiten, keine Widersprüche im Wiki.

### B. Kaputte Backlinks / Orphans / Frontmatter
- **Befund vom 25.08. ist behoben.** Der tote Backlink `[[[fristenlogik-bauentscheid-zh]]` in `aemter-stadt-zuerich.md` (dreifache Klammer-Tippfehler) wurde korrigiert. Mechanische Konsistenzprüfung meldet "keine Befunde".
- **Frontmatter-Normalisierung erfolgreich.** `gvz-einreichung-bma-sprinkler.md` traegt jetzt die Standard-Feldnamen (`sources:`, `links:`); das Artikel-Meta ist korrekt.
- **Orphans:** Alle 7 Wiki-Artikel stehen im `INDEX.md`. Alle überprüften `[[...]]`-Links in allen Artikeln + `QUESTIONS.md` lösen auf.

### C. Unbelegte Claims
- `wiki/brandschutz-auflagen-qss.md` Frontmatter: die `sources`-Zeile führt nur generisch «VKF-Brandschutzrichtlinien, VKF-BFS, VVB LS 861.12» ohne konkrete Norm-Nummern. Der Artikel referenziert in den Tabellen (QSS 3, Integral-Test, GVZ-Weisungen) auf diese Normen, nennt aber in der Quelle nicht die Ziff.-Nummer. Kontrast: `gvz-einreichung-bma-sprinkler.md` zeigt die Best Practice mit «VKF-BRL 20-15 Ziff. 4.1/3.10» + Cross-KB-Link zu `wissen/normen`. 
  - **Empfehlung:** `sources`-Zeile in `brandschutz-auflagen-qss.md` nachziehen — die passende VKF-RL-Nummer und ggf. einen Cross-KB-Verweis zu den normen-Destillaten ergänzen.

### D. RAW-Coverage
`_INGESTED.md` führt 2 Quellen (Vorabzug BE 2619-KISPI, GRUNER-Adressliste), beide als «vollständig» eingearbeitet. Kein neues Rohmaterial seit dem letzten Check. Keine Lücke.

### E. Veraltete Artikel
Keine Datei über 90 Tage seit `last_updated`. Zwei Artikel nähern sich:
- `brandschutz-auflagen-qss.md` (04.06.2026 → 89 Tage heute, 01.09.2026)
- `vorgehen-auflagebereinigung.md` (04.06.2026 → 89 Tage heute)

Beide sind noch unterhalb der 90-Tage-Schwelle. Beim nächsten Check (frühestens Ende Oktober) sollte gegen neueres Rohmaterial überprüft werden, falls dieses anfällt.

### F. Schreibregel-Verstösse
- **`gvz-einreichung-bma-sprinkler.md` traegt ASCII-Umlaute (ae/oe/ue) statt ä/ö/ü.** Stichprobenfunde: «fuer WTA» (Z. 2), «zustaendig» (Z. 2), «gehoert» (Z. 2), «Ausserbetriebsetzungs-Frist» (Z. 4), «Bereichsflaeche» (Z. 11) — die Dateien zeigt nur 3 echte Umlaute, wohingegen mindestens 5+ ASCII-Ersatzformen vorhanden sind. Der Befund ist **echt** (nicht Werkzeug-Artefakt wie beim Frontmatter) und unabhängig von Feldnamen.
- Keine Deko-Symbole oder ß-Verstösse erkannt.
- Alle anderen 6 Artikel sind in korrektem Schweizer Hochdeutsch geschrieben.

### G. Promotion-/Rücklauf-Kandidaten
- **Promotion-Kandidat: `fristenlogik-bauentscheid-zh.md` (emerging → established).** Der Artikel wurde am 27.07.2026 um fünf konkrete Paragraphen ergänzt (§ 22 VRG, PBG §§ 315/316/322/329/339, § 25 VRG). Cross-verifiziert mit `wissen/baurecht/wiki/rechtsschutz-und-rechtsmittelverfahren` (status `established`), mehrfach im Projektfall 2619-KISPI angewendet. Kein Widerspruch, kein Vorbehalt erkannt. **Prüfstand: fertig zur Promotion.**

- **Rücklauf-Lücke (offen seit 31.07., zweifach belegt).** Die Methode zur Extraktion von PDF-Annotationen (`/Annots` → `/Contents`/`/T` via `pypdf`) wurde zweifach unabhängig dokumentiert:
  - `outputs/2026-07-31_behoerdenantwort-in-pdf-kommentaren.md` (Feuerpolizei-Anmerkungen)
  - `outputs/2026-08-03_flachgelegte-planmarkierungen-seiten-diff.md` (eingebrannte Markierungen)
  
  Beide Outputs verlinken auf einen Artikel `[[behoerdenantwort-in-pdf-kommentaren]]`, der **nie angelegt wurde**. Der CHANGELOG-Eintrag vom 03.08. führt sogar auf diesen Non-Artikel als Verweis hin, breitet aber kein Rücklauf-Werk aus (Rule `wissens-ruecklauf` nicht erfüllt). **Kandidat für neuen Artikel oder neuen Abschnitt in `wiki/vorgehen-auflagebereinigung.md`, Schritt 1 «Extrahieren»**, mit Hinweis auf die programmatische Extraktionsmethode und den Fallbeleg aus 2619-KISPI.

---

## Statusbild (Ende Audit)

- **Wiki-Artikel:** 7 (davon 5 emerging, 2 established)
- **Raw-Quellen:** 2, beide eingearbeitet
- **Offene QUESTIONS:** 3 (Nachweisfrist, Art. 12, Möblierungs-Schwelle) — alle extern abhängig, keine Konsistenz-Befunde
- **Zuletzt eingearbeiteter Report:** outputs/2026-08-26_wissens-chef-run44.md (Fassungs-Nachtrag BMA-Destillat)

---

*Phase 2 (Aktionen) nicht ausgeführt — unbeaufsichtigter Nachtschicht-Lauf. Befunde sind Phase-1-Audits ohne Änderungen an Dateien. Für interaktive Behebung oder weitere Phase-2-Aktionen: `wissenscheck` Skill mit KB-Name `auflagebereinigung` starten.*
