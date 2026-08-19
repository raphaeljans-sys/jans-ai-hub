# Wissens-Health-Check: kunde-bopp — 2026-08-19

## Methode dieses Laufs

Nachtschicht Mac Mini, Skill `wissenscheck`, Phase 1 (Audit + Report, unbeaufsichtigt).
Phase 2 (Aktionen) bewusst NICHT ausgefuehrt — reiner Pruef-Lauf, keine wiki/-Artikel
angefasst, kein Stub angelegt.

**Auswahlgrund:** Alle anderen Wissensbasen waren zum Zeitpunkt dieses Laufs gesperrt/
gesaettigt; `kunde-bopp` wurde gewaehlt, weil ihr letzter Health-Check (03.08.2026) am
laengsten zurueckliegt (16 Tage) und ihr wiki-Inhalt seither am wenigsten angefasst wurde
(letzte inhaltliche Aenderung 30.07.2026).

**Befund vorab:** Der KB ist seit dem letzten Check (03.08.2026) vollstaendig unveraendert
geblieben — kein neuer Output, kein neuer CHANGELOG-Eintrag, keine neue Korrespondenz in
`raw/`. Einziger Commit im Beobachtungsfenster (`12e9caa4`, 03.08.) betraf den vorherigen
Health-Check selbst. Dieser Lauf ist damit ein **vollstaendiger Neu-Audit gegen denselben
Stand**, nicht nur eine Differenzmessung — und deckt dabei Befunde auf, die in den letzten
drei Phase-1-Laeufen (21.07., 25.07., 01.08., 03.08.) unterschiedlich oder gar nicht
gezaehlt wurden (siehe Audit F).

**Grenze dieses Laufs:** Audit A wurde nicht als vollstaendiger paarweiser Neuvergleich
aller Artikelpaare gefahren, sondern anhand der beiden vorhandenen Wiki-Artikel, der
QUESTIONS/INDEX-Register und der Cross-Referenz-Faelle aus dem CHANGELOG. Bei nur zwei
Artikeln ist das nahezu vollstaendig, aber nicht formal bewiesen widerspruchsfrei.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 |
| B Kaputte Backlinks/Orphans | 5 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 (Umfang massiv unterschaetzt — siehe Details) |
| G Promotion-Kandidaten | 2 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **F, korrigierte Groessenordnung:** `CLAUDE.md`, `CHANGELOG.md`, `wiki/INDEX.md` und die
   aelteren Abschnitte von `wiki/QUESTIONS.md` sind durchgehend in ae/oe/ue-Digraphen statt
   echten Umlauten geschrieben — **121 echte Treffer** (27 + 68 + 9 + 17), nicht die 34, die
   der Lauf vom 03.08. als «F1» auswies. Die Korrektur vom 20.07.2026 (CHANGELOG-Eintrag
   «die am 01.07. rot geflaggten ae/oe/ue-Digraphen sind korrigiert») hat ausschliesslich den
   Wiki-Artikel `profil-christoph-bopp.md` und die neu angefuegten «Beantwortet»-Eintraege in
   `QUESTIONS.md` erfasst — nie die vier KB-Governance-Dateien selbst, obwohl `CLAUDE.md` in
   Zeile 44 die Regel «Schweizer Hochdeutsch, echte Umlaute ae/oe/ue → ä/ö/ü, kein ß» explizit
   nennt und damit ihre eigene Nichteinhaltung dokumentiert.
