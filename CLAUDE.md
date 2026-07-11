# JANS AI Hub - Claude Code Projekt

## Architektur-Kontext
- **Organisation**: Raphael Jans Architekten ETH (JANS)
- **AI Hub**: Privates GitHub-Repo (github.com/raphaeljans-sys/jans-ai-hub) — Backup/Versionierung
- **Sprache**: Deutsch (Schweiz) bevorzugt, technische Begriffe Englisch OK

## Konzept

Der JANS AI Hub nutzt das **NAS als zentrale Skill-Bibliothek**.
Jede Workstation hat Claude Code lokal installiert und greift ueber SMB-Mount auf die gemeinsamen Skills zu.

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│  MacBook Pro │     │  Mac Mini   │     │ Weitere MA  │
│  (mobil)     │     │  (Buero)    │     │ (extern)    │
│              │     │             │     │             │
│ Claude Code  │     │ Claude Code │     │ Claude Code │
│   (lokal)    │     │   (lokal)   │     │   (lokal)   │
│              │     │             │     │             │
│ .claude/ ────┼─SMB─┼─────┐      │     │             │
└──────────────┘     └─────┼──────┘     └──────┬──────┘
                           │ SMB               │ SMB
                    ┌──────▼──────┐            │ (Tailscale)
                    │ NAS DS918+  │◄───────────┘
                    │ /daten/     │
                    │ jans-ai-hub/│  ← Gemeinsame Bibliothek
                    │  skills/    │
                    │  agents/    │
                    │  commands/  │
                    │  plugins/   │
                    └──────┬──────┘
                           │
                    ┌──────▼──────┐
                    │   GitHub    │  ← Backup
                    └─────────────┘
```

## Warum NAS statt Git-Sync oder SSH?

| Kriterium | Git-Sync | SSH (Mac Mini) | NAS (aktuell) |
|---|---|---|---|
| Merge-Konflikte | Ja | Keine | Keine |
| Skills-Bibliothek | Pro Station | Zentral | Zentral |
| Offline-Arbeit | Moeglich | Nur mit Netz | Nur mit NAS |
| Claude Code SSH | - | Nur Linux! | Nicht noetig |
| Parallele Arbeit | Konflikte | Nicht moeglich | Funktioniert |

Claude Code SSH unterstuetzt nur Linux-Hosts — macOS (Darwin) wird nicht unterstuetzt.
Das NAS ist die stabile Loesung: Jede Station arbeitet lokal, teilt aber Skills ueber SMB.

## Gemeinsame Skill-Bibliothek (NAS)

### Speicherort auf NAS
```
/Volumes/daten/jans-ai-hub/
  skills/        ← Shared Skills (z.B. baurecht/)
  agents/        ← Shared Agents (recherche, dokument, email)
  commands/      ← Shared Slash-Commands (/status, /morgen, etc.)
  rules/         ← Shared Verhaltensregeln (immer aktiv via @-Import)
  plugins/       ← Shared Plugins
  templates/     ← Dokument-Vorlagen
  services/      ← Service-Katalog: produktisierte Dienstleistungen (KATALOG.md)
```

### Symlinks auf jeder Station
```
.claude/skills/   → /Volumes/daten/jans-ai-hub/skills/
.claude/agents/   → /Volumes/daten/jans-ai-hub/agents/
.claude/commands/  → /Volumes/daten/jans-ai-hub/commands/
```

Aenderungen an Skills sind sofort auf allen Stationen sichtbar.

### Neue Station einrichten
```bash
bash ~/Developer/jans-ai-hub/scripts/setup-nas-skills.sh
```

## Netzwerk

| Geraet | LAN IP | Tailscale IP | Funktion |
|---|---|---|---|
| Mac Mini | 192.168.1.210 | 100.120.219.12 | Arbeitsstation (Always-On) |
| MacBook Pro | DHCP | 100.117.99.62 | Mobile Arbeitsstation |
| NAS DS918+ | 192.168.1.10 | 100.92.246.28 | Datei-Server + Skill-Bibliothek |
| OPNsense | 192.168.1.1 | — | Firewall/Router |
| Drucker | Im LAN | — | Konica Minolta bizhub c300i |

- **VPN**: Tailscale fuer externen Zugriff auf NAS und Buero-LAN
- **GitHub SSH**: Port 443 via ssh.github.com (Port 22 durch Firewall blockiert)
- **NAS-Mount**:
  - Im Buero: `open smb://192.168.1.10/daten`
  - Extern: `open smb://diskstation918.tail8265aa.ts.net/daten`

## E-Mail-Konten

Raphael Jans nutzt folgende E-Mail-Konten (NICHT Gmail):

| Konto | Adresse | Typ | Verwendung |
|---|---|---|---|
| Geschaeft (Haupt) | rj@raphaeljans.ch | Microsoft 365 | Geschaeftliche Korrespondenz |
| Geschaeft 2 | mail@raphaeljans.ch | Microsoft 365 | Geschaeftliche Korrespondenz |
| Gruppe KISPI | kispi@raphaeljans.ch | M365 Group | Fachplaner Kinderspital (alle Mitglieder erhalten Mails) |
| Gruppe HLEB | HLEBWEB@raphaeljans.ch | M365 Group | Website-Projekt |
| Privat | raphaeljans@me.com | Apple/iCloud | Private Korrespondenz |

- **Gmail wird NICHT verwendet** — der Gmail-Connector ist nur technisch vorhanden
- E-Mails werden ueber **Apple Mail** (via osascript) versendet
- Standard-Absender fuer geschaeftliche Mails: `rj@raphaeljans.ch`

## Datenquellen
- **NAS**: /Volumes/daten (Architektur-Archiv, Buerodaten, Skill-Bibliothek)
- **Microsoft 365**: SharePoint + OneDrive + Outlook via M365-Connector (Certificate-Auth)
- **Google**: Calendar, Drive via Google-Connectoren (Gmail wird NICHT als Haupt-Mail genutzt)
- **Dropbox**: ~/Library/CloudStorage/Dropbox
- **Lokal**: ~/Developer/jans-ai-hub (Projekt-Repo)

## M365 Connector — Certificate-Auth

Die M365-Anbindung nutzt **Certificate-based Authentication** (noetig fuer SharePoint SPO-Befehle).

| Einstellung | Wert |
|---|---|
| App Registration | SharePoint MCP Connector (JANS) |
| App ID | `80c24101-4597-48db-8388-c6e8bdc75f5f` |
| Tenant ID | `d3ea8e1a-8ecc-479d-b831-6c0784ee0b51` |
| Auth-Typ | Certificate (PEM) |
| Zertifikat-Pfad | `~/.cli-m365-cert-combined.pem` (lokal pro Station) |
| Zertifikat gueltig bis | 23. Maerz 2028 |

### API-Berechtigungen (Application)
- Microsoft Graph: Files.Read.All, Group.Create, Group.Read.All, Group.ReadWrite.All, Mail.Read, Mail.Send, Sites.Read.All, User.Read.All
- SharePoint: Sites.FullControl.All

### M365 Gruppen (Teams/Gruppenpostfaecher)

| Gruppe | Mail | Typ | Beschreibung |
|---|---|---|---|
| JANS - 2619-KISPI | kispi@raphaeljans.ch | M365 Group (Unified) | Fachplaner KISPI (Kinderspital) |
| HLEB WEB | HLEBWEB@raphaeljans.ch | M365 Group (Unified) | Website-Projekt |

