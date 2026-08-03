---
quelle: PL - 02_Recht_Norm/06_Richtlinien/Minergie/Nuetzliche Unterlagen/Bauteilekatalog_Sanierungen_d.pdf
herausgeber: Bundesamt für Energie BFE (ausgearbeitet durch Kurt Marti, Ingenieurbüro für Energie und Umwelt, 3054 Schüpfen; herausgegeben im Rahmen von EnergieSchweiz)
ausgabe: 2001 (BBL-Bestellnummer 805.155 d / 4.02 / 1000; ersetzt die Vorgänger-Publikation «k-Wert-Berechnung und Bauteilekatalog – Sanierungen» von 1993)
gelesen: Seiten 1-80 von 84 (Seiten 81-84 sind leere Formular-/Rückumschlagseiten ohne Fachinhalt)
datenstand: ⚠ 2001, basiert auf SIA 380/1:2001. SIA 380/1 wurde seither 2009 und 2016 revidiert; Zielwerte sowie die Fenster-Grenzwerte aus SIA 180 gegen die aktuelle Normfassung und die kantonalen Wärmedämmvorschriften prüfen, bevor sie in einen Energienachweis wandern.
status: emerging
last_updated: 2026-08-03
---

# Destillat — U-Wert-Berechnung und Bauteilekatalog Sanierungen (BFE 2001)

> Schwesterpublikation zu `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]`, vom selben Autor
> (Kurt Marti). **Nur das hier destilliert, was am Sanierungs-Katalog eigenständig ist:**
> Sanierungs-Bauteilaufbauten, Innendämmung, bestehende (unsanierte) Konstruktionen und das
> Vorgehen bei Bestand. Formeln, λ-Werte-Tabellen, h-Werte und die Fenster-/Türen-Systematik
> (Kap. 5) sind mit dem Neubauten-Katalog identisch und werden dort nicht wiederholt.

## Das Wichtigste in einem Satz
Bei Sanierungen wird nicht der neue Aufbau frei berechnet, sondern der **bestehende, meist
unbekannte oder nur grob bekannte Bauteil-U-Wert als Startwert** genommen, aus dem Katalog
(Kap. 4) oder per Tabelle C mit der geplanten Zusatzdämmung verknüpft und der sanierte U-Wert
direkt aus den fertigen Nachschlagetabellen in Anhang I (homogen) bzw. Anhang II (inhomogen)
abgelesen — ohne eigene Rechnung.

## Was diese Publikation vom Neubauten-Katalog unterscheidet

- **Bezugspunkt ist der Bestand.** Jeder Katalog-Bauteil zeigt links den «Bestehenden Bauteil»
  mit dessen unsaniertem U-Wert (typisch 0.7 bis 4.5 W/(m²·K), je nach Konstruktion und
  vorhandener Dämmung), rechts die möglichen Sanierungsvarianten.
- **Drei Sanierungs-Prinzipien**, konsequent durchdekliniert:
  - **Aussensanierung** — Kompaktfassade (Dämmung + Aussenputz) oder hinterlüftete Fassade
    (Dämmung, Hinterlüftung, Wetterschutz).
  - **Innensanierung** — Verkleidung, Lattung/Leitungen, Dampfbremse, Dämmung von aussen nach
    innen gesehen; braucht bauphysikalische Abklärung (Tauwasserrisiko innenliegend).
  - **Kernsanierung** — nur bei Holzbalken-/Riegelkonstruktionen mit Hohlraum: die bestehende
    Füllung (z.B. Schlacke) wird durch neue Dämmung im selben Zwischenraum ersetzt oder ergänzt,
    ohne die Beplankung zu öffnen.
- **Eigene Bauteil-Nummernkreise** mit dem Zusatz «s» für Sanierung: **Bs** (Böden), **Ws**
  (Wände), **Ds** (Dächer/Decken) für homogene Bauteile; **Bsi, Wsi, Dsi** für inhomogene
  Bauteile (Holzbalken-/Riegelkonstruktionen mit durchdringender Lattung).
