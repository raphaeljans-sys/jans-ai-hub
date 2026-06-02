# JANS Wissens-Layer — Meta-Schema (der KI-Bibliothekar)

## Was das ist

Der **Wissens-Layer** ist die dritte Schicht des JANS AI Hub neben der
**Fähigkeits-Schicht** (`skills/`) und der **Verhaltens-Schicht** (`rules/`):
eine sich selbst verbessernde, kompoundierende Wissensbasis. Statt dass Raphael
das Wissen von Hand ordnet, verlinkt und pflegt, übernimmt **Claude die
Bibliothekar-Rolle**: Rohmaterial wird reingekippt, Claude kompiliert es zu
gepflegten Wiki-Artikeln, verlinkt sie und hält sie sauber — Monat für Monat.

Jede Wissens-Domäne ist ein eigener **Knowledge Base (KB)** unter `wissen/`,
nach immer demselben Bauplan. Mehrere KBs unter einem Dach.

```
wissen/
  WISSEN-CLAUDE.md     ← diese Datei (Meta-Schema, gilt für alle KBs)
  <domäne>/
    CLAUDE.md          ← KB-spezifisches Schema (Fokus, Schreibregeln, Quellen)
    CHANGELOG.md       ← jede Änderung des Bibliothekars, datiert, neueste zuoberst
    raw/               ← Wühlkiste: reinkippen, NICHT ordnen, NICHT umbenennen
      _INGESTED.md     ← Register: was liegt in raw/ und wurde es eingearbeitet?
    wiki/              ← Claudes Domäne: kompilierte Artikel + INDEX.md. NIE von Hand editieren.
      INDEX.md         ← Inhaltsverzeichnis aller Artikel
      QUESTIONS.md     ← offene Fragen / Wissenslücken / ungelöste Spannungen
    outputs/           ← erzeugte Antworten/Briefings/Reports (JJJJ-MM-TT_titel.md)
```

## Die drei Ordner (verbindliche Bedeutung)

- **`raw/`** — Quell-Dump. Mail-Threads, Protokoll-Rohnotizen, Behörden-PDFs,
  Wettbewerbs-Auswertungen, Transkripte, Screenshots, Web-Clips. Reinkippen und
  vergessen. Claude liest hier, **editiert oder löscht hier nie**.
- **`wiki/`** — die kompilierte Wissensbasis. Claudes Domäne. Themen-Artikel mit
  Frontmatter und `[[backlinks]]`, ein `INDEX.md`, ein `QUESTIONS.md`. Raphael
  **editiert hier nie von Hand** — er stellt Fragen und kippt in `raw/` nach.
- **`outputs/`** — auf Anfrage erzeugte Reports/Briefings. Die guten **fliessen
  zurück ins Wiki** (Compounding): jede Frage macht die nächste besser.

## Artikel-Format (jede Datei in `wiki/`)

Frontmatter zuoberst, dann der Inhalt in Schweizer Hochdeutsch (echte Umlaute):

```markdown
---
title: <Artikel-Titel>
status: emerging | established | speculative
last_updated: JJJJ-MM-TT
sources: [<raw/-Dateiname>, <URL>, <Gesetzesartikel>]
links: [[anderer-artikel]], [[noch-einer]]
---

# <Titel>

<Inhalt. Jede nicht-triviale Aussage trägt eine Quelle aus `sources`.>
```

- `status`: `speculative` = Vermutung/unbelegt → Kandidat für Promotion zu
  `emerging`, sobald belegt; `established` = mehrfach belegt/bewährt.
- Backlinks `[[artikel-name]]` zeigen auf den Dateinamen (ohne `.md`) eines
  anderen Wiki-Artikels.

## Die Bibliothekar-Rolle

Verbindlich geregelt in der Rule `rules/wissens-bibliothekar.md` (immer aktiv via
`@`-Import). Autonomie-Stufe **active-with-flagging**: ingestieren, schreiben,
verlinken, indexieren **ohne Rückfrage** — jede Änderung wird im `CHANGELOG.md`
des betroffenen KB protokolliert. **Pause + Rückfrage nur vor Destruktivem**
(Artikel mergen, umbenennen, löschen, grosse Umstrukturierung).
Im Zweifel: das CHANGELOG ist die Wahrheit darüber, was geändert wurde.

## Der Compounding-Loop

Wenn Raphael eine Frage an einen KB stellt:
1. Antwort als Report nach `outputs/JJJJ-MM-TT_titel.md` schreiben (nicht nur in den Chat).
2. Prüfen, ob daraus ein neuer Wiki-Artikel entsteht oder ein bestehender wächst.
3. Änderung im CHANGELOG protokollieren.

## Der Health-Check

Der Skill `wissenscheck` (Schwester von `heartbeat`, aber für Wissens- statt
System-Gesundheit) auditiert einen KB monatlich: Widersprüche, kaputte Backlinks,
unbelegte Claims, RAW-Coverage, veraltete Artikel, Schreibregel-Verstösse,
Promotion-Kandidaten. Phase 1 läuft immer (auch unbeaufsichtigt als Scheduled
Task), Phase 2 (Aktionen ausführen) nur interaktiv.

## Neuen KB anlegen

1. `wissen/<domäne>/` mit `raw/ wiki/ outputs/` anlegen.
2. `CLAUDE.md` aus diesem Meta-Schema ableiten (Fokus-Bereiche + KB-Schreibregeln).
3. Leere `CHANGELOG.md`, `raw/_INGESTED.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md` anlegen.
4. Rohmaterial in `raw/` kippen → Claude bitten zu kompilieren (Build-Phase).

## Sync

`wissen/` liegt auf dem NAS und ist kanonisch (Rule `sync-kanonische-quelle.md`).
Nur auf dem NAS-Pfad editieren, danach NAS-Repo committen + pushen.
