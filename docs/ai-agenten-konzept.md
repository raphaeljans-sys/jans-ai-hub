# JANS AI CENTER - Agenten-Konzept
Stand: 2026-03-22

## Architektur-Übersicht

```
┌─────────────────────────────────────────────────────────┐
│                    MAC MINI (AI-HUB)                    │
│                                                         │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐              │
│  │ Claude   │  │ Ollama   │  │ RAG      │              │
│  │ Code     │  │ (lokal)  │  │ Pipeline │              │
│  └────┬─────┘  └────┬─────┘  └────┬─────┘              │
│       │              │              │                    │
│  ┌────┴──────────────┴──────────────┴────┐              │
│  │         MCP CONNECTOR LAYER           │              │
│  │  M365 │ Dropbox │ NAS │ Bexio │ Web  │              │
│  └───────────────────────────────────────┘              │
└─────────────────────────────────────────────────────────┘
         │              │              │
    ┌────┴────┐    ┌────┴────┐    ┌────┴────┐
    │SharePoint│   │ Dropbox │    │  NAS    │
    │OneDrive  │   │         │    │ 6TB KB  │
    │Outlook   │   │         │    │         │
    └──────────┘   └─────────┘    └─────────┘
```

## Agent 1: CI Agent (Corporate Identity)

### Zweck
Sicherstellung der einheitlichen visuellen Identität von JANS Architektur
über alle Medien hinweg.

### Quelldaten (READ)
- NAS: /volume2/daten/referenzprojekte/ (Projektbilder, Pläne)
- Dropbox: /JANS/CI/ (Logos, Schriften, Farbpaletten)
- SharePoint: Brand Guidelines

### Prozesse
- Prüfung von Dokumenten auf CI-Konformität
- Generierung von Präsentationsvorlagen
- Erstellung von Projektblättern nach CI-Standard

### Output (WRITE)
- NAS: /volume2/daten/AI_OUTPUTS/ci/
- SharePoint: Shared Documents/CI/

---

## Agent 2: Baurecht Agent

### Zweck
Automatisierte Recherche und Zusammenfassung von baurechtlichen
Fragestellungen basierend auf Schweizer Recht und SIA-Normen.

### Quelldaten (READ)
- NAS: /volume2/daten/normen/ (SIA-Normen, Baugesetze PDFs)
- Online: Bundesrecht (admin.ch), Kantonsrecht
- RAG: Vektorisierte Normen-Datenbank

### Prozesse
- Beantwortung baurechtlicher Fragen (RAG-basiert)
- Zusammenfassung relevanter Gesetzesänderungen
- Prüfung von Projektanträgen auf Konformität

### Output (WRITE)
- NAS: /volume2/daten/AI_OUTPUTS/baurecht/

### RAG-Setup
```
NAS PDFs → Textextraktion → Chunking → Embeddings (Ollama)
→ ChromaDB/FAISS → Abfrage via Claude Code
```

---

## Agent 3: Content Agent (Webseite)

### Zweck
Erstellung und Verwaltung von Website-Content für JANS Architektur
auf WordPress (Hostpoint).

### Quelldaten (READ)
- Dropbox: /JANS/ (Projektfotos, Texte)
- NAS: /volume2/daten/referenzprojekte/
- WordPress API: Bestehende Posts/Pages

### Prozesse
- Generierung von Projektbeschreibungen
- SEO-optimierte Texte
- Bildauswahl und -beschreibung
- Content-Upload via WordPress REST API

### Output (WRITE)
- WordPress (Hostpoint): via REST API
- NAS: /volume2/daten/AI_OUTPUTS/website/

---

## Agent 4: Buchhaltung Agent

### Zweck
Unterstützung der Buchhaltung, Rechnungsprüfung und
Finanzberichterstattung.

### Quelldaten (READ)
- Bexio API: Rechnungen, Kontakte, Projekte
- NAS: /volume2/daten/VERWALTUNG/Buchhaltung/
- Outlook: Rechnungs-Mails

