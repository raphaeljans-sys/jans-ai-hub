# SIA-Sweep, fünfzehnte Fortsetzung — SIA 2024:2021 erstmals direkt am Herausgeber verifiziert, neue Korrigenda C2 entdeckt

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
  nachführen, Destillate anlegen. Rule `normen-referenz` und `wissens-bibliothekar` beachten,
  jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: QUESTIONS-Abarbeitung 11),
  `outputs/2026-08-23_sia-sweep-vierzehnte-fortsetzung.md`.

## Ausgangslage

`ps aux` zu Laufbeginn geprüft: ein `claude`-Prozess mit demselben Startprompt (PID 34776, über
die Desktop-App gestartet) ist dieser Lauf selbst, kein Konkurrent.

Der elfte QUESTIONS-Lauf (unmittelbar zuvor) hatte einen vollständigen Scan von
`wiki/QUESTIONS.md` gefahren und ausdrücklich empfohlen, diesen Scan nicht zu wiederholen — die
vier verbliebenen Klassen offener Punkte seien nicht durch weitere freie Recherche lösbar. Diese
Empfehlung betrifft die QUESTIONS-Abarbeitung als Format, nicht den hier verlangten SIA-Sweep,
der eine andere Methode verwendet (Direktabgleich Register gegen Dateibestand/Verifikationsmarker,
nicht Scan der offenen Fragen). Die vierzehnte Fortsetzung hatte mit genau dieser Methode zuletzt
SIA 2032 gefunden; dasselbe Verfahren wurde hier auf den gesamten Bestand von Abschnitt A
angewendet.

## Methode

Python-Skript gegen `wiki/REGISTER.md`, Abschnitt A (Zeilen 141-431, 266 SIA-Tabellenzeilen):
jede Zeile auf mindestens einen von acht Direktprüfungs-Markern geprüft (`shop.sia.ch`,
`Produktseite`, `Bestand`, `zurückgezogen`/`zurueckgezogen`, `connect.snv.ch`,
`ersetzte_normen`, `am Original`, `Titelblatt`). Ergebnis: **eine einzige Zeile ohne Marker** —
**SIA 2024**. Alle anderen 265 Zeilen sind entweder als vollständig zurückgezogen ohne Nachfolger
geführt, tragen einen eigenen Bestand im Haus, oder wurden bereits über eine shop.sia.ch-
Produktseite direkt geprüft.

## Befund: SIA 2024

Die Zeile SIA 2024 trug seit dem 14.07.2026 (Wissens-Chef Run 4) ausschliesslich eine
**Sekundärquellen-Meldung** aus der KB `energie` («neuere Ausgabe SIA 2024:2021 … Quelle
SIA-Shop»). `normen` selbst hatte die Produktseite nie abgerufen.

**Direktprüfung 23.08.2026:** `shop.sia.ch/normenwerk/architekt/sia%202024/d/2021/D/Product`
(SN 592024), per WebFetch abgerufen. Bestätigt:

- **SIA 2024:2021**, SN 592024, «Raumnutzungsdaten für die Energie- und Gebäudetechnik»,
  **gültig ab 01.12.2021**, 80 Seiten, 130.00 CHF (Papier oder Download)
- Ersetzt ausdrücklich die Ausgabe **2015** (gültig bis 30.11.2021), die ihrerseits die im Haus
  liegende Ausgabe **2006** (Destillat `sia-mb-2024-2006.md`) abgelöst hatte

Das bisher nur über `energie` gemeldete Gültig-ab-Datum ist damit erstmals durch `normen` selbst
am Original bestätigt.

## Neuer Fund: zweite Korrigenda C2

Die Produktseite führt «Revision 2» (Stand 01.06.2025) sowie **zwei** Korrigenda-Downloads,
**C1** und **C2**. In dieser KB und in `energie` war bisher ausschliesslich **Korrigenda
C1:2024** bekannt (Grundlagenbericht `cms.sia.ch/de/api/getMedia/941`, 20.10.2024, in `energie`
Run 80 ausgewertet). Datum und materieller Inhalt von **C2** sind auf der Produktseite selbst
nicht ausgewiesen — kein Datum im Linktext, Wortlaut hinter der Bezahlschranke. Zwei
WebFetch-Nachfragen an dieselbe Seite (gezielt nach Datumsangaben und Korrigenda-Rohtext)
lieferten keine zusätzlichen Angaben; die Seite gibt nur die Downloadlinks und Dateigrössen
preis (4.577 MB / 2.999 MB), keine Metadaten je Korrigendum.