- Gruppen-Mails erreichen **alle Mitglieder** der Gruppe
- Verwaltung ueber Outlook Web (outlook.office.com) unter "Gruppen"
- Jede Gruppe hat automatisch eine SharePoint-Dokumentbibliothek
- Outlook for Mac (neue Version) zeigt Gruppen NICHT als separaten Sidebar-Bereich

### Zertifikat erneuern (alle 2 Jahre)
```bash
openssl req -x509 -newkey rsa:2048 -keyout ~/.cli-m365-cert-key.pem -out ~/.cli-m365-cert.pem -days 730 -nodes -subj '/CN=JANS-AI-Hub-M365'
cat ~/.cli-m365-cert-key.pem ~/.cli-m365-cert.pem > ~/.cli-m365-cert-combined.pem
chmod 600 ~/.cli-m365-cert-combined.pem ~/.cli-m365-cert-key.pem
# Public-Cert in Azure Portal hochladen (App Registration > Certificates)
# Auf Mac Mini kopieren: scp ~/.cli-m365-cert-combined.pem raphaeljans@100.120.219.12:~/.cli-m365-cert-combined.pem
```

## Multi-Station Connector-Architektur

Jede Station hat unterschiedliche Connectoren. Die Unterscheidung erfolgt ueber
lokale vs. geteilte Konfigurationen:

```
┌──────────────────────────────────────────────────────────────────┐
│                    GETEILTE LAYER (via Git + NAS)                │
│                                                                  │
│  .mcp.json              → M365-Connector (beide Stationen)       │
│  .claude/settings.json  → Gemeinsame Permissions                 │
│  NAS: skills/agents/    → Gemeinsame Skills & Agents             │
│  CLAUDE.md              → Projekt-Dokumentation                  │
└──────────────────────────────────────────────────────────────────┘

┌──────────────────────┐     ┌──────────────────────┐
│   MacBook Pro        │     │   Mac Mini            │
│   (mobil)            │     │   (Buero, Always-On)  │
│                      │     │                       │
│ LOKAL (nicht in Git):│     │ LOKAL (nicht in Git): │
│ • settings.local.json│     │ • settings.local.json │
│ • .env (Credentials) │     │ • .env (Credentials)  │
│ • Claude Desktop     │     │ • Claude Desktop      │
│   Config (Cowork)    │     │   Config (Cowork)     │
│                      │     │                       │
│ CONNECTOREN:         │     │ CONNECTOREN:          │
│ • M365 (via .mcp)    │     │ • M365 (via .mcp)     │
│ • Google (Cloudflare)│     │ • Google (Cloudflare)  │
│ • Figma (Cloudflare) │     │ • Figma (Cloudflare)   │
│ • Chrome (Cloudflare)│     │ • Chrome (Cloudflare)  │
│ • Apple Mail (lokal) │     │ • Apple Mail (lokal)   │
└──────────────────────┘     └──────────────────────┘
```

### Regeln fuer Multi-Station
- **Geteilte Config** (`.mcp.json`, `settings.json`, `CLAUDE.md`): Wird via Git synchronisiert, identisch auf beiden Stationen
- **Lokale Config** (`settings.local.json`, `.env`): Stations-spezifisch, NICHT in Git
- **Cloudflare-Connectoren** (Google, Figma, Chrome): Werden pro Station ueber den Browser/Account eingerichtet, nicht ueber Git
- **Claude Desktop Config**: Lokal pro Station (`~/Library/Application Support/Claude/`), nicht synchronisiert
- **Apple Mail**: Lokal verfuegbar auf beiden Stationen (gleicher iCloud-Account)
- Bei Aenderungen an geteilten Configs: `/sync` ausfuehren, damit beide Stationen aktuell sind

### Station-Sync (automatische Task-Queue)

Wenn auf einer Station eine Aenderung gemacht wird, die die andere Station betrifft,
wird ein Sync-Task auf dem NAS hinterlegt. Beim Start auf der anderen Station wird
dieser automatisch erkannt und ausgefuehrt.

```
/Volumes/daten/jans-ai-hub/sync-tasks/
  macbook-pro/   ← Tasks fuer MacBook Pro
  mac-mini/      ← Tasks fuer Mac Mini
  done/          ← Erledigte Tasks (Archiv)
```

- **Task erstellen**: `bash /Volumes/daten/jans-ai-hub/scripts/sync-task-create.sh <ziel> <titel> <script>`
- **Tasks pruefen**: `/station-sync` oder `bash /Volumes/daten/jans-ai-hub/scripts/sync-task-check.sh`
- **WICHTIG**: Wenn Claude auf einer Station gestartet wird und das NAS gemountet ist,
  IMMER zuerst `/station-sync` pruefen ob offene Tasks von der anderen Station vorliegen.

## Output-Ablage

Alle Export-Dokumente (PDFs, Reports, Agent-Outputs) werden auf SharePoint abgelegt:

```
~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/
  AD - 01 Geschaeftsfuerung/
    JANS AI/
      30 JANS AI HUB OUTPUT/
```

- Wird ueber OneDrive automatisch synchronisiert
- Unterordner pro Agent/Thema nach Bedarf erstellen

## Skills, Agents & Commands

