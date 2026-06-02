---
description: "JANS AI Hub Masterclass — Wöchentliches Vertiefungsprogramm für Multi-Station Architektur, Automation und Skills, plus der wiederkehrende Meta-Lern-Loop (Harness-Review). Verwende diesen Skill wenn der Benutzer 'Masterclass', 'nächstes Thema', 'Masterclass Status', 'was steht diese Woche an', 'Masterclass Woche X', 'Harness-Review', 'Lern-Loop', 'was hat sich angesammelt' sagt oder an der systematischen Weiterentwicklung des AI Hub arbeiten will."
---

# JANS AI Hub — Masterclass

## Contract

- **Trigger:** Greift beim woechentlichen Vertiefungsprogramm (naechstes Thema, Status, Woche X) und beim wiederkehrenden Meta-Lern-Loop "Harness-Review" — wenn am systematischen Ausbau des AI Hub gearbeitet oder Angesammeltes konsolidiert werden soll.
- **Inputs:** aktueller Stand aus `masterclass/FORTSCHRITT.md` (zuerst lesen); fuer den Harness-Review die Eintraege aus `rules/auto-verbesserungen.md` und `scripts/session-insights.sh`.
- **Output-Ablage:** kein Datei-Output ausser Eintraegen in `masterclass/FORTSCHRITT.md` (auf NAS); konkrete Implementierungen landen direkt in Skills/Rules/Configs/CLAUDE.md.
- **Abhaengige Rules:** umlaute-konvention, antwort-formatierung, auto-verbesserungen (speist den Harness-Review), git-auto-push (FORTSCHRITT-Eintraege syncen).
- **Vorgelagert:** —
- **Nachgelagert:** — (Meta-Loop: speist Verbesserungen zurueck in alle Skills/Rules).

## Konzept

Wöchentliches Vertiefungsprogramm mit konkreten Implementierungsaufgaben.
Jede Woche ein Thema → recherchieren → verstehen → Script/Skill bauen → im System implementieren.

## Fortschritt

Fortschritt wird in der Datei `masterclass/FORTSCHRITT.md` auf dem NAS getrackt.
Lies diese Datei zuerst um zu wissen, wo wir stehen.

## Ablauf pro Woche

1. **Briefing** (5 Min): Thema vorstellen, Ziel definieren
2. **Recherche** (10 Min): Offizielle Docs, Blogs, GitHub durchsuchen
3. **Hands-On** (30+ Min): Konkretes Script/Skill/Config bauen
4. **Implementierung**: Im JANS AI Hub System einbauen
5. **Dokumentation**: CLAUDE.md / Skill-Docs aktualisieren
6. **Review**: Was hat es gebracht? Was kommt nächste Woche?

---

## Wiederkehrend: Harness-Review (Meta-Lern-Loop)

Quer zum wochenbasierten Curriculum laeuft der **Harness-Review** — der Schritt, der
den Harness sich selbst verbessern laesst (das «Lernen zu lernen»). Er ist **kein**
einmaliges Wochenthema, sondern wiederkehrend (Faustregel alle 2 Wochen oder sobald
`rules/auto-verbesserungen.md` ≥ 5 neue Eintraege hat).

Vollstaendige Anleitung: **`harness-review.md`** (im selben Ordner).

Kurz: `bash scripts/session-insights.sh` ausfuehren → Korrekturen **consolidaten** →
wiederkehrende Muster zu Rule/Skill-Edit **promoten** → **Rueckfaelle messen** (Text-Rule
reicht nicht → Guard-Hook wie `umlaut-guard.sh`) → veraltetes **prunen** → in
`FORTSCHRITT.md` protokollieren + syncen.

Ausloeser: «Harness-Review», «Lern-Loop», «was hat sich angesammelt».

---

## Curriculum

### Block 1: Automation & Scheduling (Wochen 1–4)

#### Woche 1: Cron Jobs & Heartbeat
- **Ziel**: Automatische Hintergrund-Tasks die den AI Hub am Leben halten
- **Themen**: `CronCreate`, `CronList`, `CronDelete`, Heartbeat-Konzept
- **Aufgabe**: Heartbeat-Skill bauen der alle 30 Min System-Health prüft
- **Output**: `skills/heartbeat/SKILL.md` + Cron-Job Konfiguration
- **Referenz**: Claude Code Cron-API (session-only, max 3 Tage)

#### Woche 2: Scheduled Tasks (Persistent)
- **Ziel**: Langfristige wiederkehrende Tasks über die Desktop-App
- **Themen**: `scheduled-tasks` MCP, Desktop-App Konfiguration, Persistenz
- **Aufgabe**: Täglichen Morgen-Check als Scheduled Task einrichten
- **Output**: Scheduled Task für `/morgen` + Monitoring
- **Wichtig**: Desktop-App muss offen sein, jede Run = frische Instanz, verpasste Runs werden nachgeholt

