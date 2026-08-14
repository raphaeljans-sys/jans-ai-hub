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
