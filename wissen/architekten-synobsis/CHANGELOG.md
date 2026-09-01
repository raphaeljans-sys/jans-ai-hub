# CHANGELOG — architekten-synobsis

Tool-KB (Katalog statt Wiki): dieses Changelog protokolliert Laeufe, Blocker
und Strukturaenderungen. Der Gesundheits-Indikator ist der Scan-Fortschritt
(`synobsis_scan.py --status`), nicht die 7 Standard-Audits.

## 2026-09-01 (Mac Mini, Tagsschicht, Phase 1) — Wissens-Health-Check abgelegt

`outputs/2026-09-01_health-check.md` (Phase 1): Audits durchgefuehrt. THEMEN.md fehlt Frontmatter (1 B-Befund), Vektorindex am 01.09. 19:30 neu gebaut und mit documents.jsonl synchron, Scan saturiert seit 03.07. (853/853, 849 kuratiert), vier Katalog-Kollisionen + ein Tadao_Ando-Doppelordner dokumentiert, keine neuen Spannungen, 171 ae/oe/ue-Fehler unveraendert seit 03.08., Stilllegung `synobsis-batch-nacht` zu formalisieren (wo im Register?). Phase 2 nicht ausgefuehrt.

## 2026-09-01 (Mac Mini, Nachtschicht, Prioritaet 2) — Vektorindex neu gebaut, war seit 24.08. veraltet

`catalog/vectors.npz` stammte vom 24.08.2026, `catalog/documents.jsonl` (die eigentliche
Textquelle fuer die Embeddings) trug aber bereits 30 seither korrigierte Eintraege aus den
Schub-Lane-Folgelaeufen 25.-29.08. (u.a. mehrere der dort behobenen Fehlextraktionen und
Katalog-Kollisionen, siehe die Eintraege zu Christ_Gantenbein/Enzmann_Fischer/Miller_Maranta/
Gigon_Guyer und den Sonderzeichen-Slugs). Die semantische Suche arbeitete damit fuer diese
Faelle auf veraltetem, teils fehlerhaftem Text. `tools/synobsis_embed.py` neu gelaufen (kein
`--reindex`, nur Neu-Embedding des bestehenden `documents.jsonl` — kein Rescan der NAS-Quelle,
keine Veraenderung an Katalogdaten): `catalog/vectors.npz` jetzt 853 x 768, Stand 01.09.2026,
deckungsgleich mit den 853 Zeilen in `documents.jsonl`. Stichprobe via
`synobsis_query.py --semantic` liefert plausible Treffer. Offen bleiben zwei Katalogdateien
(`Aando_Tadao.json`/`Tadao_Ando.json`), die NACH dem letzten `documents.jsonl`-Stand (29.08.
21:15) nur um das additive Feld `duplikat_hinweis` ergaenzt wurden (Kreuzverweis zwischen den
zwei eigenstaendigen Katalogdateien derselben Person) — kein Text-Feld, daher keine Auswirkung
auf die Embedding-Qualitaet; ein voller `--reindex` bleibt weiterhin eine kapazitaetsabhaengige,
budgetsprengende Aufgabe fuer einen dedizierten Lauf, nicht fuer die Nachtschicht.

## 2026-08-30 (Mac Mini, Schub-Lane SYNOBSIS, achter Folgelauf) — Doppelordner Tadao_Ando/Aando_Tadao dokumentiert, weiterhin keine offene Position in den vier Prioritaeten

Eigener Grep-Durchgang bestaetigte vorab den Stand des siebten Folgelaufs (29.08.2026): alle vier
Auftragsprioritaeten (Fehlextraktion, Katalog-Kollision, Sonderzeichen-Zerlegung, Sammelfrage Charge 1-6)
tragen bereits BEHOBEN/GEPRUEFT/TEILBEHOBEN, `git status`/`git diff --numstat` fuer diesen KB-Pfad war
sauber. Eine Position aus `wiki/QUESTIONS.md` war jedoch in keinem der sieben Vorlaeufe abgehakt: Zeile 239,
Doppelordner **Tadao_Ando / Aando_Tadao**. Pruefung ergab: anders als die vier bereits geloesten
Kollisionsfaelle (Christ_Gantenbein, Enzmann_Fischer, Miller_Maranta, Gigon_Guyer, alle case-insensitive
Dateisystem-Kollisionen auf EINE Katalogdatei) existieren hier zwei vollstaendig eigenstaendige, intakte
Katalogdateien (Aando_Tadao.json: 2 Bilder, kein Text; Tadao_Ando.json: 29 Dateien inkl. Konferenzpavillon-
Textauszug) zu zwei verschieden benannten NAS-Quellordnern derselben Person — kein Datenverlust durch
stillschweigendes Ueberschreiben, daher kein direkter Merge nach demselben Muster moeglich, ohne eine der
beiden intakten Dateien zu loeschen. Als nicht-destruktive Zwischenloesung in beiden Dateien nur additiv
ein Feld `duplikat_hinweis` ergaenzt, das gegenseitig auf die andere Datei verweist (`git diff --numstat`:
je +1/-0 fuer beide JSON-Dateien, `wiki/QUESTIONS.md` +1/-1 rein anhaengend, alter Text vollstaendig als
Praefix erhalten). Das eigentliche Zusammenfuehren auf den laut Quelle korrekten Slug Ando_Tadao bleibt wie
bei den vier anderen Faellen eine NAS-Ordner-Freigabesache, hier zusaetzlich verschaerft durch die Frage,
welche der zwei intakten Dateien beim Merge weichen muesste — das entscheidet Raphael, nicht die Lane.
Empfehlung unveraendert wie in den Vorlaeufen: die vier zugewiesenen Prioritaeten sind erschoepft (ausser
Freigabesachen); ein neunter reiner Bestaetigungslauf zu denselben vier Prioritaeten ohne neue Fundstelle
bringt keinen Mehrwert mehr. Naechster sinnvoller Auftrag fuer die SYNOBSIS-Lane liegt ausserhalb dieser
vier Prioritaeten (Sektion 1/2 der leeren Ordner/Schreibfehler-Slugs explizit freigeben, oder Raphaels
Entscheid zu den NAS-Zusammenfuehrungen/zum produktiven `--reindex`-Lauf abwarten).

## 2026-08-29 (Mac Mini, Schub-Lane SYNOBSIS, siebter Folgelauf) — Bestaetigt: keine offene Position mehr in den vier Prioritaeten

Frische Session, eigener Grep-Durchgang: `wiki/QUESTIONS.md` auf alle vier Auftragsprioritaeten
durchsucht (Fehlextraktion, Katalog-Kollision, Sonderzeichen-Zerlegung, Sammelfrage Charge 1-6) —
jede Fundstelle traegt bereits BEHOBEN/GEPRUEFT vom heutigen Datum, alle sechs Sammelfrage-Chargen
sind vollstaendig einzeln recherchiert. Spotcheck gegen den SSD-Klon: `git status --short` und
`git diff --numstat` fuer `wissen/architekten-synobsis/` leer (sauberer Arbeitsbaum, in Sync mit
`origin/main`), die vier Kollisionsdateien (`Christ_Gantenbein.json` mit `quellordner: ["Christ
Gantenbein", "Christ_Gantenbein"]`, 11 Projekte, sowie Enzmann_Fischer/Miller_Maranta/Gigon_Guyer)
und die Sonderzeichen-Dateien (`Šuchov_Vladimir_...json`, `Tusquet_Oscar_Clotet_Lluìs.json`) liegen
korrekt im `catalog/`. Kein Katalog-JSON, kein `QUESTIONS.md`-Eintrag veraendert — reine Verifikation,
siebte unabhaengige Bestaetigung desselben Ergebnisses. Offen bleiben ausschliesslich Freigabesachen
(NAS-Ordner-Umbenennungen/-Zusammenfuehrungen der vier Kollisionsfaelle) und der kapazitaetsabhaengige
produktive `--reindex`-Lauf; beides liegt ausserhalb dieses Auftrags. Empfehlung unveraendert: weitere
Bestaetigungslaeufe zu denselben vier Prioritaeten bringen keinen Mehrwert mehr — der naechste Auftrag
fuer die SYNOBSIS-Lane sollte entweder Sektion 1/2 (leere Ordner, Schreibfehler-Slugs, nie Teil dieses
Auftrags) explizit freigeben oder auf Raphaels Entscheid zu den NAS-Zusammenfuehrungen/zum Reindex warten.

## 2026-08-29 (Mac Mini, Schub-Lane SYNOBSIS, sechster Folgelauf) — Bestaetigt: keine offene Position mehr in den vier Prioritaeten

Frische Session, eigener Grep-Durchgang statt Uebernahme des Vorlauf-Protokolls: `wiki/QUESTIONS.md`
auf alle vier Auftragsprioritaeten durchsucht (Fehlextraktion/Textauszug-Fehlgriffe, Katalog-Kollision,
Sonderzeichen-Zerlegung, Sammelfrage Charge 1-6) — jede Fundstelle traegt bereits BEHOBEN/GEPRUEFT/
TEILBEHOBEN vom heutigen Datum. Zusaetzliche Gegenprobe mit einem breiteren Suchmuster
(„Textauszug ist/statt“, „falscher Text“, „sachfremd“) ohne den Filter auf das Wort „Fehlextraktion“
ergab keine weiteren, bisher uebersehenen Fehlextraktions-Hinweise. `git log`/`git status`/`git diff
--numstat` fuer diesen KB-Pfad im SSD-Klon sauber. Nebenbefund: der NAS-Pfad (kanonische Quelle) lag
beim Start dieses Laufs um einen CHANGELOG-Abschnitt hinter dem SSD-Klon zurueck (fehlender Eintrag
„fuenfter Folgelauf“) — vermutlich hatte ein Vorlauf versehentlich den SSD-Spiegel statt des NAS-Pfads
editiert; hier auf dem NAS-Pfad nachgetragen, keine inhaltliche Aenderung, nur Sync-Nachzug. Ergebnis
identisch zu den fuenf Vorlaeufen desselben Tages: alle vier zugewiesenen Prioritaeten sind erschoepft,
ausser den bekannten Freigabesachen (NAS-Ordner-Umbenennungen/-Zusammenfuehrungen der vier
Kollisionsfaelle, Chamberlin-Slug-Erweiterung u.ae.) und rund elf bis zwoelf Sammelfrage-Namen je Charge
ohne belastbaren Websuche-Treffer (bleiben korrekt offen, nicht erfunden). Kein neuer Katalog-Eintrag,
kein `QUESTIONS.md`-Text veraendert. Empfehlung: naechster sinnvoller Auftrag fuer die SYNOBSIS-Lane
liegt ausserhalb dieser vier Prioritaeten (z.B. Sektion 1/2 der leeren Ordner und Schreibfehler-Slugs,
die nie Teil dieses Auftrags waren) oder wartet auf Raphaels Freigabe der NAS-Zusammenfuehrungen
beziehungsweise den naechsten regulaeren `--reindex`-Batch.

## 2026-08-29 (Mac Mini, Schub-Lane SYNOBSIS, vierter Folgelauf) — Scanner-Root-Cause fuer Kollision und Sonderzeichen behoben, nicht nur Katalogdaten

Eigene Gegenpruefung vor Beginn bestaetigte den protokollierten Stand der drei Vorlaeufe (Fehlextraktionen,
Katalog-Kollisionen und Sammelfrage-Chargen 1-6 vollstaendig in `wiki/QUESTIONS.md` markiert, Arbeitsbaum sauber).
Anders als die drei vorherigen reinen Bestaetigungslaeufe wurde diesmal die noch offene Kapazitaetsfrage angegangen:
`tools/synobsis_scan.py` selbst trug die Kollisions- und Sonderzeichen-Bugs noch im Code, sodass ein kuenftiger
`--reindex`-Lauf die vier manuell zusammengefuehrten Kollisionsfaelle und die 14 manuell umbenannten Sonderzeichen-
Dateien wieder zerstoert haette. Root Cause fuer die Sonderzeichen-Zerlegung gefunden und per Test belegt: NAS-
Ordnernamen liegen ueber SMB/macOS in Unicode-NFD vor (Basiszeichen + kombinierender Akzent, z.B. Š = S + U+030C);
`\w` im bisherigen `slugify()` matcht keine kombinierenden Zeichen (Kategorie Mn) und zerlegt sie zu `_`
(`slugify(NFD('Šuchov'))` -> `S_uchov`, live an den echten NAS-Ordnern `Šuchov_Vladimir_...` und `...Lluìs`
nachgewiesen: beide tatsaechlich NFD, waehrend `Utzon_Jørn`/`Mateo_Josep_Lluis` zufaellig NFC sind — das erklaert
die beobachtete Uneinheitlichkeit). Fix: neue Funktion `nfc()` normalisiert Ordnernamen auf NFC vor `slugify()`,
`parse_architect_name()` und `parse_project()`. Fuer die Katalog-Kollision (vier bestaetigte Faelle: Christ_Gantenbein,
Enzmann_Fischer, Miller_Maranta, Gigon_Guyer — per Direktscan aller 853 echten NAS-Ordner gegengeprueft, keine
weiteren Faelle im Bestand) neue Funktion `merge_records()` plus `build_slug_index()`: der Scanner erkennt jetzt
casefold-Kollisionen zwischen Katalogdateien und merged Projekte/Inventar/Dateitypen/CAD/Referenzbilder statt den
aelteren Datensatz stillschweigend zu ueberschreiben; Schema identisch zum manuellen `quellordner`-Feld der vier
bereits von Hand korrigierten Faelle. Nebenbefund beim Code-Lesen: `documents.jsonl` wurde bei `--reindex` bisher
immer im Append-Modus geoeffnet und haette bei einem echten vollen Reindex jede der 853 Zeilen verdoppelt
(Vektorindex-Korruption) — jetzt truncatet nur der erste Aufruf einer Reindex-Sequenz die Datei. Alle drei Fixes
mit einem synthetischen Sandbox-Test verifiziert (eigenes `/tmp`-Testverzeichnis, Modul-Globals gepatcht, NICHT
gegen die echten NAS-Daten geschrieben): Kollisionspaar korrekt zusammengefuehrt sowohl ueber vier separate
inkrementelle Laeufe als auch ueber einen zweiten vollstaendigen `--reindex`-Lauf hinweg (quellordner/Projekt-
Anzahl/Inventar jeweils korrekt, `documents.jsonl` blieb bei 4 Zeilen statt sich zu verdoppeln), NFD-Ordner ergab
nach dem Fix den korrekten precomposed-Slug und -Dateinamen. Gegen den echten Bestand nur lesend per `--status`
geprueft (853/853, Stand unveraendert) — der Scan selbst wurde NICHT real ausgefuehrt, keine Katalog-JSON-Datei
in dieser Session veraendert. `git diff --numstat` zeigt ausschliesslich `tools/synobsis_scan.py` (142/4, reiner
Code-Zusatz) sowie zwei Erweiterungen bestehender Eintraege in `wiki/QUESTIONS.md` Sektion 4 (Kollision, Zeile 350;
Sonderzeichen, Zeile 351) — beide rein anhaengend, keine bestehende Zeile inhaltlich entfernt (Diff-Gegenprobe:
die als entfernt markierten Zeilen sind vollstaendig als Praefix in den neuen Zeilen enthalten). Damit ist ein
kuenftiger produktiver `--reindex`-Lauf jetzt gefahrlos moeglich; er bleibt wie zuvor eine Kapazitaets-/Zeitfrage
fuer den naechsten regulaeren Batch-Lauf (853 Ordner, ~390'000 Dateien ueber SMB), keine Freigabesache, und wurde
bewusst nicht in dieser Session ausgefuehrt. Offen bleiben nur die echten Freigabesachen (NAS-Ordner-
Umbenennungen/-Zusammenfuehrungen der vier Kollisionsfaelle, Chamberlin-Slug-Erweiterung u.ae.) sowie die rund
elf Namen je Sammelfrage-Charge ohne belastbaren Websuche-Treffer (korrekt offen gelassen, nicht erfunden).

## 2026-08-29 (Mac Mini, Schub-Lane SYNOBSIS, dritter Folgelauf) — Vier Prioritaeten unabhaengig ein drittes Mal geprueft, keine neue Position gefunden

Eigenstaendige Verifikation ohne Vorlauf-Kontext (frische Session): `git log --oneline -- wissen/architekten-synobsis/`
zeigt `539f7119e` als letzten Commit, Arbeitsbaum sauber (`git status --short` / `git diff --numstat` leer fuer diesen
Pfad). Grep auf `Fehlextraktion|Kollision|Sonderzeichen` in `wiki/QUESTIONS.md` (alle Fundstellen tragen BEHOBEN/
GEPRUEFT/TEILBEHOBEN) und auf `Sammelfrage Charge [0-9]` (alle sechs Chargen 1-6 "vollstaendig" recherchiert) bestaetigen
den protokollierten Stand. Katalog-Stichprobe: `catalog/Christ_Gantenbein.json` traegt `quellordner: ["Christ
Gantenbein", "Christ_Gantenbein"]`, 11 Projekte; die vier Kollisionsdateien (Christ_Gantenbein, Enzmann_Fischer,
Miller_Maranta, Gigon_Guyer) sowie die zwei Sonderzeichen-Dateien (Šuchov_Vladimir_..., Tusquet_Oscar_Clotet_Lluìs)
liegen unter den korrigierten Dateinamen im `catalog/`. Kein Katalog-JSON, kein `QUESTIONS.md`-Eintrag veraendert.
Fazit unveraendert: **nichts mehr offen** in den vier Auftragsprioritaeten; verbleibend nur Freigabesachen
(NAS-Ordner-Umbenennungen/-Zusammenfuehrungen der vier Kollisionsfaelle) und der kapazitaetsabhaengige `--reindex`-
Lauf. Diesem Lauf zufolge sind mindestens drei unabhaengige Pruefungen an diesem Tag zum selben Ergebnis gekommen —
naechster sinnvoller Schritt fuer die SYNOBSIS-Lane ist ausserhalb dieser vier Prioritaeten zu suchen oder auf
Raphaels Freigabe der NAS-Zusammenfuehrungen zu warten, statt weitere Bestaetigungslaeufe zu fahren.

## 2026-08-29 (Mac Mini, Schub-Lane SYNOBSIS, weiterer Folgelauf) — Vier Prioritaeten unabhaengig erneut geprueft, keine neue Position gefunden

Neuer Lauf, eigenstaendige Verifikation (nicht nur Textstand aus `QUESTIONS.md` uebernommen):
`git log -- wissen/architekten-synobsis/` zeigt `4ec67a2b0` als letzten Commit dieser KB,
Arbeitsbaum sauber (`git status --short` leer fuer diesen Pfad). Alle vier Prioritaeten des
Auftrags per Grep und Katalog-Stichprobe gegengeprueft: `grep -n "Fehlextraktion"` und
`grep -n "Textauszug"` in `wiki/QUESTIONS.md` liefern keine unmarkierte (nicht mit BEHOBEN/
GEPRUEFT versehene) Fundstelle mehr; `catalog/{Christ_Gantenbein,Enzmann_Fischer,
Miller_Maranta,Gigon_Guyer}.json` tragen alle das Feld `quellordner` mit beiden
Quellordnern; `catalog/Tadao_Ando.json` traegt den Vitra-Konferenzpavillon-Text,
`catalog/Spuehler_Martin.json` den Selnau-Geschossgarten-Text, `catalog/Wurster_William.json`
korrekt leeren Textauszug (textlos, keine Huffington/Newsom-Fehlextraktion mehr). Alle sechs
Sammelfrage-Chargen (1-6, `grep -n "Sammelfrage Charge"`) tragen den Vermerk "vollstaendig
... recherchiert". Kein Katalog-JSON, kein `QUESTIONS.md`-Eintrag veraendert (nichts Neues zu
markieren) — nur dieser CHANGELOG-Eintrag als Beleg der Pruefung. Fazit unveraendert: **nichts
mehr offen** in den vier Auftragsprioritaeten; verbleibend nur Freigabesachen (NAS-Ordner-
Umbenennungen/-Zusammenfuehrungen der vier Kollisionsfaelle, Chamberlin-Slug-Erweiterung u.ae.)
und der kapazitaetsabhaengige `--reindex`-Lauf fuer die bereits im Code umgesetzte
Parser-Verfeinerung (Sektion 4).

