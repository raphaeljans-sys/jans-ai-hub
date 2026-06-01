# Wohin mit Grundlagen? — Ablage-System

Damit ich (das LLM) Grundlagen direkt nutzen kann, gibt es **drei Ablage-Orte**.
Faustregel: *projektspezifisch → in den Projektordner · dauerhaft/wiederverwendbar
→ auf den NAS-Skill · unsicher → in den Eingang.*

## 1. Projektspezifische Grundlagen → in den Projektordner

Alles, was nur EIN Projekt betrifft (Pläne, Objektspiegel, Referenzofferte,
Bestand-Fotos, projektbezogene Skizzen), gehört in die JANS-Standardstruktur:

```
<Projekt>/03 BKP/<BKP> <Gewerk> <Anbieter>/
   …01 Grundlagen/          ← hierhin die Grundlagen (Spez, Skizze, Katalog-Auszug)
   …02 Richtofferten/       ← Richt-/Referenzofferten
   …03 AS versand/          ← fertiges LV + Anschreiben (Versand)
   …04 Offerte UN/          ← eingehende Offerten
```

→ **Du musst mir nur Projekt + Gewerk nennen**, ich finde die Grundlagen dort.
Voraussetzung: OneDrive/SharePoint ist synchronisiert (lokal gemountet).

## 2. Dauerhaft wiederverwendbare Grundlagen → NAS-Skill-Referenzen

Alles, was **über Projekte hinweg** hilft (Produktkataloge, Norm-/Fachquellen,
Goldstandard-Offerten, Vorlagen, Marktreports), gehört auf den NAS — das ist mein
**Prioritäts-Ordner, den ich bei jeder Ausschreibung lese**:

```
/Volumes/daten/jans-ai-hub/skills/ausschreibung/referenzen/
   goldstandard-lv/         ← echte JANS-LVs als Format-Vorbild
   produkt-kataloge/        ← Hersteller-Kataloge & Referenzofferten je Gewerk (z.B. RENZ Briefkästen)
   npk-struktur/            ← NPK-2000-Gliederung
   _eingang/                ← siehe Punkt 3
```

→ Lege z.B. den **RENZ-Katalog** oder eine gute **Feldmann-Referenzofferte** hier
ab unter `produkt-kataloge/272-briefkastenanlagen/`, dann nutze ich sie für jedes
künftige Briefkasten-LV.

## 3. Unsicher / einfach abladen → Eingang

Wenn du nicht weisst, wohin, oder schnell etwas hinterlegen willst:

```
/Volumes/daten/jans-ai-hub/skills/ausschreibung/referenzen/_eingang/
```

Leg alles dort ab (gerne mit kurzer Notiz im Dateinamen). Beim nächsten Mal
sortiere ich es an den richtigen Ort ein und sage dir, wohin es kam — so lernst
du das System nebenbei mit.

## Was ich daraus mache

- Projektgrundlagen (Ort 1) → ziehe ich beim Bearbeiten des Projekts.
- Wiederverwendbares (Ort 2) → wird Teil der dauerhaften Wissensbasis; bei Bedarf
  konvertiere ich es (z.B. Katalog → `.md`-Auszug) und verlinke es im passenden
  Gewerk-Knowhow.
- Eingang (Ort 3) → räume ich auf und dokumentiere die Einordnung.

## Kurz gesagt

| Was | Wohin |
|---|---|
| Nur für 1 Projekt | Projektordner `…/03 BKP/<Gewerk>/…01 Grundlagen/` |
| Über Projekte hinweg nützlich | NAS `…/skills/ausschreibung/referenzen/<thema>/` |
| Weiss nicht / schnell ablegen | NAS `…/referenzen/_eingang/` |
