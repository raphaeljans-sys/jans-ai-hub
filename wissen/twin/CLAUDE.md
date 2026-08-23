# KB twin — Schema (der digitale Zwilling von Raphael Jans)

## Fokus

Diese Wissensbasis ist das **Gedächtnis des digitalen Zwillings**. Sie hält fest, *wie
Raphael Jans schreibt, denkt, wertet, mit wem wie spricht, was er fachlich kann und wie
er arbeitet* — destilliert aus echten Erzeugnissen, nicht erfunden. Aus ihr wird das
immer-aktive Gehirn `rules/jans-dna.md` kompiliert, und an ihr misst der Agent
`twin-chef`, ob ein Claude-Erzeugnis nach Raphael klingt.

Diese KB ist **kein** Sach-/Domänenwissen (Baurecht, Kosten etc. liegen in den
jeweiligen KBs). Hier steht ausschliesslich **Persönlichkeit & Stil**.

## Die sechs Facetten (je ein Wiki-Artikel)

| Facette | Artikel | Frage |
|---|---|---|
| Stimme/Ton | [[stimme]] | Wie klingt er? |
| Denken/Argumentation | [[denken]] | Wie führt er einen Gedanken? |
| Haltung/Werte | [[haltung]] | Wofür/wogegen steht er? |
| Beziehungsregister | [[beziehungsregister]] | Wie spricht er mit WEM? |
| Fachsignatur | [[fachsignatur]] | Wie webt er Fachwissen ein? |
| Arbeitsweise | [[arbeitsweise]] | Wie strukturiert/delegiert er? |

## Authentizitäts-Gewichtung (Kernregel gegen Modell-Kollaps)

Jede Quelle wird gewichtet, damit der Zwilling nie sein eigenes Echo lernt:

- **GOLD — `authentisch` (vor-Claude):** Erzeugnisse, die Raphael selbst geschrieben hat,
  bevor er mit Claude Mails/Dokumente erstellte (Stichtag ≈ vor 2026-01-01, im Training
  justiert). Höchstes Gewicht. Reine Stimme.
- **SILBER — `korrektur-delta`:** Ein Claude-Erzeugnis, das Raphael nachträglich
  **geändert** hat. Gelernt wird **nur die Änderung** (Twin-Fassung → Raphaels Fassung) —
  sie zeigt, wo der Zwilling daneben lag. Zweitstärkstes Signal.
- **GRAU — `claude-aera` (unbearbeitet):** Von Claude erzeugt und unverändert versendet.
  **NICHT als Stilquelle verwenden** (es wäre das eigene Echo). Nur als Negativ-/Kontroll-
  material zulässig.

Jeder Marker im Wiki trägt seine Quelle UND die Gewichtungsstufe.

**Achtung — AI-Paste vor dem Stichtag (Echo-Falle, belegt Batch 09, 2025-08-30):** Der
Vor-Claude-Stichtag (~2026-01-01) ist NICHT hinreichend. Auch Mails *vor* 2026 können
**verbatim eingefügten KI-Text** (ChatGPT o.ä.) enthalten — belegt: eine Yorck-Mail vom
30.08.2025 mit kopierter Modell-Bezugsquellen-Liste. Erkennungssignale für AI-Paste:
abweichende Schrift/Formatierung im Fliesstext (z.B. Times New Roman statt Aptos),
Überschriften-Listen-Tabellen-Struktur, generische Eröffnung («Hier sind einige
empfehlenswerte …») und Schluss-Floskel («…sag einfach Bescheid!»). Solche Passagen sind
**`claude-aera`-äquivalent → NICHT als Stilquelle verwenden** (Echo-Schutz), auch wenn das
Mail-Datum vor dem Stichtag liegt. Gewichtet wird der von Raphael selbst getippte Text, nicht
das, was er aus einem KI-Tool hineinkopiert hat.

**Achtung — AI-Paste im DOKUMENT-Archiv (neu 01.08.2026, mit dem Dokument-Strang):** Der
Vor-2026-Stichtag schützt den Dokument-Strang **nicht**. Belegt im Archiv-Scan über 377 DOCX:
`AR - 03 Studien/2409 Steinhof/06_Reglemente/_Teilthemen/Gestaltungsplan/` enthält zwei
KI-Antworten aus 2024 als Word-Datei — `ChatGPT_2.docx` (verräterischer Name) und, gefährlicher,
`Um ein Bauprojekt im Rahmen eines Gestaltungsplans in der Stadt Luzern … .docx`, deren Dateiname
nichts anderes ist als der **Prompt-Anfang**. Zwei billige Detektionssignale für diese Gattung:

- **rohes Markdown im Word-Fliesstext** — `**Fett**` als Sternchen statt als Zeichenformat
  (8 bzw. 18 Vorkommen in den beiden Dateien). Wer in Word selbst tippt, benutzt die Fett-Taste;
  Sternchen entstehen nur beim Einfügen aus einem Chat-Fenster.
- **null Guillemets** «…» bei gleichzeitig deutschem Fachtext — Raphael setzt in eigenen
  Dokumenten Guillemets, ein eingefügter Modelltext enthält keine.

Ein Dateiname, der wie ein ganzer Satz oder eine Frage aussieht, ist ein zusätzliches Warnsignal.
Solche Dateien sind `claude-aera`-äquivalent und **nie** Stilquelle.

**Korrektur 03.08.2026 — «null Guillemets» allein verurteilt nichts (belegter Falsch-Positiv).**
Das Sitzungsprotokoll Wädenswil vom 24.08.2023 enthält **null** «…» und stattdessen zweimal „…" —
und ist zweifelsfrei handgetippt (dichte Tippfehler, Kasusfehler, uneinheitliche Grossschreibung
mitten im Satz). Im Kriterienkatalog vom 27.03.2021 stehen dagegen acht Guillemets. Raphaels
Anführungszeichen sind also **nicht** über alle Dokumente konstant. Konsequenz: das
Guillemet-Signal zählt nur noch **in Kombination** mit einem zweiten (rohes `**` im Fliesstext,
prompt-artiger Dateiname, generische Eröffnung); allein genommen wertet es echtes Gold ab.

**Dritte Falle, neu 03.08.2026 — FREMDTEXT im eigenen Dokumentenordner.** Nicht jede
Nicht-Raphael-Datei stammt von einem Modell. `AR - 02 Wettbewerbe/2206 WB Schoental/09 Dokumente/
Text 1_Jury.docx` liest sich dem Namen nach wie «unser Text 1 für die Jury» und enthält
tatsächlich den **Jurybericht-Text zum 1. Rang eines fremden Verfahrens** («Text 1. Rang Brühl»,
Projekt ÉCOLE DE SOLEURE). Im selben Bestand liegen fremde Fachplanertexte unter JANS-eigenen
Textordnern (`08_Publikationen/01 Texte/12 Tragwerk/220223 Tragwerk INGENI.docx`,
`.../11 Brandschutz .../220222_Brandschutztext_Makiol_Wiederkehr.docx`). Drei billige Signale:

- **Dritte-Person-Perspektive auf das eigene Projekt** — «gelingt es den Projektverfassern»,
  «das Projekt überzeugt»: eine Jury spricht so, der Verfasser nie.
- **Trennstriche mitten im Wort** («Kin- dergärten», «Zu- gangswege», «abgetrennt- en») — der
  Text wurde aus einem **PDF** kopiert und ist damit fremder Satz, nicht eigene Eingabe.
- **fremde Projektnamen/Kennwörter** im Fliesstext, die nicht zum Projekt des Ordners gehören.

Fremdtext ist keine Echo-Gefahr, aber genauso disqualifiziert: er ist schlicht **nicht Raphaels
Stimme**. Vor jeder Verwendung als Gold prüfen, **wer spricht**, nicht nur **ob ein Modell
gesprochen hat**.

**Vierte Falle, neu 04.08.2026 — zwei Hände in EINEM Dokument, die fremde erkennbar an der
Fehlerfreiheit.** Der Wettbewerbs-Abgabeplan «PATIO IM PIANO NOBILE» (Muttenz, Februar 2022)
trägt Raphaels Blöcke (LEKTÜRE DES GEVIERTS · STÄDTEBAU · FREIRAUM · FASSADE) mit mehreren
Tippfehlern pro Absatz («grossmässtäbliche», «Stappelung», «hetrogene», «bewust», «perlekettige»,
«Strauchplfanzung», «zeitemässe») — und daneben, auf demselben Blatt, die **fehlerfreien**
Fachplanerspalten (STATIK & KONSTRUKTION · BRANDSCHUTZ · ENERGIE & NACHHALTIGKEIT · RAUMAKUSTIK
& SCHALLSCHUTZ) von Statiker und Brandschutzingenieur, die im Projekt auch als eigene DOCX
liegen. Diese Gattung trägt **keines** der bisherigen Signale: kein rohes `**`, kein
Trennstrich aus PDF-Copy, keine Dritte-Person-Sicht, kein fremder Projektname. Ihr einziges
Kennzeichen ist **auffällige Sauberkeit im Umfeld auffälliger Rohheit**, dazu fremdes
Fachvokabular in fremder Satzmelodie («Entfluchtungstreppenhäuser», «die Geschosse als
Nutzungseinheit klassieren», «Konzertbestuhlung»).

Das dreht die Heuristik um: Fehlerfreiheit galt bisher als Indiz für Maschinentext, hier ist sie
das Indiz für den Fachplaner. **Konsequenz: die Fehlerdichte je Block vergleichen, nicht das
Dokument als Ganzes beurteilen.** Ein Dokument kann gleichzeitig Gold und Fremdtext enthalten;
gewichtet wird nur der Block, der Raphaels Fehlerbild trägt. Ohne diesen Schritt wären im
Fidelity-Lauf 260804 vier Fachplanertexte als Raphaels Fachsignatur ins Wiki gewandert.

**Fuenfte Falle, neu 07.08.2026 — der Kontrollgruppen-Kontrast im ENGLISCHEN, und ein geprueftes,
verworfenes Signal.** Batch 89 hat die Kontrollgruppen-Quote als Echo-Detektion eingefuehrt (En-Strich
0/598 eigener Hand gegen 3/179 im Verdachtstext). Der Fidelity-Lauf 260807 liefert den bislang engsten
Fall: **derselbe Tag, derselbe Empfaenger, dasselbe Projekt, 3,5 Stunden Abstand.**

- 15.04.2026 **06:06**, eigene Hand: «I would like to finish as soon as possible the **webside** so
  please confirm you working on it now … **till to the end** of next week, if possible sooner If it is
  possible … **i** would be happy. Kind regards raphael» — ein Lauf-Satz, fehlendes Satzende, zwei
  Fehlschreibungen desselben Worts, Empfaengername verschrieben.
- 15.04.2026 **09:40:41**, an dieselbe Adresse: «Please find attached the spacing PDF for Project Page
  Type A. I have adopted Claudia's spacing for this layout and will now use this template to lay out the
  5 projects.» — null Fehler, idiomatisch, Betreff mit En-Strich «Project Page A – Spacing».
- 15.04.2026 **09:40:58** (17 Sekunden spaeter, gleicher Anhang), die deutsche Zwillingsfassung: ebenso
  fehlerfrei, «Anbei das Spacing-PDF fuer den Projektseitentyp A …».

