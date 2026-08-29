# N62-3 — Kandidatenliste: `established`-Destillate ohne Prüfstand

**Erstellt:** 27.08.2026, Normen-Nacht Run 63 (MacBook Pro)
**Auftrag:** `wiki/QUESTIONS.md` N62-3 — «Prüfen, ob dieselbe Lücke andere `established`-Destillate
trifft. Kandidatenliste erstellen, priorisiert nach Abnehmer-Reichweite.»
**Anlass:** Run 62 fand auf `sia-118-1991.md` — vier Wochen `established`, drei bestandene
Prüfrunden — **84 Kern- und 82 Nebenlücken** bei null falschen Werten, sobald erstmals die
Abdeckungsrichtung lief (Methodik-Pflicht 13).

---

## 1. Der Befund in einer Zahl

| Messung | Wert |
|---|---|
| Destillate gesamt | 461 |
| davon Status `established` (alle Schreibweisen) | **310** |
| davon mit Prüfstand im Destillat | **2** |
| davon ohne Prüfstand | **308** |

Die beiden Ausnahmen sind `din-4102-1-1998.md` und `din-en-12101-2-2003.md` — **beide DIN und
damit Mac-Mini-Scope**. Im SIA/VKF-Bestand dieser Station trägt **kein einziges**
`established`-Destillat einen Prüfstand.

Die 27 weiteren Dateien, die das Wort «Prüfstand» führen, sind `speculative` (20 davon die
VKF-Delta-Serie) oder tragen ein abweichendes Statusvokabular (`destilliert`). Sie sind hier
nicht Gegenstand: Methodik-Pflicht 13 bindet den Prüfstand an die **Hebung** auf `established`.

**Damit ist N62-3 sachlich beantwortet: SIA 118 war kein Einzelfall, sondern der Normalfall.**
Was Run 62 fand, war nicht ein schlechtes Destillat, sondern eine Statushebung nach einer
Methode, die Vollständigkeit strukturell nicht messen kann.

## 2. Was die Liste NICHT behauptet

Ein fehlender Prüfstand ist **kein Fehlerbefund**. Er besagt nur, dass nicht dokumentiert ist,
welche Prüfrichtung auf welchem Teil lief. Die meisten dieser Destillate wurden vor dem
17.08.2026 gehoben, als Methodik-Pflicht 13 noch nicht galt — sie verletzen keine Regel, die
zu ihrer Zeit bestand. Die Liste misst **Ungewissheit, nicht Mangel**.

Belastbar ist nur: bei den beiden Destillaten, an denen die Abdeckungsrichtung nachträglich
lief (`sia-416-1-2007` in Run 54, `sia-118-1991` in Run 62), fand sie **beide Male** erhebliche
Lücken, nachdem die Refuter-Richtung zufrieden war. Zwei von zwei ist eine schmale Basis für
eine Prognose, aber es ist die einzige, die es gibt.

## 3. Priorisierung — die Metrik und ihre Grenze

Priorisiert wird nach **entscheidungstragender Reichweite**: in wie vielen
`skills/*/SKILL.md`, `agents/*.md` und `rules/*.md` die Norm vorkommt. Das sind die Stellen, an
denen ein Destillat eine Aussage in ein Erzeugnis trägt.

**Nicht** gezählt werden Treffer in `referenzen/`, `wissensbasis/` und Goldstandard-LV-Dateien.
Das ist der entscheidende Unterschied zur naiven Zählung: roh gemessen führt SIA 451 21 Treffer
und läge weit oben — davon liegen 20 in LV-Referenzdateien, wo die Norm als Datenformat-Vermerk
in einer Kopfzeile steht. Entscheidungstragend ist sie **einmal**. Die naive Zählung hätte die
Liste an ihrer Spitze verfälscht.

**Grenze der Metrik:** Sie misst Nennungen, nicht Gewicht. Eine Norm, die in einem Skill die
ganze Rechenlogik trägt, zählt gleich wie eine, die in einer Aufzählung vorkommt. Die
Spalte «Warum» korrigiert das von Hand.

## 4. Die Kandidaten, geordnet

### Rang 1 — `sia-416-2003.md` · Reichweite 12 · 74 Zeilen · **schärfster Kandidat**

