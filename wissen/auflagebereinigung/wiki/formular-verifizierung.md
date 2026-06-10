---
title: Auflage → amtliches Formular (verifiziert, nie geraten)
status: emerging
last_updated: 2026-06-10
sources: [Vorabzug Bauentscheid 2619-KISPI Stadt ZH Ziff. II.8, wissen/energie/wiki/energienachweis-zh.md]
links: [[auflagentypen-gewerkzuteilung]], [[vorgehen-auflagebereinigung]], [[INDEX]]
---

# Auflage → amtliches Formular (verifiziert, nie geraten)

Viele Auflagen verlangen einen **amtlichen Nachweis auf einem nummerierten Formular**
(Energienachweis EN-ZH, Schallschutznachweis, Hindernisfreiheit usw.). Die Formularnummer
ist ein **Identifikator** — sie unterliegt Rule `identifikatoren-verifizieren` und wird
**nie aus dem Gedaechtnis erzeugt**.

## Die Regel (warum dieser Artikel existiert)
**Lehrstueck KISPI 2619 (2026-06-10):** Ein spezialisierter Sub-Agent hat zu Auflage II.8
plausibel klingende, aber **falsche** Energieformular-Nummern erfunden. Erst der Abgleich
mit der KB `wissen/energie` und den amtlichen ZH-Quellen ergab die korrekte Zuordnung.
Modellstaerke ersetzt die Gegenkontrolle nicht.

**Arbeitsschritt fuer den `auflagen-extraktor`:**
1. **Wortlaut extrahieren, nicht uebersetzen.** Aus der Auflage nur das woertliche
   Schluesselwort ziehen (z.B. «Energienachweis», «Lueftung/Klima», «Schallschutz») +
   die Ziffer (II.8.a). Eine Formularnummer NUR uebernehmen, wenn sie **woertlich im
   Entscheid steht**.
2. **Nummer als `zu verifizieren` markieren**, wenn sie nicht woertlich dasteht — nicht raten.
3. **Gegen Beleg aufloesen** (durch `planer-zuteiler` / Fachskill): Nummer aus der
   zustaendigen Fach-KB ziehen, nicht aus dem Modellwissen. Energie → `wissen/energie`
   (Skill `planungsgrundlagen`/Agent `energie-berater`); Brandschutz → Skill `brandschutz`.
4. **Bleibt es offen → [[QUESTIONS]]**, nicht still verrechnen.

## Verifizierte Zuordnungen (waechst je Fall)

| Auflage (Fall) | Schluesselwort im Entscheid | Amtliches Formular | Beleg |
|---|---|---|---|
| II.8.a (2619-KISPI) | Energienachweis / Nachweisuebersicht | **EN-ZH** (Deckblatt, heute EVEN) | `energie/wiki/energienachweis-zh` |
| II.8.b (2619-KISPI) | Lueftung/Klima, neue Anlagen | **EN-105** | `energie/wiki/energienachweis-zh` |
| II.8.c (2619-KISPI) | Kuehlung / umbaubetroffene Lueftungsanlagen | **EN-110-ZH** | `energie/wiki/energienachweis-zh` |

> Die Spalte «Schluesselwort» ist das, was der Extraktor woertlich sieht; die Spalte
> «Formular» ist das **verifizierte** Ergebnis aus der Fach-KB. Nie die rechte Spalte
> raten, immer aus der linken + Beleg herleiten.

## Fach-KBs fuer die Aufloesung
- **Energie** (EN-ZH / EN-1xx / EVEN): `wissen/energie/wiki/energienachweis-zh.md` —
  Tabelle «Welche Nachweise wann». Pflege via Skill `planungsgrundlagen` / Agent `energie-berater`.
- **Brandschutz** (VKF-RL-Nummern, QSS-Stufen, Uebereinstimmungserklaerung): Skill `brandschutz`
  → siehe [[brandschutz-auflagen-qss]].
- **Baurecht/Verfahren** (Formular-/Verfuegungslogik ZH): Skill `baurecht`.

Querverweis: Gewerk-Zuteilung der Auflage → [[auflagentypen-gewerkzuteilung]] (HLK fuer Lueftung/Energie).
