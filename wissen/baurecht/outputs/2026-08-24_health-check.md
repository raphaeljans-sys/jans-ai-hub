# Wissens-Health-Check: baurecht — 2026-08-24

## Methode dieses Laufs

Phase 1 (Audit + Report, unbeaufsichtigt). Phase 2 (Aktionen) bewusst NICHT ausgeführt.
Basis ist der letzte Health-Check vom 2026-08-03 (`outputs/2026-08-03_health-check.md`).
Seither sind 34 neue Output-Dateien entstanden: die Reglemente-Queue 2414 Thalwil (Batches
T1-T9, Buch-Runs 71-89) wurde vollständig abgearbeitet, danach lief eine Bundesrechts-
Re-Verifikationskette (Runs 90-104), die acht `established`-Artikel Zitat für Zitat gegen
den amtlichen Fedlex-Wortlaut geprüft hat.

Strukturbefunde (Audit B) stammen aus `wissen/tools/wiki-konsistenz.sh baurecht` (KB-
übergreifendes Ziel-Universum, keine Fehlalarme bei Cross-KB-Links). Audit D wurde per
Skript gegen `raw/_INGESTED.md` gegengeprüft, Audit F per gezielter Stichprobe (kein blindes
Grep-Zählen, siehe Fallstrick-Hinweis im Auftrag). Audit A wurde anhand der in
`wiki/QUESTIONS.md` registrierten Spannungen sowie einer gezielten Gegenprobe an zwei
thematisch überlappenden Artikeln (Grenz-/Gebäudeabstände, `[[abstaende-und-hoehen]]` ↔
`[[gebaeudearten-und-abstandssystem]]`) und am frisch korrigierten BEZ-2019-Nr.-5-Befund
(Buch-Run 104) geprüft — kein vollständiger paarweiser Neuvergleich aller 26 Artikel.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprüche | 0 |
| B Kaputte Backlinks/Orphans | 4 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Lücken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstösse | 2 |
| G Promotion-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Die Umlaut-Bereinigung aus dem 01.08.2026-Befund ist nicht abgeschlossen.** Eine gezielte
   Stichprobe (nicht das blinde `ae\b`-Grep, sondern ein Wortkatalog typischer Umlaut-Wörter)
   findet weiterhin rund 340 ae/oe/ue-Schreibungen in 23 der 26 Wiki-Artikel — sowohl in den
   `verifiziert:`-Frontmatter-Feldern (Audit-Trail) als auch im Fliesstext selbst. Am stärksten
   betroffen: `ausnahmebewilligung-und-bestandesschutz` (58 Treffer), `fahrzeugabstellplaetze-
   und-parkierung` (46), `wohnhygiene-und-raumanforderungen` (26), `rechtsschutz-und-
   rechtsmittelverfahren` (26), `bauausfuehrung-und-baukontrolle` (26). Das sind ausgerechnet die
   Artikel, die im Zuge der Bundesrechts-Re-Verifikationskette am meisten neuen Text bekommen
   haben — jeder neue Run schreibt in ae/oe/ue-Konvention nach, statt die Konvention beim
   Schreiben gleich zu halten.
