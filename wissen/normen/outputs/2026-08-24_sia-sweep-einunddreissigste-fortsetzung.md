# SIA-Sweep, 31. Fortsetzung — 24.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
Laufs (30. Fortsetzung) zuerst gelesen, dort weitergemacht.

## Ausgangslage geprüft

Die 30. Fortsetzung (23.08.2026) hatte die enge SIA/VKF-Blindzone (Register-Zeilen ohne Datei
im Haus) als erschöpft bestätigt — dritter Lauf in Folge (27./29./30. Fortsetzung). Verifiziert:
`training/norm-inventar.md` führt weiterhin exakt 5 offene `| [ ] |`-Tabellenzeilen, alle
externe kostenpflichtige Bring-Schulden (SIA 491, SN EN 12193, SN 640 052, SN 641 400, SIA
181:2020) — keine Veränderung seit der 30. Fortsetzung. `logbuch/fristen.md` auf einen neuen
SIA-Kaufentscheid geprüft: kein Treffer.

**Kollisionscheck** (`ps aux`) vor Arbeitsbeginn: eigener Prozess (PID 99502, Skript-Wrapper
`mschub186`, exakt dieser Auftragstext). Parallel läuft `mschub184` (PID 97536) mit Auftrag
«Arbeite weitere offene Fragen in `wiki/QUESTIONS.md` ab» — bearbeitet dieselbe Datei
`wiki/QUESTIONS.md`, aber ein anderer thematischer Block; kein Namens- oder Zeilenkonflikt mit
diesem Lauf, der `wiki/QUESTIONS.md` in dieser Fortsetzung nicht anfasst. Ein dritter Lauf
`mschub183` bearbeitet die Baurecht-KB (fremdes Verzeichnis, keine Berührung).

## Entscheid: Mandatsausweitung statt weiterer Metadaten-Pflege

Die 30. Fortsetzung hatte zwei Wege für den nächsten Lauf benannt: Raphaels Kaufentscheide
abwarten, oder eine Mandatsausweitung über SIA/VKF hinaus (Vorbild bfu-Publikationen, 28.
Fortsetzung). Da kein Kaufentscheid vorliegt, wurde die zweite Option verfolgt. `wiki/
REGISTER.md` Abschnitt D («Nicht-SIA-Familien») listet unter der bereits destillierten
Suva-Publikation 44077.d neun weitere Gerüstbau-Publikationen der gleichen Reihe als
kostenlose, aber unerschlossene Bring-Schuld-Kandidaten: 44078.d, 44046.d, 84018.d, 67038.d,
67150.d sowie neun Factsheets (33001.d etc.).

## Durchgeführt: 5 Suva-Publikationen beschafft, gelesen, destilliert

| Nr. | Titel | Ausgabe | Seiten | Kernwert |
|---|---|---|---|---|
| 44078.d | Fassadengerüste — Sicherheit bei der Montage und Demontage | Erstausgabe Dez. 2006, überarb. Januar 2022 | 22 | Fassadenabstand max. 30 cm, Sicherung ab 2,0 m Absturzhöhe, Rettung 15-20 Min. |
| 44046.d | Sicheres Arbeiten im Bereich von Liftschächten | Erstausgabe Juli 1993, überarb. Januar 2022 | 24 | Tragfähigkeit mind. 3,0 kN/m², Wandabstand max. 30 cm, Seitenschutz max. 47 cm bei gerüstloser Liftmontage |
| 84018.d | Acht zentrale Fragen rund um das Rollgerüst | Erstausgabe Juni 1999, überarb. November 2003 | 10 | Standhöhe max. 8 m aussen/12 m innen |
| 67038.d | Checkliste Fassadengerüste | Ausgabe Februar 2022 | 4 | 22-Fragen-Kontrollraster |
| 67150.d | Checkliste Rollgerüste | Ausgabe Juli 2026 | 4 | 19-Fragen-Kontrollraster, Standhöhe max. 8 m/12 m |

