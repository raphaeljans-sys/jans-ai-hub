---
title: Spec-Vorlage (Skelett fuer eine reale Spec-Anwendung)
status: established
last_updated: 2026-07-06
sources: [2026-06-21_ag-gruendung_spec.md, 2026-07-02_hub-chef-harness_spec.md, 2026-07-02_buchhaltungssystem_spec.md]
links: [[anwendung-jans]], [[3-schritte-spec]], [[verifier]]
---

# Spec-Vorlage

Empirisch destilliert aus den drei ersten realen Spec-Anwendungen (AG-Gruendung 21.06.,
Hub-Chef-Harness 02.07., Buchhaltungssystem 02.07.), die alle dasselbe Skelett teilen (F6/F7).
Kopiervorlage fuer `wissen/spec/outputs/JJJJ-MM-TT_<vorhaben>_spec.md`. Nicht jeder Abschnitt
ist Pflicht: **Ist-Zustand (Scan)** nur bei System-/Prozess-/Umbau-Vorhaben, **Monitor-Log**
nur bei lebenden Specs, die ueber Tage/Wochen laufen.

Die Vorlage ist absichtlich schlank. Das Ziel der Spec-Methode ist, das *wahre Ziel*
aufzudecken und Schluesselentscheide sichtbar zu bestaetigen — nicht ein Formular zu fuellen.

---

```
# <Vorhaben> — Spec

Erstellt: JJJJ-MM-TT · Methode: Skill `spec` (Karpathy/Marchese) · Faktenbasis: <KB / Goldstandard / Projektordner>

## Ziel (1 Satz)
<Das wahre Ziel in genau einem Satz. Wozu, nicht wie.>

## Abgrenzung (was NICHT dazugehoert)
- <bewusst ausgeschlossener Scope>
- <Annahme, die absichtlich nicht Teil der Spec ist>

## Ist-Zustand (Scan)   ← nur bei System-/Prozess-/Umbau-Vorhaben
<Nicht nur bestaetigen, sondern real scannen und die Schwachstelle diagnostizieren.
Diese Diagnose IST das Argument fuer das Ziel. Belegt: Buchhaltungssystem 02.07. — OneDrive-
Archiv 2022→2026 gescannt, «Erosion» der manuellen Kontierung dokumentiert.>

## Schluesselentscheide (bestaetigt JJJJ-MM-TT)
- <Entscheid 1: Wert>   ← via AskUserQuestion bestaetigen lassen
- <Entscheid 2: Wert>
- <bewegliche Annahme (Name/Kapital/Termin) als «noch beweglich» markieren>
- <Guardrail-Anpassung? → hier als ausdruecklicher Entscheid + Guard, nie stillschweigend im Bauen>

## Bewertungskriterien (vorab)
- <woran ein erstklassiges Resultat gemessen wird — vor dem Bauen definiert>

## Plan (enge Scopes + Checkpoints)
- [ ] Scope 1 … → Checkpoint
- [ ] Scope 2 … → Checkpoint
<TaskCreate-Checkliste; Review je Block. Lebende Spec: kippt ein Entscheid, wird der
Schluesselentscheide-Abschnitt SELBST korrigiert und das ganze Belegset in EINEM
versionierten Durchlauf nachgezogen — nicht ein Dokument geflickt.>

## Verifikation
- Autoritative Instanz (bindend): <Behoerde/Notar/Bank/Treuhand — oder «keine»>
- Externes Signal (Indiz): <Connector: bexio --abgleich / geo-zh OEREB / Zefix / M365>
- Format-Vorlage: <Goldstandard-Dokument>
- Zweite Textinstanz: `korrektur` (+ `twin`-Gate)
<Rangordnung: autoritative Instanz vor Connector. Connector-Gruen = Indiz, nicht bestanden.
Zuordnung je Domaene siehe [[verifier]].>

## Faktenbasis
- <verwendete KB-Artikel / Goldstandards / Quellen>

## Monitor-Log   ← nur bei lebender Spec (laeuft ueber Tage/Wochen)
- JJJJ-MM-TT: <Stand; bei steady-state «NICHTS NEUES», nur bei echter Aenderung eskalieren>
```

---

## Zwei Lebensphasen einer lebenden Spec
Belegt an der AG-Gruendung (21.06.–06.07., 15 Tage):
1. **Aktive Formung** (21.–29.06.): Schluesselentscheide werden bestaetigt und kippen teils
   spaet (Name «JANS AG»→«Raphael Jans AG», Liberierung 50 %→100 %); das Belegset wird
   versioniert neu gezogen (Version 260627).
2. **Steady-State-Monitoring** (ab ~30.06.): das Vorhaben wartet auf eine autoritative Instanz
   (UBS-Kapitalbescheinigung, Notariat/HRA). Der Monitor-Log laeuft **low-noise** — er meldet
   «NICHTS NEUES» und eskaliert nur bei echter Aenderung («Keine Status-Mail gesendet»). In
   dieser Phase IST die awartete autoritative Instanz der Verifier (siehe [[verifier]]).