- **Ausdrücklicher Hinweis:** «Bei bestehenden Bauteilen ist die Bestimmung des U-Werts relativ
  schwierig, da der genaue Konstruktionsaufbau in den meisten Fällen nicht bekannt ist» — und
  Probebohrungen sind oft nicht möglich oder unverhältnismässig aufwändig.

## Vorgehen bei unbekanntem Bestand (zentrale Sanierungs-Regel)

- **Ist das bestehende Dämmmaterial nicht genau bestimmbar,** wird konservativ ein
  **λ-Wert von 0.040 W/(m·K)** eingesetzt (Beispiel 2, S. 17; Übung 1, S. 24: «Bs15» geht
  von diesem Wert aus). Das ist die praktische Faustregel des ganzen Katalogs für unbekannte
  Altdämmung.
- **Ist der genaue Aufbau überhaupt nicht bekannt,** ist die **geringste im Bauteilekatalog
  aufgeführte Wärmedämmdicke** einzusetzen (Kap. 4, Einleitungstext) — nie optimistisch nach
  oben schätzen.
- **Vor der Wahl der Sanierungsmassnahme sind bauphysikalische Abklärungen unerlässlich**,
  ausdrücklich betont: falsch gewählte Sanierungen (v.a. Innendämmung, unbelüftete Hohlräume)
  können der Bausubstanz Feuchteschäden zufügen.

## Tabelle C — das Sanierungs-Werkzeug ohne eigene Rechnung

Statt jede Schicht neu zu berechnen (Tabelle A wie im Neubau), reicht bei einer Sanierung:

1. Nummer des bestehenden, zu sanierenden Bauteils aus Kap. 4.1/4.2 (z.B. Ws15).
2. Dicke der bestehenden Dämmung `d bestehend`.
3. Neuer Dämmstoff (Material/Produkt), Dicke `d neu`, λ-Wert `λ neu`.
4. `U bestehend` aus dem Katalog (Kap. 4) ablesen.
5. `U saniert` direkt aus **Anhang I** (homogene Sanierung) oder **Anhang II** (inhomogene
   Sanierung, z.B. bei Kreuzlattung/Vollmetallkonsolen) ablesen — Eingang sind U bestehend
   (Zeilengruppe), λ neu (Zeile) und d neu (Spalte 6-24 cm).

Durchgerechnetes Beispiel aus der Publikation (Ws15, hinterlüftete Fassade, Vollmetall-Konsolen):
bestehende Kerndämmung 3 cm, neu 12 cm Flumroc-Dämmplatte 3 (λ = 0.034 W/(m·K)).
`U bestehend = 0.7`, `U saniert (Anhang I) = 0.21`, **plus Wärmebrückenzuschlag aus dem
Wärmebrückenkatalog für die Vollmetall-Konsolen (bei 2 Konsolen/m²: ΔU = 0.04 W/(m²·K))**
→ effektiver `U saniert = 0.25 W/(m²·K)`.

**Wichtig:** Bei hinterlüfteten Fassaden mit **Vollmetallsystem** (Aluminium-Unterkonstruktion
durchdringt die Dämmung punktuell) muss der Wärmebrückenzuschlag **separat** aus dem
Wärmebrückenkatalog addiert werden. Bei **Kreuzlattung** (Holzunterkonstruktion) ist dieser
Effekt bereits in den Anhang-II-Werten («inhomogene Sanierung») eingerechnet — kein
zusätzlicher Zuschlag nötig.

## Bestehende (unsanierte) U-Werte — repräsentative Auswahl aus dem Katalog

Alle Werte «ca.», gerundet, wie im Original ausgewiesen (Kap. 4.1/4.2, Seiten 26-61).

