# SIA-Sweep, zehnte Fortsetzung — drei fehlende Register-Zeilen nachgetragen, falsches Bring-Schuld-Ziel N57-2 korrigiert

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
  Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
  beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: neunte Fortsetzung),
  `outputs/2026-08-23_sia-sweep-neunte-fortsetzung.md`, `wiki/REGISTER.md` (FRISCH GEMELDET,
  4000er-Reihe-Abschnitt, Zeile SIA 416/1), `wiki/QUESTIONS.md` N57-2.

## Ausgangslage

Der Blindzone-Sweep (leere Bestand-Abgleich-Zellen in Abschnitt A) ist seit dem sechsten Lauf bei
0 von 187 aktiven Zeilen — vollständig, in diesem Lauf nicht neu gescannt. N-SIASWEEP-2 (SIA 422)
und N-SIASWEEP-3 (SIA 2021/2025) bleiben laut wiederholter Empfehlung der achten und neunten
Fortsetzung unangetastet (acht unabhängige Quellenarten bereits erschöpft).

Die neunte Fortsetzung hatte einen neuen, ergiebigen Suchweg demonstriert: ein systematischer
Abgleich aller «ersetzt durch»-Verweise in Abschnitt A gegen die dort bereits als eigene Zeile
geführten Normnummern findet Fälle, in denen eine Zielnorm mehrfach als Nachfolgerin genannt wird,
aber selbst nie eine eigene Zeile hat (dort: SIA 4008/4018/4020/269-8). Dieser Lauf hat denselben
Abgleich per Python-Script auf die verbleibenden Zeilen angewandt.

## Methode

`python3` über `wiki/REGISTER.md`, Abschnitt A (Zeilen 137-417): für jede Tabellenzeile den
Zeilenkopf (Normnummer) gemerkt, dann alle Vorkommen von `ersetzt durch **SIA <Nummer>` in
derselben Zeile extrahiert und den Wurzelteil der Zielnummer gegen die bereits vorhandenen
Zeilenköpfe geprüft. 27 Treffer, davon 24 mit identischer Wurzel (z.B. SIA 106 → SIA 106:2019 —
selbe Nummer, jüngere Ausgabe, bereits inline in derselben Zeile dokumentiert, keine neue Zeile
nötig) und **3 mit fremder Wurzel ohne eigene Zeile**: SIA 4013 (Ziel von SIA 2035 UND SIA 2036),
SIA 242.002 (Ziel von SIA 215), SIA 380 (Ziel von SIA 416/1).

## Drei Produktseiten direkt gelesen (WebFetch, `shop.sia.ch`)

| Norm | Titel | Gültig ab | Status | Seiten | Preis | Ersetzt |
|---|---|---|---|---|---|---|
| SIA 4013:2021 | Wegleitung CAD-Datenaustausch — Organisation und Planung | 01.08.2021 | aktuell | 60 | 150.00 CHF | SIA 2035:2009 + SIA 2036:2009 (beide archiviert seit 31.07.2021) |
| SIA 242.002:2008 | Gipsbinder und Gipstrockenmörtel — Teil 1: Begriffe und Anforderungen | 01.01.2009 | aktuell | 24 | 56.00 CHF | SIA 242.002:2005 (archiviert seit 31.12.2008) + SIA 215:1978 (Gips-Teil, archiviert seit 30.06.2014) |
| SIA 380:2015 | Grundlagen für energetische Berechnungen von Gebäuden | 01.04.2015 | **archiviert seit 31.10.2022** | 64 | 150.00 CHF | SIA 416/1:2007 + Teile SIA 2031/2032/2040 |
| SIA 380:2022 | Grundlagen für energetische Berechnungen von Gebäuden | 01.11.2022 | **aktuell** | 60 | 180.00 CHF | SIA 380:2015 |

Alle vier Angaben stammen aus der jeweiligen Produktseite, per WebFetch direkt abgerufen. Kein
Volltext gekauft oder gelesen — alle vier bleiben reine Metadaten-Zeilen, Beschaffung bleibt
Bring-Schuld. Kein neues Destillat angelegt (kein Fachinhalt zum Destillieren vorhanden).

## Grösster Befund: N57-2 zielte auf die falsche Ausgabe

Der eigentliche Anlass, SIA 380 in shop.sia.ch nachzuschlagen, war die Zeilen-Vervollständigung
(oben). Dabei zeigte die Produktseite von SIA 380:2015 — der Norm, die `wiki/QUESTIONS.md` N57-2
seit dem 19.08.2026 (Normen-Nacht Run 57) als zu beschaffende Nachfolgenorm von SIA 416/1:2007
führt — dass **diese Ausgabe selbst bereits archiviert ist**: gültig nur vom 01.04.2015 bis zum
31.10.2022. Die seither gültige Ausgabe ist **SIA 380:2022**, deren eigene Produktseite das
bestätigt («Status: Aktuell — die 2015er-Version ist archiviert, gültig bis 31.10.2022»).

