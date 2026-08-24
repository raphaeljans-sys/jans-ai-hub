# JANS AI Hub - Claude Code Projekt

Wegweiser-Prinzip (Kontext-Diaet 19.07.2026): Diese Datei ist ein Verzeichnis, keine
Dokumentation. Langbeschreibungen stehen in den SKILL.md / agents/*.md / Wissens-KBs und
werden dort bei Bedarf geladen. Details: `docs/konzepte/260719-Kontext-Diaet-Token-Reduktion/`.

## Architektur-Kontext
- **Organisation**: Raphael Jans Architekten ETH (JANS)
- **AI Hub**: Privates GitHub-Repo (github.com/raphaeljans-sys/jans-ai-hub), Backup/Versionierung
- **Sprache**: Deutsch (Schweiz) bevorzugt, technische Begriffe Englisch OK

## Konzept

Das NAS ist die zentrale Skill-Bibliothek. Jede Workstation (MacBook Pro mobil, Mac Mini
Buero/Always-On, weitere MA) hat Claude Code lokal installiert und greift per SMB-Mount
auf die gemeinsamen Inhalte zu; GitHub dient nur als Backup. Claude Code SSH unterstuetzt
nur Linux-Hosts, deshalb NAS statt SSH-Zentrale: jede Station arbeitet lokal und parallel,
Skills sind zentral, keine Merge-Konflikte.

### Speicherort auf NAS
```
/Volumes/daten/jans-ai-hub/
  skills/ agents/ commands/ rules/ plugins/ templates/
  services/      ← Service-Katalog (KATALOG.md)
  wissen/        ← Wissens-Layer (KBs)
  references/    ← Fachstandards (z.B. BKP 2017)
```

### Symlinks auf jeder Station
`.claude/skills|agents|commands → /Volumes/daten/jans-ai-hub/...` — Aenderungen sind sofort
auf allen Stationen sichtbar. Neue Station: `bash ~/Developer/jans-ai-hub/scripts/setup-nas-skills.sh`.

## Setup-Fakten (Stationen · IPs · SSH-Wege · Mail-Konten · M365)

Kanonisch im Setup-Konnektor, **nicht hier**: `node connectors/hub-setup.mjs --alles`
(Fakten) bzw. `--check` (Live-Verbindungscheck). Datenquelle
`connectors/hub-setup-daten.json`, nur dort pflegen (Rule 260730). Der Konnektor ist
git-versioniert und liegt im SSD-Klon, also auch ohne gemountetes NAS greifbar.

Dort nachschlagen statt raten: LAN-/Tailscale-IPs aller Stationen, NAS-Mount-Befehle
Buero/extern, SSH-Dual-Pfade zwischen den Stationen, GitHub-SSH ueber Port 443,
M365-App-/Tenant-ID, Zertifikatspfad und Berechtigungen, Lastverteilung.

## E-Mail — was in jeder Session gilt

- **Standard-Absender geschaeftlich `rj@raphaeljans.ch`**; Versand ueber **Apple Mail**
  (osascript, Bundle-ID `com.apple.mail`). **Gmail wird NICHT verwendet.**
- Adressliste (Zweitkonto, M365-Gruppen kispi@/HLEBWEB@, privat, outlook.com-Zusatz):
  `node connectors/hub-setup.mjs --alles`.

## Datenquellen
- **NAS**: /Volumes/daten (Archiv, Buerodaten, Skill-Bibliothek)
- **Microsoft 365**: SharePoint + OneDrive + Outlook via M365-Connector (Certificate-Auth)
- **Google**: Calendar, Drive via Connectoren
- **Dropbox**: ~/Library/CloudStorage/Dropbox
- **Lokal**: ~/Developer/jans-ai-hub

## M365 Connector — Certificate-Auth

App-/Tenant-ID, Zertifikatspfad und Berechtigungen: `node connectors/hub-setup.mjs --alles`.
**Zertifikat gueltig bis 23.03.2028** (Erneuerung alle 2 Jahre, Anleitung
`docs/referenz/m365-zertifikat-erneuern.md`) — die Faelligkeit steht hier, weil sie ein
Termin ist, nicht ein Nachschlagewert.

## Multi-Station Regeln
- **Geteilt via Git+NAS**: `.mcp.json` (secret-frei, seit 29.07. versioniert), `.claude/settings.json`, CLAUDE.md, NAS-Inhalte — identisch auf beiden Stationen
- **User-Level je Station**: `~/.claude/CLAUDE.md` traegt die JANS-Grundregeln in JEDE Session, auch ausserhalb des Repos. Quelle `templates/user-level/CLAUDE.md`, verteilen via `bash scripts/user-claude-sync.sh --alle`
- **Lokal je Station (NICHT in Git)**: `settings.local.json`, `.env`, Claude-Desktop-Config, Cloudflare-Connectoren (Google/Figma/Chrome, pro Station im Browser eingerichtet)
- Apple Mail auf beiden Stationen (gleicher iCloud-Account)
- Nach Aenderung geteilter Configs: `/sync`

### Station-Sync (Task-Queue auf NAS)
`/Volumes/daten/jans-ai-hub/sync-tasks/{macbook-pro,mac-mini,freigabe,done}/` — Task erstellen
via `scripts/sync-task-create.sh <ziel> <titel> <script>`; pruefen via `/station-sync`.
**WICHTIG**: Beim Start mit gemountetem NAS IMMER zuerst `/station-sync` pruefen.
**Freigabe-Schwelle (30.07.2026):** `scripts/sync-task-guard.sh` haelt heikle Tasks
(SSH-Zugang, Rechte, Secrets, Persistenz, Zerstoerendes, Versand, Buchen) in
`sync-tasks/freigabe/<station>/` zurueck — auch im unbeaufsichtigten launchd-Runner. Sie
laufen nur nach Raphaels Einzelfreigabe (`sync-task-check.sh --freigeben <datei>`); Claude
gibt nie selbst frei. Details: `sync-tasks/README.md`, Beleg: `rules/betrieb-chronik.md` 260730.

### Remote-Orchestrierung (Protokoll: `remote-tasks/README.md`)

| Von wo | Weg | Latenz |
|---|---|---|
| claude.ai/code (Cloud, kein LAN) | Script nach `remote-tasks/pending/<station>/*.sh`, commit+push; Ergebnis via `remote-tasks/results/` | ~5–10 Min |
| Claude Code auf MacBook Pro | direkt `ssh mini "<befehl>"` (Schluessel-Login, SSH+tmux) | sofort |
| Handy (Dispatch/Cowork) | `scripts/dispatch-run.sh "<Auftrag>"` auf dem Mac Mini | sofort |

- Task-Helfer: `bash scripts/remote-task-create.sh <mini|macbook> <name> [--push]`; Standard-Ziel Mac Mini
- Interaktiv: Befehl `mini` auf dem MacBook; nach Mini-Neustart einmal `security unlock-keychain`

## Output-Ablage

Export-Dokumente (PDFs, Reports, Agent-Outputs) nach SharePoint:
`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/`
(Unterordner pro Agent/Thema). Projektgebundenes gehoert in den Projektordner (Rule projekt-ablage-stand).

## Skills

Pfad je Skill: `skills/<name>/SKILL.md` auf dem NAS. Die massgebliche Beschreibung (Trigger,
Inputs, Ablage) steht dort und laedt beim Aufruf; hier nur der Zweck-Einzeiler.

| Skill | Zweck |
|---|---|
| `spec` | Spec-Methode: wahres Ziel als Spec aufdecken, dann agil bauen (Gate via Rule `spec-methode`) |
| `baurecht` | Schweizer Baurecht ZH+SZ; Buch-Destillate zuerst (Rule 260629) |
| `normen` | Baunormen-Router SIA/VKF/DIN/VSS/RAL mit Fundstellen-Pflicht (Rule `normen-referenz`) |
| `brandschutz` | VKF-Ertuechtigung, EI/RF-Klassen, Fluchtwege; Modus B fuer Wettbewerb/Vorprojekt |
| `kostenschaetzung` | Healthcare-Kostenkennwerte, Grobschaetzungen |
| `honorarberechnung-sia102` | Architektenhonorar nach SIA 102 + Honorarofferte (Pauschal/Text) |
| `energie` | Energie-Router ueber KB `wissen/energie`: belegte Bauherren-Antworten (Huelle, Waerme, PV/Eigenverbrauch, Foerderung, Energierecht ZH/SZ) |
| `grobkosten-onepager` | A4-Grobkosten Volumen x Kennwert BKP 1–5 (KB `wissen/grobkosten`) |
| `machbarkeit-studio` | Orchestrator: interaktives Live-Studio (HTML) + Dossier aus einem Lauf |
| `website-content` | WordPress-Upload raphaeljans.ch |
| `offertenpruefung` | Eingehende Offerten pruefen (Factsheet, Risiken, Reduktion) |
| `ausschreibung` | Devis/LV erstellen, Versand, Auswertung (3 Phasen) |
| `unternehmerfindung` | Gerankte Submittenten-Shortlist je Gewerk/BKP + Bauort (vor `ausschreibung`) |
| `werkvertrag` | Werkvertrag SIA 118, 3 Verguetungsmodelle (Phase G) |
| `unternehmerkontrolle` | Ausmass/Akonto/Nachtrag/Regie/Abnahme/Garantie (Phase H) |
| `kostenkontrolle` | BKP-Baubuchhaltung, Kostenrapporte, Schlussabrechnung (Phase I) |
| `mahnwesen` | Debitoren-Verzug (bexio, `kb_reminder`); Mahnstufen nur interaktiv |
| `logbuch` | Journal + zentrales Fristen-/Pendenzen-Register (NAS `logbuch/`), Radar |
| `zahlungsabgleich` | bexio-Zahlstatus gegen echte UBS-Eingaenge, read-only, bucht NIE |
| `terminplanung` | Bauprogramme, Ausfuehrungsterminplaene |
| `versandplanung` | PARKIERT (Entscheid 11.07.2026, nicht proaktiv vorschlagen) |
| `pendenzenliste` | Pendenzenlisten je Fachplanung, aus Mails/Protokollen destillierbar |
| `protokoll` | Sitzungsprotokolle (Schwester von `pendenzenliste`) |
| `marketing` | LinkedIn-Harness, orchestriert die drei linkedin-Agenten |
| `korrektur` | QS-Pflicht vor JEDER Ausgabe: `rechtschreibung` + `layout` parallel |
| `wissenscheck` | KB-Audit in 7 Pruefungen (Phase 1 unbeaufsichtigt, Phase 2 interaktiv) |
| `wissens-destillat` | NAS-Archiv nach Spec-Methode ins Wiki destillieren; Modell je Phase (bash/Haiku/Sonnet/Opus) |
| `machbarkeit` | Machbarkeits-/Potenzialstudien Typ A (Volumen/Baurecht) + B (Wirtschaftlichkeit) |
| `stockwerkeigentum` | STWEG: Wertquoten, Begruendung, Reglement (ZGB 712a ff.) |
| `ankaufspruefung` | TDD vor Liegenschaftskauf, CapEx-Fahrplan nach BKP |
| `studien-generator` | Dossier-Engine: Ordnerstruktur + Berichtsskelett je Studie |
| `wettbewerb` | Abgabe-Deliverables + Konformitaets-Schleife gegen das Programm |
| `nutzungsstrategie` | Nutzungsszenarien im Kriterienraster, Bestandesschutz §357 |
| `healthcare-wirtschaftlichkeit` | Pflegeplatz-Rendite via Annuitaet (Goldstandard 2410 WALD) |
| `behoerden-vorabklaerung` | Gezielte Behoerdenfragen je Parzelle, beweissichere Antwortstruktur |
| `immobilienbewertung` | Verkehrswert ueber 3 Verfahren + Residual-Landwert |
| `auflagebereinigung` | Bauentscheid-Auflagen zu Plan-/Dokumentenliste (Planer/Amt/Frist) |
| `planungsgrundlagen` | Geodaten-Beschaffung OEREB/EGRID/Kataster/DTM (Connector `geo-zh.mjs`) |
| `oereb-schwyz` | OEREB-Auszug Kt. SZ via `geo-sz.mjs`, Parzellensuche bevorzugt |
| `massgebendes-terrain` | MT an Hanglagen: Baumasse ueber MT-Flaeche, Fassadenhoehe je Ecke |
| `volumenstudie` | 3D-Volumen: Rhino-3dm, C4D-Renderings, Kennzahlen (venv `~/.venvs/volumen3d`) |
| `pdf2dwg` | Vektor-PDF zu leichtem DWG/DXF fuer ArchiCAD (venv `~/.venvs/pdf2dwg`, LibreDWG) |
| `hub-chef` | Dach-Orchestrator: Tagesbriefing, Whitelist-Aktionen (`logbuch/AKTIONS-WHITELIST.md`) |
| `heartbeat` | System-Health-Check (NAS, Git, M365, Disk, Sync-Tasks, Symlinks) |
| `tenant-hygiene` | M365-Speicher-Hygiene: Papierkoerbe/Versionen/tote Sites (Phase 2 nur interaktiv) |
| `masterclass` | Reaktiver Harness-Review: Korrektur-Cluster zu Rules befoerdern |
| `telesales` | Kaltakquise: Gespraechsleitfaeden, Lead-Qualifizierung (Gegenstueck zu `marketing`) |
| `synergie-orchestrator` | Struktur-Aufsicht: Synergie-Register, Geschaeftsmodell-Entwuerfe (monatlich) |
| `workstation-setup` | Stations-Onboarding inkl. Pflichtschritt FDA fuer /bin/bash |

Nicht in der Tabelle: `email-preferences` (Konfigurationsreferenz, keine Faehigkeit;
Rollen-Register `parkiert`).

### Skill-Referenzen (Konvention)
Jeder Skill kann `referenzen/` mit hochprioritaeren PDFs haben (README.md als Inhaltsverzeichnis,
Dateien `JJJJMMTT-Titel.pdf`). Beispiele: baurecht (Blaues Buch), kostenschaetzung (Wuest),
offertenpruefung/ausschreibung (KBOB, SIA 118/1024, Goldstandard-Offerten).

### Skill-uebergreifende Referenzen
`references/bkp-2017/BKP-2017-Liste.md` + PDF — verbindlich fuer alle BKP-Codes
(Rule `bkp-2017-referenz.md`).

## Agents (Sub-Agents)

Pfad je Agent: `agents/<name>.md` auf dem NAS (Beschreibung dort massgeblich).

| Agent | Zweck |
|---|---|
| `recherche` | Systematische Recherche ueber alle Quellen |
| `dokument` | Professionelle Dokumente (Word/PDF) |
| `email` | E-Mails im JANS-Stil |
| `unternehmer-scout` | Je eine Quelle nach Unternehmern durchsuchen (fuer `unternehmerfindung`) |
| `baulinien-analyst` | Baufeld aus Zone/Baulinien/Abstaenden (fuer `machbarkeit`) |
| `dienstbarkeiten-pruefer` | Grundbuch-Servitute und ihre Wirkung aufs Baufeld |
| `volumen-rechner` | Bauvolumen aGF/BGF/m3 + Delta, bindende Restriktion |
| `wirtschaftlichkeit-rechner` | Residualwert/Marge/ROI + Sensitivitaet (Typ B) |
| `nutzungsszenario-pruefer` | Ein Szenario gegen den Kriterienraster (fuer `nutzungsstrategie`) |
| `wertquoten-rechner` | STWEG-Wertquoten, normiert 1000/1000 |
| `stweg-begruender` | Begruendungsurkunde + Reglement (Notar-Vorbehalt) |
| `realwert-rechner` | Realwert/Sachwert (fuer `immobilienbewertung`) |
| `ertragswert-rechner` | Ertragswert/DCF + Residual-Landwert |
| `vergleichswert-analyst` | Vergleichswert/hedonisch, UBS-FS-Quantile |
| `auflagen-extraktor` | Auflagen eines Bauentscheids beweissicher erfassen (Schritt 1) |
| `planer-zuteiler` | Auflagen dem Gewerk/Planer + Deliverables zuordnen (Schritt 2) |
| `amts-fristen-zuordner` | Amt + Frist je Deliverable (Schritt 3) |
| `auflagen-tracker` | Status/Fristen nachfuehren, Vorabzug↔definitiv diffen (Schritt 4) |
| `geodaten-beschaffer` | EGRID/OEREB/amtliche Produkte beschaffen (PL-01) |
| `energie-berater` | PV/U-Wert/Energienachweis, Kennwerte belegt (PL-04) |
| `grobkosten-rechner` | Volumen x belegter Kennwert zu BKP 1–5 |
| `programm-leser` | Wettbewerbsprogramm-Soll destillieren |
| `flaechen-nachweis` | SIA-416-Flaechen + Soll/Ist-Ampel |
| `programm-pruefer` | Konformitaets-Schleife gegen das Programm (ehrlich) |
| `bericht-autor` | Erlaeuterungsbericht entlang Jury-Kriterien |
| `schema-zeichner` | Konzept-Schemas als SVG |
| `plakat-setzer` | Masshaltiges Plakat-Raster (SVG) |
| `website-content` | WordPress Projekt-Upload |
| `linkedin-stratege` / `linkedin-texter` / `linkedin-engagement` | Marketing-Harness: Plan / Post / Interaktion |
| `rechtschreibung` / `layout` | Korrektur-Harness: Orthografie / Layout, parallel (Skill `korrektur`) |

## Werkzeuge / Connectoren

**Der vollstaendige Werkzeug-Index steht in `connectors/README.md`** (16 Connectoren, je mit
Zweck, Einstiegs-Flags und Zugangsweg) — dort nachschlagen, bevor eine externe Quelle von
Hand abgefragt oder ein Weg improvisiert wird. **Konvention:** einen Connector zuerst per
`node <pfad> --hilfe` selbst befragen. Fehlt die Allowlist-Freigabe, in
`.claude/settings.json` ergaenzen (Rule 260609). Neue Connectoren werden im Index eingetragen.

**Bevor eine Aufgabe als unmoeglich gilt: `connectors/WEGE.md`** — das Wege-Register nennt je
Faehigkeit mehrere Wege in Rangfolge (voller Pfad, Testbefehl) und die belegten Sackgassen.
Angelegt 09.08.2026, weil der KISPI-Gastzugriff an einem vorhandenen, aber nicht gefundenen
Weg scheiterte (die M365-CLI liegt nicht im `PATH`). Werkzeuge pruefen und reparieren:
`bash scripts/wege-doctor.sh`. Regel dazu: `wege-und-vollmachten.md`.

## Custom Commands (Slash-Commands)
| Command | Beschreibung |
|---|---|
| `/status` | Systemcheck (Hardware, Netzwerk, Dienste) |
| `/sync` | Git-Sync mit GitHub |
| `/nas` | NAS-Mount pruefen/reparieren |
| `/m365` | M365-Connector testen |
| `/morgen` | Morgen-Briefing |
| `/station-sync` | Sync-Tasks der anderen Station ausfuehren |
| `/station-status` | Live-Zustand der anderen Station |
| `/website` | Website-Content hochladen/pruefen |
| `/korrektur` | Korrektur-Harness auf ein Erzeugnis |
| `/rollen` | Rollen-Haushalt: Bilanz, Nutzungs-Radar, Schutzmechanik-Selbsttest |
| `/tiefenrecherche` | Vertiefte Recherche: parallele recherche-Agenten je Suchwinkel, belegter Bericht |

## Baurecht-Wissensbasis (Schnellreferenz)
`docs/baurecht/`: begriffe.md, pbg_zh.md, bzo_zh.md, verfahren.md, praxisfaelle.md.
Massgeblich fuer Baurechtsfragen ist die KB `wissen/baurecht/` (Buch-Destillate, Rule 260629).

## Wissens-Layer (`wissen/`)

Dritte Hub-Schicht neben Skills (Faehigkeiten) und Rules (Verhalten): kompoundierende
Wissensbasis, Claude als KI-Bibliothekar (Rule `wissens-bibliothekar.md`). Meta-Schema:
`wissen/WISSEN-CLAUDE.md` (zuerst lesen). Struktur je KB: `raw/` (Quell-Dump, nie editieren),
`wiki/` (kompilierte Artikel + INDEX + QUESTIONS, Claudes Domaene), `outputs/` (Reports,
fliessen zurueck ins Wiki), CLAUDE.md/CHANGELOG.md.

Aktuelle KBs (Details in der jeweiligen `<kb>/CLAUDE.md`): `baurecht` (Pilot + Buch-Destillate),
`projekt-lessons`, `firmengruendung-ch`, `kunde-bopp` (Prototyp pro-Kunde-KB), `immobilienbewertung`,
`auflagebereinigung`, `planungsgrundlagen`, `energie` (Destillate + BAUHERREN-FAQ), `grobkosten`
(Kennwerte-Lernmodell), `spec` (Methodik), `architekten-synobsis` (Katalog/Suche, 853 Architekten),
`entwurfs-referenzen` (JSON-Parameter-Sets), `wettbewerbs-dna`, `twin`, `normen`, `koordination`,
`architektur-fachwissen` (neu 23.08.2026, Ziel-KB der Korpora `buero-referenzen` +
`archiv-fachwissen`; bisher nur Inventar, noch kein Destillat — Sperren fuer Vertraege,
Bewerbungen und Adressdaten siehe deren CLAUDE.md und Rule `auto-verbesserungen` 260823),
`bauprodukte` (neu 28.07.2026, wird aus `/Volumes/daten/03 Bauprodukte_BKP` destilliert — Skill
`wissens-destillat`, Reihenfolge in dessen `KORPUS-QUEUE.md`), `claude-code` (Wissen ueber das
Werkzeug selbst: Faehigkeiten, Kontextmechanik, Release-Funde; nachgetragen 24.08.2026).

Lern-Loops: als Scheduled Tasks im Nachtfenster (Takt-Zustand siehe Rule auto-verbesserungen
260714); Programme unter `wissen/<kb>/training/PROGRAMM.md`. Monatlicher Health-Check:
Task `wissenscheck-monatlich`.

## Rollen-Haushalt (`logbuch/rollen/`)

Jeder Baustein (Skill, Agent, Loop) traegt eine der fuenf Rollen prototyper ·
builder · sweeper · grower · maintainer im Register `logbuch/rollen/rollen-map.tsv`
(kanonisch, von Hand gepflegt). Messung via `/rollen` bzw. `scripts/rollen-bilanz.sh`,
`scripts/nutzungs-radar.sh`, `scripts/schutzmechanik-selbsttest.sh` — alle drei nur auf
Zuruf, keine Automatik (Befund methoden-radar 13.08.2026; der Selbsttest hing nie im
heartbeat). Regeln: Rule `rollen-taxonomie`. Konzept + Zielbaender:
`docs/konzepte/260729-Rollen-Taxonomie/`.

## Wichtige Regeln
- Jede Station arbeitet lokal; Skills via NAS-Symlink; NAS muss gemountet sein
- Repo auf SSD (`~/Developer/jans-ai-hub`), NIEMALS ueber SMB-Mount bearbeiten; geteilte Inhalte NUR auf dem NAS editieren (Rule `sync-kanonische-quelle`)
- Passwoerter/Credentials NIEMALS committen (`.env`, Keychain); GitHub nur Backup

## Geteilte Verhaltensregeln (Rules)

Rules liegen auf dem NAS unter `/Volumes/daten/jans-ai-hub/rules/` und werden per `@`-Import
eingebunden (sofort auf allen Stationen aktiv). Architektur/neue Regeln: `rules/README.md`.
Historie der Auto-Verbesserungen: `rules/auto-verbesserungen-archiv.md` (nicht importiert).

@/Volumes/daten/jans-ai-hub/rules/jans-dna.md
@/Volumes/daten/jans-ai-hub/rules/anrede-kontakte.md
@/Volumes/daten/jans-ai-hub/rules/antwort-formatierung.md
@/Volumes/daten/jans-ai-hub/rules/auftrags-dekomposition.md
@/Volumes/daten/jans-ai-hub/rules/auto-verbesserungen.md
@/Volumes/daten/jans-ai-hub/rules/bkp-2017-referenz.md
@/Volumes/daten/jans-ai-hub/rules/dateinamen-konvention.md
@/Volumes/daten/jans-ai-hub/rules/dokument-layout-standard.md
@/Volumes/daten/jans-ai-hub/rules/git-auto-push.md
@/Volumes/daten/jans-ai-hub/rules/identifikatoren-verifizieren.md
@/Volumes/daten/jans-ai-hub/rules/interaktive-eingriffe.md
@/Volumes/daten/jans-ai-hub/rules/jans-absenderadresse.md
@/Volumes/daten/jans-ai-hub/rules/mail-formatierung.md
@/Volumes/daten/jans-ai-hub/rules/modellwahl-routine.md
@/Volumes/daten/jans-ai-hub/rules/normen-referenz.md
@/Volumes/daten/jans-ai-hub/rules/osascript-apple-apps.md
@/Volumes/daten/jans-ai-hub/rules/projekt-ablage-stand.md
@/Volumes/daten/jans-ai-hub/rules/rollen-taxonomie.md
@/Volumes/daten/jans-ai-hub/rules/spec-methode.md
@/Volumes/daten/jans-ai-hub/rules/sync-kanonische-quelle.md
@/Volumes/daten/jans-ai-hub/rules/umlaute-konvention.md
@/Volumes/daten/jans-ai-hub/rules/wissens-bibliothekar.md
@/Volumes/daten/jans-ai-hub/rules/wege-und-vollmachten.md
@/Volumes/daten/jans-ai-hub/rules/wissens-ruecklauf.md
