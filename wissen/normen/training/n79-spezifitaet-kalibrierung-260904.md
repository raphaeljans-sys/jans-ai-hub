# N79 — Spezifitäts-Kalibrierung der Stichprobenstufe (kontrollierte Anlage)

**Erstellt:** 04.09.2026, Normen-Nacht Run 79 (MacBook Pro)
**Auftrag:** `training/n64-stichproben-kalibrierung.md`, Abschnitt 5, Punkt 1 — der dort
ausgewiesene offene Punkt lautete wörtlich: «Gemessen ist die **Sensitivität**, nicht die
**Spezifität**. […] Ein sauberes Destillat, an dem sich das messen liesse, ist im Bestand
nicht bekannt.»

**Warum es jetzt geht.** Run 64 schrieb diesen Satz am 28.08.2026. Einen Tag später hat
Run 66 (29.08.2026) das Destillat `vkf-allgemein-anerkannte-bauprodukte-2017.md` in **beide**
Richtungen über die **gesamte** Quelle geprüft, beide mit **0 Befunden** — der erste und
bislang einzige Doppelstatus dieser Art im Bestand. Damit existiert der Prüfling, dessen
Fehlen Run 64 als Hindernis benannt hatte. Die Voraussetzung ist erfüllt, nicht umgangen.

---

## 1. Anlage

| | |
|---|---|
| Quelle | VKF «Allgemein anerkannte Bauprodukte», Version 12.0 (31.03.2017), 12 Seiten, MD5 `ce83e59a4589921f9c960110bcd95a62` (von beiden Läufen selbst verifiziert) |
| Prüfling | `destillate/vkf-allgemein-anerkannte-bauprodukte-2017.md`, **mechanisch gekürzte Kopie** bis vor «## Prüfstand» (225 statt 312 Zeilen); Frontmatter-Felder `status`/`verifikation`/`gelesen`/`fassungsstand` neutralisiert |
| Bekannte Wahrheit | Run 66: beide Prüfrichtungen auf allen 12 Seiten, **0 Befunde** |
| Ziehung | `awk srand(79)`, Seed = Run-Nummer, **vor** Beauftragung gezogen und protokolliert → **Ziff. 3.7 (S. 11) · Ziff. 3.8 (S. 12) · Ziff. 3.1-3.4 (S. 9)** |
| Umfang | 3 von 6 inhaltlichen Kapiteln |
| Prüfstufe | je ein Subagent (sonnet), blind, eigenes Render-Präfix, Quelle-zuerst-Reihenfolge bestätigt |
| Kontrolle | zwei Varianten: **undotiert** (misst Spezifität) und **dotiert** (misst Sensitivität), beide auf derselben Quelle, dieselben drei Kapitel |

### Die drei gepflanzten Auslassungen (dotierte Variante)

Alle drei entfernen **eigenständigen Inhalt**, ohne im Resttext eine Falschaussage zu
erzeugen — Klasse (b) nach Methodik-Pflicht 13, also die refuter-blinde Klasse. Je eine pro
gezogenem Kapitel:

| ID | Kapitel | entfernt |
|---|---|---|
| D1 | Ziff. 3.1, S. 9 | der Absatz zur Anwendungsgrenze von Tabelle 4 (normale Betonqualitäten, Abplatzverhalten gesondert nachzuweisen) |
| D2 | Ziff. 3.7, S. 11 | der Ausschluss der Verwendung als Brandschutzbekleidung für Klebebewehrungen (CFK/Stahllamellen) |
| D3 | Ziff. 3.8, S. 12 | die Tabellenzeile «Perlite-, Vermiculitemörtel 20/25/35» aus Tabelle 9 |

## 2. Ergebnis

| Lauf | erkannt | Kern-Falschbefunde |
|---|---|---|
| **dotiert** (Sensitivität) | **3 von 3** — D1 = C79-01, D2 = C79-02, D3 = C79-04, alle als KERN | 0 |
| **undotiert** (Spezifität) | — | **0** (2 sachlich zutreffende Nebenbeobachtungen, kein falscher KERN) |

**Die Sensitivität repliziert Run 53** (dort ebenfalls 3/3 bei 0 Falsch-Positiven), aber auf
einer **anderen Quelle und einem anderen Prüfling**. Das war die von Run 64 ausdrücklich
benannte Schwäche («Ein Prüfling, ein Lauf. […] Zwei Kapitel derselben Norm sind keine zwei
unabhängigen Fälle»).

**Die Spezifität ist erstmals überhaupt gemessen.** Der undotierte Lauf hat auf einem
doppelt geprüften Destillat **keinen einzigen KERN-Befund erfunden**.

### Die zwei Nebenbeobachtungen des undotierten Laufs — und warum sie keine Falsch-Positiven sind

