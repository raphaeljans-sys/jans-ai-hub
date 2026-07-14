# Normen-Training — MacBook Pro Run 8 (14.07.2026)

**Station:** MacBook Pro (Familien SIA + VKF) · **Modus:** Vertiefungsstufe (b) Retro-Verifikation,
gemäss Rule `auto-verbesserungen` Eintrag 260713 auf reduzierten Umfang (1x täglich statt VOLLGAS)
zugunsten des Wettbewerbs-DNA-Fokus. Parallele Agent-Fanouts (kein Workflow-Tool, siehe Run 6/7).

**Ergebnis:** SIA/VKF-Basisinventar bleibt vollständig (0 offene `[ ]`-Positionen). Dieser Lauf hat
die von Run 7 empfohlene Lücke geschlossen: alle bisher unverifizierten VKF-Erläuterungen
(101-15 bis 108-15) und VKF-Arbeitshilfen (1000-15 bis 1002-15) sowie das VKF-Verzeichnis 40-15
sind jetzt vollständig retro-verifiziert. Zusätzlich wurde SIA 723:2001 erstverifiziert (trug
Status "established" ohne je durchlaufene Verifikation).

## Umfang des Laufs

14 parallele Agenten: 13 Retro-Verifikationen + 1 Destillier+Verifikations-Kombination
(VKF-Verz 40-15, das noch eine Lücke Ziff. 3.7-3.9 + Abkürzungsverzeichnis hatte).

| Norm | Datei | Geprüfte Aussagen (ca.) | Verdikt |
|---|---|---|---|
| VKF-BSE 101-15 Atrien und Innenhöfe | vkf-brl-101-15-atrien-innenhoefe.md | 35 | beanstandet-korrigiert (Innenhof-Doppeldefinition Ziff.1.3.2 vs. 2.5 waren verschmolzen, jetzt getrennt ausgewiesen) |
| VKF-BSE 102-15 Doppelfassaden | vkf-brl-102-15-doppelfassaden.md | 35 | bestanden |
| VKF-BSE 103-15 Cheminées | vkf-brl-103-15-cheminees.md | 45 | bestanden |
| VKF-BSE 104-15 Spänefeuerungen | vkf-brl-104-15-spaenefeuer.md | 22 | beanstandet-korrigiert (kosmetische Präzisierung Ziff.8.1.1, keine inhaltliche Abweichung) |
| VKF-BSE 105-15 Schnitzelfeuerungen | vkf-brl-105-15-schnitzelfeuerung.md | 45 | bestanden |
| VKF-BSE 106-15 Pelletsfeuerungen | vkf-brl-106-15-pelletsfeuerung.md | 35 | bestanden |
| VKF-BSE 107-15 Flüssiggasanlagen | vkf-brl-107-15-fluessiggasanlagen.md | 55 | bestanden (2. unabhängige Verifikationsrunde) |
| VKF-BSE 108-15 Betriebsbereitschaft BFS | vkf-brl-108-15-betriebsbereitschaft-bfs.md | 45 | bestanden |
| VKF-Verzeichnis 40-15 Weitere Bestimmungen | vkf-verz-40-15-weitere-bestimmungen.md | ~140 | vervollständigt (Ziff. 3.7-3.9 + Abkürzungsverz. ergänzt) + beanstandet-korrigiert (2 Ergänzungen BSR 26-15) |
| VKF-Arbeitshilfe 1000-15 Geringe Abmessung | vkf-ah-1000-15-gebaeude-geringer-abmessung.md | 45 | bestanden |
| VKF-Arbeitshilfe 1001-15 Wohnbauten | vkf-ah-1001-15-wohnbauten.md | 60 | beanstandet-korrigiert (RWA-Abströmöffnungspflicht Ziff.7.5 präzisiert; RWA-Parkings Ziff.12.2 Abs.9-10 ergänzt) |
| VKF-Arbeitshilfe 1002-03d Parkhäuser | vkf-ah-1002-03-parkhaeuser.md | 45 | beanstandet-korrigiert (Tabelle 2, 4 Geschosse: R 30 statt fälschlich EI 30 — sicherheitsrelevant) |
| VKF-Arbeitshilfe 1002-15 Schulbauten | vkf-ah-1002-15-schulbauten.md | 60 | beanstandet-korrigiert (Türen-Ausnahmeregel Ziff.7.4.6 für Räume ≤20 Personen ergänzt) |
| SIA 723:2001 (NVB zu SIA 380/1) | sia-723-2001.md | 24 | bestanden (Erstverifikation nachgeholt) |

