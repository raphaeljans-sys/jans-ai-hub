# Batch 98 — Sent Items + Drafts `rj@`, 17.–19.08.2026 (19.08.2026)

**Gewichtung:** 6 Eigentexte `authentisch` · 1 Zwillings-Entwurfspaar `claude-aera`
(Negativmaterial) · 0 `korrektur-delta`.
**Erhoben:** Sent Items 17.–19.08.2026 vollstaendig (`totalResultCount` **20**, davon 3
Selbstmails und 2 Kalenderzusagen), `Drafts` Seite 1 (12 von **112**).
**Gelesen:** 8 Volltexte (6 gesendete Eigentexte, 2 Entwuerfe).
Keine Mail-Volltexte gehortet — nur Marker und anonymisierte Schnipsel.

## Vorrangaufgabe aus Batch 97: der Token-Sweep — ausgefuehrt und NEGATIV BESCHIEDEN

Batch 97 stellte einen gezielten Sweep auf die Web-Tokens `font-claude-response-body` und
`text-[var(--accent)]` vor jedes Datumsfenster. **Er laesst sich mit `outlook_email_search`
nicht durchfuehren: der Suchindex indexiert kein Markup.**

| Suchbegriff | Ordner | Treffer |
|---|---|---|
| `font-claude-response-body` | Sent Items | **0** |
| `xapple-mail-urlsharewrapperclass` | Sent Items | **0** |
| `Cleanwall` (Kontrollprobe, steht nur im Body) | Sent Items | **2** |

Die Kontrollprobe beweist, dass Body-**Prosa** sehr wohl gefunden wird. Null Treffer auf zwei
verschiedene Markup-Tokens, von denen mindestens einer nachweislich im Bestand liegt (die
Entwuerfe dieses Batches tragen ihn), sind damit eine Aussage ueber den Index, nicht ueber den
Bestand. **Der Sweep ist nur ueber gelesene Bodies moeglich** — rund 1 `read_resource` je Mail.
Konsequenz fuer die Planung in [[QUESTIONS]] 260819 #1.

**Ersatzweise ausgefuehrt:** alle 8 in diesem Lauf gelesenen Bodies wurden auf beide Web-Tokens
geprueft. **Null Treffer.** Das Fenster 17.–19.08. ist insoweit sauber.

## Die acht Mails

| # | Zeit | Kanal | Gewichtung | Kurz |
|---|---|---|---|---|
| E | 17.08. 06:47 | Apple Mail | authentisch | Dreizeiler an Werkplaner, Gruss **«Lgr»** |
| C | 17.08. 13:04 | Exchange | authentisch | Duschwannen-Konzept A)/B)/C) + Devis-Block + Frist 17:00 |
| D | 17.08. 14:49 | Exchange | authentisch | technische Rueckfrage, 105 Min nach C, an denselben Empfaenger |
| F | 18.08. 07:55 | Exchange | authentisch | Nachfass ans Amt, drei Fragen + Wenn/Ansonsten |
| G | 18.08. 09:25 | Exchange | authentisch | Weiterleitung an Du-Kontakt, Vierzeiler |
| H | 18.08. 09:54 | Exchange | authentisch | Kontaktkoordinaten roh eingefuegt + gerahmte Doppelbitte |
| A | 18.08. 06:45:22 | Apple Mail | **claude-aera** | Hub-Entwurf Duschwannen, 5 Empfaenger, ungesendet |
| B | 18.08. 06:45:21 | Apple Mail | **claude-aera** | dieselbe Mail, 2 Empfaenger, ungesendet (Dublette) |

## Kernbefund 1 — dasselbe Thema, dieselbe Woche: Raphaels Hand gegen den Zwilling

C/D (Raphaels Hand, 17.08.) und A/B (Hub-Entwurf, 18.08. 06:45) gehoeren zum **selben Thread mit
demselben Empfaenger**. Damit ist der Kontrast nicht ueber Korpusmittel, sondern direkt lesbar:

