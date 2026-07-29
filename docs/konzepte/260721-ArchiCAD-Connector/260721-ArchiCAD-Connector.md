# ArchiCAD-27-Connector — vollautomatischer Skript-Zugriff aus dem Hub

**Konzept** · `docs/konzepte/` · Stand 21.07.2026 · JANS

> Ziel: Claude Code (Hub) kann ArchiCAD 27 direkt steuern — Elemente lesen/erstellen,
> Attribute und Layer kontrollieren, Mengen ausziehen, publizieren — ohne manuelle
> Zwischenschritte. Ergänzt das CAD-Datenaustausch-Konzept 260611 (Datei-Ebene) um die
> **Live-Ebene** (laufende ArchiCAD-Instanz).

---

## 1. Technische Grundlage

ArchiCAD hat seit Version 25 eine eingebaute **JSON-Automatisierungs-API**: ein lokaler
HTTP-Server in der laufenden ArchiCAD-Instanz (Standard-Port `19723`). Jedes Programm, das
HTTP + JSON spricht, kann Kommandos senden — genau das richtige Andockformat für den Hub.

Die offizielle API allein ist schmal (v. a. Lesen, Properties, Publishing). Der Schlüssel ist
das **Tapir Add-on** (Community-Projekt ENZYME-APD, MIT-Lizenz, gratis): es registriert
zusätzliche JSON-Kommandos in ArchiCAD und hebt den Umfang auf **~137 Kommandos** —
Elemente erstellen/ändern, Attribute, Klassifikationen, IFC, Teamwork, Navigator/Publishing.
Tapir unterstützt ArchiCAD 25–29, also auch unsere Version 27.

```
Claude Code (Station)
   └── MCP-Server "archicad"  (lokal, pro Station)
         └── HTTP JSON → localhost:19723
               └── ArchiCAD 27 (+ Tapir Add-on)
```

## 2. Drei Wege — und die Empfehlung

| Option | Was | Einschätzung |
|---|---|---|
| **A: Fertiger MCP-Server** `tapir-archicad-MCP` | Generiert automatisch alle 137 Kommandos als MCP-Tools, kann mehrere ArchiCAD-Instanzen (Port-basiert) ansteuern. Start via `uvx`, Python 3.12+. | **Sofort-Einstieg.** Alpha-Status, aber ideal zum Validieren, was die API für uns hergibt. |
| **B: Eigener schlanker MCP-Connector** | Python-Connector nach dem Muster `geo-zh.mjs`: nur die JANS-relevanten Kommandos, gebündelt zu Fach-Werkzeugen (z. B. "Kennzahlen ausziehen", "Layer-Kontrolle Schichtenvertrag"). Basis: PyPI-Paket `archicad` bzw. `multiconn_archicad`. | **Mittelfristig richtig.** 137 Roh-Tools sind Kontext-Ballast (Kontext-Diät!); wir wollen wenige, verlässliche Fach-Tools. |
| C: C++ API DevKit | Eigenes ArchiCAD-Add-on kompilieren. | Nicht nötig — Tapir deckt den Bedarf ab; Wartungsaufwand unverhältnismässig. |

**Empfehlung: A → B.** Zuerst Option A installieren und in echten Aufgaben testen (2–4 Wochen).
Danach die bewährten Abläufe in einen eigenen schlanken Connector (Option B) plus Skill
`archicad` überführen.

## 3. Einbettung ins JANS-Setup

- **Wo läuft was**: ArchiCAD läuft auf Mac Mini und/oder MacBook Pro. Der MCP-Server läuft
  **lokal auf derselben Station** (die API lauscht nur auf localhost — das ist auch gut so,
  kein offener CAD-Port im Netz).
- **Konfiguration**: Eintrag im geteilten `.mcp.json` (identisch auf beiden Stationen, wie
  M365-Connector). ArchiCAD muss laufen und ein Projekt geöffnet haben, sonst antwortet die
  API nicht — der Connector meldet das sauber zurück.
- **Remote-Zugriff**: Vom Cloud-Claude oder Handy aus wie gehabt über die bestehende
  Remote-Orchestrierung (`remote-tasks/`, `ssh mini`, Dispatch) — der Auftrag läuft dann auf
  der Station, auf der ArchiCAD offen ist. Der Mac Mini (Always-On) ist die natürliche
  ArchiCAD-Automatisierungs-Station.
- **Voraussetzung in ArchiCAD**: Tapir Add-on installieren (Optionen → Add-On-Manager →
  Liste bearbeiten → Add → Tapir-`.zip` für AC 27) und in den Arbeitsumgebungs-Einstellungen
  die JSON-API aktivieren.

## 4. Was damit konkret automatisierbar wird

1. **Kennzahlen-Auszug** für Machbarkeits-/Volumenstudien: Flächen, Volumen, Geschosse direkt
   aus dem Modell statt Handablesung (füttert `flaechen-nachweis`, `grobkosten-rechner`).
2. **Layer-/Schichtenvertrag-Kontrolle** (Konzept 260611): prüfen, ob BASIS_/EIN_/AUS_-Layer
   korrekt belegt sind; AUS_-Inhalte zurückschreiben.
3. **Publishing-Automatik**: Plansätze/PDF-Sets per Kommando publizieren (z. B. nachts auf dem
   Mini, Ablage nach Rule projekt-ablage-stand).
4. **Import-Strecke `pdf2dwg`**: erzeugtes DXF/DWG automatisiert platzieren statt manuell.
5. **Attribut-/Eigenschaften-Pflege**: BKP-Codes, Klassifikationen, IFC-Properties per Skript
   setzen und prüfen.

## 5. Grenzen (ehrlich)

- ArchiCAD muss **laufen mit geöffnetem Projekt** — kein Headless-Betrieb. Für "vollautomatisch"
  heisst das: ArchiCAD auf dem Mac Mini offen halten (Always-On-Rolle passt).
- Die JSON-API kann nicht alles, was die Maus kann (z. B. komplexe Modellier-Operationen);
  Tapir wächst aber laufend.
- `tapir-archicad-MCP` ist Alpha — für produktive Abläufe deshalb Phase B (eigener Connector)
  einplanen.

## 6. Umsetzungsplan

| Phase | Schritt | Aufwand |
|---|---|---|
| 1 | Tapir Add-on in ArchiCAD 27 installieren (Mini + MacBook), JSON-API aktivieren, Smoke-Test `scripts/archicad-smoke-test.py` | ~30 Min |
| 2 | `tapir-archicad-MCP` via `uvx` in `.mcp.json` einbinden, erste echte Aufgaben fahren | ~1 h |
| 3 | Anwendungsfälle aus §4 durchspielen, Erkenntnisse in `wissen/` festhalten | laufend |
| 4 | Eigener schlanker Connector + Skill `archicad` (NAS), Roh-MCP ablösen | 1–2 Tage |

## 7. Quellen

- Tapir Add-on: github.com/ENZYME-APD/tapir-archicad-automation (Kommando-Doku:
  enzyme-apd.github.io/tapir-archicad-automation/archicad-addon)
- MCP-Server: github.com/SzamosiMate/tapir-archicad-MCP
- Python-Toolkit Multi-Instanz: github.com/SzamosiMate/multiconn_archicad
- Offizielles Python-Paket: pypi.org/project/archicad
