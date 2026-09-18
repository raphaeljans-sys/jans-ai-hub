# Wissens-Health-Check: auflagebereinigung — 2026-09-18

Nachtschicht Mac Mini, Prioritaet 6 (aeltestes Health-Check-Datum unter allen KBs ohne
aktiven Taktgeber: 2026-09-01, wie alle 19 KBs — Sammellauf. Unter den KBs ohne eigenen
Scheduled Task/launchd-Job traegt `auflagebereinigung` mit 7 Wiki-Artikeln eine budgetgerechte
Groesse fuer den Nachtschicht-Zyklus). Phase 1 (Audit), unbeaufsichtigt — Phase 2 nicht
ausgefuehrt.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 |
| B Kaputte Backlinks/Orphans | 1 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 1 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 4 |
| G Promotion-Kandidaten | 1 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **`gvz-einreichung-bma-sprinkler.md` traegt seit dem 21.07.2026 durchgaengige
   ae/oe/ue-statt-ä/ö/ü-Verstoesse (11 Fundstellen bei diesem Scan) — jetzt zum DRITTEN Mal
   gemeldet (21.07., 01.09., heute), nie behoben.** Phase 2 des `wissenscheck` laeuft nur
   interaktiv; diese KB hat keinen aktiven Taktgeber und wird nur sporadisch per
   Nachtschicht-Prioritaet 6 besucht — die Reparatur ist trivial (Text-Ersetzung), wurde aber
   nie angestossen, weil niemand mit Schreibrechten in einer interaktiven Session vorbeikam.
2. **`raw/_INGESTED.md` ist seit der KB-Gruendung (04.06.2026) nicht mehr nachgefuehrt — die
   Luecke waechst mit jedem neuen Primärquellen-Zufluss.** Bereits am 24.07.2026 als D1
   gemeldet (3 fehlende Quellen: BE 1171/26 definitiv, EN-105/EN-110-ZH-Originale,
   GVZ-Weisungen). Seither sind mindestens drei weitere zentrale Primärquellen ins Wiki
   eingeflossen, ohne im Register zu erscheinen: § 22 VRG + PBG §§ 315/316/322/329/339
   (Fedlex/ZH-Recht, Rekursfrist), das `eBaugesucheZH – Handbuch für Gemeinden` (Kap. 3.4.15),
   und der Fassungs-Nachtrag zu VKF-BRL 20-15. Der Registerinhalt (2 Zeilen, Stand 2026-06)
   spiegelt damit nur noch einen Bruchteil der tatsaechlich verwendeten Quellen.
3. **`formular-verifizierung.md` (status `established`) traegt selbst 14 ae/oe/ue-Verstoesse
   — unbemerkt seit dem Sammelfund vom 21.07.2026.** Der damalige CHANGELOG-Eintrag nannte
   beide Dateien («`formular-verifizierung.md` (0 echte Umlaute) und der ... frisch erstellte
   `gvz-einreichung-bma-sprinkler.md`»), aber nur Letztere wurde in den Folge-Health-Checks
   (01.08./03.08./25.08./01.09.) weiterverfolgt — Erstere fiel aus der Nachverfolgung heraus,
   obwohl sie als «established» gilt und damit den hoechsten Vertrauens-Status der KB traegt.

## Details je Audit

### A. Widersprueche

- **`formular-verifizierung.md` vs. eigener CHANGELOG-Eintrag (2026-06-13): EN-105-Gueltigkeit
  nicht klar gegeneinander abgegrenzt.** Der Artikel (Stand 12.06.2026) fuehrt «EN-105 (EnFK,
  Version August 2017), gueltig bis 31.12.2026» als Formular-Beleg fuer Auflage II.8.b. Der
  CHANGELOG-Eintrag vom 13.06.2026 haelt dagegen fest: «EN-ZH/EN-105 laufen seit 01.01.2026
  über EVEN (kein Einzel-PDF mehr)». Beide Aussagen schliessen sich nicht zwingend aus (die
  EnFK-Mastervorlage kann bis Ende 2026 als Referenzdokument gueltig bleiben, waehrend die
  ZH-Einreichung seit Januar ausschliesslich ueber EVEN laeuft), aber der Artikel selbst
  verweist nicht auf diese Einschraenkung — ein Leser des Artikels koennte annehmen, das
  PDF-Formular sei noch bis Ende 2026 direkt einreichbar. Vorschlag: im Artikel einen Satz
  ergaenzen, dass die ZH-Einreichung seit 01.01.2026 ausschliesslich via EVEN erfolgt und die
  Gueltigkeitsangabe nur die EnFK-Formularversion selbst betrifft.

