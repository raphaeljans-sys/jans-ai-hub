---
title: Auflage → amtliches Formular (verifiziert, nie geraten)
status: established
last_updated: 2026-06-12
sources: [Bauentscheid BE 1171/26 (B26-00705.01) Stadt ZH vom 08.06.2026 Ziff. II.8, Vorabzug Bauentscheid 2619-KISPI Stadt ZH Ziff. II.8, wissen/energie/wiki/energienachweis-zh.md, EN-105 (EnFK, Version August 2017), EN-110-ZH (Kt. ZH, Version September 2022)]
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
| II.8.a (2619-KISPI) | «Hauptformular EN-ZH» | **EN-ZH** (Deckblatt, heute EVEN) | BE 1171/26 woertlich + `energie/wiki/energienachweis-zh` |
| II.8.b (2619-KISPI) | «Lueftungstechnische Anlagen» | **EN-105** (Titel woertlich auf dem Formular, EnFK Version August 2017, gueltig bis 31.12.2026) | BE 1171/26 + Formular-Original |
| II.8.c (2619-KISPI) | «Kuehlung / Befeuchtung» | **EN-110-ZH** «Kuehlung/Befeuchtung, bestehende Gebaeude» (Version September 2022, PDF gueltig bis 31.12.2025 → seit 1.1.2026 via EVEN) | BE 1171/26 + Formular-Original |

**Bestaetigung am definitiven Entscheid (12.06.2026):** Der definitive Bauentscheid
**BE 1171/26** (Geschaefts-Nr. B26-00705.01, AfB Stadt Zuerich, 08.06.2026) bestaetigt die
Zuordnung woertlich. Die Formular-Titel wurden zusaetzlich an den Original-PDFs verifiziert.

**Fallgrube Ablage (Lehrstueck 2619, 12.06.2026):** Im Projektordner waren die beiden
Formular-Ordner **vertauscht beschriftet** (Ordnername «II.8b … EN-110ZH» enthielt das
Kuehlungs-Formular, «II.8c … EN-105» das Lueftungs-Formular). Ordnernamen sind KEINE
verlaessliche Quelle fuer die Zuordnung — massgeblich sind Entscheid-Wortlaut +
Formular-Titel im PDF selbst.

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