## 2026-08-29 (Mac Mini, Schub-Lane SYNOBSIS, weiterer Folgelauf) — Vier Prioritaeten erneut geprueft, keine neue Position gefunden

Auftragslage identisch zu den Vorlaeufen dieses Tages (Prioritaet 1-4: Fehlextraktionen,
Katalog-Kollisionen, Sonderzeichen-Regel, Sammelfrage Charge 2 ff.). Vor Beginn `git log`
(NAS-Repo) und `wiki/QUESTIONS.md` gegen die vier Prioritaeten geprueft: alle vier waren
bereits im letzten Commit (`f4e5c4dbd`) vollstaendig erledigt und markiert. Stichprobe der
konkreten Namen aus dem Auftragstext direkt am Katalog gegengeprueft (nicht nur am Text in
QUESTIONS.md): `catalog/{Christ_Gantenbein,Enzmann_Fischer,Miller_Maranta,Gigon_Guyer}.json`
tragen alle das Feld `quellordner` mit beiden Quellordnern; `catalog/Tadao_Ando.json` und
`catalog/Spuehler_Martin.json` tragen die korrigierten Textauszuege (Vitra-Konferenzpavillon
bzw. Selnau-Geschossgarten, nicht mehr Junkspace/Stuttgart-21); die Katalogdateien
`Šuchov_Vladimir_....json` und `Tusquet_Oscar_Clotet_Lluìs.json` tragen die Sonderzeichen
statt der fruehereren `_x_`-Zerlegung. Keine Abweichung zum protokollierten Stand gefunden.
Working Tree sauber (`git status --short` zeigt nur eine unabhaengige, nicht zu dieser KB
gehoerende Datei `logbuch/kontingent/verbrauch-Macmini.json`). Keine Datei in dieser KB
veraendert, kein `QUESTIONS.md`-Eintrag noetig (nichts Neues zu markieren). Offen bleiben
unveraendert nur Freigabesachen (NAS-Ordner-Umbenennungen/-Zusammenfuehrungen) und der
kapazitaetsabhaengige `--reindex`-Lauf fuer die Parser-Verfeinerung.

## 2026-08-29 (Mac Mini, Schub-Lane SYNOBSIS, weiterer Folgelauf) — Buzzi_e_Buzzi gepruft, alle vier Prioritaeten erneut bestaetigt vollstaendig

