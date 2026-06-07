---
name: 2026-06-07_buch-run0_dachausbau-wangen-chaled
typ: Anwendungsfall (Trainingsmodell B — Fall-Nachrechnung)
fall: Dachgeschoss-Analyse Mehrfamilienhaus mit Arztpraxis, Wangen SZ, Bahnhofstrasse 27, Parz. 25
anfrage: David Chaled (drdavidchaled@gmail.com), Mail «Ausbau Dachgeschoss» 2026-06-07
kanton: SZ (Wangen, Bezirk March, 8855) — hergeleitet, siehe Punkt 0
quellen_buch: ["Bd 2, Kap. 14, S. 919-961 (Methodik Ausnuetzung/Anrechnung)"]
quellen_recht: ["BauR Wangen SZ Art. 27 (Dachausbau), Art. 31 (Geschosszahl/Vollgeschoss), Art. 28; § 60 PBG SZ"]
status: belastbare Ersteinschaetzung — Zone + DG-Flaeche ≥1.80 m noch zu verifizieren
last_updated: 2026-06-07
---

# Dachgeschoss Wangen SZ, Bahnhofstrasse 27 — baurechtliche Ersteinschaetzung

> Erster Anwendungsfall des Buch-Trainings. **Buch = Methodik** (Zuercher Standardwerk),
> **binding = Schwyzer Recht** (BauR Wangen SZ + PBG SZ), weil das Objekt in Wangen **SZ** liegt.

## 0. Kanton — hergeleitet (das Dokument nennt ihn nicht ausdruecklich)

Die GRULÉR-Vermessung nennt nur «Wangen, Bahnhofstrasse 27, Parz. 25» — **ohne Kanton/PLZ**.
Hergeleitet ueber den **Vermesser**: GRULÉR GmbH sitzt in **Richterswil ZH** (Seestrasse 53,
8805), am oberen Zuerichsee an der Grenze zur March/Hoefe. Das naheliegende «Wangen» ist
**Wangen SZ** (Bezirk March, PLZ **8855**, mit Bahnhofstrasse) — nicht das ~40 km entfernte
Wangen-Bruettisellen ZH im Glattal. Bestaetigt: Wangen SZ hat eine Bahnhofstrasse (local.ch)
und Arztpraxen. **→ Es gilt Schwyzer Recht.** (Letzte Bestaetigung: Parzelle 25 im SZ-GIS.)

Folge: Das Zuercher Standardwerk liefert **Begriffe und Methodik**; die **verbindlichen Werte**
stehen im **Baureglement Wangen SZ** (in der KB: `raw/…_amtlich_sz_baur-wangen-sz.md`) und im
**PBG/PBV SZ**.

## 1. Bestand (aus GRULÉR-Gebaeudevermessung, 14.01.26, SIA 416)

| Geschoss | GF (m²) | HNF (m²) | Nutzung |
|----------|---------|----------|---------|
| UG | 298.8 | — | Garagen (3+), Keller, Heizung/Tank, Luftschutz |
| EG | 240.1 | 175.4 | **Arztpraxis** |
| OG1 | 223.9 | 166.9 | **2 Wohnungen**: WHG 1 4.5-Zi 105.0 m², WHG 2 2.5-Zi 61.9 m² |
| OG2 | 152.3 | 117.7 | Teil von WHG 3 |
| DG | 107.3 | 78.0 | Teil von WHG 3 (Wohnessküche, 3 Zimmer, Wirtschaftsraum, Estrich) |
| **Total** | **1'022.4** | **538.0** | |

- «Grosse, veraltete Wohnung» = **WHG 3**, 7.5-Zi-**Maisonette OG2 + DG**, 195.7 m².
- Schnitt: DG-Boden +7.93, First +12.05; Gebaeude hat **Lift**. Unter der Dachschraege teils
  nur ~1.90 m; im Plan die **1.50-m-Hoehenlinie** (Orientierung) eingezeichnet.

## 2. Kernregel Wangen SZ — Dachausbau ist anrechnungsfrei bis 2/3 (Art. 27 BauR)

> **Art. 27 BauR Wangen SZ:** In Wohnbauten in den Wohn-/Wohn-Gewerbezonen kann das
> Dachgeschoss ausgebaut werden, **ohne dass die Geschossflaeche zur anrechenbaren
> Bruttogeschossflaeche (BGF) gezaehlt wird**, sofern:
> - a) die **BGF ≤ 2/3 der Grundflaeche des darunterliegenden Vollgeschosses** (bei
>   **Satteldach nur Bodenflaechen mit lichter Raumhoehe ab 1.80 m** angerechnet);
> - b) **Kniestockhoehe ≤ 1.20 m** (bei Satteldach, ab OK rohe Decke bis Schnittlinie Fassade);
> - c) der Ausbau die **Projektionslinie zwischen zulaessiger Gebaeude- und Firsthoehe** an den
>   Laengsfassaden **nicht schneidet** (§ 60 Abs. 3 lit. c PBG SZ);
> - d) uebrige Bauvorschriften (Art. 32 BauR etc.) eingehalten.

