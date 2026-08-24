# QUESTIONS-Abarbeitung 24.08.2026 — S42-3 und N43-5 (M365-Graph-Connector statt NAS)

**Auftrag:** offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je Aussage mit
Norm/Ausgabe/Ziffer, nur `established` zitierfähig. CHANGELOG und Report des letzten Laufs
(S42-2, SWKI/BAFU-Vollzugshilfe) zuerst gelesen, dessen offener Empfehlung gefolgt.

## Ausgangslage

Der unmittelbar vorangegangene Lauf (S42-2) hatte S42-3 und N43-5 mit der Begründung
zurückgestellt, das SWKI- bzw. Kalksandstein-Original sei auf dieser Station nicht erreichbar
(NAS nicht gemountet, auch nicht über OneDrive-Spiegel). Dieser Lauf begann mit derselben
NAS-Sperre — `/Volumes/daten` war beim Sessionstart erneut nicht gemountet.

## Zugriffsweg gefunden

Statt die beiden Fragen erneut zurückzustellen, wurde der zweite dokumentierte SharePoint-Weg
getestet: `node connectors/m365-graph.mjs` (App-only-Zertifikat-Auth, unabhängig vom NAS-Mount,
git-versioniert im SSD-Repo, daher auch ohne NAS lauffähig). `--selbsttest` bestätigte
Erreichbarkeit (`https://raphaeljans.sharepoint.com`). Über `--get "/sites/<id>/drives"` und
`--get "/drives/<id>/root:/<pfad>:/children"` liessen sich die Zieldateien lokalisieren und über
die von der Graph-API gelieferte `@microsoft.graph.downloadUrl` per `curl` direkt herunterladen —
kein Browser, kein NAS-Mount nötig. Drei Originale so bezogen:

1. `06_Richtlinien/SWKI/SWKI VA 103-1 Lüftungsanlagen für Parkhäuser.pdf` (9,2 MB, Scan ohne
   Textlayer, `pdftoppm -r 300` + Bildlektüre)
2. `04_Merkblätter/Bemessung Kalksandstein.pdf` (1,7 MB, **mit Textlayer** — `pdftotext -layout`)
3. `02_Normen/SIA_Norm/SIA_Normen/alle/266_2003_d.pdf` (mit Textlayer, zur Gegenprüfung der
   SIA-266-Zitate im Kalksandstein-Merkblatt)

Dieser Weg ist für künftige Läufe auf NAS-losen Stationen wiederverwendbar — Empfehlung am Ende
dieses Reports.

## Kollisionscheck

`ps aux | grep "claude -p"` beim Sessionstart: eigener Prozess PID 63651 (identischer
Auftragstext) ist der hostende Prozess dieser Session. PID 62145 arbeitet an
`wissen/energie/wiki/QUESTIONS.md` — andere KB. PID 63854 arbeitet am SIA-Sweep von
`wissen/normen` (Register/Destillate-Neuzugänge, Auftragstext explizit auf Produktdatenblätter/
Register/Inventar bezogen), nicht an `wiki/QUESTIONS.md` — der in den Vorläufen etablierte Split
zwischen QUESTIONS-Abarbeitung und SIA-Sweep. `git status --short wissen/normen/` vor
Bearbeitungsbeginn geprüft, sauber.

## Bearbeiteter Punkt 1: S42-3 (SWKI Tab. 16, Kanton Schwyz)

**Frage:** Enthält Tab. 16 (Anhang A, Standortliste) einen eigenen Stationseintrag für den
Kanton Schwyz? Falls nicht, welche Station ist die sachlich nächstgelegene?

**Vorgehen:** Anhang A beginnt lt. Destillat auf Druckseite 73 (Rendering-Offset PDF = Druckseite
+ 2, mehrfach unabhängig bestätigt, siehe `gelesen`-Feld). PDF-Seiten 75-80 bei 300 dpi gerendert;
Tab. 16 umfasst genau die Druckseiten 73-74 (PDF 75-76), danach folgt Anhang B (Schneehöhen).
Beide Seiten vollständig als Bild gelesen (Scan ohne Textlayer, `pdftotext` liefert 0 Wörter,
wie im Destillat dokumentiert).

**Ergebnis:** Tab. 16 listet 40 Stationen alphabetisch von Adelboden bis Zürich-MeteoSchweiz.
Keine trägt den Namen «Schwyz» oder einen erkennbaren Ort im Kanton Schwyz (kein Einsiedeln,
Pfäffikon SZ, Lachen, Freienbach, Küssnacht, Wollerau). Die in der bisherigen QUESTIONS-Notiz
vermutete Zuordnung ist damit primärquellenfest bestätigt: **Luzern** (θODA = 0,5 °C) und
**Altdorf** (θODA = 1,2 °C) sind die einzigen Stationen mit vergleichbarer Seehöhe/Lage am
Vierwaldstättersee-Becken — beide tragen exakt identische Garage-Faktoren (exponiert 5 °C/1,00,
geschützt 10 °C/0,77), die Wahl zwischen beiden ist für die Bemessung damit folgenlos.

