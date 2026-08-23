# wissen/tools — Prüfwerkzeuge für den Wissens-Layer

Sechs Werkzeuge, die je eine andere Frage an eine Wissensbasis stellen. Sie ersetzen einander
nicht: eine KB kann strukturell tadellos sein, alle Adressen erreichbar haben, jeden Link
sauber ans Ziel bringen und trotzdem falsche Zahlen führen.

| Werkzeug | Frage | Angelegt |
|---|---|---|
| `wiki-konsistenz.sh` | **Form** — Frontmatter, INDEX-Registrierung, lösen die Backlinks auf? | 28.07.2026 |
| `link-frischecheck.sh` | **Zugang** — sind die zitierten Adressen erreichbar? | 01.08.2026 |
| `kennwert-recompute.sh` | **Inhalt** — gehen die Kennwerte gegen ihre eigenen Bezugsgrössen auf? | 23.08.2026 |
| `link-zielabgleich.sh` | **Ziel** — landet ein Link dort, wo er hinzeigt? | 23.08.2026 |
| `bezugsgroessen-check.py` | **Nenner** — trägt jede Quote ihre Bezugsgrösse, und ist der Wert überhaupt möglich? | 23.08.2026 |
| `datenstand-waechter.py` | **Alter** — kommt die Zahl mit ihrem Alter beim Leser an? | 23.08.2026 |

Alle sechs melden mit `Exit 1`, wenn es Befunde gibt, und mit `0`, wenn nicht — sie eignen sich
also für einen Wartungslauf.

## Warum die zwei neuen (23.08.2026, aus dem Audit der KB energie)

`kennwert-recompute` prüft, ob eine **ausgeschriebene Rechnung aufgeht** (a × b = c). Das Audit
vom 23.08.2026 (`wissen/energie/outputs/2026-08-23_energie-audit-qualitaetsoffensive.md`) hat
gezeigt, dass die teuersten Fehler anders aussehen: **die Rechnung stimmt, und der Nenner ist
ein anderer als angenommen.** «Unabhängigkeit 53 %» war Produktion/Verbrauch und wurde als
Autarkie geführt (echte Autarkie 23 %); ein Minergie-Grenzwert wurde je m² Geschossfläche
gerechnet und je m² EBF ausgegeben, 25 % zu streng, in einem zweimal verifizierten
`established`-Destillat. Dafür ist `bezugsgroessen-check` da. Und keines der vier bestehenden
Werkzeuge fragte je nach dem **Alter** einer Zahl — 35 von 37 Themenartikeln hatten kein Feld
`datenstand`, Preisstände von 2019 wurden als heutige CHF-Zahl zitiert, ein selbst gesetzter
Prüfstichtag verstrich unbemerkt in einem abgehakten Eintrag. Dafür ist `datenstand-waechter` da.

Beide sind reines Python ohne `.sh`-Wrapper: sie brauchen weder parallele `curl`-Aufrufe noch
eine Trennung von Messung und Klassifikation, die bei `kennwert-recompute` und
`link-zielabgleich` den Wrapper rechtfertigt.

**Beide melden Kandidaten, keine Urteile.** Jeder Treffer ist am Umfeld zu beurteilen; ein
geprüft-unbedenklicher Treffer gehört mit einer Zeile Begründung in die `wiki/QUESTIONS.md` der
KB, damit ihn der nächste Lauf nicht erneut aufgreift. Verstrichene Termine gehören nach
`logbuch/fristen.md`, nicht in einen Laufbericht (Rule `auto-verbesserungen` 260805).

⚠ **Wer hier ein siebtes Werkzeug bauen will, liest zuerst diese Tabelle.** Beim Audit vom
23.08.2026 entstand zunächst ein KB-lokales Prüfscript, das Form, Nenner und Alter in einem
prüfte — und dessen Link-Check 24 tote Links meldete, wo `wiki-konsistenz.sh` 7 findet: genau
der KB-übergreifende Fehlalarm, vor dem dessen Kopfkommentar seit dem 28.07.2026 warnt. Das
Script wurde verworfen und auf die zwei Fragen reduziert, die hier wirklich fehlten.

## Aufruf

