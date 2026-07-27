# Training Run 92 — Recht/Norm + Brandschutz (Frischecheck + 2 Refresh-Checks) + neuer OneDrive-Blocker

**Datum:** 2026-07-28 · **Auftrag:** Intensiv-Lauf auf Raphaels direkten Auftrag (Token-Vollgas,
PROGRAMM.md Sektionen Verifikations-Stufe/Intensivphase/Token-Vollgas). **Rotation:** Recht & Norm
(PL-02) + Brandschutz (PL-03) — nach Run 91 (Kartenportale + Energie).

## Ausgangslage

Vor Beginn Stand gelesen: `curriculum.md` (durchgehend `[x]` bis auf E5/E9/B5 als laufende
Refresh-Beobachtungen), `wiki/QUESTIONS.md` (ein einziger echter Restposten: D9, wartet auf ein
reales Projekt), letzte Reports Run 90 (Recht/Norm+Brandschutz) und Run 91 (Kartenportale+Energie,
25. Nullbefund + M4 geschlossen). Der Registrierungs-Nachtrag vom 27.07. dokumentiert bereits: kein
Run 92 gefahren, weil ein weiterer Lauf nur den 25. identischen Nullbefund wiederholt hätte, und
empfiehlt die Rücktaktung auf den ursprünglichen 2-Tages-Turnus.

Dieser Lauf ist trotzdem als **expliziter Intensiv-Lauf** beauftragt. Um dem Grundsatz «nichts
erfinden, keine Pseudo-Tiefe» (Run 91) treu zu bleiben, wurden **keine künstlichen 10-16 Fragen**
erzeugt, um den Token-Vollgas-Zielkorridor formal zu füllen. Stattdessen: vollständiger
Frischecheck über alle vier Domänen + zwei belegte Refresh-Checks der beiden einzigen laufenden
Beobachtungspunkte im Recht/Norm+Brandschutz-Paar (R6 RPG-2, B5 BSV-2026).

## Befund 1: Frischecheck — 3 von 4 Domänen weiterhin Null, 1 neuer (unlesbarer) Treffer

```
find "PL - 02_Recht_Norm" -newer 2026-07-26_training-run90.md -type f   → 0 Treffer
find "PL - 03 Brandschutz" -newer 2026-07-26_training-run90.md -type f  → 1 Treffer (s.u.)
find "PL - 01 Kartenportale" -newer 2026-07-26_training-run91.md -type f → 0 Treffer
find "PL - 04 Energie" -newer 2026-07-26_training-run91.md -type f      → 0 Treffer
```

Der einzige Treffer: eine neue **201-Byte-Datei** im Ordner `06 Lignum Brandschutz/Lignum 4.1
Bauteile in Holz - Decken Waende und Bekleidungen mit Feuerwiederstand/`, mit fast identischem
Namen wie ihr Elternordner (nur `Feuerwiederstand`→`Feuerwiderstand` korrigiert), mtime
27.07.2026 18:23. **Inhalt nicht auslesbar** — drei unabhängige Leseversuche (`cat`, `cp` in zwei
Anläufen, erneuter `cat` nach 5s Wartezeit) scheitern alle mit `Resource deadlock avoided`. Dies
ist derselbe OneDrive-EDEADLK-Mechanismus wie bei K46/R52-56, hier aber **persistent über
mehrere Minuten** statt reinem Sync-Timing (dort löste sich der Lock nach einem Tag). Für den
nächsten Brandschutz-Turnus vorgemerkt (→ `wiki/QUESTIONS.md` C39), nicht erzwungen — passend zur
etablierten Praxis, cloud-only-Blocker zu dokumentieren statt mit wiederholten Retries Token zu
verbrennen.

## Befund 2: Zwei Refresh-Checks — beide unverändert bestätigt

**B5 BSV-2026** (WebSearch bsvonline.ch/vkg.ch): politische Vernehmlassung weiterhin für 08/2026
angekündigt, IOTH-Plenums-Genehmigung 03/2027. Kein neuer Terminplan, keine neue Medienmitteilung
seit Run 90 (26.07.) — **fünfte** Refresh-Bestätigung in Folge (Run 58/60/62/90/92) →
[[brandschutz-pl03-wegweiser]] §1.

**R6 RPG-2 ZH-Umsetzung** (WebFetch **Primärquelle** zh.ch/de/planen-bauen/raumplanung/
raumplanung-flexdata/fachthema-projekt/raumplanungsgesetz-rpg-2-umsetzung.html): PBG-/
Richtplan-Fertigstellungsdatum weiterhin nicht publiziert. Alle materiellen Eckwerte, die die
Primärquelle heute lieferte (Bundes-Etappen 01.01./01.07.2026, Referenzwerte 40'807 Gebäude/
2'594 ha versiegelte Fläche, Abbruchprämie-Bedingungen inkl. Ausschluss Weiler-/Freihalte-/
Erholungszonen, Zweitphase mit «Verfahrensregelungen für illegales Bauen») waren bereits
vollständig im Artikel dokumentiert (seit Run 11, 28.06.) — keine inhaltliche Ergänzung nötig,
nur Refresh-Vermerk gesetzt → [[recht-norm-quellenlandkarte]].

## Fazit

**27. Erschöpfungsbestätigung in Folge** (Run 67-92) ohne einen einzigen genuinen inhaltlichen
Fund über alle vier Domänen — der einzige neue Datenpunkt dieses Laufs ist ein technisch nicht
auswertbarer OneDrive-Blocker. Die KB bleibt auf einen einzigen offenen, selbst nicht lösbaren
Punkt reduziert (D9, wartet auf ein reales Projekt) plus den neuen, ebenfalls extern bedingten
Blocker C39.

## Empfehlung an Raphael (dritte Wiederholung)

Diese Empfehlung wurde bereits in Run 91 und im Registrierungs-Nachtrag vom 27.07. gestellt und
wird hier ein drittes Mal wiederholt, weil sie durch diesen Lauf erneut bestätigt wird: die
Cadence dieses Loops von Token-Vollgas auf den ursprünglichen 2-Tages-Turnus bzw. einen
Ereignis-Trigger (neue Datei in einem PL-Ordner) zurücktakten. Ergänzend zu beachten: Rule
`auto-verbesserungen` 260727 («Leerlauf-Wächter») sieht vor, dass ein Loop nach **5 aufeinander-
folgenden** Delta-Null-Meldungen deaktiviert wird — dieser Loop hat mit 27 die Schwelle um ein
Vielfaches überschritten. Die Rücktaktung/Deaktivierung bleibt Raphaels Entscheid (Rule
260714/260725: nicht eigenmächtig umsetzen), wird hier nur ein weiteres Mal vorgeschlagen.

## Nächster Schritt

Für den nächsten Kartenportale+Energie-Turnus: Frischecheck gegen Run 91 als Referenz. Für den
nächsten Recht/Norm+Brandschutz-Turnus: Frischecheck gegen diesen Run (92), plus Versuch, die
blockierte C39-Datei zu lesen (Lock könnte sich bis dahin gelöst haben, analog K46-Präzedenz).
