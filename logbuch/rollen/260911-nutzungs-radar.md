# Nutzungs-Radar (Grower) — Stand 11.09.2026

Der Hub misst hier zum ersten Mal nicht, was er produziert, sondern was
tatsaechlich verwendet wird.

Skills im Bestand: 49 (plus 2 parkierte, nicht mitgezählt)
Wirklich aufgerufen: 28 · nie aufgerufen: 21
Von der Kälte sind 12 erwartet (anlassgebunden oder ersetzt) und
9 zu klären.
Mac Mini: einbezogen (412 Signale)
Deliverables: OUTPUT-Ordner nicht erreichbar (OneDrive nicht gemountet)

Zwei Signalklassen, bewusst getrennt: AUFGERUFEN heisst Skill-Werkzeug oder
Read auf die SKILL.md — der Skill hat tatsaechlich gearbeitet. ERWAEHNT heisst,
der Pfad kam irgendwo vor (Inventar-Lauf, Aufzaehlung, Zitat). Ohne diese
Trennung gilt jeder Skill als benutzt, den ein Audit-Lauf einmal aufgelistet
hat — und die Kaltliste ist leer, obwohl nichts genutzt wird.

## 1. Aufgerufene Skills (harte Nutzung)

| Skill | Rolle | Aufrufe | zuletzt | nur erwaehnt |
|---|---|---|---|---|
| wissenscheck | maintainer | 30 | 2026-09-11 | 77 |
| korrektur | sweeper | 28 | 2026-09-11 | 14 |
| wissens-destillat | sweeper | 27 | 2026-09-11 | 174 |
| normen | builder | 21 | 2026-09-11 | 41 |
| hub-chef | maintainer | 10 | 2026-09-11 | 72 |
| honorarberechnung-sia102 | builder | 6 | 2026-09-07 | 48 |
| tenant-hygiene | maintainer | 6 | 2026-09-10 | 35 |
| ausschreibung | builder | 5 | 2026-09-03 | 74 |
| brandschutz | builder | 5 | 2026-09-11 | 118 |
| energie | ? | 5 | 2026-09-03 | 67 |
| kostenkontrolle | maintainer | 5 | 2026-09-07 | 62 |
| heartbeat | maintainer | 3 | 2026-09-11 | 180 |
| kostenschaetzung | builder | 3 | 2026-09-03 | 81 |
| logbuch | maintainer | 3 | 2026-09-11 | 63 |
| mahnwesen | maintainer | 3 | 2026-09-03 | 44 |
| offertenpruefung | builder | 3 | 2026-09-07 | 35 |
| pdf2dwg | builder | 3 | 2026-09-11 | 26 |
| unternehmerkontrolle | maintainer | 3 | 2026-09-03 | 38 |
| werkvertrag | builder | 3 | 2026-09-03 | 33 |
| synergie-orchestrator | grower | 2 | 2026-09-03 | 36 |
| zahlungsabgleich | maintainer | 2 | 2026-09-03 | 51 |
| machbarkeit | prototyper | 1 | 2026-09-03 | 29 |
| massgebendes-terrain | builder | 1 | 2026-09-03 | 14 |
| planungsgrundlagen | builder | 1 | 2026-09-03 | 32 |
| protokoll | builder | 1 | 2026-09-03 | 7 |
| stockwerkeigentum | builder | 1 | 2026-09-03 | 8 |
| terminplanung | builder | 1 | 2026-09-11 | 12 |
| twin | sweeper | 1 | 2026-09-03 | 24 |

## 2a. Kalt, aber erwartet — kein Handlungsbedarf

Diese Skills wurden nie geladen, und das ist richtig so. Ein anlassgebundener
Fach-Skill wartet auf ein reales Projekt; seine Kälte ist Vorratshaltung, kein
Mangel. Ein ersetzter Skill wird nicht geladen, weil die Arbeit über einen
Agenten, ein Script oder eine Rule läuft.