Position wie in den Vorlaeufen per `git log`/`git status`/`git diff --numstat` uebernommen:
alle vier Prioritaeten aus dem Auftrag (Fehlextraktionen, Katalog-Kollisionen,
Sonderzeichen-Regel, Sammelfrage Charge 2 ff.) waren bereits vollstaendig erledigt (Stand
`5849190d3`, Arbeitsbaum sauber). Einzige noch unmarkierte Position in Sektion 2 mit
Textauszug-Verdacht: **Buzzi_e_Buzzi** (Zeile 34 QUESTIONS.md, "Vorlesungs-/Analysenotiz,
kein Buero-Dossier"). Gepruft: Ordner enthaelt nur ein Dokument
(`101102_Vortrag_ETH_BuzzietBuzzi.docx`, Mitschrift eines ETH-Vortrags von Buzzi e Buzzi
02.11.2010), per `textutil -convert txt` gegen den Katalog-Textauszug verglichen — wortgleich,
keine Kuerzung, kein Fremdthema. Ergebnis: keine Fehlextraktion, sondern eine (mutmasslich
von Raphael selbst signierte) persoenliche Vorlesungsmitschrift, korrekt dem richtigen
Architekten zugeordnet, nur qualitativ duenn. QUESTIONS.md-Eintrag entsprechend ergaenzt
(append-only, `git diff --numstat` vor Commit auf reine Zeilen-Ergaenzung geprueft), kein
Katalog-JSON veraendert. Damit keine offene Fehlextraktion, Kollision oder Sonderzeichen-
Frage mehr in Sektion 1-4 unmarkiert; offen bleiben ausschliesslich Freigabesachen (NAS-
Ordner-Umbenennungen/-Zusammenfuehrungen) und der `--reindex`-Lauf fuer die Parser-
Verfeinerung (Kapazitaetsfrage, siehe Eintrag unten).

## 2026-08-29 23:55 (Mac Mini, Schub-Lane SYNOBSIS, weiterer Folgelauf) — Parser-Verfeinerung Sektion 4 umgesetzt (Code, nicht Daten)

Position wie in den Vorlaeufen per `git log`/`git status`/`git diff --numstat` uebernommen:
alle vier im Auftrag genannten Prioritaeten (Fehlextraktionen, Katalog-Kollisionen,
Sonderzeichen-Regel, Sammelfrage Charge 2 ff.) waren bereits vollstaendig erledigt und
gepusht (letzter Stand `6cf41b314`, `origin/main == HEAD`). Naechster in den Vorlaeufen
explizit offen gelassener Punkt war die Parser-Verfeinerung in `tools/synobsis_scan.py`
(Sektion 4 QUESTIONS.md): nummerierte generische Ablagestruktur (`00_Architekten`,
`01_Projekte`, `02_Wettbewerb`, ...) wurde bislang als eigenes "Projekt" gezaehlt.

**Umgesetzt:** `scan_architect()` erkennt jetzt direkte Kindordner, deren Name mit ein
bis zwei Ziffern plus Trenn­zeichen beginnt (`GENERIC_STRUCTURE_RE = r"^\d{1,2}[_ ]"`), zaehlt
sie nicht mehr selbst als Projekt, sondern sucht eine Ebene tiefer nach echten
Projektordnern. Vor dem Schreiben read-only verifiziert: Stichprobe der in QUESTIONS.md
namentlich genannten Ordner (Archigram, Alexander_Christoph, Sik_Miroslav, Gigon_Guyer,
Christ_Gantenbein — letztere zwei als Regressionstest fuer die bereits geloesten
Kollisionsfaelle, unveraendert) sowie 40 zufaellig gezogene Architekten-Ordner aus dem
gesamten Bestand, keine Fehler. Quer durch den Katalog matchen 766 Ordnereintraege in 70
wiederkehrenden Strukturnamen dieses Muster (`00 Architekt`, `01_Projekte`,
`02_Wettbewerb`, `Adressen`-Container etc.), also deutlich mehr als die im Auftrag
geschaetzten "rund zwei Dutzend" — die Schaetzung bezog sich offenbar nur auf Charge 5/6.

**Bewusst NICHT gemacht:** kein `--reindex`-Lauf. Das wuerde alle 853 Katalog-JSONs
(rund 390'000 Quelldateien ueber SMB) neu schreiben — ein grosser, langwieriger Eingriff,
der in den Batch-Betrieb (`synobsis_batch.sh`, launchd-Takt) gehoert und nicht in einen
einzelnen Schub-Lane-Lauf. Der Code-Fix wirkt daher erst auf zukuenftig verarbeitete
oder neu indexierte Architekten; die 853 bestehenden Katalogdateien tragen die alten
(zu hohen) `projekt_anzahl`-Werte unveraendert weiter, bis ein regulaerer Reindex laeuft.
Kein Katalog-JSON in dieser Session veraendert (`git diff --numstat` auf `synobsis_scan.py`
zeigt `23 3`, auf `QUESTIONS.md` `7 7` — exakt die sieben mit Datum/Lane markierten
Sammelvermerke, keine unbeabsichtigten Nebenaenderungen).

**Aenderung in `wiki/QUESTIONS.md`:** die sieben ueber Charge 1/6 bis 6/6 verstreuten
"Parser-Verfeinerung bleibt offen"-Vermerke (Sektion 4) mit `**TEILBEHOBEN**` markiert;
Details in der ersten (Zeile 328), Kurzverweis in den uebrigen sechs.

**Offen fuer den naechsten Lauf:** (1) den naechsten regulaeren `--reindex`/Batch-Lauf
abwarten oder anstossen, dann `projekt_anzahl` gegen die alten Werte stichprobenartig
gegenpruefen; (2) die drei in den Vorlaeufen benannten Restkategorien (Kapazitaets-
entscheide bekannter Bueros, private JANS-Kontextfragen ohne oeffentliche Quellenlage,
freigabepflichtige NAS-Umbenennungen/-Zusammenfuehrungen) bleiben Sache fuer Raphael,
nicht per Datenebene/WebSearch loesbar.

## 2026-08-29 22:40 (Mac Mini, Schub-Lane SYNOBSIS, weiterer Folgelauf) — Wagner-Sammelfrage geklaert, alle vier Prioritaeten erneut als erledigt verifiziert

Beim Uebernehmen der Position per `git log`/`git status`/`git diff --numstat` (SSD-Klon und
NAS-Repo, beide `origin/main` == `HEAD`) verifiziert, dass die vier im Auftrag genannten
Prioritaeten (Fehlextraktionen, Katalog-Kollisionen, Sonderzeichen-Regel, Sammelfrage Charge 2 ff.)
bereits durch fruehere Laeufe desselben Abends vollstaendig erledigt und gepusht waren, inklusive
Sammelfrage Charge 1 bis 6 (854 Namen). Keine weitere Fehlextraktion in den Katalog-JSONs
gefunden (Stichproben unveraendert).

**Einziger verbliebener unmarkierter Einzelfall aus Sektion 1 geklaert: Wagner** (Zeile 90) —
Ordnerinhalt auf dem NAS gesichtet (`/Volumes/daten/05_Architekten_Synobsis/Wagner`, lesend):
weder Otto noch Martin Wagner, sondern **Buero Wagner** (Fabian A. Wagner mit Andreas Kreft,
Muenchen/Breitbrunn a. Ammersee) — Beleg ist die Datei `Gamsei+C.+Simon+u.+Sebastian+Schels+13.jpg`
im Ordner, die exakt auf die Fotografen-Credits (Jann Averweser, C. Simon, Sebastian Schels) der
Cocktailbar **Gamsei** in Muenchen-Glockenbach (ArchDaily 14.02.2014) passt. Wagner_Otto bleibt
zu Recht ein eigener, unverwandter Ordner (Otto Wagner, Wien). Nebenbefund: der Unterordner
«interne» ist entgegen der urspruenglichen Fragestellung leer, die 22 Bilder liegen im
Wurzelordner; darunter mehrere Bilder zum unpassenden Projekt «BOX 117» (Drewes/Schneider,
Berlin) — moegliche Fehlablage im Quellordner, nicht bereinigt (Freigabesache). Aenderung nur in
`wiki/QUESTIONS.md` (ein Satz-Anhang, RECHERCHIERT-Vermerk mit Quellen), `git diff --numstat`
auf `1 1` geprueft (SSD und NAS identisch editiert, append-only). Keine Katalog-JSON veraendert.

**Offen fuer den naechsten Lauf:** kein weiterer per Datenebene/WebSearch loesbarer Einzelfall
in Sektion 1 gefunden — die verbleibenden knapp 200 unmarkierten Punkte in `QUESTIONS.md` sind
entweder (a) Kapazitaets-/Kurationsentscheide fuer bereits klar identifizierte, bekannte
Architekten («ausbauen oder Stub belassen»), (b) private JANS-Kontext-Fragen ohne oeffentliche
Quellenlage (Back_Lukas, Caminada_Marco, Heller_Patrick u.ae. — nicht websuchbar) oder (c)
Umbenennungen/Zusammenfuehrungen in Sektion 2/3, die Freigabe fuer Quellordner-Aenderungen
brauchen. Naechster sinnvoller Schritt bleibt eine dieser drei Kategorien mit Raphael zu klaeren,
oder die Parser-Verfeinerung in `tools/synobsis_scan.py` (Sektion 4) als Code- statt Datenaenderung.

## 2026-08-29 (Mac Mini, Schub-Lane SYNOBSIS, Folgelauf) — Bo_Bardi_Lina-Fehlextraktion korrigiert, Prioritaeten 1-4 verifiziert vollstaendig

Beim Uebernehmen der Position zunaechst per `git log`/`git diff --numstat` sowie Stichproben
in `catalog/*.json` (Christ_Gantenbein, Gigon_Guyer, Šuchov_Vladimir_..., Tadao_Ando,
Wurster_William) verifiziert, dass alle vier im Auftrag genannten Prioritaeten (Fehlextraktionen,
Katalog-Kollisionen, Sonderzeichen-Regel, Sammelfrage Charge 2 ff.) bereits durch einen frueheren
Lauf desselben Abends erledigt UND bereits per `auto-sync [Macmini]`-Commit nach GitHub gepusht
waren (`origin/main` == `HEAD`, keine Doppelarbeit) — inklusive Sammelfrage Charge 2 bis 6
vollstaendig (nicht nur Charge 2, wie im Auftrag als offen vermerkt).

**Eine weitere, bisher unmarkierte Fehlextraktion in Sektion 4 gefunden und korrigiert:
Bo_Bardi_Lina** — Textauszug war eine abgespeicherte Google-Suchseite (Navigations-/Werbe-Rand,
geringer Quellenwert). Im selben Ordner (`00_Architektin/MfGZ.pdf`) liegt der Ausstellungstext
des Museums fuer Gestaltung Zuerich zur Schau «Das Brasilien der Architektin Lina Bo Bardi»
(25.11.2000-04.03.2001) — ein sachlich zutreffender Fliesstext zu Werdegang und Hauptwerken
(Glashaus 1951, MASP 1957-68, SESC-Pompeia 1977), extrahiert per `pypdf` (venv `pdftools`,
`textutil -convert txt` scheiterte an dieser PDF). Neuer Textauszug (bereinigt um Datums-/
URL-Kopfzeilen und den Impressum-/Veranstaltungs-Fussteil) in `catalog/Bo_Bardi_Lina.json`
(`textauszug` + `embed_doc`) sowie in der zugehoerigen Zeile von `catalog/documents.jsonl`
nachgezogen; `git diff --numstat` je Datei auf `2 2` bzw. `1 1` geprueft (nur das eine Feld
geaendert, JSON-Validitaet mit `json.load` bestaetigt). Quelle bleibt derselbe Ordner, keine
externe Recherche noetig.

**Offen fuer den naechsten Lauf:** die vier explizit genannten Prioritaeten sind erledigt; als
naechste sinnvolle Fortsetzung bieten sich die in Sektion 4 dokumentierte Parser-Verfeinerung
(generische Ablagestruktur 00-07 wird faelschlich als «Projekte» gezaehlt, rund zwei Dutzend
Eintraege) oder Sektion 2/3 (Umbenennungen, Zusammenfuehrungen) an — beide sind aber
Freigabesache (Quellordner-Aenderung bzw. Scanner-Codeaenderung), nicht auf Datenebene loesbar.

## 2026-08-29 21:10 (Mac Mini, Schub-Lane SYNOBSIS) — Fehlextraktionen Charge 4/6 korrigiert, Sammelfrage Charge 4 vollstaendig recherchiert

Fortsetzung desselben Auftrags (Wochenkontingent vor Montags-Reset). Beim Uebernehmen der
Position wurde zunaechst verifiziert, dass die Prioritaeten 1-3 aus einem frueheren Lauf
desselben Abends (Eintrag darunter, 20:45) bereits auf Datenebene erledigt UND bereits per
`auto-sync [Macmini]`-Commit nach GitHub gepusht waren (`catalog/Christ_Gantenbein.json` /
`Gigon_Guyer.json` tragen das Feld `quellordner` mit beiden Quellordnern, `git log` zeigt
`origin/main` auf demselben Stand wie `HEAD`) — keine Doppelarbeit.

**Acht weitere Fehlextraktionen korrigiert (Prioritaet 1, bisher uebersehen in `wiki/QUESTIONS.md`
Sektion 4):** je Eintrag den Quellordner nach einer besseren Textquelle durchsucht (`raw/` nur
gelesen), `textauszug`/`embed_doc`/`stand` in `catalog/<slug>.json` korrigiert (`git diff --numstat`
je Datei auf 4 4 bzw. 3 3 geprueft — nur die drei geaenderten Felder, keine Nebenwirkung).
**Brandlhuber**: bereinigter Kernabsatz aus derselben Blog-PDF (Antivilla Krampnitzsee) statt
des vollstaendigen, navigationsverseuchten Rohtexts. **MadeIn**: Projektblatt aus
`Basel_Museumserweiterung/4cea711ee2d4a.pdf` (Buero «Made in», Genf) statt Antonioni-Wikipedia.
**Maerkli_Peter**: Hochparterre-Artikel «Revision der Moderne» statt Vectorworks-Wasserzeichen.
**Mateo_Josep_Lluis**: eigener Buerotext `borneo.doc` (Wohnblock Borneo Island Amsterdam) statt
InDesign-Druckanweisung. **Mattioni_Luigi**: Zeitschriftenartikel ueber Luigi Mattioni
(«architetto della ricostruzione») statt eBay-Seite. **Miller_Maranta**: nextroom.at-Artikel
(Mathias Remmele) zur Villa-Garbald-Erweiterung statt defekt kodiertem PDF-Text. **Jager_Egli_Architekten**
und **Lengacher_Emenegger** auf textlos gesetzt (`textauszug` leer) statt sachfremden Text stehen
zu lassen — in beiden Ordnern existiert keine Alternative zum Buero selbst; bei Jager_Egli_Architekten
Nebenbefund notiert (Projektplakat nennt «dolmus» als Planverfasser, nicht Jager Egli, moeglicher
Fehlordner-Hinweis, aus dem Ordnerinhalt allein nicht zu klaeren).

**Sammelfrage Charge 4 abgeschlossen (36/36):** alle Namen einzeln recherchiert oder auf
andernorts im Dokument bereits bestaetigte Eintraege verwiesen — 25 direkt neu bestaetigt
(u.a. Le_Vau_Louis, Leonidov_Ivan, Lundgaard_Tranberg, Murcutt_Glenn, Owen_Williams, Pei,
Perraults_Dominique), sieben per Querverweis bestaetigt (Maas_Wini, Mansila, McMorran_Withby,
Mutheisius_Hermann, Nikisch_Walder, OMA, Pavel_Janack), vier ohne belastbaren Treffer
(Luebps_Atelier, Meier_Juergen_H, Mitzutome, Perrot — nur aus dem Ordnerinhalt zu klaeren).
Recherche per zwei parallelen Recherche-Agenten (Websuche, Belegpflicht), Ergebnis von Claude
gegengeprueft und in `wiki/QUESTIONS.md` als ein zusammenhaengender RECHERCHIERT-Vermerk
angehaengt (`git diff --numstat` auf 1 1 geprueft).

**Nachtrag desselben Laufs, 21:20:** **Sammelfrage Charge 5 abgeschlossen (24/24)** — als erste
Charge vollstaendig mit Treffer fuer jeden Namen (u.a. Rietveld_Gery, Sartoris_Alberto,
Schattner_Karl_Joseph, Schlup Max/Kongresshaus Biel, Schader_Kt_Freudenberg/Jacques Schader
bestaetigt; zwei mit Vorbehalt wegen generischem Ordnernamen: Rasmussen, Schmidt_Werner).
Recherche wieder per zwei parallelen Agenten, in `wiki/QUESTIONS.md` angehaengt
(`git diff --numstat` auf 2 2 geprueft).

**Nachtrag desselben Laufs, 21:35:** **Sammelfrage Charge 6 abgeschlossen (26/26)** — damit sind
Charge 1 bis 6 vollstaendig einzeln recherchiert, Prioritaet 4 aus dem Auftrag ist erschoepft.
19 bestaetigt (u.a. Vitruv als antiker Theoretiker statt zeitgenoessischem Architekt geklaert,
architectuul als Website statt Architekt entlarvt, mlzd und wang_shu bestaetigt), sechs ohne
belastbaren Treffer (Soriano_Rafael zweideutig zwischen zwei Namenstraegern, Speer_Alfred,
Stone_Edward_Albert_1880_1963, Zanini, ebeling, maya — alle sechs nur aus dem Ordnerinhalt zu
klaeren). Recherche wieder per zwei parallelen Agenten (`git diff --numstat` auf 1 1 geprueft).

**Damit Prioritaet 4 (Sammelfragen Charge 1-6) vollstaendig erledigt.** Offene Restarbeit in
`wiki/QUESTIONS.md` betrifft nur noch: (a) Freigabesachen (NAS-Ordner-Umbenennungen/-
Zusammenfuehrungen fuer die vier Katalog-Kollisionen und die zahlreichen Schreibfehler-Slugs
aus Sektion 2), (b) die Scanner-Parser-Verfeinerung (kollidierende Slugs bei Leerzeichen/
Unterstrich-Varianten, generische Ablagestruktur als Projekt gezaehlt) — beides ausserhalb der
Reichweite dieser Lane ohne Codeaenderung an `tools/synobsis_scan.py` beziehungsweise ohne
Raphaels Freigabe, (c) vereinzelte offene Einzelfragen aus Sektion 1 (leere Ordner ohne
Websuch-Treffer, z.B. AASZ, Cheung_Simon, DECARVALHO_BOTELHO, E_Architekten, Koyama) — dort
wurde bereits mehrfach dokumentiert, dass nur eine Sichtung des Ordnerinhalts selbst
weiterhilft, nicht Websuche. Fuer den naechsten Lauf: entweder gezielt einzelne dieser
Ordnerinhalt-Faelle sichten (wenn Zugriff/Zeit reicht) oder mit Raphael die Freigabesachen
klaeren.

## 2026-08-29 20:45 (Mac Mini, Schub-Lane SYNOBSIS) — Sammelfrage Charge 2 und Charge 3 vollstaendig recherchiert

Fortsetzung desselben Auftrags (Wochenkontingent vor Montags-Reset), Prioritaet 4 nach Abschluss
der Prioritaeten 1-3 (Fehlextraktionen/Kollisionen/Sonderzeichen, siehe Eintrag darunter, bereits
in einem frueheren Lauf desselben Abends erledigt und verifiziert). Websuche je Einzelname
(Belegpflicht, nie geraten), Ergebnisse als NACHTRAG/RECHERCHIERT-Vermerke in `wiki/QUESTIONS.md`
angehaengt, keine Loeschung bestehenden Inhalts (`git diff --numstat` je Schreibvorgang auf 1 1
geprueft, entspricht dem etablierten Muster fuer wachsende Sammelfrage-Absaetze in dieser Datei).

**Sammelfrage Charge 2 abgeschlossen (22/22):** die 17 zuvor unrecherchierten Namen einzeln
belegt — zwoelf bestaetigt (u.a. Federico_Zuccari, Fischer_von_Erlach, Fujimoto, Fuksas,
Gandy_Joseph, Gimson_Ernest, Graves_Michael, Gray_Eileen, Gregotti_Vittorio, Gut_Schoep,
Haefliger_Erich, Halliday_James_Theodore_1882_1932 — Jahreszahlen im Slug decken sich exakt),
ein Grenzfall (Haenel_Erich: Architekturstudium, aber spaeter Kunst-/Waffenhistoriker, kein
praktizierender Architekt), vier ohne belastbaren Treffer (Fischle, Gigometti, Goldsmith_Felix,
Gruppo_Ligure).

**Sammelfrage Charge 3 abgeschlossen (34/34):** alle Namen einzeln recherchiert — 23 bestaetigt
(u.a. Hankar_Paul, Hollein_Hans, Hetzberger_Hermann, Hopkins_Michael, Krier_Leon, Klein_Alexander,
Kjærholm-Hauses/Poul Kjaerholm, LUCA_SELVA, Jabornegg_Pálffy, Jackson_Clements_Burrows), drei
plausibel mit Vorbehalt (Hofmann_Ludwig, Horvat_Paolo, La_Pierre_Eric — Namensabweichungen ohne
Ordnerinhalt nicht letztgueltig zu klaeren), acht ohne belastbaren Treffer (Herrle_Stoll,
Imhof_Edi, Jaeckel_Fabian, Kampmann, Keles_Oetzguer, Klement_Juergen, Knorr, Lazarini_Fenster —
durchweg zu generische oder unauffindbare Namen, nur aus dem Ordnerinhalt zu klaeren).

Offen fuer den naechsten Lauf: Sammelfrage Charge 4 (~33 Namen, Zeile 74), Charge 5 (~23 Namen,
Zeile 78) und Charge 6 (~24 Namen, Zeile 88) sind unveraendert unrecherchiert; ebenso die generische
Ablagestruktur-als-Projekte-Zaehlung (Parser-Verfeinerung `tools/synobsis_scan.py`, mehrfach in
QUESTIONS.md vermerkt, technische Aenderung am Scanner nicht Teil dieses Auftrags).

## 2026-08-29 20:33 (Mac Mini, Schub-Lane SYNOBSIS) — Bestandsqualitaet: Fehlextraktionen, Katalog-Kollisionen und Sonderzeichen-Regel bereinigt

Auftrag Raphael 29.08.2026 (Wochenkontingent vor Montags-Reset): Katalog ist saturiert (853/853),
offen ist die Qualitaet des Bestandes gemaess den in `wiki/QUESTIONS.md` belegten Maengeln aus
Charge 5/6. Vier Prioritaeten abgearbeitet:

**1. Fehlextraktionen (6 Eintraege gepruft, 4 korrigiert, 2 auf textlos gesetzt):** Im Bestand
nach der richtigen Textquelle gesucht (nie geraten). Korrigiert: **Tadao_Ando** (jetzt Text aus
KONFERENZPAVILLON_T.Ando.doc statt Koolhaas' «Junkspace»; der Scanner extrahiert .doc technisch
nicht, Text per `textutil` manuell nachgezogen), **Spuehler_Martin** (Architektur & Technik
7/2004-Artikel zur Selnau-Ueberbauung statt Stuttgart-21-Artikelrand), **Pouillon_Fernand**
(Pavillon-de-l'Arsenal-Text statt Sik-Seminarwochen-Flyer), **Romero_Schaefle** (Betonforum-ZH-
Vortrag 2012 des Bueros Romero & Schaefle statt de-Sede-Sofatext des gleichnamigen
Moebeldesigners — Namensgleichheit zweier verschiedener Personen bestaetigt). Auf textlos
(leerer Textauszug statt Falschtext) gesetzt: **Wurster_William** und **Pfister_Gebrueder** —
in beiden Faellen ist die Fehlextraktion das einzige Dokument im Ordnerbestand, keine Alternative
vorhanden. **Rohn_Roland** gepruft: Text ist inhaltlich korrekt, keine Korrektur noetig; das in
QUESTIONS.md vermerkte «Neuer Ordner»-Element ist ein separates Parser-/Ablageartefakt.

**2. Katalog-Kollisionen (4/4 auf Datenebene behoben):** Christ_Gantenbein, Enzmann_Fischer,
Miller_Maranta und Gigon_Guyer trugen je zwei Quellordner (Leerzeichen-/Unterstrich-Variante),
von denen der Scanner nur einen im Katalog abgebildet hatte. Beide Quellordner sind jetzt je
Eintrag im neuen Feld `quellordner` ausgewiesen, Projekte/Inventar/Dateitypen beider Ordner
zusammengefuehrt. Bei Gigon_Guyer hatte ausnahmsweise der KLEINE Ordner den GROSSEN verdraengt
(Kirchnermuseum, Prime Tower u.a. waren komplett unsichtbar). Der Scanner-Bug selbst
(`tools/synobsis_scan.py` erkennt kollidierende Slugs nicht) ist NICHT behoben — ein
`--reindex`-Lauf wuerde die Kollision wieder erzeugen; Parser-Verfeinerung bleibt offen.

**3. Sonderzeichen-Regel vereinheitlicht:** Regel nach dem bereits korrekten Vorbild
Utzon_Jørn.json/Kjærholm-Hauses.json festgelegt — Sonderzeichen im Slug beibehalten statt zu
`_x_`-Platzhaltern zu zerlegen. 14 betroffene Katalogdateien per `git mv` umbenannt (Datei +
internes `slug`-Feld + zugehoerige Zeile in `catalog/documents.jsonl`, Zeilenreihenfolge fuer
den bestehenden Vektorindex `vectors.npz` unveraendert gelassen): u.a. Dürr_Otto, Förderer,
Šuchov_Vladimir_..., Tusquet_Oscar_Clotet_Lluìs, Prouvé_Jean, Jabornegg_Pálffy (vollstaendige
Liste in `wiki/QUESTIONS.md`, Sektion 4). Scanner selbst nicht angepasst — betrifft nur bereits
gescannte Bestandsdaten.

**4. Sammelfrage Charge 2ff.:** nicht erreicht, Budget/Zeit ging in Prioritaet 1-3.

Alle QUESTIONS.md-Aenderungen additiv (Text an bestehende Bulletpoints angehaengt, nichts
geloescht) — `git diff --numstat` je Schreibvorgang geprueft. Katalog-JSON-Korrekturen sind
echte Datenkorrekturen (kein Append-only, wie vom Auftrag verlangt: "den Katalogeintrag
berichtigen"), jeweils einzeln per Skript und mit Quellenbeleg im Bestand, kein globales
Suchen-und-Ersetzen. `raw/`-Quelle (NAS, read-only) nur gelesen, nie editiert. Sicherung ueber
`scripts/nas-commit-now.sh`.

## 2026-08-29 13:30 (Mac Mini Nachtschicht/Versuchs-Slot) — Sammelfrage Charge 2 begonnen (fuenf Namen: Ehrenklau, Eicke_Becker, El_Khouli, Eldem, Gartmann_Patrick)

Prioritaeten 1-4 leer bzw. nicht anwendbar: keine pending remote-/sync-Tasks (nur ein leerer
`scripts`-Unterordner unter `sync-tasks/mac-mini/`); Synobsis Stufe 1+2 vollstaendig (853/853);
`bauprodukte`/`grobkosten` formal erledigt/ausgesetzt; `energie` zuletzt Run 166 27.08. 22:58,
noch nicht wieder faellig; `baurecht`/`normen`/`planungsgrundlagen`/`wettbewerbs-dna` per Vorgabe
ausgeschlossen (eigener Taktgeber). Fristen-Register ohne neuen Handlungsbedarf.

Auf Prioritaet 5 ausgewichen: Sammelfrage Charge 1 (Zeile 32) ist seit dem 05:30-Slot vollstaendig
(14/14), darum Wechsel auf **Charge 2** (Zeile 54, 22 Namen: Ehrenklau_Katharina bis
Halliday_James_Theodore_1882_1932). Fuenf Namen per WebSearch einzeln mit Quelle belegt:
**Ehrenklau_Katharina** (Atelier Ehrenklau Hemmerling, Zuerich, seit 2018), **Eicke_Becker**
(Schreibvariante Eike Becker, Berlin, seit 1999 mit Helge Schmidt), **El_Khouli** (Sebastian El
Khouli, BGP Zuerich, Nachhaltigkeit/Umbau), **Eldem** (Sedad Hakki Eldem, tuerkischer Architekt
1908-1988, Nationale Moderne), **Gartmann_Patrick** (Patrick Gartmann, Chur, Conzett Bronzini
Gartmann/Ferrari Gartmann, Mitarbeit Schweizer Pavillon mit Zumthor). Nebenbefund: **Gerkan**
(ebenfalls in Charge 2) ist bereits an anderer Stelle geklaert (Zeile 244, Meinhard von Gerkan).
Details mit Quellenangabe in `wiki/QUESTIONS.md` an der Charge-2-Zeile angehaengt. 17 der 22
Namen bleiben offen fuer den naechsten Slot. `git diff --numstat` nativ geprueft: 1 Zeile
geaendert / 1 Zeile (additiv erweitert), keine Loeschung von Bestand. Kein Fan-out, kein Versand,
keine Buchung, keine destruktive Aktion. Budget dieses Zyklus: rund 1.1 von 5 USD.

## 2026-08-29 05:30 (Mac Mini Nachtschicht) — Sammelfrage Charge 1 vollstaendig abgeschlossen (letzte vier Namen: Cebra, Da Vinci, Dietrich Untertrifaller, Dogma)

Prioritaeten 1-4 leer bzw. nicht anwendbar: keine pending remote-/sync-Tasks; Synobsis Stufe 1+2
vollstaendig (853/853, `vectors.npz` unveraendert seit 24.08.); `bauprodukte`/`grobkosten` formal
erledigt/ausgesetzt; `energie` zuletzt Run 166 27.08. 22:58, noch nicht wieder faellig;
`baurecht`/`normen`/`planungsgrundlagen`/`wettbewerbs-dna` per Vorgabe ausgeschlossen (eigener
Taktgeber). Fristen-Register ohne neuen Handlungsbedarf fuer diesen Zyklus.

Auf Prioritaet 5 ausgewichen, dritter Lauf in Folge an derselben Sammelfrage. Die vier zuvor
pauschal als "offensichtlich, Einzelrecherche nicht noetig" eingestuften Restnamen wurden jetzt
per WebSearch einzeln mit Quelle belegt: **CEBRA** (Aarhus, gegruendet 2001, Frost/Primdahl/
Nielsen), **Leonardo da Vinci** (keine Quellenpruefung noetig), **Dietrich Untertrifaller**
(Bregenz, gegruendet 1994 nach Wettbewerbssieg Festspielhaus Bregenz, Vorarlberger Schule),
**DOGMA** (Bruessel, gegruendet 2002, Pier Vittorio Aureli/Martino Tattara). Details mit
Quellenangabe in `wiki/QUESTIONS.md` an der bestehenden Sammelfrage-Zeile angehaengt. Damit ist
**Sammelfrage Charge 1 vollstaendig (14/14 Namen einzeln recherchiert)** — naechster freier Slot
kann auf Charge 2 (`Ehrenklau_Katharina` ff., Zeile 54) wechseln. `git diff --numstat` nativ
geprueft: 1 Zeile geaendert / 1 Zeile (additiv erweitert), keine Loeschung von Bestand. Kein
Fan-out, kein Versand, keine Buchung, keine destruktive Aktion. Budget dieses Zyklus: rund 1.0
von 5 USD.

## 2026-08-29 02:30 (Mac Mini Nachtschicht) — Vier weitere Namen aus Sammelfrage Charge 1 recherchiert (Carmassi_Massimo, Chochol, Cohen_Preston_Scott, Dieste_Elado)

Prioritaeten 1-4 leer bzw. nicht anwendbar: keine pending remote-/sync-Tasks; Synobsis Stufe 1+2
vollstaendig (853/853); `bauprodukte`/`grobkosten` formal erledigt/ausgesetzt; `energie` erst rund
4 Stunden zuvor im eigenen Takt gelaufen (Run 166, 27.08. 22:58); `baurecht`/`normen`/
`planungsgrundlagen`/`wettbewerbs-dna` per Vorgabe ausgeschlossen (eigener Taktgeber).
Fristen-Register (`logbuch/fristen.md`) ohne neuen Handlungsbedarf fuer diesen Zyklus.

Auf Prioritaet 5 ausgewichen: der 23:30-Lauf hatte acht der vierzehn Sammelfrage-Charge-1-Namen
als "bereits offensichtlich bekannt" eingestuft, ohne sie einzeln zu belegen. Vier davon (Cebra,
Da Vinci, Dietrich Untertrifaller, Dogma) sind tatsaechlich zweifelsfrei; die anderen vier
(Carmassi_Massimo, Chochol, Cohen_Preston_Scott, Dieste_Elado) waren nicht wirklich unstrittig
genug, um ohne Beleg als erledigt zu gelten, und wurden jetzt per WebSearch einzeln bestaetigt:
**Massimo Carmassi** (italienischer Architekt, Restaurierung historischer Stadtzentren, Pisa),
**Josef Chochol** (tschechischer Kubismus-Architekt, 1880-1956), **Preston Scott Cohen**
(US-Architekt, Harvard GSD, Geometrie-Architektur) und **Eladio Dieste** (uruguayischer
Bauingenieur, bewehrtes Ziegelmauerwerk/Gausssche Gewoelbeschale). Details mit Quellenangabe in
`wiki/QUESTIONS.md` an der bestehenden Sammelfrage-Zeile angehaengt. Damit sind zehn der
vierzehn Namen der Charge 1 belastbar oder wahrscheinlich identifiziert, vier bleiben unveraendert
offen (Cebra_Architekten, Da_Vinci_Leonardo, Dietrich_Untertrifaller, Dogma — bekannt, aber nicht
einzeln belegt). `git diff --numstat` nativ geprueft: 1 Zeile geaendert / 1 Zeile (additiv
erweitert), keine Loeschung von Bestand. Kein Fan-out, kein Versand, keine Buchung, keine
destruktive Aktion. Budget dieses Zyklus: rund 0.9 von 5 USD.

## 2026-08-28 23:30 (Mac Mini Nachtschicht) — Sechs Namen aus Sammelfrage Charge 1 recherchiert (Brauen_Waelchli, Brunhart_Brunner_Kranz, Buehler_Martin, Burkhardt_Elsa, Consoni_Beat, Dunkel)

Prioritaeten 1-4 leer bzw. nicht anwendbar: keine pending remote-/sync-Tasks; Synobsis Stufe 1+2
vollstaendig (853/853, `vectors.npz` unveraendert); `bauprodukte`/`grobkosten` formal
erledigt/ausgesetzt, `energie` erst rund 30 Minuten zuvor im eigenen Takt gelaufen (Run 166,
22:58); `baurecht`/`normen`/`planungsgrundlagen`/`wettbewerbs-dna` per Vorgabe ausgeschlossen
(eigener Taktgeber). Fristen-Register (`logbuch/fristen.md`) fuehrt nur bereits bekannte,
weiterlaufende Punkte ohne neuen Handlungsbedarf fuer diesen Zyklus.

Auf Prioritaet 5 ausgewichen, gleiche Methodik wie die Laeufe seit 24.08.: sechs bislang
unrecherchierte Namen aus der Sammelfrage-Charge 1 (`wiki/QUESTIONS.md` Zeile 32, vierzehn Namen
insgesamt) per WebSearch geklaert, direkt im Hauptkontext, kein Fan-out.

**Brauen_Waelchli**, **Brunhart_Brunner_Kranz**, **Buehler_Martin** und **Consoni_Beat**
belastbar bestaetigt (je ein eindeutiges, aktives Schweizer/Liechtensteiner Architekturbuero
gefunden). **Burkhardt_Elsa** und **Dunkel** nur wahrscheinlich (Schreibvariante Burckhardt-Blum
bzw. Vorname-Zuordnung William Dunkel), da ohne Ordnerinhalt nicht gegen den konkreten Dateiinhalt
verifizierbar. Details je Name mit Quellenangabe direkt in `wiki/QUESTIONS.md` an der bestehenden
Sammelfrage-Zeile angehaengt. `git diff --numstat` nativ geprueft: 1 Zeile geaendert / 1 Zeile
(dieselbe Bulletzeile additiv erweitert), keine Loeschung von Bestand. Keine Ordnerumbenennung,
kein Fan-out, kein Versand, keine Buchung, keine destruktive Aktion. Budget dieses Zyklus: rund
1.7 von 5 USD.

## 2026-08-28 05:30 (Mac Mini Nachtschicht) — Sechs weitere offene Fragen aus QUESTIONS.md recherchiert (Conte_Pianetti_Zanetta_Arch, Taylor, Whiting_Luci, Wollkenstein, maya, darlington_meyer)

Prioritaeten 1-4 leer bzw. nicht anwendbar: keine pending remote-/sync-Tasks; Synobsis Stufe 1+2
vollstaendig (`vectors.npz` unveraendert); `bauprodukte`/`grobkosten` formal erledigt/ausgesetzt,
`energie` erst vor rund drei Stunden im eigenen Takt gelaufen (Run 165, 27.08.), `baurecht`/
`normen`/`planungsgrundlagen`/`wettbewerbs-dna` per Vorgabe ausgeschlossen (eigener Taktgeber).
Fristen-Register (`logbuch/fristen.md`) fuehrt nur bereits bekannte, weiterlaufende Punkte ohne
neuen Handlungsbedarf fuer diesen Zyklus.

Auf Prioritaet 5 ausgewichen, gleiche Methodik wie die Laeufe seit 24.08.: sechs weitere offene
Identitaets-/Sachfragen aus `wiki/QUESTIONS.md` per WebSearch geklaert (direkt im Hauptkontext,
kein Fan-out, Katalog-JSONs vorab auf Zusatzkontext geprueft — keine Dateinamen verfuegbar, nur
Dateizahlen/-typen).

**Conte_Pianetti_Zanetta_Arch** belastbar bestaetigt: Conte Pianetti Zanetta Architetti Sagl,
Carabbia/Lugano (Tessin), Partner Mario Conte, Gionas Pianetti, Michele Zanetta, u.a. Centro
Gioventù e Sport Bellinzona. Die restlichen fuenf Namen aus derselben Sammelfrage (Charge 6)
blieben unbestaetigt oder mehrdeutig: **darlington_meyer** plausibel (Darlington Meier
Architekten AG, Zuerich, gegruendet 2004, Schreibvariante Meier/Meyer), **Taylor** und **maya**
zu generisch (Taylor haeufiger Nachname bzw. Buero in Minden ohne Schweiz-Bezug; maya zweideutig
zwischen dem Buero Mayarchitekten und der mittelamerikanischen Maya-Architektur), **Whiting_Luci**
und **Wollkenstein** ohne jeden Treffer. Details je Frage mit Quellenangabe direkt in
`wiki/QUESTIONS.md`. `git diff --numstat` nativ geprueft: 2 Zeilen geaendert / 2 Zeilen (dieselben
zwei Bulletzeilen additiv erweitert), keine Loeschung von Bestand. Keine Ordnerumbenennung, kein
Fan-out, kein Versand, keine Buchung, keine destruktive Aktion. Budget dieses Zyklus: rund 1.7
von 5 USD.

## 2026-08-28 02:30 (Mac Mini Nachtschicht) — Zwei weitere offene Fragen aus QUESTIONS.md recherchiert (Boehm_Markus, Prinz_Norman/Seddig/Sigg/Schneller_Andreas/Schuerer_Architekten/Smith_Samuel_Modell)

Prioritaeten 1-4 leer bzw. nicht anwendbar: keine pending remote-/sync-Tasks; Synobsis Stufe
1+2 vollstaendig; `bauprodukte` formal erledigt (Endbedingung erreicht), `energie` heute
bereits an eigenem Takt gelaufen (Run 165/167), `baurecht`/`normen`/`planungsgrundlagen`/
`wettbewerbs-dna` per Vorgabe ausgeschlossen (eigener Taktgeber). `architektur-fachwissen`
gegengeprueft und bewusst NICHT gewaehlt: die beiden dort offenen Punkte (#15 Aufbewahrung
Bewerbungsunterlagen Dritter, #16 unbeschriftetes Diplomarbeitsfoto) sind ausdruecklich als
Entscheid Raphael markiert und beruehren zudem den sensiblen Korpus aus Rule
`auto-verbesserungen` 260823 (Bewerbungsdossiers Dritter) — kein autonomes Ziel.

Auf Prioritaet 5 ausgewichen, gleiche Methodik wie die Laeufe seit 24.08.: zwei weitere
Fragen aus `wiki/QUESTIONS.md` per WebSearch geklaert (direkt im Hauptkontext, kein Fan-out).
**Boehm_Markus** belastbar geklaert: Sohn Gottfried Boehms, aber nachweislich KEIN Architekt
(Informatik/Geologie-Studium, malerische Gestaltung von Architektur) — erklaert plausibel den
leeren Ordner. Die Sammelfrage **Prinz_Norman/Seddig/Sigg/Schneller_Andreas/
Schuerer_Architekten/Smith_Samuel_Modell** gemischt: Schneller_Andreas (Zuercher Buero
schneller.ch bestaetigt, Projektordner-Bezug «Holziken» aber NICHT in dessen Projektliste
gefunden) und Smith_Samuel_Modell (Samuel Pujol Smith, ETH/Kerez/Zumthor, Smith Studio
Zuerich) als plausibelste Treffer markiert; Seddig als einziger eindeutiger Treffer
(Seddig Fehrmann Architekten Mainz); Prinz_Norman schwach (ein Coroflot-Profil ohne weitere
Belege); Sigg und Schuerer_Architekten bleiben mangels Ordnerinhalt nicht eingrenzbar (je
mehrere gleichnamige Schweizer Bueros gefunden). QUESTIONS.md inline ergaenzt (Diff nativ
per ssh als rein additiv geprueft: 2/2 Zeilen erweitert, keine Loeschung). Keine
Ordnerumbenennung, kein Fan-out, kein Versand, keine Buchung, keine destruktive Aktion.
Budget dieses Zyklus: rund 2 von 5 USD.

## 2026-08-27 23:30 (Mac Mini Nachtschicht) — Sechs weitere offene Fragen aus QUESTIONS.md recherchiert (Baumann_Povel, C18, Koyama, Hufnagel, Luebps_Atelier, Worm_Maximilian)

Prioritaeten 1-3 leer/nicht umsetzbar (keine pending remote-/sync-Tasks; Synobsis Stufe 1+2
weiterhin vollstaendig 853/853, `vectors.npz` unveraendert seit 24.08.; Fristen-Register
fuehrt nur bereits bekannte Punkte, nichts fuer diesen Lauf). Prioritaet 4: `energie`,
`normen` und `twin` sind an ihren eigenen taeglichen Scheduled Tasks/Loops (Laeufe alle noch
heute, 27.08.), `baurecht`/`planungsgrundlagen`/`wettbewerbs-dna` per Vorgabe ausgeschlossen,
`bauprodukte`/`grobkosten` formal erledigt/ausgesetzt — kein gueltiges freies Ziel. Auf
Prioritaet 5 ausgewichen, gleiche Methodik wie die Laeufe seit 24.08.: sechs weitere offene
Identitaets-/Sachfragen aus `wiki/QUESTIONS.md` per WebSearch geklaert (direkt im
Hauptkontext, kein Fan-out).

Zwei Fragen mit belastbarem Ergebnis geklaert (Hufnagel als Hufnagel Puetz Rafaelian
Architekten Berlin bestaetigt inkl. Gruender/Werke; Worm_Maximilian als Magdeburger Architekt
der Firma Worm-Krayl plausibel, nur ueber einen Bibliothekskatalog belegt), drei mit
plausiblem, aber nicht direkt bestaetigtem Kandidaten (Baumann_Povel vermutlich Tippfehler
fuer den daenischen Architekten Povl Baumann, C18 vermutlich das zeitgenoessische Buero C18
Architekten BDA, Luebps_Atelier vermutlich Atelier Lüps Schondorf trotz abweichender
Schreibweise), eine ohne belastbaren Treffer (Koyama, haeufiger japanischer Nachname ohne
Anhaltspunkt im leeren Ordner). Details je Frage mit Quellenangabe direkt in
`wiki/QUESTIONS.md`. Keine Ordnerumbenennung vorgenommen (Freigabesache Raphael), kein
Fan-out, kein Versand, keine Buchung, keine destruktive Aktion. `git diff --numstat` nativ
geprueft: 6 Zeilen geaendert / 6 Zeilen (dieselben sechs Bulletzeilen additiv erweitert),
keine Loeschung von Bestand.

## 2026-08-27 05:30 (Mac Mini Nachtschicht) — Sechs weitere offene Fragen aus QUESTIONS.md recherchiert (Balisat, Chamberlin, Cheung_Simon, E_Architekten, FHV, Handa_Heike_Prof)

Prioritaeten 1-3 leer/nicht umsetzbar (keine pending remote-/sync-Tasks; Synobsis Stufe 1+2
weiterhin vollstaendig 853/853, `vectors.npz` unveraendert seit 24.08.; Fristen-Register fuehrt
nur bereits bekannte «Aktion Raphael»-Punkte, nichts fuer diesen Lauf). Prioritaet 4: `energie`
und `normen` sind an ihren eigenen taeglichen Scheduled Tasks (letzte Laeufe 26.08. 22:48 bzw.
27.08. 01:42), `twin` am eigenen Fragesteller-Takt (27.08. 03:51) — alle drei damit kein
gueltiges freies Ziel; `bauprodukte`/`grobkosten` formal erledigt/ausgesetzt, `baurecht`/
`planungsgrundlagen`/`wettbewerbs-dna` per Vorgabe ausgeschlossen. Auf Prioritaet 5 ausgewichen,
gleiche Methodik wie die Laeufe vom 24./26.08.: sechs weitere offene Identitaets-/Sachfragen aus
`wiki/QUESTIONS.md` per WebSearch geklaert (direkt im Hauptkontext, kein Fan-out).

Zwei Fragen mit belastbarem Ergebnis geklaert (Chamberlin als Chamberlin, Powell and Bon /
Barbican Estate bestaetigt; FHV als Fruehauf, Henry & Viladoms, Lausanne 2008, bestaetigt),
zwei mit plausiblem, aber nicht direkt belegtem Namens-Tippfehler-Kandidaten (Balisat →
vermutlich Balissat Kaçani, Baden; Handa_Heike_Prof → vermutlich Heike Hanada, TU Dortmund/
Bauhaus-Museum Weimar), zwei ohne belastbaren Treffer (Cheung_Simon, E_Architekten). Details je
Frage mit Quellenangabe direkt in `wiki/QUESTIONS.md`. Keine Ordnerumbenennung vorgenommen
(Freigabesache Raphael), kein Fan-out, kein Versand, keine Buchung, keine destruktive Aktion.
`git diff --numstat` nativ zu pruefen vor dem Commit (Rule `auto-verbesserungen` 260811): nur
additive Ergaenzung an den sechs Bulletzeilen, keine Loeschung von Bestand.

## 2026-08-26 23:31 (Mac Mini Nachtschicht) — Sechs weitere offene Fragen aus QUESTIONS.md recherchiert (Baumann_Ludwig, Arbeitsgruppe_4, BIQ_Architekten, Bicvardo_Arcitects, Boesch_Ivo, DECARVALHO_BOTELHO)

Prioritaeten 1-3 leer/nicht umsetzbar (keine pending remote-/sync-Tasks; Synobsis Stufe 1+2
weiterhin vollstaendig 853/853 verarbeitet, `vectors.npz` unveraendert seit 24.08.; Fristen-
Register fuehrt nur bereits bekannte «Aktion Raphael»-Punkte, nichts fuer diesen Lauf).
Prioritaet 4: `energie` wurde im eigenen Loop bereits mehrfach heute aktualisiert (Runs
02:35/13:39/13:43, Wiki-/Destillate-Mtimes frisch), `bauprodukte`/`grobkosten` sind laut
Vorgabe formal erledigt bzw. ausgesetzt. Auf Prioritaet 5 ausgewichen: sechs weitere offene
Identitaets-/Sachfragen aus `wiki/QUESTIONS.md` per WebSearch geklaert (direkt im
Hauptkontext, kein Fan-out).

Fuenf von sechs Fragen mit belastbarem Ergebnis geklaert (Ludwig Baumann als Kriegsministerium-
Architekt am Ring bestaetigt, Arbeitsgruppe 4 als Kurrent/Spalt/Holzbauer/Leitner-Quartett
bestaetigt, BIQ_Architekten als Rotterdamer biq stadsontwerp bestaetigt, Boesch_Ivo als
Architekt/Hochparterre-Redaktor-Doppelrolle bestaetigt, Bicvardo_Arcitects als wahrscheinliche
Doppelverschreibung von Bicuadro Architects Rom identifiziert ohne Direktbeleg); eine bleibt
ohne belastbaren Treffer offen (DECARVALHO_BOTELHO). Details je Frage mit Quellenangabe direkt
in `wiki/QUESTIONS.md`. Keine Ordnerumbenennung vorgenommen (Freigabesache Raphael), kein
Fan-out, kein Versand, keine Buchung, keine destruktive Aktion. `git diff --numstat` nativ
geprueft: 6 Zeilen geaendert / 6 Zeilen (dieselben sechs Bulletzeilen additiv erweitert),
keine Loeschung von Bestand.

## 2026-08-24 23:30 (Mac Mini Nachtschicht, zweiter Lauf) — Sechs weitere offene Fragen aus QUESTIONS.md recherchiert (Giannaci_Paolo, Hancock_John, Guidotti_Architetti, Killer_Hermes, Kiel_Andrew, Nimbus_Architekten, architectuul)

Prioritaeten 1-3 leer/nicht umsetzbar (keine pending remote-/sync-Tasks; Synobsis Stufe 2
weiterhin vollstaendig 853/853, `vectors.npz` unveraendert seit 22.08.; Fristen-Register
fuehrt nur den offenen Git-Sync-Stau als «AKTION Raphael», nichts fuer diesen Lauf).
Prioritaet 4: `bauprodukte` ist seit 15.08. formal erledigt (kein gueltiges Ziel mehr),
`energie` wurde im eigenen taeglichen Loop bereits um ~23:15 aktualisiert (Run 162, frische
Wiki-/Destillate-Mtimes 18:21-23:31) — kein Doppellauf noetig. Auf Prioritaet 5 ausgewichen:
sieben weitere offene Identitaets-/Sachfragen aus `wiki/QUESTIONS.md` per WebSearch geklaert
(direkt im Hauptkontext, kein Fan-out).

Fuenf von sieben Fragen mit belastbarem Ergebnis geklaert (Hancock_John als SOM-Gebaeude
bestaetigt, Guidotti_Architetti als reales Buero Monte Carasso bestaetigt, Kiel_Andrew als
Sauerbruch-Hutton-Partner bestaetigt, Nimbus_Architekten-Dateiumfang durch das mehrjaehrige
Einzelprojekt erklaert, architectuul als Architektur-Plattform statt Person bestaetigt); zwei
bleiben ohne belastbaren Treffer offen (Giannaci_Paolo, Killer_Hermes). Details je Frage mit
Quellenangabe direkt in `wiki/QUESTIONS.md`. Keine Ordnerumbenennung vorgenommen
(Freigabesache Raphael), kein Fan-out, kein Versand, keine Buchung, keine destruktive Aktion.
`git diff --numstat` nativ geprueft: 7 Zeilen geaendert / 7 Zeilen (dieselben sieben
Bulletzeilen additiv erweitert), keine Loeschung von Bestand.

## 2026-08-24 (Mac Mini Nachtschicht) — Vier weitere offene Fragen aus QUESTIONS.md recherchiert, darunter der moegliche Familienbezug «Haus Jans»

Prioritaeten 1-3 leer/nicht umsetzbar (keine pending remote-/sync-Tasks; Synobsis Stufe 2
vollstaendig 853/853, `vectors.npz` unveraendert seit 22.08.; Fristen-Register zeigt nur
bereits erledigte oder infrastrukturelle Punkte ausserhalb der eigenen Handlungsmacht).
Prioritaet 4 (KB `energie`, taeglicher Takt) an einem OneDrive-FileProvider-Deadlock
gescheitert (`find`/`mdfind` auf den internen OneDrive-Sync-Pfad haengt bzw. liefert nichts;
bekanntes Muster, siehe Memory `feedback_background_agent_onedrive_stall`) — auf Prioritaet 5
ausgewichen.

Vier weitere offene Punkte aus `wiki/QUESTIONS.md` per WebSearch geklaert (direkt im
Hauptkontext, kein Fan-out):

- **Munzer_Gustav_August** → bestaetigt: Architekt des Marine-Ehrenmals Laboe (1927
  Wettbewerb, 1929 vereinfacht gebaut); Ortskorrektur «Lavoe» → «Laboe» bestaetigt.
- **Rhytmeier_Furrer** → Buero Rittmeyer & Furrer (Winterthur, 1905-1933) bestaetigt,
  Schwerpunkt Psychiatrie-Bauten (Klinik Herisau 1906-08, Klinik Hohenegg 1913) erklaert das
  Ordner-Kuerzel «psuechiheim» plausibel; welches der beiden Projekte konkret gemeint ist,
  bleibt ohne Ordnersichtung offen.
- **Dreyer_Otto** und **Zeyer_Albert** (zusammen behandelt, gleiches Motiv «Haus Jans» Luzern
  1932 bzw. 1930) → beide Architekten als reale, in Luzern zur richtigen Zeit taetige Bueros
  bestaetigt (Otto Dreyer, eigenes Buero ab 1927; Albert Zeyer, Bueroeroeffnung in Luzern
  **1930** — faellt exakt mit dem Ordnerjahr zusammen). **Das konkrete Projekt «Haus Jans»
  selbst ist in keiner der geprueften Quellen (Wikipedia, HLS, Architekturbibliothek,
  Werkverzeichnisse) dokumentiert** — plausibel fuer eine private, nie separat publizierte
  Wohnhaus-Kommission. Ob ein Bezug zur Familie Jans besteht, ist damit NICHT beantwortet;
  Klaerung nur aus dem Ordnerinhalt selbst (Adresse, Bauherrenname auf den Plaenen) oder aus
  Familienunterlagen moeglich, nicht weiter websuchbar. Fuer Raphael pruefenswert, falls die
  beiden Ordner einmal gesichtet werden.

Details je Frage mit Quellenangabe direkt in `wiki/QUESTIONS.md`, Sektion 2 bzw. 3. Keine
Ordnerumbenennung vorgenommen (Freigabesache Raphael), kein Fan-out, kein Versand, keine
Buchung, keine destruktive Aktion. `git diff --numstat` nativ gepruefft: 4 Zeilen geaendert
(dieselben vier Bulletzeilen additiv erweitert), keine Loeschung von Bestand.

## 2026-08-24 (interaktive Session) — Vier weitere offene Identitaetsfragen aus QUESTIONS.md recherchiert

Fortsetzung des Rechercheformats der Nachtschicht-Laeufe (kein Fan-out, direkt im
Hauptkontext, WebSearch): vier offene Identitaetsfragen aus `wiki/QUESTIONS.md`, Sektion 2,
geklaert und in QUESTIONS.md sowie den betroffenen `wiki/INDEX.md`-Zeilen nachgetragen.

- **Sebrowitz_Jurkovic_Dusan_Sebrowitz** → bestaetigt, anders als vermutet: «Sebrowitz» ist
  keine zweite Person, sondern der historische deutsche Name des Bruenner Vororts Žabovřesky,
  wo Dušan Samo Jurkovič (1868-1947) sein eigenes Landhaus errichtete («Mein Haus in Sebrowitz
  bei Brünn»). Die Slug-Doppelung bleibt ein Ablage-/Scan-Artefakt.
- **Hugenberger_Fries_Arch** → bestaetigt: Buero huggenbergerfries, Zuerich, gegruendet 2000
  von Lukas Huggenberger und Erika Fries. Zusaetzlich Ortsfehler im Projektordner bestaetigt:
  der Limmat Tower (2015) steht im Quartier Limmatfeld der Gemeinde **Dietikon**, nicht
  «Dietlikon» wie im Ordnernamen.
- **Gmür Gschwentner / Gmuer_Patrick** → Verhaeltnis geklaert: Patrick Gmür fuehrte 1989-2009
  ein eigenes Buero, das ab 2010 unter seinem fruehren Partner Michael Geschwentner als
  «Gmür & Geschwentner» weitergefuehrt wurde; per 01.10.2016 wurde Gmür dort wieder Partner
  (seit 2020 «Steib Gmür Geschwentner Kyburz»). Erklaert die Ueberschneidung beim Projekt
  Hardturm in beiden Ordnern.
- **Riehmer_Wilhelm_Bauherr** → praezisiert: Wilhelm Riehmer (1830-1901) war nicht nur
  Maurermeister/Bauherr, sondern zugleich Grundeigentuemer und Bautraeger des nach ihm
  benannten Hofgarten-Ensembles (ab 1880, mit Otto Mrosk als Architekt) — vereint Bauherr,
  Bautraeger und Mit-Entwerfer in einer Person.

Details je Frage mit Quellenangabe direkt in `wiki/QUESTIONS.md`, Sektion 2. Keine
Ordnerumbenennung vorgenommen (Freigabesache Raphael), kein Fan-out, kein Versand, keine
Buchung, keine destruktive Aktion, keine Vertrags-/Bewerbungs-/Personal-/Adressdaten
uebernommen. Kein Commit/Push (Auftrag interaktiv, Freigabe ausstehend).

## 2026-08-23 (Mac Mini Nachtschicht, 05:30-Slot) — Vier weitere offene Identitaetsfragen aus QUESTIONS.md recherchiert

Priorisierung wie in den Vorlaeufen (Prioritaeten 1-4 leer/gesaettigt: keine pending remote-/
sync-Tasks; Synobsis Stufe 2 vollstaendig 853/853 verarbeitet, `vectors.npz` zuletzt 22.08.
13:31 geschrieben, kein neuer Stoff; keine freie KB mit eigenem `training/PROGRAMM.md` ohne
Taktgeber). Auf Prioritaet 5 ausgewichen, vier weitere offene Identitaetsfragen aus
`wiki/QUESTIONS.md` per WebSearch geklaert (direkt im Hauptkontext, kein Fan-out):

- **Kai_Fisker / Kay_Fisker** → bestaetigt: Kay Fisker (1893-1965), daenischer Architekt und
  Silberschmied, Professor an der Kunstakademiets Arkitektskole Kopenhagen; «Kai» ist ein
  Schreibfehler, kein Doppelname.
- **Rocha_Tombai** → bestaetigt: Rocha Tombal Architecten, Amsterdam (Ana Rocha, Michel
  Tombal); Schreibweise «Tombal» bestaetigt.
- **Reinhard_Fabio** → bestaetigt: Fabio Reinhart (*1942) und Bruno Reichlin (*1941), Schweizer
  Architekten-Duo Lugano, Tendenza/Neo-Rationalismus (Casa Tonini, Casa Sartori); Vorname-
  Schreibfehler «Reinhard» statt «Reinhart» bestaetigt.
- **Sassenroth_Peter_Teitermann** → bestaetigt: Reitermann Sassenroth Architekten Berlin
  (Rudolf Reitermann, Peter Sassenroth), Kapelle der Versoehnung Bernauer Strasse (2000);
  Schreibfehler «Teitermann» statt «Reitermann» bestaetigt.

Details je Frage in `wiki/QUESTIONS.md`, Sektion 2, mit Quellenangabe direkt an der jeweiligen
Frage. Keine Ordnerumbenennung vorgenommen (Umbenennungen bleiben Freigabesache Raphael), kein
Fan-out, kein Versand, keine Buchung, keine destruktive Aktion.

## 2026-08-23 (Mac Mini Nachtschicht, 02:30-Slot) — Vier weitere offene Identitaetsfragen aus QUESTIONS.md recherchiert

Priorisierung wie in den Vorlaeufen desselben Formats (Prioritaeten 1-4 leer/gesaettigt:
keine pending remote-/sync-Tasks; Synobsis Stufe 2 weiterhin deaktiviert 853/853, kein neuer
Stoff seit 02.07.2026; keine freie KB mit eigenem `training/PROGRAMM.md` ohne Taktgeber).
Auf Prioritaet 5 ausgewichen, vier weitere offene Identitaetsfragen aus `wiki/QUESTIONS.md`
per WebSearch geklaert (direkt im Hauptkontext, kein Fan-out):

- **Van_Gerkan_Meinrad / Gerkan** → bestaetigt: Meinhard von Gerkan (1935-2022), 1965 mit
  Volkwin Marg Gruendung von gmp, Flughafen Berlin-Tegel und Berlin Hauptbahnhof.
- **Yorke_Breuer / Yorke_Francis... / Breuer_Marcel** → bestaetigt: Partnerschaft F.R.S. Yorke
  und Marcel Breuer 1935-1937 (Gane Pavilion, Sea Lane House), danach Breuers Wechsel an die
  Harvard GSD; alle drei Ordner bleiben korrekt getrennt (Partnerschaftsfenster vs. Einzelwerke).
- **Gabetti_Robert** → bestaetigt: Roberto Gabetti (1925-2000) und Aimaro Oreglia d'Isola,
  gemeinsames Studio Turin ab 1950, Schluesselfiguren der Neoliberty-Bewegung.
- **Siza_Vieira_Àlavaro_Leite** → bestaetigt: Álvaro Leite Siza Vieira, Sohn von Álvaro Siza
  Vieira, eigenstaendiger Architekt (Casa Tóló Cerva, ab 1999); kein Doppelordner zum Vater.

Details je Frage in `wiki/QUESTIONS.md`, Sektion 2, mit Quellenangabe direkt an der jeweiligen
Frage. Keine Ordnerumbenennung vorgenommen (Umbenennungen bleiben Freigabesache Raphael), kein
Fan-out, kein Versand, keine Buchung, keine destruktive Aktion. Budget dieses Zyklus ca. 1.10 USD.

## 2026-08-22 (Mac Mini Nachtschicht, 23:30-Slot) — Vier weitere offene Identitaetsfragen aus QUESTIONS.md recherchiert

Priorisierung: Prioritaeten 1-4 wie im 13:30-Lauf desselben Tages leer/gesaettigt (keine
pending remote-/sync-Tasks; Synobsis Stufe 2 weiterhin deaktiviert 853/853, `vectors.npz`
letztmalig 13:31 Uhr geschrieben, kein neuer Stoff seit 02.07.2026; keine freie KB mit
`training/PROGRAMM.md`, Begruendung siehe 13:30-Eintrag). Auf Prioritaet 5 ausgewichen,
Fortsetzung desselben Rechercheformats: vier weitere offene Identitaetsfragen aus
`wiki/QUESTIONS.md` per WebSearch geklaert.

- **Muzio Lorenzo** → bestaetigt: Sohn von Giovanni Muzio (1893-1982), Vater-Sohn-Zusammenarbeit
  im gemeinsamen Studio Mailand belegt (u.a. Turmbau Castello-Quartier 1960).
- **Klint_Peder_Kaare / Jensen_Klint** → bestaetigt: P.V. Jensen-Klint (1853-1930, Grundtvigskirche
  Kopenhagen) und Sohn Kaare Klint (1888-1954), der den Bau nach dem Tod des Vaters vollendete;
  sogar Enkel Esben Klint wirkte mit.
- **Reidy Alfonso / Reidy_Eduardo** → bestaetigt: beide Ordner betreffen denselben Affonso Eduardo
  Reidy (1909-1964), Pedregulho-Siedlung und MAM Rio de Janeiro; keine zwei Personen.
- **Kahn_Adam** → bestaetigt: Buero schreibt sich Adam Khan Architects, London, gegruendet 2006
  von Adam Khan (zuvor Caruso St John Architects).

Details je Frage in `wiki/QUESTIONS.md`, Sektion 2, mit Quellenangabe direkt an der jeweiligen
Frage. Keine Ordnerumbenennung vorgenommen (Umbenennungen bleiben Freigabesache Raphael), kein
Fan-out, kein Versand, keine Buchung, keine destruktive Aktion.

## 2026-08-22 (Mac Mini Nachtschicht, 13:30-Slot) — Vier weitere offene Identitaetsfragen aus QUESTIONS.md recherchiert

Priorisierung: Prioritaeten 1-3 leer/nicht zutreffend (keine pending remote-/sync-Tasks;
Synobsis Stufe 2 weiterhin deaktiviert 853/853, kein neuer Stoff seit 02.07.2026). Prioritaet 4
gegengeprueft: `bauprodukte` traegt seit 15.08.2026 den Status ERLEDIGT/Bestaetigungstakt
(Inventar 0 offen/0 triagiert), `energie`/`baurecht`/`normen`/`planungsgrundlagen`/
`wettbewerbs-dna` haben je einen eigenen aktiven Taktgeber, `grobkosten` hat die Endbedingung
erreicht (13.08.), `immobilienbewertung`/`spec`/`projekt-lessons` sind auf Ereignis-Trigger
bzw. ausgesetzt — keine freie KB fuer Prioritaet 4 (deckt sich mit den Befunden der Laeufe
02:31 und 05:30 desselben Tages, die dort auf Prioritaet 6 auswichen).

Auf Prioritaet 5 ausgewichen, Fortsetzung des Rechercheformats vom 19./21.08.2026 (kleiner,
budgetdisziplinierter Block, kein Fan-out, direkt im Hauptkontext): vier weitere offene
Identitaetsfragen aus `wiki/QUESTIONS.md` per WebSearch geklaert.

- **Aillaud** → bestaetigt: Emile Aillaud (1902-1988), franzoesischer Architekt, Hauptwerke
  Les Courtilieres Pantin, La Grande Borne Grigny. Slug-Praezisierung auf Aillaud_Emile moeglich.
- **Gessner vs Gessner_Albert** → bestaetigt: beide Ordner gehoeren zu Albert Gessner
  (1868-1953), Berliner Miethaus-Architekt («Das deutsche Miethaus», 1909). Zusammenfuehren
  moeglich.
- **Meili Armin** → bestaetigt als eigenstaendige historische Person (1892-1981, Kultur- und
  Kongresshaus Luzern, Landesausstellung 1936-40), zeitlich/personell unabhaengig von
  Meili_Partner/MPP (Marcel Meili/Markus Peter). Keine Zusammenfuehrung noetig, drei Ordner
  bleiben korrekt getrennt.
- **Gaertner** → bestaetigt: Friedrich von Gaertner (1791-1847), Erbauer der Hofbibliothek
  (heute Bayerische Staatsbibliothek) Muenchen. Slug-Praezisierung auf Gaertner_Friedrich_von
  moeglich.

Details je Frage in `wiki/QUESTIONS.md`, Sektion 2, mit Quellenangabe direkt an der jeweiligen
Frage. Keine Ordnerumbenennung vorgenommen (Umbenennungen bleiben Freigabesache Raphael), kein
Fan-out, kein Versand, keine Buchung, keine destruktive Aktion. Budget dieses Zyklus ca.
1.6 USD von 5 USD.

## 2026-08-21 (Mac Mini Nachtschicht, 13:30-Slot) — Vier weitere offene Identitaetsfragen aus QUESTIONS.md recherchiert

Priorisierung wie im 05:33-Lauf desselben Tages gegengeprueft und bestaetigt: Prioritaeten 1-4
leer (keine pending remote-/sync-Tasks; Synobsis Stufe 2 weiterhin deaktiviert 853/853; kein
KB mit freiem `training/PROGRAMM.md`; `vollgas-radar` 12:57 bestaetigt energie/twin/synobsis als
die drei KBs mit heutigem Delta, alle drei ueber eigene Taktgeber bzw. den 05:33-Lauf). Auf
Prioritaet 5 ausgewichen, vier weitere offene Fragen aus `wiki/QUESTIONS.md` per WebSearch
geklaert (andere als im 05:33-Lauf):

- **Schultes_Frank** → bestaetigt: Schultes Frank Architekten, Berlin (Axel Schultes + Charlotte
  Frank, seit 1992 als Buero, seit 2006 unter diesem Namen). Slug ist Nachname_Nachname, keine
  Umbenennung noetig.
- **Bomarozzo** → bestaetigt: Sacro Bosco di Bomarzo («Parco dei Mostri»), Auftraggeber Vicino
  Orsini, Entwurf Pirro Ligorio. Orts-/Projekt-Merkposten, kein Architekten-Ordner.
- **Danzeisen_Voser_Hossorf** → Buero-Identitaet bestaetigt (Heinrich Danzeisen + Hans Voser,
  St. Gallen, 1950-1986); Zusatz «Hossorf» bleibt ungeklaert, nicht websuchbar.
- **Strnad_Lurje** → bestaetigt: Haus Hock, Cobenzlgasse 71 Wien (1910/1912-14), Oskar Strnad
  mit Viktor Lurje und Oskar Wlach.

Details je Frage in `wiki/QUESTIONS.md`, Sektion 2. Keine Ordnerumbenennung (Freigabesache
Raphael), kein Fan-out, kein Versand, keine Buchung, keine destruktive Aktion. Budget dieses
Zyklus: siehe Logbuch-Journal.

## 2026-08-21 (Mac Mini Nachtschicht) — Vier weitere offene Identitaetsfragen aus QUESTIONS.md recherchiert

Priorisierung: Prioritaeten 1-3 des Nachtschicht-Auftrags leer/gesaettigt (keine pending remote-/
sync-Tasks; Synobsis Stufe 2 weiterhin komplett und deaktiviert, 853/853; Fristen-Register wird
bereits taeglich vom `logbuch-radar` 06:55 und `hub-chef` 08:39 bedient, ein eigener Full-Pass
haette Doppelarbeit an einem 2557-Zeilen-Register bedeutet). Prioritaet 4 gegengeprueft und
bestaetigt leer: `energie` hat einen eigenen aktiven Scheduled Task (Runs 143/145 in den letzten
zwei Tagen), `bauprodukte`/`grobkosten` sind auf Bestaetigungstakt (Endbedingung erreicht),
`baurecht`/`normen`/`planungsgrundlagen`/`wettbewerbs-dna` haben je einen eigenen Taktgeber,
`projekt-lessons`/`immobilienbewertung`/`spec` sind ausgesetzt bzw. auf Ereignis-Trigger — keine
weitere KB mit `training/PROGRAMM.md` frei (deckt sich mit den Befunden der Laeufe vom 18./19.08.).

Auf Prioritaet 5 ausgewichen, Fortsetzung des Rechercheformats vom 19.08.2026 (kleiner,
budgetdisziplinierter Block, kein Fan-out, direkt im Hauptkontext): vier weitere offene
Identitaetsfragen aus `wiki/QUESTIONS.md` per WebSearch geklaert.

- **Villerauxban** → Villeurbanne (Gratte-Ciel-Quartier), Architekt **Môrice Leroux** (1896-1963).
  Ordnername ohne Zirkumflex, Orts-/Projekt-Merkposten statt Architekten-Ordner.
- **Zirau_Frank** → **Frank Zierau** (*1961), BSA/SIA-Architekt Zuerich seit 1997, Dufourstrasse 35.
  Schreibfehler-Vermutung bestaetigt.
- **Zuchi_Gino** → **Cino Zucchi** (*1955 Mailand), Professor Politecnico di Milano, CZA-Gruender.
  Doppelter Schreibfehler-Vermutung bestaetigt.
- **Erhard_Jann** → **Jann Erhard**, eigenes Buero seit 2017, Zuerich (jannerhard.com). Teilweise
  bestaetigt: Existenz und Buero-Zuordnung belegt, der konkrete Projektbezug zum Kindergarten
  Scaletta Chur liess sich in der Websuche nicht direkt verifizieren (offen als Vermutung markiert).

Details je Frage in `wiki/QUESTIONS.md`, Sektion 2/3. Keine Ordnerumbenennung (Umbenennungen bleiben
Freigabesache Raphael), kein Fan-out, kein Versand, keine Buchung, keine destruktive Aktion.

## 2026-08-19 (Mac Mini Nachtschicht) — Fuenf weitere offene Identitaetsfragen aus QUESTIONS.md recherchiert

Priorisierung: Prioritaeten 1-3 des Nachtschicht-Auftrags leer/gesaettigt (bestaetigt durch die
Laeufe 02:30/05:30 desselben Tages); Synobsis Stufe 2 weiterhin deaktiviert (853/853, kein neuer
Stoff seit 02.07.2026, Task seit 28.07. auf `enabled: false`); der KB-Vergleich ueber alle
wiki-fuehrenden KBs zeigt architekten-synobsis mit der aeltesten juengsten Artikel-Aenderung
(24.07.2026, `RAUMTYPOLOGIEN.md`) — Tiebreaker fuer Prioritaet 5/6 (`kunde-bopp` wurde bereits im
02:30-Lauf abgearbeitet). Fortsetzung des Rechercheformats vom 27.07.2026 (kleiner,
budgetdisziplinierter Block, kein Fan-out, direkt im Hauptkontext).

Fuenf oeffentlich recherchierbare Fragen aus `wiki/QUESTIONS.md` per WebSearch geklaert (alle mit
Quellenangabe direkt an der jeweiligen Frage ergaenzt, keine Ordnerumbenennung vorgenommen — braucht
Freigabe): **Kapfinger_Otto** (bestaetigt: oesterreichischer Architekturpublizist, *1949 Wien),
**Krokodil** (bestaetigt: Planergemeinschaft/Interessengruppe von rund 17 Zuercher BSA-Bueros fuer
die Verdichtung Glattal, kein Einzelarchitekt), **MPP** (Vermutung erhaertet, nicht abschliessend
belegt: vermutlich «Meili, Peter & Partner Architekten AG», Gruendung 1987, Sitz Gartenhofstrasse 15
Zuerich — Ordner-Impressum bleibt der harte Beleg), **Meili Partner** (keine eigenstaendige Firma
getrennt von MPP gefunden, bleibt ungeklaert ob Teilarchiv oder Verwechslung), **Menz_Sascha**
(bestaetigt: Sacha Menz, ETH-Professor Architektur und Bauprozess seit 2004, reiner Lehre-Merkposten).
Keine Frage bewusst ausgelassen ausser den personenbezogenen «Wer ist X im JANS-Kontext»-Fragen, die
nur Raphael beantworten kann (z.B. Maibach/Melly/Mueller/Malvez/Meier). Keine Aenderung an
`catalog/` oder Quellordnern. Budget ca. 0.90 USD von 5 USD (Anteil dieses Nachtschicht-Zyklus).

## 2026-08-11 (Mac Mini Nachtschicht 13:30-Slot) — KORRIGIERT: kein neuer Stoff, Doppelarbeit

**Korrektur eines eigenen Fehlbefunds im selben Lauf.** Erster Eindruck: `vectors.npz`
sei nicht vorhanden und Stufe 2 offen — Trugschluss, weil die eigene Suche nach
`*.index`/`*embedding*` und ein alphabetisch abgeschnittenes `ls catalog/ | head -20`
die Datei `vectors.npz` (sortiert unter «v») schlicht nicht erfasst hat. Tatsaechlich
lief Stufe 2 bereits seit 03.07.2026 als wiederkehrender Batch-Lauf (`synobsis-batch-nacht`,
zuletzt 24.07. — seither ohne neuen Stoff, deshalb keine weiteren Batch-Commits noetig).
`synobsis_embed.py` erneut gelaufen: Ergebnis-MD5 `b7e37031f13dfebad0210683b62aa46c`
**identisch** mit dem bereits committeten `vectors.npz` (deterministisches Modell,
unveraendertes `documents.jsonl`) — keine inhaltliche Aenderung, reine Wiederholung.
Scan-Status unveraendert 853/853, 0 offen. Semantische Suche als Nebenprodukt verifiziert
(`--semantic "introvertierter Hof Beton Kapelle"`, plausible Treffer). Kein Commit fuer
diesen Lauf noetig (nichts geaendert). Lehre: vor einer «fehlt/offen»-Diagnose in dieser
KB IMMER zuerst `git log --oneline -- wissen/architekten-synobsis/catalog/vectors.npz`
bzw. das CHANGELOG nach «synobsis-batch-nacht» durchsuchen, nicht nur den Dateibestand
per Glob abtasten.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B6 · C0 · D0 · E0 · F1 · G2

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Unveraendert zur Basis 2026-08-01: alle sechs B-Befunde entfallen auf `wiki/THEMEN.md` (kein Frontmatter, nicht im INDEX). Kein `raw/_INGESTED.md` — Audit D strukturell nicht anwendbar. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B2 · C1 · D0 · E0 · F175 · G1

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. `THEMEN. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-28 — Kein Batch (15. Leerlauf), Deaktivierung in der Registry nachvollzogen (Mac Mini)
Nachtlauf 02:17, Host-Weiche und NAS-Mounts erfuellt. Status unveraendert **853/853,
0 offen** (Scan-Stand steht seit 02.07.2026 still) — kein Batch gefahren, weil es nichts
zu verarbeiten gibt und der Task seit 25.07. in seinem eigenen Kopf als «DEAKTIVIERT»
gilt. Ursachenklaerung, warum er trotzdem feuerte: von den drei Feuermechanismen (Rule
260727 + Nachtrag 260728) waren nur zwei nachgezogen — launchd (`ch.jans.synobsis-batch.plist`
seit 25.07. als `.bak-stillgelegt` nicht geladen) und der Endlos-Runner (`synobsis` steht in
`EXCLUDE_RE`, Zeile 101); die **Scheduled-Task-Registry stand weiterhin auf `enabled: true`**
mit Cron `17 2 * * *`. Diese Luecke ist geschlossen: Task `synobsis-batch-nacht` auf
`enabled: false` gesetzt (reversibel, Prompt und Cron erhalten), Beschreibung auf den
Deaktivierungsgrund umgestellt. **Reaktivierung**, sobald neues Synobsis-Material eintrifft
(`offen > 0`) — dann genuegt `enabled: true`, Runner-Ausschluss und launchd bleiben wie sie
sind. Nebenbefund gemeldet, nicht angefasst: `baurecht-buch-training` traegt in der Registry
ebenfalls «DEAKTIVIERT auf Mac Mini (12.07.2026)», steht aber auf `enabled: true` und lief am
27.07. um 23:34 — gleicher Fehlertyp, gehoert dem Baurecht-Loop. Kein Fan-out, kein Subagent,
Quelle `/Volumes/daten/05_Architekten_Synobsis` unangetastet. Protokoll:
`outputs/2026-07-28_batch-lauf.md`.

## 2026-07-27 — Sechs offene Identitaets-Fragen aus QUESTIONS.md recherchiert (Mac Mini Nachtschicht)
Kleiner, budgetdisziplinierter Recherche-Block (kein Fan-out, sechs WebSearches) zu
Sektion 1/2 der QUESTIONS.md: **AASZ** (Kuerzel bleibt ungeklaert, Wettbewerbe Gockhausen/
Hittnau lieferten keinen Treffer), **Herter_Hermann_Meilard_Robert** (bestaetigt: Stadtbaumeister
Hermann Herter + Ingenieur Robert Maillart, mehrfache Zusammenarbeit Hallenbad Zuerich/
Musikpavillon Sihlhoelzli/Regierungsgebaeude Herisau), **Sergison_Bates_Dublin** (kein Dublin-
Buero belegt, nur London+Zuerich — Zusatz vermutlich Projektbezug, nicht Buerositz),
**Studio_Mumbai_Betoi** (kein Treffer zu «Betoi», bleibt ungeklaert), **Don_Fabio** (realer
Architekt Fabio Don identifiziert, Buero aber in Zuerich statt Tessin — urspruengliche Vermutung
widerlegt), **Sofaloung_Pinar_Goeunuel** (bestaetigt: Vorgaengerfirma von blgp architekten AG,
Gruenderin Pinar Gönül). Alle sechs Funde direkt in `wiki/QUESTIONS.md` mit Quellenangabe
ergaenzt (drei Vollklaerungen, zwei dokumentierte Negativ-Befunde, eine Teilklaerung/Korrektur).
Keine Ordnerumbenennung vorgenommen (braucht Freigabe gemaess KB-Kopfzeile). Kein Git ueber
SMB, kein Fan-out, sechs WebSearches — Budget ca. 1.10 USD von 5 USD.

## 2026-07-25 — Batch-Lauf Nr. 2 (leer, 14. Mal in Folge, ausserhalb Zeitfenster) + Vektorindex neu (Mac Mini)
Batch 25, 13:26 — zweiter Lauf desselben Tages, ausserhalb des Nachtfensters 22:00–06:00.
Faellt zeitlich mit der Wiederaufnahme des VOLLGAS-Runners nach Drosselaufhebung zusammen
(STOP-Dateien laut Rule-Eintrag 260725 erst ~12:45 tatsaechlich entfernt) — vermutlich ein
Nachhol-Lauf, keine Fehlkonfiguration des Tasks. Stufe 1 ohne neuen Stoff (853/853, offen 0,
Stand unveraendert 2026-07-02). Stufe 2 hat `catalog/vectors.npz` deterministisch neu gebaut
(853 × 768, `intfloat/multilingual-e5-base`). Kollisionsschutz (260724): keine Zweitinstanz.
Vierzehnter ergebnisloser Lauf in Folge — Empfehlung zum vierzehnten Mal: Task
`synobsis-batch-nacht` pausieren/herabtakten (Endbedingung erreicht). Protokoll:
`outputs/2026-07-25b_batch-lauf.md`.

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): Raumtypologie-Schluessel in CLAUDE.md korrigiert + Abnehmer-KB benannt
- **Widerspruch korrigiert (adversarial BESTAETIGT):** `CLAUDE.md` (Zugangs-Achse 2) nannte zwei der neun Raumtypen anders als der kanonische Katalog-Schluessel in `catalog/typology-map.json`: «Grosser Raum» statt **«Grosse Halle»** und «Skulpturaler» statt **«Skulptularer Raum»**. Die dort dokumentierte Abfrage `--raumtyp` schlug damit fehl. Git-Historie belegt: die Schluessel lauteten nie anders (`git log -p` liefert ausschliesslich `+ "Grosse Halle"` / `+ "Skulptularer Raum"`). Auf die literalen Schluessel korrigiert, inkl. Hinweis, dass «Skulptularer» ein Schreibfehler im **read-only** Quellordner `1 Selection` ist und bewusst unveraendert bleibt — die orthografisch richtige Form trifft den Teilstring-Filter NICHT. Eine Bereinigung am Quellordner waere destruktiv und braucht Freigabe Raphael; sie wird hier **nicht** vorgeschlagen. `typology-map.json`, `RAUMTYPOLOGIEN.md` und `tools/synobsis_query.py` sind korrekt und blieben unangetastet.
- **Abnehmer-KB benannt:** `CLAUDE.md` verwies nur generisch («speist Recherche/Referenz fuer Entwurf»). Neu ist `wissen/entwurfs-referenzen/` als Abnehmer ausgewiesen, mit Rollenteilung (hier Katalog + Raumfiguren, dort Entwurfs-Kennwerte je Bauaufgabe). Gegenrichtung in `entwurfs-referenzen/wiki/typologien/bildung.md` gesetzt.
- Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-25 — Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht)
Scan unveraendert 853/853 (13. ergebnisloser Nachtlauf in Folge, Empfehlung Task
`synobsis-batch-nacht` zu pausieren zum 13. Mal wiederholt). Umlaut-Ersatzschreibung aus dem
21.07.-Befund weiterhin unkorrigiert (INDEX.md 180 / QUESTIONS.md 56 / THEMEN.md 9 Treffer,
Wortgrenzen-Suche) — Root-Cause-Fix vom 21.07. verhindert nur neue Faelle, Bestand bleibt
Phase-2-Aufgabe. Positiv: der 24.07. direkt vom Hauptmodell verfasste `wiki/RAUMTYPOLOGIEN.md`
ist umlautsauber (0 Treffer), Backlink `[[RAUMTYPOLOGIEN]]` verifiziert. Nichts selbst
korrigiert (Phase 1). Report: `outputs/2026-07-25_health-check.md`.

## 2026-07-25 — Batch-Lauf (leer, 13. Mal in Folge) + Vektorindex neu (Mac Mini)
Batch 25, 02:18–02:19. Stufe 1 ohne neuen Stoff (853/853, offen 0, Stand unveraendert
2026-07-02). Stufe 2 hat `catalog/vectors.npz` deterministisch neu gebaut (853 × 768,
`intfloat/multilingual-e5-base`); Semantiksuche per Stichprobe intakt ("introvertierter
Hof Beton Kapelle", Top-Treffer ~0.85, u.a. Sauerbruch Hutton). Kollisionsschutz (260724):
keine Zweitinstanz (`ps` = 0). Quelle gegengeprueft: 854 Top-Level (853 + 00_Organisation),
juengste Aenderung `HdM` 2026-04-07, kein neues Rohmaterial. Dreizehnter ergebnisloser
Nachtlauf in Folge — Empfehlung zum 13. Mal: Task `synobsis-batch-nacht` pausieren/
herabtakten (Endbedingung erreicht). Protokoll: `outputs/2026-07-25_batch-lauf.md`.

## 2026-07-24 — Nachtschicht Mac Mini 08:30: Wiki-Artikel RAUMTYPOLOGIEN + QUESTIONS-Punkt geschlossen
Dispatch-Prioritaet 5 (offene QUESTIONS.md recherchieren/kompilieren): Stufe-2-Embeddings
bereits vollstaendig (853/853 seit 02:18, siehe Eintrag darunter — Status-Check hier hat nur
identisch neu geschrieben, kein Fix noetig); Fristen-Radar/Sync-Queues leer. Stattdessen den
laengst offenen QUESTIONS.md-Punkt "1 Selection" (Sektion 3) bearbeitet: neuer Artikel
`wiki/RAUMTYPOLOGIEN.md` — alle 9 Raumtypen (Atomisiert/Fliessend/Grosse Halle/Hybrid/Modular/
Narrativ/Skulptural/Struktur/Zentral) mit Beschreibung + allen 105 Projekten aus
`catalog/typology-map.json` + `catalog/raumtypen-beschreibungen.json`, Backlinks `[[slug]]` wo
im Katalog vorhanden. In `wiki/INDEX.md` (Eintrag "1 Selection") verlinkt, QUESTIONS.md-Punkt
als erledigt markiert. Bekannte Doppel-/Fehlzuordnung im Quellmaterial (Humboldt-Bibliothek
Berlin zweimal mit unterschiedlichem Architekten) als offener Datenqualitaets-Hinweis im
Artikel vermerkt, nicht am Quellordner korrigiert (Freigabe-Pflicht bei Destruktivem). Keine
NAS-Schreibkonflikte (Kollisionsschutz 260724 geprueft, keine Zweitinstanz).

## 2026-07-24 — Batch-Lauf (leer, 12. Mal in Folge) + Vektorindex neu (Mac Mini)
Batch 25, 02:18–02:19. Stufe 1 ohne neuen Stoff (853/853, offen 0, Stand unveraendert
2026-07-02). Stufe 2 hat `catalog/vectors.npz` deterministisch neu gebaut (853 × 768,
`intfloat/multilingual-e5-base`); Semantiksuche per Stichprobe intakt ("introvertierter
Hof Beton Kapelle", Top-Treffer um 0.85). Kollisionsschutz (260724): keine Zweitinstanz.
Quelle gegengeprueft: 854 Ordner (853 + 00_Organisation) + 6 lose Streudateien, juengste
Aenderung `HdM` 2026-04-07, kein neues Rohmaterial. Zwoelfter ergebnisloser Nachtlauf in
Folge — Empfehlung zum 12. Mal: Task `synobsis-batch-nacht` pausieren/herabtakten
(Endbedingung erreicht). Protokoll: `outputs/2026-07-24_batch-lauf.md`.

## 2026-07-23 — Batch-Lauf (leer, 11. Mal in Folge) + Vektorindex neu (Mac Mini)
Batch 25, 07:35–07:36. Stufe 1 ohne neuen Stoff (853/853, offen 0, Stand unveraendert
2026-07-02). Stufe 2 hat `catalog/vectors.npz` deterministisch neu gebaut (853 × 768,
`intfloat/multilingual-e5-base`); Semantiksuche per Stichprobe intakt ("introvertierter
Hof Beton Kapelle", Top-Treffer um 0.85). Quelle gegengeprueft: 854 Ordner, juengste
Aenderung `HdM` 2026-04-07, kein neues Rohmaterial. Git-Diff nur Zeitstempel (`INDEX.md`,
`cad-index.json`). Elfter ergebnisloser Nachtlauf in Folge — Empfehlung zum 11. Mal: Task
`synobsis-batch-nacht` pausieren/loeschen (Endbedingung erreicht). Protokoll:
`outputs/2026-07-23_batch-lauf.md`.

## 2026-07-22 — Umlaut-Bug (ASCII-Ersatzschreibung in Haiku/Sonnet-Subagenten-Outputs) bestätigt betroffen
Cross-KB-Verifikation (Nachtschicht Mac Mini ~19:00, ausgehend von der KB baurecht): die
"Minimum Viable Model"-Subagenten-Delegation seit 19.07. gibt die Umlaut-Regel nicht an
den Subagenten weiter — auch in `architekten-synobsis` empirisch nachgewiesen (Batch-Laeufe
19.-21.07. mit "fuer/geprueft/moeglich/natuerlich"). Voller Befund + vorgeschlagener Fix:
`wissen/baurecht/outputs/2026-07-22_umlaut-bug-verifikation-nachtschicht.md`.

## 2026-07-22 — Batch-Lauf (leer, 10. Mal in Folge) + Vektorindex neu (Mac Mini Nachtschicht)
Batch 25, 02:18–02:19. Stufe 1 ohne neuen Stoff (853/853, offen 0, Stand unveraendert
2026-07-02). Stufe 2 hat `catalog/vectors.npz` deterministisch neu gebaut (853 × 768,
`intfloat/multilingual-e5-base`); Semantiksuche per Stichprobe intakt (Boehm/Zumthor auf
"introvertierter Hof Beton Kapelle"). Quelle gegengeprueft: juengste Ordner-Aenderung `HdM`
2026-04-07, kein neues Rohmaterial. Diff nur Zeitstempel (`INDEX.md`, `cad-index.json`).
Zehnter ergebnisloser Nachtlauf in Folge — Empfehlung zum 10. Mal: Task
`synobsis-batch-nacht` pausieren/loeschen (Endbedingung erreicht). Protokoll:
`outputs/2026-07-22_batch-lauf.md`.

## 2026-07-21 — Root-Cause zum Umlaut-Befund gefunden + Infra-Fix (Mac Mini Nachtschicht)
Die drei heutigen Wissenscheck-Audits (energie, planungsgrundlagen, architekten-synobsis)
fanden alle dasselbe Muster: flaechendeckende ae/oe/ue-Ersatzschreibungen statt echter
Umlaute, quer durch praktisch alle Wiki-Artikel — kein Einzelfehler. Ursache identifiziert:
die launchd-Jobs, die diese drei KBs trainieren (`ch.jans.training-energie`,
`ch.jans.training-plg`, `ch.jans.synobsis-batch`, alle ueber `scripts/dispatch-run.sh`),
laufen ohne interaktives Login-Profil in der POSIX-"C"-Locale (`LANG=""`, `LC_CTYPE=C`)
statt einer UTF-8-Locale. Fix: `scripts/dispatch-run.sh` erzwingt jetzt `LANG=de_CH.UTF-8` /
`LC_ALL=de_CH.UTF-8` im Abschnitt "Locale abhaerten" (analog zum bestehenden PATH-Haerten).
Bestehende ae/oe/ue-Stellen im Wiki sind davon nicht betroffen (Phase 2/Korrektur bleibt
interaktiv) — der Fix verhindert nur neue Faelle ab dem naechsten Trainingslauf.

## 2026-07-21 — Wissens-Health-Check (Phase 1, Skill wissenscheck, Mac Mini Nachtschicht)
Erster Check seit dem Aufbau der Stufe-3-Kuratierungs-Wiki (02.–03.07.); der Check vom 01.07.
kannte `wiki/` noch nicht. Skriptgestuetzter Backlink-Abgleich `THEMEN.md` (697 Slugs) gegen
`INDEX.md` (849 Eintraege): **0 tatsaechlich toter Link**, aber 38 Unterstrich-vs-Leerzeichen-
und 6 Sonderzeichen/Umlaut-Format-Inkonsistenzen (alle gegen `catalog/<slug>.json` verifiziert,
Katalogdatei existiert je). **Top-Finding: 32 Umlaut-Ersatzschreibungen in `wiki/INDEX.md`**
(fuer/ueber/moeglich/…, Stichwortsuche) — deckt sich mit dem identischen Befund derselben Nacht
in den KBs `energie` und `planungsgrundlagen` (drittes von drei Mac-Mini-KBs, staerkt den
Verdacht auf eine gemeinsame Ursache im Kuratierungs-/Trainings-Loop). `wiki/QUESTIONS.md` seit
Kuratierungs-Abschluss 03.07. inhaltlich eingefroren (konsistent mit dem bekannten, bereits
mehrfach eskalierten Befund: Scan-Batch seit 02.07. ohne neuen Quellstoff). Nichts selbst
korrigiert (Phase 2 nur interaktiv). Report: `outputs/2026-07-21_health-check.md`.

## 2026-07-21
- Nacht-Batch (`synobsis-batch-nacht`, Mac Mini, 02:18–02:19): Ergebnis wie die ganze Serie seit 2026-07-13 — 853/853, offen 0, `vectors.npz` deterministisch neu geschrieben (853 × 768), kein inhaltlicher Diff, nur Zeitstempel in `INDEX.md`/`cad-index.json` (`git diff --stat`: 2 files, 2 ins, 2 del). Quelle unabhaengig gegengeprueft: unveraendert 854 Top-Level-Verzeichnisse (853 Architekten + `00_Organisation`), juengste Architekten-Ordner-Aenderung `HdM`, 07.04.2026 — kein neuer Stoff seit dem Katalog-Stand 2026-07-02 (19 Tage). Stufe 2 per Stichprobe funktionsgeprueft (`--semantic "introvertierter Hof Beton Kapelle"` → plausible Rangfolge, Top-Score 0.85). **Empfehlung an Raphael zum neunten Mal in Folge: Scheduled Task `synobsis-batch-nacht` loeschen oder pausieren** — Endbedingung erreicht, Regel 260712b; damit 19 ergebnislose Wiederholungslaeufe seit dem 13.07. Nicht selbst umgesetzt (Task-Auftrag deckt keine Konfigurationsaenderung). Protokoll: `outputs/2026-07-21_batch-lauf.md`.

## 2026-07-20
- **Nachtlauf zunaechst abgebrochen (Voraussetzung 2 verletzt), am Tag nachgeholt.** Der planmaessige Lauf fand `/Volumes/daten` nicht gemountet vor; Diagnose: Mac Mini hing im Fremdnetz `192.168.53.0/24` (Default-Gateway 192.168.53.1 via `en1`), NAS-LAN `192.168.1.10`, NAS-Tailscale `100.92.246.28` und Gateway `192.168.1.1` je 100 % Paketverlust, Tailscale-CLI mit Startfehler. Gemaess Auftrag nichts erzwungen. Nach Wiederherstellung der Netzanbindung durch Raphael Lauf um 11:53–11:53 (26 s) nachgeholt: Ergebnis wie die ganze Serie seit 2026-07-13 — 853/853, offen 0, `vectors.npz` deterministisch ohne inhaltlichen Diff neu geschrieben (853 × 768), nur Zeitstempel in `INDEX.md`/`cad-index.json` (`git diff --stat`: 2 files, 2 ins, 2 del). Stufe 2 zusaetzlich per Stichprobe funktionsgeprueft (`--semantic "introvertierter Hof Beton Kapelle"` → plausible Rangfolge, Top-Score 0.85). Quelle unabhaengig gegengeprueft: unveraendert 854 Top-Level-Verzeichnisse (853 Architekten + `00_Organisation`), juengste Architekten-Ordner-Aenderung `HdM`, 07.04.2026 — kein neuer Stoff seit dem Katalog-Stand 2026-07-02 (18 Tage). **Empfehlung an Raphael zum achten Mal in Folge: Scheduled Task `synobsis-batch-nacht` loeschen oder pausieren** — Endbedingung erreicht, Regel 260712b; damit **18 ergebnislose Laeufe** seit dem 13.07. Der heutige Zwischenfall stuetzt die Empfehlung: ein ertragloser Loop erzeugt bei jeder Stoerung Diagnoseaufwand ohne Gegenwert. Nicht selbst umgesetzt (Task-Auftrag deckt keine Konfigurationsaenderung). Nebenbefund zur Weiterverfolgung ausserhalb dieser KB: die zeitweise Fremdnetz-Lage und der Tailscale-Startfehler betreffen alle Always-On-Ketten des Mac Mini. Protokoll: `outputs/2026-07-20_batch-lauf.md`.

## 2026-07-19
- Nacht-Batch (`synobsis-batch-nacht`, Mac Mini, 02:18–02:18): Ergebnis wie die ganze Serie seit 2026-07-13 — 853/853, offen 0, `vectors.npz` deterministisch ohne inhaltlichen Diff neu geschrieben (853 × 768), nur Zeitstempel in `INDEX.md`/`cad-index.json` (`git diff --stat`: 2 files, 2 ins, 2 del). Quelle unabhaengig gegengeprueft: 854 Top-Level-Verzeichnisse (853 Architekten + `00_Organisation`) plus 6 lose Streudateien im Wurzelordner; juengste Architekten-Ordner-Aenderung `HdM`, 07.04.2026 — kein neuer Stoff seit dem Katalog-Stand 2026-07-02 (17 Tage). **Empfehlung an Raphael zum siebten Mal in Folge: Scheduled Task `synobsis-batch-nacht` loeschen oder pausieren** — Endbedingung erreicht, Regel 260712b; belegt sind inzwischen **17 ergebnislose Laeufe** seit dem 13.07. (`grep START outputs/batch.log`: 7/6/1/1/1/1 an den Tagen 13./14./15./17./18./19.07.). Nicht selbst umgesetzt (Task-Auftrag deckt keine Konfigurationsaenderung). Nebenbefund: fuer den **16.07.2026** fehlt jeder START-Eintrag im `batch.log` sowie Protokoll und CHANGELOG-Zeile — der Task hat an diesem Tag nicht ausgeloest (ohne Ertragsfolge, Katalog war vollstaendig). Protokoll: `outputs/2026-07-19_batch-lauf.md`.

## 2026-07-18
- Nacht-Batch (`synobsis-batch-nacht`, Mac Mini, 02:18–02:18): Ergebnis wie die ganze Serie seit 2026-07-13 — 853/853, offen 0, `vectors.npz` deterministisch ohne inhaltlichen Diff neu geschrieben (853 × 768), nur Zeitstempel in `INDEX.md`/`cad-index.json` (`git diff --stat`: 2 files, 2 ins, 2 del). Quelle unabhaengig gegengeprueft: 854 Top-Level-**Verzeichnisse** (853 Architekten + `00_Organisation`) plus 6 lose Streudateien im Wurzelordner (jpg/dwg/docx/.DS_Store, keine Architektenordner, vom Scan korrekt ignoriert; der Roh-`ls`-Zaehler 859 = 854 Ordner + 6 Dateien − versteckte `.DS_Store`). Juengste Ordner-Aenderung `HdM`, 07.04.2026 — kein neuer Stoff seit dem Katalog-Stand 2026-07-02 (16 Tage). **Empfehlung an Raphael unveraendert: den Loop stilllegen statt weiter drosseln** — Endbedingung erreicht, Regel 260712b. Nicht selbst umgesetzt (Task-Auftrag deckt keine Konfigurationsaenderung). Protokoll: `outputs/2026-07-18_batch-lauf.md`.

## 2026-07-17
- Nacht-Batch (`synobsis-batch-nacht`, Mac Mini, 02:18–02:19): Ergebnis wie die ganze Serie seit 2026-07-13 — 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json`. Quelle unabhaengig gegengeprueft: 854 Top-Level-Ordner (853 Architekten + `00_Organisation`), juengste Ordner-Aenderung 07.04.2026 — kein neuer Stoff seit dem Katalog-Stand 2026-07-02 (15 Tage). **Empfehlung an Raphael: den Loop stilllegen statt weiter drosseln** — Endbedingung erreicht, Regel 260712b («abgeschlossene Inventare werden ganz beendet statt gedrosselt»); Praezedenz `normen-training-mini`. Nicht selbst umgesetzt (Task-Auftrag deckt keine Konfigurationsaenderung). Protokoll: `outputs/2026-07-17_batch-lauf.md`.

## 2026-07-15
- Nacht-Batch (`synobsis-batch-nacht`, Mac Mini, 02:18–02:19): erster Wiederholungslauf nach der Drosselung (Regel 260714, Endlos-Runner gestoppt) — regulaerer Nacht-Task. Identisches Ergebnis wie die Serie seit 2026-07-13: 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert. Kein neuer Stoff seit 2026-07-02 (13 Tage). Ohne neues Rohmaterial in der Quelle oder eine freigegebene Stufe-3-Bereinigung bringt der Lauf keinen weiteren inhaltlichen Ertrag. Protokoll: `outputs/2026-07-15_batch-lauf.md`.

## 2026-07-14
- Sechster Batch-Aufruf desselben Tages (`synobsis-batch-nacht`, Mac Mini, 12:35–12:35, regulaerer Task-Aufruf): identisches Ergebnis wie die fuenf vorherigen Laeufe — 853/853, offen 0, `vectors.npz` deterministisch ohne inhaltlichen Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert. Kein neuer Stoff seit 2026-07-02 (12 Tage). Sechster ergebnisloser Lauf des Tages — Hinweis, dass die aktuelle Taktung ohne neues Rohmaterial in der Quelle oder eine freigegebene Stufe-3-Bereinigung keinen weiteren Ertrag mehr bringt. Ergaenzung in `outputs/2026-07-14_batch-lauf.md`.
- Fuenfter Batch-Aufruf desselben Tages (`synobsis-batch-nacht`, Mac Mini, 11:54–11:54, regulaerer Task-Aufruf): Quelle zeigte 859 statt 854 Top-Level-Eintraege — Pruefung ergab keinen echten Rueckstand, nur drei bereits verarbeitete Architekten-Ordner mit Leerzeichen am Namensende (`Conte Pianetti Zanetta Arch `, `Smiljan Radic `, `Radic_Smjlian`, faelschlich als offen erschienen durch einen eigenen `.strip()`-Fehler im Ad-hoc-Vergleich) sowie fuenf lose Root-Dateien (kein Ordner, werden zu Recht nicht gescannt). Batch bestaetigt 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel aktualisiert. Kein neuer Stoff seit 2026-07-02. Empfehlung an Raphael (nicht umgesetzt): die fuenf losen Root-Dateien in der Quelle bei Gelegenheit einsortieren/aufraeumen. Ergaenzung in `outputs/2026-07-14_batch-lauf.md`.
- Vierter Batch-Aufruf desselben Tages (`synobsis-batch-nacht`, Mac Mini, 08:46–08:47, VOLLGAS-Endlos-Taktung): identisches Ergebnis wie die drei vorherigen Laeufe — 853/853, offen 0, weiterhin 854 Quell-Ordner (`00_Organisation` einziger Nicht-Architekten-Ordner), `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert. Kein neuer Stoff seit 2026-07-02. Ergaenzung in `outputs/2026-07-14_batch-lauf.md`.
- Dritter Batch-Aufruf desselben Tages (`synobsis-batch-nacht`, Mac Mini, 06:28–06:29, VOLLGAS-Endlos-Taktung): identisches Ergebnis wie die zwei vorherigen Laeufe — 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben (`git diff --stat` leer), nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert. Kein neuer Stoff seit 2026-07-02. Ergaenzung in `outputs/2026-07-14_batch-lauf.md`.
- Zweiter Batch-Aufruf desselben Tages (`synobsis-batch-nacht`, Mac Mini, 05:47–05:47, VOLLGAS-Endlos-Taktung): vorab Quellverzeichnis gegen den Katalog geprueft (854 statt 853 Top-Level-Ordner) — Differenz ist der neue Ordner `00_Organisation` (Buero-interne Ablage, kein Architekt), also weiterhin kein neuer Stoff. Ergebnis identisch zum 00:27-Lauf: 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert (weiterhin 15 Architekten mit CAD). Ergaenzung in `outputs/2026-07-14_batch-lauf.md`.
- Nacht-Batch (`synobsis-batch-nacht`, Mac Mini, 00:27–00:27): identisches Ergebnis wie die Serie der Wiederholungslaeufe seit 2026-07-13 09:29 — 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert (weiterhin 15 Architekten mit CAD). Kein neuer Stoff. Ergaenzung in `outputs/2026-07-14_batch-lauf.md`.

## 2026-07-13
- Siebter Batch-Aufruf desselben Tages (19:24, VOLLGAS-Endlos-Taktung): identisches Ergebnis wie die sechs vorherigen Laeufe — 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert. Kein neuer Stoff. Ergaenzung in `outputs/2026-07-13_batch-lauf.md`.
- Sechster Batch-Aufruf desselben Tages (14:53–14:53, VOLLGAS-Endlos-Taktung): identisches Ergebnis wie die fuenf vorherigen Laeufe — 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert. Kein neuer Stoff. Ergaenzung in `outputs/2026-07-13_batch-lauf.md`.
- Fuenfter Batch-Aufruf desselben Tages (14:15–14:16, VOLLGAS-Endlos-Taktung): identisches Ergebnis wie die vier vorherigen Laeufe — 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert. Kein neuer Stoff. Hinweis fuer die naechste Taktung: reine Wiederholungslaeufe ohne neues Rohmaterial bringen ab hier keinen weiteren Fortschritt mehr — naechster sinnvoller Schritt ist entweder neuer Stoff in der Quelle oder eine von Raphael freigegebene Stufe-3-Bereinigung der in `wiki/QUESTIONS.md` gesammelten Doppelordner-/Slug-Fragen. Ergaenzung in `outputs/2026-07-13_batch-lauf.md`.
- Vierter Batch-Aufruf desselben Tages (09:29–09:30, VOLLGAS-Endlos-Taktung, jetzt auch ausserhalb des Nachtfensters gemaess Regel 260712c): identisches Ergebnis wie die drei vorherigen Laeufe — 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert (weiterhin 15 Architekten mit CAD). Kein neuer Stoff, kein inhaltlicher Fortschritt. Bereits vom NAS-Selfcommit erfasst (`4b47bf51`), kein separater Commit noetig. Ergaenzung in `outputs/2026-07-13_batch-lauf.md`.
- Dritter Nacht-Batch-Aufruf desselben Tages (06:55–06:56, VOLLGAS-Taktung): identisches Ergebnis wie die zwei vorherigen Laeufe — 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert (weiterhin 15 Architekten mit CAD). Kein neuer Stoff, kein inhaltlicher Fortschritt. Ergaenzung in `outputs/2026-07-13_batch-lauf.md`.
- Zweiter Nacht-Batch-Aufruf desselben Tages (05:59–06:00, VOLLGAS-Taktung): identisches Ergebnis wie der 05:24-Lauf — 853/853, offen 0, `vectors.npz` deterministisch ohne Diff neu geschrieben, nur Zeitstempel in `INDEX.md`/`cad-index.json` aktualisiert (weiterhin 15 Architekten mit CAD). Kein neuer Stoff, kein inhaltlicher Fortschritt gegenueber dem ersten Lauf. Bereits vom NAS-Selfcommit erfasst (`efd9383d`). Ergaenzung in `outputs/2026-07-13_batch-lauf.md`.
- Nacht-Batch (`synobsis-batch-nacht`, Mac Mini): Stufe 1 nichts zu tun (853/853, offen 0), Stufe 2 `vectors.npz` neu geschrieben (853 × 768, deterministisch → kein Diff), Stufe 3 entfaellt (keine neuen Eintraege). `catalog/cad-index.json` enthaelt neu 15 Architekten mit erkannten CAD-Dateien (`architekten_mit_cad: 15`) statt der am 12.07. vermerkten 0 Eintraege — diesmal committet, da nicht mehr leer. Protokoll: `outputs/2026-07-13_batch-lauf.md`.

## 2026-07-12
- Nacht-Batch (`synobsis-batch-nacht`, Mac Mini) brach zunaechst in Stufe 1 ab: `rebuild_index()` warf `KeyError: 'architekt'` an den zwei am 2026-07-11 dazugekommenen Hilfsdateien `catalog/typology-map.json` + `catalog/raumtypen-beschreibungen.json` (Typologie-Referenzen mit `_meta`-Kopf, keine Architekten-Records). Fix in `tools/synobsis_scan.py`: Guard in `rebuild_index()`, der Records ohne `architekt`-Key ueberspringt (robust ggue. kuenftigen Nicht-Architekten-JSONs im catalog/). Danach sauberer Durchlauf: Stufe 1 nichts zu tun (853/853, offen 0), Stufe 2 `vectors.npz` neu (853 × 768, deterministisch → kein Diff), `INDEX.md` neu gebaut (849 indexiert). Auffaellig: `cad-index.json` wird mit 0 Eintraegen erzeugt (Katalog-Records ohne `cad_dateien`) — nicht committet, zu klaeren; `synobsis_query.py --semantic` faellt mangels numpy im pdftools-venv auf Stichwort-Modus zurueck. Protokoll: `outputs/2026-07-12_batch-lauf.md`.

## 2026-07-03
- Stufe 2 (Semantik) auf Mac Mini scharfgeschaltet: python@3.12 via Homebrew installiert, venv ~/.venvs/synobsis mit sentence-transformers 5.6.0 + numpy 2.5.0 eingerichtet; Modell intfloat/multilingual-e5-base (~1 GB) heruntergeladen und gecacht. Vektorindex catalog/vectors.npz mit 853 x 768 Dimensionen erstellt. Zusaetzlich venv ~/.venvs/pdftools (python3.12 + pypdf) angelegt — wird von synobsis_batch.sh als SCAN_PY benoetigt. FDA fuer /bin/bash vorhanden (check-launchd-fda.sh: OK). launchd-Job ch.jans.synobsis-batch geladen (StartInterval 7200 s, Logs -> outputs/batch.log). Kontroll-Batch mit 25 Architekten erfolgreich: alle 853/853 verarbeitet, offen 0, vectors.npz aktuell. Automatisierung ab sofort aktiv.

## 2026-07-02
- Kuratierung Charge 6/6 (133 Architekten, Slugs Smithson_Peter_Alice bis wang_shu; 132 einsortiert, 1 Katalog-Kollision gigon guyer/Gigon_Guyer als vierte bestaetigte Kollision vermerkt; 7 weitere Leerzeichen-Slugs und die Sonderzeichen-Slugs S_uchov/Tusquet_Llui_s/Soeder ueber zerlegte Katalogdateien aufgeloest, Utzon_Jørn behaelt das Sonderzeichen): THEMEN/INDEX/QUESTIONS erweitert, INDEX final 849 Eintraege = 853 Ordner minus 4 Kollisionen, Kopfzeilen auf «Erstkuratierung komplett (853/853 gescannt, 849 kuratiert, Stand 2026-07-03)» gesetzt; keine neuen Unterkapitel; rund 45 neue offene Punkte (u.a. Zeyer_Albert mit zweitem Haus-Jans-Beleg «Luzern Haus Jans 1930», Doppelordner Steven_Holl/Toyo_Ito/Tadao_Ando/Sou_Fugimoto/Studer_Schneider_Primas/Vinci_Leonardo, Wright-Slug «Lord» statt «Lloyd»); Top-Bestaende Zumthor_Peter (1812 Dateien), Wright (770), Sullivan (201), Ungers (182), Snozzi (162), Wiedemann (135) — Erstkuratierung komplett.
- Kuratierung Charge 5/6 (133 Architekten, Slugs Peruzzi_Baldasare bis Smith_Samuel_Modell; alle 133 einsortiert, 2 Akzent-Slugs ueber zerlegte Katalogdateien aufgeloest (Prouve__Jean, Siza_Vieira_A_lavaro_Leite), 13 Leerzeichen-Slugs ohne neue Kollision): THEMEN/INDEX/QUESTIONS erweitert, Stand 718/853; keine neuen Unterkapitel; rund 45 neue offene Punkte (u.a. Sik-Professur-Archiv als vermutete Quelle der Bibliothek, Salvisberg-Ordner mit historischem Kinderspital Zuerich fuer 2619 KISPI, Doppelordner Reidy und Radic); Top-Bestaende Sik_Miroslav (896 Dateien, Professur-Arbeitsarchiv), Schinkel (359), Semper (292), Shinohara (280), Santi_Raffael (247), Pouillon (213).
- Kuratierung Charge 4/6 (133 Architekten, Slugs Le_Vau_Louis bis Perrot; alle 133 einsortiert, 17 Leerzeichen-Slugs ueber Unterstrich-Katalogdateien aufgeloest, dritte Katalog-Kollision Miller Maranta/Miller_Maranta): THEMEN/INDEX/QUESTIONS erweitert, Stand 585/853; keine neuen Unterkapitel; rund 40 neue offene Punkte; Top-Bestaende MPP (241271 Dateien, Buero-Arbeitsarchiv, groesster Ordner der Bibliothek), Nimbus_Architekten (5778, ein einziges Projekt), Meili Partner (2026, Arbeitsarchiv), Maerkli_Peter (829), Olgiati Valerio (652).
- Kuratierung Charge 3/6 (133 Architekten, Slugs Hankar_Paul bis Le_Corbusier; alle 133 einsortiert, 3 Umlaut-Slugs ueber zerlegte Katalogdateien aufgeloest): THEMEN/INDEX/QUESTIONS erweitert, Stand 452/853; keine neuen Unterkapitel; rund 45 neue offene Punkte; Top-Bestaende Kerez_Christian (43111 Dateien, groesster der Bibliothek), Lampugnani (32946), Jans Raphael (9146, Eigenarchiv), Kollhoff (4455), HdM+Herzog_de_Meuron (1646, Doppelordner inkl. KISPI-Material).
- Kuratierung Charge 2/6 (133 Architekten, Slugs Dyckerhoff_Widmann bis Handa_Heike_Prof; 132 einsortiert, 1 Katalog-Kollision Enzmann Fischer/Enzmann_Fischer): THEMEN/INDEX/QUESTIONS erweitert, Stand 319/853; keine neuen Unterkapitel; Top-Bestaende Emerson_Tom (322 Dateien), Gropius (165), Eberle (159), Foster (150), Haefeli_Moser_Steiger (122).
- Kuratierung Charge 1/6 (133 Architekten, Slugs Bearth_Deplazes bis Du_rr_Otto; 132 einsortiert, 1 Katalog-Duplikat Christ Gantenbein): THEMEN/INDEX/QUESTIONS erweitert, neue Unterkapitel 3.9 Niederlande und Belgien, 3.10 Nordamerika.
- Stufe-3-Kuratierung (Erstausgabe) fuer die ersten 55 Katalog-JSONs: wiki/ angelegt
  mit THEMEN.md (5 Hauptkapitel: Typologien, Material/Konstruktion, Region/Land,
  Epoche/Stroemung, Haltung/Diskurs; kompoundierend, Kapitel bleiben stabil),
  INDEX.md (55 Kurzdossiers alphabetisch) und QUESTIONS.md (rund 35 offene Punkte:
  leere Ordner, Schreibfehler-Slugs wie Aando_Tadao/Adjaje_David/Bawa Cheffrey/
  Barrozi_Veira, Sammelordner 1 Selection und Back_Lukas ohne klare Zuordnung).
  Quelle nur catalog/*.json gemaess Snapshot; documents.jsonl unangetastet.
- Befund: Lauf stand seit 28.06.2026 bei 5/853 Architekten (Health-Check 01.07.).
- Stufe-1-Batch (50) manuell vom MacBook Pro neu angestossen.
- Sync-Task an Mac Mini erstellt: Runbook komplett ausfuehren (Stufe-2-venv mit
  python3.12 wegen py3.14-Blocker, Kontroll-Batch, launchd ch.jans.synobsis-batch
  alle 2 h, FDA-Pruefung vorab).
- CHANGELOG.md angelegt (Scaffolding-Finding aus Health-Check geschlossen).

## 2026-06-28
- KB angelegt: tools/ (scan/query/embed/batch), catalog/, state/, Runbook + Programm.
- Erstlauf Stufe 1: 5 Architekten verarbeitet (1 Selection, 6a Architects, AASZ,
  Aalto_Alvar, Aando_Tadao), danach kein weiterer Lauf (kein Task eingerichtet).
