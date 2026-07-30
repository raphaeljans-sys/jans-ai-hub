# Normen-Training Run 38 (MacBook Pro, 30.07.2026) — SIA/VKF

**Kurzfassung:** Der Vorrang-Auftrag Raphaels vom 29.07. ist ausgeführt — die rechnerische
Zellaufnahme lief erstmals auf **Tabelle 3 und Tabelle 4** des Lignatec-Hefts. Sie hat **7
Kernbefunde** erzeugt, darunter einen, der eine ganze Ebene der Quelle sichtbar macht: die drei
Kreuztabellen führen **drei verschiedene Legenden**, und dieselbe Farbe bedeutet in Tab. 3/4 etwas
anderes als in Tab. 5 — das Destillat kannte nur die Tab.-5-Bedeutung. Damit ist die Endbedingung
des Auftrags **nicht** erfüllt: die Quelle ist nicht ausgereizt, und die Umstellung dieses Tasks auf
Ereignis-Trigger wird ausdrücklich nicht vorgeschlagen. Zusätzlich eine achte Runde für
`lignum-4-1` mit neuer Methode (Abdeckung messen statt Behauptungen prüfen), die einen inhaltlichen
Befund erbrachte, sowie der Beginn der regulären Grundarbeit am PL-02-Kern-Nachtrag.

---

## 1. Voraussetzungen

- `lauf-gate.sh normen-training-nacht` bestanden (Exit 0). NAS gemountet, während des ganzen Laufs
  ohne Abbruch. Kollisionsschutz per `ps`: keine zweite Instanz.
- Run-Nummer: jüngste `outputs/`-Datei war Run 37 → Nummer **38**. Zweitprüfung unmittelbar vor dem
  Schreiben (Lehre aus der Doppelvergabe von Run 36) erneut durchgeführt.
- Zugriffs-Check auf die Original-Ablage bestanden. **Ein Fallstrick dabei:** der Pfad zur
  OneDrive-Bibliothek enthält einen En-Dash; `pdftoppm` scheiterte daran mit «No such file or
  directory», obwohl `ls` und `pdfinfo` denselben String zuvor akzeptiert hatten. Behoben mit einem
  Symlink ohne Sonderzeichen (Muster aus Rule `osascript-apple-apps`), danach lief alles.
- **Die Anmeldung war wieder gültig.** Run 37 hatte alle Refuter-Agenten an einem 401 verloren; in
  diesem Lauf liefen die Subagenten fehlerfrei. Der Punkt aus Run 37 ist erledigt.

## 2. Vorrang-Auftrag — Methode

Alles selbst im Hauptprozess ausgeführt, ohne Refuter-Agenten: der Auftrag verlangt ausdrücklich,
dass der Hauptprozess widersprüchliche Befunde am Original selbst nachprüft, und die Aufnahme ist
deterministisch, also besser skriptgestützt als modellgestützt.

1. `pdftoppm -r 300 -png` mit dem aufgabenspezifischen Präfix `lignatec-r8-` (Methodik-Pflicht 5).
   A3-Doppelseiten: PDF-Seite 4 = gedruckte S. 8-9 (Tab. 3), PDF-Seite 6 = S. 12-13 (Tab. 4),
   PDF-Seite 7 = S. 14-15 (Tab. 5, nur zur Legendenkontrolle).
2. Gitterdetektion über Dunkelpixel-Projektion (Zeilen- und Spaltenlinien), getrennt für die linke
   und die rechte Halbseite; die rechte Seite liegt um 10 px versetzt.
3. **Legenden-Swatches je Tabelle einzeln am Original gemessen** — nicht angenommen. Das war der
   entscheidende Schritt: erst dadurch fiel auf, dass die Legenden voneinander abweichen.
4. Median-RGB je Zellbox (18 % vertikaler, 10 % horizontaler Innenabstand, damit Gitterlinien nicht
   einfliessen), Klassierung auf die gemessenen Swatches.
5. Vollständige Matrix: je Tabelle 10 Nutzungszeilen × 2 Konzeptzeilen × 7 Geschossgruppen × 2
   Unterspalten. **Die Spaltengruppen wurden an der Kopfzeile selbst nachgezählt** (7 Gruppen), nicht
   aus dem Destillat übernommen — das Destillat lag hier richtig.
6. Jede farbliche Auffälligkeit danach im hochaufgelösten Ausschnitt gelesen, um den Zellwert zum
   Farbbefund zu stellen.

## 3. Tabelle 3 und Tabelle 4 — die 7 Kernbefunde