```
bash wissen/tools/wiki-konsistenz.sh    [<kb> …]
bash wissen/tools/link-frischecheck.sh  <kb> [--out <datei.tsv>]
bash wissen/tools/kennwert-recompute.sh [<kb> …] [--toleranz <prozent>] [--hub <pfad>] [--raw]
bash wissen/tools/link-zielabgleich.sh  <kb> [--hub <pfad>] [--out <datei.psv>]
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

`kennwert-recompute.sh` und `link-zielabgleich.sh` machen es bewusst anders: sie nehmen den Hub,
**in dem sie selbst liegen**, lassen ihn per `--hub` überschreiben und **schreiben ihn in die
erste Zeile der Ausgabe**. Damit
ist nie unklar, was gemessen wurde. Ein Umbau der beiden älteren Werkzeuge auf dasselbe Muster
(`HUB="${JANS_HUB:-/Volumes/daten/jans-ai-hub}"`) wäre einzeilig, ist aber ein Eingriff in
Werkzeuge, die alle Stationen aufrufen — Entscheid Raphaels.

## Warum es `link-zielabgleich` gibt

`link-frischecheck.sh` misst mit `curl -L -o /dev/null` den HTTP-Code der **Endadresse**. Ein
Server, der jeden unbekannten Pfad per 301 auf seine Startseite schickt, liefert damit für
**jede** erfundene Adresse ein sauberes `200`.

Belegt am 23.08.2026 (Vertiefungslauf 8 `planungsgrundlagen`): der Host **`geoportal.zh.ch`** ist
abgeschaltet und leitet **alles** — auch `/gibtesnichtxyz123` — auf `www.zh.ch/de.html`. Die KB
führte darunter einen ganzen Abschnitt mit Bestellweg und vier GIS-ZH-Datensatznummern, belegt
aus echten amtlichen Lieferscheinen. **Sechs vorangegangene Endpunktläufe** desselben Tages haben
das nicht gesehen, weil alle den Statuscode gemessen haben, und der ist grün.

**Die Lehre, die das Werkzeug mechanisiert:** ein HTTP-200 belegt, dass *irgendeine* Seite
ausgeliefert wurde — nicht, dass es die bestellte ist. Massgeblich ist der Vergleich zwischen
**angefragtem und tatsächlichem Pfad**. Das ist dieselbe Familie wie der Befund aus
Vertiefungslauf 6 (leeres, aber formal gültiges WMS-Bild) und aus Lauf 7 (`ThemeWithoutData`):
**eine Antwort ist keine Auskunft.**

### Was geprüft wird

Nur Adressen **mit Pfad**. Ein blanker Host kann per Definition nicht am falschen Ort landen;
dafür ist `link-frischecheck` zuständig. Befundklassen:

- **KATCHALL** — der Host schluckt jeden Pfad und liefert die Startseite. Nachgewiesen durch eine
  **Gegenprobe mit einem frei erfundenen Pfad** je verdächtigem Host; ohne sie wäre jede einzelne
  tote Unterseite eines gesunden Servers fälschlich ein Katchall. Schwerster Befund: unter einem
  solchen Host ist **keine** Adresse mehr per Statuscode prüfbar.
- **STARTSEITE** — Deep-Link landet auf einer Startseite, Host-Gegenprobe unauffällig: die
  einzelne Seite ist weg, der Server ist gesund.
- **UMGELEITET** — anderer, weiterhin tiefer Pfad. Nachrichtlich, **kein** Befund und nicht im
  Exit-Code: bei jedem CMS-Relaunch der Normalfall. Fängt aber auch die stillen Umbenennungen —
  z.B. dass die Schwyzer Weisung unter derselben Asset-Nummer heute
  `Weisung_ueber_Liegenschaftskosten_und_Photovoltaik_LKPV.pdf` heisst.
- **SOFT404** — Status 404 mit grossem Antwortkörper. Ebenfalls nachrichtlich: der Code ist
  ehrlich und damit Sache von `link-frischecheck`; hier steht es nur, weil die Antwortgrösse
  leicht als ausgeliefertes Dokument missdeutet wird.

### Bewusste Grenzen

- Es liest die Zielseite **nicht inhaltlich**. Ob dort das richtige Dokument steht, bleibt
  Handarbeit — die Regel aus Lauf 6 gilt weiter.
- **Ein Treffer ist ein Prüfauftrag, kein Fehler.** Jeder Befund gehört an seiner Quellzeile
  geprüft, bevor etwas geändert wird (Prosa-Artefakte werden zwar erkannt, aber nicht alle:
  verkürzte Zitate wie `zh.ch/energienachweise` statt der vollen Adresse sehen wie Deep-Links aus).
- Auch das *Ersatz*-Portal kann ein Katchall sein. Geolion etwa beantwortet eine unbekannte
  `gdsid` mit dem Index statt mit einer Datensatzseite — unterscheidbar, aber nur am **Titel**
  der Zielseite, nicht am Code.

### Abnahmestand 23.08.2026

Findet den `geoportal.zh.ch`-Fall wieder, der am selben Tag von Hand entdeckt wurde. Läufe über
`energie`, `baurecht` und `normen`: **null Fehlalarme** in der Klasse KATCHALL, dazu ein echter
Zusatzfund in `baurecht` (`mobilityplatform.ch/vss-shop` → Startseite; der VSS-Shop lebt, nur
das Pfadsegment ist weg — Produktseiten liegen heute unter `/de/<produktnr>.html`).

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
