# Normen-Training — MacBook Pro Run 9 (14.07.2026)

**Station:** MacBook Pro (Familien SIA + VKF) · **Modus:** Vertiefungsstufe (b) Retro-Verifikation
via Q&A-Selbstbefragung, gemäss Rule `auto-verbesserungen` Eintrag 260713 auf reduzierten Umfang
(gedrosselt zugunsten des Wettbewerbs-DNA-Fokus). Umsetzung der von Run 8 empfohlenen höchsten
Priorität: SIA 102:2020 (P1-Kernnorm, Grundlage des Skills `honorarberechnung-sia102`).

## Ausgangslage

Run 8 (06:04 Uhr) hatte das SIA/VKF-Basisinventar als vollständig bestätigt und als wichtigste
offene Vertiefung SIA 102:2020 identifiziert — bis dahin nur Ziff. 4.41 verifiziert, obwohl die
gesamte Norm bereits (unverifiziert) destilliert war.

## Umfang des Laufs

3 parallele Agenten, je ein Abschnitt der Norm, jeweils mit unabhängiger Q&A-Selbstbefragung
direkt am Original-PDF (`102.2020.pdf`, S. 6-41):

| Abschnitt | Seiten | Fragen | Bestanden | Lücken geschlossen | Fehler |
|---|---|---|---|---|---|
| Art. 1-3 (Vertragsbedingungen, Aufgaben/Stellung, Leistungsgliederung) | 6-14 | 24 | 22 | 2 | 0 |
| Art. 4 (Leistungsbeschrieb je Teilphase) | 15-35 | 25 | 11 | 13 | 0 |
| Art. 5-6 (Vergütungsgrundsätze, Honorarberechnung Zeitaufwand) | 36-41 | 22 | 14 | 8 | 0 |
| **Total** | | **71** | **47** | **23** (+1 wichtige Klausel Ziff. 1.4.1) | **0** |

## Wichtigster Einzelfund

**Art. 5 "Grundsätze der Vergütung von Architektenleistungen" fehlte im Destillat fast
vollständig** — nur indirekt über Querverweise in Art. 3/6 erwähnt, obwohl die gesamte Norm laut
Frontmatter bereits "komplett gelesen" war. Am praktisch bedeutsamsten:

- **Art. 5.8 (Auffangregel):** Ist die Vergütungsart zwischen AG und Architekt nicht vorgängig
  vereinbart, gilt zwingend Honorierung nach effektivem Zeitaufwand (Art. 6) — nicht Pauschale.
  Diese normative Rückfallregel fehlte komplett und ist für den Skill `honorarberechnung-sia102`
  direkt praxisrelevant.
- **Art. 5.3:** Die einzige normative Dreiteilung der Honorierungsarten (Zeitaufwand / Pauschale
  ohne Teuerung / Globale mit Teuerung) fehlte als eigenständige Fundstelle.

Zweitwichtigster Fund: **Art. 4.53 "Inbetriebnahme, Abschluss"** war im Destillat komplett
unerfasst (Sprung von 4.52 direkt zu Art. 6) — inkl. der Leitung der Garantiearbeiten mit
zweijähriger Rügefrist und der Schlussabrechnung, relevant für `unternehmerkontrolle`/
`kostenkontrolle`.

Drittwichtigster Fund für `kostenschaetzung`/`kostenkontrolle`: die normativ gestuften
**Genauigkeitsgrade der Kostenermittlung** — Kostenschätzung Vorprojekt (4.31) **± 15 %**,
Kostenvoranschlag Bauprojekt (4.32) **± 10 %** (jeweils mangels anderer Vereinbarung) — fehlten
komplett.

## Bestätigter Negativbefund

Der zentrale, bereits vorher im Destillat festgehaltene Befund **"SIA 102:2020 enthält keine
Honorarberechnung nach Baukosten-Prozentsatz (kein Art. 7)"** wurde von allen drei Agenten
unabhängig gegengeprüft und **bestätigt**: Das Inhaltsverzeichnis (S. 2-3) und der Volltext
(bis S. 41) zeigen, dass die Norm nach Art. 6 endet; S. 41 enthält nur Kommissionsliste und
Genehmigungsvermerk.

## Keine Fehler gefunden

Alle 47 direkt bestätigten Aussagen im bestehenden Destillat waren **inhaltlich korrekt und
fundstellengenau** — sämtliche 23 Beanstandungen waren fehlende Ziffern/Ergänzungen, keine
Falschaussagen. Das gilt auch für die komplexen Regelungen (Rangordnung 1.1, Verjährung/Rüge
1.9, Kündigung zur Unzeit 1.10, Qualifikationskategorien 6.2, Formel 6.3.3).

## Nachgeführt

`destillate/sia-102-2020.md` (Art. 4.3/4.4/4.53/4.6 sowie kompletter Art. 5 neu eingefügt,
Ziff. 1.4.1 Zurückbehaltungsverbot ergänzt, Teilphasenabschluss-Übersicht ergänzt, JANS-Praxis-
Transfer um `kostenschaetzung`/`behoerden-vorabklaerung`-Fundstellen erweitert, Verifikations-
Sektion angefügt, Status `established (verifiziert 260714)`), `training/norm-inventar.md`,
`destillate/INDEX.md`, `CHANGELOG.md`.

## Offen / nächster Lauf

Aus Run 8 verbleiben (unverändert, nächste Prioritäten):
- SIA 142:2009, SIA 143:2009 (Wettbewerbs-/Studienauftragsordnungen — Skill `wettbewerb`)
- SIA 400:2000 (CAD/Planbearbeitung), SIA 421:2006 (Nutzungsziffern GFZ/AZ/BMZ)
- SIA 100:2004 (Statuten, niedrige Priorität), SIA 102:2014/SIA 111:2003 (ersetzte Altausgaben,
  niedrige Priorität), SIA 108:2014
- VKF-BRL 28-15 Anerkennungsverfahren (Duplikat-Merge offen)
- Teil-Destillate mit Lücken: SIA D 0165, SIA 196/405/343.051/382-1/384-201/2056

Empfehlung: SIA 111:2003/SIA 108:2014 (weitere P1-Kernnormen) oder SIA 400/421 als nächste
Vertiefungskandidaten, da beide direkt in `machbarkeit`/`volumenstudie` referenziert werden.

Gemäss Rule `auto-verbesserungen` 260713 bleibt dieser Loop auf 1x täglich (01:20) gedrosselt,
solange der Wettbewerbs-DNA-Harness den Token-Fokus des MacBook Pro trägt. Dieser Lauf war eine
gezielte, eng begrenzte Ergänzung zu Run 8 (heute bereits erfolgt) und keine Rückkehr zum
VOLLGAS-Batchbetrieb.

## Git-Disziplin

Nur lokal committet (kein Push) — der git-auto-sync-Job übernimmt Pull/Push gebündelt gemäss
Rule `sync-kanonische-quelle.md`.
