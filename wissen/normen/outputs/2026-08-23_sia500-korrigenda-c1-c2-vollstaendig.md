# SIA 500 Korrigenda C1:2009 und C2:2011 vollständig am Original ausgewertet

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
  Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
  beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: zwölfte Fortsetzung),
  `outputs/2026-08-23_sia-sweep-zwoelfte-fortsetzung.md`.

## Ausgangslage

Die zwölfte Fortsetzung hatte drei Zweige des Sweeps (Register-Vervollständigung,
Blindzone-Sweep, N-SIASWEEP-2/3) als erschöpft/bewusst-ausgesetzt vermerkt und stattdessen SIA
385/9 direkt verifiziert. Als Empfehlung für die Fortsetzung stand: weitere Register-Zeilen mit
nur sekundär belegter Bring-Schuld suchen. Bei der Durchsicht von `wiki/QUESTIONS.md` (Suche nach
«bisher nur … gemeldet» / «nicht am Normtext verifiziert») fiel ein konkreterer, bereits präzise
formulierter Auftrag auf, der noch offen war: der Nachtrag vom 23.08.2026 (siebter
QUESTIONS-Lauf) zum Eintrag «Wissens-Chef Run 19» hatte C3:2013 und C4:2019 vollständig
ausgewertet und ausdrücklich vermerkt: «C1/C2 bleiben unverändert offen (nur sekundär über
`sia-500-auslegung.md` belegt)» — mit dem Hinweis im vorausgehenden Chef-Lauf-Text: «danach C1/C2
im Volltext beschaffen (bisher nur sekundär über `sia-500-auslegung`, Stand April 2012 belegt)».

## Vorgehen

1. **Produktseite direkt geprüft:** `shop.sia.ch/normenwerk/architekt/sia%20500/d/D/Product` per
   WebFetch. Bestätigt: nur **eine Ausgabe** (2009, gültig ab 01.01.2009, 200.00 CHF, 72 S.), kein
   Hinweis auf eine 2. oder 3. Auflage — eine WebSearch-Ergebniszusammenfassung hatte zuvor
   fälschlich eine «2. Auflage Juni 2011» und «3. Auflage September 2022» suggeriert; das ist am
   Original **widerlegt** und wird hier ausdrücklich nicht übernommen. Gelistet: vier Korrigenda
   C1 (76.368 KB), C2 (85.747 KB), C3 (55.176 KB, bereits ausgewertet), C4 (180.348 KB, bereits
   ausgewertet).
2. **C1 und C2 heruntergeladen** (per WebSearch die konkreten DownloadAnhang-URLs ermittelt, dann
   `curl -sL -A "Mozilla/5.0"`): C1 (`fa8bd77f-…/D/DownloadAnhang`, 76'368 Bytes, exakt deckungsgleich
   mit der Shop-Angabe) und C2 (`1b9389af-…/F/DownloadAnhang`, 85'747 Bytes — trotz Format-Suffix
   `/F/` in der URL ist der Inhalt die deutsche Fassung, per Kolophon-Zeile «SN 521500-C2:2011 de»
   im PDF selbst bestätigt, nicht nur aus der URL vermutet). Ein zweiter Versuch über
   `sia.ch/fileadmin/.../korrigenda_sn/500-C2_2011_d.pdf` lieferte eine 404-HTML-Seite (kein echtes
   PDF) — verworfen, das shop.sia.ch-PDF ist die tragende Quelle.
3. **Beide vollständig mit `pdftotext -layout` gelesen** (C1: 6 Seiten/171 Zeilen, C2: 5
   Seiten/145 Zeilen) — nicht nur Titelblatt/Kolophon, sondern jede Korrekturzeile der
   Vorher/Nachher-Tabelle.

## Ergebnis

**C1:2009** korrigiert u.a.: Ziff. 3.3.1.2/9.2.2 (Terminologie «Türanschläge»→«Absätze», keine
Masswertänderung), Ziff. 3.5.3.1 (Verweis auf Ziffer 3.4.3 gestrichen), **Ziff. 3.7.2/9.5.1
(«Kabinentüren»→«Schachttüren»)**, Ziff. 4.4/D.1.4 (Verweis auf SN 150911 gestrichen, nur noch SN
EN 12464-1), Ziff. 9.4.3 (Verweis auf 9.2.4 ergänzt), Ziff. 11.2 (Wort «stufenlos» ergänzt), sowie
mehrere reine Register-/Index-Korrekturen (Anhang I).

