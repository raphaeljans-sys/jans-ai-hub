# Grobkosten-Trainingslauf Run 8 (27.07.2026)

## Ausgangslage

Kollisionscheck (Rule 260724) via `ps`/PPID-Abgleich: einziger Prozess-Treffer war die eigene
Parent-Instanz dieses Laufs, keine echte Zweitinstanz auf diesem Host. Lauf konnte normal
fortgesetzt werden.

Stand vor diesem Lauf: 7 Trainingsläufe, mehrere Einzelfälle in `wiki/kennwerte.md`, aber keine
Median-Bildung (offene Fragen zu Standard-Klassifikation und BKP-1-9-vs-1-5-Bezeichnung). Zwei
konkrete offene Empfehlungen aus Run 6/7: (a) der "möglicher Baustein für Stufe 4" (Zürcher
Baukostenindex) war identifiziert, aber nie bewertet; (b) neue SharePoint-Quellen ungeprüft.

## Befunde

### 1. Registerlücke geschlossen: 2620 Albertstrasse 7

`raw/2620-albertstrasse.md` existierte bereits (Run 4, 25.07.2026, Hauptkontext-Extraktion aus
`AR - 03 Studien/2620 ALBERTSTRASSE 7/04 KT/Kosten/`), war aber nie in `wiki/kennwerte.md`,
`training/quellen-inventar.md` oder `CHANGELOG.md` nachgeführt — ein liegen gebliebener
Registrierungs-Schritt trotz gegenteiliger Behauptung in `raw/_INGESTED.md`. Nachgetragen:

- Dachausbau-Variante (350 m³ Umbauvolumen, CHF 2'500/m³, gehobener Standard, Bauherrschaft
  Nova Property Fund Management AG) ist jetzt der **erste reale Umbau-Einzelfall** dieser KB.
- `training/quellen-inventar.md` korrigiert (Run 2 hatte unter `AR - 01 Projekte` nichts
  gefunden; der reale Fund lag unter `AR - 03 Studien`).

### 2. Stufe-4-Baustein (Teuerungs-Normalisierung) extern gelöst

Der in `IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` geführte Zürcher
Baukostenindex bricht bei 01.04.2004 ab. Per WebSearch/WebFetch (Hauptkontext, kein
OneDrive-Zugriff nötig — Delegation an Background-Subagenten laut Memory
`feedback_background_agent_onedrive_stall` vermieden) eine bis 01.04.2025 fortgeführte Fassung
derselben amtlichen Reihe (Stadt Zürich, Publisher HEV Kt. Schwyz, Stand 01.01.2026) gefunden.
Werte bis 2004 sind in beiden Quellen identisch (907.6 auf Basis 1939=100) — echte Fortführung,
keine andere Methodik.

Neuer Roh-Beleg `raw/zuercher-index-wohnbaukosten-1939-2025.md` mit vollständiger Tabelle und
fertigen Umrechnungsfaktoren, z.B.:

- Preisstand 2004 → 2025: +33.4 %
- Preisstand 2020 → 2025: +15.8 %
- Preisstand 2022 → 2025: +7.2 %
- Preisstand 2023 → 2025: +1.6 %

In `wiki/kennwerte.md` als neuer Abschnitt "Baupreisindex ZH (Teuerungs-Normalisierung, Stufe
4)" dokumentiert. Damit ist die in `training/PROGRAMM.md` für Stufe 4 verlangte Voraussetzung
("belegter Baupreisindex ... in der KB hinterlegt") erstmals erfüllt.

## Nicht getan / offen für Run 9

- Die neuen Teuerungsfaktoren wurden noch NICHT auf die bestehenden Einzelfälle (Reckholdern,
  Haus Deuber, Niederhasli etc.) angewendet — reine Dokumentation des Instruments in diesem
  Lauf, Anwendung als nächster, risikoloser Schritt vorgeschlagen.
- Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Label-Vorlagentext) bleiben unverändert offen,
  nur durch Rückfrage an Raphael lösbar.
- Neue SharePoint-Bereiche `AR - 02 Wettbewerbe`, `AR - 04 Honorarauftraege`, `AR - 05 Transfer`
  weiterhin ungeprüft — Kandidat für einen künftigen Lauf, falls Option (a) oben erledigt ist.

## Register-Änderungen dieser Lauf

- `wiki/kennwerte.md` (zwei neue Abschnitte, Frontmatter-Sources, Run-8-Provenienz-Eintrag)
- `wiki/QUESTIONS.md` (neuer Run-8-Eintrag)
- `wiki/INDEX.md` (Run-8-Satz ergänzt)
- `training/quellen-inventar.md` (Run-8-Abschnitt, 2620-Zeile korrigiert)
- `raw/_INGESTED.md` (zwei neue Zeilen)
- `raw/zuercher-index-wohnbaukosten-1939-2025.md` (neu)
- `CHANGELOG.md` (neuer Eintrag)
