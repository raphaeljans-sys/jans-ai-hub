---
quelle: Zwei Word-Dokumente aus der JANS-Referenzablage PL-04 Energie — (a) `U Wert berechnung/Grassen Biwak/Um den gewünschten Schichtaufbau mit einem U.docx`; (b) `_Formulare Kanton ZH Baueingabe/_Du kannst das EN.docx`
herausgeber: kein Herausgeber — beides sind in Word eingefügte Antworten eines KI-Chatbots (ChatGPT), abgelegt in der Fach-Referenzbibliothek
ausgabe: undatiert; Ablagekontext 2023-2024 (Nachbarordner tragen Stände 231101 bis 2024)
gelesen: beide vollständig (2'075 bzw. 3'799 Zeichen Fliesstext, inkl. Hyperlink-Ziele aus den .rels)
datenstand: 2026-08-23 (Prüfstand; die Quelldokumente selbst sind undatiert)
status: established
last_updated: 2026-08-23
links: [[clt-bauteilkatalog-stora-enso]], [[clt-bauphysik-stora-enso]], [[daemmstoffe-lambda]], [[u-werte-grenzwerte-ch]], [[energienachweis-zh]], [[vorgehen-bauteilekatalog-u-wert]], [[INDEX]]
---

# Destillat — KI-generierte Fachdokumente in der Referenzablage PL-04

> **Kein Fachdestillat, sondern eine Warnkarte.** Die beiden hier beschriebenen Dateien sind
> keine Quellen, sondern Chatbot-Antworten, die in der Fachbibliothek liegen und beim Lesen
> wie Grundlagen aussehen. Dieses Destillat hält fest, **welche** Dateien das sind, **wo** sie
> fachlich danebenliegen und **wie** die Rechnung richtig geht — damit die Zahlen nicht über
> eine spätere Suche unbemerkt in eine Baueingabe wandern.

## Das Wichtigste in 1 Satz

In der Referenzablage PL-04 Energie liegen zwei als Fachdokument abgelegte ChatGPT-Antworten,
davon eine U-Wert-Berechnung, die **im Ergebnis ungefähr stimmt (0,40 gegen korrekt rund 0,37
W/m²K), aber in drei Punkten methodisch falsch rechnet** — und genau deshalb gefährlich ist:
das plausible Resultat lädt dazu ein, die Methode nicht zu prüfen.

## Woran die beiden Dateien als KI-Erzeugnis erkennbar sind

Nicht Vermutung, sondern Textmerkmale aus den Dateien selbst:

- **Direkte Chatbot-Anrede und Schlussformel:** «Hier ist die Berechnung basierend auf **deinem**
  Aufbau», «**Lass mich wissen, ob du** weitere Berechnungen oder Anpassungen wünschst! 😊».
- **Bundesdeutsche Rechtschreibung mit ß** («von **außen** nach innen», «ökologischer
  **Fußabdruck**») — JANS schreibt durchgehend Schweizer Hochdeutsch mit ss.
- **`utm_source=chatgpt.com` in den hinterlegten Hyperlink-Zielen** der Datei
  `_Du kannst das EN.docx` (zwei von vier Links tragen den Parameter) — der Beleg, dass die
  Links aus einer Chatbot-Antwort kopiert wurden.
- **Leerstellen, wo eine Formel stehen sollte:** «Bei gleicher Dicke (40 mm) ergibt sich ein
  R-Wert von .» und «Damit läge der U-Wert des Aufbaus bei etwa , was weiterhin den
  Anforderungen entspricht.» Die Zahlen standen in einer Formeldarstellung, die beim Kopieren
  nach Word verloren ging. **Der Text behauptet also Ergebnisse, die er nicht mehr zeigt.**

## Datei (a) — die U-Wert-Berechnung «Grassen Biwak»

### Was das Dokument rechnet

Aufbau von aussen nach innen, laut Dokument:

| # | Schicht | Angabe im Dokument | R-Wert laut Dokument |
|---|---|---|---|
| 1 | Schutzblechverkleidung (Aluminium) | vernachlässigt | — |
| 2 | Unterkonstruktion 40 mm, luftgefüllt | «Luftschicht (unbelüftet)», λ = 0,15 W/(m·K) | 0,27 m²K/W |
| 3 | Mineralwolle 40 mm | λ = 0,035 W/(m·K) | 1,14 m²K/W |
| 4 | CLT 140 mm, **Stora Enso** | λ = 0,13 W/(m·K) | 1,08 m²K/W |

