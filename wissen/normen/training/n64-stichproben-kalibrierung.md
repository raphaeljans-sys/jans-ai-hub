# N64 — Kalibrierung der Stichprobenstufe

**Erstellt:** 28.08.2026, Normen-Nacht Run 64 (MacBook Pro)
**Auftrag:** Run 63 legte Raphael eine Dreiteilung für die 308 Kandidaten ohne Prüfstand vor
(`training/n62-3-pruefstand-kandidaten.md`, Abschnitt 6). Deren Stufe 2 lautet: «Stichprobe
statt Vollrunde — zwei bis drei zufällig gewählte Kapitel je Destillat. Findet die Stichprobe
nichts, bleibt der Status; findet sie etwas, wird die Vollrunde fällig.» Run 63 wies denselben
Punkt als offen aus: **eine Stichprobenrunde ist in dieser Reihe nie gefahren worden, ihre
Trefferquote ist unbekannt.** Sie sei zuerst an einem Destillat zu kalibrieren, dessen
Vollrunde vorliegt.

Das ist hier geschehen. Die Anlage misst, sie entscheidet nichts.

---

## 1. Anlage

| | |
|---|---|
| Prüfling | `destillate/sia-118-1991.md` **in der Fassung vor Run 62** (`git show c330b0618^`) |
| Warum diese Fassung | Run 62 hat seine Kernbefunde eingearbeitet. Gegen die heutige Fassung gemessen wären die Lücken geschlossen und die Messung wertlos |
| Bekannte Wahrheit | Run 62 (26.08.2026): **84 Kern-, 82 Nebenlücken, kein einziger falscher Wert**, Vollrunde über Art. 1-190 in sechs Segmenten |
| Ausgangsstatus des Prüflings | `established` nach **drei** bestandenen Prüfrunden, Frontmatter «Volltext KOMPLETT … verifiziert» |
| Stichprobenumfang | 3 von 7 Kapiteln |
| Ziehung | `awk srand(64)`, Seed = Run-Nummer, **vor** Sicht der Run-62-Details gezogen und protokolliert; reproduzierbar → **Kapitel 1, 5, 6** |
| Prüfstufe | ein Subagent (sonnet), blind |
| Sperren | `outputs/`, die aktuelle Destillatfassung, `QUESTIONS.md`, `CHANGELOG.md`, `training/` ausdrücklich verboten |

## 2. Ergebnis der Stichprobe

| Kapitel | Artikel | Kern | Neben |
|---|---|---|---|
| 1 — Werkvertrag im Allgemeinen | 1-37 | 4 | 4 |
| 5 — Ausmass, Abschlagszahlungen, Sicherheiten, Schlussabrechnung | 141-156 | 6 | 3 |
| 6 — Abnahme und Mängelhaftung | 157-182 | 7 | 2 |
| **Summe** | | **17** | **9** |

Der Lauf mass den Seitenversatz selbst und las ihn am Rand ab (Blatt − 2 = gedruckte Seite,
an vier Stellen verifiziert) — die Pflicht aus Methodik-Pflicht 6, an der Run 50 gescheitert war.

## 3. Abgleich mit der Vollrunde

**Die vier folgenreichsten Run-62-Kernbefunde in diesen Kapiteln wurden blind reproduziert:**

| Run-62-Kernbefund | Stichprobe |
|---|---|
| Art. 163 — Protokollfalle der Abnahme (stillschweigender Verzicht auf erkannte, nicht protokollierte Mängel) | ✅ gefunden |
| Art. 164 — fiktive Abnahme ohne gemeinsame Prüfung | ✅ gefunden |
| Art. 169 — die drei Mängelrechte ohne ihre Schranken | ✅ gefunden (zwei getrennte Funde) |
| Art. 147 / 151 — Gesamtpreisverträge haben eine eigene Zahlungssystematik | ✅ beide gefunden |

