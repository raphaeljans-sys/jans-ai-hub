# Wissens-Health-Check — KB Auflagebereinigung — 2026-07-21

Phase-1-Audit (unbeaufsichtigt, Mac-Mini-Nachtschicht, Skill `wissenscheck`). Nur Befund +
Ablage, keine Fixes (Phase 2 bleibt interaktiv). KB-Pfad: `wissen/auflagebereinigung/`.
Umfang: 7 Wiki-Artikel (INDEX/QUESTIONS separat) + 4 Outputs + `raw/_INGESTED.md`. Vergleichsbasis:
`outputs/2026-07-01_health-check.md` (20 Tage, 4 CHANGELOG-Eintraege seither).

## Zusammenfassung

| Audit | Thema | Ampel | Befund (Kurz) |
|---|---|---|---|
| A | Widersprueche + QUESTIONS | 🔴 | Derselbe SPA=SAN/SPR-Widerspruch wie am 01.07. **unveraendert unkorrigiert**, obwohl der betroffene Artikel seither editiert wurde. 2 QUESTIONS-Punkte seit 20 Tagen als "geklaert" empfohlen, aber weiter offen gelistet — einer davon bei genauer Pruefung fraglich geklaert. |
| B | Backlinks / Orphans / INDEX | 🟢 | Alle `[[…]]` (neu inkl. `gvz-einreichung-bma-sprinkler`) aufloesbar, keine Orphans, alle 7 Artikel im INDEX. 1 inhaltlicher Tippfehler in einer Backlink-Annotation (kein toter Link). |
| C | Unbelegte Claims | 🟢 | Stichprobe (GVZ-Weisungen, Formular-Zuordnung, Fristenlogik) durchgehend mit Primaerquelle/Ziffer belegt. |
| D | RAW-Coverage | 🟠 | Definitiver Bauentscheid BE 1171/26 weiterhin nicht in `_INGESTED.md` registriert (gleicher Befund wie 01.07., 20 Tage nicht nachgetragen). |
| E | Veraltete Artikel | 🟠 | `vorgehen-auflagebereinigung.md` (04.06.) faengt das am 13.06. selbst empfohlene zweite Deliverable (Einreich-Aufstellung) weiterhin nicht ein — 5 Wochen offen. |
| F | Schreibregel-Verstoesse | 🔴 | **Neuer, schwerwiegender Befund:** 2 von 7 Artikeln fast vollstaendig in ae/oe/ue statt ä/ö/ü — `formular-verifizierung.md` (0 echte Umlaute von ~48 Stellen) und `gvz-einreichung-bma-sprinkler.md` (5 von ~87 Stellen), Letzterer erst heute (20.07., Dauerschicht-Zyklus 21) neu erstellt. |
| G | Promotion-Kandidaten | 🟠 | Dieselben 2 Kandidaten wie am 01.07. weiterhin nicht gehoben (`aemter-stadt-zuerich`, `fristenlogik-bauentscheid-zh`); 1 neuer Artikel bereits selbst auf `established` gesetzt (plausibel). |

Legende: 🟢 ok · 🟠 Aufmerksamkeit · 🔴 Handlungsbedarf.

## Top-3 (Raphaels Aufmerksamkeit)

1. **Der SPA-Gewerk-Widerspruch aus dem 01.07.-Check ist immer noch nicht korrigiert —
   trotz zwischenzeitlicher Bearbeitung derselben Datei.** `brandschutz-auflagen-qss.md`
   Zeile 50 sagt weiterhin «SPA = Gewerk **SAN**», waehrend die massgebliche
   `auflagentypen-gewerkzuteilung.md` (seit 04.06.) **SPR** (eigener Sprinklerplaner; sonst
   SAN) fuehrt. Die Datei wurde am 20.07. fuer den neuen GVZ-Cross-Link editiert — die
   fehlerhafte Zeile daneben blieb unangetastet stehen. Das ist ein konkretes Beispiel fuer
   den Befund unten (3): Health-Check-Empfehlungen ohne Phase-2-Session verpuffen, auch wenn
   die Datei zwischenzeitlich ohnehin geoeffnet wird.

2. **Umlaut-Konvention: 2 Artikel praktisch vollstaendig in ae/oe/ue statt ä/ö/ü —
   einer davon heute frisch erstellt.** `formular-verifizierung.md` (12.06., 0 echte
   Umlaute) und `gvz-einreichung-bma-sprinkler.md` (20.07., **MacBook-Pro-Dauerschicht-
   Zyklus 21**, nur 5 von ~87 Umlaut-Stellen echt) verstossen gegen
   `rules/umlaute-konvention.md`. Bedeutung fuer die heute Nacht bereits gefundene und um
   06:30 behobene Locale-Ursache (`ch.jans.training-energie`/`-plg`/`synobsis-batch` liefen
   in POSIX-"C"-Locale statt UTF-8): **`gvz-einreichung-bma-sprinkler.md` zeigt, dass
   dasselbe Muster auch ausserhalb der drei per Locale-Fix behobenen Mac-Mini-launchd-Jobs
   auftritt** — dieser Artikel entstand ueber den MacBook-Pro-Dauerschicht-Loop, nicht ueber
   einen der reparierten Jobs. Der um 06:30 gesetzte Fix in `scripts/dispatch-run.sh` deckt
   also mutmasslich nicht jeden Erzeugungspfad ab; die MacBook-Pro-Dauerschicht-Kette
   verdient denselben Locale-Check. Nicht selbst weiter untersucht (Budget-Disziplin,
   ausserhalb des Phase-1-Scopes dieser KB).

