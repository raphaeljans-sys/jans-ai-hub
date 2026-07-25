---
quelle: amtlich
ebene: Gemeinde (Kanton Zürich)
erlass: Bau- und Zonenordnung — Zürich (Stadt)
kuerzel: BZO
gemeinde: Zürich (Stadt)
docid: 6
titel: Bau- und Zonenordnung (BZO 2016) — Grundmasse-Tabellen Art. 13/14/18 (Layout-Extraktion)
quelle_url: https://oerebdocs.zh.ch/getDoc?docid=6
abgerufen: 2026-07-25
lizenz: Amtlicher Text — gemeinfrei (Art. 5 URG)
---

# BZO Zürich (Stadt) — Grundmasse-Tabellen Art. 13, 14, 18 (saubere Layout-Extraktion)

Ergänzung zu `raw/260607_amtlich_zh_bzo-zurich-stadt.md` (dessen Markdown-Konvertierung
die mehrspaltigen Grundmasse-Tabellen linearisiert und dadurch spaltenverschoben hatte).
Diese Datei extrahiert dasselbe PDF (`oerebdocs.zh.ch/getDoc?docid=6`,
`700.100-BZO-2016-05.2024.4_V43.pdf`, Stand 29.05.2024) erneut mit `pdftotext -layout`,
wodurch die Spaltenausrichtung erhalten bleibt. Anlass: Buch-Run 56 (Stichproben-
Re-Verifikation [[zonenkonformitaet]]).

## Art. 13 — Grundmasse Wohnzonen

```
                        W2bI W2bII W2bIII    W2     W3     W4b    W4     W5     W6
Vollgeschosse max.        2     2      2      2      3      4      4      5      6
anrechenbares             1     1      1      1      0      0      0*     0*    0*
Untergeschoss max.
anrechenbares             1     1      1      1      1      1      1      1      1
Dachgeschoss max.
Gebäudehöhe max.         9m    9m     9m     9m     9,5 m 12,5 m 12,5 m 15,5 m 18,5 m
Grundgrenzabstand        5m    5m     5m     5m     5m     5m     5m     5m     5m
min.
Gebäudelänge inkl.
besondere Gebäude       25 m   20 m
max.
Ausnützungsziffer       40 %   40 %   45 %   60 %   90 % 105 % 120 % 165 % 205 %
max.
Überbauungsziffer
Hauptgebäude max. 22 %         22 %   25 %

*vorbehältlich Art. 8 Abs. 7
```

Abs. 2: In Gebieten mit erhöhter Ausnützung (Zonenplan) gelten die kantonalen
Abstandsvorschriften (rückwärtig Grundgrenzabstand 5 m) sowie im 12-m-Strassenstreifen
ab Baulinie/Strassenabstandslinie eine AZ nach der Formel Vollgeschosszahl × 100 %,
nicht übertragbar.

Abs. 3 (Wohnzonen W3, W4b, W4, W5, W6): fertiger Fussboden des untersten Vollgeschosses
bzw. eines ersetzenden Untergeschosses max. 1 m über gewachsenem Boden entlang der
Gebäudeaussenseite; ersetzt ein Untergeschoss ein Vollgeschoss, gilt dieselbe Grenze für
das darüberliegende Vollgeschoss.

## Art. 14 — Mehrlängenzuschlag

```
     W2bI   W2bII W2bIII    W2      W3      W4b      W4        W5        W6
    10 m   10 m   10 m    10 m    10 m     11 m    11 m      12 m      13 m
```

Erhöhung des Grenzabstands bei Fassadenlängen > 12 m um einen Drittel der Mehrlänge,
höchstens auf die genannten Masse. Entfällt in Gebieten mit erhöhter Ausnützung (Abs. 2).
Fassadenlängen von Hauptgebäuden mit Gebäudeabstand < 7 m werden zusammengerechnet
(Abs. 3).

## Art. 15 — Herabsetzung des Grenzabstands

Verringerung um 1 m je weggelassenem, nicht durch Untergeschoss ersetztem Vollgeschoss,
höchstens bis zum kantonalen Mindestmass — sofern auch die reduzierte Gebäudehöhe gemäss
Art. 13 Abs. 1 der jeweiligen Zone nicht überschritten wird (Wohnzone W3: 6,5 m).

## Art. 18 — Grundmasse Zentrumszonen

```
                                                  Z5       Z6       Z7
Vollgeschosse max.                                5        6        7
anrechenbares Untergeschoss max.                  1        1        1
anrechenbares Dachgeschoss max.                   1        1        1
Gebäudehöhe max.                                 19 m     22 m     25 m
Grundgrenzabstand min.                          3,5 m    3,5 m    3,5 m
Ausnützungsziffer max.                          200 %    230 %    260 %
```

Abs. 2: in Gebieten mit im Zonenplan eingetragener Freiflächenziffer gilt diese (bis zur
Hälfte innerhalb des Gebiets verlegbar); sonst Art. 11 Abs. 2/3.

## Art. 19 — Grundmasse Industrie-/Gewerbezonen (zur Einordnung, nicht Wohnzonen-relevant)

```
                                                                 IG I         IG II          IG III
Vollgeschosse max.                                               7            7               7
anrechenbares Dachgeschoss                                       0            0               0
anrechenbares Untergeschoss max.                                 1            1               1
Gebäudehöhe max.                                                25 m          25 m           25 m
Grundgrenzabstand min.                                          3,5 m        3,5 m          3,5 m
Ausnützungsziffer für Handels- und Dienstleistungsnutzung max.  50 %         100 %          150 %
Baumassenziffer max.                                          12 m3/m2     12 m3/m2       12 m3/m2
Freiflächenziffer min.                                          10 %        12,5 %          15 %
```

## Methodenhinweis (Compounding)

Bei künftigen amtlichen ZH-Erlassen/BZO mit erkennbar linearisierten Tabellen (Spalten
zu Fliesstext verschmolzen, Zahlen ohne erkennbare Zuordnung) lohnt sich `curl` auf die
`quelle_url` (meist `oerebdocs.zh.ch/getDoc?docid=<n>` oder zhlex) + `pdftotext -layout`
als Neuextraktion, bevor ein Wert als «nicht auffindbar» geflaggt wird — die Linearisierung
ist ein Extraktionsfehler, kein Hinweis auf fehlenden Norminhalt.