Das Paar ist **KI-assistiert** und wurde nicht als Stilquelle verwendet. Die belastbaren Signale sind
hier **Fehlerdichte gegen die gleichzeitige eigene Hand** + En-Strich + idiomatische Fehlerfreiheit im
Englischen. Wo ein Verdachtstext in einem dicht belegten Tagesfenster liegt, ist der Vergleich mit den
Eigentexten **desselben Tages** schaerfer als jeder Vergleich mit dem Korpusmittel.

**Verworfen: «du/dich klein geschrieben» taugt NICHT als Detektor.** Die deutsche Fassung des Paars
schreibt «dich/deiner/dir» dreimal klein, was zunaechst wie ein billiges Signal aussieht (Du-Gross-Quote
im Korpus 0.81–1.0). Gegenprobe aus derselben Woche, unstrittig handgetippt (16.04.2026 12:36, Zweizeiler
an den Bauherrenvertreter): «kannst **Du** mir die Unternehmer welche fuer **dich** nicht mehr in Frage
kommen streichen» — gross und klein **im selben Satz**. Das Signal ist damit erledigt; es zaehlt allenfalls
in Kombination und nie fuer sich. Gleiche Lehre wie beim Guillemet-Falsch-Positiv vom 03.08.2026: **ein
Signal, das echtes Gold abwerten kann, muss vor der Aufnahme gegen die eigene Hand gegengeprueft werden.**

