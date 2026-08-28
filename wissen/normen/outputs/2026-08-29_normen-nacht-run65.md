# Normen-Nacht Run 65 — 29.08.2026, ab 01:28 CEST (MacBook Pro)

**Vertiefungsstufe (b), ein Arbeitsgegenstand mit zwei Teilaufträgen:**
1. **N64-2** — die von Run 64 offen gelassene Refuter-Richtung auf `destillate/sia-416-2003.md`.
2. **N64-5** — die offene Frage, ob die Höhenbeschriftung der Figur 8 normativ oder illustrativ
   ist, über den französischen und italienischen Normteil als Kontrolltext.

---

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Arbeitsdatum | `date` → 2026-08-29 01:28 CEST |
| NAS gemountet | ja |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| OneDrive-Zugriff auf PL-02 | **funktioniert**, auch inhaltlich (`pdftotext` auf Test-PDF) — kein TCC-Fallback nötig |
| Zieldatei-Frische | NAS-mtime 28.08. 01:42, letzter Commit 28.08. 01:45 — kein Drift |
| Run-Nummer | nach Sicht der jüngsten `outputs/`-Datei (Run 64) vergeben |

**Stations-Split eingehalten:** nur SIA. Keine DIN-/VSS-/RAL-Position berührt oder abgehakt.

**Inventarstand:** PL-02 und PL-03 tragen weiterhin **0 offene `[ ]`**-Grunddestillate im
SIA/VKF-Scope; die 25 verbleibenden offenen Zeilen sind Beschaffungs-Bring-Schulden (SIA-Shop,
VSS-Kundendienst, SNV) oder Mac-Mini-Scope. Also Vertiefungsstufe.

## 2. Methode

Sechs parallele Refuter-Agenten (sonnet), je ein Quellenabschnitt, Fragerichtung durchgehend
**Widerlegung** — jeder Agent bekam die Nachträge von Run 64 als zu kippende Behauptungen
vorgelegt, nicht als zu bestätigende. Dazu ein siebter Agent für den Sprachvergleich.

- Renderings mit normspezifischem Präfix `sia416-r65-<abschnitt>-` je Agent, der Hauptprozess
  mit eigenem Präfix `hauptprozess-r65-` (Methodik-Pflicht 5 — kein Agent liest das Rendering
  eines anderen).
- Tabellen und Figuren **gerendert und abgelesen**, nie textextrahiert (Methodik-Pflicht 8).
  Die Matrix Ziff. 4.3 wurde in Run 64 und Run 65 **unabhängig voneinander** zellweise
  aufgenommen; die beiden Aufnahmen sind deckungsgleich.
- Vor jeder Übernahme geprüft, ob das Destillat die Aussage **an anderer Stelle** führt
  (Methodik-Pflicht 7).
- Seitenversatz von allen sieben Agenten unabhängig nachgemessen: **null**, an je eigenen Seiten
  am Rand abgelesen.
- Jeder Agent bekam zusätzlich eine **Gegenrichtungs-Frage** («was steht auf deinen Seiten, das
  in keiner Behauptung vorkommt?») — kostenlos, weil er die Seiten ohnehin liest.

## 3. Ergebnis Teil 1 — die Refuter-Runde

**51 Behauptungen geprüft. 1 widerlegt, 4 eingeschränkt, 1 teils offen, 45 bestätigt.
Kein einziger falscher Zahlenwert.**

| Abschnitt | geprüft | widerlegt | eingeschränkt |
|---|---|---|---|
| Vorwort + Ziff. 0 (S. 3-7) | 8 | **1** | 0 |
| Ziff. 1-3 (S. 8-11) | 10 | 0 | 0 |
| Ziff. 4 inkl. Matrix (S. 12-13) | 5 | 0 | 0 |
| Ziff. 5-6 (S. 14-16) | 9 | 0 | 0 |
| Figuren 1-7 (S. 44-52) | 9 | 0 | 1 |
| Figuren 8-12 (S. 53-57) | 10 | 0 | 3 (+1 offen) |

### 3.1 Die Widerlegung

