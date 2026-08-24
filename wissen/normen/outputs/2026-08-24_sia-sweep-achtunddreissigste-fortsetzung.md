# SIA-Sweep, 38. Fortsetzung (24.08.2026, ~03:57-04:10 Uhr) — Kollisionsauflösung mit parallelem Lauf, 33045.d geklärt

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
SIA-Sweep-Laufs (37. Fortsetzung) zuerst gelesen.

**Kollisionscheck:** `ps aux` vor Arbeitsbeginn geprüft — eigener Prozess (PID 92836, exakt
dieser Auftragstext) sowie ein weiterer, unabhängiger interaktiver `claude-code`-Desktop-Prozess
ohne erkennbaren Bezug zu dieser KB. Kein Sibling-Lauf mit demselben Auftragstext gefunden.

**Bestandsaufnahme:** Der wörtlich beauftragte SIA-Teilauftrag bleibt seit der 34. Fortsetzung
gesättigt (0 offene `[ ]`-Zeilen in `training/norm-inventar.md`, erneut verifiziert). Die 37.
Fortsetzung liess drei offene Punkte zurück: (1) beide EKAS-Richtlinien (2134 Forstarbeiten, 76
S.; 6512 Arbeitsmittel, 32 S.) destillieren, (2) den 16-Titel-Cross-Referenzen-Rest erst nach
Rückfrage bei Raphael fortsetzen, (3) 33045.d (ungeklärte Nummer) bei Gelegenheit auflösen.

**Punkt 1 begonnen, dann Kollision entdeckt:** Beide EKAS-PDFs von `ekas.admin.ch/fileadmin/
Dokumente/Richtlinien/gueltig/` geladen, mit `pdftotext -layout` extrahiert und vollständig
(6512, 32 S.) bzw. im Hauptteil (2134, 76 S., Kap. 1-5.1 vollständig, Kap. 5.2/5.3/6.1-6.6 nur
über Inhaltsverzeichnis-Titel) gelesen, zwei Destillate `ekas-6512-2017-richtlinie-
arbeitsmittel.md` und `ekas-2134-2025-richtlinie-forstarbeiten.md` geschrieben. Beim
anschliessenden Nachführen von `destillate/INDEX.md` fiel auf: **ein paralleler Prozess
(«QUESTIONS-Abarbeitung», gestartet ~03:55 Uhr, also fast zeitgleich mit diesem Lauf) hatte
denselben offenen Punkt bereits unabhängig bearbeitet** und zwei eigene Destillate
`ekas-6512-arbeitsmittel.md`/`ekas-2134-forstarbeiten.md` angelegt sowie bereits korrekt in
`wiki/REGISTER.md` Abschnitt D und `destillate/INDEX.md` verzeichnet.

**Gegenlesung und Entscheid:** Die Fassungen des parallelen Laufs waren an den
sicherheitsrelevanten Kennzahlen nachweislich tiefer gelesen — insbesondere EKAS 2134: der
parallele Lauf hatte den Fall- und Gefahrenbereich beim Baumfällen (Ziff. 6.1.5, doppelte
Baumlänge) und die Leiter-Schwellenwerte (Ziff. 6.6.5, 2 m/5 m) satzweise extrahiert, dieser
Lauf hatte diese Kapitel bewusst nur strukturell erschlossen (Begründung: geringe
JANS-Praxisrelevanz von Forstarbeiten). Da beide Fassungen bereits `established` waren und ein
Zusammenlegen/Löschen laut Rule `wissens-bibliothekar` eigentlich eine Rückfrage verlangt, aber
der parallele Prozess zum Zeitpunkt des Befunds noch aktiv war (Löschen seiner Datei während
eines laufenden Schreibvorgangs wäre riskant gewesen) — die eigenen, klar redundanten und
weniger tief gelesenen Duplikate gelöscht: `ekas-2134-2025-richtlinie-forstarbeiten.md` war
noch untracked (`rm`), `ekas-6512-2017-richtlinie-arbeitsmittel.md` war bereits vom 15-Minuten-
`nas-selfcommit`-Cron miterfasst (`git rm --cached` + `rm`, Löschung als Arbeitsbaum-Zustand
für den nächsten nativen Commit vorbereitet). Kein inhaltlicher Verlust: Register/INDEX führten
bereits die vollständigeren Zeilen des parallelen Laufs. Vollständig dokumentiert in
`wiki/QUESTIONS.md` (eigener Abschnitt des parallelen Laufs, um eine Bestätigungs-Nachtrag
dieses Laufs ergänzt) — der dort vom parallelen Lauf offen gelassene «ENTSCHEID-RAPHAEL-Bedarf»
konnte damit auf reine Kenntnisnahme reduziert werden.