### B. Kaputte Backlinks & Orphans

- **Orphan bestaetigt (seit 24.07.2026 unveraendert): `formular-verifizierung.md` hat keinen
  eingehenden `[[formular-verifizierung]]`-Backlink aus dem Fliesstext eines anderen
  Artikels.** Es steht korrekt im INDEX.md (Sektion «Zuteilung»), aber keiner der anderen 6
  Artikel referenziert es inhaltlich — obwohl `auflagentypen-gewerkzuteilung.md` und
  `vorgehen-auflagebereinigung.md` thematisch naheliegende Anknuepfungspunkte haetten (z.B.
  beim Extraktions-Schritt 1 im Vorgehen-Artikel, der genau das Verifizierungs-Muster dieses
  Artikels voraussetzt). Keine kaputten `[[...]]`-Ziele gefunden — alle anderen Backlinks
  loesen korrekt auf.

### C. Unbelegte Claims

Keine neuen Funde. Stichprobe von je zwei bis drei zentralen Aussagen pro Artikel zeigt
durchgehend Quellenbezug im Frontmatter (`sources`) oder als Fliesstext-Zitat (Gesetzesartikel,
Norm-Destillat, Primärdokument). Die einzige Grenzwertigkeit (EN-105-Gueltigkeit) ist unter
Audit A gefuehrt, weil es sich um eine interne Spannung, nicht um einen fehlenden Beleg handelt.

### D. RAW-Coverage-Luecken

- Siehe Top-3, Punkt 2. `raw/_INGESTED.md` fuehrt nur die zwei Seed-Quellen aus der
  KB-Gruendung. Vorschlag fuer eine kuenftige interaktive Session: die seither zitierten
  Primärquellen (BE 1171/26 definitiv, EN-105/EN-110-ZH-Originale, GVZ-Weisungen 20.07/20.08,
  § 22 VRG + PBG-Bestimmungen, eBaugesucheZH-Handbuch Kap. 3.4.15) als Registerzeilen
  nachtragen — die grossen PDFs bleiben dabei im Projektarchiv (Konvention der KB), nur der
  Registereintrag fehlt.

### E. Veraltete Artikel

Keine Funde nach der strengen Definition (last_updated > 90 Tage UND neuere, nicht
eingearbeitete raw-Quelle vorhanden). `vorgehen-auflagebereinigung.md` (last_updated
2026-06-04, 106 Tage alt) und `formular-verifizierung.md` (2026-06-12, 98 Tage alt) sind zwar
altersmaessig ueber der Schwelle, aber keine neuere unintegrierte Quelle liegt vor, die sie
inhaltlich veraltet macht — das eigentliche Problem bei `vorgehen-auflagebereinigung.md` ist
ein Frontmatter-Pflegefehler, siehe Audit F.

### F. Schreibregel-Verstoesse

1. **`gvz-einreichung-bma-sprinkler.md`: 11 ae/oe/ue-Fundstellen** (grober Scan, u.a.
   «Ausfuehrungsbeginn», «Ueberwachungsflaeche», «Brandschutzbehoerde», «Aenderungen»,
   «Katasterplan»-Umfeld) — dritte Meldung in Folge, siehe Top-3 Punkt 1. Zusaetzlich: das
   Frontmatter dieser Datei traegt **kein `links:`-Feld** (stattdessen `herkunft:`) und fuehrt
   Backlinks stattdessen als Fliesstext-Zeile «**Backlinks:**» am Artikelende — Abweichung vom
   Schema in `wissen/WISSEN-CLAUDE.md` (Frontmatter-Felder `title/status/last_updated/
   sources/links`). Nicht in fruehere Health-Checks aufgenommen.
2. **`formular-verifizierung.md`: 14 ae/oe/ue-Fundstellen** (u.a. «Gedaechtnis», «woertlich»/
   «uebersetzen», «Schluesselwort» mehrfach, «aufloesen», «zustaendigen», «fuer»), siehe Top-3
   Punkt 3.