### Prozesse
- Automatische Kategorisierung von Ausgaben
- Erstellung von Monats-/Quartalsberichten
- Mahnung-Entwürfe
- Projektkosten-Übersicht

### Output (WRITE)
- NAS: /volume2/daten/AI_OUTPUTS/buchhaltung/
- Bexio: via API (nach Bestätigung)

---

## Agent 5: Projekt Admin Agent (z.B. Kispi)

### Zweck
Projektadministration und -controlling für laufende Projekte
wie das Kinderspital (Kispi).

### Quelldaten (READ)
- NAS: /volume2/daten/PROJEKTE/KISPI/
- SharePoint: Projektsite
- Outlook: Projekt-Korrespondenz
- OneDrive: Planpakete

### Prozesse
- Terminplanung und Fristen-Überwachung
- Controlling: Planpaketlieferung tracken
- Adresslisten erstellen und aktualisieren
- Sitzungsprotokolle zusammenfassen
- Pendenzen-Tracking

### Output (WRITE)
- NAS: /volume2/daten/PROJEKTE/KISPI/
- SharePoint: Projekt-Updates
- Outlook: Termineinladungen, Status-Mails

---

## RAG Pipeline (Wissensdatenbank)

### Architektur
```
1. INGESTION
   NAS (PDFs, DOCx, Bilder) → Textextraktion
   
2. CHUNKING
   Dokumente → 512-Token Chunks mit Overlap

3. EMBEDDING
   Chunks → Ollama (nomic-embed-text) → Vektoren

4. STORAGE
   Vektoren → ChromaDB (lokal auf Mac Mini)
   ~/Developer/rag/index/

5. RETRIEVAL
   User-Frage → Embedding → Ähnlichkeitssuche
   → Top-K Chunks → Claude Code → Antwort
```

### Empfohlene Tools
- **Ollama**: nomic-embed-text für Embeddings
- **ChromaDB**: Lokale Vektordatenbank
- **LlamaIndex**: RAG Framework
- **Unstructured**: PDF/DOCX Parsing

---

## Migrations-Roadmap

### Phase 1 (Jetzt - erledigt)
- [x] Netzwerk aufgebaut
- [x] Tailscale VPN
- [x] M365 Connectoren
- [x] Mac Mini Server-Konfiguration
- [x] Ordnerstruktur definiert

### Phase 2 (Nächste Woche)
- [ ] Ollama auf Mac Mini installieren
- [ ] ChromaDB einrichten
- [ ] Erste RAG-Pipeline mit NAS-Testdaten
- [ ] CI Agent Prototyp

### Phase 3 (Monat 2)
- [ ] Alle 5 Agenten aktiv
- [ ] Bexio API Connector
- [ ] WordPress API Connector
- [ ] Vollständige NAS-Indexierung

### Phase 4 (Monat 3)
- [ ] Abnahmetests
- [ ] SharePoint/Dropbox/NAS Read-Tests
- [ ] Testprojekt auf zwei Macs
- [ ] Monitoring Dashboard

---

## Abnahme-Testplan

### Test 1: Datenquellen-Zugriff
- [ ] Claude Code kann SharePoint lesen
- [ ] Claude Code kann Dropbox lesen
- [ ] Claude Code kann NAS lesen
- [ ] Claude Code kann Outlook lesen

### Test 2: Identische Struktur auf zwei Macs
- [ ] Mac Mini: ~/Developer/claude-code/ funktioniert
- [ ] MacBook Pro: ~/Developer/claude-code/ funktioniert
- [ ] Beide greifen auf gleiche Daten zu

### Test 3: Intelligente Datendurchforschung
- [ ] NAS-Suche nach Architektur-Referenzen
- [ ] RAG-Abfrage zu Baurecht-Frage
- [ ] Projekt-Status aus verschiedenen Quellen

### Test 4: Output-Validierung
- [ ] AI-generierter Text entspricht CI
- [ ] Dateien werden korrekt abgelegt
- [ ] Overnight-Job läuft fehlerfrei