**Praktische Folge:** Vor jeder künftigen Verwendung der Kat.-VIII-Elektrizitätskennzahlen
(Ziff. 4.2.1/4.2.3), die `energie` aus dem Grundlagenbericht inkl. C1:2024 zieht, ist zu prüfen,
ob C2 diese Werte zusätzlich ändert. Neue Bring-Schuld in `wiki/QUESTIONS.md` festgehalten.

## Nebenbefund: toter Backlink

Die Register-Zeile verlinkte weiterhin `destillate/sia-2024-nutzungsdaten-gesundheitsbau` in der
KB `energie`. Diese Datei wurde dort bereits am 26.07.2026 in
`sia-2024-nutzungsrandbedingungen-gesundheitsbau.md` eingemergt (belegt durch das
`merge_historie`-Frontmatterfeld der Zieldatei; Quelldatei laut demselben Vermerk gelöscht). In
der Register-Zeile auf den aktuellen Dateinamen korrigiert.

## Neues Destillat

`destillate/sia-2024-2021.md` (Status `speculative`) nach dem Muster von `sia-2032.md` angelegt:
nur Produktdatenblatt verifiziert, kein Volltext im Haus, mit explizitem Verweis auf den
inhaltlichen Primärbeleg in `wissen/energie/destillate/sia-2024-nutzungsrandbedingungen-gesundheitsbau.md`
(Muster wie bei SWKI/Electrosuisse-Querverweisen: Primärbeleg bleibt dort, hier keine Kopie).
Begründung für die Neuanlage (statt reiner Registerzeile wie bei den übrigen 55
Metadaten-Only-Fällen): die Norm ist bereits inhaltlich cross-KB referenziert — derselbe
Massstab, der bei SIA 2032 zur Neuanlage führte. `destillate/INDEX.md` nachgeführt.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

- `wiki/REGISTER.md`: 1/1 — reiner Zeilenersatz, ausschliesslich die eigene SIA-2024-Zeile
- `wiki/QUESTIONS.md`: 9/0 — rein additiv, exakt die eigene Einfügung als Nachtrag beim
  bestehenden Punkt «Nachfolgeausgaben nicht ermittelbar», Ursprungswortlaut unangetastet
- `destillate/INDEX.md`: 1/0 — reine Neuzeile
- `destillate/sia-2024-2021.md`: `??` (Neuanlage, `git status --porcelain` bestätigt)
- `CHANGELOG.md`: 74/0 — rein additiv, eigener Eintrag vor dem bisherigen Kopf eingefügt

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / offene Bring-Schulden

- Kein Volltext von SIA 2024:2021 gekauft (CHF 130, inkl. Anhang A/F Raumdatenblätter) —
  Beschaffungs-Bring-Schuld Raphael.
- Korrigenda C1:2024 und C2 weder am Wortlaut gelesen; C2-Datum und -Inhalt ungeklärt.
- Die drei bereits mehrfach erschöpften Sweep-Zweige (N-SIASWEEP-2/3, Blindzone,
  Register-Vervollständigung) erneut nicht angegangen — der Marker-Abgleich lieferte dafür
  keinen neuen Ansatzpunkt.
- **Keine weitere SIA-Zeile in Abschnitt A ohne Direktprüfungs-Marker gefunden.** Nach diesem
  Lauf ist aus dieser konkreten Methode (Marker-Abgleich Abschnitt A) kein weiterer
  selbständig lösbarer SIA-Sweep-Kandidat mehr bekannt.
- Eigene, klar abgegrenzte Alternativ-Aufträge, die der elfte QUESTIONS-Lauf empfohlen hatte
  (N58-1 Abdeckungsrichtung der VKF-Bestandsdestillate, N58-4 Restindex VKF-Fassungsmatrix 35/83),
  liegen ausserhalb des SIA-Sweep-Scopes (VKF, nicht SIA) und wurden hier bewusst nicht
  begonnen — sie eignen sich als eigener, separat beauftragter Lauf.
