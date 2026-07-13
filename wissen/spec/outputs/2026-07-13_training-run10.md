# Spec-Training — Lauf 10 (2026-07-13)

Teil des VOLLGAS-Endlos-Runners (Auftrag Raphael 12.07.2026). NAS gemountet: erfuellt.
Dritter Lauf am selben Tag (nach Lauf 8 05:15 + Lauf 9 06:29). Bewusst nicht-redundant:
arbeitet die zwei offenen «naechstes»-Punkte aus Lauf 9 ab.

## 1. Stand gelesen
- `wiki/QUESTIONS.md`: F1 (Ueberdehnungs-Gegentest) offen, F3 nur noch Marketing/Text offen,
  F4/F5 vollstaendig eingeloest, F6/F7 stabil.
- `outputs/`: seit Lauf 7 (Wettbewerbs-Layer 12.07.) **keine neue reale Spec-Anwendung**.
  Laeufe 8–10 sind Environment-/Methodik-Laeufe.
- `CHANGELOG.md`: Lauf 9 schloss den Lauf-8-Git-Committer-Punkt («Praxis als autoritative
  Instanz»); zwei «naechstes»-Punkte blieben: (a) Drei-Listen-Konsistenz gegenchecken,
  (b) Twin-Fidelity-Kausalverdacht pruefen.

## 2. Environment-Audit — Drei-Listen-Konsistenz (Follow-up Lauf 8)
Lauf 8 hatte als Lektion notiert, dass die drei Rule-Listen (Dateisystem `rules/*.md`,
`rules/README.md`, `CLAUDE.md`-@-Import) unbemerkt auseinanderlaufen koennen, und dass
kuenftige Audits das explizit gegenchecken sollen. Erstmals ausgefuehrt:
- **Dateisystem:** 20 Rule-Dateien (ohne README).
- **README-Registry:** alle 20 registriert (OK).
- **CLAUDE.md @-Import:** 19 importiert. Einzige Differenz: `sync-single-committer.md`
  bewusst **nicht** importiert — korrekt, da in Lauf 9 als historisch/nicht-aktiv markiert.

**Befund:** die drei Listen sind konsistent; die einzige Luecke ist die absichtliche.
Die Lauf-8-Fixes (jans-dna-Import, README-Nachtrag) haben gehalten. Kein Handlungsbedarf,
aber die von Lauf 8 geforderte Gegenpruefung ist jetzt tatsaechlich gelaufen und belegt.

## 3. Twin-Fidelity-Kausalverdacht (Follow-up Lauf 9) — widerlegt
Lauf 8 hatte notiert, ein Fidelity-Zweitlauf habe nach dem `jans-dna.md`-Import-Fix «94»
erreicht, mit dem Verdacht eines Kausalzusammenhangs. Nachpruefung:
- Fidelity-Trend steigt **schon vor** dem Fix stetig (84 am 14.06. → 90 am 30.06. →
  92 am 04.07. → 93 am 08.–12.07.); der Sprung 93→94→95 an den drei 13.07.-Laeufen ist
  Fortsetzung eines bestehenden Trends, kein Bruch.
- **Keiner** der drei 13.07.-Fidelity-Outputs (`2026-07-13_/13b_/13c_fidelity.md`) erwaehnt
  den Import; jeder schreibt seinen Wert dem **gezogenen Golddatensatz** zu (dichter im Wiki
  verankerte Golds → hoeherer Score).
- Strukturell: der Fidelity-Selbsttest wird vom `twin-chef`-Harness gefahren, der `jans-dna.md`
  + Facetten-Wikis **direkt** liest — unabhaengig vom `CLAUDE.md`-@-Import. Das Mass ist
  **orthogonal** zum Fix.

**Schluss:** Kausalverdacht widerlegt. Der Fix ist real und nuetzlich (die DNA laedt im
Normalbetrieb ueberhaupt), aber der twin-eigene Selbst-Score misst das nicht — er kann den
Fix weder bestaetigen noch widerlegen.

## 4. Nachschaerfen
- `wiki/verifier.md`: neue Sektion **«Ein Mass validiert eine Aenderung nur, wenn der
  Mess-Prozess die Aenderung konsumiert»** (Verifier-Disziplin gegen Korrelation-≠-Kausalitaet;
  Trennfrage «Fliesst mein Eingriff in genau den Pfad, den diese Zahl misst?»). Ergaenzt Lauf 9s
  «Praxis als autoritative Instanz».
- `wiki/QUESTIONS.md`: F1-Stand 13.07. (Lauf 10) ergaenzt — kein neuer Fall, Schwelle unveraendert,
  Kausalverdacht als widerlegt vermerkt.
- Rule `spec-methode.md` **unveraendert** (kein Ueberdehnungs-/Untertrigger-Beleg).
  `anwendung-jans.md` unveraendert (kein neuer Anwendungsfall).

## 5. Quellen-Schuld
Keine offen — F4/F5 vollstaendig eingeloest.

## Was als naechstes
- F1-Ueberdehnungs-Gegentest (mittelgrosser, genervter Mittelfall) fehlt weiter in `outputs/`.
- F3: nur noch Domaene **Marketing/Text** ohne belegte Verifier-Zeile — bei der naechsten realen
  Marketing-/LinkedIn-Spec die autoritative Instanz + das externe Signal belegt nachtragen
  (nicht spekulativ vorab erfinden).
- Beide «naechstes»-Punkte aus Lauf 9 sind erledigt; keine offene Raphael-Eskalation.
