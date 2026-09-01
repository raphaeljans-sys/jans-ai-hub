# CHANGELOG architektur-fachwissen

## 2026-09-01 (Wissens-Chef Lauf 50) — Abgrenzungsvermerk eBKP-H ≠ BKP 2017 in der Kürzel-Tabelle nachgetragen

`wiki/ebkp-h-2012-bezugsgroessen-kuerzel-tabelle.md` (+9/−0): Der Schwesterartikel
`ebkp-h-2012-musterbeispiel-haus-im-forst-drei-genauigkeitsstufen.md` trägt den Abgrenzungsvermerk
vorbildlich (5 Nennungen «BKP 2017», Warnblock, `references/bkp-2017/` in `sources:`); die
Kürzel-Tabelle nannte BKP 2017 **kein einziges Mal** und schloss mit «direkt als Ausmass-Checkliste
nutzbar, bevor ein eBKP-H-Devis eröffnet wird». Kein Fachfehler und kein Phantom-Code — alle Codes
wurden einzeln gegen `references/bkp-2017/BKP-2017-Liste.md` geprüft, keine BKP-Präfix-Verwechslung.
Aber ein Leser, der nur diesen Artikel öffnet, sah den Vorbehalt aus Rule `bkp-2017-referenz`
(«eBKP-H NICHT verwenden, wenn nicht explizit gefordert») nicht. **Lehre: ein Warnblock, der nur im
Schwesterartikel steht, wirkt nicht.**

⚠ **Nicht behoben, ausserhalb des Wissens-Layers, aber diese KB trifft es am härtesten:** Von den
387 Dateien, die auf `github/main` liegen und im kanonischen NAS-Arbeitsbaum fehlen, gehören **383
zu dieser KB**. Das Wiki führt auf dem NAS **99** Artikel, auf GitHub **455**. Ursache ist der seit
dem 29.08.2026 hängende Merge (Konflikt in `wissen/normen/CHANGELOG.md` bei `1eed7118c`), nicht ein
Fehler dieser KB. Kein Datenverlust, aber jede Session liest bis zur Auflösung einen unvollständigen
Bestand. Registriert in `logbuch/fristen.md` (Nachtrag 01.09.2026 23:5x).

## 2026-09-01 — Erster Wissens-Health-Check (Phase 1, unbeaufsichtigt-tauglich): A0·B68·C0·D0·E0·F0·G0

Erster `wissenscheck`-Lauf dieser KB. Kernbefund: **44 von 97 Wiki-Artikeln (45 %) nicht im
INDEX registriert**, davon 16 vom selben Tag wie der letzte INDEX-Stand (29.08.) und 28 vom
Folgetag (30.08.) — die INDEX-Pflege hinkt der Destillat-Lane systematisch hinterher, keine
alte Verrottung. Zusätzlich 20 echte Orphans (keine Backlinks aus dieser KB), ein toter
Tabellenverweis in `INDEX.md` Zeile 112 auf die nach Rule 260823 entfernte Inventardatei
`buero-referenzen__16_Portfolios.md`, sowie Bestätigung des bereits offenen Schema-Konflikts
#64 (unverändert, nicht neu geflaggt). Audits C-G ohne echte Befunde (RAW-Coverage vollständig
erklärt, keine veralteten Artikel, Schreibregeln eingehalten, keine Promotion-Kandidaten bei
0 `established`-Artikeln). Voller Report: `outputs/2026-09-01_health-check.md`. Keine
Reparaturen ausgeführt (Phase 1 only, unbeaufsichtigt-tauglich).

## 2026-08-30 (Wissens-Chef Run 48) — drei Fragen gesetzt, kein Eingriff in Artikel; der Schema-Widerspruch stammt aus Run 47

Cross-KB-Pruefung des 45-Artikel-Zuwachses der letzten 24 h. **Kein einziger Artikeltext geaendert** —
alle vier Melder-Vorschlaege, die Artikel anzufassen, hielten der adversarialen Pruefung nicht stand.
Nur `wiki/QUESTIONS.md` um Block **260830b** erweitert (+46 Z., rein additiv).

**Nullbefund auf den beiden Risiko-Achsen.** Gegen `normen` und gegen `grobkosten`/
`immobilienbewertung`/BKP-Referenz geprueft: die drei Run-47-Befunde (SIA 102, SIA 180/fRsi,
BKP 588/900) sind am Original als geheilt nachgemessen, die Uf/Uli-Werte im neuen
`uw-wert-berechnung-…`-Artikel sind die geltenden, kein weiterer Phantom-BKP-Code, die beiden
`ebkp-h-2012-*`-Artikel trennen eBKP-H sauber vom BKP 2017.

**#64 — der Schema-Widerspruch, den die Aufsicht selbst erzeugt hat.** Drei Artikel dieser KB tragen
einen nackten KB-Pfad im `links:`-Frontmatter; alle drei stammen aus den Eingriffen von Run 47.
`wissen/WISSEN-CLAUDE.md` Z. 50/60-61 definiert `links:` als reines `[[wikilink]]`-Feld, Pruefung B
des Skills `wissenscheck` validiert genau das — der naechste Wissenscheck wird die drei als **tote
Backlinks** melden. Ein Melder dieses Laufs las dieselben drei Dateien als «hausuebliche Konvention»
und wollte sie auf vier weitere ausweiten; hub-weit sind es rund 7 von 272 Artikeln. Entscheid
(zurueckfuehren ODER Pruefung B anpassen) liegt bei Raphael, bis dahin **nichts anfassen**.

