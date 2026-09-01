# Wissens-Health-Check: architektur-fachwissen — 2026-09-01

Erster Health-Check dieser KB (angelegt 23.08.2026). Phase 1 (Audit + Report), unbeaufsichtigt-tauglich.
Werkzeuge: `wissen/tools/wiki-konsistenz.sh architektur-fachwissen` (rc=1, 47 Rohbefunde, davon 3
Werkzeug-Fehlalarme, siehe Audit B) und `wissen/tools/fehloffen-waechter.py architektur-fachwissen`
(rc=0, keine Befunde). Bestand zum Zeitpunkt des Checks: 97 Wiki-Artikel (ohne INDEX/QUESTIONS),
43 Sektionsinventare unter `raw/inventar/`, 1 bestehender Output. Sperren der KB (Verträge,
Bewerbungen, Adressdaten, Projektdaten Dritter — nie wörtlich reproduzieren) beachtet: keine
Namen, Beträge oder Gegenparteien aus gesperrten oder Dritt-Projektdaten werden unten zitiert.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprüche | 0 |
| B Kaputte Backlinks/Orphans/Nicht-im-INDEX | 68 (44 nicht im INDEX + 20 echte Orphans + 3 bekannter Schema-Konflikt, unverändert offen + 1 toter INDEX-Tabellenverweis; siehe Details, Überschneidungen erklärt) |
| C Unbelegte Claims | 0 (Stichprobe) |
| D RAW-Coverage-Lücken | 0 (plus 1 strukturelle Abweichung vom Meta-Schema, siehe Details) |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstösse | 0 (1 Randnotiz ohne Handlungsbedarf) |
| G Promotion-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **INDEX.md hinkt der Destillation systematisch hinterher, nicht nur punktuell.** 44 von 97
   Wiki-Artikeln (45 %) stehen nicht im INDEX. INDEX.md trägt `last_updated: 2026-08-29` — aber
   16 der fehlenden Artikel sind selbst vom 29.08. und 28 vom 30.08. datiert. Das heisst: schon am
   Tag der letzten INDEX-Pflege hat sie den Zuwachs desselben Tages nicht mehr erfasst, und der
   komplette Zuwachs vom Folgetag (Lane FACHWISSEN) blieb seither ungebucht. Das ist ein
   Prozess-, kein Einzelbefund — die Destillat-Lane und die INDEX-Pflege laufen sichtbar
   asynchron.
2. **20 Wiki-Artikel sind echte Orphans** — kein anderer Artikel dieser KB verlinkt auf sie (Liste
   unten, Audit B). Sie überschneiden sich stark mit den nicht-indexierten Artikeln: für einen
   Leser, der über INDEX oder Backlinks navigiert, sind diese Artikel faktisch unauffindbar,
   obwohl sie inhaltlich vorhanden und meist gut verlinkbar wären (z. B. an bereits bestehende
   Cluster wie Semper/Tektonik oder Wettbewerb).