### Skills
| Skill | Pfad (auf NAS) | Beschreibung |
|---|---|---|
| `spec` | `skills/spec/SKILL.md` | **Spec-Methode** (Karpathy/Marchese, "The Spec / 3 Easy Steps"): gleist ein groesseres Vorhaben auf — erst das WAHRE ZIEL als Spec aufdecken (Interview + Schluesselentscheide bestaetigen), dann agil in engen Scopes mit Checkpoints, mit vorab definierten Bewertungskriterien und einem Verifier (zweite Pruefinstanz/externes Signal). PROMPTS → SPECS. Querschnitt-Skill; wird via Rule `spec-methode` bei jeder groesseren/mehrdeutigen Anfrage automatisch geprueft. Faktenbasis KB `wissen/spec`; Lern-Loop `spec-training`; strategische Vorstufe zu Rule `auftrags-dekomposition`, Verifier nutzt `korrektur`/`twin`/`/code-review` |
| `baurecht` | `skills/baurecht/SKILL.md` | Schweizer Baurechts-Berater, Fokus Kt. ZH + SZ |
| `kostenschaetzung` | `skills/kostenschaetzung/SKILL.md` | Healthcare-Kostenkennwerte, Grobschaetzungen |
| `grobkosten-onepager` | `skills/grobkosten-onepager/SKILL.md` | **Grobkosten-Onepager**: eine A4-Seite, **Volumen × Kennwert (BKP 1–5)**, praesentierwuerdig mit grossen Kosten-Kennzahlen je Variante. Schlankes Gegenstueck zu `kostenschaetzung` (dort detailliert m2-NF). Generator `tools/build_grobkosten_onepager.py`; nutzt Lernmodell `wissen/grobkosten/` (Kennwerte-DB, kompoundierend) + Agent `grobkosten-rechner`; vorgelagert `machbarkeit`/Variantenstudie |
| `machbarkeit-studio` | `skills/machbarkeit-studio/SKILL.md` | **Machbarkeits-Studio** (Orchestrator/Dach-Harness): verschmilzt eine komplette Machbarkeits-/Potenzialstudie zu einem **interaktiven Live-Studio** (selbst-tragendes HTML, Bauherr bewegt Regler — Kennwert/Verkaufspreis/Mietzins/Marge/Diskont, Verkauf↔Rendite — und Volumen, Erstellung BKP 1-5, **Residualwert/zahlbarer Landwert**, Marge, Sensitivitaet rechnen fuer ALLE Varianten in Echtzeit um) PLUS ablagefertigem **Dossier** (DOCX/PDF) aus EINEM Lauf. Kern-Differenzierer: das Verkaufsgespraech wird vom statischen PDF zum gemeinsamen Live-Durchrechnen. Rechen-Kern `tools/studio_calc.py` (Quelle der Wahrheit; JS-Engine + Dossier spiegeln ihn → deckungsgleich); Generatoren `tools/build_studio.py` / `tools/build_dossier.py`. Orchestriert `machbarkeit` (Volumen/Baurecht) + `volumenstudie` (3D-Render) + `grobkosten-onepager` (Kennwerte) + `planungsgrundlagen` (EGRID/OEREB) + `immobilienbewertung` (Wertkontrolle); JANS-Look DM Sans+Fragment Mono monochrom + Oxidrot. Aufwertung von `machbarkeit` (dort Memo, hier interaktives Studio) |
| `website-content` | `skills/website-content/SKILL.md` | WordPress Content-Upload fuer raphaeljans.ch |
| `offertenpruefung` | `skills/offertenpruefung/SKILL.md` | Strukturierte Pruefung von Offerten/Angeboten (Factsheet, Risiken, Reduktionsstrategie) |
| `ausschreibung` | `skills/ausschreibung/SKILL.md` | Submissions-/Devis-Erstellung fuer Spezialplaner und Unternehmer (Gegenstueck zu offertenpruefung); 3-Phasen-Workflow LV-Erstellung / Versand / Auswertung |
| `unternehmerfindung` | `skills/unternehmerfindung/SKILL.md` | Findet zu LV/Gewerk (BKP) + Bauort + Bauaufgabe die bestgeeigneten Unternehmer und gibt eine gerankte Shortlist aus; Stufe VOR `ausschreibung`. Nutzt Stammdaten-DB (`ausschreibung/anbieter/stammdaten/`), macOS-Kontakte, Projekt-Archiv, regionale Web-Suche; Fan-out via Agent `unternehmer-scout` |
| `werkvertrag` | `skills/werkvertrag/SKILL.md` | Bauleitungs-Back-End **Phase G**: Werkvertrag nach SIA 118 in 3 Verguetungsmodellen (Einheitspreis/Pauschal/Kostendach) inkl. 22 Allgemeine Bedingungen; Stufe NACH Vergabe, VOR `unternehmerkontrolle` |
| `unternehmerkontrolle` | `skills/unternehmerkontrolle/SKILL.md` | Bauleitungs-Back-End **Phase H** (Realisierung): Ausmass, Akonto, Nachtrag, Regie, Abnahme, Maengel, Garantie; Vorlagen Abnahme-/Maengelprotokoll, Garantieschein, NT-/Regie-Formular |
| `kostenkontrolle` | `skills/kostenkontrolle/SKILL.md` | Bauleitungs-Back-End **Phase I**: BKP-gegliederte Baubuchhaltung (Budget/Verpflichtung/Zahlung), Kostenrapporte, Schlussabrechnungs-Pruefung, Garantieverfalldaten; Fortsetzung von `kostenschaetzung` |
| `mahnwesen` | `skills/mahnwesen/SKILL.md` | **Debitoren-Mahnwesen**: findet je Debitor die Rechnungen im **echten** Zahlungsverzug (Live-Stand aus bexio, nie aus archivierter PDF) und schlaegt die korrekte naechste Mahnstufe vor. Connector `connectors/bexio.mjs` (`--verzug`/`--mahnen`; Mahn-Ressource heisst **`kb_reminder`**, Stufen 1 Erinnerung / 2 Mahnung 1 / …). Phase 1 (Erkennung) read-only + automatisierbar (Scheduled Task `mahnwesen-verzugscheck`), Phase 2 (Mahnstufe erzeugen / ablegen / Zahlungsaufforderung) nur interaktiv mit Bestaetigung. Debitorenseite zu `kostenkontrolle`; Mail-QS via `korrektur`. **Vorgeschaltet: `zahlungsabgleich`** (mahnt nur auf verifiziertem Zahlungsstand) |
| `logbuch` | `skills/logbuch/SKILL.md` | **Logbuch & Kontrollinstanz** (4. Hub-Schicht, Aufsicht): fuehrt persistentes Journal + zentrales Fristen-/Pendenzen-Register (NAS `logbuch/`), macht proaktiv auf anstehende Fristen aufmerksam und traegt Termine in den Kalender ein (bestaetigt). Taeglicher Scheduled Task `logbuch-radar`; aggregiert Fristen aus `mahnwesen`/`zahlungsabgleich`/`auflagebereinigung`/Kalender/Mails/Pendenzen. Macht den Hub vom ausfuehrenden Werkzeug zur Qualitaetsinstanz; Schwester von `heartbeat` + `/morgen` |
| `zahlungsabgleich` | `skills/zahlungsabgleich/SKILL.md` | **Zahlungsabgleich-/Bankverifikation**: prueft, ob der gebuchte Bezahlt-Status in bexio durch ECHTE UBS-Bankeingaenge gedeckt ist (`connectors/bexio.mjs --abgleich`; Bank-Feed `/3.0/banking/transactions`). Deckt Phantom-Zahlungen + den **Doppelimport** des UBS-Feeds auf (jeder Eingang doppelt: echt `reconciled`/`auto_reconciled` + `unreconciled`-Duplikat). **HARTE REGEL: bucht/reconciled/loescht NICHTS** automatisch (Doppelbuchungs-Gefahr); read-only Verifikation + Meldung. Taeglich via Scheduled Task `zahlungsabgleich-check`; speist `mahnwesen` mit verifiziertem Offen-/Bezahlt-Status. Reconcile/Dedup = bexio-UI/Treuhand-Aufgabe |
| `terminplanung` | `skills/terminplanung/SKILL.md` | Bauprogramme und Ausfuehrungsterminplaene |
| `versandplanung` | `skills/versandplanung/SKILL.md` | **KI-Versand- und Routenplanung Onlineshop**: plant den kompletten Versandtag automatisch — Bestellungen aus dem Shop (Adapter WooCommerce/Shopify/CSV), Trennung Post-Versand ↔ Pickup-Route, Post-Etiketten via DCAPI «Barcode», Packzettel + Pickup-Point-Liste als Druck-PDF (CUPS: Labeldrucker + bizhub), optimierte Tagesroute in Circuit for Teams (Fahrer drückt nur noch «Start»). Connectoren `connectors/versand/`; Spec mit offenen Entscheiden E1–E7 in `wissen/spec/outputs/2026-07-04_versandplanung-onlineshop_spec.md`; Phase 1 (Dokumente) automatisierbar, Phase 2 (Etiketten = kostenrelevant, Route verteilen) gestuft wie `mahnwesen` |
| `pendenzenliste` | `skills/pendenzenliste/SKILL.md` | Pendenzenlisten fuer Bauprojekte mit Uebersicht je Fachplanung (gruppiert), Personen-Legende und blockartig formuliertem Detailteil; aus Mails/Protokollen/Sitzungen destillierbar |
| `protokoll` | `skills/protokoll/SKILL.md` | Sitzungsprotokolle fuer Bauprojekte mit Stamm, Personen-Legende, themenbasierten Sektionen (Sprinkleranlage, BMA, Schliessplan, Brandfallmatrix als eigene Bloecke) und Terminen sechsstellig; Schwesterskill von `pendenzenliste` |
| `marketing` | `skills/marketing/SKILL.md` | LinkedIn-Marketing-Harness (polarisierender Stakkato-Stil) fuer Healthcare-Architektur; orchestriert die drei Sub-Agenten linkedin-stratege / linkedin-texter / linkedin-engagement; Sog-Gegenstueck zum telesales-Skill |
| `korrektur` | `skills/korrektur/SKILL.md` | **QS-Harness vor jedem Versand**: jagt JEDES Texterzeugnis (Mail, DOCX/PDF, LV, Protokoll, Post, Web-Text, Chat-Antwort zum Kopieren) parallel durch die Agenten `rechtschreibung` (echte Umlaute ä/ö/ü, ss statt ß, Tippfehler) und `layout` (Dokument-/Mail-Standard, Umbrueche, sechsstellige Daten); gibt korrigierte Fassung + Ampel zurueck. Letzte Stufe vor der Ausgabe — erzwingt die `umlaute-konvention.md` |
| `wissenscheck` | `skills/wissenscheck/SKILL.md` | **Wissens-Health-Check** fuer den Wissens-Layer (`wissen/`): auditiert eine Wissensbasis in 7 Audits (Widersprueche, kaputte Backlinks, unbelegte Claims, RAW-Coverage, veraltete Artikel, Schreibregel-Verstoesse, Promotion-Kandidaten), schreibt Report nach `outputs/` und protokolliert im `CHANGELOG.md`. Zwei Phasen: Phase 1 (Audit) laeuft immer/unbeaufsichtigt (Scheduled Task), Phase 2 (Aktionen) nur interaktiv. Schwester von `heartbeat` (System- statt Wissens-Health); nutzt `korrektur` fuer Audit F |
| `machbarkeit` | `skills/machbarkeit/SKILL.md` | **Bauentwicklungs-Harness** (destilliert aus 6 J realer JANS-Studien, eigene `wissensbasis/` + `referenzen/`): Machbarkeits-/Potenzial-/Ankaufsstudie in 3 Typen — A Baurechts-/Volumenstudie (Baufeld, aGF/m3/Geschosse, Vorher/Nachher-Delta bei BZO-Revision/Baulinie), B wirtschaftliche Potenzialstudie (Residualwert, Marge, ROI, Sensitivitaet), plus Use-Case-/Causa-Analyse bei Umnutzung. Fan-out `baulinien-analyst` / `dienstbarkeiten-pruefer` / `volumen-rechner` / `wirtschaftlichkeit-rechner`; nutzt `baurecht` + `kostenschaetzung`; Gegenstueck zu `ankaufspruefung` (Typ C) |
| `stockwerkeigentum` | `skills/stockwerkeigentum/SKILL.md` | **STWEG-Harness**: Begruendung/Verwaltung von Stockwerkeigentum (ZGB 712a ff.) — Wertquoten, Aufteilungsplan, Begruendungsurkunde, Reglement, Sonderrecht-/Gemeinschafts-Abgrenzung. Fan-out auf Agenten `wertquoten-rechner` / `stweg-begruender`; liefert Notar/Grundbuch zu |
| `ankaufspruefung` | `skills/ankaufspruefung/SKILL.md` | **TDD-Harness**: technische Due Diligence / Ankaufspruefung einer Liegenschaft vor dem Kauf — Zustand, Sanierungsstau, Risiken (Baurecht/Altlasten/Energie/Brandschutz), CapEx-Fahrplan nach BKP (Goldstandard 2513 BAAR: Bauherren-Fragenkatalog, BKP-Massnahmen, 3-Ampel, Restnutzungsdauer, 10-Jahres-Fahrplan). Nutzt `kostenschaetzung`, `baurecht` (+ `dienstbarkeiten-pruefer`), `brandschutz`; Gegenstueck zu `offertenpruefung` |
| `studien-generator` | `skills/studien-generator/SKILL.md` | **Dossier-Engine**: geruestet aus _MAQ-Ordnervorlage + Goldstandard-Berichten — legt fuer eine neue Studie die 10er-Ordnerstruktur + typgerechtes Berichtsskelett an (`tools/scaffold_studie.py`). Mantelstufe um `machbarkeit` / `ankaufspruefung` / `healthcare-wirtschaftlichkeit` |
| `wettbewerb` | `skills/wettbewerb/SKILL.md` | **Wettbewerbs-Harness**: aus dem Wettbewerbsprogramm-PDF die pruefbaren Abgabe-Liefergegenstaende erzeugen und den Beitrag ueber eine **Konformitaets-Schleife** (Soll/Ist-Ampel) gegen das Programm ziehen, bis erfuellt. Liefert Raumprogramm-/Flaechen-Nachweis (SIA 416), Erlaeuterungsbericht, Konzept-Schemas, Plakat-Geruest, Situationsmodell-STL + luckenlose Abgabe-Checkliste; Parti bleibt **Human Gate**, Plaene/Bilder ehrlich als Reife-Ampel (nicht vorgetaeuscht). Scaffolder `tools/scaffold_wettbewerb.py`; Fan-out `programm-leser` / `flaechen-nachweis` / `programm-pruefer` (MVP) + `bericht-autor` / `schema-zeichner` / `plakat-setzer` (Stufe 2). Mantelstufe analog `studien-generator`, aber fuer Wettbewerbe; nutzt `volumenstudie` (Volumen/STL), `machbarkeit`/`baurecht` (Rahmen), `planungsgrundlagen` (Geodaten), `grobkosten-onepager` (Kennzahl) |
| `nutzungsstrategie` | `skills/nutzungsstrategie/SKILL.md` | **Use-Case-/Causa-Harness** (Goldstandard 2620 Albertstrasse): vergleicht Nutzungsszenarien im Kriterienraster (Zonenkonformitaet/Brandschutz/Kosten/Risiko/Markt), prueft Bestandesschutz §357, Empfehlung als Sequenz. Fan-out `nutzungsszenario-pruefer`; Schwester zu `machbarkeit` |
| `healthcare-wirtschaftlichkeit` | `skills/healthcare-wirtschaftlichkeit/SKILL.md` | **Healthcare-Rendite-Harness** (Goldstandard 2410 WALD/Nova): Pflegeplatzkosten, Hotellerie-Taxe, Brutto-/Nettorendite via Annuitaet (BWO-Zins, CURAVIVA-Abschreibung), Raumprogramm-Verifizierung. Healthcare-Spezialisierung von `machbarkeit` Typ B; nutzt `wirtschaftlichkeit-rechner` + `kostenschaetzung` |
| `behoerden-vorabklaerung` | `skills/behoerden-vorabklaerung/SKILL.md` | **Vorabklaerungs-Harness** (Goldstandard QA_Baurecht 2306 WOMA): generiert je Parzelle die richtigen Behördenfragen (gummige Punkte: Abstaende/Messweise/UG-Anrechnung/Bestandesschutz) und strukturiert Antworten beweissicher. Querschnitt fuer `machbarkeit`/`nutzungsstrategie`/`ankaufspruefung` |
| `immobilienbewertung` | `skills/immobilienbewertung/SKILL.md` | **Immobilienbewertungs-Harness** (Seed aus IMMO-01..06 + Wuest-Kurs "Immobilien entwickeln"): Verkehrs-/Marktwert einer Liegenschaft ueber 3 Verfahren — Realwert/Sachwert, Ertragswert/DCF, Vergleichswert/hedonisch — synthetisiert zum Marktwert; bei Entwicklung Landwert via Residual. Deliverables LB/MA/RW/CS. Fan-out `realwert-rechner` / `ertragswert-rechner` / `vergleichswert-analyst`; nutzt KB `wissen/immobilienbewertung/` + `kostenschaetzung`; Dach des 2-taegigen Trainings-Loops. Ergaenzt `machbarkeit` (Volumen) / `ankaufspruefung` (Zustand) / `stockwerkeigentum` (Quoten) |
| `auflagebereinigung` | `skills/auflagebereinigung/SKILL.md` | **Auflagebereinigungs-Harness** (Seed aus Fall 2619-KISPI, Lenggstrasse 30): destilliert die Bedingungen/Auflagen eines (Vorabzug-)Bauentscheids zu einer nachfuehrbaren **Plan- und Dokumentenliste** (XLSX-Tracking), gruppiert nach Planer/Gewerk (BRA/HLK/SAN/ELE/FKO/ARC/BAU), mit «fuer Amt» (AfB/FP/GVZ/UGZ/StB/TBA/StaPo/GSZ) und «Frist» (vor Baubeginn/Arbeitsvergabe/Inbetriebnahme) je Deliverable. Fan-out `auflagen-extraktor` / `planer-zuteiler` / `amts-fristen-zuordner` / `auflagen-tracker`; nutzt KB `wissen/auflagebereinigung/` + Generator `tools/build_auflagenliste.py`; Faktenbasis `baurecht` + `brandschutz`. Gegenstueck/Fortsetzung zu `behoerden-vorabklaerung` (Fragen VOR dem Entscheid); speist `pendenzenliste`/`protokoll`/`terminplanung` und die Ausfuehrungs-Skills `unternehmerkontrolle`/`kostenkontrolle` |
| `planungsgrundlagen` | `skills/planungsgrundlagen/SKILL.md` | **Planungsgrundlagen-Harness** (Seed aus den vier PL-Grundordnern auf SharePoint): beschafft und buendelt zu Parzelle/Adresse die planerischen Grundlagen. Kernfaehigkeit Geodaten-Beschaffung — **OEREB-Auszug, EGRID, Kataster, Zonenplan, Hoehenmodell, Orthofoto** (Kt. ZH via maps.zh.ch/geo.admin.ch, kein Login) ueber den Connector `connectors/geo-zh.mjs` (validierte Kette Adresse→EGRID→OEREB-PDF). Fan-out `geodaten-beschaffer` (PL-01) + `energie-berater` (PL-04); Recht/Norm (PL-02) → Skill `baurecht`, Brandschutz (PL-03) → Skill `brandschutz` (kein Doppel). Nutzt KB `wissen/planungsgrundlagen/`; Vorstufe/Grundlagenlieferant fuer `machbarkeit`/`ankaufspruefung`/`behoerden-vorabklaerung` |
| `oereb-schwyz` | `skills/oereb-schwyz/SKILL.md` | **OEREB-Auszug Kt. Schwyz** — schnellster validierter Weg (Fall 2304 Reckholdern, 07.06.2026): EIN amtlicher login-freier PDF-Endpunkt hinter `map.geo.sz.ch` (`/oereb/extract/pdf?EGRID=`). Connector `planungsgrundlagen/connectors/geo-sz.mjs` zieht den Auszug per **Parzellensuche** (empfohlen, eindeutig; SZ-BFS-Filter) oder EGRID und benennt auf JANS-Konvention um. Loest die Vielzahl der SZ-GIS-Plattformen + die Fallgrube «Adresse→Nachbarparzelle». SZ-Spezialisierung von `planungsgrundlagen` |
| `massgebendes-terrain` | `skills/massgebendes-terrain/SKILL.md` | **Massgebendes-Terrain-Harness** fuer Hanglagen (Prinzip Raphael, validiert 2621 Giebelweg, 12.06.2026): legt das MT pragmatisch fest (gewachsene Referenzlinie an unverbauter Grenze, Sehnen-Absenkung im Baukoerperbereich, Anbindung Strassenniveau, Quer-Extrusion), rechnet die anrechenbare **Baumasse als Volumen ueber der MT-Flaeche** (Rasterintegration) und erzwingt die **Fassadenhoehe an JEDER Gebaeudeecke ab MT am Fusspunkt** (nie ausmitteln) — bei Verletzung **Abtreppung** quer zur Falllinie (Stufendach = MT talseitige Stufenkante + Fassadenhoehe). Nutzt DTM via `geo-zh.mjs`; 3D/Render via `volumenstudie`; Querschnitt fuer `machbarkeit`/`behoerden-vorabklaerung` an Hangparzellen |
| `volumenstudie` | `skills/volumenstudie/SKILL.md` | **3D-Volumenstudien-Generator** (11.06.2026): Geometrie-/Visualisierungsstufe der Studienpipeline — Parzelle (amtliches Kataster-Polygon via `geo-zh.mjs` + swisstopo identify) → Baufeld (Grenzabstand-Offset) → Extrusion je Variante. Outputs: editierbares Rhino-`.3dm`, Cinema-4D-Szene + Headless-Renderings (c4dpy, weisses Volumenmodell, 3 Standardkameras), Kennzahlen (Baufeld m2/aGF/m3). Generator `tools/volumen_generator.py` (venv `~/.venvs/volumen3d`), Szenenbauer `tools/c4d_szene.py`. Parameter-Hoheit bei `machbarkeit`; speist `studien-generator` + `grobkosten-onepager` |
| `hub-chef` | `skills/hub-chef/SKILL.md` | **Dach-Orchestrator** (Autonomie Stufe 3, seit 02.07.2026): konsolidiert taeglich alle Signale (Logbuch/Fristen, Loop-Reports, Mail, bexio, Kalender), priorisiert, dispatcht Arbeitspakete an die Skill-Agenten, fuehrt Aktionen gemaess `logbuch/AKTIONS-WHITELIST.md` selbst aus (A1 Mahnstufe 1 mit Guards, A2 Kalender, A3 Ablage, A4 Register, A5 Drafts; Geld/Buchungen NIE) und liefert EIN Tagesbriefing mit fertigen Entwuerfen. Prueft Anfragen gegen den Service-Katalog `services/KATALOG.md` (Machbarkeits-Studio, Immobilienbewertung, Ankaufspruefung/TDD, Bauleitungs-Backend). Loop `hub-chef-taeglich` 08:35 (nach allen Morgen-Loops); Spec `wissen/spec/outputs/2026-07-02_hub-chef-harness_spec.md`. Dach ueber `logbuch`/`heartbeat`/`/morgen` |
| `workstation-setup` | `skills/workstation-setup/SKILL.md` | **Stations-Onboarding** (Master hier auf dem NAS, claude.ai-Upload nur Wegweiser): richtet eine neue macOS-Arbeitsstation komplett ein — Homebrew/Tools, SSH (GitHub Port 443), Git-Config, macOS-Defaults, NAS-Mount, Hub-Einbindung via `scripts/neue-station.sh` (Symlinks, launchd-Jobs, Pendenzen-Queue, Register) inkl. **PFLICHT-Schritt FDA fuer /bin/bash** (TCC blockiert launchd→SMB, 11.06.2026; Pruefung `scripts/check-launchd-fda.sh`). Schwester von `heartbeat` (dort Health-Check, hier Ersteinrichtung) |

