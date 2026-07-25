# Training Run 90 — Recht/Norm + Brandschutz (Token-Vollgas, Frischecheck)

**Datum:** 2026-07-26 · **Rotation:** Recht/Norm (PL-02) + Brandschutz (PL-03) — nach Run 89
(Kartenportale + Energie), gemaess Rotation Kartenportale → Energie → Recht/Norm → Brandschutz.

## Ablauf

1. Stand gelesen: `curriculum.md` (Recht/Norm + Brandschutz durchgehend `[x]`), `wiki/QUESTIONS.md`
   (weiterhin nur zwei offene Punkte in der gesamten KB: D9, M4), letzter Report Run 88 (selber
   Domaenen-Turnus, dreizehnte Nullbefund-Bestaetigung) und Run 89 (Kartenportale+Energie,
   fuenfzehnte Nullbefund-Bestaetigung fuer jenes Paar, dreiundzwanzigste in Folge ueber alle vier
   Domaenen).
2. Wie in Run 89 „Naechster Schritt" angekuendigt: Frischecheck fuer Recht/Norm + Brandschutz
   gegen Run 88 als Referenz.

## Befund: Frischecheck (Recht/Norm + Brandschutz)

- `find "PL - 02_Recht_Norm" -newer 2026-07-25_training-run88.md -type f` → **0 Treffer**.
- `find "PL - 03 Brandschutz" -newer 2026-07-25_training-run88.md -type f` → **0 Treffer**.
- Seit Run 88 ist in beiden SharePoint-Ordnerbaeumen kein einziges File neu hinzugekommen oder
  veraendert worden.

## Befund: die zwei verbleibenden offenen QUESTIONS-Punkte (unveraendert)

- **D9** (Energie, offen seit Run 36): realer MFH-/ZEV-Betriebskostenfall weiterhin nicht
  vorhanden. Loesbar nur durch ein reales Projekt.
- **M4** (KB-weite Umlaut-Ersatzschreibung + Frontmatter-Luecken): wartet weiterhin auf einen
  dedizierten `korrektur`-Lauf; nicht Aufgabe dieses Loops.

Kein WebSearch-Refresh von R6/RPG-2-ZH bzw. B5/BSV-2026 in diesem Lauf: letzter Check Run 62,
mehrfach seither ohne Delta bestaetigt (Run 74/75/82/84/86/88); ein weiterer Re-Check liefert
erfahrungsgemaess kein neues Ergebnis (Rule `wissens-bibliothekar`: keine Pseudo-Tiefe).

## Nachtrag (Intensiv-Lauf auf Raphaels direkten Auftrag, spaeter am 2026-07-26)

