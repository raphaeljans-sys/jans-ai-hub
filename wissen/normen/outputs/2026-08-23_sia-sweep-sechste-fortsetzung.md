# SIA-Sweep, sechste Fortsetzung — Vollständigkeit reverifiziert, Wayback Machine als neuer Weg erschöpft

- **Datum:** 23.08.2026
- **Auftrag Raphael:** den SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte
  SIA-Zeilen ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen,
  Register nachführen, Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und
  `wissens-bibliothekar` beachten. Hinweis: ein `claude`-Prozess mit demselben Lauf-Namen ist
  der eigene, kein Konkurrent.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: fünf SIA-Sweep-Läufe plus vier
  QUESTIONS-Abarbeitungsläufe, alle 23.08.2026) und die beiden jüngsten Reports
  `outputs/2026-08-23_questions-abarbeitung4.md` und
  `outputs/2026-08-23_sia-sweep-fuenfte-fortsetzung-zugangsweg.md`.

## Ausgangslage

Sechs Läufe waren am selben Tag bereits gelaufen: der eigentliche Sweep (69 Blindzone-Zeilen,
Produktdatenblätter beschafft), drei Fortsetzungen zu den drei offenen N-SIASWEEP-Fragen
(SIA 422, SIA 2021/2025, GEO405-Familie), ein Zugangsweg-Lauf (SharePoint-Bestand am
vollständigen Dateilisting negativ bestätigt) und vier QUESTIONS-Abarbeitungsläufe zu anderen
KB-Themen (VKF-Deltas, BKP-Bezug). `ps aux` zeigt keinen zweiten `claude`-Prozess an dieser
KB ausser dem eigenen (Prozess-ID im eigenen Kommando erkennbar).

## Eigene Arbeit dieses Laufs

**1. Unabhängige Reverifikation der Sweep-Vollständigkeit.** Statt den Vorläufer-Berichten zu
vertrauen, per Python-Skript die Rohdatei `wiki/REGISTER.md`, Abschnitt A (Zeilen 132-395)
selbst geparst: 259 Tabellenzeilen, davon 187 mit „Gültig 2013" ≠ „—(alle zurückgezogen)"
(aktiv). **0 dieser 187 aktiven Zeilen haben eine leere Bestand-Abgleich-Zelle.** Der
ursprünglich beauftragte Sweep (Produktdatenblätter für Register-Zeilen ohne Datei im Haus
beschaffen) ist damit unabhängig bestätigt vollständig abgeschlossen — nicht nur laut den
Vorläufer-Berichten, sondern messbar am aktuellen Dateiinhalt.

**2. Neuer Weg für die drei verbliebenen offenen Fragen: Internet Archive Wayback Machine.**
Die drei N-SIASWEEP-Fragen (SIA 422, SIA 2021/2025, GEO405-Familie SIA 405/2015/2016/2045)
wurden über fünf verschiedene Quellenarten bereits recherchiert (Shop-Produktseite direkt,
zwei offizielle `cms.sia.ch`-Publikationsverzeichnisse zu zwei Stichtagen, Espazium-Fachpresse,
SIA-Webinar-Seite, SNV Swiss National Work Program) — die Wayback Machine (`web.archive.org`)
war in keinem der Vorläufer-Reports erwähnt. Über die CDX-API
(`http://web.archive.org/cdx/search/cdx`, Domain-Suche `url=shop.sia.ch&matchType=domain`)
gezielt nach archivierten Snapshots der Produktseiten gesucht: enges Muster
`<code>_<jahr>_<sprache>/…/Product` für die Codes 422, 2021, 2025, 405, 2016, 2045, danach ein
breiteres, ungebundenes Ziffernmuster für 422 und 2021. **Ergebnis: 0 Treffer für alle sechs
Codes**, mit beiden Mustern. Zur Gegenprobe dieselbe Domain-Suche ohne Code-Filter geprüft —
sie liefert reichlich Treffer für weiterhin aktuelle SIA-Produktseiten (102, 105, 108, 112, 180,
181, 261, 380 etc.), die Domain wird also regelmässig gecrawlt. Die sechs betroffenen
Produktseiten sind demnach nie archiviert worden (vermutlich weil sie zum Zeitpunkt des ersten
Crawls bereits aus der Katalognavigation entfernt waren oder nie extern verlinkt wurden).

## Register und QUESTIONS nachgeführt

- `wiki/QUESTIONS.md`: additiver Nachtrag am Ende des N-SIASWEEP-Abschnitts (Wayback-Befund),
  bestehender Text unverändert.
- `wiki/REGISTER.md`: neue Zeile in der „FRISCH GEMELDET"-Tabelle (Reverifikation +
  Wayback-Sackgasse), additiv.

## Keine neuen Destillate

Wie in allen SIA-Sweep-Läufen dieses Tages: kein neuer Volltext im Haus für die drei
verbliebenen Fragen. Der Fortschritt dieses Laufs ist eine unabhängige Reverifikation
(Sweep-Vollständigkeit jetzt zweifach bestätigt) und eine dokumentierte, echte Sackgasse
(Wayback Machine für diese sechs Codes erschöpft) — keine neue Fachsubstanz.

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat` geprüft: `wiki/QUESTIONS.md` 65/2 (davon 44
additive Zeilen aus zwei bereits vorher im Arbeitsbaum liegenden, unveröffentlichten
Vorläufer-Edits — Inhalt geprüft und deckt sich mit den bereits gelesenen Reports
`questions-abarbeitung4` und `sia-sweep-fuenfte-fortsetzung-zugangsweg` — plus 19 eigene
additive Zeilen; die 2 Löschungen sind Teil des fremden, bereits dokumentierten
N58-5-Abschlusses, keine eigene Änderung und keine gelöschte Fremdarbeit), `wiki/REGISTER.md`
1/0 (rein additiv, eigene Zeile). Kein bestehender Fragetext verändert oder gelöscht. Commit
über `nas-commit-now.sh` (nativ auf der Synology), kein direktes `git` über den SMB-Mount.

## Nicht geleistet / offene Bring-Schulden

- Kein Normtext gekauft; die drei N-SIASWEEP-Fragen bleiben offen — die Wayback Machine ist
  jetzt als erschöpfter Weg dokumentiert, ein künftiger Lauf muss ihn nicht wiederholen.
- Kein weiterer neuer Quellentyp identifiziert. Denkbare nächste Schritte (alle mit
  geringer Erfolgswahrscheinlichkeit, da bereits fünf Quellenarten erschöpft sind): direkte
  Anfrage an die SIA-Zentralkommission für Normen, oder Warten auf die reguläre
  Katalogaktualisierung mit Beschaffung des tatsächlichen Nachfolgetexts.
- Die fünf länger offenen Bring-Schulden aus `training/norm-inventar.md` (SIA 181:2020,
  SIA 491, SN EN 12193, SN 640 052, SN 641 400) unverändert — alle kostenpflichtig, Kauf ist
  Sache Raphaels.
