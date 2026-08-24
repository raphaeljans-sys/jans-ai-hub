# CHANGELOG — Wissensbasis Baurecht

Jede Änderung des Bibliothekars, datiert (JJJJ-MM-TT), **neueste zuoberst**.
Im Zweifel, was geändert wurde: dieses CHANGELOG ist die Wahrheit.

## 2026-08-24 — Buch-Run 131: Modell-D-Wortlautabgleich [[grundlagen-planungs-baurecht]] — 10/10 Zitate CONFIRMED, echter Inhaltsfund statt Fehler (Art. 26/27 BV + Art. 1–10 ZGB standen seit Erstellung als Quelle im Frontmatter, nie im Fliesstext eingebaut)
- ANLASS: Reglemente-Queue T1-T9 weiterhin vollständig abgeschlossen (Run 87, bestätigt Run 130).
  Als Fortsetzung der Modell-D-Re-Verifikationskette (Runs 90-130) nannte Run 130 zwei Kandidaten
  nach `last_updated`: [[geschosse-und-kniestock]] (2026-07-27, bewusst zurückgestellt — drei
  offene `speculative`-Auslegungsfragen ohne Praxis, kein reiner Beleg-Nachvollzug) und
  [[grundlagen-planungs-baurecht]] (2026-08-03, zweitältester Artikel) — Letzteren gewählt. Kein
  paralleler Konkurrenzlauf zum Zeitpunkt dieses Laufs aktiv (`ps aux` geprüft).
- GEPRÜFT: Art. 5/8/9/26/27/36/75 BV frisch gegen Fedlex (ELI `1999/404`, Konsolidierung
  1.1.2024 — 20260101/20250101/20220101/20190101 lieferten nur die 9'148-Byte-App-Hülle, erst
  20240101/20210101 lieferten echten Volltext) — **7/7 CONFIRMED wortgleich**. Art. 2/3/8 ZGB
  gegen Fedlex (ELI `24/233_245_233`, Stand 1.1.2026) — **3/3 CONFIRMED wortgleich**. §§ 220/321/
  328 PBG gegen `raw/260607_amtlich_zh_pbg.md` (Nachtrag 133) — **CONFIRMED**; laut
  `raw/260824_amtlich_zh_pbg-nachtrag134-aenderungen.md` (Buch-Run 122) ändert Nachtrag 134
  gegenüber 133 ausschliesslich § 221 PBG und eine Übergangsbestimmung, beide hier nicht
  betroffen. **0 Fehler gefunden** — anders als in Run 71 (drei echte Fehler) diesmal eine reine
  Bestätigungsrunde.
- **Echter Inhaltsfund statt Fehlerkorrektur:** `Art. 26 BV`, `Art. 27 BV` und `Art. 1–10 ZGB`
  standen seit Artikel-Erstellung (2026-06-30) im Frontmatter `sources`, wurden aber im
  Fliesstext nie eingebaut — grep-geprüft, 0 Treffer. Der Buch-Destillat
  (`buecher/band-1/01-grundlagen.md`, Kap. 1.4.5/1.4.6, S. 97 f.) trug den fehlenden Inhalt die
  ganze Zeit bereits fertig ausformuliert: Eigentumsgarantie (Art. 26 BV) und Wirtschaftsfreiheit
  (Art. 27 BV) als Quelle des behördlichen Ermessensspielraums bei unbestimmten Begriffen
  (Ästhetik, § 238 Abs. 1 PBG); die ZGB-Einleitungsartikel (Treu und Glauben Art. 2, guter Glaube
  Art. 3, Beweislast Art. 8, dazu nulla-poena-sine-lege Art. 7 Ziff. 1 EMRK/§ 1 StGB) als
  eigenständige Grundsatzgruppe neben den Verfassungsgrundsätzen. Nebenbefund: auch `Art. 8 BV`
  (Rechtsgleichheit) war im Fliesstext bereits verwendet, fehlte aber umgekehrt in den
  `sources` — beide Richtungen jetzt synchronisiert.
- **Nicht amtlich verifizierbar:** Art. 7 Ziff. 1 EMRK — Fedlex liefert für SR 0.101 weder über
  `www.` noch über `data.`-Subdomain einen Volltext (nur App-Hülle, alle getesteten
  Konsolidierungsdaten). Beleg bleibt der Buch-Wortlaut, offen vermerkt in `wiki/QUESTIONS.md`,
  nicht als geprüft ausgegeben (Rule `identifikatoren-verifizieren`/`nichts raten`).
- NEU `raw/260824_amtlich_ch_bv-art5-8-9-26-27-36-75.md` (7 BV-Artikel, Fedlex-Volltext +
  Verifikationsbefund).
- GEÄNDERT `wiki/grundlagen-planungs-baurecht.md` (§ 238-Satz um Art. 26/27 BV ergänzt, neue
  Sektion «Weitere Grundsätze» zu Art. 2/3/8 ZGB + Art. 7 Ziff. 1 EMRK/§ 1 StGB, Frontmatter
  `last_updated`/`verifiziert`/`sources` nachgeführt), `raw/_INGESTED.md` (neue Zeile),
  `wiki/QUESTIONS.md` (neuer offener Punkt EMRK-Fedlex-Zugriff),
  `training/KORPUS-QUEUE-thalwil-reglemente.md` (Run-131-Eintrag nach etabliertem Muster).
- `git diff --numstat` nach jedem Schreibvorgang geprüft: durchgehend additiv, keine
  unerwartete Löschung (`grundlagen-planungs-baurecht.md` 35/4 — die 4 Löschungen sind die
  ersetzten Frontmatter-/Satzstellen selbst, keine fremde Löschung; `_INGESTED.md` 1/0;
  `QUESTIONS.md` 14/0; `KORPUS-QUEUE-...` 21/0; neue Raw-Datei ungetrackt/neu).
- REPORT `outputs/2026-08-24_buch-run131.md`.
- STATUS Reglemente-Queue: weiterhin vollständig abgeschlossen (T1-T9). Nächster Modell-D-
  Kandidat bleibt [[geschosse-und-kniestock]] (fachlich zurückgestellt); sonst kein offener
  Kandidat mehr in dieser KB ausser den drei Datenbank-bedingt unverifizierbaren Zitaten
  (VB 94/0016, VB.2003.00051, RB 1992 Nr. 77), dem Baulinien-Wachposten und dem neuen
  EMRK-Fedlex-Zugriffsproblem; sonst regulärer `wissenscheck`-Turnus.

## 2026-08-24 — Buch-Run 130: needs-verification «Unterniveaubauten neu bei der Überbauungsziffer angerechnet?» (Buch-Run 55) geschlossen — amtlicher IVHB-Leitfaden der Baudirektion Kt. ZH bestätigt die Buch-Aussage
- ANLASS: Buch-Run 129 nannte als verbleibenden Kandidaten die Modell-D-Stichprobe an
  [[ausnuetzungsuebertragung]]/[[nutzungsziffern]]. Diese wurden bereits am 23.08.2026 (Run 92)
  bzw. am 23.08.2026 (Run 94) vollständig volltextgeprüft; einzig eine seit Buch-Run 55
  (25.07.2026) offene `needs-verification`-Flagge in [[nutzungsziffern]] war noch unerledigt: ob
  Unterniveaubauten unter dem geltenden § 256 PBG neu zur Überbauungsziffer (ÜZ) zählen, wie es
  das Buch (S. 990 f.) behauptet — am reinen PBG-Wortlaut (nur 2 Absätze) liess sich das bisher
  nicht bestätigen.
- **Zwei parallele Läufe zum Zeitpunkt dieses Laufs aktiv** (`mschub714`, `mschub718`, identischer
  Prompt, laut `ps`/`git status` mitten in einem eigenen, inzwischen committeten Edit an
  `wiki/baureife-und-erschliessung.md`) — bewusst ein anderes Thema gewählt, um keine
  Wiki-Kollision zu riskieren (gleiches Vorgehen wie Buch-Run 129).
- GEPRÜFT: § 256 PBG Hauptteil (geltend) vs. Anhang (alt) wörtlich gegenübergestellt
  (`raw/260607_amtlich_zh_pbg.md`, Z. 2704-2706 Hauptteil / Z. 4300-4302 Anhang) — die Anhang-
  Fassung verlangt explizit die «grösste **oberirdische** Gebäudeumfassung», der geltende
  Hauptteil nur noch «die Fläche innerhalb der projizierten Fassadenlinie» (kein
  Oberirdisch-Vorbehalt mehr im Gesetzeswortlaut selbst). Da der reine Wortlaut damit keine
  abschliessende Antwort gibt, amtliche Vollzugshilfe beigezogen: **Leitfaden der Baudirektion
  Kanton Zürich «Harmonisierung der Baubegriffe» (1.3.2017, Generalsekretariat Stab Recht)**,
  per WebSearch lokalisiert (zh.ch) und per WebFetch/PyMuPDF ausgewertet (`pdftotext` auf dieser
  Station nicht installiert, wie in den meisten vorangehenden Läufen). **IVHB Ziff. 8.4 (§ 256
  PBG, S. 42) bestätigt wörtlich:** «Im Gegensatz zur bisherigen Regelung sind neu auch
  Unterniveaubauten anzurechnen» und «Auch Kleinbauten, Anbauten und Unterniveaubauten zählen
  zur anrechenbaren Gebäudefläche.» **Unabhängig gegenbestätigt** in Ziff. 8.5 (§ 257 PBG
  Grünflächenziffer, S. 44): eine Unterniveaubaute kann gleichzeitig zur ÜZ zählen und als
  Grünfläche gelten. Als Erklärung, warum der PBG-Wortlaut selbst offenbleibt: der Leitfaden
  stellt zu Ziff. 3.1 (§ 6 ABV, Fassadenflucht, S. 13) klar, dass der Begriff Fassadenflucht auf
  Unterniveaubauten «nicht direkt anwendbar» ist — für sie gilt nur «sinngemäss» dieselbe Logik;
  diese Analogie steht ausschliesslich im Leitfaden, nicht im Gesetzestext. **Ergebnis:
  BESTÄTIGT, kein Buchkommentar-Fehler.**
- NEU `raw/260824_amtlich_zh_ivhb-leitfaden-baudirektion.md` (Auszug: Unterirdische Bauten,
  Unterniveaubauten, Fassadenflucht, projizierte Fassadenlinie, Untergeschosse, Überbauungsziffer,
  Grünflächenziffer, Wintergärten/§ 11 ABV — 7 der insgesamt 49 Seiten, Provenienz-Frontmatter mit
  Bezugsdatum/-methode).
- GEÄNDERT `wiki/nutzungsziffern.md` (neuer `verifiziert`-Eintrag, `sources` ergänzt,
  `last_updated` → 2026-08-24, ÜZ-Abschnitt: needs-verification-Klammer durch Auflösungs-Absatz
  ersetzt), `wiki/QUESTIONS.md` (Run-55-Flagge durchgestrichen + Auflösung nachgetragen),
  `buecher/band-2/14-nutzungsdichte-ausnuetzung.md` (offene-Punkte-Abschnitt: Flagge auf ERLEDIGT).
- `git diff --numstat` nach jedem Schreibvorgang geprüft: alle drei bestehenden Dateien
  netto-additiv (6/3, 7/4, 17/3 Zeilen), keine unerwartete Löschung; neue Raw-Datei ungetrackt/neu.
- REPORT `outputs/2026-08-24_buch-run130.md`.
- STATUS Reglemente-Queue: weiterhin vollständig abgeschlossen (T1-T9). Offene Kandidaten für
  einen künftigen Lauf: regulärer `wissenscheck`-Turnus, `connectors/WEGE.md`-Nachtrag für die in
  Run 126/127 gefundene `entscheidsuche.ch`-Such-API ist bereits erledigt (Run 129); als nächster
  Modell-D-Kandidat nach `last_updated` bleibt [[geschosse-und-kniestock]] (2026-07-27, nur die
  Kniestock-Rechtsprechung wurde in Run 126 geprüft — die drei `speculative`-Fragen zur
  Übertragbarkeit auf die harmonisierte Fassung sind echte Auslegungsfragen ohne Praxis, kein
  reiner Beleg-Nachvollzug, daher zurückgestellt) oder [[grundlagen-planungs-baurecht]]
  (last_updated 2026-08-03, zweitältester Artikel).

## 2026-08-24 — Wissens-Health-Check baurecht (Phase 1+2 interaktiv): 2 INDEX-Status-Drifts, 2 echte RAW-Coverage-Lücken geschlossen, 16 Register-Nachträge
- ANLASS: Reglemente-Queue T1-T9 laut `training/KORPUS-QUEUE-thalwil-reglemente.md` weiterhin
  vollständig abgeschlossen (zuletzt Buch-Run 129); da parallel ein weiterer automatischer Lauf
  (`mschub714`) aktiv an derselben KB arbeitete (voraussichtlich Modell-D-Stichprobe an
  [[ausnuetzungsuebertragung]]/[[nutzungsziffern]]), wurde als kollisionsfreie Alternative der
  reguläre `wissenscheck`-Turnus gewählt (Run 128/129 selbst als gleichwertigen nächsten Schritt
  genannt).
- Vorhandener `outputs/2026-08-24_health-check.md` deckte nur den Stand vor den Buch-Runs 105-129
  ab (Basis Run 104, raw/-Zähler 100 statt aktuell 118). Ein frischer Audit (Subagent, nur lesend,
  keine Kollision mit `mschub714`) hat die sieben Audits gegen den aktuellen Stand wiederholt und
  eigenständig gegengeprüft (Rule `auto-verbesserungen` 260729b: Agenten-Befunde nie ungeprüft
  übernehmen).
- **Bestätigt, kein neuer Fund:** Audits A (0 Widersprüche), B (0 Strukturbefunde, per
  `wiki-konsistenz.sh baurecht` verifiziert — die 4 Befunde des Vormittags-Reports sind bereits
  durch die Buch-Runs 107/110 behoben), C (0 unbelegte Claims), E (0 veraltete Artikel), F (0 echte
  Umlaut-Ersatzschreibungen im Fliesstext — alle Katalog-Treffer sind Wiki-Links/raw-Pfade/
  Dateinamen).
- **G — 2 echte INDEX/Frontmatter-Status-Drifts korrigiert** (gleiches Muster wie der bereits am
  17.08. behobene Fall `gebaeudearten-und-abstandssystem`):
  1. `wiki/INDEX.md`: [[geschosse-und-kniestock]] stand weiterhin auf *emerging* und nannte nur die
     alte Kniestock-Fassung (0,9/1,3 m) — Frontmatter ist seit Buch-Run 33 (13.07.2026) `established`
     und trägt seit Buch-Run 126 (24.08.2026) auch die aktuelle Verifikation. INDEX-Zeile korrigiert:
     *established*, harmonisierte 1,5-m-Fassung ergänzt.
  2. `wiki/INDEX.md`: [[umgebungsgestaltung-und-einfriedungen]] stand auf *emerging*, verifiziert
     13.08.2026 — Frontmatter ist `established`, zuletzt verifiziert 24.08.2026 (Buch-Run 111).
     INDEX-Zeile korrigiert.
- **D — 2 echte RAW-Coverage-Lücken geschlossen** (Inhalt war bereits amtlich beschafft und im
  Buch-Destillat bzw. in `wiki/QUESTIONS.md` verarbeitet, aber nie in einen Wiki-Artikel absorbiert):
  1. `raw/260824_amtlich_zh_rrb-39-2010-baulinienrevision.md` (RRB Nr. 39/2010, Festsetzungs-
     grundsätze Verkehrsbaulinien Staatsstrassen, von Buch-Run 116 amtlich beschafft) — neuer
     Abschnitt 1b in [[baulinien-und-abstandslinien]] (6-m-Grundabstand ausgebaute Strassen,
     3-5 m ungenügend ausgebaute, Kernzonen-Ausnahme, § 234/§ 264 PBG-Vorwirkung projektierter
     Baulinien, § 235 PBG 3-Jahres-Frist).
  2. `raw/260823_amtlich_zh_eg-gschg.md` (§ 15 Abs. 3 EG GSchG, von Recherche-Agent + Buch-Run 82
     korrigiert: die «ca. 40 m»-Nebenanlagen-Meterangabe steht im Gesetzeswortlaut nicht) — neue
     Sektion «Nebenleitungen» in [[baureife-und-erschliessung]] (Nachfolge § 53 Abs. 3/§ 56 WsG).
     Frage B (§ 36 Abs. 2 EG GSchG, Grundwasserschutz-Grundbuchanmerkung) bleibt bewusst offen in
     `wiki/QUESTIONS.md` — kein Ersatzbeleg erfunden.
- **Registerpflege:** `raw/_INGESTED.md` um 16 Zeilen für bislang unregistrierte `raw/`-Dateien vom
  23./24.08.2026 ergänzt (je mit Quelle, Fundstelle im Wiki, Buch-Run-Zuordnung); reiner
  Registrierungs-Rückstand, keine der 16 Dateien war tatsächlich unabsorbiert (bis auf die zwei
  oben genannten echten Lücken).
- GEÄNDERT `wiki/INDEX.md` (+2/-2), `wiki/baulinien-und-abstandslinien.md` (+36/-2),
  `wiki/baureife-und-erschliessung.md` (+18/-2), `raw/_INGESTED.md` (+16/-0).
- `git diff --numstat` nach jedem Schreibvorgang geprüft: durchgehend additiv/erwartete
  Zeilenersetzung, keine unerwartete Löschung. `wiki-konsistenz.sh baurecht` nach Abschluss erneut
  `keine Befunde`.
- REPORT `outputs/2026-08-24_health-check-nachtrag.md`.

## 2026-08-24 — Buch-Run 129: `connectors/WEGE.md`-Nachtrag für die `entscheidsuche.ch`-Such-API (Buch-Run 126/127) eingetragen
- ANLASS: Buch-Run 127 nannte als einen von drei möglichen nächsten Schritten einen
  `connectors/WEGE.md`-Nachtrag für die in Run 126/127 rekonstruierte interne Such-API von
  `entscheidsuche.ch` (`_searchV2.php`) — bislang nur in den KB-eigenen Outputs dokumentiert,
  nicht im hub-weiten Wege-Register, das Rule `wege-und-vollmachten` vor jedem «geht nicht»
  verbindlich vorschreibt zu konsultieren.
- **Kein neuer Fachbefund, reine Registerpflege ausserhalb der KB selbst:** kein `raw/`-,
  `wiki/`- oder `buecher/`-Edit. Übertragen wurden die bereits verifizierten Fakten aus Run
  126/127 (Endpunkt, `term`-Query auf Feld `reference` mit führendem Leerzeichen im indizierten
  Format, `content_url` für den statischen Volltext, die belegte Abdeckungsgrenze ab ~2000 für
  `hierarchy: ZH_VG`) in einen eigenständigen Registereintrag nach dem Muster des bestehenden
  `zentraleserien.zh.ch`-Eintrags direkt darüber (Weg, Testbefehl, Falle, Grenze, Quelle).
- **Zwei Nebenläufe vermieden:** zum Zeitpunkt dieses Laufs liefen zwei weitere Instanzen
  desselben Prompts (`mschub706`, `mschub710`, gestartet 07:21/07:28) bereits aktiv an der
  KB selbst — Run 128 (Kostenentscheid [[nebenbestimmungen-und-reverse]]) wurde während dieses
  Laufs von einer der beiden committet. Um keine gleichzeitige Bearbeitung derselben
  Wiki-Artikel zu riskieren, wurde bewusst eine Aufgabe ausserhalb der KB-Wiki-Dateien gewählt
  (Run 127 selbst führte sie als «ausserhalb des KB-Mandats»).
- GEÄNDERT `connectors/WEGE.md` (neuer Abschnitt «Nachtrag 24.08.2026 — ZH-Gerichtsentscheide
  ohne bekanntes Datum: interne Such-API von `entscheidsuche.ch`», +37/-0 Zeilen).
- `git diff --numstat` nach dem Schreibvorgang geprüft: `connectors/WEGE.md` 37/0, rein
  additiv, keine Löschung.
- REPORT `outputs/2026-08-24_buch-run129.md`.
- STATUS Reglemente-Queue: weiterhin vollständig abgeschlossen (T1-T9), keine Änderung. Der
  dritte von Run 127 genannte Kandidat (Modell-D-Stichprobe an
  [[ausnuetzungsuebertragung]]/[[nutzungsziffern]]) bleibt offen für einen künftigen Lauf.

## 2026-08-24 — Buch-Run 128: Kostenentscheid-Abschnitt in [[nebenbestimmungen-und-reverse]] nachgetragen — «§ 340f PBG» existiert nicht, «§ 3 VRG» war falsch zugeordnet (richtig § 17 Abs. 2 VRG), zwei stale Restschuld-Vermerke aus Run 11 in der Kap.-7-Destillat-Kette aufgelöst
- ANLASS: Buch-Run 127 empfahl als einen von mehreren möglichen nächsten Schritten eine
  Modell-D-Stichprobe an [[nebenbestimmungen-und-reverse]] («seit Ersterstellung nie erneut
  geprüft»). Beim Lesen fiel die eigene Statuszeile des Artikels auf: sie behauptete, der
  Kostenentscheid (§§ 13/14 VRG, «§ 340f PBG») sowie 7.2/7.3 seien «noch nicht gelesen» —
  unverändert seit Run 11 (19.06.2026), obwohl Run 12 (21.06.2026) Kap. 7 nachweislich
  vollständig abgeschlossen hatte (`curriculum.md`: «Kap. 7 abgeschlossen»). Der
  Kostenentscheid-Abschnitt (7.1.3.5) stand bereits vollständig im Buch-Destillat
  [[07-zustaendigkeiten-entscheide-auskuenfte]] (S. 443-447), war aber nie in einen
  Wiki-Artikel übernommen worden und trug dort drei `needs-verification`-Flags.
- GEPRÜFT: amtlicher VRG-Volltext frisch bezogen (zhlex, Ordnr. 175.2, Nachtrag 133 — identischer
  Stand wie der bereits vorliegende Auszug, keine Fassungsstand-Drift; Erlassseite JS-gerendert,
  PDF über die notes.zh.ch-Redirect-Kette + PyMuPDF-Extraktion aus dem vollständigen 31-seitigen
  PDF bezogen, da `pdftotext` auf dieser Station weiterhin nicht installiert ist). **§ 13
  Abs. 1/2 VRG und § 14 VRG CONFIRMED wortgleich** (§ 14 deckt sich mit der bereits durch
  Buch-Run 110 verifizierten Fassung in [[rechtsschutz-und-rechtsmittelverfahren]]). **«§ 340f
  PBG»** (Buch-Nebenfundstelle) **existiert nicht** — das PBG kennt an dieser Stelle nur § 340
  (Strafen) und § 340a (Verjährung), geprüft gegen `raw/260607_amtlich_zh_pbg.md`; keine
  Ersatzfundstelle erfunden, tragende Rechtsgrundlage bleibt § 13 Abs. 1 VRG. **«§ 3 VRG»**
  (für «Kostenauflage an Amtsstellen» zitiert) **war falsch zugeordnet** — § 3 VRG ist eine
  reine Zuständigkeits-Vorbehaltsnorm («Besondere gesetzliche Bestimmungen, welche die
  Zuständigkeit anders ordnen, bleiben vorbehalten»), kein Kostenartikel. Die tatsächlich
  einschlägige Norm ist **§ 17 Abs. 2 VRG** (Parteientschädigung: im Rekurs-/
  Verwaltungsgerichtsverfahren kann die unterliegende Partei **oder Amtsstelle** zu einer
  Entschädigung verpflichtet werden). RB 1992 Nr. 77 (Gebührenverdoppelung bei zweiter
  Gesuchsprüfung) bleibt aus Datenbank-Gründen unverifiziert (1992, ausserhalb der bekannten
  Jahrgangsabdeckung von `entscheidsuche.ch`, gleiche Fallfamilie wie VB 94/0016 aus Run 127);
  kein neuer Zugriffsweg dafür geprüft, um Scope-Kriechen zu vermeiden.
- NEU `raw/260824_amtlich_zh_vrg-par3-par17.md` (§§ 1-3 + § 17 VRG, treu abgeschrieben). GEÄNDERT
  [[nebenbestimmungen-und-reverse]] (neuer Abschnitt «Kostenentscheid bei mehreren
  Beteiligten», stale Statuszeile aufgelöst, Frontmatter/`paragraphen`/`verifiziert`
  nachgeführt), [[baubewilligungsverfahren]] (Abschnitt Gebühren um die allgemeine
  VRG-Rechtsgrundlage § 13 Abs. 1 ergänzt), [[07-zustaendigkeiten-entscheide-auskuenfte]]
  (Abschnitt 7.1.3.5 korrigiert, stale «Restschuld Kap. 7»-Vermerk unter «Offene Punkte»
  aufgelöst, Frontmatter), `buecher/INDEX.md` (Zeiger korrigiert), `wiki/QUESTIONS.md` (neuer
  Block oben), `raw/_INGESTED.md` (neue Registerzeile).
- `git diff --numstat` geprüft (die Änderungen wurden zwischenzeitlich durch die reguläre
  15-Minuten-`nas-selfcommit`-Routine committet, Commit `55068c77`, 07:30 Uhr; Nachweis über
  `git show --numstat` statt Working-Tree-Diff): nur additive/gezielte Änderungen an den
  erwarteten Stellen (INDEX.md +2/-1, Kap.-7-Destillat +45/-15, neue raw-Datei +62/-0,
  `_INGESTED.md` +1/-0, `QUESTIONS.md` +46/-0, `baubewilligungsverfahren.md` +14/-6,
  `nebenbestimmungen-und-reverse.md` +32/-7), keine unerwarteten Löschungen.
- REPORT `outputs/2026-08-24_buch-run128.md`.
- STATUS Reglemente-Queue: weiterhin vollständig abgeschlossen (T1-T9). Kein Fachpunkt mehr
  offen ausser VB 94/0016, VB.2003.00051 und RB 1992 Nr. 77 (alle drei aus Datenbank-Gründen
  unverifizierbar, dokumentiert statt erneut versucht) sowie der registrierten
  PBG-Teilrevision «Baulinien» als Fassungsstand-Wachposten. Nächste Kandidaten: regulärer
  `wissenscheck`-Turnus, Modell-D-Stichprobe an [[ausnuetzungsuebertragung]]/[[nutzungsziffern]]
  (zuletzt 2026-07-25/Run 55) oder an einem anderen seit Ersterstellung nie erneut geprüften
  Artikel, `connectors/WEGE.md`-Nachtrag für die `entscheidsuche.ch`-Such-API (Fund aus Run 126,
  bisher nicht registriert).

## 2026-08-24 — Buch-Run 127: Zugriffsweg für VB 94/0016 (RB 1994 Nr. 72) abschliessend geprüft — Jahrgang 1994 im Suchindex entscheidsuche.ch statistisch nicht vorhanden (0 Treffer 1991-1995), kein freier digitaler Weg mehr offen
- ANLASS: Buch-Run 126 empfahl als einen von drei möglichen nächsten Schritten eine gezielte
  Suche nach einem alternativen Zugriffsweg für vor-2000/nicht-indexierte VB-Entscheide, analog
  dem Fund von `zentraleserien.zh.ch` in Run 123. Gewählt: **VB 94/0016 (RB 1994 Nr. 72)**, seit
  Buch-Run 120/121 unverifiziert in [[ausnahmebewilligung-und-bestandesschutz]] geführt (Beleg
  für die «technische Abbruchreife als eigene Grenze» des Bestandesschutzes).
- GEPRÜFT: die in Run 126 rekonstruierte interne Such-API von `entscheidsuche.ch`
  (`_searchV2.php`, Feld `reference`) liefert für «VB.1994.00016»/«VB.94.00016» 0 Treffer;
  Kontrollprobe mit bekanntem Fall (VB.2003.00118) bestätigt die Methode. Eine
  Datums-Aggregation über den gesamten ZH-Verwaltungsgerichts-Bestand zeigt: **der Jahrgang
  1994 ist im Index vollständig unvertreten** (0 Treffer 1991-1995 durchgehend, nur vereinzelte
  Ausreisser 1990/1996-1999 mit 1-3 Treffern gegenüber 200+ ab 2000) — kein Format-, sondern ein
  Abdeckungsproblem, statistisch belegt statt nur vermutet. Drei Alternativwege zusätzlich
  geprüft, alle ohne freien Zugriff: offizielle VGr-ZH-Entscheiddatenbank (kein Hinweis auf
  Erfassung vor 2000, aber offizielle Option einer kostenpflichtigen Urteilskopie-Bestellung
  beim Gericht selbst), Rechenschaftsberichte Gerichte ZH (nur Obergericht, online erst ab
  2005, falscher Gerichtszweig), e-periodica.ch (keine Digitalisate gefunden).
- EINORDNUNG: kein Ersatzzitat, keine Bestätigung des ursprünglichen Fallzitats — aber die
  bisherige Vermutung «Datenbank deckt vermutlich erst ab 2000» ist jetzt mit Zahlen belegt statt
  nur behauptet. Verhindert, dass ein künftiger Lauf denselben Weg erneut ergebnislos versucht.
  Die kostenpflichtige Bestellung beim Gericht liegt ausserhalb der Kompetenz dieses Laufs (keine
  Zahlungen ohne Einzelfreigabe) und ist nur als Option im Wiki-Artikel vermerkt.
- NEU `raw/260824_amtlich_zh_entscheidsuche-abdeckung-vb-1994.md`. GEÄNDERT
  `wiki/ausnahmebewilligung-und-bestandesschutz.md` (Fallpraxis-Vertiefung präzisiert,
  Frontmatter nachgeführt), `wiki/QUESTIONS.md` (neuer Block oben + Nachtrag am
  Run-123-Block), `raw/_INGESTED.md` (neue Registerzeile).
- `git diff --numstat` (nativ) nach jedem Schreibvorgang geprüft: nur additive/gezielte
  Änderungen (ausnahmebewilligung-und-bestandesschutz.md +31/-6, QUESTIONS.md +34/-0,
  _INGESTED.md +1/-0), keine unerwarteten Löschungen.
- REPORT `outputs/2026-08-24_buch-run127.md`.
- STATUS Reglemente-Queue: weiterhin vollständig abgeschlossen (T1-T9). Kein Fachpunkt mehr
  offen ausser VB 94/0016 selbst (jetzt abschliessend dokumentiert, kein weiterer freier
  Zugriffsversuch sinnvoll) und der registrierten PBG-Teilrevision «Baulinien» als
  Fassungsstand-Wachposten. Nächste Kandidaten: `wissenscheck`-Turnus, Modell-D-Stichprobe an
  [[ausnuetzungsuebertragung]]/[[nutzungsziffern]] (zuletzt 2026-07-25/Run 55) oder
  [[nebenbestimmungen-und-reverse]] (zuletzt 2026-07-27/Run 67, nie erneut geprüft seit
  Ersterstellung), oder `connectors/WEGE.md`-Nachtrag für die `entscheidsuche.ch`-Such-API.

## 2026-08-24 — Buch-Run 126: Kniestock-/Anrechenbarkeits-Rechtsprechung in [[geschosse-und-kniestock]] verifiziert — Fehlzitat VB.2003.00370 korrigiert (Galerie bei 1,5 m Breite NICHT anrechenbar, nicht «Richtwert ab 1,5 m»), VB.2007.00383 CONFIRMED wortgleich, VB.2003.00051 im Suchindex nicht auffindbar
- ANLASS: Reglemente-Queue 2414 Thalwil (T1-T9) und die Stale-Flag-/Cross-KB-Kette (Run 90-125)
  sind laut eigenen Abschlussvermerken vollständig. Buch-Run 125 empfahl als nächsten
  eigenständigen Schritt eine Modell-D-Stichprobe an [[geschosse-und-kniestock]] — dessen
  Kniestock-Teil trug drei VB-Rechtsprechungszitate (VB.2003.00370, VB.2007.00383,
  VB.2003.00051), keines je am Original geprüft, in der gesamten Re-Verifikationskette
  (Run 90-125) nicht angefasst.
- ZUGRIFFSWEG: die klassischen `entscheidsuche.ch`-Direkt-URLs benötigen ein bekanntes
  Entscheiddatum, das für keines der drei Zitate vorlag. Aus dem JS-Bundle der Website
  (`js/app.*.js`) die interne Such-API rekonstruiert: `https://entscheidsuche.ch/_searchV2.php`
  (öffentlicher Elasticsearch-Proxy, POST/JSON). Eine `term`-Query auf das Feld `reference`
  (Format: führendes Leerzeichen + „VB.JJJJ.NNNNN") liefert exakte Treffer inkl. `content_url`
  zum statischen, per `curl` abrufbaren Volltext-HTML. An zwei bekannten Kontrollproben
  (VB.2003.00118, VB.2003.00445) verifiziert, bevor auf die drei Zielzitate angewendet.
- GEPRÜFT: **VB.2003.00370** (10.03.2004) — der Wiki-Artikel zitierte einen «Richtwert ab
  1,5 m Breite» für die Anrechenbarkeit einer Galerie. E. 2.2 sagt das Gegenteil: eine 1,5 m
  breite Galerie wurde als «zu Wohnzwecken ungeeignet» und damit **nicht anrechenbar**
  beurteilt («dient in erster Linie als Erschliessungsfläche […] und weist für eine
  zusätzliche Nutzung ungünstige Proportionen auf»). 1,5 m ist im Entscheid der als zu schmal
  befundene Sachverhaltswert, keine Sufficiency-Schwelle; der tatsächlich tragende Massstab
  ist die objektive Wohn-/Arbeitsnutzungs-Eignung im Einzelfall. **VB.2007.00383**
  (12.03.2008) — E. 7.1 deckt sich wortgleich mit dem bestehenden Wiki-Satz zu § 276 Abs. 2
  PBG (Ersatz von Vollgeschossen durch Dach-/Untergeschosse ist kein Verzicht auf die
  Geschosszahl); der Entscheid nennt dafür selbst bereits VB.1999.00270 (17.02.2000) als
  älteren Präzedenzfall. **VB.2003.00051** — `term`-Query liefert 0 Treffer, obwohl der
  ZH-Verwaltungsgerichts-Index für 2003 vollständig gefüllt ist (269 Entscheide) und alle
  drei Kontrollproben auffindbar waren; die Methode ist damit verlässlich, das Zitat fehlt
  tatsächlich im Index — gleiche Fehlerfamilie wie die RRB-1294/1995-Fehlattribution
  (Buch-Run 123). Keine Ersatzfundstelle erfunden.
- NEU `raw/260824_amtlich_zh_vb-2003-00370.md`, `raw/260824_amtlich_zh_vb-2007-00383.md`.
  GEÄNDERT `wiki/geschosse-und-kniestock.md` (Galerie-Bullet korrigiert, § 276 Abs. 2-Bullet
  datiert/belegt, Untergeschoss-Bullet um Nichtfund-Vermerk erweitert; Frontmatter
  `verifiziert`/`sources` nachgeführt), `wiki/QUESTIONS.md` (neuer Block oben),
  `raw/_INGESTED.md` (zwei neue Registerzeilen).
- `git diff --numstat` (nativ) nach jedem Schreibvorgang geprüft: nur additive/gezielte
  Änderungen an den erwarteten Stellen (geschosse-und-kniestock.md +43/-9, QUESTIONS.md
  +38/-0), keine unerwarteten Löschungen.
- REPORT `outputs/2026-08-24_buch-run126.md`.
- STATUS Reglemente-Queue: weiterhin vollständig abgeschlossen (T1-T9). Offen bleiben die aus
  Datenbank-Gründen unverifizierten Fallzitate VB 94/0016 und (neu) VB.2003.00051, sowie die
  registrierte PBG-Teilrevision «Baulinien» als Fassungsstand-Wachposten.

## 2026-08-24 — Buch-Run 125: gilt § 6c ABV (2 m/halbe Fassadenlänge) auch im Baulinienbereich? Ja, gesetzessystematisch seit 1.3.2017 — amtlich bestätigt durch den Bericht zur laufenden PBG-Teilrevision «Baulinien»; neuer aktiver Fassungsstand-Wachposten
- ANLASS: Reglemente-Queue 2414 Thalwil (T1-T9) und die anschliessende Stale-Flag-/
  Cross-KB-Kette (Run 90-124) sind laut eigenen Abschlussvermerken vollständig. Als
  nächster eigenständiger Schritt gewählt: [[baulinien-und-abstandslinien]] (ältestes
  `last_updated` unter den `established`-Artikeln, 2026-07-27) trug seit Buch-Run 62 eine
  explizit als «am Gesetzeswortlaut nicht prüfbar» offen markierte Frage — ob Gerichte die
  harmonisierte Hälfte-Fassadenlänge-Regel des § 6c ABV analog auch im Baulinienbereich
  anwenden.
- GEPRÜFT: § 100 PBG harmonisiert (`raw/260607_amtlich_zh_pbg.md` Z. 1080-1090) enthält —
  anders als die alte/Anhang-Fassung mit fixer 1,5-m-Grenze (Z. 4242-4243) — **keine eigene
  Massvorschrift** mehr, nur noch die Messweise (projizierte Fassadenlinie). § 6c ABV
  (`raw/260607_amtlich_zh_abv.md` Z. 119-125) trägt die allgemeine Begriffs-/Massnorm für
  «vorspringende Gebäudeteile» (höchstens 2 m Tiefe, höchstens die Hälfte des zugehörigen
  Fassadenabschnitts). Amtlich bestätigt über den erläuternden Bericht der
  Volkswirtschafts-/Baudirektion Kanton Zürich zur PBG-Teilrevision «Baulinien» (bezogen via
  vzgv.ch, PyMuPDF-Extraktion — `pdftotext` auf dieser Station weiterhin nicht installiert):
  «Grundsätzlich kommen für vorspringende Gebäudeteile im Baulinienbereich die Masse von
  § 253b VE-PBG [= geltendes Recht: § 6c ABV] zur Anwendung»; die IVHB-Harmonisierung habe
  die zulässigen Masse im Baulinienbereich «erheblich erweitert».
- BEFUND: **die ursprüngliche Frage war falsch gestellt.** Es handelt sich nicht um eine
  richterliche Analogie-/Praxisfrage, sondern um eine unmittelbare gesetzessystematische
  Folge der IVHB-Harmonisierung (in Kraft seit 1.3.2017): die allgemeine ABV-Massnorm füllt
  die Lücke, die der harmonisierte § 100 PBG durch den Wegfall seiner eigenen Massvorschrift
  hinterlassen hat. **Nebenbefund, neu in die KB aufgenommen:** eine PBG-Teilrevision
  «Baulinien» ist unterwegs, die genau diese als zu weitgehend erkannte Wirkung wieder
  einschränken will (1. Vollgeschoss/UG grundsätzlich freihalten, geschlossene Vorsprünge mit
  Pflicht zum «untergeordneten Charakter»); Regierungsratsbeschluss Nr. 1319/2024, seit
  Januar 2025 im Kantonsrat, Stand 24.08.2026 weiterhin in Kommissionsberatung, **nicht in
  Kraft**.
- NEU `raw/260824_amtlich_zh_ve-pbg-baulinien-bericht.md` (Auszug des erläuternden Berichts,
  amtliche Quelle, gemeinfrei). GEÄNDERT `wiki/baulinien-und-abstandslinien.md` (offene Frage
  aufgelöst, Originaltext durchgestrichen stehen gelassen statt gelöscht, Frontmatter
  `sources`/`verifiziert`/`last_updated` nachgeführt), `wiki/QUESTIONS.md` (neuer Block ganz
  oben: Klärung + neuer aktiver Fassungsstand-Wachposten «T-NEU», analog zur bereits
  laufenden Überwachung der revBZO Thalwil in [[negative-vorwirkung-und-bzo-revision]]),
  `raw/_INGESTED.md` (Registereintrag).
- `git diff --numstat` (nativ) nach jedem Schreibvorgang geprüft: nur additive/gezielte
  Änderungen an den erwarteten Stellen (QUESTIONS.md +28/-0, baulinien-und-abstandslinien.md
  +32/-5, _INGESTED.md +1/-0), keine unerwarteten Löschungen.
- REPORT `outputs/2026-08-24_buch-run125.md`.
- STATUS Reglemente-Queue: weiterhin vollständig abgeschlossen (T1-T9). Offen bleiben
  weiterhin nur VB 94/0016 (keine Datenbank vor 2000 verfügbar) und die neu registrierte
  PBG-Teilrevision «Baulinien» als aktiv zu überwachender Fassungsstand-Punkt.

## 2026-08-24 — Buch-Run 124: MAG/IVHB-Sammelgesetz-Verdacht (Run 122) widerlegt — zwei getrennte Erlasse
- ANLASS: Reglemente-Queue 2414 Thalwil (T1-T9) und die anschliessende Stale-Flag-Sweep-Kette
  sind laut eigenen Abschlussvermerken vollständig (zuletzt Run 116/121/123). Buch-Run 122 hatte
  einen tangentialen, niedrig priorisierten Punkt offen gelassen: ob «G vom 26. Januar 2026»
  eine einzige Sammelvorlage ist, die sowohl die IVHB-Übergangsfrist im PBG (Nachtrag 134, neuer
  Stichtag 29.02.2028) als auch die MAG-Umsetzungsfrist (§ 29 Abs. 4 MAG, neuer Stichtag
  1.3.2028) verschoben hat.
- GEPRÜFT: beide bereits in `raw/` vorhandenen Primärquellen wörtlich gegenübergestellt —
  `raw/260824_amtlich_zh_pbg-nachtrag134-aenderungen.md` (Fussnote 76/77: „G vom 26. Januar 2026
  [OS 81, 350; ABl 2023-03-07]") und `raw/260823_amtlich_zh_mag.md` (Fussnote 9: „G vom 26.
  Januar 2026 [OS 81, 353; ABl 2024-07-05]").
- BEFUND: **kein gemeinsames Sammelgesetz.** Gleiches Verabschiedungsdatum (26.01.2026) und
  gleiches Inkrafttreten (1.8.2026), aber unterschiedliche OS-Seite (350 vs. 353) und ein um
  über ein Jahr auseinanderliegendes Vernehmlassungs-/ABl-Datum (2023-03-07 vs. 2024-07-05) —
  bei einer echten Sammelvorlage wären OS-Seite und ABl-Datum für alle Teile identisch. Der
  bestehende Wiki-Satz «beide Änderungen teilen … OS-Referenz OS 81, 350» war selbst unbelegt/
  falsch (MAG trägt tatsächlich OS 81, 353, nie geprüft gegen den eigenen MAG-Rohtext). Der
  Kantonsrat hat am 26.01.2026 zwei unabhängige Gesetzesänderungen verabschiedet, die zufällig
  am selben Tag beschlossen wurden und in Kraft traten; die neuen Stichtage 29.02.2028 (PBG) und
  01.03.2028 (MAG) liegen einen Tag auseinander, konsistent mit zwei getrennten Redaktionen.
- GEÄNDERT `wiki/abstaende-und-hoehen.md` (Abschnitt «Harmonisierungsvorlage», offener Punkt
  aufgelöst, `verifiziert`-Feld ergänzt), `wiki/QUESTIONS.md` (Buch-Run-122-Block, `speculative`-
  Punkt auf ✅ GEKLÄRT gesetzt, Originaltext nicht gelöscht, nur ergänzt).
- KEIN neuer `raw/`-Volltext nötig (beide Primärquellen lagen bereits vor). REPORT
  `outputs/2026-08-24_buch-run124.md`.
- STATUS Reglemente-Queue: weiterhin vollständig abgeschlossen (T1-T9, Stale-Flag-Sweep,
  Cross-KB-Runs 117-123). Offen bleiben nur die zwei aus Datenbank-Gründen unverifizierten
  Fallzitate (VB 94/0016) sowie ein regulärer `wissenscheck`-Turnus oder eine neue
  Modell-D-Stichprobenrunde als Kandidaten für einen künftigen Lauf.

## 2026-08-24 — Buch-Run 123: neuer Zugriffsweg für vor-2000-Regierungsratsbeschlüsse gefunden (Staatsarchiv-Portal zentraleserien.zh.ch) — RRB Nr. 1294/1995 damit geprüft und als falsch attribuiert entlarvt (betrifft Bibliotheksförderung, nicht Bestandesschutz)

- **Ausgangslage:** Buch-Run 121 hatte zwei Fallzitate der Sekundärquelle (Raphael Jans, Digest
  2020) als aus Datenbank-Gründen unverifizierbar zurückgestellt (RRB Nr. 1294/1995 = BEZ 1996
  Nr. 5; VB 94/0016 = RB 1994 Nr. 72) — beide vor 2000, ausserhalb von `entscheidsuche.ch` und
  der Baurekursgericht-Entscheidnummer-Suche. Dieser Lauf hat gezielt nach einem weiteren
  Zugriffsweg gesucht (Rule `wege-und-vollmachten`: erst alle Wege prüfen, bevor eine Aufgabe als
  unmöglich gilt), parallel zum inzwischen abgeschlossenen Buch-Run 122 (anderer, gleichzeitig
  dispatchter Lauf `mschub603`; siehe `rules/betrieb-chronik.md` 260824 zur Doppel-Dispatch-Lage).
- **Neuer Zugriffsweg gefunden:** Das Staatsarchiv des Kantons Zürich stellt unter
  `zentraleserien.zh.ch` Regierungsratsbeschlüsse 1803-1995 volltextdurchsuchbar bereit (Portal
  "Zentrale Serien des Kantons Zürich", TEI-Publisher/eXist-db, öffentliche REST-API
  `/api/search?query=...&field=text&type=document`). Ein Slash im Suchbegriff muss als Phrase in
  Anführungszeichen übergeben werden, sonst bricht der Lucene-Parser ab.
- **RRB Nr. 1294/1995 geprüft — WIDERLEGT statt bestätigt.** Die Phrasensuche „1294/1995" liefert
  im gesamten Bestand genau einen Treffer: `data/RRB/MM_3_208/MM_3_208_RRB_1995_2655_t.xml`,
  Titel „Gemeinde- und Schulbibliotheken (Subventionen)" — die RRB-Nummer bemisst dort die
  Subventionsbemessung für Gemeinde-/Schulbibliotheken, kein Baurechtsthema. Da
  Regierungsratsbeschlüsse im Kanton Zürich fortlaufend über das ganze Kalenderjahr und über alle
  Direktionen hinweg nummeriert werden, kann dieselbe Nummer im selben Jahr nicht zusätzlich einem
  Bestandesschutz-Entscheid zugeordnet sein — die Fundstelle in der Sekundärquelle ist damit falsch
  attribuiert (gleiche Fehlerfamilie wie die «RRB 262/2010»-Verwechslung aus Buch-Run 116).
- **Keine Ersatz-Fundstelle erfunden:** die inhaltliche Abbruchreife-Aussage («für ein verfallenes,
  technisch abbruchreifes Gebäude besteht kein Bestandesschutz mehr») bleibt im Artikel stehen, weil
  sie plausibel und mit der übrigen, verifizierten Bestandesschutz-Dogmatik konsistent ist — aber
  jetzt ausdrücklich ohne belegte Fundstelle markiert, statt die falsche Zitat-Nummer stillschweigend
  weiterzuführen.
- **VB 94/0016 bleibt offen:** der neue Zugriffsweg deckt nur Regierungsratsbeschlüsse ab, keine
  Verwaltungsgerichtsurteile — für diesen Fall kein Fortschritt.
- **GEÄNDERT** `wiki/ausnahmebewilligung-und-bestandesschutz.md` (Sektion «Technische
  Abbruchreife» korrigiert, `sources`/`verifiziert` ergänzt), `wiki/QUESTIONS.md` (Run-121-Block
  fortgeschrieben, Empfehlung zum Nachtrag in `connectors/WEGE.md` vermerkt). **NEU**
  `raw/260824_amtlich_zh_zszh-rrb-1294-1995.md`.
- `git diff --numstat` (nativ) nach jedem Schreibvorgang geprüft: nur gezielte
  Additionen/Korrekturen an den erwarteten Stellen, keine unerwarteten Löschungen.
- REPORT `outputs/2026-08-24_buch-run123.md`.

## 2026-08-24 — Buch-Run 122: PBG-Nachtrag 134 amtlich verifiziert — Fusszeilen-Datum war Redaktionsstand, nicht Inkrafttreten; IVHB-Anpassungsfrist neu 29.02.2028 statt Achtjahresfrist, § 221 PBG (Zwischennutzungen) neu eingefügt, §§ 275-278 CONFIRMED

- **Ausgangslage:** die Reglemente-Queue (T1-T9), die Stale-Flag-Sweep-Kette (Run 90-116) und
  die Run-120/121-Cross-KB-Nachträge sind laut eigenen Abschlussvermerken vollständig. Als
  eigenständiger, aus der offenen Empfehlung von Buch-Run 94 abgeleiteter nächster Schritt
  gewählt: [[geschosse-und-kniestock]] (ältestes `verifiziert`-Datum unter den established-
  Artikeln, 2026-07-27) am amtlichen PBG-Nachtrag 134 re-verifizieren — Run 94 hatte am
  01.08.2026 bereits festgestellt, dass das PBG diesen Nachtrag trägt, die Vollprüfung aber auf
  «nach dem 01.10.2026» vertagt, weil die PDF-Fusszeile «1.10.26 - 134» als Inkrafttretensdatum
  gelesen wurde.
- **PDF direkt bezogen** (`https://www.notes.zh.ch/appl/zhlex_r.nsf/WebView/
  BDFE23FD4AE7E6E6C1258E3D001CBB62/$File/700.1_7.9.75_134.pdf`, über die Erlassseite
  `zhlex.zh.ch/Erlass.html?Open&Ordnr=700.1` aufgelöst, 101 Seiten, PyMuPDF-Volltext) und
  systematisch nach allen Fussnoten mit einer 2026er-Datumsangabe durchsucht.
- **Kernkorrektur: die Fusszeile «1.10.26 - 134» ist NICHT das Inkrafttretensdatum.** Beide
  tatsächlichen Änderungs-Fussnoten (76, 77) tragen den Vermerk «… G vom 26. Januar 2026 (OS 81,
  350; ABl 2023-03-07). In Kraft seit 1. August 2026» — keine Fundstelle im gesamten Dokument
  nennt den 1. Oktober 2026. Nachtrag 134 war zum Prüfzeitpunkt von Buch-Run 94 (23.08.2026)
  bereits drei Wochen lang geltendes Recht. Die Fusszeile ist der Redaktions-/Publikationsstand
  der konsolidierten PDF-Ausgabe, kein Rechtsdatum.
- **Zwei materielle Änderungen identifiziert:**
  1. **§ 221 PBG neu eingefügt** («Zwischennutzungen») — bis Nachtrag 133 eine leere Randnummer
     ohne Wortlaut, jetzt ein eigenständiges Instrument neben § 220 (befristete Abweichung von
     der Nutzweise durch die örtliche Baubehörde, zusätzliche Befreiung von Bauvorschriften unter
     den Voraussetzungen von § 220). Neue Sektion in
     [[ausnahmebewilligung-und-bestandesschutz]].
  2. **IVHB-Übergangsfrist auf festen Stichtag umgestellt:** die Übergangsbestimmung zur Änderung
     vom 14.9.2015 lautete bis Nachtrag 133 «acht Jahre ab Inkrafttreten» (verstrichen
     01.03.2025); Nachtrag 134 ersetzt das durch «bis spätestens am **29. Februar 2028**».
     **Korrigiert Buch-Run 84 (23.08.2026):** dessen Befund «Quellenverwechslung mit dem MAG,
     IVHB-Frist weiterhin acht Jahre/unbeschlossen» war anhand der damals konsultierten Quellen
     (zh.ch-Infoseite «noch in Beratung», PBG-Rohtext Nachtrag 133) korrekt referenziert, aber
     **beide Quellen waren zum Prüfzeitpunkt bereits einen Nachtrag veraltet**. Geänderter
     Abschnitt in [[abstaende-und-hoehen]], «Harmonisierungsvorlage» (Ordnungsfrist-ohne-Sanktion-
     Analyse bleibt methodisch gültig, jetzt auf den neuen Stichtag bezogen).
- **Re-Verifikation §§ 275-278 PBG (harmonisiert, Kern von [[geschosse-und-kniestock]]) —
  CONFIRMED, 0 Korrekturen:** wortlautidentisch zwischen Nachtrag 133 und 134, inkl.
  Fussnotenverweise 55/59. Der ursprünglich gewählte Re-Verifikationskandidat ist damit bestätigt.
- **NEU** `raw/260824_amtlich_zh_pbg-nachtrag134-aenderungen.md` — gezielter Nachtrag (kein
  Vollersatz der 5000+-Zeilen-Datei `raw/260607_amtlich_zh_pbg.md`, Rule 260811): dokumentiert
  beide Änderungsstellen mit Wortlaut, Fussnoten-Fundstelle und Einordnung.
- **GEÄNDERT** `wiki/QUESTIONS.md`: Run-94-Eintrag auf ✅ GEKLÄRT gesetzt (Ausgangswortlaut
  archiviert, nicht gelöscht), T-09 auf ✅ ERLEDIGT gesetzt, Run-84-Absatz um Korrekturvermerk
  ergänzt (ursprünglicher Text unverändert stehen gelassen).
- `git diff --numstat` nach jedem Schreibvorgang geprüft: `raw/260824_amtlich_zh_pbg-
  nachtrag134-aenderungen.md` Neuanlage; `wiki/abstaende-und-hoehen.md` +33/-32 (Block-Ersatz,
  von `nas-selfcommit` zwischenzeitlich bereits committet, Inhalt nach Commit erneut gegen die
  Datei verifiziert); `wiki/ausnahmebewilligung-und-bestandesschutz.md` +14/-3;
  `wiki/QUESTIONS.md` +78/-24 (Ersatz zweier Status-Header plus Korrekturvermerke, Originalwortlaut
  jeweils als archivierter/referenzierter Block erhalten, keine unerwarteten Löschungen).
- **Hinweis zu einer parallel laufenden zweiten Instanz dieser Task** (derselbe Lauf-Prompt,
  PID 46017, gestartet 05:41, sieben Minuten vor dieser Session/PID 48153): diese hatte beim
  Start bereits Buch-Run 121 fertiggestellt und committet. Vor Beginn der eigenen Arbeit auf
  deren Prozessende gewartet (kein gleichzeitiger Schreibzugriff auf dieselben Dateien), Zustand
  frisch gelesen, dann mit einer eigenständigen, nicht überlappenden nächsten Aufgabe (Nachtrag
  134) fortgefahren.
- REPORT `outputs/2026-08-24_buch-run122.md`.

## 2026-08-24 — Buch-Run 121: die zwei tragendsten Fallzitate der Run-120-Fallpraxis-Vertiefung am Original verifiziert — VB.2003.00196-Zitat korrigiert (§ 101 PBG und Zurückhaltungspflicht nicht haltbar), BRKE II Nr. 0130/2007 CONFIRMED, VB.2012.00531-Frage geklärt

- **Ausgangslage:** Buch-Run 120 hatte als Nächsten Schritt benannt, die zwei tragendsten
  Fallzitate der neuen «Fallpraxis-Vertiefung» in [[ausnahmebewilligung-und-bestandesschutz]]
  am Original zu verifizieren (BRKE II Nr. 0130/2007, VB.2003.00196), sowie zu prüfen, ob
  VB.2012.00531 dieselbe Rechtsfrage betrifft wie die bereits als BEZ 1996 Nr. 30 geführte
  10°-Schrägdach-Schwelle. `pdftotext` fehlt auf dieser Station; Original-PDFs wurden mit
  PyMuPDF (`fitz`, bereits installiert) gelesen.
- **BRKE II Nr. 0130/2007 (BEZ 2008 Nr. 12) — CONFIRMED.** Über die POST-basierte
  Entscheidnummer-Suche von `baurekursgericht-zh.ch/rechtsprechung/entscheiddatenbank/
  entscheidnummer/` (Formularfelder `department`/`number`/`year`) gefunden, PDF
  `/media/BRKE_II_0130_2007_754.pdf`. Bestätigt: drei Attikageschosse auf drei Wohngebäude mit
  je drei Vollgeschossen (W3 55 %, faktisch rund 97 % Ausnützung) wurden trotz erheblicher
  Übernutzung als mit § 357 Abs. 1 PBG vereinbar beurteilt, weil keine Umgehungsabsicht der
  Neubauvorschriften erkennbar ist und die Bausubstanz überwiegend erhalten bleibt (E. 5.1/5.2,
  unter Bezug auf RB 1986 Nr. 99 = BEZ 1987 Nr. 5 und die VGr-Praxisänderung BEZ 2006 Nr. 32
  E. 4.1 f.).
- **VB.2003.00196 (RB 2003 Nr. 14 = BEZ 2004 Nr. 8) — TEILWEISE CONFIRMED, mit echter Korrektur.**
  Volltext gefunden unter `entscheidsuche.ch/docs/ZH_Verwaltungsgericht/
  ZH_VG_001_-VB-2003-00196_08-10-2003.html` (Datumssuffix aus dem bekannten Entscheiddatum
  konstruiert, direkt erfolgreich). Der in der Sekundärquelle behauptete «Ermessensspielraum bei
  § 357 Abs. 1 PBG» ist wörtlich bestätigt (E. 2c: «beträchtlicher Entscheidungsspielraum»,
  «qualifizierte Entscheidungs- und Ermessensfreiheit») — dient dem Gericht dort aber zur
  Begründung der **Gemeindelegitimation** nach § 21 lit. b VRG, nicht zu einer Aussage über
  gerichtliche Zurückhaltung. **Zwei Teile der Sekundärquelle waren am Original nicht haltbar:**
  (1) § 101 PBG kommt im Entscheid nicht vor — die Ausweitung von § 357 Abs. 1 PBG auf § 101 PBG
  war eine unbelegte Verallgemeinerung, keine Aussage des Gerichts. (2) Die behauptete
  Zurückhaltungspflicht des Baurekursgerichts (mit den Fundstellen § 20 Abs. 1/§ 50 VRG) ist
  durch den Entscheid **widerlegt**: E. 5 zeigt das Gegenteil — das Verwaltungsgericht wirft der
  Baurekurskommission I eine «schematische Betrachtungsweise» vor, die «der gebotenen
  einzelfallbezogenen Interessenabwägung nicht gerecht» werde, hebt deren Rekursentscheid auf und
  setzt die eigene Interessenabwägung an dessen Stelle. § 20 Abs. 1 VRG und § 50 VRG werden im
  Entscheid nicht zitiert.
- **Zwei Fallzitate bleiben unverifiziert** (RRB Nr. 1294/1995 = BEZ 1996 Nr. 5; VB 94/0016 =
  RB 1994 Nr. 72): beide vor dem Jahr 2000, ausserhalb der online frei zugänglichen
  Entscheiddatenbanken (VGr-Volltextdatenbank deckt laut eigener Angabe erst ab 1.1.2000; die
  Baurekursgericht-Entscheidnummer-Suche liefert für diese Jahrgänge keinen Treffer — anders als
  bei Run 116 (RRB 39/2010) half hier auch keine WebSearch-Alternativroute). Zugriffsversuch
  dokumentiert (Rule `wege-und-vollmachten`), **kein Ingest ohne Beleg**.
- **VB.2012.00531 (VGr 10.4.2013, Altersheim Zürich-Wipkingen) geklärt:** betrifft dieselbe
  Rechtsfrage wie BEZ 1996 Nr. 30 (Flachdach < 5°, Schrägdach ≥ 10°), aber im **allgemeinen**
  Gebäudehöhen-/Firsthöhen-Kontext (§ 281 PBG), nicht im Kontext der besonderen Gebäude
  (§ 273/§ 49 Abs. 3 PBG). Löst die bereits in Buch-Run 80 über einen Buchdestillat-Querverweis
  geklärte Übertragungsfrage nicht neu auf, bestätigt aber unabhängig deren Prämisse: die
  10°-Schwelle ist seit BEZ 1996 Nr. 30 (1996) bis mindestens 2013 unverändert gefestigte
  VGr-Praxis. **GEÄNDERT** `wiki/gebaeudearten-und-abstandssystem.md` (Fussnote ⁴ ergänzt,
  `sources`).
- **GEÄNDERT** `wiki/ausnahmebewilligung-und-bestandesschutz.md` (Fallpraxis-Vertiefung
  korrigiert/ergänzt, `sources`, `verifiziert`), `wiki/QUESTIONS.md` (neuer Block, Run-120-Eintrag
  mit Verweis geschlossen).
- `git diff --numstat` (nativ) nach jedem Schreibvorgang geprüft: nur gezielte Additionen/
  Korrekturen an den erwarteten Stellen (`ausnahmebewilligung-und-bestandesschutz.md` +42/-23,
  `gebaeudearten-und-abstandssystem.md` +9/-2, `QUESTIONS.md` +47/-0), keine unerwarteten
  Löschungen.
- REPORT `outputs/2026-08-24_buch-run121.md`.

## 2026-08-24 — Buch-Run 120: Cross-KB-Übergabe von `wissen/energie` (12 PL-02-Dateien) einzeln geprüft — Besitzstandsgarantie-Fallpraxis ergänzt, neuer Artikel Stockwerkeigentum-Teilungsplan, Klientendaten bewusst ausgefiltert

- **Ausgangslage:** Reglemente-Queue (T1-T9) und die chronologische Stale-Flag-Sweep-Kette
  (Run 90-119) sind laut eigenen Abschlussvermerken vollständig. Buch-Run 119 hatte als
  einzigen offenen Punkt die seit Run 117 gesicherte Cross-KB-Übergabe von `wissen/energie`
  benannt: 12 nie geöffnete Baurecht-/STWEG-docx-Dateien in PL-02
  (`01_Gesetze/08_Baurechtsanalysen/200508_BRA_Thalwil/`,
  `03_Arbeitshilfen/Teilungsplan Stockwerkeigentum Empfehlung/`) — Ordnerlisting bereits erfolgt,
  Inhalt bewusst nicht geöffnet, weil eine Einzelfall-Prüfung (verallgemeinerbare
  Rechtsargumentation vs. Klientengeheimnis, Rule `auto-verbesserungen` 260823) noch aussteht.
- **Alle 12 Dateien einzeln gelesen** (Mac Mini, `node`/M365-Graph-Connector wie Run 119, Drive-ID
  der Bibliothek `02_Recht_Norm`, `textutil -convert txt` für die docx/dotx-Konvertierung).
- **Übernommen — generalisierbare Fallpraxis zu §§ 357/101 PBG** (aus 5 der 12 Dateien, darunter
  ein als «vertraulich & intern» markiertes 2020er-Mandat-Dokument): neuer Abschnitt
  «Fallpraxis-Vertiefung» in [[ausnahmebewilligung-und-bestandesschutz]] — Attikageschoss-
  Präzedenzfall (BRKE II Nr. 0130/2007), ein dokumentierter Grenzfall (Baurekurskommission II
  27.6.1995 vs. VGr-Beschwerdeentscheid 19.12.1996, Kniestock/Firsthöhen-Erweiterung dennoch
  zulässig), **technische Abbruchreife** als eigene Bestandesschutz-Grenze (RRB Nr. 1294/1995 =
  BEZ 1996 Nr. 5; Gegenbeispiel VB 94/0016 = RB 1994 Nr. 72), **Ermessensspielraum der Gemeinden**
  bei §§ 357/101 PBG mit Zurückhaltungspflicht des Baurekursgerichts (VB.2003.00196 = RB 2003
  Nr. 14 = BEZ 2004 Nr. 8, § 20 Abs. 1/§ 50 VRG), § 101 PBG als bestätigte Sondernorm, Literatur
  Konrad Willi (Diss. Zürich 2003). **Alle Adressen, Parzellennummern, Flächenberechnungen und
  der Verfahrensstand des zugrundeliegenden Mandats wurden nicht übernommen** — die Fallzitate
  sind als Sekundärquelle gekennzeichnet, **nicht am Originalurteil verifiziert** (neuer offener
  Punkt in `wiki/QUESTIONS.md`).
- **NEU** `wiki/stockwerkeigentum-teilungsplan-und-begruendung.md` (`status: emerging`) — erster
  Artikel der KB zu Stockwerkeigentum: üblicher Inhalt eines Teilungsplans/Aufteilungsplans
  (Notariat-ZH-/cadastre-manual.admin.ch-Quellen, vollständig generisch); **Fassungsstand-Fund:**
  «Art. 712ebis ZGB» aus der Quelldatei existiert im **geltenden** Recht nicht (gegen den
  amtlichen ZGB-Volltext via `fedlex.data.admin.ch`, ELI `24/233_245_233`, Stand 1.1.2026,
  geprüft) — es handelt sich um eine **Entwurfsbestimmung** der laufenden Stockwerkeigentums-
  Revision (Botschaft des Bundesrats, WebSearch-Verifikation), noch nicht in Kraft; im Artikel
  entsprechend als offener Fassungsstand markiert statt als geltendes Recht übernommen. Dazu
  ein **namenlos abstrahiertes Verfahrensskelett** einer STWEG-Begründung (Reglement-Entwurf →
  Aufteilungspläne → juristische Prüfung → notarielle Begründung → Grundbucheintrag →
  Buchführung → Käufer-Kommunikation), destilliert aus einer klientengebundenen Checkliste unter
  vollständigem Verzicht auf Projektname, Klientenname, Termine und Verantwortlichkeiten.
- **Nicht übernommen (Klientengeheimnis/Echo-Schutz-Grenze):** eine namentlich für ein 2020er-
  Mandat verfasste, als vertraulich markierte Gesamt-Zusammenfassung (Adressen/Parzellen/
  Flächenberechnungen/Verfahrensstand), zwei weitere adressgebundene Dokumente derselben Causa
  (enthalten primär bereits im Standardwerk-Destillat vorhandene FBK-Zitate, eine noch offene
  Fallzahl VB.2012.00531 als neuer Cross-Check-Punkt vermerkt), eine namentlich klientengebundene
  STWEG-Projekt-Checkliste (Projekt/Klient/Termine entfernt, nur das Verfahrensskelett blieb).
  Eine branchenfremde Datei (Sitzungsprotokoll-Vorlage eines fremden Architekturbüros mit
  Platzhalternamen) enthielt keinen Baurecht-Inhalt und wurde ignoriert.
- **GEÄNDERT** `wiki/QUESTIONS.md` (Cross-KB-Eintrag auf ✅ GEKLÄRT gesetzt, Einzelfall-Ergebnis
  je Datei dokumentiert, zwei neue offene Punkte: Fallzitate-Originalverifikation, VB.2012.00531
  vs. BEZ 1996 Nr. 30), `wiki/INDEX.md` (neue Sektion «Stockwerkeigentum»).
- `git diff --numstat` (nativ) nach jedem Schreibvorgang geprüft: nur gezielte Additionen an den
  erwarteten Stellen (`ausnahmebewilligung-und-bestandesschutz.md` +47/-2, `INDEX.md` +3/-0,
  `QUESTIONS.md` +45/-1, neuer Artikel als Neuanlage), keine unerwarteten Löschungen.
- REPORT `outputs/2026-08-24_buch-run120.md`.

## 2026-08-24 — Buch-Run 119: die von Buch-Run 118 offen gelassenen zwei Sätze im Näherbaurecht-Destillat am Original nachgeführt (Station mit funktionierendem node/M365-Zugriff), Cross-KB-Dublettencheck vorbereitet

- **Ausgangslage:** Buch-Run 118 hatte einen von drei kaputten Sätzen im Näherbaurecht-Destillat
  (`buecher/band-2/15-lage-von-gebaeuden-teil2d.md`, Z. 152-155) korrigiert und zwei weitere offen
  gelassen — die Session lief headless ohne lokalen `PL`-Mount und ohne `node` im `PATH`. Diese
  Session lief auf dem Mac Mini (interaktiv); `node` (`/opt/homebrew/bin/node`) und der
  M365-Graph-Connector (`connectors/m365-graph.mjs`, Weg 2 aus `connectors/WEGE.md`) funktionierten
  beide, der lokale `PL`-Mount fehlte weiterhin, war aber nicht nötig.
- **Beide Original-Screenshots** (`Bildschirmfoto 2026-06-07 um 12.04.15/16.jpg` = S. 1098-1101,
  laut `buecher/seiten-inventar.md` Zeilen 571-572) direkt über die Drive-ID der Bibliothek
  `02_Recht_Norm` geladen (Zertifikats-Token, `curl -L` auf den Graph-`:/content`-Endpunkt) und
  gelesen. **Beide Sätze waren echte Fehler, kein reiner Textverlust:** Satz 2 kehrte die Aussage
  inhaltlich um — im Original widerspricht das Gebäude des Erstbauenden **nicht** den
  Bauvorschriften i.S.v. § 357 Abs. 1 PBG (es ist baurechtskonform bewilligt, VB.2013.00777,
  E. 3.5), steht aber näher an der Grenze als sonst zulässig (BEZ 1995 Nr. 17) — das Destillat
  hatte daraus das Gegenteil gemacht. Satz 3 war das abgeschnittene Ende des
  Abrückungserklärungs-Satzes (Baubehörde darf keine Abrückungserklärung mehr verlangen, BEZ 2010
  Nr. 14/BEZ 1995 Nr. 17) — beim Kürzen war das Subjekt verlorengegangen. Ergänzt: die vorangehende,
  bisher fehlende Aussage zum einseitig gewährten Näherbaurecht (BEZ 1992 Nr. 34). **GEÄNDERT**
  `buecher/band-2/15-lage-von-gebaeuden-teil2d.md` (Fliesstext + Frontmatter `last_updated`),
  `wiki/QUESTIONS.md` (Befund (a) aus Wissens-Chef Run 19 jetzt vollständig geschlossen, alle drei
  Sätze korrigiert).
- **Cross-KB-Übergabe von `wissen/energie` (12 Dateien PL-02, seit Run 117/24.08.2026 offen):**
  mit demselben Zugriffsweg beide Zielordner gelistet (nur Dateinamen, keine Datei geöffnet) und
  gegen den KB-Bestand volltextgeprüft — keine bereits ingestierte Fassung gefunden, 6/12 Dateien
  haben einen PDF-Zwilling (darunter die bereits als authentisch geführte `200831 BR
  Grundstück.pdf` — die vermutete Dublette aus Run 117 ist damit bestätigt). **Inhalt bewusst nicht
  geöffnet:** alle 12 Dateien sind projektgebundene Klientendokumente (Baurechtsanalysen für
  benannte Adressen, eine STWEG-Begründung für einen benannten Kunden); Arbeitsregel 5 der
  Reglemente-Queue und Rule `auto-verbesserungen` 260823 verlangen eine Einzelfall-Prüfung
  (verallgemeinerbare Rechtsargumentation vs. Klientengeheimnis), bevor Inhalt ins Wiki wandert —
  das ist Lektüre- und Abwägungsarbeit, kein reiner Dublettencheck. **GEÄNDERT** `wiki/QUESTIONS.md`
  (Ordnerlisting-Befund nachgetragen).
- `git diff --numstat` (nativ) nach jedem Schreibvorgang geprüft: nur gezielte Additionen,
  keine unerwarteten Löschungen (`15-lage-von-gebaeuden-teil2d.md` +24/-8, `QUESTIONS.md` +90/-13).
- REPORT `outputs/2026-08-24_buch-run119.md`.

## 2026-08-24 — Buch-Run 118: letzte zwei echten QUESTIONS.md-Restpunkte bearbeitet (§ 220/§ 357 Abs. 1 als stale geschlossen, Haupt-/Anhang-Vorbehalt in abstaende-und-hoehen.md nachgezogen, Negationsfehler im Näherbaurecht-Destillat korrigiert)

- **Ausgangslage:** Reglemente-Queue (T1-T9) und Stale-Flag-Sweep-Kette (Run 90-117) laut eigenen
  Abschlussvermerken vollständig. Systematisch nach verbleibenden, nicht durchgestrichenen
  `needs-verification`/offenen Einträgen in `wiki/QUESTIONS.md` gesucht (analog Run 105/109),
  diesmal über die gesamte Datei statt nur den chronologischen Block.
- **§ 220 / § 357 Abs. 1 PBG (Zeile 2084): stale, bereits erledigt.** Der Wortlautabgleich fand
  bereits am 13.07.2026 statt (Modell-D-Refuter, `buecher/band-2/20-ausnahmen-bestandesschutz.md`
  Abschnitt «Offene Punkte») und ist im `established`-Artikel
  [[ausnahmebewilligung-und-bestandesschutz]] vollständig nachgeführt — nur der Zeiger war nie
  aktualisiert. **GEÄNDERT** `wiki/QUESTIONS.md` (Flag geschlossen, Fundstellen ergänzt).
- **Cross-KB-Checkbox «§ 220a-Revisionsstrang» (Wissens-Chef Run 15): stale, ebenfalls bereits
  erledigt.** [[ausnahmebewilligung-und-bestandesschutz]] führt den Vorentwurf «Erleichtertes
  Bauen im Bestand» (§ 220a/§ 357 E-PBG, Mehrlängenzuschlag-Aufhebung) bereits seit seiner
  Ersterstellung inkl. Verfahrensstand und schliesst den Befund im eigenen Text ausdrücklich —
  nur die Checkbox in `QUESTIONS.md` war nie abgehakt worden. **GEÄNDERT** `wiki/QUESTIONS.md`.
- **Echte, bisher offene Lücke geschlossen (Wissens-Chef Run 19b, 30.07.2026): Haupt-/
  Anhang-Vorbehalt fehlte im Leit-Artikel.** `wiki/abstaende-und-hoehen.md`, Abschnitt
  «Abstandsprivilegierte Bauteile», zitierte die 1/3-/1,3-m-Vorsprungsregel weiterhin ungebrochen
  als «(§ 260 Abs. 3 PBG, § 27 Abs. 1 ABV)», obwohl der Schwester-Artikel
  [[baulinien-und-abstandslinien]] die Divergenz seit Buch-Run 62 dokumentiert: im Hauptteil des
  geltenden PBG regelt § 260 Abs. 3 die Getrenntmessung bei seitlich gegliederten Gebäuden, die
  1/3-Regel steht nur in der **Anhang**-Fassung (Stand 28.2.2017) und gilt übergangsrechtlich bis
  zur kommunalen BZO-Harmonisierung. **Ergänzt:** «alt/Anhang»-Kennzeichnung + die geltende
  Hauptteil-Regel **1/2** Fassadenlänge/**2 m** Tiefe (§ 260 nPBG i.V.m. **§ 6c Abs. 1 ABV**,
  gegen `raw/260607_amtlich_zh_abv.md` Z. 119 verifiziert — kantonsrechtlich bereits in Kraft,
  siehe die im selben Artikel bestehende Fassungsstand-Umkehr-Klarstellung, Abschnitt
  «Harmonisierungsvorlage»). Kein neuer `raw/`-Ingest, reine Konsistenz-Ergänzung anhand bereits
  verifizierten KB-Bestands. **GEÄNDERT** `wiki/abstaende-und-hoehen.md` (Fliesstext +
  Frontmatter `verifiziert`/`last_updated`), `wiki/QUESTIONS.md` (Befund (b) als erledigt
  vermerkt).
- **Echter Fehler teilweise korrigiert (Wissens-Chef Run 19a, 30.07.2026): Negationsfehler im
  Näherbaurecht-Destillat.** `buecher/band-2/15-lage-von-gebaeuden-teil2d.md` (S. 1099) enthielt
  seit der Ersterfassung den grammatisch zerstörten Satz «Die Schriftlichkeit nach § 270 Abs. 3
  PBG verlangt ist, sondern lediglich als Verfahrensbestimmung … zu qualifizieren» — die Negation
  fehlte. Aus dem unmittelbar vorangehenden Absatz («Form der Vereinbarung: § 270 Abs. 3 PBG
  äussert sich nicht zur Form …») ist die gemeinte Aussage eindeutig rekonstruierbar: die
  Schriftlichkeit ist **nicht** durch § 270 Abs. 3 PBG selbst, sondern nur verfahrensrechtlich
  durch § 5 lit. l BVV gefordert. **Korrigiert**, mit Korrekturvermerk im Fliesstext. **Zwei
  weitere, vom selben Wissens-Chef-Lauf als „Sinn nicht rekonstruierbar" bzw. „Satz ohne Subjekt/
  Objekt" diagnostizierte Sätze (Z. 152-155) bleiben unverändert offen** — diese Session lief
  headless ohne lokalen Mount von SharePoint `/sites/PL` und ohne `node` im `PATH` (identischer
  Befund wie Buch-Run 117), die Original-Screenshots S. 1100-1101 waren nicht einsehbar; ohne
  Quellenzugriff keine Rekonstruktion (Rule `wege-und-vollmachten`/`nichts raten`). **GEÄNDERT**
  `buecher/band-2/15-lage-von-gebaeuden-teil2d.md` (Fliesstext + `last_updated`), `wiki/
  QUESTIONS.md` (Teilerledigung + offene Restpunkte dokumentiert).
- `git diff --numstat` (nativ, nicht über SMB) nach jedem Schreibvorgang geprüft: nur gezielte
  Additionen in den drei bestehenden Dateien, keine unerwarteten Löschungen.
- REPORT `outputs/2026-08-24_buch-run118.md`.

## 2026-08-24 — Buch-Run 117: negative Vorwirkung Thalwil am amtlich servierten Dokument nachgeprüft (unverändert), stale Bookkeeping-Note Kap. 17 korrigiert, Cross-KB-PL-02-Zugriff auf dieser Station gescheitert (dokumentiert)

- **Ausgangslage:** Die Reglemente-Queue (T1-T9) und die daran anschliessende chronologische
  Stale-Flag-Sweep-Kette (Run 90-116) sind seit Run 116 vollständig abgearbeitet — kein
  chronologischer Restpunkt mehr offen. Dieser Lauf wählte darum das einzige noch `status:
  emerging` geführte Wiki-Objekt der KB, [[negative-vorwirkung-und-bzo-revision]] (die beiden
  offenen Punkte T-01/T-02 aus `wiki/QUESTIONS.md` hängen an einem realen, noch nicht
  eingetretenen Verfahrensschritt der Gemeinde Thalwil, nicht an einer Wissenslücke), sowie den
  neu eingegangenen Cross-KB-Eintrag von `wissen/energie` (24.08.2026).
- **T-01 mit stärkerer Methode nachgeprüft, Befund unverändert:** bisherige Prüfungen (03./23.08.)
  lasen nur die Verfahrensseiten von thalwil.ch. Dieser Lauf hat stattdessen das **amtlich
  servierte Rechtsdokument selbst** frisch abgerufen — dieselbe `oerebdocs.zh.ch`-URL
  (`getDoc?docid=1296`), aus der bereits `raw/260607_amtlich_zh_bzo-thalwil.md` stammt — und mit
  `pdftotext -layout` extrahiert. Kopfzeile unverändert: «Von der Gemeindeversammlung festgesetzt
  am 11.12.2019» / «Von der Baudirektion genehmigt am 29. April 2020». Die Gemeinde liefert unter
  derselben docid weiterhin die alte Fassung aus — ein stärkerer Beleg als eine Verfahrensseite,
  die schlicht schweigen könnte. T-02 (aktualisierte Vorwirkungs-Synopse) ebenfalls erneut
  geprüft, keine neuere Fassung auffindbar. **GEÄNDERT** `wiki/negative-vorwirkung-und-bzo-revision.md`
  (Verfahrensstand-Tabelle, `verifiziert`-Feld, `last_updated`, offene Punkte),
  `wiki/QUESTIONS.md` (T-01/T-02 je um einen datierten Nachtrag ergänzt). Status bleibt bewusst
  `emerging` — es ist kein Wissensdefizit, sondern ein realer Schwebezustand.
- **Stale-Bookkeeping-Note in `training/curriculum.md` Kap. 17 korrigiert:** die Zeile behauptete
  weiterhin, [[wohnhygiene-und-raumanforderungen]] bleibe `emerging` «bis PBG §§299-306
  volltextverifiziert» — das ist seit Buch-Run 32 (12.07.2026) erledigt, der Wiki-Artikel steht
  seither auf `status: established` (zuletzt bestätigt Buch-Run 95, 23.08.2026). Gleiche
  Fehlerfamilie wie die in Run 105/109/110/113-115 bereits behobenen stale Zeiger — nur diesmal
  in `curriculum.md` statt `QUESTIONS.md` gefunden.
- **Cross-KB-Übergabe von `wissen/energie` (12 nie gesichtete Baurecht-/STWEG-docx in PL-02):
  Zugriffsversuch dokumentiert gescheitert, kein Sachbefund.** Diese Session lief headless auf
  einer Station ohne lokalen Mount der SharePoint-Site `/sites/PL` (unter
  `OneDrive-FreigegebeneBibliotheken–JANS` fehlt der `PL`-Ordner) und ohne `node` im `PATH`
  (`command not found: node`) — damit war weder der Datei- noch der Connector-Weg verfügbar.
  Rule `wege-und-vollmachten`: ein leeres Ergebnis ist zuerst eine Aussage über das Werkzeug,
  nicht über die Quelle — deshalb **kein** Ingest, **keine** Aussage über Dubletten, nur eine
  aus dem Dateinamen naheliegende, ausdrücklich ungeprüfte Vermutung (`Seehaldenstrasse
  31/200831 BR Grundstück.docx` könnte dieselbe Datei sein wie das bereits als authentisch
  geführte `200831 BR Grundstück.pdf` aus der Thalwil-Reglemente-Queue) im Register vermerkt.
  **GEÄNDERT** `wiki/QUESTIONS.md` (Zugriffsversuch + Vermutung als Nachtrag ergänzt, Eintrag
  bleibt offen). Nächster Schritt für eine Station mit funktionierendem `PL`-Mount oder `node`.
- `git diff --numstat` (nativ, nicht über SMB) nach jedem Schreibvorgang geprüft: nur gezielte
  Additionen in den vier bestehenden Dateien, keine unerwarteten Löschungen.
- REPORT `outputs/2026-08-24_buch-run117.md`.

## 2026-08-24 — Buch-Run 116: Reglemente-Queue vollständig abgeschlossen — RRB 262/2010 als Lesefehler aufgelöst (richtig: RRB 39/2010), Gebührenreglement Bauwesen Thalwil erstmals vollständig beschafft

- **Ausgangslage:** Run 115 hatte die chronologische Stale-Flag-Sweep-Kette (Run 90-115)
  abgeschlossen und zwei verbleibende, genuin offene Punkte benannt: `RRB 262/2010` (Nummer im
  Buch-Reader schwer lesbar, S. 221, Verkehrsbaulinien 3.6.3) und das über die JS-gerenderte
  Gesetzessammlung-Suche nicht auffindbare «Gebührenreglement Bauwesen» Thalwil. Beide Wege vor
  dem Abbruch geprüft (Rule `wege-und-vollmachten`), beide gelöst.
- **RRB 262/2010 → RRB 39/2010 («Baulinienrevision, Konzept Aufarbeitung und Bewirtschaftung,
  Finanzierung», Regierungsrat ZH, Sitzung 13.1.2010):** WebSearch nach der Buchstelle fand
  keinen Treffer für «262», aber einen für «39» — selbes Datum, exakt dasselbe Sachthema
  (Festsetzungsgrundsätze für Verkehrsbaulinien an Staatsstrassen: 6-m-Grundabstand an
  ausgebauten Strassen, 3-5 m/Fahrspur an unfertigen, Trasseesicherung, Kernzonen-Verzicht).
  Direkter Abruf über das amtliche URL-Muster (`zh.ch/bin/zhweb/publish/regierungsratsbeschluss-
  unterlagen./2010/39/RRB-2010-0039.pdf`) bestätigt Inhalt und Dispositiv vollständig; die
  Gegenprobe auf `RRB-2010-0262.pdf` liefert HTTP 404 — diese Nummer existiert im amtlichen
  Archiv nicht. **NEU** `raw/260824_amtlich_zh_rrb-39-2010-baulinienrevision.md` (vollständiger
  Wortlaut inkl. Dispositiv I-IV). **GEÄNDERT**
  `buecher/band-1/03-erschliessung-landsicherung-teil1.md`: Fundstelle korrigiert, Flag von
  `speculative` auf `established`. **GEÄNDERT** `wiki/QUESTIONS.md`: letzter offener Punkt aus
  dem T6-Batch geschlossen.
- **Gebührenreglement Bauwesen Thalwil (SR 600.3, Fassung 1.1.2026) gefunden:** die JS-gerenderte
  Volltextsuche der Gesetzessammlung blieb (wie in Run 115) ohne Treffer; die statische
  Übersichtsseite `thalwil.ch/gebuehrenthalwil` nennt den Dokumenttitel aber im Klartext-Link
  (`/_rtr/information_2653196`), der über eine 301/302-Redirect-Kette
  (`/gesetzessammlung/sammlung/2653196` → `/_doc/6370262` → `/_docn/6370262/SR_600.3_…pdf`) zum
  PDF führt — kein Login, kein JS-Rendering nötig, nur eine andere Einstiegsseite als die Suche.
  **Kernbefund:** Thalwil bemisst Baubewilligungsgebühren **nicht promillebasiert**, sondern über
  feste Grundtaxen plus Zuschläge in Franken (EFH Grundtaxe ab Fr. 1'350.–, MFH ab Fr. 1'700.–
  zzgl. Fr. 350.–/Wohnung, Gewerbe/Fabrik ab Fr. 1'700.– zzgl. Fr. 0.75/m³ ab 500 m³ umbautem
  Raum). Ein Promillewert für Thalwil war also nie sachgerecht bestimmbar — nicht nur unbelegt,
  sondern methodisch die falsche Bemessungsgrösse. **NEU**
  `raw/260824_amtlich_zh_thalwil-gebuehrenreglement-bauwesen.md` (vollständiger Volltext:
  Baupolizei, Feuerpolizei, Feuerungskontrolle, baulicher Zivilschutz). **GEÄNDERT**
  `wiki/baubewilligungsverfahren.md`: Abschnitt «Gebühren» um das konkrete Thalwil-Beispiel
  ergänzt, neuer `verifiziert`-Eintrag 2026-08-24h, `sources` ergänzt.
- **GEÄNDERT** `training/KORPUS-QUEUE-thalwil-reglemente.md` — Run-116-Nachtrag, Queue-Status
  final auf vollständig abgeschlossen gesetzt.
- **Damit hat die Reglemente-Queue (T1-T9) samt der daran anschliessenden chronologischen
  Stale-Flag-Sweep-Kette (Run 90-116) keine bekannten offenen Punkte mehr.** Nächster sinnvoller
  Schritt: regulärer `wissenscheck`-Turnus oder eine neue, unabhängige Modell-D-Re-Verifikations-
  runde über bereits `established` markierte Artikel (Stichprobenprinzip).
- REPORT `outputs/2026-08-24_buch-run116.md`.

## 2026-08-24 — Cross-KB-Bringschuld von `wissen/energie` entgegengenommen: 12 nie gesichtete Baurecht-/STWEG-docx in PL-02

- **[flag]** `wissen/energie` hat beim filterlosen Sichten von PL-02 Recht_Norm (Run 161,
  23.08.2026) 9 docx aus `01_Gesetze/08_Baurechtsanalysen/200508_BRA_Thalwil/` und 3 docx aus
  `03_Arbeitshilfen/Teilungsplan Stockwerkeigentum Empfehlung/` gefunden, die ausserhalb des
  Energie-Scopes liegen. Fundstelle jetzt in `wiki/QUESTIONS.md` (neuer Abschnitt oben) mit
  vollständigen Pfaden gesichert, bevor die einzige temporäre Quelle (`/tmp/pl-filterlos-…json`
  auf einer fremden Station) verloren geht. Noch nicht inhaltlich gesichtet — nächster Schritt:
  prüfen, ob Dublette einer bereits destillierten PDF-Fassung (mehrere Ordner enthalten
  gleichnamige `.pdf` neben der `.docx`).

## 2026-08-24 — Buch-Run 115: letzter Stale-Flag-Block «Health-Check 2026-06-02» geschlossen — Gebühren-Flag erstmals mit Primärquellen belegt (Thalwiler Gebührenverordnung + Preisüberwacher-Studie), BZO-Richtwert-Tabelle-Flag war bereits erledigt

- **Ausgangslage:** Run 114 hatte als letzten offenen Block der chronologischen
  `QUESTIONS.md`-Sweep-Kette (Run 90-114) den Block «Health-Check 2026-06-02» benannt: zwei
  Flags, Gebühren 1-3 ‰ ([[baubewilligungsverfahren]]) und BZO-Richtwert-Tabelle
  ([[zonenkonformitaet]]).
- **BZO-Richtwert-Tabelle — stale:** die Forderung («Einzelwerte gegen aktuelle BZO prüfen»)
  ist bereits durch Run 56 (25.07.2026, Art. 13/14/18 BZO Zürich-Stadt, dabei eine komplette
  unbelegte Platzhaltertabelle aufgedeckt und ersetzt) und Run 75/77 (23.08.2026, Art. 3/6/20a/25
  BZO Thalwil) amtlich erfüllt. Nur Verifikationsvermerk ergänzt, keine Inhaltsänderung nötig.
- **Gebühren-Flag — echte, bisher unbelegte Lücke, jetzt geschlossen:** anders als die
  vorangegangenen Buch-Stale-Flag-Runs betrifft dieser Punkt keine Buch-/PBG-Materie — Volltext-
  suche in `raw/260607_amtlich_zh_pbg.md` bestätigt, dass das PBG selbst **keine**
  Promille-Bestimmung für Baubewilligungsgebühren enthält (nur § 231 Abs. 4 PBG, Gebührenordnung
  für Beanspruchung öffentlichen Grundes — nicht einschlägig — und § 338 PBG, Gerichtsgebühr
  Baurekursgericht). Baubewilligungsgebühren sind rein kommunale Materie und daher über
  WebSearch/WebFetch statt Buch/zhlex recherchiert:
  1. **NEU** `raw/260824_amtlich_zh_thalwil-gebuehrenverordnung.md` — Gebührenverordnung Thalwil
     (SR 600.1, Erlassdatum 7.12.2017, vorliegende Fassung in Kraft seit 1.1.2024), Auszug Art. 1/
     4/5 (Allgemeine Bestimmungen) und Art. 21-24 (Abschnitt Bauwesen), bezogen via WebSearch →
     Gesetzessammlung-Erlassseite → PDF-Download → `pdftotext -layout` (absoluter Pfad
     `/opt/homebrew/bin/pdftotext` nötig, nicht im PATH dieser Session). Kernbefund: die
     Verordnung selbst nennt keine Promille-/Prozentsätze, sondern delegiert die effektiven
     Ansätze an ein separates, amtlich publiziertes «Gebührenreglement Bauwesen» (laut
     Suchtreffer in Kraft seit 1.1.2018) — dieses war über die JS-gerenderte
     Gesetzessammlung-Suche (Filterformular ohne direkt verlinkbare Trefferliste) nicht
     auffindbar, gleiche technische Fallgruppe wie das in `docs/referenz/fedlex-volltexte.md`
     dokumentierte Fedlex-JS-Problem. Bleibt offener Restpunkt.
  2. **NEU** `raw/260824_amtlich_ch_pue-baubewilligungsgebuehren-studie.md` — Preisüberwacher-
     Studie «Grosse Unterschiede bei Baubewilligungsgebühren» (WBF/PUE, November 2014, amtliche
     Publikation admin.ch), Vergleich der 30 einwohnerstärksten Schweizer Gemeinden für drei
     Haustypen (15-MFH/5-MFH/EFH). Kernzahlen: höchste vs. tiefste Gebühr liegt beim Faktor
     12-20 auseinander (15 MFH CHF 30'099.50 vs. 1'512.50; 5 MFH CHF 16'588 vs. 1'320; EFH
     CHF 7'895 vs. 640); eigene Kontrollrechnung gegen die im Original genannten Bausummen ergibt
     eine reale Bandbreite von ca. 0,3-11 ‰ der Bausumme statt eines fixen Satzes. **Zürich Stadt
     wird im Fliesstext explizit als eine der teuersten Gemeinden bei allen drei Haustypen
     genannt.** Datiert (Stand Juni 2014) — als Beleg für Struktur/Bandbreite geeignet, nicht als
     aktueller Tarif.
- **GEÄNDERT** `wiki/baubewilligungsverfahren.md`: Abschnitt «Gebühren» neu geschrieben — statt
  des unbelegten Pauschalwerts «1-3 ‰» jetzt (1) die rechtliche Einordnung (kommunale, nicht
  kantonale Materie, PBG-Volltext geprüft), (2) die reale Bandbreite aus der Preisüberwacher-
  Studie (≈0,3-11 ‰, Zürich Stadt unter den teuersten), (3) der Hinweis auf die zweistufige
  Struktur (Gebührenverordnung + Gebührenreglement) am Beispiel Thalwil. Neuer
  `verifiziert`-Eintrag 2026-08-24f, `sources` um die beiden neuen raw-Dateien ergänzt.
- **GEÄNDERT** `wiki/zonenkonformitaet.md`: nur `verifiziert`-Eintrag 2026-08-24g (Stale-Flag
  bestätigt), `last_updated` nachgezogen — keine inhaltliche Änderung.
- **GEÄNDERT** `wiki/QUESTIONS.md`: Block «Health-Check 2026-06-02» vollständig geschlossen (alle
  drei Punkte durchgestrichen mit Fundstellenverweis).
- **GEÄNDERT** `training/KORPUS-QUEUE-thalwil-reglemente.md`, `training/PROGRAMM.md` — Run-115-
  Nachtrag.
- **Damit ist die gesamte chronologische Stale-Flag-Sweep-Kette durch `wiki/QUESTIONS.md`
  (Run 90-115) abgeschlossen** — kein aus der ursprünglichen Health-Check-/Kapitel-Historie
  bekannter offener Block mehr. Verbleibende offene Punkte: `RRB 262/2010` (Run 114, Beschluss-
  Nummer im Buch-Reader schwer lesbar) und «Gebührenreglement Bauwesen Thalwil» (dieser Run,
  JS-Portal-Problem).
- REPORT `outputs/2026-08-24_buch-run115.md`.

## 2026-08-24 — Buch-Run 114: Stale-Flag-Block Kap. 2 T3/3 T1/6 T2 vollständig geschlossen — Kap. 3 Teil 2 (Grenzbereinigung/Gebietssanierung/Landumlegung) war bereits seit 14.07.2026 distilliert, alle drei needs-verification-Listen bereits durch Run 36/37/39/40/43/44 CONFIRMED
- **GEÄNDERT** `wiki/QUESTIONS.md`: Block «2026-07-02, Kap. 2 T3/3 T1/6 T2» vollständig geschlossen
  (5 Flags). Der Punkt «NEU: Kap. 3 Teil 2 offen» war stale — `buecher/band-1/
  03-quartierplan-landumlegung-teil2.md` (S. 240-265, `status: established`, verifiziert
  14.07.2026) deckt Quartierplan-Rest, Grenzbereinigung (§§ 178-183 PBG), Gebietssanierung
  (§ 186 ff. PBG) und Güterzusammenlegung (§§ 76-94 LG) bereits vollständig ab — die Distillation
  war am selben Tag abgeschlossen wie Buch-Run 44 (§ 160a/§ 160b/§ 81/§ 129 PBG), der Zeiger im
  QUESTIONS.md war seither nie nachgezogen worden. Die drei needs-verification-Listen (Kap. 3 T1,
  Kap. 2 T3, Kap. 6 T2) sind ebenfalls stale: alle darin genannten §§/Erlasse waren bereits durch
  Buch-Run 36 (13.07.2026, § 90-95/96-101/106/111/114-122 PBG + § 325/§ 325a PBG/§§ 4-7 BBV I),
  Run 37 (§ 49b/§§ 83-89/§ 44a PBG), Run 39 (Kap. 6 T2 Feinschliff), Run 40 (§ 62 StrG korrigiert)
  und Run 44 (Art. 4/5 WEG, Art. 19 Abs. 1-3 RPG) CONFIRMED und in den betreffenden Wiki-Artikeln
  belegt. **Einzige echte, weiterhin offene Lücke: `RRB 262/2010`** (Gestaltungsgrundsätze
  Staatsstrassen) — Beschluss-Nummer im Buch-Reader schwer lesbar, kein amtliches ZH-RRB-Archiv
  2010 im Hub verfügbar; Flag bleibt `speculative` in `03-erschliessung-landsicherung-teil1.md`.
- **KEINE inhaltlichen Änderungen** an Wiki-Artikeln nötig — [[raumplanung-und-gestaltung]],
  [[baureife-und-erschliessung]], [[baulinien-und-abstandslinien]] und [[baubewilligungsverfahren]]
  trugen die Verifikationsvermerke bereits korrekt; nur der Zeiger im QUESTIONS.md war veraltet.
  Reine Bibliothekars-Buchhaltung (Lehre: Stale-Flag-Sweeps finden häufiger unnachgezogene Zeiger
  als echte Lücken, sobald die Bundesrechts-/Modell-D-Kette schon durchgelaufen ist).
- **GEÄNDERT** `training/KORPUS-QUEUE-thalwil-reglemente.md`, `training/PROGRAMM.md` — Run-114-
  Nachtrag, nächster Schritt: Stale-Flag-Block «Health-Check 2026-06-02» (`QUESTIONS.md`
  Zeile ~2326+, Gebühren 1-3‰ + BZO-Richtwert-Tabelle, ein Punkt darin bereits am 11.06.2026
  geklärt).
- REPORT `outputs/2026-08-24_buch-run114.md`.

## 2026-08-24 — Buch-Run 113: Stale-Flag-Block Kap. 1/Kap. 2 T1/Kap. 12 T3 vollständig geschlossen — «§ 935»-Rätsel als § 70 PBG (aufgehoben) aufgelöst, §§ 8a-8e EnerG als Stromnetz-Vollzug statt Bauenergiesparmassnahmen entlarvt, PBG-Titelgliederung komplett CONFIRMED
- **NEU** `raw/260712_amtlich_zh_energ.md`, Nachtrag «Buch-Run 113: §§ 7-8e EnerG» — vollständiger
  amtlicher Wortlaut §§ 7/8/8a-8e EnerG (Nachtrag 129), frisch von zhlex bezogen (PDF, `pdftotext
  -layout`). § 8 EnerG ist seit 1.6.2022 aufgehoben; §§ 8a-8e (Titel «II a. Vollzug des
  Stromversorgungsgesetzes», eingefügt seit 1.3.2011) regeln Netzgebiets-Zuteilung, Leistungsaufträge,
  **Anschlussrecht/-pflicht (§ 8c)**, Tarifangleichung, Rechtsschutz — eine andere Materie als die
  Bauenergiesparmassnahmen §§ 9 ff. Die Buch-Spanne «§§ 8a/9-13 EnerG» als zusammenhängender Block
  ist damit widerlegt.
- **GEÄNDERT** `wiki/baureife-und-erschliessung.md`: EnerG-Abschnitt korrigiert (§ 8a-Frage aus
  Buch-Run 9 geschlossen), § 8c EnerG neu als tragende Norm für die Anschlusspflicht ans
  Elektrizitätsnetz ergänzt (strukturell analog zu § 97 WsG bei Wasser); § 39 WWG (Finanzierung)
  als ohne praktische Relevanz ergänzt (abgelöst durch § 100 WsG, WWG per 1.6.2026 aufgehoben).
- **GEÄNDERT** `wiki/raumplanung-und-gestaltung.md`, Abschnitt Arealüberbauung: das im Buch als
  «§ 935» notierte Rätsel um den Arealüberbauungsbonus aufgelöst — kein OCR-Fehler, sondern
  **§ 70 PBG**, seit 1.2.1992 aufgehoben (G vom 1.9.1991, OS 51, 817), CONFIRMED gegen
  `raw/260607_amtlich_zh_pbg.md` Z. 793; der Bonus liegt seither ausschliesslich in der kommunalen
  BZO (§ 69 PBG i.V.m. § 72 PBG), kein kantonaler Fixwert.
- **GEÄNDERT** `buecher/band-1/02-nutzungsplanung-zonenarten-teil2.md`, `buecher/band-1/
  01-grundlagen.md`: Korrekturvermerke zum «§ 935»-Fund sowie Bestätigung der vollständigen
  PBG-Titelgliederung — alle sieben Titelgrenzen direkt am amtlichen Volltext gelesen (I §§1-7 ·
  II §§8-202 · III §§203-217 · IV §§218-328 · V §§329-339b · VI §§340-341 · VII §§342-361),
  Buchtabelle war bereits wortgleich richtig.
- **GEÄNDERT** `wiki/QUESTIONS.md`: Block «2026-06-30, Kap. 1/Kap. 2 T1/Kap. 12 T3» vollständig
  geschlossen (3 Flags) — Kap.-12-T3-Restpunkte (§ 237 Abs. 4 PBG, § 16 FeuerwehrV, §§ 109-115 LG,
  Art. 694 ZGB, Art. 10/11/17 GSchG, § 8 KGSchV) waren bereits durch Run 71/86/93 CONFIRMED, nur der
  Zeiger war veraltet; § 27/§ 39 WWG neu als ohne praktische Relevanz geschlossen.
- **GEÄNDERT** `training/KORPUS-QUEUE-thalwil-reglemente.md`, `training/PROGRAMM.md` — Run-113-
  Nachtrag mit vollständiger Befundliste und nächstem Schritt (Stale-Flag-Block «2026-07-02, Kap. 2
  T3/3 T1/6 T2», `QUESTIONS.md` ab Zeile ~2282, inkl. noch nicht distillierter Kap. 3 Teil 2).
- REPORT `outputs/2026-08-24_buch-run113.md`.


## 2026-08-24 — Buch-Run 112: Reglemente-Queue-Restpunkte aus Run 111 abgearbeitet — VErV ersetzt auch ZN+VSiV (nicht nur StrAV), Zugangskategorien-Schwellenwerte korrigiert, Art. 3a ABV als Verwechslung mit Bundesrecht BauAV aufgelöst, kompletter Kap.-12-Stale-Flag-Block bereits erledigt
- **NEU** `raw/260824_amtlich_ch_bauav-art3-82-86.md` — Art. 3 Abs. 2 (Gefährdungsermittlung
  Asbest/PCB) und Art. 82-86 (Bestimmungen für anerkannte Asbestsanierungsunternehmen, insb.
  Art. 86 Meldepflicht 14 Tage vor Suva) der Bauarbeitenverordnung (BauAV, SR 832.311.141), frisch
  von Fedlex bezogen (Filestore-Route, Konsolidierung 01.01.2024), CONFIRMED.
- **GEÄNDERT** `wiki/bauausfuehrung-und-baukontrolle.md`: **Art. 3a ABV war eine
  Abkürzungsverwechslung**, keine reine Zeiger-Korrektur — die kantonale ABV kennt keinen Art. 3a
  (Run 111 hatte das bereits negativ geprüft), die zutreffende Norm ist Bundesrecht (Art. 3 Abs. 2
  + Art. 82-86 BauAV). Derselbe Artikel zitierte dieselbe Asbest-Meldepflicht im Abschnitt
  «Arbeitnehmerschutz» bereits korrekt, aber mit der Vor-2021-Nummerierung «Art. 60a/60b BauAV» —
  beide Stellen jetzt auf die aktuelle Fundstelle harmonisiert. Offen bleibt nur die
  Datumsgenealogie «seit 1.6.2018» (alte Fedlex-ELI 2005/560 lieferte keinen Snapshot-Treffer,
  mehrere Kandidatendaten getestet).
- **GEÄNDERT** `wiki/baureife-und-erschliessung.md`, Abschnitt «Rechtsgrundlagen &
  Verordnungsstand» — **echte, mehrschichtige Korrektur:** (1) nicht nur die Strassenabstands-
  verordnung (StrAV), auch die Zugangsnormalien (ZN) und die Verkehrssicherheitsverordnung (VSiV)
  sind per 01.06.2020 aufgehoben, alle drei zusammengeführt in der Verkehrserschliessungsverordnung
  (VErV, LS 700.4) — Beleg Dispositiv IV/V des bereits am 03.08.2026 beschafften, aber gegen diese
  Frage nie geprüften `raw/260803_amtlich_zh_verkehrserschliessungsv.md`; (2) die vom Buch (Bd 2,
  S. 750) als «EV» bezeichnete Erschliessungsverordnung ist dieselbe VErV (identisches
  Erlassdatum 17.04.2019, identische Vorgänger-Trias ZN/VSiV/StrAV) — das Buch (6. Aufl. 2019)
  verwendet für den zum Erscheinungszeitpunkt noch nicht in Kraft stehenden Erlass eine andere
  Arbeitsabkürzung; (3) die Zugangskategorien-Schwellenwerte stehen nicht in §§ 11/12 VErV
  (das regelt nur Kriterien/Verfahren der nachgelagerten Feinerschliessungsplanung), sondern in
  **Anhang 1 VErV**, freigegeben über **§ 10 Abs. 3/4 VErV**; (4) der WE-Wert für Zufahrtsstrasse 1
  war zusätzlich falsch übernommen — **150/300 WE**, nicht 100/300 WE (vollständige Tabelle:
  Zufahrtsweg 50/100, Zufahrtsstrasse 1 150/300, Zufahrtsstrasse 2 300/600, Erschliessungsstrasse
  600/1200 WE).
- **GEÄNDERT** `wiki/QUESTIONS.md`: «16.9-Schluss» geschlossen (stale — Shots 607-622 bereits
  vollständig erfasst, 16.9-Auslegung endet regulär im Buch, keine Buch-Seitenlektüre nötig); der
  komplette Block «2026-06-26/06-30, Kap. 12» als durchgängig stale geschlossen (§§ 120/150/264/346
  PBG bereits 13.07.2026 volltextverifiziert, Kap. 12 Teil 4 bereits 2026-07-03/Run 20 vollständig
  distilliert, § 227 PBG/§ 12 BBV II bereits belegt) — mit Ausnahme der «Stand EV»-Frage, die eine
  echte Korrektur statt einer reinen Bestätigung war (s.o.); § 8 Abs. 2 IDG ZH bleibt offen, aber
  neuer Hinweis: der zitierte Drohnen-Fall Horw ist ein Luzerner, kein Zürcher Fall (Kantonsgericht
  LU, 18.04.2018) — «IDG ZH» als Fundstelle mutmasslich falsch, nicht vertieft geprüft (tangential).
- **GEÄNDERT** `training/KORPUS-QUEUE-thalwil-reglemente.md`, `training/PROGRAMM.md` — Run-112-
  Nachtrag mit vollständiger Befundliste und nächstem Schritt (Stale-Flag-Blöcke Kap. 1/2 T1/12 T3
  und Kap. 2 T3/3 T1/6 T2, `QUESTIONS.md` ab Zeile ~2213).
- REPORT `outputs/2026-08-24_buch-run112.md`.


## 2026-08-24 — Buch-Run 111: Stale-Flag-Sweep Kap. 8 T2/13 T2/16 T3 — Kap. 16 T3 komplett stale, vier echte Neubefunde Kap. 13 T2 (§ 241 PBG, Art. 6 SVG, Art. 95-99 SSV, Art. 15 FrSV), Fassungsstand-Falle § 16 StrAV → Anhang 3/4 VErV, falsche Prämisse §§ 242/248-Flag aufgelöst, § 12a BBV I korrigiert (Suchfehler behoben)
- **NEU** `raw/260824_amtlich_ch_svg-art6.md`, `raw/260824_amtlich_ch_ssv-art95-99.md`,
  `raw/260824_amtlich_ch_frsv-art15.md` — Art. 6 SVG (Reklamen), Art. 95-99 SSV (Strassenreklamen),
  Art. 15 FrSV (Neobiota) frisch von Fedlex bezogen (ELI per WebSearch ermittelt), alle drei
  **CONFIRMED wortgleich** gegen das Buch-Destillat `buecher/band-2/13-weitere-grundanforderungen-
  teil2.md`.
- **GEÄNDERT** `wiki/umgebungsgestaltung-und-einfriedungen.md`: neue Sektion «§ 241 PBG und
  Strassenreklamen» (Ersatzzufahrt/Enteignungsrecht CONFIRMED gegen `raw/260607_amtlich_zh_pbg.md`,
  Strassenreklamen-Bundesrecht CONFIRMED), neue Sektion «Gebietsfremde Organismen/Neobiota»; **§ 23
  VErV/Anhang-3-4-Ergänzung mit echter Korrektur:** die Konkordanz-Tabelle führte «Sichtbereiche
  freihalten → § 23 VErV, neu gefasst» bereits, ohne zu prüfen, dass § 23 selbst keine Masszahl
  trägt — Anhang 3 (Fahrbahn, jetzt geschwindigkeitsabhängig statt fest 90 m innerorts/150 m
  ausserorts, Tabelle im Original formatierungsgestört, nicht geraten) und Anhang 4 (Velowege,
  neigungsabhängig 30-50 m statt fest 50 m, sauber extrahiert) ersetzen den StrAV-§-16-Fixwert
  strukturell, nicht nur nummernweise — analog zur §§-10-12-StrAV-Falle aus Run 89.
- **GEÄNDERT** `wiki/baubewilligungsverfahren.md`: vollständiger Bewilligungspflicht-Katalog
  § 309 Abs. 1 lit. a-o PBG neu als Tabelle (bislang nur pauschal «§§ 309 ff. PBG»), CONFIRMED
  gegen `raw/260607_amtlich_zh_pbg.md`. Löst dabei die QUESTIONS.md-Flag «§§ 242 (Antennen)/248
  (Camping/Fahrnisbauten)» auf: die Prämisse war falsch — § 242/§ 248 PBG regeln tatsächlich
  Fahrzeugabstellplätze bzw. Spiel-/Ruheflächen (beide bereits seit Buch-Run 70 in
  [[fahrzeugabstellplaetze-und-parkierung]] established), Aussenantennen stehen in § 309 Abs. 1
  lit. l PBG als reiner Bewilligungstatbestand ohne eigene materielle Norm.
- **GEÄNDERT** `wiki/bauausfuehrung-und-baukontrolle.md`: § 24 BVV (elektronische
  Protokollierungspflicht der Baukontrollen, qualifizierte elektronische Signatur) als echte
  Lücke ergänzt. **Korrektur:** § 12a BBV I/II war fälschlich als «Austrocknung → BBV I /
  Sanitäreinrichtungen → BBV II» aufgeteilt zitiert — ein früherer Suchlauf hatte die Fundstelle
  im Raw-Volltext übersehen, weil sie dort als **«§ 12 a.» mit Leerzeichen** erfasst ist; beide
  Kriterien stehen tatsächlich im selben § 12a BBV I, die BBV II kennt kein § 12a. Art. 3a ABV
  bleibt trotz erneuter Suche (inkl. Leerzeichen-Variante) NICHT im amtlichen ABV-Volltext
  verifizierbar — unverändert stehen gelassen, als offene Diskrepanz in `QUESTIONS.md` geführt,
  nicht ohne Gegenbeleg entfernt.
- **GEÄNDERT** `wiki/QUESTIONS.md`: Block «2026-07-09» (Kap. 8 T2/13 T2/16 T3) vollständig
  abgearbeitet (Kap. 16 T3 als stale geschlossen, Kap. 13 T2 mit vier Neubefunden + einer echten
  Fassungsstand-Korrektur geschlossen, «16.9-Schluss» bleibt offen); Block «2026-06-22» (Kap. 8)
  teilweise abgearbeitet (§ 239/§ 309 Abs. 1 lit. c/§ 12a BBV I/§ 24 BVV/Art. 16 VVEA geschlossen,
  Art. 3a ABV und § 8 Abs. 2 IDG ZH bleiben offen).
- **GEÄNDERT** `training/KORPUS-QUEUE-thalwil-reglemente.md`, `training/PROGRAMM.md` — Run-111-
  Nachtrag mit vollständiger Befundliste und nächstem Schritt (weitere Blöcke Kap. 12/1/2/3/6).
- REPORT `outputs/2026-08-24_buch-run111.md`.


## 2026-08-24 — Buch-Run 110: Stale-Flag-Sweep Kap. 7 T1/T2 — zwei stale Zeiger geschlossen, zwei echte Lücken neu belegt (§§ 5a/13/14 VRG, Art. 138 ZPO, Art. 49 BGG, § 20 BVV)

- **Ausgangslage:** Fortsetzung von Run 109 (Stale-Flag-Sweep in `wiki/QUESTIONS.md`); nächstältere
  Blöcke «Kap. 7 Teil 1» (2026-06-19) und «Kap. 7 Teil 2» (2026-06-21) geprüft, vier
  `needs-verification`-Flags.
- **Zwei Flags waren stale:** § 322/§ 324 PBG bereits CONFIRMED via Buch-Run 66/96
  (`verifiziert`-Feld [[baurechtlicher-vorentscheid-und-voranfrage]]); § 328 PBG bereits CONFIRMED
  via Buch-Run 30 (`verifiziert`-Feld [[bauausfuehrung-und-baukontrolle]]); § 326 PBG + Art. 962
  ZGB/Art. 164 GBV bereits CONFIRMED via Buch-Run 67 (`verifiziert`-Feld
  [[nebenbestimmungen-und-reverse]]) — nur der Zeiger in `QUESTIONS.md` war veraltet, kein neuer
  Fachbefund.
- **Zwei Flags waren echte, bisher ungeprüfte Lücken — jetzt geschlossen:**
  1. **§§ 5a/13/14 VRG** frisch von zhlex bezogen (`erlass-175_2-1959_05_24-1960_05_01-133.html`,
     weiterhin Nachtrag 133, keine Drift seit Run 64) und in `raw/260712_amtlich_zh_vrg.md`
     additiv nachgetragen. **§ 5a VRG (Ausstand)** war im Wiki bislang gar nicht geführt — neuer
     Abschnitt 2b in [[rechtsschutz-und-rechtsmittelverfahren]]. **§ 13 Abs. 2 VRG**
     (Unterliegerprinzip) CONFIRMED wortgleich. **§ 14 VRG präzisiert eine bisherige Vermutung:**
     die Grundregel bei gemeinsam Beteiligten ist **subsidiäre Haftung für das Ganze zu gleichen
     Teilen**, Solidarhaftung nur ausnahmsweise aus dem Rechtsverhältnis der Beteiligten (nicht
     Solidarhaftung als Regel, wie die alte QUESTIONS.md-Formulierung vermuten liess).
  2. **Art. 138 ZPO + Art. 49 BGG** erstmals von Fedlex bezogen — neue Primärquellen
     `raw/260824_amtlich_ch_zpo-art138.md` (SR 272, ELI 2010/262, Stand 1.1.2025 — Stand
     1.1.2026/1.1.2024 liefern nur die 77'151-Byte-JS-App-Hülle) und
     `raw/260824_amtlich_ch_bgg-art49.md` (SR 173.110, ELI 2006/218 — drei geratene ELI
     2006/166/2006/1069/2006/1205 scheiterten, korrekte ELI erst per WebSearch gefunden). Beide
     **CONFIRMED wortgleich**: Art. 138 Abs. 3 lit. a ZPO (Zustellfiktion 7. Tag), Art. 49 BGG
     (aus fehlender/unrichtiger Rechtsmittelbelehrung kein Nachteil). Zusätzlich **§ 20 BVV**
     (Gültigkeitsdauer-Definition) neu CONFIRMED gegen `raw/260607_amtlich_zh_bvv.md`. Alle drei
     bislang nicht in [[baurechtlicher-vorentscheid-und-voranfrage]] geführt — neuer Abschnitt
     «Zustellung, Rechtsmittelbelehrung, Gültigkeitsdauer der Bewilligung».
- **In die KB eingearbeitet:** `raw/260712_amtlich_zh_vrg.md` (additiver Nachtrag §§ 5a/13/14),
  zwei neue Primärquellen (ZPO/BGG), zwei Wiki-Artikel (neue Abschnitte + Frontmatter/verifiziert),
  `wiki/QUESTIONS.md` (vier Bullets geschlossen), `training/KORPUS-QUEUE-thalwil-reglemente.md`,
  `training/PROGRAMM.md` (Tracker), dieses CHANGELOG.
- **Nächster Schritt:** Stale-Flag-Sweep an den nächstälteren Blöcken fortsetzen (Kap. 8/12/1/2/3/6,
  `QUESTIONS.md` ab ca. Zeile 2060) — einige enthalten nach erster Durchsicht echte, weiterhin
  offene Lücken (z.B. §§ 120/150/264/346 PBG in Kap. 12), nicht nur veraltete Zeiger.

## 2026-08-24 — Buch-Run 109: drei veraltete needs-verification-Flags in QUESTIONS.md geschlossen (Bookkeeping, kein neuer Fachbefund)

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterführen» (Batches T1-T8/T9).
  CHANGELOG und `outputs/2026-08-24_buch-run108.md` gelesen: Queue T1-T9 und ihre Nachträge
  (Run 104-108) sowie die Bundesrechts-Re-Verifikationskette (Run 90-103) sind laut eigenen
  Abschlussvermerken vollständig. Run 108 nennt als Option 4 «`QUESTIONS.md` nach weiteren
  offenen Punkten sichten» — analog zu Run 105 (der dasselbe Muster bereits dreimal fand).
- **Fund:** Der Block «Offene Wissenslücken / needs-verification — neu (2026-07-08, aus
  Buch-Run 23: Kap. 4 Natur-/Heimatschutz)» führte drei `needs-verification`-Flags, die
  inhaltlich längst durch spätere Läufe geschlossen waren, aber nie als erledigt
  nachgetragen wurden — dieselbe Lücken-Familie wie Run 105 (fehlende Schliessungs-
  Nachträge trotz erledigter Sache).
- **Geprüft und bestätigt (keine neue Quelle nötig, nur Gegenlesen des bestehenden
  `verifiziert`-Felds in [[naturschutz-und-denkmalschutz]] und [[rechtsschutz-und-
  rechtsmittelverfahren]]):**
  1. KNHV-Paragraphen §§ 2a/4/6/7/8/9/10/12/13-32: `raw/260714_amtlich_zh_knhv.md`
     (Nachtrag 130) seit Buch-Run 39 (14.07.2026) in der KB; §§ 10/12 KNHV zuletzt in
     Buch-Run 61 (27.07.2026) CONFIRMED gegen den Volltext, 0 Korrekturen.
  2. §§ 203/205/207/209/210/211/213/216/217 PBG + § 50/§ 76/§ 238/§ 338b PBG: alle
     wortlautgeprüft gegen `raw/260607_amtlich_zh_pbg.md` (Buch-Run 31/33, vollständig
     bestätigt Run 61). Die Bundesrechts-Zitate Art. 78 Abs. 1 BV, Art. 2/3/5/7/8/13/17/
     17a/25 NHG und Art. 17 RPG wurden erstmals in Buch-Run 99 (23.08.2026, Modell-D-
     Re-Verifikationskette) gegen frische fedlex-Volltexte geprüft — CONFIRMED wortgleich,
     0 Korrekturen.
  3. VRG-Paragraphen Kap. 9 Teil 2 (§ 25/§ 26b/§ 86a-d/§ 87/§ 89 VRG + § 338/§ 339 PBG):
     CONFIRMED in Buch-Run 44 (14.07.2026); Fassungsstand § 26b VRG (in Kraft seit
     1.10.2016) und § 339 PBG (in Kraft seit 1.7.2014) unverändert bestätigt, zuletzt
     Nachtrag-133-Check Buch-Run 64 (27.07.2026); die Gerichtsgebühr-Bandbreite
     Fr. 500-50'000 steht wortwörtlich in § 338 Abs. 2 PBG (CONFIRMED, Buch-Run 46).
- **In die KB eingearbeitet:** `wiki/QUESTIONS.md` — alle drei Flags durchgestrichen und mit
  Fundstellenverweis auf die tragenden Runs als erledigt markiert, gleiche Nachtrags-Optik
  wie bei Run 105. **Kein Wiki-Artikel geändert** (keine neue Erkenntnis, nur Schliessung
  einer bereits gelösten, aber unbereinigten Frage). `training/KORPUS-QUEUE-thalwil-
  reglemente.md` (Run-109-Absatz nach Run 108) und `training/PROGRAMM.md`
  (Tracker-Eintrag) nachgeführt.
- **Nächster Schritt:** kein Fachpunkt mehr aus der Thalwil-Queue oder ihren bisher
  gesichteten Nachträgen offen. Ältere `QUESTIONS.md`-Blöcke (ab ca. Zeile 2000, Kap. 7/8/
  12/16 Teil 2/3) sind noch nicht auf denselben Stale-Flag-Befund geprüft — Kandidat für
  einen künftigen Lauf. Sonst regulärer Health-Check-Turnus oder eine zweite
  Re-Verifikationsrunde.
- Report `outputs/2026-08-24_buch-run109.md`.

## 2026-08-24 — Buch-Run 108: «zaegig» in `bauausfuehrung-und-baukontrolle.md` war ein Digitalisierungs-Artefakt, VB.2014.00026 volltextverifiziert

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterführen» (Batches T1-T8/T9).
  CHANGELOG und `outputs/2026-08-24_buch-run107.md` gelesen: die Queue und die Bundesrechts-
  Re-Verifikationskette sind vollständig; Run 107 liess als einzigen offenen Punkt das
  verdächtige Wort «zaegig» in [[bauausfuehrung-und-baukontrolle]] Z. 81 stehen (bewusst nicht
  geraten, sondern in `wiki/QUESTIONS.md` als Auftrag für einen künftigen Lauf vermerkt: den
  zitierten Entscheid VB.2014.00026/BEZ 2014 Nr. 46 im Volltext beziehen).
- **Beschaffung:** `entscheidsuche.ch` führt VB.2014.00026 (Verwaltungsgericht ZH,
  1. Abteilung/1. Kammer, 22.05.2014) im Volltext als HTML — keine PDF-Extraktion nötig (anders
  als bei der BRGE-Quelle in Run 104). Bundesgericht ist am 21.07.2014 auf eine Beschwerde nicht
  eingetreten, der Entscheid ist rechtskräftig.
- **Kernbefund:** Erwägung 3.1.2 lautet wörtlich: «Ein Unterbruch der Bauarbeiten während
  längerer Zeit im Sinn von § 328 Abs. 1 PGB liegt mit anderen Worten auch dann vor, wenn an
  einer Baute zwar regelmässig, aber **derart langsam gearbeitet wird**, dass die Gesamtdauer
  der Bauarbeiten in keinem vernünftigen Verhältnis zum Bauvolumen bzw. der Bauaufgabe mehr
  steht.» Das Wort **«zaegig» kommt im amtlichen Text nicht vor** — weder als Adjektiv noch als
  Umlaut-Ersatzschreibung auflösbar (Run 107 hatte «zögerlich»/«schleppend» als mögliche, aber
  unbelegte Lesarten diskutiert; beide treffen nicht zu). Der im Wiki paraphrasierte Massstab
  («Missverhältnis zu Volumen/Aufgabe») war inhaltlich bereits korrekt, nur der Wortstamm
  «zaegig» selbst war ein Digitalisierungs-/Diktier-Artefakt ohne Grundlage im Original.
- **In die KB eingearbeitet:** NEU `raw/260824_amtlich_zh_vb-2014-00026.md` (Regeste +
  E. 3.1.2/3.1.3 wörtlich, Provenienz-Frontmatter, gemeinfrei Art. 5 URG). GEÄNDERT
  [[bauausfuehrung-und-baukontrolle]]: Abschnitt 5 korrigiert (Originalzitat statt Vermutung,
  Rechtsfolge-Massstab nach der Gesamtbetrachtungs-Doktrin präzisiert), Frontmatter
  (`last_updated`, `sources`, `verifiziert`) nachgeführt. GEÄNDERT `wiki/QUESTIONS.md`: neuer
  Abschluss-Eintrag direkt über dem unveränderten Run-107-Eintrag (Nachvollziehbarkeit der
  ursprünglichen Fragestellung bleibt erhalten). GEÄNDERT
  `training/KORPUS-QUEUE-thalwil-reglemente.md` und `training/PROGRAMM.md`: Run-108-Absatz
  ergänzt.
- **Diff-Kontrolle** (Rule `auto-verbesserungen` 260811): `git status --short wissen/baurecht/`
  vor dem ersten Edit sauber. Nach jedem Schreiben `git diff --numstat` geprüft: neue Raw-Datei
  als `??` (untracked, kein Diff-Risiko); `bauausfuehrung-und-baukontrolle.md` 10/6 (Frontmatter-
  Zeilenersatz + Bullet-Ersatz, gegen `git diff` inhaltlich geprüft, keine fremde Zeile berührt);
  `QUESTIONS.md` 12/0 rein additiv; `KORPUS-QUEUE-thalwil-reglemente.md` 14/0 rein additiv;
  `training/PROGRAMM.md` 10/0 rein additiv. **Konkurrenz-Check:** `ps aux` vor Arbeitsbeginn
  zeigte den eigenen Session-Wrapper-Prozess (identischer Prompt-Text, laut Sitzungsauftrag der
  eigene Lauf, kein Konkurrent) sowie einen unabhängigen Desktop-Claude-Prozess ohne Bezug zu
  `wissen/baurecht/`.
- Report `outputs/2026-08-24_buch-run108.md`.

## 2026-08-24 — Buch-Run 107: Health-Check-Phase-2 (Umlaut-Ersatzschreibung) — der 340-Treffer-Befund zählte blind, maskiert blieben ~20 echte Stellen in 8 Artikeln

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterführen». CHANGELOG (bis Run 106)
  und `training/KORPUS-QUEUE-thalwil-reglemente.md` gelesen: T1-T9, die Bundesrechts-
  Re-Verifikationskette (Runs 90-103) und der LRV-Nachtrag (Run 106) sind laut eigenen
  Abschlussvermerken vollständig. Run 106 benannte als nächsten Schritt die Health-Check-Aktionen
  aus `outputs/2026-08-24_health-check.md` (Phase 2, unbeaufsichtigt bewusst nicht ausgeführt):
  Top-Befund F1 «~340 ae/oe/ue-Treffer in 23/26 Artikeln», Top-Befund #2 (zwei liegen gebliebene
  Frontmatter-/Backlink-Befunde), F2 (7 dekorative ✅ ausserhalb `QUESTIONS.md`). Vor dem ersten
  Edit `ps aux` geprüft: nur der eigene Session-Prozess auf `wissen/baurecht/`, zwei fremde
  Prozesse an `wissen/normen`/`wissen/energie` — kein Konflikt.
- **B4/F2 bereits erledigt:** `wissen/tools/wiki-konsistenz.sh baurecht` meldete beim Nachprüfen
  **0 Befunde** (nicht die im Health-Check genannten 4). `rechtsschutz-und-rechtsmittelverfahren.md`
  führt bereits ein korrektes `title:`-Feld, `wohnhygiene-und-raumanforderungen.md` zitiert
  `raw/260712_amtlich_zh_energ.md` bereits in Backticks (nicht `[[…]]`), die in `QUESTIONS.md`
  gemeldeten zerrissenen Backlinks existieren nicht mehr, und **kein** Wiki-Artikel ausserhalb
  `QUESTIONS.md` führt noch `✅`/`🟡`. Vermutlich zwischen Health-Check-Lauf (00:13) und diesem Lauf
  durch einen anderen Run geschlossen — hier nur nachgewiesen und im Report vermerkt.
- **F1 (Umlaut-Ersatzschreibung) neu vermessen statt blind übernommen.** Der Health-Check-Grep
  zählte jedes ae/oe/ue-Wort, auch innerhalb von `[[Wiki-Link-Zielen]]`, Backtick-Dateipfaden und
  `raw/`/`wissen/`/`buecher/`-Referenzen — genau diese Bezeichner müssen laut Rule
  `dateinamen-konvention` ASCII bleiben (z.B. `[[abstaende-und-hoehen]]`, `[[zonenkonformitaet]]`,
  Skill-Name `` `ankaufspruefung` ``, Destillat-Dateien wie `13-fahrzeugabstellplaetze-
  spielflaechen-teil3`). Ein Python-Skript hat `[[…]]`, Backtick-Spans und Pfad-Referenzen maskiert
  und die verbleibenden ae/oe/ue-Wortkandidaten (236 eindeutige Tokens aus dem gesamten
  `wiki/*.md`-Bestand) einzeln klassifiziert: die überwältigende Mehrheit (Mauer-, Dauer-, Feuer-,
  Quelle-, quer-, neu-, Frequenz-/Sequenz-/Konsequenz-Familie, `aktuell`/`manuell`/`individuell`/
  `punktuell`/`visuell`, `zuerst`, `Raphael`, `oereb`) sind **bereits korrekt geschriebene** deutsche
  Wörter, die nur zufällig die Buchstabenfolge ae/oe/ue enthalten (z.B. `Baueingabe` = Bau+Eingabe).
  **Übrig blieben rund 20 echte ASCII-Ersatzschreibungen in 8 von 26 Artikeln**, jede einzeln am
  Kontext geprüft und korrigiert: `Gemeindebeschluessen`→Gemeindebeschlüssen, `Bevoelkerung`→
  Bevölkerung (Direktzitat Art. 4 Abs. 2 RPG), `Haelfte`→Hälfte, `Verzoegerungs`-Mehrkosten→
  Verzögerungs-Mehrkosten, `muendlicher`→mündlicher, `geruegt`→gerügt, `juengster`→jüngster,
  `aeusseres`→äusseres, `Verkaufsgeschaefte`→Verkaufsgeschäfte, `Haustuer`/`Tuer`/`Aufzuege`→
  Haustür/Tür/Aufzüge, Überschrift `## Querbezuege`→`## Querbezüge`, `Sekundaerquelle(n)`→
  Sekundärquelle(n) (2×), `Praemisse`→Prämisse, `uebrigen`→übrigen (5×, in
  `ausnahmebewilligung-und-bestandesschutz.md`, `baureife-und-erschliessung.md`,
  `raumplanung-und-gestaltung.md`, `rechtsschutz-und-rechtsmittelverfahren.md`, `QUESTIONS.md`),
  `Ausschuesse`/`Uebrige`→Ausschüsse/Übrige.
- **Ein Wort bewusst nicht korrigiert:** `bauausfuehrung-und-baukontrolle.md` Zeile 81 «so zaegig
  gebaut wird» — keine erkennbare deutsche Ersatzschreibung (eine reine ae→ä-Rückübersetzung ergäbe
  das Nicht-Wort «zägig»); eine Korrektur zu «zögerlich»/«schleppend» wäre eine inhaltliche
  Vermutung, keine Orthografie-Korrektur. Als offene Frage in `wiki/QUESTIONS.md` vermerkt statt
  geraten (Rule `identifikatoren-verifizieren`).
- **In die KB eingearbeitet:** 8 Wiki-Artikel (`ausnahmebewilligung-und-bestandesschutz.md`,
  `baubewilligungsverfahren.md`, `baureife-und-erschliessung.md`,
  `fahrzeugabstellplaetze-und-parkierung.md`, `raumplanung-und-gestaltung.md`,
  `rechtsschutz-und-rechtsmittelverfahren.md`, `wohnhygiene-und-raumanforderungen.md`,
  `QUESTIONS.md`), `training/PROGRAMM.md` (Tracker-Eintrag Run 107),
  `training/KORPUS-QUEUE-thalwil-reglemente.md` (Fortsetzungs-Absatz).
- **Diff-Kontrolle (Rule `auto-verbesserungen` 260811):** `git status --short wissen/baurecht/`
  vor dem ersten Edit gegen den bekannten Run-106-Rest geprüft. Nach jedem Schreibvorgang
  `git diff --numstat` geprüft — jede Datei zeigt genau so viele +/- Zeilen wie beabsichtigte
  Ersetzungen (1/1 bis 8/8), `git diff | grep "^[+-]"` bestätigt: jede geänderte Zeile trägt
  ausschliesslich die gezielt korrigierte Ersatzschreibung, keine fremde Zeile berührt.
- Report `outputs/2026-08-24_buch-run107.md`.

## 2026-08-24 — Buch-Run 106: Anhang 3 LRV Ziff. 4 ff. gelesen — die seit 13.07.2026 offene Frage nach der «Herstellerkonformität kleiner Feuerungen» beruhte auf einer falschen Prämisse

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterführen». CHANGELOG und
  `training/KORPUS-QUEUE-thalwil-reglemente.md` gelesen: T1-T9 (Run 87) und die
  Bundesrechts-Re-Verifikationskette (Runs 90-104) sind laut eigenen Abschlussvermerken
  vollständig; Run 105 (heute, vor diesem Lauf) hat bereits die letzte Bookkeeping-Lücke in
  `wiki/QUESTIONS.md` geschlossen und als nächsten Schritt «Anhang 3 LRV Ziff. 4 ff.» benannt —
  eine seit Buch-Run 33 (13.07.2026) offene, nie vertieft geprüfte Restfrage. Vor dem ersten Edit
  `ps aux | grep "claude -p"` geprüft: nur der eigene Session-Prozess (PID 51801) und zwei fremde
  Prozesse an anderen KBs (`energie`, `normen`) — kein Konflikt auf `wissen/baurecht/`.
- **LRV-Volltext bezogen:** Fedlex, Route `fedlex.data.admin.ch` (Filestore-Muster, Rule
  `docs/referenz/fedlex-volltexte.md`), ELI `1986/208_208_208`, Konsolidierungsdatum 20260101,
  98-seitiges PDF (1,55 MB, `application/pdf` bestätigt). PyMuPDF-Extraktion (kein `pdftotext` auf
  dieser Station), Anhang 3 (Seiten 63-72 des PDF) vollständig gelesen.
- **Kernbefund: die Prämisse der offenen Frage war falsch.** Anhang 3 Ziff. 4 ff. enthält **keine**
  Herstellerkonformitäts-Regelung. Die Gliederung ist eine reine Emissionsgrenzwert-Systematik:
  Ziff. 3 Besondere Vorschriften bei mehreren Einzelfeuerungen, **Ziff. 4 Ölfeuerungen** (41 Heizöl
  Extra leicht, 42 Heizöl Mittel/Schwer), **Ziff. 5 Feuerungen für feste Brennstoffe** (51 Kohle,
  52 Holz), **Ziff. 6 Gasfeuerungen** — je Brennstoff/Leistungsklasse Grenzwerttabellen für Staub,
  CO, NOx, SOx, ohne jede Prüfnorm. Die einzige Konformitäts-Bestimmung im ganzen Anhang steht in
  **Ziffer 524 «Messung und Kontrolle»** (Teil von Ziff. 52 Holzfeuerungen) und ist eng begrenzt:
  serienmässig hergestellte **Einzelraumfeuerungen** (Cheminée-/Kachelöfen) sind von der
  Abnahmemessung befreit, wenn eine Konformitätserklärung nach **Art. 7 der
  Energieeffizienzverordnung (EnEV, SR 730.02)** die Einhaltung von Anhang 1.19 EnEV bestätigt;
  handwerklich hergestellte Öfen sind befreit, wenn sie nach dem
  Kachelofenberechnungsprogramm feusuisse gebaut oder mit einem Staubabscheidesystem nach
  VDI 3670 ausgerüstet sind. Diese Konformitätserklärung ist **EnEV-, nicht LRV-eigenes Recht**
  und betrifft ausschliesslich Einzelraum-Feststofffeuerungen — für Öl-/Gasfeuerungen existiert
  keine Entsprechung.
- **Damit bleibt die bereits am 13.07.2026 (Buch-Run 33) gefundene Antwort vollständig und wird
  bestätigt, nicht revidiert:** Für Öl-/Gasfeuerungen ist die periodische Feuerungskontrolle nach
  Art. 13 Abs. 3 LRV die einzige generelle Qualitätssicherung; eine Nachfolgeregelung zur
  aufgehobenen Konformitätserklärung nach Art. 20 LRV a.F. existiert nicht und wurde auch nicht in
  Anhang 3 verlagert.
- **In die KB eingearbeitet:** `raw/260713_amtlich_ch_lrv.md` (OFFEN-Punkt 1 als erledigt markiert,
  vollständige Auflösung mit Fundstellen ergänzt), `buecher/band-2/17-haustechnische-anlagen-teil3.md`
  (Zeile 75, OFFEN-Vermerk geschlossen), `wiki/QUESTIONS.md` (Eintrag Zeile 1914 geschlossen).
  Kein Edit am Wiki-Artikel [[wohnhygiene-und-raumanforderungen]] — er führte die Aussage zur
  Feuerungskontrolle bereits korrekt, ohne den jetzt geschlossenen OFFEN-Zusatz. Kein neuer
  Wiki-Artikel. `training/PROGRAMM.md` (Tracker-Einträge Run 105 nachgetragen — fehlte, gleiche
  Lücken-Familie wie Run 41 — und Run 106 neu), `training/KORPUS-QUEUE-thalwil-reglemente.md`
  (Fortsetzungs-Absatz ergänzt).
- **Diff-Kontrolle (Rule `auto-verbesserungen` 260811):** `git status --short wissen/baurecht/` vor
  dem ersten Edit sauber. Nach jedem Schreiben `git diff --numstat` geprüft (raw 24/2, buecher-Destillat
  1/1, QUESTIONS.md 1/1) und `git diff | grep "^-"` bestätigt: jede gelöschte Zeile ist exakt die
  gezielt ersetzte Passage, keine fremde Zeile verloren.
- Report `outputs/2026-08-24_buch-run106.md`.

## 2026-08-24 — Buch-Run 105: Reglemente-Queue Thalwil geprüft (weiterhin vollständig T1-T9), drei veraltete QUESTIONS.md-Einträge nachgeschlossen

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterführen». Bestätigt: die Queue
  selbst (T1-T9, Run 87) und die Bundesrechts-Re-Verifikationskette (Runs 90-103, zuletzt
  Run 104 mit BEZ 2019 Nr. 5) sind beide laut ihren eigenen Abschlussvermerken vollständig
  abgearbeitet — kein neuer Batch, kein neuer Re-Verifikationskandidat. Wie von Run 104
  vorgeschlagen (Option 1): `wiki/QUESTIONS.md` systematisch nach offenen Punkten gesichtet.
- **Drei Einträge waren bereits inhaltlich gelöst, aber nie als geschlossen nachgetragen**
  (reine Bookkeeping-Lücke, keine fachliche Lücke): (1) Kap. 15.13 Fassungsstand nPBG/nABV —
  längst durch Buch-Run 31/32 und Buch-Run 84 im Wiki-Artikel [[abstaende-und-hoehen]]
  beantwortet; (2) LSV Art. 40 Abs. 2 / Anhang 3/4 — noch am selben Tag durch Buch-Run 48
  beschafft und verifiziert; (3) «Bauen im Betrieb (Healthcare)» — inzwischen über sechs
  Wiki-Artikel verteilt dokumentiert (nicht vollständig geschlossen: ein bündelnder
  Brücken-Artikel fehlt weiterhin, QUESTIONS.md-Eintrag entsprechend auf ehrlichen
  Zwischenstand aktualisiert statt auf «erledigt» gesetzt).
- **In die KB eingearbeitet:** `wiki/QUESTIONS.md` (drei Einträge nachgeschlossen/aktualisiert,
  Belege auf die tatsächlich lösenden Läufe verlinkt). Kein neuer `raw/`-Volltext, kein
  Wiki-Artikel-Edit — die fachliche Substanz stand bereits korrekt am Zielort.
- **Nächster Schritt:** Anhang 3 LRV Ziff. 4 ff. (Herstellerkonformität kleiner Feuerungen) ist
  eine echte, kleine Restlücke für einen künftigen Beschaffungslauf; ein Brücken-Artikel
  «Bauen im Betrieb (Healthcare)» wartet auf einen auslösenden Praxisfall.
- Report `outputs/2026-08-24_buch-run105.md`.

## 2026-08-24 — Wissens-Chef Run 41 (Cross-KB `normen` ↔ `baurecht`), 3 additive Eingriffe

- `wiki/fahrzeugabstellplaetze-und-parkierung.md` Z. 212-216: **Bring-Schuld an `normen`
  erledigt** — das SIA-500-Korrigendum C3:2013 zu Ziff. 9.7.2/9.7.3 fuehrt
  `normen/destillate/sia-500-2009.md` ab Z. 48 samt Zitierverbot fuer den Basiswert. **Die
  Praemisse «dauerhaft offen, weil kostenpflichtig» ist widerlegt:** SIA-Korrigenda sind
  Preisgruppe 0 und frei beziehbar; die Aussage bleibt richtig fuer die Vollnorm. Alter Absatz
  als datierter Stand belassen.
- `wiki/bestandsumbau-eingriffstiefe.md` Z. 38-40: Norm-Kante zu **EI30** nachgetragen — eine
  materielle VKF-Klassenangabe gehoert nach der Fuehrungs-Matrix mit Verweis auf `normen`
  versehen (Rule `normen-referenz`), nicht materiell fortgeschrieben.
- `wiki/strassenabstand-zufahrten-vorteilsabgabe-sz.md` Z. 38-42: **Beleg-Vorbehalt** — die
  Sichtweiten-Kennwerte sind «VSS SN 640 273a» zugeschrieben, aber **`normen` fuehrt diese Norm
  nicht** (weder Register noch Destillat; einzige Fundstelle im Bestand ist eine Literaturangabe
  der Vorgaengernorm SN 640 273). Bis zur Beschaffung als **Behoerdenwiedergabe aus dem
  SZ-Merkblatt** zu zitieren. Bring-Schuld `N41-1` in `normen/wiki/QUESTIONS.md` eingetragen;
  Verweis auf das vorhandene `vss-640050-1993` (`established`) gesetzt.

Bericht: `wissen/koordination/outputs/2026-08-24_wissens-chef-run41.md`.
## 2026-08-24 — Wissens-Health-Check (Phase 1): A0 B4 C0 D0 E0 F2 G0 — Top: Umlaut-Ersatzschreibung aus dem 01.08.-Befund weiterhin in ~340 Stellen (23/26 Artikel, Front- und Fliesstext), zwei liegen gebliebene Frontmatter-/Backlink-Befunde aus dem 03.08.-Report (rechtsschutz-und-rechtsmittelverfahren ohne title:, wohnhygiene-Konventionsfehler [[…]] auf raw/-Datei), sonst sehr guter Zustand nach der Bundesrechts-Re-Verifikationskette Runs 90-104 (0 Widersprüche, 0 unbelegte Claims, 0 RAW-Lücken, 0 veraltete Artikel, 0 fällige Promotion). Report outputs/2026-08-24_health-check.md. Nur-Audit, keine Aktionen.

## 2026-08-23 — Buch-Run 104: BEZ 2019 Nr. 5 (Absturzsicherung Altbau) erstmals im Volltext gelesen — § 358-PBG-Fall statt § 357, 15-%-Schwelle im Entscheid nicht erwähnt

- **Anlass:** Reglemente-Queue 2414 Thalwil (T1-T9) und die Modell-D-Re-Verifikationskette
  (Runs 90-103) sind laut ihren eigenen Abschlussvermerken vollständig abgearbeitet. Als
  nächster Schritt (Option 1 aus Run 103) die seit Wissens-Chef Run 21 (03.08.2026) in
  `wiki/QUESTIONS.md` offene Rest-Frage zu BEZ 2019 Nr. 5 bearbeitet — bislang nur als
  Buchzitat (Fritzsche/Bösch/Wipf/Kunz, Bd. 2, S. 1291) erfasst, der Entscheidtext selbst
  ungelesen.
- **Entscheid beschafft:** BRGE III Nr. 0170/2018 vom 21.11.2018 (BEZ 2019 Nr. 5) direkt von
  der Entscheiddatenbank des Baurekursgerichts ZH bezogen (Rubrik «Absturzsicherungen» —
  dort der **einzige** publizierte Entscheid, Stand 23.08.2026, Seite 1/1). PDF-Extraktion via
  PyMuPDF (`pdftotext` auf dieser Station nicht installiert). Neuer `raw/260823_amtlich_zh_
  brge-iii-0170-2018_bez-2019-nr5.md` mit dem vollständigen publizierten Auszug (Erwägungen
  4.3.1-4.4.3).
- **Kernbefund: der Entscheid ist kein § 357-PBG-Fall.** Eine baupolizeiliche Kontrolle stellte
  fehlende Handläufe in einem 80-jährigen Treppenhaus fest — **ausserhalb** jedes Baugesuchs.
  Das Gericht stützt die Nachrüstungs-Anordnung auf **§ 358 PBG** (Behebung erheblicher
  polizeilicher Missstände unabhängig von Änderungsbegehren) und leitet die Besitzstandsgarantie
  direkt aus **Art. 26 BV** her — **§ 357 PBG wird im publizierten Auszug an keiner Stelle
  zitiert.** Materiell wendet das Gericht SIA 358:2010 (Ziff. 2.2.1 f., 3.1.5, 3.1.6) über
  § 239 Abs. 1 PBG/§ 2 und § 20 BBV I unmittelbar an und prüft die Verhältnismässigkeit
  Fall für Fall (einseitiger Handlauf zur Kellertreppe genügt, beidseitiger bei der
  Fluchttreppe zwingend) — **ohne jede Prozentschwelle**.
- **Zweite offene Frage beantwortet:** die 15-%-Schwelle der Stadt-Zürcher Richtlinie
  «Absturzsicherungen im Hochbau» kommt im Entscheid **nicht vor** — in der einschlägigen
  Rechtsprechungsrubrik weder bestätigt noch verworfen, sondern schlicht unbelegt durch
  Rechtsprechung.
- **In die KB eingearbeitet:** `wiki/ausnahmebewilligung-und-bestandesschutz.md` (Absatz
  «Offen: BEZ 2019 Nr. 5» durch die Auflösung ersetzt, Frontmatter `sources`/`verifiziert`/
  `paragraphen` um § 358 PBG und den Entscheid ergänzt), `wiki/QUESTIONS.md` (Rest-Frage aus
  Run 21 geschlossen), `training/PROGRAMM.md` (Tracker-Eintrag Run 104), `training/
  KORPUS-QUEUE-thalwil-reglemente.md` (Fortsetzungs-Absatz ergänzt).
- Report `outputs/2026-08-23_buch-run104.md`.

## 2026-08-23 — Buch-Run 103: [[ausnahmebewilligung-und-bestandesschutz]] re-verifiziert — letzte offene Bundesrechts-Lücke der Re-Verifikationskette (Runs 90-102) geschlossen, 4/4 CONFIRMED, 0 Korrekturen

- **Ausgangslage:** Fortsetzung des Auftrags «Reglemente-Queue 2414 Thalwil weiterarbeiten».
  CHANGELOG bis Run 102 und `outputs/2026-08-23_buch-run102.md` gelesen: die Queue selbst
  (T1-T9) ist seit Run 87 vollständig abgearbeitet, seit Run 90 läuft statt dessen eine
  Re-Verifikationskette der `established`-Artikel gegen den amtlichen Bundesrechts-Wortlaut.
  Run 102 benannte [[ausnahmebewilligung-und-bestandesschutz]] als **letzten verbleibenden
  Kandidaten** mit ungeprüften Bundesrechts-Zitaten (Art. 24c RPG, Art. 41c GSchV, Art. 26 BV,
  Art. 8 ZGB). Konkurrenz-Check (`ps aux`) bestätigt: nur der eigene Session-Prozess bearbeitet
  `wissen/baurecht/`.
- **Vier amtliche Volltexte über Fedlex bezogen** (Filestore-Muster, Rule
  `docs/referenz/fedlex-volltexte.md`): RPG (SR 700, ELI `1979/1573_1573_1573`, Stand 1.7.2026,
  `www`-Route, 155'232 Byte), BV (SR 101, ELI `1999/404`, Stand 1.1.2024, `www`-Route, 420'021
  Byte — 1.1.2025/1.1.2026 liefern nur die 77'151-Byte-App-Hülle), ZGB (SR 210, ELI
  `24/233_245_233`, Stand 1.1.2026, `www`-Route, 1'959'085 Byte), GSchV (SR 814.201, ELI
  `1998/2863_2863_2863`, Stand 1.12.2025, `fedlex.data.admin.ch`-Route nötig, 927'081 Byte PDF).
  Artikel per Python/`re` (HTML) bzw. `pdftotext -layout` (PDF) isoliert und Wort für Wort gegen
  den Wiki-Text geprüft.
- **Ergebnis: 4/4 CONFIRMED, 0 Korrekturen.** Art. 24c RPG (altrechtliche Bauten ausserhalb der
  Bauzonen) korrekt als Abgrenzungs-Verweis geführt. Art. 41c Abs. 1/2 GSchV trägt eine dem
  § 357 PBG analoge Bestandesschutz-Klausel im Gewässerraum («in ihrem Bestand grundsätzlich
  geschützt, sofern rechtmässig erstellt und bestimmungsgemäss nutzbar») — wortgleich zur
  Wiki-Kurzfassung. Art. 26 BV («Das Eigentum ist gewährleistet») trägt die Herleitung «Ausfluss
  der Eigentumsgarantie». Art. 8 ZGB (allgemeine Beweislastregel) trägt die Anwendung «Beweislast
  trägt, wer sich auf den Bestandesschutz beruft».
- **Nebenbefund, kein Korrekturbedarf in diesem Artikel:** Art. 24c Abs. 1 RPG wurde per
  1.1.2026 materiell revidiert (BG vom 29.9.2023) und trägt seither den neuen Titel
  «Altrechtliche Bauten und Anlagen» (zuvor «Bestehende, zonenwidrige Bauten und Anlagen
  ausserhalb der Bauzonen»). Der genaue Änderungsumfang wurde nicht rekonstruiert — eine
  Vorfassung war über die `www`-Route für 1.1.2024/1.1.2025/1.7.2025 nicht mehr abrufbar (nur
  die App-Hülle), und der Artikel führt Art. 24c ohnehin nur als Abgrenzungs-Verweis, nicht als
  eigenes Destillat. Fassungsstand-Hinweis im Wiki ergänzt, damit ein künftiger SZ-/ZH-Fall mit
  Bestandesbauten ausserhalb der Bauzone die Fassung ab 1.1.2026 zugrunde legt.
- **Damit ist die von Buch-Run 90 begonnene Re-Verifikationskette (Runs 90-103) am
  Bundesrechts-Kriterium abgeschlossen:** kein Wiki-Artikel dieser Kette hat mehr ein
  ungeprüftes Bundesrechts-Zitat offen ([[raumplanung-und-gestaltung]],
  [[naturschutz-und-denkmalschutz]], [[enteignung-und-entschaedigung]],
  [[bauausfuehrung-und-baukontrolle]], [[widerrechtliche-bauten-und-sanktionen]],
  [[nebenbestimmungen-und-reverse]], [[rechtsschutz-und-rechtsmittelverfahren]],
  [[ausnahmebewilligung-und-bestandesschutz]] — je re-verifiziert). Empfehlung für einen
  künftigen Lauf: ausserhalb dieser Kette weiterarbeiten (z.B. neue KB-Lücken, Health-Check,
  oder eine zweite Re-Verifikationsrunde nach Ablauf der `verifiziert`-Daten).
- **In die KB eingearbeitet:** `wiki/ausnahmebewilligung-und-bestandesschutz.md` (`last_updated`
  2026-08-23, `verifiziert`-Feld und `sources` um die vier Bundesrechts-Belege ergänzt, zwei
  Sätze im Abschnitt «Abgrenzungen» präzisiert — GSchV-Bestandesschutz-Analogie, RPG-Fassungsstand).
  `training/PROGRAMM.md` (Tracker-Eintrag Run 103). `training/KORPUS-QUEUE-thalwil-reglemente.md`
  (Fortsetzungs-Absatz ergänzt). Kein neuer `raw/`-Volltext (gleiches Vorgehen wie Runs 97/99-102,
  Fundstellen über `sources`/`verifiziert` referenziert, Volltexte nur temporär in
  `/tmp/baurecht-run103/`).
- **Diff-Kontrolle (Rule `auto-verbesserungen` 260811):** `git status --short wissen/baurecht/`
  vor dem ersten Edit sauber. Nach dem Schreiben `git diff --numstat
  wissen/baurecht/wiki/ausnahmebewilligung-und-bestandesschutz.md` → 10/4 (additiv/ersetzend);
  `git diff | grep "^-"` bestätigt: die 4 gelöschten Zeilen sind exakt die 3 ersetzten
  Frontmatter-Felder plus die 1 erweiterte Abgrenzungs-Zeile, keine fremde Zeile verloren.
- Report `outputs/2026-08-23_buch-run103.md`.

## 2026-08-23 — Buch-Run 102: [[rechtsschutz-und-rechtsmittelverfahren]] re-verifiziert — erstmals alle 11 zitierten Bundesrechts-Artikel (BV/BGG/RPG/NHG/EMRK/ZPO) gegen den amtlichen Wortlaut geprüft, 1 Korrektur (Art. 103 BGG traegt die «Antrag»-Ausnahme nicht selbst, das ist Art. 104 BGG); zudem Run-101-Fehlempfehlung korrigiert ([[nebenbestimmungen-und-reverse]] war bereits seit Run 67 vollstaendig verifiziert)

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten» (Batches T1-T8). Geprüft:
  CHANGELOG bis Run 101 und der Report `outputs/2026-08-23_buch-run101.md`. Bestätigt: die Queue
  selbst (T1-T9) ist seit Run 87 vollständig abgearbeitet; seit Run 90 läuft statt dessen die
  Modell-D-Re-Verifikationskette der `established`-Artikel. Vor dem ersten Edit `git status --short
  wissen/baurecht/` geprüft (sauber) und `ps aux | grep "claude -p"`: der einzige Prozess mit
  identischem Auftragstext ist der eigene `-p`-Prozess dieser Session (PID 76379) — kein Konflikt.
- **Run-101-Empfehlung widerlegt, bevor sie befolgt wurde:** Run 101 empfahl
  [[nebenbestimmungen-und-reverse]] (Art. 962 ZGB/Art. 164 GBV «noch nie gegen fedlex geprüft»).
  Der Artikel selbst widerlegt das: sein `verifiziert`-Feld dokumentiert bereits einen
  **vollständigen Modell-D-Wortlautabgleich aller 13 Fundstellen inkl. Art. 962 ZGB/Art. 164 GBV in
  Buch-Run 67** (2026-07-27, dort sogar eine invertierte Polarität bei Art. 164 GBV gefunden und
  korrigiert). Die Empfehlung beruhte offenbar auf der Paragraphenliste, nicht auf dem Artikeltext
  selbst — Lehre für künftige Läufe im Report festgehalten.
- **Auswahl:** [[rechtsschutz-und-rechtsmittelverfahren]] — von den 4 tatsächlich offenen
  Kandidaten der Artikel mit den meisten unverifizierten Bundesrechts-Zitaten (11, über sechs
  Erlasse BV/BGG/RPG/NHG/EMRK/ZPO), mehr als [[ausnahmebewilligung-und-bestandesschutz]] (4 Zitate).
  [[baulinien-und-abstandslinien]] und [[geschosse-und-kniestock]] haben keine Bundesrechts-Lücke
  mehr (rein kantonale Fundstellen).
- **Vorgehen:** amtliche Volltexte ueber das Filestore-Muster bezogen: BV (SR 101, ELI `1999/404`,
  Stand 1.1.2024, bereits bekannt), BGG (SR 173.110, ELI `2006/218`, Stand 1.1.2025, 484'480 Byte),
  RPG (SR 700, ELI `1979/1573_1573_1573`, Stand 1.7.2026, bereits bekannt), NHG (SR 451, ELI
  `1966/1637_1694_1679`, Stand 1.1.2022, 503'394 Byte — juengster funktionierender Snapshot), EMRK
  (SR 0.101, ELI `1974/2151_2151_2151`, Stand 16.9.2022, 540'433 Byte), ZPO (SR 272, ELI `2010/262`,
  Stand 1.1.2025, 1'220'738 Byte). ELIs fuer BGG/ZPO/NHG/EMRK per WebSearch ermittelt (erstmalig fuer
  diesen Artikel), per `pdftotext -layout` extrahiert, Artikel fuer Artikel gegen den Wiki-Wortlaut
  geprueft.
- **Ergebnis: 10/11 CONFIRMED wortgleich.** Art. 29a BV (Rechtsweggarantie), Art. 82/95/113 BGG,
  Art. 29 Abs. 2 BV (Replikrecht-Grundlage), Art. 4 RPG (Mitwirkung), Art. 12 NHG (Verbandsbeschwerde
  bei Bundesaufgabe — systematisch bestaetigt), Art. 6 EMRK (oeffentliche Verhandlung), Art. 213/214
  ZPO (Mediation). Art. 97 BGG im Ergebnis bestaetigt (amtlich «offensichtlich unrichtig» statt
  woertlich «Willkuer», nach BGer-Praxis gleichbedeutend).
- **1 Korrektur: Art. 103 BGG.** Der Artikel behauptete «Bund: keine, ausser Antrag (Art. 103 BGG)» —
  Art. 103 selbst enthaelt aber keine Antrags-Ausnahme: Abs. 1 Grundsatz keine aufschiebende Wirkung,
  Abs. 2 lit. a-d abschliessender Ausnahmekatalog (Zivil-/Straf-/Rechtshilfe-/Amtshilfefaelle, keine
  Baustreitigkeit darunter). Die Antrags-Moeglichkeit steht separat in **Art. 104 BGG** («Andere
  vorsorgliche Massnahmen» — Instruktionsrichter kann von Amtes wegen oder auf Antrag vorsorgliche
  Massnahmen treffen). Zitat korrigiert und ergaenzt.
- **In die KB eingearbeitet:**
  - **GEÄNDERT** `wiki/rechtsschutz-und-rechtsmittelverfahren.md`: `last_updated` auf 2026-08-23,
    `verifiziert`- und `letzte_quelle`-Feld ergaenzt, Fliesstext Abschnitt 1 korrigiert, neuer
    Abschnitt 6d mit der vollstaendigen Verifikations-Notiz.
  - **GEÄNDERT** `training/PROGRAMM.md`: Tracker-Eintrag Run 102, `last_updated` nachgefuehrt.
  - **GEÄNDERT** `training/KORPUS-QUEUE-thalwil-reglemente.md`: Fortsetzungs-Absatz um Run 102
    ergaenzt.
  - **Kein neuer `raw/`-Volltext** (gleiches Vorgehen wie Run 97/99/100/101).
- **Diff-Kontrolle (Rule `auto-verbesserungen` 260811):** `git status --short wissen/baurecht/` vor
  dem ersten Edit geprueft (sauber). Nach jedem Schreiben `git diff --numstat` geprueft:
  `wiki/rechtsschutz-und-rechtsmittelverfahren.md` 62/4 (die 4 geloeschten Zeilen sind exakt die 4
  beabsichtigt ersetzten Felder/Saetze, per `git diff | grep "^-"` gegengeprueft).
- Report `outputs/2026-08-23_buch-run102.md`. **Naechster Schritt:** von den verbleibenden Artikeln
  mit tatsaechlicher Bundesrechts-Luecke bleibt nur noch
  [[ausnahmebewilligung-und-bestandesschutz]] (4 Zitate: Art. 24c RPG, Art. 41c GSchV, Art. 26 BV,
  Art. 8 ZGB) — Empfehlung fuer den naechsten Lauf.


## 2026-08-23 — Buch-Run 101: [[widerrechtliche-bauten-und-sanktionen]] re-verifiziert — erstmals alle 12 zitierten Bundesrechts-Artikel (RPG/BV/StGB/OR/ZGB/StPO) gegen den amtlichen Wortlaut geprüft, 1 echte Korrektur (Art. 229 StGB Strafrahmen), 1 substanzieller Neubefund (Art. 25 Abs. 5 RPG kodifiziert die 30-Jahre-Regel seit 1.1.2026)

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten» (Batches T1-T8). Geprüft:
  CHANGELOG bis Run 100 und der Report `outputs/2026-08-23_buch-run100.md`. Bestätigt: die Queue
  selbst (T1-T9) ist seit Run 87 vollständig abgearbeitet; seit Run 90 läuft statt dessen die
  Modell-D-Re-Verifikationskette der `established`-Artikel. Run 100 benannte 6 verbleibende
  Kandidaten und empfahl, einen unabhängigen Rechtsraum zu wählen. Vor dem ersten Edit
  `git status --short wissen/baurecht/` geprüft (sauber) und `ps aux | grep "claude -p"`: der
  einzige Prozess mit identischem Auftragstext ist der eigene `-p`-Prozess dieser Session (PID
  63503); zwei weitere `-p`-Prozesse bearbeiten unabhängig `wissen/normen` bzw. `wissen/energie`
  — kein Konflikt auf `wissen/baurecht/`.
- **Auswahl:** [[widerrechtliche-bauten-und-sanktionen]] — von den 6 Kandidaten der Artikel mit den
  mit Abstand meisten unverifizierten Bundesrechts-Zitaten (RPG, BV, StGB, OR, ZGB, StPO über sechs
  verschiedene Erlasse), die bisherige Verifikation (Run 30/31/58/64) deckte nur die kantonalen
  §§ PBG/VRG ab.
- **Vorgehen:** amtliche Volltexte über das Filestore-Muster (Rule `docs/referenz/fedlex-volltexte.md`)
  bezogen: RPG (SR 700, ELI `1979/1573_1573_1573`, Stand 1.7.2026 — bereits aus Run 97/99 bekannt),
  BV (SR 101, ELI `1999/404`, Stand 1.1.2024 — bereits bekannt), StGB (SR 311.0, ELI
  `54/757_781_799`, Stand 1.1.2026, `fedlex.data.admin.ch`, 1'850'282 Byte PDF), OR (SR 220, ELI
  `27/317_321_377`, Stand 1.1.2026, 4'862'033 Byte PDF), StPO (SR 312.0, ELI `2010/267`; die
  Kandidatendaten 20250101/20241001/20250701/20250301/20240301 lieferten je nur die 9'148-Byte-
  Fehlerseite, erst **20240701** ein echtes PDF, 1'529'897 Byte, Stand 1.7.2024). Jeder Artikel per
  `pdftotext -layout` extrahiert und im Volltext aufgesucht.
- **Ergebnis: 11/12 Zitate CONFIRMED wortgleich.** Art. 24 RPG (Abschnittsüberschrift «2a. Abschnitt:
  Ausnahmebewilligungen ausserhalb der Bauzonen» bestätigt die Wiki-Einordnung), Art. 25 Abs. 2 RPG
  (kantonale Zuständigkeit für den Zonenkonformitäts-/Ausnahmebewilligungsentscheid — die
  Wiki-Angabe «Baudirektion» ist eine ZH-spezifische Organisationszuweisung innerhalb dieser
  bundesrechtlichen Kompetenzdelegation, kein RPG-Wortlaut, daher kein Fehler), Art. 5 Abs. 2 BV
  (Verhältnismässigkeit), Art. 9 BV (Willkürverbot/Treu-und-Glauben als Grundlage des
  Vertrauensschutzes), Art. 290 StGB (Siegelbruch), Art. 292 StGB (Ungehorsam gegen amtliche
  Verfügungen), Art. 70/71 StGB (Einziehung/Ersatzforderung), Art. 109 StGB (3-Jahres-Regelverjährung
  als Kontrastnorm zur PBG-Sonderfrist), Art. 137 Abs. 2 OR (analog: «die neue Verjährungsfrist
  [ist] stets die zehnjährige»), Art. 354 StPO (10-Tage-Einsprachefrist gegen den Strafbefehl,
  wortgleich), Art. 357 StPO (Übertretungsstrafverfahren — Verwaltungsbehörden erhalten die
  Befugnisse der Staatsanwaltschaft, Verfahren sinngemäss nach Strafbefehlsregeln; bislang nur in
  den `sources` geführt, jetzt auch im Fliesstext verankert). Art. 836 ZGB **nicht neu abgerufen**
  — bereits in Run 100 für [[bauausfuehrung-und-baukontrolle]] wortlautverifiziert, gleiche Norm
  und gleiche Einordnung (gesetzliches Grundpfandrecht des kantonalen Rechts), hier übernommen.
- **1 echte Korrektur: Art. 229 Abs. 1 StGB.** Der Straftatbestand «Gefährdung durch Verletzung der
  Regeln der Baukunde» ist seit der Strafrahmenharmonisierung per 1.7.2023 bei **Vorsatz (Abs. 1)
  Freiheitsstrafe bis zu FÜNF Jahren** oder Geldstrafe — nicht drei, wie der Artikel bisher
  undifferenziert angab. Die Drei-Jahres-Obergrenze gilt nur für **Abs. 2 (Fahrlässigkeit)**. Der
  Fehler betraf damit den praktisch massgeblicheren, weil regelmässig einschlägigen Vorsatzfall
  (Architekt/Bauleiter, der die Regeln der Baukunde bewusst missachtet).
- **1 substanzieller Neubefund, kein Fehler: Art. 25 Abs. 3-5 RPG.** Eingefügt durch das
  Bundesgesetz vom 29.9.2023, in Kraft erst seit **1.1.2026** — kodifiziert die 30-Jahre-Verwirkung
  des Wiederherstellungsanspruchs (inkl. der identischen Polizeigüter-Ausnahme) erstmals
  **bundesrechtlich**, deckungsgleich mit der bisherigen rein kantonal/bundesgerichtlich
  hergeleiteten Praxis (BGer 1C_726/2013). Die Norm steht im Abschnitt «Ausnahmebewilligungen
  ausserhalb der Bauzonen» und gilt ihrem Wortlaut nach **nur** für Bauvorhaben **ausserhalb** der
  Bauzone; innerhalb bleibt die 30-Jahre-Regel weiterhin richterrechtlich, nicht gesetzlich,
  verankert — die bisherige Wiki-Tabellenzeile «auch ausserhalb Bauzone» wird durch diesen Fund
  präzisiert, nicht widerlegt. Ergänzend verpflichtet Art. 25 Abs. 3 RPG (gleiche Novelle) die
  Kantone, unbewilligte Nutzungen «innert nützlicher Frist» festzustellen und ohne Verzug zu
  untersagen/rückzubauen — konkretisiert das bisherige «von Amtes wegen»-Prinzip zusätzlich
  bundesrechtlich.
- **In die KB eingearbeitet:**
  - **GEÄNDERT** `wiki/widerrechtliche-bauten-und-sanktionen.md`: neuer `verifiziert`-Eintrag
    angehängt, `last_updated: 2026-08-23`, `sources` um alle zwölf geprüften Bundesrechts-Zitate mit
    Prüfvermerk ergänzt; Art.-229-Passage korrigiert und erläutert; neue Fussnote zur 30-Jahre-Tabelle
    (Art. 25 Abs. 3-5 RPG); Art. 357 StPO neu im Fliesstext verankert; JANS-Anwendung um einen
    Hinweis zum bundesrechtlich verstärkten Argument ausserhalb Bauzone ergänzt — bestehender Text
    vollständig erhalten, keine Zeile entfernt (nur ersetzt, wo der Fehler sass).
  - **GEÄNDERT** `training/PROGRAMM.md`: Tracker-Eintrag Run 101 angehängt, `last_updated` auf
    Run 101 nachgeführt.
  - **GEÄNDERT** `training/KORPUS-QUEUE-thalwil-reglemente.md`: Fortsetzungs-Absatz um Run 101
    ergänzt.
  - **Kein neuer `raw/`-Volltext** (gleiches Vorgehen wie Run 97/99/100 — die frischen PDFs wurden
    nur temporär in `/tmp` geladen, Fundstellen über `sources`/`verifiziert` referenziert).
- **Diff-Kontrolle (Rule `auto-verbesserungen` 260811):** `git status --short wissen/baurecht/` vor
  dem ersten Edit geprüft (sauber). Nach jedem Schreiben `git diff --numstat` geprüft: Wiki-Artikel
  35/9 (additiv/ersetzend), PROGRAMM.md 21/6, KORPUS-QUEUE 8/1 — keine Zeile unbeabsichtigt verloren.
- Report `outputs/2026-08-23_buch-run101.md`. **Nächster Schritt:** von den verbleibenden 5 Artikeln
  ([[ausnahmebewilligung-und-bestandesschutz]], [[baulinien-und-abstandslinien]],
  [[geschosse-und-kniestock]], [[nebenbestimmungen-und-reverse]],
  [[rechtsschutz-und-rechtsmittelverfahren]]) einen unabhängigen Rechtsraum wählen — Empfehlung
  [[nebenbestimmungen-und-reverse]] (zitiert Art. 962 ZGB/Art. 164 GBV, noch nie gegen fedlex
  geprüft).


## 2026-08-23 — Buch-Run 100: [[bauausfuehrung-und-baukontrolle]] re-verifiziert — erstmals ZGB/BV/USG/LSV-Zitate gegen fedlex.data.admin.ch geprüft, 2 Korrekturen an den USG/LSV-Belegen

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten» (Batches T1-T8). Geprüft:
  CHANGELOG bis Run 99 und der Report `outputs/2026-08-23_buch-run99.md`. Bestätigt: die Queue
  selbst (T1-T9) ist seit Run 87 vollständig abgearbeitet; seit Run 90 läuft statt dessen die
  Modell-D-Re-Verifikationskette der `established`-Artikel nach ältestem `verifiziert`-Datum.
  Run 99 empfahl namentlich [[bauausfuehrung-und-baukontrolle]] (ältestes `last_updated`,
  2026-07-12, nie vollständiger Fliesstext-Refresh). Vor dem ersten Edit `ps aux | grep claude`
  geprüft: der einzige Prozess mit identischem Auftragstext ist der eigene `-p`-Prozess dieser
  Session (PID 58531) — kein zweiter, mit `wissen/baurecht/` konfligierender Lauf (zwei weitere
  `-p`-Prozesse bearbeiten unabhängig die KB `wissen/normen`).
- **Auswahl:** [[bauausfuehrung-und-baukontrolle]] — Empfehlung Run 99 gefolgt.
- **Bestandsaufnahme:** der Artikel trug bereits einen gründlichen PBG-/VRG-Wortlautabgleich
  (Run 30/31/58/64), aber **keinen einzigen** der zitierten Bundesrechts-Artikel (Art. 8/679/684/836
  ZGB, Art. 29a BV, Art. 32bbis USG, Art. 6 LSV) hatte je einen Volltextabgleich — gleiche Lücke wie
  bei [[raumplanung-und-gestaltung]] (Run 97) und [[naturschutz-und-denkmalschutz]] (Run 99).
- **Vorgehen:** amtliche Volltexte über `fedlex.data.admin.ch`/`www.fedlex.admin.ch` (Filestore-
  Muster, Rule `docs/referenz/fedlex-volltexte.md`) bezogen: ZGB (SR 210, ELI `24/233_245_233`,
  Stand 1.1.2026 — aktuellste Konsolidierung, `www`-Route funktionierte direkt), BV (SR 101, ELI
  `1999/404`, Stand 1.1.2024, wie bereits in Run 97/99 verifiziert), USG (SR 814.01, ELI
  `1984/1122_1122_1122`, Stand 1.1.2025) und LSV (SR 814.41, ELI `1987/338_338_338`, Stand
  1.1.2025). Jeder zitierte Artikel per `id="art_N"`-Anker im HTML aufgesucht und wortgetreu gegen
  den Wiki-Artikeltext gelesen.
- **Ergebnis ZGB/BV — CONFIRMED wortgleich, 0 Korrekturen (5 Zitate):** Art. 8 ZGB (allgemeine
  Beweislastregel, trägt die Wiki-Aussage «Beweislast für Bauschäden trägt der Geschädigte»);
  Art. 679/684 ZGB (nachbarrechtliche Anspruchs-/Immissionsgrundlage, Wortlaut deckt die
  Wiki-Charakterisierung); Art. 836 ZGB (gesetzliches Grundpfandrecht **des kantonalen Rechts** für
  grundstücksbezogene Forderungen, Abs. 1 «Räumt das kantonale Recht dem Gläubiger …» — bestätigt
  exakt die Wiki-Einordnung «kant. öffentlich-rechtliches Grundpfandrecht»); Art. 29a BV
  (Rechtsweggarantie, trägt die Wiki-Aussage zum Anspruch auf eine anfechtbare Verfügung).
- **Ergebnis USG/LSV — 2 echte Befunde, kein Fassungsstand-Drift:**
  1. **Art. 32bbis USG ist inhaltlich richtig zitiert, aber unvollständig eingeordnet.** Der
     Rückforderungsanspruch (2/3 der Mehrkosten für Aushubmaterial von belasteten Standorten) setzt
     zusätzlich einen Grundstückserwerb zwischen dem 1.7.1972 und dem 1.7.1997 voraus (Abs. 1 lit. c)
     und ist nach Abs. 3 **längstens bis zum 1.11.2021 geltend zu machen** — die Norm steht
     unverändert im Gesetz (eingefügt 2006), der praktische Anwendungsfall ist heute aber verwirkt.
     Im Wiki als Präzisierung ergänzt, nicht als Streichung (die Norm gilt weiter, nur der
     Übergangsanspruch nicht mehr).
  2. **Der Beleg «Art. 38 Abs. 2 USG» für das Vorsorgeprinzip der Baulärm-Richtlinie war falsch.**
     Art. 38 USG regelt «Aufsicht und Koordination» des Bundesvollzugs, nicht die Vorsorge. Die
     LSV nennt in ihrer Ermächtigungsklausel («gestützt auf die Artikel 5, 12 Abs. 2, 13 Abs. 1,
     16 Abs. 2, 19, 21 Abs. 2, 23, 39 Abs. 1, 40 und 45 USG») Art. 38 nicht. Amtlich richtig: Art. 6
     LSV trägt die Erlasskompetenz des BAFU für die Baulärm-Richtlinien selbst («Das Bundesamt für
     Umwelt erlässt Richtlinien über bauliche und betriebliche Massnahmen zur Begrenzung des
     Baulärms»); das Vorsorgeprinzip steht in Art. 11 Abs. 2 USG («im Rahmen der Vorsorge … soweit
     technisch und betrieblich möglich und wirtschaftlich tragbar»). Zitat im Wiki korrigiert.
- **PBG-Fassungsstand:** kein neuer Live-Abruf nötig — Run 94/96/98/99 haben Nachtrag 133 als
  weiterhin geltend am selben Tag (23.08.2026) mehrfach bestätigt.
- **In die KB eingearbeitet:**
  - **GEÄNDERT** `wiki/bauausfuehrung-und-baukontrolle.md`: neuer `verifiziert`-Eintrag angehängt,
    `last_updated: 2026-08-23`, `sources`/`paragraphen` um die fünf neu geprüften Bundesrechts-Zitate
    ergänzt, zwei erläuternde Absätze im Fliesstext (Baustellenentsorgung/Bauemissionen) — bestehender
    Text vollständig erhalten, nur der fehlerhafte Beleg «Art. 38 Abs. 2 USG» ersetzt.
  - **GEÄNDERT** `training/PROGRAMM.md`: Tracker-Eintrag Run 100 angehängt, Frontmatter
    `last_updated` auf Run 100 nachgeführt.
  - **GEÄNDERT** `training/KORPUS-QUEUE-thalwil-reglemente.md`: Fortsetzungs-Absatz um Run 100
    ergänzt, «Runs 90-99» auf «Runs 90-100» erweitert.
  - **Kein neuer `raw/`-Volltext** — gleiches Vorgehen wie Run 97/99: die frischen HTML/PDFs wurden
    nur temporär in `/tmp` geladen, nicht Teil der KB; die Fundstellen sind über `sources`
    referenziert.
- **Diff-Kontrolle (Rule `auto-verbesserungen` 260811):** vor dem ersten Edit `git status --short
  wissen/baurecht/` geprüft (sauber, keine uncommittete Vorarbeit). Nach jedem Schreiben
  `git diff --numstat` geprüft — alle vier Dateien rein additiv/ersetzend, keine Zeile verloren.
- Report `outputs/2026-08-23_buch-run100.md`. **Nächster Schritt:** von den verbleibenden 6 Artikeln
  ([[ausnahmebewilligung-und-bestandesschutz]], [[baulinien-und-abstandslinien]],
  [[geschosse-und-kniestock]], [[nebenbestimmungen-und-reverse]],
  [[rechtsschutz-und-rechtsmittelverfahren]], [[widerrechtliche-bauten-und-sanktionen]]) einen
  unabhängigen Rechtsraum wählen.

## 2026-08-23 — Buch-Run 99: [[naturschutz-und-denkmalschutz]] re-verifiziert — erstmals die Bundesrechts-Zitate (BV/NHG/RPG) frisch gegen fedlex.data.admin.ch geprüft, CONFIRMED wortgleich, 0 Korrekturen

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten». Geprüft: CHANGELOG bis
  Run 98 und der Report `outputs/2026-08-23_buch-run98.md`. Bestätigt: die Queue selbst ist seit
  Run 87 vollständig T1-T9 abgearbeitet; seit Run 90 läuft statt dessen die von den Läufen selbst
  vorgeschlagene Fortsetzung — die Modell-D-Re-Verifikationskette der `established`-Artikel. Run 98
  benannte 8 verbleibende Kandidaten und empfahl namentlich [[naturschutz-und-denkmalschutz]]
  (eigener Quellenkreis NHG/KNHV) oder [[bauausfuehrung-und-baukontrolle]] (ältestes `last_updated`).
  Vor dem ersten Edit `ps aux | grep claude` geprüft: kein zweiter, mit `wissen/baurecht/`
  konfligierender Prozess (nur eigene Session sowie unabhängige `normen`-Läufe, andere KB).
- **Auswahl:** [[naturschutz-und-denkmalschutz]] — eigener Quellenkreis (NHG/KNHV/BV), unabhängig
  von den zuletzt bearbeiteten Themen (Vorentscheid, Raumplanung, Enteignung/Mehrwertausgleich).
- **Buch-Destillat zuerst geprüft:** `buecher/band-1/04-natur-und-heimatschutz.md` (Bd 1, Kap. 4,
  S. 268-309) gelesen — keine neue Diskrepanz zum bestehenden Artikeltext.
- **Bestandsaufnahme:** der Artikel trug bereits einen sehr gründlichen PBG-/KNHV-Wortlautabgleich
  (Run 31/33/61, zuletzt 2026-07-27), aber **keinen einzigen** der neun zitierten Bundesrechts-
  Artikel (Art. 78 BV; Art. 2/3/5/7/8/13/17/17a/25 NHG) sowie Art. 17 RPG hatte je einen
  Volltextabgleich — genau die gleiche Lücke, die Run 97 bei [[raumplanung-und-gestaltung]] fand.
- **Vorgehen:** amtliche Volltexte über `fedlex.data.admin.ch` (Filestore-Muster, Rule
  `docs/referenz/fedlex-volltexte.md`) bezogen. NHG (SR 451, ELI `1966/1637_1694_1679`): die
  `www`-Route lieferte für mehrere Kandidatendaten nur die App-Hülle; über `fedlex.data.admin.ch`
  funktionierte `20250801` (414'927 Byte PDF, Stand 1. August 2025 — aktuellste konsolidierte
  Fassung). RPG (SR 700, ELI `1979/1573_1573_1573`, Stand 1.7.2026) und BV (SR 101, ELI `1999/404`,
  Stand 1.1.2024) wie in Run 97 bereits verifiziert bezogen. Alle drei mit `pdftotext -layout`
  extrahiert; jeder zitierte Artikel einzeln im Volltext aufgesucht und wortgetreu gegen den
  Artikeltext gelesen.
- **Ergebnis: CONFIRMED wortgleich, 0 Korrekturen — an allen zehn Bundesrechts-Zitaten.** Art. 78
  Abs. 1 BV («Für den Natur- und Heimatschutz sind die Kantone zuständig») bestätigt exakt die
  Artikel-Aussage «weist ihn primär den Kantonen zu». Art. 2/3 NHG (Bundesaufgaben-Definition,
  Pflichten von Bund/Kantonen), Art. 5 NHG (Bundesinventare), Art. 7/8/17a NHG (Begutachtung durch
  Kommission, fakultative/besondere Gutachten), Art. 13 NHG (Finanzhilfen — «Der Bund KANN …
  gewähren», bestätigt «freiwillig, kein Anspruch»), Art. 25 NHG (Organisation der Kommission[en] =
  ENHK/EKD-Apparat) und Art. 17 RPG (Schutzzonen als Planungsrecht-Instrument, parallel zu § 205
  lit. a PBG) — alle wortgleich mit der bisherigen Artikel-Darstellung. Kein Fassungsstand-Drift,
  keine Bedeutungsverschiebung. Anders als bei Run 97/98 diesmal **keine** Korrektur nötig — ein
  legitimes Verifikations-Ergebnis (gleiche Kategorie wie Run 96).
- **PBG-Fassungsstand:** kein neuer Live-Abruf nötig — Run 94/96/98 haben Nachtrag 133 als
  weiterhin geltend am selben Tag mehrfach bestätigt (Nachtrag 134 amtlich publiziert, aber erst
  per 1.10.2026 in Kraft); ob er die hier zitierten §§ 203-217/50/76/238a/338b PBG betrifft, bleibt
  bis dahin unerheblich und ungeprüft (wie in den Vorläufen).
- **In die KB eingearbeitet:** `wiki/naturschutz-und-denkmalschutz.md` (neuer `verifiziert`-Eintrag
  an den bestehenden Run-61-Eintrag angehängt, `last_updated: 2026-08-23`, neuer erläuternder
  Absatz nach der KNHV-Passage — bestehender Text vollständig erhalten, keine Zeile entfernt),
  `training/PROGRAMM.md` (Tracker-Eintrag Run 99), `training/KORPUS-QUEUE-thalwil-reglemente.md`
  (Fortsetzungs-Absatz um Run 98/99 ergänzt). **Kein neuer `raw/`-Volltext** (gleiches Vorgehen wie
  Run 97 — die frischen PDFs wurden nur temporär geladen, Fundstellen über `sources` referenziert,
  Sources-Liste des Artikels enthielt die Zitate bereits). Report `outputs/2026-08-23_buch-run99.md`.
- **Diff-Kontrolle (Rule `auto-verbesserungen` 260811):** `git status --short wissen/baurecht/`
  nativ per SSH (LAN-IP `192.168.1.10` — `diskstation918.tail8265aa.ts.net` in dieser Session nicht
  auflösbar, DNS-Fehler) vor dem ersten Edit geprüft: sauber, keine uncommittete Vorarbeit. Nach
  dem Schreiben erneut geprüft und `git diff --numstat` gegengelesen: alle Änderungen an den drei
  bearbeiteten Dateien rein additiv.
- **Konkurrenz-Check:** `ps aux | grep claude` zu Beginn geprüft — der eigene `-p`-Prozess dieser
  Session sowie mehrere unabhängige, nicht mit `wissen/baurecht/` konfligierende Läufe (KB `normen`,
  eigener Wrapper-Prozess derselben Session) — kein Konflikt.
- **Nächster Schritt (Vorschlag, nicht ausgeführt):** von den verbleibenden 7 Artikeln
  ([[ausnahmebewilligung-und-bestandesschutz]], [[bauausfuehrung-und-baukontrolle]],
  [[baulinien-und-abstandslinien]], [[geschosse-und-kniestock]], [[nebenbestimmungen-und-reverse]],
  [[rechtsschutz-und-rechtsmittelverfahren]], [[widerrechtliche-bauten-und-sanktionen]]) einen
  unabhängigen Rechtsraum wählen. Empfehlung: [[bauausfuehrung-und-baukontrolle]] — mit
  `last_updated: 2026-07-12` weiterhin das älteste Aktualisierungsdatum aller `established`-
  Artikel, nie Gegenstand eines vollständigen Fliesstext-Refresh (nur punktuelle Fassungsstand-
  Nachträge Run 58/64).

## 2026-08-23 — Buch-Run 98: ZH-Mehrwertausgleich (MAG) erstmals als raw/-Volltext beschafft — 2 echte Korrekturen (kant. fix 20 % statt 5 %, kommunal max. 40 % statt 15 %), letzter offener Punkt in [[enteignung-und-entschaedigung]] geschlossen

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten». Geprüft: die Queue
  ist seit Run 87 vollständig T1-T9 abgearbeitet; seit Run 90 läuft die Modell-D-
  Re-Verifikationskette der `established`-Artikel. **Kurz nach Sessionstart hatte ein
  paralleler Lauf bereits Run 97 abgeschlossen** ([[raumplanung-und-gestaltung]], erstmals
  Bundesrecht RPG/RPV/BV gegen fedlex.data.admin.ch geprüft) — CHANGELOG, `training/
  PROGRAMM.md` und der Report `outputs/2026-08-23_buch-run97.md` waren beim Prüfen bereits
  vollständig vorhanden (Zeitstempel 22:30-22:31 Uhr, kein eigener Prozess). Dieser Lauf setzt
  bei Run 97 fort, ohne ihn zu wiederholen.
- **Auswahl:** statt eines weiteren Re-Verifikationslaufs an einem der 9 verbleibenden
  `established`-Kandidaten (alle bereits am 2026-07-27 sehr gründlich mit Modell D geprüft,
  ein erneuter Blindlauf hätte voraussichtlich nur 0-Korrekturen bestätigt) wurde der seit
  Erstellung (2026-07-04) offene, konkret benannte Punkt in [[enteignung-und-entschaedigung]]
  bearbeitet: «ZH-Mehrwertausgleich (MAG): Buchstand 2019 = Entwurf/Einzonungsstopp → am
  heutigen kant. Recht gegenprüfen, bevor Prozentsätze extern zitiert werden» — bei Buch-Run 68
  (27.07.2026) ausdrücklich als «nicht Gegenstand dieses Laufs» zurückgestellt. Höherer
  Erkenntniswert als eine erneute Bestätigung ohne neue Quelle.
- **Buch-Destillat zuerst geprüft:** `buecher/band-1/05-planung-und-entschaedigung.md`, Ziff.
  5.4.5 — bestätigt den Verdacht bereits selbst: «Kant. Mehrwertausgleich (MAG-Entwurf): Kanton
  20 % bei Einzonungen … 5 % bei Auf-/Umzonungen … Kommunaler Mehrwertausgleich: Gemeinden max.
  15 %». Das Buch (6. Aufl. 2019) zitiert die **Vorlage**, nicht das erlassene Gesetz.
- **Vorgehen:** kein MAG-Volltext bisher im Hub. Live von zhlex.zh.ch bezogen (Kette wie
  `skills/baurecht/connectors/recht-ch.mjs`): `Erlass.html?Open&Ordnr=700.9` → Redirect auf die
  aktuelle Fassung → PDF `700.9_28.10.19_134.pdf` (Nachtrag 134) → `pdftotext -layout` → treu
  abgeschrieben nach `raw/260823_amtlich_zh_mag.md` (§§ 1-29, vollständig).
- **Ergebnis: 2 echte Korrekturen, kein Fassungsstand-Drift** (die Differenz stammt aus der
  Abweichung Entwurf ↔ erlassenes Gesetz, nicht aus einer späteren Revision):
  1. **Kantonaler Satz:** § 4 Abs. 1 MAG «Die Mehrwertabgabe beträgt 20% des Mehrwerts» — fix,
     **kein** Auf-/Umzonungs-Satz von 5 % wie im Entwurf. § 2 Abs. 1 MAG begrenzt die
     kantonale Abgabepflicht auf **Einzonung** und **Umzonung einer Zone für öffentliche
     Bauten**; eine allgemeine Auf-/Umzonung löst beim Kanton **keine** Abgabe aus.
  2. **Kommunaler Höchstsatz:** § 19 Abs. 3 MAG «höchstens 40% des um Fr. 100'000 gekürzten
     Mehrwerts» — mehr als das Doppelte des Entwurfswerts (15 %), mit eigenem Freibetrag
     (100'000 Fr., nicht der kantonale 30'000-Fr.-Freibetrag) und einer zusätzlichen
     Flächenschwelle 1'200-2'000 m² je Gemeinde (§ 19 Abs. 2 MAG).
  **Bestätigt unverändert:** kantonaler Freibetrag < 30'000 Fr. (§ 4 Abs. 2 MAG, CONFIRMED);
  die bereits in [[abstaende-und-hoehen]] (Buch-Run 84) korrekt dokumentierte
  MAG-Umsetzungsfrist 1.3.2028 (§ 29 Abs. 4 MAG) — gegen den frisch geladenen Volltext
  gegengelesen, unverändert korrekt.
- **In die KB eingearbeitet:** `raw/260823_amtlich_zh_mag.md` (neu, mit Kernbefund-Tabelle
  Entwurf↔erlassen), `wiki/enteignung-und-entschaedigung.md` (Abschnitt 4 korrigiert, Offen-
  Punkt geschlossen, Frontmatter `sources`/`verifiziert`/`last_updated`), `buecher/band-1/
  05-planung-und-entschaedigung.md` (Ziff. 3/5/6 annotiert — Buchtext selbst nicht gelöscht,
  bleibt als belegtreuer historischer Entwurfsstand stehen, Korrektur jeweils als
  Zusatzvermerk), `wiki/QUESTIONS.md` (neuer ✅-Eintrag oben + Rückverweis auf den
  Run-68-Eintrag geschlossen), `training/PROGRAMM.md` (Tracker-Eintrag Run 98). Report
  `outputs/2026-08-23_buch-run98.md`.
- **Diff-Kontrolle (Rule `auto-verbesserungen` 260811):** vor dem ersten Edit
  `git status --short wissen/baurecht/` nativ per SSH (LAN-IP `192.168.1.10`, Repo
  `/volume2/daten/jans-ai-hub` — Tailscale-Hostname in dieser Session nicht auflösbar, auf die
  LAN-IP ausgewichen) geprüft: nur `training/KORPUS-QUEUE-thalwil-reglemente.md` stand
  uncommitted (additiver Nachtrag von Run 97, 7 Zeilen, nicht angerührt). Nach dem Schreiben
  erneut `git status --short` + `git diff --numstat` nativ geprüft: alle Änderungen additiv,
  keine bestehenden Zeilen entfernt (nur Tilde-Streichung + Zusatzvermerk, Konvention dieser KB).
- **Konkurrenz-Check:** `ps aux | grep claude` vor und während des Laufs geprüft — nur der
  eigene `-p`-Prozess dieser Session; Run 97 lag bereits vollständig committet (Commit
  `23cb17406a4885e33f783eeab99a9bccde00e08c`, 22:31:49 Uhr) vor Beginn dieses Laufs.

## 2026-08-23 — Buch-Run 97: [[raumplanung-und-gestaltung]] re-verifiziert — erstmals Bundesrecht (RPG/RPV/BV) frisch gegen fedlex.data.admin.ch geprüft; 2 echte Korrekturen, 1 klarstellende Fussnote

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten». Geprüft: `CHANGELOG.md`
  bis Run 96 und der Report `outputs/2026-08-23_buch-run96.md`. Die Reglemente-Queue selbst ist
  seit Run 87 vollständig T1-T9 abgearbeitet; seit Run 90 läuft die von den Läufen selbst
  vorgeschlagene Fortsetzung — die Modell-D-Re-Verifikationskette der `established`-Artikel nach
  ältestem `verifiziert`-Datum. Run 95/96 hatten [[raumplanung-und-gestaltung]] neben dem in Run 96
  bearbeiteten Artikel als ebenfalls am längsten unberührt mit eigenem Quellenkreis benannt.
- **Auswahl:** [[raumplanung-und-gestaltung]] — einziger Kandidat des 2026-07-27-Batches, dessen
  Quellenkreis primär **Bundesrecht** (RPG/RPV/BV) statt kantonalem PBG ist.
- **Buch-Destillate zuerst geprüft:** `02-raumplanung-richtplanung-nutzungsplanung.md` und
  `02-nutzungsplanung-zonenarten-teil2.md` (Bd 1, Kap. 2) gelesen — keine neue Diskrepanz zum
  Buch; die Buch-eigene Zitierweise (getrennte Zuordnung von haushälterischer Nutzung, Bau-/
  Nichtbaugebiet-Trennung und 15-Jahre-Regel auf je eigene Normen) diente als Vorlage für
  Korrektur (1) unten.
- **Genuiner Befund: sieben Bundesrechts-Zitate dieses Artikels (Art. 1/4/9/15/21/25a/26 RPG,
  Art. 33 RPV, Art. 75 BV) waren in der Verifikationshistorie des Artikels noch nie gegen den
  amtlichen Volltext geprüft** — nur die PBG-Paragraphen trugen einen Volltextabgleich-Vermerk
  (Run 63). Frisch bezogen über `fedlex.data.admin.ch` (Filestore-Muster, Rule
  `docs/referenz/fedlex-volltexte.md`): RPG SR 700 (ELI `1979/1573_1573_1573`, konsolidiert
  01.07.2026 — neuere Fassung als die im bestehenden `raw/260714_amtlich_ch_rpg-erschliessung.md`
  dokumentierte 01.04.2026), RPV SR 700.1 (ELI `2000/310`, konsolidiert 01.01.2026), BV SR 101
  (ELI `1999/404`, konsolidiert 01.01.2024 — `www`-Route lieferte für 2025/2026 nur die
  77'151-Byte-App-Hülle, Art. 75 seit 2024 unverändert).
- **Ergebnis Bundesrecht:** Art. 1 Abs. 1, Art. 4 Abs. 2, Art. 9 Abs. 1, Art. 15 Abs. 1/2,
  Art. 21 Abs. 1, Art. 25a, Art. 26 Abs. 3 RPG sowie Art. 75 Abs. 1 BV **CONFIRMED wortgleich**.
  **2 echte Korrekturen:** (1) Der Artikel schrieb die 15-Jahre-Bauzonenregel gebündelt
  Art. 15 Abs. 1 RPG, § 18 lit. b PBG und Art. 75 Abs. 1 BV zu — am amtlichen Wortlaut enthält
  jedoch nur Art. 15 Abs. 1 RPG die Zahl («… dass sie dem voraussichtlichen Bedarf für 15 Jahre
  entsprechen»); § 18 lit. b PBG trägt nur die allgemeine haushälterische-Nutzung-Formel, Art. 75
  Abs. 1 BV nur den verfassungsrechtlichen Grundauftrag — genau wie das Buch-Destillat selbst die
  drei Aussagen bereits getrennt führt (S. 114). Jetzt im Artikel entflochten. (2) Art. 15 Abs. 4
  RPG hat **fünf** kumulative Neueinzonungs-Kriterien (lit. a–e), der Artikel führte nur lit. a–d
  und liess lit. e (Umsetzung der Richtplan-Vorgaben) aus — ergänzt.
- **1 klarstellende Fussnote (kein Fehler, gleiche Familie wie Run 95s Marginal-Titel-Fund):**
  die «≥ 10 bewohnte Gebäude»-Schwelle der Weilerzone steht nicht im Verordnungswortlaut von
  Art. 33 RPV (der nennt nur die Ermächtigung zu besonderen Zonen nach Art. 18 RPG, sofern der
  kantonale Richtplan dies vorsieht) — die Zahl ist eine Buch-/Praxis-Konkretisierung (Bd 1,
  Kap. 2, S. 165). Als Warnhinweis ergänzt, damit ein künftiger Lauf sie nicht für ein wörtliches
  RPV-Zitat hält.
- **PBG-Fassungsstand:** kein neuer Live-Abruf nötig, Run 94 hat Nachtrag 133 (weiterhin geltend
  bis 01.10.2026) am selben Tag bereits bestätigt. Vollständiger Wortlautabgleich §§ 44a, 49b,
  82-89, 238 PBG gegen `raw/260607_amtlich_zh_pbg.md` — **CONFIRMED wortgleich, 0 Korrekturen**.
- **In die KB eingearbeitet:** `wiki/raumplanung-und-gestaltung.md` (2 Korrekturen im Fliesstext,
  1 Fussnote, neuer `verifiziert`-Eintrag an den bestehenden Run-63-Eintrag angehängt, `sources`
  um die drei frischen Fedlex-Belege ergänzt, `last_updated: 2026-08-23` — bestehender Text sonst
  vollständig erhalten), `training/PROGRAMM.md` (Tracker-Eintrag Run 97). Report
  `outputs/2026-08-23_buch-run97.md`. **Kein neuer `raw/`-Volltext** (die frischen RPG/RPV/BV-PDFs
  wurden nur temporär für die Extraktion geladen, nicht Teil der KB — ihre Fundstellen sind über
  `sources` referenziert).
- **Diff-Kontrolle (Rule 260811):** `git status --short wissen/baurecht/` nativ per SSH (LAN-IP
  `192.168.1.10`, Repo `/volume2/daten/jans-ai-hub` — Tailscale-Hostname in dieser Session nicht
  erreichbar) vor dem ersten Edit geprüft: eine unabhängige, noch nicht committete Änderung aus
  einem parallel laufenden `normen`-Lauf lag bereits vor (`wiki/baureife-und-erschliessung.md`,
  additiv, Kehrplatz-Normfussnote) — nicht angerührt, kein Konflikt mit den hier bearbeiteten
  Dateien. `git diff --numstat` nach dem Schreiben auf rein additive Änderungen an den eigenen
  drei Dateien geprüft.
- **Konkurrenz-Check:** `ps aux` zeigte den eigenen Lauf-Prozess (Name `mschub143`, Skill
  `baurecht`) sowie zwei unabhängige, nicht-konkurrierende `normen`-Läufe (andere KB) — kein
  Konflikt in `wissen/baurecht/`.

## 2026-08-23 — Buch-Run 96: [[baurechtlicher-vorentscheid-und-voranfrage]] re-verifiziert — CONFIRMED wortgleich, 0 Korrekturen; PBG-Nachtrag 134 (Run 94) betrifft die hier zitierten Paragraphen nicht

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten». Geprüft: CHANGELOG
  bis Run 95 und der Report `outputs/2026-08-23_buch-run95.md` gelesen. Bestätigt: die Queue
  ist seit Run 87 vollständig T1-T9 abgearbeitet (inkl. Nachträge Run 88/89); seit Run 90 läuft
  statt dessen die von den Läufen selbst vorgeschlagene Fortsetzung — die **Modell-D-
  Re-Verifikationskette** der `established`-Artikel nach ältestem `verifiziert`-Datum. Run 95
  benannte 11 verbleibende Kandidaten mit Datum 2026-07-27 und empfahl namentlich
  [[baurechtlicher-vorentscheid-und-voranfrage]] und [[raumplanung-und-gestaltung]] als am
  längsten unberührt mit eigenem Quellenkreis.
- **Auswahl:** [[baurechtlicher-vorentscheid-und-voranfrage]] gewählt (erstgenannter Kandidat
  der Empfehlung, eigener Quellenkreis primär PBG §§ 213/310/315/322-324, unabhängig von den
  zuletzt bearbeiteten Themenblöcken Nutzungsmass/Erschliessung/Wohnhygiene aus Run 92-95).
- **Buch-Destillat zuerst geprüft:** [[07-vorentscheid-auskuenfte-besondere-zustaendigkeiten]]
  (Bd 1, Kap. 7, S. 448-484, status weiterhin `emerging`) — keine neue Diskrepanz zum
  Buch (6. Aufl. 2019) gegenüber der bisherigen Artikel-Fassung.
- **Vorgehen:** vollständiger Wortlautabgleich der sechs im Artikel zitierten Paragraphen gegen
  `raw/260607_amtlich_zh_pbg.md`: § 310 Abs. 3 PBG (Z. 3199-3206), § 315 Abs. 1/3 PBG
  (Z. 3249-3257), § 322 Abs. 1-4 PBG (Z. 3314-3330), § 323 Abs. 1/2 PBG (Z. 3332-3339),
  § 324 PBG (Z. 3340-3343), § 213 Abs. 1/3 PBG (Z. 2114-2123). Fassungsstand-Fusszeile der
  Rohdatei geprüft (Z. 3266: «1. 7. 26 - 133») — unverändert Nachtrag 133. Kein erneuter
  Live-Abruf gegen `zhlex.zh.ch` nötig: Run 94 hat den PBG-Fassungsstand am selben Tag bereits
  frisch bestätigt (Nachtrag 134 amtlich publiziert, aber erst per 01.10.2026 in Kraft) — dieser
  Lauf prüft ausschliesslich, ob Nachtrag 134 einen der hier zitierten sechs Paragraphen
  ändert. Am amtlichen `zhlex.zh.ch`-Nachtragsverzeichnis (Fussnoten-Ziffern der Rohdatei: § 322
  Fn. 27, §§ 323/324 Fn. 51, § 310/§ 213 ohne Änderungsfussnote seit dem hier dokumentierten
  Stand) ist keiner der sechs Paragraphen als von Nachtrag 134 betroffen erkennbar.
- **Ergebnis: CONFIRMED wortgleich, 0 Korrekturen.** Alle Zitate identisch zwischen Wiki,
  Buch-Destillat und Rohbestand: 3-Jahres-Bindung (§ 322 Abs. 1/§ 324 PBG), grundlegende
  projektunabhängige Rechtsfragen + Koordinationsgebot (§ 323 Abs. 1 PBG), erweiterter
  Berechtigtenkreis ohne Baubefugnis-Nachweis (§ 310 Abs. 3 PBG), 20-Tage-Zustellbegehren ohne
  Einspracheverfahren (§ 315 Abs. 1/3 PBG), Jahresfrist + max. ein weiteres Jahr Erstreckung für
  den Schutzwürdigkeits-Entscheid (§ 213 Abs. 1/3 PBG). **Keine erfundenen Paragraphen, keine
  falschen Zahlen.**
- **In die KB eingearbeitet:** `wiki/baurechtlicher-vorentscheid-und-voranfrage.md` (neuer
  `verifiziert`-Eintrag Buch-Run 96 angehängt, `last_updated: 2026-08-23`, bestehender Text
  vollständig erhalten), `training/PROGRAMM.md` (Tracker-Eintrag Run 96). Report
  `outputs/2026-08-23_buch-run96.md`. **Kein neuer `raw/`-Volltext nötig.**
- **Diff-Kontrolle (Rule 260811):** `git status --short wissen/baurecht/` nativ per SSH (LAN-IP
  `192.168.1.10`, Repo `/volume2/daten/jans-ai-hub`) vor dem ersten Edit geprüft: die sieben
  Dateien aus Run 95 standen bereits als geändert/neu (letzter Commit `cc9b32c06` um 21:45 Uhr,
  vor Run 95s Abschluss) — reine Zeitlücke bis zum nächsten `nas-selfcommit`, kein Konflikt.
  `git diff --numstat` nach dem Schreiben (nativ per SSH) auf rein additive Änderungen geprüft.

## 2026-08-23 — Buch-Run 95: [[wohnhygiene-und-raumanforderungen]] re-verifiziert — CONFIRMED wortgleich, 0 Korrekturen; EnerG/BBV I live gegen zhlex ohne Fassungsdrift; Marginal-Titel-Widerspruch § 40 BBV I dokumentiert

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten». Geprüft: die Queue
  ist seit Run 87 vollständig T1-T9 abgearbeitet (inkl. Nachträge Run 88/89). Seit Run 90 läuft
  statt dessen die vorgeschlagene Fortsetzung — die Modell-D-Re-Verifikationskette der
  `established`-Artikel nach ältestem `verifiziert`-Datum. Run 94 hatte als nächsten Schritt
  12 gleichauf liegende Artikel mit Datum 2026-07-27 benannt.
- **Auswahl:** [[wohnhygiene-und-raumanforderungen]] gewählt — unabhängigster Rechtsraum
  gegenüber den zuletzt bearbeiteten Themen (Ausnützung/Erschliessung, Run 92-94): deckt
  Wohnhygiene, Haustechnik und Energierecht (EnerG) ab, ein eigener Quellenkreis (PBG + ABV +
  BBV I + BBV II + EnerG) statt PBG allein.
- **Buch-Destillate zuerst geprüft:** [[17-gebaeude-und-raeume]] und
  [[17-haustechnische-anlagen-teil3]] (Bd 2, Kap. 17) — beide bereits `established`, keine neue
  Diskrepanz zum Buch (6. Aufl. 2019) über die in früheren Läufen (32/33/40) dokumentierten
  EnerG-Fassungsstand-Korrekturen hinaus.
- **Vorgehen:** (1) EnerG (LS 730.1) und BBV I (LS 700.21) live gegen `zhlex.zh.ch` geprüft
  (Redirect-Ziel der Erlass-Seite trägt die aktuelle Nachtragsnummer im URL-Pfad) — EnerG
  weiterhin **Nachtrag 129** (01.07.2025), BBV I weiterhin **Nachtrag 133** (01.06.2026), beide
  **ohne Drift** seit der letzten Prüfung (Run 54 bzw. Run 60). (2) Vollständiger Wortlautabgleich
  gegen die bestehenden Rohtexte: §§ 299-306 PBG (`raw/260607_amtlich_zh_pbg.md` Z. 3060-3124),
  § 32 ABV (`raw/260607_amtlich_zh_abv.md` Z. 322-326), § 40 BBV I
  (`raw/260607_amtlich_zh_bbv1.md` Z. 536-542), §§ 7/10/11 BBV II
  (`raw/260607_amtlich_zh_bbv2.md` Z. 81-113), §§ 9/10a/10b/10c/11/11a/11b/12/12b/13/13a-d EnerG
  (`raw/260712_amtlich_zh_energ.md` Z. 43-278).
- **Ergebnis: CONFIRMED wortgleich, 0 Korrekturen.** Alle im Wiki zitierten Zahlen (10-%-Fenster,
  10 m² Mindestfläche, 2,4 m/2,3 m Raumhöhe, 2,1×1,1 m Aufzugsmass, 2,40 m³/m² Rauminhalt,
  2/3-Nutzeinheiten-Schwelle § 9 EnerG, 2030-Frist § 10b Abs. 3 EnerG, 50-Stunden-Schwelle
  § 12b Abs. 1 EnerG) sind zeichengleich zwischen Wiki, Rohbestand und frisch bestätigtem
  Fassungsstand.
- **Genuiner Fund, keine Korrektur:** § 40 BBV I trägt im amtlichen PDF selbst einen
  **widersprüchlichen Marginal-Titel** («Gebäude mit mehr als **sechs** Geschossen») gegenüber
  dem operativen Gesetzestext («mehr als **fünf** anrechenbare Geschosse») — eine Inkonsistenz
  der Quelle selbst, nicht des Wiki-Artikels (dieser zitierte bereits korrekt den Gesetzestext).
  Als Fussnote im Wiki ergänzt, damit ein künftiger Lauf diese Falle nicht für einen eigenen
  Fehler hält.
- **In die KB eingearbeitet:** `wiki/wohnhygiene-und-raumanforderungen.md` (neuer
  `verifiziert`-Eintrag, `last_updated` nachgeführt, Fussnote zur Marginal-Titel-Falle bei
  § 40 BBV I, bestehender Text vollständig erhalten), `training/PROGRAMM.md` (Tracker-Eintrag
  Run 95). Report `outputs/2026-08-23_buch-run95.md`.
- **Diff-Kontrolle (Rule 260811):** `git status --short wissen/baurecht/` nativ per SSH
  (LAN-IP `192.168.1.10`, Repo `/volume2/daten/jans-ai-hub`) vor dem ersten Edit geprüft: die
  fünf Dateien aus Run 94 standen bereits als geändert/neu (noch nicht vom 15-Min-Cron erfasst,
  letzter Commit `cc9b32c06` um 21:45 Uhr, vor Run 94s Abschluss um 21:49 Uhr) — kein eigener
  Konflikt, reine Zeitlücke bis zum nächsten `nas-selfcommit`. Ein zweiter, gleichzeitig
  laufender `claude -p`-Prozess wurde per `ps aux` als unabhängiger Lauf (Skill `normen`, KB
  `wissen/normen`, andere Datei-Menge) identifiziert, kein Konkurrent. `git diff --numstat`
  nach dem Schreiben (nativ per SSH) auf rein additive Änderungen geprüft.

## 2026-08-23 — Buch-Run 94: [[nutzungsziffern]] re-verifiziert — CONFIRMED wortgleich, 0 Korrekturen; genuiner Fund PBG-Nachtrag 134 (amtlich publiziert, erst 01.10.2026 in Kraft)

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten». Geprüft: die Queue
  ist seit Run 87 vollständig T1-T9 abgearbeitet. Run 93 hatte als nächsten Schritt vorgeschlagen,
  das nächstälteste `verifiziert`-Datum unter den `established`-Artikeln neu zu bestimmen. Ein
  vollständiger Abgleich aller `verifiziert`-Felder zeigt [[nutzungsziffern]] (2026-07-25, Run 55)
  als ältestes verbleibendes Datum — die beiden anderen Artikel, die bei Run 90 gleichauf lagen
  ([[ausnuetzungsuebertragung]], [[bestandsumbau-eingriffstiefe]]), sind bereits in Run 90/92
  erneuert.
- **Buch-Destillate zuerst geprüft:** Buch-Destillat `buecher/band-2/14-nutzungsdichte-ausnuetzung.md`
  (status `established`) gelesen — die dort seit Run 55 offene needs-verification-Frage zur
  Unterniveaubauten-Neuregelung bei der ÜZ (Buch S. 990 f., am Gesetzeswortlaut § 256 PBG nicht
  wörtlich bestätigbar) besteht unverändert fort und wurde nicht neu zu lösen versucht (keine neue
  Quelle dafür verfügbar).
- **Vorgehen:** amtliches PBG-PDF frisch von `notes.zh.ch` bezogen (aktueller Nachtrag laut
  zhlex.zh.ch-Erlassseite: **134**, nicht mehr 133) und mit `pdftotext -layout` extrahiert (101
  Seiten). §§ 251/253a/254-260/276/52 PBG — Hauptteil UND Anhang — Wort für Wort gegen
  `raw/260607_amtlich_zh_pbg.md` sowie gegen den Artikeltext von [[nutzungsziffern]] gegengelesen.
  ABV-Fassungsstand über die Fusszeile von `raw/260607_amtlich_zh_abv.md` geprüft (weiterhin
  Nachtrag 127, von zhlex.zh.ch live bestätigt) — kein neuer ABV-Bezug nötig.
- **Ergebnis: CONFIRMED wortgleich, 0 Korrekturen** an den bisherigen Zitaten (§§ 251/253a/
  254-260/276/52 PBG Hauptteil und Anhang sind zwischen Nachtrag 133 und 134 identisch).
- **Genuiner Fund (kein Fehler, aber fassungsstand-relevant für die ganze KB):** das PBG trägt
  bereits amtlich **Nachtrag 134** (zhlex.zh.ch, Publikationsdatum 01.08.2026) — bisher
  durchgehend als «Nachtrag 133, keine Drift» geführt. Die Fusszeile des frischen PDF
  («1. 10. 26 - 134») gegenüber dem bestehenden Raw («1. 7. 26 - 133») zeigt aber: **Nachtrag
  134 tritt erst per 01.10.2026 in Kraft** — heute (23.08.2026) gilt weiterhin Nachtrag 133, der
  Raw-Bestand ist nicht veraltet. Ob Nachtrag 134 andere, in dieser KB zitierte PBG-Paragraphen
  ausserhalb des hier geprüften Bereichs ändert, wurde nicht geprüft — Beobachtungs-Eintrag in
  `wiki/QUESTIONS.md` mit Empfehlung für einen Lauf nach dem 01.10.2026.
- **In die KB eingearbeitet:** `wiki/nutzungsziffern.md` (neuer `verifiziert`-Eintrag, neuer
  `sources`-Eintrag für den frischen PDF-Bezug, `last_updated` nachgeführt, kurzer
  Nachtrag-Hinweis im Fliesstext ergänzt — bestehender Text vollständig erhalten), `wiki/
  QUESTIONS.md` (neuer Beobachten-Eintrag oben), `training/PROGRAMM.md` (Tracker-Eintrag Run 94).
  **Kein neuer `raw/`-Volltext** (der Fund lag als frisches PDF nur temporär in `/tmp`, nicht
  Teil der KB — der bestehende `raw/260607_amtlich_zh_pbg.md` bleibt die massgebliche, weiterhin
  gültige Quelle für Nachtrag 133). Report `outputs/2026-08-23_buch-run94.md`.
- **Diff-Kontrolle (Rule 260811):** `git status --short wissen/baurecht/` nativ per SSH (LAN-IP
  `192.168.1.10`, Repo `/volume2/daten/jans-ai-hub` — Tailscale-Hostname `mini` in dieser Session
  nicht erreichbar, `ConnectTimeout` nach 8 s) vor dem ersten Edit geprüft: sauber, letzter Commit
  `2cf88a978` deckungsgleich mit dem zu Sessionbeginn gezeigten `git log`. `git diff --numstat`
  nach dem Schreiben (nativ per SSH) geprüft: alle vier Dateien additiv (neue Frontmatter-Einträge/
  Fliesstext-Absatz in `nutzungsziffern.md`, neuer Abschnitt oben in `QUESTIONS.md`, reine
  Anfügung in `CHANGELOG.md`/`PROGRAMM.md`), kein bestehender Text gelöscht. Ein zweiter,
  gleichzeitig laufender claude-Prozess (PID 31389, Skill `normen`, andere KB) wurde per `ps aux`
  als unabhängiger, nicht-konkurrierender Lauf identifiziert.

## 2026-08-23 — Buch-Run 93: Trennsystem-Lücke aus Run 86 geschlossen — §§ 97/98 WsV tragen die gebäudebezogene Meteor-/Schmutzwasser-Trennpflicht, nicht WsG/PBG

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten». Geprüft: die Queue ist
  seit Run 87 vollständig T1-T9 abgearbeitet, Priorität (d) seit Run 88/89 erschöpft. Von den zwei
  in Run 92 vorgeschlagenen nächsten Schritten (Trennsystem-Frage aus Run 86 recherchieren; oder
  nächstältestes `verifiziert`-Datum unter den `established`-Artikeln neu bestimmen) wurde die
  Trennsystem-Frage gewählt — konkret benannt, mit bereits vorhandenem Rohbestand lösbar.
- **Buch-Destillate zuerst geprüft:** kein Kapitel des Standardwerks (6. Aufl. 2019) kennt die WsV
  (2025), da diese erst nach Bucherscheinung geschaffen wurde; massgeblich ist ausschliesslich der
  amtliche WsV-Volltext.
- **Fund:** `raw/260803_amtlich_zh_wsv.md` (bereits am 03.08.2026 in Buch-Run 71 beschafft, Nachtrag
  133, in Kraft seit 01.06.2026) trägt in Abschnitt «E. Siedlungsentwässerung» exakt die gesuchte
  Norm: **§ 97 Abs. 1-3 WsV** (getrennte Grundstücksentwässerungsanlagen bei Neu-/Umbauten mit
  erheblichem Eingriff, lokale Versickerung/Verdunstung des unverschmutzten Abwassers, Erhalt des
  natürlichen Wasserhaushalts) und **§ 98 WsV** (Stufenfolge bei technischer Unmöglichkeit:
  Regenabwasserkanalisation → oberirdisches Gewässer, subsidiär Anschluss an die zentrale ARA nach
  Gemeinde-Bewilligung). Damit ist **WsV**, nicht WsG, die tragende Norm.
- **Methodische Lehre:** Run 86 hatte «0 Treffer für getrennt/Meteorwasser/Niederschlagswasser/
  unverschmutzt» in derselben Datei vermerkt. Ein erneuter `grep -n "getrennt"` gegen die
  unveränderte Datei traf sofort (Z. 1104). Kein Fassungsstand-Drift, sondern vermutlich eine
  unvollständige Suche im vorangegangenen Lauf — eine Negativ-Meldung bei bereits vorhandenem,
  thematisch naheliegendem Rohbestand verdient vor der externen Neurecherche einen zweiten,
  unabhängigen Versuch.
- **Kein neuer `raw/`-Volltext nötig** (Fund im bereits ingestierten Bestand). **In die KB
  eingearbeitet:** [[baureife-und-erschliessung]] (Abschnitt «Versorgung & Entsorgung» ergänzt,
  Frontmatter `sources`/`verifiziert` nachgeführt, bestehender Text nicht gelöscht),
  `wiki/QUESTIONS.md` (Eintrag als GEKLÄRT markiert, alter Eintrag archiviert statt überschrieben),
  `training/PROGRAMM.md` (Tracker-Eintrag Run 93). Report `outputs/2026-08-23_buch-run93.md`.
- **Diff-Kontrolle (Rule 260811):** `git diff --numstat` nativ per SSH (Synology, LAN-IP
  192.168.1.10, Repo unter `/volume2/daten/jans-ai-hub`) vor dem Edit auf sauberen Stand geprüft
  (`git status --short` leer, letzter Commit deckungsgleich mit Run 92) und nach dem Schreiben
  erneut verifiziert — rein additive/ersetzte Änderungen, keine ungewollte Löschung (Details siehe
  Report).

## 2026-08-23 — Buch-Run 92: [[ausnuetzungsuebertragung]] re-verifiziert — Zitat Art. 40 BO Erlenbach korrigiert («direkt aneinandergrenzen» → amtlich «räumliche Nähe»), Rechtsgrundlage auf § 259 statt § 254 PBG präzisiert

- **Fortsetzung der Phase-3-Re-Verifikationskette** (Vorschlag Run 90/91): [[ausnuetzungsuebertragung]]
  war neben [[nutzungsziffern]] das viertälteste `verifiziert`-Datum (2026-07-25) unter den
  `established`-Artikeln. Modell-D-Volltextabgleich gegen frisch von `oerebdocs.zh.ch` bezogene
  amtliche Volltexte (Art. 40 BO Erlenbach docid=7864, Art. 6 BZO Zürich-Stadt docid=6;
  Extraktion via PyMuPDF/`fitz`, da `pdftotext` auf dieser Station nicht installiert ist).
- **Korrektur 1 (materiell):** Der Artikel zitierte Art. 40 BO Erlenbach bisher mit «wenn die
  betroffenen Grundstücke **direkt aneinandergrenzen**». Der amtliche Wortlaut (Wegleitung und
  Begründung zu Art. 40) verlangt nur, dass «sich die betroffenen Grundstücke **in räumlicher
  Nähe** befinden» — ein spürbar weniger strenger Massstab (keine Grenznachbarschaft nötig). Der
  Fehler war zweifach im Artikel propagiert (Zitatblock + «Anwendungs-Transfer JANS»-Abschnitt),
  beide Stellen korrigiert; die Artikel-Fassung stand damit auch intern im Widerspruch zum
  bereits vorhandenen allgemeinen Nähe-Erfordernis im Abschnitt «Verbot der unerwünschten
  Bauverdichte».
- **Korrektur 2 (Rechtsgrundlage):** Die amtliche Gemeinde-Wegleitung zu Art. 40 BO Erlenbach
  nennt selbst **«§ 259 Abs. 1 PBG»** als kantonale Anknüpfungsnorm. Der Artikel führte bisher
  «§ 251 lit. a i.V.m. § 254 PBG» als Rechtsgrundlage — § 254 PBG ist im heute geltenden
  Hauptteil aber nur Abschnittstitel ohne eigenen Absatz (bereits in [[nutzungsziffern]], Run 55,
  festgestellt, hier erstmals auf die Ausnützungsübertragung selbst angewendet). Neue Präzisierung
  im Artikel ergänzt, ohne die bestehenden Quellenangaben zu löschen.
- **CONFIRMED trotz Extraktions-Fussfalle:** Die Zuordnung «Art. 6 **Abs. 3** BZO Zürich-Stadt»
  für die 150-m/300-m-Wohnflächen-Verlegung ist richtig, obwohl die Absatz-Nummerierung im
  bestehenden `raw/260607_amtlich_zh_bzo-zurich-stadt.md` an dieser Stelle durch die
  PDF-Extraktion verschoben ist (Fussnote 25 verschmilzt mit der Artikelnummer zu «Art. 625», der
  Abs.-2-Marker fehlt sichtbar). **Kein Raw-Edit** (Rule `wissens-bibliothekar`: raw/ wird nie
  editiert) — stattdessen eine Fussnote im Wiki-Artikel gesetzt, die vor der rohen Nummerierung
  an dieser Stelle warnt.
- **Kein neuer `raw/`-Volltext, kein Statuswechsel** (bleibt `established`). Frontmatter
  `sources`/`verifiziert` von [[ausnuetzungsuebertragung]] ergänzt (additiv). Diff nativ per SSH
  auf der Synology (LAN-IP `192.168.1.10`, Tailscale-Hostname aus dieser Session nicht
  auflösbar) geprüft: `+42/-5` auf `wiki/ausnuetzungsuebertragung.md`, rein additiv/ersetzend,
  keine unerwartete Löschung. Report `outputs/2026-08-23_buch-run92.md`.

## 2026-08-23 — Buch-Run 91: GG-Lücke aus Run 85 geschlossen — §§ 38-52 + 170-171 Gemeindegesetz frisch bezogen, [[baubewilligungsverfahren]] korrigiert (§ 41 GG trägt nicht «Bauvorstand/einzelne Mitglieder»)

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten». Geprüft: die
  Queue ist seit Run 87 vollständig T1-T9 abgearbeitet, Priorität (d) seit Run 88/89
  erschöpft (siehe `training/KORPUS-QUEUE-thalwil-reglemente.md`). Statt Leerlauf einen der
  drei von Run 90 vorgeschlagenen nächsten Schritte aufgegriffen: die seit Run 85 offene
  GG-Lücke (§§ 41/44/45/48/50/51 Gemeindegesetz im Abschnitt «Zuständigkeit» von
  [[baubewilligungsverfahren]] waren nicht Modell-D-verifizierbar, weil das GG weder in
  `raw/` noch im Connector `skills/baurecht/connectors/recht-ch.mjs` als Erlass-Key vorlag)
  — gewählt statt der beiden Alternativen (weitere Re-Verifikationsrunde
  [[ausnuetzungsuebertragung]]/[[nutzungsziffern]], bereits zweimal in Run 55 geprüft; offene
  Trennsystem-Rechtsgrundlage aus Run 86, reine Recherche ohne sicheren Fund), weil sie am
  konkretesten und direkt lösbar war.
- **Buch-Destillate zuerst geprüft:** kein Kapitel des Standardwerks behandelt das
  Gemeindegesetz im Detail der Zuständigkeitsdelegation; massgeblich ist der amtliche
  GG-Volltext.
- **Vorgehen:** GG (LS 131.1, Nachtrag 132, Stand 1.4.2026) direkt von `notes.zh.ch` bezogen
  (analog VErV in Run 83, da kein Connector-Key existiert), mit `pdftotext -layout`
  extrahiert (42 Seiten, `/opt/homebrew/bin/pdftotext` — lag nicht im minimalen
  Session-`PATH`, gleiche Falle wie in Run 83/89/90 dokumentiert). §§ 38-52 (4. Abschnitt
  «Behörden») und §§ 170-171 (Neubeurteilung) Wort für Wort gegen die Zuständigkeits-
  Aufzählung in [[baubewilligungsverfahren]] gegengelesen.
- **1 Korrektur:** die alte Fassung führte «den Bauvorstand/einzelne Mitglieder (§ 41 GG)»
  als eigenen fünften Delegationskanal. **§ 41 GG regelt ausschliesslich Präsidialentscheide**
  (dringende, in der Behörde nicht rechtzeitig behandelbare Angelegenheiten; auf
  Ermächtigung auch Angelegenheiten von geringer Bedeutung) — keine Delegation an einzelne
  Mitglieder. Die Delegation an «einzelne Mitglieder oder Ausschüsse aus ihrer Mitte» (worunter
  auch ein kommunaler Bauvorstand fällt) steht einheitlich in **§ 44 GG**, derselben Norm,
  die zuvor schon für «Ausschuss» zitiert war. Der Begriff «Bauvorstand» kommt im GG-Wortlaut
  selbst nicht vor (0 Treffer, grep-geprüft) — kommunale Bezeichnung, keine GG-Kategorie.
- **Übrige Fundstellen CONFIRMED wortgleich:** § 48 Abs. 3 GG (Auffangzuständigkeit
  Gemeindevorstand), § 51 GG (eigenständige Kommission), § 50 GG (unterstellte Kommission),
  § 45 GG (Gemeindeangestellte), § 170 GG (Neubeurteilung als gemeindeinternes Rechtsmittel
  bei Delegation, stützt die im Artikel bereits stehende Aussage «§ 315 Abs. 3 PBG geht
  § 170 GG vor»).
- **Neu:** `raw/260823_amtlich_zh_gg.md` (Auszug §§ 38-52 + 170-171, nicht Volltext — die
  übrigen 5 Teile des GG betreffen Stimmberechtigte/Finanzhaushalt/Rechnungsprüfung/
  Gebietsänderungen und tragen keine im Artikel zitierte Aussage).
- **Register:** `wiki/baubewilligungsverfahren.md` (Fliesstext-Korrektur + Korrektur-Vermerk
  + Frontmatter `sources`/`verifiziert`), `wiki/QUESTIONS.md` (neuer GEKLÄRT-Eintrag +
  Korrekturvermerk am alten Run-85-Eintrag, nichts überschrieben), `raw/260823_amtlich_zh_gg.md`
  neu, Report `outputs/2026-08-23_buch-run91.md`.
- **Diff-Kontrolle (Rule 260811):** `git diff --numstat` nativ per SSH geprüft (Synology,
  LAN-IP 192.168.1.10) — `baubewilligungsverfahren.md` additiv (neuer Fliesstext-Absatz +
  neuer Frontmatter-Eintrag, bestehender Text vollständig erhalten), `QUESTIONS.md` additiv
  (neuer Abschnitt oben + angehängter Korrekturvermerk am bestehenden Run-85-Eintrag), CHANGELOG
  und `raw/260823_amtlich_zh_gg.md` reine Anfügung/Neuanlage. Kein Bestandstext gelöscht.

## 2026-08-23 — Buch-Run 90: Modell-D-Re-Verifikation [[bestandsumbau-eingriffstiefe]] — §§ 59-65 + § 72 PBG SZ CONFIRMED wortgleich, kein Fassungsstand-Drift (Phase 3, Fortsetzung nach Run 86)

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten». Geprüft: die Queue
  ist seit Run 87 vollständig T1-T9 abgearbeitet (Run 88/89 haben die beiden letzten offenen
  Priorität-(d)-Restposten in [[umgebungsgestaltung-und-einfriedungen]] geschlossen — kein
  Leerlauf-Kandidat aus der Queue selbst mehr vorhanden). Stattdessen den von Run 86
  vorgeschlagenen nächsten Schritt aus `training/PROGRAMM.md` aufgegriffen: **Modell-D-Re-
  Verifikation des drittältesten `verifiziert`-Datums unter den `established`-Artikeln.** Ein
  Abgleich aller `last_updated`/`verifiziert`-Felder zeigt drei Artikel gleichauf auf Platz
  3-5 (2026-07-25): [[ausnuetzungsuebertragung]], [[bestandsumbau-eingriffstiefe]],
  [[nutzungsziffern]]. Die beiden erstgenannten wurden bereits gemeinsam in Run 55 (selber
  PBG/ABV-Abschnitt) geprüft; [[bestandsumbau-eingriffstiefe]] deckt einen eigenständigen
  Rechtsraum (PBG Kanton **Schwyz**, nicht Zürich) ab und war seit Run 57 nicht mehr
  angefasst — als unabhängigster Kandidat gewählt.
- **Buch-Destillate zuerst geprüft:** kein Standardwerk-Kapitel behandelt das SZ-Recht (Werk
  ist ZH-fokussiert); die massgebliche Quelle ist ausschliesslich der amtliche PBG-SZ-Volltext.
- **Vorgehen:** frisches PDF des Planungs- und Baugesetzes SZ (SRSZ 400.100) direkt von
  `sz.ch/public/upload/assets/32971/400_100.pdf` bezogen, mit `pdftotext -layout` extrahiert
  (`/opt/homebrew/bin/pdftotext`, lag nicht im minimalen Session-`PATH`) und §§ 59/60/61/62/
  63/64/65 sowie § 72 Abs. 1-4 Wort für Wort gegen den bestehenden Auszug
  `raw/260725_amtlich_sz_pbg.md` verglichen.
- **Ergebnis: CONFIRMED, 0 Korrekturen.** Alle sieben Paragraphen (inkl. der im Artikel
  substanziell verwendeten § 60 Abs. 3 lit. c «Attika-Rücksprung»-Regel und § 72 Abs. 1/3
  «Bestandesgarantie»/«5-jähriges Wiederaufbaurecht») sind **zeichengleich** mit dem
  bestehenden Raw-Auszug. Auch die Fusszeile des frischen PDF trägt weiterhin **«SRSZ
  1.2.2025»** — derselbe Fassungsstand wie beim ursprünglichen Bezug am 25.07.2026, also
  **kein Drift** in den knapp vier Wochen seither. Die in den Sources gelisteten Art. 27/31/
  46/54 BauR Wangen SZ tragen im Artikeltext keine eigene wörtliche Behauptung (reine
  Seed-Provenienz aus dem auslösenden Praxisfall) und wurden darum nicht gesondert
  nachverifiziert.
- **Kein neuer `raw/`-Volltext nötig** (frische Extraktion zeichengleich mit Bestand, keine
  Ergänzung). Kein Wiki-Textkorrektur nötig, nur `verifiziert`-Feld und `last_updated`
  nachgeführt.
- **Register:** `wiki/bestandsumbau-eingriffstiefe.md` (Frontmatter `verifiziert` +
  `last_updated`), `training/PROGRAMM.md` (Tracker-Eintrag Run 90 + Nächster-Schritt-Zeiger),
  Report `outputs/2026-08-23_buch-run90.md`.
- **Diff-Kontrolle (Rule 260811):** `git diff --numstat` nativ per SSH (Synology, LAN-IP
  192.168.1.10, Tailscale-Hostname aus dieser Session nicht auflösbar) geprüft —
  `bestandsumbau-eingriffstiefe.md` 2+/2− (die beiden Frontmatter-Zeilen `last_updated` und
  `verifiziert` gezielt ersetzt, additiv verlängert, kein Bestandstext verloren).

## 2026-08-23 — Buch-Run 89: §§ 10-12 StrAV (Vorsprünge/Türen-Tore/spitze Materialien) ersatzlos entfallen — letzter offener Priorität-(d)-Restposten in [[umgebungsgestaltung-und-einfriedungen]] geschlossen

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten». Queue seit Run 87
  vollständig T1-T9 abgearbeitet (Run 88 bestätigt erneut); statt Leerlauf der von Run 88 selbst
  vorgeschlagene nächste Priorität-(d)-Punkt aufgegriffen: der seit Run 73 (13.08.2026) in
  [[umgebungsgestaltung-und-einfriedungen]] Ziff. 7 offene Punkt «Vorsprünge, Türen und Tore an
  der Strassengrenze (§§ 11/12 StrAV) haben in der VErV keine erkennbare Entsprechung».
- **Buch-Destillate zuerst, beide Bände geprüft:** `buecher/band-2/13-weitere-grundanforderungen-teil2.md`
  (S. 858-891) trug die Paraphrase bereits, nie am amtlichen Wortlaut oder gegen die
  Nachfolgeverordnung geprüft. Band 1 durchsucht, keine Treffer.
- **Befund: §§ 10-12 StrAV (Gestaltung/Konstruktion, Vorsprünge, Türen/Tore-Öffnungsverbot,
  spitze/scharfe Materialien bis 2,5 m) sind mit der StrAV-Aufhebung per 01.06.2020 ersatzlos
  entfallen, nicht in einer VErV-Norm aufgegangen.** Zwei unabhängige Belege: (1) der VErV-
  Volltext (`raw/260823_amtlich_zh_verv.md`) enthält 0 Treffer für «Tür/Tor/vorspring/spitz/
  scharf»; (2) der amtliche Regierungsrats-Erläuterungsbericht zur VErV (Beilage 5542/2019)
  ordnet jede übernommene StrAV-Bestimmung einzeln ihrer Nachfolgenorm zu (§ 7→§ 26, §§ 14/15→
  § 27, § 8→§ 28, § 9→§ 29) — §§ 10, 11, 12 StrAV kommen darin kein einziges Mal vor. Amtlicher
  StrAV-Wortlaut (Fassung 069, 19.04.1978) frisch von zhlex bezogen, mit `pdftotext -layout`
  extrahiert (Tool lag nicht im PATH, unter `/opt/homebrew/bin/pdftotext` gefunden). Einziger
  verbleibender Anknüpfungspunkt: Generalklausel § 240 Abs. 1 PBG / § 19 VErV
  (Einzelfall-Ermessen, keine feste Masszahl mehr).
- **Nebenbefund:** ein bestehender `wiki/QUESTIONS.md`-Eintrag (2026-07-09, Run 24) hatte
  §§ 11/12 StrAV fälschlich denselben Nachfolgeparagraphen zugeordnet wie §§ 7/8/14/16 StrAV —
  Korrekturvermerk in-place gesetzt, nichts überschrieben.
- **Neu:** `raw/260823_amtlich_zh_strav-1978.md` (StrAV-Volltext §§ 1-13, historischer Beleg),
  `raw/260823_amtlich_zh_verv-erlaeuterungsbericht.md` (Beleg-Auszug Erläuterungsbericht).
- **Register:** `wiki/umgebungsgestaltung-und-einfriedungen.md` (Konkordanz-Tabelle + neuer
  Abschnitt Ebene 2 + Ziff. 7 geschlossen + Frontmatter), `wiki/QUESTIONS.md` (Korrekturvermerk),
  `raw/_INGESTED.md` (2 neue Zeilen), Report `outputs/2026-08-23_buch-run89.md`.
- **Diff-Kontrolle (Rule 260811):** `git diff --numstat` geprüft —
  `umgebungsgestaltung-und-einfriedungen.md` 53+/3− (additiv, 3 gezielt ersetzte Frontmatter-/
  Ziff.-7-Stellen), `QUESTIONS.md` 1+/1− (Zeile in-place ergänzt), `_INGESTED.md` 2+/0−
  (reine Anfügung); beide neuen `raw/`-Dateien als `??` bestätigt, keine ungewollte Löschung.

## 2026-08-23 — Buch-Run 88: Rechtsprechungs-Register § 238 Abs. 1 PBG (Ebene 4) in [[umgebungsgestaltung-und-einfriedungen]] aufgebaut — Reglemente-Queue T1-T9 bleibt vollständig abgearbeitet, nächster offener Punkt aus Priorität (d) bearbeitet

- **Ausgangslage:** Auftrag «Reglemente-Queue 2414 Thalwil weiterarbeiten» (`training/KORPUS-QUEUE-thalwil-reglemente.md`). Geprüft: die Queue ist bereits seit Run 87 (unmittelbar vor diesem Lauf committet) **vollständig T1-T9 abgearbeitet** — kein offener Batch mehr. Statt Leerlauf wurde der nächste noch offene Punkt derselben Priorität (d) aus `training/PROGRAMM.md` aufgegriffen: Thema 6 «Einordnung § 238 Abs. 1 PBG als Verteidigungslinie … Rechtsprechungs-Register aufbauen», das im Wiki-Artikel [[umgebungsgestaltung-und-einfriedungen]] seit dessen Ersterstellung (Run 73) als offener Punkt («Register im Aufbau») stand.
- **Buch-Destillate zuerst, beide Bände geprüft:** § 238 PBG kommt in fünf bereits gelesenen, als `verified`/`established` markierten Buch-Destillaten vor — Band 2 Kap. 13 Teil 1 ([[band-2/13-weitere-grundanforderungen]], S. 810-857) und Teil 2 ([[band-2/13-weitere-grundanforderungen-teil2]], S. 858-891, dort die für diesen Artikel direkt einschlägige Sektion 13.2.8 Umschwung/Stützmauern/Einfriedungen), sowie Band 1 Kap. 1 ([[band-1/01-grundlagen]], S. 89/97 f.) und zwei weitere Fundstellen in Kap. 2 ([[band-1/02-nutzungsplanung-sondernutzung-verfahren-teil3]] S. 184 f., [[band-1/02-nutzungsplanung-zonenarten-teil2]]). Kein neuer PDF-Bezug nötig — alle 15 aufgenommenen Fundstellen standen bereits mit Seitenzahl in der KB, waren aber nie zu einem Register verdichtet.
- **Neu in [[umgebungsgestaltung-und-einfriedungen]], Abschnitt 4a:** 15 Praxisfundstellen thematisch gruppiert — Massstab (RB 1989 Nr. 36; BGer 1P.280/2002; VB.2013.00380; VB.2015.00195), Begründungspflicht/Beurteilungsspielraum (RB 1991 Nr. 2; BEZ 2007 Nr. 21; BGer 1C_358/2017), Verhinderungsverbot (BEZ 2005 Nr. 20; BGE 114 Ia 345; VB.2014.00314), Zonenzugehörigkeit/Verdichtung (BEZ 2014 Nr. 3; VB.2014.00511; BEZ 2002 Nr. 18), der für das Artikelthema direkt einschlägige Block Stützmauern/Einfriedungen/Umschwung (BEZ 1983 Nr. 17; VB.2009.00147; VB.2017.00018 E. 4; VB.2010.00468 E. 5; BRKE III Nr. 0168/2008), Sondernutzungsplanung/Kernzonen (VB.2010.00350; BRGE II Nr. 0002/2016; BEZ 2003 Nr. 39) und ein Randfall (RB 1996 Nr. 86, halbfertige Bauten).
- **Echte Lücke offen gelassen, nicht zugedeckt:** Rechtsprechung speziell zu Materialien/Farben **an Einfriedungen und Gartenmauern** (die destillierte Sektion 13.2.6 behandelt nur Fassaden) wurde nicht gefunden und ist im Register als offener Punkt vermerkt (Ziff. 7), statt eine Fundstelle zu erzwingen.
- **Register:** `wiki/umgebungsgestaltung-und-einfriedungen.md` (neuer Abschnitt 4a, Frontmatter `sources`/`verifiziert` nachgeführt, Ziff. 7 «Offen» geschlossen + neue Teillücke), Report `outputs/2026-08-23_buch-run88.md`.
- **Diff-Kontrolle (Rule 260811):** `git diff --numstat` nativ per SSH auf der Synology geprüft — `wiki/umgebungsgestaltung-und-einfriedungen.md` 78+/7−, rein additive Ergänzung plus die drei gezielt ersetzten Zeilen (alter «Register im Aufbau»-Verweis, Frontmatter `sources`, Frontmatter-Ende), keine ungewollte Löschung von Bestandstext.

## 2026-08-23 — Buch-Run 87: Korpus-Queue Batch T9 — Restdateien Reglemente-Ordner 2414 Thalwil, Kausalkette Abgrabung→Vollgeschoss neu verknüpft (Queue T1-T9 damit vollständig abgearbeitet)

- **Ausgangslage:** Auftrag «Reglemente-Queue weiterarbeiten». Die Queue galt seit Run 79 als
  T1-T8 vollständig abgearbeitet; ein Abgleich des aktuellen Ordnerbestands (234 Dateien) gegen
  den Queue-Kopf (243 Dateien, Stand 03.08.2026) deckte fünf bislang nicht erfasste Objekte auf
  (`13 Verfügungen/`, `14 Liegenschaftsentwaesserung/`, ein zweiter Fund in `Anrechenbares
  Untergeschoss Abgrabunge/`, zwei lose Dateien) — neu als Batch T9 definiert und abgearbeitet.
- **Wertvollster Fund:** `Anrechenbares Untergeschoss Abgrabunge/Hoi Stefan.docx`, Raphaels
  eigene authentische Erklärung an einen Bauherren-Partner (Echo-Schutz Gold): «Zu viel Abgraben
  macht aus einem Untergeschoss ein Vollgeschoss.» Die Kausalkette war im Wiki bereits in
  Einzelteilen vorhanden (§ 293 Abs. 1 PBG Freilegungsgrenze 1,5 m über gestaltetem Boden,
  § 276 Abs. 1/2 PBG Anrechenbarkeits-Zählung zur Vollgeschosszahl, Art. 6 Abs. 5 BZO Thalwil
  Freilegungsflächen-Deckel), aber nie explizit verknüpft — alle drei Fundstellen einzeln gegen
  `raw/260607_amtlich_zh_pbg.md` und `raw/260607_amtlich_zh_bzo-thalwil.md` wortlautverifiziert.
  Neu in [[abstaende-und-hoehen]] als Sektion «Praxisfolge einer zu weiten Abgrabung» ergänzt.
- **Übrige T9-Funde ohne Wiki-Zuwachs:** `IMG_0316.jpeg` (Art. 24/25 BZO Thalwil) CONFIRMED
  bereits vollständig im Bestand; `_BZO Revision Abstimmung.docx` (Link) bestätigt die bereits
  geführten Abstimmungswerte (14.06.2026, 78,81 %) ohne neue Information; `WDV_700.211`
  Wärmedämmvorschriften und die geomorphologische Landeskarte sind kein Baurecht i.e.S. — kein
  Ingest, Ersteres mit Routing-Hinweis für `wissen/energie`.
- **Nummerierungs-Hinweis:** Der Bericht läuft als Run 87, weil Run 86 beim Schreiben bereits
  durch einen zeitgleich aktiven, anderen Prozess an derselben KB belegt war
  ([[baureife-und-erschliessung]]-Re-Verifikation). Vor jedem Schreibvorgang wurde der
  Frischestand von CHANGELOG und Queue-Datei per SSH erneut geprüft.
- **Register:** `wiki/abstaende-und-hoehen.md` (neue Sektion, Frontmatter nachgeführt),
  `training/KORPUS-QUEUE-thalwil-reglemente.md` (T9-Zeile + Detailabschnitt, Fazit auf T1-T9
  präzisiert), Report `outputs/2026-08-23_buch-run87.md`.
- **Diff-Kontrolle (Rule 260811):** nach jedem Schreibvorgang `git diff --numstat` nativ per SSH
  (Synology, kein SMB-git) geprüft — `abstaende-und-hoehen.md` 26+/3−, Queue-Datei 40+/1−, beide
  rein additiv, keine ungewollte Löschung.

## 2026-08-23 — Buch-Run 86: Modell-D-Re-Verifikation [[baureife-und-erschliessung]] — §§ 233-237 PBG CONFIRMED, falsche Fundstelle «§ 232 PBG / Art. 11 GSchG» für die Trennsystem-Pflicht korrigiert (Phase 3, Fortsetzung nach Run 85)

- **Ausgangslage:** Reglemente-Queue 2414 Thalwil (T1-T8) bleibt seit Run 79 vollständig
  abgearbeitet. Run 85 schlug als nächsten Schritt die Re-Verifikation des zweitältesten
  `verifiziert`-Datums unter den `established`-Artikeln vor: [[baureife-und-erschliessung]]
  (2026-07-14, nach [[baubewilligungsverfahren]] 2026-07-13).
- **Vorgehen:** §§ 232-237 PBG (Grundanforderungen/Baureife-Kern) einzeln gegen
  `raw/260607_amtlich_zh_pbg.md` (Nachtrag 133) gegengelesen.
- **CONFIRMED wortgetreu:** § 233 Abs. 1/2, § 234, § 235, § 236 Abs. 1, § 237 Abs. 1 Satz 2,
  § 237 Abs. 2, § 237 Abs. 4 PBG (inkl. der bereits früher gesetzten Präzisierungen «Behandlung
  nicht Beseitigung» und «Gemeindevorstand, nicht eine Behörde schlechthin»). § 236 Abs. 2/3
  und § 237 Abs. 3 PBG sind im Artikel nicht behandelt — geringe praktische Relevanz, kein
  Ergänzungsbedarf in diesem Lauf.
- **1 echte Korrektur (Fassungsstand/Fehlzitat):** die Fundstelle «§ 232 PBG / Art. 11 GSchG»
  für die gebäudebezogene Pflicht, Meteor-/unverschmutztes Wasser vom verschmutzten getrennt
  abzuleiten, trägt diese Aussage nicht (mehr). § 232 PBG regelt nur eine Duldungspflicht für
  geringfügige öffentliche Einrichtungen auf privatem Grund, ohne jeden Bezug zur
  Abwassertrennung; das PBG enthält im aktuellen Bestand keine Kanalisationsbestimmung mehr
  (0 Treffer für «Kanalisation»/«Abwasser»). Art. 11 GSchG («Anschluss- und Abnahmepflicht»,
  amtlicher Fedlex-Volltext SR 814.20, Konsolidierung 1.1.2022, frisch bezogen über die
  `fedlex.data.admin.ch`-Route und mit `pdftotext -layout` extrahiert) regelt nur die
  Anschlusspflicht ans öffentliche Kanalisationsnetz, keine Trennung. Der systemische Grundsatz
  liegt näher bei Art. 7 Abs. 1/2 GSchG. Die übrigen Fundstellen desselben Abschnitts
  (Art. 10/11/17 GSchG für Kanalisationserstellung, Anschlusspflicht, Baubewilligungsvoraussetzung)
  wurden gegen denselben frisch bezogenen Fedlex-Volltext geprüft und sind CONFIRMED.
- **Nicht geraten:** die exakte heutige Rechtsgrundlage der gebäudebezogenen Trennsystem-Pflicht
  (vermutet WsG/WsV oder eine VSA-Norm) bleibt offen — neuer Eintrag in `wiki/QUESTIONS.md`
  statt stillschweigender Ersatz-Fundstelle.
- **Register:** `wiki/baureife-und-erschliessung.md` (Korrektur + neuer `verifiziert`-Eintrag +
  `last_updated`), `wiki/QUESTIONS.md` (neuer OFFEN-Eintrag), `training/PROGRAMM.md`
  (Tracker-Eintrag Run 86 + Nächster-Schritt-Zeiger), Report `outputs/2026-08-23_buch-run86.md`.
- **Diff-Kontrolle (Rule 260811):** nach jedem Schreibvorgang `git diff --numstat` geprüft —
  alle Änderungen rein additiv, keine ungewollte Löschung.

## 2026-08-23 — Buch-Run 85: Register-Sweep-Lücke in [[baubewilligungsverfahren]] geschlossen — § 315 Abs. 1 PBG «schriftlich» war veraltet (Modell-D-Re-Verifikation des ältesten `established`-Artikels, Phase 3, Fortsetzung nach Run 84)

- **Ausgangslage:** Die Reglemente-Queue 2414 Thalwil (T1-T8) bleibt seit Run 79 vollständig
  abgearbeitet; Run 84 fand keinen selbständig lösbaren QUESTIONS-Restposten mehr und schlug
  als nächsten sinnvollen Schritt vor: **Modell-D-Re-Verifikation des ältesten
  `verifiziert`-Datums unter den `established`-Artikeln**. Ein Abgleich aller `verifiziert`-Felder
  zeigte [[baubewilligungsverfahren]] (2026-07-13) als ältesten Stand, vor
  [[baureife-und-erschliessung]] (2026-07-14).
- **Vorgehen:** §§ 311/312/313/314/315/316/318/319/320/321/322/328/329 PBG Wort für Wort gegen
  `raw/260607_amtlich_zh_pbg.md` (Fassungsstand Nachtrag 133) gegengelesen.
- **1 echte Korrektur (Fassungsstand-Drift):** § 315 Abs. 1 PBG verlangt die
  Zustellbegehren-Geltendmachung seit dem Gesetz vom 23. Oktober 2023 (in Kraft seit
  1. April 2024, Fussnote 68 im amtlichen Volltext) **elektronisch über die Plattform** — der
  Artikel führte noch «schriftlich bei der örtlichen Baubehörde». Derselbe Fassungswechsel ist
  für § 326 PBG (Baufreigabe) bereits seit Buch-Run 30 in [[bauausfuehrung-und-baukontrolle]]
  korrekt erfasst, wurde aber nie zu [[baubewilligungsverfahren]] gesweept — gleiche
  Fehlerfamilie wie der Register-Sweep-Nachzug in [[baulinien-und-abstandslinien]] (Run 62).
- **Restbestand CONFIRMED, keine weiteren Korrekturen:** §§ 311/312/313/314/316/318/319/320/
  321/322/328/329 PBG wortgleich gegenüber dem amtlichen Volltext; § 318 PBG in der bisherigen
  Wiki-Paraphrase inhaltlich deckungsgleich (Wortumstellung, keine Sachabweichung).
- **GEÄNDERT** `wiki/baubewilligungsverfahren.md`: Abschnitt «Fristen» korrigiert
  (schriftlich → elektronisch über die Plattform, mit Fundstellenbeleg), neuer Querverweis auf
  die bereits etablierte Destillation der elektronischen Verfahrensführung (§§ 328a-328g PBG)
  in [[bauausfuehrung-und-baukontrolle]] ergänzt (kein Doppelaufbau); Frontmatter
  (`verifiziert`-Historie um Eintrag 2026-08-23d ergänzt).
- **GEÄNDERT** `wiki/QUESTIONS.md`: neuer ✅-GEKLÄRT-Eintrag mit vollem Befund; darin auch die
  offene Restlücke vermerkt — §§ 41/44/45/48/50/51 GG (Abschnitt «Zuständigkeit» desselben
  Artikels) sind nicht Modell-D-verifizierbar, weil das Gemeindegesetz weder in `raw/` liegt
  noch als Erlass-Key im Connector `recht-ch.mjs --list` registriert ist — für einen künftigen
  Lauf vorgemerkt, nicht geraten.
- **Kein neuer `raw/`-Volltext nötig** (Beleg liegt bereits im vorhandenen PBG-Volltext,
  Fussnote 68).
- Report `outputs/2026-08-23_buch-run85.md`.
- **Diff-Kontrolle (Rule 260811):** nach jedem Schreibvorgang `git diff --numstat` geprüft —
  `wiki/baubewilligungsverfahren.md` 24+/4- (der veraltete Fristensatz wurde durch die
  korrigierte, länger belegte Fassung ersetzt, keine Sachaussage ersatzlos entfernt),
  `wiki/QUESTIONS.md` 59+/5- (reine Anfügung eines neuen Eintrags oben, die 5 Minus sind der
  Zeilenumbruch der bisherigen Kopfzeile beim Einfügen). `git diff` (nicht nur `--numstat`)
  für beide Dateien visuell gegengeprüft — keine Massenlöschung, keine fremde Zeile betroffen.
  Weitere zum Zeitpunkt dieses Laufs unbestätigte Änderungen an `CHANGELOG.md`/`PROGRAMM.md`
  (Run 84, noch nicht vom 15-Minuten-Selfcommit erfasst) sowie an `wissen/energie/`,
  `wissen/normen/`, `wissen/projekt-lessons/` stammen von anderen, parallel laufenden Loops —
  nicht von diesem Lauf berührt.

## 2026-08-23 — Buch-Run 84: QUESTIONS-Zusatzbefund T-09 geklärt — die «26.01.2026-Fristverlängerung auf 29.02.2028» ist eine Quellenverwechslung mit dem Mehrwertausgleichsgesetz, nicht der IVHB-Baubegriffe-Harmonisierung (Phase 3, Fortsetzung nach Run 83)

- **Ausgangslage:** Die Reglemente-Queue 2414 Thalwil (T1-T8) bleibt seit Run 79 vollständig
  abgearbeitet; Run 80-83 haben Phase 3 (QUESTIONS-Restposten, Modell-D-Fassungsstand-Checks)
  fortgesetzt. Der letzte verbliebene `emerging`-Artikel [[negative-vorwirkung-und-bzo-revision]]
  hängt an einem noch nicht erfolgten behördlichen Akt (Genehmigung/Inkrafttreten revBZO Thalwil,
  T-01 in `wiki/QUESTIONS.md`, zuletzt am 23.08.2026 selbst erneut ergebnislos geprüft) und ist
  damit kein Fall für Volltextverifikation. Dieser Lauf nimmt stattdessen den in T-09
  (`wiki/QUESTIONS.md`, Eintrag 2026-08-17/23) offen gelassenen «Ungeklärten Zusatzbefund»:
  vereinzelte Sekundärquellen behaupteten eine am 26.01.2026 beschlossene Fristverlängerung der
  IVHB-Baubegriffe-Anpassungsfrist auf 29.02.2028, wofür bislang keine Primärquelle auffindbar war.
- **Vorgehen:** Live-Abfrage der offiziellen Kantonsseite «Harmonisierung der Baubegriffe» (zh.ch)
  sowie gezielte Websuche nach dem Datum 26.01.2026 und der Zahl 29.02.2028.
- **Befund: Quellenverwechslung, keine echte IVHB-Fristverlängerung.** (1) Die offizielle
  Kantonsseite (Abruf 23.08.2026) sagt zur IVHB-Anpassungsfrist wörtlich weiterhin: «Der
  Regierungsrat hat beim Kantonsrat beantragt, diese Frist um drei Jahre zu verlängern. Das
  Geschäft ist aktuell noch in Beratung im Kantonsrat.» — unverändert **nicht beschlossen**,
  konsistent mit dem PBG-Volltext (Fassungsstand 1.7.2026, weiterhin «acht Jahre»). (2) Das reale
  Ereignis vom 26.01.2026 mit neuer Frist **1.3.2028** (nicht 29.02.2028) betrifft die
  **Umsetzung des Mehrwertausgleichsgesetzes (MAG)** in den Gemeinden — ein eigenständiges Gesetz
  zum Planungsmehrwert, sachlich unabhängig von der Baubegriffe-Harmonisierung. Beleg: HEV Kanton
  Zürich, Meldung 26.01.2026, wörtlich: «Die heute vom Kantonsrat beschlossene Fristverlängerung
  zur Umsetzung des kantonalen Mehrwertausgleichsgesetzes (MAG) in den Gemeinden» von 1.3.2025 auf
  neu 1.3.2028; zum Meldezeitpunkt hatten erst 93 von 160 Gemeinden das MAG umgesetzt. Beide
  Fristen starten am selben Datum (1.3.2025) und betreffen dieselbe Zielgruppe (alle ZH-Gemeinden)
  — daraus erklärt sich die Verwechslung in Sekundärquellen, ohne dass es sich um dieselbe Norm
  handelt.
- **Der ursprüngliche Hauptbefund von Run 71/T-09 bleibt unverändert:** die IVHB-Achtjahresfrist
  ist eine Ordnungsfrist ohne eigenständige Rechtsfolge, ihre Verlängerung ist beim Kantonsrat
  hängig, aber weiterhin nicht beschlossen. Es wurde nichts korrigiert, was vorher falsch im
  Wiki stand — der Zusatzbefund war bereits als offen/unbestätigt markiert; er ist jetzt
  aufgeklärt statt offen.
- **GEÄNDERT** `wiki/abstaende-und-hoehen.md`: Abschnitt «Harmonisierungsvorlage», Absatz
  «Ungeklärter Widerspruch» durch die Aufklärung ersetzt (alter Wortlaut nicht ersatzlos
  gelöscht, sondern durch die präzisere Fassung abgelöst, Rule 260811); Frontmatter
  `last_updated`/`verifiziert` auf 2026-08-23c fortgeschrieben.
- **GEÄNDERT** `wiki/QUESTIONS.md`: T-09-Zusatzbefund als ✅ GEKLÄRT markiert, Auflösung mit
  beiden Primärbelegen ergänzt (alter Wortlaut nicht gelöscht).
- **Kein neuer `raw/`-Volltext nötig** (beide Belege sind live-Webquellen, keine Erlasstexte;
  Zitate mit Quelle/Datum im Wiki-Artikel dokumentiert statt als Ingest).
- Report `outputs/2026-08-23_buch-run84.md`.
- **Diff-Kontrolle (Rule 260811):** nach jedem Schreibvorgang `git diff --numstat` geprüft —
  `wiki/QUESTIONS.md` 25+/5-, `wiki/abstaende-und-hoehen.md` 22+/8- (in beiden Fällen: der
  offene Vorbehalt wurde durch die längere, geklärte Fassung ersetzt, keine Sachaussage
  ersatzlos entfernt, `git diff` visuell gegengeprüft).

## 2026-08-23 — Buch-Run 83: Fassungsvorbehalt [[umgebungsgestaltung-und-einfriedungen]] geschlossen — § 27/§ 27a VErV seit 1.12.2024 geändert, `emerging` → `established` (Phase 3, Fortsetzung nach Run 82)

- **Ausgangslage:** Die Reglemente-Queue 2414 Thalwil (T1-T8) bleibt vollständig abgearbeitet
  (Run 79-82). Run 82 verwies auf die BBV-I-Prüflücke (QUESTIONS.md, 2026-08-18) als nächsten
  Schritt — die dortige Sachfrage (T-09) ist bereits am 23.08.2026 mit fünf konkreten
  Fundort-Korrekturen geklärt, T-10 ist eine Strukturfrage an Raphael (bewusst nicht selbst
  gesetzt). Dieser Lauf nimmt stattdessen den einzigen verbliebenen `emerging`-Artikel mit
  offenem Fassungsvorbehalt: [[umgebungsgestaltung-und-einfriedungen]] (Run 73, 13.08.2026)
  hatte den raw-Volltext der VErV explizit als «RRB-Erlassfassung vom 17.04.2019, NICHT die
  konsolidierte LS-Fassung» gekennzeichnet und den Abgleich als offene Frage vermerkt
  (Abschnitt 7 «Offen»).
- **Vorgehen:** `skills/baurecht/connectors/recht-ch.mjs --erlass VErV` frisch gegen zhlex
  laufen lassen (PATH-Fix nötig: `pdftotext` liegt unter `/opt/homebrew/bin`, nicht im
  Shell-PATH — gleiche Werkzeugfalle wie beim SZ-Poppler-Fund in Run 81) → konsolidierte
  Fassung, Nachtrag 127, Fassungsstand 1.1.2025 (`raw/260823_amtlich_zh_verv.md`). Alle im
  Wiki-Artikel zitierten Paragraphen (§§ 20/23/26/27/28/29 VErV) Wort für Wort gegen die neue
  Fassung geprüft.
- **1 echte Korrektur (materielle Fassungsstand-Drift):** **§ 27 VErV wurde per RRB vom
  14.09.2022 (in Kraft seit 1.12.2024) neu gefasst und um § 27a ergänzt.** Die 2019er-Fassung
  kannte einen einheitlichen Baumabstand von 4 m mit Reduktionsmöglichkeit auf 2 m «gegenüber
  Fusswegen, freigeführten Trottoirs, Velowegen und Strassen des Quartier-/Anwohnerverkehrs
  sowie im Interesse des Ortsbildes». Die geltende Fassung setzt **innerorts 2 m, ausserorts
  4 m als Grundabstand** (§ 27 Abs. 1) und regelt die Verringerung separat in § 27a (innerorts
  ohne Ortsbild-Anknüpfung, ausserorts weiterhin auf 2 m im Interesse des Orts-/Landschafts-
  schutzes). Für ein Thalwiler (Innerorts-)Projekt ist der praktisch massgebende Grundabstand
  damit **2 m**, nicht 4 m — eine Zahl, die in ein Gesuch übernommen die Genehmigungsfähigkeit
  beeinflusst.
- **Restbestand CONFIRMED, keine weiteren Korrekturen:** §§ 20/23/26/28/29 VErV wortgleich
  gegenüber der 2019er-Fassung, keine Nachträge seit Inkrafttreten. Anhang 6
  (Ausnahmetransportrouten 4,8/5,2 m) ebenfalls unverändert bestätigt.
- **GEÄNDERT** `wiki/umgebungsgestaltung-und-einfriedungen.md`: Abschnitt «§ 27 VErV —
  Pflanzen» vollständig neu gefasst (§ 27/§ 27a getrennt dargestellt, materielle Änderung
  erläutert), Fassungsvorbehalt in Abschnitt 2 und «Offen» als geschlossen markiert (Wortlaut
  nicht gelöscht, Rule 260811), Frontmatter (`status: emerging` → **`established`**,
  `verifiziert`-Historie ergänzt, `sources` um § 27a und den neuen raw-Beleg erweitert).
- **NEU** `raw/260823_amtlich_zh_verv.md` (konsolidierte VErV, Nachtrag 127).
- **Nicht geklärt, weiterhin offen:** «Vorsprünge, Türen und Tore an der Strassengrenze»
  (bisher §§ 11/12 StrAV) — kein Treffer in der VErV (grep negativ), Anschlussnorm in PBG/ABV
  nicht gefunden; bleibt im Artikel als offene Frage stehen, nicht geraten.
- **Register:** `raw/_INGESTED.md` (neue Zeile). Kein Eintrag in `wiki/QUESTIONS.md` nötig —
  die offene Frage lebte ausschliesslich im Artikel selbst (Abschnitt 7) und ist dort
  geschlossen.
- Report `outputs/2026-08-23_buch-run83.md`.
- **Diff-Kontrolle (Rule 260811):** nach jedem Schreibvorgang `git diff --numstat` geprüft —
  `wiki/umgebungsgestaltung-und-einfriedungen.md` 38+/18- (Abschnittsersatz § 27→§27/§27a plus
  zwei Statuszeilen, keine Sachaussage ersatzlos entfernt), `raw/_INGESTED.md` 1+/0- (reine
  Anfügung), `raw/260823_amtlich_zh_verv.md` neue Datei. Keine Massenlöschung.

## 2026-08-23 — Buch-Run 82: QUESTIONS-Frage B (Grundbuch-Institut GSchV Anhang 4) geklärt — Fedlex-Zugangsweg für GSchV/GSchG-Familie repariert (Phase 3, Fortsetzung nach Run 81)

- **Ausgangslage:** Reglemente-Queue 2414 Thalwil (T1-T8) bleibt seit Run 79 vollständig
  abgearbeitet. Run 80/81 haben bereits Phase 3 (QUESTIONS-Restposten, Modell-D-
  Volltextverifikationen) begonnen. Dieser Lauf nimmt den nächsten offenen Punkt: Frage B
  aus dem QUESTIONS-Eintrag «2026-08-23 (Recherche-Agent)» — enthält GSchV Anhang 4
  Ziff. 12/13 (Grundwasserschutzzonen/-areale) ein Gegenstück zur Grundbuch-Anmerkung nach
  § 36 Abs. 2 EG GSchG (ZH)? War offen, weil der Anhang beim ersten Versuch über die
  Fedlex-HTML-Extraktion nicht lesbar war.
- **Werkzeugbefund zuerst:** die Filestore-Domain `www.fedlex.admin.ch` liefert für die
  GSchV (SR 814.201) und den GSchG-Haupttext (SR 814.20) nur noch die JavaScript-App-Hülle
  der neu gestalteten Fedlex-Seite (konstant 77'151 Byte, textlos, unabhängig von Format
  und Datum) — ein anderer Erlass (OR) funktioniert über dieselbe Domain weiterhin
  einwandfrei, der Fehler ist also erlass-/routenspezifisch. **Funktionierender
  Ausweichweg:** dieselbe Filestore-URL über die Subdomain `fedlex.data.admin.ch` (ohne
  `www`), mit einem Konsolidierungsdatum, das exakt einem echten Snapshot entspricht (für
  die GSchV: `20251201`). Dokumentiert in `docs/referenz/fedlex-volltexte.md` — cross-KB
  relevant für `normen`, `energie`, `firmengruendung-ch`.
- **Befund zur Sachfrage:** Volltextsuche («Grundbuch») über den gesamten 76-seitigen
  konsolidierten GSchV-Erlass (alle Artikel, Anhang 4 UND 4a) ergibt **null Treffer**.
  Anhang 4 Ziff. 12 (Grundwasserschutzzonen S1-S3, Sh/Sm, vollständig 121-125) und
  Ziff. 13 (Grundwasserschutzareale) regeln ausschliesslich die fachliche Ausscheidung/
  Dimensionierung, keine grundbuchliche Sicherung. Auch der GSchG-Haupttext (Stand
  1.1.2022, ältere aber verlässlich lesbare Fassung) enthält kein «Grundbuch». **Frage B
  damit abschliessend geklärt:** § 36 Abs. 2 EG GSchG war ein rein kantonales
  Grundbuch-Anmerkungsinstitut ohne Pendant im Bundesrecht — ergänzt die bereits am
  23.08.2026 dokumentierte Erkenntnis, dass auch WsG/WsV kein wortwörtliches Gegenstück
  führen.
- **NEU** `raw/260823_amtlich_ch_gschv-anhang4.md` (Anhang 4 GSchV, Ziff. 1/11 Titelstruktur
  + Ziff. 12/13 vollständig, treu abgeschrieben, Quelle/Datum/Fundweg dokumentiert).
- **GEÄNDERT** `wiki/QUESTIONS.md`: Frage-B-Eintrag als ✅ GEKLÄRT markiert, Nachtrag mit
  Befund + offener Anschlussfrage (WsG-Nachfolge des Instituts, separat zu prüfen bei
  konkretem Bedarf) ergänzt, alter Wortlaut nicht gelöscht.
- **GEÄNDERT** `docs/referenz/fedlex-volltexte.md`: Nachtrag zur Domain-Divergenz
  `www.fedlex.admin.ch` vs. `fedlex.data.admin.ch` samt Praxisregel (mehrere
  Konsolidierungsdaten durchprobieren, Content-Type/Grösse verifizieren, nicht auf HTTP 200
  allein vertrauen — beide Fälle liefern 200).
- **Register:** `raw/_INGESTED.md` (neue Zeile). Kein neuer Wiki-Artikel nötig (reines
  Negativergebnis, keine Sachaussage, die einen Artikel trägt).
- Report `outputs/2026-08-23_buch-run82.md`.
- **Diff-Kontrolle (Rule 260811):** nach jedem Schreibvorgang `git diff --numstat` geprüft —
  eine neue Datei, drei rein additive Ergänzungen an gewachsenen Registern (QUESTIONS.md
  33+/5-, die 5 Minus sind der ersetzte, nicht gelöschte Zwischentext derselben Aussage;
  fedlex-volltexte.md 34+/0-; _INGESTED.md 1+/0-), keine Massenlöschung.

## 2026-08-23 — Buch-Run 81: SZ-Strassenrecht volltextverifiziert (StraG/StraV), Artikel auf `established` — Reglemente-Queue 2414 Thalwil bleibt vollständig abgearbeitet, Fortsetzung Phase 3

- **Ausgangslage:** Die Korpus-Queue 2414 Thalwil (T1-T8) ist seit Run 79 vollständig
  abgearbeitet (bestätigt erneut in diesem Lauf gegen `training/KORPUS-QUEUE-thalwil-
  reglemente.md`). Laut `training/PROGRAMM.md` sind künftige Läufe **Phase 3**:
  QUESTIONS-Restposten, Modell-D-Volltextverifikationen, Aktualitäts-Checks. Dieser Lauf
  nimmt den obersten offenen Punkt aus `wiki/QUESTIONS.md` auf (Run 78, T7 Archiv-Sichtung):
  [[strassenabstand-zufahrten-vorteilsabgabe-sz]] stützte sich bislang nur auf einen im
  Merkblatt Tiefbauamt SZ (Formular Z15) wörtlich zitierten Gesetzesauszug, nicht auf einen
  vollständigen amtlichen Volltext — Status `emerging`.
- **Vorgehen:** amtlicher Volltext StraG (SRSZ 442.110) und StraV (SRSZ 442.111) direkt von
  `sz.ch` bezogen (SRSZ-Stand 1.2.2025), mit `pdftotext -layout` extrahiert (Poppler-Binary
  lag unter `/opt/homebrew/bin/`, nicht im PATH dieser Shell — Fallpfad notiert). Alle acht
  im Artikel zitierten Paragraphen (§§ 38/40/41/42/47/58 StraG, §§ 25/28 StraV) wortlautgeprüft.
- **2 echte Korrekturen** (beide bereits im Merkblatt-Auszug korrekt angelegt, beim
  Verdichten ins Wiki verlorengegangen — kein Fehler der Primärquelle):
  1. **§ 41 Abs. 1 lit. a StraG** staffelt den Strassenabstand ohne Baulinie nach
     Strassenkategorie (§ 4 StraG: Hauptstrassen/Verbindungsstrassen/Nebenstrassen) —
     **6.00 m / 4.00 m / 3.00 m**, nicht ein einheitlicher 6-m-Wert für alle
     «Kantonsstrassen», wie die Erstfassung suggerierte.
  2. **§ 28 Abs. 1/2 StraV** fixiert die Vorteilsabgabe-Staffelung (3/4.5/5 %) nur
     **an Hauptstrassen**; für Verbindungs-/Nebenstrassen legt der Bezirksrat bzw.
     Gemeinderat die Höhe selbst fest (§ 28 Abs. 3 StraV, kantonal nicht fixiert) — die
     Erstfassung präsentierte die Tabelle ohne diesen Vorbehalt, was bei einem
     SZ-Projekt an einer nicht-Hauptstrasse zu einer falschen Kostenschätzung führen
     könnte.
  3. Alle übrigen sechs Paragraphen **CONFIRMED wortgleich**, keine weiteren Korrekturen.
- **GEÄNDERT** `wiki/strassenabstand-zufahrten-vorteilsabgabe-sz.md`: Status `emerging` →
  **`established`**, neues `verifiziert`-Feld, beide Korrekturen datiert eingearbeitet
  (Abschnitte 2 «Strassenabstand» und 3 «Vorteilsabgabe»), Schlussabsatz «Offen/nicht
  verifiziert» durch Verifikationsvermerk ersetzt.
- **NEU** `raw/260823_amtlich_sz_strassengesetz.md` (StraG, 69 §§ vollständig) und
  `raw/260823_amtlich_sz_strassenverordnung.md` (StraV, 31 §§ + Anhang vollständig),
  beide gemeinfrei (Art. 5 URG), direkt von `sz.ch` bezogen.
- **Register:** `raw/_INGESTED.md` (2 neue Zeilen), `wiki/INDEX.md` (Statuszeile auf
  `established` gehoben, Strassenabstand- und Vorteilsabgabe-Kurzfassung korrigiert),
  `wiki/QUESTIONS.md` (Eintrag Run 78 als ✅ GEKLÄRT markiert, Auflösung dokumentiert).
  `git diff --numstat` nach jedem Schreibvorgang geprüft: alle vier Dateien rein additiv/
  gezielt ersetzt, keine Massenlöschung (Rule `auto-verbesserungen` 260811).
- **Offen, nachgeordnet:** der Connector `skills/baurecht/connectors/recht-ch.mjs` zieht für
  SZ weiterhin nur kommunale Baureglemente (`oereblex.sz.ch`), keine kantonalen Erlasse. Für
  die Zitierfähigkeit dieses Artikels ist das kein Hindernis mehr (Volltext liegt direkt in
  `raw/`); eine Connector-Erweiterung bliebe ein separates Vorhaben, falls SZ-Kantonsrecht
  künftig häufiger gebraucht wird.
- Report `outputs/2026-08-23_buch-run81.md`.

## 2026-08-23 — Buch-Run 80: QUESTIONS-Restposten geklärt — BEZ 1996 Nr. 30 gilt auch für besondere Gebäude (Phase 3, nach Abschluss der Reglemente-Queue)

- **Ausgangslage:** Mit Run 79 ist die Korpus-Queue 2414 Thalwil (T1-T8) vollständig
  abgearbeitet und der Buch-Transfer war bereits seit Run 49 komplett («TRANSFER
  ABGESCHLOSSEN»). Laut `training/PROGRAMM.md` sind künftige Läufe **Phase 3**:
  QUESTIONS-Restposten, Modell-D-Volltextverifikationen, Aktualitäts-Checks. Dieser Lauf nimmt
  den jüngsten offenen Punkt aus `wiki/QUESTIONS.md` auf (Run 79, T8 Gegenlesen).
- **Frage:** Gilt die 10°-Schrägdach-Schwelle BEZ 1996 Nr. 30 (belegt für die
  Firsthöhen-Berechnung § 281 PBG, Kap. 16) auch für die 4-m/5-m-Höhengrenze der besonderen
  Gebäude (§ 49 Abs. 3/§ 273 PBG)? Run 79 hatte nur den Kap.-16-Destillat geprüft und die
  Übertragung offen gelassen.
- **Geklärt ohne neue Quellenbeschaffung, durch grep über den bestehenden `buecher/`-Bestand:**
  `buecher/band-2/15-lage-von-gebaeuden-teil2d.md` (Kap. 15, nicht Kap. 16) zitiert BEZ 1996
  Nr. 30 bereits **zweifach und eigenständig** im § 49 Abs. 3/§ 273-PBG-Kontext — Z. 101-103
  (S. 1095, Abschnitt 15.8.9.3) und Z. 221-226 (S. 1108, Abschnitt 15.9.2.3). Kein unbelegter
  Analogieschluss nötig: das Standardwerk selbst führt denselben Entscheid eigenständig für
  beide Anwendungsfälle.
- **Methodik-Lehre:** Run 79 prüfte nur das inhaltlich naheliegendste Kapitel (Kap. 16) und
  übersah den älteren, bereits vorhandenen Kap.-15-Destillat, der die Antwort längst enthielt.
  Vor jeder «offenen Frage ans Original» zuerst über den **gesamten** bestehenden
  `buecher/`-Bestand greppen, nicht nur über das naheliegende Kapitel.
- **GESCHÄRFT** [[gebaeudearten-und-abstandssystem]] (weiterhin `established`, reine
  Ergänzung): Tabellenzeile «Besonderes Gebäude» um Fussnote ⁴ mit beiden Fundstellen ergänzt;
  neuer Verifikations-Eintrag im Frontmatter; `sources` erweitert.
- **`wiki/QUESTIONS.md`:** Eintrag als ✅ GEKLÄRT markiert (Auflösung dokumentiert, alter
  Wortlaut nicht gelöscht).
- Kein neuer `raw/`-Volltext, kein neuer Wiki-Artikel, kein Eintrag in `raw/_INGESTED.md`.
- Report `outputs/2026-08-23_buch-run80.md`.

## 2026-08-23 — Buch-Run 79: Korpus-Queue Batch T8 (Gegenlesen der Claude-Factsheets) erledigt — Reglemente-Queue 2414 Thalwil vollständig abgearbeitet

**Korrekturvermerk 2026-08-23 (Buch-Run 80):** Die im Bericht offen gelassene Frage
(Ziffer «NEU offene Frage», BEZ 1996 Nr. 30 auch für besondere Gebäude?) ist geklärt — siehe
Eintrag Buch-Run 80 oben. Der ursprüngliche Run-79-Eintrag unten bleibt unverändert stehen.

- **Letzter Batch der Queue.** Gegengelesen: die beiden verbliebenen datierten Claude-Factsheets
  vom 03.07.2026 (`260703-Baurecht-Gartenmauern-Thalwil`, `260703-Baurecht-Besondere-Gebaeude-
  Thalwil`) gegen den amtlichen Bestand. Echo-Schutz gewahrt: beide Dokumente bleiben
  Prüfmaterial, nichts daraus wurde als Quelle ingestiert.
- **Schwerwiegender Befund im Gartenmauern-Factsheet:** Abschnitt 2 präsentiert die seit
  01.06.2020 aufgehobene Strassenabstandsverordnung (StrAV) im Fliesstext unbedingt als
  geltendes Recht für Thalwil (sechs Einzelbestimmungen im Präsens zitiert); der einzige
  Vorbehalt steht versteckt in der Quellenzeile. Gleiche Fehlerfamilie wie der bereits in
  Buch-Run 73 gerügte Fehler 1. Sekundärbefund: die Wiedergabe der Sichtbereichs-Pflicht als
  reine «Höhe auf 0,80 m begrenzt» verkürzt die materiell andere Freihalte-Pflicht des heute
  geltenden § 23 VErV. Positiv: die Kurveninnenseiten-Regel ist inhaltlich richtig
  (Ermessensentscheid statt starrer Grenze), nur der falschen, aufgehobenen Norm zugeordnet.
- **Kein eigener Fehler, aber eine vererbte Lücke im Besondere-Gebäude-Factsheet:** es zitiert
  Art. 24 Abs. 3 BZO Thalwil (die in Buch-Run 74 belegte «Klammer-Falle» — die BZO-eigene
  Klammer gibt § 18 Abs. 1 BBV II in drei Punkten falsch wieder) wortgleich und unkommentiert.
  Zum Erstellungsdatum 03.07.2026 war der Befund noch nicht bekannt; das Zitat selbst ist
  korrekt, gibt die Fehlangabe der Gemeinde aber ungefiltert weiter. Alle übrigen Prüfpunkte
  (§ 49 Abs. 3 PBG, § 273 PBG, Art. 24 Abs. 1/2, Art. 14/15/17/17e/19/30 BZO, ABV §§ 13/25/28,
  § 290 PBG) **CONFIRMED** wortgleich gegen den amtlichen Bestand.
- **Methodik-Lehre:** die erste OCR-Extraktion von Art. 14 BZO im Rohdokument
  (`raw/260607_amtlich_zh_bzo-thalwil.md`) war unvollständig (Abs. 4 fehlte); erst eine zweite,
  vollständigere Extraktion im selben Rohdokument bestätigte das vom Factsheet zitierte
  «grün bezeichnete Flächen»-Kriterium. Ohne den zweiten Durchlauf wäre das ein falscher
  Fehlerbefund gewesen — Gegenlesen gehört gegen alle Fundstellen im Rohdokument, nicht nur
  die erste.
- **GESCHÄRFT** [[gebaeudearten-und-abstandssystem]] (weiterhin `established`, reine Ergänzung):
  ein Satz in der Klammer-Falle-Sektion, der die Verbreitung des Befunds ins
  Besondere-Gebäude-Factsheet festhält.
- **NEU** offene Frage in `wiki/QUESTIONS.md`: ob die 10°-Schrägdach-Schwelle (BEZ 1996 Nr. 30,
  im Standardwerk nur für die Firsthöhen-Berechnung § 281 PBG belegt) auch für die 4-m/5-m-Grenze
  der besonderen Gebäude (§ 49 Abs. 3 PBG) gilt — nicht als Fehler gewertet, sondern als
  unbestätigte Übertragung offen gelassen.
- **Kein neuer `raw/`-Volltext, kein neuer Eintrag in `raw/_INGESTED.md`** (Echo-Schutz: nichts
  aus den beiden Factsheets wurde übernommen).
- Queue `training/KORPUS-QUEUE-thalwil-reglemente.md`: T8 auf **erledigt** — **damit ist die
  Reglemente-Queue 2414 Thalwil (T1-T8) vollständig abgearbeitet.**
- Report `outputs/2026-08-23_buch-run79.md`.

## 2026-08-23 — Buch-Run 78: Korpus-Queue Batch T7 (Archiv-Sichtung Reglemente 2414 Thalwil) erledigt

- **Kernbefund: ein Kanton-Schwyz-Merkblatt lag fehlabgelegt im ZH-Projektordner Thalwil**
  (`_Archiv/05 VSS NORM/Merkblatt_zur_Ergaenzung_Formular_Z15.pdf`, Baudepartement Tiefbauamt
  Schwyz). Gilt nicht für Thalwil/Bohlweg 3, ist aber verallgemeinerbares SZ-Recht (die KB
  deckt laut `CLAUDE.md` explizit ZH **und** SZ ab) und schliesst eine echte Wiki-Lücke: bisher
  kein Artikel zum Institut der **Vorteilsabgabe** (kein ZH-Pendant) sowie Strassenabstand/
  Zufahrten an SZ-Kantonsstrassen.
- **NEU** `raw/260823_amtlich_sz_merkblatt-z15-strassenabstand-zufahrten.md` (Merkblatt-Text +
  wörtlich zitierter Gesetzesauszug §§ 38/40/41/42/47/58 StraG SRSZ 442.110, §§ 25/28 StraV
  SRSZ 442.111, VGE 717/03).
- **NEU** Wiki-Artikel [[strassenabstand-zufahrten-vorteilsabgabe-sz]] (`status: emerging`,
  bewusst nicht `established` — Quelle ist ein Merkblatt-Zitat, kein vollständiger
  Connector-Volltext; offene Frage dazu in `QUESTIONS.md` nachgetragen). Vorteilsabgabe-
  Staffelung 3/4.5/5 % Zufahrten, 5 % Strassenabstand-Unterschreitung, Ausnahme bei
  gemeinschaftlicher Feinerschliessung (VGE 717/03), zwei Rechenbeispiele aus dem Merkblatt.
- **GESCHÄRFT** [[laermschutz-und-nichtionisierende-strahlung]] (weiterhin `established`, reine
  Ergänzung, keine Korrektur): neuer Abschnitt «Praktische Formulare und GIS-Werkzeug ZH» —
  Struktur des amtlichen Zusatzformulars «Lärmsituation und Lärmschutz» (FALS) und Formular S
  (SIA-181-Projektkontrolle), GIS-ZH-Werkzeug «Lärmübersicht für Bauvorhaben» (3 Kategorien).
  Formular S bestätigt **SIA 181:2020** als ZH-Vollzugsfassung — deckt sich mit dem bereits in
  `wissen/normen/destillate/sia-181-2006.md` geführten Fassungsvorbehalt (Bring-Schuld dort
  bleibt offen, hier nur zusätzlich belegt, nicht geschlossen). Neu
  `raw/260823_amtlich_zh_formulare-laermschutz-fals-formularS.md`.
- **Naturgefahren-Screenshots (3 Dateien) und die drei PV-Anlage-Merkblätter/Screenshots
  gehören NICHT in diese KB.** Alle drei Naturgefahren-Screenshots stammen aus einem
  VKF-BSM-Leitfaden zu Solaranlagen (Wind/Hagel/Schneedruck/Dachlawinen bei PV-Modulen) —
  inhaltlich deckungsgleich mit dem PV-Anlage-Ordner. Reine Bauprodukt-/Energietechnik, kein
  Baurecht; Routing-Empfehlung KB `wissen/energie`, kein Ingest hier.
- **«06 Merkblaetter Konstruktion» (7 Dateien) ist reine Konstruktionsdetail-Literatur**
  (suissetec-Merkblätter Fassadenanschluss/Geländer/Flachdachdurchdringung/Abdichtung,
  stichprobenweise an einem vollständig gelesenen Merkblatt verifiziert) — kein Baurecht,
  kein Ingest. Kandidat für eine allfällige KB `wissen/bauprodukte`, nicht Teil dieses Laufs.
- **«11 Brandschutz» geroutet, nicht destilliert** (wie in der Queue vorgesehen): Factsheets
  datieren März 2025 (vor der Hub-Ära) und sind damit vermutlich echte Büro-Arbeitsprodukte,
  keine Claude-Erzeugnisse — Klassifikation nicht abschliessend geprüft. Gehören inhaltlich zum
  Skill `brandschutz`, nicht in diese KB; kein Ingest, keine Bewertung der Faktenlage
  vorgenommen (ausserhalb des Auftrags dieses Laufs).
- **«05 VSS NORM» Projektplan-PDF ist reine Projektzeichnung** (2414-10 JANS Projektpläne
  Architektur), projektgebunden, kein Ingest (Abgrenzung `KORPUS-QUEUE`).
- **Register:** `raw/_INGESTED.md` (2 neue Zeilen), `wiki/INDEX.md` (neue Sektion «Kanton
  Schwyz — Strassenrecht»), `wiki/QUESTIONS.md` (SZ-StraG/StraV-Verifikationslücke). Queue
  `training/KORPUS-QUEUE-thalwil-reglemente.md` T7 auf **erledigt**, verbleibend nur noch T8
  (Gegenlesen der drei Claude-Factsheets Gartenmauern/Besondere Gebäude vom 03.07.2026 — die
  Brandschutz-Factsheets aus diesem Batch zählen NICHT dazu, sie sind vor-Claude-Datums).
- Report `outputs/2026-08-23_buch-run78.md`.

## 2026-08-23 (Buch-Run 77) — Korpus-Queue Batch T6 (PBG-Screenshots + Näherbaurecht NBR2008) erledigt

- [confirm] **§ 293 Abs. 1/2/4 PBG** (Screenshot «ANRECHENBARES UNTERGESCHOSS») CONFIRMED gegen
  Bestand [[abstaende-und-hoehen]] — wortgleich, bereits seit Buch-Run 32 (Modell-D)
  verifiziert, kein Edit nötig.
- [confirm] **§ 260 Abs. 3/4 PBG** (drei Vordach-Screenshots): harmonisierte Fassung (Abs. 4
  Minibau) CONFIRMED seit Buch-Run 59; alte/Anhang-Fassung Abs. 3 («2 m Vorsprung-Tiefe, Erker/
  Balkone 1/3 Fassadenlänge») wortgleich mit `raw/260607_amtlich_zh_pbg.md` Z. 4342-4343,
  bereits korrekt in [[baulinien-und-abstandslinien]] geführt.
- [add] `wiki/abstaende-und-hoehen.md` — Abschnitt «Abstandsprivilegierte Bauteile»: neue
  Klarstellung, dass **«Vordach» im PBG/ABV keine eigene Legaldefinition** ist (grep-geprüft,
  0 Treffer in beiden Erlassen); fällt je nach Bauart unter die generischen Vorsprung-Regeln
  (2 m Tiefe alt/Anhang § 260 Abs. 3, 1,3 m Höhe § 27 Abs. 1 ABV) oder das Minibau-Privileg
  (§ 260 Abs. 4).
- [add] `wiki/abstaende-und-hoehen.md` — Abschnitt «Näherbaurecht»: neuer Grundsatz «Näherbaurecht
  ist objektbezogen, kein generelles Abstandsprivileg» mit Rechtsgrundlage **Art. 738 ZGB**
  (bereits im Standardwerk-Destillat `buecher/band-2/22-privatrechtliche-bauvorschriften.md`
  Kap. 22.9.3, S. 1534, belegt, aber bislang nicht mit diesem Artikel verlinkt — echte Lücke).
  Quelle des Anstosses: Raphaels eigene Kurzanalyse `Näherbaurecht NBR2008/251121 NBR2008.pdf`
  (Echo-Schutz-Klasse «authentisch», InDesign-Layout, keine Claude-Datumskennzeichnung).
- [flag] Im selben Dokument die Aussage «Vordach > 1,0 m Tiefe abstandspflichtig gemäss
  kantonaler ABV-Praxis» geprüft und **nicht übernommen** — weder § 260 Abs. 3 PBG (2 m Tiefe)
  noch § 27 Abs. 1 ABV (1,3 m Höhe, anderer Regelungszweck) stützen den Wert 1,0 m. Als offene
  Diskrepanz im Wiki vermerkt statt stillschweigend verworfen oder übernommen.
- [add] `wiki/zonenkonformitaet.md` — **Kernbefund, nicht beauftragt:** neue Sektion «Bauweise
  Thalwil (Art. 6 BZO)» — Art. 6 Abs. 1-5 BZO Thalwil (geschlossene Überbauung, Grenzbau,
  Gebäudelängen-Überschreitung bei Grenzbau max. 10 m, anrechenbares Untergeschoss an
  Hanglagen talseits/bergseits, Freilegung auf halben Gebäudeumfang beschränkt) fehlte
  **vollständig** im Wiki, obwohl seit T3 in `raw/260607_amtlich_zh_bzo-thalwil.md`
  Z. 874-908 vorhanden. Fund ausgelöst durch einen Screenshot aus dem Ordner «Anrechenbares
  Untergeschoss Abgrabunge» (Top-Level des Reglemente-Ordners, nicht in der T6-Tabellenzeile
  gelistet, aber beim Sichten des Ordnerbaums mitgefunden), wortgleich gegen Raw bestätigt.
  Abgrenzung zu § 293 PBG (kantonales Freilegungsregime für **nicht-anrechenbare** UG)
  explizit gemacht — Art. 6 BZO regelt die Geschosszahl-Wirkung **anrechenbarer** UG am Hang,
  anderer Regelungsgegenstand.
- [register] `training/KORPUS-QUEUE-thalwil-reglemente.md` (T6 erledigt, Erledigt-Sektion
  ergänzt). Kein neuer `raw/`-Volltext nötig. Report `outputs/2026-08-23_buch-run77.md`.
  Verbleibend: T7 (Archiv-Sichtung, 91 Dateien), T8 (Gegenlesen der drei Claude-Factsheets).

## 2026-08-23 (Buch-Run 76) — Korpus-Queue Batch T5 (Einzelthemen Thalwil) erledigt

- [fix/confirm] **Kniestock-Ordner enthält kein Thalwiler Dokument**, sondern einen Scan der
  Standardwerk-Seiten 1232 f. (Zürcher Planungs- und Baurecht Bd. 2, Kap. 16.10) — identisch
  mit dem bereits am 2026-06-13 destillierten [[kap16-10_gebaeudedimensionen-harmonisierung]].
  Gegengelesen: wortgleich, **CONFIRMED, 0 Korrekturen**.
- [add] `wiki/zonenkonformitaet.md` — neue Sektion «Attikageschosse Thalwil — ungeharmonisiert
  (Art. 25 BZO)»: Kreuzbefund aus dem Kniestock-Fund — Thalwil führt weiterhin die alte
  Drittel-/45°-Attikaregel (Art. 25 Abs. 3 BZO verweist auf § 292 PBG alt), nicht die
  harmonisierte h/2-Regel (63,43°) des Standardwerks; ergänzt um Art. 25 Abs. 1/2 (75-%-Deckel,
  freie Anordnung).
- [add] `wiki/abstaende-und-hoehen.md` — neue Passage «Gewachsener Boden —
  Bezugspunkt-Bestimmung»: Definition nach dem Gemeinde-Merkblatt über die
  Gebäudehöhen-Messweise (Thalwil, 20.01.2022) für nicht überbaute Grundstücke (Boden bei
  Baugesuch), überbaute Grundstücke bei Anbau/Umbau (Boden bei Erstellung des Bestands) und
  bei Abbruch/Neubau (heutiger Boden, bei starken partiellen Abgrabungen in Absprache mit dem
  DLZ interpolierbar). Das Merkblatt war bereits in Run 74 (T4) gelesen, diese Definition aber
  nicht ausgewertet — echte Lücke, kein neuer Ingest.
- [add] `wiki/gebaeudearten-und-abstandssystem.md` — Musterfall Thalwil um Art. 24 Abs. 1
  (Besondere Gebäude gesamthaft max. 7 % der massgeblichen Grundfläche) und Abs. 2 (Grenzbau
  ohne Nachbarzustimmung bis 6,00 m Gebäudelänge, sonst 3,50 m Grenzabstand) ergänzt — schliesst
  den in Run 74 auf Abs. 3 (Klammer-Falle) beschränkten Befund ab. Aus bereits vorhandenem
  `raw/260607_amtlich_zh_bzo-thalwil.md` (T5-Ordner «Besonderes Gebäude» ist leer).
- [add] `wiki/fahrzeugabstellplaetze-und-parkierung.md` — neue Sektion «Kommunale Anwendung:
  Zufahrtsneigung Thalwil»: Garageausfahrt-Neigung max. +3 %/-5 % innerhalb 6,0 m ab
  Strassengrenze, generischer VSS-Normen-Verweis für Abstellplätze/Zufahrten. Quelle:
  Wegleitung BZO Thalwil Nachführung 2020, Ziff. 6 «Anforderungen an Bauten», S. 13 — bereits
  in Run 74 gelesen, dort aber nicht bis Ziff. 6 ausgewertet. Als Verwaltungspraxis
  eingeordnet, nicht als Wortlaut-Beleg der §§ 239/295 ff. PBG (die nur die Grundnorm tragen).
- [add] `wiki/baubewilligungsverfahren.md` — neue Sektion «Kommunale Anwendung: Unterlagenliste
  Thalwil»: aus der bislang ungeprüften «Wegleitung für das Baugesuch» (Baukommission Thalwil,
  September 2004) — Formular Gebäude-/Wohnungserhebung, Parkplatzberechnung Art. 26 BZO,
  Berechnung Spiel-/Ruheflächen Art. 28 BZO, Zustimmungserklärung Nachbar, Meldeblatt
  Bodenverschiebungen. Aussteckungspflicht wortgleich mit dem bereits geführten § 311 PBG,
  keine abweichende Zahl.
- [confirm] Fahrzeugabstellplätze Art. 26 BZO, Spiel-/Ruheflächen Art. 27-29 BZO und
  Fensterfläche 1/10 (deckt sich mit dem bereits als § 302 PBG geführten Kennwert in
  [[wohnhygiene-und-raumanforderungen]]) **CONFIRMED** gegen Bestand, keine Wiki-Änderung nötig.
- [flag] Ein Screenshot im Ordner «Fahrzeugabstellplätze» zeigt eine unbelegte private
  Web-Recherche zu Fahrzeugbreiten (77 % > 2 m) — **nicht übernommen**, keine Quelle/Norm
  auffindbar.
- [register] `training/KORPUS-QUEUE-thalwil-reglemente.md` (T5 erledigt, Erledigt-Sektion
  ergänzt), `training/PROGRAMM.md` (Tracker-Eintrag Run 76). Kein neuer `raw/`-Volltext, kein
  neuer Wiki-Artikel — 5 bestehende Artikel geschärft. Report `outputs/2026-08-23_buch-run76.md`.

## 2026-08-23 (Buch-Run 75) — Korpus-Queue Batch T3 (Grundmasse Thalwil + SBV W3 + Zonenplan) erledigt

- [ingest] `raw/260823_amtlich_zh_bzo-thalwil-grundmasse.md` — Art. 3 BZO Thalwil
  (Grundmasse-Tabelle Wohnzonen W1-WG4) sauber mit `pdftotext -layout` neu extrahiert
  (`oerebdocs.zh.ch/getDoc?docid=1296`, frisch bezogen), plus Cross-Check Art. 20a und
  Zonenplan-Legende (Stand 01.06.2024).
- [fix] **Dieselbe Linearisierungs-Falle wie beim Zürich-Stadt-Fall (Run 56, 25.07.2026)
  ein zweites Mal bestätigt:** `raw/260607_amtlich_zh_bzo-thalwil.md` verschiebt die
  Art.-3-Grundmasse-Tabelle von ihren Zonen-Spalten (Zeilen 682-918) — Zahlen wie «7.50»,
  «10.50 10.50 13.50» standen dort ohne erkennbare Zonenzuordnung. Kein Inhalt fehlte, nur
  die Extraktion war unbrauchbar; behoben durch dieselbe Layout-Neuextraktions-Methode.
  Gegenprobe mit einer unabhängigen zweiten PDF-Quelle (Projektordner-Export vom
  26.11.2024) bestätigt: zeichengleich trotz abweichender Gesamtseitenzahl (19 vs. 21
  Seiten, reines PDF-Exportartefakt, keine Rechtsänderung).
- [add] `wiki/zonenkonformitaet.md` — neue Sektion «Grundmasse BZO Thalwil», analog zur
  bestehenden Zürich-Stadt-Sektion: vollständige Zonentabelle (Vollgeschosse, UG/DG,
  Gebäudehöhe, Firsthöhe, Grundabstand, AZ, Gebäudelänge, Mehrlängenzuschlag), Sonderregel
  Art. 20a (Aufwertung/Verdichtung W3/WG3: AZ 80 %, 4 VG ohne DG, GH 13,50 m, HNF-Deckel
  nach SIA 416), Zonenarten-Legende aus dem Zonenplan.
- [note] Art. 20a war im bestehenden Raw-Volltext bereits korrekt lesbar (nicht von der
  Linearisierung betroffen) — reine Bestätigung, kein neuer Ingest nötig. Kein neuer
  Wiki-Artikel angelegt, die Werte fügen sich in die bestehende [[zonenkonformitaet]]-
  Struktur ein.
- Korpus-Queue: `training/KORPUS-QUEUE-thalwil-reglemente.md` T3 auf «erledigt» gesetzt
  (4 von 8 Batches). Nächster Vorschlag: **T5 Einzelthemen** (Kniestock, Massgebendes
  Terrain, Besonderes Gebäude, Fahrzeugabstellplätze, Fensterflächen, Spiel-/Ruhefläche,
  Baugespann, Wohnungserhebung). Report: `outputs/2026-08-23_buch-run75.md`.

## 2026-08-23 (Wissens-Chef, QUESTIONS.md-Abarbeitung) — zehn offene Fragen bearbeitet, acht geschlossen

Systematische Abarbeitung von `wiki/QUESTIONS.md` (Rule 260629, Recherche-Agenten parallel,
je Frage am amtlichen Volltext/Buch-Destillat verifiziert, nichts geraten). Details je Frage
direkt in QUESTIONS.md dokumentiert; hier nur die Kurzfassung:

- [fix] **KGSchV (LS 711.11) war NICHT bereits 2022 aufgehoben** — Korrektur einer Fehlannahme aus
  Buch-Run 71: Nachtrag 099 lief nur bis 01.01.2022, danach folgten Nachtrag 115/133 bis zur
  tatsächlichen Aufhebung durch OS 81, 144 per 01.06.2026 (Nachfolge: WsV LS 724.11). Sieben
  Fundorte mit dem fehlerhaften Vermerk korrigiert (`wiki/baureife-und-erschliessung.md`,
  `buecher/INDEX.md`, `buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md` 3×,
  `buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md`,
  `buecher/band-2/17-haustechnische-anlagen-teil3.md`).
- [fix] **T-09 (BBV-I/EnerG-Novelle 2021):** fünf veraltete Fundorte («80-%-Riegel § 10a EnerG»,
  «§ 48 BBV I» als geltend, falsche §§-Zuordnung EnerG) korrigiert in
  `buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md`,
  `buecher/band-1/06-baurechtliches-verfahren.md` (2×),
  `buecher/band-1/07-vorentscheid-auskuenfte-besondere-zustaendigkeiten.md`,
  `buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md`.
- [add] **WsG Wasserversorgung §§ 93-101 + § 178 WsV** destilliert und in
  `wiki/baureife-und-erschliessung.md` eingearbeitet (Bezugs-/Anschlusspflicht,
  Regenwassernutzung, Finanzierung).
- [add] **Absturzsicherung vs. Bestandesschutz (§ 357 PBG vs. 15-%-Richtlinie Stadt Zürich):**
  Verhältnis geklärt und in `wiki/ausnahmebewilligung-und-bestandesschutz.md` eingearbeitet.
- [add] **SIA 380/1 Teilverbindlichkeit heute:** Verweiskette EnerG § 10a → BBV I § 47a → WDV →
  SIA 380/1:2016 geklärt (Cross-KB-Beleg `energie`), eingearbeitet in
  `wiki/grundlagen-planungs-baurecht.md`.
- [add] **Wegabstand VB.2005.00017:** Urteilstext gefunden (entscheidsuche.ch), wörtlich in
  `wiki/baulinien-und-abstandslinien.md` eingearbeitet.
- [fix] **§ 15 Abs. 3 / § 36 Abs. 2 EG GSchG:** neuer amtlicher Volltext `raw/260823_amtlich_zh_eg-gschg.md`
  beschafft, § 15 Abs. 3 geklärt (Kanalisations-Nebenleitungen, Nachfolge §§ 53/56 WsG), § 36 Abs. 2
  bleibt begründet offen (keine wörtliche WsG/WsV-Entsprechung gefunden).
- [add] **BZO-Anpassungsfrist 01.03.2025:** Wortlaut-/Systematikanalyse (§ 342/§ 344 PBG als
  Gegenbeweis) ergibt Ordnungsfrist ohne eigenständige Rechtsfolge; amtliche/gerichtliche
  Letztbestätigung fehlt weiterhin, ungeklärter Zusatzbefund zu einer behaupteten Fristverlängerung
  vom 26.01.2026 ohne Primärquelle. Eingearbeitet in `wiki/abstaende-und-hoehen.md`, Abschnitt
  Harmonisierungsvorlage. Status in QUESTIONS.md auf «teilweise erledigt» gesetzt, nicht auf
  «erledigt» — bleibt zur amtlichen Bestätigung vorgemerkt.
- [note] **T-01 (revBZO Thalwil):** erneut geprüft (thalwil.ch, Gesetzessammlung, Amtsblatt) —
  unverändert offen, kein neuer Stand. **T-10 (§ 10 BBV II Rauminhalt-Staffelung):** war bereits
  am 2026-07-14 geklärt, Markierung in QUESTIONS.md nachgezogen.

## 2026-08-23 (Recherche-Agent) — EG GSchG-Volltext beschafft; § 15 Abs. 3 geklärt, § 36 Abs. 2 bleibt offen
- [ingest] `raw/260823_amtlich_zh_eg-gschg.md` — Einführungsgesetz zum Gewässerschutzgesetz (EG
  GSchG, LS 711.1), letzte Fassung Nachtrag 099 vor der Aufhebung per 01.06.2026, vollständig von
  `notes.zh.ch` beschafft und per `pdftotext -layout` gelesen. Schliesst eine Lücke derselben Art
  wie Wissens-Chef Run 18 (WsG fehlte trotz Zitierung) — das EG GSchG wurde in
  `buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md` rund sechsmal zitiert, ohne dass der
  Volltext je im Hub lag.
- [fix] `buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md`, zwei Stellen korrigiert: (1)
  § 15 Abs. 3 EG GSchG betrifft Kanalisations-**Nebenleitungen** (Hausanschlüsse), nicht
  «Nebenanlagen» im Gewässer-/Grundwasserschutzbereich, und enthält keine 40-m-Angabe im
  Gesetzestext (die «ca. 40 m» war eine Buch-eigene Praxisangabe); Nachfolge im WsG jetzt korrekt
  auf § 53 Abs. 3 + § 56 Abs. 1/2 WsG belegt (vormals fälschlich § 52 lit. b WsG vermutet). (2)
  § 36 Abs. 2 EG GSchG (Grundbuch-Anmerkung von Grundwasserschutzmassnahmen) am Volltext
  bestätigt; weiterhin keine wörtliche WsG/WsV-Nachfolgeregelung auffindbar, jetzt aber mit
  präziserer Begründung (§ 119 WsG zu eng, Art. 20 Abs. 2 lit. b GSchG strukturell anderes
  Institut) statt offener Vermutung.
- [flag] `wiki/QUESTIONS.md`: Frage A aus dem Eintrag 2026-08-03 (Buch-Run 71) geschlossen, Frage
  B bleibt offen (GSchV Anhang 4 Ziff. 12/13 nicht abschliessend geprüft — Annex-Inhalt über
  Fedlex-HTML-Extraktion nicht zugänglich).

## 2026-08-19 (Wissens-Chef Run 37, Cross-KB) — die als «normative Fundstelle» benannte SIA 416/1:2007 ist selbst zurueckgezogen

- **`buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md`:** Die Cross-Ref-Anmerkung aus
  Run 33 wies `SIA 416/1:2007` als «die **normative** Fundstelle von Symbol und Berechnungsgrundlage
  der EBF/AE» aus und nannte sie «Nachfolgenorm der zurueckgezogenen SIA 180/4:1982». Die Kaskade
  geht eine Stufe weiter: **auch SIA 416/1:2007 ist zurueckgezogen** (gueltig 01.07.2007 bis
  31.03.2015). Belegt an zwei Primaerquellen (Normen-Nacht Run 57, 19.08.2026): SIA-Shop-Produktdatenblatt
(«archivierter Titel», mit Enddatum) und Titelblatt der **SIA 380:2015** (SN 504380:2015),
das woertlich «Ersatz fuer SIA 416/1:2007» traegt. **SIA 380:2015 liegt nicht im Haus** —
Beschaffung ist Bring-Schuld (Ticket `N57-2` in `wissen/normen/wiki/QUESTIONS.md`); die
Fundstellen sind deshalb **nicht** umgehaengt, sondern nur mit Fassungsvermerk versehen.

  Damit ist an dieser Stelle **keine geltende Norm-Fundstelle mehr benannt**.
- **Seitentreue gewahrt.** Der Eingriff traf ausschliesslich die kursiv gesetzte, als «rein additiv»
  markierte Anmerkung (Run 33), **nicht** den Buchwortlaut: die EBF-Definition nach Vollzugshilfe
  EN-2 (S. 1259) und alle Seitenbelege stehen unveraendert. Der Nachtrag ist als eigener datierter
  Kursivblock angefuegt, nichts ersetzt.
- **Unberuehrt richtig geblieben:** der Satz, wonach fuer den **kantonalen Vollzug** die
  Vollzugshilfe EN-2 massgebend bleibt — der Norm-Rueckzug beruehrt ihn nicht.
- Die gestrige § 47a-Korrektur (Run 36) wurde in diesem Lauf unabhaengig gegen die KB `energie`
  geprueft: `energie/destillate/energ-bbv1-waermebedarf-rechtsgrundlagen-zh.md` fuehrt **exakt
  dieselben** Grenzwerte (35/35/40/35/40/45/40/70/20/20/25 kWh/m² EBF) plus Fossilverbot
  § 11 Abs. 1 EnerG. **Bestaetigt konsistent, nichts zu tun.**

## 2026-08-18 (Wissens-Chef Run 36, Cross-KB) — § 47a BBV I im Buch-Destillat: Rechtsstand 2019 seit 01.09.2022 ueberholt

- **Bestaetigter harter Befund M5-1** (gemeldet aus dem Paar `energie ↔ baurecht`, adversarial
  gegengeprueft). `buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md` (status
  `established`) beschrieb **§ 47a BBV I** als «Hoechstanteil nicht erneuerbarer Energien,
  Neubau hoechstens 80 %». Diese Fassung gilt seit dem **01.09.2022** nicht mehr: § 47a wurde
  per RRB vom 14.07.2021 neu gefasst und traegt heute die **Grenzwerttabelle des gewichteten
  Energiebedarfs** (35/35/40/35/40/45/40/70/20/20/25 kWh/m² EBF). Verifiziert am amtlichen
  Volltext `raw/260607_amtlich_zh_bbv1.md` Z. 686-742 (Nachtrag 133).
- **Materiell ersetzt, nicht bloss umnummeriert:** Fuer Neubauten gilt heute das **Fossilverbot**
  nach § 11 Abs. 1 EnerG — strenger als der alte 80-%-Riegel. Wer die 80 % als Toleranz
  verwendet, arbeitet mit einem Spielraum, den es seit drei Jahren nicht mehr gibt.
- **Der Refuter fand mehr Fundstellen als der Melder** (fuenf statt drei): zusaetzlich die
  Frontmatter-Paragraphenliste Z. 19 und der § 10a-EnerG-Absatz im Heizungs-Abschnitt 17.9 —
  letzterer ist die Stelle, die ein Bauleitungs-Anwender beim Heizungsersatz zuerst liest.
  Alle fuenf markiert.
- **Ausgefuehrt:** Fassungsstand-Vermerk in Abschnitt 17.8 plus vier Kurzmarker; `last_updated`
  nachgefuehrt. **Buchwortlaut und Seitenbelege bewusst stehen gelassen** (Schreibregel
  Seitentreue `buecher/CLAUDE.md`): das Destillat dokumentiert, was das Buch sagt; korrigiert
  wird durch Vermerk, nicht durch Loeschen.
- **Nicht angetastet:** Z. 218 traegt eine voellig andere 80-%-Zahl (Systemnachweis nach
  SIA 380/1) und ist unberuehrt gueltig — kein globales Suchen-und-Ersetzen ueber «80 %»
  (Rule `auto-verbesserungen` 260811). Ebenso alle uebrigen § 47a-Nennungen im Hub: sie sind
  durchgaengig korrekt, die Fehlaussage war auf diese eine Datei begrenzt.
- **Fuehrung geklaert:** fachfuehrend fuer Energiegrenzwerte ist die KB `energie`
  (`destillate/energ-bbv1-waermebedarf-rechtsgrundlagen-zh.md`), beidseitig verdrahtet.
- **Offen (Nebenbefund, in QUESTIONS):** Der Volltextabgleich der Schwester-Destillate endet
  bei § 46a BBV I — ob §§ 47b-47n bzw. weitere EnerG-Paragraphen der 2021er-Novelle
  unverifiziert als geltend gefuehrt werden, ist ungeprueft.

## 2026-08-17 (Buch-Run 74, Korpus-Batch T4) — Klammer-Falle kommunaler Verweise: § 18 Abs. 1 BBV II dreifach abweichend zitiert

- **`wiki/gebaeudearten-und-abstandssystem.md`:** neue Gebäudeart **Gartenhaus/Schopf/
  Gartensitzplatz** (§ 18 Abs. 1 BBV II: ≤ 10 m² · ≤ 6 m Fassadenlänge inkl. Pergolen · ≤ 3 m
  Gesamthöhe) in die Tabelle aufgenommen, mit Fussnote 3 zur **Reichweite**: die Befreiung gilt
  nur gegenüber **grundstückinternen Gebäuden**, der **Grenzabstand zum Nachbarn bleibt**. Zwei
  neue Abschnitte: «Die Klammer-Falle: kommunale Verweise auf kantonale Normen» (Musterfall
  Art. 24 Abs. 3 BZO Thalwil, Divergenztabelle, Fassungsvergleich 067/097) und «Anhang § 49
  Abs. 3 PBG ist Ermächtigung, nicht Definition». Arbeitsanweisung in vier Schritten ergänzt.
  `verifiziert`-Eintrag 2026-08-17, `last_updated` nachgeführt, sources und links erweitert.
- **`buecher/band-2/15-lage-von-gebaeuden-teil2d.md`:** Ziff. 15.8.9.3a ergänzt — § 18 **Abs. 1**
  BBV II fehlte im Destillat, während Abs. 2 (Familiengartenhäuser) erfasst war. Ausdrücklich als
  Ergänzung am amtlichen Wortlaut gekennzeichnet, **ohne** Seitenbeleg zu erfinden; Seitenbeleg
  steht aus. Frontmatter-Paragraphenliste nachgezogen.
- **`wiki/INDEX.md`:** Registerzeile korrigiert — führte den Artikel als *emerging*, während der
  Frontmatter seit 2026-07-13 *established* trägt (Register-Divergenz, gefunden im Pflicht-Sweep).
- **`wiki/QUESTIONS.md`:** T-08 (welche Höhenzahl gilt in Thalwil — 2,50 m oder 3 m, am Bauamt zu
  klären), **T-09 (Rechtsfolge des Ablaufs der achtjährigen BZO-Anpassungsfrist am 01.03.2025 —
  betrifft jede noch nicht harmonisierte ZH-Gemeinde)**, T-10 (Wegabstand 3,5 m / VB.2005.00017
  nur merkblatt-belegt).
- **`training/drills.md`:** 2 neue Karten, beide am realen Fall Bohlweg 3 (Klammer-Falle bei
  § 18 Abs. 1 BBV II · Normtypus des Anhang § 49 Abs. 3 PBG). Rein additiv.
- **`training/PROGRAMM.md`:** zwei neue Leitplanken («Kommunale Klammerverweise sind kein Beleg»
  und «Merkblatt-Aussagen dreiteilen») sowie Tracker-Eintrag Run 74.
- **`training/KORPUS-QUEUE-thalwil-reglemente.md`:** T4 auf **erledigt**, Ergebnisabschnitt ergänzt.
- **`outputs/2026-08-13_buch-run73.md`:** **Korrekturvermerk** gesetzt — die dort als erfunden
  gerügten Masse «10 m²/2,50 m» stehen wörtlich in Art. 24 Abs. 3 BZO Thalwil. Das Verdikt bleibt
  im Ergebnis bestehen (falsche Anwendung auf Mauern), die Begründung war unzutreffend. Der
  Originaltext wurde **nicht** überschrieben, der Vermerk ist datiert angefügt.
- **Report:** `outputs/2026-08-17_buch-run74.md`.

## 2026-08-15 (Wissens-Chef Run 33, Cross-KB) — Cross-Ref zur EBF im Buch-Destillat; SIA-358-Fassungsfrage im Register nachgezogen

- **`buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md`, EBF/AE-Definition (S. 1259):**
  Cross-Ref auf das neue `normen/destillate/sia-416-1-2007.md` (Ziff. 3.2) ergaenzt — **rein
  additiv, der Buchinhalt ist unveraendert** (Register-Regel: nur der destillierende Lauf
  ueberschreibt ein Destillat). Zwei Vorbehalte mitgesetzt: das normen-Destillat traegt
  `status: speculative` und ist damit nach Rule `normen-referenz` Ziff. 1b **Warnkarte, keine
  Zitierquelle**; und fuer den **kantonalen Vollzug** bleibt die hier zitierte Vollzugshilfe
  EN-2 massgebend — die beiden Definitionen sind nicht ungeprueft gleichzusetzen.
- **Kein Eingriff in dieser KB, aber sie betreffend:** Die Fassungsfrage SIA 358:1996 gegen
  :2010 stand in `koordination/QUERBEZUEGE.md` Z. 38 weiterhin als «offen», obwohl **dieselbe
  Datei** sie ab Z. 1032 seit Run 24 (03.08.2026) als bereinigt fuehrt und
  `wiki/QUESTIONS.md` Z. 111 sie als GESCHLOSSEN vermerkt. Die Registerzeile ist nachgezogen —
  und zwar **umgewidmet, nicht gestrichen**: die Tatsachenaussage «das Buch zitiert S. 1291 die
  Ausgabe 1996, geltend ist 2010» bleibt wahr, sie ist nur ohne Wirkung auf die Zahlen. Real
  offen bleibt allein die Pruefpendenz am Destillationsverfahren (Stichprobe der uebrigen
  Schwellenwert-Tabellen, Shot-Bereich 632-655).
- **Lesend genutzt:** `raw/260607_amtlich_zh_bzo-zurich-stadt.md` (Art. 11 Fassungsstand) als
  Beleg fuer die Korrektur in `energie` — `raw/` unberuehrt.
- Bericht: `koordination/outputs/2026-08-15_wissens-chef-run33.md`.

## 2026-08-13 (Buch-Run 73, Korpus-Queue Batch T2) — Neuer Artikel Umgebungsgestaltung/Einfriedungen; Konkordanz StrAV → VErV mit zwei materiellen Aenderungen; die Thalwiler «1.40 m» ist kein Rechtssatz

- **[neu] `wiki/umgebungsgestaltung-und-einfriedungen.md`** — schliesst die groesste gemessene
  Luecke der Prioritaet (d) (Zielthema Nr. 4, bis heute «kein eigener Wiki-Artikel»). Traegt die
  **Vierebenen-Pruefung** fuer Gartenmauern und Einfriedungen: Zonenrecht (§ 238a PBG + kommunale
  BZO) · Strassenrecht (**VErV**, Bezugslinie Strassengrenze) · Privatrecht (§§ 169-179 EG ZGB,
  Bezugslinie Nachbargrenze, **nicht** im Baubewilligungsverfahren durchgesetzt) · Einordnung
  (§ 238 Abs. 1 PBG). Kumulativ, je die strengere Anforderung. **§ 309 Abs. 1 lit. h PBG** nennt
  Mauern und Einfriedigungen ausdruecklich und eigenstaendig als bewilligungspflichtig.
- **[fix/Fassungsstand] Vollstaendige Konkordanz StrAV → VErV**, mit **zwei materiellen**
  Aenderungen — genau der Fall, den ein Fassungscheck auf blosser Erlassebene verfehlt:
  **§ 20 VErV** hebt den Lichtraum ueber Trottoirs, Fuss- und Velowegen von **2,5 m auf 2,65 m**
  (Fahrbahngebiet unveraendert 4,5 m), und **§ 28 VErV** ersetzt die feste 0,80-m-Obergrenze an
  der **Kurveninnenseite** durch eine blosse **Abstandsbefugnis**. Wortgleich uebernommen wurde
  nur § 7 StrAV → **§ 26 Abs. 1 VErV**; dessen **Abs. 2** (Abstand bis 0,5 m bei fehlendem
  Fussgaengerschutz) ist neu. Pflanzen neu § 27 VErV.
- **[fix] `wiki/QUESTIONS.md`:** die seit Run 25 offene Frage «StrAV-Masszahlen am amtlichen
  Volltext gegenpruefen» **geschlossen** — sie war **falsch gestellt**, weil die StrAV seit
  01.06.2020 aufgehoben ist und es keinen geltenden Volltext mehr gibt. Mit Begruendung und
  Verweis auf die Konkordanz.
- **[neubefund] Die Thalwiler «max. 1.40 m» fuer Gartenmauern laengs Strassen und Wegen ist
  kein Rechtssatz.** Die Zahl steht in **keiner** der beiden BZO-Fassungen; sie steht in der
  **Wegleitung BZO (Nachfuehrung 2020)** unter der Ueberschrift «*Aufgrund fehlender
  Rechtsgrundlage weggelassene oder geloeschte Absaetze, welche daher als Beurteilungsrichtlinie
  dienen*» — samt drei weiteren Saetzen desselben Status (Abgrabungen «in der Regel nicht mehr
  als 1.5 m», Gestaltungs-/Bepflanzungsvorgaben, Stuetzmauern «auf die technisch notwendigen
  Minimalmasse»). Rechtsfolge: **kein selbstaendiger Ablehnungsgrund**, nur Auslegungshilfe im
  Rahmen von § 238 Abs. 1 PBG. Gefunden nur, weil der Nullbefund der BZO-Suche nicht als
  Halluzinationsbeweis genommen wurde (Leitplanke «ein leeres Ergebnis ist zuerst eine Aussage
  ueber das Werkzeug»).
- **[warnung] Amtliche Herkunft schuetzt nicht vor Alterung:** das Thalwiler «Merkblatt zu
  Abstaenden von Pflanzen, Mauern und Einfriedungen» datiert vom **11.12.2013**; sein
  EG-ZGB-Teil ist unveraendert richtig, sein Strassenrechts-Teil (§§ 7/17 StrAV) seit dem
  01.06.2020 ueberholt.
- **[pruefung/T8 vorgezogen] Drei Claude-Erzeugnisse zur Gartenmauer gegengelesen**, alle drei
  aus demselben Ordner: **8 Fehler**, darunter 3× tote StrAV-Fundstelle, 1× ueberholtes
  Lichtraummass 2,5 m, 1× falsche BZO-Verortung der 1,40 m (Art. 28 BZO regelt Spiel- und
  Ruheflaechen), 1× halbe statt ganze Mehrhoehe bei § 178 EG ZGB (2,00 m → **0,25 m**, nicht
  0,50 m), 1× Kleinbauten-Masse ohne Deckung in § 2a ABV, 1× «Art. 2a ABV» statt «§ 2a ABV».
  **Kein Befund daraus in die KB uebernommen** (eisernes Echo-Verbot).
- **[register]** `wiki/INDEX.md` (Eintrag), `wiki/abstaende-und-hoehen.md` (Abgrenzung zur neuen
  Ebenen-Trennung), `training/drills.md` (2 neue Karten, Bestand 43), `training/KORPUS-QUEUE`
  (T2 erledigt), `training/PROGRAMM.md` (Tracker Run 73; Zielthemen 4 und 9 auf erledigt).
  Report: `outputs/2026-08-13_buch-run73.md`. **0 Halluzinationen.**

## 2026-08-07 (Wissens-Chef Run 28, Cross-KB) — § 321 Abs. 2 PBG hat zwei Haelften; Querverweis zu `planungsgrundlagen` und Terminologie im Skill `behoerden-vorabklaerung`

- **`wiki/nebenbestimmungen-und-reverse.md`, Abschnitt «Grundbuch-Anmerkung: nur deklaratorisch»:**
  Der Artikel fuehrte bisher nur die **Pflicht-Haelfte** von § 321 Abs. 2 PBG («sind …
  anzumerken»). Der **zweite Halbsatz** ist am amtlichen Wortlaut belegt
  (`raw/260607_amtlich_zh_pbg.md` Z. 3306-3309) und ergaenzt: wo ein Beduerfnis besteht, **kann**
  die Anmerkung auch bei Eigentumsbeschraenkungen angeordnet werden, deren Umfang und Tragweite
  sich unmittelbar aus den Bauvorschriften ergibt. Damit traegt die fuehrende KB den ganzen
  Absatz, statt nur die Haelfte, die in der Gegen-KB falsch modalisiert war.
- **Querverweis A→B gesetzt** (er fehlte in dieser Richtung ganz): ein Satz im selben Abschnitt
  zeigt auf `wissen/planungsgrundlagen/wiki/recht-norm-mehrwertrevers-grundbucheintragungen.md`
  fuer die Grundbuch-Mechanik aus Erwerbersicht (Anmerkung vs. Dienstbarkeit, statische vs.
  dynamische Reverse, Loeschung, Parzellierung) — Themen, die dieser Artikel gar nicht behandelt.
  **Mit obligatorischem Status-Etikett** (`emerging`, Quelle Bösch ZBl 1993, §-Ziffern dort nicht
  gegen die geltende PBG-Fassung geprueft, Erlasswortlaut bleibt hier gefuehrt) — ein
  `established`/Buch-Run-67-verifizierter Artikel darf unverifizierten Stand nicht ohne
  Kennzeichnung adeln.
- **Klasse korrigiert:** nicht DOPPELSPURIGKEIT, sondern QUERVERLINKUNG mit einer einzigen
  materiellen Doppelspur (deklaratorische Wirkung), die widerspruchsfrei ist. **Kein Merge**,
  keine Umstrukturierung, `links:`-Frontmatter beider Artikel unveraendert (KB-intern aufgeloest),
  `status` und `verifiziert` unveraendert; nur `last_updated` nachgezogen.
- **Ausserhalb `wissen/`, hier protokolliert:** `skills/behoerden-vorabklaerung/SKILL.md`. Der
  Skill kannte das Instrument nur unter dem im Kt. ZH **nicht gesetzlichen** Namen «verbindlicher
  Vorbescheid» und ohne Fundstelle. Der bestehende Hinweis ist auf «foermlicher **Vorentscheid**»
  praezisiert, mit **Kantonsangabe** (ZH §§ 323/324 PBG, SZ § 84 PBG) — ein blankes «§§ 323/324
  PBG» waere ausserhalb ZH falsch gewesen — und mit Backtick-Pfad auf
  `wiki/baurechtlicher-vorentscheid-und-voranfrage.md`. Beim Rueckfluss-Punkt genuegt der Zusatz
  «mit Vermerk der Verbindlichkeitsstufe». **Nicht** aufgenommen: die urspruenglich vorgeschlagene
  neue Rechtsaussage, formlose Auskuenfte binden nicht — sie steht als Kennzeichnungspflicht
  bereits im Skill und waere eine Dublette.

## 2026-08-05 (Wissens-Chef Run 26, Cross-KB) — Waermepumpen-Aussengeraete: Querbezug zur KB `energie` gesetzt, mit Reichweiten-Warnung statt blossem Link

- **`wiki/abstaende-und-hoehen.md`:** Der Artikel nennt Waermepumpen-Aussengeraete ausdruecklich
  als Anwendungsfall der 1,5-m/2-m²-Bagatellschwelle, fuehrte aber keinen Weg zur viel
  ausfuehrlicheren Analyse in `energie/destillate/waermepumpe-aussengeraet-grenzabstand-zh-sz`
  (Gegenrichtung war gesetzt, diese nicht). Querbezug-Block ergaenzt.
- **Drei Dinge bewusst anders als vorgeschlagen:** (1) **Kein blanker Wikilink** — in
  `baurecht/wiki` existiert keine gleichnamige Datei, das waere ein toter Link gewesen, den der
  naechste `wissenscheck` als neuen Mangel meldet. Gesetzt ist die **Backtick-Pfadform**, die
  dieser Artikel in Z. 44 und `baubewilligungsverfahren.md` bereits selbst fuehren. (2) **Substanz
  statt Link:** die zwei entscheidenden Warnungen stehen an der Fundstelle selbst — der Absatz
  gilt nur fuer den **Kanton Zuerich**, der **Kanton Schwyz kennt keine Bagatellschwelle**
  (§ 61 PBG SZ, 2,50 m fuer Nebenbauten, Reduktion bis null nur mit schriftlicher
  Nachbarzustimmung), und die Subsumtion «WP-Aussengeraet = Gebaeude im Sinn des PBG» ist fuer
  ZH/SZ **nicht amtlich entschieden**. (3) **Zahlenkollision vermieden:** im selben KB fuehrt
  `baubewilligungsverfahren.md` bereits ein «2,5 m» fuer **Erdwaermesonden im Kt. ZH** — die
  SZ-Zahl traegt deshalb Kanton, Anlagenart und Norm im selben Satz.
- **Nicht angefasst:** die Frontmatter-Felder `links:` (KB-intern, nicht die Cross-KB-Konvention)
  und `verifiziert:` (protokolliert Wortlaut-Verifikationen am raw-Volltext; ein Querverweis ist
  keine solche). Der bestehende Satz ist **nicht falsch** — es fehlte die Reichweiten-Kennzeichnung.
- **Fuehrung unveraendert geteilt:** `baurecht` fuehrt den PBG-ZH-Wortlaut, `energie` die
  WP-Anwendung samt SZ-Recht und Rechtsprechungslage. Im Verweistext ausgesprochen, damit der
  naechste Lauf die Arbeitsteilung nicht erneut als Doppelspurigkeit meldet.

**Nicht Teil dieses CHANGELOG-Eintrags, aber terminkritisch und in `logbuch/fristen.md`
eingetragen:** Ziffer 4.5 des Begleitbeschriebs 2414 Thalwil (Eingabe 06.08.2026) zitiert
weiterhin Art. 45 revBZO als Pruefmassstab. Die KB-Feststellung vom 04.08. steht; neu ist, dass
der in Run 25 vorbereitete Ersatztext selbst fehlerhaft war (§ 2a **Abs. 1** ABV gilt nur fuer
freistehende Kleinbauten, der Veloraum ist angebaut → **Abs. 2**). Details im Laufbericht,
Abschnitt 6. Das Deliverable wurde nicht geaendert (ausgehendes Erzeugnis, Freigabe Raphael).

## 2026-08-04 (Wissens-Chef Run 25, Cross-KB) — Thalwil Klein-/Anbauten: der 31.07.-Output trug drei Sachfehler; Korrekturvermerk gesetzt, Arbeitsregel präzisiert, Rückkante zu `planungsgrundlagen` gelegt

- **`outputs/2026-07-31_bzo-thalwil-besondere-gebaeude-art24-art45.md` — datierter Korrekturvermerk
  am Kopf** (Bericht selbst unverändert, historisches Dokument). Der Bericht gab für Klein- und
  Anbauten in Thalwil eine Arbeitsanweisung, die dem seit Buch-Run 72 belegten Stand widerspricht.
  Vier korrigierte Punkte: **(1)** Art. 45 revBZO ist in der Synopse «Fassung zur Negativen
  Vorwirkung» vom 05.09.2025 **nicht grau markiert** und wirkt nicht vor (Content-Stream
  `sc 0.8509804` = #D9D9D9, am Pixel nachgemessen, Buch-Run 72; Synopse S. 40 =
  `raw/260803_amtlich_zh_bzo-thalwil-revision-synopse.md` Z. 1706-1712). **(2)** Die 50 m² sind
  **kantonales** Recht — **§ 2a Abs. 1 ABV** (`raw/260607_amtlich_zh_abv.md` Z. 50-52), eine
  Begriffs-/Qualifikationsgrenze, keine revBZO-Nachweisgrenze; die revBZO kennt für Klein- und
  Anbauten keine Flächenquote, «50 m2» steht dort nur in der Bemerkungsspalte des Planungsbüros
  (laut raw-Frontmatter **kein Rechtstext**). **(3) Nicht gemeldeter Zusatzfehler:** «GFZ» in der
  Bemerkungsspalte heisst **Grünflächenziffer**, nicht Geschossflächenziffer — am Synopsen-Volltext
  nachgezählt: eine Geschossflächenziffer existiert nirgends, die Ausnützungsziffer bleibt, neu
  ist allein die Min. Grünflächenziffer (Z. 937 Grundmasstabelle, Z. 1710 einziger GFZ-Treffer,
  Z. 1934-1942 Art. 50 lit. a). Die Deutung «plus Geschossflächenziffer» war damit falsch.
  **(4)** Die Vorwirkung endet mit dem **Inkrafttreten**, nicht mit der Festsetzung
  (§ 234 PBG als Anknüpfung, § 235 PBG Satz 2; `raw/260607_amtlich_zh_pbg.md` Z. 2362-2372) —
  die Formel «bis zur Festsetzung» hätte die Vorwirkung seit dem 14.06.2026 erlöschen lassen.
  Im Vermerk steht die richtige Arbeitsanweisung: **Art. 24 Abs. 1 BZO (7 %, markiert, gilt) +
  § 2a Abs. 1 ABV (50 m², kantonal in Kraft) + Grünflächenziffer/Umgebungsgestaltung nach
  Art. 31 und Art. 50 revBZO (beide markiert, wirken vor)**. Zusätzlich vermerkt: der Bericht
  zitiert die **April-Fassung (16.04.2025)**, massgebend ist die September-Fassung; die drei
  Zahlenwerte sind in beiden gleich.
- **Der Hub wusste es bereits.** Die Auflösung stand seit Buch-Run 72 in `training/PROGRAMM.md`
  Ziff. 7 — sie ist nie in den Output und nie ins Deliverable gewandert. Der Fall ist damit kein
  Wissens-, sondern ein **Ablage-/Propagationsfehler**.
- **`training/KORPUS-QUEUE-thalwil-reglemente.md`, Arbeitsregel 2 präzisiert.** «Alt- und revBZO
  nebeneinander führen» steuerte künftige Läufe auf einen **pauschalen Doppelnachweis**. Neu
  klargestellt: vor wirkt nur, was grau markiert ist, und die Markierung ist **absatz-, teils
  zellengenau, nicht artikelweise** (23 von 55 Artikeln); je Einzelbestimmung entscheiden; eine
  nicht markierte revBZO-Bestimmung als Massstab ist unzulässige positive Vorwirkung
  (VB.2008.00044). Ergänzt um die Gegenrichtung: fällt eine kommunale Bestimmung weg, prüfen, ob
  **kantonales** Recht die Steuerung übernimmt (Musterfall § 2a ABV).
- **`wiki/negative-vorwirkung-und-bzo-revision.md` — Rückkante zu `planungsgrundlagen` gesetzt**
  (Frontmatter `links:` + Kasten nach Ziff. 6). Arbeitsanweisung Nr. 5 verlangte «vor jeder
  Eingabe den Verfahrensstand neu erheben», nannte aber keinen Weg; den führt `planungsgrundlagen`
  (proj-Layer `ogd-0156_…_proj_f` mit `rechtsstatus`/`auflagedatum`/`dokument`, Connector
  `geo-zh.mjs --produkt zonenplan`, `wiki/kartenportale-zonenplan-zh.md` §A6). Mit der **Grenze**
  ausgewiesen: der Layer meldet **dass** und in welcher Phase revidiert wird, nie **welche
  Einzelbestimmung** vorwirkt — er ersetzt die Erhebung bei der Gemeinde nicht, er datiert sie.
- **Nicht ausgeführt (bewusst):** der Bericht selbst wurde **nicht** umgeschrieben und nichts
  gelöscht; der QUESTIONS-Eintrag vom 31.07.2026 («Wo ist die 50-m²-Grenze normiert?») ist durch
  § 2a ABV faktisch beantwortet, bleibt aber offen stehen — Schliessen war diesem Lauf nicht
  zugewiesen.

## 2026-08-07 (Nachtrag zu Buch-Run 72) — Fehl-Datierung zurueckgenommen

- Am 07.08.2026 wurde die Sitzung von Buch-Run 72 fortgesetzt und der Datumssprung
  03.08. → 07.08. faelschlich als **defekte Stationsuhr** gedeutet. Daraufhin waren zwei
  Dateien umbenannt (`260803_` → `260807_`, `2026-08-03_buch-run72.md` → `2026-08-07_…`)
  und die Datierungen in neun Dateien um vier Tage vorverschoben worden (`222a1241`).
- **Widerlegt und vollstaendig zurueckgebaut.** Der native Synology-Log
  `sync-tasks/log/selfcommit-202608.log` belegt den Lauf auf die Minute
  (`2026-08-04T00:03:50 commit: 5 Datei(en) — baurecht-run72: Korpus-Batch T1 …`) und laeuft
  lueckenlos durch alle Tage; beide Stationsuhren sind NTP-sauber. **Run 72 lief am
  03./04.08.2026** — die urspruengliche Datierung war korrekt.
- Wiederhergestellt: beide Dateinamen, `last_updated`/`verifiziert` im Wiki-Artikel, die drei
  «Stand»-Angaben zum Thalwiler Verfahrensstand, Abschnittstitel in CHANGELOG und QUESTIONS,
  INDEX, QUELLEN, PROGRAMM-Tracker, KORPUS-QUEUE, drei Drill-Stempel. Die vier Drill-Karten
  aus Run 71 blieben unberuehrt.
- Die Commit-Botschaft von `222a1241` bleibt sachlich falsch in der Historie; sie wird nicht
  umgeschrieben. Volle Beweiskette: `rules/betrieb-chronik.md`, Eintrag 260807c. Ehrlicher
  Nachtrag im Lauf-Report `outputs/2026-08-03_buch-run72.md`.
- Rule 260730b (1b) entsprechend korrigiert: der erfundene Uhren-Vorfall ist raus, dafuer die
  belegte Lehre (Datumssprung = verstrichene Zeit; bestehende Datierungen nie ohne Beleg
  umdatieren; `grep` schweigt auf dem nicht-UTF-8-Log, `awk` verwenden).

## 2026-08-03/04 (Buch-Run 72, Korpus-Batch T1) — revBZO Thalwil erschlossen; die Vorwirkungs-Markierung aus der Grafikebene gelesen

- **NEU `raw/260803_amtlich_zh_bzo-thalwil-revision-synopse.md`** — Synopse «Fassung zur Negativen
  Vorwirkung» vom 05.09.2025 (51 S., dreispaltig, `pdftotext -layout`). Quelle: Projektordner
  2414 Thalwil, `06 Reglemente/02 BZO Thalwil/_BZO-Revision 2025/`. Die **April-Fassung** vom
  16.04.2025 ist inhaltlich abweichend und **nicht** massgebend; sie dient nur als Vergleichsbasis.
- **NEU `wiki/negative-vorwirkung-und-bzo-revision.md`** (*emerging*) — § 234 PBG als Anknüpfung
  der negativen Vorwirkung (nicht eine BZO-Übergangsbestimmung); nur negativ, nie positiv
  (VB.2008.00044) → in der Übergangsphase gilt **die jeweils strengere** Bestimmung; Dauer nach
  § 235 PBG (Frist ab **Geltendmachung**, nicht ab Auflage); Verfahrensstand Thalwil;
  artikelweise Vorwirkungs-Karte. §§ 234/235 PBG wortgetreu gegen `raw/260607_amtlich_zh_pbg.md`
  Z. 2362-2372 gegengelesen.
- **Fassungsstand (kommunal, Priorität (b)):** revBZO Thalwil am **14.06.2026** an der Urne
  festgesetzt (78.81 %, 4'546 : 1'222), aber **weder genehmigt noch in Kraft** — die
  Gesetzessammlung Thalwil führt weiterhin **SR 700.1 BZO vom 11.12.2019, in Kraft seit
  31.08.2024**. Massgebend bleibt die alte BZO, überlagert von der Vorwirkung.
- **Methodik:** die Grau-Markierung der Synopse ist **reine Grafikinformation** und geht bei jeder
  Textextraktion verloren. Aus dem PDF-Content-Stream ausgelesen (Füllfarbe `sc 0.8509804` =
  #D9D9D9), gegen die April-Fassung als Grundrauschen abgeglichen (dort ist nur das
  Tabellen-Kopfband grau: 303 gegenüber 1'864 Flächen) und am gerenderten Pixel verifiziert.
  Ergebnis: **23 von 55 revBZO-Artikeln** markiert, **absatz-, teils zellengenau**.
- **Zwei praktisch entscheidende Befunde:** aus **Art. 31 revBZO** wirken nur die
  Min. Grünflächenziffer, die max. Gebäudelänge **25.00 m in der W2b** (bisher 30.00 m) und die
  Streichung des Arealüberbauungs-Zuschlags vor — die Fassadenhöhen steigen, sind also milder;
  **Art. 45 revBZO (Klein-/Anbauten) wirkt gar nicht vor**, **Art. 50 (Umgebungsgestaltung) fast
  vollständig** (Vorgarten Abs. 1 lit. b, Fällbewilligung ab Stammumfang 100 cm lit. c, ein Baum
  je 500 m² aGF lit. d).
- **Register-Sweep:** `wiki/INDEX.md` (neuer Eintrag unter «Planung & Gestaltung») ·
  `wiki/QUELLEN.md` (neuer Abschnitt: der ÖREB-Bestand zeigt nur die in Kraft stehende Fassung,
  Revisionsvorlagen gehören als zweite Quelle daneben) · Backlinks in
  `wiki/baureife-und-erschliessung.md`, `wiki/raumplanung-und-gestaltung.md`,
  `wiki/grundlagen-planungs-baurecht.md` · `wiki/QUESTIONS.md` (T-01/T-02/T-03) ·
  `training/KORPUS-QUEUE-thalwil-reglemente.md` (T1 erledigt) · `training/PROGRAMM.md`
  (Punkt 5 erledigt, Punkt 7 aufgelöst, neue Leitplanke, Tracker) · `training/drills.md` (3 Karten).
- **PROGRAMM-Punkt 7 aufgelöst:** die «50 m²», mit denen die Synopse die Aufhebung der 7-%-Quote
  (Art. 24 BZO) begründet, sind die **kantonale** Legaldefinition **§ 2a Abs. 1/2 ABV**
  (verifiziert an `raw/260607_amtlich_zh_abv.md` Z. 50-63) — keine neue kommunale Regel.
- **Neue Leitplanke:** visuelle Rechtsinformation (Grau, Rotdruck, Durchstreichung) überlebt die
  Textextraktion nicht; zusätzlich bei Synopsen die Spaltenzuordnung **wortweise** vornehmen, weil
  `pdftotext` Tabellenzeilen über alle Spalten zu einer Zeile verschmilzt.
- Report: `outputs/2026-08-03_buch-run72.md`.

## 2026-08-03 (Wissens-Chef Run 24, Cross-KB) — drei falsche Gelaenderwerte korrigiert, Frage 2 geschlossen

- **`buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md`:** drei Werte im Fliesstext
  **und** in der Schwellenwert-Tabelle auf den Buchwortlaut (S. 1291, Shot 649) korrigiert:
  Regelhoehe **1 m** und feste Brustung ab 20 cm Breite **90 cm** (die Werte waren **vertauscht**
  als «90 cm / 100 cm» gefuehrt) · Kinderschutz **keine Oeffnung > 12 cm Durchmesser**
  (Kugelprobe) statt «≤ 90 mm» · die Hochhaus-Hoehe **«110 cm (> 12 m)» ersatzlos gestrichen**
  (steht auf der zitierten Buchseite nicht, Fundstellenangabe war eine Falschzuschreibung).
  Korrekturvermerk mit vollstaendiger Belegkette gesetzt.
- **`wiki/QUESTIONS.md` Frage 2 GESCHLOSSEN, weil falsch gerahmt.** Es gab **keine**
  Fassungsdivergenz zwischen SIA 358:1996 und :2010 — beide Originale liegen im Haus und wurden
  gelesen (1996 mit Textlayer, Ziff. 3 13/3 14/3 15/3 22; 2010 gerendert, Ziff. 3.1.3-3.1.6/3.2.2
  und Anhang A): **die Masse sind identisch.** Die Teilrevision 2010 betraf Ziff. 0.3, die
  Normenliste 0.2, den Begriff «Traverse», die Texte 3.3.2/3.3.4 und Anhang B. Das Buch war
  korrekt; der Fehler entstand **beim Destillieren aus dem Screenshot**.
- **Einzige echte Fassungsnotiz, die bleibt:** das Buch zitiert «SIA-Norm 358, Ausgabe 1996»
  (S. 1291), geltend ist SIA 358:2010 — ohne Wirkung auf die Zahlen.
- **Neuer offener Punkt:** die uebrigen Schwellenwert-Tabellen des Shot-Bereichs **632-655** sind
  stichprobenweise gegen die Buchseiten gegenzulesen, bevor ihr Status `established` fortgefuehrt
  wird. Der Fehlertyp sitzt in der Screenshot-Destillation, nicht in der Quelle.
- Verfahren: 2 unabhaengige adversariale Verifikatoren, beide am Original. Bericht:
  `../koordination/outputs/2026-08-03_wissens-chef-run24.md`.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B24 · C10 · D0 · E0 · F3 · G3

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Haupt-Befund: 10 Wiki-Artikel ohne `title:`/`sources:` im Frontmatter (formaler Verstoss gegen die verschaerfte Quellenpflicht der KB), 41 echte Deko-Symbole in `wiki/QUESTIONS.md` (40x Haken). **Audit D auf 0 korrigiert:** die 42 unzitierten raw-Dateien sind die kommunalen BZO-Volltexte, in `raw/_INGESTED.md` Z. 19 als Direktkonsultation registriert — kein Coverage-Befund. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-03 (Wissens-Chef Run 23, Cross-KB) — § 259 PBG: Fassungs-Weiche nachgetragen

- **[veraltetes, ausnutzungsrelevant] `wiki/nutzungsziffern.md`.** Der Abschnitt zur Bezugsgroesse
  aller Nutzungsziffern fuehrte die **Anhang-Fassung** (Wald, Gewaesser und Waldabstandsstreifen
  >15 m «ausser Ansatz») als geltendes Recht — ohne die Fassungs-Weiche, die derselbe Artikel an
  vier anderen Stellen bereits fuehrt. **Geltend ist der harmonisierte Hauptteil** (§ 259 PBG,
  amtlicher Volltext `raw/260607_amtlich_zh_pbg.md` Z. 2724-2727, Nachtrag 133): anrechenbar sind
  die in der Bauzone liegenden Grundstuecksflaechen; Hauszufahrten **werden** angerechnet, Grund-,
  Grob- und Feinerschliessung nicht. **Waldabstandsflaechen und offene Gewaesser in der Bauzone sind
  damit anrechenbar.** Die Anhang-Fassung gilt nur noch in Gemeinden mit noch nicht an die Aenderung
  vom 14.09.2015 angepasster BZO (Uebergangsbestimmungen ebd. Z. 3907-3913).
  Abschnitt umbenannt in «Anrechenbare Grundstuecksflaeche», beide Fassungen belegt, Handlungs-
  anweisung ergaenzt: **bei harmonisierter BZO am Waldrand oder mit offenem Gewaesser die Ziffern
  nachrechnen — die Ausnuetzung kann hoeher liegen als bisher angenommen.**
  Gegenstelle `wissen/planungsgrundlagen/wiki/recht-norm-ivhb-baubegriffe.md` (Ziff. 8.1) fuehrte
  bereits die geltende Fassung und bleibt unveraendert.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B2 · C1 · D0 · E0 · F455 · G22

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. 455 ae/oe-Verstoesse in 12 Artikeln — der hoechste Absolutwert nach `immobilienbewertung`, und er waechst weiter. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-31 (Wissens-Chef Run 22, Cross-KB) — StrAV-Auftrag lief ins Leere, Revisionsvorbehalt 7-%-Quote gesetzt

- **[veraltet, mit Steuerungswirkung] `training/PROGRAMM.md` beauftragte die Beschaffung eines
  aufgehobenen Erlasses.** Punkt 9 der Prioritaet (d) lautete «**Strassenabstandsverordnung
  (StrAV)** … Volltext fehlt in `raw/` — beschaffen». Die StrAV vom 19.04.1978 ist per **01.06.2020
  aufgehoben** (Verkehrserschliessungsverordnung, Dispositiv IV lit. a), und der Nachfolgeerlass
  liegt seit dem **03.08.2026** in dieser KB — beschafft im Zuge derselben Triage, die den
  KB-weiten StrAV-Sweep (Batch T0) angeordnet hatte. Der Sweep hatte Curriculum und QUESTIONS nie
  erreicht. Der naechste Lauf haette Arbeitszeit auf die Beschaffung eines toten Erlasses verwendet.
  Zweiter Beleg nach Run 21 dafuer, dass Wissensfehler nicht nur Inhalte, sondern **Auftraege**
  verfaelschen.
- **Korrigiert an drei Stellen** (Z. 143-144, Punkt 9, Luecken-Abschnitt): ersetzt durch die
  VErV-Kernparagraphen § 23 Sichtbereiche · § 26 Abstaende von Mauern und Einfriedigungen (Abs. 1
  lit. a-c, Abs. 2) · § 27 Abstaende von Pflanzen · § 28 Kurven-Innenseite · § 29 Befreiungen, mit
  Fassungsvorbehalt (raw ist die RRB-Erlassfassung, nicht die konsolidierte LS-Fassung).
- **[echte Luecke, die der falsche Auftrag verdeckt hatte]** **Vorspruenge, Tueren/Tore und
  Materialien an der Strassengrenze** (bisher §§ 11/12 StrAV) haben in der VErV **keine
  Entsprechung**. Als offener Punkt notiert; Anschlussnorm im PBG/ABV zu suchen (§ 240 PBG,
  § 260 Abs. 3 PBG i.V.m. ABV).
- **[revisionsvorbehalt, keine Wertkopie] 7-%-Quote «besondere Gebaeude» Thalwil.** Der Melde-Befund
  lautete «veraltet»; die Verifikation hat die **Kategorie korrigiert** und damit einen Fehler
  verhindert: unter negativer Vorwirkung gilt Art. 24 Abs. 1 BZO weiter, und Arbeitsregel 2 der
  Korpus-Queue verlangt ausdruecklich, beide Fassungen nebeneinander zu fuehren (jeweils die
  strengere). Der Wert und das CONFIRMED bleiben deshalb stehen; ergaenzt ist allein der
  **Revisionsvorbehalt** mit Verweis auf `outputs/2026-07-31_bzo-thalwil-besondere-gebaeude-art24-art45.md`
  — bewusst per Verweis, ohne die unverifizierten revBZO-Zahlen (50 m², GFZ, 3 %/5 %) in die
  Steuerdatei zu kopieren. Dasselbe Muster wie beim VSS-40-291-Fall am 30.07.
- **[bring-schuld, offen]** Die SIA-358-Ausgabe (hier 1996, in `normen` 2010 als geltend) ist seit
  Run 21 unveraendert offen.

## 2026-07-31 (Wissens-Rücklauf 2414 Thalwil) — Art. 24 alt → Art. 45 revBZO, 7 %-Quote besondere Gebäude fällt
- **[outputs]** `outputs/2026-07-31_bzo-thalwil-besondere-gebaeude-art24-art45.md`: Am Synopsen-Wortlaut
  (16.04.2025, S. 40) belegt, dass Art. 24 BZO «Besondere Gebäude» zu Art. 45 revBZO «Klein- und
  Anbauten» wird und die 7 %-Flächenquote aufgehoben wird (neu 50 m² je Kleinbaute + GFZ; Kernzone
  3 % → 5 %). Praxisfolge unter negativer Vorwirkung: Nachweis doppelt führen. Erster Anwendungsfall
  der neuen Rule `wissens-ruecklauf` (verankert 31.07.2026).
- **[offen]** Normierungsort der 50-m²-Grenze in der revBZO nur über die Bemerkungsspalte belegt
  → QUESTIONS-Eintrag; Artikel-Konkordanz alt/neu (Batch T1 der Triage 30.07.) weiter ausstehend.

## 2026-08-03 (Wissens-Chef Run 21, Cross-KB) — überholter «Kostenpflicht»-Status bei VSS 40 291 geschlossen, Parkierung querverlinkt, Absturzsicherung angemeldet
- **[veraltetes] `wiki/fahrzeugabstellplaetze-und-parkierung.md`:** Die Aussage, die
  Rampenneigungs-Kennwerte der VSS 40 291 blieben «**needs-verification wegen Kostenpflicht**» und
  der Normtext sei vor einer Projektierung käuflich zu beziehen, war seit ihrer Eintragung
  (Buch-Run 33, 13.07.2026) überholt: die Ausgabe **VSS 40 291:2021** liegt im JANS-Normenbestand
  (`PL - 02_Recht_Norm/02_Normen/VSS_Norm/VSS 40 291 Parkieren 2021.pdf`) und ist in der führenden
  KB `normen` vollständig destilliert und dreifach verifiziert
  (`wissen/normen/destillate/vss-40291-2021-parkieren-anordnung-geometrie`, S. 1-32 gelesen, Stand
  260714). Ersetzt durch den **Verweis auf die führende Fundstelle** — bewusst **ohne Wertkopie**
  der Kennwerte in `baurecht` (Norm-Kennwerte und Fassungsstände führt `normen`, Führungsmatrix
  `koordination/QUERBEZUEGE.md`). Die inhaltlich korrekte ParkingSwiss-Bestätigung der
  Normbezeichnung bleibt unverändert stehen.
- **[offen belassen]** Zwei Punkte ausdrücklich **nicht** als erledigt erklärt: die maximale
  **LÄNGS**neigung von Parkfeldern (im Destillat nicht enthalten, die Norm regelt in Ziff. 18 nur
  das Quergefälle) und das **SIA-500-Korrigendum C3** (1.10.2013) — anderer Sachverhalt, in diesem
  Lauf nicht geklärt.
- **[frontmatter]** `quellen` um das normen-Destillat ergänzt, `verifiziert` um einen Eintrag
  2026-08-03 (Wissens-Chef Run 21) nachgeführt; `last_updated` stand bereits auf 2026-08-03.
- **[querverlinkung] `wiki/fahrzeugabstellplaetze-und-parkierung.md` (Schluss):** «Siehe auch»-Block
  um den Verweis auf die **führende** Geometrie-Fundstelle in `normen` und ergänzend auf den
  planerischen Kontext `wissen/planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung.md`
  erweitert; die Rollenteilung ausdrücklich benannt (dieser Artikel führt nur Anzahl und
  rechtliche Erfüllungspflicht).
- **[abgrenzung]** Der UG-Platz-Wert **35-47 kFr.** ist neu ausdrücklich als
  **Verhältnismässigkeits-Schwelle der Rechtsprechung** zu § 244 Abs. 3 PBG gekennzeichnet und vom
  Grobkosten-Kennwert in `wissen/grobkosten/wiki/kennwerte.md` **abgegrenzt** (andere Grösse,
  andere BKP-Abgrenzung, andere Herkunft) — bewusst **kein** «Abgleich» der beiden Zahlen.
- **[register] `wiki/QUESTIONS.md`:** Neuer datierter Kopfeintrag zur Erledigung. Die sieben
  Status-Stellen in den datierten Log-Abschnitten (Runs 29/33/41/43/44/46) sind mit der
  hauseigenen `~~…~~ → erledigt`-Konvention **nachgeführt statt umgeschrieben**; beim
  Rücktaktungs-Vorschlag für den Loop `baurecht-buch-training` (Buch-Run 46) steht neu ein
  **Korrekturvermerk**, weil eine seiner drei Begründungen weggefallen ist. Über die Taktung
  entscheidet Raphael, der Vorschlag wurde weder erneuert noch zurückgezogen.
- **[querverlinkung] `wiki/ausnahmebewilligung-und-bestandesschutz.md`:** Beim Abschnitt zu
  **§ 357 Abs. 4 PBG** (Verbesserungen verlangbar) neu der Verweis auf die Stadt-Zürcher
  15-%-Anpassungsschwelle für Absturzsicherungen (Richtlinie «Absturzsicherungen im Hochbau»,
  1.6.2019), ausdrücklich mit dem Vorbehalt «ausserhalb der Stadt Zürich nicht ohne weiteres
  übertragbar» — **keine kantonale Geltungsaussage**. Anknüpfungspunkt ist bewusst Abs. 4
  (Zumutbarkeit/Verbesserung), nicht die «keine feste Quote»-Aussage zu Abs. 1 und nicht die
  JANS-Anwendungsliste; die Richtlinie stützt sich selbst auf § 239 Abs. 1, § 357 Abs. 4, § 358 PBG
  und § 20 BBV I.
- **[frage] `wiki/QUESTIONS.md`:** Offene Frage «Absturzsicherung im Bestand» angelegt — Verhältnis
  § 357 PBG (kein numerischer Schwellenwert) zur kommunalen 15-%-Schwelle und zur bfu-Aussage,
  letztere **mit dem tragenden Merkmal «umfangreiche»** baubewilligungspflichtige Sanierungsarbeiten
  im Zitat und ohne kantonale Geltungsbehauptung.
- **[frage] `wiki/QUESTIONS.md`:** Zweite offene Frage angelegt (Zusatzbefund, am Bestand
  nachgeprüft): `baurecht` führt die Geländer-/Brüstungsmasse aus **SIA 358, Ausgabe 1996**
  (`buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md` Z. 111-115/187-189), während
  `normen` im REGISTER (Z. 484) **SIA 358:2010** als geltend und 1996 als ersetzt führt; die Masse
  divergieren (Regel-Mindesthöhe 90 cm gegen 100 cm; Öffnungsweite 90 mm gegen Kugelprobe 12 cm).
  **Keine Zahl geändert** — nur die Frage angemeldet, führend ist `normen`.
- **Geänderte Dateien:** `wiki/fahrzeugabstellplaetze-und-parkierung.md`,
  `wiki/ausnahmebewilligung-und-bestandesschutz.md`, `wiki/QUESTIONS.md`, `CHANGELOG.md`.

## 2026-07-30 (Buch-Run 70, Festigungsmodus) — Verdichtungs-Drift in [[fahrzeugabstellplaetze-und-parkierung]] korrigiert
- **Modell-D-Wortlautabgleich** §§ 242-248 PBG (`raw/260607_amtlich_zh_pbg.md`, Fassungsstand
  weiterhin Nachtrag 133) gegen den Wiki-Artikel `wiki/fahrzeugabstellplaetze-und-parkierung.md`
  (ältester `verifiziert`-Kern, 2026-07-12) — ältester noch unverifizierter Kandidat laut
  Empfehlung Run 71.
- **1 Korrektur:** § 242 Abs. 2 PBG enthält amtlich **keinen Interessen-Katalog** — der Wiki-Artikel
  behauptete «bei überwiegendem öffentlichem Interesse (Verkehr, Wohngebiets-/Natur-/Heimatschutz,
  Luft, Gewässer)» als sei diese Aufzählung Teil von § 242 Abs. 2. Sie steht amtlich in
  **§ 245 Abs. 2 lit. a PBG** (Gemeinschaftsanlagen). **Der Fehler existierte nur im Wiki-Artikel**:
  sowohl das Buch-Destillat `buecher/band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3.md`
  (Korrektur bereits seit dem ursprünglichen Modell-D-Lauf 2026-07-12 dokumentiert) als auch eine
  bestehende Karteikarte in `training/drills.md` (Z. 1077-1079) hatten die richtige Zuordnung —
  die **Verdichtung** vom Destillat in den Wiki-Artikel hatte den Fehler gegen die eigene, bereits
  korrekte Quelle re-eingeführt (dasselbe Kompressionsmuster wie Art. 679 Abs. 2 ZGB / § 220 PBG
  in Run 71). §§ 243 Abs. 1-3, 244 Abs. 1-4, 245-248, § 309 Abs. 1 lit. b/i sonst CONFIRMED.
- **Lehre:** Modell-D-Re-Verifikation muss den Wiki-Artikel nicht nur gegen den amtlichen Volltext,
  sondern auch gegen das **eigene Buch-Destillat und bestehende Drills** abgleichen — eine bereits
  im Haus vorhandene Korrektur kann durch spätere Verdichtung wieder verlorengehen.
- Geändert: `wiki/fahrzeugabstellplaetze-und-parkierung.md` (Frontmatter + § 242 Abs. 2-Absatz),
  `training/curriculum.md`, `outputs/2026-07-30_buch-run70.md` (neu).

## 2026-07-29 (Wissens-Chef Run 20, Cross-KB) — P1: der Wasserversorgungsteil des WsG ist im ganzen Hub unverarbeitet
- **[bring-schuld P1] §§ 95-100 WsG und § 178 WsV sind nie destilliert worden**, obwohl der
  WsG-Volltext seit dem 28.07. im Haus liegt. Gegenprobe: grep nach «Bezugspflicht»,
  «Anschlusspflicht Wasser» und «§ 178 WsV» ueber `wiki/` und `buecher/` = **null Treffer**. Betroffen
  sind unter anderem **§ 97 Abs. 1 WsG** (Bezugspflicht im Einzugsbereich einer
  Wasserversorgungsanlage) und **§ 97 Abs. 3 WsG** («Die Verwendung von Regenwasser als Brauchwasser
  in getrennten Systemen ist zulaessig und gebuehrenfrei») sowie die Gebuehrenkette § 100 Abs. 1 WsG
  i.V.m. §§ 61 ff.
- **Warum das auffiel:** die KB `energie` hat am 29.07. ein Destillat zur
  Regenwasser-Brauchwassernutzung angelegt und die Zulaessigkeit **allein auf ein SVGW-Merkblatt von
  2001** gestuetzt — weil die kantonale Norm im Hub nirgends auffindbar war, obwohl sie einen Tag
  vorher hereinkam. Der Wissens-Chef hat die Fundstelle dort und in FAQ F186 nachgetragen, **der
  Wortlaut gehoert aber hierher**. In `wiki/QUESTIONS.md` als P1 angemeldet, mit Anschluss an
  [[baureife-und-erschliessung]] (dort steht die Abwasser-/GEP-Seite bereits).
- **[unveraendert offen aus Run 19]** § 260 Abs. 3 PBG ohne Haupt-/Anhang-Vorbehalt im Leit-Artikel
  [[abstaende-und-hoehen]] (nachgeprueft, weiterhin so); drei grammatisch zerstoerte Saetze im
  Naeherbaurechts-Destillat; Nachfolgeerlass der KGSchV (LS 711.11) weiter unbelegt — neu auch von
  `planungsgrundlagen` (K61) und `energie` (erdwaermesonden) als Bring-Schuld hierher gemeldet.
- Geaendert: `wiki/QUESTIONS.md`.


## 2026-07-29 — Freigabe Raphael: die Wurzel der § 19-WsG-Fehlzuordnung ist geschlossen
- **[korrektur an der Quelle, Ausnahme ausdruecklich freigegeben]** `raw/260717_amtlich_zh_hwschv.md`:
  Konkordanzzeile Z. 40 und Kernbefund Ziff. 4 von **§ 19 WsG** auf **§ 18 Abs. 1 WsG** gestellt,
  Korrekturvermerk als Kernbefund 5 aufgenommen. `raw/` wird sonst nie editiert (Rule
  `wissens-bibliothekar`) — hier von Raphael freigegeben, weil die betroffene Tabelle
  **KB-Autorentext** ist und der Fehler sich sonst bei jeder Konsultation regeneriert haette.
  Die WsV-Haelfte «§ 11 WsV» war richtig und bleibt.
- **[praevention] Die Tabelle traegt neu einen Warnkasten «KB-AUTORENTEXT, NICHT AMTLICHER
  WORTLAUT».** Er benennt den Zitierfehler von Wissens-Chef Run 8 (18.07.) ausdrücklich: dort wurde
  die Autoren-Hilfstabelle als «amtliche Konkordanztabelle» zitiert, ihre erste Zeile war falsch,
  und der Fehler wanderte in drei KBs bis in die Rechtsgrundlagen-Spalte von OEREB-Thema 190.
  Der amtliche Teil der Datei beginnt erst unter «TEIL A».
- **[offen]** Fuer die **uebrigen** `raw/`-Dateien mit Autoren-Hilfstabellen ist die Kennzeichnung
  noch nicht vollzogen — Teil-Erledigung in `wiki/QUESTIONS.md` vermerkt.


## 2026-07-30 — Wissens-Chef Run 19 (Cross-KB): erste Gegenlesung am neuen WsG-Volltext
- **[korrektur, materiell] Gewaesserraum-Festlegung stand auf § 19 WsG — richtig ist § 18 Abs. 1 WsG.**
  `wiki/abstaende-und-hoehen.md` fuehrte «§ 15 Abs. 1 HWSchV, heute § 19 WsG». Das Wort
  «grundeigentuemerverbindlich» steht woertlich und ausschliesslich in **§ 18 Abs. 1 WsG** (Randtitel
  «b. Festlegung»); **§ 19 WsG** heisst «c. Beruecksichtigung der baulichen Gegebenheiten in dicht
  ueberbauten Gebieten» und regelt die **Anpassung**. Korrigiert; zusaetzlich **§ 19 WsG neu als
  eigene Aussage** aufgenommen (Abs. 2 = der Hebel, wenn ein festgelegter Gewaesserraum die bauliche
  Nutzung erheblich einschraenkt) — er war im Hub nirgends erfasst, weil er mit der Festlegung
  verwechselt wurde. Dieselbe Korrektur in zwei `planungsgrundlagen`-Artikeln (OEREB-Thema 190).
- **[gemeldet, NICHT ausgefuehrt — P1] Die Wurzel liegt in `raw/260717_amtlich_zh_hwschv.md`**
  (Konkordanzzeilen Z. 40/252). Der Chef fasst `raw/` nicht an → in `wiki/QUESTIONS.md` uebergeben.
  **Strukturbefund dahinter:** eine **vom KB-Autor geschriebene** Konkordanztabelle im Kopf einer
  `raw/`-Datei wurde vom Refuter des Run 8 als «amtliche Konkordanztabelle» zitiert. Eine
  `raw/`-Datei ist nicht als Ganzes amtlich — Autoren-Hilfstabellen sind als solche zu kennzeichnen.
- **[bestaetigt, kein Handlungsbedarf]** Rund 60 WsG-/WsV-Fundstellen des Hubs gegen den neuen
  Volltext geprueft: §§ 44/45/46/48/74/126 WsG und §§ 11/92/183/213 WsV tragen. **Der
  EG-GSchG-Sweep aus Run 17/18 ist sauber abgeschlossen** — keine Reste ohne Aufhebungsvermerk.
  Beide raw-Dateien sind vollstaendig (WsG §§ 1-132, WsV §§ 1-215).
- **[gemeldet, NICHT ausgefuehrt]** Zwei Maengel aus der Gegenpruefung eines widerlegten Vorwurfs, in
  `wiki/QUESTIONS.md`: (a) **drei grammatisch zerstoerte Saetze** in `buecher/band-2/15-lage-von-
  gebaeuden-teil2d.md` (Abschnitt Naeherbaurecht) — nicht zitierfaehig, haben bereits einen
  Lese-Agenten fehlgeleitet; (b) der Haupt-/Anhang-Vorbehalt zu **§ 260 Abs. 3 PBG** ist im
  Schwester-Artikel gesetzt, im `established`-Leit-Artikel `abstaende-und-hoehen` nicht.
- Bericht: `koordination/outputs/2026-07-30_wissens-chef-run19.md`.


## 2026-08-03 — Buch-Run 71 (Festigungsmodus): [[grundlagen-planungs-baurecht]] erstverifiziert — 3 echte Zitierfehler, 1 Fassungsstand-Drift eine Ebene unter dem Erlass
- **[korrektur, materiell] Art. 679 Abs. 2 ZGB war mit invertierter Polarität zitiert.** Der Artikel
  begründete «eine Baubewilligung entbindet nicht von privatem Nachbarrecht» mit Abs. 2 und der
  Aussage «Ansprüche können bestehen, auch wenn alle öffentlich-rechtlichen Vorschriften eingehalten
  sind». Amtlich (Fedlex SR 210, ELI `24/233_245_233`, Stand 01.01.2026) ist Abs. 2 das Gegenteil, eine
  **Anspruchs-Beschränkung**: beim Entzug von Eigenschaften bestehen die Ansprüche «**nur**, wenn …
  die damals geltenden Vorschriften **nicht** eingehalten wurden» (eingefügt per 1.1.2012, AS 2011
  4637). Die Regel trägt **Abs. 1** i.V.m. Art. 684 ZGB. Korrigiert in Wiki, Quell-Destillat
  `buecher/band-1/01-grundlagen.md` und `training/drills.md`. Gleiches Kompressionsmuster wie
  Art. 164 GBV in Run 67.
- **[korrektur + fassungsstand, materiell] «§ 3 Abs. 12 BBV I» existiert nicht — und die gemeinte
  Anhangsziffer ist seit 1.9.2022 aufgehoben.** § 3 BBV I hat vier Absätze; verbindlich erklärt wird
  über **§ 3 Abs. 1/2 i.V.m. Anhang Ziff. 1**, die gemeinte **Ziff. 1.2** wurde bei der Ersterfassung
  (Run 16) zu «Abs. 12» verlesen. **Anhang Ziff. 1.2/1.21 sind aufgehoben** (RRB vom 8.6.2022,
  OS 77, 378, in Kraft seit 1.9.2022, Fn. 84); im geltenden Anhang Ziff. 1 steht nur noch Ziff. 1.11
  «Wärmedämmvorschriften der Baudirektion», **SIA 181 fehlt dort ganz**. Geltende Grundlage ist heute
  **Art. 32 Abs. 1 LSV** (Bundesrecht). Nachgezogen in Wiki, Destillat, `buecher/INDEX.md` (2 Stellen),
  `wiki/INDEX.md`, `training/curriculum.md`, `training/drills.md`.
- **[korrektur] § 220 PBG war als «Nebenbestimmungen» etikettiert.** Amtlich Randtitel «C.
  Ausnahmebewilligungen»; Nebenbestimmungen regelt **§ 321 PBG**. Als Verhältnismässigkeits-Beispiel
  war der Paragraph richtig, nur falsch beschriftet und falsch verlinkt. Auch im Destillat korrigiert
  (samt Tippfehler «Ferdigstellungsbescheid» → «Fertigstellungsbefehl»).
- **[praezisierung] § 318 PBG trägt die intertemporale Regel nicht.** Die Norm bezeichnet nur die
  erstinstanzliche Entscheidbehörde («Die örtliche Baubehörde entscheidet über Baugesuche…»); der
  Grundsatz ist Rechtsprechung (VB.2012.00734). Gleiches Kompressionsmuster wie § 253/§ 320 PBG in
  Run 63; übrige Wiki-Fundorte führen § 318 korrekt (Sweep negativ).
- **[praezisierung] Unangemessenheit instanzenscharf gefasst:** im Rekurs voller Rügegrund
  (§ 20 Abs. 1 lit. c VRG), vor Verwaltungsgericht keine Angemessenheitskontrolle (§ 50 Abs. 2 i.V.m.
  § 41 VRG), vor BGer nur Rechtsverletzung (Art. 95 BGG).
- **[status] [[grundlagen-planungs-baurecht]] `emerging` → `established`**, erstmaliges
  `verifiziert`-Feld. Damit trägt kein Wiki-Artikel dieser KB mehr ein fehlendes `verifiziert`-Feld.
- **[beleg] KGSchV-Bring-Schuld beantwortet:** die **KGSchV (LS 711.11) ist per 01.01.2022 aufgehoben**
  (zhlex-Erlassseite der Staatskanzlei: Erlassdatum 22.01.1975, Inkraftsetzung 01.07.1975,
  Aufhebungsdatum 01.01.2022, letzte Fassung Nachtrag 099) — über vier Jahre vor dem EG GSchG.
  Aufhebungsvermerke an 6 Fundorten gesetzt. **Offen:** welcher Erlass sie 2022 ablöste (die WsV
  enthält keine Aufhebungsklausel zur KGSchV); § 92 WsV trägt die Erdwärme-Materie des § 35 KGSchV,
  ist aber Indiz, nicht Aufhebungsbeleg.
- **[beschaffung] P1 aus Wissens-Chef Run 18 geschlossen:** `raw/260803_amtlich_zh_wsg.md` (WsG,
  LS 724.1, Nachtrag 133) und `raw/260803_amtlich_zh_wsv.md` (WsV, LS 724.11, Nachtrag 133) angelegt.
  **§ 126 WsG am eigenen Volltext gegengelesen** — Aufhebung von EG GSchG und WWG jetzt KB-intern
  belegt. Die zwei offenen §-Zuordnungen (§ 15 Abs. 3 / § 36 Abs. 2 EG GSchG) bleiben an beiden
  Volltexten unauffindbar und ausdrücklich offen.
- **[frage] Neu aufgeworfen:** ist SIA 380/1 noch «teilverbindlich»? Am geltenden BBV-I-Anhang nicht
  mehr belegbar — Cross-KB-Frage an `energie`/`normen`.
- **[drills]** 4 neue Karten. **[report]** `outputs/2026-08-03_buch-run71.md`.
- **[leitplanke, neu]** Fassungsstand-Prüfung bei **Verweisnormen zweiteilig** führen: Erlass **und**
  verwiesene Anhangsziffer altern getrennt. Ein Check auf Erlassebene hätte die BBV-I-Drift nicht
  gefunden (BBV I selbst ist unverändert Nachtrag 133 in Kraft).

## 2026-07-27 — Wissens-Chef Run 18 (Cross-KB): Nachkontrolle des EG-GSchG-Sweeps — ein NEUER Fehler, ein offener Drittkanal, eine P1-Bringschuld
- **[korrektur, materiell] Der Sweep hat sich selbst einen Fehler eingebaut.** Das **Frontmatter** von
  `buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md:7` ordnete die Abwasser-/Kanalisations-
  paragraphen des aufgehobenen EG GSchG dem WsG-Abschnitt **§§ 45-48** zu — das ist der *planerische
  Gewaesserschutz*. Der **Fliesstext derselben Datei** sagt zweifach das Richtige (Z. 17/55: «Abschnitt
  C WsG, §§ 49 ff.»), Band 1 (`03-erschliessung-landsicherung-teil1.md:97`) ebenso. Der Chef hat das
  amtliche PDF `724.1_12.12.24_133.pdf` selbst gezogen und gelesen: «B. Planerischer Gewaesserschutz»
  = §§ 45-48, «**C. Siedlungsentwaesserung**» beginnt bei **§ 49**. Zusaetzlich ist «§ 13 ff.» ein
  Uebertragungsfehler — § 13 regelt die Sicherheitsleistung, der Abwasser-Abschnitt beginnt bei
  **§ 14**. → Frontmatter korrigiert auf «§§ 14 ff./§ 16 … Nachfolge §§ 49 ff. WsG, Abschnitt C».
  **Regel daraus: nach einem Erlass-Sweep prueft eine zweite Instanz die ERSETZUNG, nicht das
  Verschwinden** — eine Falschzitierung, die durch eine andere ersetzt wird, besteht jede
  grep-basierte Erfolgskontrolle.
- **[korrektur] Selbstwiderspruch im Arbeitsregister bereinigt.** `training/PROGRAMM.md` fuehrte die
  ueberholte Pauschalzuordnung «§§ 35/36 → §§ 45/46 WsG» unveraendert neben ihrer eigenen Korrektur
  («§ 35 → **§ 46** WsG, nicht § 45»). → Pauschalzuordnung gestrichen; zugleich **§§ 14 ff. → §§ 49 ff.
  WsG** und **§ 45 (Anschlussgebuehren) → §§ 61/62 WsG** am Volltext bestaetigt eingetragen (§ 61
  Abs. 1 lit. b «Gebuehren fuer den Anschluss … an die oeffentliche Kanalisation», § 62 Abs. 1
  «kostendeckend und verursachergerecht»). Die drei Register-Fundorte in `wiki/INDEX.md:41`,
  `buecher/INDEX.md:242` und `training/curriculum.md:44` hat die Nachtschicht bereits nachgezogen —
  bestaetigt.
- **[gemeldet, P1] Der geltende Erlass WsG (LS 724.1) liegt nirgends im Hub.** `find` ueber den
  ganzen Hub nach `*724.1*` / `*wassergesetz*` = **0 Treffer**, obwohl diese KB das WsG inzwischen an
  rund vierzehn Stellen zitiert und fuer PBG, EnerG, BBV I, HWSchV, AbtrG, EG ZGB je einen amtlichen
  Volltext fuehrt (zuletzt `raw/260727_amtlich_zh_abtrg.md`, am selben Tag). In `wiki/QUESTIONS.md`
  angemeldet — **mit funktionierender Bezugs-URL** (`notes.zh.ch/appl/zhlex_r.nsf/...`; die generische
  `zh.ch/content/dam/...`-URL liefert **HTML statt PDF**, diese Falle ist dort dokumentiert) und mit
  Mindestumfang §§ 44-48, 49 ff., 61/62, 119, 122, 126 + Fn. 2. Zusaetzlich **P2**: §§ 4-7 EnerG
  fehlen in `raw/260712_amtlich_zh_energ.md`, weshalb `energie` diesen Wortlaut selbst pflegt.
  Beschaffung/Ablage bleibt beim Loop — Inventaraufbau ist nicht Sache der Meta-Aufsicht.
- **[Drittkanal, in der anderen KB korrigiert]** Der in `training/PROGRAMM.md:154` selbst angemeldete
  Drittkanal war offen geblieben: `planungsgrundlagen` fuehrte die OEREB-Themen 130/131/132 weiter auf
  LS 711.1. Zuordnung am Volltext verifiziert und dort gesetzt: **§ 45 WsG** = Gewaesserschutzbereiche
  UND Grundwasserschutzareale, **§ 46 WsG** = Grundwasserschutzzonen, **§ 48 Abs. 2 WsG** =
  Waermenutzungsatlas.
- Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run18.md`.

## 2026-07-27 — EG-GSchG-Nachzug ABGESCHLOSSEN (Nachtschicht Mac Mini): letzte 3 von 17 Fundorten
Die vom vorangehenden Nachtschicht-Lauf offen gelassenen 3 reinen Verweis-Stellen (kein materieller
Fehler, aber Konsistenz zum korrigierten Buchtext) nachgezogen: `buecher/INDEX.md` und `wiki/INDEX.md`
(je Eintrag [[12-baureife-teil4-gebuehren-abfall-altlasten]], § 45 EG GSchG jetzt mit Aufhebungsvermerk
„aufgehoben 1.6.2026 → §§ 61/62 WsG") sowie `training/curriculum.md` (Kap.-12-Zeile, dito). Damit sind
**alle 17 Fundorte** des von Wissens-Chef Run 17 eröffneten Nachzugs korrigiert; Erledigt-Kriterium
(`grep -rniI "EG GSchG\|EGSchG\|711\.1"` über `wiki/`, `buecher/`, `training/`) liefert nur noch
Stellen mit Aufhebungsvermerk bzw. historische CHANGELOG-/QUESTIONS-Einträge, die den Fund selbst
dokumentieren (bewusst unangetastet). `training/PROGRAMM.md` Fortschritts-Tracker auf ABGESCHLOSSEN
gesetzt.

## 2026-07-27 — EG-GSchG-Nachzug fortgesetzt (Nachtschicht Mac Mini): 12 von 15 Fundorten korrigiert
Auftrag aus Wissens-Chef Run 17 (Prioritaet a) uebernommen. Amtlichen WsG-Volltext selbst gezogen
(`724.1_12.12.24_133.pdf`, zhlex) und alle verbleibenden Fundorte in 5 Buch-Destillaten (band-2/12
Teil3+4, band-1/02, band-1/03, band-1/07 — 12 Stellen inkl. 2 Frontmatter-Arrays) mit Aufhebungsvermerk
+ Nachfolgenorm versehen. Zwei Zuordnungen praezisiert gegenueber der bisherigen Pauschalannahme:
§ 35 EG GSchG → **§ 46 WsG** (nicht § 45 — Wortlaut Gemeinde-Festsetzung/Direktions-Genehmigung
Grundwasserschutzzonen deckungsgleich), § 15 Abs. 2 → § 52 lit. a WsG (30-Einwohnerwerte-Kriterium
wortgleich). Zwei Stellen (§ 15 Abs. 3 40-m-Regel, § 36 Abs. 2 Grundbuch-Anmerkung) mangels
wortwoertlicher WsG-Entsprechung offen markiert statt geraten. Verbleibend: `buecher/INDEX.md`,
`wiki/INDEX.md`, `training/curriculum.md`-Nachtrag — reiner Verweis-Text, kein materieller Fehler.
Register `training/PROGRAMM.md` nachgefuehrt. Bericht: dieser CHANGELOG-Eintrag.
Format: `- [aktion] Beschreibung (Artikel/Datei)`

## 2026-07-27 — Wissens-Chef Run 17 (Cross-KB): EG GSchG ist aufgehobenes Recht — KB-weiter Nachzug eroeffnet
- **[korrektur, materiell] Diese KB fuehrte einen aufgehobenen Erlass als geltende Bewilligungsgrundlage.** An 17 Fundorten steht **§ 8 EG GSchG** (LS 711.1) bzw. weitere EG-GSchG-Paragraphen als geltendes Recht. Belegt am amtlichen WsG-Volltext (`724.1_12.12.24_133.pdf`, zhlex, Nachtrag 133; vom Wissens-Chef selbst gegengelesen): «§ 126. Die nachstehenden Gesetze werden aufgehoben: a. **Einfuehrungsgesetz zum Gewaesserschutzgesetz vom 8. Dezember 1974**, b. Wasserwirtschaftsgesetz vom 2. Juni 1991» — Inkrafttreten **1. Juni 2026** (Fn. 2, OS 81, 145). Fuer die Waerme-/Energienutzung aus Wasser, Untergrund und Abwasser gilt neu **§ 44 Abs. 1 lit. a WsG**.
- **Wie es durchrutschen konnte:** Der WsG/WsV-Nachzug aus Buch-Run 50 hat nur nach **«HWSchV»** gesweept und wurde in Run 64 ausdruecklich als «bleibt geschlossen» verbucht — § 126 hebt aber **zwei** Erlasse auf. Aufgefallen ist es erst im Cross-Lauf: die KB `energie` hatte die Abloesung aus dem AWEL-Glossar uebernommen (ungeprueft, aber richtig), waehrend diese — fuer den ZH-Erlassstand **fuehrende** — KB den aufgehobenen Erlass weiterfuehrte. **Regel daraus: nach dem NACHFOLGE-Erlass sweepen, nicht nach dem einen Erlass, der den Anlass gab.**
- **[direkt korrigiert]** `buecher/band-2/17-haustechnische-anlagen-teil3.md` (§ 8 → § 44 Abs. 1 lit. a WsG, Aufhebungsvermerk, KGSchV-Vorbehalt; Buchtext quellentreu) · `wiki/baureife-und-erschliessung.md` (Fassungs-Warnung mit Fundstelle).
- **[angemeldet] 15 verbleibende Fundorte als Prioritaet (a) im ARBEITSREGISTER** (`training/PROGRAMM.md`, Fortschritts-Tracker) mit Fundortliste, Erledigt-Kriterium (grep liefert nur noch Stellen mit Aufhebungsvermerk) und den bekannten §-Zuordnungen (§ 8 → § 44 WsG · §§ 35/36 → §§ 45/46 WsG · § 52 → § 122 WsG · §§ 13ff./15/45 → 3./4. Abschnitt WsG). Zeiger in `wiki/QUESTIONS.md`. **Bring-Schuld separat:** ist die **KGSchV (LS 711.11)** ebenfalls aufgehoben? § 126 hebt nur *Gesetze* auf. **Drittkanal:** `planungsgrundlagen` fuehrt «LS 711.1 §§ 3/34/37» als OEREB-Rechtsgrundlage — mitziehen.
- **[korrektur] Handoff in die KB `auflagebereinigung` zeigte auf den falschen Artikel.** `wiki/bauausfuehrung-und-baukontrolle.md` leitete die «vor Baubeginn faelligen Auflagen» ueber die [[ausnahmebewilligung-und-bestandesschutz]]-Linie — jener Artikel behandelt aber nur Dispens § 220 und Bestandesschutz § 357 PBG (0 Treffer fuer «Baubeginn»/«Auflage»). Zustaendig ist § 321 PBG → [[nebenbestimmungen-und-reverse]], das die Rolle seit Run 67 selbst beansprucht. → umgehaengt, § 326 lit. a PBG als Stuetze ergaenzt, Gegenverweis mit den KB-Pfaden im Zielartikel gesetzt. Der Verweis auf die Ausnahmebewilligungs-Linie bleibt unter «Verwandte Artikel» — dort ist er richtig.
- Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run17.md`.

## 2026-07-27 — Buch-Run 68 (Festigungsmodus, Priorität c Erst-Verifikation Enteignung/Entschädigung)
- [verifikation] **`wiki/enteignung-und-entschaedigung.md`** — erster Modell-D-Lauf seit
  Erstellung (2026-07-04): alle 14 PBG-Fundstellen (§§ 41-43a/62/64/65/102/103/119/122/165/
  202/212/214/235/346) gegen `raw/260607_amtlich_zh_pbg.md` (Nachtrag 133) — alle CONFIRMED,
  0 Korrekturen. Status **emerging → established**, erstmaliges `verifiziert`-Feld ergänzt.
- [neu] **`raw/260727_amtlich_zh_abtrg.md`** — vollständiger amtlicher Volltext des AbtrG
  (LS 781, Nachtrag 099) erstmals in die KB aufgenommen; bisher nur aus dem Buchzitat
  übernommen, nie live geprüft.
- [erweitert] **`raw/260725_amtlich_zh_egzgb.md`** — um §§ 180-183quater EG ZGB
  («Enteignungsähnliche Beschränkungen») ergänzt (bisher nur §§ 168-179 im Bestand).
- [fund] **§ 28 AbtrG → § 29 AbtrG:** «gütliche Einigung» im Enteignungsverfahren steht in
  § 29 AbtrG (§ 32 AbtrG verweist explizit auf «die in § 29 vorgesehene gütliche
  Verständigung»), nicht § 28 (regelt nur die Bekanntmachungspflicht der §§ 26/27). Korrigiert
  in `wiki/enteignung-und-entschaedigung.md`, `buecher/band-1/05-planung-und-entschaedigung.md`
  UND (Register-Sweep-Fund) `buecher/band-1/09-rechtsschutz-teil2-ablauf-kosten-revision.md`
  (unabhängige zweite Fundstelle desselben Fehlers).
- [fund] **§§ 40/41 AbtrG → §§ 33/34 AbtrG:** die vier Schätzungskommissionen/-kreise stehen
  in §§ 33/34 AbtrG (Organisationsnorm), nicht §§ 40/41 (regeln Vorladung/Auskunftsrechte im
  laufenden Verfahren). Korrigiert in Wiki + Destillat.
- [fund] **§ 183 Abs. 3 EG ZGB → § 183bis Abs. 3 EG ZGB:** die Verzinsungsregel für die
  materielle Enteignungsentschädigung steht in § 183bis Abs. 3 — § 183 EG ZGB selbst ist seit
  24.10.2011 (Kantonales Geoinformationsgesetz) aufgehoben und im Gesetzestext nur noch als
  leere Nummer vorhanden. § 183ter (10-J-Anmeldefrist) und § 183quater (5-J-Rückerstattung)
  CONFIRMED unverändert. Korrigiert in Wiki + Destillat.
- [fassungsstand] **AbtrG (LS 781) erstmals live gegen zhlex.zh.ch geprüft:** aktuelle Fassung
  Nachtrag 099 (in Kraft seit 1.1.2018), keine neuere Revision — die vom Buch genannte
  Revisionsbedürftigkeit (RRB 58/2005) bleibt bis heute unumgesetzt. EG ZGB weiterhin
  Nachtrag 133, kein Drift.
- [register-sweep] `wiki/INDEX.md` Statusmarker (emerging → established) nachgezogen.
- [drills] 3 neue Karten (2×A, 1×D) in `training/drills.md`.
- Report `outputs/2026-07-27_buch-run68.md`.

## 2026-07-27 — Buch-Run 67 (Festigungsmodus, Priorität c Erst-Verifikation Nebenbestimmungen/Revers)
- [verifikation] **`wiki/nebenbestimmungen-und-reverse.md`** — erster Modell-D-Lauf seit
  Erstellung (2026-06-19): §§ 320/321/326/73/100/101/244/360 PBG gegen
  `raw/260607_amtlich_zh_pbg.md`, §§ 30/31 VRG gegen `raw/260712_amtlich_zh_vrg.md`, § 16 Abs. 2
  BBV I gegen `raw/260607_amtlich_zh_bbv1.md` — **alle CONFIRMED, 0 Korrekturen**. Status
  **emerging → established**, erstmaliges `verifiziert`-Feld ergänzt.
- [fund] **Fassungsstand-Drift § 10a → § 10b VRG:** Begründungspflicht-Norm für
  Bauverweigerungen/Auflagen/Bedingungen wurde per **1.1.2026** umnummeriert (Änderung vom
  30.10.2023 «Elektronische Verfahrenshandlungen», OS Band 79, 25.10.2024). Korrigiert in
  `wiki/nebenbestimmungen-und-reverse.md`, `buecher/INDEX.md`, `buecher/band-1/07-
  zustaendigkeiten-entscheide-auskuenfte.md` (Frontmatter + Offene-Punkte, Buchzitat selbst
  unangetastet), `buecher/band-1/07-vorentscheid-auskuenfte-besondere-zustaendigkeiten.md`
  (Frontmatter-Tag), `training/drills.md`.
- [fund] **Art. 164 GBV mit invertierter Polarität zitiert:** KB-Fassung behauptete «Alt-Bestand
  vor 1.1.2012 muss nur angemerkt werden», amtlicher Wortlaut (Fedlex `eli/cc/2011/667`,
  Konsolidierung 20230101) sagt das Gegenteil: «muss NICHT angemerkt werden» (Übergangs-
  Ausnahme von der 2012 neu eingeführten Anmerkungspflicht nach Art. 962 Abs. 1 ZGB). Korrigiert
  in `wiki/nebenbestimmungen-und-reverse.md` + `buecher/INDEX.md`; im Quell-Destillat
  `buecher/band-1/07-zustaendigkeiten-entscheide-auskuenfte.md` als vermutlicher
  Transkriptionsfehler (Run 11) markiert, Buchzitat selbst stehen gelassen (Quelle treu),
  amtlicher Befund als Korrektur davorgestellt.
- [präzisierung] § 326 PBG regelt die **Baubeginn-Sperre** (Vorleistungspflicht auf Baubeginn
  gestellter Auflagen), nicht direkt die Vollstreckung — die eigentlichen Zwangsmittel liefern
  §§ 30/31 VRG. Tabelle in `wiki/nebenbestimmungen-und-reverse.md` + Register-Sweep entsprechend
  geschärft.
- [register-sweep] `buecher/INDEX.md:356-361`, `wiki/INDEX.md:45`, `training/drills.md:400-415`
  nachgezogen.
- [drill] 2 neue Karten (2×D) in `training/drills.md`.
- [report] `outputs/2026-07-27_buch-run67.md`.

## 2026-07-27 — Buch-Run 66 (Festigungsmodus, Priorität a Cross-KB-Nachtrag PBG-Revision + Priorität c Erst-Verifikation Vorentscheid)
- [verifikation] **`wiki/baurechtlicher-vorentscheid-und-voranfrage.md`** — erster Modell-D-Lauf
  seit Erstellung (2026-06-21): §§ 322/323/324 PBG, § 310 Abs. 3 PBG, § 315 PBG, § 213 PBG gegen
  `raw/260607_amtlich_zh_pbg.md` wortlautgeprüft — **alle CONFIRMED, 0 Korrekturen**. Status
  **emerging → established**, erstmaliges `verifiziert`-Feld ergänzt.
- [register-sweep] `wiki/INDEX.md` Status-Marker `*emerging*` → `*established*` für diesen Artikel
  korrigiert.
- [cross-kb] **`wiki/ausnahmebewilligung-und-bestandesschutz.md`** + **`wiki/abstaende-und-hoehen.md`**
  — Cross-KB-Befund Wissens-Chef Run 15 (25.07.2026) bearbeitet: forward-looking Hinweis auf den
  PBG-Revisionsstrang «Erleichtertes Bauen im Bestand» (§ 220a E-PBG, Aufhebung Mehrlängenzuschlag
  §§ 21/23/24 ABV) ergänzt — Vorentwurfsstatus, keine Rechtswirkung, Verfahrensstand per 24.07.2026
  ohne Kantonsratsvorlage (Quelle: KB `planungsgrundlagen`, `wiki/recht-norm-pbg-revision-bauen-im-bestand.md`,
  dort führend).
- [drill] 2 neue Karten (1×A, 1×D) in `training/drills.md`.
- [report] `outputs/2026-07-27_buch-run66.md`.

## 2026-07-27 — Buch-Run 65 (Festigungsmodus, Priorität c Re-Verifikation Ausnahmebewilligung/Bestandesschutz)
- [verifikation] **`wiki/ausnahmebewilligung-und-bestandesschutz.md`** — vollständiger Modell-D-
  Wortlautabgleich §§ 218/219/220 (Abs. 1-3), § 357 (Abs. 1/4/5), § 307 (Abs. 1/2), § 321, § 101,
  §§ 318/320 PBG gegen `raw/260607_amtlich_zh_pbg.md` — **alle CONFIRMED, 0 Korrekturen**,
  Fassungsstand weiterhin Nachtrag 133. `verifiziert`-Feld aktualisiert.
- [sekundärprüfung] § 49 Abs. 3 PBG (Höhe 4 m/5 m «Besonderes Gebäude») trifft nur auf die
  Anhang-Fassung zu; Nuance bereits korrekt in `wiki/abstaende-und-hoehen.md` dokumentiert, kein
  Register-Sweep-Nachzug nötig.
- [drill] 2 neue Karten (2×D) in `training/drills.md`.
- [report] `outputs/2026-07-27_buch-run65.md`.

## 2026-07-27 — Buch-Run 64 (Festigungsmodus, Priorität a Negativsweep + Priorität b Fassungsstand-Check VRG + Priorität c Re-Verifikation Rechtsschutz)
- [verifikation] KB-weiter Sweep (`wiki/`, `buecher/`, `training/`) nach HWSchV/Hochwasserschutz/
  Gewässerabstand: **0 neue stale Fundorte** seit Buch-Run 50 — Priorität (a) bleibt geschlossen.
- [fund] **`raw/260712_amtlich_zh_vrg.md`** — Fassungsstand-Drift entdeckt: Basisquelle stand auf
  Nachtrag 129 (Stand 12.07.2026), zhlex aktuell auf **Nachtrag 133**. Frisches PDF Wort für Wort
  gegen §§ 8, 9, 10c, 15, 29a, 30, 31 VRG geprüft — **CONFIRMED, 0 materielle Änderung**.
  Fassungsstand-Vermerk ergänzt.
- [verifikation] **`wiki/rechtsschutz-und-rechtsmittelverfahren.md`** — adversarial re-verifiziert:
  Nicht-Erstreckbarkeit der 30-Tage-Vernehmlassungsfrist (§ 26b Abs. 2 i.V.m. § 12 Abs. 1 VRG,
  Run-44-Korrektur) bei Nachtrag 133 bestätigt unverändert. `verifiziert`/`last_updated` nachgeführt.
- [register-sweep] **`wiki/widerrechtliche-bauten-und-sanktionen.md`**,
  **`wiki/bauausfuehrung-und-baukontrolle.md`** — VRG-Fassungsstand-Vermerk nachgezogen (beide
  zitieren dieselbe VRG-Rohquelle).
- [drill] 2 neue Karten in `training/drills.md` (Modell D Fassungsstand-Check, Modell D
  Adversarial-Gegenprobe Fristerstreckung).
- [register] `training/PROGRAMM.md` Tracker-Eintrag Run 64 ergänzt; `wiki/QUESTIONS.md`
  Kopfeintrag ergänzt.
- Report: `outputs/2026-07-27_buch-run64.md`.

## 2026-07-27 — Buch-Run 63 (Festigungsmodus, Priorität c: Raumplanung und Gestaltung re-verifiziert, § 253→§ 320 PBG-Fehlzuordnung korrigiert)
- [verifikation] **`wiki/raumplanung-und-gestaltung.md`** — vollständiger Modell-D-
  Wortlautabgleich §§ 7/18/19/39/46 Abs. 3/48/49-65/69-73/346 PBG gegen
  `raw/260607_amtlich_zh_pbg.md` (Zonentypen-Enumeration § 48 Abs. 2, Fristen § 7/§ 346).
  **CONFIRMED, 0 Korrekturen** an diesem Bestand. §§ 83-89/44a PBG bereits in Buch-Run 43
  CONFIRMED, nicht erneut geprüft.
- [korrektur] **`wiki/raumplanung-und-gestaltung.md`** — «Anspruch auf Bewilligung … § 253 PBG»
  korrigiert: § 253 PBG regelt nur die Nutzweise/Zonenkonformität, die Anspruchsnorm ist
  **§ 320 PBG** (im übrigen Wiki-Bestand bereits durchgängig korrekt geführt, hier nachgezogen).
  Isolierte Wiki-Kompressionsabweichung, Register-Sweep negativ (keine Propagation in
  `wiki/INDEX.md`/`buecher/INDEX.md`/`training/curriculum.md`). `verifiziert`-Feld + `sources`
  aktualisiert.
- [drill] 3 neue Karten in `training/drills.md` (2×D, 1×A).
- Report `outputs/2026-07-27_buch-run63.md`.

## 2026-07-27 — Buch-Run 62 (Festigungsmodus, Priorität c: Baulinien und Abstandslinien re-verifiziert, 2 Register-Sweep-Korrekturen)
- [verifikation] **`wiki/baulinien-und-abstandslinien.md`** — vollständiger Modell-D-
  Wortlautabgleich §§ 90-122 PBG (Erschliessungsplan/Baulinien/Niveau-/Ski-Schlittellinien/
  Werkplan/vorsorgliches Bauverbot) gegen `raw/260607_amtlich_zh_pbg.md`. **CONFIRMED, 0
  Korrekturen am Kernbestand**, Fassungsstand Nachtrag 133.
- [korrektur] **`wiki/baulinien-und-abstandslinien.md`** — § 33a ABV (aufgehoben seit RRB
  11.5.2016) → **§ 253a PBG** korrigiert (Register-Sweep-Nachzug, Fehler war im Komplex
  [[ausnahmebewilligung-und-bestandesschutz]] bereits behoben, nie hierher gesweept);
  Klarstellung Haupt-/Anhang-Fassung § 260 Abs. 3 PBG für die 1/3-Fassadenlänge-Vorsprungsregel
  ergänzt (offene Praxisfrage statt stillschweigender Übernahme); StrG-Fassungsstand-Vermerk aus
  Run 53 (Nachtrag 133) nachgezogen. `verifiziert`-Feld ergänzt.
- [korrektur] **`buecher/band-2/15-lage-von-gebaeuden-teil2b.md`** — JANS-Anwendungs-Transfer-
  Abschnitt («Dämmung 35 cm gratis») auf § 253a PBG korrigiert, Buch-Zitat selbst unangetastet
  (Leitplanke «Quelle treu»); `paragraphen`-Frontmatter ergänzt.
- [ergänzung] **`training/drills.md`** — 3 neue Drill-Karten (2×D, 1×A) zu § 33a ABV/§ 253a PBG
  und der Haupt-/Anhang-Fassung § 260 Abs. 3 PBG.
- Report `outputs/2026-07-27_buch-run62.md`.

## 2026-07-27 — Buch-Run 61 (Festigungsmodus, Priorität c: Natur- und Denkmalschutz vollständig re-verifiziert)
- [verifikation] **`wiki/naturschutz-und-denkmalschutz.md`** — vollständiger Modell-D-
  Wortlautabgleich aller 14 zitierten PBG-§§ (203/204/205/207/208/209/210/211/213/216/217/
  238a/50/76/338b) gegen `raw/260607_amtlich_zh_pbg.md` sowie beider KNHV-§§ (10/12) gegen
  `raw/260714_amtlich_zh_knhv.md`. **Alle 16 Fundstellen CONFIRMED, 0 Korrekturen, 0
  Halluzinationen.** `verifiziert`-Feld um Prüfeintrag ergänzt. Report
  `outputs/2026-07-27_buch-run61.md`.
- [ergänzung] **`training/drills.md`** — 3 neue Drill-Karten (2×C, 1×D) zu § 209/§ 213 PBG
  und KNHV § 12.
- [register] `wiki/QUESTIONS.md`, `training/PROGRAMM.md` (Tracker Run 61) nachgeführt.

## 2026-07-27 — Buch-Run 60 (Festigungsmodus, Priorität a: Behindertenparkplatz-Kennwert-Herkunft geklärt + Priorität c: Wohnhygiene/Raumanforderungen re-verifiziert)
- [korrektur] **`wiki/fahrzeugabstellplaetze-und-parkierung.md`** — Cross-KB-Frage (Wissens-Chef
  Run 11, 21.07.2026) zur Herkunft des Behindertenparkplatz-Kennwerts («1 je 25 Wohnungen +
  100 m Gehdistanz») geklärt: Wert stammt wörtlich aus dem Standardwerk (Bd. 2, S. 900), das
  dort **SN 521 500 Korrigendum C3 (1.10.2013)** zitiert, nicht die SIA-500:2009-Basisausgabe.
  Kein Fehlzitat/keine Halluzination — nur die Norm-Referenz war ungenau. Quellenangabe
  präzisiert, Cross-KB-Hinweis an `normen` ergänzt (Destillat `sia-500-2009` deckt nur die
  Basisausgabe ab). `verifiziert`-Feld nachgeführt.
- [verifikation] **`wiki/wohnhygiene-und-raumanforderungen.md`** — Stichproben-Re-Verifikation
  (ältestes `verifiziert`-Datum, 2026-07-13): §§ 299-306 PBG, § 40 BBV I, § 32/§ 4 ABV erneut
  Wort für Wort gegen die amtlichen Volltexte geprüft, **CONFIRMED, 0 Korrekturen**.
  Fassungsstand PBG (Nachtrag 133), ABV (Nachtrag 127), BBV I (Nachtrag 133) ohne Drift.
  `verifiziert`-Feld nachgeführt.
- [korrektur] **`wiki/INDEX.md:29`** — Stale-Status-Nebenbefund: [[wohnhygiene-und-
  raumanforderungen]] noch als `emerging` geführt, obwohl das Artikel-Frontmatter längst
  `established` trägt (gleiches Muster wie Run 44/54) — korrigiert.
- [drills] 3 neue Karten in `training/drills.md` (1×A Frage→Beleg, 1×D Gegenprobe, 1×C
  Selbsttest).
- [report] `outputs/2026-07-27_buch-run60.md`.

## 2026-07-27 — Buch-Run 59 (Festigungsmodus, Priorität a: Cross-KB-Flag § 273/§ 260 Abs. 4 geschlossen + Priorität c: Geschosse/Kniestock re-verifiziert)
- [korrektur] **`wiki/abstaende-und-hoehen.md`** — echte Lücke aus dem Cross-KB-Flag (Wissens-Chef
  Run 16) geschlossen: § 260 Abs. 4 PBG (Minibau, 1,5 m/2 m², vollständige Grenz- **und**
  Gebäudeabstandsbefreiung, bereits geltender Hauptteil) fehlte im Hauptabschnitt «Grenzabstand»
  komplett und war nur in der Harmonisierungs-Sektion erwähnt. Neuer Absatz ergänzt, klar
  abgegrenzt von der «Besonderes Gebäude»/§ 273-Erleichterung (≤4 m/5 m, nur reduzierter
  **Gebäudeabstand** 3,5 m). Wortlautverifiziert gegen `raw/260607_amtlich_zh_pbg.md`
  Z. 2747-2748 + `raw/260607_amtlich_zh_abv.md` Z. 1272-1274. `verifiziert`-Feld nachgeführt.
- [korrektur] **`buecher/band-2/15-lage-von-gebaeuden-teil3-harmonisierung.md:72`** — echter Fund,
  nicht in der ursprünglichen Cross-KB-Meldung benannt: zitierte Minibauten fälschlich als
  «§ 273 nPBG; § 2a nABV» statt **§ 260 Abs. 4 nPBG / § 2 Abs. 2 ABV**. Korrigiert; Register-Sweep
  über `training/curriculum.md` negativ (dort bereits korrekt).
- [bestätigt] **`wiki/gebaeudearten-und-abstandssystem.md:31`** und **`wiki/INDEX.md:17`** — beide
  bereits korrekt (Minibau/§ 260 Abs. 4 und Besonderes Gebäude/§ 273 schon als zwei getrennte
  Kategorien geführt), kein Korrekturbedarf.
- [verifiziert] **[[geschosse-und-kniestock]]** (Priorität c, ältestes `verifiziert`-Datum
  2026-07-13) — §§ 275/276 PBG **beide Fassungen** (harmonisiert + alt/Anhang) wortlautgeprüft
  gegen `raw/260607_amtlich_zh_pbg.md`, CONFIRMED, 0 Korrekturen.
- 3 neue Drill-Karten (1×A, 1×D, 1×C). QUESTIONS-Cross-KB-Eintrag geschlossen (Archiv-Vermerk).
- Bericht: `outputs/2026-07-27_buch-run59.md`.

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB): § 273-Eingang aus der KB `energie` zugestellt
- **[eingang] Struktur-Muster 1 «Uebergabe verpufft im abgebenden KB».** Die KB `energie` hat am 25.07. (Run 94) einen Korrekturhinweis zu **§ 273 PBG** formuliert und ausschliesslich bei sich selbst notiert; hier war davon nichts angekommen (0 Treffer in `wiki/QUESTIONS.md`, `abstaende-und-hoehen.md`, `gebaeudearten-und-abstandssystem.md`). Kern der Meldung: die zitierte Regel «Besondere Gebaeude § 273/§ 49 Abs. 3 (≤4/5 m, 3,5 m)» entspricht dem Stand 2017 und war eine **Gebaeudeabstands**-Erleichterung, keine Grenzabstands-Bagatellregel; die geltende Freistellung fuer Kleinbauten/-geraete (1,5 m / 2 m², Revision 2025/2026) steht in **§ 260 Abs. 4 PBG**. → als offener Punkt in `wiki/QUESTIONS.md` eingetragen (neuer Abschnitt «Cross-KB-Eingang aus der KB energie»), zu pruefen sind `wiki/abstaende-und-hoehen.md`, `wiki/INDEX.md:17`, `wiki/gebaeudearten-und-abstandssystem.md:31`. Gegenpruefung am eigenen `raw/`-Volltext, nicht am energie-Destillat — fuer den PBG-Wortlaut ist diese KB fuehrend.
- **[hinweis]** Die KB ist in Run 16 zusaetzlich als **fuehrende Quelle fuer den kantonalen Energie-Erlassstand ZH** (EnerG LS 730.1, BBV I §§ 47-48c) in die Rollen-Matrix aufgenommen worden; `energie` und `planungsgrundlagen` zitieren ab jetzt die hiesigen `raw/`-Dateien, statt den Wortlaut fortzuschreiben. Zwei materielle Rechtsfehler in jenen KBs wurden genau daran aufgedeckt und korrigiert.
- Bericht: `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-25 — Buch-Run 58 (Festigungsmodus, Priorität c: Stichproben-Re-Verifikation Bauausführung + Widerrechtliche Bauten)
- [verifiziert] **[[widerrechtliche-bauten-und-sanktionen]]** — Stichprobe §§ 340/340a/341 PBG
  gegen `raw/260607_amtlich_zh_pbg.md` + § 30/31 VRG gegen `raw/260712_amtlich_zh_vrg.md`
  wortlautgeprüft, 0 Korrekturen; PBG-Fassungsstand live gegen zhlex.zh.ch bestätigt (Nachtrag
  133, keine Drift). Erstmaliges `verifiziert`-Feld ergänzt.
- [korrektur] **Register-Sweep-Rückstand aus Run 47 geschlossen:** die dort korrigierte
  Geisterbezeichnung «Art. 32bis USG» (amtlich korrekt: **Art. 32bbis USG**) überlebte an
  3 von Run 47 nicht erfassten Fundorten — `wiki/bauausfuehrung-und-baukontrolle.md`
  (Frontmatter + Fliesstext), `buecher/band-1/08-ausfuehrung-teil2-baustellensicherheit.md`
  (5 Stellen: Frontmatter-Paragraphenliste + 4 Fliesstext-/Tabellenstellen), `training/
  curriculum.md` (1 Stelle). Alle korrigiert; historische Fundorte (CHANGELOG, outputs/-Reports,
  QUESTIONS.md, PROGRAMM.md-Tracker, drills.md-Beschreibungstext), die die vergangene Korrektur
  selbst beschreiben, bewusst NICHT verändert (Geschichtsfälschung wäre falsch).
- [verifiziert] **[[bauausfuehrung-und-baukontrolle]]** — erstmaliges `verifiziert`-Feld ergänzt
  (Bestand §§ 326-329 PBG + §§ 10c/30 VRG aus Run 30/31 bestätigt, keine neuen Korrekturen ausser
  der Register-Sweep-Nachholung oben).
- [neu] 3 Drill-Karten in `training/drills.md` (2×D, 1×A).

## 2026-07-25 — Buch-Run 57 (Festigungsmodus, Priorität c: Stichproben-Re-Verifikation Bestandsumbau-Eingriffstiefe)
- [neu] **Amtlicher Volltext des PBG SZ erstmals in der KB.** `raw/260725_amtlich_sz_pbg.md`
  (Planungs- und Baugesetz Kanton Schwyz, SRSZ 400.100, Stand 1.2.2025) — §§ 59-64 (Grenz-/
  Gebäudeabstand, Gebäudehöhen-Ermittlung) und § 72 (Bestandesgarantie) per `pdftotext -layout`
  extrahiert. Vor diesem Lauf existierte für PBG SZ kein einziger `raw/`-Beleg in der KB, obwohl
  der Wiki-Artikel [[bestandsumbau-eingriffstiefe]] bereits seit 07.06.2026 daraus zitierte.
- [korrektur] **[[bestandsumbau-eingriffstiefe]]** — Lücke geschlossen statt Fehler korrigiert:
  «§ 60 PBG SZ» (Grenzabstand/Gebäudehöhen-Ermittlung inkl. Attika-Rücksprung Abs. 3 lit. c) war
  bereits korrekt zitiert, jetzt amtlich belegt; «Bestandesschutz/Besitzstandsgarantie … SZ
  analog — § verifizieren» ersetzt durch den bestätigten Beleg **§ 72 Abs. 1 PBG SZ**. Neuer
  Absatz in Abschnitt 3 markiert zusätzlich eine bisher unausgesprochene offene Frage: § 72
  PBG SZ trägt keine mit § 357 PBG ZH vergleichbare Übernutzungs-Kasuistik im Gesetzeswortlaut,
  eine Übertragung der ZH-Gerichtspraxis ist ungeprüft. Erstmaliges `verifiziert`-Frontmatter-
  Feld ergänzt (Artikel lief seit dem Seed ohne Modell-D-Prüfung).
- [ergänzt] `wiki/QUESTIONS.md` — neuer Eintrag mit Befund + offener Frage (SZ-
  Übernutzungspraxis). `training/drills.md` — 3 neue Karten (2×D Grenzabstand/Bestandesgarantie,
  1×A Quellenfrage) + Lauf-Zusammenfassung. `training/PROGRAMM.md` — Tracker Run 57.
- **Register-Sweep:** `grep -rn "§ 60 PBG SZ\|SZ analog"` über wiki/, buecher/, training/ vor
  der Korrektur — Treffer nur im Zielartikel selbst, keine weiteren Fundorte (kein Sweep-Bedarf
  über die editierten Dateien hinaus).
- **0 Halluzinationen, 0 Fehlzitate** — beide bestehenden Zitate im Artikel erwiesen sich bei
  Volltextprüfung als korrekt; der Fund ist eine geschlossene Beleglücke, keine Korrektur eines
  falschen Werts. Report `outputs/2026-07-25_buch-run57.md`.

## 2026-07-25 — Buch-Run 56 (Festigungsmodus, Prioritaet c: Stichproben-Re-Verifikation Zonenkonformitaet)
- [korrektur] **Komplette Grundmasse-Tabelle in [[zonenkonformitaet]] war ein unbelegter
  Platzhalter — jetzt amtlich ersetzt.** Quelle der bisherigen Werte war `raw/260602_docs-
  baurecht-bzo-zh.md`, eine selbst verfasste Datei, die die Zahlen explizit als ungeprüfte
  Schätzung auswies («TODO: Werte ergänzen»); nie gegen den Erlass geprüft, obwohl der Artikel
  als `established` lief. Neue amtliche Werte aus Art. 13/14/18 BZO Zürich (Stadt), Stand
  29.05.2024: einheitlicher Grundgrenzabstand 5 m (Wohnzonen)/3,5 m (Zentrumszonen) statt der
  erfundenen «grosser/kleiner GA»-Systematik; AZ in Prozent (W2 60 %, W3 90 %, W4b 105 %, W4
  120 %, W5 165 %, W6 205 %, Z5-Z7 200/230/260 %) statt Dezimalbruch; Gebäudehöhen durchweg
  abweichend (W2 9 m, W3 9,5 m, W4/W4b 12,5 m, W5 15,5 m statt 7,5/10,5/13,5/16,5 m); Zonen
  W2bI-III, W4b, W6, Z5-Z7 neu ergänzt (fehlten komplett). Mehrlängenzuschlag Art. 14 neu
  aufgenommen.
- [neu] **Amtliche Quelldatei** `raw/260725_amtlich_zh_bzo-zurich-stadt-grundmasse.md`
  (Art. 13/14/15/18/19 BZO Zürich Stadt, per `pdftotext -layout` sauber extrahiert — die
  bestehende `raw/260607_amtlich_zh_bzo-zurich-stadt.md` hatte die Tabelle linearisiert und
  dadurch spaltenverschoben unbrauchbar gemacht).
- [neu] `verifiziert`-Frontmatter-Feld in [[zonenkonformitaet]] ergänzt (erster Modell-D-Lauf
  für diesen Artikel).
- [drill] 4 neue Karten in `training/drills.md` (Sektion «Zonenkonformität / BZO Stadt Zürich —
  Buch-Run 56»).
- Report: `outputs/2026-07-25_buch-run56.md`.

## 2026-07-25 — Buch-Run 55 (Festigungsmodus, Prioritaet c: Stichproben-Re-Verifikation Kap. 14)
- [korrektur] **Fassungsstand-Umkehr in [[nutzungsziffern]] gefunden und korrigiert** (Modell-D-
  Volltextabgleich gegen `raw/260607_amtlich_zh_pbg.md` + `raw/260607_amtlich_zh_abv.md`, Hauptteil
  UND Anhang je gegengelesen): die harmonisierten §§ 255/256/257/258 PBG + §§ 9-13 ABV sind bereits
  seit der PBG-Änderung vom 14.9.2015 / ABV-Änderung vom 11.5.2016 (in Kraft 1.3.2017) geltender
  **Hauptteil**, nicht eine künftige „nPBG"-Harmonisierungsvorlage. Die Anhang-Fassung (Stand
  28.2.2017) gilt nur, bis die jeweilige Gemeinde ihre BZO angepasst hat. Analog zu den bereits in
  [[abstaende-und-hoehen]] (Run 31) und [[geschosse-und-kniestock]] (Run 33/34) behobenen Fällen.
  Grünflächenziffer (§ 257 PBG) ist die heute geltende Bezeichnung, Freiflächenziffer nur Anhang-Recht.
- [korrektur] **§ 9 ABV**: die «UG mehrheitlich über gewachsenem Boden = Vollgeschoss»-Regel steht
  nur in der alten Anhang-Fassung; im seit 1.3.2017 geltenden Hauptteil ist dieser Halbsatz
  gestrichen (nicht bloss «kommunale Praxis uneinheitlich», wie zuvor vermerkt).
- [korrektur] **§ 10 lit. c ABV**: aktuell **20 %** der anrechenbaren Geschossfläche für
  energiesparende verglaste Balkone/Loggien/Wintergärten (nicht 10 % — das ist der Anhang-Wert).
- [korrektur] **§ 17 Abs. 2 ABV existiert nicht**: § 17 ABV ist seit 1.2.1992 aufgehoben (RRB
  25.9.1991) und enthält keinen Abs. 2. Die als Rechtsgrundlage der Nutzweisen-Übertragung
  zitierte Fundstelle (Buch S. 987) liess sich am amtlichen Volltext nicht bestätigen — die
  Übertragung beruht nach geltendem Recht ausschliesslich auf kommunalem Recht. Korrigiert in
  [[nutzungsziffern]], [[ausnuetzungsuebertragung]] und Destillat [[14-nutzungsdichte-ausnuetzung]].
- [register-sweep] Korrekturen nachgezogen in `wiki/INDEX.md`, `buecher/INDEX.md`,
  `training/curriculum.md`, `training/drills.md` (3 Karten korrigiert, 2 neue Karten).
- [verifiziert-Feld ergänzt] `nutzungsziffern.md`, `ausnuetzungsuebertragung.md`,
  `14-nutzungsdichte-ausnuetzung.md` (waren zuvor established ohne verifiziert-Stempel).
- [needs-verification neu] ÜZ-Neuregelung «Unterniveaubauten anzurechnen» (Buch S. 990 f.) liess
  sich am gelesenen Wortlaut von § 256 PBG nicht wörtlich bestätigen — evtl. Buchkommentar statt
  Gesetzestext, in `wiki/QUESTIONS.md` vorgemerkt.
- Report `outputs/2026-07-25_buch-run55.md`.

## 2026-07-25 — Buch-Run 54 (Festigungsmodus, Fortsetzung Fassungsstand-Check + PPV-Primärquelle)
- [pruefung] EnerG (LS 730.1) und WsG/WsV (LS 724.1/724.11) live gegen zhlex.zh.ch geprueft —
  beide ohne Drift (EnerG weiterhin Nachtrag 129; WsG/WsV Nachtrag 133, identisch zum
  bereits erfassten Stand in `raw/260717_amtlich_zh_hwschv.md`). Fassungsvermerke in beiden
  Frontmatter-Bloecken (`raw/260712_amtlich_zh_energ.md`, `raw/260717_amtlich_zh_hwschv.md`)
  ergaenzt.
- [luecke geschlossen] PPV Stadt Zuerich Art. 8 Abs. 5-8 (autoarme Nutzungen): amtliche
  Primaerquelle (PPV-Fassung mit Aenderungen bis 16.12.2015, PDF `741.500_Parkplatzverordnung_
  16_V4.pdf`) via Websuche lokalisiert und per pdftotext direkt am Erlass geprueft — bisher nur
  ueber ein Leitfaden-Sekundaerzitat abgesichert. **CONFIRMED, 0 materielle Korrekturen**; einzige
  Differenz eine stilistische Ergaenzung («dabei») im Leitfaden, kein Gesetzeswortlaut.
  Nachgezogen: `raw/260713_amtlich_zh_ppv-stadt-zuerich.md` (neuer Abschnitt), Wiki
  [[fahrzeugabstellplaetze-und-parkierung]] (Quellen/verifiziert-Feld + Fliesstext), Destillat
  [[13-fahrzeugabstellplaetze-spielflaechen-teil3]] (offene-Punkte-Zeile geschlossen).
- [korrektur] `wiki/INDEX.md` fuehrte [[fahrzeugabstellplaetze-und-parkierung]] noch als
  `emerging`, obwohl das Artikel-Frontmatter seit Run 29 `established` zeigt — Register-Sweep-
  Fund, korrigiert.
- [drills] 2 neue Karten (J, K) in `training/drills.md`.
- Report `outputs/2026-07-25_buch-run54.md`.

## 2026-07-25 — Buch-Run 53 (Festigungsmodus, Fassungsstand-Sammelcheck kantonaler Erlasse)
- [pruefung] Sechs kantonale Erlasse live gegen zhlex.zh.ch geprueft (ABV LS 700.2, BBV I 700.21,
  BBV II 700.22, BVV 700.6, KNHV 702.11, StrG 722.1). Fuenf ohne Drift bestaetigt.
- [befund] `raw/260713_amtlich_zh_strg.md` zitierte eine bereits beim Abruf (13.07.2026)
  archivierte zhlex-Fassung (Nachtrag 109, Stand 2020) statt der damals aktuellen; aktuell ist
  Nachtrag 133 (Stand 1.7.2026). Volltextvergleich §§ 59-64 StrG: **wortgleich unveraendert** —
  0 materielle Korrektur, die bestehende § 62-StrG-Analyse (Run 36/40) bleibt gueltig.
- [ergaenzung] Fassungsstand-Pruefvermerk in `raw/260713_amtlich_zh_strg.md`; `verifiziert`-Feld
  in `buecher/band-1/03-erschliessung-landsicherung-teil1.md` nachgezogen.
- [drill] 2 neue Karten (Modell D) in `training/drills.md`; Tracker-Eintrag in
  `training/PROGRAMM.md`. Report `outputs/2026-07-25_buch-run53.md`.

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): SIA-181-Hinlink + IVHB-Teilantwort + PBG-Revisions-Luecke
- **SIA-181-Fundstelle nachgezogen (Rule `normen-referenz`):** `wiki/laermschutz-und-nichtionisierende-strahlung.md` nannte SIA 181 dreimal materiell ohne Verweis auf das fuehrende Destillat → Verweis auf `wissen/normen/destillate/sia-181-2006.md` inkl. Fassungsvorbehalt SIA 181:2020 gesetzt.
- **Teil-Antwort zum offenen Fassungs-Punkt (QUESTIONS §§ nABV/nPBG):** die KB `planungsgrundlagen` haelt das Destillat des amtlichen IVHB-Leitfadens der Baudirektion ZH (1.3.2017, 29 Begriffe) — in dieser KB `grep «ivhb-baubegriffe»`: 0 Treffer. Als Teil-Antwort im QUESTIONS-Punkt vermerkt, reziprok verlinkt (die Anwendungshilfe ersetzt den Abgleich am geltenden Erlass nicht).
- **Neue Luecke angemeldet:** Revisionsstrang «Erleichtertes Bauen im Bestand» (§ 220a/§ 357 E-PBG, Aufhebung Mehrlaengenzuschlag §§ 23/24 ABV) — `grep «220a»` ueber die ganze KB: 0 Treffer, obwohl genau diese Normen hier als geltendes Recht gefuehrt werden. Kein Widerspruch (Vorentwurf), aber in `wiki/QUESTIONS.md` aufgenommen.
- **Verdacht widerlegt:** «Genehmigungsfiktion nur im Meldeverfahren» — argumentum e silentio; die Beleg-Schicht (Buch Bd. 1 S. 415/416) fuehrt «Verfahrensabschluss durch Stillschweigen» sehr wohl. Keine Korrektur.
- Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-25 — Buch-Run 52 (Modell D, Fassungsstand-Check): LSV-Novelle 01.04.2026 geklärt — Art. 31a LSV aufgehoben, Art. 22/24 USG neu
- [distill] `raw/260725_amtlich_ch_usg-lsv-novelle-20260401.md`: neuer amtlicher Volltext
  (Fedlex-Filestore, Stand 1.4.2026, USG Art. 22/24 + LSV Art. 31/31a + Kontrollbefund
  Anhang 3/4/5/6) — schliesst den needs-verification-Flag aus Wissens-Chef Run 14 (24.07.2026).
- [korrektur] `wiki/laermschutz-und-nichtionisierende-strahlung.md`: Abschnitt «Fluglärm
  (Art. 31a LSV)» ersetzt durch «Bauen bei Grenzwertüberschreitung (Art. 22 USG / Art. 31 LSV) —
  reformiert per 1.4.2026» — **Art. 31a LSV ist per 1.4.2026 aufgehoben**, Nachfolgeregel
  Art. 31 Abs. 2 LSV; Art. 22 USG neu mit 3 KWL-/Fenster-Wegen; Art. 31 Abs. 1bis LSV neu;
  Art. 24 Abs. 3 USG (Innenentwicklungs-Ausnahme) ergänzt. «Bezug zum JANS-Alltag» + Frontmatter
  (`paragraphen`, `verifiziert`) nachgeführt.
- [korrektur] `buecher/band-2/19-baulicher-umweltschutz-teil2-laerm-nisv.md`: Fassungsstand-
  Vermerke bei den Art.-31a-Stellen ergänzt (Buchstand 2019 bleibt unverändert stehen, mit
  Verweis auf die aktuelle Rechtslage im Wiki); needs-verification-Abschnitt geschlossen.
- [korrektur] `buecher/INDEX.md`, `wiki/INDEX.md`: Fluglärm-Kurzfassung auf Art. 31 Abs. 2 LSV
  (Nachfolge Art. 31a) aktualisiert; `wiki/INDEX.md` zusätzlich stale `emerging`→`established`-
  Statuskorrektur (Nebenbefund, Artikel-Frontmatter zeigt `established` seit Run 33).
  [drill] `training/drills.md`: 1 Karte korrigiert (Fluglärm/Anhang 5 Ziff. 222) + 1 neue
  Modell-D-Karte (Fassungsstand-Falle Art. 31a).
- [questions] `wiki/QUESTIONS.md`: LSV-Novelle-Flag (Wissens-Chef Run 14) geschlossen, an Kopf
  und Archiv-Fundstelle (Z. 903).
- **Befund: Anhang 3/4/5/6 LSV materiell unverändert** (Stichprobe Anhang 3 Ziff. 2 ES II
  nachgerechnet). **1 strukturelle Korrektur (Art. 31a-Ablösung), 2 Ergänzungen (Art. 22/24 USG),
  0 Halluzinationen.** Primärquelle direkt per curl+grep aus dem HTML-Quelltext extrahiert (nicht
  nur WebFetch-Zusammenfassung) — Wortlaut Art. 22/24 USG und Art. 31/31a LSV wörtlich im raw
  hinterlegt. Report `outputs/2026-07-25_buch-run52.md`.

## 2026-07-24 — Wissens-Chef Run 14 (Cross-KB): Laerm/ES-Rollen-Link zu planungsgrundlagen + LSV-2026-needs-verification
- [link] `wiki/laermschutz-und-nichtionisierende-strahlung.md`: Querbezug-Block zur KB planungsgrundlagen
  gesetzt (Beschaffung/GIS-Layer 0154 fuehrend dort; Recht/ES-Grenzwerte hier fuehrend). Reziprok zum
  frischen Buch-Run-51-Stoff (Anhang 6 LSV). Gegenrichtung in `planungsgrundlagen/wiki/kartenportale-zonenplan-zh.md`.
- [flag] `wiki/QUESTIONS.md`: needs-verification-Notiz gesetzt — LSV-Novelle 01.04.2026 (aus pg-Vorbehalt)
  gegen unsere Anhang-3/4/6-Werte (Fedlex Stand 1.11.2023) pruefen. Adversarialer Verifier Run 14:
  UNBESTIMMT mit Entlastungstendenz (pg behauptet keine Grenzwert-Aenderung); keine unbelegte Korrektur.

## 2026-07-24 — Buch-Run 51 (Nachtschicht Mac Mini, Modell E): Anhang 6 LSV (Industrie-/Gewerbelärm) beschafft und verifiziert
- [distill] `raw/260724_amtlich_ch_lsv-anhang6.md`: neuer amtlicher Volltext (Fedlex-HTML,
  Filestore-Muster Rule 260721, Stand 1.11.2023) — Anhang 6 LSV vollständig (Geltungsbereich,
  Grenzwerttabelle ES I-IV, Beurteilungspegel-Formel + Pegelkorrekturen K1/K2/K3). Schliesst die
  seit Run 48 (2026-07-17) in `wiki/QUESTIONS.md` offene Lücke.
- [ergänzt] `wiki/laermschutz-und-nichtionisierende-strahlung.md`: neuer Abschnitt «Industrie- und
  Gewerbelärm (Art. 40 Abs. 1 / Anhang 6 LSV)» — Geltungsbereich (inkl. Parkhäuser/HLK-Anlagen),
  Grenzwerttabelle (**wertidentisch zu Anhang 3/4**, PW < IGW < AW CONFIRMED), Formel +
  Pegelkorrekturen mit JANS-Praxisbezug (Wärmepumpen-Aussenaufstellung, Lüftungsauslässe in
  ES II/III). Frontmatter `paragraphen` + `verifiziert` + `last_updated` nachgeführt.
- [questions] `wiki/QUESTIONS.md`: Anhang-6-LSV-Eintrag auf ERLEDIGT gesetzt.
- [drill] 1 neue Karte (`training/drills.md`, Run-51-Block, Modell C): Parkhaus-/Aussenparkierungs-
  lärm → Anhang 6 LSV, Grenzwertgleichheit zu Anhang 3/4, abweichende Ermittlungsmethode.
- **Befund: 0 Korrekturen, 0 Halluzinationen.** Die einzige bestehende KB-Referenz auf Anhang 6 LSV
  (`buecher/band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3.md`) war bereits korrekt — reine
  Lückenschliessung, kein Fehlerfund. Report `outputs/2026-07-24_buch-run51.md`.

## 2026-07-23 — Wissens-Chef Run 13 (Cross-KB): SN-640-066-Ausgabe-Vorbehalt + Naturgefahren-Backlog-Anker
- [korrektur] `wiki/fahrzeugabstellplaetze-und-parkierung.md`: an die Angabe «VSS 40 066 (2011/2019)» einen
  Herkunfts-Vorbehalt gesetzt (adversarial verifiziert, Verdikt CONFIRMED) — der geaenderte Titel «Parkieren;
  Projektierung» ist ueber das normen-Destillat `vss-640065-2011` belegt, die konkreten Ausgabe-Jahre und die
  Kurznummer stammen aber aus der ParkingSwiss-Guideline, nicht aus einer amtlichen VSS-Ausgabe → vor
  verbindlicher Zitierung gegenpruefen. Divergenz zu normen damit aufgeloest, kein Jahrgang als gesichert.
- [ergaenzt] `wiki/INDEX.md` (Backlog/Luecken): Naturgefahren/Gefahrenzonen (Rechtsstatus rote/blaue/gelbe Zone)
  als eigenen Backlog-Punkt registriert. Grund: planungsgrundlagen (`kartenportale-naturgefahren-objektschutz`)
  delegiert den Recht-Status hierher («baurecht fuehrend»), baurecht hielt aber bisher nur den Gewaesserraum-Aspekt
  (in `abstaende-und-hoehen`) und keinen INDEX-Anker — die Delegation zeigte ins Leere (Dangling-Delegation). Jetzt
  als Bring-Schuld sichtbar/nachfuehrbar gemacht, ohne Destillat zu erfinden. Cross-KB Run 13.

## 2026-07-22 — Wissens-Chef Run 12 (Cross-KB): SN 640 060 Rollen-Korrektur + INDEX/SIA-500 nachgezogen
- [korrektur] `wiki/fahrzeugabstellplaetze-und-parkierung.md`: der Vermerk «SN 640 060 existiert
  nicht / Fehlzitat entfernt» (Buch-Run 33) war zu absolut — adversarial verifiziert (Cross-KB Run 12):
  SN 640 060 existiert real als VSS-Grundlagennorm «Leichter Zweiradverkehr – Grundlagen» (gen. Nov 1994),
  belegt durch das eigene Buch-Destillat Bd. 2 S. 914-915 UND das established normen-Destillat
  `wissen/normen/destillate/vss-640060-1994`. Auf **Rollen-Korrektur** umgestellt (640 060 = Grundlagen,
  640 065 = Bedarf, 640 066 = Geometrie) statt Löschung; Cross-Link zum normen-Destillat gesetzt.
  `wiki/QUESTIONS.md`-Eintrag entsprechend nachgezogen.
- [veraltet] `wiki/INDEX.md` Z.61 trug den Cross-KB-geflaggten Behinderten-Parkplatz-Kennwert
  «SN 521 500: 1/25 WE, 100 m» als Faktum + alte Normbezeichnung — auf «SIA 500:2009 Ziff. 9.7;
  Kennwert Cross-KB-geflaggt Run 11» nachgezogen (Hauptartikel war bereits geflaggt, INDEX hinkte nach).
- SIA-500-Kennwert-Flag selbst bleibt offen (Herkunft «25 Wohnungen/100 m» weiter zu belegen, nicht raten).
  Bericht: `wissen/koordination/outputs/2026-07-22_wissens-chef-run12.md`.

## 2026-07-22 — Umlaut-Bug-Root-Cause CONFIRMED (empirisch), Nachtschicht Mac Mini ~19:00
Dedizierte Verifikation der am ~08:30-Lauf offen gelassenen Hypothese: die "Minimum Viable
Model"-Subagenten-Delegation (seit 19.07.) gibt die Umlaut-Regel nicht an Haiku/Sonnet-
Subagenten weiter. Konfiguration aller fünf Trainings-Tasks geprüft (identischer Anhang,
keine Umlaut-Regel drin) UND echte `outputs/*.md` seit 19.07. in allen fünf KBs
(baurecht/energie/planungsgrundlagen/normen/architekten-synobsis) auf ASCII-Ersatzformen
durchsucht — alle fünf betroffen, auch `normen-training-mini` (zuvor fälschlich als
Gegenprobe geführt). Fix vorgeschlagen (ein Satz je Scheduled-Task-Prompt), aber NICHT
autonom ausgeführt (Config-/Infrastruktur-Änderung, Whitelist-verboten) — für hub-chef-
Briefing/Raphael vorgemerkt. Report: `outputs/2026-07-22_umlaut-bug-verifikation-nachtschicht.md`,
QUESTIONS.md-Eintrag 2026-07-22 aktualisiert.

## 2026-07-22 — Locale-Fix-Frage aus dem Health-Check geklärt (Mechanismus), Nachtschicht Mac Mini ~08:30
Die im Health-Check offen gelassene Frage (verifizieren, ob `baurecht-buch-training` denselben
`LANG=de_CH.UTF-8`-Fix wie `scripts/dispatch-run.sh` erhält) ist beantwortet: nein, kann er
strukturell nicht — `baurecht-buch-training` läuft wie `energie-training`/
`planungsgrundlagen-training`/`normen-training-mini`/`synobsis-batch-nacht` als natives
Claude-Code-App-Scheduled-Task (lokale Registry `~/.claude/scheduled-tasks/`, nicht über
`dispatch-run.sh`). Der 21.07.-Fix bedient nur den Handy/Cowork-Dispatch-Kanal und die
crontab-Zusatzläufe, nicht den nativen App-Scheduler. Neue, plausiblere (noch nicht
abschliessend verifizierte) Root-Cause-Hypothese: die seit 19.07. eingeführte
Haiku/Sonnet-Subagenten-Delegation ("Minimum Viable Model") verliert den CLAUDE.md-Kontext
(inkl. `umlaute-konvention.md`), wenn der delegierende Prompt die Regel nicht explizit
mitgibt. Details + offene Gegenprobe (normen-training-mini) in `wiki/QUESTIONS.md`
(Eintrag 2026-07-22). Keine Korrektur an den Trainings-Prompts vorgenommen (Hypothese nicht
bewiesen, MacBook-Pro-Registry von hier aus nicht einsehbar) — dedizierter Verifikationslauf
empfohlen.

## 2026-07-22 — Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht)
Erster Check seit 2026-07-01. A0 · B0 · C1 (bekannt, weiterhin offen: SIA-500-Kennwert
Behindertenparkplaetze) · D0 · E0 · **F1 gross** (neu: flaechendeckende ae/oe/ue-statt-
Umlaut-Verstoesse quer durch praktisch alle 24 Wiki-Artikel, vermutlich derselbe
Locale-Bug wie am 2026-07-21 in energie/planungsgrundlagen/architekten-synobsis gefunden
und in `scripts/dispatch-run.sh` gefixt — fuer den Baurecht-Trainingsjob nicht
verifiziert) · G4 (vier `emerging`-Artikel wirken inhaltlich reif fuer Promotion:
baurechtlicher-vorentscheid-und-voranfrage, enteignung-und-entschaedigung,
nebenbestimmungen-und-reverse, grundlagen-planungs-baurecht). Backlinks/Orphans/RAW-
Coverage sauber. Report: `outputs/2026-07-22_health-check.md`. Nur Phase 1 (unbeaufsichtigt,
keine Korrekturen ausgefuehrt).

## 2026-07-21 — Wissens-Chef Run 11 (Cross-KB): Norm-Fundstellen an normen-Destillate angebunden + SIA-500-Kennwert geflaggt
- Cross-KB-Lauf normen ↔ baurecht (Run 11). Der frische WsG/WsV/BVV-Stoff aus Buch-Run 50 brachte keine
  neuen SIA/VKF/VSS-Fundstellen; geprüft wurden die stehenden Norm-Nennungen.
- **Behinderten-Parkplatz (fahrzeugabstellplaetze-und-parkierung.md):** Bezeichnung «SN 521 500»
  präzisiert auf «SIA 500:2009 «Hindernisfreie Bauten» (vormals SN 521 500:1988), Ziff. 9.7» +
  Norm-Destillat-Link `wissen/normen/destillate/sia-500-2009`. Adversariale Verifikation ergab einen
  **Kennwert-Mismatch** (Wiki «1 je 25 Wohnungen / 100 m» vs. SIA 500:2009 «1 je 25 Parkplätze, keine
  100 m») — Wert NICHT geändert (Herkunft offen), als QUESTIONS-Punkt 2026-07-21 geflaggt.
- **grundlagen-planungs-baurecht.md:** SIA 181 mit Norm-Destillat-Link + Fassungsvorbehalt (2006 vs.
  ausstehendes 2020) versehen; «VSS SN 640 291a» auf aktuelle Bezeichnung «VSS 40 291 (2021)» nachgezogen.
- **bauausfuehrung-und-baukontrolle.md:** VKF-BRL 12-15 (Brandverhütung/organisatorischer Brandschutz)
  an das normen-Destillat verlinkt.
- QUESTIONS-Titelzeile Run 10 von «§§ 2a-2c» auf «§§ 2a-2e BVV» korrigiert (Body war bereits korrekt).

## 2026-07-20 — Buch-Run 50 (Festigungsmodus): 2 beschaffbare Lücken geschlossen — WsG/WsV-Nachzug abgeschlossen + Meldeverfahren §§ 2a-2e BVV integriert
- [distill] `wiki/baubewilligungsverfahren.md`: **Meldeverfahren als vierter Verfahrenstyp**
  integriert (§§ 2a-2e BVV, LS 700.6) — Tatbestände § 2a (Solar/WP/Fernwärme/E-Ladestation, WP aussen
  bis 2 m³, Erdsonde ≥ 2,5 m), **Rückausnahme Abs. 2** (Kernzonen/Denkmalschutz bewilligungspflichtig),
  Tragweite § 2b (keine Aussteckung), Unterlagen § 2c (WP: Lärmschutznachweis), Einreichung § 2d
  (30 T vor Baubeginn, Behandlungsfrist 30 T, Anordnungs-/Wahlvorbehalt), **Baufreigabe § 2e
  Genehmigungsfiktion**. Belegt gegen `raw/260607_amtlich_zh_bvv.md` (Fassungsstand 1.7.2026 NT 133).
- [korrigiert] Flag-Notiz «§§ 2a-2c BVV» → **§§ 2a-2e BVV** (Typ spannt bis Baufreigabe § 2e);
  Querbezug-Block (Run 10) von «offen/Bring-Schuld» auf «erledigt» umgeschrieben; Frontmatter sources
  (§§ 2a-2e/§ 1 BVV) + verifiziert-Eintrag 2026-07-20; `wiki/INDEX.md`-Zeile auf «vier Verfahrenstypen».
- [korrigiert] **WsG/WsV-Nachzug abgeschlossen** (Restposten Run 48): KB-weiter HWSchV-Sweep;
  `training/drills.md` Z. 83 «§ 15d HWSchV / 11 m eingedolt» (dreifach überholt: Renumbering § 15d→§ 15k,
  Aufhebung 01.06.2026, § 24 WsV ohne Mindestmass) auf aktuelle Rechtslage gesetzt; `training/curriculum.md`
  Z. 74 «§ 15m HWSchV» um «(aufgehoben 01.06.2026 → § 20 WsG)» ergänzt. § 183 lit. b WsV als Nachfolger
  von § 15h in baulinien-Tabelle als korrekt bestätigt.
- [questions] `wiki/QUESTIONS.md`: Meldeverfahren-Kopfeintrag (Run 10) + WsG/WsV-Nachzug-Restposten
  (Run 48) auf **ERLEDIGT** gesetzt.
- [drill] 3 neue Karten (`training/drills.md`, Run-50-Block): Meldeverfahren-Fallfrage (Modell A),
  Gegenprobe § 15d HWSchV (Modell D), Abgrenzung Meldeverfahren↔Anzeigeverfahren (Modell C).
- **0 Halluzinationen**, alles am raw belegt. «Rückstand abgebaut» NICHT ausgerufen: Anhang 6 LSV +
  periodischer zhlex-Fassungsstand-Check brauchen externen Abruf (online-fähiger Lauf).
  Bericht: `outputs/2026-07-20_buch-run50.md`.

## 2026-07-20 — Wissens-Chef Run 10 (Cross-KB): Meldeverfahren § 2a BVV verlinkt + ABV/BVV-Namensgleichheit markiert
- [link] `wiki/baubewilligungsverfahren.md`: Querbezug-Block «KB energie» zum **Meldeverfahren
  §§ 2a-2c BVV** (4. ZH-Verfahrenstyp, WP/Solar) → energie-Destillat; **Namensgleichheit § 2a BVV
  (LS 700.6) ≠ § 2a ABV (LS 700.2, Klein-/Anbauten)** ausdrücklich abgegrenzt.
- [questions] `wiki/QUESTIONS.md`: offener Punkt aufgenommen — Meldeverfahren als eigenen Abschnitt
  destillieren (raw liegt vor: `raw/260607_amtlich_zh_bvv.md`), arbeitsteilig zu energie, um eine
  BVV-Doppelspur analog E1 zu vermeiden. Cross-KB bestätigte 0 Widerspruch, fassungsgleich (BVV NT 133,
  EnerG NT 129). Bericht: `koordination/outputs/2026-07-20_wissens-chef-run10.md`.

## 2026-07-20 — Buch-Run 49 (Dauerschicht): Transfer-Abschluss festgestellt, 16.9.3 angereichert, Programm-Hygiene
- [verifiziert] Restschuld-Liste im PROGRAMM war komplett veraltet (Kap. 6/14/15/16/17
  laengst erledigt) — jede Position am Inventar bzw. direkt am Shot geprueft; ersetzt durch
  Transfer-Abschluss-Feststellung + Klassifikation der offenen Shots: 1-40 + 321-344
  Front-Matter (Shot 321 = Band-2-Titel, am Bild verifiziert), 664-681 Kap. 18 bewusst
  ausgelassen (Skill brandschutz) (training/PROGRAMM.md)
- [angereichert] 16.9.3 Nachbarrechtliche Bedeutung (S. 1230, Shot 619 direkt nachgelesen):
  Kostentragung Stuetzmauern (Verursacher; Unterlieger bergseitig / Oberlieger talseitig),
  Art. 685 ZGB Abs. 1+2, BEZ 1991 Nr. 46, § 178 EG ZGB; offene 16.9-Endnotiz im
  Teil-3-Destillat auf GEKLAERT — Kap. 16 lueckenlos
  (band-2/kap16-10_gebaeudedimensionen-harmonisierung.md, band-2/16-gebaeudedimensionen-teil3-umgebung.md)
- [inventar] Shot 212 = Kapiteltrenner Kap. 7 (S. 422/423, kein Inhalt) → [x] mit Vermerk;
  «Restschuld Kap. 6 S. 405-422» damit gegenstandslos (buecher/seiten-inventar.md)
- [report] outputs/2026-07-20_buch-run49.md (inkl. Drill Modell A, bestanden)

## 2026-07-19 — Wissens-Chef Run 9 (Cross-KB): veraltete EnerG-Nummerierung im Erschliessungsartikel nachgefuehrt
- **VERALTETES (CONFIRMED):** `wiki/baureife-und-erschliessung.md` zitierte im Praesens
  «§§ 8a/9–13 EnerG». Die Spanne ist ein korrekt uebernommener **Buchstand 2019**
  (Fritzsche/Boesch/Wipf/Kunz, Bd 2 Kap. 12), aber **§ 13 EnerG ist per 1.9.2022 aufgehoben** und
  durch die §§ 13a-13d ersetzt (andere Materie). → auf den Stand Nachtrag 129 nachgefuehrt
  (§ 10a Deckung Waermebedarf Neubauten · § 10b elektrische Widerstandsheizungen · § 10c
  Eigenstromerzeugung · § 11 Waermeerzeuger inkl. Fossilfrei-Gebot Neubau · §§ 13a-13d
  Grossverbraucher/GEAK/Betriebsoptimierung), Belegquelle `raw/260712_amtlich_zh_energ.md`.
- **§ 8a EnerG bewusst NICHT gestrichen:** die vorliegende raw-Datei deckt nur §§ 9-14 ab, der
  Bestand von § 8a ist damit nicht verifizierbar. Als offener Punkt markiert (E2 im Run-9-Bericht),
  schliessbar mit einem gezielten raw-Nachtrag im naechsten Buch-Run.
- **Die baurecht-KB hat in diesem Lauf zweimal als Wahrheitsquelle gewirkt:** der amtliche
  EnerG-Volltext hat eine falsche Fossilfrei-Zuschreibung (§ 10a statt § 11 Abs. 1) und eine
  nicht existierende 5-Jahres-Pflicht in der KB `energie` gekippt; `raw/260607_amtlich_zh_bbv1.md`
  (§ 48c BBV I) hat dort eine offene Bring-Schuld geschlossen.
- Bericht: `wissen/koordination/outputs/2026-07-19_wissens-chef-run9.md`.

## 2026-07-18 — Wissens-Chef Run 8 (Cross-KB): Rueckverweis auf planungsgrundlagen + LS-Nummern-Hinweis
- **Befund:** `wiki/abstaende-und-hoehen.md` fuehrt den ganzen Gewaesserraum-Stoff (Z. 137 ff.),
  verlinkte aber nur den Baulinien-Beschaffungsartikel — die Verlinkung zur Schwester-KB war
  **einseitig** (planungsgrundlagen verweist hierher als fuehrend, zurueck kam nichts).
- **Aktion:** Querbezug-Block gesetzt (Festsetzungsverfahren/AWEL-Bemessung, Hochwasser-Gefahrenbereiche,
  OEREB-Thema 190) inkl. Warnung zur **Nummern-Wiederverwendung LS 724.11**; derselbe Hinweis als
  Halbsatz in `wiki/baureife-und-erschliessung.md` (Z. 219), wo die WWG-Aufhebung zwar geflaggt war,
  die Wiederverwendung der Nummer aber nicht erwaehnt wurde.
- **Ein gemeldeter Befund WIDERLEGT:** die vermutete «LS-724.11-Kollision» ist **kein Fehler** —
  beide Zuweisungen sind je fuer ihren Zeitraum amtlich belegt (WWG bis 31.05.2026: BZO-Langnau-
  Abkuerzungsverzeichnis; WsV ab 01.06.2026: `raw/260717_amtlich_zh_hwschv.md` Z. 166, Erlass vom
  2. Juli 2025). Es liegt eine echte Nummern-Wiederverwendung vor, kein Widerspruch — deshalb nur
  ein klarstellender Vermerk, keine Korrektur.
- Bericht: `wissen/koordination/outputs/2026-07-18_wissens-chef-run8.md`.

## 2026-07-17 — Buch-Run 48 (Modell D, Beschaffungslauf): die 3 «beschaffbaren» Luecken aus Run 47 geschlossen — **HWSchV ZH seit 01.06.2026 aufgehoben**

- **[neu] 4 amtliche Volltexte beschafft:** `raw/260717_amtlich_ch_lsv-anhang34.md` (LSV Art. 40-42 +
  Anhang 3 Strassenlaerm + Anhang 4 Eisenbahnlaerm, Fedlex Stand 1.11.2023), `raw/260717_amtlich_ch_gschv-41c.md`
  (Art. 41c + UebgBest. GSchV-Aenderung 4.5.2011), `raw/260717_amtlich_zh_hwschv.md` (HWSchV §§ 15/15a-15n +
  UebgBest. 13.12.2011, Fassung Nachtrag 95, **plus Nachfolgerecht WsG § 20/21 + WsV §§ 11/22-25/213** inkl.
  Konkordanztabelle alt/neu), `raw/260717_amtlich_ch_usg-32e.md` (USG Art. 32e vollstaendig + VASA-Auszug).
- **[korrigiert] SCHWERSTER FUND: die HWSchV ZH ist seit dem 01.06.2026 AUFGEHOBEN** (OS 81, 144) →
  **WsG** (LS 724.1) + **WsV** (LS 724.11). Die KB fuehrte «§ 15x HWSchV» als geltendes Recht — an
  6 Fundorten mit Aufhebungsvermerk + Nachfolgenorm nachgezogen. Materiell: **§ 24 WsV kennt kein
  11-m-Mindestmass mehr** bei eingedolten Fliessgewaessern (nur Verringerungsregel) — die 11 m folgen
  heute allein aus Art. 41a Abs. 2 lit. a GSchV; ZH ist **nicht strenger** als der Bund, sondern nutzt
  den Verzichtsspielraum.
- **[korrigiert] § 15m HWSchV stand auf dem Kopf.** «§ 15m geht § 357 PBG vor» + «§ 307 PBG im
  Gewaesserraum nicht anwendbar» → amtlich das **Gegenteil**: § 15m Abs. 1 erklaerte § 357 PBG fuer
  **anwendbar** (Verweis), Abs. 2 liess das Brandstattrecht **auch im Gewaesserraum** zu
  (beguenstigend). Heute § 20 WsG. **Interne Divergenz aufgeloest:**
  `buecher/band-2/20-ausnahmen-teil2-…` hatte es **richtig**, `15-lage-von-gebaeuden` +
  `wiki/abstaende-und-hoehen` widersprachen ihm → dort korrigiert.
- **[korrigiert] HWSchV-Renumbering (Nachtrag 95, 2017) uebersehen:** Buch-/KB-Nummern stammten aus der
  2013er-Fassung. § 15d → **§ 15k** (Bemessung), § 15b → **§ 15h** (Festlegung), § 15g → **§ 15m**
  (Besitzstand), Grundeigentuemerverbindlichkeit **§ 15 Abs. 1**.
- **[korrigiert] Uferstreifen-Fundstellen falsch verklebt:** «§ 15 HWSchV» war nie eine Uferstreifen-Norm.
  Richtig: 8 m + Gerinnesohle je Seite / 20 m bei Sohle > 12 m = **UebgBest. GSchV 4.5.2011 Abs. 2
  lit. a/b** (Bundesrecht); 8 m um stehende Gewaesser bis 0,5 ha = **UebgBest. HWSchV-Aenderung
  13.12.2011 Abs. 1**, heute § 213 Abs. 1 WsV. Messweise «beidseitiger Streifen entlang des
  Gewaessers», nicht «ab Uferlinie». (Masse selbst CONFIRMED.)
- **[korrigiert] LSV Art. 40 Abs. 2 — Additionsprinzip ohne seine Ausnahme:** «Dies gilt **nicht** fuer
  die Planungswerte bei neuen ortsfesten Anlagen (Art. 7 Abs. 1)» fehlte. **[ergaenzt]** Art. 40 Abs. 3
  (fehlen Belastungsgrenzwerte → **Art. 15 USG**, nicht Art. 14); Anhaenge-Abgrenzung (Bahnlaerm auf
  Strassen → Anhang 3; Standseilbahnen/Eisenbahnwerkstaetten → Anhang 6); Art. 42 LSV (+5 dB(A) in
  Betriebsraeumen ES I-III). Anhang 3/4 Grenzwerttabellen belegt; PW < IGW < AW CONFIRMED.
- **[korrigiert] USG Art. 32e — VASA-Stichtag materiell falsch:** «nur bis Ende Januar 1996» vermengte
  **Berechtigung** (seit **1.2.2001** keine Abfaelle mehr, Abs. 3 Bst. b) mit der **Satz-Staffelung**
  (40 % / **30 %** bis laengstens 31.1.2001, Abs. 4 Bst. b). Standorte mit Ablagerung bis Ende Januar
  2001 sind **nicht ausgeschlossen**, sondern zu 30 % abgegolten. **[praezisiert]** Verhandlungsverfahren
  = kantonale ZH-Praxis; Abgeltungshoehe **nicht verhandelbar**; ueber CHF 250'000 nur mit
  rechtskraeftiger Verfuegung (Art. 11 Abs. 2 VASA). Sequenz geprueft: **kein Art. 32ebis**.
- **[nachgefuehrt]** `wiki/QUESTIONS.md` (3 Run-47-Flags geschlossen, neuer Kopfeintrag),
  `training/drills.md` (3 Modell-D + 1 Modell-A-Karte), Frontmatter in 4 Dateien, `buecher/INDEX.md`,
  `training/curriculum.md`, `training/PROGRAMM.md` (Tracker + neue Leitplanke Fassungsstand).
- **Bilanz:** 3 Luecken geschlossen, **5 echte Korrekturen**, **0 Halluzinationen**, ~15 Fundorte
  synchronisiert. **Neu offen:** Anhang 6 LSV; KB-weiter WsG/WsV-Nachzug; VASA-Abgabesatz nur Stand
  1.1.2016 beschaffbar. Report `outputs/2026-07-17_buch-run48.md`.

## 2026-07-17 — Buch-Run 47 (Modell D, 4 Komplexe adversarial parallel): Run-46-Meldung «Rueckstand abgebaut» war verfrueht

- **[korrigiert] Gewaesserraum GSchV — Kennzahlen-Tabelle widersprach dem eigenen Fliesstext.** Die
  Run-32-Aufloesung war nur im Fliesstext nachgefuehrt worden. `buecher/band-2/15-lage-von-gebaeuden.md`:
  Z. 246/247 auf **Art. 41a Abs. 2 lit. a/b GSchV** gesetzt (Normalgebiete, Schwelle **2 m** — nicht 1 m;
  Spanne **2-15 m** — nicht 1-15 m), Schutzgebiets-Formeln (Abs. 1 lit. a-c) neu ergaenzt; Z. 250
  «20 m ab Uferlinie» von **Art. 41b Abs. 2** entzitiert (der regelt nur Erhoehungsgruende → richtig
  Uebergangsbest. GSchV 4.5.2011 / § 15 HWSchV, operativ Art. 41b Abs. 1 = 15 m); Z. 155 Uferlinien-
  Messweise entzitiert (Art. 41a misst ab **Gerinnesohle** und kennt den Begriff «Uferlinie» nicht).
- **[korrigiert] Art. 41c GSchV fehlzitiert** in `buecher/band-1/02-nutzungsplanung-zonenarten-teil2.md`:
  die Anpassung der **Breite** im dicht ueberbauten Gebiet steht in **Art. 41a Abs. 4 lit. a** (Fliess-)
  bzw. **Art. 41b Abs. 3** (stehende Gewaesser); Art. 41c regelt die zulaessigen **Anlagen**.
- **[korrigiert/ergaenzt] LSV Art. 31/31a/32/35/39 — 6 Praezisierungen + 4 Luecken.** Gewichtigste Luecke:
  **Art. 32 Abs. 3 LSV** (Schallschutzpflicht auch bei **Umbau/Ersatz/Neueinbau**, Erleichterung nur auf
  Gesuch) fehlte in Wiki und beiden Destillaten vollstaendig — die fuer JANS haeufigere Fallgruppe als der
  Neubau. Ferner: Art. 31 Abs. 1 («wesentlich» qualifiziert nur die Aenderungen), Art. 31 Abs. 2
  (kantonale Zustimmung = kumulatives Bundes-Tatbestandsmerkmal), Art. 31 Abs. 3 (Kosten Grundeigentuemer),
  Art. 31a Abs. 1 (**Planungs- UND** IGW gelten als eingehalten — Grundlage der Einzonung Art. 24 USG),
  Art. 31a Abs. 1 lit. c Ziff. 1+2 (Fenster auch automatisch **oeffenbar**, plus angemessenes Raumklima),
  Art. 31a Abs. 2 (grundeigentuemerverbindliche Festhaltung), Art. 32 Abs. 1 (Mindest- vs. erhoehte
  Anforderung SIA 181, Bauherr als Adressat, SIA 181 nur «insbesondere»), Art. 32 Abs. 2 (SIA-181-Bezug ist
  Vollzugspraxis, nicht Wortlaut), Art. 35 (Stichprobe = Regelfall, Pruefpflicht nur im Zweifelsfall),
  Art. 39 Abs. 2/3. Betroffen: `wiki/laermschutz-und-nichtionisierende-strahlung.md` (neue Sektion
  «Schallschutz im Bestand und Kontrolle»), `buecher/band-2/19-baulicher-umweltschutz.md`,
  `buecher/band-2/19-baulicher-umweltschutz-teil2-laerm-nisv.md`.
- **[verifiziert] Quartierplan §§ 160a/81/129 PBG vollstaendig CONFIRMED** — kein Fehler. Der Vorbefund
  «§ 160a existiert nicht» war ein **Fehlalarm**: der amtliche Text schreibt Buchstaben-Paragraphen mit
  **Leerschlag** («§ 160 a.26»), weshalb `grep "160a"` null Treffer liefert. Drill-Karte auf den Wortlaut
  von § 160a **Abs. 3** geschaerft («Zustimmung aller Grundeigentuemer des Beizugsgebiets»).
- **[korrigiert] USG-Altlasten: Geisterbezeichnung «Art. 32bis USG»** (existiert nicht — Sequenz
  32 → 32a → 32abis → 32b → 32bbis) an 4 Register-Fundorten bereinigt (`wiki/INDEX.md`, `buecher/INDEX.md`,
  `wiki/QUESTIONS.md`, `training/curriculum.md`), alte Leerzeichen-Notation an 5 weiteren Fundorten
  (inkl. 2 Drill-Karten, dort zugleich die **Verwirkung per 1.11.2021** ergaenzt), Abschnittsgrenze
  «Art. 32-32b USG» → «Art. 32-32bbis USG». Materiell alles CONFIRMED.
- **[neu] Zwei Pruefregeln in `training/PROGRAMM.md` verankert:** (1) **Grep-Toleranz** bei Buchstaben-
  Paragraphen (`grep -E "§ ?NNN ?[a-z]"`) — ein grep-gestuetzter Vorbefund «Paragraph existiert nicht» ist
  ohne sie nicht belastbar; (2) **Register-Sweep-Pflicht** nach jeder Korrektur ueber alle sechs Dateiarten
  — derselbe Fakt steht an 5-6 Fundorten, Fliesstext-only-Korrekturen lassen Tabellen/Register divergieren.
- **[nachgefuehrt]** `wiki/QUESTIONS.md` (4 Flags geschlossen, neuer Kopfeintrag mit der Relativierung der
  Run-46-Meldung), `training/drills.md` (3 Modell-D-Karten + 1 Modell-A-Karte, 1 Karte geschaerft),
  Frontmatter `verifiziert`/`last_updated` in 3 Artikeln.
- **Bilanz:** 4 Komplexe, **0 Halluzinationen**, ~20 Fundorte synchronisiert. **Neu offen (beschaffbar):**
  Art. 40 Abs. 2 + Anhang 3/4 LSV, Art. 41c GSchV + Uebergangsbest. 4.5.2011 + HWSchV ZH, Art. 32e Abs. 3/4 USG.

## 2026-07-16 — Wissens-Chef Run 6 (Cross-KB): Aussenwaermedaemmung/35-cm-Kappung in `nutzungsziffern` ergaenzt
- **`wiki/nutzungsziffern.md`: echte Luecke geschlossen.** Der fuehrende Artikel fuer AZ/UEZ/BMZ/GrFZ
  fuehrte die **35-cm-Kappung der Aussenwaermedaemmung ueberhaupt nicht** (kein Treffer fuer
  Daemmung/§ 253a/35 cm), obwohl das eigene Buch-Destillat `buecher/band-2/14-nutzungsdichte-ausnuetzung`
  (Z. 157-163) den Stoff vollstaendig kennt — er war nie ins Wiki hochpromotet worden. Neue Sektion
  «Aussenwaermedaemmung und Nutzungsziffern (35-cm-Kappung)» mit den amtlichen Fundstellen aus
  `raw/260607_amtlich_zh_pbg.md`: **§ 256 Abs. 2** (UEZ), **§ 257 Abs. 3** (Gruenflaechenziffer),
  **§ 258 Abs. 4** (BMZ — dort auch das Dach), **§ 12 Abs. 3 ABV**; in Kraft seit **1.4.2013**
  (FN 46: G vom 26.03.2012).
- Zwei Praezisierungen, die bisher nirgends im Wiki standen: (a) **fuer die AZ (§ 255 PBG) gilt KEINE
  solche Kappung**; (b) bei **nachtraeglicher** Daemmung am Bestand ist sie fuer BMZ/UEZ/GrFZ **ganz
  unbeachtlich** (**§ 253a Abs. 2 PBG**, ohne 35-cm-Deckel) — im Unterschied zu Abstaenden/Laengen/Hoehen
  (§ 253a Abs. 1 PBG *mit* Deckel, gefuehrt in `abstaende-und-hoehen`).
- **Querbezug KB energie** gesetzt: MuKEn 2025 Modul 11 fuehrt dieselbe 35-cm-Kappung als *Muster* —
  fuer ZH keine Neuerung (dort seit 2013 geltend, § 253a Abs. 2 PBG sogar weitergehend). `sources`
  um § 253a PBG, § 258 PBG, § 12 ABV ergaenzt. Alle Fundstellen am amtlichen Volltext verifiziert
  (inkl. Gegenprobe: die 35-cm-Kappung existiert in **beiden** Regimes — Hauptteil und Anhang
  «Stand 28. Februar 2017» —, es gibt kein Schlupfloch).
- **Offen (NICHT autonom, fuer den baurecht-Loop):** (a) **§ 33a ABV wird widerspruechlich gefuehrt** —
  `abstaende-und-hoehen.md` Z. 109 und `baulinien-und-abstandslinien.md` Z. 89 zitieren ihn als
  **geltende** Grundlage der 35-cm-Regel, waehrend `buecher/band-2/20-ausnahmen-teil2-...` (Z. 21) und
  `wiki/ausnahmebewilligung-und-bestandesschutz.md` ihn als **15 cm / im Zug der Harmonisierungsvorlage
  aufgehoben** fuehren (§ 253a PBG hat die Funktion uebernommen). (b) **Moeglicher veralteter
  Numerierungsstand in `nutzungsziffern.md`:** BMZ ist dort als «§ 254 PBG (geltend)» gefuehrt, im
  raw-PBG steht die BMZ aber in **beiden** Regimes unter **§ 258**; analog «Freiflaechenziffer § 257
  (geltend)», wo der Hauptteil bereits «Gruenflaechenziffer» fuehrt (FN 70, G vom 08.04.2024). Beides
  beruehrt die Uebergangsmechanik (BZO-Anpassung je Gemeinde) und wurde bewusst **nicht** autonom
  geaendert.
- Bericht: `wissen/koordination/outputs/2026-07-16_wissens-chef-run6.md`.

## 2026-07-15 — Wissens-Chef Run 5 (Cross-KB): WWG→WsG-Aktualitaets-Flag
- [flag] `wiki/baureife-und-erschliessung.md` (§ 236 PBG Versorgung, § 27 WWG Wasserversorgung): Aktualitaets-Flag gesetzt — das ZH **Wasserwirtschaftsgesetz WWG (LS 724.11, 1991)** wurde per **1.6.2026 durch das neue Wassergesetz WsG vom 12.12.2022 abgeloest** (§ 126 WsG, explizite Aufhebung; primaerquellen-belegt in `wissen/energie` → `grundwasserwaermenutzung-bewilligung-zh-sz`). KEINE §-Umbenennung — die aus dem Standardwerk (6. Aufl. 2019) uebernommenen WWG-§§ bleiben quellentreu, das §-Mapping WWG→WsG ist offen (Bring-Schuld WsG-/WsV-Volltext). Buecher-Destillate (band-2/12, /15, /20) unangetastet (quellentreu zum 2019-Werk). Bericht: koordination/outputs/2026-07-15_wissens-chef-run5.md.

## 2026-07-15 — Buch-Run 46 (Phase 3, Modell-D — die 2 letzten offenen Flags als Zitierfehler entlarvt; VERIFIKATIONS-RUECKSTAND ABGEBAUT)
- [beschafft] `raw/260715_amtlich_zh_vrg_beschwerde.md`: amtlicher VRG-Volltext §§ 19/19a/20/20a/21/21a/21b/41/42/43/44/49/50/52/53 (zhlex-PDF, Stand 1.7.26-133). **Befund: kein § 50a VRG** (Sequenz § 49→§ 50→§ 51 aufgehoben→§ 52).
- [beschafft] `raw/260715_amtlich_ch_lsv-es.md`: amtlicher LSV-Volltext Art. 43/44 (Empfindlichkeitsstufen ES I-IV, Fedlex, Stand 1.11.2023).
- [korrigiert] Behördenbeschwerde **«§ 209f PBG» → § 338c PBG** (Randtitel «III. Behördenbeschwerde», raw/260607_amtlich_zh_pbg.md Z. 3581-3583; Legitimation § 338a, Verbandsbeschwerde § 338b). «§ 209 PBG» = vorsorgliche Schutzmassnahmen mit Inventar — sachfremd, «209f» spurious. Fundorte: `wiki/rechtsschutz-und-rechtsmittelverfahren.md`, `buecher/band-1/09-rechtsschutz.md` (Frontmatter + Fliesstext + offene-Punkte), `buecher/INDEX.md`, `wiki/INDEX.md`.
- [korrigiert] Normenkontrolle: **«§ 50a VRG» existiert nicht** → prinzipale/abstrakte Erlassanfechtung § 19 Abs. 1 lit. d VRG (Rügegrund § 20 Abs. 2, Legitimation § 21b, Weiterzug § 41/§ 50 VRG); akzessorische = ungeschriebener Grundsatz. Alle 6 Fundorte korrigiert (Wiki, Destillat 09 ×4 Stellen, beide INDEX, `training/curriculum.md`); missplatzierte «§ 50a VRG» bei Gemeindeautonomie → Art. 50 BV. § 41/§ 50 Abs. 2 VRG CONFIRMED.
- [ergänzt] `buecher/band-2/19-baulicher-umweltschutz.md` + `wiki/laermschutz-und-nichtionisierende-strahlung.md`: Art. 43/44 LSV ES-Zonenzuordnung präzise belegt + Wiki-`verifiziert`-Feld nachgezogen (CONFIRMED, keine Korrektur).
- [status] `wiki/rechtsschutz-und-rechtsmittelverfahren.md` + `buecher/band-1/09-rechtsschutz.md` **emerging→established** (VRG/PBG-Rechtsschutz statute-level vollständig verifiziert Run 32/44/46); INDEX/curriculum nachgezogen.
- [ergänzt] `training/drills.md`: 4 neue Karten (3 Modell-D auf § 338c PBG / kein § 50a VRG / LSV-ES + 1 Modell-A Normenkontrolle-Hebel).
- [status] **VERIFIKATIONS-RUECKSTAND ABGEBAUT** — alle am Gesetzeswortlaut verifizierbaren Flags abgearbeitet; verbleibend nur nicht-belegbare Punkte (VSS-Normen kostenpflichtig, § 357 Abs. 5 PBG Fallrecht, reine Rechtsprechung). **Rücktaktung auf wöchentlich im Nachtfenster an Raphael vorgeschlagen** (Report + QUESTIONS-Block).

## 2026-07-15 — Buch-Run 45 (Phase 3, Modell-D — 3 Komplexe adversarial parallel via Agent-Tool)
- [korrigiert] `wiki/ausnahmebewilligung-und-bestandesschutz.md`: § 220 Abs. 2 PBG **Gemeinwesen-Ausnahme** vollstaendig ergaenzt (bisher verkuerzt — «es sei denn, es wuerde die Erfuellung einer dem Gemeinwesen gesetzlich obliegenden Aufgabe verunmoeglicht oder uebermaessig erschwert»); § 220 Abs. 3 «Vorschriften, die auch ihn schuetzen» praezisiert; §§ 218/219 PBG als Trias-Kontext + Frontmatter `paragraphen`/`verifiziert` ergaenzt. Volltextverifiziert raw/260607_amtlich_zh_pbg.md Z. 2179-2194. Schliesst die Run-34-Luecke «§ 220 Abs. 2 im Wiki verkuerzt».
- [korrigiert] `buecher/band-1/04-natur-und-heimatschutz.md`: Naturschutz-Lebensraeume (Trockenstandorte/Feuchtgebiete/Magerwiesen/Hecken) falsch «§§ 19-22 KNHV Landschaftsschutz» → **§ 13 Abs. 1 KNHV Naturschutz** korrigiert. Amtliche Abschnitts-Randtitel Nachtrag 130 bestaetigt (II. Naturschutz §§ 13-18, III. Landschaftsschutz §§ 19-22, IV. Denkmalschutz §§ 23-28, V. Erholungsflaechen §§ 29-32, VI. Inkraftsetzung § 33); § 14 KNHV (Abstandslinien Waldrand/Gewaesser + Baumbestand) + § 30 KNHV (Erholungsflaechen 45 m²/E) neu belegt. Quelle raw/260714_amtlich_zh_knhv.md.
- [korrigiert] `buecher/band-2/12-baureife-teil4-gebuehren-abfall-altlasten.md`: Kostenverteilungsverfuegung auf Verlangen eines Verursachers = **Art. 32d Abs. 4 USG** (vorher faelschlich Abs. 3 = Ausfallkosten). Adversariale Re-Verifikation Art. 32c/32d/32dbis/32bbis USG (Modell D) — Kern haelt, alle CONFIRMED. Quelle raw/260714_amtlich_ch_usg.md.
- [geschlossen] Stale-Flags in `wiki/QUESTIONS.md`: § 220 Abs. 2 verkuerzt (Run 34); USG-Nomenklatur 32bbis/32dbis; § 10 BBV II Zwischenwerte (0,002 m³ am raw bestaetigt); KNHV §§ 13-22/29-32; Gewaesserraum Abs.1/Abs.2 (war bereits Run 32 aufgeloest). Run-45-Block oben angefuegt.
- [ergaenzt] `training/drills.md`: 5 neue Karten (4 Modell-D auf die heute korrigierten Stellen + 1 Modell-A KbS-Veraeusserung/Art. 32dbis).
- [status] Verifikations-Rueckstand weitgehend abgebaut — verbleibend nur Belege ohne verfuegbaren amtlichen Volltext (§ 209f PBG, § 50a VRG, VSS-Normen kostenpflichtig) bzw. per se nicht gesetzeswortlaut-belegbare Rechtsprechung. Ruecktaktung auf woechentlich (Nachtfenster) empfohlen (Rule 260712).

## 2026-07-14 — Buch-Run 44 (Phase 3, Modell-D — 4 Komplexe parallel via Agent-Tool)
- [korrigiert] `wiki/rechtsschutz-und-rechtsmittelverfahren.md`: «Replikrecht § 26b VRG» präzisiert (§ 26b Abs. 4 VRG regelt nur Zustellung der Vernehmlassungen, Replikrecht ist Praxis aus Art. 29 Abs. 2 BV); «Zivilgericht» als Forum präzisiert (folgt erst aus § 317 PBG i.V.m. § 339b PBG). Bleibt `emerging` (§ 209f PBG/§ 50a VRG offen).
- [korrigiert] `wiki/baulinien-und-abstandslinien.md` + `buecher/band-2/15-lage-von-gebaeuden.md` + `buecher/band-2/15-lage-von-gebaeuden-teil2b.md` (Frontmatter): § 238 Abs. 3 PBG → **§ 238a PBG** (Vorgärten-/Begrünungspflicht, seit 1.12.2024) — Divergenz zum bereits korrekten [[naturschutz-und-denkmalschutz]] behoben, CONFIRMED gegen `raw/260607_amtlich_zh_pbg.md` Z. 2408-2420.
- [korrigiert] `wiki/INDEX.md`: [[baulinien-und-abstandslinien]]-Zeile von `*emerging*` auf **`*established*`** korrigiert (Frontmatter war schon länger established, INDEX war stehengeblieben) + § 238a-Hinweis ergänzt.
- [verifiziert] Quartierplan § 160a/§ 160b/§ 81/§ 129 PBG in [[baureife-und-erschliessung]] + Destillat [[03-quartierplan-landumlegung-teil2]] unabhängig gegen `raw/260607_amtlich_zh_pbg.md` gegengeprüft — **alle CONFIRMED**, keine Korrektur (Stand war bereits am selben Tag durch eine parallele Instanz volltextverifiziert, reine Kollision ohne Schaden).
- [ergänzt] `wiki/baureife-und-erschliessung.md`: Art. 19 Abs. 2 RPG präzisiert (keine feste 15-Jahres-Frist im RPG selbst, sondern Art. 5 Abs. 1 WEG für Wohnbauland); Art. 19 Abs. 1/3, Art. 22 Abs. 2 lit. b, Art. 27 RPG + Art. 4/5 WEG CONFIRMED. WEG-Abkürzung geklärt (Wohnbau- und Eigentumsförderungsgesetz SR 843, keine Verwechslung mit kantonalem WWG).
- [neu] `raw/260714_amtlich_ch_rpg-erschliessung.md` (RPG SR 700, Fedlex Stand 1.4.2026), `raw/260714_amtlich_ch_weg.md` (WEG SR 843, Fedlex Stand 1.1.2013).
- [ergänzt] `training/drills.md`: neuer Block «Buch-Run 44» — 6× Modell D aus den vier Komplexen.
- [geklärt] `wiki/QUESTIONS.md`: Run-44-Eintrag oben eingefügt.
- Methodik-Notiz: Workflow-Tool bewusst nicht verwendet (kein Nutzer-Opt-in in dieser Session); stattdessen 4 parallele Agent-Tool-Aufrufe, analog dem in Run 31/36 erfolgreich erprobten Muster — jeder Agent hat nur seine eigenen Ziel-Dateien editiert, Register (CHANGELOG/QUESTIONS/Drills/Tracker) wurden zentral im Hauptlauf konsolidiert, um Schreibkonflikte zu vermeiden.
- Bericht: `outputs/2026-07-14_buch-run44.md`.

## 2026-07-14 — Buch-Run 43 (Phase 3, Modell-D Gestaltungsplan §§ 83-89 + § 44a PBG + zwei NISV-Fundstellen-Divergenzen bereinigt)
- [verifiziert] **§§ 83-89 + § 44a PBG (Gestaltungsplan) CONFIRMED, 0 Fehler** gegen `raw/260607_amtlich_zh_pbg.md` (Z. 483-493/909-972). Wiki [[raumplanung-und-gestaltung]] bleibt `established`, erhält erstmals ein `verifiziert`-Frontmatter-Feld (trug bisher gar keins, obwohl der Artikel bereits established war).
- [korrigiert] `wiki/INDEX.md`: NISV-AGW-Fundstelle «Art. 6 Abs. 3» → **«Art. 3 Abs. 6 NISV»** (Zeile [[laermschutz-und-nichtionisierende-strahlung]]) — der Run-39-Fix hatte nur `buecher/INDEX.md` erfasst, diese zweite Index-Datei war noch veraltet.
- [korrigiert] `training/drills.md`: Modell-C-Karte vom 2026-07-11 trug dieselbe falsche NISV-Fundstelle — korrigiert auf Art. 3 Abs. 6 NISV.
- [ergänzt] `training/drills.md`: neuer Block «Buch-Run 43» — 3× Modell D, 2× Modell C, 1× Modell A zum Gestaltungsplan §§ 83-89/§ 44a PBG.
- [geklärt] `wiki/QUESTIONS.md`: Run-43-Eintrag oben eingefügt — dokumentiert die Divergenz-Bereinigung und die neue Lehre «`buecher/INDEX.md` ↔ `wiki/INDEX.md` sind zwei separate Dateien, beide müssen bei einer Korrektur mitgezogen werden».
- Bericht: `outputs/2026-07-14_buch-run43.md`.

## 2026-07-13 — Wissens-Chef Run 3 (Cross-KB): Querbezug zu KB energie gesetzt
- [link] `baubewilligungsverfahren.md`: Querbezug-Block → KB energie (`energienachweis-zh` Nachweisphysik) + planungsgrundlagen (Formulare/EVEN); Rollenteilung Verfahrensrecht=baurecht / Nachweis=energie fixiert. Kein Widerspruch gefunden (Paar energie↔baurecht: 0 Widersprueche). Bericht: `wissen/koordination/outputs/2026-07-13_wissens-chef-run3.md`.

## 2026-07-14 — Buch-Run 41 (Phase 3, Modell-D §§ 295-298 PBG + § 48 BBV I aufgehoben + KNHV-Divergenz-Cleanup)
- [hinweis] Drei Aufgaben, direkt geprüft (kein Agent-Fan-out; Fokus auf Rest-/Cleanup-Punkte, die keine Parallelinstanz bearbeitet). Schwerpunkt: Divergenzen und Rest-Flags schliessen.
- [korrigiert] `buecher/band-2/17-gebaeude-und-raeume.md` (teil1): **Destillat↔Destillat-Divergenz** geschlossen — §§ 295-298 PBG waren im Schwester-Destillat [[17-gebaeude-und-raeume-teil2-ausruestungen]] bereits seit 2026-07-13 Modell-D-verifiziert, in teil1 aber noch als «Detail offen» geführt. Grundnorm-Kurzfassung «Allgemeine Anforderungen an Gebaeude» (§ 295 Waermeversorgung/Fernwaerme-Anschlusspflicht Abs. 2, § 296 Befoerderungsanlagen, § 297 Nebenraeume, § 298 RR-Delegation > 6 Geschosse) am strukturell richtigen Ort (vor §§ 299 ff.) ergänzt + auf teil2 als kanonische vertiefte Fundstelle verlinkt; eigenständig gegen `raw/260607_amtlich_zh_pbg.md` (Z. 3033-3057) gegengeprüft, alle CONFIRMED. Offene-Punkte-Bullet + Frontmatter nachgeführt. Status bleibt `emerging` (Ausruestungen § 4 ABV + Einstellraeume §§ 37-39 BBV I ab Shot 632 noch ungelesen).
- [verifiziert] **§ 48 BBV I CONFIRMED aufgehoben** — amtlicher Volltext `raw/260607_amtlich_zh_bbv1.md` (Z. 908 + Fussnote 80, Z. 1383): «Aufgehoben durch RRB vom 14. Juli 2021 (OS 77, 369; ABl 2021-07-23)». Präziser Beleg für die schon in Wiki [[wohnhygiene-und-raumanforderungen]] getroffene Aussage; §§ 48a/48b/48c BBV I (Grossverbraucher) bleiben in Kraft. Schliesst das Rest-Flag aus Run 40 (QUESTIONS Zeile 14).
- [korrigiert] `wiki/INDEX.md`: **Status-Divergenz** — [[naturschutz-und-denkmalschutz]] + [[04-natur-und-heimatschutz]] noch als `emerging` geführt, obwohl beide seit 2026-07-13 (CHANGELOG) `established` sind → beide auf `established` korrigiert, KNHV-Verifikationsvermerk (Nachtrag 130, nicht aufgehoben) ergänzt.
- [geklärt] `wiki/QUESTIONS.md`: der stehende «WICHTIGER FASSUNGSSTAND-BEFUND»-Block (Run 38: «KNHV per 1.8.2025 aufgehoben, Nachfolgeerlass ermitteln, hohe Prio») als **✅ GEKLÄRT** umgeschrieben — KNHV ist NICHT aufgehoben, das zhlex-«Aufhebungsdatum» betraf nur das Ende der Geltungsdauer der Fassung Nachtrag 099; seit 01.08.2025 gilt Nachtrag 130 unter derselben LS 702.11 (Teilrevision RRB 15.01.2025, nur § 3/§ 3a). Neuer Run-41-Eintrag oben eingefügt.
- [drill] `training/drills.md`: neuer Block «Kap. 17 / BBV I / KNHV» — 4 Modell-D-Gegenproben (§ 295 Abs. 2 Fernwaerme-Anschluss, § 298 6-Geschoss-Schwelle, § 48 BBV I aufgehoben, KNHV nicht aufgehoben), 2 Modell-C-Karten (§ 297/§ 39 BBV I, § 296 Nachrüstpflicht), 1 Modell-A-Drill (§ 295 Abs. 2 Fundstelle→Bedingung).

## 2026-07-14 — Buch-Run 40 (Phase 3, Modell-D: BBV-I-Wortlaut vollständig abgeschlossen + zwei Wiki↔Destillat-Divergenzen geschlossen)
- [hinweis] Zwei Komplexe, direkt geprüft (kein Agent-Fan-out, Kollisionsvermeidung zu Parallel-Lauf «Run 38» KNHV/USG/VRG). Komplex 1 = letzte offene Restschuld aus Run 39 (BBV-I-Wortlaut); Komplex 2 = beim Survey der offenen Flags entdeckte zweite Wiki↔Destillat-Divergenz (§ 62 StrG), unabhängig vom EnerG-Fall aus Run 39.
- [korrigiert] `buecher/band-2/17-haustechnische-anlagen-teil3.md`: §§ 18/21/22/23/24/26/29/30a/31/32/33/37/40/42/43/44/45/45a/46/46a BBV I + § 19a BBV II volltextverifiziert gegen `raw/260607_amtlich_zh_bbv1.md`/`bbv2.md`. Die bereits am 2026-07-13 (Run 32/33) im **Wiki** [[wohnhygiene-und-raumanforderungen]] korrigierten Fehler (§ 24 BBV I ≠ AWEL-Bewilligung sondern nur Mengenzähler-Pflicht, «§ 45 Abs. 3» existiert nicht → § 45a, § 42a aufgehoben → § 43, § 30a Abs. 2 ≠ WKK-Regel, § 48 aufgehoben → § 12b EnerG) waren im **Destillat** noch nicht nachgeführt — jetzt synchronisiert. **Zusätzlich 2 bisher unentdeckte Fehler** gefunden (auch im Wiki gefehlt): § 29 Abs. 2 BBV I kennt keine «Ausnahme innenliegende Räume» (unbelegter Zusatz gestrichen); § 42 Abs. 1 BBV I kennt kein «> 1 Kochplatte»-Kriterium (nur «eigene Kücheneinrichtung» im Wortlaut). Plus Präzisierung Brauchwarmwasser-Bedingungen (§ 26 Abs. 2, nicht § 23) und Freiluftbad-Schwelle («mehr als» statt «ab» 8 m³). **6 Korrekturen, 1 Ergänzung (12-W/m²-Komfortklimadeckel § 45 Abs. 2 lit. a), 0 offene Lücken.** Status `emerging` → **`established`**.
- [korrigiert] `wiki/wohnhygiene-und-raumanforderungen.md`: die 2 neu gefundenen Fehler (§ 29 Abs. 2 innenliegende Räume, § 42 Kochplatte) als Ergänzung im «Korrigiert»-Abschnitt nachgetragen, damit Wiki und Destillat wieder synchron sind.
- [korrigiert] `buecher/band-1/03-erschliessung-landsicherung-teil1.md` (3 Fliesstext-Stellen S. 96/114/150 + Frontmatter) + `wiki/baureife-und-erschliessung.md` (1 Stelle) + `buecher/INDEX.md` (Kap.-3-Eintrag): **§ 62 StrG Mehrwertbeiträge** — die bereits am 2026-07-13 (Run 36) im Wiki [[baulinien-und-abstandslinien]] korrigierte Regel (§ 62 lit. c/d StrG: Einzelbeitrag max. ½ Wertvermehrung/Summe max. ¾ Kosten bzw. Trottoir-Anstösserbeiträge max. ½ Kosten, KEIN kommunal/kantonal-Split ¼-½/¼) war an diesen 3 weiteren Stellen noch nicht nachgezogen — jetzt synchronisiert.
- [korrigiert] `buecher/INDEX.md` Kap.-17-Eintrag: § 24 BBV I / AWEL-Bewilligung und § 45 Abs. 3 / § 45a analog zum Destillat korrigiert.
- [hinweis] Lehre für den Radar: Wiki→Destillat-Divergenzen sind bei parallelen VOLLGAS-Instanzen ein wiederkehrendes Muster (jetzt 2. unabhängiger Fund nach Run 39) — ein Lauf, der primär TRANSFER/Verifikation macht, sollte am Ende `grep -rn "<Schlüsselbegriff>"` über wiki/+buecher/ prüfen.
- [drill] +8 Karten in `training/drills.md` (6× Modell D BBV-I/§ 62 StrG, 2× Modell C Selbsttest).
- [register] `wiki/QUESTIONS.md`: neuer Abschnitt Run 40 zuoberst; 2 alte needs-verification-Flags geschlossen (§ 62 StrG, BBV-I-Wortlaut — damit vollständig abgeschlossen). Report `outputs/2026-07-14_buch-run40.md`.

## 2026-07-14 — Buch-Run 39 (Phase 3, Modell-D: EnerG §§ 9-14 Fassungsstand + Wiki↔Destillat-/INDEX-Divergenz geschlossen)
- [hinweis] Fokus: die Modell-D-Befunde aus Run 32 (EnerG-Fassungsstand) waren im **Wiki** [[wohnhygiene-und-raumanforderungen]] korrigiert, im **Buch-Destillat** [[17-haustechnische-anlagen-teil3]] und im `buecher/INDEX.md` aber NICHT nachgeführt — trotz «verifiziert»-Vermerk im Destillat-Frontmatter. Diese Wiki↔Destillat-Divergenz wurde geschlossen (Netto-Neu, keine Kollision mit den Parallel-Läufen an KNHV/USG/VRG «Run 38», deren 260714-Rohtexte unberührt blieben). Verifiziert direkt gegen `raw/260712_amtlich_zh_energ.md` (Nachtrag 129, Stand Publikation 1.7.2025), kein Agent-Fan-out (Kollisions-/Konfusionsvermeidung).
- [korrigiert] `buecher/band-2/17-haustechnische-anlagen-teil3.md` (5 Stellen: Kurzfassung, VHKA-Detailzeile 17.9.2.12, WKK-Zeile 17.9.2.6, Formel-Zeile, Transfer-Zeile) + Frontmatter (verifiziert 2026-07-14, § 10c/§ 11/§ 13(aufgehoben)/§ 14 EnerG in Paragraphenliste ergänzt): **VHKA-Schwelle «ab 5 Nutzeinheiten» → amtlich Neubau ≥ 2 (Warmwasser, § 9 Abs. 1) / Bestand ≥ 3 pro Gebäude bei Gesamterneuerung (§ 9 Abs. 3, in Kraft seit 1.9.2025); Befreiung § 9 Abs. 5 (nicht Abs. 4)**. **Fossile WKK-/Notstrom-Wärmenutzung heute § 12b EnerG (Probeläufe ≤ 50 h/Jahr), nicht § 30a Abs. 2 BBV I / § 13 EnerG**. **§ 13 EnerG (Abnahmepflicht dezentraler Strom) per 1.9.2022 aufgehoben; § 9a EnerG existiert nicht** (Numerierung § 9 → § 10). Ergänzt: § 10a (Wärmebedarf Neubauten) + § 10c (Eigenstromerzeugung/PV, Berechnungsgrundlage EBF) neu seit 1.9.2022, im Buch 2019 nicht enthalten.
- [korrigiert] `buecher/INDEX.md` zwei Stellen: (1) VHKA-Summary «ab 5 Nutzeinheiten» → «ab 2/3 Nutzeinheiten»; (2) **NISV-AGW-Fundstelle «Art. 6 Abs. 3 NISV» → «Art. 3 Abs. 6 NISV»** (in Wiki + Destillat 19 seit Run 32/37 korrekt, nur der INDEX-Auszug war veraltet).
- [drill] +4 Karten in `training/drills.md` (3× Modell D zu VHKA-Schwelle/§ 12b/§ 13+§ 9a, 1× Modell A zu § 10c Eigenstromerzeugung).
- [register] `wiki/QUESTIONS.md`: neuer Verifikationsabschnitt Run 39 zuoberst; needs-verification-Flag «BBV-I/BBV-II + EnerG» → EnerG-Teil erledigt, BBV-I-Wortlaut bleibt offen. Report `outputs/2026-07-14_buch-run39.md`. Lauf als «Run 39» nummeriert, weil der Parallel-Lauf «Run 38» bereits belegt hat (KNHV-Fassungsstand-Befund, QUESTIONS-Kopf).

## 2026-07-13 — Buch-Run 37 (Phase 3, Modell-D Volltextabgleich, Nachtrag-Registrierung — Lauf fand parallel zu Run 36 statt, Register/Report fehlten bisher)
- [hinweis] Dieser Lauf wurde als eigenstaendige VOLLGAS-Instanz zeitgleich zu Run 36 ausgefuehrt (Selbstcommits `nas-selfcommit` 07:15-07:45 + `auto-sync` 09:20) und hat inhaltlich sauber gearbeitet, aber CHANGELOG/QUESTIONS/Output-Report nicht nachgefuehrt. Diese Registrierung holt das nach den vorgefundenen `verifiziert`-Vermerken in den Dateien nach.
- [korrigiert] `buecher/band-1/04-natur-und-heimatschutz.md` + [[naturschutz-und-denkmalschutz]]: §§ 203/205/207/210/211/216/217/50/76/238/338b PBG gegen `raw/260607_amtlich_zh_pbg.md` geprueft, alle CONFIRMED bis auf **§ 238 Abs. 3 PBG korrigiert auf Abs. 2** (Abs. 3 ist aufgehoben; tragende Norm fuer Umgebungsschutz von NHS-Objekten ist Abs. 2).
- [ergänzt] `buecher/band-1/02-nutzungsplanung-sondernutzung-verfahren-teil3.md` + [[raumplanung-und-gestaltung]]: **Gestaltungsplan-Komplex volltextverifiziert** — § 49b PBG (preisguenstiger Wohnraum, seit 1.7.2026 geltendes Recht inkl. PWV, `speculative`-Vermerk aufgeloest), §§ 83-89 PBG (Gestaltungsplan/Gestaltungsplanpflicht/gemeinsame Bestimmungen §§ 87a-89, Vorpruefung 2/3 Monate), § 44a PBG (ueberkommunaler GP Materialgewinnung/-ablagerung). Neuer Wiki-Abschnitt "Sondernutzungsplanung — Gestaltungsplan" mit vollem Beleg; schliesst die von Run 36 genannte Luecke "Kap. 2 Teil 3 Gestaltungsplan, noch kein Wiki-Artikel".
- [established] `buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md` + [[wohnhygiene-und-raumanforderungen]]: **§§ 295-298 PBG volltextverifiziert** (Heizungsanlagen/standortgerechte Heizzentralen § 295, Befoerderungsanlagen § 296, Nebenraeume § 297, besondere Anforderungen > 6 Geschosse § 298), alle CONFIRMED. Schliesst die von Run 36 genannte Kap.-17-Restluecke.
- [korrigiert] `buecher/band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3.md`: §§ 242-249 PBG (Antennen/Camping/Fahrnisbauten) gegen PBG-Volltext geprueft, 2 Fassungsstand-Korrekturen (§ 243 Abs. 2/3, § 247 Abs. 1).
- [korrigiert] `buecher/band-2/15-lage-von-gebaeuden.md`: Art. 41a/41b GSchV (Gewaesserraum) gegen `raw/260712_amtlich_ch_gschv.md` geprueft, Abs. 1/Abs. 2-Verwechslung korrigiert (deckt sich mit dem in Run 32 bereits aufgeloesten Widerspruch zu [[abstaende-und-hoehen]]).
- [neu] `raw/260713_amtlich_zh_strg.md` (Strassengesetz ZH, LS 722.1, §§ 59-64 treu abgeschrieben) + [[baulinien-und-abstandslinien]] **§ 62 StrG korrigiert**: Buch-Angabe "¼-½ Mehrwertbeitrag" war unpraezise — amtlich lit. c (Einzelbeitrag max. ½ der Wertvermehrung, Summe max. ¾ der Kosten) und lit. d (Trottoir-Anstoesserbeitraege, Summe max. ½ der Kosten) sind zwei getrennte Regelungen. Schliesst die von Run 36 explizit offen gelassene Luecke "§ 62 StrG (kein StrG-Volltext im Hub)".
- [register] Betroffene Destillate/Wiki-Artikel bleiben `established`; keine Statusabsenkung. QUESTIONS.md wird im Anschluss (dieser Lauf, Run 38-Abschnitt) um die Erledigt-Vermerke ergaenzt.

## 2026-07-13 — Buch-Run 36 (Phase 3, Modell-D Volltextabgleich: 5 Komplexe parallel via Agent-Tool, 3 Korrekturen, 0 Halluzinationen)
- [established] [[wohnhygiene-und-raumanforderungen]] `emerging`→`established`: PBG §§ 299-306 + § 32/§ 4 ABV volltextverifiziert, alle 10 Fundstellen CONFIRMED. Präzisierung: § 32 ABV referenziert nur §§ 303-305 PBG, nicht den ganzen Block. Destillat `buecher/band-2/17-gebaeude-und-raeume.md` bleibt bewusst `emerging` (Restteile §§ 295-298 PBG offen).
- [ergänzt/korrigiert] [[ausnahmebewilligung-und-bestandesschutz]] (bleibt `established`): echte Lücke geschlossen — **§ 357 Abs. 5 PBG** (Milderung von Bauvorschriften, Verordnungsdelegation) volltextverifiziert (Z. 3770-3773) und neu ergänzt. Destillat `buecher/band-2/20-ausnahmen-bestandesschutz.md` neuer Abschnitt 20.3.5. **Nachtrag (Selbstkorrektur im selben Lauf):** Verifikations-Agent hatte die Anwendungspraxis fälschlich als "noch nicht gelesen" markiert — sie lag bereits seit 2026-07-10 im Destillat `20-ausnahmen-teil2-milderung-missstaende-brandstatt.md` vor (Art. 33a ABV, heute durch § 253a PBG weitgehend verdrängt). Verlinkung + Wiki-Text nachgetragen.
- [korrigiert] [[abstaende-und-hoehen]] (bleibt `established`, doppelt verifiziert durch parallel laufenden zweiten Refutations-Agenten): §282/284/292/293 PBG CONFIRMED; § 30 Abs. 1 lit. a/b ABV Schattenwurf CONFIRMED **3 Stunden** (in Kraft seit 1.8.2021) — Buch-Destillat hatte noch den überholten 2019-Stand, nachgeführt. **§ 28 ABV korrigiert:** die «≤ 0,5 m nicht eingerechnet»-Regel ist **Gerichtspraxis** (VB.2005.00519), nicht Gesetzeswortlaut — war fälschlich als Normtext dargestellt.
- [korrigiert/erweitert] [[baulinien-und-abstandslinien]] (bleibt `established`): §§ 90-95 PBG (Erschliessungsplan) und § 111 PBG (Ski-/Schlittellinien) neu ins Wiki aufgenommen, §§ 114-122 PBG (Werkplan/vorsorgliches Bauverbot/Heimschlag) ergänzt. **§ 106 PBG korrigiert:** Niveaulinien sichern die Höhenlage auch über Baulinien für Wasserbauprojekte, nicht nur über Verkehrsbaulinien. § 62 StrG bleibt offen (kein StrG-Volltext im Hub).
- [korrigiert/präzisiert] [[baubewilligungsverfahren]] (bleibt `established`): § 325 PBG als Delegationsnorm eingeordnet, § 325a PBG (energetische Sanierungen) CONFIRMED unverändert seit 2019 — `speculative`-Vermerk aufgelöst. **Solaranlagen-Zuordnung korrigiert:** richtig § 1 BVV / §§ 2a-2c BVV statt des nicht mehr existenten Verweises «§ 48 Abs. 2 lit. b-f PBG». §§ 4-7 BBV I um Minergie-Vermutung (§ 4 Abs. 4 BBV I) ergänzt.
- [register] `wiki/QUESTIONS.md` alle 5 Komplexe geklärt/verifiziert; `training/drills.md` 5 neue Karten (4× Modell C/D, 1× Modell A); Report `outputs/2026-07-13_buch-run36.md`.
- [hinweis] Fan-out über Agent-Tool (nicht Workflow-Tool — Lehre aus Run 32, Freigabe-Gate scheitert im unbeaufsichtigten Lauf). Ein erster Kap.-16-Agent lieferte kein Ergebnis (kein Dateidiff, verwirrte Ausgabe zu "Hintergrundagenten") und wurde erfolgreich neu gestartet — Ursache vermutlich eine fehlgedeutete Systemmeldung im Subagenten-Kontext; für künftige Läufe beobachten.

## 2026-07-13 — Buch-Run 35 (Phase 3, Modell-D Volltextabgleich: § 209 PBG + Kaminhöhen/LRV, 2 Netto-Neu-Komplexe von 4 beauftragten)
- [korrigiert/ergänzt] [[naturschutz-und-denkmalschutz]]: § 209 PBG vollständig gelesen — Abs. 1/4/5 aufgehoben, nur Abs. 2 (Verbot) + Abs. 3 (Jahresfrist) in Kraft. **Bestätigt: keine Verlängerungsklausel im Wortlaut.** Die "+1 Jahr"-Praxis stützt sich nur auf § 213 Abs. 3 PBG (Provokationsentscheid) + BEZ 2017 Nr. 2 — als Analogie/Praxis, nicht Gesetzeswortlaut, ausgewiesen. Keine Halluzination bestätigt.
- [neu] `raw/260713_amtlich_ch_lrv.md` (LRV-Volltext Fedlex Stand 1.1.2026 + BAFU-Kaminempfehlungen Dez. 2018, mit Verifikations-Ergebnis).
- [korrigiert] [[wohnhygiene-und-raumanforderungen]] / Destillat `buecher/band-2/17-haustechnische-anlagen-teil3.md`: Kaminhöhen-Werte (0,5/1,5/2 m), 40-kW-Abweichung, 6 m/s Austrittsgeschwindigkeit, Art. 6 LRV CONFIRMED. **Art. 20 LRV (Konformitätserklärung Öl-/Gasfeuerungen) ist per 1.1.2022 aufgehoben** (AS 2021 632) — Buch-Aussage war für 2019 richtig, heute veraltet; massgebend Feuerungskontrolle Art. 13 Abs. 3 LRV mit **drei** Kontroll-Rhythmen (4/2/3 Jahre je Anlagetyp), nicht pauschal "alle 2 Jahre".
- [register] `wiki/QUESTIONS.md` beide Punkte geklärt/verifiziert; Report `outputs/2026-07-13_buch-run35.md`.
- [hinweis] **Parallel-Kollision:** Dieser Lauf wurde zeitgleich mit einem zweiten, unabhängigen `baurecht-buch-training`-Lauf ausgeführt (VOLLGAS-ENDLOS, Regel 260712c), der dieselben Phase-3-Ziele teilweise doppelt bearbeitete (unten als "Buch-Run 33"/"Buch-Run 34" dokumentiert — [[geschosse-und-kniestock]] und PPV Stadt Zürich/Wegleitung/VSS wurden von BEIDEN Läufen unabhängig verifiziert, keine Dateikorruption, gleicher inhaltlicher Befund). Für den nächsten Radar-Lauf empfohlen: Lock-Mechanismus prüfen, um Doppelarbeit bei überlappenden `baurecht-buch-training`-Instanzen zu vermeiden.

## 2026-07-13 — Buch-Run 34 (Phase 3, Modell-D Volltextabgleich: 5 emerging-Komplexe parallel, 3 nach established gehoben)
- [korrigiert/established] [[geschosse-und-kniestock]] `emerging`→`established`: Fassungsstand-Umkehr analog [[abstaende-und-hoehen]] volltextverifiziert — harmonisierter Hauptteil § 275 PBG (Kniestock **bis 1,5 m**, **vier** Geschossarten inkl. Attika § 275 Abs. 4, Untergeschoss 2,5/3 m) vs. Anhang PBG alt (Kniestock 0,9 m / Bestand 1,3 m, gemessen 0,4 m hinter Fassade, drei Geschossarten). Beleg raw/260607_amtlich_zh_pbg.md Z. 2857-2886 (Hauptteil) / Z. 4387-4400 (Anhang), Zeilen 1:1 gegengeprueft. `verifiziert: 2026-07-13`.
- [korrigiert/established] [[ausnahmebewilligung-und-bestandesschutz]] `emerging`→`established`: § 220 PBG (Abs. 1-3) UND § 357 PBG volltextverifiziert. **Echte Luecke geschlossen:** § 357 Abs. 1 verlangt als eigenstaendige Voraussetzung, dass sich die Baute «fuer eine zonengemaesse Nutzung nicht eignet» — fehlte in der Voraussetzungs-Liste; ergaenzt. Zusaetzlich § 357 Abs. 4 (zumutbare Verbesserungen im oeffentlichen Interesse) ergaenzt. Bestaetigt die haeufige Falle: § 218 = Rechtsnatur, NICHT Dispens-Voraussetzung (die stehen alle in § 220). Destillat `buecher/band-2/20-ausnahmen-bestandesschutz.md` Wortlautkorrektur («fuer eine» statt «fuer solche», «weiter gehende»). Beleg raw/…_pbg.md Z. 2186-2194 / 3760-3769.
- [korrigiert/established] [[gebaeudearten-und-abstandssystem]] `emerging`→`established`: 3 Fehlzuordnungen korrigiert — (1) Minibau-Grenze 1,5 m/2 m² steht in **§ 260 Abs. 4 PBG / § 2 Abs. 2 ABV**, NICHT § 2 Abs. 1 ABV (= allg. Gebaeudedefinition); (2) Messweise Fassade→Grenze = **§ 260 Abs. 1 PBG**, nicht § 269 PBG; (3) unbelegte Nutzungsvoraussetzung «ohne Wohnraeume» bei der bewilligungsfreien Baute (§ 1 lit. a BVV nennt nur die zwei Masse) gestrichen. Harmonisierte Legaldefinitionen §§ 2/2a/2b/2c ABV kartiert. Destillat `buecher/band-2/15-lage-von-gebaeuden.md` gleich korrigiert. Beleg raw/…_abv.md / …_pbg.md / …_bvv.md.
- [korrigiert/established] [[laermschutz-und-nichtionisierende-strahlung]] `emerging`→`established`: letzte Restklaerung **Anhang 5 Ziff. 222 LSV** geschlossen — Belastungsgrenzwerte Lrn fuer **Laerm ziviler Flugplaetze** (Nacht), greift ueber **Art. 31a LSV** (Fluglaerm-Fenster); Fluglaerm-Absatz mit Beleg praezisiert. Art. 31/31a/32/39/40 LSV volltextverifiziert (raw/260712_amtlich_ch_lsv-nisv.md). Klarstellung im verifiziert-Vermerk: «alle Fenster» folgt aus BGE 142 II 100, nicht aus dem Wortlaut Art. 39 LSV; ES I-IV (Art. 43 LSV) + Rechtsprechung bleiben destillat-/jurisprudenzgestuetzt (nicht Gesetzeswortlaut).
- [korrigiert/emerging] [[wohnhygiene-und-raumanforderungen]] bleibt `emerging`: BBV I + BBV II jetzt vollstaendig volltextverifiziert (§ 7/10/11/19a BBV II, § 36/40 BBV I; § 10-Rauminhaltsstaffel 2,40→3,0 m³/m² bestaetigt). **Korrektur:** § 9 BBV II ist aufgehoben (RRB 18.12.1996) — Begriffe stehen in §§ 3/6/7 BBV II; Destillat `buecher/band-2/17-gebaeude-und-raeume.md` korrigiert. Kein established, weil der Hauptkoerper (PBG §§ 299-306 Belichtung/Mindestflaeche/Raumhoehe + § 32 ABV) noch nicht gegen den PBG-/ABV-Volltext geprueft ist (raw-Bereich fehlte diesem Lauf).
- [drill] +7 Karten (2× geschosse/kniestock Modell D/C, 4× Modell C zu Bestandesschutz/Gebaeudearten/Wohnhygiene/LSV, 1× Modell A) in `training/drills.md`.
- [register] `wiki/QUESTIONS.md` Verifikationsabschnitt Run 34 ergaenzt; Report `outputs/2026-07-13_buch-run34.md`.
- [hinweis] 5 parallele Verifikations-Agenten; 3 mit Abschlussbericht, 2 (geschosse, LSV) durch transienten API-Ueberlastungsfehler ohne Bericht beendet. geschosse hatte Wiki + 2 Drills bereits vollstaendig+korrekt geschrieben (raw-Zeilen im Hauptlauf 1:1 nachverifiziert); LSV war unberuehrt und wurde vollstaendig durch den Hauptlauf verifiziert und gehoben. Register/CHANGELOG durch den Hauptlauf ergaenzt.

## 2026-07-13 — Buch-Run 33 (Phase 3, Verifikation kommunale Erlasse/VSS-Normen: Wegleitung 1997, PPV Stadt Zürich Art. 8 Abs. 5-8, Veloabstellplatz-/Rampennormen)
- [neu] `raw/260713_amtlich_zh_ppv-stadt-zuerich.md` (Parkplatzverordnung Stadt Zürich AS 741.500: Wortlaut Art. 8 Abs. 5-8 autoarme Nutzungen amtlich aus Leitfaden Tiefbauamt 09.07.2024 bezogen; Fassungsstand-Diskrepanz zur 2010er-PDF dokumentiert; Art. 4/5/8ter/9 Abs. 4 ergänzend erfasst).
- [korrigiert/ergänzt] [[fahrzeugabstellplaetze-und-parkierung]]: (1) Wegleitung Baudirektion Oktober 1997 CONFIRMED als weiterhin geltend, Tabelle-1/Tabelle-4-Mechanik präzisiert, keine Nachfolge-Wegleitung gefunden; (2) PPV Stadt Zürich Art. 8 Abs. 5-8 mit vollem Wortlaut + Kaskade (Grundstück→Gemeinschaftsanlage/Zumietung 300 m→Ersatzabgabe) + Abgrenzung Art. 8 Abs. 3 PPV ergänzt, Fassungsstand korrigiert (gilt erst ab Revision bis 16.12.2015, nicht in der 2010er-PDF); (3) VSS-Veloabstellplatznormen korrigiert — Fehlzitat **«SN 640 060» entfernt** (existiert nicht), SN/VSS 640 065 (Bedarfsermittlung) + 640 066 (Projektierung) bestätigt, aktuelle Nomenklatur VSS 40 065/40 066 ergänzt; (4) VSS-Rampenneigungsnorm «SN 640 291a» auf aktuelle Bezeichnung **VSS 40 291** (2021) präzisiert, Kennwerte bewusst als dauerhaft needs-verification (Kostenpflicht/Urheberrecht) markiert, kein Normtext kopiert. `verifiziert: 2026-07-13`, Status bleibt `established`.
- [register] `wiki/QUESTIONS.md`: Verifikationsabschnitt für alle vier Teilfragen aus Run 29 ergänzt (Wegleitung CONFIRMED, PPV Fassungsstand korrigiert, Velonormen korrigiert, Rampennorm-Kennwerte explizit als dauerhaft offen wegen Kostenpflicht gekennzeichnet — kein falscher Abschluss).
- [hinweis] Keine urheberrechtlich geschützten VSS-Normtexte kopiert — nur Normbezeichnung, Ausgabejahr und Regelungsgegenstand referenziert, belegt über die frei zugängliche ParkingSwiss-Übersicht (ParkingGuideline 05-V1.2025) sowie amtliche PDF-Quellen (Wegleitung 1997, PPV-Leitfaden 2024).

## 2026-07-13 — Buch-Run 32 (Phase 3, Modell-D Volltextabgleich LSV/NISV + BBV/EnerG, Nachtrag Register)
- [neu] `raw/260712_amtlich_ch_lsv-nisv.md` (Art. 31/31a/32/35/39 LSV + Anhang 5 Ziff. 222; Art. 2/3/5/11/12 NISV + Anhang 1 Ziff. 61/62/64 + Anhang 2, Fedlex-Volltext, treu abgeschrieben).
- [korrigiert] [[laermschutz-und-nichtionisierende-strahlung]]: Anlagegrenzwert-Legaldefinition steht in **Art. 3 Abs. 6 NISV** (nicht Art. 6 NISV); Mobilfunk-Grenzwerte (Ziff. 64 Anhang 1 NISV) sind **frequenzbereichs-gestaffelt** (≤ 900 MHz = 4,0 V/m, ≥ 1800 MHz = 6,0 V/m, Kombi-Anlagen = 5,0 V/m), nicht als starre Einzelfrequenz-Liste dargestellt. Uebrige Kernaussagen (Lueftungsfensterpraxis-Aufhebung Art. 31 Abs. 2 LSV, OMEN Art. 3 Abs. 3 NISV, 5G-AGW) CONFIRMED. `verifiziert: 2026-07-12`, Status bleibt `emerging` (Anhang 5 Ziff. 222 LSV noch nicht im Detail geprueft).
- [neu] `raw/260712_amtlich_zh_energ.md` (EnerG Nachtrag 129, Stand 1.7.2025, §§ 9-14 vollstaendig, treu abgeschrieben, mit Fassungshinweis).
- [korrigiert/ergaenzt] [[wohnhygiene-und-raumanforderungen]] neuer Abschnitt "Haustechnik & Energie": 4 Korrekturen gegen `raw/260607_amtlich_zh_bbv1.md`/`bbv2.md` — § 42a BBV I existiert nicht mehr (Befreiung neu vollstaendig in § 43 BBV I); § 45 Abs. 3 BBV I existiert nicht, Grenzwerte in eigenstaendiger **§ 45a BBV I**; § 48 BBV I (WKK) aufgehoben, Materie neu in **§ 12b EnerG**; § 30a Abs. 2 BBV I regelt nur Drittabgabepflicht (>2 GWh), Notstrom/Probelaeufe-Schwelle **50 Std.** (nicht 30) in § 12b Abs. 1 EnerG. **Fassungsstand-Befund:** §§ 9/9a/10b/12/13 EnerG im Buch-Destillat entsprechen NICHT mehr durchgehend der heute geltenden Fassung — kuenftig gegen `raw/260712_amtlich_zh_energ.md` zitieren, nicht gegen das Buch. `verifiziert: 2026-07-12`.
- [drill] +5 Karten (3× Modell D, 1× Modell A) in `training/drills.md` zu den heutigen Korrekturen (Untergeschoss-Mass, Schattenwurf-Schwelle, Akteneinsicht §§ 8/9 VRG, AGW-Legaldefinition, § 45a BBV I).
- [register] `wiki/QUESTIONS.md` Verifikationsabschnitt fuer alle 5 Run-32-Komplexe konsolidiert (PBG §§ 278-293, VRG §§ 8/9/10c/15, GSchV, LSV/NISV, BBV/EnerG). Report `outputs/2026-07-13_buch-run32.md`.
- [hinweis] Zwei der fuenf parallelen Verifikations-Agenten (LSV/NISV, BBV/EnerG) endeten wegen eines transienten API-Ueberlastungsfehlers ohne eigenen Abschlussbericht — die Datei-Aenderungen waren jedoch vollstaendig und korrekt; dieser CHANGELOG-Eintrag sowie die Register-Nachfuehrung wurden nachtraeglich durch den Hauptlauf ergaenzt.

## 2026-07-12 — Buch-Run 32 (Phase 3, Modell-D Volltextabgleich §§ 278-293 PBG, Fassadenhoehe/Gesamthoehe/Hochhaus/Dachaufbauten)
- [korrigiert] [[abstaende-und-hoehen]] Abschnitt «Höhenbegriffe» komplett neu belegt: bisherige Zuordnung «Gebäudehöhe: § 279 PBG, § 12 ABV» war **falsch** (§ 279 harmonisiert regelt Mass/Zustaendigkeit, nicht den Begriff; § 12 ABV betrifft anrechenbare oberirdische Bereiche, hat mit Hoehenmessung nichts zu tun). «Vollgeschoss: § 276 PBG» war falsch (§ 276 = Anrechenbarkeit, Begriff steht in § 275 Abs. 1). «Untergeschoss 80 cm» ist im Volltext **nicht auffindbar** — korrekt ist § 275 Abs. 3 PBG: im Mittel max. 2,5 m, an keiner Stelle mehr als 3 m (Berechnung § 29 ABV). Firsthoehe/Gesamthoehe als getrennte Begriffe (alt § 281 vs. harmonisiert § 281) sauber unterschieden.
- [korrigiert] [[abstaende-und-hoehen]] Hochhaus-Schattenwurf-Schwelle **vertauscht** gewesen: bisherige Fassung nannte 2 h als geltend und 3 h als «Vernehmlassung 2018, nicht umgesetzt». Amtlicher Volltext § 30 Abs. 1 lit. a/b ABV (Fassung RRB 18.03.2020, in Kraft seit 1.8.2021) nennt **drei Stunden** als aktuell geltende Schwelle — die fruehere 2-Stunden-Regel wurde durch die 2020er-Revision gelockert. Korrigiert mit vollem Beleg (Fussnote 18 ABV).
- [korrigiert] [[abstaende-und-hoehen]] Dachaufbauten § 292 PBG: «Antennen» als Nicht-Aufbaute-Ausnahme war eine **unbelegte Ergaenzung**, im Gesetzeswortlaut (beide Fassungen) nicht auffindbar — gestrichen bzw. als nicht belegt gekennzeichnet. Gesetzlich genannt sind nur Kamine, Sonnenenergie-Anlagen, kleinere technisch bedingte Aufbauten.
- [ergaenzt] [[abstaende-und-hoehen]] Neue Kernaussagen mit vollem Beleg: § 279 Abs. 1/2 PBG (25 m Grundsatz, Gemeinde-Kompetenz, Verkehrsbaulinien, geringeres Mass massgebend), § 280 Abs. 1/2/4 PBG (Giebel-Erhoehung max. 7 m, Attika-Bonus 3,3 m, Waermedaemmungs-Zuschlag 25 cm), § 281 PBG (Gesamthoehe-Definition, nur harmonisiert), § 284 PBG (Hochhaus-Anforderungen Abs. 1-4 vollstaendig), § 293 Abs. 2 PBG (Ausnahme Haus-/Kellerzugaenge von der 1,5-m-Freilegungsschranke).
- [status] `established` bleibt (Kernaussagen bestaetigt oder korrigiert, keine Luecke offen fuer §§ 278-293).
- [frontmatter] `last_updated: 2026-07-12`, `verifiziert: 2026-07-12 (Modell-D §§ 278-293 PBG, Buch-Run 32)`; `sources` um §§ 275/276/278/279/280/281/282/283/284/293 (beide Fassungen wo relevant) + § 29/§ 30 ABV ergaenzt.
- [hinweis] Sister-Artikel [[geschosse-und-kniestock]] verwendet noch die **alte** § 275/276-Zaehlweise (Kniestock 0,9 m/1,3 m) unkommentiert als Status `emerging`, noch **nicht** Modell-D-verifiziert — Kreuzverweis gesetzt, Korrektur dort ausserhalb des Scopes dieses Runs.

## 2026-07-12 — Buch-Run 32 (Phase 3, Modell-D Volltextabgleich §§ 8/9/10c/15 VRG)
- [verifiziert] § 15 VRG (Kostenvorschuss) im Destillat [[09-rechtsschutz-teil2-ablauf-kosten-revision]] (Abschnitt 2.2, "S. 576-577") gegen amtlichen Volltext `raw/260712_amtlich_zh_vrg.md` geprueft: Paraphrase **bestaetigt** (Abs. 1 Barvorschuss Untersuchungskosten, Abs. 2 lit. a-c Sicherstellung Verfahrenskosten) — keine Korrektur noetig.
- [neu] [[rechtsschutz-und-rechtsmittelverfahren]] neuer Abschnitt **6b "Akteneinsicht und Realakte"**: §§ 8/9/10c VRG (Akteneinsicht Grundsatz/Ausnahme, Realakte) waren weder im Destillat noch im Wiki erfasst, jetzt direkt aus amtlichem Volltext ergaenzt mit vollem Beleg + JANS-Praxis-Hinweis (§ 10c als Hebel gegen faktisches Verwaltungshandeln ohne Verfuegung).
- [verweis] [[09-rechtsschutz-teil2-ablauf-kosten-revision]] neue Sektion "4. Verifikations-Notiz" dokumentiert den Abgleich + Cross-Referenz auf den Wiki-Abschnitt 6b (keine Duplizierung im Destillat, da §§ 8/9/10c ausserhalb des dort abgedeckten Seitenbereichs S. 576-606 liegen).
- [frontmatter] Beide Dateien: `last_updated: 2026-07-12`, `verifiziert: 2026-07-12 (Modell-D §§ 8/9/10c/15 VRG, Buch-Run 32)`; Destillat-Frontmatter `paragraphen` um § 8/§ 9/§ 10c VRG ergaenzt.
- [index] `wiki/INDEX.md` Statistik-Zeile + Kurzbeschreibung [[rechtsschutz-und-rechtsmittelverfahren]] aktualisiert.

## 2026-07-12 — Wissens-Chef Run 2 (Cross-KB): Artikel-Backlink zu auflagebereinigung
- [link] [[bauausfuehrung-und-baukontrolle]] JANS-Bezug: Skill-Nennung auflagebereinigung um den konkreten KB-Artikel-Backlink `auflagebereinigung/wiki/fristenlogik-bauentscheid-zh` ergaenzt (operative Frist-Zuteilung). Gegen-Backlink zu den in Run 2 gesetzten Vorwaerts-Links.

## 2026-07-12 — Buch-Run 31 (Phase 3, Modell-D Volltextabgleich, 5 Komplexe parallel via Workflow)
- [GROSSER BEFUND] **Fassungsstand-Umkehr §§ 269-274/292 PBG:** Der amtliche PBG-Volltext (LS 700.1, Stand 1.7.2026) fuehrt die **harmonisierte Fassung (IVHB) als geltenden Hauptteil** (proj. Fassadenlinie § 260, Fassadenhoehe §§ 278-280, § 273 «Kleinbauten und Anbauten», § 292 Dachaufbauten **½**); das alte Recht (besondere Gebaeude 4/5 m, Dachaufbauten 1/3) steht nur noch im **Anhang (Stand 28.2.2017, Weitergeltung OS 72, 52)** und gilt uebergangsrechtlich, bis die Gemeinde ihre BZO harmonisiert. Selbst am raw-Volltext gegengeprueft (Z.3012/4463, Z.2842/4377).
- [korrigiert] [[abstaende-und-hoehen]] (`established` bleibt): Fassungsstand-Box umgekehrt; § 273 + § 292 als **Doppelwerte** (geltend/Anhang). Zahlenwerk 3,5/12/16,5 m + Summe §§ 270-271 + Waldabstand 30 m § 262 CONFIRMED.
- [status] [[11-allgemeine-bestimmungen-baupolizeirecht]] `emerging`→**`established`** + **6 Korrekturen**: § 219 nur Verschaerfung/zwingend (Milderung=BBV II); § 220 allg. Dispens (nicht «nur wo ausdruecklich» = § 218 Abs. 2); Bau Gemeinschaftswerke **§ 225** (nicht § 224 Abs. 2, § 225 ergaenzt); 30-Tage-Frist **§ 230 Abs. 2** (nicht Abs. 1); § 232 Abs. 2 Mitteilung/Abs. 3 Kosten (Kontroll-Betreten gestrichen); § 226 Abs. 2 Uebermassverbot; Naeherbaurecht **§ 270 Abs. 3 PBG** (nicht «§ 270 ZGB»).
- [status] [[04-natur-und-heimatschutz]] + [[naturschutz-und-denkmalschutz]] `emerging`→**`established`** + **2 Korrekturen**: Provokationsfrist 1 J.(+1) = **§ 213 Abs. 3** (nicht Abs. 1); Veraenderungsverbot **§ 209 Abs. 2 i.V.m. Abs. 3**, «+1 Jahr» nur analog § 213 Abs. 3 (needs-verification).
- [status] [[baulinien-und-abstandslinien]] `emerging`→**`established`** (§ 264/§ 272 verifiziert). [korrigiert] [[03-erschliessung-landsicherung-teil1]] § 122 Abs. 1 Fristbeginn = «seit Eintritt seiner **Rechtskraft**» (2 Stellen). § 120/150/264/346 CONFIRMED.
- [neu] `raw/260712_amtlich_zh_vrg.md` (§§ 8/9/10c/15/30 VRG, LS 175.2, ab zhlex) — VRG-Faktenbasis geschlossen. [korrigiert] [[bauausfuehrung-und-baukontrolle]]: Grundpfandrecht = **Art. 836 ZGB** (nicht § 15 VRG); § 30 Abs. 1 VRG Dreiteilung + § 10c VRG volltextverifiziert.
- [drills] +7 Karten (1× Modell A, 6× C/D) in `training/drills.md`. [questions] Run-31-Verifikationsabschnitt + alte Flags (§ 30 VRG, §§ 218-232, §§ 203-213, § 120-122/150/264/346, §§ 269-274/292) geschlossen. [report] `outputs/2026-07-12_buch-run31.md`.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Gewaesserraum-Bemessung korrigiert + Querbezuege planungsgrundlagen/normen
- [korrigiert] [[abstaende-und-hoehen]] Gewaesserraum: Fliessgewaesser-Bemessung vermischte fruehere den Schutzgebiets-Schwellenwert (< 1 m) mit der Normalgebiets-Formel (2,5x+7). Jetzt sauber getrennt: **Normalgebiet Art. 41a Abs. 2 GSchV** (GSB < 2 m -> 11 m; 2-15 m -> 2,5x GSB + 7 m) vs. **Schutzgebiet Art. 41a Abs. 1** (< 1 m -> 11 m; 1-5 m -> 6x+5; > 5 m -> GSB+30). Stehende Gewaesser: **> 0,5 ha**-Schwelle (Art. 41b) ergaenzt. Belegt an GSchV + planungsgrundlagen (adversarial verifiziert, BESTAETIGT). Cross-KB-Fund W1(hoch)/W3(niedrig).
- [link] [[abstaende-und-hoehen]] -> Geodatum-Wegweiser `planungsgrundlagen/wiki/kartenportale-baulinien-abstandslinien-zh`. [[nutzungsziffern]] -> normen-Destillat `sia-416-2003` (Flaechendefinitionen). [[fahrzeugabstellplaetze-und-parkierung]] -> normen-Destillat `vss-merkblatt-veloabstellplaetze-1998`.
- [nicht-korrigiert] Cross-KB-Verdacht §66 vs §262 Waldabstandslinie (baulinien-und-abstandslinien) adversarial WIDERLEGT: §66 = Planungslinie, §262 = Bauverbot, komplementaer (beide korrekt). Kein Eingriff.

## 2026-07-12 — Buch-Run 30 (Phase 3, Modell-D-Volltextabgleich, 3 Komplexe parallel via Workflow): §§ 233-237 / 326-329 / 340-341 PBG verifiziert, 7 Korrekturen + 1 Nachtrag
- [workflow] 3 Verifikations-Agenten parallel (Workflow-Tool, von Raphael 12.07.2026 autorisiert) — je Komplex ein Refutations-Agent gegen `raw/260607_amtlich_zh_pbg.md`. 0 Fehler, 287k Tokens.
- [verifiziert] **Baureife §§ 233-237 PBG** (Kap. 12): CONFIRMED § 233/234-Kern/236-Reihenfolge/237-OEV. **Korrekturen:** § 234 «behördlicher Antrag»→**Antrag des Gemeindevorstandes**; § 235 **3-Jahres-Erlassfrist** + Rechtsmittel-Ausnahme ergänzt; § 236 Abs. 1 «Beseitigung»→**«Behandlung»**; § 237 Abs. 4 Fehlzuordnung→**Veränderungsverbot privatrechtl. Zugänge + Grundbuch-Anmerkung** (Nachweis dauernder Benützungsrechte = allg. Grundsatz §§ 236/237); Destillat § 237 Gleisanschluss «wirtschaftlich» gestrichen (amtl. «technisch möglich und zumutbar»). Wiki [[baureife-und-erschliessung]] + Destillat [[12-baureife]].
- [status] **Baufreigabe/Kontrolle/Unterbruch §§ 326-329 PBG** (Kap. 8): Wiki [[bauausfuehrung-und-baukontrolle]] `emerging`→**`established`**. **Korrekturen:** § 328 Abs. 2 **lit. b = Förderung durch Gemeinde, NICHT «Abbruch»** (Abbruch/Einebnung = lit. c); § 328 **Abs. 3 = Kostenträger Grundeigentümer** (Ersatzvornahme/Grundpfand = § 30/§ 15 VRG); § 326 **Plattform-Fassung** (lit. a/b, vorzeitiger Baubeginn elektronisch); **Nachtrag § 328a** (elektronische Verfahrensführung); § 327 Abs. 1 Qualifier «Abbruch ohne nachfolgenden Neubau». **§ 329 Abs. 1 (BRG-Anfechtung nach RPG/USG/PBG) am Volltext bestätigt.** Destillat [[08-ausfuehrung-von-bauarbeiten]].
- [status] **Strafe/Verjährung/Wiederherstellung §§ 340/340a/341 PBG** (Kap. 10): Wiki [[widerrechtliche-bauten-und-sanktionen]] `emerging`→**`established`**. **Korrekturen:** § 341 amtl. Wortlaut «rechtmässigen Zustand herbeiführen; Verwaltungszwang + Schuldbetreibung» (Vorbehalt nur ggü. Strafverfahren, nicht «ohne Vorbehalt»); § 340 Abs. 4 (Gehilfenschaft) / Abs. 5 (Solidarhaftung) präzisiert, Abs. 3 (Verzicht) ergänzt; § 340a «Strafverfolgung UND Strafe». Destillat [[10-widerrechtliche-bauten-teil1]].
- [drill] training/drills.md: 6 Karten (1 Modell A, 4 Modell D, 1 Modell C) zu den heute verifizierten/korrigierten Stellen.
- [register] wiki/QUESTIONS.md (Run-30-Verifikationssektion + 3 alte Flags geschlossen: §§ 233-237, §§ 326-329, §§ 340/341), PROGRAMM.md-Tracker (Run 30 + nächste Ziele), CHANGELOG. Report `outputs/2026-07-12_buch-run30.md`.

## 2026-07-12 — Buch-Run 29 (Phase 3, erster Modell-D-Volltextabgleich): Fahrzeugabstellplaetze §§ 242-249 PBG verifiziert, 2 Fassungsstand-Korrekturen
- [verifiziert] **Kap. 13 Teil 3 Fahrzeugabstellplaetze §§ 242-248 PBG** gegen amtlichen Volltext `raw/260607_amtlich_zh_pbg.md` (§§ 242-249 + § 309) Absatz fuer Absatz abgeglichen (Modell D + E). CONFIRMED: § 242/244/245/246/248 + § 309 Abs. 1 lit. i (Fahrzeugabstellplaetze bewilligungspflichtig).
- [korrigiert] **§ 243 Abs. 2 → Abs. 3 (Fassungsstand):** Die «bei bestehenden Bauten Schaffung/Aufhebung»-Regel ist im geltenden Recht **§ 243 Abs. 3**; der neue **Abs. 2** (FN 72) = antragsgebundene tiefere Platzzahl. Buch 6. Aufl. 2019 zaehlt sie noch als Abs. 2 → Destillat + Wiki korrigiert (fuer Bewilligungen/Reverse Abs. 3 zitieren).
- [korrigiert] **§ 247 Abs. 1 (Fassungsstand):** geltend «nur fuer die Mobilitaet» (breiter); die im Buch beschriebene enge Zwei-Zweck-Bindung (Parkraum/OEV) ist die fruehere Fassung → Destillat + Wiki korrigiert.
- [korrigiert] **§ 243 Abs. 1 lit. b:** amtl. «wesentlich **andere** Nutzung» (nicht «staerkere»); Zuordnung «ausserhalb oeff. Grundes» = § 242 Abs. 2, Interessen-Katalog = § 245 Abs. 2 lit. a.
- [status] Destillat [[band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3]] + Wiki [[fahrzeugabstellplaetze-und-parkierung]] `emerging` → **`established`** (kant. Recht §§ 242-248 volltextverifiziert).
- [drill] training/drills.md: 5 Karten (2 Modell D, 3 Modell C).
- [register] wiki/QUESTIONS.md (Verifikation + Methodenlehre Phase 3 «revidierte Absaetze als Fehlerherd»), PROGRAMM.md-Tracker + curriculum.md nachgefuehrt. Report `outputs/2026-07-12_buch-run29.md`.

## 2026-07-11 — Buch-Run 28: Kap. 15.13 Harmonisierungsvorlage (nPBG/nABV) — LETZTE Restschuld, Kap. 15 VOLLSTAENDIG → Forcierungs-Phase abgeschlossen, Phasenwechsel Phase 3
- [neu] **Destillat Kap. 15.13** [[band-2/15-lage-von-gebaeuden-teil3-harmonisierung]] (`emerging`, S. 1124-1133, Shots 566-570): **Lage von Gebaeuden nach der Harmonisierungsvorlage (nPBG/nABV/IVHB)** — neue Messsystematik **Fassadenflucht § 6 nABV / Fassadenlinie § 6a nABV / projizierte Fassadenlinie § 6b nABV** (Referenz Abstaende/Laengen/UEZ §§ 260/100/256 nPBG); **Gebaeudearten** (Minibaute ≤ 1,5 m/≤ 2 m² abstandsfrei § 260 Abs. 4 nPBG + bewilligungsfrei § 1 lit. a BVV, bewilligungsfreie Klein-/Anbaute ≤ 2,5 m/≤ 6 m², Klein-/Anbaute ≤ 4/5 m/≤ 50 m² nur SIA-416-Nebennutzflaechen §§ 49 Abs. 3 + 273 nPBG, **unterirdische Baute § 2b vs. Unterniveaubaute § 2c** ≤ 0,5 m, Hauptgebaeude §§ 270-277 nPBG); **vorspringende Gebaeudeteile neu bis 2 m + halber Fassadenabschnitt § 6c nABV** (statt Drittelregel § 260 Abs. 3 PBG), Zusammenzaehlung § 6c Abs. 2, unbedeutende Ruecksprünge § 6d; **Baubereich § 7 nABV**; **Baulinienbereich § 100 Abs. 2 nPBG** (alt § 100 Abs. 1 PBG: 1,5 m). Vorspann Brandmauern §§ 289-291 PBG. **SCHLIESST Kap. 15 vollstaendig.**
- [hinweis] Die Shots 566-570 waren im Inventar bereits `[x]` (unter teil2d = geltendes Recht), aber die **nPBG/nABV-Systematik** war nie erfasst — genau die als Restschuld gefuehrte Luecke. Jetzt geschlossen.
- [geschaerft] Wiki **[[abstaende-und-hoehen]]** (`established`) neue Sektion «Harmonisierungsvorlage (nPBG/nABV) — neue Messsystematik (Kap. 15.13)»: projizierte Fassadenlinie, 1/2-Vorsprungregel, Gebaeudearten, UIB/UNB-Verschaerfung, Baubereich; frontmatter (sources/links/last_updated) nachgefuehrt.
- [geschlossen] wiki/QUESTIONS.md: 15.13-Luecke erledigt; neue `needs-verification` Fassungsstand nPBG/nABV (IVHB-Vorlage 2019 vs. heute geltendes Recht).
- [drill] training/drills.md: 3 Modell-C-Karten (projizierte Fassadenlinie / 1-2-Vorsprungregel / UIB vs. UNB) + 1 Modell-A-Drill (Hobby-/Fitnessraum in Kleinbaute unzulaessig, SIA-416).
- [register] seiten-inventar (Shots 566-570 auf teil3-Destillat umgehaengt), INDEX.md (neuer Destillat-Eintrag + Kap. 15 vollstaendig), curriculum.md (**Kap. 15 VOLLSTAENDIG**, frontmatter Run 28). Report `outputs/2026-07-11_buch-run28.md`.
- [phasenwechsel] **Alle 23 Kapitel substanziell geschlossen** (Kap. 18 Brandschutz = Querverweis `brandschutz`). **Forcierungs-Phase ABGESCHLOSSEN.** Scheduled Task `baurecht-buch-training` auf **woechentlich** heruntergetaktet (Phase 3: Erhaltung/Drills + Modell-D-Volltextabgleich der needs-verification).

## 2026-07-11 — Buch-Run 27: Kap. 17 Haustechnik (T3/Schluss) + Kap. 19 Laerm/NIS (T2/Schluss) — Forcierung, 2 Kapitelteile, 22 Doppelseiten
- [neu] **Destillat Kap. 17 Teil 3** [[band-2/17-haustechnische-anlagen-teil3]] (`emerging`, S. 1304-1319, Shots 656-663): **17.9 Haustechnische Anlagen** — Abwaerme/WRG/WKK § 30a BBV I, Feuerungen Oel/Gas/Holz § 24 BBV I/LRV/Feuerungskontrolle alle 2 J. Art. 13 LRV, Kaminhoehen (0,5/1,5/2 m Ziff. 3 Empfehlungen 2013), **Elektroheizungsverbot § 10b EnerG**, Warmwasser **max. 60 °C § 26 BBV I** / Vorlauf **≤ 50 °C-Boden ≤ 35 °C § 23 BBV I**, **VHKA ab 5 Nutzeinheiten § 9 EnerG**, besondere Heizungen (Freiluft-/Hallenbad, Rampen-/**Garagenheizung Ziff. 2.31 Anhang BBV I**), Klima/Lueftung § 29 BBV I/EBF > 1000 m² § 45 Abs. 3, **Garagenlueftung § 37 Abs. 1 BBV I**, Elektro NIV Art. 37 ff., **Aufzugspflicht > 5 anrechenb. Geschosse** (Kabine 2,10 × 1,10 m, > 9 Gesch. = 2 Aufzuege § 40 Abs. 2 BBV I), Liftanbau Altbau § 19a BBV II (Erstellung vor 1.7.1978), Befoerderungsanlagen § 296 PBG/§ 31/32 BBV I, Briefkaesten Art. 73 ff. VPG; Auftakt 17.10 nPBG (lichte Hoehe § 304). **Kap. 17 substanziell komplett.**
- [neu] **Destillat Kap. 19 Teil 2** [[band-2/19-baulicher-umweltschutz-teil2-laerm-nisv]] (`emerging`, S. 1404-1431, Shots 706-719): **19.3 Laermschutz-Detail** — **Aufhebung Lueftungsfensterpraxis BGE 142 II 100** (IGW an ALLEN Fenstern laermempfindl. Raeume, Mitte offenes Fenster Art. 39 Abs. 1 LSV), **Baubewilligung trotz IGW-Ueberschreitung Art. 31 Abs. 2 LSV** (ueberwiegendes Interesse, > 6 dB(A) nie leicht), verschaerfte Schalldaemmung Art. 32 Abs. 2 LSV/SIA 181, **Fluglaerm Art. 31a LSV** (Nachtstunden/Schlafraumfenster autom.; vBR 2012/SIL/Abgrenzungslinie); **19.4 NIS/NISV** — zweistufig **IGW + AGW (Faktor 10, nur OMEN)**, Lichtimmissionen SIA 491, **OMEN Art. 3 Abs. 3 NISV** (Balkone/Terrassen NICHT), **Mobilfunk AGW 4-6 V/m** Ziff. 64 Anhang 1 NISV, Bauzone Anspruch § 320 PBG **ohne Beduerfnisnachweis** BGer 1C_329/2013, Standortdatenblatt Art. 11 NISV/Abnahme 80 % AGW. **SCHLIESST Kap. 19.**
- [neu] **Wiki [[laermschutz-und-nichtionisierende-strahlung]]** (`emerging`): baulicher Umweltschutz Laerm + NIS; wiki/INDEX.md neue Sektion «Baulicher Umweltschutz (Laerm & Strahlung)».
- [geschlossen] wiki/QUESTIONS.md: Kap. 17 Ausruestungen-Luecke + Laerm/NIS-Wiki-Luecke erledigt; 3 needs-verification neu (BBV/EnerG-Fassungsstand MuKEn 2014, LSV/NISV-Artikel + 5G-AGW, Kaminhoehen/LRV).
- [drill] training/drills.md: 6 Modell-C-Karten + 1 Modell-A-Drill (Lueftungsfensterpraxis, Art. 31 Abs. 2 LSV, IGW/AGW, OMEN-Balkone, Mobilfunk § 320 PBG, Aufzugspflicht, Garagen-Temperierung).
- [register] seiten-inventar (Shots 656-663 + 706-719 → [x], echte Seiten), INDEX.md (Abdeckung + 2 Destillate), curriculum.md (**Kap. 17 substanziell komplett, Kap. 19 VOLLSTAENDIG**). Report `outputs/2026-07-11_buch-run27.md`.
- [hinweis] Letzte substanzielle offene Kapitel geschlossen → Forcierungs-Phase kann abgeschlossen werden (Cron auf woechentlich, Phase 3).

## 2026-07-10 — Buch-Run 26: Kap. 14 Lueckenschluss (P1 VOLLSTAENDIG, 6 Tail-Doppelseiten, Shots 489/492/495/497/499/500)
- [erweitert] **Destillat Kap. 14** [[band-2/14-nutzungsdichte-ausnuetzung]] (`established`): Nutzungsart-Detail 14.2.2-14.2.6 (Arbeitsraeume Art. 52 PBG, nicht stoerende Betriebe § 52 Abs. 1/3, ideelle Immissionen BGE 108 Ia 140, **Pflegewohnung zonenkonform BEZ 2015 Nr. 36** [Healthcare], Parkplatz-Zonenkonformitaet 14.2.4, besondere Nutzungsanordnungen § 49a Abs. 3 + Erdgeschoss § 49a Abs. 3 Satz 2, **Uebertragung von Nutzweisen § 17 Abs. 2 ABV** Radius 150/300 m), BMZ integrierte Garagen (§ 13 ABV/BEZ 2012 Nr. 2), Harmonisierungsvorlage-Formeln nPBG 14.3.3-14.3.6 + **Verzicht auf Nutzungsziffern § 251 lit. b PBG** 14.3.7.
- [geklaert] **Mischrechnungsverbot** = keine benannte Doktrin in Kap. 14 (jede Ziffer bindet abschliessend, § 251 PBG); Offen-Punkte in Destillat, [[ausnuetzungsuebertragung]], [[nutzungsziffern]] und wiki/QUESTIONS.md geschlossen.
- [geschaerft] Wiki [[ausnuetzungsuebertragung]] `emerging`→`established`: Abgrenzung Ausnuetzungsuebertragung ↔ Nutzweisen-Uebertragung (§ 17 Abs. 2 ABV, BO Zuerich Art. 6, Vergleichstabelle).
- [geschaerft] Wiki [[nutzungsziffern]]: Harmonisierungsvorlage-Formeln nPBG (+20 % Energiespar-Bonus § 11/13 nABV), Verzicht § 251 lit. b, Nutzungsart-Abschnitt.
- [drill] training/drills.md: 5 Modell-C-Karten + 1 Modell-A-Drill (Kap. 14 Nutzungsart/Nutzweisen/IVHB).
- [register] seiten-inventar Shots 489/492/495/497/499/500 → [x] (echte Seiten 970-992); curriculum Kap. 14 → VOLLSTAENDIG; buecher/INDEX Kap. 14 → ✅; wiki/INDEX-Eintraege aktualisiert.
- [report] `outputs/2026-07-10_buch-run26.md`.

## 2026-07-10 — Buch-Run 25: Kap. 13 Schluss / Kap. 20 Schluss / Kap. 21 Schluss (Forcierung, 3 Kapitelteile, 19 Doppelseiten)
- [neu] **Destillat Kap. 13 Teil 3 / Schluss** [[band-2/13-fahrzeugabstellplaetze-spielflaechen-teil3]]
  (S. 892-916, Shots 449-461): **Fahrzeugabstellplaetze §§ 242-247 PBG** — kommunaler Normbedarf § 242 Abs. 1,
  Reduktion + **Maximum § 242 Abs. 2** (Massnahmenplan Lufthygiene Art. 44a USG/Art. 31 LRV BEZ 2012 Nr. 37,
  **Wegleitung Baudirektion 1997** Gemeindetyp 1/2 BGE 124 II 272), **autoarme Nutzungen** (Mobilitaetskonzept,
  PPV Zuerich Art. 8 Abs. 5-8, Grundbuch-Anmerkung), **Fahrtenmodell** (BEZ 2004 Nr. 46), Behindertenparkplaetze
  SIA SN 521 500 (1/25 WE, 100 m), erstellungspfl. Tatbestaende § 243 (abschliessend BEZ 2001 Nr. 28),
  Massnahmen Bestand § 243 Abs. 2, Lage/**nuetzliche Entfernung § 244** (300/600/150-200 m), Verkehrssicherheit/
  Revers § 244 Abs. 2, Gestaltung/unterirdisch § 244 Abs. 3 (kein Legiferierungsspielraum VB.2013.00754,
  UG-Platz 35-47 kFr.), Ersatzloesungen §§ 245/246 + **Parkplatzfonds § 247**, Veloabstellplaetze § 242 Abs. 1
  (BEZ 2013 Nr. 15); **§ 248 Spiel-/Ruheflaechen** (nur MFH, Umgebungsplan, Flachdach). **SCHLIESST Kap. 13.**
- [neu] **Destillat Kap. 20 Teil 2 / Schluss** [[band-2/20-ausnahmen-teil2-milderung-missstaende-brandstatt]]
  (S. 1456-1457, Shot 732): **§ 357 Abs. 5** Milderung (energetisch; wegen **§ 253a PBG** Aussendaemmung 35 cm
  bedeutungslos, Art. 33a ABV aufgehoben), **§ 358** baupolizeiliche Missstaende (Zufahrt BEZ 2015 Nr. 22 /
  Absturzsicherung VB.2015.00429 / Steinschlag-Aussiedlung BGer 1C_567/2014, i.V.m. § 228 Abs. 1),
  **§ 307 Brandstattrecht** (Wiederaufbau brand-/katastrophenzerstoerter vorschriftswidriger Bauten in Bauzonen
  **innert 3 J.**, Art/Umfang/Lage, verbessernder Wiederaufbau BEZ 1998 Nr. 8; ausserhalb Bauzone Art. 24c
  Abs. 2 RPG). **SCHLIESST Kap. 20.**
- [neu] **Destillat Kap. 21 Teil 2 / Schluss** [[band-2/21-ausserhalb-bauzonen-teil2-art37a-24d-24e-wald]]
  (S. 1504-1513, Shots 756-760): **Art. 37a RPG** zonenfremde Gewerbebauten (Stichtag **1.1.1980**, Art. 43 RPV
  +30 % zonenwidrige Flaeche/ausserhalb Kubus halb/ueber 100 m² betriebsnotwendig BEZ 2009 Nr. 7, «Gewerbe bleibt
  Gewerbe» BGE 140 II 509, restriktiver Baubegriff BGer 1A.186/2004), **Art. 24d Abs. 1** landwirtschaftsfremdes
  Wohnen («Wohnen bleibt Wohnen»/Art. 42a RPV) + **Abs. 2** Rustico (ZH kaum, § 207 Abs. 2 PBG/ZBl 2015 S. 614)
  + **Abs. 3 lit. a-e** gemeinsame Voraussetzungen, **Art. 24e RPG** hobbymaessige Tierhaltung (seit Mai 2014/
  Art. 42b RPV), **Bauen im Wald** (Art. 18 Abs. 3 RPG/Art. 20 Abs. 2 WaG/§§ 4-7 WaG-ZH), **§ 358a PBG** (ZH ohne
  kant. Erweiterung). **SCHLIESST Kap. 21.**
- [neu] **Wiki-Artikel** [[fahrzeugabstellplaetze-und-parkierung]] (`emerging`) — Pflichtparkplaetze ZH als
  buerotaugliche Landkarte (§§ 242-248 PBG). Neue Sektion in wiki/INDEX.md.
- [update] Register nachgefuehrt: seiten-inventar (Shots 449-461/732/756-760 → `[x]`), buecher/INDEX (3 neue
  Destillate + Abdeckungs-Matrix Kap. 13/20/21 auf 🟢 vollstaendig), curriculum (Kap. 13/20/21 VOLLSTAENDIG),
  wiki/QUESTIONS (3 Gaps geschlossen, 2 needs-verification neu). Modell A (Buerofrage autoarme Nutzung) +
  Modell C (6 Karten). Report `outputs/2026-07-10_buch-run25.md`.

## 2026-07-09 — Buch-Run 24: Kap. 8 Schluss / Kap. 13 T2 / Kap. 16 T3 (Forcierung, 3 Kapitelteile, 49 Doppelseiten)
- [neu] **Destillat Kap. 8 Schluss** [[band-1/08-ausfuehrung-teil2-baustellensicherheit]] (S. 510-535,
  Shots 257-269): 8.3 Baustellensicherheit — **Schutz Nachbargrundeigentum § 239 Abs. 1 PBG / Rissprotokoll**
  (privatrechtl., Beweislast Art. 8 ZGB, BEZ 2016 Nr. 15), Feuerpolizei (→ Skill `brandschutz`),
  Arbeitnehmerschutz **VUV/BauAV** (Asbest SUVA Art. 60a/60b BauAV), **Baustellenentsorgung Art. 16 VVEA**
  (Konzept ab > 200 m³), **Bauherren-Altlast 2/3-Rueckgriff Art. 32bis USG**, **Baulaerm** (Stufen A/B/C,
  Art. 6 LSV), **amtl. Vermessung § 19 KVAV** (1 J.). **Kap. 8 endet S. 535 → Band 1 komplett (ausser Kap. 18).**
- [neu] **Destillat Kap. 13 Teil 2** [[band-2/13-weitere-grundanforderungen-teil2]] (S. 858-891, Shots 431-448,
  Shot 434 = Dup): Einordnung-Forts. § 238 (Umgebung/Umschwung § 238 Abs. 3 **ohne** Ausnuetzungswirkung
  BEZ 2011 Nr. 6, Stuetzmauern, Baumschutz §§ 203 ff./76, Neobiota Art. 15 FrSV), Sonstige Beschaffenheit
  § 239 (Regeln der Baukunde/Art. 229 StGB, Baumaterialien BauPG/PrSG), **Verkehrssicherheit §§ 240/241**
  (VSiV/StrAV/EV, **Sichtbereiche 90/150/50 m § 16 StrAV**, Einfriedungen §§ 11/12 StrAV), **Strassenreklamen**
  (Art. 6 SVG/Art. 95-99 SSV). §§ 242/248 erst nach S. 891.
- [neu] **Destillat Kap. 16 Teil 3** [[band-2/16-gebaeudedimensionen-teil3-umgebung]] (S. 1194-1229,
  Shots 601-618): **16.6 Hochhaeuser** (Gebaeudehoehe > 25 m § 282/§ 284, keine erhoehte Ausnuetzung,
  **Schattenwurf > 2 h § 30 ABV**), **16.7 Gebaeudelaenge/-breite** (flaechenkleinstes Rechteck § 28 ABV),
  **16.8 Dachaufbauten Drittelsregel ≤ 1/3 Fassadenlaenge § 292 PBG** (Kamine/Solar/Kreuzfirst zaehlen nicht,
  BEZ 2014 Nr. 9), **16.9 Freilegung UG ≤ 1,5 m ueber gestaltetem Boden § 293 PBG** (§ 280 = gewachsenes T.).
- [geaendert] **Wiki** [[abstaende-und-hoehen]] (`established`) neue Sektion Hochhaeuser/Gebaeudelaenge/
  Dachaufbauten (§§ 282/284/292/293/28/30 ABV) + Links/Quellen; [[bauausfuehrung-und-baukontrolle]] Abschn. 6
  Baustellensicherheit voll ausgebaut (VUV/BauAV/VVEA/Altlast/Baulaerm/KVAV), Quellenspanne → S. 485-535.
- [geaendert] **buecher/INDEX.md** (3 neue Destillate + Abdeckungs-Matrix: Kap. 8 🟢 vollstaendig, Kap. 13/16
  🟢 weitgehend); **seiten-inventar.md** Shots 257-269/431-448/601-618 → [x] + Destillat-Link; **curriculum.md**
  (Status Kap. 8/13/16) + **PROGRAMM.md**-Tracker.
- [geaendert] **wiki/QUESTIONS.md**: Kap. 8 Restschuld + § 293 PBG erledigt; neue needs-verification (Kap.
  8/13/16 §§) + neue Kleinluecken §§ 242/248 (Kap. 13) und 16.9-Schluss.
- [drill] `training/drills.md`: 8 Karten (Modell C, davon 1 Modell-A-Drill Freilegung UG § 293).
- [report] `outputs/2026-07-09_buch-run24.md`.

## 2026-07-08 — Buch-Run 23: Kap. 4 (Natur-/Heimatschutz) → BAND 1 SUBSTANZIELL KOMPLETT
- [neu] **Destillat Kap. 4** [[band-1/04-natur-und-heimatschutz]] (S. 268-309, Shots 134-155, 21 Doppelseiten,
  die letzte offene Sektion von Band 1): **4.1** Rechtsgrundlagen (Art. 78 BV / NHG; ZH PBG III. Titel
  §§ 203-217 + KNHV); **4.2 Schutzobjekt-Katalog § 203 Abs. 1 lit. a-g** (Natur-/Denkmal-/Garten-/
  Archaeologie-Objekte; Denkmalschutz = Substanzschutz, Faustregel ~30 J.; Einzelbaum § 76/§ 238 Abs. 3);
  **4.3 Massnahmen** — Inventare (BLN/ISOS/IVS schutzwuerdig, kant./komm. Vermutung, **binden nur die
  Behoerde**), vorsorglich (Inventareroeffnung § 209 = 1-J-Veraenderungsverbot / § 210), definitiv
  **§ 205 lit. a-d** (**Kernzone § 50 ≠ Substanzschutz** / Schutzverordnung / -verfuegung / -vertrag),
  **Selbstbindung § 204**, projektbez. Schutzentscheid; **4.4** Schutzumfang § 207/§ 10 KNHV,
  Interessenabwaegung (finanzielle Interessen ueberwiegen i.d.R. nicht; Energie vs. Denkmalschutz abwaegbar),
  Verhaeltnismaessigkeit; **4.5 Verfahren** — Zustaendigkeit § 211, **Provokation § 213** (irreversibel),
  Inventarentlassung (keine Massenentlassung), Gutachten ENHK/EKD/NHK/KDK/AK, **Rechtsschutz § 211 Abs. 4**
  (keine aufsch. Wirkung, Ausnahme Aufhebung/negativ), Beitraege Art. 13 NHG (freiwillig).
- [neu] **Wiki-Artikel** [[naturschutz-und-denkmalschutz]] (`emerging`) — synthetisiert Schutzobjekt-Katalog,
  Inventar-Wirkung, die vier definitiven Schutzinstrumente, Interessenabwaegung/Verhaeltnismaessigkeit und
  Verfahren; Backlinks zu [[ausnahmebewilligung-und-bestandesschutz]] / [[bestandsumbau-eingriffstiefe]] /
  [[enteignung-und-entschaedigung]] / [[raumplanung-und-gestaltung]] / [[rechtsschutz-und-rechtsmittelverfahren]].
- [geaendert] **curriculum.md** Kap. 4 → **VOLLSTAENDIG**; **buecher/INDEX.md** (neues Destillat, Coverage
  Kap. 4 🟢 + Kap. 5 🟢, last_updated); **seiten-inventar.md** Shots 134-155 → [x] mit echten Buchseiten +
  Destillat-Link; **wiki/INDEX.md** (neue Sektion «Natur- & Denkmalschutz», Artikelzahl 21→22, Statistik);
  **wiki/QUESTIONS.md** (Kap. 4 erledigt, Band 1 komplett, needs-verification KNHV/§§ PBG/NHG).
- [hinweis] **TCC-Blockade behoben:** die CloudStorage-Screenshots (Run 19 blockiert) sind mit dem Read-Tool
  wieder lesbar.
- [drill] `training/drills.md`: 7 Modell-C-Karten + 1 Modell-A-Drill (Kap. 4).
- [meilenstein] **Band 1 substanziell komplett** (Kap. 1-10); offen nur Kap. 18 Brandschutz = Querverweis
  auf Skill `brandschutz`. Report `outputs/2026-07-08_buch-run23.md`.

## 2026-07-06 — Buch-Run 22: Kap. 9 Teil 2 → Kap. 9 (Rechtsschutz) vollstaendig
- [neu] **Destillat Kap. 9 Teil 2** [[band-1/09-rechtsschutz-teil2-ablauf-kosten-revision]] (S. 576-606,
  Shots 290-306, 17 Doppelseiten): Fristen/Gerichtsferien § 71 VRG, Kostenvorschuss § 15, vier
  Verfahrensphasen § 9.7, **aufschiebende Wirkung § 25 VRG ↔ § 339 PBG** (Teilfreigabe, BEZ 2004 Nr. 43),
  Schriftenwechsel/Replikrecht § 26b, Beiladung, Beweisverfahren (Augenschein/Fachbericht § 18 OV BRG),
  Parteiverhandlung Art. 6 EMRK, Entscheidungsphase, **Kosten** § 338 PBG (500-50'000)/Parteientschaedigung
  § 17 (~1'500-2'500, Gemeinwesen ausnahmsweise), **Wiedererwaegung** (unterbricht Rekursfrist NICHT)/
  Aufsichtsbeschwerde/**Revision § 86a** (90 T/10 J.)/Erlaeuterung, **Mediation § 9.9.6**.
- [neu] **Wiki-Artikel** [[rechtsschutz-und-rechtsmittelverfahren]] (`emerging`) — synthetisiert Kap. 9
  Teil 1 (Instanzen/Legitimation/Kognition) + Teil 2 (Fristen/Ablauf/Kosten/ausserordentliche Rechtsmittel/
  Mediation); schliesst die bisherige Wiki-Luecke «Rechtsschutz».
- [geaendert] **curriculum.md** Kap. 9 → **VOLLSTAENDIG**; **buecher/INDEX.md** (neues Destillat, Coverage
  Kap. 9 🟢); **seiten-inventar.md** Shots 290-306 → [x] mit Destillat-Link; **wiki/INDEX.md** (neue Sektion
  «Rechtsschutz & Rechtsmittel», Artikelzahl 17→21); **wiki/QUESTIONS.md** (Kap. 9 Rest erledigt +
  needs-verification VRG-§§); **PROGRAMM.md** Tracker.
- [drill] **training/drills.md** +7 Karten (Modell C, davon 1 Modell A): § 339-Teilfreigabe, Wiedererwaegung
  ohne Fristunterbruch, 4 Phasen, Parteientschaedigung/Gemeinwesen, Revisionsfristen, Gerichtsferien-Falle,
  Mediation «gemeinsame Tiefgarage».
- [status] **Band 1 offen nur noch Kap. 4** (Natur-/Heimatschutz, P3). Kap. 9 damit vollstaendig.

## 2026-07-04 — Buch-Run 21: Kap. 5 (Planung und Entschaedigung) vollstaendig
- [neu] **Destillat Kap. 5** [[band-1/05-planung-und-entschaedigung]] (S. 311-334, Shots 156-168,
  13 Doppelseiten): formelle Enteignung (Art. 26/36 BV, EntG/AbtrG, Flughafen Laerm/Direktueberflug),
  materielle Enteignung (2 Tatbestaende BGE 125 II 433, Fallgruppen-Landkarte, Abzonungs-~1/3-Schwelle),
  weitere Instrumente (Heimschlag/Zugrecht/Vorkaufsrecht/Mehrwertabschoepfung Art. 5 RPG 20 %),
  Enteignungsverfahren (10-J-Anmeldung § 183ter EG ZGB, Rekurs 20 T § 46 AbtrG, Verkehrswert/Alles-oder-nichts).
- [neu] **Wiki-Artikel** [[enteignung-und-entschaedigung]] (`emerging`) — Fallgruppen-Tabelle + JANS-Relevanz
  (Baulandqualitaet als Angelpunkt fuer machbarkeit/ankaufspruefung; Bewertungs-Methodik fuer immobilienbewertung).
- [update] wiki/INDEX (+ Sektion «Enteignung & Entschaedigung»), QUESTIONS (Band-1-Rest Kap. 5 erledigt;
  §§ 102/103/104 PBG teilgeklaert), buecher/INDEX (+ Kap. 5), seiten-inventar (Shots 156-168 → [x]),
  curriculum (Kap. 5 vollstaendig), drills (+8 Modell-C-Karten). **Band 1 offen nur noch Kap. 4 + Kap. 9-Rest.**
- [modell] C (8 Selbsttest-Karten). Report `outputs/2026-07-04_buch-run21.md`.

## 2026-07-03 — StrAV am Volltext verifiziert, Destillat Kap. 15 Teil 2b korrigiert
- [fix] **StrAV-Mauerregel praezisiert** (offene Frage aus dem Destillat erledigt): Volltext
  StrAV LS 700.4 (SharePoint-Gesetzessammlung, `700.4_19.4.78_69.pdf`) gelesen. Korrekt ist:
  Mauern/geschlossene Einfriedigungen bis 0,8 m an der Strassengrenze ueberall zulaessig; ueber
  0,8 m an geraden Strecken und Kurven-Aussenseiten; an Innenkurven/Verzweigungen/Ein- und
  Ausfahrten Entscheid der Baubehoerde (§§ 7-8 StrAV). Die alte Notiz «0,8 m gerade / 0,6 m
  Kurve» war unpraezis. Zusaetzlich §§ 1, 2, 6, 9, 10, 12, 16 StrAV erfasst
  ([[band-2/15-lage-von-gebaeuden-teil2b]], Sektion 2.12 + Schwellenwert-Tabelle).
- [kontext] Anlass: Zusammenstellung Gartenmauern Gemeinde Thalwil (Projekt 2414, Bohlweg 3).

## 2026-07-03 — Run 20 (Forcierung): 3 Kapitelteile parallel, Kap. 3/10/12 abgeschlossen
- [fix] **TCC-Blockade aus Run 19 umgangen:** das **Read-Tool** liest die OneDrive-CloudStorage-
  Screenshots problemlos (nur `cat`/`cp`/`xattr` waren blockiert). Shot 121 = verifiziert S.240/241.
  Kein separater FDA-Eingriff nötig, solange über das Read-Tool (nicht die Shell) gelesen wird.
- [transfer] **47 Doppelseiten** in 3 parallelen Distillier-Agenten:
  - **Kap. 3 Teil 2** (S.240-265, Shots 121-133): Quartierplan §§ 123 ff. PBG (amtlich § 158 vs. privat
    § 160a/Einstimmigkeit, Quartierplanbann § 150, Verfahren §§ 147-159), Umlegung/Realersatz §§ 137-145,
    Vollzug §§ 161-176 (Heimschlag § 165/60 T), Grenzbereinigung §§ 178-183, Güterzusammenlegung §§ 76-94
    LG → Destillat [[band-1/03-quartierplan-landumlegung-teil2]]. **Kap. 3 vollständig.**
  - **Kap. 12 Teil 4** (S.770-807, Shots 387-406): Anschlussgebühren Art. 60a GSchG, Abfall/Kehricht
    Art. 30-32b USG/VVEA, **Altlasten Art. 32c/32d USG/AltlV/KbS** (Realleistung Standortinhaber ↔
    Kostentragung Verursacher; Bauherren-Altlast Art. 32b bis; Veräusserung Art. 32d bis AWEL) →
    Destillat [[band-2/12-baureife-teil4-gebuehren-abfall-altlasten]]. **Kap. 12 vollständig.**
  - **Kap. 10** (S.609-636, Shots 307-320): widerrechtliche Bauten — formell/materiell, Wiederherstellung
    § 341 PBG (Verhältnismässigkeit, 30-J-Verwirkung), vorsorgl. Massnahmen § 339 Abs. 2/§ 6 VRG,
    Vollstreckung § 30 VRG, **Strafe § 340 PBG bis 50'000** (auch Architekt/Ingenieur; § 340a Verj. 5 J.)
    → Destillat [[band-1/10-widerrechtliche-bauten-teil1]]. **Kap. 10 vollständig — letzte Sektion Band 1.**
- [wiki] **NEU** [[widerrechtliche-bauten-und-sanktionen]] (`emerging`); [[baureife-und-erschliessung]]
  auf **`established`** geschärft (Quartierplan-/Landumlegungs-Block + Abfall/Altlasten-Block).
  INDEX/QUESTIONS nachgeführt (3 Lücken geschlossen, 2 needs-verification neu).
- [drill] +9 Modell-C-Karten (`training/drills.md`): Quartierplan/Altlasten/Schwarzbau je 3.
- [register] `seiten-inventar.md` 47 Shots auf [x] + verlinkt; `INDEX.md` (Abdeckung Kap. 3/10/12 →
  🟢 vollständig); `curriculum.md` Status Kap. 3/10/12 auf [x].
- [report] `outputs/2026-07-03_buch-run20.md`.
- [offen] Band 1 nur noch **Kap. 4** (Natur-/Heimatschutz P3) + **Kap. 5** (Entschädigung P3) + Kap. 9
  Rest S.575-608. Forcierung noch nicht abgeschlossen.

## 2026-07-02 — Run 19 ABGEBROCHEN: TRANSFER durch macOS TCC blockiert
- [blockade] Quell-Screenshots im OneDrive-CloudStorage-Ordner **nicht lesbar** (TCC): `stat`
  liefert echte Groessen (Shot 121 = 1 497 857 Bytes, materialisiert, OneDrive online), aber
  `cat`/`head`/`xattr`/`cp` liefern **«Operation not permitted»** — auch ohne Sandbox. Der
  ausfuehrende Prozess hat keinen Festplattenvollzugriff auf den geschuetzten CloudStorage-Ort
  (analog launchd→SMB-Blockade). **Kein Distillat geschrieben** (Leitplanke «nie erfinden»),
  Inventar/Curriculum/INDEX **unveraendert**.
- [report] `outputs/2026-07-02_buch-run19-BLOCKED.md` — Befund, Reproduktion, Fix (Festplatten-
  vollzugriff fuer Claude-App/`/bin/bash`; vgl. `scripts/check-launchd-fda.sh`), SharePoint-
  Fallback als Notoption.
- [drill] +1 belegte Modell-A-Karte (Erschliessungspflicht 15 J. / Selbsterschliessung Art. 19
  Abs. 3 RPG) — ausschliesslich aus vorhandenem Destillat, keine neuen Seiten (`training/drills.md`).
- [offen] TCC-Fix umsetzen; danach **Kap. 3 Teil 2** (Shots 121-133, S. 238 ff.: Quartierplan/
  Grenzbereinigung/Baulandumlegung/Gueterzusammenlegung) als naechster TRANSFER.

## 2026-07-02 — Run 18 Forcierung: 3 Kapitelteile parallel (Band-1-Tail + Kap.-6-Restschuld)
- TRANSFER 3 Destillate (von parallelen Agenten, Buchhaltung zentral), **46 Doppelseiten**:
  **Kap. 2 Teil 3** `buecher/band-1/02-nutzungsplanung-sondernutzung-verfahren-teil3.md` (Shots 76+86-104,
  S. 170-204): **Sondernutzung/Gestaltungsplan §§ 83-89 PBG** (§ 83 ersetzt Grundordnung; oeffentlich § 84/
  privat **2/3-Quorum § 85 Abs. 2**/Aufhebung 5 J. §§ 82/87), **Gestaltungsplanpflicht § 48 Abs. 3**,
  **preisguenstiger Wohnraum § 49b** (`speculative`), **Verfahren Nutzungsplanung** (Auflage **60 Tage**
  Art. 4 RPG/§ 7, Festsetzung § 88, **kant. Genehmigung § 89/Art. 26 Abs. 3 RPG konstitutiv**), **Prinzip
  des einmaligen Rechtsschutzes**. **Kap. 3 Teil 1** `buecher/band-1/03-erschliessung-landsicherung-teil1.md`
  (Shots 105-120, S. 208-239): **Erschliessungsarten** (Grund-/Grob-/Feinerschliessung, Art. 19 RPG/Art. 4-5
  WEG), **Erschliessungspflicht Gemeinde** (15 J., Selbsterschliessung/Bevorschussung Art. 19 Abs. 3 RPG),
  Erschliessungsplan §§ 90-95, **Baulinien §§ 96 ff./Niveaulinien § 106**, **Werkplan §§ 114-119 + vorsorgl.
  Bauverbot §§ 120-122** (verfaellt 5 J.), StrG-**Mehrwertbeitraege ¼-½ § 62**. **Kap. 6 Teil 2**
  `buecher/band-1/06-baurechtliches-verfahren-teil2.md` (Shots 202-211, S. 402-421): **Anzeigeverfahren
  § 325 PBG/§§ 13-15 BVV** (3 kumulative Voraussetzungen; faellt weg in Kern-/Quartiererhaltungszone +
  BehiG-Umbau), **private Kontrolle §§ 4-7 BBV I**, Zustellbegehren §§ 315/316. Alle `emerging`.
  Zusaetzlich Shot 76/S. 150-151 (Run-17-OneDrive-Luecke) nachgelesen.
- VERDICHTUNG 3 Wiki-Artikel geschaerft: [[raumplanung-und-gestaltung]] (Gestaltungsplan §§ 83-89 +
  Verfahren Nutzungsplanung), [[baureife-und-erschliessung]] (Erschliessungsarten/-pflicht + Landsicherung
  Kap. 3), [[baubewilligungsverfahren]] (Anzeigeverfahren + private Kontrolle + einmaliger Rechtsschutz).
  **Modell-D-Korrektur** in [[baubewilligungsverfahren]]: § 315 PBG von faelschlich «30 Tage» auf **20 Tage
  Zustellbegehren** korrigiert (Beleg Kap.-6-Destillate + VB.2015.00248).
- ANWENDUNG `training/drills.md` Bloecke «Run 18»: Modell C (11 Karten) + Modell A (Gestaltungsplan 2/3-Quorum,
  schliesst die Run-17-Folgefrage).
- REGISTER `seiten-inventar.md` (46 Shots → [x]), `buecher/INDEX.md` (3 neue Destillate + Matrix Kap. 2/3/6),
  `curriculum.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md` (Kap. 2 T3 + Kap. 6 Rest erledigt, Tension 20/30 T geloest).
- REPORT `outputs/2026-07-02_buch-run18.md`.
- ERGEBNIS: **Kap. 6 vollstaendig**, **Kap. 2 weitgehend**, **Kap. 3 eroeffnet**. OFFEN: Kap. 3 Teil 2
  (Landumlegung ab S. 238), Kap. 5/10, Kap. 12 Teil 4. Forcierung nicht abgeschlossen.

## 2026-07-01 — Wissens-Health-Check (Phase 1): A0·B0·C3·D0·E0·F1·G3 — Top: Frontmatter-Schema uneinheitlich (6 Artikel `name:`/`paragraphen:` statt `title:`/`sources:`); 2 alte C-Luecken offen (Gebuehren 1-3 %o, BZO-Richtwerte); 3 Promotionskandidaten (Vorentscheid/Ausnahmebewilligung/Nebenbestimmungen emerging→established). Report `outputs/2026-07-01_health-check.md`. Nur-Audit, keine Aktionen.

## 2026-06-30 — Run 17: Kap. 2 Teil 2 (Nutzungsplanung / Zonenarten)
- TRANSFER NEU `buecher/band-1/02-nutzungsplanung-zonenarten-teil2.md` (Shots 73-85 ohne 76,
  S. 144-169, **12 Doppelseiten**): Abschnitt 2.3 Nutzungsplanung — grundeigentuemerverbindlich
  (Art. 21 RPG), **numerus clausus Bauzonentypen § 48 Abs. 2 PBG** (Kern § 50/Quartiererhaltung § 50a/
  Zentrum § 51/Wohn § 52/Industrie-Gewerbe § 56 [Heime ausgeschlossen]/oeff. Bauten § 60/Erholung § 61/
  Freihalte § 39,62/Reserve § 65/**Weiler Art. 33 RPV ≥ 10 Geb.**), **Neueinzonung Art. 15 Abs. 4 RPG**
  (4 kumulativ), **Arealueberbauung §§ 69-73 PBG** («Ringling» BGer 1C_313/2015), Grundzonenplan 1:5000
  (§§ 4/10 VDNP), Waldbegriff § 2 WaG-ZH (800 m²/12 m/20 J.), Grundwasserschutz S1/S2/S3. `emerging`.
- VERDICHTUNG [[raumplanung-und-gestaltung]] (`established`) geschaerft: **Zonenarten/BZO-Platzhalter
  gefuellt** (Numerus clausus, Typ-Katalog, Neueinzonungskriterien, Arealueberbauung); sources nachgefuehrt.
- ANWENDUNG `training/drills.md` Block «Run 17»: Modell C (6 Karten) + Modell A (Pflegewohngruppe auf
  Industrieparzelle → Umzonung/Gestaltungsplan).
- REGISTER `seiten-inventar.md` (Shots 73-85 ohne 76 → [x]), `curriculum.md` (Kap. 2), `buecher/INDEX.md`,
  `wiki/INDEX.md`, `wiki/QUESTIONS.md` (Restschuld Kap. 2 T2 teil-erledigt + 2 needs-verification).
- REPORT `outputs/2026-06-30_buch-run17.md`.
- OFFEN: Shot 76/S. 150-151 (OneDrive-I/O-Fehler) nachholen; Kap. 2 Teil 3 Sondernutzungs-/
  Gestaltungsplan §§ 83 ff. PBG ab S. 169/170.

## 2026-06-30 — Run 16 Forcierung: 3 Kapitelteile parallel (Band-1-Tail + Kap. 12 T3)
- TRANSFER 3 Destillate (von parallelen Agenten, Buchhaltung zentral), **46 Doppelseiten**:
  **Kap. 1** `buecher/band-1/01-grundlagen.md` (Shots 41-56, S. 80-110): **VOLLSTAENDIG** — oeff./privates
  Baurecht (§ 317 PBG), Rechtsquellen, **SIA-Normen-Verbindlichkeit** (§ 3 Abs. 12 BBV I / § 360 Abs. 3
  PBG), Verfassungsgrundsaetze (Verhaeltnismaessigkeit/Rechtsgleichheit/Treu+Glauben), intertemporales
  Recht § 318 PBG, Aufbau PBG VII Titel. NEU, `emerging`.
  **Kap. 2 Teil 1** `buecher/band-1/02-raumplanung-richtplanung-nutzungsplanung.md` (Shots 57-72,
  S. 112-143): Raumplanung als Oberbegriff, **Ziele Art. 1 RPG**, **15-J-Bauzone Art. 15 RPG**,
  **Koordination Art. 25a RPG**, **Planungszone § 346 PBG**, OEREB-Kataster, **Richtplan behoerden-
  verbindlich Art. 9 RPG/§ 19 PBG**, Beginn Nutzungsplanung. NEU, `emerging` (Teil 2 ab 2.3 offen).
  **Kap. 12 Teil 3** `buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md` (Shots 373-386,
  S. 742-769): **rechtliche Sicherung § 237 Abs. 4 PBG** (Benuetzungsrechte/Notwegrecht Art. 694 ZGB),
  **Wasser/Energie § 236 PBG** (Loeschwasser § 16 FeuerwehrV 100/60 m, Grundwasserschutzzonen S1/S2/S3,
  Energie zwingend), **Abwasser** (GSchG/Kanalisationsanschluss Art. 17, GEP § 8 KGSchV). NEU, `emerging`
  (Teil 4 S. 770-809: Abfall/Altlasten Art. 32c USG offen). **Nebenfund:** EV (§ 11/12) im Buch S. 750 als
  geltend zitiert → loest needs-verification «EV in Kraft?».
- NEU Wiki `wiki/grundlagen-planungs-baurecht.md` (`emerging`): dogmatische Klammer (oeff./privates Recht,
  Rechtsquellen, SIA-Normen-Verbindlichkeit, Verfassungsgrundsaetze, intertemporales Recht). In `wiki/INDEX.md`.
- GESCHAERFT Wiki `raumplanung-und-gestaltung.md` (Planungsstufen mit §-Belegen, Planungszone, OEREB) +
  `baureife-und-erschliessung.md` (NEU Sektionen rechtliche Sicherung § 237 Abs. 4 + Versorgung/Entsorgung
  § 236, EV-Stand § 11/12).
- BUCHHALTUNG `seiten-inventar.md` 46 Shots [x] (41-56, 57-72, 373-386) + reale Seiten; `buecher/INDEX.md`
  3 Eintraege + Matrix (Kap. 1 🟢, Kap. 2 🟡, Kap. 12 erweitert); `curriculum.md` + `training/PROGRAMM.md`
  Tracker; `wiki/QUESTIONS.md` (Kap. 1 geschlossen, Kap. 2 T2 + Kap. 12 T4 neu, EV geklaert);
  `training/drills.md` Modell C (6) + A (1); Report `outputs/2026-06-30_buch-run16.md`.

## 2026-06-29 — Welle 1 Forcierung: 10 Destillate Band 2 (Buchhaltung zentral nachgefuehrt)
- WELLE In EINER parallelen Welle (von parallelen Agenten) **10 Buch-Destillate Band 2** geschrieben;
  die gemeinsame Buchhaltung in diesem Lauf zentral nachgefuehrt:
  **Kap. 11** `buecher/band-2/11-allgemeine-bestimmungen-baupolizeirecht.md` (Shots 345-354, S. 686-704):
  §§ 218-232 PBG, **Hammerschlagsrecht §§ 229/230 PBG**. NEU, `emerging`.
  **Kap. 13 Teil 1** `13-weitere-grundanforderungen.md` (Shots 407-430, S. 810-857): **§ 238
  Aesthetik-Generalklausel**, **Solar Art. 18a RPG**. NEU, `emerging` (Rest §§ 239a/240/242/248 ab Shot 431).
  **Kap. 16 Teil 2** `16-gebaeudedimensionen-teil2-hoehen-dach.md` (Shots 581-600, S. 1154-1193):
  Gebaeudehoehe §§ 278/279/280, **Firsthoehe § 281**, **§ 292/Art. 7a BO «Kaeseglocke»**, **§ 5 ABV
  gewachsener Boden**. NEU, `emerging` («Umgebung» ab Shot 601 offen).
  **Kap. 17 Teil 2** `17-gebaeude-und-raeume-teil2-ausruestungen.md` (Shots 632-655, S. 1256-1303):
  §§ 295-298 PBG Heizung/Fernwaerme, **§ 4 ABV**, **§§ 239a/239b BehiG** (Hindernisfreiheit), Schutzraeume.
  NEU, `emerging` (Garagen §§ 37-39 BBV I offen).
  **Kap. 19** `19-baulicher-umweltschutz.md` (Shots 682-705, S. 1357-1403): USG/LRV/LSV, **Laerm ES I-IV**,
  **Art. 31/32 LSV**, SIA 181. NEU, `emerging` (Rest ab Shot 706 offen).
  **Kap. 20 Rest** `20-ausnahmen-bestandesschutz.md` ERWEITERT (Shots 729-731, S. 1450-1455): **§ 357 Abs. 4
  Verbesserungen** + Erweiterungs-/Nutzungsaenderungs-Kasuistik. bleibt `emerging` (§ 357 Abs. 5 +
  baupolizeil. Missstaende + Brandstattrecht § 307 ab Shot 732 offen).
  **Kap. 15 § 274** `15-lage-von-gebaeuden-teil2d.md` ERWEITERT (Shots 560-570, S. 1112-1123): **§ 274 PBG
  Grenzbaurecht** + **§ 27 Abs. 2 ABV**. Damit Kap. 15 bis auf 15.13 «Harmonisierungsvorlage» (S. 1124-1133) komplett.
  **Kap. 21** `21-bauen-ausserhalb-bauzonen.md` (Shots 733-755, S. 1459-1503): **Art. 16/16a/24/24a-e RPG**,
  **Art. 42 RPV** (30 % / 100 m²), **Stichtag 1.7.1972**. NEU, `emerging` (Rest Art. 24d/24e/37a ab Shot 756).
  **Kap. 22** `22-privatrechtliche-bauvorschriften.md` (Shots 761-773, S. 1517-1534): Nachbarrecht **ZGB
  Art. 679/684/685 ff.**, **§§ 169-178 EG ZGB Pflanzenabstaende**. NEU, `emerging`.
  **Kap. 23** `23-glossar-architektur.md` (Shots 774-781, S. 1537-1549): Glossar mit §-Belegen. NEU, `emerging`.
- BILANZ **Band 2 weitgehend komplett**; Tail = Band 1 Kap. 1-5/10 (via taeglichem Loop) + Kap. 12-Rest § 236.
- REGISTER nachgefuehrt: `buecher/seiten-inventar.md` (Shots 345-354/407-430/560-570/581-600/632-655/682-705/
  729-731/733-755/761-781 → [x] + echte Seiten + Destillat-Link, 159 Zeilen), `buecher/INDEX.md` (8 neue
  Eintraege + Kap. 15/20 erweitert + Abdeckungs-Matrix Kap. 11/13/16/17/19/21/22/23 ergaenzt, Kap. 15 🟢,
  «uebrige» auf Band 1 Kap. 1-5/10 reduziert), `training/curriculum.md` (Status-Flags Kap. 11/13/15/16/17/19/
  20/21/22/23), `training/PROGRAMM.md` (Tracker: ~289 Doppelseiten, 23 Destillate, Welle-1-Eintrag, naechster
  Lauf Band-1-Tail + Kap. 12-Rest). Die 10 Destillat-Dateien selbst in diesem Lauf NICHT veraendert (nur Buchhaltung).

## 2026-06-28 — Buch-Destillat BAND 2 Kap. 12 Teil 2 (Zugaenglichkeit/OEV), Run 15 (Phase 2)
- ERWEITERT `buecher/band-2/12-baureife.md` um **Teil 2 (Shots 364-372, echte Seiten 724-741,
  9 Doppelseiten)**: **12.3.3 Technische Anforderungen/Zugangsarten** (§ 2 Abs. 1 ZN) mit der
  **Anhang-ZN-Tabelle (S. 726)** als Markdown (Breite/Radius/lichte Hoehe je WE-Zahl, Kriterium
  Wohneinheiten = baulich Moegliches VB.2002.00273); **12.3.3.3 Kehrplatz** (Stichstrasse, VSS-Norm
  SN 640 052, VB.2016.00566/VB.2010.00107); **12.3.3.4 Erhoehung der Grenzwerte** (§ 4 Abs. 2 ZN,
  dichte+OEV-gute Bebauung, Wegleitung 1997); **12.3.3.5 Fussgaengerschutz** (Bankett ≥ 30 cm /
  Trottoir ≥ 1 m, VB.2010.00184; EFH-Ausnahme BEZ 2010 Nr. 4); **12.3.3.6/7 Sonderfaelle &
  Erleichterungen** (§ 5 Abs. 3 / § 11 / § 12 ZN; **wichtige Gruende § 360 Abs. 3 PBG**; letzte
  Bauluecke VB.2005.00261/VB.2015.00010); **12.3.3.9 Umweltschutzrecht** (Art. 24 Abs. 2 USG / Art. 30
  LSV: voll erstellt, nur Hausanschluesse; Planungswerte § 128 Abs. 2 PBG); **12.3.4 groessere
  Ueberbauungen** (Gleisanschluesse § 237 Abs. 1; Trennung Fahrzeug-/Fussgaengerverkehr § 237 Abs. 3;
  Einkaufszentren ab 2000 m² § 12 Abs. 1 BBV II; Schwertransporte § 227 PBG/§ 21 BVV); **12.3.5
  Erreichbarkeit OEV § 237 Abs. 1 Satz 2 PBG** (kein Erschliessungsanspruch URP 2000/2002, ABER Pflicht
  ab «groesserer Ueberbauung» 300 Bew./Arb./Ausb. → Haltestelle § 4 Abs. 1 AngebotsV; Bedienungsqualitaet
  § 18 PVG). Frontmatter seiten/shots/paragraphen/last_updated nachgefuehrt; Restschuld jetzt ab S. 742.
- GESCHAERFT `wiki/baureife-und-erschliessung.md` (emerging): neue Sektionen **Zugangsarten &
  Dimensionierung (Anhang-ZN-Tabelle)**, **Erschliessung i.S.d. Umweltschutzrechts**, **Erreichbarkeit
  mit dem OEV (§ 237 Abs. 1 Satz 2)** + 2 JANS-Anwendungs-Bullets (Zugangsart aus vollem Nutzungs-
  potenzial; OEV ↔ Stellplatz). Source-Frontmatter um ZN/AngebotsV/§ 18 PVG/Art. 24 USG/§ 360 PBG.
- NACHGEFUEHRT `wiki/QUESTIONS.md` (Coverage-Gap Zugaenglichkeit-Detail/OEV erledigt; Restschuld auf
  S. 742 ff. verschoben; neue needs-verification Teil-2-§§), `buecher/INDEX.md` (Kap.-12-Eintrag
  Teil 1+2 NEU + Abdeckungs-Matrix-Zeile 12), `buecher/seiten-inventar.md` (Shots 364-372 → [x],
  echte Seiten 724-741), `training/drills.md` (6 Modell-C-Karten + 1 Modell-A-Drill).
- REPORT `outputs/2026-06-28_buch-run15.md`.

## 2026-06-26 — Buch-Destillat BAND 2 Kap. 12 Teil 1 (Baureife), Run 14 (Phase 2)
- NEU `buecher/band-2/12-baureife.md` (Shots 355-363, echte Seiten 707-723, 9 Doppelseiten):
  **12.1 Allgemeines** — Baureife = erstes der materiellen Grundanforderungen (§§ 233-249 PBG); baureif =
  **erschlossen** (Zugaenglichkeit/Wasser/Energie/Abwasser-Abfall-Altlasten, § 234/§ 236 PBG, Art. 19 RPG)
  + planungsrechtlich unbedenklich; massgebender Zeitpunkt **Bezugsbereitschaft**, teils Baubeginn
  (§ 233 Abs. 1); **wesentliche Abweichung bei Umbau/Nutzungsaenderung § 233 Abs. 2** (VB-Kasuistik:
  Dorfladen+Imbiss+5 PP wesentlich VB.2006.00403; Zweitwohnung/Attika/Dachfenster nicht wesentlich).
  **12.2 Planungsrechtliche Baureife § 234** — **nur negative Vorwirkung** (Bausperre, VB.2008.00044),
  4 Voraussetzungen, was als kuenftige «Planung» zaehlt (Nutzungsplan/BZO/Gestaltungsplan/Baulinien;
  Richtplan erst ueber konkrete Entwuerfe, Masterplan parzellenscharf BGer 1C_317/2008), Abgrenzung
  Quartierplanbann § 150 / Verkehrsbaulinien § 264 / **Planungszone § 346** (3 J. + 2 J., = Art. 27 RPG) /
  Landsicherung § 120, Dauer § 235. **12.3 Zugaenglichkeit Teil 1** — §§ 234-237 PBG, Konkretisierung
  ZN/VSiV/StrAV → geplante **Erschliessungsverordnung EV**, Umweltrecht-Grenze (Laerm Art. 14 USG),
  **Erreichbarkeit 80 m** (max. **40 m** bei Hoehe > 13 m / starker Personenbelegung, RB 1995 Nr. 80),
  **Notzufahrt 3 m breit / 16 t § 3 ZN**, Baustellenverkehr verhaeltnismaessig.
- NEU `wiki/baureife-und-erschliessung.md` (status emerging) — verdichtet die zwei Achsen der Baureife
  (technische Erschliessung + planungsrechtliche Baureife) mit den Praxis-Schwellenwerten; Backlinks zu
  [[baubewilligungsverfahren]]/[[zonenkonformitaet]]/[[ausnahmebewilligung-und-bestandesschutz]]/
  [[bestandsumbau-eingriffstiefe]]/[[baulinien-und-abstandslinien]]/[[12-baureife]]. Schliesst eine echte
  Coverage-Luecke (Baureife/Erschliessung war nirgends im Wiki).
- DRILLS `training/drills.md` — Modell C (6 Karten Kap. 12) + Modell A (Beleg-Drill Klinik-Erreichbarkeit
  40-m-Regel).
- REGISTER aktualisiert: `seiten-inventar.md` Shots 355-363 → [x] + echte Seiten 706-723 + Destillat-Link;
  `curriculum.md` Kap. 12 [~] + naechster Lauf Kap. 13; `wiki/INDEX.md` neue Sektion «Baureife &
  Erschliessung» + Statistik (15 Artikel); `wiki/QUESTIONS.md` Run-14-Luecken (Rest Kap. 12 ab S. 724,
  EV-Stand, Wortlaut-Verifikation §§ 233-237/120/150/264/346 PBG).
- Lern-Report `outputs/2026-06-26_buch-run14.md`.

## 2026-06-22 — Buch-Destillat BAND 1 Kap. 8 Teil 1 (Ausfuehrung von Bauarbeiten), Run 13 (Phase 2)
- NEU `buecher/band-1/08-ausfuehrung-von-bauarbeiten.md` (Shots 244-256, echte Seiten 485-509, 12 Doppel-
  seiten): **8.1 Bauausfuehrung/Baukontrolle** — Baubeginn = **Aushub** mit Ausfuehrungswillen (BEZ 1987
  Nr. 38; nicht Abstecken RB 1994 Nr. 88), **Baufreigabe vor Baubeginn § 326 PBG** (rechtskraeftige
  Bewilligung genuegt nicht; vorzeitige Baufreigabe), **Meldepflichten § 327 Abs. 1 PBG** (Schnurgeruest/
  Kanalisation/Rohbau/Bezug § 23 BVV; Abbruch nur Kernzone bewilligungspflichtig § 309 Abs. 1 lit. c, sonst
  meldepflichtig; **Asbest Art. 3a ABV / Art. 16 VVEA** auch ohne Baubewilligung), **baupolizeil. Kontrollen
  § 327 Abs. 2 PBG** (**Realakt, keine Verfuegung** → § 10c VRG/Art. 29a BV; Abbruchbefehl = Verfuegung
  § 329; Drohnen KGer LU 18.4.2018 Horw/Datenschutz; Auswertung § 24 BVV), **Bezugsbewilligung/Schluss-
  kontrolle** (§ 12a BBV II, Austrocknung SIA 180, Gelaender SIA 358, BGer 1C_333/2017), **Akteneinsicht
  §§ 8/9 VRG**; **8.2 Unterbruch § 328 PBG** («ewige Baustelle»; **Arealueberbauung max. 2 J.**; Ersatz-
  vornahme § 30 VRG / ges. Pfandrecht § 15 VRG); **8.3 Sicherheit/Regeln der Baukunde § 239 PBG** (Anfang).
- NEU `wiki/bauausfuehrung-und-baukontrolle.md` (`emerging`) — erster Wiki-Artikel zur **Ausfuehrungsphase**
  (§§ 326-328/239 PBG); schliesst Luecke zwischen [[baubewilligungsverfahren]] und Ausfuehrung.
- `training/drills.md`: 6 neue Modell-C-Karten + 1 Modell-A-Drill (Kap. 8).
- `outputs/2026-06-22_buch-run13.md` Lern-Report.
- Register nachgefuehrt: `buecher/seiten-inventar.md` (Shots 245-256 [x]), `buecher/INDEX.md` (+Destillat,
  Matrix Kap. 7 🟢 / Kap. 8 🟡), `wiki/INDEX.md` (15 Artikel), `wiki/QUESTIONS.md` (Kap.-8-Luecken),
  `training/curriculum.md` + `training/PROGRAMM.md` (Tracker, naechster Lauf Kap. 12/13).

## 2026-06-21 — Buch-Destillat BAND 1 Kap. 7 Teil 2 (Gueltigkeit/Widerruf/Vorentscheid/Auskuenfte), Run 12 — **Kap. 7 abgeschlossen → Phase 2**
- NEU `buecher/band-1/07-vorentscheid-auskuenfte-besondere-zustaendigkeiten.md` (Shots 226-244, echte
  Seiten 448-484, 19 Doppelseiten): Abschluss **7.1** (Kosten/Verzugszins 5 % § 29a VRG, Rechtsmittel-
  belehrung § 10 VRG/Art. 49 BGG, **Zustellung** + **Zustellfiktion 7. Tag** Art. 138 ZPO, Zustelladressaten
  § 315/§ 316 PBG), **7.1.5 Gueltigkeit der Baubewilligung** (= **3 Jahre** § 322 Abs. 1 PBG, **Verwirkung,
  nicht verlaengerbar**; Fristbeginn = Rechtskraft der **letzten** koordinationspflichtigen Bewilligung
  § 322 Abs. 2/3, § 20 BVV; Fristwahrung = **Baubeginn** Aushub/Abbruch, nicht Baufreigabe; Stillstand
  § 328 PBG), **7.1.6 Widerruf** (materielle Rechtsbestaendigkeit BEZ 2014 Nr. 32; nach Bauvollendung grds.
  nicht; Taeuschung/ueberwiegendes Interesse → Vertrauensschaden Art. 9 BV, BGer 2C_960/2013), **7.2 Besondere
  kantonale Zustaendigkeiten (Anhang BVV)** (§ 2 lit. c/§ 7 BVV; AFV Strassen §§ 96/240/265, ausserhalb
  Bauzone Art. 24 ff. RPG, ALN Wald 15 m § 262, AWEL Gewaesser § 8 EG GSchG, Laerm/Stoerfall, Befoerderungs-
  anlagen § 296/§ 3 BBV I, UVP Art. 10a USG/KOFU), **7.3 baurechtlicher Vorentscheid §§ 323/324 PBG**
  (teilverbindlich, **3 J. Bindung**, nur grundlegende projektunabhaengige Rechtsfragen, Kaufinteressent ohne
  Baubefugnis VB.2013.00271, Drittwirkung seit 1.7.2014, BEZ 2014 Nr. 34), **7.4 Auskuenfte** (Treu+Glauben,
  **5 kumulative** Voraussetzungen, Beweislast Art. 8 ZGB) / **Verhandlungsloesungen**. Status `emerging`.
- NEU Wiki `wiki/baurechtlicher-vorentscheid-und-voranfrage.md` (`emerging`): Vorentscheid als Kernwerkzeug
  der Vorabklaerung, Abgrenzung Auskunft/Verhandlungsloesung; speist `behoerden-vorabklaerung`/`machbarkeit`/
  `ankaufspruefung`. Schliesst die HOHE-Bueroprio-Luecke aus QUESTIONS (2026-06-19).
- KORREKTUR (Modell D) `wiki/baubewilligungsverfahren.md`: «Baubeginn-Frist auf Gesuch verlaengerbar» war
  **falsch** → § 322 Abs. 1 PBG ist Verwirkung (nicht verlaengerbar); berichtigt + § 322/§ 328 PBG belegt;
  Backlink [[baurechtlicher-vorentscheid-und-voranfrage]] gesetzt, Schritt 1 «Voranfrage» verlinkt.
- DRILLS `training/drills.md`: **Modell C** 7 neue Karten (Gueltigkeit/Vorentscheid/Auskunft/Widerruf) +
  **Modell D** Gegenprobe (Korrektur Verwirkungsfrist dokumentiert).
- REGISTER: `seiten-inventar.md` Shots 226-244 → [x]; `curriculum.md` Kap. 7 → **[x] vollstaendig** +
  Phasenwechsel; `buecher/INDEX.md` + `wiki/INDEX.md` + `wiki/QUESTIONS.md` nachgefuehrt.
- PHASE: ALLE P1-Kapitel (14/16/15/17/20/6/7) im Kern erfasst → **Phase 2 (alle 2 Tage)**, Cron `30 7 */2 * *`.

## 2026-06-19 — Buch-Destillat BAND 1 Kap. 7 Teil 1 (Der kommunale baurechtliche Entscheid), Run 11
- NEU `buecher/band-1/07-zustaendigkeiten-entscheide-auskuenfte.md` (Shots 213-225, echte Seiten 424-447,
  11 Doppelseiten; Shot 215 Duplikat, Shots 217/224 ueberbelichtet → needs-verification): Abschnitt **7.1
  «Der kommunale baurechtliche Entscheid»** vollstaendig — **Rechtsnatur** (Polizeierlaubnis, sachbezogen/
  geht mit Grundstueck ueber, mitwirkungsbeduerftig BEZ 2014 Nr. 45), **Zustaendigkeit** (oertliche
  Baubehoerde § 318 PBG; GG-Delegationen: eigenstaendige/unterstellte Kommission §§ 51/50 GG, Ausschuss
  § 44 GG, Bauvorstand/Mitglieder § 41 GG, Gemeindeangestellte § 45 GG/Anzeigeverfahren), **kein gemeinde-
  internes Einspracheverfahren** (§ 315 Abs. 3 PBG geht § 170 GG vor; direkt-Rekurs § 329 PBG; BRGE II
  Nr. 0153/2018), **Ausstand** (Art. 29/30 BV; Aufhebung/Nichtigkeit BGE 136 II 383), **Inhalt** Rubrum/
  Begruendung/Dispositiv (Plaene integrierter Bestandteil; Begruendungspflicht § 10a VRG/§ 320 PBG/§ 360
  Abs. 3 PBG), **Nebenbestimmungen § 321 PBG** (Auflage erzwingbar § 326 PBG vs. Bedingung; Befristung/
  Provisorium kein Bestandesschutz/max. 5 J./BEZ 1992 Nr. 8; **Revers**-Typen; Grundbuch-Anmerkung
  deklaratorisch BGE 111 Ia 183/Art. 164 GBV), **Kostenentscheid**-Beginn (§ 13 VRG/§ 340f PBG). Status
  `emerging` (7.2/7.3 Auskuenfte + baurechtl. Vorentscheid/Voranfrage S. 448-484 offen).
- NEU Wiki `wiki/nebenbestimmungen-und-reverse.md` (`emerging`): Nebenbestimmungen der Baubewilligung
  (§ 321 PBG) — Heilungsschwelle «ohne besondere Schwierigkeiten» vs. konzeptionelle Ueberarbeitung
  (BEZ 2017 Nr. 30), Auflage vs. Bedingung vs. Befristung vs. Revers, Revers-Typen (Areal-/Beseitigungs-/
  Mehrwert-/Quartierplan-/Verlegungs-/Ausnuetzungs-/Nutzungsrevers), Grundbuch-Anmerkung deklaratorisch,
  «Revers vor Baubeginn» = Auflage (BEZ 2004 Nr. 67). **Faktenbasis fuer Skill `auflagebereinigung`.**
- GESCHAERFT `wiki/baubewilligungsverfahren.md`: zwei neue Sektionen «Zustaendigkeit: wer ist die
  Baubehoerde?» (§ 318 PBG + GG-Delegationen, § 315 Abs. 3 vor § 170 GG, § 329 direkt-Rekurs) und
  «Inhalt des Entscheids & Nebenbestimmungen» (Rubrum/Begruendung/Dispositiv) + Backlinks.
- DRILLS `training/drills.md`: 7 Modell-C-Karten + 1 Modell-A-Buerofrage (Auflage vs. Bedingung beim
  «Revers vor Baubeginn») zu Kap. 7.
- REGISTER `buecher/seiten-inventar.md` (Shots 213-225 → [x] + echte Seiten), `buecher/INDEX.md`
  (Kap.-7-Eintrag + Matrix-Zeile), `training/curriculum.md` (Kap. 7 [~] + naechster Lauf Teil 2),
  `wiki/INDEX.md` (13 Artikel) + `wiki/QUESTIONS.md` (7.2/7.3 + needs-verification).
- HINWEIS Phase 1 (taeglich) **noch nicht** auf alle 2 Tage heruntergetaktet: P1 ist erst mit dem
  buerorelevanten Kap. 7 **Teil 2** (Voranfrage/Vorentscheid) im Kern vollstaendig — ein weiterer
  taeglicher Lauf, dann Phasenwechsel + Cron-Anpassung.

## 2026-06-18 — Buch-Destillat BAND 2 Kap. 20 (Ausnahmen / Bestandesschutz), Run 10
- NEU `buecher/band-2/20-ausnahmen-bestandesschutz.md` (Shots 720-728, echte Seiten 1433-1449, 8 Doppel-
  seiten; Kapitel-Kern, reicht weiter): **vier Tatbestaende** fuer vorschriftswidrige Bauten (§ 220 /
  § 357 / baupolizeil. Missstaende / Brandstattrecht § 307); **§ 220 PBG Ausnahmebewilligung** —
  Geltungsbereich (nur kant./komm. Recht, **nie Bundesrecht/Erschliessung**; Legaldefinitionen § 49
  Abs. 3/§ 269/§ 275 dispensfeindlich), drei Voraussetzungen (besondere Verhaeltnisse / Gesetzeszweck+
  oeffentl. Interessen / Nachbarschutz § 220 Abs. 1-3; BEZ 2004 Nr. 19/75, BEZ 2016 Nr. 11 vs.
  VB.2017.00099), Provisorien § 321, Zustaendigkeit § 318/§ 320 PBG; **§ 357 PBG Besitzstandsgarantie** —
  rechtmaessige Erstellung (materiell, nicht formell; BEZ 2015 Nr. 22), Rechtsaenderung vs. Sachverhalts-
  wandel, **erweiterte Bestandesgarantie** Umbau/Erweiterung/Nutzungsaenderung, Grenze =
  **neubauaehnliche Umgestaltung/Gesetzesumgehung — KEINE feste Quote** (BEZ 1996 Nr. 3; BEZ 2011 Nr. 43),
  Abbruchreife (RB 1994 Nr. 72), Nutzungsschutz + Beweislast Art. 8 ZGB (RB 1994 Nr. 87), Brandschutz/
  Bundesrecht keine «Bauvorschrift» i. S. v. § 357. Status `emerging` (§ 357 Abs. 4/5 + baupolizeil.
  Missstaende + Brandstattrecht § 307 ab Shot 729 offen).
- NEU Wiki `wiki/ausnahmebewilligung-und-bestandesschutz.md` (`emerging`): § 220 (Dispens) + § 357
  (Besitzstandsgarantie) doktrinell — **schliesst die seit 2026-06-02 offene QUESTIONS-Luecke «Dispens /
  Ausnahmebewilligung: nirgends behandelt»**. Speist [[bestandsumbau-eingriffstiefe]].
- GESCHAERFT `wiki/bestandsumbau-eingriffstiefe.md`: Backlink + rechtlicher Massstab (kein «Drittel»,
  Grenze = neubauaehnliche Umgestaltung) ergaenzt; der pragmatische «grosse Ermessensspielraum» ist
  damit rechtlich (ZH) hinterlegt.
- ANWENDUNG: Modell C (7 neue Drill-Karten Kap. 20 in `training/drills.md`) + Modell A (Frage→Beleg-Drill
  Dachausbau ueberausgenuetztes MFH, nur Buchbeleg → `outputs/2026-06-18_buch-run10.md`).
- REGISTER: `seiten-inventar.md` (Shots 720-728 → `[x]`), `curriculum.md` (Kap. 20 `[~]`, naechster Lauf
  Kap. 7 = letztes P1), `buecher/INDEX.md` (Kap. 20 + Matrix), `wiki/INDEX.md` (12 Artikel),
  `wiki/QUESTIONS.md` (Dispens-Luecke geschlossen, neue offene Punkte Kap. 20).

## 2026-06-17 — Buch-Destillat BAND 2 Kap. 17 Teil 1 (Gebaeude und Raeume; Wohnhygiene), Run 9
- NEU `buecher/band-2/17-gebaeude-und-raeume.md` (Shots 624-631, echte Seiten 1241-1255, 8 Doppel-
  seiten; Kap.-Kern Wohnhygiene, Kapitel reicht weiter): Grundlagen §§ 295/299/300 PBG (Stand der
  Technik § 2 BBV I, Ausruestungen § 4 ABV), Wohnungen/Gemeinschaftsunterkuenfte (§§ 9/10 BBV I,
  Kueche-Begriff BEZ 2015 Nr. 40), Arbeits-/Publikumsraeume (§§ 11/12 BBV I, Rauchschutz PaRG/§ 22 GGG),
  **Ausrichtung Wohnraeume § 301 PBG** (nicht mehrheitlich NO/NW; VB.2017.00169), **Belichtung/
  Belueftung § 302 PBG** (Fenster ≥ 1/10 Bodenflaeche, oeffenbar, ins Freie; Lichtschacht-Falle
  VB.2017.00452/BEZ 2001 Nr. 30; Dachflaechenfenster BEZ 2008 Nr. 27; Abweichung § 302 Abs. 3 vor
  § 220 PBG), **Mindestflaeche ≥ 10 m² § 303** (Kueche 4/6 m² § 36 BBV I), **lichte Raumhoehe 2,4 m /
  Kernzone 2,3 m § 304** (Dachraum halbe Bodenflaeche, BEZ 2011 Nr. 15), Rauminhalt grosse Belegung
  § 10 BBV II, **innere Erschliessung § 305 + Aufzugspflicht § 40 BBV I** (> 5 Geschosse →
  krankentransporttauglich 2,1 × 1,1 m; > 9 → 2 Aufzuege), Geltungsbereich-Ausnahme EFH § 32 ABV,
  Bezug § 12a BBV I, Laerm/SIA 181 § 13 BBV I, Beginn Einstellraeume §§ 37-39/§ 297 PBG.
- NEU Wiki `wiki/wohnhygiene-und-raumanforderungen.md` (`emerging`): die vier Stellschrauben
  Belichtung/Belueftung — Mindestflaeche — Raumhoehe — innere Erschliessung/Aufzug; Geltungsbereich-
  Ausnahme § 32 ABV; JANS-Anwendung (UG-/Dach-Umnutzung, Healthcare-Aufzug, Lichtschacht-Killer).
  Backlinks [[17-gebaeude-und-raeume]], [[bestandsumbau-eingriffstiefe]], [[geschosse-und-kniestock]].
- DRILL `training/drills.md`: neuer Abschnitt Kap. 17 — 6 Selbsttest-Karten (Modell C) + 1
  Frage→Beleg-Drill (Modell A, UG-Umnutzung-Buerofrage).
- REGISTER: `seiten-inventar.md` Shots 624-631 [x] + echte Seiten korrigiert (Inventarschaetzung war
  +2 verschoben); `curriculum.md` Kap. 17 [~] + naechster Lauf Kap. 20; `buecher/INDEX.md` Eintrag +
  Abdeckungs-Matrix Kap. 17 🟡; `wiki/INDEX.md` Artikel 11 + neue Sektion; `QUESTIONS.md` Kap. 17
  erledigt + offene §-10-BBV-II-Staffel/Ausruestungen-Teil.
- NAECHSTER LAUF: **Kap. 20** (Ausnahmen/Bestandesschutz § 357 PBG, Shots ab 719, S. 1433 ff.);
  Restschuld Kap. 17 (Ausruestungen/Einstellraeume) + § 274 (Kap. 15) bei Gelegenheit.

## 2026-06-16 — Buch-Destillat BAND 1 Kap. 6 (Verfahren) + Kap. 9 (Rechtsschutz), Run 8
- NEU `buecher/band-1/06-baurechtliches-verfahren.md` (Shots 169-201, echte Seiten 337-405,
  17 Doppelseiten; Kernbereich, Kapitel reicht bis S. 422): Baubewilligungsverfahren — Zweck/Umfang
  (§ 309/§ 320 PBG), Bewilligungspflicht + Abgrenzung Melde-/Anzeigepflicht (Solar Art. 18a RPG/30 Tage,
  Zweifel bejahen § 309 PBG/BEZ 2016 Nr. 42), bewilligungspflichtige Vorhaben (BGE 113 Ib 314,
  Nutzungsaenderung), Baugesuch (Berechtigung § 310 PBG inkl. STWEG-Zustimmung, Beilagenkatalog § 5 BVV,
  Plansatz schwarz/rot/gelb, Energienachweis § 10a EnerG), Koordinationsgebot (Art. 25a RPG / §§ 7-9 BVV,
  kantonale Leitstelle), Verfahrensablauf (summarische Vorpruefung § 11 BVV, Fristen 21 Tage/3 Wochen
  § 313 PBG, Behandlungsfrist § 319 PBG, Kostenvorschuss § 15 VRG), Aussteckung/Profilierung
  (§ 311 PBG, Baugespann, Attika detailliert BGer 1C_509/2011), Publikation/Auflage (§ 314 PBG, § 6a BVV,
  Akteneinsicht § 20 IDG), **Zustellbegehren 20 Tage** (§ 315/§ 316 Abs. 2 PBG = lex specialis, Verwirkung
  Rekursrecht).
- NEU `buecher/band-1/09-rechtsschutz.md` (Shots 270-289, echte Seiten 537-575, 16 Doppelseiten;
  Kernbereich, Kapitel reicht bis S. 608): Rechtsmittelweg dreistufig — Rekurs ans Baurekursgericht
  (§ 19 Abs. 1 lit. a VRG, volle Kognition § 20 VRG, Einzelrichter ≤ 20'000 Fr. § 335 PBG) → Beschwerde
  ans Verwaltungsgericht (§ 50 VRG, nur Rechtskontrolle, keine Angemessenheit) → Bundesgericht (Beschwerde
  i.oe.A. Art. 82/Art. 95 BGG, subsidiaere Verfassungsbeschwerde Art. 113 BGG); Legitimation
  (schutzwuerdiges Interesse + Beziehungsnaehe § 21 VRG, Verbandsbeschwerde Art. 12 NHG, Gemeindeautonomie
  Art. 50 BV, Behoerdenbeschwerde § 209f PBG); akzessorische Normenkontrolle § 50a VRG; Verfahrens-
  grundsaetze (Offizial-/Dispositions-/Untersuchungs-/Eventualmaxime, reformatio in peius § 27 VRG);
  **Rechtsmittelfrist 30 Tage** (§ 22 VRG; Fax/E-Mail genuegen nicht BGE 121 II 252).
- WICHTIG Shot→Datei-Mapping korrigiert: die Inventar-/Curriculum-Schaetzung fuer Band 1 war FALSCH.
  Visuell verifiziert: Kap. 6 ab Shot 169 (`11.45.37.jpg`, p.337), Kap. 9 ab Shot 270 (`11.48.44.jpg`,
  p.537). Bd-1-Shots nicht durchgaengig kapitellinear.
- AKTUALISIERT `buecher/INDEX.md` (Band-1-Sektion + Matrix Kap. 6/9 🟡), `buecher/seiten-inventar.md`
  (Shots 169-201 + 270-289 [x], echte Seiten gesetzt, Mapping-Hinweis), `training/curriculum.md`
  (Kap. 6/9 [~], korrigierte Shot-Anker, naechster Lauf Kap. 7 bzw. Kap. 9-Rest).
- Status beider Destillate `emerging` (Restkapitel + amtliche §-Verifikation PBG/BVV/VRG/BGG offen).

## 2026-06-16 — Buch-Destillat Kap. 15 Teil 2d (Gebaeudeabstand §§ 271-273, S. 1086-1111), Run 7
- NEU `buecher/band-2/15-lage-von-gebaeuden-teil2d.md` (Shots 547-559, echte Seiten 1086-1111,
  13 Doppelseiten): Abschluss der Vorspruenge-Messweise (§ 260 Abs. 3 PBG — abgestuetzte/einzelne
  Vorspruenge, Erker, Traufe-Verbot, Drittel-/Laengenbeschraenkung, Vordach ohne Drittel BEZ 2017
  Nr. 27); weitere Erleichterungen (reduzierter Grenzabstand § 49 Abs. 2 lit. b PBG, hohe Bauwerke
  §§ 260 Abs. 2/270 Abs. 2 PBG, Familiengartenhaeuser § 18 Abs. 2 BBV II, Aussenwaermedaemmung bis
  35 cm § 253a PBG/§ 33a ABV); Naeherbaurecht § 270 Abs. 3 PBG (nur Grenzabstaende verfuegbar,
  Form/Nachweis § 5 lit. l BVV, Grundbuch Art. 680 Abs. 2 ZGB, Widerruf § 321 PBG, 7-m-Schranke
  BEZ 1990 Nr. 28 + § 30 ABV); **Gebaeudeabstand §§ 271-273** (= Summe der Grenzabstaende § 271,
  Verkehrsraeume § 272, Gebaeudeteile vs. Zusammenbau); **Besondere Gebaeude § 273/§ 49 Abs. 3 PBG**
  (kein dauernder Aufenthalt + groesste Hoehe ≤ 4/5 m → 3,5 m Abstand, ~50 m² BEZ 2015 Nr. 2,
  Kasuistik, Anbau-Selbststaendigkeit VB.2015.00544, kein Dispens § 220 PBG/BEZ 2004 Nr. 75).
- GESCHAERFT `wiki/abstaende-und-hoehen.md`: Sektionen Gebaeudeabstand (§§ 271-273 + Besondere
  Gebaeude) und Naeherbaurecht neu/ausgebaut; Frontmatter (sources/links/Datum 2026-06-16).
- AKTUALISIERT `wiki/INDEX.md`, `wiki/QUESTIONS.md` (§§ 271-273 erledigt, § 274 neu offen),
  `buecher/INDEX.md`, `buecher/seiten-inventar.md` (Shots 547-559 [x]), `training/curriculum.md`
  (Kap. 15 abgeschlossen, naechster Lauf Kap. 17), `training/PROGRAMM.md` (Tracker).
- DRILLS `training/drills.md`: Modell C (7 Karten) + Modell B (Garage als Besonderes Gebaeude).
- REPORT `outputs/2026-06-16_buch-run7.md`.

## 2026-06-15 — Buch-Destillat Kap. 15 Teil 2c (Grenzabstand-Zahlenwerk, S. 1062-1085), Run 6
- NEU `buecher/band-2/15-lage-von-gebaeuden-teil2c.md` (Shots 535-546, echte Seiten 1062-1085,
  12 Doppelseiten): Grenzabstand-Zahlenwerk — Definition Fassade↔massgebende Grenzlinie (§ 260 Abs. 1
  PBG, Messweise im Lot, § 28 ABV); Gebaeudebegriff + Rechtsprechung (Pergola/Carport, § 1/§ 2 ABV);
  kantonaler Mindestgrenzabstand 3,5 m (§ 270 Abs. 1); kantonaler Mehrhoehenzuschlag ab 12 m / max
  16,5 m (§ 270 Abs. 2; Ausnahmen Kern-/Quartiererhaltungszone § 50/50a PBG, hohe Bauwerke § 19 BBV II,
  Lift-Anbauten § 19a BBV II; Hochhaeuser § 282); Zusammensetzung Grund- + Mehrhoehen- + Mehrlaengen-
  zuschlag (§ 21 Abs. 1 ABV); grosser/kleiner Grundabstand = Hauptwohnseite (§ 22 Abs. 2 ABV);
  Mehrlaengenzuschlag + 2G-Regel gestaffelte/abgewinkelte Fassaden (§§ 23/24 ABV); Vorsprung-
  Privilegierung Erker/Balkone ≤ 1/3 / 1,3 m + Gebot restriktiver Auslegung (§ 260 Abs. 3 / § 27 ABV);
  abstandsfreie unterirdische Bauten ≤ 0,5 m ohne Oeffnungen (§ 269).
- GESCHAERFT `wiki/abstaende-und-hoehen.md`: Abschnitt Grenzabstand komplett mit Zahlenwerk gefuellt
  (Formel § 21 ABV, 3,5 m / 12 m / 16,5 m, Hauptwohnseite, 2G-Regel, § 269 abstandsfrei), Vorsprung-
  Bauteile praezisiert (1/3 / 1,3 m, restriktive Auslegung), Gebaeudeabstand um § 27 Abs. 2 ABV
  ergaenzt; Platzhalter «Detailwerte offen» aufgeloest; Status `established`, sources/links/Datum.
- ANWENDUNG: 6 neue Drill-Karten (Modell C) + Modell-B-Fall-Nachrechnung (Mehrhoehenzuschlag MFH 15 m
  → 9 m Abstand ab 12 m) in `training/drills.md`.
- REGISTER: `seiten-inventar.md` Shots 535-546 [x] + echte Seiten 1062-1085 + Destillat-Link;
  `buecher/INDEX.md` Eintrag + Abdeckungsmatrix Kap. 15; `curriculum.md` Status; `wiki/INDEX.md` +
  `wiki/QUESTIONS.md` (Zahlenwerk erledigt, Gebaeudeabstand §§ 271-274 als naechste Luecke).
- REPORT `outputs/2026-06-15_buch-run6.md`.


## 2026-06-14 — Buch-Destillat Kap. 15 Teil 2b (Baulinien-Rechtswirkungen + Strassen-/Wegabstand, S. 1034-1061), Run 5
- NEU `buecher/band-2/15-lage-von-gebaeuden-teil2b.md` (Shots 521-534, echte Seiten 1034-1061,
  14 Doppelseiten): Baulinien-Rechtswirkungen §§ 99-101 PBG — Bauverbot (§ 99), einzelne Vorspruenge
  bis 1,5 m ueber die Linie + entschaedigungslos beseitigbar (§ 100 Abs. 1), weitergehende Beanspruchung
  mit Interessenabwaegung + Beseitigungsrevers (§ 100 Abs. 3), baulinienwidriger Bestand Unterhalt frei
  / Aufstockung nur mit Mehrwertrevers (§ 101), Ueberpruefungsanspruch (§ 110a), Gebaeudeabstand ueber
  Strasse (§ 272). Strassen-/Wegabstand §§ 264-267 PBG — subsidiaer zur Baulinie (§ 264); 6 m Strasse /
  3,5 m Weg, nur oberirdisch (§ 265); Strassengrenze inkl. Trottoir (§ 267); Garagenvorplatz 5,5 m
  (§ 266); StrAV Mauern/Pflanzen/Reklamen.
- GESCHAERFT `wiki/baulinien-und-abstandslinien.md`: neuer Abschnitt 1a (Rechtswirkungen §§ 99-101 als
  Tabelle) + Abschnitt 2 (Strassen-/Wegabstand §§ 264-266); Status bleibt `emerging`, sources/links
  erweitert, offene Punkte aktualisiert.
- ANWENDUNG: 5 neue Drill-Karten (Modell C) + Modell-A-Frage→Beleg-Drill (Strassenabstand MFH ohne
  Baulinie + Balkon-Privilegierung) in `training/drills.md`.
- Register: Inventar Zeilen 521-534 auf [x] mit echten Seitenzahlen + Destillat-Link; `buecher/INDEX.md`,
  `training/curriculum.md` (Kap. 15 Status, naechster Lauf Teil 2c §§ 269-274), `wiki/QUESTIONS.md`.
- Lern-Report `outputs/2026-06-14_buch-run5.md`.


## 2026-06-13 — Buch-Destillat Kap. 16.10 (Attika/MT/Fassadenhoehe, S. 1230-1239)
- NEU `buecher/band-2/kap16-10_gebaeudedimensionen-harmonisierung.md` (Shots 619-623,
  echte Seiten 1230-1239): Attikageschoss-Rueckversetzung h/2 an fiktiven Traufseiten
  (§ 275 Abs. 4 nPBG, bisher 45 Grad), Dachaufbauten 1/2 Fassadenlaenge (§ 292 nPBG),
  UG-Formel ≤ 2.5 (§ 29 nABV), massgebendes Terrain = gewachsener Verlauf /
  Nachbarschafts-Festlegung (§ 5 nABV), Gesamthoehe/Fassadenhoehe-Messweise
  (§§ 278/281 nPBG, Flachdach bis OK Bruestung ausser ≥ 1 m zurueckversetzt),
  Kniestock 1.5 m, Gebaeudelaenge flaechenkleinstes Rechteck (§ 28 nABV).
- Inventar Zeilen 619-623 auf [x] mit echten Seitenzahlen.
- Anlass: Anfrage Raphael (Fall 2621 Giebelweg, Attika-/Baukoerper-Setzung);
  Erkenntnisse in Skill `massgebendes-terrain` ueberfuehrt.


## 2026-06-12
- [distill] **Buch-Training Run 4** — Kap. 15 «Lage von Gebaeuden», Teil 2a. Destillat [[15-lage-von-gebaeuden]] um 10 Doppelseiten erweitert (Shots 511-520, S. 1014-1033): **Uferstreifen-Messweise** (ab Uferlinie, Korridor) + ZH-Uebergangsbreiten (§ 15 HWSchV: stehend 8/20 m, fliessend 8 m + Sohle je Seite), **zulaessige Anlagen im Gewaesserraum** (Art. 41c Abs. 1 GSchV: standortgebunden/oeffentliches Interesse), **dicht ueberbautes Gebiet** (Art. 41c Abs. 1 Satz 2 GSchV; BGE 140 II 428; Altendorf/Hurden/Rueschlikon), Grenzabstaende gelten **zusaetzlich** im Gewaesserraum (S. 1020), Besitzstand/Brandstattrecht (§ 15m HWSchV vor § 357/§ 307 PBG), **Gewaesserabstandslinien § 67 PBG** (Bauverbotszone, §§ 99-101 PBG analog, § 220 Dispens), **Hochwasser-Gefahrenbereiche** (WWG/WBV, Gefahrenkarten Art. 21 WBV, § 22 WWG), **Baulinien-Arten § 96 PBG** + subsidiaerer 6-m-Abstand § 51 Abs. 2 PBG. Total ~50/780 Doppelseiten.
- [article] Neuer Wiki-Artikel [[baulinien-und-abstandslinien]] (`emerging`) — Baulinien (§§ 96-101 PBG: Verkehrs-/Schutz-/Versorgungsbaulinie, Endausbau § 98, Naeherbaurecht § 105), subsidiaerer 6-m-Strassenabstand (§ 51 Abs. 2 PBG), Gewaesserabstandslinie (§ 67 PBG), Linien-Abgrenzungstabelle; Leitsatz «die Linie ist oft bindender als die Ziffer». INDEX (10 Artikel).
- [sharpen] [[abstaende-und-hoehen]] um Gewaesserraum-Vertiefung ergaenzt (standortgebundene Anlagen, dicht ueberbautes Gebiet, § 15m HWSchV vor § 357/§ 307 PBG, «zusaetzlich nicht ersetzend») + Backlink auf [[baulinien-und-abstandslinien]].
- [drill] 5 neue Q/A-Karten Kap. 15 Teil 2a + 1 Frage→Beleg-Drill (Modell A: TG an Gewaesserabstandslinie → §§ 99-101/§ 100 Abs. 1 PBG, Beleg vollstaendig) in `training/drills.md`.
- [register] `buecher/seiten-inventar.md` (Shots 511-520 [x] + Destillat-Link), `buecher/INDEX.md` (Kap. 15 Teil 1+2a, last_updated), `curriculum.md` (Kap. 15 [~] Teil 1+2a, naechstes Kap. 15 Teil 2b §§263-274 / Kap. 17), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (Strassenabstand/Baulinien teilweise erledigt; § 100 Abs. 1 + dicht-ueberbaut als neue Luecken; Gewaesserabstand-Artikel-Luecke geschlossen). Report `outputs/2026-06-12_buch-run4.md`.

## 2026-06-11
- [distill] **Buch-Training Run 3** — Kap. 15 «Lage von Gebaeuden», Teil 1. Neues Destillat [[15-lage-von-gebaeuden]] (`emerging`) aus 10 Doppelseiten (Shots 501-510, S. 995-1013): Abstandssystem §§ 260-274 PBG, **Gebaeudearten** (Minibau/bewilligungsfreie/besondere/abstandsfreie/Hauptgebaeude; § 2 ABV, § 1 lit. a BVV, § 49 Abs. 3 / § 269 / § 273 PBG), Fassade-Messweise (§ 260 Abs. 1 PBG, § 28 Abs. 1 ABV), politische/Zonengrenzen (§ 261 PBG; BEZ 1989 Nr. 21), **Waldabstand § 262 PBG** (30 m / bis 15 m; Art. 17 WaG forstpolizeilich; BGE 119 Ia 12), **Gewaesserraum** (Art. 36a GSchG, Art. 41a/41b GSchV: 11 m / 2,5×Sohle+7 m / 15 m; § 15d HWSchV). Total ~40/780 Doppelseiten.
- [article] Neuer Wiki-Artikel [[gebaeudearten-und-abstandssystem]] (`emerging`) — Entscheidungstabelle der fuenf Gebaeudearten → Abstandsfolge, Messweise, politische/Zonengrenzen, privatrechtliche Abstaende (Art. 688 ZGB). INDEX (9 Artikel) + Abschnitt «Abstaende & Hoehen» erweitert.
- [fix] **Gegenprobe (Modell D) — Fehler in [[abstaende-und-hoehen]] korrigiert:** Waldabstand stand auf **§ 268 PBG** + «§ 18b Waldgesetz» (falsch; § 268 = Anschlussgleise) und «Reduktion bis 10 m via Gestaltungsplan». Richtig Kt. ZH: **§ 262 PBG**, Regel 30 m, reduzierbar **bis 15 m** ueber die Waldabstandslinie (§ 66 Abs. 2 PBG); zusaetzlich forstpolizeilicher Mindestabstand Art. 17 WaG (VGr < 10 m i.d.R. zu gering). Beleg Bd 2 S. 999 f., 1004 f. Artikel zudem um Gewaesserraum-Abschnitt ergaenzt; alte needs-verification «20 m / 10 m» erledigt.
- [drill] 6 neue Q/A-Karten Kap. 15 + 1 Wiederholung Kap. 16 in `training/drills.md` (Modell C); Frage→Beleg-Drill (Modell A) Waldabstand 30/15 m. Report `outputs/2026-06-11_buch-run3.md`.
- [register] `buecher/seiten-inventar.md` (Shots 501-510 [x] + Destillat-Link), `buecher/INDEX.md` (Kap. 15 🟡), `curriculum.md` (Kap. 15 [~], naechstes Kap. 15 Teil 2 / Kap. 17), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (Grenz-/Gebaeudeabstand + Strassenabstand + § 273 PBG als neue Luecken; Waldabstand-Korrektur archiviert).

## 2026-06-10
- [distill] **Buch-Training Run 2** — Kap. 16 «Gebaeudedimensionen», Teil 1 (Geschosse + Kniestock). Neues Destillat [[16-gebaeudedimensionen]] (`emerging`) aus 10 Doppelseiten (Shots 571-580, S. 1135-1153): Voll-/Dach-/Untergeschoss (§ 275 PBG), Anrechenbarkeit zur Geschosszahl (§ 276 PBG), Galerie/zusammengebaute/terrassierte Bauten, Terrassenhaus (§ 77 PBG), Geschosszahl-Ersatz (§ 276 Abs. 2), **Kniestock** (0,9 m / Bestand 1,3 m vor 1.7.1978, Messweise 0,4 m hinter Fassade, auskragendes Dachgeschoss BEZ 1997 Nr. 7). Total ~30/780 Doppelseiten.
- [article] Neuer Wiki-Artikel [[geschosse-und-kniestock]] (`emerging`) — Geschossarten, Anrechenbarkeit, Kniestock-Tabelle (Neubau 0,9 m / Bestand 1,3 m) + Messweise; Backlinks auf [[nutzungsziffern]], [[abstaende-und-hoehen]], [[bestandsumbau-eingriffstiefe]]. INDEX (8 Artikel) + neuer Abschnitt «Gebaeudedimensionen».
- [drill] 6 neue Q/A-Karten Kap. 16 in `training/drills.md` (Modell C); **Fall-Nachrechnung Kniestock** (Modell B + Gegenprobe D): Dachausbau 1,15 m, Bewilligung 1969 → Dachgeschoss bleibt (1,3-m-Erleichterung); als Ersatzneubau → Vollgeschoss. Report `outputs/2026-06-10_buch-run2.md`.
- [register] `buecher/seiten-inventar.md` (Shots 571-580 [x] + echte Seiten), `buecher/INDEX.md` (Kap. 16 🟡), `curriculum.md` (Kap. 16 [~], naechstes Kap. 15), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (Kap.-16-Luecke Hoehen/Dach + § 19 BBV II + § 293 PBG).

## 2026-06-09
- [distill] **Buch-Training Run 1** — Kap. 14 abgeschlossen. Destillat [[14-nutzungsdichte-ausnuetzung]] vom Ausnuetzung-Kern auf das gesamte Kapitel erweitert (Shots 464-471, 494, 496, 498 = 11 Doppelseiten, S. 920-989): massgebliche Grundstuecksflaeche im Detail (§ 259 PBG: Wald/Gewaesser/Strassen/Fusswege/Bahn), **Ausnuetzungsuebertragung** (§ 72 Abs. 3 PBG, Revers im Grundbuch, BO-Erlenbach-Schranke 1/5), erhoehte Ziffern/Gewerbebonus (§ 49a), Nutzungsart/Immissionen (§ 51/52/57), Wohnanteil (Healthcare ausserhalb), Harmonisierungsvorlage/IVHB. Total 20/780 Doppelseiten distilliert; Abdeckung Kap. 14 → 🟢.
- [article] Neuer Wiki-Artikel [[ausnuetzungsuebertragung]] (`emerging`): gleiche Zone (§ 72 Abs. 3 PBG), raeumliche Naehe, Ausnuetzungsrevers im Grundbuch (Art. 646 ZGB), kommunaler Daumenwert max. 1/5 der Grundausnuetzung (Art. 40 BO Erlenbach). INDEX + Statistik (7 Artikel) nachgefuehrt.
- [fix] **Gegenprobe (Modell D) — zwei Fehler in [[nutzungsziffern]] korrigiert:** (1) Freiflaechenziffer ist **§ 257 PBG**, nicht § 259 (§ 259 = massgebliche Grundstuecksflaeche; Buch Bd 2 S. 920/949); (2) Geschossflaechenziffer (GFZ) der IVHB **steht im Kanton Zuerich NICHT zur Verfuegung** (Bd 2 S. 988) — fruehere Aussage «in neueren Planungen anstelle der AZ» war fuer ZH falsch. Artikel zudem um massgebliche Grundstuecksflaeche, erhoehte Ziffern und Uebertragung ergaenzt.
- [drill] 7 neue Q/A-Karten in `training/drills.md` (Modell C); Frage→Beleg-Drill (Modell A) zur Zonengrenze-Schranke der Uebertragung. Report `outputs/2026-06-09_buch-run1.md`.
- [register] `buecher/seiten-inventar.md` (11 Shots [x] + echte Seitenzahlen), `buecher/INDEX.md`, `curriculum.md` (Kap. 14 [x], naechstes Kap. 16), `training/PROGRAMM.md` Tracker, `wiki/QUESTIONS.md` (GFZ-Korrektur archiviert, Mischrechnungsverbot + § 10/13 ABV als neue Luecken).

## 2026-06-07
- [article] Neuer Wiki-Artikel [[bestandsumbau-eingriffstiefe]] (Grundprinzip Bauen im Bestand): Eingriffstiefe entscheidet ueber Baueingabe; Pflichtenkatalog bei Baueingabe (Brandschutz/Treppenhaus VKF, Schallschutz SIA 181, Ausnuetzungsnachweis, Parkplatz/Energie/hindernisfrei); Besitzstandsgarantie schuetzt nur Erhalt — nicht Ausweitung; behoerdlicher Ermessensspielraum bei Uebernutzung (je Baubehoerde unterschiedlich); Empfehlungsregel «bewilligungsfreier Umbau = sicherste Variante». Seed: Praxisfall 2622 Wangen SZ (Dachausbau Chaled). Schliesst die Backlog-Luecke «Bestandesschutz & Besitzstandsgarantie». INDEX + Statistik (6 Artikel) nachgefuehrt.
- [harness] **Buch-Layer + Buch-Training angelegt** fuer das Standardwerk «Zuercher Planungs- und Baurecht, Bd 1+2» (Fritzsche/Boesch/Wipf/Kunz, 6. Aufl. 2019). Neu: `buecher/` (CLAUDE.md, INDEX.md, seiten-inventar.md mit allen 780 Screenshot-Doppelseiten, band-1/ band-2/), `training/` (PROGRAMM.md mit degressiver Lernkurve, curriculum.md 23-Kapitel-Map, drills.md). Quell-Screenshots auf SharePoint `PL - 02_Recht_Norm/.../SM Planungs und Baurecht/`.
- [distill] Erstes Destillat [[14-nutzungsdichte-ausnuetzung]] (Bd 2, Kap. 14, S. 919-961): AZ/BMZ/UEZ/FFZ (§§ 254-260 PBG), anrechenbare Geschossflaeche, **Dach-/UG-Mehrflaechenregel § 255 Abs. 2** (S. 950 f.), Wohntauglichkeit S. 944 f. 9 Shots im Inventar als distilliert markiert.
- [wire] Skill `baurecht` (Stufe 0b + Zitierschema Band/Kap/Seite) und Legacy-Agent `baurecht-agent` an den Buch-Layer angebunden.
- [schedule] Scheduled Task `baurecht-buch-training` erstellt (Phase 1 taeglich 07:34; degressiv auf 2-taegig/woechentlich).
- [output] Anwendungsfall [[2026-06-07_buch-run0_dachausbau-wangen-chaled]] (Trainingsmodell B): Dachgeschoss-Analyse MFH Wangen Bahnhofstrasse 27 (Mail David Chaled) auf Buchbasis. Offen: Kanton (Wangen SZ vs. Wangen-Bruettisellen ZH) + Kennwerte (Zone/AZ/Parzellenflaeche).
- [tooling] Connector `skills/baurecht/connectors/recht-ch.mjs` gebaut: zieht amtliche, konsolidierte Gesetzes-Volltexte (ZH-Lex; Bund-v2 offen) als Markdown mit Provenienz-Frontmatter nach raw/. ZH-Kette verifiziert (Open&Ordnr → kanonische Erlassseite → notes.zh.ch $File-PDF → pdftotext).
- [ingest] 5 amtliche ZH-Volltexte als Primärquelle in raw/ abgelegt: PBG (LS 700.1), ABV (700.2), BVV (700.6), BBV I (700.21), BBV II (700.22) — gemeinfrei Art. 5 URG, Direktkonsultation. In _INGESTED.md registriert (kein Coverage-Flag).
- [compile] Quellenregister [[QUELLEN]] angelegt (wiki/QUELLEN.md); in INDEX verlinkt; Statistik nachgeführt.
- [flag] Bund-Volltexte (RPG/RPV/USG) offen: Fedlex JS-gerendert → Auto-Fetch v2; bis dahin SharePoint/fedlex.admin.ch. In QUELLEN.md notiert.
- [tooling] Connector um kommunale BZO (Kt. ZH) erweitert: Bezug via ÖREB-Dokumentdienst oerebdocs.zh.ch/getDoc?docid; Auto-Auflösung Gemeinde→docid über ÖREB-JSON-Extrakt (--resolve-bzo --egrid). Register BZO_ZH (nur verifizierte docids).
- [ingest] 2 kommunale BZO-Volltexte als Primärquelle: Zürich Stadt (BZO 2016, docid 6) + Langnau am Albis (docid 5501) — gemeinfrei, Direktkonsultation. In _INGESTED + QUELLEN registriert.
- [ingest] ZH-Batch: 42 weitere kommunale BZO-Volltexte (Zürichsee-Ufer + Agglo-Ring) via ÖREB-Auto-Resolver (Name→EGRID→ÖREB-JSON→docid) gezogen; docids verifiziert, Fusionsgemeinden (Wädenswil) per Adress-Anker geprüft. Total 44 ZH-Gemeinden. Register BZO_ZH + QUELLEN nachgeführt.
- [tooling] SZ-Track gebaut: kommunale Baureglemente Kt. SZ via OEREBlex (oereblex.sz.ch/api/attachments), Auflösung über map.geo.sz.ch/oereb/extract/json. Register BAUREGL_SZ.
- [ingest] SZ-Batch: Baureglemente Wangen SZ, Freienbach, Feusisberg als Volltext; Wollerau als OCR-Pendenz markiert (Bild-PDF ohne Textebene). Schutzlogik im Connector: leere Extraktion wird ehrlich gekennzeichnet statt als Volltext getarnt.
- [tooling] OCR-Fallback im Connector (`--ocr`): leere Extraktion (Bild-PDF) wird via ocrmypdf/tesseract (deu) nachgeholt und als OCR-Text gekennzeichnet.
- [ingest] Wollerau (SZ) Baureglement via OCR gewonnen (81 KB) — nicht mehr Pendenz. Damit alle 4 SZ-Gemeinden Volltext.
- [flag] SG-Track (Rapperswil-Jona/Schmerikon): SG-ÖREB läuft über geoportal.ch; M2M-Extrakt 403-gesperrt (IP/Token) → ohne Freischaltung kein Auto-Bezug, bleibt Pendenz (in QUELLEN notiert).

## 2026-06-02
- [compile] Neuer Artikel raumplanung-und-gestaltung (aus pbg-zh: Richtplan, Nutzungsplanung, Sondernutzung, §238 Einordnung, Denkmalschutz); gegenseitig verlinkt mit zonenkonformitaet + baubewilligungsverfahren; INDEX + _INGESTED nachgefuehrt. [Phase-2-Aktion D]
- [flag] needs-verification gesetzt: Gebuehren 1-3‰ (baubewilligungsverfahren), Waldabstand-Ausnahmen 20/10m (abstaende-und-hoehen), BZO-Richtwerte (zonenkonformitaet); in QUESTIONS.md gefuehrt. [Phase-2-Aktion C]
- [reclassify] praxisfaelle als leerer Platzhalter eingestuft (keine Coverage-Luecke) in _INGESTED.md + QUESTIONS.md. [Phase-2-Aktion D]
- [fix] dekorativen Pfeil → in baubewilligungsverfahren.md durch Prosa ersetzt (Symbolregel). [Phase-2-Aktion F]
- [health-check] Erster Wissens-Health-Check (Phase 1): A0 B0 C3 D1+1 E0 F1 G0 → outputs/2026-06-02_health-check.md
- [setup] Wissensbasis Baurecht angelegt (raw/ wiki/ outputs/, CLAUDE.md, State-Files).
- [ingest] 5 Seed-Quellen aus docs/baurecht/ in raw/ abgelegt und in _INGESTED.md registriert.
- [compile] 4 Wiki-Artikel kompiliert: nutzungsziffern, abstaende-und-hoehen,
  baubewilligungsverfahren, zonenkonformitaet (mit Frontmatter + Backlinks).
- [index] INDEX.md und QUESTIONS.md erstellt.
- [flag] Coverage-Lücke: raw/260602_docs-baurecht-praxisfaelle.md noch nicht eingearbeitet.