3. **Zwei am 01.07. als "faktisch geklaert" empfohlene QUESTIONS-Punkte stehen 20 Tage
   spaeter unveraendert unter "Offen"** — und bei genauerem Hinsehen ist einer davon **nicht
   eindeutig** geklaert. «Vorabzug vs. rechtskraeftiger Entscheid» ist tatsaechlich beantwortet
   (Diff-Pruefung im Output vom 13.06. dokumentiert: keine materiellen Aenderungen) und sollte
   archiviert werden. «Adressdiskrepanz Lenggstrasse/Lengstrasse» dagegen: der vom 01.07.-Check
   als Beleg zitierte Output 13.06. klaert eine **andere** Adressfrage («ETC» als Amts-
   Schreibfehler fuer «ETH», Zustelladresse Saumstrasse 21 bestaetigt) — die konkrete Frage
   Lenggstrasse-vs.-Lengstrasse im Bauentscheid-Titel wird darin nicht erwaehnt. Der 01.07.-
   Check hat hier vermutlich zwei Adressthemen verwechselt; dieser Punkt bleibt **echt offen**.

## Details je Audit

### A. Widersprueche + QUESTIONS

- **Widerspruch (unveraendert aktiv):** siehe Top-1. `brandschutz-auflagen-qss.md` Z. 50 vs.
  `auflagentypen-gewerkzuteilung.md` Z. 38. Vorschlag unveraendert seit 01.07.: Z. 50 auf
  «SPA = **SPR** (eigener Sprinklerplaner; sonst SAN)» angleichen.
- **QUESTIONS «Vorabzug vs. rechtskraeftig»:** faktisch beantwortet (BE 1171/26, Diff-Output
  13.06., keine materiellen Aenderungen) — Vorschlag: nach «Geklaert (archiviert)» verschieben.
- **QUESTIONS «Adressdiskrepanz Lenggstrasse/Lengstrasse»:** bei Verifikation gegen den
  zitierten Beleg (Output 13.06.) **nicht bestaetigt geklaert** — siehe Top-3. Bleibt in
  «Offen» stehen, sollte aber nicht laenger als "durch Output X erledigt" gefuehrt werden, bis
  tatsaechlich das Dispositiv prueft, welche Schreibweise gilt.
- Die beiden weiteren offenen QUESTIONS-Punkte (Schallschutz-Federfuehrung, Ämter-
  Direktnummern-Buendelung) sind unveraendert korrekt offen, kein neuer Beleg seit 01.07.
- Neu seit 01.07. geklaert und korrekt archiviert: GVZ-Einreichungsweg BMA/Sprinkler (20.07.).

### B. Backlinks / Orphans / INDEX

- Alle Backlinks (7 Wiki-Artikel + INDEX + QUESTIONS) aufloesbar, keine toten `[[…]]`-Links,
  keine Orphans — der neue Artikel `gvz-einreichung-bma-sprinkler` ist korrekt im INDEX unter
  «Ämter & Adressaten» eingetragen und reziprok verlinkt.
- **Kleiner Inhaltsfehler (keine gebrochene Verlinkung):** `gvz-einreichung-bma-sprinkler.md`
  Backlink-Zeile am Artikelende nennt «`[[auflagentypen-gewerkzuteilung]]` (Zuteilung Ziff.
  II.25/26 an **HLKSE**/Fachfirmen)» — «HLKSE» ist kein definiertes Gewerk-Kuerzel in der
  Zuteilungs-Matrix (dort: BRA/HLK/SAN/SPR/ELE/FKO/ARC/BAU); vermutlich Tippfehler fuer
  «ELE/SPR» (II.25=BMA→ELE, II.26=SPA→SPR/SAN). Der Link selbst funktioniert, nur die
  Kuerzel-Angabe in Klammern ist falsch.

### C. Unbelegte Claims

- Stichprobe: GVZ-Anmeldeschwellen (`gvz-einreichung-bma-sprinkler.md`, mit VKF-BRL-Ziffer +
  Lesedatum), Formular-Zuordnung II.8 (`formular-verifizierung.md`, mit Bauentscheid-Ziffer +
  Formular-Original), Vorbemerkungen-Mechanik (`fristenlogik-bauentscheid-zh.md`, mit
  §-Verweis PBG/BVV). Alle drei durchgehend belegt. **Kein Handlungsbedarf.**

### D. RAW-Coverage