2. **A, neu praezisiert:** Der Abschnitt «Aktuell offen (Stand 2026-06-03)» in
   `wiki/profil-christoph-bopp.md` (Zeilen 73-78) beschreibt Giebelweg 12 als offenen
   Erstauftrag («Auftrag erteilt … wieviel kleiner die moegliche Baute … Besichtigung
   gewuenscht»), waehrend der neuere Artikel `wiki/projekt-giebelweg12.md` (last_updated
   30.07.2026) zeigt, dass die Machbarkeit laengst geloest ist (1'162 m³ anrechenbar,
   Reserve 105 m³) und Christoph am 30.06.2026 bereits eine formelle Baulinien-Einwendung
   eingereicht hat. Keiner der beiden Artikel verweist auf den anderen im Fliesstext. Dieser
   Befund wurde am 25.07. korrekt als «E1, ueberholter Abschnitt» erkannt, faellt aber unter
   der in diesem Lauf verwendeten strengen E-Definition (>90 Tage + neuere raw-Quelle) nicht
   mehr durch — `profil-christoph-bopp.md` ist erst 29 Tage alt und die aktualisierende
   Quelle ist ein Wiki-Artikel, kein `raw/`-Fund. Er gehoert nach Sachlage in Audit A
   (unbereinigter Wissensstand zwischen zwei Artikeln zur selben Frage) und ist seit 25 Tagen
   unveraendert offen, ohne dass ein Folge-Check ihn seither aufgefuehrt hat.
3. **B, unveraendert seit 7 Wochen:** 5 tote Backlink-Ziele (`[[auftrags-muster-bopp]]`,
   `[[zusammenarbeit-lessons-bopp]]`, `[[project_2620_bauherrschaft]]`) seit dem ersten
   Health-Check am 01.07.2026 identisch.

## Details je Audit

### A. Widersprueche

- **`wiki/profil-christoph-bopp.md` (Z. 73-78) vs. `wiki/projekt-giebelweg12.md`** — siehe
  Top-3 Punkt 2. Vorschlag (fuer eine interaktive Session): Abschnitt «Aktuell offen» auf
  einen Verweis `Siehe [[projekt-giebelweg12]] fuer den aktuellen Stand.` kuerzen, wie am
  25.07. bereits vorgeschlagen.
- Keine weiteren Widersprueche gefunden. Die beiden Artikel widersprechen sich sonst nicht;
  Rollen-/Absender-Trennung (WOMA/Nova/privat/Feag) ist konsistent zwischen
  `profil-christoph-bopp.md`, `CLAUDE.md` und `QUESTIONS.md`.

### B. Kaputte Backlinks / Orphans

Unveraendert seit 03.08.2026 (und im Kern seit 01.07.2026):

- `wiki/INDEX.md`: `[[auftrags-muster-bopp]]` (Z. 13), `[[zusammenarbeit-lessons-bopp]]`
  (Z. 16) — beide als *(geplant)* markiert, kein Zielartikel existiert.
- `wiki/profil-christoph-bopp.md`: Frontmatter `links:` (Z. 6) nennt beide Ziele erneut;
  im Fliesstext (Z. 48) zusaetzlich `[[auftrags-muster-bopp]]`; Z. 71 `[[project_2620_bauherrschaft]]`
  — das ist ein **Memory-Bezeichner** (kein Wiki-Artikel), der faelschlich als Backlink
  geschrieben ist und in keinem Wiki je aufloesen kann. Vorschlag unveraendert: als
  Klartext-Verweis schreiben, z.B. «(siehe Memory `project_2620_bauherrschaft`)».
- Keine Orphans im strengen Sinn: beide echten Artikel sind in `INDEX.md` gelistet und
  gegenseitig via Frontmatter `links:` verknuepft. Schwache Verlinkung bleibt aber bestehen:
  `profil-christoph-bopp.md` verlinkt `projekt-giebelweg12` an keiner Stelle im Fliesstext,
  nur `INDEX.md`/`QUESTIONS.md` tun das — haengt am selben unerledigten Kuerzungs-Vorschlag
  wie Audit A.
- Kein Artikel fehlt im `INDEX.md`.

### C. Unbelegte Claims

Keine Findings. Stichprobe (je bis zu 3 zentrale Aussagen):

- `profil-christoph-bopp.md`: WOMA-Rolle (Vorstand/Vizepraesident seit 2013) → Quelle
  Zefix/woma-maur.ch, verifiziert 20.07. Nova-Rolle (Head Development & Construction seit
  2021) → Quelle novaproperty.ch/Zefix, verifiziert 20.07. Feag-Mandat (VR-Praesident seit
  2019) → moneyhouse.ch/northdata.com/business-monitor.ch, verifiziert 21.07. Alle drei mit
  Datum und Quelle im Frontmatter `sources` und im Fliesstext belegt.