3. **Zwei bereits bekannte, unveränderte Aufräumpunkte, hier nur bestätigt, nicht neu erzeugt:**
   der Schema-Konflikt zum `links:`-Feld (drei Artikel mit KB-Pfad statt `[[wikilink]]`, offene
   Frage #64 seit 30.08., Entscheid bei Raphael, bewusst nicht angefasst) — und ein toter
   Tabellenverweis in `INDEX.md` Zeile 112 auf die entfernte Inventardatei
   `raw/inventar/buero-referenzen__16_Portfolios.md` (die Datei wurde nach der
   Bewerbungsmappen-Sperre 260823 gelöscht, der Pfadverweis in der Tabelle blieb stehen — kein
   Datenschutzproblem, die Zeile selbst nennt keine Personendaten, aber ein Link ins Leere).

## Details je Audit

### A. Widersprüche

Eine vollständige paarweise Prüfung aller 97 × 96 Artikelkombinationen ist im Phase-1-Budget
nicht leistbar. Geprüft wurden stattdessen die zwei am stärksten thematisch überlappenden
Cluster:

- **Semper/Tektonik-Cluster** (4 Artikel: `tektonik-kernform-kunstform-bekleidung-boetticher-semper`,
  `materialwahrheit-stoffwechseltheorie-semper-vier-elemente`,
  `kerez-forsterstrasse-umkehrung-sempersche-bekleidungstheorie`, `ornament-decorum-loos-semper-riegl`).
  Volltext gelesen: die vier behandeln je einen eigenen Aspekt (Bekleidungstheorie,
  Stoffwechseltheorie, eine Fallanwendung, Ornamentbegriff), sind sauber wechselseitig
  verlinkt und widersprechen sich nicht — keine Spannung gefunden.
- **Typus-Cluster** (2 Artikel: `typus-modell-prototyp-trennschaerfe` aus Architekturtheorie III
  2012, `typus-und-charakter-begriffsapparat-architektur3` aus Architektur III/Eberle 2008).
  Beide definieren «Typus» als Abstraktion/Idee, nicht als konkrete Lösung — inhaltlich
  konsistent, aber **nicht gegenseitig verlinkt**, obwohl sie dieselbe Kernfrage aus zwei
  Vorlesungen behandeln. Kein Widerspruch, aber eine verpasste Verlinkungschance (siehe Audit B).

Die bereits in `QUESTIONS.md` 260829b #39/#40 und 260830b #65/#66 offen geführten Cross-KB-
Spannungen (Führungsfrage Wettbewerbsberichte vs. `wettbewerbs-dna`, Kennwert-Grenze der KB,
Doppelbewirtschaftung mit `entwurfs-referenzen`, halb gedeckter Tessin-Sammelverweis) bleiben
unverändert offen und werden hier nicht doppelt gezählt.

### B. Kaputte Backlinks & Orphans & Nicht-im-INDEX

**44 von 97 Artikeln nicht im INDEX registriert** (per `wiki-konsistenz.sh`, gegen `wiki/INDEX.md`
gegengelesen und stichprobenweise per `grep` bestätigt — kein Werkzeugartefakt):

ahb-planungsgrundlagen-richtlinie-sieben-oekologische-zielvorgaben,
anforderungskatalog-fenster-fassade-sechs-interessengruppen-gkp,
archigram-living-city-situation-informelle-stadt,
atmosphaerenmethode-hardware-software-erlebnis-phaenotyp,
beanspruchungsklassifizierung-fenster-aussentueren-ift-fe-05-1,
begriffsapparat-kant-sprachstil-pruefraster-jans,
begriffskonkordanz-architekturtheorie-koolhaas-loos-rossi-venturi,
betontechnologie-schwinden-sichtbeton-betonkernaktivierung-betonforum,
fachglossar-historische-bauteile-krypta-strebewerk-triforium,
fassade-historisches-artefakt-rossi-analogie,
fassaden-feuchteschutz-sia-180-unterkonstruktion-dehnung-toleranz,
fassadensysteme-typologie-sechs-systeme-hta-luzern,
fuenf-punkte-gegenmanifest-le-corbusier,
funktionale-ausschreibung-verfahrensmethodik,
funktionsbegriff-fuenf-lesarten-sullivan-dreiteilung,
gast-gleichnis-stadt-war-vor-uns-da-bauen-im-bestand,
gebaeudeanalyse-raster-bestandes-kontextanalyse,
kerez-forsterstrasse-umkehrung-sempersche-bekleidungstheorie,
landkarte-eth-professuren-modern-proto-modern,
laon-fassadenbeschreibung-analysemethode-vertikale-prinzipien,
layout-vorgehensmodell-fragestunde-satzspiegel-produktion,
lignatur-hohlkasten-holzelemente-dach-deckenkonstruktion,
materialitaet-haptisch-optisch-riegl-kunstwollen,
materialwahl-argumentationsraster-vier-referenzbaustoffe,
materialwahrheit-stoffwechseltheorie-semper-vier-elemente,
modellfoto-bildregie-perspektive-licht-tiefenschaerfe,
objektliste-architekturgeschichte-brunelleschi-wright-toennesmann,
ornament-decorum-loos-semper-riegl,
ort-genius-loci-norberg-schulz-nicht-orte,
phasenmodell-entwurfsvorgehen-skizze-als-absichtserklaerung,
protofunktional-begriff-abgrenzung-funktionalismus,
protomodern-manifest-acht-saetze-konzept,
regel-und-ausnahme-stadtentwicklung-schett,
rohbauaesthetik-andere-form-von-schatten-stadion-zuerich,
stil-styling-signatur-brand-abgrenzung,
tektonik-kernform-kunstform-bekleidung-boetticher-semper,
tessiner-tendenza-analoge-architektur-ambiente-atmosphaere-genealogie,
textanalyse-raster-19-punkte-fachtext-destillation,
typografie-regelwerk-lernskript-jans-2007,
typus-modell-prototyp-trennschaerfe,
uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten,
wettbewerbsbeschrieb-gliederung-staedtebau-struktur-funktion-material-kuessnacht,
wettbewerbsjury-kapitelfolge-gestaltungsplan-zollstrasse-ost-sbb,
ziegelstein-zwei-ausdrucksarten-backsteinbau,
plus ein 44. Eintrag (Zählung gegen `wiki-konsistenz.sh`-Rohliste bestätigt: 44 Dateien).

**Zeitliche Auswertung:** 16 der 44 fehlenden Artikel tragen `last_updated: 2026-08-29`
(gleicher Tag wie der letzte INDEX-Stand), 28 tragen `2026-08-30` (Folgetag, nach dem letzten
INDEX-Update). Kein einziger ist älter — das bestätigt eine reine Nachführungslücke, keine
alte Verrottung.

**20 echte Orphans** (kein anderer Wiki-Artikel dieser KB verlinkt per `[[…]]` auf sie; geprüft
gegen alle `[[…]]`-Vorkommen in `wiki/*.md`, nicht nur gegen INDEX):
archigram-living-city-situation-informelle-stadt, atmosphaerenmethode-hardware-software-erlebnis-phaenotyp,
begriffsapparat-kant-sprachstil-pruefraster-jans, betontechnologie-schwinden-sichtbeton-betonkernaktivierung-betonforum,
fachglossar-historische-bauteile-krypta-strebewerk-triforium, gast-gleichnis-stadt-war-vor-uns-da-bauen-im-bestand,
gebaeudeanalyse-raster-bestandes-kontextanalyse, kerez-forsterstrasse-umkehrung-sempersche-bekleidungstheorie,
landkarte-eth-professuren-modern-proto-modern, lignatur-hohlkasten-holzelemente-dach-deckenkonstruktion,
materialwahl-argumentationsraster-vier-referenzbaustoffe, modellfoto-bildregie-perspektive-licht-tiefenschaerfe,
objektliste-architekturgeschichte-brunelleschi-wright-toennesmann, phasenmodell-entwurfsvorgehen-skizze-als-absichtserklaerung,
regel-und-ausnahme-stadtentwicklung-schett, rohbauaesthetik-andere-form-von-schatten-stadion-zuerich,
textanalyse-raster-19-punkte-fachtext-destillation, uw-wert-berechnung-und-bauphysikalische-kennwerte-wandaufbauten,
wettbewerbsbeschrieb-gliederung-staedtebau-struktur-funktion-material-kuessnacht,
ziegelstein-zwei-ausdrucksarten-backsteinbau.
Vorschlag: bei der nächsten INDEX-Nachführung dieselbe Passage auch für passende
Querverlinkungen nutzen (z. B. `typus-modell-prototyp-trennschaerfe` ↔
`typus-und-charakter-begriffsapparat-architektur3`, s. Audit A).

**3 Werkzeug-Fehlalarme, kein echter Befund:** `wiki-konsistenz.sh` meldet in `QUESTIONS.md`
drei «tote» Ziele `[[artikel-name]]`, `[[wikilink]]`, `[[wikilinks]]`. Das sind Beispiel-Syntax
in der Prosa der offenen Frage #64 (Schema-Diskussion), keine echten Wikilinks — Fehlalarm des
Werkzeugs, kein Wiki-Fehler. Kein Handlungsbedarf.

**3 bekannte Schema-Abweichungen, unverändert, nicht neu geflaggt:** `ahb-planungsgrundlagen-…`,
`kostenkennwerte-schulanlage-leutschenbach`, `wettbewerbsverfahren-programmstruktur-vorpruefung-…`
tragen im `links:`-Feld zusätzlich zu echten `[[wikilinks]]` auch nackte KB-Pfade
(z. B. `wissen/energie/destillate/…`). Das ist die in `QUESTIONS.md` 260830b #64 bereits
gestellte, unbeantwortete Schema-Frage (Entscheid bei Raphael) — hier nur bestätigt, nicht
doppelt erfasst, nichts angefasst.

**1 toter Tabellenverweis in INDEX.md:** Zeile 112 verweist auf
`raw/inventar/buero-referenzen__16_Portfolios.md` — diese Datei existiert nicht mehr (laut
KB-eigener `CLAUDE.md` nach der Bewerbungsmappen-Sperre vom 23.08.2026 entfernt). Die Zeile
selbst ist unproblematisch (nennt nur «0/83 Fachfunde», keine Personendaten), aber der
Pfadverweis zeigt ins Leere. Vorschlag: bei nächster INDEX-Pflege den Pfad als «(Datei entfernt,
Begründung: Rule auto-verbesserungen 260823)» kennzeichnen statt als aktiven Pfad zu führen.

### C. Unbelegte Claims

Stichprobe (Semper/Tektonik-Cluster, Typus-Cluster, alle 9 `speculative`-Artikel per
Frontmatter-Kontrolle): jeder geprüfte Artikel trägt in `sources:` einen konkreten Dateipfad,
bei Zitaten zusätzlich Seiten-/Abschnittsangabe oder Vorlesungsdatum. Keine unbelegte
Zentralaussage gefunden. Eine Vollprüfung aller 97 Artikel × bis zu 3 Aussagen ist im
Phase-1-Budget nicht leistbar (Vorgabe SKILL.md: monatliche Vollprüfung ist zu teuer) — die
Stichprobe deckt die am stärksten frequentierten und die unsichersten (speculative) Artikel ab.

### D. RAW-Coverage

**Strukturelle Abweichung vom Meta-Schema (kein Fehler, zur Kenntnis):** `wissen/WISSEN-CLAUDE.md`
sieht `raw/_INGESTED.md` als Register vor; diese KB führt stattdessen — wie in ihrer eigenen
`CLAUDE.md` ausdrücklich festgelegt — 43 Sektionsinventare unter `raw/inventar/<sektion>.md`.
`raw/_INGESTED.md` existiert nicht. Das ist eine bewusste, dokumentierte KB-Konvention
(kollisionsfrei bei paralleler Sektionsbearbeitung), kein Versehen — vermerkt, damit ein
künftiger Check nicht nach der falschen Datei sucht.

Von den 43 Inventardateien sind **38 in mindestens einem Wiki-Artikel als Quelle zitiert.**
Die 6 nicht zitierten (`07_Internet_Links`, `10_Konzep_Texte`, `27_KV_Deffisierung`,
`29_Kostenplanung`, `30_Lichtplanung`, `32_Checklisten`) sind in `INDEX.md` (Zeile ~375-378)
bereits ausdrücklich als «P1 = 0, nichts offen dort» begründet — keine echte Coverage-Lücke,
korrekt dokumentiert. **D = 0 echte Lücken.**

### E. Veraltete Artikel

Die KB ist 9 Tage alt (angelegt 23.08.2026); der älteste Wiki-Artikel-Zeitstand liegt bei
29.08.2026. Kein Artikel ist älter als 90 Tage — Audit E greift definitionsgemäss nicht.
**E = 0.**

### F. Schreibregel-Verstösse

- **Frontmatter:** vollständig bei allen 97 Artikeln (title/status/last_updated/sources geprüft
  per Werkzeug, keine Lücke gemeldet).
- **ß:** ein einziges Vorkommen, in `beanspruchungsklassifizierung-fenster-aussentueren-ift-fe-05-1.md`,
  innerhalb der wörtlichen deutschen Institutstitel-Zitierung («Einsatzempfehlungen für Fenster
  und Außentüren», ift Rosenheim) im `sources:`-Feld — kein JANS-Fliesstext, sondern Zitat eines
  deutschen Eigennamens. Kein Verstoss, nur als Randnotiz vermerkt.
- **Echte Umlaute:** im Fliesstext durchgehend korrekt verwendet (z. B. «Hülle», «öffentliche»,
  «Vorprüfung» kommen im Text richtig vor); `ae/oe/ue`-Schreibweisen tauchen ausschliesslich in
  Dateinamen und `[[wikilinks]]` auf — das ist die vorgeschriebene ASCII-Konvention für
  Dateinamen, kein Verstoss.
- **Deko-Symbole/Emoji:** ⚠, ✓, ⛔ kommen in 6 Artikeln vor, ausschliesslich als funktionale
  Warn-/Bestätigungs-Marker (konsistent mit der hubweiten ⚠-Konvention, wie sie auch in den
  `rules/*.md` selbst verwendet wird), keine dekorativen Emoji.
- **F = 0 harte Verstösse.**

### G. Promotion-Kandidaten

Statusverteilung: 88 `emerging`, 9 `speculative`, **0 `established`.** Für eine 9 Tage alte KB
mit überwiegend Einzelquellen-Artikeln (ein Vorlesungsskript, ein Merkblatt, ein Praxisfall)
plausibel — «established» verlangt mehrfachen Beleg/Bewährung, die hier noch nicht erreicht ist.
Kein Artikel wurde als promotionsreif erkannt. Die 9 `speculative`-Artikel tragen bereits den in
`QUESTIONS.md` #37 gesetzten Normen-Vorbehalt (Prüfung gegen aktuelle SIA-/EnFK-/ift-Fassung vor
Verwendung) — korrekt gehedgt, keine vorzeitige Promotion. Kein QUESTIONS-Eintrag der jüngeren
Blöcke (260823-260830b) erschien bei der Durchsicht bereits beantwortet und promotionsreif fürs
Wiki. **G = 0.**
