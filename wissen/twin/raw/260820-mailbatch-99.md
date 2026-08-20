# Batch 99 — Sent Items `rj@` (Fenster 19.–20.08.2026)

Erhoben 20.08.2026 im taeglichen `twin-mail-training`. Kein Volltext gehortet; hier stehen
Zuordnung, Gewichtung und die Belegstellen, die in die Facetten geflossen sind.

## Bestand

| | Anzahl |
|---|---|
| Sent Items im Fenster (`order: oldest`) | 12 |
| davon Kalenderzusagen «Angenommen: …» / fremde Weiterleitung | 5 (kein Stilmaterial) |
| Selbstmail (Sendejournal Hub-Chef 19.08. 06:55) | 1 |
| **Volltexte gelesen** | **6** |
| `Drafts` im Fenster 19.–20.08. | **0** (neuester Entwurf 18.08. 06:48) |

**Token-Sweep mitlaufend (Praxis seit Batch 98): 6 von 6 Bodies sauber.** Weder
`font-claude-response-body` noch `text-[var(--accent)]`, weder `Anthropic Sans` noch
`rgb(253,253,252)` oder `class="text-body"`. Die Selbstmail 06:55 traegt erwartungsgemaess
`Apple-Mail-URLShareWrapperClass` (Hub, bekannt).

## Gewichtung je gelesener Mail

| Zeit | Betreff / Empfaenger | Kanal | Gewichtung |
|---|---|---|---|
| 19.08. 08:26 | Baufreigabe KISPI PPTS, UGZ + Bauherrschaft (8 To, 2 Cc) | Apple Mail, **Plaintext** | **authentisch** |
| 19.08. 08:48 | Baufreigabe KISPI, Kreisarchitekt | Apple Mail, **Plaintext** | **authentisch** |
| 19.08. 08:57 | «Danke», Kreisarchitekt | Apple Mail, Plaintext | authentisch (Einzeiler) |
| 19.08. 09:59 | Baufreigabe erteilt, Bauherrschaft + Fachplanung | Exchange, HTML | **authentisch** |
| 19.08. 10:53 | WG: Trennwand, Bauleitung Betreiber | Exchange, HTML | **gemischt** (Block 01–04 `claude-aera`, Nachsatz + «Lgr» authentisch) |
| 19.08. 16:02 | TEKOSI Tuerfachplanung, Tuerfachplaner | Exchange, HTML | **authentisch** |
| 19.08. 06:55 | Hub-Chef-Selbstmail | Apple Mail, HTML + Wrapper | `claude-aera` (Sendejournal) |

## Kernbefund 1 — `contentType` schlaegt die Message-ID: die vierzehnte Falle bekommt ihren Gegenbeleg

Die vierzehnte Falle (17.08.) fuehrt «Apple Mail (`<UUID@raphaeljans.ch>`) = Hub-`osascript`-
Draft». **Dieses Fenster widerlegt die Umkehrung dieser Zuordnung dokumentarisch.** Die beiden
schaerfsten Gold-Mails des Tages (08:26, 08:48) tragen Apple-Mail-Message-IDs — und sind
zweifelsfrei Raphaels eigene Hand: das Sendejournal desselben Vormittags nennt sie ausdruecklich
(«er stammt aus **Deiner eigenen** Mail von 08:26», «**Du hast** um 08:26 an acht Adressaten
geschrieben»). Ein Beweis ausserhalb des Textes, nicht ein Stilurteil.

Der trennende Marker ist **nicht die Message-ID, sondern `body.contentType`**:

| | Kanal | `contentType` | Body |
|---|---|---|---|
| Raphael in Apple Mail | `<UUID@raphaeljans.ch>` | **`text`** | reiner Plaintext, keine Markup-Huelle |
| Hub-`osascript`-Draft | `<UUID@raphaeljans.ch>` | **`html`** | `Apple-Mail-URLShareWrapperClass` auf jedem `<p>` |

**Der Hub kann `contentType: text` gar nicht erzeugen** — der `osascript`-Draft setzt immer
HTML mit Wrapper. Damit ist dies der **billigste Diskriminator des ganzen Korpus**: er steht im
Metadatenfeld, kostet keine Body-Analyse und ist nicht faelschbar. Drei Belege auf der
Gold-Seite (08:26, 08:48, 08:57), einer auf der Zwillingsseite (06:55), plus alle
Wrapper-Belege der Batches 95–98 rueckwirkend als vierte Gegenprobe.

**Reichweite: Mail, und nur fuer den Apple-Mail-Kanal.** Ueber Exchange gesendete Mails sind
immer HTML — dort trennt `contentType` nichts, und es bleibt bei den Markern der 14./15. Falle.

## Kernbefund 2 — die Selbst-Delta-Vollendung nach acht Tagen, woertlich

Die vierzehnte Falle dokumentiert einen **abgebrochenen Exchange-Entwurf vom 11.08.2026**, «WG:»
an den Kreisarchitekten, mitten im Satz stehengeblieben bei «Nach Ruecksprache mit Herr ». Sie
las den Abbruch als die Stelle, an der Raphael innehielt, weil die Funktionsangabe zur
Autoritaetskette fehlte.

