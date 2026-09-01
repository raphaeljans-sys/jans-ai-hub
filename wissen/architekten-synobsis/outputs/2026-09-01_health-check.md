# Wissens-Health-Check: architekten-synobsis — 2026-09-01

## Methode dieses Laufs

Monatlicher Health-Check Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) nicht ausgefuehrt.

Basis ist der letzten Health-Check vom **2026-08-03** (29 Tage zuvor). Dieser Lauf prueft, ob neue Befunde entstanden sind. Nicht-Standard-KB (Tool-/Katalog-KB ohne raw/, aber mit Katalog-JSON und Wiki); Audits angepasst auf Scan-Fortschritt, CHANGELOG und Frontmatter-Konsistenz statt 7 Standard-Audits.

**Fokus dieses Laufs:** Vektorindex-Neuaufbau (01.09.), intensive Folgelaeufe (29.08.-01.09.) fuer Fehlextraktionen/Katalog-Kollisionen/Sonderzeichen/Sammelfragen. Dokumentiert im CHANGELOG — die vier Prioritaeten sind nach sieben Folgelaeufen erledigt.

---

## Zusammenfassung (angepasst auf Tool-Katalog-KB)

| Aspekt | Befund | Status |
|---|---|---|
| A. Widersprueche / Spannungen | 0 neue seit 01.08. | ✓ |
| B. Frontmatter & Backlinks | THEMEN.md fehlt Frontmatter | ⚠ 1 |
| C. Katalog-Konsistenz | 4+1 Doppelordner, keine neuen | ✓ |
| D. Scan-Fortschritt | 853/853 gescannt, 849 kuratiert | ✓ saturiert |
| E. Vektorindex | 01.09. neu gebaut, Sync deckungsgleich | ✓ |
| F. Schreibregeln ae/oe/ue | 171 Treffer (unverändert seit 03.08.) | ⚠ alt |
| G. Stilllegung Loop | `synobsis-batch-nacht` — wo dokumentiert? | ? offen |

---

## Top-3 Befunde (Raphaels Aufmerksamkeit)

1. **THEMEN.md hat kein Frontmatter** (fehlend: `title`, `status`, `last_updated`, `sources`) — Artikel ist inhaltlich vollständig (1487 Zeilen), aber strukturell nicht regelkonform. Reparatur: eine Zeile mit `---` oben einfügen + Metafelder + Zeile unten schliessen.

2. **Stilllegung `synobsis-batch-nacht` in CHANGELOG erwähnt, aber nicht in eine Regel/Decision-Datei formalisiert.** Der Eintrag vom 03.08. im letzten Health-Check nennt "Registerentscheid", aber wo steht dieser Entscheid? Empfehlung: explizit in `CLAUDE.md` oder `QUESTIONS.md` dokumentieren (z.B. "Loop stillgelegt, Grund: Scan saturiert seit 2026-07-03").

3. **171 ae/oe/ue-Fehler unverändert seit 03.08.** Schwerpunkt INDEX.md (36 Treffer) und QUESTIONS.md (51 Treffer). Die Umlaute sind programmatisch korrekt im Katalog (`catalog/*.json`), aber in den Hand-Kurationen (wiki/) nicht normalisiert. Reparatur: einmalig `sed` über die vier Artikel.

---

## Details je Audit

### A. Widersprueche

**Befund:** Keine neuen Widersprueche. Seit dem 03.08. keine Aenderung an den Standard-Wiki-Artikeln (INDEX, QUESTIONS, RAUMTYPOLOGIEN, THEMEN).

Begruendung: Diese KB ist eine Tool-Katalog-KB, keine Standard-KB mit competing-Artikeln. Die Konsistenz liegt in der Katalog-Logik (`catalog/*.json`, dokumentiert im INDEX), nicht in Artikel-Spannungen. QUESTIONS.md traegt bekannte Einzelfragen (leere Ordner, Schreibfehler, offene Sammelchargen), aber keine Artikel-Konflikte.

### B. Kaputte Backlinks / Frontmatter-Fehler

**Befunde:**

1. **`wiki/THEMEN.md` hat kein Frontmatter.** Der Artikel beginnt direkt mit `# THEMEN —…`, ohne Blocker `---…---`. Fehlende Felder: `title`, `status`, `last_updated`, `sources`, `links`.
2. **`wiki/RAUMTYPOLOGIEN.md` ist OK** — vollstaendiges Frontmatter vorhanden (`title`, `status: established`, `last_updated: 2026-07-24`, `sources`, `links`).
3. **`wiki/INDEX.md` ist OK** — Ueberschrift und Inhalt sind Dokumentation, nicht Fronmatier-gepflegt (bewusst, da algorithmisch generiert und 853 Zeilen).
4. **`wiki/QUESTIONS.md` ist OK** — Standard-Frageformat, kein Frontmatter noetig.
5. **Backlinks:** 737 Katalog-Verweise `[[Architekt_Name]]` in THEMEN.md und INDEX.md loesen korrekt auf `catalog/*.json` auf. Keine toten Links.

**Summe B:** 1 Befund (THEMEN.md Frontmatter).

### C. Claims, Quellen, Katalog-Daten

**Befund:** Nicht zutreffend auf diese KB. Der Katalog ist programmatisch generiert aus `/Volumes/daten/05_Architekten_Synobsis/` via `tools/synobsis_scan.py`. Jeder Eintrag ist eine Messung, kein Claim. Claims stehen in den Wiki-Artikeln (INDEX, RAUMTYPOLOGIEN, THEMEN), die wiederum aus Katalogdaten abgeleitet sind.

**Vertrauenskette:** `catalog/*.json` → `INDEX.md` (Kurzdossiers) → `THEMEN.md`/`RAUMTYPOLOGIEN.md` (Thematische Register).

