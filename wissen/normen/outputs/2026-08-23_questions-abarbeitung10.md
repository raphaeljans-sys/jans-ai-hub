# QUESTIONS-Abarbeitung 10 — EN 13487/EN 12102-1 Ausgaben geklärt (Cross-KB `energie` Run 18), INDEX-Fehltitel SIA 2032 nachgezogen, SVGW-Scope-Frage strukturiert vertagt

- **Datum:** 23.08.2026
- **Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
  Aussage mit Norm, Ausgabe und Ziffer, Verifikationsstatus des Destillats vor Zitat lesen (nur
  `established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
  weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
  CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen. `ps aux` zu
  Laufbeginn geprüft: ein `claude`-Prozess mit demselben Startprompt (PID 4634) ist dieser Lauf
  selbst (headless `-p`-Invocation), kein Konkurrent.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf zu Laufbeginn: SIA-Sweep vierzehnte Fortsetzung,
  darunter QUESTIONS-Abarbeitung 9) und `outputs/2026-08-23_questions-abarbeitung9.md`.

## Ausgangslage

Der neunte QUESTIONS-Lauf hatte die KB für eigenständig lösbare Punkte als «praktisch
ausgeschöpft» eingestuft, war aber vor der neusten (vierzehnten) SIA-Sweep-Fortsetzung
geschrieben. Deren Report nennt drei neue Kandidaten nach demselben Muster: SVGW-Regelwerk
(Wissens-Chef Run 20, Punkt 3), EN 13487 und EN 12102-1 (Run 18, Punkte 2/3 — noch offen, keine
Ausgabe verifiziert, Herstellernormen ohne SIA-Shop-Produktseite), sowie SIA 387/4 als Stichprobe
(ob `normen` die von `energie` bereits erledigte Verifikation selbst nachvollzogen hat). Die
SIA-387/4-Stichprobe ist bereits erledigt — die Register-Zeile trägt seit 23.08.2026 den
`✓ Auftrag erfüllt`-Vermerk (Cross-KB, KB `energie`, beide SIA-Shop-Produktseiten direkt
abgerufen). Die beiden verbleibenden Kandidaten wurden in diesem Lauf bearbeitet.

## Befund 1: EN 13487 und EN 12102-1 — Ausgabe über DIN-Media-Produktseiten geklärt, kein Kauf

Beide Normen standen seit Run 18 (27.07.2026) als Cross-KB-Bring-Schuld aus `energie` offen,
zitiert ohne Ausgabejahr. Per WebFetch verifiziert:

- **DIN EN 13487:2019-11** (deutsche Fassung EN 13487:2019), ersetzt DIN EN 13487:2004-03
  (deutsche Fassung EN 13487:2003). Quelle: `dinmedia.de/en/standard/din-en-13487/306264766`.
  Herausgeber empfiehlt die Norm ausdrücklich als Ersatz für die zurückgezogene
  DIN 45635-14:1980-07.
- **DIN EN 12102-1:2023-11** (deutsche Fassung EN 12102-1:2022), ersetzt DIN EN 12102-1:2018-02
  (deutsche Fassung EN 12102-1:2017). Quelle: `dinmedia.de/en/standard/din-en-12102-1/349451100`,
  gegenbestätigt über die ANSI-Webstore-Zweitquelle `webstore.ansi.org/standards/din/
  dinen121022018de`.

Beide Normen sind als DIN EN ohnehin im Skill-Scope («SIA, VKF, DIN, VSS, RAL»). Neu angelegt:
`destillate/en-13487-2019.md` und `destillate/en-12102-1-2022.md` (beide `status: speculative` —
nur Ausgabe/Titel belegt, Volltext nicht im Haus, kostenpflichtig, Beschaffung bleibt Bring-Schuld
Raphael). `wiki/REGISTER.md` (neuer Abschnitt «QUESTIONS-Abarbeitung 10», Formatvorbild: der
bestehende EN-520-Mini-Run-Block) und `destillate/INDEX.md` nachgeführt.

## Befund 2 (Cross-KB-Rückfluss, Rule `wissens-bibliothekar`): drei Abnehmer-Fundstellen in `energie` nachgezogen

`wissen/energie/destillate/rueckkuehler-flaechenkonkurrenz-pv-laermschutz.md:291`,
`wissen/energie/wiki/waermepumpen-laermschutz.md:110` (beide jetzt mit Ausgabe EN 13487:2019) und
`wissen/energie/destillate/cerclebruit-vollzugshilfe-waermepumpen-laermschutz.md:39` (jetzt mit
Ausgabe EN 12102-1:2022) — additiv nachgeführt, kein bestehender Text gelöscht, jeweils mit
Rückverweis auf das neue Destillat in `normen`.

## Befund 3 (Nebenfund beim Lesen von `destillate/INDEX.md`): Stub-Fehltitel SIA 2032 nicht mitgezogen

Die vierzehnte SIA-Sweep-Fortsetzung hatte den Titel im Destillat selbst korrigiert
(«Ökobilanzierung für die Erstellung von Gebäuden» statt der erfundenen «Ökobilanzen im
Bauwesen»), die zugehörige `destillate/INDEX.md`-Zeile aber nicht nachgezogen — sie trug
weiterhin den alten Fehltitel und «n.a.» als Ausgabe. In diesem Lauf korrigiert.

## Befund 4: SVGW-Scope-Frage strukturiert vertagt, nicht selbst entschieden

Die vierzehnte SIA-Sweep-Fortsetzung hatte den SVGW-Punkt (Wissens-Chef Run 20, Punkt 3) als
«Scope-Frage für den nächsten Lauf» offen gelassen. Geprüft: der Skill `normen` definiert seinen
Router-Scope explizit als «SIA, VKF, DIN, VSS, RAL» (SKILL.md-Beschreibung) — SVGW steht dort
nicht. Eine eigenmächtige Aufnahme von SVGW-Normen ins REGISTER dieser KB wäre eine
Scope-Erweiterung, keine reine Bring-Schuld-Erledigung; nach Rule `wissens-bibliothekar` (Pause
vor Destruktivem/Umbau) bleibt der Entscheid bei Raphael. Zwei Optionen als Empfehlung in
`QUESTIONS.md` festgehalten — (a) SVGW als sechste Familie in den Skill-Scope aufnehmen, oder
(b) SVGW bewusst aussen vor lassen und die Trinkwasser-/Sanitär-Normen dort führen, wo sie heute
schon entstehen (`energie`, ggf. eigene KB) — nicht selbst umgesetzt. Der Sonderfall
SVGW-Merkblatt TPW 2001/1 bleibt davon unabhängig lösbar (Volltext liegt in `energie` bereits
gelesen vor, Run 119; dort fehlt nur eine Verweiszeile auf die amtliche Produktnummer W10001 d) —
als Empfehlung an `energie` vermerkt, nicht selbst in `normen` aufgenommen.

## Nachgeführt

- `wiki/REGISTER.md` (neuer Abschnitt «QUESTIONS-Abarbeitung 10»)
- `destillate/INDEX.md` (2 neue Zeilen + 1 Fehltitel-Korrektur)
- `destillate/en-13487-2019.md` (neu)
- `destillate/en-12102-1-2022.md` (neu)
- `wiki/QUESTIONS.md` (Run-18-Punkte 2/3 additiv geschlossen, SVGW-Punkt additiv um
  Scope-Empfehlung ergänzt, Ursprungswortlaut überall unangetastet)
- drei Dateien in `wissen/energie/` (Abnehmer-Fundstellen, additiv)
- `CHANGELOG.md`: eigener Eintrag oben

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: `destillate/INDEX.md` 3/1 (1 Zeile
ersetzt, 2 neue Zeilen, exakt erwartet), `wiki/REGISTER.md` 11/0 (rein additiv), `wiki/
QUESTIONS.md` 17/0 dann 34/0 kumulativ (beide additiven Blöcke), die drei `energie`-Dateien je
3/1 (Ein-Zeilen-Ersatz durch die längere Zeile mit Ausgabejahr, exakt erwartet). Kein
`git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / weiterhin offen

- Volltext-Beschaffung EN 13487/EN 12102-1 (kostenpflichtig, Bring-Schuld Raphael); keine
  SN-EN-Übernahme dieser beiden Normen geprüft (nur DIN-Fassung).
- Die SVGW-Scope-Frage bleibt bei Raphael.
- N60-1 (AFC-Synopse-Duplikat) und N60-2 (Methodik-Pflicht-Vorschlag) unverändert bei Raphael.
- NIN-Frage (eigener Stromkreis Geschirrspüler) unverändert hinter Bezahlschranke.
- Nach diesem Lauf sind keine weiteren eigenständig lösbaren, noch offenen QUESTIONS-Punkte mehr
  identifiziert — die KB bleibt für Selbstläufer-Fragen ausgeschöpft, bis eine neue Bring-Schuld
  oder ein neuer Sweep-Fund entsteht.
