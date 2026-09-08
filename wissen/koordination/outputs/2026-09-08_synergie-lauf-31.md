---
title: Synergie-Lauf 31 (Tagestakt) — der Byte-Riegel der Facetten-Pflichtlektuere ist erreicht
status: established
last_updated: 2026-09-08
sources: git-Delta 07.09.2026 17:10 bis 08.09.2026 17:10 (119 Commits, SSD-Klon), Bausteine am Objekt
---

# Synergie-Lauf 31 — 08.09.2026

**Zuschnitt:** Tagestakt, leichtgewichtig, kein Agenten-Fan-out. Delta-Basis 07.09.2026 17:10
(Fussnote Lauf 30), Fenster 23,8 h, 119 Commits.

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr 08.09.2026 17:10 CEST gegen den nativen Synology-Selfcommit-Log
(`17:00:06 push OK (0764894b4)`) — Abweichung im Minutenbereich, kein Uhr-Befund. Der Log ist
nicht UTF-8, deshalb mit `tail` statt `grep` gelesen.

## Schritt 1 — Delta mit Gegenprobe

| Messung | Wert |
|---|---|
| Commits im Fenster | 119 |
| Aeltester Commit im Fenster | `7230d0b65` (07.09. 17:15) |
| Commit unmittelbar davor | `9a96588b0` (07.09. 17:00) — der HEAD von Lauf 30 |
| HEAD dieses Laufs | `0764894b4` (08.09. 17:00) |

Anschluss lueckenlos. Gemessen im SSD-Klon, dessen HEAD mit dem Synology-Log uebereinstimmt,
nicht per `git` ueber den SMB-Mount.

**Strukturelles Delta:** 0 neue Skills, Agenten, Rules, Connectoren, Services oder Commands.
8 geaenderte Contract-relevante Dateien in **vier** Vorgaengen. Frueh-Ausstieg (Schritt 2) griff
nicht.

| Vorgang | Commit | Dateien | Ergebnis |
|---|---|---|---|
| SYN-72-Auslieferung (Wissens-Chef 53/54) | `34fe0557a` | grobkosten-onepager, grobkosten-rechner, machbarkeit-studio | Status nachgefuehrt, kein neuer Befund |
| SYN-77-Nachtrag aus Lauf 30 | `32022b17f` | offertenpruefung | Eigenrauschen, nicht aufgerollt |
| `links:`-Konvention | `f2bf87873` | wissenscheck, WISSEN-CLAUDE.md | Rueckkante vorbildlich → **SYN-79** |
| twin-fidelity-review | `641664511` | jans-dna-facetten (9+/11-) | **SYN-78** |

## SYN-78 — der Riegel ist erreicht, und die Verdichtung hat Belege aus der Ladezone geschoben

**Die Mechanik zuerst.** `skills/twin/tools/build_dna.py` kompiliert je Facette **ausschliesslich**
den Abschnitt `## Do / Don't` des Wiki-Artikels in `rules/jans-dna-facetten.md` (Regex Z. 67,
`extract_block` Z. 71-75). Genau dieser kompilierte Block ist laut Dateikopf die
«PFLICHT-LEKTUERE vor jedem ausgehenden Texterzeugnis». Alles ausserhalb des Do/Don't-Blocks
existiert im Artikel, erreicht die Pflichtlektuere aber nie.

**Die Messung.** Auto-Block an HEAD vor diesem Lauf: **33'993 B** bei `MAX_AUTO_BYTES = 34000`.
**7 Bytes Reserve.** Der `twin-fidelity-review` vom 08.09. 06:05 (`641664511`) musste kuerzen, um
ueberhaupt neue Marker setzen zu koennen; er hat netto 114 B freigeraeumt.

**Was dabei fiel.** Im Do/Don't-Block von `wissen/twin/wiki/stimme.md` standen neun namentlich
belegte Service-Satz-Gattungen:

- *belegt GESETZT:* Rechnungs-/Schluss-Liefermail, Auftrags-Dank, beratende Du-Mail, erbetene
  Auskunft (260827), Erst-Offertanfrage, Antrag ans Amt, Abgebot, Transmittal, Statusmail (260904)
- *belegt WEGGELASSEN:* praezisierte Zweitanfrage (260826), Amts-Ersuchen (260823), dieselbe
  Statusmail-Gattung (260904)

Ersetzt wurden sie durch: «Der Gattungs-Messstand (belegt gesetzt / belegt weggelassen) steht im
Artikel.»

**Kein Datenverlust, ein Zugriffsverlust.** Die Gattungen sind in `stimme.md` weiterhin da —
gemessen: «Abgebot» 8 Treffer, «Erst-Offertanfrage» 1, «Zweitanfrage» 1, «Amts-Ersuchen» 1. Im
Do/Don't-Block (Z. 49 bis zur naechsten H2): **0**. Sie liegen also in den 5'500 Zeilen, die kein
Texterzeugnis laedt.

