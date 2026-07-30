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

## 6. Regulärer Lauf — der BfU-Block aus dem PL-02 Kern-Nachtrag

Erste echte Grundarbeit an dem Bestand, den Raphael am 29.07. neu ins Inventar aufgenommen hat.
9 Dateien aus `PL - 02_Recht_Norm/06_Richtlinien/BfU/` → **7 Destillate**, jedes mit einem
unabhängigen Refuter. Fassungsstand in jedem Fall am Dokument selbst belegt, nie aus dem
Dateinamen — was sich zweimal ausgezahlt hat:

- **«Anforderunegn Bodenbeläge» und «Bodenbeläge» sind kein Fassungspaar**, sondern zwei
  verschiedene Publikationen: bfu 2.032 «Anforderungsliste Bodenbeläge» (Bern 2012, 30 S.) und
  bfu 2.027 «Bodenbeläge» (Bern 2011, 68 S.). Sie zitieren einander wechselseitig.
- **«Geländer und Brüstungen» dagegen schon**: 2.003.01 in den Fassungen 07.2012 und 01.2019, die
  jüngere geltend. Die 2019er ergänzt quantifizierte Werte, die 2012 fehlten.
- **«Sicherheit im Wohnungsbau» ist etwas anderes, als der Auftrag annahm.** Ich hatte es als
  bauteilbezogenen Anforderungskatalog beschrieben; es ist eine **rechtsvergleichende Synopse**
  der Bauvorschriften aller 26 Kantone und Liechtensteins zu Geländern, Brüstungen und Treppen,
  mit der Frage, welche Bindungsstärke die SIA 358 je Kanton hat. Der Destillier-Agent hat das
  erkannt und meine Fehlbeschreibung im REGISTER korrigiert — richtig so.

| Destillat | Publikation | Verdikt des Refuters |
|---|---|---|
| `bfu-gelaender-und-bruestungen.md` | 2.003.01, 07.2012 + 01.2019 | **BESTANDEN**, 0 inhaltliche Befunde |
| `bfu-treppen.md` | 2.007.01, 11.2009 | BEANSTANDET, 10 (6 Vollständigkeitslücken, 4 formal) |
| `bfu-tueren-und-tore.md` | 2.005-01, 12.2012 | BEANSTANDET, 7 (2 inhaltlich, 1 Auslegungs-Kennzeichnung) |
| `bfu-glas-in-der-architektur.md` | 2.006.01, 10.2010 | BEANSTANDET, 4 (alle formal) |
| `bfu-sicherheit-rechtliche-aspekte.md` | 2.075.01, 02.2011 | BEANSTANDET, 2 (1 Cross-Kontamination) |
| `bfu-bodenbelaege.md` | 2.032 (2012) + 2.027 (2011) | BEANSTANDET, 3 (2 inhaltlich — Tabellen 9-16 zellenweise geprüft) |
| `bfu-sicherheit-im-wohnungsbau.md` | 2.034, 07.2011 | Refuter-Runde lief zum Redaktionsschluss noch |

Alle gemeldeten inhaltlichen Befunde hat der Hauptprozess **vor der Übernahme selbst am eigenen
Rendering des Originals nachgeprüft** und bestätigt, bevor sie eingearbeitet wurden.

### Zwei Befunde, die über den Einzelfall hinausgehen

1. **Cross-Kontamination zwischen parallel destillierten Quellen.** Im Destillat
   `bfu-sicherheit-rechtliche-aspekte.md` stand die PrHG-Fehlerdefinition mit dem Wort
   «berechtigterweise» — das in diesem Dokument nicht vorkommt. Es stammt aus der gleichzeitig
   destillierten Schwester-Broschüre «Glas in der Architektur». Ich habe beide Originale
   nebeneinander geprüft: die zwei bfu-Publikationen formulieren tatsächlich unterschiedlich.
   **Das ist ein Fehlertyp, der erst durch Parallel-Destillation entsteht** und den eine
   Einzelprüfung je Dokument strukturell nicht findet — nur ein Refuter, der beide Originale sieht.
2. **Ein systematischer Frontmatter-Fehler im ganzen Batch.** Vier Destillate trugen in `gelesen`
   und `datenstand` das heutige Bearbeitungsdatum statt der gelesenen Seiten bzw. des
   Dokumentstands. Zentral korrigiert. Bemerkenswert: die zwei Agenten, die den grössten Aufwand
   hatten (Bodenbeläge, Wohnungsbau), haben `gelesen` von sich aus vorbildlich ausgefüllt — inklusive
   ehrlicher Angabe, welche Kapitel sie nur über das Inhaltsverzeichnis erfasst haben.

### Der wertvollste Befund des BfU-Blocks

Im Destillat `bfu-bodenbelaege.md` stand «Laderampen nicht überdacht, Marktplätze/Piazzas GS3
(R12)» — zwei Tabellenzeilen zu einer zusammengefasst. Im Original (2.032, S. 23, Tab. 15) trägt
«Laderampen nicht überdacht» aber **GS3 / R 12 V4**, also zusätzlich eine
Verdrängungsraum-Anforderung; nur «Marktplätze, Piazzas» ist R 12 ohne V4. Ich habe die Tabelle
selbst gerendert und die beiden Zeilen einzeln gelesen — der Refuter hat recht.