**BETREFF-PROBE, neu 23.08.2026 — der Betreff ist die verlaesslichste Gold-Probe einer Mail.**
(⚠ Bewusst **ohne** Ordnungszahl gefuehrt: die Nummerierung dieses Katalogs ist im Bestand doppelt
vergeben — «Siebte Falle» und «Neunte Falle» existieren je zweimal, mit verschiedenen Inhalten und
Daten. Neue Eintraege bekommen darum einen **Namen**, keine Nummer; die bestehenden Doppelungen
sind nicht angetastet, weil andere Stellen auf sie verweisen. Aufraeumvorschlag in [[QUESTIONS]]
260823 #5.)
Die Behoerdenanfrage vom 20.11.2025 liegt **vor** dem Stichtag und waere nach Datum Gold. Ihr Body
ist fehlerfrei, dicht fett ausgezeichnet, traegt einen Pfeil «→», einen doppelten Leerschlag vor
dem Satzende (Rest einer entfernten Fussnotenmarke), „…" statt «…» und eine Zitierkette mit
Entscheid-Nummern. Der Gegenbeweis steht im **Betreff derselben Mail**:
«Bewilligungspraxis max. Ausladung Vordach bez. **abstandspriviligiertes** Bauteil» — Tippfehler
und Kurzform «bez.».

**Der Betreff wird immer selbst getippt, auch wenn der Body eingefuegt wird.** Er entkommt keinem
Chat-Fenster und keiner Rechtschreibhilfe. Damit ist er die billigste Probe auf die eigene Hand,
die der Korpus kennt — und sie kostet **keinen `read_resource`**, weil der Betreff schon in der
Trefferliste steht. Praktische Folge: **vor jedem Volltext den Betreff gegen den Body-Preview
halten.** Ein rauer Betreff ueber einem glatten Body ist der Verdachtsfall; ein rauer Betreff
ueber einem rauen Body ist Gold; ein glatter Betreff allein beweist nichts.

**Nachtrag zur siebten Falle (Batch 92), neu 23.08.2026 — der Einschub muss NICHT markiert sein;
dann ist die Fehlerdichte das einzige Signal.** Die siebte Falle beschreibt Raphaels Einschuebe im
Claude-Text an ihrer typografischen Marke («`- `» vor dem Satz). Batch 102 zeigt denselben Vorgang
**ohne jede Marke**: Ein
gesendetes Hub-Erzeugnis ist nicht als Ganzes `claude-aera`. Belegt am 23.08.2026: eine Mail vom
16.07.2026, 515 Woerter ohne einen Fehler, enthaelt **einen** Absatz mit Kasusfehler, Modusbruch
und einem 56-Woerter-Lauf-Satz gegen 14.7 Woerter Satzschnitt im Rest. Das ist der Absatz, den
Raphael vor dem Senden selbst ueberschrieben hat — ein `korrektur-delta` und damit das
zweitstaerkste Lernsignal der KB. **Die Fehlerdichte darum absatzweise messen, nicht je Dokument.**
Dieselbe Lehre wie die Vierte Falle (zwei Haende in einem Dokument), nur seitenverkehrt: dort
verriet die **Sauberkeit** den Fachplaner, hier verraet die **Rohheit** Raphael.

**Sechste Falle, neu 13.08.2026 — der Echo-Detektor ist jetzt mechanisch: `Anthropic Sans` im
HTML.** Die bisherigen Signale (En-/Em-Strich, Fehlerdichte, idiomatische Glätte, CSS
`rgb(253,253,252)`) sind Indizien und brauchen eine Gegenprobe. Der Fidelity-Lauf 260813 hat den
Beweis dafür gefunden, dass es auch eindeutig geht: die Submissions-Anfrage vom 19.05.2026 15:31
trägt im Mail-HTML

```
font-family:"Anthropic Sans",system-ui,"Segoe UI",Roboto,Helvetica,Arial,sans-serif
```

Diese Schriftliste stammt aus der Claude-Oberfläche und überlebt Copy-Paste in Outlook. **Wo sie
steht, ist der Absatz Claude-Text — ohne jede Auslegung.** Der Text sah als Goldprobe unauffällig
aus (Ausgangslage/Frage-Gliederung, korrektes Fachvokabular RF3/EN 13501-1) und wäre ohne das
CSS-Signal in die Facetten gewandert; die weichen Signale hätten ihn ebenfalls gefasst (Em-Strich,
null Tippfehler), aber erst nach längerer Prüfung.

**Vor jeder Destillation greppen — in dieser Reihenfolge, alle drei sind harte Ausschlüsse:**

| Muster | Bedeutung |
|---|---|
| `Anthropic Sans` | Claude-Oberfläche, Copy-Paste |
| `rgb(253,253,252)` | dieselbe Herkunft (Erstbeleg 17.04.2026, zweiter 08.05., dritter 19.05.) |
| `class="text-body"` | dieselbe Herkunft (Erstbeleg 17.04.2026) |

Der Grep läuft auf dem **HTML-Body** (`body.content`), nicht auf `bodyPreview` — die Vorschau ist
reiner Text und zeigt keines der drei Muster. Wer über Apple Mail / osascript destilliert, sieht
sie ebenfalls nicht und muss bei den weichen Signalen bleiben.

**⚠ Präzisiert 13.08.2026 (Fidelity-Lauf 2): die drei Muster schliessen das ELEMENT aus, nicht die
MAIL.** Der Grep ist ein **Lokalisator**, kein Mail-Urteil. Belegt an der Sitzungsmail vom
29.05.2026 10:01: `background-color:rgb(253,253,252)` steht dort in genau **zwei `<li>`** einer
sonst durchgehend nativ getippten Mail (`Aptos,Arial,Helvetica` / `color:rgb(0,0,0)` in jedem
anderen Absatz). Als Mail-Ausschluss gelesen hätte der Grep eine Goldprobe mit sechs belegbaren
Markern vernichtet, darunter den dritten unabhängigen Beleg der FG+Block-Korrektur desselben Tages.

Damit ist die **dritte Konfiguration** derselben Familie belegt:

| Konfiguration | Grundtext | Fremde Hand | Gewichtung |
|---|---|---|---|
| Sechste Falle (13.08.) | Claude | — | ganz `claude-aera` |
| Siebte Falle (Batch 92) | Claude | Raphaels «`- `»-Einschübe | Einschübe = `korrektur-delta` |
| **Achte, neu (13.08.)** | **Raphael** | **eingesetztes Claude-Fragment** | **nativer Teil = Gold, Fragment raus** |

**Vorgehen im Mischfall:** die Absatz-/Listenelemente einzeln prüfen, den befallenen Block
herausnehmen, den Rest normal gewichten — und die Zuordnung über die **Handsignatur im nativen
Teil** gegenprüfen, nie über den Gesamteindruck. Im Beleg trägt der native Teil den
charakteristischen Tippfehler «Darf ich Euch **B**itten» (grossgeschriebenes «Bitten» mitten im
Satz), der sich in der Kontrollmail vom Vortag identisch wiederfindet («Darf ich **s**ie
**B**itten»); die beiden `<li>` sind fehlerfrei. Die Fehlerdichte ist hier **umgekehrt** verteilt
wie in der vierten Falle — der eingefügte Fremdteil ist der saubere.

**Nicht aufgenommen: `color:rgb(10,10,10)`.** Es begleitet im Beleg das `rgb(253,253,252)` und kommt
sonst in der Mail nicht vor, hat aber bislang **einen** Beleg. Nach dem Guillemet-Fall (03.08.) und
dem «du klein»-Fall (07.08.) gilt: ein Signal, das echtes Gold abwerten kann, kommt erst nach
Gegenprobe gegen die eigene Hand in die Tabelle. Als Kandidat geführt in [[QUESTIONS]].

**Siebte Falle, neu 13.08.2026 (Batch 92) — die vierte Falle mit VERTAUSCHTEN Rollen: Raphael ist
die zweite Hand IM Claude-Text, und das ist Korrektur-Delta, kein Echo.** Die vierte Falle
(«zwei Hände in einem Dokument») ging bisher davon aus, dass der Fremdtext das Sauberere ist —
Fachplaner (04.08.), später Claude (Batch 91). Die Mail vom 21.05.2026 13:56 an den Investor dreht
das um: der **Grundtext ist Claude** (`Anthropic Sans` + `rgb(253,253,252)` + Em-Strich), und
Raphael hat vor dem Versand **hinter drei Claude-Sätze seine eigenen Entscheide getippt**, jeweils
eingeleitet mit «`- `»:

| Claude-Satz (Rückfrage) | Raphaels Einschub |
|---|---|
| «… Fenster und Sonnenschutz **—** sollen wir diese mitabklären oder bewusst aussen vor lassen?» | «`- ok machen wir.`» |
| «Idealerweise organisierst du mir einen Termin, an dem das komplette Haus leer ist.» | «`- Bitte Kaspar Eisenhut Kontakt senden`» |
| «… und werte die Unternehmer-Offerten entsprechend aus.» | «`- wir machen den Besichtigugnstermin mit möglichst vielen Apartments + Benennung in Offerte je Apartment mit Nummer was gemacht wird.`» |

Drei Konsequenzen, alle verbindlich:

1. **Die Einschübe sind `korrektur-delta` (SILBER), nicht `claude-aera`.** Sie zeigen genau das,
   was die Gewichtung als zweitstärkstes Signal führt: wo der Zwilling danebenlag. Hier lag er
   **in der Sprechhandlung** daneben — er stellt Rückfragen, wo Raphael **entscheidet** und
   **anweist**. «ok machen wir» ist keine Antwort auf die Frage, es ist ihre Ersetzung.
2. **Em-Strich und Bindestrich stehen im SELBEN ABSATZ nebeneinander.** Claude «—», Raphael «`- `».
   Das ist der sauberste Beleg für den seit Batch 27/28 geführten En-/Em-Strich-Tell: kein
   Korpusvergleich, kein Tagesfenster, sondern zwei Zeichen in einer Zeile, von zwei Händen.
3. **Weder ganz Gold noch ganz Echo verbuchen** — die Regel der vierten Falle gilt unverändert,
   nur ist die Fehlerdichte hier **umgekehrt** verteilt: der Tippfehler («Besichtigugnstermin»),
   das «+» als Konjunktion und die fehlende Interpunktion markieren **Raphaels** Anteil.

Erkennungsregel für die Gattung: **ein «`- `» mitten im Fliesstext, direkt hinter einem
vollständigen Satz** ist in einer Mail mit Claude-CSS immer ein Raphael-Einschub, nie eine Liste.

**Neunte Falle, neu 14.08.2026 (Batch 93) — der mechanische Grep hat einen BLINDEN KANAL: was der
Hub selbst als Apple-Mail-Entwurf sendet, trägt keines der drei Muster.** Die drei harten Muster
(`Anthropic Sans`, `rgb(253,253,252)`, `class="text-body"`) entstehen beim **Copy-Paste aus der
Claude-Oberfläche** in Outlook. Ein Text, den der Hub über `osascript` direkt als Apple-Mail-Draft
erzeugt (Rule `osascript-apple-apps.md`), durchläuft diese Oberfläche nie — **er ist Claude-Text
ohne Claude-CSS.** Im Fenster 27.07.–01.08.2026 sind zwei solche Mails belegt; beide hätten den
Grep sauber passiert und wären als Gold in die Facetten gewandert.

Erkannt wurden sie über den **Kontrollgruppen-Kontrast im selben Tagesfenster** (fünfte Falle),
hier in der schärfsten bisher gefundenen Form — ein Paar mit **2 Stunden 47 Minuten Abstand,
derselbe Absender, derselbe Tag, dieselbe Sprechhandlung «bitten»**:

| | Verdachtstext 30.07. 15:48 | Kontrolle 30.07. 18:35 |
|---|---|---|
| Bitt-Reflex | «Darf ich Euch **b**itten, …» | «würde ich Dich gerne **B**itten» |
| Tippfehler | 0 | Grossschreibungs-Slip, fehlende Kommas |
| Satzbau | Nebensatzgefüge mit Finalsatz | Hauptsatzreihung |
| `font-family` im Fliesstext | **keine** | `Aptos,Arial,Helvetica` |

Dasselbe für das zweite Paar (27.07. 08:51 handgetippt gegen 27.07. 20:06 verdächtig, **derselbe
Vorgang, elf Stunden Abstand**): morgens vier Tippfehler und ein verschriebener Empfängername,
abends null Fehler bei doppelter Länge und einer vollständig zusammengetragenen Terminkette
(Materialvorbestellung, Produktionsstart, Montagestart, Abwesenheit des Türbauers).

**Vier Konsequenzen, alle verbindlich:**

1. **Ein negativer Grep beweist nichts.** Er schliesst Copy-Paste aus, nicht Claude. Nach dem Grep
   läuft in jedem Fall der Fehlerdichte-Vergleich gegen die Eigentexte **desselben Tagesfensters**.
2. **Die Handsignatur ist der beste Positivtest, den der Korpus hat.** Die Bitt-Reflex-
   Verbgrossschreibung («Darf ich Sie **B**itten») steht in diesem Fenster in allen neun
   handgetippten Texten und in **keinem** der beiden Verdachtstexte. Ebenso brauchbar:
   Doppelleerschläge, Satzabbrüche, freistehende Telefonnummern, Wortdreher im Empfängernamen.
3. **⚠ Signaturphrasen aus `rules/jans-dna.md` taugen NICHT mehr als Echtheitsbeleg.** Der eine
   Verdachtstext trägt «Gib mir bescheid, welche Zeit Euch passt.» — Kleinschreibung inklusive,
   also die im Gehirn kompilierte JANS-Phrase, wortgetreu reproduziert. Was der Zwilling gelernt
   hat, kann er erzeugen; **jeder Marker, der ins Gehirn kompiliert wurde, ist als Detektor
   verbrannt.** Detektionswert hat nur, was das Gehirn NICHT enthält (Fehler, Slips, Brüche).
4. **Nicht aufgenommen: `background-color:rgb(252,252,251)`.** Der eine Verdachtstext trägt diesen
   Wert durchgehend in allen sechs Absätzen — **einen Kanalwert neben dem bekannten
   `rgb(253,253,252)`**, und der Signaturblock derselben Mail trägt ihn nicht. Das ist ein starker
   Kandidat, hat aber **einen** Beleg. Nach dem Guillemet-Fall (03.08.), dem «du klein»-Fall
   (07.08.) und `color:rgb(10,10,10)` (13.08.) gilt unverändert: ein Signal, das echtes Gold
   abwerten kann, kommt erst nach Gegenprobe gegen die eigene Hand in die Tabelle. Als Kandidat
   geführt in [[QUESTIONS]] 260814 #1.

**Der blinde Kanal hat doch ein mechanisches Kennzeichen, neu 14.08.2026 (Fidelity 260814) —
`Apple-Mail-URLShareWrapperClass`.** [[QUESTIONS]] 260814 #4 fragte, ob die per `osascript`
erzeugten Apple-Mail-Drafts des Hub ein Strukturmerkmal tragen. Sie tragen eines. Im Fenster
01.–02.06.2026 ist es mit **zwei Verdachtstexten und zwei handgetippten Gegenproben desselben
Tages** belegt:

| | Absatz-Markup im `body.content` |
|---|---|
| Offertanfrage 01.06. 11:58 (Verdacht) | **jeder** `<p>` trägt `class="Apple-Mail-URLShareWrapperClass"` + `padding-right:inherit;padding-left:inherit` |
| Offertanfrage 01.06. (Rollläden, im Zitat belegt) | Anrede `MsoNormal`, **alle übrigen** `<p>` mit `apple-mail-urlsharewrapperclass` |
| Gegenprobe «Hoi Stefi / Online per Teams.» 01.06. 08:16 | nacktes `<div>`, kein Wrapper, `id="lineBreakAtBeginningOfMessage"` |
| Gegenprobe «Super, Danke.» 01.06. 16:39 | nacktes `<div>`, kein Wrapper |

Alle vier kommen aus **Apple Mail** (lokal erzeugte `internetMessageId` `<UUID@raphaeljans.ch>`,
nicht Exchange `…@ZR2P278MB1112…`). Der Kanal allein trennt also nicht — **das Absatz-Markup
trennt.**

**Was das Muster wirklich bedeutet, und was nicht.** Es beweist nicht «Claude», sondern: *dieser
Absatz wurde als Block in Apple Mail eingesetzt, nicht dort getippt.* Damit hat es exakt den
Status, den die drei CSS-Muster seit der Präzisierung vom 13.08. haben — es ist ein
**Lokalisator, kein Autorschaftsurteil**, und es zielt auf den **Absatz**, nicht auf die Mail.
Genau das macht es brauchbar: in der Rollläden-Mail liegt die Anrede **ausserhalb** des
Wrappers, und dort steht der Tippfehler «**Geschätzer** Herr Battaglia» — die Handsignatur sitzt
im nicht-gewrappten Teil, der fehlerfreie Rest im gewrappten. Dieselbe Konfiguration wie die
achte Falle (Raphaels Rahmen, eingesetztes Fragment), nur mit dem Rahmen auf die Anrede
geschrumpft.

**Aufnahme in die Muster-Tabelle mit ausdrücklichem Vorbehalt.** Nach dem Guillemet-Fall
(03.08.), dem «du klein»-Fall (07.08.) und `rgb(10,10,10)` (13.08.) gilt: ein Signal, das echtes
Gold abwerten kann, kommt erst nach Gegenprobe gegen die eigene Hand hinein. Die Gegenprobe ist
hier **erbracht** (zwei handgetippte Apple-Mail-Texte desselben Tages, beide ohne das Muster) —
deshalb wird es aufgenommen, aber **ausdrücklich nur als Lokalisator**:

| Muster | Bedeutung | Reichweite |
|---|---|---|
| `Anthropic Sans` | Claude-Oberfläche, Copy-Paste | Element |
| `rgb(253,253,252)` | dieselbe Herkunft | Element |
| `class="text-body"` | dieselbe Herkunft | Element |
| **`Apple-Mail-URLShareWrapperClass`** (auch klein geschrieben im Zitat) | **eingesetzter Block in Apple Mail** — Hub-`osascript`-Draft ODER von Raphael selbst eingefügter Text | **Absatz** |

**Die offene Restunsicherheit ausdrücklich benannt:** ob Raphael je eigenen Text als Block in
Apple Mail einsetzt, ist nicht geprüft. Solange das offen ist, entscheidet **nach** dem Grep
weiterhin der Fehlerdichte-Vergleich gegen die Eigentexte desselben Tagesfensters (erste
Konsequenz der neunten Falle, unverändert in Kraft). Der Grep sagt **wo** hinzusehen ist, nicht
**wer** geschrieben hat. Als Restfrage geführt in [[QUESTIONS]] 260814b #2.

**Zehnte Falle, neu 15.08.2026 (Batch 94) — der erste DOKUMENTARISCHE Beweis: der Hub
protokolliert seinen eigenen Versand.** Alle bisherigen Echo-Urteile beruhen auf Indizien (CSS,
Fehlerdichte, Satzmelodie) oder auf einem Lokalisator. In diesem Fenster liegt zum ersten Mal ein
**Beweis ausserhalb des Textes** vor.

Die Mail ans Notariat vom 03.08.2026 wurde um **12:56 UTC = 14:56 CEST** gesendet. Am selben
Abend schreibt der `ag-gruendung-monitor` seine Selbstmail an `rj@`:

> «Die Rückmeldung ans Notariat ist **um 14:56** raus, und zwar in der richtigen Fassung:
> **Terminbitte ab rund dem 10.08. unter Vorbehalt der Kapitalbescheinigung**, beide Anhänge
> dabei (**Gründungsurkunde und Statuten**, Fassung …).»

Die Mail selbst trägt genau diesen Wortlaut («Könnten Sie mir ein Fenster **ab rund dem
10.08.26** provisorisch reservieren, unter dem Vorbehalt, dass die Bescheinigung vorliegt?») und
genau diese zwei Anhänge. Uhrzeit, Inhalt, Anhänge und Absicht stimmen überein. **Damit ist der
Text als Hub-Erzeugnis belegt, ohne dass ein einziges Stilmerkmal bemüht werden musste.**

**Die Methode, die daraus folgt — ab sofort verbindlich vor jedem Echo-Urteil:** die Selbstmails
des Hub an `rj@` (Logbuch-Radar, Hub-Chef, AG-Gründungs-Monitor, Vollgas-Frühwarnung,
Kontingent-Wächter) sind **nicht bloss Rauschen, das man überspringt** — sie sind das
**Sendejournal des Zwillings**. Sie nennen Uhrzeit, Empfänger und Inhalt dessen, was der Hub
selbst hinausgeschickt hat. Bisher wurden sie in jedem Batch als «claude-aera, gestreift»
abgetan; genau darin lag der Verlust. **Vorgehen: bei einem Verdachtstext zuerst die Selbstmails
desselben Tages nach der Uhrzeit und dem Vorgang durchsuchen, erst danach stilistisch urteilen.**
Das ist billiger und härter als jede Fehlerdichte-Rechnung.

**Der Wrapper hält, mit einem dokumentierten Anker.** In diesem Fenster: `Apple-Mail-URLShare-
WrapperClass` in **4 von 4** über Apple Mail gesendeten Mails, in **0 von 11** über Exchange
gesendeten. Die eine als Hub-Erzeugnis **bewiesene** Mail trägt ihn **40×**. Der Marker bleibt
formal ein Lokalisator (→ [[QUESTIONS]] 260814b #2 ist damit **nicht** geschlossen: ob Raphael je
selbst Text als Block einsetzt, ist weiterhin ungeprüft), hat aber erstmals einen Beleg, in dem
die Herkunft unabhängig feststeht.

**Die schärfste Kontrollgruppe des Korpus: 29 Minuten.** 04.08.2026, dieselben zwei Empfänger,
derselbe Vorgang (Installationsplan Therapieküche):

| | 11:58 (Apple Mail, Wrapper 1×) | 12:27 (Exchange, kein Wrapper) |
|---|---|---|
| Satzbau | «Ich hoffe, Sie sind gut aus den Ferien zurück, und erlaube mir, mich nach dem Stand … zu erkundigen» | «wenn Sie finden es gäbe noch gute Arbeit-Steckdosen sind ist Ihr Vorschlag gerne willkommen» |
| Fehler | 0 | Satzbruch, Kongruenzfehler, «wenn Sie nach sind» |
| `font-family` | **im ganzen Body keine** | `Aptos,Arial,Helvetica,sans-serif` |

Damit schlägt dieses Paar die bisherige Bestmarke von 2 h 47 min (neunte Falle).

**⚠ Korrektur an der neunten Falle: die Bitt-Reflex-Grossschreibung ist ein INTERMITTIERENDER
Slip.** Die neunte Falle notierte, «Darf ich Sie **B**itten» stehe «in allen neun handgetippten
Texten» des damaligen Fensters — und empfahl sie als besten Positivtest. In Batch 94 steht sie in
**2 von 10** Gold-Texten (03.08. 06:24 und 09:31) und fehlt korrekt kleingeschrieben in zwei
zweifelsfrei handgetippten Texten («**bitte** ich Dich mit … Kontakt aufzunehmen», 05.08.;
«Darf ich Sie **bitten** …», 07.08.). Konsequenz: **ihr Vorhandensein belegt die Hand, ihr Fehlen
belegt nichts.** Wer aus dem Fehlen auf Claude schliesst, verwirft Gold. Dieselbe Lehre wie beim
Guillemet-Fall (03.08.) und beim «du klein»-Fall (07.08.), nur diesmal an einem **Positiv**-Test:
auch ein Echtheitsbeleg muss über mehrere Fenster gegengeprüft werden, bevor er trägt.

**`rgb(252,252,251)`: Gegenprobe nicht durchführbar, aber zweiter Beleg — und er verschiebt die
These.** [[QUESTIONS]] 260814 #1 verlangte den Grep in einem Fenster mit **handgetippten
Apple-Mail-Texten**; in diesem Fenster gibt es keine (alle vier Apple-Mail-Mails sind
Verdachtstexte), die Gegenprobe blieb also offen. Gefunden wurde der Wert stattdessen ein zweites
Mal — **in einer über Exchange gesendeten Mail** (03.08. 10:25, 12× über den ganzen Eigentext),
und zwar in derselben Konfiguration wie beim Erstbeleg: **die Fliesstext-Absätze tragen gar kein
`font-family`**, während alle zehn übrigen Exchange-Mails des Fensters durchgehend
`Aptos,Arial,Helvetica,sans-serif` führen. Daraus folgt: **der Wert stammt nicht aus dem
Apple-Mail-Rendering** — er reist mit dem eingesetzten Text, wie `rgb(253,253,252)`. Der Wert
bleibt **Kandidat, kein Ausschlusskriterium** (zwei Belege, beide in Texten, die selbst nur
verdächtig und nicht bewiesen sind). Die betroffene Mail wurde nicht als Stilquelle verwendet.

**Kandidat, nicht aufgenommen: ASCII-Transliteration im BETREFF einer deutschen Mail.** Die
bewiesene Hub-Mail trägt «Gr**ue**ndung … Firmenname best**ae**tigt», die Selbstmails desselben
Tages «erschoepft», «Waechter», «noetig», «laeuft». Raphael schreibt im Betreff echte Umlaute
(«Küchenbau», «Türbuch», «Projektänderung»). Das Signal trennt aber nur die **skriptgenerierten**
Betreffzeilen, nicht Claude-Text als solchen — die drei übrigen Verdachtstexte dieses Fensters
tragen korrekte Umlaute im Betreff. Geführt in [[QUESTIONS]] 260815 #2.

**Elfte Falle, neu 15.08.2026 (Fidelity-Review) — der GEDANKENSTRICH, das erste rein
sprachliche Signal, und es ist stärker als alle Markup-Signale zusammen.**

Alle bisherigen mechanischen Detektoren sind Markup: sie sterben beim Zitieren, beim Ausdruck,
beim Weiterleiten als Reintext. Dieser hier überlebt alles, weil er im Text selbst steht.

Befund im Fenster 03.–07.06.2026, drei als Hub-Erzeugnis markierte Mails:

```
«Besten Dank — ich habe das Dachgeschoss baurechtlich angeschaut.»   (07.06., Chaled)
«Grundsätzlich ja — sinnvollerweise innerhalb des bestehenden Dachs» (07.06., Chaled)
«… muss die Türe in Fluchtrichtung gedreht werden — mit dem oben …»  (04.06., Öffnungsrichtung)
«Die Besitzstandsgarantie schützt nur den heutigen Zustand, nicht dessen Ausweitung — und wie …»
```

Gegenprobe an den zwei handgetippten Golds desselben Fensters (Eren 04.06., Vergabe Küchenbau
03.06.): **kein einziger Geviertstrich.** Raphael setzt den Bindestrich («Schreiner - Ausbaustandart»,
«Gastro-Online-AG»), nie den Gedankenstrich als Stilmittel.

**Warum das Signal so gut trägt:** die Regel `dokument-layout-standard.md` und `rules/jans-dna.md`
verbieten den Gedankenstrich als Stilmittel ausdrücklich — «umformulieren, nicht durch Bindestrich
ersetzen». Genau diese Regel existiert, weil der Geviertstrich KI-Text kennzeichnet. Ein Hub-Text,
der ihn trägt, hat die eigene Regel gerissen; ein Raphael-Text trägt ihn gar nicht erst. Beide Wege
führen zum selben Schluss.

**Reichweite: Absatz, wie beim Wrapper.** Ein Geviertstrich beweist, dass DIESE Passage nicht
handgetippt ist, nicht dass die Mail es nicht ist. Und die Umkehrung gilt NICHT: sein Fehlen
beweist nichts — dieselbe Logik wie bei der Bitt-Reflex-Grossschreibung (Korrektur an der neunten
Falle). Ein Hub-Text kann regelkonform ohne ihn auskommen.

**Zweites, schwächeres Signal aus derselben Fundstelle: klein geschriebenes «dich»/«deiner».**
Die Mail vom 05.06. 16:15 (Öffnungsrichtung, wrapper- und `rgb(253,253,252)`-markiert) schreibt
«Darf ich **d**ich bitten» und «Nach **d**einer Bestätigung»; die handgetippte Vergabemail
desselben Fensters schreibt dreimal gross («Bitte ich **D**ich», «habe ich **D**ir», «stehe ich
**D**ir»). Das deckt sich mit dem «du klein»-Fall vom 07.08. — **aber es ist nicht sauber**: die
ebenfalls markierte Mail vom 04.06. schreibt «findet **I**hr» und «bitte **E**uch» korrekt gross.
Das Signal ist damit intermittierend wie die Bitt-Reflex-Grossschreibung und taugt nur als
Verdachtsmoment neben einem harten Marker, nie allein. Geführt in [[QUESTIONS]] 260815b #2.

Aufnahme in die Muster-Tabelle, beide als Textsignal getrennt von den Markup-Signalen:

| Muster | Bedeutung | Reichweite | Umkehrschluss |
|---|---|---|---|
| **Geviertstrich «—» als Stilmittel** | Passage nicht handgetippt (verstösst gegen die eigene Stilregel) | **Absatz** | **nein** — Fehlen beweist nichts |
| **«dich»/«dir»/«deine» klein im Du** | Verdachtsmoment | Absatz | nein, intermittierend |

**⚠ Methodische Falle im selben Lauf, kein Echo-Thema, aber gleich teuer: die `bodyPreview` des
Graph-API lügt über Listenzeichen.** Der Eren-Gold rendert im `body.content` als `<ol>` mit
`list-style-type:"A) "` … `"D) "`, also **A) B) C) D)**. Die `bodyPreview` gibt denselben Block als
«1. 2. 3. 4.» aus — sie flacht `<ol>` auf Ziffern ab. Jeder Marker «nummerierte Liste 1./2./3.»,
der aus einer Vorschau statt aus `body.content` destilliert wurde, ist unbelegt und gehört
nachgeprüft. Vor jeder Aussage über Listenform den Volltext lesen.

