---
quelle: "04_Merkblätter/Bemessung Kalksandstein.pdf"
herausgeber: "Verband Schweizer Kalksandstein-Produzenten (K·S·V), Postfach 432, 3250 Lyss (Herausgeber, S.16); erarbeitet von Dr. Joseph Schwartz, Consulting Engineer, CH-6315 Oberägeri (Titelblatt)"
ausgabe: "«Kalksandstein-Mauerwerk. Bemessung nach Norm SIA 266 für Standard-Einsteinmauerwerk», Ausgabe Herbst 2012 (Titelblatt; Druckvermerk S.16: September 2012, Auflage 500 Ex.), 16 Seiten"
gelesen: "Run 42 (030826): Volltext gelesen (16 S., PDF-Rendering via Read-Tool, Seite für Seite als Bild); Diagramme S.6/8/9/10/11/13 und Tabelle S.12 visuell abgelesen, keine Textextraktion"
datenstand: "September/Herbst 2012"
status: "speculative (Erstdestillat Run 42, 03.08.2026, noch keine unabhängige Verifikation)"
last_updated: 2026-08-03
links: [[REGISTER]]
---

## Das Wichtigste in 3 Sätzen

Das K·S·V-Merkblatt übersetzt die Bemessungsregeln der Norm SIA 266 «Mauerwerk» (Ausgabe 2003, vgl. `sia-266-2003.md`, established in dieser KB) in direkt anwendbare Diagramme und Kennwerte für Standard-Einsteinmauerwerk aus Kalksandstein (Bezeichnung «MK»), und deckt sowohl die Tragsicherheit (Theorie 2. Ordnung, vorgegebene Wandexzentrizität und aufgezwungene Wandverdrehung) als auch die Gebrauchstauglichkeit (rechnerische Rissweite) ab. Grundlage sind die Bemessungswerte fxd = 3.5 N/mm² und Exd = 3.5 kN/mm² (charakteristisch fxk = 7.0 N/mm², Exk = 7.0 kN/mm²) für die vier Standard-Wanddicken 120/145/180/200 mm; die Diagramme geben die zulässige Normalkraft Nxd in Funktion der Knicklänge hcr und des Bemessungs-Auflagerdrehwinkels ϑd. Zwei vollständig durchgerechnete Beispiele (Innenschale einer Aussenwand im Zweischalenmauerwerk, hoch belastete Zwischenwand) sowie ein eigenes Kapitel zu bewehrtem Mauerwerk und zu konstruktiven Anschlussdetails ergänzen die Bemessungsdiagramme.

## Herausgeber, Titel, Normbezug

Titelblatt: «KALKSANDSTEIN-MAUERWERK. Bemessung nach Norm SIA 266 für Standard-Einsteinmauerwerk», erarbeitet von Dr. Joseph Schwartz, Consulting Engineer, CH-6315 Oberägeri, Ausgabe Herbst 2012. Letzte Seite (S.16, Druckvermerk): «September 2012 | Auflage: 500 Ex.», herausgegeben durch den Verband Schweizer Kalksandstein-Produzenten (K·S·V), Postfach 432, 3250 Lyss, www.kalksandstein.ch. Es handelt sich damit um ein **Verbandsmerkblatt** (Werbe-/Anwendungshilfe des Baustoffherstellerverbands), nicht um eine Norm-Auslegung eines SIA-Gremiums.

Normgrundlage (S.2, «Grundlagen»): «Massgebend für die Dimensionierung von Mauerwerk und insbesondere von Wand/Decken-Systemen ist die Norm SIA 266 «Mauerwerk» basierend auf den Normen SIA 260 und 261.» Auf S.2 ist das Titelblatt der Norm SIA 266 / SN 505 266 als Grundlage abgebildet. Das Merkblatt betont ausdrücklich (S.2): «Es liegt in jedem Fall in der Verantwortung des Ingenieurs, diese Berechnungshilfen in Bezug auf das betreffende statische Problem im Rahmen der massgebenden Normen und der fachspezifischen Grundsätze zu interpretieren» sowie: «Der Nachweis der Tragsicherheit und Gebrauchstauglichkeit entspricht exakt dem Vorgehen der Norm» (S.2).

Abgleich mit der JANS-Normen-KB: `sia-266-2003.md` führt SIA 266 als seit 1. Januar 2003 gültige, in dieser KB als established verifizierte Norm (Ersatz der Empfehlung SIA V177/1995). Das K·S·V-Merkblatt (2012) bezieht sich damit auf die nach heutigem KB-Stand weiterhin aktuelle Norm-Ausgabe; ein Hinweis auf eine seither erfolgte Ablösung von SIA 266:2003 liegt in der KB nicht vor. Für bewehrtes Mauerwerk wird zusätzlich «in Anlehnung an die Norm SIA 262, Betonbauten» (S.12) verwiesen, ohne Jahreszahl.

