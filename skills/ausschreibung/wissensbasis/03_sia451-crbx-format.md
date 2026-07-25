# SIA 451 / CRB (.crbx) — Datenaustauschformat

Das **SIA-451-Format** ist der Schweizer Branchenstandard für den Austausch von
Leistungsverzeichnissen (CRB). JANS arbeitet bereits damit — die eigenen Devis
liegen als `.crbx` vor. Es ist das maschinenlesbare Zielformat für LV-Daten.

## Container

- `.crbx` = ZIP-Container → enthält eine Nutzdatei `*.e1s`
- `.e1s` = fixe Spaltenbreiten, UTF-8, CRLF-Zeilenenden
- Begleitend oft: `.zip` (Beilagen), PDF-Export (AMS/KP), `.MSIA`/`.01S` (ältere CRB-Varianten)

## Satzarten (Record-Typen)

| Satz | Bedeutung | Verwertung |
|---|---|---|
| `A…` | Datei-/Objektkopf | Objekt, Gewerk, Unternehmer, NPK-Version |
| `B…` | Gliederung | Strukturhinweise |
| `C…` | Konditionen | Rabatt, Skonto, Abzüge, MWST |
| `G<kkk>` | Positionen des NPK-Kapitels `kkk` | LV-Inhalt (Texte, Mengen, Preise) |
| `Z…` | Datei-Nachspann | Abschluss |

## Spaltenlayout der G-Sätze

```
Spalte 0–3    Satzart + Kapitel        z.B. "G675"
Spalte 5–40   Positionscode + Marker    z.B. "011110", "321001 GP"
Spalte 41     Hierarchie-Level          1=Titel · 2=Position · 3=Detailtext
Spalte 42–91  Mengen-/Preisfelder       Menge, Einheit (LE/GP), EP — projektspezifisch
Spalte 92+    Positionstext
```

- **Level 2** = Position (Code), der Text ist nur eine abgeschnittene Vorschau.
- **Level 3** = Volltext-Detailzeilen (Code = Positionscode + Suffix); werden zum Positionstext zusammengefügt.
- **LE/GP-Marker** = Mengen-/Gesamtpositionszeilen; Mengen sind im **Devi-Template leer/Platzhalter** (Mengen kommen pro Projekt aus dem Ausmass).

## Parser

`tools/crbx_parser.py` liest `.crbx`/`.e1s` und erzeugt LLM-freundliche Ausgabe:

```bash
# Markdown-LV-Vorlage (Default)
python3 tools/crbx_parser.py "<datei.crbx>" -o ausgabe.md

# Strukturiertes JSON
python3 tools/crbx_parser.py "<datei.crbx>" --json -o ausgabe.json
```

**Zuverlässig extrahiert:** Kopf, Konditionen, Kapitel-/Positionshierarchie, Positionstexte.
**Roh mitgeführt:** Mengen-/Preisfelder (versions-/projektabhängig; im Template ohnehin leer).

## Abhängigkeiten

Reine Standardbibliothek (zipfile, re, json) — kein pip nötig. Python 3.

## Hinweis MWST

In Bestandsdateien steht MWST oft **7,7 %** (Stand bis 2023). Aktueller Satz: **8,1 %** (seit 2024).
Bei der Aufbereitung immer prüfen/aktualisieren — siehe [04_konditionen.md](04_konditionen.md).
