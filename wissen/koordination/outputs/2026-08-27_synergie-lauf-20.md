# Synergie-Lauf 20 — 27.08.2026 (Tagestakt)

**Delta-Basis** 26.08.2026 17:10 · **Fenster** 24,0 h · **111 Commits** · **HEAD** `0ac25fdad`
**Station** MacBook Pro · **Zuschnitt** inline, kein Agenten-Fan-out (Leitplanke Tagestakt)

## 0 — Uhr und NAS

`date` meldete 17:10 CEST, der native Synology-Selfcommit-Log denselben Tag 17:00:05. Abweichung
im Minutenbereich, keine Schieflage. NAS gemountet, SSD-Klon und NAS auf demselben HEAD.

## 1 — Delta, mit Gegenprobe

111 Commits im Fenster. Gegenprobe bestanden: der älteste Treffer `7fd8fc0c7` (26.08. 17:15)
schliesst lückenlos an die Delta-Basis an, der jüngste ist der HEAD selbst. Kein Verdacht auf
eine Werkzeug- oder Uhr-Schieflage.

**Strukturelles Delta:** 0 neue Skills, Agenten, Connectoren, Commands, Services, Rules; keine
neue KB. Bewegt haben sich drei Bestandsdateien:

| Datei | Commit | numstat | Bewertung |
|---|---|---|---|
| `skills/hub-chef/SKILL.md` | `b1e955983` | +6/0 | eigener Schreibvorgang aus Lauf 19 — kein Befund |
| `skills/honorarberechnung-sia102/SKILL.md` | `ce498d218` | +3/−1 | Rückkante aus `normen` Run 63 — **Nullbefund, siehe 3** |
| `rules/jans-dna-facetten.md` | `715b44d92` | 18/18 | Twin-Fidelity-Review 27.08. — **SYN-53** |

Der Früh-Ausstieg nach Schritt 2 griff darum nicht.

## 2 — Die drei Befunde

### SYN-53 — Die belegte Anrede steht in der Datei, die vielleicht geladen wird

Der Fidelity-Review vom 27.08.2026 hat einen übergeneralisierten Marker korrigiert. Bis dahin
stand im Block: «Englisch: «Hello <Vorname>,», nicht «Hi» (260806)». Zwei Golds desselben
Kontakts, **16.02. und 27.06.2026**, also vor **und** nach dem Hub, zeigen «**Hi Hleb**» beim
Webprogrammierer; der 260806-Beleg stammte vom 3D-Freelancer. Die neue Fassung lautet: die
englische Anrede hängt am **Kontakt**, nicht an der Sprache
(`wissen/twin/wiki/stimme.md` Z. 108-110, `rules/jans-dna-facetten.md` Z. 82-84).

