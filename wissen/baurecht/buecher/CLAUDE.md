---
name: buecher-layer
beschreibung: Destillate-Layer fuer das Standardwerk «Zuercher Planungs- und Baurecht, Band 1+2». Buchseiten (als Screenshots) → schnell lesbare, zitierbare Markdown-Synthesen.
last_updated: 2026-06-07
---

# Buch-Layer — Zuercher Planungs- und Baurecht (Band 1+2)

Dieser Ordner ist der **Destillate-Layer** der KB Baurecht fuer das Standardwerk
**Fritzsche / Boesch / Wipf / Kunz, «Zuercher Planungs- und Baurecht», Band 1+2,
6. Auflage 2019** (Hrsg. vzgv, Stutz Medien; E-Book 1550 S.). Er folgt dem
Energie-KB-Muster: aus traegen Buchseiten werden schnell les- und zitierbare
Markdown-Fassungen mit Quelle + Seitenbezug.

> **Interne Nutzung.** Die Destillate sind verdichtete Arbeitsnotizen aus dem vom
> Buero lizenzierten Werk, ausschliesslich fuer den internen Bueroalltag (Beratung,
> Berichte). Keine Weiterverbreitung, kein Voll-Faksimile — Synthese + Seitenbeleg,
> damit im Bedarfsfall am Original (E-Book) nachgeschlagen werden kann.

## Aufbau

```
buecher/
  CLAUDE.md            ← dieses Schema
  INDEX.md             ← alle Destillate + Abdeckungsstand je Kapitel
  seiten-inventar.md   ← Manifest aller 780 Screenshot-Doppelseiten (Lesereihenfolge, Status)
  band-1/              ← Destillate Band 1 (Kap. 1-10, Planungsrecht/Verfahren/Rechtsschutz)
  band-2/              ← Destillate Band 2 (Kap. 11-23, Bau- und Umweltrecht)
```

Quell-Screenshots liegen auf SharePoint (nicht im Repo):
`PL - 02_Recht_Norm/01_Gesetze/02_Zuerich/Planung/SM Planungs und Baurecht/`

## Destillat-Format (jede Datei in band-1/ band-2/)

Frontmatter: `name`, `kapitel`, `band`, `seiten`, `shots`, `paragraphen` (zitierte §§),
`status` (speculative|emerging|established), `gelesen`, `last_updated`. Dann:
1. **Das Wichtigste in 1-3 Saetzen.**
2. **Begriffe & Paragraphen** (jede Rechtsaussage mit § + Erlass; Praxis/BGE/VB mit Fundstelle).
3. **Formeln & Schwellenwerte** (woertlich, nichts erfunden).
4. **Praxis / Fallrecht** (zitierte Entscheide aus dem Buch).
5. **Anwendungs-Transfer JANS** (eigene Einordnung — klar als solche markiert).
6. **Offene Punkte / zu verifizieren.**

## Schreibregeln (zusaetzlich zum Meta-Schema `wissen/WISSEN-CLAUDE.md`)

- **Nie erfinden:** kein Paragraph, keine Zahl, kein Schwellenwert ohne Buchbeleg
  (Rule `identifikatoren-verifizieren`). Unsicheres bleibt `speculative` + Vermerk.
- **Seitentreue:** jede Aussage mit der **echten** Buchseite belegen (Reader-Fussnote),
  nicht mit der geschaetzten Inventar-Seite.
- **Kanton ZH:** das Werk kommentiert **Zuercher** Recht (PBG/ABV/BZO). Fuer SZ-Faelle
  gelten die Aussagen nur sinngemaess — immer kennzeichnen (Skill `baurecht`, Quelle SZ).
- **Verlinken statt doppeln:** Brandschutz → Skill `brandschutz`; Bundesrecht (RPG/USG) →
  amtliche Volltexte / SharePoint. Querbezuege als `[[backlinks]]` ins `wiki/`.

## Verbindung zum Harness

- Skill **`baurecht`** zitiert diese Destillate als **Top-Quelle** (Stufe 0b, direkt nach
  den amtlichen Volltexten) — siehe `skills/baurecht/SKILL.md`.
- Das **Buch-Training** (`wissen/baurecht/training/PROGRAMM.md`, Scheduled Task
  `baurecht-buch-training`) fuellt diesen Layer Lauf um Lauf und verdichtet ins `wiki/`.
- Gute Fallanalysen landen in `wissen/baurecht/outputs/` und fliessen zurueck ins `wiki/`.
