# Anlage Run 77 — Figur 11 der SIA 416:2003 (S. 56), N66-1 geschlossen

**Lauf:** Normen-Nacht Run 77, 02.09.2026 (MacBook Pro)
**Gegenstand:** `destillate/sia-416-2003.md`, Figurenanhang, **Figur 11 «Gliederung des
Nettogebäudevolumens»**, gedruckte Seite 56.
**Anlass:** N66-1 (Kopfblock `wiki/QUESTIONS.md`) — Run 66 hatte zwei Deutungen eines Agenten
zu dieser Figur bewusst **nicht** übernommen, weil der Hauptprozess sie nicht selbst
nachgelesen hatte.

**Methodenausweis.** Alle Zahlen unten hat der **Hauptprozess** an einem eigenen Rendering
gemessen (`pdftoppm -r 600`, Präfix `sia416-r77-hp-`, Methodik-Pflicht 5). Die Legenden-Swatches
der Figur 11 sind **an der Figur selbst** gemessen, nicht aus der Gesamtlegende S. 45
übernommen (Methodik-Pflicht 6: Legenden gelten nicht figurenübergreifend). Die gedruckte
Seitenzahl «56» ist **am unteren Seitenrand abgelesen**, nicht aus der Blattnummer gerechnet;
Seitenversatz null. Farbflächen und Linien sind **gerendert und rechnerisch aufgenommen**,
nicht per `pdftotext` (Methodik-Pflicht 8).

---

## 1. Gemessene Legende der Figur 11 (Median-RGB der Swatch-Innenflächen)

| Ziff. | Kategorie | Median-RGB |
|---|---|---|
| 5.1.1.1 | Hauptnutzvolumen **HNV** | 222 / 26 / 55 (rot) |
| 5.1.1.2 | Nebennutzvolumen **NNV** | 246 / 135 / 18 (orange) |
| 5.1.2 | Verkehrsvolumen **VV** | 246 / 227 / 4 (gelb) |
| 5.1.3 | Funktionsvolumen **FV** | 33 / 154 / 222 (blau) |

Das **Konstruktionsvolumen KV (5.2) kommt in Figur 11 nicht vor** — die Figur zeigt
ausschliesslich das **Netto**gebäudevolumen. Alles Konstruktive bleibt weiss. Das ist die
Voraussetzung, um die Linienbefunde unter Ziff. 3 richtig zu lesen.

## 2. Vollständige Aufnahme der eingefärbten Bereiche (Bounding Boxes, 600 dpi)

| Kategorie | Fläche (px) | y | x | Was es ist |
|---|---|---|---|---|
| FV blau | 87'100 | 3287–3547 | 3640–3975 | Einziger eingefärbter Bereich im **2. UG**; beidseits Wände, darunter ein gespreiztes Fundament |
| FV blau | 50'621 | 1658–1881 | 2004–2231 | Eigener Raum im **DG**, unmittelbar **über** dem gelben VV-Schacht |
| FV blau | 21'192 | 2312–2336 | 2263–3146 | **Waagrechtes Band** unter der Decke des 1. OG, über die volle Raumbreite |
| NNV orange | 519'569 | 2962–3245 | 2263–4126 | «Keller / Cave / Cantina», 1. UG; reicht **weiter nach rechts** als die Geschosse darüber |
| NNV orange | 129'357 | 1438–1950 | 1471–2230 | «Estrich / Grenier / Solaio», DG links |
| NNV orange | 9'067 | 1827–1950 | 3055–3146 | **Kleines Feld an der Traufseite des DG**, rechts am Raum «Wohnen» |
| HNV rot | mehrere | 1419–2920 | 2263–3195 | «Wohnen / Combles habitables / Mansarda» im DG sowie die Räume im 2. OG, 1. OG und EG |
| VV gelb | 289'315 | 1924–3419 | 2002–2231 | Schmaler, **durch alle Geschosse laufender** Schacht |
| VV gelb | mehrere | 1993–3242 | 1469–1980 | Treppenläufe (Stufen eingezeichnet), je Geschoss ein Block |

## 3. Der entscheidende Messbefund — Konstruktion gegen blosse Kategoriegrenze

In dieser Figur sind **Konstruktionsbauteile** und **Kategoriegrenzen** graphisch verschieden
codiert, und der Unterschied ist nur messbar, nicht zuverlässig sichtbar. Pixelschnitte quer
zur jeweiligen Trennung, Laufl. `S` = schwarz, `W` = weiss, `F` = Farbe:

