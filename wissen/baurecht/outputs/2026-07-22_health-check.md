# Wissens-Health-Check: baurecht — 2026-07-22

Mac Mini Nachtschicht-Zyklus, Phase 1 (Audit + Report, unbeaufsichtigt). Letzter
Health-Check 2026-07-01. Budget-Disziplin beachtet: gezielte Stichproben statt
Vollabgleich aller 24 Wiki-Artikel gegen die amtlichen Volltexte (das leistet der
laufende Buch-Run/Wissens-Chef-Zyklus bereits kontinuierlich, siehe CHANGELOG).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 (neu) |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 1 (bereits bekannt, weiterhin offen) |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 (gross, neu identifiziert) |
| G Promotion-Kandidaten | 4 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Flaechendeckende ae/oe/ue-statt-Umlaut-Verstoesse quer durch praktisch alle
   24 Wiki-Artikel** (Audit F) — dasselbe Muster, das am 2026-07-21 in den KBs
   energie/planungsgrundlagen/architekten-synobsis gefunden und auf einen
   Locale-Bug in den launchd-Trainingsjobs zurueckgefuehrt wurde (Fix in
   `scripts/dispatch-run.sh`, "Locale abhaerten"). Baurecht war in jenem Fix
   NICHT eingeschlossen und war bislang nicht auf dasselbe Muster geprueft.
   Root Cause fuer den Baurecht-Trainingsjob (`Baurecht-Buch Run` MacBook Pro)
   noch zu verifizieren — vermutlich derselbe fehlende `LANG=de_CH.UTF-8`.
2. **SIA-500-Behindertenparkplatz-Kennwert weiterhin unverifiziert** (Audit C,
   bereits am 2026-07-21 im CHANGELOG/QUESTIONS geflaggt, Cross-KB Run 11,
   noch nicht geloest): `fahrzeugabstellplaetze-und-parkierung.md` fuehrt
   «1 Platz je 25 Wohnungen» + 100-m-Gehdistanz, waehrend SIA 500:2009
   Ziff. 9.7.2/9.7.3 «1 je weitere 25 **Parkplaetze**» ohne 100-m-Mass verlangt.
   Herkunft des Wiki-Werts (Ausgabe 1988? ZH-Wegleitung?) weiterhin offen.
3. **4 Artikel seit laengerem auf `status: emerging`**, obwohl inhaltlich reif
   (vollstaendige §-Belege, verlinkt, mehrfach im Buch-Zyklus gegengeprueft):
   Kandidaten fuer Promotion auf `established` (Audit G).

Voller Report unten. Naechster Schritt: Umlaut-Bereinigung ist Phase-2-Arbeit
(interaktiv oder dedizierter Korrektur-Lauf) — bei diesem Umfang (13+ Treffer
allein in einem einzigen Artikel) kein Nachtschicht-Fix, sondern eigener Auftrag.

## Details je Audit

### A. Widersprueche zwischen Artikeln

Keine neuen gefunden. Die im QUESTIONS.md dokumentierte Historie zeigt eine sehr
disziplinierte laufende Widerspruchsbereinigung (Buch-Runs 28-50, Modell-D
Volltextabgleich) — praktisch jeder fruehere Flag ist inzwischen "erledigt"
oder "geklaert" markiert, mit Fundstellenbeleg. Keine Stichprobe hat einen
neuen, ungeloesten Widerspruch aufgedeckt.

### B. Kaputte Backlinks & Orphans

Alle `[[...]]`-Links innerhalb `wiki/` wurden gegen die vorhandenen Dateien
(inkl. `buecher/band-1/`, `buecher/band-2/`, `raw/`) geprueft — 0 tote Links.
Alle 24 Sachartikel sind im `INDEX.md` erwaehnt, keine Orphans (jeder Artikel
hat mindestens einen eingehenden Link).

Kleine Formfrage (kein Fehler, nur Konvention offen): drei Artikel verlinken
mit `[[machbarkeit]]`, `[[ankaufspruefung]]`, `[[immobilienbewertung]]` auf
andere Skills/KBs, ohne dass dort ein gleichnamiger Wiki-Artikel existiert
(diese Namen sind Skill- bzw. KB-Wurzelnamen). Funktioniert als Verweis in der
Prosa, ist aber kein aufloesbarer Wiki-Backlink — falls Cross-KB-Links kuenftig
maschinell geprueft werden sollen, braeuchte es eine Konvention (z.B. auf einen
konkreten Zielartikel verlinken statt auf den KB-/Skill-Namen).

### C. Unbelegte Claims

Stichprobe von 3 Artikeln (fahrzeugabstellplaetze-und-parkierung,
abstaende-und-hoehen, rechtsschutz-und-rechtsmittelverfahren): durchgehend
§-belegt, Quellen in Frontmatter vollstaendig.

Eine bereits bekannte, weiterhin offene Luecke: **SIA-500-Kennwert
Behindertenparkplaetze** (siehe Top-3 Punkt 2). Empfehlung: bei naechster
Gelegenheit den Ursprung des «25 Wohnungen»/«100 m»-Werts klaeren (evtl. SN
521 500:1988 Vorgaengerausgabe pruefen) oder den Artikel direkt auf den
verifizierten SIA-500:2009-Wortlaut umstellen und die Altangabe als „historisch,
nicht mehr massgebend" kennzeichnen.