### Skill-Referenzen (Konvention)
Jeder Skill kann einen `referenzen/`-Ordner haben fuer hochprioritaere PDFs:
```
skills/<skill-name>/
  SKILL.md              ← Skill-Definition
  referenzen/           ← PDFs mit hoechster Prioritaet
    README.md           ← Was gehoert hierhin + Inhaltsverzeichnis
    JJJJMMTT-Titel.pdf  ← Validierte Fachquellen
```

| Skill | Referenzen-Ordner | Beispiel-Inhalt |
|---|---|---|
| `baurecht` | `skills/baurecht/referenzen/` | Blaues Buch PBG ZH, Kommentare |
| `kostenschaetzung` | `skills/kostenschaetzung/referenzen/` | Wuest Partner Kostenkennwerte |
| `offertenpruefung` | `skills/offertenpruefung/referenzen/` | KBOB-Tarife, SIA 118/1024, Vergleichsofferten (anonymisiert), Marktreports |
| `ausschreibung` | `skills/ausschreibung/referenzen/` | Goldstandard-Beispiel-Offerten, SIA 118/1024, AGB-Vorlagen, Branchen-Marktreports |

### Skill-uebergreifende Referenzen (`/Volumes/daten/jans-ai-hub/references/`)

Verbindliche Fachstandards, die von mehreren Skills/Agents gleichzeitig genutzt werden:

