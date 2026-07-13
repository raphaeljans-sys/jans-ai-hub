# Training-Run 26 — KB Immobilienbewertung (13.07.2026)

## Kontext

Nach fünf reinen Verifikations-/Bestätigungsläufen in Folge (Run 20-25, jeweils ohne
materiellen Korrekturbefund) hat Run 25 den D6-Rückstand (Dichte-Kennwerte je Gemeinde)
bereits substanziell geschlossen und drei konkrete Restpunkte benannt: Langnau am Albis
(Revision), Luzern (Per-Ordnungsnummer-Werte) und Muri AG (Aktualisierung 2019). Run 26
hat gezielt versucht, diese Restpunkte zu schliessen — mit Erfolg bei zwei von drei.

## Bearbeitete Themen (5, mit echtem Erkenntnisgewinn statt künstlich auf 10 gestreckt)

Leitplanke «nie erfinden» (`training/PROGRAMM.md`): da die KB laut den Runs 18-25 keine
weiteren auto-schliessbaren Ingest- oder Verifikations-Kandidaten mehr hat, wurden für
diesen Lauf gezielt die drei von Run 25 benannten offenen D6-Punkte plus die beiden
Standard-Prüfungen (neuer JANS-Fall, Marktpuls) bearbeitet — bewusst kein künstliches
Auffüllen auf 10 Themen ohne Substanz.

1. **Muri AG — Revision 2018/2019 (D6).** Web-Recherche fand die amtliche BNO-PDF
   (`muri.ch`, `Bau-_und_Nutzungsordnung_190227.pdf`, 16 MB, 51 Seiten). `pdftotext`
   lieferte 0 Zeichen (Scan ohne Textebene, Konica-Minolta-Scan-Metadaten) — der bisher in
   der KB vermerkte Grund für den D6-Vorbehalt. **Neu:** die Seiten wurden mit dem
   multimodalen Read-Tool visuell gelesen (kein OCR-Zusatzwerkzeug nötig). Ergebnis: BNO
   Muri vom 21.06.2018 (Gemeindeversammlung), genehmigt durch RRB Nr. 2019-000184 vom
   27.02.2019 «mit Änderungen/Auflagen». Die § 9-Bauzonentabelle zeigt eine deutliche
   Dichteerhöhung gegenüber dem bisherigen Stand 31.10.2012: W1 0.30→0.35, W2 0.40→0.45,
   W3 0.50→0.60, WG3 0.60→0.70, plus eine **neue Zone W3+ mit AZ 0.8 / 5 Vollgeschossen /
   18 m Gesamthöhe** (2012 endete der Katalog bei WG3). Das System wurde von Gebäudehöhe/
   Firsthöhe auf **Gesamthöhe** (IVHB-Harmonisierung) umgestellt. Kernzone Brühl (KB) wurde
   von der Gemeindeversammlung teilzurückgewiesen und ist **nicht in Kraft** — als Vorbehalt
   vermerkt. → [[az-gfz-kennwerte]] vollständig aktualisiert.
2. **Zollikon — Aktualitätsprüfung (D6).** Der KB-Eintrag zitierte bisher nur den
   Erlass vom 26.06.1996. Recherche auf `zollikon.ch` ergab den offiziell geführten
   **Stand 5. April 2013** (Dokument 700.2, konsolidierter Neudruck vom 19.02.2024, echte
   Textebene, `pdftotext` erfolgreich). Gegenlesung: die Wohnzonen-Tabelle (W 1.25-WG 2.90)
   ist **wertidentisch** mit der bisher erfassten 1996-Fassung — kein stiller
   Rechtsänderungsverlust, nur eine redaktionelle Klarstellung des amtlichen Stands. Neu
   erfasst: die bisher fehlende **Zentrumszone (Art. 11)** — BMZ max. 2.70 (Flachdach)/
   2.80 (Schrägdach), Gebäudehöhe 13.5 m, Grundabstand 6 m. Zusatzbefund: eine vom
   Gemeinderat am 20.08.2025 beschlossene **Teilrevision** ist der Gemeindeversammlung zur
   Beschlussfassung vorgelegt (Infoveranstaltung 05.11.2025) — **noch nicht in Kraft**, als
   Wiedervorlage-Marker gesetzt. → [[az-gfz-kennwerte]] ergänzt.
3. **Langnau am Albis — Statusprüfung (D6).** Web-Check auf `langnauamalbis.ch/bzo`
   bestätigt den bereits erfassten Zeitplan unverändert: kantonale Vorprüfung/öffentliche
   Auflage Frühjahr 2026, Inkraftsetzung Frühjahr 2027; Bauformen sollen neu nach IVHB
   definiert, innere Verdichtung in Einfamilienhausquartieren gefördert werden. Kein neues
   Datum, keine rechtskräftige BZO verfügbar — bleibt offen für Wiedervorlage.
