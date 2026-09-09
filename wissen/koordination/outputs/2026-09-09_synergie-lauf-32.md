---
title: Synergie-Lauf 32 (09.09.2026) — die Vorlage liegt vierfach und wirkt einfach
status: final
last_updated: 2026-09-09
sources: [git-Delta 08.09.2026 17:10 bis 09.09.2026 17:10 (115 Commits, nativ im SSD-Klon gemessen); rules/jans-dna-facetten.md; skills/twin/tools/build_dna.py; wissen/twin/outputs/2026-09-09_fidelity.md; wissen/claude-code/outputs/2026-09-09_verdichtung-verliert-zuerst-die-bedingung.md; wissen/koordination/SYNERGIE-REGISTER.md SYN-69/SYN-78/SYN-79; logbuch/fristen.md Z. 49]
---

# Synergie-Lauf 32 (Tagestakt, 09.09.2026)

Delta-Basis 08.09.2026 17:10, Fenster 23,8 h, 115 Commits. Uhr gegen die native Synology-Uhr
geprueft (Station 17:10 CEST, letzter selfcommit 17:00, keine Abweichung). Anschlussprobe
lueckenlos. Strukturelles Delta: **kein neuer Baustein, eine geaenderte Rule**
(`rules/jans-dna-facetten.md`, drei Commits, davon einer Eigenrauschen aus Lauf 31).

## Der Befund in einem Satz

Der Byte-Riegel der Twin-Pflichtlektuere ist nicht der Befund — er ist seit dem 02.09. als SYN-69
erfasst. Der Befund ist, dass **dieselbe Entscheidungsvorlage inzwischen an vier Stellen liegt und
keine die anderen nennt**, und dass die Zersplitterung gestern zum ersten Mal messbar Arbeit
vernichtet hat.

## Die vier Kanaele

| Ort | seit | Status | nennt die anderen? |
|---|---|---|---|
| SYN-69 (Synergie-Register) | 02.09.2026 | offen, Entscheid Raphael | nein |
| SYN-78 (b) (Synergie-Register) | 08.09.2026 | offen | **nein** — kennt SYN-69 nicht |
| `logbuch/fristen.md` Z. 49 | 08.09.2026 | offen, Frist 09.09. 06:05 | nennt SYN-54/SYN-72, nicht SYN-69/78 |
| `twin-fidelity-review` | fuenfter Lauf in Folge | Empfehlung 36'000 B | nein |

Gemessen: sechs Fidelity-Reports nennen 36'000 (08.08., 13.08., 03.09., 04.09., 08.09., 09.09.);
der Ruecklauf-Report in `wissen/claude-code/outputs/` hat 0 Treffer auf `SYN-`/`koordination`;
SYN-78 hat als einzigen `SYN-`-Treffer sich selbst.

Der teuerste Fall ist der eigene: **SYN-78 wurde gestern neben SYN-69 angelegt, ohne die Kante zu
ziehen** — genau der Fehler, den dieser Skill seit SYN-10 bei anderen am haeufigsten meldet.

## Was die Zersplitterung gekostet hat

Die SYN-78-Reparatur vom 08.09. 17:21 (`baadd6921`) hielt **13 Stunden**. `303c7672e` (09.09.
06:00) kuerzte den Zeiger auf «Gattungs-Messstand im Artikel» zurueck — denselben Wortlaut, den
SYN-78 als adresslos beanstandet hatte. Der Nacht-Lauf konnte es nicht wissen: er kannte weder
SYN-78 noch die Reparatur.

Im selben Zug aus der Pflichtlektuere verdraengt, je 1 Treffer im Artikel und **0** im
Do/Don't-Block:

| Marker | Datei |
|---|---|
| «Bestbeschreibung» (widerlegte Gruss-Hypothese 260908) | `wissen/twin/wiki/stimme.md` |
| «rahmt die dazwischen» (Dankformel-Begruendung) | `wissen/twin/wiki/stimme.md` |
| «statische Ausl» (Trajektorien-Beleg) | `wissen/twin/wiki/beziehungsregister.md` |
| «dreimal zu hoch» (Messwert 260822/260823) | `wissen/twin/wiki/beziehungsregister.md` |
| «kontrollierter Vergleich» | `wissen/twin/wiki/haltung.md` — **ganz gestrichen (0 Treffer)** |

Kein Datenverlust ausser beim letzten, aber erneut Zugriffsverlust — dasselbe Muster wie SYN-78,
einen Tag spaeter, vier weitere Faelle. Damit ist belegt, dass es kein Einzelfall war, sondern der
Regelbetrieb unter dem Riegel.

## Byte-Stand

Eigene Nachrechnung mit der Extraktionslogik von `build_dna.py` Z. 67-74, lesend nachgebaut:

| Facette | B |
|---|---|
| stimme | 7069 |
| denken | 2930 |
| haltung | 5991 |
| beziehungsregister | 5995 |
| fachsignatur | 4978 |
| arbeitsweise | 6874 |
| **Kompilat** | **33'985 von 34'000 — Reserve 15 B** |

Verlauf: 7 B (08.09. vor der Reparatur) → 71 B (nach der Reparatur) → **15 B**. Der Review nennt es
selbst «die niedrigste je gemessene Reserve» und fuehrt vierzehn belegte, verhaltenswirksame Marker
ausserhalb des Gehirns. Der naechste Review laeuft am 10.09.2026 06:05.

## Was der Nacht-Lauf richtig gemacht hat

Er hat drei neue belegte Regeln gesetzt (Fragezeichen faellt nur bei Bitte und Vorwurfsfrage, die
Sachfrage behaelt es; Nachmeldung konditional statt imperativ, mit Kanalabgabe an Dritte;
Zahlungserinnerung namenlos nur beim institutionellen Kontakt), die Verdichtung Posten fuer Posten
ausgewiesen und den Mechanismus im Ruecklauf praeziser beschrieben als beide Registereintraege:
**der Riegel selektiert gegen Bedingungen und fuer unbedingte Imperative**, weil eine Bedingung
mehr Zeichen braucht als der Imperativ, den sie einschraenkt (Marker im Artikel 38, im kompilierten
Block 1). Der Befund richtet sich gegen den Zustand, nicht gegen den Lauf.

## Nebenbefund: SYN-79 waechst

Bestand 85 → **88**. Von den sieben seit gestern neu angelegten `outputs/`-Reports tragen **zwei**
ein `links:`-Feld, beide **nach** der Klarstellung vom 08.09. entstanden. Die Konvention wirkt damit
nicht nur nicht auf den Altbestand, sondern nicht einmal auf Neuanlagen; `wissen/WISSEN-CLAUDE.md`
hat weiterhin 0 Treffer auf «Altbestand».

## Gesetzt (active-with-flagging)

Vier Querverweise, kein Sachentscheid, kein bestehender Befundwortlaut geaendert: SYN-69 → SYN-80,
SYN-78 → SYN-69/SYN-80, `logbuch/fristen.md` Z. 49 (Nachtrag + Heraufstufung mittel → hoch),
Ruecklauf-Report → Register (Cross-KB-Bringschuld nach Rule `wissens-bibliothekar`).

## Offen, Raphael vorzulegen

Der Riegel-Entscheid selbst, unveraendert dreiwegig: (a) Grenze auf 36'000 anheben — hebt die
Ladekosten jedes Texterzeugnisses; (b) Verdichtungsregel schaerfen, Beleg-Prosa raus, Bedingungen
geschuetzt; (c) Do/Don't-Block in zwei Ladestufen splitten. Neu ist allein das inhaltliche
Argument aus dem Ruecklauf: der Riegel erzeugt inzwischen die Drift, die der Review misst.

Zusaetzlich fuer den Wissens-Chef: eine Reparatur an einer byte-gedeckelten, taeglich neu
kompilierten Datei ist nicht haltbar, solange der Druck besteht. Solche Reparaturen erst nach dem
Entscheid setzen oder gegen Rueckkuerzung sichern — sonst verbraucht jeder Lauf Arbeit, die der
naechste einzieht.

## Nebenbefund (nicht behoben, bewusst)

Beim Setzen von SYN-80 ist ein eigener Formatfehler aufgefallen und sofort repariert worden: eine
zitierte Regex-Alternation (`A|B|C`) im Befundtext zerlegt die Markdown-Tabellenzelle — SYN-80 hatte
kurzzeitig 8 statt 6 Feldern. Die Gegenmessung ueber alle 80 Zeilen zeigt **acht Altfaelle** mit
derselben Anomalie: SYN-30, SYN-31, SYN-60, SYN-61, SYN-64, SYN-65, SYN-67, SYN-70.

**Nicht behoben, und zwar aus einem Sachgrund, nicht aus Bequemlichkeit:** mindestens SYN-70 zitiert
mit `erneut pruef|wiedervorlage|gegenmess|periodisch` ein **echtes grep-Muster**. Ein mechanisches
`\|`-Escape wuerde dort das zitierte Kommando verfaelschen und aus einem Darstellungsfehler einen
Sachfehler machen — genau das Muster, vor dem Rule `bkp-2017-referenz` beim Korrigieren warnt
(«Sachbezug pruefen, nicht mechanisch ersetzen»). Die acht Faelle sind je einzeln zu entscheiden:
Escape dort, wo es Prosa ist, Codefence-Umbau dort, wo es ein Muster ist. Aufwand gering, aber es
sind fremde Befundwortlaute; kein Grund, das nebenbei im Sammellauf zu tun.