| Referenz | Pfad (auf NAS) | Verbindlich fuer |
|---|---|---|
| BKP 2017 (CRB) | `references/bkp-2017/BKP-2017-Liste.md` + `BKP-2017-CRB.pdf` | offertenpruefung, ausschreibung, kostenschaetzung, terminplanung, brandschutz, honorarberechnung-sia102 |

Verbindlichkeit wird ueber die Rule `bkp-2017-referenz.md` durchgesetzt — siehe Sektion "Geteilte Verhaltensregeln".

### Agents (Sub-Agents)
| Agent | Pfad (auf NAS) | Beschreibung |
|---|---|---|
| `recherche` | `agents/recherche.md` | Systematische Recherche ueber alle Quellen |
| `dokument` | `agents/dokument.md` | Professionelle Dokumente erstellen (Word/PDF) |
| `email` | `agents/email.md` | E-Mails im JANS-Stil verfassen |
| `unternehmer-scout` | `agents/unternehmer-scout.md` | Durchsucht je eine Quelle (Stammdaten/Kontakte/Archiv/Web) nach Unternehmern fuer ein Gewerk + Bauort; liefert belegte Kandidaten zurueck (Fan-out fuer Skill `unternehmerfindung`) |
| `baulinien-analyst` | `agents/baulinien-analyst.md` | Bestimmt das oeffentlich-rechtliche **Baufeld** aus Zone, Baulinien und Abstaenden (Grenz-/Strassen-/Gewaesser-/Wald); im Aenderungsfall Vorher UND Nachher (Fan-out fuer Skill `machbarkeit`) |
| `dienstbarkeiten-pruefer` | `agents/dienstbarkeiten-pruefer.md` | Prueft Grundbuch-**Dienstbarkeiten/Servitute** und uebersetzt sie in ihre Wirkung aufs Baufeld (Naeher-/Wegrecht, Bauverbot etc.); fuer Skills `machbarkeit` und `ankaufspruefung` |
| `volumen-rechner` | `agents/volumen-rechner.md` | Rechnet aus Baufeld × Ausnuetzung/Hoehe das **Bauvolumen** (aGF/BGF/m3/Geschosse) und das Delta Vorher/Nachher; benennt die bindende Restriktion (Fan-out fuer Skill `machbarkeit`) |
| `wirtschaftlichkeit-rechner` | `agents/wirtschaftlichkeit-rechner.md` | **Oekonomie-Modul** (Studientyp B): rechnet aus Volumen + Kennwerten **Residualwert/Marge/ROI** + Sensitivitaet + Risiko-Ampel (Controlling Fact Sheet); fuer Skills `machbarkeit`, `ankaufspruefung`, `healthcare-wirtschaftlichkeit` |
| `nutzungsszenario-pruefer` | `agents/nutzungsszenario-pruefer.md` | Bewertet EIN Nutzungsszenario gegen den Kriterienraster (Zonenkonformitaet/Brandschutz/Kosten/Risiko/Markt) + Bestandesschutz §357 (Fan-out fuer Skill `nutzungsstrategie`) |
| `wertquoten-rechner` | `agents/wertquoten-rechner.md` | Berechnet/prueft **STWEG-Wertquoten** aus gewichteten Flaechen, normiert auf 1000/1000 (Fan-out fuer Skill `stockwerkeigentum`) |
| `stweg-begruender` | `agents/stweg-begruender.md` | Formuliert **Begruendungsurkunde + Reglement** und die Sonderrecht-/Gemeinschafts-Abgrenzung (ZGB 712a ff.), mit Notar-/Grundbuch-Vorbehalt (Fan-out fuer Skill `stockwerkeigentum`) |
| `realwert-rechner` | `agents/realwert-rechner.md` | **Realwert/Sachwert**: Bodenwert + Gebaeude-Zeitwert (Neuwert − Alterswertminderung − Sanierungsstau) (Fan-out fuer Skill `immobilienbewertung`) |
| `ertragswert-rechner` | `agents/ertragswert-rechner.md` | **Ertragswert/DCF**: Kapitalisierung/DCF aus Mietertrag, Diskontsatz, Terminalwert; bei Entwicklung der **Landwert** (Residual) (Fan-out fuer Skill `immobilienbewertung`) |
| `vergleichswert-analyst` | `agents/vergleichswert-analyst.md` | **Vergleichswert/hedonisch**: Markteinordnung via UBS-FS-Quantile + Lageklasse (Fan-out fuer Skill `immobilienbewertung`) |
| `auflagen-extraktor` | `agents/auflagen-extraktor.md` | **Auflagen-Extraktion**: liest einen (Vorabzug-)Bauentscheid und erfasst jede Auflage + die Vorbemerkungen (Ziff. II.1–3) beweissicher strukturiert (Ziffer/Kurztext/Frist-/Amt-Hinweis/SRZ-Marker) — Schritt 1 (Fan-out fuer Skill `auflagebereinigung`) |
| `planer-zuteiler` | `agents/planer-zuteiler.md` | **Gewerk-Zuteilung**: ordnet jede Auflage dem zustaendigen Planer/Gewerk (BRA/HLK/SAN/ELE/FKO/ARC/BAU) zu und benennt die konkreten Deliverables (eine Zeile pro Plan/Dokument) — Schritt 2 (Fan-out fuer Skill `auflagebereinigung`) |
| `amts-fristen-zuordner` | `agents/amts-fristen-zuordner.md` | **Amt + Frist**: setzt je Deliverable den einreichenden Adressaten und die Frist anhand der Vorbemerkungen-Mechanik; vermerkt Doppel-Adressierung (Fachstelle + Bestaetigung an AfB) — Schritt 3 (Fan-out fuer Skill `auflagebereinigung`) |
| `auflagen-tracker` | `agents/auflagen-tracker.md` | **Nachfuehrung + Compounding**: pflegt Status/Fristen der Plan-/Dokumentenliste, meldet Faelliges, diff't Vorabzug↔definitiv und schreibt Erkenntnisse ins Wiki zurueck (Fan-out fuer Skill `auflagebereinigung`) |
| `geodaten-beschaffer` | `agents/geodaten-beschaffer.md` | **Geodaten-Beschaffung** (PL-01): ermittelt zu Adresse/Parzelle den **EGRID**, zieht den **OEREB-Auszug** und weitere amtliche Produkte (Kataster/Zonenplan/Hoehenmodell/Orthofoto) und legt sie projektgerecht ab; nutzt Connector `geo-zh.mjs`, erfindet nie eine EGRID/Parzelle (Fan-out fuer Skill `planungsgrundlagen`) |
| `energie-berater` | `agents/energie-berater.md` | **Energie-Fachagent** (PL-04): PV-/Solar-Eignung (Indach/Ziegel/transparent/Fassade/Aufdach), U-Wert/Bauteilkatalog (SIA 380/1), Energienachweis-Vorpruefung, ZH-Baueingabe-Energieformulare; Kennwerte belegt, nie erfunden (Fan-out fuer Skill `planungsgrundlagen`) |
| `grobkosten-rechner` | `agents/grobkosten-rechner.md` | **Grobkosten-Rechner**: uebersetzt ein Gebaeudevolumen ueber einen **belegten Kennwert** (KB `wissen/grobkosten`) in Erstellungskosten BKP 1–5 (Volumen × Kennwert + Band), weist Herkunft/Reife des Kennwerts aus und stoesst die Lernschleife an (Fan-out fuer Skill `grobkosten-onepager`) |
| `programm-leser` | `agents/programm-leser.md` | **Programm-Extraktion**: liest das Wettbewerbsprogramm-PDF und destilliert das belegte **Soll** — Raumprogramm, Abgabevorgaben (Format/Massstab/Boards/Modell), Termine, Beurteilungskriterien, zwingende Auflagen; Unklares als Rueckfrage, nichts erfunden (Fan-out fuer Skill `wettbewerb`) |
| `flaechen-nachweis` | `agents/flaechen-nachweis.md` | **Flaechen-Nachweis** (SIA 416): rechnet GF/GV/HNF/NNF und das **Soll/Ist-Delta** je Raum gegen die Programm-Toleranz (Ampel) — der gruene, verifizierbare Kern der Abgabe (Fan-out fuer Skill `wettbewerb`; auch `machbarkeit`/`studien-generator`) |
| `programm-pruefer` | `agents/programm-pruefer.md` | **Konformitaets-Schleife** (Herzstueck): ampelt jede Programmvorgabe (Format/Liefergegenstaende/Inhalt) gegen den Ist-Stand und formuliert die Rueckkopplung, bis erfuellt; schoenfaerbt nie, markiert Hand/offen ehrlich (Fan-out fuer Skill `wettbewerb`) |
| `bericht-autor` | `agents/bericht-autor.md` | **Erlaeuterungsbericht**: schreibt den Wettbewerbs-Bericht entlang der Jury-Kriterien, gestuetzt auf Entwurf + Kennzahlen (aus `flaechen-nachweis`/`volumenstudie`), anonym, ohne Floskeln; Korrektur-Pflicht (Fan-out fuer Skill `wettbewerb`) |
| `schema-zeichner` | `agents/schema-zeichner.md` | **Konzept-Schemas**: erzeugt diagrammatische **SVG-Erklaerschemata** (Erschliessung/Tragwerk/Energie/Brandschutz) konsistent zum Bericht — Konzeptdiagramm, kein massstaeblicher Plan (Fan-out fuer Skill `wettbewerb`) |
| `plakat-setzer` | `agents/plakat-setzer.md` | **Board-Geruest**: baut das masshaltige Plakat-Raster (SVG) nach Abgabeformat mit benannten Platzhaltern + Pflichtleisten (Kennwort/Massstab/Nord), wahrt Anonymitaet; Geruest, kein Feinsatz (Fan-out fuer Skill `wettbewerb`) |
| `website-content` | `agents/website-content.md` | WordPress Projekt-Upload fuer raphaeljans.ch |
| `linkedin-stratege` | `agents/linkedin-stratege.md` | Marketing-Harness: Positionierung + Redaktionsplan (WAS gepostet wird) |
| `linkedin-texter` | `agents/linkedin-texter.md` | Marketing-Harness: schreibt fertige LinkedIn-Posts im polarisierenden JANS-Stil |
| `linkedin-engagement` | `agents/linkedin-engagement.md` | Marketing-Harness: Kommentare, Reaktionen, Vernetzungsnachrichten, Post-Recycling |
| `rechtschreibung` | `agents/rechtschreibung.md` | Korrektur-Harness: Orthografie-Pruefer — erzwingt echte Umlaute ä/ö/ü (nie blind ersetzen), ss statt ß, Tippfehler/Grammatik; laeuft parallel zu `layout` (Skill `korrektur`) |
| `layout` | `agents/layout.md` | Korrektur-Harness: Layout-/Formatierungs-Pruefer — Dokument-/Mail-Standard, fehlerhafte Umbrueche, Tabellen-Header, sechsstellige Daten, Dateinamen-Konvention; laeuft parallel zu `rechtschreibung` (Skill `korrektur`) |