**Nachrechnung der Schwelle:** darunterliegendes Vollgeschoss = **OG2 (Grundflaeche 152.3 m²)**.
`2/3 × 152.3 = 101.5 m²`. Anrechenbar ist die **DG-Bodenflaeche mit lichter Hoehe ≥ 1.80 m**
(nicht die volle GF 107.3): liegt diese **≤ 101.5 m²**, ist der Ausbau **anrechnungsfrei**.
- DG-HNF ist 78.0 m² → die ≥1.80-m-Flaeche duerfte **unter 101.5 m²** liegen → **gute Chance,
  dass der Ausbau ohne Ausnuetzungsbelastung zulaessig ist.** Genau zu ermitteln aus den
  Plaenen (Flaeche innerhalb der 1.80-m-Linie) — die GRULÉR-Plaene liefern die 1.50-m-Linie;
  fuer Art. 27 ist die **1.80-m-Linie** massgebend.

## 3. Die Vollgeschoss-Falle (Art. 31 BauR) — wichtigste Restriktion

> **Art. 31 Abs. 3 BauR:** Dach-/Attikageschosse **gelten als Vollgeschoss**, wenn ihre
> anrechenbare BGF **mehr als 2/3 derjenigen des darunterliegenden Vollgeschosses** betraegt.

Dieselbe ~101.5-m²-Schwelle: Ueberschreitet die anrechenbare DG-BGF sie, **zaehlt das DG als
Vollgeschoss** und damit zur **Geschosszahl** der Zone. Dann droht eine Verletzung der
zulaessigen Geschosszahl (Wangen SZ kennt Kernzone, W2, W2NS, W2O, W3, W4). **→ Vor dem Ausbau
die Zone von Parz. 25 und die zulaessige Geschosszahl klaeren.** Heute: EG + OG1 + OG2 = 3
Vollgeschosse + DG. Bleibt das DG unter 2/3, ist es **kein** Vollgeschoss — unkritisch.

## 4. «Welche Moeglichkeiten?» und «Zwei Wohnungen?»

**Ausbau-Varianten** (alle unter dem 2/3-Deckel + Kniestock ≤1.20 m + Hoehen-Projektionslinie):
- **A Innensanierung im Volumen** — unkompliziert; Aufenthaltsraeume brauchen **lichte Raumhoehe
  ≥ 2.25 m** (BauR/Wohnhygiene; DG-Schraege beachten).
- **B Dachflaechenfenster/Lukarnen** — mehr Kopfhoehe/Flaeche, darf 2/3-Deckel + Hoehenlinie
  nicht sprengen; Lukarnenbreite gesamthaft ≤ 2/3 der Fassadenlaenge (Art. ~ BauR, Zeile 227).
- **C Vollausbau Wirtschaftsraum/Estrich** — kann die anrechenbare Flaeche ueber 101.5 m² treiben
  → Vollgeschoss-/Ausnuetzungsfolge (Art. 31) — sorgfaeltig rechnen.

**Aufteilung WHG 3 → 2 Wohnungen:** aendert die Ausnuetzung **nicht**. Auszuloesen:
Pflichtparkplaetze (zusaetzliche Wohnung; Reserve durch 3 Garagen + Vorplatz vorhanden),
Erschliessung je Einheit (**Treppenhaus + Lift vorhanden** → guenstig), Schall-/Brandschutz
(2. Rettungsweg), Wohnhygiene je Einheit. Die DG-Einheit allein (78 m² HNF, tiefe Raeume) ist
als eigenstaendige Wohnung **grenzwertig** — steht/faellt mit Belichtung + Raumhoehe.

## 5. Empfehlung / vor dem Rueckruf an Chaled

1. **Zone von Parz. 25** (Wangen SZ-GIS/OEREBlex) → zulaessige Geschosszahl + AZ.
2. **Anrechenbare DG-Flaeche ≥ 1.80 m** aus den Plaenen ausmessen → gegen **101.5 m²** halten
   (Art. 27/31). Darunter: Ausbau anrechnungsfrei und DG kein Vollgeschoss.
3. **Kniestock ≤ 1.20 m** und **First-/Gebaeudehoehen-Projektionslinie** (§ 60 PBG SZ) pruefen.
4. **Telefonat:** Bestand hochwertig (Lift, Praxismieter, viel Parkierung). Innensanierung gut
   machbar; Mehrflaeche/Teilung nach 2/3-Check und Wohnhygiene. Saubere Variante: Ausbau
   **unter** dem 2/3-Deckel halten → anrechnungs- und geschosszahlneutral.

## Belege

- Recht (binding): **BauR Wangen SZ** Art. 27 (Dachausbau, 2/3-Regel, Kniestock 1.20 m),
  Art. 31 (Vollgeschoss-Schwelle 2/3), Art. 28 (anrechenbare Landflaeche); **§ 60 PBG SZ**.
  Quelle: `wissen/baurecht/raw/260607_amtlich_sz_baur-wangen-sz.md`.
- Methodik (Buch): [[14-nutzungsdichte-ausnuetzung]] — AZ-Formel, anrechenbare Geschossflaeche,
  Dach-/UG-Anrechnung, Wohntauglichkeit (Belichtung/Raumhoehe).

> *Hinweis: Ersteinschaetzung, ersetzt keine Rechtsberatung. Zone/Parzellenflaeche und die
> exakte DG-Flaeche ≥ 1.80 m sind vor verbindlicher Aussage zu verifizieren.*