**Ziff. 0.2 wurde als unbedingte Pflicht geführt, die Norm formuliert bedingt.** Das Destillat
schrieb «Teilflächen/-volumen **immer** mit übergeordneten Flächen/Volumen darstellen». Der
Normtext (S. 6, vom Hauptprozess im Volltext nachgelesen) lautet sinngemäss: *werden* Teilflächen
bzw. Teilvolumen ausgewiesen, *sollen* auch die übergeordneten dargestellt werden. Zwei
Abweichungen in einem Satz — die Bedingung fiel weg, und aus einer Soll- wurde eine Muss-Regel.

Das ist genau die Fehlerklasse, die Methodik-Pflicht 13 der Refuter-Richtung zuschreibt: eine
weggelassene Bedingung überdehnt die Restregel und macht sie damit falsch. Die Abdeckungsrunde
von Run 64 konnte sie nicht finden, weil dort nichts *fehlte*.

### 3.2 Zwei neue Kernbefunde zum Umfang des GV — und eine Berichtigung von Run 64

Beide fand ein Agent in der Gegenrichtung; beide hat der Hauptprozess an eigenen 500-dpi-
Ausschnitten der Figur 8 selbst abgelesen, bevor sie ins Destillat gingen.

1. **Der Dachüberstand zählt nicht zum GV.** Die Farbfläche endet exakt an der Aussenwandflucht;
   der über die Wand hinausragende Traufvorsprung ist unkoloriert. Das ist kein Zeichnungszufall:
   **Ziff. 6 weist «Vordächer» ausdrücklich dem AKV zu.** Bild und Normtext stimmen überein — ein
   Befund, der auf zwei unabhängigen Beinen steht.
2. **Auskragende, nicht raumbildende Bauteile sind in keiner Volumenart enthalten.** Balkonplatten
   und Brüstungsstützen erscheinen in den Figuren 8, 9 und 10 durchgehend als weisse Kontur. Auch
   sie gehören zum AKV, das «Balkon- und Laubengangplatten» genau so benennt.

**Die Berichtigung.** Run 64 hatte aus dem Höhen-Massstrang der Figur 8 «die Messregel für die
Gebäudehöhe» abgeleitet. Der Massstrang und die eingefärbte Fläche sind aber **am Fusspunkt
nachweislich nicht deckungsgleich**: das unterste Segment «H 2.UG» endet an der Unterkante der
untersten Bodenplatte, während das darunter gespreizte Fundament weiterhin eingefärbt ist. Wer
GV als «GF × Summe der H-Segmente» rechnet, verliert das Fundament, das die Figur mitfärbt.

**Massgebend ist deshalb der eingefärbte Umriss, nicht der Massstrang.** Der Massstrang
beschriftet Geschosse; er ist keine Rechenanweisung. Die praktische Folgerung aus Run 64 (GV
reicht bis zur Dachaussenhaut) bleibt vollständig gültig — sie steht jetzt nur auf der richtigen
Begründung, und sie ist nach oben, unten und seitlich sauber begrenzt.

### 3.3 Der Legendencode ist nicht durchgehend — und die Ausnahmen sind sachlich

Das Destillat nannte den Code «Vollfarbe = innen, dieselbe Farbe schraffiert = aussen»
**durchgehend**. Der Hauptprozess hat beide Legendenseiten (S. 44 Flächen, S. 45 Volumen) am
eigenen Rendering abgelesen. Drei Ausnahmen, alle mit Folgen:

- **UF (1.2) hat kein Pendant** — sie steht ausserhalb des Paar-Schemas.
- **Die Aussen-Familie ist eine Gliederungsebene gröber.** Innen HNF (2.1.1.1) *und* NNF
  (2.1.1.2), aussen nur **ANF (3.1.1)** — ein «ANNF» kennt die Norm nicht. **Folge für den
  Flächennachweis: eine Haupt-/Nebennutzungs-Unterscheidung im Aussenbereich ist nicht
  normkonform ausweisbar.** Balkon, Terrasse und Dachgarten sind gleichermassen ANF.
- **Volumenseitig ist nur KV (5.2) ↔ AKV (6) gepaart.** Ein «Aussen-Nutzvolumen» gibt es nicht.
  Das ist der Grund, weshalb Ziff. 6 als einziges Aussen-Volumen-Kapitel existiert: die Norm
  kennt aussen nur Konstruktionsvolumen.

### 3.4 Kleinere Korrekturen

