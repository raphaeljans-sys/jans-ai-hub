# Spec-Training — Lauf 7 (2026-07-12)

Zweiter Lauf am selben Tag (nach Lauf 6, ausgeloest durch den Intensivphase-Takt Regel 260712).
Phase 1 (Audit/Auswertung) komplett; Phase 2 (Aenderungen) bei eindeutigem Mehrwert direkt
ausgefuehrt (active-with-flagging, KB-intern/additiv/reversibel).

## 1. Stand gelesen
- **Eine neue reale Spec seit Lauf 6:** `outputs/2026-07-12_wettbewerbs-layer_spec.md`
  (Erweiterung des Hub um die Design-/Wettbewerbskomponente; System-/greenfield-Vorhaben, aktiv).
- Lauf 6 hatte Normen-Harness + Thalwil ausgewertet; wettbewerbs-layer war dort noch nicht dran.
- QUESTIONS: F4+F5+F6 geschlossen; F1/F2/F3/F7 laufend. Keine offene Quellen-Schuld
  (F4 Karpathy+Cherny, F5 Anthropic-Doku vollstaendig belegt) → PROGRAMM Schritt 5 gegenstandslos.

## 2. Environment-Audit (Befund)
1. **Beleg der neuen Spec verifiziert** (nicht geraten): KB `wissen/wettbewerbs-dna/` (raw/wiki/
   outputs/training/CLAUDE/CHANGELOG) + Skill `skills/wettbewerb/` (SKILL + referenzen + tools)
   existieren real. Die Spec ist umgesetzt, nicht nur behauptet → gruen.
2. **CLAUDE.md KB-Liste:** `spec/` weiter gefuehrt; Wettbewerbs-Layer als eigener Memory + KB
   vorhanden. Gruen.
3. **Metadaten (Audit E):** `verifier.md` + `anwendung-jans.md` standen bereits auf 07-12 (Lauf 6);
   diesen Lauf inhaltlich ergaenzt, Datum bleibt 07-12 (gleicher Tag) → konsistent, gruen.
4. **Rule `spec-methode.md`:** unveraendert — Gate ueber jetzt **6 belegte Faelle** korrekt, kein
   Ueberdehnungs-Beleg, keine neue Guardrail-/Hook-Luecke. Bewusst NICHT geaendert.
5. **INDEX/Backlinks + Template:** vollstaendig (5 Artikel + Vorlage). Gruen.

## 3. Auswertung der neuen Spec (Wettbewerbs-Layer)
- **Greenfield-Bestaetigung (F7):** die Spec hat KEINEN eigenen «Ist-Zustand (Scan)»-Abschnitt —
  korrekt, weil sie Neues baut. Ihr Aequivalent (Archiv-Scan 12 Teilnahmen / 17'045 Dateien) steckt
  in der **Faktenbasis**. Zweite greenfield-Spec nach Normen-Harness, die dieses Muster bestaetigt.
- **Neue Verifier-Domaene (F3) — schliesst die geflaggte «Studie/Design»-Luecke:**
  **Wettbewerb/Design/Studie** → autoritative Instanz = die **Jury** (Jury-Urteil = bindende Wertung,
  wieder keine Behoerde); externes Signal = Refuter-Agent liest **Jurybericht gegen Dossier** +
  SIA-416-Rueckrechnung gegen Original-Excel + `programm-pruefer`-Konformitaets-Schleife; Format-
  Vorlage = **Jurybericht eines 2. Platzes** (Muttenz/Schoental), der das Delta zum 1. Platz benennt.
  Die Musterlektion «autoritative Instanz muss keine Behoerde sein» haelt jetzt ueber DREI Domaenen
  (Behoerde · abnehmende Bauleitung · Jury).
- **2.-Platz-Goldstandard (neue Verifier-Feinheit):** die schaerfste Format-Vorlage ist hier nicht
  der Sieg, sondern der knappe Zweite — ein Sieg-Bericht lobt, ein 2.-Platz-Bericht diagnostiziert
  das Fehlende. Prueffaehiger als Format-Vorlage.
- **Teil-bestaetigter Anlauf (F2, reifste Form von «beweglich markieren»):** die Schluesselentscheide
  stehen in einer Tabelle mit **Status-Spalte** (bestaetigt/vorgeschlagen/offen/umgesetzt). Der Plan
  baut nur auf den bestaetigten (E1/E2/E6); die offenen (E3–E5) gaten je ihre spaetere Etappe
  («vor Bau nochmals bestaetigen»). Die Spec laeuft sauber teil-bestaetigt an, ohne auf ungeklaerten
  Annahmen vorzupreschen — ein Fortschritt gegenueber dem separaten «Annahmen»-Abschnitt.

## 4. Geaendert (Phase 2)
- `verifier.md`: (a) F3-Tabelle um die Zeile **Wettbewerb/Design/Studie** erweitert; (b) neue
  Lektion **2.-Platz-Goldstandard** + «autoritative Instanz haelt ueber drei Domaenen». Meta 07-12.
- `anwendung-jans.md`: Schritt 2 um die **Status-Spalte je Schluesselentscheid** ergaenzt (reifste
  Form des «beweglich markieren»; offener Entscheid gatet seine Etappe). Meta 07-12.
- `QUESTIONS.md`: F1 (6. Fall, weiter kein Ueberdehnungs-Beleg + teil-bestaetigter Anlauf),
  F2 (Status-Spalte), F3 (fuenfte Domaene Wettbewerb; offen nur noch Marketing/Text).
- KB-intern, additiv, reversibel, keine Rule-/Skill-Verhaltensaenderung → autonom im Rahmen
  `wissens-bibliothekar`. Rule `spec-methode.md` bewusst NICHT geaendert.

## 5. Quellen-Schuld (PROGRAMM Schritt 5)
- Keine offene Quelle: F4 (Karpathy + Cherny) und F5 (Anthropic-Doku) vollstaendig primaerquellenbelegt.

## 6. Offen / als naechstes
- **F1 Ueberdehnungs-Gegentest fehlt weiter:** alle 6 realen Faelle hoch-einsatzig + mehr-Scope;
  ein bewusst mittelgrosser Fall bleibt der wertvollste naechste Datenpunkt (nur aus realer Nutzung).
- **F3-Tabelle:** jetzt 5 Domaenen. Offen nur noch **Marketing/Text** als eigene belegte Zeile.
- **Wettbewerbs-Layer:** aktive Spec — bei kuenftigen Laeufen pruefen, ob der 2.-Platz-Refuter-Verifier
  in der Praxis traegt (Etappe 1 Checkpoint: Raphael liest die 3 Dossiers gegen).
- **AG-Gruendung:** Phase B laeuft weiter; Uebergang Phase B → Beurkundung/Eintrag bleibt der
  Abschluss-Datenpunkt der ersten lebenden Spec.
