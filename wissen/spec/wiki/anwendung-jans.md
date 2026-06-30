---
title: Anwendung der Spec-Methode im JANS AI Hub
status: established
last_updated: 2026-06-21
sources: [260616_marchese_the-spec_karpathy-method_transkript.md]
links: [[the-spec]], [[3-schritte-spec]], [[verifier]], [[environment-jans-hub]]
---

# Anwendung der Spec-Methode im JANS AI Hub

Die Methode wird im Hub durch drei Artefakte verankert:
- **Rule `spec-methode.md`** (immer aktiv) — der *Gate*: prueft bei jeder Anfrage, ob die
  Spec-Methode angewandt werden soll.
- **Skill `spec`** — die *Durchfuehrung*: 3 Schritte (Spec) + Verifier + Environment-Bezug.
- **KB `wissen/spec/`** + Trainings-Loop — das *Lernen*: jede Anwendung verbessert die Methode.

## Der Gate-Test (wann Spec-Methode JA)

Spec-Methode anwenden, sobald **mindestens eines** zutrifft:
- mehrteiliger Auftrag, neues Vorhaben/Projekt, ganzes Dokumenten-/Deliverable-Set;
- Studie/Strategie/Konzept; etwas Praesentier- oder Versandwuerdiges mit Aussenwirkung;
- das Ziel ist unklar, mehrdeutig oder es stecken mehrere Annahmen drin;
- hoher Einsatz (Geld, Recht, Termin, Reputation) oder schwer umkehrbar.

Spec-Methode **ueberspringen** (direkt liefern), wenn:
- triviale Einzelauskunft, kurzer Lookup, Statuscheck, eine kleine mechanische Aenderung;
- der Benutzer bereits eine praezise Spec/klare Vorgabe geliefert hat;
- der Benutzer ausdruecklich "einfach machen / keine Rueckfragen" sagt.

Im Zweifel: **ein** Satz, der Spec-Modus anbietet ("Soll ich das kurz als Spec aufgleisen —
Ziel, Abgrenzung, Kriterien — bevor ich baue?"), statt blind loszulegen.

## Abgrenzung zu bestehenden Hub-Mechaniken
- Rule `auftrags-dekomposition` = *taktische* Zerlegung eines bereits klaren Mehrfachauftrags
  in eine Deliverable-Checkliste. Spec-Methode ist *strategisch* vorgelagert: zuerst das
  *wahre Ziel* aufdecken und Schluesselentscheide bestaetigen, bevor zerlegt wird.
- Skill `korrektur` + `twin`-Gate = die JANS-Auspraegung von Layer 2 (Verifier) fuer Texte.
- `wissen/` + Trainings-Tasks = Layer 3 (Environment), bereits vorhanden.

## Wie die drei Schritte im Hub konkret aussehen
1. **Ziel aufdecken** — kurzes Interview (gern via `AskUserQuestion` fuer Schluesselentscheide),
   tendenziell kleine, abgegrenzte Specs, Entscheide ausdruecklich bestaetigen lassen.
   Bei Recht/Gruendung/Umbau **zuerst die Ausgangslage (IST-Zustand) als Schluesselentscheid
   bestaetigen** — sonst baut das Ziel auf einer falschen Annahme auf (Lektion AG-Gruendung:
   anfangs faelschlich "bestehende AG" statt "Einzelfirma").
2. **Agil** — `TaskCreate`-Checkliste, enge Scopes, Checkpoints, Review je Block.
   Die Spec ist ein **lebendes Dokument**: kippt ein Schluesselentscheid spaeter, wird er
   im **Schluesselentscheide-Abschnitt selbst** korrigiert (nicht nur als Log-Zeile angehaengt)
   und das **gesamte Deliverable-/Belegset in EINEM versionierten Durchlauf** nachgezogen, nicht
   ein Dokument geflickt (Lektion AG-Gruendung 29.06.: Firmenname «JANS AG»→«Raphael Jans AG»
   und Liberierung 50 %→100 % kippten nach der Bestaetigung; das ganze Belegset wurde als
   Version 260627 neu erstellt). Annahmen, die erfahrungsgemaess wandern (Name, Kapital,
   Termin), im Interview als «noch beweglich» markieren.
3. **Praezise + Verifier** — Bewertungskriterien vorab; Goldstandard als Format-Vorlage;
   zweite Pruefinstanz (`korrektur`/`twin`/`/code-review`); externes Signal via Connector.
   Wo eine **autoritative Instanz** entscheidet (Behoerde/Notar/Bank), gilt deren Befund vor
   jedem Connector-Signal — Connector-Gruen ist nur Indiz (siehe [[verifier]]).

## Compounding
Jede groessere Spec-Anwendung wird als `outputs/JJJJ-MM-TT_<vorhaben>_spec.md` abgelegt
(Ziel · Abgrenzung · Annahmen · Kriterien · Plan · Verifikation). Gute Specs werden zur
Vorlage fuer die naechste — und speisen den Trainings-Loop (`training/PROGRAMM.md`).