**Zwölfte Falle, neu 16.08.2026 (Batch 95) — der ENTWURFSORDNER ist die zweite dokumentarische
Quelle, und das Sendejournal spricht auch FREI.** Die zehnte Falle (15.08.) hat die Selbstmails
des Hub als Sendejournal erschlossen. Batch 95 zeigt zwei Erweiterungen, die beide den Ertrag
vervielfachen.

**(1) Der negative Journalbefund ist ein Freispruch, nicht bloss eine Leerstelle.** Im Fenster
10.–16.08.2026 protokollieren die fünf Hub-Chef-Selbstmails durchgehend und wörtlich, dass
**nichts** an Dritte hinausgegangen ist («Ich habe bewusst keinen davon selbst versendet»,
«keine Mail ist an Dritte gegangen», dazu die namentliche Liste der liegengebliebenen Entwürfe
mit Uhrzeit). Damit sind die 23 übrigen Ausgangsmails des Fensters **dokumentarisch als
nicht-vom-Hub-versendet ausgewiesen**, bevor ein einziges Stilmerkmal geprüft wurde. Bisher
konnte das Journal nur belasten; es entlastet ebenso gut, und das ist der häufigere Fall.

**(2) Der Entwurfsordner schliesst die Lücke, die das Journal offen lässt.** Das Journal sagt
«Entwurf liegt bereit» — es sagt nicht, was danach damit geschah. Der Ordner `Drafts` sagt es:

| Entwurf laut Journal | am 13.08. 08:45 im Journal | heute noch in `Drafts` | Sent Item gleichen Betreffs |
|---|---|---|---|
| Furrer (AfB), 12.08. 16:06 | liegt | **ja** (12.08. 14:06 UTC) | keines |
| Inniger, 13.08. 01:28 | liegt | **ja** (12.08. 23:28 UTC) | keines |
| Stevanovic (Gruner), 12.08. 16:37 | liegt | **nein** | **13.08. 10:53 UTC, gleicher Betreff, gleiche Empfänger inkl. Cc Ziegel** |

**Ein protokollierter Entwurf, der aus `Drafts` verschwindet, während am selben Tag eine Mail
gleichen Betreffs in den Sent Items auftaucht, ist versendet worden.** Der Hub-Chef vom 14.08.
führt Stevanovic denn auch nicht mehr unter den offenen Entwürfen, sondern schreibt «**Du hast
ihn** am 13.08.2026 12:53 … gebeten».