## Bemessungskennwerte Standard-Einsteinmauerwerk (Typ MK)

Durchgehend verwendete Bemessungswerte (S.6, S.8, S.13):

- fxd = 3.5 N/mm² — Bemessungswert der Mauerwerksdruckfestigkeit (S.3, S.6)
- fxk = 7.0 N/mm² — charakteristischer Wert der Mauerwerksdruckfestigkeit (S.3, S.8)
- Exd = 3.5 kN/mm² — Bemessungswert des Elastizitätsmoduls des Mauerwerks (S.3, S.6)
- Exk = 7.0 kN/mm² — Elastizitätsmodul, charakteristisch (S.3, S.8)
- Partialfaktoren (S.3): γG = 1.35 (Eigenlasten) und γQ = 1.5 (Nutzlasten) für Tragsicherheit; je 1.0 für Gebrauchstauglichkeit
- Faktor k1 (Reissen der Decke): ungerissen k1 = 1, gerissen k1 = 2 (S.3)
- Vier Standard-Wanddicken tw für die Diagramme: 120 mm, 145 mm, 180 mm, 200 mm (S.6, S.8)

Für bewehrtes Standard-Einsteinmauerwerk MK zusätzlich (S.13):
- vertikale Bewehrung: fxd = 3.5 N/mm², fsd = 435 N/mm²
- horizontale Bewehrung: fyd = 1.0 N/mm² (Mauerwerksdruckfestigkeit parallel zu den Lagerfugen), fsd = 435 N/mm²
- Widerstandsbeiwerte (S.12): Mauerwerk γM = 2.0, Stahl γS = 1.15

## Tragsicherheitsnachweis (S.4, S.6)

Nachweisbedingung: Nxd ≤ kN · lw · tw · fxd (S.4). Der Beiwert kN wird aus Diagrammen abgelesen (zwei Diagrammtypen S.4: Wand mit beidseits gleicher Exzentrität ez, sowie eingespannt am Fuss mit hcr = 0.7 hw bzw. hcr = hw), abhängig vom Verhältnis hw/tw und der bezogenen Exzentrizität ez/tw. Zwischen den Kurven darf interpoliert werden (S.4, ausdrücklich vermerkt).

Für Standard-Einsteinmauerwerk MK liefert S.6 vier direkte Bemessungsdiagramme (Nxd über hcr, Kurvenschar nach Bemessungs-Auflagerdrehwinkel ϑd = 0.0001 bis 0.025 rad), je eines für tw = 120/145/180/200 mm. Der Bemessungswert ϑd des Auflagerdrehwinkels der einfach gelagerten Decke wird berechnet aus (S.5):

