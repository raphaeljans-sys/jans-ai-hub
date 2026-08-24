# QUESTIONS-Abarbeitung 24.08.2026 — S42-2 geschlossen (SWKI Tab. 7 gegen BAFU UV-1318-D)

**Auftrag:** offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je Aussage mit
Norm/Ausgabe/Ziffer, nur `established` zitierfähig. CHANGELOG und Report des letzten Laufs
zuerst gelesen, dort weitergemacht.

## NAS-Hinweis

`/Volumes/daten` war beim Sessionstart nicht gemountet — die per `@`-Import geladenen Rules
(u. a. `wissens-bibliothekar`, `normen-referenz`) standen dieser Session nicht formal zur
Verfügung. `wissen/normen/` liegt lokal im Repo (kein NAS-Symlink) und war voll nutzbar; die
Arbeitsweise folgt inhaltlich trotzdem den bekannten KB-Regeln (Fundstellenpflicht,
additiv/nicht-destruktiv, CHANGELOG-Pflicht).

## Kollisionscheck

`ps aux | grep "claude -p"` zeigte zwei weitere Hintergrundprozesse mit identischem
Auftragstext für `wissen/normen/wiki/QUESTIONS.md`: die eigene hostende Session (PID 61025,
über `$PPID`-Kette bestätigt) sowie PID 58959 — ein **echter, unabhängiger Zweitprozess**
(gestartet 6 Minuten früher, `etime` 07:11 beim ersten Check), der beim Sessionstart bereits
aktiv in `destillate/lignum-lignatec-brandschutz.md` und `wiki/QUESTIONS.md` schrieb
(unverkommittete Änderungen zum Abschluss von L41-4, Lignatec Tabelle 4). Um keine
Schreibkollision zu erzeugen, wurde gewartet: `while ps -p 58959; do sleep 5; done` (Timeout
110 s, tatsächlich nach 10 s beendet). Der Prozess hat sauber committet (`161170672 normen KB:
QUESTIONS-Abarbeitung 24.08. - L41-4 abgeschlossen …`), `git status --short wissen/normen`
danach leer. Erst danach eigene Bearbeitung begonnen. Ein dritter Prozess auf
`wissen/energie` (PID 60629) betraf andere Dateien, keine Überschneidung.

## Bearbeiteter Punkt

**S42-2** (Run 42): SWKI VA103-01:2017, Tab. 7 (S. 42) — die Spalte «Q/S > 1» liess sich am
Scan nicht zweifelsfrei auflösen: ist der destillierte Wert «Firsthöhe + 1,0 m» ein
eigenständiger dachtypspezifischer Wert, oder ist er Teil der bereits destillierten
Maximum-Bildung (a: mind. 1 m über höchstem Gebäudeteil, b: 0,2 × Gebäudebreite max. 5 m,
c: 1 × Q/S in m)? Auftrag im Destillat: gegen BAFU-Vollzugshilfe UV-1318-D Ziff. 5.3
verifizieren.

## Vorgehen

- Das SWKI-Original selbst (`PL - 02_Recht_Norm/06_Richtlinien/SWKI/SWKI VA 103-1
  Lüftungsanlagen für Parkhäuser.pdf`) war auf dieser Station **nicht** erreichbar — weder
  über `/Volumes/daten` (NAS nicht gemountet) noch über die lokal gespiegelten
  OneDrive-Bibliotheken (`PL - 02_Recht_Norm/...` kommt dort nicht vor, nur Projektordner wie
  `AR - 01 Projekte`). Eine erneute Zellprüfung der SWKI-Tabelle selbst war damit in dieser
  Session nicht möglich.
- Stattdessen die vom Destillat selbst zitierte **Bemessungsgrundlage** (BAFU-Vollzugshilfe
  UV-1318-D) direkt am Herausgeber verifiziert — das war der explizite Auftrag der offenen
  Frage und unabhängig vom SWKI-PDF erreichbar.
- `WebSearch` nach "BAFU Vollzugshilfe UV-1318-D Kaminhöhe Firsthöhe Ziffer 5.3" fand den
  offiziellen Titel (Umwelt-Vollzug Nr. 1318, Erstausgabe 2013, 1. aktualisierte Auflage
  Dezember 2018) und zwei Download-Pfade. Der im bestehenden Destillat-Fliesstext implizit
  erwartete Pfad `bafu.admin.ch/dam/bafu/de/dokumente/luft/uv-umwelt-vollzug/...` lieferte
  sowohl über `WebFetch` als auch über direktes `curl` **HTTP 502** (Server-Fehler, kein
  Auth-Problem). Der Alternativpfad `bafu.admin.ch/dam/de/sd-web/x0hJtl7AkYcm/
  mindesthoehe_vonkaminenueberdach.pdf` lieferte das PDF sauber (HTTP 200, 1'276'855 Bytes).
- `pdftotext -layout` (sauberer Textlayer, kein Scan) extrahiert, Ziff. 5.1 bis 5.4 (S. 13-14)
  wortgenau gelesen samt Tab. 4 und Tab. 5.

## Ergebnis

**BAFU, Umwelt-Vollzug Nr. 1318 «Mindesthöhe von Kaminen über Dach. Kamin-Empfehlungen»,
Erstausgabe 2013, 1. aktualisierte Auflage Dezember 2018, Ziff. 5.3 Abs. 1+2 (S. 13-14):**

