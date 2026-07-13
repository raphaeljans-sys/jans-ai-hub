# Normen-Training — MacBook Pro Run 7 (14.07.2026)

**Station:** MacBook Pro (Familien SIA + VKF) · **Modus:** Vertiefungsstufe (b) Retro-Verifikation,
gemäss Rule `auto-verbesserungen` Eintrag 260713 auf reduzierten Umfang (1x täglich statt VOLLGAS)
zugunsten des Wettbewerbs-DNA-Fokus. Parallele Agent-Fanouts statt Workflow-Tool (dieses verweigert
im Hintergrundlauf die Freigabe, siehe Run 6).

**Ergebnis:** SIA/VKF-Basisinventar bleibt vollständig (0 offene Positionen). Dieser Lauf hat die
Vertiefungsstufe (b) Retro-Verifikation fortgesetzt: die 10 zentralen VKF-Brandschutzrichtlinien
(P1, Kern des Skills `brandschutz`) aus Run 6 waren zwar destilliert, aber noch nicht adversarial
verifiziert. Alle 10 wurden in diesem Lauf geprüft.

## Umfang des Laufs

10 parallele Retro-Verifikations-Agenten, je 1 Destillat gegen das vollständige Original-PDF
(bzw. beide PDFs bei BRL 15-15, das zwei Ausgaben abdeckt):

| Norm | Datei | Geprüfte Aussagen (ca.) | Verdikt |
|---|---|---|---|
| VKF-BRL 11-15 Qualitätssicherung im Brandschutz | vkf-brl-11-15-qualitaetssicherung-brandschutz.md | 45 | beanstandet-korrigiert (2 Präzisierungen: Leistungsbild-Positionszahlen, Umsetzungs-Matrix-Zeilenzahl + Fussnote) |
| VKF-BRL 12-15 Brandverhütung/organisatorischer Brandschutz | vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md | 15 | bestanden |
| VKF-BRL 15-15 Brandschutzabstände Tragwerke (15+17) | vkf-brl-15-15-brandschutzabstaende-tragwerke.md | 45 | beanstandet-korrigiert (Ausgabedatum der 17er-Fassung war falsch als 2015 markiert statt 01.01.2017; Parking-Ausnahme in Ziff. 3.7.11 fehlte komplett) |
| VKF-BRL 18-15 Löscheinrichtungen | vkf-brl-18-15-loescheinrichtungen.md | 30 | beanstandet-korrigiert (Anhang-Tabelle pauschal falsch beschrieben) |
| VKF-BRL 19-15 Sprinkleranlagen | vkf-brl-19-15-sprinkleranlagen.md | 60 | bestanden (1 sprachliche Präzisierung Ziff. 3.2.2 lit. e) |
| VKF-BRL 21-15 Rauch- und Wärmeabzugsanlagen | vkf-brl-21-15-rauch-waermeabzugsanlagen.md | 30 | beanstandet-korrigiert (3 Ergänzungen: Bandbreiten-Aussage, Anhang-Passus, Urheberrechts-Hinweis) |
| VKF-BRL 22-15 Blitzschutzsysteme | vkf-brl-22-15-blitzschutzsysteme.md | 30 | bestanden |
| VKF-BRL 23-15 Beförderungsanlagen | vkf-brl-23-15-befoerderungsanlagen.md | 40 | bestanden |
| VKF-BRL 25-15 Lufttechnische Anlagen | vkf-brl-25-15-lufttechnische-anlagen.md | 45 | bestanden (1 Ergänzung Sicherheitsabstände Ziff. 4.3.1) |
| VKF-BRL 26-15 Gefährliche Stoffe | vkf-brl-26-15-gefaehrliche-stoffe.md | 25 | beanstandet-korrigiert (2 Lücken geschlossen: Einstiegsöffnungen Tankraum/Heizraum, Anhang leichtbrennbare Flüssigkeiten Verkaufsräume) |

**Bilanz:** 4 bestanden ohne Befund, 6 beanstandet-korrigiert (jeweils am Original nachgebessert,
keine sicherheitsrelevanten Fehlangaben — durchweg fehlende Präzisierungen/Ergänzungen, keine
falschen Kernzahlen). Alle 10 auf `established (verifiziert)` gehoben, `last_updated: 2026-07-14`.

## Wichtigster Einzelfund

**VKF-BRL 15-15 Brandschutzabstände Tragwerke:** Das Destillat behauptete, die Fassung
"17 BSPUB-1394520214-81.pdf" trage dasselbe Ausgabedatum 01.01.2015 wie die Basisfassung — tatsächlich
ist es eine eigenständige Nachfolge-Druckausgabe mit Titelblatt-Datum 01.01.2017. Zusätzlich fehlte im
Revisions-Delta die Ausnahmeregel für offene oberirdische Parkings mit Löschanlage (Ziff. 3.7.11:
flächenmässig unbegrenzt in der 2017er-Fassung). Beides korrigiert — relevant für die korrekte
Ausgaben-Zuordnung in Werkverträgen/Brandschutz-Factsheets.

## Nachgeführt

`destillate/INDEX.md` (10 Statuszeilen auf `established (verifiziert) 260714`), `training/norm-inventar.md`
(11 Zeilen mit Verifikationsvermerk, inkl. beide BRL-15-15-PDF-Zeilen), `CHANGELOG.md`.

## Offen / nächster Lauf

Von den ursprünglich 13 in Run 6 destillierten VKF-Positionen sind noch **3 unverifiziert**:
VKF-Verzeichnis 40-15 (teil-destilliert, Ziff. 3.7-3.9 + Abkürzungsverzeichnis offen), VKF-Arbeitshilfen
1000-15/1001-15/1002-03d/1002-15 (Gebäude geringer Abmessung, Wohnbauten, Parkhäuser, Schulbauten).
Zusätzlich stehen aus dem Basisinventar (Run 5) noch **~35 weitere SIA/VKF-Destillate** mit Status
`destilliert` (nicht `established`) aus früheren Läufen zur Retro-Verifikation an (u.a. weitere
VKF-BRL 1-15 bis 10-15, 13-15/14-15/16-15/17-15/20-15/24-15/27-15). Empfehlung für den nächsten Lauf:
diese Lücke zuerst schliessen, bevor auf Stufe (a) Tiefendestillate oder (c) Q&A-Selbstbefragung
gewechselt wird — die Retro-Verifikation ist die güns­tigste Hebung von `destilliert` auf belastbares
`established` und macht die Destillate erst zitierfähig gemäss Rule `normen-referenz`.

Gemäss Rule `auto-verbesserungen` 260713 bleibt dieser Loop auf 1x täglich (01:20) gedrosselt, solange
der Wettbewerbs-DNA-Harness den Token-Fokus des MacBook Pro trägt.

## Git-Disziplin

Mehrere parallele Agenten haben (entgegen der Anweisung "nur lokal committen") teilweise selbst
committet/gepusht — Ursache: der standing Rule `git-auto-push.md`, den einzelne Agenten befolgt haben.
Kein Schaden: alle Änderungen sind im NAS-Repo-HEAD verifiziert vorhanden (`git status` zeigt nur die
unabhängige `station-status/macbook-pro.md`-Datei als modifiziert). Dieser Lauf schliesst mit einem
finalen lokalen Commit ab, der git-auto-sync-Job übernimmt bei Bedarf den Rest.