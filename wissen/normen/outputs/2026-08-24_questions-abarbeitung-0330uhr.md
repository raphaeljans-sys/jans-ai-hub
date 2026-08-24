# QUESTIONS-Abarbeitung — Lauf 03:30 Uhr (unabhängige Zweitverifikation)

**Auftrag:** Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established`
zitierfähig. CHANGELOG-Kopf und Report des letzten Laufs (03:17 Uhr,
`outputs/2026-08-24_questions-abarbeitung-0317uhr.md`) zuerst gelesen.

## Kollisionscheck

`ps aux`: eigener Prozess PID 82846, exakt dieser Auftragstext — eigener Lauf. Sibling-Prozess
PID 79795 arbeitet an der KB `baurecht` (Reglemente-Queue), kein Konkurrent auf `wissen/normen/`.

## Ausgangslage

Der 03:17-Lauf hatte fünf verbleibende offene Sektionen bestätigt (Leitplanke Gebäudekategorien,
NIN-Geschirrspüler, N60-1, N60-2, Bring-Schulden-Sektion `baurecht`) und für zwei
Bring-Schuld-Punkte (SN 641 400, NIN-Geschirrspüler) verifizierte Kontaktdaten ergänzt.

## Eigene, unabhängige Gegenprobe

Eigenes Python-Skript über alle `## `-Abschnitte (Header-Text UND Abschnittskörper auf
`GESCHLOSSEN`/`✅` geprüft) fand **15 Kandidaten ohne Schliess-Marker**, darunter zwei, die der
03:17-Lauf nicht in seiner Fünferliste führte:

1. **Zeile 1743, „2026-08-05 (Cross-KB Lauf 26) — VKF-Merkblatt 2001-15 «Solaranlagen»:
   Fassung entschieden, Re-Destillat offen".** Bei genauem Lesen: Punkt 1 (Re-Destillat der
   Ausgabe 2022) ist **durchgestrichen als ERLEDIGT markiert** und tatsächlich in Run 45
   (06.08.2026, weiter oben im Dokument, Zeile ~1683) fertiggestellt —
   `destillate/vkf-merkblatt-2001-15-solaranlagen-2022.md`, established-Refuter-Runde
   BEANSTANDET/2 Kernbefunde eingearbeitet. Punkt 3 (SharePoint-Doppelablage) ist ausdrücklich
   als „kein Claude-Alleingang" markiert — Bring-Schuld Raphael, keine Web-Recherche kann das
   lösen. **Der Header-Titel «Re-Destillat offen» war schlicht veraltet**, obwohl der Inhalt
   selbst längst korrekt war.
2. **Zeile 1788, „2026-08-04 (Cross-KB energie → normen, Wissens-Chef Run 25) — SIA 430:2023 +
   SIA 118/430:2023 beschaffen, drei nie angekommene Übergaben aus energie-Run 123".** Die drei
   im Abschnitt aufgeführten Übergaben E-123-2, E-123-3, E-123-6 sind **alle drei bereits in
   Run 45 geschlossen** (Zeilen ~1699-1710, mit vollständiger Herausgeber-Verifikation:
   SIA 162/4 → SIA 2030:2021 herausgeberseitig belegt, SIA 493 strukturell ohne Nachfolger
   belegt, SIA 118:2013 + Korrigenda C1 belegt). Nur SIA 430:2023 und SIA 118/430:2023 selbst
   (Kauf, 90.00 CHF bzw. 80.00 CHF, shop.sia.ch, bereits verifiziert) bleiben offen — reine
   Bring-Schuld Raphael, keine Web-Lücke.

Beide Fälle sind damit **keine neuen inhaltlichen Lücken**, sondern Fälle, in denen eine spätere
Klärung (Run 45) an anderer Stelle im Dokument steht als die ursprüngliche Frage, ohne dass die
Kopfzeile der Frage selbst je nachgezogen wurde — dieselbe Klasse Problem, die den automatisierten
Kopfzeilen-Scan wiederholt in die Irre führt und die auch künftige Läufe erneut binden würde.

Die übrigen 13 vom Skript gemeldeten Kandidaten wurden geprüft und sind **historische
Run-Berichte ohne Frage-Charakter** (abgeschlossene Log-Einträge früherer Sweep-/Nacht-Runs,
z.B. „Run 49", „Mini-Run 32", „Run 32") — bestätigt dieselbe Einschätzung wie im 03:17-Lauf.

## Durchgeführt

Beide veralteten Kopfzeilen um einen ⚠-Nachtrag ergänzt (rein additiv, kein bestehender Text
verändert oder gelöscht):
- Zeile 1743: Verweis auf die tatsächliche Erledigung in Run 45 plus den einzig verbleibenden
  Bring-Schuld-Rest (SharePoint-Ablage, Punkt 3).
- Zeile 1788: Verweis auf den Run-45-Abschnitt, der E-123-2/-3/-6 bereits schliesst, plus die
  beiden einzig verbleibenden Kaufpositionen (SIA 430:2023, SIA 118/430:2023).

Zweck: verhindert, dass ein künftiger automatisierter Gegenprobe-Lauf (wie dieser und der
03:17-Vorlauf) dieselben zwei bereits erledigten Abschnitte erneut als „offen" listet und Zeit
auf eine wiederholte Verifikation verwendet, die schon zweimal (Run 45, jetzt) zum selben
Ergebnis kam.

N60-1 (Destillat-Dublette AFC-Synopse, Entscheid Raphael) und N60-2 (Methodik-Pflicht-14-
Vorschlag, Freigabe Raphael) erneut geprüft: beide bleiben unverändert bei Raphael — eine
Zusammenlegung von Destillaten ist destruktiv (Rule `wissens-bibliothekar`, Pause-Pflicht vor
Löschen/Mergen), und die Methodik-Erweiterung braucht ausdrückliche Freigabe (Präzedenzfall
17.08.2026: von drei vorgelegten Pflichten wurde nur MP 13 freigegeben).

## Ergebnis

Kein Punkt inhaltlich neu geschlossen — alle verbleibenden Sektionen (Leitplanke
Gebäudekategorien: dauerhafte Referenz; NIN-Geschirrspüler, SIA 430/118-430, SIA 491,
SN EN 12193, SIA 384/4:2025, SN 640 273a, SN 641 400: Kauf-Bring-Schuld Raphael; N60-1/N60-2:
Entscheid/Freigabe Raphael) hängen an einer externen Handlung. Ertrag dieses Laufs: zwei
Kopfzeilen korrigiert, die künftige Läufe sonst wiederholt als offen fehlklassifiziert hätten —
ein kleiner, aber echter Beitrag zur Reduktion von Doppelarbeit. Die Kernaussage des
03:17-Laufs bestätigt sich damit ein drittes Mal (nach Run 45 und dem 03:17-Lauf selbst): die
Datei ist inhaltlich ausgeschöpft, solange Raphael keine der genannten externen Handlungen
vornimmt.

## Verifikation

`git diff --numstat -- wissen/normen/wiki/QUESTIONS.md`: 2 Zeilen hinzugefügt, 2 Zeilen entfernt
— exakt die zwei bearbeiteten Kopfzeilen ersetzt (Zeile-für-Zeile-Erweiterung, kein sonstiger
Inhalt berührt). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit über den
15-Minuten-`nas-selfcommit`-Cron.
