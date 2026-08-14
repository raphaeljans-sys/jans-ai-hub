# Synergie-Lauf 07 — 14.08.2026

Erster Lauf im Tagestakt mit vollen 24 Stunden Abstand. Delta-Basis: Ende Lauf 06,
13.08.2026 17:35. Fenster 23,5 Stunden, 124 Commits.

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr `2026-08-14 17:10 CEST` gegen den nativen Synology-Log
`sync-tasks/log/selfcommit-202608.log`, letzter Eintrag `2026-08-14T17:00:01` — Abweichung
im Minutenbereich, kein Drift. Die Schieflage aus Chronik 260813e bleibt behoben,
Commit-Daten sind belastbar.

## Schritt 1 — Delta, mit Gegenprobe

Gegenprobe bestanden: der neueste Commit im gefilterten Ergebnis ist `91615d12` und damit
identisch mit HEAD. NAS-Repo und SSD-Klon standen auf demselben Stand, die Git-Lesevorgaenge
liefen deshalb auf dem Klon statt ueber SMB.

Strukturelles Delta: **0 neue Bausteine** (kein Skill, kein Agent, kein Connector, kein
Service, kein Command, keine neue KB). Geaendert: `rules/betrieb-chronik.md` (7 Commits),
`rules/auto-verbesserungen.md` (4), `rules/dokument-layout-standard.md` (1),
`connectors/WEGE.md` (1). KB-Aktivitaet: energie 26, normen 20, twin 19, bauprodukte 13,
koordination 3, projekt-lessons 2.

Der Frueh-Ausstieg nach Schritt 2 griff nicht, weil geaenderte Rules im Delta stehen.

## Thema des Fensters

Am 14.08. entstanden vier neue Regel-Eintraege, und **alle vier enden mit «ergaenzt Rule X»**.
Das ist der Prueffall dieses Skills in Reinform: eine Kante, die nur der Zulieferer kennt.
Gemessen ergaenzte die genannte Rule in drei von vier Faellen nichts zurueck.

## Befunde

### SYN-27 — Die Listen-Neuregelung erreicht die Werkzeugschicht nicht (offen)

`rules/dokument-layout-standard.md` Z. 15–21, Commit `1a85e022`, Vorgabe Raphael: in
ausgehenden Dokumenten keine Aufzaehlungs-Bullets mehr, weder «•» noch «-», stattdessen
nummerierte Positionen im Fliesstext. Begruendung in der Regel selbst: Klick-Listen sind als
KI-Erzeugnis identifizierbar und nicht referenzierbar.

Beide Generatoren stehen unveraendert auf der alten Fassung:

- `skills/studien-generator/tools/md2docx.py` Z. 192 — `doc.add_paragraph(style="List Bullet")`
  fuer jede `- `/`* `-Zeile.
- `templates/dokument-layout/build-document.template.js` Z. 81 ff. — Helper `itemBold` mit
  `numbering: { reference: "items" }`, ausdruecklich als «Bullet mit fettem Praefix»
  kommentiert.

Gegenprobe: 0 Treffer auf «Neuregelung», «14.08.2026» oder «Positionsnummer» in `templates/`
und `skills/studien-generator/tools/`.

Das Bittere daran: die Kante zeigt bereits in die richtige Richtung. `md2docx.py` Z. 10 nennt
`dokument-layout-standard.md` ausdruecklich als Grundlage — sie zeigt nur auf den ueberholten
Stand. Und das Gewicht ist hoch, weil `rules/dateinamen-konvention.md` genau diesen Konverter
zum Standardweg jeder MD→DOCX-Konvertierung erklaert: die Regel greift dort nicht, wo die
meisten Dokumente entstehen.

**Adversariale Gegenpruefung.** Spricht etwas dagegen? Ja, ein Halbargument: die Regel erlaubt
Bullets in MD-Quellen ausdruecklich weiter. Wer die Positionen schon im MD nummeriert schreibt,
erzeugt gar keine `- `-Zeilen, und der Konverter ist unschuldig. Der Befund ist deshalb bewusst
nicht als «Konverter kaputt» formuliert, sondern als **Regelaenderung, die die Werkzeugschicht
nicht erreicht hat** — alle bestehenden Vorlagen und dokumentproduzierenden Skills schreiben
weiterhin Bullets, und nichts im Werkzeug weist darauf hin. Existiert die Anpassung schon
woanders? Nein, gemessen null Treffer.

**Nicht selbst umgesetzt.** Die Umstellung ist eine Verhaltensaenderung an einem Werkzeug, kein
Querverweis, und sie braucht zwei Vorgaben von Raphael: Nummerierungstiefe und ob Word-
Nummerierung oder Klartext-Praefix. Gesetzt wurden nur Warnhinweise (active-with-flagging) im
Kopf von `md2docx.py` und in `templates/dokument-layout/BUILD-ANLEITUNG.md`, je mit der
Zwischenloesung: Positionen bereits in der MD-Quelle nummerieren, `itemNum` statt `itemBold`.

### SYN-28 — Die Mail-Skriptsammlungen kennen weder die neue Sackgasse noch die geltende Rule

**Teil (a), umgesetzt.** `connectors/WEGE.md` Z. 198, Commit `1c84780f`: der Apple-Mail-
`whose`-Filter liefert auf frisch synchronisierten Nachrichten still «nicht gefunden». Belegt
am Hub-Chef-Briefing vom 14.08. — gesendet 08:51:44, per Filter unauffindbar, per Enumeration
sofort da. Der Eintrag ist mustergueltig gepflegt (Rule `wege-und-vollmachten` Punkt 4). Nur:
die beiden Stellen, an denen im Hub tatsaechlich `whose` steht, wussten nichts davon —
`docs/referenz/osascript-beispiele.md` Z. 49 und `skills/email-preferences/SKILL.md` Z. 39/64.
Gegenprobe: 0 Treffer auf «WEGE», «Sackgasse», «Enumeration» in beiden Dateien.

