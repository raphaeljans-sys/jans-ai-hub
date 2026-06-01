# Wochenplan — Aufbau Bauleitungs-Harness

Alternierender Arbeitsrhythmus, damit das Harness systematisch wächst, ohne dass
einzelne Bereiche liegenbleiben. Start: KW 23/2026 (ab 01.06.2026).

## Rhythmus-Prinzip

Jede Woche wechselt der Schwerpunkt zwischen vier Spuren:
- **A · Veredeln** — Grundlagendaten eine Reifegrad-Stufe höher ([Pipeline](09_datenaufbereitung-pipeline.md))
- **B · Lücken schliessen** — offene Punkte aus [wissensluecken.md](wissensluecken.md), Benutzer gebündelt fragen
- **C · Skills bauen** — neue Skills (stammdaten, werkvertrag, unternehmerkontrolle)
- **D · Validieren** — an echtem Projekt erproben, Benutzer-Freigabe einholen

Wochenstart immer: `python3 tools/reifegrad.py` → zeigt schwächstes Glied.

## Plan (8 Wochen, danach Wiederholung)

| KW | Spur | Arbeitspaket | Ergebnis |
|---|---|---|---|
| **23** | A | Restliche .crbx aus 66/67/68 konvertieren (271, 272, 281, 282, 285) → Goldstandards R2 | breitere LV-Bibliothek |
| **24** | C | Skill `unternehmerkontrolle` anlegen (Ausmass, NT, Regie, SR, Abnahme, Garantie) | neuer Skill-Grundgerüst |
| **25** | B | Vorlagen-Lücken L01–L06 (Werkvertrag, Abnahmeprotokoll, Garantieschein, Begleitbrief) — Benutzer-Muster erfragen | Vorlagen erstellt |
| **26** | A | Goldstandards auf R4 heben: Platzhalter setzen, projektneutral (Master-LV je Gewerk) | wiederverwendbare LVs |
| **27** | C | Skill `werkvertrag` + Skill `stammdaten` (Projekt-Spine) anlegen | Harness-Lücken geschlossen |
| **28** | B | Standard-Ausschreibungstexte je Gewerk (L08) + Richtpreis-Anbindung an `kostenschaetzung` (L09) | angereicherte Textbausteine |
| **29** | D | Komplettes LV für ein reales Gewerk durchspielen (z.B. neues Projekt) → Benutzer-Freigabe → R5 | validierte Vorlage |
| **30** | B | Öffentliche Beschaffung IVöB/BöB (L11) + weitere Gewerke-LVs (L12) | Compliance + Abdeckung |

## Wöchentliche Routine (15-Minuten-Pflege)

Unabhängig vom Schwerpunkt jede Woche:
1. `reifegrad.py` laufen lassen.
2. Während der Woche aufgefallene Lücken in `wissensluecken.md` nachtragen (Mecano).
3. Eine geschlossene Lücke dokumentieren (Pfad zum Ergebnis).
4. Wenn Benutzer-Input nötig: gebündelte Frageliste vorbereiten.

## Steuerung

- Auslösen mit: «Bauleitung Wochenplan» / «nächstes Arbeitspaket».
- Der Plan ist gleitend: erledigte Pakete abhaken, Reihenfolge nach Bedarf tauschen.
- Nach KW 30 neu priorisieren anhand `reifegrad.py` + offenen Lücken.