#### Woche 3: Loops & Proaktive Agenten
- **Ziel**: Claude Code als proaktives System das selbstständig arbeitet
- **Themen**: `/loop` Command, Workspace-Monitoring, proaktive Checks
- **Aufgabe**: Loop der alle 24h Claude Code Updates prüft (Blogs, Docs, GitHub)
- **Output**: `commands/update-watch.md` + Loop-Konfiguration
- **Referenz**: Anthropic Blog, GitHub Releases, Docs Changelog

#### Woche 4: GitHub Actions & Webhooks
- **Ziel**: Automation ausserhalb von Claude Code
- **Themen**: GitHub Actions für Repo-Maintenance, Webhook-Trigger
- **Aufgabe**: GitHub Action die bei Push automatisch NAS-Sync triggert
- **Output**: `.github/workflows/sync.yml`

---

### Block 2: Skills 2.0 & Skill Engineering (Wochen 5–8)

#### Woche 5: Skills 2.0 — Anthropic Guide Deep Dive
- **Ziel**: Den 33-seitigen Anthropic Skills Guide verstehen und anwenden
- **Themen**: Capability Uplift Skills, Doc Skills, Encoded Preference Skills
- **Aufgabe**: Bestehende Skills (baurecht, email) nach Skills 2.0 Standard refactoren
- **Output**: Verbesserte Skill-Dateien mit Testprompts
- **Referenz**: Anthropic Skills PDF Guide

#### Woche 6: Skill Creator & Testing
- **Ziel**: Eigene Skills systematisch erstellen und testen
- **Themen**: `/plugins skill-creator`, Subagent-Tests, Eval-Framework
- **Aufgabe**: Neuen Skill mit dem Skill Creator bauen + Testprompts
- **Output**: Neuer Skill + Eval-Results
- **Tools**: `anthropic-skills:skill-creator`

#### Woche 7: Description Optimizer & Reverse Engineering
- **Ziel**: Skill-Trigger perfektionieren durch Description Optimization
- **Themen**: Reverse Engineering guter Descriptions, Trigger-Accuracy
- **Aufgabe**: Alle bestehenden Skill-Descriptions optimieren + Benchmark
- **Output**: Optimierte Descriptions + Accuracy-Report

#### Woche 8: Plugin-Entwicklung
- **Ziel**: Eigenes Claude Code Plugin für JANS entwickeln
- **Themen**: Plugin-Architektur, Marketplace, Cowork-Plugin-Management
- **Aufgabe**: JANS-Plugin das Architektur-spezifische Tools bündelt
- **Output**: `.plugin` Datei + Dokumentation
- **Tools**: `cowork-plugin-management:create-cowork-plugin`

---

### Block 3: Multi-Station & Infrastruktur (Wochen 9–12)

#### Woche 9: Claude Code als Betriebssystem
- **Ziel**: Claude Code als zentrale Steuerung für alle Büro-Prozesse
- **Themen**: osascript-Integration, System-Kontrolle, App-Steuerung
- **Aufgabe**: Skill der Apps öffnet/schliesst, Drucker steuert, System konfiguriert
- **Output**: `skills/system-control/SKILL.md`

#### Woche 10: Open Router Integration
- **Ziel**: Alternative LLM-Modelle über OpenRouter einbinden
- **Themen**: OpenRouter API, Model-Routing, Fallback-Strategien
- **Aufgabe**: OpenRouter als Fallback/Ergänzung konfigurieren
- **Output**: Konfiguration + Vergleichs-Benchmark

#### Woche 11: Multi-Station Sync 2.0
- **Ziel**: Station-Sync-System erweitern und härten
- **Themen**: Automatische Conflict Resolution, Bidirektionaler Sync
- **Aufgabe**: Sync-System mit Prioritäten, Retry-Logic, Benachrichtigungen
- **Output**: Erweiterte sync-task Scripts + Monitoring

#### Woche 12: BTW-Funktion & Desktop-App Integration
- **Ziel**: "By The Way" spontane Aufgaben-Queue
- **Themen**: Schnelle Notiz-zu-Task Pipeline, Desktop-App Geplante Aufgaben
- **Aufgabe**: BTW-Skill der spontane Ideen als Tasks queued
- **Output**: `skills/btw/SKILL.md` + Queue-Integration

---

## Wie starten

Sage einfach:
- **"Masterclass"** — Zeigt aktuellen Stand und nächstes Thema
- **"Masterclass Woche X"** — Springt direkt zu Woche X
- **"Nächstes Thema"** — Startet die nächste offene Woche
- **"Masterclass Status"** — Übersicht aller Wochen mit Fortschritt
- **"Harness-Review"** / **"Lern-Loop"** — Meta-Lern-Loop ausführen (siehe `harness-review.md`)

## Regeln

- Jede Woche produziert **lauffähigen Code** — keine Theorie ohne Praxis
- Ergebnisse werden auf NAS gespeichert und via Git gesichert
- Fortschritt wird in FORTSCHRITT.md getrackt
- Themen können umpriorisiert werden nach Bedarf
- Neue Themen können jederzeit ergänzt werden