| # | Ort | Befund |
|---|---|---|
| 1 | Legenden aller drei Tabellen | Tab. 3 und Tab. 4 haben je eine eigene Legende, die das Destillat nirgends wiedergab. Tab. 3: weiss = Holzbauteile · grau = Holzbauteile beidseitig nicht brennbar verkleidet · blau = Keine Holzbauweise als Standardkonzept. Tab. 4 zusätzlich mit **zwei** Grautönen: hellgrau = im Korridor (fluchtwegseitig) nicht brennbar verkleidet · dunkelgrau = beidseitig. Tab. 5: weiss = Holz mit BKZ ≥ 4.2 · grau = nur unter bedingten Auflagen · blau = keine Anwendung von Holz. Das Destillat führte allein die Tab.-5-Bedeutung — wer sie auf Tab. 3/4 überträgt, liest «bedingte Auflagen» statt einer konkreten Verkleidungsanweisung |
| 2 | Tab. 4, Farbsystematik | Die zwei Grautöne sind die grafische Kodierung der Schrägstrich-/Bindestrich-Notation: dunkelgrau trägt durchgängig Schrägstrich-Werte (REI60/EI30(nbb)), hellgrau durchgängig Bindestrich-Werte (EI30-nbb, EI60-EI30(nbb)). Damit ist die Run-32/33-Korrektur zum Korridorwert Wohnbauten MFH 5-6 erstmals **methodisch unabhängig** bestätigt — Farbe statt Zeichenerkennung. Keine Regression |
| 3 | Tab. 3, Beherbergungsbetriebe [a] | «ab 2 Geschossen … durchgehend» setzt die Blau-Zone eine Spalte zu spät an: in der Spalte «1 und oberstes Geschoss» ist der Brandabschnitt bereits EI60(nbb) und blau, nur das Tragwerk trägt dort «Keine Anforderung» |
| 4 | Tab. 4, Beherbergungsbetriebe [a] | «durchgehend EI60(nbb)/REI60(nbb)» trifft die erste Spalte nicht: dort trägt das Treppenhaus nur den Fussnotenverweis ⑥ (weiss, kein Wert), der Korridor dagegen EI60(nbb) blau. Für die Zeile Wohnbauten MFH hält das Destillat genau diese Besonderheit fest, für [a] nicht |
| 5 | Tab. 3, Wohnbauten MFH 5-6 Geschosse | Die Sprinkler-Werte fehlten ganz — R60③ (Tragwerk) und EI60②③ (Brandabschnitt). Für 4 Geschosse führt das Destillat beide Konzepte. Praktisch folgenreich: die Sprinkler-Zellen sind **weiss** (Holzbauteile ohne Verkleidungsauflage), die baulichen **grau** (beidseitig nicht brennbar verkleidet) |
| 6 | Tab. 3 und Tab. 4, Abdeckungsgrenze | Für «Verkaufsgeschäfte ≤ 1200 m²/≤ 100 P», «Landwirtschaftliche Bauten» und «Wohnbauten EFH/REFH» enden beide Tabellen nach der Spalte «4» — für 5-6 und 7-8 Geschosse existieren dort keine Zellen. Das Destillat suggerierte mit «durchgehend» eine Aussage, die die Quelle nicht trifft. Und es ist keine Konvention des Hefts: **Tabelle 5 führt für dieselben drei Zeilen sehr wohl Werte im Block 4-8** — die Lücke ist spezifisch für Tab. 3/4 |
| 7 | Tab. 3, Beherbergungsbetriebe [b] Hotels | Die Zeile fehlte in den Eckwerten vollständig, obwohl sie den für einen Holzbau-Entscheid zentralen Konzeptunterschied trägt: baulich ab 2 Geschossen blau, im Sprinklerkonzept bis und mit 3 Geschossen holzmöglich (R30④ weiss / EI30(nbb)④ grau) |

**Nebenbefunde (4):** die Tab.-3-Zeilen «Industrie-/Gewerbebauten q > 1000 MJ/m² / Bauten mit
unbekannter Nutzung» (baulich ab «2 über 600» blau, Sprinkler erst ab 4), «Bauten mit Räumen
grosser Personenbelegung / Verkaufsgeschäfte [c]» (beide Konzepte ab 3 Geschossen blau) und
«Parkhäuser/Einstellräume» (baulich ab 5-6, Sprinkler ab 7-8) fehlten in den Eckwerten; die
Blau-Formulierung differiert zwischen den drei Tabellen («Keine Holzbauweise» / «Keine Holzbauteile»
/ «Keine Anwendung von Holz (bzw. brennbaren Baustoffen) im Rahmen eines Standardkonzeptes»).

