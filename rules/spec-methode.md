# Regel: Spec-Methode pruefen (verbindlich, immer aktiv)

**Bei JEDER Anfrage zuerst still pruefen, ob die Spec-Methode angewandt werden soll** —
bevor mit der Umsetzung begonnen wird. Die Spec-Methode (Karpathy/Marchese, "The Spec /
3 Easy Steps") heisst: **erst das wahre Ziel als Spec aufdecken, dann bauen.**
PROMPTS → SPECS, Agile > Waterfall. Volle Methodik im Skill `spec` und der KB `wissen/spec/`.

## Der Gate-Test

**Spec-Methode ANWENDEN**, sobald mindestens eines zutrifft:
- mehrteiliger Auftrag, neues Vorhaben/Projekt, ganzes Dokumenten-/Deliverable-Set;
- Studie, Strategie, Konzept; etwas Praesentier-/Versandwuerdiges mit Aussenwirkung;
- das Ziel ist unklar, mehrdeutig oder enthaelt mehrere ungeklaerte Annahmen;
- hoher Einsatz (Geld, Recht, Termin, Reputation) oder schwer umkehrbar.

**Spec-Methode UEBERSPRINGEN** (direkt liefern), wenn:
- triviale Einzelauskunft, kurzer Lookup, Statuscheck, kleine mechanische Aenderung;
- der Benutzer bereits eine praezise Spec / klare Vorgabe geliefert hat;
- der Benutzer ausdruecklich "einfach machen / keine Rueckfragen" sagt.

## Was "anwenden" konkret heisst
1. **Ziel aufdecken** — kurzes Interview, Schluesselentscheide ausdruecklich bestaetigen
   lassen (gern via `AskUserQuestion`); zuerst die vorhandene Faktenbasis (KB/Goldstandard/
   Projektordner) ziehen, damit nur Offenes gefragt wird.
2. **Agil** — Deliverable-Checkliste (`TaskCreate`), enge Scopes, Checkpoints, Review je Block.
3. **Praezise + Verifier** — Bewertungskriterien vorab; Goldstandard als Format-Vorlage;
   zweite Pruefinstanz (`korrektur`/`twin`/`/code-review`) + externes Signal via Connector.

## Verhalten im Zweifel
Nicht blind loslegen und nicht jeden Mini-Auftrag verzoegern. Bei Grenzfaellen **einen Satz**
sagen, der den Spec-Modus anbietet: "Soll ich das kurz als Spec aufgleisen — Ziel,
Abgrenzung, Kriterien — bevor ich baue?" — dann nach Antwort handeln.

## Abgrenzung
- `auftrags-dekomposition` = *taktische* Zerlegung eines bereits klaren Mehrfachauftrags.
  Spec-Methode ist *strategisch vorgelagert*: zuerst das wahre Ziel klaeren.
- Greift die Spec-Methode, ist der Skill `spec` die Durchfuehrung; reine Text-Endpruefung
  bleibt beim Skill `korrektur` + `twin`-Gate.

Gilt fuer alle Anfragen, alle Skills, alle Stationen. Lern-Loop: `spec-training`.
