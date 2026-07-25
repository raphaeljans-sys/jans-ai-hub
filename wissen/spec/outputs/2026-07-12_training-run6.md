# Spec-Training — Lauf 6 (2026-07-12)

Automatischer Lauf (Scheduled Task `spec-training`, alle 3 Tage; Vorlauf 09.07.). Phase 1
(Audit/Auswertung) komplett; Phase 2 (Aenderungen) bei eindeutigem Mehrwert direkt ausgefuehrt
(active-with-flagging, KB-intern/additiv/reversibel).

## 1. Stand gelesen
- **Zwei neue reale Spec-Anwendungen** seit Lauf 5:
  - `outputs/2026-07-11_normen-harness_spec.md` (Baunormen-Bibliothek → Hub-Wissen; System-/
    Infrastruktur-Vorhaben, greenfield).
  - `outputs/2026-07-11_submission-2414-thalwil_spec.md` (Submissions-Vorbereitung 2414 Thalwil;
    mit **Rev. B am selben Tag**).
- CHANGELOG 11.07.: zusaetzlich zwei **parkierte** Specs (Shop-Connector, Versandplanung) — neuer
  Endzustand «parkiert».
- QUESTIONS: F4+F5+F6 geschlossen; F1/F2/F3/F7 laufend. Keine offene Quellen-Schuld (PROGRAMM
  Schritt 5 diesen Lauf gegenstandslos — F4 Karpathy+Cherny, F5 Anthropic-Doku vollstaendig belegt).

## 2. Environment-Audit (Befund)
1. **Belege der neuen Specs verifiziert** (nicht geraten): Skill `normen` + KB `wissen/normen` +
   Rule `normen-referenz` existieren; Thalwil-Bausteine `12_auslaendische-unternehmer.md` +
   `13_uebergabe-bauleitung.md` existieren. Beide Specs sind real umgesetzt, nicht nur behauptet → gruen.
2. **CLAUDE.md KB-Liste:** `spec/` weiter gefuehrt. Gruen.
3. **Metadaten (Audit E):** run5-Fix hielt (verifier + anwendung-jans standen konsistent auf 07-09).
   Diesen Lauf beide inhaltlich ergaenzt und auf **07-12** gezogen. Seed-Artikel (the-spec /
   3-schritte-spec / environment) unveraendert → gruen.
4. **Rule `spec-methode.md`:** unveraendert — Gate ueber jetzt 5+ belegte Faelle korrekt, kein
   Ueberdehnungs-Beleg, keine neue Guardrail-/Hook-Luecke. Bewusst NICHT geaendert.
5. **INDEX/Backlinks + Template:** vollstaendig (5 Artikel + Vorlage). Gruen.

## 3. Auswertung der zwei neuen Specs
**Normen-Harness (greenfield-System):**
- Folgt dem Template-Skelett; hat KEINEN eigenen «Ist-Zustand (Scan)»-Abschnitt — korrekt, weil es
  Neues baut und nichts Kaputtes repariert. Sein Aequivalent (Inventar-Scan 528 Dateien) steckt in
  der Faktenbasis. → Praezisierung F7: «Ist-Zustand (Scan)» ist ein **Umbau/Reparatur**-Feld,
  greenfield scannt in der Faktenbasis.
- Neue Verifier-Domaene (F3): **Baurecht/Norm/Fachwissen** — autoritativ = Norm-Originalquelle
  (Ziffer) + Gueltigkeitsregister; externes Signal = `wissenscheck` + Fundstellen-Stichprobe.

**Submission 2414 Thalwil (staerkster Datenpunkt):**
- **Rev. B am selben Tag** = erster *same-session* Kippfall eines Schluesselentscheids (bisher nur
  Tage-Granularitaet bei AG-Gruendung). Schluesselentscheid #5 ersetzte Teile von #2+#4 (JANS liefert
  nur Devisierungsgrundlagen, externe Bauleitung macht die Submission). Mechanik hielt exakt:
  Schluesselentscheide-Abschnitt selbst korrigiert (Vermerk «Nr. 5 ersetzt Teile von 2+4»), kein
  Log-Flicken. → F2 geschaerft.