| Bauteil-Nr. | Konstruktion (bestehend) | U-Wert bestehend [W/(m²·K)] |
|---|---|---|
| Bs1/Bs2 | Boden gegen Aussenluft, ohne Dämmung | ca. 3.0 |
| Bs3/Bs4 | Boden gegen unbeheizt, ohne Dämmung | ca. 2.4 |
| Bs7 | Boden gegen Erdreich (Beton + Geröllschicht), ohne Dämmung | ca. 3.0 |
| Bs8/Bs9 | Boden gegen Erdreich (Steingutplatten/Sand), ohne Dämmung | ca. 4.3 |
| Bs10 | Boden gegen Erdreich, belüfteter Hohlraum, ohne Dämmung | ca. 2.6 |
| Bs13/14/15 | Boden gegen Erdreich mit Fussbodenheizung, ohne Dämmung | ca. 4.5 |
| Ws1/2/3 | Wand ca. 30 cm Mauerwerk, ohne Dämmung | ca. 1.1 |
| Ws4 | Natursteinmauerwerk, ohne Dämmung | ca. 0.9 |
| Ws5-7 | Wand mit bestehender Kerndämmung 0 cm (Referenz) | ca. 2.0 |
| Ws8-10 | Kalksandstein/Sichtbeton, ohne Dämmung | ca. 3.0 |
| Ws11/12 | Wand mit Hohlraum (Luftspalt 4-6 cm), ohne Dämmung | ca. 1.2 |
| Ws14/15/16 | Wand mit bestehender Kerndämmung 3 cm | ca. 0.7 |
| Ws20-25 | Wand mit bestehender Innendämmung 3 cm | ca. 0.7-2.5 |
| Ws26-29 | Wand gegen unbeheizt, ohne Dämmung | ca. 2.0-3.0 |
| Ws36-38 | Wand gegen Erdreich, ohne Dämmung | ca. 4.0-4.5 |
| Ws39/40 | Gasbeton 25-32.5 cm, ohne Zusatzdämmung | ca. 0.6-0.7 |
| Ws41-43 | Verbandmauerwerk mit bestehender Dämmung 5 cm | ca. 0.6 |
| Ws44/45 | Blockwand (Holz), ohne Dämmung | ca. 1.0 |
| Ds1/2/3 | Flachdach gegen Aussenluft, ohne Dämmung | ca. 3.0-3.5 |
| Ds10 | Decke gegen unbeheizt, ohne Dämmung | ca. 3.0 |
| Dsi1-4 | Sparrendach gegen Aussenluft, ohne Dämmung | ca. 4.0 |
| Dsi5/6 | Decke gegen unbeheizt (Balkenlage), ohne/mit Schlackenfüllung | ca. 0.9-2.0 |

## Spezialfall Umkehrdach/Plusdach bei der Sanierung
Gleiche Regel wie im Neubau: Wird die neue Dämmung **über** einer intakten, bestehenden
Abdichtung verlegt (Umkehrdach/Plusdach-Sanierung, Ds2/Ds4/Ds6/Ds8), ist ein
**20-%-Wärmedämmdicken-Zuschlag** einzurechnen, und die bestehende Dachhaut ist vorgängig
genau auf Feuchtigkeit/Fugen zu kontrollieren. Beim **Doppeldach** (Ds1/Ds3/Ds5/Ds7, neue
Dämmung + neue Abdichtung obendrauf) entfällt der Zuschlag, dafür wird die bestehende Dämmung
(falls belassen) auf einwandfreien Zustand geprüft.

## Innendämmung als Sanierungs-Sonderfall
Der Sanierungskatalog führt Innendämmung als **eigene, im Neubauten-Katalog nicht vorkommende
Kategorie** (Ws20-25, Ws36-38, Wsi5/6, Dsi3/4 u.a.). Charakteristisch:
- Aufbau von innen nach aussen: Verkleidung (z.B. Täfer/Gipskartonplatte) → Lattung/Leitungen
  → **Dampfbremse zwingend auf der warmen (Innen-)Seite** → Dämmung → bestehende Wand.
- Die Konstruktion ist damit **fast immer inhomogen** (Lattung durchdringt die Dämmschicht),
  U-Wert also aus Anhang II, nicht Anhang I.
