# QUESTIONS-Abarbeitung 13 — N58-4 (VKF-Restindex) präzisiert

- **Datum:** 23.08.2026
- **Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
  Aussage mit Norm, Ausgabe und Ziffer, Verifikationsstatus des Destillats vor Zitat lesen (nur
  `established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
  weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
  CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen.
- **`ps aux` geprüft:** eigener Prozess (PID 14960) erkannt. Zweiter `claude -p`-Prozess (PID
  13981) läuft parallel an derselben KB `normen` mit Auftrag «SIA-Sweep fortsetzen» — anderer
  Abschnitt (Register-Zeilen ohne Datei im Haus), kein Kollisionsrisiko mit dem hier bearbeiteten
  N58-4 (VKF-Index). Dritter Prozess (PID 14745) arbeitet an KB `baurecht`, fremder Scope.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: QUESTIONS-Abarbeitung 12) und
  `outputs/2026-08-23_questions-abarbeitung12.md`.

## Ausgangslage

Run 12 hatte alle selbständig lösbaren QUESTIONS-Punkte für ausgeschöpft erklärt und auf drei
grössere, bewusst zurückgestellte Linien verwiesen: N58-1 (Abdeckungsrichtung, Systemaudit),
N58-4 (Restindex, 35 von 83 Indexeinträgen gesweept) oder ein neuer Bring-Schuld-/Sweep-Fund.
Eigener Scan des gesamten `QUESTIONS.md` (alle Abschnittsüberschriften) bestätigte: kein weiterer
selbständig lösbarer Einzelpunkt neben diesen drei Linien. N58-1 ist per Definition ein
Systemaudit (Abdeckung jedes VKF-Bestandsdestillats gegen die eigene Fassung) und passt nicht in
das Format eines einzelnen Laufs. N58-4 liess sich dagegen auf einen bounded,
primärquellen-gestützten Rechercheschritt verengen.

## Durchgeführt

`bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015` direkt per `curl` abgerufen (Astro-
JSON-Payload, Extraktion über das Feld `"title"` — dieselbe Technik wie in Run 42 etabliert, kein
reiner Text-Grep). Ergebnis: der Index ist auf **94 aktuelle deutschsprachige Einträge**
gewachsen (elf Kategorien a–k: IOTH, Norm, Richtlinien, Verzeichnisse, Erläuterungen,
Arbeitshilfen, Merkblätter, Musterweisungen, Reglemente, Formulare, Checklisten) — nicht mehr 83
wie im ursprünglichen Run-58-Snapshot.

**Kein neuer, bisher unbekannter Fassungswechsel gefunden.** Der einzige aktuell laufende
(BRL 12-15/26-15, Teilrevision 2026, IOTH-Beschluss 06.03.2026, in Kraft seit 01.04.2026) ist
bereits vollständig in `destillate/vkf-teilrevision-2026-pyrotechnik.md` dokumentiert — hier nur
gegengeprüft: der Index trägt korrekt «Gültig ab 01.04.2026» bzw. «Gültig bis 31.03.2026» bei
beiden Publikationen.

Die vage Sammelfrage («48 Einträge ungeprüft, mindestens zwei Klassen könnten Destillate
verdienen») in zwei präzise, mit Titeln belegte Teile aufgelöst:

### 1. IOTH-Beschlüsse «temporäre Unterbringung von Asylsuchenden»

Exakt **sechs** Beschlüsse im Index (nicht «fortlaufend», eine feste Reihe):
2015-12-23, 2017-03-03, 2019-09-19, 2021-09-23, 2023-09-21, 2025-09-18. Rund zweijährlicher
Rhythmus, identischer Titel bei jedem Beschluss. Eigene Einschätzung (keine Primärtext-Lektüre):
das Muster zeigt eine befristete Verwaltungsmassnahme zur temporären Unterbringung, kein
bauordnungsrelevantes Dauerrecht für die üblichen JANS-Projekttypen (Gesundheitsbau, Wohnbau,
Gewerbe). Bewusst zurückgestellt — keine Destillation beauftragt.

### 2. «2000er-Reihe» — von vage zu präzise

Der Index führt **2000-15 bis 2011-15 durchgehend** (12 Positionen), die KB destilliert bisher
nur zwei (2001-15 Solaranlagen, 2005-15 Lithium-Ionen-Batterien). Zehn benannte Lücken:

| Nr. | Titel | Praxisrelevanz (eigene Einschätzung) |
|---|---|---|
| 2000-15 | Brandschutzanwendung im Einzelfall | gering, Verfahrensnorm |
| 2002-15 | Zeltbauten für temporäre Veranstaltungen | gering, Nischenanwendung |
| 2003-15 | Brandschutzpläne/Flucht- und Rettungswegpläne/Feuerwehrpläne (+ Musterpläne/Symbole) | **hoch** — Standard-Deliverable in jedem Bauprojekt |
| 2004-15 | Durchführungen durch brandabschnittbildende Bauteile | mittel |
| 2006-15 | Gewährleistung der Betriebsbereitschaft von BFS | **ungeklärt, siehe Nebenbefund** |
| 2007-15 | Lagerung von Munition | gering, Nischenanwendung |
| 2008-15 | Brandverhütung auf Baustellen (+ 9 Checklisten/Handouts A1–A9) | **hoch** — Bauleitungs-Alltag |
| 2009-15 | Sicherheitsstromversorgung | **hoch** — Healthcare-Projekte (Notstrom) |
| 2010-15 | Brandschutz in Kompaktlagern | mittel |
| 2011-15 | Gebäudebegrünung | **hoch** — aktueller Trend, direkter Bezug zu laufenden Themen |

**Nebenbefund, nicht aufgelöst:** 2006-15 trägt wortgleich denselben Titel wie die bereits
destillierte Richtlinie BRL 108-15 («Gewährleistung der Betriebsbereitschaft von
Brandfallsteuerungen (BFS)»). Ob 2006-15 ein eigenständiges Merkblatt mit anderem Fokus ist oder
nur die praktische Arbeitshilfe zur Richtlinie 108-15, ist ungeklärt und sollte vor jeder
Destillation als Erstes geprüft werden — Verwechslungsgefahr analog zum Fall SIA 416/416-1
(N57-2).

## Nicht destilliert

Keine der zehn Lücken wurde in diesem Lauf am Volltext gelesen oder destilliert — reine Index-/
Metadaten-Recherche, keine Norm-Aussage mit Fundstelle Norm/Ausgabe/Ziffer daraus abgeleitet.
Kein Verstoss gegen die Zitierpflicht möglich, weil in diesem Lauf keine inhaltliche
Norm-Aussage getroffen wurde — nur eine Bestandsaufnahme des Index selbst (Titel, Datum,
Kategorie), belegt mit der abgerufenen Quelle.

## Nachgeführt

- `wiki/QUESTIONS.md`: N58-4 um datierten Nachtrag ergänzt, additiv, Ursprungstext unangetastet.
- `CHANGELOG.md`: eigener Eintrag oben.
- `outputs/2026-08-23_questions-abarbeitung13.md` (dieser Report, neu).

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

| Datei | Befund |
|---|---|
| `wiki/QUESTIONS.md` | 45/0 (rein additiv) |
| `CHANGELOG.md` | 69/0 (rein additiv) |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über
`scripts/nas-commit-now.sh`).

## Damit erledigt / weiterhin offen

N58-4 ist **nicht geschlossen**, aber von einer vagen Sammelfrage («48 Einträge ungeprüft») zu
einer konkret abarbeitbaren, priorisierten Zehner-Liste mit Titeln verengt — ein künftiger
Destillat-Lauf kann direkt mit 2003-15/2008-15/2009-15/2011-15 starten, statt den Index erneut zu
sweepen. Der Nebenbefund 2006-15 vs. 108-15 ist ein sinnvoller erster Prüfschritt für diesen Lauf.

**Unverändert offen, wie in Run 12 festgehalten:** N58-1 (Abdeckungsrichtung, Systemaudit,
ausserhalb des Einzelfrage-Formats), N60-1/N60-2 (Entscheid Raphael), SVGW-Scope (Entscheid
Raphael), Bezahlschranken-Beschaffungen (SIA 380:2022 u.a., Bring-Schuld Raphael).

**Empfehlung an den nächsten Lauf:** die zehn 2000er-Merkblätter sind jetzt ein konkreter,
freier (keine Bezahlschranke bekannt) Destillat-Auftrag mit Priorisierung — das ist der
nächstliegende Ertrag, sofern kein neuer Bring-Schuld-Fund vorliegt. Alternativ: N58-1 als
eigenständiges, mehrstufiges Projekt aufsetzen (nicht im QUESTIONS-Format).