4. **Neuer JANS-Bewertungsfall (Standardprüfung).** Ordner `IMMO - 01 Projekte/01 BEWERTUNG
   PROJEKTE` erneut vollständig gelistet: weiterhin dieselben sieben Fälle wie seit Run 6,
   jüngster Fall bleibt Wangen SZ 8855 Bahnhofstrasse 27 (09.06.2026). Kein neuer Fall.
5. **Marktpuls E7 (Standardprüfung).** Web-Check: SNB-Leitzins weiterhin 0.00 % (Entscheid
   19.06.2026 gehalten), hypothekarischer Referenzzinssatz weiterhin 1.25 % (gültig seit
   02.09.2025, nächste Publikation 01.09.2026). Kein neuer Wert seit Run 17 — siebter
   Web-Check ohne Änderung in Folge.

## Kernbefund / Methoden-Lektion

Der Muri-Fund widerlegt implizit eine bisherige Arbeitsannahme: ein Dokument als «Bild-PDF,
nicht auswertbar» einzustufen war zu früh geschlossen — `pdftotext` scheitert an
Scan-PDFs, aber das **multimodale Read-Tool liest die Seiten visuell** und macht auch reine
Bildscans auswertbar, solange die Auflösung ausreicht. Diese Methode ist für künftige
Scan-PDF-Quellen (weitere Gemeinde-BZO, ältere JANS-Dokumente) direkt wiederverwendbar und
sollte vor einem D-Vorbehalt «nur als Bild-PDF vorhanden» zuerst versucht werden.

## Register-Pflege

- `wiki/az-gfz-kennwerte.md` — Muri-Tabelle ersetzt (neuer Stand 2018/19), Zollikon-Sektion
  ergänzt (Zentrumszone + Aktualitäts-/Revisions-Vermerk), Langnau-Sektion mit Run-26-
  Bestätigung, Frontmatter-Quellen aktualisiert, "Offen"-Sektion neu bilanziert (9/11
  Gemeinden aktuell statt 8/11).
- `wiki/wissensluecken.md` — D6-Zeile aktualisiert («weitgehend geschlossen»), neue
  Run-26-Zeile in Tabelle B.
- `wiki/INDEX.md` — az-gfz-kennwerte-Eintrag nachgeführt.
- `training/curriculum.md` — Stand-Run-26-Absatz mit Methoden-Lektion ergänzt.
- `CHANGELOG.md` — Run-26-Eintrag oben ergänzt.

## Verbleibend offen (D6)

- **Langnau am Albis** — Wiedervorlage erst bei rechtskräftiger BZO 2026/27 möglich.
- **Luzern** — Per-Ordnungsnummer-Werte nur bei Bedarf für einen konkreten Standort (kein
  pauschales Register sinnvoll, da an die Zonenplan-Legende gebunden).
- **Zollikon** — Wiedervorlage, sobald die Teilrevision (Stand 20.08.2025) von der
  Gemeindeversammlung beschlossen und in Kraft ist.

Damit sind die von Run 25 benannten drei Restpunkte auf zwei geschlossene und einen extern
abhängigen (Langnau, Rechtsstand liegt bei der Gemeinde) reduziert. Weiterhin unverändert
gültig: **D5** (Margen-/Finanzierungsannahmen, Bring-Schuld Raphael), **D10**
(Referenzblatt-Bereinigung 2 Healthcare-Zeilen, Bring-Schuld) und **D11** (Index-Fortsetzung
2003→2026, externe Quelle nötig) — keiner davon ist ohne neues Rohmaterial von Raphael bzw.
eine noch nicht identifizierte externe Quelle im Loop selbstständig schliessbar.

## Empfehlung

Der siebte unveränderte Marktpuls-Check und die erneut bestätigte Abwesenheit eines neuen
JANS-Bewertungsfalls untermauern die Einschätzung der Vorläufe: der Grenznutzen des
Intensiv-Takts sinkt für diese KB spezifisch, sobald D6 vollständig abgearbeitet ist. Der
Muri-Fund zeigt aber, dass gezielte Recherche nach den konkret benannten Restpunkten (statt
reiner Wiederholungs-Verifikation) noch echten Fortschritt bringen kann — für den nächsten
Lauf empfiehlt sich dieselbe Strategie: gezielt die verbliebenen offenen Punkte (Zollikon-
Teilrevision, Langnau-Rechtskraft) beobachten, statt weitere bereits bestandene
Verifikationen zu wiederholen. Rücktaktung ins Nachtfenster bleibt aus den Vorläufen
empfohlen, sobald Raphael Zeit für die Entscheidung findet (Rule `auto-verbesserungen`
260712/260712c: VOLLGAS-Endlos gilt unverändert bis 10.08.2026).
