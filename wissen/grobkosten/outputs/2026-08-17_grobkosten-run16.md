# Grobkosten-Training — Run 16 (17.08.2026, unbeaufsichtigter Trainingsauftrag)

## Auftrag

Grobkosten-Training nach dem Lernmodell `wissen/grobkosten`: nächste offene Position selbst
bestimmen und abarbeiten. Kennwerte nie raten, Belege mit Quelle/Datenstand, Wiki/INDEX/
QUESTIONS pflegen, Output-Report ablegen, CHANGELOG-Eintrag.

## Ausgangslage geprüft

`wiki/QUESTIONS.md` (Eintrag 13.08.2026) hatte für diese KB formal die **Endbedingung** aus
`training/PROGRAMM.md` festgestellt: alle Zeilen in `training/quellen-inventar.md` sind
`[x]`/`[-]` geschlossen, kein `[ ]` mehr offen. Empfehlung dort: die KB nicht mehr routinemässig
takten, sondern nur bei (1) neuem Rohmaterial oder (2) expliziter Beauftragung erneut bearbeiten.

Dieser Lauf ist explizit beauftragt — Bedingung (2) erfüllt.

## Geprüft: ist die Endbedingung noch aktuell?

- `training/quellen-inventar.md`: weiterhin keine `[ ]`-Zeile.
- SharePoint (`AR - 01 Projekte`, `AR - 03 Studien`, `IMMO - 01 Projekte`, `IMMO - 03 KNOW-HOW`,
  `IMMO - 06 Kennwerte`) auf Dateien neuer als der letzte Rohbeleg (`raw/2304-waedenswil-
  residualwert-zwei-varianten.md`, 12.08.2026) durchsucht (`find -newer`, Tiefe unbegrenzt
  innerhalb der genannten Bibliotheken).
- Einziger Treffer: neue Aktivität ausschliesslich in `2619_KINDERSPITAL` — Healthcare, gemäss
  `training/PROGRAMM.md` explizit **nicht** Gegenstand dieser KB (gehört zu `kostenschaetzung`).
- Kein neuer `kostenkontrolle`-Output gefunden.

**Ergebnis:** Endbedingung bestätigt, kein neues Projektmaterial für diese KB verfügbar.

## Statt Leerlauf: Primärquelle des Baupreisindex nachgezogen

`training/PROGRAMM.md` verlangt bei fehlendem neuem Material eine Gegenprüfung statt
Fuellwerte. Der in Run 8 (27.07.2026) gefundene «Zürcher Index der Wohnbaupreise» war bisher
nur über eine Sekundärkopie (HEV Kanton Schwyz) bekannt, deren Stand bei 01.04.2025 endete.

- HEV-SZ-Kopie erneut geladen und mit `pdftotext -layout` geprüft: unverändert (Stand-Vermerk
  im PDF weiterhin «01.01.2026/se», endet bei 01.04.2025 = 1210.4).
- Primärquelle direkt geprüft (Stadt Zürich, Medienmitteilung, per WebFetch vollständig
  gelesen): neuer amtlicher Stand **01.10.2025 = 116.1 Punkte (Basis April 2020=100), +0.3 %
  ggü. 01.04.2025**. Rechnerisch konsistent mit der bereits bekannten Basis-2020-Spalte
  (115.8 → 116.1).
- Auf Basis 1939=100 umgerechnet (Kettenfaktor 10.4525, aus den beiden bekannten Werten
  01.04.2025 = 1210.4/115.8): ≈ **1'213.5**.
- Effekt auf den Stufe-4-Anker: **+0.26 %** gegenüber dem bisherigen 01.04.2025-Stand — unter
  der Darstellungsgenauigkeit der KB. Bewusst **nicht** in die Run-9-Einzelfallnormalisierung
  zurückgerechnet (z. B. Niederhasli 1'032 → rechnerisch ≈1'033, kein inhaltlicher Unterschied).
- Ein per WebSearch-KI-Zusammenfassung kolportierter weiterer Stand (01.04.2026, teils mit
  Hinweis auf eine Rebasierung) liess sich an keiner Primärquelle verifizieren (Presse-URL 404,
  ein vermeintlicher BFS-Beleg erwies sich als Alt-Dokument von 2023) — **nicht übernommen**,
  als offener Punkt für einen künftigen Lauf in `wiki/QUESTIONS.md` vermerkt.

## Geänderte/neue Dateien

- **Neu:** `raw/zuercher-index-wohnbaupreise-2025-10-update.md` (Roh-Beleg, Quelle + Abrufdatum
  + Umrechnung).
- **Geändert:** `wiki/kennwerte.md` (Abschnitt "Baupreisindex ZH" — neuer Anker vermerkt;
  Provenienz-Liste + Frontmatter nachgeführt).
- **Geändert:** `training/quellen-inventar.md` (Run-16-Abschnitt oben angefügt).
- **Geändert:** `wiki/QUESTIONS.md` (neuer Eintrag 17.08.2026: Endbedingung bestätigt + offener
  Punkt 01.04.2026-Indexstand).
- **Geändert:** `CHANGELOG.md` (dieser Lauf).
- **Neu:** dieser Report.

## Kein neuer Projekt-Kennwert

Kein neuer JANS-Einzelfall, keine Median-Bildung, keine Statusänderung von Seed auf belegt.
Die beiden strukturellen Blocker für eine MFH-Median-Bildung (Frage 1 BKP-1-9-vs-1-5-Scope,
Frage 2 Standard-Klassifikation) bleiben unverändert offen — beide sind laut mehrfacher
Vorprüfung archivseitig nicht mehr autonom lösbar (Bring-Schuld/Fachentscheid Raphael, siehe
`wiki/QUESTIONS.md` Einträge 04.–06.08.2026 sowie Cross-KB-Register
`wissen/immobilienbewertung/wiki/wissensluecken.md` D12/D13).

## Empfehlung für den nächsten Lauf

Unverändert gegenüber dem 13.08.-Eintrag: kein eigener Taktgeber für diese KB, nächster
inhaltlich ergiebiger Lauf bei (a) neuem Rohmaterial (Bauabrechnung eines abgeschlossenen
Mandats über `kostenkontrolle`) oder (b) einem amtlich bestätigten 01.04.2026-Indexstand
(`https://www.stadt-zuerich.ch/ziw` direkt prüfen, auf eine mögliche Rebasierung achten, bevor
übernommen wird).
