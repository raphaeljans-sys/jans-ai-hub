---
quelle: Vollzugshilfe EN-102 «Wärmeschutz von Gebäuden» (EnFK/EnDK, Ausgabe Januar 2020, Basis SIA 380/1:2016), Kapitel 8; Kt. ZH Vollzugsordner Energie (Sept. 2022), Abschnitt 2.3a + 7.2; Kt. Zürich Hochbauamt «Richtlinie Sommerlicher Wärmeschutz bei Neubauten und Umbauten», 23.01.2023 (Version 5.1); Stadt Zürich AHB «Wegleitung Sommerlicher Wärmeschutz bei Bauvorhaben der Stadt Zürich»; MuKEn 2025 Volltext Art. 1.8/1.9/1.10 (EnDK, verabschiedet 29.08.2025, amtl. PDF endk.ch/wp-content/uploads/2026/04/MuKEn2025_d-2025-08-29.pdf, hier Spiegel energiehub-gebaeude.ch/wp-content/uploads/2025/09/MuKEn2025_d-2025-08-29.pdf); Kt. Schwyz Vollzug (energie-zentralschweiz.ch/vollzug/vollzug-schwyz.html; sz.ch Amt für Umwelt und Energie, Seite «Energienachweis»)
herausgeber: Konferenz Kantonaler Energiefachstellen (EnFK/EnDK); Kanton Zürich Baudirektion Hochbauamt; Stadt Zürich Amt für Hochbauten (AHB); Kanton Schwyz Amt für Umwelt und Energie
ausgabe: EN-102 Ausgabe Januar 2020 (Basis SIA 380/1:2016) · HBA-Richtlinie 23.01.2023 · Stadt-ZH-Wegleitung (laufend, undatiert) · Vollzugsordner Sept. 2022 · MuKEn 2025 Art. 1.9, verabschiedet 29.08.2025 · Kt.-SZ-Vollzugsseiten (Stand Abruf 25.07.2026)
gelesen: 2026-07-16 (curl+pdftotext, Volltext aller vier Dokumente); 2026-07-25 (MuKEn-2025-Originaltext Art. 1.7-1.11 + Erläuterungen per curl+pdftotext vollständig gelesen; Kt.-SZ-Vollzugsseiten via WebFetch gelesen)
datenstand: 2026-07-16 — SIA-180:2014-Grenzwerte für Verfahren 1 direkt zitiert; Verfahren-2-gtot-Grenzwerte für Fassadenfenster (Fig. 12) über SIA 180 Ziff. 5.2.4.1 aus KB `normen` ergänzt (Wissens-Chef Run 6), Fig. 13 (Dachflächenfenster) weiterhin offen; V3-Kriterium auf Norm (Fig. 3, 0 h) vs. Vollzugs-Abweichung (Fig. 4, 100/400 h) präzisiert; EN-ZH-Formularstruktur amtlich bestätigt. **2026-07-25 ergänzt:** MuKEn 2025 Art. 1.9 (Basismodul-Ebene, ⚠ Empfehlung der EnDK, noch nicht automatisch geltendes kantonales Recht) sowie Kt.-SZ-Vollzug (EVEN seit 1.1.2026, keine eigene, von der nationalen EN-102-Vollzugshilfe abweichende Wegleitung auffindbar — Negativbefund, siehe unten)
status: established
last_updated: 2026-07-25
---

# Sommerlicher Wärmeschutz — Nachweisverfahren nach SIA 180:2014 (Kt. ZH)

**Das Wichtigste in 1 Satz:** SIA 180:2014 bietet drei gestufte Nachweisverfahren für den
sommerlichen Wärmeschutz — je strenger die baulichen Kennwerte (Verfahren 1), desto weniger
Rechenaufwand; wer diese nicht erfüllt, rechnet mit orientierungsabhängigen g/fc-Grenzwerten
(Verfahren 2) oder braucht bei geplanter Kühlung zwingend eine dynamische Simulation
(Verfahren 3) — im Kt. ZH dokumentiert über die Formulare EN-102a/b und EN-110-ZH unter dem
Hauptformular EN-ZH (seit 1.1.2026 via EVEN-Plattform).