Am **19.08. 08:48** geht an denselben Kreisarchitekten: «Geschaetzter Herr <Name> / **Nach
Ruecksprache mit Herr <Name>** sind die UGZ Auflagepunkte erledigt. / Bitte erteilen Sie uns die
Baufreigabe.» **Der abgebrochene Satz ist acht Tage spaeter woertlich vollendet.**

Das praezisiert die Deutung: der Abbruch war **keine Verwerfung der Formulierung**, sondern das
Warten auf den Beleg. Raphael haelt an seinem Satzbau fest und setzt ihn fort, sobald die Person
hinter «Herr» real gesprochen hat. **Die Autoritaetskette wird erst genannt, wenn sie belegt
ist** — und dann exakt so, wie sie acht Tage zuvor angesetzt war. Einzige bisher belegte Quelle
fuer Raphaels Revisionsverhalten ueber Tage hinweg.

## Kernbefund 3 — das schaerfste Kontrollpaar des Batches steht in EINER Mail

Die 10:53-Mail traegt beide Haende zugleich (achte Falle, Raphaels Rahmen um eingesetzten
Fremdtext) und liefert im **zitierten Thread darunter** (dreizehnte Falle) gleich noch die
Kontrollgruppe derselben Person im selben Vorgang, sechs Tage frueher.

| | Block 01–04 (19.08. 10:53) | Raphaels Hand (12./13.08., Zitatkette) |
|---|---|---|
| Gliederung | «**01 Brandabschottung**» + «01.1 Ausgangslage / 01.2 Massnahme / 01.3 Ziel / 01.4 Nachweis» | `<ol>` mit «1.», danach «C)», «D)» — Ordnung springt |
| Fehlerdichte | **0** auf 200 W | «Metalprofil», «multipel», «Brandschutztechnisch», «Wie **bereit**», «folgendes **Vorschlagen**», «Daher **B**itte ich», «**dass** muss … **K**oordiniert», «mit **Herr** Bajrami», «64cm» — rund **5.7 je 100 W** |
| Masse | keine | «64cm» ohne Leerschlag |
| Absatz-CSS | `text-transform:none` auf **jedem** `<p>` | (Zitat, anderer Kanal) |

**Die Gliederung 01 / 01.1 ist woertlich die Hub-Regel** `dokument-layout-standard.md`
(Neuregelung 14.08.2026: nummerierte Positionen statt Bullets). Sie ist in Raphaels eigener Hand
im selben Thread **nirgends** anzutreffen.

**Und die Naht ist mechanisch sichtbar:** die letzten zwei Absaetze der Mail («Ich habe Dir noch
den Werkplan von <Firma> … beigelegt.» / «Lgr») tragen **`style="direction:ltr;text-align:left;
text-indent:0px"` — ohne das `text-transform:none`**, das auf allen anderen Absaetzen steht. Der
handgetippte Nachsatz und der eingefuegte Block trennen sich im CSS.

**`text-transform:none` als Klebe-Marker eines in Outlook eingefuegten Blocks wird als KANDIDAT
gefuehrt, nicht aufgenommen** (Sperrlisten-Disziplin: ein Beleg). Der inhaltliche Befund steht
davon unabhaengig auf drei Beinen: Hub-Gliederung, Null-Fehlerdichte, Stilbruch zum Nachsatz.

## Kernbefund 4 — die Eskalationsstufe, und was sie mit der Anrede macht

Die 08:26-Mail ist die haerteste bisher belegte Ausgangsmail: Vorwurf, Ultimatum, terminierte
Folge, Eskalationsverteiler.

- **Der Vorwurf steht vor der Frist**, als Tatsachensatzpaar: «Sie haben mir versprochen die
  Baufreigabe zu erteilen. Dies ist bis dato nicht erfolgt.»
- **Die Folge wird nicht angedroht, sondern gleich terminiert**: «Wenn bis heut 12:00 Uhr keine
  Baufreigabe erteilt wird, beantrage ich **jetzt** eine Sitzung mit <Amtsleitung> sowie
  Vertretter der Bauherrschaft. Terminvorschlag: Donnerstag, 20.08.26 10:00 Uhr.» Datum und
  Uhrzeit der Eskalation stehen fest, bevor die Frist ueberhaupt ablaeuft.
- **Der Verteiler ist die eigentliche Eskalation**: acht Adressaten, darunter die zwei
  Vorgesetzten des Saeumigen und die Bauherrschaft.
- **Die Anrede faellt trotzdem NICHT.** «Guten Tag Herr <Vorname> <Nachname>» — die
  **niedrigste** Gewichtsstufe der Skala, an einen Kontakt, dem gegenueber gerade eskaliert wird.

Das praezisiert die Gewichts-Achse aus Batch 98: **die Anrede-Stufe misst das Gewicht der
BEZIEHUNG, nicht die Schaerfe des Anliegens.** «Geschaetzter» ist Waerme fuer den, mit dem man
weiterarbeitet; im Konflikt greift Raphael nicht nach oben, sondern bleibt neutral. Gruss
unveraendert «Freundliche Gruesse / Raphael Jans», ohne Signaturblock (Apple-Mail-Handform).