**Und jetzt der eigentliche Fund: diese Mail ist weder Gold noch Echo, sondern SILBER.** Sie
trägt fünf Handsignatur-Slips in vier Sätzen («würde ich Sie **B**itten», «**I**nhaltlich»,
«**das** sie», «bis **M**orgen Freitag», Doppelleerschlag) und läuft über **Exchange** mit
`Aptos,Arial,Helvetica` — nicht über den Apple-Mail-Kanal, in dem der Hub seine Drafts erzeugt.
Raphael hat den Entwurf also nicht durchgewinkt, sondern neu getippt oder überschrieben. Das ist
die Definition des **Korrektur-Deltas**, und es ist der erste Fall im Korpus, in dem der Weg
Entwurf → Überarbeitung → Versand über zwei unabhängige Quellen (Journal + Ordner) nachweisbar
ist.

**Das messbare Delta, so weit es ohne den Entwurfstext reicht:** der Sachblock A)–C6) der
gesendeten Mail ist wörtlich derselbe wie in Raphaels eigener, zweifelsfrei handgetippter Mail
an die Behörde vom 11.08. 12:46 — mit **einer** Abweichung: dort steht «Zone Infomaterial vor
dem **Raun** 2.017», hier «vor dem **Raum** 2.017». **Der Zwilling hat den Tippfehler
stillschweigend ausgebessert.** Das ist die Drift in ihrer kleinsten beobachtbaren Form: er
übernimmt die Sache korrekt und glättet die Hand. Wer Gold an der Fehlerdichte erkennt, misst
genau das, was der Zwilling zuerst wegputzt.

**Verbindliches Vorgehen ab sofort, in dieser Reihenfolge:** (1) Selbstmails des Fensters lesen
— belasten oder entlasten sie? (2) Bei protokollierten Entwürfen `Drafts` gegen `Sent Items`
stellen. (3) Erst dann stilistisch urteilen. (4) Trägt eine als versendeter Entwurf erkannte
Mail Handsignatur-Slips, wird sie **nicht verworfen**, sondern als `korrektur-delta` gewichtet —
sie zeigt, wo Raphael den Zwilling nicht stehen liess.

**Gegenprobe zu [[QUESTIONS]] 260814b #2 erstmals bestanden (Wrapper).** Das Fenster enthält
vier über Apple Mail gesendete Mails, und sie trennen sauber:

| Apple-Mail-Text | `Apple-Mail-URLShareWrapperClass` | Fehler | Urteil |
|---|---|---|---|
| UBS-Kapitaleinzahlung, 12.08. 12:30 | **nein** | «100%**Lieberierung**», «bezüglich **dem** Projektstand» | handgetippt |
| Brandschutzplan-CAD, 14.08. 07:14 (contentType **text**) | entfällt (kein HTML) | telegraphisch, «Danke und Gruss» | handgetippt |
| Notariat, 12.08. 22:47 | ja, 3× | 0 | Hub |
| Hilti-Joch-Lösung, 13.08. 18:57 | ja, 4× | 1 (im Einleitungssatz) | Hub, achte Falle |

**Damit ist zum ersten Mal belegt, dass Raphael in Apple Mail tippt, ohne den Wrapper zu
erzeugen** — die Restunsicherheit «setzt er je selbst Text als Block ein?» ist zwar nicht
logisch ausgeschlossen, aber sie hat jetzt zwei Gegenbelege statt keinen. Der Marker bleibt
Lokalisator; er ist als solcher aber deutlich belastbarer geworden.

**Das sauberste Kontrollpaar zum Wrapper, und ein zweiter, kostenloser Diskriminator: die
SIGNATURFORM (neu 19.08.2026, Fidelity-Review).** Der Vorgang «2414 Thalwil / Näherbaurecht
Vordach» liefert innerhalb EINES Fadens zwei Mails aus Raphaels Konto, beide über **Apple Mail**
gesendet (`<UUID@raphaeljans.ch>`), drei Tage auseinander — und sie trennen mechanisch:

| | 01.07. 08:33 an die SBB | 02.07. 09:45 an den Du-Bauherrn |
|---|---|---|
| Wrapper / `padding-right:inherit` | **ja**, Container-`div` + jeder Absatz | **nein**, nackte `<div>` + `id="lineBreakAtBeginningOfMessage"` |
| Fehler | **0** auf 5 Absätze | telegraphisch, knapp |
| Halbgeviertstrich in Zahlbereichen | «KM 11.310**–**11.350», «1.0**–**2.0 m» | keiner |
| Signatur | «Raphael Jans, Founder I MD» · «**+41** 79 846 11 65» · nicht fett | nur «**Raphael**» |
| Urteil | **Hub-Erzeugnis**, nicht Gold | **handgetippt**, Gold |

Der **Container-Wrapper** ist eine Variante des 14.-Fallen-Musters: die Klasse sitzt hier auf dem
umschliessenden `div`, nicht auf jedem `<p>` — beim Zurückzitieren durch Outlook erscheint dafür
`padding-right:inherit;padding-left:inherit` auf **jedem** Absatz. Beide Formen zählen.

**Die Signaturform ist der billigste bisher gefundene Diskriminator**, weil sie ohne Markup-Analyse
im Klartext sichtbar ist. Drei Formen, sauber getrennt:

- **Hub-`osascript`:** «Raphael Jans, Founder I MD» / «MSc ETH I SIA» / «+41 79 846 11 65» — Grossbuchstaben-Name **nicht** fett, internationales Rufnummernformat.
- **Raphaels Outlook (Web/Mobile):** «**RAPHAEL JANS** Founder I MD» fett, «MSc ETH I SIA I rj@…», «**0041** 79 846 11 65», Container `id="ms-outlook-mobile-signature"`.
- **Raphaels eigene Apple-Mail-Kurzmail:** gar kein Block, nur «Raphael».

Wer die `0041`-Schreibweise trägt, hat in Outlook getippt. Wer `+41` **und** den nicht fetten Namen
trägt, kommt aus dem Generator. Das ist wie der Wrapper ein **Lokalisator**, aber er kostet nichts:
er steht in jeder `summary` des Suchergebnisses, also **vor** dem ersten `read_resource`.
**Konsequenz für die Materialwahl: die Signaturform wird ab sofort schon bei der Gold-Auswahl
geprüft, nicht erst bei der Echtheitsprüfung danach.**