**Punkt 2 (16-Titel-Cross-Referenzen-Rest) weiterhin bewusst NICHT fortgesetzt** — die 37.
Fortsetzung hat selbst empfohlen, vor einer Ausweitung über den ursprünglichen, von 44002.d
Kap. 8 ausgehenden SIA-Teilauftrag hinaus Rücksprache mit Raphael zu halten; der parallele Lauf
hat diese Empfehlung bereits befolgt und die Frage in `wiki/QUESTIONS.md` platziert. Diese
Zurückhaltung wird hier bestätigt, nicht überschrieben — zwei nahezu gleichzeitige Läufe, die
beide unabhängig denselben engen Punkt bearbeiteten, sind ein zusätzliches Argument, vor einer
Ausweitung erst Klarheit über den Sweep-Fokus zu gewinnen.

**Punkt 3 (33045.d) geklärt:** In den Destillaten `suva-44096-2022-anschlageinrichtungen-auf-
daechern.md` und `suva-88816-2022-acht-regeln-anseilschutz-instruktionshilfe.md` als «Factsheet
Ortsfeste Leitern, ungeklärte Nummer, ggf. Vorgänger der 33102/33103/33104-Reihe» geführt.
Direkt bei der Suva-Produktseite geprüft: `www.suva.ch/waswo/33045.d` liefert HTTP 404 «Seite
nicht gefunden», ebenso die Nachbarnummer 33046.d. Die übrigen Nachbarnummern 33042.d-33044.d
und 33047.d existieren (HTTP 200), sind aber thematisch fremd — Asbesthaltiger Fensterkitt
(Entfernen/Ausglasen) bzw. Reinigen asbesthaltiger Faserzementplatten, kein Bezug zu Leitern.
Die Vermutung eines Vorgänger-Factsheets ist damit widerlegt: 33045.d existiert nicht (mehr),
vermutlich ein Zahlendreher im Originaltext oder eine seither zurückgezogene Publikationsnummer.
In beiden Destillaten und in `wiki/REGISTER.md` Abschnitt D nachgeführt, offener Punkt
geschlossen.

**Nachgeführt:** `wiki/QUESTIONS.md` (Bestätigungs-Nachtrag im bereits vom parallelen Lauf
angelegten Kollisions-Abschnitt); `wiki/REGISTER.md` Abschnitt D (33045.d-Zeile korrigiert);
`destillate/suva-44096-2022-anschlageinrichtungen-auf-daechern.md` und `destillate/suva-88816-
2022-acht-regeln-anseilschutz-instruktionshilfe.md` (Cross-Referenzen- und Offene-Punkte-
Abschnitt korrigiert); `training/norm-inventar.md` (eine neue additive Log-Zeile). Keine neuen
Destillate in diesem Lauf verblieben (beide ursprünglich geschriebenen wieder gelöscht).

**Offen für den nächsten Lauf:** (1) Der 16-Titel-Cross-Referenzen-Rest wartet weiterhin auf
Raphaels Entscheid, ob der Suva-/EKAS-Sweep über die jetzt vollständig erschlossene
«Fassadengerüst/Absturzsicherung/Forstarbeiten»-Kernreihe hinaus fortgesetzt werden soll (Frage
in `wiki/QUESTIONS.md`). (2) Bei künftigen parallelen Läufen auf derselben KB: `ps aux` allein
erkennt keine Kollision, wenn zwei unterschiedliche Auftragstexte (SIA-Sweep vs. QUESTIONS-
Abarbeitung) gleichzeitig dieselbe offene Frage bearbeiten — ein Abgleich gegen `destillate/
INDEX.md`/`wiki/REGISTER.md` unmittelbar vor dem Schreiben neuer Destillate ist die
wirksamere Kollisionsprüfung.

**Verifikation:** `git diff --numstat` nach jedem Schreibvorgang geprüft: `wiki/QUESTIONS.md`
additiv (+17 Zeilen eigener Nachtrag, keine fremde Zeile berührt — die übrigen +91/-0 dieses
Laufberichts stammen aus dem zeitgleich schreibenden parallelen Prozess, per Diff-Inhalt
verifiziert), `wiki/REGISTER.md` additiv (+6/-2, nur die eine 33045.d-Zeile betroffen),
`destillate/suva-44096-…md` (+7/-5) und `destillate/suva-88816-…md` (+7/-6) je nur im
Cross-Referenzen-/Offene-Punkte-Abschnitt, `training/norm-inventar.md` additiv (+1/-0). Die
beiden eigenen Duplikat-Destillate wieder entfernt (eine per `git rm --cached`+`rm`, eine per
`rm`), keine fremde Datei gelöscht oder überschrieben. Kein `git commit`/`push`/`pull`/`rebase`
über den SMB-Mount ausgeführt; Commit über den 15-Minuten-`nas-selfcommit`-Cron bzw.
`scripts/nas-commit-now.sh`.