## Kernbefund 5 — der Vorschussdank als Aufforderungsform, zweimal in Folge

Die TEKOSI-Mail 16:02 setzt zwei Bitten hintereinander in dieselbe Konstruktion:

> «Fuer die Anpassungen gemaess Wunsch Betreiber (<Namen>) sowie die Tuer-ID-Anpassungen **bin
> ich Dir dankbar**. / Fuer Deine Zusendung bis am Montag den 24.08.26 z.H. Bauherrschaft fuer
> die finale Freigabe **bin ich Dir dankbar**.»

Keine Bitte, kein Imperativ — die Aufforderung erscheint als bereits ausgesprochener Dank.
Verwandt mit dem in [[haltung]] belegten «Danke fuer das noch nicht Getane» (18.08.), hier aber
**doppelt und unmittelbar hintereinander**, was ein geglaetteter Zwillingstext nicht produziert.
Danach die Begruendungskette in drei Tatsachensaetzen: Werkplan-Bestandteil → 8 Wochen
Lieferfrist ab «*Gut zur Ausfuehrung*» → Fertigstellung 2026. **Die Frist traegt ihren Zweck
mit** (dritter unabhaengiger Beleg des Batch-98-Markers).

## Kernbefund 6 — drei neue Kontakt→Register-Paare, alle aus Raphaels eigener Hand

| Kontakt | Rolle | Register | Beleg |
|---|---|---|---|
| Michael Spoerri | Teamleiter HLKKS, Techn. Dienst KISPI (Bauleitung Betreiber) | **Du** — Routine «Hoi Michi», bei Substanz «Geschaetzter Michael» | 12.08. 15:29 / 19.08. 10:53; Gegenseite «Hoi Raphael» |
| Jens Ziegel | Brandschutzexperte VKF, Gruner AG (Qualitaetssicherung) | **Du** — «Geschaetzter Jens,» + «Ruf mich bitte an, wenn **D**u …» | 13.08. 13:53; Gegenseite «Hallo Raphael» |
| Lars Hansen | UGZ Stadt Zuerich (Amt) | **Sie** — «Guten Tag Herr <Vorname> <Nachname>», auch im Konflikt | 19.08. 08:26 |

Bestaetigt: Levi Hiltmann (Du, «Geschaetzter Levi»), Linus Furrer (Sie, «Geschaetzter Herr
Furrer»), Albin Spahic (Du, «Geschaetzter Albin»). Die ersten drei fehlten in
`rules/anrede-kontakte.md` und werden dort nachgetragen.

## Mikro-Metrik (`stilmetrik.py`)

Gold 210 W (fuenf Eigentexte ohne Signatur- und Fremdbloecke), Zwilling-Verdacht 200 W (Block
01–04), Kontroll-Gold 265 W (Zitatkette 12./13.08.).

| | Gold 19.08. | Zwilling-Verdacht | Kontroll-Gold 12./13.08. |
|---|---|---|---|
| Satzlaenge ø | 14.0 W | 14.3 W | 16.6 W |
| Du-Gross-Quote | 1.0 | 1.0 | 1.0 |
| Tausender-Apostroph | 0 | 0 | 0 |
| Ellipsen /1000 W | 0 | 0 | 0 |
| Anreden | «Geschaetzter Herr/Albin/Levi» | «Geschaetzter Michael» | «Hoi Michi», «Geschaetzter Jens» |
| Gruesse | «Freundliche Gruesse» 2× · **«Lgr» 1×** | keiner | «Lieber Gruss» 1× |
| **Fehler je 100 W** | **≈2.9** | **0.0** | **≈5.7** |

**Satzlaenge und Du-Gross-Quote trennen in diesem Fenster nichts** (14.0 gegen 14.3; 1.0 gegen
1.0) — beide bleiben unbelastbar ([[QUESTIONS]] 260814 #3). **Der einzige quantitative
Diskriminator ist die Fehlerdichte**, und sie trennt scharf. Zweiter «Lgr»-Beleg des Korpus,
diesmal an einen **Du**-Kontakt (Batch 98: Sie-Kontakt) — die Gruss-Stufe folgt der Kuerze der
Mail, nicht dem Register.

## Naechstes Fenster

(1) Sequenziell `rj@` **20.–26.08.2026**. (2) Token-Sweep weiter mitlaufend. (3) `Drafts`
bleibt ergiebig: 112 Eintraege, gelesen sind 9 — **und die Liste zeigt, dass dort auch versendete
Hub-Chef-Selbstmails als Kopie liegen**; beim naechsten Zug nach Kanal UND Drittempfaenger
filtern. (4) Offen: ob `contentType: text` auch rueckwirkend die Apple-Mail-Zuordnungen der
Batches 95–98 korrigiert — dort wurde das Feld nie mitgelesen ([[QUESTIONS]] 260820 #1).