Der obige Lauf (00:34 Uhr) ist der reguläre, automatische Turnus dieses Tages. Raphael hat
zusätzlich einen dezidierten Intensiv-Lauf angefordert; da dieser exakt in denselben
Rotations-Turnus (Recht/Norm + Brandschutz) fiel, wird er hier als Nachtrag zu Run 90
geführt statt eine kollidierende Run-91-Nummer zu belegen (Run 91 bleibt gemaess Rotation
Kartenportale+Energie vorbehalten, siehe „Naechster Schritt" unten).

**Unterschied zum obigen Lauf:** dort wurde der WebSearch-Refresh der zwei lebenden externen
Verfahrensstaende explizit zurückgestellt ("letzter Check Run 62"). Da zwischen Run 62
(25.07., Denkmalschutz zuletzt bei Run 58/24.07.) und heute (26.07.) mind. ein Tag vergangen
ist, wurde der Refresh im Nachtrag doch durchgeführt — echte, keine Pseudo-Tiefe:

- **R6/Denkmalschutz-PBG-Revision** (WebSearch + WebFetch `zh.ch`-Medienmitteilung
  02.07.2026): Verfahrensstand **unveraendert** — Regierungsrat hat die Vorlage «Modernisierung
  der Denkmalpflege-Gesetzgebung (Baudenkmäler)» am 02.07.2026 zuhanden Kantonsrat verabschiedet,
  Beratung dort **in erster Lesung**, kein Kantonsratstermin, keine Schlussabstimmung. Vierte
  Refresh-Bestaetigung ohne Delta seit Run 23 (Run 23/53/58/90) → [[recht-norm-quellenlandkarte]]
  §Denkmalschutz-Revision PBG (Refresh-Zeile + Frontmatter `last_updated`/`sources` ergaenzt).
- **B5/BSV-2026-Terminplan** (WebSearch + WebFetch `bsvonline.ch/de/brandschutzvorschriften/
  projekt-bsv-2026` + `metallonline.ch`): Terminplan **unveraendert** — technische Vernehmlassung
  15.09.2025-11.01.2026 abgeschlossen, politische Vernehmlassung weiterhin fuer 08/2026
  angekuendigt, IOTH-Plenums-Genehmigung 03/2027, Inkrafttreten 2027 ohne verbindliche
  Quartalsangabe (metallonline.ch nennt "Fruehling 2027" — deckt sich mit der bereits als
  unpraezise dokumentierten Formulierungsvarianz aus Run 62, kein neuer Terminplan). Vierte
  Refresh-Bestaetigung in Folge ohne Delta (Run 58/60/62/90) →
  [[brandschutz-pl03-wegweiser]] §Datenstand BSV 2026 (Refresh-Zeile + Frontmatter
  `last_updated`/`sources` ergaenzt).

Beide Refreshes sind reine Datenstand-Bestaetigungen (kein Status-Hebung noetig, beide Artikel
bereits `established`); der Mehrwert liegt in der lueckenlosen Audit-Kette, nicht in neuen
Fakten. Kein neuer Wiki-**Fund**, aber ein faelliger, echter externer Check wurde nachgeholt.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf (reine Negativ-Bestaetigung). Kein
Adversarial-Verify noetig — der Frischecheck ist mechanisch/faktenreproduzierbar.

## Token-Vollgas-Bilanz

Kein neuer Wiki-Fund. Dies ist die **vierzehnte** unabhaengige Erschoepfungs-Bestaetigung fuer
Recht/Norm + Brandschutz und die **vierundzwanzigste** in Folge ueber alle vier Domaenen hinweg
(Run 67-90 decken beide Domaenenpaare mehrfach vollstaendig ab, durchweg Nullbefund). Bewusst
keine kuenstlichen Zusatzfragen erzeugt, um den 10-16-Fragen-Zielkorridor formal zu fuellen
(Rule `wissens-bibliothekar`: nichts erfinden, keine Pseudo-Tiefe).

## Empfehlung an Raphael (neunzehnte Wiederholung)

Vierundzwanzig aufeinanderfolgende Laeufe (Run 67-90, 2026-07-25/26) ohne einen einzigen neuen
Wiki-Fund ueber alle vier Domaenen hinweg. Die KB `planungsgrundlagen` ist gegen das vorhandene
SharePoint-Material nachweislich erschoepfend ausgewertet — analog zur bereits von Raphael
getroffenen Entscheidung fuer `immobewertung-training` (Rule auto-verbesserungen 260725). Die
Empfehlung aus Run 69-89 (Umstellung dieses spezifischen Loops auf einen taeglichen Frischecheck
ohne vollen Bearbeitungslauf, bis neues Material eintrifft oder D9/M4 aktiviert werden) bleibt
unveraendert stehen und wird — wie in den Vorlaeufen — nicht eigenmaechtig umgesetzt (Taktentscheide
sind Raphaels Entscheid, Rule auto-verbesserungen 260714/260725).

## Naechster Schritt

Fuer den naechsten Kartenportale+Energie-Turnus (Run 91 laut Rotation): Frischecheck gegen Run 89
als Referenz. Fuer Recht/Norm+Brandschutz danach (Run 92): Frischecheck gegen diesen Run 90. Ein
inhaltlicher Vertiefungslauf lohnt sich fuer keine der vier Domaenen, bevor entweder neues
SharePoint-Material auftaucht, D9 durch ein reales Projekt aktiviert wird, oder Raphael den Takt
dieses Loops explizit anpasst.
