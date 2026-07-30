# Normen-Training Run 39 (MacBook Pro, 30.07.2026) — Abdeckung von `lignum-4-1` gemessen

**Kurzfassung:** Raphael hat die weitere Runde freigegeben, nachdem Run 38 seine eigene
Abdeckungsmessung als unzureichend ausgewiesen hatte. Diese Runde ersetzt die Schätzung durch eine
Feststellung: eine **vollständige Seiten-Inventur** aller 40 A3-Blätter. Ergebnis — Seiten 2 bis 80
lückenlos, 184 Einzelelemente, **72 Nummern in der Quelle, 71 im Destillat zitiert, alle 74 Kapitel
inhaltlich erfasst, null erfundene Fundstellen.** Die eine Lücke war eine nicht zitierte Abbildung;
beim Nachlesen der betreffenden Seite zeigte sich, dass dort auch **einer von vier Nachweis-Wegen**
fehlte — ausgerechnet der, für den der Hub bereits ein `established`-Destillat besitzt.

---

## 1. Warum diese Runde nötig war

Run 38 hatte die Abdeckung per OCR gemessen und dabei 34 Nummern gefunden, während das Destillat 71
zitiert. Der Diff war deshalb ausdrücklich nur als **untere Schranke** ausgewiesen: er konnte
belegen, dass etwas fehlt, aber nicht, dass nichts fehlt. Genau diese Unschärfe war der Grund für
die Vorlage an Raphael — und sie ist mit einer besseren Messung behebbar, nicht mit einer weiteren
Runde derselben Art.

## 2. Methode — Inventur statt Schätzung

1. Alle 40 A3-Blätter (Teile A+B+C) mit `pdftoppm -r 200 -png` gerendert, **je Aufnahme-Agent ein
   eigenes Präfix** (`inv-A-r9-`, `inv-B1-r9-`, `inv-B2-r9-`, `inv-C1-r9-`, `inv-C2-r9-`,
   Methodik-Pflicht 5).
2. Jedes Blatt in linke und rechte Hälfte gesplittet — ein Blatt trägt zwei gedruckte Seiten.
3. **Die gedruckte Seitenzahl am Seitenrand abgelesen**, nicht aus der Blattnummer berechnet. Das
   ist der Punkt, an dem eine Inventur sonst still verrutscht.
4. Je gedruckter Seite aufgenommen: Kapitelüberschriften mit Nummer, jede Tabelle mit Nummer und
   Titel, jede Abbildung mit Nummer und Titel, und jeder eigenständige Textblock mit einer
   Kurzbezeichnung.
5. Fünf parallele Aufnahme-Agenten, danach der Diff durch den Hauptprozess — gegen die 71 im
   Destillat zitierten Nummern und gegen die 74 Kapitelnummern.

Keiner der fünf Agenten musste eine Nummer mit «?» markieren; 200 dpi genügten durchgehend.

## 3. Messergebnis

| Kennzahl | Wert |
|---|---|
| erfasste gedruckte Seiten | **2 bis 80, lückenlos** (79 Seiten) |
| erfasste Einzelelemente | 184 |
| Tabellen-/Abbildungsnummern in der Quelle | **72** |
| davon im Destillat zitiert | **71** |
| Abdeckungslücken | **1** — Abbildung 435-3 (S. 35) |
| Kapitelnummern in der Quelle | 74 |
| Kapitel ohne inhaltliche Entsprechung im Destillat | **0** |
| im Destillat zitierte Nummern, die es in der Quelle nicht gibt | **0** |

Die letzte Zeile ist der wichtigste Positiv-Befund und war vorher nie belegt: **das Destillat
erfindet keine Fundstelle.** Vierzehn Kapitelnummern (2.3.1, 2.3.2, 4.5.1, 4.6.1, 5.3.1–5.3.7,
5.3.5.1, 5.4.1, 5.4.2) kommen im Destillat nicht als Nummer vor — ihr Inhalt aber vollständig. Die
Decken- und Wandsystem-Kataloge sind dort nach System und Tabelle geführt statt nach Unterkapitel.
Das habe ich einzeln geprüft; es ist eine andere Gliederung, keine Lücke.