### Custom Commands (Slash-Commands)
| Command | Beschreibung |
|---|---|
| `/status` | Kompletter Systemcheck (Hardware, Netzwerk, Dienste) |
| `/sync` | Git-Sync mit GitHub (Backup) |
| `/nas` | NAS-Mount pruefen und reparieren |
| `/m365` | Microsoft 365 Connector testen |
| `/morgen` | Morgen-Briefing (Kalender, E-Mails, System) |
| `/station-sync` | Sync-Tasks von der anderen Station pruefen und ausfuehren |
| `/station-status` | Live-Zustand der anderen Station abfragen (aktive Sessions, laufende Prozesse, Projektordner-Aktivitaet) — Doppelspurigkeiten vermeiden |
| `/website` | Website-Content: Projekte hochladen, Status pruefen |
| `/korrektur` | Korrektur-Harness: Erzeugnis durch `rechtschreibung` + `layout` jagen, versandfertige Fassung + Ampel zurueck |

### Baurecht-Wissensbasis
- `docs/baurecht/begriffe.md` — Glossar baurechtliche Begriffe
- `docs/baurecht/pbg_zh.md` — Planungs- und Baugesetz ZH (Kernpunkte)
- `docs/baurecht/bzo_zh.md` — Bau- und Zonenordnung Systematik
- `docs/baurecht/verfahren.md` — Baubewilligungsverfahren Ablauf
- `docs/baurecht/praxisfaelle.md` — Praxisfaelle (wird laufend ergaenzt)

