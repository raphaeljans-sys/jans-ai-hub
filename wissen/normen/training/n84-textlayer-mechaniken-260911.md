---
title: "N83-2 abgearbeitet (Textlayer-Klasse) und Typologie der ≤/≥-Verfälschungen im Textlayer"
status: speculative
last_updated: 2026-09-11
lauf: "Normen-Nacht Run 84 (MacBook Pro, SIA/VKF-Scope)"
links: [[n83-quellenaufloesung-260910]], [[n82-vergleichszeichen-sweep-260909]]
---

# Anlage Run 84: 26 Destillate am Bild geprüft, sieben neue Textlayer-Mechaniken

## 1. Prüfmenge und Kontrollen

Aus der Risikokarte `n83-quellenaufloesung-260910.md` die Klasse «Textlayer ohne ≤/≥»: 28
Destillate, davon 2 in Run 83 bereits erledigt (`vkf-brandschutznorm-2015`,
`sia-162-051-a1-a2`). **Geprüft 26**, alle ≤/≥-Stellen einzeln, je am selbst gerenderten Original
(fünf unabhängige Agenten, Präfixe `G1-` bis `G5-`, 200/300 dpi). Die Agenten sahen die
Destillate nicht, nur ein Paket der Aussagen.

**Gegenprobe der Prüfstufe (Vorschlag Run 50, erstmals gefahren):** in die Pakete wurden sechs
verfälschte Aussagen gemischt, ohne Kennzeichnung (Wert erhöht, Richtung ≥ → ≤ gedreht):

| Kontrolle | untergeschoben | gedruckt | erkannt |
|---|---|---|---|
| SIA 180:2014 Ziff. 5.2.5 | C_R/A_NGF ≥ 55 | ≥ 45 | ja (G1) |
| SIA 400:2000 B.2.3 | Liniendicke ≤ 1/10 h | nicht weniger als 1/10 h | ja (G1) |
| SIA 272:1980 Ziff. 5 24 | Bolzenabstand ≤ 250 mm | 150 mm nicht überschreiten | ja (G2) |
| SIA 500:2009 Ziff. 3.6.2 | Steigung ≤ 185 mm | nicht mehr als 175 mm | ja (G3) |
| VKF AH 1002-03 S. 19 | ≤ 6000 m² ohne Sprinkler | ≤ 4000 m² | ja (G4) |
| GVZ MFH nbb Ziff. 3.4 | BKZ 4.2 bei ≤ 4 Geschossen | nicht mehr als drei | ja (G5) |

Dazu zwei Kontrollen im Refuter-Paket zu SIA 181:2006 Anhang G (Hotel Korridor–Zimmer,
Werken–Werken): **8 von 8 erkannt, 0 Falsch-Positive im Bestandstext.** Damit ist die
Bestätigungsquote dieser Runde kein Leerlauf-Artefakt: die Prüfstufe konnte widerlegen.

## 2. Ergebnis über die 26 Destillate

96 Prüfpunkte, davon 6 Kontrollen. Von den 90 echten Punkten: **87 am Bild bestätigt, 3 per
Verweis bestätigt** (SIA 162.152 A1/A2 übernimmt Tab. 3.2 aus der Grundnorm 2001; dort am
Textlayer mit echtem ≥ nachgelesen, S. 12), **kein falscher Grenzwert, keine falsche
Zeichenrichtung.** Druckform laut Agentenprotokollen: 54 sprachlich formuliert, 39 symbolisch
gedruckt, 1 in einer Formelgrafik (2 ohne Angabe).

**Was das über die Run-83-Karte sagt:** «Textlayer ohne ≤/≥» war zu gut der Hälfte die dritte
Klasse, die Run 83 an der Brandschutznorm entdeckt hatte (sprachliche Norm), und zu knapp der
Hälfte **gedrucktes ≤/≥ mit defektem Encoding**. Unbelegt war keiner der Werte.

Die Sachbefunde der Runde stammen nicht aus den ≤/≥-Werten, sondern aus Nebenbeobachtungen und
dem Anschluss (Ziff. 4): Suva 44006 (Praxis-Transfer machte aus «vorzugsweise 1,50 m» einen
Abnahmegrenzwert), GVZ MFH (Fundstelle Ziff. 2.3 Abs. 3 fehlte), BSPUB-57 (Paraphrase
«Berghütten» zu eng). Alle inline korrigiert.

## 3. Typologie: wie ≤/≥ im Textlayer verloren gehen

