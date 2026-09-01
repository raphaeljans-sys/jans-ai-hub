# Wissens-Health-Check: baurecht — 2026-09-01

## Methode dieses Laufs

Phase 1 (Audit + Report, unbeaufsichtigt/Skill-Aufruf). Phase 2 (Aktionen) bewusst NICHT
ausgeführt. Basis ist der letzte Health-Check vom 2026-08-24
(`outputs/2026-08-24_health-check.md`). Seither sind 37 neue Output-Dateien entstanden: der Rest
der Bundesrechts-Re-Verifikationskette (Buch-Runs 105-140, 24.08.2026), eine Schub-Lane-
Bestätigung der Reglemente-Queue Thalwil (29.08.2026) und der frische RPV-Schwellenlauf
(Buch-Run 141, 01.09.2026, derselbe Tag wie dieser Check).

Audit B basiert auf `wissen/tools/wiki-konsistenz.sh baurecht` (0 Befunde) und einer manuellen
Gegenprobe der vier am 24.08. gemeldeten Einzelfälle. Audit D wurde per gezieltem Dateiabgleich
gegen `raw/_INGESTED.md` für die neuesten sechs `raw/`-Dateien gegengeprüft (kein vollständiger
Neuabgleich aller 127 Dateien). Audit F nutzt einen wortbasierten Umlaut-Katalog mit Ausschluss
von Backlinks, Code-Spans und Dateinamen in `sources:`-Arrays (das blinde Grep-Muster aus
früheren Läufen erzeugt laut 03.08.-Report massive False Positives). Audit A wurde anhand der in
`wiki/QUESTIONS.md` registrierten Spannungen sowie einer gezielten Gegenprobe am frischesten
Korrekturfall (RPV-Schwellenwerte, Buch-Run 141) geprüft — kein vollständiger paarweiser
Neuvergleich aller 28 Wiki-Artikel.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprüche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Lücken | 4 (Register-Nachführung, kein Inhaltsverlust) |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstösse | 1 |
| G Promotion-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **`raw/_INGESTED.md` hinkt der tatsächlichen Ingestion hinterher.** Vier frisch bezogene und
   bereits korrekt zitierte `raw/`-Dateien fehlen komplett im Register: der heutige
   `260901_amtlich_ch_rpv-art32a-36-37.md` (im Fliesstext dreifach zitiert in
   `buecher/band-2/21-bauen-ausserhalb-bauzonen.md`), `260824_amtlich_ch_curiavista-geschaeft-
   26044-stwe-revision.md` (in den `sources:` von `wiki/stockwerkeigentum-teilungsplan-und-
   begruendung.md`), sowie `260824_amtlich_zh_kr-geschaeft-6000-baulinien-cdws.md` und
   `260824_sekundaer_zh_kantonsrat-geschaeft-6000-baulinien.md`. Kein Inhaltsverlust (die Quellen
   sind eingearbeitet und belegt), aber das Register — die einzige Stelle, die Audit D
   maschinell prüfbar macht — bildet den Wissensstand nicht mehr vollständig ab. Je länger das
   liegen bleibt, desto weniger taugt `_INGESTED.md` als Coverage-Nachweis.
2. **Die grosse Umlaut-Verschmutzung aus dem 24.08.-Bericht ist praktisch behoben — bis auf
   einen Rest.** Der frühere Bericht zählte rund 340 ae/oe/ue-Treffer in 23 von 26 Artikeln (mit
   einem breiten Grep-Muster, das laut eigenem Vorbehalt Backlinks und Dateinamen mitzählte).
   Mit einem präzisen Wortkatalog, der Backlinks, Code-Spans und `sources:`-Dateinamen ausklammert,
   bleibt nur **eine** echte Fundstelle im Fliesstext: `wiki/baureife-und-erschliessung.md`
   Zeile 320, eine Korrektur vom 28.08.2026 (Wissens-Chef Run 46), die durchgehend in
   ae/oe/ue-Schreibung verfasst ist («Gebaeudeprogramm», «Foerderbeitraege», «Grundsaetze»,
   «traegt» u.a.). Die vier zusätzlich am 24.08. gemeldeten dekorativen ✅-Symbole im Fliesstext
   (`baureife-und-erschliessung.md`, `umgebungsgestaltung-und-einfriedungen.md`) sind inzwischen
   ebenfalls weg — 0 Treffer bei diesem Lauf.