## Projektstruktur

```
jans-ai-hub/                          (Git-Repo, auf jeder Station lokal)
├── .claude/
│   ├── skills/ → NAS-Symlink         ← Gemeinsame Skills
│   ├── agents/ → NAS-Symlink         ← Gemeinsame Agents
│   ├── commands/ → NAS-Symlink       ← Gemeinsame Commands
│   ├── settings.json                 ← Projekt-Permissions
│   └── settings.local.json           ← Lokale Overrides (pro Station)
├── docs/
│   └── baurecht/                     ← Wissensbasis
├── scripts/
│   ├── setup-nas-skills.sh           ← NAS-Setup fuer neue Stationen
│   ├── git-auto-sync.sh              ← GitHub-Backup Script
│   └── MAC-MINI-SETUP-PROMPT.md      ← Anleitung fuer Mac Mini
├── CLAUDE.md                         ← Diese Datei
├── package.json
├── .env                              ← Credentials (NICHT committen)
├── .env.example                      ← Credential-Template
├── .mcp.json                         ← M365-Connector Config (NICHT committen)
└── .gitignore
```

## Wissens-Layer (`wissen/`)

Die dritte Schicht des Hub neben **Skills** (Fähigkeiten) und **Rules** (Verhalten):
eine sich selbst verbessernde, kompoundierende Wissensbasis, in der Claude als
**KI-Bibliothekar** arbeitet (Prinzip nach Karpathy / Corey Ganim, an die JANS-Harness
angepasst). Statt dass Raphael Wissen von Hand ordnet, kippt er Rohmaterial rein und
Claude kompiliert, verlinkt und pflegt es.