**C2:2011** korrigiert u.a.: Ziff. 9.2.3/Figur 6 (Text neu gefasst) und **Ziff. 9.2.4 ersatzlos
gestrichen** (Inhalt geht in die neu gefasste 9.2.3 über), Ziff. 9.3.2 (Korridorbreite
differenziert: gerade Korridore neu uneingeschränkt zulässig statt bedingt), Ziff. 9.4.3
(Länge/Fläche-Systematik der Podest-Freifläche), Ziff. 10.1.1 (Wort «horizontal» ergänzt, neue
1,0-m-Mindestbreite für geradläufige Durchgänge), **Ziff. 10.2.1 (materiell wichtigster Fund):
Kleinwohnungen mit einem einzigen Sanitärraum dürfen neu 3,60 statt 3,80 m² Nutzfläche
aufweisen**, Ziff. 11.5 (Singular→Plural: «rollstuhlgerechter Parkplätze» statt «eines
rollstuhlgerechten Parkplatzes»), Anhang A.8.6 (Handlaufabstand 0,60-0,65 m bei
Hallen-/Freibädern), Anhang G.2.4 (Eurokey-Höhe neu «vorzugsweise», nicht mehr starr).

**Fehlzuschreibung korrigiert:** die Korrektur «Kabinentüren→Schachttüren» an Ziff. 3.7.2/9.5.1
stand im Destillat bisher allein bei C3:2013. Der Volltext-Abgleich zeigt: dieselbe Korrektur
steht bereits wortgleich in C1:2009 — beide Korrigenda-PDFs zitieren in der «bisher»-Spalte
identisch «Kabinentüren», was nur Sinn ergibt, wenn jedes Korrigendum konsequent gegen die
ursprüngliche 1. Auflage 2009-01 difft, nicht kumulativ gegen den zuletzt korrigierten Stand.
**Methodik-Hinweis für künftige SIA-Korrigenda-Läufe:** ein späteres Korrigendum kann einen von
einem früheren bereits behobenen Fehler nochmals auflisten — für die Zitierpraxis ändert das
nichts (geltend ist so oder so die neueste Fassung), wohl aber für die korrekte Fundstellen-Angabe.

**Anhang-A-Doppelbefund, nicht abschliessend geklärt:** die für Ziff. 7.7.2 (C3, Anhang A.8.7,
Fluss-/Seebäder-Handlauf 0,60-0,65 m) bereits dokumentierte Masszahl taucht in C2 an einer
**anderen** Anhang-A-Zeile (A.8.6, Hallen-/Freibäder) mit demselben Zahlenwert auf — plausibel
zwei eigenständige Korrekturen für unterschiedliche Bäderarten, aber nicht am vollständigen
Anhang-A-Text gegengeprüft, ob A.8.6/A.8.7 tatsächlich getrennte, stabile Zeilennummern sind.
Als offener Punkt im Destillat vermerkt.

## Nachgeführt

- `destillate/sia-500-2009.md`: Frontmatter (`ausgabe_ueberholt`, `status`) auf «alle vier
  Korrigenda ausgewertet» gesetzt; Kernziffern-Bullets 3.3, 3.5, 3.7/9 (inkl. Zuschreibungskorrektur),
  4.4, 10.2, 11 um ACHTUNG-KORRIGENDA-C1/C2-Marker ergänzt; Offene Punkte um den Anhang-A.8.6-Fund
  und die ungeklärte «Kleinwohnung»-Definition ergänzt; Abschlussvermerk aktualisiert.
- `wiki/REGISTER.md`: SIA-500-Zeile (Abschnitt Bestandsvergleich) und FRISCH-GEMELDET-Tabelle
  (neue Zeile oben) nachgeführt.
