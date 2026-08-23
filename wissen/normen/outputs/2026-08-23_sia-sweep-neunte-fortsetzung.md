# SIA-Sweep, neunte Fortsetzung — vier 4000er-/269-8-Neuzugänge mit Produktdatenblatt belegt

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte
  SIA-Zeilen ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen,
  Register nachführen, Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und
  `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag
  setzen, nach jedem Schreiben `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: achte Fortsetzung),
  `outputs/2026-08-23_sia-sweep-achte-fortsetzung.md`, die relevanten Register-Zeilen
  (SIA 2006, SIA 2018, SIA 2026, SIA 269/7, SIA 405) und der N-SIASWEEP-Abschnitt in
  `wiki/QUESTIONS.md`.

## Ausgangslage

Der eigentliche Sweep-Auftrag (leere Bestand-Abgleich-Zellen in Abschnitt A) ist seit dem
sechsten/siebten Fortsetzungslauf bei 0 von 187 aktiven Zeilen — vollständig, mehrfach
reverifiziert, in diesem Lauf nicht neu gescannt. Die drei N-SIASWEEP-Fragen (SIA 422,
SIA 2021, SIA 2025) waren nach acht erschöpften Quellenarten unverändert offen; die achte
Fortsetzung empfahl ausdrücklich, sie nicht mit denselben Mitteln erneut anzugehen.

Der letzte Report nannte zwei Anschlusspunkte, die noch nicht bearbeitet waren:

1. Eine **eigene** Bring-Schuld aus dem Vorwort von SIA 405:2025 — die neue Wegleitung
   **SIA 4008**, "bisher nicht in dieser KB geführt".
2. Drei bereits an anderer Stelle im Register **erwähnte, aber nie mit eigener Zeile
   geführte** Nachfolgenormen: **SIA 269/8:2017** (Zeile SIA 2018), **SIA 4018:2023**
   (in der SIA-2006-Zeile nicht einmal erwähnt gewesen), **SIA 4020:2026** (Zeile
   SIA 2026, dort bereits mit Datum vorgemerkt).

## Recherche — vier Produktseiten direkt gelesen (WebFetch, `shop.sia.ch`)

| Norm | Titel | Gültig ab | Status | Seiten | Preis | Ersetzt |
|---|---|---|---|---|---|---|
| SIA 4008:2025 | Leitungskataster — Wegleitung zur Norm SIA 405 | 01.08.2025 | aktuell | — | 200.00 CHF | kein Vorgänger genannt (Erstausgabe) |
| SIA 269/8:2017 | Erhaltung von Tragwerken — Erdbeben | 01.12.2017 | aktuell (Korrigenda C1:2022) | 52 | 190.00 CHF | SIA 2018:2004 (gültig bis 30.11.2017) |
| SIA 4018:2023 | Planung, Durchführung und Interpretation der Potenzialmessung an Stahlbetonbauten | 01.11.2023 | aktuell | 32 | 140.00 CHF | SIA 2006:2013 (archiviert seit 31.10.2023) + Korrigendum 2006-C1:2016 |
| SIA 4020:2026 | Effizienter Einsatz von Trinkwasser in Gebäuden | 01.08.2026 | aktuell | 32 | 120.00 CHF | SIA 2026:2017 (archiviert seit 31.07.2026) |

Alle vier Angaben stammen aus der jeweiligen Produktseite, per WebFetch direkt abgerufen (nicht
nur aus Suchtreffer-Snippets). Kein Volltext gekauft oder gelesen — alle vier bleiben reine
Metadaten-Zeilen, Beschaffung bleibt Bring-Schuld. Konsequent zur KB-Konvention (siehe alle
vergleichbaren "Kein Volltext im Haus"-Zeilen im Register) wurde **kein neues Destillat**
angelegt, da kein Fachinhalt zum Destillieren vorliegt.

**SIA 269/8** ist für JANS mit Healthcare-Bestandesbauten direkt relevant (Erdbebenüberprüfung
bestehender Gebäude) — bisher nur als Nebensatz in der SIA-2018-Zeile geführt, jetzt eigenständig
mit Preisgruppe/Seitenzahl belegt.

## Register und QUESTIONS nachgeführt

- `wiki/REGISTER.md`: neue Zeile **SIA 269/8** direkt nach SIA 269/7 im systematischen Teil
  (Abschnitt A); neuer Unterabschnitt **"4000er-Reihe — Neuzugänge nach 2013"** am Ende von
  Abschnitt A mit den drei Zeilen SIA 4008/4018/4020 samt Kontext-Absatz (die 4000er-Serie
  existiert im 2013-Register noch gar nicht, Präzedenzfall SIA 4013 bereits an anderer Stelle
  bekannt); die bestehende **SIA-2006-Zeile** um den bisher fehlenden Verweis auf SIA 4018:2023
  ergänzt.
- `wiki/QUESTIONS.md`: Nachtrag am Ende des N-SIASWEEP-Abschnitts — SIA 4008 metadatenbelegt
  geschlossen, die drei weiteren Zeilen referenziert.

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat -- wissen/normen/` geprüft: `wiki/REGISTER.md`
17/1 (die eine Löschung ist die selbst editierte SIA-2006-Zeile, um den SIA-4018-Verweis
erweitert, kein Inhaltsverlust — per `git diff` zeilenweise gegengeprüft), `wiki/QUESTIONS.md`
17/0 rein additiv. Die Datei `wiki/QUESTIONS.md` wurde während des Laufs von einem parallelen
Prozess auf dieser Station verändert (System-Hinweis beim Edit); vor dem eigenen Edit die
Zielstelle frisch geprüft, nach dem Edit per numstat bestätigt, dass keine fremde Ergänzung
überschrieben wurde. `wiki/REGISTER.md` wurde zwischenzeitlich vom nativen NAS-Selfcommit
(`c02644a5`, 19:30) gesichert — Inhalt danach am committeten Stand nachgeprüft (`grep` auf die
vier neuen Zeilen, alle vorhanden). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / offene Bring-Schulden

- Kein Volltext von SIA 4008/4018/4020/269-8 gekauft — alle vier bleiben
  Beschaffungs-Bring-Schulden, insbesondere SIA 269/8 für den Healthcare-Bestandesbau-Bezug.
- N-SIASWEEP-2 (SIA 422) und N-SIASWEEP-3 (SIA 2021/2025) bewusst nicht erneut angegangen —
  acht Quellenarten bereits erschöpft (Empfehlung der achten Fortsetzung befolgt).
- Der eigentliche SIA-Sweep-Auftrag (Blindzone-Zeilen) bleibt bei 0 von 187 offenen Zeilen —
  unverändert vollständig, in diesem Lauf nicht neu gescannt.
- SIA 4008 selbst nennt in der Produktseite keinen Vorgänger — ob es tatsächlich eine
  Erstausgabe ist oder eine ältere, nicht mehr gelistete Wegleitung zur SIA 405:2012 existierte,
  ist nicht geprüft (kleiner, nicht sicherheitsrelevanter Randpunkt).