### D. Scan-Fortschritt & Katalog-Abdeckung

**Befunde:**

- **Gesamtstand:** 853 gescannte Ordner + 1 Sammelordner (1_Selection.json) = 854 JSON-Dateien im `catalog/` mit alias-Normierung (79 Aliase dokumentiert).
- **Kuratierter Stand:** 849 Katalogdateien mit Kurzdossier im INDEX (laut `wiki/INDEX.md` Stand 2026-07-03). Differenz 5: das sind die vier bekannten Kollisions-Doppelordner (Christ_Gantenbein, Enzmann_Fischer, Miller_Maranta, Gigon_Guyer) PLUS 1 weitere Unklarheit.

  Aufschluesselung:
  - 4 Ordner mit Leerzeichen/Unterstrich-Varianten (Katalog zusammengefuehrt mit Feld `quellordner` seit 29.08.)
  - 1 Ordner Aando_Tadao/Tadao_Ando (beide eigenstaendig, Feld `duplikat_hinweis` seit 30.08.)
  
  Offen: 5 weitere, aber 1_Selection.json ist kein Architekt (Sammelordner).

- **Projektestand:** 2753 Projekte total, 9 Raumtypen mit 105 Projekten kuratiert.

- **Vektorindex:** `catalog/documents.jsonl` 853 Zeilen (korrektur nach Fehlextraktionen 25.-29.08.), `catalog/vectors.npz` neu gebaut 01.09. 19:30 (853 x 768 Dimensionen). **Sync vollstaendig.**

**Befund:** Scan ist saturiert seit 2026-07-03 (853/853). Keine neuen Architekten hinzugefuegt, keine Rescan ausgefuehrt.

### E. Veraltete Artikel

**Befund:** THEMEN.md und RAUMTYPOLOGIEN.md sind vom 03.07. bzw. 24.07. (über 60 Tage alt). Aber Aktualisierung ist nicht noetig — beide sind statisch, da die Quelle (Katalog) seit dem 03.08. im CHANGELOG dokumentiert "saturiert" ist.

**Ursache:** Der Katalog selbst wird nicht durch THEMEN/RAUMTYPOLOGIEN aktualisiert. Beide sind ableitung des Katalogs, nicht Quelle. Updates waeren noetig, wenn neue Architekten hinzugefuegt oder Raumtypologien neu kuratiert wuerden — beides ist laut Entscheid nicht geplant (Loop `synobsis-batch-nacht` stillgelegt).

### F. Schreibregel-Verstoesse

**Befund:** 171 ae/oe/ue-Fehler in den Wiki-Artikeln (keine neuen seit 03.08.). Verteilung:
- QUESTIONS.md: ~51 Treffer
- INDEX.md: ~36 Treffer
- THEMEN.md: ~84 Treffer (groesstes Einzelwerk)
- RAUMTYPOLOGIEN.md: vergleichsweise wenige

**Grund:** Diese Artikel wurden mit Algorithmen aus dem Katalog generiert oder manuell geschrieben (INDEX, QUESTIONS), Umlaute wurden teils nicht normalisiert.

**Kein Fehler in:** `catalog/*.json` selbst (dort sind Umlaute korrekt: Šuchov_Vladimir, Tusquet_Oscar_Clotet_Lluìs seit Sonderzeichen-Normalisierung 29.08.).

### G. Promotion-Kandidaten / Loop-Stilllegung

**Befund:** Zwei Probleme:

1. **Outputs-Ruecklauf-Rueckstand:** 19 Outputs in `outputs/` (Laufprotokolle, Health-Check-Reports) gegenueber 4 Wiki-Artikeln. Verhaeltnis ist schief, aber kein Fehler — diese KB hat keine Kompounding-Schleife wie andere KBs (raw/ → wiki/ → outputs/). Der Katalog ist direkt die Quelle, Outputs sind reine Laufprotokolle.

2. **Stilllegung `synobsis-batch-nacht`:** Der Health-Check vom 03.08. nennt "Registerentscheid", aber es gibt keinen Eintrag in `QUESTIONS.md` oder `CLAUDE.md`, der den Entscheid formuliert. Der CHANGELOG dokumentiert intensive Folgelaeufe 29.08.-01.09., was zeigt, dass der "Entscheid" eher eine Pause als eine formale Stilllegung ist. 
   
   Empfehlung: klaeren, ob
   - (a) der Loop tatsaechlich stillgelegt ist (dann in CLAUDE.md dokumentieren: "Scan ist saturiert seit 03.07.; Loop synobsis-batch-nacht ausserdienstgestellt am [Datum]"),
   - (b) oder es eine Pause gibt, bis neue Architekten-Ordner auftauchen oder ein Reindex geplant ist.

---

## Fazit

Diese KB ist **funktional und in gutem Zustand**:
- ✓ Scan saturiert (853/853, Erstkuratierung komplett)
- ✓ Vektorindex neu gebaut, deckungsgleich mit Katalog
- ✓ Vier Prioritaeten (Fehlextraktionen, Katalog-Kollisionen, Sonderzeichen, Sammelfragen) nach sieben Folgelaeufen erledigt
- ✓ Keine neuen Inkonsistenzen

**Handlungsbedarfe Phase 2 (nur interaktiv):**
1. THEMEN.md: Frontmatter ergaenzen (5 Zeilen)
2. ae/oe/ue-Fehler in wiki/*.md normalisieren (sed-Lauf)
3. Stilllegung `synobsis-batch-nacht` formalisiern (Dokumentation in CLAUDE.md oder QUESTIONS.md)

---

*Phase 1 beendet — unbeaufsichtigter Lauf. Fuer Phase 2 (Reparaturen): interaktive Session mit Skill wissenscheck.*