**#65/#66 — zwei praezisierte Abgrenzungen.** Die Ebenen-Trennung zu `entwurfs-referenzen` und zu
`architekten-synobsis` ist jetzt als Matrixzeile in `koordination/QUERBEZUEGE.md` gesetzt statt
offengelassen; offen bleiben nur zwei namentlich belegte Doppelbewirtschaftungen (#65) und die Frage,
ob der zur Haelfte ungedeckte Sammelverweis auf den Synobsis-Katalog gesetzt werden soll (#66) —
fuer 5 der 9 im Tessiner-Artikel genannten Architekten ist der Katalogeintrag zu genau den dort
genannten Bauten leer oder fehlt. **Ausdruecklich nicht ausgefuehrt:** der Melder-Vorschlag, die
Destillat-Lane bis zum Entscheid anzuhalten (Rule `rollen-taxonomie` Ziff. 3 — die
Drosselentscheidung bleibt bei Raphael).

## 2026-08-30 — Korpus archiv-fachwissen Sektion 02_Architekturgeschichte P1 vollständig destilliert (Lane FACHWISSEN)

Vorab Memory-Korrektur: die projektinterne Gedächtnisdatei dieser Lane
(`project_fachwissen-dispatch-loop.md`) behauptete zuletzt, P1 sei bereits über den
gesamten Korpus `archiv-fachwissen` einschliesslich `02_Architekturgeschichte`/
`02_Kunst_Geschichte` vollständig abgeschlossen («nichts mehr zu bearbeiten» unter
P1-only-Mandat). Gegen die reale Inventardatei geprüft: `archiv-fachwissen__
02_Architekturgeschichte.md` und `archiv-fachwissen__02_Kunst_Geschichte.md` trugen vor
diesem Lauf **keine** `## Destillat-Fortschritt`-Sektion, `git log`/dieser CHANGELOG-Kopf
endeten bei `10_Protomodern`, und `KORPUS-QUEUE.md` empfahl exakt diese beiden Sektionen
als nächsten Schritt. Die Memory-Behauptung war falsch — derselbe Fehlertyp wie die
bereits einmal korrigierten Einträge 60-65 (fiktive `01_Staedtebau`-Fortsetzung). Dieser
Lauf hat auf Basis der realen Dateien gearbeitet statt auf Basis der Memory-Behauptung.

Nach `KORPUS-QUEUE.md`-Empfehlung («nächstgrösste noch unbearbeitete Sektion») zu
`02_Architekturgeschichte` übergegangen (11 P1 von 3826 Dateien, vier Triage-Gruppen).
Alle vier P1-Positionen destilliert, fünf neue Wiki-Artikel (eine Quelle enthielt zwei
unabhängige Themen):

- [[gebaeudeanalyse-raster-bestandes-kontextanalyse]] — ETH-Prüfungsvorgabe plus
  vollständige Musteranalyse Haus Steiger (Häfeli Moser Steiger, 1957-60): Kette
  Lage/Erschliessung/Grundform/Achsen/Raumfolge/Fassade/Einordnung.
- [[fachglossar-historische-bauteile-krypta-strebewerk-triforium]] — 16 Bauteilbegriffe
  (Krypta bis Dienste, Säulenordnungen), aus einer 586-MB-Datei per `pypdf` extrahiert
  (Read-Tool-Limit 20 MB umgangen, siehe Werkzeug-Befund unten).
- [[tessiner-tendenza-analoge-architektur-ambiente-atmosphaere-genealogie]] — Genealogie
  Tessiner Tendenza (Botta/Snozzi/Galfetti/Reichlin/Reinhart) über Rossi (tipo) zu
  ambiente/Atmosphäre (Sik/Reinhart/Zumthor) zu Naturgeschichte (H&dM, Olgiati, Märkli).
- [[archigram-living-city-situation-informelle-stadt]] — zweiter, im Inventartext nicht
  erwähnter Themenblock derselben Quelldatei: Archigram/Living City 1963, Situationsbegriff,
  Pop-Architektur.
- [[objektliste-architekturgeschichte-brunelleschi-wright-toennesmann]] — geprüfte
  ETH-Referenzliste (Tönnesmann/Hildebrand), Brunelleschi bis Frank Lloyd Wright,
  bestätigt einen bereits dokumentierten Semper-Datierungsfehler in den
  Architektenportraits derselben Sektion.

Sperrlisten-Prüfung: kein Fund (Verträge, Adressen, Lohn-/Gesundheitsdaten). Fortschritt
in `raw/inventar/archiv-fachwissen__02_Architekturgeschichte.md` Abschnitt
«Destillat-Fortschritt» vermerkt (reine Ergänzung, `git diff --numstat` zeigt `31 0`).
**Sektion `02_Architekturgeschichte` P1 vollständig abgeschlossen**, P2 (rund 160 Dateien,
u. a. Sauter-Skript hta Luzern, sechs eigene Epochen-Übersichten) bleibt offen.
Werkzeug-Befund: das 20-MB-Limit des Read-Tools für PDF gilt nur für das Tool selbst —
reine Textextraktion mit `pypdf` in Python funktioniert unabhängig von der Dateigrösse
(hier erfolgreich bei 586 MB). `KORPUS-QUEUE.md` nachgeführt: nächster Schritt gemäss
Queue ist `02_Kunst_Geschichte` (ebenfalls 11 P1, noch unbearbeitet).

## 2026-08-30 — Korpus archiv-fachwissen Sektion 10_Protomodern P1 vollständig destilliert (Lane FACHWISSEN)

Vorab Memory-Korrektur (siehe Betriebsnotiz unten): der Dispatch-Text behauptete erneut den
veralteten Ausgangszustand «keine Spec, 2 Wiki-Artikel»; gegen `git log`, diesen CHANGELOG-
Kopf und `KORPUS-QUEUE.md` verifiziert, danach gemäss Queue-Empfehlung («nächstgrösste noch
unbearbeitete Sektion») zu `10_Protomodern` übergegangen — Raphael Jans' eigenes,
nie abgeschlossenes Buch-/Manifestprojekt «Protomodern» (2013/14), 519 Dateien, 13 P1 von
Phase 0 bereits vollständig gelesen markiert.

Alle 13 P1-Positionen destilliert, dreizehn neue Wiki-Artikel, alle `status: emerging`,
Quellen durchweg eigene DOCX-Kurztexte (via `textutil -convert txt -stdout` gelesen, nicht
nur aus der Inventar-Zusammenfassung übernommen) sowie ein Fremdtext (Schett, PDF mit
Textebene):

- [[protomodern-manifest-acht-saetze-konzept]] — Acht-Sätze-Manifest, Zeitrahmen ETH-Lehre 2000-2020
- [[fuenf-punkte-gegenmanifest-le-corbusier]] — Corbusiers fünf Punkte mit historischen Referenzbauten gegengelesen, fünf eigene Regeln
- [[atmosphaerenmethode-hardware-software-erlebnis-phaenotyp]] — Hardware-/Software-Erlebnis, Formel «Raumatmosphäre minus Sozialsphäre gleich autonomer Phänotyp»
- [[protofunktional-begriff-abgrenzung-funktionalismus]] — Begriffsabgrenzung vom Funktionalismus des 20. Jh.
- [[ziegelstein-zwei-ausdrucksarten-backsteinbau]] — homogene Wandmasse gegen individuellen Ziegelcharakter
- [[fassade-historisches-artefakt-rossi-analogie]] — Rossis Stadtbegriff auf die Fassade übertragen
- [[laon-fassadenbeschreibung-analysemethode-vertikale-prinzipien]] — drei Kompositionsprinzipien, Vergleichsfolie Laon/St. Denis/Reims
- [[kerez-forsterstrasse-umkehrung-sempersche-bekleidungstheorie]] — Semper-Umkehrung am Beispiel Forsterstrasse
- [[gast-gleichnis-stadt-war-vor-uns-da-bauen-im-bestand]] — Haltungstext zum Bauen im Bestand
- [[rohbauaesthetik-andere-form-von-schatten-stadion-zuerich]] — Verteidigung Stadion Zürich gegen Bürofassaden-Vorwurf
- [[phasenmodell-entwurfsvorgehen-skizze-als-absichtserklaerung]] — Skizze als vorläufige Absichtserklärung
- [[landkarte-eth-professuren-modern-proto-modern]] — eigene Zuordnung von ca. 40 ETH-Professuren
- [[regel-und-ausnahme-stadtentwicklung-schett]] — Mechanik des Stadtwachstums, Regel-Ausnahme-These (Schett, Fremdtext)

Fortschritt in `raw/inventar/archiv-fachwissen__10_Protomodern.md` Abschnitt
«Destillat-Fortschritt» vermerkt (reine Ergänzung, `git diff --numstat` zeigt `26 0`).
Sperrlisten-Prüfung: kein Fund. **Sektion `10_Protomodern` P1 vollständig abgeschlossen**,
P2 (33 Positionen) bleibt offen. `KORPUS-QUEUE.md` nachgeführt.

**Betriebsnotiz (Memory-Korrektur):** die projektinterne Gedächtnisdatei dieser Lane
(`project_fachwissen-dispatch-loop.md`) enthielt sechs Einträge (60.-65. Beispiel) zu einer
angeblichen 17-Läufe-Serie in Sektion `01_Staedtebau` (33 Autorendossiers, «235+ Artikel»).
Diese liessen sich weder in `git log`, noch in diesem CHANGELOG, noch in der
`## Destillat-Fortschritt`-Sektion von `archiv-fachwissen__01_Staedtebau.md` (dort existiert
dieser Abschnitt nicht) nachweisen — die Einträge waren erfunden und wurden aus der
Memory-Datei entfernt, bevor sie weitere Läufe in eine fiktive Fortsetzung geschickt hätten.
Realer letzter Stand vor diesem Lauf war `02_Architekturtheorie` (Commit `ec2f289cd`).

## 2026-08-30 — Korpus archiv-fachwissen Sektion 02_Architekturtheorie P1 zu 10/11 abgeschlossen (Lane FACHWISSEN)

Nach Abschluss von `01_Konstruktion` (P1+P2) und dem ersten P2-Lauf `03_Bauprozesse_I_II`
ging dieser Lauf gemäss `KORPUS-QUEUE.md` «Sektionen nach Ertrag» zur nächstgrössten
unbearbeiteten archiv-fachwissen-Sektion über: `02_Architekturtheorie` (21 P1 von 1603
Dateien, elf Triage-Zeilen). Zehn Wiki-Artikel neu geschrieben, alle `status: emerging`,
Quelle durchgehend eigene, ausformulierte ETH-Vorlesungsantworten 2012/2013
(Architekturtheorie III/IV, Institut gta) mit Primärzitaten gemeinfreier Autoren (Semper,
Bötticher, Loos, Sullivan, Alberti) und paraphrasiertem Sekundärkommentar (Moravánszky,
Tönnesmann u. a., urheberrechtlich geschützt, nicht im Wortlaut):

- [[tektonik-kernform-kunstform-bekleidung-boetticher-semper]]
- [[materialwahrheit-stoffwechseltheorie-semper-vier-elemente]]
- [[typus-modell-prototyp-trennschaerfe]]
- [[funktionsbegriff-fuenf-lesarten-sullivan-dreiteilung]]
- [[ornament-decorum-loos-semper-riegl]]
- [[ort-genius-loci-norberg-schulz-nicht-orte]]
- [[stil-styling-signatur-brand-abgrenzung]]
- [[materialitaet-haptisch-optisch-riegl-kunstwollen]]
- [[begriffskonkordanz-architekturtheorie-koolhaas-loos-rossi-venturi]]
- [[textanalyse-raster-19-punkte-fachtext-destillation]]

Fortschritt in `raw/inventar/archiv-fachwissen__02_Architekturtheorie.md` Abschnitt
«Destillat-Fortschritt» vermerkt (reine Ergänzung, `git diff --numstat` zeigt `33 0`).
Zwei P1-Positionen bleiben offen, beide aus technischen Gründen, nicht aus Beleglücke:
`Seiten aus Handbuch_Deplazes.pdf` (Bild-Scan ohne Textebene, textutil/pdftotext liefern
nichts) und `Theorie_Begriffe_I_Sammelmappe1.pdf` (Read-Tool meldet fehlendes
`pdftoppm`/poppler auf dieser Station). Kein Sperrlisten-Fund (Verträge, Adressen,
Lohn-/Gesundheitsdaten) in dieser Sektion. `KORPUS-QUEUE.md` nachgeführt.

## 2026-08-29 (Wissens-Chef Run 47) — vier Cross-KB-Kanten gesetzt, zwei Fehlbehauptungen «kein Destillat vorhanden» berichtigt

Erste Cross-KB-Pruefung nach dem 112-Artikel-Schub dieses Tages (Erst-Pruefung war Run 41, 24.08.2026).
Alle Eingriffe additiv, an Ankertexten statt an Zeilennummern (in der KB lief waehrend der Pruefung ein
Schreiblauf), jede Datei mit `git diff --numstat` gegengemessen.

- `wiki/fassaden-feuchteschutz-sia-180-...md` (+3/−3): fuehrte **zweimal** «da dort noch kein
  SIA-180-Destillat vorliegt». `wissen/normen/destillate/sia-180-2014.md` existiert seit dem 13.07.2026
  (`status: destilliert VOLLSTAENDIG`). Zeiger gesetzt, Ziffern-Umnummerierung 1999 → 2014 benannt
  (Kondensat 6.2.1.1-6.2.1.3, Raumluftfeuchte 6.2.1.4). **Operativ wichtigster Punkt:** die Praxisregel
  «fRsi 0,75 als Faustregel» ist der Stand 1999; nach SIA 180:2014 Ziff. 6.2.2.1 gilt der Standortwert
  nach Anhang F (unguenstigster CH-Wert 0,80/0,83) — die Faustregel liegt zu tief und ist jetzt markiert.
- `wiki/uw-wert-berechnung-...md` (+12/−1): dieselbe Fehlbehauptung fuer vier Normen zugleich (Ursache
  belegt: nur `normen/wiki/` gesehen, nicht `normen/destillate/` mit 462 Dateien — Fehlerfamilie Rule
  `wege-und-vollmachten` Ziff. 5). Schwerer wiegt die **Fassungs-Kante**: die Uf-Tabelle 1,8/2,2/2,8 ist
  in der fuehrenden KB `energie` (`destillate/enfk-fensterblatt.md`, `established`) seit dem 26.08.2026
  ausdruecklich als ⛔ ueberholt markiert (geltend 1,4/1,9/2,5/3,3, nur noch fuer aeltere Fenster); die
  Uli-Grenzwerte 1,3/1,6 sind fuer den heutigen Einzelbauteilnachweis zu lax (geltend 1,0/1,3). Der
  Artikel entstand **drei Tage nach** dieser Korrektur.
- `wiki/kostenkennwerte-schulanlage-leutschenbach.md` (+19/−1): «Umzuege **BKP 588**» — der Code existiert
  im BKP 2017 nicht (Gruppe 58 fuehrt nur 580/581/582/583/589, «Umzuege» kennt die Liste nirgends);
  «BKP 900» ist dort die Uebergangsposition der Gruppe 90 Moebel, nicht eine Sammelposition Ausstattung.
  Fehlerfamilie «271.10» (Rule `bkp-2017-referenz`). Dazu ein **Bezugsgroessen-Vorbehalt**: die Werte
  «CHF 547-623 je m³» rechnen nach **SIA 116**, das seit 2003 durch SIA 416:2003 ersetzt ist, waehrend
  `grobkosten` seinen Band auf **GV nach SIA 416** stellt. `BKP-2017-Liste.md` in `sources:` nachgetragen
  (beide Schwesterartikel fuehrten sie, dieser nicht).
- `wiki/ahb-planungsgrundlagen-richtlinie-...md` (+15/−1): der Artikel destilliert **Version 2.0/2005**
  einer Richtlinie, deren **Version 2.1/2008** seit dem 03.08.2026 in `energie` liegt. Kein Widerspruch,
  sondern eine dokumentierte Fassungsfolge (erneuerbare Energien 25 % → mind. 40 %); die KB `energie`
  fuehrt den Zielwert-Vergleich bereits tabellarisch. Der eigene Vorbehalt sagte «duerfte ueberholt sein»
  — der Nachfolgewert lag die ganze Zeit im Haus. Kante beidseitig gesetzt.
- `wiki/wettbewerbsverfahren-...md` (+7/−1): Zeiger auf `wissen/wettbewerbs-dna` (11 Teilnahme-Dossiers,
  42 externe Juryberichte) samt Arbeitsteilung Veranstalter-Verfahrensseite ↔ Juryurteile.
- `wiki/QUESTIONS.md` (+24/−0): Block 260829b mit #38 (Uebergabe an KB `twin`), #39 (Fuehrungsfrage
  Juryberichte), #40 (Kennwert-Grenze der KB gegen QUERBEZUEGE Z. 176).

**Nullbefund, ausdruecklich positiv:** der Run-41-Vorbehalt im Artikel `sia-102-2003-phasenanteile-...`
hat die Erweiterung um ein drittes Rechenwerk am selben Tag **unbeschaedigt ueberstanden** und ist
woertlich als «uebernommen aus Wissens-Chef Run 41» ausgewiesen.

**Gemessener Strukturbefund:** die KB verweist 25-mal nach aussen (17× `normen`, 3× `wettbewerbs-dna`,
2× `grobkosten`, 1× `entwurfs-referenzen`), und von sieben geprueften Ziel-KBs verwies vor diesem Lauf
**keine** zurueck (einzige Ausnahme: eine Datei in `projekt-lessons`). Vorgelegt als Entscheid.

## 2026-08-29 — Zweiter Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `03_Bauprozesse_I_II` (Lane FACHWISSEN, selber Tag, Fortsetzung)

Vorab Leutschenbach-Duplikatsprüfung gegen `wiki/INDEX.md` durchgeführt (Pflicht laut
`specs/archiv-fachwissen-spec.md`): mehrere P1-Positionen dieser Sektion sind identische
Dateien oder dasselbe Objekt (Schulanlage Leutschenbach) wie bereits in Korpus 3
destillierte Artikel und wurden nicht erneut destilliert, nur verlinkt.

Vier echte Neuzugänge destilliert, alle Primärquellen im Archiv volltextlich gelesen
(nicht nur die Inventar-Zusammenfassung):

- [[sia-102-2003-phasenanteile-zwei-rechenwerke]] **erweitert** um ein drittes,
  unabhängiges Rechenwerk (Objekt Eberle, Büro Christian Kerez, Honorarberechnung durch
  das Kantonale Hochbauamt vom 26.01.2010) mit vollständigem Teilphasen-Stunden- und
  Honorarapparat (Total CHF 483'600 exkl. MWST). Art.-7.5-Negativliste der Norm selbst
  bewusst nicht reproduziert (SIA-Urheberrecht).
- [[ebkp-h-2012-musterbeispiel-haus-im-forst-drei-genauigkeitsstufen]] — neu: CRB-
  Musterbeispiel auf drei Genauigkeitsstufen (A/B/C, CHF 1'200'200 / 1'194'800 /
  1'190'700), alle drei Primär-PDF volltextlich verifiziert.
- [[ebkp-h-2012-bezugsgroessen-kuerzel-tabelle]] — neu: vollständige eBKP-H-
  Bezugsgrössen-Kürzelliste (rund 70 Einträge), primär gelesen.
- [[terminplan-dauern-kennwerte-wohnungsbau-tabelle8-plus-benchmark-eberle]] — neu:
  Dauern-Kennwerttabelle Wohnungsbau (Institut für Baubetriebslehre Universität
  Stuttgart) plus realer EFH-Grobterminplan (Büro Christian Kerez, Projekt Eberle,
  19.03.2010) als Praxis-Gegenprobe.
- [[akutspital-pflegezentrum-umnutzung-referenzfall-oberdiessbach-2009]] — neu: belegter
  Referenzfall Umnutzung Akutspital→Pflegezentrum (Zweierzimmer-Problem, Kostenrahmen
  rund CHF 19 Mio/93 Pflegeplätze, Verfahrensmechanik ÖBG/ÖBV). Personennamen des
  Preisgerichts und der Experten bewusst nicht destilliert (Sperrliste).

Fortschritt und vollständige Begründung je P1-Position (destilliert / bereits in Korpus 3
vorhanden / Cross-KB-Fund / nicht destillierbar) in
`raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md` Abschnitt «Destillat-Fortschritt»,
reiner Append (`git diff --numstat` zeigt `106 0`). `wiki/INDEX.md` und `wiki/QUESTIONS.md`
nachgeführt (Fragen #33 Cross-KB-Fund Grobkostenmethodik → `wissen/grobkosten`, #34
SIA-451-Testfixture, #35 Chance für `wissen/normen` SIA-102:2003-Volltext, #36 VSS-
Parkierungsgeometrie offen). Kein Fund aus der Sperrliste (Verträge/Bewerbungen/Adressen/
Lohndaten) in den destillierten Positionen; die im Kurzbefund bereits dokumentierte private
E-Mail-Korrespondenz (`SIA102/Thalhofer/100201_Honorarberechnung.pdf`) wurde nicht erneut
angerührt. Norm-Originale (SIA 112/102/416/142/500, VKF, VSS) wurden gemäss Abgrenzung
nicht destilliert, nur als Norm-Original vermerkt. **Sektion `03_Bauprozesse_I_II` (Zeile
01, grösster P1-Einzelfund) damit ohne weiteren offenen eigenständigen P1-Artikel — P2
bleibt vollständig offen.**

## 2026-08-29 — Erster Destillat-Lauf Korpus `archiv-fachwissen`, Sektion `02_Denkmalpflege` (Lane FACHWISSEN, selber Tag, Fortsetzung)

Sieben Wiki-Artikel neu geschrieben, alle `status: emerging`, aus dem vollständigen
P1-Cluster der Sektion (8 Positionen, alle acht Quell-PDF direkt gelesen statt nur über
die Inventar-Zusammenfassung):
[[erhaltungswert-bewertung-sia-merkblatt-2017]],
[[denkmalpflege-begriffssystematik-charta-von-venedig]],
[[trockenmauer-devisierung-svtsm-richtlinie]],
[[naturstein-oberflaechenbearbeitung-portmann-merkblatt]],
[[kalk-oelanstriche-rezepturen-glaser]],
[[denkmalpflegerische-baudokumentation-gliederung-haus-jans]],
[[umbau-statt-neubau-kriterienkatalog-hassler]]. Fortschritt in
`raw/inventar/archiv-fachwissen__02_Denkmalpflege.md` Abschnitt «Destillat-Fortschritt»,
reiner Append (`git diff --numstat` zeigt `-0`). `wiki/INDEX.md` und `wiki/QUESTIONS.md`
nachgeführt (Fragen #31 SIA-2017-Geltungsstand, #32 fünf Grundsätze der Reparatur/P2).

Urheberrechts- und Quellenvorbehalte eingehalten: SIA-2017-Kriterien und Charta-von-
Venedig-Artikel nur sinngemäss mit Fundstelle wiedergegeben, nie im Wortlaut kopiert; die
Charta-Wiedergabe stammt aus einer studentischen Zusammenfassung (Petzet/Mader) und ist vor
Verwendung in einem ausgehenden Dokument am amtlichen ICOMOS-Text zu verifizieren. Zwei
Artikel stützen sich je auf zwei Texte derselben Autorin (Uta Hassler) bzw. auf eine
Parallelfassung derselben Rezeptur (Glaser/rw-Zusammenfassung) — beide Fälle sind im
jeweiligen Artikel als **nicht unabhängige** Zweitquelle ausgewiesen. Keine Preisangabe ohne
Datumsstempel übernommen (undatierte Pigmentpreise in Euro bewusst ausgeschlossen). Kein
Fund aus der Sperrliste (Verträge/Bewerbungen/Adressen/Lohndaten) — Sektion ist ein reiner
ETH-Studienapparat plus eine private Studienarbeit von Raphael Jans.

**Damit ist Sektion `02_Denkmalpflege` (alle 8 P1-Positionen) vollständig destilliert.**
P2 bleibt offen. Nächster Lauf gemäss Spec-Plan: `03_Bauprozesse_I_II` — zwingend zuerst
die Leutschenbach-Duplikatsprüfung gegen `wiki/INDEX.md` Abschnitt «Artikelbestand»
(Korpus 3, `18_Projektkostenplanung`, neun bereits bestehende Artikel).

## 2026-08-29 — Spec-Stufe Korpus `archiv-fachwissen` (Lane FACHWISSEN, selber Tag, Fortsetzung)

`skills/wissens-destillat/specs/archiv-fachwissen-spec.md` neu geschrieben (Vorbild
`buero-referenzen-spec.md`), da Korpus `buero-referenzen` (Korpus 3) in diesem Lauf alle
P1-Positionen fertiggestellt hat und der Auftrag danach zu Korpus 4 übergeht. Kein
Wiki-Artikel in diesem Schritt, kein Inventar verändert — reine Spec-Stufe gemäss
Queue-Regel («kein Destillat ohne Spec»). Kernentscheide der Spec: fünf Ziel-Artikel-Typen
(Denkmalpflege, Kostenermittlungs-/Normmethodik, Entwurfs-/Städtebau-Begriffsapparat,
Tragwerk/Konstruktion, Referenz/Fundstelle); scharfe Norm-Original-Abgrenzung (Korpus
enthält vollständige SIA-/VKF-/VSS-PDFs, die nie destilliert, nur methodisch referenziert
werden); Leutschenbach-Duplikatsprüfung gegen Korpus 3 als Pflichtschritt vor jedem neuen
Artikel aus `03_Bauprozesse_I_II`; Privatunterlagen-Vorbehalt für vier noch nicht
inventarisierte bzw. reisejournalartige Sektionen (`04_Politik`, `05_Kultur_Gesellschaft_Stil`,
`06_Reisen`, `07_Religion`); erster empfohlener Destillat-Lauf `02_Denkmalpflege` (vier
Fachbausteine, kein Duplikatsrisiko). Bei dieser Gelegenheit auffällig gewordene, veraltete
Kennzahl in `KORPUS-QUEUE.md` (Stand 23.08.2026 nannte 4 von 23 Sektionen, tatsächlich
liegen 20 Inventardateien vor) korrigiert und die Zeile entsprechend nachgeführt.

## 2026-08-29 — Sechster bis neunter Destillat-Lauf: alle P1-Positionen des Korpus `buero-referenzen` fertiggestellt (Lane FACHWISSEN, selber Tag, Fortsetzung)

Abgleich von `wiki/INDEX.md` «Sektionen nach Ertrag» gegen `raw/inventar/` (das
Register war seit 23.08.2026 veraltet, Phase 0 war seither auf alle 23 Sektionen
des Korpus gewachsen): fünf weitere Sektionen trugen unbearbeitete P1-Positionen.
Elf Wiki-Artikel neu geschrieben, alle `status: emerging`:

- `12_Masse`: `sanitaerapparate-masstabellen-montagehoehen.md`,
  `nasszellen-achsabstaende-komfortstufen-bedarfszahlen.md` (Apparate-Masstabellen,
  Achs-/Wandabstände MD/MI/MK, hindernisfreie Sanitärräume mit SIA-500-Vorbehalt)
- `21_Rhino`: `rhino-planausgabe-kette-make2d-layout-druck.md`,
  `rhino-freiform-stetigkeit-flowalongsrf.md` (McNeel Training Manuals, Urheberrecht
  beachtet: sinngemäss, nie Wortlaut)
- `08_Karten_Plaene_Weltweit` + `08_Karten_Plaene_Zuerich`:
  `orthofoto-nutzungsbestimmungen-stadt-zuerich-zwei-fassungen.md` — ein Artikel für
  dieselbe Dokumentfamilie in zwei Fassungen (2001/2002), die in beiden Sektionen je
  eine eigene P1-Position war
- `09_Konstruktion`: `flachdachaufbauten-vier-typen-textbausteine.md`,
  `werkplan-textapparat-abkuerzungen-schalungsplan.md` (Drittpläne, Herstellerdaten
  Stand 2007/2008 als Vorbehalt markiert)
- `22_Terminplanung`: `terminplan-phasenkette-oeffentliche-bauherrschaft-leutschenbach.md`,
  `grobterminplan-gewerkefolge-elementbau-leutschenbach.md`,
  `feinterminplan-excel-vorlage-endspurt-baueingabe.md` (Schulanlage Leutschenbach,
  öffentlich ausgeschrieben, sowie eine büroeigene Excel-Vorlage von Raphael Jans)
- `26_Zeichendateien_Vorlagen`: `sanitaerapparate-vectorworks-montagehoehen-referenzblatt.md`

Fortschritt je Sektion im jeweiligen `raw/inventar/buero-referenzen__*.md` Abschnitt
«Destillat-Fortschritt», reiner Append (`git diff --numstat` zeigt durchgehend `-0`,
teils bereits durch den `nas-selfcommit`-Autocommit der Station bestätigt).
`wiki/INDEX.md` nachgeführt.

**Geprüft: alle übrigen Sektionen ohne eigenen Fortschritts-Abschnitt tragen P1 = 0**
(elf Sektionen einzeln per Zählungs-/Summenzeile verifiziert) — nichts offen dort.

**Damit sind alle P1-Positionen des Korpus `buero-referenzen` über sämtliche 23
inventarisierten Sektionen destilliert.** P2 bleibt in jeder Sektion offen; der
Korpus gilt daher gemäss `KORPUS-QUEUE.md` (P1 **und** P2) noch nicht als
«erledigt», aber der dringlichere Teil ist vollständig. `KORPUS-QUEUE.md`
entsprechend nachgeführt. Nächster Schritt gemäss Auftrag Raphael 29.08.2026:
Korpus 4 `archiv-fachwissen`.

## 2026-08-29 — Fünfter Destillat-Lauf Korpus `buero-referenzen`, Sektion `20_Rendering` (Lane FACHWISSEN, selber Tag, mit Nachtrag vollständig erledigt)

Vier Wiki-Artikel neu geschrieben, alle `status: emerging`, aus der ETH-Theoriesektion
(Ordnername irreführend — überwiegend Vorlesungs-/Reader-Material, keine
Rendering-Bibliothek): `entwurfsbegriffe-struktur-huelle-architektur3-eberle.md`,
`strategisches-entwerfen-systematik-etappenprojekte.md`,
`standortanalyse-methodik-turbinenplatz.md`,
`erlaeuterungsbericht-gattungsvorlage-vier-kapitel-diplom2010.md`. Fortschritt in
`raw/inventar/buero-referenzen__20_Rendering.md` Abschnitt «Destillat-Fortschritt»,
reiner Append. `wiki/INDEX.md` nachgeführt.

**Delta-Ehrlichkeit (Zwischenstand dieses Teillaufs, siehe Nachtrag unten für den
Abschluss):** zunächst waren von den neun Architektur-III-Handouts (eine einzelne
P1-Triagezeile) erst zwei Themen (Struktur, Hülle) ausdestilliert; dieser
Zwischenstand wurde bewusst nicht kosmetisch als «erledigt» verbucht. Der
Nachtrag desselben Laufs (unten) schliesst die Sektion vollständig ab.
Urheberrechtsvorbehalt beachtet: universitäres
Lehrmaterial nur sinngemäss mit Fundstelle wiedergegeben, nie im Wortlaut. Bei der
Diplomarbeits-Quelle (Erläuterungsbericht HS 2010) ausschliesslich die Gattungsstruktur
destilliert, keine Autoren-/Studierendennamen übernommen (Spec-Abgrenzung
«Studien-/Diplomarbeiten Dritter sind kein eigenständiger Artikelstoff» eingehalten:
nur das konkrete, verifizierbare Formdetail destilliert, die Arbeit selbst nicht
nacherzählt). Datenschutz-Befund der Inventardatei (Fremdrechnung eines
Render-Dienstleisters, bereits als `X` geführt) nicht angefasst.

**Nachtrag selber Tag, Fortsetzung desselben Laufs:** die restlichen sieben
Architektur-III-Handouts einzeln direkt im Archiv gelesen (nicht nur über die
Inventar-Zusammenfassung). Drei tragen ausformulierten Fliesstext und wurden
destilliert: `lebensdauer-hierarchie-nachhaltigkeit-architektur3.md` (vl1,
fünfstufige Lebensdauer-Hierarchie als Nachhaltigkeits-Entscheidungsinstrument),
`typus-und-charakter-begriffsapparat-architektur3.md` (vl5,
Materialisierungs-Vokabular als Charakterträger),
`programmflexibilitaet-nachhaltigkeit-raumprogramm-architektur3.md` (vl7,
Funktionsbegriff-Kritik und drei Flexibilitätsstrategien). Vier Handouts (vl2, vl4,
vl8, vl9) erwiesen sich als reine Bildlegenden-Arbeitsblätter ohne extrahierbaren
Fliesstext und wurden bewusst nicht destilliert — im Inventar-Nachtrag begründet,
kein weiterer Prüfbedarf. `wiki/INDEX.md` entsprechend korrigiert.

**Damit ist Sektion `20_Rendering` jetzt vollständig destilliert** (7 statt 4
Artikel) und die im Spec-Plan vorgesehene Sektionsfolge vollständig durchlaufen.
Nächster Lauf: `wiki/INDEX.md` neu gegen das Inventar abgleichen — der Korpus
`buero-referenzen` ist noch nicht «erledigt» (P1-einstellige Sektionen und
sämtliches P2 der fünf bearbeiteten Sektionen bleiben offen).

## 2026-08-29 — Vierter Destillat-Lauf Korpus `buero-referenzen`, Sektion `25_Wettbewerb` (Lane FACHWISSEN, selber Tag)

Sechs Wiki-Artikel neu geschrieben, alle `status: emerging`, aus dem P1-Cluster zweier
öffentlicher Wettbewerbs-/Studienauftragsprogramme 2009 (Zeughaus Ebnet Herisau,
Naturmuseum St.Gallen):
`wettbewerbsverfahren-programmstruktur-vorpruefung-zuschlagskriterien.md`,
`wettbewerbs-teilnahmebedingungen-ausstand-abgabe-urheberrecht.md`,
`honorarmechanik-wettbewerb-oeffentliche-bauherrschaft.md`,
`zeittarif-mechanik-tarifblatt-stgallen-2009.md`,
`raumprogramm-spaltenlogik-sia416-naturmuseum.md`,
`planervertrag-klauseln-oeffentliche-bauherrschaft.md`. Alle 5 P1-Positionen der
Sektion destilliert (Fortschritt in `raw/inventar/buero-referenzen__25_Wettbewerb.md`
Abschnitt «Destillat-Fortschritt», reiner Append). `wiki/INDEX.md` nachgeführt.
**Anonymisierungs-Zusatzprüfung der Spec durchgeführt** (dieser Cluster war laut Spec
zusammen mit `18_Projektkostenplanung` als sensibel markiert): kein Fund einer
Unternehmer-/Bieter-Betrag-Zuordnung, da es sich um Veranstalterprogramme handelt,
nicht um eingegangene Offerten — keine Schwärzung nötig, im Report festgehalten statt
stillschweigend übersprungen. Alle Normverweise (SIA 142:1998, SIA 102:2001/2003,
SIA 112:2003, SIA 416:2003) ausdrücklich als veraltet markiert, nicht als geltendes
Recht referenziert. Kein Fund aus der Sperrliste; die beiden zweckgebundenen DXF
(Löschpflicht nach Projektabschluss laut Datenbegleitdokument) wurden nicht
angefasst. P2 bleibt offen. Nächster Lauf gemäss Spec-Plan: `20_Rendering` — danach
ist die P1-Liste des aktuellen Spec-Plans für `buero-referenzen` vollständig.

## 2026-08-29 — Dritter Destillat-Lauf Korpus `buero-referenzen`, Sektion `17_Projektbeschriebe` (Lane FACHWISSEN, selber Tag)

Fünf Wiki-Artikel neu geschrieben, alle `status: emerging`, aus dem P1-Cluster
Schulanlage Leutschenbach: `projektbeschrieb-gattungsvorlage-fachdisziplinen.md`,
`tragwerksbeschrieb-leutschenbach-kennwerte.md`,
`lueftungsvariantenentscheid-praxisfall-leutschenbach.md`,
`fassadenkennwerte-leutschenbach-glasfassade-2004.md`,
`sanitaer-kurzbeschrieb-vorlage-fettabscheider-schwelle.md`. Alle 7 P1-Positionen der
Sektion destilliert (Fortschritt in
`raw/inventar/buero-referenzen__17_Projektbeschriebe.md` Abschnitt
«Destillat-Fortschritt», reiner Append). `wiki/INDEX.md` nachgeführt. P2 bleibt offen.
Firmen-/Planernennung (Joseph Schwartz, Waldhauser Haustechnik, Metall-Bau-Technik u.a.)
zulässig, da abgeschlossenes, öffentlich ausgeschriebenes und publiziertes Bauvorhaben
(SIA-Dokumentation D 0219) — kein Unternehmer-/Bieter-Betrag-Bezug wie im
Projektkostenplanungs-Cluster, daher greift die Anonymisierungs-Zusatzregel der Spec
hier nicht. BKP-Altnummerierung («BKP 250 350» im Sanitärbeschrieb 2003) im Artikel
`sanitaer-kurzbeschrieb-vorlage-fettabscheider-schwelle.md` ausdrücklich als
Sperrvermerk markiert, nicht als BKP-2017-Beleg übernommen. Kein Fund aus der
Sperrliste. Nächster Lauf gemäss Spec-Plan: `25_Wettbewerb`.

## 2026-08-29 — Zweiter Destillat-Lauf Korpus `buero-referenzen`, Sektion `10_Modellbauen` (Lane FACHWISSEN)

Vier Wiki-Artikel neu geschrieben, alle `status: emerging`, aus dem P1-Cluster
Betonmodellbau-Rezepturen (Umfeld Christian Kerez) plus Werkstoffliste:
`modellbeton-rezeptur-mischungsverhaeltnisse.md`, `modellbeton-fehlerkatalog-schalung.md`,
`betonschalung-grundlagen-richner.md`, `werkstoffliste-modellbau-vorlage.md`. Alle 12
P1-Positionen der Sektion (6 Fundstellen-Gruppen) destilliert, ein Artikel je Sache statt
je Datei (Fortschritt in `raw/inventar/buero-referenzen__10_Modellbauen.md` Abschnitt
«Destillat-Fortschritt», reiner Append, `git diff --numstat` zeigt `-0`). `wiki/INDEX.md`
Abschnitt «Artikelbestand» nachgeführt. P2 der Sektion bleibt offen. Kein Fund aus der
Sperrliste (Sektion enthält keine Verträge/Bewerbungen/Adressen/Lohndaten); die
personenbezogene Kartonliste 2007 war bereits in Phase 0 korrekt als `X` triagiert und
wurde nicht in ein Erzeugnis übernommen. Nächster Lauf gemäss Spec-Plan:
`17_Projektbeschriebe`.

## 2026-08-29 — Erster Destillat-Lauf Korpus `buero-referenzen`, Sektion `18_Projektkostenplanung` (Lane FACHWISSEN)

Sieben Wiki-Artikel neu geschrieben, alle `status: emerging`, aus dem P1-Cluster
Schulanlage Leutschenbach: `kostenermittlungskreislauf-genauigkeit-je-phase.md`,
`sia-102-2003-phasenanteile-zwei-rechenwerke.md`, `kostenkennwerte-schulanlage-leutschenbach.md`,
`honorarberechtigte-bausumme-anrechenbarkeit.md`,
`kostenkontrolle-spaltenmodell-oeffentliche-bauherrschaft.md`, `baubeschrieb-als-kostentraeger.md`,
`bemusterungsentscheid-kostenueberschreitung-praxisfall.md`. 14 von 16 P1-Positionen der
Sektion destilliert (Fortschritt in `raw/inventar/buero-referenzen__18_Projektkostenplanung.md`
Abschnitt «Destillat-Fortschritt», reiner Append). Zwei P1-Positionen bleiben offen
(KV-Detailformvorbild, belegte Kostenschätzung Vorprojekt) — nächster Lauf beginnt dort.

**Nachtrag selber Tag, Fortsetzung desselben Laufs:** die zwei offenen P1-Positionen
nachgeliefert — `kv-detailausdruck-gliederungsstufen.md` (KV-Detailausdruck, fünf parallele
Verdichtungsspalten, Objektteilung Schulhaus/Kindergarten) und
`kostenschaetzung-vorprojekt-schaetzgrundlage-ausweisen.md` (Praxisregel: Schätzgrundlage
je Kostengruppe als eigenes Feld ausweisen). Damit sind **alle 16 P1-Positionen der
Sektion `18_Projektkostenplanung` destilliert, neun Wiki-Artikel insgesamt.** Sektion für
P1 abgeschlossen; P2-Positionen (6) bleiben für einen späteren Lauf. `wiki/INDEX.md`
nachgeführt.

Anonymisierungsregel angewendet: `bemusterungsentscheid-kostenueberschreitung-praxisfall.md`
nennt keine Unternehmerfirma und keine Gegenpartei-Betrag-Zuordnung, nur die
Überschreitungs- und Aufpreisprozente/-kennwerte. BKP-Codes gegen
`references/bkp-2017/BKP-2017-Liste.md` geprüft: `honorarberechtigte-bausumme-anrechenbarkeit.md`
und `baubeschrieb-als-kostentraeger.md` warnen explizit vor den historischen Phantom-Codes
019/071/80–81 (Erweiterung von `wiki/QUESTIONS.md` #3b um den neuen Befund 80–81, keine
Übernahme als aktuelle BKP-2017-Referenz). Cross-KB-Abgleich gegen
`wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` und
`wissen/grobkosten/wiki/kennwerte.md` durchgeführt: kein Widerspruch, die Leutschenbach-
Kennwerte ergänzen beide Bestände, ohne sie zu ersetzen. `wiki/INDEX.md` (Artikelbestand,
Sektion 02) nachgeführt.

## 2026-08-29 — Spec-Lauf Korpus `buero-referenzen` (Lane FACHWISSEN)

`skills/wissens-destillat/specs/buero-referenzen-spec.md` neu geschrieben (Vorbild
`bauprodukte-spec.md`/`buero-projekte-spec.md`), da Phase 0 fuer diesen Korpus abgeschlossen war,
aber noch keine Spec bestand (Queue-Regel: kein Destillat ohne Spec). Kein Wiki-Artikel in diesem
Lauf, kein Inventar veraendert — reine Spec-Stufe, Lauf endet danach gemaess SKILL.md Schritt 2.
Kernentscheide der Spec: fuenf Ziel-Artikel-Typen (Kennwert/Kostenermittlung,
Konstruktionsdetail, Verfahren/Rezeptur, Wettbewerbsmechanik, Honorar/Prozess); Anonymisierungs-
Zusatzregel fuer `18_Projektkostenplanung`/`25_Wettbewerb` (nie Unternehmer-Namen oder
Gegenpartei-Betrag im Artikeltext); Erledigt-Markierung als Append-Abschnitt
`## Destillat-Fortschritt` am Dateiende der Inventardateien (keine In-Place-Aenderung der
Triage-Tabelle, damit `git diff --numstat` `-0` zeigt); Sperrliste `23_Vertraege`/`16_Portfolios`/
`01_Adressen` aus `CLAUDE.md` referenziert, nicht dupliziert. `KORPUS-QUEUE.md` nachgefuehrt.

## 2026-08-24 — Wissens-Chef Run 41 (Cross-KB, Erst-Pruefung dieser KB)

Erste Cross-KB-Pruefung, einen Tag nach dem Anlegen. Drei additive Nachtraege in
`wiki/QUESTIONS.md`, kein Eingriff in `raw/`:
- **#4 (SIA-102-Phasenanteile) zur Haelfte beantwortet** — `wissen/normen/destillate/sia-102-2014.md`
  (`established`, S. 1-58 komplett gelesen 14.07.2026), Ziff. 7.7 fuehrt genau diese sieben
  Anteile. Offen bleibt nur «unveraendert gegenueber 2003» (`sia-102-2003` ist `speculative`).
  Mit drei Vorbehalten: Fassungsstand 2020 kennt die Methode nicht mehr · **nicht** auf
  `sia-102-2020.md` verweisen (belegt die Abwesenheit) · **nicht** auf
  `skills/honorarberechnung-sia102` verweisen (fuehrt eine bueroeigene Konvention mit *anderen* Zahlen).
- **#6 (Kennzahlenraster Leutschenbach) neu geschnitten** — die Schulbau-Kennwert-Achse existiert
  bereits: `wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` (`established`,
  25 Quellen) und `wissen/entwurfs-referenzen/.../schule-volksschule-ch.json`. Beizusteuern ist
  die **Methode**, nicht der Kennwert; fuer CHF/m³ bleibt `grobkosten` fuehrend.
- **#3b neu — Phantom-BKP-Codes.** Die BGS-Honorarblatt-Tabelle (20.04.2005), in beiden
  Inventaren als «unmittelbar uebertragbar» eingeleitet, nennt «019» fuer Abbruch (im BKP 2017
  «Uebriges» unter 01 Grundstueckserwerb; Abbruch ist **112.1**) und «**071**», das es im
  BKP 2017 gar nicht gibt. Jeder Code ist vor Uebernahme sachbezogen zu mappen.

**Ausserhalb dieser KB:** die KB war in keinem Hub-Register eingetragen — nur in der
`KORPUS-QUEUE.md` des Skills `wissens-destillat`. In `CLAUDE.md` nachgetragen, Fuehrungszeile in
`wissen/koordination/QUERBEZUEGE.md` gesetzt (fuehrt Inventare; **keine** Kennwerte, BKP-Codes
oder Norm-Fundstellen). Bericht: `wissen/koordination/outputs/2026-08-24_wissens-chef-run41.md`.
## 2026-08-23
- KB angelegt (Vollgas-Lauf). Struktur raw/inventar, wiki, outputs.
- Inventar Phase 0 abgeschlossen für 16 Sektionen: 12 aus `buero-referenzen`
  (`/Volumes/daten/04_Buero/10_Referenzenbibliothek`) und 4 aus `archiv-fachwissen`
  (`/Volumes/daten/02_Architektur_Archiv`). 8'604 Dateien gesichtet, Triage P1 113 / P2 631 /
  P3 4'428 / X 3'432. Belegbasis: 16 Dateien unter `raw/inventar/`, je Sektion eine.
- `wiki/INDEX.md` neu geschrieben (war Stub): Gesamtüberblick beider Korpora, Kennzahlen je
  Korpus, 16 Sektionen nach P1-Ertrag geordnet mit je einem Satz und Verweis auf die
  Inventardatei, dazu fünf Querbefunde über die Sektionsgrenzen und die Sperren
  (BKP-Altausgaben, Norm-Ausgabenstand, Urheberrecht, Personendaten, Zugangsdaten,
  Zweckbindung DXF).
- `outputs/2026-08-23_korpus-erschliessung.md` angelegt: Methode des Laufs, Kennzahlen mit drei
  Lesarten, die zehn ertragreichsten Sektionen mit Begründung, die fünf Sektionen ohne Ertrag
  und eine begründete Reihenfolge der nächsten zehn Destillate samt Auflagen je Position.
- `wiki/QUESTIONS.md` um den Block 260823 ergänzt, 26 offene Punkte in vier Gruppen
  (Steuerung/Entscheid Raphael, Beleglücken, Rechte und Personendaten, technisch offen und
  Beschaffung). Kernpunkte: 39 der 55 Sektionen beider Korpora sind nicht inventarisiert; es
  fehlt ein belegter Indexpfad für sämtliche Kostenkennwerte; die Fundstellen zu
  Ruosch/Brandenberger, zur Konstruktionslehre Hochbau und zur Neufert-Ausgabe sind
  unvollständig.
- `skills/wissens-destillat/KORPUS-QUEUE.md` nachgeführt: Korpus 3 und 4 stehen nicht mehr auf
  «wartet», sondern auf «Inventar Phase 0 abgeschlossen 23.08.2026» mit den Kennzahlen.
- Noch **kein** Wiki-Artikel geschrieben, keine Datei auf dem NAS bewegt, kein BKP-Code
  bestimmt, keine Norm-Ausgabe auf Gültigkeit geprüft. Die Quellordner wurden ausschliesslich
  lesend angefasst.
