---
title: "N84-2 abgearbeitet: Typ-A-Klasse der Run-83-Risikokarte (Quellen ohne Textlayer) blind refutiert"
status: speculative
last_updated: 2026-09-15
lauf: "Normen-Nacht Run 85 (MacBook Pro, SIA/VKF-Scope)"
links: [[n84-textlayer-mechaniken-260911]], [[n83-quellenaufloesung-260910]]
---

# Anlage Run 85: 22 Typ-A-Destillate, 136 Aussagen, 14 Kontrollen

## 1. Prüfmenge

Aus der Risikokarte `n83-quellenaufloesung-260910.md` die 24 Destillate mit Quelle ohne
Textlayer. **Nicht erneut geprüft:** `lignum-4-1` und `lignum-lignatec` (Runden 32-40 mit
rechnerischer Zellaufnahme, Seiten-Inventur und Tabellen-Neuaufnahme; die Methode dieses Laufs
wäre dort keine neue). **Geprüft:** die übrigen 22, darunter `lignum-4-2` (vier frühere
Refuter-Runden, nie mit rechnerischer Aufnahme oder Inventur).

Paketbildung per Script aus den Destillaten (jede Zeile mit ≤, ≥, <=, >= samt Aufzählungsblock,
ohne Frontmatter und ohne Verifikationsabschnitte), dann sechs Pakete an sechs blinde Agenten.
Die Agenten sahen nur die Aussagen und den Quellpfad, nicht das Destillat. Werte und Zeichen am
eigenen Rendering (200-800 dpi), OCR nur zum Auffinden (Mechanik M8 aus Run 84).

| Paket | Destillate | Aussagen | davon Kontrollen |
|---|---|---|---|
| K1 | sia-384-201-2017, sia-382-1-2014 | 28 | 2 |
| K2 | swki-va103-01-2017, sia-343-051-2018 | 22 | 3 (2 an derselben Stelle) |
| K3 | stadt-zuerich-absturzsicherungen, sia-358-fachartikel, sia-1695-4-2018, sia-en-13200-1-2019 | 15 | 3 |
| K4 | sia-180-081/-082, sia-251-2008, sia-312-2013, sia-329-2018, sia-592-056 | 17 | 2 |
| K5 | sia-271-2007, sia-271-wegleitung, suissetec, svdw, sia-118-266-1, sia-281-2017, sia-416-1-2007 | 13 | 2 |
| K6 | lignum-4-2 | 41 (162 Werte) | 2 |

## 2. Gegenprobe der Prüfstufe

Vierzehn Aussagen trugen einen verfälschten Wert, ohne Kennzeichnung. Die echte Aussage stand
nicht zusätzlich im Paket, damit kein Widerspruch innerhalb des Pakets verrät, wo die Kontrolle
liegt; das Verdikt zur Kontrolle prüft zugleich den Bestandswert.

| Kontrolle | untergeschoben | gedruckt | erkannt |
|---|---|---|---|
| SIA 384.201 Ziff. 6.3.3.2.1 | n50 ≤ 1,5 h⁻¹ | ≤ 3 h⁻¹ | ja |
| SIA 382/1 Ziff. 5.7.5.1 | SPI ≤ 0,45 | ≤ 0,35 | ja |
| SWKI VA103 Ziff. 2.7.3 | Veloraum ≥ 8 % | mindestens 3 % | ja |
| SN EN 14351-2 Ziff. 4.5.1 (2 Stellen) | ≤ 3,0 % Organik | nicht mehr als 1,0 % | ja, beide |
| Stadt ZH Ziff. 1.4, Pflanzentrog | ≥ 90 cm | ≥ 75 | ja |
| SIA-358-Fachartikel Art. 3.14 | Breite ≤ 0,2 m | ≥ 0,2 m | ja |
| SN EN 16954 Tab. 2, Z. 4.2.5 | F4 ≥ 50,0 | ≥ 40,0 | ja |
| SIA 312 Ziff. 2.2.3 | Körnung ≥ 25 mm | ≥ 15 mm | ja |
| SIA 251 Ziff. 2.2.5 | dL − dB ≥ 8 mm | ≥ 5 mm | ja |
| SIA 271 Ziff. 5.2.3 | Rinne ≥ 1000 mm² | mindestens 2000 mm² | ja |
| Suissetec Kap. 1.3, ab 15° | > 50 cm → 0,1 | 0,2 | ja |
| Lignum 4.2 Abb. 424-1 | Abdeckholz EI60 ≥ 50 mm | ≥ 60 mm | ja |
| Lignum 4.2 Abb. 428-2 | R90 c ≥ 120 mm | ≥ 140 mm | ja |