- Der Pivot landete v.a. in der **Abgrenzung (NICHT dazu)** (fuenf neue «NICHT»-Punkte) — die
  Abgrenzung ist beim Scope-Schwenk der eigentliche Traeger. Ausloeser war eine Budget-Realitaet
  (knappes Architektur-Honorar deckt keine Submissions-Betreuung).
- Neue Verifier-Domaene (F3): **Ausschreibung/Submission-Uebergabe** — autoritativ = die **abnehmende
  Bauleitung** («Null Rueckfragen»); interner Verifier = Konsistenz-Gate Baustein 13 + `korrektur`/`twin`.
  Muster: die autoritative Instanz muss keine Behoerde sein — auch der abnehmende Mensch zaehlt.
- Nutzt den optionalen Template-Abschnitt «Annahmen (markiert, zu bestaetigen)» — das F2-Muster
  «beweglich markieren» sichtbar als Template-Feld.

**Parkiert (aus CHANGELOG 11.07.):** dritter Spec-Endzustand neben aktiv/erledigt — belegt, aber
bisher nur im Log; jetzt im Wiki auffindbar gemacht.

## 4. Geaendert (Phase 2)
- `verifier.md`: F3-Tabelle um **zwei belegte Domaenen-Zeilen** erweitert (Baurecht/Norm;
  Ausschreibung/Submission-Uebergabe) — schliesst die geflaggte «Bau/Studie»-Luecke. Meta 07-12.
- `anwendung-jans.md`: (a) Schritt 2 um den **same-session-Kippfall** (Thalwil Rev. B) + die
  Beobachtung «Pivot waechst v.a. die Abgrenzung»; (b) neue Sektion **«Drei Endzustaende einer Spec»**
  (aktiv/erledigt/parkiert). Meta 07-12.
- `QUESTIONS.md`: F1 (zwei neue Faelle + «parkiert» als Nicht-Fehltreffer), F2 (same-session-Kippen),
  F3 (zwei neue Domaenen + «abnehmender Mensch als Instanz»), F7 (Template hielt fuer 2 weitere Specs;
  Ist-Zustand-Scan greenfield vs. Umbau).
- KB-intern, additiv, reversibel, keine Rule-/Skill-Verhaltensaenderung → autonom im Rahmen
  `wissens-bibliothekar`. Rule `spec-methode.md` bewusst NICHT geaendert.

## 5. Quellen-Schuld (PROGRAMM Schritt 5)
- Keine offene Quelle: F4 (Karpathy + Cherny) und F5 (Anthropic-Doku) vollstaendig primaerquellenbelegt.

## 6. Offen / als naechstes
- **F1 Ueberdehnungs-Gegentest fehlt weiter:** alle 5 realen Faelle hoch-einsatzig + mehr-Scope;
  ein bewusst mittelgrosser Fall bleibt der wertvollste naechste Datenpunkt (nur aus realer Nutzung).
- **F3-Tabelle:** jetzt 4 Domaenen. Offen: Studie/Machbarkeit (Volumen/Wirtschaftlichkeit) und
  Marketing/Text als eigene Zeilen, sobald belegt.
- **F7:** die neuen Specs als Konformitaets-Stichprobe bestanden; kuenftig pruefen, ob greenfield-Specs
  konsistent den Ist-Zustand in die Faktenbasis legen statt in einen eigenen Abschnitt.
- **AG-Gruendung:** Phase B laeuft weiter; Uebergang Phase B → Beurkundung/Eintrag bleibt der
  Abschluss-Datenpunkt der ersten lebenden Spec.
- **Thalwil + Normen:** bei den naechsten Laeufen den weiteren Verlauf auswerten (Los-Dossiers /
  Nacht-Loop-Fortschritt) — ob die Verifier-Zuordnung in der Praxis traegt.
