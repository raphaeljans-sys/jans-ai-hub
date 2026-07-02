---
name: hub-chef
description: >-
  Dach-Orchestrator des JANS AI Hub — konsolidiert taeglich alle Signale (Logbuch, Fristen,
  Loop-Reports, Mail, bexio, Kalender, Projekte), priorisiert, dispatcht Arbeitspakete an die
  Skill-Agenten, fuehrt Whitelist-Aktionen (Autonomie Stufe 3) selbst aus und liefert EIN
  Briefing mit fertigen Entwuerfen. Prueft Anfragen gegen den Service-Katalog (services/
  KATALOG.md) und schlaegt produktisierte Deliverables vor. Diesen Skill verwenden wenn der
  Benutzer fragt: "Hub-Chef", "Tagesbriefing", "was liegt an", "orchestriere den Tag",
  "Arbeitspakete verteilen", "konsolidiertes Briefing" — und automatisch via Scheduled Task
  hub-chef-taeglich (08:35). Dach ueber logbuch/heartbeat//morgen; Governance in
  logbuch/AKTIONS-WHITELIST.md.
---

# Hub-Chef — Dach-Orchestrator (Autonomie Stufe 3)

> Der Hub arbeitet nicht mehr als 14 parallele Melde-Loops, sondern als EINE orchestrierte
> Instanz: konsolidieren → priorisieren → dispatchen → handeln (Whitelist) → EIN Briefing.
> Spec: `wissen/spec/outputs/2026-07-02_hub-chef-harness_spec.md`.

## Contract
- **Trigger:** Scheduled Task `hub-chef-taeglich` (08:35, nach allen Morgen-Loops) oder auf
  Zuruf («Hub-Chef», «Tagesbriefing», «was liegt an»).
- **Inputs:** `logbuch/LOGBUCH.md` + `logbuch/fristen.md` (Kontroll-Schicht), die Tages-Reports
  der Morgen-Loops (twin, logbuch-radar, zahlungsabgleich, heartbeat, mahnwesen, ggf.
  ag-gruendung-monitor), Outlook-Mail/-Kalender (M365), bexio (`connectors/bexio.mjs`),
  Sync-/Remote-Task-Queues, `services/KATALOG.md`, `logbuch/AKTIONS-WHITELIST.md`.
- **Output:** EIN konsolidiertes Tagesbriefing als Mail an rj@raphaeljans.ch (QS via
  `korrektur`) + ausgefuehrte Whitelist-Aktionen (protokolliert) + bereitgestellte Entwuerfe
  (Mail-Drafts, Dokumente, Terminvorschlaege).
- **Nicht-Ziel:** Doppelspurigkeit — der Hub-Chef ersetzt keine Fach-Loops, er konsolidiert
  ihre Ergebnisse. Er sendet KEINE zweite Mail, wenn nichts Neues vorliegt (dann nur
  Logbuch-Vermerk «Lauf ohne Befund»).

## Ablauf (6 Phasen)

### Phase 1 — Signale einsammeln
Fristen-Register + Logbuch lesen (Horizont 7 Tage), heutige Loop-Ergebnisse aggregieren,
Mail-Eingang seit letztem Lauf sichten, bexio-Verzugsstand (`--verzug`) und Bankverifikation
(`--abgleich`) uebernehmen, Kalender naechste 7 Tage, offene Sync-/Remote-Tasks.

### Phase 2 — Priorisieren
Reihenfolge: (1) Geld/Fristen faellig <= 7 Tage, (2) externe Kunden/Behoerden warten auf JANS,
(3) laufende Projekte (KISPI, Albertstrasse, ...), (4) Service-Chancen (Anfragen, die auf den
Katalog passen), (5) Interna/Infrastruktur. Je Pendenz entscheiden: Whitelist-Aktion /
Entwurf / nur melden.

### Phase 3 — Dispatchen (Fan-out)
Arbeitspakete parallel an die zustaendigen Agenten/Skills vergeben (z.B. `email`-Agent fuer
Antwort-Entwuerfe, `mahnwesen` fuer Mahnvorschlaege, `pendenzenliste`/`protokoll` fuer
Projektstoff, Service-Pipelines gemaess `services/KATALOG.md`). Enge Scopes, klare Uebergabe.

### Phase 4 — Handeln (NUR Whitelist)
Aktionen A1–A5 gemaess `logbuch/AKTIONS-WHITELIST.md` ausfuehren — jede mit Guard-Pruefung
VORHER (externes Signal, nie Vermutung: Mahnaktion nur nach bestandenem `--abgleich`) und
Logbuch-Protokoll NACHHER (Was/Ausloeser/Guards/Ergebnis). Alles ausserhalb der Whitelist
wird Entwurf. Verbotsliste ist absolut.

### Phase 5 — Qualitaet
Jedes Erzeugnis durch `korrektur` (Rechtschreibung+Layout), ausgehende Texte zusaetzlich durch
das `twin`-Fidelity-Gate. Zahlen/Fakten gegen Quelle belegt, nie erfunden.

### Phase 6 — EIN Briefing
Struktur: **Erledigt (autonom)** → **Entwuerfe bereit (1 Klick)** → **Faellig/Droht (7 Tage)**
→ **Service-Chancen** → **Beobachten**. Kompakt, sechsstellige Daten, keine Doppelmeldung
von Dingen, die ein Fach-Loop heute schon gemailt hat (stattdessen Verweis). Versand an
rj@raphaeljans.ch; Vermerk im Logbuch.

## Compounding
Korrektur-Deltas (was Raphael am Briefing/Entwurf aendert) und neue Whitelist-Kandidaten im
Logbuch festhalten; Vorschlaege zur Whitelist-Erweiterung nur unterbreiten, nie selbst
aktivieren. Gute Briefings/Entwuerfe als Muster in die passende KB zurueckspielen.

## Verweise
- Governance: `logbuch/AKTIONS-WHITELIST.md` (Stufe 3, v1) · Kontroll-Schicht: Skill `logbuch`
- Services: `services/KATALOG.md` · Spec-Gate: Rule `spec-methode` fuer neue grosse Vorhaben
- QS: Skills `korrektur` + `twin` · System-Health: `heartbeat` (bleibt eigenstaendig)