**Praktische Konsequenz:** N57-2 verlangte fünf Tage lang die Beschaffung von SIA 380:2015. Ein
Kauf dieser Ausgabe hätte eine bereits vier Jahre überholte Fassung ins Haus geholt — der
Beschaffungsauftrag selbst war fehlerhaft, nicht nur unerledigt. Das ist eine andere Fehlerklasse
als die bisherigen Sweep-Funde (fehlende Zeile, fehlende Metadaten): hier stand eine **falsche
Handlungsanweisung** in der KB, seit einem Lauf, der die Norm nicht selbst nachgeschlagen hatte
(Run 57 zitierte SIA 380:2015 nur aus dem Titelblatt-Vorwort von... nein, aus dem Titelblatt der
SIA 380:2015 selbst — das Vorwort einer Norm sagt nichts über ihren eigenen späteren Rückzug).

## Nachgeführt

- **`wiki/REGISTER.md`:** neue Zeile SIA 4013 (Anhang an die bestehende 4000er-Reihe-Tabelle);
  neue Unterüberschrift «Weitere Neuzugänge nach 2013 (keine 4000er-Nummer)» mit den Zeilen
  SIA 380 und SIA 242.002; Zeile SIA 416/1 um einen Korrektur-Warnkasten ergänzt; FRISCH-
  GEMELDET-Tabelle um zwei Einträge (Korrektur + drei neue Zeilen) ergänzt.
- **`wiki/QUESTIONS.md`:** N57-2 um einen Korrektur-Warnkasten ergänzt (Beschaffungsziel jetzt
  SIA 380:2022, nicht mehr SIA 380:2015; ursprünglicher Text unangetastet, damit die Vorgeschichte
  nachvollziehbar bleibt).
- **`destillate/sia-416-1-2007.md`:** Warnkasten am Artikelkopf um denselben Korrekturhinweis
  ergänzt.
- **`destillate/INDEX.md`:** Zeileneintrag `sia-416-1-2007.md` um den Korrekturhinweis ergänzt.
- **`wissen/energie/wiki/u-werte-grenzwerte-ch.md`** (Cross-KB, Rule `wissens-bibliothekar`,
  Abschnitt Cross-KB-Bringschuld): Fassungsvermerk um denselben Korrekturhinweis ergänzt — der
  dringlichste der fünf in N57-2 genannten Abnehmer, weil der Energie-Skill aktiv genutzt wird.

## Cross-KB-Bringschuld — teilweise erfüllt

N57-2 nennt fünf abnehmende Fremd-KB-Dateien (`energie`: 6 Dateien, `immobilienbewertung`: 1,
`planungsgrundlagen`: 1, `baurecht`: 1). In diesem Lauf nur die dringlichste (`energie/wiki/
u-werte-grenzwerte-ch.md`) korrigiert. Die übrigen neun Dateien bleiben offen — ausserhalb des
Scopes eines SIA-Sweep-Laufs in `wissen/normen`, aber jetzt mit dem korrigierten Zielwert
(SIA 380:2022 statt SIA 380:2015) in N57-2 vorgemerkt, sodass ein künftiger Lauf in einer dieser
KBs die richtige Information vorfindet.

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat` geprüft: `wiki/REGISTER.md` 14/1 (die eine
Löschung ist die selbst editierte SIA-416/1-Zeile, um den Korrektur-Warnkasten verlängert, Inhalt
vollständig erhalten), `wiki/QUESTIONS.md` 36/2 (additiv; die 2 Löschungen stammen nachweislich
aus einem **parallelen** Prozess derselben Station, der im selben Zeitfenster N-R40-8 und die
BRL-16-15-Altfrage abgehakt hat — per `git diff`-Kontext geprüft, keine eigene Zeile betroffen),
`destillate/INDEX.md` 2/2 (eine Zeile — die eigene SIA-416/1-Zeile — plus eine weitere Zeile, die
derselbe parallele Prozess bearbeitet hat), `destillate/sia-416-1-2007.md` 7/0 rein additiv,
`wissen/energie/wiki/u-werte-grenzwerte-ch.md` 1/0 rein additiv, `CHANGELOG.md` 106/0 (der eigene
69-Zeilen-Eintrag oberhalb des bereits vorhandenen 37-Zeilen-Eintrags des parallelen Prozesses,
beide vollständig erhalten). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / offene Bring-Schulden

- Kein Volltext von SIA 380 (2015 oder 2022), SIA 4013:2021 oder SIA 242.002:2008 gekauft — alle
  bleiben Beschaffungs-Bring-Schulden. Für SIA 380 ist jetzt klar: **SIA 380:2022** beschaffen,
  nicht SIA 380:2015.
- Vier von fünf N57-2-Cross-KB-Abnehmern nicht nachgeführt (siehe oben).
- N-SIASWEEP-2 (SIA 422) und N-SIASWEEP-3 (SIA 2021/2025) bewusst nicht erneut angegangen —
  Empfehlung der achten/neunten Fortsetzung befolgt.
- Der Blindzone-Sweep-Auftrag (Zeilen ohne Bestand-Abgleich) bleibt bei 0 von 187 offenen Zeilen —
  unverändert vollständig, in diesem Lauf nicht neu gescannt.
- Der Python-Abgleich wurde nur auf `ersetzt durch \*\*SIA` als Muster angewandt; andere
  Formulierungen («Nachfolgenorm», «löst … ab») wurden zwar beim ersten Grep gesichtet, aber nicht
  vollständig maschinell durchgekämmt — ein künftiger Lauf könnte das systematisieren.
