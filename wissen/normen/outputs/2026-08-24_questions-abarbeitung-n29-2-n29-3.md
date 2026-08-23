# QUESTIONS-Abarbeitung — 24.08.2026

**Auftrag:** Offene Fragen in `wissen/normen/wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage
mit Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established`
zitierfähig. CHANGELOG der KB und Report des letzten Laufs zuerst gelesen, dort weitergemacht.
Rule `wissens-bibliothekar` beachten: jede Aussage belegen, nichts raten, CHANGELOG-Pflicht,
`git diff --numstat` nach jedem Schreiben.

## Ausgangslage

`wiki/QUESTIONS.md` umfasst 4944 Zeilen und ist Stand 23.08.2026 durch über 60 Läufe desselben
Tages (SIA-Sweep-Fortsetzungen, VKF-Delta-Runden, Wissens-Chef-Runs) weit überwiegend bereits
geschlossen. Kollisionscheck (`ps aux`) vor Arbeitsbeginn: parallel liefen zwei weitere `claude -p`-
Prozesse mit eigenen, andersartigen Aufträgen (Baurecht-Reglemente-Queue, `energie`-QUESTIONS-
Abarbeitung) — kein weiterer Prozess mit demselben Auftragstext an dieser KB, kein Namenskonflikt.

## Methode

Statt sequenziell 4944 Zeilen zu lesen: Python-Skript zerlegt die Datei in ihre 57 `##`-Abschnitte
und filtert auf das Fehlen jedes Schliess-Markers (✅, GESCHLOSSEN, ERLEDIGT, bestätigt, geklärt,
beantwortet, abgeschlossen, KOMPLETT). Ergebnis: 10 Abschnitte ohne Marker. Davon ausgeschlossen:

- Kostenpflichtige Bring-Schulden (SIA 380/2:2022, SIA 384/4:2025 Volltext, NIN-Zugang) — nicht
  ohne Kaufentscheid Raphaels lösbar.
- N60-1 (AFC-Synopse-Duplikat) und N60-2 (Methodik-Pflicht-14-Vorschlag) — beide ausdrücklich als
  «Entscheid/Freigabe Raphael nötig» markiert, nicht selbständig umzusetzen.
- Mehrere Alt-Run-Zusammenfassungen (Run 30/31/39, Wissens-Chef Run 19) ohne verbliebenen,
  eigenständig lösbaren Handlungsbedarf (reine Rückblicke oder bereits an anderer Stelle erledigt).

Verblieben: **N29-2** und **N29-3**, beide aus Wissens-Chef Run 29 (13.08.2026, Cross-KB-Nachzug).

## N29-2 — REGISTER-Zeile SIA 382/1 (Stichtag 2013) ohne Bemerkung zum neueren Stand

**Frage:** `wiki/REGISTER.md` führte die 2013-Stichtags-Zeile SIA 382/1 mit «2007», obwohl die KB
längst 2014 und 2025 kennt. Non-destruktive Ergänzung in der Bemerkungsspalte verlangt, kein
Überschreiben des Stichtagswerts.

**Befund:** Bereits erledigt, nur nie in `QUESTIONS.md` nachgezogen. Die Zeile (heute `REGISTER.md`
Zeile 465 — Zeilennummern haben sich seit 13.08. durch Zwischeneinträge verschoben) trägt seit dem
23.08.2026 exakt die verlangte Bemerkung: «⚠ Bereits an anderer Stelle belegt, hier nachgeführt
(23.08.2026): siehe Run-5-Zeile unten — Bestand 2014 (gültig ab 01.07.2014, ersetzt SIA 382/1:2007)
… Nach 2013 selbst ersetzt: SIA 382/1:2025, in Kraft seit 01.02.2025 (in KB `energie` als aktuell
geführt) — Bestand 2014 damit ebenfalls überholt, Re-Destillat 2025 Bring-Schuld». Der 2013-Stichtag-
wert «2007» in Spalte 2 ist unverändert stehen geblieben. Gegenkontrolle: `REGISTER.md` Zeile 982
(die referenzierte «Run-5-Zeile») führt denselben Fassungsstand bereits seit dem 14.07.2026.

**Warum kein eigener Herausgeber-Beleg mehr nötig war** (die Frage hatte das ursprünglich verlangt):
Die vorhandene Bemerkung verweist ausschliesslich auf bereits im Hub belegte, verifizierte
Fundstellen (Destillat-Frontmatter `ausgabe_ueberholt` in `sia-382-1-2014.md`, REGISTER Zeile 982)
und macht keine neue Norm-Aussage — reine interne Querverweis-Klarstellung.