ϑd = [k1 · k2 · (γG·g + γQ·q) · l1³] / (2 · E'cd · tD³) [rad]

mit k2 = Anteil der Lastabtragung der Decke in der betreffenden Richtung, l1 = bezogene Spannweite der Decke, E'cd = Bemessungswert des Elastizitätsmoduls des Betons (i.d.R. 10·10⁶ kN/m²), tD = Dicke der Decke. Knicklänge hcr der Wand (S.3): bei voll eingebundenen Decken hcr = 0.5 h bis 0.6 hw bzw. 0.7 hw (je nach Spannweiten/Nutzlasten); bei teilweise eingebundenen Decken hcr = hw bzw. 0.7 hw.

## Gebrauchstauglichkeit / Rissweite (S.4, S.7-8)

Grundbedingung (S.4): ez/tw ≤ 1/6. Für den genaueren Nachweis (S.7) wird ϑ nach derselben Formel wie oben, aber mit Gebrauchslasten (γ = 1.0) berechnet; die rechnerische Rissweite r ergibt sich aus Diagrammen (S.8, vier Wanddicken 120/145/180/200 mm) über die Bezugsgrösse Nxo (ohne physikalische Bedeutung, nur zur Optimierung der Diagramm-Anwendungsbereiche) und r200 (Rissweite bei Schichthöhe 200 mm; allgemein r = h0/200 · r200).

Anforderung gemäss SIA 266 (S.7, wörtlich referenziert): normale Anforderungen r ≤ 0.20 mm, hohe Anforderungen r ≤ 0.05 mm.

## Beispiele (S.9-11)

**Beispiel 1** (S.9-10): Innere Schale einer Aussenwand in Zweischalenmauerwerk, 4 Geschosse + Dachraum, tw = 145 mm, hcr = 2.03 m im untersten Geschoss. Lasten g = 7.5 kN/m², q = 4.0 kN/m², k2 = 0.70. Ergebnis Tragsicherheit: Nxd = 127.6 kN/m1 gegenüber Nxd ≅ 150 kN/m1 aus dem Diagramm (Tragsicherheit nachgewiesen). Ergebnis Gebrauchstauglichkeit: rechnerische Rissweite r200 ≅ 0.32 mm, bei effektiver Schichthöhe 150 mm reff = 0.24 mm. Beurteilung im Merkblatt: «Beim Zweischalenmauerwerk ist der Riss an der Wandaussenseite der tragenden Schale unbedenklich. Bei nicht allzu hohen Normalkräften erscheint der innere Riss am Übergang Decke-Wand im Bereich des Unterlagsbodens.» (S.10)

**Beispiel 2** (S.11): Hoch belastete Zwischenwand im untersten Geschoss mit unterschiedlichen Deckenspannweiten (3.0 m / 5.0 m), tw = 180 mm, hcr = 1.89 m, k2 = 0.80, Last aus Obergeschossen N'xd = 300 kN/m1. Ergebnis: Nxd = 351.6 kN/m1 gegenüber Nxd ≅ 450 kN/m1 aus dem Diagramm (Tragsicherheit nachgewiesen).

## Bewehrtes Mauerwerk (S.12-13)

Statische Berechnung «aufgrund der Norm SIA 260, Grundlagen der Projektierung von Tragwerken, SIA 261, Leistungseinwirkungen, und der Norm SIA 266, Mauerwerk, in Anlehnung an die Norm SIA 262, Betonbauten» (S.12). Bemessung auf Biegung analog zu bewehrten Betonbauteilen nach SIA 262 und SIA 266; Formeln für Druckzonenkraft D, Bewehrungskraft Z und Hebelarm z sind für vertikale und horizontale Bewehrungsrichtung getrennt tabelliert (S.12). Einschränkungen: statische Höhe des bewehrten Mauerwerksquerschnitts wird um 10 mm reduziert (Bautoleranz Einmörtelung), Druckzone auf ¼ der Wanddicke begrenzt (Verformungsfähigkeit). Zur Aktivierung von fyd sind gemäss Art. 4.3.4.3 SIA 266 die Stossfugen vollfugig zu vermörteln (S.12). Diagramme für Bemessungsmoment Md über Bewehrungsgehalt as, getrennt vertikal (S.13, statische Höhe dd = 40 bis 200 mm) und horizontal (S.13, dd bis 200 mm).

## Konstruktive Hinweise (S.14-15)

- Tragende Innenwände: Mindestwanddicke 12 cm (S.14)
- Nichttragende Innenwände (Ausfachwände, Hintermauerungen): eigene Standsicherheit durch Versteifungen/Riegel/Anschlüsse sicherzustellen; Wandlängen über 10 m benötigen Lagerfugenbewehrung (jede 2. Lagerfuge) (S.14)
- Zwängungsspannungen bei Mischbauweise (unterschiedliche Wandlasten) sind zu berücksichtigen; bei bis zu drei Geschossen im Normalfall unproblematisch (S.14)
- Zur Vermeidung horizontaler Risse in den unteren Lagerfugen: Dachpappe/Plastikfolie zwischen Decke und Mauerwerk, Zementmörtel mit hoher Haftzugfestigkeit (S.15)
- Vier Anschlusslösungen an Stahl-/Stahlbetonstützen dargestellt (Stahlprofil, Nute, Anschlussanker) (S.15)
- Freistehende, senkrecht zur Ebene beanspruchte Wände: wenn möglich vermeiden; sonst seitlich halten und mit ausreichender vertikaler Bewehrung versehen, in der Decke unterhalb der Wand verankert (S.15)

## Offene Punkte

- Die genaue SIA-266-Ausgabe auf dem im Merkblatt abgebildeten Norm-Deckblatt (S.2) war auf dem gerenderten Bild nur bedingt scharf lesbar; die Übereinstimmung mit `sia-266-2003.md` stützt sich auf den KB-Abgleich (identischer Titel «Mauerwerk», SN 505 266), nicht auf eine pixelscharfe Jahreszahl-Verifikation am Merkblatt selbst.
- Das angekündigte «Computerprogramm zur Bemessung von Mauerwerkswänden» (S.2, «im weiteren ist vorgesehen … zu entwickeln») ist im Merkblatt selbst nicht enthalten; unklar, ob und wo dieses Tool später erschienen ist.
- Die Diagrammkurven (S.6, S.8, S.13) sind Kurvenscharen ohne numerische Tabellenwerte; die im Destillat zitierten Zahlenwerte stammen ausschliesslich aus den zwei durchgerechneten Beispielen (S.9-11), nicht aus einer vollständigen Digitalisierung der Diagramme. Für Bemessungsfälle ausserhalb dieser Beispiele sind die Original-Diagramme direkt heranzuziehen, nicht dieses Destillat.
- Keine Angaben im Merkblatt zu Brandwiderstand, Schallschutz oder Wärmeschutz von Kalksandstein-Mauerwerk (ausserhalb des Geltungsbereichs dieses Dokuments).