Die Inventur liegt als `training/l41-seiteninventur.md` in der KB. Künftige Abdeckungs-Runden
diffen dagegen, statt die Quelle erneut zu inventarisieren.

## 4. Die zwei Befunde — und warum der zweite der wichtigere ist

**Befund 1 (die Lücke).** Abbildung 435-3 «Massivholzdecken mit einer Fugenbreite f > 5 mm» (S. 35)
war nicht zitiert. Für sich genommen eine Formalie.

**Befund 2 (inhaltlich).** Beim Nachlesen dieser Seite am eigenen 220-dpi-Rendering zeigte sich,
dass das Original dort **vier** Wege zum Feuerwiderstandsnachweis nennt, das Destillat aber nur
drei führte. Es fehlte:

> Fugenausbildung gemäss Lignum-Dokumentation Brandschutz, Publikation «Bauteile in Holz –
> Anschlüsse bei Bauteilen mit Feuerwiderstand» [7]

Das ist ausgerechnet der Weg, für den der Hub mit `lignum-4-2-anschluesse-feuerwiderstand.md`
bereits ein **`established`**-Destillat besitzt. Der Planer wäre also an einer Lösung
vorbeigelaufen, die im Haus verifiziert vorliegt. Beide Befunde sind korrigiert und über
`[[lignum-4-2-anschluesse-feuerwiderstand]]` verlinkt.

**Daraus die Lehre, als Methodik-Pflicht 6 verankert: eine fehlende Fundstelle ist ein Zeiger, kein
Befund.** Wer die Nummernliste nur abhakt, notiert hier «1 formaler Befund» und macht weiter. Der
fehlende Nachweis-Weg wird erst sichtbar, wenn die Lücke am Original **nachgelesen** statt bloss
eingetragen wird.

## 5. Nachgeführt

- `destillate/lignum-4-1-…-feuerwiderstand.md` — Kap. 4.3.5.2 vollständig neu gefasst (vier
  Nachweis-Wege, Abb. 435-3, Querverweis); Frontmatter-Status und Verifikationsstand Runde 9.
- `training/l41-seiteninventur.md` — **neu**, die vollständige Inventur als dauerhaftes Arbeitsmittel.
- `training/PROGRAMM.md` — Methodik-Pflicht 6 präzisiert (Seiten-Inventur statt OCR-Schätzung) und
  um die Zeiger-Regel erweitert; Ergebnis der neunten Runde samt Taktungs-Bewertung.
- `destillate/INDEX.md`, `wiki/QUESTIONS.md`, `CHANGELOG.md` — Run-39-Einträge.

## 6. Offen — und was Raphael entscheiden sollte

1. **Taktung `lignum-4-1` ist jetzt entscheidbar, vorher war sie es nicht.** Die Abdeckung ist
   gemessen und praktisch vollständig; die Zellwerte waren Gegenstand der Runden 5-7 (dort ohne
   Regression). Eine zehnte Routinerunde hat damit **keine erkennbare offene Frage mehr zu
   beantworten**. Sinnvoll wäre nur noch ein **ereignisgetriebener** Lauf, wenn eine neue Fassung
   der Publikation ins Haus kommt. Ich schlage das vor und stelle es nicht selbst um.
2. **`lignum-lignatec` bleibt offen.** Dort ist die neunte Runde fällig — die acht
   Übersichtsaxonometrien (S. 16-23) und Tabelle 2 (S. 4-5) sind nie rechnerisch aufgenommen worden.
3. **Der Aktualitäts-Vorbehalt bei `lignum-lignatec` ist durch keine Verifikationsrunde lösbar**
   und bleibt der praktisch folgenreichste offene Punkt: die Quelle datiert von 2005 und bezieht
   sich auf die VKF-Vorschriften 2003.
4. **Die Seiten-Inventur ist ein wiederverwendbares Muster** für jede umfangreiche Publikation,
   deren Abdeckung belegt werden soll. Der OCR-Diff genügt dafür nachweislich nicht.