**Ausgeführt:** `wiki/QUESTIONS.md`, Abschnitt N29-2, mit ✅-Nachtrag geschlossen. Kein Edit an
`REGISTER.md` nötig, da bereits korrekt.

## N29-3 — SIA-180-Destillat trotz `status: VOLLSTAENDIG` mit Kapitel-Lücke

**Frage:** `destillate/sia-180-2014.md` fehlten Ziff. 2.4.1.3 (Figur 6, Geltungsbereich der
empfundenen Temperatur) und Ziff. 6.4.4 (Feuchtebereich ohne aktive Be-/Entfeuchtung), obwohl das
Destillat sich als vollständig ausweist. Auftrag: ergänzen, nicht überschreiben.

**Beschaffung:** Original `180_2014.pdf` (SN 520180:2014 de, 14,5 MB) per M365-Graph-Connector aus
SharePoint Site `PL`, Drive `02_Recht_Norm` (Graph-Pfad
`root:/02_Normen/SIA_Norm/SIA_Normen/alle/180_2014.pdf`), Download-URL per Graph-API bezogen,
lokal gespiegelt und mit `pdftotext -layout` vollständig durchsucht.

**Beide Ziffern am Original bestätigt:**

- **Ziff. 2.4.1.3** (S. 30f. der Norm, Kap. 2.4 Berechnungsmethode): «Der Figur 6 ist der Bereich
  der empfundenen Temperatur für Räume, die beheizt oder gekühlt sind, abhängig von Tätigkeit und
  Bekleidung, zu entnehmen. Die Figur wurde mit einer relativen Luftfeuchte von 50 % und einer
  Luftgeschwindigkeit von weniger als 0,1 m/s im Aufenthaltsbereich berechnet. Sie gilt auch für
  eine relative Luftfeuchte zwischen 30 % und 70 %.» Quelle der Figur laut Norm: SN EN ISO 7730.
- **Ziff. 6.4.4** (S. 49, Kap. 6.4): «Der zulässige Bereich der relativen Raumluftfeuchte ist ohne
  aktive Befeuchtung und ohne Entfeuchtung einzuhalten, ausser wenn die in 3.5.1.3 und 3.5.1.4
  aufgeführten Massnahmen nicht ausreichen.»

**Eingefügt (ergänzend, nichts überschrieben):**

- Neue Bullet-Zeile in Kapitel 2 des Destillats, zwischen Ziff. 2.3.6 und Ziff. 2.5.
- Neue Bullet-Zeile in Kapitel 6 des Destillats, nach Ziff. 6.4.1-6.4.3.
- Frontmatter `status` und `last_updated` nachgeführt (Vermerk auf N29-3-Nachtrag, Datum 24.08.2026).

**Verifikation:** `git diff --numstat` nach dem Schreiben: `destillate/sia-180-2014.md` 4
hinzugefügt/2 ersetzt (die Frontmatter-Statuszeile), `wiki/QUESTIONS.md` 28 hinzugefügt/0 entfernt.
Beide Diffs rein additiv im eigenen Abschnitt, keine fremde Zeile berührt. Kein `git`-Schreibbefehl
über den SMB-Mount ausgeführt; Commit über den 15-Minuten-`nas-selfcommit`-Cron.

## Verallgemeinerbare Lehre

Bei einer KB mit dieser Bearbeitungsdichte (60+ Läufe an einem einzigen Tag) liegt der Ertrag eines
neuen Laufs oft nicht mehr im Auffinden neuer Lücken, sondern im **Nachziehen bereits vollzogener
Korrekturen**, die schlicht nie in `QUESTIONS.md` als geschlossen markiert wurden (N29-2 ist ein
belegtes Beispiel). Ein Skript-Filter über alle `##`-Abschnitte auf Schliess-Marker ist dafür
deutlich schneller als sequenzielles Lesen von ~5000 Zeilen und verhindert, dass ein alter, aber
längst erledigter Run mangels Marker fälschlich als offen gilt.

## Offen für den nächsten Lauf

Keine neuen Lücken entdeckt. Alle verbleibenden offenen Abschnitte in `QUESTIONS.md` sind entweder
kostenpflichtige Bring-Schulden Raphaels (SIA 380/2:2022, SIA 384/4:2025, NIN-Volltextzugang) oder
ausdrücklich bei ihm zur Entscheidung liegende Vorschläge (N60-1 Duplikat-Zusammenlegung, N60-2
Methodik-Pflicht-14) — beide unverändert gelassen, wie von Rule `wissens-bibliothekar` verlangt
(Pause vor Destruktivem/Entscheidungsbedürftigem statt eigenmächtig zu handeln).
