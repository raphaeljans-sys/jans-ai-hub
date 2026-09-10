---
title: 2619 KISPI, Bodenanschluss innere Verglasung EI30 auf bestehendem Heizestrich (Belegsammlung Bestand)
status: established
last_updated: 2026-09-10
sources:
  - "Jegen AG, Werkplan ID411.288_1.OG_Sek.30_FB4 «Festverglasung Cristallo EI30», 09.08.2023, Detail D-D/E-E (KISPI-Dokumente, 70 Unternehmerdokumentation, LOS_274.01 Innere Verglasungen Sued, 08_Pläne Unternehmer/02_Ausführungspläne/Paket 033_01_30_FB4_EI30)"
  - "Jegen AG, Offerte O-91161-01.1 vom 23.06.2026, BKP 274.01 Innere Verglasungen (Umbau 2026), Vorbemerkungen"
  - "Steger AG, Ausführungsplan Fussbodenheizung Grundriss 1.OG Sektor 41 (AF_FBH_OG1_S_41.pdf) und FBH-Berechnung OG1 (FBH_Berechnung_OG1_S_AB/CD.pdf), 70 Unternehmerdokumentation, LOS_242.11_Heizung Kälte Sued/08_Pläne Unternehmer/1.1d Fussbodenheizung/03 O1"
  - "Schallmessprotokolle LOS_274.01 (ift Rosenheim Prüfbericht 163 33437/Z04 PLANLINE F30; Jegen System LBW mit Dilatationsprofil, Messblatt N03 vom 20.01.2023)"
  - "JANS Architektenplan 2619-274.01-01 «Innere Verglasungen Neu», 21.07.2026 (Legende «EI30 / 35dB»)"
---
# Befund

> **Schwester-Reports zum selben Los/Vorgang:**
> `/Volumes/daten/jans-ai-hub/wissen/projekt-lessons/outputs/2026-08-28_bestandsstandard-beschlaege-unternehmerdokumentation.md`
> (Bestandsstandards in der Rubrik 70) und
> `/Volumes/daten/jans-ai-hub/wissen/grobkosten/outputs/2026-08-28_kennwerte-ei30-schiebetueren-kispi.md`
> (Jegen-Offerte, Kennwerte EI30). *Aus dem Frontmatter-Feld `links:` hierher verschoben
> 10.09.2026 (Wissens-Chef Lauf 57): `outputs/`-Reports tragen dieses Feld nicht
> (`wissen/WISSEN-CLAUDE.md` Z. 60-66, Präzedenzfall PL46-2 vom 08.09.2026 in dieser KB); der
> zweite Link zeigte zudem in eine fremde KB und löste nicht auf.*

Bei der Frage, wie eine neue innere Verglasung EI30 (Jegen) im 1.OG PPTS auf den bestehenden
Heizestrich gestellt werden kann, ohne den Unterlagsboden auszuspitzen, liegen alle
Bestandsbelege in der Unternehmerdokumentation der Bauplattform (Rubrik 70), gespiegelt in
der KISPI-Dokumente-Bibliothek auf dem Mac Mini. Die Truninger-Plattform selbst (DS3) ist
ueber `connectors/truninger-ds3.mjs` nur vom Mac Mini aus erreichbar (Zugangsdatei
`~/.truninger-ds3.env` liegt nur dort); die rekursive Suche `--suche` ueber die ganze Rubrik 70
ist zu langsam (nach 10 Minuten ohne Treffer abgebrochen), der lokale Spiegel ist der schnellere Weg.

## Bestandsdetail Jegen (Neubau 2023)

Werkplan ID411.288, Detail D-D/E-E: Sockelfries Massivholz 70 mm hoch, 85 bzw. 95 mm breit,
steht auf der fertigen Bodenoberkante; Befestigung mit Schraube senkrecht durch den
Bodenaufbau in die Betondecke (im Detail als Gewindeschraube unter dem Fries gezeichnet,
Nut 36 x 30 mm im Fries). Anschlussfugen «bauseits». Festverglasung Cristallo EI30,
VKF Nr. 26347, Brandschutzglas Monoscheibe 22 mm, Rw 30 dB (Planangabe).