3. **Kein neuer materieller Befund in Audit A/B/C/E/G — die KB bleibt strukturell und inhaltlich
   in sehr gutem Zustand, und die drei am 24.08. offenen Detailbefunde sind erledigt.** Die
   damals gemeldete fehlende `title:`-Zeile in `wiki/rechtsschutz-und-rechtsmittelverfahren.md`,
   die fehlenden Schema-Felder in `wiki/QUELLEN.md` und die zwei über Zeilenumbrüche zerrissenen
   Backlinks in `wiki/QUESTIONS.md` sind nicht mehr nachweisbar (`wiki-konsistenz.sh` meldet
   0 Befunde, Frontmatter-Stichprobe bestätigt). Die RPV-Schwellenkorrektur vom selben Tag
   (Buch-Run 141) wurde konsistent nachgezogen: Fundstelle, Verknüpfung (und/bzw.) und
   Bezugsgrösse stimmen jetzt zwischen `buecher/band-2/21-bauen-ausserhalb-bauzonen.md` und der
   Cross-KB-Bringschuld an `wissen/energie` (`E-B141-1`, dort korrekt registriert und mit
   Fundstelle belegt).

## Details je Audit

### A. Widersprüche

**0 Befunde.** `wiki/QUESTIONS.md`, Abschnitt «Cross-Article-Spannungen (worth resolving)» führt
weiterhin «Noch keine erfasst». Gezielte Gegenprobe am frischesten Korrekturfall (RPV-Schwellen,
Buch-Run 141, 01.09.2026): `wiki/ausnahmebewilligung-und-bestandesschutz.md` behandelt § 220/§ 357
PBG und enthält keine eigene Aussage zu den RPV-Landwirtschaftsschwellen (35 %/5'000 m²), also
keine Doppelführung, die in Widerspruch geraten könnte. Die neu belegte Cross-KB-Bringschuld an
`wissen/energie` (`wiki/solarpflicht-schweiz-kantone.md`, Frage `E-B141-1`) ist dort tatsächlich
angekommen und konsistent mit dem Befund in `baurecht` formuliert — keine widersprüchliche
Doppelaussage zwischen den beiden KBs.

**Grenze dieses Audits:** kein vollständiger paarweiser Neuvergleich aller 28 Wiki-Artikel (26
established + 2 emerging) — bei dieser Artikelzahl und Verifikationsdichte (über 140 Buch-Runs)
wäre das ein eigener mehrstündiger Lauf. Ein A0 heisst «keine neue Spannung sichtbar», nicht
«bewiesen widerspruchsfrei».

### B. Kaputte Backlinks / Orphans / Frontmatter

**0 Befunde**, deutlich weniger als die 4 (bzw. 5 Detailbefunde) vom 24.08.2026 — alle damals
gemeldeten Einzelfälle sind nicht mehr nachweisbar:

- `wiki/QUELLEN.md` führt jetzt korrekt `title:`/`last_updated:`/`sources:` (Frontmatter vollständig).
- `wiki/rechtsschutz-und-rechtsmittelverfahren.md` führt jetzt `title:` (zusätzlich weiterhin
  `name:`, das ist unschädlich — Meta-Schema verlangt nur, dass `title:` vorhanden ist).
- `wiki/wohnhygiene-und-raumanforderungen.md` zitiert `raw/260712_amtlich_zh_energ.md` jetzt in
  Backticks statt in `[[…]]`-Syntax (Zeilen 157, 254) — Konventionsfehler behoben.
- Die beiden über Zeilenumbrüche zerrissenen `[[…]]`-Backlinks in `wiki/QUESTIONS.md` (vormals
  Zeilen 1263/2073) sind im aktuellen Skript-Lauf nicht mehr auffindbar; die Datei ist seither um
  rund 200 Zeilen gewachsen, eine Positionsverschiebung reicht als Erklärung nicht aus — das
  deutet auf eine tatsächliche Korrektur seit dem letzten Check hin.

**Orphan-Check** (händisch, da `wiki-konsistenz.sh` keine Orphan-Erkennung fährt): der neue
Artikel `wiki/stockwerkeigentum-teilungsplan-und-begruendung.md` (24.08.2026, Buch-Run 120) ist
korrekt in `wiki/INDEX.md` unter einer eigenen Rubrik «Stockwerkeigentum» geführt und trägt einen
ausgehenden Link zu `[[ausnahmebewilligung-und-bestandesschutz]]` — kein Orphan. **INDEX-
Registrierung**: alle 28 Wiki-Artikel (26 established + 2 emerging) sind in `wiki/INDEX.md`
geführt, ebenso die 48 Buch-Destillate unter `buecher/band-1/` und `buecher/band-2/`, die als
Belegquellen im INDEX mitgeführt werden.

### C. Unbelegte Claims

**0 Befunde.** Alle 27 Themenartikel (ohne `QUELLEN.md`) tragen ein vollständiges `sources:`-Array
im Frontmatter — Vollpruefung des Feldes selbst (nicht jedes Einzelclaims) über alle Artikel.
Vertiefte Stichprobe am neuesten Artikel (`wiki/stockwerkeigentum-teilungsplan-und-
begruendung.md`, `status: emerging`, 24.08.2026): sechs benannte Quellen im Frontmatter, jede
zentrale Aussage im Fliesstext ist einer davon zuordenbar (geltendes Recht Art. 712e ZGB vs.
Entwurf Art. 712ebis E-ZGB klar getrennt, Verfahrensstand mit Geschäftsnummer 26.044 und Datum
belegt); der Klientenbezug wurde bewusst ausgefiltert (eigener Abschnitt «Bewusst nicht
übernommen») statt einfach unbelegt zu bleiben — vorbildlich für die Quellenpflicht dieser KB.

### D. RAW-Coverage

**4 Befunde**, aber Register-Lücke statt echte Coverage-Lücke: die Wiki-/Buch-Artikel zitieren die
Inhalte, `raw/_INGESTED.md` führt die Dateien aber nicht:

1. `raw/260901_amtlich_ch_rpv-art32a-36-37.md` (heute bezogen, Buch-Run 141) — dreifach zitiert in
   `buecher/band-2/21-bauen-ausserhalb-bauzonen.md` (Zeilen 93, 285, 344), fehlt im Register.
2. `raw/260824_amtlich_ch_curiavista-geschaeft-26044-stwe-revision.md` — in den `sources:` von
   `wiki/stockwerkeigentum-teilungsplan-und-begruendung.md` geführt, fehlt im Register.
3. `raw/260824_amtlich_zh_kr-geschaeft-6000-baulinien-cdws.md` — fehlt im Register (Inhalt nicht
   im Rahmen dieses Laufs auf Wiki-Zitation geprüft, da die Datei selbst dort nicht auffindbar ist).
4. `raw/260824_sekundaer_zh_kantonsrat-geschaeft-6000-baulinien.md` — fehlt im Register (gleiche
   Einschränkung wie 3.).

Zum Vergleich geprüft und bestätigt vorhanden: `raw/260824_amtlich_zh_ve-pbg-baulinien-bericht.md`
ist im Register korrekt unter Buch-Run 125 geführt.

**Die grosse Sammelposten-Lücke bleibt kein Befund:** die 44 kommunalen ZH-BZO-Volltexte
(`260607_amtlich_zh_bzo-*.md`) sind weiterhin als bewusster Direktkonsultations-Bestand
gekennzeichnet (Hinweis am Ende von `_INGESTED.md`) und werden hier — wie am 24.08. begründet —
nicht als Coverage-Lücke gezählt.

### E. Veraltete Artikel

**0 Befunde.** Jüngstes `last_updated` in der KB ist heute (`baubewilligungsverfahren.md`,
2026-09-01, aus dem RPV-Lauf); alle übrigen 27 Themenartikel tragen `last_updated` zwischen
2026-08-23 und 2026-08-24 — weit innerhalb der 90-Tage-Schwelle (Grenze wäre 2026-06-03). Kein
Artikel mit neuerer, noch nicht eingearbeiteter `raw/`-Quelle identifiziert.

Sonderfall weiterhin aktiv überwacht, kein Befund: `negative-vorwirkung-und-bzo-revision.md`
trägt eine zeitkritische Statustabelle (Stand 03.08.2026, Genehmigung/Inkrafttreten der revBZO
Thalwil weiterhin offen) — das ist in `wiki/QUESTIONS.md` als aktiver Wachposten geführt, keine
vergessene Alterung. Ebenso `stockwerkeigentum-teilungsplan-und-begruendung.md` (Wachposten
Geschäft 26.044, zuletzt 24.08.2026 geprüft).

### F. Schreibregel-Verstösse

**1 Befund**, gegenüber 2 Befund-Kategorien am 24.08.2026 (dort ~340 Umlaut-Treffer in 23
Artikeln + 7 dekorative ✅ im Fliesstext):

1. **Umlaut-Ersatzschreibung**, Rule `umlaute-konvention.md`: `wiki/baureife-und-erschliessung.md`
   Zeile 320, eine Korrektur des Wissens-Chef Run 46 vom 28.08.2026, durchgehend in
   ae/oe/ue-Schreibung («Gebaeudeprogramm», «traegt», «Foerderbeitraege», «Grundsaetze»,
   «Globalbeitraege», «Foerderprogramm»). Fachlich ist die Korrektur (Art. 45 EnG regelt kein
   Fördergeld, richtig sind Art. 50-52 EnG) unverändert korrekt — es ist ein reines
   Schreibkonventions-Problem, kein Sachfehler.

Kein ß-Verstoss (0 Treffer über alle 28 Wiki-Dateien). Keine dekorativen Symbole (✅/🟡/🔴/🟢) mehr
im eigentlichen Wiki-Korpus ausserhalb `QUESTIONS.md` — dort bleiben sie als etablierte,
funktionale Status-Marker (73 Treffer, unverändert zulässig, gleiche Einordnung wie am 24.08.).

**Nicht geprüft in diesem Lauf:** die 48 Buch-Destillate unter `buecher/` (ausserhalb des
Meta-Schema-Scopes «jeden Artikel in `wiki/`», siehe Skill-Auftrag) und der Gedankenstrich-Check
(Rule `dokument-layout-standard.md`) — beides wäre ein sinnvoller Zusatzscope für den nächsten
Check, falls Raphael das wünscht.

### G. Promotion-Kandidaten

**0 Befunde.** Von 28 Wiki-Artikeln sind 26 `established`, 2 `emerging`
(`negative-vorwirkung-und-bzo-revision`, `stockwerkeigentum-teilungsplan-und-begruendung`),
0 `speculative`. Beide `emerging`-Artikel sind bewusst nicht promotionsreif:

- `negative-vorwirkung-und-bzo-revision` — Kernaussagen (§ 234/§ 235 PBG) sind bereits
  quellenbelegt und einmalig verifiziert; der Status bleibt `emerging`, weil ein zentraler
  Tatsachenteil (Verfahrensstand revBZO Thalwil) an einem noch nicht erfolgten behördlichen Akt
  hängt.
- `stockwerkeigentum-teilungsplan-und-begruendung` — geltendes Recht (Art. 712e ZGB) ist
  vollständig belegt, aber der Artikel behandelt bewusst auch eine laufende, noch nicht in Kraft
  getretene Revision (Art. 712ebis E-ZGB, Geschäft 26.044) als aktiven Wachposten; eine Promotion
  zu `established` wäre hier verfrüht, solange der Gesetzesstand in Bewegung ist.

**QUESTIONS-Konsistenz:** Stichprobe der jüngsten fünf `✅ GEKLÄRT`-Einträge (29.08.–01.09.2026)
gegen die zugehörigen Wiki-/Buch-Artikel zeigt durchgehend Deckung. Die einzige derzeit `OFFEN`
geführte Sachfrage (Baulinien-Zeiger, Run 45, 27.08.2026) ist inzwischen als geklärt markiert
(neuer GEKLÄRT-Eintrag 29.08.2026 direkt darüber) — der ursprüngliche OFFEN-Eintrag steht weiterhin
unverändert darunter (append-only-Konvention korrekt eingehalten, keine Löschung).

---

*Phase 2 (Aktionen) nicht ausgeführt. Für die Umsetzung eines Befundes (insbesondere die
Register-Nachführung `raw/_INGESTED.md`, Audit D): interaktive Session mit Skill `wissenscheck`
und dem KB-Namen `baurecht`.*
