# Nutzungs-Radar (Grower) — Stand 29.07.2026

Der Hub misst hier zum ersten Mal nicht, was er produziert, sondern was
tatsaechlich verwendet wird.

Skills im Bestand: 48 (plus 2 parkierte, nicht mitgezählt)
Wirklich aufgerufen: 24 · nie aufgerufen: 24
Von der Kälte sind 22 erwartet (anlassgebunden oder ersetzt) und
2 zu klären.
Mac Mini: einbezogen (91 Signale)
Deliverables: OUTPUT-Ordner nicht erreichbar (OneDrive nicht gemountet)

Zwei Signalklassen, bewusst getrennt: AUFGERUFEN heisst Skill-Werkzeug oder
Read auf die SKILL.md — der Skill hat tatsaechlich gearbeitet. ERWAEHNT heisst,
der Pfad kam irgendwo vor (Inventar-Lauf, Aufzaehlung, Zitat). Ohne diese
Trennung gilt jeder Skill als benutzt, den ein Audit-Lauf einmal aufgelistet
hat — und die Kaltliste ist leer, obwohl nichts genutzt wird.

## 1. Aufgerufene Skills (harte Nutzung)

| Skill | Rolle | Aufrufe | zuletzt | nur erwaehnt |
|---|---|---|---|---|
| wissenscheck | maintainer | 30 | 2026-07-25 | 13 |
| korrektur | sweeper | 18 | 2026-07-28 | 3 |
| hub-chef | maintainer | 8 | 2026-07-28 | 24 |
| wissens-destillat | sweeper | 7 | 2026-07-28 | 14 |
| kostenschaetzung | builder | 3 | 2026-07-25 | 8 |
| spec | prototyper | 3 | 2026-07-20 | 104 |
| ausschreibung | builder | 2 | 2026-07-24 | 3 |
| brandschutz | builder | 2 | 2026-07-28 | 4 |
| pendenzenliste | maintainer | 2 | 2026-07-23 | 4 |
| wettbewerb | prototyper | 2 | 2026-07-15 | 18 |
| behoerden-vorabklaerung | prototyper | 1 | 2026-07-28 | 8 |
| grobkosten-onepager | prototyper | 1 | 2026-07-25 | 5 |
| healthcare-wirtschaftlichkeit | prototyper | 1 | 2026-07-25 | 8 |
| honorarberechnung-sia102 | builder | 1 | 2026-07-15 | 1 |
| logbuch | maintainer | 1 | 2026-07-17 | 21 |
| mahnwesen | maintainer | 1 | 2026-07-20 | 16 |
| normen | builder | 1 | 2026-07-15 | 5 |
| offertenpruefung | builder | 1 | 2026-07-17 | 2 |
| pdf2dwg | builder | 1 | 2026-07-21 | 3 |
| planungsgrundlagen | builder | 1 | 2026-07-22 | 22 |
| synergie-orchestrator | grower | 1 | 2026-07-28 | 11 |
| tenant-hygiene | maintainer | 1 | 2026-07-28 | 6 |
| terminplanung | builder | 1 | 2026-07-25 | 10 |
| volumenstudie | prototyper | 1 | 2026-07-14 | 18 |

## 2a. Kalt, aber erwartet — kein Handlungsbedarf

Diese Skills wurden nie geladen, und das ist richtig so. Ein anlassgebundener
Fach-Skill wartet auf ein reales Projekt; seine Kälte ist Vorratshaltung, kein
Mangel. Ein ersetzter Skill wird nicht geladen, weil die Arbeit über einen
Agenten, ein Script oder eine Rule läuft.

| Skill | Rolle | Status | erwähnt |
|---|---|---|---|
| marketing | grower | ersetzt | 53 |
| zahlungsabgleich | maintainer | anlassgebunden | 18 |
| twin | sweeper | ersetzt | 15 |
| auflagebereinigung | maintainer | anlassgebunden | 11 |
| machbarkeit | prototyper | anlassgebunden | 7 |
| machbarkeit-studio | prototyper | anlassgebunden | 5 |
| massgebendes-terrain | builder | anlassgebunden | 3 |
| oereb-schwyz | builder | anlassgebunden | 3 |
| unternehmerfindung | builder | anlassgebunden | 3 |
| workstation-setup | maintainer | ersetzt | 3 |
| ankaufspruefung | builder | anlassgebunden | 2 |
| baurecht | builder | anlassgebunden | 2 |
| immobilienbewertung | builder | anlassgebunden | 2 |
| kostenkontrolle | maintainer | anlassgebunden | 2 |
| nutzungsstrategie | prototyper | anlassgebunden | 2 |
| stockwerkeigentum | builder | anlassgebunden | 2 |
| studien-generator | builder | anlassgebunden | 2 |
| website-content | grower | ersetzt | 2 |
| protokoll | builder | anlassgebunden | 1 |
| unternehmerkontrolle | maintainer | anlassgebunden | 1 |
| werkvertrag | builder | anlassgebunden | 1 |
| heartbeat | maintainer | ersetzt | 0 |

## 2b. Kalt und zu klären

Hier steht der echte Entscheidungsbedarf: Skills ohne Anlass-Erklärung. Ein
Skill mit Status "aktiv", der trotzdem kalt ist, widerspricht dem Register und
gehört ebenfalls hierhin.

| Skill | Rolle | Status | erwähnt | zuletzt erwähnt |
|---|---|---|---|---|
| masterclass | sweeper | pruefen | 0 | - |
| telesales | grower | pruefen | 0 | - |

## 3. Sweeper — Konsolidierungs-Kandidaten

Namensverwandte Skills (gemeinsamer Wortstamm). Wo beide kalt sind, ist eine
Zusammenlegung zu pruefen; wo einer warm und einer kalt ist, ist der kalte
vermutlich im warmen aufgegangen.

- machbarkeit: machbarkeit(kalt) machbarkeit-studio(kalt)

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