Der Zwilling hat das sauber verbucht und ausdrücklich als «Entscheid Raphael nicht nötig, Beleg
genügt» eingestuft (`wissen/twin/wiki/QUESTIONS.md` 260827b #1). Diese Einstufung ist richtig —
sie deckt nur nicht den zweiten Ort ab.

**Der zweite Ort ist die wichtigere Datei.** `rules/anrede-kontakte.md` ist per `@`-Import in
**jeder** Session aktiv, sagt von sich selbst «Bei Mails, Briefen, Memo-Begleittexten immer zuerst
hier nachschlagen» und setzt «**Default = Sie**, wenn die Person nicht in der Liste steht».
`rules/jans-dna-facetten.md` ist dagegen **ausdrücklich nicht importiert** und «vor JEDEM
ausgehenden Texterzeugnis zu lesen» — also genau die Datei, die in einer Chat-Antwort, einem
Nebenlauf oder einem Subagenten-Kontext ausbleibt.

Wer der Rule folgt und zuerst das Register liest, bekam für beide Kontakte die falsche Auskunft:
Hleb stand gar nicht darin, Yorck von Dietze mit der deutschen Skala, aber ohne den englischen
Opener.

**Warum das ein Synergie-Befund ist und kein Twin-Internum:** dieselbe Kante ist mehrfach
funktionierend belegt. Am 26.08. wurde die Zeile Undine Hofer aus vier Fidelity-Läufen
nachgetragen, am 20./21.08. sechs weitere (Hansen, Spörri, Ziegel, Guerini, Suljanovic, Eren).
Das Verfahren ist etabliert; es lief hier nicht, weil der Fall als reine Marker-Korrektur gebucht
wurde und die Kontakt-Konsequenz mit ihm unterging.

**Gesetzt (active-with-flagging):** Zeile «Hleb» nachgetragen, Notiz-Zelle Yorck von Dietze um den
englischen Opener ergänzt. Beides rein additiv; kein Klausel-Wortlaut angefasst, weil die Rule das
Claude untersagt. Der **Nachname** von Hleb ist nicht belegt und bleibt ausdrücklich offen statt
geraten (Rule `identifikatoren-verifizieren`); die Schreibweise «Hleb» ist im Twin-Wiki belegt,
die ältere Form «Hlep» dort als Verschreiber Raphaels ausgewiesen.

### SYN-54 — Ein Artikel sammelt Vorbehalte, sein Gütesiegel bleibt grün

`wissen/normen/wiki/synthese-sia-vkf-fachskills.md` trägt im Frontmatter unverändert
`status: established` und `last_updated: 2026-07-17`. In den letzten sechs Tagen haben **drei
voneinander unabhängige Läufe** je einen ⚠-Vorbehalt **in den Fliesstext** gesetzt:

| Zeile | Datum | Anlass | Urheber |
|---|---|---|---|
| Z. 270 | 22.08.2026 | VKF-Fassungsstand (Abschnitte 4.1/4.4) | Synergie-Lauf 15, SYN-41 |
| Z. 89 | 26.08.2026 | Quelle `sia-118-1991.md` → `speculative` | Wissens-Chef Run 44 |
| Z. 176/177 | 27.08.2026 | Quelle `sia-102-2020.md` → `speculative`, Fundstelle korrigiert | `normen` Run 63 |

**Zwei der im Frontmatter geführten Quellen sind damit Entwurf.** Rule `normen-referenz` Ziff. 1b
macht genau dieses Feld zum Entscheidungskriterium: «zuerst sein Feld `status:` lesen … nur
`established` ist ohne Gegenlesen zitierfähig». Wer der Rule folgt, sieht grün — und hört 89
bzw. 270 Zeilen vor dem Vorbehalt auf zu lesen.

Verschärfend kommt die Sichtbarkeit hinzu: Wissens-Chef Run 43 hat den Artikel am 25.08. im
`INDEX.md` nachregistriert. Er war seit 17.07. `established`, aber nie auffindbar; er wurde für
`werkvertrag`, `ausschreibung`, `unternehmerkontrolle`, `honorarberechnung-sia102` und
`brandschutz` also genau dann erreichbar, als seine Grundlage unsicher wurde.

**Der eigentliche Befund ist der Meldeweg.** Run 63 hat den Bedarf selbst und präzise benannt:
«er ist der zentrale Weiterverteiler und verdient eine eigene Durchsicht». Dieser Satz steht im
CHANGELOG und im Lauf-Report — **nicht** in `wiki/QUESTIONS.md`; N63-1 und N63-2 betreffen das
Destillat, nicht die Synthese. Das ist genau das Muster, das Rule `auto-verbesserungen` 260805
verbietet: ein Laufbericht ist kein Meldekanal.

**Abgrenzung zu SYN-41:** der deckt den VKF-Fassungsteil ab und steht auf «Nachführung offen bei
`normen`». Neu ist, dass seither zwei **sachfremde** Quellen herabgestuft wurden und der Artikel
damit die Schnittmenge dreier unverbundener Vorbehalte geworden ist. Nicht mehr eine veraltete
Tabelle, sondern ein systematischer Status-Widerspruch am zentralen Weiterverteiler.

**Gesetzt (active-with-flagging):** Durchsicht als **N63-3** in `wissen/normen/wiki/QUESTIONS.md`
registriert (Cross-KB-Bringschuld nach Rule `wissens-bibliothekar`), INDEX-Zeile um einen ⚠-Zeiger
auf die drei Vorbehalte ergänzt. **Der Statusentscheid wurde nicht vorweggenommen** — Run 44 hat
ihn ausdrücklich der KB `normen` zugewiesen, und ein Aufsichtslauf entscheidet das nicht.

### SYN-55 — Die Rule kennt zwei Status, die KB hat einen dritten gemessen

`wissen/normen/training/n62-3-pruefstand-kandidaten.md` ist am 27.08.2026 neu entstanden und misst:
von **310** `established`-Destillaten tragen **2** einen Prüfstand, beide DIN (Mac-Mini-Scope); im
SIA/VKF-Bestand dieser Station **keines**. Dazu die zweite Zahl: beide bisher überhaupt gefahrenen
Abdeckungsläufe fanden in `established`-Destillaten erhebliche Lücken bei **null falschen Werten**
(`sia-416-1-2007` in Run 54; `sia-118-1991` in Run 62 mit 84 Kern- und 82 Nebenlücken).

`established` belegt also die **Richtigkeit** des Erfassten, nicht die **Vollständigkeit**. Die KB
sagt das selbst mustergültig zurückhaltend: «Die Liste misst Ungewissheit, nicht Mangel.»

Rule `normen-referenz` Ziff. 1b kennt diesen dritten Zustand nicht und gibt `established` binär als
«ohne Gegenlesen zitierfähig» frei. **Gefährlich ist dabei nicht der zitierte Wert, sondern der
Umkehrschluss aus dem Schweigen**: «steht nicht im Destillat, also verlangt die Norm es nicht» —
genau der Schluss, den ein Leistungsumfang, eine Honorarabgrenzung oder ein
Vollständigkeitsnachweis zieht. Run 63 hat dafür am selben Tag den Beleg geliefert: das Destillat
zu SIA 102:2020 hatte von jeder Teilphasen-Tabelle durchgehend nur die Spalte *Auftragsgegenstand*
aufgenommen; die vier übrigen Leistungsbereiche und der AG-Block fehlten. Ein daraus abgeleiteter
Leistungsumfang unterschätzt den Aufwand systematisch.

Die Kandidatenliste führt `rules/normen-referenz` selbst als Konsumenten von `sia-416-2003.md` auf
(Z. 68). Die Kante ist also gesehen — aber nur vom Zulieferer. In der Rule steht nichts davon.

**Gesetzt (active-with-flagging):** Ziff. **1c** als reiner Querverweis in `rules/normen-referenz.md`:
`established` = Werte geprüft, nicht Vollständigkeit; bei breitem Leistungs- oder
Vollständigkeitsschluss das Original beiziehen; Zeiger auf die Messung. **Der binäre Status bleibt
unangetastet** — ob daraus ein eigener Status wird, ist eine Methodenfrage der KB `normen` mit
Raphael; N63-2 liegt in derselben Richtung bereits vor.

## 3 — Der wichtigste Nullbefund: eine Rückkante, die funktioniert hat

`normen` Run 63 hat `destillate/sia-102-2020.md` auf `speculative` herabgestuft **und im selben Lauf**
`skills/honorarberechnung-sia102/SKILL.md` Z. 82-85 nachgezogen (`ce498d218`, +3/−1). Bemerkenswert
ist die Präzision der Nachführung: sie vermerkt ausdrücklich, dass der für den Skill
entscheidende Negativbefund «SIA 102:2020 kennt keinen Art. 7 und keine Anhang-A-Prozenttabelle»
von der Herabstufung **nicht** betroffen ist, weil er in Run 63 an den Schlussseiten des Originals
eigens nachgeprüft und bestätigt wurde.

Das ist genau die Bewegung, deren Fehlen SYN-36 und SYN-41 gerügt hatten: der Zulieferer ändert
seinen Status und informiert den Abnehmer, statt es dem nächsten Aufsichtslauf zu überlassen.
**SYN-54 richtet sich darum nicht gegen diesen Lauf**, sondern gegen die eine Kante, die er offen
liess — den Weiterverteiler zwischen Destillat und Skill.

## 4 — Zwei weitere gemessene Nullbefunde

**(a) Doppelrechnung Kandidatenliste ↔ QUERBEZUEGE?** Die neue Kandidatenliste zählt Konsumenten je
Norm und berührt damit scheinbar `wissen/koordination/QUERBEZUEGE.md`. Prüf-Frage 2 trägt aber
nicht: QUERBEZUEGE führt **inhaltliche** Querbezüge zwischen KBs und Skills, die Kandidatenliste
eine **Reichweiten-Metrik** zur Priorisierung eines Prüfprogramms. Verschiedene Grössen, kein
Doppelbestand — und die Liste dokumentiert ihre Metrik samt Grenzen selbst («misst Nennungen, nicht
Gewicht»; Rauschen-Vorbehalt bei VKF). Übernommen wird nur der Sachbefund als SYN-55.

**(b) Verdrahtung neuer Bausteine.** Kein neuer Baustein im Fenster heisst auch: keine fehlenden
Contract-Pflichtfelder, keine fehlende Zeile in `logbuch/rollen/rollen-map.tsv`, keine fehlende
Registrierung in `rules/README.md` oder `connectors/README.md`, keine fehlende Allowlist-Freigabe.
Der Kern des Tagestakts lief also leer — richtigerweise.

## 5 — Aufgerollt wegen Bewegung, ohne neuen Befund

`rules/jans-dna-facetten.md` hat sich zum **dritten Mal in Folge** bewegt (18/18, netto ±0 unter dem
33'978-B-Riegel). Damit greift die Compounding-Klausel für **SYN-43** zum dritten Mal. Die Sachfrage
— Verzögerung des Registerwechsels nach persönlichem Kontakt, «Trajektorie statt Standbild» —
hängt unverändert am ausstehenden Entscheid Raphaels (`wissen/twin/wiki/QUESTIONS.md` 260821 #1
und 260822b #1) und wird nicht durch einen Aufsichtslauf entschieden. Status bleibt «teilweise
umgesetzt».

## 6 — Gemessen, nicht aufgerollt

Reine KB-Inhaltsarbeit ohne neue Bausteine: `twin` (19 Dateiberührungen), `normen` (14), `energie`
(13), `koordination` (9), `architekten-synobsis` (4), `auflagebereinigung` (2), `spec` (1). Für
keine dieser KBs nennt ein offener Register-Eintrag sie als Beteiligte, ausser `twin` und `normen`
— beide über SYN-53 bis SYN-55 gerade aufgerollt. Nicht neu aufgerollt (Compounding, kein
Beteiligter bewegt): SYN-01 bis SYN-42, SYN-44 bis SYN-52.

Kein neuer Service-ENTWURF, kein Katalog-Bezug. `services/KATALOG.md` unberührt.

## 7 — Schreib-Kontrolle

Nach Rule `auto-verbesserungen` 260811: jeder Anker vor dem Schreiben auf Trefferzahl 1 assertiert,
kein globales Suchen-und-Ersetzen, alle Eingriffe zeilengenau am Anker.

| Datei | numstat | Zeilen vorher → nachher | Art |
|---|---|---|---|
| `rules/anrede-kontakte.md` | **2/1** | 117 → 118 (22 → 23 Tabellenzeilen) | 1 neue Zeile + gewollte Zeilenersetzung in der Notiz-Zelle Yorck von Dietze |
| `wissen/normen/wiki/QUESTIONS.md` | **+16/0** | 6191 → 6207 | rein additiv (N63-3) |
| `wissen/normen/wiki/INDEX.md` | **1/1** | 16 → 16 | gewollte Zeilenersetzung in der Synthese-Zeile |
| `rules/normen-referenz.md` | **+9/0** | 36 → 45 | rein additiv (Ziff. 1c) |
| `wissen/koordination/SYNERGIE-REGISTER.md` | **+60/0** | 52 → 55 Tabellenzeilen | rein additiv (SYN-53/54/55 + Fussnote) |

Keine Registerdatei hat Zeilen verloren. Die drei gezählten Löschungen sind zwei beabsichtigte
Zeilenersetzungen; keine davon entfernt Inhalt.

**Nachlauf Umlaute (27.08.2026, nach dem Commit `c7e2abb13`):** Der Stop-Hook hat in den neu
geschriebenen Textblöcken ASCII-Ersatzschreibungen (ae/oe/ue) beanstandet. Korrigiert wurde
**ausschliesslich der eigene Text** dieses Laufs — die drei SYN-Zeilen, diese Fussnote, der
CHANGELOG-Eintrag, N63-3, Ziff. 1c, die INDEX-Ergänzung und die beiden Zeilen in
`anrede-kontakte.md`. Nicht angefasst: der Bestand der Dateien (die älteren Lauf-Fussnoten und
SYN-Zeilen tragen weiterhin die ASCII-Schreibweise früherer Läufe) sowie **alle Code-Spans**,
weil Dateinamen nach Rule `dateinamen-konvention` ASCII bleiben — `n62-3-pruefstand-kandidaten.md`
und `QUERBEZUEGE.md` sind Dateinamen, keine Wörter. Die Ersetzung lief über eine kuratierte
Wortstamm-Liste, nicht mechanisch: «zuerst», «neue», «Quelle», «Konsequenz» und die Namen
(Guerini, Raphael, raphaeljans.ch) blieben unverändert.

## 8 — Kein Sendegrund

Still beendet nach Rule `auto-verbesserungen` 260803. Alle drei Befunde sind **Hub-intern** ohne
Aussenwirkung: kein Geld, keine Frist, kein Termin, keine Behörde, kein Kunde, kein Projekt, kein
P1-Blocker. Kein Eintrag in `logbuch/fristen.md`; SYN-54 und SYN-55 sind an ihrem fachlich richtigen
Ort registriert (`wissen/normen/wiki/QUESTIONS.md`), SYN-53 ist gesetzt und erledigt. Der
`hub-chef` trägt Wesentliches ins Tagesbriefing, wenn er es für operativ hält.