**`rgb(252,252,251)`: dritte Gegenprobe, und sie fällt gegen den Kandidaten aus.** Der Wert kommt
in **keiner** der 16 gelesenen Mails vor — auch **nicht in den beiden Hub-Erzeugnissen**. Ein
Muster, das in bewiesenem Zwillingstext fehlt, taugt nicht als Zwillings-Detektor. Er bleibt bei
zwei Belegen aus Batch 94 stehen und wird **nicht** in die Muster-Tabelle aufgenommen
(→ [[QUESTIONS]] 260816 #2).

**Die schärfste Kontrollgruppe dieses Fensters: 7 Stunden 4 Minuten, derselbe Vorgang, derselbe
Empfängerkreis** (Hilti-Joch in der Zimmertrennwand 2.300/2.301):

| | 13.08. 11:53 (Exchange) | 13.08. 18:57 (Apple Mail) |
|---|---|---|
| Länge | 5 Zeilen | 4 Absätze, ~300 Wörter |
| Form | Nominalfragmente mit Fragezeichen: «Komplettes einpacken … Speiseraumseitig? Versetzen/Erdbebensicherheit?» | Doppelpunkt-Blocktitel «Lösung:» / «Sicherheit bei der Montage:» / «Bohren und Tabuzonen, kurz:» |
| Haltung | fragt den Fachplaner, entscheidet nicht | liefert die fertige Lösung samt Brandwache, Röntgenprüfung und Notfallplan |
| Wrapper | nein | ja, 4× |

**Der Verdachtstext ist nicht daran erkennbar, dass er schlechter wäre, sondern daran, dass er
vollständiger ist, als die Frage sieben Stunden zuvor war.** Der eine Tippfehler steht im
Einleitungssatz («Wenn Jens kein **bessern** Vorschlag hat») — also im Rahmen, den Raphael
selbst getippt hat, vor dem eingesetzten Block. Achte Falle, mustergültig.

**Dreizehnte Falle, neu 16.08.2026 (Fidelity-Review) — die ZITATKETTE ist die billigste
Goldquelle des Korpus, und sie liefert Gold und Echo im selben Objekt.** Bisher wurde je Mail
**ein** Text geprüft und gewichtet; der zitierte Thread darunter galt als Rauschen. Er ist das
Gegenteil. Die Kaufberatungsmail vom 09.06.2026 15:49 enthält in einem einzigen `body.content`:

| Position im Objekt | Hand | Erkennungszeichen |
|---|---|---|
| oben, neuer Text | **Raphael** | `Aptos`+`rgb(0,0,0)`, Tippfehler «Factseet», kein Wrapper, kein Geviertstrich |
| Zitat, 08.06. | **Raphael** | Zweizeiler, «Geschätzter Herr <Nachname>» |
| Zitat, 07.06. | **Hub** | `x_Apple-Mail-URLShareWrapperClass` auf jedem `<p>`, Geviertstriche |

Damit steht die **kontrollierteste Gegenüberstellung, die es geben kann**: derselbe Empfänger,
dieselbe Sachfrage, zwei Tage Abstand, beide Fassungen in derselben Datei — ohne zweite Abfrage,
ohne Tagesfenster-Rechnung, ohne Fehlerdichte-Statistik. Das schlägt die bisherige Bestmarke
(29 Minuten, Batch 94) nicht in der Zeit, wohl aber in der Beweiskraft.

**Verbindlich ab sofort:** bei jeder gelesenen Mail den **zitierten Thread mitprüfen** und die
Marker im Zitat einzeln zuordnen. Der Präfix `x_` vor den Apple-Mail-Klassen ist das Zeichen für
«zitiert», nicht für eine andere Herkunft — Outlook stellt ihn beim Einbetten voran. Der
Zusatzertrag ist doppelt: eine zweite Goldprobe pro Abfrage, und im Echo-Fall die Möglichkeit,
Zwilling und Original an **derselben Aufgabe** zu messen statt nur an derselben Person.

**Sperrliste: ein verworfenes Signal darf nicht durch die Hintertür zurückkommen.** Das Signal
«dich/dir/deine klein geschrieben im Du» wurde am **07.08.2026** ausdrücklich verworfen
(Gegenprobe: «kannst **Du** mir … welche für **dich** nicht mehr in Frage kommen» — gross und
klein im selben handgetippten Satz). Am **15.08.2026** kam es als «intermittierendes
Verdachtsmoment» wieder in die Muster-Tabelle. Am **16.08.** ist es zum dritten Mal widerlegt, in
zweifelsfreiem Gold: «Was wiederum **deine** These zum Ausbau des Dachstockes stützen würde»
(Outlook-nativ, tippfehlerbehaftet, kein Wrapper, kein Geviertstrich) — in derselben Mail, die
zwei Absätze vorher «Ich habe **Dir** … beigelegt» gross schreibt.

Das Signal ist damit **gestrichen und gesperrt**, nicht abgeschwächt. Und die Lehre gilt über den
Einzelfall hinaus: die Fallen-Sammlung wächst chronologisch, und ein späterer Lauf findet ein
schon einmal geprüftes Signal wieder «neu», weil er die frühere Widerlegung nicht liest. **Wer ein
Signal aufnehmen will, greppt zuerst `CLAUDE.md` nach seinem Namen — steht dort «verworfen» oder
«nicht aufgenommen», gilt das weiter, bis ein Beleg die frühere Gegenprobe entkräftet.** Aktuell
gesperrt:

| Gesperrtes Signal | verworfen am | Grund |
|---|---|---|
| «du/dich/deine klein» im Du | 07.08., bestätigt 16.08. | gross und klein in derselben eigenen Hand |
| null Guillemets «…» allein | 03.08. | belegter Falsch-Positiv (Protokoll 24.08.2023) |
| Signaturphrasen aus `rules/jans-dna.md` | 14.08. | der Zwilling reproduziert sie wortgetreu |
| `color:rgb(10,10,10)` | 13.08. | Einzelbeleg, Gegenprobe fehlt |
| `background-color:rgb(252,252,251)` | 16.08. | fehlt in bewiesenem Zwillingstext (Batch 95) |
| Fehlen der Bitt-Reflex-Grossschreibung | 15.08. | intermittierend, belegt nur ihr Vorhandensein |

**Vierzehnte Falle, neu 17.08.2026 (Batch 96) — der ENTWURFSORDNER ist die dritte dokumentarische
Quelle, und er konserviert die Fassung, die das Sendejournal nur erwähnt.** Die zwölfte Falle
(16.08.) hat `Drafts` als Beweismittel dafür erschlossen, **ob** ein protokollierter Entwurf
versendet wurde. Batch 96 zeigt: der Ordner leistet mehr. Er hält den **Wortlaut** der
Zwillings-Fassung fest, während die Sent Items Raphaels Fassung tragen. **Wo beide existieren,
ist das Korrektur-Delta wörtlich ablesbar** — ohne Tagesfenster-Rechnung, ohne Fehlerdichte-
Statistik, ohne Rückfrage an Raphael.

**Die Kanal-Trennung IM Entwurfsordner ist die Schlüsselunterscheidung** (Stand 17.08.2026,
103 Einträge, davon 62 mit Drittempfängern):

| Kanal des Entwurfs | Herkunft | Gewichtung |
|---|---|---|
| **Apple Mail** (`<UUID@raphaeljans.ch>`) | Hub-`osascript`-Draft | Zwillingstext |
| **Exchange** (`…@ZR2P278MB1112…`) | Raphael hat in Outlook angefangen und nicht gesendet | **Gold**, unfertig |

Daraus **drei Paartypen**, alle in diesem Batch belegt:

1. **Apple-Mail-Entwurf OHNE Sent Item** = nie versendeter Zwillingstext. Reines Negativmaterial
   — und zugleich das ehrlichste Urteil über den Zwilling, das der Korpus kennt: Raphael hat ihn
   liegen lassen. Beleg: der Entwurf an die GT-Leitung vom 30.07.2026, seit **18 Tagen** unberührt,
   viermal als versandbereit gemeldet.
2. **Apple-Mail-Entwurf MIT abweichendem Sent Item** = `korrektur-delta` (SILBER), wörtlich
   messbar. Beleg: Sitzungsprotokoll 06.08.2026, Entwurf 13:17 gegen Versand 13:44 — **27 Minuten**,
   anderer Betreff, andere Anrede, ein Empfänger mehr, Volltext statt Anhang.
3. **Exchange-Entwurf mit späterem Sent Item** = **Selbst-Delta**, neu in diesem Batch. Raphael
   verwirft seinen eigenen Ansatz. Beleg: 11.08.2026, «WG:» an den Kreisarchitekten, abgebrochen
   bei «Nach Rücksprache mit Herr », gegen «AW:» an den Feuerpolizisten 19 Minuten später. **Der
   Abbruch markiert die Stelle, an der er innehielt** — hier fehlte die Funktionsangabe zur
   Autoritätskette. Diese Gattung ist die einzige Quelle für Raphaels Revisionsverhalten an sich
   selbst.

**Neuer TEXTLICHER Detektor: der Signaturblock.** Alle bisherigen mechanischen Marker ausser dem
Geviertstrich sind Markup und sterben beim Zitieren. Dieser hier nicht:

| Herkunft | Signatur |
|---|---|
| Hub (Apple-Mail-Draft) | voller Block mit «**+41** 79 846 11 65» — die Form aus `rules/jans-absenderadresse.md` |
| Raphael in Outlook | «**RAPHAEL JANS**» in Versalien, «**0041** 79 846 11 65», «--»-Trenner |
| Raphael in Apple Mail, selbst getippt | **«Freundliche Grüsse / Raphael Jans» — gar kein Block** |

**Ein über Apple Mail gesendeter Text mit vollständigem Signaturblock ist Hub-Text.** Drei Belege
(30.07., 05.08., 06.08.), **Gegenprobe bestanden** an der handgetippten Apple-Mail-Mail vom
12.08.2026 12:30, deren Outlook-Fassung in derselben Zitatkette steht (dreizehnte Falle). Reichweite:
**Mail**, nicht nur Absatz — die Signatur steht einmal. Nebenbefund für Raphael: die Rule schreibt
«+41», seine gelebte Signatur «0041» ([[QUESTIONS]] 260817 #1).

**Zwei billige Zusatzsignale aus demselben Bestand:** Ein Betreff mit Grossbuchstaben-Platzhaltern
in eckigen Klammern («2619 KISPI, ausstehende Leistungen Fachplanung **[GEWERK]**, Nachfrist bis
**[DATUM]**», zwei Entwürfe vom 30.07.) ist eine **Hub-Schablone** und zweifelsfrei nie versendet.
Und: der Zwilling schreibt die Du-Formen **ausnahmslos** gross (Quote 1.0 gegen 0.818 in Raphaels
Hand), weil `rules/jans-dna.md` es vorschreibt — als Kandidat geführt, **nicht** aufgenommen, weil
ein Beleg nach der Sperrlisten-Disziplin nicht reicht.

**Verbindliches Vorgehen ab sofort, als Erweiterung der zwölften Falle:** (1) Selbstmails des
Fensters lesen. (2) `Drafts` **nach Kanal getrennt** gegen Sent Items stellen — nicht nur fragen,
ob ein Entwurf fehlt, sondern den vorhandenen Entwurf **mitlesen**. (3) Bei einem Paar beide
Fassungen wörtlich gegenüberstellen, statt die gesendete stilistisch zu beurteilen. (4) Erst dann
stilistisch urteilen. Der Ordner altert, sobald Raphael ihn leert — die Paare sind **jetzt** zu
heben.

**⚠ Werkzeug-Falle, in diesem Lauf teuer bezahlt: URIs aus einem Subagenten-Bericht sind
unbrauchbar.** Der Erhebungs-Subagent gab die Message-URIs um den mittleren Ordner-Block gekürzt
zurück; jeder `read_resource` darauf scheitert mit «Id is malformed». **Message-URIs immer aus der
eigenen Abfrage nehmen**, nie aus einem weitergereichten Bericht. Gleiche Familie wie der
`bodyPreview`-Listenfehler (elfte Falle): eine zweite Hand zwischen Quelle und Auswertung
verfälscht still.

**Fünfzehnte Falle, neu 17.08.2026 (Fidelity-Review) — der Kanal «aus der Web-Oberfläche kopiert
und aus Outlook gesendet» war bisher BLIND, und er hat einen eigenen, sehr harten Marker.**
Die Mail «Albertstrasse 7: BKP 275.00 Schliesssystem» vom 15.06.2026 14:20 trägt an ihrem
`mailto:`-Link die Klasse

```
class="text-[var(--accent)] hover:underline underline-offset-[1px] outline-none hide-focus-ring ring-focus rounded-r2"
```

Das sind **Tailwind-Utility-Klassen einer Web-Oberfläche**. Kein Mailclient erzeugt sie; sie
entstehen beim Kopieren aus einem Chat-Fenster und überleben das Einfügen in Outlook. Alle vier
bisherigen mechanischen Detektoren sagen bei dieser Mail **«Raphael»**: Exchange-Message-ID
(`ZR2P278MB1112…`), kein Apple-Mail-Wrapper, und der Signaturblock in Raphaels Outlook-Form
(«**RAPHAEL JANS**», «0041», «--»-Trenner) — weil Outlook die eigene Signatur beim Senden anhängt,
egal woher der Body stammt. **Die vierzehnte Falle greift hier nicht**, und das ist ihre Grenze:
sie erkennt den Apple-Mail-Kanal, nicht den Zwischenablage-Kanal.

Begleitmarker in derselben Mail, alle schwächer, aber gleichgerichtet: `background-color:
rgb(253,253,252)` auf **jedem** `<p>`, ein Geviertstrich, null Tippfehler auf 120 Wörter,
«meines Erachtens», «Der Punkt ist folgender:».

**Reichweite geprüft, nicht behauptet:** zwei weitere Mails desselben Fensters (Absage Schreinerei
15.06. 13:07, Mahnungs-Reply 15.06. 11:18) tragen den Marker **nicht** und sind zweifelsfrei
Raphaels Hand. Der Marker ist also mailbezogen, kein Artefakt der Abfrage.

**Sperrlisten-Disziplin eingehalten, mit Präzisierung statt Umkehr:** `background-color:
rgb(252,252,251)` wurde am 16.08. verworfen, weil es in bewiesenem Zwillingstext **fehlt**. Das
bleibt gültig — es taugt nicht als **notwendiges** Merkmal. Hier steht die Nachbarfarbe als
**hinreichendes** Merkmal neben einem eindeutigen. Die Sperrliste verbietet die Wiederaufnahme als
Ausschlusskriterium, nicht die Verwendung als Mitbeleg.

**Vierter Paartyp, neu neben den drei der vierzehnten Falle: der durchgewinkte Zwillingstext mit
Empfänger-Tausch.** Die Mahnung 2 vom 13.06. 13:35 an Tobler/Kreditoren trägt in der Zitatkette
`class="xapple-mail-urlsharewrapperclass"` auf jedem Absatz — Hub-Text. Sechs Minuten später,
13:41, geht **derselbe Wortlaut** an eine zweite Empfängerin, geändert ist einzig die Anrede
(«Guten Tag Herr Tobler,» → «Guten Tag Frau Baumgartner,»). **Korrektur-Delta null.** Als
Lernsignal ist das schwächer als ein Delta, aber es ist der einzige belegte Fall, in dem Raphael
einen Zwillingstext ohne jede Änderung ein zweites Mal einsetzt.

**⚠ Werkzeug-Falle, jetzt mit benannter Ursache: `bodyPreview` zeigt Listenmarken falsch.** Der
Mahnungs-Reply vom 15.06. 11:18 enthält ein `<ol>`, dessen Einträge `list-style-type:"A) "` und
`"B) "` tragen — im Postfach steht also «A)» und «B)». Der `bodyPreview` zeigt «1.» und «2.»,
weil er die CSS-Eigenschaft ignoriert und die Ordnungsziffer roh ausgibt. Wer die Listenform aus
dem Preview beurteilt, misst den Renderer, nicht Raphael. Gleiche Familie wie der
`bodyPreview`-Listenfehler der elften Falle; **Listenform immer am `body.content` prüfen.**