**Der Zeiger loeste in keinem der beiden Kontexte auf.** In `stimme.md` war «im Artikel» ein
Selbstverweis — wer ihn liest, steht schon drin. Im kompilierten Kompilat war er adresslos, denn
`jans-dna-facetten.md` buendelt sechs Facetten-Artikel und nennt keinen. **Das ist die Falle jeder
Kompilierung:** der Satz wurde aus der Sicht des Erzeugnisses formuliert und in die Quelle
geschrieben, wo er nicht traegt.

**Der Zustand war vorhergesagt.** Die Anhebung 30'000 → 34'000 am 18.08.2026 wurde im Script
selbst so begruendet: «die billige Verdichtungsreserve war aufgebraucht (29 B), die naechste Runde
haette Regeln geloescht statt Doppelungen — der Punkt, an dem der Riegel schadet statt schuetzt»
(`build_dna.py` Z. 57-62). Nach 21 Tagen ist der Fall eingetreten.

**Reparatur (a), umgesetzt, active-with-flagging.** In `wissen/twin/wiki/stimme.md` Z. 57-58 heisst
der Zeiger jetzt «steht in den Gattungs-Abschnitten weiter unten in `wiki/stimme.md`». Editiert
wurde die **Quelle**, nicht das Kompilat — die Rule traegt im Kopf «Nicht von Hand editieren» —,
danach `python3 skills/twin/tools/build_dna.py`. Beide Dateien behalten ihre Zeilenzahl (5552 bzw.
391), je eine Zeile ersetzt.

**Offen (b) — Raphael vorzulegen, nicht still zu entscheiden.** Der Riegel laesst nur noch
Verdraengung zu: jede neue Stil-Erkenntnis kostet ab jetzt eine alte. Drei Wege:

1. **Grenze anheben** wie am 18.08. — hebt die Ladekosten jedes Texterzeugnisses; Entscheid
   Raphaels, so wie damals nach dreimaliger Vorlage.
2. **Verdichtungsregel schaerfen** — Beleg-Prosa und Datumsketten aus dem Do/Don't-Block, reine
   Regel hinein. Der Script-Kommentar behauptet, die Bloecke seien «nahezu reine Regel, kaum
   Beleg-Prosa (geprueft 03.08.2026)»; nach fuenf Wochen Marker-Zuwachs ist das nachzumessen.
3. **Zwei Ladestufen** — Kernregeln immer, Gattungstabellen auf Zuruf. Das waere die Diaet-Logik
   vom 03.08.2026 eine Ebene tiefer wiederholt.

**Adversariale Gegenpruefung.** Gegen den Befund spricht, dass der Review inhaltlich richtig
gehandelt hat: die geloeschte «Bestbeschreibung, 7 von 8, unbestaetigt» war am 08.09. tatsaechlich
widerlegt, und eine widerlegte Hypothese gehoert weg. Das traegt fuer die Hypothese, **nicht fuer
die Gattungsliste** — die ist Beleg, nicht Vermutung, und ging im selben Schnitt mit. Zweiter
Einwand: `rules/jans-dna.md` sagt, die Twin-Agenten laesen die Facetten-Artikel ohnehin direkt.
Das gilt fuer sie, nicht fuer eine gewoehnliche Session, die nur die Pflichtlektuere laedt — und
genau fuer die ist der Do/Don't-Block gemacht. **Eigenmessung nach der Reparatur: 33'929 B,
71 B Reserve**; das Script warnt jetzt von selbst («Verdichten einplanen»). Dieser Lauf hat 50 B
verbraucht und weist das aus.

## SYN-79 — eine Konvention ohne Aussage ueber den Bestand

Der Vorgang `f2bf87873` ist in der Verdrahtung mustergueltig: `wissen/WISSEN-CLAUDE.md` Z. 60-66
haelt fest, dass `links:` nur fuer `wiki/`-Artikel gilt, und `skills/wissenscheck/SKILL.md`
Pruefung B nennt die Meta-Datei zurueck. Beide Richtungen, ein Commit, mit Anlassbeleg
(`projekt-lessons` PL46-2/PL46-3). **Das ist die Kante, deren Fehlen dieser Skill seit SYN-10 am
haeufigsten meldet — hier war sie da, bevor jemand danach fragte.**

Der Befund liegt daneben. Die Klarstellung sagt zugleich, ein `outputs/`-Report mit eckigen
Klammern sei «ein Schreibregel-Verstoss fuer Audit F». Gemessen ueber den ganzen Wissens-Layer:

- **85 `outputs/`-Reports fuehren ein `links:`-Feld**
- verteilt auf mindestens zehn KBs: `wettbewerbs-dna`, `bauprodukte`, `claude-code`,
  `firmengruendung-ch`, `immobilienbewertung`, `auflagebereinigung`, `baurecht`, `grobkosten`,
  `twin`, `projekt-lessons`
- in drei Bauformen: `[[wikilink]]`, einfache `[klammern]` (`bauprodukte`), relative Pfade
  `[[../wiki/stimme]]` (`twin`)

Der Anlass waren zwei tote Zeiger in **einer** KB. Ohne Aussage zum Altbestand produziert der
naechste `wissenscheck` in jeder dieser KBs einen Schwall Audit-F-Befunde aus Altlast — genau das
Rauschen, das die Klarstellung vermeiden sollte.

**Nicht gesetzt**, bewusst: ob der Altbestand nachgepflegt, beim naechsten Anlass bereinigt oder
stehen gelassen wird, ist ein Entscheid der fuehrenden Instanz, kein Querverweis (Praezedenz
SYN-54, SYN-72). **Daempfung:** ein grosser Teil der 85 Treffer ist ein **leeres** `links:`-Feld
und damit harmlos — deshalb Prioritaet 2. Der Befund faellt trotzdem nicht weg: der Wortlaut
unterscheidet leer und gefuellt nicht, und die gefuellten Faelle (`baurecht` sechs Ziele,
`immobilienbewertung` vier, `twin` relative Pfade) tragen echte Querverweise.

## SYN-72 — Status nachgefuehrt, eine ungedeckte Stelle gemessen

Die Auslieferung des ⚠-Zeigers ist von zwei auf **sechs** Stellen gewachsen (Lauf 53:
`grobkosten/wiki/kennwerte.md` Z. 55; Lauf 54: `grobkosten-onepager` Z. 55, `machbarkeit-studio`
Z. 74, `grobkosten-rechner` Z. 35, `immobilienbewertung/wiki/flaechendefinitionen-sia.md` Z. 179).
Alle in diesem Lauf am Objekt nachgemessen.

**Ungedeckt bleibt `skills/kostenschaetzung/SKILL.md`** — in der Beteiligtenspalte von SYN-72
genannt, aber 0 Treffer auf `SYN-72` und 0 auf `Aussenflaech`. Sie hat den Vorbehalt aus Lauf 52
**nie bekommen**, hat also nichts zu widerrufen; zugleich fuehrt sie ihr ganzes Band in CHF/m² NF
(Z. 46, Z. 54) und mahnt an Z. 83 ausdruecklich «Bezugsflaeche beachten … das Band ist CHF/m² NF,
nicht GF». Sie ist fuer genau diese Frage sensibilisiert und kennt die Aussenflaechen-Blindheit
trotzdem nicht — derselbe Fall wie `agents/realwert-rechner.md` im SYN-01-Nachtrag. **Weiterhin
bewusst nicht gesetzt**, aus demselben Grund: einen zur Haelfte unbelegten Satz in einen weiteren
Baustein zu tragen, vergroessert den Befund. Massnahme (c) umfasst damit **sieben** Stellen.

## Schreib-Kontrolle

Jeder Edit anker-basiert und in-place-eindeutig, kein globales Suchen-und-Ersetzen, alle Pfade
absolut (SYN-67), Umfang vor und nach jedem Schreibvorgang gemessen:

| Datei | vorher | nachher | entfernte Zeilen |
|---|---|---|---|
| `wissen/twin/wiki/stimme.md` | 5552 | 5552 | 1 (benannte Ersetzung) |
| `rules/jans-dna-facetten.md` | 391 | 391 | 1 (via `build_dna.py`, nicht von Hand) |
| `wissen/koordination/SYNERGIE-REGISTER.md` | 1594 | 1653 | 1 (SYN-72-Zellenersetzung) |

Nicht per `git` ueber SMB gemessen.

## Wissens-Ruecklauf

Verallgemeinerbar aus diesem Lauf, ueber den Einzelfall hinaus: **Wo ein Erzeugnis aus einer
Quelle kompiliert wird, muss jeder Verweis in der Quelle so formuliert sein, dass er in beiden
Kontexten auflöst.** «Siehe oben», «im Artikel», «in dieser Rule» sind in einem Kompilat-Baustein
unbrauchbar, weil sie je nach Leseort etwas anderes bedeuten — der Verweis braucht die Adresse,
nicht die Richtung. Betroffen sind ausser `build_dna.py` alle Stellen, an denen Hub-Inhalte
zusammengezogen werden. Gegenmessung in den uebrigen fuenf Facetten-Quellen: kein weiterer
Selbstverweis dieser Art (`denken`, `haltung`, `fachsignatur`, `arbeitsweise` je 0; die Treffer
in `beziehungsregister.md` meinen die Rule `anrede-kontakte` und sind korrekt gerichtet).