- **«Sparren-Innenkante» (Figur 9) ist eine Deutung, keine Beschriftung.** Der Sachverhalt ist
  belegt (ein Weissband exakt in der Breite des Segments «Dicke Dach»), der Begriff «Sparren»
  steht auf der Seite nirgends. Im Destillat abgeschwächt.
- **Der Oberbegriff NF (Ziff. 2.1.1) fehlte im Begriffsteil**, während sein Volumen-Pendant NV
  geführt war — die spiegelbildliche Lücke zu der in Run 64 gefundenen Asymmetrie. Ergänzt, samt
  dem Hinweis auf den Unterschied «im weiteren Sinn» (NF) gegen «im engeren Sinn» (HNF).
- **Ein offener Punkt konnte geschlossen werden:** ob das unterste Höhensegment an der Unterkante
  der Bodenplatte endet, galt seit Run 64 als «am 200-dpi-Bild nicht zweifelsfrei». Bei 600 dpi
  ist es ablesbar.

## 4. Ergebnis Teil 2 — N64-5, der Kontrolltext d/f/i

Der Sprachvergleich beantwortet die Frage. Der französische Normteil (Ziff. 5, S. 28-29) und der
italienische (Ziff. 5, S. 42-43) sind **wortgleich knapp** wie der deutsche; **keine** der drei
Fassungen nennt eine Höhen-Messregel, den Anhang oder die Figur 8. Weder «Dicke Dach» noch
«H DG» stehen in der alphabetischen Begriffsliste (S. 4) oder in der Anhang-Legende (S. 44-45),
und «Dicke Dach» ist als einziges Segment **nicht** mit «H» präfigiert — es ist als Bauteildicke
benannt, nicht als Geschosshöhe.

**Antwort: die Höhenbeschriftung ist illustrativ, nicht normativ kodifiziert.** Normativ trägt
der eingefärbte Umriss, und der ist in allen drei Sprachfassungen derselbe.

Das entwertet den Run-64-Befund nicht, es stellt ihn auf die tragfähigere Grundlage — und es
erklärt zugleich, warum Massstrang und Farbfläche am Fusspunkt auseinanderlaufen (Ziff. 3.2 oben).
Beide Teilergebnisse dieses Laufs zeigen in dieselbe Richtung, unabhängig voneinander gewonnen.

**Teilfrage offen geblieben:** worauf sich «H DG» bezieht (Fussboden-Oberkante oder Rohdecke),
gibt keine der drei Fassungen her. Für die Praxis folgenlos, solange nach dem Umriss aufgemessen
wird; steht als offener Punkt im Destillat.

Die Sprachgrenzen wurden dabei erstmals am Original nachgemessen und ins Frontmatter übernommen:
deutsch S. 3-16, französisch S. 17-30, italienisch S. 31-43, Anhang S. 44-57.

## 5. Verifikations-Verdikte (Hauptprozess, am Original)

| Befund | Verdikt |
|---|---|
| Ziff. 0.2 bedingt statt absolut, «sollen» statt «immer» | **bestätigt** — S. 6 im Volltext gelesen |
| Legende S. 44: HNF und NNF fallen beide auf ANF, kein ANNF | **bestätigt** — eigenes 300-dpi-Rendering |
| Legende S. 45: nur KV↔AKV gepaart | **bestätigt** — eigenes 300-dpi-Rendering |
| Figur 8: Dachüberstand unkoloriert | **bestätigt** — eigener Ausschnitt, zusätzlich Ziff. 6 als Textbeleg |
| Figur 8: Fundament eingefärbt, unterhalb des untersten H-Segments | **bestätigt** — eigener Ausschnitt Fussbereich |
| Figur 8: Massstrang und Farbfläche am Fusspunkt nicht deckungsgleich | **bestätigt** |
| NF-Definition Ziff. 2.1.1, «im weiteren Sinn» | **bestätigt** — S. 9 im Volltext |
| Ziff. 4: Terminologie-Weiche Miete/Stockwerkeigentum | **kein Befund** — steht bereits im Destillat (MP 7) |
| Figur 7: offene Fläche auf Baukörper = UF | **kein Befund** — Regel steht bereits unter UF, Ziff. 1.2 (MP 7) |
| Matrix Ziff. 4.3, zellweise | **bestätigt** — deckungsgleich mit der unabhängigen Aufnahme aus Run 64 |

