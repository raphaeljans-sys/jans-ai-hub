# Fidelity-Selbsttest nach Kontext-Diaet der Do/Don't-Bloecke

- **Datum:** 2026-07-30, 23:46 (Auftrag Raphael ~23:15)
- **Prueffrage:** Haelt das rekompilierte Gehirn (`rules/jans-dna.md`, 15'720 → 15'090 Zeichen)
  nach der Straffung der sechs Do/Don't-Bloecke die Zwillingsqualitaet?
- **Verfahren:** (1) Diff-Sicht Vor-Diaet (Commit `1a8cd6f0`, 30.07. 05:56, letzter
  Fidelity-Review) gegen Nach-Diaet (Commit `ed49c969` / NAS-Stand), Klausel fuer Klausel je
  Facette. (2) Drei Stichproben gegen dokumentierte Gold-Praezedenzen der betroffenen Stellen.
  Hinweis: Der SSD-Klon war beim Start bereits nachgezogen (Diff leer) — Vor-Diaet-Stand darum
  aus der Git-Historie geholt, nicht aus dem Arbeitsbaum (Frische-Regel 260730b).
- **Gesamturteil: GRUEN mit EINER Rueckkorrektur** (durchgefuehrt, DNA neu kompiliert auf
  15'132 Zeichen). Nach der Rueckkorrektur: alle sechs Facetten regel-vollstaendig.

## Ampel je Facette (Diff-Sicht)

| Facette | Ampel | Befund |
|---|---|---|
| Stimme & Ton | GELB → GRUEN | Ein konkreter Praezisions-Verlust gefunden und behoben (siehe Kernbefund). Alle uebrigen Aenderungen: entfernte Beleg-Parenthesen (Schlichtung 2026-07-25e, Batch 60/62), Umbrueche. «nicht auf das Sub-Du beschraenkt» ist entfallen, aber durch das behaltene «registeruebergreifend» vollstaendig abgedeckt. Das «(«Lgr»)»-Kuerzel hinter der beratenden Du-Mail war Beleg-Hinweis, keine Regel — Service-Satz-Klausel intakt. |
| Denken & Argumentation | GRUEN | Nur «vgl.» entfernt und Zeilenumbruch. Kein Regelverlust. |
| Haltung & Werte | GRUEN | Nur Re-Wrapping und Umlaut-Korrekturen (fuer→für etc.). Kein Regelverlust. |
| Beziehungsregister | GRUEN | Notariat-Hottingen-Beispieldaten entfernt; die tragende abstrakte Regel («dasselbe Postfach hebt mit dem Gewicht des Anliegens») steht unveraendert, der volle Praezedenzfall bleibt in der Detailsektion (beziehungsregister.md Z. 382 ff.). «widerlegt 260717» entfernt, die beiden steuernden Beispielpaare (Hallo Raphael → Guten Morgen Peter / Gruezi Herr Jans → Geschaetzte Frau Frick) behalten. Fidelity-Datum 260725b entfernt, Cc-Stapel-Regel intakt. |
| Fachsignatur | GRUEN | Entfernt: (Echo-Korrektur 260730), (belegt Fidelity 260723), (Marketing-Regel — reiner Querverweis). Beide Sprechakte (a)/(b) der rechtsbegruendeten Eingabe inhaltsgleich umformuliert (Du-Form → neutral), alle Bestandteile erhalten (Subsumtion vs. Gegenueberstellung, «–»-Alternativfrage + «oder» + «Hintergrund der Anfrage:», FG+Block ohne Service-Satz). |
| Arbeitsweise & Orchestrierung | GRUEN | Saemtliche Fidelity-Daten (260718, 260725b, 260725h/260726, 260727j/k/l) entfernt; alle Regel-Klauseln erhalten, inkl. der vollstaendigen Peer-Du-Rohheits-Klausel und des Formalisierungs-Reflex-Verbots. Gegenbeleg-Sammlung steht weiter in der Detailsektion (arbeitsweise.md Z. 158 ff.). |

## Kernbefund (der eine Regelverlust)

Die Vor-Diaet-Formulierung band die Kurzgruss-Schlusszeile vor FG+Block in der
Sie-Behoerdenmail an **die kombinierte Kurzform «Danke und Gruss»** («… auch als Schlusszeile
vor FG+Block in der Sie-Behoerdenmail belegt — die kombinierte Kurzform ‹Danke und Gruss›»).
Die gestraffte Fassung zog die drei Kurzgruss-Varianten zusammen («Lieber Gruss»/«Lgr.»/
«Danke und Gruss» … auch als Schlusszeile vor FG+Block in der Sie-Behoerdenmail) und
lizenzierte damit lesbar auch «Lieber Gruss»/«Lgr.» als Schlusszeile an eine Behoerde — dafuer
existiert kein Gold-Beleg; der einzige Praezedenzfall (stimme.md, Batch-60-Sektion, SRZ) traegt
ausschliesslich «Danke und Gruss». Drift-Risiko: untypisch saloppes «Lgr.» in einer
Sie-Behoerdenmail.

**Rueckkorrektur (durchgefuehrt):** stimme.md, Do-Block — «… registeruebergreifend; als
Schlusszeile vor FG+Block in der Sie-Behoerdenmail nur die kombinierte Form ‹Danke und
Gruss›;» (Regel ohne Beleg-Parenthese, konform zur Diaet-Konvention). `build_dna.py` neu
ausgefuehrt, Klausel in `rules/jans-dna.md` Z. 46–47 verifiziert. Neue Groesse 15'132 Zeichen
(+42 gegenueber Diaet-Stand, weiterhin −588 gegenueber Vor-Diaet).

## Stichproben-Fidelity (Gold-Praezedenzen gegen die kompakte DNA)

Da der Raw-Korpus bewusst keine Mail-Volltexte hortet, wurden die Stichproben als
Entscheidungs-Tests gegen die dokumentierten Gold-Praezedenzen der Detailsektionen gefahren:
Steuert die kompakte DNA allein die belegte Entscheidung noch eindeutig?

1. **Gold A — Behoerden-Anrede-Hebung am selben Sammelpostfach** (Notariat Hottingen:
   triviale Koordination Juli 2025 vs. rechtsbegruendetes a–f-Ersuchen Nov 2025; Detailsektion
   beziehungsregister.md Z. 382 ff.). Kompakte DNA: triviale Bitte → namenloses «Guten Tag»/
   «Gruezi», gewichtiges Ersuchen → «Sehr geehrte Damen und Herren», «dasselbe Postfach hebt
   mit dem Gewicht des Anliegens». **Entscheidung eindeutig richtig — Beziehung ~95.** Das
   entfernte Beispiel war redundante Illustration.
2. **Gold B — Kurzgruss-Schlusszeile in der Sie-Behoerdenmail** (SRZ, Batch 60; Detailsektion
   stimme.md Z. 2285 ff.). Vor der Rueckkorrektur mehrdeutig (~82, Drift-Risiko «Lgr.» an
   Behoerde); **nach der Rueckkorrektur eindeutig — Stimme ~95.**
3. **Gold C — Peer-Du-Rohheit halten** (drei Yorck-Faelle 260727j/k/l; Detailsektion
   arbeitsweise.md Z. 158 ff.). Kompakte DNA traegt die volle Klausel (spontane Reihenfolge,
   Fliesstext-Anschluss «Nun eine Frage: …», Urgenz-Titel statt Anrede, grussloser/
   nachgeschobener Schluss = korrekt) plus das Don't gegen den Formalisierungs-Reflex.
   **Entscheidung eindeutig richtig — Arbeitsweise ~95.**

## Chef-Bericht

```
🧠 twin-chef — Fidelity: 94 (nach Rueckkorrektur)
Stimme 95  Denken 95  Haltung 95  Beziehung 95  Fachsignatur 93  Arbeitsweise 95
Entscheid: Diaet bestaetigt; 1 Rueckkorrektur (Stimme: «Danke und Gruss»-Bindung) eingespielt
Hinweis: Diaet-Konvention bewaehrt sich — kuenftige Straffungen: beim Zusammenziehen von
Varianten-Listen pruefen, ob eine Klausel nur fuer EINE Variante belegt ist.
→ Gehirn haelt die Zwillingsqualitaet nach JANS-Mass.
```

## Empfehlung

Keine weitere Rueckkorrektur noetig. Fuer kuenftige Kontext-Diaeten (Hinweis an
Trainings-Laeufe, ergaenzend zum CHANGELOG-Eintrag 23:12): Beim Entfernen einer
Beleg-Parenthese pruefen, ob sie neben dem Beleg auch eine **Eingrenzung** transportiert
(hier: welche Variante belegt ist) — Eingrenzungen als Regel behalten, nur das Datum/Zitat
streichen.