> 1. Kaminmündungen, die Abgase oder Abluft emittieren, bei denen die Grösse Q/S nach
>    Anhang 6 LRV den Wert 1,0 überschreitet (vgl. Tab. 4), müssen
>    a) den höchsten Gebäudeteil (z. B. Dachfirst) um mindestens 1 m, und
>    b) die Gebäudehöhe H nach Abb. 1 um das 0,2-fache der Gebäudebreite, höchstens jedoch um
>       5 m, und
>    c) das Immissionsniveau (Ziff. 6) um den Betrag nach Tab. 5
>    überragen.
> 2. Für die Mindesthöhe massgebend ist diejenige Bestimmung von Absatz 1, welche die höchste
>    Kaminhöhe über Dach erfordert.

Tab. 5 zeigt für c) eine strikt lineare Zuordnung Q/S → Meter (Q/S=1 → 1 m, Q/S=2 → 2 m, …,
Q/S=5 → 5 m) — deckungsgleich mit der im SWKI-Destillat bereits geführten Formel «1 × Q/S
in m».

**Damit ist die Frage beantwortet:** «Firsthöhe + 1,0 m» ist **kein eigenständiger vierter
Wert**. Kriterium a) lautet wörtlich «den höchsten Gebäudeteil … um mindestens 1 m …
überragen» — für ein Schrägdach ist der höchste Gebäudeteil der Dachfirst, also exakt
«Firsthöhe + 1,0 m». Das ist strukturell identisch mit dem bereits destillierten Normalfall
Q/S ≤ 1 (Ziff. 5.2 Bst. a: «den höchsten Gebäudeteil … um mindestens 0,5 m … überragen» →
Tab.-7-Zeile «Firsthöhe + 0,5 m»). Die SWKI-Richtlinie übernimmt die BAFU-Formel 1:1 und
schreibt Kriterium a) für Schrägdächer lediglich in der gebäudetypspezifischen Kurzform.

**Kein Korrekturbedarf** am bestehenden Destillat-Text zu a)/b)/c) — die dort schon
destillierte Maximum-Bildung ist korrekt; die Unsicherheit betraf nur die Einordnung des
vierten, separat gelesenen Werts, der sich jetzt als Wiederholung von a) herausstellt statt
als zusätzliche Bedingung.

## Eingearbeitet

- `destillate/swki-va103-01-2017.md`: Abschnitt «Fortluft — Ergänzungen zu Kap. 2.6», der
  bisherige ⚠-Offen-Block durch die Antwort samt vollständigem BAFU-Zitat ersetzt (Frage
  entfernt, weil beantwortet — keine bestehende Sachaussage a)/b)/c) verändert, nur ergänzt);
  `gelesen`-Feld im Frontmatter nachgeführt («GEKLAERT» statt «Offen»).
- `wiki/QUESTIONS.md`: S42-2 als geschlossen markiert (additiv, Antwortblock unter dem
  ursprünglichen Fragetext), Kopfzeile Run 42 nachgeführt.
- `CHANGELOG.md`: dieser Lauf vorangestellt.

## Diff-Gegenprobe

```
wissen/normen/destillate/swki-va103-01-2017.md | 17 +++++++++++++----- (2x frontmatter-Zeile ersetzt, 5 Zeilen Fliesstext -> 17 Zeilen Antwort)
wissen/normen/wiki/QUESTIONS.md                 | 13 ++++++++++++-- (1 Kopfzeile ersetzt, 12 Zeilen Antwortblock neu)
```

Beide Änderungen additiv im Sinne von: keine bestehende Zahl/Aussage a)/b)/c) entfernt oder
überschrieben, nur der offene Punkt durch die Antwort ersetzt bzw. ergänzt.

## Verbleibend offen (Auszug, nicht in dieser Runde bearbeitet)

- **S42-3** (Kanton Schwyz ohne eigenen Stationseintrag in SWKI Tab. 16, Anhang A) — benötigt
  das SWKI-Original selbst (auf dieser Station nicht erreichbar, siehe oben) und vermutlich
  eine MeteoSchweiz-/BAFU-Quelle zur Stationszuordnungsmethodik.
- **N43-5** (Kalksandstein-Merkblatt, Rissweiten-Diagramme-Kapitel nicht neu geschrieben,
  SIA-266-Wortlaut ungeprüft) — benötigt das Merkblatt-Original, gleiches Zugriffsproblem.
- **N43-6** (SWKI: keine abnehmende/genehmigende Instanz für CFD-Simulationsnachweis genannt)
  — echte Bring-Schuld/Behördenanfrage, nicht durch Quellenlektüre lösbar.
- G41-1, G41-2, P41-2 bis P41-5, H41-2, H41-4, N43-1, N43-2, N43-3, N43-4 — alle bereits in
  Vorläufen als Bring-Schuld/Entscheid Raphael/externe Anfrage eingeordnet, unverändert offen.

**Empfehlung für den nächsten Lauf:** sobald das NAS wieder gemountet ist, S42-3 und N43-5 mit
Zugriff auf die Original-PDFs bearbeiten — beide sind reine Lektüre-Lücken, kein
Bring-Schuld-Fall.
