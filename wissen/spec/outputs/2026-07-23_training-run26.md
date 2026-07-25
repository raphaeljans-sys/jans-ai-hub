# Trainingslauf 26 — Spec-Methode (23.07.2026)

**Typ: Verifikationslauf.** Keine neue reale Spec seit Lauf 24 (achte Anwendung SYN-02, ausgewertet
21.07.); Lauf 25 (22.07.) war bereits Verifikation. Der legitime Beitrag ist damit kein neuer Wiki-
Feinschliff, sondern (a) eine Hält-Prüfung des in Lauf 25 gelandeten P1 und (b) der seit Lauf 13
(13.07., vor 10 Tagen) fällige Environment-Zählstand.

## 1. Stand

- Letzter Auswertungslauf: 24 (21.07., SYN-02 Vorbereitung→Interview-Delta 7/9). Lauf 25 (22.07.):
  P1 gelandet, am Artefakt verifiziert.
- Keine neue Spec: `find . -name "*_spec.md" -newermt 2026-07-20` liefert nur die beiden bekannten
  (SYN-02 20.07., ag-gruendung — letztere nur monitor-berührt). Hubweit kein neuer `_spec.md`.
- Quellen-Schuld F4 (Karpathy + Cherny) und F5 (Anthropic Plan-Mode) bleiben **vollständig
  eingelöst** — keine offene Primärquelle mehr einzuholen.
- Gate-Rule `rules/spec-methode.md` unverändert (mtime 21.06.), Skill `skills/spec/SKILL.md`
  unverändert (13.07.) → kein Drift.

## 2. Hält-Prüfung P1 (mail@-Blindstelle) — **hält, am Artefakt verifiziert**

Die Lauf-25-Landung (Schritt 1 des `ag-gruendung-monitor` primär via Apple Mail für mail@) hält einen
Tag später:

| Prüfung | Lauf 25 (22.07.) | Lauf 26 (23.07.) |
|---|---|---|
| mtime `ag-gruendung-monitor/SKILL.md` | 21.07.2026 07:49 | **21.07.2026 07:49 (unverändert)** |
| Schritt-1-Wortlaut mail@ | «IMMER via Apple Mail … PRIMAERKANAL» | identisch, plus Begründung «Blind-Fleck, bestätigt 19.07.2026» |
| Monitor nutzt den Kanal? | (Umstellung frisch) | **ja** — `fristen.md` führt «Monitor 22.07.2026 (neue Methodik, mail@ via Apple Mail …): weiterhin NICHTS NEUES» |

Damit ist die Lauf-25-Nebenlehre «ein "gelandet" hat wie eine "hält-an"-Diagnose ein Ablaufdatum»
einmal in Gegenrichtung quittiert: einen Tag später geprüft, hält es — und der Kanal wird produktiv
genutzt, nicht nur die Definition geändert. Der Faden bleibt geschlossen; kein weiterer P1-Sweep nötig,
solange der tägliche Monitor-Eintrag läuft.

## 3. Environment-Audit — Zählstand-Refresh (fällig seit Lauf 13)

Der letzte volle Environment-Sweep war Lauf 13 (13.07.). Der Artikel [[environment-jans-hub]] enthält
die Selbst-Instruktion «bei jedem Audit neu zählen statt die letzte Zahl vertrauen» — genau das wurde
getan. Gemessener Ist-Stand vs. der 13.07.-Tabelle:

| Baustein | 13.07. | 23.07. (gemessen) | Delta |
|---|---|---|---|
| KBs (`wissen/*/`) | 16 | 16 | — |
| Skills (`skills/*/`) | 47 | **49** | +2 |
| Rule-Dateien (`rules/*.md`) | 20 | **22** (19 @-importiert) | +2 Dateien |

Belegte, additive Faktenkorrektur im Bibliothekar-Mandat (kein Rule-/Skill-Verhalten geändert). Tabelle
+ Zählstand-Zeile + `last_updated` (→ 07-23) in [[environment-jans-hub]] nachgeführt. KB-interne
Gesundheit dabei mitgeprüft und **sauber**: alle `[[…]]`-Backlinks lösen auf (5 Ziele, 5 Dateien),
INDEX listet alle Artikel, Template `templates/spec-vorlage.md` vorhanden (F6), Gate-Test der Rule
konsistent mit dem Wiki, `last_updated`-Daten kohärent (verifier 07-22 zuletzt).

## 4. Umgesetzt

- `wiki/environment-jans-hub.md`: Zählwerte 47→49 Skills, 20→22 Rule-Dateien (19 @-importiert),
  Zählstand-Zeile auf 23.07. (Lauf 26) mit Delta-Angabe, `last_updated` → 07-23.
- `wiki/QUESTIONS.md` F2: Hält-Check-Datenpunkt 23.07. (P1 hält, Kanal produktiv genutzt).

## 5. Bewusst nicht getan

- **Keine erfundene Rule-/Gate-Änderung ohne Beleg** — ein Verifikationslauf, der ohne neuen Beleg ein
  Refinement erfindet, wäre selbst eine Gate-Überdehnung nach innen (F1-Überdehnungs-Gegentest bleibt
  weiterhin unbelegt: kein genervter Mittelfall in `outputs/`).
- **Keine redundante P1-Wiederholung** — der Faden ist seit Lauf 25 geschlossen; nur die eine Hält-Zeile
  ergänzt, nicht der ganze Verlauf gedoppelt.
- Task-Definition nicht angefasst (P1 ist erledigt; `logbuch`-Betrieb, ausserhalb KB-Mandat).
- Kein Mailversand.

## 6. Offen / nächstes

- **SYN-02-MVP-Bau:** Block 1 (Adapter `typologie_zu_variante.py`) noch **nicht gebaut** (Datei fehlt in
  `skills/volumenstudie/tools`) — startet «auf Freigabe». Nächster Auswertungspunkt bleibt, ob die Spec
  beim Bau als lebendes Dokument hält (kippt E1/Parzellenwahl noch in Block 1?). Sobald gebaut → nächster
  echter Auswertungslauf.
- **F1-Überdehnungs-Gegentest** (mittelgrosser, genervter Mittelfall) weiterhin unbelegt.
- **F3: Marketing/Text** bleibt die letzte offene Domänen-Zeile der Verifier-Zuordnung.
- **Sweep-Kandidat (aus Lauf 25):** wie viele **andere** Hub-Monitore melden Erledigt-Zustände, die nie
  an einem Artefakt verifiziert wurden? Kandidat für einen gezielten Monitor-Abnahme-Sweep (Skill
  `logbuch`/`heartbeat`, ausserhalb `wissen/spec`-Mandat).
