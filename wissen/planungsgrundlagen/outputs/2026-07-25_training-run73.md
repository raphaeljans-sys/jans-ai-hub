# Training Run 73 — Kartenportale + Energie (Token-Vollgas)

**Datum:** 2026-07-25 · **Rotation:** Kartenportale (PL-01) + Energie (PL-04) — nach Run 72
(Recht/Norm + Brandschutz), gemaess Rotation Kartenportale → Energie → Recht/Norm → Brandschutz.

## Ablauf

1. Stand gelesen: `curriculum.md` (Kartenportale bis K61, Energie bis E47, alle `[x]`),
   `wiki/QUESTIONS.md` (weiterhin nur zwei offene Punkte in der gesamten KB: D9, M4, beide
   nicht in diesem Turnus loesbar), letzte Reports Run 71 (derselbe Domaenen-Turnus, Nullbefund)
   und Run 72 (Recht/Norm+Brandschutz, ebenfalls Nullbefund).
2. Frischecheck (`find -newer`) fuer beide SharePoint-Ordner gegen den Zeitstempel von Run 71
   (letzter vollstaendiger Frischecheck dieses Domaenenpaars).
3. Ergaenzend E5/E9 (MuKEn-2025-ZH-Ueberfuehrung) per WebSearch erneut geprueft — dieser externe
   Datenstand kann sich unabhaengig vom SharePoint-Material aendern.

## Befund: Frischecheck (Kartenportale + Energie)

- `find "PL - 01 Kartenportale" -newer 2026-07-25_training-run71.md -type f` → **0 Treffer**.
- `find "PL - 04 Energie" -newer 2026-07-25_training-run71.md -type f` → **0 Treffer**.
- Seit Run 71 ist in beiden SharePoint-Ordnerbaeumen kein einziges File neu hinzugekommen oder
  veraendert worden.

## Befund: E5/E9 MuKEn-2025-ZH-Ueberfuehrung (WebSearch-Refresh)

Suche `energiestiftung.ch` / `hev-zh.ch/politik/energie-umwelt/muken` / `energiehub-gebaeude.ch`:
weiterhin **keine ZH-spezifische Vernehmlassung, kein Gesetzesentwurf, kein Termin** fuer die
kantonale MuKEn-2025-Ueberfuehrung auffindbar — nur die allgemeine EnDK-Timeline "Umsetzung bis
2030". Nebenfund (kein neuer Fakt, nur Terminbestaetigung): die Volksabstimmung zur Verordnung
UmV § 49b PBG (Parkplatzvorschriften-Flexibilisierung) fand am 14.06.2026 statt — dieses Ergebnis
ist bereits unter M3 in `wiki/QUESTIONS.md` erfasst (Referendum angenommen, 57.14 % Ja). Kein
neuer Wiki-Fund, unveraendert bestaetigt.

## Befund: die zwei verbleibenden offenen QUESTIONS-Punkte (unveraendert)

- **D9** (Energie, offen seit Run 36): realer MFH-/ZEV-Betriebskostenfall weiterhin nicht
  vorhanden.
- **M4** (KB-weite Umlaut-Ersatzschreibung + Frontmatter-Luecken): wartet weiterhin auf einen
  dedizierten `korrektur`-Lauf.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf (reine Negativ-Bestaetigung). Kein
Adversarial-Verify noetig — Frischecheck und WebSearch-Refresh sind mechanisch/faktenreproduzierbar.

## Token-Vollgas-Bilanz

Kein neuer Wiki-Fund. Dies ist die **fuenfte** unabhaengige Erschoepfungs-Bestaetigung fuer
Kartenportale + Energie (Begriffs-Grep Run 9-59, Tiefenscan, Dateinamen-Diff Run 67, Frischecheck
Run 69, jetzt Frischecheck Run 73) und die **siebte** in Folge ueber alle vier Domaenen hinweg
(Run 67-73 decken beide Domaenenpaare mehrfach vollstaendig ab, durchweg Nullbefund bis auf den
externen WebSearch-Refresh, der ebenfalls keinen neuen Fakt liefert). Bewusst keine kuenstlichen
Zusatzfragen erzeugt, um den 10-16-Fragen-Zielkorridor formal zu fuellen (Rule
`wissens-bibliothekar`: nichts erfinden, keine Pseudo-Tiefe).

## Empfehlung an Raphael (fuenfte Wiederholung, jetzt mit konkretem Vorschlag)

Seit Run 68 (sieben Laeufe, alle am 25.07.2026) hat kein einziger Lauf mehr echtes neues Material
gefunden — alle vier Domaenen sind nach mehreren unabhaengigen Scout-Methoden nachweislich
ausgeschoepft, solange kein neues SharePoint-Material eintrifft oder ein reales Projekt eine der
beiden verbliebenen Luecken (D9, M4) aktiviert. Die bisherigen vier Empfehlungen (Run 69-72) wurden
protokolliert, aber mangels ausdruecklicher Weisung nicht umgesetzt (Taktentscheide bleiben
Raphaels Entscheid, Rule auto-verbesserungen 260714/260725).

**Konkreter Vorschlag fuer diesen speziellen Loop** (nicht die anderen Vollgas-Loops, die noch
echte Substanz liefern): `planungsgrundlagen-training` auf einen **taeglichen Frischecheck ohne
vollen Bearbeitungslauf** umstellen, bis entweder neues SharePoint-Material auftaucht oder D9/M4
aktiviert werden — spart Token-Budget, ohne die Reaktionsfaehigkeit auf neues Material zu
verlieren. Wird hier nicht eigenmaechtig umgesetzt, sondern zum fuenften Mal vorgelegt.

## Naechster Schritt

Fuer den naechsten Recht/Norm+Brandschutz-Turnus (Run 74 laut Rotation): Frischecheck gegen
Run 72 als Referenz. Fuer Kartenportale+Energie danach (Run 75): Frischecheck gegen diesen
Run 73. Ein inhaltlicher Vertiefungslauf lohnt sich fuer keine der vier Domaenen, bevor entweder
neues SharePoint-Material auftaucht oder ein reales Projekt D9 aktiviert.