✅ **ERLEDIGT (Run 64/65, 28./29.08.2026, ausserhalb dieses Auftrags).** Trägt inzwischen einen
vollständigen Prüfstand (Abdeckungsrichtung Run 64, Refuter-Runde Run 65); Status bewusst
`speculative` belassen. Siehe Destillat, Abschnitt «Prüfstand».

| | |
|---|---|
| Status (bei Listenerstellung 27.08.) | `established`, kein Prüfstand |
| Konsumenten | grobkosten-onepager · immobilienbewertung · kostenkontrolle · kostenschaetzung · machbarkeit · normen · wettbewerb · flaechen-nachweis · grobkosten-rechner · realwert-rechner · volumen-rechner · `rules/normen-referenz` |
| Warum zuoberst | Höchste entscheidungstragende Reichweite im ganzen SIA-Bestand — **12 Konsumenten, davon 4 Agenten, die Flächen und Volumen rechnen**. Jede Machbarkeitsstudie, jede Grobkostenschätzung und jeder Flächennachweis zieht hier. |
| Verschärfend | Das Schwester-Destillat `sia-416-1-2007.md` trägt nach Run 54 **994 Zeilen und einen Prüfstand**; die **Mutternorm** hat **74 Zeilen und keinen**. Das Missverhältnis ist ein eigener Verdachtsgrund: die Aufmerksamkeit ging an die Teilnorm, die Grundnorm blieb auf dem Erstdestillat stehen. |

### Rang 2 — VKF-Kernrichtlinien · Reichweite 17 (Familie) · kein Prüfstand

Die Familie hat die höchste Reichweite überhaupt, verteilt sich aber auf 79 Destillate. Drei
tragen `established` und erhebliches Gewicht:

| Destillat | Zeilen | Warum |
|---|---|---|
| `vkf-ah-1001-15-wohnbauten.md` | 731 (→ 923) | Grösstes `established`-Destillat des Bestands ohne Prüfstand — ✅ **ERLEDIGT (Run 67, 29.08.2026, Schub-Lane NORMEN-PRUEFSTAND).** Abdeckungsrichtung über alle 29 Seiten der massgebenden Fassung 2017/2018 (PL-03) gefahren: 5 Kernlücken (Ziff. 9 Zugang Feuerwehr, Ziff. 11 Betrieblicher Brandschutz, Ziff. 6.4.5 Durchbrüche/Abschottung, Ziff. 10.1 Abs. 2-15 Aufzugsschacht, Ziff. 4.2.1.1 Abs. 3) und 9 Nebenlücken ergänzt, dazu 5 eigene Seitenzitat-Fehler dieses Runs selbst gefunden und inline korrigiert. **0 falsche Normwerte.** Status unverändert `established`. Prüfstand-Tabelle im Destillat. |
| `vkf-brl-16-15-flucht-rettungswege.md` | 500 (→ 605) | Fluchtwege — der Stoff mit dem höchsten Personenschutz-Gewicht; Skill `brandschutz` zieht direkt — ✅ **ERLEDIGT (Run 67, 29.08.2026, Schub-Lane NORMEN-PRUEFSTAND).** Abdeckungsrichtung gefahren, Schwerpunkt Anhang S. 26-35 (bisher nie gelesen) plus Gegenlesen S. 1-13: 6 Kernlücken (Ziff. 2.5.5 Abs. 4/5 Torarten, Ziff. 4 Weitere Bestimmungen, Beherbergungsbetriebe-[a]-Definition + Geschossschwelle, Parking-Anrechenbarkeit, Feuerwehraufzug-Schleuse 2.4×2.4 m) und 2 Nebenlücken ergänzt. **0 falsche Normwerte**, aber 1 falsche Quellenaussage (Beherbergung [a] angeblich «nicht im PDF») mit ⚠ inline korrigiert. Status unverändert `established-mit-vorbehalt`. Prüfstand-Tabelle im Destillat. |
| `vkf-allgemein-anerkannte-bauprodukte-2017.md` | 289 | Trägt die Produktzulassungs-Logik — ✅ **ERLEDIGT (Run 66, 29.08.2026).** Abdeckungsrichtung über alle 12 Seiten gefahren (eigenes Rendering, MD5 erneut geprüft), **0 neue Befunde** — beide Prüfrichtungen jetzt vollständig auf der gesamten Quelle gelaufen, beide 0 Befunde. Erstes Destillat dieser Station mit diesem Doppelstatus. Prüfstand-Tabelle im Destillat. |

