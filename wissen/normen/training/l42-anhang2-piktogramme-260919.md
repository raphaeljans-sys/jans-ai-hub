# Piktogramm-Aufnahme Anhang 2, Lignum 4.2 — Zeilenschlüssel der Tab. A22-1 bis A25-1 (N87-1)

**Erstellt:** 19.09.2026, Normen-Nacht Run 88 (MacBook Pro)
**Auftrag:** `wiki/QUESTIONS.md` N87-1 — die 22 Matrix-Zeilen sind nur über ihre Piktogramme
unterscheidbar (Tab. A23-1: vier von acht Zeilen «Wand-Decke», Tab. A25-1 drei von acht). Je
Zeile die Geometrie beschreiben und an der Piktogrammzeile belegen.
**Methodik:** Methodik-Pflicht 5 (Präfix `l42-r88-`), 8 (rendern und messen statt ansehen),
6 (Legende je Tabelle einzeln), 7 (Agentenbefunde gegen den ganzen Bestand), 13 (beide
Richtungen ausweisen).

## Anlage

| Grösse | Wert |
|---|---|
| Quelle | `PL - 03 Brandschutz/06 Lignum Brandschutz/Lignum 4.2 …/4.2 BTH Anschlusse bei Bauteilen mit Feuerwiederstand .pdf` |
| MD5 | `c9503e748d1d7277f82ab868ab2589cb` (unverändert gegenüber Run 85/86/87) |
| Rendering | PDF-S. 26-28, `pdftoppm -r 600`, Halbseiten gesplittet; Piktogrammspalte je Seite ausgeschnitten (`l42-r88-s51-pikto.png`, `-s52-pikto-a/b`, `-s53-pikto-a/b`, `-s54-pikto-a/b`) |
| Seitenzahl-Kontrolle | am Blattrand abgelesen: 50, 51, 52, 53, 54 |
| Farbmessung | Median-RGB je Bauteil-Arm, Innenfläche mit 8 px Rand (Script `l42-r88-armfarben.py` im Scratchpad) |
| Kontext geprüft | S. 6/7 (Kap. 2.2), S. 12/13 (Kap. 4.1, 4.2.1, Abb. 421-1), S. 34/35 (Kap. 5.1-5.2.2), S. 50 (A.2.1) |

## Bildsprache der Piktogramme

**Gemessen bzw. abgelesen:**

- **Gelbes Quadrat** = der Anschlussknoten. In jedem der 33 Piktogramme genau eines.
- **Arme** = die anschliessenden Bauteile, als Doppellinie mit getönter Fläche.
- **Grosse Flamme** = Brandseite; **kleine Flamme(n)** = die Seite(n), auf die der Brand über den
  Anschluss weitergeleitet werden könnte; **Pfeil** = Weg der Weiterleitung durch den Knoten.
  Dieselbe Bildsprache (grosse Flamme, Pfeil, kleine Flamme) verwendet die Übersicht
  Abb. 421-1 (S. 13) für die Anschlusssituationen; Kap. 4.1 (S. 12) nennt als Zweck die
  «Begrenzung der Brandausbreitung/-weiterleitung».
- **Flächenton der Arme**, rechnerisch klassiert (drei scharf getrennte Klassen):

| Klasse | Median-RGB | vorkommend in |
|---|---|---|
| WEISS | 255 / 255 / 255 | nur A22-1 |
| GRAU | 244-251, neutral | A22-1, A23-1, A24-1 |
| BLAU | R 207-222 · G 236-244 · B 246-248 | A24-1, A25-1 |

**Deutung der Töne — abgeleitet, keine Legende in der Quelle.** Die Tabellen führen nur die
Zellen-Legende (grau = massgebend). Eine Legende für die Bauteiltöne der Piktogramme steht
weder auf S. 50-54 noch in Kap. 2, 4.1, 4.2.1, 5.1 oder Abb. 421-1; die publikationsweite
Legende Kap. 6 passt in der Farbfamilie, nicht im Tonwert (Abgleich unten). Die Zuordnung
ergibt sich zuerst aus dem Abgleich mit den Tabellentiteln, und sie ist dort die einzige
widerspruchsfreie:

