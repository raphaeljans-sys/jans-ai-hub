# Training Run 87 — Kartenportale + Energie (Token-Vollgas, Frischecheck)

**Datum:** 2026-07-25 · **Rotation:** Kartenportale (PL-01) + Energie (PL-04) — nach Run 86
(Recht/Norm + Brandschutz), gemaess Rotation Kartenportale → Energie → Recht/Norm →
Brandschutz.

## Ablauf

1. Stand gelesen: `curriculum.md` (Kartenportale + Energie durchgehend `[x]`), `wiki/QUESTIONS.md`
   (weiterhin nur zwei offene Punkte in der gesamten KB: D9, M4), letzter Report Run 85 (selber
   Domaenen-Turnus, dreizehnte Nullbefund-Bestaetigung) und Run 86 (Recht/Norm+Brandschutz,
   zwoelfte Nullbefund-Bestaetigung fuer jenes Paar, zwanzigste in Folge ueber alle vier
   Domaenen).
2. Wie in Run 86 „Naechster Schritt" angekuendigt: Frischecheck fuer Kartenportale + Energie
   gegen Run 85 als Referenz.

## Befund: Frischecheck (Kartenportale + Energie)

- `find "PL - 01 Kartenportale" -newer 2026-07-25_training-run85.md -type f` → **0 Treffer**.
- `find "PL - 04 Energie" -newer 2026-07-25_training-run85.md -type f` → **0 Treffer**.
- Seit Run 85 ist in beiden SharePoint-Ordnerbaeumen kein einziges File neu hinzugekommen oder
  veraendert worden.

## Befund: die zwei verbleibenden offenen QUESTIONS-Punkte (unveraendert)

- **D9** (Energie, offen seit Run 36): realer MFH-/ZEV-Betriebskostenfall weiterhin nicht
  vorhanden. Loesbar nur durch ein reales Projekt.
- **M4** (KB-weite Umlaut-Ersatzschreibung + Frontmatter-Luecken): wartet weiterhin auf einen
  dedizierten `korrektur`-Lauf; nicht Aufgabe dieses Loops.

Kein WebSearch-Refresh von Connector-Endpunkten (ZH-OGD-WFS, geo-sz.mjs) in diesem Lauf: letzter
Check mehrfach ohne Delta bestaetigt (zuletzt Run 74/75/82/84); ein weiterer Re-Check am selben
Tag liefert erfahrungsgemaess kein neues Ergebnis (Rule `wissens-bibliothekar`: keine
Pseudo-Tiefe).

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf (reine Negativ-Bestaetigung). Kein
Adversarial-Verify noetig — der Frischecheck ist mechanisch/faktenreproduzierbar.

## Token-Vollgas-Bilanz

Kein neuer Wiki-Fund. Dies ist die **vierzehnte** unabhaengige Erschoepfungs-Bestaetigung fuer
Kartenportale + Energie und die **einundzwanzigste** in Folge ueber alle vier Domaenen hinweg
(Run 67-87 decken beide Domaenenpaare mehrfach vollstaendig ab, durchweg Nullbefund). Bewusst
keine kuenstlichen Zusatzfragen erzeugt, um den 10-16-Fragen-Zielkorridor formal zu fuellen
(Rule `wissens-bibliothekar`: nichts erfinden, keine Pseudo-Tiefe).

## Empfehlung an Raphael (siebzehnte Wiederholung)

Einundzwanzig aufeinanderfolgende Laeufe (Run 67-87, alle 2026-07-25) ohne einen einzigen neuen
Wiki-Fund ueber alle vier Domaenen hinweg. Die KB `planungsgrundlagen` ist gegen das vorhandene
SharePoint-Material nachweislich erschoepfend ausgewertet — analog zur bereits von Raphael
getroffenen Entscheidung fuer `immobewertung-training` (Rule auto-verbesserungen 260725). Die
Empfehlung aus Run 69-86 (Umstellung dieses spezifischen Loops auf einen taeglichen
Frischecheck ohne vollen Bearbeitungslauf, bis neues Material eintrifft oder D9/M4 aktiviert
werden) bleibt unveraendert stehen und wird — wie in den Vorlaeufen — nicht eigenmaechtig
umgesetzt (Taktentscheide sind Raphaels Entscheid, Rule auto-verbesserungen 260714/260725).

## Naechster Schritt

Fuer den naechsten Recht/Norm+Brandschutz-Turnus (Run 88 laut Rotation): Frischecheck gegen
Run 86 als Referenz. Fuer Kartenportale+Energie danach (Run 89): Frischecheck gegen diesen
Run 87. Ein inhaltlicher Vertiefungslauf lohnt sich fuer keine der vier Domaenen, bevor entweder
neues SharePoint-Material auftaucht, D9 durch ein reales Projekt aktiviert wird, oder Raphael
den Takt dieses Loops explizit anpasst.
