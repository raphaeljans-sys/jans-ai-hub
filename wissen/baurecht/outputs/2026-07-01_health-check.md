# Wissens-Health-Check: baurecht — 2026-07-01

## Zusammenfassung
| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 3 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-Kandidaten | 3 |

## Top-3 (Raphaels Aufmerksamkeit)
1. **Frontmatter-Schema uneinheitlich (F):** 6 der 17 Artikel nutzen das abweichende Schema `name:`/`beschreibung:`/`paragraphen:` statt des im Meta-Schema (`WISSEN-CLAUDE.md`) vorgeschriebenen `title:`/`sources:`. Rein formal, Quellen sind vorhanden — aber es divergiert vom Standard und sollte in Phase 2 vereinheitlicht werden.
2. **Zwei alte Quellenpflicht-Luecken (C) weiterhin offen:** Gebuehren «1-3 %o der Bausumme» ([[baubewilligungsverfahren]]) und die BZO-Richtwert-Tabelle ([[zonenkonformitaet]]) sind seit dem Health-Check 2026-06-02 unverandert unbelegt/unverifiziert (beide in QUESTIONS als needs-verification gefuehrt, aber noch nicht geschlossen).
3. **Drei reife Promotionskandidaten (G):** `baurechtlicher-vorentscheid-und-voranfrage`, `ausnahmebewilligung-und-bestandesschutz` und `nebenbestimmungen-und-reverse` sind durchgehend §-belegt, gut vernetzt und stabil — Kandidaten fuer `emerging` → `established`.

## Details je Audit

### A. Widersprueche
Keine. Die frueher via Modell D korrigierten Streitpunkte halten konsistent ueber alle Artikel:
- **Waldabstand** einheitlich **§ 262 PBG**, Regel 30 m / red. bis 15 m in [[abstaende-und-hoehen]], [[baubewilligungsverfahren]], [[baulinien-und-abstandslinien]], [[nutzungsziffern]] — kein Rueckfall auf das alte falsche § 268.
- **Freiflaechenziffer** einheitlich **§ 257 PBG** (nicht § 259) in [[nutzungsziffern]] + INDEX.
- **GFZ in ZH nicht verfuegbar** einheitlich in [[nutzungsziffern]] + INDEX.
- Grenzabstand-Zahlenwerk (3,5 m / Mehrhoehenzuschlag § 270) und Zonentabelle (kleiner GA 5 m) in [[abstaende-und-hoehen]] ↔ [[zonenkonformitaet]] deckungsgleich.
- Bestandesschutz «keine feste Quote / neubauaehnliche Umgestaltung» in [[bestandsumbau-eingriffstiefe]] ↔ [[ausnahmebewilligung-und-bestandesschutz]] uebereinstimmend, gegenseitig verlinkt.
- QUESTIONS-Sektion «Cross-Article-Spannungen»: leer (keine offenen); die frueher dort verzeichnete Baubeginn-Frist-Spannung wurde 2026-06-21 geloest.

### B. Kaputte Backlinks & Orphans
Keine.
- Alle `[[…]]`-Backlinks aus wiki/ loesen auf eine existierende Datei auf — entweder in `wiki/` oder in `buecher/` (die Destillat-Backlinks `[[nn-…]]` zeigen konventionsgemaess auf `buecher/band-1|2/`, alle 22 Destillate vorhanden, inkl. `[[15-lage-von-gebaeuden-teil2b]]`).
- Kein Orphan: jeder der 17 Artikel wird von mindestens einem anderen wiki-Artikel verlinkt.
- Kein Artikel fehlt im `INDEX.md` — alle 17 Artikel + QUELLEN sind gelistet.
- **Hinweis (kein Finding):** Die INDEX-Statistik nennt «16 Artikel» und «Letzter Health-Check 2026-06-02»; faktisch sind es 17 Artikel. Kein Backlink-Defekt, aber die Statistik-Zeile ist um einen Artikel/Datumsstand hinterher (Phase-2-Nachfuehrung).

### C. Unbelegte Claims
1. **[[baubewilligungsverfahren]] — Gebuehren «typisch 1-3 %o der Bausumme»:** weiterhin ohne Quelle/kommunale Gebuehrenordnung; identisch zum Finding vom 2026-06-02, in QUESTIONS als needs-verification gefuehrt, aber noch offen. Im Baurecht heikel → belegen oder klar als unverbindlichen Richtwert kennzeichnen.
2. **[[zonenkonformitaet]] — BZO-Richtwert-Tabelle (AZ / GA / Gebaeudehoehe je Zone W2-Z5):** nur pauschal auf «BZO Stadt Zuerich (Totalrevision 2016)» gestuetzt, Einzelwerte nicht gegen die geltende BZO verifiziert. Der Artikel traegt bereits einen eigenen `needs-verification`-Kasten — das mildert das Risiko, schliesst den Claim aber nicht.
3. **[[bestandsumbau-eingriffstiefe]] — SZ-Besitzstands-§ unverifiziert:** in `sources` selbst als «SZ analog — § verifizieren» markiert (ZH = § 357 PBG belegt, SZ-Pendant § 60 PBG SZ / kommunales BauR Wangen nur sinngemaess). Diese SZ-seitige Luecke ist bislang **nicht** in QUESTIONS erfasst — Empfehlung: als needs-verification aufnehmen (SZ-Bestandesschutz-Norm am amtlichen SZ-Volltext / Baureglement Wangen pinnen).