Beschaffungsweg: `curl` auf `www.suva.ch/waswo/<Nr>.D`, danach `pymupdf` (Python `fitz`) zur
Text- und Metadatenextraktion, da `pdftotext`/`pdfinfo` auf dieser Station nicht installiert
sind. Alle fünf PDFs tragen einen echten Textlayer (kein Scan), vollständig gelesen.

**Werkzeug-Falle entdeckt und dokumentiert:** Bei drei der fünf Publikationen (44078, 44046,
84018) lieferte der direkte `curl`-Abruf des Kurzlinks trotz grossem `.D`-Suffix die
FRANZÖSISCHE Fassung (PDF-Metadatentitel «44078.f», «44046.f», «Huit questions essentielles
rund um das Rollgerüst» statt der erwarteten deutschen Version). Der Fehler wurde am
PDF-Metadatentitel bemerkt (nicht am Fliesstext geraten), dann über eine gezielte
`WebFetch`-Abfrage der Produktseite («Finde den Download-Link für die DEUTSCHE PDF-Version»)
korrigiert — diese lieferte eine andere Content-ID, die am erneuten Metadatenabgleich als
deutsch bestätigt wurde. Bei 67038 und 67150 lieferte derselbe Kurzlink-Mechanismus direkt und
korrekt die deutsche Fassung. **Lehre: bei jedem künftigen Suva-Abruf den PDF-Metadatentitel
prüfen, nicht die URL als Sprachgarantie vertrauen.**

## Nachgeführt

- 5 neue Destillat-Dateien in `destillate/` (siehe Tabelle), alle Frontmatter mit `quelle`,
  `herausgeber`, `ausgabe`, `gelesen`, `status: established`, `verifikation`-Vermerk inkl.
  Werkzeug-Falle.
- `destillate/INDEX.md`: 5 neue Zeilen nach der bestehenden `suva-67012`-Zeile.
- `training/norm-inventar.md`: 5 neue Zeilen `[x] 260824` mit vollem Beleg, nach der
  bestehenden 44077.d-Zeile.
- `wiki/REGISTER.md` Abschnitt D: 5 neue Tabellenzeilen in der Suva-Publikationstabelle; der
  bisherige 6-zeilige Bring-Schuld-Absatz wurde durch einen ✅-Vermerk («alle fünf namentlich
  benannten Publikationen erschlossen») plus die verbleibende, jetzt auf neun Factsheets
  reduzierte Liste ersetzt.
- `CHANGELOG.md`: neuer Kopf-Eintrag oberhalb des heutigen QUESTIONS-Abarbeitungs-Laufs
  (chronologisch korrekt eingefügt, dessen Eintrag unverändert darunter belassen).

## Offen für den nächsten Lauf

1. **Neun Factsheets derselben Reihe** (33001.d/33017.d/33020.d/33021.d/33022.d-33025.d/
   33029.d) — je 1-2 Seiten, alle kostenlos, gleiche Beschaffungsroute. Direkte Fortsetzung
   dieser Mandatsausweitung; bei jedem Abruf den Sprachfallen-Check (Metadatentitel) wiederholen.
2. **84018.d-Aktualität ungeklärt:** älteste der fünf Publikationen (2003), kein
   Aktualitäts-Check auf neuere Fassung durchgeführt — analog zur 67012.d-Methode (Vorgänger-
   Fund einer 2025er-Ausgabe) nachziehbar.
3. Danach unverändert wie in der 30. Fortsetzung: Raphaels Kaufentscheide zu den 5
   kostenpflichtigen SIA/VKF-Bring-Schulden, oder Rest-Check der übrigen bfu-Publikationen
   (2.003/2.005/2.027/2.032/2.034/2.075) auf neuere Fassungen.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: 5 neue Destillat-Dateien (`git status
--porcelain`, alle `??` — kein Bestand überschrieben), `destillate/INDEX.md` 5/0,
`training/norm-inventar.md` 5/0, `wiki/REGISTER.md` 7/7 (Block-Ersatz per Volltext-Diff
geprüft, keine fremde Zeile berührt), `CHANGELOG.md` 75/0 (reine Ergänzung oberhalb des
bestehenden Kopf-Eintrags, dieser unverändert). Kein `git`-Schreibbefehl über den SMB-Mount
ausgeführt; Commit über den 15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