- **B79-01:** Tabelle 8 trägt auf S. 11 eine **eigene** RF1/RF3-Legendenbox. Der Sachgehalt
  steht im Destillat (allgemeiner Teil A), die tabelleneigene Wiederholung als Strukturmerkmal
  nicht. Am Original nachvollziehbar, korrekt als NEBEN eingestuft.
- **B79-02:** Die Quelle bindet den CFK-Ausschluss ausdrücklich an die **Tabellenwerte**
  («aufgrund der aufgeführten Werte ist nicht möglich»); das Destillat formuliert ihn
  kategorisch. Das ist eine echte, wenn auch feine Verschärfung gegenüber der Quelle.

Beide sind **Beobachtungen an der Quelle**, keine erfundenen Lücken. Ein Falsch-Positiv wäre
eine gemeldete Lücke, die es nicht gibt — davon null.

### Ein dritter, ungeplanter Ertrag

Der **dotierte** Lauf hat nicht nur D3 gefunden, sondern zusätzlich bemerkt, dass die
Selbst-Gegenprobe des Prüflings behauptete, Tabelle 9 sei «zellenweise» verifiziert worden —
was mit einer fehlenden Zeile nicht zutreffen kann. Die Stufe erkennt also nicht nur die
Lücke, sondern auch den **Widerspruch, den die Lücke im Dokument erzeugt**. Das ist genau die
Mechanik, die N78-4 und der Befund A79c-07 dieses Laufs an echten Dateien zeigen.

## 3. Was das für die Dreiteilung der 308 Kandidaten heisst

Run 64 kam zum Schluss, die Stichprobe tauge als **Sortier-**, nicht als **Sparinstrument**,
und ein Nullbefund trage die Aussage «Status bleibt» **erst, wenn die Spezifität gemessen
ist**. Diese Bedingung ist mit dieser Anlage erfüllt.

**Damit ist Stufe 2 der Dreiteilung erstmals belastbar:** Ein Nullbefund der Stichprobe ist
jetzt ein Signal und nicht bloss ein Schweigen. Die Reihenfolge der Kandidaten bleibt
unverändert Raphaels Entscheid (`n62-3-pruefstand-kandidaten.md`, Abschnitt 6) — diese Anlage
liefert nur die Zahl, die dort fehlte.

## 4. Was diese Messung NICHT belegt (Pflichtausweis der Methoden-Lehre)

1. **Die «bekannte Wahrheit» ist selbst ein Messergebnis.** Dass der Prüfling sauber ist,
   stammt aus Run 66 — einer Runde derselben Methodenfamilie. Übersieht diese Familie eine
   Klasse von Lücken systematisch, zählt meine Messung das Schweigen darüber als korrekte
   Spezifität. **Die zwei Nebenbeobachtungen sind ein leiser Hinweis darauf**, dass der
   Prüfling nicht restlos vollständig ist; sie liegen unterhalb der KERN-Schwelle, aber sie
   sind nicht nichts.
2. **Ein Prüfling, drei Kapitel, je ein Lauf.** Dieselbe schmale Basis wie in Run 64, nur an
   einer zweiten Stelle. Zwei Quellen sind besser als eine und bleiben zwei.
3. **Die Trennschärfe ist an Klasse (b) gemessen**, nicht an Klasse (a). Alle drei
   Dotierungen waren weggelassener eigenständiger Inhalt.
4. **Nicht gemessen: falsche Werte.** Die Anlage prüft die Abdeckungsrichtung. Ob die Stufe
   einen gefälschten Zahlenwert zurückweist, ist eine andere Frage und offen — das wäre die
   Gegenprobe, die Run 50 unter Punkt 2 vorgeschlagen hat.

## 5. Methodischer Nebenbefund — eine Sperre für einen Agenten muss mechanisch sein

Der **erste** Anlauf dieser Messung (ein Agent, Sperren nur als Anweisung formuliert) ist an
der Sperre gescheitert und hat es selbst offengelegt: das Read-Tool liefert eine Datei ohne
`limit` vollständig, also erschien der ausdrücklich gesperrte Prüfstand-Abschnitt mitsamt der
Aussage «Run 66: 0 Befunde» im Kontext des Agenten. Er hat die Quelle-zuerst-Reihenfolge
gewahrt und den Verstoss von sich aus gemeldet — das Ergebnis (ebenfalls 0 Befunde) ist
deshalb nicht wertlos, aber es ist **nicht blind** und wird hier **nicht** als Messung
gezählt.

**Die Lehre gehört in dieselbe Familie wie Run 50 («eine Pflicht ohne Kontrollpunkt im Lauf
ist eine Empfehlung»):** Eine Blindheits-Sperre, die als Anweisung formuliert ist, ist keine
Sperre. Wer blind messen will, übergibt dem Agenten eine **mechanisch gekürzte Kopie** — so
ist diese Anlage gebaut, und die verräterischen Zeichenketten wurden vor der Beauftragung
gegengesucht (0 Treffer).