Ergebnis laut Dokument: «ca. 0,40 W/(m²·K)», Fazit «erfüllt bereits den geforderten U-Wert
von 0,5 W/(m²·K)».

### Die drei Methodenfehler

**1. Die Wärmeübergangswiderstände fehlen vollständig.** Die Summe 0,27 + 1,14 + 1,08 = 2,49
m²K/W ergibt als Kehrwert genau die genannten 0,402 — das Dokument hat also **nur die
Schichten summiert**. Die Formel lautet aber U = 1 / (R_si + Σ d/λ + R_se) mit
**R_si 0,13 / R_se 0,04 m²K/W**, wie sie in der KB aus dem Stora-Enso-Bauphysikdokument
belegt sind (→ `[[clt-bauphysik-stora-enso]]`, dort auch die Faustformel selbst).

**2. Eine Luftschicht bekommt kein λ.** Das Dokument weist der 40-mm-Luftschicht eine
Wärmeleitfähigkeit von 0,15 W/(m·K) zu und rechnet daraus einen R-Wert. Das ist keine
Materialkennzahl: ruhende Luft hat λ ≈ 0,025 W/(m·K), die 0,15 sind frei gegriffen. Nach
SN EN ISO 6946 erhält eine Luftschicht **einen tabellierten Wärmedurchlasswiderstand**
(abhängig von Dicke, Richtung des Wärmestroms und Belüftungsgrad), nicht ein λ.

**3. Und der entscheidende Punkt: eine hinterlüftete Schale wird gar nicht mitgerechnet.**
«Schutzblechverkleidung» plus «Unterkonstruktion, luftgefüllt» beschreibt eine hinterlüftete
Metallfassade. Nach SN EN ISO 6946 werden bei einer **stark belüfteten** Luftschicht die
Luftschicht **und alles, was aussen davon liegt**, weggelassen; statt R_se wird aussen
ebenfalls R_si angesetzt. Die Positionen 1 und 2 tragen dann **null** zum U-Wert bei — statt
der im Dokument gutgeschriebenen 0,27 m²K/W.

### Die korrigierte Rechnung

*(Eigene Rechnung JANS, mit KB-belegten Eingangswerten; nicht Teil der Quelle.)*

Gelesen als **hinterlüftete Fassade** (der wahrscheinliche Fall — und der einzige, der ohne
Tabellenwert für die Luftschicht auskommt):

R_T = R_si 0,13 + Mineralwolle 0,04/0,035 (= 1,143) + CLT 0,14/λ + R_si 0,13

| λ CLT | Herkunft des Wertes | R_T | **U-Wert** |
|---|---|---|---|
| 0,110 | Stora Enso Bauteilkatalog, Tragschicht C3s/L5s → `[[clt-bauteilkatalog-stora-enso]]` | 2,676 | **0,374 W/m²K** |
| 0,12 | Stora Enso Bauphysik, nach EN ISO 10456 → `[[clt-bauphysik-stora-enso]]` | 2,570 | **0,389 W/m²K** |
| 0,13 | *Wert des KI-Dokuments, in keiner Herstellerunterlage belegt* | 2,480 | 0,403 W/m²K |

**Das Ergebnis des Dokuments überlebt die Korrektur ungefähr** — rund 0,37 bis 0,39 statt
0,40 W/m²K, weil sich die drei Fehler gegenseitig weitgehend aufheben: die fehlenden
Übergangswiderstände rechnen den Aufbau schlechter, die unterschobene Luftschicht rechnet ihn
besser. **Genau das ist die Falle.** Wer nur auf die Schlusszahl schaut, sieht keinen Anlass
zur Prüfung.

**Nachtrag 23.08.2026 — die zweite Lesart ist jetzt ebenfalls rechenbar (schliesst E-R161-1).**
Seit dem Tabellenwert-Fund in `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]` (Kap. 2.3.3,
Tabelle 3) lässt sich auch die vom Dokument selbst behauptete Lesart **«Luftschicht
(unbelüftet)»** nachrechnen (Rg für ruhende, horizontal durchströmte Luftschicht 40 mm
= 0,18 m²K/W, konstant im Bereich 25-100 mm):

R_T = R_se 0,04 + Rg Luftschicht 0,18 + Mineralwolle 1,143 + CLT 0,14/λ + R_si 0,13

