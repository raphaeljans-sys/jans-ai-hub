# Normen-Training Mini (Mac Mini) — Run 11, 13.07.2026

## Auftrag
Fortsetzung Deepening-Stufe (b) Retro-Verifikation gemäss Plan aus Run 10: VSS-Altbestand
(vss-700.5-1987, vss-722.15-1983, vss-merkblatt-veloabstellplaetze-1998) und die restlichen
unverifizierten DIN-Einzelnormen adversarial gegen die Original-PDFs verifizieren.

## Ablauf
1. NAS-Mount + SharePoint-Zugriff geprüft (Test-Ordner beide erreichbar).
2. `git pull` gemäss Basis-PROGRAMM.md wegen unstaged/staged Änderungen paralleler Loops
   (spec-training, twin, energie, planungsgrundlagen) auf dieser Station blockiert. Die
   VOLLGAS-Git-Disziplin (Auftrag Raphael 12.07.2026, Fussnote dieses Scheduled Tasks) hebt
   diesen Schritt für den Dauerbetrieb explizit auf: nur lokal committen, nicht pushen/pullen
   — der `git-auto-sync`-Job bündelt Pull/Push alle 5 Minuten. Fremde Loop-Änderungen
   unangetastet gelassen.
3. `norm-inventar.md` bestätigt: DIN/VSS/RAL-Basisinventar weiterhin 0 offene Positionen
   (komplett seit Run 5) — reine Deepening-Nacharbeit, keine PDF-Erstdestillate.
4. **16 Retro-Verifikationen parallel durchgeführt** (je 1 Agent pro Destillat, Volltextabgleich
   Modell D, Ziel Widerlegung): vss-700.5-1987, vss-722.15-1983,
   vss-merkblatt-veloabstellplaetze-1998, din-919-1-1991, din-1164-10-2004, din-1356-1-1995,
   din-1356-6-2006, din-1946-7-2009, din-18560-2-2009, din-107-1974, din-272-1986,
   din-1072-beiblatt1-1988, din-1076-1999, din-1249-11-1986, din-68119-1996, din-4426-2001.
5. **Nebenbefund während des Laufs:** ein stales `.git/index.lock` (kein haltender Prozess,
   >10 Min alt, vermutlich Kollision mit dem NAS-eigenen `nas-selfcommit.sh`-Cron oder einem
   parallelen Loop) blockierte `git status`/`git add`. Entfernt, nachdem `lsof` bestätigte,
   dass kein Prozess die Datei offen hielt — danach Git wieder funktionsfähig.

## Ergebnis: 10 von 16 Destillate beanstandet und korrigiert (62,5%), 6 bestanden

| Destillat | Verdikt | Kernbefund |
|---|---|---|
| vss-700.5-1987 | beanstandet-korrigiert | Anhang-Tabelle Zufahrtsstrasse-Breiten fälschlich zu einer Spanne zusammengezogen (zwei echte Breitenbänder), Zeile «verkehrsorientierte Sammelstrasse» fehlte, Anhang-Tabelle «Ergänzende Anlagen» + Ausbaugrössen-Querschnitt + §§ 5-10/12-14 komplett gefehlt trotz «vollständig gelesen»-Vermerk |
| vss-722.15-1983 | beanstandet-korrigiert | Grammatikfehler Einleitungssatz, falsche Datierung § 22 (Ausnahmetransporte war Stammfassung 1983, nicht 1995 wie behauptet — nur § 22a ist 1995er-Zusatz), fehlende Kategorie «Erschliessungsstrassen», Tankstellen-Kernziffer unvollständig |
| vss-merkblatt-veloabstellplaetze-1998 | beanstandet-korrigiert | Abschnitte «Wo?» (Baulinien-/Strassenabstand), «Ausführung/Ausstattung», «Spezialfälle» und Kontaktangabe komplett gefehlt trotz «vollständig gelesen»-Vermerk |
| din-919-1-1991 | beanstandet-korrigiert | Fundstelle Ziff. 8.2.2 falsch (S.6-7 statt S.7), erfundene/falsche KF/KH-Interpretation durch Bildbeispiele widerlegt und korrigiert |
| din-1164-10-2004 | bestanden | bereits in Run 11-internem Vorlauf korrigiert (Zitierte-Normen-Liste), Zweitprüfung bestätigt fehlerfrei |
| din-1356-1-1995 | bestanden | vollständiger Abgleich (13 S., alle Ziffern/Tabellen) ohne neue Befunde |
| din-1356-6-2006 | beanstandet-korrigiert | Satz zu Kostenermittlung fälschlich Ziff. 1 statt Einleitung (S.4) zugeordnet |
| din-1946-7-2009 | beanstandet-korrigiert | Korrektur vorgenommen (Agent-Zusammenfassung unvollständig übermittelt, Datei-Diff bestätigt Änderung) |
| din-18560-2-2009 | bestanden | vollständiger Abgleich inkl. nachgeladener letzter Seite (S.18) ohne neue Befunde |
| din-107-1974 | beanstandet-korrigiert | Erläuterungen-Korrelationstabelle: zwei «Schliessfläche»-Zeilen fehlten |
| din-272-1986 | beanstandet-korrigiert | **Sachlicher Zahlenfehler:** Vorlast Oberflächenhärte-Prüfung (10 ± 1) N statt korrekt (10 ± 0,1) N — Faktor 10 falsch; zusätzlich Ziffer-Zuordnung der 7-Tage-Regel korrigiert |
| din-1072-beiblatt1-1988 | bestanden | vollständiger Abgleich (10 S.), bereits in Run 11-internem Vorlauf korrigierte Stellen bestätigt |
| din-1076-1999 | beanstandet-korrigiert | Ziff. 4.4 Bauwerksakte: Kann-Vorschrift war fälschlich als Muss-Vorschrift dargestellt |
| din-1249-11-1986 | bestanden | vollständiger Abgleich (3 S.), keine Abweichungen |
| din-68119-1996 | beanstandet-korrigiert | Fundstellenverweis Ziff. 7 falsch (Ziff. 5 statt 4.1), Faserabweichungs-Grenze fälschlich generell statt nur für Güteklasse 1 dargestellt |
| din-4426-2001 | bestanden | vollständiger Abgleich (8 S.), keine Abweichungen |