- `wiki/QUESTIONS.md`: Nachtrag zum Eintrag «2026-07-28 (Wissens-Chef Run 19)» ergänzt, C1/C2 als
  geschlossen markiert (Originaltext unangetastet, additiv).

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

- `destillate/sia-500-2009.md`: erste Editreihe (Frontmatter, Ziff. 3.3/3.5/3.7-9/4.4/10.2) wurde
  zwischen den Schreibvorgängen bereits vom nativen `nas-selfcommit`-Auto-Commit (`d1b0643e`,
  20:15) gesichert — beim späteren `git diff` erschienen nur noch die zuletzt gemachten Edits
  (Ziff. 11, Anhang-Offene-Punkte, Abschlussvermerk: 4/3). Gegengelesen per `git show HEAD:…| grep`:
  die früheren Edits sind vollständig in HEAD enthalten, kein Verlust.
- `wiki/REGISTER.md`: 2/1, exakt die eigenen zwei Edits (SIA-500-Zeile ersetzt, eine neue
  FRISCH-GEMELDET-Zeile eingefügt), keine Fremdanteile.
- `wiki/QUESTIONS.md`: 23/0, rein additiver Nachtrag, keine Löschung. Datei war zwischen Lesen und
  Schreiben von einem parallelen Prozess derselben Station verändert worden (Edit-Tool-Hinweis
  «file had been modified on disk») — der eigene Edit hat sauber angewandt, `git diff` zeigt nur
  die eigenen 23 neuen Zeilen ohne Fremdlöschung.

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt. Ein zweiter, parallel laufender
Claude-Prozess derselben Station arbeitete zeitgleich an `wiki/QUESTIONS.md` (QUESTIONS-Abarbeitung,
eigener Lauf-Name, kein Konkurrent) sowie ein dritter an einer anderen KB (Baurecht-Reglemente) —
beide Fremdänderungen sind additiv/`[ ]`→`[x]`, keine Kollision festgestellt.

## Nicht geleistet / offene Bring-Schulden

- Kein Volltext von SIA 500:2009 (Basisausgabe) selbst beschafft — nur die vier Korrigenda; die
  Basisausgabe war bereits vor diesem Lauf im Haus (`quelle:`-Feld des Destillats).
- Anhang B/C/D/F/G/H der Basisausgabe weiterhin nicht vollständig gelesen — dadurch bleibt die
  «Kleinwohnung»-Definition (C2, Ziff. 10.2.1) ungeklärt und der Anhang-A.8.6/A.8.7-Doppelbefund
  nicht am vollständigen Anhang-A-Text verifiziert.
- Cross-KB-Sweep, ob ein anderer Fach-Skill/KB die 3,80-m²-Grenze aus Ziff. 10.2.1 ungeprüft
  übernommen hat (z.B. Raumprogramm-Vorlagen), nicht durchgeführt — nur die direkte Zeichenkette
  «10.2.1» ausserhalb dieser KB geprüft (0 Treffer), keine inhaltliche Suche nach «3,80 m²
  Sanitärraum».
- Die drei bereits mehrfach als erschöpft vermerkten Zweige (Register-Vervollständigung,
  Blindzone-Sweep, N-SIASWEEP-2/3) in diesem Lauf nicht erneut angegangen.
- **Empfehlung für die Fortsetzung:** systematisch weitere Register-Zeilen mit nur sekundär
  belegter Bring-Schuld suchen (Muster wie hier: ein QUESTIONS-Eintrag benennt explizit einen
  noch offenen Volltext-Beschaffungsauftrag). Zusätzlich: die «Kabinentüren→Schachttüren»-
  Fehlzuschreibung ist ein Hinweis, dass weitere C3/C4-Marker im selben Destillat möglicherweise
  ebenfalls schon durch C1/C2 vorweggenommen wurden — ein Ziffer-für-Ziffer-Abgleich aller vier
  Korrigenda gegeneinander (nicht nur gegen die Basisausgabe) wäre eine mögliche nächste
  Vertiefung, aber angesichts des bereits hohen Detaillierungsgrads dieses Destillats nur bei
  konkretem Anlass zu empfehlen, nicht als Routine.