Run 82 kannte eine Mechanik (≤ als «<» mit Unterstrich), Run 83 eine zweite (≤/≥ als «d»/«t»).
Run 84 hat an den Originalen **sieben weitere** belegt:

| Nr. | Mechanik | Textlayer liefert | Belegdatei (Producer) | Gefahr |
|---|---|---|---|---|
| M3 | Pi-Schrift **SchwabePi**, Custom-Encoding | ≤ → «9», ≥ → «0», ± → «8», ° → «5», ≈ → «A», Δ → «D», × → «x», μ → «m», γ → «g» | SIA 181:2006, 244/246/248:2006, 118-24x:2006 (ApogeeX 2.5 Normalizer), SIA 108:2014 (InDesign), SIA 110:2003 | **hoch**: «N ≤7» wird «N 97», «Lr ≤ 64» wird «Lr 9 64», «30 °C» wird «30 5 C» |
| M4 | Symbol-Schrift, Codepunkt im Privatbereich (U+F0A3 ≤, U+F0B3 ≥) | Zeichen fällt ersatzlos weg | VKF BSE 101-15 Atrien (Word 2010), BRL 15-15 S. 29, BRL 24-15 S. 27, PAV-A 01 | mittel: Relation verschwunden, Zahl bleibt |
| M5 | Symbol-Schrift über Distiller/PScript | ≤ → «£» | VKF AH 1002-03 Parkhäuser (Distiller 9.3.3) | niedrig: auffällig |
| M6 | Quartz-PDF (Safari-Druck) | ≤ → «)» | Kalksandstein-Bemessung (Mac OS X Quartz) | mittel |
| M7 | Distiller 7.0 | ≥ → Hangul-Silbe «욷» | Suva 44006 | niedrig: auffällig |
| M8 | OCR («Paper Capture») | ≤/≥ → «;», «"», «'2», «;;::» | SIA 180:2014, 382/2:2011, 500:2009 | mittel: sieht nach Satzzeichen aus |
| M9 | Ghostscript 8.54 | doppelstrichiges ≧ → «⭌» | ZHB 2005 Mindestanforderungen | niedrig |

Zuordnung M3 am Bild gemessen: SIA 181:2006 S. 20 (Tab. 2, «200 ≤ V < 300»), S. 21 (Tab. 3),
S. 53 («39,6 ≈ 40 dB»), SIA 244:2006 S. 13 («± 0,2%», «± 1,0 mm»), S. 17 («5 °C», «30 °C»),
SIA 108:2014 S. 37 (Kriterienmatrix). Agentenbefunde zu M4-M9 vom Hauptprozess an SIA 108
(bbox + 300-dpi-Ausschnitt) und über die Schrift-Zensur (Ziff. 4) gegengeprüft; M5-M9 beruhen
je auf einem Agentenbeleg mit Rendering und sind so weit plausibel, nicht einzeln nachgerendert.

**M3 ist die gefährlichste bisher gefundene Mechanik**, weil sie keine Lücke und kein Fremdzeichen
hinterlässt, sondern eine **glaubwürdige Zahl**. Ein Destillat, das dem Textlayer folgt, trägt
danach kein ≤ mehr, sondern «97». Die Risikokarte von Run 83 sucht nach ≤/≥ im Destillat und ist
für diesen Fall **strukturell blind**.

## 4. Reichweite: Schrift-Zensur über alle Hausquellen

`pdffonts` über alle 1327 PDF beider Ablagen: 20 Dateien tragen SchwabePi, davon 11 deutsch.
PyMuPDF-Zensur über die **286 aufgelösten Quellen** hinter 290 Destillaten (SIA, VKF, übrige
Herausgeber; DIN/VSS/RAL nicht berührt): **92 Quellen** mit Spans in Pi-/Symbol-/Math-Schriften,
deren Textlayer ASCII, «£» oder Privatbereich liefert, 2'502 Spans. Der grösste Teil sind
Aufzählungszeichen (Wingdings, ZapfDingbats, Symbol-Bullet U+F0B7) und griechische Buchstaben,
also harmlos.

**Relationsrelevant und einzeln gegen das Destillat gehalten:**

