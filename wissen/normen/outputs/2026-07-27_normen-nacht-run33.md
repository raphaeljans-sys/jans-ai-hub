# Normen-Training Run 33 (MacBook Pro, 27.07.2026) — SIA/VKF

**Kurzfassung:** Kein neues Grunddestillat (PL-02 weiterhin 0 offene `[ ]`). Dieser Lauf hat die von
Run 32 empfohlene vierte unabhängige Verifikationsrunde für die vier zu diesem Zeitpunkt noch
speculativen Lignum-/SIA-Destillate gefahren — fünf parallele Agenten insgesamt (vier Refuter +
ein Recherche-Agent für die offene Frage zur regionalen Geltung der Zentralschweizer
Brandschutz-Arbeitshilfen in Kanton Zürich). Workflow-Tool erneut nicht getestet (direkter
Parallel-Agenten-Fallback gemäss `training/PROGRAMM.md`, analog Run 28/32).

**Ergebnis in einem Satz:** Ein Destillat (Lignum 4.2) erreicht den ersten sauberen Nulldurchgang
und wird auf `established` gehoben; drei bleiben `speculative` (je genau 1 neuer Befund, davon
einer eine Regression der Vorrunde); die offene Frage zur regionalen ZH-Geltung ist geklärt.

---

## 1. Voraussetzungen

- NAS gemountet, Zugriff auf die Original-PDFs (OneDrive-Pfade PL-02/PL-03) via `find`/`Read`
  erfolgreich getestet (`ls` auf den Lignum- und SIA-`xalt`-Ordnern), kein TCC-Block angetroffen.
- Run-Nummer erst nach Sicht der jüngsten `outputs/`-Datei belegt: `2026-07-27_normen-nacht-run32.md`
  existiert → dieser Lauf ist **Run 33**.
- Ziel-Batch aus Run 32s Abschnitt "Offen" Punkt 2 übernommen: die vier verbleibenden speculativen
  Lignum-/SIA-Destillate für eine vierte Refuter-Runde. Zusätzlich Punkt 3 (regionale Geltung der
  Zentralschweizer Arbeitshilfen für ZH) als fünfter, unabhängiger Recherche-Agent aufgenommen.

## 2. Vierte Verifikationsrunde — 4 Destillate

| Destillat | Runde | Befunde | Schwerster Einzelbefund | Status |
|---|---|---|---|---|
| `lignum-4-2-anschluesse-feuerwiderstand.md` | 4. | **0** | keiner — sauberer Nulldurchgang | **established** |
| `lignum-lignatec-brandschutz.md` | 4. | **1** | Tab. 5: blau markierte Fluchtweg-Verkleidungsfelder gelten NICHT für die Nutzungszeile Wohnbauten EFH/REFH — Destillat behauptete fälschlich «alle Nutzungszeilen» | speculative |
| `sia-d0165-2000-kennzahlen-immobilienmanagement.md` | 4. | **1** | Anhang-6-GEFMA-200-Bucket «4xx» fälschlich als «Dienste/Instandsetzung» bezeichnet — Instandsetzung (DIN-400er-Gruppe) mappt im Original durchgehend auf GEFMA-Code 230 (Klasse 2xx), nicht 4xx | speculative |
| `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` | 4. | **1 (Regression)** | Kap. 5.2.2/Tab. 522-1: Gleichsetzung Bekleidung K30/K60-RF1 ↔ Bauteil EI30/EI60-RF1 war im Original tatsächlich explizit belegt (Fliesstext S. 59 nennt das Beispiel wörtlich) — Runde 3 hatte sie fälschlich als unbelegt entfernt; wiederhergestellt und präzisiert als zwei gleichwertige Alternativen | speculative |

**Konvergenz-Befund:** Drei der vier Destillate liegen jetzt bei genau 1 Befund (Lignum
Lignatec 17→1→1, SIA D 0165 17→4→1, Lignum 4.1 5→1[Regression]); Lignum 4.2 erreicht als erstes
der vier Vertiefungs-Destillate den vollständigen Nulldurchgang (18→3→0). Bemerkenswert: der
Lignum-4.1-Befund ist keine neue inhaltliche Lücke, sondern eine **Selbstkorrektur einer Regression
der dritten Runde** — der Verifier selbst hatte in Run 32 fälschlich korrigiert. Das bestätigt, dass
auch Refuter-Runden fehlbar sind und eine vierte, unabhängige Runde ihren Zweck erfüllt.