**Nicht abschliessend lösbar:** eine *normative* Zuordnungsregel für fehlende Standorte (welche
Station bei einem nicht gelisteten Projektort zu wählen ist) würde aus SIA 2028 «Klimadaten für
Bauphysik, Energie- und Gebäudetechnik» selbst stammen. Deren Basis-Merkblatt 2010 ist laut
`wiki/REGISTER.md` weiterhin **nicht im Haus** (kostenpflichtig, bestehende Bring-Schuld) —
das ändert am praktischen Ergebnis (Luzern/Altdorf, gleichwertig) nichts, bleibt aber als
methodische Lücke bestehen.

## Bearbeiteter Punkt 2: N43-5 (Kalksandstein-Merkblatt), teilweise geschlossen

Zwei der drei in N43-5 genannten Teilfragen bearbeitet:

**a) Rissweiten-Diagramm-Kapitel neu geschrieben.** Der bisherige Abschnitt «Gebrauchstauglichkeit
/ Rissweite» im Destillat nannte Nxo nur als unbeziffertes «Hilfsgrösse»-Konzept; die drei zum
Ablesen der vier Diagramme (Wanddicken 120/145/180/200 mm) nötigen Transformationen fehlten im
Fliesstext ganz (nur in der Verifikations-Notiz K3 als Feststellung, dass sie fehlen). Mit
`pdftotext -layout` liess sich der Diagrammtext (S. 7-8) jetzt vollständig extrahieren:

- Ordinate: r200 · Nxo/Nx
- Abszisse: hcr · √(Nx/Nxo)
- Kurvenparameter: ϑ · √(Nxo/Nx)
- Nxo = 100 kN/m¹ (alle vier Diagramme)

Diese vier Angaben sind jetzt im Fliesstext des Abschnitts «Gebrauchstauglichkeit / Rissweite»
nachgetragen, zusammen mit dem bereits in K5 dokumentierten Setzfehler der Quelle
(r = h₀/(200·r200) auf S. 7 gedruckt, r = h₀/200 · r200 im Beispiel S. 10 tatsächlich gerechnet).

**b) SIA-266-Zitate geprüft.** Das Original SIA 266:2003 wurde ebenfalls per M365-Connector
bezogen (Text-Layer vorhanden) und gegen drei vom Kalksandstein-Merkblatt zitierte Artikelnummern
gehalten:

- **Art. 4.3.1.1** (Tragsicherheitsformel Nxd ≤ kN·lw·tw·fxd, Gleichung 7) — wortgleich bestätigt.
- **Art. 4.3.1.3** (teilweise eingebundene Decken, K9-Verweis) — wortgleich bestätigt.
- **Art. 4.3.4.3** («zur Aktivierung von fyd sind die Stossfugen vollfugig zu vermörteln», S. 12
  des Merkblatts) — **stimmt nicht**. Am Original ist Art. 4.3.4.3 Teil von Kapitel 4.3.4
  «Querbelastung» innerhalb des Tragsicherheitsnachweises für **unbewehrtes** Mauerwerk und lautet
  wörtlich: «Bei Druckgewölben quer zu den Stossfugen sind diese vollfugig zu vermörteln.» Das
  regelt Druckgewölbe unter Querbelastung, nicht die fyd-Aktivierung im bewehrten Mauerwerk. Die
  tatsächlich einschlägige Stelle ist **Art. 4.2.1.2** (Gleichung 4: fyd = η₁η₃·fyk/γM) mit
  **Art. 4.2.1.3**: «η₃ = 1,0 im Allgemeinen, η₃ = 1,5 für vollfugig vermörtelte Stossfugen» —
  genau der vom Merkblatt beschriebene Mechanismus (vollfugige Stossfugen erhöhen fyd über η₃),
  nur unter der falschen Ziffer zitiert. **Wichtig:** der Fehler steht so im Original des
  Kalksandstein-Merkblatts selbst (per `pdftotext` am PDF geprüft, S. 12: «Art. 4.3.4.3 der Norm
  SIA 266 sind zur Aktivierung von fyd die Stossfugen vollfugig zu vermörteln.») — es ist kein
  KB-Übertragungsfehler, sondern ein Druckfehler der Drittquelle. Die Sachaussage bleibt richtig.
- **SIA-262-Fassungsfrage (K4):** Das Merkblatt (S. 12) datiert sein Bewehrtes-Mauerwerk-Schema
  ausdrücklich auf «SIA 262 (2003)». Laut `wiki/REGISTER.md` war 2003 zum Publikationszeitpunkt
  des Merkblatts (Herbst 2012) die geltende Ausgabe (abgelöst erst 2013) — historisch korrekt
  zitiert, für heutige JANS-Projekte aber gegen die aktuell geltende SIA 262:2013 zu prüfen.