**⚠ Zweiter Beleg der fuenfzehnten Falle, 18.08.2026 (Batch 97) — neues Token, und erstmals MIT
Entwurfs-Paar.** Der Entwurf einer Amtsauskunft vom 17.08.2026 14:04 traegt auf **jedem** Absatz

```
class="font-claude-response-body break-words whitespace-normal"
```

Das ist die Antwort-Klasse der Claude-Weboberflaeche und ein deutlich sprechenderes Token als die
Tailwind-Utilities des ersten Belegs. **Beide Belege zusammen ergeben die Suchmenge fuer einen
Sweep:** `font-claude-response-body` und `text-[var(--accent)]`.

**⚠ Der in Batch 97 empfohlene Token-SWEEP ist mit `outlook_email_search` NICHT moeglich —
gemessen am 19.08.2026 (Batch 98).** Der Suchindex indexiert **kein Markup**. Kontrollprobe im
selben Ordner: ein Wort, das ausschliesslich im Body steht («Cleanwall»), liefert Treffer;
`font-claude-response-body` und `xapple-mail-urlsharewrapperclass` liefern **null**, obwohl
mindestens einer der beiden nachweislich im Bestand liegt. **Ein leeres Suchergebnis auf ein
Markup-Token ist damit eine Aussage ueber den Index, nie ueber den Bestand** (gleiche Familie
wie die `grep`-Falle in `rules/auto-verbesserungen` 260730b). Der Sweep ist nur ueber **gelesene
Bodies** moeglich, rund ein `read_resource` je Mail. **Verbindlich ab Batch 98:** jede in einem
Lauf ohnehin gelesene Mail wird auf beide Web-Tokens geprueft — das kostet nichts extra und
schliesst die Luecke fortlaufend statt in einem unbezahlbaren Einmal-Lauf.

Zwei Dinge macht dieser Beleg haerter als der erste:

1. **Er widerlegt die Kanal-Tabelle der vierzehnten Falle ausdruecklich.** Dort steht
   «Exchange-Entwurf = **Gold**, unfertig». Dieser Entwurf ist Exchange
   (`…@ZR2P278MB1112…`), traegt Raphaels Outlook-Signatur — und ist Claude-Text. **Die
   Kanal-Regel gilt nur noch, wenn der Body zuvor auf die Web-Tokens geprueft wurde.** Wer sie
   blind anwendet, verbucht Echo auf der hoechsten Gewichtungsstufe.
2. **Das Sent Item existiert, sechs Minuten spaeter** — damit ist erstmals ablesbar, was Raphael
   an einem einkopierten Claude-Text tatsaechlich aendert: **vier von fuenf Saetzen bleiben
   wortgleich**, korrigiert wird ausschliesslich die Selbstreferenz ohne Anker («im oben
   genannten Projekt» → «im Projekt <Nummer> <Bezeichnung>») samt nachgetragenem Betreff. Das ist
   `korrektur-delta` im engsten Sinn und als solches verbucht — **nicht** als Gold.

**Sechzehnte Falle, neu 20.08.2026 (Batch 99) — der billigste Diskriminator des ganzen Korpus
steht in den METADATEN: `body.contentType` trennt Raphaels Apple-Mail-Hand vom Hub-Draft.**
Die vierzehnte Falle ordnet den Apple-Mail-Kanal (`<UUID@raphaeljans.ch>`) pauschal dem
Hub-`osascript`-Draft zu. Dieses Fenster widerlegt das dokumentarisch: die zwei schaerfsten
Gold-Mails des 19.08. (08:26 Ultimatum ans Amt, 08:48 an den Kreisarchitekten) tragen
Apple-Mail-Message-IDs und sind zweifelsfrei Raphaels eigene Hand — **das Sendejournal desselben
Vormittags nennt sie ausdruecklich** («er stammt aus **Deiner eigenen** Mail von 08:26», «**Du
hast** um 08:26 an acht Adressaten geschrieben»). Beweis ausserhalb des Textes, kein Stilurteil.

Der trennende Marker ist nicht die Message-ID, sondern das Feld daneben:

| | Kanal | `body.contentType` | Body |
|---|---|---|---|
| **Raphael in Apple Mail** | `<UUID@raphaeljans.ch>` | **`text`** | reiner Plaintext, keine Markup-Huelle |
| **Hub-`osascript`-Draft** | `<UUID@raphaeljans.ch>` | **`html`** | `Apple-Mail-URLShareWrapperClass` auf jedem `<p>` |

**Der Hub kann `contentType: text` nicht erzeugen** — der `osascript`-Draft setzt immer HTML mit
Wrapper. Das Feld steht in jedem `read_resource`-Ergebnis, kostet keine Body-Analyse und ist
nicht faelschbar. Belege: drei auf der Gold-Seite (19.08. 08:26, 08:48, 08:57), einer auf der
Zwillingsseite (19.08. 06:55), dazu alle Wrapper-Belege der Batches 95–98 rueckwirkend als
Gegenprobe.

**Reichweite: Mail, und ausschliesslich fuer den Apple-Mail-Kanal.** Ueber Exchange gesendete
Mails sind immer HTML — dort trennt `contentType` nichts, und es bleibt bei den Markern der
vierzehnten (Signaturform) und fuenfzehnten Falle (Web-Tokens).