2. **Zwei liegen gebliebene Frontmatter-/Backlink-Befunde aus dem 03.08.-Report bestehen
   unverändert seit drei Wochen:** `wiki/rechtsschutz-und-rechtsmittelverfahren.md` führt weiterhin
   `name:`/`titel:` statt `title:` (Frontmatter-Feld `title:` fehlt formal), und
   `wiki/wohnhygiene-und-raumanforderungen.md` verlinkt zweimal `[[260712_amtlich_zh_energ]]` auf
   eine `raw/`-Datei statt auf einen Wiki-Artikel — die Datei existiert zwar (`raw/
   260712_amtlich_zh_energ.md`), aber `[[…]]`-Syntax ist laut Meta-Schema für Wiki-Backlinks
   reserviert, nicht für Rohquellen-Zitate. Formal richtig wäre \`raw/260712_amtlich_zh_energ.md\`
   in Backticks. Bei der enormen Verifikationsdichte dieser drei Wochen (104 Buch-Runs) ist das
   ein sehr kleiner Rest, aber genau deshalb auffällig, dass er zwei Audits überlebt hat.
3. **Kein neuer materieller Befund in Audit A/C/D/E/G — die KB ist strukturell und inhaltlich in
   sehr gutem Zustand.** Die Re-Verifikationskette (Runs 90-104) hat editorisch sauber gearbeitet:
   0 Widersprüche, 0 unbelegte Claims in der Stichprobe, 0 echte RAW-Coverage-Lücken, kein
   veralteter Artikel, kein derzeit fälliger Promotion-Kandidat. Der einzige verbleibende
   `emerging`-Artikel (`negative-vorwirkung-und-bzo-revision`) hängt an einem noch nicht
   erfolgten behördlichen Akt (Genehmigung/Inkrafttreten revBZO Thalwil) und wird bereits aktiv
   überwacht (zuletzt 23.08.2026 erneut ergebnislos geprüft) — das ist korrektes Verhalten, kein
   Rückstand.

## Details je Audit

### A. Widersprüche

**0 Befunde.** `wiki/QUESTIONS.md`, Abschnitt «Cross-Article-Spannungen» führt weiterhin
«Noch keine erfasst». Gezielte Gegenprobe an der am häufigsten überlappenden Wertepaarung
(4-m/5-m-Schwelle des «besonderen Gebäudes», § 49 Abs. 3 / § 273 PBG) zwischen
`[[abstaende-und-hoehen]]` und `[[gebaeudearten-und-abstandssystem]]`: beide Artikel nennen
identisch ≤ 4 m Flachdach / ≤ 5 m Schrägdach, kein Daueraufenthalt, reduzierter
Gebäudeabstand — konsistent.

Zusätzliche Gegenprobe am frisch korrigierten Befund aus Buch-Run 104 (BEZ 2019 Nr. 5 ist ein
§ 358-, kein § 357-PBG-Fall; die 15-%-Schwelle der Stadt-Zürcher Richtlinie kommt im Entscheid
nicht vor): die Korrektur ist konsistent in `wiki/ausnahmebewilligung-und-bestandesschutz.md`
(Frontmatter `sources`/`verifiziert` und Fliesstext Ziff. genannt) und in `wiki/QUESTIONS.md`
eingetragen; keine andere Wiki-Stelle zitiert BEZ 2019 Nr. 5 noch mit der widerlegten
§-357-Zuordnung oder der unbelegten 15-%-Schwelle.

**Grenze dieses Audits:** kein vollständiger paarweiser Neuvergleich aller 26 Artikel — bei
dieser Artikelzahl und Verifikationsdichte wäre das ein eigener mehrstündiger Lauf. Ein A0
heisst «keine neue Spannung sichtbar», nicht «bewiesen widerspruchsfrei».

### B. Kaputte Backlinks / Orphans / Frontmatter

**4 Befunde** (strukturell per `wissen/tools/wiki-konsistenz.sh baurecht` gemessen; deutlich
weniger als die 24 vom 03.08.2026 — die Frontmatter-Nachrüstung der zehn damals betroffenen
Artikel ist erledigt):

1. `wiki/QUELLEN.md` — Frontmatter nutzt `titel:`/`aktualisiert:` statt der Schema-Felder
   `title:`/`last_updated:`; `sources:` fehlt ganz (unverändert seit 03.08.2026).
2. `wiki/QUESTIONS.md:1263` — Backlink über Zeilenumbruch zerrissen, löst nirgends auf.
3. `wiki/QUESTIONS.md:2073` — dieselbe Zeilenumbruch-Falle, zweite Stelle.
4. `wiki/rechtsschutz-und-rechtsmittelverfahren.md` — Frontmatter ohne `title:` (führt
   stattdessen `name:` und `titel:`); `sources`/`last_updated`/`status` sind vorhanden.

Nicht mehr in dieser Liste, weil geprüft und als kein Strukturbefund bestätigt: der vom
Skript zusätzlich gemeldete Fall `wiki/wohnhygiene-und-raumanforderungen.md` →
`[[260712_amtlich_zh_energ]]` — die Zieldatei `raw/260712_amtlich_zh_energ.md` existiert
tatsächlich, das Skript prüft `raw/` aber bewusst nicht als Backlink-Ziel-Universum (dort
liegen Quell-Dumps, keine Wiki-Ziele). Der Befund ist damit kein toter Link, sondern ein
**Konventionsfehler**: `[[…]]`-Syntax wird auf eine Rohquelle statt einen Wiki-Artikel
angewendet. Aufgeführt unter Top-3 #2, hier nicht doppelt gezählt, um die Tabellenzahl mit
dem reinen Skript-Output vergleichbar zu halten — de facto sind es damit **5 Detailbefunde**
für 4 betroffene Dateien.

**Orphan-Check** (händisch, da `wiki-konsistenz.sh` keine Orphan-Erkennung fährt): kein
Artikel ohne mindestens einen eingehenden `[[…]]`-Link von einem anderen Wiki-Artikel.
**INDEX-Registrierung**: alle 26 Artikel sind in `wiki/INDEX.md` geführt.

### C. Unbelegte Claims

**0 Befunde.** Stichprobe über drei Artikel, die NICHT Teil der Bundesrechts-
Re-Verifikationskette waren (`baulinien-und-abstandslinien`, `geschosse-und-kniestock`,
`nebenbestimmungen-und-reverse`): durchgehend dichte §-Belegung im Fliesstext (117/31/32
§-/Art.-Referenzen auf 295/194/150 Zeilen), zentrale Aussagen tragen jeweils eine konkrete
Fundstelle. Zusätzlich verifiziert: die im Auftrag befürchtete Frontmatter-Lücke
(`abstaende-und-hoehen`, `gebaeudearten-und-abstandssystem` ohne `sources:`) war ein
Artefakt der eigenen Lesetiefe (die `sources:`-Zeile liegt bei diesen zwei Artikeln erst
nach einem sehr langen mehrzeiligen `verifiziert:`-Feld) — beide Artikel führen ein
vollständiges `sources:`-Array mit über 40 bzw. 25 Einzelbelegen.

### D. RAW-Coverage

**0 echte Lücken.** 40 von 100 `raw/`-Dateien werden in keinem Wiki-Artikel im Fliesstext
zitiert; alle 40 sind kommunale ZH-BZO-Volltexte (`260607_amtlich_zh_bzo-*.md`), die
`raw/_INGESTED.md` explizit als Sammelposten «Direktkonsultation, Register siehe
[[QUELLEN]]» führt — derselbe, bereits am 03.08.2026 als Fehlalarm-Muster erkannte Fall.
Die vier seit dem letzten Health-Check neu hinzugekommenen `raw/`-Dateien (BEZ-2019-Nr.-5-
Volltext, ZH-Lärmschutzformulare, SZ-Strassengesetz/-verordnung, VErV/StrAV-Bestand)
sind laut `_INGESTED.md` allesamt als «eingearbeitet» markiert und im jeweiligen Wiki-
Artikel auch tatsächlich referenziert (stichprobenartig gegengeprüft für
`strassenabstand-zufahrten-vorteilsabgabe-sz` und `umgebungsgestaltung-und-
einfriedungen`).

### E. Veraltete Artikel

**0 Befunde.** Jüngstes `last_updated` in der KB ist der 2026-07-27
(`baulinien-und-abstandslinien`, `geschosse-und-kniestock`) — beides innerhalb der
90-Tage-Schwelle (Grenze wäre 2026-05-26). Alle übrigen 24 Artikel tragen `last_updated`
zwischen 2026-08-03 und 2026-08-23d. Kein Artikel mit neuerer, noch nicht eingearbeiteter
raw-Quelle identifiziert.

Sonderfall geprüft, aber kein Befund: `negative-vorwirkung-und-bzo-revision` trägt eine
zeitkritische Statustabelle «Stand 03.08.2026» (Genehmigung/Inkrafttreten der revBZO
Thalwil noch offen). Das ist keine vergessene Alterung — der Punkt ist in `wiki/
QUESTIONS.md` (T-01) als aktiv zu überwachen registriert und wurde zuletzt am 23.08.2026
erneut geprüft (weiterhin kein neuer Stand bei Gemeinde/Baudirektion/Amtsblatt).

### F. Schreibregel-Verstösse

**2 Befund-Kategorien**, damit deutlich unter der 03.08.-Zahl (dort 3: 41 Deko-Symbole +
3844 ae/oe/ue-Treffer + 0 ß), aber sachlich fast unverändert schwer:

1. **Umlaut-Ersatzschreibung (ae/oe/ue statt ä/ö/ü), Rule `umlaute-konvention.md`.** Ein
   gezielter Wortkatalog-Grep (typische Umlaut-Wörter wie Gebäude, Änderung, Möglichkeit,
   Erläuterung, Fälle, Bäume, Grösse — bewusst NICHT das blinde `ae\b`-Muster, das laut
   03.08.-Report False Positives erzeugt) findet **rund 340 Treffer in 23 von 26 Artikeln**.
   Stichprobe an zwei Artikeln zeigt: die Verstösse stecken sowohl in den `verifiziert:`-
   Audit-Trail-Feldern des Frontmatters als auch im eigentlichen Fliesstext (Verhältnis
   ca. 1:6 bis 1:3 Frontmatter:Body). Die 03.08.-Zahl war mit dem blinden Grep-Muster
   massiv überschätzt (3844 Treffer über einen anderen Prüfbereich inkl. `buecher/`); mit
   der gezielten Methode ist die aktuelle Grössenordnung nicht direkt vergleichbar, aber
   der Befund selbst — die Konvention wird beim Schreiben neuer `verifiziert:`-Einträge
   und Fliesstext-Passagen nicht konsequent eingehalten — besteht unverändert seit dem
   letzten Health-Check.
2. **Dekorative Symbole**, Rule User-Level-CLAUDE.md «keine dekorativen Symbole/Emojis».
   66 Treffer auf ✅/🟡: 59 davon in `wiki/QUESTIONS.md` (dort als Status-Marker für
   geklärte Fragen etabliert, funktional wiederkehrend — dieselbe Einordnung wie im
   03.08.-Report, kein neuer Befund), aber **7 im eigentlichen Wiki-Korpus**:
   `wiki/baureife-und-erschliessung.md` (3× ✅) und `wiki/umgebungsgestaltung-und-
   einfriedungen.md` (4× ✅) — dort ist ✅ kein etablierter funktionaler Marker wie ⚠,
   sondern Dekoration in Aufzählungen.

Kein ß-Verstoss gefunden (0 Treffer in `wiki/*.md`).

### G. Promotion-Kandidaten

**0 Befunde.** Von 26 Wiki-Artikeln sind 25 `established`, 1 `emerging`
(`negative-vorwirkung-und-bzo-revision`), 0 `speculative`. Der einzige `emerging`-Artikel
ist **kein** Promotion-Kandidat im engeren Sinn: seine Kernaussagen (§ 234/§ 235 PBG,
Vorwirkungsmechanik, BGE-Belege) sind bereits vollständig quellenbelegt und einmalig gegen
den amtlichen Wortlaut verifiziert (Buch-Run 72); der Status bleibt bewusst `emerging`,
weil ein zentraler Tatsachenteil (Verfahrensstand revBZO Thalwil, Abschnitt 4) an einem
noch nicht erfolgten behördlichen Akt hängt und sich jederzeit ändern kann. Eine Promotion
zu `established` wäre hier fachlich verfrüht, nicht überfällig.

**QUESTIONS-Konsistenz:** Stichprobe der jüngsten zehn `✅ GEKLÄRT`-Einträge (Buch-Runs
80-104) gegen die zugehörigen Wiki-Artikel zeigt durchgehend Deckung — jede als geklärt
markierte Frage ist im referenzierten Artikel auch tatsächlich mit `last_updated`/
`verifiziert`-Eintrag nachgezogen. Keine Inkonsistenz gefunden.

---

*Phase 2 (Aktionen) nicht ausgeführt — unbeaufsichtigter Lauf. Für die Umsetzung eines
Befundes: interaktive Session mit Skill `wissenscheck` und dem KB-Namen `baurecht`.*