**14 von 14 erkannt, 0 Falsch-Positive im Bestandstext.** Zusammen mit Run 84 (8 von 8)
sind es 22 von 22. Die schwerste Kontrolle war die Suissetec-Zeile (zwei fast gleiche
Tabellenreihen für verschiedene Dachneigungen); sie wurde erkannt.

## 3. Übernommene Befunde (34), alle inline korrigiert

Jeder Befund vom Hauptprozess am Bild übernommen: eigenes Rendering (Präfix `r85-HP-`) oder
Sichtung des Agenten-Ausschnitts; wo nur der Agentenbeleg vorliegt, ist das vermerkt.

**Relations- und Grenzfehler (5)**
1. SIA 271:2007 Tab. 8 TR-013, S. 44: «≤ −10 °C», Destillat «< −10 °C».
2. SIA 384.201:2017 Tab. B.15, S. 78: erste Klasse «≤ 1918», Destillat «< 1918».
3. SIA 384.201:2017 Tab. B.15: Massiv-Dach 2,1 gilt bis und mit 1958…68, Destillat «< 1958».
4. SIA 251:2008 Ziff. 6.1.1.2, S. 26: «älter als 28 Tage», Destillat «≥ 28»; Ziff. 6.1.1.3 fehlte.
5. SIA-Wegleitung 271, Abb. 76, S. 64: Notüberlauf «nie höher als» Freibordquote, Destillat «unter».

**Fehlende Bedingungen und Geltungsbereiche (9)**
6. SIA 271 Tab. 8: 1,5 N/mm² nur Spalte Dächer, Nassräume ≥ 0,5 N/mm².
7. SN EN 14351-2 Ziff. 4.5.1, S. 13: «in nicht fein verteilter Form».
8. SN EN 14351-2 Abschnitt 7, S. 30: Pflichtkennzeichnung nur für kraftbetätigte Türen.
9. SWKI VA103 Tab. 7, S. 42: begehbares Flachdach «(ohne Geländer)».
10. SWKI VA103 Ziff. 2.6.6, S. 44: Abstände 10/15 m nur für Q/S ≤ 1.
11. SN EN 13200-1 NA.12.2, S. 5: SIA 500 samt C3:2013 ist massgebend, nicht ergänzend.
12. Lignum 4.2 Kap. 4.2.5, S. 17: Mineralwolle nach Fugenbreite bedingt, Legende 5 fehlte.
13. SIA 180.081 Anhang G, S. 47: Tab. G.3/G.4 nur für l_gb ≤ 30 mm.
14. SIA 384.201 Anhang F: Φ_hu = 0 in der Schweiz (NA.2.18) im Praxis-Transfer nicht verknüpft.

**Zuordnungs-, Kontext- und Deutungsfehler (8)**
15. SIA 312:2013 Tab. 5, S. 14: Werte für das Einzelobjekt nach SN 592000, **höher als die
    GEP-Werte**; Praxis-Transfer nannte sie «direkt verwendbar» für den GEP-Nachweis und
    bezog sie auf die Substrat- statt die Aufbaudicke. Folgenreichster Befund des Laufs.
16. SWKI VA103 Ziff. 2.2.2, S. 19: «Dauerbetrieb» und «Suva-Werte» nicht im Text, die
    Suva-Werte liegen tiefer.
17. SN EN 14351-2: EN 16034 «in Verbindung mit» EN 14351-2, nicht an ihrer Stelle.
18. Stadt ZH Richtlinie, S. 4: «blosse Verwaltungspraxis, nicht ableitbar» war Deutung; das
    Zeichen (**) in Ziffer 2 fehlte.
19. Lignum 4.2 Abb. 422-1, S. 14: Legende 5 in Bild 1d, nicht 1e.
20. Lignum 4.2 Abb. 427-1, S. 19: Legenden 1 und 3 nur in 1a bzw. 2a, 1b/2b tragen Legende 2.
21. Lignum 4.2 Abb. 433-1, S. 27: b ≥ 100 mm in Bild 1e, Stellstreifen ohne Mass.
22. SVDW-Wegleitung S. 9: die 12-kg-Regel ist eine Zuschreibung der Wegleitung an SIA 271,
    in SIA 271:2007 nicht aufgefunden (Agentenbeleg, OCR-Suche S. 1-50, untere Schranke).

**Fundstellen, Formalien, normeigene Vermerke, Klärungen (12)**
23. SIA 384.201 Tab. NA.2: f₁, nicht f_t. 24. SIA 384.201: Bedingungen Anhang F in F.1, S. 89.
25. SIA 382/1 Ziff. 5.10.2: SWKI VA300-01 und SWKI 2003-3 sind zwei Dokumente.
26. SIA 382/1: Figur 6 in Kap. 5, S. 42. 27. SIA 251: Widerspruch der Norm bei genau 5 mm.
28. SN EN 13200-1 Tab. 1: Druckfehler «über 10 000», stimmig wäre «über 20 000».
29. SN EN 16954 Ziff. 4.2.3: gedruckt «CWT». 30. Stadt ZH: Handlauf-Zuordnung am 400-dpi-
    Ausschnitt eindeutig, Vorbehalt aufgelöst. 31. Lignum 4.2: «y = 5 mm» mit Gleichheitszeichen.