Das ist exakt der Fehlertyp, den dieser Loop verhindern soll: das Destillat empfiehlt an anderer
Stelle ausdrücklich, LV-Texte direkt mit diesen Klassen zu referenzieren. Ein daraus abgeleiteter
LV-Text hätte die Verdrängungsraum-Pflicht für nicht überdachte Laderampen stillschweigend
verloren — und niemand hätte es beim Lesen des Destillats bemerkt, weil die Aussage plausibel
aussieht. Gefunden wurde er nur, weil der Refuter den Auftrag hatte, die Zuordnungstabellen
**zellenweise** statt stichprobenartig zu prüfen. Dieselbe Lehre wie beim Lignatec-Heft, in einer
anderen Quelle.

### Neu im REGISTER, Abschnitt D

Die bfu-Familie ist aufgenommen, mit Publikationsnummern, Ausgaben und Bestandsstatus. Zwei
Vorbehalte sind dort festgehalten:

- **bfu-Broschüren sind keine Normen**, sondern Auslegungs- und Praxishilfen; verbindlich bleibt
  die Norm (durchgehend SIA 358, dazu SIA 500, DIN 51130/51097, VSS SN 640 238). Die Broschüre ist
  Beleg für die «anerkannten Regeln der Baukunde», nicht deren Ersatz.
- **Besonderer Vorbehalt zu 2.034**: die Publikation gibt kantonales Recht mit Stand vor dem
  1.1.2011 wieder. Kantonales Baurecht ändert häufig; die dort zitierten Paragrafen — auch die
  Zürcher § 20 BBV I und § 305 PBG — dürfen nie als geltender Rechtsstand zitiert werden, sondern
  nur als Einstiegshinweis, welche Norm im jeweiligen Kanton einschlägig ist.
- Dazu ein allgemeiner Zitier-Vorbehalt für die zwei ältesten Broschüren (2.006.01 von 2010,
  2.007.01 von 2009): ob die bfu inzwischen neuere Fassungen publiziert hat, ist nicht geprüft.

## 7. Werkzeug-Fallstrick, dokumentiert

`pdftoppm` scheitert am En-Dash im Pfad der OneDrive-Bibliothek mit «No such file or directory» —
obwohl `ls` und `pdfinfo` denselben String unmittelbar davor akzeptiert haben. Das ist keine
Zugriffs-, sondern eine Encoding-Frage und damit leicht als TCC-Blockade fehlzudeuten. Lösung:
Symlink ohne Sonderzeichen anlegen (Muster aus Rule `osascript-apple-apps`, dort bereits für
osascript beschrieben — es gilt für die poppler-Werkzeuge genauso).

## 8. Nachgeführt

- `destillate/lignum-lignatec-brandschutz.md` — Legenden aller drei Tabellen, 7 Kernbefunde,
  4 Nebenbefunde eingearbeitet; Verifikationsstand Runde 8.
- `destillate/lignum-4-1-…-feuerwiderstand.md` — Kap. 5.2.5 ergänzt, 3 Fundstellen; Runde 8.
- 7 neue `destillate/bfu-*.md`, davon 5 bereits mit Refuter-Verdikt im Frontmatter.
- `destillate/INDEX.md` — beide Lignum-Zeilen neu gefasst, 7 bfu-Zeilen ergänzt.
- `wiki/REGISTER.md` — Abschnitt D um die bfu-Familie erweitert, mit zwei Vorbehalten.
- `wiki/QUESTIONS.md` — Run-38-Eintrag, fünf offene Punkte.
- `training/PROGRAMM.md` — Methodik-Pflicht 6; Ergebnis der achten Runde; Vorlage zu `lignum-4-1`.
- `training/norm-inventar.md` — Run-38-Eintrag zuoberst.
- `CHANGELOG.md` — Kopfeintrag.

## 9. Offen — und was Raphael entscheiden sollte

1. **Neunte Runde `lignum-lignatec` ist fällig.** Nicht rechnerisch aufgenommen sind bisher die
   acht Übersichtsaxonometrien (S. 16-23) und Tabelle 2 (S. 4-5). Keine Rücktaktung, bis das
   gelaufen ist.
2. **Entscheid zu `lignum-4-1` neu vorzulegen** (siehe Abschnitt 5): weitere Abdeckungs-Runde
   freigeben, oder den Stopp bewusst bestätigen im Wissen um mögliche Abdeckungslücken.
3. **Der Aktualitäts-Vorbehalt bei `lignum-lignatec` bleibt der praktisch folgenreichste offene
   Punkt** und ist durch keine Verifikationsrunde lösbar: die Quelle datiert von 2005 und bezieht
   sich auf die VKF-Vorschriften 2003. Sämtliche jetzt sorgfältig verifizierten Tabellenwerte
   stehen unter diesem Vorbehalt. Ein Abgleich gegen die VKF-Generation 2015 hat nie stattgefunden.
4. **Der PL-02-Kern-Nachtrag ist erst angefangen.** Nach BfU stehen GVZ, Suva, SWKI, Suissetec,
   VSA, PAVIDENSA, 09_Sanitaereinrichtung und die losen Merkblätter offen.
5. **SIA 358 hat im Hub kein Destillat** — und alle vier grossen bfu-Broschüren delegieren ihre
   Kernwerte genau dorthin. Solange das fehlt, endet jede Geländer-/Treppen-Frage bei einer
   Sekundärquelle. Das ist die grösste inhaltliche Lücke, die dieser Lauf sichtbar gemacht hat.
