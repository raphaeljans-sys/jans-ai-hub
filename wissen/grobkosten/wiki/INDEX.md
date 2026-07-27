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

Offene Fragen / Lücken: siehe [QUESTIONS.md](QUESTIONS.md).