3. **Frontmatter `last_updated` bei drei Artikeln nicht nachgefuehrt, obwohl der Artikelinhalt
   seither additiv erweitert wurde** (Datei-mtime vs. `last_updated`-Feld verglichen):
   - `aemter-stadt-zuerich.md`: `last_updated: 2026-07-29`, Datei-mtime 25.08.2026 (Wissens-Chef
     Run 43, Notations-Fix `[[[...]]]` → `[[...]]`) — Feld nicht gehoben.
   - `gvz-einreichung-bma-sprinkler.md`: `last_updated: 2026-07-20`, Datei-mtime 26.08.2026
     (Wissens-Chef Run 44, Fassungs-Nachtrag-Block) — Feld nicht gehoben.
   - `vorgehen-auflagebereinigung.md`: `last_updated: 2026-06-04`, Datei-mtime 27.07.2026
     (Wissens-Chef Run 17, Frist-Gate-Absatz in Schritt 1 ergaenzt) — Feld nicht gehoben.
   Zum Vergleich: `brandschutz-auflagen-qss.md` und `fristenlogik-bauentscheid-zh.md` haben ihr
   `last_updated`-Feld bei der letzten Bearbeitung korrekt mitgezogen — das Muster betrifft
   offenbar vor allem additive Cross-KB-Nachtraege durch den `wissens-chef`, nicht die
   Nachtschicht-eigenen Edits.
4. **`aemter-stadt-zuerich.md`, Frontmatter `links:`-Feld mischt Wiki-Backlinks mit einem
   nackten Cross-KB-Dateipfad** (`links: [[fristenlogik-bauentscheid-zh]], [[...]], [[...]],
   wissen/projekt-lessons/wiki/kispi-behoerden-zustaendigkeitswechsel-1171-26.md`) — nach
   `WISSEN-CLAUDE.md` sollte `links:` nur auf `[[wiki-artikel]]` derselben KB zeigen; ein
   Cross-KB-Verweis gehoert als Fliesstext-Erwaehnung in den Artikelkoerper (die Datei tut das
   im Fliesstext ohnehin bereits, das Frontmatter-Feld ist also redundant und schemawidrig).

### G. Promotion-Kandidaten

- **`fristenlogik-bauentscheid-zh.md` bleibt `emerging`, obwohl der Promotion-Vorschlag seit
  dem Health-Check vom 25.08.2026 unveraendert steht und der Artikel seither weiter
  gewachsen ist** (Rekursfrist-Abschnitt bereits am 27.07. primärquellen-belegt, seither
  zusaetzlich die eBaugesucheZH-Projektaenderungslogik am 14.09. amtlich belegt ergaenzt).
  Die Quellenlage traegt eine Promotion zu `established`; die Zurueckhaltung war
  urspruenglich, dass nur ein Projekt/eine Stadt als Beleg diente (Befund 24.07.2026) — das
  gilt weiterhin, ist aber fuer die **gesetzlichen** Abschnitte (Rekursfrist, Erloeschen der
  Bewilligung) irrelevant, da diese direkt aus PBG/VRG stammen und nicht projektabhaengig
  sind. Vorschlag fuer Phase 2: den Artikel in zwei Vertrauensebenen lesen (gesetzliche
  Abschnitte promotionsreif, die fallbezogene Vorbemerkungen-Mechanik bleibt `emerging`) oder
  ganz heben und die Projektabhaengigkeit im Text markieren.

## Nachrichtlich: QUESTIONS.md — eine offene Frage altert

Die Frage «Wann sind die Nachweisdokumente aus einer ‹mit Anmerkungen erfüllt›-Genehmigung
beizubringen» (aufgeworfen 03.08.2026, Antwort beim Brandschutz-Fachplaner angefragt) ist
heute 46 Tage offen, ohne dass eine Antwort im Register vermerkt waere. Kein Health-Check-
Audit im engeren Sinn (die Frage ist korrekt in QUESTIONS.md gefuehrt), aber der Betrag reicht
fuer einen Hinweis: falls diese Nachweispflicht projektkritisch ist (2619 KISPI Ziff. 18/19),
lohnt eine Erinnerung an den Fachplaner.

## Nicht ausgefuehrt

Phase 2 (Aktionen: ae/oe/ue-Korrekturen, `last_updated`-Nachzug, RAW-Register-Nachtrag,
Orphan-Verlinkung, Promotion) — unbeaufsichtigter Nachtschicht-Lauf, laeuft nur interaktiv.
