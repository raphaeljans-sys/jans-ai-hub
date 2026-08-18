---
name: synergie-orchestrator
description: >-
  Synergie-Orchestrator des JANS AI Hub — prueft alle Prozesse/Harnesse (Skills, Agenten,
  Pipelines, Rules, Wissens-KBs, Connectoren) GEGENSEITIG auf Synergien, Doppelspurigkeiten
  und Luecken, pflegt das Synergie-Register und leitet daraus Geschaeftsmodell-/Service-
  Vorschlaege ab (Erweiterung services/KATALOG.md, neue Entwurfsprozesse). Diesen Skill
  verwenden wenn der Benutzer fragt: "Synergien pruefen", "Synergie-Check", "Harnesse
  gegenseitig pruefen", "wo greifen die Skills ineinander", "Doppelspurigkeiten finden",
  "Geschaeftsmodell-Vorschlaege", "welche neuen Services", "Prozess-Landkarte",
  "Synergie-Orchestrator". Abgrenzung: hub-chef orchestriert das operative TAGESgeschaeft,
  wissens-chef die Cross-KB-Konsistenz, masterclass/harness-review die reaktiven
  Korrektur-Cluster — dieser Skill prueft die STRUKTUR des Hub selbst (Prozess-Synergien
  und Geschaeftsmodell-Potenzial).
---

# Synergie-Orchestrator — die Struktur-Aufsicht des Hub

> Der Hub ist auf ueber 40 Skills, 30 Agenten, 17 Wissens-KBs und 20 Rules gewachsen.
> Dieser Orchestrator schaut nicht auf das Tagesgeschaeft (das macht `hub-chef`), sondern
> auf das SYSTEM: Wo greifen zwei Harnesse ineinander, ohne es zu wissen? Wo wird dasselbe
> zweimal gerechnet? Welche Kombination zweier Faehigkeiten ergibt einen neuen Service oder
> einen neuen Entwurfsprozess? Erkenntnisse kompoundieren im Synergie-Register.

## Contract

- **Trigger:** Auf Zuruf («Synergien pruefen», «Synergie-Check», «Geschaeftsmodell-
  Vorschlaege») sowie **taeglich 17:00 via Scheduled Task `synergie-lauf-taeglich`**
  (Takt umgestellt am 13.08.2026 auf Anordnung Raphaels; Vorgaenger
  `synergie-lauf-monatlich` stillgelegt, aber nicht geloescht, damit die Lauf-Historie
  01–04 zurechenbar bleibt). Freigegeben Raphael 15.07.2026, Erstlauf 15.07.2026.
  Drossel-Regeln (z.B. 260714) vor jedem Lauf pruefen und respektieren.
- **Tagestakt heisst kleineres Fenster, nicht flacherer Lauf:** Erster Schritt ist ein
  Uhr-Check gegen den nativen Synology-Log (`sync-tasks/log/selfcommit-JJJJMM.log`) —
  am 12./13.08.2026 ging die Stationsuhr zehn Tage nach und liess `git log --since`
  still 262 statt 1111 Commits liefern (`rules/betrieb-chronik.md` 260813e). Danach
  Frueh-Ausstieg bei strukturellem Nulldelta (kein neuer/geaenderter Skill, Agent,
  Rule, Connector, Service, Command, keine neue KB): eine Zeile ins CHANGELOG, fertig.
- **Inputs:** `CLAUDE.md` (Skill-/Agenten-/Rule-Inventar), `skills/*/SKILL.md`
  (Contract-Bloecke: Vorgelagert/Nachgelagert/Output-Ablage), `agents/*.md`,
  `services/KATALOG.md`, `wissen/*/CLAUDE.md` + `INDEX.md`, `connectors/`,
  `logbuch/AKTIONS-WHITELIST.md`, `rules/auto-verbesserungen.md`, die 5 Strategiepapiere
  unter `AD - 01 Geschaeftsfuerung/JANS AI/` (Investitionsplan, Leitfaden KI-Integration,
  MCP-nativer Hub, Ressourcen Claude Code, Typologischer KI-Entwurfsprozess).
- **Output-Ablage:** Laufbericht nach
  `wissen/koordination/outputs/JJJJ-MM-TT_synergie-lauf-NN.md`; kompoundierendes Register
  `wissen/koordination/SYNERGIE-REGISTER.md`; Geschaeftsmodell-/Konzeptdokumente nach
  `docs/konzepte/YYMMDD-<Titel>/` (MD+DOCX+PDF, Rule 260611); Service-Vorschlaege als
  ENTWURFS-Sektion, nie direkt in `services/KATALOG.md` aktivieren.
- **Abhaengige Rules:** `sync-kanonische-quelle` (nur NAS editieren, commit+push),
  `dateinamen-konvention`, `dokument-layout-standard`, `umlaute-konvention`,
  `wissens-bibliothekar` (CHANGELOG-Pflicht in `wissen/koordination/`), Korrektur-Pflicht
  (`korrektur`) fuer jedes Dokument-Deliverable, `spec-methode` (grosse neue Vorhaben
  zuerst als Spec aufgleisen).
- **Vorgelagert:** — (liest den gesamten Hub-Bestand).
- **Nachgelagert:** `spec` (erkannte Chance → Spec → Umsetzung), `hub-chef`
  (Service-Chancen ins Tagesbriefing), `masterclass/harness-review` (Promotion zu
  Rules/Skills), `honorarberechnung-sia102` (Bepreisung neuer Services).

## Abgrenzung zu den Schwester-Instanzen (kein Doppel)