| Skill | Rolle | Status | erwähnt |
|---|---|---|---|
| baurecht | builder | anlassgebunden | 36 |
| marketing | grower | ersetzt | 30 |
| machbarkeit-studio | prototyper | anlassgebunden | 29 |
| auflagebereinigung | maintainer | anlassgebunden | 22 |
| immobilienbewertung | builder | anlassgebunden | 12 |
| ankaufspruefung | builder | anlassgebunden | 11 |
| unternehmerfindung | builder | anlassgebunden | 5 |
| oereb-schwyz | builder | anlassgebunden | 4 |
| website-content | grower | ersetzt | 3 |
| workstation-setup | maintainer | ersetzt | 3 |
| nutzungsstrategie | prototyper | anlassgebunden | 1 |
| studien-generator | builder | anlassgebunden | 1 |

## 2b. Kalt und zu klären

Hier steht der echte Entscheidungsbedarf: Skills ohne Anlass-Erklärung. Ein
Skill mit Status "aktiv", der trotzdem kalt ist, widerspricht dem Register und
gehört ebenfalls hierhin.

| Skill | Rolle | Status | erwähnt | zuletzt erwähnt |
|---|---|---|---|---|
| grobkosten-onepager | prototyper | aktiv | 54 | 2026-09-11 |
| wettbewerb | prototyper | aktiv | 40 | 2026-09-04 |
| healthcare-wirtschaftlichkeit | prototyper | aktiv | 21 | 2026-09-10 |
| behoerden-vorabklaerung | prototyper | aktiv | 19 | 2026-09-11 |
| spec | prototyper | aktiv | 10 | 2026-09-11 |
| pendenzenliste | maintainer | aktiv | 5 | 2026-09-11 |
| volumenstudie | prototyper | aktiv | 4 | 2026-09-11 |
| telesales | grower | pruefen | 3 | 2026-09-04 |
| masterclass | sweeper | pruefen | 2 | 2026-09-03 |

## 3. Sweeper — Konsolidierungs-Kandidaten

Namensverwandte Skills (gemeinsamer Wortstamm). Wo beide kalt sind, ist eine
Zusammenlegung zu pruefen; wo einer warm und einer kalt ist, ist der kalte
vermutlich im warmen aufgegangen.

- machbarkeit: machbarkeit(warm) machbarkeit-studio(kalt)

Zusaetzlich pruefenswert: jeder kalte Skill, dessen Rolle im Hub bereits
mehrfach besetzt ist. Die Rollen-Bilanz (scripts/rollen-bilanz.sh) zeigt,
wo Ueberbesetzung vorliegt.

## 4. Messgrenzen

- Transcripts werden nach 14 Tagen archiviert (scripts/transcript-rotation.sh).
  Das Archiv wird hier nicht ausgepackt — die Reichweite ist das, was lokal
  liegt. Ein "nie" heisst also: kein Signal in der lokalen Reichweite.
- Reine Claude-App-Chats (iPhone/iPad) sind headless nicht auslesbar.
- Ein Treffer belegt Verwendung im Gespraech, nicht Nutzen beim Kunden. Die
  zweite Haelfte des Growers (Wirkung beim Bauherrn) ist damit noch nicht
  gemessen — sie braucht ein Rueckmeldesignal, das der Hub heute nicht hat.
- WICHTIG, sonst wird die Kaltliste falsch gelesen: gemessen wird, ob die
  SKILL.md geladen wurde — nicht, ob die Faehigkeit erbracht wurde. Eine
  Leistung kann auch ohne Skill-Load entstehen: direkt aus der CLAUDE.md-
  Tabelle heraus, ueber einen Agenten (z.B. die linkedin-Agenten statt des
  Skills marketing) oder von Hand. "Nie aufgerufen" heisst darum: die
  Anleitung wurde nie gebraucht — was ein Hinweis auf einen ueberfluessigen
  ODER auf einen vergessenen Skill ist. Welches von beidem, entscheidet der
  Mensch, nicht dieses Script.

Erzeugt von scripts/nutzungs-radar.sh