| Quelle | Klasse | Destillat | Ergebnis |
|---|---|---|---|
| 9 Destillate der SchwabePi-Quellen | M3, 190 Stellen (≤ ≥ ± ° ≈) | sia-108, -110, -118-24x, -181, -244/246/248 | **keine verschmolzene Zahl im Bestand**; 1 Abdeckungslücke (SIA 181 Tab. 3, siehe unten); 1 Zählfehler (SIA 108, «vier» statt fünf Kriterien) |
| BRL 24-15 S. 27 | M4, 12× ≤ | vkf-brl-24-15 | Werte richtig, **«9 Stufen» falsch, 11 gedruckt**; Kerosin in allen drei Korrosionsklassen, nicht nur Klasse 1 |
| BRL 15-15 S. 29 | M4, 8× ≤ | vkf-brl-15-15 | Beispielliste im Destillat nicht wertmässig geführt, kein Risiko |
| PAV-A 01 S. 4 | M4, ≥ 1,5 N/mm² | pav-a-01-2010 | richtig geführt (Run 41) |
| Atrien S. 8 | M4, ≥ 0,5 | vkf-brl-101-15 | richtig (G4 am Bild) |
| Sichtbeton-Merkblatt S. 37 | MathematicalPi-One (U+E024 = ≥, U+E02E = >) | sichtbeton-merkblatt | Ketten «0,50 > r ≥ 0,30» richtig, am 300-dpi-Rendering belegt |
| bfu Geländer | MathematicalPi-One U+E05B | bfu-gelaender | Zeichen ist Ø (Durchmesser), keine Relation |
| SIA 203/431/493 | EuropeanPi «u» = × | Destillate | keine «u»-Artefakte im Bestand (grep) |
| SIA 480:2004 | Symbol U+F8Ex | sia-480-2004 | Formelklammern, harmlos |

**Der Kernbefund der Messung:** SIA 181:2006 Tab. 3 führt die Umschaltschwellen **L_r ≤ 64 dB(A)
Tag / ≤ 56 dB(A) Nacht**. Der Textlayer liefert «Lr 9 64» / «Lr 9 56», und genau diese beiden
Werte fehlten im Destillat, das die Umschaltung nur verbal («abseits Verkehrsträger») führte. Die
Ursache ist nicht belegt, aber der Ort ist es. Inline nachgetragen.

## 5. Zweiter blinder Fleck der Run-83-Karte

Die Karte zählte die Unicode-Zeichen ≤/≥. **9 Destillate** schreiben Relationen in ASCII («<=»,
«>=»), 3 davon ausschliesslich (`sia-480-2004`, `sia-mb-2021`, `vkf-brl-11-15`). Sie fielen aus
der Karte. `sia-181-2006` (14 ASCII-Relationen, Quelle mit M3) war der gewichtigste Fall darunter;
er ist in dieser Runde vollständig abgeglichen.

## 6. Was NICHT geprüft wurde

1. Die **24 Typ-A-Destillate** der Karte (Quelle ohne Textlayer) sind nicht angefasst.
2. M5 bis M9 sind je an **einer** Datei belegt; ihre Reichweite ist nur über die Schrift-Zensur
   geschätzt, die Nicht-Pi-Mechaniken (M6, M7, M8, M9) erfasst sie nicht.
3. Die Zensur prüft Schriftnamen. Ein ≤ in einer Textschrift mit falschem ToUnicode-Eintrag
   bleibt unsichtbar (M6/M7 wären so ein Fall, wenn die Schrift nicht Symbol hiesse).
4. Die ASCII-Relationen der drei reinen ASCII-Destillate sind nicht am Original geprüft.
5. Keine Statushebung: die Refuter-Richtung lief auf den Grenzwerten, die Abdeckungsrichtung nur
   am SIA-181-Anhang G/H/J und über die Pi-Stellen der neun SchwabePi-Destillate.

## 7. Wiederverwendung

Scripts im Scratchpad dieses Laufs (nicht versioniert, Muster hier festgehalten):
`pdffonts` über beide Ablagen mit Filter auf Pi|Symbol|Math|Wingding|Dingbat; PyMuPDF
`page.get_text("dict")`, Spans mit solchen Schriftnamen, Textinhalt ASCII-alnum, «£» oder
U+E000–F8FF; für SchwabePi die Zuordnungstabelle aus Ziff. 3 anwenden und je Stelle
**Zahl nach dem Pi-Zeichen** im Destillat suchen: fehlt sie, ist nichts übernommen; steht sie
ohne Relation oder mit vorangestelltem «9»/«0»/«8», ist die Stelle am Bild zu prüfen. PyMuPDF
liegt in `~/.venvs/volumen3d/bin/python` (nicht im System-Python).