## Umbau 2026 (Jegen, LOS 274.01)

Offerte O-91161-01.1, Vorbemerkung: «Einzeichnen der Bohrungen fuer die Befestigung auf die
Betonplatte (Bodenheizung) ist eine bauseitige Leistung». Jegen plant also selbst die
Befestigung durch den Estrich in die Decke; das Einmessen der Heizrohre liegt bei JANS.
Das Schiebetor S1 Glisse (EI30, Wandtasche) gehoert NICHT in die Schallbetrachtung: es steht
im Normalbetrieb offen in der Wandtasche und schliesst nur im Brandfall den horizontalen
Fluchtweg (Vorgabe Raphael 10.09.2026). Es traegt nichts zur akustischen Trennung bei und ist
fuer die Frage Korridor/Aufenthalt irrelevant.
Schallwerte der Umbau-Werkplaene (BIK-Satz): Tuerblatt VL 68 Rw 35 dB, Brandschutzglas
Monoscheibe 24 mm Rw 40 dB, VSG Weissglas 16.7 mm Rw 35 dB, Bruestungselement EI30
VKF 14937 Rw 39 dB (System LBW, gemessen 39 dB, Messblatt N03). Architektenplan-Legende
verlangt «EI30 / 35dB».

## Bodenaufbau 1.OG (Steger)

Fussbodenheizung Metallverbundrohr 16 x 2 mm, Verlegeabstand 200 mm (Sektor 41),
Estrichueberdeckung ueber Rohr Su = 69 mm (Berechnung OG1), also rund 85 mm Zementestrich
ueber der Daemmung; Daemmdicke in den Unterlagen nicht belegt. Rohre sind an
Bewegungsfugen 4 mm x 30 cm ummantelt. Planvermerk: Zuleitungen werden mittig durch die
Tueren gefuehrt (Bohrpunkte in ehemaligen Tuerachsen sind kritisch). Der Plan zeigt
Fugeneinteilung und Sperrzonen.

# Lehre

1. Fuer Bestandsdetails eines Gewerks zuerst den lokalen Spiegel der Rubrik 70 auf dem
   Mac Mini durchsuchen (`find` nach Los und Stichwort), nicht die DS3-Suche.
2. Vor jeder Bohrung in den KISPI-Heizestrich den Steger-Sektorplan ziehen und die
   Rohrlage vor Ort per Thermografie bestaetigen; das ist im Jegen-Vertrag ausdruecklich
   bauseits.
3. SIA 181 setzt innerhalb einer Nutzungseinheit keine Anforderung (Ziff. 0.1.2); ein
   Zielwert wie 35 dB Korridor/Aufenthalt ist eine Projektvorgabe und gehoert als solche
   in die Nutzungsvereinbarung.
   *Fundstelle und Querbezug (Nachtrag Wissens-Chef Lauf 57, 10.09.2026):* SIA 181:2020,
   Ziff. 0.1.2 (Beleg `wissen/normen/destillate/sia-181-2020-faq.md`; Fundstelle und Ausgabe
   führt die KB `normen`). Für den Schutz **innerhalb** der Nutzungseinheit verweist die Norm
   auf die Empfehlungen im informativen Anhang G der Vorgängerausgabe SIA 181:2006; der Hub
   führt sie in `wissen/energie/destillate/sia-181-schallschutz-anforderungswerte.md`
   (Abschnitt «Empfehlungen INNERHALB einer Nutzungseinheit», Sekundärquelle, Anhang G in
   `normen` noch nicht destilliert): Altersheim/Spital, Korridor zu Zimmer, **D_i 30 dB
   (Stufe 1) / 35 dB (Stufe 2)**. Der Projektwert 35 dB ist damit zahlengleich mit Stufe 2.
   Vorbehalt Bezugsgrösse: D_i ist ein Bauwerkswert, die Elementwerte oben sind Rw; ob die
   Planlegende «EI30 / 35dB» das eine oder das andere meint, ist offen (`wiki/QUESTIONS.md`).
