# QUESTIONS-Abarbeitung 11 — Verifikationslauf: kein neuer selbständig lösbarer Punkt gefunden

- **Datum:** 23.08.2026
- **Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
  Aussage mit Norm, Ausgabe und Ziffer, Verifikationsstatus des Destillats vor Zitat lesen (nur
  `established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
  weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
  CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen. Hinweis: ein
  `claude`-Prozess mit demselben Lauf-Namen ist der eigene Lauf, kein Konkurrent.
- **`ps aux` zu Laufbeginn geprüft:** ein `claude -p`-Prozess (PID 7781) mit exakt demselben
  Startprompt wie dieser Lauf, gestartet über `scripts/claude-run.sh --name mschub74` (PID 7773/
  7780) — das ist dieser Lauf selbst (headless Invocation), kein Konkurrent. Kein weiterer
  `claude`-Prozess mit einem `normen`- oder `QUESTIONS`-Bezug lief parallel.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: QUESTIONS-Abarbeitung 10, darunter SIA-Sweep
  vierzehnte Fortsetzung) und `outputs/2026-08-23_questions-abarbeitung10.md`.

## Ausgangslage

Der zehnte Lauf hatte die KB für eigenständig lösbare QUESTIONS-Punkte als ausgeschöpft
eingestuft: "Nach diesem Lauf sind keine weiteren eigenständig lösbaren, noch offenen
QUESTIONS-Punkte mehr identifiziert — die KB bleibt für Selbstläufer-Fragen ausgeschöpft, bis
eine neue Bring-Schuld oder ein neuer Sweep-Fund entsteht." Dieser Lauf hat diese Einschätzung
nicht übernommen, sondern selbst nachgeprüft — durch systematisches Lesen aller offenen
Abschnitte in `wiki/QUESTIONS.md` (4351 Zeilen, alle `##`/`###`-Überschriften gescannt) sowie
einer gezielten Cross-KB-Suche nach neuen, seit dem 23.08.2026 an `normen` übergebenen
Bring-Schulden in `energie`, `baurecht`, `immobilienbewertung`, `koordination`,
`planungsgrundlagen`, `grobkosten`.

## Befund: kein neuer selbständig lösbarer Punkt

Geprüfte, weiterhin offene Einzelpunkte und ihr Status:

1. **N-SIASWEEP-2 (SIA 422)** und **N-SIASWEEP-3 (SIA 2021/2025, Rückzugsbegründung)** — bereits
   über acht unabhängige freie Quellenarten erschöpft geprüft (Shop, zwei amtliche SIA-Kataloge,
   Espazium, SIA-Webinar-Seite, SNV-Arbeitsprogramm, Wayback Machine, cloud-weite Dateisuche,
   SNV-Webshop). Die siebte Fortsetzung empfiehlt ausdrücklich, diese Fragen nicht mit denselben
   Mitteln erneut anzugehen. Kein neuer Weg identifiziert (Playwright/JS-Browser steht in dieser
   Session nicht zur Verfügung, WebFetch/WebSearch sind bereits ausgereizt).
2. **N57-2 (SIA 416/1:2007 → SIA 380:2022)**, **SIA 382/1:2025 Re-Destillat**,
   **EN 13487/EN 12102-1 Volltexte**, **NIN-Frage (Geschirrspüler-Stromkreis)** — alle vier sind
   reine Beschaffungs-Bring-Schulden hinter einer Bezahlschranke (SIA-Shop, DIN-Media,
   ninonline.electrosuisse.ch). Claude tätigt keine Käufe (Rule `wege-und-vollmachten`,
   Vollmacht-Grenze).
3. **N60-1 (AFC-Synopse-Duplikat)** und **N60-2 (Methodik-Pflicht-14-Vorschlag)** — beide
   ausdrücklich als Entscheid-/Freigabe-Punkte für Raphael gekennzeichnet (Zusammenlegen zweier
   `established`-Destillate ist destruktiv, Rule `wissens-bibliothekar` verlangt dafür eine
   Rückfrage statt eigenmächtiges Handeln).
4. **SVGW-Scope-Frage** — Skill-Scope-Erweiterung, laut Run 10 bewusst nicht selbst entschieden.
5. **N58-1 (Abdeckungsrichtung der VKF-Bestandsdestillate)** und **N58-4 (Sweep deckt nur 35 von
   83 Indexeinträgen ab)** — beide vom Vorlauf selbst korrekt als Systemaudit/neues
   Destillations-Projekt eingestuft, nicht als Einzelfrage einer QUESTIONS-Abarbeitung.
6. **N59-2 (Wasserzeichen-Beleg 40-15)**, **N59-3 (Restkapitel 40-15)**, **N59-4 (Zwischenausgabe
   40-15)** — jeweils mit der gleichen Erschöpfungslogik wie N-SIASWEEP abgeschlossen, kein neuer
   Web-Recherche-Anlauf als sinnvoll bewertet.
7. **Cross-KB-Suche `energie`/`baurecht`/`immobilienbewertung`/`koordination`/
   `planungsgrundlagen`/`grobkosten` → `normen`:** keine neue, seit dem zehnten Lauf entstandene
   Bring-Schuld gefunden. Die einzige inhaltlich relevante Fundstelle (SIA 382/1:2025-Re-Destillat
   in `energie/wiki/QUESTIONS.md`, Wissens-Chef Run 16) ist bereits in `normen` selbst in
   `wiki/REGISTER.md` (Zeilen 331, 812) und `destillate/sia-382-1-2014.md` als Bring-Schuld
   vermerkt — auf beiden Seiten identisch dokumentiert, nichts nachzuziehen.

## Nachgeführt

- `outputs/2026-08-23_questions-abarbeitung11.md` (dieser Report, neu)
- `CHANGELOG.md`: eigener Eintrag oben
- `wiki/QUESTIONS.md`: **unverändert** — kein Punkt wurde geschlossen oder neu aufgeworfen; ein
  Änderungseintrag ohne inhaltliche Substanz würde die Datei nur verlängern (Rule
  `wissens-ruecklauf`, "Nichts Verallgemeinerbares → nichts ablegen").

## Verifikation

`git diff --numstat` nach dem Schreiben dieses Reports geprüft — reine Neuanlage, keine
bestehende Datei verändert. Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft
über `scripts/nas-commit-now.sh`).

## Nicht geleistet / weiterhin offen

Unverändert gegenüber Lauf 10: Volltext-Beschaffung SIA 380:2022/SIA 382/1:2025/EN 13487/
EN 12102-1/NIN (Bring-Schuld Raphael), N60-1/N60-2 (Entscheid Raphael), SVGW-Scope (Entscheid
Raphael), N58-1/N58-4 (eigenes Projekt, kein Einzelpunkt). **Empfehlung an den nächsten Lauf:**
nicht erneut denselben Scan wiederholen, solange keine der vier genannten Bring-Schulden erfüllt
wurde und kein neuer Sweep-Fund vorliegt — stattdessen bei Bedarf gezielt eine der grösseren,
bewusst zurückgestellten Linien (N58-1 Abdeckungsrichtung, N58-4 Restindex) als eigenen Auftrag
aufsetzen, nicht als Nebenprodukt einer QUESTIONS-Abarbeitung.