> **Querbezug KB normen (Norm-Fundstellen):** Die **SIA-180:2014-Fundstellen** (Ziff. 5.2.2.3/Tab. 8
> Glasanteile · Ziff. 5.2.4.1/Fig. 12 gtot je Orientierung · Ziff. 5.2.6.3/Fig. 3 Simulations-
> kriterium) liegen ziffern-genau im Destillat `wissen/normen/destillate/sia-180-2014` (aus dem
> Original-PDF, Kernkapitel verifiziert 13.07.2026) — **von dort ziehen statt aus Vollzugshilfen
> rekonstruieren** (Rule `normen-referenz`). Dieser Artikel führt die **Vollzugs-/Anwendungsebene**
> (EN-102, ZH-Vollzugsordner, HBA-Richtlinie, Stadt-ZH-Wegleitung), nicht den Normtext.
>
> **Querbezug KB planungsgrundlagen (Nachweis-VERFAHREN/Formulare):** Das **EN-ZH-/EVEN-Verfahren**
> selbst (Formularstruktur, Private Kontrolle, EVEN-Plattform) führt
> `wissen/planungsgrundlagen/wiki/energie-energienachweis-zh-formulare`,
> `…/energie-even-plattform-bedienung` und `…/energie-private-kontrolle-zh` — hier nur so weit, wie
> es den sommerlichen Wärmeschutz betrifft.

## Die drei Nachweisverfahren (SIA 180:2014)

| Verfahren | Prinzip | Wann anwendbar |
|---|---|---|
| **1 — einfache Ausschluss-Kriterien** | Pauschale, konservative Kennwerte + Nachtauskühlung; kein Rechnen nötig | Standardfall ohne Kühlungsabsicht, wenn alle Kriterien erfüllbar sind |
| **2 — Berechnung** | g-Wert/gtot in Abhängigkeit von Orientierung, Glasanteil fg, Wärmedämmung + Wärmespeicherfähigkeit | Wenn Verfahren 1 nicht erfüllt ist oder differenzierter geplant wird |
| **3 — dynamische Simulation** | Thermische Raumtemperatursimulation (validiertes Programm). **Normatives Kriterium (SIA 180 Ziff. 5.2.6.3):** alle berechneten empfundenen Temperaturen liegen unter der oberen Grenzkurve von **Figur 3** — die Norm kennt hier **kein Stundenkontingent** (0 h Überschreitung). Die Kontingente 100 h/400 h sind **Abweichungen der Vollzugsstellen** (Stadt-ZH-Wegleitung Ziff. 4.1.1 mit Figur 4 statt Figur 3; HBA-Richtlinie über SIA 382/1) — siehe unten «Berechnungsbasis (Stadt ZH)». | Zwingend bei aktiver Kühlung/Kältemaschine, bei Ventilatoreinsatz, bei komplexen Räumen (&gt;2 Fassaden, atypische Raumtiefe/Nutzung) |

Die Reihenfolge ist gestuft: Erst Verfahren 1 prüfen, dann bei Nichteinhaltung 2, erst wenn auch
das nicht reicht 3. **Verfahren 1 und 2 lassen keine aktive Kühlung (inkl. Geocooling) zu** —
deren Notwendigkeit kann ausschliesslich über Verfahren 3 nachgewiesen werden.

## Verfahren 1 — konkrete Grenzwerte (EN-102, Kt. ZH-Vollzugsordner)

- Dachfenster/Oberlichter mit Sonnenschutz **&lt; 5 %** der Fläche des darunterliegenden Raumes
- U-Wert Dachkonstruktion **≤ 0,20 W/(m²·K)**
- Fassadenfenster mit aussenliegendem Sonnenschutz, **Windwiderstandsklasse 6** (SIA 342)
- **g-Wert für Sonnenschutz und Verglasung zusammen ≤ 0,10**
- Raumtiefe gegenüber Fenstern **mind. 3,5 m** (bzw. **mind. 7 m** bei gegenüberliegenden Fenstern)
- Wärmespeicherfähigkeit mindestens **«mittel»** nach SIA 180:2014 (+ Wärmedurchlasswiderstand der
  raumseitigen Oberflächen-Deckschicht ≤ 0,1 m²K/W)
- Nachtauskühlung: **mind. 10 m³/h pro m² Geschossfläche** (natürlich oder mechanisch),
  Abluftöffnung an höchster Stelle im Raum

## Verfahren 2 — Eingabegrössen

- **Fensterorientierung** (Nord/Ost/Süd/West, Sonderregelung für Eckräume)
- **Glasanteil fg** = sichtbare Glasfläche / totale äussere Ansichtsfläche des Fassadenausschnitts
  (SIA 180 Ziff. 5.2.4) — separat für Fassadenfenster (Figur 12) und Dachflächenfenster/
  Oberlichter (Figur 13, ab fg &gt; 0,25 ggf. nur noch über Entlüftung lösbar)
