---
title: Interaktive Session (Fortsetzung) — E-R25-3 vollständig geschlossen, E-PL02-1/E-PL02-2 Registerpflege
datum: 2026-08-23
station: MacBook Pro / Claude Code (interaktiver Auftrag, Fortsetzung der Session mit CHANGELOG-Eintrag "15 offene Fragen geschlossen")
---

# Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, danach
in die Wiki-Artikel einarbeiten. Fortsetzung einer vorangehenden Interaktiv-Session desselben Tages,
die bereits 15 Fragen geschlossen und den Rest kategorisiert hatte (Raphael-Entscheidungen,
Cross-KB-Zuständigkeit, reine Sichtungsarbeit, Nicht-Befunde).

# Bearbeitet

## E-R25-3 (P3) — vollständig geschlossen

Offener Rest der Vorsession: ob AS 2026 357 (24.06.2026, in Kraft 01.08.2026) die Deponiezuordnung
mineralischer Bauabfälle in Anhang 5 VVEA materiell verändert. Dafür beide Fedlex-Filestore-
Konsolidierungsstände der VVEA (SR 814.600, ELI `eli/cc/2015/891`) geladen — Stand 01.01.2026 und
01.08.2026 —, HTML zu Text bereinigt, Anhang 5 aus beiden extrahiert und per
`difflib.SequenceMatcher` wortweise verglichen.

**Ergebnis:** Ziffer 2.3 (Deponietypen A-E für mineralische Bauabfälle, die in
`[[gebaeudeschadstoffe]]` zitierte Stelle) ist zwischen beiden Ständen **wortidentisch**. AS 2026
357 ändert in Anhang 5 nur die Ziffern 3 und 4 (Rauchgasreinigungsrückstände, Filterasche, Schlacke
aus Verbrennungsanlagen) — viermal derselbe Klammerzusatz «nach Artikel 3 Buchstabe a Ziffern 1–3»
bei «Siedlungsabfälle», eine Verweis-Präzisierung auf die bestehende Legaldefinition ohne
Grenzwertänderung. Art. 16 VVEA selbst wurde zusätzlich zeichengenau zwischen beiden Ständen
verglichen und ist ebenfalls unverändert.

Quelle: `https://www.fedlex.admin.ch/filestore/fedlex.data.admin.ch/eli/cc/2015/891/<JJJJMMTT>/de/html/…`,
`<JJJJMMTT>` = 20260101 bzw. 20260801, beide per HTTP 200 abgerufen und lokal verglichen (23.08.2026).

Eingearbeitet: `wiki/gebaeudeschadstoffe.md` (Frontmatter-Quellenliste + Warnkasten),
`wiki/QUESTIONS.md`.

## E-PL02-1 / E-PL02-2 — geschlossen (Registerpflege, keine neue Recherche)

Beide Punkte stammen aus dem Cross-KB-Handover der KB `normen` (PL-02-Strukturentscheid,
29.07.2026) und fragten, ob der Minergie-Ordner (79 PDF) und der eco-bau-Ordner (55 PDF) in
`PL - 02_Recht_Norm` bereits durch den Bestand dieser KB abgedeckt sind. Die vorige Session hatte
sie explizit als «reine PDF-Sichtungsarbeit ohne neue Recherchefrage» unangefasst gelassen.

Geprüft anhand `training/pdf-inventar.md`: Run 134 hat den Minergie-Baum vollständig rekursiv
vermessen (274 Dateien gesamt, 67 dokumentartig, davon 32 bereits über Basenamen-Abgleich in
Destillaten erfasst, 35 real offen — die genannten «79 PDF» waren als Arbeitsvorrat irreführend,
weil sie Seiten-Splits und längst destillierte Quellen mitzählten) und den Rest in den Runs 134/135
abgearbeitet. Der eco-bau-Ordner ist über die Runs 121/123/124/127/132 durchgearbeitet, inklusive
dem dokumentierten Befund, dass die flachen Dateien dort byte-identische Kopien von bereits
bekanntem Material sind. Run 148 bestätigt zusätzlich «Korpus PL-02 ist erschöpft».

Beide Fragen waren damit seit Wochen inhaltlich beantwortet, nur nie auf die ursprüngliche
Cross-KB-Frage zurückverlinkt. Kein neuer Fachinhalt, reine Registerpflege — in `wiki/QUESTIONS.md`
nachgetragen.

# Nicht angefasst

- **E-R148-1** (Normkauf SIA 380/1:2016) — Beschaffungsentscheid Raphaels, keine Recherche.
- **E-R149-4** (Voraussetzungszeile Scheduled Task `energie-training`) — Edit an
  `~/.claude/scheduled-tasks/energie-training/SKILL.md` von der Harness als sensible Datei
  blockiert (Permission verweigert). Der vorgeschlagene Ersatztext liegt seit Run 149 bereit und
  ist unverändert gültig; Ausführung braucht eine Bestätigung ausserhalb dieses automatisierten
  Wegs.
- **E-R150-3** — bewusst offen dokumentiert, im Quelldokument selbst nicht auflösbar.
- Alle Punkte, die eine andere KB führt (`normen`) oder JANS-eigene Projektdaten brauchen
  (E103, E94 u. a.) — unverändert seit dem vorigen Eintrag.

# Registerpflege

`wiki/QUESTIONS.md` (drei Einträge auf `[x]` gesetzt, mit Beleg), `wiki/gebaeudeschadstoffe.md`
(Frontmatter + Warnkasten ergänzt), `CHANGELOG.md`. Nach jedem Schreibvorgang `git diff --numstat`
geprüft (nur additive/erwartete Deltas, keine ungewollten Löschungen). Commit über
`nas-commit-now.sh` versucht — SSH-Verbindung zur Synology (`diskstation918.tail8265aa.ts.net`)
war von dieser Station aus nicht auflösbar (Tailscale offenbar nicht aktiv); die Edits liegen
unverändert auf dem NAS-Mount und werden vom 15-Minuten-Cron (`nas-selfcommit.sh`) miterfasst.

# Priorität für den nächsten Lauf

Unverändert gegenüber Run 150: der Normkauf SIA 380/1:2016 (E-R148-1) bleibt der einzige
werthaltige Engpass der KB. Die PDF-Korpora PL-02 und PL-04 sind beide nachweislich erschöpft
beziehungsweise abgearbeitet — die Steuerungsfrage aus Run 150 (fragengetrieben vs.
rücklaufgetrieben) bleibt eine Entscheidung Raphaels.
