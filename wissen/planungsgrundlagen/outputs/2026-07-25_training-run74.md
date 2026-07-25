# Training Run 74 — Recht/Norm + Brandschutz (Token-Vollgas)

**Datum:** 2026-07-25 · **Rotation:** Recht & Norm (PL-02) + Brandschutz (PL-03) — nach Run 73
(Kartenportale + Energie), gemaess Rotation Kartenportale → Energie → Recht/Norm → Brandschutz.

## Ablauf

1. Stand gelesen: `curriculum.md` (Recht/Norm bis R63, Brandschutz bis B5-Refresh, alle `[x]`),
   `wiki/QUESTIONS.md` (weiterhin nur zwei offene Punkte in der gesamten KB: D9, M4, beide
   domaenenfremd fuer diesen Turnus), letzter Report Run 73 (Kartenportale+Energie, siebter
   Nullbefund in Folge, mit konkretem Umstellungsvorschlag).
2. Diesem Lauf folgend (wie in Run 73 „Naechster Schritt" angekuendigt): Frischecheck fuer
   Recht/Norm + Brandschutz gegen Run 72 als Referenz (letzter Frischecheck dieses
   Domaenenpaars, 2026-07-25 18:15).
3. Ergaenzend die beiden bekannten externen Datenstaende per WebSearch erneut geprueft
   (R6/RPG-2-ZH und B5/BSV-2026), analog zum E5/E9-Refresh in Run 73 — diese koennen sich
   unabhaengig vom SharePoint-Material aendern.

## Befund: Frischecheck (Recht/Norm + Brandschutz)

- `find "PL - 02_Recht_Norm" -newer 2026-07-25_training-run72.md -type f` → **0 Treffer**.
- `find "PL - 03 Brandschutz" -newer 2026-07-25_training-run72.md -type f` → **0 Treffer**.
- Seit Run 72 ist in beiden SharePoint-Ordnerbaeumen kein einziges File neu hinzugekommen oder
  veraendert worden.

## Befund: R6/RPG-2-ZH-Refresh (WebSearch)

Suche `zh.ch RPG 2 Umsetzung` / `espace-suisse.ch RPG 2`: die foederale RPG-2-Stufung
(Inkrafttreten gestaffelt 01.01.2026/01.07.2026, Demolition-Subvention ab 01.07.2026) ist
bereits in [[recht-norm-quellenlandkarte]] dokumentiert. Fuer die **ZH-spezifische**
PBG-/Richtplan-Umsetzung liefert die Suche weiterhin **kein Fertigstellungsdatum** — exakt
derselbe Stand wie im Wiki-Artikel festgehalten (Zeile 135: „nennt weiterhin kein PBG-/
Richtplan-Fertigstellungsdatum"). Kein Delta seit Run 62.

## Befund: B5/BSV-2026-Refresh (WebSearch)

Suche `VKF Brandschutznorm 2026 Revision BSV Vernehmlassung Inkrafttreten`: bestaetigt
unveraendert — politische Vernehmlassung erneut ab August 2026, IOTH-Genehmigung/Anwendung
maerz 2027, Inkrafttreten Fruehling 2027, Name „Brandschutzvorschriften 2026" bleibt trotz
Verzoegerung bestehen (Konsolidierungsphase eingeschoben). Kein Delta seit Run 62/Run 72.

## Befund: die zwei verbleibenden offenen QUESTIONS-Punkte (unveraendert)

- **D9** (Energie, offen seit Run 36): realer MFH-/ZEV-Betriebskostenfall weiterhin nicht
  vorhanden. Domaenenfremd fuer diesen Turnus.
- **M4** (KB-weite Umlaut-Ersatzschreibung + Frontmatter-Luecken): wartet weiterhin auf einen
  dedizierten `korrektur`-Lauf.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf (reine Negativ-Bestaetigung). Kein
Adversarial-Verify noetig — Frischecheck und WebSearch-Refresh sind mechanisch/faktenreproduzierbar.

## Token-Vollgas-Bilanz

Kein neuer Wiki-Fund. Dies ist die **fuenfte** unabhaengige Erschoepfungs-Bestaetigung fuer
Recht/Norm + Brandschutz (Begriffs-Grep Run 63-65, Tiefenscan Run 66, Dateinamen-Diff Run 68,
Frischecheck Run 70+72, jetzt Frischecheck Run 74) und die **achte** in Folge ueber alle vier
Domaenen hinweg (Run 67-74 decken beide Domaenenpaare mehrfach vollstaendig ab, durchweg
Nullbefund bis auf die externen WebSearch-Refreshs, die ebenfalls keinen neuen Fakt liefern).
Bewusst keine kuenstlichen Zusatzfragen erzeugt, um den 10-16-Fragen-Zielkorridor formal zu
fuellen (Rule `wissens-bibliothekar`: nichts erfinden, keine Pseudo-Tiefe).

## Empfehlung an Raphael (sechste Wiederholung)

Acht aufeinanderfolgende Laeufe (Run 67-74, alle 2026-07-25) ohne einen einzigen neuen
Wiki-Fund ueber alle vier Domaenen hinweg. Die KB `planungsgrundlagen` ist gegen das
vorhandene SharePoint-Material nachweislich erschoepfend ausgewertet. Die Empfehlung aus
Run 69-73 (Umstellung dieses spezifischen Loops auf einen taeglichen Frischecheck ohne
vollen Bearbeitungslauf, bis neues Material eintrifft oder D9/M4 aktiviert werden) bleibt
unveraendert stehen und wird — wie in den Vorlaeufen — nicht eigenmaechtig umgesetzt
(Taktentscheide sind Raphaels Entscheid, Rule auto-verbesserungen 260714/260725).

## Naechster Schritt

Fuer den naechsten Kartenportale/Energie-Turnus (Run 75 laut Rotation): Frischecheck gegen
Run 73 als Referenz. Fuer Recht/Norm+Brandschutz danach (Run 76): Frischecheck gegen diesen
Run 74. Ein inhaltlicher Vertiefungslauf lohnt sich fuer keine der vier Domaenen, bevor
entweder neues SharePoint-Material auftaucht oder ein reales Projekt D9 aktiviert.