- A23-1 (babb Holz an babb Holz): **alle 21 gemessenen Arme GRAU**.
- A25-1 (babb RF1 an babb RF1): **alle 21 gemessenen Arme BLAU**.
- A22-1 (babb an nicht babb): in **jedem** der sechs Piktogramme genau ein Bauteil GRAU und
  eines WEISS.
- A24-1 (Holz an RF1): in jedem der sieben Piktogramme BLAU und GRAU gemischt, **kein WEISS**.

Daraus: **BLAU = Bauteil RF1 · GRAU = brandabschnittsbildendes Holzbauteil · WEISS = nicht
brandabschnittsbildendes Bauteil.**

**Abgleich mit der publikationsweiten Legende Kap. 6 (S. 46), im Lauf nachgeholt
(Methodik-Pflicht 7: der Bestand kannte sie seit Run 86).** Die Swatches am eigenen
200-dpi-Rendering gemessen (Median-RGB):

| Kap.-6-Farbraster | RGB | nächster Piktogrammton |
|---|---|---|
| Bauteil/Brandschutzbekleidung nicht brennbar, FW ≥ 30 Min. (kräftiges Blau) | 119 / 197 / 243 | — (kein Piktogramm so dunkel) |
| Baustoff nicht brennbar (Hellblau) | 201 / 237 / 250 | BLAU der Piktogramme (207-222 / 236-244 / 246-248) |
| Bauteil/Bekleidung brennbar, FW ≥ 30 Min. (Grau) | 198 / 198 / 196 | GRAU der Piktogramme (244-251), aber **rund 50 Stufen heller** |
| Schnittfläche ohne weitere Aussage (weiss) | 255 / 255 / 255 | WEISS der Piktogramme |
| Abbrand an Bauteilen (Dunkelgrau) | 149 / 149 / 148 | — |

**Befund: die Kap.-6-Legende stützt die Deutung in der Farbfamilie, sie deckt sie nicht
tonwertgleich.** Blau steht dort für «nicht brennbar», Grau für «brennbar mit Feuerwiderstand
≥ 30 Min.», Weiss für «ohne weitere Aussage» — das ist genau die Unterscheidung RF1 /
feuerwiderstandsfähiges Holzbauteil / Bauteil ohne Aussage zum Brandabschnitt, welche die
Tabellentitel verlangen. Die Piktogramme verwenden aber aufgehellte Töne, und ob der Setzer
die Kap.-6-Legende für den Anhang 2 überhaupt gemeint hat, sagt die Quelle nicht. Die Zuordnung
bleibt deshalb als **abgeleitet** gekennzeichnet; sie stützt sich jetzt auf zwei unabhängige
Wege (Tabellentitel und Farbfamilie der Kap.-6-Legende), nicht mehr nur auf einen.

**Einschränkung:** Tab. A24-1 trägt im Titel ausdrücklich
«brandabschnittsbildende **und nicht** brandabschnittsbildende Holzbauteile», zeichnet aber alle
Holzarme GRAU — dort unterscheidet das Piktogramm babb/nicht babb **nicht**; GRAU heisst in
A24-1 nur «Holzbauteil».

## Zeilenschlüssel (Geometrie je Zeile)

Stossformen: **T** = ein Bauteil läuft beidseits des Knotens weiter, das zweite endet am
Knoten · **L** = zwei Bauteile enden in einer Ecke · **Kreuz** = vier Arme · **Flucht** = zwei
Bauteile stossen in einer Flucht stumpf aneinander. Die Randbeschriftung sagt, ob die
Darstellung ein Grundriss (Wand-Wand) oder ein Schnitt (Wand-Decke, Decke-Decke) ist.

### Tab. A22-1 (S. 51) — je Zeile zwei Varianten übereinander

| Z. | Rand | Form | Variante oben | Variante unten | Brand → Weiterleitung |
|---|---|---|---|---|---|
| 1 | Wand-Wand | T | nicht babb Wand **läuft durch** (weiss), babb Wand **endet** (grau) | babb Wand läuft durch (grau), nicht babb Wand endet (weiss) | Brand auf einer Seite der endenden Wand, Weiterleitung über den Knoten auf deren andere Seite (beide Seiten auf derselben Seite des durchlaufenden Bauteils) |
| 2 | Wand-Decke/Dach | T | Decke/Dach **läuft durch** (weiss), babb Wand endet darunter (grau) | Decke/Dach läuft durch (grau), nicht babb Wand endet (weiss) | Brand auf einer Seite der Wand unter der Decke, Weiterleitung über den Knoten auf die andere Wandseite |
| 3 | Wand-Decke | T | Wand **läuft durch** (weiss), babb Decke schliesst **seitlich** an (grau) | Wand läuft durch (grau), nicht babb Decke schliesst seitlich an (weiss) | Brand unter der Decke, Weiterleitung entlang der durchlaufenden Wand auf die Deckenoberseite |