- **gtot = g-Wert Verglasung × Reduktionsfaktor fc des Sonnenschutzes** — Grenzwerte je Orientierung
  für **Fassadenfenster (Figur 12)** gemäss **SIA 180:2014 Ziff. 5.2.4.1**: N-Fassade gtot ≤ 0,20/fg
  (max. 1,00) · NE/NW ≤ 0,13/fg (max. 0,28) · E/SE/S/SW/W ≤ 0,07/fg (max. 0,15).
  Fundstelle geführt in der KB `normen` (siehe Querbezug unten); für punktgenaue Kurvenauslesung
  die Originalfigur verwenden. **Figur 13** (Dachflächenfenster/Oberlichter) ist dort nicht als
  Formel erfasst — bleibt offener Punkt.
- **Wärmespeicherfähigkeit** des Raumes (gering/mittel/hoch), abgeleitet aus den vier Bauteilen
  Decke, Boden, Innenwände, Aussenwand: massiv/verputzt = hoch, Leichtbau (Holz, Gipskarton,
  abgehängt, Doppelboden) = gering. Kombinationsregel (Stadt-ZH-Wegleitung 4.3.2): z. B. 3
  Bauteile hoch + 1 mittel → Raum «hoch»; 2 hoch + 2 gering → Raum «mittel»
- Zusätzlich für Verfahren 2 nach EN-102: U-Wert Dach ≤ 0,20 W/(m²·K), Wärmespeicherfähigkeit
  ≥ 45 Wh/(m²·K), Nachtauskühlung wie Verfahren 1, Sonnenschutz muss natürliche Belichtung
  gewährleisten und Windwiderstandsklasse nach SIA 342 Anhang B.2 einhalten

**Beispielwerte gtot (SIA 382/1:2007, Anhang C, weiterhin als Referenz zitiert):**

| Verglasung + Sonnenschutz (45°) | Ug [W/m²K] | g [-] |
|---|---|---|
| Zweifachglas normal + Aussenlamellen pastell | 2,9 | 0,13 |
| Zweifach-Wärmeschutzglas + Aussenlamellen pastell | 1,3 | 0,09 |
| Dreifach-Wärmeschutzglas + Aussenlamellen pastell | 0,7 | **0,07** |
| Zweifach-Wärmeschutzglas + Innenlamellen hell | 1,3 | **0,40** |
| Dreifach-Wärmeschutzglas + Innenlamellen hell | 0,7 | 0,36 |

Der Unterschied aussen ↔ innen beträgt Faktor 4–5 bei sonst identischer Verglasung.

## Wann Verfahren 3 (Simulation) zwingend wird

- Sobald eine **Kältemaschine** eingebaut wird oder Kühlung gemäss SIA 382/1:2014
  (Ziff. 4.5.2–4.5.4) als «notwendig» oder «erwünscht» gilt
- Sobald **Ventilatoren** im Raum als Massnahme eingesetzt werden
- Bei Räumen mit **mehr als 2 Fassaden** oder sehr grosser/geringer Raumtiefe
  (Stadt-ZH-Kriterium 4.3.2 — die einfache Speichermassen-Abschätzung versagt hier)
- Wenn interne Lasten stark von den SIA-2024-Standardwerten abweichen und keine passende
  Minergie-Tool-Nutzungskategorie existiert
- Berechnungsbasis (Stadt ZH): Klimadatensätze «DRY 2035» (RCP 2,6) und «DRY 2060» (RCP 2,6 und
  zusätzlich RCP 8,5), SIA 2028 Klimaszenarien; max. **100 Übertemperaturstunden** (SIA 180
  Figur 4) für Neubauten/Gesamtinstandsetzungen, bestehende Bauten/Wohnbauten 400 Stunden
  (SIA 382/1); Kühlleistungsauslegung auf max. 100 h Überhitzung (bzw. 400 h Bestand/Wohnen)

## Bezug zum ZH-Formular EN-ZH / EVEN

