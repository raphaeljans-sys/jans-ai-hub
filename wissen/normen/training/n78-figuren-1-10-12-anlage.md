# Anlage Run 78 — messende Abdeckungsrunde auf den Figuren 1-10 und 12 der SIA 416:2003

**Lauf:** Normen-Nacht Run 78, 03.09.2026, MacBook Pro (Stations-Split: nur SIA/VKF).
**Quelle:** `PL - 02_Recht_Norm/02_Normen/SIA_Norm/SIA_Normen/alle/416_2003_dfi.pdf`,
SIA 416:2003, Figurenanhang S. 44-57. Seitenversatz **null**, an der Fusszeile der
S. 46 («46 SIA 416, Copyright © 2003 by SIA Zürich») abgelesen und an S. 49/53/55/57
über die Figurentitel gegengeprüft.
**Arbeitsgegenstand:** der von Run 77 als einziger Hebungs-Blocker benannte Rückstand —
die messende Abdeckungsrichtung des Hauptprozesses lief bis dahin auf **einer** von zwölf
Figuren (Figur 11). Dieser Lauf fährt sie auf den übrigen **elf**.
**Render-Präfix des Hauptprozesses:** `sia416-r78-` (Methodik-Pflicht 5). Refuter-Agenten
mit eigenen Präfixen `r78-refA-` / `r78-refB-` / `r78-refC-` in eigenen Arbeitsverzeichnissen.

---

## Teil 0 — Methode

Gearbeitet wurde **rechnerisch**, nicht betrachtend (Methodik-Pflicht 8). Vorgehen je Figur:

1. Seite bei 300 dpi rendern (Detailfragen zusätzlich bei 600 dpi als Ausschnitt).
2. **Legenden-Swatches an der jeweiligen Figur selbst messen** — nicht aus der
   Gesamtlegende S. 44/45 übernehmen (Legenden gelten nicht figurenübergreifend).
3. Jedes Pixel per **Nächste-Farbe-Klassierung** gegen die selbst gemessenen Swatches
   zuordnen (euklidischer RGB-Abstand, Schwelle 45; schwarz = max(RGB) < 110).
4. Figuren derselben Serie **gegeneinander registrieren** (Suche der besten Translation
   über die Deckung der schwarzen Linienmasken) und danach **kreuztabellieren**.
5. Innen/Aussen-Signatur über den **Schwarzanteil** in einer sauberen Teilfläche
   bestimmen, nicht über den Weissanteil — siehe die Selbstkorrektur unter Ziff. 6.

**Die Kreuztabellierung ist der eigentliche Abdeckungstest.** Sie prüft nicht, ob eine
Aussage des Destillats stimmt, sondern ob die Figuren untereinander aufgehen — und macht
damit sichtbar, was in keiner Aussage vorkommt.

### Zwei Serien, nicht eine

| Serie | Figuren | Seiten | Zeichnung |
|---|---|---|---|
| Grundriss | 1, 2, 3, 4 | 46-49 | **derselbe** Grundriss, viermal eingefärbt; deckungsgleich bis auf 0-4 px |
| Schnitt (Flächen) | 5, 6 | 50-51 | **derselbe** Schnitt, zweimal eingefärbt; deckungsgleich bis auf 4 px in x |
| Beispielsammlung | 7 | 52 | eigenständig, vier Zeilen |
| Schnitt (Volumen) | 8, 9, 10, 11, 12 | 53-57 | **derselbe** Schnitt, fünfmal eingefärbt; deckungsgleich bis auf 6-8 px |

**Gemessener Nebenbefund:** Die Schnittserie der Flächen (Fig. 5/6) und die Schnittserie
der Volumen (Fig. 8-12) zeigen **dasselbe Beispielgebäude**, sind aber **zwei verschiedene
Zeichnungen** in verschiedener Lage auf dem Blatt: die beste Translation zwischen S. 50 und
S. 53 erreicht nur 30'555 von rund 74'000 gemeinsamen Linienpixeln, innerhalb der Serien
dagegen 55'000 bis 110'000. Fläche und Volumen sind damit am selben Objekt vergleichbar,
aber nicht pixelweise.

---

## Teil A — Was gemessen wurde (Hauptprozess)

### A78-01 — Die Grundrissserie geht pixelgenau auf: GF = NGF + KF und NGF = HNF+NNF+VF+FF
**Fundstelle:** S. 46-49, Figuren 1-4, ganze Zeichnungsfläche.
**Messung:** Registrierung über die schwarzen Linienmasken (S. 47 und S. 48 gegen S. 46:
dx = 2, dy = −4; S. 49: dx = 0, dy = −4). Danach in **beide** Richtungen gedifft, mit
11-px-Toleranzband gegen Linienbreite und Antialiasing:

| Prüfung | Abweichungsregionen > 1500 px |
|---|---|
| GF (Fig. 1) vorhanden, aber weder NGF (Fig. 2) noch KFT/KFN (Fig. 3) | **0** |
| NGF oder KF vorhanden, aber nicht GF | **0** |
| NGF (Fig. 2) vorhanden, aber in Fig. 4 unklassiert | **0** |
| in Fig. 4 klassiert, aber nicht NGF in Fig. 2 | **0** |

Flächen nach morphologischem Schliessen: GF 1'473'522 px · NGF 1'175'928 px ·
KF 248'155 px · NGF+KF 1'422'874 px · Summe Fig. 4 1'174'220 px.
**Bewertung:** Die Gliederung der Ziff. 2/2.1 ist in der Zeichnung **exakt additiv**
umgesetzt. Das ist ein Positivbefund und zugleich die Voraussetzung dafür, die folgenden
Einzelbefunde als gesichert zu lesen — eine Figur, die nicht aufgeht, hätte jede
Einzelmessung entwertet.

### A78-02 — KERNBEFUND: Figur 4 klassiert **zwei Treppen desselben Grundrisses verschieden**
**Fundstelle:** S. 49, Figur 4; Gegenproben S. 46, 47, 48.
**Messung** (300 dpi, je Kasten der Anteil der jeweiligen Legendenfarbe):

| Element | Fig. 1 (S. 46) | Fig. 2 (S. 47) | Fig. 3 (S. 48) | Fig. 4 (S. 49) |
|---|---|---|---|---|
| **obere** Treppe mit Zwischenpodest (x1210-1360, y830-1060) | GF 0.97 | NGF 0.97 | **weiss 0.96** | **VF 0.97** |
| **untere** Treppe am Luftraum (x1360-1450, y1500-1690) | GF 0.98 | NGF 0.97 | **weiss 0.95** | **HNF 0.97** |
| Luftraum (x1100-1330, y1380-1690) | weiss 0.99 | weiss 0.99 | weiss 0.99 | weiss 0.99 |