| | Raphael (C/D) | Zwilling (A/B) |
|---|---|---|
| Struktur | Liste **A) B) C)** mit `list-style-type:"A) "` | Liste in Fliesstext aufgeloest |
| Frist | «**heute bis 17:00 Uhr**», mit Zweckbegruendung | «sagen Sie mir bitte, **bis wann**» |
| Masse | «70mm», «85mm», «5mm», «2cm» — **nie** Leerschlag | «70 **mm**» — **mit** Leerschlag |
| Fehlerdichte | dicht («folgende Konzept», «ausgeplaettlete», «waagrech», «Ich Bitte Sie») | null auf 158 Woerter |
| Bild/Metapher | keine | «das eigentliche **Nadeloehr**» |
| Ansage | «Ich Bitte Sie … freizugeben» | «Damit wir sauber weiterfahren, zwei Punkte:» |

**Die Richtung des Batch-97-Befunds dreht sich hier.** Dort baute der Zwilling Druck auf, wo
Raphael eine Bruecke baute (Terminbitte an einen Du-Partner). Hier ist es **umgekehrt**: Raphael
setzt gegenueber dem Fachplaner mit Bringschuld eine Frist auf die Stunde, der Zwilling fragt
hoeflich nach dem Termin. **Nicht der Zwilling ist generell fordernder oder weicher — er trifft
die Adressaten-Achse nicht:** Fachplaner in der Bringschuld bekommt die Frist, der Partner, den
man um einen Termin bittet, bekommt die Bruecke.

## Kernbefund 2 — «Geschaetzter» ist bei Raphael eine GEWICHTS-, keine Distanzstufe, und das gilt auch im Sie

Zwei unabhaengige, eng getaktete Belege im selben Fenster, beide im **Sie-Register**:

- **Derselbe Empfaenger, 105 Minuten:** «**Geschaetzter** Herr <Fachplaner>,» (C, 13:04, das
  ausgearbeitete Konzept mit Freigabe-Frist) → «**Sehr geehrter** Herr <Fachplaner>,» (D, 14:49,
  die schnelle technische Rueckfrage).
- **Derselbe Empfaenger, 27 Stunden:** «**Guten Tag** Herr <Werkplaner>» + Gruss «**Lgr**» (E,
  Einzeiler-Frage nach Lieferfristen) → «**Geschaetzter** Herr <Werkplaner>» + voller
  Signaturblock (H, Substanzmail mit Koordinaten und Terminbitte).

Das ist die Uebertragung der Anlassgewicht-Klausel aus `rules/anrede-kontakte.md` (Freigabe
29.07.2026) **vom Du- ins Sie-Register**, wo sie bisher unbelegt war. Reihenfolge nach Gewicht:
`Guten Tag <Name>` < `Sehr geehrter Herr <Name>` < `Geschaetzter Herr <Name>`. Bemerkenswert,
weil «Sehr geehrter» konventionell als die foermlichere Stufe gilt — bei Raphael ist
**«Geschaetzter» die Stufe fuer das gewichtige Anliegen**, registeruebergreifend.

Nebenbefund: er adressiert den Fachplaner durchgehend mit **«Herr <Vorname>»** statt mit dem
Nachnamen, in beiden Mails gleich. Keine Verschreibung, sondern konstant.

## Kernbefund 3 — der Hub erzeugt Entwurfs-DUBLETTEN, und beide bleiben liegen

A und B sind **wortgleich**, entstanden **eine Sekunde** auseinander (06:45:21 / 06:45:22) und
unterscheiden sich nur im Verteiler (2 gegen 5 Empfaenger) und in der HTML-Absatzbildung
(`<br/>` gegen `<p>`). Beide tragen `xapple-mail-urlsharewrapperclass`, sind also
`osascript`-Drafts des Hub; beide liegen zum Laufzeitpunkt (19.08. 04:00) **ungesendet** im
Postfach, rund 22 Stunden. Fuer den Twin-Harness sind sie Typ 1 der vierzehnten Falle
(Apple-Mail-Entwurf ohne Sent Item) und damit **Negativmaterial**, keine Stilquelle.

Der operative Teil gehoert nicht hierhin, aber die Dublette selbst ist ein Befund am Hub, nicht
am Zwilling: ein Erzeugungslauf hat zwei Drafts derselben Mail angelegt. [[QUESTIONS]] 260819 #2.

## Marker je Facette (destilliert, Quellen als Datum + Gewichtung)