| Instanz | Blickwinkel | Rhythmus |
|---|---|---|
| `hub-chef` | operatives Tagesgeschaeft (Fristen, Mails, Dispatching) | taeglich |
| `wissens-chef` (KB `koordination`) | Konsistenz ZWISCHEN Wissens-KBs (Widersprueche, Links) | periodisch |
| `masterclass/harness-review` | reaktive Korrektur-Cluster → Rules befoerdern | ~2-woechentlich |
| `wissenscheck` | Gesundheit EINER KB (7 Audits) | monatlich |
| **`synergie-orchestrator`** | **Struktur des Hub: Prozess-Synergien + Geschaeftsmodell** | taeglich 17:00 / auf Zuruf |

## Ablauf (5 Phasen)

### Phase 1 — Inventar ziehen
Skill-/Agenten-/Rule-/KB-/Connector-Inventar aus CLAUDE.md und den Contract-Bloecken
lesen. Je Skill festhalten: Inputs, Output-Ablage, Vorgelagert/Nachgelagert, genutzte
KBs/Connectoren. Das Inventar ist die Kanten-Liste des Prozess-Graphen.

### Phase 2 — Synergie-Matrix pruefen (die 6 Pruef-Fragen)
Fuer jedes relevante Skill-Paar (priorisiert: gleiche KB, gleiche Kennwerte, gleiche
Kunden-Deliverables) systematisch fragen:
1. **Ketten-Luecke:** Liefert A einen Output, den B braucht, aber nicht automatisch erhaelt?
2. **Doppelrechnung:** Rechnen A und B dieselbe Groesse aus verschiedenen Quellen
   (Kennwerte, Kontakte, Fristen)? → EINE fuehrende Quelle bestimmen.
3. **Compounding-Luecke:** Erzeugt A Erkenntnisse, die eine KB von B fuettern koennten,
   aber verpuffen?
4. **Service-Kombination:** Ergibt A+B zusammen ein verkaufbares Paket, das im
   `services/KATALOG.md` fehlt?
5. **Entwurfsprozess-Potenzial:** Ergibt die Kombination einen NEUEN Entwurfs-/
   Arbeitsprozess (im Sinn des Papiers «Typologischer KI-Entwurfsprozess»)?
6. **Redundanz/Prune:** Ist einer der beiden durch den anderen obsolet geworden (parkieren
   statt doppelt pflegen)?

### Phase 3 — Befunde verifizieren
Jeden Befund am Objekt belegen (Datei/Contract-Zeile zitieren), nie aus der Erinnerung.
Bei Hebungen mit Aussenwirkung (Service-Vorschlag, Skill-Umbau): kurze adversariale
Gegenpruefung («Was spricht dagegen? Existiert das schon woanders?»).

### Phase 4 — Register + Bericht schreiben
`SYNERGIE-REGISTER.md` nachfuehren (je Befund: ID, Paar, Typ 1–6, Befund, Empfehlung,
Status offen/umgesetzt/verworfen, Datum). Laufbericht nach `outputs/`. Eintrag in
`wissen/koordination/CHANGELOG.md`. Umsetzbare Kleinigkeiten (fehlender Querverweis in
einem SKILL.md-Contract) direkt setzen (active-with-flagging); alles Groessere als
Empfehlung an Raphael.

⚠ **Reihenfolge bei der ID-Vergabe (Lehre aus Lauf 11, 18.08.2026):** eine SYN-ID nie in
einem Baustein zitieren, bevor die Registerzeile geschrieben ist. Lauf 10 verwies in
`skills/ausschreibung/SKILL.md` auf «SYN-35», waehrend die hoechste vergebene ID SYN-34 war —
gemeint war SYN-34. Zeigt ein solcher Verweis ins Leere, faellt er auf; vergibt der naechste
Lauf die ID aber zuerst neu, wird aus dem toten Verweis ein **falscher**, der plausibel auf
den Nachbarbefund zeigt und danach bei keiner Pruefung mehr auffaellt. Beim Antreffen eines
toten Verweises deshalb **zuerst korrigieren, dann die neue ID vergeben**.

### Phase 5 — Geschaeftsmodell-Ableitung
Aus den Befunden Typ 4+5 die Geschaeftsmodell-Sicht aktualisieren: Vorschlaege fuer
neue Service-Pakete (ENTWURF fuer `services/KATALOG.md`), neue Entwurfsprozesse
(→ Rule `spec-methode`: als Spec aufgleisen), Prioritaet nach Hebel (Ertrag ×
Wiederverwendbarkeit × Reifegrad der beteiligten Harnesse). Kanonisches Referenzdokument:
`docs/konzepte/260715-Geschaeftsmodell-KI-Architekturbuero/`.

## Leitplanken

- **Nur beobachten und vorschlagen, nie eigenmaechtig umbauen:** Skills/Services werden
  nie ohne Freigabe geloescht, gemergt oder im Katalog aktiviert (analog Whitelist-Logik).
- **Drossel-Disziplin:** Laeufe sind leichtgewichtig (Inventar + gezielte Paare), kein
  Multi-Agent-Fan-out waehrend einer Drossel-Phase (Rule 260714); grosse Verifikations-
  Workflows nur in freigegebenen Intensivphasen.
- **Compounding:** Jeder Lauf baut auf dem Register auf — bereits geprueft Paare nicht
  neu aufrollen, ausser ein Beteiligter hat sich veraendert (CHANGELOG/Git-Log pruefen).
- Nichts erfinden; Schweizer Hochdeutsch, echte Umlaute.