Nullwerte gegengeprüft: in der unteren Treppe **kein einziges** VF-Pixel, in der oberen
**kein einziges** HNF-Pixel.
**Was daraus folgt — drei Aussagen, die das Destillat so nicht führt:**
1. Die Norm zeigt die Regel der Ziff. 2.1.2 («zur VF zählen die **ausserhalb der Wohnung**
   liegenden Treppen») **an ihrem eigenen Beispiel und im selben Grundriss**: die
   gemeinschaftliche Treppe ist VF, die wohnungsinterne ist HNF. Bisher stand diese Regel
   im Destillat nur als Begriffszeile und — seit Run 77 — auf der **Volumen**seite
   (Figur 11). Die **Flächen**seite ist die unmittelbar aufmassrelevante.
2. **Ein Treppenlauf ist nie Konstruktionsfläche.** In Figur 3 sind beide Läufe weiss:
   weder KFT noch KFN. Die Treppe zählt vollständig zur NGF des Geschosses, in dem sie
   liegt. Ziff. 2.2 zählt Wände, Stützen und Brüstungen auf — Treppen nicht; die Figur
   bestätigt den Umkehrschluss.
3. **Der Luftraum ist netto zu messen.** Seine Grenze verläuft entlang der Treppenwange:
   der Lauf ist eingefärbt, der verbleibende Luftraum nicht. Wer das Treppenauge als
   Rechteck abzieht, zieht den Treppenlauf mit ab und unterschätzt die GF.
