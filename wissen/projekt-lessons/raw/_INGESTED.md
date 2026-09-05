# RAW — Ingest-Register (Projekt-Lessons)

Register von allem, was in `raw/` liegt: Quelle, wann reingekippt, ob in einen
Wiki-Artikel eingearbeitet. Der Health-Check (Audit D) prüft die Coverage.

| Datei | Reingekippt | Quelle | Eingearbeitet in Wiki | Status |
|---|---|---|---|---|
| `260729-kispi-rueckweisung-installationsplan-lueftung.md` | 29.07.2026 | Projektordner 2619 KISPI, `02_Korrespondenz/4_Gruners GT Planer/296_7_Brandschutzexperte Ziegel/260729 Rückweisung Installationsplan Lüftung/` | noch nicht (Lauf 1 endet nach Stufe A, Stufe B/C folgen erst nach Handkontrolle durch Raphael) | `[ ]` wartet auf Handkontrolle |
| `260803-kispi-re00087-zahlungsnachforschung.md` | 03.08.2026 | Mail-Thread (rj@raphaeljans.ch ↔ Michael Spörri, KISPI HLKKS), OneDrive `2619_KINDERSPITAL/02_Korrespondenz/1_Bauherrschaft/HLK Stv Lt. Technischer Dienst Spoerri Michael/260803 offene Rechnungen/` | ja, als «Update 03.08.2026»-Abschnitt in [[kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087]] | `[x]` eingearbeitet |

So befüllst du die KB: Roh-Material (Debriefing-Notizen, „was lief schief"-Mails,
Schlussbesprechungen, Transkripte) in `raw/` ablegen, dann Claude bitten zu
kompilieren — der Bibliothekar legt die Lesson-Artikel an und trägt sie hier ein.

## Zweiter Ingest-Pfad: Korpus-Destillation (kein `raw/`-Drop)

Die Health-Checks vom 25.08. und 01.09.2026 bemängelten wiederholt, dieses Register kenne
nur 2 von 14 Wiki-Artikeln (Audit D, «RAW-Coverage-Lücke»). Der scheinbare Rückstand ist kein
fehlendes Nachtragen, sondern ein zweiter, strukturell anderer Ingest-Weg: die zwölf übrigen
Artikel stammen nicht aus einem `raw/`-Drop, sondern direkt aus dem Skill `wissens-destillat`,
der den Korpus `buero-projekte` (`/Volumes/daten/04_Buero/02_Projekte/`) liest und destilliert,
ohne eine Zwischendatei in `raw/` abzulegen. Jeder dieser Artikel trägt seine Quellen bereits
belegt im eigenen `sources:`-Frontmatter (nicht hier zu duplizieren); diese Tabelle verweist nur
auf Korpus und Lauf-Protokoll:

| Wiki-Artikel | Destilliert am | Korpus-Lauf (Protokoll) |
|---|---|---|
| `lorrainestrasse-2011-realisierungsphase-honorar-unpreist` | 17.08.2026 | `outputs/2026-08-17_destillat-buero-projekte-run1.md` |
| `lorraine-kueche-maria-1318-kv-nebengewerke-abweichung` | 23.08.2026 | `outputs/2026-08-23_destillat-buero-projekte-lorraine-kueche-run1.md` + `-run2.md` |
| `lorraine-kueche-1318-elektro-nachtrag-anschlusswerte-kuechenbauer` | 23.08.2026 | `outputs/2026-08-23_destillat-buero-projekte-lorraine-kueche-run2.md` |
| `dachstock-lorrainestrasse4-1011-denkmalpflege-foerderkombination-2003` | 23.08.2026 | `outputs/2026-08-23_destillat-buero-projekte-lorraine-kueche-run2.md` |
| `vordach-lorrainestrasse4-1011-glasbaustein-denkmalpflege-2010` | 23.08.2026 | `outputs/2026-08-23_destillat-buero-projekte-p2-run3.md` |
| `nerves-2015-pentagon-systemwahl-streuung` | 23.08.2026 | `outputs/2026-08-23_destillat-buero-projekte-p2p3-run4.md` |
| `lorraine-kueche-1318-kuehlschrank-beschaffungsrisiko` | 23.08.2026 | `outputs/2026-08-23_destillat-buero-projekte-p2p3-run4.md` |
| `eh-europe-1527-mahnkaskade-unbezahlter-zusatzauftrag` | 23.08.2026 | `outputs/2026-08-23_destillat-buero-projekte-p2p3-run4.md` |
| `nerves-2015-kv-nebengewerke-unterschaetzt` | Erstfassung vor 17.08., seither zweimal ergänzt (17.08., 23.08.) | `outputs/2026-08-17_destillat-buero-projekte-run1.md` + Run 4 (Rohbau-Nachtrag) |
| `kispi-lbw-rohdichte-800` | 23.07.2026 | Konversations-Destillat, nicht Korpus `buero-projekte` — Quelle direkt im `sources:`-Feld des Artikels |
| `roethlisberger-geraetepreis-pruefung-273-35` | 28.07.2026 | dito (Konversations-Destillat KISPI, nicht `buero-projekte`) |
| `sbb-naeherbaurecht-thalwil-2414-vordach` | 28.07.2026 | dito (Konversations-Destillat Thalwil 2414, nicht `buero-projekte`) |
| `kispi-behoerden-zustaendigkeitswechsel-1171-26` | 29.07.2026 | dito (Logbuch-Journal-Destillat, nicht `buero-projekte`) |

Damit ist die Herkunft aller 14 Wiki-Artikel registerseitig lückenlos nachvollziehbar. Der
nächste Health-Check kann dieses Register statt der reinen `raw/`-Tabelle prüfen (Audit D).
