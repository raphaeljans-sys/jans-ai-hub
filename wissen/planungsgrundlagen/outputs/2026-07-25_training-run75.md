# Training Run 75 — Kartenportale + Energie (Token-Vollgas)

**Datum:** 2026-07-25 · **Rotation:** Kartenportale (PL-01) + Energie (PL-04) — nach Run 74
(Recht/Norm + Brandschutz), gemaess Rotation Kartenportale → Energie → Recht/Norm → Brandschutz.

## Ablauf

1. Stand gelesen: `curriculum.md` (Kartenportale bis K61, Energie bis E47, alle `[x]`),
   `wiki/QUESTIONS.md` (weiterhin nur zwei offene Punkte in der gesamten KB: D9, M4, beide
   domaenenfremd bzw. warten auf externen Trigger), letzte Reports Run 73 (derselbe
   Domaenen-Turnus, Nullbefund) und Run 74 (Recht/Norm+Brandschutz, achte Nullbefund-Bestaetigung
   in Folge).
2. Wie in Run 74 „Naechster Schritt" angekuendigt: Frischecheck fuer Kartenportale + Energie
   gegen Run 73 als Referenz.
3. Ergaenzend E5/E9 (MuKEn-2025-ZH-Ueberfuehrung) per WebSearch erneut geprueft.

## Befund: Frischecheck (Kartenportale + Energie)

- `find "PL - 01 Kartenportale" -newer 2026-07-25_training-run73.md -type f` → **0 Treffer**.
- `find "PL - 04 Energie" -newer 2026-07-25_training-run73.md -type f` → **0 Treffer**.
- Seit Run 73 ist in beiden SharePoint-Ordnerbaeumen kein einziges File neu hinzugekommen oder
  veraendert worden.

## Befund: E5/E9 MuKEn-2025-ZH-Ueberfuehrung (WebSearch-Refresh)

Suche `MuKEn 2025 Kanton Zuerich Umsetzung Vernehmlassung Energiegesetz`: bestaetigt weiterhin
keine ZH-spezifische Vernehmlassung, keinen Gesetzesentwurf, keinen Termin fuer die kantonale
MuKEn-2025-Ueberfuehrung. Die gefundenen Quellen (energiestiftung.ch, energiehub-gebaeude.ch,
hev-zh.ch/politik/energie-umwelt/muken) bestaetigen nur den bereits bekannten Fakt: EnDK hat
MuKEn 2025 im August 2025 verabschiedet, Umsetzungsziel 2030, Details (Verbot ortsfester
elektrischer Widerstandsheizungen, PV-Eigenversorgungspflicht bei Neubau/Dachsanierung ≥50 m²)
sind bereits im Wiki dokumentiert. Kein neuer Fakt, kein Delta seit Run 73.

## Befund: die zwei verbleibenden offenen QUESTIONS-Punkte (unveraendert)

- **D9** (Energie, offen seit Run 36): realer MFH-/ZEV-Betriebskostenfall weiterhin nicht
  vorhanden. Domaenenfremd geloest werden kann dies nur durch ein reales Projekt.
- **M4** (KB-weite Umlaut-Ersatzschreibung + Frontmatter-Luecken): wartet weiterhin auf einen
  dedizierten `korrektur`-Lauf.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf (reine Negativ-Bestaetigung). Kein
Adversarial-Verify noetig — Frischecheck und WebSearch-Refresh sind mechanisch/faktenreproduzierbar.

## Token-Vollgas-Bilanz

Kein neuer Wiki-Fund. Dies ist die **sechste** unabhaengige Erschoepfungs-Bestaetigung fuer
Kartenportale + Energie (Begriffs-Grep Run 9-59, Tiefenscan, Dateinamen-Diff Run 67, Frischecheck
Run 69/73, jetzt Frischecheck Run 75) und die **neunte** in Folge ueber alle vier Domaenen hinweg
(Run 67-75 decken beide Domaenenpaare mehrfach vollstaendig ab, durchweg Nullbefund bis auf die
externen WebSearch-Refreshs, die ebenfalls keinen neuen Fakt liefern). Bewusst keine kuenstlichen
Zusatzfragen erzeugt, um den 10-16-Fragen-Zielkorridor formal zu fuellen (Rule
`wissens-bibliothekar`: nichts erfinden, keine Pseudo-Tiefe).

## Empfehlung an Raphael (siebte Wiederholung)

Neun aufeinanderfolgende Laeufe (Run 67-75, alle 2026-07-25) ohne einen einzigen neuen Wiki-Fund
ueber alle vier Domaenen hinweg. Die KB `planungsgrundlagen` ist gegen das vorhandene
SharePoint-Material nachweislich erschoepfend ausgewertet. Die Empfehlung aus Run 69-74
(Umstellung dieses spezifischen Loops auf einen taeglichen Frischecheck ohne vollen
Bearbeitungslauf, bis neues Material eintrifft oder D9/M4 aktiviert werden) bleibt unveraendert
stehen und wird — wie in den Vorlaeufen — nicht eigenmaechtig umgesetzt (Taktentscheide sind
Raphaels Entscheid, Rule auto-verbesserungen 260714/260725).

## Naechster Schritt

Fuer den naechsten Recht/Norm+Brandschutz-Turnus (Run 76 laut Rotation): Frischecheck gegen
Run 74 als Referenz. Fuer Kartenportale+Energie danach (Run 77): Frischecheck gegen diesen
Run 75. Ein inhaltlicher Vertiefungslauf lohnt sich fuer keine der vier Domaenen, bevor entweder
neues SharePoint-Material auftaucht oder ein reales Projekt D9 aktiviert.