Das kantonale **Hauptformular EN-ZH** ist nur die Übersicht über die einzureichenden Unterlagen;
der eigentliche sommerliche Wärmeschutz wird über die **technischen Formulare EN-102a
(Einzelbauteilnachweis) bzw. EN-102b (Systemnachweis)** unter «Wärmedämmung» geführt
(Vollzugshilfe EN-102, Kapitel 8). Wird eine Kühl-/Klimaanlage eingebaut, kommt zusätzlich das
**ZH-spezifische Formular EN-110-ZH «Kühlung/Befeuchtung»** dazu. Seit 1.1.2026 laufen neue
Nachweise über die **EVEN-Plattform** (elektronischer Vollzug energetischer Nachweise,
energievollzug.ch); einzelne Formulare sind (Stand Recherche) noch nicht integriert und bleiben
als PDF verfügbar. Wichtig: der **energierechtliche** Nachweis (EN-102, Kapitel 8) ist eine
bewusste Vereinfachung von SIA 180 — «hohe sommerliche Lasten treten selten mit hohen Windlasten
auf», daher sind nicht alle SIA-180-Anforderungen energierechtlich relevant. Sind die
EN-102-Vorgaben erfüllt, gilt der Nachweis als erbracht, ohne dass zusätzlich der volle
SIA-180-Apparat bemüht werden muss. Für **freiwillige** Bauherren-/Investorenanforderungen
(Komfort, Zertifizierung, private Bauherrschaften wie Stadt ZH) gelten oft strengere Zielwerte
als das gesetzliche Minimum (siehe unten).

## Freiwillige Zielwerte der Stadt-ZH-Wegleitung (strenger als das Gesetz, gute Praxis)

- Fensterflächenanteil möglichst **30–50 %** der Fassadenfläche (Zielkorridor, nicht Grenzwert)
- Oberlichter/Dachflächenfenster in Summe **≤ 5 %** der Raumgrundfläche
- Räume mit mittleren/hohen internen Lasten (**&gt; 175 Wh/(m²d)**, SIA 2024) sollen nicht an
  mehr als einer Fassade im Bereich Ost-Süd-West liegen, sonst Gesamtglasfläche ≤ 50 % der
  grössten Fassadenfläche
- Variabler Sonnenschutz auf **gtot ≤ 0,10** auslegen; Ausnahme nur kleine Nordfenster oder
  ganztags verschattete Fenster ohne Reflexionen
- Aussenliegende bewegliche Systeme: **Windwiderstandsklasse 4** nach SN EN 13659+A1 als Minimum
  (ohne automatische Steuerung eine Klasse höher)

## MuKEn 2025 Art. 1.9 — künftige Basismodul-Anforderung (Ausblick)

Die MuKEn 2025 (EnDK, verabschiedet 29.08.2025) hebt den sommerlichen Wärmeschutz erstmals in
einen eigenen, kurz gefassten **Basismodul-Artikel** (bisher war er in den meisten kantonalen
Umsetzungen der MuKEn 2014 nur über die Vollzugshilfe EN-102 geregelt, nicht über einen eigenen
Gesetzesartikel):

- **Art. 1.9 Abs. 1:** «Der sommerliche Wärmeschutz von Gebäuden ist nachzuweisen» — unverändert
  ein zwingender Nachweis für jeden Neubau.
- **Art. 1.9 Abs. 2:** Bei gekühlten Räumen oder Räumen, bei denen eine Kühlung «notwendig oder
  erwünscht» ist, müssen g-Wert, Windfestigkeit UND automatische Steuerung des Sonnenschutzes
  «nach dem Stand der Technik» erfüllt sein. Die Begriffe «notwendig»/«erwünscht» definiert die
  MuKEn 2025 über **SIA 380/2, Ausgabe 2022, Ziffer 3.2** (Kommentar zu Art. 1.9 Abs. 2) — eine
  Norm-Referenz, die von der oben zitierten Stadt-ZH-/HBA-Praxis (dort SIA 382/1:2014) abweicht;
  **ob dies eine echte Verschiebung der Referenznorm oder nur eine andere Zitierweise derselben
  Systematik ist, bleibt an dieser Stelle offen** (siehe «Offene Punkte»).
  **Ausnahme:** reversibel betriebene Wärmepumpen für Wohnbauten OHNE zusätzliche aktive
  Kühlabgabeelemente (Kühldecken, Fancoils) sind von der Steuerungspflicht befreit — normale
  Heizkörper-/Flächenheizungssysteme zählen ausdrücklich NICHT als aktive Kühlabgabe.