- `projekt-giebelweg12.md`: Baumasse 1'162 m³/Reserve 105 m³ → Deliverable
  `260612_Hangschnitt-Nachweis_Giebelweg-12.pdf` Version 3, mit mtime verifiziert (CHANGELOG
  30.07.). Einwendung 30.06.2026 → PROJEKT-STAND.md + Korrespondenzordner, mit Vollmachts-
  datum 22.06. belegt. Beide Claims sauber referenziert.

### D. RAW-Coverage

`raw/` enthaelt seit KB-Anlage (03.06.2026) keine einzige Datei — `_INGESTED.md` bestaetigt
das explizit als Sonderfall (Seed-Artikel direkt aus dem Apple-Mail-Archiv kompiliert, nicht
aus `raw/`). Formal D0, da keine Eintraege zu pruefen sind. **Beobachtung ausserhalb der
Zaehlung:** seit 2,5 Monaten wurde trotz aktiver Korrespondenz (u.a. die Baulinien-Einwendung
vom 30.06., das Feag-Mandat) nie eine Datei in `raw/` abgelegt — die KB kompoundiert bislang
ausschliesslich ueber Recherche-Outputs, nicht ueber eingekippte Primaerquellen. Kein
Formfehler, aber eine Luecke gegenueber dem in `CLAUDE.md` beschriebenen Soll-Workflow
(«Mail-Exporte, Threads, Dossiers … reinkippen»).

### E. Veraltete Artikel

0 nach der strengen Definition (>90 Tage `last_updated` UND neuere `raw/`-Quelle vorhanden):
`profil-christoph-bopp.md` ist 29 Tage alt, `projekt-giebelweg12.md` 20 Tage — beide unter
der Schwelle, und in keinem Fall existiert eine neuere `raw/`-Datei (siehe Audit D: `raw/`
ist leer). Die inhaltliche Ueberholung von `profil-christoph-bopp.md` durch
`projekt-giebelweg12.md` ist real, faellt aber unter Audit A (siehe dort), weil die
aktualisierende Quelle ein Wiki-Artikel und keine `raw/`-Datei ist.

Zusaetzliche Beobachtung: `projekt-giebelweg12.md` vermerkt «Antwort der Gemeinde stand per
24.07.2026 noch aus» — das ist inzwischen 26 Tage her. Kein E-Finding im engen Sinn (es
existiert keine neuere Quelle, die eine Aktualisierung ermoeglichen wuerde), aber ein
operativer Nachfass-Punkt: ob die Gemeinde Langnau a/A inzwischen geantwortet hat, ist nicht
bekannt und sollte bei Gelegenheit (naechster Bopp-Kontakt oder gezielte Nachfrage) geklaert
werden.

### F. Schreibregel-Verstoesse

**Frontmatter:** vollstaendig in beiden Wiki-Artikeln (`title`, `status`, `last_updated`,
`sources`, `links`). Keine Luecke.

**Umlaute — Kernbefund dieses Laufs:** Die beiden Wiki-Artikel selbst sind sauber (0
Digraphen; einzige Treffer waren `bluewin` (Domainname), `ankaufspruefung`/
`dienstbarkeiten-pruefer` (Skill-/Agent-Namen in Backticks, gemaess Umlaute-Konvention
korrekt ASCII) und `Dauer`/`Raphael`-Wortstaemme, alles keine echten Verstoesse). Die vier
KB-Governance-Dateien sind es nicht:

| Datei | Echte ae/oe/ue-Treffer (bereinigt um Skill-Namen, Domains, Eigennamen) |
|---|---|
| `CLAUDE.md` | 27 |
| `CHANGELOG.md` | 68 |
| `wiki/INDEX.md` | 9 |
| `wiki/QUESTIONS.md` (nur Abschnitte vor der «Beantwortet»-Sektion, die seit 20.07. sauber ist) | 17 |
| **Summe** | **121** |