**Dritte Teilfrage nicht bearbeitet:** ob weitere, in Run 43 nicht im Fliesstext nachgetragene
Befunde (K4 Details, K6-K10) noch offen sind — bewusst nicht in dieser Runde, da N43-5 explizit
nur die Rissweiten-Diagramme und den SIA-266-Wortlaut nannte.

**Status bewusst unverändert:** `status`-Feld bleibt `speculative`. Die ursprüngliche
Blockierungsbedingung («bis K1/K2/K3 nachgetragen sind») ist mit diesem Lauf erfüllt (K1/K2 waren
bereits im Fliesstext, K3 jetzt auch), ein Wechsel auf `established` wurde trotzdem nicht
vorgenommen — K4 bis K10 stehen weiterhin nur im Verifikations-Anhang, nicht im Fliesstext, und
ein Statuswechsel ist nach der Methodik dieser KB einem eigenen, unabhängigen Verifikationslauf
vorbehalten, nicht einer QUESTIONS-Abarbeitung.

## Eingearbeitet

- `wiki/QUESTIONS.md`: S42-3 als geschlossen markiert (additiv, Antwortblock unter dem
  ursprünglichen Fragetext), N43-5 als teilweise geschlossen markiert, Run-42-Kopfzeile
  nachgeführt.
- `destillate/kalksandstein-bemessung-sia266-ksv-2012.md`: Abschnitt «Gebrauchstauglichkeit /
  Rissweite» erweitert (additiv), neuer Abschnitt «SIA-266-Zitate am Original geprüft», Frontmatter
  (`gelesen`, `status`, `last_updated`) nachgeführt.
- `destillate/INDEX.md`: Zeile Kalksandstein nachgeführt.
- `CHANGELOG.md`: dieser Lauf vorangestellt.
- `destillate/swki-va103-01-2017.md`: **nicht geändert** — Tab. 16 bleibt aus Urheberrechtsgründen
  nicht als Volltabelle kopiert, der S42-3-Befund ist ausschliesslich in `wiki/QUESTIONS.md`
  dokumentiert.

## Diff-Gegenprobe (`git diff --numstat`)

`destillate/kalksandstein-bemessung-sia266-ksv-2012.md` wurde durch einen parallel laufenden
NAS-Auto-Sync-Commit (`9a6d163d7 auto-sync [Macmini]: 6 Dateien geaendert`, 09:53:06 Uhr, während
dieser Session) bereits miterfasst, bevor dieser Lauf selbst dazu kam, ihn zu committen. Inhalt
per `git show 9a6d163d7 -- <Datei>` geprüft: exakt die hier beschriebene, additive Änderung
(+27/-4 Zeilen), keine Fremdinhalte, keine bestehende Aussage entfernt oder überschrieben — nur
das Frontmatter-Feld `gelesen`/`status`/`last_updated` ersetzt (Statuswert bewusst weiterhin
`speculative`, siehe oben) und zwei neue Abschnitte ergänzt.

`wiki/QUESTIONS.md` (+46/-1) und `destillate/INDEX.md` (+1/-1) verbleiben regulär durch diesen
Lauf zu committen — beide additiv, keine bestehende Aussage gelöscht oder überschrieben.

## Empfehlung für künftige Läufe

Der M365-Graph-Connector (`node connectors/m365-graph.mjs --get "/drives/<id>/root:/<pfad>:/
children"`, Downloads über die zurückgegebene `@microsoft.graph.downloadUrl` per `curl`) ist ein
vollwertiger, vom NAS-Mount unabhängiger Zugriffsweg auf die SharePoint-Originale unter
`PL - 02_Recht_Norm/`. Er sollte bei künftigen NAS-Ausfällen als erster Alternativweg versucht
werden, bevor eine Frage mit der Begründung „Original nicht erreichbar" zurückgestellt wird — in
diesem Lauf hat er zwei zuvor blockierte Fragen lösbar gemacht. Die Drive-ID für
`02_Recht_Norm` (Site `PL`) lautet `b!4b0MvG164Uif9nUvAUN-vhxlu8ogEiVPhn2VS4jG3SfT25dFWtAPQ7JsQfZ1A7n_`
— sie ändert sich nicht zwischen Sessions und kann direkt wiederverwendet werden, ohne erneut über
`--get "/sites/<id>/drives"` aufgelöst zu werden.

## Verbleibend offen (nicht in dieser Runde bearbeitet)

- N43-5: K4 (Detailtext)/K6-K10 aus Run 43 in den Fliesstext einarbeiten, dann eigener
  Verifikationslauf für einen möglichen Statuswechsel auf `established`.
- N43-6 (SWKI Anhang E, keine abnehmende Instanz für CFD-Nachweis genannt) — echte
  Bring-Schuld/Behördenanfrage, nicht durch Quellenlektüre lösbar, unverändert offen.
- Alle in den Vorläufen bereits als Bring-Schuld/Entscheid-Raphael/externe Anfrage eingeordneten
  Punkte (G41-1, G41-2, P41-2 bis P41-5, H41-2, H41-4, N43-1 bis N43-4) unverändert offen.