**Kontrollmessung:** Der Luftraum ist das **einzige** eingeschlossene weisse Feld > 1200 px
innerhalb der GF-Fläche der Figur 1 (Lochsuche nach `binary_fill_holes`: genau eine Region,
98'535 px, x1097-1455 / y1371-1704).

### A78-03 — Der ⊠-Schacht und die versetzbare Wand, jetzt vierfach gemessen
**Fundstelle:** S. 46-49, gleiche Planstelle.

| Element | Fig. 1 | Fig. 2 | Fig. 3 | Fig. 4 |
|---|---|---|---|---|
| ⊠-Schacht (x1480-1590, y1390-1450) | GF 0.90 | NGF 0.80 | **weiss 0.82** | **FF 0.80** |
| «Schrank + Wand versetzbar» (x735-905, y1030-1090) | GF 0.91 | NGF 0.93 | **weiss 0.93** | **HNF 0.93** |

**Bewertung:** Beides **bestätigt** geführte Aussagen (Methodik-Pflicht 7, als Bestätigung
und nicht als Befund protokolliert): der Schacht ist der NGF zugeordnet und damit FF, nicht
KF (Run 66, A66-04); die versetzbare Wand ist kein Konstruktionsbauteil (Ziff. 2.2).
**Neu ist die Präzisierung zur versetzbaren Wand:** sie liegt in Figur 4 nicht bloss
irgendwo in der NGF, sondern in der **HNF** — sie wird beim Aufmass also **nicht abgezogen**,
auch nicht als Nebennutzfläche ausgeschieden.

### A78-04 — KERNBEFUND: In den Figuren 5 und 6 sind die Flächen **Bänder ohne Massbedeutung**
**Fundstelle:** S. 50 und S. 51, ganze Zeichnung.
**Messung 1 — konstante Bandhöhe.** Alle vierzehn Bänder beider Figuren (Zeilen mit mehr als
60 farbigen Pixeln, zusammenhängend gruppiert):

| Figur | Bänder (y-Bereich, Höhe in px bei 300 dpi) |
|---|---|
| 5 (S. 50) | 720-772 (53) · 820-872 (53) · 1073-1125 (53) · 1234-1287 (54) · 1398-1451 (54) · 1560-1613 (54) · 1712-1763 (52) |
| 6 (S. 51) | 749-800 (52) · 824-876 (53) · 1073-1125 (53) · 1236-1289 (54) · 1398-1450 (53) · 1560-1612 (53) · 1712-1763 (52) |

Bandhöhe durchgehend **52 bis 54 px** (Streuung ±1 px = ±0.08 mm auf dem Blatt), während die
Abstände der Bandoberkanten stark variieren: 100/75, 253/249, 161/163, 164/162, 162/162,
152/152 px. Die Bandhöhe ist also **keine Geschosshöhe** und keine sonstige Messgrösse.

**Messung 2 — und das ist der Beweis: dasselbe Feld liegt in den zwei Figuren auf zwei
verschiedenen Höhen.** Das oberste Band (Spitzboden, x um 1045-1187) liegt

- in **Figur 5** bei **y720-772**,
- in **Figur 6** bei **y749-800** — **29 px = 2.45 mm tiefer**,

**obwohl die schwarzen Referenzlinien beider Zeichnungen deckungsgleich sind.** In derselben
Bildspalte gemessen (Fig. 5 bei x = 1130, Fig. 6 bei x = 1126, also unter Berücksichtigung
der 4-px-Registrierung) liegen die Linien in **beiden** Figuren bei y710-711, y730-732,
y801-802 und y816. Alle **übrigen** sechs Bandpaare stimmen in y auf 0-2 px überein.
In Figur 6 schliesst das Band unten bündig an die Bodenlinie y801 an, in Figur 5 schwebt es
darüber und überschneidet die Deckenlinie y730-732.
**Bewertung:** Die vertikale Lage des Bandes trägt **keine Information** — die Norm zeichnet
dasselbe Feld an zwei Stellen. Die Figuren 5 und 6 sagen, **welche** Flächen es gibt und
**wie weit sie in der Horizontalen reichen**; sie sagen nichts über Höhen. Das steht im
scharfen Gegensatz zu den Figuren 8-12, in denen die Farbe das **wirkliche Volumen** füllt
und die Geometrie die Messgrösse **ist** (Figur 8: der eingefärbte Umriss definiert den
Umfang des GV — Run 65). Wer beide Serien gleich liest, liest aus Figur 5/6 Höhen heraus,
die dort nicht stehen.

### A78-05 — Figur 6 ordnet die Nutzungskategorien **raumweise** zu; das Destillat führte davon nichts
**Fundstelle:** S. 51, Figur 6. Alle Angaben aus der Regionenaufnahme (Nächste-Farbe-
Klassierung, Schliessen 15×15, Regionen > 1200 px), Koordinaten bei 300 dpi.

| Raum / Bauteil | Region (x, y) | Kategorie | Ziffer |
|---|---|---|---|
| Spitzboden über dem DG | x1045-1170, y749-800 | **NNF** | 2.1.1.2 |
| Estrich | x786-1043, y824-876 | **NNF** | 2.1.1.2 |
| Schacht auf DG-Niveau | x1056-1170, y824-876 | **FF** | 2.1.3 |
| «Wohnen» im DG | x1187-1581, y824-876 | **HNF** | 2.1.1.1 |
| Nebenraum rechts im DG | x1582-1634, y824-876 | **NNF** | 2.1.1.2 |
| Treppenhaus, 2. OG / 1. OG / EG / 1. UG | x786-1174, je y1073-1125, 1236-1289, 1398-1450, 1560-1612 | **VF** (vier Bänder) | 2.1.2 |
| Wohngeschosse 2. OG / 1. OG / EG | x1187-1971 (je Geschoss verschieden) | **HNF** | 2.1.1.1 |
| **Keller** | x1187-2128, y1560-1611 | **NNF** | 2.1.1.2 |
| Grube unter der Terrasse | x1882-2051, y1712-1763 | **FF** | 2.1.3 |
| **Laubengang** links | x649-754, y1073-1125 | **AVF**, schraffiert | 3.1.2 |
| Terrasse / Balkon / Sitzplatz rechts | y1073-1125, y1236-1287, y1398-1449, **jeweils nur der Teil ausserhalb der Aussenwandflucht** | **ANF**, schraffiert | 3.1.1 |

⚠ **Präzisierung durch Refuter B, vom Hauptprozess am Original nachgemessen:** Die mit
«Terrasse» und «Balkon» beschrifteten Bänder sind **nicht durchgehend** ANF. Im Terrassenband
(y1080-1120) schlägt der Schwarzanteil bei **x = 1538** von 0.00 auf 0.083 um, und genau dort
steht eine durchgehende senkrechte schwarze Linie: bei **x = 1543 und x = 1549 sind je 93 von
125 Pixeln** zwischen y950 und y1075 schwarz. Innerhalb dieser Linie ist das Band **solid rot
(HNF)**, ausserhalb **schraffiert rot (ANF)**. Das ist die unabhängige Reproduktion der schon
geführten Regel aus Run 66 (A66-16): die Grenze GF-Familie ↔ AGF-Familie ist die
**Aussenwandflucht**. Nach Methodik-Pflicht 7 als **Bestätigung** protokolliert, nicht als
Befund — und die Zeile oben ist entsprechend eingeschränkt.

**Bewertung:** Der Estrich als NNF und der Keller als NNF stehen zwar als **Beispielliste**
in Ziff. 2.1.1.2, aber die Figur zeigt sie **am durchgerechneten Beispiel** — und sie zeigt
zwei Dinge, die in keiner Beispielliste stehen: das **Treppenhaus als durchgehende VF über
alle vier Geschosse** und die **Grube unter einer Aussenfläche als FF**. Der Laubengang als
AVF war geführt (Run 64); alles Übrige nicht.

### A78-06 — KERNBEFUND: die Fläche/Volumen-Paarung am selben Gebäude — und wo sie **abbricht**
**Fundstelle:** S. 51 (Figur 6, Flächen) gegen S. 56 (Figur 11, Volumen) und S. 57
(Figur 12, AKV). Beide Schnitte zeigen dasselbe Beispielgebäude.

| Raum / Bauteil | Fläche (Fig. 6) | Volumen (Fig. 11 / 12) |
|---|---|---|
| Estrich | NNF | NNV |
| «Wohnen» | HNF | HNV |
| Keller | NNF | NNV |
| Treppenhaus | VF | VV |
| Schacht DG | FF | FV |
| Grube unter Terrasse | FF | FV |
| **Laubengang** | **AVF** | **kein Nutzvolumen — nur AKV (Fig. 12)** |
| **Terrasse / Balkon** | **ANF** | **kein Nutzvolumen — nur AKV (Fig. 12)** |

**Gegenprobe am Luftraum über der Aussenfläche** (die Messung, die den Befund hart macht):
Über der Balkonplatte des 1. OG (x1660-1800, y1200-1265) und über der Laubengangplatte
(x620-700, y1080-1145) ist der Raum in **allen fünf** Volumenfiguren leer —

| Prüfstelle | Fig. 8 GV | Fig. 9 NGV | Fig. 10 KV | Fig. 11 (4 Kat.) | Fig. 12 AKV |
|---|---|---|---|---|---|
| über der Balkonplatte 1. OG | weiss 0.986, Farbe 0.000 | 0.000 | 0.000 | keine Kategorie | 0.006 (Kante) |
| über der Laubengangplatte | weiss 1.000, Farbe 0.000 | 0.000 | 0.000 | keine Kategorie | 0.000 |

Der Raum über einer Aussenfläche ist also **in keiner einzigen Volumenkategorie der Norm
enthalten** — nicht bloss «kein Nutzvolumen», sondern gar kein Volumen. Zum Vergleich dieselbe
Messung an der Balkonplatte selbst: dort schlägt allein Figur 12 an (AKV-Farbanteil 0.247 bei
Weiss 0.559, also die Schraffur; alle übrigen Figuren 0.000).

**Das ist die Antwort auf den offenen Punkt N77-1** und zugleich der praktisch folgenreichste
Befund dieses Laufs: **jede Innen-Flächenkategorie hat ein Volumen-Pendant, keine der beiden
Aussen-Flächenkategorien hat eines.** Ein Balkon oder ein Laubengang erzeugt AGF, aber
**null Nutzvolumen** — sein einziger Volumenanteil ist die eigene Platte als AKV nach Ziff. 6.
**Praxisfolge:** Ein Variantenvergleich über **CHF/m³ GV** ist gegenüber Aussenflächen
**blind**, ein Vergleich über **CHF/m²** nicht. Zwei Varianten, von denen eine grosszügige
Balkone hat und die andere nicht, sind zwischen den beiden Kennwerten **nicht neutral**.
Das Destillat führte die Beobachtung bisher nur abstrakt aus der Legende (Run 65: «aussen
kennt die Norm nur Konstruktionsvolumen»); hier steht sie am durchgerechneten Beispiel, mit
der Konsequenz für den Kennwertvergleich.

### A78-07 — N77-1, zweiter Teil: bei **VF/VV** besteht **keine** Asymmetrie, bei **KF/KV** eine grosse
**Fundstelle:** S. 48/51 (KF, VF) gegen S. 55/56 (KV, VV).

**VF/VV — symmetrisch.** Das Treppenhaus erscheint in Figur 6 als vier Geschossbänder VF und
in Figur 11 als durchgehende VV-Säule (x735-1114, y962-1709); der Aufzugsschacht ist in
Figur 4 VF und in Figur 11 VV. Es wurde **kein** VV ohne Flächen-Pendant und **kein** VF ohne
Volumen-Pendant gefunden. Der Unterschied ist ein Darstellungsunterschied (die VV-Säule ist
nicht geschossweise geschnitten — Run 77), keine Kategorienasymmetrie.

**KF/KV — asymmetrisch, und zwar erheblich.** Gemessen in der Deckenzone zwischen zwei
Geschossen (x1250-1400, y1136-1155 bei 300 dpi):

| Figur | Anteil der Legendenfarbe in der Deckenzone |
|---|---|
| 8 (GV) | 0.737 GV |
| 9 (NGV) | **0.000** NGV (weiss 0.737) |
| 10 (KV) | **0.684** KV |

Die **Geschossdecken sind KV**. In der Grundrissserie hat eine Geschossdecke **keine
Entsprechung**: Ziff. 2.2 definiert die KF als **Grundrissfläche** der geschnittenen
Konstruktionsbauteile und zählt Aussen-/Innenwände, Stützen und Brüstungen auf — eine
waagrechte Platte erscheint in keinem Geschossgrundriss.
**Grössenordnung, gemessen:** Von den 131'842 KV-Pixeln der Figur 10 liegen **51'684 px =
39.2 %** in nur **56 von 1131 Bildzeilen**, nämlich in den waagrechten Platten (Zeilen, deren
KV-Belegung 30 % der Figurenbreite übersteigt); dazu kommt die geneigte Dachkonstruktion, die
ebenfalls kein KF-Pendant hat.
**Praxisfolge:** Eine Schätzung «KV = KF × Geschosshöhe» unterschätzt das KV in diesem Beispiel
um deutlich mehr als ein Drittel. KV lässt sich aus KF **nicht** hochrechnen.

### A78-08 — Die Volumenserie geht ebenfalls pixelgenau auf: GV = NGV + KV und NGV = HNV+NNV+VV+FV
**Fundstelle:** S. 53-56, Figuren 8-11.
**Messung:** Registrierung gegen S. 53 (S. 54: dx = −6, dy = 3 · S. 55: dx = −6, dy = 1 ·
S. 56: dx = 2, dy = 4). Diff in beide Richtungen, 11-px-Toleranz:

| Prüfung | Abweichungsregionen > 1200 px |
|---|---|
| GV (Fig. 8), aber weder NGV (Fig. 9) noch KV (Fig. 10) | **0** |
| NGV oder KV, aber nicht GV | **0** |
| NGV (Fig. 9), aber in Fig. 11 unklassiert | **0** |
| in Fig. 11 klassiert, aber nicht NGV | **0** |

Flächen: GV 869'057 px · NGV 689'289 px · KV 133'463 px · NGV+KV 820'492 px ·
Summe Fig. 11 689'142 px.
**Bewertung:** Die Aussage des Destillats «zusammen mit Figur 9 zeigt das GV = NGV + KV» ist
damit erstmals **gemessen** statt aus der Systematik geschlossen — und sie hält. Ebenso die
Gliederung der Ziff. 5.1.

### A78-09 — Figur 12: der vollständige Bestand des AKV, erstmals aufgenommen
**Fundstelle:** S. 57, Figur 12. Regionenaufnahme über die Legendenfarbe (136,65,24),
Schliessen 15×15, Zeichnungsbereich (Legende ab y1880 ausgeschlossen).

| # | Element | Region (x, y) | A [px] | Schwarzanteil | Überlappung mit GV (Fig. 8) |
|---|---|---|---|---|---|
| 1 | Dachüberstand links | x599-713, y934-1016 | 1'850 | 0.141 | 30 px = 1.7 % |
| 2 | Dachüberstand rechts | x1611-1691, y929-984 | 1'263 | 0.151 | 31 px = 2.5 % |
| 3 | **Laubengang-Platte** links | x599-713, y1154-1229 | 2'044 | 0.138 | 28 px = 1.4 % |
| 4 | Balkonplatte 2. OG | x1611-1825, y1074-1181 | 3'275 | 0.160 | 42 px = 1.4 % |
| 5 | Balkonplatte 1. OG | x1613-1825, y1279-1347 | 3'249 | 0.151 | **0 px = 0.0 %** |
| 6 | **senkrechtes Bauteil in Ansicht** (Balkonwange/Brüstung) | x1790-1831, y1073-1456 | ≈1'600 | 0.145 | 0 px |

**Kein siebtes Element.** Die Restüberlappungen von 1.4 bis 2.5 % sind reine Kantenwirkung.
⚠ **Selbstkorrektur beim Nachmessen:** Die erste Aufnahme führte nur **fünf** Gruppen, weil ein
morphologisches Schliessen mit 25×25 px die beiden Balkonplatten und das senkrechte
Ansichts-Bauteil zu **einer** Region verschmilzt (x1611-1825, y1073-1456). Erst die Messung des
Streifens für sich zeigt, dass er ein **eigenständiges, durchgehendes** Bauteil ist: 42 px breit,
**384 px hoch — also über beide Balkongeschosse durchlaufend**, und in der Ansichts-Signatur
(Weiss 0.717, Schwarz 0.145, Braun 0.083 gegen den Legendenwert Weiss 0.847). Er ist damit
gerade **kein** Zubehör der oberen Platte. **Lehre:** ein Schliessradius, der gross genug ist,
um eine Schraffur zu einer Fläche zu verbinden, ist auch gross genug, um benachbarte Bauteile
zu verschmelzen — die Regionenzahl einer geschlossenen Maske ist eine **untere Schranke** für
die Zahl der Bauteile, nie deren Nachweis.
**Drei Aussagen daraus:**
1. **Der Bestand war nie aufgenommen.** Das Destillat beschreibt zu Figur 12 nur die zwei
   Signaturen (Run 66), nicht **welche** Bauteile AKV sind.
2. **Bestätigung mit direktem Beleg statt Schluss** (Methodik-Pflicht 7): Das Destillat
   folgerte in Run 65, Dachüberstand und auskragende Balkonplatten gehörten «zum AKV nach
   Ziff. 6», weil sie in den Figuren 8-10 weiss bleiben. Figur 12 **zeigt** sie jetzt
   unmittelbar. Der Schluss war richtig; neu ist, dass er nicht mehr einer ist.
3. **Die grosse Terrassenplatte auf EG-Niveau ist NICHT AKV** — sie fehlt in dieser Liste,
   weil sie zugleich die Decke über dem nach rechts auskragenden Kellergeschoss ist und
   damit in Figur 8 zum GV zählt. Dieselbe Bauform ist also einmal AKV (Balkon, frei
   auskragend) und einmal GV-Bestandteil (Terrasse über beheiztem Raum). **Massgebend ist
   nicht die Bauform, sondern was darunter liegt.**

### A78-10 — Die Grube unter der Terrasse gehört zum GV, obwohl sie unter einer Aussenfläche liegt
**Fundstelle:** S. 50/51 (Fläche) und S. 53/54/56 (Volumen), rechts unten.
**Messung:** Fläche — Fig. 5 GF x1869-2073/y1712-1764, Fig. 6 **FF** x1882-2051/y1712-1763.
Volumen — Fig. 8 GV, Fig. 9 NGV x1829-1995/y1644-1773, Fig. 11 **FV** x1820-1986/y1644-1773.
**Bewertung:** Ein abgesetzter, unterhalb einer Aussenfläche liegender technischer Raum zählt
voll zur GF und zum GV und wird als FF/FV klassiert. Er ist im Aufmass leicht zu übersehen,
weil er ausserhalb des Hauptbaukörpers liegt.

### A78-11 — Die Umgebungsfläche UF ist in Figur 5 ein Band auf EG-Niveau, links **und** rechts
**Fundstelle:** S. 50, Figur 5.
**Messung:** UF-Regionen (103,189,48): x406-758/y1398-1450 (18'709 px) und
x1993-2243/y1399-1450 (12'803 px). Das GF-Band des Erdgeschosses liegt bei y1399-1451 —
**dieselbe Höhe**.
**Bewertung:** Die UF wird auf **derselben** Bandhöhe wie das Erdgeschoss dargestellt und
bleibt waagrecht, auch wo die gezeichnete Terrainlinie ansteigt. Zusammen mit A78-04 heisst
das: auch die UF-Höhe in Figur 5 ist Darstellung, nicht Mass. Die Abgrenzung UF ↔ AGF ↔ GF
entscheidet Figur **7**, nicht Figur 5 (so bereits im Destillat geführt, Run 66).

### A78-13 — Die Gesamtlegende S. 44/45 ist erstmals vollständig ausgezählt: 24 Signaturen, 9+7 und 7+1
**Fundstelle:** S. 44 (Flächen) und S. 45 (Volumen), alle Legenden-Swatches.
**Messung:** automatische Erfassung aller gesättigten Rechteckflächen > 5000 px, je mit
Median-RGB, Weiss- und Schwarzanteil.

| Seite | voll (Innen) | schraffiert (Aussen) |
|---|---|---|
| **44 — Flächen** | **9**: UF (103,189,48) · GF (169,21,96) · NGF (245,133,200) · HNF (222,26,55) · NNF (246,135,18) · VF (246,227,4) · FF (33,154,222) · KFT (136,65,24) · KFN (207,130,27) | **7**: AGF · ANGF · ANF · AVF · **AFF** · AKFT · AKFN — je dieselbe Farbe wie das Innen-Pendant |
| **45 — Volumen** | **7**: GV (169,21,96) · NGV (245,133,200) · HNV (222,26,55) · NNV (246,135,18) · VV (246,227,4) · FV (33,154,222) · KV (136,65,24) | **1**: AKV (136,65,24) |

**Drei Ergebnisse:**
1. **Die beiden ungepaarten Innen-Kategorien sind jetzt namentlich abgezählt: UF (1.2) und
   NNF (2.1.1.2).** Das Destillat führt beide seit Run 65 als Ausnahme; hier ist erstmals
   die **vollständige** Auszählung dahinter (9 gegen 7), statt einer Aufzählung von drei
   Ausnahmen. Ein «ANNF» existiert nicht — Balkon und Terrasse sind beide schlicht ANF.
2. **Auf der Volumenseite ist KV ↔ AKV das einzige Paar** (7 gegen 1) — unabhängig
   reproduziert.
3. **Alle 24 Signaturen der Gesamtlegende haben Weissanteil 0.00**; die acht schraffierten
   tragen Schwarzanteile von 0.10 bis 0.14. Die Schraffur liegt also durchgehend **über**
   der gefüllten Farbe.
   **Die Teillegende der Figur 12 (S. 57) dazugerechnet, sind es 26 Signaturen — und genau
   eine bricht die Regel.** Beide Swatches der Figur 12 sind gleich gross (150×57 und
   149×56 px) und exakt begrenzt gemessen:

   | Swatch S. 57 | Weiss | Schwarz | Braun |
   |---|---|---|---|
   | AKV **(Schnitt)** | **0.000** | 0.138 | 0.895 |
   | AKV **(Ansicht)** | **0.847** | 0.032 | 0.089 |

   Die Ansichts-Signatur ist damit die **einzige von 26 Signaturen des ganzen Anhangs** mit
   weissem Grund — und sie erscheint in keiner der beiden Gesamtlegenden. Das schärft den
   Run-66-Befund A66-15: es ist nicht bloss eine nicht erklärte Zusatzsignatur, sondern die
   einzige Ausnahme von einer sonst 25-fach durchgehaltenen Regel.
   ⚠ **Messhinweis, weil dieselbe Falle hier zweimal zugeschnappt ist:** Ein zu weit
   gefasster Messkasten liefert für den Schnitt-Swatch scheinbare Weissanteile von 0.31
   bis 0.37 — das ist der weisse Blattrand, nicht die Signatur. Die Swatch-Grenzen sind
   über Zusammenhangskomponenten zu bestimmen, nicht zu schätzen.

### A78-14 — Braun trägt im Anhang drei Bedeutungen; die Figurenart entscheidet
**Fundstelle:** S. 44 und S. 45, Swatch (136,65,24).
**Messung:** Dieselbe Farbe steht **voll** auf S. 44 für **KFT (2.2.1)** und auf S. 45 für
**KV (5.2)**; **schraffiert** steht sie auf S. 44 für **AKFT (3.2.1)** und auf S. 45 für
**AKV (6)**.
**Bewertung — Präzisierung eines geführten Befundes** (Methodik-Pflicht 7): Das Destillat
hält aus Run 66 fest, ein «Vollton braun» sei «in der Gesamtlegende die Signatur von KV
(5.2)». Das gilt für die **Volumen**legende S. 45. In der **Flächen**legende S. 44 ist
derselbe Vollton **KFT**. Der Kern der Run-66-Korrektur — die alte Beschreibung schickte den
Leser zur falschen Kategorie — bleibt richtig und wird schärfer: es sind **zwei** falsche
Kategorien, je nach Figurenart. Eine braune Fläche ist ohne die Frage «Grundriss oder
Schnitt?» nicht auflösbar.

### A78-15 — Figur 5 zeigt die Grenze UF ↔ AGF **über einem einzigen Keller**
**Fundstelle:** S. 50, Figur 5, Erdgeschoss- und 1.-UG-Niveau.
**Messung** (300 dpi; Innen/Aussen über den Schwarzanteil in einem 30-px-Fenster, Spaltenprofil):

| Niveau | x-Bereich | Signatur | Kategorie |
|---|---|---|---|
| EG (y1410-1440) | 406-758 | grün, voll | **UF** (1.2) |
| EG | 761 bis ≈1660 | magenta, Schwarzanteil 0.00 | **GF** (2) |
| EG | ≈1680 bis 1992 | magenta, Schwarzanteil **0.10-0.23** | **AGF** (3) |
| EG | 1993-2243 | grün, voll | **UF** (1.2) |
| 1. UG (y1570-1600) | 762 bis **2151** | magenta, Schwarzanteil 0.01 | **GF** (2) |

**Der Befund:** Das Kellergeschoss reicht nach rechts bis **x2151** und damit **weiter als die
Terrasse darüber** (Ende bei x1992). Über **demselben** unterirdischen Bauwerk liegt also
zwischen x1680 und 1992 **AGF** und zwischen x1993 und 2151 **UF**. Die Grenze ist nicht die
Kante des Kellers, sondern der Punkt, an dem die Fläche in das anschliessende Terrain übergeht.
**Bewertung:** Das ist die zeichnerische Umsetzung des zweiten Halbsatzes der Ziff. 1.2
(«Flächen über Bauten im Erdreich gelten als UF, sofern sie bepflanzt, begangen oder befahren
werden können und mit dem anschliessenden Terrain in Verbindung stehen»). Das Destillat führt
das Kriterium «Terrainanschluss entscheidet AGF gegen UF» und schreibt es **allein der Figur 7**
zu. **Figur 5 zeigt es bereits** — und zeigt es an einem durchgehenden Bauteil, also schärfer
als die Nebeneinanderstellung zweier Beispiele. Nach Methodik-Pflicht 7 ist das keine neue
Regel, sondern eine **zweite, unabhängige Fundstelle** für eine geführte Regel; neu ist die
Fundstelle und die Einsicht, dass über **einem** Keller beide Kategorien nebeneinander liegen.

### A78-16 — KERNBEFUND: die HNF/NNF-Grenze an der Traufseite steht auch auf der **Flächen**seite — ohne Konstruktion dazwischen
**Fundstelle:** S. 51, Figur 6, DG-Band y824-876.
**Anlass:** Refuter B meldete als Zusatzbefund eine «kleine NNF-Insel» bei x1582-1634 und deutete
sie als Abgrenzung wegen ungenügender lichter Höhe (Kniestock). Der Hauptprozess hat den
Sachverhalt am Original nachgemessen — die **Beobachtung** hält, die **Deutung** nicht.
**Messung** (Zeilenschnitt y = 850, Einzelpixel):

| x | RGB | Kategorie |
|---|---|---|
| 1565-1580 | (222, 26, 55) | HNF |
| **1583**-1634 | (246, 135, 18) | **NNF** |
| ab 1637 | (255, 255, 255) | weiss (ausserhalb) |

**Zwischen x1570 und x1600 ist der Schwarzanteil im Band (y830-870) exakt 0.000** — es gibt
**keine** trennende Linie, keinen Wandquerschnitt, kein Konstruktionsbauteil. HNF und NNF
stossen unmittelbar aneinander.
**Was daran neu ist:** Run 77 hat genau diese Konstellation auf der **Volumen**seite gefunden
(Figur 11, NNV neben HNV an der Traufseite, gemessen `S12` ohne weissen Kern gegen `S6 W18-28 S6`
bei jeder echten Wand). Sie steht damit **auch auf der Flächenseite**, in einer anderen Figur und
einer anderen Zeichnung. Die Kategoriengrenze innerhalb eines durchgehenden Raumvolumens ist
also kein Eigenheit der Volumenfigur.
⚠ **Und was NICHT übernommen wird — zum zweiten Mal:** die Begründung «zu geringe Raumhöhe».
Run 77 hat sie an der Figur 11 geprüft und **widerlegt**: SIA 416 kennt an keiner Stelle einen
Raumhöhen-Schwellenwert; Ziff. 2.1.1.1/2.1.1.2 und 5.1.1.1/5.1.1.2 stellen auf **Zweckbestimmung
und Nutzung** ab, und an der Grenze steht kein Mass. Hier steht ebenfalls keines.
**Das ist der eigentliche methodische Ertrag:** In zwei Läufen haben **zwei unabhängige Agenten**
in **zwei verschiedenen Figuren** dieselbe falsche Erklärung angeboten. Die Fehldeutung ist
naheliegend und wiederholbar — sie gehört deshalb nicht bloss abgelehnt, sondern **im Destillat
sichtbar als widerlegt geführt**, damit sie nicht beim dritten Mal durchgeht.

---

## Teil B — Selbstkorrektur im Lauf

### A78-12 — Die Aussen-Signatur unterscheidet sich am **Schwarz**anteil, nicht am Weissanteil
Der Hauptprozess hat die Innen/Aussen-Trennung zunächst über den **Weissanteil** versucht —
in der Annahme, eine Schraffur lasse den Grund durchscheinen. Die Messung an sauberen
Teilflächen widerlegt das für die Flächenfiguren:

| Element | Farbanteil | Weissanteil | **Schwarzanteil** |
|---|---|---|---|
| Fig. 5, Laubengang (AGF) | 0.86 | **0.00** | 0.14 |
| Fig. 6, Laubengang (AVF) | 0.84 | **0.00** | 0.12 |
| Fig. 5, Terrasse (AGF) | 0.82 | **0.00** | 0.14 |
| Fig. 6, Terrasse (ANF) | 0.84 | **0.00** | 0.14 |
| Fig. 5, «Wohnen» 2. OG (GF, Referenz voll) | 1.00 | 0.00 | 0.00 |
| Fig. 6, «Wohnen» 2. OG (HNF, Referenz voll) | 1.00 | 0.00 | 0.00 |

**In den Flächenfiguren ist die Aussen-Signatur eine schwarze Diagonalschraffur ÜBER der
vollflächig eingefärbten Fläche** — der Grund bleibt farbig, weiss kommt gar nicht vor.
Die dichtebasierte Klassierung des ersten Versuchs hat daraufhin den Laubengang fälschlich
als Vollfläche geführt und das oberste Band der Figur 5 fälschlich als schraffiert (dort
kreuzt eine Dachlinie das Band und hebt den Schwarzanteil auf 0.07). **Beide Fehleinstufungen
sind durch Messung in einer sauberen Teilfläche behoben worden**, nicht durch Betrachten.
**Lehre, und sie gehört zu Methodik-Pflicht 8:** Eine Signatur wird in einer **Teilfläche
ohne kreuzende Linien** gemessen. Eine Schwellenwertregel über die ganze Region misst dort,
wo Beschriftung oder Konstruktionslinien hineinragen, das Falsche — und liefert eine Zahl,
die belastbar aussieht.
**Zweite Lehre, methodisch unabhängig:** Die Signatur ist **nicht** über den ganzen Anhang
einheitlich. Figur 12 trägt für das AKV in Ansicht eine Schraffur auf **weissem** Grund
(Weissanteil 0.79-0.82, Run 66 A66-15, in diesem Lauf an der Legende nachgemessen). Wer die
in den Flächenfiguren gültige Regel «Schraffur über Farbe» auf Figur 12 überträgt, erkennt
die Ansichts-Teile des AKV nicht.

---

## Teil C — Refuter-Verdikte

Drei unabhängige Agenten (sonnet), je eigenes Arbeitsverzeichnis und eigenes Render-Präfix
(`r78-refA-` / `r78-refB-` / `r78-refC-`, Methodik-Pflicht 5). Jeder hat die Legenden-Swatches
selbst gemessen und seine Referenzstellen selbst gewählt. Auftrag war zu **widerlegen**.

**Gesamtbilanz: 17 Behauptungen geprüft — 11 bestätigt, 5 eingeschränkt, 1 Zahlenwert
widerlegt. Keine inhaltliche Widerlegung.**

| Refuter | Behauptung | Verdikt |
|---|---|---|
| A (Fig. 1-4) | B1 zwei Treppen verschieden klassiert | **bestätigt** — Punktmessung: obere (246,227,4) = VF, untere (222,26,55) = HNF an drei Stufen |
| A | B2 beide Treppenläufe in Fig. 3 weiss | **bestätigt** — (255,255,255) exakt, an vier Punkten |
| A | B3 Luftraumgrenze an der Treppenwange | **bestätigt** — Grenze Weiss/Magenta läuft exakt auf der Wangenlinie |
| A | B4 Luftraum einziges grosses weisses Feld | **bestätigt** — 121 Komponenten; nach dem Luftraum (91'571 px) folgt erst 153 px, und die liegt in der Fusszeile |
| A | B5 Additivität Fig. 1-4 | **bestätigt, mit Einschränkung zur Schwelle** |
| A | B6 Aussen-Signatur schwarz über Vollfarbe | **bestätigt, Zahlenband zu eng** — Weissanteil 0.000 in beiden Messungen |
| B (Fig. 5-7) | B1 raumweise Zuordnung Fig. 6 | **bestätigt** (RGB-Distanz 0.0 bei sieben von sieben), **Einschränkung** zu Terrasse/Balkon |
| B | B2 Bänder ohne Massbedeutung | **bestätigt**, Bandhöhen und alle sechs Abstände unabhängig reproduziert |
| B | B3 Signatur schwarz auf Vollfarbe | **eingeschränkt bestätigt** — Weissanteil 0.000 in vier Swatches, Farbanteil real 0.85-0.92 |
| B | B4 UF-Band starr waagrecht | **bestätigt** — Geländelinie steigt um 37 px über 340 px, das Band bleibt bei y1399-1450 |
| B | B5 Fig. 5/6 gegen Fig. 8-12 nicht deckungsgleich | **bestätigt**, Quantifizierung aber nicht haltbar — siehe C-3 |
| C (Fig. 8-12) | B1 Additivität Volumen | **bestätigt** — IoU **0.986** (GV gegen NGV∪KV) und **0.990** (NGV gegen Fig. 11) |
| C | B2 Bestand der Figur 12 | **bestätigt**, Schwelle bis auf 10 px abgesenkt, kein weiteres Element; Nuance zum Ansichts-Streifen |
| C | B3 Disjunktheit AKV ↔ GV | **eingeschränkt** — je nach Subpixel-Registrierung 0.00 bis 3.83 % statt «höchstens 2.5 %» |
| C | B4 Terrasse ist nicht AKV | **bestätigt** (Messteil); die Begründung ausdrücklich als **Deutung** markiert |
| C | B5 Signaturen der Figur 12 | **ein Zahlenwert widerlegt** — Schnitt-Swatch hat Weissanteil **0.000**, nicht «um 0.3» |
| C | B6 Grube ist GV/NGV/FV | **bestätigt** — FV 90.2 % gegen drei Nullwerte |

### C-1 — Die einzige Widerlegung, und sie traf einen Wert, den der Hauptprozess selbst schon berichtigt hatte
Refuter C hat den in seinem Auftrag genannten Weissanteil «um 0.3 oder tiefer» für die
Schnitt-Signatur der Figur 12 **widerlegt**: gemessen 0.000. Der Hauptprozess war unabhängig zum
selben Ergebnis gekommen, bevor der Bericht eintraf (siehe A78-13, Messhinweis): die 0.31 bis
0.37 stammten aus einem zu weit gefassten Messkasten, der den weissen Blattrand mitzählte. Die
Widerlegung ist damit **richtig und wird übernommen** — und sie bestätigt zugleich die Lehre,
dass ein Messkasten über Zusammenhangskomponenten zu bestimmen ist. Der Wert stand in keinem
Destillat; korrigiert wurde eine Behauptung dieses Laufs, kein Bestand.

### C-2 — Die Additivität ist jetzt mit zwei verschiedenen Verfahren gemessen
Der Hauptprozess hat mit **Toleranzband** gearbeitet (11-px-Dilatation, morphologisches Öffnen)
und in vier Richtungen **null** Abweichungsregion über 1200-1500 px gefunden. Refuter A hat ohne
Toleranzband einen **rohen XOR** gebildet und Komponenten bis 48'231 px gefunden, sie aber als
linienförmig ausgewiesen; Refuter C hat einen **IoU** gerechnet (0.986 / 0.990). Die drei
Verfahren widersprechen sich nicht, sie messen dasselbe verschieden streng.
**Der Hauptprozess hat den Einwand danach selbst nachgerechnet** (Formfaktor jeder
XOR-Komponente): von den sechs grössten Komponenten je Test hat **keine** einen Füllgrad über
0.093 — sie sind alle linienförmig; die grösste kompakt aussehende misst 407 × 5 px, ist also
ebenfalls eine Linie. Refuter A kommt auf dasselbe: die grösste **nicht** linienartige Komponente
misst **213 px**. Damit ist die Additivität dreifach unabhängig belegt.

### C-3 — Der Hauptprozess widerspricht einer Quantifizierung des Refuters B
Refuter B hat B5 (Flächenschnitt und Volumenschnitt sind nicht deckungsgleich) bestätigt, dabei
aber gemessen, der First liege in Figur 8 «58 px weiter links bei nahezu gleicher linker
Aussenkante» und die Zeichnung sei «10 % höher im Verhältnis zur Breite». **Beides hält der
Nachmessung nicht stand.** Die von Refuter B als «linke Gebäudekante» genommenen x403/x400 sind
nicht das Gebäude, sondern der linke Textrand der Seite (die Zeile «Figur 5» beginnt dort).

Eigene Messung des Hauptprozesses an der schwarzen Strichzeichnung, Fenster ohne Titeltext und
ohne Massstrang:

| Grösse | Figur 5 (S. 50) | Figur 8 (S. 53) | Abweichung |
|---|---|---|---|
| Breite auf halber Höhe | x760-1885 = **1126 px** | x706-1821 = **1116 px** | 0.9 % |
| Gesamthöhe der Zeichnung | **1125 px** | **1137 px** | 1.1 % |
| First, Abstand von der linken Aussenkante | 1190 − 760 = 430 px = **38.2 %** der Breite | 1132 − 706 = 426 px = **38.2 %** der Breite | 0.0 % |

**Massstab und Proportion sind also praktisch identisch.** Nicht deckungsgleich sind die
Zeichnungen trotzdem: ein Zeilenschnitt bei y = 1200 zeigt, dass die ersten drei senkrechten
Linien mit einem Versatz von −53/−54 px zur Deckung kommen, eine weiter rechts liegende aber
erst mit −33 px. Die Abweichung **wächst über die Breite auf rund 20 px an**. Es sind zwei
**separat gezeichnete** Darstellungen desselben Gebäudes mit lokalen Zeichnungsabweichungen,
nicht zwei verschieden skalierte. Die Aussage «nicht registrierbar» bleibt; ihre Begründung
ändert sich.

### C-4 — Zwei Zusatzbefunde der Refuter, die übernommen werden
**Aus Refuter C:** Das AKV trägt in der Norm die **eigenständige Ziffer 6**, nicht «5.3». Die
Norm weist es also auch numerisch als eine von GV unabhängige Kategorie aus — ein
**struktureller** Beleg neben dem gemessenen (A78-06, A78-09) dafür, dass Aussenbauteile nicht
Teil des Gebäudevolumens sind. Übernommen.

**Aus Refuter C, vom Hauptprozess nachgemessen:** Die Ansichts-Signatur trägt in der **Zeichnung**
mehr schwarze als braune Schraffur, in der **Legende** umgekehrt fast nur braune:

| Messstelle | weiss | schwarz (35,31,32) | braunrot (143,65,46) |
|---|---|---|---|
| Legenden-Swatch «Ansicht» (S. 57) | 0.793 | 0.024 | **0.078** |
| Ansichts-Streifen in der Zeichnung (x1795-1828, y1150-1300) | 0.634 | **0.117** | 0.049 |

Die Zeichnung zeigt also **zwei** Linienfamilien, die Legende im Wesentlichen nur eine. Wer die
Zeichnung gegen die Legende hält, sieht dort eine dunklere, «schwärzere» Schraffur als im Swatch.
Das verschärft den Run-66-Befund A66-15 ein zweites Mal: die Ansichts-Signatur ist nicht nur
nicht erklärt, sie sieht in der Anwendung auch anders aus als in ihrer eigenen Legende. **Was die
schwarze Linienfamilie bedeutet, ist nicht entschieden** — sie könnte das eigene Strichwerk des
Geländers sein. Als offener Punkt geführt, nicht als Regel.

### C-5 — Was ein Refuter meldete und NICHT übernommen wurde
Refuter B deutete die NNF-Insel an der Traufseite als Folge zu geringer lichter Höhe. Die
Beobachtung ist übernommen und nachgemessen (A78-16), **die Deutung nicht** — Run 77 hat
dieselbe Erklärung an Figur 11 bereits am ganzen deutschen Normteil widerlegt. Ebenfalls nicht
übernommen: Refuter B's Zusatzbefund 4, Figur 8 zeige den Schacht «nicht als Aussparung» — das
ist richtig gemessen, war aber nie behauptet und ist kein Befund.

---

## Teil D — Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Figur 7 (S. 52) ist in diesem Lauf nur als Regionenbestand aufgenommen**, nicht
   Beispiel für Beispiel neu gemessen — das ist in Run 66 (Q&A) geschehen und wurde hier
   nicht wiederholt. Die Aufnahme ergibt **45 Regionen > 1200 px** (UF, GF voll, AGF
   schraffiert) und widerspricht dem Run-66-Bestand nicht. **Anmerkung zur Methode:** die
   vier Beispielzeilen lassen sich über ein reines y-Profil **nicht** sauber trennen, weil
   Beispiele benachbarter Zeilen einander in y überlappen — die Zeilenzuordnung des Run 66
   beruht auf Ausschnitten und bleibt die belastbare. Ein erster, zu grob geschnittener
   Aufnahmelauf dieses Laufs hatte die Legendengrenze zudem bei y2100 statt y2760 gesetzt
   und damit die vierte Zeile abgeschnitten; korrigiert und neu gemessen.
2. **Die Refuter-Richtung auf den in diesem Lauf neu geschriebenen Sätzen** ist nur durch
   die drei Agenten dieses Laufs gefahren, nicht durch eine spätere unabhängige Runde.
3. **Der französische und italienische Normteil** bleibt unsystematisch — unverändert der
   zweite benannte Hebungs-Blocker.
4. **Die Fundstellen-Richtung** ist auf den Nachträgen dieses Laufs nicht gefahren.
