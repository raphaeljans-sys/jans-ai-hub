# Wissensbasis Bauleitung / Ausschreibung

Diese Wissensbasis ist die Grundlage, auf der der Skill `ausschreibung` arbeitet.
Sie wurde aus dem JANS-Archiv `AR - 07 Archiv / 08_Bauleitung` destilliert
(eigene erprobte Projekte, BBase-Bauadministration, NPK/BKP-Vorlagen).

## Leitprinzip Dateiformate

| Zweck | Format | Begruendung |
|---|---|---|
| LLM-Source-of-Truth (Vorlagen, Wissen, Struktur) | **`.md`** | schnell parsbar, versionierbar, diffbar |
| Maschineller LV-Austausch mit Unternehmern | **`.crbx` / SIA 451** | Schweizer Branchenstandard (CRB), von Bausoftware lesbar |
| Versand an Bauherr/Unternehmer (Verbindlichkeitsstand) | **PDF** | druckbar, unveraenderlich |
| Mengenermittlung / Vergleichsmatrix | **`.xlsx`** | rechnet, faerbt, sortiert |

Die `.md` ist die Quelle, aus der ich (LLM) lese und schreibe; aus ihr werden
bei Bedarf `.crbx`, PDF oder XLSX erzeugt.

## Inhalt

| Datei | Inhalt |
|---|---|
| [00_ordnerstruktur-bauleitung.md](00_ordnerstruktur-bauleitung.md) | Master-Projektablage (SIA-Phasen C/D/F/G/H/I) als Harness-Skelett |
| [01_workflow-ausschreibung.md](01_workflow-ausschreibung.md) | 11-Phasen-Pipeline je Gewerk (Grundlagen → SR) |
| [02_gewerksliste-bkp-npk.md](02_gewerksliste-bkp-npk.md) | BKP-Gewerke ↔ NPK-Kapitel Referenztabelle |
| [03_sia451-crbx-format.md](03_sia451-crbx-format.md) | SIA-451-/.crbx-Format + Parser-Nutzung |
| [04_konditionen.md](04_konditionen.md) | Konditionenmodelle KBOB/ESTV, Abzuege, MWST |
| [05_knowhow-gewerke.md](05_knowhow-gewerke.md) | Fachregeln je Gewerk (aus JANS-Praxis) |
| [06_glossar.md](06_glossar.md) | Schweizer Bauleitungs-Fachbegriffe |
| [07_werkvertrag-unternehmerkontrolle.md](07_werkvertrag-unternehmerkontrolle.md) | Werkvertrag + Realisierungsphase (Ausmass/NT/Regie/SR/Abnahme/Garantie) |
| [08_selbsttraining-mecano.md](08_selbsttraining-mecano.md) | Selbsttrainings-Mechanismus: Lücken erkennen → schliessen → integrieren |
| [09_datenaufbereitung-pipeline.md](09_datenaufbereitung-pipeline.md) | Reifegrade R0–R5, fortlaufende Veredelung der Grundlagendaten |
| [wissensluecken.md](wissensluecken.md) | **Lebende Lücken-Registry** (offen/geschlossen) |
| [wochenplan-bauleitung.md](wochenplan-bauleitung.md) | Alternierender Wochenplan für den Harness-Aufbau |
| [grundlagen-ablage.md](grundlagen-ablage.md) | **Wohin mit Grundlagen?** Ablage-System (Projekt / NAS-Referenzen / Eingang) |

## Referenzen (Goldstandard)

- `referenzen/goldstandard-lv/` — echte JANS-LVs als `.md` (aus `.crbx` konvertiert)
- `referenzen/npk-struktur/` — Struktur-Vorbilder aus NPK 2000 (Inhalt/Preise veraltet, Struktur gueltig)
- `tools/crbx_parser.py` — SIA-451-Parser (.crbx → .md/.json)

## Quellen im Archiv (Fundgrube)

```
AR - 07 Archiv / 08_Bauleitung /
  0000_Bauleitungsordner/        ← Master-Ablagestruktur (Harness-Skelett)
  00 Bauleitungsprojekte/        ← echte Projekte (eigene .crbx-LVs, Knowhow)
    00_Winwintsch/00_Knowhow_Ausschreibung/   ← Fachwissen + NPK-Wegleitung 2020
  BBase/                         ← Bauadministrations-Software (Logik-Vorbild, lizenzgesperrt)
  Ausschreibungvorlagen/
    NPK 2000  BHB 1996/          ← Normpositionen-Stammkatalog (.xls, Preise 1996)
    BUB5BN_1/                    ← BKP-gegliederte Beschrieb-Beispiele (Word)
```