- **Art. 1.9 Abs. 3:** Bei allen anderen Räumen (inkl. **allen** Wohnbauten, auch ohne Kühlabsicht)
  ist zumindest der **g-Wert-Anforderung an den Sonnenschutz nach Stand der Technik** einzuhalten
  — der sommerliche Wärmeschutz ist damit nicht optional, auch wenn keine Kühlung geplant ist.
- **Art. 1.10 Abs. 3 (Befreiungen):** ausdrücklich befreit sind u.a. provisorische Bauten (Bewilligung
  ≤ 3 Jahre), Umnutzungen ohne neu unter Art. 1.8 fallende Räume, Nachweis eines anerkannten
  Rechenverfahrens ohne erhöhten Energiebedarf bei gewährleisteter Behaglichkeit, Gebäudekategorie
  XII sowie Räume mit Personenaufenthalt unter einer Stunde pro Tag, und Bauteile, die aus
  betrieblichen Gründen nicht ausrüstbar sind (Beispiel im Kommentar: verglaste Tore/Türen aus
  Arbeitssicherheitsgründen).

⚠ **Rechtsstatus:** MuKEn 2025 ist eine **Empfehlung der EnDK an die Kantone**, noch **kein
automatisch geltendes kantonales Recht** — die Umsetzung erfolgt erst über eine kantonale
Gesetzesrevision (Kt. ZH: EnerG basiert aktuell noch auf MuKEn 2014, siehe Destillat
`[[muken-2025-verabschiedet]]`). Der oben dokumentierte EN-102-/Vollzugsordner-Weg bleibt bis zu
einer kantonalen Revision der geltende Massstab.

## Kt. Schwyz — Vollzug

Der Kanton Schwyz hat die Mustervorschriften **MuKEn 2014** per 1. Mai 2022 (Übergangsfrist bis
1. August 2022) in kantonales Recht überführt (kEnG/KEnV, energie-zentralschweiz.ch/vollzug/
vollzug-schwyz.html). Für den sommerlichen Wärmeschutz konnte auf den geprüften amtlichen
Kt.-SZ-Seiten (Amt für Umwelt und Energie, Stand Abruf 25.07.2026) **keine eigene, von den ZH-
Dokumenten abweichende Wegleitung oder ein SZ-spezifisches Formular** gefunden werden —
insbesondere keine dem Stadt-ZH-«Freiwillige-Zielwerte»-Dokument entsprechende, strengere
Vollzugspraxis. Das spricht dafür, dass Kt. SZ den sommerlichen Wärmeschutz wie die übrigen
Kantone über die **nationale EnFK-Vollzugshilfe EN-102** (dieselbe Grundlage wie oben für Kt. ZH
dokumentiert) abwickelt, ohne eigene Verschärfung. **Dies ist ein Negativbefund** (nichts gefunden,
nicht «nichts existiert») — bei einem konkreten SZ-Projekt beim Amt für Umwelt und Energie
(energie@sz.ch, +41 41 819 19 90) das aktuell gültige Formular bestätigen lassen.

- **Einreichweg:** Seit **1.1.2026** laufen auch in Kt. SZ Energienachweise über die
  **EVEN-Plattform** (energievollzug.ch) — derselbe Systemwechsel wie in Kt. ZH, zeitgleich.
  Vor dem 1.1.2026 eingereichte PDF-Nachweise werden im bisherigen Verfahren fertig bearbeitet.
- **Private Kontrolle:** Kt. SZ kennt wie Kt. ZH die Möglichkeit, den Energienachweis inkl.
  Wärmedämmung/Klima-/Lüftungsanlagen durch **befugte externe Fachpersonen** prüfen zu lassen
  (Private Kontrolle) statt durch das Amt selbst.

## Bauherren-Transfer

- **Bei grossen Glasflächen zuerst den aussenliegenden, automatisch gesteuerten Sonnenschutz
  einplanen** — er ist der wirksamste Einzelhebel (Faktor 4–5 gegenüber innenliegend) und oft
  günstiger als eine spätere Kältemaschine.
- **Speichermasse früh sichern:** sichtbare Betondecke/Backstein statt abgehängter Decke und
  Teppich/Doppelboden verschiebt die Raumklasse von «gering» auf «mittel»/«hoch» — kostenlos in
  der Rohbauplanung, teuer/unmöglich im Nachhinein.
- **Nachtauskühlung als Entwurfsfaktor:** Querlüftung über Fenster/Fassade zu Fassade braucht eine
  planerische Entscheidung (Grundriss, Sicherheit) — nicht erst in der Ausführung lösbar.