### Tab. A23-1 (S. 52) — alle Arme GRAU (babb Holz)

| Z. | Rand | Form | Geometrie | Brand → Weiterleitung |
|---|---|---|---|---|
| 1 | Wand-Wand | T | Wand läuft durch, zweite Wand endet (Grundriss) | eine Seite der endenden Wand → andere Seite |
| 2 | Wand-Decke | T | Decke läuft durch, Wand endet darunter (Schnitt) | eine Seite der Wand → andere Seite, unter der Decke |
| 3 | Wand-Decke | T | Wand läuft durch, Decke schliesst seitlich an | unter der Decke → über die Decke, entlang der Wand |
| 4 | Wand-Decke | Kreuz | Wand und Decke kreuzen sich, vier Arme | ein Quadrant → alle **drei** übrigen Quadranten |
| 5 | Wand-Wand | L | Eckstoss zweier Wände (Grundriss) | Innenwinkel → diagonal durch den Knoten zur Aussenecke |
| 6 | Wand-Decke | L | Eckstoss Wand/Decke (Schnitt) | Innenwinkel → diagonal zur Aussenecke |
| 7 | Wand-Wand | Flucht | zwei Wandelemente stossen in einer Flucht stumpf aneinander | Brandseite → quer durch die Stossfuge auf die Gegenseite |
| 8 | Decke-Decke | Flucht | zwei Deckenelemente stossen in einer Flucht aneinander | Unterseite → quer durch die Stossfuge auf die Oberseite |

### Tab. A24-1 (S. 53) — BLAU = RF1, GRAU = Holz

| Z. | Rand | Form | Varianten (von oben) | Brand → Weiterleitung |
|---|---|---|---|---|
| 1 | Wand-Wand | T | (a) Holzwand läuft durch, RF1-Wand endet · (b) RF1-Wand läuft durch, Holzwand endet · (c) RF1 bildet endende Wand **und** einen Arm des durchlaufenden Zugs, der andere Arm ist Holz | eine Seite der endenden Wand → andere Seite |
| 2 | Wand-Decke/Dach | T | (a) Holzdecke/-dach läuft durch, RF1-Wand endet darunter · (b) RF1 bildet endende Wand und einen Deckenarm, der andere Deckenarm ist Holz | eine Seite der Wand → andere Seite, unter der Decke |
| 3 | Wand-Decke | T | (a) Holzwand läuft durch, RF1-Decke schliesst seitlich an · (b) RF1-Wand läuft durch, Holzdecke schliesst seitlich an | unter der Decke → über die Decke, entlang der Wand |

### Tab. A25-1 (S. 54) — alle Arme BLAU (RF1)

Zeile für Zeile **dieselbe Geometrie und dieselbe Flammenlage wie Tab. A23-1** (T, T, T,
Kreuz, L, L, Flucht, Flucht), nur in RF1. Randbeschriftung S. 54 trotz angeschnittenem
Blattrand lesbar: Wand-Wand · Wand-Decke · Wand-Decke · Wand-Decke · Wand-Wand · Wand-Decke ·
Wand-Wand · Decke-Decke.

## Die Zeilen sind jetzt auseinanderzuhalten

Die drei gleichnamigen «Wand-Decke»-Zeilen 2, 3 und 4 (in A23-1 zusätzlich Zeile 6) trennen
sich eindeutig: **Z. 2 = Wand endet unter durchlaufender Decke**, **Z. 3 = Decke schliesst
seitlich an durchlaufende Wand**, **Z. 4 = Kreuzung**, **Z. 6 = Ecke**.

## Konsistenz mit der Zellaufnahme (Bestätigung, kein Beweis der Deutung)

Die Geometrien passen zu den in Run 87 gemessenen Mustern, was als unabhängige Plausibilisierung
gilt, nicht als Beleg der Bildsprache:

- **Elementstösse (4.2.4 / 5.3.4)** sind in A23-1 und A25-1 genau in den Zeilen 5, 7 und 8
  massgebend, also bei **L-Ecke Wand-Wand und den beiden Flucht-Stössen**; in allen T- und
  Kreuzgeometrien nicht.
- **Bauteilabschlüsse durchgehend oder an Bauteile ohne FW (4.2.2)** sind in A22-1 in allen
  drei Zeilen massgebend; jede Zeile zeigt dort ja gerade die Paarung babb/nicht babb. In A23-1
  entfallen sie genau bei Kreuz (Z. 4) und den beiden Flucht-Stössen (Z. 7, 8); bei allen T-
  und L-Geometrien (Z. 1-3, 5, 6) bleiben sie massgebend.
- **Auflager (4.2.8 / 5.3.6)** sind in A23-1 und A25-1 genau bei den drei Wand-Wand-Zeilen
  (Grundriss, Z. 1, 5, 7) nicht massgebend und in allen fünf Schnitt-Zeilen massgebend; in
  A24-1 ebenso (Z. 1 nein, Z. 2 und 3 ja). **Einzige Abweichung von diesem Muster:** A22-1 Z. 2
  (Wand-Decke/Dach) — Schnitt, aber Auflager nicht massgebend (Median 255, Run 87). Das ist
  kein Messfehler (Run 87: drei unabhängige Ablesungen), sondern eine Aussage der Quelle, die
  hier nur festgehalten, nicht gedeutet wird.

**Erste Fassung dieses Abschnitts im Lauf selbst widerlegt:** sie behauptete, 4.2.2 entfalle
auch bei der L-Ecke Z. 5, und Auflager seien in A22-1 bei allen Schnitt-Zeilen massgebend.
Beides stimmt nicht mit den Run-87-Mustern überein und wurde vor der Übernahme ins Destillat
am Messprotokoll korrigiert — eine Plausibilitätsaussage aus dem Gedächtnis der Tabelle ist
selbst prüfbedürftig.

## Verifikation — zwei blinde Prüf-Agenten plus Hauptprozess

Beide Agenten erhielten nur die Ausschnitte und die Kontextseiten, **nicht** das Vorergebnis
und nicht das Messscript; beide haben die Armtöne selbst gemessen (eigene Scripts `verif1-*`,
`verif2-*`).

| Prüfer | Umfang | Stossform | Armtöne | Flammen/Pfeil | Widersprüche |
|---|---|---|---|---|---|
| Agent 1 | A22-1 (6 Piktogramme), A24-1 (7) | 13/13 | 39/39 Arme gleich klassiert | 13/13 | 0 |
| Agent 2 | A23-1 (8), A25-1 (8), Randbeschriftung S. 52/54 | 16/16 | 42/42 Arme gleich klassiert | 16/16 | 0 |

**Die eine Unsicherheit, am Original entschieden:** Agent 1 meldete den oberen Arm von
A22-1 Z. 3 oben als «WEISS, aber unsicher» (nur 40 % der Pixel exakt 255). Der Hauptprozess hat
die Fläche abseits der Pfeilspitze nachgemessen: **91 % der Pixel exakt 255**, der graue
Nachbararm derselben Zeile nur 5 %. Ursache der Unschärfe ist der Pfeilsaum. **WEISS
bestätigt.**

**Zwei Zusatzbeobachtungen der Agenten, übernommen:** (1) Die Paare Z. 1/2, 5/6 und 7/8 der
Tab. A23-1 und A25-1 sind **im Bild identisch**, ebenso A22-1 Z. 1/2; sie unterscheiden sich
nur in der Randbeschriftung (Grundriss gegen Schnitt). Randbeschriftung und Piktogramm sind
deshalb nur **zusammen** eindeutig. (2) Die Pfeilspitze sitzt in allen 33 Piktogrammen bei
der kleinen Flamme; der Pfeil läuft also stets von der Brandseite über den Knoten weg.

**Was NICHT geprüft ist:** die Absicht des Setzers hinter den aufgehellten Tönen; die
Tonzuordnung bleibt abgeleitet (siehe oben). Die Zellwerte der Matrizen hat dieser Lauf nicht
erneut gemessen (Run 87).