Beispiele: `CLAUDE.md` Z. 12 «Schluesselkunden», Z. 17 «Praeferenzen», Z. 27 «Rueckfrage»
(2x)/«Aenderung», Z. 41 «Eigentuemerschaft», Z. 42 «Aktualitaet»/«Projektstaende»; `CHANGELOG.md`
Z. 18 «Fassadenhoehe», Z. 80 «Zuerich», Z. 82 «Maerz»/«Praesident», Z. 92 «Vizepraesident»,
Z. 93 «Pfaeffikon», Z. 94 «Geschaeftsleitung»; `wiki/QUESTIONS.md` Z. 4 «Zuerichstrasse»/
«Begruendung», Z. 8 «Ankaufspruefung» (Fliesstext, nicht Skill-Referenz).

**Warum das bisher nicht auffiel:** Der 01.07.-Check flaggte «F rot», der 20.07.-Fix
korrigierte den Wiki-Artikel, und die Checks vom 21.07./25.07. meldeten «F gruen»/«F0» —
das war fuer `wiki/` richtig, aber falsch fuer die Gesamt-KB, obwohl der 03.08.-Lauf seinen
Pruefumfang ausdruecklich auf «`wiki/` + … + `CLAUDE.md`/`CHANGELOG.md`» festlegte und trotzdem
nur 34 statt 121 Treffer zaehlte (wahrscheinlich `wiki/INDEX.md` und `wiki/QUESTIONS.md`
nicht vollstaendig erfasst, oder eine zu enge Zaehlmethode). Vorschlag: in einer interaktiven
Session `CLAUDE.md`, `CHANGELOG.md`, `wiki/INDEX.md` und die aelteren `QUESTIONS.md`-Abschnitte
durch den Skill `korrektur` (Agent `rechtschreibung`) laufen lassen — CHANGELOG-Historieneintraege
sollten dabei nicht inhaltlich umgeschrieben, nur die Digraphen ersetzt werden (Rule
`auto-verbesserungen` 260811: kein globales Suchen-Ersetzen ohne Pruefung, `--numstat` danach
kontrollieren).

**ß-Treffer:** 2, beide in Regelzitaten (`CLAUDE.md` Z. 44, `CHANGELOG.md` Z. 47 «kein ß» als
Beschreibung der Regel selbst) — keine echten Verstoesse.

**Deko-Symbole/Emojis:** keine gefunden.

### G. Promotion-Kandidaten

- **`profil-christoph-bopp.md` (emerging → established):** Seit dem 21.07.2026 als Kandidat
  vermerkt («Status-Promotion emerging→established», CHANGELOG-Eintrag vom 21.07.) und in
  jedem Folge-Check als offener G-Punkt gefuehrt — 29 Tage spaeter immer noch nicht
  vollzogen, weil Phase 2 nur interaktiv laeuft. Rechtfertigung unveraendert stark: alle vier
  Rollen (WOMA/Nova/Feag/privat) sind unabhaengig registerverifiziert (Zefix, moneyhouse,
  northdata, business-monitor), nicht nur aus Mail-Behauptungen uebernommen.
- **`projekt-giebelweg12.md` (emerging, Grenzfall):** Fachlich fundiert (Primaerquellen:
  PROJEKT-STAND.md, Deliverable Version 3, Korrespondenzordner), aber die zentrale
  Baulinien-Frage ist beim Amt haengig (siehe Audit E) — Vorschlag: `emerging` belassen, bis
  die Gemeindeantwort vorliegt, dann pruefen.
- Bereits in `QUESTIONS.md`/`INDEX.md` gefuehrte Backlog-Kandidaten (Artikel
  `auftrags-muster-bopp`, `zusammenarbeit-lessons-bopp`; Projekt-Detailartikel Ebmatingen/
  Romanshorn/Baar) werden hier nicht erneut ausgefuehrt — unveraendert offen, siehe
  `wiki/QUESTIONS.md` und `wiki/INDEX.md` «Backlog / Luecken».

---

*Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf. Fuer die Umsetzung eines
Befundes (insbesondere Audit F, der umfangreichste dieses Laufs): interaktive Session mit
Skill `wissenscheck` und dem KB-Namen `kunde-bopp`.*