| λ CLT | R_T | **U-Wert** |
|---|---|---|
| 0,110 | 2,766 | **0,362 W/m²K** |
| 0,12 | 2,660 | **0,376 W/m²K** |
| 0,13 (KI-Wert, unbelegt) | 2,570 | 0,389 W/m²K |

Auch diese Lesart bleibt in derselben Grössenordnung wie die drei anderen Rechnungen (0,36 bis
0,40 W/m²K) — der Befund «das Ergebnis überlebt trotz Methodenfehlern» gilt unabhängig davon,
ob als hinterlüftete Fassade oder als ruhende Luftschicht gelesen wird. Für die Praxis bleibt
die hinterlüftete Lesart wahrscheinlicher (Schutzblechverkleidung + Unterkonstruktion ist eine
gängige Konstruktion), aber der Methodenfehler des Dokuments (λ statt Rg-Tabellenwert für die
Luftschicht) ist damit in **jeder** Lesart nachweisbar, nicht nur der bisher rechenbaren.

### Zwei weitere Beanstandungen

- **λ = 0,13 für Stora-Enso-CLT ist nicht belegt.** Das Dokument nennt den Hersteller
  ausdrücklich; dessen eigene Unterlagen führen 0,110 (Bauteilkatalog) bzw. 0,12 (Bauphysik,
  EN ISO 10456). Der verwendete Wert liegt über beiden. Er ist damit auf der sicheren Seite,
  aber er stammt aus keiner Quelle.
- **Die Wärmebrücken der Unterkonstruktion fehlen.** Bei nur 40 mm Dämmung, die von einer
  Unterkonstruktion durchdrungen wird, entscheidet deren Material (Metallwinkel gegen
  Holzlattung) spürbar über den effektiven U-Wert. Das Dokument erwähnt sie mit keinem Wort.

### Einordnung zum Zielwert 0,5 W/m²K

Der im Dokument als «gefordert» gesetzte U-Wert von 0,5 W/m²K ist **weit über** dem Schweizer
Neubau-Grenzwert für opake Bauteile von **0,17 W/m²K** (→ `[[u-werte-grenzwerte-ch]]`). Für
ein Biwak ist das plausibel, weil ein unbeheiztes Schutzgebäude nicht unter SIA 380/1 fällt —
das Dokument sagt aber nirgends, woher die 0,5 kommen oder dass hier ein Sonderfall vorliegt.
**Für jedes reguläre beheizte Gebäude wäre dieser Aufbau um den Faktor zwei zu schlecht.**

## Datei (b) — die EN-ZH-Erläuterung

Inhaltlich weitgehend harmlos: Der Text beschreibt zutreffend, dass vor Baubeginn das
Hauptformular **EN-ZH** samt den fachbereichsbezogenen Formularen einzureichen ist, und gibt
den nützlichen Praxishinweis, das Formular **herunterzuladen und im Adobe Reader** statt im
Browser auszufüllen. Die verlinkten Ziele (endk.ch-Hauptformulare, zh.ch-Energienachweise)
sind die richtigen Anlaufstellen.

**Trotzdem nicht als Quelle verwenden:** zwei der vier Links tragen `utm_source=chatgpt.com`,
der Text ist undatiert, und die Kantonsformulare ändern regelmässig. Die belegte Fassung
dieses Themas steht in der KB → `[[energienachweis-zh]]` und `[[en-zh-nachweis-uebersicht]]`,
FAQ **F12**. Das Dokument ist damit **redundant**, nicht falsch.

## Bauherren-Transfer

*(Eigene Einordnung JANS, nicht Teil der Quelle.)*

**Die Lehre ist nicht «keine KI benutzen», sondern: ein KI-Rechenweg gehört genauso an die
Quelle gehalten wie eine Unternehmerofferte.** Das geprüfte Dokument liefert ein Resultat, das
im Rahmen liegt, und wäre in einer Eingabe nie aufgefallen. Aufgefallen wäre erst die
Rückfrage der Behörde oder der privaten Kontrolle nach dem Rechenweg — und der hält nicht.

Drei übertragbare Prüfpunkte für jede U-Wert-Rechnung, die JANS erreicht, gleich welcher
Herkunft:

1. **Stehen R_si und R_se drin?** Fehlen sie, ist die Rechnung unvollständig. Schneller Test:
   ergibt der Kehrwert der blossen Schichtsumme exakt das ausgewiesene Resultat, wurden sie
   vergessen.
