# SIA-Sweep, dreissigste Fortsetzung — 23.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
Laufs (29. Fortsetzung) zuerst gelesen, dort weitergemacht.

## Ausgangslage geprüft

Die 29. Fortsetzung hatte den engeren SIA-Blindzonen-Sweep für erschöpft bestätigt
(`training/norm-inventar.md`: 0 offene `[ ]`-Positionen, unabhängig nachgemessen — bestätigt) und
als einziges konkretes offenes Element für den nächsten Lauf benannt: die **Metadaten-Recherche
zu SIA 384/4:2025** (Produktseite, Preis, Seitenzahl, exaktes Datum) — eine bisher in dieser KB
unbekannte Norm, die nur aus einem Zitat der Korrigenda C1:2025 zu SIA 384/1:2022 bekannt war.

**Kollisionscheck** (`ps aux`) vor Arbeitsbeginn: neben dem eigenen Prozess (PID 90561, Skript-
Wrapper `mschub181`) läuft parallel ein zweiter, eigenständiger Lauf mit anderem Auftragstext
(«Arbeite weitere offene Fragen in `wiki/QUESTIONS.md` ab», `mschub179`, PID 89008) — schreibt
ebenfalls in `wiki/QUESTIONS.md`, aber an anderer Stelle (SIA-181-FAQ-Fund, Zeile ~3400). Kein
Namenskonflikt (keine dritte «SIA-Sweep»-Instanz aktiv), keine Zeilenüberschneidung im Diff nach
dem eigenen Schreibvorgang festgestellt.

## Durchgeführt: Metadaten-Recherche SIA 384/4:2025

Produktseite `shop.sia.ch/normenwerk/architekt/384-4_2025_d/D/Product` (SN 546384/4) per
`WebFetch` zweifach mit unterschiedlichem Extraktionsprompt abgerufen (Gegenkontrolle gegen
Verkürzungsartefakte des Fetch-Zusammenfassungsmodells), beide Abrufe deckungsgleich:

- Titel: «Klimakälteanlagen in Gebäuden — Grundlagen und Anforderungen»
- 108 Seiten, A4, broschiert, 0.346 kg
- **Gültig ab 01.05.2025**, Status aktuell
- Preis 230.00 CHF (Papierlieferung und Download/SRD identisch)
- Einziger kostenloser Download: Inhaltsverzeichnis (PDF, 89.729 KB) — **kein freier Volltext,
  keine freie Korrigenda** gefunden (Nullbefund nach derselben, seit der 19. Fortsetzung
  etablierten Methode wie die 5 Nullbefunde der 29. Fortsetzung)
- Vorgänger-Verweis auf der Produktseite: SIA 384/1:2022 (bestätigt den bereits bekannten
  Zusammenhang aus der Korrigenda C1:2025)

**Nebenbefund, nicht aufgelöst, nur festgehalten:** Die Korrigenda C1:2025 zu SIA 384/1
(Destillat `destillate/sia-384-1-korrigenda-c1.md`) datiert die Ablösung von Anhang E auf
01.03.2025; die eigene Produktseite von SIA 384/4:2025 nennt dagegen 01.05.2025 als Gültig-ab.
Zwei Monate Differenz. Die Ursache wurde **nicht recherchiert** — es wäre reine Spekulation, ohne
ein drittes Dokument (z. B. Genehmigungsprotokoll SIA-Normenkommission) zu entscheiden, ob die
Korrigenda ein früheres Ankündigungsdatum trägt oder ob ein Datenfehler auf einer der beiden
Seiten vorliegt. Im Register als offene Beobachtung markiert, nicht als Widerspruch behauptet.

## Nachgeführt

- `wiki/REGISTER.md`, Zeile SIA 384/4: Ausgabejahr-Spalte von «—(alle zurueckgezogen)» auf
  **2025** korrigiert (die Zeile führt jetzt eine gültige, nicht zurückgezogene Norm); Bemerkungs-
  spalte um die vollständigen Metadaten und den Datums-Nebenbefund ergänzt.
- `wiki/QUESTIONS.md`, Abschnitt «Neue Bring-Schuld: SIA 384/4:2025»: Metadaten-Teilfrage mit ✅
  geschlossen, die kostenpflichtige Volltext-Beschaffung (230 CHF) bleibt als eigene, unverändert
  offene Zeile stehen.
- **Kein neues Destillat** — konsistent mit der Konvention der 29. Fortsetzung: ein reiner
  Inhaltsverzeichnis-Download ohne Fliesstext ist nicht destillat-würdig.

## Offen für den nächsten Lauf

Die SIA/VKF-Blindzone (Register-Zeilen ohne Datei im Haus) bleibt erschöpft — bestätigt jetzt von
drei unabhängigen Läufen in Folge (27., 29., 30. Fortsetzung). Ein weiterer Fortschritt im engeren
Sweep-Sinn braucht entweder:

1. Raphaels Kaufentscheide zu den verbliebenen kostenpflichtigen Bring-Schulden (SIA 380/1,
   385/1, 266/1, 384/1, jetzt auch 384/4 — 5 Volltexte, keiner davon kostenlos zugänglich), oder
2. eine Mandatsausweitung über SIA/VKF hinaus (die 28. Fortsetzung hatte mit den bfu-Publikationen
   bereits gezeigt, dass Abschnitt D «Nicht-SIA-Familien» noch unbearbeitete Altvorbehalte trägt).

Ein künftiger Lauf sollte vor einem neuen P1-Rundgang zuerst prüfen, ob Raphael zwischenzeitlich
einen der Kaufentscheide getroffen hat (`logbuch/fristen.md`, Projektablage) — sonst wiederholt
sich die reine Metadaten-Pflege ohne fachlichen Zuwachs.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: `wiki/REGISTER.md` 2/2 (eine Zeile
ersetzt, keine fremde Zeile berührt — bestätigt per `git diff`-Volltext, die einzige weitere
Änderung im Diff-Kontext, Zeile SIA 181, stammt nachweislich vom parallelen QUESTIONS-Lauf und
wurde von diesem Lauf nicht angefasst), `wiki/QUESTIONS.md` 23/4 (der eigene Block ersetzt 4
Zeilen durch 23 neue; ein zweiter, disjunkter Diff-Hunk bei Zeile ~3395 stammt vom parallelen
Prozess `mschub179`, keine Zeilenüberschneidung mit dem eigenen Edit). Kein `git`-Schreibbefehl
über den SMB-Mount ausgeführt; Commit über den 15-Minuten-`nas-selfcommit`-Cron bzw.
`scripts/nas-commit-now.sh`.