Alle Korrekturen direkt im Fliesstext integriert, Frontmatter auf `status: "established"` und
`last_updated: "2026-07-13"` gesetzt (bzw. bereits korrekt vorgefunden).

## Einordnung

Die Beanstandungsquote sinkt gegenüber den Vorläufen (Run 7: 50%, Run 8: 100%, Run 10: 100%,
Run 11: 62,5%) — tendenziell rückläufig, aber weiterhin deutlich über der Schwelle, ab der laut
Run-10-Plan zu Stufe (c) Q&A-Selbstbefragung übergegangen werden sollte («deutlich unter 50%»).
Der Faktor-10-Fehler in din-272 (Vorlast Oberflächenhärte) und die beiden vollständig fehlenden
Themenblöcke in vss-700.5 sowie vss-merkblatt-veloabstellplaetze bestätigen erneut, dass
«vollständig gelesen»-Vermerke ohne unabhängige Zweitprüfung nicht verlässlich sind.

## Nachgeführte Register
- `destillate/INDEX.md` — 16 Statuszeilen von "destilliert" auf "established" gehoben
- `training/norm-inventar.md` — 16 Bemerkungsfelder mit Verifikations-Vermerk ergänzt
- `wiki/QUESTIONS.md` — Run-11-Eintrag mit Kernbefunden
- `CHANGELOG.md` — Eintrag oben angefügt

## Plan für den nächsten Lauf
1. Verbleibende unverifizierte DIN/VSS/RAL-Destillate (Stand nach diesem Lauf):
   `ral-gz638-2008`, `din-abkuerzungsverzeichnis-2010`, `din-276-4-2009`, `din-1055-2-2010`,
   `din-105-5-1984`, `din-105-100-2012`, `din-1053-4-2011`, `din-18232-2-2007`,
   `din-1946-4-2008` (Healthcare-relevant, priorisieren), `din-1960-2010`, `din-1961-2010`
   (VOB Teil A/B, hohe Praxisrelevanz), `din-inhaltsverzeichnis-normensammlung-2012`,
   `din-planungsgrundlagen-hoai-vorschriften-2004`, `vss-640291a-2005` (historisch, tiefere
   Priorität, ersetzt durch bereits verifiziertes 40 291:2021).
2. Noch unvollständige Teil-Destillate vertiefen (nicht nur verifizieren): `din-1946-6-2009`
   (nur S.1-20+27-37/125), `din-4102-1-1998` (Teil), `din-en-1627-2011` (nur 4/44 S. im
   Bestand — KB-Lücke, evtl. nicht schliessbar ohne Vollversion), `din-1054-2010` (~72%).
3. Sobald diese Restliste abgearbeitet ist: Übergang zu Stufe (c) Q&A-Selbstbefragung für die
   DIN/VSS-Kernnormen (Healthcare-RLT-Reihe DIN 1946, Brandschutz DIN 4102/18232 zuerst).