2. **Wie ist die Luftschicht behandelt?** Ein λ für eine Luftschicht ist immer falsch. Bei
   hinterlüfteter Fassade gehören Luftschicht und Vorsatzschale **ganz heraus**.
3. **Woher stammt jedes λ?** Ein Produkt namentlich zu nennen und dann einen Rundwert zu
   verwenden, der in keiner Herstellerunterlage steht, ist der häufigste stille Fehler. Die
   belegten Werte stehen in `[[daemmstoffe-lambda]]` und `[[sia-2001-waermedaemmstoffe-lambda]]`.

Gegenüber einer **Bauherrschaft**, die selbst mit einem Chatbot gerechnet hat, ist der richtige
Ton nicht Belehrung, sondern der Hinweis, dass die **Zahl stimmen kann und der Weg trotzdem
nicht einreichbar** ist: den Energienachweis unterschreibt eine fachlich verantwortliche Person,
und die haftet für den Rechenweg, nicht für das Ergebnis. → FAQ **F257**.

## Offene Punkte

> **Nachtrag 24.08.2026 (Entwertungs-Sweep, KB `wettbewerbs-dna` gegengelesen) — die Praemisse
> des dritten offenen Punkts loest sich auf.** Der eingereichte Wettbewerbsbeitrag
> «-Babuschka-» fuer das Grassenbiwak 2027 traegt laut Jurybericht und eigenen Abgabeplaenen
> **hinterlueftetes Falzblech** (Prefa Prefalz) als Fassade, **fuenflagige CLT-Platten 120 mm**
> und **70 mm Stroh** als Daemmung
> (`wissen/wettbewerbs-dna/wiki/teilnahmen/2408-biwak-grassen.md`, `status: established`).
> **Der in dieser Datei beschriebene Aufbau ist also gar nicht der des Projekts** — weder die
> CLT-Staerke (140 statt 120 mm) noch die Daemmung (40 mm Mineralwolle statt 70 mm Stroh) noch
> die Aussenschicht stimmen. Die Frage «ist DIESER Aufbau hinterlueftet» betrifft damit eine
> Wand, die so nie geplant war; fuer das Projekt ist die hinterlueftete Lesart belegt.
> **Zweiter Fund im selben Zug:** die Stroh-Variante der Datei rechnet mit λ ≈ 0,045, waehrend
> diese KB fuer Stroh **0,049 allgemein und 0,052 quer zur Halmrichtung** fuehrt
> (`strohdaemmung-bemessungswert-brandschutz.md`) — und Stroh ist im Projekt der real verbaute
> Daemmstoff, nicht die Variante. Damit ist die vermeintliche Nebenrechnung der Datei die
> praxisrelevante und zugleich die am deutlichsten zu guenstig gerechnete.


- **Der Tabellenwert für ruhende/schwach belüftete Luftschichten nach SN EN ISO 6946 fehlt in
  der KB.** Deshalb ist oben nur die hinterlüftete Lesart durchgerechnet; die Variante
  «unbelüftete Luftschicht» liesse sich mit einem belegten Tabellenwert ergänzen (E-R160-1).
- **Die KB führt zwei Stora-Enso-λ nebeneinander: 0,110 und 0,12 W/(m·K)**, beide vom selben
  Hersteller, aus zwei verschiedenen Dokumenten. Kein Widerspruch im engeren Sinn (Produktgrad
  bzw. Bemessungsgrundlage können abweichen), aber die Differenz von 9 % ist nicht erklärt und
  FAQ F15 zitiert nur die 0,12 (E-R160-2).
- **Ob der Aufbau «Grassen Biwak» tatsächlich hinterlüftet ist, ist aus dem Dokument nicht
  abschliessend zu belegen** — der Text nennt die Schicht «unbelüftet», die Bauteilbezeichnung
  spricht dagegen. Beide Lesarten sind oben offengelegt; der Unterschied bleibt unter 0,03 W/m²K
  und ist für die Aussage unerheblich.
- Nicht geprüft, **ob weitere KI-erzeugte Dokumente in anderen PL-Bibliotheken liegen**. In
  PL-04 wurden alle 16 Nicht-PDF-Dateien gesichtet (→ `pdf-inventar.md`, Nachtrag Run 160);
  für PL-02, PL-03 und PL-05 steht diese Sichtung aus (E-R160-3).
