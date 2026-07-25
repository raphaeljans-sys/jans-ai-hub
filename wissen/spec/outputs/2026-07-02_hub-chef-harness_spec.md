# Hub-Chef-Harness (Dach-Orchestrierung + Service-Produktisierung) — Spec

- **Ziel (1 Satz):** Der Hub wird von 14 parallelen Melde-Loops zu EINER taeglich orchestrierten
  Instanz, die alle Signale konsolidiert, priorisiert, Arbeitspakete an die Skill-Agenten
  dispatcht, definierte Aktionen (Whitelist Stufe 3) selbst ausfuehrt und die vier trainierten
  Studien-Services als produktisierte Kunden-Deliverables auf Knopfdruck anbietet.

- **Abgrenzung (gehoert NICHT dazu):**
  - Keine Zahlungen, Buchungen, Reconcile oder Loeschungen in bexio (harte Regel `zahlungsabgleich`).
  - Kein autonomer Versand ausser explizit in `logbuch/AKTIONS-WHITELIST.md` freigegeben.
  - Keine neuen Fach-Skills — nur Orchestrierung, Whitelist und Katalog ueber Bestehendem.
  - Preisgestaltung/Honorar der Services bleibt bei Raphael (Katalog fuehrt nur Aufwand/Deliverable).

- **Annahmen (markiert, zu bestaetigen):**
  - Die Loops laufen auf dem MacBook Pro (Always-On, disablesleep) — dort liegen die bestehenden
    14 Scheduled Tasks; der Mac Mini bleibt Dispatch-/Runner-Station.
  - Whitelist v1 ist bewusst konservativ (nur Mahnstufe 1 mit Guards versandberechtigt);
    Erweiterung nur nach Review im Briefing.

- **Schluesselentscheide (bestaetigt von Raphael, 02.07.2026 via AskUserQuestion):**
  1. Alle vier Services produktisieren: Machbarkeits-Studio, Immobilienbewertung,
     Ankaufspruefung/TDD, Bauleitungs-Backend.
  2. Autonomie **Stufe 3**: definierte Aktionen laut Whitelist, alles protokolliert im Logbuch;
     Geld/Buchungen bleiben immer manuell.
  3. Orchestrierung: **Hub-Chef taeglich** — ein Chef-Loop konsolidiert morgens alle Signale,
     priorisiert, dispatcht und liefert EIN Briefing mit fertigen Entwuerfen.

- **Bewertungskriterien (woran Erfolg gemessen wird):**
  1. EIN konsolidiertes Briefing pro Tag statt mehrerer paralleler Loop-Mails.
  2. Jede gemeldete Pendenz kommt mit fertigem Entwurf (Mail-Draft, Dokument, Terminvorschlag),
     nicht nur als Meldung — «ein Klick statt eigener Arbeit».
  3. Jede Stufe-3-Aktion ist im Logbuch protokolliert (Was/Warum/Guard erfuellt) und begrenzt
     reversibel.
  4. Service-Anfrage → Deliverable-Start in einem einzigen Befehl (Katalog-Startbefehl).
  5. Null Verstoesse gegen die Verbotsliste (Zahlungen/Buchungen/Loeschen/Erstkontakte).

- **Plan (enge Scopes + Checkpoints):**
  - S1: `logbuch/AKTIONS-WHITELIST.md` (Stufe-3-Governance) — Checkpoint: Review durch Raphael
    im ersten Briefing.
  - S2: `services/KATALOG.md` (4 produktisierte Services mit Startbefehlen).
  - S3: Skill `skills/hub-chef/SKILL.md` (Orchestrator-Kontrakt + 6-Phasen-Ablauf).
  - S4: Scheduled Task `hub-chef-taeglich` (08:35, nach allen Morgen-Loops).
  - S5: Registrierung: CLAUDE.md-Tabelle, Logbuch-Eintrag, dieser Spec-Output + CHANGELOG.
  - Checkpoint gesamt: erster Hub-Chef-Lauf 03.07.2026 → Raphael reviewt Briefing + Whitelist;
    Anpassungen im naechsten Scope.

- **Verifikation (zweite Instanz + externes Signal):**
  - Texte/Dokumente: Skill `korrektur` + `twin`-Fidelity-Gate vor jedem Entwurf/Versand.
  - Fakten: externe Signale statt Vermutung — bexio `--abgleich` VOR jeder Mahnaktion,
    Outlook/Kalender vor Terminen, geo-Connectoren fuer Studien-Services.
  - Governance: Logbuch-Protokoll je Aktion; Whitelist-Review durch Raphael (Checkpoint S1).

- **Faktenbasis (KB/Goldstandard/Connector):** Logbuch + Fristen-Register (Live-Stand 02.07.),
  Liste der 14 Scheduled Tasks, KB `wissen/spec/` ([[anwendung-jans]], [[verifier]]),
  CLAUDE.md-Skill-/Agenten-Inventar (46 Skills, 38 Agenten, 12 KBs).