- Innendämmung reduziert die nutzbare Raumfläche und verändert das Feuchteverhalten der
  bestehenden Wand grundlegend (kalte Aussenwand hinter der Dämmung) — genau der Fall, in dem
  die Publikation ausdrücklich vor Bauschäden ohne bauphysikalische Abklärung warnt.

## Die vier typischen Rechenfehler bei Bestands-U-Werten (Übung S. 19/20)
Die Publikation legt eine Kontrollübung mit vier eingebauten Fehlern vor, die in der Praxis
immer wieder vorkommen:
1. **Falscher Wärmeübergangskoeffizient hi**, oft fälschlich mit 6 statt korrekt
   8 W/(m²·K) eingesetzt.
2. **Falscher he gegen unbeheizte Räume**: dort gilt he = hi desselben Bauteils, nicht ein
   eigener Aussenwert.
3. **Rechenfehler d/λ** bei einer Einzelschicht (Zahlendreher/Kommafehler).
4. **Falscher λ-Wert trotz Produktangabe**: eine Produktspezifikation lag vor, der verwendete
   λ-Wert entsprach aber nicht diesem Produkt (Verwechslung mit dem generischen Tabellenwert).

Merksatz aus dem Original: bei Bauteilen gegen Aussenklima ist **he = 25 W/(m²·K)**, nicht
20 W/(m²·K) — ein häufiger Verwechslungsfehler mit dem alten, überholten Wert.

## Anhang I und II — Nachschlagetabellen U-Wert saniert (Ausschnitt)

Beide Anhänge liefern denselben Tabellenaufbau: **Zeilengruppe = U-Wert bestehend**
(0.4 bis ≥3.0 W/(m²·K)), darin **Zeile = λ der neuen Dämmung** (0.020 bis 0.050 W/(m·K)),
**Spalte = neue Dämmschichtdicke** (6 bis 24 cm). Anhang I gilt für homogene, Anhang II für
inhomogene Sanierungen (durchgehend etwas höhere U-Werte wegen der Lattungs-/Konsolen-
Wärmebrücke).

Ausschnitt für **U-Wert bestehend = 2.0 W/(m²·K)** (häufiger Fall: Wand oder Boden mit
Hohlraum, ohne wirksame Altdämmung):

| λ neu [W/(m·K)] | 8 cm | 12 cm | 16 cm | 20 cm | 24 cm (homogen, Anhang I) |
|---|---|---|---|---|---|
| 0.040 | 0.40 | 0.29 | 0.22 | 0.18 | 0.15 |
| 0.035 | 0.36 | 0.25 | 0.20 | 0.16 | 0.14 |
| 0.030 | 0.32 | 0.22 | 0.17 | 0.14 | 0.12 |

| λ neu [W/(m·K)] | 8 cm | 12 cm | 16 cm | 20 cm | 24 cm (inhomogen, Anhang II) |
|---|---|---|---|---|---|
| 0.040 | 0.45 | 0.33 | 0.26 | 0.21 | 0.18 |
| 0.035 | 0.42 | 0.30 | 0.24 | 0.19 | 0.16 |
| 0.030 | 0.38 | 0.27 | 0.21 | 0.17 | 0.15 |

(Vollständige Tabellen für alle 13 Ausgangs-U-Werte von 0.4 bis ≥3.0 W/(m²·K) und alle sieben
λ-Stufen 0.020-0.050 W/(m·K) in Anhang I, S. 69-71, und Anhang II, S. 72-74, des Originals.)