- **Sobald eine Kühlmaschine gewünscht wird, ändert sich das Nachweisregime komplett** (Verfahren
  3, dynamische Simulation, zusätzliches Formular EN-110-ZH) — das früh im Vorprojekt klären, weil
  es Planungszeit und -kosten auslöst.

## Offene Punkte

- **SIA 180:2014 Figur 13** (gtot-Grenzwerte für Dachflächenfenster/Oberlichter je Orientierung und
  Glasanteil fg) liegt in den geprüften Vollzugshilfen nur als Grafik/Abbildung vor und ist auch in
  der KB `normen` nicht als Formel erfasst — hier bleiben die Zahlenwerte offen.
  *(Erledigt durch Wissens-Chef Run 6, 2026-07-16: **Figur 12** — Fassadenfenster — ist über
  SIA 180 Ziff. 5.2.4.1 aus dem Original-PDF belegt und oben eingearbeitet. Die frühere Begründung
  «SIA-180-Normtext kostenpflichtig, nicht direkt eingesehen» war überholt: das Original liegt auf
  SharePoint und war seit 13.07.2026 in `wissen/normen/destillate/sia-180-2014` destilliert —
  Rule `normen-referenz`: Norm-Fundstellen aus der KB `normen` ziehen, nicht aus Vollzugshilfen
  rekonstruieren.)*
- Genaue Definition der Fc-Grenzwerte (0,30/0,35 je nach Verglasungstyp g ≤/&gt; 0,40), die in
  einer ersten Web-Recherche auftauchten, konnte nicht auf eine belegte Primärquelle
  zurückgeführt werden — nicht übernommen, bis verifiziert.
- ~~Aktueller Stand der EVEN-Formularmigration~~ — **geschlossen durch Verweis** (Wissens-Chef Run 6):
  führend in `wissen/planungsgrundlagen/wiki/energie-even-plattform-bedienung` (EnDK-Schulung V1.4
  vom 13.10.2025, Teilnachweis-Logik, realer KISPI-Fall). Hier nicht doppelt führen.
- Minergie-Nachweistool «Sommerlicher Wärmeschutz» (Variante 1 Globalbeurteilung / Variante 2 =
  SIA-180-Verfahren-3-äquivalent) im Detail nicht eigenständig geprüft, nur referenziert.
- SIA 2028:2010 Klimaszenarien-Datensätze (DRY 2035/2060, RCP 2.6/8.5) als Open Data nicht selbst
  verifiziert.
- **Neu (2026-07-25):** MuKEn-2025-Kommentar zu Art. 1.9 Abs. 2 zitiert **SIA 380/2:2022 Ziff. 3.2**
  für die Definition «Kühlung notwendig/erwünscht», während die Stadt-ZH-/HBA-Praxis oben **SIA
  382/1:2014** zitiert. Ob es sich um eine Normen-Ablösung, zwei parallel zitierfähige Normen oder
  einen Kommentierungs-Ungenauigkeit handelt, ist nicht verifiziert — für den ZH-Vollzug bleibt SIA
  382/1:2014 massgebend, solange EnerG ZH nicht auf MuKEn 2025 revidiert ist.
- **Kt. SZ:** nur Negativbefund («keine eigene Wegleitung gefunden») dokumentiert, kein positiver
  Beleg für ein SZ-spezifisches Formular/Merkblatt zum sommerlichen Wärmeschutz — bei realem
  SZ-Projekt beim Amt für Umwelt und Energie verifizieren.

**Backlinks:** [[behaglichkeit-raumklima-kbob-ipb]] · [[fenster-verglasung-uw-g-wert]] ·
[[enfk-en-102-waermeschutz-2018]] (Uw-Anforderung ZH) · [[sommerlicher-waermeschutz]] (Wiki-Synthese) ·
[[betonkernaktivierung-tabs-energieeffizienz]] (Bauteilkühlung/Nachtauskühlung als Massnahme, ersetzt
den SIA-180-Nachweis nicht, ist aber ein möglicher Baustein darin, F138) · [[muken-2025-verabschiedet]]
(Basismodul-Kontext, Rechtsstatus Empfehlung)

**Cross-KB:** `wissen/normen/destillate/sia-180-2014` (Norm-Fundstellen, führend) ·
`wissen/planungsgrundlagen/wiki/energie-energienachweis-zh-formulare` +
`…/energie-even-plattform-bedienung` (Nachweisverfahren/EVEN, führend)