### D. RAW-Coverage

`raw/_INGESTED.md` vollstaendig gegen die 24 Wiki-Artikel geprueft: alle
Seed-Dokumente sind eingearbeitet, alle amtlichen Volltexte (`*_amtlich_*.md`,
BZO/Baureglement-Sammlungen) sind laut Register explizit als „direkt
konsultierte Primaerquelle" von der Coverage-Pflicht ausgenommen (so auch im
Register-Hinweis dokumentiert) — korrekt, keine Luecke. Einziger Leerposten
(`260602_docs-baurecht-praxisfaelle.md`) ist als „leer / Platzhalter" korrekt
gekennzeichnet, keine Aktion noetig.

### E. Veraltete Artikel

`last_updated` reicht von 2026-06-02 (zonenkonformitaet) bis 2026-07-20
(baubewilligungsverfahren) — kein Artikel ist aelter als 90 Tage. Kein
E-Finding. (Die KB ist erst seit Juni 2026 aktiv, das 90-Tage-Kriterium greift
strukturell noch nicht.)

### F. Schreibregel-Verstoesse

**Gross, neu identifiziert.** Grep nach ASCII-Umlaut-Ersatzschreibungen
(ae/oe/ue statt ä/ö/ü, unter Ausschluss offensichtlicher False Positives wie
"neue"/"Querbezug", die die Buchstabenfolge zufaellig enthalten) zeigt echte
Verstoesse in praktisch jedem Wiki-Artikel, z.B. in `abstaende-und-hoehen.md`:
"gebaeuden" (13x, statt "Gebaeuden"→"Gebäuden"), "Gewaesserraum" (3x),
"zonenkonformitaet" (2x), "traegt", "zusaetzlich", "zurueck", "praezisiert",
"hoehen", "geprueft" — alles Verstoesse gegen `umlaute-konvention.md`. Analoge
Treffer in weiteren Artikeln (ausnahmebewilligung-und-bestandesschutz 193
Rohtreffer, fahrzeugabstellplaetze-und-parkierung 184, uvm. — Rohzahlen vor
Bereinigung um False Positives, tatsaechliche Verstossquote also niedriger,
aber das Muster ist eindeutig konsistent und flaechendeckend). Kein ß gefunden
(0 Treffer) — dieser Teil der Konvention wird eingehalten.

Vermutliche Ursache: derselbe Locale-Bug wie am 2026-07-21 in
energie/planungsgrundlagen/architekten-synobsis gefunden (launchd-Trainingsjobs
liefen ohne `LANG=de_CH.UTF-8`, Fix bereits in `scripts/dispatch-run.sh`
eingebaut). Ob der Baurecht-Trainingsjob (MacBook Pro, "Baurecht-Buch Run")
denselben Fix bereits erhaelt oder ueber einen anderen Mechanismus laeuft, ist
NICHT verifiziert (aus Budgetgruenden in diesem Lauf nicht weiterverfolgt) —
als offener Punkt in QUESTIONS.md vermerkt.

Frontmatter: bei allen 24 Artikeln vollstaendig (name/beschreibung/status/
last_updated/Quellen/links vorhanden, wenn auch mit leicht unterschiedlichen
Feldnamen je nach Entstehungszeit — z.B. `titel` vs. `name`, `sources` vs.
`quelle_destillat`/`paragraphen`). Keine dekorativen Symbole gefunden.

### G. Promotion-Kandidaten

4 Artikel mit `status: emerging`, alle mit vollstaendigen §-Zitaten, sauberer
Verlinkung und mehrfacher Cross-Referenzierung aus anderen Artikeln — fachlich
reif wirkend, aber nicht foermlich auf `established` gehoben:

- `baurechtlicher-vorentscheid-und-voranfrage.md` (last_updated 2026-06-21)
- `enteignung-und-entschaedigung.md` (last_updated 2026-07-04)
- `nebenbestimmungen-und-reverse.md` (last_updated 2026-06-19)
- `grundlagen-planungs-baurecht.md` (last_updated 2026-06-30)

Keine dieser vier hat einen offenen `needs-verification`-Flag im aktuellen
QUESTIONS.md-Kopf gefunden (grep negativ) — Promotion-Pruefung waere eine
Interaktiv-/Phase-2-Aufgabe (kurzer Volltextabgleich je Artikel gegen den
zugrundeliegenden Buch-Abschnitt, dann Status heben).

## Offene Punkte fuer QUESTIONS.md

Zwei neue Eintraege ergaenzt (siehe QUESTIONS.md 2026-07-22-Kopfeintrag):
(1) Umlaut-Bereinigung als groesserer, dedizierter Auftrag; Locale-Fix-Status
des Baurecht-Trainingsjobs verifizieren. (2) SIA-500-Kennwert bleibt referenziert
als bereits bekannter, weiterhin offener Punkt (kein Duplikat angelegt).