**Bilanz:** 8 bestanden ohne Befund, 6 beanstandet-korrigiert (Ergänzungen/Präzisierungen). Nur
eine Korrektur ist sicherheitsrelevant im engeren Sinn (VKF-AH 1002-03d Parkhäuser, Tragwerk-Klasse
R statt EI bei 4 Geschossen) — relevant für Brandschutz-Factsheets zu Parkhaus-Tragwerken. Alle
14 Destillate jetzt `established (verifiziert 260714)`, `last_updated: 2026-07-14`.

## Wichtigster Einzelfund

**VKF-Arbeitshilfe 1002-03d Parkhäuser, Tabelle 2 (Sprinklerkonzept):** Das Destillat behauptete
bei 4 Geschossen "EI 30 (nbb)" als Tragwerksanforderung — das Original weist an dieser Stelle
korrekt **R 30 (nbb)** aus (Tabelle 2 betrifft das Tragwerk/R-Werte, die EI-Werte gehören zu
Tabelle 4 für brandabschnittsbildende Wände/Decken). Relevant, weil R- und EI-Klassifizierungen
unterschiedliche Bauteilanforderungen (tragend vs. raumabschliessend) bedeuten und in einem
Werkvertrag/Brandschutz-Factsheet für ein Parkhaus-Tragwerk zu einer falschen Massnahme führen
könnten.

## Nachgeführt

`destillate/INDEX.md` (14 Statuszeilen auf `established (verifiziert) 260714`),
`training/norm-inventar.md` (14 Zeilen mit Verifikationsvermerk), `CHANGELOG.md`.

## Offen / nächster Lauf

Damit sind **alle** VKF-Erläuterungen (100-108) und VKF-Arbeitshilfen (1000-1002) sowie das
VKF-Verzeichnis 40-15 vollständig retro-verifiziert — die VKF-Familie der Vertiefungsstufe (b)
ist für den Kernbestand abgeschlossen. Offen bleiben in der SIA-Familie noch folgende
`destilliert`- bzw. `Teil-Destillat`-Positionen ohne unabhängige Verifikation:

- **SIA 102:2020** (P1-Kernnorm, nur Ziff. 4.41 verifiziert) — wichtigste offene Position,
  sollte im nächsten Lauf priorisiert werden (Skill `honorarberechnung-sia102` stützt sich
  direkt darauf).
- SIA 142:2009, SIA 143:2009 (Wettbewerbs-/Studienauftragsordnungen — relevant für Skill `wettbewerb`)
- SIA 400:2000 (CAD/Planbearbeitung), SIA 421:2006 (Nutzungsziffern GFZ/AZ/BMZ)
- SIA 100:2004 (Statuten, niedrige Priorität), SIA 102:2014/SIA 111:2003 (ersetzte Altausgaben,
  niedrige Priorität), SIA 108:2014
- VKF-BRL 28-15 Anerkennungsverfahren (Duplikat-Merge mit `vkf-brl-anerkennungsverfahren.md` noch offen)
- Teil-Destillate mit Lücken: SIA D 0165 (nur 5-S.-Fragment, Vollversion 73 S. in xalt),
  SIA 196/405/343.051/382-1/384-201/2056 (jeweils Kern- bzw. Teilbereich gelesen)

Empfehlung nächster Lauf: SIA 102:2020 vervollständigen (grösste Norm, mehrere Sessions nötig,
segmentiert via Workflow/parallele Agenten je Kapitel) — höchster Praxiswert für den Hub.

Gemäss Rule `auto-verbesserungen` 260713 bleibt dieser Loop auf 1x täglich (01:20) gedrosselt,
solange der Wettbewerbs-DNA-Harness den Token-Fokus des MacBook Pro trägt.

## Git-Disziplin

Ein Agent (VKF-Verz 40-15) hat entgegen der Anweisung "nur lokal committen" selbst committet und
gepusht (Commit `252d1e90`) — wie in Run 7 dokumentiert, folgt einzelnen Agenten die standing
Rule `git-auto-push.md`. Kein Schaden. Dieser Lauf schliesst mit einem finalen lokalen Commit für
die restlichen 13 Positionen (INDEX.md, norm-inventar.md, CHANGELOG.md, Destillat-Dateien); der
git-auto-sync-Job übernimmt den Push.
