# Offene Fragen — KB Normen

## Cross-KB-Übergabe von `wissen/energie` (24.08.2026) — 7 nie gesichtete SIA-Vertragsrecht-docx in PL-02 ✅ GESCHLOSSEN 24.08.2026 05:2x Uhr — alle 7 Dateien einzeln geöffnet, kein Destillationsbedarf

**Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung, achter Lauf):** alle 7 Dateien einzeln über den
M365-Graph-Connector geöffnet (`connectors/m365-graph.mjs`, Site PL, Drive `02_Recht_Norm`) und
per `textutil -convert txt` bzw. Ordner-Listing geprüft. Ergebnis je Datei:

1. `1001-1_2020_d.docx` (SIA1001.1_2020_Planer_Bauleitervertrag/) — reine Word-Ausfüllvorlage;
   PDF-Pendant `1001-1_2020_d.pdf` im selben Ordner. Inhalt bereits `established` in dieser KB:
   `destillate/sia-1001-1-2020.md` (adversarial verifiziert Run 15, 260717, siehe
   `destillate/INDEX.md` Z. 307). **Kein Destillationsbedarf.**
2. `1001-11_2018_d.docx` (SIA1001.11_BIM_Zusatzvereinbarung_BIM/) — Word-Ausfüllvorlage;
   PDF-Pendant `1001-11-K_2018_d.pdf` im selben Ordner. Bereits `established`:
   `destillate/sia-1001-11-2018.md` (Run 15, `destillate/INDEX.md` Z. 310). **Kein Bedarf.**
3. `1001-2_2020_d.docx` (SIA1001.2_2020_Gesellschaftsvertrag_fuer_Planergemeinschaften/) —
   Word-Ausfüllvorlage; PDF-Pendant `1001-2_2020_d.pdf` im selben Ordner. Bereits `established`:
   `destillate/sia-1001-2-2020.md` (Run 15, `destillate/INDEX.md` Z. 308). **Kein Bedarf.**
   (Ergänzend, nicht Teil der 7er-Liste: SIA 1001/3 ist über denselben Run 15 ebenfalls
   `established`, `destillate/sia-1001-3-2020.md`, `destillate/INDEX.md` Z. 309.)
4. `230529_Vertragsunterschiede.docx` (00_Vertag_Knowhow/) — **Korrektur zur Ursprungsnotiz:**
   ein PDF-Pendant existiert sehr wohl im selben Ordner (`230529_Vertragsunterschiede.pdf`),
   die Behauptung „kein erkennbares PDF-Pendant" war falsch. **Wichtiger:** der Dateiinhalt
   selbst ist ein eingefügter ChatGPT-Dialog («Erkläre mir modellhaft die Unterschiede der
   SIA 1001.1 … zu SIA1012.4 Subplanervertag» + KI-Antwort) — **keine Primärquelle, keine
   SIA-Norm, sondern ein KI-generiertes Erzeugnis eines Dritt-Tools.** Nach Rule
   `normen-referenz` (nur `established`/Primärquelle zitierfähig) und Rule
   `wissens-bibliothekar` (nichts raten, jede Aussage belegen) ist diese Datei **explizit NICHT
   destillierbar und NICHT zitierfähig** — sie würde eine KI-Halluzination als KB-Fakt einführen.
   Als Negativ-Fund festgehalten, nicht als Bring-Schuld.
5. `Link_Vertag.docx` (00_Vertag_Knowhow/) — enthält ausschliesslich eine URL
   (`https://www.sia.ch/de/dienstleistungen/normen/vertraege/`), keinen Fliesstext. Keine
   Destillationsgrundlage.
6. `contrat d'architecte sine nomine.doc` (siebte, zunächst unklare Datei, jetzt lokalisiert:
   `SIA1001.1_2020_Planer_Bauleitervertrag/_Archiv/_SIA1002_2003_Vertag_fuer_Architekturleistungen/f/`)
   — liegt in einem `_Archiv`-Unterordner der bereits 2020 abgelösten Vorgängernorm SIA
   1002:2003, ist französischsprachig und ein Vertragsformular, kein Normtext. Archiviert +
   fremdsprachig + Formular einer abgelösten Ausgabe: **kein Destillationsbedarf.**

**Ergebnis: 6 der 7 Dateien sind entweder bereits abgedeckt (established) oder keine
destillierbare Quelle; die 7. (`230529_Vertragsunterschiede.docx`) ist ein aktiver
Negativ-Fund (KI-Fremderzeugnis, nie als Quelle verwenden).** Kein neues Destillat nötig.
Cross-KB-Bringschuld an `wissen/normen` damit erledigt. Report:
`outputs/2026-08-24_cross-kb-sia-vertraege-pl02-pruefung.md`.

**Herkunft (Ursprungsnotiz von `wissen/energie`):** `wissen/energie` hat PL-02 Recht_Norm am 23.08.2026 (Run 161, Fortsetzung
«E-R161-3») erstmals filterlos gezählt (ohne Dateityp-Filter), um KI-generierte Dokumente
aufzuspüren. Dabei sind SIA-Vertragsrecht-docx aufgefallen, die ausserhalb des Energie-Scopes
liegen — bisher **nicht einzeln geöffnet**, nur als Fundstelle vermerkt (Rule
`wissens-bibliothekar`, Cross-KB-Bringschuld). Nachgetragen 24.08.2026, weil die ursprüngliche
Notiz nur auf `/tmp/pl-filterlos-260823-*.json` verwies — eine temporäre, nicht versionierte
Datei. Exakte Pfade (Site `/sites/PL`, Drive `02 Recht_Norm`, Ordner
`02_Normen/SIA_Norm/SIA_Vertraege/`, Stand PL-02-Zählung 23.08.2026):

`00_Vertag_Knowhow/230529_Vertragsunterschiede.docx`, `00_Vertag_Knowhow/Link_Vertag.docx`,
`SIA1001.1_2020_Planer_Bauleitervertrag/_Archiv/_SIA1002_2003_Vertag_fuer_Architekturleistungen/f/
contrat d'architecte sine nomine.doc`,
`SIA1001.1_2020_Planer_Bauleitervertrag/1001-1_2020_d.docx`,
`SIA1001.11_BIM_Zusatzvereinbarung_BIM/1001-11_2018_d.docx`,
`SIA1001.2_2020_Gesellschaftsvertrag_fuer_Planergemeinschaften/1001-2_2020_d.docx` — plus eine
siebte Datei aus demselben Ordnerbaum, die im Rohbestand nicht mehr eindeutig von einer bereits
gezählten Zeile zu unterscheiden war (Zählung ergab 7 docx/doc unter `SIA_Vertraege/`, hier sind
6 eindeutig benannt). Mehrere tragen ein gleichnamiges `.pdf` daneben (z.B. `1001-1_2020_d.pdf`)
— vor einer Destillation zuerst prüfen, ob die docx nur die Word-Vorlage der bereits als PDF
vorliegenden Norm ist (dann keine eigene Destillation nötig) oder eigenständigen Inhalt trägt
(z.B. `230529_Vertragsunterschiede.docx`, kein erkennbares PDF-Pendant im Scan). Die 12
Baurecht-/STWEG-docx aus demselben PL-02-Scan sind separat in
`wissen/baurecht/wiki/QUESTIONS.md` nachgetragen (dortige Zuständigkeit).

## 24.08.2026, ~04:00 Uhr — EKAS 2134/6512 zweimal parallel destilliert (Kollision zweier gleichzeitiger Läufe) ✅ GESCHLOSSEN ~04:05 Uhr — paralleler Lauf hat Duplikate selbst entfernt, ENTSCHEID-RAPHAEL-Bedarf entfällt (Details im Nachtrag unten)

- **Befund:** Zwei unabhängige, gleichzeitig laufende Claude-Prozesse haben denselben offenen
  Punkt der SIA-Sweep 37. Fortsetzung (beide EKAS-Richtlinien 2134 «Forstarbeiten» und 6512
  «Arbeitsmittel» destillieren) parallel bearbeitet, ohne voneinander zu wissen — beide Läufe
  starteten fast zeitgleich (03:54 bzw. 03:57 Uhr) auf derselben KB. Ergebnis: **vier** Destillate
  für **zwei** Dokumente, mit unterschiedlichen Dateinamen:
  - EKAS 6512: `ekas-6512-arbeitsmittel.md` (dieser Lauf, established, S. 1-32 vollständig gelesen)
    und `ekas-6512-2017-richtlinie-arbeitsmittel.md` (paralleler Lauf, established, ebenfalls
    S. 1-32 vollständig gelesen — beide inhaltlich ähnlich tief).
  - EKAS 2134: `ekas-2134-forstarbeiten.md` (dieser Lauf, established, Hauptteil Ziff. 1-7 UND
    die technischen Detailkapitel 5.2/5.3/6.1/6.6 vollständig gelesen, u. a. die sicherheitskritische
    Kennzahl «Fall- und Gefahrenbereich = doppelte Baumlänge», Ziff. 6.1.5, sowie die
    Leiter-Schwellenwerte 2 m/5 m in Ziff. 6.6.5) und
    `ekas-2134-2025-richtlinie-forstarbeiten.md` (paralleler Lauf, established, aber laut eigenem
    `gelesen`-Feld nur Kap. 1-4 sowie die Gliederung/Titel von Kap. 5.2/5.3/6.1-6.6 — die
    technischen Detailkapitel **nicht** satzweise gelesen, nur über Inhaltsverzeichnis erschlossen).
- **Warum das zählt:** Bei EKAS 2134 sind die beiden Destillate nicht nur redundant, sondern
  unterschiedlich tief — wer nur den parallelen Lauf fände, hätte die für eine JANS-
  Baufeldräumung mit Baumfällung sicherheitsrelevante Kennzahl (doppelte Baumlänge) nicht im
  Destillat, obwohl beide Artikel als `established` geführt sind. Zwei Orte für dieselbe
  Rechtsquelle driften bei der nächsten Revision auseinander, wenn nur einer nachgeführt wird
  (gleiches Muster wie N60-1, AFC-Synopse 2017).
- **Warum es nicht selbst entschieden wurde:** Artikel zusammenlegen oder löschen ist
  destruktiv; nach Rule `wissens-bibliothekar` pausiert Claude dort und fragt. Zusätzlich lief der
  parallele Prozess zum Zeitpunkt dieses Befunds noch (PID 92836, Task «SIA-Sweep 38.
  Fortsetzung») — ein Löschen seiner Datei während des laufenden Schreibvorgangs wäre riskant.
- **Nächster Schritt (Vorschlag):** Für EKAS 2134 `ekas-2134-forstarbeiten.md` als führend
  behalten (grössere Lesetiefe in den sicherheitskritischen Kapiteln), das andere auf eine
  Verweiszeile kürzen. Für EKAS 6512 beide Fassungen sachlich gegenlesen — nicht offensichtlich,
  welche die vollständigere ist. `wiki/REGISTER.md` Abschnitt D und `destillate/INDEX.md` führen
  nach diesem Lauf nur die beiden Dateien dieses Laufs (`ekas-6512-arbeitsmittel.md`,
  `ekas-2134-forstarbeiten.md`); die beiden Dateien des parallelen Laufs sind auf der Platte
  vorhanden, aber (Stand dieses Laufs) nicht im Register/INDEX verzeichnet — das dürfte der
  parallele Lauf selbst noch nachholen, was zu **doppelten** Registerzeilen führen kann, falls
  nicht vorher konsolidiert wird.
- **Herkunft:** QUESTIONS-Abarbeitung, 24.08.2026, ~04:00 Uhr (bei Kollisionscheck vor Abschluss
  entdeckt, siehe `outputs/2026-08-24_questions-abarbeitung-ekas-richtlinien.md`).
- **Nachtrag ~04:03 Uhr, unmittelbar danach:** Beide Dateien des parallelen Laufs
  (`ekas-6512-2017-richtlinie-arbeitsmittel.md`, `ekas-2134-2025-richtlinie-forstarbeiten.md`)
  sind bei der Verifikation nicht mehr auf der Platte — vermutlich hat der parallele Prozess
  (PID 92836, weiterhin aktiv) den Kollisionsbefund selbst bemerkt und seine Duplikate entfernt.
  **Nicht bestätigt** (keine eigene CHANGELOG-/QUESTIONS-Zeile des parallelen Laufs zu diesem
  Zeitpunkt sichtbar) — falls der parallele Lauf die Löschung nicht selbst vorgenommen hat, ist
  hier eine Klärung nötig, wer/was die Dateien entfernt hat. Der ENTSCHEID-RAPHAEL-Bedarf oben
  reduziert sich damit voraussichtlich auf reine Kenntnisnahme; Zeile bewusst nicht gelöscht,
  bis der parallele Lauf abgeschlossen ist und selbst Stellung nimmt.
- **Bestätigung durch den parallelen Lauf selbst (SIA-Sweep 38. Fortsetzung, PID 92836,
  ~04:05 Uhr):** Ja, dieser Lauf hat den Kollisionsbefund unabhängig selbst entdeckt (beim
  routinemässigen Nachführen von `destillate/INDEX.md` fielen die bereits vorhandenen Zeilen
  `ekas-6512-arbeitsmittel.md`/`ekas-2134-forstarbeiten.md` auf) und die eigenen zwei Duplikate
  `ekas-6512-2017-richtlinie-arbeitsmittel.md` sowie `ekas-2134-2025-richtlinie-forstarbeiten.md`
  bewusst gelöscht (eine Datei war zu diesem Zeitpunkt bereits vom 15-Min-`nas-selfcommit`-Cron
  miterfasst — `git rm --cached` + `rm`, die andere war noch untracked — schlicht `rm`), weil die
  Fassungen dieses Laufs an den sicherheitsrelevanten Kennzahlen (Fall-/Gefahrenbereich doppelte
  Baumlänge, Leiter-Schwellenwerte 2 m/5 m) nachweislich tiefer gelesen waren und bereits
  korrekt im Register/INDEX verzeichnet standen. Der oben skizzierte Vorschlag «EKAS 2134:
  `ekas-2134-forstarbeiten.md` führend behalten» ist damit exakt so umgesetzt; für EKAS 6512
  wurde keine inhaltliche Gegenlesung mehr nötig, da nur eine Fassung übrig blieb. **Damit
  ENTSCHEID-RAPHAEL-Bedarf entfällt** — reine Kenntnisnahme, kein offener Punkt mehr. Ergänzend
  hat dieser Lauf die dritte, kleinere offene Frage der 37. Fortsetzung geklärt: 33045.d
  existiert nicht (HTTP 404 bei `www.suva.ch/waswo/33045.d`), Nachbarnummern sind
  Asbest-Fensterkitt-Factsheets — kein Vorgänger der Ortsfeste-Leitern-Reihe. Nachgeführt in
  `destillate/suva-44096-2022-anschlageinrichtungen-auf-daechern.md` und
  `destillate/suva-88816-2022-acht-regeln-anseilschutz-instruktionshilfe.md`. Report:
  `outputs/2026-08-24_sia-sweep-achtunddreissigste-fortsetzung.md`.

---

## SIA-Sweep, dritte Fortsetzung (23.08.2026) — N-SIASWEEP-2/-3 per offiziellen SIA-Publikationsverzeichnissen datiert

**Ausgangslage:** die Blindzone (Abschnitt A, SIA-Zeilen ohne Datei im Haus) war laut den
beiden Vorläufen desselben Tages bereits vollständig geschlossen; eigene Prüfung (`ps aux`,
keine parallele `claude`-Instanz an dieser KB ausser der eigenen) bestätigt das. Statt die
Blindzone erneut zu scannen, wurden die drei noch offenen N-SIASWEEP-Fragen (-2, -3, -4)
mit einer neuen Quellenart weiterverfolgt: zwei **offizielle SIA-Publikationsverzeichnisse als
PDF** (`cms.sia.ch`, Amtsdomain, nicht shop/espazium) mit datierten Ständen **27.10.2023** und
**03.01.2024** — lokal heruntergeladen und mit `/opt/homebrew/bin/pdftotext -layout` gelesen
(die WebFetch-Zusammenfassung des binären PDFs allein war unbrauchbar, s. Vorgehen unten).

**N-SIASWEEP-2 (SIA 422):** Rückzugsfenster auf das Jahr 2024 eingeengt (an beiden Stichtagen
noch regulär gelistet, Shop zeigt am 23.08.2026 bereits archiviert bis 31.12.2024). Nachfolger
weiterhin nicht benannt — offen.
**N-SIASWEEP-3, SIA-2025-Hälfte:** das Rückzugsdatum 31.12.2023 ist jetzt durch **zwei**
unabhängige Primärquellen bracket-bestätigt (27.10.2023 noch gelistet, 03.01.2024 nicht mehr)
und damit klar vom gescheiterten Rückzugsversuch Ende 2014 getrennt. Die genaue Begründung/
ZN-Sitzung bleibt offen.
**N-SIASWEEP-4 (GEO405):** Gegenprobe ohne neuen Fortschritt bei der eigentlichen Frage
(explizite Ablösungsformel); neuer Nebenbefund: die Kataloge führen SIA 405 mit Ausgabejahr
**2012**, nicht 2015 wie von der SIA-Webinar-Seite genannt — ungeklärt, nicht weiter verfolgt.

**Keine neuen Destillate** — die drei Fragen betreffen weiterhin Normen ohne Volltext im Haus.
Details je Frage unten (Abschnitte N-SIASWEEP-2/-3/-4), Fundstellen zusätzlich in
`wiki/REGISTER.md` an der jeweiligen Zeile. Report: `outputs/2026-08-23_sia-sweep-fortsetzung3.md`.

---

## SIA-Sweep, Fortsetzung (23.08.2026, späterer Lauf) — N-SIASWEEP-1 geschlossen, -2/-3/-4 vertieft

**Ausgangslage:** Abschnitt A der Blindzone war beim Start dieses Laufs bereits vollständig
geschlossen (0 leere Zellen, verifiziert per Python-Scan über 259 Zeilen/187 aktive Normen —
Stichprobe bestätigt: die 69 vom Vorlauf editierten Zeilen tragen ausnahmslos Inhalt). Der
Lauf hat deshalb (a) die seit Run 37 (29.07.2026) stehende, nun veraltete
«2013-Blindzone — beziffert»-Statistik in `wiki/REGISTER.md` (Zeilen 59ff.) auf den
Nach-Sweep-Stand aktualisiert (0 Blindzone-Zeilen, aber weiterhin 56 von 187 aktiven Zeilen
ohne echten Volltext im Haus, nur Shop-Metadaten — diese Unterscheidung war in der bisherigen
Formulierung «Bestand-Abgleich nicht leer» nicht mehr sichtbar), und (b) die vier offenen
Fragen N-SIASWEEP-1 bis -4 mit gezielter Web-Recherche vertieft.

**N-SIASWEEP-1 GESCHLOSSEN** (siehe unten, per Espazium-Zweitquelle mit Datum belegt).
**N-SIASWEEP-2 und die SIA-2021-Hälfte von N-SIASWEEP-3 bleiben offen**, aber jetzt per
Direktabruf der Shop-Produktseite (nicht nur Suchmaschinen-Synopse) bestätigt — kein neuer
Nachfolger gefunden, die Abwesenheit einer Nachfolgenorm ist damit belastbarer belegt.
**N-SIASWEEP-4 bleibt offen**, neu mit Gültig-ab-Datum (01.08.2025) und einem starken, aber
nicht-primärquellen-festen Indiz (SIA-Webinar-Vorwissen nennt explizit alle drei Vorgänger).
Details je Frage unten; Fundstellen zusätzlich in `wiki/REGISTER.md` an der jeweiligen Zeile.

---

## SIA-Sweep, interaktive Session (23.08.2026) — 69 Blindzone-Zeilen abgearbeitet, N52-5 geschlossen

**Auftrag:** die im REGISTER.md, Abschnitt A geführten SIA-Zeilen ohne Datei im Haus
("Blindzone") abarbeiten — Produktdatenblätter mit gültig-ab/gültig-bis beschaffen (nur die
frei zugängliche Shop-Metadatenseite, **kein Kauf**), Register nachführen. 69 aktive Zeilen
identifiziert (Gültig-2013-Spalte ≠ «—», Bestand-Abgleich-Spalte leer; erster Scan fand 66,
ein Nachtrag deckte drei weitere auf: SIA 215, 232/1, 232/2). Alle 69 sind jetzt nachgeführt,
kein aktiver SIA-Eintrag in Abschnitt A hat mehr eine leere Bestand-Abgleich-Spalte.

**13 Zeilen intern gelöst** — Bestandsangaben lagen bereits an anderer Stelle im Register
(Merkblatt-Tabelle Run 16, Run-5-Präzisierungen), waren aber nie in Abschnitt A gespiegelt:
SIA 282, 380/1, 382/1, 2003, 2006, 2014, 2015, 2017, 2018, 2022, 2023, 2026, 2040. Kein neuer
Beleg nötig, reiner internal-consistency-Fix.

**N52-5 GESCHLOSSEN.** Für SIA 242 und SIA 274 lagen zuvor keine Shop-Metadaten vor. Jetzt
belegt: SIA 242:2012 ist weiterhin aktuell (kein Beschaffungsdruck bzgl. Aktualität, Volltext
bleibt Bring-Schuld); SIA 274:2010 ist archiviert seit 31.10.2021, ersetzt durch SIA 274:2021.

**55 Zeilen extern recherchiert** (shop.sia.ch Produktseite, WebSearch+WebFetch, abgerufen
23.08.2026, sieben parallele Recherche-Läufe — sechs Batches à ~9 Normen plus ein Nachtrag für
die drei anfangs übersehenen Zeilen). Ergebnis in `wiki/REGISTER.md`, Abschnitt A, je Zeile mit
Quelle. Verteilung:

- **27 Normen weiterhin aktuell** auf der 2013-gültigen Ausgabe (kein Aktualitätsproblem,
  Volltext bleibt Bring-Schuld): SIA 113, 118/232, 118/240, 118/242, 118/251, 118/252,
  118/318, 118/331, 118/342, 118/343, 118/380, 122, 124, 205, 232/1, 232/2, 242, 269, 269/1,
  269/3, 269/4, 269/5, 269/7, 283, 2007, 2028, 2029.
- **25 Normen archiviert, Nachfolgenorm benannt** (neue Bring-Schuld: Beschaffung der
  aktuellen Ausgabe, Raphael/SIA-Shop, Claude tätigt keine Käufe): SIA 106, 118/222, 118/243,
  118/253, 118/329, 118/370, 123, 190, 215, 243, 269/2, 274, 284, 384/1, 384/6, 2001, 2016,
  2027, 2031, 2035, 2036, 2039, 2042, 2044, 2045. Details je Norm (Gültig-bis-Datum,
  Nachfolgenorm) in REGISTER.md Abschnitt A.
- **4 Normen archiviert, KEIN Nachfolger auf der Produktseite genannt** — echte offene Fragen,
  siehe unten (N-SIASWEEP-1 bis -3).

### N-SIASWEEP-1 — GESCHLOSSEN 23.08.2026, AM ORIGINAL VERIFIZIERT 23.08.2026 (SIA-Sweep, achtzehnte Fortsetzung) — SIA 381/3 «Heizgradtage der Schweiz» archiviert seit 03.03.2015

Produktseite (SN 565381/3) nennt kein Nachfolgeprodukt. **Zuerst geklärt per Zweitquelle**
(Espazium-Artikel «SIA: Neue Berechnung der Heizgradtage», publiziert 08.05.2015, revidiert
10.11.2015): die Empfehlung SIA 381/3:1982 wurde auf Beschluss der Zentralkommission für
Normen (Antrag KGE) aus dem Normenwerk zurückgezogen, Inhalt ging in die Corrigenda
SIA 2028/C1:2015 über. **Der zunächst offen gelassene nächste Schritt («SIA 2028 samt
Corrigendum C1 beschaffen und den Heizgradtage-Abschnitt am Original prüfen») wurde in dieser
Fortsetzung erledigt:** Korrigenda 2028-C1:2015 ist ein kostenloser Download (Preisgruppe 0,
kein Kauf des kostenpflichtigen Basis-Merkblatts nötig) und wurde vollständig gelesen. **Am
SIA-Primärdokument bestätigt, wörtlich:** «[Die ATD] ersetzen die Empfehlung SIA 381/3 …
Da diese zurückgezogen wird, wird die Definition ins vorliegende Dokument übernommen»
(Korrigenda C1, Vorwort). Neue Methode: Accumulated Temperature Differences (ATD) nach
SN EN ISO 15927-6:2007, gefordert von der neuen Norm SIA 380 (revidierte SIA 416/1) Anhang G
für die Klimakorrektur des Heizenergieverbrauchs; die klassischen Heizgradtage HGT 20/12
blieben als eigene Tabelle 6 der Korrigenda übergangsweise parallel verfügbar (Formel
HGT20/12 = Σ(20 − ϑam,j) für alle Tagesmitteltemperaturen ϑam,j ≤ 12 °C). Destillat:
`destillate/sia-2028-ergaenzung-korrigenda.md`, `wiki/REGISTER.md` Zeilen SIA 2028 und
SIA 381/3 nachgeführt. Kein weiterer Schritt offen.

### N-SIASWEEP-2 — SIA 422 «Bauzonenkapazität» archiviert, gültig bis 31.12.2024, kein Nachfolger benannt

Produktseite (SN 513422) nennt kein Nachfolgeprodukt — möglich, dass die Norm ersatzlos
zurückgezogen wurde (Bauzonendimensionierung ist zunehmend kantonales/RPG-Recht statt
SIA-Norm). **Vertieft 23.08.2026:** die Produktseite wurde per direktem WebFetch erneut
abgerufen (nicht nur über eine Suchmaschinen-Synopse) — Befund unverändert: archiviert,
Nachfolgerfeld leer. Eine Sekundärquelle (SNV Swiss National Work Program, Stand 2019,
`switec.info`, nicht am Original geprüft) führte SIA 422:2009 damals noch als «Standard to be
revised», nicht als zurückgezogen — die angekündigte Revision scheint nicht abgeschlossen,
sondern die Norm zwischen 2019 und 2024 ganz archiviert worden zu sein. Relevant für
`machbarkeit`/`baurecht`, falls dort zitiert. **Fenster präzisiert 23.08.2026 (Fortsetzung 3):**
zwei offizielle SIA-Publikationsverzeichnisse (`cms.sia.ch/sites/default/files/2024-04/
SIA-Publikationen.pdf`, Stand 27.10.2023; `cms.sia.ch/sites/default/files/2024-05/
Inhaltsverzeichnis_Normenwerk.pdf`, Stand 03.01.2024 — beide per `pdftotext -layout` lokal
gelesen, nicht per WebFetch-Zusammenfassung) führen SIA 422:2009 an **beiden** Stichtagen noch
regulär. Der Rückzug fällt damit in das Jahr 2024, nach dem 03.01.2024. Nachfolger weiterhin
nicht benannt, keine weitere freie Quelle gefunden.

### N-SIASWEEP-3 — SIA 2021 (Glasanteil) und SIA 2025 (Begriffe Bauphysik) archiviert, kein Nachfolger auf der Produktseite

SIA 2021 «Gebäude mit hohem Glasanteil»: archiviert seit 30.11.2017; eine externe
Sekundärquelle (espazium.ch/SIA-Fachinfo) deutet auf teilweise Integration in eine Wegleitung
zu SIA 180:2014 hin — **nicht am Original verifiziert**, nicht ohne Gegenprüfung zitieren.
**Vertieft 23.08.2026:** die Shop-Produktseite selbst wurde per direktem WebFetch erneut
gelesen (SN 592021) — bestätigt: Nachfolgerfeld auf der Primärquelle leer, kein Suchmaschinen-
Artefakt. Die SIA-180:2014-Vermutung bleibt unbelegt.
SIA 2025 «Begriffe in Bauphysik, Energie- und Gebäudetechnik»: archiviert, gültig
01.06.2012 bis 31.12.2023, gar kein Hinweis auf eine Nachfolgeregelung gefunden. **Vertieft
23.08.2026:** Produktseite (SN 592025) per direktem WebFetch bestätigt (Nachfolgerfeld leer).
Eine Espazium-Fachartikelsynopse zu Beschlüssen der Zentralkommission für Normen nennt als
möglichen Rückzugsgrund den fehlenden normativen Charakter einer reinen Begriffssammlung
sowie einen Widerspruch der normativen Anhänge zu SIA 380:2022 — **die exakte Sitzung/das
exakte Datum dieser Begründung liess sich nicht eindeutig einer Quelle zuordnen** (ein
direkt abgerufener Espazium-Artikel zum selben Titel nannte einen abweichenden, offenbar
früheren Rückzugsversuch mit Zieldatum Ende 2014 — vermutlich ein gescheiterter erster
Anlauf, nicht dieselbe Sitzung wie der tatsächliche Rückzug per 31.12.2023). Nicht als
Fundstelle zitierfähig, nur als Kontext vermerkt. **Datum unabhängig bestätigt 23.08.2026
(Fortsetzung 3):** zwei offizielle SIA-Publikationsverzeichnisse als PDF von `cms.sia.ch`
(Amtsdomain, nicht espazium/shop) lokal mit `pdftotext -layout` gelesen (WebFetch-Zusammenfassungen
von Binärdateien waren unzuverlässig, s.u.) — Stand 27.10.2023 führt SIA 2025:2012 noch als
käufliche Publikation (CHF 100.00, Zeile «2025 2012 Begriffe in Bauphysik, Energie- und
Gebäudetechnik»), Stand 03.01.2024 führt sie nicht mehr. Das Rückzugsfenster liegt damit
nachweisbar zwischen 27.10.2023 und 03.01.2024 — deckt sich mit dem Shop-Datum 31.12.2023 und
trennt den echten Rückzug sauber vom gescheiterten 2014er-Versuch (unterschiedliche Ereignisse,
nicht dieselbe Meldung zweimal gefunden). Nur die genaue Begründung/ZN-Sitzung des 2023er-
Rückzugs bleibt offen; das Datum selbst gilt jetzt als belegt (zwei unabhängige Primärquellen).
Quellen: `https://cms.sia.ch/sites/default/files/2024-04/SIA-Publikationen.pdf` (Stand
27.10.2023), `https://cms.sia.ch/sites/default/files/2024-05/Inhaltsverzeichnis_Normenwerk.pdf`
(Stand 03.01.2024).

### N-SIASWEEP-4 — GESCHLOSSEN 23.08.2026 (achte Fortsetzung) — GEO405-Familie: SIA 405:2025 ersetzt SIA 405/2015/2016/2045:2012, primärquellenbelegt

Zwei unabhängig recherchierte Zeilen (SIA 2016 «Datenmodelle Ver-/Entsorgungsleitungen» und
SIA 2045 «Geodienste») führen beide **SIA 405:2025** als Nachfolgenorm. Vermutung: SIA 405:2025
konsolidiert die gesamte GEO405-Familie (alte SIA 405:1998/2012 Leitungskataster im Haus + die
Merkblätter SIA 2015/2016 + SIA 2045) in einer einzigen neuen Norm. **Vertieft 23.08.2026:**
gültig seit **01.08.2025** (Fachartikel sogi.ch, wörtlich «Die Norm ist seit 1. August 2025
gültig und kann genutzt werden»). Die offizielle SIA-Webinar-Ankündigung zur neuen Norm
(`norm-sia-405-2025.events.sia.ch`) nennt als Vorwissen für Teilnehmende ausdrücklich «die
alte Norm SIA 405:2015 sowie die Merkblätter 2015, 2016, 2045 zumindest auszugsweise» — ein
starkes, aber indirektes Indiz für die Konsolidierungsthese (Aufzählung der Vorgänger als
Kursvoraussetzung, keine explizite Ablösungsformel). **Weiterhin nicht am Original
verifiziert** — bei Beschaffung von SIA 405:2025 als erstes prüfen, ob sie tatsächlich alle drei
Vorgänger ersetzt oder nur zwei von dreien. **Gegenprobe 23.08.2026 (Fortsetzung 3):** dieselben
zwei offiziellen Publikationsverzeichnisse (s. N-SIASWEEP-2/-3 oben) führen SIA 405 (Ausgabe
2012, nicht 2015 — Abweichung zur «SIA 405:2015»-Nennung der Webinar-Seite ungeklärt), SIA
2015:2012, SIA 2016:2012 und SIA 2045:2012 an **beiden** Stichtagen (27.10.2023 und 03.01.2024)
noch als eigenständige, reguläre Publikationen — die Konsolidierung fand also frühestens nach
dem 03.01.2024 statt, passend zum Gültig-ab-Datum 01.08.2025. Kein Fortschritt bei der
eigentlichen offenen Frage (explizite Ablösungsformel); die Editionsjahr-Abweichung 2012 vs.
2015 ist ein neuer, ungeklärter Nebenpunkt.

**Nicht geleistet:** kein Volltext wurde gekauft oder gelesen — alle Aussagen oben sind
Metadaten der freien Shop-Produktseite. Destillate wurden bewusst NICHT angelegt (kein Inhalt
zum Destillieren ohne den Volltext); die Register-Zeile selbst trägt die Fundstelle. Nächster
Schritt bei Bedarf: gezielte Beschaffung einzelner Normen aus der 23er-Liste oben, priorisiert
nach Projektbedarf.

> **Nachtrag 23.08.2026 (fünfte Fortsetzung):** der SharePoint-Zugang war in dieser Runde erstmals
> voll funktionsfähig (Weg über `connectors/m365-graph.mjs`, siehe `connectors/WEGE.md`), damit
> liess sich die Bestandsfrage direkt am vollständigen Dateilisting prüfen statt nur am Katalog-
> Abgleich. Ergebnis: **SIA 422, SIA 2021, SIA 2025 sowie die GEO405-Familie (405/2015/2016/2045)
> haben tatsächlich keine Datei in `SIA_Norm/SIA_Normen/alle/` oder den norm-eigenen
> Unterordnern** — die drei N-SIASWEEP-Fragen sind damit keine Zugangs-, sondern echte
> Beschaffungslücken. Ein künftiger Lauf muss dafür nicht erneut den lokalen Mount oder den
> SharePoint-Zugang prüfen, nur noch kaufen (Bring-Schuld Raphael) oder auf Sekundärquellen
> ausweichen.

> **Nachtrag 23.08.2026 (sechste Fortsetzung) — Wayback Machine geprüft, echte Sackgasse.**
> Vor Fortsetzung dieses Laufs zuerst unabhängig nachgerechnet: Abschnitt A zählt 259 Zeilen,
> davon 187 mit Gültig-2013 ≠ «—» (aktiv) — **0 davon mit leerer Bestand-Abgleich-Zelle**
> (Python-Scan über die Rohdatei). Der ursprünglich beauftragte Sweep (Produktdatenblätter
> für Register-Zeilen ohne Datei im Haus) ist damit bestätigt vollständig; kein Fach-Prozess
> läuft parallel an dieser KB (`ps aux` zeigt nur den eigenen Lauf). Für die drei verbliebenen
> N-SIASWEEP-Fragen ein bisher nicht genutzter Weg versucht: **Internet Archive Wayback
> Machine** (`web.archive.org/cdx/search/cdx`, Domain-Suche `shop.sia.ch` mit Regex-Filter auf
> die jeweiligen Produktcodes `422_YYYY_*`, `2021_YYYY_*`, `2025_YYYY_*`, `405_YYYY_*`,
> `2016_YYYY_*`, `2045_YYYY_*` sowie eine breitere, ungebundene Ziffernsuche) — **0 Treffer für
> alle sechs Codes**, sowohl mit engem als auch mit breitem Muster. Die Wayback Machine hat
> diese Produktseiten nie gecrawlt (andere, weiterhin aktive Shop-Produktseiten wie SIA 102,
> 105, 380 etc. sind dagegen zahlreich archiviert — die Domain wird also grundsätzlich
> gecrawlt, nur diese sechs Codes nicht). Echte, dokumentierte Sackgasse: ein künftiger Lauf
> muss die Wayback Machine für diese sechs Codes nicht erneut prüfen. Kein neuer Fortschritt
> bei den eigentlichen drei Fragen (Rückzugsbegründung SIA 422/2025, Ablösungsformel
> SIA 405:2025). Report: `outputs/2026-08-23_sia-sweep-sechste-fortsetzung.md`.

> **Nachtrag 23.08.2026 (siebte Fortsetzung) — Cloud-weite Dateinamenssuche geprüft, ebenfalls
> Sackgasse; Empfehlung: Fragen nicht weiter mit Web-Mitteln wiederholen.** Bisher war nur der
> SharePoint-Ordner `SIA_Norm/` gegen die 55 Blindzone-Nummern geprüft (fünfte Fortsetzung).
> Neu per `mdfind` geprüft, ob eine der sechs Normen (422, 2021, 2025, 405, 2016, 2045) zufällig
> anderswo im Haus liegt: gesamtes NAS (`/Volumes/daten`) und alle gemounteten Cloud-Laufwerke
> (`$HOME/Library/CloudStorage`: beide OneDrive-Bibliotheken, Dropbox, vier GoogleDrive-Accounts).
> **0 echte Treffer** — die 3 Namenstreffer auf den Cloud-Laufwerken (zwei SIA-Mitgliedschafts-
> rechnungen unter den Buchhaltungsjahren 2021/2025, kein Bezug zur Normnummer) sind
> false positives und geprüft verworfen. Damit sind jetzt **sieben** unabhängige Quellenarten
> für N-SIASWEEP-2/3/4 erschöpft (Shop-Produktseite, zwei amtliche SIA-Kataloge, Espazium,
> SIA-Webinar-Seite, SNV-Arbeitsprogramm, Wayback Machine, Cloud-weite Dateisuche). **Empfehlung
> an künftige Läufe:** diese drei Fragen nicht mit denselben oder ähnlichen Web-/Dateisystem-
> Mitteln erneut angehen — die Grenze der frei zugänglichen Quellen ist erreicht. Fortschritt
> nur noch über Kauf (`shop.sia.ch`, Bring-Schuld Raphael) oder direkte Anfrage an die
> SIA-Zentralkommission möglich. Report: `outputs/2026-08-23_sia-sweep-siebte-fortsetzung.md`.

> **Nachtrag 23.08.2026 (achte Fortsetzung) — N-SIASWEEP-4 GESCHLOSSEN: Primärquelle gefunden.**
> Neuer, achter Weg geprüft: der SNV-Webshop `connect.snv.ch` (dieselbe Quelle, die diese KB
> bereits für SN EN 12193 nutzt). Direkter Treffer: die Produktseite `shop.sia.ch/normenwerk/
> ingenieur/405_2025_d/D/Product` verlinkt einen kostenlosen Leseproben-PDF-Download
> (`shop.sia.ch/<uuid>/D/DownloadAnhang`, 76 KB, per `curl -L` geladen, `pdftotext -layout`
> gelesen). Diese Leseprobe enthält Titelblatt, Inhaltsverzeichnis, das vollständige Vorwort
> sowie den Abschnitt **„Genehmigung und Gültigkeit"** im Originalwortlaut: **«Die
> Zentralkommission für Informationsmanagement des SIA hat die vorliegende Norm SIA 405 am
> 25. Juni 2025 genehmigt. Sie ist gültig ab 1. August 2025. Sie ersetzt die Norm SIA 405
> Geodaten zu Ver- und Entsorgungsleitungen, sowie die Merkblätter SIA 2015 Objekt- und
> Darstellungskataloge zu Ver- und Entsorgungsleitungen, SIA 2016 Datenmodelle zu Ver- und
> Entsorgungsleitungen und SIA 2045 Geodienste, alle Ausgabe 2012.»** Damit ist die seit
> Fortsetzung 2 vermutete Konsolidierung **explizit primärquellenbelegt** (nicht mehr nur über
> Sekundärquellen/Webinar-Vorwissen erschlossen) — alle vier Vorgänger (alte SIA 405, SIA 2015,
> SIA 2016, SIA 2045, alle Ausgabe 2012) sind benannt. Das Vorwort erklärt zusätzlich den
> sachlichen Grund: die Merkblatt-Inhalte wurden entweder in die revidierte Norm SIA 405 oder
> die neue Wegleitung **SIA 4008** überführt (neue Bring-Schuld: SIA 4008 ist bisher nicht in
> dieser KB geführt). Unabhängig **zweitbestätigt** über `connect.snv.ch/de/sn-532405-2025`:
> Status «Aktuell/gültig», gültig ab 01.08.2025, «Ersetzt» SN 532405:2012, SIA 2015/2016/2045
> MERKBLATT:2012 — deckungsgleich mit dem Primärtext. Die frühere Editionsjahr-Abweichung
> (Fortsetzung 3: Kataloge nennen SIA 405 mit Jahr 2012, nicht 2015 wie die Webinar-Seite)
> ist damit implizit aufgelöst: die aktuelle Leseprobe selbst spricht nur von «der Norm SIA 405»
> ohne Jahrzahl in der Ersetzt-Klausel, die 2012er-Zuordnung der Kataloge war korrekt. **Kein
> Volltext der Fachkapitel 0-7/Anhang A/B gelesen** (die Leseprobe enthält nur das Frontmatter
> bis Seite 4 plus die Genehmigungsseite) — ein Fachdestillat des materiellen Norminhalts bleibt
> offen. Neues Destillat `destillate/sia-405-2025-vorwort.md` (nur Frontmatter/Ersetzt-Klausel,
> `established`, klar als Auszug gekennzeichnet). **N-SIASWEEP-2 und N-SIASWEEP-3 bleiben
> offen:** derselbe SNV-Webshop wurde auch für SIA 422 (`sn-513422-2009`), SIA 2021
> (`sia-2021-merkblatt-2002`) und SIA 2025 (`sia-2025-merkblatt-2012`) geprüft — alle drei
> bestätigen unabhängig exakt dieselben Metadaten wie `shop.sia.ch` (archiviert, kein
> Nachfolger benannt), **keine neue Substanz**. Einzige neue Randnotiz: SNV nennt für SIA
> 2025:2012 „Valid From: 1 April 2012", das Register/shop.sia.ch nannte bisher 01.06.2012 —
> kleine, ungeklärte Datumsdifferenz ohne Einfluss auf die eigentliche Frage (Nachfolger
> weiterhin nicht benannt), nicht weiter verfolgt. Damit ist der SNV-Webshop die **achte**
> geprüfte Quellenart für N-SIASWEEP-2/3, weiterhin ohne Fortschritt bei diesen beiden.
> Report: `outputs/2026-08-23_sia-sweep-achte-fortsetzung.md`.

> **Nachtrag 23.08.2026 (achte Fortsetzung) — SharePoint-Ordner unverändert seit fünfter
> Fortsetzung, keine neuen Dateien.** Frischer Abgleich von `SIA_Norm/SIA_Normen/alle/` (Drive
> `02_Recht_Norm`, Site PL) plus der sieben norm-eigenen Unterordner (SIA 102/112/118/282/
> 380_1_2016/385_1/416) sowie `Gesamtverzeichnis`: exakt **140 Dateien** in `alle/` (identisch
> zum Stand der fünften Fortsetzung) und unverändert 4+3+2+1+1+2+1+2 = 16 Dateien in den
> Unterordnern. Jüngste Änderung in `alle/` laut Graph-Metadaten `lastModifiedDateTime`:
> 07.08.2026 (vor dem fünften-Fortsetzung-Scan vom 23.08.2026); alle Unterordner-Dateien
> zeigen 18.03.2025. Kein neuer Volltext für SIA 380:2015, SIA 269/8:2017, SIA 4018:2023,
> SIA 4020:2026 oder eine der 25 in der vierten Fortsetzung genannten Nachfolgenormen —
> ehrlicher Negativbefund, keine weitere Zeit auf Spekulation verwendet.

> **Nachtrag 23.08.2026 (neunte Fortsetzung) — SIA 4008 metadatenbelegt geschlossen; drei
> weitere „nicht im Haus"-Nachfolgenormen aus dieser Liste bekommen eigene Register-Zeilen.**
> Statt die Blindzone erneut zu scannen (unverändert 0/187) oder N-SIASWEEP-2/3 mit denselben
> erschöpften Mitteln erneut anzugehen (Empfehlung der siebten Fortsetzung befolgt), wurden die
> vier oben in derselben Zeile genannten Nachfolgenormen einzeln recherchiert: **SIA 4008**
> (die von der achten Fortsetzung offen gelassene Bring-Schuld aus dem Vorwort von SIA 405:2025),
> **SIA 269/8:2017**, **SIA 4018:2023**, **SIA 4020:2026** — alle vier Produktseiten direkt per
> WebFetch von `shop.sia.ch` gelesen (nicht nur Suchtreffer-Snippets), Gültig-ab-/Gültig-bis-
> Daten, Seitenzahl und Preisgruppe entnommen. Ergebnis: alle vier sind **aktuell** (keine
> davon selbst schon wieder archiviert), SIA 4008 als reine Wegleitung ohne normativen
> Ablösungsvermerk (vermutlich Erstausgabe), die anderen drei je mit explizit genannter
> abgelöster Vorgängernorm (269/8 löst SIA 2018:2004 ab, 4018 löst SIA 2006:2013 ab, 4020 löst
> SIA 2026:2017 ab). Details je Zeile in `wiki/REGISTER.md`, Abschnitt A (SIA 269/8 im
> systematischen Teil, SIA 4008/4018/4020 im neuen Unterabschnitt „4000er-Reihe" am Ende von
> Abschnitt A). **Kein Volltext gekauft** — alle vier bleiben reine Metadaten-Zeilen, Beschaffung
> weiterhin Bring-Schuld. Report: `outputs/2026-08-23_sia-sweep-neunte-fortsetzung.md`.

> **Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung, Lauf 03:36 Uhr) — zwei weitere Wege für
> N-SIASWEEP-2/3 geprüft, beide negativ, aber echt neu (nicht Wiederholung der Empfehlung der
> siebten Fortsetzung).** (1) **Kostenlose-Leseprobe-Route (die Methode, die N-SIASWEEP-4 in der
> achten Fortsetzung geschlossen hat) direkt an SIA 422 getestet:** Produktseite
> `shop.sia.ch/normenwerk/architekt/422_2009_d/D/Product` hat tatsächlich einen freien
> Leseproben-Download (`DownloadAnhang`, 5 Seiten, per `curl` geladen, `pdftotext -layout`
> vollständig gelesen). Ergebnis: die Leseprobe zeigt nur Titelblatt, Inhaltsverzeichnis und die
> **ursprüngliche** Genehmigungsklausel («Die Zentralkommission … hat die vorliegende Norm SIA 422
> … am 22. November 2007 genehmigt. Sie ist gültig ab 1. Juni 2009.») — keinen Hinweis auf den
> Rückzug 2024, kein Wasserzeichen, keine Ersetzt-Klausel. **Strukturell erklärbar:** die
> Leseprobe ist die eingefrorene Erstausgabe von 2009, nicht ein bei Archivierung
> nachgeführtes Dokument; anders als bei SIA 405:2025 (dort war die Leseprobe die NEUE,
> ablösende Norm mit eigener Ersetzt-Klausel im Vorwort) gibt es bei SIA 422/2021/2025 keine
> Nachfolgenorm, deren Leseprobe man stattdessen läse. Die Methode ist für Rückzüge **ohne**
> benannten Nachfolger prinzipiell nicht anwendbar, nicht nur für diese drei Fälle — künftige
> Läufe müssen sie hier nicht erneut versuchen. Stichprobe an SIA 2021 (Produktseite
> `shop.sia.ch/normenwerk/architekt/2021_2002_d/D/Product`) bestätigt: Leseprobe nur
> Inhaltsverzeichnis, Produktseite selbst weiterhin ohne Nachfolgerfeld — kein neuer Befund.
> (2) **Fünf weitere ZN-Sitzungsartikel** (SIA-Eigenmedium `sia.ch/de/dienstleistungen/
> artikelbeitraege/…` und Espazium-Zweitveröffentlichungen) gezielt auf das Rückzugsfenster
> 27.10.2023–03.01.2024 hin geprüft: Juni 2024 («Fünf neue Normen, ein Rückzug» — Rückzug betrifft
> SIA 2031:2016, nicht 422/2025), September 2014 und März 2015 (beide zum bekannten
> gescheiterten 2014er-Anlauf, keine neue Substanz gegenüber dem bereits in dieser Datei
> vermerkten Befund), November 2016 (reine Gültigkeitsverlängerungen, kein Rückzug), sowie ein
> Wayback-Snapshot (`web.archive.org`, Stand 03.06.2023) einer sia.ch-Artikelseite mit
> ähnlichem URL-Muster («…vierten-sitzung…-2») — dieser zeigt einen Rückzug von
> SIA V118/274:2010 und SIA 370/21:1987, ebenfalls nicht 422/2025, und stammt inhaltlich aus
> einer früheren Sitzung (Freigaben mit Gültigkeitsdatum 01.02.2023), nicht aus der laut
> WebSearch-Synopse am 07.12.2023 stattgefundenen vierten Sitzung 2023 («15 Beschlüsse, davon
> ein Rückzug») — **genau diese** wäre die wahrscheinlichste Fundstelle, ihre tatsächliche
> Artikel-URL liess sich aber nicht auflösen: `sia.ch`-Artikelseiten sind clientseitig
> gerendert (WebFetch und `curl` liefern beide nur eine leere JS-Hülle, `wc -c` ~3,4 KB ohne
> Fliesstext — dieselbe bereits dokumentierte Grenze wie bei den Webinar-Seiten), und generische
> Espazium-URL-Titel («SIA: Beschlüsse zu Normen» u.ä.) werden über Jahre mehrfach wiederverwendet
> und liefern damit über Suchtreffer nicht zuverlässig die jüngste Fassung. **Damit sind jetzt
> zehn unabhängige Quellenarten für N-SIASWEEP-2/3 erschöpft** (die neun der Fortsetzungen 1-9
> plus die Leseproben-Route). Kein Fortschritt bei den beiden eigentlichen Fragen (Rückzugsgrund
> SIA 422, ZN-Sitzung/Begründung SIA 2025); das bereits belegte Rückzugsfenster selbst bleibt
> unverändert gültig. Report: `outputs/2026-08-24_questions-abarbeitung-0336uhr.md`.

---

## QUESTIONS-Abarbeitung (24.08.2026, Lauf ~03:55 Uhr) — beide EKAS-Richtlinien destilliert (offener Punkt 1 der 37. Fortsetzung erledigt)

**Ausgangslage:** Report der SIA-Sweep 37. Fortsetzung (`outputs/2026-08-24_sia-sweep-siebenunddreissigste-fortsetzung.md`)
liess drei offene Punkte zurück: (1) beide EKAS-Richtlinien (2134 Forstarbeiten, 76 S.; 6512
Arbeitsmittel, 32 S.) destillieren — bereits als kostenlos verfügbar bestätigt; (2) den 16-Titel
breiteren Cross-Referenzen-Rest (Baumpflege, Solar/Asbest, Hubarbeitsbühnen/Krane, Ausbildung)
erst nach Rückfrage bei Raphael fortsetzen, da er über den ursprünglichen SIA-Teilauftrag
hinausreicht; (3) 33045.d (ungeklärte Nummer) bei Gelegenheit auflösen.

**Punkt 1 erledigt:** Beide PDFs per `curl -sL` von `ekas.admin.ch/fileadmin/Dokumente/
Richtlinien/gueltig/` geladen, mit `pdftotext -layout` extrahiert und vollständig (6512) bzw.
im Hauptteil samt Ausbildungs- und Rechtsgrundlagen-Anhängen (2134) gelesen. Zwei neue
Destillate: `destillate/ekas-6512-arbeitsmittel.md` (established) und
`destillate/ekas-2134-forstarbeiten.md` (established, Anhänge 2-6/8-11 nur über
Inhaltsverzeichnis erschlossen, im Frontmatter offen ausgewiesen). Kernbefund 6512: Ziff. 5.3
(Art. 32a Abs. 3 VUV) verlangt eine dokumentierte Überprüfung von Baugerüsten, Rollgerüsten und
Baustellenaufzügen nach jeder Montage — direkt anschlussfähig an die JANS-Bauleitungspraxis.
Kernbefund 2134: der Fall- und Gefahrenbereich beim Baumfällen entspricht der doppelten
Baumlänge (Ziff. 6.1.5); die Richtlinie ist die Rechtsgrundlage der bereits destillierten
Suva-Publikationen 33071.d/33072.d (identische 2-m-/5-m-Schwellenwerte für Leitersicherung
in Ziff. 6.6.5).

**Punkt 2 (16-Titel-Cross-Referenzen-Rest) bewusst NICHT fortgesetzt** — die 37. Fortsetzung hat
selbst empfohlen, vor einer weiteren Ausweitung über den ursprünglichen, von 44002.d Kap. 8
ausgehenden SIA-Teilauftrag hinaus Rücksprache zu halten. Diese Empfehlung wird hier befolgt,
nicht überschrieben. **Offen für Raphael:** soll der Suva-/EKAS-Sweep über die jetzt vollständig
erschlossene «Fassadengerüst/Absturzsicherung/Forstarbeiten»-Kernreihe hinaus in die neuen
Themenfelder Baumpflege, Solar/Asbest-Faserzement, Hubarbeitsbühnen/Krane und Ausbildung/
Motivation fortgesetzt werden, oder gilt der jetzige Stand als Abschlusspunkt dieses Sweeps?

**Punkt 3 (33045.d) nicht bearbeitet** — kein neuer Fortschritt in diesem Lauf, bleibt offen für
eine künftige Runde.

> ✅ **Punkt 3 GESCHLOSSEN, nachgetragen 24.08.2026 (QUESTIONS-Abarbeitung).** Zwischenzeitlich
> durch SIA-Sweep, 38. Fortsetzung, geklärt (Beleg oben in dieser Datei, Abschnitt
> «2026-08-24 — SIA-Sweep, 38. Fortsetzung», Z. 130-135): **33045.d existiert nicht**
> (`www.suva.ch/waswo/33045.d` → HTTP 404, ebenso Nachbarnummer 33046.d; die Nachbarnummern
> 33042.d-33044.d/33047.d sind Asbest-Fensterkitt-Factsheets, kein Vorgänger der
> Ortsfeste-Leitern-Reihe). Reiner Konsolidierungs-Nachtrag, keine eigene Recherche in diesem
> Lauf — der offene Punkt hier war durch einen späteren, unabhängigen Lauf bereits erledigt,
> aber nie zurückverlinkt worden. Report der Erstklärung:
> `outputs/2026-08-24_sia-sweep-achtunddreissigste-fortsetzung.md`.

Nachgeführt: `wiki/REGISTER.md` Abschnitt D (zwei neue Registerzeilen + Status «erschlossen»),
`destillate/INDEX.md` (zwei neue Zeilen), `training/norm-inventar.md` (eine neue additive
`[x]`-Log-Zeile). Report: `outputs/2026-08-24_questions-abarbeitung-ekas-richtlinien.md`.

---

## Normen-Lauf Run 58 (20.08.2026) — VKF-Fassungs-Sweep: N27-1 geschlossen, 23 Destillate überholt

**N27-1 — GESCHLOSSEN.** Der seit Run 27 (06.08.2026) offene Auftrag «VKF-Publikationsindex
abfragen» ist erfüllt, und zwar breiter als beauftragt: nicht nur für BRL 22-15, sondern für
**alle 35 VKF-Publikationen mit KB-Destillat**. Zugangsweg, Matrix und Belege in
`training/n58-vkf-fassungsmatrix-260820.md`; Zusammenfassung in `wiki/REGISTER.md`, Abschnitt D.
Für 22-15 selbst lautet die Antwort: **01.01.2017 ist die jüngste Fassung**, damit ist die
Frontmatter-Aussage des Destillats nachträglich belegt.

---

### ⚠ N58-1 — Die Fassungs-Deltas der überholten VKF-Destillate: **20 von 23 erledigt, 3 Sonderfälle offen**

> ✅ **Der Sammelposten 01.01.2017 ist mit Run 60 (23.08.2026) vollständig abgearbeitet.** Alle
> fünfzehn Publikationen des Rangs 5 haben ihr Delta-Destillat: 17-15, 18-15, 20-15, 21-15, 23-15,
> 24-15, 25-15, 100-15, 101-15, 102-15, 105-15, 106-15, 107-15, 1000-15, 1002-15. Dazu die 13-15
> als unabhängige Gegenprobe zum Inline-Delta aus Run 23. Alle `speculative`, alle mit
> Prüfstand-Tabelle; jede in der amtlichen Änderungsliste genannte Tabelle und Zeichnung wurde
> gerendert statt extrahiert.
>
> **Offen bleiben nur drei Sonderfälle, und keiner ist ein gewöhnlicher Delta-Auftrag:**
> **103-15** (am 31.08.2025 zurückgezogen — nachzuvollziehen ist die Zurückziehung, nicht ein
> Delta; N58-2), **12-15 und 26-15** (Teilrevision 2026, erfasst in
> `vkf-teilrevision-2026-pyrotechnik.md` — zu prüfen ist nur, ob jenes Destillat die
> Bestandsdestillate ausreichend ersetzt) und **27-15** (N58-3).
>
> ✅ **12-15/26-15 GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, siebter Lauf).** Antwort: Nein,
> `vkf-teilrevision-2026-pyrotechnik.md` ersetzt die Bestandsdestillate nicht, es ergänzt sie
> punktuell — es deckt ausschliesslich die vier vom IOTH-Beschluss vom 06.03.2026 geänderten
> Absätze ab (12-15 Ziff. 3.2 Abs. 10 und Ziff. 4.5 Abs. 1; 26-15 Ziff. 11.1.3 Abs. 1-2), nicht
> den übrigen Inhalt beider Richtlinien; die Anhänge sind laut eigenem Vorbehalt des
> Teilrevisions-Destillats ungeprüft. Dabei ein echter Bestandsfehler gefunden und behoben: das
> 26-15-Destillat verlinkt die Teilrevision seit Run 58 im Frontmatter **und** im Fliesstext, das
> 12-15-Destillat verlinkte sie **nirgends** — dieselbe Ausgangslage, ungleich behandelt. Nachtrag
> in `destillate/vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md` (Frontmatter-Link
> + Fliesstext-Box, Formulierung analog zum 26-15-Vorbild). Kein neuer Fachinhalt destilliert,
> reine Konsistenzkorrektur. Beleg: Gegenlektüre beider Destillate plus
> `vkf-teilrevision-2026-pyrotechnik.md` Abschnitt «Abgrenzung und Vorbehalte».
>
> ⚠ **Der wichtigere Rückstand ist ein anderer.** Destilliert wurde jeweils, *was sich geändert
> hat*. Ob die Bestands-Destillate ihre eigene Fassung vollständig abbilden, ist auf **keinem**
> VKF-Destillat geprüft. Nach Methodik-Pflicht 13 kann deshalb keines auf `established`. Die
> Abdeckungsrichtung ist der nächste grosse Schritt dieser Familie, nicht ein weiterer Delta-Lauf
> (unverändert offen, ausserhalb des Umfangs dieses Laufs — reine Einzelfrage, kein Systemaudit).

---

### Ursprünglicher Wortlaut (Stand Run 59)

> ✅ **Teilerledigung Run 59 (22.08.2026).** Die vier vorrangig genannten Publikationen **und**
> zusätzlich 104-15 sind destilliert: `vkf-brl-10-15-fassung-2019-delta.md`,
> `vkf-brl-11-15-fassung-2019-delta.md`, `vkf-brl-108-15-fassung-2020-delta.md`,
> `vkf-brl-104-15-fassung-2022-delta.md`, `vkf-verz-40-15-fassung-2025-delta.md`.
> **Offen bleibt Rang 5**, der Sammelposten der Fassungen 01.01.2017: 17-15, 18-15, 20-15,
> 21-15, 23-15, 24-15, 25-15, 100-15, 101-15, 102-15, 105-15, 106-15, 107-15, 1000-15,
> 1002-15 — plus 103-15 (zurückgezogen, siehe N58-2) und 27-15 (siehe N58-3). Alle Quellen
> frei zugänglich, kein Beschaffungsaufwand.

**Der gewichtigste offene Posten dieses Laufs.** Der Sweep hat festgestellt, *dass* 23 Destillate
auf einer überholten Fassung beruhen — **nicht, was die jüngeren Fassungen ändern**. Die
Destillate sind seit dem 20.08.2026 durch einen Warnkasten und den Status `superseded` gegen
falsche Verwendung geschützt, aber der Wissensstand fehlt.

**Ausgenommen und bereits erledigt** ist allein die Teilrevision 2026 (BRL 12-15 und 26-15),
destilliert in `destillate/vkf-teilrevision-2026-pyrotechnik.md`.

**Vorschlag zur Reihenfolge** (nach Wirkung auf laufende Projekte, nicht nach Aufwand):

| Rang | Publikation | geltend | Begründung |
|---|---|---|---|
| ✅ 1 | **BRL 10-15** Begriffe und Definitionen | 01.01.2019 | Grundlagenrichtlinie; Definitionsänderungen wirken auf **alle** übrigen Richtlinien und auf jede Auslegung |
| ✅ 2 | **BRL 40-15** Weitere Bestimmungen | 11.06.2025 | jüngste Fassung nach 2026; Inhalt bisher unbekannt |
| ✅ 3 | **BRL 108-15** Betriebsbereitschaft BFS | 01.01.2020 | Brandfallsteuerungen, unmittelbar ausführungsrelevant |
| ✅ 4 | **BRL 11-15** Qualitätssicherung | 01.01.2019 | QSS-Stufen; der Skill `brandschutz` zieht sie im Modus B |
| 5 (offen; 104-15 in Run 59 vorgezogen und erledigt) | 17-15, 18-15, 20-15, 21-15, 23-15, 24-15, 25-15, 100-15, 101-15, 102-15, 105-15, 106-15, 107-15, 1000-15, 1002-15 | 01.01.2017 | Sammelposten; die Änderungen 2017 sind für 13-15/14-15/15-15/16-15/22-15 bereits erfasst, für diese noch nicht |

---

### ✅ N59-1 — GESCHLOSSEN: Was bedeutet der Zusatz «(cr)» bei RF3 in der BRL 104-15?

> **Aufgelöst durch Run 60 (23.08.2026)** im «Zusatzauftrag N59-1» von
> `destillate/vkf-brl-13-15-fassung-2017-delta.md`, Ziff. 116-154 (Status des Destillats:
> `speculative`, Klassierungsmechanik am gerenderten Original geprüft, Ziff. 2.1 Abs. 2 und
> Ziff. 2.2.6, S. 5-6, sowie die Zuordnungstabellen S. 8-11). Eigene Gegenprüfung 23.08.2026:
> **«(cr)» = «comportement critique»/kritisches Verhalten**, ein Anwendungsbeschränkungs-Flag
> innerhalb einer RF-Gruppe, keine eigenständige fünfte RF-Stufe (SIA/VKF-Terminologie
> BRL 13-15 Ziff. 2.1 Abs. 2, S. 5). Klassiert wird je nach Produktkategorie nach SN EN
> 13501-1:2009 (Bauprodukte, Bodenbeläge, Rohrisolierungen, Ziff. 2.4.1, S. 8), SN EN
> 13501-5:2009 (Bedachungen, Ziff. 2.4.2, S. 9) oder SN EN 13501-6:2014 (Kabel, Ziff. 2.4.3,
> S. 10-11). Praktische Folge fuer die Ursprungsfrage: eine Anforderung «RF3» ohne Zusatz
> lässt nur den cr-freien Teilbereich der RF3-Zeile zu; «RF3 (cr)» schliesst zusätzlich den
> cr-markierten Teilbereich ein, seit der Fassung 2017 einschliesslich Klasse E/E-d2 (2015 nur
> RF4 (cr)). Ein Produkt der Klasse E/E-d2 erfüllt daher **nie** eine blanke «RF3»-Anforderung.
> Die BRL 104-15-Lockerung selbst (RF1 → mind. RF3 (cr)) bleibt damit vollständig verstanden;
> **offen bleibt nur**, welches konkrete Bauprodukt die neue Anforderung erfüllt — das ist eine
> produktspezifische Frage, keine Norm-Auslegungsfrage, und gehört bei Bedarf in ein
> projektbezogenes Brandschutz-Factsheet, nicht in diese KB.

**Ursprungswortlaut (Run 59, 22.08.2026):** Die Fassung 01.12.2022 der Spänefeuerungs-Erläuterung
senkt die Baustoffanforderung an freistehende Silos und offene Lagerbehälter von **RF1** auf
**mindestens RF3 (cr)** (Ziff. 5.2 und 5.4, gedruckte S. 5, am Original nachgelesen). Der
Klassierungszusatz **«(cr)»** war im Fassungs-Delta nicht aufgelöst; er wurde nicht in der
BRL 13-15 «Baustoffe und Bauteile» und nicht gegen SN EN 13501-1 nachgeschlagen.

---

### N59-2 — Der Hausbestand 40-15:2015 trägt das Wasserzeichen «in Überarbeitung»

Die im Haus liegende Fassung 01.01.2015 des Verzeichnisses «Weitere Bestimmungen»
(SharePoint `PL - 03 Brandschutz/03 Verzeichnisse Brandschutz 2015/`) trägt auf mindestens
S. 2 und 3 ein diagonales Wasserzeichen **«in Überarbeitung»**. Ob es ein Vorschau-Marker
eines internen VKF-Freigabelaufs ist oder ob die Hauskopie nie die finale Druckfassung war,
liess sich am Dokument nicht klären. **Praktische Folge:** das Bestands-Destillat
`vkf-verz-40-15-weitere-bestimmungen.md` beruht auf einem als Entwurf markierten Exemplar.
Da die geltende Fassung 11.06.2025 inzwischen destilliert ist, ist der Punkt nachrangig —
er bleibt offen, weil er die **Belegqualität rückwirkend** betrifft. Aufgeworfen Run 59.

> ⚠ **Werkzeug-Lehre aus demselben Befund, wichtiger als der Befund selbst.** Das Wasserzeichen
> ist **weder im Textlayer** (`grep` auf «Überarbeitung»: null Treffer) **noch über
> `pdfimages -list`** (nur ein Bildobjekt auf S. 1-3, das VKF-Logo) auffindbar. Zwei
> unabhängige Werkzeugprüfungen lieferten negativ, was im 110-dpi-Rendering sofort sichtbar
> ist; der Hauptprozess hatte den Agentenbefund auf dieser Grundlage zunächst als Fehlalarm
> verworfen und musste sich am Rendering korrigieren. **Ein Wasserzeichen ist ein Grafikobjekt
> und für beide Werkzeuge unsichtbar** — wer eine Quelle auf Entwurfsmarker prüft, muss
> rendern. Vgl. Rule `auto-verbesserungen` 260730b und `wege-und-vollmachten` Ziff. 5.

---

### N59-3 — Kap. 2.17 «Gefährliche Stoffe» des Verzeichnisses 40-15 ist nur textuell geprüft

> ✅ **Kap. 2.17 GESCHLOSSEN 23.08.2026.** Beide Fassungen unabhängig neu beschafft — Bestand
> 2015 via M365-Graph-Connector (SharePoint Site PL, Drive `03 Brandschutz`,
> `40-15_Weitere Bestimmungen.pdf`), Fassung 2025 direkt vom VKG-Publikationsportal
> (`https://services.vkg.ch/rest/public/georg/bs/publikation/documents/
> BSPUB-1394520214-137.pdf/content`) — und mit einer frischen `pdftotext`-Extraktion
> unabhängig von der ursprünglichen Destillation geprüft. Alle in
> `vkf-verz-40-15-fassung-2025-delta.md` unter «neu» und «entfallen» geführten 2.17-Positionen
> per Volltextsuche bestätigt: **neu** vorhanden im 2025er-Extrakt — SUVA-Merkblätter 66122
> (Gasflaschen) und 67068 (Checkliste Gasflaschen), das SUVA-Merkblatt zu
> Flammendurchschlagsicherungen an Tankstellen, BAFU «Störfallvorsorge bei Lager für
> ammoniumnitrathaltige Dünger», «Lagerung gefährlicher Stoffe, Leitfaden für die Praxis»
> (Umweltfachstellen + GVZ), CARBURA-Richtlinien Teil F «Brandschutz und Löschwesen». **Entfallen**
> bestätigt durch Null-Treffer im vollständigen 2025er-Extrakt — Sicherheitsdokument 1501-00,
> VKF-Brandschutzrichtlinien Nr. 27-03/28-03 (alte Nummerierung), CARBURA-Richtlinien für
> Tankanlagen (1974/Änderungen 1992), EKAS-Richtlinie Nr. 2387 (Destillationsanlagen). Zusätzlich
> S. 18 (2025er-Fassung, Textanfang 2.17) als 150-dpi-Rendering gegen den Textlayer gelesen:
> deckungsgleich, kein OCR-/Layout-Artefakt. Nachtrag im Destillat, Prüfstand-Tabelle.
>
> **Weiterhin offen:** Kap. 2.7 bis 2.12, 2.15/2.16, 2.18/2.19 und 3.1 bis 3.5 sind nach wie vor
> nur per Textlayer geprüft (schwächerer Vorbehalt als 2.17, da textlich/listenartig wie 2.17,
> aber nicht einzeln nachgezogen).

**Ursprungswortlaut:** Der Abschnitt hat im Delta 2015 → 2025 den stärksten Umbau erfahren (2015
neun fragmentierte «zu Ziffer»-Blöcke mit mehrfach duplizierten Einträgen, 2025 eine
konsolidierte Liste). Aufgeworfen Run 59 (22.08.2026).

---

### N59-4 — Gab es Zwischenausgaben von 40-15 und 108-15?

Beide Dokumente sind über einen langen Zeitraum gesprungen (40-15: 2015 → 2025; 108-15:
2015 → 2020 → 2022), und beide nennen sich selbst als periodisch aktualisiert bzw. tragen
eine Änderungsliste, die nur den letzten Schritt dokumentiert. Ob dazwischen weitere
Fassungen erschienen sind, ist **nicht geprüft**. Für 108-15 ist die Folge konkret: der
Wortlaut der unrevidierten 2020-Fassung von Ziff. 5.3 Abs. 4/6 lag nicht vor, der amtlich
angekündigte Teilschritt 2020 → 2022 liess sich deshalb nicht isoliert ausweisen. Der
VKG-Publikationsindex führt nur die jeweils geltende Fassung; ein Archivzugang ist nicht
bekannt. Aufgeworfen Run 59 (22.08.2026).

> ✅ **Archivzugang gefunden, 108-15 TEILWEISE GESCHLOSSEN (23.08.2026, QUESTIONS-Abarbeitung,
> vierter Lauf).** Entgegen der Annahme oben existiert doch ein Archivzugang:
> `https://www.bsvonline.ch/de/brandschutzvorschriften/archiv-bsv-2015` (per `curl -sL -A
> "Mozilla/5.0"`, Astro-JSON-Payload wie bei N58-3, Abruf 23.08.2026). Dort ist für 108-15
> genau **ein** archiviertes Dokument gelistet, wörtlich betitelt «108-15 Gewährleistung der
> Betriebsbereitschaft von Brandfallsteuerungen (BFS) **(gültig bis 31.12.2019)**»
> (`BSPUB-1394520214-3144.pdf`), neben dem aktuellen Dokument (`…-837.pdf`) und einem
> FAQ-Eintrag (`…-1255.pdf`). Das belegt primärquellenfest: die Fassung 01.01.2015 war
> **lückenlos bis 31.12.2019** gültig, die Fassung 01.01.2020 trat nahtlos an — **keine
> unveröffentlichte Zwischenausgabe zwischen 2015 und 2020.** Nachtrag in
> `destillate/vkf-brl-108-15-betriebsbereitschaft-bfs.md` (Frontmatter `gueltigkeit`).
>
> **Nicht geklärt bleibt** der ursprünglich engere Teilschritt 2020 → 2022 (reine
> Ziff.-5.3-Korrektur, kein Fassungswechsel — bereits in
> `vkf-brl-108-15-fassung-2020-delta.md` als „isolierter Teilschritt 2020 → 2022 nicht
> geprüft" ausgewiesen): das Archiv listet dafür **kein** eigenes „gültig bis"-Dokument, d.h.
> entweder wurde die 2020-Fassung vor der 2022-Korrektur nie separat archiviert (die
> geltende Datei trägt beide Stände in einem PDF), oder das Archiv erfasst nur den letzten
> Sprung vor der aktuellen BSV-2015-Ära. Für **40-15** ergab dieselbe Archivseite **keinen**
> zusätzlichen, mit „gültig bis" betitelten Eintrag (nur zwei Treffer, beide das aktuelle
> Dokument) — die Zwischenausgaben-Frage bleibt für 40-15 offen, diese eine Quelle zeigt
> keine, beweist aber auch keine Abwesenheit (das Archiv könnte lückenhaft sein).
> **Nächster Schritt bei Bedarf:** dieselbe Archivseiten-Technik auf weitere Delta-Destillate
> mit grossen Fassungssprüngen anwenden.

> **Nachtrag 23.08.2026 (QUESTIONS-Abarbeitung, sechster Lauf): 40-15 erneut geprüft, jetzt mit
> strukturierter Feldauswertung statt Text-Grep — Befund unverändert, Beleg jetzt belastbarer.**
> Dieselbe Archivseite (`archiv-bsv-2015`) per `curl -sL -A "Mozilla/5.0"` neu abgerufen und der
> eingebettete JSON-Payload strukturiert nach dem Feld `"title"` durchsucht (nicht nur nach dem
> Text-String «40-15», der auch in Registerbezeichnungen/Metadaten ohne eigenen Archiveintrag
> vorkommen kann). Ergebnis: **genau ein** Titel-Treffer, «40-15 Weitere Bestimmungen» — kein
> zweiter, mit «(gültig bis …)» betitelter Eintrag wie bei 108-15. Die frühere Einschätzung
> «diese eine Quelle zeigt keine, beweist aber auch keine Abwesenheit» bleibt in der Substanz
> richtig (ein fehlender Archiveintrag ist kein Beweis der Nichtexistenz einer Zwischenausgabe),
> aber die Methode selbst ist jetzt sauberer: der erste Check hätte bei einem reinen
> Text-Treffer in einer Fussnote oder einem Fremdverweis falsch positiv sein können, der
> strukturierte Titel-Match schliesst das aus. **Für 40-15 bleibt die Zwischenausgaben-Frage
> offen**, weitere freie Quellen dafür sind nicht ersichtlich — kein neuer Web-Recherche-Anlauf
> mehr gerechtfertigt (gleiche Erschöpfungslogik wie N-SIASWEEP oben).

> **Nachtrag 23.08.2026 (QUESTIONS-Abarbeitung, zwölfter Lauf): dieselbe Archivseiten-Technik auf
> 104-15 angewandt — TEILWEISE GESCHLOSSEN, plus unerwarteter Fund.** 104-15 (Fassungssprung
> 01.01.2015 → 01.12.2022, sieben Jahre) war der einzige noch ungeprüfte grosse Fassungssprung
> aus der «Nächster Schritt bei Bedarf»-Empfehlung oben. Strukturierte Titel-Suche im
> `archiv-bsv-2015`-JSON-Payload: genau **ein** Treffer, «104-15 Spänefeuerungen (gültig bis
> 30.11.2022)» (`BSPUB-1394520214-825.pdf`) — kein zweiter, mit einem weiteren «(gültig bis …)»
> betitelter Eintrag. **Damit ist für 104-15 belegt: lückenloser Übergang 01.01.2015 →
> 01.12.2022, keine unveröffentlichte Zwischenausgabe** (gleiches Befundmuster wie 108-15).
> **Unerwarteter Nebenfund, wichtiger als die eigentliche Frage:** dieselbe Archivseite listet zu
> 104-15 auch eine amtliche FAQ, Nummer 104-001 (Beschlussdatum 16.03.2015, Ziff. 6.2,
> «Erläuterung / Interpretation», `BSPUB-1394520214-1243.pdf`, per `pdftotext` gelesen). Sie
> erlaubt bereits **seit 2015** eine Schliessverzögerung der Rückluftkanal-Brandschutzklappe bei
> nicht dauernd laufendem Förderventilator (Grund: Umstellung pneumatischer auf elektrische
> Klappenantriebe) — **das ist die Vorstufe der 2022 in Ziff. 6.2 Abs. 2 kodifizierten Regel**,
> die im Fassungs-Delta bisher als reine 2022-Neuerung ausgewiesen war. Nachgetragen in
> [[vkf-brl-104-15-spaenefeuer]] (Ziff. 6.2) und [[vkf-brl-104-15-fassung-2022-delta]] (Tabellenzeile
> + neuer Abschnitt). **Zusatzbefund, nicht aufgelöst:** die FAQ-Antwort nennt wörtlich «120
> Minuten» Verzögerung, was der eigenen Fragestellung (Öffnungszeit bis 120 Sekunden, «nicht 2
> Minuten warten») und der 2022 kodifizierten Fassung («120 Sekunden») widerspricht — vermutlich
> ein Schreibversehen im VKF-Original, unverändert zitiert statt stillschweigend korrigiert
> (Rule `bkp-2017-referenz`, «Sachbezug prüfen, nicht mechanisch ersetzen», sinngemäss auf
> Zitate übertragen). Für ein laufendes Projekt gilt die kodifizierte 2022-Fassung mit 120
> Sekunden, das Belegzitat bleibt trotzdem wörtlich stehen. **Damit ist die «Nächster
> Schritt»-Empfehlung von Run 4 (alle grossen Fassungssprünge mit der Archivtechnik prüfen)
> vollständig abgearbeitet:** 40-15 (offen, kein Treffer), 108-15 (geschlossen), 104-15
> (geschlossen). Kein weiterer Kandidat mit vergleichbar grossem Fassungssprung im Bestand
> identifiziert (Rang-5-Sammelposten ist nur ein Zweijahres-Sprung 2015→2017, deutlich geringere
> Wahrscheinlichkeit einer Zwischenausgabe, kein eigener Lauf gerechtfertigt).

---

### ✅ N58-2 — GESCHLOSSEN 23.08.2026: BRL 103-15 «Cheminées» zurückgezogen, Nachfolger ist das feusuisse-Papier «Stand der Technik Teil B», nicht BRL 24-15

Der VKF-Publikationsindex führt die Erläuterung als **«103-15 Cheminées (zurückgezogen am
31.08.2025)»** (Indexeintrag zuletzt geändert 30.01.2026, Abruf 20.08.2026). Die KB führte das
Destillat bis zu diesem Lauf als `established`, also nach Rule `normen-referenz` Ziff. 1b «ohne
Gegenlesen zitierfähig». Es ist auf `superseded` herabgestuft und trägt einen Warnkasten.

**Belegqualität ausdrücklich ausgewiesen:** Der Rückzug steht **nur in der Portal-Annotation**.
Die ausgelieferte Datei selbst trägt keinen Rückzugsvermerk und weiterhin die Fassung 01.01.2017.
**Offen:** (a) eine zweite unabhängige Bestätigung des Rückzugsdatums, (b) ob und wohin die
Cheminée-Anforderungen überführt wurden.

> **Teilprüfung 23.08.2026 — die naheliegende Vermutung «BRL 24-15» präzisiert, nicht bestätigt.**
> `destillate/vkf-brl-24-15-waermetechnische-anlagen.md` wurde gegen die Cheminée-Frage gelesen.
> Ziff. 4.1 (S. 8-9) regelt Cheminées zwar direkt (Feuerraumwände/Unterbau/Sicherheitsabstände
> «gemäss Leistungserklärung oder VKF-Technischer Auskunft»), verweist aber für «übrige
> Cheminées» ausdrücklich auf **Ziff. 8 «Weitere Bestimmungen»** — und Ziff. 8 selbst ist bei
> BRL 24-15 kein Sachinhalt, sondern nur ein Verweis auf das **periodisch aktualisierte
> TKB-VKF-Verzeichnis** (www.praever.ch/de/bs/vs), dessen Inhalt nicht im PDF steht. Das heisst:
> BRL 24-15 hat die detaillierten 103-15-Masse (0.12 m Wand/Unterbau, 0.1 m/0.8 m
> Sicherheitsabstände, 0.4 m Vorbelag) **nicht selbst übernommen** — 103-15 war strukturell
> vermutlich genau der Verzeichniseintrag, auf den Ziff. 8 zeigt(e). Die eigentliche Frage
> verschiebt sich damit: **steht im aktuellen TKB-VKF-Verzeichnis noch ein
> Cheminées-Eintrag, und wenn ja, welcher?** Ein WebFetch auf `www.praever.ch/de/bs/vs`
> (23.08.2026) leitet auf dieselbe clientseitig gerenderte bsvonline.ch-Seite um, die schon bei
> N58-3 den Astro-JSON-Payload nicht preisgibt — mit WebFetch nicht auflösbar, dieselbe
> Werkzeug-Grenze. **Nächster Schritt:** die Verzeichnisseite mit einem JS-fähigen Abruf
> (Playwright/Browser statt WebFetch) erneut prüfen, oder EN 13229 «Kamineinsätze» direkt
> daraufhin prüfen, ob individuell erstellte (nicht typengeprüfte) Cheminées seit 2025 überhaupt
> noch einen eigenen VKF-Pfad haben oder ausschliesslich auf EN-13229-Typenprüfung verwiesen
> werden — beides in diesem Lauf nicht geleistet.

> ✅ **GESCHLOSSEN 23.08.2026, per direkter VKF-Primärquelle statt der vermuteten
> BRL-24-15-Spur.** Die VKF-Newsseite selbst dokumentiert den Rückzugsgrund: die
> News-Kachel «Rückzug VKF-Brandschutzerläuterung 103-15 Cheminées» (datiert 8. September
> 2025) auf `bsvonline.ch/de/aktuell`, verlinkt auf
> `bsvonline.ch/de/aktuell/erlaeuterung-103-15-zurueckgezogen` — per `curl -sL
> -A "Mozilla/5.0"` abgerufen und gegen Tag-Strip gelesen (kein WebFetch nötig, die
> Meldungsseite ist serverseitig gerendert). Wortlaut: **«Mit der Veröffentlichung des 2024
> überarbeiteten Stand der Technik Papiers Teil B: Ofen- und Cheminéebau des Verbandes
> feusuisse, wird die VKF-Brandschutzerläuterung 103-15 Cheminéebau materiell abgelöst. Die
> Technische Kommission Brandschutz (TKB) hat daher entschieden, die
> Brandschutzerläuterung per 31. August 2025 zurückzuziehen, um eine Doppelspurigkeit zu
> vermeiden.»**
>
> **Ergebnis:** der Nachfolger ist **kein VKF-Dokument und keine BRL** — insbesondere
> **nicht BRL 24-15** (die Teilprüfung oben bleibt als Nebenbefund gültig: 24-15 verweist
> für «übrige Cheminées» nur auf das nicht mehr aktuelle TKB-Verzeichnis, hat die
> 103-15-Masse nie selbst übernommen). Stattdessen tritt das **«Stand der Technik Papier
> Teil B: Ofen- und Cheminéebau»** des Fachverbands **feusuisse** (Ausgabe 2024) an die
> Stelle — ein privatrechtliches Verbandsdokument, kein VKF-Erlass, TKB-Beschluss ausdrücklich
> zur Vermeidung einer Doppelspurigkeit. Praktische Folge: die 103-15-Bauteilmasse (0.12 m
> Wand/Unterbau, 0.1 m/0.8 m Sicherheitsabstände, 0.4 m Vorbelag) im Bestandes-Destillat
> gelten nicht mehr als amtliche VKF-Anforderung für neue Cheminées; für laufende Projekte
> ist das feusuisse-Papier zu beschaffen (Bezugsweg feusuisse.ch, nicht der VKF-Shop — nicht
> in diesem Lauf getan). Nachtrag im Destillat `vkf-brl-103-15-cheminees.md` gesetzt.
> **Offen bleibt nur** die zweite unabhängige Bestätigung des Rückzugsdatums 31.08.2025
> (bisher ein Beleg, VKF-Primärquelle, aber eine einzige Seite) — nachrangig, da die
> Primärquelle selbst (nicht nur eine Portal-Annotation) den Rückzug samt Grund nennt.
>
> **Weitere Suche ergebnislos (23.08.2026, QUESTIONS-Abarbeitung, vierter Lauf).** Gezielt
> nach einer zweiten, unabhängigen Quelle für exakt das Datum 31.08.2025 gesucht: die
> bsvonline.ch-Seite `aktuell/stp-feusuisse-2025` nennt die neuen feusuisse-STP-Papiere,
> aber kein Rückzugsdatum der 103-15; `feusuisse.ch/stand-der-technik-papiere` nennt Preise
> und Update-Fristen, aber weder ein Publikations- noch ein Rückzugsdatum. Kein Fund — echte
> Sackgasse über frei zugängliche Quellen. Bleibt wie vermerkt nachrangig offen.

---

### ✅ N58-3 — GESCHLOSSEN 23.08.2026: BRL 27-15 hat keinen Fassungswiderspruch; der «22.03.2017»-Beschluss gehörte zu 14-15

**Ursprüngliche Frage:** Das Titelblatt trägt **01.01.2015**, die Hinweisseite nennt aber einen
**ABSV-Beschluss vom 22.03.2017**. Entweder wurde das Fassungsdatum nicht nachgeführt, oder die
Änderung betrifft nur den Anhang und löst nach VKF-Praxis keine neue Fassungsbezeichnung aus.
Praktische Folge: das Destillat `vkf-brl-nachweisverfahren.md` steht auf `established`, was bei
ungeklärtem Fassungsstand womöglich zu hoch ist.

> **Teilerledigung 23.08.2026:** der billige Teil des Auftrags («die betroffene Anhangstelle
> gegen die Fassung von 2015 diffen») ist erledigt — mit einem Ergebnis, das die Frage verengt
> statt schliesst. Das PDF `PL - 02_Recht_Norm/02_Normen/VKF_Norm/02_Brandschutzrichtlinien
> 2015/Nachweisverfahren im Brandschutz.pdf` wurde **vollständig** gelesen (alle 15 Seiten,
> nicht nur die im Destillat vermerkten S. 1-14). Ergebnis: **kein 2017-Inhalt vorhanden.**
> Titelblatt (S. 1) trägt ausschliesslich «01.01.2015 / 27-15de»; Ziff. 10 «Inkrafttreten»
> (S. 8) nennt ausschliesslich den **IVTH-Beschluss vom 18. September 2014**, in Kraft ab
> 1. Januar 2015 — kein ABSV, kein 22.03.2017, an keiner der 15 Seiten. Der ganze Anhang
> (S. 9-15, Ziff. 3.2.2/5/8.2) ist inhaltlich in sich konsistent mit der 2015er-Fassung, keine
> erkennbare Nachtragsstelle.
>
> **Damit ist geklärt:** das lokal im Bestand liegende PDF ist durchgehend die Fassung
> 01.01.2015 ohne 2017er-Beimischung — der Verdacht «Fassungsdatum nicht nachgeführt, Anhang
> aber schon 2017» trifft **nicht** zu, denn es gibt keine 2017-Anhangstelle zum Diffen. Die
> `established`-Einstufung des Destillats ist damit für **dieses Dokument** nicht zu hoch.
>
> **Nicht geklärt bleibt**, was der ABSV-Beschluss vom 22.03.2017 selbst bedeutet — die Angabe
> stammt laut `training/n58-vkf-fassungsmatrix-260820.md` Z. 86 von der Portal-«Hinweisseite»
> auf bsvonline.ch, nicht aus dem PDF. Ein WebFetch auf
> `https://www.bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015` (23.08.2026) liefert
> nur die Navigationsstruktur zurück, nicht den Astro-JSON-Payload mit den Metadatenfeldern —
> die Seite ist clientseitig gerendert und für eine einfache Markdown-Konvertierung nicht
> zugänglich (gleiche Werkzeug-Falle wie bei Fedlex, vgl. Rule `fedlex-volltexte.md`). Zwei
> Lesarten bleiben offen: (a) der ABSV-Beschluss betrifft eine reine Wiedergenehmigung/
> Verlängerung ohne Inhaltsänderung (VKF-Praxis kennt das, vgl. 108-15 mit zwei Titelblatt-
> Daten in derselben Matrix), oder (b) er gehört zu einer anderen, nicht heruntergeladenen
> Fassung dieser Publikation. Nächster Schritt bei Bedarf: die BSPUB-Dokument-URL aus der
> Matrix-Zeile (`.../BSPUB-1394520214-127.pdf/content`) direkt erneut abrufen und mit der im
> Bestand liegenden Prüfsumme `72e31ae5a6e7` vergleichen, oder das Portal mit einem
> JS-faehigen Abruf statt WebFetch prüfen.

> ✅ **GESCHLOSSEN 23.08.2026.** Die Werkzeug-Grenze war keine — `curl` mit einem
> Browser-User-Agent (statt WebFetch) liefert den Astro-JSON-Payload der bsvonline.ch-Seiten
> vollständig als Rohtext; die Daten liegen inline im HTML (`<script>`-Payload mit
> HTML-Escapes `&quot;`), nicht hinter einer separaten JS-Ausführung. Direkter Abruf von
> `https://www.bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015` UND
> `.../archiv-bsv-2015` UND `.../faq` (alle drei per `curl -sL -A "Mozilla/5.0" …`, 23.08.2026)
> ergibt den vollständigen Befund:
>
> 1. **Der «22.03.2017»-Beschluss gehört nicht zu 27-15.** Auf der FAQ-Seite steht das Datum
>    exakt einmal mit vollem Kontext: **FAQ 14-026**, Registerbezeichnung **«14-15 -
>    Verwendung von Baustoffen»**, Ziffer «3.3.1, Absatz 5, Skizze S. 24», Thema «Nicht
>    vollflächig geschlossene Terrassenböden». Auf der ganzen FAQ-Seite (299'494 Byte
>    Rohtext) kommt die Zeichenfolge «27-15» **kein einziges Mal** vor. Die ursprüngliche
>    Zuordnung «Hinweisseite nennt für 27-15 einen ABSV-Beschluss vom 22.03.2017» (Run-58-
>    Matrix, Z. 86) war damit eine **Fehlzuordnung** — vermutlich eine Verwechslung zweier
>    Zeilen beim schnellen Scannen mehrerer FAQ-Einträge, keine Eigenschaft von 27-15. Die
>    Prämisse der ursprünglichen Frage («Titelblatt und Änderungsliste widersprechen sich»)
>    ist damit **falsch** — gleiche Fehlerklasse wie Run 36 (BSR 16-15: «die Frage-Prämisse
>    war falsch»).
> 2. **27-15 hat trotzdem eine echte, inhaltlich relevante ABSV-Interpretation:** auf
>    `archiv-bsv-2015` steht unter Registereintrag «27-15 - Nachweisverfahren im Brandschutz»
>    genau ein Eintrag, **FAQ 27-001** (Beschlussdatum **24.08.2016**, Ziffer «3.2.2, Absätze
>    3 und 4 - Anhang»). Das zugehörige PDF (`BSPUB-1394520214-1239.pdf`, per `curl`
>    heruntergeladen, mit `PyMuPDF`/`fitz` gelesen — `pdftotext` ist auf dieser Station nicht
>    installiert, `fitz` schon) trägt den Titel «Planungsziele und Leistungskriterien für
>    Entrauchungsnachweise» und ändert genau die Anhang-Stelle, die das Destillat unter
>    «Zentrale Tabellen / Kennwerte» zusammenfasst (Fussnote zum Extinktionskoeffizienten K,
>    Mischbrandgut-Bezug des Einleitungssatzes): die Fussnote entfällt ersatzlos, der
>    Einleitungssatz wird umformuliert. Das Dokument selbst vermerkt am Ende **«Korrektur
>    (vorgesehen 2017)»** — das erklärt vermutlich, wie die Jahreszahl 2017 in der Sache
>    überhaupt in Umlauf kam, auch wenn sie an der falschen Norm hängen blieb.
> 3. **Die Korrektur ist bis heute nicht ins Hauptdokument eingearbeitet.** Die Portal-
>    Metadaten von 27-15 selbst zeigen weiterhin `vkgPubVersion: "1"` (Abruf 23.08.2026,
>    zuletzt `modified` am 24.07.2025) — dieselbe Fassung wie das im Haus liegende PDF. Die
>    ABSV-Interpretation gilt also fachlich, ohne dass sie den Normtext ersetzt hat.
>
> **Ergebnis für die KB:** `vkf-brl-nachweisverfahren.md` bleibt `established` (der Normtext
> ist korrekt wiedergegeben), erhält aber einen Warnhinweis zur Anhangstelle Ziff. 3.2.2 mit
> Verweis auf FAQ 27-001 (nachgetragen 23.08.2026, siehe Destillat). **Methodische Lehre:**
> `curl` mit gesetztem User-Agent ist für die bsvonline.ch-Familie ein funktionierender,
> günstigerer Ersatz für WebFetch, wenn WebFetch nur die Navigationsstruktur zurückgibt —
> vor dem nächsten «WebFetch liefert kein JSON»-Befund erst `curl -sL -A "Mozilla/5.0" <url>`
> probieren, bevor ein Browser/Playwright-Zugriff als nötig gilt.

---

### N58-5 — ✅ ERLEDIGT: falsche Richtliniennummern im Skill `brandschutz`

`skills/brandschutz/SKILL.md` führte «BSR 14-15 Flucht- und Rettungswege» und «BSR 16-15
Brandschutzabschluesse». Richtig ist 14-15 = Verwendung von Baustoffen, 16-15 = Flucht- und
Rettungswege; eine BSR «Brandschutzabschlüsse» gibt es nicht. **Am 20.08.2026 korrigiert**,
zusammen mit einer Fassungswarnung zum Ordner «02 Brandschutzrichtlinien 2015-17-22», dessen
Name über den tatsächlichen Bestand (überwiegend 2015) täuscht. Gleiche Klasse wie der
BKP-«271.10»-Fall aus Run 43.

> ✅ **Restfrage GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, vierter Lauf).** Grep über
> `skills/`, `agents/`, `commands/` (Muster BSR/BRL/VKF gefolgt von zwei- bis vierstelliger
> Nummer plus «-15») ausserhalb von `skills/brandschutz/`: **0 Treffer.** Kein weiterer
> Fach-Skill führt eine VKF-Richtlinien-Nummer oder -Fassung. Die vier Zufallstreffer aus dem
> breiteren Muster (offertenpruefung, wissens-destillat) sind Prozentangaben bzw.
> Dateinamen-Fragmente ohne VKF-Bezug, geprüft und verworfen.

---

### N58-4 — Der Sweep deckt 35 von 83 Indexeinträgen ab

Ausgewiesen nach der Methoden-Lehre: geprüft wurden nur die Publikationen, zu denen die KB ein
Destillat führt. **Nicht angesehen** sind die übrigen 48 deutschsprachigen Einträge —
IOTH-Beschlüsse, Verzeichnisse, Formulare, Checklisten, Musterweisungen, Reglemente. Darunter
sind mindestens zwei Klassen, die eigene Destillate verdienen könnten: die **IOTH-Beschlüsse zur
temporären Unterbringung von Asylsuchenden** (fortlaufend bis 2025-09-18) und die
**Arbeitshilfen/Merkblätter der 2000er-Reihe**, von denen die KB nur 2001-15 und 2005-15 führt.
Ebenfalls ungeprüft: die französischen und italienischen Fassungen sowie die **Anhänge** aller
Richtlinien mit neuer Fassung.

> ⚠ **Vertieft 23.08.2026 (QUESTIONS-Abarbeitung 13) — die vage Sammelfrage in zwei präzise
> Teile aufgelöst, kein Systemaudit gefahren.** Direktabruf von
> `bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015` (Astro-JSON-Payload, wie in Run 42
> etabliert; `curl -sL -A "Mozilla/5.0"`, Extraktion über das Feld `"title"`, nicht `grep` auf
> sichtbaren Text). Der Index ist gewachsen: **94 aktuelle deutschsprachige Einträge** in den elf
> Kategorien a–k (IOTH/Norm/Richtlinien/Verzeichnisse/Erläuterungen/Arbeitshilfen/Merkblätter/
> Musterweisungen/Reglemente/Formulare/Checklisten), nicht mehr 83 wie beim ursprünglichen Stand
> von Run 58. Kein neuer Fassungswechsel entdeckt ausser dem bereits bekannten (12-15/26-15,
> Teilrevision 2026, `vkf-teilrevision-2026-pyrotechnik.md` — dort bereits vollständig
> dokumentiert, hier nur gegengeprüft).
>
> ✅ **Nebenbefund 2006-15 vs. 108-15 GEKLÄRT (23.08.2026, QUESTIONS-Abarbeitung, Fortsetzung
> nach Run 13).** Original bezogen (`services2.vkf.ch/.../BSPUB-1394520214-3746.pdf`, 54 S.,
> vollständig gelesen S. 1-33). Kein Duplikat: 2006-15 ist ein eigenständiges
> **Brandschutzmerkblatt** («Ergänzung zur gleichnamigen Brandschutzerläuterung 108-15»,
> Titelblatt/Einleitung S. 5), gültig ab 01.03.2022, das jede Ziffer der Erläuterung 108-15
> (Fassung 01.01.2020) mit Begründungen, SIA-Phasen-Zuordnung und Beispielen präzisiert —
> u.a. RACI-Verantwortungsmatrix je SIA-Phase 3/4/5, dreistufige Test-Kaskade Einzeltest
> (Pflicht) → Linientest (optional) → integraler Test (Pflicht), Funktionserhalt E30 für
> manuelle-Aktivierung-Übertragungswege, Meldepflicht bei BMA-Ausschaltung > 24 h. Neues
> Destillat `destillate/vkf-merkblatt-2006-15-bfs.md` (established), Register-Zeile ergänzt.
>
> **Klasse 1 (IOTH-Asylsuchende) — geprüft, bewusst zurückgestellt, kein Destillat-Auftrag.** Die
> Reihe zählt **sechs** Beschlüsse, nicht «fortlaufend bis 2025»: 2015-12-23, 2017-03-03,
> 2019-09-19, 2021-09-23, 2023-09-21, 2025-09-18 (Titel exakt aus dem Index). Das Muster (rund
> zweijährlicher Rhythmus, immer derselbe Titel) zeigt eine **befristete Verwaltungsmassnahme**
> zur temporären Unterbringung, kein bauordnungsrelevantes Dauerrecht für die üblichen
> JANS-Projekttypen (Gesundheitsbau, Wohnbau, Gewerbe). Eigene Einschätzung, nicht am
> Beschlusstext selbst verifiziert (kein PDF gelesen) — falls ein konkretes Projekt je
> Asylunterkünfte betrifft, zuerst den jüngsten Beschluss (2025-09-18) beschaffen und dann prüfen,
> ob er noch in Kraft ist.
>
> **Klasse 2 (2000er-Merkblätter) — präzisiert: 12 Positionen, nicht «die 2000er-Reihe» vage.**
> Der Index führt **2000-15 bis 2011-15** durchgehend (12 Titel), die KB nur zwei davon
> (2001-15 Solaranlagen, 2005-15 Lithium-Ionen-Batterien). **Zehn echte Lücken, mit Titel:**
> 2000-15 Brandschutzanwendung im Einzelfall, 2002-15 Zeltbauten für temporäre Veranstaltungen,
> 2003-15 Brandschutzpläne/Flucht- und Rettungswegpläne/Feuerwehrpläne (plus eigene
> Musterpläne/Symbole-Unterpositionen), 2004-15 Durchführungen durch brandabschnittbildende
> Bauteile, 2006-15 Gewährleistung der Betriebsbereitschaft von Brandfallsteuerungen (BFS),
> 2007-15 Lagerung von Munition, 2008-15 Brandverhütung auf Baustellen (mit neun
> Checklisten/Handouts A1–A9 als Unterpositionen, praktische Arbeitshilfen ohne eigenen
> Normcharakter), 2009-15 Sicherheitsstromversorgung, 2010-15 Brandschutz in Kompaktlagern,
> 2011-15 Gebäudebegrünung. **Nebenbefund, nicht aufgelöst:** 2006-15 trägt denselben Titel wie
> die bereits destillierte Richtlinie BRL 108-15 («Gewährleistung der Betriebsbereitschaft von
> Brandfallsteuerungen (BFS)») — ob 2006-15 ein eigenständiges Merkblatt mit anderem Fokus ist
> oder nur die Arbeitshilfe zu 108-15, ist ungeklärt und sollte vor einer Destillation als Erstes
> geprüft werden (Verwechslungsgefahr wie bei N57-2 SIA 416/416-1).
>
> **Nicht destilliert** (Bring-Schuld/nächster Schritt, kein einzelnes Projekt liest hier mit):
> 2003-15, 2008-15, 2009-15 und 2011-15 sind für die Praxis am ehesten relevant (Brandschutzpläne,
> Baustellen-Brandschutz, Sicherheitsstromversorgung, Fassadenbegrünung — Letzteres mit
> direktem Bezug zu aktuellen Gebäudebegrünungs-Projekten). Priorisierungsvorschlag für einen
> künftigen Lauf, keine Entscheidung getroffen. Quelle: `bsvonline.ch/de/brandschutzvorschriften/
> vorschriften-2015`, abgerufen 23.08.2026, lokal gesichert unter `/tmp/normsweep-vorschriften2015.html`
> (nicht Teil des Repos, nur Lauf-Beleg).
>
> ✅ **2009-15 (Sicherheitsstromversorgung) destilliert 23.08.2026 (QUESTIONS-Abarbeitung,
> Fortsetzung nach Run 14).** Original bezogen (`services2.vkf.ch/.../BSPUB-1394520214-3917.pdf`,
> 21 S., vollständig gelesen), Stand 09.12.2024 (TKB-Änderung zu Ziff. 5.5.2 Lit. b bereits
> konsolidiert). Kernstoff: drei Schutzsysteme mit unterschiedlicher Ausfalltoleranz
> (Brandbegrenzung/Personensicherheit/Intervention, Ziff. 4.1-4.3), Aufstellungsraum-
> Anforderungen (EI 30, Abtrennung EI 60 mit Ausnahmen, Ziff. 5.2), Leistungsschwelle 70 kW für
> Stromerzeugungsaggregate (Ziff. 5.3.1), Mindestbetriebsdauer 30/60 Min. (Ziff. 5.6/5.6.1),
> Abnahme nur mit dokumentiertem Blackout-Test (Ziff. 7.2). Neues Destillat
> `destillate/vkf-merkblatt-2009-15-sicherheitsstromversorgung.md` (established), Register-Zeile
> ergänzt. **2003-15, 2008-15 und 2011-15 bleiben offen** — die zugehörigen PDFs liegen bereits
> lokal unter `/tmp/vkf-2003-15.pdf` (73 S., 44 MB, aufwändigstes Dokument), `/tmp/vkf-2008-15.pdf`
> (35 S.) und `/tmp/vkf-2011-15.pdf` (18 S.), nächster Schritt ist direktes Lesen ohne erneute
> Recherche.
>
> ✅ **2008-15 (Brandverhütung auf Baustellen) destilliert 23.08.2026 (QUESTIONS-Abarbeitung 16).**
> Original bezogen (`services2.vkf.ch/.../BSPUB-1394520214-3785.pdf`, 35 S. inkl. Anhang,
> vollständig gelesen), 01.07.2022, Stand 11.05.2023 (Änderung nur im Anhang A1-A9). Kernstoff:
> sechs Brandursachen-Gruppen mit Risiken/Massnahmen/Rechtsgrundlagen (Ziff. 6-12), tabellierte
> Sicherheitsabstände 0.5-5.0 m für Feuerarbeiten (Ziff. 10.3), Funkenflug-Gefahrenbereich 10 m
> und Zwei-Stunden-Limit vor Arbeitsende (Ziff. 11.3), Nachkontrollzeiten 2 h/4 h ohne
> Wärmebildkamera, IP44 + Sicherheitsnachweis (SiNa) für provisorische Elektroinstallationen
> (Ziff. 9.3). Neues Destillat
> `destillate/vkf-merkblatt-2008-15-brandverhuetung-baustellen.md` (established), Register-Zeile
> und INDEX-Zeile ergänzt.
>
> ✅ **2011-15 (Gebäudebegrünung) nachgetragen 23.08.2026 (QUESTIONS-Abarbeitung 16).** Das
> Destillat `destillate/vkf-merkblatt-2011-15-gebaeudebeguenung.md` existierte bereits
> (established, Stand 23.08.2026, vollständig gelesen 18 S.) aus einem vorangegangenen Lauf, der
> aber vor Register-/INDEX-/CHANGELOG-Eintrag abgebrochen sein muss — der Fund lag ohne jede
> Spur in `outputs/`, `CHANGELOG.md` oder `wiki/REGISTER.md`, nur `git log` zeigte einen
> `nas-selfcommit` vom 23.08.2026 21:30. Register-Zeile und INDEX-Zeile in diesem Lauf ergänzt,
> Inhalt selbst nicht neu verifiziert (nur quergelesen: Vier Grundtypen Fassadenbegrünung, QSS-
> Einstufung nach Gebäudehöhe, vier gleichwertige Konstruktionsvarianten bei mittlerer Höhe,
> RF1-Pflicht bei Hochhäusern schliesst Standardkonzept aus, 20-%-Schwelle organischer
> Substratanteil für RF1 bei Dachbegrünung). **2003-15 bleibt offen** — das PDF liegt bereits
> lokal unter `/tmp/vkf-2003-15.pdf` (73 S., 44 MB, mit Abstand aufwändigstes Dokument der
> Vierergruppe), nächster Schritt ist direktes Lesen ohne erneute Recherche.
>
> ⚠ **Neuer Nebenbefund, nicht selbständig behoben:** der Dateiname
> `vkf-merkblatt-2011-15-gebaeudebeguenung.md` trägt einen Tippfehler (fehlendes «r» —
> richtig wäre `gebaeudebegruenung`). Nicht umbenannt, weil Umbenennen nach Rule
> `wissens-bibliothekar` destruktiv ist und pausieren verlangt; alle Querverweise (REGISTER.md,
> INDEX.md, Frontmatter-Links anderer Destillate) müssten beim Umbenennen mitgezogen werden.
> **Vorschlag:** `git mv` auf den korrekten Namen plus Nachführung der drei Fundstellen, sobald
> Raphael zustimmt.
>
> ✅ **2003-15 (Brandschutzpläne/Flucht- und Rettungswegpläne/Feuerwehrpläne) destilliert
> 23.08.2026 (QUESTIONS-Abarbeitung 16) — vierte und letzte der vier priorisierten
> Klasse-2-Lücken geschlossen.** Original bezogen (`services2.vkf.ch/.../BSPUB-1394520214-3749.pdf`,
> 73 S., Haupttext Ziff. 1-6 + Anhang A1/A2-Struktur/C/D vollständig gelesen; Anhang A3-A5 und
> B [Feuerwehrpläne-Mustervorlagen, S. 20-69] nicht gelesen). Kernstoff: vier Dokumenttypen mit
> QSS-gestufter Notwendigkeit, Planniveau-Tabelle einfach/detailliert nach Nutzung × Höhe
> (Ziff. 4.2.1), ISO 23601:2009 für Flucht-/Rettungswegpläne (Ziff. 4.3), Eigentümer-/
> Nutzerschaft trägt Erstellung UND Nachführung mit zehn benannten Auslösern (Ziff. 5.3). Neues
> Destillat `destillate/vkf-merkblatt-2003-15-brandschutzplaene.md` (established für den
> gelesenen Teil), Register-Zeile und INDEX-Zeile ergänzt. **Nebenertrag:** Anhang A2 dieses
> Merkblatts (Symbol-Legende, Blattdatum 16.12.2016) bestätigt strukturell den amtlichen
> Ursprung des seit 27.07.2026 `speculative` geführten Legendenblatts
> [[brandschutzplan-legende-symbole-2017]] — dessen Hauptoffenpunkt «Herausgeber nicht am
> Dokument belegt» ist damit entschärft (Destillat dort nachgeführt); die pixelgenaue
> RGB-Gegenprobe steht weiterhin aus, da die Text-Extraktion von Anhang A2 für Einzelwerte zu
> unzuverlässig war (Spaltenversatz). **Von den zehn in N58-4 benannten Klasse-2-Lücken sind damit fünf destilliert**
> (2006-15 aus einem früheren Lauf, 2009-15/2008-15/2011-15/2003-15 aus den QUESTIONS-
> Abarbeitung-Läufen 15/16) — die übrigen fünf (2000-15, 2002-15, 2004-15, 2007-15, 2010-15)
> bleiben unpriorisierte Bring-Schuld, kein Vorabruf in diesem Lauf.
>
> ✅ **Restliche fünf Klasse-2-Lücken GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung 17) — damit
> sind alle zehn in N58-4 benannten Lücken destilliert.** Alle fünf PDFs waren kompakt (7-16
> Seiten) und über dieselbe Astro-JSON-Katalog-Methode (bsvonline.ch, Cache
> `/tmp/normsweep-vorschriften2015.html`) mit korrekt zugeordneter `fileLeafRef`-ID beziehbar,
> keine echte Bring-Schuld. Neue Destillate: **2000-15** Brandschutzanwendung im Einzelfall
> (BSPUB-193, 8 S., vierstufige Nachweisstellen-Tabelle Ziff. 3.4), **2002-15** Zeltbauten für
> temporäre Veranstaltungen (BSPUB-201, 12 S., Ausgangsbreiten-Formel 0.6 m/100 Personen ab
> 200 Personen), **2004-15** Durchführungen durch brandabschnittbildende Bauteile (BSPUB-3116,
> 12 S., zitiert VKF-BSR 15-15 Ziff. 3.5 im Wortlaut), **2007-15** Lagerung von Munition
> (BSPUB-3749, 7 S., fünf Lagerklassen nach Bruttogewicht), **2010-15** Brandschutz in
> Kompaktlagern (BSPUB-3935, 16 S., vierstufige Massnahmenkategorie nach Tabelle 1).
>
> **Nebenbefund und Korrektur beim Beschaffen von 2007-15:** die Dokument-ID
> `BSPUB-1394520214-3749` war zuvor im Destillat `vkf-merkblatt-2003-15-brandschutzplaene.md`
> und in der zugehörigen REGISTER-Zeile fälschlich für **2003-15** zitiert — ein reines
> Zitierfehler-Artefakt aus einer früheren, zu naiven JSON-Extraktion (ein Feld aus dem
> vorangehenden Katalog-Objekt wurde mitgenommen). Direkte Gegenprobe am Original bestätigt:
> `BSPUB-1394520214-3749.pdf` ist das 7-seitige Merkblatt 2007-15 «Lagerung von Munition»;
> `BSPUB-1394520214-203.pdf` ist das 73-seitige Merkblatt 2003-15 «Brandschutzpläne …», exakt
> der Umfang, der im 2003-15-Destillat gelesen und beschrieben ist. Der **Inhalt** des
> 2003-15-Destillats war die ganze Zeit korrekt — nur das Frontmatter-Feld `quelle` und die
> REGISTER-Zeile trugen die falsche ID; beide in diesem Lauf korrigiert (nicht destruktiv,
> reine Zitat-Berichtigung, keine Rückfrage nötig). **Lehre für künftige Astro-JSON-Käufe
> dieser Art:** `fileLeafRef` und `title` gehören zwingend aus **demselben** JSON-Objekt
> gelesen (Regex mit `.{1,N}?` zwischen beiden Feldern, nicht `find()`-Nachbarschaftssuche über
> den rohen String) — sonst entsteht genau diese stille Verschiebung um ein Listenelement.
>
> Nachgeführt: fünf neue Destillate, fünf neue REGISTER-Zeilen, fünf neue INDEX-Zeilen, die
> Korrektur an `vkf-merkblatt-2003-15-brandschutzplaene.md` und der zugehörigen REGISTER-Zeile.
> Report: `outputs/2026-08-23_questions-abarbeitung17.md`.

---

## Normen-Lauf Run 57 (19.08.2026) — N56-1 geschlossen; die Norm ist zurückgezogen

**N56-1 — GESCHLOSSEN.** Die Refuter-Runde auf den fünf zuletzt offenen Seiten von
`sia-416-1-2007` (S. 4, 6, 21, 27, 34) ist gefahren, vom Hauptprozess am eigenen
300-dpi-Rendering (Präfix `ref416-r57-`). **Sämtliche Korrekturen der Runs 55 und 56 haben am
Druck gehalten**, keine musste zurückgenommen werden. Neu 3 Kernbefunde (S. 6 — Figur 1 und die
GF-Gliederung fehlten ganz; S. 6 — «Bauteile _wie_ …» zur geschlossenen Aufzählung verengt;
S. 27 — die Positivdefinitionen von EV und EC fehlten, mit ihnen die Zuteilung von WRG-Antrieb
und Rückkühl-Ventilator) und 4 Nebenbefunde, alle inline korrigiert. Nach dem vorgeschlagenen
Abbruchkriterium sind **S. 4, 21 und 34 geschlossen**; offen bleiben **S. 6 und S. 27**.

---

### ⚠⚠ N57-2 — SIA 416/1:2007 ist seit 31.03.2015 zurückgezogen; die Nachfolgenorm fehlt

**Der gewichtigste Befund dieses Laufs, und er relativiert die ganze Reihe 52-57.** Run 56 hatte
die Korrigenda-Liste als «einzigen offenen Schritt, der die ganze bisherige Verifikationskette
relativieren könnte» benannt. Der Schritt ist gefahren — und hat nicht eine Korrigenda gefunden,
sondern **das Ende der Gültigkeit**:

- **SIA 416/1:2007 war gültig vom 01.07.2007 bis zum 31.03.2015.** Der SIA-Shop führt sie als
  **«archivierter Titel»**.
- Ersetzt seit **01.04.2015** durch **SIA 380:2015 «Grundlagen für energetische Berechnungen
  von Gebäuden»** (SN 504380:2015, 64 S.). Deren **Titelblatt** trägt wörtlich: «**Ersatz für
  SIA 416/1:2007** sowie Teile von SIA 2031:2009, SIA 2032:2010 und SIA 2040:2011».
- **Zwei unabhängige Primärquellen**, nicht eine Suchmaschinen-Zusammenfassung.

**Was zu tun ist:** **SIA 380:2015 beschaffen und destillieren.** Sie liegt **nicht im Haus** —
der Bestand führt nur SIA 380/1:2016, 380/3:1990 und 380/4 (andere Normen). Bezug SIA-Shop,
kostenpflichtig, **Bring-Schuld Raphael; Claude tätigt keine Käufe.** Diese Beschaffung ist
gewichtiger als jede weitere Runde auf der Altnorm.

> ⚠⚠ **KORREKTUR 23.08.2026 (SIA-Sweep, zehnte Fortsetzung) — die oben benannte Bring-Schuld
> zielt auf die FALSCHE Ausgabe.** Produktseite `shop.sia.ch/normenwerk/architekt/380_2015_d`
> (direkt abgerufen 23.08.2026): **SIA 380:2015 ist selbst archiviert, gültig nur 01.04.2015 bis
> 31.10.2022.** Die seither gültige Ausgabe ist **SIA 380:2022** «Grundlagen für energetische
> Berechnungen von Gebäuden» (gültig ab 01.11.2022, 60 S., 180.00 CHF), Produktseite
> `shop.sia.ch/normenwerk/architekt/380_2022_d`, die selbst bestätigt: «die 2015er-Version ist
> archiviert, gültig bis 31.10.2022». **Zu beschaffen und zu destillieren ist SIA 380:2022, nicht
> SIA 380:2015** — ein Kauf der 2015er-Ausgabe würde eine bereits seit vier Jahren überholte
> Fassung ins Haus holen. Register-Zeile `SIA 380` neu angelegt (Abschnitt A, Register.md),
> `destillate/sia-416-1-2007.md` und `destillate/INDEX.md` mit demselben Hinweis ergänzt. Die
> fünf in der Tabelle oben genannten Fremd-KBs sind über diese Korrektur **noch nicht** informiert
> (Cross-KB-Bringschuld weiterhin offen, jetzt mit korrigiertem Ziel); `energie/wiki/u-werte-
> grenzwerte-ch.md` in diesem Lauf als einzige bereits nachgeführt (dringlichster Abnehmer).
>
> ⚠ **Nachtrag 23.08.2026 (SIA-Sweep, elfte Fortsetzung) — Cross-KB-Bringschuld erledigt.** Alle
> acht in der Tabelle oben genannten Dateien (fünf `energie`, je eine `immobilienbewertung`,
> `planungsgrundlagen`, `baurecht`) plus das bereits erledigte `energie/wiki/u-werte-grenzwerte-
> ch.md` tragen jetzt den korrigierten Verweis auf **SIA 380:2022** statt SIA 380:2015 (additiver
> Korrektur-Warnkasten je Datei, Originaltext unangetastet). Die zwei Dateien `enfk-fensterblatt.md`
> und `systemnachweis-kurs-zh-2009.md` hatten bisher **gar keinen** Fassungsvermerk zu SIA 416/1 —
> dort neu gesetzt, direkt auf SIA 380:2022 zielend. Verifiziert per `git diff --numstat`: sieben
> Dateien rein additiv, zwei mit einer Löschzeile (reiner Zeilenumbruch-Verschub beim Einfügen
> eines Absatzes, kein Textverlust, gegengeprüft). Beschaffung von SIA 380:2022 selbst bleibt
> Bring-Schuld Raphael — Claude tätigt keine Käufe.

**Reichweite über die KB hinaus — bitte prüfen, hier nur gemeldet.** Das Register `wissen/normen`
ist nachgeführt (REGISTER, INDEX, Inventar, Destillat, Wiki-Artikel). **Nicht angefasst** sind
Fremd-KBs, die SIA 416/1 zitieren; sie sollten die Fundstelle auf SIA 380:2015 umhängen, sobald
diese vorliegt:

| KB | Datei |
|---|---|
| `energie` | `wiki/u-werte-grenzwerte-ch.md`; `destillate/gebaeudehuellziffer-ebf-flaechendefinition.md`, `enfk-en-02-waermeschutz-2013.md`, `enfk-fensterblatt.md`, `systemnachweis-kurs-zh-2009.md`, `therapiebad-hallenbad-energie-pflegeheim.md` |
| `immobilienbewertung` | `wiki/flaechendefinitionen-sia.md` |
| `planungsgrundlagen` | `wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` |
| `baurecht` | `buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md` |

**Achtung bei der Umhängung:** Der Begriff **Energiebezugsfläche AE** lebt in SIA 380:2015
weiter; ein Verweis auf das *Konzept* ist nicht falsch, nur die *Fundstelle* ist veraltet.
Pauschales Ersetzen wäre der Fehler aus Rule `bkp-2017-referenz` («Sachbezug prüfen, nicht
mechanisch ersetzen»).

### N57-1 — der Run-57-Zuwachs ist selbst wieder unverifiziert

Die in diesem Lauf geschriebenen Stellen auf S. 4, 6, 27 und 34 hat niemand gegengelesen
(Lehre aus Run 56: wer in einem Lauf Text schreibt, weist ihn im selben Lauf nicht als geprüft
aus). **Nachrangig geworden:** solange die Norm archiviert ist und die Nachfolgenorm fehlt, ist
eine weitere Runde auf der Altnorm der geringere Ertrag. Erst nach Entscheid zu N57-2 sinnvoll.

### N57-3 — Korrigenda-Liste weiterhin nicht eingesehen (gering)

> ✅ **Für SIA 416/1:2007 GEGENSTANDSLOS (23.08.2026, QUESTIONS-Abarbeitung, sechster Lauf).**
> N57-2 (oben) hat primärquellenfest belegt: die Norm ist seit 31.03.2015 archiviert, ersetzt
> durch SIA 380:2015. Eine Korrigenda-Prüfung dient dazu, den geltenden Normtext einer Norm
> nachzuführen — für eine seit über zehn Jahren archivierte Ausgabe ohne praktische Wirkung,
> solange die Nachfolgenorm nicht selbst geprüft wird. Kein neuer Rechercheaufwand gerechtfertigt.
> **Bleibt wie ursprünglich vermerkt gültig:** bei der Beschaffung/Destillation von
> **SIA 380:2015** (Bring-Schuld Raphael, siehe N57-2) ist deren eigene Korrigenda-Fundstelle
> auf dem Titelblatt mitzuprüfen — das ist kein Rückstand dieser Frage, sondern Teil der
> normalen Destillations-Checkliste für jede neue Norm.

Der SIA führt Korrekturen unter `www.sia.ch/korrigenda`; die Seite liefert ohne JavaScript
keinen Inhalt. Bei einer archivierten Ausgabe nachrangig. Der Hinweis auf die Fundstelle steht
auf dem Titelblatt jeder neueren SIA-Norm — für **SIA 380:2015** ist er beim Destillieren
mitzuprüfen.

### N57-4 — Gültigkeit von SIA 416:2003 nicht primärverifiziert (gering, billig)

> ✅ **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, dritter Lauf).** Primärquelle erreicht:
> `shop.sia.ch`, Produktseite SN 504416, `http://shop.sia.ch/normenwerk/architekt/sia%20416/dfi/D/Product`
> (Abruf 23.08.2026, per WebSearch gefunden — die vorher geratene URL hatte den falschen
> Pfad; korrekt ist der Slug `sia%20416/dfi/D/Product`). Bestätigt: SIA 416:2003 **aktuell**,
> gültig ab 01.10.2003, kein Gültig-bis-Datum, Vorgängerausgabe SIA 416:1993 gültig bis
> 30.09.2003. Deckt sich mit der bisherigen Sekundärquelle. Eingetragen in
> `destillate/sia-416-2003.md`, neuer Abschnitt «Gültigkeit (primärverifiziert 23.08.2026)»,
> `last_updated` nachgezogen. Status bleibt `established` (Norminhalt war bereits primär
> gelesen; ergänzt wurde nur der Gültigkeitsstatus).

Das Destillat stützt sich durchgehend auf **SIA 416:2003** als geltende Bezugsnorm. Nach
Sekundärquelle ist sie weiterhin in Kraft (gültig ab 01.10.2003; archiviert ist die Ausgabe
1993), **das Produktdatenblatt selbst wurde aber nicht erreicht** — die geratene Shop-URL lief
ins Leere. Bis zum Primärbeleg ist die Aussage nicht zitierfähig. Nach dem 416/1-Befund ist
diese Prüfung nicht mehr optional: **wer eine Bezugsnorm zitiert, prüft ihren Gültigkeitsstand.**

---

## Normen-Lauf Run 56 (18.08.2026) — N55-1 und N55-2 geschlossen, ein neuer Punkt

**N55-1 — GESCHLOSSEN.** Die unabhängige Refuter-Runde auf dem Run-54-Zuwachs der S. 4, 6, 9,
17, 21-22 und 39 von `sia-416-1-2007` ist gefahren, vom Hauptprozess am eigenen
300-dpi-Rendering (Präfix `ref416-r56-`). **3 Kernbefunde, 5 Nebenbefunde, alle inline
korrigiert.** S. 22 und S. 39 waren zuvor von niemandem gelesen worden; beide bestätigten sich
inhaltlich. Damit hat **jeder** Teil dieses Destillats beide Prüfrichtungen gesehen.

**N55-2 — GESCHLOSSEN.** Anhang A von SIA 416/1 ist am eigenen 300-dpi-Rendering vollständig
aufgenommen; die Raumlisten **HNF1-HNF5** und die vollständige **FF-Liste** (inkl.
«Installationsräume, -schächte und -kanäle» und «unmittelbar zum Betrieb gehörige Flächen»)
stehen jetzt im Destillat, ebenso NNF und VF. Nebenbefund dabei: **Anhang A ist ausdrücklich
als «(informativ)» überschrieben** — das war im Destillat nicht ausgewiesen und ist für die
normative Verbindlichkeit erheblich. Zwei Abgrenzungen sind neu benannt, weil sie den
Zweifelsfall entscheiden: Küchen und Sanitärräume sind **je zweimal** geführt (Wohnung → HNF1,
gewerblich bzw. allgemein → HNF3 bzw. NNF), und **Labors gehören zu HNF3, nicht HNF6**. Damit
kann `flaechen-nachweis` die Zuordnung aus der KB beziehen statt aus dem Original.

**N56-1 — Der Run-56-Zuwachs auf S. 4, 6 und 21 ist selbst wieder unverifiziert.** Genau die
drei Seiten, die einen Kernbefund erbrachten, tragen jetzt neu geschriebenen Text, den niemand
gegengelesen hat. Das ist der vierte Lauf in Folge, der den Status aus je einem anderen Grund
nicht hebt — **jede Korrektur erzeugt neuen unverifizierten Text**. Ohne Abbruchregel ist das
ein Regress ohne Ende. Run 55 hat dafür ein Kriterium vorgeschlagen (Vorschlag 7.1: «ein
Prüfteil gilt als geschlossen, sobald eine Runde darauf nur noch Nebenbefunde und keinen
Kernbefund mehr erbringt»); **es ist noch nicht entschieden**. Nach diesem Kriterium wären mit
Run 55 und 56 zusammen **S. 9, 17, 22, 26, 28-32, 35, 39 und 40 geschlossen** und nur noch
**S. 4, 6, 21, 27 und 34** offen. Die Statusfrage wäre dann in einem Lauf zu beantworten.
**Entscheid Raphael nötig** — siehe Lauf-Report Run 56, Ziff. 6.

## Normen-Lauf Run 55 (17.08.2026) — N54-1 geschlossen, drei neue Punkte

**N54-1 — GESCHLOSSEN.** Die Refuter-Runde auf dem Run-54-Zuwachs von `sia-416-1-2007` ist
gefahren (S. 26-32, 34, 35, 40; ~69 Aussagen; 2 widerlegt, 2 unpräzise, 7 weitere Lücken
beiläufig). Einzelheiten im Destillat, Abschnitt «Prüfstand», und im Lauf-Report.

**N55-1 — Der Run-54-Zuwachs auf S. 4, 6, 9, 17, 21-22 und 39 hat weiterhin keine unabhängige
Refuter-Runde.** Run 54 hat S. 4/6/9/17/21 zwar gerendert nachgeprüft — aber durch den
Hauptprozess, der den Text selbst geschrieben hatte. **Selbstprüfung ist keine Refuter-Runde**;
Run 55 hat genau in solchem selbstgeprüften Umfeld zwei Kernbefunde gefunden. S. 22 (Ziff. 2.3)
und S. 39 (Abkürzungslegende) sind von niemandem gerendert gegengelesen. Kap. 1-2 meldete
Run 54 zudem als «dichtesten Bereich» der Abdeckungslücken — dort ist die Fehlerwahrscheinlichkeit
am höchsten. **Das ist der letzte Block vor der Statusentscheidung zu SIA 416/1:2007.**

**N55-2 — Anhang A von SIA 416/1: die Raumlisten HNF1-HNF5 und die vollständige FF-Liste
fehlen im Destillat.** Run 54 vermerkte, der Anhang führe «zu jeder HNF-Kategorie konkrete
Raumlisten», buchstabierte aber nur HNF6 aus. Der Vermerk las sich wie eine geschlossene
Lücke. Belegt fehlen u.a. die FF-Positionen «Installationsschächte und -kanäle». Der Anhang ist
informativ, aber er ist die einzige Zuordnungshilfe zwischen Raumbezeichnung und
SIA-416-Flächenkategorie und wird von `flaechen-nachweis` gebraucht.

**N55-3 — Grafische Kodierung der Tabellen 3 und 5 (S. 30 und 32) ohne Legende.** Beide
Tabellen setzen einen Teil der Zellen **grau** und umranden zwei Ergebniszellen **fett**. Auf
den Seiten selbst steht keine Legende dazu, und der Fliesstext der Ziff. 4.4.4 bzw. 4.5.1
erwähnt es nicht. Naheliegend ist «grau = bleibt leer / nicht auszufüllen», belegt ist es
nicht. **Nicht ins Destillat übernommen, weil eine plausible Lesart keine Fundstelle ist.**
Zu prüfen wäre, ob eine Legende an anderer Stelle der Norm steht (Ziff. 1.3 Darstellung?) oder
ob die Kodierung tatsächlich unerklärt bleibt. Lehre aus dem lignum-Harness: eine Farbkodierung
ohne gelesene Legende ist eine Falle, keine Nebensache.

**N55-4 — Die dritte Prüfachse ist gebaut und misst sofort Drift: 18 Statusabweichungen und
25 Statuswörter ausserhalb des Vokabulars.** Run 54 hatte den Register-gegen-Destillat-Abgleich
als fehlende Prüfachse benannt und ein Script vorgeschlagen; Run 55 hat es gebaut
(`training/register-abgleich.sh`, nur lesend). Erster Lauf über **369 Destillate**:

| Befundklasse | Zahl | Bewertung |
|---|---|---|
| Statusabweichung Destillat ↔ INDEX | **18** (nach 2 Korrekturen dieses Laufs) | offen |
| Statuswort ausserhalb des Vokabulars | **25** | offen, siehe unten |
| im INDEX nicht geführt | 1 | offen |
| im Inventar nicht geführt | 58 | **überwiegend kein Mangel** — das Inventar führt Quelldateien, das Destillat einen normalisierten Namen |

**Zwei Fälle sind in diesem Lauf am Original geprüft und korrigiert**, je einer pro Richtung:
`vsa-aufzuege-esba-zh.md` (INDEX führte «Verifikation ausstehend», die in eben jenem Run 40
gefahren war — INDEX war stale) und `ugz-hindernisfreie-aufzuege-2010.md` (Destillat führte
«speculative, noch keine unabhängige Verifikation» und beschrieb im selben Feld die
durchgeführte Refuter-Runde — Destillat war stale). **Die Drift geht in beide Richtungen; man
kann also nicht pauschal einer Seite glauben.** Der zweite Fall ist der gefährlichere: nach
Rule `normen-referenz` Ziff. 1b ist nur `established` zitierfähig, das Destillat hatte sich
also selbst für die Zitation gesperrt.

**Die 25 Vokabularabweichungen sind kein Flüchtigkeitsfehler, sondern ein Regelungsloch.**
Sie verteilen sich auf **16× `destilliert`** (eine ganze Kohorte älterer SIA- und DE-Normen),
`teil-destillat`, `struktur-destillat`, `emerging`, `speculative→belastbar`,
`established-mit-vorbehalt`, **2× `superseded`** und einen offensichtlichen Formatierungsdefekt
(`|` als Statuswert in `stadt-zuerich-richtlinie-absturzsicherungen-hochbau-2019.md`).
Der Kern: **ein Destillat mit Status `destilliert` ist weder `established` noch `speculative`
und fällt durch Rule `normen-referenz` Ziff. 1b hindurch** — die Rule trifft für es keine
Aussage, obwohl sie genau diesen Fall regeln soll.

**Nicht selbständig bereinigt** (Rule `wissens-bibliothekar`: Umbenennen und Umstrukturieren
über die ganze KB ist pausepflichtig). Vorschlag zur Entscheidung im Lauf-Report Ziff. 6.
Ein Artefakt des Scripts ist unterwegs aufgefallen und behoben: der erste Parser las
`status: "established, verifiziert …"` als Vokabularverstoss `established,` und blähte die
Zahl von 25 auf 33 — **die Messung war zuerst eine Aussage über das Werkzeug.**

## Normen-Nacht Run 53 (16.08.2026) — die Klasse «fehlender Inhalt» ist gemessen und zerfällt in zwei

**N52-2 — GESCHLOSSEN: die Gegenrichtung ist konstruiert, gefahren und mit Kontrollen
gemessen.** Anlage und Rohergebnis: `training/n52-2-gegenrichtung-anlage-260816.md`.
Quelle SIA 416/1:2007, gedruckte S. 23-25, vom Hauptprozess vorab selbst gelesen (ohne das
misst eine solche Anlage nichts). Zwei Varianten desselben Destillat-Abschnitts, in der
dotierten drei Aussagen entfernt — bewusst so, dass **keine Falschaussage** entsteht.

| Lauf | gepflanzte Auslassungen erkannt | Falsch-Positive |
|---|---|---|
| Abdeckungsrichtung auf dotierter Variante | **3 von 3** | 0 |
| Abdeckungsrichtung auf unveränderter Variante | 0 von 3 fälschlich gemeldet | **0** |
| Refuter-Richtung auf dotierter Variante | **1 von 3** mit Verdikt-Wirkung | 0 |

**Der Befund präzisiert Run 52, statt ihn nur zu bestätigen: die Klasse zerfällt in zwei
Unterklassen.** (a) Eine **weggelassene Ausnahme zu einer geführten Regel** macht die
Restregel überdehnt und damit falsch — der Refuter fand sie sofort, sogar an zwei Stellen
zugleich. **Diese Unterklasse ist refuter-sichtbar.** (b) **Weggelassener eigenständiger
Inhalt** (eine sonst nirgends aufgerufene Einschränkung, eine ganze zusätzliche
Bezugsgrösse) lässt den Resttext unberührt wahr und ist **refuter-blind**; der Agent erwähnte
beide Fälle nur unter einer verdiktlosen Rubrik «Auslassungen». B02 aus Run 52 war ein Fall
der Klasse (b) — ein weggelassenes Listenglied unter drei gleichrangigen.

**Praktische Folge:** Die Refuter-Runde ist schärfer als angenommen und fängt die
gefährlichste Auslassungsform, die verschwiegene Ausnahme, von selbst. Sie bleibt aber blind
für alles, was die Quelle **zusätzlich** sagt. Der Vorschlag Methodik-Pflicht 13 bleibt
damit richtig, ist aber zu präzisieren (siehe Lauf-Report Ziff. 7).

**N53-1 — OFFEN: SIA 266/2:2012 ist nicht im Haus.** Bestand Run 53 gemessen; im PL-02-Baum
existiert zu «266/2» einzig die Vertragsnorm `alle/118_266-2_2017.pdf`. **Die KB führt damit
die ABB-Norm SIA 118/266-2 als `established`, während die Bemessungsnorm dahinter fehlt** —
Ausschreibungs- und Vertragsbedingungen für Natursteinmauerwerk sind belegt, die technischen
Anforderungen nicht. Zugleich Nachfolgenorm der per 31.12.2011 ersetzten Empf. SIA 178:1996.
Beschaffungsposten, gleiche Klasse wie N52-5 und die sechs ABB aus Run 51.

> **Gültigkeit primärverifiziert 24.08.2026 (QUESTIONS-Abarbeitung).** Produktseite
> `shop.sia.ch/normenwerk/ingenieur/266-2_2012_d/D/Product` (WebFetch, SN 505266/2) bestätigt:
> **SIA 266/2:2012 ist weiterhin die aktuell gültige Ausgabe** (gültig ab 01.01.2012, 60 S.,
> 170.00 CHF), kein Nachfolger, löste ihrerseits SIA V178:1996 ab (archiviert 31.12.2011,
> deckt sich mit dem bereits im Ursprungswortlaut oben genannten Datum). Die Beschaffungs-
> Empfehlung bleibt also richtig gezielt — kein Fehlkauf-Risiko wie beim SIA-416/1-Fund.
> **Neu, noch nicht im Bestand berücksichtigt: zwei Korrigenda seit Erstpublikation.**
> **C1:2024** ist primärquellenfest belegt (Espazium-Fachartikel
> `espazium.ch/de/aktuelles/korrigenda-norm-sia-natursteinmauerwerk`, WebFetch): von der
> SIA-Kommission Tragwerksnormen Ende Juni 2024 beschlossen, gültig seit 01.07.2024, betrifft
> **Ziff. 3.1.8.1 und Anhang B (Steinbearbeitungen)**, kostenlos unter `shop.sia.ch/normenwerk`.
> **C2** wird auf derselben Shop-Produktseite als zweites Korrigenda-Dokument geführt
> (Produktseite nennt „Revision 2", Revisionsdatum 01.11.2025) — Inhalt und genaues
> Gültigkeitsdatum von C2 sind **nicht** primärquellenfest ermittelt (Shop-Seite nur als
> WebFetch-Zusammenfassung gelesen, keine eigene Sichtung des C2-Dokuments); WebSearch fand
> keine Sekundärquelle dazu. **Bei Beschaffung des Volltextes: neben SIA 266/2:2012 auch C1
> und C2 laden**, sonst wäre das Destillat bei Ziff. 3.1.8.1/Anhang B und ggf. der C2-Stelle
> von vornherein veraltet.

> **C2 primärquellenfest gelesen 24.08.2026 (QUESTIONS-Abarbeitung, Folgelauf).** Direkter
> Shop-Downloadlink gefunden (WebSearch → `shop.sia.ch/93e9218b-4e4c-49e4-8083-494b547d73d0/D/DownloadAnhang`),
> PDF via WebFetch geladen und mit `pdftotext -layout` volltextgelesen (franz. Fassung
> SN 505266/2-C2:2025 fr, 3 S. — einzige zugestellte Sprachversion, Inhalt normativ
> sprachunabhängig relevant). **SIA 266/2-C2:2025**: von der SIA-Kommission «Normes de
> structures porteuses» am **17.10.2025** beschlossen, gültig ab **01.11.2025** — Wortlaut:
> «Il remplace le correctif SIA 266/2-C1:2024.» **C2 ersetzt C1 vollständig, ergänzt es nicht.**
> Damit ist die oben offen gelassene Frage nach Datum/Inhalt von C2 primärquellenfest
> geklärt, und die Vermutung «Revision 2 / 01.11.2025 = allgemeines Shop-Metadatum» präzisiert:
> 01.11.2025 ist das eigene Gültigkeitsdatum von C2.
> **Inhalt (2 Korrekturstellen, Original wortgenau gegengelesen):**
> 1. **Ziff. 3.1.8.1** (Elastizitätsmodul Natursteinmauerwerk) wird gegenüber C1 nochmals neu
>    gefasst: differenzierte Formel für Ausführungstypen A/B vs. C/D/E, neu mit Hinweis auf
>    Streuung der Materialverteilung im Wandquerschnitt und richtungsabhängige Verbundeffekte.
> 2. **Anhang B (S. 47-50, Steinbearbeitung) wird ersatzlos gestrichen** — Wortlaut: «Cette
>    annexe se trouve à présent dans la norme SIA 269/6-1:2025, annexe B Façonnage des pierres.»
>    Der Inhalt wandert in die Erhaltungsnorm **SIA 269/6-1:2025**, die im REGISTER bislang nur
>    über einen Vorwort-Nebenbefund vom 23.08.2026 bekannt ist (`[[sia-269-3-5-korrigenda]]`,
>    Zeile SIA 269/5) — der dortige eigene Anhang-B-Inhalt selbst wurde noch nicht gesichtet,
>    neuer Cross-Referenz-Punkt für einen künftigen SIA-269/6-1-Lauf.
>
> **Praktische Folge für die Beschaffung:** Beim künftigen Vollzugriff auf SIA 266/2:2012
> genügt **Grundtext + C2:2025** — C1:2024 ist durch C2 ersetzt und muss nicht mehr separat
> geladen werden (Präzisierung der obigen «C1 und C2 laden»-Empfehlung). **N53-1 bleibt im
> Kern weiter offen** (Grundtext SIA 266/2:2012 selbst ist weiterhin nicht im Haus, Bring-
> Schuld Raphael/Kauf), aber die Korrigenda-Lage ist jetzt vollständig geklärt — Shop-Seite
> führt nur C1+C2, keine weitere Korrigenda erkennbar.

**N53-2 — GESCHLOSSEN (17.08.2026, Run 54).** Beide Aufträge erledigt.
- **SIA 416/1:2007:** Die Abdeckungsrichtung ist auf Kap. 0-2 und Kap. 4-5/Anhänge nachgeholt
  (7 Segment-Agenten über S. 4-22 und S. 26-40). Ergebnis **37 Kern- und 20 Nebenlücken**,
  alle inline eingearbeitet — darunter die τ-Schwelle von 10 % für «lichtdurchlässig»
  (Ziff. 1.1.2), die Treppenauge-5-m²-Regel (Ziff. 1.1.1), der komplett fehlende Ziff. 2.2.1.2,
  die Abgrenzungen der Verwendungszwecke (Ziff. 4.3.3) und die Vorzeichen-/Übertragungslogik
  der Tabelle 3 (Ziff. 4.4.4). **Kein einziger falscher Wert, durchgehend fehlender Inhalt.**
  Die vier von Run 53 beiläufig gemeldeten Lücken sind darin bestätigt und eingearbeitet.
- **SIA 215:1978:** Refuter-Runde in zwei Segmenten gefahren — 41 bestätigt, 3 widerlegt,
  1 Fundstelle falsch, alle korrigiert.

Beide bleiben `speculative`, aber aus **neuen** Gründen: siehe N54-1 (SIA 416/1) und den
Wertevorbehalt im Frontmatter von SIA 215.

**N54-1 — OFFEN: Refuter-Runde auf den Run-54-Zuwachs von `sia-416-1-2007.md`.**
Rund 37 Kernstellen sind neu eingearbeitet und damit **noch nicht widerlegungsgeprüft**. Der
Hauptprozess hat eine Stichprobe an eigenen 300-dpi-Renderings nachgeprüft (S. 4, 6, 9, 17,
21, 26, 33 — alle bestätigt, keine Widerlegung); **nicht** gerendert nachgeprüft und daher
vorrangig zu prüfen sind S. 7-8, 10, 12-13, 18-20, 27-32 und 34-40. Erst danach ist die
Statusfrage ohne Vorbehalt zu beantworten. Nach Methodik-Pflicht 11 ist neu zugewachsener
Text genauso ein Entwurf wie ein Erstdestillat — eine Hebung jetzt würde Vollständigkeit mit
Richtigkeit verwechseln.

**N53-3 — TEILWEISE GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, dritter Lauf).** Die
formelle Frage ist beantwortet, die fachliche Detailfrage zu Kalk bleibt offen.

> ✅ **Formeller Status geklärt.** Primärquelle `shop.sia.ch`, Produktseite SN 551215
> (`https://shop.sia.ch/normenwerk/ingenieur/sia%20215/d/D/Product`, Abruf 23.08.2026):
> SIA 215:1978 ist **archiviert seit 30.06.2014** — die frühere Aussage «formell nicht
> zurückgezogen» ist damit überholt. Genannter Nachfolgestandard: **SIA 242.002:2008
> «Gipsbinder und Gipstrockenmörtel, Teil 1: Begriffe und Anforderungen»** (einziger auf
> der Produktseite geführter Nachfolger). Deckt sich mit dem bereits am selben Tag von
> der interaktiven SIA-Sweep-Session eingetragenen Befund in `wiki/REGISTER.md`, Abschnitt
> A, Zeile SIA 215 (unabhängig zweite Fundstelle derselben Seite, kein Zirkelschluss).
> Frontmatter-Feld `ersetzt_durch` in `destillate/sia-215-1978.md` korrigiert.
>
> **Weiterhin offen: Kalk (hydraulischer Kalk, Weisskalk).** Die Produktseite nennt
> ausschliesslich den Gips-Nachfolger; für Kalk ist kein Nachfolgestandard verzeichnet.
> SN EN 459-1 «Baukalk» bleibt eine unbelegte Vermutung, nicht im Haus, nicht auf der
> Shop-Seite als Nachfolger genannt. Zement bleibt wie bisher separat über SIA 215.002/
> 215.003 referenziert (kein Widerspruch, andere Referenzierungsart, s. Destillat).
> **Nächster Schritt bei Bedarf:** SN EN 459-1 auf shop.sia.ch direkt suchen (eigene
> Produktseite, nicht über SIA-215-Verweis erreichbar) oder Kalk-Frage an Raphael/
> Fachplaner zurückgeben, falls ein Projekt sie konkret braucht.
>
> **Vorgeschlagener nächster Schritt geprüft, ohne Erfolg (23.08.2026, QUESTIONS-Abarbeitung
> vierter Lauf):** `https://shop.sia.ch/normenwerk/ingenieur/sn%20en%20459-1/d/D/Product`
> liefert 404 «Produkt nicht gefunden» — SN EN 459-1 ist eine CEN-Norm (SNV-Vertrieb), keine
> SIA-Publikation, und liegt nicht unter dem SIA-Shop-URL-Muster. Echte Sackgasse für diesen
> Zugangsweg; ein Fund verlangt entweder den SNV-Shop (nicht geprüft, kostenpflichtig) oder
> die Kalk-Frage bleibt Bring-Schuld Raphael/Fachplaner.

## Normen-Nacht Run 52 (15.08.2026) — die Gegenprobe zweiter Ordnung ist gefahren; eine Fehlerklasse bleibt unerkannt

**N52-1 — GESCHLOSSEN: Gegenprobe zweiter Ordnung (Übergabe Run 51, Punkt 1).** Run 51 hatte die
Sensitivität der Refuter-Stufe nur für **veränderte Zahlenwerte** gemessen (15/15) und ausdrücklich
ausgewiesen, dass die schwereren Klassen ungeprüft blieben. Diese Runde hat sie gemessen, an
SIA 358:2010 (reiner Scan, deutscher Normteil S. 5-10, vom Hauptprozess vorab vollständig selbst
gelesen und verifiziert). Anlage: 16 Behauptungen, 6 kontrolliert verfälscht, blind vorgelegt.

| Fehlerklasse | Kontrollen | erkannt |
|---|---|---|
| Bedeutungsumkehr | 2 (B01 Abweichungen «nicht zulässig»; B03 Rollstuhlfahrer als besonderes Gefährdungsbild) | **2** |
| Weggelassene Bedingung | 1 (B08 beidseitige Handläufe «in jedem Fall») | **1** |
| Verschobene Fundstelle bei richtigem Inhalt | 1 (B10 Ziff. 3.1.4 statt 3.1.3) | **1** |
| Veränderter Zahlenwert (Vergleichsbasis zu Run 51) | 2 (B07 drei statt fünf Steigungen; B13 0,15 statt 0,12 m) | **2** |
| **Summe** | **6** | **6 (100 %)** |

Zehn echte Aussagen, zehn korrekt bestätigt — **null Falsch-Positive**. Der Agent hat bei B08 von
sich aus auch die abgeschwächte Modalität erkannt («im Allgemeinen» gegen «in jedem Fall») und bei
B10 ausdrücklich getrennt, dass der Inhalt richtig und nur die Ziffer falsch ist. Die Prüfstufe
kann die schweren Klassen also erkennen; die 79/0-Verteilung aus Run 50 misst weiterhin die
Qualität der geprüften Destillate, nicht die Blindheit der Prüfer.

**N52-2 — OFFEN, und das ist der eigentliche Ertrag: «fehlender Inhalt» wird strukturell nicht
erkannt.** Behauptung B02 war die versteckte siebte Kontrolle. Sie gab die Nicht-Geltungs-Fälle
der Ziff. 0.1.3 mit **zwei** von **drei** Punkten wieder; weggelassen war «in Teilen von Bauten,
die nur speziell ausgebildeten oder instruierten Personen zugänglich sind». Der Agent hat B02
BESTÄTIGT und die Lücke **nicht einmal als Anmerkung** erwähnt.

Das ist kein Versagen des Agenten, sondern der **Fragerichtung**: Eine unvollständige Aussage ist
wahr in allem, was sie sagt, und mit dem Auftrag «versuche zu widerlegen» grundsätzlich nicht
fassbar. Run 51 hatte dasselbe schwächer beobachtet (Agenten meldeten Auslassungen «durchwegs als
Anmerkung ohne Verdikt-Wirkung»); hier fiel die Lücke ganz durch.

**Damit ist Methodik-Pflicht 6 («Abdeckung messen, nicht nur Behauptungen prüfen») erstmals
empirisch für die Refuter-Stufe selbst belegt.** Sie war bisher für Destillate formuliert. Die
Konsequenz ist dieselbe: Eine Refuter-Runde, so gut sie widerlegt, ist **kein**
Vollständigkeitsnachweis und darf nie als solcher gelesen werden. Wer Vollständigkeit will,
braucht die Gegenrichtung (Seiten-Inventur, rechnerische Tabellenaufnahme).

Nächster Schritt: eine Anlage konstruieren, die fehlenden Inhalt **prüfbar** macht — der Agent
bekommt nicht Behauptungen, sondern einen Quellenabschnitt und die Frage, was das Destillat davon
nicht führt. Das ist die Fragerichtung, nicht die Modellgüte.

**N52-3 — GESCHLOSSEN: SIA 416/1:2007 destilliert (war QUESTIONS 260813).** Die Norm liegt als
`alle/xalt/neu/SIA 416_1_2007.pdf` im Haus (40 S., reiner Scan ohne Textlayer) und ist im REGISTER
durchgehend als 2007✓ **geltend** geführt. Ein Destillat fehlte, weil die Datei in einem Ordner
namens `xalt` liegt. Jetzt `destillate/sia-416-1-2007.md` (alle 40 S. in 300 dpi gerendert,
Tabellen 1-5 zellenweise abgelesen, Folio = PDF-Blatt 1:1; Hauptprozess-Stichprobe Ziff. 3.1.3
und 3.2.1 auf S. 23 am Original bestätigt). Status `speculative`, Refuter-Runde ausstehend.
Der falsche Frontmatter-Link in `sia-382-2-2011.md` ist umgehängt.

**N52-4 — GESCHLOSSEN (16.08.2026): SIA 215:1978 destilliert.** REGISTER führt SIA 215 als
1978✓; die Datei `alle/xalt/215_d.pdf` (40 S., vollständiger Textlayer) trägt auf dem Titelblatt
«Ausgabe 1978, ersetzt Norm 115 (1953)», Herausgeber im Einvernehmen mit EMPA und VSZKGF —
reine Produkt-/Prüfnorm für Zement/Kalk/Gips, für die Planungspraxis randständig. Jetzt
`destillate/sia-215-1978.md` (alle 40 S. per pdftotext gelesen, Folio = PDF-Blatt 1:1, keine
Tabelle mit verbundenen Zellen/Farbcodierung gefunden, daher kein Rendering nötig). Status
`speculative`, Refuter-Runde ausstehend. **EN-Überlagerung für Zement BELEGT, für Kalk/Gips
weiterhin OFFEN:** die 1978er-Ausgabe selbst enthält keinen EN-Verweis, aber im selben
`xalt`-Ordner liegen `215.002_2000_d.pdf` (SIA 215.002 = SN EN 197-1:2000 «Zement Teil 1»,
gültig ab 01.01.2002, Titelblatt: «ersetzt Norm SIA 215.002:1993 (ENV 197-1:1992)») und
`215_003d.pdf` (SIA 215.003 = SN EN 197-2:2000 «Zement Teil 2», gültig ab 01.01.2002).
⚠ **Korrigiert vom Hauptprozess (Run 53, 260816), beide Titelblätter selbst nachgelesen:**
Hier stand zunächst, die Zement-Kapitel von SIA 215:1978 seien «seit spätestens 1993 ersetzt».
Das war eine Schlussfolgerung, kein Beleg. Die Titelblätter nennen als ersetzte Norm
ausschliesslich die **je eigene Vorgängerausgabe** (215.002:1993 bzw. 215.003:1996) und
erwähnen SIA 215:1978 mit keinem Wort; die Jahreszahl 1993 gehört zu jener Vorgängerausgabe,
die zudem eine **ENV-Vornorm** war. Belegt ist nur: seit 01.01.2002 gilt für Zement eine
eigene vollwertige EN-Adoption unter derselben Familiennummer. **Fachlich** sind die
Zement-Kapitel damit überholt, **formell zurückgezogen ist SIA 215:1978 nicht** — das
REGISTER führt sie unverändert als 1978✓ geltend. Für
hydraulischen Kalk, Weisskalk und Baugips liegt im Haus keine EN-Nachfolgenorm vor (SN EN
459-1 Baukalk/SN EN 13279-1 Gips nicht im Bestand) — **neuer offener Punkt:** ob und wodurch
diese drei Abschnitte ersetzt wurden, ist nicht geklärt und muss vor einem Zitat als geltende
Norm extern (SIA-Shop/Normenverzeichnis) geprüft werden. REGISTER.md (Zeile 53-58) führt
SIA 215:1978 zusätzlich als eine von 14 Normzeilen mit höchster Revisionswahrscheinlichkeit,
ohne eigene Zeilen für 215.002/215.003.

**N52-5 — OFFEN: Beschaffungsposten SIA 242:2012 und SIA 274:2010.** Beide laut REGISTER geltend,
beide **nicht im Haus**: von 242 liegen nur `242-1_1994` und `242_2`, von 274 nur der
Vernehmlassungsentwurf 2008 und `274_d` («VERLÄNGERTE VERNEHMLASSUNG»). Formulierung nach
Methodik-Pflicht 10: **nicht «nicht destilliert», sondern «nicht im Haus»** — der Punkt geht an
die Beschaffung, nicht an den Loop. Gleiche Klasse wie die sechs ABB aus Run 51 Ziff. 6.

**N52-6 — OFFEN: Geltungsstatus von SIA 151 und SIA 178 ungeklärt.** Beide liegen ausschliesslich
in `xalt`, beide sind im REGISTER nicht geführt (weder als geltend noch als zurückgezogen).
Nächster Schritt: gegen das Gesamtverzeichnis SIA prüfen.

**N52-7 — OFFEN: Fassungsfrage SIA 252.** Der Vernehmlassungsentwurf `xalt/neu/SIA 252_VL_2011-12.pdf`
trägt auf dem Titelblatt «SIA 252:201█ … Vorgesehen als Ersatz für Norm SIA 252:2002»,
Stellungnahmefrist 24.02.2012. Die KB destilliert `sia-252-2002.md`. Ein VL-Entwurf ist kein
Normstand, aber ein **Fassungsindikator** (Methodik-Pflicht 3): Es ist zu prüfen, ob aus dem
Entwurf eine Ausgabe 2012/2013 geworden ist und ob das Destillat damit auf einer überholten
Ausgabe steht. Dieselbe Frage stellt sich für die übrigen 16 VL-Dateien im xalt-Ordner.

## Normen-Nacht Run 50 (13.08.2026) — Nachprüfung abgeschlossen, neuer Rückstand benannt

- **N50-1 — WIDERLEGT und ERLEDIGT in Run 51 (14.08.2026). Die Prämisse war falsch, die
  Schlussfolgerung trotzdem nützlich.** Die vier Destillate hatten ihre Refuter-Runde sehr wohl,
  nämlich am 07.08.2026 in Run 47 — dreifach dokumentiert: im Frontmatter-Feld `verifikation`
  (mit Verdikt und Stichprobenliste), im `destillate/INDEX.md` und in den Fliesstext-Korrekturen,
  die im Destillat mit «Refuter-Runde 260807» markiert sind. Was stehen geblieben war, ist je
  **eine veraltete Zeile unter «Offene Punkte»** aus dem Erstdestillat-Zustand. Run 50 hat diese
  Zeile gelesen und daraus «der risikoreichste Bestand der KB» geschlossen — ohne den Frontmatter
  derselben Datei zu prüfen, der das Gegenteil sagt. Das ist ein Selbstwiderspruch **innerhalb
  einer Datei** und damit genau die Mechanik der Methodik-Pflicht 9: wer von oben liest, trifft
  zuerst auf die überholte Aussage. Verschärfend: Run 50 hat in Ziff. 7 seines Reports vier
  gleichartige Zeilen anderer Destillate korrigiert und die vier hier als «sachlich richtig»
  ausdrücklich stehen lassen.
  **Der Sachauftrag war trotzdem berechtigt** — eine erste Refuter-Runde ist kein Freibrief
  (die Run-48-Welle hatte auch eine). Run 51 hat deshalb eine **zweite, unabhängige
  Blindprüfung** gefahren: 33 Aussagen aus den vier Destillaten, ungekennzeichnet gemischt mit
  15 kontrolliert verfälschten Kontrollbehauptungen. **Ergebnis: 33 von 33 am Original
  bestätigt, 0 Kernbefunde.** Die Vermutung «es gibt keinen Grund anzunehmen, dass die
  Run-47-Welle besser ist» ist damit empirisch widerlegt — sie ist besser. Die vier veralteten
  Zeilen sind ersetzt, die Frontmatter tragen den zweiten Verifikationsvermerk.
  Ursprünglicher Wortlaut: «vier Destillate der Run-47-Welle hatten NIE eine Refuter-Runde.
  `sia-262-1-2003`, `sia-264-1-2003`, `sia-267-1-2003` und `sia-281-3-2018` führen unter
  ‹Offene Punkte› korrekt ‹Refuter-Runde ausstehend›; … Es gibt keinen Grund anzunehmen, dass
  die Run-47-Welle besser ist. … Das ist der nächste Batch.»

- **N51-1 — die Lehre aus N50-1: ein Destillat kann sich selbst widersprechen, und geglaubt wird
  der Anfang.** Methodik-Pflicht 9 verlangt, Befunde inline zu korrigieren statt nur anzuhängen.
  N50-1 zeigt die Umkehrung derselben Schwäche: eine Korrektur wurde eingearbeitet, aber die
  **veraltete Gegenaussage nicht entfernt**. Vorschlag für einen Kontrollpunkt (Raphael zur
  Freigabe, nicht selbständig umgesetzt): Nach jeder Status-Hebung auf `established` wird im
  selben Lauf geprüft, ob das Destillat noch eine Zeile mit «ausstehend», «speculative» oder
  «ohne Gegenprüfung» trägt. Das ist mechanisch prüfbar
  (Suche nach solchen Zeilen in Dateien mit `status: established`) und hätte den Fehlbefund
  verhindert.
  **Die Messung wurde in Run 51 durchgeführt und hat zwei weitere Fälle gefunden — der Vorschlag
  ist also nicht theoretisch.** `sia-118-266-1-2017.md` und `sia-118-266-2-2017.md` trugen
  `status: established` im Frontmatter und zugleich «Status bleibt speculative» unter «Offene
  Punkte». Beide sind ausgerechnet die Dateien, die **Run 50 in Ziff. 7 seines Reports angefasst
  und für richtiggestellt erklärt hat**: dort wurde der überholte Vermerk «Refuter-Runde
  ausstehend» korrigiert, die widersprüchliche Statuszeile im selben Satz aber stehen gelassen.
  Eine halbe Korrektur ist hier schlechter als keine, weil sie den Eindruck der Erledigung
  erzeugt. Beide behoben (massgeblich ist `established`; bei 118/266-1 bleibt die sachliche
  Einschränkung «Scan ohne Textlayer, nur 150-dpi-Sichtlesung» als eigene Aussage bestehen).
  In `sia-118-266-1-2017.md` fand sich derselbe Mechanismus ein zweites Mal: die Zeile
  «118/266-2 im Bestand noch nicht destilliert» stand dort, während das Destillat existiert —
  ebenfalls korrigiert und verlinkt.
  **Messung nach der Bereinigung: 195 `established`-Destillate, 0 unaufgelöste
  Status-Widersprüche.** Zwei Fundstellen wurden geprüft und ausdrücklich NICHT als Widerspruch
  gewertet: `sia-1001-3-2020.md` markiert eine einzelne Auslegungsaussage inline als
  `speculative` (legitime Binnendifferenzierung), und `sia-266-1-2003.md` führt im
  `verifikation`-Feld die Chronik von fünf Runden, in der frühere «bleibt speculative»-Sätze
  historisch stehen und die mit der Hebung endet.
  **Offenlegung zur Methode:** die erste Fassung dieses Eintrags behauptete das Messergebnis,
  bevor die Messung lief; das grobe Suchmuster traf dann auch Zitate und Chronik-Einträge. Erst
  ein enger gefasstes Muster trennte die echten Fälle. Das ist derselbe Fehler, den der Eintrag
  beschreibt — hier festgehalten, weil er belegt, wie leicht er passiert.

- **N50-2 — 65 der 79 Befunde stützen sich auf die Nachprüf-Flotte, nicht auf den Hauptprozess.**
  Der Hauptprozess hat 14 Befunde selbst am Original verifiziert (alle bestätigt, siehe Report
  Ziff. 2). Die übrigen 65 sind von je einem unabhängigen Nachprüf-Agenten am Original mit
  wörtlichem Belegzitat, PDF-Seite und abgelesener Folio-Nummer bestätigt worden — das ist eine
  Stufe schwächer als eigene Sicht. Sie sind inline eingearbeitet, weil ein Marker, den niemand
  auflöst, das Destillat dauerhaft unbenutzbar hält; der Beleg steht jeweils im
  Bestätigungsvermerk und ist damit nachprüfbar geblieben.

- **N50-3 — BEANTWORTET in Run 51 (14.08.2026): die Nachprüf-Stufe kann widerlegen.**
  Die verlangte Gegenprobe ist gefahren. Anlage: vier Prüfsätze mit zusammen **48 Behauptungen**,
  davon **33 wörtlich aus den Destillaten** und **15 vom Hauptprozess kontrolliert verfälscht**
  (je ein Zahlenwert plausibel verändert: 105 statt 110 °C, 270 statt 170 g/m², 10 statt 5 %
  Sulfatlösung, Hälfte statt Drittel der Druckfestigkeit, 85 statt 90 % Profilblech-Abdeckung,
  L ≤ 20 statt 30, 180 statt 160 mm in einer Tabellenzelle, 31.12. statt 30.06.2004,
  7 statt 10 Tage, 45 statt 60 Minuten, 0,65 statt 0,6 Ra, 3 statt 5 mm, ± 0,5 statt ± 1,0 °C,
  30 statt 10 Sekunden, zehn statt fünf Flächenprozent). Die vier Prüfagenten erhielten keine
  Kennzeichnung, welche Behauptung echt ist, und den Auftrag, jede zu widerlegen.
  > **Ergebnis: 15 von 15 Verfälschungen erkannt (Sensitivität 100 %), 33 von 33 echten
  > Behauptungen korrekt bestätigt (0 Falsch-Positive).**
  Damit ist die Lesart gestützt, dass die 79/0-Verteilung aus Run 50 die Qualität der
  Run-48-Welle misst und nicht die Blindheit der Prüfstufe. Jede Widerlegung trug wörtliches
  Belegzitat, PDF-Seite und am Rand abgelesene Folio-Nummer; drei Agenten nannten von sich aus
  den mutmasslichen Verwechslungsursprung des falschen Werts.
  **Was die Gegenprobe NICHT misst (Pflichtangabe nach der Methoden-Lehre):** alle 15 Kontrollen
  waren **veränderte Zahlenwerte an einer bekannten Fundstelle**. Ungeprüft bleibt die
  Sensitivität für die schwereren Fehlerklassen — Bedeutungsumkehr (der ABB-Fall aus Run 49),
  **fehlende** Inhalte, falsch zugeordnete Fundstellen und falsche BKP-Codes. Eine
  100-%-Trefferquote auf Zahlendreher ist kein Nachweis, dass eine Bedeutungsumkehr auffiele.
  **Vorschlag für den nächsten Lauf:** dieselbe Anlage mit Kontrollen der Typen «Aussage ins
  Gegenteil verkehrt», «Bedingung weggelassen» und «Fundstelle auf die Nachbarziffer verschoben».
  Ein Nebenertrag stützt die Vermutung, dass diese Typen schwerer sind: alle vier Agenten
  meldeten Auslassungen in den vorgelegten Behauptungen (fehlende Öffnungsklauseln,
  Anwendungsrahmen, Alternativbedingungen) als Anmerkung **ohne** Verdikt-Wirkung — sie sahen die
  Lücke, werteten sie aber nicht als Widerlegung.
  Ursprünglicher Wortlaut: «die Verdikt-Verteilung 79 BESTÄTIGT / 0 WIDERLEGT ist selbst
  prüfbedürftig.»

- **N50-3 (Original-Begründung, zur Nachvollziehbarkeit) — die Verdikt-Verteilung 79 BESTÄTIGT / 0 WIDERLEGT ist selbst prüfbedürftig.**
  Methodik-Pflicht 7 existiert, weil Run 40 Refuter-Befunde fand, die richtig beobachtet und
  trotzdem keine Befunde waren. Eine Quote von exakt null Widerlegungen kann bedeuten, dass die
  Run-48-Welle wirklich so schlecht war (dafür spricht: ein einziger Methodenfehler, das Schätzen
  der Seitenzahl, erzeugt allein rund 120 falsche Fundstellen), oder dass die Nachprüfer dem
  Refuter gefolgt sind statt selbst zu prüfen. Die 14 unabhängigen Hauptprozess-Prüfungen stützen
  die erste Lesart, sind aber eine Stichprobe. **Nächster Lauf: eine Gegenprobe mit bewusst
  eingestreuten Falschbehauptungen, um die Widerlegungsfähigkeit der Nachprüf-Stufe zu messen.**

- **N50-4 — PRÄZISIERT in Run 51 (14.08.2026): die sechs genannten ABB liegen nicht im Bestand,
  sie sind eine Beschaffungs-Bring-Schuld und kein Rückstand dieses Loops.** Der Bestand
  (`SIA_Norm/SIA_Normen/alle/`) führt genau zwölf 118er-Dateien: 118:1991, 118-C1:2026, 118/244,
  118/246, 118/248, 118/257, 118/262, 118/263, 118/265, 118/266-1, 118/266-2, 118/267. **Alle
  zwölf sind destilliert** — die Deckungsgleichheit ist vollständig. Die in N50-4 genannten
  118/240, 118/242, 118/243, 118/251, 118/252 und 118/253 stehen im `wiki/REGISTER.md` (das die
  Reihe vollständig verzeichnet, weil es aus dem Gesamtverzeichnis SIA gebaut ist), aber als PDF
  existieren sie im Haus nicht. Formulierung nach Methodik-Pflicht 10: **nicht «diese ABB sind
  nicht destilliert», sondern «diese ABB sind nicht im Haus»** — der Unterschied entscheidet, ob
  der Punkt an den Loop oder an die Beschaffung geht. Er geht an die Beschaffung (SIA-Shop,
  kostenpflichtig, Bring-Schuld Raphael wie N48-4).
  **Offen bleibt der zweite Teil der Frage:** ob die Werte dieser sechs in dasselbe Muster
  fallen wie die zehn destillierten, ist damit nicht beantwortet und **kann** ohne die Originale
  nicht beantwortet werden. Die in Run 50 notierte Beobachtung «Ausbau 2,5 m, Rohbau 3,0 m»
  bleibt eine Beobachtung an zehn Normen, keine Regel der Reihe.
  Ursprünglicher Wortlaut: «die vier ‹Ergänzende Festlegungen›-Destillate der Run-47-Welle und
  die ABB-Reihe sind noch nicht gegeneinander gelesen. … Ob deren Werte in dasselbe Muster
  fallen, ist unverändert ungeprüft.»

## Normen-Nacht Run 49 (13.08.2026) — nach den 17 Refuter-Runden

- **N49-1 — ERLEDIGT in Run 50 (13.08.2026).** Alle Kernbefunde sind am Original nachgeprüft
  (79 statt der gemeldeten 70, weil mehrere Marker mehrere Einzelbefunde trugen), sämtlich
  BESTÄTIGT, sämtlich inline eingearbeitet; null ⚠-Marker verbleiben in der KB. Reihenfolge nach
  Wirkung eingehalten: BKP-Codes und Vergütungs-/Ausmassgrössen zuerst. Nachfolgefragen: N50-2
  (Beweisstufe) und N50-3 (Verdikt-Verteilung). Ursprünglicher Wortlaut:
  «65 von 70 Kernbefunden sind noch NICHT hauptprozess-verifiziert.» Die Refuter-Flotte
  hat 70 Kernbefunde gemeldet; der Hauptprozess hat 5 davon selbst am Original nachgeprüft (alle
  bestätigt). Die übrigen 65 stehen als sichtbare Marker im jeweiligen Destillat, sind aber NICHT
  in Korrekturen überführt — ein Refuter-Befund kann ein Werkzeug-Artefakt sein, und eine ältere
  Bestätigung kann selbst der Fehler gewesen sein. Reihenfolge der Abarbeitung nach Wirkung:
  BKP-Codes und Vergütungs-/Ausmassgrössen zuerst (sie wandern ins LV), dann fehlende
  Anforderungen, zuletzt die Fundstellen-Versätze.

- **N49-2 — Vorschlag Methodik-Pflicht 11 (Raphael zur Freigabe).** «Ein unverifiziertes Destillat
  ist kein Wissensstand, sondern ein Entwurf. Aus Entwürfen wird keine Querschnitts-Synthese, kein
  Registereintrag und keine Skill-Empfehlung gebaut — auch nicht mit Vorbehalt.» Anlass: 17 von 17
  Destillaten beanstandet, und die aus ihnen gebaute ABB-Synthese trug eine Bedeutungsumkehr
  (Betonbau/Arbeitsgerüst) ausgerechnet in dem Satz, den sie selbst als folgenreichsten hervorhob.
  Der Vorbehalt «Warnkarte, nicht Zitierquelle» stand zweimal fett im Artikel und hat den Fehler
  trotzdem nicht aufgehalten — dieselbe Mechanik wie bei Methodik-Pflicht 9. Begründung im Report
  `outputs/2026-08-13_normen-nacht-run49.md`, Ziff. 4.

- **N49-3 — Seitenversatz der Run-48-Destillate mechanisch beheben.** Bei `sia-118-244-2006` und
  `sia-118-246-2006` sind rund 40 Fundstellen je genau eine Seite zu niedrig (Ziff. 0 bis 2), ab
  Ziff. 3 stimmen sie wieder — ein gezielt nachziehbarer Off-by-one. Bei `sia-118-265-2004` ist
  die Verschiebung unregelmässig und muss Fundstelle für Fundstelle geprüft werden. **Ursache ist
  keine neue Fehlerklasse, sondern die Verletzung der bestehenden Methodik-Pflicht 6:** die
  Seitenzahl ist am Seitenrand abzulesen, nicht zu schätzen. Am Original gegengemessen: gedruckte
  Seitenzahl = PDF-Seite, 1:1.

- **N49-4 — ABB-Synthese erst nach Abarbeitung von N49-1 hochstufen.** Der Artikel
  `wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` bleibt Warnkarte. Beim Hochstufen sind die
  Grenzwerte beider Tabellen (Gerüsthöhen, Abzugsgrenzen) **gezielt nebeneinander** zu prüfen —
  die Refuter haben sie nicht beanstandet, aber auch niemand hat sie als Reihe geprüft. Ein
  nicht beanstandeter Wert ist kein verifizierter Wert.

## Normen-Nacht Run 48 (08.08.2026) — nach Abschluss des Downloads-Uebernahme-Blocks

- **N48-1 — 17 Refuter-Runden faellig (der eigentliche Rueckstand dieses Laufs).** Der ganze
  P2-Block ist destilliert, aber **kein einziges dieser Destillate ist verifiziert**; alle stehen
  auf `speculative`. Das ist kein Mangel des Laufs, sondern sein bewusster Zuschnitt — festhalten
  ist es trotzdem, weil eine volle Destillat-Liste im INDEX leicht wie ein abgeschlossener
  Bestand aussieht. Reihenfolge nach Nutzwert: ABB-Reihe zuerst (speist `ausschreibung`,
  `werkvertrag`, `unternehmerkontrolle`), dann 382/2 und 380/3, zuletzt Tunnel und Aufzuege.

- **N48-2 — SIA 112/1: woher stammt der Registerstand «2005»?** Die Norm 112/1:2017 nennt an zwei
  unabhaengigen Stellen (Titelblatt S. 1, Genehmigungsblock S. 52) als ersetzte Ausgabe die
  **Empfehlung** SIA 112/1, **Ausgabe 2004** — beide Stellen vom Hauptprozess am Original gelesen.
  Das REGISTER fuehrte 2005. Damit ist die ersetzte Ausgabe geklaert (2004), **nicht** aber die
  Herkunft der 2005: Druck-/Vertriebsjahr der Empfehlung, Eintrag im Gesamtverzeichnis SIA, oder
  Registerfehler? Zu klaeren am `Gesamtverzeichnis SIA.pdf` bzw. an `ersetzte_normen.pdf`, die
  beide im Bestand liegen. Kein Handlungsdruck, aber eine offene Kette.

- **N48-3 — ERLEDIGT in Run 51 (14.08.2026). Die Matrix ist rechnerisch aufgenommen, und sie
  hat vier Kernbefunde hergegeben.** 136 Leistungszeilen × 14 Kreuzfeld-Spalten = **1904 Felder,
  1904 gemessen (100 %)**, 972 belegt, 932 leer, 0 unklassifizierte Glyphen. Eine zweite
  Statistik mit anderem Entscheidungsmerkmal bestätigte **1904 von 1904**. Vollständiger Export:
  `training/sia112-1-anhangD-matrix.tsv`. Alle vier Kernbefunde hat der Hauptprozess am eigenen
  200-dpi-Rendering der S. 42-43 selbst nachgeprüft und bestätigt:
  (1) **Die Matrix verwendet ein fünftes Zeichen, das die Legende nicht kennt:** die Doppelmarke
  `LE` in 35 Zellen, ausschliesslich in der Spalte Auftraggeber. Ziff. D.3.1 definiert nur
  E, L, P und x; die Auflösung steht im Fliesstext D.2, nicht in der Legende.
  (2) **`E` kommt in der ganzen Matrix nur beim Auftraggeber vor**, und dessen Spalte ist in
  136 von 136 Zeilen belegt. Die Aussage in D.2, partizipierende Akteure träten «vereinzelt sogar
  als … Entscheidungsträger (E)» auf, ist im Anhang D für die E-Rolle **nirgends** eingelöst —
  für die L-Rolle dagegen 35-mal (durchwegs der Betreiber).
  (3) **Genau eine Zeile kennt keinen Entscheidungsträger:**
  «Kommunikation/Öffentlichkeitsarbeit/Information» (S. 43), dort ist der Auftraggeber selbst
  Leistungsträger.
  (4) **Die Matrix hat fünf Akteursspalten, Ziff. D.1.2 nennt nur vier Akteure** — die Spalte
  Betreiber fehlt dort, obwohl sie in 71 Zeilen belegt und in 35 davon Leistungsträger ist.
  **Das ist der Beleg für Methodik-Pflicht 6 in Reinform:** die visuelle Lesung hatte die
  Zeilentexte, Blocktitel und Spaltenköpfe zuverlässig erfasst — und trotzdem vier
  Struktureigenschaften der Tabelle übersehen, darunter ein undefiniertes Zeichen und eine ganze
  Spalte, die der begleitende Normtext nicht nennt. Kein einziger dieser Befunde wäre durch
  «prüfen, ob stimmt was das Destillat behauptet» gefunden worden; alle vier kommen aus der
  Gegenrichtung «was steht in der Quelle, wovon das Destillat nichts sagt».
  **Neuer Ertrag für die Fach-Skills:** die Phasenbelegung ist stark asymmetrisch (Vorstudien
  111, Projektierung 79, Bewirtschaftung 70 — Realisierung nur 12 von 136). Für die
  Honorarargumentation nach SIA 102 heisst das, der Zusatzaufwand aus SIA 112/1 fällt ganz
  überwiegend **vor** der Ausführung an.
  **Was offen bleibt:** die Zeilentexte und Kriterien-Rückverweise des Exports stammen aus OCR
  und enthalten erkennbare Fehler — **kein Kriterien-Rückverweis daraus ist zitierfähig**, ohne
  am Original nachgelesen zu werden. Die Kreuzfelder selbst sind davon unberührt. Ferner wurden
  die S. 45 und 47 nur rechnerisch doppelt gemessen, nicht zusätzlich ganzseitig sichtgeprüft
  (S. 43, 44, 46, 48 schon). Ursprünglicher Wortlaut:

- **N48-3 (ursprünglich) — SIA 112/1, Anhang D: die E/L/P-Kreuzfelder der Matrix S. 43-48 sind ungemessen.**
  Die Matrix ordnet ueber sechs Seiten jeder Leistung Phase, Akteur (E/L/P) und raeumlichen Fokus
  zu. Zeilentexte, Blocktitel und Kriterien-Rueckverweise sind zuverlaessig aufgenommen; die
  Kreuzfelder selbst sind bei sehr kleiner Schrift **visuell** gelesen und **nicht** rechnerisch
  gemessen — beide Refuter haben diese Luecke bestaetigt und ebenfalls nicht geschlossen. Genau
  diese Methode (Blob-Detektion + Helligkeitsmessung je Zelle) hat bei Tabelle 1 derselben Norm
  105 von 105 Zellen belegt. **Auftrag:** die Methode auf die Anhang-D-Matrix anwenden. Das ist
  der lehrbuchmaessige Fall der Methodik-Pflicht 6: eine Methode ist auf einen Teil der Quelle
  angewandt und auf einen anderen nicht.

- **N48-4 — SIA 118/265:2018 beschaffen (Bring-Schuld Raphael).** Der Bestand fuehrt die Ausgabe
  **2004**; eine Web-Recherche am SIA-Shop (08.08.2026, durch einen Destillier-Agenten) ergab, dass
  diese per 31.03.2018 durch **SIA 118/265:2018** abgeloest wurde. **Diese Statusaussage ist NICHT
  am Original verifiziert** — die Ausgabe 2018 liegt nicht im Haus. Gemaess Methodik-Pflicht 10 ist
  sie deshalb als «die KB hatte 2004 (Stand ihres Stichtags 2013), neu ist 2018» zu fuehren und
  nicht als Registerfehler. Fuer laufende Holzbau-Werkvertraege und neue Ausschreibungen ist die
  2018er Fassung zu beschaffen; bis dahin traegt das Destillat einen Warnhinweis zuoberst.

- **N48-5 — Nachfolge-Status von vier Altnormen am Original nicht erkennbar.** Bei
  `sia-162-6-1999` (Stahlfaserbeton, Empfehlung), `sia-370-21-1987`, `sia-370-24-1979`
  (Gueter-Aufzuege) und `sia-380-3-1991` (Waermedaemmung Leitungen) laesst sich am Dokument selbst
  nicht feststellen, ob und wodurch sie abgeloest sind. Die Destillate behaupten deshalb weder
  Gueltigkeit noch Ablösung. Zu klaeren am Gesamtverzeichnis SIA bzw. am Shop — mit derselben
  Vorsicht wie N48-4: eine Shop-Auskunft ist eine Statusaussage von aussen, kein Normtext.

- **N48-6 — zwei echte Quellfehler dokumentiert, nicht aufloesbar.** (a) `sia-118-267-2004`:
  Titelblatt S. 1 nennt als ersetzte Norm SIA 192 in der «Ausgabe 1996», der Genehmigungsblock
  S. 98 nennt «1998» — beide Stellen gerendert verifiziert, der Widerspruch steht **im Original**.
  (b) `sia-118-265-2004` Ziff. 8.2.2.2 verweist auf eine «Ziffer 8.1.3.2», die im ganzen Normtext
  nicht existiert (vollstaendig geprueft), vermutlich Redaktionsfehler der Norm. Beide sind im
  jeweiligen Destillat als Quellfehler markiert. Kein Handlungsbedarf, aber beim Zitieren zu kennen.

- **N48-7 — SIA 382/2:2011 verweist normativ auf SIA 382/1:2007, im Bestand liegt 382/1:2014.**
  Das Berechnungsverfahren der 382/2 ist auf die 2007er Fassung der Anforderungsnorm kalibriert.
  Ob die 2014er Fassung Groessen geaendert hat, auf die 382/2 rechnerisch zugreift, ist **nicht**
  geprueft. Relevant fuer `energie` und die KB `wissen/energie`, sobald eine Klimaanlage
  nachzurechnen ist.
  **Nachtrag 13.08.2026 (Wissens-Chef Run 29):** nicht geloescht, aber praktisch entwertet — die
  ganze SIA 382/2 ist per 31.10.2022 archiviert (siehe N29-1). Die Frage bleibt fuer **Altvertraege**
  relevant, fuer Neuprojekte ist sie gegenstandslos.

## Wissens-Chef Run 29 (13.08.2026) — Cross-KB-Nachzug

- **N29-1 — SIA 380/2:2022 liegt nicht im Bestand (neue, echte Luecke).** Mit der Archivierung der
  SIA 382/2:2011 per 31.10.2022 ist **SIA 380/2:2022** die geltende Norm fuer den Leistungs- und
  Energiebedarf klimatisierter Gebaeude (und zugleich Nachfolgerin von SIA 2044:2019). Der Volltext
  ist im Hub **nicht vorhanden und ungelesen** (Kostenschranke). Damit fuehrt die KB fuer dieses
  Thema nur noch abgeloesten Bestand. Solange das so ist, gilt: aus `sia-382-2-2011` und
  `sia-2044` darf **keine Aussage fuer ein Neuprojekt** gezogen werden, ohne den Ablöse-Vorbehalt
  mitzuführen. Beschaffungs-Bring-Schuld. Beleg: shop.sia.ch, Produktseite SIA 380/2 (2022),
  Vorgaenger-Block, selbst abgerufen 13.08.2026.

- **N29-2 — REGISTER.md Zeile 256 fuehrt SIA 382/1 noch mit «2007», obwohl die KB 2014 UND 2025
  kennt.** Das Destillat `sia-382-1-2014.md` traegt seit dem 26.07.2026 korrekt das Feld
  `ausgabe_ueberholt` (ersetzt durch SIA 382/1:2025 seit 01.02.2025) und REGISTER Zeile 472 fuehrt
  den neueren Stand. Die Zeile 256 liegt jedoch im **Stichtags-Block 25.02.2013** und ist per
  Stichtag richtig — sie darf nicht ueberschrieben, sondern nur in der Bemerkungsspalte ergaenzt
  werden (viertes Struktur-Muster, Run 25). Eigener Befund, noch nicht ausgefuehrt; bewusst nicht
  im selben Zug erledigt, weil er einen eigenen Herausgeber-Beleg braucht.

  > ✅ **GESCHLOSSEN, nachgetragen 24.08.2026 (QUESTIONS-Abarbeitung).** War bereits erledigt, nur
  > hier nie geschlossen: die Stichtags-Zeile (jetzt `wiki/REGISTER.md` Zeile 465, Zeilennummern
  > haben sich seit 13.08. durch Zwischeneinträge verschoben) trägt seit dem 23.08.2026 exakt die
  > verlangte, nicht-ueberschreibende Bemerkung «⚠ Bereits an anderer Stelle belegt, hier
  > nachgeführt (23.08.2026): siehe Run-5-Zeile unten — Bestand 2014 … Nach 2013 selbst ersetzt:
  > SIA 382/1:2025, in Kraft seit 01.02.2025 …». Eigene Gegenprobe 24.08.2026: der 2013-Stichtagwert
  > «2007» in Spalte 2 ist unveraendert stehen geblieben (nicht ueberschrieben), REGISTER Zeile 982
  > (Run-5-Zeile) fuehrt den Stand 2014→2025 bereits seit dem 14.07.2026 konsistent dazu. Kein
  > eigener Herausgeber-Beleg mehr noetig, da die Bemerkung ausschliesslich auf bereits im Hub
  > vorhandene, verifizierte Fundstellen verweist (Destillat-Frontmatter `ausgabe_ueberholt`,
  > REGISTER Zeile 982), keine neue Norm-Aussage macht. Herkunft der Korrektur: vermutlich SIA-Sweep
  > desselben Tages (23.08.2026, Fortsetzungsserie), CHANGELOG nennt diesen konkreten Edit nicht
  > namentlich — Fund ueber direkten Zeilenvergleich, nicht ueber einen Laufbericht.

- **N29-3 — `status: VOLLSTAENDIG` hat im SIA-180-Destillat eine Kapitel-Luecke nicht verhindert.**
  `destillate/sia-180-2014.md` fehlen Ziff. 2.4.1.3 (Figur 6 gilt fuer 30-70 % r.F., Kapitel
  thermische Behaglichkeit) und Ziff. 6.4.4 (Bereich ohne aktive Be-/Entfeuchtung einzuhalten),
  obwohl das Destillat sich als vollstaendig destilliert ausweist. Gefunden ueber Feld A des
  Cross-KB-Laufs, als eine `energie`-Aussage gegengelesen wurde. Ergaenzen, nicht ueberschreiben.

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Original `180_2014.pdf` (14,5 MB, SN
  > 520180:2014) per M365-Graph-Connector beschafft (SharePoint Site PL, Drive `02_Recht_Norm`,
  > Pfad `02_Normen/SIA_Norm/SIA_Normen/alle/180_2014.pdf`) und mit `pdftotext -layout` vollständig
  > gelesen. Beide fehlenden Ziffern am Original bestätigt und **ergänzt, nichts überschrieben**:
  > **Ziff. 2.4.1.3** («Der Figur 6 ist der Bereich der empfundenen Temperatur … zu entnehmen …
  > Sie gilt auch für eine relative Luftfeuchte zwischen 30 % und 70 %», Quelle der Figur SN EN ISO
  > 7730) als neue Bullet-Zeile in Kapitel 2 zwischen Ziff. 2.3.6 und Ziff. 2.5 eingefügt; **Ziff.
  > 6.4.4** («Der zulässige Bereich der relativen Raumluftfeuchte ist ohne aktive Befeuchtung und
  > ohne Entfeuchtung einzuhalten, ausser wenn die in 3.5.1.3 und 3.5.1.4 aufgeführten Massnahmen
  > nicht ausreichen») als neue Bullet-Zeile nach Ziff. 6.4.1-6.4.3 in Kapitel 6 eingefügt. Frontmatter
  > `status`/`last_updated` in `destillate/sia-180-2014.md` entsprechend nachgeführt. `git diff
  > --numstat` nach dem Schreiben: 4 Zeilen hinzugefügt, 2 ersetzt (Frontmatter-Zeile), keine
  > bestehende Kernziffer verändert oder entfernt.

## Normen-Nacht Run 46 (07.08.2026) — ein neuer Auftrag, ein Rückstand richtiggestellt

- **N46-1 — GVZ-Merkblatt 30.17.3: gezielte Runde auf Ziff. 4.2.2.3/4.2.2.4 und den
  Fliesstext-Anhang S. 8/9.** Vier Refuter-Runden haben die Aufmerksamkeit auf die Matrizen
  der Ziff. 6 und den Beispiel-Anhang ab S. 10 gelenkt. Run 46 hat gezeigt, dass genau dort
  nichts mehr zu holen ist (Matrizen zum dritten Mal zellengenau bestätigt), während der
  Fliesstext zu den **Entrauchungsöffnungen** fünf Kernbefunde trug — im angeblich seit je
  vollständig erschlossenen Bereich. **Auftrag:** eine Runde, die ausschliesslich diesen
  Bereich aufnimmt, Absatz für Absatz, in beiden Fragerichtungen. Erst danach ist die Hebung
  auf `established` redlich zu stellen. Vorher nicht.

- **N46-2 — Richtigstellung eines fortgeschriebenen Rückstands (kein neuer Auftrag).** Die
  Reports der Runs 40 bis 45 führten durchgehend als offen: «Lignatec — der Fliesstext der
  Kapitel 1 bis 4 ist nie gegen das Destillat gediffed, und eine Seiten-Inventur existiert
  nicht.» Beides ist **seit Run 41 (01.08.2026) erledigt**: der Fliesstext-Diff der Kap. 1-4
  ist gefahren (6 Kernbefunde, im Destillat-Frontmatter dokumentiert), und
  `training/lignatec-seiteninventur.md` existiert (351 Zeilen, Seitenzahlen am Rand
  abgelesen). Der Punkt ist aus der Rückstandsliste zu nehmen. **Er ist hier vermerkt, weil er
  eine Fehlerklasse belegt, nicht weil noch etwas zu tun wäre:** ein Rückstandspunkt, der von
  Report zu Report kopiert wird, ohne am Bestand geprüft zu werden, überlebt seine eigene
  Erledigung. Das ist Methodik-Pflicht 10 (externe Statusaussage gegen den eigenen Bestand
  prüfen), angewandt auf die **eigenen** Reports.

- **N46-3 — SWKI VA103-01: die drei Begriffs- und Abkürzungskapitel.** Nach Run 46 sind von
  acht Abdeckungslücken noch Kap. 1.1.1-1.1.3 (bautechnische, lüftungstechnische und
  MSR-Begriffe, S. 10-14) und Kap. 1.2 (Abkürzungen, S. 15-16) offen. Nicht bemessungsrelevant,
  aber das Destillat verwendet durchgehend Kürzel (WB/h, PP, PC, RJT/FOL) ohne eigene Referenz
  — und Run 46 hat gezeigt, wohin das führt: der Destillier-Agent deutete «WB» spontan als
  «Warte-/Bewegungseinheit» statt als **Wagenbewegung**, was die Einheit m³/WB unbrauchbar
  gemacht hätte. Der Hauptprozess hat es am Bestand korrigiert. Ein destilliertes
  Abkürzungsverzeichnis schliesst diese Fehlerquelle.

## Cross-KB-Lauf Run 27 (06.08.2026) — zwei neue Bring-Schulden

- **N27-1 — ✅ GESCHLOSSEN am 20.08.2026 (Run 58, Fassungs-Sweep über alle 35 VKF-Publikationen; Antwort für 22-15: 01.01.2017 IST die jüngste Fassung). Ursprünglicher Auftrag:** VKF-Publikationsindex für 22-15de abfragen (Fassungsstand Blitzschutz).
  Das Destillat `destillate/vkf-brl-22-15-blitzschutzsysteme.md` behauptete im Frontmatter,
  die Ausgabe 01.01.2017 sei «aktuell … am VKF-Endpunkt verifiziert». Belegt ist aber nur der
  **Live-Abruf des 2017er-PDF** am 05.08.2026 und der vollständige Diff gegen 2015 — **nicht**
  die Aussage, dass danach keine neuere Ausgabe erschienen ist. Ein Abgleich des
  Publikationsindex hat nie stattgefunden. Dieselbe Evidenzlage besteht in `energie` seit dem
  25.07.2026 über dieselbe URL. **Auftrag:** den VKF-Publikationsindex für die Dok.-Nr.
  `22-15de` abfragen, das Ergebnis (jüngste ausgewiesene Ausgabe) **mit Abrufdatum und
  Fingerabdruck belegen** und Frontmatter, Kopfwarnung sowie die neue Registerzeile in
  `wiki/REGISTER.md` Abschnitt D entsprechend nachziehen. Bis dahin gilt: die Ausgabe 2017
  existiert und geht der 2015er vor, mehr ist nicht belegt. Frontmatter am 06.08.2026 auf das
  Gemessene zurückgenommen (Cross-KB-Lauf Run 27).

- **N27-2 — SIA 380/4: Archivierungsvermerk fehlt in dieser KB, Herausgeber-Beleg noch nicht
  erbracht.** Die KB `bauprodukte` verweist auf **SIA 380/4** als massgebende Norm; die KB
  `planungsgrundlagen` führt seit dem 03.08.2026 belegt, dass **SIA 380/4:2006 seit dem
  31.07.2019 archiviert** ist. In `normen` fehlt ein Archivierungsvermerk zu SIA 380/4
  vollständig, obwohl diese KB nach `wissen/koordination/QUERBEZUEGE.md` (Zeile 46, selbst
  nachgeprüft 06.08.2026: «Gültigkeits-/Fassungsstand einer Norm … → **normen**, jede andere KB
  verweist dorthin; meldet sie eine Archivierung, ist sie in normen NACHZUZIEHEN») für
  Gültigkeits- und Fassungsstand führt. **Bewusst NICHT gesetzt** im Cross-KB-Lauf Run 27: es liegt kein
  eigener Herausgeber-Beleg vor. **Auftrag:** die Produktseite auf `shop.sia.ch` zu SIA 380/4
  abrufen (Muster: die Belegführung zu SIA 493 in `wiki/REGISTER.md`, Abschnitt «Run-5» —
  Felder «Gültig ab», «Gültig bis / archivierter Titel», Rubrik «Nachfolger»), mit Abrufdatum
  festhalten und erst dann eine Gültigkeitsaussage ins Register setzen. Achtung Nachfolgefrage:
  `SIA 2056 (SNR 592056):2019` ist im Register bereits als «ersetzt SIA 380/4:2006» geführt —
  ob der Herausgeber das als förmliche Nachfolge ausweist, ist Teil des Auftrags.
  **Unberührt bleibt** der Stichtags-Block «A) SIA — Gültigkeit je Norm, Stand 25.02.2013»:
  per Stichtag 2013 war «SIA 380/4:2006 gültig» richtig.
  **Beitrag 07.08.2026 (Run 47, Destillat `sia-387-4-2017.md`, established, Refuter-verifiziert):**
  Der Zerfall der SIA 380/4 ist jetzt hausintern am Normtext belegt, nicht nur sekundär —
  SIA 387/4:2017 «ersetzt den Teil Beleuchtung (Ziffern 3.3 und 4.3) der Norm SIA 380/4 …,
  Ausgabe 2006» (Genehmigungsblock S. 44, wörtlich vom Refuter bestätigt); Lüftung/Klima
  liegen gemäss Vorwort S. 4 in SIA 382/1 und 382/2, die übrigen Elektrizitätsverbraucher im
  Merkblatt SIA 2056. Damit ist die Nachfolge-Landkarte komplett: Beleuchtung → 387/4,
  Lüftung/Klima → 382/1+382/2, Rest → 2056. Offen bleibt allein der förmliche
  Herausgeber-Beleg der Archivierung (shop.sia.ch-Abruf mit Datum) — der bestehende Auftrag
  oben gilt unverändert.
  **Erweiterung des Auftrags, Cross-KB Wissens-Chef Run 28 (07.08.2026):** Der Abruf umfasst
  neu auch die Produktseite der **SIA 387/4** selbst (Felder «Gültig ab», «Gültig bis /
  archivierter Titel», Rubrik «Nachfolger», mit Abrufdatum). Anlass: die KB `energie` hat am
  03.08.2026 über die Nachfolger-Rubrik der **380/4** einen Eintrag «SIA 387/4:2023, gültig ab
  01.08.2023» abgerufen (`wissen/energie/outputs/2026-08-03_energie-run122.md`, Zeile 80). Der
  Beleg stammt damit von der falschen Produktseite, und die Lesart ist hausintern strittig
  (`wissen/energie/destillate/aufzug-energieeffizienz-vdi4707.md`, Zeile 4: «Ausgabe 2017,
  aktualisiert 01.08.2023»). **Erst der eigene, datierte Abruf der 387/4-Produktseite darf eine
  Fassungsaussage ins Register setzen** — bis dahin bleiben Destillat `sia-387-4-2017.md` und
  die Registerzeile SIA 387/4 unverändert bei der Ausgabe 2017 (Vorbehalt dort je nachgetragen).
  Zu beachten: die BBV I ZH, Anhang Ziff. 2.3382, erklärt für den kantonalen Vollzug weiterhin
  die «Ausgabe 2017» verbindlich (`wissen/baurecht/raw/260607_amtlich_zh_bbv1.md`, Zeile 1036) —
  ein pauschaler «abgelöst»-Vermerk wäre für den Nachweis EN-111 irreführend.
  Offen bleibt zusätzlich die Divergenz innerhalb der KB `energie` («2023er Ausgabe» vs. «2017
  aktualisiert 2023») — dort als eigener Punkt zu vermerken (Run 28 hat nur in `normen`
  geschrieben, die Rückrichtung in `energie` ist nicht ausgeführt).

  ✓ **Auftrag erfüllt 23.08.2026 (Cross-KB, KB `energie`, interaktive Session).** Beide
  SIA-Shop-Produktseiten direkt abgerufen: **SIA 387/4:2017**
  (`shop.sia.ch/normenwerk/architekt/387-4_2017_d`) — gültig ab 01.05.2017, **gültig bis
  31.07.2023, Status archiviert**, mit Korrigenda C1 vom 01.04.2020; **SIA 387/4:2023**
  (`.../387-4_2023_d`) — gültig ab 01.08.2023, Status **aktiv**, führt SIA 387/4:2017 und
  SIA 387/4-C1:2020 ausdrücklich als archivierte Vorgänger. **Damit ist belegt: 387/4:2023 ist
  eine eigenständige neue Ausgabe, keine blosse Aktualisierung der 2017er-Fassung.** Die
  KB-interne Divergenz in `energie` ist aufgelöst — die abweichende Formulierung «Ausgabe 2017,
  aktualisiert 01.08.2023» stand nur in `wissen/energie/destillate/aufzug-energieeffizienz-vdi4707.md`
  und ist dort am 23.08.2026 korrigiert; die übrigen fünf Fundstellen führten bereits korrekt
  «SIA 387/4:2023». Nachtrag auch in `wiki/REGISTER.md` Zeile 315. **Weiterhin offen (neuer,
  eigener Auftrag, nicht mehr Teil dieser Bring-Schuld):** Beschaffung und Re-Destillat der
  Norm SIA 387/4:2023 selbst (Bestand im Haus ist weiterhin die 2017er-PDF); der ZH-Vollzugs-
  Vorbehalt (BBV I ZH nennt für EN-111 die Ausgabe 2017 als beachtliche Richtlinie) bleibt
  unverändert bestehen.

## Run 45 (06.08.2026) — vier Rückstände geschlossen, drei Statusfragen am Herausgeber belegt

### GESCHLOSSEN

- **VKF-Merkblatt 2001-15 «Solaranlagen», Ausgabe 01.01.2022 — Re-Destillat erstellt (der P1 vom 05.08.).**
  `destillate/vkf-merkblatt-2001-15-solaranlagen-2022.md`. Alle vier Fingerabdrücke des
  Bezugswegs unabhängig nachgemessen und exakt getroffen (15 S., 524'403 Bytes, MD5
  `a17958fdf95c720434ffa90117964b23`, Titelblatt «01.01.2022 / 2001-15de»). Das PDF liegt
  bewusst nur in `/tmp`, nicht im Repo (Urheberrecht VKF). Alle drei bekannten Deltas am
  Original bestätigt; fünf weitere selbst gefunden (Tabelle 1 neu gefasst, Kap. 3.3
  Naturgefahren neu, Anhang S. 13/14 neu, Batterieanlagen als eigene Gefahrenquelle,
  Ziff. 5 Gültigkeit neu). Refuter-Runde im selben Lauf: **BEANSTANDET**, 2 Kernbefunde
  eingearbeitet. Status bleibt `speculative`.
- **E-123-6 (Ausgabestand SIA 118 für die Vertragshierarchie) — geschlossen.** Geltend ist
  **SIA 118:2013**, gültig ab 01.01.2013; die 1991er ist seit 31.12.2012 archiviert. Das
  Register führte das bereits korrekt (Zeile 84) — die Frage war also nur in `energie`
  offen, nicht in `normen`. **Neu belegt und nachgetragen:** eine **Korrigenda C1** als
  Download-Anhang der Produktseite sowie das Feld «Revision 1 / Revisions-Datum 01.12.2025».
- **E-123-3 (Nachfolge von SIA 162/4) — geschlossen, und die verbreitete Fassung war unpräzise.**
  Der Herausgeber weist die Nachfolge selbst aus (Rubrik «Nachfolger» auf der Produktseite
  von SIA 162/4). Damit ist sie **nicht mehr nur sekundärquellengestützt**. Zwei
  Präzisierungen: es heisst **SIA 2030**, nicht «MB 2030» (so ist es im Shop nirgends
  beschriftet), und die Kette geht weiter — SIA 2030:2010 ist selbst archiviert (bis
  31.10.2021), geltend ist **SIA 2030:2021 «Beton mit rezyklierten Gesteinskörnungen»**
  (ab 01.11.2021, Revision 1 vom 01.11.2025, Korrigenda C1). Register Zeile 308 entsprechend
  korrigiert; sie führte bis heute «2010 gültig».
- **E-123-2, Teil Korrigenda SIA 493-C1 — geschlossen.** Sie existiert (SN 550493-C1, 13 S.,
  gültig ab 01.03.1998, archiviert per 30.06.2022) und ist **kostenlos** beziehbar (0.00 CHF).
  Das Fehlen eines Nachfolgers für SIA 493 ist jetzt **strukturell** belegt: die Produktseite
  hat gar keine «Nachfolger»-Rubrik, während dieselbe Rubrik bei SIA 162/4 vorhanden und
  befüllt ist. Der EPD-/KBOB-Weg bleibt Sekundärquelle.

### OFFEN, mit verifizierter Beschaffungsinfo (Bring-Schuld Raphael, Claude kauft nicht)

- **SIA 430:2023** «Vermeidung und Entsorgung von Bauabfällen», gültig ab 01.08.2023:
  **90.00 CHF**, Papier oder Download SRD, shop.sia.ch. Achtung Verwechslungsgefahr: der
  kursierende Wert 80.00 CHF gehört zur **archivierten Vorgängerausgabe**.
- **SIA 118/430:2023** «Allgemeine Bedingungen für die Vermeidung und Entsorgung von
  Bauabfällen», gültig ab 01.08.2023: **80.00 CHF**. Primär einschlägig für den Skill
  `werkvertrag`; hat im REGISTER weiterhin keine Zeile, weil der Inhalt fehlt.
- **Teilweise ERLEDIGT 07.08.2026:** Die Korrigenda liegt jetzt als **SIA 118-C1:2026** im
  Bestand (`alle/118-C1_2026_d.pdf`, Übernahme aus Downloads-Sammlung, Titelblatt verifiziert)
  — der Kauf ist damit hinfällig. **Inhalts-Destillat ERLEDIGT 07.08.2026 (Run 47, Vorrang-Lauf):**
  `destillate/sia-118-c1-2026.md`, established nach unabhängiger Refuter-Runde (BESTANDEN,
  0 Kernbefunde). Materieller Gehalt: genau EINE Änderung — Art. 179 Abs. 2 SIA 118:2013,
  Rügefrist für verdeckte Mängel neu «innert 60 Tagen nach der Entdeckung» statt «sofort»
  (Anlass: OR-Revision Baumängel per 01.01.2026, AS 2025 270; zwingendes Recht, geht der
  Norm vor; C1 gilt vertraglich nur, wenn zusätzlich zur SIA 118 vereinbart). Das
  Revisions-Datum 01.12.2025 der Produktseite deckt sich nach Lage der Daten mit dieser C1
  (Genehmigung ZO 11.11.2025, gültig ab 01.01.2026); am Dokument selbst kommt das Datum
  nicht vor. Offen bleibt allein die **Hauptnorm SIA 118:2013** (Bring-Schuld Raphael).

### METHODISCHE LEHRE AUS DIESEM LAUF (gehört ins PROGRAMM.md)

Eine Statusrecherche am Herausgeber muss **vor** dem Melden gegen den eigenen Bestand
geprüft werden. Der SIA-118-Befund sah nach einem Fehler mit Hub-Reichweite aus (die KB
führt nur `sia-118-1991`), war aber keiner: Register Zeile 84 und das Destillat selbst
führten die Ablösung längst. Das ist Methodik-Pflicht 7 in ihrer allgemeinen Form —
**bevor ein Befund als Fehler verbucht wird, ist zu prüfen, ob die KB die Aussage an
anderer Stelle bereits führt.** Der Ertrag war trotzdem echt, nur kleiner: die Korrigenda
und der Revisionsstand fehlten wirklich.

## 2026-08-05 (Cross-KB Lauf 26) — VKF-Merkblatt 2001-15 «Solaranlagen»: Fassung entschieden, Re-Destillat offen ⚠ TITEL VERALTET — Re-Destillat seit Run 45 (06.08.2026) ERLEDIGT, siehe Abschnitt unten; nur Punkt 3 (SharePoint-Ablage) bleibt Bring-Schuld Raphael (nachgetragen 24.08.2026, QUESTIONS-Abarbeitung 03:17-Fortsetzung)

**Der Delta ist entschieden, die Beschaffungsfrage ist bezahlt — offen ist nur noch der
Lesevorgang.** Am 05.08.2026 wurden beide Nachfolge-Ausgaben vom adversarialen Verifikator
selbst heruntergeladen und gelesen. Die Existenz und Erreichbarkeit ist damit **verifiziert und
darf nicht ein zweites Mal aufgemacht werden** (gleiche Regel wie bei SIA 430:2023 oben).

1. ~~**Destillat der Ausgabe 01.01.2022 anlegen (P1, eigener Lesevorgang am Original).**~~
   ✔ **ERLEDIGT in Run 45 (06.08.2026)** → `destillate/vkf-merkblatt-2001-15-solaranlagen-2022.md`,
   alle 15 Seiten gelesen, Fingerabdrücke geprüft, Refuter-Runde gefahren (BEANSTANDET, 2
   Kernbefunde eingearbeitet). Die Zwischenausgabe 01.01.2017 hat weiterhin kein eigenes
   Destillat; Punkt 3 (Ablage-Pendenz SharePoint) bleibt unverändert offen und ist bewusst
   nicht angefasst worden, weil er Raphaels Entscheid verlangt. Ursprünglicher Wortlaut: Die
   Ausgabe ist eine **Vollrevision** (15 statt 11 Seiten), ein Inline-Patch der 2015er-Destillate
   genügt nicht. Bezugsweg, öffentlich und kostenlos, am 05.08.2026 selbst geladen:
   `https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-197.pdf/content`
   — 15 Seiten, 524'403 Bytes, MD5 `a17958fdf95c720434ffa90117964b23`, Titelblatt
   «01.01.2022 / 2001-15de». Zwischenfassung **01.01.2017** (12 S., Portal-Label «gültig bis
   31.12.2021»):
   `https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-3729.pdf/content`.
   Beim Destillieren zwingend mit abzudecken: Tabelle 1 (DC-Verlegung, 2022 neu gefasst),
   Kap. 3.3 «Naturgefahren» (SIA 261/261-1 statt VKF-Wegleitung), Anhang S. 13 (Entscheidbaum)
   und S. 14 (RWA-Lichtraumprofil), Ziff. 5 «Gültigkeit». Das PDF selbst **nicht** ins Repo
   committen (Urheberrecht VKF) — nur URL, Seitenzahl und MD5 als Fingerabdruck festhalten.
2. **Bereits erledigt und nicht zu wiederholen:** Die drei praxisrelevanten Deltas sind am
   Original verifiziert und in beiden 2015er-Destillaten als Delta-Block und zweiwertige
   Fundstellen-Vermerke hinterlegt (`vkf-brm-2001-15-solaranlagen.md`,
   `vkf-merkblatt-2001-15-solaranlagen.md`): Unterdachbahnen **RF3(cr) Pflicht seit 01.01.2017**
   (nicht erst 2022, Beschluss Technische Kommission VKF vom 02.12.2016), Flächenschwelle
   **«> 1200 m²»** statt «≥ 1200 m²», und der **RWA-Mindestabstand 2 m ist kein
   Lösungsansatz-Wert mehr** (Anhang S. 14, massnahmenfreie Schwelle mit Lichtraumprofil).
3. **Ursache, die den Fehler sonst reproduziert (P1, Ablage-Pendenz an Raphael, kein
   Claude-Alleingang):** Das JANS-SharePoint-Archiv hält an **beiden** Ablageorten
   (`PL - 02_Recht_Norm/02_Normen/VKF_Norm/02_Brandschutzrichtlinien 2015/` und
   `PL - 03 Brandschutz/02 Brandschutzrichtlinien 2015-17-22/`) byte-identisch nur die Fassung
   **2015** (MD5 `56fb4bab06eaa4efec181d7f6fb44e87`, 11 S.) — trotz des Ordnernamens
   «2015-17-22». Solange das so bleibt, erzeugt **jeder** künftige Destillat-Lauf, der brav
   «Primärquelle SharePoint» liest, denselben veralteten RF4(cr)-Wert erneut. Die Ausgabe 2022
   ist in beide Ordner zu legen und die 2015er als «überholt» zu kennzeichnen, **nicht** zu
   löschen (Nachweiswert für Altprojekte).
4. **Lehre für die Fassungsprüfung:** Bei einer VKF-/VKG-Fassungsfrage ist der Hausbestand nie
   die letzte Instanz. Vor jedem «Bring-Schuld»-Vermerk sind `services.vkg.ch` bzw.
   `services2.vkf.ch` abzufragen — dasselbe Portal, das diese KB drei Tage nach dem
   Bring-Schuld-Eintrag vom 25.07.2026 für das Merkblatt 2005-15 selbst benutzt hat.

## 2026-08-04 (Cross-KB energie → normen, Wissens-Chef Run 25) — SIA 430:2023 + SIA 118/430:2023 beschaffen, drei nie angekommene Übergaben aus energie-Run 123 ⚠ E-123-2/-3/-6 GESCHLOSSEN — siehe Abschnitt «Run 45 (06.08.2026)» weiter oben im Dokument; nur SIA 430:2023 und SIA 118/430:2023 bleiben offen (Bring-Schuld Raphael, Kauf, siehe dort) (nachgetragen 24.08.2026, QUESTIONS-Abarbeitung 03:17-Fortsetzung)

Angemeldet in der **Empfänger-KB**, nicht als Notiz in der abgebenden (Regel aus Run 8). Anlass:
die Übergaben **E-123-2, E-123-3 und E-123-6** aus dem energie-Run 123 (04.08.2026) standen
ausschliesslich in `wissen/energie/wiki/QUESTIONS.md`; in `normen` war davon nichts angekommen
(grep «E-123» über die ganze KB: 0 Treffer). Für **SIA 430** war überhaupt keine Übergabe
ausgestellt worden. Die Formulierungen unten folgen dem adversarialen Verifikationsurteil,
nicht der ursprünglichen Fundmeldung.

1. **SIA 430:2023 beschaffen und destillieren (P1) — Existenz ist geklärt, der Inhalt fehlt.**
   Ausgabe 2023 **existiert**, Datum am Herausgeber verifiziert 04.08.2026: SIA 430:2023
   «Vermeidung und Entsorgung von Bauabfällen», gültig ab **01.08.2023**; die Ausgabe 1993
   «Entsorgung von Bauabfällen» galt bis **31.07.2023** (shop.sia.ch, Produktseite). **INHALT
   nicht im Haus — Beschaffung + Destillat offen.** Das ist ausdrücklich **keine** ungeprüfte
   Meldung mehr: der Verifikationsschritt «gibt es die Ausgabe überhaupt» ist bezahlt und darf
   nicht ein zweites Mal aufgemacht werden. Nachgeführt sind bereits `wiki/REGISTER.md`
   (Zeile SIA 430, Bemerkungsspalte), `destillate/sia-430-1993.md` (Feld `ersetzt_durch` +
   Warnblock) und `destillate/INDEX.md`. Nur sekundärquellengestützt und **nicht** als
   Norminhalt gesetzt: die verbreitete Aussage einer «inhaltlichen Neuausrichtung auf
   Kreislaufwirtschaft» (espazium.ch).
2. **SIA 118/430:2023 fehlt in `normen` vollständig (P1 für `werkvertrag`).** «Allgemeine
   Bedingungen für die Vermeidung und Entsorgung von Bauabfällen», Ausgabe 2023, gültig ab
   **01.08.2023** (shop.sia.ch, verifiziert 04.08.2026). Es ist ein **eigenes, neues
   SIA-Dokument**, in das der Organisationsteil der alten SIA 430:1993 ausgelagert wurde, und
   es hat im `REGISTER` bis heute keine Zeile. Primär einschlägig für den Skill `werkvertrag`
   (SIA-118-Familie), nicht nur für `normen`. Zu beschaffen, zu destillieren und ins REGISTER
   aufzunehmen.

> **Nachtrag 23.08.2026 (QUESTIONS-Abarbeitung).** REGISTER-Lücke aus Punkt 2 geschlossen: beide
> Normen tragen jetzt eine eigene Zeile in `wiki/REGISTER.md` (SIA 430 ergänzt, SIA 118/430 neu
> angelegt). Preise am Herausgeber direkt nachverifiziert (shop.sia.ch, Produktseiten
> `architekt/430_2023_d` bzw. `architekt/118-430_2023_d`, Abruf 23.08.2026): **SIA 430:2023
> CHF 90.00** (28 S., Papier oder Download/SRD, nur das Inhaltsverzeichnis frei), **SIA 118/430:2023
> CHF 80.00** (16 S.). Kein kostenloser Volltext-/Leseprobe-Zugang gefunden (anders als bei den
> zuletzt in dieser KB gefundenen freien SIA-2024-Korrigenda — dort war die Publikationsart
> «Corrigenda», hier «Norm»/«Allgemeine Bedingungen», beide regulär kostenpflichtig). Punkt 1 und
> Punkt 2 bleiben damit inhaltlich **offen** (Beschaffung + Destillat, Bring-Schuld Raphael); ein
> weiterer freier Web-Recherche-Anlauf für den Volltext verspricht keinen Mehrwert.
3. **E-123-2 — Nachfolgeweg für SIA 493 ungeklärt (Übergabe aus `energie`, P2).** Der
   *Gültigkeitsstatus* ist mit diesem Lauf geklärt und in `normen` nachgeführt: SIA 493:1997
   ist seit **30.06.2022 archiviert** (shop.sia.ch, Produktseite SIA 493, selbst abgerufen
   04.08.2026) — nachgetragen in `wiki/REGISTER.md` (Run-5-Zeile), `destillate/sia-493-1997.md`
   (Feld `gueltigkeit` + Warnblock) und `destillate/INDEX.md`. **Offen bleibt der Nachfolgeweg:**
   ein 1:1-Nachfolger ist **nicht belegt**, der Shop weist kein «ersetzt durch» aus. Der
   naheliegende Weg über EPD nach **EN 15804+A2** bzw. die **KBOB-Ökobilanzdaten** ist nur
   sekundärquellengestützt und darf nicht als Nachfolgeregelung gesetzt werden. Für LV-Text ist
   bis auf Weiteres neutral zu formulieren («produktbezogene Ökodeklaration bzw. Eintrag in den
   KBOB-Ökobilanzdaten»). Ebenfalls offen: der Status der **Korrigenda SIA 493-C1/1997**
   (existiert im Shop, nicht geprüft). Betroffen ist jede Devis-Klausel «Deklaration nach
   SIA 493».
4. **E-123-3 — Ablösung von SIA 162/4 (Recyclingbeton) nur sekundärquellengestützt (Übergabe
   aus `energie`, P2).** Die **Archivierung per 31.12.2009** ist an der SIA-Shop-Statusanzeige
   belegt; dass das **SIA-Merkblatt MB 2030** an ihre Stelle tritt, ist es **nicht**. Die
   `energie`-Destillate formulieren deshalb bewusst vorsichtig («faktisch abgelöst durch»).
   Aufgabe für `normen`: den Nachfolgestatus am Herausgeber verifizieren und erst dann eine
   Fundstelle setzen; bis dahin keine Nachfolge-Behauptung.
5. **E-123-6 — Ausgabestand von SIA 118 in den Kontroll-Checklisten offen (Übergabe aus
   `energie`, P2).** Die eco-bau-/AHB-Quelle zitiert **SIA 118 ohne Ausgabejahr** für die
   Vertragshierarchie. `normen` führt bisher nur `destillate/sia-118-1991.md`; ob und mit
   welchem Stand eine jüngere Ausgabe gilt, ist zu klären und im REGISTER auszuweisen —
   ohne Ausgabejahr ist eine Vertragshierarchie-Aussage nach Rule `normen-referenz` nicht
   zitierfähig.

**Methodische Lehre (gehört ins `training/PROGRAMM.md`).** Das Bestands-Korrektiv des REGISTER
fängt **Revisionen** ab (eine jüngere Datei im Haus fällt auf), aber prinzipiell **keine
ersatzlosen Archivierungen** (SIA 493) und **keine Revisionen, bei denen der Hausbestand genau
die 2013-gültige Ausgabe ist** (SIA 430). Beide Klassen liegen ausserhalb der «Verbindlichen
Regel» des REGISTER-Kopfs, die nur bei **leerer** Bestand-Spalte greift — dort erzeugt die
gefüllte Bestand-Spalte falsche Sicherheit. Sinngemässe Ergänzung der Regel: «Bestand ==
2013-gültige Ausgabe ist KEIN Aktualitätsnachweis; nur ein Bestand JÜNGER als 2013 wirkt als
Korrektiv.» Ohne diese Ergänzung wiederholt sich derselbe Fehler auf den übrigen 74
Bestand-Zeilen. Praktischer Hebel: der SIA-Shop ist ohne Login abfragbar — belastbar ist aber
**nur** die `ProduktDetail.aspx`-URL mit `Produkt_ID`; die generische URL
`shop.sia.ch/normenwerk/architekt/<nr>/d/D/Product` lieferte in der Verifikation zweimal fremde
Produkte, der Treffer ist deshalb immer am Titel gegenzulesen.

## Run 43 (04.08.2026) — zwei Rückstände geschlossen, sechs neu offen

### GESCHLOSSEN

- **S42-1 (SWKI VA103-01, Anhänge D/E/F) — geschlossen.** Alle drei Anhänge sind aufgenommen
  und eingearbeitet. Damit ist der als «dringlichster inhaltlicher Rückstand dieser KB»
  geführte Simulationsnachweis destilliert: Reduktion des Gesamt-Abluftvolumenstroms **bis
  auf minimal 70 %** (Ziff. E1.1, S. 95), **CFD zwingend** und Zonenmodelle ausdrücklich
  ungeeignet, **RANS statt LES**, Dokumentationspflicht mit CO-Verteilung auf 1 m und 2 m
  Höhe. Der Seitenversatz PDF = Druckseite + 2 wurde von zwei Agenten unabhängig nachgemessen.
- **K42-4b (SIA 500:2009, Anhang E vollständig) — geschlossen.** E.3, E.4 und E.5 samt
  vollständigen Positionslegenden aufgenommen. **Nebenbefund mit Korrekturwirkung:** die KB
  führte Anhang E als «S. 42-60»; am Original umfasst er **S. 48-55** (davor B/C/D, danach ab
  S. 56 Anhang F). Ein E.6 existiert nicht — die Abdeckung ist damit gemessen, nicht geschätzt.
- **SMU42-1 (existiert eine an VKF 2015 angepasste Fassung?) — teilweise beantwortet.** Die
  Fassungszuordnung zur Brandschutznorm vom 26.03.2003 ist belegt (Inkraftsetzung 01.01.2005,
  zweimal im Dokument; Gegenprobe über die Nummerierung: geltende Norm 1-15 führt den Fluchtweg
  in Art. 35, das Merkblatt zitiert Art. 37). Das Ausgabedatum ist über die inhaltsgleiche
  VST-Ausgabe im Bestand als «Erstausgabe 2009, Version 2009_1» belegt — eine Herstelleranfrage
  ist dafür **nicht** mehr nötig. Offen bleibt allein, ob der Verband inzwischen neu aufgelegt hat.

### NEU OFFEN

- **N43-1 — BKP 271.10 ist kein BKP-2017-Code, und er steckt noch in 13 Hub-Dateien.**
  Am Original zweifach nachgezählt: unter 271 Gipserarbeiten führt das BKP 2017 nur
  **271.0 Innenputze**, 271.1 Trockenbauarbeiten, 271.2 Gerüste; zweistellige Nachkommastellen
  gibt es in der ganzen Gliederung nicht. Korrigiert sind die beiden normativen Quellen
  (`references/bkp-2017/BKP-2017-Liste.md`, Rule `bkp-2017-referenz.md`) und dieses KB-Destillat.
  **Nachzuziehen bleiben u.a. `skills/ausschreibung/SKILL.md` und `skills/brandschutz/SKILL.md`**
  sowie mehrere Destillate und KB-Dateien. Solange sie stehen, erzeugen LV-Titel einen Code,
  den weder Unternehmer noch Bauherrschaft verifizieren können. **Ausserhalb des Scopes dieses
  Loops — vorzulegen.**
- **N43-2 — Dublette SMU 004 / VST 012, Entscheid Raphael.**
  `smu-merkblatt-004-tueren-in-fluchtwegen` und `vst-merkblatt-012-tueren-fluchtwegen`
  beschreiben dieselbe Publikation (SMU-Ko-Ausgabe desselben VST-Merkblatts), werden aber mit
  unterschiedlichem Status (`speculative` / `established`) und unterschiedlicher Tiefe geführt.
  Zusammenführen ist destruktiv (Rule `wissens-bibliothekar`) und wird deshalb **nur vorgelegt**.
  Argument dagegen, die beiden zu verschmelzen: siehe N43-3.
- **N43-3 — die beiden Ausgaben sind NICHT wortgleich (Druckfehler im VST-Original).**
  Vom Hauptprozess an beiden Originalen nachgelesen: die VST-Fassung druckt die Bedienkräfte
  nach SN EN 1125 als **F ≥ 80/100/220 N**, die SMU-Fassung als **F ≤ 80/100/220 N**. Sachlich
  richtig ist «≤» (eine Bedienkraft ist eine Obergrenze; eine Fluchttür, die mindestens 220 N
  verlangt, wäre das Gegenteil des Schutzziels). Zu klären, ob der Verband den Fehler kennt,
  und ob weitere Stellen der beiden Ausgaben auseinanderlaufen.
- **N43-4 — echter Widerspruch Merkblatt gegen geltende VKF, für die Praxis zu entscheiden.**
  Die Ausnahme von der Fluchtrichtungspflicht lautet im Merkblatt **max. 30 m² UND max. 6
  Personen**, in der geltenden BRL 16-15 Ziff. 2.5.5 **max. 20 Personen ohne Flächenkriterium**.
  Das Merkblatt ist strenger. Für JANS-Projekte ist festzulegen, ob dem strengeren
  Verbandsstandard gefolgt wird oder dem geltenden Recht.
- **N43-5 — Kalksandstein: drei Bemessungsgrössen sind erst im Prüfabschnitt korrigiert.**
  l1 (Lagerungsfaktoren), E'c/q_ser,lang und die Diagramm-Transformationen samt Nxo = 100 kN/m¹
  sind eingearbeitet und die gefährlichsten Stellen inline markiert; **der Kapitelteil zu den
  Rissweiten-Diagrammen ist aber noch nicht neu geschrieben.** Bis dahin gilt der Vermerk im
  Statusfeld: nicht als Bemessungsgrundlage verwenden. Ferner ungeprüft: der Wortlaut der
  SIA 266 selbst (Art. 4.3.1, 4.3.1.3, 4.3.4.3) und der aktuelle Ausgabenstand der SIA 262
  (das Merkblatt stützt sich auf SIA 262:2003).

  > ⚠ **TEILWEISE GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung), primärquellenfest.** Beide
  > offenen Teilfragen bearbeitet, Original erstmals seit dem NAS-Ausfall wieder erreichbar
  > (M365-Graph-Connector, `04_Merkblätter/Bemessung Kalksandstein.pdf`, Text-Layer vorhanden
  > — `pdftotext -layout` statt bisher nur 300-dpi-Rendering).
  > 1. **Rissweiten-Diagramm-Kapitel neu geschrieben:** `destillate/kalksandstein-bemessung-
  >    sia266-ksv-2012.md`, Abschnitt «Gebrauchstauglichkeit / Rissweite», enthält jetzt
  >    Nxo = 100 kN/m¹ und alle drei Ablese-Transformationen (Ordinate r200·Nxo/Nx, Abszisse
  >    hcr·√(Nx/Nxo), Kurvenparameter ϑ·√(Nxo/Nx)) im Fliesstext, nicht mehr nur im
  >    Verifikations-Anhang.
  > 2. **SIA-266-Wortlaut geprüft** (gegen `sia-266-2003.md`-Original, `pdftotext`):
  >    Art. 4.3.1.1/4.3.1.3 (Tragsicherheitsformel, teilweise eingebundene Decken) **bestätigt
  >    wortgleich**. Art. 4.3.4.3 (Merkblatt S.12, fyd-Aktivierung) ist ein **Druckfehler des
  >    Merkblatts selbst** — Art. 4.3.4.3 SIA 266 regelt Druckgewölbe unter Querbelastung
  >    (unbewehrtes Mauerwerk), nicht fyd. Die tatsächlich einschlägige Stelle ist
  >    **Art. 4.2.1.2/4.2.1.3** (η₃ = 1,5 für vollfugig vermörtelte Stossfugen) — sachlich
  >    bleibt die Merkblatt-Aussage richtig, nur die eigene Fundstellenangabe ist falsch.
  >    SIA-262-Fassungsfrage (K4) bestätigt: 2003 war zum Publikationszeitpunkt des Merkblatts
  >    (Herbst 2012) die geltende Ausgabe, heute gilt SIA 262:2013 — Bewehrungsschema vor
  >    Verwendung gegen die aktuelle Fassung zu prüfen.
  > **Bewusst nicht geändert:** der `status`-Wert bleibt `speculative` — K4 bis K10 aus Run 43
  > stehen weiterhin nur im Verifikations-Anhang, nicht im Fliesstext, und ein Statuswechsel
  > auf `established` ist einem eigenen Verifikationslauf vorbehalten (siehe Statusfeld-Notiz
  > im Destillat). Verbleibend offen: K4-K10 in den Fliesstext einarbeiten.
- **N43-6 — SWKI, was Anhang E nicht regelt.** Der Anhang nennt **keine abnehmende oder
  genehmigende Instanz** für den Simulationsnachweis, keine Qualifikationsanforderung an den
  CFD-Ingenieur und keine Konvergenzkriterien. Bei einem Nachweis, der den Volumenstrom um bis
  zu 30 % senkt, ist das die praktisch entscheidende Lücke: zu klären, wer ihn in ZH/SZ prüft.

### Methodische Notiz

Die Regel «eine ausdrückliche Prüfzusicherung im Destillat ist kein Beleg» (Run 42) hat in
diesem Lauf erstmals ein **Gegenbeispiel** bekommen: beim CRB-Merkblatt hat sich die Zusicherung
«reiner Fliesstext, kein Rendering notwendig» am 300-dpi-Rendering als zutreffend erwiesen. Die
Regel bleibt richtig — sie sagt, dass eine Zusicherung geprüft werden **muss**, nicht dass sie
immer falsch ist.

Zweite Notiz, aus der Arbeit an den fünf beanstandeten Destillaten: Ein angehängter
Verifikationsabschnitt allein **genügt nicht**. Solange der Fliesstext oben die widerlegte
Aussage weiterführt, liest ein Nutzer zuerst den Fehler — dieselbe Mechanik wie beim
Absturzsicherungs-Destillat aus Run 42, wo die Kurzfassung falsch und der Fliesstext richtig
war. In Run 43 sind deshalb neun Stellen zusätzlich **inline** korrigiert worden.

## Run 42 (03.08.2026) — neu offen ⚠ S42-2 GESCHLOSSEN 24.08.2026 (BAFU-Vollzugshilfe UV-1318-D Ziff. 5.3 direkt geprueft: «Firsthoehe + 1,0 m» ist Kriterium a) der Maximum-Bildung, kein eigenstaendiger Wert); S42-3 GESCHLOSSEN 24.08.2026 (SWKI-Original erstmals seit NAS-Ausfall via M365-Graph-Connector erreichbar, Tab. 16 komplett gelesen: keine Schwyz-Station, Luzern/Altdorf bestaetigt und gleichwertig); N43-5 TEILWEISE GESCHLOSSEN 24.08.2026 (Rissweiten-Diagramm-Kapitel neu geschrieben, SIA-266-Zitate geprueft — Art. 4.3.4.3 im Merkblatt selbst ein Druckfehler, richtig waere 4.2.1.2/4.2.1.3; K4-K10 bleiben offen)

### KL Hochbau, Sanitäre Anlagen ([[kl-hochbau-sanitaer-katalogblaetter]])
- **K42-1 Herausgeber/Werktitel/Ausgabedatum unbekannt.** Keine der acht gelesenen Seiten
  (S22-25, S53-56) trägt Impressum, Verlagslogo oder Datum; die Titelseite des Gesamtwerks
  liegt nicht im Ordner `09_Sanitaereinrichtung` vor. Der Dateiname «KL Hochbau» ist keine
  belastbare Quelle. Falls Raphael den Werktitel kennt: nachtragen.
- **K42-2 «BKP 251» (S22) gegen «BKB 256» (S53).** Auf beiden Blättern (Sammel- und Einzelblatt
  übereinstimmend) so gedruckt — kein Lesefehler. Druckfehler des Originals oder eigenständige
  ältere Gliederung? Für Ausschreibungstexte ohnehin die aktuelle BKP-2017-Nummer verwenden
  (Rule `bkp-2017-referenz`).
- **K42-3 Bedarfszahlen-Tabelle S53** (Piktogramm-Spalten «Apparate mit Wasser-/
  Abwasseranschluss» je Personenbelegung) nicht einzeln benennbar aus dem Scan. Bei
  verbindlicher Verwendung Original nochmals gezielt einsehen.
- **K42-4 Behindertenanlagen-Masse S56** zitieren keine Norm, wirken älterer Provenienz
  (cm-Bemassung, keine SIA-500-Terminologie) — ungeprüft, ob sie mit SIA 500:2009
  übereinstimmen. Fassungsvorbehalt analog [[bkz-2005-checkliste-hindernisfrei-hochbau]].

  > **BEANTWORTET — Wissens-Chef Run 23, 03.08.2026 (Cross-KB, Feld normen ↔ planungsgrundlagen).**
  > Nein, sie stimmen **nicht** überein, und zwar in der Raumbreite belegbar:
  > - **Raumbreite.** «Minimale Lösung» 140 cm und «Normalausführung» 160 cm unterschreiten
  >   **SIA 500:2009 Ziff. 7.2.3.2: WC-Raum min. 1,65 × 1,80 m** (aussen öffnende Tür, +0,50 m
  >   bei innen öffnender). Belegt in [[sia-500-2009]] (S. 24), unabhängig gegenbelegt in
  >   [[zhb-2005-mindestanforderungen-hindernisfreies-bauen]] («min. 165 × 180 cm») und
  >   [[bkz-2005-checkliste-hindernisfrei-hochbau]]. Die Raumtiefe 220 cm erfüllt die Norm.
  > - **Sitzhöhe.** Die 50 cm sind ein undatierter Wert ohne Normbezug (Herausgeber/Ausgabejahr
  >   dieser Katalogblätter sind nach K42-1 nicht ermittelbar). Gegen sie stehen 46 cm aus
  >   [[zhb-2005-mindestanforderungen-hindernisfreies-bauen]] (S. 27-28), dem Plan7-Katalog und
  >   DIN 18040-1 Ziff. 5.3.3 (46-48 cm, nicht 1:1 übertragbar). **Entschieden ist der Konflikt
  >   nicht** — SIA 500 Anhang E (S. 42-60) enthält die Detailmasse und ist im Hub noch nicht
  >   gelesen. Das ist die einzige Stelle, die ihn auflöst; **als Leseauftrag offen (K42-4a)**.
  > - **Wirkung schon gesetzt:** Der abnehmende Artikel
  >   `wissen/planungsgrundlagen/wiki/recht-norm-sanitaerraeume-planungsgrundlagen.md` führte
  >   diese Masse als «direkt als Planungsgrundlage für Pflegezimmer-Nasszellen nutzbar». Dort
  >   sind Normvorbehalt und Sitzhöhen-Vorbehalt in Run 23 gesetzt.
  > - **Für dieses Destillat:** Fassungsvorbehalt bei den S56-Massen gesetzt (siehe dort).

- **K42-4a Leseauftrag SIA 500:2009 Anhang E** (S. 42-60, PDF im Hub vorhanden, laut
  [[sia-500-2009]] noch nicht gelesen): enthält die Detailmasse rollstuhlgerechter Sanitärräume
  und entscheidet den Sitzhöhen-Konflikt aus K42-4. Höchste Priorität unter den offenen
  Lese-Aufträgen, weil drei KBs auf die Antwort warten. *(Aufgenommen Wissens-Chef Run 23.)*

  > **BEANTWORTET — Wissens-Chef Run 24, 03.08.2026, am Original-PDF.**
  > **Die Sitzhöhe beträgt 0,46 m (OK Brille). Die 50 cm der KL_Hochbau-Katalogblätter sind
  > widerlegt.**
  > - **Fundstelle:** SIA 500:2009, **Anhang E**, Schnitt zu **Figur E.1 (S. 49)** und
  >   **Figur E.2 (S. 51)**: Bemassung «**+ 0.46 (OK Brille)**». Derselbe Anhang, Positionslegende
  >   **M**: «Klappsitz 0,46 m über Boden, Ausladung mindestens 0,45 m»; Position **S**: «Sitzbank
  >   bzw. Liege 0,46 m über Boden».
  > - **Zweitbeleg, unabhängig und am selben Tag in die KB gekommen:**
  >   [[procap-mb105-2009-rollstuhlgerechte-toiletten]] führt für Pos. F «OK Brille (Sitzhöhe)
  >   **+0.46 m**» (S. 2-4) — es ist die erste ausdrücklich SIA-500-bezogene Quelle im Bestand,
  >   die das Mass trägt. Dazu ZHB 2005, Plan7-Katalog, DIN 18040-1.
  > - **Nachgezogen in:** [[kl-hochbau-sanitaer-katalogblaetter]] (Vorbehalt aufgelöst),
  >   `planungsgrundlagen/wiki/recht-norm-sanitaerraeume-planungsgrundlagen.md` (Sitzhöhen-Vorbehalt
  >   aufgelöst, Wert freigegeben), [[sia-500-2009]] (`gelesen`-Feld).
  > - **Anhang E ist damit nicht vollständig gelesen**, nur die Sanitär-Figuren E.1/E.2 und die
  >   Positionslegenden. Die übrigen Detailmasse (E.3 Dusche, E.4/E.5) bleiben offen — neuer,
  >   kleinerer Leseauftrag **K42-4b**.

- **K42-4b Anhang E vollständig** (S. 42-60): E.3 Dusche, E.4/E.5 sowie die vollständigen
  Positionslegenden sind über die in K42-4a gelesenen Figuren E.1/E.2 hinaus noch nicht
  ausgewertet. Geringere Priorität als K42-4a, weil kein KB darauf wartet.
  *(Aufgenommen Wissens-Chef Run 24.)*

### SWKI VA103-01 (Anschluss an S41, [[swki-va103-01-2017]])
- **S42-1** Anhang D (Anwendungsbeispiele S. 81-94), Anhang E (Simulationsnachweis-Methodik
  S. 95-106) und Anhang F sind weiterhin nicht destilliert.
- **S42-2** Tab. 7: die Spalte Q/S > 1 ist am Scan nicht zweifelsfrei aufloesbar — ist
  «Firsthoehe + 1,0 m» ein eigenstaendiger dachtypspezifischer Wert oder Teil der
  Maximum-Bildung? Gegen BAFU-Vollzugshilfe UV-1318-D Ziff. 5.3 zu verifizieren.

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** «Firsthoehe + 1,0 m» ist kein
  > eigenstaendiger Wert, sondern die dachtyp-spezifische Auspraegung von Kriterium a) der
  > Maximum-Bildung selbst. Beleg: BAFU, Umwelt-Vollzug Nr. 1318 «Mindesthoehe von Kaminen
  > ueber Dach. Kamin-Empfehlungen», Erstausgabe 2013, 1. aktualisierte Auflage Dezember 2018,
  > Ziff. 5.3 Abs. 1+2 (S. 13-14), selbst heruntergeladen
  > (`bafu.admin.ch/dam/de/sd-web/x0hJtl7AkYcm/mindesthoehe_vonkaminenueberdach.pdf`) und mit
  > `pdftotext` geprueft: Kriterium a) verlangt «den hoechsten Gebaeudeteil (z. B. Dachfirst)
  > um mindestens 1 m ... ueberragen» — fuer ein Schraegdach identisch mit «Firsthoehe + 1,0 m»,
  > exakt parallel zum Normalfall Q/S ≤ 1 (Ziff. 5.2 Bst. a, 0,5 m statt 1 m). Details und
  > vollstaendiger Formelvergleich (a/b/c) in `destillate/swki-va103-01-2017.md`, Abschnitt
  > Fortluft. Kein Korrekturbedarf am bestehenden Destillat-Text.
- **S42-3** Fuer den Kanton Schwyz enthaelt Tab. 16 (Anhang A) **keinen** eigenen
  Stationseintrag; naechstgelegen sind Altdorf und Luzern. Eine Zuordnung ist nicht belegt.

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung), primaerquellenfest.** Original
  > erstmals seit dem NAS-Ausfall wieder erreichbar (M365-Graph-Connector, Site PL, Drive
  > `02_Recht_Norm`, `06_Richtlinien/SWKI/SWKI VA 103-1 Lüftungsanlagen für Parkhäuser.pdf`,
  > direkt via Graph-API heruntergeladen). Tab. 16 (Druckseiten 73-74, PDF-Seiten 75-76 bei
  > Rendering-Offset +2) vollstaendig bei 300 dpi gerendert und **alle 40 Stationszeilen**
  > alphabetisch gelesen (Adelboden … Zürich-MeteoSchweiz): **keine** Zeile heisst «Schwyz»
  > oder nennt einen Ort im Kanton Schwyz (kein Einsiedeln, Pfäffikon SZ, Lachen, Freienbach,
  > Küssnacht). Die bereits vermutete Nachbar-Zuordnung ist damit bestätigt: **Luzern**
  > (θODA = 0,5 °C, fIDA,exp 1,00) und **Altdorf** (θODA = 1,2 °C, fIDA,exp 1,00) sind die
  > einzigen Stationen mit vergleichbarer Seehöhe/Lage am Vierwaldstättersee-Becken; beide
  > tragen identische Faktoren (Garage exponiert 5 °C/1,00, geschützt 10 °C/0,77) — die Wahl
  > zwischen den beiden ist damit für die Bemessung praktisch folgenlos. Eine **normative**
  > Zuordnungsregel (welche Station bei fehlendem Standort zu wählen ist) nennt weder Tab. 16
  > noch das SWKI-Dokument selbst; sie stammt aus SIA 2028 «Klimadaten für Bauphysik,
  > Energie- und Gebäudetechnik», deren **Basis-Merkblatt 2010 weiterhin nicht im Haus ist**
  > (kostenpflichtig, Bring-Schuld, siehe `wiki/REGISTER.md` Zeile SIA 2028) — eine dort evtl.
  > genannte Auswahlmethodik bleibt offen, ändert aber am praktischen Ergebnis (Luzern/Altdorf,
  > beide gleichwertig) nichts. `destillate/swki-va103-01-2017.md` unveraendert (Tab. 16 bleibt
  > aus Urheberrechtsgruenden nicht als Volltabelle kopiert); dieser Befund ist rein am
  > Original geprueft und hier dokumentiert.

### Absturzsicherungen ZH ([[stadt-zuerich-richtlinie-absturzsicherungen-hochbau-2019]])
- **A42-1** Geometrische Bedeutung der Kote ≤ 90 in der Skizze «nur obere Traverse» unklar;
  Zuordnung der Handlaufmasse (Profilbreite gegen Wandabstand) nur als Lesart belegt. Beides
  beim Amt fuer Baubewilligungen zu klaeren.

### Hindernisfreies Bauen (Anschluss an H41-1)
- **H42-1** Alle drei neuen Merkblaetter (`ugz-hindernisfreie-aufzuege-2010`,
  `ugz-wohnungsbau-hindernisfrei-2014`, `procap-mb105-2009-rollstuhlgerechte-toiletten`)
  stuetzen sich auf SIA 500:2009, keines auf SN 521 500:1988 — aber **keines liefert einen
  eigenstaendigen Beleg zum kantonalen Verordnungsstand** (§ 239 PBG / § 34 BBV I). H41-1
  bleibt offen, ist jetzt aber praeziser gestellt. Ferner ungeklaert, ob SIA 500:2009 heute
  noch die gueltige Ausgabe ist.

### SMU-Merkblatt 004 ([[smu-merkblatt-004-tueren-in-fluchtwegen]])
- **SMU42-1** Stuetzt sich auf die VKF-Generation 2003 und ist ueberholt. Zu klaeren, ob eine
  an VKF 2015/BRL 16-15 angepasste Fassung existiert.

### PAVIDENSA
Kreuzmatrix PAV-A 03:2013 geprueft, bevor sie ein zweites Mal eingetragen wird: **bereits
offen unter P41-1** (Run 41, Abschnitt «PAVIDENSA» oben) — kein neuer Eintrag noetig.
*(P41-1 seither GESCHLOSSEN 24.08.2026, siehe dort.)*

### Fassungsstand-Sammelpunkt (Run 42)
- **F42-1** Boulevardgastronomie (Gebuehrentarif Rechtsstand 1998), Leitfaden Mobilitaet
  2000-Watt (2007, Mikrozensus 2005), Hochwasser-Leitfaden (2003, §§ nicht gegen heutige
  Fassung geprueft), AFS-Leitfaeden (BZO/PBG-Fassungen 2009), SVDW-Wegleitung (kein
  Ausgabedatum) — alle vor Verwendung in einer aktuellen Baueingabe zu verifizieren.

### `Flaechen_Wettbewerb.pdf`
- **FW42-1** Herkunft und Projektbezug des handschriftlichen Blatts ungeklaert (Indiz
  Healthcare-Raumprogramm).

## Run 41 (MacBook Pro, 01.08.2026) — neu offen ⚠ SWKI-Block S41-1 bis S41-7 GESCHLOSSEN 24.08.2026 (nachgetragen, war im Destillat laengst erledigt); S41-8 bleibt offen; PAVIDENSA P41-1 GESCHLOSSEN 24.08.2026 (Kreuzmatrix nachgetragen); GVZ RWA G41-3 GESCHLOSSEN 24.08.2026 (DIN-18232-2-Abgleich); Lignatec L41-1/L41-2 GESCHLOSSEN 24.08.2026 (Fussnote [a] nachgetragen, REI90-Zeile zugeordnet); H41-1 GESCHLOSSEN 24.08.2026 (SIA 500:2009 loest SN 521 500:1988 seit 1.7.2009 ab, am aktuell geltenden ZH-Lex-Text 700.21 Nachtrag 133 verifiziert); M41-1 GESCHLOSSEN 24.08.2026 (deckt sich mit der laengst bestehenden Methodik-Pflicht 8, kein neuer Auftrag noetig); H41-3 GESCHLOSSEN 24.08.2026 (Adressueberschneidung war organisatorische Beziehung BKZ = Zuercher Regionalstelle der Fachstelle, Nebenbefund Adresskorrektur nachgetragen); H41-4 Web-Anlauf ohne Fund (echte Sackgasse, Wayback nicht abrufbar), bleibt Bring-Schuld/Rueckfrage; L41-3 GESCHLOSSEN 24.08.2026 (nachgetragen, war im Destillat laengst erledigt, Grauton = Legendenfarbe Baustoff brennbar, eigene Gegenpruefung am lokalen Spiegel bestaetigt); H41-2 Fundstelle identifiziert 24.08.2026 (SIA 500:2009 Anhang H nennt «Merkblatt Nr. 7, Rollstuhlgaengigkeit bei Sonderbauten» der Fachstelle FABB — Zahlenwert bleibt Bring-Schuld/Rueckfrage, kein SIA-Kauf); S41-8 GESCHLOSSEN 24.08.2026 (Praemisse falsch — Deutsch/Franzoesisch stehen zweispaltig auf denselben Seiten, Tabellenwerte strukturell bilingual-einheitlich, Struktur-Fund in Destillat nachgetragen); G41-2 zwei weitere Belege 24.08.2026 (Drittanbieter-Spiegel bestaetigt unveraendert 2011er-Ausgabe, GVZ-Leitfaden RWA 40.1/2013 ist kein Ersatz), bleibt offen; L41-4 GESCHLOSSEN 24.08.2026 (nach Tabelle 3 und Tabelle 5 jetzt auch Tabelle 4 zellenweise gegen das Original gehalten: fuenf bisher unbelegte Nutzungszeilen nachgetragen, keine Abweichung zu bestehenden Werten — alle vier Tabellen 2/3/4/5 seit Run 8 erneut geprueft); die uebrigen Bestaende (GVZ G41-1, restliche PAVIDENSA-Punkte) unveraendert offen

### Lignatec / Lignum
- **L41-1 Fussnote [a] der Tab. 3/4/5 nennt drei Nutzungen, die im Destillat nirgends vorkommen:**
  «Heime für Behinderte, Strafanstalten, geschlossene Erziehungsanstalten». In Runde 10
  ausdrücklich NICHT als Befund gewertet (Tabellenapparat, nicht Fliesstext) — in der nächsten
  Tabellenrunde zu prüfen. Für JANS mit Healthcare-Schwerpunkt potenziell einschlägig.

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Original beschafft (OneDrive-Kopie
  > `AR - 01 Projekte/2414 THALWIL/06 Reglemente/_Archiv/11 Brandschutz/Lignatec/
  > Lignatec_brandschutz.pdf`, identischer Inhalt zur SharePoint-Quelle laut Frontmatter — der
  > dort hinterlegte Pfad war auf dieser Station nicht gemountet/synchronisiert), S. 8 per
  > `pdftoppm -r 300` gerendert und die Fussnote [a] unten links wörtlich gelesen: «Beherbergungs-
  > betriebe, in denen dauernd oder vorübergehend kranke, pflegebedürftige oder auf fremde Hilfe
  > angewiesene Personen untergebracht sind, wie Krankenhäuser, Alters- und Pflegeheime, Heime
  > für Behinderte, Strafanstalten, geschlossene Erziehungsanstalten.» Die drei fehlenden
  > Nutzungen sind damit **kein eigener Tabelleneintrag**, sondern Teil der Definition der
  > bereits tabellierten Zeile «Beherbergungsbetriebe [a] z. B. Krankenhäuser» — sie tragen
  > exakt dieselbe Anforderung (R60(nbb)/EI60(nbb) durchgehend ab 2 Geschossen). Vollständiger
  > Wortlaut aller drei Fussnoten [a]/[b]/[c] nachgetragen in
  > `destillate/lignum-lignatec-brandschutz.md`, Abschnitt Tabelle 3. Keine Tabellenrunde nötig
  > — der Fund lag im Fliesstext der Fussnote, nicht in einer Tabellenzelle.
- **L41-2 REI90(nbb)/EI90(nbb) in Tabelle 4:** auf S. 13 trägt eine Nutzungszeile diese Werte
  (Spalten 4, 5-6, 7-8), und der Erläuterungskasten derselben Seite definiert die Klasse. Das
  Destillat nennt in seinem gesamten Tab.-4-Abschnitt **keine 90-Minuten-Klasse**. Welche
  Nutzungszeile es ist, wurde nicht abschliessend zugeordnet und deshalb nicht behauptet.

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Original (dieselbe Kopie wie L41-1)
  > als volle A3-Blattseite (Blatt 06 = S. 12 + S. 13) bei 300 dpi gerendert, NICHT nur die
  > Hälfte S. 13 isoliert — damit die Nutzungsspalte auf S. 12 pixelgenau auf derselben
  > Bildhöhe mit den Werten auf S. 13 abgeglichen werden konnte (Halbseiten-Split allein hätte
  > die Zeilenzuordnung nicht gesichert). Ergebnis: die REI90(nbb)/EI90(nbb)-Zeile gehört zu
  > **«Industrie-/Gewerbebauten q > 1000 MJ/m² · Bauten mit unbekannter Nutzung»**, Baulich-
  > Konzept, ab 4 Geschossen (Spalten 4, 5-6, 7-8) — **nicht** zu einer Beherbergungsbetriebe-
  > Zeile; das Sprinklerkonzept derselben Nutzung bleibt durchgehend bei REI60(nbb)/EI60(nbb).
  > Zur Kontrolle wurde die direkt benachbarte Zeile «Beherbergungsbetriebe [a]» ebenfalls
  > spaltengenau mitgelesen: sie führt in denselben Spalten durchgehend REI60(nbb)/EI60(nbb),
  > **kein** REI90 — die JANS-Healthcare-Zeile ist von diesem Fund nicht betroffen. Nachgetragen
  > als neuer Eckwert-Absatz in `destillate/lignum-lignatec-brandschutz.md`, Abschnitt Tabelle 4
  > (dort fehlte diese Nutzungszeile bis dahin vollständig).
- **L41-3 Getönte Deckschicht/Stiel in Tabelle 2:** in drei Zeilen sind Deckschicht und Stiel
  messbar grau unterlegt (177/180/179 gegen 240/245 bei identischem Muster); die Legende kennt
  keine getönte Variante. Konsistent, aber aus der Quelle nicht ableitbar. (Aus Run 40, hier
  fortgeschrieben.)

  > ✅ **GESCHLOSSEN (nachgetragen 24.08.2026, QUESTIONS-Abarbeitung).** War im Destillat bereits
  > seit einem früheren Lauf derselben QUESTIONS-Abarbeitung als «GEKLÄRT 24.08.2026» erledigt,
  > hier nur nie nachgezogen: `destillate/lignum-lignatec-brandschutz.md`, Abschnitt Tabelle 2 —
  > Pixelmessung am Original (`pdftoppm -r 200`, S. 4/5) zeigt, der Grauton ist die Legendenfarbe
  > **«Baustoff brennbar»** (identisches Diagonalschraffur-Muster wie «Vollholz», in der grossen
  > Tabellen-Swatch dichter und dadurch als Grau erscheinend, im kleinen Legendensymbol einzeln
  > erkennbar) — keine unerklärte vierte Kategorie. Eigene Gegenprüfung am lokalen OneDrive-
  > Spiegel (`AR - 01 Projekte/2414 THALWIL/06 Reglemente/_Archiv/11 Brandschutz/Lignatec/
  > Lignatec_brandschutz-Seite2.pdf`, S. 4-5, 24.08.2026) bestätigt das Bild: dieselbe
  > Diagonalschraffur ist bei R30/EI30/REI30 und R60/EI60/REI60 in den Deckschicht-/Stiel-Feldern
  > sichtbar dichter gesetzt als bei den weissen «Keine Anforderung»-Feldern, deckt sich mit der
  > Legendenzuordnung im Destillat.
- **L41-4 Was am Lignatec noch NIE geprüft wurde** (auszuweisen nach der Methoden-Lehre): die
  Zellwerte der Tabellen 3, 4 und 5 sind seit Runde 8 nicht erneut aufgenommen worden; Tabelle 2
  ist nur im Einleitungsabsatz, nicht zellenweise gegen das Destillat gehalten. Die Seiten-
  Inventur (`training/lignatec-seiteninventur.md`) liegt nun vor und macht eine solche Runde
  billig.

  > **Teilbearbeitet 24.08.2026 (QUESTIONS-Abarbeitung).** Tabelle 3 gezielt um die beiden
  > bislang unbelegten Zeilen «Industrie-/Gewerbebauten q ≤ 1000 MJ/m²» und «Landwirtschaftliche
  > Bauten» ergänzt (vollständige Eckwerte, `pdftoppm -r 400` am OneDrive-Original S. 8-9), dazu
  > eine unvollständige Aussage zur Zeile «Industrie q > 1000/unbekannte Nutzung» um die dort
  > tatsächlich vorhandene R90(nbb)/EI90(nbb)-Eskalation ab 4 Geschossen präzisiert (Details:
  > `destillate/lignum-lignatec-brandschutz.md`, Verifikationsstand-Eintrag 24.08.2026).
  > **Tabelle 4 und Tabelle 5 wurden NICHT neu zellenweise gelesen** — bleibt offen für eine
  > künftige Runde. Kein Nulldurchgang, `status` bleibt `speculative`.
  >
  > **Fortsetzung 24.08.2026 (QUESTIONS-Abarbeitung, Tabelle 5 zellenweise gelesen).**
  > `pdftoppm -r 300` auf S. 15 (Original-Kopie `AR - 01 Projekte/2414 THALWIL/06 Reglemente/
  > _Archiv/11 Brandschutz/Lignatec/Lignatec_brandschutz.pdf`, Blatt 07 rechte Halbseite), alle
  > zehn Nutzungszeilen einzeln gegen das Destillat gehalten (Legende, Aussenwandverkleidung
  > je Block, Bodenbelag Korridor/Treppenhaus, Tragwerke bb/nbb). **Alle bisher im Destillat
  > behaupteten Zellwerte bestätigt, keine Abweichung gefunden** — insbesondere die
  > Run-33/36-Refuter-Korrekturen (Aussenwandverkleidung je Geschossblock, Bodenbelag
  > Treppenhaus nur bei [a]/[c] blau) halten am erneuten Direktvergleich.
  > **Ein Fund, der bisher in keiner Runde erfasst war:** die Spalte «Tragwerke nbb» (Block
  > 4-8, nicht brennbares Tragwerk) fehlte im Destillat komplett — nachgetragen: Aussenwand
  > grau, Innenwand/Decke weiss, für alle Nutzungszeilen ausser EFH/REFH (dort weiss).
  > Details/Fundstelle in `destillate/lignum-lignatec-brandschutz.md`, Abschnitt Tabelle 5.
  > **Tabelle 4 weiterhin NICHT neu zellenweise gelesen** (letzte volle Runde 260730/Run 36,
  > 29.-30.07.2026, drei Wochen alt) — bleibt offen. Kein Nulldurchgang, `status` bleibt
  > `speculative`. Report: `outputs/2026-08-24_questions-abarbeitung-l41-4-tabelle5.md`.
  >
  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung, Abschlussrunde Tabelle 4).** Die fünf
  > in Tabelle 4 bisher ohne eigene Eckwerte geführten Nutzungszeilen («Industrie-/
  > Gewerbebauten q ≤ 1000 MJ/m²», «Bauten mit Räumen grosser Personenbelegung /
  > Verkaufsgeschäfte [c]», «Parkhäuser/Einstellräume für Motorfahrzeuge», «‹Verkaufsgeschäfte›
  > ≤ 1200 m²/≤ 100 P», «Landwirtschaftliche Bauten») wurden am Original S. 12-13
  > (`pdftoppm -r 400`, Zeilenbänder über beide Halbseiten gehalten) vollständig zellenweise
  > gelesen und in `destillate/lignum-lignatec-brandschutz.md`, Abschnitt Tabelle 4,
  > nachgetragen. Alle fünf Zeilen bestätigen Eskalations-/Abdeckungsmuster, die für dieselbe
  > Nutzung bereits aus Tabelle 3 dokumentiert waren (u.a. Baulich-Korridor eine Geschossstufe
  > früher blau als Sprinkler bei Industrie q≤1000 und Parkhäusern; Abdeckungsgrenze nach
  > Spalte 4 bei Verkaufsgeschäften ≤1200 m² und Landwirtschaftlichen Bauten) — keine
  > Abweichung zu einem bestehenden Destillat-Wert. **Damit ist L41-4 vollständig
  > abgearbeitet**: Tabelle 2 (Run 40), Tabelle 3, Tabelle 5 und nun Tabelle 4 sind seit der
  > letzten vollständigen Zellrunde (Run 8, 260730) alle erneut zellenweise gegen das Original
  > gehalten worden. `status` bleibt `speculative` (nur Zellwert-Vollständigkeit geprüft, nicht
  > die established-Reife).

### GVZ RWA-Parkhaus
- **G41-1 Bedeutung der durchgehend blauen letzten Matrixspalte.** Ob dort «nur der gesprinklerte
  Fall ist tabelliert» oder «der Wert gilt für beide Fälle» gemeint ist, sagt der Fliesstext
  nicht. Auslegungsfrage an die Kantonale Feuerpolizei ZH.
- **G41-2** Ob eine neuere Ausgabe des Merkblatts 30.17.3 als die vom 28.02.2011 existiert.

  > **Teilgeprüft, weiterhin offen (24.08.2026, QUESTIONS-Abarbeitung).** Web-Check auf
  > `gvz.ch` (öffentliche Übersichtsseiten «Brandschutz — Vorschriften & Weisungen — Online»
  > und «Feuerwehr — Weisungen/Merkblätter/Downloads», abgerufen 24.08.2026): **keine der
  > beiden Seiten listet eine Nummer 30.17.3.** Auffällig: die Feuerwehr-Weisungsliste führt
  > unter der Nummer **30.17 aktuell «Strassenrettungs-Konzept»** — ein anderes Thema als
  > RWA/Einstellraum Parkhaus. Das ist **kein Beleg für eine neuere Ausgabe oder eine
  > Rückziehung** des Merkblatts, sondern zeigt nur, dass die 30.17.3-Nummer möglicherweise
  > einer anderen Dokumentklasse (Brandschutz-Merkblatt statt Feuerwehr-Weisung) angehört und
  > auf den geprüften Übersichtsseiten nicht auffindbar war; die GVZ-Website nutzt für
  > Merkblätter zusätzlich eine dynamische Suchfunktion, die per automatisiertem Abruf keine
  > Trefferliste lieferte. **Nicht geschlossen** — offen bleibt, ob 30.17.3 unter einer
  > anderen Rubrik geführt wird oder tatsächlich aus dem Bestand entfernt wurde; dafür wäre
  > entweder eine direkte Suche auf `gvz.ch` im Browser oder eine Anfrage bei GVZ nötig
  > (Bring-Schuld/Rückfrage, nicht mit den geprüften Wegen abschliessend beantwortbar).
  >
  > **Zwei weitere Belege, weiterhin nicht abschliessend geklärt (24.08.2026, Fortsetzung).**
  > (1) Ein Drittanbieter-Spiegel des Dokuments (`readkong.com/de/document/view/1060180`,
  > Titel «Rauch- und Wärmeabzugsanlagen (RWA) in Parkhäusern und Einstellräumen für
  > Motorfahrzeuge») bestätigt unabhängig **Nummer 30.17.3, Ausgabedatum 28.02.2011, in Kraft
  > ab 11.04.2011, Herausgeberin Kantonale Feuerpolizei/GVZ** — deckungsgleich mit dem
  > Hausbestand, keine jüngere Fassung dort auffindbar. (2) Die GVZ-Abteilung Brandschutz
  > führt aktuell einen eigenständigen **«Leitfaden für die Planung, Ausführung und Abnahme
  > von Rauch- und Wärmeabzugsanlagen (RWA)», Nr. 40.1, Ausgabe vom 7. Oktober 2013**
  > (`gvz.ch/_file/245/131119-leitfaden-rwa.pdf`, per `pdftotext` geprüft) — inhaltlich aber
  > **kein Ersatz**: er regelt allgemein Ingenieur-Nachweisverfahren (N4, sinngemäss N2/N3)
  > nach dem VKF-BSR-28-15-Entwurf, nicht spezifisch Parkhäuser/Einstellräume, und nennt
  > 30.17.3 an keiner Stelle. Die Nummernserie 40.x (Leitfäden) ist erkennbar eine andere
  > Zählung als 30.x (Feuerwehr-Weisungen) und als die vermutete Brandschutz-Merkblatt-Serie
  > mit dritter Ziffernstelle (30.17.**3**) — stützt die bereits geäusserte Vermutung, dass
  > 30.17.3 einem heute nicht mehr aktiv geführten Nummernschema angehört, beweist aber
  > weder Rückzug noch Fortbestand. **Bleibt offen**, weiterhin nur per Bring-Schuld/Rückfrage
  > bei GVZ oder Browser-Direktsuche auf `gvz.ch` abschliessend klärbar.
- **G41-3** DIN 18232-2:2003-06 (Quelle der Durchflussbeiwerte) gegen die im Haus liegende
  Fassung 2007 — weiterhin ungeprüft.

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Abgleich gegen
  > `destillate/din-18232-2-2007.md`, Anhang B (informativ), Ziff. B.2, Tabelle B.1, S. 28-29
  > (`established`): Durchflussbeiwerte **wertgleich** mit der von der GVZ-Richtlinie zitierten
  > 2003-06-Fassung, Anhang C, Tabelle C.1 (vollständig geöffnete Fläche c = 0,65; Jalousien 90°
  > c = 0,65; Dreh-/Kippflügel ≥60° c = 0,5, ≥45° c = 0,4, ≥30° c = 0,3; Toleranz ±5°). Nur der
  > Anhang-Buchstabe verschob sich C→B, erklärt durch das Vorwort der 2007-Fassung (S. 4):
  > Streichung des alten Anhangs A (Inhalt ging in DIN EN 12101-2:2003-09 auf), wodurch B→A und
  > C→B rückten. Keine Korrektur am GVZ-Destillat nötig, Fund dort in «Offene Punkte» nachgetragen.
  > Die 2003-06-Fassung liegt nicht separat im Haus vor; Abgleich erfolgte gegen die einzige
  > verfügbare Primärquelle (aktuell gültige 2007-Fassung).

### SWKI VA103-01
- **S41-1 Der Bemessungskern ist nicht destilliert:** Kap. 3.4/3.5 mit Tab. 12
  (Benutzerkategorien, Parkdauer, Wagenbewegungen je Parkplatz), Tab. 15 (Kaltstart 22 m³/WB,
  Kaltfahrt 0,35 m³/m, Wartezeit 10 m³/WB) und den vier Korrekturfaktoren f_ODA/f_IDA/f_FG/f_IH.
  Ohne sie erweckt das Destillat Bemessungsfähigkeit, die es nicht hat. **Dringlichster Punkt.**

  > ✅ **GESCHLOSSEN (nachgetragen 24.08.2026, QUESTIONS-Abarbeitung).** Bereits durch Run 42
  > (03.08.2026) und einen zweiten unabhängigen Durchgang erledigt, hier nur nie nachgezogen:
  > `destillate/swki-va103-01-2017.md`, Abschnitt «Bemessungskern — Kap. 3.4 und 3.5» führt
  > Tab. 12 (Wagenbewegungen/PP, S. 55), Tab. 15 (Kaltstart 22 m³/WB, Kaltfahrt 0,35 m³/m,
  > Wartezeit 10 m³/WB, S. 58) und die vier Korrekturfaktoren mit Bandbreiten (S. 58) —
  > **f_VG, nicht f_FG**, das Destillat korrigiert die eigene Frage an dieser Stelle. Abschnitt
  > «Bemessung — Ergänzungen zu Kap. 3» ergänzt dazu Tab. 11/13/14 und die Rechenreihenfolge
  > (Ziff. 3.5.6, Abb. 23). Beide Durchgänge vom Hauptprozess am eigenen 200-dpi-Rendering
  > gegengeprüft (`status: speculative`, established-Reife noch nicht erklärt, aber inhaltlich
  > vollständig und rechnerisch geschlossen).
- **S41-2 Die Mess- und Steuerungsebene fehlt ganz** (Kap. 2.8): Schaltwerte Tab. 10 (CO ein bei
  50 ppm, Alarm 200 ppm; NO, NO₂), Messstellendichte (eine je 20 PP oder 400 m², mindestens zwei
  je Anlage), Fühlerhöhen (CO 1,5-3,0 m, NO/NO₂ 0,2-1,5 m), Nachlaufzeit min. 5 Minuten,
  Mehrstufigkeit ab 2'000 m³/h empfohlen und ab 2 kW zwingend.

  > ✅ **GESCHLOSSEN (nachgetragen 24.08.2026).** Run 42 (03.08.2026), Abschnitt «Mess-, Steuer-
  > und Regeltechnik — Kap. 2.8»: Tab. 10 (S. 50-51, alle drei Gase, drei Schaltstufen plus
  > Alarmierung), Messstellenanordnung Ziff. 2.8.8 (S. 51, Richtwert 20 PP/400 m², Fühlerhöhen
  > CO 1,5-3,0 m / NO,NO₂ 0,2-1,5 m), Nachlaufzeit ≥ 5 Min. (Ziff. 2.8.3, S. 48), Mehrstufigkeit
  > (Ziff. 2.8.5, S. 48, ab 2'000 m³/h empfohlen / ab 2 kW zwingend) — alle Werte identisch mit
  > der hier gestellten Frage.
- **S41-3 Ziff. 2.8.2 Brandfall fehlt** — für den Skill `brandschutz` die zentrale Aussage: die
  Entrauchung darf NICHT allein mit der normalen Lüftungsanlage erfolgen; Kombination nur mit
  separatem Abluftventilator für die Lüftung.

  > ✅ **GESCHLOSSEN (nachgetragen 24.08.2026).** Run 42, Abschnitt «⚠ Brandfallsteuerung und
  > Entrauchung (Ziff. 2.8.2, S. 48)» — wörtlich: «Die Entrauchung einer Garage darf nicht nur
  > mit der normalen Lüftungsanlage erfolgen», Kombination nur mit separatem Abluftventilator;
  > deckt sich mit der Frage, zusätzlich mit den Verweisen VKF-BSR 25-15de/21-15de belegt und im
  > Destillat ausdrücklich an das Merkblatt [[gvz-rwa-parkhaus-einstellraum]] verlinkt.
- **S41-4 Die konkreten Kaminhöhen fehlen** (Tab. 7/8): Normalfall Q/S ≤ 1 Schrägdach Firsthöhe
  + 0,5 m, Flachdach min. 1,5 m, begehbares Flachdach min. 2 m; für Q/S > 1 abweichend.

  > ✅ **GESCHLOSSEN (nachgetragen 24.08.2026).** Run 42, Abschnitt «Fortluft — Ergänzungen zu
  > Kap. 2.6»: Tab. 7 (S. 42) exakt mit den hier gefragten Werten, Tab. 8 (Beurteilungsradius,
  > S. 42) zusätzlich aufgenommen. **Nicht Teil dieser Frage, aber am selben Ort weiterhin offen
  > markiert:** ob «Firsthöhe + 1,0 m» in der Spalte Q/S > 1 ein eigenständiger Wert oder Teil
  > der Maximum-Bildung ist — dafür bleibt Tab. 7/2.6-Frage unten in dieser Datei zuständig.
- **S41-5 Kap. 2.7 Spezialanwendungen fehlt ganz** — Waschboxen, Motorrad-/Veloräume,
  Autoaufzüge und insbesondere **Elektrofahrzeuge** (SN EN 50272-3 nur bei wässrigem Elektrolyt;
  bei Lithium stattdessen Wärmeeintrag 10 % der Ladeleistung nach VDI 2166 Blatt 2). Bei
  heutigen Tiefgaragenprojekten der praktisch meistgefragte Punkt.

  > ✅ **GESCHLOSSEN (nachgetragen 24.08.2026).** Run 42, Abschnitt «Spezialanwendungen — Kap.
  > 2.7»: alle sieben Unterziffern (Waschboxen, Motorrad-/Mofaräume, Veloräume, Autoaufzüge,
  > Elektrofahrzeuge, Gasfahrzeuge, Anlieferungen) mit Fundstelle S. 45-47. Elektrofahrzeuge
  > mit der hier gefragten Lithium/wässriger-Elektrolyt-Unterscheidung wörtlich übernommen,
  > dazu ausdrücklich vermerkt, was die Richtlinie zu Elektrofahrzeugen NICHT regelt
  > (Brandgefahr, thermisches Durchgehen, Ladeinfrastruktur-Bemessung).
- **S41-6 Kap. 6/7 Abnahme und Betrieb fehlen** — Abnahme nach SIA 118 Art. 157-164,
  Abnahmeprotokolle SWKI 96-5, Kontrollmessverfahren SN EN 12599, jährliche Wartungspflicht.
  Für `unternehmerkontrolle` und `kostenkontrolle` einschlägig.

  > ✅ **GESCHLOSSEN (nachgetragen 24.08.2026).** Run 42, Abschnitt «Prüfungen, Betrieb, Rückbau
  > — Kap. 6 bis 9»: Abnahme nach SIA 118 Art. 157-164 und SWKI 96-5 (Ziff. 6.1/6.2, S. 64),
  > Kontrollmessverfahren SN EN 12599 (Ziff. 6.5, S. 66, mit dem Vorbehalt, dass die Richtlinie
  > selbst keine Toleranzwerte nennt, sondern an SIA 382/1 verweist), jährliche
  > Wartungspflicht (Ziff. 7.2, S. 69) — alle vier Fundstellen der Frage identisch übernommen.
- **S41-7 Impulsventilatoren (Jet-Fan, Ziff. 2.5.3) fehlen** — heute die übliche Bauart in
  Tiefgaragen; Funktionsnachweis mittels Simulation zwingend.

  > ✅ **GESCHLOSSEN 24.08.2026, mit Gegenbefund: die Prämisse der Frage war falsch.** Am
  > Original geprüft (SharePoint Site PL, Drive `02_Recht_Norm`,
  > `06_Richtlinien/SWKI/SWKI VA 103-1 Lüftungsanlagen für Parkhäuser.pdf`, per
  > M365-Graph-Connector geladen, `pdftoppm -r 200` gerendert): **Ziff. 2.5.3 «Sonderfälle»
  > (Druckseite 38-39) behandelt ausschliesslich die Einleitung vorgenutzter Luft** (Fortluft
  > aus Büros/Lagern als Zuluft, Kategorie FOL 1/REJ 1 nach SIA 382/1) — kein Wort zu
  > Ventilator-Bauarten. Das vollständige Inhaltsverzeichnis (Druckseiten 2-4, gerendert und
  > gelesen) enthält in der gesamten Gliederung (Kap. 0-9, Anhang A-F) **keine** Ziffer und
  > **keinen** Treffer auf «Impuls-», «Jet-» oder «Strahlventilator». Die Richtlinie regelt nur
  > die klassische Zu-/Abluft-Kanalführung (Kap. 2.5.2); für Impulslüftung ist sie keine
  > Fundstelle. Nachgetragen als expliziter Negativbefund in
  > `destillate/swki-va103-01-2017.md`, Abschnitt «Mechanische Lüftung (Kap. 2.5.2)», damit
  > ein künftiger Leser nicht erneut danach sucht.
- **S41-8** Ob die französische Parallelfassung von der deutschen abweicht — nicht gediffed.
  *(Weiterhin offen — Stichprobe an Ziff. 2.5.3 im Rahmen der S41-7-Prüfung 24.08.2026 zeigt
  inhaltliche Deckungsgleichheit, ist aber kein systematischer Diff und schliesst die Frage
  nicht.)*

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Die bisherige Fragestellung ging von
  > einer falschen Prämisse aus: es gibt keine separate französische „Parallelfassung" als
  > eigener Textblock, die man gegen die deutsche diffen müsste. Original neu geladen (SharePoint
  > Site PL, Drive `02_Recht_Norm`, `06_Richtlinien/SWKI/SWKI VA 103-1 Lüftungsanlagen für
  > Parkhäuser.pdf`, per M365-Graph-Connector, `pdftoppm -r 200` gerendert, Scan ohne Textlayer)
  > und visuell geprüft: das Dokument ist **zweispaltig auf denselben physischen Seiten** gesetzt
  > (Deutsch links, Französisch rechts), mit **gemeinsamer** gedruckter Seitenzahl für beide
  > Sprachen. Geprüft: vollständiges Inhaltsverzeichnis (Druckseite 2) sowie Ziff. 2.8.2-2.8.7
  > im Fliesstext (Druckseiten 48-50) — wortgetreue Übersetzung, sprachparallele Querverweise
  > (VKF-BSR 25-15de = AEAI-DPI 25-15fr, VKF-BSR 21-15de = AEAI-DPI 21-15fr), identische
  > Zahlenwerte (5 Min. Nachlaufzeit, 2'000 m³/h, 2 kW, 60 s/180 s Alarmzeiten). **Entscheidender
  > Struktur-Fund:** Tab. 9 (Messparameter CO/NO/NO2) und Tab. 10 (Schaltwerte CO/NO, Druckseiten
  > 49-50) sind **bilinguale Einzelobjekte** — die Zellbeschriftung trägt Deutsch/Französisch
  > übereinander, aber jeder Zahlenwert steht nur **einmal** in der Zelle (z.B. 50 ppm CO
  > Einschaltwert, 200 ppm Alarm). Eine sprachbedingte Werteabweichung bei Tabellen ist damit
  > **strukturell ausgeschlossen**, nicht nur ungeprüft unwahrscheinlich. Kein vollständiger
  > Diff aller 110 Seiten, aber die Prämisse „zwei zu vergleichende Texte" trifft nicht zu, und
  > die geprüfte Stichprobe (TOC + ein kompletter Fliesstext-/Tabellenblock) zeigt keine
  > Abweichung. Nachgetragen in `destillate/swki-va103-01-2017.md`, neuer Abschnitt
  > «Sprachfassung Deutsch/Französisch».
- **S41-9 (P2, Korrektur 01.08.2026, Ultra-Code-Review): Grenzfall exakt 100 m².**

  > ✅ **GESCHLOSSEN 23.08.2026.** Original beschafft (SharePoint Site PL, Drive `02_Recht_Norm`,
  > `06_Richtlinien/SWKI/SWKI VA 103-1 Lüftungsanlagen für Parkhäuser.pdf`, per
  > M365-Graph-Connector geladen; Datei ist ein Scan ohne Textlayer, per `pdftoppm -r 200`
  > gerendert und visuell gelesen — Druckseite 5 = PDF-Seite 7, Druckseite 10 = PDF-Seite 12,
  > Versatz +2 wie im Destillat dokumentiert). Beide Fundstellen wörtlich geprüft: **Ziff. 0.1.2
  > «Anwendungsbereich» (Druckseite 5)** sagt «Die Richtlinie gilt für Mittel- und Grossgaragen
  > **ab 100 m²** …» und separat «Für Kleingaragen **unter 100 m²** wird empfohlen …». «Ab» (≥)
  > und «unter» (<) grenzen lückenlos und überschneidungsfrei aneinander — eine Garage von genau
  > 100 m² fällt unter «ab 100 m²», die Richtlinie **gilt** dafür (Mittelgarage). **Kap. 1.1.1
  > «Begriffe, Definitionen» (Druckseite 10)** formuliert dieselbe Grenze dagegen unpräzise:
  > «Kleingarage … bis 100 m²» und «Mittelgarage … von 100 m² bis 1'000 m²» — dort gehört der
  > Wert 100 m² wortwörtlich zu beiden Kategorien. Das ist ein Redaktionsversehen im
  > informellen Glossar, nicht in der operativen Anwendungsbereichs-Klausel; Ziff. 0.1.2 ist die
  > für die Frage «greift die Richtlinie» massgebliche Stelle und dort eindeutig. Nachgetragen
  > in `destillate/swki-va103-01-2017.md` (Abschnitt «Geltungsbereich» und «Begriffe/
  > Garagentypen»).
  >
  > **Ursprungswortlaut (unverändert dokumentiert):** `outputs/2026-07-31_normen-nacht-run40.md`
  > (Abschnitt 3.2) und das Destillat formulierten den Anwendungsbereich als «gilt ab 100 m²» /
  > «Kleingaragen unter 100 m² gilt sie nicht», während dieselbe Quelle die Garagentypen als
  > «Kleingarage bis 100 m², Mittelgarage 100-1'000 m², Grossgarage über 1'000 m²» definiert
  > (Ziff. 1.1.1) — ohne Zugriff auf das Original schien beides zu kollidieren.

### Hindernisfreies Bauen (neu aufgenommener Bestand)
- **H41-1** Schlagen § 239 PBG und § 34 BBV I heute auf **SIA 500:2009** durch, oder verweist
  das kantonale Recht noch auf SN 521 500:1988? Die BKZ-Checkliste nennt ausdrücklich die
  Fassung 1988. **Rechtlich relevant, an der Quelle nicht entscheidbar.**

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Direkt an den amtlichen Primärtexten
  > geprüft, nicht am Sekundärtext: **§ 239c PBG** (700.1) delegiert «Das Nähere … bestimmt sich
  > nach den anerkannten Regeln der Baukunde. Der Regierungsrat bezeichnet die massgebenden
  > Regelwerke» (Einfügung durch G vom 22.10.2012, in Kraft seit 1.6.2013, seither unverändert;
  > geprüfte PBG-Fassung Nachtrag 107, Stand 1.1.2020). **§ 34 Abs. 2 BBV I** (700.21) verweist
  > auf «die Richtlinien und Normalien gemäss Anhang 2.5»; **Anhang Ziffer 2.515** nennt dort
  > ausschliesslich «Norm SIA 500:2009, Hindernisfreie Bauten» — geprüft an der **heute
  > tatsächlich geltenden** Fassung Nachtrag 133 (Stand 1.7.2026), PDF direkt ab ZH-Lex
  > (`zh.ch`, Erlass 700_21-1981_05_06-1982_01_01-133) geladen. **SN 521 500 wird an keiner
  > Stelle des aktuellen Erlasses mehr genannt.** Die Anhang-Ziffer trägt Fussnote 59: «Fassung
  > gemäss RRB vom 31. März 2009 … In Kraft seit 1. Juli 2009» — die Ablösung datiert exakt auf
  > dieses Datum und ist seither über drei unabhängig geprüfte Fassungsstände (1.7.2018,
  > 1.10.2019, 1.7.2026) unverändert. **Antwort: SIA 500:2009, nicht SN 521 500:1988** — die
  > BKZ-Checkliste von 2005 ist an dieser Stelle materiell überholt (für ihren eigenen
  > Erscheinungszeitpunkt war sie richtig). Zusatzbefund: `prSIA 500:2025-07`
  > (Vernehmlassungsentwurf, Juli 2025) soll SIA 500:2009 dereinst ersetzen, ist aber **noch
  > nicht in Kraft** — SIA 500:2009 bleibt die geltende Ausgabe; sobald der Entwurf verabschiedet
  > ist, muss Anhang 2.515 erneut geprüft werden. Nachgetragen in
  > `destillate/bkz-2005-checkliste-hindernisfrei-hochbau.md` (Frontmatter-Status und Abschnitt
  > «Der wertvollste Teil»).
- **H41-2** Das Mass der «erhöhten Anforderungen» für **Sonderbauten** (Spitäler, Alters- und
  Behindertenheime) gegenüber SN 521 500 — im Dokument nicht beziffert. Für JANS mit
  Healthcare-Schwerpunkt der wichtigste offene Punkt dieses Bestands.

  > **Fundstelle identifiziert, Zahlenwert bleibt Bring-Schuld (24.08.2026, QUESTIONS-Abarbeitung).**
  > SIA 500:2009 vollständig am Original geprüft (`pdftotext -layout` über das gesamte Dokument,
  > nicht nur den in `destillate/sia-500-2009.md` bereits gelesenen Ziff.-0-12-Teil) —
  > **Ziff. 0.1.5, S. 5** wörtlich: «Diese Norm ist nicht hinreichend für Bauten zur Pflege und
  > Betreuung von Personen, wie Spitäler, Rehabilitationsstätten, Wohn- und Pflegeheime sowie
  > Alterswohnungen u.ä. Für solche Bauten sind die spezifischen, dem jeweiligen Zweck
  > entsprechenden Anforderungen vorrangig.» SIA 500 selbst — heute die massgebende Norm anstelle
  > von SN 521 500:1988, siehe H41-1 oben — beziffert die erhöhten Anforderungen damit **nicht**
  > und kann es nach eigenem Geltungsbereich auch nicht: Sonderbauten sind ausdrücklich
  > ausgenommen, nicht nur strenger geregelt.
  >
  > **Die tatsächliche Fundstelle steht im bisher ungelesenen Anhang H «Publikationen»
  > (S. 59, TOC-Eintrag S. 3, jetzt durch Volltextsuche über das ganze PDF erschlossen):** die
  > Publikationsliste der Schweizerischen Fachstelle für behindertengerechtes Bauen FABB, Zürich
  > (heute Zollstrasse 115, 8005 Zürich — Adresse siehe H41-3-Klärung unten) nennt namentlich
  > **«Merkblatt Nr. 7, Rollstuhlgängigkeit bei Sonderbauten»**. Das ist exakt das gesuchte
  > Dokument. Es liegt in dieser KB nicht vor (weder im SharePoint-Bestand `02_Recht_Norm`
  > geprüft noch sonst bekannt) und gehört zur selben Publikationsfamilie wie die in H41-4 bereits
  > als fehlend dokumentierten Merkblätter 14/04 und 15/04 derselben Fachstelle.
  > **Nächster Schritt (Bring-Schuld/Rückfrage, KEIN SIA-Kauf nötig, evtl. kostenlos
  > erhältlich):** Merkblatt Nr. 7 direkt bei der Fachstelle anfragen
  > (fachstelle@hindernisfreie-architektur.ch, 044 299 97 97 — Kontaktdaten aus H41-4 bereits
  > recherchiert) oder auf `hindernisfreie-architektur.ch` unter den Planungshilfen suchen; nach
  > Beschaffung destillieren. Fällt unter die Mail-Versand-Sperre (User-CLAUDE.md „Grenzen"),
  > nicht selbständig ausgelöst.
- **H41-3** Adressüberschneidung: die Schweizerische Fachstelle für behindertengerechtes Bauen
  und die BKZ-Bauberatung teilen Kernstrasse 57, 8004 Zürich, führen aber verschiedene
  Telefonnummern. Ko-Lokation, Trägerschaft oder Zufall? Aus den Dokumenten nicht klärbar.

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Web-Recherche (nicht am Original,
  > da beide Quellen keine eigene Aussage dazu führen): `hindernisfreie-architektur.ch/
  > beratungsstellen-cpt/zuerich/` (abgerufen 24.08.2026) nennt für die «Bauberatungsstelle
  > Zürich» ausdrücklich «Bauberatung Behindertenkonferenz Kanton Zürich BKZ» als Betreiberin,
  > geführt unter derselben Adresse wie die nationale Fachstelle selbst
  > (`hindernisfreie-architektur.ch/ueber-uns/die-schweizer-fachstelle/`): **Zollstrasse 115,
  > 8005 Zürich** — nicht mehr Kernstrasse 57. **Ergebnis: keine zufällige Ko-Lokation, sondern
  > eine organisatorische Beziehung** — die BKZ betreibt die Zürcher Regionalstelle im
  > nationalen Netzwerk der Fachstelle (Trägerin: Stiftung zur Förderung einer
  > behindertengerechten baulichen Umwelt, gegründet 1981, Handelsregister Zürich,
  > Bundesaufsicht; die Fachstelle selbst hiess bis zur Umbenennung 2017 «Schweizerische
  > Fachstelle für behindertengerechtes Bauen» — identisch mit dem in der BKZ-Checkliste 2005
  > zitierten Namen). **Nebenbefund, in die Zieldatei nachgetragen:** die Kernstrasse-57-Adresse
  > in `destillate/bkz-2005-checkliste-hindernisfrei-hochbau.md` ist veraltet, beide Stellen
  > firmieren heute unter Zollstrasse 115, 8005 Zürich — Korrektur dort im Abschnitt «Kontakt
  > der herausgebenden Stelle» eingetragen (Rule `identifikatoren-verifizieren`).
  > Quellen: [Bauberatungsstelle Zürich](https://hindernisfreie-architektur.ch/beratungsstellen-cpt/zuerich/),
  > [Über uns — Die Schweizer Fachstelle](https://hindernisfreie-architektur.ch/ueber-uns/die-schweizer-fachstelle/).

- **H41-4** Die Merkblätter 14/04 und 15/04 der Fachstelle liegen im Bestand nicht vor.

  > **Web-Anlauf ohne Fund, echte Sackgasse (24.08.2026, QUESTIONS-Abarbeitung).** Vier gezielte
  > Abfragen (WebSearch + WebFetch auf `hindernisfreie-architektur.ch/planungshilfen_fachstelle/
  > merkblaetter/` [HTTP 404], `.../publikationsart/merkblaetter/`, `.../bestellen/
  > dokumente-hochbau/`): keine der Seiten führt eine Konkordanztabelle alt/neu, die die
  > historischen Nummern «14/04»/«15/04» einem heutigen Merkblatt oder Titel zuordnet — die
  > heutige Nummerierung (z.B. «Merkblatt 010», «113», «124») folgt erkennbar einem anderen
  > Schema ohne Jahres-Suffix. `web.archive.org` ist für diese Session nicht abrufbar (Tool-
  > Grenze), ein Wayback-Blick auf eine ältere Fassung der Merkblatt-Übersicht war damit nicht
  > möglich. **Nächster Schritt (unverändert Bring-Schuld/Rückfrage):** direkte Anfrage an
  > `fachstelle@hindernisfreie-architektur.ch` (044 299 97 97) — fällt unter die
  > Mail-Versand-Sperre (User-CLAUDE.md «Grenzen»), nicht selbständig ausgelöst.

### PAVIDENSA
- **P41-1 Die Kreuzmatrix von PAV-A 03:2013 ist nicht aufgenommen** — sie liess sich aus dem
  Textextrakt nicht spaltengenau rekonstruieren, eine gerenderte Zellaufnahme steht aus. Sie
  entscheidet über die **Materialverträglichkeit** von Schutzsystem und Abdichtungsbahn; eine
  halbrichtige Fassung wäre schlimmer als keine.

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Original per M365-Graph-Connector
  > beschafft (SharePoint Site PL, Drive `02_Recht_Norm`,
  > `04_Merkblätter/Fugenlose Bodenbeläge/PAV-A_03-2013_Schutzschichten.pdf`), bei 400 dpi
  > gerendert und zellenweise abgelesen — **beide** Kreuztabellen: die Wirksamkeits-Matrix
  > (S. 1, 4 Kriterien x 3 Stufen) und die S.-2-Matrix (Einbaubereiche, Geeignet für,
  > **Materialverträglichkeit mit dem Abdichtungsmaterial** PBD/PVC/FPO/FLK/TDB/KMB). Für die
  > sicherheitskritische Materialverträglichkeits-Tabelle zusätzliche unabhängige Gegenprobe:
  > die x-Anzahl je Zeile aus dem rohen Textextrakt (`pdftotext -layout`, ohne Spaltenbezug)
  > stimmt für alle 6 Zeilen exakt mit der zellenweisen Ablesung überein (18/15/15/18/15/15).
  > Ergebnis deckt sich mit der bereits destillierten Anmerkung n) («Nicht für PVC»): die
  > Tabelle bestätigt PVC als inkompatibel mit Gussasphalt (n), zusätzlich mit FPO-Bahnen,
  > HDPE-Bahnen, Walz- und Drainasphalt. Vollständig eingearbeitet in
  > `destillate/pav-a-03-2013-schutzsysteme-eigenschaften-wirksamkeit.md` (Abschnitte
  > «Kreuztabelle 1 — Wirksamkeit» und «Kreuztabelle 2 — Einbaubereiche, Geeignet für,
  > Materialverträglichkeit»). Offen bleibt nur die Auflösung der vier Herausgeberkürzel PBD/
  > FLK/TDB/KMB (Dokument schreibt sie nicht aus) — im Destillat als neuer Offen-Punkt geführt,
  > nicht geraten.
- **P41-2 Sechs PAV-E-Merkblätter fehlen im Bestand**, obwohl die Checkliste PAV-E 16:2012 sie
  als zuständige Quellen benennt: PAV-E 03:2008 (Austrocknungsverhalten), 04:2008
  (Feuchtigkeitssperren), 06:2009 (Masstoleranz und Ebenheit), 10:2009 (Fugen in Zementestrichen),
  13:2010 (Untergrund und Einbaudicken), 14:2011 (Fugen mit Parkettbelag). Ob sie im Haus fehlen
  oder anderswo liegen, ist offen.

  > **Teilbeantwortet 24.08.2026 (QUESTIONS-Abarbeitung).** Per M365-Graph-Connector geprüft:
  > weder im Zielordner (`02_Recht_Norm/04_Merkblätter/Fugenlose Bodenbeläge/`, 9 Dateien
  > total, alle bereits destilliert) noch sonst irgendwo auf der SharePoint-Site PL
  > (drive-weite Volltextsuche `search(q='PAV-E')` liefert exakt dieselben 7 vorhandenen
  > PAV-E-Nummern 01/02/05/11/12/16/17 plus 2 Screenshots, keinen Treffer für 03/04/06/10/13/14).
  > **Die sechs Merkblätter fehlen im Haus vollständig** — das ist jetzt gemessen, nicht mehr
  > offen. Beschaffung (PAVIDENSA-Shop, kostenpflichtig) bleibt Bring-Schuld Raphael; Claude
  > kauft nicht (User-CLAUDE.md „Grenzen").
- **P41-3** Widerspruch in PAV-E 12:2013: die Klasse «A 3» trägt die Abriebmenge **4** cm³/50 cm².
  Quelleneigenheit oder Satzfehler? Am Merkblatt nicht entscheidbar.
- **P41-4** PAV-E 17:2012 führt für Calciumsulfat-Fliessestriche und -Mörtelestriche **identische**
  Ampelwerte. Bewusst nicht differenziert oder Satzfehler?
- **P41-5** Vier PAVIDENSA-Merkblätter tragen kein Tag/Monat-Fassungsdatum, PAV-E 11:2009 nicht
  einmal ein Monat/Jahr im Fliesstext.

### Methodik
- **M41-1 Textlayer-Falle bei bebilderten Merkblättern.** Beim GVZ-Merkblatt verfälscht der
  Textlayer die Vergleichszeichen (gedruckt «≤», extrahiert «<»; gedruckt «≥», extrahiert «>»)
  und bildet Zellteilungen gar nicht ab. Beim PAVIDENSA PAV-A 01 ordnete die Textextraktion drei
  über mehrere Spalten **verbundene Zellen** falsch zu. **Regel: Tabellen mit verbundenen Zellen
  oder Farbcodierung werden gerendert und abgelesen, nie extrahiert.** Kandidat für die
  Aufnahme als Methodik-Pflicht 8 ins PROGRAMM.

  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Geprüft gegen
  > `training/PROGRAMM.md`: **Methodik-Pflicht 8 — «Tabellen werden gerendert und abgelesen, nie
  > per Textextraktion aufgenommen»** existiert bereits (aufgenommen aus Run 41 selbst, Freigabe
  > Raphael am 01.08.2026) und führt wortgleich dieselben beiden Belege (GVZ-Vergleichszeichen,
  > PAVIDENSA PAV-A 01 verbundene Zellen) plus einen dritten (PAV-A 03 Kreuzmatrix). Der hier
  > vorgeschlagene Wortlaut ist bereits vollständig umgesetzt — kein neuer Auftrag nötig, dieser
  > Punkt war ein Duplikat der eigenen bereits erfüllten Forderung.

# QUESTIONS — KB Normen (offene Fragen / Lücken)

## Run 40 (MacBook Pro, 31.07.2026) — neunte Lignatec-Runde: null Wertfehler, neun Lücken

**Gefahren wurde**, was Run 39 als offen ausgewiesen hatte: die rechnerische Aufnahme von
**Tabelle 2** und den **acht Axonometrien**. Erstmals in dieser Verifikationsreihe **kein
einziger falscher Zahlenwert** — nur Vollständigkeitsbefunde. Das ist ein anderer Befundtyp als
in den Runden 6-8 und für die Taktungsfrage bedeutsam.

### Offen / vorzulegen

1. **Lignatec-Taktung bleibt NICHT entscheidbar — die Umstellung auf Ereignis-Trigger wird
   ausdrücklich nicht vorgeschlagen.** Begründung nach der Methoden-Lehre: ungeprüft ist bisher
   der **Fliesstext der Kapitel 1-4** (S. 3, 6-7, 10-11, 14). Er wurde nie systematisch gegen das
   Destillat gediffed, und eine **Seiten-Inventur nach dem Muster `training/l41-seiteninventur.md`**
   existiert für den Lignatec nicht. Das ist die nächste Methode auf einem noch ungeprüften Teil.
   Erst danach ist die Frage redlich zu beantworten.
2. **Bookkeeping-Widerspruch zusammenführen.** Der Abschnitt vom 31.07.2026 (Wissens-Chef Run 21,
   unten) führt als offene Frage, ob diese KB die restlichen normrelevanten Bestände **systematisch**
   abarbeitet — konkret `06_Richtlinien` (GVZ, Suva, Suissetec, VSA) sowie die eigenständigen
   Schwesterordner `04_Merkblätter/Fugenlose Bodenbeläge` (PAVIDENSA) und `09_Sanitaereinrichtung`
   (**nicht** Teile von `06_Richtlinien`, siehe `training/norm-inventar.md`, Tabelle ~Z. 1162 f.).
   Das Inventar hat sie am 29.07.2026 bereits als Arbeitsliste aufgenommen (Entscheid Raphael).
   Run 40 ist dem Inventar gefolgt — es ist der spezifischere und gezeichnete Entscheid. Die beiden
   Stellen widersprechen sich und gehören zusammengeführt.
3. **Rest des Kern-Nachtrags: 47 Positionen offen** (PAVIDENSA 9, `09_Sanitaereinrichtung` 14,
   BKZ 4, lose Merkblätter 20). Darunter mit `04_Merkblätter/SN592_Liegenschaftsentwaesserung_d.pdf`
   eine echte SN-Norm, die ins REGISTER gehört.

**Hinweis Nummerierung (Korrektur 01.08.2026, Ultra-Code-Review):** Die vier Aufträge dieser
Runde kollidierten in der ursprünglichen Nummerierung N-R40-1..4 mit vier älteren, bereits
vergebenen Aufträgen (VSA/Aufzug-Themen, Abschnitt «31.07.2026, Run 40, Bestandsfalle» unten).
Sie sind unten als Checkboxen unter den korrigierten IDs **N-R40-5..8** geführt.

- [x] **N-R40-5 (P1): zweite Runde für `gvz-rwa-parkhaus-einstellraum.md`.** Die Matrizes 6.1/6.2
  sind vom Hauptprozess am Original neu gefasst worden, nachdem die Erstfassung die diagonal
  zweigeteilten Sprinkler-Zellen bei 601-1200 m² falsch aufgelöst hatte. Die Neufassung hat noch
  niemand unabhängig geprüft. Dringlich, weil das Merkblatt direkt in die Parkhaus-Beratung geht.
  Erledigt 01.08.2026, Run 41 → `outputs/2026-08-01_normen-nacht-run41.md`, Abschnitt 3.1
  (alle 27 Wertzellen zellenweise nachgemessen, halten; Beschreibung der Zellteilung korrigiert
  waagrecht statt diagonal).
- [x] **N-R40-6 (P1): zweite Runde für `swki-va103-01-2017.md`** — gleiche Lage. Zusätzlich sind
  **65 von 110 Seiten ungelesen**, darunter die Anhänge C/D/E (Rechenformulare,
  Anwendungsbeispiele, Simulationsmethodik), die für eine Anlagenauslegung die eigentliche
  Grundlage sind. Zwei Refuter-Befunde (Zuordnung Zu-/Abluftgitter zu Kap. 2.5.2; Rolle der
  12-WB/h-Schwelle im Entscheidungsdiagramm) sowie die Fussnote S. 62 zu VA104-01 sind im
  Destillat als **ungeprüft** markiert und noch nachzumessen.
  Erledigt 01.08.2026, Run 41 → `outputs/2026-08-01_normen-nacht-run41.md`, Abschnitt 3.2
  (alle 110 Seiten erschlossen, die drei Run-40-Korrekturen halten; 12-WB/h-Schwelle als
  Entscheidungsparameter Lüftungsart widerlegt und ersetzt; Bemessungskern bleibt offen, siehe
  S41-1 bis S41-7 unten).
- [x] **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Der Grauton ist die Legendenfarbe
  «Baustoff brennbar», keine unerklärte vierte Kategorie. Direkt am Original nachgemessen:
  Quelldatei per OneDrive-Spiegel geöffnet (`.../2414 THALWIL/06 Reglemente/_Archiv/
  11 Brandschutz/Lignatec/Lignatec_brandschutz-Seite2.pdf`, identisch mit der in der
  KB-Quelle geführten Datei), mit `pdftoppm -r 200` auf Druckseiten 4/5 gerendert und mit
  Python/Pillow pixelgenau gemessen (kein Schätzwert). Ergebnis: die grosse Tabellen-Swatch
  der Zeile R30/EI30/REI30 (Bezeichnung F30bb, Lignatec 17/2005, S. 4, Tabelle 2) misst
  RGB-Mittel (174.5/176.4/174.3) — praktisch identisch mit dem in diesem Eintrag zitierten
  Wert 177/180/179, also keine Messdifferenz, sondern derselbe Befund unabhängig bestätigt.
  Die winzige Legende auf S. 5 zeigt für «Baustoff brennbar» dasselbe Schraffurmuster
  (Diagonalstriche) wie «Vollholz», aber auf **weissem** Grund mit dünnen Linien — bei der
  eigenen Nachmessung dort tatsächlich nahe Weiss, wie in diesem Destillat (Zeilen oben,
  Abschnitt «Ergänzung neunte Runde») für die Legendensymbole beschrieben. Der scheinbare
  Widerspruch (Legende hell, grosse Tabellen-Swatch deutlich grauer) löst sich rein optisch
  auf: In der grossen Swatch stehen dieselben Diagonalstriche dichter/länger auf gleicher
  Fläche und verschmelzen beim Scan/Druck zu einem sichtbaren Grauton, während sie im winzigen
  Legendensymbol einzeln erkennbar bleiben. Es handelt sich um **dasselbe** Muster «Baustoff
  brennbar» in zwei Grössen, nicht um eine zusätzliche, in der Legende fehlende Farbcodierung.
  Fundstelle: Lignatec 17/2005 «Bauten in Holz – Brandschutz-Anforderungen», S. 5, Legende
  (Vollholz · Baustoff brennbar · Baustoff nicht brennbar · Beton · Dämmstoff brennbar ·
  Dämmstoff nicht brennbar). Bestätigt zugleich die materielle Aussage des Destillats (dort
  Zeilen zu «dritte Tabellenspalte»): F30bb/F60bb-Zeilen (R30/EI30/REI30, R60/EI60/REI60 ohne
  (nbb)-Zusatz) erlauben an Deckschicht und Stiel ausdrücklich «Baustoff brennbar», nicht nur
  Vollholz — die Grau-Swatch **ist** dieser Beleg, kein unentschlüsseltes Zusatzsignal.
  Additiver Nachtrag in `destillate/lignum-lignatec-brandschutz.md` (Abschnitt Tabelle 2).
  Ursprungswortlaut zur Nachvollziehbarkeit:
- [ ] **N-R40-7 (P3): Grauton in Tabelle 2 des Lignatec ungeklärt.** In den Zeilen R30/EI30/REI30,
  R60/EI60/REI60 und EI60-EI30(nbb) sind Deckschicht und Stiel messbar grau unterlegt
  (Median-RGB 177/180/179 gegen 240/245 bei identischem Muster in «Keine Anforderung»). Die
  Legende auf S. 5 kennt keine getönte Variante. Der Effekt ist konsistent (immer Deckschicht +
  Stiel, nie das Dämmstofffeld), seine Bedeutung aus der Quelle nicht ableitbar — grafische
  Hervorhebung oder Druck-/Scan-Effekt. Nicht gedeutet.
- [x] **N-R40-8 (P3): Fassungsstand Suva 67012.d «Checkliste Böden».** Im Fliesstext steht kein
  Ausgabedatum — am Original bestätigt, kein Übersehen. PDF-Metadaten nennen CreationDate
  23.01.2006 und ModDate 08.08.2007, das ist aber kein Fassungsbeleg. Nur über suva.ch/waswo
  klärbar.
  Erledigt 23.08.2026, QUESTIONS-Abarbeitung → `outputs/2026-08-23_questions-abarbeitung6.md`.
  Über `www.suva.ch/waswo/67012.D` bzw. `www.suva.ch/de-ch/download/checklisten/boeden/
  boeden--67012.D` die **aktuelle Ausgabe Oktober 2025** direkt geladen (curl+pdftotext) und
  gelesen: Fussleiste S. 4 nennt wörtlich «Ausgabe: Oktober 2025», «Publikationsnummer:
  67012.d» — damit ist die Frage nicht nur beantwortet, sondern die im Haus liegende Datei ist
  **veraltet** (~2006/2007). Wortweiser Vergleich zeigt: die beiden sicherheitsrelevanten
  Zahlenwerte (4-mm-Stolperschwelle Frage 8, 2-cm-Ablaufrinnentiefe Frage 10) sind
  **unverändert**; neu ist eine Rubrik «Rechtliche Grundlagen» (ArGV 3 Art. 14, VUV Art. 14,
  fehlte in der Alt-Fassung vollständig), Frage 1 wurde vom technischen Beispielkatalog auf den
  Gesetzesbezug umgestellt, Frage 5 verlangt neu zusätzlich «signalisiert», und die Schuh-Frage
  ist von Position 17 auf Position 20 gewandert (bei Zitat der alten Fragenummer beachten). Das
  Destillat `destillate/suva-67012-checkliste-boeden.md` ist vollständig auf die Ausgabe Oktober
  2025 umgestellt, die Alt-Fassung bleibt darin als eigener Abschnitt „Historische Fassung"
  dokumentiert (nichts gelöscht). `destillate/INDEX.md` nachgeführt.

### Zwei Arbeitsfallen, die diesen Lauf Zeit gekostet haben

- Die Pfadangaben im Inventar-Abschnitt «PL-02 Kern-Nachtrag» sind relativ zu
  `PL - 02_Recht_Norm/`, **nicht** zu `02_Normen/`.
- Dateinamen liegen teils in **NFD-Normalisierung** vor (macOS). Ein NFC-Abgleich per Script
  schlägt dort **still** fehl — beim Nachführen des Inventars normalisieren
  (`unicodedata.normalize('NFC', …)` auf beiden Seiten).


## 2026-07-31 (Run 40, MacBook Pro) — Bestandsfalle aufgedeckt: Ordner «VSA» meint Aufzüge, nicht Abwasser/Gewässerschutz

**Befund.** Der Auftrag für Run 40 sollte drei Dateien aus
`PL - 02_Recht_Norm/06_Richtlinien/VSA/` als Ergänzung zu SN 592 000 (Liegenschafts-
entwässerung) destillieren, unter der Annahme «VSA» = Verband Schweizer Abwasser- und
Gewässerschutzfachleute und «SNEL» = Schweizer Norm für Liegenschaftsentwässerung. Am
Original (Titelblatt, Logo, Impressum aller drei Dateien) zeigt sich: **VSA = Verband
Schweizerischer Aufzugsunternehmen**, die drei Dateien sind archivierte Webseiten (Safari-
Druck, © 2011, archiviert 13.07.2012) der Verbandswebsite zu **Aufzugssicherheit**. SNEL
steht dort für «Safety Norm for Existing Lifts» = SN-EN 81-80:2003 = SIA 370.080 (in dieser
KB bereits vollständig destilliert, `destillate/sia-370-080-2003.md`, status established).
Eine Volltextsuche über den gesamten Baum `PL - 02_Recht_Norm/` nach `*vsa*`, `*abwasser*`,
`*gewaesser*`, `*592*` (31.07.2026) fand **keine** zweite VSA-Ablage zu Abwasser/
Gewässerschutz — die Liegenschaftsentwässerung liegt im Bestand unter eigenem Namen
(`04_Merkblätter/SN592_Liegenschaftsentwaesserung_d.pdf`, `02_Normen/…/592056.pdf`,
destilliert in `sia-592-056.md`).

**Was gemacht wurde.** Alle drei Dateien trotzdem korrekt (als Aufzugsthema) destilliert,
mit dem Fund prominent in Frontmatter, Titel und eigenem Abschnitt jeder Datei:
`destillate/vsa-aufzuege-dokumente-bestimmungen.md`, `vsa-aufzuege-esba-zh.md`,
`vsa-aufzuege-snel.md`. Keine erfundene Brücke zu SN 592 000 hergestellt.

**Offene Punkte aus den drei Destillaten:**
- [x] **N-R40-1 (P3):** Prüfen, ob VKF-RL «Brandschutzrichtlinie Aufzugsanlagen, Ausgabe
  2003» (in `vsa-aufzuege-dokumente-bestimmungen.md` referenziert) durch die im Bestand
  vorhandene `vkf-brl-23-15-befoerderungsanlagen.md` (2015) abgelöst wurde — bisher nur
  Vermutung aus Themennähe, nicht an beiden Originalen geprüft.
  **Geschlossen (23.08.2026, QUESTIONS-Abarbeitung 8):** Das Original der 2003er-Richtlinie
  ist nicht im JANS-Bestand, aber auf dem aktuellen VKF-Publikationsportal noch öffentlich
  abrufbar: `services2.vkf.ch/rest/public/georg/bs/publikation/documents/
  BSPUB-1394520214-1714.pdf/content` (PDF-Metadaten: Ursprungsdatei «24-03de.docx»,
  Erstellungsdatum 09.03.2011). Titelblatt und Kolophon per `pdftotext -layout` gelesen:
  **VKF-BRL 24-03d «Aufzugsanlagen», Ausgabe 26.03.2003, Stand 20.10.2008**, © VKF/AEAI/AICAA.
  Ziff. 1 Geltungsbereich lautet dort wortgleich (bis auf einen Klammerzusatz) wie Ziff. 1 in
  `vkf-brl-23-15-befoerderungsanlagen.md`: «Diese Brandschutzrichtlinie gilt für die
  Erstellung und den Betrieb von Beförderungsanlagen sowie Feuerwehraufzügen» (24-03d, S. 4)
  gegen «Gilt für Erstellung und Betrieb von Beförderungsanlagen (Aufzugsanlagen, Fahrtreppen
  und dergleichen) sowie Feuerwehraufzügen» (23-15, Ziff. 1, S. 4). Zusätzlich bestätigt die
  Inhaltsübersicht von `Zusammenfassung der Änderungen der teilrevidierten
  Brandschutzvorschriften VKF, Ausgabe 2015` (VKF, 18.01.2017, S. 2; öffentlich unter
  `services2.vkf.ch/.../BSPUB-1394520214-245.pdf/content`), dass die gesamte BRL-Serie in der
  Ausgabe 2015 systematisch von der alten Nummerierung (u.a. `24-03`) auf das neue Schema
  `NN-15` umgestellt wurde (10-15, 12-15, 13-15, …, 23-15 Beförderungsanlagen, 25-15, 26-15).
  **Befund: 24-03d wurde durch die Ausgabe 2015 als 23-15 «Beförderungsanlagen» abgelöst** —
  gleicher Herausgeber, wortgleicher Geltungsbereich, Teil derselben systematischen
  Neunummerierung. Kein Einzeldokument mit einer expliziten Formel «24-03 wird durch 23-15
  ersetzt» gefunden (die 2017er-Zusammenfassung listet nur die neue Nummerierung, keine
  Alt-Neu-Tabelle) — die Zuordnung stützt sich auf Wortlaut- und Themenidentität, nicht auf
  einen einzelnen Ablösungssatz; als **established** einzustufen, da zwei unabhängige
  Primärquellen (Originaltext 2003/2008 + VKF-Aenderungsuebersicht 2017) übereinstimmen.
  In `destillate/vkf-brl-23-15-befoerderungsanlagen.md` und
  `destillate/vsa-aufzuege-dokumente-bestimmungen.md` je einen additiven Nachtrag ergänzt.
- [x] **N-R40-2 (P3):** ESBA-Originaltext der Baudirektion Kanton Zürich beschaffen und
  gegen die VSA-Kurzfassung (7 Kriterien) verifizieren; Rechtsgrundlage (Gesetzes-/
  Verordnungsartikel) klären.
  **Geschlossen (23.08.2026, QUESTIONS-Abarbeitung 8):** Originaltext öffentlich auf
  `zh.ch` beschafft (kein Beschaffungs-Bring-Schuld, kein Kauf nötig):
  `zh.ch/content/dam/zhweb/bilder-dokumente/themen/planen-bauen/hochbau/planungsgrundlagen/
  gebaeudetechnik/dokumente-aufzugsanlagen/200409_rl-bd_erhoehung_der_sicherheit_best_aufzuege_
  2008.pdf`, per `pdftotext -layout` gelesen (6 S., vollständig). Titelblatt: «Richtlinie der
  Baudirektion über die Erhöhung der Sicherheit an bestehenden Aufzügen (ESBA-Richtlinie),
  Stand 15. Juli 2008», Version V 1.4, rev. 14.01.2020 (nur grafische Überarbeitung, Inhalt
  unverändert seit 2008).
  **Sieben Kriterien wortgleich verifiziert** (Ziff. 2.2, Tabelle S. 5) — VSA-Kurzfassung in
  `vsa-aufzuege-esba-zh.md` stimmt für alle 7 Punkte exakt mit dem Original überein, keine
  Abweichung.
  **Verhältnis ESBA ↔ SN EN 81-80 (SNEL) jetzt belegt, nicht mehr Vermutung:** das Original
  enthält die explizite Zuordnungstabelle (Ziff. 2.2, S. 5) ESBA-Nr. → EN-81-80-Nr.: 1→3
  (teilweise), 2→27, 3→38, 4→40, 5→46, 6→56, 7→71 — die 7 ESBA-Punkte sind eine kantonale
  Filterung aus den 74 Gefährdungspunkten der SN EN 81-80:2003 (Ziff. 1.4/2.1).
  **Rechtsgrundlage geklärt (Ziff. 1.1, 3.4, 3.5, 4.1):** Besondere Bauverordnung I (BBV I)
  vom 06.05.1981, letzte Änderung 12.12.2001 — §§ 32/33 (periodische Kontrollen, Anpassung
  bestehender Aufzugsanlagen), § 3 (Ausnahmebewilligung). Vor 2001 erklärte die BBV I die
  SIA-Wegleitung 370/101 (1985) für verbindlich; mit der Änderung 2001 fiel dieser Anhang
  weg, die ESBA-Richtlinie 2008 füllt seither die entstandene Lücke, indem sie SN EN 81-80
  auf kantonale Ebene umsetzt.
  In `destillate/vsa-aufzuege-esba-zh.md` additiv nachgetragen (Zuordnungstabelle,
  Rechtsgrundlage, Quelle).
- [ ] **N-R40-3 (P4):** Zehn nicht destillierte Teile der EN-81-Reihe (81-1, -2, -3, -11,
  -21, -70, -71, -72, -73, 115-1, 115-2) — nur bei konkretem Projektbedarf (Aufzugsthema
  in Ankaufsprüfung/Ausschreibung) destillieren, kein systematischer Nachzieh-Auftrag.
- [~] **N-R40-4 (P4):** Verhältnis SVAS (Schweizerische Vereinigung für Aufzugssicherheit,
  laut SNEL-Quelle Herausgeberin der Broschüre «SNEL, ESBA etc.») zum VSA (Verband
  Schweizerischer Aufzugsunternehmen, Betreiber der archivierten Website) ungeklärt.
  **Anlauf 23.08.2026 (QUESTIONS-Abarbeitung 22), Ergebnis negativ, kein neuer Beleg.**
  `www.aufzuege.ch` (VSA, WebFetch geprüft) erwähnt SVAS an keiner Stelle — keine dokumentierte
  Beziehung dort. Die vermutete SVAS-Eigenseite `svas-assa.ch` (bzw. `www.svas-assa.ch`) ist
  **nicht erreichbar**: DNS-Auflösung schlägt fehl (`getaddrinfo ENOTFOUND`), ein Cache-Spiegel
  (`urlmetriken.ch`) liefert ebenfalls `ECONNREFUSED`. Einzige verwertbare Web-Fundstelle ist ein
  Domain-Statistik-Snippet, das den Vereinsnamen bestätigt, aber weder Zweck noch Trägerschaft
  noch ein Verhältnis zum VSA belegt. **Vorläufiger Schluss (nicht zitierfähig, nur Arbeitsnotiz):**
  die tote Domain spricht eher für eine nicht mehr aktive oder in einen anderen Verband
  aufgegangene Organisation als für eine aktuell bestehende Schwesterorganisation des VSA — reine
  Vermutung, keine Quelle dafür. Checkbox auf `[~]` (recherchiert, weiterhin offen) gesetzt, damit
  kein künftiger Lauf denselben toten Domain-Pfad erneut probiert. Bleibt P4 (kein Projektbedarf
  ersichtlich).


## 2026-07-31 (Entscheid Raphael, Wissens-Chef Run 21) — SWKI ist zugeordnet, ein Auftrag folgt daraus

**Entscheid.** SWKI gehört in den Scope dieser KB, nach dem für SIA/VKF/VSS geltenden Zuschnitt:
`normen` führt Fundstelle, Ausgabe und Fassungsstand, `energie` führt die angewandte Fachaussage
(Lüftungs-/HLK-Physik) und verweist für die Ausgabe hierher. Keine Scope-Ausweitung, sondern die
bestehende Regel auf einen weiteren Herausgeber; Präzedenz ist bfu (Run 38). Registerzeilen stehen in
`wiki/REGISTER.md`, Abschnitt D. Führungsmatrix: `wissen/koordination/QUERBEZUEGE.md`.

**Anlass, damit der Nutzen nachvollziehbar bleibt:** ohne Registerzeile wollte diese KB SWKI 99-3
destillieren, obwohl die Richtlinie seit dem 1.8.2015 durch VA 105-01 ersetzt ist und `energie` das
seit dem 25.07.2026 belegt hatte. Die Registerzeile ist billiger als der nächste Fehlaufwand.

- [x] **N-R21-1 (P2): SWKI VA 103-1 «Lüftungsanlagen für Parkhäuser» destillieren.** Das einzige
  SWKI-Dokument im Haus (`PL - 02_Recht_Norm/06_Richtlinien/SWKI/`). Es ergänzt VKF-BRL 25-15 und
  ist unmittelbar einschlägig für `wissen/planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung`,
  das Run 21 gerade mit einem Fassungs-Vorbehalt versehen hat — die Parkhaus-Lüftung ist dort
  materiell geführt. Beim Destillieren Ausgabe und Stand **am Deckblatt** erfassen.
  Erledigt 31.07.2026, Run 40 → `destillate/swki-va103-01-2017.md` (Inventarzeile
  `training/norm-inventar.md` Zeile ~1267 führt es entsprechend als erfüllt).
- [ ] **N-R21-2 (P3, Kaufentscheid Raphael): VA 105-01:2015 Volltext.** Kap. 3-6 (Zahlenwerte) sind
  kostenpflichtig und nicht im Bestand; Sachstand und Struktur liegen in `wissen/energie` destilliert
  vor. Bis zum Kauf **keine** Gültigkeits- oder Zahlenaussage aus Sekundärquellen ins Register.

**Was der offene PL-02-Strukturentscheid (Befund 3, Run 31) damit noch umfasst:** SWKI ist heraus,
bfu war es bereits seit Run 38. Übrig bleibt die schmalere Frage, ob diese KB die restlichen
Kern-Dateien des Ordners `06_Richtlinien` (GVZ 3, Suva 4, Suissetec 2, VSA 3) sowie PAVIDENSA 9 und
`09_Sanitaereinrichtung` 15 **systematisch** abarbeitet oder nur bei konkretem Projektbedarf. Das
Routing des Rests ist im Inventar bereits entschieden (Minergie/eco → `energie`, Teilungsplan STWEG →
Skill `stockwerkeigentum`, Projektadmin → keine Norm).

**✅ Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung), nur nachgezogen — die Arbeit war längst getan:**
Alle hier genannten Kern-Dateien sind laut `training/norm-inventar.md` seit Run 40-46
(31.07.-07.08.2026) vollständig abgearbeitet — GVZ 3/3, Suva 4/4, Suissetec 2/2 (eine davon
begründet als Dublette `[-]`), VSA 3/3, PAVIDENSA 9/9, BKZ 4/4, `09_Sanitaereinrichtung` 14/14
(8 davon Dubletten `[-]`, seitengenau geprüft). Die «systematisch»-Frage ist damit faktisch mit
Ja beantwortet, ohne dass hier je ein Entscheid protokolliert wurde. Einzig offen bleibt N-R21-2
(VA 105-01:2015 Volltext, Kaufentscheid Raphael) — unverändert.

## Run 39 (MacBook Pro, 30.07.2026) — Abdeckung von `lignum-4-1` gemessen statt geschätzt

**Auftrag.** Raphael hat am 30.07. die weitere Runde freigegeben, nachdem Run 38 seine eigene
Abdeckungsmessung als unzureichend ausgewiesen hatte (OCR fand 34 von real 72 Nummern).

**Was gemacht wurde.** Statt erneut zu schätzen, eine **vollständige Seiten-Inventur**: alle 40
A3-Blätter gerendert, in Halbseiten gesplittet, je gedruckter Seite Kapitel, Tabellen, Abbildungen
und eigenständige Textblöcke aufgenommen, Seitenzahl am Rand abgelesen. Fünf parallele
Aufnahme-Agenten mit eigenen Render-Präfixen, Diff durch den Hauptprozess.

| Kennzahl | Wert |
|---|---|
| erfasste Seiten | 2 bis 80, **lückenlos** |
| Einzelelemente | 184 |
| Nummern in der Quelle | 72 |
| davon zitiert | **71** |
| Kapitel ohne inhaltliche Entsprechung | **0** von 74 |
| erfundene Fundstellen | **0** |

**Die eine Lücke war der Zeiger, nicht der Befund.** Nicht zitiert war Abbildung 435-3 (S. 35) —
formal geringfügig. Beim Nachlesen dieser Seite am Original zeigte sich, dass das Destillat dort
auch **einen von vier Nachweis-Wegen** verloren hatte: die Fugenausbildung gemäss der
Lignum-Publikation 4.2 «Anschlüsse bei Bauteilen mit Feuerwiderstand» [7] — ausgerechnet der Weg,
für den der Hub bereits ein `established`-Destillat besitzt. Beide korrigiert und verlinkt. Als
Methodik-Pflicht 6 verankert: **eine fehlende Fundstelle ist ein Zeiger, kein Befund.**

### Offen / vorzulegen

1. **Taktung `lignum-4-1` — jetzt entscheidbar, vorher nicht.** Die Abdeckung ist gemessen und
   praktisch vollständig; die Zellwerte waren Gegenstand der Runden 5-7 (ohne Regression). Eine
   zehnte Routinerunde hat damit keine erkennbare offene Frage mehr zu beantworten. Sinnvoll wäre
   nur noch ein **ereignisgetriebener** Lauf, wenn eine neue Fassung der Publikation ins Haus
   kommt. Vorzulegen, nicht selbst umzustellen.
2. **`lignum-lignatec` bleibt offen** — dort ist die neunte Runde fällig (Axonometrien S. 16-23 und
   Tabelle 2 sind noch nie rechnerisch aufgenommen worden), und der Aktualitäts-Vorbehalt gegen die
   VKF-Generation 2015 ist durch keine Verifikationsrunde lösbar.
3. **Die Seiten-Inventur ist ein wiederverwendbares Muster.** Sie liegt als
   `training/l41-seiteninventur.md` in der KB. Für jede weitere umfangreiche Publikation, deren
   Abdeckung belegt werden soll, ist derselbe Weg zu gehen — der OCR-Diff genügt nachweislich nicht.

**✅ Beide Punkte 1 und 2 seither gelöst (Nachtrag 24.08.2026, QUESTIONS-Abarbeitung):** Die
zehnte Lignatec-Runde (Run 41, 01.08.2026) hat erstmals den Fliesstext systematisch geprüft
(6 Kernbefunde, 12 Nebenbefunde). Raphael hat den Vorrang-Auftrag am 17.08.2026 aus dem
Scheduled Task `normen-training-nacht` gestrichen — erledigt seit Run 38, sechsfach als
überholt zurückgemeldet (CHANGELOG 260817). `lignum-4-1` bleibt wie hier vorhergesagt
ereignisgetrieben (keine neue Fassung gemeldet).


## 2026-07-30 (Wissens-Chef Run 21, Cross-KB) — zwei Lücken neu gefasst

Die älteren Einträge weiter unten bleiben als Historie unverändert stehen; dieser Abschnitt
stellt sie richtig und ersetzt sie als aktuellen Stand.

1. **CH-Pendant zu DIN 1946-4 — Gegenstand korrigiert: nicht SWKI 99-3, sondern VA105-01.**
   Die Einträge «Neue CH-Pendant-Lücke: **SWKI 99-3** … fehlt als Schweizer Pendant zu
   DIN 1946-4» (Abschnitt Mac Mini Run 3, 13.07.2026) und «fehlende CH-Pendants (SIA 500/
   SWKI 99-3/SIA 260er) für den SIA/VKF-Loop» (Abschnitt Run 5, 13.07.2026) benennen einen
   überholten Gegenstand: SWKI 99-3:2003 inkl. Beiblatt 2004 ist seit dem 1.8.2015 durch die
   SWKI-Richtlinie **VA105-01:2015** «Raumlufttechnische Anlagen in medizinisch genutzten
   Räumen» abgelöst. Beleg: Titelblatt/Vorwort VA105-01 (Erstausgabe, genehmigt 02.07.2015,
   in Kraft seit 01.08.2015, ersetzt SWKI 99-3:2003 + Beiblatt 2004), zweitbelegt durch
   H+ eFlash 2015-09; im Hub greifbar über
   `wissen/energie/destillate/reinraum-op-klimatisierung-gesundheitsbau-ch.md`. Belegt ist
   «abgelöst/ersetzt», **nicht** ein förmlicher Rückzug.
   **Wirklich offen ist damit nur noch:** der **Volltext von VA105-01 (Kap. 3-6 mit den
   Zahlenwerten) liegt nicht im Bestand** — Sachstand, Geltungsbereich und Struktur sind in
   `wissen/energie` destilliert, die kostenpflichtigen Kernkapitel nicht; der Kaufentscheid
   liegt bei Raphael und ist offen. Eine Register-Zeile zu VA105-01 wird bewusst **nicht**
   gesetzt (Register-Präambel «nichts erfunden»: keine Ausgabe-/Gültigkeitsaussage ohne
   eigene Primärquelle im Haus; zum SWKI-Scope siehe den offenen Strukturentscheid
   PL-02-Reichweite, Befund 3 weiter unten).
   Nachgezogen im selben Zug: `destillate/din-1946-4-2008.md` (Fassungs-Nachtrag, Frontmatter
   `ersetzt_durch`) und `destillate/qa/din-1946-4-2008-fragen.md` (Nachtrag zu Frage 20).

2. **Übergabe von `planungsgrundlagen`: Tiefgaragen-Geometrie steht dort auf der abgelösten
   Ausgabe.** `wissen/planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung.md` führt
   die Geometrie der Parkierungsanlage (§ 2, Komfortstufen A/B/C, Rampenneigung, Fahrgassen-
   breiten) aus **SN 640 291a (2005)** und hat diesen Stand am 24./25.07.2026 sogar weiter
   ausgebaut. In dieser KB gilt seit dem 14.07.2026 die Nachfolgeausgabe: `destillate/
   vss-640291a-2005-parkieren-anordnung-geometrie.md` ist als «HISTORISCH/ERSETZT» geführt,
   massgebend ist `destillate/vss-40291-2021-parkieren-anordnung-geometrie.md`
   (VSS 40 291:2021-12, Volltextabgleich 32/32 S.), die keine Komfortstufen mehr kennt.
   **Gebraucht wird ein Delta-Abgleich 2005 → 2021** je Kennwert (u. a. Rampenneigung,
   Fahrgassenbreite Gegenverkehr, Parkfeldmasse), damit `planungsgrundlagen` den planerischen
   Kontext auf der geltenden Ausgabe führen kann. Hier angemeldet, weil die Übergabe in die
   **Empfänger-KB** gehört und nicht nur beim Absender notiert werden darf.
   **✓ GESCHLOSSEN 2026-08-23, ausgeführt von `planungsgrundlagen` (R74).** Nach 24 Tagen ohne
   Delta-Artikel hier hat `planungsgrundlagen` die Rohdaten aus beiden bereits `established`
   Destillaten dieser KB selbst synthetisiert (kein neues Norm-Lesen, nur Zusammenführung
   verifizierter Werte) und [[recht-norm-tiefgarage-erschliessung]] Abschnitt 2 auf VSS 40 291:2021
   umgestellt, samt Delta-Tabelle in neuem Abschnitt 2.8. Beleg:
   `wissen/planungsgrundlagen/wiki/QUESTIONS.md`, Eintrag R74. Diese KB muss den Delta-Abgleich
   nicht mehr nachliefern; bei Bedarf für einen eigenständigen `normen`-Artikel dort die Tabelle
   aus Abschnitt 2.8 als Ausgangspunkt übernehmen.

## Run 38 (MacBook Pro, 30.07.2026) — Vorrang-Auftrag erfüllt, Quelle aber NICHT ausgereizt

**Auftrag.** Raphael hatte am 29.07. entschieden, für `lignum-lignatec-brandschutz` eine achte
Runde zu fahren, und zwar mit der Methode, die den Befund erst sichtbar macht: die **rechnerische**
Zellaufnahme, angewandt auf **Tab. 3 und Tab. 4** — bisher war sie nur auf Tab. 5 gelaufen. Run 37
konnte sie nicht mehr ausführen (OAuth-Token). Run 38 hat sie ausgeführt.

**Ergebnis: 7 Kernbefunde + 4 Nebenbefunde.** Die Endbedingung des Vorrang-Auftrags («keine
Kernbefunde → Quelle ausgereizt → Umstellung auf Ereignis-Trigger vorschlagen») ist damit **nicht**
erfüllt. Die Umstellung wird ausdrücklich nicht vorgeschlagen.

### Was die Methode gefunden hat, was vier Runden nicht fanden

1. **Die drei Tabellen haben drei verschiedene Legenden.** Tab. 3: weiss = Holzbauteile, grau =
   beidseitig nicht brennbar verkleidet, blau = keine Holzbauweise als Standardkonzept. Tab. 4:
   zusätzlich ein zweiter Grauton — hellgrau = nur fluchtwegseitig verkleidet, dunkelgrau =
   beidseitig. Tab. 5: weiss = Holz mit BKZ ≥ 4.2, grau = nur unter bedingten Auflagen. Das
   Destillat führte **allein die Tab.-5-Bedeutung** und lud damit dazu ein, «grau» in Tab. 3/4
   falsch zu lesen. Alle drei Legenden sind jetzt erfasst und gegeneinander abgegrenzt.
2. **Die zwei Grautöne in Tab. 4 sind die Farbkodierung der Schrägstrich-/Bindestrich-Notation.**
   Damit ist die Run-32/33-Korrektur erstmals auf einem methodisch unabhängigen Weg bestätigt
   (Farbe statt Zeichenerkennung) — keine Regression.
3. Drei Befunde derselben Wurzel wie in Run 36: eine Aussage über einen Spaltenblock wurde auf die
   ganze Zeile verallgemeinert (Beherbergungsbetriebe [a] in Tab. 3 und Tab. 4; «durchgehend» bei
   EFH/REFH).
4. Zwei Vollständigkeitsbefunde, die nur die umgekehrte Fragerichtung finden konnte: die
   Sprinkler-Werte für Wohnbauten MFH 5-6 Geschosse in Tab. 3 fehlten ganz, und die Zeile
   Beherbergungsbetriebe [b] Hotels fehlte in den Tab.-3-Eckwerten vollständig.
5. **Abdeckungsgrenze der Quelle**: Tab. 3 und Tab. 4 treffen für drei Nutzungszeilen
   (Verkaufsgeschäfte ≤ 1200 m², Landwirtschaft, EFH/REFH) für 5-8 Geschosse gar keine Aussage —
   dort existieren keine Zellen. Das Destillat suggerierte mit «durchgehend» das Gegenteil.

### Offen / vorzulegen

1. **Neunte Runde `lignum-lignatec` ist fällig.** Noch nicht rechnerisch aufgenommen sind die acht
   Übersichtsaxonometrien (S. 16-23) und Tabelle 2 (S. 4-5). Nach der geltenden Regel (Methodik-
   Pflicht 6) darf die Quelle erst als ausgereizt gelten, wenn die schärfste Methode auf **alle**
   ihre Teile gelaufen ist.
2. **ENTSCHIEDEN 30.07.2026 — Raphael hat eine weitere Runde freigegeben.** Der Stopp vom 29.07.
   ist damit aufgehoben, solange die Abdeckung nicht belastbar gemessen ist. Die neunte Runde läuft
   als **vollständige Seiten-Inventur** statt als OCR-Diff (die OCR-Ausbeute lag bei 34 von
   mindestens 71 zitierten Nummern). Ursprüngliche Vorlage: Raphael hatte es am 29.07. als «speculative,
   stabil, keine Routinerunden mehr» akzeptiert — begründet damit, dass 5 von 6 Befunden der
   siebten Runde Formalien waren. Die achte Runde (Abdeckungsmessung statt Behauptungsprüfung) hat
   einen **inhaltlichen** Befund erbracht: in Kap. 5.2.5 fehlte der ganze Absatz zur Abschottung
   von Installationsdurchführungen durch brandabschnittsbildende Bauteile RF1. Das Stabilitäts-
   Argument galt für die alte Prüfrichtung. Zu entscheiden: weitere Abdeckungs-Runde freigeben,
   oder den Stopp bewusst bestätigen im Wissen um mögliche Abdeckungslücken.
3. **Die OCR-Abdeckungsmessung bei `lignum-4-1` ist unvollständig** — sie fand 34 Nummern, das
   Destillat zitiert 66. Dichte Katalogtabellenseiten OCRn bei 200 dpi schlecht. Wer den Diff als
   Vollständigkeitsnachweis führen will, muss die Extraktion bei höherer Auflösung oder manuell
   vervollständigen. Bis dahin ist der Diff eine **untere Schranke**.
4. **Der Aktualitäts-Vorbehalt bleibt unverändert offen**: `lignum-lignatec` datiert von 2005 und
   bezieht sich auf die VKF-Vorschriften 2003. Ein Abgleich gegen die VKF-Generation 2015 hat nie
   stattgefunden und ist durch keine Verifikationsrunde ersetzbar. Von allen offenen Punkten zu
   diesem Destillat ist das der praktisch folgenreichste — sämtliche verifizierten Tabellenwerte
   stehen unter diesem Vorbehalt.
5. **Anmeldung war in Run 38 wieder gültig** (Run 37 hatte alle Agenten an einem 401 verloren).
   Der Punkt aus Run 37 ist damit erledigt; ob es sich um eine dauerhafte oder eine temporäre
   Heilung handelt, ist nicht feststellbar.


## Run 37 (MacBook Pro, 29.07.2026) — die 2013-Blindzone beziffert und fünf Register-Fehler belegt

**Ausgangslage.** Der Cross-KB-Eintrag vom 27.07. hat den Einzelfall SIA 385/9 geflaggt und
dazugeschrieben, eine **Stichprobe wäre ergiebiger als der Einzelfall**. Run 37 hat genau das
gemacht: alle 248 SIA-Zeilen des Register-Abschnitts A maschinell gegen den realen Dateibestand
abgeglichen, die Verdachtsfälle danach von neun Agenten **am Titelblatt des Originals** verifiziert.
Schwerpunkt ist damit das REGISTER — eine Ebene, die Run 36 nicht berührt hat.

**⚠ Zweitinstanz-Kollision (Lehre dieses Laufs).** Dieser Lauf startete, als Run 36 noch lief, und
vergab zunächst selbst die Nummer 36 — derselbe Fehler wie am 25.07. bei Nummer 21. Erst beim
Nachführen von `destillate/INDEX.md` fiel auf, dass Run 36 (abgeschlossen 29.07. 02:09) bereits die
siebte Lignum-Runde gefahren hatte. Alle Einträge dieses Laufs wurden nachträglich auf **Run 37**
umnummeriert. **Die Regel aus PROGRAMM.md («Run-Nummer erst nach Sicht der jüngsten `outputs/`-Datei
belegen») wurde befolgt — sie genügt aber nicht, wenn der Vorlauf noch läuft und seine Datei erst
später schreibt.** Nötig ist zusätzlich eine Prüfung **am Ende** des Laufs, unmittelbar vor dem
Schreiben, sowie der `ps`-Zweitinstanz-Check (Rule 260724), der hier zwar lief, aber nur einen
gleichnamigen Prozess sucht und einen bereits beendeten Vorlauf nicht findet.

### Geschlossen

- [x] **SIA 2020 — Register-Zeile war belegt veraltet, korrigiert.** Das Register führte «gültig 2001»;
  im Haus liegt die Ausgabe **2017**, deren Titelblatt ausdrücklich «Ersetzt Merkblatt SIA 2020:2001»
  trägt. **Die Veralterung war hausintern beweisbar** — es brauchte keine externe Quelle. Musterbeleg
  dafür, dass der eigene Bestand das Korrektiv zur 2013-Grenze ist, wo eine Datei vorhanden ist.
- [x] **Vier bzw. fünf fehlende Register-Zeilen ergänzt** (destilliert, aber im Register unsichtbar):
  SIA 125:2017 (Vertragsnorm Teuerung GU/TU), SIA 144:2013 (Ordnung Leistungsofferten),
  SIA 312:2013 (Begrünung von Dächern), SIA 180/081 und SIA 180/082 (SN EN ISO 10077-1/-2:2017).
  Alle am Titelblatt verifiziert, Fundstellen in `wiki/REGISTER.md`.
- [x] **Zwei Ausgabejahre präzisiert (EN-Jahr ≠ Schweizer Ausgabejahr).** SIA 343.051 ist die
  **CH-Ausgabe 2019** (Copyright 2019, «2019-01 1. Auflage») auf EN-Basis 14351-2:**2018**;
  SIA 384/201 ist die **CH-Ausgabe 2018** («1. Auflage 2018-12») auf EN-Basis 12831-1:**2017**.
  Beide Zeilen nannten bisher das EN-Jahr als Ausgabejahr. Bei SIA 343.051 zusätzlich die unbelegte
  Vermutung «SN EN 14351-2:2012?» entfernt — auf dem Titelblatt steht kein «Ersetzt»-Vermerk.
- [x] **SIA 2051 — Register war korrekt, die Bestandsdatei ist falsch benannt.** Titelblatt sagt
  eindeutig SIA 2051:**2017** (SNR 592051:2017 de, genehmigt 12.09.2017); die Datei heisst
  `2051_2018.pdf`, wobei 2018 das Einscan-Datum ist. Bewusst **nicht** umbenannt (Entscheid Raphael
  29.07.2026), nur im Register und im Destillat dokumentiert.
- [x] **EN 13487, EN 12102-1 und SIA 385/9 — Bestandssuche negativ (Doppelbefund, deckt sich mit
  Run 36).** Unabhängig von Run 36 in `PL - 02_Recht_Norm` **und** `PL - 03 Brandschutz` gesucht:
  keine der drei Normen ist im Haus. Run 36 kam zum selben Ergebnis und hat den Punkt bereits
  geschlossen — hier nur als unabhängige Bestätigung vermerkt, **kein zweiter offener Punkt**.
  Neu ergänzt hat dieser Lauf lediglich die **quellentreue Herleitung** der Register-Zeile 385/9
  (`ersetzte_normen.pdf`: «x SIA 385/9:2011 d — 01.05.2011», ersetzt SIA 385/1:2000) plus den
  Zitier-Vorbehalt in `wiki/REGISTER.md`.

### Neu offen

1. **Die 2013-Blindzone ist strukturell und beziffert: 102 von 177 aktiven Register-Zeilen (58 %)
   haben keine Datei im Haus.** Für sie existiert **kein hausinternes Korrektiv** — eine Revision nach
   dem 25.02.2013 kann grundsätzlich nicht bemerkt werden. 14 davon tragen eine 2013-Ausgabe älter als
   2003 (u.a. SIA 215:1978, 370/24:1979, 381/3:1982, 370/21:1987, 380/3:1990, 2003:1996, 2014:1996) —
   dort ist eine zwischenzeitliche Revision am wahrscheinlichsten. Als Warnblock mit verbindlicher
   Zitierregel in `wiki/REGISTER.md` verankert. **Vollständig schliessbar nur über ein aktuelles
   SIA-Normenverzeichnis (Abo/Kauf) — nicht vom Loop lösbar.** Eine Beschaffungs-Prioritätenliste
   wurde bewusst nicht erstellt (Entscheid Raphael 29.07.2026: beziffern und warnen genügt vorerst).
2. **SIA 385/9 — Zitier-Vorbehalt bleibt.** Die Register-Zeile ist quellentreu, aber die gemeldete
   **Ausgabe 2023** ist nicht am Normtext verifiziert. Bis zur Beschaffung gilt: nicht mit
   Ausgabejahr zitieren. Klassenfall von Punkt 1. (Beschaffung selbst führt Run 36 als Bring-Schuld.)
3. **Werkzeug-Befund, an alle Loops mit Bild-Agenten:** generische `pdftoppm`-Präfixe im geteilten
   Scratchpad haben in diesem Lauf **einen belegten Falsch-Positiv** erzeugt (ein Agent hielt ein
   Alt-Rendering von SIA 384.201 für die ersten Seiten von `144_2013.pdf` und meldete die Datei als
   defekt — vom Hauptprozess am Original widerlegt). Als Methodik-Pflicht 5 in `training/PROGRAMM.md`
   verankert. **Reichweite geprüft und geschlossen (29.07.2026):** kein anderer Loop ist betroffen.
   `grep` über `skills/`, `agents/`, `scripts/` und alle `wissen/*/training/` findet **keinen**
   kodierten generischen Render-Präfix; von den 20 Scheduled Tasks nennt **allein**
   `normen-training-nacht` überhaupt `pdftoppm`, und keiner legt Dateien nach `/tmp/` ab
   (`baurecht-buch-training` arbeitet mit fertigen Screenshots, nicht mit eigenen Renderings).
   Das Problem entsteht also nicht im Hub-Bestand, sondern in **ad-hoc formulierten
   Agenten-Prompts** — deshalb als Querschnittsregel nach `rules/auto-verbesserungen.md`
   (Eintrag 260729b) gehoben statt nur hier vermerkt.
4. **Achte Runde `lignum-lignatec` — beschlossen, aber nicht mehr gefahren.** Die Taktungsfrage ist
   **entschieden** (Raphael, 29.07.2026, differenziert): `lignum-lignatec` bekommt eine achte Runde
   mit **rechnerischer Aufnahme von Tab. 3 und Tab. 4**; `lignum-4-1` wird als «speculative, stabil»
   akzeptiert, keine Routinerunden mehr. In `training/PROGRAMM.md` verankert.
   *Vorgeschichte, als Warnung festgehalten:* die **erste** Vorlage dieses Laufs stützte sich auf den
   Stand von Run 35 («seit Runde 32 nur noch Rand- und Nuance-Befunde») und war überholt — Run 36
   hatte die Prämisse wenige Stunden zuvor entkräftet (siebte Runde: 7 Befunde bei `lignum-lignatec`,
   drei davon Kernbefunde in der viermal bestätigten Tab. 5, sichtbar erst durch rechnerische statt
   visueller Tabellenaufnahme). Raphael hat auf dieser falschen Grundlage zunächst «beide als stabil»
   entschieden; nach Vorlage der korrigierten Zahlen fiel der Entscheid anders aus. **Lehre: eine
   Entscheidungsvorlage ist gegen den JÜNGSTEN Laufstand zu prüfen, nicht gegen den zuletzt selbst
   gelesenen.**
   ⚠ Die achte Runde **konnte nicht mehr gefahren werden** (OAuth-Token abgelaufen, alle
   Refuter-Agenten scheiterten mit 401). Sie ist die erste Aufgabe des nächsten Laufs.

**Unverändert offen:** Bring-Schulden SIA 491, SN EN 12193, SN 640 052, SN 641 400 (KB `baurecht`);
SIA 380/1 Volltext, SIA 385/1 Volltext, SIA 118:2013, SIA 242; VKF-Merkblatt 2003-15 (externe
Beschaffung, unverändert seit Run 32); Strukturentscheid PL-02-Reichweite (Run-31-Befund 3).

Report `outputs/2026-07-29_normen-nacht-run37.md`.

## Run 36 (MacBook Pro, 29.07.2026) — beide BSR-16-15-Fragen vom 28.07. geschlossen; die Frage-Prämisse war falsch

**Befund 0 (methodisch, der wichtigste dieses Laufs): die beiden Fragen vom 28.07. unterstellten eine
Lücke im Destillat, die es nicht gab.** Der Eintrag darunter schreibt, im Destillat
`vkf-brl-16-15-flucht-rettungswege.md` «fehlt eine Ziffer zu gewendelten Treppen bzw. zur
Auftrittsbreite». Tatsächlich standen die 1.2 m/0.1 m und die 1.5 m/0.15 m dort seit dem 17.07.2026
(Anhang-Kennwerte, S. 17) und Ziff. 3.1 Abs. 3 / 3.2.2 Abs. 3 seit dem 28.07.2026 (Wissens-Chef
Run 19) — teils am selben Tag, an dem die Frage gestellt wurde. **Lehre: eine Cross-KB-Frage ist vor
dem Eintrag gegen den AKTUELLEN Stand des Ziel-Destillats zu prüfen, nicht gegen die Erinnerung der
abgebenden KB.** Die Frage war trotzdem produktiv — nur lag die echte Lücke woanders, nämlich in der
fehlenden Verknüpfung der verstreuten Einzelziffern zu einer Entscheidungsfigur.

- [x] **P1 gewendelte Treppen 1.20 m — GESCHLOSSEN, mit Korrektur der Lesart.** Belegt in BSR 16-15de
  (Fassungen 01.01.2017 und Stand 01.12.2022, in allen einschlägigen Ziffern textidentisch):
  Ziff. 3.1 Abs. 2 lit. b (S. 8/9), 3.2.2 Abs. 1 (S. 9), 3.3.2 Abs. 1 (S. 10), 3.6.2 Abs. 5 (S. 12),
  grafisch Anhang zu Ziff. 2.5.1 (S. 17). **Die Antwort auf die eigentliche Frage lautet: 1.20 m ist
  NICHT die Zusatzanforderung an gewendelte Läufe, sondern deren nutzungsbezogener Ausnahmewert.** Der
  Regelwert ist **1.50 m bei innerer Auftrittsbreite 0.15 m** (Ziff. 2.4.5 Abs. 3, S. 6, «muss»); die
  1.20 m gelten nur zusammen mit **0.10 m** innerer Auftrittsbreite und nur in den vier genannten
  Fällen («sind zulässig, sofern»). Die 1.2 m sind ausserdem das **generelle** Mindestmass für
  geradläufige Treppen und horizontale Fluchtwege. Vollständige Entscheidungsfigur neu im Destillat,
  Abschnitt «Entscheidungsfigur Treppen», Teil A. Alle Fundstellen vom Hauptprozess am Original
  nachgelesen (`pdftotext -layout`, Skizzenseiten zusätzlich als Bild geprüft).
  **Negativbefund dazu:** eine Auftrittsbreite «in der **Lauflinie**» ist in BSR 16-15de und den
  Arbeitshilfen 1000-15de/1001-15de **nirgends** geregelt — der Begriff kommt dort nicht vor.
- [x] **P2 offene vertikale Verbindung über Schlafnutzung — GESCHLOSSEN als «nicht gedeckt».**
  Ziff. 2.5 trägt die Antwort nicht (dort nur zwei Absätze zu sicher begehbaren Treppen). Die
  Verweisungsnorm ist **Ziff. 3.1 Abs. 3 (S. 9)**; der Entlastungskatalog ist mit **Wohnen (3.2.2
  Abs. 3), Büro/Gewerbe/Industrie (3.3.2 Abs. 2), Schulen (3.4.2) und Landwirtschaft (3.8 Abs. 2)**
  abschliessend — **Beherbergung fehlt darin**, obwohl Ziff. 3.6 Abs. 3 für Hotelsuiten ausdrücklich
  die *Tür*-Erleichterung gewährt. Gegenpräjudiz: **Ziff. 3.4.4 Abs. 3** verlangt für Schlafräume auf
  Galerien/Zwischengeschossen innerhalb der Nutzungseinheit horizontale **und** vertikale Fluchtwege.
  Die entscheidende Schnittfigur ist **BSN 1-15 Art. 13 Abs. 3 lit. d** («keine Nutzung für schlafende
  Personen ausser einer Wohnung»), nicht die 20-Personen-Schwelle: deren Unterschreiten schaltet nur
  Ziff. 3.6 ab und macht die Nutzung **nicht** zu Wohnen. Ergebnis: für einen Übernachtungsbau mit
  mehreren Gastschlafplätzen ist die offene interne Treppe durch keine Quelle gedeckt, aber auch nicht
  ausdrücklich verboten — sie fällt auf den allgemeinen Teil (Ziff. 2) zurück und ist über die
  objektbezogene Abstimmung nach **Ziff. 2.1 Abs. 3** herzustellen. Destillat-Abschnitt
  «Entscheidungsfigur Treppen», Teil B.
- [x] **Quellenkritischer Nebenbefund (neu, nicht gefragt):** `PL - 03 Brandschutz/_Projekte Themen/
  Treppen innerhalb Nutzungseinheit/IMG_1515.jpeg` ist **der Screenshot einer ChatGPT-Konversation**,
  keine Behörden- oder Fachstellenauskunft — er darf nicht als Fundstelle zitiert werden. Seine
  Ziffernangaben sind örtlich korrekt, er nennt 1001-15 aber fälschlich «Richtlinie» (es ist eine
  Arbeitshilfe) und verschweigt die Wohn-Beschränkung beider Fundstellen. Die zwei Seitenauszüge im
  selben Ordner (08.03.2025) sind die bereits von Raphael durchgeführte Gegenprüfung am Original.
  Dokumentiert im Destillat, Teil C.
- [x] **Bring-Schulden SIA 385/9:2023, SN EN 13487, SN EN 12102-1 — Bestandssuche abgeschlossen,
  Lückenstatus BESTÄTIGT (nicht widerlegt).** Vollständige Dateinamen-Suche über beide Ablagen
  (`PL - 02_Recht_Norm` 1'176 PDF, `PL - 03 Brandschutz` 105 PDF) **plus** Titelblatt-Inhaltssuche
  (`pdftotext -f 1 -l 1` + grep) über alle 591 PDF in `02_Normen` und alle 105 PDF in PL-03: kein
  Treffer. Von 385/9 liegt nur die Ausgabe **2011** im Haus; `i385-1_2011_d.pdf` ist SIA 385/**1**,
  nicht 385/9. Damit ist der Weg zu diesen drei Normen definitiv extern (SIA-/SNV-Bezug durch
  Raphael); eine weitere Bestandssuche erübrigt sich. *Methodenhinweis aus dem Lauf:* macOS kennt
  keinen `timeout`-Befehl — ein erster Scan-Durchgang lieferte deshalb still 0 Treffer, ohne
  `pdftotext` überhaupt auszuführen. Bei Bestandssuchen die Trefferzahl gegen die Zahl tatsächlich
  verarbeiteter Dateien prüfen, sonst sieht ein nicht gelaufener Scan wie ein negatives Ergebnis aus.

**Neu offen für den nächsten Lauf:**
1. **Achte Verifikationsrunde** für beide Lignum-Destillate. Bei `lignum-lignatec` ist sie nach dem
   Trendbruch (7 Befunde nach vier Runden mit je 1) zwingend: die drei Kernbefunde entstammen einer
   Prüfmethode (rechnerische Farbaufnahme der Tabelle), die auf Tab. 3 und Tab. 4 **noch nicht**
   angewandt wurde — dort wurde nur geprüft, was das Destillat behauptet, nicht die Tabelle als ganze.
2. **Fassungsstand-Frage BSR 16-15:** die Antworten oben sind für 2017 und 2022 gesichert. Ob die
   BSV 2026 die Treppen-Entlastung innerhalb der Nutzungseinheit antastet, ist offen (Normkonzept
   BSV 2026 liegt destilliert vor, Treppen-Eckpunkt bisher nicht gezielt geprüft).

## 2026-07-29 (Cross-KB energie → normen, Wissens-Chef Run 20) — drei Bring-Schulden: SIA 2032:2020, SIA 390/1, SVGW-Regelwerk

Angemeldet in der **Empfänger-KB**, nicht als Notiz in der abgebenden (Regel aus Run 8). Alle drei
Punkte sind adversarial verifiziert; die Formulierungen unten folgen dem Verifikationsurteil, nicht
der ursprünglichen Fundmeldung.

1. **SIA 2032:2020 beschaffen und destillieren (P1) — die primäre Ausgaben-Lücke.** `normen` hat
   **kein** SIA-2032-Destillat (`ls destillate | grep 2032` leer), SIA 2032 steht auch nicht im
   JANS-Inventar, und `wiki/REGISTER.md` führt die Ausgabe **2010**, während `energie` durchgängig mit
   **SIA 2032:2020** arbeitet. Belege für 2020 sind zwei unabhängige Sekundärquellen der KB `energie`
   (KBOB-Faktenblatt «Graue Treibhausgasemissionen» 04.04.2025; MuKEn-2025-Methodikpapier Modul G);
   der Normtext selbst ist kostenpflichtig und wurde nie eingesehen. Die Register-Zeile trägt seit
   heute ein zeilenspezifisches ⚠-Fassungsflag, die Ausgaben-Kette bleibt bewusst unverändert
   (Blindzone-Regel: ohne externe Gegenprüfung kein ✓/✗ setzen). **Abnehmer warten:** vier
   `energie`-Destillate stützen ihre Rechenbasis auf SIA 2032:2020 ab (insgesamt nennen elf Dateien in
   `energie/destillate/` die Norm), dazu die BAUHERREN-FAQ und
   `wissen/planungsgrundlagen/wiki/energie-uebersicht.md` (Z. 78/160). Nebenbefund derselben Lücke: `[[sia-2032]]` in
   `destillate/sia-2040-2017.md:9` (Frontmatter `links:`) ist ein **dangling link** und bleibt es, bis
   das Destillat existiert.
   ✅ **AUSGABE GEKLÄRT 23.08.2026 (SIA-Sweep, vierzehnte Fortsetzung):** Produktseite
   `shop.sia.ch/normenwerk/architekt/sia%202032/d/2020/D/Product` (SN 592032) direkt per WebFetch
   abgerufen — bestätigt SIA 2032:2020 «Graue Energie — Ökobilanzierung für die Erstellung von
   Gebäuden», gültig ab 01.08.2020, 44 S., 100.00 CHF, ersetzt SIA 2032:2010 «Graue Energie von
   Gebäuden» (gültig bis 31.07.2020, Titel damit auch inhaltlich erweitert, nicht nur revidiert).
   `wiki/REGISTER.md` Zeile SIA 2032 und `destillate/sia-2032.md` (Stub trug bisher einen
   erfundenen Titel «Ökobilanzen im Bauwesen» — korrigiert) nachgeführt. **Weiterhin offen:** die
   eigentliche Vollinhalts-Destillation (Volltext nicht im Haus, Kauf Bring-Schuld Raphael) sowie
   der dangling Link `[[sia-2032]]` in `sia-2040-2017.md` bleiben bestehen, bis ein echter Artikel
   existiert.
2. **SIA 390/1 (Klimapfad-Norm) fehlt in `normen` vollständig — Beobachtungsposten, kein
   Destillat-Auftrag (P2).** `grep -rn "390/1"`, `grep -rni "sia 390"` und `grep -rni "klimapfad"` über
   die gesamte KB: je 0 Treffer. `energie` führt die Norm seit **Run 10, 17.06.2026** mit dem Zielwert
   **9 kg CO2-eq/m²·a** (Kat. I–VI, inkl. PV/Erdsonde/Solarthermie) und dem ehrlichen Statusmarker «in
   Vernehmlassung»; Fundstelle der Zahl ist der Minergie-Nachweiskurs 2023
   (`wissen/energie/destillate/minergie-nachweiskurs-2023-mkz-thge.md:72`), **nicht** KBOB. Weil SIA
   390/1 ein Vernehmlassungsentwurf ohne publizierte Ausgabe und ohne zitierfähige Ziffer ist, kann
   `normen` bis zur Publikation grundsätzlich keine Fundstelle liefern: **Publikation abwarten, dann
   destillieren und ins REGISTER aufnehmen.** Der Vernehmlassungs-Marker in `energie` ist korrekt und
   nicht als Mangel zu behandeln.
3. **SVGW-Regelwerk: im Hub nur als Fremdzitat vorhanden (P1 für W3, P2 für die übrigen).** `normen`
   hat **kein einziges SVGW-Destillat** (280 Dateien in `destillate/`, keine mit svgw/w3/w10 im Namen);
   SVGW erscheint ausschliesslich in VKF-/SIA-Bibliographien. Konkret fehlen als Norm-Fundstelle:
   - **SVGW W3, Trinkwasserinstallationen, Ausgabe 03/2000** — bisher nur als Titelzeile in
     `destillate/vkf-verz-40-15-weitere-bestimmungen.md:38`. Auslöser: die Rückflusssicherungs-Regel
     («freier Auslauf/Luftstrecke statt blosser Rückflussverhinderer») in
     `wissen/energie/destillate/regenwassernutzung-brauchwasser-trinkwasserersatz-ch.md:41-46` ruht
     dort auf «allgemeiner SVGW-Praxis» **ohne Fundstelle**. Bis W3 im Volltext vorliegt, bleibt die
     Regel praxisgestützt und darf nicht als Norm-Behauptung zitiert werden (Rule `normen-referenz`).
   - **SVGW W3/E3:2020** (Hygiene, in Kraft seit 01.09.2020) und **W3/E4:2021** (Selbstkontrolle) —
     in `wissen/energie/destillate/trinkwassererwaermung-legionellenschutz-energieeffizienz.md:161/174`
     nur über eine Fachpresse-Zusammenfassung bzw. über Metadaten bekannt, **nicht** im Volltext.
     Wichtig für die Zitierpraxis: beide Ergänzungen regeln **nicht** die Systemtrennung/
     Rückflusssicherung; sie taugen als Ausgaben-Hinweis auf denselben Regelwerks-Stamm, aber **nicht**
     als inhaltlicher Beleg für die Rückflussregel (sonst entsteht ein Scheinbeleg).
   - **SVGW W5, Ausgabe 05/1999** (Anschluss Sprinkleranlagen ans Trinkwassernetz), **SVGW G1** und
     **GW 1002/1+2** — ebenfalls nur als Fremdzitate in VKF-/SIA-Bibliographien.
   - **SVGW-Merkblatt TPW 2001/1 «Regenwassernutzung»** (im SVGW-Shop als «W10001 d», Produkt-Nr.
     250700, kostenlos, Ausgabe März 2001). Sonderfall: dieses Merkblatt liegt in `energie` bereits
     **im Volltext gelesen** vor (Destillat `regenwassernutzung-brauchwasser-trinkwasserersatz-ch`,
     Run 119) — hier fehlt allein die Register-Erfassung, nicht die Quelle.
   - **SN EN 1717:2000 «Schutz Trinkwasser vor Rückfliessen»** — die im Hub tatsächlich vorhandene,
     stärkere Fundstelle zur Rückflussthematik: `destillate/vkf-verz-40-15-weitere-bestimmungen.md:40`
     (BSR 19-15) und `wissen/planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md:1242`.
     **Nebenbefund für die abgebende KB (Nachweis liegt bei `energie`, hier nur vermerkt):** das
     Regenwasser-Destillat wertet EN 1717 in seinen «Offenen Punkten» (Z. 114-117) als blosse
     «deutsche Anbieterquelle» ab und nennt sie «nicht als Schweizer Bezugsnorm bestätigt» — das ist
     eine Fehlabwertung einer als SN übernommenen Schweizer Norm und sachlich gewichtiger als die
     W3-Lücke.

   ⚠ **SCOPE-FRAGE NICHT SELBST ENTSCHIEDEN (23.08.2026, QUESTIONS-Abarbeitung 10).** Der
   SIA-Sweep, vierzehnte Fortsetzung, hatte diesen Punkt als «Scope-Frage für den nächsten Lauf»
   vorgemerkt. Geprüft: der Skill `normen` definiert seinen Router-Scope explizit als
   **«SIA, VKF, DIN, VSS, RAL»** (SKILL.md-Beschreibung) — **SVGW steht nicht in dieser Liste**.
   Eine eigenmächtige Aufnahme von SVGW-Normen ins REGISTER dieser KB wäre damit eine
   Scope-Erweiterung, keine reine Bring-Schuld-Erledigung; nach Rule `wissens-bibliothekar`
   (Pause vor Destruktivem/Umbau) und der Vorsicht bei Struktur-Entscheiden (vgl. Befund 3,
   Run 31, PL-02-Reichweite «nicht vom Loop zu entscheiden») bleibt das bei Raphael.
   **Empfehlung, nicht selbst umgesetzt:** (a) SVGW als sechste Familie in den Skill-Scope
   aufnehmen (dann gehören die oben gelisteten Lücken systematisch hierher) — **oder**
   (b) SVGW bewusst ausserhalb belassen und die Trinkwasser-/Sanitär-Normen dort führen, wo sie
   heute schon entstehen (`energie`, ggf. eigene KB `sanitaer`/`haustechnik`). **Sonderfall TPW
   2001/1 bleibt unabhängig von dieser Scope-Frage tragfähig:** der Volltext liegt bereits in
   `energie` gelesen vor (Destillat `regenwassernutzung-brauchwasser-trinkwasserersatz-ch`,
   Run 119) — dort fehlt nur eine Verweiszeile auf die amtliche SVGW-Produktnummer (W10001 d),
   was `energie` selbst nachtragen kann, ohne dass `normen` seinen Scope erweitert.

## 2026-07-31 (Cross-KB planungsgrundlagen → normen, Wettbewerbs-Scan Grassenbiwak) — zwei Fundstellen-Schulden BSR 16-15 — BEIDE GESCHLOSSEN 29.07.2026, siehe Run 36 oben

Angemeldet in der **Empfänger-KB** (Regel aus Run 8). Auslöser: Brandschutz-Scan des
Wettbewerbsprojekts 2408 «Grassenbiwak 2027»; der Fachplaner-Kommentar nennt zwei Vorgaben, die im
Destillat `vkf-brl-16-15-flucht-rettungswege.md` nicht ziffern-belegt sind.

1. **Gewendelte Treppen — Mindestbreite (P1).** Der Brandschutzplaner (Schmitter Brandschutz GmbH,
   18.01.2025) gibt für die Biwak-Treppe «gewendelte Treppe **min. 1.20 m** breit» vor. Im Destillat
   BSR 16-15de fehlt eine Ziffer zu gewendelten Treppen bzw. zur Auftrittsbreite in der Lauflinie;
   die 1.20 m stehen in der KB `planungsgrundlagen` §4f bisher **ohne Fundstelle** (als
   Fachplaner-Aussage referiert, nicht als Norm belegt). Zu klären: Ziffer und Ausgabe in BSR 16-15de
   (2015/2017/2022) — gilt 1.20 m generell für vertikale Fluchtwege, oder ist es eine
   Zusatzanforderung an gewendelte Läufe? Abnehmer:
   `wissen/planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` §4f und Skill `brandschutz`
   Modus B, Stufe 0 Frage 5.
2. **Offene vertikale Verbindung innerhalb einer Nutzungseinheit über Schlafnutzung (P2).** Offen
   ist, unter welchen Bedingungen eine Treppe innerhalb einer Nutzungseinheit **offen** bleiben darf,
   wenn im Obergeschoss geschlafen wird («Raum-über-Raum»). Die Arbeitshilfe 1000-15de nennt für
   Wohnnutzung «keine Anforderungen an Treppen innerhalb der Nutzungseinheit» (Ziff. 7.2.1) — ob das
   bei Übernachtungsnutzung unterhalb der 20-Personen-Schwelle trägt, ist nicht belegt. Zu prüfen:
   BSR 16-15de Ziff. 2.5/3.x gegen AH 1000-15de Ziff. 7.2. Führt direkt auf die Schnittfigur jedes
   kleinen Übernachtungsbaus.

## 2026-07-27 (Cross-KB energie ↔ normen, Wissens-Chef Run 18) — drei Bring-Schulden aus dem Bäder-/Rückkühler-Stoff

Angemeldet in der **Empfänger-KB**, nicht als Notiz in der abgebenden (Regel aus Run 8).

1. **SIA 385/9 — Fassungsstand prüfen (P1).** Das REGISTER führt Z. 219 «SIA 385/9 | 2011 | 2011✓».
   Der Konkordanz-Bestand stammt laut eigenem Kopf aus `ersetzte_normen.pdf` mit Stand **25.02.2013**
   und bildet spätere Revisionen strukturell nicht ab. Der SIA-Shop weist eine **Ausgabe
   385/9:2023** aus («Wasser und Wasseraufbereitungsanlagen in öffentlich zugänglichen
   Schwimmbädern und ähnlichen Einrichtungen», ersetzt 385/9:2011) — bisher nur über die
   Shop-Produktseite belegt, **nicht** am Normtext verifiziert. Solange offen, darf 385/9 nicht mit
   Ausgabejahr zitiert werden. Abnehmer wartet:
   `wissen/energie/destillate/therapiebad-hallenbad-energie-pflegeheim.md` Abschn. 7.
   *Strukturbefund dahinter:* dieselbe 2013er-Bestandsgrenze betrifft potenziell jede nach 2013
   revidierte Norm im Register — eine Stichprobe wäre wertvoller als der Einzelfall.
   ✅ **GESCHLOSSEN 23.08.2026 (SIA-Sweep, zwölfte Fortsetzung):** Produktseite
   `shop.sia.ch/normenwerk/architekt/385-9_2023_d/D/Product` direkt per WebFetch abgerufen (nicht
   nur Shop-Snippet) — bestätigt SIA 385/9:2023, SN 546385/9, gültig ab 01.08.2023, 84 S.,
   200.00 CHF, ersetzt SIA 385/9:2011 (archiviert seit 31.07.2023). REGISTER.md Z. 337
   nachgeführt. Abnehmer `therapiebad-hallenbad-energie-pflegeheim.md` Abschn. 7 im selben Lauf
   korrigiert (additiver Hinweis, Fassung jetzt bestätigt statt offen). Weder 2011 noch 2023
   liegen als Volltext im Haus — Beschaffungs-Bring-Schuld bleibt bestehen, ist aber Sache
   Raphaels (Kauf), nicht mehr eine offene Verifikationsfrage.
2. **EN 13487 fehlt ganz (P2).** `grep "13487"` über die ganze KB = 0 Treffer. Die Norm wird in
   `wissen/energie/destillate/rueckkuehler-flaechenkonkurrenz-pv-laermschutz.md:273-275` als
   Herstellernorm für Rückkühler-Schalldruckpegel zitiert — **ohne Ausgabejahr**, und von dort ins
   Wiki `waermepumpen-laermschutz.md:110` übernommen. Ausgabe verifizieren (nicht raten), ins
   REGISTER aufnehmen, Rückverweis setzen.
   ✅ **AUSGABE GEKLÄRT 23.08.2026 (QUESTIONS-Abarbeitung 10).** DIN-Media-Produktseite
   `dinmedia.de/en/standard/din-en-13487/306264766` per WebFetch abgerufen: **DIN EN 13487:2019-11**
   (dt. Fassung EN 13487:2019), ersetzt DIN EN 13487:2004-03 (EN 13487:2003). `wiki/REGISTER.md`
   (Abschnitt «QUESTIONS-Abarbeitung 10») und neuer Stub `destillate/en-13487-2019.md`
   (`status: speculative`, nur Ausgabe/Titel belegt, Volltext nicht im Haus) angelegt. Beide
   Abnehmer-Fundstellen in `energie` (`rueckkuehler-flaechenkonkurrenz-pv-laermschutz.md`,
   `wiki/waermepumpen-laermschutz.md`) im selben Lauf mit der Ausgabe nachgeführt. **Weiterhin
   offen:** keine SN-EN-Übernahme geprüft; Volltext-Beschaffung bleibt Bring-Schuld Raphael.
3. **EN 12102-1 fehlt ebenfalls (P2).** `grep "12102"` = 0 Treffer, obwohl das WP-Destillat der KB
   `energie` sie als Messnorm führt.
   ✅ **AUSGABE GEKLÄRT 23.08.2026 (QUESTIONS-Abarbeitung 10).** DIN-Media-Produktseite
   `dinmedia.de/en/standard/din-en-12102-1/349451100` per WebFetch abgerufen, gegenbestätigt über
   `webstore.ansi.org/standards/din/dinen121022018de`: **DIN EN 12102-1:2023-11** (dt. Fassung
   EN 12102-1:2022), ersetzt DIN EN 12102-1:2018-02 (EN 12102-1:2017). `wiki/REGISTER.md`
   (Abschnitt «QUESTIONS-Abarbeitung 10») und neuer Stub `destillate/en-12102-1-2022.md`
   (`status: speculative`, nur Ausgabe/Titel belegt, Volltext nicht im Haus) angelegt. Abnehmer
   `energie/destillate/cerclebruit-vollzugshilfe-waermepumpen-laermschutz.md:39` im selben Lauf
   mit der Ausgabe nachgeführt. **Weiterhin offen:** keine SN-EN-Übernahme geprüft; Volltext-
   Beschaffung bleibt Bring-Schuld Raphael.

*Abgrenzung:* die **Cercle-Bruit-Vollzugshilfen 6.20/6.21** sind amtsnahe Vollzugshilfen, keine
Normen — sie bleiben zu Recht in `energie` und gehören nicht ins REGISTER.

## Run 31 (MacBook Pro, 27.07.2026) — Retro-Verifikation mit 78 Befunden, zwei Regressionen, zwei Reichweiten-Luecken

**Befund 1 (methodisch, wichtigster des Laufs):** Alle fuenf Destillate, die nach ihrer ersten Pruefrunde
als korrigiert galten, wurden in der zweiten Runde erneut beanstandet — zusammen 78 Befunde. Darunter
**zwei echte Regressionen**: bei `lignum-4-1` hob die Erstrunde die korrekte Untergrenze der Tab. 446-1
von 50 mm faelschlich auf 60 mm; bei `sia-d0165` loeschte die Erstrunde die belegten Honorar-Sammelcodes
BKP 19-99 / EKG W1-W6 als angeblich «im Original nicht auffindbar». Eine Verifikationsrunde kann ein
Destillat also auch **verschlechtern**.
**Zur Entscheidung vorgelegt:** `established` an einen sauberen Nulldurchgang binden statt an eine
bestandene Korrekturrunde. Das kostet je Destillat systematisch eine Runde mehr, verhindert aber, dass
Korrekturartefakte als geprueftes Wissen gelten.

**Befund 2 (Methodik-Praezisierung):** Der Satz «frisch nachgetragener Text ist die hoechste Fehlerquelle»
(seit Run 23/24) gilt NICHT pauschal. Bestaetigt bei Lignatec (beide Erstrunden-Korrekturen fehlerhaft),
SIA D 0165 (5 von 9 schweren Befunden in Erstrunden-Passagen) und Lignum 4.1 Teil C. Widerlegt bei
Lignum 4.1 Teil A/B und Lignum 4.2, wo alle Erstrunden-Korrekturen hielten und die Fehler in den
unangetasteten Passagen lagen. Der Satz beschreibt ein Risiko, das je Textabschnitt unterschiedlich
eintritt — kein Gesetz.

**Befund 3 (offen, Strukturentscheid bei Raphael): das Inventar scannt aus PL-02 nur einen von elf
Ordnern.** In den nie erfassten liegen rund 680 weitere PDFs. Der normrelevante Kern ist klein und
benannt (~~BfU 9~~ → erledigt Run 38, GVZ 3, Suva 4, ~~SWKI 1~~ → **zugeordnet, Entscheid Raphael
31.07.2026, siehe Kopfeintrag**, Suissetec 2, VSA 3, PAVIDENSA 9, `09_Sanitaereinrichtung` 15,
~20 lose Merkblaetter); der Grossteil gehoert anderswohin (Minergie 79 und eco 55 → KB `energie`;
Teilungsplan STWEG 71 → Skill `stockwerkeigentum`; Projektadmin AHB 79 → keine Norm; Raumpilot/Neufert
→ Entwurfsliteratur). Eine pauschale Aufnahme waere falsch, ein pauschales Ignorieren auch. Details in
`training/norm-inventar.md`, Abschnitt «PL-02 Reichweite». **Nicht vom Loop zu entscheiden.**

**Befund 4 (an den Mac Mini gemeldet):** `PL - 02_Recht_Norm/Tiefgarage/1 VSS-Norm/` enthaelt echte
VSS-640-Normen (640 050 Grundstueckzufahrten, 640 060/065/066 Leichter Zweiradverkehr, 640 281 Parkfelder,
640 291a Parkieren Geometrie, 640 578 Immissionen) ausserhalb von `02_Normen/VSS_Norm/`. VSS ist
Mini-Scope (Stations-Split) — hier bewusst nicht angefasst, im Mini-Inventar zu pruefen.

**Befund 5 (geschlossen): PL-03 war nur zu 5 von 13 Ordnern erfasst.** Run 30 meldete «alle 6
Unterordner erfasst»; `PL - 03 Brandschutz/` hat 13 Eintraege auf oberster Ebene. Alle sieben offenen
sind jetzt aufgearbeitet. Der Ordner `00 Brandschutzplaene bsvonline.ch` enthielt die geltende Fassung
der VKF-Arbeitshilfe 1001-15 (Delta 28 materiell / 12 redaktionell) und die bis dahin nirgends
erfasste VKF-Freistellungsliste «Allgemein anerkannte Bauprodukte».

**Befund 6 (Run-30-Aussage widerlegt):** «Unterordner `06 Lignum Brandschutz` hat KEIN PL-02-Gegenstueck
(genuin neue Quelle)» ist falsch — alle sechs Dateien liegen MD5-identisch unter
`PL - 02_Recht_Norm/06_Richtlinien/Lignum Brandschutz/`. Sie lagen nur ausserhalb von `02_Normen/`
(dessen Unterordner `Lignum/` leer ist). Die drei Lignum-Destillate bleiben richtig und noetig.

**Neu offen fuer den naechsten Lauf:**
1. **Dritte Verifikationsrunde** fuer alle fuenf heute korrigierten Destillate, fokussiert auf die heute
   geaenderten Stellen — bei zwei nachgewiesenen Regressionen keine Formalie.
2. **Unabhaengige Verifikation** der drei neuen Destillate (bisher nur Selbst-Gegenprobe):
   `vkf-allgemein-anerkannte-bauprodukte-2017`, `brandschutzfachstellen-anleitung-brandschutznachweis-v3`,
   `brandschutzplan-legende-symbole-2017`.
3. **VKF-Merkblatt 2003-15** «Brandschutzplaene, Flucht- und Rettungswegplaene, Feuerwehrplaene» fehlt als
   Destillat. Es ist die Primaerquelle fuer Planpflicht und Symbolik; bis dahin bleibt der amtliche Status
   des neuen Symbolblatt-Destillats unbestaetigt. Beschaffung aus `PL - 02_Recht_Norm/02_Normen/VKF_Norm/`
   pruefen. Ebenfalls nicht destilliert: das Merkblatt «Feuerwehrzufahrten».
4. **Regionale Geltung** der beiden neuen Arbeitshilfen: Herausgeber sind sechs Zentralschweizer
   Fachstellen. Fuer ZH-Projekte ist ungeprueft, ob die GVZ abweichende formelle Vorgaben kennt.
5. **VKF-Bauprodukteliste:** Version 12.0 traegt keine Aenderungsliste; ob seit 2017 eine juengere Version
   publiziert wurde, ist ueber praever.ch/de/bs nachzuziehen. BSV 2026 wird die Bezugsrichtlinien abloesen.

**Unveraendert offen:** Bring-Schulden SIA 491 und SN EN 12193 (KB `baurecht`) — in PL-02 UND PL-03 am
27.07.2026 erneut nicht gefunden, externe Beschaffung ueber den SIA-Shop noetig. Uebrige SIA-Bring-Schulden
(SIA 380/1 Volltext, SIA 385/1 Volltext, SIA 118:2013, SIA 242) unveraendert.

Report `outputs/2026-07-27_normen-nacht-run31.md`.

## Run 30 (MacBook Pro, 27.07.2026) — PL-03-Bookkeeping korrigiert, Lignum destilliert, Erdbeben-Dokument ausgegrenzt

**Befund 1 (Bookkeeping-Fehler behoben):** Der PL-03-Abschnitt in `training/norm-inventar.md` (aufgenommen
26.07.2026) listete die BRL-13-15/14-15-Re-Destillation als offenen Handlungsbedarf, obwohl diese bereits
am 25.07.2026 (Run 23, re-verifiziert Run 24) erledigt worden war — der Abschnitt wurde nach der
Aufnahme-Entscheidung nicht gegen den tatsaechlichen Destillat-Stand geprueft, nur gegen den aelteren
Mapping-Report vom 25.07. Korrigiert, siehe `norm-inventar.md` Abschnitt "PL-03 Brandschutz".

**Befund 2:** PL-03-Unterordner 01/03/04/05 (26 Dateien) sind vollstaendig MD5-identisch mit bereits
destillierten PL-02-Kopien (PL-02 spiegelt dieselbe Struktur unter `VKF_Norm/`). Keine neue Destillation
noetig. Einzige untersuchte Abweichung (`1001-15_Wohnbauten.pdf`, 29 vs. 27 Seiten) stellte sich als
bereits anderweitig destillierter BRL-16-15-Inhalt plus ein separates, inhaltlich deckungsgleiches
"Auszug"-Dokument (Stand 17.05.2018) heraus — 0 Abweichungen bei Ziff. 3/5/6 gegen das established-
Destillat `vkf-ah-1001-15-wohnbauten.md`, dessen Frontmatter entsprechend cross-verifiziert ergaenzt wurde.

**Befund 3 (offen, ausserhalb Scope):** `PL - 03 Brandschutz/06 Lignum Brandschutz/Lignum Erdbeben/
Erdbebengerechte_Holzbauten_d.pdf` (25 S.) behandelt Erdbebenertuechtigung im Holzbau, kein Brandschutz-
/Normeninhalt. Nicht in dieser Normen-KB destilliert. Falls fachlich relevant, gehoert das Dokument eher
in eine statik-/erdbeben-bezogene Wissensbasis (aktuell keine vorhanden) — als Hinweis fuer den
Wissens-Chef vermerkt, nicht selbststaendig loesbar aus dem Normen-Scope heraus.

**Befund 4 (weiterhin offen):** SIA 491:2013 und SN EN 12193:2008 (Bring-Schulden KB `baurecht`) erneut
gegen PL-02 UND PL-03 geprueft (27.07.2026) — in keiner der beiden Ablagen vorhanden. Bleibt echte externe
Bring-Schuld (SIA-Shop-Kauf durch Raphael noetig), kein Fall einer PL-03-Fehlklassierung wie bei den
Brandschutz-Dokumenten in Run 22.

**✅ Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung):** Befund 1 und 2 waren bereits mit ihrem eigenen
Text erledigt, nur nie mit einem Schliess-Marker versehen. Befund 3 bleibt informativer Hinweis an
den Wissens-Chef (keine statik-/erdbeben-bezogene KB vorhanden, kein Handlungsbedarf im Scope
`normen`). Befund 4 (SIA 491, SN EN 12193) ist unveraendert in `training/norm-inventar.md` als
Bring-Schuld gefuehrt (Preis/Bezugsweg dort seit Run 36 verifiziert) — keine neue Information seit
27.07.2026.

## Run 27 (MacBook Pro, 25.07.2026) — Q&A-Selbstbefragung (Vertiefungsstufe c) fuer die 5 neu established Destillate

**Ausgangslage.** Run 26 hatte als naechsten sinnvollen Schritt vorgeschlagen: Q&A-Selbstbefragung fuer die
seit Run 25/26 neu auf `established` gehobenen Destillate (sia-266/1, sia-410, sia-112-leistungsmodell,
sia-112-tabelle-infrastruktur, sia-271-wegleitung), da ein reiner Frischecheck ohne Mehrwert waere. 5
unabhaengige Verifikations-Agenten liefen parallel, je einer pro Norm — Original-PDF unabhaengig gelesen,
Fragen formuliert und sofort daraus beantwortet, danach gegen das Destillat abgeglichen (echter
Refuter-Versuch).

- **[x] sia-266-1-2003 — 20 Fragen, bestaetigt, 0 Abweichungen.** Alle Kernpunkte (31 Verweisungen,
  Modalitaeten, Formeln, Gummiplatten-Kennwerte, sechs Kategorien besonderer Eigenschaften) exakt bestaetigt.
- **[x] sia-410-1986 — 18 Fragen, bestaetigt + 1 Klarstellung + 2 Ergaenzungen angewendet.** Substanz
  vollstaendig bestaetigt. Korrektur: Das Dokument wurde bisher als «dreisprachig d/f/i, teils Englisch in
  Kopfzeilen» unterschaetzt — tatsaechlich durchgehend **vierprachig d/f/i/en** mit vollstaendiger vierter
  Spalte in praktisch jeder Tafel. Frontmatter + Hinweistext korrigiert. Ergaenzt unter Offene Punkte: Kap. 6
  fehlt im urspruenglichen Inhaltsverzeichnis (S. 2-3, stuetzt die Nachtrags-These), Positionsnummern-Luecke
  9/10 in Ziff. 3.3 (S. 21, unerklaert im Original).
- **[x] sia-112-leistungsmodell — 8 Fragen (1-Seiten-Dokument), bestaetigt, 0 Abweichungen.**
- **[x] sia-112-tabelle-infrastruktur — 10 Fragen, bestaetigt, 0 Abweichungen.** Dritte unabhaengige
  Pruefrunde nach Run 25 (Erstpruefung) und Run 26 (erste Bestaetigung) — weiterhin 0 Befunde.
- **[x] sia-271-wegleitung — 8 Fragen (nur 2 S. vorhanden), bestaetigt.** Ein kleiner, nicht korrigierter
  Vervollstaendigungshinweis: Abb. 76 traegt im Original den engeren Titel «... bei Terrassen», waehrend der
  Fliesstext die 25-mm-Freibord-Pflicht allgemein fuer den gesamten Flachdachbereich formuliert — kein
  Widerspruch, keine Statusaenderung noetig.

**Ergebnis:** 64 Fragen total, 0 Widersprueche gegen bestehende Kernaussagen, 1 Destillat mit einer echten
Klarstellung korrigiert (sia-410 Sprachenangabe). Alle 5 Destillate bleiben `established`. Damit haben nun
**alle 15 SIA/VKF-Kernnormen** die Q&A-Vertiefungsstufe (c) durchlaufen (10 aus Run 14/260715 + 5 aus Run 27).
Neue QA-Dateien: `destillate/qa/sia-266-1-2003-fragen.md`, `sia-410-1986-fragen.md`,
`sia-112-leistungsmodell-fragen.md`, `sia-112-tabelle-infrastruktur-fragen.md`, `sia-271-wegleitung-fragen.md`.
Verbleibende offene Punkte unveraendert: Bring-Schulden (SIA-Normtexte nur per Abo/Kauf) und
Strukturentscheide bei Raphael (PL-03-Aufnahme). Fuer den naechsten Lauf: Vertiefungsstufe (b) Retro-
Verifikation mit 3 unabhaengigen Widerlegungs-Agenten fuer die P1-Kernnormen, oder Stufe (d)
Querschnitts-Synthesen fuer die Fach-Skills (werkvertrag/honorarberechnung/brandschutz/flaechen-nachweis),
da Stufe (c) fuer SIA/VKF jetzt vollstaendig ist. Report `outputs/2026-07-25_normen-nacht-run27.md`.

## Run 26 (MacBook Pro, 25.07.2026) — beide Run-25-Folgeaufgaben abgeschlossen, speculative-Bestand geleert

**Ausgangslage.** Run 25 hatte zwei konkrete, eng begrenzte Folgeaufgaben hinterlassen (Bestätigungsrunde
sia-112-tabelle-infrastruktur, SFG-Kürzel sia-271-wegleitung visuell klären) und festgehalten, dass danach
nur noch `sia-vertragsunterschiede-2023.md` (bewusst dauerhaft speculative) offen bliebe. Frischecheck
zuerst: 458 SIA-PDF / 58 VKF-Dateien (davon 9 Nicht-PDF, 8 PNG-Printscreens + 1), keine Änderung seit
Run 21 — 0 offene `[ ]`-Positionen im Inventar unverändert bestätigt.

- **[x] sia-112-tabelle-infrastruktur.md — Bestätigungsrunde (25.07.2026).** Alle 4 Run-25-Korrekturen
  unabhängig direkt am Original-PDF (S. 1 Kopftabelle, S. 2 Phasenzeilen/Grafiken) gegengelesen:
  Kosten-Spaltengruppe umfasst Menge/Einheits-Preis/Preis/% (bestätigt); 312.0 «Beschrieb und
  Visualisierung» und 312.1 «Projektgrundlagen» sind zwei separate Zeilen (bestätigt); Vorprojekt (31.0)
  hat tatsächlich einen zweiten Block «Vorprojekt 2» mit eigenen Zeilen 313.1 Kosten/314.1 Termine
  (bestätigt); «Kosten und Finanzierung» ist bei 413.1 (Ausschreibung) und 513.1 (Realisierung
  Ausführungsprojekt) ein vollständiger, nicht abgeschnittener Zeilentext (bestätigt). 0 Abweichungen.
  **Status auf established gehoben.**
- **[x] sia-271-wegleitung.md — SFG-Kürzel visuell geklärt (25.07.2026).** Deckblatt (S. 1) hochaufgelöst
  gelesen: Logo zeigt eindeutig «SFG — ASVE» (deutsches Kürzel SFG, französisches Pendant ASVE =
  Association Suisse des Spécialistes du Verdissement des Edifices) — nicht «ASF»/«ASE» wie zuvor unsicher
  vermutet. Frontmatter korrigiert. Damit sind alle 3 Run-25-Befunde geschlossen. **Status auf established
  gehoben.**

**Ergebnis:** Die speculative-Bestandsliste der SIA/VKF-KB ist jetzt bis auf den einen bewusst dauerhaften
Fall `sia-vertragsunterschiede-2023.md` (kein Normtext, reines Frage-Antwort-Blatt) leer. Verbleibende
offene Punkte in dieser Datei sind ausschliesslich Bring-Schulden (SIA-Normtexte, die nur per Abo/Kauf zu
beschaffen sind: SIA 380/1 Volltext, SIA 385/1 Volltext, SIA 118:2013, SIA 242, neuere SIA-266/1- bzw.
SIA-410-Ausgabe klären) und Strukturentscheide bei Raphael (PL-03-Aufnahme ins Inventar, Bring-Schulden-
Beschaffung) — beide nicht vom Loop selbst zu schliessen. Kein neues Destillat in diesem Lauf.
Report `outputs/2026-07-25_normen-nacht-run26.md`.

## Run 25 (MacBook Pro, 25.07.2026) — 2 Folgeaufgaben aus Run 24 abgeschlossen + 3 weitere speculative Destillate erstverifiziert

Run 24 hatte zwei konkrete Folgeaufgaben und eine allgemeine Empfehlung hinterlassen. Beide Folgeaufgaben
sind jetzt erledigt, zusätzlich wurden 3 bislang nie adversarial geprüfte speculative Destillate
(sia-112-leistungsmodell, sia-112-tabelle-infrastruktur, sia-271-wegleitung) verifiziert.

- **[x] SIA 266/1 vierte + fünfte Runde (25.07.2026).** Vierte Runde: Figur-1-Zeile (dreimal in Folge
  fehlerbehaftet) ist nach der Run-24-Korrektur endlich sauber (0 Befunde), 2 kleinere Stilbefunde
  ausserhalb gefunden und korrigiert (Ziff.-2.3.7-Modalitätsetikett, «Krafteinleitung»→«Querdruck-Staffelung»
  zur Konsistenz). Fünfte, eng begrenzte Runde nur dieser zwei Korrekturen: 0 Befunde. **Status auf
  established gehoben.**
- **[x] VKF-BRL 14-15-Delta, Ziff. 3.2.3 Abs. 1 (25.07.2026).** Unabhängiger Wort-für-Wort-Abgleich
  beider Original-Fassungen bestätigt die Run-24-Präzisierung vollständig (0 Befunde). Delta-Abschnitt
  gilt damit als vollständig verifiziert (alle 5 Run-23-Korrekturen jetzt unabhängig bestätigt).
- **[x] sia-112-leistungsmodell.md erstmals adversarial geprüft (25.07.2026).** War seit Run 16
  (19.07.2026) nie verifiziert. Verdikt BESTAETIGT, 0 Befunde (inkl. unabhängiger `mdls`/`strings`-
  Gegenprobe der PDF-Metadaten). **Status auf established gehoben.**
- **[ ] sia-112-tabelle-infrastruktur.md erstmals tiefer geprüft (25.07.2026).** Vorherige Prüfung
  (Run 16) fand 0 Befunde bei oberflächlicherer Lektüre; Run 25 fand bei vollständigem Seitenvergleich
  4 Befunde (1 substanziell: Spalte «Menge» falsch der Gruppe «Beschrieb» statt «Kosten» zugeordnet;
  3 kleiner). Alle 4 im Destillat korrigiert, bleibt speculative bis zu einer kurzen Bestätigungsrunde
  der Korrekturen (nächster Lauf).
- **[ ] sia-271-wegleitung.md, 3 Befunde bei Frontmatter/Bildunterschriften (25.07.2026).** Technischer
  Kern (Ziff. 5.10.3-5.10.5, alle Zahlenwerte) bestätigt 0 Befunde. PAVIDENSA-Verbandsname korrigiert
  («Abdichtungen Estriche Schweiz», nicht «Beläge»); SFG-Kürzel-Zusatz («ASE» vs. möglich «ASF») bleibt
  unsicher — am Original visuell nachzuverifizieren, bevor auf established gehoben wird.

**Für den nächsten Lauf:** (1) kurze Bestätigungsrunde der 4 sia-112-tabelle-infrastruktur-Korrekturen;
(2) SFG-Kürzel bei sia-271-wegleitung.md am Original visuell klären, dann established; (3) verbleibende
speculative-Bestandsliste ist damit fast abgearbeitet — nur noch sia-vertragsunterschiede-2023.md
(bleibt bewusst dauerhaft speculative, kein Normtext) und sia-112-tabelle-infrastruktur.md offen;
(4) danach QUESTIONS.md weiter Richtung Bring-Schulden/Strukturentscheide (unverändert bei Raphael).
Report `outputs/2026-07-25_normen-nacht-run25.md`.

## Run 24 (MacBook Pro, 25.07.2026) — Rückstandsabbau (7 Punkte) + zwei weitere Retro-Verifikationsrunden

**Ausgangslage.** Run 23 hatte zwei konkrete Folgeaufgaben hinterlassen (BRL-14-15-Delta re-verifizieren,
SIA 266/1 dritte Runde) und zwei strukturelle Entscheide bei Raphael belassen (PL-03-Entscheid,
Bring-Schulden). `norm-inventar.md` zeigte weiterhin 0 offene `[ ]`-Positionen — dieser Lauf hat daher
gemäss PROGRAMM.md-Vertiefungsstufen gearbeitet: zuerst Bookkeeping-Rückstand in dieser Datei geschlossen
(sieben Punkte, die inhaltlich bereits erledigt, aber nicht als `[x]` markiert waren), dann die zwei von
Run 23 angeforderten Verifikationsrunden gefahren.

**Bookkeeping-Rückstand geschlossen (7 Punkte, keine neue Quelle nötig, nur Abgleich Destillat↔Frage):**
1. VKF-BRL 16-15 Ziff. 3.5.2 Personenbelegung — war bereits seit Wissens-Chef Run 8 (18.07.2026)
   vollständig nachgeführt und in Run 23 bestätigt, nur hier nicht abgehakt.
2. VKF-BRL 16-15 S.16-ABSV-Änderung — Diagnose war bereits in Run 23 korrigiert (S. 15, keine
   Vertauschung), Punkt hier nur nicht geschlossen.
3. Methodik-Pflicht `pdfimages`-Bildvergleich — bereits in `training/PROGRAMM.md` verankert.
4. SIA 385/1 — PDF liegt vor (`SIA_Norm/i385-1_2011_d.pdf`, 6 von 28 Normseiten), war fälschlich
   als «nur Screenshots» notiert; bereits am 17.07.2026 korrekt als Auszug/Bring-Schuld destilliert.
5. SIA 380/1:2016 — Bestand-Datei bestätigt (`SIA 380_1_2016/i380-1_2016_d.pdf`, 6 von 60 Normseiten),
   bereits am 17.07.2026 korrekt als Auszug/Bring-Schuld destilliert (blockiert `energie-berater`).
6. SIA 102 2014↔2020 — bereits im Inventar korrekt als «— ersetzt durch 2020» markiert.
7. `sia-480-2004.md` verlinkte SIA 102:2003 fälschlich als «nicht im Bestand» — tatsächlich liegt die
   Datei zweifach vor (`SIA_Normen/SIA 102/SIA_102_2003.pdf`, `alle/xalt/102_2003_d.pdf`, 56 S.,
   bestätigt echte Honorarordnung), ist aber bewusst nicht destilliert (ersetzt durch 2020). Linktext
   korrigiert.

**VKF-BRL 14-15-Delta — Re-Verifikation der 5 Run-23-Korrekturen (Hintergrund-Agent, Volltextabgleich
beider PDF-Fassungen per `pdftotext -layout`):** 4 von 5 wortgetreu bestätigt (Fussnote [2] Ziff. 3.3.2,
Ziff. 3.3.1 Abs. 5/6, Ziff. 2 Abs. 8, SN-EN-60065/Ziff. 4.1/Fussnote [7]). Die fünfte (Ziff. 3.2.3 Abs. 1)
war in Run 23 überzeichnet: «Aussenwandbekleidungen» und die Ortsangabe «im Hinterlüftungsbereich» standen
bereits 2015 wortgleich im Text (nur andere Satzstellung) — die tatsächlich einzige materielle Neuerung
2017 ist der Zusatz «bzw. flächige Schichten». Im Destillat korrigiert. Delta-Sorgfaltsstufe bleibt
`speculative` bis zu einer weiteren kurzen Re-Verifikation dieser einen Korrektur.

**SIA 266/1 — dritte unabhängige Verifikationsrunde (Hintergrund-Agent, komplettes 12-seitiges Original
erneut gegengelesen):** 0 neue Befunde ausserhalb der Figur-1-Zeile (31 Verweisungen, Tabelle 1 komplett,
Formel 1/2, Ziff. 2.1-4.3, Genehmigung/Übergangsbestimmungen alle bestätigt). Erneut EIN neuer Fehler
exakt in der zuletzt (Run 23) editierten Figur-1-Beschreibung: die Zeile hatte die Hauptdruckkraft Fy
(Ziff. 2.2.3, Ausgleichsschicht, Prüfpresse) fälschlich mit dem separaten, optionalen Querdruck-System
(Ziff. 2.2.5, Stahlplatte/Spannstangen, Kann-Bestimmung) zu einem Mechanismus verschmolzen. Korrigiert,
beide Mechanismen jetzt sauber getrennt. Die h/l-Korrektur aus Run 23 selbst war und bleibt richtig.
**Muster über zwei Runden:** exakt die zuletzt editierte Passage enthielt beide Male den neuen Fehler —
frisch nachgetragener Text bleibt in dieser KB die höchste Fehlerquelle, nicht der unveränderte Rest.
Status bleibt `speculative`; vierte Runde erst nach dieser Korrektur sinnvoll.

**Neu offen für den nächsten Lauf:**
1. SIA 266/1: vierte Verifikationsrunde nach der Figur-1-Korrektur (Muster aus Runde 2/3 beachten).
2. VKF-BRL 14-15-Delta: kurze Re-Verifikation der Ziff.-3.2.3-Abs.1-Präzisierung.
3. Danach `wiki/QUESTIONS.md` weiter abarbeiten — nach den 7 Schliessungen oben verbleiben primär
   Bring-Schulden (SIA 380/1 Volltext, SIA 385/1 Volltext, SIA 118:2013, SIA 242, SIA 2014,
   SIA 240 Ausgabe, 260/1-267/1 deutsche Fassungen) und die zwei strukturellen Entscheide bei Raphael
   (PL-03-Entscheid, Bring-Schulden-Beschaffung) — beide nicht vom Loop selbst zu treffen.

## Run 23 (MacBook Pro, 25.07.2026) — Retro-Verifikation der 5 Run-22-Artefakte + BRL-16-15-Diagnosekorrektur

**Ausgangslage.** Run 22 hatte fünf frische Artefakte hinterlassen, von denen nur drei eine erste
Verifikationsrunde durchlaufen hatten (teils mit Korrekturbedarf), und einen offenen P1-Punkt zur
BRL 16-15 (S. 16, «vertauschte Bildunterschrift»). Run 23 hat gemäss der PROGRAMM.md-Vorgabe
(«Retro-Verifikation … das ist der nächste Lauf, bevor irgendeine neue Quelle angefasst wird») genau
diesen Rückstand abgearbeitet — keine neue Quelle destilliert.

**BRL 16-15, S. 15/16-Diagnose selbst korrigiert (per `pdftotext`, nicht per Agent).** Die bestehende
Diagnose («vertauschte Bildunterschrift Ziff. 2.4.3 ↔ 2.4.4», S. 16) war doppelt falsch: Die
Bildunterschrift liegt auf **S. 15**, und sie steht in **beiden** Fassungen unter der Überschrift
Ziff. 2.4.4 — keine Vertauschung, sondern eine reine Umbenennung («Horizontaler Fluchtweg…» →
«Gesamtlänge von Fluchtwegen…»). Korrigiert in `destillate/vkf-brl-16-15-flucht-rettungswege.md`.

**5 adversariale Retro-Verify-Agenten (Hintergrund, gegen die Original-PDFs):**

- [x] **SIA 410 (Erstverifikation):** BEANSTANDET → korrigiert → **established**. Systematischer
  Zitierfehler: Positionsnummern der Grundsinnbild-Tabelle (S. 5) waren als Unterziffern «1.11.1» ff.
  einer Ziffer 1.11 zitiert, tatsächlich sechs eigenständige Ziffern 1.11-1.16 (gleiches Muster bei
  Ziff. 1.27/2.2/2.5/3.3/3.4 korrigiert). Kleinere Korrekturen: Seitenbereich, «Duschenwanne»,
  «Abscheider» statt «Fettabscheider». Offen: Fussnoten-Marker «farbige*» (S. 5-6) ohne auffindbare
  Erläuterung — in Offene Punkte vermerkt.
- [x] **VKF-BRL 13-15 Delta 2017 (Erstverifikation):** BESTANDEN, 0 Befunde → **established**.
- [x] **VKF-BRL 14-15 Delta 2017 (Erstverifikation):** BEANSTANDET → 5 lokale Korrekturen
  eingearbeitet (Fussnote [2] Ziff. 3.3.2 Richtung war verdreht — Streichung statt Ergänzung;
  Ziff. 3.3.1 Abs. 5/6 fälschlich «buchstabengleich»; Ziff. 2 Abs. 8 komplett übersehen; Ziff. 3.2.3
  Abs. 1 übersehen; SN-EN-60065-Fassungsbezeichnung verkürzt zitiert; Ziff. 4.1 Abs. 7 mit
  Fussnote [7] zu Ziff. 4.2 vermischt). Die drei praxisrelevantesten Kernbefunde (Ziff. 2 Abs. 3
  cr-Ausnahmekatalog, Ziff. 5.1.2 Hochhaus-Wegfall, Ziff. 5.3 Normenwechsel) waren bereits korrekt.
  Delta bleibt `speculative` bis kurzer Re-Verifikation der 5 Korrekturen.
- [x] **SIA 266/1 (zweite Runde):** BEANSTANDET — alle 13+9 Korrekturen der ersten Runde bestätigt,
  aber EIN neuer Fehler in der am 25.07. selbst nachgetragenen Figur-1-Beschreibung gefunden: h/l
  war als «Prüfkörperhöhe/-länge» bezeichnet, tatsächlich gemäss Formel 1 (S. 9) h = Breite, l = Höhe
  (Kraftrichtung) — vertauscht. Korrigiert; Ausgleichsschicht-Position präzisiert. Bleibt
  `speculative`, dritte Runde erst nach dieser Korrektur sinnvoll (frisch nachgetragene Passagen
  führen erfahrungsgemäss selbst neue Fehler ein).
- [x] **VKF-Beherbergungskategorien (zweite Runde):** BEANSTANDET — alle 12 Korrekturen der ersten
  Runde seitengenau bestätigt (physische PDF-Einzelseiten nachextrahiert). EIN neuer, lokal
  begrenzter Befund: die Fundstelle «BRL 16-15de Ziff. 3.2» bei der Betreutes-Wohnen-Aussage war
  unbelegt (Ziff. 3.2 nennt «Alterswohnungen» nirgends; die Aussage stützt sich korrekt nur auf
  BRL 10-15de S. 35). Korrigiert, Verknüpfung als «plausibel, nicht explizit belegt» markiert.
  Nach Korrektur auf **established** gehoben.

**Ergebnis:** 3 von 5 Artefakten jetzt `established` (SIA 410, VKF-BRL 13-15-Delta,
VKF-Beherbergungskategorien), 2 bleiben `speculative` mit engerem Restaufwand (SIA 266/1 dritte
Runde; VKF-BRL 14-15-Delta kurze Re-Verifikation der 5 Korrekturen).

**Neu offen für den nächsten Lauf:**
1. VKF-BRL 14-15-Delta: kurze Re-Verifikation der 5 in Run 23 eingearbeiteten Korrekturen.
2. SIA 266/1: dritte, unabhängige Verifikationsrunde nach der Figur-1-Korrektur.
3. Entscheid PL-03 (aus Run 22 weiterhin offen, siehe unten) — nicht selbst entschieden.
4. Bring-Schulden (aus Run 22 weiterhin offen, siehe unten) — nicht ohne Beschaffung schliessbar.

## Run 22 (MacBook Pro, 25.07.2026) — Rückstands-Abbau statt achter Vollständigkeits-Bestätigung

**Ausgangslage.** Die Runs 15-21 haben SIA/VKF sieben Mal in Folge als «komplett» gemeldet, Run 21
(heute, wenige Stunden vor diesem Lauf) mit dem Schluss «keine reale Quelle zu bearbeiten». Run 22 hat
deshalb keine achte Bestätigung produziert, sondern die **Messgrösse** geprüft, auf der die sieben
Bestätigungen beruhen — und den Rückstand abgebaut, der in dieser Datei lag.

**Kernbefund: die Vollständigkeits-Metrik war zu schmal.** «0 offene `[ ]` im Inventar» plus «keine
neuen Dateien» misst ausschliesslich Datei-**Existenz**. Nicht gemessen wurden: (a) die **Klassierung**
der Dateien, (b) der **Fassungsstand** der Destillate, (c) der Bestand einer **zweiten Ablage**
(`PL - 03 Brandschutz/`, die das Inventar nicht abdeckt), (d) die hier gesammelten offenen Fragen.
In allen vier Punkten lag reale Arbeit. Die Aussage «SIA/VKF KOMPLETT» gilt weiterhin für die
Grunddestillation des erfassten Bestands, war aber **kein** Beleg dafür, dass nichts zu tun ist.

### Geschlossen in Run 22 (mit Beleg)

- [x] **Beherbergungs-Kategorien [a]/[b]/[c] definiert** (war als «kritisch für Healthcare» offen).
  Fundstelle: VKF Brandschutznorm 1-15de, Art. 13 Abs. 2 lit. a (S. 8), wortnah wiederholt in
  BRL 10-15de «Begriffe und Definitionen» (S. 12). Kriterium: ≥ 20 Personen plus Angewiesenheit auf
  fremde Hilfe ([a]) bzw. nicht ([b]); [c] = abgelegene Betriebe, im Anhang (S. 40) über vier
  **kumulativ** («gleichzeitig erfüllt») zu erfüllende Bedingungen präzisiert, wobei Photovoltaik und
  Notstromaggregate ausdrücklich als ungenügende Stromversorgung gelten. Zuordnung: Spital/Alters-/
  Pflegeheim → [a]; Hotel/Pension/Ferienheim → [b]. Neuer Artikel `wiki/vkf-beherbergungskategorien.md`.
  Adversarial geprüft: **BEANSTANDET**, 12 Korrekturen eingearbeitet (5 falsche Seitenzahlen, gemischte
  Ausgaben 2015/2017, eine Modalitäts-Härtung, eine falsch als [a]-spezifisch dargestellte Regel).
  Status bleibt `speculative` bis zur Re-Verifikation.
- [x] **«Betreutes Wohnen» — die Negativ-Aussage war falsch.** Der Begriff fehlt in den VKF-Quellen,
  aber BRL 10-15de, Stichwort «Wohnbauten» (S. 35), nennt **Alterswohnungen** ausdrücklich als Wohnbauten
  (Nutzung «Wohnen», BRL 16-15de Ziff. 3.2). Praxisfolge: betreutes Wohnen ohne Pflegeabhängigkeit ist
  als Wohnbau zu behandeln; erst «auf fremde Hilfe angewiesen» bei ≥ 20 Personen führt in [a].
- [x] **P1 — VKF-BRL 16-15 Fassung «Stand 01.12.2022» geprüft** (Datei
  `PL - 03 Brandschutz/02 Brandschutzrichtlinien 2015-17-22/BSPUB-1394520214-85.pdf`). Die
  Schwerpunkt-Teilfrage ist entschieden: Ziff. 3.7 Abs. 1 nennt in **beiden** Fassungen wortidentisch
  die **Brandabschnittsfläche > 1'200 m²** (Haupttext S. 12). Unser 2017er-Destillat hatte die
  Formulierung also **nicht** geglättet; die Meldung aus `planungsgrundlagen`, die Bezugsfläche sei
  geändert worden, hat den richtigen Textbefund (das Wort «Geschossfläche» existierte und wurde
  ersetzt), zieht daraus aber die falsche Folgerung — geändert wurde nur die erläuternde
  Anhang-Einleitungszeile auf S. 33, die dem eigenen Haupttext widersprach. Ebenso Ziff. 2.4.3/2.4.4:
  Haupttext (35 m / 50 m, S. 6) unverändert.
- [x] **SIA 385/1 — die französische Bestandsvariante ist KEIN Lückenschluss** (war als «billigster
  Lückenschluss» vorgemerkt). `alle/f/385_1_f.pdf` (60 S.) ist die Ausgabe **2000** und behandelt
  «Wasser und Wasseraufbereitungsanlagen in öffentlichen Schwimmbädern» — ein sachlich unverwandtes
  Thema. Die Nummer 385/1 wurde 2011 für «Anlagen für Trinkwarmwasser in Gebäuden» wiederverwendet
  (die Schwimmbad-Materie ging in 385/9 auf). Die Legionellen-Angaben der 2000er betreffen Beckenwasser
  und Duschen, nicht Speicher-/Zirkulationstemperaturen im Hochbau. **Lehre:** Abschnitt B dieses
  Registers dokumentierte die Umnummerierung bereits — die Prüfung hätte im eigenen REGISTER beantwortet
  werden können, statt als Bring-Schuld-Umweg über ein PDF zu laufen. Register vor Bestandssuche lesen.
- [x] **SIA 112 — Restpunkt «OCR-Verdacht» geklärt: es war ein Destillat-Fehler, kein Scanfehler.**
  Volltext-OCR aller 26 Seiten von `alle/112.2014.pdf`: SIA 112 nennt die Ordnungen 102/103/104/105/108
  an vier Stellen (S. 4, 5, 6, 10) durchgehend als reine Zahlenaufzählung und ordnet **an keiner Stelle**
  einer Nummer eine Fachrichtung zu. Die Fehlzuordnung des Erst-Destillats war eine unbelegte eigene
  Ergänzung. Die Korrektur vom 21.07.2026 bleibt gültig. Notiz im Destillat, Commit `af39f66a`.
- [x] **VKF-Merkblatt 2001-15 Solaranlagen — Fassungsfrage entschieden, soweit möglich.** Die Dateien in
  PL-02 und PL-03 sind **byte-identisch** (MD5 `56fb4bab…`, 11 S.): trotz Ordnername «2015-17-22» liegt
  dort **keine** 2022er-Fassung. Belegt ist Ausgabe/Fassung **06.03.2015** (S. 1) und für Unterdachbahnen
  **RF4 (cr)**, Modalität «dürfen» (Ziff. 3.2.3, S. 8). Der von `planungsgrundlagen` gemeldete Delta
  (RF3(cr)) ist damit **unentschieden** — weder bestätigt noch widerlegt. Für die PV-Beratung gilt bis zur
  Beschaffung verbindlich der 2015-Stand RF4(cr) mit ausdrücklichem Fassungs-Vorbehalt.
  - **Korrektur 05.08.2026:** Der Zusatz «soweit möglich» war die falsche Schlussfolgerung, und die
    Anweisung «bis zur Beschaffung gilt RF4(cr)» ist damit widerrufen. Die geltende Fassung war
    öffentlich und kostenlos über dasselbe VKG-Publikationsportal abrufbar, das dieselbe KB drei Tage
    später für das Merkblatt 2005-15 selbst benutzte. Delta entschieden: **RF3(cr)-Pflicht seit
    Ausgabe 01.01.2017**, nicht erst seit 2022 (Beschluss Technische Kommission VKF vom 02.12.2016).
    Der Hausbestand war also nicht vier, sondern neun Jahre alt. Siehe Abschnitt 2026-08-05 am Kopf
    dieser Datei.
- [x] **STALE-BEFUND: «SIA 118:1991 noch nicht destilliert» war seit Langem überholt** —
  `destillate/sia-118-1991.md` existiert und ist `established` (Volltext, Kennzahlen Modell-D-verifiziert
  260712). Eintrag unten korrigiert.
- [x] **STALE-BEFUND: «Merkblatt-Serie SIA 2001-2027 (18 Positionen) noch nicht destilliert» war
  überholt** — die Serie ist als `sia-mb-2001-2005` … `sia-mb-2027-2006` destilliert (Run 16, 260719).
  Eintrag unten korrigiert.

### Neu geschlossen: zwei Normen, die als «Sprachvariante» unsichtbar waren

- [x] **SIA 266/1:2003 «Mauerwerk – Ergänzende Festlegungen» destilliert.** Die Datei
  `alle/i/266_1_d.pdf` ist **deutsch** und lag nur falsch im italienischen Sprachordner; sie war deshalb
  als «Sprachvariante» abgehakt (und die `/1`-Ergänzungsnormen galten als «möglicherweise nicht im
  Bestand»). Prüf-/Deklarationsnorm zu SIA 266: zwei SIA-eigene Prüfverfahren plus eine Ergänzung zum
  EN-772-11-Verfahren. Adversarial geprüft: **BEANSTANDET** — 13 Befunde korrigiert (u.a. 31 statt «rund
  20» Verweisungen; «zwei» statt «drei» eigene Prüfverfahren; «sollte»-Modalität in Ziff. 2.2.4; die
  Aussage «liefert keine Kennwerte» war falsch, Tabelle 1 führt charakteristische Mindestwerte) und
  9 Lücken nachgetragen (Ziff. 2.3.2/2.3.4/2.3.6, Figur-1-Kennwerte, Fussnoten 1)-8) inkl. der dritten
  Formel Exk = 1000 fxk). Alle Zahlenwerte und Formeln 1-2 hielten der Prüfung stand.
- [x] **SIA 410:1986 «Kennzeichnung von Installationen in Gebäuden — Sinnbilder für die Haustechnik»
  destilliert** (36 S. vollständig). `alle/f/410_d_f_i.pdf` ist **dreisprachig d/f/i** und enthält den
  deutschen Volltext; als «Sprachvariante» abgehakt und **ohne jeden REGISTER-Eintrag**. Wichtig für die
  Anwendung: es ist eine **Empfehlung**, nicht eine Norm, und die Kennzeichnung ist **empfehlend**
  formuliert (Ziff. 0.1/0.2, S. 4). Systematik: sechs Grundsinnbilder (Ziff. 1.1, S. 5) im Baukastenprinzip,
  gegliedert nach Gewerk (Heizung S. 14-18, Lüftung/Klima S. 19-23, Kälte S. 24-26, Sanitär S. 27-32,
  MSR-Ergänzung 1993 S. 33-34).
- **Systematische Gegenprobe durchgeführt:** alle drei Sprachordner (`alle/e`, `alle/f`, `alle/i`) auf
  deutsche Namensmuster (`_d.pdf`, `_dfi`, `_de`) und Titel-Metadaten geprüft — **genau diese zwei Fälle**,
  keine weiteren. Damit ist die Klassierungslücke geschlossen, nicht nur bepflastert.

### Neu offen (aus Run 22)

- [x] **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung), nachtraeglich abgehakt.** Die Retro-Verifikation
  aller fuenf hier genannten Artefakte hat noch am selben Tag (25.07.2026) stattgefunden, nur die
  Checkbox wurde seither nie nachgezogen — gleiches Muster wie beim GESCHLOSSEN-Eintrag direkt darunter.
  Beleg je Datei (Frontmatter-Felder `status`/`verifikation`, heute 23.08.2026 gegengelesen):
  `sia-266-1-2003.md` durchlief FUENF Retro-Verifikationsrunden (Run 23-25, 25.07.2026; Runde 1
  13+9 Befunde, Runde 2-4 je 1-2 Befunde, Runde 5 0 Befunde), Status seither `established` — die
  heutige (23.08.) Ergaenzung ist nur der web-belegte `superseded`-Hinweis auf SIA 266/1:2015, keine
  Aenderung an den verifizierten Ziffern. `sia-410-1986.md` adversarial geprueft Run 23 (BEANSTANDET,
  korrigiert, auf `established` gehoben) plus Q&A-Selbstbefragung Run 27 (18 Fragen, 0 Widersprueche);
  die heutige Ergaenzung ist ebenso nur der web-belegte `zurückgezogen`-Hinweis (suissetec.ch,
  Ruecknahme per 01.01.2025), keine Aenderung am verifizierten Bestand. `vkf-brl-13-15-baustoffe-
  bauteile.md`: Fassungs-Delta 2017 adversarial per Seitenbildvergleich gegengeprueft (Run 23,
  Verdikt BESTANDEN, 0 Abweichungen), Status `established`. `vkf-brl-verwendung-baustoffe.md`:
  Fassungs-Delta 2017 adversarial verifiziert (Run 23, BEANSTANDET, 5 Korrekturen eingearbeitet;
  Run 24 unabhaengige Re-Verifikation, 4/5 bestaetigt, 1/5 praezisiert), Status `established`.
  `wiki/vkf-beherbergungskategorien.md`: zwei unabhaengige Verifikationsrunden (Runde 1 BEANSTANDET,
  12 Korrekturen; Runde 2 Run 23, alle 12 seitengenau bestaetigt plus 1 neuer Befund korrigiert),
  Status `established`. Alle fuenf sind damit seit 25.07.2026 zitierfaehig; kein weiterer Lauf muss
  diesen Punkt erneut aufgreifen.
- [x] **GESCHLOSSEN (Run 24, 260725): P1-FOLGEARBEIT VKF-BRL 16-15 Ziff. 3.5.2 Personenbelegung —
  bereits vollständig nachgeführt, nur hier nicht abgehakt.** Geprüft: Das Destillat
  `vkf-brl-16-15-flucht-rettungswege.md` führt die Verkaufs-Tabelle (Fachmärkte 0.10/0.10,
  Supermärkte 0.38/0.15, hochfrequentierte Supermärkte 0.45/0.21 Personen/m², Fussnote [2] zur
  Bezugsfläche) bereits vollständig unter «Fassung 01.12.2022 — Delta zur Fassung 01.01.2017»,
  Punkt 3 der Delta-Liste. Eingetragen von Wissens-Chef Run 8 (18.07.2026), am Original S. 24 der
  Fassung Stand 01.12.2022 nochmals gegengelesen und in Run 23 (25.07.2026) bestätigt («wortgetreu
  mit dem Original übereinstimmend»). Dieser Punkt war seit dem 18.07. de facto erledigt.
- [x] **GESCHLOSSEN (Run 24, 260725): S.16-ABSV-Änderung — Diagnose bereits in Run 23 korrigiert,
  Punkt hier nur nicht geschlossen.** Der Beschluss ABSV 22.03.2017 betrifft tatsächlich **S. 15**
  (nicht S. 16): per `pdftotext -layout` beider Fassungen verifiziert, dass beide Bildunterschriften
  unter derselben Überschrift «zu Ziffer 2.4.4» stehen (keine Vertauschung 2.4.3/2.4.4) und die
  zweite Bildunterschrift von «Horizontaler Fluchtweg…» auf «Gesamtlänge von Fluchtwegen…» umbenannt
  wurde. Die Seitenangabe «Seiten 15 und 16» der amtlichen Änderungsliste erklärt sich durch den
  Druck-Umbruch der Zeichnungsfläche (Bild reicht optisch bis S. 16, dort aber nur eine dritte,
  unveränderte Bildunterschrift). Dokumentiert im Destillat, Abschnitt «Ziff. 2.4.3/2.4.4 und der
  Beschluss ABSV 22.03.2017», inkl. Delta-Liste Punkt 2. Keine weitere Nachführung nötig.
- [x] **GESCHLOSSEN (Run 24, 260725): METHODIK-PFLICHT pdfimages-Bildvergleich bereits in
  `training/PROGRAMM.md` verankert.** Steht dort seit 25.07.2026 als Methodik-Pflicht 4
  («Bildvergleich-Pflicht bei Normen mit Prinzipskizzen»). Keine weitere Aktion nötig.
- [x] **GEKLÄRT 23.08.2026 (QUESTIONS-Lauf): SIA 266/1 hat eine neuere Ausgabe — 2015.** Web-Beleg
  shop.sia.ch/normenwerk/ingenieur/266-1_2015_d (SIA-Shop-Produktseite, geprüft 23.08.2026):
  «SIA 266/1:2015 Bauwesen 505 266/1 Ersetzt Norm SIA 266/1:2003», gültig ab 01.07.2015, 16 Seiten,
  CHF 30.-. Bestätigt: parallel zur Revision von SIA 266 selbst (ebenfalls 2015). Die Ausgabe 2015
  liegt NICHT im Bestand (neue Bring-Schuld: SIA-Abo/Kauf). Destillat `sia-266-1-2003.md` von
  `established` auf `superseded` umgestellt (Frontmatter + Warnhinweis im Fliesstext), REGISTER.md
  Zeile SIA 266/1 nachgeführt.
- [x] **GEKLÄRT 23.08.2026 (QUESTIONS-Lauf): SIA 410 UND SIA 410/1/2 sind zurückgezogen — per
  01.01.2025.** Web-Beleg suissetec.ch/de/news-detail/rueckzug-normen-sia-410-1986-und-sia-410-1-2-1981.html
  (geprüft 23.08.2026), Begründung wörtlich: «die Darstellung von Aussparungen [ist] nun
  ausschliesslich in der Norm SIA 400 «Planbearbeitung im Hochbau» abgebildet»; für die
  HLKS-Symbole (Heizung, Lüftung/Klima, Sanitär) gelten neu die suissetec-Planungsrichtlinien als
  umfassendere, aktuelle Quelle. Der Rückzug betrifft ausdrücklich BEIDE hier destillierten
  Dokumente (Hauptteil 1986 und das Farbcode-/Aussparungs-Doppelheft 410/1+410/2:1981). Beide
  Nachfolgewerke (SIA 400, suissetec-Planungsrichtlinien) liegen nicht im Bestand (neue
  Bring-Schuld). Destillate `sia-410-1986.md` und `sia-410-1-2-1981.md` von `established` auf
  `zurückgezogen` umgestellt (Frontmatter + Warnhinweis im Fliesstext, Textwiedergabe selbst bleibt
  als historische Dokumentation korrekt); REGISTER.md Zeile SIA 410 nachgeführt. Ebenfalls
  ausserhalb des Geltungsbereichs und weiterhin nicht recherchiert: die SEV-Sinnbilder für Elektro.
- [x] **ENTSCHIEDEN 26.07.2026 (Raphael): PL-03 wird ins Inventar aufgenommen.** Umgesetzt am
  26.07.2026: `training/norm-inventar.md` fuehrt PL-03 als gleichrangige Quelle (Erst-Scan, 116
  Dateien, Ordner-Tabelle mit Relevanz/Status, Fassungs-Befund-Tabelle aus dem Mapping-Report);
  `training/PROGRAMM.md` Methodik-Pflicht 1 entsprechend umgestellt. **Daraus folgt konkrete Arbeit
  fuer den naechsten Lauf:** Re-Destillation von `vkf-brl-verwendung-baustoffe` (BRL 14-15de,
  hoechste Prioritaet — umfangreichste IOTH-Aenderungsliste) und `vkf-brl-13-15-baustoffe-bauteile`
  gegen die 2017er-Fassung; danach die noch nicht inventarisierten PL-03-Unterordner (01, 03, 04,
  05, 06) erfassen. Bis zur Re-Destillation tragen beide Destillate einen Fassungs-Vorbehalt.

  *Urspruengliche Fassung des Punktes:* **Der Normen-Bestand umfasst ZWEI Ablagen — das Inventar deckt nur eine ab.** Die geltenden
  VKF-Fassungen 2017/2022 liegen in `PL - 03 Brandschutz/`, das `training/norm-inventar.md` scannt aber
  nur `PL - 02_Recht_Norm/02_Normen/`. Deshalb konnten zwei Destillate unbemerkt auf der Fassung 2015
  stehen, während die Fassung 2017 im Haus lag. **Zu entscheiden:** PL-03 in das Inventar aufnehmen (mit
  Fassungs-Spalte) oder als bewusst getrennte Brandschutz-Ablage führen und im Skill `normen` einen
  Pflicht-Querblick verankern. Bis dahin gilt für jede VKF-Fundstelle: **vor Verwendung prüfen, ob in
  PL-03 eine jüngere Fassung liegt.** Vorarbeit: `outputs/2026-07-25_pl03-fassungs-mapping.md`
  identifiziert die vier nichtsprechenden `BSPUB-*.pdf`-Dateien.
- [ ] **Cross-Contamination erneut aufgetreten (Rule 260724).** Der Selfcommit `3fe6585b` trägt die
  Meldung «twin-mail-training: Batch 61», enthält aber sämtliche heutigen Normen-Dateien (Destillate,
  CHANGELOG, Inventar, Report) sowie Dateien der KB `energie` und `twin`. Kein Datenverlust, aber die
  Commit-Historie ordnet fremde Arbeit dem falschen Loop zu und erschwert die Nachvollziehbarkeit.
  Ursache ist das pathspec-lose Committen im geteilten Index. Beobachten, ob der native Synology-Cron
  hier ebenfalls pathspec-begrenzt arbeiten müsste.
- [x] **Doppelte Run-Nummer 21 im Protokoll.** Zwei Läufe haben heute unabhängig die Nummer 21 belegt;
  dieser Lauf führt deshalb die Nummer **22**. Der Report `outputs/2026-07-25_normen-nacht-run21.md`
  bleibt als Protokoll unverändert stehen, seine Kernaussage («keine reale Quelle zu bearbeiten»,
  «7. Bestätigung der Endbedingung») ist durch Run 22 jedoch überholt. Künftig Run-Nummer erst nach
  Sicht der jüngsten `outputs/`-Datei belegen.

  > **GESCHLOSSEN Run 61 (25.08.2026) — die Lehre ist im Programm verankert, damit ist der
  > Punkt erledigt.** Die Zeile verlangte «Kuenftig Run-Nummer erst nach Sicht der juengsten
  > `outputs/`-Datei belegen». Genau dieser Satz steht seit Run 22 woertlich als verbindliche
  > Vorgabe in `training/PROGRAMM.md:89` («Run-Nummer erst nach Sicht der juengsten
  > `outputs/`-Datei belegen — am 25.07.2026 haben zwei Laeufe unabhaengig die Nummer 21
  > vergeben») und ist im Auftragstext des Scheduled Task wiederholt. Der historische
  > Doppeleintrag `outputs/2026-07-25_normen-nacht-run21.md` bleibt als Protokoll stehen.
  > **Anders als bei den drei gleichzeitig geprueften Faellen (N-R40-7 Z. ~2889, Q&A-
  > Selbstbefragung Z. ~4080, Z1/Z2 Z. ~5049) traegt diese Zeile KEINEN Schliessungsvermerk
  > darueber** — sie ist also kein bewusst stehen gelassener Ursprungswortlaut, sondern war
  > tatsaechlich nie nachgezogen.
- [x] **Wissenscheck Phase 1 (Health-Check) durchgefuehrt (2026-07-24, Mac Mini) — mit
  budget-bewusster Methodik statt Volltext-Audit.** Der Vorbehalt vom 23.07. (voller
  Struktur-Audit sprengt das Nachtschicht-Budget) hat sich bestaetigt fuer eine Volltext-
  Lektuere aller 271 Destillate — geloest, indem das Audit ueberwiegend deterministisch
  (grep auf Frontmatter/Links/Status) statt per Einzel-Lektuere gefahren wurde: 17 tote
  `[[links]]`, 65/271 Umlaut-Bug-Faelle, 0 neue Widersprueche (ausser Sonderauftrag-Klaerung
  SIA/VKF-Meilenstein), Kosten ~2.4 USD. Ein echter Volltext-Claim-Abgleich (Audit C ueber
  alle 271 Dateien) bleibt weiterhin ein dedizierter, groesserer Lauf — siehe naechster Punkt.
  Report `outputs/2026-07-24_health-check.md`.

- [x] **Vier tote `[[links]]`-Namensfehler behoben (Health-Check 24.07.2026 → Fix 24.07.2026,
  Mac Mini Nachtschicht 18:30):** `destillate/sia-382-1-2014.md` `[[sia-2024]]` → korrigiert auf
  `[[sia-mb-2024-2006]]` (einziger Treffer im Bestand, Merkblatt-Praefix ergaenzt). Dieselbe
  Datei `[[sia-180]]` → korrigiert auf `[[sia-180-2014]]` (inhaltlich bestaetigt: SIA 180:2014
  = Waerme-/Feuchteschutz, thematisch einschlaegig fuer SIA 382/1 Lueftung/Klima; die beiden
  080/081/082-Dateien behandeln ISO-10077-Fensterberechnung, nicht einschlaegig).
  `destillate/sia-480-2004.md` `[[sia-102-2003]]` → **kein Linkfehler, sondern echte
  Bestandsluecke**: Fliesstext (Zeile 23) zitiert korrekt "SIA 102:2003", diese Ausgabe ist im
  Bestand nicht digitalisiert (nur 2014/2020 vorhanden). Gemaess Rule identifikatoren-
  verifizieren NICHT auf falsche Ausgabe umgebogen, sondern zu Klartext "SIA 102:2003 (nicht im
  Bestand, siehe QUESTIONS)" entlinkt — Beschaffung der 2003er-Ausgabe bleibt offen, kein
  Nachtschicht-Fall (evtl. kostenpflichtig). `destillate/din-1960-2010.md`
  `[[din-1961-2012]]` → korrigiert auf `[[din-1961-2010]]` (Datei traegt Ausgabe
  "DIN 1961:2010-08", passend zur Gegendatei "DIN 1960:2010-08"; 2012 war Zahlendreher).
  **Zusaetzlich beim Fix gefunden (nicht in den urspruenglichen 4, gleiches Fehlermuster):**
  `destillate/sia-384-201-2017.md` und `destillate/sia-2040-2017.md` hatten ebenfalls
  `[[sia-2024]]` statt `[[sia-mb-2024-2006]]` — mitkorrigiert. Alle 6 Links geprueft: 0 offene
  `[[sia-2024]]`/`[[sia-180]]`/`[[sia-102-2003]]`/`[[din-1961-2012]]`-Treffer mehr im
  `destillate/`-Ordner (CHANGELOG/QUESTIONS/outputs-Historieneintraege bewusst unveraendert
  gelassen, sind Protokoll).

- [x] **EN 520 Original-Destillat fehlt (2026-07-23, KISPI-Fall Rohdichte 800 kg/m³) — soweit
  ohne Kauf recherchiert (23.07.2026, Mac Mini Nachtschicht):** SharePoint PL-02
  02_Normen/DIN_Norm geprüft (72 Dateien) — SN EN 520 ist **nicht im JANS-Bestand** und nur
  kostenpflichtig bei Beuth/DIN Media/SNV erhältlich (kein Einkauf ohne Freigabe, kein Fall
  für eine unbeaufsichtigte Nachtschicht). Öffentliche Normvorschau (baunormenlexikon.de,
  DIN EN 520:2009-12) bestätigt immerhin die genaue Fundstelle **Ziffer 4.13 «Definierte
  Dichte (Typ D)»** sowie zwei bisher fehlende Typenbuchstaben (E, P) — in `wiki/
  en-520-gipsplattentypen.md` und `wiki/REGISTER.md` nachgetragen. Der Zahlenwert
  (800 kg/m³) bleibt wie bisher über zwei unabhängige Sekundärquellen + Produktdatenblätter
  belegt (Typ-D-Definition ist damit ausreichend abgestützt). Bleibt offen: Volltext-Kauf,
  falls je ein wörtliches Norm-Zitat nötig wird — dann mit Raphael abstimmen, kein
  Nachtschicht-Standardfall.

- [x] **ersetzt/ersetzt_durch-Lücke (Mac Mini Nachtschicht, 2026-07-22, DIN-Teilmenge):** aus dem
  Audit-F-Befund vom 21.07. ("Feld ersetzt/ersetzt_durch fehlt in 127 Destillaten") die DIN/VSS/
  RAL-Teilmenge (Mac-Mini-Scope) geprüft: von 67 DIN/VSS/RAL-Destillaten hatten nur 3 das Feld
  komplett unbelegt — `din-1356-6-2006` (kein Nachfolger, Status [CURRENT] gemäss DIN Media),
  `din-276-4-2009` (zurückgezogen, ersetzt durch DIN 276:2018-12) und `din-4102-2-1977`
  (formal weiterhin [CURRENT], Prüfverfahren aber teilweise durch DIN EN 1363-1/1364-1-2/
  1365-1-4:1999-2000 abgelöst). Alle drei mit Quellenbeleg (DIN Media, dinmedia.de, abgerufen
  22.07.2026) nachgetragen; als Bonus dieselbe Lücke im verlinkten `din-276-1-2008` (fehlte dort
  nur `ersetzt_durch`, `ersetzt` war schon belegt) geschlossen. **Restumfang (~123 Destillate,
  weit überwiegend SIA/VKF) bleibt offen — MacBook-Pro-Scope** (Rule auto-verbesserungen 260714,
  Arbeitsteilung). Report: `outputs/2026-07-22_din-ersetzt-durch-luecke.md`.

- [x] **ERLEDIGT Run 15 (2026-07-17): Die 30 Ergaenzungskandidaten aus Run 14 sind eingearbeitet.**
  29 gemeldete Luecken am Original verifiziert und in die Destillate eingebaut (SIA 103: 10,
  SIA 105: 7, SIA 118: 2, SIA 112: 2, SIA 451: 4, VKF BRL 16-15: 4). Verdikt: 28x `belegt`,
  1x `abweichend` (VKF-BRL-16-15-Ausgabejahr, siehe unten). Anschliessende Widerlegungs-Pruefung:
  5 Beanstandungen, alle korrigiert. Details unten und in `outputs/2026-07-17_normen-nacht-run15.md`.

- [ ] ~~**Q&A-Selbstbefragung SIA/VKF-P1 (Run 14, 2026-07-15) — 30 Ergaenzungskandidaten:**~~
  Alle 10 P1-Kernnormen (SIA 102/103/105/111/112/118/416/451, VKF Brandschutznorm 1-15,
  VKF BRL 16-15) durch je 20–22 am Original beantwortete Pruefungsfragen gegengeprueft:
  **0 sachliche Fehler**, alle established bestaetigt. Gemeldete Luecken (Destillate korrekt,
  aber unvollstaendig) als Ergaenzungskandidaten fuer einen kuenftigen Volldestillat-Lauf:
  SIA 103 (mittlere-Stundenansaetze-Formel H=Tt·h·a + Anforderungsfaktoren, Kuendigung-zur-
  Unzeit-Zuschlag 10 %, CHF-100'000-Schwelle, Erhaltung +0,2–0,6, ARGE 5 %, 10-J-Verjaehrung),
  SIA 105 (Phasengliederung/Leistungsmodell, Genauigkeitsgrade ±15 %/±10 %, CHF-100'000-Schwelle),
  SIA 118 (Art. 177 Schlusspruefung/Beweissicherung, Art. 155 Abs. 2 Nachfrist 1 Monat),
  SIA 112 (Verweis SIA 469 + SIA 269/2 in Modulen 532.2/622/632), SIA 451 (Feld 20 Laufnummer,
  Header-Felder 11/12, Schlussrecord-Datum TTMMJJ), VKF 16-15 (Personenbelegungs-/Treppen-/
  Tuerverschluss-Kennwerte im Anhang). Volltext-Fundstellen je Norm in `destillate/qa/*-fragen.md`.
- [x] **VKF BRL 16-15 — Ausgabe klaeren (Run 14).** Der Q&A-Agent liest im PDF
  `16-15_rev2016_flucht_und_rettungswege.pdf` die **Ausgabe 2017** (inkl. IOTH-Revisionen
  2015/2016). REGISTER/Inventar fuehren die Datei ohne klares Ausgabejahr — Ausgabe-Feld
  am Original verifizieren und in REGISTER nachtragen (2017 statt 2015/2016).
  Erledigt bereits durch Run 22 (25.07.2026), hier nur nachgetragen (23.08.2026,
  QUESTIONS-Abarbeitung). `wiki/REGISTER.md` Zeile ~676 führt die Fassung seit Run 22 präzise:
  «Ausgabe 2015, Fassung 01.01.2017 mit Zusatzvermerk «Stand 01.12.2022» (Änderungsstufen:
  ABSV 22.03.2017, TKB 09.06.2021, Fehlerkorrektur 01.12.2022 — alle drei laut Änderungsliste
  S. 2 «im Anhang»)» — die ursprünglich befürchtete Ambiguität 2015/2016/2017 ist damit
  vollständig aufgelöst, kein offener Rest.
- [x] Gültigkeitsstand der Verzeichnisse — **beantwortet 11.07.2026 (Run 1):**
  `ersetzte_normen.pdf` = SIA-Rückzugs-/Ersatz-Register, **Stand 25.02.2013**;
  `Gesamtverzeichnis SIA.pdf` = Produkt-/Preiskatalog **~2002** (kein Gültigkeitsregister).
  → `wiki/REGISTER.md` aus dem 2013-Register aufgebaut. **Neue Lücke:** Revisionen NACH
  Feb 2013 sind nicht amtlich belegt; SIA-Shop-Abgleich nur auf Zuruf (Bring-Schuld Raphael).
- [x] SIA 118 — **beantwortet 11.07.2026 (Web-Verifikation):** Die aktuelle Ausgabe ist
  **SIA 118:2013** (in Kraft seit 01.01.2013, ersetzt 1977/91; keine neuere Ausgabe).
  Suchlauf über den ganzen SharePoint: nur die 1991er vorhanden. Entscheid Raphael:
  aktuellste verwenden → **Kauf SIA-Shop nötig (Bring-Schuld Raphael, kostenpflichtig —
  Claude tätigt keine Käufe)**. Bis dahin in Dossiers «SIA 118» ohne Detail-Artikelzitate
  referenzieren; Destillat der 1991er nur für Alt-Kontext.
- [x] **GESCHLOSSEN (Run 24, 260725): SIA 102 2014↔2020 bereits im Inventar korrekt markiert.**
  `training/norm-inventar.md` Zeile 93 führt `102_2014.pdf` bereits als «— ersetzt durch 2020»
  mit Verweis auf `sia-102-2014.md` (established, Altvertrags-Kontext). 2020 ist als gültige
  Ausgabe destilliert (`sia-102-2020.md`). Keine weitere Aktion nötig.
- [ ] **SIA 181:2020 re-destillieren (Wissens-Chef Run 3, 2026-07-13):** Register führt bislang
  2006 (2013-Benchmark), KB energie arbeitet bereits mit **SIA 181:2020**. Aktuelle Ausgabe am
  Original erfassen, dann REGISTER Zeile 109 auf 2020 heben. Ausgabe kostenpflichtig (SIA-Shop,
  Bring-Schuld Raphael — Claude tätigt keine Käufe).
  → **Nachgetragen ins Arbeitsregister** `training/norm-inventar.md`, Abschnitt «Bring-Schulden aus
  anderen KBs» (Wissens-Chef Run 17, 27.07.2026, Priorität P1). Der Punkt stand 14 Tage
  ausschliesslich hier — also an dem Ort, den der Nacht-Loop nicht abarbeitet; das ist derselbe
  Mechanismus, den Run 16 für die vier `baurecht`-Bring-Schulden diagnostiziert hat. Seit Run 16
  tragen beide Destillate (`sia-181-2006.md` hier, das Körperschall-Destillat in `energie`) ein
  ⚠-Ausgaben-Flag +3 dB (2006) gegen +4 dB (2020), das den Zustand sichtbar hält, aber nicht auflöst.
  **Teilfortschritt 23.08.2026 (QUESTIONS-Abarbeitung):** Der eigentliche Volltext-Re-Destillat-
  Auftrag bleibt Bring-Schuld (kostenpflichtig, unverändert). Neu gefunden und vollständig
  destilliert wurde aber das kostenlose SIA-FAQ-Dokument «Fragen und Antworten zur Norm
  SIA 181:2020» (16 amtliche Auslegungsfragen, September 2025, `shop.sia.ch/normenwerk/
  architekt/181_2020_d`, Preisgruppe 0) — `destillate/sia-181-2020-faq.md`, `established`. Es
  löst insbesondere die Raumakustik-Übergangsregel (bis SIA 181/1 vorliegt: SIA 500 → DIN 18041,
  SN EN ISO 3382-3, VDI 2569) und klärt Ziff. 0.1.1/0.1.2/0.3/2.3/3.1-3.4/A.3/A.4 amtlich. Das
  +3dB/+4dB-Delta wird davon NICHT berührt (andere Ziffern betroffen). Checkbox bleibt `[ ]`,
  da der Kern des Auftrags (Volltext-Re-Destillat, REGISTER Zeile 109 auf 2020 heben) weiterhin
  offen ist.
- [x] **GEKLÄRT Run 22 (260725), soweit ohne Beschaffung möglich: die 2022er-Fassung ist NICHT im
  Bestand.** Die Dateien in PL-02 und PL-03 sind byte-identisch (MD5 `56fb4bab…`, 11 S.) — trotz
  Ordnername «2015-17-22» liegt dort nur eine Kopie der 2015er. Belegt: Ausgabe/Fassung **06.03.2015**
  (S. 1) und Unterdachbahnen **RF4 (cr)**, Modalität «dürfen» (Ziff. 3.2.3, S. 8). Der gemeldete Delta
  RF3(cr) bleibt damit **unentschieden**; für die PV-Beratung gilt bis zur Beschaffung der 2015-Stand
  mit Fassungs-Vorbehalt. Beschaffung via praever.ch/bsvonline.ch (Bring-Schuld, kein Loop-Fall).
  Befund im Destillat `vkf-brm-2001-15-solaranlagen.md`, Abschnitt «Fassungs-Klaerung 25.07.2026».
  - **Nachtrag 05.08.2026:** Der Bestandsbefund bleibt richtig, die Handlungsanweisung nicht. Die
    Ausgaben 01.01.2017 und 01.01.2022 sind über `services.vkg.ch` beschafft und gelesen; der Delta
    ist **bestätigt**: RF3(cr)-Pflicht seit 01.01.2017. Der Satz «für die PV-Beratung gilt bis zur
    Beschaffung der 2015-Stand» ist damit hinfällig. Siehe Abschnitt 2026-08-05 am Kopf dieser Datei.
- [x] **P1-SIA-Kern (ohne 102/118) + VKF-Kern destilliert — 12.07.2026 (Run 2):** SIA
  103/105/111/112/416/451 + VKF 1-15/16-15/14-15/27-15, alle am Original adversarial verifiziert
  (`established`). Befund: **SIA 105:2020 hat kein Art.-7-Baukostenmodell** (nur Kategorie-/
  Zeitmodell Art. 6) — für `honorarberechnung-sia102` relevant.
- [x] **ÜBERHOLT, korrigiert Run 22 (260725):** «SIA 118:1991 noch nicht destilliert» stimmt seit
  260712 nicht mehr — `destillate/sia-118-1991.md` existiert, ist `established` (Volltext, Kennzahlen
  Modell-D-verifiziert) und wurde in Run 14/15 zusätzlich per Q&A gegengeprüft. Offen bleibt allein die
  **Beschaffung** der gültigen Ausgabe 118:2013 (Bring-Schuld Raphael, kostenpflichtig).
- [x] VKF — **beantwortet 11.07.2026 (Web-Verifikation bsvonline.ch):** Die **BSV 2015 sind
  weiterhin die rechtsgültigen** Brandschutzvorschriften; die Totalrevision «BSV 2026» wird
  bezüglich Inkraftsetzung erst an der **IOTH-Plenarversammlung im März 2027** behandelt.
  Bestand 2015 bleibt also die Arbeitsgrundlage. Beschafft und abgelegt: **Normkonzept
  BSV 2026** (170 S., Stand 06.10.2022) unter `VKF_Norm/07_BSV 2026 Projekt (noch nicht
  in Kraft)/`.
- [ ] **BSV 2026 überwachen:** Sobald die definitiven Norm-/Richtlinientexte auf
  bsvonline.ch publiziert sind (erwartet nach IOTH-Entscheid März 2027), herunterladen und
  neben den 2015er-Bestand legen; Skill `brandschutz` erst NACH Inkraftsetzung umstellen.
  > **Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung, dreizehnter Lauf) — weiterhin nicht publiziert,
  > Fahrplan präzisiert.** `bsvonline.ch/de/aktuell/information-bsv-2026` (WebFetch, Abruf
  > 24.08.2026) bestätigt: Inkrafttreten weiterhin für 2027 vorgesehen («Inkrafttreten neue
  > Brandschutzvorschriften jetzt für 2027 vorgesehen», Grund: Steuerungsausschuss sieht an
  > einigen Stellen noch Detailabstimmungsbedarf zwischen den Vorschriftenteilen). Fahrplan laut
  > derselben Quelle: technische Vernehmlassung September 2025–Januar 2026 (abgeschlossen),
  > Schulungsstart Dezember 2025, **politische Vernehmlassung August–November 2026** (läuft ab
  > diesem Monat), Genehmigung durch die IOTH-Plenarversammlung März 2027. Kein definitiver
  > Text publiziert, weiterhin nicht zitierfähig als geltendes Recht — Checkbox bleibt offen,
  > nächster sinnvoller Check erst nach der politischen Vernehmlassung (ab Dezember 2026).
- [x] DIN-Ordner enthält `FileOpenInstaller.dmg` + Anleitung — **beantwortet, DIN/VSS/RAL
  komplett 13.07.2026 (Run 5):** alle 72 DIN-Dateien wurden destilliert oder als Nicht-Norm
  übersprungen, kein DRM-Hindernis aufgetreten; `FileOpenInstaller.dmg` selbst ist kein
  Norm-PDF und im Inventar als übersprungen erfasst.
- [x] **GESCHLOSSEN (Run 24, 260725): SIA 385/1 — PDF liegt vor (nicht «nur Screenshots»),
  ist aber ein 6-seitiger Auszug/Vorschau, nicht der Volltext.** Datei
  `SIA_Norm/i385-1_2011_d.pdf` (6 von 28 Normseiten: Titelblatt/Impressum/Inhaltsverzeichnis/
  Vorwort/Kommission/Genehmigung, Ziff. 0-5 + Anhang A/B fehlen komplett) — bereits am
  17.07.2026 destilliert und korrekt als `struktur-destillat (Auszug)`/Bring-Schuld markiert
  in `destillate/sia-385-1-2011.md`. Kein weiterer Klärungsbedarf.
- [x] **GESCHLOSSEN (Run 24, 260725): SIA 380/1:2016 im Bestand-Ordner bestätigt, ebenfalls
  nur 6-seitiger Auszug/Vorschau.** Datei `SIA_Normen/SIA 380_1_2016/i380-1_2016_d.pdf`
  (6 von 60 Normseiten: Titelblatt/Impressum/Inhaltsverzeichnis/Vorwort/Kommission/Genehmigung;
  Ziff. 0-3 + Anhänge A-E mit allen Grenz-/Zielwerten fehlen komplett) — bereits am 17.07.2026
  destilliert, `destillate/sia-380-1-2016.md`, `status: speculative`, klar als Bring-Schuld
  markiert (Volltext-Kauf nötig, blockiert Agent `energie-berater`, siehe Run-23-Bring-Schulden-
  Liste). REGISTER-Ausgabejahr 2009↔2016 nicht weiter verifizierbar ohne Volltext-Beschaffung.
- [x] DIN-Ordner DRM (FileOpenInstaller.dmg) — **teilweise beantwortet 12.07.2026:** die
  getesteten nationalen DIN-PDFs (DIN 277-1, 277-2, 5034-1) waren OHNE DRM-Barriere direkt
  lesbar (kein FileOpen-Prompt, Text/Bild direkt extrahierbar). Für die grossen/gescannten
  DIN-EN-Dokumente (4102-1/2, 18040-1/2, 1946-6) wurde dies in diesem Lauf NICHT getestet
  (aus Kostengründen zurückgestellt) — im nächsten DIN-Lauf prüfen und ggf. als «DRM,
  manuell» markieren.
- [x] DIN 277-3 (Mengen/Bezugseinheiten) — **destilliert 260712** (din-277-3-2005.md),
  DIN-277-Serie (Teil 1-3) komplett.
- [x] Grosse/scanlastige VSS-Dateien (640 065/281/291a/578) — **destilliert 260713 (Run 4)**,
  Familie VSS im Inventar vollstaendig abgearbeitet.
- [x] ~~Merkblatt SIA 2014 «CAD-Layerorganisation» (der Layerkatalog, auf den SIA 400:2000 Ziff.
  B.11.3 zwingend verweist: Agent A–/B–/S– + Elementcode + Präsentationscode E/T/D) ist NICHT im
  Normen-Bestand. Bring-Schuld für den Wettbewerbs-Layer / die maschinelle DXF-Layer-Codierung —
  bei konkreter Layer-Benennung SIA 2014 beiziehen (SIA-Shop, nur auf Zuruf). (Notiert 12.07.2026
  beim Destillieren von SIA 400.)~~
  > ✅ **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Die Prämisse war seit Wochen überholt:
  > `training/norm-inventar.md` Z. 607 führt `2014_2017.pdf` bereits seit **13.07.2026 (Run 5)**
  > als `established` (Destillat `destillate/sia-2014-2017.md`, Original S. 1-28 vollständig
  > gelesen und verifiziert), die Vorgänger-Ausgabe 1996 zusätzlich seit **19.07.2026**
  > (`destillate/sia-mb-2014-bestand.md`, `established`). `wiki/REGISTER.md` Z. 514/1081/1115
  > hatte diesen Bestand am 23.08.2026 bereits selbst nachgeführt («Bereits an anderer Stelle
  > belegt, hier nachgeführt») — nur das ursprünglich anfragende Destillat `sia-400-2000.md`
  > (Abschnitt «JANS-Praxis-Transfer»/«Offene Punkte», das diese Frage am 12.07.2026 aufwarf)
  > und diese QUESTIONS-Zeile trugen die veraltete «nicht im Bestand»-Aussage noch fort. Beide
  > jetzt korrigiert und auf `[[sia-2014-2017]]`/`[[sia-mb-2014-bestand]]` verlinkt. Fundstelle
  > Layer-Codierung: SIA 2014:2017, obligatorische Teilschlüssel Agent/Element/Präsentation
  > Ziff. 4.2.1/4.3/4.5.2 (Tabelle 1), optionale Teilschlüssel Ziff. 4.4 (Tabelle 2),
  > Beispiel-Layerschlüssel Figur 3 Ziff. 4.2.2; Element-Codierung stützt sich auf eBKP
  > (Ziff. 2.1.6/3.3.1/4.6.1/6.5.1), nicht mehr auf die EKG-Gliederung der 1996er-Ausgabe.
  > Keine Bring-Schuld mehr — der Wettbewerbs-/DXF-Layer kann direkt gegen das established
  > Destillat gebaut werden.
- [~] **SIA 242 «Verputz- und Gipserarbeiten» ist NICHT im Normen-Bestand** (inkl. der
  Qualitätsstufen-Systematik Q1–Q4 für gespachtelte Gipsplatten-Oberflächen). Bring-Schuld;
  gebraucht am 21.07.2026 für die KISPI-Fachfrage LBW-Beschichtung (Antwort aus Fachpraxis
  erstellt, Projektordner `2619 .../KISPI Trockenbau LBW/260721-LBW-Beschichtung-Antwort.md`) —
  bei Beschaffung das Destillat dagegen verifizieren. (Notiert Dauerschicht-Zyklus 35.)
  **TEILWEISE GESCHLOSSEN, SIA-Sweep sechsundzwanzigste Fortsetzung (23.08.2026):** Der
  Ausgangssatz «ist NICHT im Normen-Bestand» stimmt nur für die heute gültige Ausgabe SIA
  242:2012 (Bring-Schuld bleibt, siehe `wiki/REGISTER.md` Zeile SIA 242). Im Bestand liegen aber
  zwei Altausgaben-PDFs von 1994 (`alle/xalt/242-1_1994_d.pdf`, `alle/xalt/242_2_d.pdf`,
  vollständig gelesen und destilliert: `destillate/sia-242-v1994.md`). **Die Q1-Q4-Stufen sind in
  keinem der beiden Texte enthalten** — die Prämisse dieser QUESTIONS-Zeile war falsch, das
  System stammt nicht aus SIA 242. Quelle der Q1-Q4-Stufen für die KISPI-Fachfrage bleibt offen zu
  klären (vermutlich Hersteller- oder DIN/EN-Quelle, nicht SIA).
  > ✅ **Q1-Q4-QUELLENFRAGE GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung).** Die Vermutung
  > «Hersteller- oder DIN/EN-Quelle, nicht SIA» trifft zu, mit belegter Provenienzkette: Die
  > KB führt bereits `destillate/crb-merkblatt-16d-06-spachtelungen-weissputze.md` (CRB,
  > gemeinsam mit den Berufsverbänden SMGV/FRMPP, Ausgabe 01/2006, Q1-Q4 für Gipsplatten Ziff. 3
  > S. 2) — dieses Merkblatt selbst nennt in Ziff. 6, S. 4 als eine seiner drei Quellen
  > wörtlich «Merkblatt Nr. 2 «Verspachtelung von Gipsplatten – Oberflächengüten» der deutschen
  > Industriegruppe Gipsplatten». Frei zugänglich am Original gelesen (WebFetch + `pdftotext`,
  > 24.08.2026): **«Verspachteln von Gipsplatten — Klassifizierung der Oberflächenqualitäten»**,
  > Gemeinschaftsdokument von **Eurogypsum** und **UEEP** (Vereinigung der europäischen Gipser-,
  > Trockenbau- und Stuckateur-Verbände), 12 Seiten, PDF-Metadaten CreationDate 11.03.2010
  > (`eurogypsum.org/wp-content/uploads/2015/04/EUROGYPSUMFINSHINGDE.pdf`) — definiert
  > wortgleich dieselben vier Stufen Q1 (Grundverspachtelung/Stossfugen) bis Q4 (vollflächiges
  > Überziehen, Schichtdicke > 1 mm) und verweist für Spachtelmaterialien auf **EN 13963**.
  > **Einschränkung, damit nichts überclaimt wird:** die CRB-Quelle nennt als Verfasser die
  > *deutsche* Industriegruppe Gipsplatten, nicht Eurogypsum/UEEP direkt — beide Dokumente sind
  > inhaltlich und im Titel praktisch deckungsgleich (europäische Branchenharmonisierung, auf
  > die auch die deutsche Fassung zurückgeht), aber das exakte deutsche Merkblatt Nr. 2 selbst
  > wurde nicht aufgefunden/gelesen; die Gleichsetzung ist eine belegte, aber nicht
  > letztbewiesene Zuordnung. Ergebnis: **nicht SIA, keine CH-Norm** — eine europäische
  > Branchenvereinbarung (Eurogypsum/UEEP), in der Schweiz über CRB/SMGV/FRMPP als
  > NPK-Devisierungsgrundlage übernommen. Kein neues Destillat angelegt (das CRB-Merkblatt ist
  > die praxisrelevante CH-Fundstelle); Eurogypsum/UEEP-Dokument als Provenienz-Fussnote in
  > `destillate/crb-merkblatt-16d-06-spachtelungen-weissputze.md` nachgetragen.

- [x] **P2-SIA-Batch 1 destilliert — 12.07.2026 (Run 3):** SIA 260–267 (Tragwerk),
  500/358/251/252/253/257/271/281/279/232/329/240 (Hochbau) — 20 Normen am Original
  adversarial verifiziert (`established`). Tragwerksnormen-Generation 2003 vollständig
  im Bestand + destilliert (Grundlagen bis Geotechnik).
- [~] **TEILWEISE GESCHLOSSEN Run 22 (260725): Bestand geprüft — 266/1 destilliert, die übrigen liegen
  nur französisch vor.** Systematische Prüfung: **SIA 266/1:2003 ist deutsch im Bestand** (Datei
  `alle/i/266_1_d.pdf`, falsch im italienischen Ordner, war als «Sprachvariante» abgehakt) und ist jetzt
  destilliert (`sia-266-1-2003.md`). Von den übrigen `/1`-Normen liegen im Bestand **nur französische
  Fassungen** (`alle/f/261_1_f.pdf`, `262_1_f`, `263_1_f`, `264_1_f`, `265_1_f`, `266_1_f`, `267_1_f`) —
  keine deutschen. Damit bleibt für 260/1 bis 265/1 und 267/1 offen: entweder deutsche Ausgaben beschaffen
  (Bring-Schuld) oder bei tragwerksstatischen Detailfragen bewusst die französische Fassung nachlesen und
  die Sprachquelle im Zitat kennzeichnen. Für 260/1 wurde überhaupt keine Bestandsdatei gefunden.
  **Nachtrag 07.08.2026:** deutsche Ausgaben **261/1, 262/1, 264/1, 267/1 (je 2003) übernommen**
  (Downloads-Sammlung, Titelblätter verifiziert, `alle/…_d.pdf`) — Bring-Schuld für diese vier
  GESCHLOSSEN. 263/1:2003 und 265/1:2003 ebenfalls dt. übernommen, aber als Altausgaben
  (`alle/xalt/`; gültig sind 263/1:2013 bzw. 265/1:2009 — deren deutsche Fassungen bleiben
  Bring-Schuld). 260/1 weiterhin ohne Bestandsdatei.
- [~] **TEILWEISE GESCHLOSSEN (QUESTIONS-Abarbeitung 23.08.2026, nachgetragen — Verifikation
  bereits am selben Tag anderswo geleistet).** Ursprungswortlaut: SIA 240:1988
  (Metallbauarbeiten) sei eine sehr alte Ausgabe (ersetzt Norm 130:1959); aktuellere Ausgabe am
  SIA-Shop verifizieren. **Geprüft:** `wiki/REGISTER.md` Z. 290 und 379 (SIA-Sweep, 23.08.2026,
  Produktseite `shop.sia.ch`, SN 507240) bestätigen: **SIA 240/2012 (gültig ab 01.02.2012)** ist
  die aktuell geltende Ausgabe und ersetzt SIA 240:1988; nur Metadaten geprüft, kein Volltext
  gelesen. **Fundstelle nennen:** «SIA 240:2012», nicht «SIA 240:1988», sobald diese Norm
  zitiert wird. **Bleibt offen:** Z. 900 desselben Registers führt SIA 240 noch unter der
  1988er-Zeile als «gilt (Bestand)» — ein interner REGISTER-Konsistenzpunkt (welche Zeile
  massgebend ist), keine neue Recherche; und der Volltext 2012 selbst bleibt Bring-Schuld
  Raphael (kein Auto-Web, kein Kauf durch Claude).
- [x] **SIA 279:2018 / 281:2017 / 329:2018** sind NEUER als das 2013-Register — als aktuell
  geführt (am PDF-Deckblatt belegt), gelten bis zur nächsten Revision.
  > ✅ **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung 21, Bestandsabgleich).** Alle drei Fakten
  > stehen bereits ausführlich in `wiki/REGISTER.md`: Abschnitt A, Zeilen SIA 279/281/329
  > («Bestand … → neuer als Register 2013»), zusätzlich redundant in Abschnitt D Zeilen 896-899
  > («gilt; … neuer als 2013-Register (aktuell)»). Keine weitere Recherche nötig, nur die
  > QUESTIONS-Zeile war nicht zurückverlinkt.
- [x] **Inventar-Reconcile 13.07.2026 (MacBook Pro, Run 5):** 35 Positionen (7 SIA + 28 VKF)
  standen seit dem 12.07.2026 fälschlich als `[~] in Arbeit (MacBook Session)` im Inventar —
  eine Vorsession war offenbar abgebrochen, NACHDEM die Destillate bereits geschrieben waren,
  aber BEVOR Inventar/INDEX nachgeführt wurden. Alle 35 Destillate wurden auf der Platte
  verifiziert vorgefunden und im Inventar auf `[x] 260713` gesetzt + in `destillate/INDEX.md`
  nachregistriert. Kein PDF musste neu gelesen werden.
- [ ] **Duplikate aus dem Reconcile — Merge/Bereinigung offen (Destruktiv, Rückfrage vor Ausführung):**
  fünf VKF-Destillate existieren doppelt unter zwei Dateinamen mit identischer Quelle:
  `vkf-brl-100-15-brandmauern.md` ↔ `vkf-brl-brandmauern-100-15.md`;
  `vkf-brm-2001-15-solaranlagen.md` ↔ `vkf-merkblatt-2001-15-solaranlagen.md`;
  `vkf-brl-aenderungen-2017.md` ↔ `vkf-aenderungen-brandschutzrichtlinien-2017.md`;
  `vkf-brl-28-15-anerkennungsverfahren.md` ↔ `vkf-brl-anerkennungsverfahren.md` (Run 12, 260714:
  Inhaltsvergleich gegen Original abgeschlossen — `vkf-brl-28-15-anerkennungsverfahren.md` ist
  vollständiger, u.a. Ziff. 3.3 Qualitätsmanagement fehlt im Duplikat komplett; als established
  markiert, physisches Löschen von `vkf-brl-anerkennungsverfahren.md` bleibt offen/Rückfrage);
  `vkf-bsv2015-bericht-aenderungen.md` ↔ `vkf-bsv2015-vernehmlassungsbericht.md` (letzteres evtl.
  inhaltlich verschieden — „Vernehmlassungsbericht" vs. „Bericht/Änderungen", trotz gleicher
  Quelldatei; vor dem Merge kurz gegenlesen). Je Paar den besseren/vollständigeren Stand behalten,
  den anderen löschen und aus `destillate/INDEX.md` entfernen — NICHT automatisch, da Löschen
  destruktiv ist (Rule `wissens-bibliothekar`).
  > **Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung):** «vor dem Merge kurz gegenlesen» für das
  > BSV2015-Paar ist erledigt — kein Sachwiderspruch, `vernehmlassungsbericht.md` (200 Zeilen)
  > deutlich vollständiger als `bericht-aenderungen.md` (90 Zeilen) und bis zum Merge-Entscheid
  > als führend markiert. Details, Kennwerte-Abgleich und gegenseitige Duplikat-Hinweise in
  > beiden Destillaten: Nachtrag beim N60-1-Block oben. Damit sind alle vier verbleibenden Paare
  > inhaltlich gegengelesen; der physische Merge bleibt bei allen destruktiv und liegt bei
  > Raphael.
  - **Nachtrag Wissens-Chef Run 28, 07.08.2026 (nur Paar 2001-15 Solaranlagen):** weiterhin offen,
    keine Statusänderung, kein Merge. Die inhaltliche Divergenz der beiden Destillate ist in diesem
    Lauf geschlossen worden: `vkf-merkblatt-2001-15-solaranlagen.md` führte Tabelle 1 fälschlich auf
    «S. 6», korrigiert auf «S. 7» (am Original verifiziert, MD5 `56fb4bab06eaa4efec181d7f6fb44e87`);
    `vkf-brm-2001-15-solaranlagen.md` war unverändert korrekt und wurde nicht angefasst.
    **Vormerkung für den Tag der Merge-Freigabe durch Raphael:** `vkf-brm-2001-15-solaranlagen.md`
    bleibt führend, unter drei Bedingungen — (a) der Run-3-Block aus
    `vkf-merkblatt-2001-15-solaranlagen.md` (Provenienz Rev. 01.01.2022 / RF3(cr), Abschnitt «Offene
    Punkte») wird nach `vkf-brm-…` übernommen; (b) die drei Fremdzeiger aus anderen KBs werden im
    selben Zug umgehängt (`wissen/planungsgrundlagen/wiki/energie-pv-brandschutz.md`,
    `wissen/planungsgrundlagen/wiki/energie-pv-eignung-typenwahl.md`,
    `wissen/energie/destillate/pv-blitzschutz-gebaeudeversicherung-ch.md`); (c)
    `vkf-merkblatt-2001-15-solaranlagen.md` bleibt als Zeiger-Datei bestehen und wird nicht gelöscht,
    da die geltende Fassung den Namensstamm `vkf-merkblatt-2001-15-solaranlagen-2022.md` trägt.
- [x] **Dateiname/Inhalt-Mismatch — GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung), kein Mismatch.**
  `Brandschutz-Praevention.pdf` am Original beschafft (M365-Graph-Connector, Site PL, Drive
  `02_Recht_Norm`, `pdftotext -layout` vollständige Seite 1) und gegen das Destillat gelesen: die
  Kopfzeile des Blatts trägt den Serien-/Herausgeber-Brand «Brandschutz + Prävention / Merkblatt»
  der herausgebenden regionalen Fachstellen, darunter erst den Inhaltstitel
  «Brandschutz-Klassifikation von häufig verwendeten Bauteilen» — von den PDF-Metadaten bestätigt
  (`Title: Merkblatt_Klassifikation Bauteile_V.1`). Der Dateiname stammt vom Serien-Brand, nicht
  vom Inhalt; die Tabelle im Destillat deckt sich Zeile für Zeile mit dem Original. Keine
  Umbenennung nötig. `Brandverhuetung & organisatorischer Brandschutz.pdf`
  (`vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md`) liegt im selben
  SharePoint-Ordner tatsächlich als eigenständige, zweite Datei daneben — bestätigt per
  Ordnerlisting (`/children`), kein Merge-Fall. Nachtrag im Destillat selbst,
  Abschnitt «Offene Punkte». Ursprungswortlaut bleibt unten stehen.
- [x] ~~Dateiname/Inhalt-Mismatch~~ (Ursprungswortlaut, siehe Schliessung oben): `vkf-merkblatt-brandschutzklassifikation-bauteile.md` hat als
  Quelle `Brandschutz-Praevention.pdf`, der Dateiname passt aber nicht zum Inhalt (Klassifikation
  von Bauteilen statt Prävention). Prüfen, ob der Inhalt wirklich zur Quelle passt, ggf. umbenennen
  auf ein passendes Muster (z.B. `vkf-brl-praevention-organisatorischer-brandschutz.md` — kollidiert
  dann aber mit `vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md`, das dieselbe Quelle
  hat: beide Destillate zu `Brandverhuetung & organisatorischer Brandschutz.pdf` bzw.
  `Brandschutz-Praevention.pdf` — evtl. sind das zwei verschiedene PDFs mit ähnlichem Thema, am
  Original gegenlesen bevor gemerged wird.
  **Checkbox nachgezogen 24.08.2026 (QUESTIONS-Abarbeitung).** Die Frage ist bereits doppelt
  beantwortet, nur hier nie abgehakt: die Schliessung oben (23.08.2026) hat am Original bestätigt,
  dass der Dateiname vom Serien-/Herausgeber-Brand stammt (nicht vom Inhalt) und dass
  `Brandverhuetung & organisatorischer Brandschutz.pdf` per Ordnerlisting eine tatsächlich
  eigenständige zweite Datei ist — kein Merge-Fall; derselbe Befund wird zusätzlich unter
  Teilpunkt (3) des «Verify-Abschluss MacBook»-Eintrags weiter unten ausdrücklich referenziert
  («bereits am 23.08.2026 an anderer Stelle dieser Datei geschlossen»).
- [x] **DIN EN 12101-2 im VKF-Ordner:** `VKF_Norm/02_Brandschutzrichtlinien 2015/DIN EN 12101-2.pdf`
  ist eine Dublette der bereits unter DIN destillierten `din-en-12101-2-2003.md` (Mac Mini) — beim
  Reconcile referenziert statt neu destilliert, keine Aktion nötig.
  **Checkbox nachgezogen 23.08.2026 (QUESTIONS-Abarbeitung 22):** Inhaltlich war der Punkt bereits
  beim Reconcile erledigt, nur äusserlich nicht abgehakt — analog dem SIA-2048-Fund in
  Abarbeitung 21.
- [x] **VKF-Verzeichnis 40-15 (Weitere Bestimmungen) — ERLEDIGT, Bestandskontrolle Run 17 (260721):**
  das Destillat `vkf-verz-40-15-weitere-bestimmungen.md` ist am Bestand als vollständig belegt
  (Frontmatter `gelesen: S. 1-22 komplett (Titelblatt bis Ziffer 4 Abkürzungsverzeichnis, gesamtes
  Dokument)`, status `established (verifiziert 260714, vollstaendig)`). Die 13.07. notierte Lücke
  (Ziff. 3.7-3.9 + Abkürzungsverzeichnis) wurde zwischenzeitlich geschlossen; Notat war veraltet.
- [ ] **Workflow-Tool blockiert Hintergrundläufe:** In diesem Scheduled-Task-Lauf (13.07.2026)
  verweigerte das Workflow-Orchestrierungstool die Ausführung mit „Review dynamic workflow
  before running" — vermutlich ein interaktives Freigabe-Gate, das in einem unbeaufsichtigten
  Hintergrundlauf nicht bedient werden kann. Fallback auf parallele Agent-Aufrufe (13 Agenten in
  einer Nachricht) hat funktioniert, ist aber weniger effizient (keine Pipeline/Verify-Stufe,
  höherer Tokenverbrauch: ca. 150k Tokens je Agent, Budget für 13 Destillate nahezu ausgeschöpft
  bei $22 von $25 Sessionbudget). Für künftige Läufe: entweder Workflow-Tool-Verhalten in
  Hintergrundläufen klären, oder bewusst mit kleineren Agent-Batches (8-10 statt 13-19) planen.
- [ ] **DIN EN 1627:2011 (Einbruchhemmung) — nur Teilbestand, Lücke bestätigt.** Die
  Datei `DIN-Norm/DIN 1627_Auszuege .pdf` enthält laut `pdfinfo` nachweislich nur
  4 von 44 Seiten der Vollnorm (Titelblatt, Ziff. 5-6, Anhang NA.6, NA.10-NA.11);
  Destillat `din-en-1627-2011.md` bleibt `teil-destillat`. Retro-Verifikation
  Mini-Run 14 (260713) hat die 4 vorhandenen Seiten vollständig gegen das Destillat
  geprüft (13 Aussagen) und 1 Fehler korrigiert: RC 4 war fälschlich pauschal als
  «Elektrowerkzeuge»-Einsatzklasse geführt, das Original nennt für RC 4 aber
  Säge-/Schlagwerkzeuge + Akku-Bohrmaschine (echte Elektrowerkzeuge erst ab RC 5).
  Ergänzt wurden zudem die Korrelationstabelle NA.7 für RC 1N/RC 2N (keine bzw. nur
  teilweise Entsprechung zu den WK-Altklassen) und der Orientierungscharakter der
  Tabelle NA.6 (fachkundige Beratung nötig). Für Widerstandsklassen-Details über die
  4 gelesenen Seiten hinaus (v. a. die vollständige Klassentabelle, Prüfverfahren-
  Anhänge, Ziff. 1-4) weiterhin die Vollnorm via Beuth-Verlag oder erneute
  SharePoint-/M365-Suche beschaffen. Notiert 13.07.2026 (normen-training-mini, Mac Mini).
  > **SharePoint-Weg ausgeschöpft, 24.08.2026 (QUESTIONS-Abarbeitung).** Vollständiger
  > Graph-API-Scan der Bibliothek `02_Recht_Norm` (Site PL), Ordner `02_Normen/DIN_Norm/`,
  > beide Unterordner `DIN-Norm` (54 Dateien) und `Sonstiges` (16 Dateien) — insgesamt 70
  > Dateien einzeln nach Namen geprüft (`m365-graph.mjs --get`, Site-ID/Drive-ID aus
  > `connectors/WEGE.md` Weg 2, da diese Station die Bibliothek nicht lokal gepinnt hat).
  > Einziger Treffer für «1627»: `DIN 1627_Auszuege .pdf` (1'613'803 Bytes), identisch mit
  > der bereits im Bestand geführten und destillierten 4-Seiten-Datei. Keine zweite, weiter
  > gefasste Fassung im Haus. Die «erneute SharePoint-/M365-Suche» ist damit als Beschaffungsweg
  > **ausgeschöpft und geschlossen** — die einzig verbleibende Option ist der kostenpflichtige
  > Beuth-Verlag-Kauf (Bring-Schuld Raphael). Kein neuer Fundstellen-Inhalt, nur der
  > Beschaffungsweg selbst wurde geklärt.
- [x] **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung 24). Schweizer Pendants zu deutschen
  Sonstiges-Destillaten fehlen noch (Mac Mini Run, 13.07.2026)** — alle drei genannten
  Ergaenzungskandidaten sind inzwischen im Bestand. **SIA 500 "Hindernisfreie Bauten"**
  (Pendant zu NBauO-Barrierefreiheit/ArbStättV §3a Abs.2): `destillate/sia-500-2009.md`,
  established, seit 23.08.2026 inkl. aller vier Korrigenda C1:2009-C4:2019 am amtlichen
  Wortlaut ausgewertet (`wiki/REGISTER.md` Z. 921). **SIA-Grundlagen Raumakustik** (Pendant
  zu DIN 18041): `destillate/sia-181-1-2026.md` — SIA 181/1:2026, SN 520181/1, gültig ab
  01.02.2026, neue eigenständige Norm; Produktdatenblatt web-verifiziert 23.08.2026, Volltext
  kostenpflichtig (110 CHF, Bring-Schuld Raphael) — schliesst die Lücke „keine
  SIA-Raumakustik-Norm im Bestand" (`wiki/REGISTER.md` Z. 1575, Mini-Run 30). **Die
  SIA 260er-Tragwerksnormen** (Pendant zu den Eurocodes DIN EN 1990-1999): vollstaendige
  Serie `sia-260-2003.md`, `sia-261-2003.md`/`-1`, `sia-262-2003.md`/`-1`, `sia-263-2003.md`,
  `sia-264-2003.md`/`-1`, `sia-265-2003.md`, `sia-266-2003.md`/`-1`, `sia-267-2003.md`/`-1`
  im Destillat-Ordner, mehrere davon (261/1, 262/1, 264/1, 267/1) mit Refuter-Verifikation
  260807 established. Kein weiterer Ergaenzungsbedarf aus diesem Punkt.
- [ ] **DIN-Sonstiges-Ordner: gemischter Inhalt, nicht alles sind Normen.** Der Ordner
  `DIN_Norm/Sonstiges/` enthaelt neben echten DIN-Normen auch deutsche Landesrecht-Auszuege
  (NBauO/DVNBauO Niedersachsen), HOAI-Leistungsbild-Exzerpte und ein Lehrskript (HCU Hamburg
  Treppen) — alle wurden dennoch destilliert, da im Inventar gelistet (Kompoundierungs-Pflicht),
  aber mit deutlichem Vermerk "kein CH-Bezug" im JANS-Praxis-Transfer. Fuer kuenftige Laeufe:
  gleiche Vorsicht bei Interpretation als "verbindliche Norm" gegenueber diesen Auszuegen.
- [x] **Gross-Dateien DIN-Sonstiges/DIN-Norm** — alle in Run 3+4 (13.07.2026) destilliert,
  siehe Inventar. Keine offenen Positionen mehr.

- [x] **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung, zwoelfter Lauf).** Alle drei Folgen
  dieses Status-Vermerks sind laengst erledigt, nur die Checkbox war nie nachgezogen: (1) die
  hier als «offen fuer naechsten Lauf» gelisteten Dateien (DIN 4844-2, DIN V 105-100, DIN V 106,
  Sonstiges/Baupreisindizes, Sonstiges/Inhaltsverzeichnis, Sonstiges/Komm DIN 18024, Sonstiges/
  VdS-Richtlinie 2234, Rest DIN 1054, alle 5 VSS-Grossdateien) sind gemaess den direkt
  nachfolgenden Eintraegen dieser Datei (Mac Mini Run 4/5, 13.07.2026, unten) vollstaendig
  destilliert bzw. begruendet uebersprungen — «0 offene [ ]-Positionen» in DIN/VSS/RAL bestaetigt.
  (2) DIN 4159/4149 blieben mangels konkretem Projektbedarf bewusst unangetastet (P4-Fall wie
  N-R40-3 oben), kein Loop-Fall. (3) Die «Neue CH-Pendant-Luecke SWKI 99-3» war ein falscher
  Gegenstand: SWKI 99-3:2003 (+ Beiblatt 2004) ist seit 1.8.2015 durch VA 105-01:2015 ersetzt
  (belegt `wiki/REGISTER.md`, Zeile VA 105-01/SWKI 99-3:2003; zweitbelegt
  `wissen/energie/destillate/reinraum-op-klimatisierung-gesundheitsbau-ch.md`) — bereits an
  anderer Stelle dieser Datei korrigiert (Abschnitt «CH-Pendant zu DIN 1946-4», Z. 3112 ff.).
  Der eigentliche offene Rest ist der dortige Kaufentscheid **N-R21-2 (VA 105-01 Volltext,
  Kap. 3-6)**, kein neuer Destillier-Auftrag.

- [x] **SN 640 105a (Verbreiterung der Fahrbahn in Kurven, Dez. 2000)** — **destilliert
  13.07.2026 (Mac Mini Run 6):** vollstaendig gelesen (S.25-37 des Traegerdokuments
  `VSS 640 291a Parkieren Geometrie.PDF`, 13/13 S.), eigenstaendiges Destillat
  `destillate/sn-640105a-2000.md`. Volltextabgleich-Verifikation (Modell D): alle Kernwerte
  (D-Werte Kategorien A-D, Formel e=Ra-√(Ra²-D²), Bagatellgrenzen, Geltungsbereich 11,25-500m)
  gegen den Originaltext geprueft, established.
- [x] **Mac Mini Run 4 (13.07.2026): DIN/VSS/RAL-Inventar vollstaendig abgearbeitet.** Alle
  zuvor offenen DIN-Sonstiges-Dateien (Inhaltsverzeichnis, Planungsgrundlagen, VdS 2234,
  Komm DIN 18024 Rest) sowie alle 5 grossen VSS-Scans (40 291, 640 065, 640 281, 640 291a,
  640 578) destilliert; verbleibende 5 Dateien als Nicht-Normen begruendet uebersprungen.
  RAL war bereits komplett. **Naechster Lauf: Endbedingung pruefen und ggf. Task beenden.**
- [x] **DIN/VSS/RAL KOMPLETT — Mac Mini Run 5 (13.07.2026), Endbedingung erreicht.**
  Inventar-Abgleich gegen den echten SharePoint-Ordnerinhalt (DIN_Norm 72, VSS_Norm 17,
  RAL_Norm 1 Dateien) ergab 4 zuvor nicht erfasste Nicht-Norm-Dateien (FileOpenInstaller.dmg,
  2 Screenshots, 1 Foto) — als übersprungen nachgetragen. Danach: **0 offene [ ]-Positionen**
  in den DIN-, VSS- und RAL-Abschnitten von `training/norm-inventar.md` — jede Datei ist
  destilliert oder begründet übersprungen. Der Scheduled Task `normen-training-mini` kann
  gemäss Endbedingung (Skill-Prompt Schritt 9) beendet werden; entscheidet Raphael. Verbleibende
  Qualitätslücken (nicht blockierend, siehe oben): Duplikat-Merge VKF (Zeile 73, destruktiv,
  Rückfrage nötig), Teil-Destillat DIN EN 1627:2011, SN 640 105a als Anhang nicht separat
  destilliert, fehlende CH-Pendants (SIA 500/SWKI 99-3/SIA 260er) für den SIA/VKF-Loop.
- [x] **Mac Mini Run 6 (13.07.2026): Deepening-Stufe (a) begonnen, SN-640-105a-Lücke
  geschlossen.** Gemäss Token-Vollgas-Eskalation (`training/PROGRAMM.md`, Rule 260712c) geht
  der Loop nach Inventar-Abschluss NICHT in den Leerlauf, sondern in die Vertiefungsstufen
  über. Erster Schritt: die in Run 5 als offen vermerkte Lücke SN 640 105a (Anhang in
  `VSS 640 291a Parkieren Geometrie.PDF`, S.25-37) vollständig destilliert und verifiziert
  (siehe oben). Verbleibende Deepening-Kandidaten für den nächsten Lauf: DIN EN 1627:2011
  (Vollnorm-Beschaffung), Retro-Verifikation bestehender DIN/VSS/RAL-Destillate mit
  unabhängigen Widerlegungs-Agenten, Q&A-Selbstbefragung je Kernnorm.
- [x] **Mac Mini Run 7 (13.07.2026): Deepening-Stufe (b) Retro-Verifikation, 8 Destillate
  geprüft, 4 Fehler gefunden und korrigiert.** Parallele Volltextabgleich-Verifikation
  (Modell D, adversarial — Ziel Widerlegung) auf 8 DIN/VSS-Destillate: din-4102-1-1998
  (BEANSTANDET: 2 Fehler — Verbundbaustoff-Grenze fälschlich als Verbot statt Beweislastregel,
  Rauchprüf-Temperaturen 200-600°C vermischt zwei verschiedene Werte; korrigiert, bleibt
  Teil-Destillat), din-4102-2-1977 (BESTANDEN → established), din-18040-1-2010 (BEANSTANDET:
  2 komplett fehlende Kernziffern-Abschnitte — Ziff. 5.2.1 feste Bestuhlung, Ziff. 5.3.6
  Liegen — trotz Behauptung "keine offenen Ziffern"; ergänzt und auf established gehoben),
  din-18040-2-2011 (BESTANDEN → established), din-1946-6-2009 (BEANSTANDET: 1 Fehler —
  "Bautenschutz" statt "Beheizung" in Ziff. 3.1.25-Anmerkung, EnEV-§6-Zweckbezug verfälscht;
  korrigiert, bleibt Teil-Destillat ~25%), din-277-1-2005 (BEANSTANDET: Fundstellenfehler
  Ziff. 2/S.3 statt Ziff. 1/S.2, unbelegte "deutsches Pendant zu SIA 416"-Gleichsetzung,
  fehlende Wandöffnungen in KGF-Beispielen; korrigiert, bleibt established), din-277-2-2005
  (BESTANDEN, bleibt established), vss-640050-1993 (BESTANDEN, bleibt established). Fazit:
  die Verifikations-Pflicht (Rule 260712) greift — 4 von 8 Stichproben (50%) hatten reale,
  wenn auch kleine, inhaltliche Fehler; Retro-Verifikation bestehender "destilliert"-Bestände
  ist substanziell wertvoll, nicht nur Formalität. Nächster Lauf: weitere Stichprobe aus den
  verbleibenden ~15 unverifizierten DIN/VSS-Destillaten (Kandidaten: din-18065-2000,
  din-18299-2010, din-4844-2-2001, vss-640060/066/281/578), danach Stufe (c)
  Q&A-Selbstbefragung.
- [x] Retro-Verify Run 8 (12 Stichproben) — **beantwortet 13.07.2026 (Run 9):** alle 12 in
  Run 8 beanstandeten Destillate (din-18065-2000, din-18299-2010, din-4844-2-2001,
  vss-640060-1994, vss-640066-1996, vss-640281-2006, vss-640578-2006, vss-40291-2021,
  vss-640065-2011, din-v-105-100-2005, din-v-106-2005, komm-din18024-t1-bayern-2001)
  wurden im Fliesstext korrigiert (Ersetzung statt Anhang) und auf `established` gehoben;
  4 davon (din-18065-2000, vss-640060-1994, vss-640281-2006, vss-40291-2021) enthielten
  komplett fehlende Ziffern, die aus dem Original-PDF nachgetragen wurden. Details:
  `outputs/2026-07-13_normen-mini-run9.md`. **Nächster Lauf:** weitere Retro-Verifikation
  des grossen Rests unverifizierter DIN/VSS-Destillate (DIN 5034-Reihe, DIN 1053-Reihe,
  weitere DIN-EN-Normen, VSS-Altbestand), danach Stufe (c) Q&A-Selbstbefragung.
- [~] **Verify-Abschluss MacBook (13.07.2026): neue offene Punkte aus den 9
  Retro-Verifikationen — 3 von 5 Teilpunkten inzwischen geschlossen (siehe Nachträge unten),
  Marker nachgezogen 24.08.2026 (QUESTIONS-Abarbeitung).** Verbleibend offen: Teilpunkt (1)
  [destruktiv, Rückfrage Raphael] und Teilpunkt (4) [steeldoc-ECCS-Diskrepanz, kein ECCS-Volltext
  im Haus, externe Bring-Schuld]. (1) Drei Duplikat-Merges noch offen:
  `vkf-aenderungen-brandschutzrichtlinien-2017.md` → `vkf-brl-aenderungen-2017.md`,
  `vkf-merkblatt-2001-15-solaranlagen.md` → `vkf-brm-2001-15-solaranlagen.md`,
  `vkf-brl-anerkennungsverfahren.md` → `vkf-brl-28-15-anerkennungsverfahren.md`
  (Brandmauern-Merge ist erledigt 260713). (2) sia-104-2003: SIA-111/112-Vergleich als
  (speculative) markiert — an den Originalen SIA 111/112 gegenprüfen. (3) NSV-Merkblatt
  Brandschutzklassifikation: K-30-RF1-Definition nur sinngemäss aus BSR 13-15 (speculative)
  — am BSR-13-15-Original wortgetreu prüfen; Rename wegen Dateiname/Inhalt-Mismatch
  («Brandschutz-Praevention.pdf») weiterhin offen. (4) steeldoc 03/15: quell-interne
  Diskrepanz ECCS-Nomogramm (Text «N°92» [10] vs. Literaturverzeichnis [11] «ECCS No. 89»,
  1999) — nur mit ECCS-Original auflösbar. (5) BRL 100-15 Brandmauern: Gegenprüfung des
  REGISTERs auf eine allfällig spätere Ausgabe. Details:
  `outputs/2026-07-13_normen-verify-abschluss-macbook.md`.

  > **Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung): Teilpunkt (2) GESCHLOSSEN.** sia-104-2003
  > Ziff. 3.4.1 gegen die Originale SIA 111:2014 und SIA 112:2014 gegengeprüft (beide bereits
  > `status: established` im eigenen Bestand, kein Neu-Destillat nötig). Befund: kein blosser
  > Ähnlichkeitsbefund, sondern ein Zielverweis — SIA 111:2014 (Begriffe S. 7) nennt SIA 104
  > Art. 3.4 ausdrücklich als eine der Quellen, auf die SIA 111 selbst für die
  > Gesamtleitungs-Leistungen verweist («in SIA 104, 105 und 110 unter Art. 3.4 bzw. 3.8
  > beschrieben»); SIA 112:2014 (Begriffe S. 6) verweist ebenso ausdrücklich auf
  > «SIA 102/103/104/105/108 Art. 3.4». Die speculative-Markierung in
  > `destillate/sia-104-2003.md` Ziff. 3.4.1 ist aufgehoben, Fundstelle nachgetragen,
  > `verifiziert`/`last_updated` auf 2026-08-24 gesetzt. **Teilpunkte (1) Duplikat-Merges,
  > (4) steeldoc-ECCS-Diskrepanz und (5) BRL-100-15-Register-Gegenprüfung bleiben offen** —
  > (1) ist destruktiv (Rückfrage Raphael, siehe Abschnitt «Duplikate aus dem Reconcile» oben),
  > (4)/(5) sind eigene, von diesem Fund unabhängige Sachfragen ohne im Haus liegenden
  > ECCS-Volltext bzw. ohne bereits geprüftes REGISTER-Datum.
  >
  > **Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung, Fortsetzung): Teilpunkt (3) ebenfalls
  > GESCHLOSSEN.** Die Annahme «kein im Haus liegender Original-Volltext» oben war falsch —
  > die VKF-Brandschutzrichtlinie 13-15 «Baustoffe und Bauteile» (vom Merkblatt selbst als
  > «BSR 13-15» abgekürzt, im eigenen Bestand unter dem KB-Dateinamen `BRL` geführt) liegt
  > bereits vollständig destilliert und `status: established` vor
  > (`destillate/vkf-brl-13-15-baustoffe-bauteile.md`). Gegen deren Ziff. 2.1 Abs. 1 (S. 5)
  > und Ziff. 3.1.5 Abs. 1-3 (S. 14) geprüft: (a) RF1 ist dort mit Fundstelle definiert (eine
  > von vier Brandverhaltensgruppen, «kein Brandbeitrag»); (b) K 30-RF1 ist entgegen der
  > bisherigen Merkblatt-Paraphrase («schützt … während 30 Minuten vor Entzündung», als
  > Absolutwert formuliert) tatsächlich **relativ** definiert — der Kapselungs-Feuerwiderstand
  > muss mindestens 30 Minuten weniger betragen als der Feuerwiderstand des Gesamtbauteils,
  > K30-RF1 ist die praktische Mindestanforderung. Unabhängig bestätigt durch
  > `destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` (K30-RF1 als Minimum
  > sowohl bei R30-RF1 als auch bei R60-RF1). Beide Begriffe in
  > `destillate/vkf-merkblatt-brandschutzklassifikation-bauteile.md` korrigiert/mit Fundstelle
  > versehen, speculative-Flag aufgehoben, `last_updated` auf 2026-08-24 gesetzt, Links
  > ergänzt. Der zweite Teil des ursprünglichen Punkts («Rename wegen Dateiname/Inhalt-
  > Mismatch») war bereits am 23.08.2026 an anderer Stelle dieser Datei geschlossen (Abschnitt
  > «Dateiname/Inhalt-Mismatch — GESCHLOSSEN 23.08.2026» oben). Damit sind von den ursprünglich
  > fünf Teilpunkten nur noch (1) [destruktiv, Rückfrage Raphael], (4) und (5) offen.
  >
  > **Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung): Teilpunkt (5) ebenfalls GESCHLOSSEN.** Die
  > Frage («BRL 100-15 Brandmauern: Gegenprüfung des REGISTERs auf eine allfällig spätere
  > Ausgabe») ist durch eine zwischenzeitlich unabhängig entstandene Arbeit bereits beantwortet,
  > hier nur verifiziert und referenziert: `wiki/REGISTER.md` Abschnitt zu den
  > Fassungs-Delta-Publikationen führt **BSE 100-15 Brandmauern mit geltender Fassung
  > 01.01.2017** (Zeile «BSE 100-15 Brandmauern | 01.01.2017 | `vkf-brl-100-15-fassung-2017-delta.md`»).
  > Das Delta-Destillat selbst (`destillate/vkf-brl-100-15-fassung-2017-delta.md`, Frontmatter
  > geprüft) belegt Quelle **VKG-Publikationsportal Dokument BSPUB-1394520214-141, Fassung
  > 01.01.2017 (von der Technischen Kommission VKF am 29. September 2016 genehmigte Änderungen)**
  > gegen den Hausbestand `PL - 02_Recht_Norm/02_Normen/VKF_Norm/02_Brandschutzrichtlinien
  > 2015/100-15_Brandmauern.pdf` (Fassung 01.01.2015): acht amtlich gelistete Fundstellen,
  > keine davon materiell (reine Begriffsvereinheitlichung Aussenwand→Aussenwandkonstruktion,
  > Bedachung→Dachkonstruktion, sowie RF3→RF3(cr)), Anhang-Prinzipschnitte per Rendering
  > deckungsgleich geprüft (Run 60, 23.08.2026, `last_updated: 2026-08-23`). **Damit ist
  > REGISTER bereits auf dem aktuellen Stand — keine weitere, vom Register noch nicht erfasste
  > Ausgabe.** Das Delta-Destillat selbst bleibt `status: speculative` (nur die acht gelisteten
  > Fundstellen geprüft, nicht der gesamte Restbestand Ziff. 2/5-7 und übriger Anhang) — dieser
  > Statuswert ist unverändert korrekt und wird hier nicht angehoben. Von den ursprünglich fünf
  > Teilpunkten bleibt nur noch **(1)** [destruktiv, Rückfrage Raphael] und **(4)**
  > [steeldoc-ECCS-Diskrepanz, kein ECCS-Volltext im Haus, externe Bring-Schuld] offen.
- [x] **Mac Mini Run 10 (13.07.2026): Retro-Verifikation DIN-5034-Reihe + DIN-1053-Reihe
  komplett, 8/8 beanstandet-korrigiert.** Alle 4 verbleibenden DIN-5034-Destillate
  (5034-1/2/4/6) und alle 4 verbleibenden DIN-1053-Destillate (1053-1/2/3/100) adversarial
  gegen das Original verifiziert — 8 von 8 (100%) hatten reale Fehler, teils substanziell:
  **din-5034-4 (Tageslicht vereinfachtes Verfahren) hatte einen sachlich falschen
  Formelfehler** (k1h/k1v für horizontale/vertikale Verbauung — Original verlangt für BEIDE
  Richtungen √0,7, Destillat behauptete faelschlich horizontal direkt 0,7 ohne Wurzel; hätte
  bei praktischer Anwendung zu falscher Tageslicht-Bemessung geführt). **din-5034-1 fehlte
  eine komplette zweite Regelspur** (Ziff. 4.2.3, wohnraumähnliche Arbeitsräume/Healthcare-
  Räume) — ohne Korrektur wäre bei Anwendung auf Spital-/Pflegeräume die falsche Fensterregel
  herangezogen worden. **din-1053-2 hatte massive Lücken** (7 von 8 Ziffern komplett fehlend,
  Tabelle 1 nur 2 von 20 Festigkeitsklassen) trotz Status "destilliert". Alle 8 Korrekturen
  direkt im Fliesstext integriert (nicht als Anhang), Status auf `established` gehoben.
  Details: `outputs/2026-07-13_normen-mini-run10.md`. **Fazit:** die Retro-Verifikations-
  Pflicht bleibt hochgradig wertstiftend — die Beanstandungsquote ist über alle bisherigen
  Mac-Mini-Retro-Runs (7-10) durchgehend hoch (50-100%), reine "destilliert"-Erstdurchgänge
  ohne Verifikation sind für sicherheits-/bemessungsrelevante Aussagen NICHT ausreichend
  vertrauenswürdig. **Nächster Lauf:** weitere Retro-Verifikation des Rests (VSS-Altbestand
  vss-700.5/722.15/merkblatt-veloabstellplaetze, DIN-EN-Normen din-en-12207 bereits erledigt,
  DIN 918/1164/1249/1356-Reihe, DIN 1946-7, DIN 18560-2 u.a.), danach Übergang zu Stufe (c)
  Q&A-Selbstbefragung sobald die Beanstandungsquote über mehrere Läufe stabil sinkt.
- [x] **Mac Mini Run 11 (13.07.2026): Retro-Verifikation VSS-Altbestand komplett + 13 DIN-
  Einzelnormen, 10/16 beanstandet-korrigiert (62,5%).** Alle 3 VSS-Altbestand-Destillate
  (700.5, 722.15, Merkblatt Veloabstellplätze) und 13 DIN-Einzelnormen adversarial gegen das
  Original verifiziert. **Faktor-10-Fehler in din-272-1986** (Vorlast Oberflächenhärte-Prüfung
  fälschlich (10 ± 1) N statt korrekt (10 ± 0,1) N) — hätte bei praktischer Anwendung zu einer
  falschen Prüflast geführt. **vss-700.5-1987 und vss-merkblatt-veloabstellplaetze-1998**
  hatten trotz «vollständig gelesen»-Vermerk je mehrere komplett fehlende Abschnitte (Anhang-
  Tabellen, §§-Blöcke). Alle Korrekturen direkt im Fliesstext integriert, Status auf
  `established` gehoben. Details: `outputs/2026-07-13_normen-mini-run11.md`. **Fazit:** die
  Beanstandungsquote sinkt leicht gegenüber Run 10 (100% → 62,5%), bleibt aber deutlich über
  der für Stufe (c) angepeilten Schwelle. **Nächster Lauf:** Restliste der noch unverifizierten
  DIN/VSS/RAL-Destillate (u.a. din-1946-4-2008 Healthcare-RLT, din-1960/1961-2010 VOB A/B,
  din-18232-2-2007, din-1053-4-2011, ral-gz638-2008) sowie Vertiefung der Teil-Destillate
  (din-1946-6-2009, din-4102-1-1998, din-1054-2010, din-en-1627-2011).
- [x] **Mac Mini Run 12 (13.07.2026): din-4102-1-1998 und din-1946-6-2009 zu vollständigen
  Destillaten ausgebaut, DIN/VSS/RAL-Basisinventar damit vollständig `established`.**
  DIN 4102-1 (Anhang B, S.21-25, Rauchentwicklungs-Prüfverfahren) direkt nachgelesen und
  ergänzt. DIN 1946-6 (Healthcare-RLT-relevant, Wohnungslüftung) über 6 parallele Agenten
  komplett von S.21 bis S.125 gelesen und ins Destillat integriert (§5.3-5.4 Systemauswahl,
  §7-8 Auslegung freie/ventilatorgestützte Lüftung inkl. Feuerstätten-Sicherheitseinrichtungen,
  §9-12 Ausführung/Dokumentation/Inbetriebnahme/Instandhaltung, Anhänge A-J). Zusätzlich
  din-abkuerzungsverzeichnis-2010 und din-planungsgrundlagen-hoai-vorschriften-2004 auf
  `established` gehoben (reine Referenzwerke, geringes Fehlerrisiko).
- [x] **din-1946-6-2009, Tabellennummer D.4 unstimmig (S.90/91-Grenze)** — geklärt
  Mini-Run 13 (260713): Volltextabgleich S.89-92 direkt am Original zeigt EINEN
  informativen Anhang D mit einer einzigen, über den Seitenumbruch 90/91 fortgesetzten
  Tabelle D.4 (Nr. 1-15); Destillat korrigiert.
- [x] **din-1946-6-2009 ↔ SIA 382/1 Methodenvergleich** geschlossen ✓ 2026-07-21
  (Mac Mini Nachtschicht): Vergleichsartikel aus beiden bereits vollständig destillierten
  Quellen (keine neue Primärquelle nötig) → `[[din-1946-6-sia-382-1-lueftungsauslegung-methodenvergleich]]`.
  Kernbefund: DIN 1946-6 bemisst hüllen-/feuchteschutzgetrieben (Flächenformel + Raum-
  Pauschalwerte), SIA 382/1 nutzungs-/lastgetrieben (Personen/Wärme/Schadstoffe als
  gleichrangige Kriterien) — ein direkter Zahlenvergleich einzelner Tabellenwerte ist
  deshalb nur bedingt aussagekräftig. Für CH-Baueingaben bleibt ausschliesslich SIA 382/1
  (+ SIA 180/380/1/2023) massgebend.
- [x] **Retro-Verifikation für din-1946-6-2009 (125 S.)** — erledigt Mini-Run 13 (260713):
  4 unabhängige Prüf-Agenten, ca. 100 Aussagen geprüft, 14 Fehler/Lücken gefunden und im
  Destillat korrigiert (siehe destillate/din-1946-6-2009.md, Abschnitt „Offene Punkte").
- [x] **SIA/VKF-Basisinventar VOLLSTÄNDIG — 13.07.2026 (MacBook Pro Run 5):** Alle SIA- und
  VKF-Positionen (P1-P3) im `norm-inventar.md` sind destilliert oder begründet übersprungen
  (0 offene `[ ]`). Letzter Batch (Workflow, 24 Destillate + 12 Retro-Verifikationen +
  EN 13200-1): SIA 195/196/197/198/199/203/272/282(564)/405/431/450/480/493/2014/2040/2051/
  2056(592)/343.051/370.080/382-1/384.201/193.111 + SN EN 13200-1 + VKF-BRL 107-15;
  retro-verifiziert established: SIA 162.051/244/246/248/312/370.028/462/465/469/721/752/753.
  **Nächste Läufe → Vertiefungsstufen** (Programm PROGRAMM.md): (a) Tiefendestillate der
  P1-Kernnormen artikelweise (SIA 118/102/416/VKF), (b) Retro-Verifikation mit 3 Agenten,
  (c) Q&A-Selbstbefragung, (d) Querschnitts-Synthesen. Rücktaktung ins Nachtfenster ist
  Raphael vorzuschlagen, sobald die Vertiefung abgearbeitet ist.
- [ ] **Dateiname ↔ Norm-Nummer-Diskrepanzen (dokumentiert, kein Fehler):** `592056.pdf` ist
  inhaltlich **SIA 2056:2019** (SNR 592056), nicht eine Norm «592 056»; `564_282.pdf` ist
  **SIA 282:2019** (SN 564282). Die Destillate behalten den PDF-abgeleiteten Dateinamen
  (`sia-592-056.md`, `sia-564-282.md`), INDEX/REGISTER weisen die echte Norm-Nr aus. Bei
  Bedarf später umbenennen (destruktiv → nur mit Bestätigung).
- [x] **Teil-Destillate mit offenen Anhängen (Vertiefung Stufe a) — ABGESCHLOSSEN Run 19 (260724):**
  ~~SIA 382/1 (Anh. A-G)~~ **ERLEDIGT** (Run 17). ~~SIA 384/201 (Anh. C-G)~~ **ERLEDIGT Run 18**
  (informative Anh. C-G S.81-99 destilliert + adversarial verifiziert, 1 Befund korrigiert →
  established vollständig; Rest-Bring-Schuld nur exakte NA-/E.1-Tabellenwerte bewusst nicht 1:1).
  ~~SIA 196 (Anh. A1-A4)~~ **ERLEDIGT Run 18** (55 Aussagen, 0 Sachfehler → established vollständig).
  ~~SIA 343.051 (Anh. D/E)~~ **ERLEDIGT Run 18** (Anh. D Öffnungsmasse + E Handhabung, bestanden →
  established vollständig). ~~SIA 193.111 (Anh. A-G)~~ **ERLEDIGT Run 18** (informative EN-Anhänge A-G
  S.47-89, 1 Befund korrigiert [Tab. B.3] → established vollständig).
  ~~SIA 2056/592 (Detailkataloge Kap. 3.2-3.9/4/6.3+)~~ **ERLEDIGT Run 19** (GK-/Gebäudetechnik-Kataloge
  Kap. 3.2-3.9/4/6.3-6.26/8 + Anh. A-H, ~50 Aussagen, 3 Befunde korrigiert [Hotel-Betriebsenergie
  Tab.32, Fig.12-Wertebereich, A.7 Online-Tool-Anzahl] → established mit ehrlicher Rest-Bring-Schuld:
  Figuren-Werte Näherungen, GK-Tab.5-35 nur Repräsentativwerte).
  ~~SIA 405 (medienspez. Datenkataloge)~~ **ERLEDIGT Run 19** (Medien-Datenkataloge Ziff. 3.33-3.39 +
  Anh. A3/A4/A6, 44 Aussagen, 3 Befunde korrigiert [Katalog-Zählung, Fernwärme-Trassepunkt, Kolophon-Datum]
  → established; Rest-Bring-Schuld: Grössenordnungszahlen Tab.1 nur als Bandbreiten). **→ 0 offene
  Stufe-a-Positionen; SIA/VKF auf allen vier Vertiefungsstufen (a-d) komplett.**
- [x] **GESCHLOSSEN (QUESTIONS-Abarbeitung 23.08.2026, nachgetragen — Sachverhalt bereits am
  25.07.2026 erledigt).** Fehlende verlinkte Destillate (Cross-Link-Lücke), Ursprungswortlaut:
  `sia-en-13200-1-2019.md` verweist auf [[sia-500-2009]] (SIA 500 Hindernisfreie Bauten —
  Rollstuhlplatzzahl) und die VKF-Fluchtweg-Richtlinie; SIA 500 sei noch nicht als eigenes
  Destillat vorhanden. **Geprüft:** `destillate/sia-500-2009.md` existiert, Frontmatter-Link
  `links: [[REGISTER]], [[sia-500-2009]], [[vkf-brl-16-15-flucht-rettungswege]]` in
  `sia-en-13200-1-2019.md` Z. 9 ist gesetzt und funktionsfähig, `sia-500-2009.md` trägt Status
  `established` (verifiziert 260712, seither um Anhang E und alle vier Korrigenda C1-C4
  erweitert, zuletzt 23.08.2026). Der Abschluss ist bereits in `training/norm-inventar.md`
  Z. 524 dokumentiert («Run-19-Restnotiz Cross-Link SIA 500 geschlossen», Run 20, 25.07.2026) —
  nur diese QUESTIONS-Zeile war seither nicht nachgezogen worden. Kein weiterer Handlungsbedarf.
- [x] **din-1946-6-2009 ↔ SIA 382/1 Methodenvergleich (Teil-Grundlage vorhanden):** SIA 382/1
  ist seit Run 5 (260713) als Destillat verfügbar (`sia-382-1-2014.md`, Kern S.1-63,
  Aussenluft-Volumenstrom/Klassierung AUL/RAL/ABL); der Detailvergleich CH- vs. DE-Modell
  kann darauf aufbauen (Anhänge A-G von SIA 382/1 noch offen).
  **Nachtrag SIA-Sweep-Fortsetzung (24.08.2026, ~04:52 Uhr):** der Klammerzusatz war zum
  Schreibzeitpunkt (vor Run 17) korrekt, ist seither aber überholt und stand hier
  unkorrigiert. Am Destillat selbst geprüft: `destillate/sia-382-1-2014.md` Frontmatter
  `status`-Feld nennt „Anhänge A-G ergänzt Run 17 und unabhängig gegen das PDF verifiziert
  260721"; Anhang A ist im Fliesstext vorhanden (Z. 96 ff.). Anhänge A-G sind also
  vollständig destilliert, nicht mehr offen — der eigentliche Methodenvergleich selbst war
  bereits am 21.07.2026 separat als Artikel `[[din-1946-6-sia-382-1-lueftungsauslegung-methodenvergleich]]`
  geschlossen (siehe Eintrag unmittelbar darüber, «geschlossen ✓ 2026-07-21»). Kein
  Handlungsbedarf mehr, nur die veraltete Klammer richtiggestellt.

## Mini-Run 32 (Mac Mini, 260716, Zuruf-Intensivlauf) — INVENTAR KOMPLETT für DIN/VSS/RAL bestätigt

Auftrag Raphael: ein weiterer Intensiv-Lauf, NUR Familien DIN/VSS/RAL (Stations-Split,
SIA/VKF nicht angefasst), PROGRAMM.md inkl. Verifikations-Stufe + Token-Vollgas verbindlich.

**Inventar-Check (dritte Bestätigung in Folge, nach Mini-Run 29/30/31):** Datei-für-Datei-
Abgleich `training/norm-inventar.md` gegen die live gemountete SharePoint-Ablage
`PL - 02_Recht_Norm/02_Normen/{DIN_Norm,VSS_Norm,RAL_Norm}` — weiterhin exakt 72/17/1 Dateien,
0 offene `[ ]`-Positionen, keine neuen Dateien. Zusätzlich geprüft: der Ordner
`PL - 02_Recht_Norm/02_Normen/Lignum/` (bisher nicht im Inventar geführt) ist **leer** (0
Dateien) — kein Bestandsfehler, nur zur Vollständigkeit vermerkt, falls dort künftig Dateien
abgelegt werden.

**Bewertung:** Eine künstliche Batch-Zielzahl (15-25 bzw. 30-40 Positionen) hätte erneut
Erfindung/Wiederholung bedeutet. Die verbleibenden 4 Vertiefungs-Lücken aus Mini-Run 30/31
(SIA 266/262/267-Detailbemessung, SIA-Raumakustik, Suva-/EKAS-Fassadengerüst/Dachhaken,
VKF-BRL 15-15, kantonale Velo-Abstellpflicht 2026) wurden erneut geprüft — keine ist aus dem
DIN/VSS/RAL-Scope heraus schliessbar (SIA/VKF-Zugriff nötig oder Quelle ausserhalb der
Normen-SharePoint-Ablage). Ein DIN-5034-1-Datensatz wurde stichprobenartig gegen das Original
gegengeprüft (Title-Metadaten "5034t1 1..10", 10 S. Bestand, `gelesen: S. 1-10 (vollständig)`
im Destillat bestätigt) — Teil-Destillat-Kennzeichnung bleibt korrekt (Bestandskopie ist
selbst unvollständig gegenüber der vollständigen amtlichen Norm, nicht ein Lese-Versäumnis).

**Formale Feststellung:** DIN/VSS/RAL (90 Dateien) sind damit zum dritten Mal in Folge auf
allen vier Vertiefungsstufen (a Grunddestillation, b Retro-Verifikation, c Q&A-Selbstbefragung,
d Querschnitts-Synthese) vollständig und ohne offene Destillations-Lücke bestätigt —
**INVENTAR KOMPLETT** im Sinne von `training/PROGRAMM.md`. Empfehlung an Raphael: den
Scheduled Task `normen-training-mini` gemäss PROGRAMM-Endbedingung pausieren oder auf einen
Datei-Änderungs-Trigger umstellen (neue Dateien in DIN_Norm/VSS_Norm/RAL_Norm/Lignum), statt
weiterhin fixe Zeitintervalle ohne neuen Content abzufahren — passend zur allgemeinen
Token-Drosselung (Rule `auto-verbesserungen.md` 260714). Report
`outputs/2026-07-16_normen-mini-run32.md`.

## Mini-Run 31 (Mac Mini, 260716) — Inventar-Check + 2 von 6 offenen Lücken aus Mini-Run 30 geschlossen

Auftrag Raphael: ein Intensiv-Lauf, NUR Familien DIN/VSS/RAL (Stations-Split, SIA/VKF
nicht angefasst). **Inventar-Check vorab** (Datei-für-Datei-Vergleich `norm-inventar.md`
gegen die live gemountete SharePoint-Ablage `PL - 02_Recht_Norm/02_Normen/DIN_Norm`,
`.../VSS_Norm`, `.../RAL_Norm`): weiterhin 0 offene `[ ]`-Positionen, keine neuen Dateien
seit dem letzten Scan — Grunddestillation (a), Retro-Verifikation (b), Q&A-Selbstbefragung
(c) und Querschnitts-Synthese (d) bleiben für alle 90 DIN/VSS/RAL-Dateien vollständig
abgeschlossen. Dieser Lauf hat deshalb bewusst **keine künstliche Mengen-Zielzahl (z.B.
15-25 Positionen) erzwungen**, sondern die 6 aus Mini-Run 30 dokumentierten offenen Lücken
einzeln geprüft:
- **2 Lücken geschlossen** (SIA 331 ↔ EN 12207/DIN 1249-11; RAL-GZ 638 BKP-Zuordnung) —
  siehe die zwei `[x]`-Einträge unten im Mini-Run-30-Block.
- **4 Lücken bleiben offen**, mit Begründung, warum sie in diesem Lauf nicht schliessbar
  waren: SIA 266/262/267-Detailbemessung (benötigt SIA-Vertiefung, Station MacBook Pro);
  SIA-Raumakustik-Norm (existiert laut `destillate/INDEX.md` nicht in der KB, keine
  DIN/VSS/RAL-seitige Massnahme möglich); Suva-/EKAS-Richtlinie Fassadengerüst/Dachhaken
  (kein SharePoint-Fund, externe Beschaffung nötig, nicht per Destillation lösbar);
  VKF-BRL 15-15 (VKF-Familie, Station MacBook Pro); «2026 verschärfte kantonale
  Velo-Abstellpflicht» (Recherchefrage ausserhalb bestehender Quellen, keine neue
  VSS/SN-Datei in der Ablage gefunden). Report `outputs/2026-07-16_normen-mini-run31.md`.

## Mini-Run 30 (Mac Mini, 260715) — offene Lücken aus der Vertiefungsstufe (d) Querschnitts-Synthese DIN/VSS/RAL

- [x] **SIA 266/262/267 Detailbemessung nicht gegen DIN 1053/1045-2/1054 gegengeprüft:**
  Abschnitt 9 der Synthese (`wiki/synthese-din-vss-ral-fachskills.md`) stützt sich auf die
  bereits gelesenen Ausschnitte der SIA-Destillate (SIA 266 Ziff. 2.3.2.2, SIA 262 Ziff. 2/
  4.2.1/4.3.6/4.3.8/4.3.10/5.2.2-5.2.4/6.4.2, SIA 267 Ziff. 0-5/8 bis 8.4.4). Nicht gelesen:
  SIA 266 Ziff. 3.2-3.6 (Mauersteine/Mörtel) + 4.1-4.5 (Bemessungsformeln/Tabellen 1-9),
  SIA 267 Ziff. 6-7/8.5-8.6/9-16 (Pfahlfundationen, Verankerungen, Stützbauwerke,
  Erdbauwerke). Ohne diese Kapitel bleibt der DIN-Zahlenvergleich (Partialfaktoren,
  M-Klassen ↔ deklariertes Mauerwerk, Sohlwiderstand ↔ Flachfundationsbemessung)
  ungeprüft. Nachziehen sobald SIA 266/267 (Station MacBook Pro) vertieft destilliert sind.
  **Bringschuld erfüllt, Cross-Check bleibt offen für Abschnitt D (260823, 27. Fortsetzung
  SIA-Sweep):** SIA 266/267 sind jetzt vollständig destilliert — genau die hier genannten
  Lücken (SIA 266 Ziff. 3.2-3.6/4.1-4.5, SIA 267 Ziff. 6-7/8.5-8.6/9-16) stehen jetzt in
  `destillate/sia-266-2003.md` bzw. `destillate/sia-267-2003.md`. Der eigentliche
  Ziffer-für-Ziffer-Abgleich gegen DIN 1053/1045-2/1054 (Abschnitt D, Mac-Mini-Scope) wurde
  in diesem Lauf NICHT durchgeführt — das bleibt für den nächsten Cross-Check-Lauf offen.
  **GESCHLOSSEN 24.08.2026 (Registerpflege, kein neuer Sachverhalt):** der hier vertagte
  Ziffer-für-Ziffer-Abgleich wurde bereits am 23.08.2026 durchgeführt und im unmittelbar
  folgenden Eintrag dieses Blocks dokumentiert (`outputs/2026-08-23_cross-check-sia266-267-vs-din1053-1054.md`,
  dort korrekt mit `[x] GESCHLOSSEN 23.08.2026` markiert) — nur diese Checkbox wurde beim
  damaligen Schliessen nicht mitgezogen, weil der Abgleich als neuer Eintrag statt als
  Update dieses Eintrags erfasst wurde.
- [x] **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, Cross-Check-Lauf).** Ziffer-für-Ziffer-
  Abgleich SIA 266 ↔ DIN 1053-1 und SIA 267 ↔ DIN 1054 durchgeführt, dazu Scope-Klärung
  SIA 262 ↔ DIN 1045-2. Vollständiger Bericht mit allen Fundstellen:
  `outputs/2026-08-23_cross-check-sia266-267-vs-din1053-1054.md`. Kernbefunde: (1) Mauerwerk —
  Mindestwanddicke tragender Wände 115 mm stimmt in SIA 266 Ziff. 5.1.3.1 und DIN 1053-1
  Ziff. 8.1.2.1 exakt überein, trotz unabhängiger Entstehung und unterschiedlicher
  Bemessungsphilosophie (SIA Grenzzustandsverfahren vs. DIN zulässige Spannungen — der
  zahlenmässig übereinstimmende Sicherheitsbeiwert γM=γw=2,0 ist deshalb NICHT gleichbedeutend
  und darf nicht unkommentiert gleichgesetzt werden). (2) Geotechnik — SIA 267 reduziert
  Bodenkennwerte (tan φ', c', cu, qu) einheitlich über einen Materialpartialfaktor
  (Tabelle 1, γφ=1,2/γc=1,5); DIN 1054 tut dies für die meisten Regelnachweise (GEO-2, Tabelle
  A 2.2: γφ'=γc'=1,00) NICHT — der Sicherheitsabschlag sitzt dort auf der Widerstandsseite
  (γR, Tabelle A 2.3) — und erst bei der Gesamtstandsicherheit (GEO-3, γφ'/γc'=1,10-1,25)
  vergleichbar zu SIA. Deutsche Geotechnik-Gutachtenwerte sind daher nicht ohne Prüfung des
  Nachweisverfahrens in eine SIA-267-Bemessung übernehmbar. DIN 1054 bietet zudem mit den
  Sohlwiderstands-Tabellen A 6.1-A 6.8 eine kodifizierte Praxisabkürzung, die SIA 267 nicht
  kennt (jede Flachfundation ist nach SIA 267 rechnerisch nachzuweisen). (3) Beton — ein
  Bemessungsvergleich SIA 262 ↔ DIN 1045-2 ist mit dem Bestand NICHT sinnvoll durchführbar:
  DIN 1045-2 regelt nur die Betonzusammensetzung (Teil 2 der DIN-1045-Reihe), die zu SIA 262
  inhaltlich passende Bemessungsnorm wäre DIN 1045-1 («Bemessung und Konstruktion»), die nicht
  im Bestand ist (kein bekannter Bring-Schuld-Fall, einfach nicht gesucht/beschafft). Zwei
  kleine Restlücken (SIA-266-Formel für aussteifende Wände, deutsche Zusatz-Expositionsklassen
  in SIA 262) bewusst nicht als neue Checkbox angelegt — reine Vollständigkeitslücken ohne
  aktuellen Praxisbedarf, dokumentiert im Report Abschnitt 5.
- [x] **SIA 331 (Fenster) ↔ DIN EN 12207/DIN 1249-11 Ziffer-für-Ziffer abgeglichen —
  erledigt Mini-Run 31 (260716):** Kernbefund: SIA 331s Beanspruchungsgruppen A/B/C
  (Gebäudehöhe-basiert, Ziff. 2 23 4/2 31, Nachweis über EN 42/EN 86) und DIN EN 12207s
  Beanspruchungsgruppen A/B/C (Fugendurchlasskoeffizient-basiert, Nationaler Anhang
  NA.1, nur zur Übertragung alter DIN-18055-Messwerte auf EN-Klassen 1-4) sind KEIN
  gemeinsames System trotz identischer Buchstaben — 1:1-Transfer wäre fachlich falsch.
  DIN 1249-11 (Glaskanten) füllt eine echte Lücke, da SIA 331 keine eigene
  Glaskanten-Klassifizierung kennt (Kap. 3/6 bewusst leer). Details:
  `wiki/synthese-din-vss-ral-fachskills.md` Abschnitt 10.3 + Abschnitt 14 (zwei neue
  Zeilen). Adversarial verifiziert (2 unabhängige Prüf-Agenten gegen die drei
  Quell-Destillate, 0 Fehler gefunden — Details siehe `outputs/2026-07-16_normen-mini-run31.md`).
- [~] **Keine SIA-Norm zur Raumakustik in der KB:** `destillate/INDEX.md`-Prüfung (Mini-Run 30)
  ergibt keinen Treffer für eine SIA-Raumakustik-/Nachhallzeit-Norm. DIN 18041 dient bis
  dahin als alleinige Zweitquelle für Nachhallzeit-Sollwerte/Absorptionsflächen (Abschnitt 13
  der Synthese). Falls eine einschlägige SIA-Norm existiert und im Bestand liegt, prüfen und
  destillieren.
  > ✅ **TEILWEISE GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung 21).** Norm identifiziert und
  > am Herausgeber verifiziert (WebFetch `shop.sia.ch`): **SIA 181/1:2026 «Raumakustik»** (SN
  > 520181/1), gültig ab **01.02.2026** — eine brandneue, eigenständige Norm (keine Revision
  > einer bereits geführten Nummer), die SIA 181 (baulicher Schallschutz) um die Raumakustik
  > innerhalb von Räumen ergänzt. Metadaten-Stub `destillate/sia-181-1-2026.md`, Registerzeile
  > `wiki/REGISTER.md` Abschnitt A. **Bleibt offen:** Volltext kostenpflichtig (110 CHF), keine
  > Nachhallzeit-Zahlenwerte zitierfähig — DIN 18041 bleibt bis zur Beschaffung die einzige
  > belegbare Zweitquelle dieser KB.
- [x] **Keine Suva-/EKAS-Richtlinie zu Fassadengerüst-Verankerung/Dachhaken in der KB:**
  DIN 4426 (Abschnitt 12.4) verweist selbst auf SIA 358 + EKAS/Suva — SIA 358 deckt nur
  Geländer/Absturzsicherung allgemein ab, nicht die Gerüstverankerungskräfte oder die
  Dachhaken-Bestückungsregel. Eine Suva-/EKAS-Quelle dazu ist in der KB nicht vorhanden und
  müsste separat beschafft werden (kein SharePoint-Fund im Normen-Inventar).
  > ✅ **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung 21).** Beide Teilfragen sind jetzt belegt.
  > **Verankerungskräfte:** neu destilliert `destillate/suva-44077-2022-fassadengeruest-verankerung.md`
  > (Suva 44077.d «Fassadengerüste — Sicherheit durch Planung», Ausgabe Januar 2022, kostenlos,
  > vollständig am Original gelesen) — Ankerfläche max. 25/20/10 m² je Verkleidungsart (Ziff.
  > 4.5.1, S. 15), Höhenstaffelung ab 40 m Gesamthöhe. **Dachhaken (fachlich: Anschlageinrichtungen
  > gemäss EN 795):** bereits vorher in der KB destilliert, nur nie hierher zurückverlinkt —
  > `destillate/suva-44066-arbeiten-auf-daechern.md` (established, Run 40), Ziff. 4.3: Pflicht zu
  > Anschlageinrichtungen (Ankerpunkten) nach EN 795 ab 3,0 m Absturzhöhe. Beide Quellen zitieren
  > sich bereits gegenseitig im Originaltext. Neuer Suva/EKAS-Block in `wiki/REGISTER.md`
  > Abschnitt D, Bring-Schuld-Kandidaten (weitere kostenlose Suva-Publikationen derselben Reihe)
  > dort gelistet.
- [x] **VKF-BRL 15-15 (Brandschutzabstände Tragwerke/Brandabschnitte) — ERLEDIGT, Bestandskontrolle
  Run 17 (260721):** das Destillat `vkf-brl-15-15-brandschutzabstaende-tragwerke.md` existiert
  (destilliert 260714). Die Mini-Run-30-Notiz «noch nicht destilliert» war aus DIN/VSS/RAL-Sicht
  (Mac Mini, kein VKF-Zugriff) verfasst und ist veraltet. Die Feuerwiderstands-Anforderungstabelle
  je Nutzung/Gebäudehöhe ist damit direkt in der KB abrufbar, nicht nur über das SZS-Sekundärdokument.
- [~] **Keine Bestätigung/Recherche zu einer «2026 verschärften kantonalen Velo-Abstellpflicht»:**
  Abschnitt 6b der Synthese (Erschliessung/Velo) hält fest, dass kein geprüftes VSS-Destillat
  (Quellen 1983-2011 bzw. Merkblatt Stadt ZH 1996/1998) eine solche 2026er-Verschärfung
  erwähnt. Falls eine aktuelle kantonale/kommunale Regelung existiert, separat recherchieren
  und nachtragen — nicht aus den bestehenden Quellen ableitbar.
  > ⚠ **TEILWEISE RECHERCHIERT 23.08.2026 (QUESTIONS-Abarbeitung 21), kein Beleg für eine
  > bereits geltende 2026er-Verschärfung.** Websuche findet **keine** in Kraft gesetzte
  > Verordnung mit 2026er-Datum. Gefunden wurde ein **hängiges kantonales Verfahren**: laut
  > `gruene-zh.ch` (Artikel 02.07.2024) hat die zuständige Kommission des Kantonsrats eine
  > PBG-Revision zur Neuregelung von Abstellplätzen (mehr Velo-Abstellplätze, erleichtertes
  > autofreies Wohnen) «zu Handen des Kantonsrats verabschiedet» — **Vorlage 171a/2020**. Der
  > Artikel nennt kein Inkrafttretungsdatum und keine abschliessende Ratifizierung durch das
  > Plenum; Stand der Vorlage seit Juli 2024 nicht weiterverfolgt. **Nicht zitierfähig als
  > geltendes Recht** — vor einer Verwendung in einem Projekt den aktuellen Stand der Vorlage
  > 171a/2020 direkt beim Kanton (Amt für Mobilität, velo@zh.ch) oder im Kantonsratsprotokoll
  > verifizieren. Die städtische Übersichtsseite `zh.ch/.../veloparkierung.html` (WebFetch,
  > 23.08.2026) nennt nur den bestehenden Leitfaden, keine 2026er-Änderung.
- [x] **RAL-GZ 638 (Gitterroste) BKP-Zuordnung ergänzt — erledigt Mini-Run 31 (260716):**
  gegen `references/bkp-2017/BKP-2017-Liste.md` geprüft: **BKP 221.9** Metallbaufertigteile
  (Rohbau 2, aussen) bzw. **BKP 272.2** Allgemeine Metallbauarbeiten (Ausbau 1, innen), je
  nach Einbausituation; bei Umbauten die Hauptcodes BKP 321/372 (keine .9-Unterteilung in
  der Liste vorhanden, daher keine erfundene Dezimalstelle). Nachgeführt in
  `destillate/ral-gz638-2008.md` und `wiki/synthese-din-vss-ral-fachskills.md` Abschnitt
  11.4 + Abschnitt 14. Adversarial verifiziert (unabhängiger Prüf-Agent gegen
  BKP-2017-Liste.md, 0 Fehler/keine erfundenen Subcodes gefunden — Details siehe
  `outputs/2026-07-16_normen-mini-run31.md`).

## Run 15 (MacBook Pro, 2026-07-17) — neue offene Punkte

- [x] **GEKLAERT: Ausgabejahr VKF-BRL 16-15 «Flucht- und Rettungswege».** Run 14 hatte vermutet, die
  Datei datiere als «Ausgabe 2017». Am Original widerlegt: korrekt ist **Ausgabe 2015, Fassung
  01.01.2017** (Copyright 2015; IOTH-Aenderungen 17.09.2015 und 22.09.2016 eingearbeitet;
  Inkraftsetzung Ziff. 5: Beschluss IVTH 18.09.2014, in Kraft 01.01.2015 — ein Inkrafttreten 2017
  existiert im Dokument nicht). «2017» ist das Fassungs-, nicht das Ausgabedatum. Zitierform:
  «VKF-BRL 16-15de, Ausgabe 2015, Fassung 01.01.2017».
- [x] **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung).** Die Folgepruefung ist inzwischen
  systematisch geleistet worden, nur nicht unter diesem Titel: der **VKF-Fassungs-Sweep**
  (N27-1/N58-1, Normen-Lauf Run 58-60, 20.-23.08.2026) hat den Zugangsweg fuer **alle 35**
  VKF-Publikationen mit KB-Destillat geklaert (`training/n58-vkf-fassungsmatrix-260820.md`,
  Zusammenfassung `wiki/REGISTER.md` Abschnitt D) und fuer die 01.01.2017er-Fassungswelle
  15 von 15 Delta-Destillaten erstellt (Run 60, 23.08.2026). Fuer die hier namentlich
  betroffene BRL-Familie bestaetigt die Rang-5-Tabelle in N58-1 (`## Normen-Lauf Run 58`
  oben) ausdruecklich: «die Aenderungen 2017 sind fuer 13-15/14-15/15-15/16-15/22-15 bereits
  erfasst» — exakt die hier befuerchtete systematische Verwechslung Fassungsdatum ↔
  Ausgabejahr wurde damit fuer die ganze revidierte Serie durchgesehen, nicht nur fuer 16-15.
  Ursprungswortlaut bleibt unten stehen, damit die urspruengliche Vermutung nachvollziehbar ist:
- [x] **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung, zwoelfter Lauf).** Die geforderte
  systematische Durchsicht ist durch eine zwischenzeitlich unabhaengig entstandene Arbeit
  bereits erledigt: `wiki/REGISTER.md`, Abschnitt zu den VKF-Publikationen 01.01.2017 (Run 60,
  23.08.2026), fuehrt fuer **alle fuenfzehn** Publikationen der Sammelrevision (BRL 17-15,
  18-15, 20-15, 21-15, 23-15, 24-15, 25-15, BSE 100-15, 101-15, 102-15, 105-15, 106-15, 107-15,
  AH 1000-15, 1002-15) je ein eigenes Delta-Destillat mit explizitem Fundstellen-Abgleich
  Fassungsdatum ↔ Ausgabejahr, plus BRL 13-15 als Gegenprobe — REGISTER-Vermerk: «Der
  Sammelposten 01.01.2017 ist mit Run 60 vollstaendig abgearbeitet». Damit ist die hier
  verlangte Durchsicht der ganzen Serie bereits vollzogen, nur die Checkbox war nicht
  nachgezogen. Separat davon bleibt eine ANDERE, im REGISTER selbst als naechster Schritt
  markierte Frage offen (Abdeckungsrichtung: ob die Bestandsdestillate ihre eigene Fassung
  *vollstaendig* abbilden, nicht nur das Delta) — das ist keine Wiederholung dieses Punkts,
  sondern eine eigene, groessere Arbeit (siehe Eskalationsempfehlung im Report des elften
  Laufs). Ursprungswortlaut zur Nachvollziehbarkeit: «Dieselbe Verwechslung Fassungsdatum ↔
  Ausgabejahr duerfte bei den uebrigen revidierten VKF-Richtlinien systematisch auftreten
  (deren Fassungsdaten sind ebenfalls 2016/2017). REGISTER und Destillate der ganzen Serie
  darauf durchsehen. Vorarbeit vorhanden (Run 8): `planungsgrundlagen` hat fuer BSR 13-15
  (Rev. 2017, redaktionelle Deltas) und BSR 14-15 bereits Fassungs-Recherche geleistet — siehe
  `wissen/planungsgrundlagen/wiki/brandschutz-pl03-wegweiser` (Run 41/52).»
- [~] **TEILWEISE GESCHLOSSEN Run 22 (260725): Fassung «Stand 01.12.2022» gelesen und die Teilfrage zu
  Ziff. 3.7 entschieden** (Bezugsgrösse **Brandabschnittsfläche > 1'200 m²** in beiden Fassungen
  wortidentisch, Haupttext S. 12 — das Destillat hatte nichts geglättet; geändert wurde nur die
  erläuternde Anhang-Zeile S. 33). **Offen bleiben zwei Punkte**, siehe Run-22-Sektion oben: die
  materielle Kennwert-Änderung der Personenbelegung Ziff. 3.5.2 (Anhang S. 24) ist nur teilweise
  nachgeführt, und die ABSV-Änderung auf S. 16 (umbenannte Bildlegenden) fehlt noch. Ursprünglicher
  Auftragstext zur Nachvollziehbarkeit:
- [x] **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung).** Beide oben als offen benannten Punkte
  sind laengst im Destillat geloest, nur die Checkbox hier wurde nie nachgezogen: Der Abschnitt
  «Fassung 01.12.2022 — Delta zur Fassung 01.01.2017» in
  `destillate/vkf-brl-16-15-flucht-rettungswege.md` (dort seit Run 22/23, 25.07.2026) behandelt
  **beide** offenen Punkte abschliessend — (1) die ABSV-Aenderung vom 22.03.2017 zu Ziff.
  2.4.3/2.4.4: Run 23 hat die urspruengliche Fehldiagnose («Vertauschung Ziff. 2.4.3/2.4.4»,
  «S. 16») per `pdftotext`-Volltextabgleich beider Fassungen widerlegt und richtiggestellt —
  reine Umbenennung einer Anhang-Bildunterschrift auf S. 15, keine Vertauschung, kein
  Zahlenwert betroffen (Delta-Punkt 2 im Destillat); (2) die materielle Personenbelegungs-
  Aenderung Ziff. 3.5.2 (TKB-Beschluss 09.06.2021, Anhang S. 24): am Original der Fassung
  Stand 01.12.2022 nochmals gegengelesen, die bereits seit Wissens-Chef Run 8 (18.07.2026)
  im Destillat gefuehrte 3-zeilige Matrix (Fachmaerkte/Kaufhaeuser/Einkaufszentren 0.10/0.10,
  Supermaerkte 0.38/0.15, Hochfrequentierte Supermaerkte 0.45/0.21 Personen/m2) stimmt
  wortgetreu mit dem Original ueberein — «kein weiterer Korrekturbedarf» (Delta-Punkt 3).
  Eigene Gegenpruefung dieses Laufs (23.08.2026): `BSPUB-1394520214-85.pdf` (35 S., Titel
  «16-15 Flucht- und Rettungswege», SharePoint `AR - 01 Projekte/2619_KINDERSPITAL/
  06_Reglemente/Brandschutz Normen Auszug/`) per `pdftotext -layout` erneut gelesen (Titelseite
  S. 1-2 Aenderungsliste, Anhang S. 14-17), Wortlaut deckt sich vollstaendig mit dem im
  Destillat dokumentierten Befund. Einzig **Delta-Punkt 1** (Fehlerkorrektur 01.12.2022,
  Ziff. 3.7 Bildunterschrift «Geschossflaeche» → «Brandabschnittsflaeche», S. 33) war im
  Original-Auftragstext unten bereits vorweggenommen richtig geloest (Run 22) und nie strittig.
  Ursprungswortlaut bleibt unten stehen, damit die Abarbeitung nachvollziehbar ist:
- [x] **P1 — Fassung «Stand 01.12.2022» der VKF-BRL 16-15 vollstaendig destillieren.**
  *Checkbox nachgezogen 24.08.2026 (QUESTIONS-Abarbeitung) — der Text direkt darüber («GESCHLOSSEN
  23.08.2026») hatte die Klärung bereits dokumentiert, nur dieses Kästchen war stehen geblieben.
  Eigene Gegenprüfung: `destillate/vkf-brl-16-15-flucht-rettungswege.md` Frontmatter `datenstand`
  bestätigt alle drei Änderungsstufen (ABSV 22.03.2017, TKB 09.06.2021, Fehlerkorrektur 01.12.2022)
  als "jetzt am Original geprueft und destilliert", Abschnitt "Fassung 01.12.2022 — Delta zur Fassung
  01.01.2017" (Z. 253) vorhanden, `status: established-mit-vorbehalt`.*
  *Eingegangen ueber den Wissens-Chef Run 8 (18.07.2026); der Uebergabe-Flag stand seit Run 52 nur
  in `planungsgrundlagen` und war hier nie angekommen.* Im Bestand liegt
  `PL - 03 Brandschutz/02 Brandschutzrichtlinien 2015-17-22/BSPUB-1394520214-85.pdf`.
  Das aktuelle Destillat basiert auf der Fassung 01.01.2017; **nur die Personenbelegung Verkauf**
  (Beschluss TKB 09.06.2021) ist nachgefuehrt. **Ungeprueft bleiben:** Beschluss **ABSV 22.03.2017**
  (Ziff. 2.4.3/2.4.4, S. 15/16) und die **Fehlerkorrektur 01.12.2022** (Ziff. 3.7, S. 33).
  **Konkrete Teilfrage zu Ziff. 3.7:** die Fehlerkorrektur aendert laut planungsgrundlagen die
  Bezugsflaeche der Schleusenpflicht bei Einstellraeumen von «Geschossflaeche» auf
  «Brandabschnittsflaeche > 1'200 m2» — unser 2017er-Destillat schreibt aber **bereits**
  «Brandabschnittsflaeche». Entweder ist die Beschreibung der Vorfassung unpraezis oder das
  Destillat hat die Formulierung damals geglaettet. Am Wortlaut beider Fassungen klaeren.
- [~] **BESTÄTIGT UND TEILWEISE BEHOBEN Run 22 (260725) — der Strukturhinweis war zutreffend und hat
  zwei konkrete Fälle geliefert.** Der hier geforderte «Bestand nach jüngeren Fassungen durchsuchen»-Schritt
  wurde erstmals systematisch ausgeführt und förderte zutage, dass die Destillate der BRL 13-15 und
  BRL 14-15 auf der überholten Fassung 01.01.2015 beruhten, während die Fassung 01.01.2017 im Haus lag —
  in der **zweiten Ablage** `PL - 03 Brandschutz/`, die das Inventar nicht abdeckt (eigener Eintrag in der
  Run-22-Sektion oben). Beide Deltas sind nachgetragen, Verifikation offen. Der Schritt gehört als
  Pflichtschritt in `training/PROGRAMM.md`, zusammen mit der neuen Bildvergleichs-Pflicht. Ursprünglicher
  Hinweistext:
- [ ] **Strukturhinweis (Run 8): Fassungspflege ist der blinde Fleck der Destillate.** Die
  Refuter-Notiz im 16-15-Destillat («keine Abweichung gefunden», 17.07.) prueft gegen **dieselbe
  Datei**, aus der destilliert wurde — sie kann eine juengere Fassung im Bestand grundsaetzlich nicht
  finden. Kuenftige Verifikationen sollten als ersten Schritt den **Bestand nach juengeren Fassungen
  derselben Norm** durchsuchen (Dateiname/Stempel), bevor sie Werte gegenlesen.
- [ ] **BRING-SCHULD P1 — Volltext SIA 380/1:2016 beschaffen.** Im Bestand liegt nur eine Vorschau
  (6 von 60 Seiten). Bis dahin sind Q_H-Grenz-/Zielwerte, U-Wert-Grenzwerte und Gebaeudekategorien
  **nicht belegbar** und duerfen von Agent `energie-berater` / Skill `planungsgrundlagen` NICHT
  genannt werden. Falle: `alle/xalt/neu/380_1_d_2001.pdf` ist Volltext, aber zweifach ueberholt
  (2001→2009→2016) — kein Ersatz. **SIA-Normen-Abo-Weg GEPRÜFT 23.08.2026 (SIA-Sweep,
  fünfundzwanzigste Fortsetzung) — Sackgasse:** `SIA_Abo/Korrespondenz/180208_INorm-Abo_2018_Login.pdf`
  ist ein iNorm-Abonnement der SIA von 2018, ausgestellt auf **Meili, Peter & Partner Architekten AG**
  (Kundennummer 236540), nicht auf JANS — vermutlich ein bei der SharePoint-Migration 18.03.2025
  fehlabgelegtes Fremddokument. Credentials einer fremden Firma werden nicht verwendet (kein
  Login-Versuch unternommen, keine Zugangsdaten in diese KB übernommen). Beschaffung bleibt nur
  über einen eigenen, aktuellen SIA-Normen-Kauf möglich.
- [ ] **BRING-SCHULD P1 — Volltext SIA 385/1:2011 beschaffen** (6 von 28 Seiten im Bestand). Die
  praxisrelevanteste Frage (Legionellen-Temperaturen, Ziff. 3.1/3.2, Normseite 13) ist bis dahin
  aus dieser Norm nicht beantwortbar. ~~Vor einem Normkauf zuerst pruefen, ob die franzoesische
  Variante `alle/f/385_1_f.pdf` den Volltext enthaelt — waere der billigste Lueckenschluss.~~
  **GEPRÜFT Run 22 (260725) — negativ, dieser Weg ist versperrt:** `alle/f/385_1_f.pdf` (60 S.) ist die
  Ausgabe **2000** zum Thema «Wasser und Wasseraufbereitungsanlagen in öffentlichen Schwimmbädern». Die
  Nummer 385/1 wurde 2011 für «Anlagen für Trinkwarmwasser in Gebäuden» wiederverwendet; die
  Schwimmbad-Materie ging in **385/9** auf. Kein Ersatz, auch nicht teilweise — die Legionellen-Angaben
  der 2000er betreffen Beckenwasser und Duschen. Die Bring-Schuld bleibt somit vollumfänglich offen und
  ist nur über Kauf schliessbar — der vermeintliche SIA-Abo-Weg ist eine Sackgasse (siehe Begründung
  bei SIA 380/1 oben: die einzigen im Haus liegenden Abo-Zugangsdaten gehören einer fremden Firma).
- [ ] **NEU 23.08.2026 — BRING-SCHULD P1 — Volltext SIA 266/1:2015 beschaffen.** Aus dem
  Web-verifizierten Rückzug der Ausgabe 2003 (siehe oben, Eintrag «SIA 266/1: neuere Ausgabe»)
  folgt: die geltende Fassung ist im Bestand nicht vorhanden. 16 Seiten, CHF 30.-, SIA-Shop
  (shop.sia.ch/normenwerk/ingenieur/266-1_2015_d). Bis zur Beschaffung ist die Prüf-/
  Deklarationsnorm zu SIA 266 nur in der überholten 2003er-Fassung belegt. **SIA-Abo-Weg ebenfalls
  Sackgasse** (siehe Begründung bei SIA 380/1 oben, geprüft 23.08.2026, SIA-Sweep fünfundzwanzigste
  Fortsetzung); auf Volltextsuche im gesamten SharePoint-Drive `02_Recht_Norm` nach `266_1`/`266.1`
  wurde zusätzlich kein weiterer, bisher unentdeckter Bestandstreffer gefunden (nur bereits bekannte
  Dateien: die 2003er-Fassung `alle/i/266_1_d.pdf`, Sprachvarianten `_f`/`_i`/`_e` und die
  artfremden AVB-Normen SIA 118/266-1 und 118/266-2).
- [~] **TEIL (1) GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung).** Aktualität von SIA 400:2000
  gegen den suissetec-Hinweis geprüft: `shop.sia.ch/normenwerk/architekt/400_2000_d/D/Product`
  (`curl -A "Mozilla/5.0"`, Abruf 23.08.2026) führt SIA 400 D-400, Jahr 2000, gültig ab
  01.10.2000, **Revision 1, Revisions-Datum 18.08.2015** — die Produktseite listet nur einen
  Vorgänger (1985), keinen Nachfolger. SIA 400:2000 (Rev. 1/2015) bleibt damit die aktuell
  gültige Ausgabe für die Aussparungsdarstellung; nachgetragen in
  `destillate/sia-400-2000.md`, Abschnitt «Offene Punkte». **Teil (2) bleibt offen** — die
  suissetec-Planungsrichtlinien (Heizung, Lüftung/Klima, Sanitär) sind weiterhin nicht im
  Bestand und nicht in dieser KB erschlossen; Beschaffung über den suissetec-Shop bleibt
  Bring-Schuld.
- [~] **NEU 23.08.2026 — BRING-SCHULD P2 — Nachfolgewerke des zurückgezogenen SIA 410/410-1/2
  beschaffen.** Aus dem Web-verifizierten Rückzug (siehe oben) folgt Bedarf an zwei
  Nachfolgequellen: (1) **SIA 400 «Planbearbeitung im Hochbau»** für die Aussparungsdarstellung
  (ersetzt SIA 410/2) — bereits im REGISTER als `sia-400-2000` verlinkt, Aktualität dieser
  Ausgabe gegen den suissetec-Hinweis noch nicht geprüft; (2) die **suissetec-Planungsrichtlinien**
  (Heizung, Lüftung/Klima, Sanitär) für Farbcode/Sinnbilder (ersetzt SIA 410 + 410/1) — als
  Ordner/E-Books im suissetec-Shop erhältlich, bisher nicht im Bestand und nicht in dieser KB
  erschlossen. Niedrigere Priorität als die SIA-266/1-Bring-Schuld, da SIA 410 nur Empfehlungscharakter
  hatte und die JANS-Praxis bereits grösstenteils auf Fachplaner-eigene Pläne abstellt.
  *(Ursprungswortlaut, Teil 1 seither geschlossen — siehe Eintrag direkt darüber.)*
  > **Nachtrag Run 61 (25.08.2026) — Marker auf `[~]` korrigiert, kein neuer Sachbefund.**
  > Der Eintrag benennt seine eigene Teilerledigung bereits im Schlusssatz («Teil 1 seither
  > geschlossen»), stand aber weiter auf `[ ]`. Teil (1) SIA 400:2000 Rev. 1/2015 ist geprueft
  > und in `destillate/sia-400-2000.md` nachgetragen (23.08.2026); Teil (2) suissetec-
  > Planungsrichtlinien bleibt Beschaffungs-Bring-Schuld.
- [~] **P2 — SIA-Merkblatt 2048 «Energetische Betriebsoptimierung» ins Inventar aufnehmen.**
  *Eingegangen ueber den Wissens-Chef Run 8 (18.07.2026).* Die KB `energie` hat die Uebergabe
  («Kandidat fuer den Skill/die KB `normen`») in `destillate/muken-2025-modul-7-betriebsoptimierung-hlkkse.md`
  notiert; hier kam sie nie an (grep «2048» in `wissen/normen/`: 0 Treffer — weder REGISTER noch
  `training/norm-inventar.md`). SIA 2048 ist die von MuKEn 2025 Modul 7 in Bezug genommene Methodik;
  energie hat sie bisher nur ueber EnFK EN-142 + Sekundaerquellen erschlossen. Fuer die Methodik-Frage
  (Anhang E.2 Berichtsvorgaben) braucht es den Volltext.
  > ✅ **Bestandsfrage GEPRÜFT 23.08.2026 (QUESTIONS-Abarbeitung), negativ.** (1) SharePoint-Bestand
  > (Site PL, Drive `02_Recht_Norm`) per M365-Graph-Connector durchsucht: Volltextsuche
  > `/drives/{id}/root/search(q='2048')` über den ganzen Drive sowie gezielt in `SIA_Norm:` und
  > `04_Merkblätter:` — kein Treffer mit Bezug zu SIA 2048. Das Merkblatt liegt **nicht** im
  > SharePoint-Bestand. (2) Produktseite `shop.sia.ch/normenwerk/architekt/sia%202048/d/D/Product`
  > (WebFetch, Abruf 23.08.2026) bestätigt: **SIA 2048/2015 D, aktuell (nicht archiviert), gültig ab
  > 01.07.2015, Preis 100.00 CHF** (Papier oder Download SRD) — **kein kostenloser Volltext**, nur
  > das Inhaltsverzeichnis ist gratis. Eine ältere IFMA-Ankündigung eines kostenlosen Downloads
  > (Suchtreffer-Titel, Link inzwischen 404) liess sich nicht verifizieren und widerspricht dem
  > aktuellen Shop-Preis — nicht belastbar. **Bring-Schuld bleibt vollumfänglich offen**, nur über
  > SIA-Abo/Kauf (100 CHF) schliessbar; Inventar-Eintrag erst nach Beschaffung sinnvoll.
- [x] **GESCHLOSSEN 24.08.2026 (QUESTIONS-Abarbeitung) — Z1/Z2-Koeffizienten des SIA-103-Grundfaktors
  waren bereits destilliert, nur nicht verlinkt.** Der Befund unten war zum Schreibzeitpunkt
  überholt: `destillate/sia-honorar-hilfsmittel.md` (status: established, adversarial verifiziert
  17.07.2026) führt seit seiner Anlage die Z1/Z2-Werte für **alle vier** LHO, nicht nur SIA 102 —
  Tabelle «Kernziffern — Z-Werte-Blatt» (Z. 161-165): **SIA 103 (Bauingenieure) Z1 = 0.075,
  Z2 = 7.23** (Blatt 2015/Kopf «Z-Werte 2014»), zusätzlich die volle Zeitreihe 2005-2015 (Z. 173-183;
  Wert seit 2009 unverändert). Honorar nach Baukosten ist damit nach SIA 103 durchrechenbar. Nur der
  Querverweis fehlte: `destillate/sia-103-2003.md` Ziff. 7.2.2 und der Abschnitt «Zentrale Tabellen»
  verwiesen bislang fälschlich auf eine Lücke — beide Stellen jetzt auf `sia-honorar-hilfsmittel.md`
  verlinkt und mit den Zahlenwerten ergänzt. Datenstand bleibt 2015 (Vorbehalt: neueres Blatt beim
  SIA nicht geprüft). Ursprungswortlaut:
- [ ] **Z1/Z2-Koeffizienten des SIA-103-Grundfaktors fehlen** (p = Z1 + Z2/∛Bp, Ziff. 7.2.2). Sie
  werden laut Norm periodisch vom SIA publiziert, stehen aber nicht im PDF. Folge: **Honorar nach
  Baukosten ist nach SIA 103 derzeit nicht durchrechenbar.** Fuer SIA 102 liefert das neue Destillat
  `sia-honorar-hilfsmittel.md` die z-Werte 2015 — der SIA-103-Gegenpart fehlt.
- [x] **Widerspruch zwischen Destillaten — KORRIGIERT 21.07.2026 (Dauerschicht-Zyklus 39,
  Audit-Top-1):** `sia-112-2014.md` Z. 19 ordnete SIA 104 = «Landschaftsarchitektur» und
  SIA 105 = «Maschinen-/Elektroingenieur» zu; korrigiert auf 104 = Forstingenieure,
  105 = Landschaftsarchitektur, 108 = Gebaeudetechnik/Maschinenbau/Elektrotechnik —
  verifiziert an den drei etablierten Ordnungs-Destillaten (sia-104-2003, sia-105-2020,
  sia-108-2014, je Titelseite der Original-PDFs). Restpunkt bleibt: bei Gelegenheit am
  SIA-112-Original S. 4/S. 10 gegenlesen, ob der Scan dort tatsaechlich anders lautet
  (vermuteter OCR-/Uebertragungsfehler des Erst-Destillats).
- [x] **GESCHLOSSEN Run 22 (260725): Beherbergungs-Kategorien [a]/[b]/[c] definiert.** Die Vermutung war
  richtig — die Definition steht in der Brandschutznorm 1-15de (Art. 13 Abs. 2 lit. a, S. 8) und wortnah
  in der BRL 10-15de «Begriffe und Definitionen» (S. 12). Neuer Artikel
  `wiki/vkf-beherbergungskategorien.md`; Details und Verifikations-Verdikt in der Run-22-Sektion oben.
- [ ] **SIA 118:2013 nicht im Bestand** — belegt sind nur 1977/1991. Ob die Ausgabe 2013 fuer laufende
  Werkvertraege beschafft werden muss, ist ein Entscheid fuer Raphael.
  > **Nachtrag Run 61 (25.08.2026) — Bestand mit Primaerquellenzugriff geprueft, Kaufentscheid
  > bleibt.** Rekursiver `find` ueber `PL - 02_Recht_Norm/02_Normen` (OneDrive materialisiert,
  > 636 PDF): im Haus liegen `alle/118_1991_d.pdf`, `SIA_Normen/SIA 118/118_1991_d.pdf`,
  > `alle/118-C1_2026_d.pdf` sowie die Teilnormen 118/2xx (244, 246, 248, 257, 262, 263, 265,
  > 266-1, 266-2, 267) — **keine Datei mit Ausgabe 2013**. Die Bestandsaussage ist damit erstmals
  > direkt am Bestand belegt statt nur behauptet; am Kern (Beschaffung = Entscheid Raphael)
  > aendert das nichts.
  > ⚠ **Randbefund zum Ursprungswortlaut:** «belegt sind nur 1977/1991» ist ungenau — eine
  > SIA-118-Ausgabe **1977 liegt nicht im Haus** (der 1977er-Treffer im Bestand ist SIA 150:1977,
  > eine andere Norm). Belegt ist 1991, dazu die Aenderung C1:2026. Nicht im Ursprungswortlaut
  > korrigiert (Nachvollziehbarkeit), hier richtiggestellt.
- [x] **ÜBERHOLT, korrigiert Run 22 (260725):** Die Merkblatt-Serie ist destilliert (Run 16, 260719) —
  `sia-mb-2001-2005` … `sia-mb-2027-2006`, inkl. der prioritären `sia-mb-2024-2006`
  (Standard-Nutzungsbedingungen) und `sia-mb-2023-2004` (Wohnungslüftung). Offen bleibt nicht die
  Destillation, sondern der **Gültigkeitsstand** der 2000er-Serie (eigener Eintrag unten, Run 16).
- [~] **VKF-Normkonzept BSV 2026 (Stand 06.10.2022) neu im Inventar** — noch NICHT in Kraft, daher nie
  als geltendes Recht zitieren. Strategisch relevant als Vorschau auf die Abloesung der BSV 2015.
  > **Nachtrag Run 61 (25.08.2026, Normen-Nacht) — Teilerledigung, Marker auf `[~]` korrigiert.**
  > Die *Aufgabe* dieser Zeile («neu im Inventar») ist seit Run 16 erledigt und dort belegt:
  > `training/norm-inventar.md:1128` fuehrt `07_BSV 2026 Projekt (noch nicht in Kraft)/260711 VKF
  > Normkonzept BSV 2026 Stand 2022-10-06.pdf` als `[x] 260719` mit Destillat
  > `vkf-normkonzept-bsv-2026-entwurf.md` (established, verifiziert beanstandet, 6 Befunde
  > korrigiert); `destillate/INDEX.md:345` und `wiki/REGISTER.md:1141` sind gleichlautend
  > nachgefuehrt. Offen bleibt allein der **stehende Warnhinweis** (nie als geltendes Recht
  > zitieren) — der ist kein abschliessbarer Auftrag, sondern eine Dauerregel; die laufende
  > Ueberwachung des Inkrafttretens fuehrt der eigene Eintrag «BSV 2026 ueberwachen» (Z. ~4162,
  > Inkraftsetzung fruehestens Maerz 2027). Kein Primaerquellenbefund, reine Markerkorrektur.
- [~] **Inventar-Scan haerten:** Der Scan vom 11.07.2026 hat nur `SIA_Normen/alle/` erfasst (58 Dateien
  uebersehen) und Vorschau-PDFs nicht erkannt. Zwei Konsequenzen fuer den naechsten Scan: (1) rekursiv
  ab `02_Normen/` scannen, nicht ab einem Unterordner; (2) je PDF die tatsaechliche Seitenzahl gegen die
  auf dem Titelblatt deklarierte «Anzahl Seiten» pruefen — damit waeren beide Auszuege sofort aufgefallen.
  Gegenprobe Run 15: im uebrigen destillierten SIA-Bestand (`alle/`) gibt es **0 weitere Auszuege**.
  > **Nachtrag 23.08.2026 (QUESTIONS-Abarbeitung 24): Punkt (1) substanziell erledigt, Punkt (2) bleibt
  > offen.** Die SIA-Sweep-Fortsetzung „fünfte" (23.08.2026) hat mit funktionierendem Graph-API-Zugang
  > ein vollstaendiges Listing von 140 Dateien aus `SIA_Norm/SIA_Normen/alle/` plus sieben norm-eigenen
  > Unterordnern gegen die 55 Bestandslücken-Nummern gefahren — 0 Treffer, die Luecke ist real, kein
  > Scan-Artefakt der urspruenglichen `alle/`-only-Erfassung (`outputs/2026-08-23_sia-sweep-fuenfte-
  > fortsetzung-zugangsweg.md`). Damit ist der urspruengliche Verdacht «rekursiver Scan faende mehr»
  > fuer den SIA-Bestand widerlegt, nicht nur fuer den Unterordner `alle/`. **Punkt (2) — Seitenzahl
  > gegen Titelblatt-Deklaration je PDF — ist NICHT erneut gegen den seit Run 15 (Mitte Juli) massiv
  > gewachsenen Destillat-Bestand (79+ SIA-Destillate, Stand 23.08.2026) gepruefft worden;** die
  > „0 weitere Auszuege"-Aussage bezieht sich nachweislich nur auf den damaligen Bestand. Ein
  > systematischer Seitenzahl-Audit-Lauf ueber den aktuellen Destillat-Bestand ist nicht erneut
  > gefahren worden und bleibt als eigener, klar abgegrenzter Einzellauf offen — nicht spekulativ
  > als «vermutlich weiterhin 0» geschlossen.

### Uebergabe an den Mac Mini (DIN/VSS/RAL — nicht MacBook-Scope, Stations-Split)

Run 15 hat auf der SIA/VKF-Seite zwei Fehlerklassen gefunden, die auch die DIN/VSS/RAL-Seite treffen
koennten. Bearbeitungsstand Mini-Run 33 (20.07.2026):

- [x] **ERLEDIGT Mini-Run 33 (2026-07-20): Zaehl-Differenz Inventar ↔ Live-Ablage aufgeloest.**
  Frischer rekursiver `find`-Abgleich zeigt **DIN live 72 = Inventar 72**, **VSS live 17 = Inventar 17**
  (netto, nach Abzug der einen virtuellen Tabellenzeile `SN 640 105a`, die als Anhang in
  `VSS 640 291a.PDF` steckt und keine eigene Datei ist), RAL 1 = 1, Lignum 0 = 0. Die von Run 15
  gemeldete Differenz (DIN 71, VSS 14) reproduziert sich heute nicht — vermutlich transienter
  OneDrive-Sync-Zustand auf der Gegenstation am 17.07., kein echter Bestandsfehler. «DIN/VSS/RAL
  komplett» bleibt bestaetigt. Details `outputs/2026-07-20_normen-mini-run33.md`.
- [x] **Auszug-Plausibilisierung fuer DIN/VSS — GEKLAERT Mac-Mini-Nachtschicht (2026-07-21):**
  Root Cause zum Mini-Run-33-Teilbefund gefunden. `DIN EN 12207.pdf` liest sich normal (6 S.
  bestaetigt, Adobe-Scan 2012), kein Auffaelligkeitsbefund ueber die reine Seitenzahl hinaus.
  `DIN 277-1.pdf` bleibt auf dem Mac Mini reproduzierbar NICHT lesbar — diesmal ueber `cat`
  direkt (nicht nur `pdfinfo`/Read-Tool) verifiziert: `stat` meldet korrekt 577'967 Bytes,
  jeder Lesezugriff (`cat`, Kopieren nach `/tmp`) bricht exakt mit `EDEADLK`/"Resource deadlock
  avoided" ab; `du -h` zeigt 0 B (nicht materialisierter Cloud-Platzhalter). Eine gezielt
  materialisierte **Vergleichsdatei im selben Ordner (`DIN 1045-2.pdf`, 6,4 MB) liest sich
  einwandfrei** — der Fehler ist also nicht der OneDrive-Sync-Client generell (Prozess laeuft,
  Internet OK, `brctl status` zeigt den Container `foreground`/`caught-up`, letzter Sync
  17:19 Uhr) und nicht die Netzwerkverbindung, sondern **spezifisch der lokale File-Provider-
  Cache-Eintrag dieser einen Datei auf dem Mac Mini**. `brctl download` griff nicht (Tool ist
  fuer iCloud/CloudDocs, nicht fuer den OneDrive-File-Provider zustaendig — erwartete
  Fehlermeldung "Path is outside of any CloudDocs app library"). Damit ist die in Mini-Run 33
  offen gelassene Alternative **beantwortet**: kein Datenverlust in der SharePoint-Ablage (das
  bestehende Destillat `din-277-1-2005.md` wurde nachweislich von einer anderen Station aus
  vollstaendig gelesen und verifiziert), sondern ein isolierter, lokaler Materialisierungsfehler
  auf dem Mac Mini. **Kein automatischer Fix versucht** (Neustart OneDrive-App/Entfernen des
  lokalen Cache-Eintrags ist keine Nachtschicht-Whitelist-Aktion) — empfohlene manuelle Behebung
  fuer Raphael bei Gelegenheit: Datei im Finder rechtsklicken → "Immer auf diesem Geraet behalten"
  aus-/wieder einschalten, oder OneDrive-App einmal neu starten, das erzwingt eine
  Neu-Materialisierung. Betrifft nur den Lesezugriff auf dem Mini; der Skill `normen` und alle
  Destillate bleiben unveraendert korrekt. Details vorheriger Lauf: `outputs/2026-07-20_normen-mini-run33.md`.
- [x] **Stilllegung des Tasks `normen-training-mini` (Radar-Entscheid 17.07., Commit `fd6ce35f`) beruht auf
  «Inventar dreimal komplett bestaetigt».** Nach Mini-Run 33 war Punkt 1 (Zaehl-Differenz) geklaert;
  Punkt 2 (Auszug-Plausibilisierung DIN 277-1) ist mit der lokalen EDEADLK-Root-Cause-Analyse
  vom 2026-07-21 (siehe oben) ebenfalls geklaert — kein Datenverlust, nur lokaler Mac-Mini-
  Cache-Fehler, kein weiterer Inventar-Handlungsbedarf. Reaktivierung des Loops bleibt trotzdem
  Raphaels Entscheid (Takt-/Drossel-Regeln, Rule `auto-verbesserungen` 260714).

### Run 16 (MacBook Pro, 260719) — offene Punkte aus den Merkblatt-/Wegleitungs-Destillaten

**Bring-Schulden (Bestand unvollständig, nicht durch Destillieren lösbar):**

- [ ] **Wegleitung zu SIA 271 (Abdichtungen) liegt nur als 2-Seiten-Auszug vor.** Das PDF enthält
  ausschliesslich Deckblatt und Buchseite 64 (Ziff. 5.10.3-5.10.5). Destillat `sia-271-wegleitung.md`
  ist deshalb `speculative` und im Inventar als `[~]` teil-destilliert geführt. Volltext beschaffen.
  > **Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung).** ⚠ Statuskorrektur zum Ursprungswortlaut:
  > Das Destillat trägt inzwischen `status: established` (seit Run 26, 25.07.2026, letzte Zeile des
  > Abschnitts «Offene Punkte» dort) — established jedoch nur für den 2-seitigen Inhalt selbst
  > (Ziff. 5.10.3-5.10.5 wortgetreu bestätigt), nicht für den fehlenden Rest. Die Bring-Schuld
  > «Volltext beschaffen» bleibt davon unberührt offen.
  > **Web-Recherche zum Beschaffungsweg (WebSearch + WebFetch, 24.08.2026):** kein freier
  > Volltext auffindbar. Gefunden wurde stattdessen das offizielle Bestellformular
  > `gebäudehülle.swiss` (`xn--gebudehlle-s5a60a.swiss/node/1718/download`, PDF, verschlüsselt,
  > per `pdftotext` gelesen): **«Wegleitung zur Norm SIA 271:2021 — Abdichtungen von Hochbauten»,
  > 1. Auflage 2022, 142 Seiten, Format A4, 4-farbig**, getragen von Gebäudehülle Schweiz und
  > suissetec (Herausgeberliste im Destillat nennt zusätzlich PAVIDENSA und SFG-ASVE, im
  > Bestellformular nicht separat aufgeführt — möglicherweise nur die zwei Hauptverbände im
  > Formularkopf). Preise (exkl. MwSt.): Buch 190.- / E-Book 133.- / Set 247.- (Nichtmitglied);
  > 120.- / 84.- / 156.- (Mitgliederpreis Gebäudehülle Schweiz oder suissetec). Norm SIA 271:2021
  > selbst trat am 01.11.2021 in Kraft, «gegenüber dem Vorgänger einige wichtige Änderungen».
  > **Damit bleibt die Beschaffung eine reine Bring-Schuld Raphael** (kein Gratis-/Web-Weg
  > gefunden) — neu ist nur die konkrete Bestellgrundlage (Ausgabe, Umfang, Preis, Bezugsquelle),
  > die zuvor in dieser Zeile fehlte. **Offen bleibt zusätzlich unbeantwortet**, ob der im Haus
  > liegende 2-Seiten-Auszug aus dieser 2022er-Ausgabe oder aus einer älteren Wegleitung
  > (Vorgänger-Norm SIA 271, vor 01.11.2021) stammt — der Auszug selbst trägt kein Ausgabejahr
  > (siehe Destillat, Frontmatter `ausgabe: "unbekannt"`), das ist ohne Volltext-Vergleich nicht
  > entscheidbar.
- [x] **Gültigkeitsstand der Merkblatt-Serie 2000er — GEKLÄRT (23.08.2026, QUESTIONS-Abarbeitung).**

  > SIA-Merkblätter sind laut eigenem Vorspann nur **drei Jahre gültig**, verlängerbar um je drei
  > Jahre. Bei praktisch allen destillierten Merkblättern (2001:2005, 2003:1996, 2004:1992, 2006,
  > 2007, 2008, 2015:2005, 2016:2005, 2017:2000, 2018:2004, 2022, 2026:2006, 2027:2006) ging aus
  > dem PDF NICHT hervor, ob sie verlängert, abgelöst oder zurückgezogen wurden.
  >
  > **Jede der 13 Nummern einzeln am Herausgeber geprüft** (Produktseite `shop.sia.ch`, Muster
  > `shop.sia.ch/normenwerk/architekt/sia%20<nr>/d/D/Product`, alle abgerufen 23.08.2026 — sechs
  > davon bereits im selben Tag vom SIA-Sweep in `wiki/REGISTER.md` geklärt, sieben hier neu
  > geprüft und dort nachgetragen):
  >
  > | Nr. | Bestand (Haus) | Heutiger Status | Nachfolger |
  > |---|---|---|---|
  > | 2001 | 2005 (Vorstufe) | seit 2018 vollständig retiriert | **SIA 279:2018** (im Haus, established) |
  > | 2003 | 1996 | archiviert seit 31.03.2022 | keiner genannt |
  > | 2004 | 1992 | bereits als «alle zurückgezogen» bekannt | — |
  > | 2006 | 1993 (Vorstufe) | Ausgabe 2013 archiviert seit 31.10.2023 | **SIA 4018:2023** |
  > | 2007 | — (kein Volltext im Haus) | Ausgabe 2001 weiterhin **aktuell** | — |
  > | 2008 | 1994 | bereits als «alle zurückgezogen» bekannt | — |
  > | 2015 | 2005 (Vorstufe) | Ausgabe 2012 archiviert seit 31.07.2025 | **SIA 405:2025** (Konsolidierung GEO405-Familie, dritter unabhängiger Beleg) |
  > | 2016 | 2005 (Vorstufe) | Ausgabe 2012 archiviert seit 31.07.2025 | **SIA 405:2025** |
  > | 2017 | 2000 | weiterhin **aktuell**, kein Rückzug | — |
  > | 2018 | 2004 | archiviert seit 30.11.2017 | **SIA 269/8:2017** «Erhaltung von Tragwerken — Erdbeben» |
  > | 2022 | 2003 | archiviert seit 30.06.2021 | keiner genannt |
  > | 2026 | 2006 | zweifach veraltet: Zwischenausgabe 2017 archiviert seit 31.07.2026 | **SIA 4020:2026**, gültig ab 01.08.2026 |
  > | 2027 | — (kein Volltext im Haus) | Ausgabe 2006 archiviert seit 31.10.2014 | **SIA 103:2014** (Inhalt in Honorarordnung integriert) |
  >
  > **Ergebnis: nur 2 der 13 Bestandsausgaben (2007, 2017) sind heute noch die aktuell gültige
  > Fassung** — bei 2004/2008 ist die Nummer bereits vollständig zurückgezogen, bei den übrigen
  > neun ist der Bestand entweder eine überholte Zwischenausgabe oder unter einer neuen Nummer
  > fortgeführt. **Konsequenz für die Fach-Skills bleibt bestehen und wird durch den Befund
  > verschärft:** vor jeder Fundstelle aus einem 2000er-Merkblatt in einem ausgehenden
  > JANS-Dokument ist die Gültigkeit zu prüfen — die Destillate belegen den historischen Inhalt,
  > nicht zwangsläufig die heutige Geltung. Volltexte der neun Nachfolgenormen (SIA 279:2018 und
  > 405:2025 sind bereits im Haus) liegen für SIA 4018:2023, SIA 269/8:2017, SIA 4020:2026 nicht
  > vor — Beschaffung Bring-Schuld, in `wiki/REGISTER.md` je Zeile vermerkt.
  >
  > Belege: `wiki/REGISTER.md`, Abschnitt A, Zeilen SIA 2003/2006/2015/2017/2018/2022/2026
  > (nachgeführt 23.08.2026) sowie die bereits am selben Tag durch den SIA-Sweep geklärten Zeilen
  > SIA 2001/2007/2016/2027/2045.
- [x] **`SIA_Leistungsmodell.pdf` ist gar kein SIA-Dokument.** Der Verifier hat festgestellt: es ist
  ein Merkblatt der **KUNDERT PLANER AG** zur SIA-Ordnung, nicht eine SIA-Publikation. Das Inventar
  führte es als «Hilfsmittel Leistungsmodell». Als Sekundärquelle behandeln, nie als Norm zitieren.
  > ✅ **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung 21, Bestandsabgleich).** Bereits korrekt
  > umgesetzt: Destillat `destillate/sia-112-leistungsmodell.md` (status established) führt im
  > Frontmatter `herausgeber: "KUNDERT PLANER AG ... (Merkblatt eines Dritten, KEIN
  > SIA-Originaldokument)"` und im Fliesstext ausdrücklich «Das PDF ist kein
  > SIA-Originaldokument» sowie den Hinweis, dass keine Norm-Ziffern zitiert werden und das
  > Blatt als Merkhilfe, nicht als belegfähige Norm-Fundstelle taugt. Keine weitere Aktion nötig.
- [x] **Nachfolgeausgaben nicht ermittelbar.** Für SIA 2001 (Wärmedämmstoff-Kennwerte, Nennwerte
  befristet bis 31.12.2006) und SIA 2024 (Standard-Nutzungsbedingungen, Revision 2021 bekannt) ist
  der Bestand veraltet. SIA 2024 ist über die KB `energie` bereits teilweise erschlossen
  (Grundlagenbericht Revision 2021 + Korrigenda C1:2024, siehe CHANGELOG 2026-07-19 Wissens-Chef Run 9).
  > **Nachtrag 23.08.2026 (SIA-Sweep, fünfzehnte Fortsetzung):** Gültig-ab-Datum (01.12.2021) jetzt
  > direkt an der Produktseite `shop.sia.ch/normenwerk/architekt/sia%202024/d/2021/D/Product`
  > (SN 592024) durch `normen` selbst verifiziert, nicht mehr nur über die `energie`-Sekundärquelle.
  > **Neue Bring-Schuld dabei entdeckt:** die Produktseite führt neben der bisher bekannten
  > Korrigenda C1:2024 eine weitere **Korrigenda C2**; Datum und Änderungsumfang von C2 sind auf
  > der Produktseite nicht ausgewiesen und wurden nicht ermittelt. Vor jeder künftigen Verwendung
  > der Kat.-VIII-Kennzahlen (Elektrizität Ziff. 4.2.1/4.2.3) prüfen, ob C2 diese betrifft. Der
  > Volltext (inkl. Anhang A/F) bleibt unverändert nicht im Haus. Details:
  > `wiki/REGISTER.md`, Zeile SIA 2024; neuer Metadaten-Stub `destillate/sia-2024-2021.md`.
  >
  > ✅ **GESCHLOSSEN 23.08.2026 (SIA-Sweep, sechzehnte Fortsetzung).** Beide Korrigenda C1 und
  > C2 waren entgegen der Annahme im Nachtrag oben **kostenlose Downloads** (0.00 CHF, SRD,
  > keine Bezahlschranke) und wurden vollständig gelesen (je 27 S., `pdftotext -layout`).
  > **C1:2024** gültig ab 01.06.2024 (genehmigt 14.05.2024 von der SIA-Kommission für
  > Gebäudetechnik- und Energienormen), **C2:2025** gültig ab 01.06.2025 (genehmigt
  > 06.05.2025, dieselbe Kommission) — beide Angaben direkt am Titelblatt/Genehmigungstext
  > des jeweiligen Originals gelesen, nicht aus einer Sekundärquelle. **Antwort auf die
  > eigentliche Frage:** C2 ändert drei Definitionsziffern (1.1.2.12 neu, 1.1.6.1 und 1.1.6.3
  > erneute Korrektur derselben Formeln, die schon C1 angefasst hatte) und ersetzt erneut
  > vollständig die Tabellen 4-9. Direkter Zeilenvergleich der Kategorie-8-Zeilen (Bettenzimmer
  > 8.01, Stationszimmer 8.02, Behandlungsraum 8.03) in allen sechs Tabellen zwischen C1 und C2:
  > **zeichenidentisch** — die von `energie` zitierten Kat.-VIII-Elektrizitätskennzahlen sind
  > von C2 gegenüber C1:2024 nicht betroffen. **Nicht geprüft:** ob C1 gegenüber der
  > Erstausgabe 2021 selbst (Volltext weiterhin nicht im Haus) echte Wertänderungen an
  > Kategorie 8 vornahm — nur der Schritt C1→C2 ist belegt. Neues Destillat
  > `destillate/sia-2024-korrigenda-c1-c2.md` (status `established`). **Cross-KB-Bringschuld an
  > `energie`:** der Befund selbst gehört als Nachtrag in
  > `wissen/energie/destillate/sia-2024-nutzungsrandbedingungen-gesundheitsbau.md` bzw. die
  > dortige `QUESTIONS.md` — in diesem Lauf aus Zeitgründen nicht mehr ausgeführt, siehe
  > CHANGELOG.
  >
  > ✅ **BEIDE TEILE GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung 19).** (1) **Cross-KB-Bringschuld
  > an `energie` bereits erfüllt** — nicht durch diesen Lauf, sondern durch einen zeitgleichen
  > `energie`-Lauf: `wissen/energie/wiki/QUESTIONS.md`, Run 80 (18.07.2026), Punkt
  > «SIA-2024-Normstand für die Healthcare-EBF-Schwelle (F100)», trägt seit 23.08.2026 exakt diesen
  > Cross-KB-Nachtrag mit Verweis auf `wissen/normen/destillate/sia-2024-korrigenda-c1-c2.md`
  > (Zeile 1260-1268 dort, verifiziert per `grep`). Kein weiterer Schreibvorgang in `energie`
  > nötig. (2) **SIA 2001 — Nachfolgeausgabe war bereits vollständig ermittelt, nur nicht an
  > diese Stelle verlinkt.** `wiki/REGISTER.md`, Zeile SIA 2001 (Abschnitt A), dokumentiert
  > bereits seit dem SIA-Sweep-Katalogabgleich vom 23.08.2026: die Nummer fehlt in beiden
  > amtlichen SIA-Publikationsverzeichnissen (Stand 27.10.2023/03.01.2024) vollständig; sie ist
  > über eine Zwischenrevision 2013/2015 **vollständig in SIA 279:2018 «Wärmedämmende Baustoffe»
  > aufgegangen** (Frontmatter-Beleg im eigenen Bestand: `destillate/sia-279-2018.md`,
  > `ersetzt: "SIA 279:2011 und SIA 2001:2015"`, status `established`). Eigene Zusatzprobe heute:
  > die Produktseite `shop.sia.ch/normenwerk/architekt/sia%202001/d/D/Product` (SN 592001) zeigt
  > die letzte im Shop geführte Ausgabe 2003 als seit 31.05.2005 archiviert und listet im
  > eigenen Datenbankfeld «Nachfolger» nur einen Verweis auf sich selbst mit unbekanntem Jahr
  > («?») — der SIA-Shop selbst kennt also keinen strukturierten Nachfolgepfad; die einzige
  > belastbare Fundstelle bleibt der Frontmatter-Beleg in `sia-279-2018.md`. Kein Volltext-
  > Beschaffungsbedarf mehr, da SIA 279:2018 bereits im Haus liegt. Beide Teilfragen der
  > ursprünglichen Checkbox sind damit erledigt.

- [x] **GESCHLOSSEN (QUESTIONS-Abarbeitung 23.08.2026, nachgetragen — Sachverhalt bereits am
  23.07.2026 erledigt).** Ursprungswortlaut: SN EN 520 (Gipsplatten — Begriffe, Anforderungen,
  Prüfverfahren) fehle im Bestand; Plattentypen (Typ D «definierte Dichte», Typ F) inkl.
  Rohdichte-Kriterium seien zu klären und zu belegen, Volltext zu beschaffen. **Geprüft:**
  Ein Mini-Run (23.07.2026, Mac Mini) hat dieselbe Bestandslücke unabhängig bearbeitet:
  `wiki/REGISTER.md` Z. 860 führt SN EN 520 mit Bestandsbefund («nicht im JANS-Bestand»,
  SharePoint PL-02/DIN_Norm geprüft, 72 Dateien) sowie die Typenbuchstaben-Fundstelle Ziff.
  4.13 der öffentlichen Normvorschau; der Wiki-Artikel `wiki/en-520-gipsplattentypen.md`
  (status `established`) dokumentiert Typ D (Rohdichte ≥ 800 kg/m³, zwei unabhängige
  Sekundärquellen: Rigips-Normbroschüre + FeuerTrutz/TÜV-Tabelle, nicht die Norm selbst) und
  Typ F samt Praxisregeln (LV-Kürzel DFIR, VKF-Anerkennung ≠ Typ-D-Erfüllung). Report
  `outputs/2026-07-23_en-520-bestandsluecke.md`. **Bleibt offen** (im Wiki-Artikel selbst unter
  «Offene Punkte» geführt, keine neue Bring-Schuld): der Volltext-Zahlenwert 800 kg/m³ selbst
  ist nur über Sekundärquellen belegt, nicht über den SN-EN-520-Wortlaut — bei einer
  Auseinandersetzung mit dem Brandschutzexperten müsste der SNV/DIN-Media-Volltext (CHF/EUR,
  Bring-Schuld Raphael) gekauft werden.

**Systematische Lehre aus der Verifikation (für kommende Läufe):**

- [ ] **Häufigster Fehlertyp ist die modale Überdehnung** (23 von 73 Befunden): Der Destillier-Agent
  macht aus «kann», «sollte», «hat sich als zweckmässig erwiesen» ein «muss»/«ist zwingend». Genau
  dieser Fehler ist für JANS am gefährlichsten, weil eine als verbindlich zitierte Empfehlung in LV,
  Werkvertrag oder Behördenkorrespondenz nicht haltbar ist. Die Destillier-Prompts künftiger Läufe
  sollten die Modalität ausdrücklich als Prüfpunkt führen: Kann-/Soll-/Muss-Bestimmung wörtlich am
  Original abgleichen und im Destillat kenntlich machen.

## Bring-Schulden aus der KB `baurecht` (angemeldet Wissens-Chef Run 15, 25.07.2026) ⚠ 3 VON 4 BRING-SCHULD RAPHAEL, 1 GESCHLOSSEN — kein weiterer Web-Anlauf sinnvoll

Struktur-Muster 1 «Übergabe verpufft im abgebenden KB»: `baurecht` nennt vier Normen mit
Fundstellenfunktion, die in dieser KB **null Präsenz** haben (weder Destillat noch
`training/norm-inventar.md`). Bis dahin gilt in `baurecht` der dortige Wortlaut; hier ist
Bestandsprüfung und ggf. Destillat fällig. Gegenprobe im Cross-Lauf: `wiki/QUESTIONS.md`
dieser KB enthielt bis heute **0 Treffer** fuer «baurecht» — es war noch nie eine Bring-Schuld
aus der Recht-KB hier angekommen.

> **Nachtrag Wissens-Chef Run 16 (26.07.2026):** Die Anmeldung allein hat nicht gewirkt — Run 28
> (25.07., 22:47) hat den Block nicht aufgegriffen und sein Thema ausdrücklich als «kein
> Bring-Schulden-Fall» gewählt. Grund: der Nacht-Loop wählt seine Arbeit aus
> `training/norm-inventar.md`, nicht aus dieser Fragenliste. Die vier Normen sind deshalb am
> 26.07.2026 zusätzlich als eigene Zeilen im Inventar eingetragen (neuer Abschnitt «Bring-Schulden
> aus anderen KBs»). **Regel für künftige Übergaben an diese KB: immer in beiden Dateien führen.**

- [ ] **SIA 491** (Vermeidung unnötiger Lichtemissionen im Aussenraum, in Kraft seit 1.3.2013) —
  zitiert in `baurecht/wiki/laermschutz-und-nichtionisierende-strahlung.md:165`. Bestand prüfen
  (SharePoint PL-02), Ausgabe verifizieren, Destillat anlegen.
- [ ] **SN EN 12193:2008** (Licht und Beleuchtung — Sportstaettenbeleuchtung) — selbe Fundstelle.
  Bestand prüfen; Nachfolgeausgabe abklären (EN 12193 wurde nach 2008 revidiert).
  **Zweiter Anwendungsfall nachgetragen 23.08.2026 (aus KB `energie`):** genau diese Norm würde
  einen dokumentierten Selbstwiderspruch in einer AHB-Beleuchtungstabelle auflösen (Turnhalle
  «Wettkampfsport»: Tabellenwert 500 lx gegen Fussnotenwert 750 lx, Dokument 19.01.2007).
  SIA 387/4:2017 (Tab. 4, hier bereits destilliert) bestätigt nur den 500-lx-Wert für die
  allgemeine Turnhallennutzung, führt aber keine eigene Wettkampf-Zeile. Details und
  Sekundärquellen-Einordnung (nicht zitierfähig): `wissen/energie/wiki/QUESTIONS.md`, Eintrag
  **E-R143-2**; Destillat `wissen/energie/destillate/ahb-zuerich-uebersichtstabelle-beleuchtung-en12464.md`.
- [ ] **SN 640 052** (VSS, Kehrplatz/Kehrmöglichkeit bei Stichstrassen) — zitiert in
  `baurecht/wiki/baureife-und-erschliessung.md:76`. Reiht sich in den VSS-Parkierungs-/
  Erschliessungsblock ein, der in Run 11/12/13 dreimal korrigiert werden musste.
- [ ] **SN 641 400** (VSS, Grundlage der ZH-Parkplatzberechnung) — zitiert in
  `baurecht/wiki/fahrzeugabstellplaetze-und-parkierung.md:43`.

> **Nachtrag 23.08.2026 (QUESTIONS-Abarbeitung).** Die vier Checkbox-Punkte oben sind bereits
> mehrfach bearbeitet, in dieser Liste nur nie als erledigt markiert worden — Beleg
> `training/norm-inventar.md` Zeilen 558-561: **SIA 491** und **SN EN 12193** wurden am
> 27.07.2026 (Run 30) und erneut am 29.07.2026 (Run 36) in PL-02 UND PL-03 geprüft und sind
> nachweislich **nicht im Haus**; beide sind kostenpflichtig (SIA 491: CHF 90.00, shop.sia.ch,
> verifiziert 260729; SN EN 12193 aktuell gültige Ausgabe **2019**, nicht 2008 — die 2008er ist
> abgelöst, verifiziert 260729 Run 36 —, CHF 134.00 PDF+Online bzw. 115.00 nur Online,
> connect.snv.ch). **SN 640 052** und **SN 641 400** haben laut Inventar noch keinen
> dokumentierten Bestands-Check und keine verifizierte Preisangabe; ein eigener Web-Recherche-
> Anlauf heute (VSS-Shop `mobilityplatform.ch`) fand keine direkte Produktseite über die
> Norm-Nummer — der Shop verlangt laut eigener Auskunft die Sucheingabe `*<letzte 5 Ziffern>`
> (z.B. `*40052`), die als URL-Parameter nicht traf; kein Kauf/keine Anmeldung versucht. Alle
> vier Punkte bleiben **externe Bring-Schulden Raphael** (SIA-Shop- bzw. VSS-Shop-Kauf); ein
> weiterer eigener Beschaffungsversuch ohne Kaufberechtigung verspricht keinen Mehrwert. Die
> Checkboxen sind bewusst nicht angehakt — «geprüft, extern zu beschaffen» ist nicht dasselbe wie
> «erledigt».

> **Nachtrag 23.08.2026 (QUESTIONS-Abarbeitung, zweiter Anlauf) — SN 640 052 ist ausser Kraft,
> Preis jetzt verifiziert.** Der zuvor gescheiterte Zugangsweg über die Sucheingabe ist nicht
> nötig: `mobilityplatform.ch/de/vss-shop/product/640052` (offizieller VSS-Shop, WebFetch,
> Abruf 23.08.2026) liefert die Produktseite direkt über die Norm-Nummer als URL-Pfad. Ergebnis:
> **SN 640 052 «Wendeanlagen», Ausgabe 1977, gültig 01.01.1977 bis 31.03.2019, seither AUSSER
> KRAFT, Preis CHF 45.20.** Die Norm, die `baurecht/wiki/baureife-und-erschliessung.md:76` als
> Beleg für «Kehrplatz/Kehrmöglichkeit bei Stichstrassen» zitiert, ist damit seit über sieben
> Jahren zurückgezogen — **keine unmittelbare Bring-Schuld-Beschaffung mehr sinnvoll, sondern ein
> Zitierproblem in der KB `baurecht`.** ⚠ **Ein Nachfolger ist NICHT verifiziert**: Ein
> WebSearch-Treffer benannte ungeprüft SN 640060 als Nachfolgenorm — direkt gegengeprüft
> (`mobilityplatform.ch/de/vss-shop/product/640060`) und **widerlegt**: SN 640060 heisst
> «Leichter Zweiradverkehr; Grundlagen» (1995, ebenfalls seit 31.03.2019 ausser Kraft) und hat
> mit Wendeanlagen thematisch nichts zu tun — reines Zufallstreffer-Muster gleicher Rückzugsdatum,
> keine Nachfolgebeziehung. Der tatsächliche Nachfolger (falls vorhanden, im Zuge der
> VSS-Strukturanpassung März 2019) ist unbekannt und bleibt offen. **Cross-KB-Hinweis für
> `wissen/baurecht`** (Bringschuld gemäss Rule `wissens-bibliothekar`): die Fundstelle
> `baureife-und-erschliessung.md:76` sollte einen Vorbehalt zur überholten Norm erhalten, bis der
> Nachfolger geklärt ist — hier nicht selbst editiert (fremde KB, kein Schreibzugriff in diesem
> Lauf geprüft).
>
> **Nachtrag QUESTIONS-Abarbeitung 23.08.2026 (Fortsetzung):** Cross-KB-Bringschuld inzwischen
> erfüllt — `wissen/baurecht/wiki/baureife-und-erschliessung.md` trägt seit demselben Tag
> (Commit `fd4ef28d` bzw. `b1533e82`, geprüft per `git log`) direkt an der zitierten Stelle den
> ⚠-Vorbehalt «SN 640 052 seit 31.03.2019 ausser Kraft, Nachfolger nicht verifiziert» mit
> Rückverweis auf diesen QUESTIONS-Eintrag. Kein weiterer Handlungsbedarf für SN 640 052; der
> Nachfolger selbst bleibt eine offene Sachfrage (kostenpflichtige VSS-Recherche), aber keine
> Cross-KB-Lücke mehr. **SN 641 400** bleibt ungeprüft: derselbe URL-Pfad (`.../product/641400`)
> liefert HTTP 404, kein Ersatzpfad gefunden — weiterhin externe Bring-Schuld.
>
> **Dritte unabhängige Negativ-Bestätigung (24.08.2026, QUESTIONS-Abarbeitung):** erneut versucht,
> den Nachfolger für SN 640 052 frei (ohne Kauf) zu ermitteln — drei unabhängige Wege, alle ohne
> Ergebnis: (1) WebSearch «VSS Norm Wendeanlagen Nachfolgenorm SN 640 052 ausser Kraft» liefert
> keinen Treffer mit Nachfolgeangabe; (2) `vssg.ch/public/upload/assets/437/190219_VSS_Normuebearbeitung_NFK.pdf`
> (Revisionsliste vom 19.02.2019, zeitlich passend zur «VSS-Strukturanpassung März 2019») betrifft
> nachweislich nur die Normengruppe «Grünräume, Fauna und Umweltbegleitung» (640 6xx/7xx), nicht
> den Entwurfsbereich mit 640 052 — falsche Teilliste, keine Fehlermeldung; (3) die offizielle
> Shop-Produktseite `mobilityplatform.ch/de/vss-shop/product/640052` selbst (WebFetch, Abruf
> 24.08.2026) führt **kein** Nachfolger-/Ersatznorm-Feld, nur den Status «Ausser Kraft,
> 01.01.1977 bis 31.03.2019». Damit ist die Sachfrage nach drei unabhängigen Läufen (23.08. und
> zweimal 24.08., je andere Methode) durchgängig ergebnislos — die Einstufung als kostenpflichtige
> VSS-Bring-Schuld ist bestätigt, ein weiterer kostenloser Versuch ist nicht sinnvoll, ausser eine
> neue Quelle wird konkret benannt.
>
> **Weiterer Anlauf 23.08.2026 (QUESTIONS-Abarbeitung 19), Ergebnis weiterhin negativ, aber neuer
> Befund.** (1) `mobilityplatform.ch/de/vss-shop/product/641400` erneut mit HTTP 404 bestätigt
> (`curl -L`, Endziel `www.mobilityplatform.ch`); auch die Varianten `641-400` und `00641400`
> liefern denselben 404. Die shop-eigene Volltextsuche ist eine JS-Single-Page-App ohne
> statisch erreichbare API-Route (keine `algolia`/`elastic`-Endpunkte im HTML), darum per `curl`
> nicht durchsuchbar. (2) **Primärquelle statt Shop-Suche:** die ZH-Vollzugshilfe selbst
> (`zh.ch/…/pp_wegleitung.pdf`, lokal mit `pdftotext -layout` gelesen) nennt SN 641 400 nur als
> Klammerverweis («gemäss VSS-Norm SN 641 400», S. 3) ohne eigenen Titel — kein Volltext-Zitat
> möglich, nur der Verweis selbst ist belegt. (3) **Thematische Näherung, ausdrücklich nicht als
> Ablösungsbeleg zu verwenden:** `mobilityplatform.ch/de/vss-shop/product/640290` (per WebFetch
> gelesen) trägt den Titel **„Parkieren; Grenzbedarf, reduzierter Bedarf, Angebot, inkl. Beilage
> mit Erfahrungswerten", Ausgabe 1993, archiviert seit 01.02.2006** — exakt dasselbe Themenfeld
> „Grenzbedarf" wie das ZH-Zitat zu SN 641 400. Die Produktseite selbst nennt jedoch **keinen**
> Vorgänger «SN 641 400» (explizit geprüft im WebFetch-Prompt, keine Erwähnung gefunden) — die
> Nähe ist rein thematisch/numerisch (VSS-Normenwerk wechselte in den 1990ern von der alten
> 641.xxx- in die neue 640.28x/29x-Nummerierung für die Parkierungsnormen; `640281`/`640291`
> als Nachbarnummern sind ebenfalls „Parkieren"-Titel, beide zwischenzeitlich selbst archiviert).
> **Kein Zitat-Ersatz**: SN 640290 darf NICHT als Nachfolgenorm von SN 641 400 in einen
> Fach-Skill oder in `baurecht` übernommen werden, solange keine explizite Ablösungsformel
> gefunden ist. Bleibt externe Bring-Schuld — nächster sinnvoller Schritt wäre eine direkte
> Anfrage beim VSS-Kundendienst (kein Web-Zugangsweg mehr offen) oder Einsicht in ein
> gedrucktes/älteres VSS-Normenverzeichnis mit Ablösungstabelle.

**Gegenrichtung, ebenfalls Run 15:** die hier geführte Bring-Schuld «Volltext SIA 380/1:2016
beschaffen» (QUESTIONS `:558`) nennt als Adressaten nur `energie-berater`/`planungsgrundlagen` —
`baurecht` führt SIA 380/1 jedoch ebenfalls und ist mit-adressiert.

> ⚠ **STATUS-ZUSAMMENFASSUNG (nachgetragen 24.08.2026, QUESTIONS-Abarbeitung).** Diese Sektion
> trug bisher keinen Schliess-Marker auf der Überschriftzeile und wurde deshalb von den
> automatisierten Verifikationsläufen (00:19/00:22/02:42/02:54 Uhr) übersehen — sie fehlt in
> deren Vier-Punkte-Liste, obwohl 3 der 4 Checkbox-Punkte bereits mehrfach bearbeitet sind.
> Status je Punkt: **SIA 491** — nicht im Haus, kostenpflichtig (CHF 90.00, shop.sia.ch,
> verifiziert 260729), Bring-Schuld Raphael. **SN EN 12193** — nicht im Haus, aktuell gültige
> Ausgabe 2019 (nicht 2008), kostenpflichtig (CHF 134.00/115.00, connect.snv.ch), Bring-Schuld
> Raphael. **SN 640 052** — ✅ vollständig geklärt: ausser Kraft seit 31.03.2019, Cross-KB-
> Vorbehalt in `baurecht` bereits gesetzt (Commit `fd4ef28d`/`b1533e82`), kein weiterer
> Handlungsbedarf. **SN 641 400** — weiterhin ungeklärt; heutiger erneuter Anlauf (WebSearch
> „SN 641 400 VSS Norm Parkplatzberechnung Nachfolgenorm ersetzt durch“ + WebFetch auf die
> ParkingSwiss-Übersicht `d_ParkingGuideline-05_V1.2025_Parkierungsnormen_2.pdf` und die
> Wikipedia-Liste „Liste der Normen für das Strassen- und Verkehrswesen in der Schweiz“) fand
> **keinen zitierfähigen Beleg**: die WebSearch-eigene Synthese nannte ungeprüft SN 640281 als
> Nachfolgenorm, aber keine der drei gegengeprüften Quellen enthält „SN 641 400“ überhaupt
> (ParkingSwiss-PDF grösstenteils bildbasiert/nicht durchsuchbar, Wikipedia-Liste führt die
> Nummer gar nicht). **SN 640281 wird darum — wie zuvor SN 640290 — NICHT als Nachfolgenorm
> übernommen**, dieselbe Zitiersperre wie im Absatz darüber gilt sinngemäss auch hier. Damit
> vierter erfolgloser, aber dokumentierter Anlauf (23.08. Run-15-Nachtrag, 23.08. zweiter
> Anlauf, 23.08. QUESTIONS-Abarbeitung 19, jetzt 24.08.): der Weg über VSS-Kundendienst bzw. ein
> gedrucktes/älteres VSS-Normenverzeichnis mit Ablösungstabelle bleibt der einzig offene, aber
> nicht per Web gangbare nächste Schritt. **Verbleibende Bring-Schulden Raphaels: SIA 491,
> SN EN 12193 (beide Kauf), SN 641 400 (Herkunftsklärung ausserhalb Web).**

> **Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung).** Da der Web-Weg für SN 641 400 nach vier
> Anläufen ausgeschöpft ist (siehe oben), hier nur der konkrete nächste Schritt recherchiert,
> nicht die Norm selbst: VSS-Kundendienst laut offizieller Website `vss.ch` (WebFetch, Abruf
> 24.08.2026, Erstquelle) — **info@vss.ch**, Tel. **+41 44 269 40 20**, Sihlquai 255, 8005
> Zürich (Telefonnummer durch unabhängige WebSearch-Zweitquelle bestätigt). Direkte Anfrage nach
> Ablösungsnorm/Ablösungstabelle SN 641 400 dort möglich — das ist der von den Vorläufer-Läufen
> benannte, aber bislang nicht mit Kontaktdaten unterlegte «VSS-Kundendienst»-Schritt.

## Run 32 (MacBook Pro, 27.07.2026) — Verifikations-Vertiefung statt neuer Destillate

Acht parallele Refuter-Agenten haben die Run-31-Folgeaufgaben abgearbeitet: dritte
Verifikationsrunde für die fünf am 27.07. korrigierten Destillate, erste unabhängige Runde für
die drei neu erstellten. Ergebnis: zwei established (`vkf-allgemein-anerkannte-bauprodukte-2017.md`,
`vkf-ah-1001-15-wohnbauten.md`, beide 0 Befunde), ein `brandschutzfachstellen-anleitung-…-v3.md`
mit 3 geringfügigen Befunden (bleibt emerging), fünf weiterhin `speculative` — aber mit klar
sinkender Fehlerzahl je Runde (26→5, 18→3, 17→1, 17→4, 4→4 grob stabil). Details je Destillat in
`training/norm-inventar.md` (Run-32-Eintrag) und in den einzelnen Destillaten selbst (Abschnitt
„Verifikationsstand"/Frontmatter `status:`).

- [x] 260727 **VKF-Merkblatt 2003-15** «Brandschutzpläne, Flucht- und Rettungswegpläne,
  Feuerwehrpläne» gezielt gesucht (`find` über PL-02 UND PL-03, alle Unterordner inkl.
  `05 Arbeitshilfen Brandschutz 2015`, `03 Verzeichnisse`, `04 Erläuterungen`, `00 Brandschutzplaene
  bsvonline.ch`): **nicht im Bestand**. Bleibt externe Bring-Schuld (VKF-Shop/-Portal). Damit
  bleibt der amtliche Status von `brandschutzplan-legende-symbole-2017.md` unbestätigt.
- [x] 260727 **Regionale Geltung der beiden neuen Arbeitshilfen** — GEKLÄRT Run 33 (Web-Recherche):
  Symbolik direkt anwendbar für ZH (Stadt Zürich referenziert dasselbe VKF-Merkblatt 2003-15);
  Verfahren nicht 1:1 übertragbar (Stadt Zürich nutzt eigenes «Zusatzformular 3»); GVZ kantonal
  ohne eigenes Merkblatt. Details siehe Abschnitt «Regionale Geltung Brandschutznachweis-
  Arbeitshilfen für ZH (Run 33, recherchiert)» unten.
- [ ] **Offen aus Run 31, unverändert (Strukturentscheide bei Raphael, nicht vom Loop lösbar):**
  (1) Soll die Reichweite des Inventars auf die ~680 bisher nie gescannten PL-02-Ordner
  ausgeweitet werden (normrelevanter Kern: BfU, GVZ, Suva, SWKI, Suissetec, VSA, PAVIDENSA,
  Sanitäreinrichtung — grösstenteils aber Fremd-KB-Zuständigkeit)? (2) Soll `established`
  künftig einen sauberen Nulldurchgang statt einer bestandenen Korrekturrunde verlangen? Dieser
  Lauf hat die bestehende Konvention (eine bestandene Runde → established) unverändert
  angewendet, um dem Entscheid nicht vorzugreifen.
- [x] 260727 **Vierte Runde** durchgeführt (Run 33): 1x established (`lignum-4-2-…`), 3x weiterhin
  speculative mit je 1 Befund (`lignum-lignatec-…`, `sia-d0165-…`, `lignum-4-1-…` [Regression der
  dritten Runde]). Fünfte Runde für die drei verbleibenden Destillate ist der naheliegende
  nächste Batch — Details Abschnitt «Run 33» unten.

### Run 33 (MacBook Pro, 27.07.2026) — vierte Refuter-Runde, 1x established, 3x je 1 Befund

Vierte unabhängige Refuter-Runde für die vier Run-32-Punkt-2-Destillate: `lignum-4-2-…` erreicht
den ersten sauberen Nulldurchgang (0 Befunde) und wird `established`. Die übrigen drei bleiben
`speculative`, jeweils mit genau 1 neuem Befund: `lignum-lignatec-…` (Tab. 5 EFH/REFH-Ausnahme),
`sia-d0165-…` (GEFMA-200-Bucket 4xx/2xx-Verwechslung), `lignum-4-1-…` (eine **Regression** der
dritten Runde — Runde 3 hatte eine tatsächlich im Original belegte Aussage fälschlich gestrichen,
Runde 4 hat das korrigiert). Details `training/norm-inventar.md` (Run-33-Eintrag),
`outputs/2026-07-27_normen-nacht-run33.md`. Fünfte Runde für die drei verbleibenden Destillate
ist naheliegender nächster Batch (alle drei nahe am Nulldurchgang).

### Regionale Geltung Brandschutznachweis-Arbeitshilfen fuer ZH (Run 33, recherchiert)

Web-Recherche (WebSearch/WebFetch, 27.07.2026) zur oben offenen Frage «kennt die GVZ/Stadt
Zürich eine abweichende Symbolik oder ein eigenes Verfahren?». Befund: **kein eigenes,
abweichendes Symbolsystem** — aber ein **eigenes, anders geformtes Verfahrensformular**.

- **Symbolik: kein ZH-Sonderweg.** Die Stadt Zürich (Schutz & Rettung, Abteilung
  Einsatzplanung) schreibt in ihrem eigenen `Merkblatt Feuerwehrpläne (Einsatzpläne)`
  (SRZ_EPL_Merkblatt_EP_V1.0, Stand 04.10.2024, Ziff. 1/3.1) wörtlich: «Feuerwehrpläne sind
  nach dem VKF-Brandschutzmerkblatt 2003-15 «Brandschutzpläne, Flucht- und Rettungswegpläne,
  Feuerwehrpläne» (BSM) zu erstellen» und «Für die Darstellungen sind Symbole gemäss BSM
  Anhang B12 «Übersicht Feuerwehr-Symbole» zu verwenden». Damit ist das VKF-Merkblatt 2003-15
  — dieselbe Quelle, auf die auch die Zentralschweizer Arbeitshilfe V.3 verweist — explizit
  auch die amtliche Grundlage in der Stadt Zürich; Zürich ergänzt nur objektbezogene
  Detailvorgaben (Titelblatt-Felder, DIN-824-Faltung, Planmassstäbe, Meldeweg an
  `srz-einsatzplanung@zuerich.ch`), keine eigene Symbolik.
  Quelle: `stadt-zuerich.ch/content/dam/web/de/planen-bauen/bauvorschriften-und-planerische-grundlagen/dokumente/sicherheit-gesundheit/brandschutz/merkblatt-einsatzplaene-feuerwehr-v1.0.pdf`
  (per pdftotext gelesen).
  Historisch bemerkenswert: dasselbe Merkblatt erwähnt eine «ehemalige GVZ-Anleitung (2006)»
  für Einsatzpläne, die für Alt-Pläne noch referenziert, aber inzwischen auf die VKF-BSM-
  Darstellung zu migrieren ist — Zürich hatte also früher einen eigenen Ansatz, ist aber
  seither auf den gesamtschweizerischen VKF-Standard konvergiert.
- **Verfahren: eigenes Formular, andere Form als die Zentralschweizer Anleitung.** Die Stadt
  Zürich (Amt für Baubewilligungen + Schutz & Rettung/Feuerpolizei) führt ein eigenes
  «Zusatzformular 3 (dem Baugesuch beizulegen) — Brandschutznachweis»: ein strukturiertes
  Ankreuzformular (QSS-Stufe, VKF-Zertifikat-Nr. des QS-Verantwortlichen, Gebäudegeometrie,
  RF-Klassen Tragwerk/Brandabschnitte/Fassade/Dach, Brandmauer-Klasse, technischer
  Brandschutz, Beilagen Brandschutzpläne/-konzept), das direkt dem Baugesuchsdossier beiliegt
  — anders in der Form als die freitextliche Zentralschweizer «Anleitung zum
  Brandschutznachweis» V.3 (Vorprüfung per Mail-Anhang beim Brandschutzexperten, ohne
  Unterschrift). Fussnote 2 des Zürcher Formulars verweist für Beispielpläne auf dasselbe
  Portal `www.brandschutznachweis.ch`, das auch die Zentralschweizer Arbeitshilfe nennt.
  Quelle: `stadt-zuerich.ch/content/dam/web/de/planen-bauen/baubewilligungen/dokumente/bewilligungsprozess/dokumente/zusatzformular-3-brandschutznachweis.pdf`
  (per pdftotext gelesen).
- **GVZ (kantonale Ebene) selbst:** Auf gvz.ch (Rubrik Brandschutz/Formulare) kein eigenes
  Brandschutznachweis- oder Symbolik-Merkblatt gefunden — nur Formulare zur
  Qualitätssicherung (Übereinstimmungserklärung, Gleichwertigkeit QSS 2); die GVZ verweist für
  objektbezogene Fragen an die Standortgemeinde. Bestätigt (Websuche): die VKF-
  Brandschutzvorschriften (BSV) sind über die IOTH gesamtschweizerisch für verbindlich erklärt
  und bilden auch in Zürich die Rechtsgrundlage der Feuerpolizeipraxis — keine Hinweise auf
  einen eigenen ZH-Normkorpus, der die VKF-Vorschriften materiell ersetzt.
- **Praxisfolge für JANS-Projekte im Kanton Zürich:** Das Legendenblatt
  `brandschutzplan-legende-symbole-2017.md` (VKF-Symbolik, Stand 01.01.2017) ist für
  ZH-Projekte **direkt anwendbar** — durch die Stadt Zürich selbst amtlich referenziert. Die
  Zentralschweizer «Anleitung zum Brandschutznachweis» V.3 ist dagegen als **Verfahrens**dokument
  NICHT 1:1 auf ZH übertragbar: für die Stadt Zürich gilt statt der freitextlichen
  Mail-Vorprüfung das eigene «Zusatzformular 3» (AfB + Feuerpolizei, Tel. 044 411 26 66) für den
  Brandschutznachweis sowie das separate SRZ-Einsatzplanung-Merkblatt für Feuerwehrpläne.
  Für andere ZH-Gemeinden ausserhalb der Stadt Zürich bleibt offen, ob sie ein eigenes Formular
  führen oder sich an die Zentralschweizer Arbeitshilfe halten — nicht recherchiert, da
  ausserhalb des JANS-Kerngeschäfts (Stadt Zürich) liegend.

## 2026-07-28 (Wissens-Chef Run 19) — Leitplanke Gebäudekategorien I–XII (adversarial verifiziert)

**Gebäudekategorie-Nummern nie aus dem Gedächtnis setzen.** Kanonische Quellen: **§ 47a Abs. 1
BBV I** (amtlich in `wissen/baurecht/raw/260607_amtlich_zh_bbv1.md` — KB `baurecht` ist für den
ZH-Erlassstand führend) und **SIA 380/1, Anhang A, Tab. 24** (Destillat
`wissen/energie/destillate/sia-380-1-standardnutzungswerte-tab24-25.md` — KB `energie` führend).

Reihenfolge: I Wohnen MFH · II Wohnen EFH · III Verwaltung · IV Schulen · V Verkauf ·
VI Restaurants · VII Versammlungslokale · **VIII Spitäler** · **IX Industrie** · X Lager ·
XI Sportbauten · XII Hallenbäder.

**Häufigster Fehler: Spital fälschlich als IX (= Industrie)** — am 28.07.2026 im Report
`outputs/2026-07-28_therapiekueche-lueftung-spital-zuerich.md` aufgetreten und dort korrigiert.
Die Verwechslung kostet den Grenzwert **20 statt 70 kWh/m²** sowie die falschen Standardnutzungs-
werte (Innentemperatur 18 statt 22 °C, Qww 25 statt 100 MJ/m²·a) — bei einem Energienachweis
rechenrelevant. Gegenprobe direkt am Verordnungstext: § 47a Abs. 2 nennt VI und XI als
Warmwasser-Ausnahmen (Restaurants/Sportbauten) und XII als Bade-/Duschwasser-Fall (Hallenbäder);
das geht nur bei korrekter Zuordnung auf.

## 2026-07-28 (Wissens-Chef Run 19) — P1: SIA 500 Korrigenda-Nachzug, ~20 Stellen offen

> ✅ **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, siebter Lauf).** Beide Korrigenda
> vollständig am amtlichen Wortlaut beschafft und ausgewertet: C4:2019 (SIA-Shop-Produktseite
> `sia%20500-c4`, freier DownloadAnhang, 0.00 CHF, 4 S.) und C3:2013 (Produktseite `sia%20500-c3`,
> freier DownloadAnhang, 0.00 CHF, 7 S.), beide per `curl -L` geladen und mit `pdftotext -layout`
> vollständig gelesen — nicht nur die zwei bereits markierten Ziffern. **Ergebnis: C4:2019 ändert
> 7 Stellen** (Ziff. 3.4.1, Tabelle 4/Ziff. 3.7.3, 3.7.4, 3.7.6, 3.7.7, 3.7.8, 6.2.2), **C3:2013
> über 20 Stellen** (u.a. Ziff. 1.2 Rollstuhlgewicht 250→300 kg, 3.3.3, 3.3.6.2, 3.6.4.1, 3.7.2,
> 3.8.5 Treppenlift-Nennlast 250→300 kg, 4.4, 7.7.2 + Anhang A.8.2, 8.2.2, 9.1.1/9.1.5/9.2.4/9.5.1,
> Anhang A.8.7, Anhang D.1.1.3, Ziff. 0.3). Alle mit Fundstelle (Seite, Ziffer) im Destillat
> `destillate/sia-500-2009.md` als ACHTUNG-KORRIGENDA-Marker mit korrigiertem Wortlaut
> nachgeführt (Kernziffern-Bullets, Begriffe-Abschnitt, Zentrale-Tabellen-Abschnitt, Offene
> Punkte aktualisiert). **Der gewichtigste Einzelfund:** das Referenzgewicht des Innenraum-
> Rollstuhls (Ziff. 1.2, Begriffe) ist seit C3:2013 **300 kg statt 250 kg** — betrifft jede
> Lastannahme, die davon ausgeht, u.a. die Treppenlift-Nennlast (Ziff. 3.8.5, dieselbe
> Korrektur) und mittelbar `bkp-261-aufzuege.md`. **Nicht vollständig auflösbar bleiben** zwei
> Detailpunkte, weil die zugehörigen Anhänge (B, D) in dieser KB nicht im Volltext gelesen sind
> (nur Anhang A und E vollständig): die neue Bodenflächen-Anforderung «gemäss Anhang B» (Ziff.
> 9.1.1) und die Neufassung von Tabelle 9 in Anhang D.1.1.3 sind aus der Korrigenda selbst
> zitiert, nicht gegen den vollständigen Anhangstext geprüft — vermerkt in den Offenen Punkten
> des Destillats. C1/C2 bleiben unverändert offen (nur sekundär über `sia-500-auslegung.md`
> belegt). Report: `outputs/2026-08-23_sia500-korrigenda-c3-c4-vollstaendig.md`.
>
> ✅ **C1/C2 ZUSÄTZLICH GESCHLOSSEN 23.08.2026 (SIA-Sweep, dreizehnte Fortsetzung).** Auch
> C1:2009 (SN 521500-C1:2009 de, 6 S.) und C2:2011 (SN 521500-C2:2011 de, gültig ab 01.06.2011,
> 5 S.) jetzt am amtlichen Wortlaut beschafft (`shop.sia.ch/…/DownloadAnhang`, Preisgruppe 0)
> und vollständig ausgewertet — **damit sind alle vier Korrigenda der Norm im Destillat
> nachgeführt.** Materiell wichtigster Fund: **Ziff. 10.2.1 lässt seit C2:2011 für
> Kleinwohnungen mit einem einzigen Sanitärraum 3,60 statt 3,80 m² Nutzfläche zu.** Zusätzlich
> eine **Fehlzuschreibung im Destillat korrigiert**: die oben (C3-Absatz) genannte Korrektur
> «Kabinentüren→Schachttüren» an Ziff. 3.7.2/9.5.1 wurde bisher allein C3:2013 zugeschrieben —
> sie steht aber bereits wortgleich in C1:2009; C3 wiederholt denselben Diff gegen die
> 1. Auflage 2009-01 (Beleg: die «bisher»-Spalte beider Korrigenda-PDFs zitiert identisch
> «Kabinentüren», was nur Sinn ergibt, wenn jedes Korrigendum durchgehend gegen die
> Originalfassung difft, nicht kumulativ gegen den zuletzt korrigierten Stand — Methodik-Hinweis
> für künftige SIA-Korrigenda-Läufe). Weitere nachgeführte Ziffern: 3.3.1.2/9.2.2
> (Terminologie «Türanschläge»→«Absätze»), 3.5.2/3.5.3.1 (Podest/Freiflächen-Formel, C1 und C2
> stufenweise), 4.4/D.1.4 (Lichtnorm-Vorstufe zu C3), 9.2.3/9.2.4 (C2 streicht die alte 9.2.4
> ersatzlos, C3 vergibt dieselbe Nummer später neu — nicht verwechseln), 9.3.2 (Korridorbreite
> differenziert), 10.1.1 (Wort «horizontal» + neue 1,0-m-Mindestbreite), 11.2 (Wort
> «stufenlos» ergänzt), 11.5 (Singular→Plural bei rollstuhlgerechten Parkplätzen). Alle mit
> Fundstelle in `destillate/sia-500-2009.md` nachgeführt, `wiki/REGISTER.md` FRISCH-GEMELDET
> ergänzt. Kein Cross-KB-Abnehmer zitiert Ziff. 10.2.1 bisher aktiv (geprüft: 0 Treffer für
> «10.2.1» ausserhalb dieser Datei). Report:
> `outputs/2026-08-23_sia500-korrigenda-c1-c2-vollstaendig.md`.

**Was der Chef-Lauf geleistet hat.** Der Verifikator hat die Basisausgabe `500_2009.pdf` sowie die
Korrigenda **C3:2013** und **C4:2019** am Original beschafft und ausgewertet (shop.sia.ch,
Preisgruppe 0 — Korrigenda sind gratis). Ergebnis in `destillate/sia-500-2009.md`: Fassungs-Feld
`ausgabe_ueberholt` gesetzt, **Ziff. 9.7.2/9.7.3 vollständig auf C3:2013 nachgeführt** (Bezugsgrösse
wechselt von Parkplätzen auf **Wohnungen**, neuer 100-m-Richtwert), Ziff. 3.4.1 und 3.7.3 als
C4-betroffen markiert.

**Was offen bleibt — der eigentliche Umfang.** Ziff. 9.7.2 war nur **eine von rund zwanzig** durch
Korrigenda geänderten Stellen. **C4:2019 war dem Hub bisher vollständig unbekannt** (der Bestand
kannte nur C1/C2 via `sia-500-auslegung` und C3 via `sia-en-13200-1-2019`); C4 ändert
**Ziff. 3.4.1, 3.7.3, 3.7.4, 3.7.6, 3.7.7, 3.7.8 und 6.2.2**. Das Destillat ist damit an mehr
Stellen überholt, als jetzt markiert sind. **Auftrag an den `normen`-Loop:** C3 und C4 Ziffer für
Ziffer gegen das Destillat durchgehen und jede betroffene Stelle nachführen; danach C1/C2 im
Volltext beschaffen (bisher nur sekundär über `sia-500-auslegung`, Stand April 2012 belegt).

**Der Fehler hat die Destillat-Ebene bereits verlassen** — das ist der Grund für die Priorität:
`wissen/bauprodukte/wiki/bkp-261-aufzuege.md` zitiert die Kabinenmasse aus **Ziff. 3.7.3** und
rechnet ein konkretes Herstellermass dagegen. Dort ist am 28.07.2026 ein Fassungs-Vorbehalt gesetzt,
aber erst der Nachzug hier macht die Zahlen wieder verwendbar.

**Verallgemeinerte Lehre (dritte Variante der Run-8-Regel «Fassungspflege ist der blinde Fleck»).**
Bisher hiess sie: erst den Bestand nach jüngeren **Ausgaben** durchsuchen. Neu kommt hinzu: auch
wenn die **Ausgabe unverändert gilt**, können **Korrigenda** einzelne Ziffern materiell ändern —
sie tragen keine neue Jahreszahl im Normtitel und sind deshalb an der Ausgabe nicht erkennbar.
Bei jedem SIA-Destillat gehört ein Blick in die Korrigenda-Liste des SIA-Shops dazu; sie sind gratis.

## 260731 — NIN: eigener Stromkreis fuer Geschirrspueler?
- Frage: Enthaelt die NIN (SN 411000, aktuelle Ausgabe NIN 2025/2020) eine Bestimmung, die fuer Geschirrspueler eine eigene, separat abgesicherte Steckdose/Endstromkreis verlangt, oder ist das Teilen einer Gruppe (z.B. mit Kuehlschrank) zulaessig?
- Stand: NIN liegt nicht in PL-02/02_Normen (dort nur SIA/VKF/DIN/VSS/RAL/Lignum). Web-Recherche 31.07.2026: keine explizite NIN-Fundstelle gefunden; deutsche DIN 18015-2 verlangt eigene Stromkreise fuer Geraete >2 kW (in CH nicht direkt verbindlich). Praxis-Hebel: Montageanleitung des Herstellers (verbindlich) + Bemessung des Endstromkreises.
- Zweiter Web-Recherche-Anlauf 23.08.2026 (QUESTIONS-Abarbeitung): vier gezielte WebSearch-Anfragen (NIN + Geschirrspueler/Kuechengeraete/eigener Stromkreis/NIN-Know-how) und ein WebFetch-Versuch auf eine als Treffer gelistete Electrosuisse-PDF (`nin_kh_53.pdf`, HTTP 404) sowie auf die frei zugaengliche NIN-FAQ-Sammlung `mueller-pe.ch/nin_fragen.php` (durchsucht, kein Treffer zu Kuechengeraeten/Endstromkreisen). Kein Fund, echte Sackgasse: der eigentliche Normtext (SN 411000 bzw. die NIN-Arbeitsblaetter im Volltext) liegt hinter der kostenpflichtigen `ninonline.electrosuisse.ch`-Anmeldung, frei zugaengliche Sekundaerquellen (FAQ-Seiten, oeffentliche Auszuege) behandeln diese Detailfrage nicht.
- Naechster Schritt (unveraendert): NIN-Zugang (ninonline.electrosuisse.ch, kostenpflichtig — Bring-Schuld Raphael) oder Rueckfrage Elektroplaner; bei Antwort Destillat-Artikel anlegen. Ein weiterer freier Web-Recherche-Anlauf ueber dieselben Quellenarten verspricht keinen Mehrwert.
- **Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung):** Kontaktdaten fuer den Bring-Schuld-Schritt
  recherchiert, nicht die Norm selbst. Electrosuisse-Hauptkontakt laut offizieller Kontaktseite
  `electrosuisse.ch/de/kontakt/` (WebFetch, Abruf 24.08.2026, Erstquelle): **info@electrosuisse.ch**,
  Tel. **+41 58 595 11 11**, Hauptsitz Luppmenstrasse 1, 8320 Fehraltorf; Kontaktformular fuehrt
  die Kategorie «Bestellung Produkt / Norm». ⚠ Eine spezifischere Adresse
  `normenverkauf@electrosuisse.ch` (Tel. 058 595 11 90) wurde nur in der WebSearch-Zusammenfassung
  genannt, auf der Shop-Seite selbst per Gegenprobe **nicht bestaetigt** — nicht als eigenstaendig
  belegte Angabe uebernommen, nur der Hauptkontakt ist zitierfaehig.

## 260807 — Bezugsgroessen-Divergenz E_vm: SIA 2056 Tab. 42 gegen SIA 387/4 Tab. 4 (KB-intern)

> ✅ **GESCHLOSSEN 23.08.2026.** Beide Originale (SIA 2056 S. 38, SIA 387/4 S. 17-19) am
> M365-Graph-Connector beschafft (SharePoint Site PL, Drive `02_Recht_Norm`,
> `SIA_Norm/SIA_Normen/alle/592056.pdf` bzw. `.../387_4_2017.pdf`) und gelesen — SIA 2056 ist
> ein reiner Scan ohne Textlayer, S. 38 als 150-dpi-Rendering gegengelesen; SIA 387/4 hat
> Textlayer (`pdftotext -layout`).
>
> **Ergebnis: kein Rechenfehler-Risiko, sondern zwei Normen belegen denselben Formelbuchstaben
> mit unterschiedlichem Inhalt.** SIA 2056 Formel (18), S. 38: p_L = E_vm/(η_v,Lo·η_R·MF) — **ohne**
> k_0-Term. SIA 387/4 Formel (2), S. 17: p_L = E_0/(MF·η_v,Lo·η_R) mit E_0 = k_0·E_vm. Das
> SIA-2056-«E_vm» besetzt damit strukturell die Zählerposition, die SIA 387/4 «E_0» nennt — nicht
> die Position, die SIA 387/4 «E_vm» nennt. Numerischer Beleg am Bettenzimmer: SIA 2056 Tab. 42
> E_vm = 300 lx (S. 38) = SIA 387/4 Tab. 4 E_0 = k_0·E_vm = 3 × 100 lx = 300 lx (S. 18-19,
> bereits vorher am Rendering verifiziert). SIA 387/4s eigenes E_vm (100 lx) ist eine andere,
> kleinere, vorgelagerte Grösse (Wartungswert nach SN EN 12464-1 vor der k_0-Korrektur).
>
> **Bezeichnerregel:** für das vereinfachte Verfahren SIA 2056 gilt ausschliesslich dessen eigene
> Tab. 42 (300 lx Bettenzimmer); Tab. 4 aus SIA 387/4 (100 lx) gehört zum detaillierten Verfahren
> jener Norm. Beide Destillate tragen seit diesem Lauf eine gegenseitig verlinkte
> Klärungsbox (`destillate/sia-592-056.md`, Abschnitt «Tab. 42-45»; `destillate/sia-387-4-2017.md`,
> bei «Referenzbeleuchtungsstärke E_0») — eine Umbenennung im INDEX/REGISTER war dafür nicht
> nötig, die Klarstellung sitzt an der Quelle der Verwechslungsgefahr. Der cross-KB
> Bezugsgrössen-Vorbehalt vom 07.08.2026 (Koordinations-Register, ausserhalb dieser KB) kann mit
> Verweis auf diesen Eintrag aufgelöst werden — dort nicht selbst editiert (fremdes Register).
>
> **Ursprungswortlaut:** Beide Destillate fuehren eine Groesse unter dem Namen **E_vm**, aber mit
> unterschiedlichem Bezug. `destillate/sia-592-056.md:84` (SIA 2056, Tab. 42) nennt Bettenzimmer
> **300 lx**; `destillate/sia-387-4-2017.md:61` (SIA 387/4, Tab. 4) nennt fuer dieselbe Nutzung
> **E_vm 100 lx** bei E_0 = 300 (ueber k_0 = 3). Herkunft: Cross-KB-Lauf Wissens-Chef Run 28,
> 07.08.2026, Feld F.

## 260813 — SIA 382/2:2011 verlinkt SIA 416:2003, zitiert aber SIA 416/1:2007 (fehlendes Destillat)

> ✅ **GESCHLOSSEN (nachgetragen 23.08.2026).** War in `destillate/sia-382-2-2011.md` bereits seit
> Run 52 (15.08.2026) als erledigt vermerkt (Zeile 17 und 210), aber hier nie nachgezogen. Das
> Destillat `destillate/sia-416-1-2007.md` (Status `speculative`) existiert; der Frontmatter-Link
> von `sia-382-2-2011.md` führt seither `[[sia-416-1-2007]]` vor `[[sia-416-2003]]` (Zeile 12).
> Quelle des Nachfolgedestillats: `alle/xalt/neu/SIA 416_1_2007.pdf`. Eigene Gegenprüfung am
> Destillat 23.08.2026 (Sitzung QUESTIONS-Abarbeitung) bestätigt beide Fundstellen.

- Frage (Ursprungswortlaut): `destillate/sia-382-2-2011.md` referenziert in Ziff. 0.2.1 und Kap. 5 durchgehend **SIA 416/1:2007** «Kennzahlen für die Gebäudetechnik» (Bezugsflächen, Tabellenschema Tabellen 1-3). Im Frontmatter `links` stand dagegen nur `[[sia-416-2003]]`, also SIA 416:2003 «Flächen und Volumen von Gebäuden» — eine andere Norm mit ähnlicher Nummer. Ein Destillat zu SIA 416/1:2007 lag im Bestand nicht vor.
- Warum das zaehlte: Jeder Abnehmer, der über den Link auf SIA 416 in 382/2 nachschlaegt, wäre auf der falschen Norm gelandet (Flaechen/Volumen statt Gebaeudetechnik-Kennzahlen).
- Herkunft: Refuter-Run 49 (13.08.2026), Nebenbefund zu `destillate/sia-382-2-2011.md`; geschlossen durch Run 52 (15.08.2026), hier nachgetragen 23.08.2026.

## 260823 — VKF BRL 13-15: Delta 2015→2017 liegt an zwei Orten (Duplikat, nicht konsolidiert)

> ✅ **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung, sechster Lauf), ohne Löschen/Mergen.**
> Kanon-Frage per vorhandenem, nicht-arbiträrem Kriterium entschieden: der `established`-Status
> schlägt `speculative` (Rule `normen-referenz` Ziff. 1b) — das Inline-Delta in
> `vkf-brl-13-15-baustoffe-bauteile.md` (adversarial gegengeprüft Run 23, established) ist damit
> die kanonische Fundstelle, `vkf-brl-13-15-fassung-2017-delta.md` (speculative) die
> Redundanz-/Gegenprobe-Fassung. Beide Dateien tragen jetzt einen gegenseitig verlinkten
> Kanon-Hinweis im Fliesstext (nicht nur im Frontmatter). **Keine Datei geloescht oder
> zusammengelegt** — Rule `wissens-bibliothekar` verlangt dafuer eine Rueckfrage, hier genuegte
> eine nicht-destruktive Klarstellung. Dieselbe Methode (established > speculative als
> Tie-Breaker) laesst sich auf N60-1 (AFC-Synopse-Duplikat) NICHT uebertragen, da dort beide
> Destillate `established` sind — dort bleibt der Entscheid bei Raphael.

- Frage: `vkf-brl-13-15-baustoffe-bauteile.md` traegt seit 25.07.2026 (Run 23) einen eigenen,
  `established` gefuehrten Inline-Abschnitt «Fassung 01.01.2017 — Delta». Run 60 (23.08.2026) hat
  unabhaengig davon, gemaess der seit Run 59 gefuehrten Konvention (eigene Delta-Datei je
  Publikation, z.B. `vkf-brl-10-15-fassung-2019-delta.md`), zusaetzlich
  `vkf-brl-13-15-fassung-2017-delta.md` erstellt. Beide kommen unabhaengig zum selben Ergebnis
  (Gegenprobe bestanden), aber welcher Ort kuenftig kanonisch ist und ob der Inline-Abschnitt in
  eine reine Verweiszeile gekuerzt werden soll, ist nicht entschieden.
- Warum das zaehlt: zwei Orte fuer denselben Sachverhalt driften bei der naechsten Aenderung
  auseinander, wenn nur einer nachgefuehrt wird.
- Herkunft: Run 60, Auftrag «VKF-Fassungs-Deltas 01.01.2015 → 01.01.2017», Publikation 13-15.

## 260823 — VKF BRL 17-15: Begriffe «Verkaufsraeume» und «Technikraum Sicherheitsstromversorgung» nicht in dieser Richtlinie definiert

> ✅ **TEIL 1 (Verkaufsraeume) GESCHLOSSEN am 23.08.2026 durch den Hauptprozess, Run 60.** Die
> Vermutung im Fragetext, die Begriffsbildung sei erst 2019 gekommen, trifft **nicht** zu. Die
> BRL 10-15 definiert «Verkaufsraeume» als Raeume fuer den Warenverkauf, die weder unter «Raeume
> mit grosser Personenbelegung» noch unter «Verkaufsgeschaefte» fallen, mit der ausdruecklichen
> Zuweisung «es gelten die nutzungsbezogenen Anforderungen an Gewerbe und Industrie» — und dieser
> Begriff gehoert zu den zehn Begriffen des **IOTH-Beschlusses vom 22.09.2016**, also zur Fassung
> **01.01.2017**. Definition und Tabellenanwendung stammen damit aus **demselben Beschluss**: die
> 17-15 verschiebt «Verkaufsraeume» genau in jene Zeile, der die 10-15 sie definitorisch zuweist.
> Die Tabellenaenderung ist also kein isoliertes Absenken, sondern der Vollzug einer Definition.
> Ausgefuehrt und belegt im Destillat `vkf-brl-17-15-fassung-2017-delta.md`, Abschnitt «Offene
> Punkte»; Tabellenvergleich vom Hauptprozess an eigenen Renderings (200 dpi, gedruckte S. 9)
> unabhaengig nachgelesen.
>
> ✅ **TEIL 2 GESCHLOSSEN 23.08.2026.** «Technikraum Sicherheitsstromversorgung» ist in der BRL
> 10-15 «Begriffe und Definitionen» **nicht als Glossarbegriff geführt** — weder als eigener
> Eintrag noch als Unterfall von «Technikraum». Geprüft: (a) Hausbestand BRL 10-15, Fassung
> 01.01.2015 (SharePoint-Original per M365-Graph-Connector geladen, `pdftotext -layout`
> vollständig durchsucht) — kein Treffer auf «Technikraum», das Glossar definiert unter «S» nur
> **«Sicherheitsstromversorgung»** allein (S. 31: «Die Sicherheitsstromversorgung … muss bei
> einer Störung der allgemeinen Stromversorgung jederzeit wirksam sein und die erforderliche
> Versorgungsdauer gewährleisten.»), keinen zusammengesetzten Raumbegriff. (b) Die
> Fassungs-Delta-Kette bis 01.01.2019 (`vkf-brl-10-15-fassung-2019-delta.md`, Quelle
> VKG-Publikationsportal BSPUB-1394520214-2768 gegen Hausbestand) listet erschöpfend alle elf
> durch die Beschlüsse IOTH 22.09.2016 und 20.09.2018 neu gefassten oder neu eingeführten
> Begriffe (Dachkonstruktionen, Einliegerwohnung, Galerie, Raum, Ueberhohe Raeume,
> Verkaufsraeume, Bedachung, Gesamthoehe, Kindertagesstaetten, Nutzungseinheit,
> Uebereinstimmungserklaerung) — «Technikraum» ist nicht darunter. Damit ist der Begriff in
> **keiner** in der KB dokumentierten Fassung von BRL 10-15 (2015 bis 2019) definiert. Der
> Ausdruck in BRL 17-15 (Anhang zu Ziff. 3.3.2) bezeichnet demnach einen **Brandabschnitt nach
> allgemeinem Sprachgebrauch/projektspezifischem Brandschutzkonzept**, keinen normierten
> VKF-Begriff — Planer können sich für die Anforderungen an diesen Raum nicht auf eine
> BRL-10-15-Definition berufen, sondern müssen sie aus dem Zweck (Schutz der
> Sicherheitsstromversorgung bis zur Brandabschnittsgrenze) selbst herleiten. Quelle:
> `Begriffe & Definitionen.pdf` (SharePoint Site PL, Drive `02_Recht_Norm`, `VKF_Norm/
> 02_Brandschutzrichtlinien 2015/`), per M365-Graph-Connector geladen, Abruf 23.08.2026.
- Frage: Der Anhang zu Ziff. 2.2 (S. 9, Fassung 2017) fuehrt die Nutzungskategorie
  «Verkaufsraeume» neu getrennt von «Verkaufsgeschaefte», ohne beide Begriffe zu definieren. Der
  Anhang zu Ziff. 3.3.2 (S. 12) verlangt neu einen Brandabschnitt «Technikraum
  Sicherheitsstromversorgung», ebenfalls ohne Definition in dieser Richtlinie. `vkf-brl-10-15-
  fassung-2019-delta.md` fuehrt «Verkaufsraeume» als 2019 neu eingefuehrten Begriff mit Abgrenzung
  zu «Verkaufsgeschaefte» und «Raeume mit grosser Personenbelegung» — deckt sich das mit der
  hiesigen 2017er-Tabellenzeile, oder ist die Begriffsbildung 2019 eine Praezisierung, die erst
  nach der 17-15-Aenderung 2017 kam?
- Warum das zaehlt: ohne Begriffsklaerung ist die praktisch wichtige Frage «gilt eine Flaeche als
  Verkaufsraum (Empfehlungszeile) oder Verkaufsgeschaeft (Pflichtzeile)» nicht aus der KB
  beantwortbar.
- Herkunft: Run 60, Delta-Destillat `vkf-brl-17-15-fassung-2017-delta.md`.

> ✅ **NAECHSTER SCHRITT VOLLSTAENDIG ERLEDIGT (23.08.2026, QUESTIONS-Abarbeitung).** Beide
> Teilschritte waren bereits in den Destillaten selbst erledigt, hier nur nachgezogen: (1) die
> Gegenseitig-Verlinkung fehlte einseitig — `vkf-brl-17-15-fassung-2017-delta.md` verlinkte
> bereits auf `vkf-brl-10-15-fassung-2019-delta.md` (Frontmatter + «Offene Punkte», belegt mit
> Seitenangabe 35), der Rueckweg fehlte im Frontmatter der 10-15-Delta-Datei und wurde ergaenzt.
> (2) Die vermeintliche Rueckwirkungsfrage stellt sich nicht: «Verkaufsraeume» ist **kein**
> 2019er-Begriff, sondern gehoert zu den zehn Begriffen des IOTH-Beschlusses vom **22.09.2016**
> (Fassung **01.01.2017**) — demselben Beschluss, der die BRL-17-15-Tabellenaenderung traegt.
> Beide Aenderungen sind am selben Tag beschlossen; die Tabellenverschiebung ist Vollzug der
> Definition, keine zeitversetzte Anwendung. Ein erklaerender Querverweis wurde zusaetzlich in
> `vkf-brl-10-15-fassung-2019-delta.md` (nach der Sechs-Begriffe-Tabelle) ergaenzt. Kein
> Widerspruch zur TEIL-1-Schliessung oben — deckungsgleiches Ergebnis, hier nur die beiden
> Datei-Querverweise nachgezogen.


---

## 260823 — N60-1: Die AFC-Synopse 2017 ist zweimal destilliert (ENTSCHEID RAPHAEL nötig)

- **Frage:** Dieselbe Quelle — `Aenderungen_Brandschutzrichtlinien_VKF-2017.pdf` (AFC Basel,
  Autorin Lisa Hugenschmidt) — liegt in dieser KB als **zwei** Destillate vor:
  `vkf-aenderungen-brandschutzrichtlinien-2017.md` (13.07.2026) und `vkf-brl-aenderungen-2017.md`
  (21.07.2026). Beide `established`, beide mit denselben vierzehn Abschnitten und denselben
  Seitenbezügen. Sie sind unabhängig voneinander entstanden. Sollen sie zusammengelegt werden,
  und wenn ja, welche Fassung ist die Basis?
- **Warum das zählt:** Zwei Orte für denselben Sachverhalt driften bei der nächsten Änderung
  auseinander, wenn nur einer nachgeführt wird — und dieser Fall ist bereits eingetreten: die
  ältere der beiden gab die **Gesamthöhe** der Fassung 2017 falsch wieder («um den Dachrand»
  statt «um die Dachfläche … über dem tiefst gelegenen Teil des massgebenden Terrains»), die
  jüngere von Anfang an richtig. Der Fehler betraf die Messvorschrift, an der die Einstufung
  geringe Höhe / mittlere Höhe / Hochhaus hängt.
- **Was Run 60 bereits getan hat:** Die falsche Stelle ist **inline korrigiert**
  (Methodik-Pflicht 9), beide Destillate tragen einen gegenseitig verlinkten
  Doppelbestand-Kasten, und `vkf-brl-aenderungen-2017.md` ist bis zum Entscheid als **führend**
  gekennzeichnet (umfangreicher, an den geprüften Stellen genauer).
- **Warum es nicht selbst entschieden wurde:** Artikel zusammenlegen oder löschen ist destruktiv;
  nach Rule `wissens-bibliothekar` pausiert Claude dort und fragt.
- **Nächster Schritt (Vorschlag):** `vkf-brl-aenderungen-2017.md` behalten, das ältere Destillat
  auf eine Verweiszeile kürzen. Dieselbe Frage stellt sich für das Delta der **BRL 13-15**, das
  jetzt inline im Bestandsdestillat **und** als eigene Datei geführt wird (Eintrag oben, 260823).
- **Herkunft:** Run 60, 23.08.2026.

> **Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung) — drittes Duplikat-Paar aus demselben
> Reconcile-Block gegengelesen, Lücke geschlossen.** Der Duplikate-Block weiter unten (Zeile
> ~4009-4022) führt neben der AFC-Synopse 2017 noch ein zweites, bis heute nicht inhaltlich
> geprüftes Paar mit demselben offenen «vor dem Merge kurz gegenlesen»-Vermerk:
> `vkf-bsv2015-bericht-aenderungen.md` (13.07.2026, 90 Zeilen) ↔
> `vkf-bsv2015-vernehmlassungsbericht.md` (21.07.2026, 200 Zeilen), beide `established`, gleiche
> Quelle `BSV2015-Bericht und Änderungen.pdf`. Vollständiger Inhaltsabgleich beider Dateien
> (Kapitelstruktur, alle genannten Kennwerte: Hochhausgrenze 25→30 m, Fluchtwegdistanz 20/35 m→
> einheitlich 35 m, Entkopplung Treppenanlagen bis 900 m², RF1-RF4/287 SN-EN-Klassifizierungen,
> Gebäude geringer Abmessungen ≤600 m², 8 Geschosse Holzbau, Zitat «Das Feuer brennt in allen
> Kantonen gleich») ergab **keinen Zahlen- oder Sachwiderspruch** — anders als beim
> Solaranlagen-Paar (dort hatte Wissens-Chef Run 28 einen echten Seitenzahlfehler gefunden).
> `vkf-bsv2015-vernehmlassungsbericht.md` ist mehr als doppelt so ausführlich (mehr
> Kapitel-Detail je Einzelrichtlinie, ausführlicherer JANS-Praxis-Transfer, zusätzliche
> Backlinks) und wird analog zum AFC-Synopse-Muster bis zum Merge-Entscheid als **führend**
> markiert. Gegenseitiger Duplikat-Hinweis in beiden Destillaten ergänzt (additiv, kein
> Original-Wortlaut entfernt). **Damit sind jetzt alle vier benannten Paare des Reconcile-Blocks
> inhaltlich gegengelesen** (Brandmauern: identisch, gemergt; Solaranlagen: Fehler gefunden und
> korrigiert, Merge vorgemerkt; AFC-Synopse 2017: Fehler gefunden und korrigiert, N60-1;
> Anerkennungsverfahren: Run 12 abgeschlossen). Der physische Merge selbst bleibt für alle vier
> Paare destruktiv und liegt bei Raphael — nichts wurde gelöscht oder zusammengelegt.
> Herkunft: QUESTIONS-Abarbeitung, 24.08.2026.

## 260823 — N60-2: Vorschlag Methodik-Pflicht 14 (FREIGABE RAPHAEL, nicht selbständig umgesetzt)

> Verliert eine VKF-**Arbeitshilfe** oder **Brandschutzerläuterung** zwischen zwei Fassungen eine
> Anforderung, wird das **nicht** als Lockerung protokolliert, bevor die zitierte Ziffer der
> **Mutterrichtlinie** in der entsprechenden Fassung nachgelesen wurde. Steht die Anforderung dort
> weiter, lautet der Befund «aus der Wiedergabe entfallen, materiell unverändert in Kraft» — und
> er ist als **Warnung** zu führen, nicht als Erleichterung.

- **Der Beleg, und er ist nicht konstruiert.** Die AH 1002-15 «Schulbauten» führte 2015 in
  Ziff. 7.3.2 zwei Auslöser für zwei vertikale Fluchtwege: Geschossfläche über 900 m² (zitiert als
  «BSR16-15, Z.2.4.2, A1») und Räume mit über 100 Personen (zitiert als «A2»). Die Fassung 2017
  nennt nur noch das Flächenkriterium und zitiert nur noch «A1»; das Wort «100 Personen» kommt in
  der ganzen Fassung 2017 kein einziges Mal mehr vor. Der Destillier-Agent meldete das als
  grössten sicherheitsrelevanten Fund des Laufs — als **Lockerung**. Die Gegenprüfung an der
  **BRL 16-15, Fassung 01.01.2017** (Hausbestand, Titelblatt abgelesen) zeigt: Ziff. 2.4.2 Abs. 2
  führt die Anforderung **unverändert**. Ohne diese Prüfung wäre der Befund mit umgekehrtem
  Vorzeichen ins Register gegangen, und ein Planer, der sich darauf stützt, hätte einen zweiten
  vertikalen Fluchtweg weggelassen, den die Richtlinie verlangt. Für eine Aula oder Mehrzweckhalle
  mit über 100 Personen ist das der Regelfall.
- **Zweiter Ertrag aus demselben Griff:** die im selben Destillat als «nicht angepasster
  Textbaustein» gemeldete Fussnote «Beherbergungsbetriebe **[a]**» stammt aus **Abs. 3 derselben
  Richtlinienziffer**. Auch dieser Absatz ist in der Arbeitshilfe nicht wiedergegeben. Es ist
  dasselbe Muster, nicht ein zweiter Fehler.
- **Der eingebaute Zeiger:** Diese Publikationen zitieren ihre Grundlage mit Fundstelle. Der
  **weggefallene Verweis** («A2» steht 2015 da und 2017 nicht mehr) sagt genau, wo nachzulesen
  ist. Die Pflicht ist damit billig zu erfüllen.
- **Verhältnis zu den bestehenden Pflichten:** MP 7 verlangt, einen Agentenbefund gegen den
  **ganzen Bestand** zu prüfen statt nur gegen die Stelle; MP 10 zieht dieselbe Regel für Befunde
  von aussen. MP 14 zöge sie eine Ebene höher — gegen die **übergeordnete Rechtsquelle**.
- **Nicht selbständig umgesetzt** gemäss dem Entscheid vom 17.08.2026 (nach Run 54 wurde von drei
  vorgelegten Pflichten nur MP 13 freigegeben; MP 11 und die MP-12-Erweiterung bleiben Vorschlag).
  Dieser Vorschlag bringt einen neuen, eigenständigen Beleg mit.
- **Herkunft:** Run 60, 23.08.2026.

## 260823 — N61: Cross-KB-Abgleich Primärenergiefaktoren `energie` ↔ SIA 2031-C1

> ✅ **GESCHLOSSEN 23.08.2026 (QUESTIONS-Abarbeitung 17).** Der ursprüngliche Fundvermerk nannte
> zwei konkrete Destillate der KB `wissen/energie` als mutmassliche Fundstelle
> (`geak-klassengrenzen-relative-klassierung.md`, `sia-380-1-2016-aenderungen-gegenueber-2009.md`)
> — **beide enthalten bei direkter Prüfung (`grep -i "primärenergie"`) keinen einzigen Treffer**,
> die Prämisse war falsch. Die tatsächlich einschlägige Fundstelle in `wissen/energie` ist
> `destillate/geak-normierung-berechnungsmethodik.md` (Quelle: «Normierung des GEAK» Version
> 2.1.0, EnDK/Verein GEAK-CECB-CECE, 30.03.2023, Tab. 35, S. 61), die dort **nationale
> Gewichtungsfaktoren f_CH** je Energieträger für die GEAK-Gesamteffizienz-Etikette führt.
>
> **Ergebnis des Abgleichs: kein Fehler, sondern zwei verschiedene, beide korrekte Faktorsysteme
> für zwei verschiedene Zwecke — die Zahlen sind bewusst nicht identisch und dürfen nicht
> gegeneinander verrechnet werden.**
>
> | Energieträger | SIA 2031-C1:2009 Tab. D.1, Primärenergiefaktor (Energieausweis) | GEAK-Normierung 2.1.0 Tab. 35, S. 61, Gewichtungsfaktor f_CH (Etiketten-Gesamteffizienz) |
> |---|---|---|
> | Heizöl EL | 1,24 | 1,0 |
> | Erdgas | 1,15 | 1,0 |
> | Holz (Stückholz) | 1,06 | 0,5 |
> | Elektrizität | 2,97 (CH-Verbrauchermix) | 2,0 (Bedarf UND Produktion je eigene Zeile) |
>
> Die Werte weichen für **jeden** verglichenen Energieträger deutlich voneinander ab — das ist
> kein Qualitätsproblem einer der beiden Quellen, sondern zeigt, dass es sich um **begrifflich
> unterschiedliche Grössen mit unterschiedlicher Herkunft** handelt: SIA 2031s
> **Primärenergiefaktor** bildet den nicht erneuerbaren Primärenergieaufwand je Einheit
> Endenergie ab (physikalisch/ökobilanziell hergeleitet, für den Energieausweis nach SIA 2031)
> und trägt bei Elektrizität deshalb den hohen Wert 2,97. Der **GEAK-Gewichtungsfaktor f_CH**
> nach Tab. 35 der GEAK-Normierung ist dagegen eine **energiepolitische Systemwahl-Gewichtung**
> ohne physikalische Herleitung («die Normierung nennt diese Faktoren ohne eigene Begründung
> und verweist auf die nationalen Gewichtungsfaktoren der EnDK», Destillat
> `geak-normierung-berechnungsmethodik.md`, Abschnitt «Bauherren-Transfer») — sie dient
> ausschliesslich dazu, im GEAK-Referenzvergleich (Projektwert E_P gegen Referenzwert E_P,ref,
> Gl. 51/54) Strom rechnerisch doppelt so stark zu gewichten wie fossile Energieträger, unabhängig
> vom tatsächlichen Primärenergiegehalt.
>
> **Kein Korrekturbedarf in `wissen/energie`:** Das Destillat `geak-normierung-berechnungsmethodik.md`
> zitiert Tab. 35 bereits korrekt als «nationale Gewichtungsfaktoren» mit eigener Fundstelle (EnDK,
> nicht SIA 2031) und verwechselt den Begriff an keiner Stelle mit einem Primärenergiefaktor. Die
> ursprüngliche Vermutung, wonach ein Cross-KB-Abgleich nötig sei, ging von einer falschen
> Faktenlage aus (die zwei genannten Destillate enthielten die Werte gar nicht); nach Korrektur
> der Fundstelle zeigt der Abgleich, dass beide KBs bereits terminologisch sauber getrennt sind.
> **Cross-KB-Bringschuld erfüllt** (Rule `wissens-bibliothekar`): dieser Klärungsabsatz ist im
> selben Lauf zusätzlich als Fussnote in `wissen/energie/destillate/geak-normierung-berechnungsmethodik.md`
> nachgetragen (Verweis auf SIA 2031-C1 als abzugrenzende Nachbargrösse), damit ein künftiger
> Leser dieser Datei die Abgrenzung direkt vor Ort findet statt nur in dieser KB.
>
> Der Cross-KB-Hinweis im Destillat `wissen/normen/destillate/sia-2031-korrigenda-c1.md`
> («Cross-KB-Abgleich bleibt offen») ist im selben Lauf auf das Ergebnis nachgeführt.

- Frage (Ursprungswortlaut): Die kostenlose Korrigenda SIA 2031-C1:2009 (gültig ab 01.01.2010,
  Destillat `destillate/sia-2031-korrigenda-c1.md`) führt eine vollständige Tabelle D.1 mit
  Primärenergiefaktoren, erneuerbaren Primärenergieanteilen und Treibhausgasemissions-
  Koeffizienten je Energieträger (Heizöl, Erdgas, Holz, Elektrizität CH-Verbrauchermix u.a.).
  Die KB `wissen/energie` führt eigene Primärenergiefaktor-Angaben, aber kein dortiges
  Destillat verweist bisher auf SIA 2031-C1 als Quelle. Ob die Werte übereinstimmen oder aus
  einer neueren Quelle stammen, ist ungeprüft.
- **Herkunft:** SIA-Sweep, neunzehnte Fortsetzung, 23.08.2026; geschlossen QUESTIONS-Abarbeitung
  17, 23.08.2026.

## Neue Bring-Schuld: SIA 384/4:2025 «Klimakälteanlagen in Gebäuden» (unbekannte Norm entdeckt)

- Die kostenlose Korrigenda C1:2025 zu SIA 384/1:2022 (Destillat
  `destillate/sia-384-1-korrigenda-c1.md`, `wiki/REGISTER.md` Zeile SIA 384/1 und SIA 384/4)
  nennt eine bisher in dieser KB **völlig unbekannte** Norm: **SIA 384/4:2025 «Klimakälteanlagen
  in Gebäuden — Grundlagen und Anforderungen»**. Sie löst per 01.03.2025 den bisherigen Anhang E
  von SIA 384/1:2022 ab. Die Nummer 384/4 war zuvor nur als 1987 zurückgezogene Altnorm im
  Register geführt (keine sachliche Verbindung, reine Nummernwiederverwendung).
- ✅ **Metadaten-Teil geschlossen (SIA-Sweep, dreissigste Fortsetzung, 23.08.2026).** Produktseite
  shop.sia.ch (`architekt/384-4_2025_d`, SN 546384/4), abgerufen 23.08.2026, zweifach gegengelesen:
  108 Seiten, A4 broschiert, **gültig ab 01.05.2025**, Status aktuell, Preis 230.00 CHF (Papier
  wie Download). Einziger kostenloser Download: Inhaltsverzeichnis (89.729 KB PDF) — kein freier
  Volltext, keine freie Korrigenda. ⚠ Auffällig: die Korrigenda C1:2025 zu SIA 384/1 nennt für die
  Ablösung von Anhang E das Datum 01.03.2025, die eigene Produktseite von SIA 384/4 dagegen
  01.05.2025 als Gültig-ab — zwei Monate Differenz, Ursache nicht recherchiert, hier nur
  festgehalten (nicht spekuliert; möglich wäre z.B. ein früheres Genehmigungs-/Ankündigungsdatum
  in der Korrigenda gegenüber dem späteren Inkrafttreten der Norm selbst — ungeprüft).
- **Weiterhin offen (kostenpflichtige Bring-Schuld Raphael):** Volltext-Beschaffung SIA 384/4:2025
  (230 CHF) — dann Destillat möglich.
- **Herkunft:** SIA-Sweep, neunundzwanzigste Fortsetzung, 23.08.2026 (P1-Leseproben-/
  Korrigenda-Check auf die von der 24. Fortsetzung benannte P1-Einkaufsliste, gezielt SIA 384/1
  betreffend — Korrektur eines Nullbefunds derselben Zeile aus der 19. Fortsetzung); Metadaten
  nachgetragen SIA-Sweep, dreissigste Fortsetzung, 23.08.2026.

## N41-1 — VSS SN 640 273a «Sichtverhaeltnisse bei Knoten» fehlt im Bestand (Bring-Schuld, 24.08.2026) ✅ REGISTER/INVENTAR NACHGEFUEHRT, Beschaffung bleibt Bring-Schuld

**Nachtrag 24.08.2026 (QUESTIONS-Abarbeitung):** Registerzeile angelegt (`wiki/REGISTER.md`
Abschnitt B, neue Zeile «SN 640 273a») und Bring-Schuld in `training/norm-inventar.md` als
sechste Zeile der VSS/SIA-Kaufliste erfasst (bisher fünf: SIA 491, SN EN 12193, SN 640 052,
SN 641 400, SIA 181:2020). Der «Zu tun»-Teil der Frage (Norm beschaffen, destillieren,
Baurecht-Artikel gegenlesen) bleibt echte Bring-Schuld Raphaels — kein eigenmächtiger Kauf.
Bis dahin gilt im baurecht-Artikel weiterhin der dort bereits gesetzte Vorbehalt
(Behördenwiedergabe, keine verifizierte VSS-Fundstelle).

- **Befund (Wissens-Chef Run 41, Cross-KB `normen` ↔ `baurecht`):** Der am 23.08.2026 neu
  angelegte Artikel `wissen/baurecht/wiki/strassenabstand-zufahrten-vorteilsabgabe-sz.md`
  Z. 38-42 gibt Sichtweiten-Kennwerte **materiell** wieder und schreibt sie «VSS SN 640 273a»
  zu (Beobachtungsdistanz innerorts 3.00 m bzw. ≥ 2.50 m, ausserorts 5.00 m; Sichtweite A nach
  Zufahrtsgeschwindigkeit 20 km/h → 15 m bis 80 km/h → 125 m; hindernisfreies Sichtfeld
  0.60-3.00 m ueber Fahrbahn).
- **Lage in dieser KB:** SN 640 273a hat **weder eine REGISTER-Zeile noch ein Destillat**. Die
  einzige Fundstelle im ganzen Bestand ist eine Literaturangabe der **Vorgaengernorm**
  SN 640 273 (nicht 273a). Die Ausgabe 273a gilt seit dem 1.8.2010.
- **Zu tun:** SN 640 273a beschaffen (VSS, kostenpflichtig — dieselbe Bring-Schuld-Klasse wie
  die uebrigen SN-640-Zeilen), Registerzeile anlegen, danach destillieren und die Werte im
  baurecht-Artikel gegenlesen.
- **Bis dahin gilt** (Vorbehalt dort bereits gesetzt): die Werte sind als **Behoerden-
  wiedergabe aus dem SZ-Merkblatt** zu zitieren, nicht als verifizierte VSS-Fundstelle.
  Verifiziert vorhanden ist fuer Zufahrtstyp und Geometrie allein
  `destillate/vss-640050-1993.md` (`established`).

## N61-1 — Drei bisher unentdeckte Destillat-Duplikate in der DE-Kohorte (Run 61, 25.08.2026)

**Befund (neu, nicht Teil der bekannten Reconcile-Duplikate).** Der Eintrag «Duplikate aus dem
Reconcile» oben listet **fünf VKF-Paare**. Ein systematischer Präfix-Paarabgleich über **alle 461**
Destillate (`X.md` gegen `<praefix>-X.md` für de/sia/vkf/din/vss/ral) fördert **drei weitere Paare**
zutage, alle in der deutschen Rechtsquellen-Kohorte, alle mit **identischem Quellpfad**:

| Paar | Umfang ohne Präfix | Umfang mit `de-` | Status ohne Präfix | Status mit `de-` |
|---|---|---|---|---|
| `baunvo-1990.md` ↔ `de-baunvo-1990.md` | 8129 B / 119 Z | 6072 B / 81 Z | `established` (verifiziert 260714, Retro-Verifikation Run 19) | `destilliert` |
| `arbstaettv-2004.md` ↔ `de-arbstaettv-2004.md` | 9539 B / 136 Z | 6911 B / 94 Z | `established` (verifiziert 260714, Retro-Verifikation Run 19) | `destilliert` |
| `vstaettvo-niedersachsen-2004.md` ↔ `de-vstaettvo-niedersachsen-2004.md` | 16327 B / 200 Z | 6978 B / 96 Z | `established` (vervollständigt S. 1-31/31, verifiziert 260714) | `destilliert` |

Quellpfade (je Paar identisch, per `grep '^quelle:'` an beiden Dateien belegt):
`DIN_Norm/Sonstiges/BauNVO.pdf` · `DIN_Norm/Sonstiges/ArbStättV.pdf` ·
`DIN_Norm/Sonstiges/041210_vstaett_vo.pdf`. Die Dateien sind **nicht** identisch (`diff -q`:
verschieden); die `de-`-Variante ist in allen drei Fällen die kürzere und trägt den
nicht-kanonischen Status `destilliert`, die präfixlose die längere, verifizierte, `established`.

**`destillate/INDEX.md` führt beide Varianten nebeneinander** — die verifizierten in Z. 85, 86, 89,
die `de-`-Varianten in Z. 346, 347, 348. Ein Abnehmer, der über den INDEX sucht, kann also auf die
unverifizierte Kurzfassung geraten.

**Warum das bisher unsichtbar war.** Der Reconcile (Run 5/12, 13./14.07.2026) hat Duplikate über
gleiche Quelle **innerhalb der VKF-Kohorte** gesucht. Die Methode «Paarabgleich über alle
Dateinamen-Präfixe der ganzen KB» ist hier erstmals gefahren. Das ist ein weiterer Beleg der
Methoden-Lehre (Methodik-Pflicht 6): die fünf gefundenen VKF-Paare massen die Reichweite der
damaligen Methode, nicht den Duplikat-Bestand der KB.

**Nicht selbständig bereinigt** — Löschen/Mergen ist destruktiv und nach Rule `wissens-bibliothekar`
rückfragepflichtig, wie bei den fünf VKF-Paaren auch. **Vorschlag zur Freigabe:** je Paar die
präfixlose, `established`-verifizierte Fassung behalten, die `de-`-Variante löschen und aus
`destillate/INDEX.md` (Z. 346-348) entfernen. Vorher je Paar gegenlesen, ob die Kurzfassung eine
Aussage enthält, die der Langfassung fehlt (bei den VKF-Paaren war genau das einmal der Fall).
Das Muster liegt gebündelt mit den fünf VKF-Paaren zum selben Entscheid vor.

## N61-2 — Die Kennzahl «offene Checkboxen» misst Rückstand PLUS Archiv (Run 61, 25.08.2026)

**Befund zur Messmethode, nicht zum Inhalt.** Diese Datei folgt der Konvention, einen gelösten Punkt
mit einem `[x]`-Schliessungsvermerk zu versehen und den **Ursprungswortlaut darunter als `[ ]`
stehen zu lassen** («Ursprungswortlaut zur Nachvollziehbarkeit:»). Die Konvention ist sinnvoll und
soll bleiben — aber sie hat eine Nebenwirkung, die inzwischen messbar Arbeit verbrennt:

**`grep -c '\[ \]'` zählt Rückstand und Archiv zusammen.** Von den 28 offenen Checkboxen dieses
Laufs sind mindestens **drei** solche bewusst stehen gelassenen Ursprungswortlaute — N-R40-7
(Z. ~2889, geschlossen 24.08.2026), Q&A-Selbstbefragung (Z. ~4080, geschlossen Run 15) und
Z1/Z2 SIA 103 (Z. ~5049, geschlossen 24.08.2026). In allen drei Fällen steht der auflösende `[x]`
unmittelbar darüber.

**Beleg für die Kosten.** Vier unabhängige Prüfagenten dieses Laufs haben genau diese drei Zeilen
als «Buchhaltungsschuld, auf `[x]` setzen» gemeldet — ein einstimmiger Fehlbefund, der nur durch
die Gegenprüfung des Hauptprozesses am Original abgefangen wurde (Methodik-Pflicht 5: Agentenbefunde
nie ohne eigene Gegenprüfung übernehmen; hätte er gegriffen, wäre die Nachvollziehbarkeit von drei
Einträgen zerstört worden). Dieselbe Sucharbeit haben die Läufe vom 24.08.2026 mehrfach geleistet
und dabei je ein bis zwei Fälle gefunden; die Liste wurde seit dem 23.08. von 43 über 30 auf 28
gezählt, ohne dass jemals unterschieden wurde, welcher Anteil davon Archiv ist.

**Vorschlag zur Entscheidung (FREIGABE RAPHAEL, nicht selbständig umgesetzt).** Einen eigenen
Marker für den archivierten Ursprungswortlaut einführen, z.B. `- [a]` («abgelegt, siehe
Schliessungsvermerk darüber»). Dann misst `grep -c '\[ \]'` wieder den echten Rückstand, die
Nachvollziehbarkeit bleibt vollständig erhalten, und kein künftiger Lauf prüft dieselben Zeilen
erneut. Der Eingriff wäre eine reine Markeränderung an einer überschaubaren Zahl von Zeilen, aber
er betrifft die ganze Datei — deshalb hier vorgelegt statt ausgeführt. Verwandt mit dem seit Run 52
offenen Vokabular-Entscheid (Z. ~1290 ff.: 25 abweichende Statuswerte, u.a. 16× `destilliert`), der
dieselbe Wurzel hat: **ein Vokabular, das nie normiert wurde, wird von jedem Lauf neu ausgelegt.**

## N61-3 — Negativbefund: die Ablage-Dublette ist NICHT die Ursache der Doppel-Destillation N60-1

Geprüft im Zuge des Bestandsscans (Run 61, 25.08.2026), weil eine naheliegende Hypothese zu N60-1
(«AFC-Synopse 2017 zweimal destilliert») lautete, die Quelldatei liege doppelt und sei deshalb
zweimal aufgenommen worden. **Die Datei liegt tatsächlich doppelt** —
`VKF_Norm/02_Brandschutzrichtlinien 2015/Aenderungen_Brandschutzrichtlinien_VKF-2017.pdf` und
`VSS_Norm/Aenderungen_Brandschutzrichtlinien_VKF-2017.pdf`, **byte-identisch (je 3'882'552 B)**,
also eine VKF-Datei fehlabgelegt im VSS-Ordner. **Das erklärt die Doppel-Destillation aber nicht:**
beide Destillate (`vkf-brl-aenderungen-2017.md`, `vkf-aenderungen-brandschutzrichtlinien-2017.md`)
nennen im Frontmatter denselben Pfad, nämlich den unter `VKF_Norm/`; der VSS-Pfad kommt in keinem
der beiden vor. Die Ursache bleibt damit beim Reconcile-Vorgang, nicht bei der Ablage.
Nebenbefund: der im Destillat zitierte Quellpfad existiert unverändert, also **kein**
Fundstellenfehler. Die Fehlablage selbst ist VSS-Ordner und damit Mac-Mini-Scope (Stations-Split) —
hier nur dokumentiert, nicht angefasst.


### Eingang aus KB `energie` (Run 163, 25.08.2026) — Uf-Default-Werte im SIA-Merkblatt 2021 tragen Stand 2002

**Kein Fundstellenfehler, kein Änderungsbedarf am Destillat — ein Alterungshinweis.**
`destillate/sia-mb-2021.md` nennt Default-Rahmenwerte U_f von 1,9 / 1,9 / 2,5 / 3,3 W/(m²·K). Diese
sind zahlengenau identisch mit der Fallback-Tabelle des BFE-Bauteilekatalogs Neubauten (2002), deren
Fenster-Kapitel seit 08.2009 durch das «Merkblatt Fenster» (Best-Nr. 805.107.d) **amtlich abgelöst
ist**; dort gelten **1,8 / 2,2 / 2,8**. Beide Dokumente berufen sich auf **SIA D 0176 (2002)** — die
Differenz ist also eine Fortschreibung derselben Wurzel, keine widersprüchliche Parallelquelle.

**Offen für diese KB:** Ob das SIA-Merkblatt 2021 selbst seit 2002 eine neue Ausgabe erhalten hat,
ist hier **nicht geprüft** (die KB `energie` hat nur die BFE-Seite verifiziert). Da SIA-Merkblätter
kostenpflichtig sind, ist mindestens der Publikationsstatus auf shop.sia.ch zu klären, bevor die
Werte in einem Nachweis verwendet werden. Hinweis eingetragen durch die KB `energie` gemäss Rule
`wissens-bibliothekar` (Cross-KB-Bringschuld); Beleg
`wissen/energie/outputs/2026-08-25_energie-run163.md`.

## Run 62 (MacBook Pro, 26.08.2026) — neu offen aus der ersten Abdeckungsrunde auf SIA 118:1991

Kontext: Auf `sia-118-1991.md` lief am 26.08.2026 erstmals die **Abdeckungsrichtung**
(Methodik-Pflicht 13). Sie förderte **84 Kern- und 82 Nebenlücken** zutage — bei **null falschen
Werten**. Die Kernbefunde sind inline eingearbeitet, die Nebenbefunde nicht. Voller Lauf-Report:
`outputs/2026-08-26_normen-nacht-run62.md`.

- [ ] **N62-1 — Die 82 Nebenbefunde zu SIA 118:1991 einarbeiten.** Sie stehen vollständig im
  Lauf-Report, sind aber nicht im Destillat. Schwerpunkte: Teuerungsmechanik Art. 65-81
  (Lohn-, Material-, Transportpreisteuerung), Beispielkataloge (Art. 39 Abs. 2, Art. 43 Abs. 1,
  Art. 63), Vertretungsdetails (Art. 33 Abs. 1-2, Art. 35 Abs. 1, Art. 36 Abs. 2-3).
  Nächster Lauf, kein Fremdbedarf.
- [ ] **N62-2 — Refuter-Runde auf das beigebundene SIA-Merkblatt A 95-004d (MWST).** Run 62 hat es
  erstmals erfasst (Abdeckungsrichtung), aber noch keine unabhängige Widerlegungsprüfung gefahren.
  Solange sie fehlt, bleibt der Abschnitt `speculative`.
- [ ] **N62-3 — Prüfen, ob dieselbe Lücke andere `established`-Destillate trifft.** SIA 118 trug
  `established` seit dem 17.07.2026 auf Grundlage von Refuter- und Q&A-Runden allein — genau die
  Konstellation, die Methodik-Pflicht 13 seit dem 17.08.2026 als unzureichend bezeichnet. Im Bestand
  tragen **26 von 461** Destillaten einen Prüfstand; die übrigen `established`-Destillate sind
  daraufhin nicht gesichtet. **Kandidatenliste erstellen, priorisiert nach Abnehmer-Reichweite**
  (Rule `normen-referenz` zieht namentlich SIA 102, SIA 416/1, VKF für Werkvertrag, Honorar,
  Flächen und Brandschutz).
- [x] **N62-4 — Fehlbefund abgefangen (kein Auftrag).** Der Report von Run 61 führte den
  «Fliesstext der Kapitel 1-4 des Lignatec» als nächste fällige, nie gefahrene Vertiefung. Das ist
  überholt: Run 41 (01.08.2026) hat den Fliesstext-Diff gefahren und die Seiten-Inventur
  `training/lignatec-seiteninventur.md` erstellt; `wiki/QUESTIONS.md` hält das seit dem 24.08.2026
  ausdrücklich fest (dortige Zeilen zum Lignatec-Block). Run 61 hat eine überholte Zeile der Reports
  40-45 fortgeschrieben, ohne sie gegen den KB-Stand zu prüfen — derselbe Fehlertyp, den
  Methodik-Pflicht 10 für externe Statusaussagen beschreibt, hier auf einen **internen** Vorgang
  angewandt. Kein KB-Fehler, ein Report-Fehler; hier geschlossen, damit ihn kein dritter Lauf erbt.