| Trennung | Signatur | Deutung |
|---|---|---|
| Innenwand 1. OG (VV \| HNV), y = 2600 | `S6 W18 S6` | Konstruktion (weisser Kern) |
| Decke 2. OG / 1. OG, x = 2600 | `S6 W28 S6` | Konstruktion |
| Decke DG / 2. OG, x = 2600 | `S7 W27 S7` | Konstruktion |
| Wand DG: NNV(Estrich) \| FV, y = 1780 | `S6 W18 S6` | Konstruktion |
| Wand DG: FV \| HNV, y = 1780 | `S6 W18 S6` | Konstruktion |
| **DG: HNV \| NNV**, y = 1860/1880/1900/1920/1940 | **`S12`** | **keine Konstruktion** — zwei aneinanderstossende 6-px-Umrisse, kein weisser Kern; an allen fünf Höhen identisch |
| **1. OG: FV \| HNV**, x = 2400/2700/3000 | **`S5`** | **keine Konstruktion** |

**Jedes** Konstruktionsbauteil der Figur zeigt das Muster «Umriss / weisser Kern / Umriss» mit
einem Kern von 18 bis 28 px. Die beiden strittigen Grenzen zeigen **keinen weissen Kern**.

⚠ **Der Hauptprozess hat sich hier zuerst geirrt, und das gehört protokolliert:** beim blossen
**Betrachten** des 600-dpi-Ausschnitts wirkte der 12-px-Balken zwischen HNV und NNV im DG wie
eine Wand von derselben Strichstärke wie die übrigen — die daraus gezogene Deutung («abgetrennter
Abseitenraum, NNV also wegen der Nutzung») war falsch. Erst die Messung hat sie umgekehrt.
Das ist ein **zweiter, unabhängiger Fall** zu N66-2 (siehe Ziff. 6).

## 4. Verdikt zu den beiden Punkten aus N66-1

### A77-01 — Der blaue Streifen in der Deckenzone: **BESTÄTIGT**, und er trägt mehr als gemeldet

Vertikale Abfolge bei x = 2400 / 2700 / 3000, identisch:
`HNV(2. OG) | S6 W28 S6 (Decke) | FV 24 px | S5 | HNV(1. OG)`.

Das blaue Band liegt also **unterhalb** des Deckenkörpers, damit **innerhalb des
Nettogebäudevolumens des 1. OG**, und ist vom darunterliegenden HNV nur durch eine
Kategoriegrenze getrennt, nicht durch eine Konstruktion. Es ist eine **waagrechte
Installationszone** — nach Ziff. 5.1.3 «jener Teil des NGV, welcher für haustechnische Anlagen
**zur Verfügung steht**».

**Der Normtext trägt das ausdrücklich mit:** Ziff. 2.1.3 (S. 10) zählt zur FF neben Räumen für
Haustechnikanlagen auch «Ver- und Entsorgungsschächte, **Installationsgeschosse** sowie Ver- und
**Entsorgungskanäle**». Die Deutung stützt sich damit nicht allein auf die unbeschriftete Figur.

### A77-02 — Das orange Feld an der Traufseite: **EINGESCHRÄNKT bestätigt**

Bestätigt ist die **Beobachtung**: rechts im DG, an der Traufseite unter der Dachschräge, liegt
ein NNV-Feld, das unmittelbar an das HNV-Feld «Wohnen» grenzt, auf demselben Fussboden steht und
oben von der Dachschräge begrenzt wird — **ohne Konstruktion dazwischen** (Ziff. 3). Die HNV/NNV-
Grenze verläuft also **innerhalb eines durchgehenden Raumvolumens**, und das einzige, was sich
über diese Linie hinweg ändert, ist die verfügbare Höhe unter der Schräge.

**Nicht bestätigt ist die Begründung** «zu geringe Raumhöhe für HNV» als **Norm-Kriterium**.
SIA 416:2003 kennt an keiner Stelle einen Raumhöhen-Schwellenwert: HNF/NNF (Ziff. 2.1.1.1 /
2.1.1.2) und HNV/NNV (Ziff. 5.1.1.1 / 5.1.1.2) unterscheiden sich nach **Zweckbestimmung und
Nutzung** — HNF «im engeren Sinn», NNF als das, «welcher die Hauptnutzfläche zur Nutzfläche
ergänzt». An der Grenze in Figur 11 steht **kein Mass, keine Höhe, kein Schwellenwert**.

**Was daher ins Destillat gehört und was nicht:**
- **Ja:** Figur 11 zeigt, dass die HNV/NNV-Grenze **quer durch ein Raumvolumen** laufen kann und
  im Dachraum an der Traufseite auch tatsächlich so gezogen wird.
- **Nein:** ein Höhenkriterium oder gar ein Grenzwert. Wer aus dieser Figur eine Mindesthöhe
  ableitet, legt der Norm etwas unter, das sie nicht sagt — und würde es beim nächsten
  Dachausbau anwenden.