**Falsch-Positiv-Kontrolle.** Von den 18 Artikeln, die die Stichprobe als Lücke meldete, führt
die **heutige** Fassung (also nach Einarbeitung durch Run 62) **17**. Die Vollrunde hatte sie
folglich ebenfalls gefunden. Drei davon wurden vom Hauptprozess zusätzlich **inhaltlich**
nachgelesen — Art. 15 Abs. 2 (Gleichbehandlung bei Rückfragen), Art. 149 Abs. 3
(Zusatzsicherheit vor der ersten Akontozahlung), Art. 154 Abs. 1 (Bauleitung darf die
Schlussabrechnung auf Kosten des Unternehmers erstellen) — und stehen dort inhaltlich, nicht
nur als Nummer.

Der eine Rest, **Art. 3**, ist kein Falsch-Positiv: Run 62 führte ihn ausdrücklich unter den
«vom Destillat gar nicht erwähnten Artikeln» des Segments A, er blieb aber im offenen
Nebenbefund-Block (N62-1) liegen. Die Stichprobe hat also einen echten, noch offenen Rückstand
angezeigt.

**Erkennbare Falsch-Positive: keine.**

## 4. Was das für die vorgeschlagene Dreiteilung heisst

**Die Stichprobe ist nicht blind — aber sie spart bei einem betroffenen Destillat nichts.**

Sie schlug in **allen drei** zufällig gezogenen Kapiteln an, mit 17 Kernfunden. Sie hätte die
Vollrunde also zweifelsfrei ausgelöst. Das ist die unmittelbare Konsequenz der Lückendichte:
bei 84 Kernlücken über 7 Kapitel trägt praktisch jedes Kapitel welche, und jede Ziehung löst
aus. **Stufe 2 der Dreiteilung mündet bei einem betroffenen Destillat mit hoher Wahrscheinlich-
keit in Stufe 1** — der erhoffte Spareffekt tritt genau dort nicht ein, wo Arbeit anfällt.

Der Nutzen der Stichprobe liegt deshalb nicht im Sparen, sondern im **Sortieren**: sie misst zu
einem Bruchteil der Kosten, *wie stark* ein Destillat betroffen ist, und erlaubt, die 308
Kandidaten nach **gemessener** statt nach vermuteter Dringlichkeit zu ordnen. Das ist ein
anderer Zweck als der vorgeschlagene, und ein wertvollerer: die bisherige Priorisierung stützt
sich allein auf Nennungs-Reichweite, deren Grenze die Kandidatenliste selbst benennt
(«Reichweite ≠ Risiko»).

## 5. Was diese Messung NICHT belegt (Pflichtausweis der Methoden-Lehre)

1. **Gemessen ist die Sensitivität, nicht die Spezifität.** Der Prüfling war nachweislich stark
   betroffen. Die Messung zeigt: findet die Stichprobe Lücken, wenn welche da sind — ja.
   Sie zeigt **nicht**, ob die Stichprobe schweigt, wenn ein Destillat sauber ist. Genau das
   wäre aber die Voraussetzung dafür, aus einem Nullbefund «Status bleibt» abzuleiten.
   Ein sauberes Destillat, an dem sich das messen liesse, ist im Bestand nicht bekannt.
2. **Ein Prüfling, ein Lauf.** Dieselbe schmale Basis, die schon die Kandidatenliste bei sich
   ausgewiesen hat. Zwei Kapitel derselben Norm sind keine zwei unabhängigen Fälle.
3. **Die Nummernprüfung ist eine untere Schranke.** 17 von 18 Artikeln sind in der heutigen
   Fassung *genannt*; inhaltlich nachgelesen wurden **drei**. Dass die übrigen 14 den konkreten
   Regelungsgehalt tragen und nicht nur die Nummer, ist wahrscheinlich, aber nicht gemessen.
4. **Die 9 Nebenbefunde wurden nicht gegen Run 62 abgeglichen.** Der Abgleich betraf die
   Kernfunde.
5. **Kapitel 2, 3, 4, 7 blieben ungeprüft** — sie waren nicht gezogen.

## 6. Vorzulegen

Der Entscheid über die Reihenfolge der 308 Kandidaten bleibt bei Raphael; diese Anlage liefert
nur die Zahl, die in Run 63 fehlte. Die Messung **korrigiert den eigenen Vorschlag aus Run 63**:
die Stichprobe taugt als **Sortierinstrument**, nicht als Sparinstrument, und ein Nullbefund
trägt die Aussage «Status bleibt» erst, wenn die Spezifität gemessen ist.
