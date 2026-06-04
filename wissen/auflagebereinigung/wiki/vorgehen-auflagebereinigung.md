---
title: Vorgehen Auflagebereinigung + Plan-/Dokumentenliste (JANS-Standard)
status: emerging
last_updated: 2026-06-04
sources: [Vorabzug Bauentscheid 2619-KISPI Stadt ZH, JANS-Bauleitungspraxis]
links: [[auflagentypen-gewerkzuteilung]], [[fristenlogik-bauentscheid-zh]], [[aemter-stadt-zuerich]], [[brandschutz-auflagen-qss]]
---

# Vorgehen Auflagebereinigung (JANS-Standard)

Der wiederholbare Prozess vom Bauentscheid zur gerankten, nachführbaren
Plan-/Dokumentenliste. Dieser Artikel ist die Anleitung, die der Skill
`auflagebereinigung` operationalisiert.

## Prozess (5 Schritte)

1. **Extrahieren** — Bauentscheid lesen, jede Auflage strukturiert erfassen
   (Ziffer, Wortlaut/Kurztext, Erwägungs-Bezug, Frist-Hinweis, Amt-Hinweis,
   SRZ-Marker). Auch die **Vorbemerkungen** (Ziff. II.1–3) — sie tragen Frist + Amt.
   → Agent `auflagen-extraktor`.
2. **Gewerk zuteilen** — jede Auflage einem Gewerk/Planer zuordnen (BRA/HLK/SAN/ELE/
   FKO/ARC/BAU) gemäss [[auflagentypen-gewerkzuteilung]] + Projekt-Adressliste; je
   Auflage die konkreten **Deliverables** benennen (eine Zeile pro Plan/Dokument).
   → Agent `planer-zuteiler`.
3. **Amt + Frist bestimmen** — je Deliverable das einreichende Amt
   ([[aemter-stadt-zuerich]]) und die Frist ([[fristenlogik-bauentscheid-zh]]) setzen;
   Doppel-Adressierung (Fachstelle + Bestätigung an AfB) vermerken.
   → Agent `amts-fristen-zuordner`.
4. **Liste erzeugen** — Plan-/Dokumentenliste als XLSX-Trackingliste, gruppiert nach
   Planer, mit Status «offen». Doppelte Ablage (Projektordner + AI-Hub-Output).
5. **Nachführen + Compounding** — Status pflegen, fällige Fristen melden; gewonnene
   Erkenntnisse (neue Amt-Zuteilung, Behörden-Auskunft) ins Wiki zurückschreiben.
   → Agent `auflagen-tracker` + CHANGELOG.

## Format der Plan-/Dokumentenliste

Spalten (Goldstandard 2619-KISPI):

| Spalte | Inhalt |
|---|---|
| Nr. | laufend |
| Planer | Gewerk-Kürzel (Gruppierung) |
| Plan- / Dokument | das konkrete Deliverable |
| Auflagepunkt | «Ziff. II.X – Kurztext» (+ Erwägung/SRZ-Marker) |
| für Amt | Adressat (AfB/FP/GVZ/UGZ/StB/TBA/StaPo/GSZ; «via BRA/FKO» bei Beitrag) |
| Frist | vor Baubeginn / 4 Wo vor Baubeginn / vor Arbeitsvergabe / vor Ausführungsbeginn / vor Inbetriebnahme / während Bauzeit / laufend |
| Status | offen / in Arbeit / eingereicht / genehmigt / erledigt / hinfällig |

- **Eine Zeile = ein Deliverable.** Mehrere Zeilen dürfen auf dieselbe Auflage-Ziffer zeigen.
- **Gruppiert nach Planer**, mit Planer-Kopfzeile (Code · Rolle · Person · Firma).
- Legenden unter der Tabelle: Ämter, Fristen (inkl. Vorbemerkungen-Mechanik), Hinweise.
- Generator: `skills/auflagebereinigung/tools/build_auflagenliste.py` (Vorlage anpassen).

## Prinzipien

- **Vollständigkeit vor Eleganz:** Jede Auflage erscheint, auch rein organisatorische
  ohne Dokument (Plan-/Dokument = «kein separates Dokument»). Nichts darf durchfallen.
- **Nichts raten:** Ziffern, Adressen, Verfügungsnummern wörtlich; unklare Zuteilung →
  [[QUESTIONS]] + im Projekt klären.
- **Vorabzug ≠ rechtskräftig:** Steht «Vorabzug» im Titel, ist der Stand vorläufig — beim
  definitiven Entscheid Diff prüfen.
- **Korrektur-Pflicht:** Begleittexte/Mails vor Versand durch Skill `korrektur`.