Die erste ist genau die Datei, auf die die importierte Rule `osascript-apple-apps.md` fuer
«vollstaendige Beispiele» verweist. Wer dem Zeiger folgt, kopiert den belegten Fehlweg.

**Teil (b), offen.** Beim Nachmessen fiel ein aelterer Bruch auf: `email-preferences/SKILL.md`
Z. 34, 57 und 101 rufen `tell application "Mail"` mit dem Klarnamen auf — genau das, was
`osascript-apple-apps.md` seit macOS Tahoe verbietet (Konflikt mit der QuickLook-Erweiterung).
Es ist die einzige Datei im Hub mit diesem Muster, der Rest ist sauber auf die Bundle-ID
umgestellt. Markiert, aber nicht umgeschrieben: das ist Skript-Code, kein Querverweis.

Wirkung beider Teile zusammen: ein erfolgreicher Versand wird als Fehlschlag protokolliert,
mit Zweitversand als moeglicher Folge.

### SYN-29 — Zwei einseitige Regel-Kanten, davon eine mit inhaltlichem Widerspruch (umgesetzt)

**(a) Der Widerspruch.** Eintrag 260814 (`92a5e7ac`) legt fest, dass systemseitige
Cloud-Schalter — OneDrive-/Dropbox-Einstellungen, «Dateien bei Bedarf», Finder «Speicherplatz
freigeben» — **Raphael selbst** bedient und Claude dafuer keine Systemprozesse ausloest.
`rules/interaktive-eingriffe.md` fuehrt Cloud-Sync/FileProvider aber als Klasse 2 unter der
Regel «vorher ankuendigen, dann umkehrbar handeln» (Z. 15 f.). Beide Rules sind importiert und
gelten gleichzeitig. Wer nur die zweite liest, kaeme fuer genau diese Schalter zum
gegenteiligen Schluss. Das ist kein fehlender Querverweis, sondern ein Konflikt.

**(b) Die schwaechere Kante.** Eintrag 260814b (`bbe29f93`) macht Opus 5 zum interaktiven
Standard und Fable 5 zur punktuellen Ausnahme auf Raphaels Zuruf. `rules/modellwahl-routine.md`
Z. 41 sagt dazu nur «jede interaktive Session laeuft im Standardmodell», ohne dass erkennbar
waere, welches das ist und dass Loops nie auf Fable gestellt werden. Kein Widerspruch, aber
dieselbe Bauart.

Beide Gegenkanten gesetzt (active-with-flagging), Wortlaut bleibt jeweils in
`auto-verbesserungen.md`, hier nur Zeiger und Abgrenzung.

### Geprueft, kein Befund

Der vierte neue Eintrag vom 14.08. — 260814b «Rueckmeldelisten an Fachplaner: einfache
Zeilenliste» — nennt keine zu ergaenzende Rule und braucht deshalb keine Gegenkante. Er steht
inhaltlich neben SYN-27 (beide betreffen die Listenform), widerspricht ihm aber nicht: die
Rueckmeldeliste ist ausdruecklich nummeriert aufgebaut, also bereits in der neuen Form.

Die sieben Aenderungen an `rules/betrieb-chronik.md` sind Vorfalls- und Messprotokolle ohne
strukturelle Wirkung auf andere Bausteine, ausserdem bewusst nicht importiert.

## Zwei Werkzeugfallen im eigenen Lauf

Beide aus der Familie «ein leeres Ergebnis ist zuerst eine Aussage ueber das Werkzeug»
(Rule `wege-und-vollmachten` Punkt 5, `auto-verbesserungen` 260807):

1. Eine `&&`-Kette brach nach dem ersten Teilbefehl ab, weil ein leerer `grep` rc=1 liefert.
   Das Ergebnis las sich wie «keine geaenderten Strukturdateien» — tatsaechlich lief die
   Messung nie.
2. Ungequotete `--include=*.sh`-Muster wurden von zsh expandiert; der erste Sackgassen-Grep
   meldete faelschlich null Treffer.

Beide Messungen wurden wiederholt, bevor ein Befund darauf gestuetzt wurde. Haette der Lauf
der ersten Messung geglaubt, waere er als Nulldelta beendet worden und alle drei Befunde
waeren liegen geblieben. **Fuer kuenftige Laeufe: Messbefehle mit `;` statt `&&` verketten,
grep-Muster quoten.**

## Schreib-Kontrolle

`git diff --numstat` ueber alle sieben bearbeiteten Dateien: 16/0, 9/0, 7/1, 4/1, 9/0, 8/0,
37/0. Zwei geloeschte Zeilen insgesamt, beides beabsichtigte Zeilenersetzungen am Anker
(`interaktive-eingriffe.md` Z. 15, `modellwahl-routine.md` Z. 41). Zeilenzahlen vorher/nachher
stimmen in allen sieben Dateien mit dem Zuwachs ueberein.

## Offen aus diesem Lauf

- **SYN-27:** Umstellung beider Generatoren auf nummerierte Positionen — braucht Raphaels
  Vorgabe zu Nummerierungstiefe und Nummerierungsart.
- **SYN-28 (b):** drei `tell application "Mail"`-Aufrufe in `skills/email-preferences/SKILL.md`
  auf die Bundle-ID nachziehen.

Kein neuer Service-ENTWURF, kein Katalog-Bezug. Keine Mail (Loop ist still by default; der
`hub-chef` traegt Wesentliches ins Tagesbriefing).