**⚠ Konsequenz fuer den Bestand, offen:** in den Batches 95 bis 98 wurde das Feld nie gelesen.
Wo dort eine Apple-Mail-Mail allein wegen des Kanals als Zwillingstext verbucht wurde, ist die
Zuordnung nachzupruefen — **ein faelschlich verworfener Gold-Text ist teurer als ein fehlendes
Fenster** ([[QUESTIONS]] 260820 #1).

**⚠ Praezisiert am selben Tag (Fidelity-Review 20.08.2026, Fenster 07.–13.07.) — die Tabelle
der sechzehnten Falle ist in EINE Richtung gueltig.** `contentType: text` beweist Raphaels Hand.
`contentType: html` beweist **nichts**: die Mail «Wartstrasse 8» vom 07.07.2026 07:48 ist
Apple-Mail-Kanal, `contentType: html` — und zweifelsfrei handgetippt (Anrede «liebe Undine» klein,
Kasusfehler «Nach Ruecksprache mit dem Lieferant», «Rolladensteuerungstypes», und die belegte
Handsignatur «Daher **B**itte ich Dich uns der Typ … anzugeben»). Ihr Body traegt **nackte
`<div>` ohne jeden Wrapper**. Raphael erzeugt HTML, sobald er in Apple Mail formatiert oder
einfuegt. **Der Ausschluss laeuft ueber den `Apple-Mail-URLShareWrapperClass`, nicht ueber
`contentType`** — das Feld ist die billige Vorentscheidung nach Gold, nie nach Echo.

**Gegenprobe zum `text-transform:none`-Kandidaten geliefert — er wird EINGEGRENZT, nicht
aufgenommen ([[QUESTIONS]] 260820 #2 damit beantwortet).** Drei Messungen desselben Fensters:

| Mail | Kanal | `text-transform:none` | Urteil |
|---|---|---|---|
| 08.07. 08:00 an den Sanitaer (Gold) | Exchange/Outlook Mobile | **nirgends** | handgetippt |
| 07.07. 09:13 ans AfB (aussortiert) | Exchange | **auf jedem Textabsatz** | Hub-Text |
| 07.07. 07:48 «Wartstrasse 8» (Gold) | Apple Mail | **im Signatur-Container** | handgetippt |

Die verlangte Gegenprobe (vollstaendig selbst getippte Outlook-Mail) ist damit da und faellt zu
Gunsten des Markers aus — aber die dritte Zeile zeigt die Grenze: **Apple Mail und Outlook setzen
die Eigenschaft routinemaessig im Signatur- und Zitat-Container.** Der Marker zaehlt darum
ausschliesslich auf **Textabsaetzen**; im Signatur-/Zitat-Wrapper ist er bedeutungslos. So
eingegrenzt ist er brauchbar, ungrenzt haette er ein reines Gold verworfen — dieselbe Lehre wie
beim Guillemet-Falsch-Positiv (03.08.) und beim «du klein»-Fall (07.08.).

**Siebzehnte Falle, neu 20.08.2026 (Fidelity-Review) — FREMDES CSS ist per se kein Echo-Signal;
Raphael tippt mitten in kopiertes Markup hinein.** Die Mail an den Bauherrenvertreter vom
07.07.2026 19:28 traegt im Body `font-family:europa,sans-serif`, `class="footer-text-link"`,
`class="paragraph-small white"` und `background-attachment:scroll !important` — Markup einer
fremden Firmenwebsite. Sie ist trotzdem **reines Gold**: Raphael hat den Adressblock der
SecuSuisse AG von deren Website kopiert und **im Inneren des kopierten Blocks weitergeschrieben**,
weshalb «Eingeholt werden.», «Beste Gruesse» und «Raphael» im HTML als
`<a href="mailto:info@secusuisse.ch">` stehen. Der Satz zerbricht sichtbar am Einschub
(«Sollte der gewuenschte Preis nicht erzielt werden koennte eine Angebotsanfrage bei
**SecuSuisse AG** [Adressblock] **E**ingeholt werden.»), und das grossgeschriebene «Eingeholt»
mitten im Satz ist dieselbe Handsignatur wie «Darf ich Dich **B**itten».

**Konsequenz: nur die drei benannten Muster sind Echo-Marker.** Wer «unbekanntes CSS im Body» zu
einem allgemeinen Verdachtssignal verallgemeinert, verwirft genau die Mails, in denen Raphael
recherchiert und einfuegt — also die inhaltsreichsten. Und die Umkehrung der achten Falle gilt
mit: der eingefuegte Fremdblock ist hier **keine** zweite Hand am Text, sondern nur Material.

**Ebenfalls praezisiert: die Signaturform (vierzehnte Falle) beweist die MASCHINE, nicht die
AUTORSCHAFT.** Der Vorlauf (19.08., Befund 1) hat sie als billigen Vorfilter eingefuehrt: «wer
`0041` schreibt, hat in Outlook getippt». Das stimmt und bleibt gueltig — es sagt aber nichts
darueber, **wer den Body verfasst hat**. Die aussortierte AfB-Mail vom 07.07. traegt die volle
Raphael-Outlook-Signatur (`0041`, fetter Name, `id="ms-outlook-mobile-signature"`) und ist im
Body durchgehend Claude-Text mit allen drei harten Mustern. Outlook setzt die Signatur selbst;
ein hineinkopierter Body beruehrt sie nie. **`+41` + nicht fetter Name schliesst nach Hub aus;
`0041` schliesst nichts ein.**

**Kandidat, nicht aufgenommen: `text-transform:none` als Naht-Marker im Exchange-Kanal.** In der
Mail vom 19.08. 10:53 steht die Eigenschaft auf **jedem** Absatz des eingefuegten Hub-Blocks
01–04 und **auf keinem** der zwei handgetippten Schlussabsaetze — die achte Falle (Raphaels
Rahmen um ein eingesetztes Fragment) waere damit erstmals mechanisch lokalisierbar, auch ohne
Wrapper. Nach Sperrlisten-Disziplin reicht ein Beleg nicht; Gegenprobe gegen eine vollstaendig
selbst getippte Outlook-Mail steht aus ([[QUESTIONS]] 260820 #2).

**Achtzehnte Falle, neu 21.08.2026 (Batch 100) — der Zwilling repliziert Raphaels Fehler
ABSICHTLICH, und die Fehlerdichte hat dadurch ein Loch an genau einer Stelle.** Bisher galt:
Fehler im Text sprechen fuer Raphaels Hand, Fehlerfreiheit fuer die Maschine — der einzige
quantitative Diskriminator, der die Batches 98–100 ueberstanden hat. Das Sendejournal vom
18.08.2026 06:48 belegt die Ausnahme woertlich, zu einem selbst erzeugten Entwurf:

> «Du schreibst in diesem Thread durchgehend «Herr <Vorname>», das ist aber sein Vorname, der
> Nachname ist <Nachname>. **Ich habe Deinen Wortlaut stehen lassen, damit der Thread nicht
> bricht.**»

Damit ist ein Entwurf, der bis in den Anredefehler hinein authentisch **wirkt**, dokumentarisch
als Hub-Erzeugnis belegt — ohne jedes Stilurteil. **Die Fehlerdichte misst, ob ein Text Fehler
ENTHAELT, nicht ob er sie selbst erzeugt hat.** Ein Zwilling, der aus dem Thread abschreibt,
erbt die Hand des Originals.

**Reichweite bewusst eng, sonst zerstoert die Falle den besten Diskriminator, den der Korpus
hat:** betroffen sind **uebernommene, thread-getragene Einzelformen** — Anrede, Eigenname,
stehende Wendung, Betreffzeile. Nicht betroffen ist die Fehlerdichte im Fliesstext: die sechs
Eigentexte von Batch 98 lagen ueber den ganzen Text bei 2.9–5.7 je 100 W, der hier untersuchte
Hub-Entwurf bei ~0 mit **einem** geerbten Fehler an der Anredestelle. **Praxis: die Anrede- und
Eigennamenzeile aus der Fehlerzaehlung herausnehmen, den Rest weiter zaehlen.**

**Der zweite Wert dieses Belegs liegt nicht beim Detektor, sondern beim Verhalten:** der
Zwilling hat den Fehler erkannt, gemeldet und trotzdem nicht eigenmaechtig korrigiert. Das ist
die richtige Reihenfolge und steht als Marker in [[haltung]] — Gegenstueck zum Drift-Muster aus
Batch 95, wo er einen Tippfehler stillschweigend ausbesserte. **Verbindlich: erkannte Fehler des
Originals werden gemeldet, nie stillschweigend geheilt und nie stillschweigend fortgeschrieben.**

**Dazu ein neuer, billiger und aufgenommener Detektor: das ENTWURFS-DUPLIKAT.** Legt der Ordner
`Drafts` **zwei wortgleiche Entwuerfe im selben Sekundenfenster** mit unterschiedlichem
Verteiler ab, ist das ein Hub-`osascript`-Lauf. Drei unabhaengige Belege ueber zwoelf Tage:

| Tag | Zeitstempel | Verteiler |
|---|---|---|
| 06.08.2026 | 13:17 (2×) | Gruppe gegen Einzelempfaenger |
| 17.08.2026 | 06:48:34 / 06:48:35 | 3 gegen 2 Empfaenger |
| 18.08.2026 | 06:45:21 / 06:45:22 | 2 gegen 5 Empfaenger |

**Ein Mensch erzeugt das nicht** — er aendert den Verteiler im offenen Entwurf, statt binnen
einer Sekunde eine zweite Fassung anzulegen. Der Marker steht bereits in der **Trefferliste**
(`sentDateTime` + `recipients`), kostet kein `read_resource` und ueberlebt jede Body-Analyse.
Batch 98 hatte das Muster einmal gesehen und als Einzelfall notiert; mit drei Belegen ist es
aufgenommen.

**⚠ Und ein Anti-Marker aus demselben Lauf: das `x_`-Praefix ist ein Ordner-Artefakt.** Die
gesendeten Mails tragen die Klasse als `x_Apple-Mail-URLShareWrapperClass` mit mehreren leeren
Wrapper-`div` (3–4×), die Entwuerfe ohne Praefix und je genau 1×. Das korreliert mit **Sent
gegen Draft** (Graph normalisiert Klassennamen beim Versand-Roundtrip), **nicht mit
Autorschaft**. Weder das Praefix noch die Wrapper-ZAHL als Signal verwenden — nur ihr
Vorhandensein zaehlt.

**Ergebnis der Vorrangaufgabe aus [[QUESTIONS]] 260820 #1, im selben Lauf erledigt:** alle
sieben Apple-Mail-Kandidaten der Batches 95–98 nachgeprueft, **kein einziger traegt
`contentType: text`**. Es ist kein Gold zurueckzuholen; die Zuordnungen jener Batches bleiben
gueltig. Der Ausschluss lief dort ohnehin ueber den Wrapper, nicht ueber den Kanal — die
Nachpruefung bestaetigt damit die Methode, nicht nur das Einzelurteil.

## Schreibregeln für dieses Wiki

- Artikel-Frontmatter gemäss `WISSEN-CLAUDE.md` (title/status/last_updated/sources/links),
  plus Zusatzfeld `gewichtung: [authentisch|korrektur-delta|gemischt]`.
- Jeder Stil-Marker wird **belegt** (Quelle in `sources`, Beispiel-Schnipsel anonymisiert:
  Empfängernamen → Rolle, z.B. «Investor-Du», «vertrauter Planer»). Keine vertraulichen
  Mandatsinhalte im Klartext.
- Marker sind **operationalisierbar** formuliert (was konkret tun / lassen), nicht vage.
- Widersprüche zwischen Facetten nicht glätten, sondern in [[QUESTIONS]] vermerken; der
  `twin-chef` löst sie kontextabhängig auf.
- **Belegdaten neu immer als `TT.MM.JJJJ`** schreiben. Der Bestand ist gemischt (Stand
  31.07.2026: 708 Belege `TT.MM.JJJJ`, 529 Belege ISO `JJJJ-MM-TT`) — **wer nach einem Beleg
  sucht, muss deshalb IMMER beide Formate greppen.** Belegter Schaden: im Fidelity-Lauf
  260731 ergab `grep -F "14.12.2025" wiki/` null Treffer, obwohl fünf Markerzeilen zu genau
  dieser Mail als `2025-12-14` im Wiki standen; die Blindfassung wurde deshalb ohne die
  vorhandenen Marker geschrieben. Ein Retrieval-Fehler, kein Wissenslücken-Befund.
- **Ein Datums-Grep allein beweist keine Lücke (neu 04.08.2026, Batch 86).** Viele Marker zitieren
  ihre Quelle **nur über die Batchnummer** («belegt Mailbatch 36») und tragen gar kein Datum — für
  einen Tages-Grep sind sie unsichtbar, in **beiden** Formaten. Belegter Schaden: der in Batch 84/85
  eingeführte Tagesabgleich meldete den 20.03.2026 mit null Belegen, dort liegt aber das vollständig
  destillierte Korrektur-Delta der Sandro-Mauchle-Mail (`stimme` 1555–1566, `haltung` 480–487,
  `arbeitsweise` 1104–1107). **Reihenfolge bei jedem Lücken-Sweep: (1) Batch-Register
  `raw/_INGESTED.md` nach Datumsbereichen auswerten, (2) Tages-Grep nur innerhalb eines dort als
  dünn erkannten Fensters, (3) Marker-Kandidaten einzeln greppen.** Wer bei (2) beginnt,
  destilliert Vorhandenes ein zweites Mal und lässt einen Einzelbeleg wie zwei aussehen.
- Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, ss statt ß (`umlaute-konvention.md`).

## Quellen

- E-Mail-Ausgänge rj@ + mail@raphaeljans.ch (Sent Items/Archive), via M365-Connector.
- Reale JANS-Dokumente/Studien aus dem Archiv und `30 JANS AI HUB OUTPUT/`.
- Korrektur-Deltas, die der `twin-chef` beim Gate erfasst.

## Loops

- `twin-mail-training` (täglich) destilliert neue Marker hierher; CHANGELOG führen.
- `twin-fidelity-review` (**täglich**, Registry-Stand 03.08.2026: cron `40 5 * * *`) scort,
  validiert Facetten gegeneinander, hängt Fragen an [[QUESTIONS]] und stösst die
  Neukompilierung von `rules/jans-dna.md` an. *(Berichtigt Wissens-Chef Run 23: hier stand
  «alle 2 Tage».)*
- Health-Check: Skill `wissenscheck` auditiert auch diese KB.

**Kontext-Kosten dieser KB.** Was hier wächst, wird über `skills/twin/tools/build_dna.py` in
`rules/jans-dna.md` kompiliert und lädt damit in **jede** Session — die Facetten-Artikel sind
also nicht nur Wissen, sondern Grundkontext-Budget. Geführt und gemessen wird dieses Budget in
`wissen/claude-code/wiki/kontext-architektur.md`. Vor einer grösseren Erweiterung einer Facette
dort nachsehen, wie der Stand ist.
*(Erst-Verlinkung Wissens-Chef Run 23, 03.08.2026: die KB, die die grösste Datei des
Grundkontexts erzeugt, kannte die KB nicht, die dieses Budget führt.)*

## Sync

Kanonisch auf dem NAS (`sync-kanonische-quelle.md`). Nur hier editieren, dann committen.

**Neunzehnte Falle, neu 21.08.2026 (Fidelity-Review) — das Fenster kann bereits abgeerntet sein,
und ab Juli 2026 laeuft der Harness im eigenen Korpus mit.**

Die stehende Empfehlung «Fenster weiterziehen» unterstellt unberuehrtes Material. Das trifft fuer
Fenster **vor Juli 2026** zu. Ab Juli 2026 verwenden die Fidelity-Laeufe **tagesaktuelle** Mails:
Lauf 260714j hat am 14.07.2026 die Mails vom 14.07.2026 destilliert (Golds Stählin/Waschtuerme und
Vanvelten/Mans), die Laeufe 260713a–h und 260714b–i ebenso. Wer heute das Fenster 14.–20.07. zieht,
greift in eine bereits durchsuchte Kiste.

**Gegenmittel, zwei Sekunden, vor der Gold-Auswahl:**
- `ls outputs/ | grep <Jahr-Monat-Tag-Praefix>` — lief an diesem Tag ein Fidelity-Lauf?
- `grep -rn "<Betreff-Fragment>" wiki/` — steht die Mail schon als Marker im Wiki?

**Was NICHT folgt: solche Fenster zu meiden.** Die Wiederholung war am 21.08. der ertragreichste
Teil des Laufs, weil sie zum **Regressionstest** wurde — dieselben Golds, fuenf Wochen spaeter, mit
den daraus destillierten Markern im Gehirn. Ergebnis: **Nachschlage- und Unterlassungsregeln
hielten, die Inhibition eines eigenen Reflexes hielt nicht** (Report Befund 1, [[QUESTIONS]]
260821b #1). Richtig ist also: die Wiederholung **erkennen** und dann bewusst als Regressionstest
fahren, statt sie unerkannt als Neuland zu verbuchen — im zweiten Fall werden bereits belegte
Marker ein zweites Mal als «neu» notiert, was die KB aufblaeht und die Belegzaehlung verfaelscht.
