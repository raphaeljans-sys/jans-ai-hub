# INDEX — wissen/grobkosten/wiki

- [kennwerte.md](kennwerte.md) — Grobkosten-Kennwerte CHF/m³ GV (BKP 1–5), Quelle der Wahrheit.

Trainings-Inventar: siehe [../training/quellen-inventar.md](../training/quellen-inventar.md) —
Stand 26.07.2026: NAS-Altarchiv `04_Buero/02_Projekte` liefert 0 von 21 Projekten
auswertbares GV/BKP-Material (Run 1); SharePoint `AR - 01 Projekte` (aktive Mandate) liefert
erste reale, aber dünn belegte Einzelfälle (Run 2, 3 Projekte extrahiert); SharePoint
`AR - 07 Archiv` (abgeschlossene Mandate) liefert 2 weitere Projekte mit GV+BKP-Material, beide
zunächst wegen interner Dokument-Widersprüche nicht verwertbar erschienen (Run 3). Run 4 vertieft
beide Run-3-Kandidaten: 2304 Reckholdern wird über ein späteres, in sich konsistentes Dokument
verwertbar (erster Einzelfall mit sauberem GV+BKP-1–5-Tripel, 1'735 CHF/m³ EFH gehoben/Luxus),
2202 Ackersteinstrasse bleibt nicht verwertbar, aber die Ursache (Mandat endete vor Ausführung)
ist geklärt. Beide bekannten SharePoint-Quellen damit vollständig geprüft UND vertieft — 5
Projekte in `raw/` dokumentiert, 1 davon promotionsfähig als Einzelfall n=1. Run 5 erschliesst
eine vierte Quelle (SharePoint `IMMO - 06 Kennwerte`, kuratierte Kennwerte-Bibliothek statt
Projektordner) und liefert einen eigenständigen m²-GF-Benchmark (JANS-Referenzblatt, Wohnen
Individuell EFH/ZFH), der bewusst NICHT in die m³-GV-Tabelle konvertiert wurde. Run 6 sichtet
vier weitere Bibliotheken (`AR - 03 Studien`, `IMMO - 01/02/03/05`, zweite Bibliothek
`...-RaphaelJans-ArchitektenETH`) und liefert zwei neue, gut belegte Einzelfälle (Niederhasli
Seestrasse 64 1'032 CHF/m³ — stärkster bisheriger Beleg mit BKP-1-5-Einzelgliederung UND GV im
selben Dokument; Haus Deuber Thalwil 1'086 CHF/m³, eBKP-H-Basis) sowie mehrere identifizierte,
aber bewusst zurückgestellte Kandidaten (offene Fragen zu BKP-1-9-vs-1-5-Bezeichnung und
Standard-Klassifikation, siehe `QUESTIONS.md`). Run 7 vertieft die drei Run-6-Kandidaten per
Excel-Einsicht (`openpyxl`): das Pre-Check-Tool 2305 Wädenswil liefert einen direkten
Tool-internen Beleg für die ungelöste BKP-1-9-vs-1-5-Frage (derselbe Faktor doppeldeutig
beschriftet), zwei weitere Kandidaten werden als nicht verwertbar geschlossen. Kein neuer
Kennwert in dieser Runde. Run 8 (Registerpflege, kein neuer Projektordner): eine liegen
gebliebene Extraktion (2620 Albertstrasse 7, erster realer Umbau-Einzelfall 2'500 CHF/m³)
nachträglich registriert; extern (WebSearch/WebFetch) ein bis 2025 verketteter Zürcher
Baukostenindex gefunden, der die Stufe-4-Teuerungs-Normalisierungsfrage aus Run 6 löst
(fertige Umrechnungsfaktoren in `kennwerte.md`). Run 9 wendet diese Faktoren auf die vier
belastbarsten Einzelfälle an (lineare Interpolation, keine Extrapolation über 01.04.2025
hinaus) — Haus Deuber und Reckholdern normalisiert, Niederhasli/Albertstrasse unverändert
(bereits aktuell). Zeigt: die Streuung zwischen den MFH-Fällen bleibt auch nach Preisstand-
Korrektur bestehen — Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation) sind der
eigentliche Blocker für eine Median-Bildung, nicht der Preisstand. Run 10 sichtet die drei
letzten aus Run 5 benannten Bibliotheken (`AR - 02 Wettbewerbe`, `AR - 04 Honorarauftraege`,
`AR - 05 Transfer`) und findet einen weiteren realen, in sich konsistenten Fall (2105
Steinkogler, Haus «Le Mélèze» Davos) — aber mit grundsätzlich anderer Methodik
(Eingriffstiefen-Bandbreiten S/M/L/XL statt GV x Kennwert, kein m³-Bezug im Dokument), daher
nicht in die Haupttabelle promoviert. Löst weder Frage 1 noch Frage 2. Damit sind alle fünf
in Run 5 benannten Bibliotheken gesichtet; einzige noch offene `AR`-Bibliothek ist
`AR - 06 Referenzen`. Run 11 prüft diese letzte Bibliothek (auf dieser Station leer) und
klärt den Run-10-Nebenfund abschliessend als Fremdmandat (Brassel Architekten, nicht JANS)
ab — kein neuer Kennwert. Damit sind alle bekannten SharePoint-Bibliotheken (`AR - 01` bis
`AR - 07`, `IMMO - 01/02/03/05/06`, zweite Bibliothek) vollständig gesichtet; die autonome
Exploration ist erschöpft. Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation)
bleiben der alleinige Blocker für eine MFH-Median-Bildung — Klärung nur noch durch Rückfrage
an Raphael Jans oder einen neuen Ereignis-Trigger (`kostenkontrolle`-Ist-Kosten laufender
Mandate) möglich. Run 12 prüft diesen Ereignis-Trigger explizit (Sweep über die gesamte
SharePoint-Bibliothek + die drei aktiven Mandate mit Kosten-Historie) — **null neue
Kosten-Dateien seit 26.07.2026**. Damit ist die Sättigung formal erklärt (Endbedingung
`training/PROGRAMM.md`): kein Materialmangel mehr, sondern ein rein struktureller Blocker
(Frage 1/2). Empfehlung an Raphael: Loop auf Ereignis-Trigger-Taktung zurückfahren statt
weiter mehrfach täglich zu zyklieren (Details `outputs/2026-07-27_grobkosten-run12.md`). Run 13
öffnet die generische Master-Exceldatei des Pre-Check-Tools im Formel-Modus (`openpyxl`,
`data_only=False`) und verifiziert dort erstmals direkt (nicht nur aus PDF-Indizien), dass der
Faktor 1.13 ausschliesslich BKP 2 skaliert, ohne Rechenschritt für BKP 6-9 — Frage 1 bleibt
ungelöst, ist aber zu einer präzisen Ja/Nein-Rückfrage an Raphael zugespitzt. Run 14 bestätigt
denselben Formelbefund unabhängig an den beiden **projekteigenen** Wald-Haselstudstrasse-
Exceldateien (nicht nur am Master-Template) — schliesst die Beweiskette, löst Frage 1 aber
weiterhin nicht autonom. Kein neuer Kennwert seit Run 11. Run 15-17 bestätigen die Sättigung
ein zweites, drittes und viertes Mal (Taktungshinweis: der VOLLGAS-Runner feuert diesen Loop
im Minutenabstand statt gemäss `cron_target`; Run 17 prüft zusätzlich den kanonischen
Quellpfad `04_Buero/02_Projekte` selbst sowie den `kostenkontrolle`-Ereignis-Trigger, beide
null Treffer). Run 18 wiederholt bewusst KEINEN der bereits mehrfach negativ geprüften Sweeps
(Rule «Kein Leerlauf-Zwang» gilt auch für Wiederholungsprüfungen ohne Erkenntnisgewinn) und
erklärt die formale Sättigung ein siebtes Mal in Folge (Run 12-18) — Frage 1/2 bleiben der
einzige verbleibende Blocker.

Lauf vom 17.08.2026 (quellen-inventar.md-Zählung: Run 16 — unabhängig von der oben
verwendeten, älteren Run-Zählung dieses Absatzes, die vor der Runner-Entfernung 30.07.2026
entstand und nicht deckungsgleich weitergeführt wurde): Endbedingung erneut geprüft und
bestätigt (kein neues SharePoint-Material ausserhalb des ausgeklammerten KISPI-Healthcare-
Mandats). Statt Leerlauf die Primärquelle des Baupreisindex nachgezogen — neuer amtlicher
Stand 01.10.2025 (Stadt Zürich direkt statt nur HEV-SZ-Kopie) in `kennwerte.md` ergänzt, Effekt
auf bestehende Einzelfälle unter Rundungsgenauigkeit. Kein neuer Projekt-Kennwert. Details
`../outputs/2026-08-17_grobkosten-run16.md`.

Vertiefungslauf 23.08.2026 (Station Revendo, Auftrag Raphael): kein neuer Projekt-Kennwert,
aber zwei substanzielle Ergänzungen in `kennwerte.md` und eine Korrektur. **(1)** Der am selben
Tag geschlossene Punkt «ZIW publiziert mutmasslich jährlich, 01.04.2026-Stand unbestätigt» ist
an den Primärquellen **widerlegt**: der Rhythmus ist halbjährlich (BFS: Erhebung April/Oktober,
Publikation Juni/Dezember), der Stand **01.04.2026 = 100.6 (Basis Okt-2025 = 100, Jahresteuerung
+0.9 %)** ist amtlich publiziert (08.07.2026), und es **gab** eine Revision 2025 mit Basiswechsel
und vollständig neuer Gewichtung. Die Faktorentabelle ist auf 01.04.2026 fortgeschrieben.
**(2)** Neuer Abschnitt «BKP-Anteilsstruktur MFH Stadt Zürich, Stand 2025» — amtliche
BKP-Gewichte aus 54 realen Kostenvoranschlägen Zürcher MFH-Neubauten 2020–2024
(ZIW-Methodenbericht), mit Vergleich gegen die 1985er-Struktur der Schätzungsanleitung.
Nebenbefund: der BKP-2-Anteil bestätigt sich unabhängig (89.4 % gegen 90.6 % aus Tab. 3).
Frage 1 (BKP-Scope Tab. 2) bleibt davon unberührt offen. Details
`../outputs/2026-08-23_grobkosten-vertiefung-ziw-bkp-struktur.md`.

## Raw-Material-Status (Verdichtungsstand, nachgeführt 29.08.2026)

Prüfung 29.08.2026 (Schub-Lane grobkosten, Auftrag Raphael): alle 18 realen Roh-Belege in
`raw/` (ohne `README.md`, `_INGESTED.md`) sind bereits in `wiki/kennwerte.md` verdichtet oder
mit Begründung verworfen — Beleg: jede Datei steht im Frontmatter `sources:` von
`kennwerte.md`, jede mit Kostenstand und Projektbezug in den Run-Abschnitten (Run 1–18,
Vertiefungsläufe bis 23.08.2026). Kein unverarbeiteter Eintrag gefunden.

| Raw-Datei | Status | Kennwert / Fundstelle in `kennwerte.md` |
|---|---|---|
| `2414-thalwil.md` | eingearbeitet | 1'600 / 800 CHF/m³ Teilvolumen, Einzelfall n=1, Preisstand 03/2025 (Abschnitt "Erste reale Datenpunkte") |
| `2518-grubenackerstrasse.md` | eingearbeitet, unverifiziert | 950–1'050 CHF/m³, Einzelfall n=1, GV nicht SIA-416-geprüft, Preisstand 04/2023 |
| `2515-wartstrasse.md` | geprüft, nicht verwertbar | kein GV im Dokument |
| `2202-ackersteinstrasse.md` | geschlossen, nicht verwertbar | 4 widersprüchliche Kostenstände, Ursache geklärt (Mandat endete vor Ausführung 09/2023) |
| `2304-reckholdern.md` | eingearbeitet | 1'735 CHF/m³ (GV 1'986 m³, BKP 1–5, Preisstand 12/2023), Einzelfall n=1 — Vorlagen-Kontamination in Parallel-Dokument nachgewiesen und in `QUESTIONS.md` dokumentiert |
| `kennwerte-jans-referenzdokument.md` | eingearbeitet | 4'485 CHF/m² GF (BKP 1–5), Parallelsektion, nicht in m³-Tabelle konvertiert |
| `8155-niederhasli-seestrasse64.md` | eingearbeitet | 1'032 CHF/m³ (GV 3'843.8 m³, BKP 1–5 einzeln), Preisstand 07/2025, stärkster Beleg |
| `2001-haus-deuber-thalwil.md` | eingearbeitet | 1'086 CHF/m³ (GV 2'725 m³, eBKP-H), Preisstand 10/2020 |
| `2411-wald-haselstudstrasse.md` | dokumentiert, nicht promoviert | Kostentotal als "BKP 1-9" bezeichnet, BKP9-Vorbehalt ungeklärt |
| `2412-ebmatingen-grossacher.md` | dokumentiert, nicht promoviert | kein GV im Dokument |
| `2305-waedenswil-precheck.md` | dokumentiert, nicht promoviert | vertieft Frage 1 (BKP-1-9-vs-1-5-Doppeldeutigkeit im Tool), kein eigener Kennwert |
| `2620-albertstrasse.md` | eingearbeitet | 2'500 CHF/m³ Umbau-Einzelfall n=1, Preisstand 07.03.2026 |
| `zuercher-index-wohnbaukosten-1939-2025.md` | eingearbeitet | Baupreisindex-Faktorentabelle (Abschnitt "Baupreisindex ZH") |
| `zuercher-index-wohnbaupreise-2025-10-update.md` | eingearbeitet | Indexstände 01.10.2025 / 01.04.2026 nachgetragen |
| `2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md` | eingearbeitet | Holzbau-Zuschlag ≈0 % bis +13 %, mit BFS-Reihe fortgeschrieben (Abschnitt "Zuschläge") |
| `2105-steinkogler-davos.md` | dokumentiert, nicht promoviert | Eingriffstiefen-Bandbreiten (S/M/L/XL) statt GV × Kennwert, kein m³-Bezug |
| `schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md` | eingearbeitet | historischer Cross-Check Tab. 2/Tab. 3 (Abschnitt "Run 12") — Ursprung von Frage 1 |
| `2304-waedenswil-residualwert-zwei-varianten.md` | geschlossen, nicht verwertbar | Kostensumme nur als "BKP 1-9"-Total ausgewiesen, kein GV/BKP-1-5-Tripel |

**Einziger verbleibender Block:** eine MFH-Median-Bildung (n≥2) hängt an zwei rein durch
Raphael entscheidbaren Fragen (BKP-Scope Tab. 2, Standard-Klassifikation "norm, eloquent") —
siehe `QUESTIONS.md`, Eintrag 23.08.2026 "vier strukturelle Fragen direkt an Raphael gestellt".
Ohne neues Rohmaterial oder diese Entscheide gibt es keinen weiteren Verdichtungsschritt; ein
erzwungener neuer Wiki-Artikel ohne neue Belege wäre gegen die Regel "Kennwerte nie raten".

Offene Fragen / Lücken: siehe [QUESTIONS.md](QUESTIONS.md).