Zwei Agentenaussagen wurden **abgeschwächt** übernommen: «Sparren-Innenkante» (Deutung statt
Beschriftung) und die Behauptung des Fig.-1-7-Agenten, der Legendencode sei nur bei NNF
unterbrochen — die eigene Ablesung ergab drei Ausnahmen statt einer und eine schärfere
Formulierung. Zwei weitere Meldungen wurden nach Methodik-Pflicht 7 **als Bestätigung statt als
Befund** verbucht (Tabelle oben).

## 6. Ein Befund über die eigene Arbeitsweise — N64-1 war nicht abarbeitbar

Der Lauf begann mit dem Vorsatz, neben N64-2 auch **N64-1** zu erledigen: «Die 18 Nebenbefunde zu
SIA 416:2003 einarbeiten. Sie stehen vollständig im Report `outputs/2026-08-28_...run64.md`.»

**Sie stehen dort nicht.** Der Report nennt sie als Zahl («12 Kernlücken, 18 Nebenlücken») und in
einer Summentabelle je Abschnitt; **keine einzige ist einzeln aufgeführt**. Eine Anlage in
`training/` existiert nicht — dort liegt aus Run 64 nur die Stichproben-Kalibrierung. Die 18
Befunde lagen ausschliesslich in den Rückgabetexten der Run-64-Agenten und sind mit deren Sitzung
verfallen.

Das ist kein Vorwurf an Run 64 — es ist eine Lücke im Verfahren, die erst sichtbar wird, wenn ein
Folgelauf den Punkt anfassen will. **Der Vorschlag steht als N65-1 zur Freigabe:** ein Befund gilt
erst als festgehalten, wenn er einzeln und mit Fundstelle in einer dauerhaften Datei steht; eine
Zahl im Report ist eine Messung, kein Protokoll.

**Teilweise eingelöst wurde N64-1 in diesem Lauf trotzdem, ohne Zusatzaufwand:** die
Gegenrichtungs-Frage an die sechs Refuter deckte denselben Stoff mit ab und hob einen echten
Restbefund (der fehlende Oberbegriff NF). Die übrigen dort gemeldeten Punkte führt das Destillat
bereits an anderer Stelle.

## 7. Statusentscheid

**`speculative` bleibt.** Die beiden Hauptrichtungen sind mit diesem Lauf erstmals auf **allen**
deutschen Normteilen und dem **gesamten** Figurenanhang gelaufen — der Zustand, den
Methodik-Pflicht 13 für eine Hebung verlangt, ist erreicht. Dagegen stehen drei benennbare Gründe:

1. **Die Q&A-Richtung ist auf dem Anhang S. 44-57 nie gelaufen** — und dort liegen inzwischen die
   praktisch folgenreichsten Aussagen des Destillats. Die Q&A-Runde vom Juli deckte nur S. 1-15 ab.
2. **Die Fundstellen-Richtung ist nie gelaufen** (Rückstand N63-2, betrifft den ganzen Bestand).
3. Drei Methoden haben auf diesem Destillat nacheinander je etwas gefunden — Refuter/Q&A im Juli
   nichts, Abdeckung 12 Kernlücken, Refuter jetzt eine Widerlegung. Das spricht dagegen, die
   vierte zu überspringen.

## 8. Ausbreitungs-Check

Neunzehn Dateien nennen SIA 416; entscheidungstragend sind zwölf. Geprüft wurde, ob die
korrigierte Ziff.-0.2-Aussage und die neuen GV-Befunde dort falsch weitergereicht wurden.

- **`wiki/synthese-sia-vkf-fachskills.md` gibt Ziff. 0.2 bereits richtig bedingt wieder** — der
  Fehler war auf das Destillat beschränkt, **keine Ausbreitung**. Gesetzt wurde dort der fehlende
  ⚠-Quellenvorbehalt zum Statuswechsel vom 28.08. samt den beiden neuen Ergänzungen (N65-5).
