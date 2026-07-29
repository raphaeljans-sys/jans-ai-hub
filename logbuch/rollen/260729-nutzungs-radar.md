# Nutzungs-Radar (Grower) — Stand 29.07.2026

Der Hub misst hier zum ersten Mal nicht, was er produziert, sondern was
tatsaechlich verwendet wird.

Skills im Bestand: 50 · wirklich aufgerufen: 24 · nie aufgerufen: 26
davon nur erwaehnt (Inventar-/Audit-Spur, kein Aufruf): 22
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
| wissenscheck | maintainer | 30 | 2026-07-25 | 12 |
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

## 2. Kaltliste — nie aufgerufen

Diese Skills existieren, haben in der Messreichweite aber nie gearbeitet.
Das ist kein Urteil ueber ihre Qualitaet: ein Skill kann fachlich gut und
trotzdem ungenutzt sein, weil der Anlass fehlte. Es ist die Liste, ueber
die entschieden werden muss — behalten, zusammenlegen oder stilllegen.
Die Spalte "erwaehnt" zeigt, ob der Skill wenigstens im Blickfeld war.

| Skill | Rolle | erwaehnt | zuletzt erwaehnt |
|---|---|---|---|
| marketing | grower | 52 | 2026-07-28 |
| zahlungsabgleich | maintainer | 18 | 2026-07-28 |
| twin | sweeper | 15 | 2026-07-28 |
| auflagebereinigung | maintainer | 11 | 2026-07-27 |
| machbarkeit | prototyper | 7 | 2026-07-28 |
| machbarkeit-studio | prototyper | 5 | 2026-07-25 |
| massgebendes-terrain | builder | 3 | 2026-07-28 |
| oereb-schwyz | builder | 3 | 2026-07-25 |
| unternehmerfindung | builder | 3 | 2026-07-25 |
| workstation-setup | maintainer | 3 | 2026-07-28 |
| ankaufspruefung | builder | 2 | 2026-07-19 |
| baurecht | builder | 2 | 2026-07-19 |
| immobilienbewertung | builder | 2 | 2026-07-19 |
| kostenkontrolle | maintainer | 2 | 2026-07-25 |
| nutzungsstrategie | prototyper | 2 | 2026-07-19 |
| stockwerkeigentum | builder | 2 | 2026-07-19 |
| studien-generator | builder | 2 | 2026-07-21 |
| website-content | grower | 2 | 2026-07-25 |
| protokoll | builder | 1 | 2026-07-19 |
| unternehmerkontrolle | maintainer | 1 | 2026-07-19 |
| versandplanung | - | 1 | 2026-07-19 |
| werkvertrag | builder | 1 | 2026-07-19 |
| email-preferences | - | 0 | - |
| heartbeat | maintainer | 0 | - |
| masterclass | sweeper | 0 | - |
| telesales | grower | 0 | - |

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

Erzeugt von scripts/nutzungs-radar.sh
