# wissen/tools — Prüfwerkzeuge für den Wissens-Layer

Drei Werkzeuge, die je eine andere Frage an eine Wissensbasis stellen. Sie ersetzen einander
nicht: eine KB kann strukturell tadellos sein, alle Adressen erreichbar haben und trotzdem
falsche Zahlen führen.

| Werkzeug | Frage | Angelegt |
|---|---|---|
| `wiki-konsistenz.sh` | **Form** — Frontmatter, INDEX-Registrierung, lösen die Backlinks auf? | 28.07.2026 |
| `link-frischecheck.sh` | **Zugang** — sind die zitierten Adressen erreichbar? | 01.08.2026 |
| `kennwert-recompute.sh` | **Inhalt** — gehen die Kennwerte gegen ihre eigenen Bezugsgrössen auf? | 23.08.2026 |

Alle drei melden mit `Exit 1`, wenn es Befunde gibt, und mit `0`, wenn nicht — sie eignen sich
also für einen Wartungslauf.

## Aufruf

```
bash wissen/tools/wiki-konsistenz.sh    [<kb> …]
bash wissen/tools/link-frischecheck.sh  <kb> [--out <datei.tsv>]
bash wissen/tools/kennwert-recompute.sh [<kb> …] [--toleranz <prozent>] [--hub <pfad>] [--raw]
```

Ohne `<kb>` prüfen `wiki-konsistenz` und `kennwert-recompute` alle Wissensbasen mit `wiki/`.

## ⚠ Die Falle, die alle drei betrifft: welchen Hub messe ich?

`wiki-konsistenz.sh` und `link-frischecheck.sh` setzen `HUB` **fest auf das NAS**
(`/Volumes/daten/jans-ai-hub`) und messen deshalb immer die **NAS-Kopie** — nie die lokale
Arbeitskopie unter `~/Developer/jans-ai-hub`, in der editiert wird. Der NAS-Klon zieht über
GitHub nach, der Versatz liegt im Minutenbereich.

**Folge:** wer eine Fundstelle lokal korrigiert und das Werkzeug sofort erneut laufen lässt,
sieht den alten Stand und hält die Korrektur für gescheitert. Am 23.08.2026 genau so passiert
und nachgemessen — der NAS-Klon lag einen Commit zurück, nämlich den mit der Korrektur.

**Regel:** nach einer Korrektur einige Minuten warten oder direkt gegenprüfen mit
`git -C /Volumes/daten/jans-ai-hub log --oneline -1` gegen den lokalen Stand. **Ein
unverändertes Werkzeug-Ergebnis unmittelbar nach einem Edit ist kein Befund, sondern Latenz.**

`kennwert-recompute.sh` macht es bewusst anders: es nimmt den Hub, **in dem es selbst liegt**,
lässt ihn per `--hub` überschreiben und **schreibt ihn in die erste Zeile der Ausgabe**. Damit
ist nie unklar, was gemessen wurde. Ein Umbau der beiden älteren Werkzeuge auf dasselbe Muster
(`HUB="${JANS_HUB:-/Volumes/daten/jans-ai-hub}"`) wäre einzeilig, ist aber ein Eingriff in
Werkzeuge, die alle Stationen aufrufen — Entscheid Raphaels.

## Warum es `kennwert-recompute` gibt

Ein Vertiefungslauf hat am 23.08.2026 die Rechnung `Kosten ÷ Bezugsgrösse` von Hand nachgezogen
und dabei **zwei Fehler gefunden, die seit Juli beziehungsweise seit Run 14 unentdeckt lagen**:

1. **`grobkosten`, Reckholdern Dok. 2** — Kennwerte 698 / 1'008 / 1'086 CHF/m³ bei einem
   Gebäudevolumen von 1'715 m³, alle drei um exakt **+59 %** daneben. Ursache: Kosten- **und**
   Flächenblock stammen aus einer Thalwil-Vorlage (GV 2'725), nur das GV-Feld war aktualisiert.
2. **`immobilienbewertung`, 8-Objekt-Referenzvergleich, Zeile Lanzeln, Spalte CHF/Pflegezimmer** —
   Tabelle 272'780, gerechnet 29.34 Mio ÷ 123 = **238'537** (12.6 %). Die beiden anderen Spalten
   derselben Zeile reproduzieren exakt; der Fehler sitzt in **einer einzelnen Zelle**.

**Die Lehre, die das Werkzeug mechanisiert:** eine in sich **summenrichtige** Tabelle ist noch
kein Beleg dafür, dass sie das **richtige Objekt** beschreibt. Die Zahlen einer Vorlage sind
intern immer konsistent, weil sie aus einem echten Projekt stammen. Auffallen kann es nur, wenn
man teilt und gegen den behaupteten Kennwert hält.

### Was geprüft wird

- **(a) Rechenbehauptungen im Fliesstext** — `a / b = c`, auch mit `÷`, Tausender-Apostroph,
  Einheiten und `Mio.`.
- **(b) Markdown-Tabellen** — Kostenspalte ÷ Mengenspalte gegen die Je-Einheit-Spalte, zeilenweise.
  Das hat den Lanzeln-Fall gefunden.
- **(c) Pfeil-Behauptungen** — `1'903'000 → CHF 698.-/GV` gegen die im selben Dokument
  deklarierten Bezugsgrössen. Nennt ein Dokument **mehrere**, wird gegen jede geprüft und nur
  gemeldet, wenn es gegen **keine** aufgeht. Das hat den Reckholdern-Fall gefunden — ein
  strengerer Guard (nur bei genau einer Deklaration prüfen) hätte ihn verschluckt, denn dort
  stehen zwei Volumen im selben Dokument, und **das ist Teil des Befunds**.

### Bewusste Grenzen

- Es kennt den fachlichen Kontext nicht. **Ein Treffer ist ein Prüfauftrag, kein Fehler.**
- Gerundete Quellwerte erzeugen kleine Abweichungen; die Standard-Toleranz von **1.5 %** fängt
  das ab. Mit `--toleranz` verschiebbar.
- **Prozent- und Promille-Lesarten werden erkannt und nicht gemeldet.** Eine Zeile wie
  `129'000 / 3'100'000 = 4.2` meint eine Rendite in Prozent, keinen Quotienten — ohne diese
  Erkennung meldete ein erster Entwurf genau solche Zeilen als 99-%-Abweichung.
- `raw/` wird nur mit `--raw` einbezogen und **nur gelesen**.

### Abnahmestand 23.08.2026

Volllauf über **alle** Wissensbasen: **6 Befunde, alle in `immobilienbewertung`** (die fünf
bereits als D10 geführten Zellen plus die neue Lanzeln-Zelle), **null Fehlalarme** in den
übrigen vierzehn KBs. Mit `--raw` zusätzlich die zwei Reckholdern-Zeilen in `grobkosten`.

### Aufbau

`kennwert-recompute.sh` ist ein dünner Wrapper, der Kern liegt in `kennwert-recompute.py`.
Bewusst zwei Dateien: der Parser braucht reguläre Ausdrücke mit Anführungszeichen und
Backslashes, und ein Python-Block in einem Bash-Heredoc wird dabei unlesbar — beim Schreiben
des ersten Entwurfs hat genau das die Datei zerstört.