```
wissen/
  WISSEN-CLAUDE.md     ← Meta-Schema (zuerst lesen)
  <domäne>/
    raw/   ← Quell-Dump (reinkippen, nie ordnen; Claude liest, editiert nie)
    wiki/  ← kompilierte Artikel + INDEX.md + QUESTIONS.md (Claudes Domäne; nie von Hand editieren)
    outputs/ ← erzeugte Reports; die guten fliessen zurueck ins Wiki (Compounding)
    CLAUDE.md / CHANGELOG.md
```

- **Bibliothekar-Rolle:** Rule `wissens-bibliothekar.md` (Autonomie *active-with-flagging*:
  schreibt/verlinkt ohne Rueckfrage, loggt alles im CHANGELOG, fragt nur vor Destruktivem).
- **Compounding-Loop:** jede inhaltliche Frage erzeugt einen Output in `outputs/` und
  laesst das Wiki wachsen — Antwort Nr. 50 baut auf 1–49 auf.
- **Health-Check:** Skill `wissenscheck` (monatlich, 7 Audits, 2 Phasen) haelt die KB sauber.
- **Aktuelle KBs:** `baurecht/` (Pilot, Seed aus `docs/baurecht/`), `projekt-lessons/`
  (projektübergreifende Erfahrungen, frisch angelegt), `firmengruendung-ch/`
  (Firmengründung CH, AG-Fokus; 8 Artikel + Vorgehens-Set neue AG), `kunde-bopp/`
  (Kunden-Kontext-KB Christoph Bopp — Profil/Rollen/Projekte/Auftrags-Muster; Prototyp eines
  pro-Kunde-KB `kunde-<name>/`, speist die Skills `machbarkeit`/`stockwerkeigentum`/`ankaufspruefung`),
  `immobilienbewertung/` (Bewertungs-Methodik Verkehrs-/Markt-/Ertrags-/Real-/Vergleichswert;
  Seed aus IMMO-01..06 + Wuest-Kurs "Immobilien entwickeln"; speist den Skill `immobilienbewertung`),
  `auflagebereinigung/` (Bauentscheid-Auflagen → Plan-/Dokumentenliste: Aemter-Mapping Stadt ZH,
  Gewerk-Zuteilung, Fristenlogik, Brandschutz-QSS; Seed aus Fall 2619-KISPI; speist den Skill
  `auflagebereinigung`), `planungsgrundlagen/` (Planungsgrundlagen-Beschaffung: vier Domaenen
  kartenportale/recht-norm/brandschutz/energie aus den PL-Grundordnern; OEREB-/EGRID-Bezugskette
  validiert; speist den Skill `planungsgrundlagen`), `energie/` (**strategische Energie-KB** mit
  Destillate-Layer PDF→MD + `BAUHERREN-FAQ`; Seed aus PL-04 Energie, 120 PDF; Ziel: bessere
  belegte Bauherren-Antworten zu Nachhaltigkeit/Klima; speist den Agent `energie-berater`),
  `grobkosten/` (**Kennwerte-Lernmodell** Grobkosten CHF/m3 GV nach BKP 1-5: Seed-Kennwerte
  Wohnbau-Neubau Region ZH, kompoundierend ueber reale Realabrechnungen via `raw/`→`wiki/`; speist
  den Skill `grobkosten-onepager` + Agent `grobkosten-rechner`), `spec/` (**Methodik-KB
  Spec-Methode** Karpathy/Marchese: 3-Layer-Modell + JANS-Gate + Verifier-Zuordnung je Domaene;
  reale Spec-Anwendungen als Goldstandards in `outputs/`; speist Skill `spec` + Rule `spec-methode`,
  Lern-Loop `spec-training` alle 3 Tage).
- **Bewertungs-Training:** Scheduled Task `immobewertung-training` (alle 2 Tage) arbeitet
  10 Themen des Wuest-Curriculums in die KB `immobilienbewertung` ein (`training/PROGRAMM.md`).
- **Planungsgrundlagen-Training:** Scheduled Task `planungsgrundlagen-training` (alle 2 Tage)
  arbeitet je Lauf eine PL-Domaene + 6–10 Selbstfragen in die KB `planungsgrundlagen` ein und
  verbessert den Connector `geo-zh.mjs` (`training/PROGRAMM.md` + `training/curriculum.md`).
- **Energie-Training (taeglich):** Scheduled Task `energie-training` (jeden Tag) ueberfuehrt
  3–5 PL-04-PDFs in lesbare Destillate (`wissen/energie/destillate/`) und verdichtet sie zu
  belegten `BAUHERREN-FAQ`-Antworten — der strategische Energie-Loop fuer das Buero.
- **Monatlicher Health-Check:** Scheduled Task `wissenscheck-monatlich` (1. des Monats,
  07:00) auditiert alle KBs unbeaufsichtigt (Phase 1) und committet die Reports.
- Kanonisch auf dem NAS (`sync-kanonische-quelle.md`).

## Wichtige Regeln
- **Jede Station arbeitet lokal** mit Claude Code — Skills werden ueber NAS geteilt
- Repo auf SSD (`~/Developer/jans-ai-hub`), NIEMALS ueber SMB-Mount bearbeiten
- Skills/Agents/Commands liegen auf dem NAS und sind per Symlink eingebunden
- NAS muss gemountet sein (`/Volumes/daten`) damit Skills funktionieren
- Passwoerter und Credentials NIEMALS committen
- GitHub nur fuer Backup/Versionierung
- Fuer sensible Daten: `.env` (in .gitignore) oder macOS Keychain

## Geteilte Verhaltensregeln (Rules)

Verhaltens- und Stil-Regeln liegen auf dem NAS unter `/Volumes/daten/jans-ai-hub/rules/` und werden hier per `@`-Import eingebunden. So sind Aenderungen sofort auf allen Stationen aktiv — analog zur Skill-/Agent-/Command-Architektur.

Aktive Rules:

@/Volumes/daten/jans-ai-hub/rules/anrede-kontakte.md
@/Volumes/daten/jans-ai-hub/rules/antwort-formatierung.md
@/Volumes/daten/jans-ai-hub/rules/auftrags-dekomposition.md
@/Volumes/daten/jans-ai-hub/rules/auto-verbesserungen.md
@/Volumes/daten/jans-ai-hub/rules/bkp-2017-referenz.md
@/Volumes/daten/jans-ai-hub/rules/dateinamen-konvention.md
@/Volumes/daten/jans-ai-hub/rules/dokument-layout-standard.md
@/Volumes/daten/jans-ai-hub/rules/git-auto-push.md
@/Volumes/daten/jans-ai-hub/rules/identifikatoren-verifizieren.md
@/Volumes/daten/jans-ai-hub/rules/jans-absenderadresse.md
@/Volumes/daten/jans-ai-hub/rules/mail-formatierung.md
@/Volumes/daten/jans-ai-hub/rules/osascript-apple-apps.md
@/Volumes/daten/jans-ai-hub/rules/projekt-ablage-stand.md
@/Volumes/daten/jans-ai-hub/rules/spec-methode.md
@/Volumes/daten/jans-ai-hub/rules/sync-kanonische-quelle.md
@/Volumes/daten/jans-ai-hub/rules/umlaute-konvention.md
@/Volumes/daten/jans-ai-hub/rules/wissens-bibliothekar.md

Details zur Rules-Architektur und wie neue Regeln angelegt werden: siehe `/Volumes/daten/jans-ai-hub/rules/README.md`.