## 3. Regionale Geltung der Zentralschweizer Brandschutz-Arbeitshilfen für Kanton Zürich (Run-32-Punkt 3)

Per WebSearch/WebFetch recherchiert (Quellen mit URL in `wiki/QUESTIONS.md` dokumentiert):

- **Symbolik (`brandschutzplan-legende-symbole-2017.md`):** direkt anwendbar für ZH — die Stadt
  Zürich (Schutz & Rettung, Einsatzplanung) schreibt in ihrem eigenen Merkblatt «Feuerwehrpläne
  (Einsatzpläne)» (Stand 04.10.2024) wörtlich die VKF-Merkblatt-2003-15-Symbolik (Anhang B12) vor,
  auf die auch die Zentralschweizer Arbeitshilfe verweist.
- **Verfahren (`brandschutzfachstellen-anleitung-brandschutznachweis-v3.md`):** NICHT 1:1 auf ZH
  übertragbar — die Stadt Zürich (Amt für Baubewilligungen + Feuerpolizei) verwendet ein eigenes,
  strukturiertes «Zusatzformular 3 Brandschutznachweis» anstelle der freitextlichen
  Zentralschweizer Anleitung V.3.
- **GVZ (Kanton):** kein eigenes Symbolik-/Nachweis-Merkblatt gefunden; verweist für objektbezogene
  Fragen an die Standortgemeinde, VKF-Vorschriften gelten gesamtschweizerisch über die IOTH.

Details, Quellen-URLs und die Praxisfolge für JANS-Projekte: `wiki/QUESTIONS.md`, neuer Abschnitt
«Regionale Geltung Brandschutznachweis-Arbeitshilfen für ZH (Run 33, recherchiert)».

## 4. Nachgeführt

- `destillate/INDEX.md`: alle vier betroffenen Zeilen aktualisiert (Lignum 4.2 auf `established`).
- `training/norm-inventar.md`: neuer Run-33-Eintrag oben.
- `wiki/QUESTIONS.md`: neuer Abschnitt zur regionalen ZH-Geltung (durch den Recherche-Agenten
  direkt eingetragen), Frage damit geschlossen.
- `CHANGELOG.md`: neuer Kopfeintrag.
- Vier Destillate inhaltlich korrigiert/verifiziert (3 Befunde total in dieser Runde: 1+1+1 = 3
  aus den drei weiterhin speculativen Destillaten, 0 aus dem neu established gehobenen).

## 5. Offen

1. **Zwei Strukturentscheide aus Run 31/32 unverändert bei Raphael:** (a) Reichweite des
   Normen-Inventars auf die ~680 bisher nie gescannten PL-02-Ordner ausweiten oder nicht? (b) Soll
   `established` künftig systematisch einen sauberen Nulldurchgang statt einer einzelnen
   bestandenen Korrekturrunde verlangen? Dieser Lauf hat die bestehende Konvention unverändert
   angewendet (Vorgriff vermieden) — sie greift bereits implizit (Lignum 4.2 brauchte tatsächlich
   einen Nulldurchgang, bevor established vergeben wurde, weil Runde 3 noch 3 Befunde fand).
2. **Fünfte Runde** für die drei verbleibenden speculativen Destillate (Lignum Lignatec 1 Befund,
   SIA D 0165 1 Befund, Lignum 4.1 1 Befund/Regression) ist der naheliegende nächste Batch dieser
   Vertiefungsstufe — alle drei sind nahe am Nulldurchgang.
3. **VKF-Merkblatt 2003-15** bleibt externe Beschaffung (VKF-Shop/-Portal, unverändert seit Run 32).
4. **Bring-Schulden unverändert:** SIA 491, SN EN 12193, SN 640 052, SN 641 400 (KB `baurecht`) —
   weiterhin externe Beschaffung, nicht Gegenstand dieses Laufs.
5. **Andere ZH-Gemeinden ausserhalb Stadt Zürich:** ob sie ein eigenes Formular führen oder sich
   an die Zentralschweizer Arbeitshilfe halten, ist nicht recherchiert (ausserhalb JANS-Kerngeschäft
   Stadt Zürich) — bewusst offen gelassen, kein Fehlbefund.

**Keine «SIA/VKF KOMPLETT»-Meldung.** Die Grunddestillation bleibt vollständig; dieser Lauf hat
ein weiteres Destillat auf `established` gehoben und die verbleibenden drei speculativen
Destillate auf je 1 Befund konvergieren lassen, aber die Endbedingung (Nulldurchgang für alle,
plus die zwei offenen Strukturentscheide) ist nicht erreicht.