⚠ **Vor jeder Arbeit an VKF gilt Methodik-Pflicht 1**: die geltende Fassung liegt in **PL-03**,
nicht in PL-02. Ein Abdeckungslauf gegen die 2015er-Fassung misst den falschen Text.

*Reichweiten-Vorbehalt:* Von den 17 Treffern sind mindestens vier Rauschen — «VKF» erscheint in
`anrede-kontakte.md` als Berufsbezeichnung («Eidg. dipl. Brandschutzexperte VKF») sowie in
`betrieb-chronik` und `linkedin-stratege` ohne Normbezug. Belastbar sind rund **9** echte
Konsumenten. Das ändert den Rang nicht, aber die Zahl gehört nicht ungeprüft weitergereicht.

### Rang 3 — `sia-102-2014.md` · Reichweite 6 (geteilt mit :2020) · 100 Zeilen

✅ **ERLEDIGT (Run 66, 29.08.2026, Schub-Lane NORMEN-PRUEFSTAND).** Abdeckungsrichtung gefahren:
Baukategorien-Tabelle (Ziff. 7.6.5) vollständig nachgetragen (8 fehlende Sparten, 300-dpi-Rendering
spaltengenau abgelesen), 2 fehlende Aufzählungspunkte in Ziff. 7.5.15 ergänzt, Ziff. 0 4-analoger
Kernbefund: Leistungsbereiche Kosten/Termine/Administration fehlen in allen Art.-4-Teilphasen
(an 4.41 gegen Original bestätigt, identisch zu N63-1 bei SIA 102:2020). **0 falsche Werte**,
nur Lücken. Prüfstand-Tabelle im Destillat, Status unverändert `established` (kein
Statuswechsel durch diesen Auftrag). Rest-Teilphasen 4.11-4.63 bleiben offen (siehe Destillat,
Offene Punkte) — Kandidat für einen Folgelauf, kein neuer N62-3-Kandidat mehr.

### Rang 4 — `sia-451-1992.md` · Reichweite 1 · 55 Zeilen

✅ **ERLEDIGT (Run 66, 29.08.2026, Schub-Lane NORMEN-PRUEFSTAND).** Abdeckungsrichtung über alle
12 Seiten gefahren (eigenes Rendering, 150dpi): Ziff. 0 4 «Weitere Entwicklungen» fehlte ganz,
13 von 24 G-Record-Feldern sowie mehrere Header-/Schlussrecord-Felder waren nie dokumentiert —
alle nachgetragen. **0 falsche Werte.** Refuter-Richtung ist auf dieser Quelle weiterhin nie
gelaufen (im Destillat als offen vermerkt). Status unverändert `established`.

### Nicht in dieser Liste

`sia-430-1993.md`, `sia-493-1997.md`, `sia-181-2006.md`, `sia-500-2009.md`, `sia-244-2006.md`
tragen **null** entscheidungstragende Konsumenten. Sie sind Nachschlagebestand; ein Prüfstand
dort hat keinen Abnehmer, der davon abhinge.

**Mac-Mini-Scope, hier nur vermerkt** (Stations-Split, Rule 260712): die DIN- und VSS-Destillate,
darunter die vier grössten des Gesamtbestands (`din-inhaltsverzeichnis-normensammlung-2012`,
`din-planungsgrundlagen-hoai-vorschriften-2004`, `komm-din18024-t1-bayern-2001`,
`din-18232-2-2007`). Diese Station rührt sie nicht an.

## 5. Was diese Liste ungeprüft lässt (Pflichtausweis der Methoden-Lehre)

1. **Die Liste ist eine Metadaten-Messung, keine Stichprobe.** Kein einziges der 308 Destillate
   wurde für diese Liste inhaltlich geöffnet. Ob die Ungewissheit sich in Lücken übersetzt, ist
   nur an zweien gemessen (Run 54, Run 62) — beide Male ja.