### A77-03 — Neu: die Volumenanteile sind **nicht** aus den Flächenanteilen ableitbar

Ziff. 5.1 und 5.1.1 sagen, NGV bzw. NV gliedere sich «**analog der Flächengliederung**». Das
Destillat gibt diesen Wortlaut an zwei Stellen unqualifiziert wieder. Figur 11 zeigt, dass
«analog» die **Gliederungsstruktur** meint und **nicht** die Zuordnung des einzelnen Volumens:

- Über **derselben Grundfläche** liegen im 1. OG zwei Volumenschichten verschiedener Kategorie —
  unten HNV, oben FV. In der Fläche ist dieselbe Grundfläche **einmal** vorhanden und **einmal**
  klassiert.
- Gegenprobe am selben Normwerk, vom Hauptprozess gemessen: In **Figur 4** (S. 49, Gliederung der
  NGF im Grundriss) tritt Blau (FF) nur als **zwei kompakte Felder** auf (48 × 160 px und
  126 × 79 px) — Schachtquerschnitt und kleiner Technikraum. Eine waagrechte Installationsebene
  **kann** im Grundriss gar nicht erscheinen.

**Praxisfolge:** Ein HNV/NGV-Verhältnis darf nicht aus dem HNF/NGF-Verhältnis fortgeschrieben
werden. Wer die Volumenanteile so herleitet, überschätzt HNV und übersieht FV systematisch.

### A77-04 — Neu: die raumweise Zuordnung der Figur, vom Hauptprozess gelesen

Estrich = **NNV** · Keller = **NNV** · Wohnen = **HNV** · Treppenläufe = **VV** ·
durchgehender Schacht = **VV** · Raum im DG über dem Schacht = **FV** · Raum im 2. UG = **FV** ·
waagrechte Zone unter der Decke des 1. OG = **FV**.

⚠ **Präzisierung gegenüber A66-19 (Run 66):** dort war «**Schacht = FV**» übernommen worden. In
Figur 11 ist der durch alle Geschosse laufende Schacht **gelb, also VV**; das FV-Feld ist der
**darüberliegende eigene Raum im DG**, durch eine reguläre Decke (`S7 W27 S7`) getrennt. Beides
ist normkonform, aber es sind zwei verschiedene Dinge: Ziff. 2.1.2 zählt **Aufzugsschächte** zur
VF, Ziff. 2.1.3 die **Ver- und Entsorgungsschächte** sowie **Motorenräume von Aufzugs- und
Förderanlagen** zur FF. Die Aussage «Schacht = FV» ist deshalb nur für den **Installations**schacht
richtig und für den **Aufzugs**schacht falsch. Die Formulierung ist nicht ins Destillat gelangt
(dort steht «Schacht = FF» ausschliesslich zu Figur 4, und das ist gemessen richtig) — der Punkt
wird hier festgehalten, damit er nicht aus der Anlage von Run 66 weiterwandert.

## 5. Was NICHT geprüft wurde

1. **Die Zahl der HNV-Teilflächen im EG** ist nicht raumweise aufgelöst; die roten Regionen
   verschmelzen im Rendering über Geschossgrenzen hinweg, wo sie sich berühren.
2. **Der französische und italienische Normteil** wurde für Figur 11 nicht beigezogen — der
   Figurenanhang ist ohnehin dreisprachig beschriftet.
3. **Absolute Masse** lassen sich der Figur nicht entnehmen; sie trägt keinen Massstab. Alle
   Angaben oben sind Verhältnisse bzw. Pixelmasse des eigenen Renderings.

## 6. Zweiter Beleg für N66-2 (Signaturen messen statt betrachten)

Run 66 hat die Frage an Raphael ausdrücklich zurückgestellt, weil **ein** Fall zu wenig für eine
Methodik-Pflicht ist, und hat die Bedingung genannt: «wird erst vorgelegt, wenn ein zweiter
unabhängiger Fall dazukommt». **Der Fall liegt jetzt vor**, und er ist in drei Punkten unabhängig
vom ersten:

| | Run 66 (Figur 12) | Run 77 (Figur 11) |
|---|---|---|
| Art der Signatur | **Flächen**signatur (Vollton gegen Schraffur) | **Linien**signatur (Umriss gegen Konstruktion) |
| Wer irrte | ein Agent, und das Destillat seit Monaten | **der Hauptprozess selbst**, beim Betrachten des eigenen 600-dpi-Ausschnitts |
| Folge des Irrtums | Verweis auf die falsche Kategorie | Umkehrung der Begründung (Nutzung statt Höhe) |

Damit ist die Beobachtung nicht mehr an einen Einzelfall gebunden, und sie ist auch nicht auf
Farbflächen beschränkt. Vorlage an Raphael im Laufbericht.