- `_INGESTED.md` fuehrt weiterhin nur 2 Quellen (Vorabzug-Entscheid, GRUNER-Adressliste).
  Der **definitive** Bauentscheid BE 1171/26 (seit 08.06./12.06. im Wiki mehrfach zitiert,
  u.a. `formular-verifizierung.md`) ist **weiterhin nicht** als eigene Zeile registriert —
  identischer Hinweis wie im 01.07.-Check, seither nicht nachgetragen.
- Neu: die beiden GVZ-Weisungen 20.07/20.08 (Web-Quellen, vollstaendig gelesen fuer
  `gvz-einreichung-bma-sprinkler.md`) sind ebenfalls nicht im Register — je nach Auslegung
  der CLAUDE.md-Konvention (raw/ fuer Projekt-PDFs) evtl. bewusst ausserhalb des Scopes;
  zur Konsistenz waere eine Web-Quellen-Sektion im Register sinnvoll (Phase 2).

### E. Veraltete Artikel

- `last_updated < 2026-04-23` (90 Tage) UND neuere Quelle vorhanden: **keiner** — alle
  Artikel-Daten liegen zwischen 04.06. und 20.07., weit innerhalb der 90-Tage-Schwelle.
- Inhaltlich ueberholt trotz jungem Datum (Wiederholung aus 01.07., unveraendert offen):
  `vorgehen-auflagebereinigung.md` (04.06., nicht seither editiert) haelt in Schritt 4 nur
  die planerorientierte Plan-/Dokumentenliste fest — die am 13.06. selbst als «zweites
  Deliverable» erkannte Einreich-Aufstellung (amtsgegliedert, mit Bezugsquelle) fehlt
  weiterhin. Der Output vom 13.06. traegt den Vermerk «→ vorgehen-auflagebereinigung
  ergaenzen» seit uber 5 Wochen unerledigt.
- `brandschutz-auflagen-qss.md` und `auflagentypen-gewerkzuteilung.md` gelten wegen des in
  Audit A genannten Widerspruchs ebenfalls als inhaltlich nicht auf aktuellem, konsistentem
  Stand — Ursache ist derselbe unkorrigierte Punkt, hier nicht doppelt gezaehlt.

### F. Schreibregel-Verstoesse

- Frontmatter: 6 von 7 Artikeln vollstaendig (title/status/last_updated/sources/links).
  `gvz-einreichung-bma-sprinkler.md` nutzt abweichende Feldnamen (`quellen`/`herkunft` statt
  `sources`) — inhaltlich aequivalent, aber nicht schema-konform zu `wissen/WISSEN-CLAUDE.md`
  (`status`/`last_updated`/`sources`/`links`). Kein Datenverlust, aber Formatinkonsistenz.
- **Umlaut-Konvention (Hauptbefund, siehe Top-2):** `formular-verifizierung.md` durchgehend
  ae/oe/ue statt ä/ö/ü (0 echte Umlaute im gesamten Artikel: «Gedaechtnis», «woertlich»,
  «gueltig», «Kuehlung», «Lueftung», «Schluesselwort» usw.). `gvz-einreichung-bma-sprinkler.md`
  fast durchgehend ebenso («Brandschutzbehoerde», «Ausfuehrungsbeginn», «Ueberwachungsflaeche»,
  «Faelle», «gefuehrt», «Erlaeuterungen»). Die uebrigen 5 Artikel sind ueberwiegend in echten
  Umlauten geschrieben (vereinzelte Wortbestandteile wie «Bau-entscheid» erzeugen bei
  automatisierter Pruefung falsch-positive ae/oe/ue-Treffer an Wortfugen, keine echten
  Verstoesse — von Hand gegengeprueft).
- Kein ß gefunden, Schweizer Hochdeutsch durchgehend, keine Deko-/Emoji-Verstoesse.

### G. Promotion-Kandidaten

- **`aemter-stadt-zuerich.md`** (emerging seit 04.06., zuletzt 12.07. um Baurecht-Querbezug
  ergaenzt): mehrfach belegt (Vorabzug + definitiver Entscheid + 2 Outputs) — unveraendert
  Kandidat fuer `established`, wie bereits am 01.07. empfohlen.
- **`fristenlogik-bauentscheid-zh.md`** (emerging, zuletzt 12.07.): Vorbemerkungen-Mechanik
  durch definitiven Entscheid bestaetigt — unveraendert Kandidat, wie am 01.07. empfohlen.
- **`auflagentypen-gewerkzuteilung.md`** und **`brandschutz-auflagen-qss.md`**: Promotion
  bleibt blockiert, bis der SPA-Widerspruch (Audit A) bereinigt ist.
- **`vorgehen-auflagebereinigung.md`**: Promotion weiterhin verfrueht, solange die Einreich-
  Aufstellungs-Sicht fehlt (Audit E).
- **`gvz-einreichung-bma-sprinkler.md`**: bereits bei Erstellung (20.07.) auf `established`
  gesetzt — bei vollstaendig gelesenen Primaerquellen (2 GVZ-Weisungen im Volltext) plausibel,
  auch wenn die Umlaut-Verstoesse (Audit F) vorher zu bereinigen waeren.
