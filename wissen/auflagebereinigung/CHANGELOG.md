# CHANGELOG — Wissensbasis Auflagebereinigung

Jede Änderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-09-01 (Health-Check Phase 1, unbeaufsichtigt) — A0 · B0 · C1 · D0 · E0 · F1 · G2

Health-Check-Report abgelegt: `outputs/2026-09-01_health-check.md`. Frontmatter-Behoebung vom 26.08. bestätigt fehlerfrei; jedoch ae/oe/ue-Anteil im Text von `gvz-einreichung-bma-sprinkler.md` noch unbehoben (Schreibregel F1). `brandschutz-auflagen-qss.md` generische VKF-RL-Quellen ohne Norm-Nummern (Audit C1). `fristenlogik-bauentscheid-zh.md` reif für Promotion zu `established`. PDF-Annotations-Extraktionsmethode (G-Rücklauf) zweifach belegt, aber nie ins Wiki überführt. Phase 2 nicht ausgeführt.

## 2026-08-26 (Wissens-Chef Run 44) — Fassungs-Nachtrag: der Zeiger auf das BMA-Destillat führt auf einen `superseded`-Stand

Eingriff in `wiki/gvz-einreichung-bma-sprinkler.md`, Querbezug-Block (+11/−0, rein additiv).

Der Artikel verweist für die Anmeldeschwellen (BMA >10 Melder oder 600 m²; SPA >10 Sprinkler oder
100 m²) und die Ausserbetriebsetzungs-Frist auf `wissen/normen/destillate/vkf-brl-20-15-brandmeldeanlagen`.
Dieses Destillat trägt seit dem Fassungs-Sweep der KB `normen` (Run 58, 20.08.2026) `status:
superseded` mit dem Vermerk «Nicht als geltende Fundstelle zitieren» — destilliert ist die Fassung
01.01.2015, geltend ist **01.01.2017**. Der Cross-Check dieses Paars war seit dem 20.07.2026 (Run 10)
als «bereinigt + verlinkt» geschlossen und wurde seither nicht wieder aufgerufen.

**Materiell ändert sich nichts:** das Fassungs-Delta `vkf-brl-20-15-fassung-2017-delta` (23.08.2026)
grenzt die Änderung auf **Ziff. 3.2.2** ein (IOTH-Beschluss 22.09.2016, «Ausgenommene Bereiche»); die
hier zitierten **Ziff. 4.1 / 3.10** sind unverändert. `vkf-brl-19-15-sprinkleranlagen` ist weiterhin
`established (verifiziert)`. Der Nachtrag ordnet das ein, damit ein Bauleiter, der für eine
fristgebundene GVZ-Auflage (2619 KISPI Ziff. II.25/26) dem Link folgt, die Warnung dort nicht als
Ungültigkeit der Schwelle liest.

Beleg: `wissen/koordination/outputs/2026-08-26_wissens-chef-run44.md`.

## 2026-08-25 — Wissens-Chef Run 43: die drei Audit-Befunde waren alle drei Werkzeug-Artefakte

Der `wissenscheck` meldete am 01.08., 03.08. und 25.08. denselben «toten Backlink
`[[[fristenlogik-bauentscheid-zh]]` in `aemter-stadt-zuerich.md`» und ein «Frontmatter ohne
sources:». **Beide Befunde waren keine inhaltlichen Mängel:**

- Der Zielartikel `wiki/fristenlogik-bauentscheid-zh.md` existiert seit je. Die `links:`-Zeile
  schrieb die Wiki-Links in eine zusätzliche YAML-Listenklammer (`links: [[[a]], [[b]], pfad]`),
  wodurch `tools/wiki-konsistenz.sh` `[[[fristenlogik-bauentscheid-zh]]` als Linknamen las. Hubweit
  schreiben 65 Artikel die Form ohne äussere Klammer; nur zwei Dateien wichen ab. Notation angeglichen
  (1/1, Zeilenzahl 71/71).
- `wiki/gvz-einreichung-bma-sprinkler.md` trug seine drei GVZ-Weisungen unter dem Schlüssel
  `quellen:` statt `sources:`. Die Quellen waren also vollständig da, nur unter dem falschen
  Feldnamen (hubweit: 296 Dateien `sources:`, 3 `quellen:`). Schlüssel angeglichen (1/1, 105/105),
  Inhalt unverändert.

Die KB ist damit erstmals seit dem 01.08. befundfrei (`tools/wiki-konsistenz.sh auflagebereinigung`).
**Lehre für die Aufsicht: ein Befund, der dreimal unverändert wiederkehrt, ist zuerst am Werkzeug zu
prüfen, nicht an der KB.** Phase 2 des `wissenscheck` läuft nur interaktiv — die Befunde lagen darum
drei Wochen, obwohl beide in zwei Minuten behebbar waren.

