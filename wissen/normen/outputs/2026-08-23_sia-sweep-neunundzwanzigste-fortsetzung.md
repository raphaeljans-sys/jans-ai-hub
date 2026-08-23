# SIA-Sweep, neunundzwanzigste Fortsetzung — 23.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
Laufs zuerst gelesen, dort weitergemacht.

## Ausgangslage eigenständig geprüft

Die 27. Fortsetzung hatte den engeren SIA-Blindzonen-Sweep (Register-Zeilen ohne Datei im Haus)
für erschöpft erklärt. Eigene Gegenprüfung bestätigte das unabhängig: `training/norm-inventar.md`
zeigt 0 offene `[ ]`-Positionen über alle Familien; `wiki/REGISTER.md` Abschnitt A trägt bei
allen verbleibenden Lücken bereits ein Produktdatenblatt (Ausgabejahr, gültig-ab/-bis,
Archiv-/Nachfolgestatus); die 25. Fortsetzung hatte zusätzlich den einzigen noch ungeprüften
Beschaffungsweg der drei P1-Bring-Schulden (380/1, 385/1, 266/1 — ein fremdes iNorm-Abo-Dokument)
geprüft und als Sackgasse geschlossen.

**Kollisionscheck** (`ps aux`) zeigte den eigenen Prozess (identischer Auftragstext, PID 85668)
sowie zwei parallele Läufe auf derselben KB (`QUESTIONS-Abarbeitung 25`, andere Datei
`wiki/QUESTIONS.md`; ein bereits abgeschlossener `SIA-Sweep`-Lauf, der sich ebenfalls
«achtundzwanzigste Fortsetzung» genannt hatte, bfu-Treppen/-Glas betreffend) — kein
Datei-Konflikt, aber eine **Nummernkollision**: dieser Lauf hatte beim Start denselben Bezeichner
gewählt, weil beim eigenen Lesen des letzten Reports (27.) die parallel bereits geschriebene
28. Fortsetzung noch nicht sichtbar war. Alle eigenen Artefakte nachträglich von
«achtundzwanzigste» auf **«neunundzwanzigste» Fortsetzung** umbenannt (Destillat, Register-,
QUESTIONS- und INDEX-Zeilen), bevor sie geschrieben/committet wurden — keine fremde Zeile
überschrieben, reiner Bezeichner-Fix.

## Gewählter Ansatz: P1-Bring-Schulden auf freie Korrigenda-/Leseproben-Downloads prüfen

Die 24. Fortsetzung hatte eine priorisierte Bring-Schulden-Einkaufsliste (P1–P4) erstellt. Die
19./20./21./22. Fortsetzung hatten dafür bereits eine Methode etabliert («Produktseite prüfen,
ob neben dem kostenpflichtigen Volltext ein kostenloser Zusatz-Download — Korrigenda, Erläuterung
— existiert») und grosse Teile der Blindzone-Liste damit abgearbeitet, aber **nicht die volle
P1-Liste** (SIA 118/430, 380:2022, 384/1:2022, 384/6:2021, 269/8:2017, 243:2026). Diese sechs
P1-Zeilen gezielt per WebFetch auf `shop.sia.ch/normenwerk/.../D/Product` geprüft.

**5 Nullbefunde** (nur kostenloses Inhaltsverzeichnis, kein weiterer Anhang, nach etablierter
Konvention nicht destillat-würdig): SIA 380:2022 (Inhaltsverzeichnis, 180 CHF), SIA 384/6:2021
(Inhaltsverzeichnis, 220 CHF), SIA 269/8:2017 (Inhaltsverzeichnis — Basisnorm; Korrigenda C1:2022
war bereits in der 17. Fortsetzung separat gefunden und destilliert), SIA 243:2026
(Inhaltsverzeichnis), SIA 118/430:2023 (bereits von der QUESTIONS-Abarbeitung 23.08.2026 mit
«kein kostenloser Zugang gefunden» dokumentiert, hier nur re-bestätigt, kein Doppel-Eintrag).

