---
title: Layer 2 — The Verifier (Verifikations-Hebel)
status: established
last_updated: 2026-07-03
sources: [260616_marchese_the-spec_karpathy-method_transkript.md, bcherny_x_2007179861115511237]
links: [[the-spec]], [[3-schritte-spec]], [[environment-jans-hub]], [[anwendung-jans]]
---

# Layer 2 — The Verifier

Boris Cherny (Claude Code, Anthropic): der vielleicht wichtigste Hebel fuer gute Resultate
ist, **der KI einen Weg zu geben, ihre eigene Arbeit zu pruefen**. Mit diesem Feedback-Loop
steigt die Qualitaet des Endprodukts um das **2- bis 3-Fache**. Verifikation sieht je nach
Domaene anders aus (ein Bash-Befehl, eine Testsuite, ein Browser-/Simulator-Test) — sie
muss bombenfest sein.

> **Primaerquelle (F4 Cherny eingeloest, 2026-07-03):** Boris Cherny auf X, Tip 13/:
> *"probably the most important thing to get great results out of Claude Code -- give Claude
> a way to verify its work. If Claude has that feedback loop, it will 2-3x the quality of the
> final result. Claude tests every single change I land."* Damit ist das «2-3x»-Zitat nicht
> mehr nur ueber das Marchese-Transkript belegt, sondern direkt bei der Quelle.
> URL: https://x.com/bcherny/status/2007179861115511237

Warum: die KI glaenzt, wenn klare Antworten vorliegen, und liegt selbstsicher daneben, wenn
der Kontext fehlt. Der Verifier faengt genau das ab.

## Drei Wege, ein Output zu verifizieren
1. **Bewertungskriterien vorab setzen** (verbindet mit Schritt 3 der Spec, [[3-schritte-spec]]).
2. **Ein zweites KI-Modell als Kritiker** einsetzen (im Video: Codex-Plugin in Claude Code,
   `/codex:review`, `/codex:adversarial-review`). Im JANS-Hub vorhanden als Pattern:
   `/code-review`, der Korrektur-Harness (`rechtschreibung`+`layout`), das Twin-Fidelity-Gate.
3. **Externe Signale heranziehen**, wo moeglich — z.B. nach einem Deploy das Zielsystem
   abfragen und damit beweisen, dass es lief. Im JANS-Hub: Connectoren (bexio `--abgleich`,
   geo-zh OEREB, M365), die einen Output gegen die Realitaet pruefen statt gegen Vermutung.

## Verifier-Prompt
> "Before you start, define the precise criteria for a great result, use a past example as
> the format to match, and have a second AI check the final output."

JANS-Fassung:
> "Definiere vor dem Start die praezisen Kriterien fuer ein erstklassiges Resultat, nimm
> ein frueheres Beispiel als Format-Vorlage und lass ein zweites Modell das Endergebnis
> pruefen."

Im JANS-Hub ist die natuerliche Format-Vorlage ein **Goldstandard** (z.B. 2513 BAAR,
2620 Albertstrasse), die zweite Pruefinstanz der Skill `korrektur` und das `twin`-Gate,
das externe Signal der passende **Connector**.

## Lektion aus realer Anwendung: der Verifier muss das echte Abnahmekriterium spiegeln
Belegt am Fall AG-Gruendung (`outputs/2026-06-21_ag-gruendung_spec.md`, Korrektur-Delta
21.→22.06.2026). Das Verifier-Signal "Firmenname JANS AG frei" stuetzte sich auf eine
**Zefix-Exact-String-Suche** (0 Treffer "JANS AG" → gruen). Das war ein **falsches Gruen**:
die amtliche **Weisung zur Pruefung der Firmenidentitaet (Ziff. IV)** wertet den Rechtsform-
zusatz (AG/GmbH) als **nicht unterscheidungskraeftig** — die bestehende "JANS GmbH" blockiert
"JANS AG". Erst die **autoritative Instanz** (Notar/HRA) deckte das auf.

Konsequenz fuer jeden Verifier:
- **Ein automatisierter/Connector-Check ist nur indikativ**, solange er nicht das *exakte*
  Abnahmekriterium der entscheidenden Stelle nachbildet. Ein naiver Proxy (String-Match)
  ≠ das amtliche Pruefverfahren (Identitaets-/Unterscheidbarkeits-Pruefung).
- **Rangordnung der Signale benennen:** wo eine autoritative Instanz existiert (Behoerde,
  Notar, Gericht, Bank), schlaegt sie den Connector. Connector-Gruen heisst "Indiz", nicht
  "bestanden" — das ausdruecklich so kommunizieren (kein Scheinbeweis).
- **Falsch-Gruen ist teurer als Rot:** ein Verifier, der faelschlich gruen meldet, traegt
  einen Fehler ungebremst ins Endprodukt (hier: Belegset + UBS-Formular liefen auf einen
  spaeter nicht eintragungsfaehigen Namen). Verifier im Zweifel **streng** (Default = nicht
  bestanden, bis die autoritative Stelle bestaetigt).

**Empirisch bestaetigt (Verlauf bis 29.06.2026):** die autoritative Instanz behielt recht —
der Name wurde tatsaechlich auf «Raphael Jans AG» geaendert und das gesamte Belegset (Version
260627) darauf neu gezogen, genau weil der Notariats-/HRA-Befund das Connector-Gruen verwarf.
Die Rangordnung «autoritative Instanz vor Connector» ist damit nicht nur Lehrsatz, sondern
durch den realen Korrektur-Aufwand belegt.

## Verifier-Zuordnung je Domaene (Compounding-Tabelle, F3)
Waechst mit jeder realen Spec-Anwendung. Muster: **autoritative Instanz** (bindend) ·
**externes Signal/Connector** (Indiz) · **Format-Vorlage/Goldstandard** · **zweite Textinstanz**.

| Domaene | Autoritative Instanz (bindend) | Externes Signal (Indiz) | Format-Vorlage | Beleg-Fall |
|---|---|---|---|---|
| Recht / Behoerde / Gruendung | Notar · Handelsregisteramt (HRA) | Zefix (`--available`) — nur String-Indiz | Statuten-/Urkunden-Vorlage | AG-Gruendung 2026-06-21 |
| Buchhaltung / Steuern | Treuhand (Pruefstunde) · Steuerbehoerde ZH | bexio `--abgleich` (Bank↔Buchung) · UBS-Feed · SVA-/CSS-/UBS-Bescheinigungen | GA2024 + Beilageverzeichnis 2024 | Buchhaltungssystem 2026-07-02 |
| Text / Dokument / Mail | — (kein amtl. Abnehmer) | — | Goldstandard-Dokument | quer (jede Spec) |

Lektion aus dem Buchhaltungs-Fall: das externe Connector-Signal (`bexio --abgleich`) ist hier
stark, weil es zwei unabhaengige Realitaeten kreuzt (Bankeingang vs. Buchung) — trotzdem bleibt
die **Treuhand-Pruefstunde vor Einreichung** die bindende Instanz, analog zur Rangordnung oben.
Kennzahlen nie schaetzen: jede Summe gegen bexio + UBS-Feed belegt (Rule `identifikatoren-verifizieren`).