## 2026-08-25 (Nachtschicht Mac Mini, Wissenscheck Phase 1) — A0 · B2 · C1 · D0 · E0 · F2 · G2

- Health-Check-Report abgelegt: `outputs/2026-08-25_health-check.md`. Prioritaet 6 gewaehlt,
  weil diese KB unter allen KBs ohne aktiven Taktgeber das aelteste Health-Check-Datum
  (08-03) und den aeltesten inhaltlichen Wiki-Stand (29.07.) trug. Kernbefund: der tote
  Backlink `[[[fristenlogik-bauentscheid-zh]]` in `aemter-stadt-zuerich.md` und der hohe
  ae/oe/ue-Anteil in `gvz-einreichung-bma-sprinkler.md`/`formular-verifizierung.md` stehen
  jetzt im DRITTEN Audit in Folge unveraendert (01.08./03.08./25.08.) — Phase 2 laeuft nur
  interaktiv und wurde seither nie angestossen. Neu erkannt: die zweifach belegte
  PDF-Annotationen-Extraktionsmethode (31.07./03.08.) wurde nie ins Wiki uebernommen, obwohl
  bereits doppelt als `[[behoerdenantwort-in-pdf-kommentaren]]` verlinkt — der Artikel
  existiert nicht. `fristenlogik-bauentscheid-zh.md` als Promotion-Kandidat
  `emerging`→`established` identifiziert. Phase 2 (Aktionen) nicht ausgefuehrt —
  unbeaufsichtigter Lauf.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B2 · C1 · D0 · E0 · F1 · G2

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Zwei B-Befunde: toter Backlink `[[[fristenlogik-bauentscheid-zh]]` (Klammer-Tippfehler) in `wiki/aemter-stadt-zuerich.md`, `wiki/gvz-einreichung-bma-sprinkler.md` ohne `sources`. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-03 (Wissens-Rücklauf aus dem Hub-Chef-Lauf 22:07, Fall 2619 KISPI)