32. Lignum 4.2: Schmelzpunkt-Kriterium im Glossar, nicht in Tab. 340-1.
33. SIA 180.081 Anhang F: Bildzuordnung F.2/F.4-F.6, Fussnote PVC-Kammern (Agentenbeleg).
34. SIA 2056:2019 Ziff. 6.21: vier Berechnungsmodelle, nicht drei (Agentenbeleg).

**Kein Befund nach Methodik-Pflicht 7** (Aussage steht im Destillat bereits an anderer Stelle):
K3-01 (Traversen nur für nicht kindersichere Elemente, übergeordnete Zeile), K2-11 zweiter Teil
(+1,0 m für Q/S > 1 ist geführt), K2-13 (BAFU-Deutung, geprüft 24.08.2026, S42-2), K1-15 zweiter
Teil (NA.2.18 in Zeile 30), K6 «Fugen bis maximal 10 mm» (Kap. 4.2.7 Kopf).

## 4. Was die Typ-A-Klasse von der Textlayer-Klasse unterscheidet

Run 84 fand in der Textlayer-Klasse bei 90 Grenzwerten **keinen** Relationsfehler. Die
Typ-A-Klasse trägt **fünf**, alle von derselben Art: nie ein vertauschtes ≤/≥, immer die
**Strenge** (< gegen ≤, ≥ gegen >, «unter» gegen «nicht höher als») oder die **Klassengrenze**.
Das ist der Fehlertyp, den N84-2 vorhergesagt hatte (Ablesen am Bild statt Encoding), in
seiner mildesten Form. Richtungsfehler, die einen Wert ins Gegenteil kehren, gab es in beiden
Klassen nicht.

Grösser ist der Befund ausserhalb der Relationen: 29 der 34 Befunde betreffen Bedingungen,
Zuordnungen, Kontext und Fundstellen. Das deckt sich mit Methodik-Pflicht 13: die
Refuter-Richtung findet weggelassene Ausnahmen (Klasse a) zuverlässig, weil das Paket die
überdehnte Restregel zeigt.

**Lignum 4.2 als Einzelfall:** vier Refuter-Runden (Run 31-33), die vierte mit null Befunden,
und jetzt fünf Zuordnungsfehler, die seit dem Erstdestillat im Text standen. Die Methode war
dieselbe (Refuter gegen den Scan), anders war die **Anlage**: die früheren Runden lasen das
Destillat neben dem Original, diese Runde bekam nur ein Aussagenpaket. Ein Einzelfall ist kein
Beleg für eine Pflicht; vorgelegt als N85-1.

## 5. Was NICHT geprüft wurde

1. `lignum-4-1` und `lignum-lignatec` (bewusst, siehe Ziff. 1).
2. Die Abdeckungsrichtung lief auf keinem der 22 Destillate. Keine Statushebung.
3. Aussagen ohne Relationszeichen in denselben Destillaten nur, soweit sie im selben Block standen.
4. Drei Refuter-Nebenbefunde zu Lignum 4.2 (Abb. 424-1 Leg. 6, Abb. 434-1 Leg. 2/7, Kap. 4.3.5)
   sind im Destillat als offen vermerkt, nicht übernommen, weil nicht selbst nachgerendert.
5. K5-13 (`sia-416-1-2007`) war im Paket abgeschnitten; nur der geprüfte Teil ist bestätigt.
6. DIN/VSS/RAL nicht berührt (Stations-Split).

## 6. Wiederverwendung

Paketbildung: `build.py` (Blockextraktion um jede Relationszeile, Ausschluss von Frontmatter
und Verifikationsabschnitt) und `pack.py` (Kontrollen durch Ersetzen im Block, Schlüsseldatei
ID → Destillat/Zeilen/Kontrolle), beide im Scratchpad dieses Laufs, nicht versioniert. Die
Kontrollen ersetzen die echte Aussage, statt sie zu ergänzen. Beim Ersetzen die Anzahl
Vorkommen prüfen: ein Wertepaar wie «EI60 ≥ 60 mm, EI90 ≥ 80 mm» steht in Lignum 4.2 viermal in
drei verschiedenen Bauteilsituationen; ein globales Ersetzen hätte drei echte Aussagen verfälscht
(im Lauf bemerkt und auf die eine Legende eingegrenzt).