- **`agents/volumen-rechner.md` Z. 39** rechnet «Volumen (m3, SIA 416) ≈ Baufeld-Grundfläche ×
  Geschosse × Geschosshöhe». Darin fehlen Dachkonstruktion und unterste Konstruktion samt
  Fundamenten; die Formel weicht **einseitig nach unten** ab, trägt aber das Etikett «SIA 416».
  Nach Methodik-Pflicht 10 korrekt formuliert: der Agent hatte eine bewusste Näherung, **neu ist
  die Kenntnis ihrer Richtung** — nicht «der Agent rechnete falsch». **Bewusst nicht selbst
  geändert**, weil aus einer `speculative`-Quelle keine Änderung an einem Fach-Agenten gebaut
  werden soll. Vorgelegt als N65-4.
- **`grobkosten-onepager` und `grobkosten-rechner`** nehmen GV als Eingangsgrösse entgegen und
  stellen keine eigene Aufmassregel auf — dort war nichts zu korrigieren.

## 9. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Keine Q&A-Runde auf dem Figurenanhang** (N65-3) — die einzige nie gelaufene der drei
   etablierten Richtungen auf dem heute wichtigsten Teil.
2. **Keine Fundstellen-Prüfung** (N63-2, bestandsweit offen).
3. **Die Nachträge dieses Laufs tragen die Abdeckungsrichtung nicht** — sie sind allerdings
   sämtlich vom Hauptprozess am Original abgelesen, was stärker ist als eine Agenten-Runde. Die
   grundsätzliche Frage dahinter steht als N65-2.
4. **Französischer und italienischer Normteil nur punktuell** als Kontrolltext zu Ziff. 5 und zur
   Figurenbeschriftung — nicht systematisch ausgewertet.
5. **Die 18 Nebenbefunde aus Run 64 sind unwiederbringlich** (Abschnitt 6); wie viel Substanz
   verloren ging, ist nicht messbar.
6. **Figur 7 ist weiterhin nur in ihrer Grundregel aufgenommen**, nicht Beispiel für Beispiel.
7. **Die übrigen 307 Kandidaten der N62-3-Liste** sind unverändert nur eine Metadaten-Messung;
   keines wurde in diesem Lauf inhaltlich geöffnet.

## 10. Vorzulegen

Alle Änderungen dieses Laufs sind umkehrbare Arbeit am eigenen Wissensbestand und fallen unter die
Whitelist. Drei Punkte liegen bei Raphael:

- **N65-1** — ein Report, der Befunde nur zählt, bewahrt sie nicht. Vorschlag für eine
  Methodik-Pflicht, mit dem Beleg aus Abschnitt 6.
- **N65-2** — Methodik-Pflicht 13 erzeugt wörtlich gelesen einen Regress. Die tragfähige Lesart
  ist «alle Teile der **Quelle**», nicht des Destillats. Sollte entschieden werden, bevor sie an
  einem Grenzfall entscheidet.
- **N65-4** — ob die Grobformel in `agents/volumen-rechner.md` um einen Dachterm ergänzt oder ihre
  Näherungsrichtung ausdrücklich deklariert wird.

Unverändert weitergeführt, **nicht erneut vorgelegt**: N63-2 (Fundstellen als dritte
Prüfrichtung), N63-3 (Durchsicht des Synthese-Artikels, jetzt mit fünf inline-Vorbehalten), die
Reihenfolge der 308 Kandidaten, das Statusvokabular und die Beschaffungs-Bring-Schulden (SIA-Shop
380/1:2016, 385/1:2011, 266/1:2015, 181:2020, 491, 118:2013 · VSS-Kundendienst für SN 641 400,
SN 640 052 · SNV für SN EN 12193:2019).

## 11. Bestandsmessung (Rule 260811)

Jede geänderte Datei nach dem Schreiben gegen die committete Fassung gemessen:

| Datei | vorher | nachher | gelöschte Zeilen | Bewertung |
|---|---|---|---|---|
| `destillate/sia-416-2003.md` | 135 | 161 | ersetzte Blöcke | keine Überschrift entfernt (Diff der `^#`-Zeilen: nur eine hinzugekommen) |
| `training/norm-inventar.md` | 1591 | 1592 | **0** | append-only sauber |
| `wiki/QUESTIONS.md` | 6279 | 6370 | **10** | exakt die zwei absichtlich ersetzten Blöcke (4 + 6 Zeilen) |
| `CHANGELOG.md` | 12550 | 12594 | **0** | Prepend sauber |

Kein Bestandsverlust. Umlaute durchgehend in der Zielkonvention geschrieben, nicht nachträglich
konvertiert.