2. **Das Statusvokabular ist nicht normiert.** 25 abweichende Statuswerte, darunter 16×
   `destilliert`, dazu Werte mit angehängter Prosa im selben Feld. Die Zählung «310
   established» stützt sich auf Präfix-Übereinstimmung und ist **nach oben und unten unscharf**.
   Der Vokabular-Entscheid liegt seit Run 52 bei Raphael (`QUESTIONS.md`).
3. **Reichweite ≠ Risiko.** Ein Destillat mit einem Konsumenten kann eine folgenreichere
   Einzelaussage tragen als eines mit zwölf. Die Metrik ordnet, sie urteilt nicht.
4. **Nicht gemessen: das Alter der Hebung.** Ein 2026 gehobenes Destillat aus dem Volltext ist
   nicht gleich verdächtig wie eines aus einer frühen Sammelrunde. Das wäre die nächste
   verschärfende Messung.

## 6. Vorschlag zur Reihenfolge (kein Entscheid)

Die Liste wird **nicht** von oben nach unten abgearbeitet, bis feststeht, ob eine Abdeckungsrunde
je Destillat den Aufwand wert ist. Run 62 kostete eine ganze Nacht für **eine** Norm. Bei 308
Kandidaten ist der lineare Weg kein Weg.

Realistisch ist eine **Dreiteilung**, die den Aufwand an die Reichweite bindet:

1. **Volle Abdeckungsrunde** nur für Rang 1 und die drei VKF-Kernrichtlinien (4 Destillate).
2. **Stichprobe statt Vollrunde** für den Mittelbau: zwei bis drei zufällig gewählte Kapitel je
   Destillat. Findet die Stichprobe nichts, bleibt der Status; findet sie etwas, wird die
   Vollrunde fällig. Das misst die Trefferquote, ohne 300 Nächte zu binden.
3. **Nichts tun** für die Destillate ohne Konsumenten — dort ist der Status folgenlos.

Punkt 2 ist der eigentlich offene methodische Punkt: **eine Stichprobenrunde ist in dieser
Reihe noch nie gefahren worden**, ihre Trefferquote ist unbekannt. Sie wäre zuerst an einem
Destillat zu messen, dessen Vollrunde bereits vorliegt — `sia-118-1991` oder `sia-416-1-2007` —
denn dort ist die Wahrheit bekannt und die Stichprobe damit kalibrierbar.

**Vorzulegen, nicht selbst umzustellen.**

## 7. Stand 29.08.2026 (Run 66/67, Schub-Lane NORMEN-PRUEFSTAND) — Rang 1-4 vollständig abgearbeitet

Alle sechs in Abschnitt 4 benannten Kandidaten (Rang 1 `sia-416-2003.md`, die drei
Rang-2-VKF-Kernrichtlinien, Rang 3 `sia-102-2014.md`, Rang 4 `sia-451-1992.md`) tragen jetzt
einen Prüfstand; die dort unter Punkt 1 in Abschnitt 6 vorgesehene «volle Abdeckungsrunde» für
die vier höchstpriorisierten Destillate (Rang 1 + VKF-Kernrichtlinien) ist erfüllt, inklusive
der zwei zusätzlichen Kandidaten Rang 3/4. **Keiner der sechs zeigte einen falschen Normwert**;
gefunden wurden ausschliesslich Vollständigkeits-Lücken (weggelassener, aber nicht falscher
Inhalt) sowie zweimal falsche Selbstaussagen über die Quelle bzw. eigene Seitenzitat-Fehler,
beide inline korrigiert. Die Trefferquote der Abdeckungsrichtung bleibt damit bei 8 von 8
geprüften Destillaten dieser Reihe (416/1, 118, 102:2020, 102:2014, 451, VKF-Bauprodukte
[Ausnahme: 0 Befunde], AH 1001-15, BRL 16-15).

**Womit ist die Vorrang-Liste dieses Auftrags jetzt abgearbeitet.** Offen bleibt Punkt 2 aus
Abschnitt 6 (Stichprobenrunde für den Mittelbau der 308 `established`-ohne-Prüfstand-Destillate)
— das ist weiterhin **Raphael vorzulegen, nicht selbständig zu starten**, da die Trefferquote
einer Stichprobe in dieser Reihe noch nie gemessen wurde (siehe Abschnitt 6, letzter Absatz).
