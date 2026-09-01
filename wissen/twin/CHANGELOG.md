# CHANGELOG — KB twin

Datierte Protokollzeilen (neueste zuoberst). Jede Schreib-/Verlink-/Ingest-Aktion wird
hier vermerkt (Rule `wissens-bibliothekar.md`). Vor dieser Zeile war die Datei leer;
die vollständige Ingest-Historie steht im `raw/_INGESTED.md` (Batch-Register) und den

## 2026-09-01 — Wissens-Health-Check (Phase 1): A0 · B8 · C1 · D0 · E0 · F3 · G3 — sechsfacher kaputter Backlink `[[260830-mailbatch-109]]` (raw-Datei als Wiki-Link zitiert), ss-Verstoss von 03.08. weiterhin unbehoben, Frontmatter aller sechs Facetten einen Tag hinter dem Body; Anrede-Spannungen (Nivellier-Klausel, Treffen-Klausel/Stadelmann) im Wiki sauber offen gehalten, kein Widerspruch. Report `outputs/2026-09-01_health-check.md`.

## 2026-09-01 — twin-fidelity-review: Fidelity 35; «kein Apparat» kompiliert, zweite Verdichtungsrunde

**Golds:** `Drafts` Seite 4 (`offset: 75`), drei Entwuerfe — 26.03.2026 «AW: Bestellung
Katasterplan» (Geodaten Stadt ZH, Handy-Fragment), 07.04.2026 «AW: 260407_KISPI - Therapiestation
1.OG - Alarmierung» (Brandschutz-Fachplaner Gruner, Cc Bauherr KISPI, vollstaendig bis zum
Gruss), 26.03.2026 «Klärung Vollmachten und Vertretung» (AfB Zuerich, Handy-Fragment). Alle drei
`authentisch`, dichte Tipp-Tells, keine Echo-Signale. Report
`outputs/2026-09-01_fidelity.md`.

- **Gesamt-Fidelity 35** (Vorlauf 31) — **nach oben verzerrt**: zwei von drei Golds brechen nach
  zwei Zeilen ab, gemessen ist im Wesentlichen die Anrede- und Einstiegsebene.
- **Befund 1 (⭐, kompiliert):** zweiter Beleg fuer «kein Apparat gegenueber dem Fachmann», und
  diesmal nicht nur in der Frage — sechs Saetze ueber Brandschutzauflagen an einen VKF-Experten
  ohne eine einzige Norm, dafuer BKZ/BKP/Submission/Unternehmerliste. Die Fachdichte sinkt nicht,
  sie wechselt von der Norm zur **Struktur**. Empfehlung 2 des Vorlaufs damit ausgefuehrt.
- **Befund 2 (⭐):** erster Beleg der Trennlinie 260820 an einem **Fachplaner**-Vorgang — die an
  den Bauherrn gerichtete Betriebsfrage bleibt unbeantwortet, der Beschaffungsweg wird ohne
  Go-Frage gesetzt. Dazu «wir/ich» satzweise getrennt (vom Zwilling ganz verfehlt).
- **Befund 3 (⭐, NICHT kompiliert):** «Grüezi Herr Kamm» an den bekannten Sachbearbeiter und
  namenloses «Guten Tag» an vier Adressaten in rechtlicher Sache — die Anrede folgt dem **Gewicht
  des einzelnen Schreibens**, nicht der Bekanntheit. Zwei Belege, ein Tag, ein Geraet: zu duenn
  fuer den Do-Block, vorgelegt als [[QUESTIONS]] 260901b #2 (beruehrt `anrede-kontakte`).
- **Befund 4:** siebzehnter Lauf mit Erfindungs-Drift, erstmals in **struktureller** Gestalt —
  nicht die Zahl ist erfunden, sondern die Gliederung, die nach einer Zahl verlangt (volle
  Auslegungs-Konstruktion fuer eine schlichte Verfahrensauskunft). Schritt 2b greift im uebrigen:
  drei Leerstellen hat der Zwilling selbst als «nicht belegt» markiert.
- **Riegel, zweite Verdichtungsrunde:** 33'976 → **33'986 B (14 B Reserve)**. Entfernt wurden
  ausschliesslich Beleg-Prosa und ein reiner Rueckverweis in [[beziehungsregister]] (die vom
  Vorlauf benannten Stapel-Doppelungen), promoviert die Apparat-Regel in [[fachsignatur]]. Alle
  Eingriffe zeilenexakt, `diff` gegen Sicherungskopien nachgemessen (Rule 260811), Kopien danach
  entfernt. **Das Bild von
  260831c bestaetigt sich:** der Engpass war die Promotion in den Do/Don't-Block, nicht die Byte-
  Grenze — der erste Kompilierversuch lag 22 B darueber, die Verdichtung brachte ihn hinein.
- **Artikel ergaenzt:** je ein Fidelity-260901-Abschnitt in [[stimme]], [[denken]], [[haltung]],
  [[beziehungsregister]], [[fachsignatur]], [[arbeitsweise]]. Fuenf neue Fragen in
  [[QUESTIONS]] 260901b.
- **Betriebs-Nebenbefund:** der Lauf startete ohne `/Volumes/daten` (Shadow-Mount auf
  `daten-2`, danach 15 Fehlversuche von `nas-auto-mount.sh`) und lief vollstaendig **ueber SSH**
  auf `/volume2/daten`. Kein Git ueber SMB beruehrt. [[QUESTIONS]] 260901b #5.

## 2026-09-01 — twin-mail-training Batch 111: Drafts Seite 3; Em-Strich-Marker quarantaeniert

**Quelle:** `Drafts` Seite 3 von 5 (`offset: 50`, 25 von 124, Zeitraum 09.04.–04.08.2026),
Register `raw/260901-mailbatch-111.md`. Vorfilter warf 18 von 25 vor dem ersten `read_resource`
weg (8 Hub-Selbstmails, 4 Claude-Aera-Entwuerfe, 6 textlose Weiterleitungen).

**⚠ Fenster-Ueberschneidung:** Der `twin-fidelity-review` vom 31.08. hatte dasselbe Fenster
bereits verbraucht und seine drei Golds in alle sechs Facetten destilliert. Dieser Lauf hat
darum **nicht gedoppelt, sondern gegengelesen** — und den Widerspruch unten gefunden. Register
fuehrt den Fidelity-Verbrauch ab jetzt mit → [[QUESTIONS]] 260901 #2.

**Ein Eingriff, append-only, mit `diff` nachgemessen (0 geloeschte Zeilen, Rule 260811):** in
[[stimme]] ein Quarantaene-Vorbehalt unter den gestern gesetzten Marker «der Gedankenstrich lebt
auch englisch in der Mail». Der Satz wird **nicht gelernt**, die uebrigen Marker derselben Mail
bleiben gueltig. Vier Gruende: Kontrollgruppen-Quote (deutsches Gold desselben Batches 0
Em-Striche / 0 Bullets auf 322 W gegen 1 + 2 auf 185 W, dazu 2 im Betreff), die im KB-Schema
gelistete AI-Paste-Schlussfloskel, der Kontrast zum gebrochenen Englisch an **denselben
Empfaenger** 20 Tage frueher (15.04.2026), und Raphaels stehende Vorgabe «kein Gedankenstrich
als Stilmittel» (10.06.2026). Das Quarantaene-Verfahren stand bereits im Artikel (Z. 1908,
Z. 2221) und war uebergangen worden. **Der fremde Befund wurde markiert, nicht geloescht**
(Rule `wissens-bibliothekar`: Widersprueche markieren statt glaetten).

**Vier weitere Kernbefunde, alle ohne Artikel-Eingriff, weil bereits belegt:** die vierte Falle
(zwei Haende in einem Erzeugnis) gilt auch englisch · die Binnengrossschreibung «Bitte/Bitten»
ist ein **Kanal**-Marker (drei Belege, alle mobil; dieselbe Konstruktion in der gesendeten Mail
vom 02.04. dreimal klein) · Erstnennung voller Name → danach Nachname, zweiter Beleg · die
gestaffelte Dreifach-Anrede ist auf den **02.04.2026** vordatiert und damit ein frueherer
unabhaengiger Beleg gegen die Nivellier-Zeile in `rules/anrede-kontakte.md` (Entscheid Raphaels
offen, kein Rule-Eingriff durch Claude).

**Gehirn unveraendert** — kein `build_dna.py`-Lauf; der einzige Eingriff ist ein Vorbehalt im
Artikelkoerper, nicht im Do/Don't-Block, und beruehrt die 24-B-Reserve nicht.

**Betrieb:** SMB-Mount fiel mitten im Lauf weg, via `scripts/ensure-nas-mounted.sh` geheilt
(rc=0); leerer Rest-Mountpoint `/Volumes/daten-1` bewusst nicht angefasst.

## 2026-08-31 — twin-fidelity-review: Drafts Seite 3, drei Golds; Riegel erstmals durch Verdichten bewegt

**Report:** `outputs/2026-08-31_fidelity.md`. **Gesamt-Fidelity 31** (nach 28 am 30.08.), je
Gold A' 33 / B' 35 / C' 25. Golds: Zahlungsmahnung 14.04.2026 (namenlos, Sie), Grundsatzmail an
das HLEB-Webteam 05.05.2026 (englisch), Brandschutz-Prüffrage an Bojan Stevanovic 11.05.2026
(vollständig leckfrei, aus dem Zitat-Stack eines späteren Entwurfs).

**Fünf Befunde:** (1) ⭐ **Wer fragt, bringt keinen Apparat mit** — die Fachfrage an den
VKF-Experten enthält keine Norm, keinen Nachweis; der Zwilling erfand «Bfl-s1 nach EN 13501-1»
(16. Beleg der Erfindungs-Drift) → [[fachsignatur]], [[denken]]. (2) ⭐ **Der Auftrag wird zur
Vorlage abstrahiert**, nicht abgearbeitet → [[arbeitsweise]]. (3) ⭐ **«Dear» gehört dem Team,
«Hi» der Person** — widerlegt die heute früh in Batch 110 vermutete monotone Bewegung
`Dear` → `Hi` (Beleg 05.05.2026, drei Monate nach dem «Hi») → [[beziehungsregister]],
[[QUESTIONS]] 260831b #1. (4) ⭐ **Die Mahnung zerfällt in Ein-Satz-Absätze**, und der Vorbehalt
«bei Akzeptanz der Rechnung» gehört der Rechnungsstellung, nicht der Mahnung → [[stimme]],
[[haltung]]. (5) Der namenlose Mahnungs-Opener stand seit Batch 36 im Artikel, war nie
kompiliert und wurde prompt verfehlt — **erster kausal gezeigter Preis des Wachstums-Riegels**.

**Gehirn geändert (erstmals seit fünf Läufen):** drei Redundanzen aus dem Do-Block von
[[beziehungsregister]] entfernt («Gruss nach Mail-Typ», «Stufe nur Richtwert», «Du gross» —
alle drei anderswo belegt), dafür promoviert: «Auch die Zahlungserinnerung ist namenlos, selbst
im warmen Du (260831).» Neu kompiliert via `build_dna.py`, Auto-Block **33'976 B**, Reserve
24 B. Eingriff zeilenexakt, mit `diff` gegen die Sicherung nachgemessen (Rule 260811).

**Neue Selbstfragen:** [[QUESTIONS]] 260831b #1–#5 (Dear/Hi nach Adressatentyp · Bitte-Skala bei
fälliger Schuld · Erstanrede mit vollem Namen · kein Apparat in der Frage · Verdichten künftig
ohne Rückfrage, mit Bezifferung von `MAX_AUTO_BYTES`).

## 2026-08-31 — twin-mail-training Batch 110: `Drafts` Seite 2, fuenf Golds, Anrede-Bewegung «Dear» → «Hi»

**Raw:** `raw/260831-mailbatch-110.md`. **Fenster:** `rj@` Sent Items ab 30.08.2026
(`totalResultCount: 2`, beide Hub-Selbstmails, kein Gold) + `Drafts` Seite 2 von 5
(`order: oldest`, `offset: 25`, 25 von 124 Eintraegen, Zeitraum 11.11.2025–09.04.2026).
**5 Golds `authentisch`**, 4 im Volltext, 1 aus dem Zitat-Stack; Gratis-Vorfilter sparte 14 von
25 `read_resource`-Aufrufen. Kanaltrennung je Stueck ueber die `internetMessageId`.

**Metrik ueber alle fuenf Golds (422 W.):** Du-Gross-Quote 1.0 (4/4) · `unterstrich_bullets: 5` ·
Satzlaenge 19.2 W. · Anreden Hoi Lukas / Hoi Albin / Geschätzter Herr / Sehr geehrter Herr ·
Gruesse «Lieber Gruss» und «lgr».

**Vier Befunde, die bestehende Saetze praezisieren, statt neue anzuhaengen:**
1. **Beziehungsregister:** die englische Anrede an den Webprogrammierer war am **10.02.2026**
   «**Dear Hlep,**» mit «**Kind regards**» — sechs Tage vor dem in Rule `anrede-kontakte`
   genannten «Hi Hleb»-Erstbeleg. Bewegung `Dear` → `Hi`; die Rule ist unvollstaendig, nicht
   falsch. → [[beziehungsregister]], [[QUESTIONS]] 260831 #1.
2. **Beziehungsregister:** zweiter Beleg des Anrede-Fehlgriffs **aus der Exchange-
   Verzeichnisform** (dreimal «Herr Valentin» an eine Frau, einmal «Guten Tag Valentin Michelle
   Amanda»); gleiche Familie wie «Herr Mustafa» (Batch 100). → [[QUESTIONS]] 260831 #2.
3. **Beziehungsregister:** die Anrede-Stufe wandert bei **Rechtsverbindlichkeit** nach oben,
   ohne Geldbezug — «Guten Tag» → «Geschätzter» → «Sehr geehrter» beim selben Empfaenger in gut
   zwei Stunden. Oberbegriff ist das Anlassgewicht, Richtung **formeller, nicht waermer**;
   praezisiert Batch 109 Kernbefund 12.
4. **Denken:** «**Frage:**» ist ein **Anliegen-Anker, keine Frage** — das Wort steht vor dem
   Kontextabsatz, die Bitte folgt zwei Absaetze spaeter ohne Fragezeichen. Zweiter, aelterer
   Beleg (30.01.2026) als der aus Batch 109.

**Neue Formmarker:** Aenderungs-Diff «Vorher: … / Neu: …» statt Prosa ([[arbeitsweise]]) ·
Unterstrich als Aufzaehlungszeichen ([[stimme]]) · «Kind regards» und «lgr» als Grussformen
([[stimme]]) · nachgereichter Konditional-Zielsatz ([[denken]]) · «wir» traegt das Koennen,
«ich» traegt die Luecke ([[haltung]]) · HR-Schreibweise und Eingabequittungs-Verfahren
wortgetreu ([[fachsignatur]]).

**Auto-Block-Reserve — gemessen:** `build_dna.py` meldet **33'952 B von 34'000, also 48 B
Reserve** (unveraendert seit Batch 108); Kompilation «bereits aktuell (keine Aenderung)»,
`rules/jans-dna-facetten.md` md5-gleich vor und nach dem Lauf (`ca3b827b…`). **Fuenfter Lauf in
Folge ohne Wirkung aufs Gehirn** — Batch-Abschnitte erreichen den Auto-Block nicht, nur
Do/Don't-Bloecke tun das, und deren naechste Erweiterung bricht am Riegel ab.

## 2026-08-30 — twin-fidelity-review: Fidelity 28, vier neue Formmarker, Riegel 4. Lauf ohne Wirkung

**Report:** `outputs/2026-08-30_fidelity.md`. **Golds** (alle vor-Claude, Sent Items November
2025, Echo-Grep vor der Wertung gelaufen): A 06.11. an den Architektenkollegen (plain text,
strukturell echo-frei), B 11.11. an eine branchenferne Bekannte mit zwei Cc, C 24.11. an den
3D-Freelancer (**HYBRID** — nur Teil 1 ueber dem Signaturblock gewertet).

**Gesamt-Fidelity 28** (nach 23 am 29.08.). Beziehungsregister 50 · Haltung 28 · Stimme 27 ·
Fachsignatur 25 · Arbeitsweise 25 · Denken 17. Messvorbehalt: grosser Vorschau-Leak, im Report
und in `scratchpad/twin-blind-260830.md` protokolliert; Geleaktes nicht gutgeschrieben.

**Vier neue Formmarker, alle in den Artikeln nachgetragen:**
1. **Der Kopf-Block ueber der Anrede** (Gold A): Titel + Link unbeschriftet als Kopfzeilen, der
   Gegenstand wird im Text nie wieder eingefuehrt; dazu Anrede **ohne Komma** und Folgesatz
   **klein**, ohne Leerzeile. Gegenbewegung zum belegten Breadcrumb-Marker. → [[arbeitsweise]],
   [[stimme]].
2. **Eine A)/B)-Liste unter einer Bitte ist KUMULATIV, nicht alternativ** (Gold C) — fehlt das
   «oder», sind die Glieder Positionen einer Anforderung. Der Zwilling machte daraus ein
   Wahlangebot und **kehrte den Sprechakt um**; dazu asymmetrische Glieder (A) vier Bullets,
   B) ein Wort) und die Listenform in der **Betreffzeile**. → [[arbeitsweise]], [[denken]].
3. **Dank und Kurzgruss verschmelzen, der Gruss wird klein geschrieben** (Gold B): «Danke fuer
   deine Angaben und lieber Gruss», Dank **vorweggenommen**, darunter voller FG-Block. →
   [[stimme]].
4. **Der Cc hob die Anrede nicht** (Gold B): zwei Mitleser, davon der Bauherr, und «Liebe Esther»
   bleibt die waermste Stufe. Stuetzt die Einschraenkung 260822. → [[beziehungsregister]].

**Zwei Korrekturen an eigenen Annahmen:**
- ⚠ **«Du immer gross» ist eine Normierung, kein Abbild.** Gold B zeigt in EINEM Absatz «Dich»
  neben «dir» und «du». Die Regel bleibt in Kraft (Raphaels Vorgabe; Claude aendert keinen
  Rule-Wortlaut), ist aber als Norm gekennzeichnet — sonst misst die Fidelity die Vorgabe gegen
  den Korpus. → [[stimme]], [[QUESTIONS]] 260830b #1.
- **Der Hybrid ist ein Verfahren, kein Versehen.** Zweiter Beleg an zwei aufeinanderfolgenden
  Tagen (24./25.11.2025, gleicher Empfaenger): Raphael haengt das Rohmaterial unter die fertige
  Mail. Harter Tell «einschlie**ss**en» als «einschlie**ß**en». Echo-Schutz-Konsequenz: alles
  unterhalb des **ersten** Signaturblocks ist grundsaetzlich `claude-aera`. → [[fachsignatur]].

**Erfindungs-Drift:** 14. Beleg ([[denken]], Gold A — neu ist der Gattungstyp: die blosse
Interessensanfrage unter Peers, also die Gattung mit dem geringsten Substanzbedarf; je weniger
die Aufgabe verlangt, desto groesser der Ueberschuss) und 15. Beleg ([[fachsignatur]], Gold B —
vier erfundene Attribute, wo das Gold eines sucht und den Rest beschreibt).

**QUESTIONS:** Block `260830b` mit sechs Fragen angehaengt (Du-Gross · Cc-Hebung · Kopf-Block ·
mechanischer Hybrid-Schnitt · verschmolzener Dank-Gruss · Gattungswechsel der Goldquelle).

**⚠ Wachstums-Riegel unveraendert voll:** `rules/jans-dna-facetten.md` bei **33'952 B von
34'000 B** (48 B Reserve, per `build_dna.py` nachgemessen). Die vier neuen Regeln sind
**nicht** in die Do/Don't-Bloecke promoviert; der Auto-Block ist byte-identisch zum Vorlauf
(diff geprueft). **Vierter Lauf in Folge ohne Verhaltenswirkung** — [[QUESTIONS]] 260829b #4
liegt zum Entscheid vor.

**Nebenbefund fuer den Betrieb:** vier gepruefte Fenster (Sept.–Nov. 2025, ~80 Sent Items),
**ueber 90 % bereits destilliert**. Der 2025er Sent-Items-Bestand ist als Goldquelle weitgehend
ausgeschoepft; die naechsten Laeufe brauchen eine andere Gattung ([[QUESTIONS]] 260829c #1) oder
`Drafts` Seite 2–5. → [[QUESTIONS]] 260830b #6.

**Alle Schreibvorgaenge append-only, Zeilenstand vorher/nachher geprueft** (Rule 260811):
stimme 4815→4847 · denken 1324→1346 · haltung 1716→1740 · beziehungsregister 3568→3592 ·
fachsignatur 2799→2835 · arbeitsweise 3834→3884 · QUESTIONS 5009→5100. Keine Loeschungen.

## 2026-08-30 — twin-mail-training Batch 109: historischer `Drafts`-Bestand als Gold-Quelle gehoben

**Quelle:** `raw/260830-mailbatch-109.md`. (A) Sent Items `rj@` 29.–30.08.2026 vollständig
(`totalResultCount: 3`) → **1 Gold**. (B) `Drafts` Seite 1 von 5 (25 von 123, `order: oldest`,
04.07.–24.10.2025) → **5 Golds**, davon zwei mit Zitat-Stack, der **2 weitere authentische
Mails** (28./30.06.2025) enthielt. **Gesamt 9 Golds, 8 davon vor dem Claude-Stichtag.**

**Berichtigung an `raw/_INGESTED.md`:** der Batch-108-Abschnitt führte `Drafts` als «von keinem
Batch je angefasst» — die Batch-Tabelle derselben Datei nennt sechs frühere Zugriffe (96, 97,
98, 101, 102, 103). Berichtigt. Der wahre Sachverhalt: alle sechs nutzten den Ordner als
**Delta-Werkzeug** für 2026er Paare; der **historische Bestand 2024/2025** wurde nie als
Gold-Quelle gehoben. Diese Berichtigung ist dem Prüfschritt «beide Teile der Datei auswerten»
zu verdanken.

**Zwei Detektions-Regeln präzisiert (Echo-Schutz):**
1. Die Kanal-Regel aus Batch 96 («Apple Mail = Hub-`osascript`-Draft = `claude-aera`») gilt
   **nur für die Claude-Ära** — der Hub schreibt solche Drafts erst seit 2026. Bei Material
   vor 2026 entscheidet das **Fehlerbild**, nicht der Client. Vier von fünf Entwürfen wären
   sonst zu Unrecht gesperrt worden.
2. «Times New Roman im Fliesstext» ist ein **belegter Falsch-Positiv** der AI-Paste-Detektion
   (Apple Mail rendert `p.p1` in Times bei plain-text-begonnenem Entwurf). Wie das
   Guillemet-Signal ab jetzt nur noch **in Kombination** mit einem zweiten Signal zu werten.

**Facetten geschärft (alle sechs, append-only, `--numstat` bzw. Zeilendifferenz geprüft):**
[[stimme]] +94 (Binnengrossschreibung über 14 Monate und alle Wortarten · Du gross im Anliegen /
klein im Nachsatz, dritte Lesart, Quote 0.875 · «Frage:» als Gattungswort · «Bester Gruss» als
vierte Du-Variante, Gruss nicht empfängergebunden · Zwei-Wort-Quittung · Subjektauslassung ·
Times-Korrektur) · [[denken]] +47 (Handlungskette gelegt statt begründet · Antwort zuerst,
Begründung nach dem Komma · Ausschluss und Alternative in einem Atemzug · Abstufung beziffert
statt qualifiziert) · [[haltung]] +48 (Stufung als Kostenschutz **mit dokumentierter Bestätigung
der Gegenseite** · Dank für die Berücksichtigung nach der Absage · KI-Auskunft als Hörensagen ·
Vollmacht angeboten bevor verlangt) · [[beziehungsregister]] +65 («Lieber» → «Geschätzter» beim
selben Kontakt in zwei Tagen: Anlassgewicht hebt **formeller, nicht wärmer** · dritter Beleg der
Nicht-Nivellier-Linie · registerinvariante Schlussformel · drei Kontakt-Nachträge) ·
[[fachsignatur]] +62 (nummerierte Zustandseinschätzung als dichtestes Fachstück des Korpus ·
**«wir» für das Angebot, «ich» für das Urteil** · Gewerk statt Firma · Grobziel in KW,
Einzelschritt im Datum) · [[arbeitsweise]] +78 («Ich lade Sie ein.» — fachlich delegieren,
organisatorisch selbst zugreifen · Gattungswort vor dem Inhalt · Methoden-Nachtrag Drafts).

**Offene Fragen:** [[QUESTIONS]] 260830 #1 (welche der drei Lesarten der Du-Grossschreibung
gilt — oder wandert sie schlicht mit der Betonung?), #2 (sind die restlichen 98 Drafts als
Gold freigegeben, obwohl sie **nicht versendet** wurden?), #3 (hebt der Geldbezug die
Anrede-Stufe formeller?).

**Auto-Block:** 33'952 B von 34'000 (48 B Reserve, unverändert gegenüber Batch 108).
`build_dna.py` meldet «bereits aktuell»; `rules/jans-dna-facetten.md` md5-gleich vor und nach
dem Lauf (`ca3b827b…`). Vierter Lauf in Folge: Batch-Abschnitte wirken nicht aufs Gehirn.

**Nächstes Fenster:** `Drafts` Seite 2 (`offset: 25`, `order: oldest`), danach Sent Items ab
30.08.2026. Gratis-Vorfilter für leere Hüllen («--» / «Freundliche Grüsse» als ganzes `summary`)
sparte hier 8 von 25 `read_resource`-Aufrufen.

## 2026-08-29 (Wissens-Chef Run 47) — Uebergabe: unbekannter Eigentext-Stratum 2007–2014 als moegliche GOLD-Quelle

`wiki/QUESTIONS.md` (+36/−0), Block **260829c**. Die KB `architektur-fachwissen` destilliert seit dem
29.08.2026 aus `/Volumes/daten/02_Architektur_Archiv` Artikel, deren Quellen im Frontmatter ausdruecklich
als **«Eigentext Raphael Jans»** bzw. **«Eigenmaterial»** ausgewiesen sind — vor-Claude, aus Raphaels
eigener Hand, und damit nach dem Echo-Schutz die Kategorie **GOLD `authentisch`**. Diese KB kannte den
Bestand nicht: `02_Architektur_Archiv` und `architektur-fachwissen` hatten in `wissen/twin/` je **null**
Treffer. Belegte Kandidaten (Begriffsapparat-Eigentexte 2012, Lernskript Typografie 2007,
Denkmalpflege Haus Jans 2012, dazu `00_Ideen/` und `00_Entwurfshaltungen/` 2013–2014) sind dort einzeln
genannt.

Der bisherige Gold-Korpus ist **Mail-Prosa**; dieser Stratum ist **Fachprosa und Argumentation** aus
derselben Hand — eine Gattung, fuer die `fachsignatur` und `haltung` bisher keine Quelle haben.
**Kein Ingest ausgefuehrt** (Entscheid Raphaels): der Stratum ist 12–19 Jahre alt, das afw-Destillat ist
nicht der Originalwortlaut und taugt als Stilquelle nicht, und die Gewichtung je Datei muss am Original
erfolgen. Gegenzeiger in `architektur-fachwissen/wiki/QUESTIONS.md` #38.

## 2026-08-29 — twin-fidelity-review: Nullform des Transmittals, und ein Gold, das keines war

`outputs/2026-08-29_fidelity.md` neu (Gesamt-Fidelity **23**; Golds 07./08.07.2026 aus Sent
Items, Blindfassungen vor der Goldlektuere fixiert). Vier Facetten-Artikel um je einen belegten
Abschnitt erweitert: [[stimme]] (Nullform des Transmittals — kein Anrede, kein Gruss, kein Block,
kontrolliert gegen eine Vollform an denselben Empfaenger sechs Minuten davor), [[haltung]]
(Autorschaft der Empfehlung bleibt beim Fachmann), [[beziehungsregister]] («liebe <Vorname>,»
kleingeschrieben ausserhalb des waermsten Peer-Du; zweiter Beleg fuer den uebergangenen
To-Empfaenger), [[arbeitsweise]] (achte Endform: gar kein Schluss). `wiki/QUESTIONS.md` um fuenf
Fragen (260829b #1–#5; **b**-Suffix wegen Kollision mit Batch 108 desselben Tages).

⚠ Zwei Warnungen: (1) der vom Vorlauf als Gold empfohlene Strang 07.07.2026 15:03 ist ein
**Hybrid** — `Anthropic Sans` und `rgb(253,253,252)` im Body, nur Anrede plus ein Rahmensatz von
Raphaels Hand; die Phrasenprobe des Vorlaufs arbeitet auf der Vorschau und umgeht den seit 260813
etablierten Echo-Grep. (2) Der Wachstums-Riegel von `rules/jans-dna-facetten.md` ist mit 33'952
von 34'000 B **voll**; die drei kompilierwuerdigen Regeln dieses Laufs sind belegt, aber **nicht**
promoviert. `build_dna.py` wurde ausgefuehrt und bestaetigt den unveraenderten Auto-Block.

## 2026-08-29 — twin-mail-training Batch 108: eine Mail, sechs Adressaten, vier Register

`raw/260829-mailbatch-108.md` neu (Sent Items `rj@`, Fenster **28.08.2026**, 10 Mails gelistet,
8 Golds, 4 Volltexte). Alle sechs Facetten-Artikel um einen Batch-Abschnitt erweitert,
`wiki/QUESTIONS.md` um drei Fragen (260829 #1–#3), `raw/_INGESTED.md` nachgeführt.
Kernbefunde: die **Anredezeile gehoert dem Hauptadressaten**, die cc-Mitleser werden inline je
in ihrem eigenen Register angesprochen (erklaert die Nicht-Nivellier-Linie mechanisch); **Rot
als Handlungsmarker** zweiter Beleg, gleicher Farbwert wie Batch 107, Vorbehalt aufgehoben;
**Entscheid per Widerspruchsfrist** zweiter Beleg, wieder ohne Frist; die **haerteste Nachricht
des Tages ist die kuerzeste** und geht an die Zahlstelle (Eskalation ueber Adressat, nie ueber
den Ton); Registerwechsel Sie → Du am ersten Werktag nach dem Treffen, **mit Gegenbeleg im
selben Batch** (blosse Naehe hebt nichts). Auto-Block gemessen: 33'952 / 34'000 B, 48 B Reserve,
`rules/jans-dna-facetten.md` md5-gleich vor und nach dem Lauf. Keine Rule geaendert.

## 2026-08-28 — Fidelity-Review: der Sent-Items-Korpus ist zu Ende, die Drafts fangen an

`outputs/2026-08-28_fidelity.md` neu. **Gesamt-Fidelity 29** (Vorlauf 30), Golds A' 24 / B' 36 /
C' 27. Erstmals **alle drei Golds aus dem Ordner Drafts** — 123 Stueck, von keinem Batch je
angefasst (alle zogen «Sent Items»), zurueckreichend bis Juli 2025 und damit **vor die
Claude-Aera**. Anlass: die Fenster-Tabelle in `raw/_INGESTED.md` ist von Juli 2025 bis heute
**lueckenlos**, und die vom Vorlauf als frei empfohlene Saumstrasse-Schiene stand bereits in
[[fachsignatur]]. Auswahlkriterium ist ab jetzt die **Mail**, nicht ihr Fenster (Restrisiko
benannt). Der Autorschafts-Detektor aus 260827 hat produktiv zwei Kandidaten gesperrt, einen
davon ueber einen Verstoss gegen die Rule `anrede-kontakte` statt gegen den Auto-Block.

Drei Marker in den Auto-Block: **Begruendung der Bitte sagt, wofuer ICH sie brauche** (Stimme,
neu), **«Waere es Ihnen moeglich …» = weiche Sie-Variante der ersten Stufe** (Stimme,
Praezisierung), **achte Endform: Aufforderung zum Kanalwechsel** (Arbeitsweise, neu). Drei
Artikel-Nachtraege ausserhalb des Blocks (Furrer-Trajektorie, Betreff als Zustellfeld,
Kanalwechsel-Beleg). `wiki/QUESTIONS.md` um fuenf Fragen ergaenzt (260828b #1 bis #5).

**Riegel gemessen, nicht fortgeschrieben:** `build_dna.py` kompiliert bei **33'952 B von
34'000, also 48 B Reserve** (Vorlauf 22 B) — **ein** Verdichtungsdurchgang statt sechs, weil
die Gegenfinanzierung vor der Einfuegung geplant wurde. 13 Stellen gekuerzt, ausschliesslich
Beleg-Prosa und Beispielzitate, **keine Regel geloescht**. Zweiter Lauf nacheinander bestaetigt
Kernbefund 12 aus Batch 106: die Batch-/Fidelity-Abschnitte wirken nicht aufs Gehirn, der
zweite Aufruf meldet «bereits aktuell». Die Vorlage eines **Beleg-Anhangs je Facette ausserhalb
des Auto-Blocks** bleibt offen und wird wiederholt.

## 2026-08-28 — Batch 107: die Du-Gross-Quote misst wieder, und sie liegt bei 0.727

`raw/260828-mailbatch-107.md` neu; alle sechs Facetten-Artikel und `wiki/QUESTIONS.md` ergänzt
(`last_updated: 2026-08-28`). Fenster **27.08.2026** vollständig gelistet: 13 Sent Items, davon
**9 Golds** (authentisch), 5 im Volltext gelesen. Gratis-Vorfilter (Selbstadressierung +
Loop-Name im Betreff) hat erneut ein `read_resource` gespart.

**⭐ Hauptbefund:** Batch 106 hatte die Du-Gross-Quote entwertet, weil sie bei null Du-Formen
still `0.0` ausgab. Dieses Fenster trägt **11 Du-Formen in vier Mails** — die erste belastbare
Messung seit Batch 104, und sie fällt gegen die DNA-Kernregel aus: **8 gross, 3 klein, Quote
0.727**. Die Kleinschreibungen streuen nicht, sie sitzen ausnahmslos im beiläufigen Angebotssatz
(«für dich zur Prüfung», «kannst du … Kontaktieren»), während alle Bitte-, Zusage- und
Dankformeln gross stehen; in einem Satz stehen **beide Formen nebeneinander** («für Euch … was
euch wichtiger ist»). Damit ist die Linie aus `beziehungsregister` Z. 1608 dritter Beleg **und
präzisiert**: der Bruch hängt an der **Satzfunktion**, nicht am Kontakt, Tag oder Kanal. Für den
Zwilling ändert das nichts — «Du immer gross» ist Setzung, kein Messwert. Für die Lesart der
Kennzahl ändert es alles: **eine Quote unter 1.0 ist kein Autorschafts-Signal.**

**Zweiter ⭐:** die **Genehmigungsfiktion verlässt das Protokoll** — «@Levi Hiltmann Bitte kurz
nachprüfen; ohne Reaktion ist Sachverhalt Mail bestätigt», fristlos, an den Cc-Mitleser, in einer
gewöhnlichen Fachmail. Erster Beleg war ein Protokoll von 2023; der Marker ist damit mehrfach
belegt und nicht mehr protokollgebunden.

Weitere Befunde: **Rot als Korrekturfarbe** (erster Farbbeleg im Korpus, bis zum zweiten Beleg
nicht übernommen) · **Sammelverteiler direktiv, Einzelmail als Erlaubnisfrage** (dieselbe Runde,
derselbe Tag) · Protokoll gegliedert am **LOS-Baum** mit `_` / `>` / `>>` als Ebenen · jede
Pendenz **zweimal zugestellt**, adressiert vor gesammelt · «Geschätzte Frau Amanda» zum dritten
Mal an dieselbe Empfängerin ⇒ **Fehlerklasse bestätigt** · drei neue Kontakt→Register-Paare
(Bajrami **Sie**, Cetin **Du**, Rothe **Du**, alle mit der Wärmestufe «Geschätzte/r»), je
Einzelbeleg und darum noch nicht in `rules/anrede-kontakte.md`.

**Gehirn gemessen statt fortgeschrieben:** `build_dna.py` nach den Ergänzungen ausgeführt —
«bereits aktuell (keine Aenderung)», Datei byte- und hashgleich. Kernbefund 12 aus Batch 106 im
Regelbetrieb bestätigt. **Reserve jetzt 22 B von 34'000** (Batch 106: 35 B); die nächste
Erweiterung eines Do/Don't-Blocks bricht am Wachstums-Riegel ab.

## 2026-08-27 — Fidelity-Review: der Block erkennt jetzt, was NICHT von Raphael ist

`outputs/2026-08-27_fidelity.md` neu. **Gesamt-Fidelity 30** (Beziehungsregister 43 · Stimme 35 ·
Fachsignatur 30 · Haltung 24 · Denken 24 · Arbeitsweise 21), zwei Golds statt drei — das dritte
wurde nach der Autorschaftsprüfung gesperrt.

**Methodischer Hauptbefund:** die Facetten-Marker sind selbst zum **Autorschafts-Detektor**
geworden. Zwei Mails vom 08.07.2026 zum selben Sachverhalt, eine Stunde auseinander: die eine
fehlerfrei, mit Gedankenstrich als Stilmittel und einer Bitte auf Fragezeichen — beides von
belegten Raphael-Markern verboten; die andere mit dichter Fehlerinsel und Bitte auf Punkt. Neue
Prüfreihenfolge: Fehlerinsel → Verstösse gegen den eigenen Block → Werkzeug-Spuren. Ersetzt den
am 25.08. gefallenen Werkzeug-Detektor um eine zweite, kostenlose Stufe.

**Drei Änderungen im Gehirn**, zwei davon netto ohne Zuwachs: Statusantwort = fette Labels +
vollständiger Dateiname ohne Folgerungssatz ([[arbeitsweise]]) · Service-Satz gehört der
**erbetenen** Auskunft, Amt ODER Lieferant ([[stimme]], qualifiziert) · englische Anrede hängt am
**Kontakt**, nicht an der Sprache ([[stimme]], korrigiert — «Hi Hleb» zweifach belegt).
Beleg-Abschnitte in [[beziehungsregister]], [[arbeitsweise]] und [[denken]] angehängt.

**Riegel zum sechsten Mal scharf**: erster Versuch 34'336 B, ABBRUCH; nach sechs
Verdichtungsrunden kompiliert bei **33'978 B, 22 B Reserve** — zweiter Nullstand in Folge, und
erstmals mussten nützliche Belege weichen, nicht nur Doppelungen. Vorgelegt, nicht entschieden;
Vorschlag: Beleg-Anhang je Facette ausserhalb des Auto-Blocks statt einer weiteren Anhebung.

**Vier neue Selbstfragen** in `wiki/QUESTIONS.md` (260827b #1–#4), darunter der strukturelle
Befund, dass `twin-mail-training` mit Batch 106 in der Gegenwart angekommen ist und der Korpus
Juli 2025 bis Mai 2026 saturiert ist — vier Fenster mussten verworfen werden, bevor eines trug.

## 2026-08-27 — twin-mail-training Batch 106 (Fenster 26.08.2026): drei Befunde über das eigene Messen

`raw/260827-mailbatch-106.md` neu (248 Z.). Sequenzielles Fenster, **13 Sent Items**, davon
1 Hub-Briefing (Gratis-Vorfilter, ungelesen), 2 Kalenderantworten, 1 leere Weiterleitung,
**6 Golds** (5 im Volltext). Der Ersatz-Detektor aus Batch 105 (CSS-Fingerabdruck) hat den
ersten Regelbetrieb bestanden.

**Inhaltlich:** Kollektivregister «Geschätzte Alle» + Du-Kollektiv am Elfer-Verteiler mit
gemischten Registern — widerlegt den Nivellier-Rest von `rules/anrede-kontakte.md` für den
grossen, vertrauten Verteiler (Rule **nicht** selbst geändert, vorgelegt). «Geschätzter Othmar,
werter Albin»: Registerwechsel beim Brandschutz-/Trockenbau-Fachbetrieb gehalten (2. Beleg), und
**«werter» ist nicht ans Sie gebunden** — die Stufe misst Wärme, nicht Anredeform. «Geschätzte
Frau Amanda» an eine Empfängerin namens Valentin Michelle Amanda: **zweiter Beleg der Fehlerklasse
«Herr/Frau + Vorname aus dem Anzeigenamen»** (wie «Herr Mustafa»), Fehlerinsel und kein
Stilmarker. «Darf ich … bitten» in **beiden** Varianten am selben Tag — beide
Batch-104-Teilbeobachtungen als Fensterbeobachtung entwertet. Dazu: Traktanden als A) B) C), die
Rückfrage als behauptete Lesart mit Punkt, Rückwärtsplanung vom unverrückbaren Nutzertermin
(einziges Fett), «durchstellen statt Nadelöhr», die Auflage als Bauleistung mit gleich
mitbestellter Fotodokumentation.

**Drei Befunde über das Messen selbst, alle im selben Lauf behoben oder korrigiert:**
(1) Die **Du-Gross-Quote** gab bei null Du-Formen still `0.0` aus — ununterscheidbar von «alles
klein». Darauf gründete der Streit Batch 104 gegen 105; beide Deutungen fallen. Werkzeug: `None`
bei leerer Grundgesamtheit, `du_formen_total` mitgeführt.
(2) **«lgr»** blieb still, weil `r"\bLgr\b"` seit Batch 98 **gross** im Muster stand — ein
gepflegtes Muster mit falscher Schreibung ist so still wie ein fehlendes. Auf `r"\b[Ll]gr\b"`
erweitert.
(3) Die seit Batch 93 abgeschriebene Warnzeile **«Gehirn seit N Batches nicht neu kompiliert»**
ist falsch: falsche Datei (`build_dna.py` schreibt seit 03.08. nach `rules/jans-dna-facetten.md`,
`rules/jans-dna.md` hat keinen Auto-Block mehr), der Block ist **aktuell** (33'965 B ≡ 33'965 B,
zeichengleich), und Batch-Abschnitte wirken nie aufs Gehirn (`extract_block()` zieht nur den
Do/Don't-Block). Der echte Befund ist die **Reserve: 35 B von 34'000** — die nächste Erweiterung
eines Do/Don't-Blocks bricht am Wachstums-Riegel ab. Warnzeile ab sofort ersetzt durch die
Reserve-Messung.

Geschrieben: `wiki/stimme.md`, `wiki/beziehungsregister.md`, `wiki/denken.md`, `wiki/haltung.md`,
`wiki/fachsignatur.md`, `wiki/arbeitsweise.md` (je additiv + Frontmatter `last_updated`/`sources`),
`wiki/QUESTIONS.md` (Abschnitt 260827: 2 Rule-Fragen an Raphael, 1 Selbstkorrektur, 1 Messbefund),
`raw/_INGESTED.md` (Batch-106-Abschnitt). Werkzeug: `skills/twin/tools/stilmetrik.py`, beide
Korrekturen mit Regressionsprobe nachgemessen. **Regeln nicht selbst geändert.**

## 2026-08-26 — twin-mail-training Batch 105 (Fenster 25.08.2026): der Werkzeug-Detektor ist gefallen

`raw/260826-mailbatch-105.md` neu (203 Z.). Sequenzielles Fenster, 4 Sent Items, davon **2
Hub-Briefings und 2 Golds**. Kernbefund: die in Batch 103 benannte Bruchstelle ist am 25.08.
eingetreten — der Hub ist nach dem Apple-Mail-Ausfall auf `m365 outlook mail send` (Graph)
ausgewichen, seither tragen Hub-Briefings dieselbe `PROD.OUTLOOK.COM`-ID wie Raphaels eigene
OWA-Mail. **Die ID beweist nichts mehr.** Zusätzlich entlarvt: die Vorbedingungsprüfung
(`grep "sendMail"`) ist bis heute leer und konnte nie auslösen, weil der Graph-Weg über die CLI
von Hand lief — eine Vorbedingung, die nur den bekannten Weg prüft, sichert nichts.
Ersatz gemessen und dokumentiert: **CSS-Fingerabdruck** (`Aptos,Calibri`/`#000000` ⇒ Hub gegen
`Aptos,Arial`/`rgb(0,0,0)` ⇒ eigene Hand), zweistufig mit einem Gratis-Vorfilter davor.
Weiter: Du-Gross-Quote trennt hier **nicht** (Gold 1.0 = Hub 1.0) und schränkt Batch 104 ein;
Registerwechsel Sie → Du beim Brandschutz-/Trockenbau-Fachbetrieb, **verzögert um gut einen
Monat** (Rule nicht selbst geändert, vorgelegt); «Danke und Gruss» als fünfte Gruss-Stufe.
Geschrieben: `wiki/stimme.md`, `wiki/beziehungsregister.md`, `wiki/fachsignatur.md`,
`wiki/arbeitsweise.md` (je additiv + Frontmatter `last_updated`/`sources`),
`wiki/QUESTIONS.md` (Abschnitt 260826, 1 Rule-Frage + 3 Hub-interne Befunde),
`raw/_INGESTED.md` (Batch-105-Abschnitt).
Werkzeug: `skills/twin/tools/stilmetrik.py` um `Danke und Gruss` / `Bester Gruss` /
`Besten Gruss` ergänzt — beide Stufen liefen bisher als **Null** durch die Metrik; mit
Regressionsprobe nachgemessen. **Eine Null aus einem Messwerkzeug ist zuerst eine Aussage über
das Muster.**

## 2026-08-25 — Wissens-Chef Run 43: ein Zeiger, der auf die falsche Frage zeigte

`wiki/beziehungsregister.md` nach Z. 3183 (+5/−0): die Steinmann-Gegenprobe des Fidelity-Laufs
schloss mit «vorgelegt als [[QUESTIONS]] 260825b #4»; die Steinmann-Frage steht dort als **#3**,
#4 ist die unverwandte Frage «Geschätzte Firma <Name> AG» zu Firmen-Sammeladressen. Berichtigung
additiv gesetzt, der ursprüngliche Satz bleibt stehen.

Der zugehörige Melder-Befund «die Rule-Zeile Steinmann trägt keinen Verweis auf die offene
Twin-Frage» wurde vom Refuter **widerlegt**: die Kante existiert dreifach (QUESTIONS 260825b #3
mit wörtlichem Zeilenzitat, `beziehungsregister.md` mit ⚠-Vermerk, CHANGELOG-Zeile). Der einzige
echte Defekt war die falsche Nummer.

**Offen und Raphael vorgelegt:** der ⚠-Vermerk an der Steinmann-Zeile in `rules/anrede-kontakte.md`
(Rückfall auf «Guten Tag» ist nur für die **Mahnung** belegt, nicht für Geldkontext allgemein —
drei neuere Belege messen «Geschätzter Roman»). Der Schreibzugriff auf die Rule wurde vom
Auto-Mode-Klassifikator zurückgehalten; der fertige Wortlaut steht im Laufbericht
`wissen/koordination/outputs/2026-08-25_wissens-chef-run43.md`. Der Regelwortlaut ist unverändert.

## 2026-08-25 — Fidelity-Review: der Gruss folgt der Begegnung, die Bitte hat eine fünfte Form

Report `outputs/2026-08-25_fidelity.md`. **Kein Datumsfenster, sondern Thread-Rückgriff** auf den
Strang **Albertstrasse 7 / Nova** (Empfehlung Batch 104) — das vom Vorlauf vorgeschlagene Fenster
11.–17.08. wurde vor dem Lesen verworfen, weil Batch 95 es mit 16 Volltexten abgeerntet hat.
**Erstes Nicht-KISPI-Material seit Batch 91.** Drei Golds (17.07. 12:47, 29.07. 10:31, 29.07.
10:38), alle `authentisch`, alle vor der Lektüre über `internetMessageId` auf `PROD.OUTLOOK.COM`
belegt; Betreff-Probe schied «Waschtürme/REAP» vorab aus. **Gesamt-Fidelity 36** (nach 27).

Befunde: (1) ⭐ **die Gattung trennt die beiden Grussformen nicht — die persönliche Begegnung tut
es**; kontrollierter Vergleich, derselbe Empfänger, dieselbe Anrede, dieselbe Gattung, einmal
«Lieber Gruss und bis bald» + Block (nach Telefonat, Wiedersehen absehbar), einmal nur der Block
(Empfänger in den Ferien). Dritter und **ältester** Beleg für den Kurzgruss ÜBER dem Block
(260824). Bewusst **nicht** kompiliert, solange 260824b #1 offen ist. (2) ⭐ **fünfte, nominale
Bitte-Form**: die Bitte wandert als Zweckangabe in den Liefersatz («mit der Bitte um Durchsicht»,
«zur Kontrolle und Freigabe bei»), kein eigener Satz — kompiliert. (3) **der Service-Satz fällt
auch vor dem bloss vorgeschlagenen nächsten Kontakt**; Verallgemeinerung von 260824, macht die
Regel kürzer — kompiliert. (4) ⭐ **die Anhangs-Lieferung wird benannt, nicht beschrieben**: beide
Blindfassungen erfanden fünf Sachaussagen über nie gesehene Dokumente und schrieben doppelt so
lang. (5) **«Geschätzte Firma <Name> AG»** — Anredestufe für Firmen-Sammeladressen, die das
Register nicht kannte — kompiliert; zugleich zwei Regeln bestätigt (nicht spiegeln, Cc
unangeredet). (6) **der Dank weicht auf «Ihre E-Mail» aus**, wo sein Gegenstand eine Beanstandung
ist. (7) **Prüfaufgabe 260813 #1 gelaufen**: 16.6 W ausserhalb KISPI — KISPI-Hypothese geschwächt,
aber bei 116 W Stichprobe **nicht entschieden**; Band erst nach ≥ 500 W neu setzen.

Sechs Facetten-Widersprüche geprüft, vier aufgelöst, zwei mit offenem Entscheid Raphaels.
`QUESTIONS.md` **260825b** ergänzt: vier Fragen an Raphael (Gruss/Begegnung — gemeinsam mit
260824b #1 zu beantworten; Anhänge nie erklären; Registerzeile Steinmann in
`rules/anrede-kontakte.md` sagt das Gegenteil des Gemessenen; Firmen-Anrede), zwei Hub-interne
Notizen (Satzlängen-Methodik, Du-Gross-Gegenmessung **1.0** gegen 0.667 vom 24.08. — stützt
Antwort (b) «registerabhängig»), ein Zähler (Nivellier-Zeile, zehnter Beleg dagegen).

Gehirn **neu kompiliert** nach viertem scharfem Riegel-Abbruch (34'400 B): drei
Verdichtungsrunden auf **33'855 B, 145 B Reserve**, ausschliesslich Beleg-Prosa gestrichen,
darunter eine echte **Doppelung** in [[haltung]] (die Gegenprobe 260819 wiederholte wörtlich das
Zitat zwei Sätze weiter oben). Keine Regel gelöscht. Gegenprobe `git diff --numstat` nativ per
ssh: `haltung` als einzige Datei geschrumpft (8/11), alle 11 Löschungen zeilengenau die bewussten
Verdichtungen.

## 2026-08-25 — Batch 104: die Du-Gross-Quote misst den Autor, nicht den Stil

Fenster `rj@` Sent Items 23.–24.08.2026, 17 Treffer, **7 mit `PROD.OUTLOOK.COM`**. Erstes
ergiebiges sequenzielles Fenster nach zwei leeren Wochenendfenstern; der Thread-Rückgriff war
nicht nötig. Werkzeug-Detektor aus Batch 103 erstmals **auf die ganze Trefferliste vor der
Lektüre** angewandt — er ersparte 10 Mails und benannte alle 5 Gold-Texte vorab; Vorbedingung
(`sendMail` nirgends im Hub) geprüft und erfüllt. 6 Volltexte gelesen.

**Drei ⭐-Befunde.** (1) Die **Du-Gross-Quote trennt Autoren, nicht Register**: Gold 0.667,
Eigen-Vorspann 0.0, Hub 1.0 — beide Extreme am selben Tag, einmal in **derselben Mail**. Damit
⚠ **widerlegt der Korpus die DNA-Kernzeile «Du immer gross» als Beschreibung Raphaels**; nicht
geglättet, nicht selbst geändert, Entscheid offen ([[QUESTIONS]] 260825 #1), der Zwilling schreibt
bis dahin unverändert gross. (2) Die **Registerdifferenz ist teilweise eine
Autorschaftsdifferenz**: derselbe Empfänger, derselbe Thread, acht Minuten — «Lieber X» (Hub, 89 W)
gegen «Hoi X / Lgr» (eigene Hand, 8 W); der Zwilling greift **eine Stufe zu förmlich**, nie zu
locker ([[QUESTIONS]] 260825 #2). (3) Erstes strukturell lesbares **Korrektur-Delta mit Richtung**:
der Eigensatz steht **vor** der Sachauskunft — der Zwilling liefert die Fakten, Raphael die
Dringlichkeit und die Selbstverpflichtung.

Weiter destilliert: «Darf ich Dich/Euch **B**itten …» mit grossem «Bitten» und **Punkt statt
Fragezeichen** (3/3 an einem Tag, beide Register ⇒ `established`, und er variiert die Formel
bewusst nicht) · «Bester Gruss Raphael» als dritte Gruss-Stufe (`emerging`) · der **Signaturblock
misst das Gerät, nicht die Nähe** · «Werte Frau A, geschätzter B,» als neunter Beleg gegen die
Nivellier-Zeile, mit Gegenprobe: bei vier Empfängern wird nur der Hauptadressat angeredet
(**Adressierung**, nicht Nivellierung) · Anlassgewicht fünffach belegt · «er vermittelt, statt zu
vertrösten» samt neuem Gliederungsmarker «Von meiner Seite:» · Frist **herleiten** statt setzen,
Ersatzkanal mitliefern, den Fachplaner vor sich selbst nennen · Massstab als blosses Verhältnis,
Los-Nummer im Betreff ist **kein** BKP-Code.

Geschrieben: [[stimme]] (+61), [[beziehungsregister]] (+67), [[arbeitsweise]] (+68),
[[fachsignatur]] (+26), [[QUESTIONS]] (+34), `raw/_INGESTED.md` (+97), `raw/260825-mailbatch-104.md`
(neu). Alle Schreibvorgänge mit `--numstat` gemessen, **0 Löschungen** (Rule 260811).

**Ausserhalb der KB:** ein Hub-Erzeugnis ging am 24.08. mit dem unausgefüllten Platzhalter
`→ [ZIELORDNER OFFEN]` an einen externen Fachplaner und passierte dabei `korrektur` und das
Twin-Gate ungehindert. Eingetragen in `logbuch/fristen.md` (Rule 260805) mit dem Vorschlag eines
Platzhalter-Riegels im Agenten `layout`. **Gehirn nicht neu kompiliert** (12. Batch in Folge) —
hier bewusst, solange die Du-Gross-Frage offen ist: der Auto-Block trägt genau diese Kernzeile.

## 2026-08-24 — Fidelity-Review: Nullform, und der Gruss war vielleicht nie eine Entscheidung

Fenster `rj@` 04.08.–10.08.2026, drei Volltexte, alle drei **mechanisch** als Gold belegt (erster
Einsatz des Werkzeug-Detektors aus Batch 103 im Fidelity-Verfahren: OWA-Message-ID ⇒ eigene Hand,
ohne Textkontakt). Gesamt-Fidelity **27** (Vorlauf 33); der Abfall geht auf **eine** Mail zurück —
Gold A enthält keinen einzigen selbst geschriebenen Satz. Score je Facette: Beziehung 37, Stimme 33,
Fachsignatur 25, Haltung 23, Denken 22, Arbeitsweise 22.

Kernbefunde: **(1) Die Nullform** — auf kommentierte Brandschutzpläne antwortet Raphael mit einer
Mail, die nur den Teams-Einladungsblock trägt; der gesetzte Termin IST die Antwort, und er wird
gesetzt, nicht erfragt. **(2) ⭐ Der Gruss ist keine Alternative** — «Lieber Gruss / Raphael» steht in
derselben Mail ÜBER dem Signaturblock, dessen erste Zeile «Freundliche Grüsse» lautet; die bisherige
Entweder-Oder-Achse im kompilierten Block ist falsch geschnitten (Ursache offen, QUESTIONS 260824b
#1). **(3) Der Listen-Reflex ist ein Vereinheitlichungs-Reflex** — zweimal Untergliederung nach acht
Läufen Übergliederung; Raphael mischt fünf Darstellungsarten in EINER Mail, der Zwilling wählt eine
und zieht sie durch. **(4) Beide Blindfassungen stellten keine Frage**, wo beide Golds auf einer
zurückgestellten Grundfrage unter nacktem Label enden (siebte Endform, ersetzt den Service-Satz).
**(5)** Erfindungs-Check: zwei Treffer, darunter eine frei erfundene Frist gegenüber einem
Unternehmer. **(6)** Präzisierung: angeredet wird die Handlungslast, auch ein To-Empfänger wird
übergangen.

Marker in allen sechs Facetten-Artikeln; **fünf** davon in den kompilierten Block gehoben. Riegel
schaltete dreimal scharf (34'646 → 34'087 → 33'985 B); nach zehn Verdichtungen von Beleg-Prosa
kompiliert bei **33'829 B, 171 B Reserve** (40 B mehr als übergeben), ohne dass eine Regel gelöscht
wurde. `--numstat`-Gegenprobe nativ per ssh: jede Löschung zeilengenau eine bewusste Ersetzung,
keine Datei geschrumpft. Fünf neue Selbstfragen (260824b), fünf Facetten-Spannungen geprüft und
aufgelöst. Report: `outputs/2026-08-24_fidelity.md`.

Betriebsstörung: NAS-Mount fiel dreimal aus (wie Batch 103); ein Schreibvorgang landete dadurch im
Repo-Root, wurde sofort korrigiert. Alle weiteren Schreibvorgänge über absolute Pfade mit
Mount-Guard.

## 2026-08-24 — Mail-Training Batch 103: Werkzeug-Detektor über die Message-ID

Sequenzielles Fenster ab 23.08. **leer** (nur Hub-Chef-Briefings). Ertrag vollständig aus dem
Thread-Rückgriff auf den Strang SBB-Näherbaurecht (Projekt 2414 Thalwil), vier eigene Texte über
sieben Wochen in zwei Registern. Neu belegt: eine `internetMessageId` auf `@*.PROD.OUTLOOK.COM`
weist eine Mail **einseitig** als eigene Hand aus, weil der Hub über Apple Mail versendet —
kostenloser dritter Gold-Detektor neben Stichtag und Fehlerinsel, `emerging`, mit protokollierter
Bruchstelle (Graph `sendMail`). Weiter: Anredeformel im Sie-Register schwankt beim selben
Empfänger und trägt keine Distanzstufe; «lgr» klein als unterste Gruss-Stufe; die Buchstaben-
Blockliste steht nun in beide Richtungen; «Ich werde veranlassen, dass …» als Zustell- statt
Handlungszusage. Mikro-Metrik: Satzlänge 12.2 / 9.7 / 15.5 W, Fehler je 100 W 3.1 / 1.7 / 0.0 —
sechster Trennbefund in Folge, Satzlänge-Widerspruch zu Batch 102 offen protokolliert.
Geschrieben: `raw/260824-mailbatch-103.md`, `raw/_INGESTED.md`, fünf Facetten-Artikel
(stimme, beziehungsregister, denken, arbeitsweise, fachsignatur), `wiki/QUESTIONS.md`
(Runde 260824, vier Einträge). `haltung.md` unverändert — dieser Batch trug dazu nichts bei.
Gehirn nicht neu kompiliert (elfter Batch in Folge).

## 2026-08-24 — Vertiefungslauf: Preview-Leak im Fidelity-Review formalisiert (Zwanzigste Falle)

**Kein Zugriff auf den Mail-Korpus in dieser Sitzung** (M365-Zertifikat
`~/.cli-m365-cert-combined.pem` in dieser Umgebung nicht vorhanden, `node
connectors/m365-graph.mjs --selbsttest` bricht mit «Zertifikat fehlt» ab — derselbe Befund wie
am 23.08.2026). Workflow B/C (Mail-Training, Fidelity-Review) damit nicht durchfuehrbar; erneut
kein neuer Marker aus dem Korpus behauptet, stattdessen eine bereits offene, korpusunabhaengige
Selbstfrage geloest.

**Bearbeitet: [[QUESTIONS]] 260823b #5 (Preview-Leak verfaelscht die Stimme-Note).** Die Frage
war als «Hub-intern, kein Handlungsbedarf fuer Raphael» eingestuft und enthielt den Fix bereits
als Vorschlag — offen war nur, ihn zu uebernehmen. Geprueft: der Fix stand nirgends als
verbindliche Praxis (`grep` auf `summary-Feld`/`Preview-Leak` in `CLAUDE.md`/`SKILL.md` lieferte
nichts). Umgesetzt als **Zwanzigste Falle** in `wissen/twin/CLAUDE.md` (Abschnitt «Sync»): das
`summary`-Feld von `outlook_email_search` zeigt vor der Blindfassung bereits Anrede und
Eroeffnungssatz und darf beim Kandidaten-Zuschnitt nicht gelesen werden; Auswahl nur ueber
Betreff, Empfaenger, Datum, Anhangsliste, `read_resource` erst nach Kandidatenwahl und
Blindfassung. Dieselbe Regel zusaetzlich **verfahrenswirksam** in `skills/twin/SKILL.md`,
Workflow C Schritt 1 ergaenzt, damit der naechste `twin-fidelity-review`-Lauf sie tatsaechlich
liest und nicht nur die KB sie dokumentiert. QUESTIONS-Eintrag mit
✅-BEANTWORTET/UMGESETZT-Block geschlossen.

**Schreibkontrolle** (`git diff --numstat`, lokaler SSD-Klon): `CLAUDE.md` +19/-0,
`skills/twin/SKILL.md` +6/-1 (die eine Loeschung ist der ersetzte Satzschluss derselben
Aufzaehlungszeile, kein Bestandsverlust), `wiki/QUESTIONS.md` +11/-0. Kein `nas-commit-now.sh`
in dieser Sitzung ausgefuehrt (Rule `sync-kanonische-quelle.md`: Commit/Push liegen ausserhalb
dieses Auftrags — «kein commit, kein push»).

**Nicht geleistet:** jede weitere offene Frage in `QUESTIONS.md`, die Korpuszugriff braucht (die
grosse Mehrheit, u.a. alle mit «Frage an Raphael» markierten Eintraege aus Batch 102/260823b) —
ausserhalb des Auftragsumfangs ohne Mail-Connector. Naechster Lauf mit Korpuszugriff sollte
gemaess `raw/_INGESTED.md` («Naechstes Fenster» unter Batch 102) fortsetzen.

## 2026-08-23 — Vertiefungslauf: fehlende «Achte Falle» im Echo-Schutz-Katalog nachgetragen

**Kein Zugriff auf den Mail-Korpus in dieser Sitzung** (`claude.ai Microsoft 365`-MCP nicht
autorisiert, Zertifikat `~/.cli-m365-cert-combined.pem` in dieser Umgebung nicht vorhanden —
`node connectors/m365-graph.mjs --selbsttest` bricht mit «Zertifikat fehlt» ab). Workflow B/C
(Mail-Training, Fidelity-Review) waren damit nicht durchfuehrbar; es wurde **keine neue Mail
gelesen und kein neuer Marker aus dem Korpus behauptet** — Echo-Schutz gilt auch fuer die
Arbeitsweise dieses Laufs selbst: lieber ein bestehendes, belegtes Raetsel loesen als etwas ohne
Quelle nachschieben. Stattdessen die offene Selbstfrage [[QUESTIONS]] 260823 #5 geprueft, die aus
dem `Vertiefungslauf` desselben Tages stammt.

**Befund: die Diagnose von 260823 #5 war falsch, das eigentliche Problem ein anderes.** Die
Vermutung lautete, «Siebte Falle» und «Neunte Falle» im Echo-Schutz-Katalog
(`wissen/twin/CLAUDE.md`) seien je doppelt vergeben. Ein Grep auf `**<Ordnungszahl> Falle, neu`
zeigt fuer beide je genau EINEN Treffer. Tatsaechlich fehlte die **Achte Falle**: vier Stellen im
Bestand referenzierten sie bereits als bekannt (Hilti-Joch-Tabelle «Achte Falle,
mustergueltig», zwei Verweise im Fidelity-Abschnitt 260814/260820, ein Verweis in der
Praezisierung vom selben Tag), aber nirgends stand ihre eigene Definition. `git log -p --all --
wissen/twin/CLAUDE.md` (lokaler SSD-Klon) bestaetigt: «Achte Falle» kommt in der gesamten
Datei-Historie nur als Verweis vor, nie als eigene Ueberschrift — keine geloeschte Zeile,
sondern eine nie geschriebene Definition.

**Nachgetragen:** ein eigener Absatz «Achte Falle, neu 13.08.2026 (Batch 92)» zwischen der
Siebten und der Neunten Falle (chronologisch richtig, beide 13./14.08.2026), rekonstruiert aus
den vier bereits vorhandenen Fundstellen, ohne neue, unbelegte Behauptung: «Raphaels Rahmen um
ein eingesetztes Fragment» — die Handsignatur (hier ein Tippfehler, «bessern» statt «besseren»)
sitzt im selbst getippten Einleitungssatz, der danach eingesetzte Apple-Mail-Block
(`Apple-Mail-URLShareWrapperClass`, 4×, ~300 Woerter) ist fehlerfrei und Fremd-/Hub-Herkunft.
Beleg: Hilti-Joch-Mail vom 13.08.2026 18:57 (bereits in der Zwoelften-Falle-Tabelle dokumentiert,
Fenster Batch 95). Die falsche Diagnose an ihrer urspruenglichen Stelle **nicht geloescht,
sondern per Praezisierungs-Absatz korrigiert** (Konvention dieser Datei, vgl. «⚠ Praezisiert
23.08.2026» weiter unten im selben Dokument). [[QUESTIONS]] 260823 #5 mit
✅-BEANTWORTET-Block geschlossen.

**Ergebnis:** der Fallen-Katalog ist jetzt lueckenlos von der Dritten bis zur Neunzehnten Falle
durchnummeriert (vorher: Dritte–Siebte, dann Neunte–Neunzehnte, Achte fehlend). Kein Bestand
geloescht — `git diff --numstat` (lokaler SSD-Klon, nativ, kein SMB-`git`): `CLAUDE.md` 39
Einfuegungen / 5 Loeschungen (die 5 sind die ersetzte Falschdiagnose), `wiki/QUESTIONS.md` 20
Einfuegungen / 0 Loeschungen. Kein `nas-commit-now.sh` in dieser Sitzung ausgefuehrt (Aenderung
liegt zur Pruefung bereit, Commit gemaess Rule `sync-kanonische-quelle.md` ueber den naechsten
Sync-Lauf oder auf Zuruf).

**Nicht geleistet:** jede weitere in `wiki/QUESTIONS.md` offene Frage, die Zugriff auf den
Mail-Korpus braucht (die grosse Mehrheit) — ohne den Connector ausserhalb des Auftragsumfangs
dieses Laufs. Naechster Lauf mit Korpuszugriff sollte gemaess `raw/_INGESTED.md`
(«Naechstes Fenster» unter Batch 102) fortsetzen: Thread-Rueckgriff zuerst, dann sequenziell
`rj@` ab 23.08.2026.

## 2026-08-23 — Vertiefungslauf: Echo-Katalog-Audit + Batch-102-Raetsel geloest (Kontext-Diaet-Fund)

Vertiefung obendrauf auf die beiden heutigen Regellaeufe (Batch 102, Fidelity-Review Fenster
28.07.–03.08.), nicht deren Wiederholung. Zwei Ergebnisse:

- **`CLAUDE.md`-Fallen-Katalog vollstaendig gegen `wiki/QUESTIONS.md` gegengelesen** (alle
  «Kandidat, nicht aufgenommen»/«Gegenprobe steht aus»-Stellen einzeln geprueft). Befund: die
  Referenz `text-transform:none als Naht-Marker` (Siebzehnte Falle) und die urspruengliche
  Frage «Klebe-Marker eingefuegter Bloecke» (Batch 99 #2) sind **derselbe Kandidat**, nicht zwei
  verschiedene — die spaetere Textstelle wurde offenbar geschrieben, ohne gegen die im selben
  Dokument bereits vorhandene Aufloesung («… damit beantwortet») gelesen zu werden. Praezisierung
  in `CLAUDE.md` ergaenzt (keine Loeschung), [[QUESTIONS]] 260820 #2 bleibt auf «beantwortet»
  stehen. `color:rgb(10,10,10)` (260813-Lauf-2 #2) und die ASCII-Transliteration im Betreff
  (260815 #2, referenziert in `CLAUDE.md`) sind auf beiden Seiten konsistent als offen gefuehrt —
  keine weitere Doppelbelegung gefunden.
- **[[QUESTIONS]] 260823 (Batch 102) #1 geloest** (Bullet-Widerspruch 16.07. acht «_ »-Bullets
  gegen 20./21.08. keines): kein Rueckschritt, sondern eine **Kontext-Zugriffs-Aenderung**.
  `git log -p -- rules/jans-dna.md` im lokalen SSD-Klon zeigt Commit `7b54407f`
  («kontingent-regime», 03.08.2026 23:08:37): er verschob den kompilierten Facetten-Block samt
  der «_ »-Regel aus dem @-importierten `rules/jans-dna.md` (laedt in jede Session) in das
  **nicht** importierte `rules/jans-dna-facetten.md` (`skills/twin/tools/build_dna.py` Zeile
  23–27 bestaetigt das aktuelle Ziel). Der 16.07.-Text entstand vor, der 20./21.08.-Entwurf nach
  der Verschiebung. **Nebenfund dabei:** der Abschnitt «Kontext-Kosten dieser KB» in `CLAUDE.md`
  wurde 22 Minuten VOR diesem Commit geschrieben und seither nie nachgezogen — er behauptete
  bis heute faelschlich, der Block laede weiterhin «in jede Session». Korrektur in `CLAUDE.md`
  ergaenzt (Original stehen gelassen, Rule 260811). `logbuch/LOGBUCH.md` um den 20./21.08. nennt
  den konkreten Erzeugungslauf des Unternehmer-Entwurfs nicht namentlich; welcher Loop die drei
  fast zeitgleichen Fruehmorgen-Drafts (Behoerde/Unternehmer/Briefing) genau schrieb, bleibt
  offen — die Kontext-Erklaerung ist unabhaengig davon belastbar.
- Nicht geleistet: Korpus-/Mailrecherche fuer die verbleibenden Kandidaten mit nur einem Beleg
  (`rgb(10,10,10)`, `rgb(252,252,251)` bereits verworfen) — ausserhalb des Auftragsumfangs
  dieses Laufs (Vertiefung, kein Voll-Audit); sie bleiben in `QUESTIONS.md` korrekt als offen
  gefuehrt.
- Schreibkontrolle: `git diff --numstat` nativ per ssh war in dieser Sitzung technisch nicht
  erreichbar (Sandbox ohne Schluessel-Zugang zur Synology, `Permission denied
  (publickey,password)`); stattdessen Zeilen-/Textabgleich gegen die vor dem Edit gelesenen
  Originalpassagen durchgefuehrt (beide Aenderungen bestaetigt rein anhaengend, nichts geloescht).

## 2026-08-23 — twin-fidelity-review (Fenster 28.07.–03.08.2026)

- Drei Golds gelesen (Behoerden-Sie · Du mit sieben Cc · gestapelt gemischt), **Gesamt-Fidelity 33**
  nach 30 (22.08.). Report `outputs/2026-08-23_fidelity.md`.
- **Kernbefund: die Anrede-Stufe ist eine Trajektorie, kein Standbild.** Zwei von drei Anreden zu
  **tief** — Spiegelbild von 260822 (dort 3/3 zu hoch), verursacht durch den dortigen Marker. Der
  Ausloeser hebt im selben Vorgang nicht, ueber Wochen persoenlichen Kontakts aber kumulativ:
  Furrer «Guten Tag» → «Geschaetzter Herr» in vier Tagen, Stadelmann «Geschaetzter Herr
  Stadelmann» → «Geschaetzter Othmar» in zwoelf. Damit faellt die 260822-Vermutung «Kernteam gegen
  ausfuehrender Unternehmer» weg. Marker in [[beziehungsregister]] **und im kompilierten Block**.
- Weitere Marker (nur Artikel-Fliesstext): «werter <Vorname>» auch im Du, reine Waermestufe ohne
  Sie-Bindung ([[beziehungsregister]]) · sechste Endform «Ich hoffe, Du hast Verstaendnis fuer die
  Situation.» bei selbstverschuldeter Verzoegerung ([[arbeitsweise]]) · zweite Achse der
  Zuschreibungsschaerfe: eigenes Lager → unpersoenlich, fremdes → Aktiv 2. Person ([[haltung]]) ·
  Dokumentenliste als nackte Dateinamen-Zeilen unter verblosem Ankuendiger ([[arbeitsweise]]) ·
  fremde Signaturbloecke bleiben roh ([[arbeitsweise]]) · offene Auskunftsfrage an die Behoerde als
  EIN indirekter Satz ohne Fragezeichen ([[denken]]).
- **Regel entzweideutigt:** «Auskunft ans Amt» im Service-Satz-Marker meinte die Auskunft, die
  Raphael dem Amt GIBT; das **Ersuchen** ans Amt traegt keinen Service-Satz (Gold A). Im Block
  korrigiert ([[stimme]]).
- Gehirn neu kompiliert: erster Versuch **34'568 B → ABBRUCH** (Riegel 34'000, zweiter scharfer
  Test, nichts geschrieben); nach Verdichtung in vier Facetten **rc=0 bei 33'869 B, 131 B Reserve**.
  `--numstat`-Gegenprobe nativ per ssh: alle Loeschungen zeilengenau die bewussten Ersetzungen,
  keine Datei geschrumpft.
- Fuenf neue Selbstfragen `QUESTIONS.md` 260823b; #1 gehoert in denselben Entscheid wie 260822b #1
  und #2 (offene Klausel `rules/anrede-kontakte.md`). #5 ist Hub-intern: das `summary`-Feld der
  Mail-Suche leakt Anrede und Eroeffnungssatz vor der Blindfassung.

## 2026-08-23 — twin-mail-training Batch 102 (Fenster 21.–23.08.2026 + Thread-Rueckgriff)

- Sequenzielles Sent-Fenster **leer an Gold** (Wochenende: 2 Sent, davon 1 Hub-Chef; 9 Drafts,
  alle Hub; keine Inbox-Zitate). Ertrag vollstaendig aus dem in Batch 101 empfohlenen Strang
  **zitierte Vorgaengerteile** — EIN Thread (2414 Thalwil) trug vier Eigentexte ueber zehn Monate
  in zwei Registern. **Strang bestaetigt; kuenftig VOR dem sequenziellen Fenster abschoepfen.**
- **Erstes `korrektur-delta` im Inneren eines gesendeten Hub-Erzeugnisses**, erkannt allein an der
  Fehlerinsel (Kasusfehler + Modusbruch + 56-Woerter-Lauf-Satz in 515 sonst fehlerfreien Woertern).
  Inhalt: Raphael ersetzte die **Ankuendigung** des Vorgehens durch eine **Weiche mit Vorrang fuer
  den Bauherrn**. Marker in `wiki/haltung.md`.
- **Neue Echo-Probe im KB-Schema: der BETREFF.** Er wird immer selbst getippt, auch wenn der Body
  eingefuegt wird, und steht bereits in der Trefferliste — billigster bekannter Detektor, kostet
  kein `read_resource`. Ein Text von 2025 damit als Recherche-/KI-Paste verworfen.
- Facetten ergaenzt: `stimme` (registerneutrale Sendeformel · Signaturblock auch am Desktop ·
  Lauf-Satz als Eigenhand-Signal), `beziehungsregister` («Geschätzter <Vorname>,» im Du, **fuenfter**
  Beleg → Anlassgewicht-Klausel `established` · Anrede-Komma ist kein Signal · Waermehebung ohne
  Registerwechsel), `arbeitsweise` (Blockliste als Antwortformular · kommentarlose Weiterleitung),
  `haltung` (Weiche vor der Ankuendigung · Huerde bei der Behoerde senken), `fachsignatur`
  (Klammer-Kurzverweis · «im Auftrage der Bauherrschaft» · Verfahrenskanal erfragen), `denken`
  (Doppel-Alternative an die Behoerde, als **Kandidat**, Quelle verworfen).
- `CLAUDE.md`: zwei Eintraege im Echo-Katalog — **BETREFF-PROBE** und **Nachtrag zur siebten Falle**
  (Einschub ohne typografische Marke; Fehlerdichte **absatzweise** messen). ⚠ Bewusst **benannt statt
  nummeriert**: die Ordnungszahlen des Katalogs sind im Bestand doppelt vergeben.
- `QUESTIONS.md`: fuenf neue Fragen (#1 Bullet-Widerspruch zu Batch 101, **nicht geglaettet** ·
  #2 Doppel-Alternative an Raphael · #3 Nullform-Weiterleitung · #4 gezielte Delta-Suche, Freigabe
  Raphael noetig · #5 Katalog-Nummerierung).
- Gehirn **nicht** neu kompiliert (zehnter Batch in Folge, Reserve in diesem Lauf nicht gemessen).

## 2026-08-22 — twin-fidelity-review (Fenster rj@ 22.07.2026, drei Register)

- Drei Golds gelesen und gewichtet (22.07. 08:24 vertrautes Du · 18:19 Geschäfts-Du ·
  18:40 Fachplaner-Sie), alle drei authentisch, keine neue Echo-Falle. Zwei Kandidaten vor
  dem Lesen als bereits abgeerntet aussortiert (Vorlauf-Prüfschritt der 19. Falle, wirksam).
- **Gesamt-Fidelity 30** (Vorlauf 34). Beziehungsregister **15** — drei von drei Anreden
  verfehlt, alle in dieselbe Richtung; Fachsignatur **46**, erster Lauf seit Wochen ohne
  jede erfundene Angabe.
- Kernbefunde: die drei Hebe-Regeln (Cc · Gewicht · Kanalwechsel) sind **notwendig, nicht
  hinreichend** — Erhebungsartefakt, der negative Raum wurde nie miterhoben · **Gegenbeleg
  zur Treffen-/Kanalwechsel-Klausel** (Stadelmann bleibt nach dem Telefonat im Sie), trifft
  eine offene Stelle in `rules/anrede-kontakte.md`, Rule-Wortlaut NICHT angetastet · das seit
  260820 benannte Anti-Muster «Bei der Durchsicht …» wörtlich reproduziert, dritte Sprosse der
  Ruege-Skala nach Beweislage · Sicherheits-Inversion erstmals in zwei Golds zugleich, neue
  Form «Ich denke <Aussage>?» · der «Listen-Reflex» ist ein **Normalisierungs-Reflex** und
  schlägt in beide Richtungen.
- Sechs Artikel gewachsen (fünf rein anhängend, `-0`), [[QUESTIONS]] +5 Fragen (260822b).
- **Wachstums-Riegel scharf getestet:** erster Compile 34'131 B → ABBRUCH, nichts geschrieben.
  Nach Auslagerung von Beleg-Prosa und zwei echten Doppelungen kompiliert mit **rc=0 bei
  33'900 B (100 B Reserve)** — 98 B mehr als übergeben, trotz neuem Marker. Nur ein Marker
  wurde in den Block gehoben; die übrigen Befunde stehen im Artikel-Fliesstext.

## 2026-08-22 — twin-mail-training Batch 101 (Fenster 21.–22.08.2026)

- Zwei Gold-Texte destilliert (21.08. Du/mobil, 07.08. Sie — letzterer aus dem **zitierten
  Vorgaengerteil** einer Weiterleitung, neuer Gold-Strang); 17 Marker in alle sechs Facetten.
- Kernbefunde: «_ »-Bullet gilt auch im formellen Sie (widerlegt QUESTIONS 260819 #3) ·
  Sammelanrede mit «&» · Doppel-Anredezeile «Geschätzter/werter» seit 14.07. dreifach belegt ·
  «Wir» traegt die Anforderung, «Ich» die eigene Handlung.
- Zwei Anti-Marker: der Gruss aus der Handy-Signatur ist **kein** Registersignal · verfallene
  Hub-Entwuerfe werden regeneriert, nicht ueberarbeitet (kein `korrektur-delta`).
- `skills/twin/tools/stilmetrik.py` erweitert: «werter» in `ANREDEN`, neue Kennzahl
  `unterstrich_bullets` (Gold 6, Zwilling 0) — die staerkste bekannte Luecke ist jetzt gemessen.
- Fuenf neue Fragen in `wiki/QUESTIONS.md` (260822 #1–#5). Rohdatei `raw/260822-mailbatch-101.md`.

## 2026-08-21 — Fidelity-Review (Fenster 14.–20.07.2026): der erste Regressionstest

Vier Golds, alle authentisch — und **zwei davon bereits von Lauf 260714j abgeerntet**, weil die
Fidelity-Laeufe ab Juli 2026 im eigenen Korpus mitlaufen. Aus dem Sammel-Lauf wurde damit ein
**Regressionstest**: dieselben Golds, fuenf Wochen spaeter, mit den daraus destillierten Markern
im Gehirn. **Gesamt-Fidelity 34** (Beziehungsregister 48 · Fachsignatur 47 · Stimme 30 · Haltung
30 · Denken 28 · Arbeitsweise 22).

**Kernbefunde:** (1) **Marker halten nur, wenn sie nachschlagbar sind.** Die Zuordnung «Felix ist
Du» und das Unterlassungsgebot zum «Du,»-Filler hielten; die **Inhibition** eines eigenen Reflexes
(«die gestapelte Anrede nicht zur Sammelform verschmelzen») hielt nicht — der Zwilling schrieb
«Sehr geehrte Herren Vanvelsen und Manz» statt «Geschätzter Herr Vanvelten, werter Herr Mans».
Damit fallen die drei hartnaeckigsten Drifts (Listen-Reflex, Fragezeichen hinter der Bitte,
Anrede-Verschmelzung) in **eine** Klasse; Formfrage an Raphael ([[QUESTIONS]] 260821b #1).
(2) **Sicherheits-Inversion, neu in [[denken]]:** Raphael haengt den Sicherheitsgrad an die
Beweislage — der nachgerechnete Fehler steht als Zuschreibung im Aktiv in Klammern, der blosse
Verdacht bleibt «es scheint». Der Zwilling dreht beides um. (3) **Die Frageform des 260820-Markers
eingegrenzt** ([[haltung]]): auslegbarer Mangel → Frage, arithmetisch nachweisbarer Fehler →
beilaeufige Feststellung. (4) **Die Kurzzahl schlaegt den Apostroph im operativen Peer-Du**
([[stimme]]): «CHF 40K mehr (von 120 auf 160)», «4Stk», «6x»; «Danke und Gruss» ist ein
eigenstaendiger Kurzgruss, nicht ans Sie-Behoerdenregister gebunden. (5) **«werter Herr <Nachname>»
im Sie ist seit 14.07.2026 belegt**, nicht erst seit 20.08. (Batch-100-Zeile bleibt richtig, ihr
«erstmals» nicht).

**Neunzehnte Falle** in [[CLAUDE]]: das Fenster kann abgeerntet sein — vor der Gold-Auswahl
`ls outputs/ | grep <Datum>` und `grep` auf den Betreff. Solche Fenster **nicht meiden**, sondern
bewusst als Regressionstest fahren.

**⚠ Der Wachstums-Riegel schlug an (+491 B).** Angewandt wurde das wiederholbare Mittel vom 20.08.:
Auslagerung der Studien-/Sitzungspraesentation aus [[arbeitsweise]] (331 B) und der zugehoerigen
Haltung aus [[haltung]] (100 B), je mit Zeilenverweis, dazu 62 B eigene Kuerzung. **Kompiliert mit
rc=0 bei 33'998 B — 2 B Reserve.** Der Auslagerungs-Vorrat ist damit weitgehend erschoepft; der
naechste Lauf muss die Gegenfinanzierung **vor** dem Schreiben benennen ([[QUESTIONS]] 260821b #2).
Gegenprobe nach Rule `auto-verbesserungen` 260811: alle ausgelagerten Regeln per `grep`
nachweisbar, jede Datei gewachsen, keine geschrumpft. Report
`outputs/2026-08-21_fidelity.md`.

## 2026-08-21 — Batch 100: `contentType`-Nachpruefung 95–98 + Sent Items/`Drafts` `rj@` (20.–21.08.2026)

**Zweiteilig.** Teil A erledigt die Vorrangaufgabe aus Batch 99 ([[QUESTIONS]] 260820 #1):
sieben Apple-Mail-Kandidaten der Batches 95–98 erhoben und gelesen — **kein einziger traegt
`contentType: text`**, alle `html` mit Wrapper. **Kein Gold zurueckzuholen, die Zuordnungen
jener Batches bleiben gueltig**; die Pruefung bestaetigt die Methode, nicht nur das Einzelurteil.
Teil B: Fenster 20.–21.08. vollstaendig (3 Sent Items, 3 Drafts), **5 Volltexte gelesen** —
2 `authentisch`, 3 `claude-aera`. Token-Sweep **12 von 12 sauber**. Sendejournal ausgewertet:
im Fenster ging **kein Automatentext an Dritte**. 17 Marker in allen sechs Facetten, 4 Fragen,
3 Kontakt→Register-Paare.

**Kernbefunde:** (1) **Achtzehnte Falle — der Zwilling repliziert Raphaels Fehler absichtlich
und protokolliert es** («Ich habe Deinen Wortlaut stehen lassen, damit der Thread nicht
bricht»). Die Fehlerdichte misst, ob ein Text Fehler ENTHAELT, nicht ob er sie selbst erzeugt
hat; Reichweite eng gehalten auf **uebernommene, thread-getragene Einzelformen** (Anrede,
Eigenname), Praxis: die Anredezeile aus der Fehlerzaehlung herausnehmen. Zweiter Wert des
Belegs: das **Verhalten** — erkennen, melden, nicht eigenmaechtig heilen (Marker in
[[haltung]], Gegenstueck zur stillen Ausbesserung aus Batch 95). (2) **Neuer Detektor
aufgenommen: das Entwurfs-Duplikat** — zwei wortgleiche Drafts im selben Sekundenfenster mit
verschiedenem Verteiler sind ein Hub-Lauf; drei Belege (06.08., 17.08., 18.08.), steht in der
Trefferliste, kostet kein `read_resource`. (3) **⭐ Das persoenliche Treffen hebt das
Beziehungsregister** — zweiter unabhaengiger Beleg (Sitzung 20.08. → «Hoi <Vorname>» am Abend;
Batch 97: Telefonat → «Lieber Levi»); zugleich ein belegter Fidelity-Mangel, weil der Hub die
Stufe des letzten Threads fortschrieb. (4) **Anti-Marker:** das `x_`-Praefix am Wrapper und die
Wrapper-ZAHL sind Sent-gegen-Draft-Artefakte, kein Autorschafts-Signal.

**Register gepflegt:** `rules/anrede-kontakte.md` um drei belegte Kontakte ergaenzt (Eren **Du**
seit der Sitzung, Guerini Sie, Suljanovic Sie, «werter Herr» erstmals im Sie belegt) plus die
Treffen-Klausel als **Hinweis mit ausstehender Bestaetigung**. **⚠ Gemessen, nicht
fortgeschrieben:** der DNA-Auto-Block steht bei **32'796 B von 34'000 B, 1'204 B Reserve** —
kein Handlungsbedarf, die Marker dieses Batches sind Marker-Prosa ausserhalb des kompilierten
Blocks. Rohdatei `raw/260821-mailbatch-100.md`.

## 2026-08-20 — Fidelity-Review (Fenster 07.–13.07.2026)

**Gesamt-Fidelity 34** (Beziehung 50 · Stimme 36 · Fachsignatur 34 · Haltung 31 · Denken 30 ·
Arbeitsweise 24). 4 Volltexte gelesen, **3 Gold, 1 aussortiert** (AfB-Mail 07.07., alle drei
harten Muster im Body). **Kompilier-Riegel strukturell geloest**: statt der vorgeschlagenen
Verfallsregel (am Mail-only-Messverfahren gescheitert) **12 Nicht-Mail-Gattungsregeln aus den
Do/Don't-Bloecken in einen neuen Abschnitt «Gattungsregeln ausserhalb der Mail» derselben Datei
ausgelagert**, in 5 Facetten; Auto-Block 34'052 → 32'796 B, 1'204 B Reserve, rc=0, alle 12
Regeln per `grep` nachgewiesen. **Siebzehnte Falle** in [[CLAUDE]] (fremdes CSS ist kein
Echo-Signal), **sechzehnte Falle praezisiert** (`contentType: html` beweist nichts, Ausschluss
laeuft ueber den Wrapper), **vierzehnte praezisiert** (Signaturform beweist die Maschine, nicht
die Autorschaft), **`text-transform:none` eingegrenzt** statt aufgenommen — damit
[[QUESTIONS]] 260820 #2 beantwortet. Marker: [[stimme]] (Bitte endet auf Punkt; doppelte
Dankformel; «Beste Gruesse» im Du), [[haltung]] (Mangel als Frage; Entscheid-Linie an der
Bindung), [[arbeitsweise]] (Listen-Reflex 3/3, erzwingt die Erfindung). 5 neue Fragen.
Report: `outputs/2026-08-20_fidelity.md`.

## 2026-08-20 — Batch 99: Sent Items `rj@` (Fenster 19.–20.08.2026)

12 Sent Items gelistet, `Drafts` gegengeprueft (**kein Entwurf im Fenster**), **6 Volltexte
gelesen**: 4 `authentisch`, 1 `claude-aera`, 1 `gemischt` (achte Falle). Token-Sweep mitlaufend:
**6 von 6 Bodies sauber**. 22 Marker in allen sechs Facetten, 4 Fragen, 3 Kontakt→Register-Paare.

**Kernbefunde:** (1) **Sechzehnte Falle — `body.contentType` schlaegt die Message-ID.** Raphael
tippt in Apple Mail `text` (Plaintext), der Hub-`osascript`-Draft erzeugt immer `html` mit
Wrapper. Damit ist die pauschale Kanal-Zuordnung der vierzehnten Falle widerlegt — belegt durch
das Sendejournal desselben Vormittags, nicht durch Stilurteil. Billigster Diskriminator des
Korpus, steht in jedem `read_resource`-Ergebnis. **Vorrangige Folgeaufgabe:** die
Apple-Mail-Zuordnungen der Batches 95–98 nachpruefen, dort wurde das Feld nie gelesen.
(2) **Selbst-Delta-Vollendung nach acht Tagen, woertlich** — der am 11.08. bei «Nach Ruecksprache
mit Herr » abgebrochene Entwurf wird am 19.08. exakt so fortgesetzt; der Abbruch war das Warten
auf den Beleg, nicht die Verwerfung des Satzes. (3) **Die Anrede misst das Gewicht der Beziehung,
nicht die Schaerfe des Anliegens** — die haerteste Mail des Korpus beginnt mit der untersten
Stufe «Guten Tag»; eskaliert wird ueber den Verteiler. (4) Der einzige quantitative
Diskriminator ist die **Fehlerdichte** (2.9 Gold / 0.0 Zwilling / 5.7 Kontroll-Gold je 100 W);
Satzlaenge und Du-Gross-Quote trennen in diesem Fenster nichts.

**Register gepflegt:** `rules/anrede-kontakte.md` um drei belegte Kontakte ergaenzt (Spoerri Du,
Ziegel Du, Hansen Sie). **⚠ Gemessen, nicht fortgeschrieben:** der DNA-Auto-Block steht bei
**33993 B von 34000 B (Reserve 7 B)** — der naechste Fidelity-Lauf mit neuem Do/Don't-Marker
bricht am Riegel ab; Entscheid liegt bei Raphael (QUESTIONS 260818b #7).

## 2026-08-19 — Batch 98: Sent Items + `Drafts` `rj@` (Fenster 17.–19.08.2026)

20 Sent Items gelistet, `Drafts` Seite 1 von 112, **8 Volltexte gelesen**: 6 `authentisch`,
2 `claude-aera` (Negativmaterial), 0 `korrektur-delta`.

**Die Vorrangaufgabe aus Batch 97 ist erledigt und negativ beschieden:** der Token-Sweep ist mit
`outlook_email_search` unmoeglich — der Suchindex **indexiert kein Markup** (Kontrollprobe im
selben Ordner belegt es: Body-Prosa wird gefunden, beide Markup-Tokens liefern null). Stattdessen
neue verbindliche Praxis, in `CLAUDE.md` bei der fuenfzehnten Falle nachgetragen: **mitlaufende
Body-Pruefung an jeder ohnehin gelesenen Mail** — in diesem Lauf 8 von 8 sauber.

**Kernbefunde:** (1) Raphaels Hand gegen den Zwilling im **selben Thread an denselben
Empfaenger** — Frist mit Zweckbegruendung gegen hoefliche Terminfrage, handgesetzte
A)/B)/C)-Liste gegen Fliesstext, «70mm» gegen «70 mm», dichte Fehler gegen null Fehler; die
Richtung des Batch-97-Befunds dreht sich, der Zwilling trifft nicht den Adressatentyp.
(2) **«Geschaetzter» ist eine Gewichts-, keine Distanzstufe — erstmals im Sie-Register belegt**
(zwei unabhaengige Belege, 105 Minuten bzw. 27 Stunden). (3) **«Lgr»** als knappste Gruss-Stufe,
erster Beleg, an einem Sie-Kontakt.

14 Marker in allen sechs Facetten, 1 Detektor-Kandidat (Einheiten-Leerschlag, nach
Sperrlisten-Disziplin nicht aufgenommen), 3 Fragen, 1 Negativbefund am Hub (Entwurfs-Dubletten
06:45:21/06:45:22). **Werkzeug:** `stilmetrik.py` erkennt neu «Lgr». **Registerkorrektur:** der
DNA-Riegel steht gemessen bei **33430 B von 34000 B** — die Batches 93–97 nannten die alte
Grenze 30000.
## 2026-08-19 — Fidelity-Review (Fenster rj@ 30.06.–06.07.2026)

Gesamt-Fidelity **33** auf zwei Goldproben; die dritte Kandidatin (01.07. 08:33 an die SBB) wurde
vor der Wertung als **Hub-Erzeugnis** aussortiert — erster Fall, in dem die 14. Falle (Wrapper)
schon im Auswahlschritt greift. Neuer, billiger Zweitmarker gefunden und in CLAUDE.md gesetzt:
die **Signaturform** («Raphael Jans …/+41» = Generator · «**RAPHAEL JANS** …/0041» = Raphaels
Outlook · nur «Raphael» = seine Apple-Mail-Kurzmail), sichtbar im Klartext der Suchtreffer-`summary`
und damit vor jedem `read_resource`.

Sechs Korrekturen an den Facetten: [[stimme]] Gruss folgt der Gattung, ein orientierender Cc hebt
den Kurzgruss nicht auf (die bisherige Regel war falsch und hat den Zwilling in den Fehler geführt);
[[beziehungsregister]] ein- oder zweizeilig gestapelt entscheidet das Gewicht der Mail, nicht die
Stufendifferenz; [[arbeitsweise]] die rohe, absichtlich redundante Fragenliste ohne
Aufzählungszeichen; [[haltung]] neuer Oberbegriff «der Bauherr entscheidet, Raphael bereitet vor»
über acht Belege, mit der Grenze, was er sich selbst zusagt (Planleistung ja, Entscheid nein);
[[fachsignatur]] Kontamination auch aus Nachbarmails desselben Fensters. Sechs neue Selbstfragen
in [[QUESTIONS]] 260819b.

**Kompilier-Riegel:** Block lag mit den Korrekturen zunächst bei 36'165 B (Abbruch, rc=3);
kompiliert nach sieben Verdichtungsschritten nach Option (a) bei **33'993 B von 34'000 B, 7 B
Reserve**, rc=0. Zusammengelegt wurden ausschliesslich Doppelungen (Stapelregel in Do und Don't,
drei «abschreibfertig»-Marker, zwei identische Rechtsauskunft-Regeln, vier überlagerte
Gruss-Korrekturen) — keine Regel gelöscht. Die Verdichtungsreserve ist damit erschöpft; die
Verfallsregel ([[QUESTIONS]] 260818b #7 / 260819b #1) ist Voraussetzung des nächsten Laufs.

## 2026-08-18 — Fidelity-Review (Fenster rj@ 22.–29.06.2026), Gesamt-Fidelity 31

Drei Goldproben im Volltext (Abgebot Jegen · Brandlast ELE · Baulinie Giebelweg), alle
authentisch, kein Echo-Treffer; drei weitere Raphael-Fassungen aus der Zitatkette (13. Falle).
Report `outputs/2026-08-18_fidelity.md`. Kern-Drift: der Zwilling baut eine Liste, wo Raphael
EINEN abschreibfertigen Baustein liefert; Service-Satz genau vertauscht; siebter Beleg der
Kanalisierungs-Drift. **Neue Driftart benannt: Kontamination aus dem eigenen Vorlauf-Report**
(«§ 98 PBG», Parzelle 5252 aus dem 17.08.-Report in einen Fall mit Kat.-Nr. 3338 getragen).
Zwei Facetten-Spannungen aufgelöst (Service-Satz bei der Abgebotsrunde; Träger der
Rechtsbehauptung entscheidet über den Paragrafen). Sechs Do/Don't-Blöcke geschärft
(stimme, denken, haltung, beziehungsregister, fachsignatur, arbeitsweise — nur Zuwachs,
+38 Zeilen, keine Löschung). Sieben neue Selbstfragen in `wiki/QUESTIONS.md` (260818b).
**Kompilier-Riegel nach dreimaliger Vorlage entschieden:** `MAX_AUTO_BYTES` 30'000 → 34'000,
`WARN_AUTO_BYTES` 24'000 → 30'000 in `skills/twin/tools/build_dna.py`; neu kompiliert nach
`rules/jans-dna-facetten.md` (33'430 B, 570 B Reserve). Gemessene Wachstumsrate ~3,5 kB je Lauf —
die Anhebung kauft je 4 kB einen Lauf, deshalb Vorschlag Verfallsregel (QUESTIONS 260818b #7).
**Korrektur an Empfehlung 2 des Vorlaufs:** der Token-Sweep über die destillierten Batches ist
mechanisch unmöglich — `raw/` enthält null HTML; der Sweep muss am Postfach laufen.

## 2026-08-18 — Batch 97: Doppelabgleich `Drafts` × Sent Items (Fenster rj@ 17.08.2026)

Zwei Korrektur-Paare desselben Tages gehoben (Entwurfsordner 109 Eintraege, +6 seit Batch 96);
5 Volltexte gelesen. **Paar A** (78 Min, Hub-Entwurf gegen Raphaels Fassung): der Zwilling
begruendet eine Bitte mit dem Ausbleiben der Gegenleistung, Raphael streicht den Vorwurf und
setzt eine Legitimation ein. **Paar B** (6 Min): ein aus der Claude-Weboberflaeche einkopierter
Entwurf — **zweiter Beleg der fuenfzehnten Falle mit neuem Token
`font-claude-response-body`**, der die Kanal-Tabelle der vierzehnten Falle einschraenkt
(Exchange ist nicht mehr automatisch Gold). 15 neue Marker in allen sechs Facetten, 3 Fragen.
Metrik: Gold 235 W / ø 16.8 W gegen Zwilling 150 W / ø 15.0 W; Du-Gross beidseits 1.0, womit der
Batch-96-Befund 0.818 **nicht** bestaetigt ist. Gehirn nicht neu kompiliert (Budget, siehe
`_INGESTED.md`).

## 2026-08-17 — Fidelity-Review (Fenster rj@ 15.–21.06.2026)

- Gesamt-Fidelity **35** (nach 36/36/38). Golds: «Unterzeichnung Brandlast Elektro» 16.06. 12:16,
  «AW: Giebelweg 12 Revision Baulinie» 16.06. 10:46 inkl. zwei weiterer Golds aus der Zitatkette
  (13. Falle bestätigt). Zwei Echos entlarvt, eines davon unverändert an die Behörde versendet.
- **Fünfzehnte Falle** in `CLAUDE.md`: der Kanal «aus dem Chat-Fenster kopiert, aus Outlook
  gesendet» war blind. Marker sind Tailwind-Utility-Klassen (`text-[var(--accent)] hover:underline
  …`) am Link, die das Einfügen überleben; die Signatur-Detektion der 14. Falle greift dort nicht,
  weil Outlook die eigene Signatur anhängt. Reichweite an zwei Kontrollmails geprüft.
- Vierter Paartyp ergänzt (durchgewinkter Zwillingstext mit Empfänger-Tausch, Korrektur-Delta null);
  `bodyPreview`-Listenfehler mit Ursache benannt (`list-style-type` wird ignoriert).
- Do-Blöcke korrigiert: [[beziehungsregister]] (Stapel nur bei gleicher Stufe verkürzen; adressiert
  werden Entscheidungsträger, nicht der Verteiler) · [[stimme]] (Kurzgruss hängt an Register UND
  Gattung; fette Anweisung mit Ausrufezeichen auch im Sie) · [[arbeitsweise]] («A) B) C)» ist
  Listenform, kein Registersignal; fünfte Endform der Mail) · [[haltung]] (Bauherr wird zum
  Spezialisten geschickt, mit Auswahlkriterium statt eigener Offerte — Kern-Drift) ·
  [[denken]] (dünne Faktenlage offen lassen statt füllen; sechste Erfindungs-Drift in Folge) ·
  [[fachsignatur]] (Paragraf und Parzellennummer statt Gesetzesname).
- 7 neue Einträge in [[QUESTIONS]], darunter der vierte Beleg gegen die Nivellier-Klausel in
  `rules/anrede-kontakte.md` (Entscheid Raphael, offen seit 260815).
- `rules/jans-dna-facetten.md` neu kompiliert: **29'971 B** nach sieben Anläufen (Start 31'718 B).
  Keine Regel entfallen, nur Beleg-Prosa und Doppelungen. Reserve 29 B — der Riegel-Entscheid steht.
- Report: `outputs/2026-08-17_fidelity.md`.

## 17.08.2026 — twin-mail-training Batch 96 (Doppelabgleich `Drafts` × Sent Items): vierzehnte Falle, drei Korrektur-Deltas

Kein neues Datumsfenster (der 17.08. trägt nur eine Hub-Selbstmail), sondern die in Batch 94 und 95
zweimal als vorrangig bezeichnete Aufgabe [[QUESTIONS]] 260816 #4. Erhoben: `Drafts` vollständig
(**103 Einträge, 62 mit Drittempfängern**), abgeglichen gegen Sent Items 04.–13.08.2026.
**3 `korrektur-delta` · 2 Gold · 1 Negativmaterial**, 16 Marker in allen sechs Facetten, 5 Fragen.

**Vierzehnte Falle in `CLAUDE.md`: der Entwurfsordner konserviert den Wortlaut der
Zwillings-Fassung.** Die zwölfte Falle nutzte ihn als Ja/Nein-Beweis; wo beide Fassungen existieren,
ist das Korrektur-Delta **wörtlich ablesbar**. Dazu die Kanal-Trennung im Ordner (Apple Mail = Hub,
Exchange = Raphaels unfertige Hand) und drei Paartypen, darunter das neue **Selbst-Delta**:
Raphael verwirft seinen eigenen Ansatz (11.08., «WG:» an den Kreisarchitekten, abgebrochen bei
«Nach Rücksprache mit Herr », gegen «AW:» an den Feuerpolizisten 19 Minuten später, wärmere Anrede,
Verteiler gedreht).

**Neuer textlicher Detektor: der Signaturblock** — er überlebt Zitieren und Reintext, anders als
alle Markup-Signale. Hub «+41» + voller Block; Raphael in Outlook «RAPHAEL JANS» + «0041»; Raphael
in Apple Mail selbst getippt: **gar kein Block**. Gegenprobe bestanden, die Outlook-Fassung stand
in der Zitatkette derselben Mail. Nebenbefund: `rules/jans-absenderadresse.md` und die gelebte
Signatur laufen in der Telefonnummer auseinander — Entscheid Raphael, 260817 #1.

**Entlastungsbefund:** Das befürchtete fälschlich verbuchte Gold gab es **nicht** — die Batches
93–95 haben sauber über `folderName: "Sent Items"` gearbeitet. Der Ertrag liegt vollständig auf der
Gewinnseite. Kern-Drift erstmals am **nicht gesendeten** Text belegt: der Entwurf vom 30.07. nimmt
seine eigene Frist im Schlussabsatz zurück und liegt seit 18 Tagen. Gehirn unverändert bei 29990 B;
der Entscheid über MAX_AUTO_BYTES steht seit dem 13.08. aus und blockiert den vierten Batch in Folge.

## 16.08.2026 — twin-fidelity-review (Fenster 08.–14.06.2026): dreizehnte Falle, und der Riegel ist entschärft

Gesamt-Fidelity **38** (nach 36 / 36) — dritter Messpunkt derselben Basislinie. 3 Golds + ein
4-Minuten-Kontrollpaar, 1 Echo. Report: `outputs/2026-08-16_fidelity.md`.

**Dreizehnte Falle in `CLAUDE.md`: die Zitatkette ist die billigste Goldquelle des Korpus.** Gold B
trägt die Hub-Mail vom 07.06. in der eigenen Zitatkette — derselbe Empfänger, dieselbe Sachfrage,
zwei Tage Abstand, beide Fassungen in derselben Datei. Ab sofort wird der zitierte Thread jeder
gelesenen Mail mitgeprüft (`x_`-Präfix = zitiert, keine andere Herkunft). Dazu eine **Sperrliste**
der sechs verworfenen Signale, weil «du/dich klein» nach der Widerlegung vom 07.08. am 15.08.
wieder hereinkam und heute zum dritten Mal fiel.

**Kern-Drift: der Zwilling erklärt, Raphael entscheidet** — erstmals an einem Zahlenwert messbar
(600 Wörter ohne Zahl gegen «meine Kaufpreisempfehlung bei CHF 3.0MIO»). Zwei Wiki-Regeln haben
die Blindfassung aktiv verdorben und sind korrigiert: die Behörden-Begründungspflicht (gilt nicht
der Anforderung eines ohnehin zustehenden Dokuments) und die Gruss-Regel (Kurzgruss hängt am
Register, nicht am Sachauftrag). Damit sind beide offenen Spannungen aus 260815 aufgelöst.

**Der Kompilier-Riegel brach bei 32'270 B ab.** Da der Entscheid (b)/(c) bei Raphael liegt, wurde
(a) verdichtet — ausschliesslich Beleg-Prosa in `stimme` (6'930 → 5'722 B) und `fachsignatur`
(5'915 → 4'922 B), jede entfernte Passage einzeln im Artikel unter «Auslagerung aus dem Do-Block
(260816)» aufgeführt, keine Regel entfallen. Gehirn kompiliert bei **29'990 B (10 B Reserve)**;
die seit dem 13.08. aufgelaufenen Marker sind damit erstmals seit drei Läufen wieder wirksam.

`agents/twin-chef.md`: Erfindungs-Check als Schritt 2b im Fidelity-Modus (dreimal vorgelegt, die
Drift ist in fünf Läufen in Folge gemessen), Zitatketten-Pflicht in Schritt 1, Taktangabe berichtigt.
32 Marker/Belege in allen sechs Facetten, 6 neue Fragen.

## 16.08.2026 — twin-mail-training Batch 95 (10.–16.08.2026): zwölfte Echo-Falle, und das erste belegte Korrektur-Delta

Fenster `rj@` **10.–16.08.2026** (37 Sent Items, 16 Volltexte). **13 Gold · 1 Korrektur-Delta ·
2 verworfen.** 32 neue Marker in allen sechs Facetten, 7 Mappings, 6 Fragen.

**Zwölfte Falle in `CLAUDE.md` — der Entwurfsordner als zweite dokumentarische Quelle, und das
Sendejournal spricht auch frei.** Zwei Erweiterungen der zehnten Falle: (1) Die fünf Hub-Chef-
Selbstmails protokollieren wörtlich, dass **nichts** an Dritte hinausging — damit sind die
übrigen Ausgangsmails dokumentarisch entlastet, bevor ein Stilmerkmal geprüft wurde; bisher
konnte das Journal nur belasten. (2) Von drei protokollierten Entwürfen liegen zwei heute noch in
`Drafts`, einer fehlt — und genau dessen Betreff und Empfängerkreis steht am 13.08. in den Sent
Items. **Ein protokollierter Entwurf, der aus `Drafts` verschwindet, wurde versendet.**

**Diese Mail ist Silber, nicht Echo** — sie trägt fünf Handsignatur-Slips in vier Sätzen und
läuft über Exchange, nicht über den Apple-Mail-Kanal der Hub-Drafts. Erster im Korpus
nachweisbarer Fall von Entwurf → Überarbeitung → Versand. Das messbare Delta: der wörtlich
übernommene Sachblock aus Raphaels eigener Behördenmail vom 11.08. weicht an **einer** Stelle ab
— «vor dem **Raun** 2.017» wurde zu «**Raum**». Der Zwilling glättet den Tippfehler. Wer Gold an
der Fehlerdichte erkennt, misst genau das, was der Zwilling zuerst wegputzt.

**Zwei Ausschlüsse** (Notariat 12.08., Hilti-Joch-Lösung 13.08. — beide Apple Mail mit Wrapper,
ohne `font-family`, fehlerfrei). Die zweite bildet mit der eigenen Mail desselben Tages die
schärfste Kontrollgruppe des Fensters: **7 h 04 min, derselbe Vorgang** — morgens fünf Zeilen
Nominalfragmente, abends 300 Wörter fertige Lösung. Der Verdachtstext ist nicht schlechter,
sondern vollständiger, als die Frage sieben Stunden zuvor war.

**Gegenprobe zu QUESTIONS 260814b #2 erstmals bestanden:** die zwei handgetippten Apple-Mail-Texte
tragen keinen Wrapper, die zwei Hub-Texte 3× bzw. 4×. **`rgb(252,252,251)` kam in keiner der 16
Mails vor, auch nicht in den Hub-Texten** — Kandidat verworfen, nicht in die Muster-Tabelle.

**Inhaltlich:** gestaffelte Anrede mit Amt und Auflageziffer je Zeile (14 Empfänger, 3 angeredet,
zwei Wärmestufen nebeneinander) — zweiter Beleg gegen die Sammelanrede-Klausel in
`rules/anrede-kontakte.md`, eskaliert als QUESTIONS 260816 #1; Buchstabenkette A)–D) über den
Bruch zwischen Vorschlag und Rückfrage hinweg; Unterpunkte C1–C6 ohne Klammer; die
Verbgrossschreibung trifft das betonte Verb, nicht «bitten» (Präzisierung der neunten Falle);
Fluchtweg als Inventarfrage mit Abbruchdarstellung als Nachweis; «Geschätzter Levi» jetzt
authentisch belegt (Batch-94-Vorbehalt fällt).

**Metrik** (1087 W, 14 Eigentexte): Du-Gross 0.85, Satzlänge ø 19.8 W, FG 10× / «Lieber Gruss» 2×.
**⚠ Die 19.8 W sind ein Messartefakt**: Ursache ist die fehlende Endinterpunktion in
Anweisungszeilen, die der Bullet-Filter aus Batch 94 nicht fasst. Die Satzlänge misst bei diesem
Schreiber Interpunktion, nicht Stil.

**⚠ Gehirn nicht neu kompiliert** (unverändert seit Batch 93): `rules/jans-dna.md` steht bei
29997 B von 30000 B, dieser Batch trägt rund 12 kB. Entscheid über MAX_AUTO_BYTES liegt bei
Raphael. Die Marker wirken über die Twin-Agenten, die die Facetten direkt lesen.

## 15.08.2026 — twin-fidelity-review: elfte Echo-Falle (Gedankenstrich) + die Vorschau lügt über Listen

Report: `outputs/2026-08-15_fidelity.md`. Fenster `rj@` **03.–07.06.2026** (38 Sent Items,
7 Volltexte). **Gesamt-Fidelity 36** — zweiter blind gemessener Wert, Basislinie vom 14.08. hält.
Je Facette: Beziehung 58 · Stimme 38 · Denken 35 · Haltung 35 · Arbeitsweise 25 · Fachsignatur 23.

**Nur zwei Golds statt drei: von fünf substanziellen Mails des Fensters sind drei
Hub-Erzeugnisse** (zwei mit `rgb(253,253,252)`, eine mit `Apple-Mail-URLShareWrapperClass`), je
erkannt vor der Wertung. Dazu zwei Degenerate: eine Mail ohne Body (`body.content: null`) und eine
an das AfB, deren ganzer Inhalt der wiederholte Betreff ist.

**Elfte Falle in `CLAUDE.md`: der Geviertstrich, das erste rein sprachliche Signal.** Alle drei
Hub-Mails führen ihn mehrfach als Stilmittel, die zwei handgetippten Golds keinen einzigen
(Raphael setzt den Bindestrich). Er trägt besser als jedes Markup-Muster, weil er Zitieren,
Ausdrucken und Reintext-Weiterleitung überlebt — und weil `dokument-layout-standard.md` ihn
ausdrücklich verbietet: ein Hub-Text mit Geviertstrich hat die eigene Regel gerissen, ein
Raphael-Text führt ihn gar nicht erst. Reichweite Absatz, **kein Umkehrschluss**. Zweites,
ausdrücklich als intermittierend markiertes Signal: klein geschriebenes «dich»/«deiner» im Du.

**Methodische Falle gleichen Gewichts: die `bodyPreview` flacht `<ol>` auf «1. 2. 3.» ab** und
verliert das `list-style-type`. Der Eren-Gold rendert tatsächlich **A) B) C) D)**. Jeder
Listen-Marker, der aus einer Vorschau destilliert wurde, ist unbelegt (Prüfauftrag QUESTIONS
260815b #1). Inhaltlich erweitert derselbe Fund die «A) B) C)»-Regel um eine dritte Gattung
(Rügenliste) und einen nahen Adressaten; aufgelöst über die Zitierfähigkeit, nicht die
Vertrautheit.

**Weitere Funde:** VERSAL-Blocktitel in der Vergabemail im Du; Anhang-Dateinamen als Listenpunkte;
Service-Satz im Du **mit** «Dir» und Punkt (Gegenbeleg zur Wiki-Klausel); «Lieber Gruss» unter
einer Auftragsmail mit eigenem Sachauftrag (zweiter Widerspruch); Lead-Abgabe an den Unternehmer
(zweiter Datenpunkt zu 260806); Konflikt hebt die Anredestufe NICHT. Drift-Kern: der Zwilling
**zentralisiert, wo Raphael verteilt** (Gegenstück zur Bringschuld-Umkehr vom 14.08.), und ist
zum vierten Lauf in Folge formal reicher und fachlich ärmer, mit erneuter Erfindungs-Drift.

**Gehirn kompiliert, aber am Anschlag:** `build_dna.py` lief sauber durch (rc 0, idempotent), weil
die Do/Don't-Blöcke bewusst nicht angefasst wurden — **Reserve 3 B von 30000**. Die nächste
Regel in einem Do/Don't-Block lässt das Script mit `ABBRUCH` stehen. Entscheid über Verdichten
oder `MAX_AUTO_BYTES` liegt weiter bei Raphael; Empfehlung im Report.

Geändert: `wiki/{stimme,denken,haltung,beziehungsregister,fachsignatur,arbeitsweise}.md`
(je ein Abschnitt «Fidelity 260815», Quelle in `sources` ergänzt), `CLAUDE.md` (elfte Falle +
Muster-Tabelle mit Umkehrschluss-Spalte + Vorschau-Warnung), `wiki/QUESTIONS.md` (5 Einträge),
`outputs/2026-08-15_fidelity.md` (neu).

## 15.08.2026 — twin-mail-training Batch 94: 03.–07.08.2026, zehnte Echo-Falle (dokumentarischer Beweis)

Fenster `rj@` **02.–09.08.2026** (42 Sent Items, sequenziell frisch nach Batch 93; erster
Eigentext 03.08.). **15 Volltexte gelesen: 10 Gold, 5 nicht als Stilquelle verwendet.** 33 neue
Marker in allen 6 Facetten, 6 Mappings, 6 Fragen.

**Zehnte Echo-Falle in `CLAUDE.md`: der erste dokumentarische Beweis des Korpus.** Die Mail ans
Notariat vom 03.08. 14:56 CEST ist als Hub-Erzeugnis **bewiesen**, nicht erschlossen — die
Selbstmail des `ag-gruendung-monitor` desselben Abends nennt Uhrzeit, Wortlaut («Terminbitte ab
rund dem 10.08. unter Vorbehalt der Kapitalbescheinigung») und beide Anhänge, alles
deckungsgleich mit der Mail. **Neue verbindliche Methode: die Selbstmails des Hub sind das
Sendejournal des Zwillings und werden vor jedem Echo-Urteil gelesen.** Die Batches 84–93 haben
genau diese Quelle als «Rauschen» übersprungen; der rückwirkende Abgleich ist als vorrangige
Aufgabe in `wiki/QUESTIONS.md` (260815 #1) hinterlegt.

**Weitere Befunde:** Kanal-Trennung in diesem Fenster sauber (11× Exchange, tippfehlerdicht, kein
Wrapper — 4× Apple Mail, fehlerfrei, alle mit `Apple-Mail-URLShareWrapperClass`); schärfste
Kontrollgruppe des Korpus mit **29 Minuten** Abstand bei identischem Empfänger und Vorgang;
`rgb(252,252,251)` mit zweitem Beleg, diesmal aus dem **Exchange**-Kanal, womit
Apple-Mail-Rendering als Ursache ausscheidet (bleibt Kandidat, kein Ausschlusskriterium).
**Korrektur an der neunten Falle:** die Bitt-Reflex-Grossschreibung ist ein intermittierender
Slip — Vorhandensein belegt die Hand, Fehlen belegt nichts; die Empfehlung aus Batch 93 galt nur
für jenes Fenster.

**Stärkster inhaltlicher Fund:** «Werter Herr Kübler, / geschätzter Cekar und Jens.» — Sie und Du
nebeneinander in EINER Anredezeile an dasselbe Büro. Das Register hängt an der Person und wird
**nicht** nivelliert; steht quer zur Sammelanrede-Klausel in `rules/anrede-kontakte.md`
(→ QUESTIONS 260815 #4). Metrik: 752 W, Du-Gross 0.75, Satzlänge ø 13.4 W (ohne Bullet-Zeilen
gemessen). **Gehirn nicht neu kompiliert** — Auto-Block weiterhin bei 29997/30000 B, Entscheid
über MAX_AUTO_BYTES liegt bei Raphael.

Geändert: `wiki/{stimme,denken,haltung,arbeitsweise,fachsignatur,beziehungsregister}.md`
(je ein Abschnitt «Mailbatch 94», `last_updated` auf 2026-08-15), `CLAUDE.md` (zehnte Falle +
Korrektur an der neunten), `wiki/QUESTIONS.md`, `raw/_INGESTED.md`.

## 14.08.2026 — Cross-KB (Wissens-Chef Run 32): Projektverwechslung im Beziehungsregister korrigiert

Report: `../koordination/outputs/2026-08-14_wissens-chef-run32.md`.

`wiki/beziehungsregister.md` (Batch-37-Eintrag zu fsgbau) nannte ein «Parallelprojekt **KISPI
Albertstrasse 7**» und verschmolz damit zwei getrennte Vorgaenge: **2620 Albertstrasse 7**
(Bauherrschaft Nova Property Fund Management AG) und **2619 KISPI** (Universitaets-Kinderspital).
Besnik/fsgbau gehoert zur Albertstrasse 7. Auf «Parallelprojekt Albertstrasse 7 (Nova)»
korrigiert, Korrekturvermerk mit Belegen gesetzt. Gemeldet im Cross-KB-Fan-out, adversarial
gegengeprueft (Urteil «bestaetigt»: Zitat woertlich korrekt, Artikel `status: established`, kein
Zeitdokument, keine Lesart, in der die Formulierung traegt). Belegt an `rules/anrede-kontakte.md`
(Besnik → 2620, Albin Spahic → 2619) und an zwei weiteren Stellen desselben Wikis, die den
Kontakt korrekt fuehren.

**Fehlerfamilie:** dieselbe Signatur wie Staehlin/Waechter am 29.07.2026 — eine Faktenaussage
(Firma, Gewerk, Projekt), die in einem Stil-Wiki nebenbei mitlaeuft und von dort in Anrede,
Betreff und Projektbezug einer ausgehenden Mail wandert. Die Stil-Aussage des Eintrags (Register
an die Person, nicht an die Firma) ist unberuehrt und bleibt gueltig.

## 14.08.2026 — twin-mail-training Batch 93: 27.07.–01.08.2026, neunte Echo-Falle (blinder Kanal)

Fenster `rj@` **27.07.–01.08.2026** (48 Sent Items, sequenziell frisch nach Batch 65). **11
Volltexte gelesen: 9 Gold, 2 harte Echo-Ausschlüsse.** 30 neue Marker in allen 6 Facetten,
7 Mappings, 5 Fragen.

**Neunte Echo-Falle in `CLAUDE.md`: der mechanische Grep hat einen blinden Kanal.** Beide
verworfenen Texte tragen **keines** der drei harten Muster — sie stammen nicht aus Copy-Paste,
sondern sind vom Hub selbst per `osascript` als Apple-Mail-Draft erzeugt: Claude-Text ohne
Claude-CSS. Erkannt über den Kontrollgruppen-Kontrast im selben Tagesfenster, in der schärfsten
bisher gefundenen Form (Paar mit **2 h 47 min** Abstand, dieselbe Sprechhandlung «bitten»:
fehlerfreies «b**i**tten» ohne `font-family` gegen «**B**itten» mit `Aptos` und Slip). Ein
negativer Grep beweist ab sofort nichts.

**Folgenreicher Nebenbefund: Signaturphrasen aus `rules/jans-dna.md` sind als Echtheitsbeleg
verbrannt.** Der eine Verdachtstext reproduziert «Gib mir bescheid, welche Zeit Euch passt.»
wortgetreu samt Kleinschreibung. Was der Zwilling gelernt hat, kann er erzeugen; Detektionswert
hat nur noch, was das Gehirn NICHT enthält (Tippfehler, Grossschreibungs-Slips, Satzabbrüche).

**Zwei Messbefunde, beide gegen die eigene Reihe:** (a) der En-/Em-Strich-Test trennt hier
**nicht** (1 Vorkommen in eigener Hand aus einem übernommenen Amtstitel gegen 0 in den
Verworfenen) → QUESTIONS #2; (b) das Strippen der Bullet-Zeilen verschmelzt Listen-Anläufe mit
dem Folgesatz und verzerrt die Satzlänge um **+1.4 W** (17.0 gemessen, 15.6 korrigiert) — die in
Batch 92 geschlossene Satzlängen-Frage ist damit **nicht sauber geschlossen** → QUESTIONS #3.
Neuer CSS-Kandidat `background-color:rgb(252,252,251)` mit einem Beleg **nicht** in die
Muster-Tabelle aufgenommen (Guillemet-Regel) → QUESTIONS #1.

**⚠ Gehirn NICHT neu kompiliert — bewusst.** Der Auto-Block steht seit 13.08. bei 29997 B von
30000 B; dieser Batch trägt rund 9 kB neue Facetten-Prosa. Eine Kompilierung würde bestehende
Regeln verdrängen. Der Entscheid über MAX_AUTO_BYTES liegt bei Raphael. Die Marker wirken
unterdessen über die Twin-Agenten, die die Artikel direkt lesen.

Report: `outputs/2026-08-14_mailbatch-93.md`. Diff gegengemessen: stimme +56/−0,
arbeitsweise +42/−0, beziehungsregister +40/−0, fachsignatur +35/−0, denken +23/−0,
haltung +18/−0, CLAUDE.md +45/−0, QUESTIONS +34/−0, _INGESTED +72/−0 — durchgehend append-only,
keine Fremdlöschung.

## 13.08.2026 (Lauf 2) — twin-fidelity-review: Echo-Grep trifft das Element, nicht die Mail; Fidelity 41

Zweiter Fidelity-Lauf desselben Tages (regulärer Cron 05:40, nachdem 01:28 bereits einer lief).
**Frisches, nicht überlapptes Fenster `rj@ 28.05.–05.06.2026`** (82 Sent Items) — Batch 92 endete am
27.05., der 01:28-Lauf arbeitete auf 14.–19.05. **Fidelity 41** bestätigt die 42 von heute früh aus
unabhängigem Material; zwei disjunkte Fenster, derselbe Pegel.

**Hauptbefund: der mechanische Echo-Grep hätte heute eine echte Goldprobe vernichtet.** Die
Sitzungsmail vom 29.05. 10:01 trägt `rgb(253,253,252)` in genau **zwei `<li>`** einer sonst
durchgehend nativ getippten Mail. Die drei Muster sind damit **Element**-Ausschlüsse, kein
Mail-Urteil — der Grep ist ein Lokalisator. Damit ist die **achte Falle** belegt (Raphael-Grundtext
mit eingesetztem Claude-Fragment), die Umkehrung der siebten. Drei unabhängige Linien stützen es:
Kontrollmail vom Vortag (gleiches Projekt/Gattung) durchgehend nativ; die Handsignatur («Darf ich
Euch **B**itten», identisch in der Kontrolle) steht im nativen Teil, die `<li>` sind fehlerfrei;
Fehlerdichte umgekehrt verteilt wie in der vierten Falle. `color:rgb(10,10,10)` **nicht**
aufgenommen — ein Beleg, Gegenprobe steht aus → QUESTIONS #2.

**Facetten-Lücke geschlossen:** [[arbeitsweise]] band «A) B) C)» an den fernen Erstkontakt und
stellte dem engagierten Fachplaner Fliesstext gegenüber. Gold A richtet sich an genau so einen
Fachplaner und trägt A)/B). Kein sauberer Widerspruch (die Regel gilt *Fragen*, Gold A ist eine
*Traktandenliste*), deshalb **erweitert statt umgeworfen**; neu zusätzlich der
SharePoint-Breadcrumb als Verweisform. Der Zwilling hatte die Lücke als Erlaubnis gelesen, die
Agenda in Prosa aufgelöst und dabei Traktandeninhalte **erfunden** (dritter Vorfall nach 260804/05).

**Widerspruch markiert statt geglättet:** der Service-Satz steht im selben Thread zweimal gegen die
Gattungsregel aus [[stimme]] (Liefermail an Einzeladressat trägt ihn, Bittmail an vier Empfänger
nicht). These: die Achse ist der Adressatenkreis, nicht die Gattung — **nicht** eingearbeitet,
QUESTIONS #1.

**Methodenbefund, gilt rückwirkend für die ganze Messreihe:** die `summary` der Suchtreffer enthält
Anrede und Eröffnungssatz, bei Kurzmails die halbe Mail. Gold B konnte nur nach dem Vorschau-Schnitt
gescort werden. Alle bisherigen Anreden-/Eröffnungs-Scores sind nach oben verzerrt → QUESTIONS #5.

**⚠ Der Auto-Block ist strukturell voll: 29997 B bei Obergrenze 30000 (3 B Reserve).** Die neue
Regel (~330 B) passte nur, nachdem rund 750 B **Beleg-Prosa** aus dem Do/Don't von [[arbeitsweise]]
verdichtet wurden (Provenienz-Parenthesen, Beispiel-Listen, Querverweise — kein operativer Satz
entfernt, Belege stehen unverändert im Artikel-Fliesstext darunter). Das ist Option (a) des
Build-Guards. **Die nächste substanzielle Facetten-Erweiterung geht nicht mehr ohne Raphaels
Entscheid** über MAX_AUTO_BYTES bzw. eine grössere Verdichtung; Budget-Führung in
`wissen/claude-code/wiki/kontext-architektur.md`.

Report: `outputs/2026-08-13_fidelity-lauf2.md`. 5 neue Fragen in [[QUESTIONS]]. Gehirn neu
kompiliert. Diff gegengemessen (nativ per ssh): QUESTIONS +48/−0, CLAUDE.md +28/−0,
arbeitsweise +16/−12 — append-only gehalten, keine Fremdlöschung.

## 13.08.2026 — twin-mail-training Batch 92: 20.–27.05.2026, siebte Echo-Falle, Satzlängen-Frage geschlossen

Fenster `rj@` **20.–27.05.2026** (43 Sent Items). Echte Lücke war der **20.05. ganztags** (Batch 46
hatte erst um 14:05 begonnen) plus sechs Einzelmails. **9 Volltexte gelesen: 6 Gold, 1
Korrektur-Delta, 1 harter Echo-Ausschluss, 1 Verdacht ohne Urteil.**

**Siebte Echo-Falle in `CLAUDE.md`: die vierte Falle mit vertauschten Rollen.** Die Investorenmail
vom 21.05. ist Claude-Grundtext (`Anthropic Sans`), in den Raphael vor dem Versand mit «`- `» drei
eigene Entscheide hineingetippt hat («- ok machen wir.»). Das ist **`korrektur-delta` (SILBER),
nicht Echo** — und zeigt, wo der Zwilling danebenliegt: er stellt Rückfragen, wo Raphael
entscheidet und anweist. Nebenbefund: Em-Strich und Bindestrich stehen im **selben Absatz**
nebeneinander, von zwei Händen — der sauberste bisherige Beleg des En-/Em-Strich-Tells. Der
Bolon-/LOS_281.20-Faden ist damit vollständig als Claude-Text belegt.

**Frage 260813 #1 (Satzlänge) beantwortet, und zwar gegen die eigene Vermutung.** Vermutet war ein
Gattungseffekt des KISPI-Projekts; gemessen wurden im **selben Projekt und Folgefenster** ø **13.2 W**
über 277 W eigener Hand — mitten im Korpusband 11.9–14.3, gegen 16.5/17.6 W in Batch 90/91. Die
Satzlänge hängt an der Hand, nicht am Projekt; die Ausreisser sind mutmasslich nicht erkannter
KI-Rest. Das Zielband bleibt. Offener Kehrschluss: Batch 90/91 nachprüfen, sie entstanden vor dem
mechanischen Grep.

**Neue Marker (16 in 5 Facetten):** [[arbeitsweise]] Ja-Zusage mit Vorbehaltsliste und
Haftungszuordnung im letzten Bullet · Anbieteranfrage als «Frage 1:/Frage 2:» · Nachhaken mit
Empathie-Vorspann · wortgleiche Bitte bei der Weiterreichung. [[fachsignatur]] Systemgarantie fürs
ganze Bauteil (Erstbeleg) · Türsignatur «Raum; EI-Klasse-Typ» mit explizitem EI00 · vier
Rückbau-Vorbehalte in Verfahrensreihenfolge. [[stimme]] «Grüezi» als Dank-Stufe im Anbieter-Sie ·
«Herzliche Grüsse» als dritte Doppel-Sign-off-Variante · «Sehr geehrter Herr X.» mit Punkt · Metrik.
[[beziehungsregister]] Anrede-Erwärmung nach Lieferung · vier Sie-Mappings (Tobler/Schaad,
Oberholzer, Gomes/Fisch, Grob). [[haltung]] zusagen und trotzdem die Verantwortung zuordnen.

**Widersprüche markiert statt geglättet:** «Herzliche Grüsse» an einem Dreizeiler widerspricht der
Gewichts-These ([[stimme]] 328) und stützt die Spiegelungs-These → QUESTIONS #4. Ein Verdachtstext
(27.05. 08:25) mit Claude-Absatz-Skelett aber ohne CSS-Farbe wurde **weder als Gold verbucht noch
als Echo verurteilt** → QUESTIONS #2. **Empfehlung nächster Lauf:** sequenziell 28.05.–05.06., aber
methodisch vorrangig ein Sweep nach «`- `»-Einschüben in Claude-CSS-Mails — die dichteste bisher
gefundene Korrektur-Delta-Quelle, bisher pauschal als Echo ausgeschlossen.

## 13.08.2026 — twin-fidelity-review: Gruss-Default umgedreht, Echo-Detektor mechanisch, Fidelity 42

Fenster `rj@` **14.–19.05.2026** (26 Sent Items, 10 durch Batch 45 gelesen). Die seit Fidelity
260808 offene Frage der **zwei konkurrierenden Batch-45-Einträge ist geklärt**: die Fenster
überlappen, die neun destillierten Volltexte sind disjunkt — Multi-Station-Race, keine
Doppeldestillation. Vier Goldkandidatinnen gezogen, **eine verworfen**.

**Zwei Regeln im kompilierten Gehirn waren falsch und sind ersetzt:** (a) «operativ → Kurzgruss»
— alle drei Golds tragen «Freundliche Grüsse» + vollen Block, zwei davon sind Vierzeiler mit
Bitte; die Metriken der letzten Sweeps (FG 9× gegen Lgr 4×) stützen die Umkehr, sie war nur nie
als Widerspruch gelesen worden. **FG+Block ist ab jetzt der Default**, der Kurzgruss gehört dem
Reply ohne eigenen Sachauftrag; der Nebensatz «Reply trägt nur ‹Raphael Jans›» (Einzelbeleg
260808) ist zur Ausnahme relativiert. (b) «nummerieren (1./2./3.)» — beide Listen-Golds tragen im
HTML `list-style-type:"A) "`, die Ziffernform war ein **Retrieval-Artefakt der Textvorschau**;
korrigiert auf «A) B) C)», mit der methodischen Konsequenz, Listenzeichen nie aus der Vorschau zu
destillieren.

**Echo: `font-family:"Anthropic Sans"` im Mail-HTML ist ab heute ein harter Ausschluss** (sechste
Falle in `CLAUDE.md`). Die verworfene Goldkandidatin (Vinyl-Brandschutzanfrage 19.05. 15:31) war
unverändert versendeter Claude-Text und wäre inhaltlich unauffällig durchgegangen; dieselbe Spur
`rgb(253,253,252)` steckt auch in zwei Pendenz-Blöcken einer sonst handgetippten Mail vom 13.05.
(vierte Falle, erneut innerhalb einer Mail). Grep läuft auf `body.content`, nicht `bodyPreview`.

**Neue Marker (nur im Artikel, NICHT im Gehirn — Budget):** [[arbeitsweise]] Koordinationsmail als
Traktandenpapier mit fetten Sprechakt-Blöcken (Titel wiederholen sich pro Gegenstand statt zu
hierarchisieren; Betroffenen-Liste nennt die nicht beteiligte Nachbarnutzung mit Raumnummer;
Plangrundlage mit Fett-Label + exaktem Dateinamen), Entscheide als unbeantwortete W-Fragen
(Zuständigkeits- statt Sachfrage), Weiterleitung als Begründung und Mail als Deckblatt mit
Quellenzuordnung «(Mail unten <Name>)»; [[denken]] Dringlichkeit über die Kostenfolge-Eskalation
Planung/Ausschreibung/Ausführung statt über einen Termin, Wartende als «Rolle: Folge»-Zeilen;
[[haltung]] «bitte mich beauftragen» — die stillschweigende Gratisleistung wird verweigert, wo sie
angeboten wird; [[stimme]] Komma-Anrede im schnellen Reply, A)/B)/C)-Belegtabelle.

**Fidelity 42** (Vorläufe 40/41/43/48/46): Beziehung 65 · Stimme 43 · Fachsignatur 42 · Haltung 38
· Denken 33 · Arbeitsweise 32. Je Gold A 46 · B 48 · C 33. Sechster Lauf in Folge mit
Erfindungs-Drift (frei erfundene Terminbegründung) — deshalb ist der seit 260806 fünfmal
vorgeschlagene **Erfindungs-Prüfschritt jetzt als Schritt 0 in `agents/twin-chef.md` gebaut**.
DNA neu kompiliert: **29'973 B, 27 B Reserve** (Riegel hatte bei 30'158 B abgebrochen; verdichtet
wurde nur Beleg-Prosa, die Grenze NICHT angehoben). 5 Fragen in [[QUESTIONS]] 260813b. Report:
`outputs/2026-08-13_fidelity.md`.

## 13.08.2026 — twin-mail-training Batch 91: Fenster 06.–10.05.2026, 15 Marker in 6 Facetten

Fenster nach **Leserate statt Datum** gezogen (Empfehlung Fidelity 260808): 69 Sent Items im Fenster
06.–13.05., davon 12 neue Eigentexte gelesen (721 W). Kernbefunde: **Rückwärts-Terminkette in
Kalenderwochen gegen die gefühlte Zeitreserve** eines säumigen Fachplanerteams, mit dem Planfreeze
als Rechenende und der Bitte als einziger Schlusszeile ([[denken]]); **«Stand Jetzt:»** — das
Entscheid-Vakuum wird mit einer sichtbar markierten eigenen Annahme gefüllt, direkt unter der
terminierten Frage ([[arbeitsweise]], [[stimme]]); **Mahnkette Stufe 2 wechselt den Adressaten, nicht
den Ton** (persönlich fragen, unpersönlich mahnen, die Beziehung bleibt im Cc); **der Serviceschluss
reist als Block und behält sein «Dir»** bis ins anonyme Sammelpostfach — der Satz war belegt, die
Fehlstelle beim Registerwechsel nicht; **Rahmenvertrag als unaufgefordertes Gegenangebot** mit der
Bezifferung zurück an den Kunden (Erstbeleg); **Sprinkler im Bestand** — 91° Auslösetemperatur,
Schwelle «unter 10 Köpfe kein Nachweis», Deckenplattenerhalt als billigste Variante
([[fachsignatur]]); zweistufige Team-Anrede + 5 Mappings ([[beziehungsregister]]).

**Registerkorrektur zu Fidelity 260808:** der dort als unbeantwortet notierte Honorarangriff des
Bauherrn wurde 34 Minuten später beantwortet — für den Zulieferer, gegen den Bauherrn. Verbucht ist
die Entscheidung, nicht die Formulierung: der Text ist KI-assistiert ([[haltung]]).

**Echo-Schutz:** 4 Texte ausgeschlossen (CSS `rgb(253,253,252)` als zweiter Beleg; fehlerfreies
Englisch gegen die eigene Hand; En-/Em-Strich in beiden Honorarmails). Die vierte Echo-Falle greift
erstmals **innerhalb einer einzelnen Mail** — die Honorarofferte vom 08.05. hat einen KI-assistierten
Fachteil und einen handgetippten Rahmenvertrags-Absatz. Bestandsabgleich verhinderte zudem, dass der
ß-Gruss vom 06.05. ein zweites Mal als «Erstbeleg» eingetragen wurde.

Metrik: Du-Gross 0.933 · ø 17.6 W (zweiter Sweep über Korpusband, Gattungsverdacht statt Drift,
[[QUESTIONS]] 260813 #1) · Apostroph 0 · FG 9× / Lgr 4×. Register `raw/_INGESTED.md` und
`raw/260813-mailbatch-91.md` nachgeführt. Nächstes Fenster 14.–19.05.2026, dort zuerst die zwei
konkurrierenden Batch-45-Einträge klären.

## 08.08.2026 — twin-fidelity-review: Fidelity 40, Wahlfreiheit-Regel korrigiert

Drei Golds vom **08.05.2026** (Submissions-Tag KISPI-Gastrokueche), alle handgetippt, Echo-Pruefung
negativ. **Gesamt-Fidelity 40** (Voerlaeufe 41/43/48/46); je Facette Beziehung 62 · Stimme 48 ·
Haltung 34 · Fachsignatur 33 · Arbeitsweise 32 · Denken 31. Die vier haertesten Stellen der drei
Mails (Zielbudget, Prozent-Zerlegung, Zielvorgabe «guenstigst moeglicher Herdtyp», Frist mit
Uhrzeit) fehlten in den Blindfassungen alle vier.
Kernbefunde: (a) **Wahlfreiheit gilt dem WIE, nie dem WOHIN** — die Typenwahl gehoert dem
Fachmann, das Kostenziel bleibt gesetzt und wird in derselben Mail nachgezogen; korrigiert die zu
weit gefasste Regel «Wahlfreiheit beim Bauherrn lassen» (Batch 07/260805) im Do/Don't von
[[haltung]]; (b) **die Deckungsluecke wird auf drei Traeger verteilt** (15 % Leistungskuerzung /
10 % Abgebot Unternehmer / 15 % Eigenleistung), ohne Ist-Betrag und ohne Differenz — neu in
[[denken]]; (c) **die eigene Abgebotsabsicht steht im To des Unternehmers**, waehrend der
Honorarangriff des Bauherrn unbeantwortet bleibt; (d) **die Submissions-Mail ist ein Baukasten**
mit wortgleichem Frist-/Beilagenblock und variablem Kopf (Vorspann je Kontaktweg, Projektsatz je
Adressatenleistung); (e) **Healthcare: die Indikation bemisst die Ausstattung, nicht die
Menuezahl** — die Essstoerung ist der Zweck der Therapiekueche, der Widerspruch «Veranlagung ↔
Auslastung» wird stehen gelassen statt aufgeloest.
Weitere Marker: ASCII-Betreff bei Umlaut-Body · Betreff traegt Frist ODER Person, nie beides
(korrigiert die Batch-90-Sammelpostfach-Regel) · «Sehr geehrter» → «Guten Tag» in vier Stunden
nach der ersten Erwiderung, waehrend das Telefonat die Stufe nicht hebt · Kurzsignatur im Reply ·
Service-Satz ohne «Ihnen» im Sammelregister · Beispiel-Liste endet auf «Usw.».
**Facetten-Validierung:** drei Spannungen, zwei aufgeloest (Wahlfreiheit-Achse,
Betreff-Konkurrenz), eine bewusst offen (Bullet-Zeichen «_ » ↔ «- » ↔ «–», nur zwei Belege).
**5. Erfindungs-Drift in Folge** (erfundene «Cafeteria» im Spitalbestand). **Registerkorrektur:**
die «Klaffung 06.–11.05.» war keine Datums-, sondern eine Dichteluecke (55 Mails, 12 gelesen).
**Kontext-Budget:** Auto-Block **29'998 B / 30'000** (2 B Reserve) — Grenze NICHT angehoben,
verdichtet wurde Zitatlaenge statt Regelsubstanz; anders als am 07.08. musste keine richtige
Regel weichen. Der Entscheid `MAX_AUTO_BYTES` ist zum **5. Mal** offen.
**5 Fragen** an [[QUESTIONS]] (260808b). Report `outputs/2026-08-08_fidelity.md`.

## 08.08.2026 — twin-mail-training Batch 90: `rj@` 20.04.–01.05.2026, erste Rueckwaerts-Herabstufung

Luecken-Sweep im von Fidelity 260807 benannten Fenster (34 Mails gelistet, **12 Eigentexte**
destilliert; Batch 41/42 hatten dort nur 14 von 48 Volltexten gelesen). **23 neue Marker in
6 Facetten, 3 Fragen.** Zugriff via M365-MCP, ohne Apple-Mail-Fallback.
Schwerpunkt des Fensters ist ein vollstaendiger Koordinationszyklus (Terminfindung →
Grundlagenlieferung → Sitzungsvorbereitung → Nachbereitung) ueber vier Rollen; entsprechend
beschreiben die Marker ueberwiegend **Rollenfuehrung**, nicht Satzklang.
Kern: Erwaermung folgt der **Erwiderung, nicht der Zeit** (drei Anredestufen an einem Tag,
korrigiert die Lesart des Kuebler-Belegs Batch 43) · **Methode aendern statt Termin verschieben**
· Terminfindung als Rollenkette mit vorab abgeholter Organisationsvollmacht · dieselbe Sachfrage
**registerspezifisch neu zugeschnitten** (praezisiert Batch 41) · Sitzungseinladung mit
**Zielen als Schadensbildern** und Zulieferer-Kontaktdaten inline · Kostenehrlichkeit erstmals
belegt **gegen den Zulieferer** statt gegen das eigene Honorar.
**Erstfall Echo-Schutz:** die Kontrollgruppen-Quote (Batch 89) wirkte **rueckwaerts** — der
Mittelteil der Kaltakquise vom 17.04.2026 ist KI-assistiert (en-Strich 1/162 W gegen 0/910 W
eigener Hand, null Tippfehler, **fremdes CSS mit eigener Hintergrundfarbe**, doppelt
geschriebener Schlusssatz als sichtbare Naht). Der darauf ruhende Fachsignatur-Marker
«Rechtlich-vs-funktional-Trennung» (Batch 42) wurde auf `unsicher` gesetzt und ist keine
Stilquelle mehr — **nicht geloescht**, da rueckfragepflichtig; der Beziehungsregister-Marker
derselben Mail bleibt gueltig (stuetzt sich auf den handgetippten Rahmen).
Metrik (910 W): Du-Gross **0.952**, Satzlaenge ø **16.5 W** — **ueber** dem Korpusband
11.9–14.3, als Widerspruch vermerkt statt geglaettet. Quelle `raw/260808-mailbatch-90.md`.

## 07.08.2026 — twin-fidelity-review: Service-Satz nach Gattung, vierte Endform, eine Regel zurueckgenommen

Fidelity **41** (Vorlauf 43) · Stimme 42 · Denken 33 · Haltung 42 · Beziehung 58 · Fachsignatur 35 ·
Arbeitsweise 37. Fenster `rj@` **06.-17.04.2026** (55 Sent Items gelistet), echte Luecke war der
**15.04.2026**; Golds A/B = kontrolliertes Behoerden-Paar desselben Tages (Amt fuer Baubewilligungen
09:51 / Fachstelle Laermschutz 14:50), Gold C = englische Druckmail an den beauftragten
Web-Entwickler 06:06. Report `outputs/2026-08-07_fidelity.md`.

Geaendert: **[[stimme]]** Do/Don't — Service-Satz haengt an der GATTUNG (bitten ↔ liefern), nicht am
Empfaenger (korrigiert «Verfahrens-/Statusmail traegt weder Service-Satz noch Wunschzeile»);
Englisch-Konditional auf «solange es ein Entgegenkommen ist» zurueckgeschnitten, im bezahlten Auftrag
gilt auch englisch der Imperativ (Vier-Stufen-Skala ist sprachunabhaengig); Anrede-Skala nach
[[beziehungsregister]] verschoben, Guillemet-Echo-Klausel nach `CLAUDE.md`; neuer Belegabschnitt
Behoerden-Schluss + englischer Imperativ; **Regel 260806 «fehlender Signaturblock = Geraeteartefakt»
zurueckgenommen** (Golds A/B tragen denselben Outlook-Mobile-Header MIT vollem Block).
**[[arbeitsweise]]** — **vierte Endform** der Mail: die Praemissen hinlegen und den Schluss nicht
ziehen; abschreibfertige Variante auf die Behoerden-Frageform erweitert; Beleg-Prosa verdichtet.
**[[beziehungsregister]]** — Kalt-Sie ueberlebt das Telefonat bei amtlichen Fachstellen; gestapelte
Anrede Person + Sammelpostfach; Anrede-Skala uebernommen. **`CLAUDE.md`** — fuenfte Echo-Falle
(Kontrollgruppen-Kontrast im Englischen am selben Tag; das zweisprachige Paar 15.04. 09:40 als
KI-assistiert ausgeschieden) samt **verworfenem** Signal «du/dich klein» mit Gegenbeleg.
**[[QUESTIONS]]** — 5 neue Fragen (260807b). DNA neu kompiliert: **29'938 B, 62 B Reserve** (Grenze
30'000 unveraendert, Anhebung bleibt Raphaels Entscheid — fuenf Marker dieses Laufs stehen deshalb
nur in den Artikeln, nicht im Gehirn).

## 07.08.2026 — twin-mail-training Batch 89: Traktandenliste als Antwort, Em-Strich-Quote

Lücken-Sweep `rj@` **21.–31.03.2026** (54 Sent Items vollständig gelistet; Batches 36/37/38 hatten
das Fenster nur stichprobenartig gelesen). Methodik Batch 86/88 angewandt: Batch-Register zuerst,
dann Positivtest-Grep über 33 Kandidaten (Funktionsbelege `Steinmann` 57 / `Kübler` 49 / `Duran` 36;
Kontrollbegriffe 0; echte Nullen bei 22.03. / 25.03. / 31.03., «Sternen Grill», «Terminplan
Baueingabe», «Doppelseit»). **15 Eigentexte gelesen, 18 neue Marker in 5 Facetten, 3 Fragen.**

Kernbefunde: **die Traktandenliste IST die Antwort** — fünf Vorwürfe der Bauherrschaft werden zu
«A Bauprojekt / B Vordach / C Pacemaker / D Kommunikation / E Fachplaner» in einer Teams-Einladung
ohne Anrede und Gruss ([[arbeitsweise]]) · **der Betreff trägt die ganze Nachricht, der Body ist
leer** (4 Belege, [[stimme]]) · **Anrede und Gruss erodieren im schnellen Tagesthread**, Gegenrichtung
zur belegten Register-Erwärmung über Tage ([[beziehungsregister]]) · **Eskalationsdosis wird mit dem
Bauherrn verabredet**, nicht einsam gewählt ([[arbeitsweise]]) · **Fehler des Gegenübers abräumen
statt aufrechnen** («easy, danke dir schöns tägli», [[haltung]]) · Katasterplan-Beschaffung und
Revisionsplan-Bestand nach Fremdplaner benannt ([[fachsignatur]]).

**Echo-Befund mit neuer Messform:** die Prosa-Antwort vom 24.03. ist KI-assistiert und ausgeschlossen.
Der belegte En-/Em-Strich-Tell ist erstmals als **Quote gegen eine gleichzeitige Kontrollgruppe**
gemessen — **3 Striche in 179 W Maschinentext gegen 0 in 598 W eigener Hand desselben Fensters**,
bei 0 Tippfehlern dort und dichten Tippfehlern hier. Keine Formulierung des Textes übernommen, auch
nicht sein Grundsatz zum «Planfreeze» (als Frage 260807 #1 geführt). Mikro-Metrik: Du-Gross 0.812,
Satzlänge ø 13.6 W (im Korpusband), Apostroph 0, Ellipsen 3.34/1000 W.

## 06.08.2026 — twin-fidelity-review: Bitte-Form-Skala, Mitleser-Regel, Riegel-Verdichtung

Golds `rj@` **15./19./20.03.2026** (englische Freelancer-Mail · Koordinationsmail mit Fachplaner im
Cc · Formalien-Arbeitsmail), Fenster 13.–20.03.2026 vollständig gelistet (41 Mails), alle drei
Golds vorher null Wiki-Belege. **Gesamt-Fidelity 43.** Neu bzw. geschärft: **Bitte-Form auf vier
Stufen** nach der Druckquelle ([[stimme]]) · **der mitlesende Dritte hebt im Sie die Namensform, im
Du die Wärmestufe** — kontrolliertes Paar über vier Tage, korrigiert den zu absoluten 260805-Satz
([[beziehungsregister]]) · **Rollenverortung nach unten vor Publikum** ([[haltung]]) ·
**abschreibfertige Zweitvariante statt Empfehlung** + **Gewerkstatus ohne Liste, Lücke bleibt
sichtbar** ([[arbeitsweise]]) · **Formalie bis zur Rechtsfolge, HR-Zeilen verbatim** + **Rechtsbegriff
statt Termin-Prosa** ([[fachsignatur]]) · englisches Register («Hello <Vorname>,», Konditional-Wunsch,
«In deep respect.») und **Fassung-vor-Stil auf Outlook iOS erweitert** ([[stimme]]).
6 neue Selbstfragen in [[QUESTIONS]] (Runde 260806b).

**Verdichtung erzwungen:** der Auto-Block wäre auf 34'205 B gewachsen (Grenze 30'000). 4'243 B
freigeräumt, indem Spezifikation aus den Do/Don't-Blöcken in die Artikel wanderte — neue Abschnitte
«Eigendokument-Untergattungen» ([[stimme]]) und «Zonen-, Kernzonen- und Aussenraum-Vokabular»
([[fachsignatur]]); keine Regel gestrichen, aber das Retrieval verschlechtert sich dort auf einen
Verweis. Neuer Stand **29'962 B, 38 B Reserve**. Zusätzlich in `skills/twin/tools/build_dna.py` die
faktisch falsche Riegel-Begründung korrigiert (der Block ist seit dem 03.08.2026 kein @-Import mehr
und damit Ladekosten je Texterzeugnis, nicht Session-Fixkosten); `MAX_AUTO_BYTES` **unverändert**,
die Anhebung bleibt Raphaels Entscheid. Report:
`outputs/2026-08-06_fidelity.md`.

**Korrektur am Bookkeeping:** die in Fidelity 260805 und Batch 88 genannte «Restlücke 07.–11.03.2026»
existiert nicht — Batch 34 deckt 06.–12.03. ab, Batch 86 hat dasselbe Fenster am 04.08. noch einmal
vollständig gesweept. Die Gap-Sweeps (Batches 80–88) decken Sep 2025 bis 13.03.2026 lückenlos ab;
die erste echte Lücke beginnt am 14.03.2026.

## 06.08.2026 — twin-mail-training Batch 88: Januar 2026 abgeschlossen

Lücken-Sweep `rj@` **16.–31.01.2026** (37 Sent Items, vollständig gelistet; Batches 24/25 hatten
hier nur stichprobenartig gelesen). 8 Eigentexte gelesen, **12 neue Marker in 5 Facetten**, eine
seit Batch 85 offene Frage entschieden. Register: `raw/_INGESTED.md`, Abschnitt Batch 88.

- [[arbeitsweise]] — Bitte trägt ihre eigene Bezugsquelle · beim Spezialisten den **Fragenkatalog**
  bestellen statt der Antwort · eigene Gliederung vorab senden (Muster-Füttern, 3. Beleg und erster
  nach innen: ausgefülltes Kostenblatt von 2017) · Doppelversand an benannte Person **und**
  Firmenpostfach im Abstand von zwei Minuten.
- [[stimme]] — Hintergrund gehört **hinter** den Signaturblock, der Haupttext bleibt Bestellung
  (hebt den Batch-85-Einzelfall zur Regel) · «Hoi,» als unterste Sprosse der Gruppenanrede ·
  «Besten Dank und bis Morgen.» · Mikro-Metrik (457 W, ø 16.3 W — Gattungsartefakt, erklärt).
- [[beziehungsregister]] — **QUESTIONS 260803 #1 beantwortet**: die Vollform «Geschätzter Herr
  <Vorname> <Nachname>» ist Namensform-Unsicherheit, nicht Anhebung nach Anlassgewicht (Zweitbeleg
  «Herr Simmen Jonas» → fünf Zeilen später «Simon», in einem beiläufigen Statussatz). Der Zwilling
  ahmt sie nicht nach. Dazu drei Mappings und ein **markierter Widerspruch**: die Anrede-Reihe an
  einen vertrauten Kontakt schwankt in sieben Tagen über vier Stufen entgegen dem Anlassgewicht,
  während die Grussformel mit dem Gewicht steigt → Frage 260806 #1, Rule `anrede-kontakte`
  unverändert.
- [[haltung]] — die eigene Rechnung formbar machen, damit sie durch die fremde Freigabe kommt ·
  Folgemandat an die Sachleistung hängen und den Nutzen beidseitig benennen · eigene Schwachstelle
  selbst markieren samt Ursache und vorgegebener Antwortform.
- [[fachsignatur]] — Brandschutz-Abklärungskatalog Healthcare als Verfahren in neun Schritten ·
  e-BKP-H/BKP-Doppelgliederung als Zulieferbedingung.
- [[QUESTIONS]] — Runde 260806 mit drei Fragen (Anrede/Gruss als unabhängige Regler · «Hoi,»
  Verteiler- oder Nachtform · Themenraster immer selbst setzen?).

**Echo-Prüfung mit offenem Ausgang (Rule 260729b):** die Kennwert-Anfrage vom 30.01. ist auffällig
glatt und liegt unmittelbar vor dem in Batch 26 datierten Beginn der Claude-Ära; Gegenindizien
(kein En-dash, keine Bullet-Struktur, doppelter Gruss als Copy-Paste-Artefakt) erhärten den
Verdacht nicht, räumen ihn aber auch nicht aus. Konsequenz: **nur die Versand-Choreografie
destilliert, die Formulierungen NICHT als Stimm-Marker übernommen.** Die übrigen sieben Texte sind
klar handgetippt.

**Januar 2026 ist damit vollständig abgeschlossen.** Nächstes Fenster: `rj@` 07.–11.03.2026.

## 05.08.2026 — twin-fidelity-review: Bitte-Form, mitlesende Dritte, Gerätebefund

**Gesamt-Fidelity 46** (Stimme 49 · Denken 33 · Haltung 50 · Beziehungsregister 73 ·
Fachsignatur 28 · Arbeitsweise 44), drei unverbrauchte Golds aus dem Fenster 02.–06.03.2026:
Sammel-Zahlungsbitte + Kreditoren-Stammdaten an den Betreiber-Vertreter (Du), Plangrundlagen-/
Freigabemail nach GL-Entscheid (Du), Offert-Weiterleitung an die Bauherrin mit der Unternehmerin
im Cc (Sie). Report: `outputs/2026-08-05_fidelity.md`.

**Abdeckungsprüfung hat diesmal VOR der Lektüre gegriffen:** die ersten vier Kandidaten waren
bereits in Batch 31/32/33 destilliert, erkannt über Batch-Register + Positivtest (Root-Cause 3,
Katasterplan 12, Werte Steffi 8, Hottinger 38; Kontrollbegriffe 0). Kein Doppelverbrauch.

**Neu ins Wiki (Do-Block, textwirksam):**
- [[stimme]] — **Bitte-Form folgt dem Gegenstand, nicht dem Register**: fremde Ressource/
  Amtshandlung → «Darf ich Dich/Sie bitten», Projektaufgabe des Empfängers → nackter Imperativ
  «Bitte prüfe … und stelle …» (kontrolliertes Paar, derselbe Empfänger, ein Tag Abstand). Dazu
  die **zweite Einschränkung der Begründungspflicht** (Routine-Abwicklung trägt keine Begründung,
  der Anhang ist die Begründung), Belegnummern inline mit Form «RE-00079 (PDF)», Service-Satz-
  Präzisierung und der **verblose Nominalsatz** im reinen Transmittal.
- [[beziehungsregister]] — **vor mitlesenden Dritten wechselt die Namensform, nicht die
  Wärmestufe** (Gegenprobe über alle Mails an dieselbe Bauherrin: «Geschätzte Undine» bilateral
  26.02. gegen «Geschätzte Frau Hofer» mit Unternehmerin im Cc 06.03.). Korrigiert die im Lauf
  260804 notierte monotone «Bewegung abwärts ins Vertrautere».
- [[haltung]] — sich als Zwischenstation herausnehmen, wo die Bauherrschaft selbst entscheiden
  kann («Bitte um Entscheid direkt an Unternehmer», ohne Empfehlung, ohne Bewertung).
- [[arbeitsweise]] — Prosa-Rückfrage als selbstgebautes «_ »-Feldraster beantworten; Änderung
  zuerst legitimieren, dann beschreiben («Gemäss Entscheid der GL …»).
- [[fachsignatur]] — Erfindungsverbot auf **Rechnungsinhalte, Beträge und Stückzahlen**
  ausgeweitet (Drift in 3 von 3 Golds); administrative Fachsprache als Artikelabschnitt.
- [[denken]] — nach dem **Bearbeitungsweg des Empfängers** gliedern, nicht nach eigener Wichtigkeit.

**Korrektur am Bestand:** «Mit freundlichen Grüßen» (ß) ist ein **Gerätebefund**, kein Stilbefund.
Früherer Zweitbeleg 20.02.2026 (der Artikel führte den 06.05.2026 als «erster Beleg im gesamten
Korpus») und eine technisch prüfbare Erkennungsregel: `internetMessageId` auf `@raphaeljans.ch`
statt `…OUTLOOK.COM`, kein HTML-Signaturblock, Gruss inline, Zitatkopf «Anfang der
weitergeleiteten Nachricht». Dieselbe Fassung erklärt auch Binnen-Kleinschreibung und fehlenden
Block — erst die Fassung prüfen, dann den Stil werten.

**[[QUESTIONS]]:** 5 neue Selbstfragen (Mitleser vs. Anlass · Service-Satz-Trennlinie · Bullets
der referierten Fremdvorgabe · Imperativ nach oben · Grenze der Vergabe-Zurückhaltung).

**Gehirn neu kompiliert:** `rules/jans-dna-facetten.md`, **29'991 B — 9 B Reserve**. Um die drei
neuen Regeln unterzubringen, wurde an elf Stellen verdichtet; drei bereits geschriebene
Regelzusätze mussten wieder in den Artikel-Fliesstext zurück. Der Riegel ist damit praktisch
geschlossen — der Entscheid über die Grenze (Aufteilung nach Gattung, empfohlen, mit massvollem
Anheben als Zwischenschritt) liegt bei Raphael und ist jetzt fällig.

## 05.08.2026 — twin-mail-training Batch 87: Luecken-Sweep `rj@` Dez 2025 / Jan 2026

**Methodik-Befund vor der Lektuere: das Fenster war doppelt vorbelegt.** Neben den
stichprobenartigen Batches 22/23 hatten zwei **Fidelity-Laeufe** hier bereits Gold verbraucht,
die in der Batch-Tabelle von `raw/_INGESTED.md` gar nicht erscheinen — 260723 (met-all/Grillmotor
29.12.2025, Claudia-Ultra-Ping 19.12.2025) und 260727d (CNCEST-Reklamation 05./06./09.01.2026,
Peter-Weisser-Neujahrs-Update 05.01.2026). Konsequenz, ab jetzt Teil der Sweep-Reihenfolge: der
Gold-Verbrauch der Fidelity-Laeufe steht am **Ende** der Datei in eigenen Abschnitten; wer nur
die Tabelle liest, haelt ein abgeerntetes Fenster fuer duenn. Positivtest bestanden,
Kontrollbegriff-Gegenprobe 0 (Lehre 260804 eingehalten).

**4 Eigentexte gelesen, 3 neue Marker + 1 Status-Hebung.** `stimme`: der **Signaturblock als
Satzfortsetzung** («Jetzt warte ich auf Ihren Anruf**:**», ohne Anrede, FG+Block, der Doppelpunkt
zeigt auf die Nummer im Block) und die **Status-Hebung** des Batch-86-Markers «Bitte als
vorweggenommener Dank» durch einen registerfremden Zweitbeleg («**Gern** erwarte ich eine Offerte
von Ihnen …», Gewerbe statt Amt) — damit von Einzelbeleg auf Regel. `arbeitsweise`: **Eskalation
beim namenlosen Support ueber Verfuegbarkeitsmeldungen** (drei Mails in 22 Stunden, kein Vorwurf,
keine Frist — der Druck entsteht durch die Taktung) und **die Zusatzangabe mitbestellen, die die
Offerte vergleichbar macht** (A)/B)-Varianten beim Vermieter, Liefertermin beim Verkaeufer).
`haltung`: **das Geschaeft der Gegenseite mitrechnen, auch als zahlender Kunde** («So koennten
Sie das Geraet an diesem Tag weiervermieten») — Fairness beidseitig, nicht rollenabhaengig.

**QUESTIONS 260727d #3 geschaerft:** ueber den nackten Gruss («Gruss / <Name>» statt FG+Block)
entscheiden weder Fadentiefe noch Mailkuerze, sondern **ob am anderen Ende ein Name steht** — der
CNCEST-Faden lief ueber eine benannte Sachbearbeiterin, der Microsoft-Faden ueber ein anonymes
Ticket-Postfach und behielt FG+Block auch bei der Ein-Satz-Mail. In `beziehungsregister`
verankert, dazu das Mapping **Miro P. Quenson** (drei Anredestufen in EINEM Faden; die Namensform
wird aus der Signatur des Gegenuebers uebernommen, das ist Korrektur, nicht Erwaermung).

**Echo-Pruefung negativ** trotz Claude-Aera-Fenster (dichte Tippfehler, Bandbreite mit Bindestrich
statt En-dash). Mikro-Metrik 559 W: Satzlaenge ø **21.5 W**, hoechster Wert der Serie — aber ein
**Artefakt zweier Gattungen im selben Batch** (40+-Wort-Verfahrenssaetze gegen Ein- bis
Fuenf-Wort-Supportmails), kein Tonlagen-Befund; Du-Gross 0.0 (reiner Sie-Batch), «Guten Tag» ohne
Namen 4×. `denken` und `fachsignatur` gehen leer aus (Beschaffungs-/Abwicklungsfenster).

Geschrieben: `raw/260805-mailbatch-87.md`, Marker in `wiki/stimme.md`, `wiki/arbeitsweise.md`,
`wiki/haltung.md`, `wiki/beziehungsregister.md` (last_updated 2026-08-05), `wiki/QUESTIONS.md`
(Runde 260805, 3 Fragen), Registerzeile in `raw/_INGESTED.md`. Naechstes Fenster: `rj@`
28.02.–05.03.2026, danach 16.–31.01.2026.

## 04.08.2026 — twin-fidelity-review: Retrieval-Test (Mail) + erstes Wettbewerbs-Gold

**Fidelity 48** (Stimme 49 · Denken 46 · Haltung 58 · Beziehung 48 · Fachsignatur 37 ·
Arbeitsweise 51), tiefster Wert der Serie — misst aber anderes als die Vorlaeufe. Report:
`outputs/2026-08-04_fidelity.md`.

**Gold A war eine Fehlwahl mit Erkenntniswert.** Die Bauentscheid-Statusmail an die Bauherrin
(01.12.2025) ist bereits dreifach destilliert (Mailbatch 21, Fidelity 260704, Fidelity 260718).
Die Auswahl scheiterte nicht an der Methodik-Regel aus Batch 86, sondern an ihrer Ausfuehrung:
mein Pruefskript liess den zweiten Suchbegriff leer und fragte das ISO-Format nie ab, worauf der
Tages-Grep fuer den 01.12.2025 null meldete — im Wiki steht die Mail als `2025-12-01`. Damit
wurde der Lauf zum **reinen Retrieval-Test**, und der faellt schlecht aus: jeder verfehlte Marker
stand im Wiki, die meisten woertlich im kompilierten Do-Block (Anrede «Guten Tag Frau Hofer»,
nummerierte Liste vs. «–»-Liste, kein Service-Satz, die namentliche Amtskette). Dritter
unabhaengiger Beleg fuer QUESTIONS 260729 #3.

**Gold B ist echtes Neuland:** Wettbewerbsabgabe «PATIO IM PIANO NOBILE» (Erweiterung
Sekundarschule Hinterzweien, Muttenz, Februar 2022, 2. Rang) — Erlaeuterungsbericht auf dem
Abgabeplan, im Wiki mit **null** Belegen vertreten (Kontrollbegriff-Gegenprobe 0). Erfuellt
Empfehlung 3 des Vorlaufs. Neue Marker: `stimme` Untergattung (c) Erlaeuterungsbericht
(VERSAL-Kapitelzeile, thesenhafter Projekttitel der im Text eingeloest wird, ausformulierte Prosa
statt Geruest, kein Schlusskapitel); `denken` die entwerferische Ableitungskette Ortslektuere →
nummerierte Zielliste → Konsequenz mit den beiden woertlichen Scharnieren; `fachsignatur`
Wettbewerbs-Vokabular mit Massen (HBV-Decke, Baubuche, Raster 4.75 m, Lisenen/Pilaster,
Schmetterlingsanordnung) + neues Don't gegen erfundene Materialien; `arbeitsweise` Fachplanertexte
als eigene VERSAL-Spalten + Nummerierung als **Sach**regel statt Gattungsregel;
`beziehungsregister` Warnung vor dem Hochschrauben bei der Privatbauherrin. Guillemet-Klausel auf
**drei** Belege gehoben (2021 «…», 2022 und 2023 „…").

**Vierte Autorschaftsfalle in `CLAUDE.md` verankert:** zwei Haende in EINEM Dokument, die fremde
erkennbar an der **Fehlerfreiheit im Umfeld eigener Rohheit**. Raphaels Bloecke tragen mehrere
Tippfehler pro Absatz, die Fachplanerspalten daneben sind fehlerfrei und tragen fremde
Satzmelodie — ohne rohes `**`, ohne Trennstrich, ohne Dritte-Person-Sicht. Konsequenz:
Fehlerdichte **je Block** vergleichen, nicht je Dokument. Ohne diesen Schritt waeren vier
Fachplanertexte als Raphaels Fachsignatur ins Wiki gewandert.

**Wachstums-Riegel zum ersten Mal ausgeloest.** `build_dna.py` brach ab (Auto-Block waere
36'835 B, Grenze 30'000 B). Entschieden wurde **verdichten, nicht anheben** — die Grenze
anzuheben behaelt der Riegel Raphael vor. 6'866 B ausgelagert, **ohne Regelverlust**: Beleg-Prosa
in den Artikel-Fliesstext, zwei neue Abschnitte («Wettbewerbs-Fachsignatur» in `fachsignatur`,
«Ortslektuere als Entwurfsgrundlage» in `denken`). Ergebnis 29'969 B mit **31 B Reserve** — der
naechste Lauf bricht wieder ab. Entscheid-Vorlage als Empfehlung 5 im Report. Nebenbefund: die
Riegel-Meldung ist textlich veraltet (sie spricht von Fixkosten jeder Session, obwohl das Script
seit dem 03.08. korrekt in die **nicht** importierte `jans-dna-facetten.md` schreibt).

`wiki/QUESTIONS.md` um Runde 260804 (5 Fragen) ergaenzt; `rules/jans-dna-facetten.md` neu
kompiliert; `raw/_INGESTED.md` um den Gold-Verbrauch ergaenzt.

## 04.08.2026 — twin-mail-training Batch 86: Luecken-Sweep `rj@` 06.–13.03.2026

**Zwei Methodik-Korrekturen vor der Lektuere.** (1) Die Empfehlung aus Batch 85 («ab 13.03. ist der
Bestand ungeprueft») war falsch — sie stuetzte sich nur auf die Batches 32/33 und uebersah die
sequenzielle Kette 36/37/38, die 18.03.–03.04. abdeckt. Das Fenster 18.–31.03. wurde zur Kontrolle
vollstaendig gelistet (73 Sent Items) und ist erledigt. (2) **Wichtiger: der Tages-Grep gegen das
Wiki erzeugt Falsch-Luecken.** Er meldete den 20.03.2026 mit null Belegen — dort liegt aber das
vollstaendig destillierte Korrektur-Delta der Sandro-Mauchle-Mail (Claude-Cowork-Entwurf 19:06 →
Versand 19:21), erfasst als «Batch 36» ohne Datumsnennung. Marker, die ihre Quelle nur ueber die
Batchnummer zitieren, sind im Tages-Grep unsichtbar. **Ab sofort gilt: Abgleich Batch-Register
zuerst, Tages-Grep nur als zweite Stufe innerhalb eines als duenn erkannten Fensters.** Ohne diese
Korrektur waere das Sandro-Delta ein zweites Mal destilliert worden.

**5 neue Marker** aus 8 gelesenen Eigentexten der echten Luecke (06.–13.03., Batches 32–35 hatten
dort nur ein Viertel gelesen): `arbeitsweise` Zustaendigkeitskette selbst schliessen (UGZ meldet
15:38 die Auflagenerfuellung und verweist auf die Kreisarchitektin, 15:44 geht die Mail dorthin,
15:45:01 dieselbe an die Bauherrin mit «Zur Info») + Vier-Zeilen-Antwort (quittieren · abgrenzen ·
eigene Leistung an Vorleistung koppeln · datierte Selbstverpflichtung); `stimme` die Bitte ans Amt
als vorweggenommener Dank («Fuer das Aufschalten der Baufreigabe … bin ich Ihnen dankbar», ganze
Mail ein Satz, kein «bitte») + Mikro-Metrik; `beziehungsregister` Behoerden-Sie in drei Stufen (alle
drei Stadt-ZH-Kontakte «Geschaetzte/r», kein einziges «Sehr geehrte/r») + Mappings Elisabeth Müller
(AfB) und Roberto Finocchietti (UGZ); `fachsignatur` erfuellte Auflage ≠ Baufreigabe samt
Perimeter-Vorbehalt (§ 239 Abs. 1/2 PBG). Das Muster-Fuettern des Amtes (Batch 33) erhaelt einen
zweiten Beleg mit datierter Quelle. `haltung` und `denken` gehen leer aus — Abwicklungsfenster.
Echo-Pruefung negativ (Tippfehlerdichte, keine En-dash-Bandbreiten). Metrik 302 W: ø 12.6 W,
Du-Gross 1.0, fuenf Anredeformen bei acht Mails. Drei Fragen nach `wiki/QUESTIONS.md`.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D0 · E0 · F3 · G2

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Haupt-Befunde: 1 echter ss-Verstoss (`wiki/beziehungsregister.md` Z. 1384, eigener Fliesstext), 3 Deko-Haken in `wiki/QUESTIONS.md`, totes Ziel `[[260607-kispi-korpus]]`. **Ausdruecklich KEIN Verstoss:** die 7 ss-Treffer in `wiki/stimme.md` sind wortgetreue Korpus-Zitate («Mit freundlichen Grüßen») und als Beleg zu erhalten. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-03 (Wissens-Chef Run 23, Cross-KB) — Erst-Verlinkung zur Kontext-Budget-KB, Takt berichtigt

- **[erst-verlinkung] `CLAUDE.md`.** Diese KB kannte `wissen/claude-code` in keiner Datei
  (`grep` ueber CLAUDE.md + alle sechs Facetten: null Treffer) — obwohl sie ueber
  `skills/twin/tools/build_dna.py` die **groesste Datei des Grundkontexts** erzeugt
  (`rules/jans-dna.md`, am 03.08.2026 32'428 B = 28.1 % des Grundkontexts) und `claude-code`
  genau dieses Budget fuehrt. Abschnitt «Kontext-Kosten dieser KB» ergaenzt, mit Pfadverweis auf
  `wissen/claude-code/wiki/kontext-architektur.md` und der Anweisung, vor einer groesseren
  Facetten-Erweiterung dort den Stand nachzusehen. Gegenverweis dort gesetzt.
- **[veraltetes] `CLAUDE.md` Abschnitt «Loops».** `twin-fidelity-review` war mit «alle 2 Tage»
  gefuehrt; die Registry taktet ihn **taeglich** (cron `40 5 * * *`, Stand 03.08.2026).

## 03.08.2026 — twin-mail-training Batch 85: Luecken-Sweep `rj@` 15.–28.02.2026

Fenster vollstaendig gelistet (56 Sent Items), Tagesabgleich in beiden Datumsformaten vor der
Lektuere: **26.02. stand mit null Belegen im Wiki, traegt aber acht Eigentexte** — die
sequenziellen Batches 29–31 hatten nach Threads statt nach Tagen abgetastet. 6 Volltexte gelesen,
10 Eigentexte destilliert, 17 Marker-Kandidaten vorab gegriffen (sieben bereits belegt, nicht
erneut destilliert).

**4 neue Marker:** `arbeitsweise` Vergabe-Choreografie (drei Angebotsfreigaben in neun Sekunden,
je einzeln adressiert mit eigenem PDF, KW-Frist, Terminkoordination delegiert) + Behoerden-
Protokoll an die Bauherrschaft mit Amt und Unternehmern im cc; `fachsignatur` Offertenanfrage als
Kurz-Devis im Mailbody, verankert am Referenzobjekt («Montageansatz gemaess Referenz: 2 Monteure,
ca. 2 Stunden»); `stimme` die Frist steht NACH dem Signaturblock + Mikro-Metrik (500 W, ø 14.3 W,
Du-Gross 1.0); `beziehungsregister` Vollform «Geschaetzter Herr <Vorname> <Nachname>» in der
Vergabemail — **Widerspruch markiert statt geglaettet** (Anlassgewicht vs. Namensunsicherheit).
`haltung` und `denken` gehen leer aus; das Fenster ist ein Vergabe-/Abwicklungsfenster, dort
bereits vollstaendig belegt. Drei Fragen nach `wiki/QUESTIONS.md`. Echo-Pruefung negativ trotz
Claude-Aera-Fenster (Tippfehlerdichte innerhalb der Devis-Liste); englischer Website-Thread als
bekannte Echo-Falle 9/10 ausgeschlossen. Register: `raw/260803-mailbatch-85.md`.

## 01.08.2026 — twin-chef Fidelity-Gate: Hub-Chef-Briefing (intern, an Raphael selbst). Fidelity 89, durchgewunken.

Stimme 88 · Denken 93 · Haltung 85 · Beziehung 90 · Fachsignatur 89 · Arbeitsweise 90. Keine
Facette unter der Schwelle 80, deshalb **keine** Veredelungsrunde; vier Mikro-Befunde an den
Aufrufer zurueckgegeben (Passiv an der Selbstkorrektur-Stelle, unbelegter KB-Verweis,
Erzaehler-Hinge «Der interessante Teil ist …», Amts-Floskel «Der Vollstaendigkeit halber»). Die
Datei wurde vom Chef **nicht** veraendert (Auftrag). Gattungs-Befund: fuer den internen
Lagebericht an den eigenen Inhaber existiert im Korpus **keine** authentische Goldprobe — zwei
Fragen dazu nach `wiki/QUESTIONS.md` («Offen — Gate 260801»): Ich-Form vs. agentloses Passiv beim
eigenen Fehler, und ob der interne Bericht dieselbe Fundstellen-Disziplin traegt wie ein
Aussen-Erzeugnis.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D18 · E0 · F232 · G17

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. 288 offene Fragen in `QUESTIONS. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 01.08.2026 — QUESTIONS 260801 #3 gemessen statt gefragt: Reflex belegt, Raster Einzelbeleg

Statt die offene Frage an Raphael zurueckzugeben, maschinell beantwortet: **377 DOCX** aller
Vor-2026-Studien gescannt (Suchbegriffe FAVORIT · Advocatus · Nachbarschaft · Baubehoerde,
46 Trefferdateien). **«FAVORIT»/«Advocatus diaboli» kommen ausschliesslich im Regensdorf-Skript
vor** — das Vier-Achsen-Raster bleibt Einzelbeleg. Der **Reflex** dahinter ist dagegen ueber
vier Jahre und drei Projekte belegt: Nachbarsicht am eigenen Entwurf pruefen und die Nachbarschaft
sichtbar machen (Haus Deuber 20.10.2020 «Neu muessen die Nachbarschaften aufgezeigt werden …
ganz zu schweigen vom Anblick fuer den Nachbar», Regensdorf 19.04.2024, WALD 23.10.2024
«Rahmenbedingungen erarbeiten: Nachbarschaft»), sowie antizipierte Behoerdenhaltung mit
Rueckfallebene (Haus Deuber 08.02.2021, Waedenswil 22.08.2023). `wiki/denken.md` traegt den
Reflex jetzt mit dieser Belegkette; QUESTIONS #3 auf beantwortet gesetzt, offen bleibt nur die
Ein-Zeilen-Frage, ob die FAVORIT-Formel bewusst als Raster gefuehrt wird.

**Nebenbefund mit Folgen — Echo-Falle im Dokument-Archiv.** Der Scan fand KI-Antworten als
Word-Dateien aus 2024 (`2409 Steinhof/.../Gestaltungsplan/ChatGPT_2.docx` und die daneben
liegende, nicht verraeterisch benannte Datei, deren Dateiname der Prompt-Anfang ist). **Der
Vor-2026-Stichtag schuetzt den Dokument-Strang also nicht.** Zwei billige Detektionssignale in
`wissen/twin/CLAUDE.md` verankert: rohes `**` im Word-Fliesstext (Word rendert kein Markdown —
Sternchen entstehen nur beim Einfuegen aus einem Chat-Fenster) und null Guillemets bei deutschem
Fachtext. Scan-Ergebnis und Warnung in `raw/_INGESTED.md`. DNA neu kompiliert.

## 01.08.2026 — Vier-Interessen-Raster in den Skill `machbarkeit` promoviert (Entscheid Raphael)

Der im Dokument-Gold gefundene Befund wandert dorthin, wo er wirkt: **Fach-Methode gehoert in
den Fach-Skill, nicht in die Stil-DNA** (jans-dna.md «Wann NICHT»: im Konflikt gewinnt die
Fach-Rule fuer den Inhalt). Neu in `skills/machbarkeit/SKILL.md`: Abschnitt «Pflichtschritt vor
der Variantenbewertung: das Vier-Interessen-Raster» (Bauherrschaft · Baubehoerde · Nachbarschaft
als *Advocatus diaboli* · Bewohner/Bautechnik/Bestand) mit dem **Gelaendeschnitt zum Nachbarhaus
als hartem Deliverable** statt einer Denkuebung, plus der Regel, dass ein der Bauherren-Favorit
widersprechender Befund ins Fazit gehoert. Begruendung der Priorisierung, nachgemessen: in
`machbarkeit`, `nutzungsstrategie` und `behoerden-vorabklaerung` kommt die Nachbarschaft
ausschliesslich als *rechtliche* Groesse vor (Grenzabstand, Servitut), nie als Interessenlage —
dabei ist sie die einzige der vier Lagen, die Einsprache erheben kann.

**Zweitbefund im selben Zug behoben:** der Rechen-Kern des Skills kannte nur die Ausnuetzungs-/
Geschossflaechenziffer. Die **Baumassenziffer (BMZ)** fehlte — genau der Fehlgriff, den der
Zwilling im Fidelity-Lauf gemacht hat, steckte auch im Skill. Ergaenzt: zuerst pruefen, mit
welcher Ziffer die Gemeinde arbeitet; bei BMZ die Kette `W<x> × Grundstuecksflaeche` + Zuschlag
Arealueberbauung, ausgewiesen als Arealueberbauung / Baumassenreserve / stille Reserven / Total.

In `wiki/denken.md` bleibt nur noch der **Denk-Reflex** («dieselbe Frage aus den beteiligten
Interessenlagen durchspielen, inklusive der Gegenseite») mit Verweis auf den Skill — das
ausformulierte Raster ist aus dem Grundkontext entfernt (Kontext-Diaet). DNA neu kompiliert.

## 01.08.2026 — Raphael beantwortet QUESTIONS 260801 #4: «Zeichensystem ist gewachsen»

Direktantwort, `authentisch`. Das Dokument-Gold-Zeichenrepertoire («>>>» offene Frage, «>»
Grundlage, «_ » Aufzaehlung, «➢» Sub-Detail) ist **keine bewusste Notation mit fester Semantik**.
Konsequenz in `wiki/stimme.md` (Do/Don't) und im Gehirn: «_ » bleibt Default; «>>>» und «>» nur
in derselben Gattung und zu demselben Zweck uebernehmen, **nie erzwingen**; Zeichen abschauen,
wo belegt, aber keine Zeichen-Grammatik ableiten und keine neuen erfinden. Damit ist die im
Fidelity-Report 260801 als «Zeichensystem» beschriebene Tabellenzeile bewusst entschaerft — die
uebrigen sieben Notations-Elemente der Gattungsweiche bleiben unveraendert gueltig. QUESTIONS
260801 #4 auf beantwortet gesetzt, `rules/jans-dna.md` neu kompiliert.

## 01.08.2026 — twin-fidelity-review: MODALITAETSWECHSEL, erstes Dokument-Gold. Gesamt-Fidelity 56.

Stimme 51 · Denken 57 · Haltung 62 · Beziehung 63 · Fachsignatur 45 · Arbeitsweise 59. Der Wert
ist **nicht** mit den Mail-Laeufen vergleichbar: gemessen wurde erstmals ein JANS-Eigendokument
statt einer Mail. Anlass ist die jetzt **gemessene** Erschoepfung des Mail-Golds (Sent Items rj@
beginnen am 04.07.2025, `totalResultCount 2` vor diesem Datum) — der seit 260729 dreimal
empfohlene Modalitaetswechsel. Gold: Praesentationsskript «Strategische Machbarkeit» (19.04.2024)
und Fragenkatalog «Entwerferische Fragestellungen» aus Projekt 2407 Regensdorf, beide vor der
Lektuere mit null Wiki-Belegen gegengeprueft, Echo-Pruefung negativ (dichte Tippfehler, gemischte
Anfuehrungszeichen/Apostrophformen im selben Absatz). **Kernbefund: der Zwilling ist ein
Mail-Zwilling** — ohne Mail-Rahmen schreibt er weiter Mails. Das Eigendokument hat bei Raphael
eine **eigene Notation**, die nirgends beschrieben war: kein Anrede-/Gruss-Rahmen, Stichwort-
Geruest statt Saetzen, `01 AUSGANGSLAGE` VERSALIEN + Tab + «: Kurzbeschrieb», **`>>>`** fuer die
offene Frage, **`>`** fuer Grundlage/Sitzungsdatum, benannte Szenarien («UMBAU»/«ENSEMBLE»/
«TRANSFORMATION») statt «Variante 1/2/3», Zahlenkolonne, nummerierte «1. Erkenntnis». Weitere
neue Marker: **Vier-Interessen-Raster** (Bauherrschaft · Baubehoerde · Nachbarschaft ausdruecklich
als *Advocatus diaboli* · Bewohner/Bautechnik), Praesentationsziel «Input und Fragen» als eigener
letzter Traktandenpunkt + Agenda-Zustimmung vor dem Start, Fazit gegen den erklaerten Favoriten
der Bauherrschaft, Baumassenziffer-Mechanik (W2.2 x Flaeche, +0.3 Arealueberbauung, «stille
Reserven»), Vokabular Abstandsbild/Mehrhoehenzuschlag/Spaennerzahl/subsidiaere
Tragwerksmassnahmen, jede entwerferische Frage an eine Rechts-/Schutzgroesse gekoppelt, Drittform
«Herrn Bopp» im Eigendokument trotz Du-Kontakt (Einzelbeleg, mit Vorbehalt). Geaendert: Do/Don't
aller **sechs** Facetten, Beleg-Abschnitt in `wiki/stimme.md`, QUESTIONS Runde 260801 (5 Fragen),
`raw/_INGESTED.md` (Gold-Verbrauch verbucht — Empfehlung 1 aus 260731 erstmals angewandt, plus
neuer Strang Dokument-Gold), `rules/jans-dna.md` neu kompiliert. Report:
`outputs/2026-08-01_fidelity-modalitaetswechsel.md`.

## 01.08.2026 — twin-mail-training Batch 84 (Luecken-Sweep rj@ 01.–14.02.2026)

Fenster vollstaendig gelistet (123 Sent Items im Februar, erste Haelfte bearbeitet), Vorabgleich
**pro Kalendertag** gegen den Wiki-Bestand in beiden Datumsformaten: 01./05./07./11.02. null
Belege. 4 Kandidaten-Volltexte gelesen, 9 Eigentexte destilliert, **5 neue Marker**:
`arbeitsweise` (Behoerdenanfrage vor dem Versand dem Auftraggeber zur Freigabe vorlegen; eigenes
Erzeugnis vom Fachplaner kritisch begutachten lassen), `stimme` («Hoi Zaeme» als knappste
Du-Gruppenanrede; Frist im Inline-Signoff «Bis am Freitag, Lieber Gruss, raphael»), `haltung`
(den Preis der eigenen Empfehlung benennen und den Entscheid zurueckgeben). Dazu
`beziehungsregister` (Gruppenanrede-Skala + Identifikator-Nebenbefund Saumstrasse 21 als fruehere
Bueroadresse) und 3 neue Fragen in QUESTIONS. Echo-Pruefung mit offenem Ausgang am eingebetteten
AfB-Anfrageentwurf (typografische Gaensefuesschen gegen handgetippten Rahmen) — Verdacht nicht
erhaertet, nicht als Stilquelle verbucht. Metrik: 235 W, ø 13.8 W/Satz, Du-Gross 0.857.
Registerlehre: der Vorabgleich muss pro Kalendertag zaehlen, nicht pro Thread.

- **2026-07-31 09:18 — twin-chef Gate (Hub-Chef-Tagesbriefing 31.07., Mail rj@ an rj@): Fidelity 79 → 89, Veredelung Runde 1/3.**
  Schnell-Scan: Stimme 78 · Denken 82 · Haltung 85 · Beziehung 88 · Fachsignatur 74 · Arbeitsweise 79.
  Drei Facetten unter der Schwelle 80, deshalb gezielter Fan-out an `twin-stilist`, `twin-fachsignatur`
  und `twin-arbeitsweise` im VEREDELUNG-Modus (Befund-only, Merge beim Chef). Ergebnis nach Merge:
  Stimme 89 · Denken 88 · Haltung 90 · Beziehung 90 · Fachsignatur 89 · Arbeitsweise 88.
  **Gattungs-Vermerk (Echo-Schutz):** «Hub an Raphael» hat kein authentisches Stil-Gold — fruehere
  Radar-/Hub-Briefings sind Claude-Erzeugnisse und wurden ausdruecklich NICHT als Massstab benutzt;
  gewertet wurde allein gegen die sechs Facetten-Artikel und `rules/jans-dna.md`.
  **Wirksamste Korrekturen:** (1) angekuendigte Fuenfer-Liste wurde als Fliesstext geliefert → «_ »-Bullets
  (Doppelpunkt ist bei Raphael belegt der Listen-Ausloeser); (2) Meta-Satz «sollte Dich vorher erreichen»
  gestrichen — Rueckspiegelung eines Termins, den der Empfaenger selbst gesetzt hat (vierfach belegtes
  Don't, 260730/260731), Dringlichkeit stattdessen in den Betreff; (3) Fachsignatur: Bauentscheid-Nummer
  1171/26, Amtsstellen-Zuordnung beider Kommentatoren, Grundgesamtheit 16 Annotationen, Ziff. 3.1 /
  Tabelle 1 Typ a / haustechnische Anlagen / technischer Brandschutz, Fundstellen S. 6/7 nach Rule
  `normen-referenz`, Stellungnahme-Metadaten (Fassung 23.07.2026, V 1.1, Jezi/Nema); (4) **fachliche
  Ueberbehauptung entschaerft**: die drei Pruefkriterien stehen nicht nur in Art. 12, sondern auch in
  Art. 60 als allgemeine Vollzugsformel — die Art.-12-Lesart stuetzt sich auf die Platzierung der
  Kommentare, nicht auf Gantenbeins Wortlaut. **Chef-Schlichtung, drei Agentenvorschlaege verworfen:**
  gerechnete «acht Hervorhebungen» (16−5−3, nicht am PDF ausgelesen → belegsichere Formulierung),
  Versalien-Blocktitel (Mail geht als Aptos-HTML, dort fett), Ziffer am Satzanfang («5 Stellen» →
  «Fuenf Stellen»; Ziffern nur fuer Systemwerte wie «19 Warnpositionen»). Offene Spannungen →
  [[QUESTIONS]] Runde 260731c (3 Fragen). Erzeugnis selbst liegt im Scratchpad, nicht in der KB.

- **2026-07-31 05:50 — twin-fidelity-review (Golds 01.12./14.12.2025, Rueckruf-Test): Gesamt-Fidelity 75.**
  Stimme 77 · Denken 73 · Haltung 74 · Beziehung 89 · Fachsignatur 62 · Arbeitsweise 75. Kernbefund ist
  keine Wissens-, sondern eine **Abruf-Luecke mit mechanischer Ursache**: das Wiki fuehrt Belegdaten
  gemischt (708x `TT.MM.JJJJ`, 529x ISO `JJJJ-MM-TT`), ein Datums-grep in einem Format verliert rund
  43 % der Belege. Konkret: `grep -F "14.12.2025" wiki/` = 0 Treffer, waehrend fuenf Markerzeilen zu
  genau dieser Mail als `2025-12-14` im Wiki stehen — die Blindfassung entstand deshalb ohne die
  vorhandenen Marker. Angewandt wurden nur ~42 % der dokumentierten Marker beider Golds. Zweiter
  Befund: **Dezember 2025 ist als Gold-Fenster erschoepft** (7 von 8 substanziellen Mails bereits
  durch fruehere Fidelity-Laeufe verbraucht), das Register wusste es nicht, weil es nur die Batches
  des Mail-Loops verbucht — Registerfehler zweiter Art in zwei Tagen. **Echo-Audit** der Hofer-Mail
  vom 01.12.2025 (dreimal als Gold benutzt, auffaellig strukturiert): Ergebnis **negativ**, bleibt
  Gold; entscheidendes Gegensignal sind die ueber vier Bloecke uneinheitlichen Listenformen, die ein
  Modell vereinheitlicht haette. Geaendert: `wiki/arbeitsweise.md` (Don't «Schluss nicht ueber
  Bedingung/Nutzen hinaus verlaengern» + «was das Gegenueber selbst gesetzt hat, nicht
  zurueckspiegeln», vier Belege, plus Beleg-Abschnitt), `wiki/stimme.md` (befristete Zwischenregel
  zur blockweise wechselnden Aufzaehlungsform im Sie-Register), `wiki/fachsignatur.md` (Auflage im
  materiellen Wortlaut + namentliche Amtsstellen + Plan-Metadaten bei Korrekturlieferung),
  `CLAUDE.md` (Schreibregel Belegdatum + Grep-Pflicht beide Formate), `raw/_INGESTED.md` (neuer
  Abschnitt «Gold-Verbrauch der Fidelity-Laeufe» + naechstes Fenster korrigiert),
  `wiki/QUESTIONS.md` (Runde 260731b, 4 Fragen), `rules/jans-dna.md` neu kompiliert. Report:
  `outputs/2026-07-31_fidelity.md`.
- **2026-07-31 03:49 — twin-mail-training Batch 83: Luecken-Sweep `rj@` November 2025
  (2025-11-01 bis 2025-11-30, 54 Sent Items vollstaendig gelistet).** Abgleich vor der Lektuere
  (Methodik Batch 80–82) zeigte den November als das bisher dichteste Fenster: Batch 18–21 PLUS
  zwei Fidelity-Runden (Golds 19.11./25.11.) hatten den Grossteil bereits erfasst. 7
  Kandidaten-Volltexte gelesen, **5 echte Luecken destilliert + 1 Status-Praezisierung**:
  Behoerden-Kontaktformular als Mail-Raster zurueckgeben (AfB, 06.11.) · Parallel-Streuung an zwei
  Kanaele derselben Organisation, zwei unabhaengige Belege (06.11. Behoerde, 14.11. Vendor) ·
  eigene Vorleistung ausweisen vor dem Nachhaken (18.11.) · Zusage an ihre benannte Bedingung
  koppeln + nachgestellter Telefonat-Dank (19.11.) · **Genus-Slip als registeruebergreifender
  Tippfehler geklaert** («Sehr geehrter Frau Costamagna» 18.11. gegen «Sehr geehrte Frau» 14.11.
  an dieselbe Empfaengerin) — damit ausdruecklich kein Stilmittel und nie nachzubauen.
  **Echo-Falle 11**, erstmals eine vollstaendig rahmenlose Mail (betrefflos, 25.11., reiner
  Modell-Output ohne Anrede/Gruss/Eigenwort); drei neue Detektionssignale festgehalten
  (typografische Gaensefuesschen statt Guillemets, durchgehend kleines «du/dir», rahmenloser
  Durchleitungs-Modus). Geaendert: `wiki/stimme.md` (Genus-Slip praezisiert, 3 neue Abschnitte),
  `wiki/arbeitsweise.md` (Do-Block + 3 Abschnitte), `wiki/haltung.md` (Do/Don't + 1 Abschnitt),
  `wiki/beziehungsregister.md` (Sie-Mappings Diethelm/Costamagna/Osman, «Herr + Vorname» als
  Auskunfts-Notloesung praezisiert, Identifikator-Nebenbefund Saumstrasse 21 als 2. Beleg),
  `wiki/QUESTIONS.md` (Runde 260731, 3 Fragen), `raw/_INGESTED.md` (Registerzeile Batch 83).
  Mikro-Metrik 154 W: Satzlaenge ø 10.3 W, «Freundliche Gruesse» 4x, Du-Gross-Quote 0.0 mangels
  Du-Pronomen nicht aussagekraeftig. Naechstes Fenster: `rj@` Dezember 2025.

- **2026-07-31 — Gate twin-chef (Notariatsmail Mathies, rechtsbegruendete Amtseingabe): Veredelung
  Runde 1/3, Fidelity 78 → 91.** Vier Facetten unter Schwelle gestartet (Stimme 78 / Denken 72 /
  Haltung 76 / Fachsignatur 74), Beziehung 88 und Arbeitsweise 80 durchgewunken. Zwei Agenten-
  Befunde nach Rule 260729b gegengeprueft statt uebernommen: (a) Art. 951 OR am Fedlex-Volltext
  (SR 220, Stand 20260101) verifiziert — der Einwand von `twin-fachsignatur` trifft zu, die
  Vergleichsgruppe ist enger als im Entwurf («Firmen von Handelsgesellschaften und Genossenschaften»,
  ein Satz, kein Absatz), die vom Agenten aus dem Gedaechtnis ergaenzten Vereine/Stiftungen/KmGK
  dagegen NICHT; (b) der von DREI Agenten unabhaengig gemeldete Datumsfehler «Fassung vom 27.06.26»
  ist ein **Fehlalarm** — alle drei hatten dieselbe Kausalkette geraten (Vollliberierung sei durch
  die UBS-Freigabe vom 29.07. ausgeloest), belegt ist der Gegenteil: Entscheid und Einarbeitung am
  27.06., Dateien `260627_*.docx` mtime 27.06.26 13:50. Musterfall fuer Rule 260729b.
  Zwei Facetten-Widersprueche geschlichtet und in `wiki/QUESTIONS.md` (Runde 260731) vermerkt:
  Datumsformat im Amtsregister (Chef: zweistellig, belegt schlaegt Analogie) und «ohne Service-Satz»
  vs. Schluss-Dank (Chef: Dank bleibt — Gold C traegt ihn, drei Agenten hatten die beiden Begriffe
  verwechselt). Kein Wiki-Artikel geaendert, nur QUESTIONS ergaenzt.

- **2026-07-30 23:46 — Fidelity-Selbsttest nach Kontext-Diaet (twin-chef, Auftrag Raphael): GRUEN
  mit EINER Rueckkorrektur.** Diff-Sicht Vor-Diaet (`1a8cd6f0`) gegen Nach-Diaet je Facette: fuenf
  Facetten regel-vollstaendig (nur Beleg-Parenthesen/Umbrueche entfernt); in [[stimme]] EIN belegter
  Praezisions-Verlust — die Zusammenziehung der Kurzgruss-Varianten lizenzierte «Lieber Gruss»/«Lgr.»
  als Schlusszeile vor FG+Block in der Sie-Behoerdenmail, belegt ist dort nur die kombinierte Form
  «Danke und Gruss» (Batch-60-Detailsektion, SRZ). Rueckkorrektur im Do-Block von `stimme.md` als
  Regel ohne Beleg-Parenthese, `build_dna.py` neu kompiliert (15'090 → 15'132 Zeichen), Klausel in
  der DNA verifiziert. Stichproben gegen drei Gold-Praezedenzen (Notariat-Hebung, SRZ-Schlusszeile,
  Peer-Du-Rohheit Yorck): kompakte DNA steuert alle drei Entscheidungen eindeutig; Fidelity 94.
  Lehre fuer kuenftige Diaeten: Beleg-Parenthesen koennen neben dem Beleg eine EINGRENZUNG tragen —
  Eingrenzung als Regel behalten, nur Datum/Zitat streichen.
  Report: `outputs/2026-07-30_fidelity-nach-kontext-diaet.md`.

- **2026-07-30 23:12 — Kontext-Diaet der Do/Don't-Bloecke (interaktiv, Freigabe Raphael).**
  In allen sechs Facetten-Artikeln die Do/Don't-Bloecke gestrafft: saemtliche Regel-Klauseln
  und Nuancen behalten, entfernt wurden datierte Beleg-Parenthesen und Beweis-Erzaehlungen
  (Schlichtungs-/Fidelity-/Batch-Zitate, Notariats-Beispieldaten) — die vollstaendigen
  Praezedenzen stehen weiterhin in den Detailsektionen derselben Artikel und in Git. Danach
  `build_dna.py` neu kompiliert (rules/jans-dna.md 15'720 → 15'090 Zeichen). Verifikation:
  Diff gegen den letzten Commit-Stand zeigte ausschliesslich die beabsichtigten Entfernungen.
  Hinweis an kuenftige Trainings-Laeufe: neue Praezedenzen in die Detailsektionen schreiben,
  Do/Don't nur mit der destillierten Regel ergaenzen (ohne Beleg-Parenthese).

- **2026-07-30 — `twin-fidelity-review` (Fidelity ~76; KERNBEFUND: Facetten-Widerspruch aufgeloest,
  kontaminierter Marker aus dem Gehirn entfernt).** Verfahren nach den drei Empfehlungen 260729:
  Abdeckungs-Check vor Goldwahl (aus dem KB-Wurzelverzeichnis, ohne `2>/dev/null`, mit
  Kontrollbegriff-Gegenprobe), gezielte Retrieval-Stufe vor der Blindfassung, Kontaminations-Vermerk
  fuer die Connector-Vorschau (erste ~40 Woerter nicht blind, nicht gewertet).
  **Materialstand korrigiert:** `raw/_INGESTED.md` nennt November 2025 als naechstes Sweep-Fenster
  («nur stichprobenartig») — das Fenster wurde vollstaendig gelistet (54 Sent Items) und ist bis auf
  EINEN Beleg (19.11., GFT/Diethelm) abgedeckt. Empfehlung an den Mail-Loop: November ueberspringen,
  direkt Dezember 2025 bzw. die Luecken Feb–Jun 2026.
  **Golds:** A = 19.11.2025 Lieferanten-Sie (echte Luecke; Stimme 72 / Denken 80 / Haltung 76 /
  Beziehung 88 / Arbeitsweise 80 / Fachsignatur 65), B = 25.11.2025 3D-Freelancer (kontrollierter
  Recall-Test auf belegtem Material; ~74 gegen ~66 am 29.07. — die gezielte Retrieval-Stufe wirkt).
  **Kernbefund:** [[stimme]] 1075 hatte den Block unter dem Signaturblock der 25.11.-Mail bereits als
  4. Echo-Fall (Batch 21) ausgeschlossen, waehrend [[fachsignatur]] denselben Block als Raphaels
  authentische «dritte Saeule» fuehrte — die daraus abgeleitete Lehrmittel-Form stand ueber den
  Do-Block seit 260614 im immer-aktiven Gehirn. Neuer, staerkster Beleg aus diesem Lauf: die
  **Perspektive verraet den Adressaten** (der Pfad des Freelancers heisst im Block «ein fremder Pfad»,
  «Genau das passiert bei dir» meint Raphael) plus die **Gegenprobe im selben Faden** (14:29 sagt
  Raphael dasselbe in zwei imperativen Saetzen mit Tippfehler).
  **Aktionen:** `fachsignatur.md` — Echo-Korrektur-Kasten mit Attribution an den Vorbefund, zwei
  Sub-Marker durchgestrichen und begruendet zurueckgezogen (woertliche Soll-Ordnerstruktur,
  «didaktisch ausgebreitet»), **neuer** Marker «Reibung selbst wegnehmen, bevor er bittet»
  (Ursache belegen · Zielgefaess vorher anlegen · mit dem Nutzen schliessen · Erinnerung ohne Vorwurf),
  Do-Block und Schluss-Direktive entsprechend eingegrenzt; `QUESTIONS.md` Runde 260730 mit 6 Fragen;
  `rules/jans-dna.md` neu kompiliert (Auto-Block traegt die Korrektur).
  Report: `outputs/2026-07-30_fidelity.md`.

- **2026-07-30 — `twin-mail-training` Batch 82 (Lücken-Sweep Sent Items rj@, **Oktober 2025
  vollständig gelistet**, 43 Mails, authentisch).** Methodik Batch 80/81: Abgleich gegen den
  bereits destillierten Bestand VOR der Lektüre. 9 Kandidaten-Volltexte gelesen, davon 4 bereits
  erfasst (Sämi-Einladung 06.10., Zahlungsfrage an den 3D-Freelancer 15.10., E-Bill 23.10., z.H.
  Vera Schmid 31.10.). Vier Facetten erweitert:
  · **`stimme.md`** — «Guten Abend <Vorname>,» im operativen Geschäfts-Du belegt (27.10., 17:37);
  Wärme-Rücktritt im Thread als **Anti-Drift-Marker** («Hoi lieber Sämi» Eröffnung → «Hoi Sämi»
  Reply, gleicher Tag); Zwei-Wort-Transmittal «zur Info» auch im Sie an die Bauherrschaft
  (09.10.); Nachfass im Präteritum «Konnten Sie … versenden?» (22.10.); Mikro-Metrik.
  · **`beziehungsregister.md`** — Geldkontext kühlt das Register auch in EINGEHENDER Richtung auf
  die kälteste Sie-Stufe («Sehr geehrte Frau Fala», eingehende Zahlungsmahnung, 08.10.) im
  Kontrast zu «Guten Tag Frau Gloor» (Sachkontext, 22.10.); vierte Anrede-Variante bei Christoph
  Bopp als Beleg einer von der Gewichts-Achse unabhängigen **Tageszeit-Achse**; Nullform-
  Weiterleitung an den Sozial-Peer (SIA-Einladung 20.10., ohne Eigentext) als drittes Beispiel →
  die **Weiterleitungs-Variante ist Absicht**, abgegrenzt von der weiterhin offenen «ZSC»-Variante
  mit komplett leerem Body ([[QUESTIONS]] Batch 81 #1 bleibt offen); Mappings Fala/Gloor.
  · **`arbeitsweise.md`** — Reihenfolge-Ökonomie (konzeptionelle Änderungen vor die teure
  Detail-Schlusskontrolle stellen und diese Reihenfolge dem Auftraggeber sagen); Reifegrad des
  Zwischenstands offen deklarieren (2. Beleg → zweifach belegt); Dokument-Kohärenz über
  Dokumentgrenzen aktiv einfordern (2. Beleg, auf Titel/Objektbezeichnung/Adressumfang
  konkretisiert); eingehende Mahnung erledigen + terminieren + den Kontakt im selben Zug doppelt
  nutzen; Terminvorschlag sofort als Kalendereinladung vollziehen; Altbau-Grundlagenbeschaffung
  (Archivakten selbst bestellen, 7-Tage-Link sofort sichern und durchstellen).
  · **`fachsignatur.md`** — **STWEG-Wertquoten-Faktorenkatalog offengelegt** (Wohnung EG f1.1 /
  1.OG f1.15 / 2.OG f1.2, Balkon f0.25, Keller/Garage/Estrich f0.3, Aussenparkplatz f0.2;
  projektbezogen, nicht normiert — direkt verwertbar für Skill `stockwerkeigentum` und Agent
  `wertquoten-rechner`); Archivplan-Beschaffung AfB Stadt ZH (Terminkalender «Planauflage»,
  Vollmacht + Ausweiskopie, CHF 51.00, Download-Link 7 Tage); Präzisierung des bestehenden
  Materialgespür-Markers; SIA/BSA-Honorarsystematik als fachpolitisches Interesse (Einzelbeleg).
  · **`QUESTIONS.md`** — Frage 260612 #2 («Guten Abend») **teilbeantwortet** (Existenz belegt, Ton-
  Akzent offen); drei neue Fragen: Paste-Verdacht auf die Material-Analyse vom 14.10. (Tell:
  «z.B.» und «z. B.» im selben Satz — Marker mit Vorbehalt versehen, **nicht** abgewertet, Rule
  260729b), Wertquoten-Faktoren als Standard oder projektbezogen, «zur Info» gegenüber der
  Bauherrschaft bewusst oder Eile. Quelle: `260730-mailbatch-82.md`.

- **2026-07-29 — `twin-fidelity-review` (Fidelity ~73 auf ueberlappendem Material; KEINE
  Wiki-Aenderung).** Zwei Golds gezogen (WOMA-Zahlungserinnerung 16.09.2025, Druckerkosten-
  Rechnung RE-00073 25.09.2025) — **beide bereits ausgewertet** (Rohner: 260620/260710/260727k;
  Don: 260620/260722), das Fenster war Stunden zuvor von Batch 81 abgeschlossen worden. Ursache
  der Fehlannahme: Abdeckungs-Check lief als `grep … wiki raw outputs 2>/dev/null` aus einem
  Verzeichnis ohne diese Unterordner, die Fehlermeldungen wurden unterdrueckt und die leere
  Ausgabe als «unbelegt» gelesen. **Eigentlicher Befund:** der Blindversuch verfehlte drei Marker,
  die im Wiki stehen (Anrede «Geschaetzter Herr Rohner», satzweise wir/ich-Fuehrung aus dem
  `haltung.md`-Do-Block, gesichtswahrende Mahn-Bruecke) — 260727k rekonstruierte dieselbe Mail
  mit Stimme 87 / Haltung 92, dieser Lauf mit 68 / 62. Gemessen wurde die Konsultationstiefe des
  Reviews, nicht die Treue des Zwillings; `stimme.md` ist auf 235 KB / 2'644 Zeilen gewachsen.
  **Aktionen:** vier zwischenzeitlich angelegte Facetten-Abschnitte und zwei Do-Block-Schaerfungen
  wieder **zurueckgenommen** (Duplikate bzw. Vorwegnahme der offen gehaltenen Fragen 260725b #4
  und 260727d #1); `stimme.md`/`haltung.md`/`arbeitsweise.md`/`beziehungsregister.md` gegen den
  committeten Stand **byte-identisch verifiziert**. DNA-Rekompilierung ohne Drift («Auto-Block
  bereits aktuell»). Neu: Report `outputs/2026-07-29_fidelity.md` + QUESTIONS-Runde 260729
  (3 neue Fragen: Auftrags-Dank beim Kostendurchlauf, Sie-Anrede an den Sozial-Peer bei
  Geldbelegen, Konsolidierung vs. Vollstaendigkeit der Facetten; plus je ein Datenpunkt an die
  offenen Fragen 260725b #4 und 260727d #1).
- **2026-07-29 — `twin-mail-training` Batch 81 (Luecken-Sweep `rj@` 13.–30.09.2025, schliesst
  September 2025 ab).** Fenster vollstaendig gelistet (11 Sent Items), 6 Volltexte gelesen, **vor**
  der Destillation gegen den Wiki-Bestand abgeglichen: **4 von 6 waren bereits destilliert**
  (Rohner-Zahlungserinnerung, Gabi-Demme inkl. Echo-Falle 9, Fabio-Don-Rechnung, Weisser-
  Kanalisationsplan), 1 reiner Forward ohne Eigentext. **Neu ins Wiki:** (1) `stimme.md` —
  Doppelgruss-Abschnitt um einen **2. Beleg** erweitert und von Einzelbeleg auf **zweifach belegt**
  gehoben: die Fabio-Don-Rechnung zeigt den getippten Gruss **wortgleich** zum Block-Gruss
  («Freundliche Gruesse» zweimal, kaltes Sie), was die Batch-80-Lesart «bewusste situative
  Ergaenzung» entkraeftet — es ist schlicht Raphaels Gewohnheit, den Text selbst zu schliessen,
  waehrend die Signatur-Automatik unabhaengig anhaengt; Nebenmarker: die **getippte Selbstbenennung
  folgt dem Register** («Raphael» im Du ↔ «Raphael Jans, Architekt ETH SIA» im Geld-Sie), der Block
  nie. (2) `stimme.md` — **neu** Betreff-only-Mail mit komplett leerem Body («ZSC» an Gerry
  Scherbl, 24.09.), als Nullstufe unter der bekannten Betreff-traegt-die-Aussage-Form; **bewusst
  mit Vorbehalt und NICHT im Do-Block**, weil Absicht vs. Fehlversand aus dem Korpus nicht
  entscheidbar ist. (3) `arbeitsweise.md` — **neu**: Zweifel am eigenen Adressatenstatus wird in
  **einem Satz als geschlossene Alternativfrage zurueckgespielt** statt eigenmaechtig entschieden
  (Bopp 22.09., «Ist die E-Mail fuer mich gedacht oder soll ich die loeschen? / Lgr»). (4)
  `beziehungsregister.md` — **neu** Identifikator-Praezisierung: Christoph Bopp fuehrt eine zweite
  Absender-Domaene `@novaproperty.ch` neben `@woma-maur.ch` (Register unveraendert Du; seine Rolle
  bei Nova ist unbelegt → QUESTIONS). (5) `QUESTIONS.md` — 3 neue Fragen (leere ZSC-Mail Absicht
  oder Versehen · stoert der Doppelgruss · Bopp-Rolle bei Nova). Mikro-Metrik ueber die
  4 authentischen Eigentexte (178 W): Satzlaenge ø 12.7 W (Korpusband bestaetigt); **Du-Gross-Quote
  0.0 ausdruecklich als nicht aussagekraeftig markiert** (kein einziges Du-Pronomen im Fenster,
  leerer Nenner — nicht als Stil-Abweichung lesen). **Betriebsvorfall waehrend des Laufs:** der
  SMB-Mount brach beim Schreiben des Registers weg (bekannter Idle-Stall, Memory
  `project_nas_mount_haerten`); force-unmount + `osascript`-Remount ueber den Tailscale-Hostnamen,
  danach alle Schreibvorgaenge einzeln verifiziert — die vier Wiki-Edits waren durchgekommen,
  `raw/_INGESTED.md` nicht und wurde ueber eine lokale Zwischendatei nachgezogen. Naechstes
  Fenster: `rj@` Oktober 2025 (Abgleich-vor-Lektuere erneut Pflicht).
- **2026-07-29 — Felix Stählin: Firma und Gewerk korrigiert (Antwort Raphael, schliesst die
  Run-17-Frage).** Fünf Stellen in `wiki/beziehungsregister.md` und eine in `wiki/stimme.md`
  führten ihn als **«Stählin AG Sanitär»** bzw. «Sanitär-Lieferant» / «Karl Wächter AG». Richtig
  ist **Elektro Stählin AG, Zürich** (Elektroinstallationen, BKP 230) — bestätigt durch Raphael am
  29.07.2026 und unabhängig durch drei Hub-Belege (`f.staehlin@staehlin-ag.ch`; «Stählin Elektro»
  in `raw/260714-mailbatch-48.md`; «Fall Staehlin-Elektro» im Rule-Archiv). **Karl Wächter AG ist
  ein anderer Betrieb** (Ansprechpartner Mario Di Capua) — Fehlannotation, kein Zweitmandat.
  Das Du-Register und alle Stil-Befunde (Hoi Felix / Lieber Gruss, «Du,»-Filler, «Danke und
  Gruss») bleiben unverändert gültig; falsch waren nur Firma und Gewerk.
  **Gemeldet, NICHT editiert:** `raw/260714-mailbatch-51.md:8` trägt dieselbe Fehlannotation;
  `raw/` wird nicht editiert, festgehalten in `wiki/QUESTIONS.md`. Gleiche Fehlerklasse wie
  `baurecht/raw/260717_amtlich_zh_hwschv.md` (Wissens-Chef Run 19): Autoren-Annotation in `raw/`
  wird später als Quelle behandelt.
- **2026-07-27 — Wissens-Chef Run 17 (Cross-KB): zwei Rule-Widersprueche verifiziert und an
  Raphael eskaliert.**
  **[eskaliert, NICHT geaendert] `rules/anrede-kontakte.md` widerspricht `wiki/beziehungsregister.md`.** Die Kontaktliste fuehrt **Besnik** starr als «nackter Vorname-Opener ohne Anrede-Formel», waehrend das Wiki am authentischen Beleg (21.05.2026, Betreff «Gewerke/Empfehlung») zeigt, dass Raphael bei gewichtigem Anliegen «Geschaetzter Besnik» + direkten FG-Block waehlt. Weil die Rule per @-Import immer aktiv ist und laut eigener Konvention **vor** dem Wiki konsultiert wird, wirkt der veraltete Stand. Der Loop hatte das erkannt und die Korrektur woertlich ausformuliert, sie aber korrekt nicht selbst in die Rule geschrieben (Freigabe-Bindung, CHANGELOG 2026-07-25j) — **der Wissens-Chef ebenfalls nicht.** → adversarial verifiziert und im Bericht als Entscheid vorgelegt. **Wirksamer als die Besnik-Zeile waere eine generelle Klausel im Abschnitt «Konvention»:** die Notiz-Spalte nennt den Routine-Default, die Anrede-Stufe folgt zusaetzlich dem **Gewicht des konkreten Anliegens** — dreifach unabhaengig belegt (Tschopp, Besnik, Hiltmann) und heilt alle Zeilen zugleich statt einer.
  **[eskaliert, NICHT geaendert] Felix Staehlin — welche Firma?** Die Rule fuehrt «Karl Waechter AG, Ausfuehrender» (uebernommen am 25.07. aus dem aelteren Datenpunkt Fidelity 260714j); zwei **juengere**, unabhaengige Batches (60/61, Belege 02.-13.07.2026) nennen «Staehlin AG Sanitaer», einmal mit Gewerkbezug «Waschkueche». Die Anredeform (Du) stimmt ueberein, die Firmenzuordnung nicht — das Wiki ist an dieser Stelle selbst uneinheitlich. Zwei Firmen desselben Mannes oder zwei Personen mit demselben Vornamen? Aus dem Korpus nicht entscheidbar. Nach Rule `identifikatoren-verifizieren` ist ein Firmenname ein Identifikator, der unveraendert in Anschreiben, Adressblatt, Submittentenliste und Werkvertrag wandert. → beide Punkte als Zustellvermerk in `wiki/QUESTIONS.md`.
  Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run17.md`.
- **2026-07-27 — `twin-fidelity-review` (Runde 260727l, zwoelfter Lauf des Tages, KORPUS-ABSCHLUSS
  + erste umgesetzte Arbeitsweise-Korrektur).** Kollisionsfrei (ps/PPID-Check). **Harter
  Korpus-Abschlussbeweis:** `rj@` Sent Items enthaelt keine Mail vor dem 04.07.2025 (Postfach-
  Ursprung; Abfrage Maerz/April 2025 = 0 Treffer), und Batch 01 setzt exakt dort an — die
  Batch-Kette laeuft von der allerersten Mail lueckenlos bis 2026-07, `mail@` parallel ab
  09.07.2025. Damit existiert auf beiden Geschaeftspostfaechern **kein unerschlossenes Fenster
  mehr, weder vorwaerts noch rueckwaerts** (haerter als die Tagesdiagnose 260727i; widerlegt die
  Rueckwaerts-Sweep-Empfehlung aus 260727j/k, deren Fenster Sept/Okt 2025 bereits via Batch 15/17/18
  destilliert waren). **Unbeabsichtigter Recall-Test:** die vor Lektuere fixierten Blindfassungen
  rekonstruierten die ESTV-MWST-Abmeldung (03.10.2025) nahezu woertlich (Anrede, «ersuche ich Sie»,
  Art. 10 Abs. 2 lit. a MWSTG, Subsumtionsformel, Antrag+Bestaetigung, FG+Block ohne Service-Satz);
  zwei echte Abweichungen: Norm**inhalt** ungenau (Ein- statt Zweijahresregel) und Abmeldung als
  Bitte statt als Gestaltungserklaerung. Ergebnis bewusst als **Recall-Fidelity ~88** ausgewiesen,
  NICHT als Generalisierungs-Fidelity (mangels unerschlossenem Material derzeit nicht messbar).
  **Umgesetzt (Ertrag des Laufs):** die seit 260727k offene, dort nur empfohlene Arbeitsweise-
  Korrektur — mit dem dritten unabhaengigen Beleg (Yorck-Zahlungsfrage 15.10.2025: spontane
  Doppelfrage ohne Nummerierung, «Gel»-Opener, Dank NACH dem Gruss) ist die Einzelbeleg-Schwelle
  ueberschritten. `arbeitsweise.md` Do-Block ergaenzt (im engsten Peer-Du Rohheit halten: spontane
  Reihenfolge, Fliesstext, Urgenz-Titel statt Anrede, gruss-loser/nachgeschobener Schluss sind
  KORREKT), Don't-Block ergaenzt (Formalisierungs-Reflex nicht ins engste Peer-Du tragen), neuer
  Beleg-Abschnitt «Gegenbeleg-Sammlung» mit allen drei Datenpunkten. **Gehirn neu kompiliert**
  (`build_dna.py`, Regel in `rules/jans-dna.md` Z. 175/181 verifiziert). Neue Facetten-Spannung
  vermerkt: die Gruss-Typologie in `stimme` kennt nur zwei Faelle, die belegte Nullform und der
  Nachsatz-hinter-dem-Gruss passen in keinen — nicht geglaettet, sondern vorgelegt. Vier neue
  Fragen in `QUESTIONS.md` (Runde 260727l), darunter die Kernfrage nach einer bisher unerschlossenen
  Vor-Claude-Quelle. Report: `outputs/2026-07-27l_fidelity.md`.

- **2026-07-27 — `twin-mail-training` (Batch 80, Luecken-Sweep `rj@` September 2025).**
  Fortsetzung der Empfehlung 260727j/260727k: statt eines weiteren Vorwaerts- oder blinden
  Rueckwaerts-Sweeps das Fenster 2025-09-01..12 (92 Sent Items) gezielt gegen den bereits im
  Wiki destillierten Bestand abgeglichen, um echte Luecken zu finden. 7 Kandidaten gelesen, 4
  bereits erfasst (Frick/Winterberg-Honorarofferte, Farb-/Materialkonzept Tschopp, Rauspressen-
  Yorck-Thread, duenner Sam-Chermeyeff-Fwd), 3 neue Belege destilliert: fachsignatur (Design-
  Referenz in absoluter Nullform, zwei Yorck-Mails ohne jede Rahmung: Geländer/Mensch-AG-Referenz
  + Möbel-Referenzen Prova/Sigma/Hay), stimme (doppelter Gruss „Beste Gruesse"+voller
  Signaturblock im Investor-Du an Bopp). Mikro-Metrik (63 W): Du-Gross 0.5, Satzlaenge ø 21.0 W.
  Methodischer Befund: Luecken-Abgleich vor dem Lesen spart Doppel-Destillate. `_INGESTED.md`
  fortgeschrieben, naechstes Fenster: restliches September 2025 + Q4 2025.

- **2026-07-27 — `twin-fidelity-review` (Runde 260727k, elfter Lauf des Tages, Rueckwaerts-
  Sweep rj@ September 2025 angerissen).** Kollisions-Check vor Beginn: der einzige gefundene
  `claude -p`-Prozess war die eigene Traegersession (PPID-Verifikation), kein echter Standoff.
  Vorwaerts-Sweep-Zeiger beider Konten weiterhin leer (bestaetigt gemaess Batch 78/Lauf i). Gemaess
  Empfehlung 260727j/Batch 79 gezielt `rj@` September 2025 gezogen (103 Sent Items, bisher nicht
  gesweept) — drei frische Golds ueber drei Register: Yorck-Bildregie-Korrektur mit Titel-Opener
  „Allerletzte Bitte:" statt Anrede + komplett grusslosem Schluss bei mehrpunktiger Korrektur
  (neuer Einzelbeleg, erweitert die Nullform-Familie ueber Kurz-Statusfragen hinaus), Rohner-
  Zahlungserinnerung (bestaetigt satzweise wir/ich-Regel exakt), Bopp-Nackt-Rueckfrage „Ist die
  E-Mail fuer mich gedacht…/Lgr" (bestaetigt bereits kartiertes Register). Ein neuer Marker in
  `stimme.md` ergaenzt (offen/Einzelbeleg). Vier neue Fragen in `QUESTIONS.md` Runde 260727k,
  darunter eine Querschnittsfrage zum wiederkehrenden Formalisierungs-Reflex des Zwillings im
  engsten Peer-Du. Gesamt-Fidelity ~86; Facette Arbeitsweise (78) einzige unter Gate-Schwelle 80 —
  Empfehlung an `twin-arbeitsweise`: Do-Block-Zusatz gegen reflexhaftes Nummerieren/Rahmen im
  engsten, eingespielten Peer-Du. DNA-Rekompilierung geprueft: kein Compile-Drift (`build_dna.py`
  bestaetigt „bereits aktuell"). Report: `outputs/2026-07-27k_fidelity.md`. September 2025 auf
  `rj@` ist mit 3 von 103 Sent Items erst angerissen — naechster Batch: restliche Threads
  (STWEG Schlossberg-Serie, Booklet-Aussendarstellung, Winterberg-Machbarkeit).

- **2026-07-27 — `twin-mail-training` (Batch 79, Rueckwaerts-Sweep mail@raphaeljans.ch).**
  Vorwaerts-Sweep-Zeiger auf rj@ (ab 15:10:54Z) und mail@ (ab 17.07.) erneut bestaetigt leer
  (CLI-Check aktuell 18:25 UTC). Gemaess Methodik-Empfehlung aus Fidelity-Runde 260727j stattdessen
  historisches mail@-Konto systematisch rueckwaerts gesichtet (nur 45 Sent-Items insgesamt, seit
  2025-07-09) — nahezu vollstaendig gesichtet. Zwei neue Golds destilliert: Sie-Mail an UBS-Banker
  Jeckelmann (27.06., Firmengruendung; NEUER FUND: definitiver Name **"Raphael Jans AG"** statt
  "JANS AG") und Fuenf-Mail-Englisch-Thread mit Webfreelancer Hleb (04.–09.02., Website-Neuaufbau,
  Referenz herzogdemeuron.com). **Echo-Falle, 9. Beleg** (erstmals rein inhaltlich/strukturell
  statt formatbasiert: durchkomponierter Englisch-Essay mit Frage-Antwort-Kapstonen im selben
  Thread) von Stilquelle ausgeschlossen. Vier neue Marker-Bloecke in stimme.md/beziehungsregister.md/
  fachsignatur.md/arbeitsweise.md (alle Batch 79). Zwei Trivialfunde geprueft und verworfen (reiner
  2-Wort-Reply, reiner Forward ohne Eigentext). Register: `raw/_INGESTED.md`. Memory
  `project_jans_ag_gruendung` sollte den neuen Firmennamen nachziehen (ausserhalb dieses KB-Batches).
  Naechste Rueckwaerts-Fenster gemaess Empfehlung: rj@ Luecken Sept–Dez 2025 und Feb–Jun 2026.

- **2026-07-27 — `twin-fidelity-review` (Runde 260727j, zehnter Lauf des Tages, Rueckwaerts-
  Sweep widerlegt „Material erschoepft").** Lauf i (19:35) hatte die Erschoepfung nur fuer den
  inkrementellen Vorwaerts-Sweep (neues Material seit dem letzten Sweep-Endpunkt) empirisch
  belegt. Diese Runde griff stattdessen gezielt in aeltere, bislang nicht gezogene Fenster
  (`mail@raphaeljans.ch` Dez 2025, `rj@` Aug 2025 nach dem Seed-Korpus) und fand sofort drei
  frische authentische Golds: Konsumenten-Du-Reklamation an Bio Mio/Martina (19.12.2025,
  Emoji mitten in der Beschwerde, komplett fehlendes Grusswort vor der Signatur), vertraulicher
  Unterlagenversand an Gerry (11.08.2025, reziproke Buero-Einladung „oder ich komme zu Dir"),
  Ultra-Kurz-Chat „Busy oder bok" (14.08.2025, zweiter Beleg fuer „Hey," ohne Namen als Opener,
  Gratulation als Nachsatz NACH dem Gruss). Fuenf neue Marker in `stimme.md` ergaenzt (alle als
  „offen, Einzelbeleg" markiert, nicht in den Do-Block gehoben). Fuenf neue Fragen in
  `QUESTIONS.md` Runde 260727j. Gesamt-Fidelity ~84 (Drift: Grusswort-Reflex, Emoji-
  Unterschaetzung ausserhalb warm-sozial, einseitige statt reziproke Einladung, zu „logische"
  statt spontane Reihenfolge). DNA-Rekompilierung geprueft: kein Compile-Drift (Do/Don't-
  Bloecke unveraendert). Report: `outputs/2026-07-27j_fidelity.md`. Methodische Empfehlung an
  `twin-mail-training`: zusaetzlich zum Vorwaerts-Sweep systematisch rueckwaerts in
  Monatsschritten durch den historischen Korpus gehen, bevor erneut „erschoepft" gemeldet wird.

- **2026-07-27 — `twin-mail-training` (Batch 78, Dry Run).** rj@ seit Sweep-Endpunkt
  15:10:54 Uhr weiterhin leer; mail@ seit dem vorgezogenen Endpunkt 2026-07-17T06:10:17Z
  ebenfalls leer (Tagesproben 18.–27.07. je 0 Treffer). Zusaetzlich den bisher ungenutzten
  Ordner "Archive" (rj@) geprueft: enthaelt insgesamt nur 1 Mail, inhaltlich eine externe
  Antwort (Gruner/Buechler) mit zitierter eigener Mail vom 19.03.2026, die bereits ueber Sent
  Items erfasst ist — kein neues Material, kein Duplikat angelegt. Archive (mail@) ist leer.
  Keine Wiki-Edits. Bestaetigt unabhaengig den Erschoepfungszustand aus
  `outputs/2026-07-27i_fidelity_material-erschoepft.md`.

- **2026-07-27 — `twin-fidelity-review` (Runde 260727i, neunter Lauf des Tages, Material
  erschoepft).** Vor dem Goldproben-Schritt empirisch geprueft: `rj@raphaeljans.ch` Sent Items
  seit Sweep-Endpunkt 15:10:53Z leer, `mail@raphaeljans.ch` seit 2026-07-17T06:10:17Z nur die
  bereits destillierte Kovacs-Mail. Kompiliertes `rules/jans-dna.md` per Probe-Lauf
  `build_dna.py` als bereits aktuell bestaetigt (kein Compile-Drift trotz Tages-Edits an
  `stimme.md`/`haltung.md`/`beziehungsregister.md`/`fachsignatur.md`/`arbeitsweise.md`). Kein
  Blindtest gegen wiederverwendetes Material, keine neuen QUESTIONS, keine Rekompilierung.
  Report `outputs/2026-07-27i_fidelity_material-erschoepft.md` liefert den empirischen Beleg fuer
  die bereits in 260727g/h vermutete abnehmende Grenznutzen-Beobachtung und wiederholt die
  Empfehlung, den Fidelity-Takt auf 1x/Tag zurueckzufahren (Entscheid bleibt bei Raphael).

- **2026-07-27 — `twin-mail-training` (Batch 77, Bookkeeping-Korrektur).** rj@-Strang seit
  15:10:54 Uhr leer bestaetigt. Mail@-Zweitstrang ab 2026-06-11 gepullt: 3 fachliche Treffer
  (Gruner/Duran-Statusfrage 12.06., UBS/Jeckelmann-Kapitaleinzahlung 27.06., Stadt-ZH/Kovacs-
  Adressantwort 17.07.) stellten sich bei der Belegpruefung als bereits destilliert heraus — der
  parallel gelaufene Fidelity-Review `outputs/2026-07-27g_fidelity.md` hatte dieselben drei Mails
  bereits ins Wiki eingearbeitet (stimme.md „Nackte Statusfrage…", beziehungsregister.md Mapping
  Kovacs). Kein Duplikat angelegt (Kollisionsschutz, Rule `auto-verbesserungen` 260724). Einzige
  Aktion: `raw/_INGESTED.md`-Bookkeeping korrigiert, Mail@-Sweep-Endpunkt auf 2026-07-17T06:10:17Z
  vorgezogen, damit kuenftige Laeufe das Fenster nicht nochmals als offen fuehren.

- **2026-07-27 — `twin-mail-training` (Batch 76).** rj@-Strang: 1 neuer Treffer (14:10–15:11 Uhr,
  KISPI Bauentscheid-Folgemail an Gantenbein/SRZ) — Fenster danach leer. Deshalb zusaetzlich den
  mail@-Zweitstrang (ab 2026-01-01, empfohlen seit Batch 74) sequenziell abgearbeitet: 33 Sent
  Items per Betreff-Liste gesichtet (Fenster 2026-01-02 bis 2026-06-11), 7 Volltexte repraesentativ
  gelesen, 6 destilliert (Amtsanfrage Gebaeudeschadstoffe Sie, Geschwister-Mailwechsel mit Maria
  Jans Bickel Du, Tech-Peer-Kurzfrage an Dan Krusi, Echo-Antwort an Rafael Biolley/HUB12,
  SVIT-Bestellung Sie); uebrige ueberwiegend Fwd/WG-Weiterleitungen ohne Eigentext, Newsletter/
  System-Rauschen (Website-Relaunch-Thread, TextFuse, HUB12-Einladungen, Checkliste Laternengasse
  als reine Weiterleitung ohne eigenen Text) nicht volltextgelesen.
  Mikro-Metrik ueber 225 W (stilmetrik.py): Du-Gross-Quote 1.0, Tausender-Apostroph 1, Ellipsen 0,
  Satzlaenge ø 16.1 W. Keine Echo-Falle. Neue Marker: `beziehungsregister.md` (Geschwister-Du als
  waermste bisher belegte Register-Achse, ultraterse Tech-/Peer-Du-Antworten ganz ohne Rahmen,
  Lieferanten-Sie bleibt foermlich auch bei Bagatell-Bestellung), `stimme.md` (Flexionsfehler
  „Ihm“/„lost“ als Authentizitaetssignal im Familien-Du, Antwort als woertliche Spiegelung der
  Frage als neue Ultrakurz-Stufe, Sie-Kurzfrage ohne Softener), `arbeitsweise.md`
  (Praeferenz-plus-Fallback-Formel bei einer Bestellung, redundante Lieferadresse trotz Signatur).
  `_INGESTED.md` fortgeschrieben: rj@-Sweep-Endpunkt 2026-07-27T15:10:53Z, naechster rj@-Lauf ab
  15:10:54Z; mail@-Sweep-Endpunkt 2026-06-11 (Request enable bypass permissions, technisch/Meta,
  ignoriert), naechster mail@-Lauf ab 2026-06-11 fortlaufend.

- **2026-07-27 — `twin-fidelity-review` (Runde 260727g, sechster Lauf des Tages).** Frisches
  Fenster `mail@raphaeljans.ch` Juni 2026 (via CLI for Microsoft 365, `npx --no-install m365`,
  kein MCP-Tool im Sub-Agenten verfuegbar). Drei neue Golds: HEV-Schweiz-Kaltbestellung (Sie,
  bestaetigt bestehenden Marker), nackte Statusfrage ohne jede Anrede/Gruss/Signatur an Cekdar
  Duran/Gruner (loest offene Frage zum Duran-Register aus, `stimme.md` um neuen, bewusst NICHT
  in den Do-Block gehobenen Beleg ergaenzt), UBS-Mail zur Firmengruendung (loest nebenbei
  `project_jans_ag_gruendung.md`: definitiver Name «Raphael Jans AG»; Kurzsignatur-Marker auf
  Bank-Kontakt erweitert). Report `outputs/2026-07-27g_fidelity.md`, Gesamt-Fidelity 89, alle
  sechs Facetten ueber Schwelle 80 (durchgewunken). Drei neue Fragen in `QUESTIONS.md` Runde
  260727g. Keine Rekompilierung (`build_dna.py`) noetig, da der Do-Block unveraendert blieb.

- **2026-07-27 — `twin-mail-training` (Batch 75, rj@-Sweep fortgesetzt).** M365-CLI-Fallback
  (`~/Developer/jans-ai-hub/node_modules/.bin/m365`, SSD-Klon — der MCP-Pfad
  `mcp__microsoft-365__m365_run_command` scheiterte erneut mit „outlook: command not found";
  auf dem NAS-Repo selbst existiert kein `node_modules`). Fenster 2026-07-27T12:38:15Z bis
  14:10:00Z, 1 neuer relevanter Fund: Bauentscheid-Auflagenbereinigung KISPI PPTS Lenggstrasse 30
  an Shyam Zala (Stadt ZH, Stellvertretung fuer Lars Hansen), Sie. `arbeitsweise.md` ergaenzt
  (verwaltungsinterne Zustaendigkeitswechsel-Info ins Fliesstext eingewoben statt zitiert +
  naechster Verfahrensschritt konditional vordelegiert + liegen gebliebener Dateiname als
  Kopfzeile-Authentizitaetssignal), `beziehungsregister.md` ergaenzt (Waermestufe einer
  Behoerden-Stellvertretung wird vom laufenden Fall geerbt, nicht neu erarbeitet + Mapping Zala).
  `raw/_INGESTED.md` Batch-75-Zeile + Sweep-Endpunkt (14:07:25, naechster Pull ab 14:10:01Z)
  nachgefuehrt. Kein Raw-Dumpfile angelegt (Praxis seit Batch 54: nur Marker + anonymisierte
  Schnipsel in _INGESTED, keine Volltext-Hortung).

- **2026-07-27 — `twin-fidelity-review` (Fidelity 260727f, fuenfter Lauf des Tages, Gesamt-Fidelity
  ~68).** Zwei frische authentische Golds auf `mail@raphaeljans.ch` April 2026 (bisher unerschlossenes
  Fenster) — Hub12-Event-Weiterleitung an Peter Weisser (Mundart-Du, kein Fachinhalt) + Ultrakurz-
  Chat-Faden mit Rafael Biolley (neutral trotz Mundart-Ansatz der Gegenseite). Kernbefund: die
  bestehende Mundart-Schwelle «Gegenüber spiegelt» wird im selben Tagesfaden doppelt widerlegt (Gold A
  Mundart ohne Spiegelung, Gold B keine Mundart trotz Spiegelung) — Treiber ist kontaktspezifische
  Vertrautheit, nicht ein genereller Spiegel-Mechanismus. `stimme.md` + `beziehungsregister.md`
  praezisiert, `rules/anrede-kontakte.md` Zeile Peter Weisser ergaenzt. QUESTIONS-Runde 260727f (4
  Fragen: kontaktspezifische Mundart-Liste, neuer Opener «Hey», Generalisierung rahmenlose
  Faden-Antwort, Networking-Reflex in Privatchat). Report `outputs/2026-07-27f_fidelity.md`. Gehirn
  `rules/jans-dna.md` neu kompiliert.
- **2026-07-27 — `twin-mail-training` Batch 74 (mail@raphaeljans.ch, erstmals ausgewertetes Postfach).**
  Der sequenzielle rj@-Sweep lief in diesem Fenster leer (0 Treffer nach dem Batch-73-Endpunkt
  12:38:14 Uhr, Kontrollprobe ueber den ganzen Tag bestaetigt nur die vier bereits bekannten
  Eintraege). Deshalb auf das noch unerschlossene Postfach `mail@raphaeljans.ch` ausgewichen
  (45 Sent Items, davon erst 2 via Fidelity-Review 260727e destilliert): drei authentische
  vor-Claude-Mails ausgewertet (25.09.2025 Hotelbuchung Deutschland/Sie, 13.11.2025 und
  19.12.2025 Gemuese-Abo-Dienstleisterin). Alle drei klar handgetippt (Tipp-/Kasus-Slips
  «Mecano», «das» statt «dass», «Dankbar» gross), keine Echo-Falle. Erstmals belegtes Terrain:
  der **privat-konsumentische Dienstleister-Kanal**.
  Neue Marker: [[stimme]] Signaturblock kippt mit dem Register (Geschaeftsblock bei Sie/neutral,
  Privatblock mit Wohnadresse bei warmem Du — und dort faellt das Gruss-Wort ganz weg), «50 Prozent»
  im Alltagsfliesstext ausgeschrieben statt «%» (kontextabhaengige Differenzierung zur Fachnorm),
  «Grund:» als eigenes Wort-Label, Emoji 😊 mitten in einer Reklamation, inkonsistente
  Du-Grossschreibung als Authentizitaets-/kein Echo-Signal; [[beziehungsregister]] neuer Kanal als
  eigene Register-Achse, generisches Firmenpostfach bei trivialer privater Service-Anfrage →
  namenloses «Guten Tag,» + Sie (verallgemeinert die bisher behoerdenspezifische Regel),
  Erwaermung «Guten Tag <Vorname>» → «Hoi <Vorname>» + Du innert fuenf Wochen (Du-Kippen nicht auf
  Geschaeft/Projekt beschraenkt), Person-Du + Firmen-Ihr sauber getrennt in derselben Mail, neues
  Mapping Martina/Bio Mio; [[arbeitsweise]] Kernbefund «Alltagsanliegen mit Projektmethodik»
  (Struktur skaliert nicht mit dem Anlass), Betreff-Umwidmung im gekaperten Newsletter-Thread,
  Negativ-/Abgrenzungszeile was unveraendert bleibt, zwei Bitten nach Haerte gestaffelt, datierte
  Chronologie vor der Bitte, selbst recherchieren und nur bestaetigen lassen.
  Mikro-Metrik (289 W): Du-Gross 0.75, Apostroph 0, «%» 0, Ellipsen 0, Satzlaenge ø 16.1 W.
  `sources` in allen drei Artikeln um `260727-mailbatch-74.md` ergaenzt, `_INGESTED.md`
  fortgeschrieben (rj@-Sweep-Endpunkt unveraendert 2026-07-27T12:38:14Z; mail@ neu bis 19.12.2025).

- **2026-07-27 — `twin-mail-training` Batch 73 (rj@, 11:00–12:38 Uhr).** Nach dem Sweep-Endpunkt
  von Batch 72 frisch gepullt: genau 1 neuer Treffer, eine Teams-Meeting-Einladung „Koordination
  LBW/Innerer Verglasung - Brandschutz" an Othmar Stadelmann (Estermann AG), klar handgetippt,
  keine Echo-Falle. Neue Marker: [[fachsignatur]] Bauentscheid-Auflagenziffern 17–20 verbatim als
  Koordinationsgrundlage in die Einladung kopiert (amtlicher Wortlaut bleibt zitierfaehig statt
  paraphrasiert); [[arbeitsweise]] Teams-Einladung als eigenstaendiger Sachmail-Traeger statt
  reiner Terminlogistik, inkl. Signaturphrase „Besten Dank fuer..."; [[beziehungsregister]]
  Plural-Anrede „Geschaetzte Herren" an einen einzelnen, firmenvertretenden Sie-Kontakt + neues
  Mapping Othmar Stadelmann/Estermann AG. `_INGESTED.md` fortgeschrieben, naechster Pull ab
  2026-07-27T12:38:14Z.

- **2026-07-27 — `twin-fidelity-review` (vierter Lauf des Tages, Report `outputs/2026-07-27e_fidelity.md`).**
  Sättigungs-Check zuerst: drei Kandidaten-Mails aus einem frischen rj@-Fenster (06.–13.04.2026,
  KISPI) stellten sich als bereits destilliert heraus — bestaetigt die Saettigung des KISPI-/rj@-
  Korpus aus dem Vorlauf 260727d. Umgestiegen auf `mail@raphaeljans.ch` (bisher kaum genutzt):
  zwei neue Golds (Baurekursgericht-Gesuchsruecknahme Sie 22.01.2026; Herzog-de-Meuron-Website-
  Brief an Hleb Englisch 04.02.2026). Gesamt-Fidelity ~74 (niedriger als die drei Vorlaeufe, weil
  bewusst unerschlossenes Terrain gezielt). Neue Marker: [[haltung]] aktive Gesuchsruecknahme bei
  ueberfluessig gewordener Behoerden-Anfrage + Fixpreis-Disziplin/Scope-Grenze bei Beauftragung
  Dritter in eigener Sache; [[fachsignatur]] Design-Referenz-Reflex (zweite Saeule) reicht bis in
  ein fachfremdes Digitalprojekt (eigene Website, Referenz Herzog & de Meuron). QUESTIONS-Runde
  260727e angehaengt (3 Fragen). DNA neu kompiliert.
- **2026-07-27e — `twin-mail-training` (Batch 72, 27.07. 09:14–11:00 Uhr).** Frischer M365-Pull
  ab dem Batch-71-Endpunkt, Fenster luecklos bis 11:00 Uhr abgedeckt (Gegenprobe 0 Treffer). Ein
  relevanter Treffer: Preisrüge Küchenbau LOS_273.35 (KISPI PPTS) an Schreiner/Unternehmer Stephan
  Lanz (Sie), cc Betreiber-Team Spahic/Spörri/Würsch — vollstaendig durchgerechnete Positions-
  Preisrüge (Positionswechsel→Differenz→Fehlbetrag-Abzug→Netto-Differenz→eigene Gegenrechnung mit
  3 Geraetepreisen→Budgetgrenze an "Ruecksprache mit der Bauherrschaft" delegiert→Streichungsbitte
  "Schweren Herzens"), klar handgetippt, keine Echo-Falle. Neue Marker in [[fachsignatur]]
  (Positions-Preisrüge vollstaendig durchgerechnet statt behauptet + delegierte Budgetgrenze),
  [[stimme]] ("Schweren Herzens"-Softener + inkonsistente Tausender-Apostroph-Notation als
  Tipp-Tell), [[haltung]] (harte Streichungsbitte emotional gerahmt aber ungeschwaecht, Sie-
  Pendant zu Batch 64). `raw/_INGESTED.md` Batch-72-Zeile + Sweep-Endpunkt 2026-07-27T11:00:00Z
  nachgefuehrt.
- **2026-07-27d — `twin-fidelity-review` dritter Lauf (Gesamt-Fidelity ~78).** Frische Session
  ohne Vorwissen. Bewusst neue, bislang ungenutzte Goldquellen: `mail@raphaeljans.ch` (erstmals
  als Fidelity-Testgold gezogen) + ein frisches rj@-Fenster Januar 2026. Drei Golds: CNCEST-
  Konsumentenreklamation (Sie, Vertragsverletzung/Rückabwicklung), Peter-Weisser-Neujahrs-
  Mehrprojekt-Update (Du, drei parallele Projekte), nackter Sie-Gruss im Transaktions-Nachfass
  desselben CNCEST-Fadens. Drei Funde: (1) [[fachsignatur]] fünfte rechtliche Einwebung —
  allgemeines Vertragsrecht/Konsumentenschutz in eigener Sache, plus Spannung zur Service-Satz-
  Regel (Service-Satz bleibt hier trotz hartem Rechtsbegehren, widerspricht 260719 für Amt/B2B);
  (2) [[arbeitsweise]] neuer Dekompositions-Fall — Ortsnamen statt Amt/Gegenstand als Block-
  Header bei einem Mehrprojekt-Update an denselben Kontakt, plus Default-Pfad ohne Rückmeldung
  auf Projektebene; (3) [[stimme]] zweiter, registerübergreifender Beleg zum nackten Gruss
  (bisher nur Du bekannt, jetzt auch Sie im ultrakurzen Transaktions-Nachfass) — schärft die
  offene Frage 260727b #3. Keine Facetten-Widersprüche (nur die bereits bekannte Service-Satz-
  Spannung erneut angestossen). Keine Do/Don't-Blöcke verändert (alle drei Funde Einzelbelege,
  Echo-/Overfitting-Schutz). QUESTIONS-Runde 260727d (4 Fragen). `build_dna.py` gelaufen
  (Auto-Block bereits aktuell, keine Änderung). Report `outputs/2026-07-27d_fidelity.md`.
  Empfehlung im Report: künftige Reviews sollen weiter unerprobtes Terrain suchen (z.B.
  `mail@raphaeljans.ch` weiter ausschöpfen) statt die bereits stark gesättigten KISPI-/
  Baurechts-Fäden zu wiederholen.

- **2026-07-27c — `twin-mail-training` Batch 71 (nach vier Leerläufen erster neuer Korpus).** Fenster
  ab 2026-07-25T18:11:00Z bis 2026-07-27T09:14:12Z (Sent Items rj@): 2 Treffer, davon 1 relevant (KISPI-PPTS
  Türkonzeptplan/Türbuch-Liefermail an Betreiber Albin/Du + Fachplaner Kübler/Sie, 27.07. 08:51), 1 reines
  Teams-System-Rauschen ignoriert. Vier Funde: (1) [[beziehungsregister]] Position in der gestapelten
  Anrede senkt die Formalitätsstufe desselben Sie-Kontakts («werter Herr Kübler» statt «Geschätzter Herr
  Kübler» als Zweitadressat) + Plural-Service-Satz «Euch» für gemischte Du/Sie-Gruppe; (2) [[stimme]]
  «werter Herr» als Anrede-Zwischenstufe + drei weitere Flexionsfehler-Belege («abzugklären», «weiter
  Planung», «von Herr») + elliptischer Absatz-Opener; (3) [[arbeitsweise]] Rollen-Bullet-Liste für
  interne Fachstellen-Verteilung + Frist mit Datum/Uhrzeit + konditionale Eskalationsstufe als Angebot;
  (4) [[fachsignatur]] Türfachplanung explizit als Zwischenstufe vor der Ausführungsplanung + dreistufige
  Freigabe-Formel Kontrolle/Freigabe/Einarbeitung. `raw/_INGESTED.md` fortgeführt (kein separates raw/-File,
  gemäss Praxis der Batches 54–70).

- **2026-07-27b — `twin-fidelity-review` zweiter Lauf (Gesamt-Fidelity ~87).** Frische Session ohne
  Vorwissen, M365-MCP-Tool direkt verfügbar. Drei frische, unmittelbar aufeinanderfolgende Golds
  desselben Fadens 23.–24.10.2025 (Christoph Bopp/WOMA, STWEG Ebmatingen) — Auftragsbestätigung
  («Geschätzter»), Vorabskizze-Lieferung («Lieber»), Referenzplan-Feedback+Telefonat-Vorschlag
  («Hallo») — dichtester bisheriger Beleg für drei Register an denselben Kontakt am selben Tag. Fünf
  Funde: (1) [[beziehungsregister]] «Hallo» auch bei einem eingespielten warmen Geschäftspartner,
  nicht nur bei Freelancern; (2) [[stimme]] YYMMDD-Termine im Fliesstext + `- - - -`-Platzhalter für
  offene Zeit; (3) [[stimme]] nackter Gruss «Gruss Raphael» ohne Adjektiv als Minimalstufe; (4)
  [[arbeitsweise]] thematische Leerzeilen-Clusterung innerhalb einer «_ »-Liste; (5) [[arbeitsweise]]
  vorgezogene eigene Unerreichbarkeit als Zeitpunkt-Begründung. Methodische Bestätigung: ein Fall ganz
  ohne handgetippten Gruss bleibt gemäss Automatik-Vorsicht kein FG-Signal. Keine Facetten-
  Widersprüche, keine Do/Don't-Blöcke verändert (alle Funde Einzelbelege). QUESTIONS-Runde 260727b
  (5 Fragen). `build_dna.py` gelaufen. Report `outputs/2026-07-27b_fidelity.md`.
- **2026-07-27 — `twin-fidelity-review` (Gesamt-Fidelity ~86).** Frische Session ohne Vorwissen.
  M365-MCP-Tool in dieser Session nicht verfügbar, direkter Zugriff über die **M365-CLI via Bash**
  (`m365 request` gegen Microsoft Graph, Certificate-Auth war bereits aktiv) statt des sonst genutzten
  MCP-Aufrufs — funktionierte reibungslos, kein Apple-Mail-Fallback nötig. Drei frische Sent-Items-
  Golds 17.–24.07.2026: Levi Hiltmann/TeKoSi (Du, ultrakurze Terminbestätigung), Thomas Wiedmer/SBB
  (Sie, administrative Vollzugszusage), Roman Steinmann/Nova (Du-Investor, Rechnungsübergabe). Drei
  Funde: (1) [[stimme]] neuer Marker «Ferien-/Abwesenheitsbezug als warme Schluss-Brücke statt
  Verifikationsfrage» — stärkste Drift des Laufs, Einzelbeleg, zeigt eine strukturelle Grenze
  (Zwilling kennt kein situatives Empfänger-Kontextwissen); (2) [[stimme]] reflexives «veranlassen»
  für die eigene Vollzugszusage (bisher nur als Bitte an Behörden belegt); (3) [[beziehungsregister]]
  dritter Beleg «Geschätzter als Inhalts-Spike» jetzt an einem taufrischen, erst wenige Tage alten
  Kontakt (bisher nur an eingespielten Kontakten gezeigt). Keine Facetten-Widersprüche, keine
  Do/Don't-Blöcke verändert (alle drei Funde Einzelbelege, Echo-/Overfitting-Schutz). QUESTIONS-Runde
  260727 (4 Fragen). `build_dna.py` gelaufen (Auto-Block bereits aktuell, keine Änderung). Report
  `outputs/2026-07-27_fidelity.md`.
- **2026-07-26 — `twin-mail-training` Batch 70: vierter Leerlauf in Folge.** Frischer Pull ab
  dem Batch-67-Endpunkt 2026-07-25T18:11:00Z liefert erneut 0 Treffer; breite Gegenprobe ab
  2026-07-20T00:00:00Z (37 Treffer) bestaetigt, dass der juengste rj@-Sent-Eintrag weiterhin die
  Logbuch-Radar-Selbstmail vom 25.07. 05:16:25 ist — kein neuer authentischer Ausgang seit dem
  Batch-66-Endpunkt (24.07. 15:30:13). Connector arbeitet nachweislich korrekt, die Mailstille ist
  real (kein Wochenende mehr, Samstag/Sonntag durch). Keine Wiki-Aenderung. Beobachtung ohne
  Aktion: bei einem fuenften Leerlauf waere die 2x-taegliche Kadenz dieses Loops analog zur
  Stilllegung von `synobsis-batch` (Rule-Eintrag 25.07.2026) ein Kandidat fuer eine Drosselung —
  Entscheid bleibt bei Raphael.
- **2026-07-26 — `twin-fidelity-review` (Gesamt-Fidelity ~88).** Drei frische Sent-Items-Golds
  22.–24.07.2026 via M365-CLI (direkter Tool-Aufruf, kein Bash-Fallback nötig): Benjamin Kübler/
  Gruner (Sie-Fachfrage Bodenheizung/Bodenablauf), Furrer/Gantenbein (gestapelte Behörden-Sie-
  Abänderungsplan-Eingabe KISPI), Albin Spahic (Du-Kurzfrage Fachplanersitzung). Zwei Funde:
  (1) [[beziehungsregister]] neuer Marker «gemischtes Sie-Register nach Beziehungs-Rezenz statt
  Formalität + Rollen-Tag in Klammer in der Anredezeile» («Guten Tag Herr Furrer (AfB), sehr
  geehrter Herr Gantenbein (SRZ)») — gegenläufig zur bisherigen Vertrautheits-Logik, Einzelbeleg,
  nicht in Do-Block gehoben; (2) [[arbeitsweise]] Bestätigung + Schärfung von 260725h: mehrere
  Fachfragen an einen engagierten Sie-Fachplaner bleiben unnummerierter Fliesstext auch über
  mehrere Absätze — Nummerierungsregel jetzt im Do-Block auf «bewusst komponierte Liste an
  unbekannten/fernen Kontakt» präzisiert. Keine Facetten-Widersprüche. QUESTIONS-Runde 260726 (2
  Fragen). `build_dna.py` gelaufen (arbeitsweise-Do-Block aktualisiert). Report
  `outputs/2026-07-26_fidelity.md`.
- **2026-07-25i — `twin-mail-training` Batch 69: dritter Leerlauf in Folge.** Frischer Pull ab
  dem Batch-67-Endpunkt 2026-07-25T18:11:00Z liefert erneut 0 Treffer; Gegenprobe gegen den
  bekannten Zeitpunkt 2026-07-24T15:30:13Z bestaetigt, dass der M365-Connector korrekt arbeitet
  (dieselben 2 bekannten Treffer). Reine Wochenend-Mailstille, keine Wiki-Aenderung. Naechster
  Lauf pullt weiterhin ab demselben Startzeitpunkt.

- **2026-07-25h — `twin-fidelity-review` (achter Lauf des Tages, Gesamt-Fidelity ~84).** M365-CLI
  direkt via Bash aufgerufen (Zertifikat-Login, `~/Developer/jans-ai-hub` SSD-Klon; MCP-Tool dem
  Agenten-Contract nicht verfügbar), drei frische Sent-Items-Golds 05.–11.06.2026 gezogen (bisher
  nirgends als Fidelity-Testgold verwendet): Carlo La Mendola (Sanitär-Unternehmer-Sie,
  Terminbestätigung), Stefan Tschopp (Bauherr-Partner-Du, finale Plan-Freigabe), Capkin/Heinrich/
  Hottinger (Stadt-ZH-Behörde-Sie gestapelt, Bauentscheid-Nachfass). Drei Grenzlinien-Funde:
  (1) [[stimme]] neuer Marker «Finale Freigabe-Antrag (Meilenstein-Gate) im Du → Freundliche Grüsse
  + voller Block», präzisiert die Grenze zur bestehenden «Plan-/Feedback-Korrektur ohne Geld →
  Kurzgruss»-Regel; (2) [[stimme]] neuer Grenzfall-Marker «wir sind Ihnen dankbar» — auch der
  persönliche Dank kann im Terminbestätigungs-Kontext «wir» statt «ich» tragen (Einzelbeleg, nicht
  in Do-Block gehoben); (3) [[arbeitsweise]] Gegenbeleg zur Nummerierungsregel: drei Sequenzfragen
  an eine Behörde in einem Fliesstext-Satz statt nummeriert, wenn es ein spontaner Ein-Satz-
  Nachfass statt einer bewusst komponierten Liste ist. Keine Facetten-Widersprüche. QUESTIONS-Runde
  260725h (4 Fragen). `build_dna.py` lief, Auto-Block unverändert (keine Do-Block-Änderung, da alle
  drei Funde vorerst Einzelbelege bleiben). Report `outputs/2026-07-25h_fidelity.md`.
- **2026-07-25n — Wissens-Health-Check (Phase 1, Skill `wissenscheck`, Mac Mini Nachtschicht).**
  Zweiter Check nach 260722. A1 (Gate-260724-Spannung weiterhin offen, kein neuer Widerspruch) ·
  B3 (Selbstlink `arbeitsweise.md`, raw-Backlink `[[260607-kispi-korpus]]` in QUESTIONS.md, beide
  unveraendert seit 260722; INDEX.md zeigt weiterhin `emerging` statt `established`) · C0 · D1
  schwerwiegend (RAW-Coverage von 43 % auf 37 % verschlechtert: nur noch 26 von 71 registrierten
  Quelldateien physisch in `raw/`, Root Cause seit 260722 nicht angegangen) · E0 · F2 (ae/oe/ue-
  Substitution statt Umlaute in Claudes Eigenprosa ueber alle sechs Artikel, weiterhin unbehoben;
  1 neuer ß-Verstoss in beziehungsregister.md Zeile 1314) · G2 (INDEX-Status-Hebung faellig;
  QUESTIONS Runde 260610 #4/#5 laut CHANGELOG 260719 beantwortet, im Dokument aber nicht markiert).
  Alle vier materiellen 260722-Funde bestehen unveraendert fort. Nur Audit, keine Aktionen
  (Phase 2 nicht ausgefuehrt, unbeaufsichtigter Lauf). Report: `outputs/2026-07-25_health-check.md`.
- **2026-07-25l — twin-fidelity-review (Selbsttest 2026-07-25g, M365-MCP-Tool direkt).** Drei
  Sent-Items-Golds April 2026 gezogen (Schoch/Fachstelle Lärmschutz Sie-Erstkontakt, Firma Jegen
  Telefonat-Nachgang, Kübler/Albin gestapelte Sie/Du-Anrede) — alle drei bereits verbatim im
  Wiki dokumentiert (Mailbatch 40/41/63); Lauf testete daher Retrieval-Fidelity statt
  Novitäts-Suche (Betriebsart bereits in Fidelity 260722 etabliert). Gesamt-Fidelity 86
  (Beziehungsregister 83 schwächste Facette: der belegte «Firma <Name> statt Person»-Anredemarker
  zu Jegen ist nur einfach beweisbar und damit ein Retrieval-Risiko bei blinder Generierung).
  Keine Facetten-Widersprüche, keine Wiki-Edits nötig (`build_dna.py` bestätigt Auto-Block
  bereits aktuell). 2 neue Fragen QUESTIONS Runde 260725g (Firma-Anrede-Bestätigung,
  Mobile-Kurzsignatur bei dokumentierendem Inhalt). Report: `outputs/2026-07-25g_fidelity.md`.

Fidelity-Reports unter `outputs/`.

- **2026-07-25m — twin-mail-training Batch 68 (frischer M365-Pull ab 2026-07-25T18:11:00Z).**
  Erneut 0 Treffer im Zielfenster (Fortsetzung des ruhigen Wochenendes aus Batch 67). Zwei
  Gegenproben bestaetigen, dass das MCP-Tool `mcp__microsoft-365__m365_run_command` korrekt
  arbeitet [0 Treffer ab 15:00 Uhr, 2 bekannte Treffer ab dem Batch-66-Endpunkt] — echte
  Mailstille, kein Tool-Fehler. 0 Volltexte, keine Marker, keine Wiki-Aenderung, keine
  Echo-Falle. `raw/_INGESTED.md` Sweep-Endpunkt-Hinweis aktualisiert: naechster Lauf pullt
  wieder ab 2026-07-25T18:11:00Z.

- **2026-07-25k — twin-mail-training Batch 67 (2026-07-25 05:16 bis 2026-07-25 18:11, frischer M365-Pull
  via MCP-Tool `mcp__microsoft-365__m365_run_command` direkt, kein CLI-Fallback noetig).** Leeres
  Fenster: exakt EIN Treffer im Zielraum, die eigene Logbuch-Radar-Selbstmail vom Morgen (Claude-Rauschen,
  ausgeschlossen) — kein einziger authentischer rj@-Ausgang an diesem ruhigen Samstag. Gegenprobe mit
  frueherem Startzeitpunkt bestaetigte, dass das Tool korrekt mehrfache Treffer liefert (kein
  Tool-Fehler, echte Mailstille). 0 Volltexte gelesen, keine Marker, keine Wiki-Aenderung, keine
  Echo-Falle. `raw/_INGESTED.md` Sweep-Endpunkt-Hinweis aktualisiert: naechster Lauf startet ab
  2026-07-25T18:11:00Z mit frischem Pull.

- **2026-07-25j — twin-fidelity-review (Selbsttest, M365-CLI `outlook message list`/`message get`
  funktionierten direkt).** Drei Sent-Items-Golds 18.–21.05.2026 gezogen (Stadelmann/Estermann Sie-
  Brandschutz-Fachmail, Schwarzwaldelemente Sie-Submission, Besnik Du-Gewerke-Anfrage); zwei davon waren
  bereits im Wiki dokumentiert (Stadelmann-Mapping, Echo-Falle 16 Schwarzwaldelemente — unabhaengig
  bestaetigt). Twin-Fassungen blind via separatem Agent-Lauf erzeugt (kein Zugriff auf Gold-Wortlaut).
  Gesamt-Fidelity 81 (Beziehung 70 schwaechste Facette: bekannte Stadelmann-Anrede «Geschätzter» nicht
  abgerufen, Twin defaultete auf «Sehr geehrter» — Retrieval-Fehler, keine Wissenslücke). Neuer,
  unbekannter Datenpunkt: Besnik-Mail zeigt «Geschätzter Besnik» + FG-Block bei einer Gewerke-/
  Unternehmer-Empfehlungsbitte, obwohl Besnik bisher nur als nackter-Vorname-Kontakt belegt war —
  generalisiert den Marker «Geschätzter als Inhalts-Spike» auf einen weiteren Kontakttyp, in
  `beziehungsregister.md` nachgetragen; `rules/anrede-kontakte.md` NICHT selbst editiert (Bearbeitung an
  Raphaels Bestätigung gebunden), im Report geflaggt. 3 neue Fragen QUESTIONS Runde 260725f. DNA neu
  kompiliert (`skills/twin/tools/build_dna.py`). Report: `outputs/2026-07-25f_fidelity.md`.

- **2026-07-25i — twin-mail-training Batch 66 (2026-07-23 21:42 bis 2026-07-24 15:30, M365-CLI-Fallback
  `node_modules/.bin/m365` mit Zertifikat-Auth, da der MCP-Tool-Pfad nicht aufrufbar war).** Kleines,
  luecklos gesichtetes Fenster (13 Treffer, 7 relevante Volltexte, kein Echo-Fall). Neue Marker:
  `stimme.md` (kleingeschriebener Vorname erstmals in der Anrede-Zeile selbst «Guten Morgen levi»,
  zweiter Gegenbeleg «%» ohne Leerschlag bei technischen Inline-Massangaben, Satzebene-Slip-Familie,
  Metrik Batch 66), `beziehungsregister.md` (Mehrfachversand derselben Frage an unterschiedliche
  Amtskontakte bei Zustaendigkeits-Unsicherheit statt gestapelter Anrede, Formalitaetsgefaelle
  «Guten Tag»↔«sehr geehrter» nach Amt/Rolle in einer Anredezeile, neue Mappings Kuebler/Stubbe/
  Zuercher/Stegmann/Becker/Furrer), `arbeitsweise.md` (Baustein-Wiederverwendung mit angepasster
  Anrede bei unklarer Zustaendigkeit, native Outlook-Buchstabenliste A-E technisch bestaetigt),
  `fachsignatur.md` (Sanitaer/Bodenheizung-Kollisionsfrage inline mit Masskette + eigenem
  Loesungsvorschlag, Planaenderung mit Feuerpolizei-Ein-Wort-Begruendung pro Punkt). Zwei neue
  Fragen in `QUESTIONS.md` (Mehrfachversand-Strategie, «%»-Leerschlag-Ausnahme). Ingest-Register
  `raw/_INGESTED.md` fortgeschrieben, Sweep-Endpunkt neu 2026-07-24 15:30:13 (Restfenster bis
  2026-07-25 05:16 bereits leer gesichtet, naechster Lauf braucht frischen M365-Pull).

- **2026-07-25h — twin-fidelity-review (Selbsttest 2026-07-25e, Apple-Mail-Fallback, M365-Connector
  weiterhin ohne Mail-Tool in dieser Session).** Drei frische authentische Goldproben bewusst
  ausserhalb der KISPI-/Baurechts-Achse gezogen (Costamagna/3D-Software.ch Sie-Vendor 14.11.2025,
  Hleb/Website Englisch-Du 10.02.2026, Nesa/khgp Du-Status-Forward 02.02.2026). Gesamt-Fidelity 84
  (Beziehung 76 schwaechste Facette). Neue Marker: `fachsignatur.md` (Vendor-Sie «Frage vor Dank» +
  persoenliche Meinungsfrage), `beziehungsregister.md` (zweiter, unabhaengiger Beleg fuer nackten
  Vorname-Opener ohne Anrede-Formel, generalisiert vom Einzelfall Besnik). Widerspruch geschlichtet:
  «Danke und Gruss» Sub-Du-Einschraenkung faellt (drei Belege Batch 60/62), `stimme.md` Do-Block +
  `QUESTIONS.md` aktualisiert. Zusatzmassnahme: `rules/anrede-kontakte.md` (bisher nur 1 Eintrag) um
  13 im Wiki mehrfach belegte Kontakte ergaenzt (hoechste Hebelwirkung aus Review 2026-07-25d).
  4 neue Fragen QUESTIONS Runde 260725e. DNA neu kompiliert (`skills/twin/tools/build_dna.py`).
  Report: `outputs/2026-07-25e_fidelity.md`.

- **2026-07-25g — twin-mail-training Batch 65 (2026-07-17 12:47 bis 2026-07-23 17:17, MCP-Tool
  `outlook message list` funktionierte direkt).** 8 Volltexte aus 34 relevanten Mails destilliert
  (26 weitere identifiziert, sofort im Folgelauf verfuegbar). Neue Marker in allen fuenf
  betroffenen Facetten: `stimme.md` (5 neue Genus-/Flexionsfehler-Belege, Zahlendreher
  Betreff↔Fliesstext, Metrik Batch 65, neuer Echo-Grenzfall private MacBook-Finanzierungsanfrage),
  `beziehungsregister.md` (Register-Temperatur schwankt je Anlassgewicht INNERHALB desselben
  Sie-Kontakts [Wiedmer], gestapelte Mahn-Anrede bestaetigt, Mappings Kovacs/Tobler/Hiltmann/
  SRZ-Sammelverteiler), `arbeitsweise.md` (fehlende Auftragsgrundlage selbst benennen und zur
  Bedingung machen, Einzeiler-Auftragserteilung, Behoerden-Doppelkanal eBaugesuche+SharePoint),
  `fachsignatur.md` (Naeherbaurecht-Auflagebereinigungs-Kopplung ueber vierte Threadrunde
  bestaetigt), `haltung.md` (fehlende Ordnung auch beim wichtigsten Auftraggeber KISPI
  einfordern). `QUESTIONS.md`: neue offene Frage zum MacBook-Echo-Grenzfall (Register-Ernsthaftigkeit
  vs. KI-Assistenz bei privater Beschaffungsmail). `raw/_INGESTED.md` Batch-65-Zeile + Sweep-Endpunkt
  auf 2026-07-23 17:17:18 nachgefuehrt.

- **2026-07-25f — twin-fidelity-review (Selbsttest, Gesamt-Fidelity 85, Report `outputs/2026-07-25d_fidelity.md`).**
  M365-Connector weiterhin nicht funktionsfähig (wie 260725c-abgebrochen); diesmal erfolgreich über
  Apple-Mail/osascript umgangen (Account Exchange, Mailbox «Gesendete Elemente»). Drei authentische
  Golds Feb/März 2026 (Hottinger-Vorabklärung, Lämmler-Konzeptbooklet, Albin-Koordination Phase 32) —
  alle drei bereits im Wiki destilliert (Mailbatch 32/33/35/36), Lauf daher primär Retrieval-Test.
  Twin-Fassungen bewusst nur aus dem kompilierten `rules/jans-dna.md` erzeugt (realistische Session-
  Situation). Hauptbefund: Beziehungsregister-Drift (72) ist strukturell, nicht markerseitig — die
  Wärmestufen-Feindetails leben nur im 1'565-Zeilen-Wiki, nicht im schlanken DNA-Auto-Block und auch
  nicht in der dafür vorgesehenen, aber fast leeren `rules/anrede-kontakte.md` (1 Eintrag). Empfehlung
  für einen künftigen dedizierten Lauf: diese Datei mit den im Wiki bereits belegten Top-Kontakten
  befüllen (heute bewusst nicht umgesetzt, Fokus lag auf Review/Selbsttest, kein Inventaraufbau).
  Facetten-Schärfung: `beziehungsregister.md` — Schwelle «Behörde bleibt kalt-formell, Team-/
  Kontrollpartner wärmt sofort» ergänzt (löst QUESTIONS 260714j #2, Kontrastpaar Lämmler↔Vanvelten/
  Mans). `stimme.md` — Tausender-Apostroph-vs-Kilo-Kurzform-Widerspruch (Batch 64) registerabhängig
  aufgelöst (Dokumente/dokumentierend → Apostroph, operativer Blitz-Reply → «40K» erlaubt). DNA-
  Neukompilierung ohne Aenderung (Do-Block bereits ausreichend allgemein, bewusst nicht aufgeblaeht).
  QUESTIONS Runde 260725d: 4 neue Fragen (Einzelfrage vs. «_ »-Bullet; Telefon-Angebot als Du-Pendant
  zum Service-Satz; «Salut» als Eskalationsstufe; nummerierte Koordinationsblöcke vs. fette Amt-Blöcke).
- **2026-07-25e — twin-mail-training Batch 64 (Sent Items rj@ 2026-07-14 15:16 → 2026-07-17 10:18).**
  Sequentieller Mail-Sweep fortgesetzt: 25 Mails gesichtet [Index 0 als Batch-63-Duplikat
  uebersprungen], 8 Volltexte gelesen; der MCP-Tool-Pfad `outlook_email_search` war diesmal
  wieder verfuegbar, der m365-CLI-Fallback aus Batch 61-63 nicht noetig. Mechanische
  Volltext-Extraktion an einen Sonnet-Subagenten delegiert (Modell-Politik MVM), Urteil/
  Echo-Pruefung im Hauptmodell. 7 der 8 Volltexte klar handgetippt (Slips «Subkapitell»,
  «las es mich wissen», «folgen Plandokumeten», «Vergalsung», «Desingtyp», «vertausch»,
  «Darf ich Dich Bitten» Cap-Slip 4. Beleg); die lange baurechtliche Beratungsmail Thalwil
  Bohlweg 3 (16.07.) hat authentische Slips im Rahmen, aber moeglicherweise assistierten
  Mittelteil → nur der Rahmen als Stilquelle (Echo-Schutz), Herkunftsfrage in [[QUESTIONS]]
  gestellt (falls Claude-Entwurf zugrunde liegt, waere die Mail ein korrektur-delta).
  Neue belegte Marker in allen sechs Facetten: [[stimme]] (Verstaerker-Triplett «sehr sehr
  sehr» als Preisruege, Kurz-Notation «CHF 40K» im operativen Du im Widerspruch zum
  Apostroph-Marker, «lgr» ganz klein als 3. Schreibvariante, anredeloser/gruss-loser
  Ein-Satz bei einem Fehler des Gegenuebers, Binnen-Gross bei Anweisungs-Fachbegriff
  «Optional», Du-Gross inkonsistent innerhalb derselben Mail), [[beziehungsregister]]
  (Sie-Person im Fliesstext namentlich adressieren bei gestapelter Du/Sie-Anrede,
  «werter <Nachname>» ohne «Herr» als Mittelstufe, Behoerden-Register KUEHLT bei der
  Eskalation auf «Sehr geehrter», Kollektiv-Zweitzeile benennt die Organisationseinheit),
  [[fachsignatur]] (Planaenderung = Plannummer + Klasse + Ein-Wort-Begruendung «ist
  Brandschutzrelevant», gebautes Referenzelement als verbindliche Spezifikation,
  Verfahrensfrist-Eskalation dritte Stufe macht die Amtsorganisation zum Gegenstand),
  [[arbeitsweise]] («Grundsaetzliche Stellungnahme Architekt:» als gelabelter A-E-Block mit
  Zusage/@-Delegation/terminierter Frage je Punkt, Ferienvertretung als eigener
  Koordinationsschritt, strittige Offert-Posten «Optional setzen, nicht im Total verrechnen»),
  [[haltung]] (Preisruege direkt im Dank-Rahmen, Verdacht in Klammern statt Vorwurf,
  Verfahrensrechte durchsetzen ohne Tonhebung), [[denken]] (Entscheid zurueckgeben MIT
  vorgezeichnetem Default-Pfad, Stillstand ausgeschlossen).
  Identifikator-Korrektur: Batch-63-Mapping «Vanvelten/Mans» → richtig Stefan Vanvelsen /
  Kevin Manz, Firma 3-plan AG (EVEN ist die Plattform, nicht die Firma).
  Mikro-Metrik 736 W (nur eigener Fliesstext): Du-Gross-Quote 0.923 (erstmals unter 1.0,
  Slip innerhalb derselben Mail), Satzlaenge ø 15.7 W, Apostroph 0, «%» mit Leerschlag 1.0,
  Ellipsen 0, Gruesse FG 3x/Lieber Gruss 1x/Danke und Gruss 1x/«lgr» 1x.
- Frontmatter: `260725-mailbatch-64.md` in sources aller sechs Artikel eingefuegt, `last_updated` 2026-07-25.
- Register `raw/_INGESTED.md`: Batch-64-Zeile + Sweep-Footer auf 2026-07-17 10:18:21 nachgefuehrt.
- Zwei neue offene Fragen in [[QUESTIONS]] (Zahl-Notation registerabhaengig; Herkunft der Bohlweg-3-Mail).
- **2026-07-25d — twin-mail-training Batch 63 (Sent Items rj@ 2026-07-13 12:31 → 2026-07-14 15:16).**
  Sequentieller Mail-Sweep fortgesetzt: 23 Mails gesichtet [Index 1-23, Index 0 als Batch-62-Duplikat
  uebersprungen], 7 Volltexte via M365-CLI (`node_modules/.bin/m365`, Certificate-Auth; MCP-Tool-Pfad
  `outlook_email_search` weiterhin nicht per ToolSearch auffindbar) gelesen und destilliert; keine neue
  Echo-Falle, alle 7 Rahmen handgetippt (Slips „Dass heisst", „Wir sind am zeichen der", „Ihne"/
  „Porjekt"). Ein bereits dokumentierter Marker (Dritt-Validierung Fidelity 260714h, Lüftungs-
  Strangschema-Mail an Gruner) unabhängig über die systematische Sweep gegengelesen, deckungsgleich.
  Neue belegte Marker: [[beziehungsregister]] (drei Register in EINER fliessenden Anredezeile
  innerhalb desselben Planer-Teams, «Geschätzter Herr Duran, geschätzter Herr Kübler, hoi Jens»),
  [[arbeitsweise]] (KW-nummerierte Terminfenster + expliziter Ziel-Satz + @-Delegation als gebündeltes
  Übergabe-Paket bei Fachplaner-Koordinationsstart), [[haltung]] (kommerziell-verfahrenstechnische
  Wissensgrenze offen an den Du-Unternehmer zurückgeben, Erweiterung der bisher nur software-/
  KI-bezogenen Ehrlichkeits-Marker). Mikro-Metrik 646 W (nur eigener Fliesstext): Du-Gross-Quote 1.0,
  Satzlänge ø 18.5 W, Apostroph 0, Ellipsen 0. Sweep-Endpunkt neu: 2026-07-14 15:16:49. Details:
  `raw/_INGESTED.md`.

- **2026-07-25c — twin-mail-training Batch 62 (Sent Items rj@ 2026-07-08 16:09 → 2026-07-13 11:16).**
  Sequentieller Mail-Sweep fortgesetzt (VOLLGAS-Endlos-Runner): 121 Treffer im Restfenster, 25 Mails
  gesichtet, 7 Volltexte via M365-CLI (`node_modules/.bin/m365`, Certificate-Auth, MCP-Tool-Pfad
  `outlook_email_search` weiterhin defekt) gelesen und destilliert; keine Echo-Falle, alle 7 Rahmen
  handgetippt. Neue belegte Marker: [[beziehungsregister]] (Stapel-Anrede variiert je Mail nach
  Fokusperson statt statisch pro Firma; Sie bleibt stabil bei Institutions-nahen Kontakten über
  mehrere Kontaktrunden; 6 neue Kontakt-Mappings), [[stimme]] (neue Zwischenbescheid-Formel „kommen
  zur gegebener Zeit auf Sie zu"; „Danke und Gruss" auch im Vorname-Du bei ultra-kurzer Sachauskunft;
  reine Ja/Nein-Sie-Antwort ganz ohne Signaturblock; Metrik 607 W), [[arbeitsweise]] (thematische
  Zwischentitel auch in kurzen Lieferanten-Koordinationsmails, nicht nur langen Behördenmails;
  A)/B)/C)/D)-Fristsetzung mit Direktadressierung bestätigt; @-Delegation in Gruppenmail; Abnahme-
  Vorbehalt bei unvollständiger Informationslage), [[fachsignatur]] (Schlüsselfertig-/Vollständig-
  keits-Klausel auch bei Kleinstaufträgen; Referral-Kette offen ausgewiesen; Brandschutz-
  Fachbegriff-Präzision bereits im Betreff). Ein unsicherer Datenpunkt (Reply ohne Fliesstext auf
  dringliche Nachfrage) nicht als Marker übernommen, siehe [[QUESTIONS]].
  Frontmatter der vier Artikel: `260725-mailbatch-62.md` in `sources` ergänzt, `last_updated`
  unverändert 2026-07-25 (gleicher Kalendertag). Register `raw/_INGESTED.md`: Batch-62-Zeile +
  Sweep-Footer auf 2026-07-13 11:16:38 nachgeführt.

- **2026-07-25b — twin-fidelity-review (Selbsttest, Apple-Mail-Fallback).** M365-Connector in dieser
  Session ohne funktionierendes CLI-Paket (`m365_search_commands` Fehler „npm package not found") —
  Fallback auf Apple Mail/osascript, Konto Exchange, Mailbox „Gesendete Elemente". Drei frische,
  bislang unbearbeitete authentische Golds 16.–23.07.2026 ausserhalb der KISPI-Baurechts-Achse
  (Konsumenten-Sie-Finanzierungsanfrage ART Computer, Mahn-/Zahlungsmail mit gestapelter Anrede,
  ultrakurzes Fachurteil Gastroküche). Gesamt-Fidelity 85/100. Neue Marker: [[stimme]] (Fachurteil/
  Prüfbericht im Du zieht FG+Block trotz Ein-Satz-Kürze — 3. Beleg der Inhaltstyp-schlägt-Länge-Regel;
  gestrippte Signatur bei privater Konsumenten-Sie-Erstanfrage), [[arbeitsweise]] (selbst gestellte
  Sequenzfragen an Sie-Erstkontakt nummeriert, nicht «_ »-Bullet), [[beziehungsregister]] (gestapelte
  Anrede + kollektives «Euch» auch im harten Mahn-/Zahlungskontext, Do/Don't ergänzt: Cc-Liste vor
  Anrede-Wahl prüfen). QUESTIONS Runde 260725b (4 Fragen). DNA neu kompiliert (`build_dna.py`).
  Report: `outputs/2026-07-25b_fidelity.md`.
- **2026-07-25 — twin-mail-training Batch 61 (2026-07-07 07:23…07-08 16:09).** Sent Items rj@ via
  M365-CLI direkt (MCP-Tool `outlook_email_search` in dieser Session nicht verfügbar; Fallback
  `node_modules/.bin/m365 outlook message list --folderId sentitems`, Certificate-Auth — Ordnername
  „Sent Items" wird nicht erkannt, `--folderId sentitems` schon). 19 Mails gesichtet, 7 Volltexte,
  alle klar handgetippt (keine Echo-Falle in dieser Stichprobe). Neue belegte Marker:
  [[beziehungsregister]] (Gruss folgt dem Mail-Typ auch innerhalb desselben Kontakts — Tschopp
  bekommt hier bei einer dokumentierenden Freigabe-Mail «Freundliche Grüsse» statt seinem sonstigen
  «Lieber Gruss»; Mappings Sivec/Strübi/La Mendola), [[stimme]] («Bitten»-Grossschreibung nach
  Modalkonstruktion dritter unabhängiger Beleg → Status established; «Nächster Schritt:» als dritter
  Label-Opener neben «Frage:»/«Ziel:»; Metrik 348 W), [[fachsignatur]] (Behörden-Fristüberschreitungs-
  Nachfass mit Verfahrensrecht-Zitat+Datumsbeleg+3-Punkte-Fragenkatalog als zweite Eskalationsstufe;
  Kosten-Konsistenz-Check vor Vergabe — Lücke im Angebot erkennen, allgemeine Posten reduzieren
  lassen, konsistenten Preis pro Variante einfordern), [[arbeitsweise]] (Zwei-Stufen-Eskalationsleiter
  beim Behörden-Nachfass — Eskalation über Beweisdichte, nicht über den Ton). Register
  `raw/_INGESTED.md` (Batch-61-Zeile) nachgeführt. Modell-Politik MVM: Mail-Abruf via CLI-Fallback
  (mechanisch, hier im Hauptkontext wegen MCP-Ausfall), Volltext-Lektüre+Authentizitätsurteil+
  Echo-Detektion+Marker-Destillation auf Hauptmodell (Verifikationsstufe).
- **2026-07-25 — twin-fidelity-review (Turnus, Gesamt-Fidelity 90).** Drei authentische Vor-Claude-Golds
  03.–05.09.2025 in drei Registern gezogen (Yorck Design-Weisscollage-Du, Frick Honorar-Sie [bereits gesättigt],
  Gregori Service-Lieferanten-Sie mit Betreff «Anrufen: 0798461165»), Twin-Fassungen blind gescort. Zwei Funde:
  (1) **Betreff = Rückruf-Signal register-übergreifend** — «Anrufen: <Handynummer>» als Betreff-Payload tritt auch
  im formellen Service-Sie auf (2. Beleg zu QUESTIONS 260723 #1, Body dort voll höflich statt gestrippt);
  [[stimme]] Do-Block + Marker-Sektion geschärft, in die DNA kompiliert. (2) **Material-Dichte-Drift** (Gold A):
  Twin bulletet + glättet, wo Raphael ortsweise-fliessend und sinnlich materialisiert (2. Ausprägung nach 260724 #1)
  — nicht gehärtet, als QUESTIONS 260725 #2 offen gelassen. Kleiner Einzelbeleg «Vor-Ort-/Muster-Einladung im
  Service-Sie» in [[stimme]] vermerkt (nicht generalisiert). 4 neue Fragen (Runde 260725) an [[QUESTIONS]].
  Keine Facetten-Widersprüche. Report `outputs/2026-07-25_fidelity.md`. DNA neu kompiliert (build_dna.py).
- **2026-07-24 — twin-chef Fidelity-Gate (Hub-Chef-Lauf, 2 ausgehende Sie-Mails).** Gate über zwei
  Unternehmer-Mails im laufenden KISPI-/Los-274.01-Mandat: Nachfass Installationspläne Therapieküche
  (Inniger, Röthlisberger AG) und geteilte Zehn-Punkte-Rückmeldung Prinzippläne (Bajrami, Jegen AG).
  Beide durchgewunken nach EINER gezielten Veredelungsrunde ([[stimme]] beide, [[denken]] Mail 2):
  Service-Satz aus der Nachfass-/Fristmail gestrichen (Begehren als Schlusswort, analog Fidelity 260719),
  drei Satzbau-Schärfungen ohne Faktenänderung. Fidelity nach Runde: 90 (Röthlisberger) / 92 (Bajrami).
  Facetten-Spannung «Service-Satz beim reinen Nachfass» als QUESTIONS Gate 260724 #1 vermerkt
  (Belege stehen sich gegenüber: Offert-Anfrage MIT vs. Amts-Begehren OHNE).
- **2026-07-24 — twin-fidelity-review (Turnus, Gesamt-Fidelity 90).** Drei authentische Vor-Claude-Golds
  in drei Registern gezogen (Baurekursgericht-E-Bill Service-Sie-namenlos 23.10.2025, Yorck Design-/Material-
  Peer-Du 01.09.2025, Notariat-Hottingen Rechtsersuchen-Sie 04.11.2025), Twin-Fassungen gescort. Neubefund:
  die Behörden-Erstanrede am generischen/unbekannten Postfach ist **anlass-gewichtet, nicht postfach-fix** —
  triviale Service-/Technik-Bitte → namenloses «Guten Tag» + Kurzbitte ohne Begründung/Dank/Service-Satz;
  gewichtiges Rechtsersuchen → «Sehr geehrte Damen und Herren» (dasselbe Notariat Hottingen erhielt beides,
  vgl. Batch 02 «Guten Tag»). Löst QUESTIONS 260723 #4. [[beziehungsregister]] Marker + Do/Don't geschärft
  (last_updated 07-24); QUESTIONS Runde 260724 (4 neue Fragen: Design-Bild-Rhetorik, rahmenlose Faden-Antwort,
  Gewicht-vs-Aufwand-Schwelle, «Bitte veranlassen Sie»-Formel); DNA neu kompiliert (`build_dna.py`); Drift-Report
  `outputs/2026-07-24_fidelity.md`. Facetten-Validierung: keine ungelösten Widersprüche (die scheinbare
  Notariat-Spannung ist anlass-aufgelöst). Echo-Schutz eingehalten (nur authentischer Vor-Claude-Text gewertet).
- **2026-07-24 — twin-mail-training Batch 59 (2026-06-30 09:07…07-02 11:55).** Sent Items rj@,
  25 Mails gesichtet, 6 Volltexte, lückenlose Fortsetzung ab Batch 58. Neue belegte Marker:
  [[beziehungsregister]] (Vier-Stufen-Stapel-Anrede pro Person wärmefein «Liebe/geschätzer/werter/
  hoi»; Sie+Du-Split in Zwei-Personen-Firmen-Anrede mit oszillierendem Body — Instabilität als
  Marker; Kontakt-Mappings KISPI/Nova/Thalwil), [[stimme]] (Echo-Falle 19 Kontrastpaar «Herr»↔
  «Herrn»/«—»-Gedankenstrich-Tell im selben Küchenbau-Thread; Metrik 378 W Du-Gross 0.933/ø 12.6 W),
  [[arbeitsweise]] (Team-Inputs mit interner Frist zu EINER gebündelten Stellungnahme bündeln;
  Grundeigentümer-Antwort A)/B) durchstellen+Empfehlung+«finales Go»; gleichlautender Gesuch-Status-
  Nachfass an mehrere Amtsstellen), [[fachsignatur]] (rechtsverankerte quantifizierte Näherbaurecht-
  Klärungsanfrage an Grundeigentümer SBB, Sprechakt b; funktionale Ausschreibung «Unternehmer schlägt
  die Lösung vor» bestätigt). Register `raw/_INGESTED.md` (Batch-59-Zeile) nachgeführt. Modell-Politik
  MVM: Volltext-Lektüre+Authentizitätsurteil+Echo-Detektion auf Hauptmodell (Verifikationsstufe).

- **2026-07-23 — Reconciliation twin-mail-training (Fehlstart→Nachtrag Batch 50).** Der
  Lauf zog das Fenster **2026-06-04…06-07** als vermeintlich neuen «Batch 46», weil nur die
  erste (paginierte) Seite von `raw/_INGESTED.md` gelesen wurde, die bei Batch 49 endet. Dieses
  Fenster ist aber bereits als `260714-mailbatch-50.md` erfasst; der sequenzielle Sweep reicht
  faktisch bis **2026-06-30 (Batch 58)**. Kollision zusätzlich mit dem ECHTEN Batch 46
  (2026-05-20…05-27). Korrektur: die sechs neu angehängten Facetten-Abschnitte (stimme, denken,
  haltung, beziehungsregister, fachsignatur, arbeitsweise) von «Batch 46» zu «**Nachtrag Batch 50**»
  umbenannt (pre-existing Batch-46-Refs unangetastet: `fachsignatur` Reduit-Faden, `stimme`
  214-W-Metrik); Quell-Token `260604/260723-mailbatch-46.md` → `260723-nachtrag-batch50.md`. KEINE
  neue Batch-Zeile im Register. Inhaltlicher Netto-Gewinn dieses Laufs: zwei genuin neue Marker im
  Batch-50-Fenster (Fachplaner-A)–D)-Zurückweisung «Ich weisse Ihre Planung als unvollständig
  zurück» an Sanitärplaner Eren; versöhnende Schiebetüren-Lösung offen/Brandfall-schliessend an
  Brandschutz Ziegel) + unabhängige Bestätigung Echo-Falle 17 (Halbgeviertstrich-Advisory-Prosa
  Bopp/Chaled = Claude-Grundtext). Metrik (authentische Rahmen) 434 W, Du-Gross 0.667, Apostroph 0,
  ø 15.5 W. **Lehre (vgl. Regel 260720):** vor Batch-Wahl das GESAMTE Register bis zur Frontier
  lesen, nicht nur die erste Seite. Nächster Lauf: ab **2026-06-30 09:07**.
- **2026-07-23 — Fidelity-Review (twin-chef, alle 2 Tage).** Gesamt-Fidelity 90; drei authentische
  Vor-Claude-Golds in drei Registern (met-all/Grillmotor Service-Sie-Produktanfrage 29.12.2025; Claudia
  Klein Design-Peer-Ultra-Ping 19.12.2025 — Handynummer als Betreff, Body «ruf mich an»; Bauamt Thalwil
  Vordach-Auslegungsersuchen Behörde-Sie 20.11.2025). Report `outputs/2026-07-23_fidelity.md`. Schärfung:
  `wiki/fachsignatur.md` Do-Block + neue Marker-Sektion — Amts-Eingabe in zwei Sprechakte getrennt (Antrag/
  Gesuch mit eigenem Recht → Norm zitieren + subsumieren; Klärungs-/Auslegungs-Ersuchen → Doppelquellen-
  Gegenüberstellung + Alternativfrage, KEINE Subsumtion); beantwortet [[QUESTIONS]] 260722 #1. DNA neu
  kompiliert (`rules/jans-dna.md`, 6 Facetten). `twin-fragesteller` hat vier neue Fragen (Runde 260723)
  an `wiki/QUESTIONS.md` angehängt (Ultra-Ping-Betreff, Gruss-Nullung bei Dringlichkeit, Neutralität des
  Auslegungs-Ersuchens, namenloses «Guten Tag» als Service-Default). Schärfste Drift: Twin rahmt den
  Ultra-Ping zu stark (Einzelbeleg, nicht generalisiert — Echo-Schutz).
- **2026-07-23 — Destillation Batch 46 (Haltung/Werte, Fenster 2026-06-04…2026-06-07).** Neuer
  datierter Abschnitt in `wiki/haltung.md` angehängt: (1) zweite Quelle für «Hart in der Sache,
  höflich im Rahmen» — formelle Zurückweisung eines unvollständigen Fachplaner-Vorabzugs, jetzt
  auch gegenüber einem grossen Ingenieurbüro; (2) neuer Marker «Verantwortung sauber zuweisen
  statt selbst zu tragen» — Betreiber-Verantwortung bei nutzungsbedingter Brandschutz-Auflage
  (max. 20 Personen), Entscheid zwischen zwei Varianten an die zuständige Stelle zurückgegeben;
  (3) dritte Quelle für «Ehrliche Risiko-Priorisierung vor maximaler Nutzung» (deckungsgleich mit
  Mailbatch 50) — Wortlaut KI-assistiert (Echo-Falle 17), nur das Haltungsmuster gewertet. Quelle:
  Sent Items rj@raphaeljans.ch, twin-mail-training Batch 46. Frontmatter `last_updated` auf
  2026-07-23 gesetzt.
- **2026-07-23 — Destillation Batch 46 (Stimme/Ton, Fenster 2026-06-04…2026-06-07).** Vier neue
  Marker in `wiki/stimme.md` angehängt: (1) blunt-imperative A)–D)-Zurückweisung an Fachplaner-Sie
  (Eren/Gruner) bei gleichzeitig warmer Anrede; (2) Du-klein-Slips im schnellen operativen
  Fachplaner-Du (Ziegel), Du-Gross-Norm nicht absolut; (3) 17. Beleg für den Gedankenstrich-«—»-
  Echo-Tell in baurechtlicher Advisory-Prosa (Bopp/Dr. Chaled), Ausschluss dieser Blöcke aus der
  Stilquelle; (4) Metrik Batch 46 (434 W, Du-Gross-Quote 0.667, Satzlänge ø 15.5 W). Quelle:
  Sent Items rj@raphaeljans.ch, twin-mail-training Batch 46. Frontmatter `last_updated` auf
  2026-07-23 gesetzt, Quelle in `sources` ergänzt.
- **2026-07-22 — `twin-fidelity-review` (Selbsttest, Gesamt-Fidelity 87).** Drei authentische Vor-Claude-
  Goldproben 25.09.–03.10.2025 in drei Registern gezogen (Labinot/38grad operative-Kostenauskunft-Sub-Du;
  Fabio-Don-Druckerkosten-Rechnung-Sie; ESTV Gesuch-Behörde-Sie), Twin-Fassungen blind aus den Facetten-Wikis
  erzeugt und gescort. Score je Facette: Beziehungsregister 93 · Stimme 88 · Arbeitsweise 88 · Haltung 88 ·
  Denken 82 · Fachsignatur 74. Befund: alle drei Golds bereits destilliert, dennoch verfehlte der Twin zwei
  belegte Marker (MWSTG-Artikel+Subsumtion im Gesuch; «Danke und Gruss»-Signoff) — zwei **Retrieval-Lücken**,
  weil die Marker am Themenwort statt am Sprechakt hingen (2. Beleg Struktur-Schwäche 260719). Massnahmen:
  fachsignatur.md-Do-Block auf den SPRECHAKT «rechtsbegründete Eingabe an eine Amtsstelle» umgeschlüsselt;
  stimme.md-Do-Block um «Danke und Gruss» (operative Kurzform) ergänzt; Gehirn `rules/jans-dna.md` neu
  kompiliert (beide Schärfungen verifiziert im Auto-Block); 4 neue Selbstfragen (Runde 260722) in QUESTIONS.md.
  Report: `outputs/2026-07-22_fidelity.md`.
- **2026-07-22 — Wissens-Health-Check (Phase 1, Skill `wissenscheck`, Mac Mini Nachtschicht).**
  Erster Wissenscheck ueberhaupt fuer diese KB. A0 · B2 · C0 · D1(schwerwiegend) · E0 · F2 · G1.
  Top-Fund: von 60 in `raw/_INGESTED.md` registrierten Quelldateien liegen nur noch 26 (43 %)
  physisch in `raw/` — 33 fehlen, darunter `260722-mailbatch-45.md` (heute in vier Facetten
  zitiert). Weiter: durchgaengige `ae/oe/ue`-statt-Umlaut-Verstoesse in der Analyseprosa (nicht
  in den Zitaten) ueber praktisch alle sechs Artikel + QUESTIONS.md; vereinzelte `ß`; 2 kaputte/
  inkonsistente Backlinks (QUESTIONS→raw-Datei, arbeitsweise.md-Selbstlink); `INDEX.md` zeigt
  stale `emerging` statt `established`. Nur Audit, keine Aktionen (Root-Cause der fehlenden
  raw-Dateien braucht dedizierten Lauf). Report: `outputs/2026-07-22_health-check.md`.

- **2026-07-22 — `twin-mail-training` Batch 45 (Sent Items rj@, 2026-05-14…05-19).** Sequenzielle
  Fortsetzung nach mailbatch-44; 20 Mails gesichtet, 5 Volltexte destilliert (alle authentisch/handgetippt,
  keine Echo-Falle), KISPI-Umnutzung Therapiestation 2619 Submissions-/Brandschutz-Phase. Metrik 413 W,
  Du-Gross 1.0, ø 15.9 W, FG 5× dominant. Neue belegte Marker in vier Facetten: [[beziehungsregister]]
  (Fachplaner-Warm-Sie «Geschätzter Herr», Zwei-Wärmestufen-Sie Grob/Arter, Mapping Timo Hayen Du, 3.
  Anti-Spiegelungs-Beleg), [[fachsignatur]] (Brandschutz-Ertüchtigung Trockenbau EI30-RF1, Einsichtsschutz
  als Entwurfstreiber), [[arbeitsweise]] (fette-Zwischentitel-Gewerksanfrage, delegierte Rückfrage-
  Weiterleitung, Bestätigungs-Reflex bei Zustellaufträgen), [[stimme]] (FG-nach-Mailtyp-auch-im-Du,
  Bitt-Reflex-Verb-Grossschreibung als Echtheitssignal, konditionale Hilfsbereitschaft). Bookkeeping-Hinweis
  vermerkt: Wiki-«Batch»-Nummern (bis 58) sind der separate Fidelity-Review-Strang, nicht die mailbatch-Kette.
- **2026-07-21 — `twin-fidelity-review` (Selbsttest, Gesamt-Fidelity 91).** Drei authentische Vor-Claude-
  Goldproben Okt 2025 in drei Registern gezogen (Lu/St. Moritz warm-sozial-Du-Akquise; boesner/Washi
  Objekt-Material-Sie; ESTV/Ruprecht Behörde-Beleg-Zustellung), Twin-Fassungen aus den Facetten-Wikis
  erzeugt und je Facette gescort (Stimme 92 · Denken 90 · Haltung 93 · Beziehung 93 · Fachsignatur 90 ·
  Arbeitsweise 91). Regression-Check positiv: die 260719 verfehlte Design-/Material-Säule feuerte diesmal
  korrekt (Washi/Grammatur/Lichtverhalten). Ein echter Befund (Lücke, kein Widerspruch): den emotionalen
  Subtext/die Sorge des Absenders direkt quittieren fehlt in allen Facetten. Marker «Emoji ist ton-getaktet,
  nicht spiegel-getaktet» in [[stimme]] verankert (Guard gegen Auto-Mirroring, belegt Lu-Faden). 3 Selbst-
  fragen (twin-fragesteller) an [[QUESTIONS]] Runde 260721 (Subtext-Antwort, Rauheitsgrad Lieferanten-Sie,
  Emoji-Schwelle). Keine Do-Block-Änderung (Einzeldatenpunkte, Overfitting-Guard); DNA-Neukompilierung
  no-op (Auto-Block bereits aktuell). Report: `outputs/2026-07-21_fidelity.md`.
- **2026-07-21 — `twin-mail-training` Batch 58 (2026-06-26 12:38 – 2026-06-30 09:07).** 20 Sent-Items
  gesichtet, 5 Volltexte destilliert (Bopp-Baulinien-Einwendung Giebelweg im Du; Türfachplanung-
  Offertenanfrage KISPI PPTS Sie; Gastroküchen-Absage Ramseier Sie; Telefon-Bitte Bajrami/Jegen;
  Sanitär-Offertenanfrage Mehari/Stähli Sie). Claude-Selbstmails (Logbuch-Briefings, AG-Gründungs-
  Update, ASCII-Umlaute) als `claude-aera` ausgeschlossen; der polierte Prosakern der Türfachplanung-
  Offerte als skill-/Claude-assistiert markiert und nur über Rahmen + Fachvokabular verwertet. Neue
  belegte Marker: [[stimme]] (Vollversal-Zeile als reine Begeisterung im Peer-Du; weichgezeichneter
  Telefon-Bitte-Sie «doch kurz»/«wenn es Ihnen zeitlich passt»; «Grüzi Herr» warm-knapper Service-Sie),
  [[beziehungsregister]] (sauberes Warm-/Kalt-Sie-Kontrastpaar «Geschätzter Herr» vs «Sehr geehrter
  Herr» — die Absage kühlt bewusst zurück; 8 neue Sie-Mappings + Marco-Du bestätigt), [[denken]]
  (Eskalationsreserve bewusst zurückhalten; Aufwand der Verfahrensstufe anpassen, informelle
  Mitwirkung ≠ Rekurs), [[arbeitsweise]] (Vergleichbarkeit der Offerten aktiv herstellen —
  Zweitbieter dieselben Positionen nachtragen lassen; gesichtswahrende Absage als Vier-Schritt-
  Choreografie; optionale Grundlagen zu den Akten mitgeben), [[fachsignatur]] (Baulinien-Einwendung/
  Mitwirkungsverfahren mit Eigentumsgarantie-Argumentation + Buchauszug PBG als Beleg; Türfachplanung
  von Lieferung/Montage/IBN trennen + numeriertes Grundlagenpaket 01–14; wir/ich satzweise bestätigt).
  Metrik 437 W: Du-Gross 1.0, Satzlänge ø 15.6 W, Freundliche Grüsse 6× dominant. Sweep abgedeckt bis
  2026-06-30 09:07; `raw/_INGESTED.md` Batch-58-Zeile + Sweep-Endpunkt nachgeführt.
- **2026-07-19 — Kontext-Diaet: Do/Don't-Bloecke kompaktiert (Freigabe Raphael).** In den Facetten
  `stimme`, `beziehungsregister`, `fachsignatur`, `haltung` die Do/Don't-Bloecke zu dichten Markern
  verdichtet; die datierten Praezedenz-Abschnitte darunter bleiben vollstaendig erhalten und werden
  vom twin-chef bei der Veredelung weiterhin gelesen (nur der kompilierte DNA-Block wird schlanker:
  `rules/jans-dna.md` 15.4 → 11.7 kB via `build_dna.py`). Kein Marker geloescht, nur verdichtet;
  Konzept `docs/konzepte/260719-Kontext-Diaet-Token-Reduktion/`.
- **2026-07-19 — `twin-fidelity-review` (Gesamt-Fidelity 88).** Drei Goldproben Okt 2025 (ESTV-Gesuch
  kalt-formell Sie · «Hoi lieber Sämi» Peer-Du · Objekt-Offerte Lu warmes Geschäfts-Du). Die Charge war
  bereits über 260618 destilliert → der Lauf wirkte als **Regressionstest**: Abruf statt Neuwissen.
  Hauptbefund: die zweite Fachsäule (Design/Objekt) wurde in einer Objekt-Offerte NICHT gezogen, obwohl
  belegt im Wiki — Abruf-/Klassifikationslücke, weil der Auslöser am Wort «Design» statt am Gegenstand
  hing. Umgesetzt: `fachsignatur.md` Do-Block auf **Objekt-Auslöser** umgestellt (inkl. A)/B)/C)-
  Bandbreite, fixer Planungs-Budgetposten, ehrliche Unvollständigkeits-Markierung); `stimme.md` neuer
  belegter Abschnitt «Gesuch/Antrag ans Amt schliesst mit dem ANTRAG — ohne Service-Satz» + Do-Zeile.
  QUESTIONS 260719: 5 Fragen + vermerkte Struktur-Schwäche (Marker nach Themenfeld vs. Anlass nach
  Sprechakt). Nebenbefund: QUESTIONS 260610 #4 (Schreiner-Selbstzeugnis) und #5 (Design-Honorarlogik)
  durch Gold 3 belegt beantwortet. Gehirn neu kompiliert. Report `outputs/2026-07-19_fidelity.md`.

- **2026-07-19 — `twin-mail-training` Batch 57 (2026-06-23 13:47 – 2026-06-26).** 20 Sent-Items
  gesichtet, 4 Volltexte destilliert (Vergabe-Nachverhandlung + Auftragserteilung LOS274.01 Innere
  Verglasung, Brandlast-Nachweis ELE in EI30-RF1-Leichtbauwänden, Küchenbau-Unterlagen). Erstmals
  **Claude-generierte Selbstmails** im Postfach als `claude-aera` markiert und ausgeschlossen
  (Logbuch-Radar, AG-Gründungs-Update — Erkennung über ASCII-«fuer/naechster» + Report-Struktur);
  Hinweis dazu im `raw/_INGESTED.md` verankert. Neue Marker: [[stimme]] («Hello,» als deutscher
  Du-Opener, «lgr»/«Lgr» nicht bedeutungstragend, Aufzählung «A) B) C)»), [[beziehungsregister]]
  (gestapelte Sie-Anrede mit abgestufter Wärme; **der Vertragsakt kühlt zurück auf «Sehr geehrter»**
  — Anlass schlägt Vertrautheit), [[arbeitsweise]] (Auftragserteilung liefert die Ausführungs-
  Choreografie mit; Wunschtermin vom Unternehmer eintragen lassen; Delegation mit fertigem,
  QS-abgesegnetem Weiterleitungstext; Gesamt-Nachlassquote «-8%tot» als eine Kennzahl),
  [[fachsignatur]] (Wand-Aufwertung auf EI30-RF1 zieht Brandlast-Nachweis der bestehenden
  Installationen nach sich, Prüfung über den Systemhalter; Linienlast Vollverglasung 4× Nutzlast UB),
  [[haltung]] («Im Auftrag der Bauherrschaft» — Zurechnungs-Ehrlichkeit beim Preisdruck; Nachlass
  quittieren statt ausreizen), [[denken]] (Termindruck als gemeinsame Randbedingung «wir müssen»).
  Metrik 387 W: Du-Gross 1.0, Satzlänge ø 14.3 W, Freundliche Grüsse 4×. Sweep abgedeckt bis
  2026-06-26 10:09.

- **2026-07-18 — `twin-fidelity-review`.** Fidelity-Selbsttest gegen drei authentische Dez-2025-
  Goldproben in drei Registern (Hofer-Bauentscheid-Sie / Weisser-Offert-Du nachts / Bopp-STWEG-Korrektur;
  M365 Sent Items rj@). **Gesamt-Fidelity 89** (Stimme 94 · Beziehung 97 · Denken 89 · Haltung 88 ·
  Fachsignatur 83 · Arbeitsweise 84). Zwei Twin-Fassungen nahezu deckungsgleich (Weisser ≈98 inkl.
  Bestätigung Anti-Spiegel + Tageszeit: «Hallo Raphael» nachts → «Hoi Peter»; Bopp ≈93 teils verbatim
  inkl. Wertquoten-1000-Normierung). Ein Struktur-Drift: mehrteilige Verfahrens-/Auflagen-Statusmail →
  **thematische fette Blöcke nach Amt/Gegenstand** (nicht flache Liste). Umgesetzt: neuer belegter Marker
  + Do-Zeile in `arbeitsweise.md`; QUESTIONS-Runde 260718 (4 Fragen: Tageszeit-Grenze, Themen-Block-
  Gliederung, «–» vs «_ » in Sie-Mail, optionaler Zusatzvorschlag); Report `outputs/2026-07-18_fidelity.md`;
  Gehirn `rules/jans-dna.md` neu kompiliert. Keine Facetten-Widersprüche; Bullet-Zeichen als Unterspezifikation
  vermerkt. Echo-Schutz: nur authentische Vor-Claude-Golds als Massstab.
- **2026-07-18 — `twin-mail-training` (Batch 56, 19.–23.06.2026).** Sequentieller Sent-Items-Sweep
  rj@ ab 2026-06-19 13:58 fortgesetzt (M365-Connector `outlook_email_search`), 25 Mails gesichtet, 5
  Volltexte destilliert, Sweep-Endpunkt neu **2026-06-23 13:47**. **Echo-Falle 18** (sauberstes
  Kontrastpaar bisher: selber Tag/selber Empfänger David — Claude-Grundtext 21:52 mit En-dash «–» +
  klein-«du» + glatter Prosa vs. handgetippte 11:36-Fassung «Geschätzter David … sende ich Dir …
  bestätig», Du gross/Slips → ausgeschlossen, als Kontrast in [[stimme]] dokumentiert). Neue belegte
  Marker in [[stimme]] («Danke und lieber Gruss», En-dash/klein-du-Tell geschärft, Metrik 553 W/
  Du-Gross 0.895/ø 14.9 W), [[beziehungsregister]] (Bundesamt-/Notariats-Sammel-Sie, Gerry-Scherbl-
  Vendor-Du «Rafi», «Werter <Vorname>»-@-Mention), [[fachsignatur]] (Kaufpreis-KV-Rechenschema
  Wert−Invest+Marktpotenzial, Brandschutz-Treppenhaus 1.00/1.20 m Verhältnismässigkeit/Besitzstand,
  Private Kontrolle Lüftung EN105/EN110 über EVEN, eigene Zefix-API-Beschaffung), [[haltung]]
  (Kaufpreisempfehlung ehrlich nach unten korrigieren + keine Reservations-Zahlung vor Zweitbank),
  [[arbeitsweise]] (gleiche Fachfrage register-parallel an mehrere Bezugsquellen + @-Mention mit
  Auftrag/Frist). `raw/_INGESTED.md` Batch-56-Zeile + Sweep-Endpunkt nachgeführt.
- **2026-07-17 — `twin-fidelity-review` (Fidelity 79, Spiegel-Regel widerlegt).** Falsifikations-Test
  der am 15.07. eingefuehrten Regel «‹Hallo› spiegelt den Opener des letzten Eingangs»: **widerlegt**
  durch zwei authentische Gegenbeispiele (Faden Oberhaeslerstrasse 2, 05.–11.09.2025) — «Hallo Raphael»
  → «Guten Morgen Peter» (Tageszeit schlaegt Spiegel), «Gruezi Herr Jans» → «Geschaetzte Frau Frick»
  (Vertrautheit schlaegt Spiegel). `beziehungsregister.md`: Marker durchgestrichen + durch «Opener aus
  Anlass + Tageszeit + Vertrautheit» ersetzt, Do-Block korrigiert, Don't ergaenzt; zwei neue Marker
  («Guten Morgen <Vorname>» als Vormittags-Default; «Geschaetzte/r» im vermittelten kommerziellen
  Erstkontakt). `haltung.md`: neuer Kern-Marker «warnt vor der eigenen Zusatzleistung» (Pool-Abraten
  mitten in der eigenen Offerte) + «wir/ich satzweise» erstmals am Erstkontakt belegt. `stimme.md`:
  ultrakurzer Du-Reply («Danke» statt «Besten Dank», objektlose Zusage, «Bester Gruss») + «%» ohne
  Leerschlag (3. Datenpunkt). QUESTIONS: 260715 #1 als beantwortet/widerlegt geschlossen, Runde 260717
  #1–#5 angehaengt. Gehirn `rules/jans-dna.md` neu kompiliert (6 Facetten). Report:
  `outputs/2026-07-17_fidelity.md`.



## 2026-08-03 — twin-fidelity-review (Dokument-Strang, 2. Lauf)

Gesamt-Fidelity **50** (Stimme 44 · Denken 52 · Haltung 51 · Beziehung 61 · Fachsignatur 42 ·
Arbeitsweise 49) an zwei neuen Gattungen: Sitzungsprotokoll Waedenswil 24.08.2023 und
Kriterienkatalog Haus Deuber 27.03.2021, beide vorher mit null Belegen im Wiki. Ein drittes
Gold (`Text 1_Jury.docx`, Schoental) wurde beim Lesen als **Fremdtext** erkannt (Jurybericht
eines fremden Verfahrens) und verworfen. Kernbefund: der Zwilling hat in **beiden**
Blindfassungen erneut einen Mail-Schluss unter ein Eigendokument gesetzt, obwohl das Don't seit
260731 im Gehirn steht — Ursache war ein ungetrennter Do-Satz («immer einen naechsten Schritt»)
im selben Artikel; jetzt nach Gattung getrennt. Geaendert: [[stimme]] (Eigendokument als
Familie mit drei Notationen + Anfuehrungszeichen nicht durchgaengig Guillemets + neuer
Belegabschnitt), [[denken]] (Varianten bilanzieren statt benoten; Fremdaussage/eigene Wertung
trennen), [[haltung]] (interne Haerte; Position gegen die Behoerde im Protokoll),
[[fachsignatur]] (Kernzonen-Mechanik + vier Einordnungs-Hebel; Aussenraum-Fachsprache),
[[beziehungsregister]] (zweiter Beleg Drittform im Eigendokument), [[arbeitsweise]] (Formular
des Gastgebers; Mail-vs-Dokument-Schluss; Belege 5+6), `CLAUDE.md` (Echo-Detektion korrigiert:
Guillemet-Signal nur in Kombination; neue Falle Fremdtext im eigenen Ordner), [[QUESTIONS]]
Runde 260803 (6 Fragen + Facetten-Spannung), `raw/_INGESTED.md` (Gold-Verbrauch + verworfene
Datei), Report `outputs/2026-08-03_fidelity.md`, `rules/jans-dna.md` neu kompiliert.

## 2026-08-14 — twin-fidelity-review (Fenster rj@ 01.–02.06.2026)

- **Gesamt-Fidelity 36**, erster **blind** gemessener Wert (Twin-Fassungen vor dem Volltext
  fixiert, vorschau-kontaminierte Passagen aus der Wertung genommen). Beantwortet QUESTIONS
  260813 #5: die Messreihe war um geschaetzt 4–6 Punkte zu optimistisch; die Vorlaeufe
  41/41/42/40/43/48/46 sind nicht mehr direkt vergleichbar, der Trend beginnt bei 36 neu.
- **`CLAUDE.md`:** vierter Echo-Lokalisator `Apple-Mail-URLShareWrapperClass` aufgenommen —
  beantwortet QUESTIONS 260814 #4 (blinder osascript-Kanal). Belegt mit zwei Verdachtstexten
  und **zwei handgetippten Gegenproben desselben Tages aus demselben Mailprogramm**.
  Ausdruecklich nur als **Lokalisator auf Absatzebene**, kein Autorschaftsurteil.
- **`wiki/stimme.md`** (+61): Kurzsignatur bei dringlicher Behoerden-Initiativmail; nackte
  Dringlichkeitszeile; Bitte als Koennen-Sie-Frage mit Semikolon-Begruendung; «•   »-Bullet mit
  «>»-Folgepfeil — erster Beleg des Zeichens ausserhalb des Eigendokuments.
- **`wiki/beziehungsregister.md`** (+57): **der Kanal senkt das Register** — Sammelpostfach
  schlaegt den Du-Kontakt («Guten <Vorname> <Nachname>» + Sie); angeklebte Anrede ohne
  Leerzeile, zwei unabhaengige Belege.
- **`wiki/haltung.md`** (+30): **wer bittet, entlastet** — Entlastungssatz mit Sachgrund statt
  Bestaetigungsbitte. Zweiter Lauf in Folge mit derselben Umkehrung, damit belegte
  Standard-Drift statt Einzelbeobachtung.
- **`wiki/arbeitsweise.md`** (+42): P.S. als Gefaess der zweiten, sachfremden Frage; kein
  Naechster-Schritt-Zwang, wo entlastet wird.
- **`wiki/QUESTIONS.md`** (+60): 6 Eintraege. Wichtigster: **Echo-Verdacht in der eigenen
  Facette** — die Service-Satz-Klausel fuer Offerten-/Submissionsanfragen wird in diesem Fenster
  ausschliesslich von gewrappten (eingesetzten) Absaetzen getragen, waehrend der handgetippte
  Beleg derselben Gattung ihr widerspricht. Nicht nachgeschaerft, Pruefauftrag hinterlegt.
- **Alle Aenderungen append-only**, nativ auf der Synology mit `git diff --numstat` geprueft:
  sechs Dateien, **null Loeschungen** (Rule auto-verbesserungen 260811).
- **`rules/jans-dna-facetten.md` NICHT neu kompiliert — Wachstums-Riegel erreicht.** Der
  Auto-Block steht bei 29'997 von 30'000 B (3 B Reserve); `build_dna.py` bricht bewusst ab,
  statt still zu kuerzen. Die Do/Don't-Bloecke wurden deshalb **nicht** angefasst, das Gehirn
  bleibt auf dem letzten gueltigen Stand (keine Regression). Entscheid ueber Anheben /
  Verdichten / Splitten liegt bei Raphael; eingetragen in `logbuch/fristen.md` 14.08.2026.

## 2026-08-26 — Fidelity-Review (Thread-Rueckgriff Wartstrasse 8, Nicht-KISPI)

- **Report** `outputs/2026-08-26_fidelity.md`. Gesamt-Fidelity **32** (nach 36 am 25.08.).
  Drei Golds aus Raphaels eigener Hand, alle ausserhalb KISPI: 08.02.2026 eigene Rechnung +
  Grobkostenschaetzung an die Bauherrin (Du), 24.02.2026 Offertanfrage als LV im Mail-Body an
  die Schreinerei (Sie), 01.06.2026 fremde Unternehmerrechnung an dieselbe Bauherrin (Du).
  Gold C **nicht gescort** — der Preview-Leak zeigte die 22-Woerter-Mail praktisch vollstaendig.
- **⚠ Sperre gesetzt:** der Strang **AG-Gruendung/Notariat** ist **claude-aera**, nicht Gold —
  entgegen der Empfehlung des Vorlaufs vom 25.08. Fehlerfreie Syntax ueber mehrere Absaetze,
  keine Fehlerinsel, Loop-Briefing im selben Strang; ueber die `internetMessageId` nicht von
  echtem Gold zu trennen (Batch 105 Kernbefund 1 an einem zweiten Strang bestaetigt).
  Lehre: **eine Strang-Empfehlung des Vorlaufs ist keine Autorschafts-Freigabe.**
- **Vier Befunde in den Block gehoben:** (1) die eigene Rechnung wird zur Disposition gestellt
  («bei Akzeptanz», «mein Vorschlag»), die fremde durch einen Prueferbefund im Passiv fest- und
  faelliggestellt — kontrollierter Vergleich, dieselbe Bauherrin, vier Monate Abstand
  [[haltung]]; (2) **«analog Referenz»** als Verweisanker statt erfundener Zahl, dreifach in
  EINER Mail [[fachsignatur]]; (3) der **Eingabetermin** des Angebots steht unter dem
  Signaturblock, der Ausfuehrungstermin oben [[arbeitsweise]]; (4) der Service-Satz gehoert der
  **Erst**-Offertanfrage, nicht der praezisierten Zweitanfrage im laufenden Verfahren
  (Familie 260818) sowie die fuenfte Gestalt des kanaloffenen Schlusses [[stimme]].
- **Nur im Artikel-Fliesstext:** «Lieber Gruss, Raphael» einzeilig bei zwei Mobilmails an
  dieselbe Empfaengerin (vierter Gegenbeleg gegen die Gattungs-Achse, Entscheid offen); die
  Trajektorie haftet am **Vorgang**, nicht an der Person (elf Tage, gewechselter
  Ansprechpartner, «Sehr geehrter Herr» → «Geschaetzte Frau»); zwei Bitte-Stufen in EINEM
  Absatz, je Gegenstand geschaltet.
- **Nicht-Marker festgehalten:** das Komma nach der Einzel-Anrede traegt keine Bedeutung
  (gleiche Empfaengerin, gleiche Stufe, gleiches Geraet, einmal mit, einmal ohne).
- **[[QUESTIONS]] 260826b #1–#6** ergaenzt: Sperre AG-Strang · dritte Gruss-Frage (mit 260824b #1
  und 260825b #1 **gemeinsam** zu beantworten) · Nicht-Marker Komma · Registerluecke Undine Hofer
  geschlossen · Praezisierung der Satzlaengen-Pruefaufgabe (Stichprobe muss **Fliesstext** sein;
  204 W von 500) · Nivellier-Zaehler elfter Beleg dagegen.
- **`rules/anrede-kontakte.md`:** Zeile **Undine Hofer** nachgetragen (Du, Wartstrasse 8), mit
  Belegkante nach der Praxis der Batch-99/100-Zeilen. Kein Regel-Wortlaut geaendert.
- **Gehirn neu kompiliert** — erster Versuch ABBRUCH bei 35'901 B, nach **fuenf**
  Verdichtungsrunden kompiliert bei **33'965 B (35 B Reserve)**. Ausschliesslich Beleg-Prosa
  gegenfinanziert, keine Regel geloescht; `git diff --numstat` nativ per ssh gegengeprueft,
  jede Loeschung zeilengenau eine bewusste Verdichtung. **⚠ Die Reserve ist acht Tage nach der
  Anhebung auf 34'000 B wieder aufgebraucht** — vorgelegt, nicht selbst entschieden.
- **Methodik-Befund:** der Korpus ist dichter abgeerntet, als die Batch-Tabelle zeigt.
  Nachbarbatches greifen ueber die Previews in fremde Fenster; sechs naheliegende Kandidaten
  waren verbraucht, darunter das scheinbar offene Fenster 07.–11.05.2026. **Der belastbare Test
  ist die Phrasenprobe gegen `wiki/` UND `outputs/`, nicht die Fenster-Tabelle.**
- **Werkzeug-Befund:** `stilmetrik.py` misst an LV-artigen Mails die **Gattung**, nicht die
  Stimme (30.7 W an Gold B, weil Listenpositionen ohne Satzzeichen zu Saetzen verklebt werden;
  Fliesstext-Anteil ~14 W). Bewusst **nicht** geaendert — eine Listenerkennung mitten in einer
  laufenden Messreihe waere eine Aenderung am Messgeraet.