*Nicht als Finding gewertet:* Die zahlreichen `needs-verification`-Wortlautpruefungen der Buch-Destillate (Bd 1/2) sind bereits in QUESTIONS sauber gefuehrt und laufen ueber den Modell-D-Trainingsloop — kein Doppel-Flag.

### D. RAW-Coverage-Luecken
Keine.
- Von den 5 nicht-amtlichen raw-Dateien sind 4 in Wiki-Artikel eingearbeitet (Seed `begriffe`/`pbg-zh`/`bzo-zh`/`verfahren`). Die 5. (`260602_docs-baurecht-praxisfaelle.md`, 20 Zeilen) ist ein **leerer Themen-Platzhalter** ohne echte Faelle — korrekt als «kein Inhalt zum Absorbieren» im Register gefuehrt, keine Coverage-Luecke.
- Die 53 amtlichen Volltexte (`*_amtlich_*`: PBG/ABV/BVV/BBV I+II + 44 ZH-BZO + 4 SZ-Baureglemente) sind laut `_INGESTED.md` **Referenzkorpus zur Direktkonsultation**, keine Absorptionspflicht — werden korrekt nicht als Luecke gewertet.
- Offene Pendenzen (Wollerau SZ OCR, Kt. SG-Endpunkt, Fedlex-Volltext) sind Beschaffungs-, keine Coverage-Themen.

### E. Veraltete Artikel
Keine. Aeltester `last_updated` ist 2026-06-02 ([[zonenkonformitaet]]) — deutlich innerhalb der 90-Tage-Schwelle (Grenze 2026-04-02). Reines Alter zaehlt ohnehin nicht; es liegt zudem keine neuere raw-Quelle vor, die einen bestehenden Artikel zwingend auffrischen muesste.

### F. Schreibregel-Verstoesse
1 Finding (formal, KB-weit):
- **Frontmatter-Schema-Divergenz:** 6 Artikel — `ausnahmebewilligung-und-bestandesschutz`, `bauausfuehrung-und-baukontrolle`, `baurechtlicher-vorentscheid-und-voranfrage`, `geschosse-und-kniestock`, `nebenbestimmungen-und-reverse`, `wohnhygiene-und-raumanforderungen` — verwenden `name:`/`beschreibung:`/`quelle_destillat:`/`paragraphen:` statt des Meta-Schema-Formats `title:`/`status:`/`last_updated:`/`sources:`/`links:`. Alle tragen zwar `status`, `last_updated` und ueber `paragraphen`/`quelle_destillat` de facto Quellen — die Quellenpflicht ist also erfuellt — aber das Feldschema weicht vom `WISSEN-CLAUDE.md`-Standard ab. Vereinheitlichung in Phase 2 (Feld `paragraphen`→`sources`, `name`→`title` bzw. beibehalten + `sources` ergaenzen).

Sonst sauber:
- **Kein ß** in irgendeinem Artikel (Umlaute-Konvention eingehalten).
- **Keine dekorativen Symbole/Emoji** im Artikeltext (die Ampel-/Statuspunkte «·» stehen nur in INDEX/QUESTIONS-Meta).
- Schweizer Hochdeutsch, echte Umlaute ä/ö/ü durchgehend.
- Kanton (ZH/SZ/Bund) wird konsequent ausgewiesen (Titel «— Kanton Zuerich», SZ-Faelle als solche markiert).

### G. Promotion-Kandidaten
3 Artikel reif fuer `emerging` → `established`:
1. **[[baurechtlicher-vorentscheid-und-voranfrage]]** — vollstaendig §-belegt (§§ 323/324/322/310/315 PBG, Treu+Glauben-Voraussetzungen), gut vernetzt, seit 2026-06-21 stabil, buerorelevanter Kern (Vorabklaerung). Belegdichte auf `established`-Niveau.
2. **[[ausnahmebewilligung-und-bestandesschutz]]** — § 220 / § 357 PBG doktrinell sauber, mit Kasuistik (BEZ/VB), gegenseitig mit [[bestandsumbau-eingriffstiefe]] verzahnt, schliesst eine zentrale Luecke. Reif.
3. **[[nebenbestimmungen-und-reverse]]** — § 321 PBG + Revers-Typologie mit BGE/BEZ-Belegen, Faktenbasis fuer Skill `auflagebereinigung`. Reif; einzige Restschuld sind zwei Wortlaut-needs-verification (§ 326 PBG / Art. 164 GBV), die eine Promotion nicht blockieren.

QUESTIONS-Eintraege, die inzwischen beantwortet sind und (bereits) im Wiki stehen — keine offene Promotion noetig, nur zur Bestaetigung: Dispens/Ausnahmebewilligung (→ erledigt Run 10), Baureife/Erschliessung (→ Run 14/15/16), Grundlagen/Rechtsquellen (→ Run 16), Wohnhygiene (→ Run 9), Vorentscheid (→ Run 12). Alle korrekt als erledigt markiert.

**Nachrangig (keine Promotion, nur Nachfuehrung):** INDEX-Statistik-Zeile auf 17 Artikel + Health-Check-Stand 2026-07-01 aktualisieren (Phase 2).