- Report abgelegt: `outputs/2026-08-03_flachgelegte-planmarkierungen-seiten-diff.md`. Härtere
  Variante des Musters vom 31.07.: die Bemerkungen der Feuerpolizei sind **keine
  PDF-Annotationen**, sondern in die Seiten eingebrannt (`/Annots` kommt im Dokument nicht vor).
  Gefunden über Grössenvergleich gegen die eigene Abgabefassung (+10'972 Bytes) und
  seitenweisen Render-Diff (`pdftoppm` 60 dpi, Hash je Seite): 7 von 15 Blättern markiert,
  die beiden Türblätter byte-identisch und damit nachweislich unbeanstandet. Drei Lehren:
  ein fehlender Annotationsbefund ist kein Nullbefund; die archivierte eigene Abgabefassung
  ist das Prüfmittel; zwischen «abklären» und «schriftlich bestätigen lassen» liegt die
  Auflage. Verlinkt an [[behoerdenantwort-in-pdf-kommentaren]].

## 2026-08-03 (Wissens-Rücklauf aus dem Logbuch-Radar, Fall 2619 KISPI)

- Report abgelegt: `outputs/2026-08-03_srz-genehmigung-ziff18-19-und-ugz-strang.md`. Drei belegte
  Befunde zur Behördenpraxis Stadt Zürich: (1) die Feuerpolizei schliesst Auflagen mit einem
  Genehmigungsschreiben an den Brandschutz-Fachplaner ab, dessen materieller Gehalt
  ausschliesslich in den PDF-Anmerkungen steht (zweifach belegt, Ziff. 16 am 31.07. und
  Ziff. 18/19 am 03.08.); (2) eine UGZ-Stellungnahme kann drei Wochen beim Fachplaner liegen
  bleiben, ohne den Architekten zu erreichen — der Auflagen-Tracker darf sich bei
  Gebäudetechnik-Fachbereichen nicht auf den eigenen Posteingang verlassen; (3) schriftlich
  gezogene Rollenabgrenzung Brandschutz gegen Lüftungsplanung (Lüftungsabschnittsflächen, BSK,
  Transitdämmungen sind Leistung des Lüftungsplaners). Dazu der belegte Verfahrensweg des UGZ
  mit Stichtag 31.12.2025 (davor Stadt-Upload, danach kantonales Tool EVEN) und der
  Ausschliesslichkeit von EN-105 für Lüftungsnachweise. Eine offene Frage in `wiki/QUESTIONS.md`
  ergänzt. Kein Wiki-Artikel umgebaut.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D0 · E0 · F46 · G2

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. Dreifach-Klammer-Tippfehler in `aemter-stadt-zuerich. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-31 (Hub-Chef) — Der materielle Gehalt einer Behördenantwort kann vollständig in PDF-Kommentaren stecken
- **[neuer Report, methodisch] `outputs/2026-07-31_behoerdenantwort-in-pdf-kommentaren.md`** aus dem
  Beleg M. Gantenbein (SRZ) vom 31.07.2026 07:59 zur Auflage Ziff. 16 des BE 1171/26, Projekt 2619
  KISPI: der Mailtext besteht aus drei Sätzen und verweist mit «siehe Anhang» auf **16 PDF-Annotationen**
  (5 mit Text, 3 Stempel «Frage») in der Stellungnahme Brandschutz. Wer das PDF nur ablegt oder nur
  seinen Fliesstext liest, verliert die Auflage vollständig. **Konsequenz für Schritt 1 des Skills
  (`auflagen-extraktor`): die Annotationsebene programmatisch auslesen** (`pypdf`, `/Annots` →
  `/Contents` + `/T`), nicht visuell durchsehen — Freitextfelder liegen im Layout über dem Fliesstext
  und landen in der reinen Textextraktion mitten in fremden Absätzen.
- **[Verfahrenslehre] Ein unveränderter Rückversand ist selbst ein Befund.** Der mitgeschickte
  Brandschutzplan war byte-identisch (SHA1) mit dem eingereichten — der technische Beleg für «keine
  Anmerkungen mehr». Umgekehrt heisst abweichende Prüfsumme bei gleichem Dateinamen: das Dokument
  trägt neue Information und darf nie unter dem Originalnamen abgelegt werden.
- **[Fachbezug, als Lesart markiert] «Art. 12»** in drei Kommentaren aufgelöst über die Normen-KB:
  Art. 12 VKF-BSN 1-15de:2015 = **Nachweisverfahren**, geprüft auf Vollständigkeit,
  Nachvollziehbarkeit und Plausibilität — wörtlich die drei Kriterien des Mailtexts. Ob die Behörde
  damit die Deklaration als Nachweisverfahren statt als Standardkonzept nach Art. 10 verlangt, ist
  **nicht** festgestellt, sondern von Gruner bei der Behörde zu klären. In QUESTIONS aufgenommen.

## 2026-07-31 (Logbuch-Radar) — Möblierung im Fluchtweg ist ein eigener Verfahrensstrang, nicht Teil des Bauentscheids
- **[neuer Report, materiell] `outputs/2026-07-31_moeblierung-fluchtweg-srz-praxis.md`** aus dem
  Beleg M. Gantenbein (SRZ) vom 30.07.2026, Projekt 2619 KISPI: Anpassungen bei Einrichtung und
  Möblierung, die Fluchtwege tangieren, **erfordern eine eigene Planeingabe und eine eigene
  Verfügung** und werden bilateral mit der Feuerpolizei abgehandelt, nicht über den laufenden
  Bauentscheid (hier ausdrücklich aus BE 1171/26 herausgelöst); situative Weiterleitung an die GVZ.
- **[Kostenrelevanz] Klassierungs-Fallstrick belegt:** DIN 4102 und Ö-Norm 3800 werden **nicht**
  anerkannt, massgeblich ist allein SN EN 13501-1 — trifft Möbel- und Textillieferanten aus DE/AT,
  deren Nachweise deshalb VOR der Bestellung zu prüfen sind. Dazu die vier Bewilligungsvoraussetzungen
  (1.2 m Durchgangsbreite, Materialisierung vorhanden, RF2 mehrschichtig mit Nachweis für sämtliche
  Schichten, schriftliche Begründung als PDF) und der Grundsatz BSN Art. 37 / BSR 16-15 Ziff. 2.2.
- **[Verfahrenslehre] Eine Zustellform-Auskunft der einen Amtsstelle bindet die andere nicht.** Die
  am 28.07. auf AfB-Auskunft gewählte WeTransfer-Zustellung wurde von der Feuerpolizei gerügt; bei
  Unterlagen im laufenden Baubewilligungsverfahren zusätzlich über eBaugesuch einreichen. Verbindet
  sich mit dem am 29.07. dokumentierten Zuständigkeitswechsel (AfB Team 5).
- **[offen]** Ab welcher Eingriffstiefe eine Möblierung als «Fluchtweg tangierend» gilt, ist im Beleg
  nicht abgegrenzt → QUESTIONS.

## 2026-07-29 (Wissens-Chef Run 20, Cross-KB) — die seit 04.06. offene Kontaktstellen-Luecke hat ihren ersten belegten Fall
- **[verlinkung, materiell] `wiki/aemter-stadt-zuerich.md` fuehrte AfB und UGZ ohne Kenntnis eines
  belegten Zustaendigkeitswechsels,** waehrend `projekt-lessons` den Fall seit dem 29.07. dokumentiert
  (KISPI 1171/26): Gebiet Weinegg neu **AfB Team 5**, und beim UGZ eine **Sonderzustaendigkeit nach
  Groesse der Einrichtung**. Die eigene Luecke stand hier seit dem **04.06.** offen ausgewiesen
  («Direktnummern/Kontaktpersonen je Amt → sammeln»), in keine Richtung verlinkt. Bidirektional
  verlinkt.
- **[wie eingetragen, und warum so] Die Namen erscheinen NICHT als generische Amtszustaendigkeit,**
  sondern nur als **datierter, gebiets-/fallbezogener Stand** (Muster «Gebiet Weinegg, u.a.
  Lenggstrasse 30: Team 5, Ansprechperson …, Stand 27.07.2026»). Der Artikel ist ausdruecklich
  generisch angelegt; ohne diese Form haette die KB eine veraltete Personenangabe gegen die naechste
  getauscht — genau der Fehler, vor dem die Lesson warnt.
- **[offener punkt erweitert]** Der Kontaktstellen-Punkt in `wiki/QUESTIONS.md` traegt jetzt den
  Zusatz, dass **Kontaktpersonen ein Verfallsdatum haben** und ein Kontakt-Artikel ohne
  Stand-Datierung sich selbst entwertet.
- Geaendert: `wiki/aemter-stadt-zuerich.md`, `wiki/QUESTIONS.md`.


## 2026-07-27 — Wissens-Chef Run 17 (Cross-KB): die einzige gesetzliche Frist des Bauentscheids fehlte ganz
- **[korrektur, materiell] Rekursfrist 30 Tage ergaenzt.** `wiki/fristenlogik-bauentscheid-zh.md` ist die Frist-Wahrheit dieser KB (eigene Spalte der Plan-/Dokumentenliste), listete aber sechs Einreichungszeitpunkte und **keine einzige gesetzliche Frist**. Ein grep ueber die ganze KB nach «Rechtsmittel», «anfechten», «Anfechtung» und «Rechtsschutz» lieferte **0 Treffer**. Fehlend: «Der Rekurs ist innert 30 Tagen bei der Rekursinstanz schriftlich einzureichen» (§ 22 Abs. 1 VRG, LS 175.2, Nachtrag 133; Fristenlauf ab dem Tag nach der Mitteilung, Abs. 2), Rekursinstanz ist direkt das **Baurekursgericht** (§ 329 Abs. 1 PBG, kein gemeindeinternes Einspracheverfahren nach § 315 Abs. 3 PBG), Verwirkung nach § 316 Abs. 1 PBG. **Materiell: wer Auflagen nur «bereinigt», akzeptiert sie faktisch — die Frist laeuft parallel, und Verhandeln mit dem Amt oder ein Wiedererwaegungsgesuch hemmt sie nicht.** Ebenfalls gefehlt hat der Zusammenhang, der die Spalte «vor Baubeginn» ueberhaupt lesbar macht: aufschiebende Wirkung nach § 25 Abs. 1 VRG, beschraenkt durch § 339 Abs. 1 PBG, mit moeglicher **Teilfreigabe** (Abs. 2). Dazu die zweite fehlende Frist: Erloeschen der Bewilligung nach drei Jahren (§ 322 PBG). Fuehrend: `wissen/baurecht/wiki/rechtsschutz-und-rechtsmittelverfahren` (established, gegen VRG-Nachtrag 133 verifiziert).
- **[korrektur] Frist-Gate vor Schritt 1 gesetzt.** In `wiki/vorgehen-auflagebereinigung.md`: je Auflage zuerst entscheiden, ob sie **abgearbeitet oder angefochten** wird — vor der Gewerk-Zuteilung, nicht danach.
- **[frontmatter]** `sources` um § 22 VRG und PBG §§ 315/316/322/329/339 ergaenzt, `last_updated` nachgezogen.
- Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run17.md`.

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB): Erst-Verlinkung zu `projekt-lessons`
- **[verlinkung] `wiki/brandschutz-auflagen-qss.md`** fuehrt fuer Projekt 2619 KISPI die Auflagen-Zeile «Detailplaene brandschutzrel. Innenwaende (Material/Aufbau), II.19» — die inhaltliche Substanz genau dieses Deliverables ist in `wissen/projekt-lessons/wiki/kispi-lbw-rohdichte-800.md` belegt (Rohdichte 800 kg/m3, Beweiskette Bestands-LV → EN-520-Typ-D-Spezifikation → QS-Korrektur Ziegel), ohne dass sich die beiden Artikel kannten. → bidirektional verlinkt mit klarer Rollentrennung: diese KB fuehrt Auflagen-Ziffer, Amt und Frist; `projekt-lessons` die Beweiskette der Material-Substanz; `normen` die Norm-/VKF-Kennwerte.
- Bericht: `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-24 — Wissens-Health-Check Phase 1 (Nachtschicht Mac Mini, unbeaufsichtigt)
Dispatch-Priorität 6 (älteste Audit-Datei, 21.07., alle anderen Mac-Mini-Prioritäten heute
Nacht bereits erschöpft). 7-Audits-Katalog auf alle 7 Wiki-Artikel: A0 · B1 (Orphan
`formular-verifizierung.md`, kein Backlink aus dem Fliesstext) · C0 · D1 (`raw/_INGESTED.md`
seit Gründung nicht nachgeführt, 3 neuere Primärquellen fehlen im Register: BE 1171/26
definitiv, EN-105/EN-110-ZH-Originale, GVZ-Weisungen 20.07/20.08) · E0 · F1 (schwerwiegend:
`gvz-einreichung-bma-sprinkler.md` durchgängig in ASCII-Umlauten ae/oe/ue statt ä/ö/ü, ~40+
Fundstellen, plus abweichendes Frontmatter-Schema `quellen/herkunft` statt `sources/links`)
· G4 (vier `emerging`-Artikel Promotion-Kandidaten zu `established`, da ihre gemeinsame
Quelle Vorabzug seit 22.07. als deckungsgleich mit dem rechtskräftigen Entscheid BE 1171/26
bestätigt ist — Einschränkung: bislang nur ein Projekt/eine Stadt als Beleg). Reine
Audit-Phase, keine Datei verändert (Phase 2 nur interaktiv). Report:
`outputs/2026-07-24_health-check.md`.

## 2026-07-22 — Wissens-Chef Run 12 (Cross-KB): SIA-181-Fassungs-Vorbehalt gesetzt
- [ergänzt] `wiki/auflagentypen-gewerkzuteilung.md`: an der SIA-181-Federführungs-Sektion einen
  Fassungs-Vorbehalt eingefügt — die Ziff.-Referenzen (4.2/4.3/4.4, 2.2.3/2.2.4) beziehen sich auf
  **SIA 181:2006**; in der KB `normen` ist **SIA 181:2020** als neuere Ausgabe geflaggt (Re-Destillat
  ausstehend). Bei dessen Landung sind die Ziffern-Verweise gegenzuprüfen. Kein Kennwert-Widerspruch
  festgestellt (auflagebereinigung zitiert nur die Ziffer-Struktur, keine dB-Werte; Rollen-Grenze zu
  normen sauber eingehalten). Bericht: `wissen/koordination/outputs/2026-07-22_wissens-chef-run12.md`.

## 2026-07-22 — Zwei QUESTIONS-Lücken 2619-KISPI geklärt (Primärquelle gelesen, Mac Mini Nachtschicht ~20:30)
- [geklärt] **Adressdiskrepanz Lenggstrasse/Lengstrasse.** Der Health-Check vom 21.07. hatte
  zurecht bemängelt, dass der frühere «geklärt»-Vermerk (01.07.) zwei verschiedene
  Adressthemen verwechselt hatte. Jetzt das Dispositiv selbst gelesen (Bauentscheid 1171/26
  vom 8. Juni 2026, Geschäfts-Nr. B26-00705.01): Titel und Bauherrschaftsadresse lauten
  beide «Lenggstrasse 30» (Doppel-g), deckungsgleich mit der GRUNER-Adressliste. Vereinzelte
  Dateinamen mit Einzel-g sind Benennungsvarianten, nicht der Dispositiv-Wortlaut.
- [geklärt] **Vorabzug vs. rechtskräftiger Entscheid.** Der definitive BE 1171/26 liegt seit
  13.06. vor; der dort dokumentierte Diff bestätigt keine materiellen Änderungen gegenüber
  dem Vorabzug. Fall ist damit nicht mehr «nur Vorabzug».
- Beide Punkte von QUESTIONS.md «Offen» nach «Geklärt (archiviert)» verschoben, mit
  Primärquellen-Pfad belegt (kein Raten, echte PDF-Lektüre statt Sekundär-Zitat).

## 2026-07-22 — QUESTIONS-Lücke geklärt: Schallschutz SIA 181 Federführung (Mac Mini Nachtschicht)
- [geklärt] **Schallschutz SIA 181 (Ziff. II.10) — Federführung** gegen das Normen-Destillat
  `wissen/normen/destillate/sia-181-2006.md` geprüft (Ziff. 4.2/4.3 Bauteile vs. Ziff. 4.4
  Geräusche haustechnischer Anlagen). Ergebnis: SIA 181 weist keine Federführung zu — die
  bestehende Praxisregel in [[auflagentypen-gewerkzuteilung]] («Bauteile → ARC/Bauphysik;
  haustechnische Anlagen → HLK») war richtig, aber unbelegt; jetzt mit Fundstellen und einer
  Faustregel (Bauphysiker im Team → gesamthaft federführend für Ziff. 4) präzisiert. Artikel
  `sources` um das Normen-Destillat ergänzt, `last_updated` auf 2026-07-22. QUESTIONS.md-Punkt
  ins Archiv verschoben.

## 2026-07-21 — Phase-2-Fix aus dem Nacht-Audit (Dauerschicht-Zyklus 37)
- [korrigiert] **SPA-Gewerk-Widerspruch behoben** (Top-1 des Health-Checks 21.07., offen seit
  dem Check vom 01.07.): `brandschutz-auflagen-qss.md` führte «SPA = SAN», massgeblich ist seit
  dem Split vom 04.06. **SPR** (eigener Sprinklerplaner, Fall 2619: JOMOS; nur ohne eigenen
  Sprinklerplaner SAN). Zeile an [[auflagentypen-gewerkzuteilung]] angeglichen — beide Artikel
  sind jetzt konsistent.

## 2026-07-21 — Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht)
Audit A–G, Report `outputs/2026-07-21_health-check.md`. Ampel: B/C grün, D/E/G orange, A/F rot.
Top-Finding: der am 01.07. gefundene SPA=SAN/SPR-Widerspruch (`brandschutz-auflagen-qss.md`
Z. 50 vs. `auflagentypen-gewerkzuteilung.md`) ist 20 Tage später unverändert unkorrigiert,
obwohl die Datei am 20.07. für den GVZ-Cross-Link bereits geöffnet/editiert wurde. Neuer
schwerer Befund: `formular-verifizierung.md` (0 echte Umlaute) und der heute frisch erstellte
`gvz-einreichung-bma-sprinkler.md` (MacBook-Pro-Dauerschicht-Zyklus 21) sind fast vollständig
in ae/oe/ue statt ä/ö/ü geschrieben — Hinweis, dass die um 06:30 behobene Locale-Ursache
(training-energie/-plg/synobsis-batch) mutmasslich nicht jeden Erzeugungspfad abdeckt, auch
die MacBook-Dauerschicht-Kette scheint betroffen. Zusätzlich: einer der beiden am 01.07. als
"geklärt" gemeldeten QUESTIONS-Punkte (Adressdiskrepanz Lenggstrasse/Lengstrasse) erweist sich
bei Gegenprüfung als **nicht** durch den zitierten Beleg gedeckt — bleibt echt offen. Nichts
selbst korrigiert (Phase 2 nur interaktiv).

## 2026-07-20 — Wissens-Chef Run 10 (Cross-KB): GVZ-Artikel an normen-Fundstellen angebunden
- [link] `wiki/gvz-einreichung-bma-sprinkler.md`: Querbezug-Block «KB normen» — die aus den
  GVZ-Weisungen gespiegelten Anmeldeschwellen (BMA >10/600 m², SPA >10/100 m²) und die
  Ausserbetriebsetzungs-Frist sind norm-geführte Fundstellen (**VKF-BRL 20-15 Ziff. 4.1/3.10**,
  **19-15 Ziff. 5.1/4.4**); normen-Destillate als führend markiert, dieser Artikel führt den
  kantonalen GVZ-Vollzug.
- [link] `wiki/brandschutz-auflagen-qss.md`: reziproker Backlink im GVZ-Abschnitt (II.25/II.26) auf
  `[[gvz-einreichung-bma-sprinkler]]`. Cross-KB bestätigte: **0 Widerspruch, 0 Doppelspur** zwischen
  planungsgrundlagen/auflagebereinigung; die neuen §5ao/§5ap (pg) schreiben keine VKF-Ziffern fort.
  Bericht: `koordination/outputs/2026-07-20_wissens-chef-run10.md`.

## 2026-07-20 — Neuer Artikel: GVZ-Einreichungsweg BMA/Sprinkler (Dauerschicht-Zyklus 21)
- [neu] [[gvz-einreichung-bma-sprinkler]] — QUESTIONS-Punkt «GVZ-Einreichungsweg
  BMA/Sprinkler» (Ziff. II.25/II.26 Bauentscheid 2619-KISPI) geschlossen. Quellen an
  den Primärdokumenten gelesen: GVZ-Weisung 20.07 Brandmeldeanlagen (Volltext, 27 S.)
  und 20.08 Sprinkleranlagen (Kap. 5–7). Kernpunkte: Projektbegutachtung VOR
  Ausführungsbeginn durch VKF-Fachfirma (BMA-Schwelle >10 Melder/600 m²; SPA >10
  Sprinkler/100 m², inkl. Vorabklärung/Nutzungsplan/Hydraulik), Installations-Attest
  vor Abnahme, GVZ = Brandschutzbehörde UND Inspektionsstelle, ELZ-Aufschaltung nach
  Weisung 30.25, Ausserbetriebsetzung >24 h mit 3-Tage-Vorlauf + Genehmigung,
  Kontrollturnus Risikogruppe 1 (Spitäler/Pflegeheime) = 5 Jahre, GVZ-Prüfungen
  kostenlos. Transfer-Abschnitt für die Deliverable-Zuteilung ergänzt.
- [index] INDEX.md ergänzt; QUESTIONS.md Punkt ins Archiv überführt (offen bleiben
  30.25-Destillat und Portal-Frage, im Artikel vermerkt).

## 2026-07-12 — Wissens-Chef Run 2 (Cross-KB): Querbezuege zu baurecht + Baubeginn praezisiert
- [link] [[fristenlogik-bauentscheid-zh]] -> baurecht `nebenbestimmungen-und-reverse` (Rechtsnatur § 321 PBG) + `bauausfuehrung-und-baukontrolle` (Baufreigabe § 326 / Meldepflichten § 327 / § 23 BVV). [[aemter-stadt-zuerich]] -> baurecht `baubewilligungsverfahren` (§ 318/§ 329, Wer-Adressat).
- [praezisiert] [[fristenlogik-bauentscheid-zh]]: «vor Baubeginn = vor erstem Spatenstich» ergaenzt um juristische Definition **Aushubbeginn** (Abstecken/Installation kein Baubeginn, § 326 PBG / RB 1994 Nr. 88). Cross-KB-Fund W1 adversarial WIDERLEGT (nur Praezisionsstufe, kein Sachwiderspruch) — Praezisierung statt Korrektur.

## 2026-07-01 — Wissens-Health-Check (Phase 1, Audit) durchgeführt

- Audit A–G, Report `outputs/2026-07-01_health-check.md`. Ampel: B/C/D/F grün, A/E/G orange.
  Top-Findings: (1) Widerspruch SPA=SAN (brandschutz-Artikel) ↔ SPA=SPR (Zuteilungs-Artikel,
  seit 04.06. gesplittet); (2) 2 QUESTIONS faktisch geklärt (Vorabzug↔def. BE 1171/26,
  Adressdiskrepanz) noch als offen gelistet; (3) Einreich-Aufstellung (Output 13.06.) noch nicht
  ins Wiki gehoben. Nur Phase 1 — keine Wiki-Änderungen; Aktionen bleiben Phase 2 (interaktiv).

## 2026-06-13 — Einreich-Aufstellung (Formulare/Eingaben je Amt) 2619-KISPI

- Neues Deliverable, Gegenstück zur Plan-/Dokumentenliste: **Einreich-Aufstellung**
  gegliedert nach Eingabe-Adressat (Amt) mit klickbarer Spalte Bezugsquelle/Plattform.
  Generator `tools/build_einreichaufstellung.py`; 25 Eingaben in 7 Amts-Gruppen
  (UGZ/FP/GVZ/AfB/SRZ/Bauinstallation/Baustelle-Umwelt). XLSX+PDF doppelt abgelegt.
- Grundlage definitiver BE 1171/26 (08.06.2026); Diff zum Vorabzug: keine materiellen
  Auflagenänderungen (Ziffern-Schnellabgleich), Energie-Zuordnung II.8 a/b/c wörtlich.
- Bezugsquellen am 13.06. live verifiziert (EN-110-ZH-PDF, EVEN, UGZ-/Baustellen-Luft-Kanal,
  GVZ, VKF; Connector-URLs Brandschutz-Zusatzformular 3 + Baumfällung). EN-ZH/EN-105 laufen
  seit 01.01.2026 über EVEN (kein Einzel-PDF mehr).
- Output-Begleitnotiz `outputs/2026-06-13_2619-kispi-einreich-aufstellung.md`.

## 2026-06-12 — Definitiver Bauentscheid BE 1171/26: Formular-Zuordnung bestätigt

- `formular-verifizierung.md` auf `status: established` gehoben: Zuordnung II.8.a→EN-ZH/EVEN,
  II.8.b→EN-105 (Lüftung), II.8.c→EN-110-ZH (Kühlung/Befeuchtung) am definitiven Bauentscheid
  **BE 1171/26** (B26-00705.01, 08.06.2026) wörtlich UND an den Formular-Original-PDFs verifiziert.
- Neues Lehrstück ergänzt: Formular-Ordner im Projekt waren **vertauscht beschriftet**
  (II.8b-Ordner enthielt EN-110-ZH, II.8c-Ordner EN-105) — Ordnernamen sind keine Quelle.
- Stammdaten für die Formulare amtlich beschafft (Fall 2619): EGID **302064023** (GWR),
  Parzelle **RI5416** / EGRID CH267999915472 (geo-zh.mjs), Gebäudevers.-Nr. **RI02972**
  (Baugesuchsformular). Arbeitsstand-Datei im Projektordner nachgeführt.
- Befund: HLK-Fachdaten (Lüftungsprojekt Neu) fehlen weiterhin — EN-105/EN-110-ZH ohne
  Planerdaten nicht ausfüllbar; nur Abbruchplan in `33.02_GRUNER/03 HLK/` vorhanden.

## 2026-06-10 — Muster «Auflage → amtliches Formular (verifiziert, nie geraten)»
- **Neuer Artikel** `wiki/formular-verifizierung.md` (emerging): Verifizierungs-Muster für
  Formular-/Nachweisnummern. Seed = Lehrstück KISPI 2619 Ziff. II.8 — ein Sub-Agent hatte
  plausible, aber falsche Energieformular-Nummern erfunden; KB-Abgleich (`wissen/energie`) +
  amtliche ZH-Quellen korrigierten auf **II.8.a → EN-ZH**, **II.8.b → EN-105**,
  **II.8.c → EN-110-ZH**. Enthält den 4-Schritt-Workflow (wörtlich extrahieren → als
  «zu verifizieren» markieren → gegen Fach-KB auflösen → sonst QUESTIONS) + wachsende
  Zuordnungstabelle.
- **Agent `auflagen-extraktor` geschärft** (NAS): neuer Arbeitsschritt 6 «Formular-/
  Nachweisnummern NIE erfinden» — nur wörtliches Schlüsselwort + Ziffer extrahieren,
  Nummer nur bei wörtlicher Nennung übernehmen, sonst «zu verifizieren»; Verweis auf den
  neuen Artikel. Verschärft Rule `identifikatoren-verifizieren`.
- **Register:** INDEX (+1 unter «Zuteilung»). Gegenstück-Vermerk in
  `wissen/energie/wiki/energienachweis-zh.md` (Fallanwendung KISPI).

## 2026-06-04 — Gewerk SPR (Sprinklerplaner) ergänzt

- `wiki/auflagentypen-gewerkzuteilung.md`: neues Kürzel **SPR — Sprinklerplaner**
  (Fall 2619: Tim Harder, JOMOS Brandschutz AG) in die Kürzel-Tabelle aufgenommen.
- Zuteilungs-Matrix gesplittet: **Sprinkleranlage (II.26) → SPR** (wenn eigener
  Sprinklerplaner beauftragt ist; sonst SAN); Sanitär-Leitungsabschottung bleibt **SAN**.
  Erkenntnis: Sprinkler ist häufig ein eigenes Gewerk (Brandschutz-Spezialfirma),
  nicht Teil der Sanitärplanung.
- Generator `skills/auflagebereinigung/tools/build_auflagenliste.py`: SPR als Rubrik
  ergänzt, Sprinkler-Zeile von SAN nach SPR verschoben; XLSX 2619-KISPI neu exportiert
  (45 Deliverables, 8 Rubriken).

## 2026-06-04 — KB angelegt (Seed aus Fall 2619-KISPI)

- KB `auflagebereinigung` erstellt (CLAUDE.md, Ordner raw/ wiki/ outputs/).
- Quelle eingearbeitet: Vorabzug Bauentscheid Stadt Zürich, Projekt 2619-KISPI
  «Neue Psychosomatische Therapiestation für Jugendliche», Lenggstrasse 30, 8008 Zürich
  (33 Auflagen + Vorbemerkungen Ziff. II.1–3, kant. Verfügung BVV 26-1211 vom 18.05.2026).
- Seed-Artikel erstellt:
  - `aemter-stadt-zuerich.md` (Adressaten und Zuständigkeiten)
  - `auflagentypen-gewerkzuteilung.md` (Thema → Gewerk BRA/HLK/SAN/ELE/FKO/ARC/BAU)
  - `fristenlogik-bauentscheid-zh.md` (Einreichungszeitpunkte, Vorbemerkungen-Mechanik)
  - `brandschutz-auflagen-qss.md` (QSS-Stufen, Übereinstimmungserklärung, Integral-Test)
  - `vorgehen-auflagebereinigung.md` (JANS-Standardprozess + Plan-/Dokumentenliste)
- Output abgelegt: `outputs/2026-06-04_2619-kispi-plan-dokumentenliste.md`
  (Begleitnotiz zur generierten XLSX-Liste mit 45 Deliverables).
- INDEX.md und QUESTIONS.md initialisiert.