## Fenster und Türen (Kap. 5) — nur der Verweis
Die Formel `Uw = (Uf·Af + Ug·Ag + Ψg·lg) / Aw`, die Rahmen-U-Wert-Fallbacks (Holz 1.9,
Kunststoff 2.5, Verbundprofil 3.3 W/(m²·K)), die g-Wert-Fallbacks und die
Fenster-U-Wert-Tabelle nach Rahmenanteil sind **wortgleich mit dem Neubauten-Katalog**
(dort bereits destilliert, `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]` Kap. 5). Neu und
sanierungsspezifisch ist nur die **Türen-Tabelle** (Kap. 5.2, T1-T12): Haus-/
Wohnungseingangstüren mit Dämmkern erreichen 1.1-1.6 W/(m²·K) (Spanplatte + Dämmschicht +
Täferaufdopplung), Massivholztüren ohne Dämmung 2.2-2.8 W/(m²·K), Innentüren (nicht gedämmt)
2.0-2.9 W/(m²·K) — diese Werte sind identisch mit denen im Neubauten-Destillat bereits
festgehaltenen Fallback-Werten.

## Bauherren-Transfer

Für eine Bauherrschaft, die eine Sanierung plant, heisst dieser Katalog vor allem: der
**bestehende U-Wert ihres Hauses ist mit ziemlicher Sicherheit sehr schlecht** (1.0 bis über
4.0 W/(m²·K) je nach Bauteil und Baujahr) — der Sprung auf einen sanierten Wert um 0.15-0.25
W/(m²·K) bringt daher überproportional viel Komfort- und Heizkostengewinn pro investiertem
Zentimeter Dämmung, verglichen mit einer Aufdickung einer bereits guten Neubau-Dämmung.

Die Wahl zwischen Aussensanierung, Innensanierung und Kernsanierung ist selten nur eine
Kostenfrage: eine **Innensanierung** kostet Wohnfläche und verlangt zwingend eine korrekt
sitzende Dampfbremse (sonst Kondensat- und Schimmelrisiko genau in der bestehenden, oft
denkmalpflegerisch relevanten Aussenwand); eine **Aussensanierung** verändert die Fassade
(bei Sichtbackstein/Naturstein-Fassaden oft nicht zulässig oder nicht gewünscht) und braucht
bei hinterlüfteten Systemen mit Metallkonsolen einen separaten Wärmebrücken-Aufpreis; eine
**Kernsanierung** ist nur bei Holzbalken-/Riegelkonstruktionen mit nutzbarem Hohlraum möglich
und limitiert die einsetzbare Dämmdicke auf den vorhandenen Zwischenraum. Der Katalog macht
diese Entscheidung nicht für die Bauherrschaft, aber er liefert die Ausgangswerte, um sie
durchzurechnen, statt sie zu erraten.

Der ausdrückliche Hinweis der Publikation, dass falsch gewählte Sanierungsmassnahmen der
Bausubstanz Feuchteschäden zufügen können, ist ein Argument dafür, vor jeder Innendämmung
und jedem unbelüfteten Hohlraum eine bauphysikalische Fachperson beizuziehen, bevor Ausführung
und Angebot fixiert werden. Das ist reine Bauschadenprophylaxe, kein Nice-to-have.

## Offene Punkte

- Die vollständigen Anhang-I/II-Tabellen (13 Ausgangs-U-Werte × 7 λ-Stufen × 10 Dämmdicken)
  wurden nicht vollständig transkribiert, nur ein Ausschnitt für U bestehend = 2.0 W/(m²·K) —
  bei Bedarf gezielt für den konkreten Bestandswert im Original nachschlagen.
- Der vollständige Wärmebrückenkatalog (separate BFE-Publikation, hier nur referenziert für
  die Vollmetall-Konsolen-Zuschläge) ist nicht Teil dieses Destillats.
- Wie im Neubauten-Destillat: die Grenzwerte basieren auf SIA 380/1:2001 und sind gegen die
  heute gültige Fassung sowie die kantonalen Wärmedämmvorschriften zu prüfen, bevor sie in
  einen aktuellen Energienachweis einfliessen.
- Nicht transkribiert: die vollständige Liste aller 45 Ws-, 17 Bs-/Bsi- und 17 Ds-/Dsi-Bauteile
  mit allen Dämmdicken-Varianten (6-8-10 cm etc.) — die Tabelle oben ist eine repräsentative
  Auswahl der Ausgangswerte, keine vollständige Katalogwiedergabe.