**1 Treffer: SIA 384/1:2022.** Produktseite (`architekt/384-1_2022_d`, SN 546384/1) führt neben
dem Inhaltsverzeichnis einen zweiten kostenlosen Anhang «Korrigenda C1» (Preisgruppe 0). PDF
per WebFetch geladen, mit `/opt/homebrew/bin/pdftotext -layout` (Hinweis: `pdftotext` liegt auf
dieser Station nicht im PATH der Shell, voller Pfad nötig) vollständig extrahiert und gelesen:
**SIA 384/1-C1:2025** (SN 546384/1-C1, genehmigt 11.02.2025, gültig ab 01.03.2025, 3 S.).
Einzige Korrektur: **Anhang E (S. 63-67, «Kälteverteilung») wird durch die neue, eigenständige
Norm SIA 384/4:2025 «Klimakälteanlagen in Gebäuden — Grundlagen und Anforderungen» ersetzt.**

## Zwei Nebenbefunde

1. **Korrektur eines fremden Nullbefunds.** Die 19. Fortsetzung hatte SIA 384/1 im selben
   Korrigenda-Check-Sweep bereits geprüft und als Nullbefund («nur reguläres
   Inhaltsverzeichnis») protokolliert. Bei der heutigen Prüfung war der Korrigenda-Download-Link
   vorhanden. Ursache nicht geklärt (shop.sia.ch hat den Anhang nachträglich ergänzt — die
   Korrigenda datiert vom 11.02.2025, läge also zeitlich schon vor dem 19.-Fortsetzung-Abruf —
   oder der frühere Abruf hat das Feld übersehen). Als Korrektur vermerkt (Destillat-Frontmatter,
   Register-Zeile), nicht verschwiegen.
2. **Neue, bisher unbekannte Norm entdeckt.** SIA 384/4:2025 war in dieser KB nicht geführt — die
   Nummer 384/4 stand nur als 1987 zurückgezogene, sachlich unverwandte Altnorm im Register. Nur
   aus dem Korrigenda-Zitat bekannt (Titel, Existenz); Produktseite/Preis/Seitenzahl nicht
   eigenständig recherchiert. Als neue Bring-Schuld in `wiki/QUESTIONS.md` erfasst.

## Nachgeführt

- Neues Destillat `destillate/sia-384-1-korrigenda-c1.md` (established, Modell D — Volltext
  vollständig gelesen, keine separate Refuter-Runde, da nur eine einzeilige Tabellenzeile ohne
  weiteren Fliesstext).
- `wiki/REGISTER.md`: Zeile SIA 384/1 (Korrigenda-Fund + Korrektur-Vermerk) und Zeile SIA 384/4
  (neuer Warnhinweis zur Nummernwiederverwendung) ergänzt.
- `wiki/QUESTIONS.md`: neuer Abschnitt «Neue Bring-Schuld: SIA 384/4:2025» angehängt.
- `destillate/INDEX.md`: neue Zeile.

## Offen für den nächsten Lauf

- SIA 384/4:2025 selbst (Metadaten-Recherche über shop.sia.ch — Preis, Seitenzahl, exaktes
  Genehmigungsdatum — kostenlos möglich, noch nicht durchgeführt).
- Die 5 Nullbefunde dieser Runde sind auf die Korrigenda-Methode geprüft; ein künftiger Lauf muss
  sie dafür nicht erneut abrufen, sofern shop.sia.ch keine neue Fassung veröffentlicht.
- Die eigentliche SIA/VKF-Blindzone bleibt im Übrigen erschöpft (siehe 27./28. Fortsetzung);
  weiterer Fortschritt braucht entweder Raphaels Kaufentscheide zu den P1-Bring-Schulden
  (380/1, 385/1, 266/1, jetzt auch 384/1, 384/4) oder eine Mandatsausweitung über SIA/VKF hinaus.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: `wiki/REGISTER.md` 13/8 (zwei Zeilen
erweitert, keine fremde Zeile gestrichen — die 8 gelöschten Zeilen sind dieselben zwei Zeilen vor
der Erweiterung), `wiki/QUESTIONS.md` 39/0 (reine Ergänzung ans Ende), `destillate/INDEX.md` 6/3
(eine neue Zeile eingefügt, 3 alte Zeilen um den Zeilenumbruch verschoben, kein Text gelöscht),
neues Destillat additiv (neue Datei). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt;
Commit über den 15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
