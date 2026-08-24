# QUESTIONS-Abarbeitung — Verifikationslauf 02:42 Uhr

**Auftrag:** Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. CHANGELOG-Kopf und der
Report des letzten Laufs (`outputs/2026-08-24_questions-abarbeitung-n41-1.md`, 00:22 Uhr)
zuerst gelesen.

## Kollisionscheck

`ps aux` vor Arbeitsbeginn: eigener Prozess (PID 49313, exakt dieser Auftragstext). Parallel
lief PID 49584 an der KB `projekt-lessons` (Korpus-Triage `buero-projekte`) — andere KB, andere
Datei, kein Konflikt.

## Befund

Der 00:22-Lauf hatte den einzigen zwischenzeitlich neu aufgetauchten Punkt (N41-1, VSS SN 640
273a fehlt im Bestand) bereits bearbeitet (Register-/Inventar-Zeile angelegt, Beschaffung bleibt
Bring-Schuld Raphael) und im selben Zug drei stale Abschnitte nachgezogen (Run 21 SWKI, Run 39
Lignatec, Run 30 PL-03). `wiki/QUESTIONS.md` ist seit `mtime` 00:19:53 unveraendert (Pruefzeit
02:42, keine Aenderung in gut zwei Stunden).

Eigene Gegenprobe mit demselben Skript-Filter (58 → nach den zwischenzeitlichen Schliessungen
weiterhin dieselben vier `##`-Abschnitte ohne Schliess-Marker) und Einzelpruefung jedes
Abschnitts:

1. **2026-07-28 (Wissens-Chef Run 19) — Leitplanke Gebäudekategorien I–XII.** Kein offener
   Handlungsbedarf: reine, adversarial verifizierte Merkregel (§ 47a Abs. 1 BBV I / SIA 380/1
   Anhang A Tab. 24), die dauerhaft stehen bleibt. Kein Schliess-Marker vorgesehen, weil kein
   Ticket im engeren Sinn.
2. **260731 — NIN: eigener Stromkreis für Geschirrspüler?** Zweifach bereits recherchiert
   (31.07. und 23.08.2026, je mit dokumentiertem Ergebnis). Echte Sackgasse: der massgebliche
   Normtext (SN 411000 bzw. NIN-Arbeitsblätter) liegt hinter der kostenpflichtigen
   `ninonline.electrosuisse.ch`-Anmeldung; freie Sekundärquellen (FAQ-Seiten, öffentliche
   Auszüge) behandeln die Detailfrage nachweislich nicht. Ein dritter Web-Recherche-Anlauf über
   dieselben Quellenarten wurde im 23.08.-Lauf bereits explizit als aussichtslos vermerkt — nicht
   wiederholt. Bleibt Bring-Schuld Raphael (NIN-Zugang oder Rückfrage Elektroplaner).
3. **260823 — N60-1 (AFC-Synopse 2017 zweimal destilliert).** Zusammenlegen/Löschen eines
   Artikels ist destruktiv (Rule `wissens-bibliothekar`) — Pause + Rückfrage ist hier die
   korrekte Behandlung, nicht ein weiterer Bearbeitungsschritt. Unverändert offen für Raphael.
4. **260823 — N60-2 (Vorschlag Methodik-Pflicht 14).** Neue Verhaltensregel für den
   Destillier-Agenten — Freigabepflicht analog MP 11/12/13 (Entscheid 17.08.2026). Nicht
   selbständig umgesetzt. Unverändert offen für Raphael.

Kein Abschnitt liess sich in diesem Lauf mit vertretbarem Aufwand und ohne Raten schliessen.

## Verifikation

Keine Datei in `wissen/normen/` verändert bis auf diesen neuen Output-Report und den
CHANGELOG-Eintrag (siehe dort). `git diff --numstat` nach dem Schreiben geprüft: nur neue,
untracked Dateien, kein bestehender Abschnitt berührt. Kein `git`-Schreibbefehl über den
SMB-Mount ausgeführt.