**Abgrenzung gegen frühere Bestätigungen — bewusst genau geprüft.** Kein Befund dieser Runde
widerlegt eine frühere Prüfung, und das ist hier keine Beschönigung, sondern der Unterschied
zwischen den beiden Fragerichtungen: Run 33 hatte für Tab. 3 die Zeile Beherbergungsbetriebe [a]
«von 2 bis 7-8 Geschossen» pixelgenau bestätigt — das ist korrekt und bleibt es. Befund 3 betrifft
die Spalte davor, die nie Gegenstand einer Prüfung war, weil das Destillat über sie nichts behauptet
hat. Dasselbe Muster bei Befund 6. Alle Befunde wurden am eigenen 300-dpi-Rendering im Ausschnitt
gelesen, bevor sie übernommen wurden.

## 4. Warum die Endbedingung nicht erfüllt ist

Der Auftrag sagt: liefert die rechnerische Aufnahme von Tab. 3 **und** Tab. 4 keine Kernbefunde, ist
die Quelle ausgereizt, und dann soll die Umstellung auf Ereignis-Trigger vorgeschlagen werden. Sie
hat sieben geliefert. **Die Quelle ist nicht ausgereizt; die Umstellung wird nicht vorgeschlagen.**

Damit bestätigt sich die Run-36-Lehre zum dritten Mal (Run 35, Run 36, Run 38): eine Runde mit
wenigen Randbefunden misst die Prüfmethode, nicht die Quelle. Als **Methodik-Pflicht 6** in
`training/PROGRAMM.md` verankert, mit zwei konkreten Verfahren (rechnerische Tabellenaufnahme;
OCR-Abdeckungsdiff) und der Auflage, im Report auszuweisen, welche Fragerichtung gelaufen ist.

**Noch nicht rechnerisch aufgenommen** und damit Gegenstand einer neunten Runde: die acht
Übersichtsaxonometrien (S. 16-23) und Tabelle 2 (S. 4-5).

## 5. `lignum-4-1` — achte Runde mit umgekehrter Fragerichtung

Der nachrangige Teil des Auftrags. Statt erneut zu prüfen, ob stimmt, was das Destillat behauptet,
wurde die **Abdeckung** gemessen: alle 40 A3-Blätter mit Präfix `l41r8-` gerendert, per
`tesseract -l deu` gelesen, alle Nummern im Muster NNN-N extrahiert und gegen die 66 im Destillat
zitierten Nummern gediffed. Fünf Nummern fehlten: 340-1, 523-1, 524-1, 525-1, 525-2.

- **Ein inhaltlicher Befund.** In Kap. 5.2.5 (S. 63) fehlte der ganze mittlere Absatz: bei der
  Durchführung von Installationen durch brandabschnittsbildende Bauteile RF1 sind die
  Bauteilleibungen gemäss Kap. 5.2.4 auszuführen, und Durchbrüche wie Leitungsdurchführungen sind
  feuerwiderstandsfähig zu verschliessen. Das ist die Abschottungspflicht — ausführungsrelevant,
  kein Nuancenverlust. Am Original im Wortlaut nachgeprüft und ergänzt.
- **Drei formale Befunde**: Fundstellen Abb. 340-1, Abb. 524-1 (inkl. Bild 1) und Abb. 525-1
  (Bild 1/2) ergänzt; der Inhalt dieser Stellen war bereits korrekt erfasst.
- **Ausgewiesene Grenze:** die OCR fand nur 34 Nummern, das Destillat zitiert 66 — dichte
  Katalogtabellenseiten lesen sich bei 200 dpi schlecht. Der Diff ist eine **untere Schranke**, kein
  Vollständigkeitsnachweis. Zellwerte wurden in dieser Runde nicht erneut geprüft.

**Konsequenz für Raphaels Entscheid vom 29.07.** Er hatte `lignum-4-1` als «speculative, stabil,
keine Routinerunden mehr» akzeptiert, begründet damit, dass 5 von 6 Befunden der siebten Runde
Formalien waren. Dieses Argument galt für die alte Prüfrichtung. Die erste Runde in der neuen
Richtung hat sofort einen inhaltlichen Befund erbracht. Zu entscheiden ist deshalb neu: eine weitere
Abdeckungs-Runde freigeben, oder den Stopp bewusst bestätigen im Wissen, dass Abdeckungslücken
bestehen können. Vorgelegt in `wiki/QUESTIONS.md`, Run-38-Eintrag Punkt 2.