Siehe die Eintraege in `wiki/stimme.md`, `wiki/beziehungsregister.md`, `wiki/denken.md`,
`wiki/haltung.md`, `wiki/fachsignatur.md`, `wiki/arbeitsweise.md` — je mit Datum, Kanal und
Gewichtung. 14 neue Marker, 1 Detektor-Kandidat, 3 Fragen.

## Mikro-Metrik

`stilmetrik.py`, Gold 368 W aus sechs Eigentexten (ohne Signaturbloecke, ohne den roh
eingefuegten Fremd-Kontaktblock und ohne den Devis-Produktblock), Zwilling 158 W aus dem
Entwurfspaar (nur einmal gezaehlt, A und B sind wortgleich):

| | Gold | Zwilling |
|---|---|---|
| Woerter | 368 | 158 |
| Du-Gross-Quote | — | — |
| Tausender-Apostroph | 0 | 0 |
| Ellipsen /1000 W | 0 | 0 |
| Satzlaenge ø | **17.5 W** | **19.8 W** |
| Anreden | «Geschaetzter Herr» 3× · «Sehr geehrter Herr» 1× · «Hoi <Name>» 1× | «Sehr geehrter Herr» 1× |
| Gruesse | «Lieber Gruss» 1× · **«Lgr» 1×** (vom Werkzeug nicht erkannt) | keiner im eigenen Teil |
| Masse ohne Leerschlag | **5 von 5** | **0 von 1** |

**Die Du-Gross-Quote ist in diesem Fenster nicht messbar** — der Korpus enthaelt ausser der
Anrede «Hoi <Name>» keine einzige Du-Form, das Fenster ist praktisch reines Sie. Die vom
Werkzeug ausgegebene 0.0 auf beiden Seiten ist ein Nenner-Artefakt und **kein Befund**.

**Neu belastbar auf der Gold-Seite: die Einheiten-Schreibweise.** Fuenf Zahl-Einheit-Paare in
Raphaels Hand, **alle ohne Leerschlag**; das eine Paar im Zwillingstext **mit** Leerschlag — und
es ist derselbe Wert (70 mm) im selben Vorgang. Nach Sperrlisten-Disziplin bleibt das ein
**Kandidat** (ein Beleg auf der Zwillingsseite reicht nicht), aber die Gold-Seite ist eindeutig.
Kein Widerspruch zur DNA-Regel «% mit Leerschlag» — die betrifft das Prozentzeichen.

**Satzlaenge:** Gold 17.5 W liegt am oberen Rand des Korpusbands 13.2–17.8 (Batch 92); der
Zwilling liegt mit 19.8 W **darueber**, anders als in den Batches 96/97, wo er kuerzer schrieb.
Weiterhin unbelastbar wegen der Fragment-Zaehlung ([[QUESTIONS]] 260814 #3).

**Werkzeug nachgezogen:** `stilmetrik.py` erkannte «Lgr» nicht als Gruss. In diesem Lauf
ergaenzt (GRUESSE-Liste), damit die Kurzform kuenftig mitgezaehlt wird.

## Naechstes Fenster

1. **Sequenziell `rj@` 19.–25.08.2026** — der 19.08. war zum Laufzeitpunkt (04:00) noch leer.
2. **Der Token-Sweep bleibt offen, aber nicht als Suche.** Er ist nur lesend moeglich und
   deshalb portionsweise zu fahren: je Batch die gelesenen Bodies ohnehin pruefen (ab jetzt
   Standard, in diesem Lauf erstmals durchgefuehrt) und zusaetzlich ein Rueckwaerts-Fenster ab
   **Mai 2026** in Tagesportionen abarbeiten. Ein Einmal-Sweep ueber den ganzen Bestand ist mit
   dem verfuegbaren Werkzeug nicht bezahlbar.
3. **`Drafts` bleibt ergiebig:** 112 Eintraege, davon rund 65 mit Drittempfaengern, gelesen sind
   9. Jedes Paar mit vorhandenem Sent Item liefert ein Korrektur-Delta.

**Vor der Lektuere zwingend BEIDE Teile von `_INGESTED.md` auswerten — Batch-Tabelle UND die
Gold-Verbrauch-Abschnitte der Fidelity-Laeufe.**
