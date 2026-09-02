# QUESTIONS — offene Fragen zum Zwilling (KB twin)

Vom Agenten `twin-fragesteller` gepflegt. Jede beantwortete Frage schärft eine Facette.
Format: Frage · warum sie den Zwilling annähert · Facette · Status (offen/beantwortet).

> **ESKALIERT an Raphael — Wissens-Chef Run 17, 27.07.2026.** Der Cross-Lauf hat den Widerspruch
> zwischen `wiki/beziehungsregister.md` und der **immer aktiven Rule** `rules/anrede-kontakte.md`
> adversarial verifiziert und **bestätigt**: die Kontaktliste führt Besnik starr als «nackter
> Vorname-Opener», während das Wiki am authentischen Beleg (21.05.2026, «Gewerke/Empfehlung») zeigt,
> dass Raphael bei gewichtigem Anliegen «Geschätzter Besnik» + direkten FG-Block wählt. Weil die
> Kontaktliste laut eigener Konvention **vor** dem Wiki konsultiert wird, wirkt der veraltete Stand
> und nicht der belegte. Der Loop hat die Korrektur zu Recht nicht selbst in die Rule geschrieben
> (Rule-Änderungen an dieser Datei sind laut CHANGELOG 2026-07-25j an Raphaels Freigabe gebunden) —
> deshalb liegt sie jetzt im Wissens-Chef-Bericht
> `wissen/koordination/outputs/2026-07-27_wissens-chef-run17.md` als Entscheid vor. **Der Chef hat
> ebenfalls nichts an der Rule geändert.** Der wirksamere der beiden Vorschläge ist nicht die
> Besnik-Zeile (Einzelbeleg), sondern eine **generelle Klausel im Abschnitt «Konvention»**: die
> Notiz-Spalte nennt den Routine-Default, die Anrede-Stufe folgt zusätzlich dem **Gewicht des
> konkreten Anliegens** — dreifach unabhängig belegt (Tschopp, Besnik, Hiltmann), und sie heilt alle
> Zeilen zugleich statt einer.
>
> **Zweite Frage aus demselben Lauf, an Raphael — Felix Stählin: welche Firma?**
> `rules/anrede-kontakte.md` Z. 28 führt «**Karl Wächter AG**, Ausführender» (übernommen am 25.07.
> aus dem älteren Wiki-Datenpunkt Fidelity 260714j). Zwei **jüngere**, unabhängige Batches (60/61,
> Belege 02.–13.07.2026) nennen dagegen «**Stählin AG Sanitär**», einmal mit Gewerkbezug
> «Waschküche» — das Wiki ist an dieser Stelle selbst uneinheitlich. Die Anredeform (Du) stimmt in
> beiden Fassungen überein, nur die Firmenzuordnung nicht. **Sind das zwei Firmen desselben Mannes
> oder zwei verschiedene Personen mit demselben Vornamen?** Aus dem Korpus nicht entscheidbar —
> beide Varianten sind belegt. Nach Rule `identifikatoren-verifizieren` ist ein Firmenname ein
> Identifikator, der unverändert in Anschreiben, Adressblatt, Submittentenliste und Werkvertrag
> wandert; eine falsche Firma beim richtigen Vornamen fällt erst beim Empfänger auf. Bis zur
> Klärung: **Firmenzuordnung vor jeder Verwendung in einem Dokument verifizieren.**
>
> ✅ **BEANTWORTET am 29.07.2026 — beide Varianten waren falsch.** Richtig ist **Elektro Stählin AG,
> Zürich** (Elektroinstallationen, BKP 230). «Karl Wächter AG» war eine Fehlannotation (anderer
> Betrieb, Ansprechpartner Mario Di Capua), «Stählin AG Sanitär» das falsche Gewerk. Es sind weder
> zwei Firmen desselben Mannes noch zwei Personen — es ist eine Firma, zweimal falsch etikettiert.
> Vollständige Belegkette und Korrekturliste im Eintrag ganz unten in dieser Datei
> («2026-07-29 — GESCHLOSSEN: Felix Stählin gehört zu Elektro Stählin AG»).

## Offen — Runde 260824 (twin-mail-training, Batch 103)

Quelle: `raw/260824-mailbatch-103.md`. Das sequenzielle Fenster war leer; der Ertrag stammt aus
dem Thread-Rückgriff auf den Strang SBB-Näherbaurecht (Projekt 2414 Thalwil). Die ersten beiden
Fragen richten sich an Raphael, die letzten beiden sind Aufgaben an den Harness.

1. **Versendet der Hub weiterhin ausschliesslich über Apple Mail?** Batch 103 hat einen neuen,
   kostenlosen Gold-Detektor belegt: eine `internetMessageId` auf `@<HOST>.PROD.OUTLOOK.COM`
   beweist, dass die Mail in Outlook/OWA getippt wurde, und dorthin greift der Hub nicht. Der
   Detektor **fällt in dem Moment**, in dem irgendein Connector über Graph `sendMail` verschickt —
   dann trägt auch ein Hub-Erzeugnis eine `PROD.OUTLOOK.COM`-ID und wird fälschlich als Gold
   gelesen. *Facette: Stimme (Gewichtung). Warum: der Detektor spart pro Lauf mehrere
   `read_resource`-Aufrufe, ist aber nur so lange gültig, wie der Versandweg unverändert ist —
   und ein falsch als Gold gelesenes Hub-Erzeugnis ist genau die Echo-Falle, gegen die die ganze
   Gewichtung gebaut ist.*

2. **Wechselst Du zwischen «Geschätzter Herr X» und «Sehr geehrter Herr X» absichtlich?** Am
   14.07. und am 20.07.2026 hast Du denselben Menschen in derselben Sache einmal so und einmal so
   angeschrieben, beide Male von Hand. Mein Schluss: die beiden Formeln sind austauschbar und
   tragen **keine** Distanzstufe. Trifft das zu, oder steckt eine Absicht darin, die ich nicht
   sehe? *Facette: Beziehungsregister. Warum: der Zwilling liest heute eine Wärmestufe in die
   Wahl hinein und baut daraus eine Distanz, die es womöglich gar nicht gibt.*

3. **`stilmetrik.py`: Gruss-Kürzel case-insensitiv zählen.** Das Muster `\bLgr\b` ist
   case-sensitiv und lässt das belegte **`lgr`** in Kleinschreibung durch. Die Änderung ist
   trivial, macht aber die Gruss-Zahlen der Batches 98 bis 103 untereinander unvergleichbar —
   deshalb im Lauf **nicht** vorgenommen. Zu entscheiden: reparieren und den Bruch im Register
   vermerken, oder beim alten Muster bleiben. *Facette: Stimme (Messinstrument).*

4. **Satzlänge als Handsignal nur noch innerhalb einer Gattung erheben.** Batch 102 mass den
   Eigentext länger als den Maschinentext, Batch 103 kürzer; beide Male trennte allein die
   Fehlerdichte. Vorschlag zur Aufnahme in die Erhebungsregeln: die Satzlänge wird nur zwischen
   Texten **derselben Gattung** verglichen, sonst misst sie den Anlass. *Facette: Stimme
   (Messinstrument). Warum: sonst wird in jedem zweiten Batch ein Scheinbefund als Trennbefund
   protokolliert.*

## Offen — Runde 260804 (twin-fragesteller, aus Fidelity-Review 2026-08-04)

Quelle: Drift-Report `outputs/2026-08-04_fidelity.md`. Besonderheit dieses Laufs: erstes
**Wettbewerbs-Gold** (Erläuterungsbericht «PATIO IM PIANO NOBILE», Muttenz 2022) und ein
Mail-Gold, das bereits dreifach destilliert war und deshalb reines Retrieval gemessen hat.
Fidelity 48, tiefster Wert der Serie. Je in 1–2 Sätzen beantwortbar.

1. **Schreibst Du den Erläuterungsbericht selbst, und schreibst Du ihn zuletzt?** Der
   Muttenz-Text leitet den Entwurf aus der Baugeschichte des Gevierts ab (1934 / 1964 / 1966 →
   fünf Ziele → Volumen). Entsteht diese Lektüre **am Anfang** des Wettbewerbs als eigentliche
   Entwurfsgrundlage, oder schreibst Du sie am Schluss als Begründung des fertigen Projekts?
   *Facette: Denken + Arbeitsweise. Warum: entscheidet, ob der Zwilling Dir künftig zuerst eine
   Ortslektüre baut oder erst den Entwurf und dann die Begründung — zwei völlig verschiedene
   Aufträge.*

2. **Warum ist der Erläuterungsbericht Prosa, das Präsentationsskript aber Stichwort-Gerüst?**
   Die belegte Regel sagt fürs Eigendokument «Gerüst statt ausformulierter Sätze»; der
   Abgabetext besteht aus vollen Absätzen. Meine Annahme: der eine geht anonym an eine fremde
   Jury, der andere nur an Dich als Sprecher. Stimmt diese Grenze — **fremde Lektüre = Prosa,
   eigener Gebrauch = Gerüst**? *Facette: Stimme. Warum: ohne diese Grenze rät der Zwilling bei
   jedem neuen Dokumenttyp neu; mit ihr entscheidet eine einzige Frage.*

3. **Ist «PATIO IM PIANO NOBILE» nach dem Entwurf entstanden oder vor ihm?** Der Projektname
   trägt schon die These und wird im Fassadenkapitel eingelöst. Suchst Du den Titel bewusst als
   **Verdichtung des Hauptarguments**, oder ist er ein Etikett, das am Schluss dazukommt?
   *Facette: Stimme + Denken. Warum: schliesst an die noch offene Frage 260801 #5 (benannte
   Szenarien statt Variante 1/2/3) an — beide Male benennst Du statt zu nummerieren, und der
   Zwilling weiss nicht, ob der Name Werkzeug oder Verpackung ist.*

4. **Die Fachplanerspalten: gibst Du eine Textvorgabe mit?** Statik, Brandschutz, Energie und
   Akustik stehen im Muttenz-Plan als eigene, fehlerfreie Spalten der jeweiligen Büros.
   Bekommen die Fachplaner von Dir Länge, Titel und Stossrichtung vorgegeben, oder liefern sie
   frei und Du setzt nur? *Facette: Arbeitsweise. Warum: bestimmt, ob der Zwilling für Dich
   künftig eine Fachtext-Bestellung formuliert oder nur eine leere Spalte ausweist.*

5. **Wo hätte der Zwilling nachschlagen müssen — und tut er es je?** Bei der Bauentscheid-Mail
   stand jeder verfehlte Marker im Wiki, teils wörtlich (Amtskette, Anrede, Listenlogik). Der
   Zwilling hat sie nicht abgerufen, sondern aus dem Grundklang geschrieben. Erwartest Du, dass
   er vor jedem Erzeugnis die einschlägige Facette **gezielt aufschlägt** (langsamer, teurer,
   treffsicherer), oder soll er weiter aus der kompilierten DNA schreiben und nur bei Zweifel
   nachsehen? *Facette: alle sechs. Warum: das ist die Grundsatzfrage hinter drei Läufen mit
   demselben Befund — und sie entscheidet, ob die Artikel überhaupt weiter wachsen sollen.*

## Offen — Runde 260801 (twin-fragesteller, aus Fidelity-Review 2026-08-01)

Quelle: Drift-Report `outputs/2026-08-01_fidelity-modalitaetswechsel.md`. Besonderheit dieses
Laufs: **erstes Dokument-Gold** statt Mail (Präsentationsskript + Fragenkatalog, Projekt 2407
Regensdorf, 2024). Die Fidelity fiel auf **56** — nicht wegen falscher Marker, sondern weil der
Zwilling ausserhalb der Mail keine belegte Notation hatte. Diese fünf Fragen schliessen genau
diese Lücke.

1. **Wann schreibst Du ein Skript, und wann redest Du frei?** Das Skript vom 19.04.2024 ist ein
   Stichwort-Gerüst, kein Vortragstext. Gilt das für jede Bauherren-Präsentation, oder gab es
   den Volltext, weil die Studie neu war? *Facette: Arbeitsweise. Warum: entscheidet, ob der
   Zwilling für Dich künftig Gerüste oder Reden schreibt — die beiden Erzeugnisse haben nichts
   miteinander zu tun.*
2. **«Herr Bopp» im internen Dokument — Höflichkeit oder Zeitstand?** Das Skript nennt den
   Auftraggeber in der Drittform, die Kontaktliste führt ihn heute als Du-Kontakt. Wart Ihr im
   Februar 2024 noch per Sie, oder schreibst Du auch über Du-Kontakte im internen Papier
   «Herr <Nachname>»? *Facette: Beziehungsregister. Warum: entscheidet, ob eine neue Regel
   (Drittform im Eigendokument) entsteht oder nur ein Datumsartefakt vorliegt.*
3. ✅ **GRÖSSTENTEILS BEANTWORTET am 01.08.2026 — gemessen statt gefragt.** Scan über **377
   DOCX** aller Vor-2026-Studien (`AR - 03 Studien`, Suchbegriffe FAVORIT · Advocatus ·
   Nachbarschaft · Baubehörde): «FAVORIT» und «Advocatus diaboli» kommen **ausschliesslich** im
   Regensdorf-Skript vor — das ausformulierte Vier-Achsen-Raster ist ein **Einzelbeleg**. Der
   **Reflex dahinter** ist dagegen mehrfach und über Jahre belegt: den eigenen Entwurf aus der
   Nachbarsicht prüfen und die Nachbarschaft sichtbar machen (Haus Deuber 20.10.2020: «Die
   Darstellung der Umgebung bis zur Parzellengrenze reicht nicht aus. Neu müssen die
   Nachbarschaften aufgezeigt werden» … «ganz zu schweigen vom Anblick für den Nachbar»;
   Regensdorf 19.04.2024; WALD 23.10.2024 als Methodik-Vorspann «Rahmenbedingungen erarbeiten:
   Nachbarschaft»), ebenso die antizipierte Behördenhaltung samt Rückfallebene (Haus Deuber
   08.02.2021: «wäre so oder so eine starke Rückfallebene bei einer allfälligen Rückweisung der
   Baubehörde»; Wädenswil 22.08.2023). **Fazit: die Konstante ist der Reflex, nicht die
   Vierzahl** — so steht er jetzt in [[denken]]; das ausformulierte Raster lebt als Fach-Methode
   im Skill `machbarkeit`. **Rest-offen für Raphael, eine Zeile genügt:** führst Du die
   FAVORIT-Formel bewusst als wiederverwendbares Raster, oder ist sie in Regensdorf entstanden?
4. ✅ **BEANTWORTET am 01.08.2026 — «Zeichensystem ist gewachsen».** Es ist keine Notation mit
   fester Semantik. Konsequenz, eingearbeitet in [[stimme]] und ins Gehirn: «_ » bleibt der
   Default; «>>>» und «>» werden nur in derselben Gattung und zu demselben Zweck übernommen und
   **nie erzwungen**; der Zwilling schaut die Zeichen ab, wo sie belegt sind, leitet aber keine
   Zeichen-Grammatik daraus ab und erfindet keine neuen. *(Ursprüngliche Frage: sind «>>>» /
   «>» / «_ » / «➢» ein bewusstes System? Facette: Stimme.)*
5. **Benennst Du Szenarien immer («UMBAU»/«ENSEMBLE»/«TRANSFORMATION») statt sie zu
   nummerieren?** Und läuft die Namensgebung vor oder nach der Rechnung? *Facette: Stimme +
   Denken. Warum: ein benanntes Szenario trägt schon eine These; der Zwilling schreibt heute
   neutrale «Variante 1/2/3» und verliert damit Deine Zuspitzung.*

## Offen — Gate 260801 (twin-chef, Fidelity-Gate Hub-Chef-Briefing)

Gate über das tägliche Hub-Chef-Briefing an Raphael selbst (Du, kein Anrede-/Grussrahmen,
Rubriken auf eigener Zeile). Fidelity 89, durchgewunken. Befund des Gates: für diese Gattung
— **interner Lagebericht an den eigenen Inhaber** — existiert im Korpus **keine einzige
authentische Goldprobe**. Der Zwilling schreibt sie heute aus der Mail-DNA plus der
Dokument-Gattungsweiche (260801) heraus ab, ohne Vorbild. Zwei Fragen schliessen das.

1. **Wenn Du einen eigenen Fehler in einem internen Bericht festhältst — Ich-Form oder
   agentloses Passiv?** Der Lauf korrigiert seinen eigenen Morgen-Befund und schreibt an
   genau dieser Stelle «Ein leeres Ergebnis war als Defekt gelesen worden», während der
   ganze übrige Bericht in der Ich-Form steht. Belegt ist für die Mail das Gegenteil
   («entschuldige meine Verspätung», «Alles klar. Ich mache das nächstes Mal besser»).
   Gilt die Ich-Zuschreibung auch im Selbstbericht, oder ist das Passiv dort bewusste
   Sachlichkeit? *Warum: entscheidet, ob der Zwilling seine eigenen Fehlbefunde künftig
   benennt oder verwischt — die Stelle mit dem höchsten Ehrlichkeitswert im ganzen
   Erzeugnis.* → [[haltung]], [[stimme]]

2. **Trägt der interne Bericht die Fundstelle wie ein Aussen-Erzeugnis?** Der Lauf schreibt
   «Beides ist als Lehre in die Wissensbasis zurückgeflossen», ohne KB oder Report zu
   nennen — während er jeden Betriebsbefund mit Datum, Zeitstempel und Commit-Hash belegt.
   Erwartest Du im Bericht an Dich selbst dieselbe Fundstellen-Disziplin (welche KB, welcher
   Report), oder reicht Dir die Meldung, dass es abgelegt ist? *Warum: der Bericht ist die
   einzige Stelle, an der Du den Rücklauf kontrollieren kannst; ohne Pfad ist er nicht
   nachprüfbar.* → [[fachsignatur]], [[arbeitsweise]]

## Offen — Runde 260729 (twin-fragesteller, aus Fidelity-Review 2026-07-29)

Quelle: Drift-Report `outputs/2026-07-29_fidelity.md`. Besonderheit dieses Laufs: beide
gezogenen Golds (WOMA-Zahlungserinnerung 16.09.2025, Druckerkosten-Rechnung 25.09.2025) waren
bereits ausgewertet — der Lauf hat deshalb **keine** neuen Marker erzeugt, sondern zwei bereits
offene Fragen mit je einem Datenpunkt aus dem Bestand angereichert (siehe #1 und #2) und drei
neue Fragen gefunden. Je in 1–2 Sätzen beantwortbar.

1. **Kostendurchlauf statt Auftrag — fällt der Auftrags-Dank deshalb weg?** Die Druckerkosten-
   Rechnung RE-00073 an Fabio Don (25.09.2025) ist eine Rechnung mit Belegcharakter und müsste
   nach der belegten Regel (260708: finale Rechnungs-/Schluss-Liefermail → Service-Satz **plus**
   «Ich bedanke mich für den Auftrag») den Auftrags-Dank tragen. Sie tut es nicht. Liegt das
   daran, dass Du hier nichts geleistet, sondern nur **weiterverrechnet** hast (Druckerkosten,
   Mietvertrag und Zählerstand als Nachweis im Anhang)? *Warum: würde die Auftrags-Dank-Regel um
   die Grenze «eigener Auftrag ↔ Kostendurchlauf» ergänzen, statt den Zwilling jede Rechnung
   bedanken zu lassen — er hat in diesem Lauf genau diesen Fehler gemacht.* → [[stimme]], [[haltung]]

2. **Warum «Sehr geehrter Herr Don» an einen Sozial-Peer?** Fabio Don ist im Wiki als
   verspieltes Sozial-Peer-Du kartiert («Tschülinonen», «Hallo Fabio»). In der Rechnungsmail
   vom 25.09.2025 schreibst Du ihm im vollen, kalten Sie. Schaltet eine Rechnung das Register
   grundsätzlich auf Sie hoch, auch bei einem Du-Kontakt — oder war das ein Beleg, der intern
   weitergereicht bzw. verbucht werden musste und deshalb zitierfähig sein sollte? *Warum: klärt,
   ob der Zwilling bei Geldbelegen an vertraute Kontakte das Register anheben soll; die
   bestehende Regel sagt nur etwas über den GRUSS bei Geldbezug, nichts über die ANREDE.*
   → [[beziehungsregister]], [[stimme]]

3. **Wie viel Konsultation ist realistisch?** Dieser Lauf hat auf derselben Mail deutlich
   schlechter rekonstruiert als der Lauf zwei Tage zuvor (Stimme 68 statt 87, Haltung 62 statt
   92), weil Marker, die im Wiki stehen, nicht gefunden wurden — `stimme.md` ist auf 235 KB
   gewachsen. Sollen die Facetten-Artikel gekürzt/konsolidiert werden (Risiko: belegte
   Feinheiten gehen verloren), oder bleibt die Länge und der Zwilling arbeitet konsequent mit
   gezielter Suche statt Volllektüre? *Warum: entscheidet, ob die Wissensbasis auf Vollständigkeit
   oder auf Abrufbarkeit optimiert wird — beides zugleich geht bei dieser Grösse nicht mehr.*
   → Querschnitt (alle Facetten)

**Anreicherung bestehender Fragen (keine neuen Fragen, nur Datenpunkte):**

- **→ Runde 260725b #4 (Cc-Stapelung):** Gegenbeispiel im Bestand gefunden. Die
  WOMA-Zahlungserinnerung (16.09.2025) ist derselbe Anlasstyp — Mahnkontext, Du-Kontakt
  Christoph Bopp im Cc — und stapelt **nicht**: die Anrede lautet allein «Geschätzter Herr
  Rohner». Wenn Herr Tobler im 260725b-Beleg tatsächlich nur mitlas, widersprechen sich die
  beiden Fälle; war er dagegen Ansprechpartner der Buchhaltung, ergänzen sie sich zur Regel
  «gestapelt wird nur, wer Adressat des Anliegens ist». Die Frage bleibt damit offen, ist aber
  jetzt an einem zweiten Fall aufgehängt.
- **→ Runde 260727d #1 (Service-Satz trotz Begehren):** zweiter privatwirtschaftlicher Fall.
  Die Zahlungserinnerung ist eine Forderung und trägt den Service-Satz «Bei Fragen oder
  Unklarheiten stehe ich Ihnen jederzeit gerne zur Verfügung» — wie schon die
  CNCEST-Reklamation. Die belegte Ausnahme «Begehren ohne Service-Satz» stammt dagegen
  ausschliesslich aus Amts-Sprechakten (ESTV, 260719). Verdichtet die vermutete Trennlinie
  Amt ↔ Privatwirtschaft auf zwei Fälle; entschieden ist sie damit nicht.

## Offen — Runde 260727k (twin-fragesteller, aus Fidelity-Review 2026-07-27k)

Quelle: Drift-Report `outputs/2026-07-27k_fidelity.md` (Gesamt-Fidelity ~86; erstmals `rj@`
September 2025 gezogen — Yorck-Bildregie-Korrektur mit Titel-Opener statt Anrede, Rohner-
Zahlungserinnerung, Bopp-Nackt-Rückfrage). Hauptbefund: ein wiederkehrender Formalisierungs-
Reflex des Zwillings im engsten Peer-Du. Je in 1–2 Sätzen beantwortbar.

1. **„Allerletzte Bitte:" als Titel-Opener statt jeder Anrede — Dein Mittel für dringliche,
   mehrpunktige Korrekturen im engsten Peer-Du, oder situativ (spätabendliche letzte Iteration
   vor einem Abgabetermin)?** Bei Yorck (01.09.2025) ersetzt „Allerletzte Bitte:" komplett die
   sonst übliche Anrede „Hoi Yorck". Setzt Du diesen Titel-Trick bewusst ein, wenn Du eine
   Iterationsserie als „hoffentlich letzte Runde" markieren willst, unabhängig vom Kontakt, oder
   ist das eine Yorck-spezifische Marotte in diesem einen Projekt? *Warum: würde einen neuen,
   generalisierbaren Opener-Typ verankern statt eines Einzelbelegs.* → [[stimme]]
2. **Grussloser Schluss auch bei einer inhaltlich dichten Mehrpunkt-Korrektur — reicht dafür
   „engster, eingespielter Peer-Du", oder braucht es zusätzlich Zeitdruck/Späte-Uhrzeit?** Die
   Yorck-Mail (16:48 Uhr) hat zwei echte inhaltliche Punkte, trotzdem keinen Gruss. Bisher kannte
   der Zwilling den grusslosen Schluss nur bei kurzen Statusfragen. Ist die Vertrautheit des
   Kontakts allein hinreichend, oder spielt die Tageszeit/der Zeitdruck (Projektdeadline) mit?
   *Warum: würde klären, ob der Zwilling grusslose Schlüsse bei substanziellen Peer-Du-Korrekturen
   generell anbieten darf.* → [[stimme]], [[arbeitsweise]]
3. **Formalisierungs-Reflex allgemein: strukturierst Du im engsten, eingespielten Peer-Du bewusst
   NIE (Nummerierung/Rahmen), auch wenn eine Mail mehrere Punkte trägt?** Über mehrere heutige
   Funde hinweg (Yorck-Korrektur hier, Gratulations-Nachsatz in 260727j) zeigt sich: der Zwilling
   neigt dazu, Peer-Du-Mails zu formalisieren, wo Du im echten Original roh/spontan bleibst. Ist
   „möglichst wenig Form" bei Dir ein bewusstes Prinzip im engsten Vertrauensregister (die
   Beziehung trägt die Kürze), oder eher Tagesform/Tippgeschwindigkeit? *Warum: würde eine
   Querschnitts-Regel für `twin-arbeitsweise` liefern statt vieler unverbundener Einzelbelege.*
   → [[arbeitsweise]]
4. **Zahlungserinnerung an eine Firmen-Zahlstelle (Rohner/WOMA) — bleibt „wir" bei JEDER
   Buchhaltungs-/Rechnungshandlung Standard, auch wenn Du als Einzelunternehmer faktisch allein
   handelst?** Die Rohner-Mail trennt sauber „Wir möchten Sie erinnern" (Handlung) von „stehe ich
   Ihnen zur Verfügung" (persönliche Bitte) — exakt die bestehende Regel. Gilt „wir" bei JEDER
   Rechnungs-/Mahnhandlung, auch informelleren (z.B. an einen Du-Bauherrn), oder ist es an das
   Sie-Register gekoppelt? *Warum: würde die Reichweite der wir/ich-Regel über das Sie-Register
   hinaus prüfen.* → [[haltung]]

## Offen — Runde 260727j (twin-fragesteller, aus Fidelity-Review 2026-07-27j)

Quelle: Drift-Report `outputs/2026-07-27j_fidelity.md` (Gesamt-Fidelity ~84; erstmals gezielt
`mail@raphaeljans.ch` Dezember 2025 und ein bisher ungenutztes August-2025-Fenster auf `rj@`
gezogen — Bio-Mio-Konsumentenreklamation Du, vertraulicher Unterlagenversand an Gerry,
Ultra-Kurz-Chat „Busy oder bok"). Fünf neue, unbelegte Einzelfunde. Je in 1–2 Sätzen beantwortbar.

1. **Kein Grusswort vor der Signatur bei einer privaten Konsumenten-Du-Mail — bewusstes
   Minimalmuster oder reines Mobile-Artefakt?** Bei der Bio-Mio-Reklamation (19.12.2025)
   fällt der Text nach «stehe ich Dir jederzeit gerne zur Verfügung» direkt in den
   Signaturblock, ganz ohne «Lieber Gruss»/«Lgr»/irgendein Wort. Lässt Du bei kurzen,
   privaten (nicht geschäftlichen) Konsumenten-Anliegen das Grusswort bewusst weg, weil der
   Service-Satz bereits als Schluss reicht, oder war das schlicht die Mobile-Tastatur, die
   das Wort vergessen hat? *Warum: unterscheidet einen echten Minimalstil von einem reinen
   Tippfehler-Artefakt, das der Zwilling NICHT übernehmen sollte.* → [[stimme]]
2. **Emoji in einer privaten Reklamation trotz Beschwerde-Ton — hängt das Emoji an
   „privat" statt an „warm-sozial"?** Mitten in der Bio-Mio-Beschwerde schreibst Du «habe
   mich natürlich gefreut😊» bei einem echten Überraschungsmoment. Ist die Regel eigentlich
   nicht „nur warm-soziale Mails", sondern „jede private/nicht-geschäftliche Du-Mail, sobald
   ein echter Moment der Freude/Überraschung auftaucht" — auch wenn der Rest der Mail eine
   Beschwerde ist? *Warum: würde die Emoji-Achse von warm-sozial auf privat-vs-geschäftlich
   verschieben, was viel mehr Situationen freigäbe.* → [[stimme]]
3. **Reziproke Orts-Einladung „…oder ich komme zu Dir" — Dein Standard, oder war das bei
   Gerry situativ (neues Büro, gerade eröffnet)?** Bisher kannte der Zwilling nur die
   einseitige Einladung „Komm doch vorbei". Bietest Du die reziproke Variante bewusst an,
   wenn Du selbst gerade etwas Neues zu zeigen hast (neues Büro), oder ist das dein
   genereller Standard bei jeder Vorbeikommen-Einladung an einen Du-Kontakt? *Warum: würde
   die bisher einseitige Geste zu einer generellen reziproken Regel erweitern oder auf den
   Anlass „etwas Neues zeigen" begrenzen.* → [[arbeitsweise]], [[stimme]]
4. **„Hey," ganz ohne Namen — Dein spontanster Chat-Opener, unabhängig vom Kontakt?** Der
   zweite Beleg («Busy oder bok», 14.08.2025) zeigt «Hey,» ohne jeden Namen. Ist das für Dich
   der lockerste, spontanste Opener überhaupt (noch vor «Hey <Vorname>»), den Du bei
   Chat-artigen Ultra-Kurz-Nachrichten an sehr vertraute Kontakte reflexartig setzt,
   unabhängig davon wer am anderen Ende ist? *Warum: würde die Peer-Du-Opener-Skala um eine
   fünfte, namenlose Stufe ergänzen.* → [[stimme]]
5. **Warmer Nachsatz NACH dem Gruss („lgr / Gratuliere für die Abgabe!") — spontane
   Nachbemerkung oder bewusste Reihenfolge?** Fällt Dir bei Ultra-Kurz-Chats manchmal erst
   nach dem Sign-off noch ein zusätzlicher, warmer Gedanke ein, den Du dann einfach anhängst,
   statt die Mail neu zu ordnen? *Warum: würde eine „Chat-Postskriptum"-Regel verankern, die
   der Zwilling bisher nicht kennt und stattdessen reflexhaft "logisch" ordnen würde.*
   → [[arbeitsweise]], [[stimme]]

## Offen — Runde 260727g (twin-fragesteller, aus Fidelity-Review 2026-07-27g)

Quelle: Drift-Report `outputs/2026-07-27g_fidelity.md` (Gesamt-Fidelity 89; frisches Fenster
`mail@raphaeljans.ch` Juni 2026, drei neue Golds: HEV-Schweiz-Bestellung, nackte Statusfrage an
Cekdar Duran/Gruner, UBS-Mail zur Firmengründung). Je in 1–2 Sätzen beantwortbar.

1. **Duran-Register aktuell:** `beziehungsregister.md` führt Cekdar Duran (Gruner AG) mit
   «Geschätzter Herr Duran» (Sie, gestapelte Team-Anrede). Am 12.06.2026 schriebst Du ihm aber
   eine völlig nackte Frage ohne jede Anrede («Alles aklar mit den Auflagepunkten?»). Ist Ihr
   das Verhältnis inzwischen auf Du gewechselt, oder fällt bei einer derart schnellen
   Status-Nachfrage jeder Rahmen weg, unabhängig vom Sie/Du-Register? *Warum: entscheidet, ob
   die Nullform-Familie auch auf Sie-Kontakte übertragbar ist.* → [[stimme]], [[beziehungsregister]]
2. **Nullform bei Fragen statt nur Aussagen:** Die bisher belegte Nullform (keine Anrede/Gruss/
   Signatur) trat bislang bei Weiterleitungen und internen Auftragserteilungen auf. Gilt sie bei
   Dir generell auch für kurze Ja/Nein-Rückfragen an eingespielte Projektkontakte, oder war der
   Duran-Fall ein Einzelfall (z.B. Handy-Diktat unterwegs)? *Warum: klärt, ob der Zwilling diese
   Nullform aktiv anbieten darf, sobald eine reine Statusfrage ansteht.* → [[stimme]], [[arbeitsweise]]
3. **Kurzsignatur auch bei Bank-/Finanzkontakten:** In der UBS-Mail (27.06.2026) schliesst Du mit
   «Freundliche Grüsse Raphael Jans» ohne vollen Signaturblock — bisher war die Kurzsignatur nur
   für Behörden belegt. Ist die Kurzsignatur generell Dein Standard bei jedem eingespielten
   Einzelkontakt (Bank, Notar, Behörde), sobald der Erstkontakt vorbei ist, unabhängig von der
   Branche? *Warum: verallgemeinert einen bisher auf Behörden begrenzten Marker.* → [[stimme]]

## Offen — Runde 260727f (twin-fragesteller, aus Fidelity-Review 2026-07-27f)

Quelle: Drift-Report `outputs/2026-07-27f_fidelity.md` (Gesamt-Fidelity ~68; erstmals ein rein
privat-soziales Register auf `mail@raphaeljans.ch` erschlossen, April 2026, ausserhalb der bisher
genutzten Fenster Jan/Feb — Hub12-Event-Weiterleitung an Peter Weisser Mundart-Du, Ultrakurz-Chat-
Faden mit Rafael Biolley). Kernbefund: die bisherige «Gegenüber spiegelt Mundart»-Regel ist weder
notwendig noch hinreichend; Kontakt-spezifische Vertrautheit sticht. Je in 1–2 Sätzen beantwortbar.

1. **Welche konkreten Kontakte sind für Dich «Mundart-Normalfall», unabhängig vom Anlass oder davon,
   ob die Gegenseite selbst Dialekt schreibt?** Peter Weisser bekam vollen Mundart-Ton («Hey Peter,
   weich wie cool wenn Du au chiemsch? Wör mi freie, lgr»), obwohl er in diesem Faden nicht selbst
   gespiegelt hatte; mit Rafael Biolley (der selbst «Was isch das?» schrieb) bliebst Du neutral-
   hochdeutsch. Ist es die Länge/Wärme der Beziehung (Peter: langjähriger Baumanagement-Partner),
   die den Ausschlag gibt, unabhängig vom Sprechakt der Gegenseite? *Warum: würde die bisherige
   generische Spiegel-Regel durch eine kontaktspezifische Liste ersetzen (ähnlich der
   Du/Sie-Kontaktliste in `anrede-kontakte.md`), statt sie situativ falsch anzuwenden.*
   → [[stimme]], [[beziehungsregister]]
2. **«Hey <Vorname>» als weitere, bisher unbekannte Peer-Du-Eröffnungsstufe — wo reiht sie sich zu
   Hoi/Hallo/Salut/Lieber ein?** Der Zwilling kennt bereits vier Stufen (Fidelity 260610/260725d);
   «Hey Peter» ist ein fünfter, bisher unbelegter Opener. Ist «Hey» eine spontane, besonders lockere
   Variante (eher Mundart-/Chat-Kontext als E-Mail-Förmlichkeit), oder austauschbar mit «Hoi»? *Warum:
   schliesst die in `stimme.md` offen vermerkte Lücke «Hoi/Hallo/Lieber/Hey» erstmals mit einem
   echten Beleg für «Hey».* → [[stimme]]
3. **Ultrakurzer Chat-Faden ohne jede Anrede/Gruss/Signatur bei einem lockeren, aber noch jungen
   Networking-Kontakt (nicht Freelancer/Produktion) — generalisiert das die «rahmenlose
   Faden-Antwort»?** Bisher war dieses Muster nur im hochfrequenten 3D-/Kreativ-Freelancer-Faden
   belegt (Fidelity 260724 #2, offene Frage). Der Biolley-Faden («was es ist», «ja wenn du
   mitkommst und du deine Firma präsentierst») bestätigt es in einem dritten Kontext: privates
   Event-Networking. Reicht «mehrfach am selben Tag im selben Faden» als genereller Auslöser,
   unabhängig vom Kontakttyp? *Warum: würde die bisher nur vermutete Verallgemeinerung
   bestätigen.* → [[arbeitsweise]], [[stimme]]
4. **Beiläufiger Selbstmarketing-Halbsatz in einer privaten Chat-Antwort («…und du deine Firma
   präsentierst») — bewusstes Networking-Reflex auch in der lockersten Alltagskommunikation?** Du
   knüpfst die Zusage zur Teilnahme an Biolleys Firmenpräsentation, obwohl die Mail rein privat-sozial
   und einzeilig ist. Ist das ein genereller Reflex (Gelegenheiten für Sichtbarkeit/Vernetzung auch
   in Privatmails anzusprechen), oder war das hier situativ? *Warum: würde die Haltung-Facette um
   einen Networking-Instinkt jenseits klassischer Akquise-Mails erweitern.* → [[haltung]]

## Offen — Runde 260727e (twin-fragesteller, aus Fidelity-Review 2026-07-27e)

Quelle: Drift-Report `outputs/2026-07-27e_fidelity.md` (Gesamt-Fidelity ~74; erstmals gezielt in
`mail@raphaeljans.ch` Jan/Feb 2026 gesucht statt im mehrfach gesättigten KISPI-/rj@-Korpus —
Baurekursgericht-Gesuchsrückzug Sie, Herzog-de-Meuron-Website-Brief an Hleb Englisch). Drei
substanzielle Funde (Gesuchsrückzug, Fixpreis+Scope-Grenze, Design-Referenz auf Website
uebertragen), einer davon mit spürbarer Facetten-Reibung. Je in 1–2 Sätzen beantwortbar.

1. **Fixpreis-Vorschlag bei der eigenen Beauftragung — Dein genereller Reflex, sobald Du selbst
   auftraggebende Partei bist, oder situativ beim Website-Hobby-Projekt?** Bei Hleb schlägst Du
   USD/EUR 500 als Fixpreis vor, statt einen Stundenrahmen offen zu lassen. Würdest Du bei einer
   grösseren eigenen Beauftragung (z.B. Steuerberater, IT-Dienstleister) ebenfalls zuerst einen
   Fixpreis anbieten, oder ist das auf kleine, klar geschätzte Digitalprojekte beschränkt? *Warum:
   würde die neue Fixpreis-Disziplin-Regel von der Grössenordnung des Auftrags lösen oder gezielt
   daran binden.* → [[haltung]]
2. **«Dear Hleb, I hope you are well» statt «Hi Hleb» — ein bewusster Formalitäts-Schub nach einer
   längeren Pause/eigenem Versäumnis, oder Tagesform?** Mit Hleb bist Du sonst durchgehend bei «Hi
   Hleb» (Fidelity 260725e). Hier, nach einer eigenen dokumentierten Verzögerung («I have not yet
   had the chance…»), eröffnest Du förmlicher. Hebst Du die Anrede-Formalität an, wenn Du selbst
   zuerst ein Versäumnis einräumen musst, auch im sonst lockeren Englisch-Freelancer-Register?
   *Warum: würde die bisher als stabil geltende «Hi»-Registerkonstante um einen situativen
   Formalitäts-Trigger ergänzen.* → [[stimme]], [[beziehungsregister]]
3. **Echte Fragen und harte Anforderungen in EINER Bullet-Liste gemischt (Englisch/Freelancer) —
   gilt die deutsche Trennregel «Nummeriert nur echte Einzelfragen, Spezifikationen bleiben offene
   Liste» hier nicht, oder ist das Englische/der lockere Freelancer-Kontext die Ausnahme?** Die
   Hleb-Mail listet Ja/Nein-Fragen («Do you require an advance payment?») und Hart-Anforderungen
   («Malware infection must be completely excluded this time.») ungetrennt in einer Liste. *Warum:
   klärt, ob die bestehende Trennregel nur fürs Deutsche/Formelle gilt oder generell.*
   → [[arbeitsweise]]

## Offen — Runde 260727d (twin-fragesteller, aus Fidelity-Review 2026-07-27d)

Quelle: Drift-Report `outputs/2026-07-27d_fidelity.md` (Gesamt-Fidelity ~78; drei frische Golds aus
bislang ungenutzten Quellen — `mail@raphaeljans.ch` und ein frisches Januar-2026-Fenster auf rj@ —
CNCEST-Konsumentenreklamation Sie, Peter-Weisser-Neujahrs-Mehrprojekt-Update Du, nackter Sie-Gruss
im Transaktions-Nachfass). Drei neue Einzelbelege, alle mit spürbarer Facetten-Relevanz. Je in 1–2
Sätzen beantwortbar.

1. **Service-Satz trotz hartem Rechtsbegehren beim anonymen Firmen-Support — Regel oder
   Tagesform?** In der CNCEST-Reklamation («Damit liegt keine Vertragserfüllung vor», «Eine
   Verantwortung meinerseits besteht nicht») hängst Du trotzdem den Service-Satz «Bei Fragen oder
   Unklarheiten stehe ich Ihnen jederzeit gerne zur Verfügung» an, obwohl die bisherige Regel
   Antrag/Gesuch OHNE Service-Satz schliessen lässt (Fidelity 260719, dort Amt/ESTV). Bleibt der
   Service-Satz bei einer Konsumentenreklamation an ein anonymes Firmen-Postfach IMMER stehen,
   unabhängig von der Härte des Begehrens, während er nur bei Amts-/Behörden-Gesuchen entfällt?
   *Warum: würde die Service-Satz-Systematik um die Trennlinie B2C-Firma vs. Amt/Behörde
   ergänzen statt sie als unerklärten Einzelfall stehen zu lassen.* → [[stimme]], [[fachsignatur]]
2. **Ortsnamen als Block-Header bei einem Mehrprojekt-Update an denselben Kontakt — ab wie
   vielen parallelen Projekten wechselst Du von Fliesstext auf fette Header?** Bei Peter Weisser
   (3 Projekte: Emmen/Zürich/Oerlikon, 05.01.2026) fettest Du die Ortsnamen als Zwischentitel.
   Würdest Du das bei nur 2 Projekten auch schon so gliedern, oder bleibt das bei 2 Fliesstext
   mit Leerzeile (wie die bereits belegte Themen-Clusterung, 260727b #5)? *Warum: würde die neue
   Ortsnamen-Header-Regel mit einer konkreten Schwelle versehen statt sie unbegrenzt auf jedes
   Mehrprojekt-Update anzuwenden.* → [[arbeitsweise]]
3. **Nackter Gruss im Sie-Nachfass — ab welcher Fadenlänge/Etabliertheit kippt es?** Der CNCEST-
   Nachfass (09.01.2026) trägt nur «Gruss / Raphael Jans», keinen Block, vier Tage nach der
   ausführlichen FG+Block-Reklamation im selben Faden. Ist die Schwelle «der Faden ist bereits
   im dritten/vierten Austausch» oder eher «die konkrete Mail verlangt nur eine Ein-Satz-Bitte,
   unabhängig von der Fadenlänge»? *Warum: würde klären, ob der Zwilling den nackten Gruss an der
   Fadentiefe oder an der Mail-Kürze selbst festmacht — Konsequenz für alle künftigen Sie-
   Kurznachfässe.* → [[stimme]], [[arbeitsweise]]
4. **Neujahrswunsch als Geschäfts-Opener, gekoppelt an eine persönliche Nachfrage («Bist Du
   wieder zurück zur Arbeit?») — Dein fester Jahreswechsel-Reflex bei jedem Du-Geschäftspartner
   im Januar, oder situativ bei Peter?** Falls Regel: koppelst Du den Neujahrswunsch grundsätzlich
   an eine echte Nachfrage zur Person (nicht nur eine Floskel), bevor die Sachthemen folgen?
   *Warum: die KB kennt bisher keinen Jahreswechsel-Marker — eine Bestätigung würde einen neuen,
   saisonal wiederkehrenden Öffner verankern.* → [[stimme]], [[beziehungsregister]]

## Offen — Runde 260727b (twin-fragesteller, aus Fidelity-Review 2026-07-27b)

Quelle: Drift-Report `outputs/2026-07-27b_fidelity.md` (Gesamt-Fidelity ~87; drei frische,
unmittelbar aufeinanderfolgende Golds desselben Tages/Fadens 23.–24.10.2025, Christoph Bopp/WOMA,
STWEG Ebmatingen — Auftragsbestätigung/Geschätzter, Vorabskizze-Lieferung/Lieber, Referenzplan-
Feedback+Telefonat-Vorschlag/Hallo). Fünf Funde, alle Einzelbelege. Je in 1–2 Sätzen beantwortbar.

1. **«Hallo Christoph» für die knappste, sachlichste Mail des Tages — ist «Hallo» bei Dir generell
   die neutralste/am wenigsten gerahmte Du-Stufe, sobald eine Nachricht rein transaktional ist (Feedback
   quittieren + Vorschlag), unabhängig davon, ob der Kontakt ein Freelancer oder ein längst
   eingespielter Geschäftspartner ist?** Bisher kannte der Zwilling «Hallo» nur beim deutschsprachigen
   Freelancer (Yorck). Am selben Tag schriebst Du demselben Kontakt (Bopp) auch «Geschätzter» und
   «Lieber» — «Hallo» kam exakt bei der Mail ohne jede Eröffnungs-Wärme (reines Feedback + Call-
   Vorschlag). Ist der Auslöser die **Sachlichkeit/Kürze der konkreten Mail**, nicht die Kontaktart?
   *Warum: würde «Hallo» vom Freelancer-Spezialfall zur allgemeinen «neutralste Du-Stufe»-Regel
   erweitern, unabhängig vom Kontakttyp.* → [[beziehungsregister]]
2. **Wechselst Du «Hoi»/«Hallo» am selben Tag/Kontakt je nach Tagesordnung, oder war das hier
   Zufall?** Falls Frage 1 mit Ja beantwortet wird: gibt es einen Unterschied zwischen «Hoi» und
   «Hallo» als operative Stufen, oder sind sie für Dich austauschbare Varianten ohne Bedeutungsdelta
   (wie «Bester»/«Lieber Gruss»)? *Warum: würde klären, ob der Zwilling «Hoi» und «Hallo» als echte
   Stufen unterscheiden soll oder als Synonyme behandeln darf.* → [[beziehungsregister]], [[stimme]]
3. **«Gruss Raphael» ohne Adjektiv — Dein Signal für besondere Eile/Kürze, oder reiner Zufall/
   Tagesform?** Bei einer knappen Termin-Bestätigung (Bopp, 23.10.2025) schliesst Du mit dem nackten
   «Gruss Raphael» statt «Lieber Gruss». Ist das eine bewusst noch knappere Stufe unterhalb von
   «Lieber/Bester Gruss» für besonders eilige, rein sachliche Kurzmails? *Warum: bisher nur 1 Beleg —
   eine Bestätigung würde eine weitere Minimalstufe der Gruss-Skala verankern.* → [[stimme]]
4. **YYMMDD-Zahlen für Termine auch in Mails an Dritte (nicht nur Dateinamen) — Dein generelles
   Kurzformat, wenn Du mehrere Termine knapp auflistest?** Bei der Bopp-Auftragsbestätigung listest Du
   Termine als «251024 1200 Zwischenabgabe / 251029 - - - - Beendung» statt ausgeschriebenem Datum.
   Nutzt Du dieses Format bewusst auch im Mail-Fliesstext (nicht nur in Dateinamen), sobald mehrere
   Termine kompakt aufgelistet werden? *Warum: würde die Dateinamen-Konvention als aktives
   Kommunikationsmittel im Fliesstext verankern, nicht nur als Ablage-Regel.* → [[stimme]],
   [[fachsignatur]]
5. **Ab wie vielen Themenblöcken clusterst Du eine «_ »-Liste mit Leerzeilen?** Bei der Referenzplan-
   Feedback-Mail gliederst Du sechs Punkte in drei Zweiergruppen mit Leerzeilen dazwischen. Würdest
   Du das bei nur zwei Themenblöcken (vier Punkten) auch schon so machen, oder erst ab drei
   Themenblöcken/mehr als vier Punkten? *Warum: würde die neue Cluster-Regel mit einer konkreten
   Schwelle versehen, statt sie unbegrenzt auf jede Mehrfach-Liste anzuwenden.* → [[arbeitsweise]]

## Offen — Runde 260727 (twin-fragesteller, aus Fidelity-Review 2026-07-27)

Quelle: Drift-Report `outputs/2026-07-27_fidelity.md` (Gesamt-Fidelity ~86; drei frische, bislang
unbearbeitete authentische Golds 17.–24.07.2026 via M365-CLI — Levi Hiltmann/TeKoSi Du-Ultrakurz-
Terminbestätigung, Thomas Wiedmer/SBB Sie-Vollzugszusage, Roman Steinmann/Nova Investor-Du-Rechnungs-
übergabe). Zwei substanzielle Funde (Ferien-Kontextbezug statt Verifikationsfrage, reflexives
«veranlassen»), ein Bestätigungsfund (dritter Beleg «Geschätzter» als Inhalts-Spike). Je in 1–2 Sätzen
beantwortbar.

1. **Persönlicher Ferien-/Abwesenheitsbezug als Schluss einer Rechnungs-/Beleg-Übergabemail — Dein
   generelles Mittel, sobald Du die Abwesenheit des Empfängers kennst, oder war das bei Roman situativ?**
   Bei der KV-Zusammenstellung + Rechnung an Roman Steinmann (17.07.2026) schliesst Du nicht mit der
   sonst belegten Verifikationsfrage («Kann ich die so rauslassen?»), sondern mit «Ich denke es macht
   Sinn die Angebot nach Deiner Rückkehr aus den Ferien zu besprechen und einzuordnen.» Baust Du eine
   Dir bekannte Abwesenheit (Ferien, Reise, Termin) bewusst als warme, terminlich sinnvolle Brücke in
   eine sonst prozedurale Übergabemail ein, wann immer Du davon weisst? *Warum: der Zwilling griff im
   Selbsttest reflexartig zur bekannten Verifikationsformel und verfehlte diesen persönlichen Bezug —
   ohne Bestätigung bleibt der Marker ein nicht generalisierbarer Einzelbeleg.* → [[stimme]]
2. **«Ich werde veranlassen, dass …» als eigene Vollzugszusage — Dein Standardausdruck im formellen
   Sie, oder Tagesform?** Gegenüber der SBB (20.07.2026) sagst Du die Weiterleitung unterzeichneter
   Dokumente mit «Ich werde veranlassen, dass …» zu — bisher kanntest Du «veranlassen» nur als Bitte AN
   eine Behörde («Bitte veranlassen Sie …»). Nutzt Du «veranlassen» bewusst auch reflexiv für die eigene
   Zusage im administrativ-formellen Sie-Register, oder wäre «Ich werde dafür sorgen, dass …» genauso
   naheliegend für Dich? *Warum: würde einen zweiten, bisher unbekannten Anwendungsfall des Wortes
   verankern statt ihn nur einseitig (als Bitte) zu kennen.* → [[stimme]], [[fachsignatur]]
3. **«Geschätzter Levi» bei der Auftragserteilung an einen ganz neuen Kontakt (Erstmandat, keine
   Vorgeschichte) — reicht ein einziges gewichtiges Ergebnis (Kostendach-Zusage), damit «Geschätzter»
   greift, auch OHNE jede vorherige Beziehung?** Bei Levi Hiltmann (TeKoSi) war die Auftragserteilung
   (22.07.2026) bereits die zweite oder dritte Mail des Kontakts überhaupt. Reicht Dir ein einziges
   gewichtiges Ergebnis, um sofort auf «Geschätzter» zu wechseln, oder briefst Du bei einem taufrischen
   Kontakt zuerst etwas vorsichtiger («Sehr geehrter Herr Hiltmann»)? *Warum: würde die «Geschätzter
   als Inhalts-Spike»-Regel von der Beziehungsdauer vollständig entkoppeln — bisher waren alle Belege
   (Tschopp, Besnik) längst eingespielte Kontakte.* → [[beziehungsregister]]
4. **Ultrakurzer Du-Reply ohne jeden Signaturblock («Bis später. / Lieber Gruss / Raphael») bei einem
   noch jungen, aber bereits mandatierten Geschäftskontakt — ab wann fällt die Signatur weg?** Bei
   Levi (TeKoSi, Mandat erst 2 Tage alt) verzichtest Du in der Terminbestätigung bereits vollständig auf
   Titel/Telefon/Adresse. Ist das reine Mobile-Artefakt oder fällt die volle Signatur bei Dir grundsätzlich
   weg, sobald ein Faden schon einmal einen vollen Block getragen hat (das gilt dann als «bekannt»)?
   *Warum: schärft die bestehende «Gruss-Block folgt Länge/Mobile»-Regel um die Schwelle bei ganz
   jungen Mandaten.* → [[stimme]], [[arbeitsweise]]

## Offen — Runde 260726 (twin-fragesteller, aus Fidelity-Review 2026-07-26)

Quelle: Drift-Report `outputs/2026-07-26_fidelity.md` (Gesamt-Fidelity ~88; drei frische, bislang
unbearbeitete authentische Golds 22.–24.07.2026 via M365-CLI — Benjamin Kübler/Gruner Sie-Fachfrage
Bodenheizung, Furrer/Gantenbein gestapelte Behörden-Sie-Abänderungsplan-Eingabe, Albin Du-Kurzfrage
Fachplanersitzung). Ein substanzieller Neufund (gemischtes Sie-Register nach Beziehungs-Rezenz statt
Formalität), ein Bestätigungsfund (Fliesstext-Fragen an engagierten Fachplaner, schärft 260725h). Je
in 1–2 Sätzen beantwortbar.

1. **«Guten Tag Herr Furrer (AfB), sehr geehrter Herr Gantenbein (SRZ)» — folgt das gemischte
   Sie-Register wirklich der Aktualität des Kontakts (Furrer erst Stunden zuvor als neue
   Ansprechperson eingeführt → wärmeres «Guten Tag»; Gantenbein seit Wochen im Verfahren → kälteres
   «Sehr geehrter»), oder war das reine Tagesform/Zufall?** Das ist gegenläufig zur bisher belegten
   Logik «länger bekannt → wärmer» — hier ist der NEUERE Kontakt der wärmere. Ist ein soeben frisch
   vorgestellter Behörden-Kontakt für Dich bewusst zugänglicher/unverbrauchter im Ton, während ein
   seit Wochen eingespielter Verfahrenskontakt ins routinierte, aber kühlere «Sehr geehrter»
   einrastet? *Warum: ohne Bestätigung bleibt dieser Marker ein nicht verallgemeinerbarer
   Einzelbeleg, der dem Zwilling die falsche Grundregel (Vertrautheit=Wärme) untergraben könnte.*
   → [[beziehungsregister]]
2. **Rollen-Tag in Klammer direkt in der Anrede-Zeile «Herr Furrer (AfB)» — Dein Standardmittel bei
   JEDER gemeinsamen Mail an zwei Fachstellen unterschiedlicher Ämter im selben Verfahren, oder nur
   hier, weil Furrer neu und die Zuordnung sonst unklar gewesen wäre?** *Warum: würde klären, ob der
   Zwilling dieses Mittel bei jeder Mehrfach-Amts-Mail einsetzen soll oder nur zur Vermeidung von
   Verwechslung bei einem frischen Kontakt.* → [[beziehungsregister]], [[arbeitsweise]]

## Offen — Runde 260725h (twin-fragesteller, aus Fidelity-Review 2026-07-25h)

Quelle: Drift-Report `outputs/2026-07-25h_fidelity.md` (Gesamt-Fidelity ~84; drei frische Sent-
Items-Golds 05.–11.06.2026 via direktem m365-CLI-Aufruf, drei Register — Sanitär-Unternehmer-Sie
La Mendola, Bauherr-Partner-Du Tschopp, Behörde-Sie gestapelt Capkin/Heinrich/Hottinger). Drei
Grenzlinien-Funde: «wir» auch im Dank-Satz einer Terminbestätigung, finale Freigabe-Bitte als
Vollblock-Auslöser im Du, Fliesstext-Fragen statt Nummerierung im spontanen Behörden-Nachfass. Je
in 1–2 Sätzen beantwortbar.

1. **«Wir sind Ihnen dankbar» statt «ich bin Ihnen dankbar» — gilt das für JEDE Terminbestätigung/
   Logistik-Zusage, oder war das bei La Mendola situativ?** Du schreibst «Gerne erwarten wir Sie …
   Für Ihre Terminbestätigung sind wir Ihnen dankbar» — beide Sätze «wir», obwohl der Dank-Satz nach
   der bestehenden Regel («ich» für die persönliche Bitte/den Dank ans Gegenüber) eher «ich» tragen
   müsste. Ist eine reine Besuchs-/Termin-Logistik-Bestätigung für Dich immer eine Büro-/
   Projekthandlung («wir kommen vorbei», nicht «ich komme vorbei»), unabhängig vom Satzinhalt
   (auch der Dank)? *Warum: würde die satzweise wir/ich-Regel um eine klare Ausnahme (Termin-
   Logistik) ergänzen, statt sie als unerklärten Einzelfall stehen zu lassen.* → [[haltung]],
   [[stimme]]
2. **Finale Freigabe-Bitte im Du: zieht IMMER «Freundliche Grüsse» + Vollblock, sobald die Freigabe
   nachfolgende Dokumente auslöst — auch bei einem vertrauten, alltäglichen Kontakt wie Stefan?**
   Die Tschopp-Mail (Grundriss/Ansichten/Umgebungsplan, «sobald ich die Freigabe … habe werde ich
   alle anderen nötigen Dokumente daraus ableitend erstellen») trägt trotz «Hoi Stefan» den vollen
   Block. Ist «löst das die Erstellung weiterer Dokumente aus» für Dich der harte Auslöser für den
   Wechsel von Kurzgruss auf Vollblock, unabhängig davon, wie oft Ihr sonst kurz und operativ
   schreibt? *Warum: würde den neuen Marker vom Einzelbeleg zur verlässlichen Regel heben.*
   → [[stimme]], [[arbeitsweise]]
3. **Spontaner Fliesstext-Nachfass mit mehreren Fragen an eine Behörde — ab wann kippt das in eine
   nummerierte Liste?** Bei Capkin/Heinrich/Hottinger reihst Du drei Fragen in einem Satz, ohne
   Nummerierung — anders als bei der MacBook-Finanzierungsanfrage (vier nummerierte Fragen). Ist die
   Grenze «kurzer spontaner Nachfass im laufenden, bereits vertrauten Verfahren» vs. «bewusst
   komponierte Anfrage an einen unbekannten/neuen Kontakt», oder hängt es an der Anzahl der Fragen
   (ab wie vielen nummerierst Du)? *Warum: verhindert, dass der Zwilling jede Mehrfachfrage
   reflexartig durchnummeriert, wo Du tatsächlich einen knappen Fliesstext-Satz schreiben würdest.*
   → [[arbeitsweise]], [[stimme]]
4. **Gestapelte Anrede mit EINEM Honorativ für mehrere gleichgeschlechtliche Empfängerinnen
   («Geschätzte Frau Capkin, Heinrich, Hottinger») — Dein Standard bei einer reinen Frauen-Gruppe,
   oder nur Kürze/Tagesform?** An anderer Stelle (Batch 63) wiederholst Du das Honorativ pro Person
   («Geschätzter Herr Duran, geschätzter Herr Kübler, hoi Jens»). Hängt die Kompression auf EIN
   Honorativ am gleichen Geschlecht/gleichen Titel aller Empfängerinnen, während gemischte
   Anreden (Herr/Du, verschiedene Titel) das Honorativ pro Person wiederholen? *Warum: würde zwei
   bisher getrennt dokumentierte Kompressions-Varianten der gestapelten Anrede unter eine Regel
   bringen.* → [[beziehungsregister]]

## Offen — Runde 260725g (twin-fragesteller, aus Fidelity-Review 2026-07-25g)

Quelle: Drift-Report `outputs/2026-07-25g_fidelity.md` (Gesamt-Fidelity ~86; drei April-2026-Golds,
alle bereits im Korpus destilliert — Test war Retrieval-Fidelity, nicht Novitäts-Suche. Einziger
substanzieller Befund: der belegte «Firma <Name> statt Person»-Anredemarker ist ein
Retrieval-Risiko, weil er bislang nur an einem Beleg (Jegen) hängt. Je in 1–2 Sätzen beantwortbar.

1. **«Geschätzte Firma <Name>» bei einer Erst-Sie-Mail an ein Handwerks-/Ausführungsunternehmen,
   dessen Ansprechperson Du noch nicht kennst — ist das Dein Standard, oder hättest Du auch schon
   direkt an eine benannte Person (z.B. «Sehr geehrter Herr Bajrami») oder neutral «Sehr geehrte
   Damen und Herren» geschrieben?** Bei der Firma Jegen (innere Verglasungen, KISPI, 11.04.2026)
   adressierst Du nach einem Telefonat die Firma als Ganzes («Geschätze Firma Jegen»), obwohl im
   selben Anschreiben mit Livdin Bajrami bereits eine Ansprechperson im To-Feld steht. Ist «Firma
   <Name>» Dein bewusstes Mittel, solange die Zuständigkeit intern noch nicht geklärt ist (die
   ganze Firma soll sich zuständig fühlen), oder war es hier Tagesform/Telefonat-Nachwirkung?
   *Warum: der Marker hat bisher nur einen Beleg — eine Bestätigung würde ihn vom Einzelfall zur
   verlässlich abrufbaren Regel heben und das Retrieval-Risiko schliessen.* → [[beziehungsregister]]
2. **Trägt die Terminvorschlag-Mail nach einem Telefonat («Ich halte fest: …» + Terminvorschlag)
   grundsätzlich die volle Signatur, oder ist die verkürzte Signatur («Freundliche Grüsse /
   Raphael Jans» ohne Titel/Telefon/Adresszeile) an ein bestimmtes Gerät/einen bestimmten
   Mail-Typ gekoppelt?** Die Jegen-Mail (mobil via Outlook für iOS gesendet) trägt nur den
   Kurz-Namen, keinen vollen Block, obwohl sie fachlich-dokumentierend ist (Telefonat-Fixierung
   mit technischer Liste, sonst ein Auslöser für FG+Block+voller Signatur). Ist die verkürzte
   Signatur hier reines Mobile-Artefakt (kein bewusstes Stilsignal), oder gibt es Mail-Typen, bei
   denen Du bewusst schlank signierst, obwohl der Inhalt dokumentierend ist? *Warum: würde die
   bestehende «Gruss-Block folgt der Länge/Mobile»-Regel um den Fall «dokumentierender Inhalt,
   aber Mobile-Kurzsignatur» schärfen statt es als Sonderfall offen zu lassen.* → [[stimme]]

## Offen — Runde 260725f (twin-fragesteller, aus Fidelity-Review 2026-07-25f)

Quelle: Drift-Report `outputs/2026-07-25f_fidelity.md` (Gesamt-Fidelity ~81; drei M365-Sent-Items-Golds
18.–21.05.2026, KISPI-/Albertstrasse-Achse — Stadelmann/Estermann Sie-Brandschutz-Fachmail nach Telefonat,
Schwarzwaldelemente Sie-Submissionsanfrage [bereits als Echo-Falle 16 dokumentiert, ausgeschlossen], Besnik
Du-Gewerke-Anfrage). Hauptbefund: der Twin griff bei einem bereits im Wiki dokumentierten Fachplaner-Kontakt
(Stadelmann) auf das kalte «Sehr geehrter» statt des belegten «Geschätzter» zurück — ein reiner
Retrieval-Fehler, kein Wissens-Loch. Ausserdem ein neuer, bisher undokumentierter Datenpunkt zu Besnik
(«Geschätzter» als Inhalts-Spike auch bei sonst nacktem Vorname-Kontakt). Je in 1–2 Sätzen beantwortbar.

1. **«Geschätzter Besnik» + FG-Block bei einer Gewerke-/Unternehmer-Empfehlungsbitte — zieht das Gewicht
   des Anliegens (Submissions-relevant) die Anrede hoch, unabhängig davon, wie locker der Kontakt sonst
   ist?** Bisher war Besnik nur mit nacktem Vorname + «Lgr» belegt (reine Fristbestätigung). Bestätigt der
   dichtere Beleg (Bitte um Gewerke-Zahl + Empfehlung, 21.05.2026, «Geschätzter Besnik» + direktes FG+Block
   ohne eigenen Kurzgruss) die Regel «Geschätzter als Inhalts-Spike unabhängig vom Standard-Register des
   Kontakts», oder war das situativ (Tagesform, anderes Gerät)? *Warum: würde die statische
   `rules/anrede-kontakte.md`-Zeile zu Besnik («informell, nackter Vorname») um eine Anlass-Klausel
   ergänzen, statt sie als Fixregister stehen zu lassen.* → [[beziehungsregister]]
2. **Sachfragen aus einem Telefonat an einen bereits eingespielten Sie-Fachplaner: fetter Header
   «Sachfragen gemäss Telefon:» + «_ »-Bullets, oder durchnummeriert (1./2./3.)?** Der Twin (blind, nur aus
   dem Wiki) nummerierte die zwei offenen Punkte durchgehend gemäss der belegten Regel «eigene
   Sequenzfragen werden nummeriert» (Fidelity 260725b) — das reale Original (Stadelmann, 18.05.2026) nutzt
   stattdessen einen fetten Themen-Header + «_ »-Bullets. Gilt die Nummerierungsregel nur für Fragen AN
   eine noch unbekannte/entferntere Person, während technische Sachfragen an einen bereits im Gespräch
   befindlichen Fachplaner eher unter einem Themen-Header als offene Liste stehen? *Warum: zieht die
   Grenze der bestehenden Nummerierungsregel enger und verhindert, dass der Zwilling jede Fragenliste
   reflexartig nummeriert.* → [[arbeitsweise]], [[stimme]]
3. **«Besten Dank für das Telefonat» + «Ich erlaube mir, … schriftlich zusammenzufassen» — Pflicht-Doppel-
   Opener bei JEDEM Telefonat-Nachgang, oder nur bei neuen/gewichtigeren Kontakten?** Der Twin eröffnete
   die Stadelmann-Fassung reflexartig mit beiden Signatur-Phrasen; das reale Original geht ohne Umschweife
   direkt in die Sache («Wie telefonisch besprochen sende ich Ihnen die Unterlagen…»). Lässt Du diese
   Doppel-Formel bei einer reinen technischen Weiterleitung an einen bereits eingespielten Fachplaner
   bewusst weg (weil der Bezug ohnehin klar ist), und hebst sie Dir für neuere/gewichtigere
   Telefonat-Nachgänge auf? *Warum: verhindert, dass der Zwilling jede Telefonat-Folgemail
   zeremoniell überlädt, wo das reale Original knapper bleibt.* → [[stimme]]

## Offen — Runde 260725e (twin-fragesteller, aus Fidelity-Review 2026-07-25e)

Quelle: Drift-Report `outputs/2026-07-25e_fidelity.md` (Gesamt-Fidelity ~86; drei frische authentische
Goldproben via Apple-Mail-Fallback ausserhalb der bisher meistgenutzten KISPI-/Baurechts-Achse —
Costamagna/3D-Software.ch Sie-Vendor-Technikfrage 14.11.2025, Hleb/Website English-Du-Äquivalent
10.02.2026, Nesa/khgp Du-Status-Weiterleitung 02.02.2026). Zwei substanzielle Funde: die «Frage vor
Dank»-Umkehr + Meinungsfrage an einen Vendor, und ein zweiter unabhängiger Beleg für den nackten
Vorname-Opener (generalisiert in `beziehungsregister.md`). Je in 1–2 Sätzen beantwortbar.

1. **«Frage vor Dank» + persönliche Meinungsfrage an den Vendor-Mitarbeiter — Regel oder Tagesform?**
   Bei Costamagna (3D-Software.ch) stellst Du die Sachfrage VOR den Dank und fragst zusätzlich «Wie
   finden Sie dieses Setting?» — eine echte Meinungsfrage an eine Verkäuferin, nicht nur Kaufabwicklung.
   Ist das Dein bewusstes Muster bei technischen Vendor-Kontakten, mit denen Du eine gewisse fachliche
   Neugier teilst, oder war das hier spontan? *Warum: würde die «Dank zuerst»-Norm um einen belegten
   Gegenfall erweitern und die Fachsignatur um ein neugieriges Vendor-Sie-Register schärfen.*
   → [[fachsignatur]], [[stimme]]
2. **Nackter Vorname-Opener beim Sie-Kontakt — geht das auch, oder ausschliesslich Du?** Der zweite
   Beleg (Nesa) bestätigt das Muster im Du. Würdest Du bei einer kurzen internen Status-Weiterleitung
   an einen Sie-Kontakt ebenfalls auf ein Anrede-Wort verzichten (nur Name + Komma), oder bleibt das
   strikt dem Du vorbehalten? *Warum: klärt, ob die generalisierte Regel in `beziehungsregister.md` auch
   fürs Sie gilt oder eine reine Du-Ausnahme bleibt.* → [[beziehungsregister]]
3. **Englisches Du-Äquivalent «Hi <Vorname>» — eskaliert es wie im Deutschen (Hallo→Hoi)?** Mit Hleb
   bleibst Du über mehrere Monate (Feb 2026) durchgehend bei «Hi Hleb». Gibt es für Dich eine wärmere
   englische Stufe (z.B. «Hey»/Vorname ohne Anrede), die mit wachsender Vertrautheit kommt, so wie im
   Deutschen Hallo→Hoi→Lieber, oder bleibt Englisch bei «Hi» stabil? *Warum: die Peer-Du-Skala ist bisher
   nur fürs Deutsche belegt — ein Nein/Ja würde sie aufs Englische übertragen oder bewusst abgrenzen.*
   → [[stimme]], [[beziehungsregister]]
4. **Reine technische Status-Zusage mit Zeitfenster («Folgt in 3h») — Dein genereller Ersatz für ein
   Datum, wenn der Rest-Aufwand klein ist?** Bei Nesa sagst Du «Folgt in 3h» statt eines Datums/einer
   Uhrzeit. Nutzt Du Stunden-Fenster («in 3h», «in 2 Tagen») bewusst, wenn der verbleibende Aufwand klein
   und gut abschätzbar ist, und Datum/Uhrzeit erst bei grösseren Zeithorizonten? *Warum: schärft die
   bereits belegte «Kurzbestätigung mit konkretem Termin» um die Stunden-Variante.* → [[arbeitsweise]]

## Offen — Runde 260725d (twin-fragesteller, aus Fidelity-Review 2026-07-25d)

Quelle: Drift-Report `outputs/2026-07-25d_fidelity.md` (Gesamt-Fidelity ~85; Selbsttest gegen drei
authentische Vor-Claude-Golds via Apple-Mail-Fallback, da der M365-Connector in dieser Session nicht
funktionsfähig war — Hottinger/Vorabklärung 24.02.2026, Lämmler/Konzeptbooklet 04.03.2026, Albin/
Koordination Phase 32 18.03.2026). Hauptbefund war ein strukturelles Retrieval-Problem (siehe Report),
keine neuen Stil-Marker — die KB ist für den 2026-Q1-Korpus bereits stark gesättigt. Die Fragen zielen
auf die verbliebenen Detailkanten. Je in 1–2 Sätzen beantwortbar.

1. **Einzelne offene Frage an eine Behörde: als Fliesstext-Frage am Satzende oder immer als
   «_ »-Bullet?** In der Lämmler-Mail (04.03.2026) stellst Du nur EINE offene Frage («Wann hätten Sie
   Zeit für ein Telefonat?») als normalen Fliesstext-Satz, nicht als «_ »-Bullet — obwohl die «_ »-Liste
   sonst Dein Standard für offene Fragen ans Amt ist (vgl. Hottinger-Mail, zwei Fragen A/B als «_ »).
   Bleibt eine EINZELNE Frage im Fliesstext, und «_ » ist erst ab zwei parallelen Fragen Dein Mittel?
   *Warum: verhindert, dass der Zwilling reflexartig jede Einzelfrage in ein Bullet-Format presst.*
   → [[arbeitsweise]], [[stimme]]
2. **«Rufe mich kurz an bei Fragen.» als Pendant zum Service-Satz in der dokumentierenden Du-
   Freigabemail — Standard bei mehrteiligen Koordinations-/Freigabe-Lieferungen?** Die Albin-Mail
   (18.03.2026, dicht mit Fachplaner-Zuteilungen + Freigabe-Bitte, schliesst FG+Block) hängt vor dem
   Gruss «Rufe mich kurz an bei Fragen.» an — im Du das, was die Sie-Version «stehe ich Ihnen gerne zur
   Verfügung» wäre. Ist das Dein festes Pendant, sobald eine dokumentierende Du-Mail mehrere Entscheide/
   Freigaben auf einmal verlangt, auch wenn der Gesamtabschluss FG+Block trägt? *Warum: schärft die noch
   offene Service-Satz-Systematik aus Gate 260724 um den Du-Zweig.* → [[stimme]], [[arbeitsweise]]
3. **«Salut <Vorname>» — inzwischen Dein bevorzugter Opener bei eingewärmten Kontakten, oder weiterhin
   eine von mehreren gleichwertigen Varianten neben «Hoi»?** Du setzt «Salut» inzwischen bei mehreren
   unterschiedlichen warmen Du-Kontakten (Roman, Esther, Albin). Wählst Du bewusst «Salut» sobald ein
   Kontakt eine gewisse Vertrautheitsstufe erreicht hat (eine Art nächste Stufe nach «Hoi»), oder ist es
   für Dich reine Tagesform/Abwechslung ohne Bedeutungsunterschied zu «Hoi»? *Warum: der Zwilling kennt
   bisher nur «Hoi» als Standard-Opener und würde «Salut» sonst nie eigenständig setzen.* → [[stimme]],
   [[beziehungsregister]]
4. **Mehrteilige Fachplaner-Koordinationsmail: nummerierte Blöcke («1. 2. 3.») mit Klartext-
   Fliessunterpunkten statt fetten Amt-Blöcken — bewusster Unterschied zur Behörden-Auflagenmail?** Die
   Albin-Mail gliedert in nummerierte Abschnitte («1. Koordination Baueingabe», «2. Spezielle Vermerke»,
   «3. Administration») mit einfachen Fliesstext-Unterpunkten je Disziplin — nicht in fette Themen-Blöcke
   nach Amt wie die Hofer-Bauentscheid-Mail (260718). Ist die Nummerierung «1./2./3.» Dein Mittel für die
   EIGENE, an Dich selbst delegierte Koordinationsaufgabe (an den Betreiber/Bauherrn gerichtet), während
   fette Amt-Blöcke der WEITERGABE fremder Behörden-Auflagen vorbehalten bleiben? *Warum: trennt zwei bisher
   vermischte Gliederungsmuster für mehrteilige Statusmails.* → [[arbeitsweise]]

## Offen — Runde 260725b (twin-fragesteller, aus Fidelity-Review 2026-07-25b)

Quelle: Drift-Report `outputs/2026-07-25b_fidelity.md` (Gesamt-Fidelity 85; drei frische, bislang
unbearbeitete authentische Golds 16.–23.07.2026 ausserhalb der KISPI-Baurechts-Achse — Konsumenten-
Sie-Finanzierungsanfrage, Mahn-/Zahlungsmail mit gestapelter Anrede, ultrakurzes Fachurteil). Zwei
Kernfunde: Gruss-Gewichtung nach Inhaltstyp statt Länge (3. Beleg), gestapelte Anrede auch im harten
Mahnkontext. Je in 1–2 Sätzen beantwortbar.

1. **Gilt die gestrippte Signatur (Name + Firmenzeile + Mail, ohne Block) bei JEDER privaten
   Konsumenten-Sie-Anfrage, oder war das MacBook-Kauf-Beispiel ein Einzelfall?** Bei der ART-
   Computer-Finanzierungsanfrage (21.07.2026) hast Du ohne Telefon/Adresse/Titel signiert, obwohl Du
   eine geschäftliche Finanzierungsoption erwähnt hast. Signierst Du bei privaten Anschaffungen
   (Geräte, Möbel, private Dienstleistungen) grundsätzlich schlank, auch wenn eine Firmenoption im
   Text vorkommt, oder war es hier situativ (kein bestehender Geschäftskontakt)? *Warum: bisher nur
   1 Beleg — ein zweiter würde die Signatur-Schwelle zwischen privat/geschäftlich fest verankern.*
   → [[stimme]]
2. **Wie hart darf der Einleitungssatz einer Zahlungserinnerung an einen Du-Bauherrn werden, bevor
   Du eine Eskalationsstufe (Skill mahnwesen) ansetzt?** Die Ausstehende-Zahlungen-Mail an Albin
   (21.07.2026) bleibt sachlich-knapp («muss ich Euch bitten Kontakt aufzunehmen»), trotz 96 Tagen
   Verzug bei der ältesten Rechnung. Ist das für Dich die Obergrenze der 1. Stufe unabhängig von der
   Verzugsdauer, oder hättest Du bei 96 Tagen normalerweise schon härter formuliert (Frist, Konsequenz
   wie im Honorar-Eskalationsbeleg Mailbatch 40)? *Warum: klärt, ob Verzugsdauer den Härtegrad
   automatisch hochschaltet oder ob der Bauherr-Status (KISPI, laufendes Mandat) die Härte dämpft.*
   → [[haltung]], [[stimme]]
3. **Nummerierst Du eigene Sequenzfragen IMMER, sobald sie einzeln beantwortet werden sollen — auch
   im Du/an bekannte Kontakte, nicht nur im Sie-Erstkontakt?** Bei der MacBook-Finanzierungsanfrage
   (Sie, unbekannt) hast Du 4 Fragen nummeriert. Gilt dieselbe Nummerierungslogik auch, wenn Du einem
   Du-Kontakt mehrere einzeln zu beantwortende Fragen stellst, oder bleibt «_ » dort die Norm? *Warum:
   der bisher nur im Sie-Kontext belegte Marker soll nicht fälschlich aufs Du übertragen werden, ohne
   Beleg.* → [[arbeitsweise]]
4. **Reicht ein blosser Cc-Eintrag, um jemanden in die Anrede zu stapeln, oder braucht es aktive
   Beteiligung am Vorgang?** Bei der Zahlungserinnerung wird Herr Tobler als «werter Herr Tobler»
   gestapelt adressiert. War er nur im Cc, oder war er aktiv ins Zahlungsthema involviert (z.B. als
   Ansprechpartner Buchhaltung)? *Warum: klärt, ob der Zwilling jeden Cc-Namen in die Anrede stapelt
   (Risiko: Übergriffigkeit) oder nur die tatsächlich am Thema Beteiligten.* → [[beziehungsregister]]

## Offen — Runde 260725 (twin-fragesteller, aus Fidelity-Review 2026-07-25)

Quelle: Drift-Report `outputs/2026-07-25_fidelity.md` (Gesamt-Fidelity 90; drei authentische Vor-Claude-Golds
03.–05.09.2025 in drei Registern — Yorck Design-Weisscollage-Du, Frick Honorar-Sie [bereits gesättigt], Gregori
Service-Lieferanten-Sie mit Betreff «Anrufen: 0798461165»). Zwei substanzielle Funde: der Betreff-als-Rückruf
register-übergreifend (2. Beleg zu 260723 #1) und die wiederkehrende Material-Dichte-Drift. Je in 1–2 Sätzen
beantwortbar.

1. **«Anrufen: <Handynummer>» als Betreff — nur bei Erstkontakt/Dringlichkeit oder generelles Mittel, sobald ein
   Anruf besser ist als eine Mail?** In der Gregori-Sie-Mail (04.09.2025) setzt Du die eigene Nummer in den Betreff,
   Body bleibt eine volle höfliche Sie-Mail; im Claudia-Peer-Du (19.12.2025) war die ganze Mail gestrippt. Nimmst Du
   den Nummer-Betreff immer, wenn Du zeitnah einen Rückruf willst (auch im laufenden Faden zu einem bekannten
   Kontakt), oder ist er auf die **erste, noch kanallose Kontaktaufnahme** beschränkt? *Warum: kalibriert den neuen
   Marker — ohne Grenze setzt der Zwilling den Nummer-Betreff evtl. mitten in etablierte Fäden.* → [[stimme]],
   [[beziehungsregister]]

2. **Design-/Material-Feedback: dichte, ortsweise-fliessende Prosa mit sinnlichen Details — Dein Standard, oder war
   das Tagesform?** In der Yorck-Materialisierungsmail führst Du die Weisscollage **Ort für Ort im Fliesstext** durch
   (Eingang, Terrasse, Wendeltreppe, Backsteinverbund) mit sinnlich-gestalterischen Wendungen («beaurdeaux roter
   Farbaktzent des quadratischen Zentrummosaikes», «Putzschlemme», «torvergraut»). Der Zwilling fasst so etwas
   reflexartig in eine aufgeräumte «_ »-Liste und glättet die Sinnlichkeit weg. Soll er im Design-/Materialkontext
   bewusst dichter und ortsweise-fliessend (statt gebulletet) schreiben? *Warum: wiederkehrende Drift (2. Ausprägung
   nach 260724 #1 Bild-Rhetorik) — ein Ja würde die zweite Fachsäule um einen aktiven «dicht & fliessend
   materialisieren»-Marker erweitern.* → [[fachsignatur]], [[stimme]]

3. **«Hier meine Adresse wenn Sie in der Nähe sind:» + Block — feste Schlussgeste, wenn eine Bemusterung/Muster-
   Sitzung das Ziel ist?** Gegenüber dem Material-Lieferanten (Gregori, Sie) lädst Du zur Vorbeikunft für ein paar
   Muster ein und hängst die Bürobadresse an. Ist diese Vor-Ort-/Drop-by-Einladung Dein Standard, sobald es um eine
   physische Bemusterung geht (Muster kommen am besten 1:1 vorbei), oder war es hier situativ? *Warum: bisher nur 1
   Beleg — ein zweiter würde die Gastgeber-Geste (bisher Café/Büro im Peer-Du) fest ins Service-Sie erweitern.*
   → [[stimme]], [[arbeitsweise]]

4. **«Guten Tag Herr <Name>» als Default-Eröffnung beim erst-kontaktierten Material-/Service-Lieferanten — oder
   bekäme ein unbekannter Lieferant eher «Sehr geehrter»?** Gregori (Erstkontakt, Holzbeize-Hersteller) bekommt
   «Guten Tag Herr Gregori», nicht das kalte «Sehr geehrter». Ist «Guten Tag Herr X» Deine Default-Mittellage für den
   sachlich-freundlichen Lieferanten-Erstkontakt (Produkt-/Material-Anfrage), und «Sehr geehrte/r» bleibt Behörde/
   Submission vorbehalten? *Warum: schärft die Service-Sie-Anrede-Schwelle — der Twin traf «Guten Tag» richtig, die
   Regel dahinter ist aber nur schwach belegt.* → [[beziehungsregister]]

## Offen — Gate 260724 (twin-chef, Fidelity-Gate Hub-Chef-Lauf)

Aufgetretene Facetten-Spannung beim Gate zweier ausgehender Unternehmer-Sie-Mails (KISPI-Nachfass
Röthlisberger / Los-274.01-Rückmeldung Jegen). Der Chef hat sie kontextabhängig aufgelöst (Service-Satz
gestrichen), die Belegbasis ist aber uneindeutig.

1. **Trägt die Nachfass-/Fristsetzungs-Mail an einen Unternehmer den Service-Satz — oder ist die Bitte
   das Schlusswort?** Die Belege stehen sich gegenüber: die **Offert-Anfrage** an den Unternehmer schliesst
   belegt MIT «Bei Fragen oder Unklarheiten stehe ich Ihnen jederzeit gerne zur Verfügung» ([[arbeitsweise]],
   Gliederungs-Skelett) — dort wird aber Material ÜBERGEBEN. Das **Gesuch/Begehren** ans Amt schliesst belegt
   OHNE Service-Satz, weil er das Begehren weichspült ([[stimme]], Fidelity 260719). Der reine Nachfass (nichts
   übergeben, eine Frist gesetzt) liegt genau dazwischen. Entscheid des Chefs 24.07.: wie das Begehren
   behandelt, Service-Satz gestrichen, die Mail endet auf «Darf ich Sie bitten …» + konditionale Entlastung.
   *Warum: klärt die Service-Satz-Systematik an ihrer letzten offenen Kante (Übergabe/Beratung → ja;
   Verifikation/Begehren → nein; Nachfass → ?).* → [[stimme]], [[arbeitsweise]]

## Offen — Runde 260724 (twin-fragesteller, aus Fidelity-Review 2026-07-24)

Quelle: Drift-Report `outputs/2026-07-24_fidelity.md` (Gesamt-Fidelity 90; drei authentische Vor-Claude-Golds in
drei Registern — Baurekursgericht-E-Bill Service-Sie-namenlos 23.10.2025, Yorck Design-/Material-Peer-Du 01.09.2025,
Notariat-Hottingen Rechtsersuchen-Sie 04.11.2025). Konsolidierungs-Lauf: die Golds bestätigen bestehende Marker;
Neubefund ist die anlass-gewichtete Behörden-Erstanrede am generischen Postfach (löst 260723 #4). Die Fragen zielen
auf die Ränder dieses Befunds und die zwei Rest-Drifts (Bild-Rhetorik, rahmenlose Faden-Antwort). Je in 1–2 Sätzen
beantwortbar.

1. **Design-/Material-Du: die konstruktiv-poetische Bild-Rhetorik («erhält ein Rückgrat», «wie ein Seil verbinden»)
   — bewusstes Überzeugungsmittel oder situative Begeisterung?** In Gold B hebst Du die reine Materialantwort an
   den 3D-Freelancer in eine Bilderzählung: das Geländer soll «ein fortlaufendes Kontinuum … wie ein Seil» sein,
   «der architektonische Entwurf erhält ein Rückgrat». Ziehst Du diese gestalterische Bild-Rhetorik bewusst, damit
   der Ausführende die ABSICHT hinter dem technischen Detail mitträgt, oder war das Tagesform? *Warum: der Twin
   unterspielt die Bild-Rhetorik 260724 und liefert nur die nackte Materialliste — ein bestätigtes Muster würde die
   zweite Fachsäule um einen aktiven «Absicht bebildern»-Marker erweitern.* → [[fachsignatur]], [[stimme]]

2. **Rahmenlose Mitten-im-Faden-Antwort (keine Anrede, kein Gruss) — nur in der kreativen Produktions-Zusammenarbeit
   oder in JEDEM hochfrequenten Du-Faden?** Gold B trägt weder Anrede noch Gruss, nur den Inhalt. Ist die
   rahmenlose Fliess-Antwort Dein Standard, sobald man mehrfach am Tag im selben Faden hin- und herschreibt
   (unabhängig vom Kontakttyp), oder bleibt sie auf die kreative 3D-/Render-/Design-Produktion beschränkt, wo der
   Faden fast ein Chat ist? *Warum: der Twin hängt reflexartig «Lgr» an; ein zweiter Kontakttyp würde die
   «rahmenlose Faden-Antwort»-Schwelle verallgemeinerbar machen (bisher an einen Freelancer-Faden gebunden).*
   → [[stimme]], [[arbeitsweise]]

3. **Die hebende Grösse am generischen Postfach — rechtliches/formales Gewicht oder zugemuteter Aufwand der
   Gegenseite?** Gold A (ein-Klick-Freischaltung) bekam «Guten Tag», Gold C (inhaltliche Rechtsprüfung) «Sehr
   geehrte Damen und Herren». Beide Faktoren fallen hier zusammen. Hebt den Erstgruss eher das **rechtlich-formale
   Gewicht** des Anliegens (Gesuch/Ersuchen/Rechtsfrage), oder schlicht, **wieviel Arbeit** Du der Gegenseite
   zumutest (ein Klick vs. eine inhaltliche Prüfung)? *Warum: ein Gegenbeispiel (gewichtiges Anliegen mit wenig
   Aufwand — oder umgekehrt) würde die beiden Trigger sauber trennen und die neue Do/Don't-Schwelle kalibrieren.*
   → [[beziehungsregister]]

4. **«Bitte veranlassen Sie …» als fester Imperativ für die technische Amts-/Service-Bitte?** In Gold A wählst Du
   «Bitte veranlassen Sie das …» statt «Ich bitte Sie um …» oder «Darf ich Sie bitten …». Ist «Bitte veranlassen
   Sie …» Deine Default-Formel für den rein administrativ-technischen Vollzug (Freischaltung, Erfassung,
   Weiterleitung), abgegrenzt vom begründeten «Darf ich Sie bitten … sodass/um …» der substanziellen Bitte? *Warum:
   gäbe dem Zwilling einen klaren Formel-Schalter zwischen technischer und substanzieller Amts-Bitte — bisher kennt
   er nur die begründete Variante.* → [[stimme]], [[beziehungsregister]]

## Offen — Runde 260723 (twin-fragesteller, aus Fidelity-Review 2026-07-23)

Quelle: Drift-Report `outputs/2026-07-23_fidelity.md` (Gesamt-Fidelity 90; drei authentische Vor-Claude-Golds in
drei Registern — met-all/Grillmotor Service-Sie-Produktanfrage 29.12.2025, Claudia Klein Design-Peer-Ultra-Ping
19.12.2025, Bauamt-Thalwil-Vordach Behörde-Sie-Auslegungsersuchen 20.11.2025). Der Lauf hat QUESTIONS 260722 #1
(Norm-Subsumtion) im Kern beantwortet und fachsignatur.md geschärft (Antrag→subsumieren vs. Klärungs-Ersuchen→
Doppelquellen). Die schärfste Drift lag beim Ultra-Ping (Twin rahmt zu stark). Je in 1–2 Sätzen beantwortbar.

1. **Der Betreff-als-Payload-Ultra-Ping — bewusstes Mittel oder Zufall?** An Claudia (Design-Peer) hast Du die
   Mail auf den Knochen gestrippt: die **eigene Handynummer als Betreff** («0798461165»), Body nur «ruf mich an»,
   keine Anrede, kein Gruss, keine Signatur. Ist das Dein bewusstes Muster, wenn Du einen sofortigen Rückruf
   willst (der Kanalwechsel selbst wird zum Betreff), oder war das Tagesform? *Warum: Einzelbeleg — der Twin rahmt
   reflexartig mit «Hoi Claudia»/«Lgr»; ein zweiter Beleg würde ein neues Ultra-Minimal-Format verankern (Echo-/
   Overfitting-Schutz: bis dahin nicht generalisieren).* → [[stimme]]

2. **Fällt die Rahmung (Anrede + Gruss) bei purer Dringlichkeit ganz weg — auch ohne die «wärmste-Peer»-Wärme?**
   Der bisher belegte gruss-/anredelose Reply hing an der Ausgelassenheit des wärmsten Peer-Du (haha/Café). Gold B
   zeigt die Nullung **dringlichkeits-/kanalwechsel-getrieben** im nüchternen Peer-Ping. Lässt Du Anrede und Gruss
   generell weg, sobald es nur um einen schnellen Rückruf/eine Kanalverlagerung geht, unabhängig von der Wärme des
   Moments? *Warum: erweitert die «ultrakurz ohne Gruss»-Schwelle um einen zweiten Auslöser (Dringlichkeit statt
   Wärme).* → [[stimme]], [[beziehungsregister]]

3. **Auslegungs-Ersuchen an die Behörde: strikt neutral oder mit eigener Präferenz?** Bei der Vordach-Vorabklärung
   stellst Du die zwei Lesarten (§ 6c ABV bis 2 m vs. 1-m-Grenze) gegenüber, ohne zu subsumieren. Bleibst Du dabei
   bewusst **strikt neutral** (damit die Behörde unbeeinflusst entscheidet), oder nickst Du gelegentlich Deine
   bevorzugte Lesart an (die Dir mehr Spielraum gäbe)? *Warum: klärt, ob die Doppelquellen-Frage wirklich offen
   oder subtil in Deine Richtung gesteuert ist — entscheidet, wie der Twin die Alternativfrage kalibriert.*
   → [[fachsignatur]], [[denken]]

4. ~~**«Guten Tag» ohne Namen als Default fürs unbekannte Sammel-/Shop-Postfach?**~~ **BEANTWORTET
   (Fidelity 260724, zwei authentische Golds):** JA für triviale Service-/Technik-Postfächer — ABER die
   Anrede am generischen Postfach ist **anlass-gewichtet**, nicht postfach-fix. Gold A (E-Bill-Freischaltung
   an `rechnungen@baurekursgericht-zh.ch`, 23.10.2025) → namenloses «Guten Tag» + Kurzbitte; Gold C
   (Statutenänderungs-Rechtsersuchen ans Notariat Hottingen, 04.11.2025) → «Sehr geehrte Damen und Herren».
   Dasselbe Notariat Hottingen erhielt im Juli 2025 bei simpler Koordination «Guten Tag» (Batch 02): das
   Gewicht/die Formalität des Anliegens hebt den Erstgruss, nicht der Postfach-Typ. In `beziehungsregister.md`
   (Marker + Do/Don't) verankert.

## Offen — Runde 260722 (twin-fragesteller, aus Fidelity-Review 2026-07-22)

Quelle: Drift-Report `outputs/2026-07-22_fidelity.md` (Gesamt-Fidelity 87; drei authentische Vor-Claude-
Goldproben 25.09.–03.10.2025 in drei Registern — Labinot/38grad operative-Kostenauskunft-Sub-Du, Fabio-Don-
Druckerkosten-Rechnung-Sie, ESTV Gesuch-Behörde-Sie). Besonderheit: alle drei Golds sind bereits im Korpus
destilliert — der Lauf hat KEINE neuen Marker gefunden, sondern zwei **Retrieval-Lücken** freigelegt: die
Twin-Fassung hat zwei belegte Marker («Danke und Gruss»-Signoff; MWSTG-Artikel + Subsumtion im Gesuch) NICHT
gefeuert, weil sie an einem Themenwort statt am Sprechakt hingen (bekannte Struktur-Schwäche 260719). Beide
Do-Blöcke wurden auf den Sprechakt umgeschlüsselt. Die Fragen zielen auf die verbliebenen Schwellen. Je in
1–2 Sätzen beantwortbar.

1. **Norm-Zitat im Amts-Gesuch — Pflicht bei JEDER Eingabe oder nur bei begründungsbedürftiger?** In der
   ESTV-Abmeldung zitierst Du Art. 10 Abs. 2 lit. a MWSTG und subsumierst («in meinem Fall erfüllt, da …»).
   Ziehst Du diese Norm→Subsumtion→Antrag-Kette bei JEDER rechtsbegründeten Eingabe an ein Amt durch (auch
   bei einer simplen Zustellung/Kenntnisnahme), oder nur, wenn der Antrag eine Voraussetzung/Schwelle
   nachweisen muss (Umsatzgrenze, Frist, Anspruch)? *Warum: entscheidet, ob der Zwilling die Rechtsgrundlage
   in jeder Amtsmail einwebt oder nur bei nachweispflichtigen Begehren — der Twin hat sie 260722 ganz
   weggelassen.* → [[fachsignatur]], [[denken]]

2. **«Danke und Gruss» vs «Lieber Gruss»/«Lgr» — welcher operative Signoff wann?** In der Labinot-Kostenmail
   schliesst Du mit «Danke und Gruss» (Antwort/Lieferung einer erbetenen Auskunft), während das reine
   Plan-Transmittal an Weisser «Lieber Gruss» trägt. Wählst Du «Danke und Gruss» gezielt, wenn die Mail eine
   erfragte Auskunft/Zahl LIEFERT (implizierter Dank fürs Fragen), und «Lieber Gruss»/«Lgr» beim reinen
   Weiterreichen? *Warum: der Twin kennt beide Formen, hat aber 260722 die falsche gewählt — eine
   Anlass-Kopplung macht die Wahl operationalisierbar.* → [[stimme]]

3. **Zahl flach behaupten statt banden — bewusst im Sub-/Peer-Du?** An Labinot schreibst Du die
   Erstellungskosten blank «Du kannst von … 2.MIO ausgehen» ohne Hedge («rund/ca./+-»), während Du bei
   Bauherren/Investoren dieselbe Grösse oft als Band führst (+/-25 %). Setzt Du im operativen Sub-/
   Kollegen-Du die Zahl bewusst flach (Du besitzt sie, er soll damit rechnen), oder war das Tempo? *Warum:
   der Twin hat reflexartig «rund» ergänzt — klärt, wann die Banden-DNA aussetzt.* → [[stimme]], [[denken]]

4. **«Sehr geehrter» statt «Geschätzter» beim rein transaktionalen Lieferanten — Default?** Deine
   Druckerkosten-Rechnung an Fabio Don trägt «Sehr geehrter Herr Don» + Service-Satz + FG, nicht das wärmere
   «Geschätzter». Ist «Sehr geehrter» Dein Default für einen rein abrechnungs-transaktionalen Lieferanten-
   Kontakt (Weiterverrechnung, Belegzustellung), und «Geschätzter» bleibt den Partnern vorbehalten, mit
   denen Du aktiv zusammen-ARBEITEST? *Warum: präzisiert die Warming-Schwelle für Lieferanten — der Twin traf
   «Sehr geehrter» richtig, die Regel dahinter ist aber unbelegt.* → [[beziehungsregister]]

## Offen — Runde 260721 (twin-fragesteller, aus Fidelity-Review 2026-07-21)

Quelle: Drift-Report `outputs/2026-07-21_fidelity.md` (Gesamt-Fidelity 91; drei authentische
Vor-Claude-Goldproben Okt 2025 in drei Registern — Lu/St. Moritz warm-sozial-Du-Akquise,
boesner/Washi Objekt-Material-Sie, ESTV/Ruprecht Behörde-Beleg-Zustellung). Die Design-/Material-
Säule (260719-Schwachpunkt) feuerte diesmal korrekt; der neue Befund ist eine Lücke im emotionalen
Subtext. Je in 1–2 Sätzen beantwortbar.

1. **Die Sorge des Absenders direkt beantworten, nicht nur die Sachaufgabe:** Als Lu besorgt fragte,
   ob Du ihre Mail überhaupt bekommen hast, hast Du das mitten im Fluss beiläufig bestätigt («Damit
   erhalte ich natürlich Deine E-Mails.») — zusätzlich zur eigentlichen Offerten-Auskunft. Ist es Dein
   bewusstes Muster, den **ausgesprochenen oder mitschwingenden Wunsch/die Sorge des Absenders** in
   einem Satz direkt zu quittieren (Rückversicherung, Beruhigung), bevor/während Du die Sachaufgabe
   erledigst, oder war das hier situativ? *Warum: der Zwilling arbeitet bisher rein aufgaben-getrieben
   und überliest die emotionale Frage hinter der Mail — ein bestätigtes Muster würde «warm rahmen»
   um das aktive Adressieren des Subtexts erweitern.* → [[stimme]], [[denken]], [[haltung]]

2. **Rauheits-Grad der schnellen Lieferanten-/Service-Sie-Anfrage:** Deine Material-Anfrage an den
   Künstlerbedarf war mündlich-direkt und leicht flüchtig getippt («Ich wollte mich bei Ihnen erkundigen
   ob Sie ein solche Faserpapier … haben?»), nicht durchgeglättet. Ist die schnelle, unpolierte
   Sprechweise bei einer beiläufigen Lieferanten-Anfrage für Dich normal (also soll `korrektur` sie nicht
   zu einer förmlich-glatten Anfrage bügeln), oder war das nur Tempo? *Warum: entscheidet, wie stark der
   Zwilling/`korrektur` eine schnelle Service-Sie-Anfrage glätten darf, ohne den authentischen
   Direkt-Ton zu verlieren.* → [[stimme]]

3. **Emoji im warm-sozialen Du: ton-getaktet, nicht spiegel-getaktet — Schwelle?** Lu schrieb Dir mit
   «😊», Deine unmittelbare Antwort (08.10) trug KEINES, erst die nächste (09.10 «Liebe Lu») und eine
   spätere («sehr gerne😊») schon. Das Emoji scheint bei Dir an eine **Dank-/Wärme-Spitze** gekoppelt,
   nicht an das Spiegeln eines eingehenden Emojis. Stimmt die Lesart — setzt Du 😊 nur, wenn der Moment
   selbst dankbar/herzlich ist (Einladung, Dank, gemeinsame Freude), und lässt es in der reinen
   Status-/Sachantwort auch im warm-sozialen Du weg? *Warum: schützt den Zwilling vor reflexartigem
   Emoji-Mirroring und macht die Emoji-Regel operationalisierbar.* → [[stimme]]

## Offen — Runde 260719 (twin-fragesteller, aus Fidelity-Review 2026-07-19)

Quelle: Drift-Report `outputs/2026-07-19_fidelity.md` (Gesamt-Fidelity 88; schwächste Facette
Fachsignatur 81 — die Design-/Objekt-Säule wurde in einer Objekt-Offerte nicht abgerufen, obwohl
sie belegt im Wiki steht). Je in 1–2 Sätzen beantwortbar.

1. **Objekt-Offerte als eigener Mail-Typ:** Wenn Dich jemand nach den Kosten für ein Objekt fragt
   (Möbel, Leuchte, Pavillon, Einbaute), ziehst Du regelmässig die ganze Design-Argumentation mit
   — Faktoren A)/B)/C), Fertigungsprinzip, Referenzen, Schreiner-Wurzel — oder war das bei der
   St.-Moritz-Anfrage der besonderen Aufgabe geschuldet? *Warum: entscheidet, ob die zweite
   Fachsäule bei jeder Objekt-Kostenfrage automatisch feuern soll oder nur auf Zuruf.*
   → [[fachsignatur]], [[denken]]
2. **Design-Referenzen als Vertrauensmittel:** Nennst Du Noguchi/Radić, um die Idee zu verorten,
   oder auch, um dem Gegenüber Deine gestalterische Herkunft zu zeigen — und würdest Du sie auch
   einem nüchternen Investor gegenüber setzen? *Warum: klärt, ob die Referenz inhaltlich oder
   beziehungsbildend gemeint ist.* → [[fachsignatur]], [[haltung]]
3. **Akquise-Öffnung am Schluss:** «… und freue mich über weitere Offertenanfragen» — setzt Du
   diese Zeile nur bei neuen Kundinnen/Kunden in der ersten Offerte, oder auch bei bestehenden
   Mandaten? *Warum: trennt die Akquise-Öffnung sauber von der Telefon-Verlagerung «ruf mich kurz
   an», die der Zwilling 260719 fälschlich gewählt hat.* → [[stimme]], [[arbeitsweise]]
4. **Anrede-Warming, Auslöser bestätigen:** Bei Lu bist Du innert eines Tages von «Geschätzte» auf
   «Liebe» gewechselt, nachdem sie warm und mit 😊 geantwortet hatte. Stimmt die Lesart, dass die
   **erwiderte Wärme des Gegenübers** den Wechsel auslöst (und nicht Zeit/Anzahl Kontakte)?
   *Warum: macht den bisher nur beschriebenen Warming-Marker operationalisierbar — der Zwilling
   hat ihn 260719 genau deshalb verfehlt.* → [[beziehungsregister]]
5. **Unvollständigkeit offen markieren:** «Die von mir aufgelisteten Punkte sind unvollständig und
   noch genau zu definieren» — ist das Deine Standard-Absicherung in frühen Phasen, oder war es
   hier eine bewusste Erwartungssteuerung bei einer noch unscharfen Aufgabe? *Warum: klärt, ob der
   Zwilling die ehrliche Selbstbegrenzung in jedem Frühphasen-Erzeugnis setzen soll.*
   → [[haltung]], [[arbeitsweise]]

### Vermerkte Struktur-Schwäche (260719, offen — betrifft alle Facetten)
Die Do-Blöcke taggen ihre Marker nach **Themenfeld** («bei Design-/Objektaufgaben …»), der
eingehende Anlass kommt aber als **Sprechakt** («eine Offerte schreiben», «Kosten nennen»). Fallen
beide auseinander, feuert der richtige Marker nicht — belegt am Fehlschlag 260719 (Objekt-Offerte
wurde als Kostenmail klassiert). Arbeits-Auflösung des twin-chef: Auslöser dort, wo möglich, an den
**Gegenstand** koppeln statt an das Themenwort (in `fachsignatur.md` bereits umgesetzt). Zu prüfen,
ob dieselbe Kopplung in den übrigen fünf Do-Blöcken nötig ist.

## Offen — Runde 260718 (twin-fragesteller, aus Fidelity-Review 2026-07-18)

Quelle: Drift-Report `outputs/2026-07-18_fidelity.md` (Gesamt-Fidelity 89; drei authentische Dez-2025-
Goldproben in drei Registern — Hofer-Bauentscheid-Sie, Weisser-Offert-Du nachts, Bopp-STWEG-Korrektur).
Zwei Twin-Fassungen nahezu deckungsgleich; der eine Struktur-Drift + zwei Schwellen bleiben offen. Je in
1–2 Sätzen beantwortbar.

1. **Tageszeit-Grenze «Guten Morgen» → ab wann «Hoi»/«Guten Abend»?** Neuer Teilbeleg: um **02:58 Uhr**
   antwortest Du Peter Weisser (der «Hallo Raphael» schrieb) mit «**Hoi Peter**» — nicht «Guten Morgen»,
   nicht gespiegeltes «Hallo». «Guten Morgen» scheint also strikt ans Vormittagsfenster gebunden, davor/
   nachts fällst Du auf «Hoi». Stimmt die Lesart, und wo genau liegt die Morgen-Grenze (bis ~10:00? bis
   Mittag?) — und gibt es ein «Guten Abend <Vorname>» als Gegenstück am späten Tag im selben operativen Du?
   *Warum: schärft QUESTIONS 260717 #1 mit einem echten Nacht-Datenpunkt — ohne Grenze produziert der
   Zwilling «Guten Morgen» zur falschen Tageszeit.* → [[beziehungsregister]]
2. **Mehrteilige Verfahrens-/Auflagen-Statusmail: thematische FETTE Blöcke — Dein fester Aufbau?** In der
   Bauentscheid-Mail an Frau Hofer gliederst Du die vielen Behörden-Auflagen in **fette Themen-Blöcke nach
   Amt/Gegenstand** («Erforderliche Schritte vor Baubeginn» · «Denkmalpflege» · «Koordination vor Baubeginn»
   · «Bauausführung») statt in eine flache Liste. Ist das Dein Standard, sobald mehrere Auflagen aus
   verschiedenen Ämtern/Themen zusammenkommen (ab wie vielen Punkten?), oder war es hier zufällig?
   *Warum: ein sehr charakteristischer, billig nachbaubarer Struktur-Marker für jede Verfahrens-/
   Auflagenmail — der Zwilling gliedert bisher flach.* → [[arbeitsweise]], [[stimme]]
3. **Bullet-Zeichen «–» vs «_ » in der formellen Sie-Mail — nach welcher Regel?** In der Hofer-Sie-Mail
   nutzt Du «**–**» für schlichte Aufzählungen (nicht für eine Entscheidungsfrage), während «_ » Dein
   Haupt-Aufzählungszeichen im Du ist. Wählst Du «–» bewusst im **formell-dokumentierenden Sie-Register**
   (und «_ » im operativen Du), oder ist die Wahl frei/tagesformabhängig? *Warum: präzisiert eine
   Unterspezifikation — der Zwilling setzt sonst überall «_ ».* → [[stimme]]
4. **Optionaler Zusatz-/Mehrwert-Vorschlag vor der Freigabe-Bitte — System bei Korrektur-Lieferungen?**
   Erneut belegt (Bopp, 2. Datenpunkt zu QUESTIONS 260714b #2): vor «kurzes OK-Feedback» hängst Du einen
   freiwilligen, hypothetisch gerahmten Verfeinerungs-Vorschlag an («Beispielsweise könnte man noch die
   Leerzeilen … löschen»), eingeleitet von «Solltest Du Änderungen haben, lass es mich wissen». Ist dieses
   Paar (Korrektur-Einladung + optionaler Mehrwert) Dein fester Abschluss jeder iterativen Korrektur-
   Liefermail? *Warum: zweiter Beleg — bei Bestätigung wird es vom «kann sein» zum festen Arbeitsweise-
   Baustein.* → [[arbeitsweise]], [[haltung]]

## Offen — Runde 260717 (twin-fragesteller, aus Fidelity-Review 2026-07-17)

Quelle: Drift-Report `outputs/2026-07-17_fidelity.md` (Gesamt-Fidelity 79; Goldproben aus dem Faden
Oberhäslerstrasse 2 Winterberg, 05.–11.09.2025 — Weisser-Kurzreply, Frick-Honorarofferte, Labinot-Kollegen-Du).
Der Lauf hat die Spiegel-Regel vom 15.07. widerlegt; die folgenden Fragen zielen auf das, was der Beleg
NICHT entscheiden kann. Je in 1–2 Sätzen beantwortbar.

1. **Ab wann «Guten Morgen», ab wann «Guten Abend» — und was gilt am Nachmittag?** Am Vormittag ist
   «Guten Morgen <Vorname>» im operativen Du klar belegt (10:27 an Weisser, 10:20 und 09:10 an Labinot).
   Gibt es für Dich eine ungefähre Uhrzeit-Grenze (bis 10:00? bis 12:00?), und welche Anrede nimmst Du
   nachmittags im gleichen operativen Du — fällst Du dann auf «Hoi» zurück, oder gibt es ein «Guten Tag
   <Vorname>» im Du?
   *Warum: die Tageszeit-Anrede schlägt neu alle anderen Du-Default-Regeln — ohne Grenzen produziert der
   Zwilling «Guten Morgen» um 16:00.* → [[beziehungsregister]]
2. **«Geschätzte/r» im Erstkontakt — reicht die Empfehlung, oder war es die Auftragsaussicht?** Frau Frick
   war Dir unbekannt, bekam aber sofort «Geschätzte Frau Frick» + «Besten Dank für Ihre E-Mail und Ihr
   Vertrauen» — sie kam über Baumann/Weisser UND brachte einen Auftrag. Welches der beiden hebt das
   Register: die **Empfehlung durch jemanden, den Du kennst**, oder schlicht, dass jemand **Dir Arbeit
   anbietet** (auch ohne Empfehlung)? Bekäme eine kalte, unvermittelte Auftragsanfrage auch «Geschätzte»?
   *Warum: entscheidet, ob der Zwilling bei jeder Erstanfrage warm oder nur bei vermittelten öffnet — die
   häufigste Erstkontakt-Situation überhaupt.* → [[beziehungsregister]]
3. **Die unbequeme Wahrheit im Angebot — Regel oder Fall?** Du hast Frau Frick mitten in Deiner eigenen
   Offerte faktisch vom Pool abgeraten («oft werden diese 2 Jahre benutzt und dann nicht mehr»). Ist das
   für Dich ein **Muss** bei jedem Zusatzwunsch mit zweifelhaftem Nutzen (Pool, Cheminée, Wellness,
   Luxus-Ausbau), oder war es hier nur nötig, weil die Gebäudetechnik-Auslegung davon abhing? Gibt es
   Fälle, wo Du den Zweifel **bewusst für Dich behältst**?
   *Warum: der Zwilling muss wissen, ob er diesen Satz proaktiv setzt oder nur bei technischer Kopplung —
   der Unterschied zwischen ehrlichem Rat und ungefragter Bevormundung.* → [[haltung]]
4. **«Frage:» als hartes Label — Deine Standard-Gliederung?** In der Frick-Offerte setzt Du «Frage:» als
   eigene Zeile vor den Rückfragen-Block. Ist das ein bewusstes, wiederkehrendes Gliederungsmittel bei
   Dir (damit die Rückfrage im langen Mail nicht untergeht), oder war es hier zufällig?
   *Warum: wenn Standard, ist es ein billig nachbaubarer Struktur-Marker für jede Offerten-/Beratungsmail.*
   → [[arbeitsweise]]
5. **Benannte Stufen-Skala als Entscheidungsvorlage — wo überall?** Für den Pool hast Du dem Laien eine
   4-Stufen-Skala («01 Unbeheizt & ungefiltert» … «04 Beheizt & gefiltert») mit «_ »-Bullets gebaut und
   die Praxis eingeordnet («meist zwischen Stufe 2 und 4»). Nutzt Du diese nummerierte Ausbaustandard-Skala
   auch für andere Entscheide (Küche, Bad, Fenster, Haustechnik) — und gibt es eine Stufenzahl, die für
   Dich stimmt (immer 4?)?
   *Warum: das ist eine sehr charakteristische, wiederverwendbare Denkfigur — wenn generell, kann der
   Zwilling sie für jeden Ausbau-Entscheid nachbauen statt nur zu fragen.* → [[denken]], [[arbeitsweise]]

## Offen — Runde 260715 (twin-fragesteller, aus Fidelity-Review 2026-07-15)

Quelle: Drift-Report `outputs/2026-07-15_fidelity.md` (Gesamt-Fidelity 87; zwei frische authentische
Goldproben aus dem Bopp-Faden 24.10.2025 + Wartstrasse-8-Statusmail 01.12.2025). Je in 1–2 Sätzen
beantwortbar.

1. ~~**Opener-Mirroring über «Hallo» hinaus — spiegelst Du JEDEN Anrede-Opener des letzten Eingangs?**~~
   **STATUS: BEANTWORTET durch Beleg am 17.07.2026 — NEIN, die Spiegel-Hypothese ist widerlegt.** Keine
   Rückfrage an Raphael nötig, zwei authentische Gegenbeispiele genügen: auf «Hallo Raphael» antwortet er
   «**Guten Morgen Peter**» (Weisser, 11.09.2025, eine Minute später — Tageszeit schlägt Spiegel); auf
   «Grüezi Herr Jans» antwortet er «**Geschätzte Frau Frick**» (05.09.2025 — Vertrautheit/Anlass schlägt
   Spiegel). Der Bopp-«Hallo» ist durch den bestehenden Marker «Anrede variiert mit dem Anlass, nicht der
   Person» erklärt. Marker in [[beziehungsregister]] entfernt und durch «Opener aus Anlass + Tageszeit +
   Vertrautheit» ersetzt; Don't-Regel ergänzt. Beleg: `outputs/2026-07-17_fidelity.md`.
2. **«vtl.» vs «vll.» (vielleicht) — zwei bewusste Schreibvarianten oder blosse Tippvarianz?** Du schreibst
   «vtl.» (Bopp, 24.10.2025) neben dem sonst belegten «vll.». Sind das für Dich einfach zwei austauschbare
   Kurzformen desselben Worts (Tagesform), oder benutzt Du sie in unterschiedlichen Kontexten? *Warum:
   klärt, ob der Zwilling beide Formen frei einsetzen darf.* → [[stimme]]
3. **Gruppierte «_ »-Punkteliste mit Leerzeilen-Blöcken — bewusste thematische Gliederung?** In der Bopp-
   Telefon-Traktandenliste trennst Du die Punkte durch Leerzeilen in Blöcke (Aussen-/Garagenparkplätze ·
   Keller-/Estrichräume · SIA-416-Flächen), statt sie linear zu listen. Gliederst Du «_ »-Listen bewusst
   thematisch in Leerzeilen-getrennte Blöcke, sobald mehr als ~4 Punkte zusammenkommen, oder war das hier
   Zufall? *Warum: präzisiert, ob der Zwilling längere «_ »-Listen thematisch clustern soll.*
   → [[arbeitsweise]], [[stimme]]
4. **«Hallo» statt «Hoi» — nur gespiegelter Opener, oder senkt eine nüchtern-koordinative Rückfrage die
   Anrede generell auf das neutralere «Hallo»?** Die Bopp-Mail ist sachlich-nüchtern (Referenz akzeptiert,
   Telefon-Traktanden), nicht warm. Wählst Du «Hallo» hier WEIL Bopp so eröffnet hat, oder weil eine rein
   koordinative, unpersönliche Rückfrage im Du generell eine Spur neutraler («Hallo») statt herzlich
   («Hoi»/«Lieber») ausfällt? *Warum: trennt den Spiegel-Trigger vom Tonlage-Trigger — beide würden hier
   «Hallo» erklären.* → [[beziehungsregister]], [[stimme]]

## Offen — Runde 260714j (twin-fragesteller, aus Fidelity-Review 2026-07-14j)

Quelle: Drift-Report `outputs/2026-07-14j_fidelity.md` (Gesamt-Fidelity ~86; frische Live-Goldprobe
14.07.2026, 12:00–12:16 Uhr, zwei bislang unerfasste Mails — Unternehmer-Du-Rueckfrage + formelles
Sie-Transmittal). Je in 1–2 Saetzen beantwortbar.

1. **«Du,» als eigener Satz-Filler direkt nach der Anrede — bewusstes Sprechmuster oder Tippfluss?**
   In der Mail an Felix Stählin schreibst Du «Hoi Felix, / Du, im Anhang das Angebot von REAP …» — die
   Zeile «Du,» ist grammatikalisch ueberfluessig (die Anrede «Hoi Felix» duzt ihn ja schon), wirkt wie
   ein gesprochener Auftakt-Filler («Du, weisst…»). Setzt Du dieses Wort bewusst als muendlichen
   Gespraechs-Einstieg, wenn Du eine Mail wie ein spontanes Gespraech beginnst (vgl. Text-Lacher «haha»,
   Batch 06), oder ist es reine Tippgewohnheit ohne eigene Bedeutung? *Warum: bisher nur 1 Beleg — ein
   zweiter wuerde ein neues, muendlich anmutendes Eroeffnungsmittel fest verankern.* → [[stimme]]
2. ~~**Projektvertrautheit schlaegt Personen-Erstkontakt bei der Sie-Anrede — generell oder Einzelfall?**~~
   **BEANTWORTET (Fidelity 260725, authentisch, Apple-Mail-Fallback):** NICHT generell — die Schwelle
   liegt an der ROLLE, nicht am Projektumfeld allein. Kontrastbeleg: Rahel Lämmler (Stadt-ZH-Fachstelle,
   selbe warme KISPI-Vorabklärung wie Vanvelten/Mans) bekommt beim Personen-Erstkontakt weiterhin das
   kalte «Sehr geehrte Frau Lämmler» (04.03.2026) — Behörde/Aufsicht bleibt auch im warmen Projekt kalt-
   formell, während technische Team-/Kontrollpartner (Vanvelten/Mans, Riesen Ingenieure/Estermann) sofort
   warm werden. In `beziehungsregister.md` verankert («Schwelle geklärt: Behörde bleibt kalt-formell,
   Team-/Kontrollpartner wärmt sofort»).
3. **Doppelte, fast identische Mail binnen 13 Minuten (Betreff-Varianten «PPTS KISPI» / «KISPI») —
   bewusste Korrektur/Praezisierung oder Versehen?** Du sendest zwei fast gleiche Mails an denselben
   externen Kontrolleur kurz hintereinander, nur der Betreff unterscheidet sich («… Projekt PPTS KISPI
   Kinderspital Zürich» vs. «… Projekt KISPI Kinderspital Zürich»). Korrigierst Du bewusst eine
   unpraezise Projektbezeichnung nach, sobald Dir ein fehlender Zusatz («PPTS») auffaellt, auch wenn das
   eine Doppel-Mail bedeutet? *Warum: klaert, ob Praezisions-Nachbesserung wichtiger ist als eine saubere
   Mailflut, ein Aspekt der Sorgfalt-Haltung.* → [[haltung]], [[arbeitsweise]]

## Offen — Runde 260714i (twin-fragesteller, aus Fidelity-Review 2026-07-14i)

Quelle: Drift-Report `outputs/2026-07-14i_fidelity.md` (Gesamt-Fidelity ~85; frische Live-Goldprobe vom
14.07.2026 selbst, Apple-Mail-Fallback — schliesst die Luecke des allerjuengsten Postfach-Rands direkt am
Tag des Reviews). Je in 1–2 Saetzen beantwortbar.

1. **Sie-Register + Kurzgruss ohne Block — Standard bei jeder operativen Rueckfrage-Antwort an einen
   eingespielten Sie-Fachplaner, oder Einzelfall?** An Livdin Bajrami (Jegen AG, Tuerbauer PPTS KISPI, Sie,
   eingespieltes Projekt) schliesst Du eine schnelle technische Bestaetigungs-Antwort mit «Lieber Gruss /
   Raphael Jans» — OHNE «Freundliche Gruesse» und OHNE Signaturblock, obwohl die Anrede «Geschaetzter Herr
   Bajrami» foermlich-Sie bleibt. Das bisherige Mapping kannte «Sie → FG+Block» praktisch ausnahmslos. Ist der
   Kurzgruss ohne Block Dein bewusstes Mittel fuer JEDE knappe, operative Antwort im laufenden Sie-Thread
   (unabhaengig vom Block-loesenden Faktor «dokumentierend vs. operativ», den bisher nur Du-Mails zeigten),
   oder war das hier Tagesform/Mobile-Compose-Verhalten? *Warum: ein zweiter Beleg wuerde die bisher fuer
   unumstoesslich gehaltene Sie→FG+Block-Regel um einen echten operativen Kurzgruss-Zweig ergaenzen.*
   → [[stimme]], [[beziehungsregister]]
2. **«Danke der Rückfrage.» als eigene Dank-Kurzform — Standard bei einer Klaerungs-Rueckfrage des
   Gegenuebers?** Statt «Besten Dank fuer Deine/Ihre Rueckfrage» schreibst Du knapp «Danke der Rückfrage.»
   (Genitiv-Kurzform, ohne Fuerwort). Ist das eine feste, noch unbelegte dritte Dank-Kurzform (neben «Besten
   Dank fuer …» und dem nackten «danke» am Satzende), die Du gezielt setzt, wenn jemand eine eigene Unklarheit
   durch Nachfragen aufloest (im Unterschied zu einer Bitte um Handlung)? *Warum: ergaenzt die Dank-Formeln-
   Skala um einen bisher nicht erfassten Anlass (Rueckfrage statt Handlung/Lieferung).* → [[stimme]] ·
   **BEANTWORTET (Fidelity 260714j):** JA, «Danke der X» ist eine feste dritte Dank-Kurzform. Zweiter,
   unabhaengiger Beleg (reines Sie-Transmittal an private Lueftungskontrolle KISPI, 14.07.2026, 12:00):
   «Zur Ergaenzung der Unterlagen der Bauentscheid, danke der Kenntnisnahme.» — hier bei einem reinen
   Zur-Kenntnis-Geben, nicht bei einer Rueckfrage. Die Formel ist also nicht anlassgebunden (Rueckfrage vs.
   Transmittal), sondern eine generelle knappe Dank-Variante. In stimme.md verankert.
3. **Technische Komplexitaets-Bremse («Sollte es zu kompliziert werden lassen wir das») — greift sie auch,
   wenn DU selbst die aufwendigere Idee eingebracht hast?** Bei der Schiebetor-Wandtaschen-Idee ziehst Du
   Deinen EIGENEN Vorschlag zurueck, sollte er den Tuerbauer zu sehr fordern — anders als «kann man machen,
   muss man nicht» (dort optionale Bauherren-Extras ablehnen), hier Dein eigener gestalterischer Einfall.
   Ist das ein genereller Reflex («eigene Ideen nie gegen den Ausfuehrungsaufwand des Unternehmers
   durchsetzen»), oder haengt es am Einzelfall (Schiebetor ist ohnehin Nebensache)? *Warum: praezisiert, ob
   der Aufwand-Schutz-Reflex auch die eigene gestalterische Urheberschaft einschliesst, nicht nur Bauherren-
   Wuensche.* → [[haltung]], [[denken]]

## Offen — Runde 260714h (twin-fragesteller, aus Fidelity-Review 2026-07-14h)

Quelle: Drift-Report `outputs/2026-07-14h_fidelity.md` (Gesamt-Fidelity 91; drei frische Goldproben aus
Apple-Mail-Fallback, 09.–13.07.2026, KISPI-Tuerplanung + SBB-Naeherbaurecht-Faden — bisher unabgedeckter
Zeitraum). Je in 1–2 Saetzen beantwortbar.

1. **Kleingeschriebenes «hoi» MITTEN im Anrede-Satz — bewusste Tonstufe oder Tippgewohnheit?** In
   «Geschätzter Herr Duran, geschätzter Herr Kübler, hoi Jens» (13.07.2026) steht «hoi» klein, obwohl
   «Hoi» als Anrede-Auftakt einer Mail sonst durchgaengig gross belegt ist. Ist die Kleinschreibung
   hier bewusst, weil «hoi Jens» syntaktisch nicht der Mail-Auftakt, sondern der dritte Teil einer
   Aufzaehlung ist (wie ein Nachsatz, nicht wie ein eigener Anrede-Beginn), oder reine Fluechtigkeit?
   *Warum: praezisiert, ob Gross-/Kleinschreibung der Anrede an die Satzposition gekoppelt ist.*
   → [[stimme]], [[beziehungsregister]]
2. **«Einfach verständlich.» als Abschluss-Bestaetigung nach einer technischen Erklaerung — eigenes
   Stilmittel?** Nach der Erklaerung einer Nummer-Systematik («Geschosszahl - FM - Türzahl
   fortlaufend» + Herleitungssatz) haengst Du den knappen Satz «Einfach verständlich.» an, bevor der
   naechste Absatz beginnt. Ist das Dein bewusstes Mittel, eine komplexe Erklaerung selbstbewusst
   abzuschliessen (statt eine Rueckfrage wie «ist das verstaendlich?» zu stellen), oder Tagesform?
   *Warum: bisher unbelegtes, mögliches drittes Formulierungsmuster neben Frage-Rueckversicherung und
   stillem Uebergang.* → [[stimme]], [[fachsignatur]]
3. **Kollektives «Euren Einsatz» trotz gemischtem Sie/Du-Empfaengerkreis — Standard bei Mixed-Register-
   Dank?** Die Mail an zwei Sie- und einen Du-Fachplaner schliesst mit «Besten Dank für die rasche
   Rückmeldung und **Euren** Einsatz» — Du-Plural fuer alle drei, obwohl zwei davon einzeln mit Sie
   angesprochen wurden. Bündelst Du einen Kollektiv-Dank am Mail-Ende IMMER im Du-Plural, sobald
   mindestens einer der Empfaenger Du ist, oder waere bei einer rein-Sie-Gruppe «Ihren Einsatz»
   gesetzt worden? *Warum: klaert, ob das Sie/Du der Einzelanreden am Ende zu einem einheitlichen
   Kollektiv-Pronomen verschmilzt oder ob Du dort foermlicher blieb(est).* → [[beziehungsregister]],
   [[stimme]]

## Offen — Runde 260714g (twin-fragesteller, aus Fidelity-Review 2026-07-14g)

Quelle: Drift-Report `outputs/2026-07-14g_fidelity.md` (Gesamt-Fidelity 86; Live-Goldproben
aus bisher unabgedecktem Zeitfenster 08.06.–02.07.2026, Fokus Sie-Fachplaner-Register).
Je in 1–2 Sätzen beantwortbar.

1. **Post-Call-Stichwortliste an einen Sie-Fachplaner ganz ohne Rahmung — bewusstes
   Kurzformat oder Ausrutscher?** Nach einem Telefonat mit TeKoSi (Stephan Manzoni,
   29.06.2026) schickst Du eine reine Sieben-Punkte-Stichwortliste als Mailinhalt — ohne
   Anrede, ohne Dank fürs Gespräch, ohne Schlussgruss. Die bisher belegte Regel kennt nur
   Traktandenlisten VOR einem Telefonat, immer mit Einleitungssatz. Ist die rahmenlose
   Post-Call-Liste Dein bewusstes Kurzformat, wenn Du direkt aus Deiner eigenen
   Gesprächsnotiz heraus verschickst (die Liste IST das Protokoll, kein Brief), oder war
   hier schlicht keine Zeit für die übliche Rahmung? *Warum: bisher nur 1 Beleg — ein
   zweiter würde eine fünfte, ganz undramatisierte Mailform neben den bekannten
   Registern verankern.* → [[arbeitsweise]], [[stimme]]
2. **«Geschätzte Frau X» schon nach einer einzigen Vor-Ort-Besichtigung — reicht das
   für den Anrede-Sprung von «Sehr geehrte» weg?** An Frau Mehari (Sanitärfirma,
   Albertstrasse 7) schreibst Du bereits in der zweiten Mail «Geschätzte Frau Mehari»,
   nachdem Ihr Euch einmal vor Ort getroffen habt — keine längere Korrespondenz, nur ein
   Termin. Reicht Dir ein einziger persönlicher Kontakt (Besichtigung/Telefonat) generell,
   um bei Handwerkern/Fachplanern von «Sehr geehrte/r» auf «Geschätzte/r» zu wechseln,
   unabhängig vom Fachgebiet, oder hängt das vom Eindruck/der Qualität des Kontakts ab?
   *Warum: präzisiert die Warming-Geschwindigkeit (vgl. bereits belegten Fall Thomas
   Wiedmer/SBB, Runde 260713g #1) für den Handwerker-/Gewerke-Kontext.*
   → [[beziehungsregister]]

## Offen — Runde 260714d (twin-fragesteller, aus Fidelity-Review 2026-07-14d)

Quelle: Drift-Report `outputs/2026-07-14d_fidelity.md` (Live-Goldprobe via Apple-Mail-Fallback,
Faden Stefan Tschopp 11.05.–04.06.2026 — schliesst die von 14c empfohlene Zeitfensterluecke
Ende Mai/Anfang Juni). Je in 1–2 Saetzen beantwortbar.

1. **Englischer Idiom-Einschub «as you wish» mitten im deutschen Fach-Du — Einzelfall oder
   eigenes Stilmittel?** In der Umgebungsplan-Mail an Stefan (04.06.2026) schreibst Du
   «… jedoch auch Böschung im Gefälle möglich; as you wish; Materialisierung kann …» — ein
   englischer Kurz-Idiom mitten im deutschen Fachsatz, nicht als vollstaendiger Sprachwechsel
   (vgl. dokumentiertes Englisch-Register), sondern als **eingestreute Redewendung**. Setzt Du
   solche kurzen englischen Wendungen («as you wish», «your call» o.ae.) bewusst ein, wenn Du dem
   Bauherrn explizit Entscheidungsfreiheit signalisieren willst (lockerer als «wie Du moechtest»),
   oder ist das Tagesform/Zufall? *Warum: bisher nur 1 Beleg — ein zweiter wuerde ein neues
   Mikro-Stilmittel fuer «Entscheidung an den Bauherrn zurueckgeben» fest verankern.* → [[stimme]]
2. **Direktes «Du musst mir einfach sagen was ich zeichnen soll» als Delegations-Formel bei
   offenen Gestaltungsfragen — Standard oder Einzelfall?** Bei einer gestalterisch offenen
   Detailfrage (Terrassen-Abtretung) gibst Du die Entscheidung mit dieser sehr direkten, fast
   auffordernden Formulierung an den Bauherrn zurueck, statt mehrere Varianten vorzuschlagen
   (Deine sonst belegte «in Varianten rechnen»-Grundhaltung). Ist das Deine bewusste Kurzform,
   wenn eine Frage rein geschmacklich/gestalterisch (nicht baurechtlich/technisch) ist und der
   Bauherr selbst am naechsten dran ist, oder widerspricht das dem Varianten-Prinzip? *Warum:
   praezisiert, wann Du direkt delegierst statt selbst Varianten vorzurechnen.* → [[denken]],
   [[arbeitsweise]]

## Offen — Runde 260714c (twin-fragesteller, aus Fidelity-Review 2026-07-14c)

Quelle: Drift-Report `outputs/2026-07-14c_fidelity.md` (Gesamt-Fidelity ~89; drei frische
Live-Goldproben aus bisher wenig abgedeckten Zeitraeumen/Registern: Wald-Investoren-Mail
2025-07-07 [Rand des Korpus], David-Chaled-Mail 2026-06-22 [Freund/Privatkunde-Du, TDD-artig],
HUB12-Netzwerk-Einladung 2026-06-05 [Peer-Du, Netzwerk]). Je in 1–2 Saetzen beantwortbar.

1. **Doppel-Gruss «Lieber Gruss» + voller «Freundliche Gruesse»-Block bei einer gewichtigen
   Freund-Du-Mail — bewusst oder wieder nur Automatik?** In der Kaufpreisempfehlungs-Mail an
   David (22.06.2026, Freund-Du, TDD-artige Ankaufspruefung mit hartem Fachkern) schliesst Du
   mit «Lieber Gruss / Raphael» UND direkt darunter dem vollen «Freundliche Gruesse»-Block —
   obwohl es sich um eine reine Beratungsmail ohne Rechnung/Beleg handelt (die Regel «Rechnung/
   Beleg→FG+Block, reine Beratung→Kurzgruss» haette hier nur «Lieber Gruss» erwartet). Ist das
   wieder die bekannte Mobile-/Outlook-Automatik (dann zaehlt nur «Lieber Gruss»), oder setzt Du
   bei besonders gewichtigen/folgenreichen Freund-Ratschlaegen (grosse Kaufentscheidung) bewusst
   BEIDE Ebenen — den warmen persoenlichen Gruss UND den formellen Beleg-Block —, um dem Rat
   zusaetzliches Gewicht zu geben? *Warum: klaert, ob der Zwilling diesen Doppel-Gruss bei
   aehnlich gewichtigen Freund-Mails nachbilden darf oder ob es Automatik-Rauschen bleibt, das
   er nie erzeugen soll.* → [[stimme]]
2. **«Geschaetzter <Vorname>» bei einer noch jungen, aber schon familiaer-warmen Freund-
   Beziehung — Register-Fehleinschaetzung oder bewusste Zwischenstufe?** An David (den Du samt
   Familie erst kuerzlich persoenlich kennengelernt hast: «Es hat mich sehr gefreut, Dich und
   Deine Familie am Freitag kennenzulernen») schreibst Du «Geschaetzter David», nicht «Hoi» oder
   «Lieber». Ist «Geschaetzter» hier bewusst gewaehlt, weil der Inhalt (Kaufpreisempfehlung,
   grosse Summe) Gewicht verlangt, unabhaengig von der schon spuerbar warmen persoenlichen
   Naehe — oder haettest Du bei der naechsten, weniger folgenreichen Mail an David eher «Hoi»/
   «Lieber» gewaehlt? *Warum: praezisiert, ob «Geschaetzter» primaer am INHALT (Gewicht der
   Aussage) oder an der BEZIEHUNGSDAUER haengt — bisherige Belege zeigen beides getrennt, hier
   fallen sie in einer sehr jungen Beziehung zusammen.* → [[beziehungsregister]], [[stimme]] ·
   **BEANTWORTET (Fidelity 260714d):** JA, Inhalt schlaegt Beziehungsdauer. Zweiter, unabhaengiger
   Beleg im Stefan-Tschopp-Faden (11.05.–04.06.2026, laengst eingespieltes Du): durchgehend «Hoi
   Stefan» bei Routine-Mails, aber genau EINE Mail mit «Geschaetzter Stefan» — exakt die, die das
   baurechtlich verbindliche Ergebnis liefert («baugesetzlich maximal machbar», Vordach «ohne
   Näherbaurecht»). Die naechste Mail desselben Fadens (2 Tage spaeter) faellt sofort zurueck auf
   «Hoi Stefan». «Geschaetzter» ist ein **Inhalts-Spike** (nicht klebend), ausgeloest vom Gewicht
   des konkreten Ergebnisses, unabhaengig von Beziehungsdauer/-waerme. In beziehungsregister.md
   verankert.
3. **«Beste Gruesse» als Schluss einer professionellen Netzwerk-Event-Einladung an mehrere
   Architektenkollegen — eigenstaendiges Register oder Zufall?** Die HUB12-Einladung (an
   mehrere Peers, 05.06.2026) schliesst mit «Beste Gruesse», nicht mit dem bisher fuer
   Architektenkollegen-Peers belegten «Lieber Gruss» (vgl. Andreas-Geser-Einladung, Fidelity
   260616). Ist «Beste Gruesse» Dein bewusster Gruss fuer eine **Massen-/Serien-Einladung** an
   mehrere Peers gleichzeitig (etwas foermlicher als die 1:1-Peer-Mail), oder waehlst Du den
   Gruss hier frei/situativ? *Warum: prueft, ob die Serien-/Mehrfachversand-Situation selbst
   einen eigenen Gruss-Trigger darstellt.* → [[stimme]], [[beziehungsregister]]
4. **Anmeldung/Aufwand fuer einen Netzwerk-Kontakt aktiv selbst uebernehmen — generelles
   Fuersorge-Muster oder Einzelfall?** Bei der HUB12-Einladung an Peter meldest Du ihn OHNE
   Rueckfrage gleich selbst zum Event an («Ich habe dich gleich … angemeldet – du musst dich um
   nichts mehr kuemmern»), waehrend Du anderen Empfaengern (Rafael, Marco) nur den Link
   schickst. Ist das aktive Abnehmen des Anmeldeschritts ein bewusstes Zeichen besonderer Naehe/
   Fuersorge fuer die engsten Kontakte, oder schlicht davon abhaengig, ob Du die Anmeldedaten der
   Person zufaellig zur Hand hast? *Warum: klaert, ob «Aufwand fuer den Anderen abnehmen» auch im
   informellen Netzwerkkontext (nicht nur Bauherr/Unternehmer) ein bewusster Beziehungsmarker
   ist.* → [[arbeitsweise]], [[haltung]]
5. **Persoenliche Rueckblende NACH dem Fachteil, VOR dem Gruss — eigener Baustein oder Variante
   der Wunschformel?** In der David-Mail steht nach der ganzen fachlichen Analyse noch ein
   eigener, persoenlicher Absatz («Es hat mich sehr gefreut, Dich und Deine Familie am Freitag
   kennenzulernen. Hoffentlich bis bald.») VOR dem Gruss — mehr als die bekannte kurze
   Wunschzeile («schoenen Nachmittag»), eher eine ganze Rueckblende auf die persoenliche
   Begegnung. Setzt Du das bewusst bei Mails an frisch kennengelernte, aber schon persoenlich
   warme Kontakte (Familie/privater Rahmen involviert), um die Fachmail menschlich zu rahmen,
   oder ist das Tagesform? *Warum: praezisiert die «warm rahmen, praezise im Kern»-DNA-Kernregel
   um einen konkreten, bisher nur als Wunschzeile bekannten Baustein.* → [[stimme]], [[haltung]]

## Offen — Runde 260714b (twin-fragesteller, aus Fidelity-Review 2026-07-14b)

Quelle: Drift-Report `outputs/2026-07-14b_fidelity.md` (Live-Goldprobe, drei authentische
Vor-Claude-Mails Dez 2025 in drei Registern; Konsolidierungs-Review, Gesamt-Fidelity ~90 —
die Golds bestaetigen bestehende Regeln, diese Fragen zielen auf die Raender). Je in 1–2
Saetzen beantwortbar.

1. **Gedankenstrich «–» in MAILS — erlaubt, obwohl in Dokumenten/Folien verboten?** In der
   Bauentscheid-Sie-Mail an die Bauherrin nutzt Du «–» sowohl als Listen-Bullet («– das
   Bauinstallationsgespraech …») als auch im Betreff («Wartstrasse 8 – Naechste Schritte»). Die
   Regel «kein Gedankenstrich als Stilmittel» ist ausdruecklich auf Dokumente/Folien begrenzt.
   Gilt in Mails also: «–» als Bullet und Betreff-Trenner ist bewusst erlaubt, und das Verbot
   greift nur in DOCX/PDF/Folien? *Warum: verhindert, dass der Zwilling die Doku-Regel
   ueberdehnt und Deine Mail-Bullets/Betreffzeilen faelschlich glaettet.* → [[stimme]]
2. **Freiwilliger optionaler Zusatzvorschlag am Ende einer fertigen Lieferung — System oder
   Zufall?** In der STWEG-Korrektur an den Geschaefts-Du-Partner bietest Du unaufgefordert eine
   weitere **optionale** Verfeinerung an («Beispielsweise koennte man noch die Leerzeilen der
   ehemaligen Parkplatzauflistung … loeschen»), hypothetisch gerahmt mit «koennte man». Haengst
   Du solche freiwilligen Mehrwert-Vorschlaege systematisch an eine abgeschlossene Lieferung an,
   oder nur wenn Dir spontan etwas auffaellt? *Warum: klaert, ob der Zwilling proaktiv einen
   optionalen Zusatzschritt mitliefern soll oder die Lieferung sauber abschliesst.*
   → [[arbeitsweise]], [[haltung]]
3. **«Geschaetzter <Vorname>» bei eingespieltem Geschaefts-Du-Partner — dauerhaft register-fix
   oder wandert es mit Vertrautheit zu «Hoi»?** Beim langjaehrigen STWEG-Partner bleibst Du bei
   «Geschaetzter Christoph» + «Lieber Gruss». Ist «Geschaetzter» bei diesem Kontakttyp
   (Investor-/Geschaefts-Du mit Respekt-Distanz) dauerhaft die Anrede, oder gibt es einen Punkt,
   ab dem Du zu «Hoi Christoph» wechselst? *Warum: praezisiert, ob «Geschaetzter» ein stabiles
   Register oder eine Vorstufe zu «Hoi» auf der Vertrautheitsachse ist.* → [[beziehungsregister]]
4. **STWEG-Wertquoten: normierst Du je Liegenschaft einzeln auf 1000 (nicht nur gesamthaft)?**
   Du korrigierst eine Einheit von 178 auf 179, ausdruecklich damit «beide Liegenschaften
   einzeln im Total 1000» ergeben. Ist die Je-Liegenschaft-auf-glatt-1000-Normierung Dein fester
   Pruefschritt bei STWEG-Quoten (statt nur die Gesamtsumme zu pruefen)? *Warum: schaerft ein
   bislang nur einmal belegtes Fachsignatur-Muster fuer den Skill stockwerkeigentum /
   wertquoten-rechner.* → [[fachsignatur]]

## Offen — Runde 260714 (twin-fragesteller, aus Fidelity-Review 2026-07-14)

Quelle: Drift-Report `outputs/2026-07-14_fidelity.md` (bisher unverarbeitetes Rohmaterial
`raw/260713-mailbatch-37.md` nachtraeglich eingearbeitet — Klammerkette-Emoji im Sie-Register,
Formularfeld-Fragenkatalog, Selbst-Rollenklaerung). Je in 1–2 Saetzen beantwortbar.

1. **Klammerkette 😊))))))) im Handwerker-Sie — Einzelfall oder echte Register-Ausnahme?** Du
   schliesst eine Werkplan-Freigabe an den Fensterbauer (Sie, aber eingespielt/warm) mit einem
   Smiley + langer Klammerkette. Die bisherige Regel sagt «kein Emoji in Geschaeft/Sie». Ist das
   ein bewusstes Ausnahme-Signal fuer **eingespielte, freundschaftlich gewordene
   Handwerker-Partner** (unabhaengig vom Sie), oder war es ein spontaner Tagesform-Moment nach
   einem guten Projektabschluss? *Warum: die bestehende Emoji-Regel wuerde diesen Beleg als Fehler
   ausschliessen — klaert, ob die Schwelle wirklich am Du/Sie haengt oder an der persoenlichen
   Naehe zum Gewerke-Partner.* → [[stimme]]
2. **Klammerketten-Laenge als Mass fuer Ausgelassenheit?** Die konkrete Kette hatte sieben
   schliessende Klammern. Ist die Laenge bei Dir bedeutungslos/zufaellig getippt, oder correliert
   mehr Klammern bewusst mit mehr Ausgelassenheit/Erleichterung (z.B. nach einem erfolgreichen
   Projektmeilenstein)? *Warum: praezisiert, ob der Zwilling die Laenge nachbilden soll oder nur
   das Vorhandensein der Geste.* → [[stimme]]
3. **Formularfeld-Fragenkatalog — nur bei Unterschriftenfeldern oder auch bei anderen amtlichen
   Formularen?** Du baust bei unklaren Unterschriftenfeldern einen A)-D)-Fragenkatalog auf
   Feld-Ebene. Nutzt Du dieselbe Feld-fuer-Feld-Praezision auch bei anderen mehrdeutigen
   Formularen (z.B. Energienachweis-Formulare, Z3-Formular SRZ), oder ist das spezifisch fuer
   Unterschriften-/Vollmachtsfragen? *Warum: klaert die Reichweite dieses neu belegten
   Fachsignatur-Musters.* → [[fachsignatur]]
4. **Explizite Selbst-Rollenklaerung — nur beim Projektstart mit neuem Team, oder auch bei
   bestehenden Teams nach einem Wechsel?** Beim KISPI-Planerteam-Start benennst Du Deine eigene
   Rolle explizit. Wiederholst Du diese Selbstverortung, wenn im laufenden Projekt ein neues
   Teammitglied dazukommt (nicht das ganze Team neu ist), oder gilt sie nur beim Erststart?
   *Warum: praezisiert, ob der Zwilling die Rollenklaerung bei jedem Teamzuwachs oder nur beim
   vollstaendigen Projektstart wiederholt.* → [[arbeitsweise]]

## Offen — Runde 260713h (twin-fragesteller, aus Fidelity-Review 2026-07-13 Achtlauf)

Quelle: Drift-Report `outputs/2026-07-13h_fidelity.md` (Gesamt-Fidelity ~87; gezielte Stichproben
INNERHALB bereits abgedeckter Batches statt weiterem Sequential-Sweep, um Redundanz zu meiden —
Register-Gap-Suche: kalter Telefon-Nachfass ohne Referral + Plural-Sie-Kollektivanrede). Je in
1–2 Sätzen beantwortbar.

1. **Cc-Auftraggeber schon bei der allerersten Kaltkontakt-Mail — immer, oder nur wenn der
   Kontext das nahelegt?** Bei Keisenhut (Liegenschaftsverwaltung, 22.05.2026) setzt Du Roman
   Steinmann (Nova, Auftraggeber) von der ERSTEN Zeile an ins cc, obwohl es nur um einen
   Rückruf-Termin geht und Steinmann nichts beizutragen hat. Machst Du das bei JEDER
   Kaltakquise im fremden Auftrag automatisch so, oder nur wenn Du erwartest, dass der
   Auftraggeber ohnehin bald involviert wird (z.B. weil er die Rechnung/den Termin am Ende
   sieht)? *Warum: der bisher belegte Cc-Reflex galt nur für Devis-/Vergabe-Mails — prüft, ob
   er wirklich schon am Tag 1 eines Kontakts gilt oder erst ab einer gewissen Mail-Schwere.*
   → [[arbeitsweise]], [[beziehungsregister]]
2. **«Geschätzte Herren» ohne Frauenanteil — wie reagierst Du, sobald EINE Frau im
   Empfängerkreis ist?** Bei einer reinen Männer-Sie-Gruppe (Kübler + Spahic, 17.04.2026)
   schreibst Du knapp «Geschätzte Herren,». Wechselst Du sofort zu «Geschätzte Damen und
   Herren», sobald irgendeine Frau im To/Cc steht — auch wenn sie inhaltlich nicht die
   Hauptadressatin ist — oder bleibt es bei «Geschätzte Herren» und die Frau wird separat
   genannt? *Warum: die reine Männer-Variante war bisher nicht belegt, die Schwelle zur
   gemischten Form ist offen.* → [[beziehungsregister]]
3. **«Besten Dank für Ihre Bemühungen» — nur bei Bitte um aktive Handlung (Rückruf), oder
   auch bei reiner Bitte um Kenntnisnahme?** Du dankst dem Verwalter Keisenhut «für Ihre
   Bemühungen», bevor er überhaupt etwas getan hat (reine Vorschuss-Dankesformel für einen
   erhofften Rückruf). Nutzt Du diese Formel gezielt nur, wenn Du um eine AKTIVE Handlung
   bittest (Rückruf, Termin, Entscheid), oder auch bei simplen «zur Kenntnis»-Bitten? *Warum:
   trennt sie sauber vom generischeren «Besten Dank im Voraus».* → [[stimme]]
4. **Telefon-Nachfass ohne Referral — schreibst Du den Anlass je aus, oder bleibt es immer
   so implizit wie bei Keisenhut («Ich habe Sie versucht telefonisch zu erreichen»)?** Die
   Mail nennt weder WARUM Du anrufen wolltest noch woher die Nummer/Adresse stammt (anders als
   die Familien-Referral-Mail an Würsch, die den Bruder als Quelle nennt). Lässt Du den
   Kontext bei einem sachlich selbsterklärenden Anlass (Liegenschaftsverwalter der Zielimmobilie)
   bewusst weg, weil er sich von selbst versteht, oder ist das eine Ausnahme? *Warum: klärt, ob
   «Anlass immer benennen» (Referral-Prinzip) eine harte Regel ist oder nur gilt, wenn der Anlass
   nicht ohnehin evident ist.* → [[stimme]], [[fachsignatur]]

## Offen — Runde 260713g (twin-fragesteller, aus Fidelity-Review 2026-07-13 Siebtlauf)

Quelle: Drift-Report `outputs/2026-07-13g_fidelity.md` (Gesamt-Fidelity 93; neue Goldproben vom
aktuellsten Postfach-Rand 09.–13.07.2026, ausserhalb des bisherigen Sequential-Sweeps). Je in
1–2 Sätzen beantwortbar.

1. **Reicht eine kooperative Erst-Antwort schon für den Anrede-Wechsel Sehr-geehrte→Geschätzte?**
   Bei Thomas Wiedmer (SBB, Fallübernahme 02.07.2026) schreibst Du bereits in der ZWEITEN Mail an
   ihn «Geschätzter Herr Wiedmer» — obwohl er neu im Fall ist und Ihr erst eine Antwort-Runde
   ausgetauscht habt. Reicht Dir eine substanzielle, kooperative Erst-Antwort (er hat konkret
   geholfen/einen Vorschlag gemacht) bereits aus, um sofort zu «Geschätzte/r» zu wechseln, oder war
   hier die Vorgeschichte (Fall bereits vorbesprochen, Wiedmer von der Vorgängerin warm übergeben)
   der eigentliche Grund? *Warum: das bisherige Wiki-Muster (Batch 02, «NEUER Kontakt startet
   foermlich») haette hier noch «Sehr geehrter» erwartet — praezisiert die Warming-Geschwindigkeit.*
   → [[beziehungsregister]], [[stimme]]
2. **@-Mention als Register-Umschalter in Gruppenmails — Standard oder Einzelfall?** In der
   KISPI-Mail an Levi/Bajrami/Fabian wechselst Du per «@Name» direkt im Fliesstext zwischen Du
   (Levi, Fabian) und Sie (Bajrami) — innerhalb DERSELBEN Mail, ohne separaten Anrede-Kopf pro
   Person. Machst Du das bei jeder Multi-Empfaenger-Mail mit gemischtem Register so (statt eines
   gestapelten Anrede-Kopfs «Geschätzter X / Sehr geehrter Y»), oder nur bei kurzen,
   koordinativen Pendenz-Mails? *Warum: bisher nur 1× belegt — ein zweiter Beleg wuerde den Marker
   fest in beziehungsregister.md verankern (Echo-Schutz vor Overfitting).* → [[beziehungsregister]],
   [[arbeitsweise]] · **BEANTWORTET (Fidelity 260714h):** JA, Standard bei kurzen koordinativen
   Pendenz-/Team-Mails. Zweiter, unabhaengiger Beleg (Pendenz-Mail an Levi Hiltmann, 13.07.2026):
   «@Spahic Albin Bitte Angebotsfreigabe … / @Fabian Würsch Bitte Finale Tür-ID …» — die @-Markierung
   selbst ist das feste Signal, das Namensformat (Nachname-Vorname vs. Vorname-Nachname) bleibt
   uneinheitlich. In beziehungsregister.md als bestaetigter Marker verankert.
3. **Pendenzenliste ohne Bullet-Marker — Zufall oder eigene Kurzform?** In derselben KISPI-Mail
   stehen die vier offenen Punkte als reine Zeilen ohne «_ »/«-»-Praefix. Ist das eine bewusste,
   noch schlankere Variante fuer die schnelle interne Pendenzenliste (Bullet nur bei
   externen/dokumentierenden Listen), oder schlicht ein beim Tippen/Copy-Paste verlorenes
   Formatierungszeichen? *Warum: klaert, ob eine vierte, unmarkierte Listenform neben
   «_ »/«-»/«➢»/«A)» gehoert.* → [[stimme]], [[arbeitsweise]]

## Offen — Runde 260713f (twin-fragesteller, aus Fidelity-Review 2026-07-13 Sechstlauf)

Quelle: Drift-Report `outputs/2026-07-13f_fidelity.md` (Gesamt-Fidelity 94; Signatur-Automatik-
Artefakt auf Desktop generalisiert, live aus «Gesendete Elemente» Okt/Nov 2025 gezogen). Je in
1–2 Sätzen beantwortbar.

1. **«Lgr»/«lgr» als Signatur-Abschalter — bewusst oder Zufall?** Der einzige Beleg ohne
   Automatik-Block (Stefan Tschopp, 13.11.2025) trägt den abgekürzten Gruss «Lgr»; alle drei
   Belege MIT Block tragen den vollen Handgruss + Name. Schaltest Du bei einer sehr kurzen,
   hochfrequenten Antwort im selben Faden die Signatur bewusst ab (z.B. weil Outlook sie beim
   ersten Mail des Fadens schon gesetzt hat und Du bei der Reply nicht erneut einfügst), oder ist
   das Zufall/Compose-Verhalten, das nichts mit Deiner Absicht zu tun hat? *Warum: klärt, ob der
   Zwilling «Lgr ohne Block» als eigenes Muster für schnelle Fadenantworten übernehmen soll oder
   ob «Lgr» rein als Wort-Signal reicht, unabhängig vom (ohnehin nie reproduzierten) Block.*
   → [[stimme]]
2. **Gilt die Automatik-Verdopplung auch bei Sie-Mails mit hand­getipptem Gruss?** Alle drei
   Desktop-Belege sind Du-Mails. Bei den gesichteten Sie-Mails (Frau Costamagna, Baugespann-
   Anfrage) gab es nie einen separaten handgetippten Gruss vor dem Block — dort WAR «Freundliche
   Grüsse» direkt der Handgruss. Schreibst Du in einer formellen Sie-Mail je einen anderen
   Handgruss (z.B. «Mit bestem Dank» oder eine Grussformel ausserhalb des Standard-Repertoires),
   der dann ebenfalls von der Automatik verdoppelt würde, oder fällt in Sie-Mails der Handgruss
   ohnehin mit dem Blockgruss zusammen? *Warum: prüft, ob die Automatik-Verdopplung ein
   Du-spezifisches Phänomen ist oder auch im Sie-Register auftreten könnte.* → [[stimme]],
   [[beziehungsregister]]
3. **Reply vs. neue Mail als Trigger?** Beide Fälle (Block-Verdopplung UND Lgr-ohne-Block) waren
   Antworten in einem laufenden Thread (nicht neue Mails). Fällt Dir auf, ob Du bei einer
   komplett NEUEN Mail (kein Thread, kein Zitat darunter) die Signatur konsistenter
   setzt/weglässt als bei einer Reply, wo Outlook manchmal die Signatur des Erstmails im Faden
   nicht wiederholt? *Warum: trennt einen reinen Software-/Compose-Trigger vom Inhalts-/Ton-
   Trigger, den der Zwilling nachbilden soll.* → [[stimme]], [[arbeitsweise]]

## Offen — Runde 260713e (twin-fragesteller, aus Fidelity-Review 2026-07-13 Fünftlauf)

Quelle: Drift-Report `outputs/2026-07-13e_fidelity.md` (Gesamt-Fidelity 94; satzweise wir/ich-
Trennung innerhalb derselben wir-erlaubten Mail, dreifach triangeliert aus bereits vorhandenem
Rohkorpus, kein frischer Live-Pull möglich — Apple Mail durchgehend AppleEvent-Timeout).

1. **Gilt die satzweise wir/ich-Trennung auch RUECKWAERTS — also «wir» fuer eine persoenliche
   Meinungsaeusserung, wenn sie im Namen des Teams gemeint ist?** Alle drei Belege zeigen «wir»
   nur bei Handlungs-/Absichtsverben (moechten/wuerden/machen), «ich» nur bei Bitt-/Denkverben.
   Gibt es einen Fall, wo Du eine reine Meinung («ich finde/wir finden») im institutionellen
   Auftritt mit «wir» einleitest, obwohl es kein Handlungssatz ist? *Warum: prueft, ob die Regel
   auf Verbtyp (Handlung vs. Aussage) oder nur auf Handlungsverben eng begrenzt bleibt.*
   → [[haltung]]
2. **Kollektiv-«wir» im Du-Register ausserhalb Honorar/Geld:** der KISPI-Beleg («Ich denke wir
   machen eine Abgebotsrunde») ist ein Geld-Kontext. Nutzt Du dieselbe satzweise Trennung auch
   in einer Du-Mail OHNE Geldbezug, z.B. bei einer rein fachlichen Projektentscheidung («ich
   schlage vor, wir gehen den Weg X»)? *Warum: prueft, ob der Fund geld-/amtsspezifisch ist oder
   generell fuer Handlungs-vs-Meinungs-Saetze gilt.* → [[haltung]], [[denken]]
3. **«Wir» im Betreff/in der Anrede-Zeile selbst (nicht nur im Fliesstext):** kommt «wir» je
   schon in der Eroeffnungszeile vor («Wir moechten Ihnen mitteilen …») statt erst im zweiten
   Satz nach einer persoenlichen Bitte? Oder eroeffnest Du im institutionellen Auftritt immer
   erst persoenlich (Dank/Bitte) und schaltest erst danach auf «wir» um? *Warum: klaert die
   Reihenfolge/Dramaturgie des Wechsels, nicht nur seine Bedingung.* → [[haltung]], [[stimme]]

## Offen — Runde 260713d (twin-fragesteller, aus Fidelity-Review 2026-07-13 Viertlauf)

Quelle: Drift-Report `outputs/2026-07-13d_fidelity.md` (Gesamt-Fidelity 92; Näherbaurecht-Cluster
Thalwil/SBB + Amts-Freigabe KISPI. Die Haltungs-Regel wir/ich wurde in diesem Lauf bereits
generalisiert; die folgenden Fragen betreffen die verbleibenden neuen Mikro-Bausteine). Je in
1–2 Sätzen beantwortbar.

1. **«Nächster Schritt:»-Heading — eigene Kategorie oder Variante von «Fazit»?** In der Plan-
   Übergabe an Stefan Tschopp (08.07.2026) setzt Du «**Nächster Schritt:**» als eigenes fettes
   Heading vor eine Stichwort-Liste (keine Sätze, nur die zwei nächsten Verfahrenspunkte). Ist das
   eine bewusst andere, schlankere Kategorie als «Fazit»/«Zusammenfassung:» (dort volle Sätze mit
   Handlungsempfehlung), reserviert für die reine **Verfahrens-Ausblick**-Situation ohne Befund, oder
   einfach eine Tagesform-Variante von «Fazit»? *Warum: klärt, ob der Zwilling ein drittes,
   eigenständiges Heading neben «Zusammenfassung»/«Fazit» führen soll.* → [[arbeitsweise]]
2. **wir/ich bei UNBEKANNTER Behörde:** Die generalisierte Regel (dieser Lauf) sagt «wir» gilt im
   institutionellen Auftritt (Offerte/Mahnung/Amts-Meldung). Der Beleg (Herr Sörensen) ist aber ein
   **bekannter** Amts-Kontakt («Geschätzter Herr»). Schreibst Du auch einer **unbekannten** Fachstelle
   (kalt-formelles «Sehr geehrte/r», Erstkontakt) im selben institutionellen Auftrag «wir», oder bleibt
   es dort bei «ich», weil noch keine eingespielte Beziehung besteht? *Warum: trennt institutionellen
   Auftritt von Vertrautheit als zwei mögliche, bisher vermengte Trigger für «wir».* → [[haltung]],
   [[beziehungsregister]]
3. **«Für Dein finales Go bezüglich Vorgehen bin ich Dir dankbar» — Standard bei jeder
   Zwei-Optionen-Weiche?** Bei der SBB-Entschädigungsfrage legst Du Stefan zwei Varianten (A/B) vor
   und schliesst mit dieser Entscheidungs-Bitte, statt mit «Gib mir bescheid» oder «kurzes OK-
   Feedback». Ist diese Formel Dein fester Abschluss, wenn der Bauherr zwischen **mehreren
   gleichwertigen Optionen** wählen muss (im Unterschied zu einem simplen Ja/Nein-Review)? *Warum:
   ergänzt die bereits belegte Freigabe-Bitten-Skala («kurzes OK-Feedback» vs. «Prüfung und
   Freigabe») um eine dritte, auf echte Auswahlentscheide zugeschnittene Formel.* → [[stimme]],
   [[arbeitsweise]]
4. **Bare «danke» am Satzende in formeller Sie-Mail:** «Wir bitten um Freigabe des Auflagepunktes,
   danke.» (Herr Sörensen) hängt ein kleingeschriebenes, unpunktiertes «danke» direkt an den
   Hauptsatz, ohne «Besten Dank» oder eigenen Absatz. Ist das eine bewusste, sehr knappe Dank-
   Kurzform für die routinemässige Amts-Meldung an einen eingespielten Kontakt, oder Flüchtigkeit
   beim schnellen Tippen? *Warum: prüft, ob eine dritte, noch knappere Dank-Stufe neben «Besten
   Dank für …» und der Wunschzeile existiert.* → [[stimme]]

## Offen — Runde 260713c (twin-fragesteller, aus Fidelity-Review 2026-07-13 Drittlauf)

Quelle: Drift-Report `outputs/2026-07-13c_fidelity.md` (Gesamt-Fidelity 95; Golddatensatz Lieferanten-
Sie-Zahlungszusage + Healthcare-Kennwert-Kontrastpaar Du/Sie). Je in 1–2 Saetzen beantwortbar.

1. **«Besten Dank und freundliche Gruesse» als verschmolzener Schluss-Satz:** In der Bestaetigung an
   Quenson (3dsixty, 12.02.2026) schreibst Du «**Besten Dank und freundliche Gruesse**» als EINEN Satz,
   statt Dank und Gruss (wie sonst belegt) auf zwei Zeilen zu trennen. Ist das eine bewusste, kompakte
   Schluss-Variante fuer die ganz kurze Bestaetigungsmail (weniger als 3 Saetze Inhalt), oder reine
   Tagesform/Zufall? *Warum: bisher nur 1 Beleg dieser verschmolzenen Form — klaert, ob sie als eigene
   Kurzform neben der getrennten «Besten Dank … / Freundliche Gruesse»-Zeile gehoert.* → [[stimme]]
2. **«Ausserordentlicher Zahlungslauf» als eigener Fachbegriff:** Du kuendigst einem Lieferanten
   proaktiv an, wann seine Rechnung bezahlt wird, mit dem Begriff «**ausserordentlicher Zahlungslauf**»
   (Quenson, 12.02.2026). Ist das ein feststehender Begriff aus Deiner eigenen Buchhaltungspraxis (regulaerer
   vs. ausserordentlicher Zahlungslauf als zwei unterschiedene Prozesse), oder eine spontane Formulierung
   fuer «ich ueberweise sofort, ausserhalb des normalen Rhythmus»? *Warum: klaert, ob der Zwilling diesen
   Begriff als festen Baustein bei Eil-Zahlungen an Lieferanten einsetzen soll.* → [[arbeitsweise]],
   [[fachsignatur]]
3. **Kennwerttabelle im Du vs. Sie — identischer Inhalt, unterschiedliche Form?** Am selben Tag (09.02.2026)
   sendest Du dieselbe Healthcare-Kostenkennwert-Tabelle einmal im Fliesstext mit Gedankenstrich-Bindestrich
   («CHF 2'000.- bis 3'000.-: Leichter Umbau …», an Albin/Du) und einmal mit «_ »-Unterstrich-Bullet-Praefix
   («CHF 2'000.- - 3'000.- _ Leichter Umbau …», an Weber/Sie). Ist die Bullet-Form bewusst dem foermlicheren
   Sie-Fachplaner-Register vorbehalten (praeziser/tabellarischer), waehrend der Fliesstext im Du dem
   Betreiber die Lesbarkeit erleichtert, oder ist das reine Tagesform? *Warum: praezisiert, ob die
   Listentypografie auch vom Register (nicht nur vom Inhaltstyp) abhaengt.* → [[stimme]], [[fachsignatur]]

## Offen — Runde 260713b (twin-fragesteller, aus Fidelity-Review 2026-07-13 Zweitlauf)

Quelle: Drift-Report `outputs/2026-07-13b_fidelity.md` (Gesamt-Fidelity 94; komplementaerer Zweitlauf mit
operativ-Du / Investor-Du / Peer-Du; einzige Drift = Binnen-Fettung von Kennzahlen, jetzt registeruebergreifend
belegt). Je in 1–2 Saetzen beantwortbar.

1. **Binnen-Fettung registeruebergreifend — Schwelle:** In der warm-liefernden Investor-Du-Studienmail (Thomas)
   fettest Du die Kernkennzahlen inline (CHF 12.34 Mio, 44 Pflegezimmer, 2'400 m²), genau wie die Fachbegriffe
   in der formellen Behoerden-Anfrage (Steiger, Morgenlauf). Ist die Binnen-Fettung Dein festes Mittel fuer
   **jede fachlich dichte Mail** (die eine Zahl/den einen Begriff, den der Empfaenger auf einen Blick erfassen
   soll — Du wie Sie), oder setzt Du sie nur bei Ergebnis-/Kennzahl-Liefermails? *Warum: die Drift trat in
   BEIDEN Laeufen registeruebergreifend auf — klaert, ob der Zwilling die Fettung als Standard-Scan-Hilfe
   nachbilden soll.* → [[stimme]], [[fachsignatur]]
2. **Gruss-Mittelstufen-Skala im reziproken Du:** Am selben Investor-Du-Faden stehen «Bester Gruss» (Offert-
   Transmittal), «Lieber Gruss» (operative Uebergabe) und «Herzliche Grüsse» (gehaltvolle Studien-Liefermail).
   Ist die Reihenfolge der Waerme bewusst gestuft (Bester → Lieber → Herzliche, steigend mit Gehalt/Naehe der
   Einzelmail), oder greifst Du im warmen Du eher frei zur Tagesform? *Warum: kalibriert die drei belegten
   Du-Mittelstufen gegeneinander.* → [[stimme]], [[beziehungsregister]]
3. **«Kurz zusammengefasst:» als fester Ergebnis-Mail-Kopf:** Die Studien-Liefermail eroeffnet den Ergebnis-
   teil mit dem fetten «Kurz zusammengefasst:» + Kennzahl-Block. Ist das Dein **fester Baustein** fuer jede
   Ergebnis-/Studien-Liefermail (Verdichtung der Kernzahlen an den Anfang, bevor die Details/Anhaenge kommen),
   oder nur bei umfangreichen Berichten? *Warum: operationalisiert den neu belegten Ergebnis-Mail-Kopf.*
   → [[arbeitsweise]], [[stimme]]

## Offen — Runde 260713 (twin-fragesteller, aus Fidelity-Review 2026-07-13)

Quelle: Drift-Report `outputs/2026-07-13_fidelity.md` (Gesamt-Fidelity 93; Register-Kontrast eigene
Gesellschaftsrechts-Sache-Sie / Behörden-Fachanfrage-Sie / warm-privates Du. Die Drift sitzt diesmal
ausschliesslich in Formatierungs-/Struktur-Details, nicht mehr im Tonfall). Je in 1–2 Sätzen beantwortbar.

1. **Buchstaben-Liste (a, b, c, …) vs. «_ »-Bullet:** In der Notariats-Anfrage zur Statutenänderung
   listest Du die Dokumenten-Checkliste mit **a) bis f)**, nicht mit dem sonst üblichen «_ »-Bullet.
   Ist die Buchstaben-Liste Dein bewusstes Format für **abschliessende, formal abzuhakende Dokumenten-/
   Unterlagenkataloge** (jeder Punkt einzeln bestätigbar), während «_ »/«–» für argumentative
   Aufzählungen/Alternativen bleibt? *Warum: schärft die Listentypografie um eine bisher unbelegte
   dritte Form.* → [[fachsignatur]], [[arbeitsweise]]
2. **Bullet-Block mitten im Satz vor der eigentlichen Bitte:** In derselben Notariats-Mail steht der
   Aufzählungsblock (Firmenbezeichnung/Büroadresse/Zweck) MITTEN im Satz, bevor das Verb «ersuche»
   kommt («Im Hinblick eine geplante … Statutenänderung: – … – … – … einer GmbH ersuche ich Sie …»).
   Ist das ein bewusster Kompaktions-Trick (die Kernpunkte auf einen Blick, bevor die Bitte kommt),
   oder tippst Du in Eile und würdest es bei Gelegenheit grammatikalisch glätten? *Warum: klärt, ob der
   Zwilling diese ungewöhnliche Satzstruktur nachbilden oder in eine saubere Einleitung + Liste
   auflösen soll.* → [[stimme]], [[arbeitsweise]]
3. **Fette Fachbegriffe inline im Fliesstext formeller Behördenanfragen:** In der Vordach-Anfrage an
   Frau Steiger hebst Du Kernbegriffe (Normstelle, Rechtsquelle, Kennzahl) fett hervor, mitten im
   Fliesstext, nicht nur in Listen/Überschriften. Ist diese Binnen-Fettung Dein bewusstes Mittel, damit
   die Fachstelle die entscheidenden Punkte beim Überfliegen sofort erfasst, und setzt Du es bei jeder
   fachlich dichten Sie-Anfrage ein, oder nur bei besonders komplexen/strittigen Fällen? *Warum: legt ein
   bisher nur inhaltlich, nicht visuell erfasstes Fachsignatur-Mittel offen.* → [[fachsignatur]], [[stimme]]
4. **Schlussdank-Variante «Für Ihre Antwort bin ich Ihnen dankbar» vs. «Ich danke Ihnen im Voraus für
   die Klärung»:** Beide Formeln stehen im selben formellen Sie-Register (Notariat bzw. Gemeinde), aber
   mit unterschiedlichem Wortlaut. Wählst Du die Formel nach Anlass (Bestätigungsbitte vs. inhaltliche
   Klärung), oder ist es freie Variation ohne Regel? *Warum: prüft, ob eine weitere feste
   Schluss-Bausteine-Unterscheidung im formellen Sie-Register existiert.* → [[stimme]]

## Offen — Runde 260712 (twin-fragesteller, aus Fidelity-Review 2026-07-12)

Quelle: Drift-Report `outputs/2026-07-12_fidelity.md` (Gesamt-Fidelity 93; Drei-Register-Kontrast formell-Sie-
Bauentscheid / Rechnungs-Du-Freigabe-Rückfrage / warm-Investor-Du-Studie. Einzige echte Drift: der Twin
überlädt die Rechnungs-Freigabe-Rückfrage mit Service-Satz + Auftrags-Dank). Je in 1–2 Sätzen beantwortbar.

1. **Rechnungs-Freigabe-Rückfrage als schlanker Sub-Typ:** Bevor Du eine Rechnung final rauslässt, schickst Du
   sie dem durchleitenden Partner (Peter) mit dem Objekt/Projekt/Bauherrschaft-Stempel + «**Kann ich Die so
   rauslassen? Stimmen die Angaben?**» — Freundliche Grüsse + Block (Beleg liegt bei), aber OHNE Service-Satz
   und OHNE Auftrags-Dank (re-00077, 15.12.2025). Ist das Weglassen von Service-Satz/Auftrags-Dank bei dieser
   **Freigabe-/Kontroll-Rückfrage** bewusst (nur die FINALE Rechnungs-Liefermail an die Zahl-/Buchhaltungsstelle
   trägt beides), oder war es hier Tagesform? *Warum: fixiert die Sub-Typ-Trennung der Rechnungs-Du-Mail und
   verhindert, dass der Zwilling die Kontroll-Rückfrage überlädt (schärft 260708 #1).* → [[stimme]], [[arbeitsweise]]
2. **Objekt/Projekt/Bauherrschaft-Stempel als fester Rechnungs-Kopf-Baustein:** In der Rechnungs-Begleitmail
   setzt Du einen fetten Block «**Objekt** … / **Projekt** _ … / **Bauherrschaft** Name+Adresse» vor die
   Freigabe-Frage. Ist dieser Objekt-/Adressstempel Dein **fester Kopf-Baustein jeder Rechnungs-Begleitmail**
   (eindeutige Zuordnung des Belegs), oder nur bei Mehrfach-Objekten/Verwechslungsgefahr? *Warum: macht den neu
   belegten Rechnungs-Kopf-Baustein operationalisierbar.* → [[arbeitsweise]], [[fachsignatur]]
3. **«Herzliche Grüsse» = Gruss der warm-liefernden Investor-Du-Mail:** Die gehaltvolle Studien-Liefermail an
   Thomas Angerer schliesst mit «**Herzliche Grüsse / Raphael**», die operativen Zwischenmails desselben Fadens
   mit «Bester Gruss»/«Lieber Gruss». Ist «Herzliche Grüsse» gezielt der Gruss der **warm-liefernden,
   gehaltvollen** Investor-/Stammkunden-Du-Mail (Resultat + Beziehung zugleich), während «Lieber/Bester Gruss»
   die operativen Zwischenmails trägt? *Warum: kalibriert die Gruss-Mittelstufe im reziprok-warmen Investor-Du.*
   → [[stimme]], [[beziehungsregister]] · **BEANTWORTET (Fidelity 260713b):** JA. An EINEM Averecura-Faden
   (Thomas Angerer/Nova) trägt die gehaltvolle Studien-Liefermail (Machbarkeitsstudie + Schlussrechnung +
   fette Kernkennzahlen, 2025-08-07) «Herzliche Grüsse» + Block, die operativen Zwischenmails desselben Fadens
   «Lieber Gruss» (06.08.) bzw. «Bester Gruss» (29.07.). «Herzliche Grüsse» ist gezielt der Gruss der
   warm-liefernden, gehaltvollen Investor-/Stammkunden-Du-Mail. In stimme.md verankert.

## Offen — Runde 260710 (twin-fragesteller, aus Fidelity-Review 2026-07-10)

Quelle: Drift-Report `outputs/2026-07-10_fidelity.md` (Gesamt-Fidelity 93; Register-Kontrast operativ-Du /
formell-Sie-Mahnung / warm-social + ein neuer Echo-Falle). Je in 1–2 Saetzen beantwortbar.

1. **Mahn-«Wir» vs. «Ich»:** In der Zahlungserinnerung an die Zahlstelle (Rohner) mischst Du «**Wir** moechten
   Sie hoeflich daran erinnern» mit «stehe **ich** Ihnen jederzeit gerne zur Verfuegung». Ist das «Wir» in der
   Debitoren-/Mahnkommunikation bewusst (die Firma tritt als Institution auf, distanziert-hoeflich), waehrend
   die persoenliche Verfuegbarkeit im «Ich» bleibt, oder ist das nur ein Fluechtigkeits-Slip? *Warum: kalibriert
   das Wir/Ich im Mahn-Sie, wo das wir-Verbot der Erstabklaerung nicht greift.* → [[stimme]], [[haltung]]
2. **Empathie-Baustein der 1. Mahnstufe:** Der weiche Einstieg «Es kann im Alltag rasch einmal vorkommen, dass
   eine Rechnung uebersehen wird» + die Gekreuzt-Klausel wirken wie ein **fester Textbaustein** Deiner
   Zahlungserinnerung. Ist das eine gespeicherte Vorlage (Stufe 1 «Erinnerung»), die Du unveraendert einsetzt,
   oder formulierst Du den Ton pro Fall? *Warum: trennt festen Vorlagentext von tagesaktuellem Stil (Echo-Schutz)
   und schaerft die mahnwesen-Signatur.* → [[stimme]], [[arbeitsweise]]
3. **Fertiger Fremd-Textentwurf zum Durchreichen:** Wenn eine Anfrage ueber eine Mittelsperson an einen Dritten
   laeuft (Gabi → IT-Verantwortlicher Michael), legst Du den **kompletten Text** bei, den der Vermittler nur noch
   weiterreichen muss. Machst Du das standardmaessig (durchreichfertigen Entwurf mitliefern, damit die
   Mittelsperson keine Denkarbeit hat), oder war das der Einzelfall? *Warum: operationalisiert den neu belegten
   Durchreich-Reflex (das Verhalten, nicht den AI-Paste-Wortlaut).* → [[arbeitsweise]], [[beziehungsregister]]
4. **Versalien belassen oder zu Fett veredeln:** Das sicherheitskritische Wort in Versalien ist jetzt als
   bewusstes Mittel bestaetigt (260626 #4). Soll `korrektur`/der Zwilling die Versalien **so belassen** (rohe
   Dringlichkeit, wie Du sie tippst) oder in **Fett** veredeln (gleiche Betonung, ruhigere Typografie im
   dokumentierenden Register)? *Warum: entscheidet die Veredelungsregel fuer Deine Versal-Betonung.* → [[stimme]]

## Offen — Runde 260708 (twin-fragesteller, aus Fidelity-Review 2026-07-08)

Quelle: Drift-Report `outputs/2026-07-08_fidelity.md` (Gesamt-Fidelity 93; das Peter-Paar bestätigte die
Angebot↔Rechnung-Gruss-Grenze wasserdicht, kein Konzept-Drift). Vier neu freigelegte, je in 1–2 Sätzen
beantwortbare Feinheiten aus den drei Golds.

1. **Freigabe-Rückfrage vor dem Rechnungsversand:** Bevor Du die Rechnung final «rauslässt», fragst Du den
   durchleitenden Kontakt zur Kontrolle («Kann ich Die so rauslassen? Stimmen die Angaben?», Peter,
   15.12.2025). Ist diese kurze Verifikations-Rückfrage Dein **Standard vor jedem Rechnungsversand** an den
   durchleitenden Partner (Beleg-/Buchhaltungssicherheit), oder nur, wenn Du an den Rechnungsdaten unsicher
   bist? *Warum: operationalisiert den neu belegten Rechnungs-Verifikations-Reflex.* → [[arbeitsweise]],
   [[stimme]] · **GESCHÄRFT (Fidelity 260712):** die Freigabe-Rückfrage (re-00077, 15.12.2025) trägt FG+Block,
   aber OHNE Service-Satz/Auftrags-Dank — im Kontrast zur finalen/aktualisierten Rechnungs-Liefermail
   (re-00077, 16.12.2025), die beides trägt (260708-Beleg in stimme.md). Damit ist die Freigabe-Rückfrage ein
   eigener **schlanker Sub-Typ** der Rechnungs-Du-Mail. In stimme.md/arbeitsweise.md verankert; Rest-Schwelle
   «bewusst vs. Tagesform» → Runde 260712 #1.
2. **Erläuterungs-Beilage zur Honorarofferte:** Zum «Offertenvorschlag» an Peter (19.12.2025) legst Du zwei
   PDF bei — «Honorarofferte_…» UND «Erläuterungen_…». Ist die separate Erläuterungs-/Begleit-Datei ein
   **Standard-Doppel** zu jeder Honorarofferte (Angebot + erklärender Kontext), oder nur bei erklärungs-
   bedürftigen Projekten? *Warum: schärft die Offert-Signatur um die Beilagen-Struktur.* → [[fachsignatur]],
   [[arbeitsweise]]
3. **Auftrags-Dank-Untergrenze:** «Ich bedanke mich für den Auftrag» steht auf der **Rechnungs**-Du-Mail
   (auch beim Stammpartner). Lässt Du den Auftrags-Dank beim **reinen internen Zwischen-Transmittal** (Plan-/
   Status-Weiterleitung ohne Rechnung) bewusst weg, sodass er an den **Beleg-/Abschlusscharakter** gebunden
   ist, oder taucht er auch in laufenden Nicht-Geld-Liefermails auf? *Warum: zieht die Untergrenze des in
   260628 #2 als «nicht Erst-only» bestätigten Markers.* → [[stimme]], [[haltung]] ·
   **BEANTWORTET (Fidelity 260710):** Gold A (reines Plan-Status-Transmittal an Peter Weisser, «Hoi Peter /
   Im Anhang der Angepasste Plan / Passt das so für Dich? / Lieber Gruss», 2025-09-26) trägt WEDER den
   Auftrags-Dank NOCH den Service-Satz. Untergrenze gezogen: der Auftrags-Dank ist an den **Beleg-/
   Abschlusscharakter** (Rechnung/Beleg) gebunden und fällt beim reinen Zwischen-Transmittal ohne Geld weg.
   In stimme.md verankert.
4. **Schnell-/Nacht-Turnaround beim Angebot:** Auf Peters «ev. ein Projekt, ruf mich an» (18.12. abends)
   schickst Du binnen Stunden — nachts getippt — bereits Offerte + Erläuterungen (19.12. früh). Ist die
   **sofortige Angebots-Vorlage** Dein bewusster Akquise-Reflex (Gelegenheit ohne Reibung bedienen), oder
   war das der Einzelfall? *Warum: klärt, ob der Zwilling bei Projekt-Gelegenheiten proaktiv-schnell offeriert.*
   → [[arbeitsweise]], [[haltung]]

## Offen — Runde 260706 (twin-fragesteller, aus Fidelity-Review 2026-07-06)

Quelle: Drift-Report `outputs/2026-07-06_fidelity.md` (Gesamt-Fidelity 92; Restdrift nur in zwei belegten
Mikro-Markern des wärmsten Peer-Du — Text-Lacher «haha» + Block-im-Mobile-Reply). Je in 1–2 Sätzen
beantwortbar.

1. **«haha»-Lacher-Schwelle:** Im wärmsten operativen Peer-Du (Baumanager Peter, «Ich erwarte Dich mit
   einem Café haha») setzt Du den ausgeschriebenen Lacher «haha». Ist «haha» auf die engsten, reziprok-
   lockeren Peer-Du-Kontakte beschränkt (wie das Smiley 😊), oder darf es auch in ein warmes Geschäfts-Du
   rutschen, sobald der Anlass sozial/humorvoll ist? *Warum: kalibriert den neu erfassten Text-Lacher
   gegen die Emoji-Schwelle.* → [[stimme]], [[beziehungsregister]]
2. **Block-Weglassen im Kurzreply — bewusst oder Gerät:** Beim Mandatsabschluss-Dank wählst Du
   «Freundliche Grüsse», hängst im ultrakurzen Reply aber nur «Raphael» an (kein Block). Lässt Du den
   vollen Signaturblock bei einer kurzen Mail **bewusst** weg (Kürze signalisiert Lockerheit), oder hängt
   das schlicht daran, ob Du am Handy oder am Desktop tippst? *Warum: schärft die «Block folgt der
   Länge»-Regel gegen ein reines Mobile-Artefakt.* → [[stimme]]
3. **Gastgeber-/Kaffee-Geste als Standard:** «Ich erwarte Dich mit einem Café» bietest Du dem Baumanager
   beim angekündigten Bürobesuch an. Ist diese Empfangs-/Gastfreundschafts-Geste Dein Standard bei jedem
   angekündigten Besuch im neuen Büro (Beziehungspflege), oder nur bei den ganz vertrauten Partnern?
   *Warum: operationalisiert die neu belegte Gastgeber-Geste (Café-/Büroeinladungs-Familie).*
   → [[stimme]], [[arbeitsweise]]
4. **Amts-Vorprüfung + gebündelte Zweitfrage als Standard:** Vor der Umfirmierung lässt Du das
   Mutationsdossier vom HRA vorab auf Vollständigkeit bestätigen («Mehranläufe vermeiden, Amtsstellen
   nicht doppelt belasten») UND hängst gleich eine angrenzende Zweitfrage an (Einzelfirma-Zweckanpassung
   parallel oder separat?). Machst Du diese formfehler-Vorprüfung bei **jedem** beurkundungs-/eintragungs-
   sensiblen Amtsvorgang, und bündelst Du angrenzende Klärungen bewusst in EIN Schreiben? *Warum: macht
   den Vorprüfungs-Reflex + das Anliegen-Bündeln operationalisierbar.* → [[arbeitsweise]], [[fachsignatur]]

## Offen — Runde 260704 (twin-fragesteller, aus Fidelity-Review 2026-07-04)

Quelle: Drift-Report `outputs/2026-07-04_fidelity.md` (Gesamt-Fidelity 92; Gruss-Paradox-Triade
sauber rekonstruiert, Restdrift nur in zwei Mikro-Typografie-Markern in Gold C). Je in 1–2 Saetzen
beantwortbar.

1. **«➢»-Pfeil-Sub-Bullet-Schwelle:** In der strukturierten Du-Korrektur-Liefermail (Bopp) setzt Du
   die Detailpunkte einer Anpassung als eingerueckte «**➢**»-Zeilen UNTER dem «_ »-Haupt-Bullet.
   Nutzt Du die «➢»-Einrueckung gezielt als **zweite Ebene** (Haupt-Anpassung «_ » → ihre
   Einzelpunkte «➢»), oder ist das nur eine Tagesform-Variante von «_ »? *Warum: ergaenzt die eigene
   Listentypografie um die belegte zweite Ebene und verhindert, dass der Zwilling flach «_ » setzt,
   wo Du verschachtelst.* → [[stimme]]
2. **«kurzes OK-Feedback» vs. «Pruefung und Freigabe»:** Die laufende, fast fertige Korrektur
   schliesst Du mit der leichten Bitte «bin ich Dir fuer ein **kurzes OK-Feedback** dankbar»; die
   eigentliche Schlussabgabe dagegen mit «Bitte um **Pruefung und Freigabe**». Entscheidet der
   **Reifegrad des Deliverables** (iterativer Zwischenstand → leichtes OK / abnahmefaehige
   Schlussabgabe → formelle Freigabe), oder waehlst Du das je nach Empfaenger? *Warum: kalibriert,
   wann der Zwilling die leichte statt der foermlichen Freigabe-Bitte setzt.* → [[stimme]],
   [[arbeitsweise]]
3. **Proaktiver Optimierungs-Zusatz in Liefermails — Reflex oder Anlass:** Nach der erledigten
   Korrektur haengst Du unaufgefordert einen Verbesserungs-Vorschlag an («**Beispielsweise koennte
   man noch die Leerzeilen … loeschen**»). Machst Du diesen «da faellt mir noch etwas auf»-Zusatz
   **standardmaessig** bei jeder Liefermail (Mehrwert ueber das Bestellte hinaus), oder nur, wo ein
   sichtbarer Rest-Makel bleibt? *Warum: operationalisiert den proaktiven Nachbesserungs-Reflex
   (Abgrenzung zum blossen Abliefern).* → [[arbeitsweise]], [[denken]]

## Offen — Runde 260702 (twin-fragesteller, aus Fidelity-Review 2026-07-02)

Quelle: Drift-Report `outputs/2026-07-02_fidelity.md` (Gesamt-Fidelity 90; duennste Facetten Stimme 89
+ Fachsignatur 89, beides Deployment-Drift). Je in 1–2 Saetzen beantwortbar.

1. **«Gel»-Opener als Naehe-Schwelle:** Du eroeffnest die warm-soziale Peer-Du-Bitte mit «**Gel, … ist
   sehr schön geworden**» (Vergewisserungspartikel als Einstieg, nicht nur mitten im Satz). Setzt Du das
   «Gel» am Anfang gezielt bei **Kollegen/Peers, mit denen ein gemeinsamer Bezug** besteht (Du lobst zuerst
   ihr Werk, dann kommt die Bitte), oder ist es einfach Tagesform im engsten Du? *Warum: kalibriert, wann
   der Zwilling die warme Bitte ueber ein «Gel»-Lob oeffnen soll.* → [[stimme]], [[beziehungsregister]]
2. **Wunschzeile-als-Schluss vs. Wunschzeile + Gruss:** Im knappen Sozial-Du (Linus) traegt «Dir ein
   wunderbares Wochenende. / Raphael» den Schluss OHNE separaten Gruss; anderswo steht die Wunschzeile
   VOR «Freundliche Grüsse»/«Lieber Gruss». Entscheidet die **Kuerze/Sozialnaehe der Mail** (Mikro-Sozial-Du
   → Wunschzeile ersetzt den Gruss), oder haengst Du im Zweifel doch einen Gruss an? *Warum: verhindert,
   dass der Zwilling im knappen Sozial-Du einen ueberfluessigen Gruss anhaengt.* → [[stimme]]
3. **Ehrliche Selbst-Nebenzeile mit «…» — Reflex oder Anlass:** Nach der Fachantwort haengst Du die
   selbst-entlarvende Zeile «Vielleicht habe ich da das Terrain 5cm in Richtung Baurecht geschoben….» an.
   Machst Du diese ehrliche Offenlegung eigener (evtl. grenzwertiger) Annahmen/Handgriffe **standardmaessig**
   gegenueber dem vertrauten Bauherrn (Transparenz schafft Vertrauen), oder nur, wo die Annahme das Resultat
   spuerbar beeinflusst? *Warum: operationalisiert den 260702 verfehlten Ehrlichkeits-/«…»-Marker.*
   → [[haltung]], [[stimme]]

## Offen — Runde 260630 (twin-fragesteller, aus Fidelity-Review 2026-06-30)

Quelle: Drift-Report `outputs/2026-06-30_fidelity.md` (Gesamt-Fidelity 90; duennste Facette
Stimme 89 — Restdrift in EINEM Gruss-Trigger + einer Anrede-Feinheit). Je in 1–2 Saetzen beantwortbar.

1. **Gruss-Trigger laufend ↔ abschliessend im Du:** Eine **laufend-operative** Plan-/Feedback-Korrektur
   ohne Geld schliesst Du mit «Lieber Gruss», der **dokumentierend-abschliessende Projektabschluss-Dank**
   («Danke fuer die reibungslose Projektabwicklung / Gerne wuerde ich ein interessantes Ausfuehrungsprojekt
   mit Dir machen») dagegen mit «Freundliche Gruesse» — beide im Du, beide OHNE Geld in der Mail. Ist der
   Ausloeser fuer «Freundliche Gruesse» wirklich der **abschliessend-zusammenfassende Mandatscharakter**
   (der Auftrag wird zitierfaehig abgerundet/beendet), oder eher die Gewichtigkeit des Folgeauftrag-Angebots?
   *Warum: macht die 260630 gefundene dritte Gruss-Lesart wasserdicht.* → [[stimme]] ·
   **BEANTWORTET (Fidelity 260706):** Gold C (Mandatsabschluss an «Guten Morgen Christoph», kein Geld,
   «danke für die reibungslose Projektabwicklung» + Folgeauftrag-Angebot) schliesst mit «Freundliche
   Grüsse». Der Auslöser ist der **abschliessend-zusammenfassende Mandatscharakter** (der Auftrag wird
   zitierfähig abgerundet/beendet), nicht die Gewichtigkeit des Folgeauftrags — bestätigt. Neu dabei:
   im ultrakurzen Mobile-Reply fällt der volle Block weg (nur «Raphael»); in stimme.md eingearbeitet.
2. **Anrede-Grenze namentlich-Lieferant ↔ namentlich-Amt:** Antwortet eine Verkaeuferin/ein Lieferant
   **namentlich**, warmst Du auf «**Guten Tag Frau Gloor**» (Sie-Mittellage); ein namentlich antwortendes
   Amt/Notariat bekommt «**Sehr geehrte Frau …**». Ist die Grenze wirklich kommerziell-Lieferant
   (→ «Guten Tag <Name>») vs. Amt/Behoerde (→ «Sehr geehrte <Name>»), oder entscheidet etwas anderes
   (Sympathie, Tonspiegelung des Gegenuebers)? *Warum: kalibriert, wann der Zwilling namentliche
   Sie-Kontakte zur Mittellage warmt statt sie foermlich zu halten.* → [[beziehungsregister]]
3. **Akquise-Bruecke im Abschluss-Dank als Standard:** Beim Mandatsabschluss haengst Du die **Tuer zum
   Folgeauftrag** an («Gerne wuerde ich ein interessantes Ausfuehrungsprojekt mit Dir machen»). Machst Du
   diesen Folgeauftrag-Hinweis **standardmaessig** bei jedem zufriedenstellenden Projektabschluss mit einem
   Stammkunden, oder nur, wenn ein konkretes Anschlussprojekt absehbar ist? *Warum: operationalisiert den
   neu erfassten Akquise-Bruecken-Reflex (D2).* → [[haltung]], [[arbeitsweise]] ·
   **BEANTWORTET (Fidelity 260706):** Gold C belegt die Akquise-Brücke verbatim («Gerne würde ich ein
   interessantes Ausführungsprojekt mit Dir machen») beim zufriedenen Stammkunden-Abschluss (Bopp,
   2025-10-29) — der Folgeauftrag-Hinweis ist der Standard-Anhang beim reibungslosen Mandatsabschluss.
   In stimme.md verankert (Trigger + Akquise-Brücke).

## Offen — Runde 260628 (twin-fragesteller, aus Fidelity-Review 2026-06-28)

Quelle: Drift-Report `outputs/2026-06-28_fidelity.md` (Gesamt-Fidelity 90; duennste Facette
Stimme 89 — Restdrift in Mikro-Typografie + Schluss-Markern). Je in 1–2 Saetzen beantwortbar.

1. **«–»-Alternativfrage bewusst oder austauschbar:** In der formellen Behoerden-Anfrage setzt Du
   die zwei sich ausschliessenden Auslegungen als «–»-Bullets mit «oder» dazwischen («– Gilt § 6c
   ABV …? / oder / – Gilt die 1-m-Grenze?»), waehrend «_ » die offene Aufzaehlung bleibt. Ist das
   «–» bewusst das Zeichen der **Entweder-oder-Entscheidungsfrage** (die Behoerde MUSS sich fuer eine
   Variante entscheiden), oder austauschbar mit «_ »? *Warum: schliesst QUESTIONS 260622 #5 ab und
   praezisiert die eigene Listentypografie.* → [[stimme]]
2. **Reichweite Auftrags-Dank:** Beim Zustellen der Rechnung schreibst Du «Ich bedanke mich fuer den
   Auftrag.» Ist diese Dank-Zeile fester Bestandteil **jeder** Rechnungs-/Schluss-Liefermail
   (Beziehungspflege ueber die Abwicklung hinaus), oder nur beim **Erst-/Einzelauftrag** eines
   Kunden? *Warum: kalibriert den neu erfassten Auftrags-Dank-Marker.* → [[stimme]], [[haltung]] ·
   **BEANTWORTET (Fidelity 260708):** Gold B (Rechnung re-00077 an Peter Weisser, 16.12.2025) trägt den
   Auftrags-Dank «Ich bedanke mich für den Auftrag» **beim eingespielten Stammpartner** (laufende
   Zusammenarbeit) — also NICHT auf den Erst-/Einzelauftrag beschränkt, sondern Standard-Anhang der
   Rechnungs-Du-Liefermail. Untergrenze (reines Nicht-Geld-Transmittal?) → Runde 260708 #3.
3. **Frist + Postweg-Puffer als Standard:** Bei Terminzusagen rechnest Du den Zustellweg explizit auf
   die behoerdliche Frist auf («Einsprachefrist Ende 26.12.2025 + 5 Tage Postalweg»). Machst Du diese
   Puffer-Transparenz (Frist + Postweg/Zustellung) **standardmaessig** bei jeder Fristmitteilung an
   Bauherr/Partner, damit niemand zu frueh mit Klarheit rechnet, oder nur wo es terminkritisch ist?
   *Warum: macht den Verfahrens-Termin-Marker operationalisierbar.* → [[fachsignatur]], [[arbeitsweise]]
4. **Service-Schluss beim reinen Doku-Transmittal:** Der Terminplan-Transmittal an den eingespielten
   Baumanager («Wie besprochen … Freundliche Gruesse») kommt OHNE den sonst belegten Service-Satz
   («stehe ich gerne zur Verfuegung»), die Rechnungsmail an dieselbe Person hat ihn. Laesst Du den
   Service-Satz beim **reinen Doku-/Status-Transmittal** an einen vertrauten Partner bewusst weg
   (Laenge=Zweck), oder Tagesform? *Warum: schaerft, wann der Service-Satz gesetzt wird.*
   → [[arbeitsweise]], [[stimme]] · **TEILBEANTWORTET (Fidelity 260702):** Gold A (Behörde-Sie) UND
   Gold B (operativ-fachliches Du, Höhenkoten-Antwort) tragen BEIDE den Service-Satz → der Trigger fuers
   Weglassen ist **reiner Doku-/Status-Transmittal**, NICHT Du/Sie und NICHT «kurz»; eine fachlich
   **beratende/antwortende** Mail behaelt den Service-Satz auch im knappen Du. In stimme.md eingearbeitet.
   Rest «bewusst vs. Tagesform beim reinen Transmittal» bleibt offen.

## Offen — Runde 260626 (twin-fragesteller, aus Fidelity-Review 2026-06-26)

Quelle: Drift-Report `outputs/2026-06-26_fidelity.md` (Gesamt-Fidelity 89; duennste Facette
Stimme 87 — Restdrift in feinen Gruss-/Ton-Triggern). Je in 1–2 Saetzen beantwortbar.

1. **Trennlinie Angebot ↔ Rechnung beim Gruss:** Eine Du-Mail mit **Honorarofferte im Anhang**
   («Hoi Peter / Im Anhang den Offertenvorschlag … / lgr») schliesst mit Kurzgruss, eine
   Rechnungs-/Beleg-Mail mit «Freundliche Gruesse» + Block. Stimmt die Lesart, dass der Block-
   Trigger **nur die gebuchte, zitierfaehige Abwicklung (Rechnung/Beleg)** ist und ein
   verhandelbares **Angebot/Offerte** («ruf mich an») operativ-kurz bleibt — oder kippt auch
   ein Angebot in den Block, sobald es **verbindlich/unterschriftsreif** wird? *Warum: macht die
   260626 geschaerfte Angebot↔Rechnung-Grenze wasserdicht.* → [[stimme]] ·
   **BEANTWORTET (Fidelity 260708):** Das Peter-Weisser-Paar am SELBEN Kontakt/Opener («Hoi Peter /
   Im Anhang …») isoliert die Variable: gebuchte Rechnung (re-00077, 16.12.2025) → «Freundliche Grüsse»
   + Block + Service-Satz + Auftrags-Dank; verhandelbares Angebot («Offertenvorschlag / ruf mich an»,
   19.12.2025) → «lgr» + Telefon-Verlagerung. Bestätigt: nur die **gebuchte, zitierfähige Abwicklung**
   (Rechnung/Beleg) zieht FG+Block; ein Angebot bleibt operativ-kurz, auch mit Geld-Bezug (die Frage
   «kippt bei unterschriftsreif?» bleibt offen, da hier ein Vorschlag zur Besprechung vorlag). In stimme.md
   verankert.
2. **Warm-Wunschformel bei Privat-/Sachkauf:** Deine kommerzielle Kurz-Bestellanfrage an einen
   Hersteller («Guten Tag / … abholbar waere? / Freundliche Gruesse») kommt rein sachlich, OHNE
   Begruendung, Vorab-Dank oder Wunschzeile. Laesst Du die Hoeflichkeits-/Wunschschicht bei
   **trivialen kommerziellen Anfragen** bewusst weg (anders als bei Behoerden/Fachstellen, wo
   «danke im Voraus» + Begruendung Standard sind), oder war das nur die Eile? *Warum: kalibriert,
   wann der Zwilling die Behoerden-Hoeflichkeit NICHT importieren soll.* → [[stimme]],
   [[beziehungsregister]]
3. **Telefon-Verlagerung bei «ruf mich an»:** Wenn das Gegenueber «rufe mich an» schreibt,
   spiegelst Du das und haeltst die Mail auf einen Ein-Zeilen-Transmittal («Im Anhang … / Ruf
   mich kurz an»), statt die Sache schriftlich anzureissen. Ist das ein bewusster Reflex (Heikles/
   Verhandelbares gehoert ans Telefon, nicht in die zitierfaehige Mail), oder einfach Tempo?
   *Warum: operationalisiert, wann der Zwilling auf den Telefonkanal verweist statt auszuformulieren.*
   → [[arbeitsweise]] · **BEANTWORTET (Fidelity 260708):** Gold C (an Peter, 19.12.2025) belegt es
   verbatim: auf Peters «rufe mich an» spiegelt Raphael «Ruf mich diesbezüglich doch kurz an» + Ein-Zeilen-
   Transmittal «Im Anhang den Offertenvorschlag», statt die verhandelbare Sache schriftlich anzureissen —
   bewusster Reflex (Verhandelbares gehört ans Telefon, nicht in die zitierfähige Mail). In stimme.md
   («Angebot↔Rechnung-Gruss …») verankert.
4. **Versal-Betonung als bewusstes Mittel:** Im Eil-Du betonst Du einzelne Woerter in Versalien
   («NORDWESTSEITE», «AENDERUNGEN IN DEN ROHRBEZEICHNUNGEN»). Ist das Deine bewusste
   Hervorhebung fuer das sicherheitskritische Wort (das der Empfaenger keinesfalls ueberlesen
   darf), oder reine Tippdynamik? *Warum: entscheidet, ob `korrektur` die Caps zu Fettung
   veredelt oder ganz glaettet.* → [[stimme]] · **BEANTWORTET (Fidelity 260710):** Gold A liefert den
   2. Beleg («ÄNDERUNGEN IN DEN ROHRBEZEICHNUNGEN», Peter, 2025-09-26) neben «NORDWESTSEITE» — die
   Versalien sind das **bewusste Hervorhebungsmittel fuer das sicherheitskritische Wort**, kein Tipp-Slip.
   In stimme.md verankert. Rest «Versalien belassen vs. zu Fett veredeln» → Runde 260710 #4.

## Offen — Runde 260622 (twin-fragesteller, aus Fidelity-Review 2026-06-22)

Quelle: Drift-Report `outputs/2026-06-22_fidelity.md` (Gesamt-Fidelity 88; duennste Facetten
Fachsignatur 86, Denken 86 — neu freigelegt: Gruss-Trigger Geld/Abwicklung im Du, Verfahrens-
phase «Baufreigabe»). Je in 1–2 Saetzen beantwortbar.

1. **Gruss-Trigger Geld vs. Empfaenger:** Eine Du-Rechnungs-/Abwicklungsmail schliesst Du mit
   «Freundliche Gruesse» + Block (Peter), eine reine Plan-Korrektur-Du-Mail mit «Lieber Gruss»
   (Bopp). Ist der Ausloeser fuer den vollen Block im Du wirklich der **Geld-/Beleg-Inhalt**
   (Rechnung, Buchhaltung, zitierfaehige Abwicklung), oder eher der Empfaengertyp/das Projekt?
   *Warum: macht die 260622 gefundene Gruss-Verfeinerung wasserdicht.* → [[stimme]],
   [[beziehungsregister]]
2. **Baufreigabe-Checkliste Stadt ZH:** Nach dem Bauentscheid nennst Du der Bauherrschaft die
   obligatorischen Vorbedingungen bis zur Baufreigabe (Energie-Deklaration UGZ, Checkliste
   Gebaeudeschadstoffe, Bauinstallationsgespraech, Stadtpolizei, GSZ Baumerhalt, Tiefbauamt-
   Zustandsprotokoll/Depositum). Ist das ein **wiederkehrendes Standard-Set**, das der Zwilling
   als Vorlage fuehren soll, oder variiert es stark je Projekt? *Warum: zieht die Grenze
   Fachsignatur-Marker vs. reines Projektfaktum (gehoert evtl. in KB auflagebereinigung).*
   → [[fachsignatur]]
3. **Konsequenz-Zuspitzung gegenueber Laien-Bauherren:** Du uebersetzt Verwaltungsmechanik in
   die harte Konsequenz («Ohne diese Bestaetigung bleiben alle Bauarbeiten blockiert»). Machst Du
   diese Blockade-Zuspitzung bewusst bei jedem Laien-Bauherrn (Dringlichkeit erzeugen), oder nur
   wo echter Terminverzug droht? *Warum: operationalisiert den Laien-Frame.* → [[denken]]
4. **Wunschformel-Weglassung bei Statusmails:** Die Status-/Vorbedingungsmail an die Privat-
   bauherrin kommt rein sachlich-behoerdlich aus, OHNE die sonst belegte Wunschzeile («Ich
   wuensche Ihnen einen schoenen …») und ohne persoenlichen Bezug. Laesst Du die Waerme-Wunschzeile
   bei reinen Verfahrens-/Statusmails bewusst weg (Sachlichkeit signalisiert Ernst), oder war das
   Tagesform? *Warum: kalibriert, wann die Wunschformel gesetzt wird.* → [[stimme]] ·
   **BEANTWORTET (Fidelity 260704):** Gold A (Bauentscheid an Frau Hofer, reine Verfahrens-Sie-Mail)
   kommt bewusst OHNE Wunschzeile und ohne persoenlichen Bezug, endet sachlich mit «melde ich mich
   unverzueglich» + «Freundliche Gruesse» + Block. Der Trigger fuers Weglassen ist der reine
   Verfahrens-/Statuscharakter (Sachlichkeit = Ernst), nicht Tagesform. In stimme.md konsistent
   mit «Wunschzeile waermt die Sachmail» (dort optional, hier bei reiner Verfahrensmail weggelassen).
5. **«–» vs. «_ » als Aufzaehlungszeichen:** Im formellen Sie-Behoerdentext nutzt Du den
   Halbgeviertstrich «–» als Sub-Bullet («– dass keine Massnahmen …»), neben dem ueblichen «_ ».
   Hat das «–» eine eigene Funktion (Unter-Aufzaehlung/Alternative) gegenueber «_ » (Haupt-
   Aufzaehlung), oder sind sie austauschbar? *Warum: praezisiert die eigene Listentypografie.*
   → [[stimme]] · **TEILBEANTWORTET (Fidelity 260628):** «–» markiert die geschlossene
   **Alternativ-/Entscheidungsfrage** (zwei sich ausschliessende Lesarten + «oder», Behoerde waehlt),
   «_ » die **offene Aufzaehlung** (Gold A Vordach-Vorabklaerung Thalwil). In `stimme.md` eingearbeitet;
   Rest «bewusst vs. austauschbar» → Runde 260628 #1.

## Offen — Runde 260618 (twin-fragesteller, aus Fidelity-Review 2026-06-18)

Quelle: Drift-Report `outputs/2026-06-18_fidelity.md` (Gesamt-Fidelity 85; schwächste Facetten
Fachsignatur 82, Beziehungsregister 83 — neu freigelegt: Steuer-/MWST-/Betreibungsrecht in eigener
Sache, gestapelte Peer-Anrede «Hoi lieber <Name>» + CH-Koseform). Je in 1–2 Sätzen beantwortbar.

1. **Reichweite Steuer-/Verwaltungsrecht:** Die MWST-/Betreibungs-Norm (Art. 10 MWSTG, Umsatzgrenze)
   hast Du in **eigener** Firmensache gezogen. Vertrittst Du auch **Bauherren/Betreiber**
   steuer-/abgaberechtlich (MWST auf Baukosten, Handänderungs-/Grundstückgewinnsteuer, Erschliessungs-
   abgaben), oder bleibt diese Säule auf Deine eigenen Firmen-/Verwaltungssachen beschränkt? *Warum:
   zieht die Grenze der erweiterten vierten Rechtssäule (Echo-Schutz).* → [[fachsignatur]]
2. **Subsumtions-Zug als Standard:** Bei der MWST-Abmeldung zitierst Du die Norm und subsumierst
   sofort («Diese Voraussetzung ist in meinem Fall erfüllt, da …»). Machst Du diese ausformulierte
   Subsumtion immer, wenn Du selbst einen Antrag an eine Behörde stellst, oder nur, wenn die Fachstelle
   die Rechtslage sonst übersehen könnte? *Warum: macht den juristischen Selbstvertretungs-Reflex
   operationalisierbar.* → [[denken]], [[fachsignatur]]
3. **Stapel-Anrede-Schwelle:** «Hoi lieber Sämi» kombiniert operativ + warm. Was kippt einen Peer von
   einfachem «Hoi» (oder «Lieber») in die **gestapelte** Anrede — ein bestimmter Vertrautheitsgrad,
   ein freudiger Anlass (Einladung), oder Tagesform? *Warum: kalibriert die neu erfasste Stapel-Stufe.*
   → [[beziehungsregister]], [[stimme]]
4. **Koseform/Diminutiv selbst bilden:** «Sämi» (für Samuel) bildest Du aktiv, nicht nur gespiegelt.
   Bei welchen Kontakten erlaubst Du Dir die schweizerische Verkleinerungsform des Vornamens von Dir
   aus — nur bei echten Freunden/Peers, oder auch bei warmen Geschäfts-Du-Kontakten? *Warum: zieht die
   Grenze des aktiv geformten Nähe-Markers.* → [[beziehungsregister]], [[stimme]]
5. **Gemeinsamer-Anker als bewusster Zug:** «Nun da wir ja beide es in die Binz geschafft haben …»
   öffnet die Bitte über einen geteilten Lebensumstand. Ist dieser gemeinsame Orts-/Kontext-Anker ein
   bewusster Beziehungs-Einstieg, den Du gezielt suchst, oder ergab er sich hier nur zufällig? *Warum:
   klärt, ob der Zwilling aktiv nach geteilten Ankern greifen soll.* → [[stimme]], [[arbeitsweise]]

## Offen — Runde 260616 (twin-fragesteller, aus Fidelity-Review 2026-06-16)

Quelle: Drift-Report `outputs/2026-06-16_fidelity.md` (Gesamt-Fidelity 85; schwächste Facetten
Fachsignatur 81, Beziehungsregister 82 — neu freigelegt: Honorar-Tonalität, Peer-Architekten-
Register, vierte Rechtssäule Gesellschaftsrecht). Je in 1–2 Sätzen beantwortbar.

1. **wir-vs-ich-Schwelle:** In der unverbindlichen Erstabklärung schreibst Du «Ich», in der
   verbindlichen Offerte an einen Stammkunden «unser Angebot». Ab welchem Punkt kippt es von Ich auf
   wir/unser, exakt der bestellten Offerte, der Auftragsbestätigung, oder erst dem Vertrag? *Warum:
   macht die 260616 präzisierte wir-Regel operationalisierbar.* → [[haltung]], [[stimme]]
2. **Peer-Architekten-Schwelle:** Den Architektenkollegen lädst Du mit «Guten Morgen <Vorname>» +
   «Lieber Gruss» zum gemeinsamen Wettbewerb. Bekommt jeder Kollege dieses Peer-Du, oder gibt es
   Architekten, die Du (noch) mit «Geschätzter» oder Sie ansprichst, und was entscheidet das? *Warum:
   kalibriert das neu erfasste Peer-Architekten-Register.* → [[beziehungsregister]]
3. **Reichweite Gesellschaftsrecht:** Die OR-/HRegV-Tiefe (Art. 779 ff. OR, HRegV) hast Du für die
   eigene GmbH-Umwandlung gezogen. Berätst Du auch Bauherren gesellschaftsrechtlich (STWEG-Gründung,
   Trägerschaft/Betreibergesellschaft Healthcare), oder bleibt diese Säule auf Deine eigenen
   Firmensachen beschränkt? *Warum: zieht die Grenze der vierten Fachsäule (Echo-Schutz).*
   → [[fachsignatur]]
4. **Geltungsdauer der Mailofferte:** Setzt Du bei Honorar-Mailofferten standardmässig eine «gültig
   bis»-Frist (in der Bopp-Offerte fehlte sie), und wenn ja, welche Spanne (14/30 Tage)? *Warum:
   schliesst eine konkrete Pflichtangabe-Lücke der Offert-Signatur.* → [[fachsignatur]]
5. **Wettbewerb gemeinsam — Rolle/Honorar:** Wenn Du einen Wettbewerb mit einem Kollegen machst, wie
   teilst Du Federführung, Honorar und Rolle auf, und beeinflusst das den Ton (Partner auf Augenhöhe
   vs. Subplaner)? *Warum: macht die Akquise-/Partnerschafts-Mechanik (260616) arbeitsfähig.*
   → [[arbeitsweise]], [[beziehungsregister]]

## Offen — Runde 260614 (twin-fragesteller, aus Fidelity-Review 2026-06-14)

Quelle: Drift-Report `outputs/2026-06-14_fidelity.md` (Gesamt-Fidelity 84; schwächste Facette
Fachsignatur 76 — neu freigelegte dritte Säule: digitale 3D-/Visualisierungs-Produktion). Je
in 1–2 Sätzen beantwortbar.

1. **3D-Pipeline-Tiefe (Echo-Kalibrierung):** Bei 3D-/Render-/Software-Themen (C4D, Corona,
   FBX-Pfade, Asset-Ablage) hast Du eine ganze Anleitung geschrieben. Soll der Zwilling diese
   Software-Tiefe **selbst ausformulieren** (Schritt-für-Schritt-Tutorial), oder nur die
   **Struktur/Ablage vorgeben** und das technische Detail Dir/dem Freelancer überlassen?
   *Warum: zieht die Grenze zwischen echter dritter Fachsäule und tool-assistiertem Detail —
   schützt vor Echo.* → [[fachsignatur]]
2. **«Hallo» vs. «Hoi» vs. «Lieber»:** Du beginnst Mails an deutschsprachige Dienstleister mit
   «Hallo <Vorname>», an vertraute Kontakte mit «Hoi», an warme mit «Lieber». Was entscheidet
   «Hallo» statt «Hoi» — Distanz/Neuheit der Beziehung, oder ein sachlich-neutraler Ton
   unabhängig von der Vertrautheit? *Warum: kalibriert die neu erfasste vierte Peer-Du-Stufe.*
   → [[stimme]], [[beziehungsregister]]
3. **Quellengegenüberstellung als Standardzug:** Bei strittigen Behördenfragen stellst Du zwei
   belegte Auslegungen (Kanton vs. Gemeinde) gegenüber und zwingst die Behörde zur Wahl. Machst
   Du das immer, wenn die Praxis unklar ist, oder nur, wenn Du eine bestimmte Lesart
   durchsetzen willst? *Warum: macht den schärfsten Vorabklärungs-Zug operationalisierbar.*
   → [[denken]], [[fachsignatur]]
4. **ROI-Rahmung gegenüber Dienstleistern:** Gegenüber dem 3D-Freelancer rahmst Du die
   Zusammenarbeit als «auf dem investierten Kapital aufbauen». Ist dieses Investitions-/
   Renditedenken Dein bewusster Steuerungshebel auch bei kreativen Zulieferern, oder war es
   hier anlassbezogen? *Warum: klärt, wie weit die Investorenlogik in die Freelancer-Führung
   trägt.* → [[haltung]], [[arbeitsweise]]
5. **Produkt-Sourcing über Referenzbauten:** Du identifizierst Bauprodukte über die Projekte,
   in denen Du sie gesehen hast (Lüftungssteine via Krameracker/Hotel Leo). Ist das Deine
   Standard-Recherchetechnik für Spezialprodukte, und führst Du dazu eine Sammlung
   «gesehen-bei»-Referenzen? *Warum: belegt eine konkrete Beschaffungs-Methodik.*
   → [[fachsignatur]], [[arbeitsweise]]

## Offen — Runde 260612 (twin-fragesteller, aus Fidelity-Review 2026-06-12)

Quelle: Drift-Report `outputs/2026-06-12_fidelity.md` (Gesamt-Fidelity 84; schwächste
Facetten Beziehungsregister 76, Stimme 78 — neu freigelegtes Mundart-Register). Je in
1–2 Sätzen beantwortbar.

1. **Mundart-Schwelle:** Du schreibst rein private, branchenferne Einladungen ganz in
   Mundart («Grüzi liebi Pia … en Kafi verbi … Liebe Gruess»). Was kippt eine Du-Mail von
   Hochdeutsch in Mundart — nur die rein private Einladung, oder auch lockere Du-Mails an
   vertraute Geschäftspartner, sobald es nicht um die Sache geht? *Warum: macht das einzige
   Register operationalisierbar, das der Zwilling 260612 komplett verfehlte.* → [[stimme]],
   [[beziehungsregister]]
2. **«Guten Abend <Vorname>»:** Nutzt du «Guten Abend» einfach tageszeit­abhängig (abends
   gesendet) oder hat es einen Ton-Akzent gegenüber «Hoi»/«Guten Morgen» — etwas ruhiger,
   gesetzter? *Warum: kalibriert die neu erfasste Tageszeit-Anrede.* → [[stimme]],
   [[beziehungsregister]] · **TEILBEANTWORTET (Mailbatch 82, 260730):** «Guten Abend Christoph,»
   (27.10.2025, 17:37, operatives Geschäfts-Du) belegt die Existenz der Anrede jetzt auch
   ausserhalb des privaten Kontexts — nicht mehr nur vermutet. Offen bleibt allein der
   Ton-Akzent (ruhiger/gesetzter gegenüber «Hoi»/«Guten Morgen»?).
3. **«Geschätzter <Nachname>» + Du:** An welche Kontakte geht diese Mittelstufe (geschätzter
   Handwerker, per Du, aber Nachname statt Vorname) — generell an geschätzte Gewerke/Handwerker
   auf Augenhöhe, oder nur an einzelne, die du noch nicht beim Vornamen nennst? *Warum: schliesst
   die 260612 gefundene Anrede-Lücke zwischen Vorname-Du und Herr-Sie.* → [[beziehungsregister]]
4. **Sinnlich-poetische Materialsprache:** Bei Material/Oberfläche schreibst du bewusst
   bildhaft («Gelassenheit im Erklingen des Verarbeitungsinstrumentes», «aufgerissener
   Kalkputz»). Soll der Zwilling diese poetische Materialbeschreibung aktiv reproduzieren, oder
   ist sie nur dem persönlichen Du-Austausch mit Handwerkern vorbehalten? *Warum: klärt, wie weit
   die zweite Fachsäule stilistisch tragen darf.* → [[fachsignatur]], [[stimme]]
5. **«:)» vs. 😊:** Setzt du im warm-sozialen Du den ASCII-Smiley «:)» und das Unicode-😊
   austauschbar (Tagesform/Gerät), oder bewusst getrennt? *Warum: präzisiert den einzigen
   erlaubten Emoji-Gebrauch.* → [[stimme]]

## Offen — Runde 260610 (twin-fragesteller, aus Fidelity-Review 2026-06-10)

Quelle: Drift-Report `outputs/2026-06-10_fidelity.md` (Gesamt-Fidelity 85; schwächste
Facetten Beziehungsregister 78, Fachsignatur-Breite). Je in 1–2 Sätzen beantwortbar.

1. **Emoji-Schwelle:** Du setzt vereinzelt ein 😊 in warmen, persönlichen Du-Mails
   (branchenfern/Beziehungspflege). Gilt das nur für rein soziale/Dankes-Mails, oder auch
   in warmen Du-Mails mit fachlichem Inhalt — und immer nur das Smiley 😊, nie andere
   Emojis? *Warum: kalibriert die einzige belegte Ausnahme von der Dekorationsfreiheit, die
   der Zwilling 260610 verfehlte.* → [[stimme]], [[haltung]]
2. **«Beste Grüsse» vs. «Bester Gruss»:** Wann «Beste Grüsse» (Plural) und wann «Bester
   Gruss» (Singular) — Zufall/Tagesform oder ein feiner Unterschied (z.B. Plural etwas
   wärmer)? *Warum: schärft die neu erfasste Gruss-Mittelstufe.* → [[stimme]],
   [[beziehungsregister]]
3. **Anrede-Warming:** Du wechselst denselben Kontakt von «Geschätzte/r <Vorname>» zu
   «Liebe/r <Vorname>», wenn Vertrauen wächst. Was löst den Wechsel aus — ein gutes
   Telefonat, gegenseitige Sympathie, Anzahl Kontakte? *Warum: macht das wärmer-werdende
   Register operationalisierbar.* → [[beziehungsregister]]
4. **Design-Fachsäule:** Gibt es weitere Design-/Gestaltungs-Referenzen, die du gern
   einwebst (über Noguchi-Akari und Smiljan Radić hinaus), und benennst du dich aktiv als
   «gelernter Schreiner», wenn es zur Aufgabe passt? *Warum: verbreitert die zweite, im
   Wiki dünn belegte Fachsäule.* → [[fachsignatur]]
5. **Design- vs. Bau-Honorar:** Bei Objekt-/Produktdesign rechnest du die Planung als
   weitgehend fixen Budgetposten (Entwicklungszeit ~konstant). Nutzt du dafür dieselbe
   Honorarlogik wie im Baurecht (Tagespauschale/Phasen) oder eine eigene? *Warum: klärt,
   wie der Zwilling Design-Aufträge bepreist.* → [[fachsignatur]], [[denken]]

## Offen — Runde 260609 (twin-fragesteller, aus Fidelity-Review 2026-06-09)

Quelle: Drift-Report `outputs/2026-06-09_fidelity.md` (Gesamt-Fidelity 84; schwächste
Facette Beziehungsregister 74). Je in 1–2 Sätzen beantwortbar.

1. **Gruss-Logik:** Du schliesst eine «Geschätzter <Vorname>»-Mail mit «Lieber Gruss»
   und eine «Hoi»-Mail mit «Freundliche Grüsse» + vollem Block. Stimmt die Lesart, dass
   der Gruss vom MAIL-TYP abhängt (operativ → Kurzgruss, dokumentierend/zitierfähig →
   voller Block) — oder wovon sonst? *Warum: löst den 260609 gefundenen Widerspruch
   stimme↔beziehungsregister endgültig.* → [[stimme]], [[beziehungsregister]]
2. **«Guten Tag Frau/Herr X»:** An welche Empfänger schreibst du diese Mittellage statt
   «Geschätzte/r» oder «Sehr geehrte/r» — nur Privatkunden im laufenden Mandat, oder auch
   andere? *Warum: die Stufe fehlte im Wiki komplett und kostete im Selbsttest am meisten
   (Beziehungsregister 74).* → [[beziehungsregister]]
3. **Kurzgruss «Lgr»:** Ist «Lgr» nur die Handy-/Eile-Variante von «Lieber Gruss», oder
   eine bewusste eigene Stufe für die engsten Kontakte? *Warum: kalibriert, wann der
   Zwilling die Kurzform setzen darf.* → [[stimme]]
4. **Aktive Schlusszusage:** Wann versprichst du aktiv «ich melde mich unverzüglich»
   (Monitoring) statt «stehe gerne zur Verfügung» — immer bei laufenden Behördenverfahren?
   *Warum: schärft den Mail-Schluss, den der Zwilling 260609 verfehlte.* → [[arbeitsweise]]
5. **Recherche-Blöcke in Du-Mails:** Lange Rechtslage-Blöcke (z.B. «Kurzfassung der
   Rechtslage» mit Vertragsziffern) — schreibst du die selbst oder fügst du aufbereitetes
   Material ein, und sollen Twin-Mails solche Blöcke optisch abgesetzt halten (Titel +
   Bullets) wie im Original? *Warum: klärt, wieviel «Gutachten-Form» in eine vertraute
   Du-Mail darf.* → [[fachsignatur]], [[arbeitsweise]]

### Vermerkte Facetten-Spannung (260609, ungelöst)
- Normatives «Du immer gross» ([[stimme]]/[[beziehungsregister]]) vs. authentisches
  Schnellregister mit kleinem «du» und «Lgr» (Goldprobe 2025-11-21, Thread-Mails).
  Arbeits-Auflösung des twin-chef: Norm beibehalten (Ideal-Raphael, `korrektur` glättet),
  Abweichung nur als Echtheits-Marker dokumentiert — NICHT imitieren.

## Offen — Stichprobe zum Start (vom Seed abgeleitet)

1. **Anrede-Schwelle:** Ab welcher Vertrautheit «Hoi» statt «Geschätzter»? Gibt es Kontakte,
   die trotz Du immer «Geschätzter» bekommen (z.B. Investoren), und solche mit «Hoi» trotz
   geschäftlicher Beziehung? → [[beziehungsregister]]
2. **Sie-Register:** Wie klingt eine vollständige formelle Sie-Mail an eine Behörde/einen
   Erstkontakt? (Seed deckt nur Du ab.) → [[stimme]], [[beziehungsregister]]
3. **Absage/Konflikt:** Wie formulierst du eine Absage oder Kritik an einem Bauherrn, den du
   fachlich nicht überzeugend findest — direkt oder diplomatisch? → [[haltung]]
4. **Honorar/Geld:** Wortwahl, wenn es ums Honorar/Mehraufwand geht («approximativ
   offerieren», «zusätzlich zum Kostendach») — wie hart/weich? → [[denken]], [[haltung]]
5. **Emoji/Symbole in Mails:** Im Dokument tabu (Rule). Aber in vertrauten Du-Mails — nie,
   selten, welche? → [[stimme]]
6. **Länge:** Wann eine 3-Satz-Mail, wann die durchstrukturierte Studie-im-Mail? Welches
   Signal entscheidet? → [[arbeitsweise]]
7. ~~**Englisch:** Gibt es englische Korrespondenz, und wie klingt dein Englisch im
   Vergleich zum Deutsch?~~ **BEANTWORTET (Mailbatch 03, 260611):** Ja, englische
   Freelancer-/Dienstleister-Steuerung. Klang = dieselbe Stimme in anderer Sprache —
   «Hi <Vorname>,», gleiche Grundlage→Struktur→Next-Steps-Dramaturgie, ehrlich über die
   Sprachgrenze, kein Mehr an Steifheit. → [[stimme]], [[beziehungsregister]]

## Aktiv gestellt — Runde 260607 (twin-fragesteller)

Diese sechs wurden Raphael am 2026-06-07 vorgelegt (hoechster Hebel: Register-Luecken +
blinde Flecken, die mehrere Facetten schaerfen). Antworten → zustaendiger Facetten-Agent
arbeitet sie als `authentisch` ein, dann nach «Beantwortet» verschieben.

1. Sie-Register-Vollprobe — [[stimme]] / [[beziehungsregister]]
2. Absage/Kritik an schwachem Bauherrn — [[haltung]]
3. Honorar-/Geld-Tonalitaet (hart vs. weich) — [[denken]] / [[haltung]]
4. Anrede-Schwelle Hoi ↔ Geschaetzter + Ausnahmen — [[beziehungsregister]]
5. Signal Kurzmail vs. Studie-im-Mail — [[arbeitsweise]]
6. Emoji/Symbole im vertrauten Du-Register — [[stimme]]

## Beantwortet — Runde 260607 (aus KISPI-Korpus 2619, [[260607-kispi-korpus]])
Der Benutzer verwies auf die KISPI-Projektmails (v.a. an Albin Spahic) als «wie ich spreche».
Daraus belegt beantwortet:
1. **Sie-Register:** «Sehr geehrte Damen und Herren» / «Geschätzter Herr X» + «Darf ich Sie
   bitten …», «stehe ich Ihnen jederzeit gerne zur Verfügung». → [[stimme]], [[beziehungsregister]]
2. **Absage/Kritik:** höflicher Rahmen, harter Inhalt, nummeriert, kein Polster
   («Ich weise Ihre Planung als unvollständig zurück», «Sie schulden uns …»). → [[haltung]]
3. **Honorar/Geld:** direkt, Zahlen zuerst, schützend («Das Angebot ist zu hoch …
   Abgebotsrunde»); eigenes Honorar sachlich. → [[denken]], [[haltung]]
4. **Anrede-Schwelle:** Register nach Kontext, nicht nur Person — Albin: Hoi/Lieber/
   Geschätzter; Fachplaner Sie; Mix in einer Mail möglich. → [[beziehungsregister]]
5. **Kurz vs. strukturiert:** Länge = Zweck (Transmittal 1 Zeile / Koordination nummeriert /
   Team-Broadcast). → [[arbeitsweise]]
6. **Emoji:** keine; stattdessen Unterstrich-Bullet «_ ». → [[stimme]]

## Beantwortet
(weitere folgen)

- ~~**Widerspruch «Danke und Gruss»-Reichweite (Batch 60, 2026-07-25):**~~ **GESCHLICHTET
  (twin-chef, Fidelity-Review 2026-07-25e)** — Die DNA/das Wiki
  verorten die kombinierte Kurzform «Danke und Gruss» bisher im ultrakurzen Sub-Du. Batch 60
  belegt sie zusätzlich (a) als menschliche Schlusszeile vor dem vollen «Freundliche Grüsse»-
  Block in einer Sie-Behörden-Mail (SRZ Sörensen) und (b) als ganzen Schluss einer operativen
  Du-Terminbitte (Gerry Scherbl). Hypothese: «Danke und Gruss» ist sein terser Dank-plus-Gruss-
  Default bei JEDER kurzen operativen Bitte/Auskunft, registerübergreifend. **Entscheid:** Sub-Du-
  Einschränkung gefallen, in `stimme.md` Do-Block generalisiert (siehe oben).

- **Stiller Anhang-Reply ohne Fliesstext (Batch 62, 2026-07-25):** Auf eine dringliche
  Fachplaner-Nachfrage («Können Sie mir bitte dringend die aktuellen Planunterlagen
  zusenden?») enthielt die Antwort laut M365-API keinen eigenen Fliesstext (nur Weiterleitung/
  Anhang). Unklar, ob das ein echtes Muster ist («bei selbsterklärender Bitte reicht der
  Anhang, kein Kommentar nötig») oder ein Extraktionsartefakt (Text lag z.B. nur als separate
  Anlage/Signaturzeile vor, die die API nicht mitliefert). Ein Datenpunkt, nicht übernommen.
  Bei nächster Gelegenheit dieselbe Mail nochmals gegenlesen (Apple-Mail-Fallback) oder auf
  einen zweiten Beleg warten. → [[arbeitsweise]]
- **«Danke und Gruss»-Reichweite, weiterer Beleg (Batch 62, 2026-07-25):** ergänzt den
  Batch-60-Beleg um einen dritten Fall (Vorname-Du, ultra-kurze Elektro/Waschküche-
  Koordination). Stützt die Hypothese aus Batch 60 weiter (registerübergreifender Default bei
  kurzen operativen Bitten/Auskünften). Weiterhin auf twin-chef-Entscheid wartend, ob die
  Sub-Du-Einschränkung in der DNA (`rules/jans-dna.md`) fällt. → [[stimme]]
- **Zahl-Notation registerabhängig: «CHF 40K» gegen den Tausender-Apostroph (Batch 64,
  2026-07-25):** In der Preis-Rüge an einen Du-Unternehmer schreibt Raphael «CHF 40K mehr (von
  120 auf 160)» — ohne Tausender-Apostroph, ohne Einheit bei den Vergleichszahlen. Der etablierte
  DNA-Marker verlangt den Apostroph (1'824). Hypothese: der Apostroph gilt für Dokumente,
  Offerten und dokumentierende Mails, im schnellen operativen Du wird mündlich in Kurz-/Kilo-Form
  gerechnet. Zwei Datenpunkte fehlen noch (bisher dieser Fall). Frage an Raphael: soll der
  Zwilling im operativen Du-Reply «40K»/«120» schreiben dürfen, oder ist das ein Flüchtigkeits-
  artefakt, das er in einer sorgfältigeren Fassung selbst korrigieren würde? → [[stimme]]
- **Lange baurechtliche Beratungsmail an den Du-Bauherrn: eigener Text oder assistiert?
  (Batch 64, 2026-07-25):** Die Projektänderungs-Mail Thalwil Bohlweg 3 vom 16.07.2026 trägt
  aussen unverkennbar authentische Slips («Gib mir bescheid» klein, «würde ich dann der
  Umgebungsplan», die Signaturphrase «Ich erlaube mir, das Schreiben der Gemeinde einzuordnen»),
  der argumentierende Mittelteil ist aber durchgehend mit Zwischentiteln und «_ »-Listen
  strukturiert und juristisch glatt (Art. 50/31 revBZO, § 238/273 PBG, Flächenbilanzen). Beide
  Lesarten sind möglich: (a) Claude-Entwurf, von Raphael überarbeitet — dann wäre die Mail ein
  wertvolles **korrektur-delta**, das aber ohne den Original-Entwurf nicht extrahierbar ist;
  (b) Eigentext, der nur ungewohnt sorgfältig ist. Vorsichtshalber wurde nur der handgetippte
  Rahmen als Stilquelle verwendet (Echo-Schutz). Frage an Raphael: hast Du diese Mail selbst
  formuliert oder auf einem Claude-Entwurf aufgebaut? Falls letzteres: liegt der Entwurf noch
  vor (dann Delta-Auswertung möglich)? → [[denken]], [[fachsignatur]]
- **Private Finanzierungsanfrage an Elektronikhändler: Echo-Grenzfall (Batch 65, 2026-07-25):**
  Die Mail vom 21.07. an einen MacBook-Pro-Haendler (En-dash-Bullets, fehlerfreie Grammatik,
  glatte nummerierte 1.–4.-Fragenliste) haeuft mehrere Echo-Merkmale, waehrend die uebrigen
  sieben Mails derselben Stichprobe klar handgetippt sind (Slips, kein Gedankenstrich). Anders
  als bei den bisherigen Echo-Fallen handelt es sich um eine rein private/betriebliche
  Beschaffungsmail ohne Projektbezug — moeglich, dass Raphael bei sachlich-technischen
  Preisanfragen an Haendler bewusst sorgfaeltiger/strukturierter formuliert (kein KI-Text,
  sondern Register-Ernsthaftigkeit gegenueber einem kommerziellen Sie-Erstkontakt mit hohem
  Warenwert), ODER es ist tatsaechlich KI-assistiert. Nicht als Stilquelle verwendet. Frage an
  Raphael: hast Du diese MacBook-Finanzierungsanfrage selbst so formuliert? → [[stimme]]
- **Mehrfachversand derselben Frage an unterschiedliche Amtskontakte: Strategie oder
  Adressunsicherheit? (Batch 66, 2026-07-25):** Am 24.07. ging dieselbe UGZ-Sachfrage binnen
  30 Minuten dreifach an unterschiedliche Personenpaare (Stubbe/Zürcher, Stegmann/Becker,
  Becker allein), statt in einer Mail mit gestapelter Anrede gebündelt zu werden. Zwei
  Lesarten: (a) bewusstes Breitstreuen bei unklarer Zuständigkeit, um schneller eine Antwort
  von irgendeiner zuständigen Stelle zu bekommen; (b) echte Unsicherheit, wer die richtige
  Ansprechperson ist, und sukzessives Nachfassen bei neuen Namen aus dem Verteiler. Frage an
  Raphael: war Dir zu dem Zeitpunkt unklar, wer bei UGZ zuständig ist, oder war das bewusstes
  Parallel-Nachfassen? Soll der Zwilling dieses Muster bei unklarer Zuständigkeit übernehmen
  (mehrfach knapp fragen) oder lieber immer konsolidieren und einmal nachfragen, wer zuständig
  ist? → [[beziehungsregister]], [[arbeitsweise]]
- **«%» ohne Leerschlag in technischen Inline-Massangaben, zweiter unabhängiger Beleg (Batch 66,
  2026-07-25):** «1.5% Gefälle» (Sie-Fachfrage an Gebäudetechnikplaner) steht eng, nicht mit
  Leerschlag wie die DNA-Regel verlangt — bereits Batch 20 hatte einen engen Beleg in einer
  Sie-Tabelle. Zeichnet sich ein Muster ab: der Leerschlag-Marker gilt zuverlässig in
  Fliesstext-Prosa, bricht aber bei kurzen technischen Kennwerten/Formeln im Satz. Braucht
  weitere Beobachtung, bevor die DNA-Regel präzisiert wird. → [[stimme]]

## Runde 260727l — Fidelity-Review (Korpus-Abschluss, Formalisierungs-Reflex)

- **Dritter Gruss-Typ fehlt in der Typologie — Facetten-Spannung [[stimme]] ↔ [[arbeitsweise]]:**
  Die DNA-Gruss-Regel kennt genau zwei Fälle («operativ → Kurzgruss Lieber Gruss/Lgr»,
  «dokumentierend → Freundliche Grüsse + voller Block»). Die belegte **Nullform** (gar kein Gruss,
  Bildregie-Korrektur an den Freelancer 01.09.2025) und der **nach dem Gruss nachgeschobene
  Nachsatz** (15.10.2025) passen in keinen der beiden Töpfe — die Typologie ist unvollständig,
  nicht falsch. Frage an Raphael: Wann lässt Du den Gruss ganz weg? Ist das (a) eine Funktion der
  Vertrautheit (ab einem bestimmten Peer nie mehr Gruss), (b) der Eile, oder (c) des Thread-Standes
  (im laufenden Ping-Pong entfällt er, in der ersten Mail des Tages nicht)? *Warum: der Zwilling
  setzt derzeit im Zweifel immer einen Gruss und wird dadurch im engsten Register systematisch zu
  höflich.* → [[stimme]], [[arbeitsweise]]

- **Nachsatz hinter der Grussformel — Absicht oder Nachtrag?:** «Lieber Gruss Raphael / Und danke
  das Du da so durchgehalten hast.» (an den 3D-Freelancer, 15.10.2025). Der wärmste Satz der Mail
  steht **hinter** dem Gruss. Frage: Schiebst Du solche persönlichen Sätze bewusst nach (damit sie
  nicht wie eine eingerahmte Höflichkeitsformel wirken), oder fällt Dir das schlicht erst nach dem
  Tippen des Grusses ein? *Warum: entscheidet, ob der Zwilling diese Position aktiv nachbauen soll
  oder ob sie ein Artefakt ist, das er nicht imitieren muss.* → [[stimme]]

- **«Gel» als Opener und Umgangsmarker:** «Zweite Frage: **Gel** zeitlich bist du konmplett
  absorbiert mit Studium?» Frage: Ist «Gel» für Dich auf den engsten Peer-Kreis beschränkt, oder
  benutzt Du es auch gegenüber vertrauten Handwerkern/Unternehmern im Du? *Warum: die DNA erlaubt
  den «Gel»-Opener bisher nur im Peer-Du; falls er weiter reicht, fehlt dem Zwilling ein warmer
  Registerton gegenüber Handwerkern.* → [[stimme]], [[beziehungsregister]]

- **Korpus-Grenze erreicht — Frage nach neuen Quellen:** Beide Geschäftspostfächer sind jetzt
  nachweislich **lückenlos** destilliert (`rj@` ab der allerersten Mail 04.07.2025, `mail@` ab
  09.07.2025, beide bis heute). Neues authentisches Stil-Material kann nur noch aus (a) neu
  eintreffenden Mails, (b) **Korrektur-Deltas** (Claude-Entwurf → Deine Fassung) oder (c) bisher
  ungenutzten Kanälen entstehen. Frage an Raphael: Gibt es einen weiteren authentischen Vor-Claude-
  Fundus, den wir noch nicht erschlossen haben — z.B. exportierte Mails aus der Zeit **vor** dem
  M365-Tenant (vor 07/2025, etwa aus dem alten Konto/Archiv-PST), WhatsApp-/SMS-Geschäftsverkehr,
  handschriftliche Protokolle oder ältere Word-Briefe im NAS-Archiv? *Warum: das ist ab jetzt der
  einzige Weg, den Zwilling substanziell weiterzubringen — ohne neue Quelle sind die Läufe auf
  Korrektur-Deltas beschränkt.* → alle Facetten

## Offen — Gate 260728 (twin-chef, Fidelity-Gate internes Hub-Chef-Tagesbriefing)

Erste dokumentierte Facetten-Spannung im Genre **internes Briefing an Raphael selbst** (Absender
Hub-Chef, Empfaenger Raphael, internes Du). Beide Facetten-Agenten diagnostizierten dieselbe Luecke
(kein naechster Schritt am Schluss), schlugen aber gegenlaeufige Heilmittel vor.

1. **Wie schliesst ein internes Briefing an Dich selbst — verteilt oder gebuendelt?** `twin-denker`
   wollte die Ausblick-Funktion **verteilt** loesen (je Entscheid ein Default-Pfad nach Batch 64,
   «ansonsten wuerde ich dann …») und lehnte einen Schluss-Block ausdruecklich als «Doublette und
   Floskel» ab. `twin-arbeitsweise` wertete genau dessen Fehlen als **Skelett-Fehler** (Liefer-Skelett
   Befund/Fazit, Mailbatch 06) und forderte einen buendelnden Fazit-Block. Entscheid des Chefs 28.07.:
   **beides, aber asymmetrisch** — Default-Pfade in den Sachblöcken, dazu ein bewusst magerer
   Schluss-Block, der die vier Handgriffe nur noch aufzaehlt statt sie zu wiederholen. Begruendung:
   die Batch-64-Gold-Mail traegt selbst beides (Default-Pfad UND separate Schluss-Bitte «Gib mir
   bescheid, ob Ihr … einverstanden seid»). Belegbasis fuer das Genre bleibt aber duenn — alle
   Skelett-Marker stammen aus AUSGEHENDEN Mails an Dritte. *Warum: das Briefing-Genre laeuft taeglich,
   hat aber keinen einzigen authentischen Gold-Beleg. Ohne Deine Antwort raet der Zwilling.*
   → [[arbeitsweise]], [[denken]]

2. **Darf ein Briefing an Dich Fakten aus zwei Bloecken verknuepfen, die Du nicht verknuepft hast?**
   Der Chef hat beim Betreibungs-Entscheid (RE-00087) die im selben Text stehende Tatsache ergaenzt,
   dass **derselbe Schuldner** mit zwei weiteren Rechnungen in laufender Frist steht. Rein faktisch
   gedeckt, aber eine vom Zwilling **erzeugte Relevanz-Aussage**, keine berichtete. Willst Du solche
   Querverknuepfungen aktiv (Entscheidungsgrundlage vervollstaendigen) oder strikt nicht (Briefing
   berichtet, wertet nicht)? *Warum: entscheidet, ob der Hub-Chef im Briefing mitdenken oder nur
   rapportieren soll — Grundsatzfrage fuer alle Briefing-Laeufe.* → [[denken]], [[haltung]]

3. **Traegt das interne Briefing Deinen Prosa-Ton oder darf es Listenform annehmen?** Beide Agenten
   haben Bullets/Nummerierung bewusst vermieden (Querschnittsbefund 260727l, Formalisierungs-Reflex
   im engsten Register). Bei acht Sachbloecken und rund einem Dutzend datierter Termine kippt reine
   Prosa aber in Scan-Unfreundlichkeit — gerade am Handy am Morgen. Soll der Terminblock als einzige
   Ausnahme gelistet werden duerfen? *Warum: das Briefing ist der einzige taegliche Text, den Du
   LIEST statt schreibst — der Lesbarkeits-Massstab koennte hier ein anderer sein als der Stil-
   Massstab.* → [[stimme]], [[arbeitsweise]]

## 2026-07-29 — GESCHLOSSEN: Felix Stählin gehört zu Elektro Stählin AG (Antwort Raphael)

Die seit Wissens-Chef Run 17 (27.07.) offene Frage ist beantwortet. **Beide** bisherigen Zuordnungen
im Hub waren falsch, und zwar auf verschiedene Weise:

- `rules/anrede-kontakte.md` führte **«Karl Wächter AG, Ausführender»** — eine Fehlannotation.
  Karl Wächter AG ist ein anderer Betrieb; der dortige Ansprechpartner ist **Mario Di Capua**
  (belegt `raw/260714-mailbatch-49.md:38`).
- Dieses Wiki führte an fünf Stellen **«Stählin AG Sanitär»** bzw. «Sanitär-Lieferant» — richtige
  Firma, **falsches Gewerk**.

**Richtig ist: Elektro Stählin AG, Zürich** (Elektroinstallationen, BKP 230). Bestätigt durch
Raphael am 29.07.2026 und unabhängig durch drei Hub-Belege:
`f.staehlin@staehlin-ag.ch` (`raw/260714-mailbatch-51.md:8`), «Index 318, **Stählin Elektro**»
(`raw/260714-mailbatch-48.md:19`, in einer Serie, die BKP 230.00 Elektro enthält) und der Vermerk
«Fall Staehlin-Elektro» in `rules/auto-verbesserungen-archiv.md:22`. Firmensitz Bolleystrasse,
8006 Zürich, gegründet 1945, Domain `staehlin-ag.ch` — deckungsgleich mit der Mailadresse.

Korrigiert am 29.07.2026: Rule-Zeile sowie fünf Stellen in `beziehungsregister.md` und eine in
`stimme.md`.

**Offen, bewusst nicht angefasst — Fehlannotation in `raw/`.**
`raw/260714-mailbatch-51.md:8` schreibt «Felix Stählin, **Karl Wächter AG** — Unternehmer/
Ausführender». Der Mail-Inhalt (die Adresse) ist korrekt, die **Firmen-Annotation des Bibliothekars
daneben ist falsch**. `raw/` wird nicht editiert (Rule `wissens-bibliothekar`) — hier festgehalten,
damit ein künftiger Batch die Annotation nicht erneut als Beleg liest.
**Gleiche Fehlerklasse wie im Fall `baurecht/raw/260717_amtlich_zh_hwschv.md`** (Wissens-Chef
Run 19): eine Autoren-Annotation in einer `raw/`-Datei wird später als Quelle behandelt. Wo eine
`raw/`-Datei neben dem Quellmaterial eigene Zuordnungen führt, sind diese als Annotation zu
kennzeichnen.

## Offene Fragen aus Batch 81 (Lücken-Sweep rj@ 13.–30.09.2025, gestellt 29.07.2026)

1. **Die leere «ZSC»-Mail an Gerry Scherbl (24.09.2025) — Absicht oder Versehen?** Die Mail hat
   den Betreff «ZSC» und **gar keinen Body** (kein Text, kein Anhang). Verschickst Du bei einem
   eingespielten Peer bewusst reine Betreff-Nachrichten, wenn das Stichwort im gemeinsamen Kontext
   alles sagt — oder war das ein Fehlversand? *Warum: davon hängt ab, ob der Zwilling die Nullform
   «Betreff trägt alles, Body leer» je selbst erzeugen darf. Solange unklar, erzeugt er sie nicht.*

2. **Doppel-Gruss: schaltest Du die Automatik-Signatur je bewusst ab?** Zwei Belege zeigen den
   getippten Gruss direkt vor dem Signaturblock, der selbst nochmals grüsst — einmal mit anderem
   Wortlaut (Beste Grüsse → Block, Bopp 02.09.), einmal **wortgleich** (Freundliche Grüsse zweimal,
   Fabio Don 25.09.). Stört Dich die Doppelung, oder ist sie Dir schlicht egal? *Warum: der Zwilling
   soll wissen, ob er den getippten Gruss als vollständigen Abschluss setzen darf (Block kommt
   technisch dazu) oder ob er die Doppelung als Fehler behandeln und `korrektur` sie ziehen soll.*

3. **Welche Rolle hast Du bei Nova Property gegenüber Christoph Bopp?** Bopp schreibt Dir sowohl
   von `@woma-maur.ch` als auch von `@novaproperty.ch` (22.09.2025). Sind das zwei Mandate desselben
   Partners, oder ist Nova nur der Objekt-Eigentümer im STWEG-Fall? *Warum: Identifikator-Pflicht —
   die Zuordnung Person→Organisation wandert unverändert in Anschreiben, Adressblatt und Protokoll.*

## Offene Fragen aus Batch 82 (Lücken-Sweep rj@ Oktober 2025, gestellt 30.07.2026)

Drei Fragen aus dem vollständig gelisteten Oktober-Fenster. Je in 1–2 Sätzen beantwortbar.

1. **Die Material-Analyse im Japanpapier-Mail (14.10.2025) — Dein Satz oder aus einem KI-Tool?**
   Der Spezifikations-Kern ist zweifelsfrei handgetippt («ob Sie ein solche Faserpapier, z.B.
   Japanpapier (Washi) 120-180g/m2 …»). Der Folgesatz dagegen trägt ein Paste-Signal: «Die
   gleichmässige Faserstruktur und das diffuse Lichtverhalten deuten auf ungeleimtes Naturpapier
   mit hohem Zelluloseanteil hin, eventuell mit leichten Kunstfaserzusätzen (z. B. Polyester oder
   Polyamid) zur Reissfestigkeit.» — im **selben Satz** steht einmal «z.B.» ohne und einmal
   «z. B.» mit Leerschlag, und das analytische Register springt aus der umgebenden Alltagssyntax.
   *Warum: der Satz ist im Wiki seit Batch 17 als Gold-Beleg für Dein Materialgespür geführt. Ist
   er KI-Text, muss er als Stilquelle raus (Echo-Schutz) — die Materialkompetenz selbst bleibt über
   viele andere Belege gesichert. Ich habe den Marker deshalb NICHT abgewertet, sondern nur mit
   Vorbehalt versehen.* → [[fachsignatur]]

2. **Die Wertquoten-Faktoren — fester JANS-Ansatz oder pro Projekt neu gesetzt?** Du hast
   Christoph Bopp Deinen Faktorenkatalog offengelegt (Wohnung EG f1.1 / 1.OG f1.15 / 2.OG f1.2,
   Balkon f0.25, Keller/Garage/Estrich f0.3, Aussenparkplatz f0.2). Ist das Deine Standard-Staffel,
   die Du grundsätzlich ansetzt, oder hast Du sie für dieses Objekt (Zürichstrasse 113/115) aus
   Lage und Ausbaustand hergeleitet? *Warum: davon hängt ab, ob der Skill `stockwerkeigentum` und
   der Agent `wertquoten-rechner` diese Zahlen als Default vorschlagen dürfen oder ob sie jedes Mal
   projektbezogen hergeleitet werden müssen. Ein falscher Default wandert direkt in eine
   Begründungsurkunde.* → [[fachsignatur]]

3. **«zur Info» an die Bauherrschaft — bewusst so knapp?** Die amtliche Archivakten-Lieferung
   hast Du der Bauherrin mit genau zwei Wörtern weitergeleitet (09.10.2025), ohne Anrede und Gruss,
   damals noch im Sie-Register. Ist das Deine bewusste Transmittal-Form auch gegenüber Kundschaft,
   oder war es die Eile des 7-Tage-Links? *Warum: die Nullform ist für Peers belegt. Der Zwilling
   darf sie gegenüber der Bauherrschaft nur einsetzen, wenn sie dort wirklich gewollt ist — sonst
   wirkt sie schroff.* → [[stimme]], [[arbeitsweise]]

---

## Runde 260730 (Fidelity-Review, Golds 19.11./25.11.2025)

1. **Die C4D-Anleitung vom 25.11.2025 — von Dir oder eingefügt?** Unter Deinem Signaturblock
   folgt in der Mail an den 3D-Freelancer ein siebenteiliger Lehrtext («Grundlage:», Abschnitte
   1.–7., Code-Blöcke, «Schritt 1–4»), der mit «Wenn du möchtest, analysiere ich dir den konkreten
   Pfad …» endet. Ich lese ihn als verbatim eingefügten KI-Text, den Du unverändert
   weitergeleitet hast. Stimmt das? *Warum: [[stimme]] hatte ihn bereits als Echo ausgeschlossen,
   [[fachsignatur]] führte ihn gleichzeitig als Deine authentische «dritte Säule» — und über den
   Do-Block stand die Lehrmittel-Form im immer-aktiven Gehirn. Ich habe das jetzt korrigiert; eine
   Zeile von Dir macht die Korrektur endgültig statt begründet-vermutet.* → [[fachsignatur]],
   [[stimme]]

2. **Wenn Dir ein Fachtext von der KI kommt und Du ihn brauchbar findest — weiterleiten oder
   umschreiben?** Am selben Tag hast Du den Inhalt um 14:29 in zwei eigenen Sätzen gesagt («Versuch
   doch mal … Dadurch löst du alle absoluten Pfade auf») und um 15:20 zusätzlich ein Factsheet-PDF
   gebaut. Soll der Zwilling es künftig so halten: fremde Erklärung nie roh weiterreichen, sondern
   auf Deine Kurzform eindampfen? *Warum: das entscheidet, ob der Zwilling bei technischen
   Erklärungen ausbreiten oder verdichten soll — heute widersprechen sich die beiden Belege.*
   → [[arbeitsweise]], [[fachsignatur]]

3. **Hebt ein gutes Telefonat den Lieferanten-Sie?** Nach dem freundlichen Telefonat mit Frau
   Diethelm (GFT Fassaden, 19.11.2025) bleibst Du bei «Sehr geehrte Frau Diethelm» — die kälteste
   Sie-Stufe — obwohl das Wiki sonst zeigt, dass Vertrautheit die Anrede nachzieht («Geschätzte
   Frau …» bei Mehari/Stähli). War das Absicht, oder ist «Geschätzte» erst nach mehreren Kontakten
   dran? *Warum: der Zwilling muss wissen, ob EIN gutes Gespräch die Stufe schon hebt oder erst
   eine Zusammenarbeit. Zu früh gewärmt wirkt anbiedernd, zu spät distanziert.*
   → [[beziehungsregister]]

4. **Sagst Du dem Lieferanten bewusst nicht, warum es wartet?** Du schreibst nur «so bald von der
   Bauherrschaft eine Grundbereitschaft signalisiert wird» — ohne zu erklären, dass Du das Thema
   erst intern aufnehmen musst. Ist dieses Nicht-Erklären Absicht (interne Abläufe gehen den
   Lieferanten nichts an), oder war es schlicht Kürze? *Warum: mein Zwilling hat genau hier einen
   Begründungssatz ergänzt, den Du nicht schreibst — er neigt zum Erklären, wo Du zumachst.*
   → [[haltung]], [[arbeitsweise]]

5. **Ist die Erinnerung ohne Vorwurf Deine Standardform?** «Ich hatte dich bereits gebeten, mir
   die Materialbibliotheken … zu exportieren» — nüchtern, ohne Spitze, direkt gefolgt vom
   Eingeständnis «Da ich das Programm noch nicht vollständig beherrsche, bin ich hier auf deine
   Unterstützung angewiesen». Erinnerst Du bei säumigen Zulieferern immer so, oder wird es beim
   zweiten Nachfassen deutlicher? *Warum: der Zwilling braucht die Eskalationsstufe. Heute kennt
   er nur die erste.* → [[haltung]], [[arbeitsweise]]

6. **Voller Signaturblock statt «Lieber Gruss» beim gewichtigen Du-Ask — Regel oder Zufall?** Die
   Kapital-/Abhängigkeits-Mail an den Freelancer endet mit «Freundliche Grüsse» + vollem Block,
   nicht mit dem sonst üblichen Kurzgruss dieses Kontakts. Ist der volle Block Dein Signal «das ist
   jetzt ernst / das ist aktenkundig»? *Warum: mein Zwilling hat hier «Lieber Gruss» gesetzt, weil
   die Rule den Kurzgruss ans operative Register bindet. Wenn das Gewicht auch den GRUSS hebt (nicht
   nur die Anrede), gehört das in die Rule `anrede-kontakte` neben die Anrede-Klausel.*
   → [[stimme]], [[beziehungsregister]]

---

## Runde 260731 (Gate twin-chef, Notariatsmail Mathies) — zwei Facetten-Spannungen, vom Chef entschieden

Kontext: Fidelity-Gate über eine rechtsbegründete Eingabe an das Notariat Wiedikon-Zürich
(Sprechakt a: eigenes Recht geltend machen, Gründung Raphael Jans AG). Die vier Facetten-Agenten
widersprachen sich an zwei Stellen; der Chef hat kontextabhängig aufgelöst. Beide Entscheide sind
belegt, aber je an einer Kante, die Raphael in einem Satz härten könnte.

1. **Trägt die Amtseingabe das zwei- oder das vierstellige Jahr?** `twin-stilist` verlangte die
   vierstellige Form (22.06.2026) für die aktenkundige, rechtsbegründete Eingabe und markierte die
   Beleglage selbst als offen («Register-Analogie, kein Direktbeleg»). Das Wiki belegt die
   **zweistellige** Form dagegen mehrfach, aber ausschliesslich operativ/Mahnung (01.02.26,
   10.06.26, 15.06.26, 16.03.26, 31.07.26). Der Chef hat auf **zweistellig** entschieden (belegt
   schlägt Analogie). Offen bleibt: schreibst Du in einer Eingabe, die zur Urkunde gehört, bewusst
   vierstellig? *Warum: der Zwilling datiert heute jede Gattung gleich; wenn das Aktengewicht das
   Datumsformat hebt, ist das ein billiger, aber sichtbarer Fidelity-Gewinn.* → [[stimme]]

2. **«Ohne Service-Satz» heisst nicht «ohne Dank» — bestätigst Du die Trennung?** Drei von vier
   Facetten-Agenten (`twin-werte`, `twin-denker`, `twin-fachsignatur`) wollten die Schlusszeile
   **ersatzlos streichen** und beriefen sich auf die belegte Regel «Gesuch/Antrag ans Amt endet mit
   dem Begehren, FG + Block ohne Service-Satz» (Fidelity 260719). Der Chef hat das **verworfen**:
   der nächstliegende authentische Präzedenzfall, Gold C (Statutenänderungs-Ersuchen ans Notariat
   Hottingen, 04.11.2025), trägt ausdrücklich «Für Ihre Antwort bin ich Ihnen dankbar» + FG + Block
   *und* ist zugleich als «ohne Service-Satz» erfasst; die Amtsmail ans Bundesamt für Justiz
   (21.06.2026) trägt «Besten Dank für Ihre Unterstützung». Gestrichen wurde daher nur die
   Floskelform «bedanke ich mich bereits im Voraus», ersetzt durch die belegte Kurzform. Offen:
   ist der **Schluss-Dank** in der Amtseingabe fix, oder fällt er weg, wenn das Begehren hart ist?
   *Warum: drei Facetten haben Service-Satz und Dank verwechselt — die Wiki-Formulierung «ohne
   Service-Satz» lädt zu diesem Fehlschluss ein und sollte, wenn Du bestätigst, in
   [[stimme]]/[[fachsignatur]] um den Halbsatz «der Schluss-Dank bleibt» ergänzt werden.*
   → [[stimme]], [[fachsignatur]], [[haltung]]

3. **Nebenbefund, kein Stil: Anhang-Dateinamen widersprechen der Botschaft.** Die beiden Beilagen
   heissen verifiziert `260627_Gruendungsurkunde_JANS-AG_Entwurf.docx` und
   `260627_Statuten_JANS-AG.docx` (nur der Inhalt wurde auf «Raphael Jans AG» umgestellt, die
   Dateinamen nicht). Die Mail teilt dem Notar mit, dass «JANS AG» aufgegeben ist, und hängt zwei
   Dateien an, die «JANS-AG» im Namen tragen. → an Raphael zur Umbenennung vor Versand, keine
   Facettenfrage.

## Runde 260731 (Mailbatch 83, Lücken-Sweep rj@ November 2025)

1. **Parallel-Streuung an zwei Kanäle derselben Stelle — Praxis oder Ad-hoc?** Zwei Belege im
   Fenster (AfB-Helpline + Bausekretariat, 4 Minuten Abstand, wortgleich, 06.11.2025; Vendor-
   Fachperson + Sammelpostfach, 14.11.2025). Soll der Zwilling das bei unklarer Zuständigkeit
   **selbst tun**, oder ist es eine Ad-hoc-Reaktion auf einen konkreten Verzug gewesen?
   *Warum: bei einer Behörde kann eine zweite, identische Mail an eine Parallelstelle auch als
   Druck oder als Doppelspurigkeit gelesen werden — und beide Sachbearbeitenden antworten
   vielleicht doppelt. Der Marker ist als «Do» erfasst; wenn Du ihn nur situativ willst, gehört
   eine Schwelle dazu (z.B. erst nach X Tagen ohne Antwort, oder nur beim Sammelpostfach).*
   → [[arbeitsweise]]

2. **Darf der Zwilling KI-Erklärtext ungerahmt an Dritte durchleiten?** Die betrefflose Mail vom
   25.11.2025 an den 3D-Freelancer besteht **vollständig** aus Modell-Output (keine Anrede, kein
   Gruss, kein Eigenwort) — als **Stilquelle** ist sie ausgeschlossen (Echo-Falle 11). Offen ist
   die **Handlung**: ist das ungerahmte Durchreichen einer KI-Erklärung an einen Peer eine
   gewollte, effiziente Arbeitsform (dann gehört sie in [[arbeitsweise]]), oder war es eine
   Eilentscheidung, die der Zwilling nicht nachbauen soll?
   *Warum: die Nullform ist bei Weiterleitungen an Sozial-Peers bereits als bewusstes Muster
   belegt — hier ist der durchgereichte Inhalt aber nicht fremd, sondern selbst erzeugt, und
   für den Empfänger nicht als KI-Text erkennbar.*
   → [[arbeitsweise]], [[haltung]]

3. **Zusage an ihre Bedingung koppeln — gilt das auch, wenn die Bedingung unangenehm ist?** Beleg
   19.11.2025: «Gerne melde ich mich bezüglich Show-Room Termin so bald von der Bauherrschaft eine
   Grundbereitschaft signalisiert wird» — hier ist die Bedingung neutral. Wie hältst Du es, wenn
   die ehrliche Bedingung für den Lieferanten schlecht klingt (Budget gestrichen, Produkt zu
   teuer, Konkurrenzprodukt vorne)? Gleich offen benennen, neutral abstrahieren («projektintern
   noch offen») oder gar nichts sagen?
   *Warum: der Marker ist jetzt als Do/Don't-Klausel in [[haltung]] scharf formuliert; ohne diese
   Abgrenzung könnte der Zwilling eine für den Empfänger kränkende Bedingung wörtlich ausschreiben.*
   → [[haltung]], [[beziehungsregister]]

## Runde 260731b (Fidelity-Review, Golds 01.12./14.12.2025 — Rückruf-Test)

1. **Plan-Metadaten in der Korrektur-Liefermail — fester Punkt?** In der STWEG-Korrektur an den
   Geschäfts-Du-Partner (14.12.2025) meldest Du als eigenen Bullet «Das Zeichnungsdatum habe ich
   auf 14.12.2025 gesetzt» — also nicht nur die inhaltliche Korrektur, sondern die Nachführung des
   Plankopfs. Ist das Ausweisen der Plan-Metadaten (Zeichnungsdatum, Index/Revision, Massstab) bei
   **jeder** korrigierten Planlieferung Dein fester Punkt, oder war es hier dem Notariatstermin
   geschuldet, weil der Plan am Folgetag unterzeichnet wurde?
   *Warum: sehr billig nachzubauen und für die Empfängerseite prüfrelevant — der Zwilling liefert
   bisher nur die inhaltliche Änderung und lässt den Plankopf stumm.* → [[fachsignatur]], [[arbeitsweise]]

2. **Die Dringlichkeit des Gegenübers bewusst nicht aufgreifen?** Bopps Auftragsmail ist voller
   Termindruck («Unterzeichnungstermin bereits am Montag», «wenn es irgendwie geht … morgen Abend
   prüfen»). Deine Antwort erwähnt den Termin mit keinem Wort, sie liefert einfach am selben Tag.
   Ist dieses Nicht-Zurückspiegeln bewusst (Termin ist gesetzt, ihn zu wiederholen wäre
   Nullinformation) — oder gibt es Fälle, in denen Du die Frist doch ausdrücklich quittierst, etwa
   wenn Du sie **nicht** halten kannst?
   *Warum: vierfach belegte Twin-Drift, jetzt als Don't im Gehirn. Die Ausnahme fehlt: verpasst der
   Zwilling die Quittung dort, wo sie nötig wäre, wirkt er unzuverlässig statt souverän.*
   → [[arbeitsweise]], [[haltung]]

3. **Sperr-Warnung direkt am Punkt statt am Schluss — Prinzip?** In der Bauentscheid-Mail an die
   Bauherrschaft (01.12.2025) steht «Ohne diese Bestätigung bleiben alle Bauarbeiten blockiert»
   **innerhalb** des Gebäudeschadstoff-Punktes, nicht als zusammenfassende Warnung am Ende der
   Liste. Setzt Du eine Konsequenz-/Sperrwarnung immer unmittelbar an den Punkt, der sie auslöst
   (und dann höchstens einmal pro Mail), oder gibt es die gebündelte Warnung am Schluss auch?
   *Warum: der Zwilling hat die Warnung in diesem Lauf ans Ende gestellt UND dem falschen Punkt
   zugeordnet — die Platzierungsregel entscheidet, ob die Bauherrschaft die richtige Auflage als
   kritisch liest.* → [[arbeitsweise]], [[denken]]

4. **Wechselt die Aufzählungsform innerhalb einer Sie-Verfahrensmail bewusst mit der Blocklogik?**
   Unterfrage zu Runde 260730 #3, jetzt an einem präziseren Befund: in derselben Hofer-Mail
   verwendest Du **drei** Formen — nummerierte Liste für die Abfolge einzureichender Schritte,
   «–»-Liste für die gleichrangigen Koordinationspartner, reinen Fliesstext für die geltenden
   Auflagen (Denkmalpflege, Bauausführung). Ist das Deine Logik (Abfolge → Nummer, Menge → Strich,
   Bedingung → Fliesstext), oder hat sich das aus dem Schreibfluss ergeben?
   *Warum: der Zwilling verlistet reflexhaft alles; wenn die Formwahl Bedeutung trägt, kostet ihn
   das Verlisten die Aussage.* → [[stimme]], [[arbeitsweise]]

## Runde 260731c (Gate-Lauf Hub-Chef-Briefing — Gattung ohne Stil-Gold)

1. **Wie schliesst der Hub eine Mail an Dich ab?** Das Tagesbriefing (Hub-Instanz an Raphael,
   operatives Du) endet heute mit «Lieber Gruss / Dein Hub». Der Kurzgruss ist für die operative
   Auskunft belegt, der **Prüfbericht/das Fachurteil im Du** zieht bei Dir dagegen FG + vollen
   Block (Fidelity 260725b). Das Briefing ist beides zugleich. Bleibt der Kurzgruss, oder willst Du
   für Hub-Erzeugnisse eine eigene, ausdrücklich andere Schlussform, damit Hub-Post auf einen Blick
   von Deiner eigenen Post unterscheidbar ist?
   *Warum: die Gattung «Hub an Raphael» hat per Echo-Schutz **kein** authentisches Stil-Gold — der
   Zwilling entscheidet hier ohne Vorbild und braucht Deinen Setzentscheid.* → [[stimme]], [[beziehungsregister]]

2. **Blocktitel im Briefing: fett oder Versalien?** Belegt sind beide Formen (fette Themen-Blöcke
   nach Amt/Gegenstand, Fidelity 260718; Caps-Zwischentitel im Fliesstext, Mailbatch). Das Briefing
   geht als Aptos-HTML raus, ich habe deshalb auf fett entschieden und Versalien verworfen. Richtig?
   *Warum: betrifft jedes mehrteilige Erzeugnis, nicht nur das Briefing.* → [[stimme]], [[arbeitsweise]]

3. **Trägt der Betreff die zeitkritische Sache?** Ich habe den Meta-Satz «sollte Dich vorher
   erreichen» gestrichen (Nullinformation, Du hast den Termin selbst gesetzt) und die Dringlichkeit
   stattdessen in den Betreff gezogen («… Sitzung 11:00 ohne Bauherr») — analog zu Deinem belegten
   Muster, den Call-to-Action allein im Betreff zu führen. Ist das die richtige Kompensation, oder
   soll die Blockfolge die Dringlichkeit allein tragen?
   → [[stimme]], [[arbeitsweise]]

## Aus Mailbatch 84 (Lücken-Sweep rj@ 01.–14.02.2026, gestellt 01.08.2026)

1. **Der AfB-Anfrageentwurf vom 11.02.2026 — von Dir formuliert oder maschinell ausformuliert?**
   Der Rahmen der Mail an den Asset Manager ist eindeutig Deine Hand («gegen zu Lessen»,
   «Angragestruktur»). Der eingebettete Anfrageentwurf trägt dagegen typografische Gänsefüsschen
   „…" statt Deiner Guillemets «…» und eine nummerierte Fett-Titel-Struktur. Die Fundstellenkette
   (BEZ 1988 Nr. 14 / BEZ 2015 Nr. 36 / BGer 1C_148/2010) ist unbestritten Deine. Hast Du den
   Entwurf selbst getippt, oder hast Du ihn Dir ausformulieren lassen? *Warum: davon hängt ab, ob
   die Behörden-Anfragestruktur als Gold-Vorlage weitergegeben wird oder nur ihr Inhalt.*
   → [[stimme]], [[fachsignatur]]

2. **«Hoi Zäme» — bewusste Stufe oder Zufall des Moments?** Am 04.02.2026 schreibst Du derselben
   Runde «Geschätztes Projektteam, / Werter Albin, Nesa und Peter», am 11.02.2026 im Nachfass
   «Hoi Zäme». Ist die Mundart-Kollektivanrede für Dich die reguläre Kurzform an ein vertrautes
   Projektteam (dann baue ich sie ein), oder war das die Ausnahme eines schnellen Mobile-Tipps?
   *Warum: betrifft jede kurze Gruppenmail.* → [[beziehungsregister]], [[stimme]]

3. **Adressverlauf Saumstrasse 21 → Grubenstrasse 37.** Deine Signatur vom 31.03.2025 trägt
   «Raphael Jans I Architekten ETH I SIA / Saumstrasse 21 I 8003 Zürich». Ab Korpusbeginn Juli 2025
   steht überall Grubenstrasse 37. War die Saumstrasse die frühere Büroadresse (dann ist sie in
   Altdokumenten korrekt und darf beim Zitieren stehen bleiben), oder war sie immer die private
   Adresse und stand versehentlich im Geschäftsblock? *Warum: entscheidet, ob Altbelege korrigiert
   oder unverändert zitiert werden; die Rule `jans-absenderadresse` kennt nur Flüelastrasse 6 als
   veraltet.* → [[beziehungsregister]]

## Offen — Mailbatch 85 (03.08.2026)

1. ~~**Vollform «Geschätzter Herr Beson Bilali» in der Auftragsfreigabe (26.02.2026)** — bewusste
   Anhebung auf den vollen Namen im verbindlichsten Moment (Pauschalfreigabe CHF 11K), oder
   schlicht Unsicherheit, welcher Teil Vor- und welcher Nachname ist? Der Zwilling führt bis zur
   Antwort die Routineform «Geschätzter Herr Beson».~~ → **BEANTWORTET am 06.08.2026 (Mailbatch 88),
   ohne Rückfrage an Raphael:** es ist die Namensform-Unsicherheit. Zweitbeleg 29.01.2026, ein
   beiläufiger Statussatz ganz ohne verbindlichen Moment führt «Herr Simmen Jonas» in umgedrehter
   Reihenfolge und macht fünf Zeilen später aus dem Nachnamen den Vornamen («Feedback von Simon»).
   Beide Fälle betreffen fremde, über Dritte erhaltene Namen. Der Zwilling ahmt die Vollform
   deshalb **nicht** nach, sondern verifiziert die Namensform an der Signatur des Kontakts.
   → [[beziehungsregister]]
2. **Referenz-Anker in der Offertenanfrage (24.02.2026)** — ist «Montageansatz gemäss Referenz:
   2 Monteure, ca. 2 Stunden» eine bewusste Methode (dem Anbieter den Aufwandskennwert des
   ausgeführten Vergleichsfalls vorgeben, damit er ihn nicht frei setzt), oder war es hier nur die
   nächstliegende Beschreibungshilfe? Falls Methode: gehört sie in den Skill `ausschreibung` als
   Pflichtblock der Anfrage. → [[fachsignatur]]
3. **Terminkoordination an den Unternehmer delegieren statt selbst terminieren** («Ich bitte um
   Terminkoordination bis Ende KW9», dreimal am 26.02.2026) — gilt das generell, oder nur bei
   kleinen Vergaben mit wenigen Beteiligten? Bei mehreren Gewerken am selben Bauteil (hier
   Baumeister → Storen → Schreiner) hängt die Reihenfolge an der Bauleitung. → [[arbeitsweise]]

## Runde 260803 (Fidelity-Review, Dokument-Gold: Protokoll 24.08.2023 + Kriterienkatalog 27.03.2021)

**Facetten-Spannung dieses Laufs (gegenseitige Validierung, ungelöst → hier vermerkt):**
[[arbeitsweise]] fordert im Do-Block «immer einen nächsten Schritt anbieten»; die beiden
Dokument-Golds enden ausdrücklich **ohne** Schluss, und dasselbe Don't verbietet inzwischen die
Schlussverlängerung. Aufgelöst wurde die Spannung vorläufig durch eine Gattungsklausel (Mail →
nächster Schritt; Eigendokument → endet mit dem letzten Sachpunkt). Frage 4 unten macht daraus
eine Entscheidung statt einer Vermutung.

1. **Protokolliert Du grundsätzlich im Formular des Gastgebers?** Das Protokoll vom 24.08.2023
   läuft vollständig in der Sitzungsvorlage des Gegenübers (fremde Traktandenstruktur, Code-Spalte
   I/P/E, Beilagenraster B01–B06, am Fuss sogar dessen Grussformel und Firmenname). Ist das Deine
   Regel, wenn die Sitzung beim anderen stattfindet oder der andere die Vorlage stellt — und
   welche Vorlage gilt, wenn **JANS** führt?
   *Warum: der Zwilling baut sonst ein eigenes Protokollraster und trifft weder Deine Rubriken
   noch die Erwartung des Empfängers. Eine Zeile genügt.* → [[arbeitsweise]]

2. **«…» oder „…"— hängt das an der Gattung, am Jahr oder an der Word-Autokorrektur?** Im
   Protokoll 2023 stehen null Guillemets und zweimal „…", im Kriterienkatalog 2021 acht
   Guillemets. Ich habe die Echo-Detektion entschärft (das Signal «null Guillemets» verurteilt
   allein nichts mehr), aber die Setzregel für den Zwilling ist offen.
   *Warum: die KB nutzt Guillemets zugleich als Stilmarker und als Echtheitssignal — solange
   unklar ist, wovon sie abhängen, kann der Zwilling echtes Gold abwerten oder falsch setzen.*
   → [[stimme]]

3. **Plus/Minus-Bilanz oder Punkteraster — und ist die leere Minusspalte die stille
   Favoritenkür?** Der Kriterienkatalog bewertet vier Varianten ausschliesslich über «+»- und
   «-»-Punkte; Variante 2 trägt vier Pluspunkte und unter «-» **nichts**. Ist das Absicht (der
   Favorit soll sich selbst zeigen, statt behauptet zu werden), oder war die Minus-Liste dort
   schlicht noch nicht gefüllt?
   *Warum: der Zwilling hat reflexhaft ein Raster mit Wertung 1–3 und einer ausformulierten
   Empfehlung gebaut. Wenn die stumme Bilanz Absicht ist, ist das ein starker, billig
   nachbaubarer Marker.* → [[denken]], [[haltung]]

4. **Endet ein Arbeitspapier bewusst ohne Empfehlung?** Zwei Golds in Folge (Fragenkatalog 2024,
   Kriterienkatalog 2021) hören mit dem letzten Sachpunkt auf. Ist die Empfehlung bewusst der
   Besprechung oder dem Begleitschreiben vorbehalten — oder gibt es Arbeitspapiere, die sehr wohl
   mit einem Fazit schliessen (und woran erkennt man sie)?
   *Warum: löst die oben vermerkte Spannung in [[arbeitsweise]] und entscheidet, ob der Zwilling
   Deine Dokumente künftig abbricht oder abrundet.* → [[arbeitsweise]], [[haltung]]

5. **Eine Perspektive je Blatt statt eines multikriteriellen Rasters?** Der Katalog heisst
   «Kriterienkatalog **Aussenraumbewertung**» und beurteilt die Varianten konsequent nur aus der
   Aussenraumsicht — Baurecht, Kosten und Betrieb kommen nur vor, wo sie den Aussenraum treffen.
   Legst Du bewusst mehrere solche Einblatt-Perspektiven nebeneinander, statt ein Blatt mit allen
   Achsen zu machen?
   *Warum: bestimmt, ob der Zwilling zu einem Variantenauftrag ein Blatt oder eine Serie baut —
   und ob er Achsen mischen darf.* → [[denken]], [[fachsignatur]]

6. **Projektnummer 2305 im Kopf des Wädenswil-Protokolls — Tippfehler oder frühere Nummer?** Das
   Dokument trägt «2305 Wädenswil», es liegt im Projektordner «2304 Waedenswil», und 2305 ist im
   Archiv Münchenwiler. *Warum: eine Projektnummer ist ein Identifikator, der unverändert in
   Protokolle, Rechnungen und Planköpfe wandert (Rule `identifikatoren-verifizieren`). Der
   Zwilling darf Projektnummern nicht aus einem Dokumentkopf übernehmen, wenn dort belegt schon
   einmal die falsche stand.* → [[fachsignatur]], [[arbeitsweise]]

## Aus Mailbatch 86 (Lücken-Sweep `rj@` 06.–13.03.2026, gestellt 04.08.2026)

7. **«Für X bin ich Ihnen dankbar» — bewusste Technik oder Gewohnheit?** An die Kreisarchitektin
   ging am 06.03.2026 eine Mail, deren ganzer Eigentext aus einem im Voraus bedankten Auftrag
   besteht, ohne das Wort «bitte». Ist das Deine bewusste Form, einer Amtsperson eine Handlung
   zuzuweisen, ohne sie um etwas zu bitten — oder eher eine eingeschliffene Höflichkeitsformel?
   *Warum: der Zwilling muss wissen, ob er diese Form gegenüber Behörden aktiv einsetzen soll
   (dann gehört sie in die Standardausstattung) oder nur reproduzieren, wenn sie ohnehin passt.*
   → [[stimme]], [[beziehungsregister]]

8. **Wann «Sehr geehrte/r» statt «Geschätzte/r» an eine Behörde?** In der Märzwoche tragen alle
   drei Stadt-Zürich-Kontakte die warme Stufe «Geschätzte/r», auch die verfahrensentscheidende
   Kreisarchitektin — «Sehr geehrte/r» kommt nicht ein einziges Mal vor. Gilt inzwischen
   «Geschätzte/r» als Default im Amtsverkehr, und bleibt «Sehr geehrte/r» dem Erstkontakt und der
   Rechtsabteilung vorbehalten? *Warum: die Anredestufe ist die erste Zeile jeder Behördenmail;
   der Zwilling wählt sie heute aus einer Vermutung statt aus einer Regel.* → [[beziehungsregister]]

9. **Bekommt die Bauherrschaft die Amtsmail bewusst zweimal?** Am 06.03.2026 ging die
   Amts-Weiterleitung um 15:44 an die Kreisarchitektin mit der Bauherrin im cc — und 24 Sekunden
   später dieselbe Weiterleitung noch einmal allein an die Bauherrin mit der Zeile «Zur Info».
   Ist die Doppelung Absicht (cc = Beweis, Direktmail = Aufmerksamkeit) oder nur eine schnelle
   zweite Bewegung? *Warum: entscheidet, ob der Zwilling die Doppelzustellung als festes Muster
   nachbaut oder nicht.* → [[arbeitsweise]], [[beziehungsregister]]

## Offen — Runde 260805 (twin-mail-training Batch 87, Luecken-Sweep Dez 2025 / Jan 2026)

Quelle: `raw/260805-mailbatch-87.md`. Vier Eigentexte gelesen, drei echte Luecken destilliert;
das Fenster war ungewoehnlich stark vorbelegt (Fidelity 260723 und 260727d hatten die Golds
met-all/Grillmotor, Claudia-Ultra-Ping, CNCEST-Reklamation und Peter-Weisser-Neujahr bereits
verbraucht). Je in 1–2 Saetzen beantwortbar.

1. **Der Signaturblock als Satzende — bewusstes Mittel oder Tippfluss?** «Jetzt warte ich auf
   Ihren Anruf**:**» endet mit Doppelpunkt, und die Telefonnummer steht im Block darunter. Ist der
   Doppelpunkt gesetzt, weil der Block den Satz vollendet (dann ist es ein Format, das der Zwilling
   nachbauen darf), oder ist er nur stehengeblieben? *Warum: entscheidet, ob der Zwilling die
   Nummer im Fliesstext wiederholt oder auf den Block zeigen darf.* → [[stimme]]
2. **Trennlinie nackter Gruss ↔ FG+Block: wirklich der Name des Gegenuebers?** Batch 87 leitet aus
   dem Kontrast CNCEST («Guten Tag Anna» → «Gruss / Raphael Jans») zu Microsoft-Support (anonymes
   Ticket-Postfach → FG+Block auch bei einem Satz) ab, dass **nicht** Fadentiefe oder Mailkuerze
   entscheiden, sondern ob am anderen Ende ein Name steht. Stimmt das, oder war es Tagesform bzw.
   die Frage, ob die Mail vom Handy kam? *Warum: die bisher offene Frage 260727d #3 wuerde damit
   geschlossen statt um einen weiteren Einzelfall erweitert.* → [[beziehungsregister]], [[stimme]]
3. **Konzession mit Begruendung — auch gegenueber dem Unternehmer in der Vergabe?** Gegenueber dem
   Vermieter benennst Du den Vorteil Deines Entgegenkommens ausdruecklich («So koennten Sie das
   Geraet an diesem Tag weiervermieten»). Machst Du das in der **Vergabe** genauso, wenn Du einem
   Unternehmer entgegenkommst, oder bleibt die Konzession dort bewusst unbenannt, um sie in der
   Nachverhandlung nicht als Argument zu verlieren? *Warum: klaert, ob der Marker rollenunabhaengig
   gilt oder nur, wo Du der zahlende Kunde bist.* → [[haltung]]

## Selbstfragen aus dem Fidelity-Lauf 05.08.2026 (twin-fragesteller)

Quelle: `outputs/2026-08-05_fidelity.md`. Drei Golds aus dem Fenster 02.–06.03.2026 (Sammelmail
Rechnungen/Auftragsfreigabe an den Betreiber-Vertreter · Plangrundlagen-/Freigabemail · Offert-
Weiterleitung an die Bauherrin mit Unternehmerin im Cc). Je in 1–2 Sätzen beantwortbar.

1. **Hebt der mitlesende Dritte wirklich die Namensform — oder war es der Vergabe-Anlass?**
   Belegt ist ein kontrolliertes Paar an dieselbe Bauherrin: bilateral «Geschätzte Undine»
   (26.02.), mit der offerierenden Unternehmerin im Cc «Geschätzte Frau Hofer» (06.03.). Schreibst
   Du einer Du-Bauherrin auch dann mit Nachnamen, wenn der Dritte im Cc **nichts** mit Geld oder
   Vergabe zu tun hat (z.B. ein Fachplaner in einer reinen Terminmail)? *Warum: entscheidet, ob der
   Zwilling auf «wer liest mit» oder auf «worum geht es» schaltet — die beiden fallen hier
   zusammen.* → [[beziehungsregister]]
2. **Was genau zieht den Service-Satz — die Gattung oder die Rückfrage-Wahrscheinlichkeit?**
   Am 02.03. trägt die Rechnungsmail «Bei Fragen oder Unklarheiten stehe ich Dir jederzeit gerne
   zur Verfügung», am 03.03. trägt die Plangrundlagen-/Freigabemail an denselben Empfänger keinen
   Schlusssatz. Beide verlangen eine Handlung. Ist der Unterschied, dass bei Belegen mit Rückfragen
   zu rechnen ist, oder schlicht, dass die zweite Mail ohnehin mit einer Frage endet? *Warum: der
   Zwilling hängt den Service-Satz derzeit zu oft an.* → [[stimme]]
3. **Die Bullets der referierten GL-Vorgabe: Zeichen mit Bedeutung oder Outlook-Default?**
   In der Mail vom 03.03. steht die fremde Vorgabe unter «Änderung Bettenkapazität gemäss GL:» in
   schlichten Listenpunkten, nicht in Deinen «_ »-Zeilen. Setzt Du für **referierte** Fremdvorgaben
   bewusst ein anderes Zeichen als für eigene Aufzählungen, oder hat dort einfach die
   Listenfunktion des Mailprogramms gegriffen? *Warum: nach Deiner Freigabe vom 01.08.2026 werden
   Zeichen abgeschaut, nicht semantisiert — hier steht ein möglicher echter Bedeutungsträger.*
   → [[arbeitsweise]], [[stimme]]
4. **Imperativ oder Höflichkeitsform — trennt wirklich der Gegenstand?** Belegt: «Darf ich Dich
   bitten, die Rechnungen … zu begleichen» (Geld, 02.03.) gegen «Bitte prüfe die Unterlagen und
   stelle … den Antrag» (Projektaufgabe, 03.03.), gleicher Empfänger, gleiches Register. Gilt das
   auch nach oben, also gegenüber einer Bauherrschaft, oder wird dort auch die Projektaufgabe zur
   «Darf ich Sie bitten»-Form? *Warum: der Zwilling wählt die Bitte-Form bisher nach Register und
   klingt dadurch im Mandat zu devot.* → [[stimme]]
5. **Nimmst Du Dich bei jeder Vergabe als Zwischenstation heraus?** Die Offerte der Schreinerei
   ging an die Bauherrin «mit der Bitte um Entscheid direkt an Unternehmer», ohne Empfehlung und
   ohne Einordnung des Betrags. Ist das die Regel bei überschaubaren Einzelvergaben, oder gab es
   hier eine Vorbesprechung, in der die Empfehlung mündlich schon stand? *Warum: der Zwilling hat
   in der Blindfassung eine Vergabeempfehlung erfunden — er braucht die Grenze, ab der Du wieder
   selbst wertest.* → [[haltung]], [[arbeitsweise]]

## Runde 260806 (Mailbatch 88, `rj@` 16.–31.01.2026)

1. **Anrede und Gruss als zwei unabhängige Regler im etablierten Du?** — An denselben vertrauten
   Kontakt gehen in sieben Tagen vier Anredestufen («Geschätzter <Vorname>» → «Geschätzter Herr
   <Vorname>» → «Hoi <Vorname>» → «Geschätzter <Vorname>»), und zwar **entgegen** dem Anlassgewicht:
   die kälteste Form steht auf der harmlosen Fachfrage, die wärmste auf einer Dreiwort-Quittung.
   Die Grussformel dagegen steigt mit dem Gewicht («Beste Grüsse» auf der Rechnungsmail). Gilt die
   Klausel «Gewicht schlägt Routine» (Rule `anrede-kontakte`) nur auf der Sie-Achse, während im
   etablierten Du die Anrede frei flottiert und allein der Gruss das Gewicht trägt? Der Zwilling
   hält bis zur Antwort die Routineform des Kontakts. → [[beziehungsregister]]

2. **Ist «Hoi,» ohne Namen eine Verteiler-Lösung oder eine Nachtform?** — Der einzige Beleg
   (25.01.2026, 23:54) fällt mit **beidem** zusammen: gemischter Verteiler (Familie plus
   Geschäftspartner, verschieden nah) und später Sonntagabend. Welcher der beiden Auslöser trägt?
   Davon hängt ab, ob der Zwilling die Form bei jedem gemischt-nahen Verteiler einsetzen darf oder
   nur in der Eilspur. → [[stimme]]

3. **Wird der Themenraster vor der Fachanfrage immer selbst gesetzt?** — Beim Brandschutz bestellt
   Raphael nicht die Antwort, sondern die **Abklärungspunkte**, und gibt dafür neun Themen vor.
   Ist das die Regel für jede Fachplaner-Zuschaltung (Statik, HLKS, Akustik), oder greift sie nur
   dort, wo er das Gebiet selbst gut genug überblickt, um den Raster zu setzen? Im zweiten Fall
   bräuchte der Zwilling ein Kriterium, wann er den Raster besser dem Fachplaner überlässt.
   → [[arbeitsweise]]

## Runde 260806b (Fidelity-Review, `rj@` 13.–20.03.2026)

1. **Formalisiert der Mitleser die Anrede auch dann, wenn er zum engeren Team gehört?** — Belegt
   ist der Sprung «Salut/Hoi Albin» → «Geschätzter Albin», sobald der externe Fachplaner im Cc
   steht (19.03.2026 gegen 18./20.03.). Offen ist, ob der Auslöser jeder Dritte ist oder nur der
   **projektfremde/externe** Dritte: schreibst Du auch dann «Geschätzter», wenn der Cc jemand aus
   demselben Haus ist (z.B. eine zweite Person des Bauherrn), oder bleibt es dort beim Hoi?
   *Warum: der Zwilling liest heute nur den Anlass; er braucht die Regel, ob er die Empfängerliste
   nach «irgendwer mehr» oder nach «jemand von aussen» prüfen muss.* → [[beziehungsregister]]

2. **Wer ist «we» in den englischen Mails?** — Die Mail vom 15.03.2026 an den Web-Entwickler steht
   durchgehend im «we/our» und enthält **kein einziges «I»**, während die Regel im Deutschen «wir
   für die Büro-/Projekthandlung, ich für die persönliche Bitte» satzweise trennt. Meint das «we»
   hier buchstäblich Dich und die mitsendende Fotografin, oder ist es im Englischen generell die
   Standardform für das Büro? *Warum: davon hängt ab, ob der Zwilling im Englischen die deutsche
   Ich/Wir-Trennung nachbaut oder sie bewusst fallen lässt.* → [[haltung]], [[stimme]]

3. **Ist «In deep respect.» eine feste englische Schlussformel oder eine Einzellaune?** — Sie steht
   am 19.03.2026 unter einer Höflichkeitskette («Please let me know … / Please do not hesitate …»)
   und hat im Deutschen keine Entsprechung. Setzt Du sie regelmässig, und wenn ja: gegenüber wem?
   *Warum: der Zwilling schreibt englische Schlüsse heute nach deutschem Muster; eine eigene Formel
   wäre ein sofort hörbarer Echtheitsmarker.* → [[stimme]]

4. **Gilt die Verortung «die Fachplaner haben oberste Priorität» generell oder nur im Fremdbetrieb?**
   — Am 19.03.2026 erklärst Du Dich vor dem Bauherrenvertreter und dem Fachplaner ausdrücklich zum
   Zulieferer der Fachplaner und ordnest Dich «innerhalb der bestehenden Struktur» des Kunden ein.
   Ist das Deine Rollenauffassung in jeder Ausführungsphase, oder gilt sie dort, wo der Kunde eine
   eigene Bau-/Technikorganisation hat und Du in dieser mitläufst? *Warum: der Zwilling stellt den
   Architekten reflexhaft an die Spitze der Koordination und trifft damit genau den falschen Ton.*
   → [[haltung]]

5. **Wie viel Vorarbeit ist bei einer Formalie der Standard?** — Am 20.03.2026 lieferst Du zwei
   komplett abschreibfertige Unterschriftsvarianten samt Handelsregister-Zeilen, statt eine zu
   empfehlen, und hängst die Wertung als «Ist vielleicht am einfachsten so.» an. Machst Du das
   immer, wenn eine Formalie mehrere Wege hat, oder war es hier die Terminlage? *Warum: das
   unterscheidet sich diametral von der Beratungsmail, wo Du klar empfiehlst — der Zwilling braucht
   das Kriterium, wann er Arbeit statt Meinung liefert.* → [[arbeitsweise]]

6. **Bleibt eine Gewerkszeile weg oder wird sie als offen ausgewiesen?** — Die Statusmail vom
   19.03.2026 führt Sanitär und Lüftung und lässt **Elektro** ganz aus, obwohl der Betreff es nennt.
   Ist das Absicht (nichts zu sagen = keine Zeile), oder schreibst Du in anderen Fällen «Elektro:
   noch offen»? *Warum: der Zwilling füllt solche Lücken heute mit einer plausiblen Zeile; er
   braucht die belegte Alternative — weglassen oder als offen markieren.* → [[arbeitsweise]],
   [[fachsignatur]]

## 260807 (Batch 89, Fenster 21.–31.03.2026)

1. **Gilt der Grundsatz «nach dem Planfreeze liegt die gestalterische Verantwortung beim
   Architekten» als Deine Position — oder ist das die Formulierung eines Maschinentextes?** — Er
   steht im KI-assistierten Antwortentwurf vom 24.03.2026 an eine Bauherrschaft, und zwei Tage
   später fragst Du eine andere Bauherrin in genau dieser Phase «Findest du dies in Bezug auf die
   Profilierung schön?». Der Entwurf zielt auf **Drittplaner**, Dein eigenes Handeln betrifft die
   **Bauherrschaft** — die beiden widersprechen sich also nicht zwingend. Trotzdem: würdest Du den
   Satz so unterschreiben, und wo genau verläuft für Dich die Grenze zwischen «Bauherrschaft
   entscheidet mit» und «Drittplaner entscheidet mit»? *Warum: der Satz ist rhetorisch stark und
   der Zwilling würde ihn sofort nachbauen — aber er ist bisher nur durch einen Text belegt, den Du
   nicht selbst getippt hast.* → [[haltung]], [[stimme]] Echo-Befund Batch 89

2. **Wie schreibst Du Deiner Familie?** — Der einzige direkte Beleg ist die Mail «Josef Essen» vom
   23.03.2026 an Deinen Bruder: nur ein Betreff aus zwei Wörtern, Body leer, parallel an seine
   private und seine geschäftliche Adresse. Ist das der Normalfall (Familie = unterhalb jeder Form,
   Mail nur als Terminanstoss), oder war das hier die Kürze der Sache? *Warum: das
   Beziehungsregister kennt sieben berufliche Wärmestufen und keine einzige familiäre; der Zwilling
   würde eine Familienmail heute im Sozial-Peer-Ton schreiben, und das ist vermutlich zu viel Form.*
   → [[beziehungsregister]]

3. **Ist der Doppelversand an einen unbeteiligten Dritten am 22./24.03.2026 ein Fehlversand?** — Die
   eingehende Rückfragen-Mail der Bauherrschaft (22.03., «WG: Angebot») und vier Minuten nach der
   Antwort an die Bauherrschaft auch der **vollständige Antworttext** (24.03. 09:00, ohne Betreff)
   gingen an die Mailadresse einer projektfremden Person. Der Inhalt betrifft einen
   Honorar-/Vertrauenskonflikt mit der Bauherrschaft. Wahrscheinlichste Erklärung ist eine
   Autovervollständigung im An-Feld, die beim zweiten Mal aus der Zuletzt-verwendet-Liste
   wiederkam. *Warum: kein Stilbefund und nichts, was der Zwilling lernen soll — aber der Vorgang
   sollte Dir bekannt sein, und falls es kein Versehen war, fehlt dem Beziehungsregister eine
   Rolle.* → kein Facetten-Marker

## 260807b (Fidelity-Review, Fenster `rj@` 06.–17.04.2026)

1. **Hältst Du der Behörde den Kanal offen, weil Du etwas willst — oder weil sie das Amt ist?** —
   Am 15.04.2026 endet Deine Nachfrage ans Amt für Baubewilligungen mit «Bei Fragen oder
   Unklarheiten stehe ich Ihnen jederzeit gerne zur Verfügung», fünf Stunden später Deine
   Nachlieferung an die Fachstelle Lärmschutz ohne jede Schlussformel. Ich lese daraus: **Bitte für
   mich → Service-Satz, Lieferung → Schluss nach dem Sachsatz.** Stimmt diese Trennung, oder hängt
   der Satz eher daran, wie gut Du die Stelle kennst? *Warum: der Zwilling hat bisher eine
   Pauschalregel («Behörde: kein Service-Satz») und lag damit in einer von zwei Mails falsch.*
   → [[stimme]] Behörden-Schluss

2. **Die zwei nackten Sätze am Schluss der Lärmschutz-Mail («Im 2.OG befinden sich die
   Patientenzimmer. / Das Umbauprojekt beinhaltet das 1.OG.») — bewusste Technik oder zufällig?** —
   Für mich ist das Deine stärkste Stelle in diesem Fenster: Du legst die zwei Fakten hin, die den
   Fall entscheiden, und ziehst den Schluss nicht. Machst Du das gegenüber Ämtern absichtlich (weil
   ein selbst gezogener Schluss angreifbar wäre), und machst Du es auch gegenüber **Bauherrschaft
   oder Fachplanern**, oder bekommen die die Folgerung ausformuliert? *Warum: davon hängt ab, ob
   der Zwilling diese Endform nur im Behörden-Sie oder überall einsetzen darf.*
   → [[arbeitsweise]] vierte Endform

3. **Bleibt eine amtliche Fachstelle nach einem Telefonat beim «Sehr geehrter Herr X»?** — Bei
   Unternehmern kippst Du nach dem Telefonat regelmässig ins Wärmere (Jegen, Gastro-Online), bei
   Herrn Schoch von der Fachstelle Lärmschutz bleibt es über zwei Mails und ein Telefonat kalt,
   während die Kreisarchitektin am selben Tag «Geschätzte Frau Hottinger» trägt. Ist die Regel
   «erst die etablierte Arbeitsbeziehung hebt, nicht der Kontakt»? *Warum: der Zwilling erwärmt
   heute nach jedem belegten Gespräch und würde bei Ämtern zu früh duzen im Ton.*
   → [[beziehungsregister]]

4. **Warum hast Du am 15.04.2026 um 09:40 dieselbe Mail an Hleb erst auf Englisch und 17 Sekunden
   später auf Deutsch geschickt?** — Beide mit demselben Anhang, beide fehlerfrei. Ich habe sie als
   KI-assistiert eingestuft und **nicht** als Stilquelle verwendet. Zwei mögliche Lesarten: Du
   lässt Dir längere Fremdsprachen-Mails erzeugen und schickst sicherheitshalber beide Fassungen —
   oder Du hast Dich in letzter Sekunde umentschieden. *Warum: wenn Du regelmässig so arbeitest,
   muss der Zwilling bei Deinem englischen Register **strenger** filtern als bisher, sonst lernt er
   Maschinenenglisch statt Deines.* → Echo-Schutz, `wissen/twin/CLAUDE.md`

5. **Wie viel Druck darf eine Mail an einen Dienstleister machen, den Du bereits bezahlt hast?** —
   Am 08.04. fragst Du Hleb von Dir aus nach den Bankdaten, am 15.04. steht «so please confirm you
   working on it now» — Imperativ, aber ohne Frist, mit einem Zugeständnis am Schluss («if possible
   sooner … i would be happy»). Ist das Deine Obergrenze gegenüber einem Freelancer, oder gibt es
   eine nächste Stufe, die im Korpus nur noch nicht vorkommt? *Warum: der Zwilling verpackt hier
   reflexhaft in «Darf ich Dich bitten» und klingt damit devot gegenüber jemandem, der liefern
   muss.* → [[stimme]] Bitte-Skala, [[haltung]]

## Offene Fragen 260808 (Batch 90, Fenster `rj@` 20.04.–01.05.2026)

1. **Schreibst Du in der KISPI-Koordination bewusst längere Sätze als sonst?** — Die zwölf
   Eigentexte dieses Fensters messen ø **16.5 Wörter** pro Satz; das bisher gemessene Korpusband
   liegt bei **11.9–14.3 W**. Ich habe den Ausreisser als Widerspruch stehen lassen statt ihn
   wegzumitteln. Zwei Lesarten: entweder verlängert die Mehrempfänger-Fachkoordination Deine
   Sätze systematisch (viele Nebenbedingungen in einem Zug: «Vielleicht wäre es daher gut, dass
   Sie entgegen Ihrem Vorschlag … bereits ein erster konzeptioneller Vorschlag mitbringen der
   wiederum als Plan auf Papier … mitgegeben werden kann»), oder das Fenster ist schlicht zu
   klein. *Warum: der Zwilling kürzt heute auf die Korpusnorm und würde Dir genau die
   Bedingungsketten wegschneiden, die in der Fachkoordination die Arbeit machen.*
   → [[stimme]], [[arbeitsweise]]

2. **Die Küchenbauer-Kaltakquise vom 17.04.2026 — hast Du den Mittelteil mit einem KI-Werkzeug
   erstellt?** — Der Absatz «Rechtlich handelt es sich nicht um eine Gastroküche …» trägt vier
   Signale gegen Deine Hand (en-Strich 1/162 W gegen 0/910 W im Folgefenster, null Tippfehler,
   fremdes CSS mit eigener Hintergrundfarbe, und der doppelt geschriebene Rückruf-Schlusssatz als
   sichtbare Naht). Ich habe den daraus destillierten Fachsignatur-Marker
   «Rechtlich-vs-funktional-Trennung» deshalb auf `unsicher` gesetzt, aber **nicht gelöscht**.
   *Warum: das Muster ist inhaltlich gut und wäre ein Verlust — aber wenn es von einem Modell
   stammt, lernt der Zwilling sich selbst. Eine Zeile von Dir genügt: Deins oder nicht.*
   → [[fachsignatur]], Echo-Schutz `wissen/twin/CLAUDE.md`

3. **Darf der Zwilling die private Zweitadresse eines Projektkontakts ins Cc nehmen?** — Am
   20.04. ging die Terminanfrage an die Dienstadresse der Betreiber-Kontaktperson **mit ihrer
   privaten `@gmx.ch` im Cc**, nachdem drei Diensttelefonnummern veraltet waren. Sachlich
   nachvollziehbar, aber es ist ein Datenschutz- und Höflichkeitsentscheid, den ich nicht
   verallgemeinern will. *Warum: der Zwilling hat Zugriff auf Deine Kontakthistorie und würde
   die Regel sonst blind auf jeden Kontakt anwenden, bei dem er zwei Adressen kennt.*
   → [[beziehungsregister]]

## Offene Fragen 260808b (Fidelity-Review, Golds `rj@` 08.05.2026)

1. **Soll der Zwilling «15%» ohne Leerschlag schreiben, wenn Prozentzahlen in einer Liste
   stehen?** — Gold C ist der **sechste** unabhängige Beleg dafür, dass Dir der Leerschlag in
   Zahlenlisten wegfällt («Ca. 15% Leistungskürzung / Ca. 10% Abgebot / Ca. 15% Eigenleistung»);
   die Vorläufer stehen in Batch 05, 06, 12, 20 und 66. Das Wiki hält seit Batch 05 fest, der
   Zwilling schreibe trotzdem die Idealform «15 %» und dokumentiere die Abweichung nur — der
   kompilierte Block kennt darum ausschliesslich «‹%› mit Leerschlag». *Warum: bei sechs
   Gegenbelegen ist die Listenausnahme inzwischen besser belegt als die Grundregel, und in einer
   Kostenzeile ist der Leerschlag der einzige sichtbare Unterschied zwischen Deiner und der
   Zwillingsfassung. Ein Wort genügt: Idealform beibehalten oder Deine Praxis übernehmen.*
   → [[stimme]]

2. **Wann setzt Du «_ », wann «- », wann «–» als Aufzählungszeichen?** — Beide Golds mit Liste
   tragen «- »: die Beilagenliste der formellen Sie-Submission und die Sparposten-Liste der
   Du-lastigen Teammail. Das Wiki ordnet bisher «_ » dem Du und «–» der formellen Sie-Mail zu;
   «- » ist belegt, aber ohne Zuordnung. Meine Arbeitshypothese aus diesen zwei Belegen: «- »
   trägt die **Aufzählung von Posten und Gegenständen** (Beilagen, Sparpositionen, Lieferumfang),
   «_ » das Themengerüst, «–» die Alternativfrage. *Warum: zwei Belege sind zu wenig, und der
   Zwilling setzt derzeit im Zweifel «_ » — in einer Beilagenliste sieht das nach Dir aus, ist
   es aber offenbar nicht.* → [[stimme]], [[arbeitsweise]]

3. **Schreibst Du den Betreff ausgehender Submissionen bewusst umlautfrei?** — Beide
   Submissions-Mails vom 08.05. tragen «Submission **Kuecheneinrichtung** … KiSpi **Zuerich**»
   im Betreff, während der Body durchgehend «Kücheneinrichtung» und «Zürich» schreibt. Zwei
   Lesarten: entweder behandelst Du den Betreff wie ein Aktenzeichen (dann gilt die
   ASCII-Konvention der Dateinamen auch dort), oder der Betreff ist schlicht aus dem
   Dateinamen der Beilage kopiert. *Warum: im ersten Fall ist es eine Regel, die der Zwilling
   bei jeder Submission anwenden muss; im zweiten wäre es ein Kopier-Artefakt, das er nicht
   nachahmen darf.* → [[stimme]]

4. **Den Angriff auf Deine Planungskosten hast Du in der Antwort weggelassen — Absicht?** — Der
   Bauherr schrieb am 06.05.: «Zudem sehen wir nicht ein, für Planungsarbeiten CHF 5’000 zu
   bezahlen.» Deine Mail vom 08.05. beantwortet das Budget, nennt Ziel und Prozent-Zerlegung und
   geht auf das Honorar **mit keinem Wort** ein — vor einem Verteiler, in dem auch der
   Unternehmer sitzt. Meine Lesart: den Honorarstreit trägt man nicht vor Publikum aus, er geht
   in den Zweierkanal. *Warum: der Zwilling beantwortet heute jeden Punkt einer eingehenden Mail
   und würde Dich genau dort verteidigen, wo Du bewusst schweigst.* → [[haltung]],
   [[beziehungsregister]]

5. **Beschreibst Du dasselbe Bauvorhaben je Submittent absichtlich verschieden?** — Am selben
   Vormittag ging an den einen Küchenbauer «wird die bestehende Kücheneinrichtung **erneuert und
   ergänzt**», an den anderen «wird eine **neue Gastroküche eingebaut**» — Frist-, Eingabe- und
   Beilagenblock dagegen wortgleich. Meine Lesart: der Projektsatz beschreibt nicht das
   Bauvorhaben, sondern **die Leistung, die dieser Adressat offerieren soll**. *Warum: wenn das
   Absicht ist, muss der Zwilling den Satz je Submittent neu zuschneiden; wenn nicht, muss er
   ihn im Gegenteil über alle Lose konstant halten — die Submissionsregeln verlangen
   Vergleichbarkeit.* → [[fachsignatur]], Skill `ausschreibung`

## 260813 (Batch 91) — Fenster 06.–10.05.2026

1. **Satzlänge: Gattung oder Drift?** Zwei aufeinanderfolgende Sweeps über das KISPI-Projekt liegen
   mit ø 16.5 W (Batch 90) und ø **17.6 W** (Batch 91) deutlich über dem Korpusband 11.9–14.3. Ist
   das die Gattung (Koordinationsmails mit Bedingungs- und Terminketten) oder eine reale Veränderung
   seit Frühjahr 2026? *Warum: der kompilierte DNA-Block gibt dem Zwilling ein Satzlängen-Zielband
   mit; liegt eine ganze Projektgattung systematisch darüber, ist das Band zu eng formuliert. Zu
   klären an einem Fenster **ausserhalb** des KISPI-Projekts, nicht durch weitere KISPI-Batches.*

2. **Zwei Hände in einer Honorarmail — welcher Teil ist die Vorlage?** Die Honorarofferte vom
   08.05.2026 trägt einen KI-assistierten Hauptteil (Em-Strich «Kategorie V — Spital im Bestand»,
   fehlerfreie Phasenstaffelung 41/51/52/53) und einen handgetippten Schlussabsatz (Rahmenvertrag,
   dichte Fehler: «Gerne könne wir auch ein Rahmenvertrag», «was Ihr bereit wäret zu Bezahlen»).
   Entsteht die Mail so, dass Raphael den Fachteil generieren lässt und das Verhandlungsangebot
   selbst anfügt — oder umgekehrt? *Warum: davon hängt ab, welchen Teil einer Honorarofferte der
   Zwilling überhaupt erzeugen soll und wo er Raphael die Feder lassen muss. Die Fehlerdichte je
   Absatz zu vergleichen (statt das Dokument als Ganzes zu beurteilen) ist die Methodik aus der
   vierten Echo-Falle; sie greift hier erstmals innerhalb **einer Mail** und mit Claude statt
   Fachplaner als zweiter Hand.*

3. **Wird die Rückwärts-Terminkette wiederverwendet?** Die Kalenderwochen-Kette gegen die gefühlte
   Zeitreserve (06.05.2026, → [[denken]]) ist bislang ein Einzelbeleg. Ist das ein stehendes Mittel
   bei säumigen Fachplanern oder die Reaktion auf diesen einen Fall? *Warum: als stehendes Mittel
   gehörte es in den DNA-Kern, als Einzelfall nicht.*

## 260813 (Batch 92) — Fenster 20.–27.05.2026

**Zuerst: Frage 260813 #1 (Satzlänge) ist weitgehend BEANTWORTET — und die Antwort lautet nicht
«Gattung».** Die dort gestellte Vermutung war, die Koordinationsmails des KISPI-Projekts hätten
systematisch längere Sätze und das DNA-Zielband (11.9–14.3 W) sei zu eng. Batch 92 misst im
**selben Projekt und im unmittelbar anschliessenden Fenster**:

| Textmenge | Wörter | Satzlänge ø |
|---|---|---|
| 6 zweifelsfrei handgetippte Eigentexte (Batch 92) | 277 | **13.2 W** |
| 1 Verdachtstext desselben Fensters (27.05. 08:25, s.u.) | 71 | **17.8 W** |
| Batch 90 / Batch 91 (gemischte Auswahl) | 850 / 721 | 16.5 / 17.6 W |

Die 13.2 W liegen **im** Band, bei gleichem Projekt, gleicher Gattung (Anbieteranfrage,
Nachhaken, Liefermail, Zusage mit Vorbehalten) und gleichem Empfängerkreis. Damit ist der
Projekt-/Gattungsverdacht widerlegt: **die Satzlänge hängt an der Hand, nicht am Projekt.** Die
Ausreisser in Batch 90/91 sind mit hoher Wahrscheinlichkeit **nicht erkannter KI-assistierter
Rest** in der jeweiligen Auswahl. Das Zielband bleibt, wie es ist.

**Offen bleibt nur der Kehrschluss, und der ist unbequem:** wenn ø > 16 W ein Echo-Indikator ist,
müssten die Batches 90 und 91 nachgeprüft werden — beide entstanden **vor** der Einführung des
mechanischen `Anthropic Sans`-Greps (Fidelity 260813) und konnten ihn also nicht anwenden.

1. **Ist die Satzlänge ein brauchbarer Echo-Vorfilter — und sind Batch 90/91 nachzuprüfen?**
   *Warum: ein billiger, mechanischer Vorfilter wäre viel wert, weil er auch dort greift, wo kein
   HTML vorliegt (Apple Mail / osascript). Zu prüfen an einem Fenster, für das beide Signale
   verfügbar sind: erst die Sätze zählen, dann greppen, dann vergleichen. Wenn die Ordnung
   stimmt, ist der Vorfilter belegt; wenn nicht, ist er verworfen — nach derselben Disziplin wie
   das verworfene «du klein»-Signal (07.08.2026).*

2. **Verdachtsfall ohne harten Beweis: die Sitzungs-Mail vom 27.05.2026 08:25 an die
   Bereichsleiterin.** Sie trägt **kein** `Anthropic Sans`, **kein** `rgb(253,253,252)`, aber
   dasselbe Absatz-Style-Skelett wie die belegten Claude-Absätze
   (`text-indent:0px;text-transform:none` ohne `MsoNormal`), null Tippfehler auf 71 W, ø 17.8 W —
   und mit «alle **Teilnehmenden**» eine Partizipialform, die im Korpus sonst nicht vorkommt.
   **Nicht als Gold verbucht, nicht als Echo verurteilt.** *Warum: das Style-Skelett allein ist
   genau die Art Einzelsignal, das nach dem Guillemet-Fall (03.08.) und dem «du klein»-Fall
   (07.08.) erst gegen die eigene Hand gegengeprüft werden muss. Konkret zu klären: überlebt das
   Skelett ein Copy-Paste, bei dem die Hintergrundfarbe verlorengeht (z.B. «als Text einfügen»)?
   Wenn ja, ist es ein viertes hartes Muster für die Grep-Tabelle in [[CLAUDE]].*

3. **Redigiert Raphael Claude-Entwürfe regelmässig inline mit «`- `»?** Batch 92 belegt es
   dreifach in **einer** Mail (siebte Echo-Falle, [[CLAUDE]]). *Warum: wenn das seine
   Standard-Arbeitsweise am Zwillings-Output ist, ist jede solche Mail eine
   **Korrektur-Delta-Goldmine** — und der Loop müsste gezielt nach «`- `» hinter Satzenden in
   Mails mit Claude-CSS suchen, statt sie als Echo pauschal auszuschliessen. Das wäre die
   ergiebigste bisher gefundene Delta-Quelle, weil sie Claudes Fassung und Raphaels Korrektur
   **nebeneinander** zeigt.*

4. **Hängt «Herzliche Grüsse» am Gewicht der Mail oder am Gruss des Gegenübers?** [[stimme]] 328
   führt ihn als Gruss der gehaltvollen, warm-liefernden Investor-Du-Mail. Batch 92 zeigt ihn an
   einem **Dreizeiler** an den Betreiber-Du — und derselbe Empfänger schreibt sechs Tage später
   selbst «Lieber Raphael … Herzliche Grüsse». *Warum: die Spiegelungs-These (Batch 19/45) und die
   Gewichts-These sagen im selben Fall Verschiedenes voraus. Der Zwilling braucht eine Regel, die
   entscheidet. Zu klären an Mails an denselben Kontakt, bei denen der Gegengruss bekannt ist.*

## 260813 Lauf 2 (Fidelity) — Fenster 28.05.–05.06.2026

1. **Hängt der Service-Satz am Adressatenkreis statt an der Gattung?** [[stimme]] bindet ihn an die
   Gattung (erbitten → Kanal offen; liefern/melden → Schluss nach dem letzten Sachsatz). Der
   Brandschutz-Thread widerlegt das zweimal in zwei Tagen: die **Liefermail** an Ziegel allein
   (28.05. 10:03) trägt «Bei Fragen oder Unklarheiten stehe ich Ihnen jederzeit gerne zur
   Verfügung», die **Bittmail** an vier Empfänger (29.05. 10:01) trägt keinen. *Warum: die These
   ist, dass die Sie-Einzelmail den Kanal offenhält und die gestapelte Sammelmail nicht, weil ein
   Service-Satz an ein Verteilerfeld niemanden adressiert. Trifft sie zu, ersetzt die Achse
   «Einzeladressat ↔ Verteiler» die Gattungsregel oder überlagert sie. Zu prüfen an Paaren
   desselben Threads mit wechselnder Empfängerzahl — die gibt es im KISPI-Bestand reichlich.*

2. **Ist `color:rgb(10,10,10)` ein viertes hartes Echo-Muster?** Es begleitet im Beleg vom
   29.05.2026 10:01 das `rgb(253,253,252)` in denselben zwei `<li>` und kommt in der übrigen Mail
   nicht vor (dort durchgehend `rgb(0,0,0)`). *Warum: ein zweites mechanisches Muster verdoppelt die
   Trefferfläche des Vorfilters. Es hat aber bisher einen Beleg und muss nach dem Guillemet-Fall
   (03.08.) und dem «du klein»-Fall (07.08.) erst gegen die eigene Hand gegengeprüft werden. Zu
   klären an einem Fenster mit bekannten Echo- und bekannten Gold-Mails: kommt `rgb(10,10,10)` je
   ohne eines der drei bestätigten Muster vor, und kommt es je in einer zweifelsfrei handgetippten
   Mail vor?*

3. **Wie weit reicht die Breadcrumb-Verweisform?** Die Sitzungsmail legt den SharePoint-Pfad Zeile
   für Zeile offen (Bibliothek → Ordner → Unterordner → Zielordner) und setzt den Link erst darunter
   unter «Hier der Link:». *Warum: der Zwilling kennt bisher nur den nackten Link. Zu klären ist, ob
   die Form am Empfängerkreis hängt (mehrere Beteiligte, die den Ort künftig selbst wiederfinden
   sollen) oder an der Ablagetiefe — und ob sie auch im Du-Einzelkontakt und gegenüber Behörden
   auftritt. Davon hängt ab, ob sie in den DNA-Kern gehört oder eine Gattungsform der
   Projektkoordination bleibt.*

4. **Bietet Raphael unaufgefordert Gratisleistung an — und wann?** Auf eine reine Statusmeldung des
   Betriebsleiters (29.05. 11:41) antwortet er mit «Solltest Du eine Grobkostenschätzung benötigen
   lass es mich wissen. Das würde ich für Euch kostenlos machen.», ohne dass eine Kostenfrage
   gestellt war. *Warum: [[haltung]] führt «ehrlicher Rat auch gegen das eigene Honorar» als erste
   Do-Regel, aber der Zwilling wendet sie nur reaktiv an, wenn Kosten bereits im Raum stehen. Das
   Gold zeigt sie **proaktiv**. Zu klären: hängt das Verschenken am bestehenden Mandat (Kunde
   ohnehin gebunden), an der Beziehungswärme, oder an der Aussicht auf ein Folgemandat? Die drei
   Lesarten führen zu drei verschiedenen Zwillings-Regeln, und die falsche macht ihn anbiedernd.*

5. **Wie wird der Fidelity-Selbsttest wirklich blind?** Die Suchtreffer liefern je eine `summary`
   von rund 40 Wörtern, die Anrede und Eröffnungssatz enthält — bei einer Kurzmail die halbe Mail.
   In diesem Lauf war Gold B so weit kontaminiert, dass nur der Teil nach dem Vorschau-Schnitt
   gescort werden konnte. *Warum: das betrifft nicht diesen Lauf, sondern die ganze bisherige
   Messreihe — alle Anreden- und Eröffnungs-Scores sind nach oben verzerrt, und niemand hat es
   bisher vermerkt. Vorschlag zur Prüfung im nächsten Lauf: Kandidaten allein über `subject` +
   `toRecipients` + `hasAttachments` + Thread-Position wählen, Twin-Fassung fixieren, erst danach
   Vorschau und Volltext öffnen. Wenn der Gesamtscore dabei deutlich fällt, war die Messreihe
   systematisch zu optimistisch und die Vorläufe sind entsprechend zu lesen.*

## Batch 93 (14.08.2026) — Fenster `rj@` 27.07.–01.08.2026

1. **Ist `background-color:rgb(252,252,251)` ein zweites mechanisches Echo-Signal?** Ein Beleg
   (30.07.2026 15:48, durchgehend über alle sechs Fliesstext-Absätze, nicht im Signaturblock).
   Der Wert liegt je Kanal um 1 neben dem etablierten `rgb(253,253,252)`. **Gegenprobe nötig:**
   in einem Fenster mit unstrittig handgetippten Apple-Mail-Texten greppen, ob der Wert dort
   ebenfalls vorkommt. Kommt er vor, ist er Apple-Mail-Rendering und wertlos; kommt er nicht vor,
   gehört er in die Muster-Tabelle in `CLAUDE.md`. Bis dahin **kein Ausschlusskriterium**.
2. **Der En-/Em-Strich-Test hat in diesem Fenster NICHT getrennt.** 1 Vorkommen in 679 W eigener
   Hand (ein «—» im Projekttitel «Akutspital — Innerer Umbau …», aus der amtlichen
   Bauentscheid-Bezeichnung übernommen) gegen **0** in den beiden verworfenen Texten — also
   umgekehrt zur bisherigen Reihe. Erklärung wahrscheinlich: Raphael übernimmt Amts- und
   Betreffzeilen wörtlich, und die zwei Verdachtstexte enthielten keine Bandbreiten/Aufzählungen,
   wo Claude den Strich setzt. **Zu prüfen:** gilt der Test nur für Bandbreiten, Bulletlisten und
   Einschübe, nicht für übernommene Titel? Wenn ja, in `CLAUDE.md` entsprechend eingrenzen.
3. **Messfehler in der Satzlängen-Reihe, betrifft alle bisherigen Batches mit Listen.** Beim
   Strippen der Bullet-Zeilen verschmelzen Listen-Anläufe mit dem Folgesatz. Gemessen: 17.0 W mit,
   **15.6 W ohne** die vier Listen-Anläufe desselben Korpus (+1.4 W Verzerrung). Die in Batch 92
   geschlossene Frage nach der Satzlänge (Korpusband 11.9–14.3 gegen Ausreisser 16.5/17.6) ist
   damit **nicht sauber geschlossen**: die Ausreisser könnten Listen-Artefakte sein. **Zu tun:**
   `stilmetrik.py` um einen Listen-Anlauf-Filter ergänzen (Zeile endet auf «:») oder die Reihe mit
   dem korrigierten Verfahren nachmessen, bevor weitere Schlüsse auf «die Hand» gezogen werden.
4. **Wie viele Loop-Mails gehen über den blinden Kanal?** Die neunte Falle (`CLAUDE.md`) zeigt,
   dass per `osascript` gesendete Claude-Texte keines der drei Muster tragen. Im Fenster waren es
   2 von 11 gelesenen Mails. **Zu klären:** gibt es ein anderes mechanisches Kennzeichen der
   Apple-Mail-Drafts des Hub (z.B. das fehlende `font-family` in den `<p style="margin:0.0px">`-
   Absätzen bei gleichzeitigem `font:12.0px Helvetica` in den Spacer-Zeilen)? Das wäre ein
   Struktur-, kein Inhaltsmerkmal und damit ebenso hart wie der CSS-Grep.
5. **Der Service-Schluss steht in diesem Fenster dreimal — und in beiden Verdachtstexten in
   Variation** («Für die Unterstützung bedanke ich mich im Voraus», «Über eine kurze Sitzung …
   würde ich mich freuen»). Bestätigt Frage #1 aus Fidelity 260813 aus anderer Richtung: der
   Zwilling hat den Schluss gelernt und variiert ihn. **Zu klären:** an welcher Achse hängt die
   Gattungsregel wirklich — Adressatenkreis, Gattung oder schlicht Textlänge?

## Fidelity 260814b (14.08.2026) — Fenster `rj@` 01.–02.06.2026

1. **[Methodik · Echo-Verdacht in der eigenen Facette] Stammt die Service-Satz-Regel für
   Offerten-/Submissionsanfragen aus Claude-generierten Mails?** [[stimme]] führt seit
   260807/260808: «wer für sich selbst etwas erbittet, hält den Kanal offen (… **Offerten-/
   Submissionsanfrage**)». In diesem Fenster tragen den Service-Satz **genau die Mails, die am
   `Apple-Mail-URLShareWrapperClass` als eingesetzte Blöcke erkennbar sind** («Für Rückfragen
   stehe ich Ihnen gerne zur Verfügung», Feldmann 01.06., Rollläden 01.06.). Die unstrittig
   handgetippte Erstanfrage desselben Vorgangs (02.06. 07:51, durchgehend natives Outlook-Markup)
   hat **keinen** Service-Satz, sondern «Für Ihren Rückruf bin ich Ihnen dankbar.» *Warum das
   dringend ist: hier steht der Verdacht im Raum, dass eine Facetten-Regel aus dem eigenen Echo
   destilliert wurde und seither vom Gehirn reproduziert wird — der Fehlertyp, gegen den die
   ganze Gewichtung gebaut ist. Zu prüfen: alle Belegstellen der Service-Satz-Klausel im
   Teilsatz «Offerten-/Submissionsanfrage» auf ihr Absatz-Markup zurückverfolgen. Trägt die
   Mehrzahl einen Wrapper oder eines der drei CSS-Muster, ist die Klausel zu streichen und die
   Gattung neu zu bestimmen. **Bis zur Klärung nicht ins Gehirn nachschärfen.***

2. **[Methodik] Setzt Raphael je eigenen Text als Block in Apple Mail ein?** Der neue
   Lokalisator `Apple-Mail-URLShareWrapperClass` (→ `CLAUDE.md`) markiert *eingesetzte* Absätze,
   nicht *Claude*. *Warum: davon hängt ab, ob der Marker als harter Vorfilter taugt oder
   dauerhaft eine Fehlerdichte-Gegenprobe braucht. Billig zu klären: ein Fenster aus der
   Vor-Claude-Zeit (vor 2026) nach dem Muster greppen. Findet es sich dort in Mails, die
   zweifelsfrei Raphaels Hand tragen, ist der Marker nur ein Einsetz-Detektor; findet es sich
   nicht, ist er faktisch ein Hub-Kanal-Detektor.*

3. **[Beziehungsregister] Senkt das Sammelpostfach das Register auch dann, wenn die persönliche
   Adresse bekannt ist?** Am 02.06.2026 07:51 geht die Anfrage an `info@` und trägt «Guten
   <Vorname> <Nachname>» + Sie, obwohl `rules/anrede-kontakte.md` den Inhaber als Du-Kontakt
   führt und die persönliche Adresse aktenkundig ist. *Warum: die neue Kanal-Regel steht
   quer zur Kontaktliste, und der Zwilling muss wissen, welche gewinnt. Zu klären an einem Paar
   desselben Empfängers (`info@` gegen persönliche Adresse) im selben Vorgang: springt das
   Register mit dem Adressfeld, oder war die Sie-Form hier nur die Vorsicht der Erstanfrage?*

4. **[Haltung] Wie weit reicht der Entlastungssatz?** Belegt ist er gegenüber dem Investor
   («Sollte es Dir nicht möglich sein ist es nicht so schlimm, die Preisangaben … bleiben
   stabil»). *Warum: die Regel «wer bittet, entlastet» ist mächtig und könnte den Zwilling
   verweichlichen, wenn er sie überall anwendet. Zu klären: gilt sie auch gegenüber
   Unternehmern, Fachplanern und Behörden — oder nur gegenüber dem Partner, von dem Raphael
   nichts erzwingen kann? Die Gegenbelege existieren wahrscheinlich schon im Korpus
   («Das Wunschkonzert ist vorbei», 260808) und müssen nur gegenübergestellt werden.*

5. **[Stimme] Hängt die Kurzsignatur an der Dringlichkeit oder an der Kürze?** 01.06.2026 17:42:
   FG + nur «Raphael Jans» in einer fünfzeiligen, dringlichen Behörden-Initiativmail. Die
   Korrektur 260813 stellte fest, dass der volle Block auch den Dreizeiler trägt. *Warum: die
   beiden Belege widersprechen sich nur scheinbar, aber der Zwilling braucht das trennende
   Merkmal. Kandidaten: (a) Dringlichkeit, (b) Reintext statt HTML, (c) mobiler Versand,
   (d) Amtskontakt. Billig zu prüfen: alle Reintext-Mails des Halbjahrs greppen und ihre
   Signaturform auszählen.*

6. **[Methodik — beantwortet, zur Kenntnis] Der blinde Messversuch senkt den Score, wie
   vermutet.** Frage 260813 #5 lautete, ob die Messreihe systematisch zu optimistisch sei, weil
   die `summary` Anrede und Eröffnungssatz vorwegnimmt. In diesem Lauf wurden die
   Twin-Fassungen vor dem Volltext fixiert und die vorschau-kontaminierten Teile **aus der
   Wertung genommen**; der Gesamtscore fällt von 41 auf **36**. *Konsequenz: die Vorläufe
   42/40/41/43/48/46 sind um geschätzt 4–6 Punkte nach oben verzerrt und dürfen nicht als
   Trendlinie gegen den heutigen Wert gelesen werden. Der Trend beginnt neu bei 36. Die
   `summary` bleibt unvermeidbar — sie kommt mit jedem Suchtreffer —, deshalb ist die einzige
   wirksame Massnahme, kontaminierte Passagen konsequent von der Wertung auszuschliessen und
   das im Report auszuweisen.*

## Batch 94 (15.08.2026) — Fenster `rj@` 03.–07.08.2026

**Erledigt aus 260814:** #4 (mechanisches Kennzeichen des blinden Kanals) ist **beantwortet** —
nicht über ein Strukturmerkmal, sondern über das **Sendejournal des Hub** (→ `CLAUDE.md`, zehnte
Falle). #3 (Listen-Anlauf-Messfehler) ist in diesem Lauf **umgangen**, indem der Messkorpus ohne
Bullet-Zeilen gebildet wurde (752 W, ø 13.4 W); der Filter in `stilmetrik.py` fehlt weiterhin.
**Weiterhin offen:** 260814 #1 (Gegenprobe nicht durchführbar, siehe unten), #2, #5 sowie
260814b #1–#5.

1. **[Methodik · hoher Ertrag, sofort umsetzbar] Das Sendejournal rückwirkend gegen die
   Gold-Bestände laufen lassen.** Die zehnte Falle zeigt, dass die Selbstmails des Hub Uhrzeit,
   Empfänger und Inhalt der vom Zwilling versendeten Mails protokollieren. *Warum das dringend
   ist: die Batches 84–93 haben diese Selbstmails durchwegs als «Rauschen gestreift» und
   ungelesen verworfen — genau die Quelle, die jeden Verdachtsfall dieser Fenster hätte
   entscheiden können. Zu tun: für die Fenster ab ca. April 2026 (Beginn der Hub-Versandtätigkeit)
   die Selbstmails gezielt nach Formulierungen wie «ist raus», «versendet», «Entwurf liegt» +
   Uhrzeit durchsuchen und gegen die als Gold verbuchten Mails derselben Tage stellen. Jeder
   Treffer ist ein Gold-Eintrag, der zurückzunehmen ist. Das ist die billigste und härteste
   Qualitätssicherung, die dem Korpus zur Verfügung steht.*
2. **[Methodik] Trennt die ASCII-Transliteration im Betreff die Hub-Mails zuverlässig?** Ein
   bewiesener Beleg («Gruendung … bestaetigt») plus vier Selbstmails desselben Tages; drei weitere
   Verdachtstexte desselben Fensters tragen dagegen korrekte Umlaute im Betreff. *Warum: falls das
   Muster an einer bestimmten Task hängt (Betreff aus einem Script/Dateinamen gebildet, Rule
   `dateinamen-konvention`) statt an Claude, ist es ein Task-Detektor und gehört nicht in die
   Muster-Tabelle. Billig zu prüfen: alle Sent Items eines Monats nach `ue|ae|oe` im Betreff bei
   gleichzeitig deutschem Fliesstext greppen und die Treffer den Loops zuordnen.*
3. **[Methodik] `rgb(252,252,251)` — die Gegenprobe steht weiterhin aus, aber die Frage hat sich
   verschoben.** Zweiter Beleg gefunden, diesmal in einer **Exchange**-Mail; damit ist das
   Apple-Mail-Rendering als Ursache ausgeschlossen. *Zu klären ist jetzt nicht mehr «ist es ein
   Rendering-Artefakt», sondern: gibt es einen zweifelsfrei handgetippten Text — in irgendeinem
   Kanal —, der den Wert trägt? Findet sich keiner in einem Fenster von 50+ Mails, gehört er als
   drittes hartes Muster in die Tabelle in `CLAUDE.md`.*
4. **[Beziehungsregister · Widerspruch, nicht geglättet] Gilt die Sammelanrede-Regel «höflichste
   Stufe für alle» überhaupt noch?** Belegt ist jetzt das Gegenteil: «Werter Herr Kübler, /
   geschätzter Cekar und Jens.» — Sie und Du nebeneinander in EINER Anrede, an dasselbe Büro.
   *Warum: `rules/anrede-kontakte.md` schreibt «Bei mehreren Empfängern im Cc/An: höflichste
   Anrede wählen, sofern nicht alle per Du sind». Der Beleg zeigt, dass Raphael stattdessen jede
   Person einzeln adressiert und die Stufen nebeneinander stehen lässt. Zu klären: ist die
   gestaffelte Anrede die Regel und die Nivellierung die Ausnahme (z.B. bei grossen Verteilern
   oder wenn die Namen nicht alle bekannt sind)? Falls ja, ist die Rule zu präzisieren — sie
   steuert jede ausgehende Sammelmail.*
5. **[Stimme] Woran hängt der Wechsel Vollname → Kosename?** Innerhalb desselben Tages und
   derselben Du-Stufe: «Geschätzter Michael» (06:24, Sachforderung durchstellen) → «Geschätzter
   Michi» (09:31, Akontozahlung) → «Hoi Michi» (14:23, Möblierungsfrage). *Kandidaten: (a) das
   Gewicht des Anliegens (analog der Klausel in `rules/anrede-kontakte.md`), (b) ob Dritte
   mitlesen — die 06:24-Mail geht an mehrere Fachplaner, die späteren nur an ihn. Billig zu
   prüfen: alle Mails an denselben Kontakt nach Empfängerzahl gruppieren und die Anredeform
   auszählen. Trägt (b), ist es kein Wärme-, sondern ein Öffentlichkeitsmarker — und der Zwilling
   muss den Verteiler prüfen, bevor er die Anrede wählt.*
6. **[Fachsignatur] Ist die SWKI-Richtlinienreihe im Korpus sonst belegt?** VA-102-01 ist die
   erste SWKI-Fundstelle überhaupt. *Warum: die Normen-KB (`wissen/normen`) führt SIA/VKF/DIN/VSS,
   die SWKI bisher nicht. Wenn der Gesundheitsbau eine eigene Normenfamilie für die Lüftung hat,
   gehört sie ins Normen-Register — und die Fundstelle ist nach Rule `normen-referenz` vor der
   nächsten Verwendung am Original zu verifizieren, nicht aus dieser Mail zu zitieren.*

## Offen — Runde 260815b (twin-fragesteller, aus Fidelity-Review 2026-08-15)

Quelle: Drift-Report `outputs/2026-08-15_fidelity.md`. Besonderheit dieses Laufs: von fünf
substanziellen Mails des Fensters waren **drei Hub-Erzeugnisse**; gewertet wurden zwei Golds.
Fidelity 36, zweiter blind gemessener Wert, Basislinie hält. Je in 1–2 Sätzen beantwortbar.

**Vorrangige Prüfaufgabe an den Harness (keine Frage an Raphael), 260815b #1:** Die
`bodyPreview` des Graph-API flacht `<ol>`-Listen auf «1. 2. 3.» ab und verliert das
`list-style-type`. Der Eren-Gold vom 04.06.2026 rendert tatsächlich «A) B) C) D)». **Jeder
Marker im Wiki, der eine "nummerierte Liste 1./2./3." behauptet und aus einer Vorschau statt aus
`body.content` destilliert wurde, ist unbelegt.** Die betroffenen Stellen sind an den
Batch-Abschnitten erkennbar, die keine Markup-Angabe führen. Vor der nächsten Aussage über
Listenform nachprüfen. Gehört zusammen mit der Werkzeug-Falle aus `auto-verbesserungen` 260730b
(nicht-UTF-8-Log, den `grep` still leer zurückgab): ein Werkzeug antwortet plausibel auf eine
Frage, die es nicht beantworten kann.

2. **[Stimme] Der Service-Satz im Du: mit «Dir» und mit Punkt?** Die Vergabemail an Albin vom
   03.06.2026 schliesst «Bei Fragen oder Unklarheiten stehe ich **Dir** jederzeit gerne zur
   Verfügung**.**» — das Wiki hält fest, im Sammel-/Du-Register stehe der Satz ohne Objekt und
   ohne Schlusspunkt. War die Klausel je fürs **Du** gemeint, oder nur fürs unpersönliche
   Sammelpostfach? *Facette: Stimme. Warum: der Satz steht unter fast jeder Auftrags- und
   Offertmail; die falsche Variante fällt beim Empfänger nicht auf, aber sie klingt in jedem
   einzelnen Erzeugnis eine Spur fremd.*

3. **[Stimme] Was entscheidet «Lieber Gruss» gegen «Freundliche Grüsse»?** Die Regel im Wiki sagt:
   Kurzgruss nur im Reply ohne eigenen Sachauftrag. Die Vergabemail ist eine Auftragsmail mit sehr
   eigenem Sachauftrag (fünf Blöcke, neun Anhänge) und trägt trotzdem «Lieber Gruss / Raphael».
   Entscheidet in Wahrheit die **Vertrautheit zum Empfänger** und nicht die Gattung — oder
   schreibst Du den Gruss gar nicht bewusst, sondern so, wie er beim Tippen kommt?
   *Facette: Stimme + Beziehungsregister. Warum: der Zwilling setzt heute mechanisch «Freundliche
   Grüsse» und liegt damit bei jedem vertrauten Empfänger daneben.*

4. **[Arbeitsweise] Wann VERSALIEN als Blocktitel?** Die Vergabemail gliedert in fünf fette
   Versal-Titel (VERGABE / SUBMISSIONSDOSSIER / GRUNDFRAGESTELLUNG / KOORDINATION MIT FACHPLANER /
   WERKPLANUNG). Andere mehrteilige Mails tragen fette Titel in normaler Gross-/Kleinschreibung.
   Machst Du die Versalie an der **Wichtigkeit** fest, an der **Länge der Mail**, oder ist es der
   Vergabe-/Submissionskontext, in dem Du ohnehin in Los-Titeln denkst? *Facette: Arbeitsweise.
   Warum: der Zwilling schreibt heute gar keine Blocktitel und liefert dadurch bei jeder längeren
   Auftragsmail eine flache Textwand statt Deiner Gliederung.*

5. **[Beziehungsregister] Die nackte Amts-Mail — Absicht oder Versehen?** Am 04.06.2026 09:49 ging
   an das Amt für Baubewilligungen eine Mail, deren ganzer Inhalt der wiederholte Betreff
   «Bauentscheid KISPI» ist: keine Anrede, kein Gruss, keine Signatur. Drei Tage zuvor hattest Du
   der Kreisarchitektin geschrieben, es sei «jetzt wirklich dringend». War das ein bewusstes
   Anstupsen im laufenden Vorgang — oder ein zu früh abgeschickter Entwurf? *Facette:
   Beziehungsregister + Stimme. Warum: als Absicht wäre es ein Registerbefund (der Betreff trägt
   die Botschaft, die Mail wird gestrippt — bisher nur im wärmsten Peer-Du belegt, nie gegenüber
   einer Behörde). Bis zur Klärung nicht ins Wiki übernommen.*

6. **[alle sechs] Sollen Deine unveränderten Hub-Mails als Negativ-Kontrolle erfasst werden?**
   In diesem Fenster waren drei von fünf substanziellen Mails Hub-Erzeugnisse, die Du unverändert
   versendet hast. Für den Echo-Schutz sind sie wertlos, als **Kontrollgruppe** aber das
   Genaueste, was der Harness hat: sie zeigen, was der Zwilling schreibt, wenn ihn niemand
   korrigiert. Wenn Du eine davon nachträglich durchliest und sagst «hier hätte ich anders
   formuliert», entsteht daraus ein Korrektur-Delta (Silber) ohne dass Du selbst etwas schreiben
   musst. Wäre das ein gangbarer Weg — etwa eine Mail pro Woche? *Facette: alle sechs. Warum:
   das Gold wird ab Juni 2026 knapp, weil Du zunehmend den Hub schreiben lässt. Genau dieselbe
   Entwicklung macht die Kontrollgruppe gross. Ohne ein Delta-Signal misst der Review die Drift
   weiter, kann sie aber nicht mehr korrigieren.*


## Batch 95 (16.08.2026) — Fenster `rj@` 10.–16.08.2026

**Erledigt aus den Vorrunden:** **260814b #2** (Wrapper: setzt Raphael je selbst Text als Block
in Apple Mail ein?) ist **erstmals gegengeprüft** — zwei handgetippte Apple-Mail-Texte desselben
Fensters tragen den Wrapper **nicht** (→ `CLAUDE.md`, zwölfte Falle). Logisch ausgeschlossen ist
der Fall damit nicht, aber er hat zwei Gegenbelege statt keinen; der Marker bleibt Lokalisator.
**260815 #1** (rückwirkender Sendejournal-Abgleich) ist **methodisch erweitert, nicht erledigt**
— siehe #4 unten. **Weiterhin offen:** 260814 #2/#5, 260814b #1/#3–#5, 260815 #2/#4–#6,
260815b #1–#6.

1. **[Beziehungsregister · Entscheid Raphael] Die Sammelanrede-Klausel in
   `rules/anrede-kontakte.md` ist jetzt zweifach widerlegt — soll sie geändert werden?** Die Rule
   sagt «Bei mehreren Empfängern im Cc/An: höflichste Anrede wählen, sofern nicht alle per Du
   sind». Der Korpus zeigt zweimal das Gegenteil: «Werter Herr Kübler, / geschätzter Cekar und
   Jens» (Batch 94, Du und Sie nebeneinander) und der Baufreigabe-Antrag vom 14.08.2026
   («Geschätzter Herr Zala Shyam (UGZ, II.1.c), / Sehr geehrter Herr Kurt Frauenfelder (SRZ,
   II.1.b), / Sehr geehrter Herr Linus Furrer (AfB, II.1.a)» — zwei Wärmestufen, 14 Empfänger,
   3 angeredet). *Warum das eskaliert werden muss: die Rule ist **immer aktiv** und wird laut
   eigener Konvention **vor** dem Wiki konsultiert — der Zwilling nivelliert also bei jeder
   Sammelmail, obwohl Raphael staffelt. Vorschlag zur Formulierung: «Jede Person wird einzeln
   angeredet, in ihrer eigenen Stufe; nivelliert wird nur bei grossen oder unbekannten
   Verteilern.» Rule-Änderungen an dieser Datei sind an Raphaels Freigabe gebunden
   (CHANGELOG 2026-07-25j), deshalb hier und nicht dort.*
2. **[Methodik] `rgb(252,252,251)` — die dritte Gegenprobe fällt gegen den Kandidaten aus.** Der
   Wert kommt in **keiner** der 16 gelesenen Mails dieses Fensters vor, auch **nicht in den
   beiden Hub-Erzeugnissen**. *Ein Muster, das in bewiesenem Zwillingstext fehlt, ist als
   Zwillings-Detektor untauglich. Er bleibt bei den zwei Belegen aus Batch 94 stehen und wird
   nicht in die Muster-Tabelle aufgenommen. Zu klären bleibt nur noch, ob er an einer bestimmten
   Erzeugungsart hängt (welcher Loop, welches Werkzeug) — das wäre ein Task-Detektor, kein
   Echo-Detektor, gleiche Familie wie 260815 #2.*
3. **[Fachsignatur · Verifikationspflicht] Vier Werte stehen nur in Zwillingstext und sind
   ungeprüft.** Aus der verworfenen Mail vom 13.08.2026 18:57: Wandtyp «**W340-00**, EI 30 und
   45 dB», ZPF-Tabuzonenplan «**S_TRA_0904**», Setztiefen «bis **35 mm** überall, nach Absprache
   bis **120 mm**». *Warum: sie sind fachlich plausibel und wurden an die Bauherrschaft
   hinausgeschickt, stammen aber nicht aus Raphaels Hand. Nach Rule `identifikatoren-verifizieren`
   ist eine Bauteilnummer ein Identifikator, der unverändert in Ausschreibung und Werkvertrag
   wandert. **Vor der nächsten Verwendung am Originaldokument prüfen**, nicht aus dieser Mail
   zitieren. Nicht ins Wiki übernommen.*
4. **[Methodik · höchster Ertrag, ersetzt die Formulierung von 260815 #1] Der rückwirkende
   Abgleich braucht ZWEI Quellen, nicht eine.** Batch 95 zeigt, dass das Sendejournal allein die
   Frage nicht schliesst: es meldet «Entwurf liegt bereit», nicht was danach geschah. Erst der
   Ordner **`Drafts`** entscheidet — ein protokollierter Entwurf, der dort fehlt und dessen
   Betreff am selben Tag in den Sent Items auftaucht, wurde versendet. *Zu tun für die Fenster ab
   ca. April 2026: (a) Selbstmails nach «Entwurf», «liegt», «versendet», «ist raus» + Uhrzeit
   durchsuchen; (b) die genannten Entwurfsbetreffs gegen den heutigen `Drafts`-Bestand stellen;
   (c) fehlende Entwürfe in den Sent Items suchen; (d) die Treffer auf Handsignatur-Slips prüfen.
   **Treffer ohne Slips sind zurückzunehmendes Gold, Treffer mit Slips sind neu gewonnenes
   Silber** — der Abgleich schafft also nicht nur Verluste, sondern erschliesst die bisher
   praktisch leere Kategorie `korrektur-delta`. Achtung: `Drafts` enthält aktuell 102 Einträge und
   wird nicht aufgeräumt, die Quelle ist also belastbar; sie altert aber, sobald Raphael den
   Ordner leert.*
5. **[alle sechs · Frage an Raphael, 2 Sätze] Was hast Du am Stevanovic-Entwurf geändert?** Der
   Hub hatte am 12.08.2026 16:37 einen Entwurf «KISPI PPTS: Auflagebereinigung» im Entwurfsordner
   liegen; am 13.08. 12:53 ging eine Mail dieses Betreffs an dieselben Empfänger hinaus — über
   Exchange und mit fünf Deiner typischen Slips, also überarbeitet oder neu getippt. *Warum das
   die wertvollste offene Frage ist: es ist der **erste im Korpus nachweisbare Fall** von Entwurf
   → Deine Überarbeitung → Versand. Wenn Du sagen kannst, was Du geändert hast (Ton, Struktur,
   Schärfe, Fristsetzung), entsteht daraus ein echtes Korrektur-Delta — das zweitstärkste
   Lernsignal, von dem der Harness bisher fast nichts hat. Selbst «ich habe ihn komplett neu
   getippt, weil er nicht passte» wäre eine wertvolle Antwort.*
6. **[Stimme · Frage an Raphael, 1 Satz] Die Mail vom 14.08.2026 09:07 bricht mitten in der
   Aufzählung bei «2.2 Grundlage» ab, ohne Gruss — Absicht oder zu früh abgeschickt?** *Warum:
   Batch 94 hat den abgebrochenen Satz als Drohgebärde belegt («… erwartet dass von nun an ….»).
   Wenn auch die abgebrochene Mail ein Mittel ist, ist das ein Registerbefund; wenn es ein
   Versehen war, darf der Zwilling es nicht nachahmen. Gleiche Frage wie 260815b #5 (die nackte
   Amts-Mail), und beide zusammen entscheiden, ob der Zwilling unfertige Texte je senden darf.
   Bis zur Klärung: nicht nachahmen.*

## 260816 — Fidelity-Review (Fenster 08.–14.06.2026, Golds AfB / Kaufberatung / Auflagebereinigung)

1. **[Beziehungsregister · Prüfaufgabe] Duzt das erste Telefonat immer?** Belegt ist ein Sprung
   über zwei Stufen an einem Tag: 08.06.2026 «Geschätzter Herr <Nachname>» + FG, am 09.06. nach
   dem Telefonat «Hoi <Vorname>,» + Kurzgruss. *Warum das zählt: das Register kannte bisher nur
   Achsen, die **formalisieren** (Cc, Gewicht des Anliegens). Hier bewegt ein Kanalwechsel in die
   Gegenrichtung, und zwar sofort und über zwei Stufen. Wenn das die Regel ist, braucht der
   Zwilling einen harten Auslöser statt eines Gefühls — und er darf nach einem Telefonat nicht
   im Sie stehen bleiben. Prüfweg: Erstkontakte im Korpus suchen, bei denen ein Teams-/
   Telefontermin zwischen zwei Mails liegt, und die Anrede davor/danach vergleichen.*

2. **[Meta/Methode · Prüfaufgabe, hoher Ertrag] Wie viel Gold liegt in den Zitatketten?** Die
   dreizehnte Falle zeigt, dass ein `body.content` mehrere Fälle trägt. *Warum vorrangig: die
   Materialbeschaffung ist seit Juni 2026 das Nadelöhr des Fidelity-Strangs (rund die Hälfte der
   substanziellen Mails sind Hub-Erzeugnisse). Die Zitatkette verdoppelt den Ertrag je Abfrage
   ohne zusätzliche Kosten und liefert zusätzlich Fälle, in denen Zwilling und Original
   **dieselbe** Aufgabe gelöst haben. Prüfweg: in einem bereits destillierten Batch die
   `x_Apple-Mail-URLShareWrapperClass`- und Geviertstrich-Treffer **innerhalb** der Zitatblöcke
   zählen und gegen die Zahl der dort gewerteten Texte halten.*

3. **[Stimme · Frage an Raphael, 1 Satz] Warum trägt die Vergabemail vom 03.06.2026 «Lieber
   Gruss», obwohl zwei Personen im Cc stehen?** *Warum: die heute korrigierte Regel («Kurzgruss
   nur im Du an EINE Person, sobald Cc/Bcc oder Sie dabei ist FG+Block») erklärt drei von vier
   Belegen sauber, diesen einen nicht. Entweder ist das Kriterium die Empfängerzahl nicht ganz,
   oder die beiden im Cc zählen für Dich zum selben vertrauten Kreis. Eine Antwort in einem
   Satz macht aus einer Faustregel eine Regel.*

4. **[Arbeitsweise · Frage an Raphael, 1 Satz] Ist der Text unterhalb Deiner Signatur in der Mail
   vom 10.06.2026 09:54 bewusst dort platziert oder ein Rest beim Zusammenkopieren?** Die Mail
   endet formal mit dem FG-Block, darunter läuft ungetrennt die harte Veto-Passage weiter.
   *Warum: wenn das Absicht ist (die Rüge steht «nach» der offiziellen Mail und wirkt dadurch
   persönlicher), ist es ein starker Formmarker. War es ein Versehen, darf der Zwilling es nie
   nachbauen — er würde sonst systematisch Signaturen mitten in Texte setzen. Gleiche Familie wie
   260815b #4 und 260816 #6.*

5. **[Haltung/Beziehungsregister · Prüfaufgabe] Wann setzt Du Bcc?** In derselben Mail stehen
   Qualitätssicherung und Flächenmanagement im **Bcc**, während die Bauherrschaft im Cc steht.
   *Warum: der stille Mitleser war im Register bisher gar nicht geführt, obwohl er die
   Empfängerarchitektur verändert — und die belegte Regel «der mitlesende Dritte formalisiert die
   Anrede» kann auf einen Bcc-Empfänger gar nicht wirken, weil das Gegenüber ihn nicht sieht.
   Prüfweg: alle Sent Items mit nicht-leerem `bccRecipients` ziehen und die Rollen der
   Bcc-Empfänger klassifizieren.*

6. **[Denken · Frage an Raphael, 1 Satz] Nennst Du eine eigene Zahl auch dann, wenn die Grundlage
   dünn ist?** Am 09.06.2026 steht «meine Kaufpreisempfehlung bei CHF 3.0MIO» direkt neben dem
   Satz, dass die Abverkaufspreise noch zu prüfen wären. *Warum: das ist die Kern-Drift dieses
   Laufs — der Zwilling ordnet ein und erklärt, wo Du eine Zahl setzt. Bevor er das nachmacht,
   muss klar sein, ob die Zahl an eine Mindestgrundlage gebunden ist oder ob der Vorbehalt danach
   genügt. Die falsche Antwort wäre teuer: ein Zwilling, der zu früh beziffert, bindet Dich.*

## Batch 96 (17.08.2026) — Fenster `Drafts` × Sent Items (Doppelabgleich nach 260816 #4)

**Erledigt aus den Vorrunden:** **260816 #4** (der rückwirkende Doppelabgleich Sendejournal +
`Drafts`) ist **durchgeführt und methodisch erweitert** — der Ordner beantwortet nicht nur, *ob*
ein Entwurf versendet wurde, er konserviert dessen **Wortlaut** (→ `CLAUDE.md`, vierzehnte Falle).
Zwei Nebenergebnisse: das befürchtete **fälschlich verbuchte Gold blieb aus** (die Wiki-Marker der
Kandidatentage 24.07./30.07./05.08./08.08. belegen durchgehend *andere* Mails desselben Tages),
und die bisher praktisch leere Kategorie `korrektur-delta` hat **drei** neue Belege.
**Weiterhin offen:** 260814 #2/#5, 260814b #1/#3–#5, 260815 #2/#4–#6, 260815b #1–#6,
260816 #1/#2/#5, sowie 260816 #3 **teilweise aufgelöst** (siehe [[stimme]], Doppel-Gruss).

1. **[Rule-Konflikt · Entscheid Raphael, 1 Satz] Deine Signatur nennt zwei verschiedene
   Telefonnummern-Schreibweisen — welche gilt?** `rules/jans-absenderadresse.md` schreibt
   «**+41** 79 846 11 65», und der Zwilling übernimmt das wortgetreu in jeden erzeugten Entwurf.
   Deine reale Outlook-Signatur schreibt «**0041** 79 846 11 65» (belegt 29.07., 05.08., 06.08.,
   11.08.2026). *Warum das eskaliert werden muss und nicht bloss eine Marotte ist: die Rule ist
   **immer aktiv** und prägt jedes Erzeugnis, das der Hub für Dich schreibt — Mails, Offerten,
   Dokument-Fusszeilen. Solange die beiden auseinanderlaufen, ist jede Hub-Signatur an diesem
   einen Zeichen als Fremdtext erkennbar, und zwar für jeden Empfänger, der zwei Deiner Mails
   nebeneinanderlegt. Entweder die Rule wird auf «0041» korrigiert, oder Du stellst die
   Outlook-Signatur um. Beides ist in fünf Minuten getan, aber es muss Deine Wahl sein.*

2. **[Methodik · Kandidat, Gegenprobe offen] Ist die AUSNAHMSLOSE Du-Grossschreibung ein
   Zwillings-Detektor?** Gemessen in diesem Batch: Zwilling **1.0**, Raphaels Hand **0.818**
   (`stilmetrik.py`, 545 gegen 322 Wörter). *Warum vorsichtig: das ist die Umkehrung des dreimal
   verworfenen «du klein»-Signals (07.08., 15.08., 16.08.) und läuft in dieselbe Falle, wenn es
   ungeprüft übernommen wird — die Quote schwankt im Korpus zwischen 0.75 und 1.0, und ein
   handgetippter Text mit durchgehend grossem Du ist nichts Besonderes. **Nicht** in die
   Muster-Tabelle aufgenommen. Prüfweg: die Du-Quote in zehn bewiesenen Hub-Texten gegen zehn
   bewiesene Golds stellen; erst ein Abstand ohne Überlappung trägt.*

3. **[Haltung · Frage an Raphael, 1 Satz] Warum hast Du den Entwurf an die GT-Leitung vom
   30.07.2026 nicht gesendet?** Er liegt seit **18 Tagen** im Entwurfsordner, der Hub-Chef hat ihn
   viermal als versandbereit gemeldet, und der Vorgang (Zustellung vor der Koordinationssitzung)
   war dringlich. *Warum das die wertvollste offene Frage dieses Batches ist: ein nicht gesendeter
   Entwurf ist Dein Urteil über den Zwilling in Reinform, aber ohne Begründung ist er stumm. Meine
   Vermutung steht in [[haltung]] — der Text nimmt seine eigene Frist im Schlussabsatz wieder
   zurück und bietet zwei Auswege an, um die niemand gebeten hat. Wenn das der Grund war, ist es
   eine harte Regel für alle künftigen Mahnungen. War es ein anderer (zu lang, falscher Ton,
   Sache erledigte sich), ist die Regel eine andere. Selbst «ich habe ihn schlicht vergessen»
   wäre eine brauchbare Antwort, denn dann liegt das Problem beim Melden, nicht am Text.*

4. **[Methodik · höchster Ertrag für den nächsten Lauf] 62 Entwürfe mit Drittempfängern sind
   erhoben, aber erst 5 gelesen.** Der Bestand reicht bis Juli 2025 zurück; rund 20 fallen in die
   Claude-Ära. *Zu tun: die Apple-Mail-Entwürfe der Claude-Ära der Reihe nach gegen die Sent Items
   desselben Tages stellen und jedes gefundene Paar wörtlich gegenüberstellen. **Das ist weiterhin
   ergiebiger als jedes neue Datumsfenster**, weil jedes Paar ein Korrektur-Delta liefert — das
   zweitstärkste Lernsignal, von dem der Harness bis zu diesem Batch fast nichts hatte. Achtung:
   die Entwürfe vor der Claude-Ära (2025, teils Apple Mail) sind **Gold**, nicht Zwillingstext —
   die Kanal-Regel gilt erst ab dem Zeitpunkt, an dem der Hub `osascript`-Drafts erzeugt. Wo die
   Grenze genau liegt, ist ungeprüft und muss beim Heben mitbestimmt werden.*

5. **[Beziehungsregister · Entscheid Raphael, offen seit 260815 #4 und 260816 #1] Die
   Sammelanrede-Klausel hat jetzt einen dritten Beleg gegen sich.** `rules/anrede-kontakte.md`
   verlangt zu nivellieren; der Korpus zeigt zum dritten Mal das Gegenteil, diesmal als
   **Registerwechsel zwischen Entwurf und Versand** («Sehr geehrter Herr Furrer» verworfen,
   «Geschätzter Herr Frauenfelder» gesendet, beide Behörde, derselbe Vorgang, 19 Minuten).
   *Warum jetzt entscheiden: drei unabhängige Belege sind genug, und die Rule wird laut eigener
   Konvention **vor** dem Wiki gelesen — der Zwilling nivelliert also weiterhin bei jeder
   Sammelmail, obwohl Du staffelst. Vorschlag unverändert aus 260816 #1: «Jede Person wird einzeln
   angeredet, in ihrer eigenen Stufe; nivelliert wird nur bei grossen oder unbekannten
   Verteilern.»*

## 260817 — Fidelity-Review (Fenster rj@ 15.–17.06.2026)

**#1 (Beziehungsregister) — Wonach ordnest Du die Zeilen einer gestapelten Anrede?**
In der Mail «Unterzeichnung / Verantwortung Berechnung Brandlast Elektro» (16.06.2026 12:16)
stehen vier Zeilen mit drei verschiedenen Stufen: «Sehr geehrter Herr Büchler,» / «Geschätzter
Herr Kübler,» / «Sehr geehrter Herr Cetin,» / «Werter Jens». Herr Kübler steht im Cc und wird
angeredet, Herr Duran steht ebenfalls im Cc und wird nicht angeredet; die Reihenfolge folgt nicht
dem To-Feld. Ordnest Du nach Hierarchie, nach Zuständigkeit für die verlangte Handlung, oder
schlicht nach dem Gedankengang? *Warum: der Zwilling hat die Wiki-Regel «gestapelt wird verkürzt»
angewandt und lag falsch; die korrigierte Regel («eigene Zeile je Stufe») sagt noch nichts über
die Sortierung.*

**#2 (Stimme) — Fette Handlungsanweisung mit Ausrufezeichen: Regel oder Ausnahme?**
Dieselbe Mail trägt «**Bitte klärt ab wer bei der Firma Gruner AG diese zwei Formulare
unterzeichnet!**» — fett gesetzt, mit Ausrufezeichen, an eine Sie-Runde. Ist das Deine Form für
die eine Handlung, die aus einer Mail hängen bleiben soll, oder war es der Termindruck (Frist
gleichentags 17:00)? *Warum: der Zwilling setzt nie ein Ausrufezeichen im Sie-Register und hat
die Anweisung als höfliche Bitte formuliert.*

**#3 (Haltung) — Wann schickst Du den Bauherrn zum Spezialisten, statt selbst zu prüfen?**
Christoph Bopp fragte ausdrücklich, ob er einen Baurechtler beiziehen solle. Deine Antwort war
kein Angebot Deiner Leistung, sondern ein Auswahlkriterium («macht Sinn wenn dieser einschlägige
Erfahrung mit Verfahren in Bezug auf Baulinien-Festsetzungen hat»). Gibt es eine Schwelle, ab der
Du die Abklärung doch selbst übernimmst und offerierst? *Warum: das ist die Kern-Drift dieses
Laufs — der Zwilling macht aus derselben Frage eine Honorarposition.*

**#4 (Stimme) — «Beste Grüsse» / «Lieber Gruss» / voller Block am selben Tag, an dieselbe Person.**
Am 16.06.2026 gingen drei Mails an Christoph Bopp, keine mit Cc: 00:17 «Geschätzter Christoph,» →
«Beste Grüsse»; 10:02 «Guten Morgen Christoph,» → «Lieber Gruss»; 10:46 «Geschätzter Christoph,»
→ Freundliche Grüsse + voller Signaturblock. Trifft die Lesart zu, dass die Lieferung mit Substanz
die Vollform trägt und die operative Zwischenfrage die Kurzform? *Warum: die bisherige Regel band
den Gruss allein daran, ob jemand mitliest — hier liest in keiner der drei jemand mit.*

**#5 (Arbeitsweise) — Kopierst Du Mailtexte aus einem Chat-Fenster in Outlook?**
Die Mail an Roman Steinmann vom 15.06.2026 14:20 trägt im HTML Utility-Klassen einer
Web-Oberfläche; Absendekanal und Signatur sind Deine. Ist das ein gelegentlicher Weg (Text im
Browser erzeugt, von Hand eingefügt, gesendet), und liest Du ihn vor dem Senden durch?
*Warum: dieser Kanal war für den Echo-Schutz bisher unsichtbar; wenn er häufig ist, muss jede
Mail dieses Fensters neu gewichtet werden.*

**#6 (Arbeitsweise) — Ist «A) B) C)» einfach Deine Listenform?**
Beide Belege dieses Laufs zeigen sie ausserhalb ihres bisher angenommenen Anwendungsfalls: als
gestyltes `<ol>` an die Sachbearbeiterin Buchhaltung und als Fliesstext-Paar an einen vertrauten
Du-Kontakt. Verwendest Du «1./2./3.» überhaupt noch, und wenn ja wofür? *Warum: das Wiki band
die Form an «unbekannter/ferner Erstkontakt» und ist damit zweifach widerlegt.*

**#7 (Entscheid Raphael, offen seit 260815 #4 · jetzt VIERTER Beleg) — die Nivellier-Klausel in
`rules/anrede-kontakte.md` steht gegen den Korpus.** Die Rule verlangt bei mehreren Empfängern
«die höflichste Anrede, sofern nicht alle per Du sind». Gold B vom 16.06.2026 zeigt zum vierten
Mal das Gegenteil, und diesmal am schärfsten: vier Zeilen, drei Stufen, vom «Sehr geehrter» bis
zum «Werter Jens» in derselben Anrede. *Warum das nicht länger im Wiki allein zu heilen ist: die
Rule wird laut eigener Konvention **vor** dem Wiki gelesen und ist ein @-Import — solange dort
«nivellieren» steht, nivelliert der Zwilling weiter, auch wenn das Facetten-Wiki es seit heute
verbietet. Vorschlag unverändert: «Jede Person wird einzeln angeredet, in ihrer eigenen Stufe;
nivelliert wird nur bei grossen oder unbekannten Verteilern.» Der Fidelity-Review ändert
`rules/anrede-kontakte.md` nicht selbst — die Kontaktliste ist Raphaels Register.*

## 260818 — Batch 97 (Doppelabgleich `Drafts` × Sent Items, Fenster 17.08.2026)

**#1 (Entscheid Raphael · FUENFTER Beleg zur offenen Frage 260817 #7) — die Nivellier-Klausel in
`rules/anrede-kontakte.md` ist jetzt fuenffach widerlegt.** Am 17.08.2026 um 08:11 gehen zwei
Du-Kontakte in EINER Anredezeile in **zwei verschiedenen Stufen** an: «Geschaetzter <A>, lieber
<B>». Die Rule verlangt zu nivellieren; der Korpus zeigt zum fuenften Mal das Gegenteil, diesmal
sogar bei zwei Kontakten **derselben** Anredeform (beide Du). *Warum das drueckt: die Rule ist ein
@-Import und wird vor dem Wiki gelesen. Der Vorschlag steht unveraendert seit 260815 — «jede
Person wird einzeln angeredet, in ihrer eigenen Stufe; nivelliert wird nur bei grossen oder
unbekannten Verteilern». Der Trainingslauf aendert `rules/anrede-kontakte.md` nicht selbst, die
Kontaktliste ist Raphaels Register.*

**#2 (Beziehungsregister, neu) — «Geschaetzter Herr <Vorname>»: Absicht oder Verwechslung?**
Ein Fachplaner wird am 17.08. zweimal mit «Herr» + seinem **Vornamen** angeredet (13:04
«Geschaetzter Herr <Vorname>», 14:49 «Sehr geehrter Herr <Vorname>»), weil der Vorname im
Outlook-Anzeigenamen vorn steht. *Warum wir fragen, statt es zu uebernehmen: der Zwilling darf
einen Namensfehler nicht als Stil reproduzieren. Bis zur Klaerung ist der Marker im Wiki
ausdruecklich als «nicht nachahmen» gekennzeichnet. Sollen wir den Kontakt im Register mit
Vor-/Nachname sauber fuehren?*

**#3 (Echo-Schutz, an den Harness gerichtet) — wie viele Mails sind ueber den
Zwischenablage-Kanal gelaufen, die wir als Gold verbucht haben?** Die fuenfzehnte Falle hat mit
diesem Batch ihren zweiten Beleg und ein zweites, staerkeres Klassen-Token
(`font-claude-response-body`). Beide Belege stammen aus Stichproben, nicht aus einer Suche.
*Warum das dringend ist: der Kanal traegt alle vier bisherigen Gold-Merkmale (Exchange-ID, kein
Apple-Wrapper, Raphaels Outlook-Signatur) und wurde bis zum 17.08. systematisch als authentisch
gewichtet. Ein gezielter Sweep ueber `font-claude-response-body` und `text-[var(--accent)]` im
gesamten Sent-Items-Bestand ist der naechste vorrangige Lauf — vor jedem neuen Datumsfenster.*

## 260818b — Fidelity-Review (Fenster rj@ 22.–29.06.2026, Golds Abgebot / Brandlast ELE / Baulinie)

Quelle: Drift-Report `outputs/2026-08-18_fidelity.md`. Gesamt-Fidelity 31 (unter der Spanne
35–38 der vier Vorlaeufe). Besonderheit: drei Golds ohne einen einzigen Echo-Treffer, und
erstmals eine Erfindung, die aus dem **eigenen Pruefapparat** stammt.

**#1 (Arbeitsweise · Entscheid Raphael) — soll die Pendenz an einen Zustaendigen IMMER als
abschreibfertiger Baustein kommen, oder nur, wenn er sie weitergeben muss?** Gold B kuendigt
«folgende Pendenzen-Erledigung» an und liefert dann **einen einzigen** kursiven
Weiterleitungstext samt Deckung durch den QS-Verantwortlichen, statt einer Liste. Derselbe
Reflex in Gold C («optional gewisse Textbausteine … je nach Bedarf»). *Warum das den Zwilling
annaehert: er baut heute reflexhaft eine Liste, sobald das Wort «Pendenzen» faellt — das ist
die schwerste gemessene Drift dieses Laufs (Arbeitsweise 28). Die Regel «Statt einer
Empfehlung liefert er die abschreibfertige Variante» steht seit 260806 im Artikel, aber ohne
Ausloeser. Ein Satz von Dir setzt ihn: gilt der Baustein, sobald das Gegenueber den Text
weitergeben muss — oder auch dann, wenn es ihn nur selbst abarbeitet?*

**#2 (Haltung · Entscheid Raphael · SIEBTER Beleg) — wann darfst Du Dir selbst Arbeit geben?**
In Gold C hat der Bauherr seine Einrede selbst verfasst; Raphael winkt sie durch («denke ist
alles korrekt getan») und begrenzt den Aufwand ueber die Verfahrensart. Der Zwilling
formulierte stattdessen eigene Ziele, kuendigte ein eigenes Deliverable an und setzte sich eine
Frist. *Warum das drueckt: das ist der siebte Beleg derselben Drift in Folge (260805, 260817,
jetzt 260818) und der teuerste — er erfindet Honorararbeit genau dort, wo Du dem Kunden Geld
sparst. Der Marker steht im Artikel und wird nicht abgerufen. Frage: gibt es einen Fall, in dem
Du die fremde Vorarbeit doch ersetzt statt durchwinkst — und woran erkennst Du ihn?*

**#3 (Fachsignatur, aus Widerspruch aufgeloest, Bestaetigung erbeten) — traegt die
Rechtsauskunft den Paragrafen, oder liegt er bei?** Der Marker vom 260817 sagt «Norm, Subsumtion,
Parzellennummer im Satz». Gold C ist ebenfalls eine Rechtsauskunft an denselben Du-Kontakt und
traegt **keinen** Paragrafen — die Artikel wandern als PDF-Beilage mit
(`260629_Buchauszug_…_PBG_….pdf`). *Aufgeloest wurde das im Artikel so: nicht die Gattung
entscheidet, sondern wer die Rechtsbehauptung traegt — verantwortest Du sie, steht der § im
Satz; fuehrt der Bauherr die Schrift selbst, lieferst Du das Normmaterial als Dokument.
Stimmt diese Lesart, oder haengt es an etwas anderem (Empfaenger-Vorbildung, Streitwert,
Adressat der Schrift)?*

**#4 (Echo-Schutz, an den Harness gerichtet · korrigiert 260817 Empfehlung 2) — die
raw-Batches muessen eine Detektor-Zeile mitfuehren.** Gemessen in diesem Lauf: die 33 Dateien
in `raw/` enthalten **null** HTML; der als «billig» angekuendigte Grep-Sweep ueber die
destillierten Batches ist mechanisch unmoeglich, alle vier Treffer waren die Dokumentation der
Falle selbst. *Warum das mehr ist als eine Korrektur: solange `raw/` nur Klartext speichert,
ist jede rueckwirkende mechanische Echo-Pruefung blind — bei der 6., der 14. und der 15. Falle
gleichermassen. Vorschlag: jeder kuenftige Batch fuehrt je Mail eine Zeile mit, welche der
sechs Detektor-Muster trafen und welche nicht. Kostet eine Zeile, rettet den naechsten Sweep.*
Bezug: 260818 #3 (der Postfach-Sweep selbst bleibt offen und ist jetzt teurer veranschlagt).

**#5 (Querschnitt, neue Driftart · kein Entscheid noetig, hier als Warnung protokolliert) —
Kontamination aus dem eigenen Vorlauf-Report.** Die Blindfassung zitierte «§ 98 PBG» und
«Grundstueck 5252» — beides echte Fundstellen, aber aus dem Fidelity-Report vom 17.08. und
einem **anderen** Vorgang; die Parzelle in Gold C ist Kat.-Nr. 3338. *Warum das die
gefaehrlichere Verwandte der Erfindungs-Drift ist: die Angabe sieht verifiziert aus, weil sie
eine echte Nummer ist. Gleiche Familie wie die BKP-Phantomnummer «271.10». Konsequenz, im
Artikel gesetzt: ein Identifikator aus einem frueheren Report oder Wiki-Marker ist Beleg fuer
den damaligen Fall, nie Faktum fuer den heutigen.*

**#6 (Stimme · Bestaetigung erbeten) — «Wir freuen uns auf die Zusammenarbeit.» als Ersatz
fuer den Service-Satz in der Abgebotsrunde.** Gold A traegt statt des Service-Satzes zwei
knappe Saetze: «Danke fuer Ihre Unterstuetzung.» und «Wir freuen uns auf die Zusammenarbeit.»
— der zweite stellt den Zuschlag in Aussicht, bevor er formell ist, und macht dem Unternehmer
den Nachlass bezahlbar. *Warum wir fragen: der Artikel stellt die Submissionsanfrage
ausdruecklich auf die Service-Satz-Seite. Ist der Zusammenarbeits-Satz Deine feste Form fuer
die Abgebotsrunde — oder war er hier der Sache geschuldet (KISPI in finanzieller Notlage, 8 %
Nachlass erbeten)?*

**#7 (Harness · Entscheid Raphael · loest den Riegel-Strang strukturell ab) — soll der
Do/Don't-Block eine VERFALLSREGEL bekommen?** Der Kompilier-Riegel wurde heute nach dreimaliger
Vorlage auf 34'000 B angehoben — und war nach diesem einen Lauf schon wieder bei 33'430 B (570 B
Reserve). Damit ist die Wachstumsrate erstmals beziffert: rund **3,5 kB pro Fidelity-Lauf** bei
sechs Korrekturen. *Warum eine Grenzanhebung das nicht loest: sie kauft je 4 kB genau einen Lauf.
Auch die Deckelung je Facette (Empfehlung c) verteilt das Wachstum nur gerechter. Der Vorschlag:
ein Marker, der seit N Laeufen weder **verletzt** noch **bestaetigt** wurde, wandert aus dem
Do/Don't-Block zurueck in den Artikelkoerper und wird nicht mehr mitkompiliert — der Block traegt
dann, was der Zwilling HEUTE falsch macht, statt das Gesamtarchiv des Gelernten. Nichts geht
verloren, der Artikel behaelt alles. Offene Groesse: wie viele Laeufe sind «N»? Vorschlag 10.*

## 260819 — Batch 98 (Sent Items + Drafts `rj@` 17.–19.08.2026)

**#1 (Harness · Methodik · loest die Vorrangaufgabe aus Batch 97 auf) — der Token-Sweep ist
keine Suche, er ist Lesearbeit.** Batch 97 stellte einen gezielten Sweep auf
`font-claude-response-body` und `text-[var(--accent)]` vor jedes Datumsfenster. In diesem Lauf
ausgefuehrt und **negativ beschieden**: `outlook_email_search` indexiert **kein Markup**.
Kontrollprobe im selben Ordner: ein Wort, das nur im Body steht («Cleanwall»), liefert Treffer,
beide Markup-Tokens liefern **null** — obwohl mindestens einer nachweislich im Bestand liegt.
*Warum das die Planung aendert: ein Einmal-Sweep ueber den Bestand ab Mai 2026 kostet rund ein
`read_resource` je Mail und ist so nicht bezahlbar. Vorschlag, in diesem Lauf schon umgesetzt:
(a) ab sofort jede in einem Batch ohnehin gelesene Mail auf beide Tokens pruefen — das kostet
nichts extra; (b) zusaetzlich ein Rueckwaerts-Fenster ab Mai 2026 in Tagesportionen, parallel
zum sequenziellen Vorwaerts-Fenster. Offene Groesse: wie viele Rueckwaerts-Tage je Lauf, ohne
den regulaeren Batch zu verdraengen? Vorschlag: einer.*

**#2 (Harness · Befund am Hub, nicht am Zwilling) — der Entwurfs-Generator legt DUBLETTEN an.**
Am 18.08.2026 um **06:45:21 und 06:45:22** entstanden zwei wortgleiche `osascript`-Entwuerfe
derselben Mail, unterschiedlich nur im Verteiler (2 gegen 5 Empfaenger) und in der
HTML-Absatzbildung (`<br/>` gegen `<p>`). Beide lagen am Folgetag noch ungesendet im Postfach.
*Warum das den Zwilling betrifft: fuer den Doppelabgleich zaehlt ein Paar aus Entwurf und Sent
Item. Eine Dublette ohne Sent Item erzeugt zwei Negativ-Eintraege statt einem und verzerrt die
Zaehlung des Entwurfsordners (112 Eintraege, davon nun mindestens ein Duplikat-Paar). Frage an
den Betrieb, nicht an Raphael persoenlich: welcher Lauf hat am 18.08. um 06:45 zweimal
geschrieben, und soll der Generator vor dem Anlegen auf einen bestehenden Entwurf gleichen
Betreffs pruefen?*

**#3 (Beziehungsregister · Bestaetigung erbeten) — «Herr <Vorname>» als stehende Anrede.**
Raphael spricht einen Fachplaner in zwei Mails desselben Tages mit «Geschaetzter Herr
<Vorname>» bzw. «Sehr geehrter Herr <Vorname>» an — konstant der Vorname an der Stelle des
Nachnamens. *Warum wir fragen: der Zwilling wuerde das «korrigieren» und damit eine gewachsene,
moeglicherweise im Projekt eingespielte Anrede zerstoeren. Ist das Deine bewusste Form fuer
diesen Kontakt (weil er sich so vorstellt), oder soll der Zwilling hier auf den Nachnamen
gehen?*

**Registerkorrektur nebenbei (gemessen, nicht uebernommen):** die Batches 93–97 fuehren den
Kompilier-Riegel des DNA-Auto-Blocks mit «29973 B von 30000 B». Der Fidelity-Lauf vom 18.08. hat
`MAX_AUTO_BYTES` auf **34000** angehoben (siehe 260818b #7). Gemessen am 19.08.2026:
**33430 B von 34000 B, 570 B Reserve.** Der Riegel steht also weiterhin knapp, aber die in den
Batch-Notizen genannte Zahl war einen Lauf alt.

## 260819b — Fidelity-Review (Fenster rj@ 30.06.–06.07.2026, Golds Private Kontrolle / Naeherbaurecht)

Quelle: Drift-Report `outputs/2026-08-19_fidelity.md`. Gesamt-Fidelity 33 auf zwei statt drei
Proben — die dritte Kandidatin war ein **Hub-Erzeugnis** und wurde vor der Wertung aussortiert.

**#1 (Harness · Entscheid Raphael · VORAUSSETZUNG des naechsten Laufs) — die Verfallsregel
muss jetzt entschieden werden.** Der Vorlauf hat `MAX_AUTO_BYTES` auf 34'000 B angehoben und
damit genau einen Lauf gekauft. Dieser Lauf lag mit sechs Korrekturen zunaechst bei **36'165 B**
(Abbruch, rc=3) und kompilierte erst nach sieben Verdichtungsschritten bei **33'993 B — 7 B
Reserve**. *Warum das kein weiterer Aufschub sein kann: beide Mittel sind aufgebraucht. Die
Grenzanhebung war einmalig, und die aufgeraeumten Doppelungen (Stapelregel, drei
«abschreibfertig»-Marker, zwei identische Rechtsauskunft-Regeln, vier Gruss-Korrekturen) gibt es
kein zweites Mal. Der naechste Lauf kann nicht kompilieren, ohne dass entweder die Verfallsregel
gilt oder Regeln geloescht werden — und Regeln zu loeschen war der Punkt, an dem der Riegel
schadet statt schuetzt. Vorschlag unveraendert: ein Marker, der seit **10 Laeufen** weder
verletzt noch bestaetigt wurde, wandert aus dem Do/Don't-Block in den Artikelkoerper zurueck.
Nichts geht verloren. Ein Wort von Dir genuegt: «ja, N=10».*

**#2 (Stimme · Bestaetigung erbeten) — der Cc hebt den Kurzgruss NICHT auf, richtig?** In der
Weiterleitung an Stefan Tschopp (02.07. 09:45) sitzt die SBB-Gegenseite im Cc, und Du schliesst
trotzdem mit «Lieber Gruss / Raphael», ohne Signaturblock. Die **Anrede** dagegen ist wegen des
Cc von Deinem Routine-«Hoi Stefan» auf «Geschaetzter Stefan» gestiegen. *Warum wir fragen: das
Gehirn sagte bisher «sobald ein Cc dabei ist, ohnehin FG+Block» — der Zwilling hat die Regel
korrekt angewandt und dadurch falsch geschrieben. Wir haben sie zu «der Gruss folgt der GATTUNG,
der Mitleser bewegt allein die ANREDE» korrigiert. Stimmt diese Zweiteilung, oder haengt der
Kurzgruss hier daran, dass Wiedmer den Faden ohnehin kennt?*

**#3 (Arbeitsweise · Entscheid Raphael) — soll der Zwilling Deine Fragenlisten roh lassen?**
Gold B stellt unter «Fragen sind:» vier Fragen ohne Aufzaehlungszeichen, die alle **dieselbe**
Unsicherheit umkreisen (wer beauftragt die Private Kontrolle, wurde sie beauftragt, von wem,
durch wen). Der Zwilling hat daraus drei saubere, trennscharfe, bebulletete Fragen gemacht —
und musste dafuer Inhalt erfinden. *Warum das mehr ist als Kosmetik: wir lesen die Redundanz als
Botschaft («ich weiss nicht, wer zustaendig ist, antwortet mir aus irgendeinem Winkel») und haben
sie so ins Wiki gesetzt. Ist das Deine Absicht — oder ist die rohe Liste bloss das Ergebnis davon,
dass Du sie auf dem Handy getippt hast, und der Zwilling darf sie am Rechner ordnen?*

**#4 (Beziehungsregister · Bestaetigung erbeten) — einzeilig oder zweizeilig gestapelt: haengt es
am Gewicht?** Gold B redet zwei Fachplaner mit auseinandergehenden Stufen **einzeilig** an
(«Geschaetzter Herr Kuebler, werter Herr Duran,»), waehrend das Gehirn seit 260818 «je eigene
Zeile» verlangte. *Warum wir das so aufgeloest haben: im 260818-Material stand dasselbe Paar
Grob/Arter am 18.05. einzeilig und am 12.06. zweizeilig, als die Sache schwerer wurde. Wir lesen
daraus: nicht die Stufendifferenz entscheidet, sondern das Gewicht der Mail. Trifft das zu, oder
ist der Unterschied schlicht Handy gegen Rechner?*

**#5 (Echo-Schutz · an den Harness, billig geworden) — wie viele als Gold verbuchte Mails tragen
die Generator-Signatur?** Neu belegt: Hub-Entwuerfe signieren «Raphael Jans, Founder I MD» mit
nicht fettem Namen und «**+41** 79 846 11 65», Deine eigene Outlook-Signatur dagegen fett und mit
«**0041** 79 846 11 65». *Warum das die Planung aendert: anders als Wrapper und CSS steht die
Signatur im Klartext und damit in der `summary` jedes Suchtreffers — der als unbezahlbar
verworfene Bestands-Sweep (260818 #3, 260819 #1) wird damit auf einem anderen Weg moeglich, ohne
ein `read_resource` je Mail. Vorschlag: ein Rueckwaerts-Sweep ab Mai 2026 rein auf der
Signaturform, bevor weitere Datumsfenster vorwaerts gezogen werden.*

**#6 (Haltung · Bestaetigung erbeten, beantwortet 260818b #2 teilweise) — Du gibst Dir die
Planarbeit, aber nie den Entscheid.** Gold C zeigt beides in zwei Zeilen: Du sagst die eigene
Leistung im Nebensatz zu («… unterstuetzen und die noetigen Plangrundlagen erstellen») und
fragst im naechsten Satz zurueck («Fuer Dein finales Go bezueglich Vorgehen bin ich Dir
dankbar»). Der Zwilling uebersprang das Go und instruierte die Gegenseite direkt. *Warum wir
nachfragen: wir haben daraus die Linie «der Bauherr entscheidet, Raphael bereitet vor» als
Oberbegriff ueber acht Belege gesetzt und die Grenze so gezogen — Zeichnen darfst Du zusagen,
den Entscheid und die Rechtsschrift der Gegenseite nicht. Gibt es einen Fall, in dem Du den
Entscheid bewusst vorwegnimmst, weil Warten teurer waere?*

## 260820 (Batch 99) — vier Fragen, drei davon an den Harness

**#1 — BEANTWORTET am 21.08.2026 (Batch 100), Ergebnis ENTLASTUNG: alle sieben
Apple-Mail-Kandidaten der Batches 95–98 nachgeprueft, **kein einziger traegt `contentType:
text`**. Es ist kein Gold zurueckzuholen, die Zuordnungen jener Batches bleiben gueltig — der
Ausschluss lief dort ohnehin ueber den `Apple-Mail-URLShareWrapperClass`, nicht ueber den Kanal.
Die Nachpruefung bestaetigt damit die Methode, nicht nur das Einzelurteil. Nebenertrag: zwei
neue Detektoren und eine neue Falle (achtzehnte, [[CLAUDE]]).**

**#1 (Echo-Schutz · an den Harness, dringend) — muessen die Apple-Mail-Zuordnungen der Batches
95 bis 98 rueckwirkend geprueft werden?** In Batch 99 ist belegt: **`body.contentType`
unterscheidet Raphaels Apple-Mail-Hand (`text`) vom Hub-`osascript`-Draft (`html` + Wrapper)** —
drei Gold-Belege gegen einen Zwillingsbeleg, extern bestaetigt durch das Sendejournal desselben
Vormittags. *Warum das die Planung aendert: das Feld steht in jedem `read_resource`-Ergebnis und
wurde in den Batches 95 bis 98 schlicht nie gelesen. Die vierzehnte Falle hat den Apple-Mail-Kanal
dort ueber die Message-ID zugeordnet — bei einer Plaintext-Mail ist diese Zuordnung falsch. Frage
an den naechsten Lauf: die als `claude-aera` verworfenen Apple-Mail-Mails jener Batches auf
`contentType` nachpruefen, bevor weitere Fenster vorwaerts gezogen werden. Ein faelschlich
verworfener Gold-Text ist teurer als ein fehlendes Fenster.*

**#2 — BEANTWORTET am selben Tag (Fidelity-Review 20.08.), der Marker ist eingegrenzt statt aufgenommen: die Gegenprobe (Outlook-Mail vollstaendig eigener Hand, 08.07. 08:00) traegt die Eigenschaft NIRGENDS, die Hub-Mail desselben Fensters auf jedem Textabsatz — aber eine handgetippte Apple-Mail-Mail traegt sie im SIGNATUR-Container. Er zaehlt nur auf Textabsaetzen. Details in [[CLAUDE]].**

**#2 (Echo-Schutz · Kandidat, nicht aufgenommen) — traegt `text-transform:none` als Klebe-Marker
eingefuegter Bloecke?** In der 10:53-Mail vom 19.08. steht die Eigenschaft auf **jedem** Absatz
des Hub-Blocks 01–04 und **auf keinem** der zwei handgetippten Schlussabsaetze. *Warum wir ihn
nicht aufgenommen haben: ein Beleg, und die Sperrlisten-Disziplin (nach dem Guillemet-Fall
03.08. und dem «du klein»-Fall 07.08.) verlangt eine Gegenprobe gegen die eigene Hand, bevor ein
Signal echtes Gold abwerten darf. Konkret zu pruefen: traegt eine Mail, die Raphael in Outlook
komplett selbst tippt, die Eigenschaft irgendwo? Faellt die Gegenprobe aus, ist es der erste
mechanische Naht-Detektor INNERHALB des Exchange-Kanals.*

**#3 (Beziehungsregister · Bestaetigung erbeten) — greifst Du im Konflikt bewusst zur neutralen
Anrede?** Deine haerteste Mail des Korpus (Ultimatum ans Amt, Vorgesetzte und Bauherrschaft im
Verteiler, 19.08. 08:26) beginnt mit «Guten Tag Herr <Vorname> <Nachname>» — der untersten Stufe
Deiner Skala. *Warum wir nachfragen: wir haben daraus die Linie gezogen, dass die Anrede das
Gewicht der BEZIEHUNG misst und nicht die Schaerfe des Anliegens, und dass «Geschaetzter» der
Waerme vorbehalten bleibt. Die Gegenlesart waere: die neutrale Stufe ist hier ein bewusster
Entzug von Waerme, also selbst ein Eskalationsmittel. Beide Lesarten fuehren zu verschiedenem
Zwillingsverhalten, wenn er Dir kuenftig eine Mahnung entwirft.*

**#4 (Arbeitsweise · Bestaetigung erbeten) — ist die Arbeitsteilung «Zwilling liefert die Sache,
Du haengst die Beziehung an» gewollt?** Die 10:53-Mail traegt den Hub-Block 01–04 unveraendert;
Deine Hand kommt erst in den letzten zwei Zeilen dazu («Ich habe Dir noch den Werkplan von
<Firma> … beigelegt.» / «Lgr»). *Warum das den Zwilling naeher an Dich bringt: wenn das Dein
gewollter Gebrauch ist, sollte er den Beziehungssatz und den Anhangshinweis kuenftig gar nicht
mehr selbst formulieren, sondern die Stelle offen lassen. Wenn Du ihn dagegen nur deshalb
ergaenzt hast, weil der Entwurf ihn vergessen hatte, ist es ein Fidelity-Mangel und gehoert
behoben.*


## 260820b (Fidelity-Review, Fenster 07.–13.07.2026) — fuenf Fragen

**#1 (Stimme · Bestaetigung erbeten) — setzt Du bei «Darf ich Dich Bitten …» bewusst nie ein
Fragezeichen?** Zweimal am selben Tag belegt: «Daher Bitte ich Dich uns der Typ dieser
Rolladensteuerung anzugeben.» und «Darf ich Dich Bitten dies in das Angebot zu integrieren und
eher die allgemeinen Arbeiten auf das absolut noetigste zu reduzieren.» — beide auf Punkt.
*Warum das den Zwilling naeher an Dich bringt: er setzt reflexhaft ein Fragezeichen und macht
damit aus Deiner hoeflich gerahmten Anweisung eine echte Frage, die der Empfaenger verneinen
kann. Wenn der Punkt Absicht ist, ist es eine der billigsten und sichtbarsten Korrekturen
ueberhaupt.*

**#2 (Haltung · Bestaetigung erbeten) — ist «Sehe ich das Richtig: …?» Deine Standardform fuer
einen Offert-Mangel?** In der Nachforderung an den Sanitaer legst Du die fehlenden Positionen
nicht als Befund vor, sondern als moegliche eigene Fehlsicht. *Warum wir fragen: der Zwilling
formuliert an dieser Stelle «Bei der Durchsicht sind mir folgende Punkte aufgefallen» und macht
aus Deiner Frage ein Attest. Wenn die Frageform Absicht ist (Deutungshoheit beim Unternehmer,
Spitze raus ohne Weichspuelen), gehoert sie als feste Form in die Offertpruefung — und dann auch
in den Skill `offertenpruefung`, nicht nur in den Zwilling.*

**#3 (Haltung · Abgrenzung erbeten) — wo verlaeuft die Linie zwischen «melde ich Dir» und «hole
ich Dein Go ein»?** Am 07.07. meldest Du dem Bauherrenvertreter die gescheiterte Erstofferte und
setzt den naechsten Schritt ohne jede Rueckfrage; am 01.07. bittest Du denselben Typ Gegenueber
ausdruecklich um «Dein finales Go». Unsere Lesart: die Go-Frage haengt an der **Bindung** (eine
Vereinbarung bindet, eine Abgebotsrunde praejudiziert nichts). *Warum das zaehlt: der Zwilling
hat bisher entweder immer gefragt oder nie — mit der Bindungs-Linie koennte er es zum ersten Mal
richtig entscheiden. Stimmt die Linie, oder entscheidet bei Dir eher die Hoehe des Betrags?*

**#4 (Arbeitsweise · Bestaetigung erbeten) — begruendest Du eine Vergabe-Empfehlung an den
Bauherrn absichtlich NICHT?** «Ich wuerde nun vorschlagen mit TeKoSi ohne Konkurenzofferte eine
Abgebotsrunde durchzufuehren.» steht ohne ein Wort Begruendung, obwohl es der heikelste Satz der
Mail ist (Verzicht auf Konkurrenz). *Warum wir fragen: der Zwilling schiebt automatisch ein
Argument nach («TeKoSi kennt das System bereits») und erfindet es damit. Ist die Kuerze
Vertrauen in eine muendlich laengst geteilte Lage — dann muss er schweigen — oder war es an dem
Abend nur schnell?*

**#5 (Stimme · leicht zu beantworten) — oeffnest und schliesst Du bewusst mit derselben
Dankformel?** Die Mail an den Sanitaer beginnt mit «Danke fuer Dein Angebot.» und endet mit
«Besten Dank fuer Dein Angebot.» *Warum das den Zwilling naeher an Dich bringt: er verschmilzt
die beiden reflexhaft zu einem einzigen, aufgewerteten Dank, weil die Wiederholung wie ein
Versehen aussieht. Wir lesen sie als Rahmen um die Nachforderung — dieselbe Familie wie die
absichtlich redundante Fragenliste vom 30.06. Wenn das stimmt, hoert der Zwilling auf zu
glaetten.*
## 260821 (Batch 100) — vier Fragen, zwei davon leicht zu beantworten

**#1 (Beziehungsregister · Bestaetigung erbeten, wichtigste Frage dieses Batches) — stellst Du
nach einer Sitzung oder einem Telefonat bewusst auf Du um?** Zwei unabhaengige Belege: der
Sanitaer-Fachplaner wird am 18.08. im Thread noch durchgehend im Sie angesprochen, am 20.08.
findet die Koordinationssitzung statt, und um 22:40 desselben Tages schreibst Du «**Hoi
<Vorname>, wie an der Sitzung besprochen …**». Zweiter Beleg ist der Tuer-Fachplaner aus Batch
97, der um 15:02 **nach einem Telefonat** «Lieber Levi» bekommt. *Warum das den Zwilling naeher
an Dich bringt: er hat bisher die Anrede des letzten Threads fortgeschrieben und deshalb am
18.08. «Sehr geehrter Herr <Vorname>» entworfen — falsche Stufe und falsche Form zugleich. Wenn
die Linie stimmt, muss er kuenftig vor jeder Fachplaner-Mail den Kalender des laufenden Tages
lesen: hat ein Treffen stattgefunden, ist die Anrede des Threads ueberholt. Das waere eine der
wenigen Regeln, die er ohne Rueckfrage richtig anwenden koennte.*

**#2 (Beziehungsregister · leicht zu beantworten) — bist Du mit dem Technischen Dienst des
Kinderspitals (Fabian Würsch) per Du?** Die Gegenseite schreibt «Hallo Raphael» und «Grüsse»,
Deine Antwort ist «Danke:=)» — **ohne Anrede**, also ohne Beleg. *Warum wir fragen statt zu
raten: `rules/anrede-kontakte.md` fuehrt fuer dieses Projekt bereits vier Du-Kontakte; die
Wahrscheinlichkeit ist hoch, aber der Harness traegt nur Belegtes ein. Ein Wort von Dir, und die
Zeile steht.*

**#3 (Arbeitsweise · Abgrenzung erbeten) — wann Frist, wann Konditional?** In derselben Woche
zwei entgegengesetzte Formen: an den Fachplaner in der Bringschuld «heute bis 17:00 Uhr» mit
Zweckbegruendung (17.08.), an die Bauherrenseite «**Sobald** ich die Rückmeldung von Herr <A>
und Herr <B> erhalten habe, **werde ich** … final hochladen» (20.08.) — ganz ohne Termin.
Unsere Lesart: **die Frist gilt der Bringschuld des anderen, der Konditional der eigenen**, und
der Druck entsteht aus der sichtbaren Abhaengigkeit. *Warum das zaehlt: der Zwilling setzt
derzeit entweder ueberall eine Frist oder nirgends. Mit dieser Linie traefe er zum ersten Mal
die Adressaten-Achse, an der er nach Batch 97/98 nachweislich scheitert.*

**#4 (Stimme · leicht zu beantworten) — ist «Danke:=)» Deine uebliche Kurzform, und ist das
Emoticon Absicht?** Erstes Emoticon des ganzen Korpus, in vertippter Form (`:=)` statt `:-)`).
*Warum wir fragen: der Zwilling schreibt an dieser Stelle reflexhaft «Besten Dank fuer die
Unterlagen. Freundliche Gruesse» plus Signaturblock und macht aus zwei Zeichen eine
Geschaeftsmail. Wenn die Zweiwort-Antwort mit Emoticon bei vertrauten Kontakten Deine Form ist,
gehoert sie als unterste Stufe in die Gruss-Skala — heute steht dort «Lgr».*

## 260821b (Fidelity-Review, Fenster 14.–20.07.2026) — fuenf Fragen, zwei davon an den Harness

**#1 — Brauchen Inhibitionsregeln eine andere Darreichungsform als Nachschlageregeln?**
*(Facette: Harness / alle sechs · an Raphael, konzeptionell)*
Der Regressionstest dieses Laufs (Report Befund 1) trennt die Marker sauber: **Zuordnungen**
(«Felix ist Du») und **Unterlassungsgebote** («den ‹Du,›-Filler nicht setzen») haben nach fuenf
Wochen gehalten; die **Inhibition eines eigenen Reflexes** («die gestapelte Anrede nicht zur
Sammelform verschmelzen») hat nicht gehalten — und mit ihr fallen die drei hartnaeckigsten Drifts
des Harness in dieselbe Klasse: Listen-Reflex, Fragezeichen hinter der Bitte, Anrede-Verschmelzung.
Alle drei stehen als Satz im Fliesstext eines 6- bis 7-kB-Blocks. **Frage:** soll der Zwilling vor
jeder Erzeugung eine kurze, separate **Negativliste** lesen (etwa acht bis zwoelf Zeilen «tu genau
das nicht»), zusaetzlich zum Do/Don't-Block? *Warum das naeherbringt:* es ist die erste Hypothese,
die drei gemessene Dauer-Drifts mit EINER Ursache erklaert, statt sie einzeln zu ermahnen. **Nicht
eigenmaechtig gebaut**, weil es die Bauform des Gehirns und die Ladekosten jedes Texterzeugnisses
aendert.

**#2 — Wie geht es beim Wachstums-Riegel weiter? (Entscheid faellig, nicht dringlich)**
*(Facette: Harness · an Raphael)*
Der Block steht nach diesem Lauf bei **33'998 B von 34'000 B**. Das am 20.08. eingefuehrte,
ausdruecklich wiederholbare Mittel (Auslagerung von Nicht-Mail-Gattungsregeln) wurde heute zum
zweiten Mal gezogen und ist damit **weitgehend erschoepft** — uebrig ist im Wesentlichen die
Nummerierungslogik im Dokument. **Empfehlung des Laufs:** die Grenze **nicht** erneut anheben (das
waere die zweite Anhebung in vier Tagen und macht den Riegel zur Formalie), sondern die naechste
Kollision fuer eine **Verdichtung von [[stimme]]** nutzen — 7'125 B, groesster Block, und er traegt
sichtbar abgeloeste Zwischenregeln aus Juli. *Warum das naeherbringt:* nicht inhaltlich, sondern
betrieblich — ohne Entscheid bricht der naechste Lauf im Kompilierschritt ab, wie dieser es tat.

**#3 — Ist «Danke und Gruss» an die Bitte um Nacharbeit gebunden oder freier?**
*(Facette: Stimme · leicht zu beantworten)*
Das Gehirn fuehrte die Formel bisher nur als Vorsatz vor dem FG-Block in der **Sie-Behoerdenmail**.
Gold D setzt sie im **vertrauten Du als alleinigen Gruss** (16.07., Preisruege an den Elektriker).
Die Aufloesung dieses Laufs lautet: sie haengt an der **Gattung** — die Mail bittet um Nacharbeit,
der Dank laeuft vorschuessig auf deren Erledigung. **Frage:** stimmt das, oder ist «Danke und
Gruss» schlicht eine dritte freie Kurzgruss-Variante neben «Lieber Gruss» und «Lgr»? *Warum das
naeherbringt:* der Gruss ist die sichtbarste Einzelentscheidung jeder Mail, und der Zwilling waehlt
hier zum wiederholten Mal die falsche der drei Formen.

**#4 — Gilt die Kurzzahl («40K», «4Stk», «6x») auch gegenueber Sie-Unternehmern?**
*(Facette: Stimme / Fachsignatur · leicht zu beantworten)*
Belegt ist sie im vertrauten Du. Der Apostroph ist belegt in Offerte, Dokument und foermlicher
Mail. Unbesetzt bleibt das Feld dazwischen: die operative Preisrueckfrage an einen **Sie**-
Unternehmer. **Frage:** schreibt Raphael dort «CHF 40K» oder «CHF 40'000»? *Warum das
naeherbringt:* die Gattungsweiche aus Befund 5 hat genau an dieser Stelle noch keine Kante, und
Zahlen stehen in fast jeder Unternehmermail.

**#5 — Zweiter Beleg fuer den «Du,»-Filler weiterhin ausstehend**
*(Facette: Stimme · Beobachtungsauftrag, keine Frage an Raphael)*
Seit 260714j gilt: nicht aktiv setzen, bis ein zweiter Beleg vorliegt. Dieser Lauf hat den
**ersten** Beleg erneut gelesen, aber keinen zweiten gefunden — auch die Preisruege an denselben
Kontakt zwei Tage spaeter traegt ihn nicht. Der Marker bleibt Einzelbeleg; das Unterlassungsgebot
hat gehalten (Befund 1) und bleibt in Kraft. *Warum das hier steht:* damit die naechste
Batch-Runde weiss, dass die Suche im Juli-Fenster erfolglos war, und nicht dieselbe Kiste
durchsucht.

---

## 260822 — Batch 101 (Fenster 21.–22.08.2026)

**#1 — Steht das «&» in der Sammelanrede fuer eine Regel oder ist es Tippkomfort am Telefon?**
*(Facette: Stimme / Beziehungsregister · leicht zu beantworten)*
Belegt ist «Hoi <Kurzform> **&** <Vorname> **&** <Vorname>» an drei Du-Kontakte, ohne Komma und
ohne abschliessendes «und», geschrieben am Telefon. **Frage:** setzt Raphael das «&» bewusst als
seine Form der Mehrfachanrede — auch am Desktop und auch im Sie —, oder ist es die kuerzeste
Eingabe auf der Handytastatur und am Rechner staende dort «Hoi A, B und C»? *Warum das
naeherbringt:* der Zwilling schreibt heute reflexartig «Hoi A, Hoi B, Hoi C» oder eine
Team-Sammelanrede und trifft die belegte Form nie.

**#2 — Nach welchem Kriterium ordnest Du die Namen in der Sammelanrede?**
*(Facette: Beziehungsregister · leicht zu beantworten)*
Die Reihenfolge folgt **nicht** der To/CC-Verteilung: der To-Empfaenger stand vorn, die beiden
CC-Empfaenger dahinter in **umgekehrter** Reihenfolge zur Kopfzeile. **Frage:** ordnest Du nach
Naehe, nach Zustaendigkeit fuer das Thema, nach Hierarchie — oder gar nicht? *Warum das
naeherbringt:* der Zwilling uebernimmt heute stumpf die Empfaengerreihenfolge des Kopfes und
erzeugt damit eine Rangfolge, die Raphael so nicht gesetzt haette.

**#3 — Ist die Teilung «Wir» fuer die Anforderung / «Ich» fuer die eigene Handlung bewusst?**
*(Facette: Haltung · Grundsatzfrage, ein Satz genuegt)*
Drei aufeinanderfolgende Saetze derselben Mail an den Unternehmer: «**Wir** senden Ihnen …» /
«… bitten **wir** Sie uns Ihre Planung zuzustellen.» / «**Ich** werde diese … koordinieren.»
**Frage:** ist das Bueros-«Wir» dort gesetzt, wo eine Vorgabe Verbindlichkeit braucht, waehrend
das «Ich» die eigene Leistung traegt — oder ist der Wechsel unbeabsichtigt? *Warum das
naeherbringt:* die DNA-Regel «kein vereinnahmendes wir» ist bisher pauschal formuliert; mit
dieser Bestaetigung bekaeme sie eine saubere Kante (unverbindliche Einschaetzung gegenueber der
Bauherrschaft: nie «wir» · Anforderung an den beauftragten Unternehmer: «wir»).

**#4 — Der Gruss unter einer Handy-Mail: bewusst oder Signatur-Automatik?**
*(Facette: Stimme · Beobachtungsauftrag mit Rueckfrage)*
Die Du-Mail vom 21.08. endet auf «Freundliche Gruesse», aber innerhalb des festen
`ms-outlook-mobile-signature`-Blocks. **Frage:** stoert es Raphael, dass die Handy-Signatur im
vertrauten Du den formellen Gruss setzt — oder ist ihm der Gruss dort schlicht gleichgueltig?
*Warum das naeherbringt:* davon haengt ab, ob der Zwilling bei Handy-Gattungen den Gruss
ueberhaupt waehlen soll, und ob eine Korrektur der Signatur eine Verbesserung waere.

**#5 — «_ » im Sie ist belegt; bleibt «–» damit ohne Anwendungsfall?**
*(Facette: Stimme · praezisiert 260819 #3)*
Batch 101 zeigt das «_ »-Bullet in der **formellen Sie-Mail** (Anhangs-Dateiliste). Die
Vermutung aus 260819 #3, «–» gehoere ins Sie und «_ » ins operative Du, ist damit widerlegt.
**Frage:** wofuer setzt Raphael dann «–» — fuer schlichte Aufzaehlungen ohne Entscheidungsgehalt,
oder ist die Wahl frei? *Warum das naeherbringt:* der Zwilling braucht eine Kante, sonst setzt er
ueberall «_ » und trifft die Faelle mit «–» nie.

## 260822b (Fidelity-Review, Fenster 22.07.2026) — fuenf Fragen, zwei davon entscheiden eine offene Rule

**#1 — Warum bleibt Othmar Stadelmann nach dem Telefonat im Sie, wo der Sanitaer- und der Tuerfachplaner ins Du sprangen?**
*(Facette: Beziehungsregister · leicht zu beantworten, entscheidet die offene Klausel in `rules/anrede-kontakte.md`)*
Die Mail vom 22.07.2026 18:40 nennt den Anruf in der ersten Zeile («Besten Dank fuer den
Telefonanruf.») und behaelt trotzdem «Geschaetzter Herr Stadelmann» — Sie, mit Nachname. Nach der
Treffen-/Kanalwechsel-Klausel (belegt an Mustafa Eren und Levi Hiltmann, in der Rule ausdruecklich
als «noch nicht bestaetigt» gefuehrt) haette die Stufe hier steigen muessen. **Frage:** liegt es an
der **Rolle** (Unternehmer/Trockenbauer statt Fachplaner im Kernteam), an der **Firma** (Estermann
als Ausfuehrende statt Planende), oder schlicht daran, dass der Anruf von ihm ausging? *Warum das
naeherbringt:* die Klausel wird heute vom Zwilling als allgemeine Regel gelesen und hat in diesem
Lauf einen von drei Anrede-Fehlgriffen verursacht. Mit Deiner Antwort bekommt sie eine Kante.

**#2 — Gibt es eine Vorrangregel zwischen dem Anlass-Opener und den drei Hebe-Regeln?**
*(Facette: Beziehungsregister · Grundsatzfrage, ein Satz genuegt)*
Der Zwilling verfehlte in diesem Lauf **alle drei** Anreden, jedes Mal weil eine belegte
Hebe-Regel ansprach und Du sie nicht angewandt hast: «Hoi Albin» trotz zwei Cc, «Guten Abend Jens»
trotz Maengelruege, «Geschaetzter Herr Stadelmann» trotz Telefonat. Jede der drei Regeln ist fuer
sich belegt, keine trennt den Fall, in dem sie **nicht** greift. **Frage:** ist der schlichte
Anlass-/Tageszeit-Opener bei Dir der Default, den ein Cc oder ein Gewicht nur in Ausnahmefaellen
hebt — oder entscheidest Du das jedes Mal frei nach Gefuehl? *Warum das naeherbringt:* wenn es
einen Default gibt, ersetzt eine Zeile drei Einzelregeln und heilt die haeufigste Drift dieser
Facette.

**#3 — Ist «Folgende Bemerkung:» als Einzahl gemeint, auch wenn mehrere Punkte folgen?**
*(Facette: Haltung / Arbeitsweise · leicht zu beantworten)*
Die Ruege an den Brandschutzexperten (22.07. 18:19) kuendigt die Beanstandung mit einer eigenen,
freistehenden Zeile an: «Folgende Bemerkung:» — Singular, obwohl darunter der falsche Dokumentstand,
die fehlende Unterschrift und zwei Korrekturauftraege folgen. **Frage:** setzt Du den Singular
bewusst, um die Sache klein zu halten und aus der Ruege keine Maengelliste zu machen — oder ist es
beim Tippen so entstanden? *Warum das naeherbringt:* der Zwilling loest die Zeile reflexhaft in
«Bei der Durchsicht sind mir folgende Punkte aufgefallen» auf, also genau in die Maengelliste, die
Du vermeidest. Ist der Singular Absicht, wird daraus eine harte Formregel.

**#4 — Der Aussagesatz mit Fragezeichen: eigene Form oder Tippgewohnheit?**
*(Facette: Denken · leicht zu beantworten; ergaenzt 260820b, dort ging es um die BITTE, hier um die Rueckfrage)*
An Stadelmann steht als eigener Absatz: «Ich denke dies wird durch Ihre verwendeten Platten
erfuellt**?**» — Aussagesatz-Stellung, allein durch das Fragezeichen zur Frage gemacht. Bekannt war
bisher nur die Praefix-Form «Sehe ich das Richtig: …?». **Frage:** ist das eine bewusste, weichere
Art zu fragen (die Antwort ist eigentlich klar, Du laesst dem Gegenueber aber das letzte Wort) —
oder waere «Erfuellen Ihre Platten das?» genauso richtig? *Warum das naeherbringt:* die Bitte endet
bei Dir belegt auf dem **Punkt**, die Rueckfrage offenbar auf dem **Fragezeichen**; der Zwilling
verwechselt beide bislang in beide Richtungen.

**#5 — Zweistelliges Jahr: gilt «17.06.26» ueberall ausser im Dateinamen?**
*(Facette: Stimme / Fachsignatur · leicht zu beantworten)*
In der Brandschutz-Mail datierst Du dreimal «17.06.26», nie «17.06.2026». **Frage:** ist das Deine
Form fuer jeden Datumsverweis im Fliesstext — auch in der foermlichen Sie-Mail, im Protokoll und in
der Offerte — oder gilt sie nur der schnellen operativen Mail, waehrend das ausgewiesene Datum im
Dokument vierstellig bleibt? *Warum das naeherbringt:* der Zwilling schreibt heute ausnahmslos
vierstellig aus; ohne die Kante wuerde er die Kurzform sonst ueberall setzen und die Dokumente
verderben.

## 260823 — Batch 102 (Fenster 21.–23.08.2026 sequenziell + Thread-Rueckgriff 2414 Thalwil)

> ✅ **BEANTWORTET am 23.08.2026 — kein Rueckschritt, sondern eine Kontext-Zugriffs-Aenderung:
> Commit `7b54407f` («kontingent-regime», 03.08.2026 23:08:37) verschob den kompilierten
> Facetten-Block samt der «_ »-Bullet-Regel aus dem @-importierten `rules/jans-dna.md` (laedt in
> jede Session) nach dem nicht importierten, nur lazily vor jedem Texterzeugnis zu lesenden
> `rules/jans-dna-facetten.md`. Der 16.07.-Text entstand VOR, der 20./21.08.-Entwurf NACH der
> Verschiebung — Hypothese (a) trifft zu, nicht als Skill-vs-Agent-Unterschied, sondern als
> Aenderung DESSEN, was automatisch geladen ist. Beleg und Einordnung: [[CLAUDE]],
> Korrektur am Abschnitt «Kontext-Kosten dieser KB» (der bis heute unveraendert behauptete, der
> Block laede weiterhin «in jede Session»). Nicht geklaert, weil ausserhalb des Korpus-Zugriffs
> dieses Laufs: WELCHER Erzeugungslauf den 20./21.08.-Entwurf konkret schrieb (drei fast
> zeitgleiche Fruehmorgen-Drafts an Behoerde/Unternehmer/Briefing, `logbuch/LOGBUCH.md` nennt ihn
> nicht namentlich) — plausibel ein unbeaufsichtigter Fruehlauf, der `jans-dna-facetten.md` nicht
> explizit nachlaedt, aber nicht mit letzter Sicherheit benannt.**

**#1 — Warum setzt der Zwilling das «_ »-Bullet mal und mal nicht?** Offen. Facette
[[stimme]] / [[arbeitsweise]]. Ein Hub-Erzeugnis vom **16.07.2026** (Du, an die Bauherrschaft)
traegt **acht** «_ »-Bullets, ein Hub-Entwurf vom **20./21.08.2026** (Sie, an einen Unternehmer)
**keines** — obwohl Batch 101 das Fehlen dort als groesste Zwillings-Luecke gemessen hat. Ein
Rueckschritt ueber fuenf Wochen ist unplausibel. Vermutungen, keine davon geprueft: (a)
verschiedene Erzeuger (Skill gegen Agent) mit verschiedenem Zugriff auf die Facetten-Artikel;
(b) Registerabhaengigkeit (Du-Bauherr gegen Sie-Unternehmer); (c) Gattungsabhaengigkeit
(Massnahmenpaket gegen Anhangs-Dateiliste). **Nicht geglaettet.** Zu klaeren durch Vergleich der
erzeugenden Laeufe, nicht durch weitere Korpusarbeit — das ist eine Frage an den Hub, nicht an
Raphael.

**#2 — Stellt Raphael zwei Rechtsauffassungen selbst gegeneinander, oder war das eine
Recherche-Einfuegung?** Frage an Raphael. Facette [[denken]] / [[fachsignatur]]. Die
Behoerdenanfrage vom 20.11.2025 legt kantonalen Leitfaden und Kommentarliteratur als zwei
ausformulierte Alternativen nebeneinander und laesst die Gemeinde waehlen. Die Denkfigur passt
zum belegten Varianten- und Spielraumdenken, **der Text ist aber als Stilquelle verworfen**
(Kernbefund 2: fehlerfreier Body gegen Tippfehler im selbstgetippten Betreff, «→»-Pfeil,
Fussnoten-Leerschlagrest). Konkret: **Ist die Doppel-Alternative Deine eigene Anfragetechnik,
oder kam sie aus einem Recherchewerkzeug?** Bei «eigene Technik» wird der Marker in [[denken]]
von Kandidat auf belegt gehoben.

**#3 — Wann traegt eine Weiterleitung gar keinen eigenen Satz?** Frage an Raphael. Facette
[[arbeitsweise]] / [[beziehungsregister]]. Am 22.08.2026 ging ein Bauherren-Thread samt zwei
Anhaengen **kommentarlos** an den Baumanagement-Partner — keine Anrede, keine Zeile, kein Gruss.
Der Zwilling erfindet in dieser Lage immer eine Begleitzeile und macht aus einer beilaeufigen
Uebergabe einen Auftrag. **Gilt die Nullform generell im eingespielten Du-Verhaeltnis, oder
haengt sie daran, dass der Betreff die Sache schon vollstaendig benennt?** Und: gibt es
Empfaenger, bei denen eine kommentarlose Weiterleitung unhoeflich waere?

**#4 — Soll der Zwilling Deine Aenderungen an seinen Entwuerfen erfahren?** Frage an Raphael,
**betrifft die Lernmechanik, nicht den Stil**. Facette alle. Batch 102 hat erstmals ein
`korrektur-delta` **im Inneren** eines gesendeten Hub-Erzeugnisses gefunden — ein Schlussabsatz,
den Du selbst ueberschrieben hast (16.07.2026), erkennbar nur an der Fehlerdichte. Das ist das
zweitstaerkste Lernsignal der KB, und es liegt heute **zufaellig** im Korpus: der Zwilling findet
es nur, wenn ein Batch zufaellig in dieser Mail landet. **Waere es Dir recht, wenn ein Lauf
gezielt nach diesem Muster sucht** (gesendete Mails mit Fehlerinseln in sonst sauberem Text)?
Der Ertrag waere hoch, der Aufwand gering — aber es hiesse, dass ein Loop systematisch nach
Deinen Korrekturen an Claude-Texten sucht.

**#5 — Die Fallen-Nummerierung im Echo-Schutz-Katalog (`wissen/twin/CLAUDE.md`) ist doppelt
vergeben.** Offen, Hub-intern, kein Handlungsbedarf fuer Raphael. «Siebte Falle» existiert zweimal
(13.08.2026 Batch 92 und der Mischfall-Block), «Neunte Falle» ebenfalls (14.08.2026 Batch 93 und
ein weiterer). Batch 102 hat seine beiden Eintraege darum **benannt statt nummeriert**
(«BETREFF-PROBE», «Nachtrag zur siebten Falle»). Ein Aufraeumen waere ein Umschreiben mitten in
einer gewachsenen, viel referenzierten Datei und faellt unter Rule 260811 (kein globales
Ersetzen); es braucht einen eigenen, bewusst gefuehrten Lauf mit `--numstat`-Kontrolle. **Bis
dahin: neue Eintraege benennen, nicht nummerieren.**

> ✅ **BEANTWORTET am 23.08.2026 (Vertiefungslauf) — die Diagnose war falsch, der Befund ein
> anderer: nicht «Siebte» und «Neunte» sind doppelt, sondern die «Achte Falle» fehlte ganz.**
> Ein Grep auf `**<Ordnungszahl> Falle, neu` in `wissen/twin/CLAUDE.md` liefert fuer «Siebte»
> und «Neunte» je genau EINEN Treffer; die weiteren Fundstellen waren Verweise (Tabellenzeile,
> Korrektur-Absatz), keine zweite Definition. Vier Stellen im Bestand referenzierten dagegen
> eine **«achte Falle»** als bekannt («Achte Falle, mustergueltig» in der Hilti-Joch-Tabelle,
> zwei Verweise im Fidelity-Abschnitt 260814/260820) — ohne dass sie je einen eigenen Absatz
> bekommen hatte. `git log -p --all -- wissen/twin/CLAUDE.md` (lokaler SSD-Klon) bestaetigt: der
> Text «Achte Falle» kommt in der gesamten Historie **nur als Verweis** vor, nie als eigene
> Ueberschrift — kein geloeschter Absatz, sondern eine nie geschriebene Definition. Die Achte
> Falle wurde jetzt an der chronologisch richtigen Stelle (zwischen Siebter und Neunter, beide
> 13./14.08.2026) nachgetragen: «Raphaels Rahmen um ein eingesetztes Fragment», belegt an der
> Hilti-Joch-Mail vom 13.08.2026 18:57 (Apple-Mail-Wrapper 4×, ~300 fehlerfreie Woerter im
> eingesetzten Block, EIN Tippfehler im selbst getippten Einleitungssatz davor). Der Katalog ist
> damit lueckenlos von der Dritten bis zur Neunzehnten Falle durchnummeriert; die Praxis, neue
> Eintraege zu benennen statt zu nummerieren, bleibt trotzdem bestehen (eine Nummer steht erst
> am Ende einer gewachsenen Notiz fest). `git diff --numstat` auf `wissen/twin/CLAUDE.md`:
> 39 Einfuegungen, 5 Loeschungen — die 5 geloeschten Zeilen sind exakt die falsche Diagnose,
> ersetzt durch ihre eigene Korrektur; kein Bestandsverlust.

## 260823b (Fidelity-Review, Fenster 28.07.–03.08.2026) — fuenf Fragen, die erste entscheidet dieselbe offene Rule wie 260822b

**#1 — Wirkt der persoenliche Kontakt auf die Anrede SOFORT oder erst kumulativ?** Frage an
Raphael, **entscheidet mit 260822b #1 zusammen die offene Klausel in `rules/anrede-kontakte.md`**.
Facette [[beziehungsregister]]. Zwei Golds dieses Laufs heben die Waermestufe gegenueber dem
belegten Opener: Linus Furrer (AfB) von «Guten Tag Herr Furrer» (24.07.) auf «Geschaetzter Herr
Furrer» (28.07., nach der Besprechung desselben Morgens), und Othmar Stadelmann von «Geschaetzter
Herr Stadelmann» (22.07., **trotz** Telefonat) auf «Geschaetzter Othmar» (03.08.). Damit ist der
Gegenbeleg von 260822 erklaerbar, ohne die Klausel zu verwerfen: sie wirkt **verzoegert**.
Konkret: **Hebt bei Dir ein einzelner Anlass die Stufe (Sitzung, Telefonat), oder braucht es
mehrere Begegnungen — und faellt sie je wieder zurueck, wenn der Kontakt abreisst?** Bei
«kumulativ» wird der Trajektorie-Marker von Kandidat auf belegt gehoben und der Zwilling rechnet
kuenftig mit dem **Datum** des Belegs, nicht nur mit dem Beleg.

**#2 — Ist «werter <Vorname>» eine bewusste Zwischenstufe?** Frage an Raphael. Facette
[[beziehungsregister]]. «Geschaetzter Othmar, werter Michael» (03.08.2026 13:22) setzt «werter»
erstmals vor einen **Vornamen** und in einem Du-Verhaeltnis; bisher war die Form nur im Sie und nur
vor Nachnamen belegt (Suljanovic, Kuebler, Duran). Konkret: **Ist «werter» fuer Dich schlicht eine
Stufe unter «geschaetzter» — unabhaengig von Sie und Du —, oder war es hier die Verlegenheitsform
fuer zwei ungleiche Empfaenger in einer Zeile?** Die Antwort entscheidet, ob der Zwilling die Form
frei staffeln darf oder nur im Stapel verwenden.

**#3 — Traegt die Verzoegerungsmail immer eine Verstaendnisbitte?** Frage an Raphael. Facette
[[arbeitsweise]] / [[haltung]]. Die Vertroestung an den Tuerlieferanten (03.08.2026 13:06) endet auf
«Ich hoffe, Du hast Verstaendnis fuer die Situation.» — eine sechste Endform neben Bedingung,
Nutzen, Nachmelde-Zusage, unverbundenen Fakten und vereinbartem naechstem Kontakt. Konkret:
**Steht diese Zeile bei jeder Verzoegerung, die aus Deinem eigenen Lager kommt, oder haengt sie
daran, dass der Empfaenger einen Termin verschieben muss und dafuer nichts kann?** Und: schreibst
Du sie auch im Sie?

**#4 — Warum benennst Du den Verursacher hier NICHT?** Frage an Raphael. Facette [[haltung]].
Dieselbe Mail sagt «Die noch ausstehende Freigabe wird eine Verschiebung des Montagetermins nach
sich ziehen» — unpersoenlich, obwohl die Ursache (interne Abstimmung der Bauherrschaft,
Ferienabwesenheit) im selben Text namentlich steht. Am 22.07. schriebst Du demselben Personenkreis
gegenueber «Du hast eine alte … Version verwendet», Aktiv, zweite Person. Die Lesart des Zwillings:
**bei fremdem Verschulden Aktiv, beim eigenen Lager unpersoenlich.** Konkret: **Stimmt das, oder
ist der Unterschied ein anderer** (Mangel gegen blosse Verzoegerung, Unternehmer gegen
Bauherrschaft)?

**#5 — Der Preview-Leak verfaelscht die Stimme-Note dieses Messverfahrens.** Offen, Hub-intern,
kein Handlungsbedarf fuer Raphael. Die Mail-Suche liefert je Treffer ein `summary` mit den ersten
drei bis vier Zeilen — also Anrede und Eroeffnungssatz — **bevor** die Blindfassung geschrieben
wird. Dieser Lauf hat die betroffenen Treffer darum nicht gutgeschrieben (Anrede Furrer bewusst
regelkonform statt leak-konform gesetzt, «Besten Dank fuer die Besprechung» und «Besten Dank fuer
Deine Geduld» nicht gewertet), aber das ist Disziplin, keine Mechanik. **Sauber waere, die
Kandidaten kuenftig nur ueber Betreff, Empfaenger, Datum und Anhangsliste auszuwaehlen und das
`summary`-Feld beim Zuschnitt gar nicht zu lesen** — technisch moeglich, weil die Auswahl diese
Felder ohnehin nicht braucht.

> ✅ **BEANTWORTET/UMGESETZT am 24.08.2026 (Vertiefungslauf) — der vorgeschlagene Fix ist als
> verbindliche Praxis dokumentiert, kein weiterer Klaerungsbedarf.** Kein Mail-Korpuszugriff in
> dieser Sitzung noetig, da die Frage nicht nach einem Fakt aus dem Korpus verlangt, sondern nach
> einer Methodik-Entscheidung, die der Hub selbst treffen kann. Umgesetzt: **Zwanzigste Falle**
> in `wissen/twin/CLAUDE.md` (Abschnitt «Sync») haelt fest, warum das `summary`-Feld die
> Blindfassung kontaminiert, und schreibt das Gegenmittel fest — Kandidaten nur ueber Betreff,
> Empfaenger, Datum und Anhangsliste waehlen, `summary` beim Zuschnitt nicht lesen, `read_resource`
> erst nach Kandidatenwahl und Blindfassung oeffnen. Dieselbe Regel jetzt auch verfahrenswirksam
> in `skills/twin/SKILL.md`, Workflow C Schritt 1, damit sie nicht nur dokumentiert, sondern vom
> naechsten `twin-fidelity-review`-Lauf tatsaechlich gelesen wird. Nichts Bestehendes geloescht.

## 260824b (Fidelity-Review, Fenster 04.08.–10.08.2026) — fuenf Fragen, die erste ordnet eine ganze Regelfamilie

**#1 — Haengst Du «Freundliche Gruesse» selbst an, oder macht das die Signatur?** Frage an Raphael,
**ordnet die gesamte Gruss-Regelfamilie im kompilierten Block**. Facette [[stimme]]. Die Mail vom
05.08.2026 17:04 traegt beides uebereinander: getipptes «Lieber Gruss» / «Raphael», darunter der
Block, der mit «Freundliche Gruesse» beginnt. Die Mail vom 07.08.2026 16:12 traegt nur den Block.
Der Zwilling behandelt die beiden bisher als **Alternativen** und muss sich fuer eine entscheiden.
Konkret: **Ist «Freundliche Gruesse» der fest eingestellte Kopf Deiner Outlook-Signatur — also gar
keine Entscheidung —, und der getippte Kurzgruss das Einzige, was Du je waehlst?** Und: haengt es
am Kanal (OWA mit Block, Apple Mail mobil ohne)? Bei «ja» faellt die halbe Gruss-Regel weg und wird
durch eine einzige ersetzt: im Du einen Kurzgruss tippen, im Sie nicht.

**#2 — Wann ist die Nullform richtig, und wann waere sie unhoeflich?** Frage an Raphael. Facette
[[arbeitsweise]] / [[beziehungsregister]]. Am 04.08.2026 08:34 hast Du auf die kommentierten
Brandschutz-Plaene mit einer Mail geantwortet, die **kein einziges eigenes Wort** enthaelt — nur den
Teams-Einladungsblock, Termin am naechsten Morgen 08:00. Zusammen mit der kommentarlosen
Weiterleitung vom 22.08. ([[QUESTIONS]] 260823 #3) ist das die zweite belegte Nullform. Konkret:
**Ersetzt ein gesetzter Termin bei Dir generell die Antwort, wenn die Sache im Betreff steht — und
gibt es Empfaenger oder Anlaesse, bei denen Du trotzdem einen Satz dazuschreibst?**

**#3 — Steht die wichtigste Frage bewusst zuunterst?** Frage an Raphael. Facette [[denken]] /
[[arbeitsweise]]. Beide Golds dieses Fensters liefern zuerst vollstaendig den Sachstand und stellen
die eigentliche Frage erst am Schluss unter einem nackten Label: «Grundsaetzliche Fragestellung:
Kannst Du mit der bestehenden Vermassung die LBW einmessen?» (05.08.) und «Frage:» (07.08.). Der
Zwilling setzt seine Bitte reflexhaft nach oben, damit sie nicht untergeht. Konkret: **Stellst Du
die Frage ans Ende, weil der Empfaenger sie ohne die Fakten davor nicht beantworten kann — oder
weil eine Frage zuoberst wie eine Forderung wirkt?** Die Antwort entscheidet, ob die Reihenfolge
eine Denk- oder eine Hoeflichkeitsregel ist.

**#4 — Wofuer dankst Du, und wofuer nicht?** Frage an Raphael. Facette [[stimme]]. Die Mail an den
Unternehmer (05.08.) oeffnet mit «Besten Dank fuer Deine E-Mail.», die an die Projektleitung
(07.08.) **ohne jede Dankformel**, obwohl dort zwei ausdrueckliche Fragen an Dich gestellt worden
waren. Der Unterschied koennte sein: gedankt wird fuer eine **Lieferung** (er schickte kommentierte
Plaene), nicht fuer eine **Anforderung** (sie stellte Fragen). Konkret: **Stimmt das, oder haengt
der Eingangsdank eher am Register (Du mit Dank, Sie ohne) beziehungsweise an der Threadlaenge?**

**#5 — Die Zwanzigste Falle greift beim Suchergebnis nicht.** Offen, Hub-intern, kein
Handlungsbedarf fuer Raphael. `wissen/twin/CLAUDE.md` und `skills/twin/SKILL.md` schreiben seit dem
24.08. fest, das `summary`-Feld beim Kandidaten-Zuschnitt **nicht zu lesen**. Der Connector liefert
es aber **unaufgefordert** in jedem Treffer der Ergebnisliste; die Regel ist damit nur als
Selbstdisziplin durchsetzbar, nicht mechanisch. Dieser Lauf hat sie so weit wie moeglich gehalten
(Kandidatenwahl bewusst auf die drei leak-armen Treffer, betroffene Anreden nicht gutgeschrieben) —
und **einen mechanischen Ersatz gefunden**: der Werkzeug-Detektor aus Batch 103
(`internetMessageId` auf `*.PROD.OUTLOOK.COM` ⇒ eigene Hand) waehlt Gold **ohne jeden Textkontakt**.
**Empfehlung fuer den naechsten Lauf: zuerst nach Message-ID filtern, dann nach Betreff-Probe, und
das `summary` gar nicht erst in die Auswahl einbeziehen.**

## 260825 (Batch 104)

**#1 — Wird «du» in eigener Hand klein geschrieben, und soll der Zwilling das übernehmen?**
Gemessen am Fenster 24.08.2026: Du-Gross-Quote **0.667** in eigener Hand, **0.0** im selbst
getippten Kurztext, **1.0** in den Hub-Erzeugnissen — beide Extreme am selben Tag, im Fall Eren
in **derselben Mail** (Naht zwischen Vorspann und übernommenem Entwurf). Die DNA-Kernzeile
«Du/Dich/Dir/Deine immer gross» beschreibt damit belegbar den Zwilling, nicht Raphael.
Drei mögliche Antworten, die alle vertretbar sind:
(a) *«Gross ist gewollt»* — die Kleinschreibung ist Tippgeschwindigkeit, der Zwilling soll sie
    ausdrücklich **nicht** nachahmen; die Rule bleibt, das Wiki hält den Befund als reines
    Echo-Detektionsmerkmal.
(b) *«Registerabhängig»* — gross im Sie und in ausgehenden Dokumenten, klein in kurzen
    Du-Nachrichten unter etwa 30 Wörtern.
(c) *«Klein ist richtig»* — die Rule wird korrigiert.
**Bis zum Entscheid schreibt der Zwilling unverändert gross.** Eine Kernzeile der DNA fällt nicht
aus einem Lauf, und die Kleinschreibung ist der Fehler, den man einem Erzeugnis am ehesten
verzeiht. Beleg: [[stimme]], Abschnitt Batch 104.

**#2 — Sollen die Registerzeilen der Claude-Ära rückwirkend gegen den Werkzeug-Detektor
geprüft werden?** Der Detektor (`internetMessageId` auf `PROD.OUTLOOK.COM` ⇒ eigene Hand) existiert
erst seit dem 24.08.2026. Jede Anrede-/Gruss-Stufe, die seither im Beziehungsregister aus einer
Mail der Claude-Ära abgeleitet wurde, kann aus einem Claude-Erzeugnis stammen. Belegter Fall aus
diesem Batch: derselbe Kontakt, acht Minuten Abstand, «Lieber Levi» (Hub) gegen «Hoi Levi»
(eigene Hand) — der Zwilling greift **eine Stufe zu förmlich**, nie zu locker.
Vorschlag zur Entlastung, ohne neuen Lauf: **keine Rückprüfung des ganzen Bestands**, aber eine
Pflicht **vor jeder Rule-Änderung** an `anrede-kontakte.md` — die Belegmail wird auf ihre
`internetMessageId` geprüft, bevor eine Zeile geschrieben oder geändert wird. Kostet nichts, weil
die ID in jeder Trefferliste ohnehin mitkommt. Braucht Raphaels Ja, weil es eine Rule-Vorschrift wäre.

**#3 — Nivellier-Zeile: neunter Beleg dagegen, null dafür.** Keine neue Frage, nur der Zähler
(offen seit 15.08.2026, sechs Nachfragen). Ab hier **nicht mehr neu gestellt**, nur noch gezählt,
damit der QUESTIONS-Kopf frei bleibt für Ungeklärtes. Der Wortlaut-Vorschlag von 260815 #4 gilt
unverändert: nivellieren nur «bei grossen oder unbekannten Verteilern», sonst gestaffelt anreden.

## 260825b (Fidelity-Review, Strang Albertstrasse 7 / Nova) — vier Fragen, zwei Hub-interne Notizen

**#1 — Hängt der getippte Kurzgruss an der persönlichen Begegnung?** Frage an Raphael. Facette
[[stimme]]. **Gehört zusammen mit 260824b #1 beantwortet — beide ordnen dieselbe Regelfamilie.**
Zwei Mails an denselben Empfänger, dieselbe Anrede «Geschätzter Roman,», dieselbe Gattung
(Lieferung mit Anhängen), zwölf Tage auseinander: die vom **17.07.** trägt **nur** den
Signaturblock, die vom **29.07.** «**Lieber Gruss und bis bald**» darüber. Der Unterschied, den
wir sehen: am 28.07. hattet Ihr telefoniert und ein Wiedersehen stand an, am 17.07. war Roman in
den Ferien. Konkret: **Tippst Du den Kurzgruss, wenn Ihr Euch gerade gesehen/gesprochen habt oder
bald seht — und lässt ihn weg, wenn der Kontakt rein schriftlich bleibt?** Der Zwilling koppelt
ihn heute an die Gattung («operative Zwischenfrage → kurz, Lieferung → FG») und liegt damit bei
beiden Mails falsch.

**#2 — Erklärst Du Deine Anhänge bewusst nie?** Frage an Raphael. Facette [[arbeitsweise]].
Beide Nova-Golds nennen den Anhang und sagen **kein Wort** über seinen Inhalt: «Im Anhang sende
ich Dir den Baubeschrieb …», «… die Zusammenstellung des KV's Albertstrasse 7.» Der Zwilling
schob in beiden Blindfassungen einen Erklärabsatz nach (Gliederung, Systematik, markierte
Annahmen) — **fünf frei erfundene Sachaussagen über Dokumente, die er nie gesehen hat**, und er
schrieb dadurch rund doppelt so lang wie Du. Konkret: **Stimmt die Vermutung, dass Du nichts
beschreibst, weil der Empfänger den Anhang ohnehin öffnet — oder erklärst Du sehr wohl, nur dann,
wenn der Empfänger fachfremd ist oder das Dokument neu in seiner Art?** Die Antwort entscheidet,
ob der Zwilling die Erklärung ganz streichen oder an eine Bedingung knüpfen soll.

**#3 — Die Registerzeile Steinmann sagt das Gegenteil des Gemessenen.** Frage an Raphael.
Facette [[beziehungsregister]], betrifft `rules/anrede-kontakte.md`. Dort steht: «Salut Roman»
warm, «fällt bei Mahn-/Geldkontext auf «Guten Tag» zurück». Beide Golds dieses Laufs **sind**
Geldkontext (KV-Zusammenstellung mit Deiner Rechnung, Baubeschrieb zum KV) und tragen **weder**
«Salut» **noch** «Guten Tag», sondern «**Geschätzter Roman,**» — also die Stufe *hinauf*, nicht
hinab. Das passt zur Klausel «Gewicht des Anliegens schlägt den Routine-Default», widerspricht
aber der Rückfall-Formulierung derselben Zeile. Konkret: **Kann die Rückfall-Halbzeile gestrichen
und durch «bei Geld-/Vertragsanlass «Geschätzter Roman»» ersetzt werden?** Die Rule-Zeile ist
**nicht** selbst geändert worden (Rückfragepflicht).

**#4 — «Geschätzte Firma <Name> AG» — Einzelfall oder Deine Form für Firmen-Sammeladressen?**
Frage an Raphael. Facette [[beziehungsregister]]. Am 29.07.2026 hast Du das
Kreditoren-Sammelpostfach der Huwiler Services AG so angeredet, ohne Schlusskomma — obwohl die
Gegenseite mit «Sehr geehrte Damen und Herren» eröffnet hatte. Der Zwilling kennt bisher nur
namenloses «Guten Tag» (triviale Bitte) und «Sehr geehrte Damen und Herren» (gewichtiges
Ersuchen) und wählte in der Blindfassung «Guten Tag». Konkret: **Ist «Geschätzte Firma X AG»
Deine Standardform, sobald die Sammeladresse einen Firmennamen trägt und kein Ansprechpartner
bekannt ist?** Die Form ist als Marker eingetragen; bei «Einzelfall» wird sie wieder herabgestuft.

**#5 — Hub-intern, kein Handlungsbedarf: die Prüfaufgabe aus 260813 #1 ist gelaufen und hat die
Hypothese NICHT bestätigt.** Dort stand, die Satzlänge über dem Korpusband 11.9–14.3 (Batch 90:
16.5 W, Batch 91: 17.6 W) sei möglicherweise ein **KISPI-Gattungseffekt** und an einem Fenster
**ausserhalb KISPI** zu prüfen. Dieser Lauf hat genau das getan — Strang Albertstrasse 7 / Nova,
drei Golds — und misst **16.6 W**, praktisch identisch mit Batch 90. Damit ist die
KISPI-Hypothese **geschwächt, nicht bestätigt**; die naheliegendere Erklärung ist, dass das
**Korpusband selbst veraltet** ist (es stammt aus den 2025er-Batches 03/04/05/08/10/12).
⚠ **Nicht entschieden**, weil die Stichprobe mit **116 Wörtern** ein Fünftel bis ein Achtel der
Batches 90/91 beträgt und ein einziger langer Satz den Mittelwert um rund zwei Wörter verschiebt.
**Empfehlung: das Band erst nach einer Messung über ≥ 500 W ausserhalb KISPI neu setzen** — und
bis dahin keine Drift-Aussage auf die Satzlänge stützen.

**#6 — Hub-intern: Gegenmessung zur Du-Gross-Frage 260825 #1.** Dieser Lauf misst
Du-Gross **1.0** (5/5) in eigener Hand — gegen **0.667** am 24.08. Beide Nova-Golds sind
**überlegte Desktop-Mails** (OWA, mehrere Anhänge), der 0.0-Fall vom 24.08. war ein hastiger
Kurzvorspann. Das stützt Antwortmöglichkeit **(b) «registerabhängig»** aus 260825 #1 (gross in
überlegten Mails, klein in kurzen Du-Nachrichten) und schwächt (c) «klein ist richtig».
Kein neuer Handlungsbedarf; die Frage an Raphael bleibt unverändert offen, der Zwilling schreibt
weiter gross.

**#7 — Zähler, nicht neu gestellt:** Nivellier-Zeile in `rules/anrede-kontakte.md` — **zehnter**
Beleg dagegen (Gold C: Sammelpostfach im To, Verwalterin im Cc, nur der Handelnde angeredet),
null dafür. Offen seit 15.08.2026.

## 260826 (Batch 105, Fenster 25.08.2026) — eine Rule-Frage, zwei Hub-interne Befunde

**#1 — Der Brandschutz-/Trockenbau-Fachbetrieb ist im Du. Soll die Zeile in
`rules/anrede-kontakte.md` nachgezogen werden — und wie?** Frage an Raphael. Facette
[[beziehungsregister]], betrifft eine **importierte** Rule.
Belegt am 25.08.2026 aus eigener Hand (CSS-Fingerabdruck + Mobile-Signatur + drei
Fehlerinsel-Treffer): «Geschaetzter <Vorname>», durchgehend «Dich/Du/Dir». Am **22.07.2026**
schrieb derselbe Kontakt-Thread noch «Geschaetzter Herr <Nachname>» im Sie — **nach einem
Telefonat**. Genau dieser Fall steht heute als ⚠-**Gegenbeleg** in der Rule und begrenzt dort die
Klausel «ein persoenliches Treffen hebt das Register».
Der neue Beleg widerlegt den Gegenbeleg nicht, er **datiert** ihn: der Wechsel kam, aber gut einen
Monat spaeter. Das stuetzt die Fassung «Trajektorie, kein Standbild» in `jans-dna-facetten.md`
und spricht gegen die Handlungsanweisung «Kalender des laufenden Tages pruefen» in
`anrede-kontakte.md`. Zwei vertretbare Antworten:
(a) *Zeile ergaenzen, ⚠-Absatz stehen lassen* — der Kontakt bekommt eine Du-Zeile mit Datum
    «seit 25.08.2026, davor Sie», der Gegenbeleg bleibt als historischer Beleg der Verzoegerung.
(b) *Zeile ergaenzen UND den ⚠-Absatz umschreiben* — die «Kalender pruefen»-Anweisung faellt
    zugunsten der Trajektorien-Fassung; dann ist auch 260822b #1 miterledigt.
**Nichts selbst geaendert** (`anrede-kontakte.md`: «Claude aendert den Wortlaut einer Rule nicht
selbst»). Bis zum Entscheid gilt der belegte Opener desselben Kontakts — **also neu das Du.**

**#2 — Hub-intern, entwertet einen eigenen Vorschlag: die Bestands-ID-Pflicht aus 260825 #2 ist
ueberholt.** Dort war vorgeschlagen, vor jeder Rule-Aenderung an `anrede-kontakte.md` die
`internetMessageId` der Belegmail zu pruefen. **Diese ID beweist seit dem 25.08.2026 nichts mehr**
(Detektor gefallen, siehe [[arbeitsweise]] Batch 105). Der Vorschlag ist nicht falsch, aber sein
Pruefmittel ist es: er muss vor der Entscheidung auf den **CSS-Fingerabdruck**
(`Aptos,Calibri`/`#000000` ⇒ Hub gegen `Aptos,Arial`/`rgb(0,0,0)` ⇒ eigene Hand) umgeschrieben
werden. Kein Handlungsbedarf fuer Raphael ausser: **260825 #2 nicht in der alten Fassung
genehmigen.**

**#3 — Hub-intern, Lehre fuer kuenftige Waechter.** Die Vorbedingung, mit der Batch 104 den
Detektor absicherte (`grep -rn "sendMail" connectors/ scripts/`), ist **heute noch leer** und der
Detektor ist trotzdem gefallen — der Graph-Versand lief ueber die **m365-CLI von Hand**, nicht
ueber einen Connector. **Eine Vorbedingung, die nur den bekannten Weg prueft, sichert nichts.**
Richtig waere gewesen, den **Zustand** zu messen (Absendeweg der letzten Hub-Mail), nicht ein
Werkzeug zu erraten. Gleiche Familie wie `auto-verbesserungen` 260730b/260807, hier verschaerft:
das leere Ergebnis wurde als Entwarnung gelesen. Keine Frage an Raphael, nur festgehalten.

**#4 — Nivellier-Zeile: zehnter Beleg dagegen, null dafuer.** Nur der Zaehler (Beschluss aus
260825 #3: nicht mehr neu gestellt). Fuenf Mitleser im Cc, keiner in der Anredezeile.

## 260826b (Fidelity-Review, Thread-Rueckgriff Wartstrasse 8) — eine Sperre, eine Rule-Frage, vier Praezisierungen

**#1 — Hub-intern, KEINE Frage an Raphael, aber die wichtigste Zeile dieses Laufs: der Strang
AG-Gruendung/Notariat ist als Gold GESPERRT.** Der Fidelity-Lauf 260825 hat ihn als offenen
Nicht-KISPI-Strang empfohlen. Er ist **claude-aera**: die Mails ans Notariat Wiedikon
(03.08.2026 an Mathies, 12.08.2026 ans Sammelpostfach) tragen fehlerfreie Syntax ueber mehrere
Absaetze, sauber gestufte Verweisketten und Normzitate im Fliesstext, aber **keine einzige
Fehlerinsel**; im selben Strang steht ein Loop-Briefing an `rj@` selbst. Ihre
`internetMessageId` ist zeichengleich mit der von Raphaels eigenen Apple-Mail-Sendungen — der
Strang ist ueber die ID **nicht** von echtem Gold zu trennen (Batch 105 Kernbefund 1, hier an
einem zweiten unabhaengigen Strang bestaetigt).
**Lehre, die ueber diesen Strang hinausgeht: eine Fenster-/Strang-Empfehlung des Vorlaufs ist
keine Autorschafts-Freigabe.** Wer sie uebernimmt, prueft den Strang selbst.

**#2 — «Lieber Gruss, Raphael» auf EINER Zeile, bei einer Lieferung mit Substanz und der
eigenen Rechnung. Frage an Raphael — bitte ZUSAMMEN mit 260824b #1 und 260825b #1
beantworten.** Facette [[stimme]].
Gold A (08.02.2026, eigene Rechnung + Grobkostenschaetzung an die Bauherrin, Du, vom
Mobiltelefon) schliesst mit «**Lieber Gruss, Raphael**» — einzeilig, mit Komma — ueber dem
Signaturblock, dessen erste Zeile «Freundliche Gruesse» lautet. Gold C (01.06.2026, dieselbe
Empfaengerin, dasselbe Geraet, fremde Rechnung) traegt **gar keinen** getippten Gruss.
Der kompilierte Block sagt fuer beide «Lieferung mit Substanz → FG+Block» und kennt den
Kurzgruss nur **zweizeilig**. Damit stehen jetzt **drei** offene Fragen derselben Familie:
- 260824b #1: steht «Freundliche Gruesse» fix in Deiner Signatur (dann beweist es keinen Entscheid)?
- 260825b #1: trennt die **Begegnung** die beiden Grussformen, nicht die Gattung?
- 260826b #2 (neu): ist «Lieber Gruss, Raphael» einzeilig eine **eigene Stufe** — oder dieselbe
  Stufe, nur am Telefon getippt?
Eine einzige Antwort auf alle drei ersetzt voraussichtlich eine halbe Regelseite im teuersten
Block des Harness. **Nichts in den Block gehoben**, solange die aelteren zwei offen sind.

**#3 — Nicht-Marker, ausdruecklich festgehalten: das Komma nach der Einzelanrede traegt keine
Bedeutung.** Facette [[beziehungsregister]]. Keine Frage, eine Warnung an kuenftige Laeufe.
«Geschaetzte Undine» (Gold A, **ohne** Komma) und «Geschaetzte Undine,» (Gold C, **mit** Komma):
gleiche Empfaengerin, gleiche Waermestufe, gleiches Geraet, gleicher Anlasstyp (Geld). Der Block
regelt das Komma bei der **Firmen**-Anrede (260825, ohne) und bei der **gestapelten** Anrede
(260819, nur auf der ersten Zeile); die Einzelanrede ist ungeregelt — **und soll es bleiben**.
Wer aus einem Einzelbeleg eine Kommaregel baut, kompiliert Rauschen in den teuersten Block.

**#4 — Registerluecke geschlossen, zur Kenntnis: Undine Hofer fehlte in
`rules/anrede-kontakte.md`.** Facette [[beziehungsregister]]. Sie ist die Bauherrenvertreterin
Wartstrasse 8 und in vier Fidelity-Laeufen als Du-Kontakt belegt; die Rule fuehrte keine Zeile.
**Zeile nachgetragen** mit Belegkante, nach der Praxis der Batch-99/100-Zeilen (Wissens-Chef
Run 39) — belegte Beobachtung aus Raphaels eigener Hand, kein geaenderter Regel-Wortlaut.
Bitte bei Gelegenheit gegenlesen; falsch waere sie nur, wenn das Du nicht mehr gilt.

**#5 — Praezisierung der offenen Pruefaufgabe 260825b #5: die Satzlaengen-Stichprobe muss
FLIESSTEXT sein, nicht nur Nicht-KISPI.** Facette [[stimme]], Hub-intern.
`stilmetrik.py` misst an Gold B (Leistungsverzeichnis im Mail-Body) **30.7 W** — die zehn
LV-Positionen tragen keine Satzzeichen und werden zu Saetzen verklebt. Der Fliesstext-Anteil
liegt bei rund 14 W. Am Nicht-KISPI-Fliesstext dieses Laufs: Gold A **11.0 W**, Gold C
**7.3 W** — beide im bzw. unter dem alten Korpusband 11.9–14.3. Das **schwaecht** die Lesart
von 260825 Befund 7, das Band sei veraltet (dort 16.6 W); naeher liegt
**Gattungsabhaengigkeit**. Kumulierte Nicht-KISPI-Fliesstext-Stichprobe: **204 W von
verlangten 500**. Bis dahin **keine** Drift-Aussage auf die Satzlaenge stuetzen.
**Am Werkzeug wurde bewusst nichts geaendert** — eine Listenerkennung mitten in einer laufenden
Messreihe waere eine Aenderung am Messgeraet, nicht an der Messung. Wenn, dann vor dem naechsten
Bandentscheid und mit Regressionsprobe an den alten Batches.

**#6 — Nivellier-Zeile: elfter Beleg dagegen, null dafuer.** Nur der Zaehler (Beschluss aus
260825 #3). Gold C: die Bauherrin im To, der Unternehmer im Cc, angeredet wird nur, wer zahlen
muss.

## 260827 (Batch 106, Fenster 26.08.2026) — zwei Rule-Fragen, eine Selbstkorrektur, ein Hub-interner Befund

**#1 — Nivelliert Raphael bei grossen Verteilern, oder ist «Geschätzte Alle» + Du-Kollektiv ein
eigenes drittes Register?** · *Facette: Beziehungsregister* · **offen, an Raphael**

`rules/anrede-kontakte.md` trägt seit dem 21.08.2026 einen ⚠-Vermerk: die Zeile «bei mehreren
Empfängern die höflichste Anrede wählen» ist durch sechs Belege der **gestaffelten** Anrede
widerlegt, der Entscheid steht aus. Der vorgeschlagene Ersatzwortlaut wollte das Nivellieren
«bei grossen oder unbekannten Verteilern» ausdrücklich beibehalten. **Genau dieser Rest ist am
26.08.2026 gefallen:** die Terminmail an **elf** Empfänger mit belegt gemischten Registern
schreibt «Geschätzte Alle» und im Text «sende ich **Euch**» — das kollektive **Du**, also gerade
**nicht** die höflichste Stufe. Die Achter-Verteilermail desselben Tages staffelt die Anrede und
führt im Fliesstext ebenfalls Du-Kollektiv.

Die Frage an Raphael ist damit präziser als bisher: **Gilt das Kollektiv-Du bei jedem grossen
Verteiler, oder nur, wenn die Mehrheit oder der Kern des Verteilers ohnehin im Du steht?** Für
einen grossen Verteiler mit **unbekannten** Empfängern gibt es weiterhin keinen Beleg. Bis zum
Entscheid gilt: bei vertrauten Projektverteilern «Geschätzte Alle» + Euch; bei unbekannten
Empfängern nachfragen statt raten. **Claude ändert den Rule-Wortlaut nicht selbst.**

**#2 — «Geschätzte Frau <Vorname>»: darf der Zwilling die Fehlerklasse korrigieren?** ·
*Facette: Beziehungsregister* · **offen, an Raphael**

Zweiter unabhängiger Beleg derselben Fehlerklasse: «Geschätzte Frau Amanda» an eine Empfängerin,
die im Outlook-Anzeigenamen «Valentin Michelle Amanda» heisst (Nachname **Valentin**) — genau wie
das schon mit ⚠ dokumentierte «Herr Mustafa» für Mustafa Eren (Nachname Eren). Die Ursache ist
mechanisch: Adressbücher der Bauherrschaft führen «Nachname Vorname Zweitvorname», die Mail geht
vom Telefon aus, der letzte Namensteil wird für den Nachnamen gehalten.

Der Zwilling lernt Stil, nicht Tippfehler — hier wäre er seinem Original also **überlegen**.
Vorgeschlagene Regel, die Raphael bestätigen oder verwerfen soll: **vor «Herr/Frau <X>» prüfen,
ob `<X>` im Anzeigenamen an erster Position steht (dann Nachname) oder an letzter (dann Vorname);
bei Unklarheit die im Adressteil belegte Form nehmen oder auf «Geschätzte/r <Vorname>»
ausweichen.** Bis zum Entscheid handelt der Zwilling so, meldet die Korrektur aber nicht als
Stilabweichung.

**#3 — Selbstkorrektur zu 260825 #1 (Du-Gross-Quote): die Frage hatte eine dritte Antwort.** ·
*Facette: Stimme* · **beantwortet, Hub-intern**

Gefragt war, ob die Du-Gross-Quote **(a)** Autorschaft oder **(b)** Register misst. Sie misst
**keines von beidem**: `stilmetrik.py` rechnete `du_total = max(du_cap + du_low, 1)` und gab bei
**null** Du-Formen still `0.0` aus — ununterscheidbar von «alle klein geschrieben». Drei der
sechs Golds dieses Batches sind solche Leermessungen; Batch 105s «0.0 an einem 25-Wörter-
Kurzvorspann» ebenfalls. Der ganze Batch trägt **4 Du-Formen auf 432 Wörter**, ein Gold eine
Quote von 1.0 auf **n = 1**. Werkzeug korrigiert (`None` bei leerer Grundgesamtheit,
`du_formen_total` mitgeführt, Regressionsprobe gefahren). Die **Du-Grossschreibung bleibt ein
harter Stil-Marker**; die **Quote taugt nicht als Detektor**. Damit ist auch die Sperre für die
Neukompilierung des Gehirns nicht mehr an dieser Frage aufgehängt (siehe #4).

**#4 — Der Satz «Gehirn seit N Batches nicht neu kompiliert» war falsch. Gemessen statt
fortgeschrieben.** · *Hub-intern, kein Raphael-Entscheid nötig*

Seit Batch 93 trägt jeder `_INGESTED.md`-Abschnitt die Warnung «⚠ Gehirn NICHT neu kompiliert,
N-ter Batch in Folge», zuletzt «vierzehnter», dazu den Reservestand «21.08.2026, 32'796 B von
34'000 B — Fortschreibung, kein Messwert». **Dieser Lauf hat gemessen. Drei Dinge daran waren
falsch, alle in derselben Richtung:**

1. **Falsche Datei.** Die Warnung verweist auf `rules/jans-dna.md` und dessen «Auto-Block, der
   die Du-Gross-Kernzeile trägt». Dort steht seit der Auslagerung vom **03.08.2026**
   (Grundkontext-Diät Runde 2, Freigabe Raphael) **gar kein Auto-Block mehr** — die Datei ist
   3'870 B gross und enthält keine Sentinels. `build_dna.py` schreibt seit demselben Tag nach
   **`rules/jans-dna-facetten.md`** (nicht importiert, vor jedem Texterzeugnis zu lesen).
2. **Der Block ist aktuell, nicht veraltet.** Der kompilierte Block auf Platte ist **zeichengleich**
   mit dem, was aus den heutigen Facetten frisch entstünde (33'965 B gegen 33'965 B, Vergleich
   gefahren). Datei zuletzt geschrieben 26.08.2026 06:02. Es gab nichts zu kompilieren.
3. **Batch-Abschnitte wirken gar nicht aufs Gehirn.** `extract_block()` zieht je Facette
   ausschliesslich den **Do/Don't-Block**. Beleg-Prosa wie die Batch-Abschnitte dieses Laufs
   fliesst nie ein — deshalb ändert sich der Block trotz sechs neuer Abschnitte um **0 B**. Wer
   das Gehirn ändern will, muss den Do/Don't-Block bearbeiten, nicht den Artikel verlängern.

**Der echte Befund ist ein anderer und ernster: die Reserve beträgt 35 B von 34'000.**
Facettenweise: Stimme 7'433 · Arbeitsweise 6'369 · Beziehungsregister 6'234 · Haltung 6'110 ·
Fachsignatur 4'898 · Denken 2'773 B. Die **nächste** Erweiterung eines Do/Don't-Blocks lässt
`build_dna.py` abbrechen — der Wachstums-Riegel greift wie gebaut und schreibt nichts. Vor der
nächsten Regeländerung im Gehirn ist also **zuerst zu verdichten** (Stimme ist der grösste und
älteste Block) oder `MAX_AUTO_BYTES` bewusst anzuheben. **Nicht dringend, aber beim nächsten
Regelbedarf blockierend** — darum hier notiert, nicht im Fristen-Register (kein operativer Befund
nach `auto-verbesserungen` 260803).

**Merksatz, dritter Beleg derselben Familie an einem Tag:** eine Zustandsaussage, die dreizehnmal
abgeschrieben und nie gemessen wurde, wird durch Wiederholung nicht wahrer. Gleiche Familie wie
Rule `auto-verbesserungen` 260730b/260807 — und wie die beiden Werkzeug-Befunde dieses Laufs.

---

## 260827b (Fidelity-Review 27.08.2026) — vier neue Fragen, davon eine an die Methode selbst

**#1 — Englische Anrede: «Hi» oder «Hello»? Der Block hat den Zwilling in den Fehlgriff
geführt.** · *Facette [[stimme]] / [[beziehungsregister]]* · Entscheid Raphael nicht nötig,
Beleg genügt — hier nur zur Kenntnis dokumentiert.

Der Block führte seit 260806 «**Englisch: «Hello <Vorname>,», nicht «Hi»**». Die Blindfassung
folgte dieser Regel und schrieb «Hello Hleb,», das Gold schreibt «**Hi Hleb**». Zwei
unabhängige Belege desselben Kontakts, **16.02.2026** und **27.06.2026** — also vor und nach dem
Hub, mithin keine Claude-Kontamination. Der ursprüngliche 260806-Beleg stammt vom
**3D-Freelancer** (Yorck), nicht vom Webprogrammierer. Die Regel war nie falsch, sie war zu
weit: die englische Anrede hängt am **Kontakt**, nicht an der Sprache. Marker im Block
entsprechend korrigiert, nicht gestrichen.

**Der Nebenbefund ist der wichtigere:** dies ist der erste gemessene Fall, in dem eine
**übergeneralisierte Blockregel den Zwilling aktiv vom Gold wegführt**. Bisher wurde Drift immer
als «Marker fehlte» oder «Marker nicht angewandt» gebucht. Beim nächsten Übertragen eines
Einzelbelegs in den Block darum den **Geltungsbereich mitschreiben** (Kontakt, Gattung, Register)
— eine Regel ohne Geltungsbereich wird zur Regel für alles.

**#2 — Trägt die erbetene Auskunft an einen Lieferanten den Service-Satz? (Nachtrag zur
Gattungsregel)** · *Facette [[stimme]]* · Entscheid Raphael **nicht** nötig, zwei Belege.

Der Block trennt seit 260807/260808: wer für sich selbst etwas erbittet, hält den Kanal offen;
wer liefert oder meldet, hört nach dem letzten Sachsatz auf. Gold B (25.06.2026, Sachstand an die
Sachbearbeiterin der Sprinklerfirma) **liefert** — und trägt trotzdem «Bei Fragen oder
Unklarheiten stehe ich Ihnen jederzeit gerne zur Verfügung.» Dieselbe Formel steht in der
Anfrage-Mail desselben Vorgangs (03.06.2026 an den BU-Leiter). Die Blindfassung liess den Satz
weg — **erstmals in dieser Richtung**; die letzten Läufe massen durchweg das Gegenteil (Satz
gesetzt, wo keiner steht).

Auflösung, im Block nachgezogen: nicht «Amt» ist das Kriterium, sondern die **erbetene**
Auskunft. Wer eine Frage beantwortet, die ihm gestellt wurde, hält den Kanal offen — gleich ob
Amt oder Lieferant. Wer ungefragt liefert oder meldet, nicht.

**#3 — Wie erkennt der Harness ab jetzt seine eigenen Erzeugnisse? Der Block ist zum
Autorschafts-Detektor geworden.** · *Methodenfrage, Hub-intern* · **Kein Raphael-Entscheid
nötig, aber die wichtigste methodische Neuerung dieses Laufs.**

Batch 105 (25.08.) hat den bisherigen Werkzeug-Detektor fallen sehen: Message-ID und
OWA-Fingerabdruck trennen Raphaels eigene Sendungen nicht mehr von Hub-Erzeugnissen. Übrig blieb
die **Fehlerinsel** — Tippfehler, Grossschreibungs-Slips, Mundart. Dieser Lauf hat einen zweiten,
unabhängigen Detektor gemessen, und er kostet nichts:

**Ein Hub-Erzeugnis verletzt belegte Raphael-Marker, ein Eigentext nicht.** Am Vormittag des
08.07.2026 gingen zwei Mails zum **selben Sachverhalt** (Waschküche Albertstrasse 7, Elektro,
Anschlüsse Waschmaschine/Tumbler) an zwei Empfänger: 08:55 an den Elektriker, 10:00 an den
Sanitär. Die 10:00-Mail trägt «Sehe ich das **R**ichtig: … wurde keine expliziten Anschlüsse …
**A**ngeboten?» und «Darf ich Dich **B**itten dies in das Angebot zu integrieren.» — Fehlerinsel
dicht, Bitte auf **Punkt** (Marker 260820). Die 08:55-Mail ist über fünf Absätze fehlerfrei,
trägt einen **Gedankenstrich als Stilmittel** (den die JANS-DNA ausdrücklich verbietet) und endet
ihre Bitte auf einem **Fragezeichen** — genau der Marker, den 260820 zweifach als Raphael-Verbot
belegt hat.

Der Detektor ist damit **selbsttragend**: je genauer der Block Raphael beschreibt, desto
zuverlässiger erkennt er, was nicht von Raphael ist. Praktische Prüfreihenfolge für den nächsten
Lauf: (1) Fehlerinsel, (2) Marker-Verstösse gegen den eigenen Block, (3) Werkzeug-Spuren. Die
Reihenfolge ist neu; bisher stand das Werkzeug zuoberst.

**#4 — Der Korpus ist im Bereich Juli 2025 bis Mai 2026 saturiert. Woher kommt das Gold der
nächsten Wochen?** · *Methodenfrage, Hub-intern* · **Vorgelegt, nicht selbst entschieden.**

Dieser Lauf hat **vier** Fenster verworfen, bevor er ein brauchbares fand: 16.–20.02.2026
(Batch 30/31), 27.–31.03.2026 (Batch 37/38, obwohl die Fenster-Tabelle dort eine Lücke zeigt),
25.06.2026 (Auftragserteilung und Sörensen-Transmittal beide im Wiki) und der 09.07.2026
(Strangschema, Bajrami, Lanz alle verbraucht). Die Phrasenprobe aus Empfehlung 2 des Vorlaufs hat
in allen vier Fällen gegriffen und je zwei `grep` gekostet — sie ist ihr Geld wert und sollte
Pflicht werden.

Der Befund dahinter ist struktureller Art: **`twin-mail-training` ist mit Batch 106 in der
Gegenwart angekommen** (Fenster 26.08.2026, also gestern). Damit konkurriert der Fidelity-Review
täglich mit dem Mail-Training um dieselben frischen Sendungen, und die alten Fenster sind
abgeerntet. Frei sind noch Reste in **Juni und Juli 2026** — genau dort, wo die Autorschaftsfrage
am teuersten ist, weil der Hub bereits mitschreibt.

Drei Wege, keiner davon selbst gewählt: (a) Fidelity-Review und Mail-Training auf getrennte
Fenster verabreden (Training vorne in der Gegenwart, Review hinten in Juni/Juli); (b) den Review
auf **Drafts** und Korrektur-Deltas umstellen, wo Raphaels Eingriff selbst das Lernsignal ist;
(c) den Takt des Reviews strecken, weil frisches Gold knapper wird als die Läufe. Empfehlung
des Laufs: **(a) sofort, (b) mittelfristig** — das Korrektur-Delta ist ohnehin die höherwertige
Quelle, und es erschöpft sich nicht.

---

## 260828 — Batch 107 (Fenster 27.08.2026)

**#1 — Du-Gross: die Kennzahl misst wieder, und sie liegt bei 0.727. Was folgt daraus?** ·
Facette [[stimme]] · Gewichtung authentisch · Beleg `rj@` 27.08.2026, 11 Du-Formen in vier Mails.

Zum ersten Mal seit Batch 104 liegt ein Fenster mit genug Du-Formen für eine belastbare Messung
vor. Ergebnis: **8 gross, 3 klein**. Die drei Kleinschreibungen sind nicht verstreut, sie sitzen
im **beiläufigen Angebotssatz** («für dich zur Prüfung», «kannst du … Kontaktieren», «was euch
wichtiger ist»), während **alle** Bitte-, Zusage- und Dankformeln gross stehen («Ich bitte Dich»,
«informiere ich Dich», «bin ich Dir dankbar»). In der Trennwand-Mail stehen beide Formen **im
selben Satz**: «für **Euch** … was **euch** wichtiger ist».

Damit ist die Linie aus [[beziehungsregister]] Z. 1608 («im schnellen operativen Ton bleibt
dich/deiner klein») zum dritten Mal belegt **und präzisiert**: der Bruch hängt nicht am Kontakt,
nicht am Tag und nicht am Kanal, sondern an der **Satzfunktion**.

Zu entscheiden ist nur eines, und es ist eine Setzung, kein Messwert: **Soll der Zwilling die
Kleinschreibung im beiläufigen Satz nachbilden, oder weiter ausnahmslos gross schreiben?**
Vorschlag des Laufs: **weiter ausnahmslos gross** — die Regel steht so in der User-CLAUDE.md und
in `rules/jans-dna.md`, sie ist billig einzuhalten, und ein zu kleines «du» in einer ausgehenden
Mail liest sich als Nachlässigkeit, während ein zu grosses nie stört. Was **ohne** Entscheid gilt:
eine gemessene Quote unter 1.0 ist **kein** Hinweis auf Fremdautorschaft und darf nie wieder als
Autorschafts-Detektor gelesen werden (vgl. 260827 #3).

**#2 — Rot als Korrekturfarbe: übernehmen?** · Facette [[stimme]] · Beleg `rj@` 27.08.2026 08:12.

Im Wertepaar richtig/falsch steht die falsche Tür-ID in Rot (`rgb(237,92,87)`), die richtige
schwarz. Erster Farbbeleg im ganzen Korpus — bisher war Fett das einzige Auszeichnungsmittel.
Frage: Ist das ein bewusster Marker (dann gehört er in die DNA, eng begrenzt auf «falscher Wert
in einer Korrektur») oder eine Einzelhandlung am Handy? Bis zur Antwort **nicht** übernommen; die
Rule `dokument-layout-standard` verlangt für Dokumente durchgehend Schwarz, und diese Mail ist
kein Dokument. Zweiter Beleg abwarten.

**#3 — Drei neue Kontakte ohne zweiten Beleg.** · Facette [[beziehungsregister]].

Livdin Bajrami (Jegen AG, **Sie**, «Geschätzter Herr Bajrami»), Yasarcan Cetin (Gruner,
**Du**, «Geschätzter Yasarcan,») und Nicklas Rothe (Röthlisberger, **Du**, «Geschätzter Nicklas,»)
sind je einmal belegt. Nach dem Kopf von `rules/anrede-kontakte.md` wandert ein Einzelbeleg noch
nicht in die Tabelle. Sie stehen bis zum zweiten Beleg nur hier und in [[beziehungsregister]].
⚠ Für Bajrami ist die Sie-Zeile trotzdem jetzt schon wichtig, weil er im laufenden KISPI-Verteiler
steht und der Zwilling ihn sonst nach Verteilerlogik duzen könnte.

**#4 — Die Erlaubnisfrage fällt im grossen Verteiler weg.** · Facette [[beziehungsregister]] ·
Beleg 27.08.2026, drei Mails desselben Tages.

An 14 Empfänger: «Bitte um sofortige Erledigung aller Pendenzen.» — an je einen Empfänger
derselben Runde: «darf ich Dich Bitten …» / «Dar ich Sie Bitten …». Die Höflichkeitskonstruktion
ist damit **an den Einzelkontakt gebunden**, nicht ans Register. Als Marker aufgenommen; keine
Frage an Raphael, sondern eine Regel für den Zwilling: **Sammelverteiler direktiv, Einzelmail als
Erlaubnisfrage.** Widerspruch bitte melden, falls das so nicht gemeint ist.

---

## 260828b — Fidelity-Review (Golds aus Drafts: Shabani 29.07.2025, Furrer 12.08.2026, Eren 25.08.2026)

**#1 — Tippst Du den Kurzgruss erst beim Absenden?** · *Facette [[stimme]]* · **Entscheid
Raphael nötig, aber billig.**

Zwei der drei Golds dieses Laufs (Eren 25.08., Shabani 29.07.2025) gehen vom letzten Sachsatz
**direkt in den Signaturblock** — kein getipptes «Lieber Gruss / Raphael» darüber. Beides sind
operative Mails, für die der Block seit 260816 den Kurzgruss vorsieht; beide Blindfassungen
setzten ihn folgerichtig und lagen scheinbar falsch.

Beides sind aber **Drafts**, und beide sind sichtbar unfertig (Shabani bricht mitten im Satz
ab, Eren endet eine Zeile ohne Punkt). Die Frage ist deshalb nicht «gilt der Marker noch»,
sondern schlicht: **schreibst Du den Kurzgruss zuletzt, kurz vor dem Senden?** Wenn ja, ist an
Drafts der Gruss grundsätzlich nicht messbar, und der Harness darf aus seinem Fehlen nie einen
Marker bauen. Wenn nein, ist der Kurzgruss seltener als der Block behauptet.

Bis zur Antwort gilt der bestehende Marker unverändert; nachgetragen ist nur seine Umkehrung
(**der Signaturblock schliesst den Kurzgruss nicht ein**), und die ist als Draft-Vorbehalt
markiert, nicht als Regel.

**#2 — Der Sent-Items-Korpus ist zu Ende. Die Drafts sind die Antwort — soll das Mail-Training
mitziehen?** · *Methodenfrage, Hub-intern* · **Vorgelegt, nicht selbst entschieden.**

Der Vorlauf meldete Saturierung und nannte Juni/Juli 2026 als frei. Nachgemessen an der
Fenster-Tabelle: **der Bestand ist von Juli 2025 bis heute lückenlos erfasst**, 71 Fenster ohne
Lücke, und die konkret empfohlene Saumstrasse-Schiene stand längst in [[fachsignatur]].

Dieser Lauf hat stattdessen den Ordner **Drafts** geöffnet: 123 Stück, von keinem Batch je
angefasst (alle zogen «Sent Items»), zurückreichend bis **Juli 2025** — also in die Zeit vor
Claude. Damit existiert wieder echtes Gold der höchsten Gewichtungsstufe, und zwar in Menge.

Zu entscheiden ist die Arbeitsteilung: **soll `twin-mail-training` die Drafts ebenfalls
erschliessen, oder bleiben sie dem Fidelity-Review vorbehalten?** Empfehlung des Laufs:
**vorbehalten**. Das Training steht in der Gegenwart und hat mit den täglichen Sendungen
genug; der Review braucht eine Quelle, die nicht schon gelesen wurde, und die Drafts liefern
mit dem Korrektur-Delta obendrein das höherwertige Signal. Wenn beide hineingreifen, ist auch
diese Quelle in drei Wochen erschöpft.

**#3 — Ist der Betreff bei Dir ein Zustelladressfeld, kein Titel?** · *Facette [[arbeitsweise]]*
· Zwei Belege, kein Entscheid nötig, aber eine Bestätigung wäre nützlich.

Gold A läuft im Thread «AW: Angebot TDD Zugerstrasse 49 in Baar», handelt aber von Projekt 2414
Thalwil (Anhang `2414-10 JANS Projektpläne Architektur A3.pdf`, Rechnungsadresse Familie
Tschopp). Gold B trägt als Betreff schlicht den **Dateinamen des Anhangs**: «AfB BE KISPI PPTS
Auflagen vor Baubeginn.pdf».

Die Lesart: der bestehende Thread ist das schnellste Adressbuch, und der Betreff wird nicht
nachgeführt, weil er den Empfänger findet, nicht den Inhalt beschreibt. Das passt zum
260827-Marker «der Dateiname IST die Antwort». **Für den Block zu dünn** (zwei Belege, beide
Drafts), im Artikel vermerkt. Frage an Dich, weil der Zwilling sonst jeden Betreff sorgfältig
neu formuliert und damit etwas repariert, was Du bewusst so lässt.

**#4 — «Wäre es Ihnen möglich …» gegenüber «Darf ich Sie bitten …»: Behörde gegen Unternehmer,
oder Gewicht gegen Gewicht?** · *Facette [[stimme]]* · Ein Beleg, Antwort billig.

Gold B bittet die Baubewilligungsbehörde: «**Wäre es Ihnen möglich** mir den Statusbericht …
per Printscreen zukommen zu lassen**.**» Die Skala kennt für diese Stufe (eigenes Wollen,
fremde Ressource) bisher nur «Darf ich Sie bitten, …». Beide enden auf einem Punkt, beide sind
Höflichkeitsrahmen — aber «Wäre es Ihnen möglich» räumt dem Gegenüber ein Nein ein, das «Darf
ich Sie bitten» nicht einräumt.

Ist das (a) die Form für die **Behörde**, die tatsächlich nicht muss, oder (b) die Form für
eine **kleine Gefälligkeit** unabhängig vom Empfänger? Als Variante derselben Stufe
mitgeschrieben; die Unterscheidung entscheidet, ob der Zwilling sie gegenüber Unternehmern
verwenden darf.

**#5 — Die Begründung nach innen: gilt sie auch, wo Du etwas lieferst?** · *Facette [[stimme]]*
· Neuer Marker aus diesem Lauf, eine Nachfrage dazu.

Neu im Block (Befund 4): Deine Begründung sagt, **wofür Du die Sache brauchst** («weil ich bei
den entsprechenden Fachplanungen nachfassen muss»), nie, was Du dem Gegenüber dafür lieferst.
Die Blindfassung bot der Behörde ungefragt an, «die fehlenden Nachweise gebündelt zuzustellen»
— eine einseitige Zusage, die im Gold nicht steht.

Die Nachfrage: gilt das auch dort, wo Du **ohnehin** lieferst? Also darfst Du in derselben Mail
sagen «ich sende Ihnen danach X», wenn X ohnehin fällig ist — oder ist auch das eine Zusage zu
viel, weil sie einen Termin schafft, den niemand verlangt hat? Der Marker ist bewusst eng
gefasst (**keine erfundene Gegenleistung**) und würde bei einem Ja unverändert bleiben.

---

## 260829 — offene Fragen aus Batch 108 (Fenster 28.08.2026)

**#1 — Hebt ein persönliches Treffen die Stufe sofort, oder zieht der Du-Kontakt in der
Sammelanrede den Sie-Kontakt mit?** · *Facette [[beziehungsregister]]*

Belegt: der Projektleiter des Küchenbauers war am 24.08. «Geschätzter Herr <Nachname>»; am
28.08., am ersten Werktag nach einem gemeinsamen Meeting, steht er in «Hoi <Vorname> und
<Vorname>,». Das widerspricht der Fassung in `rules/jans-dna-facetten.md`, wonach der
Kanalwechsel **verzögert** wirkt — dort waren es Tage bis Wochen.

Nur: es ist eine **Sammelanrede**, und an erster Stelle steht ein langjähriger Du-Kontakt. Zwei
Erklärungen, dieselben Daten. Die Frage an Dich: gilt für Dich «wir haben uns getroffen, also
sind wir per Du, ab sofort» — oder ist es hier schlicht die Sammelanrede, die auf die wärmere
Stufe fällt, und der Einzelkontakt bliebe im Sie? Von der Antwort hängt ab, ob der Zwilling
nach einer Sitzung das Register selbständig hebt.

Bis dahin kein Eintrag in `rules/anrede-kontakte.md` (Einzelbeleg, Sammelanrede).

**#2 — «Du» gross beim Adressaten, «du» klein beim Zuruf: Satzfunktion oder
Adressatenstatus?** · *Facette [[beziehungsregister]], [[stimme]]*

Batch 107 erklärte die Kleinschreibung über die **Satzfunktion** (beiläufiger Angebotssatz
klein, Bitte/Zusage/Dank gross). Batch 108 legt den **Adressatenstatus** nahe: alle Formen an
den Hauptadressaten stehen gross, die beiden kleinen sitzen in einem eingestreuten Zuruf an
einen cc-Mitleser («<Vorname>, kannst du die Angaben … prüfen und ggf. bestätigen?»).

Beide Lesarten decken die Daten. Die praktische Folge ist verschieden: bei der ersten müsste
der Zwilling in beiläufigen Sätzen klein schreiben, bei der zweiten in jedem Inline-Zuruf. Weil
Du die Grossschreibung ausdrücklich als Regel gesetzt hast, schreibt der Zwilling bis auf
Weiteres **immer gross** — die Frage ist nur, ob das Gold hier eine Absicht zeigt oder eine
Tippgeschwindigkeit.

**#3 — Die Widerspruchsfrist ohne Frist: gewollt?** · *Facette [[denken]]*

Zweimal in zwei Tagen entscheidest Du per unterstellter Zustimmung: «ohne Reaktion ist
Sachverhalt Mail bestätigt» (27.08.) und «Wenn niemand Einwände macht ist mein Vorschlag …»
(28.08.). Beide Male **ohne Datum**. Der Zwilling könnte das Muster übernehmen und eine Frist
ergänzen («bis Montag 31.08. ohne Gegenmeldung») — das wäre beweissicherer, aber es wäre nicht
Deine Form.

Soll er die Frist ergänzen, oder ist die Fristlosigkeit hier Absicht (kein Druck, aber auch
keine Diskussion)?


---

## 260829b — Fidelity-Review (Golds 07./08.07.2026, Sent Items)

**#1 — Facetten-Spannung aufgeloest, Bestaetigung erbeten: «immer ein naechster Schritt» gilt
nicht fuer das reine Transmittal.** · *Facetten [[arbeitsweise]] × [[stimme]]*

[[arbeitsweise]] fordert im Do-Block «immer einen naechsten Schritt anbieten». [[stimme]] sagt,
das reine Transmittal hoere nach dem letzten Sachsatz auf. Beide standen nebeneinander, ohne dass
gesagt war, welche gewinnt. Der Beleg vom 08.07.2026 16:09 entscheidet es empirisch: der Body ist
**ein verbloser Nominalsatz**, kein naechster Schritt, kein Gruss, kein Block — und sechs Minuten
davor ging an **denselben** Empfaenger eine voll ausgebaute Mail mit «Naechster Schritt:».

Der Zwilling liest das ab jetzt so: **der naechste Schritt gehoert der Mail, die eine Sache
fuehrt, nicht der Mail, die einen Anhang betitelt.** *Warum die Frage trotzdem: das ist eine
Auslegung aus einem kontrollierten Beleg, keine Ansage von Dir. Stimmt sie?*

**#2 — «liebe Undine,» — fehlt eine dritte Stufe in `rules/anrede-kontakte.md`?** ·
*Facette [[beziehungsregister]]*

Die Rule fuehrt Undine Hofer mit «Hoi Undine» operativ und «Geschaetzte Undine» bei Gewicht,
belegt aus vier Fidelity-Laeufen. Am 07.07.2026 07:48 schreibst Du ihr in einer gewoehnlichen
operativen Rueckfrage «**liebe Undine,**» — kleingeschrieben, mit Komma. Die Form war im Korpus
bisher nur **einmal** verbucht, und zwar als waermstes Peer-Du (Marco Schwander).

Ist «liebe <Vorname>,» eine eigene, beilaeufig-warme Stufe im Du — oder war es an diesem Morgen
schlicht schnell getippt? *Warum: Claude aendert den Wortlaut einer Rule nicht selbst. Bejahst
Du die Stufe, gehoert sie in die Zeile; verneinst Du sie, bleibt der Marker im Wiki als
Einzelbeleg stehen und der Zwilling nutzt sie nicht.*

**#3 — Die Phrasenprobe waehlt Gold aus, ohne den Echo-Grep anzuwenden.** · *Methodik,
[[CLAUDE]]*

Der Vorlauf (260828, Empfehlung 2) stellte die Goldauswahl auf die **Phrasenprobe** um: eine Mail
gilt als frei, wenn eine markante Phrase aus ihrer Vorschau im Wiki null Treffer hat. Die Probe
arbeitet damit **auf der Vorschau**. Der mechanische Echo-Grep (`Anthropic Sans`,
`rgb(253,253,252)`, eingefuehrt Fidelity 260813) braucht dagegen den **HTML-Body**.

Folge, in diesem Lauf belegt: Gold A (07.07.2026 15:03 an Keller) bestand die Phrasenprobe und
war vom Vorlauf ausdruecklich als freier Goldstrang empfohlen — traegt aber `Anthropic Sans` in
zwei Bullets und `rgb(253,253,252)` ueber den ganzen Mittelteil. **Von Raphaels Hand stammen die
Anrede und ein einziger Rahmensatz; der Rest ist eingefuegter Claude-Text.** Als Gold verbucht
haette die Mail den Zwilling sein eigenes Echo gelehrt.

Vorschlag: die Auswahl bleibt zweistufig, aber der Grep wird **verbindlich vorgezogen** — erst
Body lesen und greppen, dann die Phrasenprobe. *Warum die Frage: das kostet je Kandidat einen
`read_resource`-Aufruf. Ist Dir der Aufwand die Sicherheit wert?*

**#4 — Der Wachstums-Riegel ist voll (48 B Reserve). Drei neue Regeln warten auf Promotion.** ·
*Steuerung*

Der Auto-Block `rules/jans-dna-facetten.md` liegt bei **33'952 B von 34'000 B**. Dieser Lauf hat
drei kompilierwuerdige Regeln belegt (Transmittal-Nullform, «liebe <Vorname>,», Autorschaft der
Empfehlung beim Fachmann). Sie stehen in den Artikeln, sind aber **nicht** im Do/Don't-Block und
wirken damit nicht.

Drei Wege: **(a)** Grenze anheben (der Block laedt bei jedem Texterzeugnis, nicht mehr in jeder
Session); **(b)** verdichten — der Kommentar in `build_dna.py` haelt seit dem 18.08. fest, dass
die billige Reserve aufgebraucht ist und die naechste Runde **Regeln loeschen** wuerde, nicht
Doppelungen; **(c)** so lassen und akzeptieren, dass neue Marker ab jetzt nur noch dokumentiert,
nicht mehr wirksam werden. Claude hebt die Grenze nicht selbst an. *Warum: (c) ist die stille
Variante und die gefaehrlichste — der Harness wuerde weiter messen und lernen, ohne dass sich am
Verhalten noch etwas aendert.*

**#5 — Ist die Rahmung eines Claude-Absatzes ein Korrektur-Delta?** · *Methodik, [[CLAUDE]]*

Bei Gold A hast Du den Claude-Text nicht **geaendert**, sondern **gerahmt**: Anrede plus ein
Satz, der den Befund auf das Interesse des Empfaengers dreht («Die Pruefung der
Elektroinstallationsofferte hat folgenden **fuer Sie relevante Punkte** ergeben:»). Die
Gewichtung kennt dafuer keine Stufe: GOLD ist authentisch, SILBER ist die Aenderung, GRAU ist das
unbearbeitete Echo.

Soll dieser Rahmungssatz als eigenes Lernsignal gelten? *Warum: er zeigt genau die Stelle, an der
Du einen Modelltext fuer versandtauglich haeltst — und was Du fuer noetig haeltst, damit er es
wird. Das ist potenziell das dichteste Signal ueberhaupt, aber nur, wenn es einen Namen und eine
Stufe hat.*

## 260829c — Uebergabe aus KB `architektur-fachwissen` (Wissens-Chef Run 47)

**#1 Gehoert der Eigentext-Stratum 2007–2014 aus `/Volumes/daten/02_Architektur_Archiv` als
GOLD-Quelle in den Twin?** Die am 23.08.2026 angelegte KB `architektur-fachwissen` destilliert
seit dem 29.08.2026 aus diesem Archiv Artikel, deren Quellen im Frontmatter ausdruecklich als
**«Eigentext Raphael Jans»** bzw. **«Eigenmaterial»** ausgewiesen sind — also vor-Claude, aus
Raphaels eigener Hand, und damit nach dem Echo-Schutz (`wissen/twin/CLAUDE.md`) genau die
Kategorie **GOLD `authentisch`**. Die KB `twin` kennt diesen Bestand bisher nicht: `02_Architektur_Archiv`
und `architektur-fachwissen` haben in `wissen/twin/` je **null** Treffer (gemessen 29.08.2026).

Belegte Kandidaten (aus den Frontmatter-`sources:` der afw-Artikel):
- `03_Begriffe_der_Architektur/00_Ordnerkreator/Warum Begriffe ordnen.docx` (Eigentext),
  `Sockel_…docx` (Eigentext), `Ethos/…docx` (Eigentext, Notizform),
  `Baukunst/120903_Baukunst_und_Gestalt.docx` (Eigentext, 03.09.2012)
  → destilliert in `architektur-fachwissen/wiki/begriffsapparat-kant-sprachstil-pruefraster-jans.md`
- `02_Gestalt_Kulturverstaendnis/01_Architektur_darstellen/04_Layout/03_Checklisten/Typografie.pdf`
  (Fusszeile «2007 © Lernskript Jans Typografie 1», Eigenmaterial)
  → `architektur-fachwissen/wiki/typografie-regelwerk-lernskript-jans-2007.md`
- `02_Denkmalpflege/01_Arbeiten/Haus_Jans/PDF/120705_Denkmalpflege_Haus_Jans.pdf`
  → `architektur-fachwissen/wiki/denkmalpflegerische-baudokumentation-gliederung-haus-jans.md`
- weitere als «Eigentext»/«selbst verfasst» markierte Dateien in
  `architektur-fachwissen/raw/inventar/*.md` (`00_Ideen/`, `00_Entwurfshaltungen/` 2013–2014)

*Warum das zaehlt:* der bisherige Gold-Korpus des Twin ist **Mail-Prosa** (Sent Items). Dieser
Stratum ist **Fachprosa und Argumentation** aus derselben Hand — das Register `fachsignatur`
und `haltung` haben dafuer bisher keine Quelle dieser Gattung.

*Vorbehalt, der mitgehen muss:* (1) Es ist **destillierter** Text, nicht der Originalwortlaut —
als Stilquelle taugt nur das Original, nicht der afw-Artikel. (2) Der Stratum ist 12–19 Jahre alt;
ob Stimme von 2007 heute noch Gold ist oder nur historischer Stand, ist eine Frage an Raphael,
nicht eine Ableitung. (3) Nicht jede Datei in diesen Ordnern ist Eigentext — die Gewichtung je
Datei muss am Original erfolgen.

Uebergeben vom Wissens-Chef Run 47, 29.08.2026. Gegenzeiger steht in
`wissen/architektur-fachwissen/wiki/QUESTIONS.md`, Block 260829b.

---

## 260830 — Batch 109 (Drafts-Erstzugriff)

### #1 Du-Grossschreibung: drei Lesarten, ein Effekt — welche gilt?

Der Batch liefert zwei Belege, die **beide Formen im selben Satz** tragen:

- «Ich habe **D**ich als Family-Member hinzugefügt, **d**u solltest jetzt unbegrenzter
  Speicherplatz haben.» (18.08.2025, 3D-Freelancer)
- «Kannst **D**u mir eine Offerte machen … müsste ich von **D**ir wissen ob **d**u ein
  Vorschlag hättest…» (29.07.2025, Gebäudetechnik-Planer)

Damit stehen **drei** Lesarten nebeneinander, die alle je zwei bis drei Belege haben:

| Lesart | Herkunft | Sagt |
|---|---|---|
| A Satzfunktion | Batch 107 | gross als Objekt/Possessiv, klein als Subjekt |
| B Adressat vs. Inline-Zuruf | Batch 108 | gross beim Hauptadressaten, klein beim Mitleser-Zuruf |
| C Anliegen vs. Nachsatz | Batch 109 | gross im Hauptsatz-Anliegen, klein im nachgeschobenen Neben-/Folgesatz |

Lesart C erklärt beide Belege dieses Batches ohne Rest; A und B tun das nicht (in beiden
Fällen ist das kleine «du» **Subjekt** — was A stützt —, steht aber auch im Nachsatz).
A und C sind hier **nicht unterscheidbar**, weil das Subjekt in beiden Belegen zufällig im
Nachsatz steht.

**Frage an Raphael:** Ist das überhaupt eine Regel — oder wandert die Grossschreibung
schlicht mit der **Betonung** und alle drei Beschreibungen fassen denselben Effekt von
verschiedenen Seiten? Falls es eine Regel ist: gilt A, B oder C?

*Warum es zählt:* Die DNA gibt «Du/Dich/Dir/Deine immer gross» vor. Gemessen sind über die
letzten Batches konstant **0.85–0.90**, nie 1.0. Der Zwilling schreibt heute ausnahmslos
gross und ist damit **regelkonform, aber messbar zu sauber**. Ohne Entscheid bleibt offen,
ob das ein Fehler ist oder die gewollte Glättung eines Tippartefakts.

### #2 Ist der HISTORISCHE Bestand von `Drafts` als Gold-Quelle freigegeben?

Der Ordner ist nicht neu — die Batches 96, 97, 98, 101, 102 und 103 haben ihn genutzt, aber
ausschliesslich als **Delta-Werkzeug** (Paare aus Claude-Entwurf und versendeter Fassung, im
jeweils aktuellen 2026er Fenster). Der **historische Bestand 2024/2025** — Entwürfe ohne
Sent-Partner, vollständig vor dem Claude-Stichtag — wurde nie als eigenständige Gold-Quelle
gehoben. Dieser Lauf hat es erstmals getan: 8 der 9 Golds stammen daraus, 98 Einträge sind
noch nicht gelistet.

**Frage:** Sollen die restlichen 98 sequenziell als Gold ausgewertet werden?

*Was dafür spricht:* `Sent Items` ist im August 2026 abgeschöpft — dieser Lauf fand dort an
zwei Tagen **ein** Gold. Der Entwurfsbestand lieferte am selben Tag **acht**, alle vor 2026
und damit ohne Echo-Risiko.

*Was zu bedenken ist:* Ein Entwurf ist ein Text, den Raphael **nicht abgeschickt hat**. Bei
den hier gelesenen ist der Grund erkennbar harmlos (Satzabbruch mitten im Wort, Anhang
nachgereicht, Antwort anders gelöst) — aber es ist denkbar, dass ein Entwurf gerade deshalb
liegen blieb, weil der **Ton** nicht stimmte. Dann wäre er Anti-Gold, nicht Gold.

*Vorschlag bis zum Entscheid:* weiter auswerten, aber jeden Draft-Marker mit der Gewichtung
`authentisch (Entwurf, nicht versendet)` führen, damit er im Zweifel isolierbar bleibt.

### #3 «Lieber» beim Angebot, «Geschätzter» bei der Schliessung — stimmt die Richtung?

Derselbe Bauherr, zwei Tage Abstand: «Lieber Christoph,» in der werbenden Offerte (28.06.2025),
«Geschätzter Christoph,» in der Quittung der Absage mit Rechnungsadresse (30.06.2025).

Die Anlassgewicht-Klausel in `rules/anrede-kontakte.md` sagt bislang, ein gewichtiger Anlass
ziehe «Geschätzte/r». Der Beleg **präzisiert die Richtung**: das Gewicht hebt die Stufe
**formeller**, nicht wärmer — und der Geldbezug ist der Auslöser, nicht die Nähe.

**Frage:** Trifft das zu, oder ist es hier Zufall der Tagesform?

## 260830b — Fidelity-Review (Golds 06./11./24.11.2025, Sent Items, vor-Claude)

**#1 — «Du immer gross» ist eine Vorgabe, kein Abbild. Soll der Zwilling sie trotzdem halten?** ·
*Facette [[stimme]] × Methodik*

Die Kernregel steht ohne Einschränkung in `rules/jans-dna.md`, in der User-CLAUDE.md und im
Do-Block von [[stimme]]. Der Beleg vom 11.11.2025 zeigt in **einem Absatz** aus Deiner eigenen
Hand beides nebeneinander: «Ich hoffe, es geht **dir** gut. … bitte ich **Dich**, … Zudem waere
ich **dir** dankbar, wenn **du** mir … angeben koenntest». Am 24.11.2025 haeltst Du es dagegen
durchgehend gross.

Die praktische Folge ist eine Messfolge, nicht eine Stilfrage: solange die Regel als Abbild
gefuehrt wird, verbucht ein Fidelity-Lauf die Grossschreibung als Treffer — und misst dort **die
Vorgabe gegen den Korpus** statt den Zwilling gegen Dich.

Drei Lesarten: **(a)** die Regel ist Deine gewollte Norm, der Korpus ist schlicht schneller
getippt → sie bleibt, wird aber im Artikel als **Norm** gekennzeichnet und in der Fidelity nicht
mehr gewertet. **(b)** Die Kleinschreibung gehoert zum warmen, schnellen Du und ist ein eigener
Marker → sie gehoert ins Register. **(c)** Egal, halt es immer gross. *Warum die Frage: Claude
aendert den Wortlaut einer Rule nicht selbst, und (a) und (b) fuehren zu entgegengesetztem
Verhalten des Zwillings.*

**#2 — Hebt ein bloss mitlesender Cc die Anrede, oder kann er es nur?** ·
*Facette [[beziehungsregister]]*

Der Marker seit 260805/260806 sagt: der mitlesende Dritte formalisiert die Anrede, im Du kippt
die Waermestufe. Am 11.11.2025 schreibst Du «**Liebe Esther**» — waermste Stufe — obwohl Stefan
Tschopp (der Bauherr) und Gertrud Angerer im Cc stehen. 260822 hatte den Ausloeser bereits als
«notwendig, nicht hinreichend» eingeschraenkt; dies ist der erste Beleg, in dem sogar der
**Bauherr** mitliest und die Stufe trotzdem haelt.

Ist die Regel: **der Cc hebt nur, wenn er selbst adressiert werden koennte** (also im Vorgang
handelt), waehrend der reine Informations-Cc nichts bewegt? *Warum: der Zwilling formalisiert
derzeit reflexhaft, sobald ein zweiter Name im Kopf steht — das kostet in warmen Beziehungen
genau die Waerme, die sie ausmacht.*

**#3 — Der Kopf-Block ueber der Anrede: bewusste Form oder Nebenprodukt des Kopierens?** ·
*Facetten [[arbeitsweise]] × [[stimme]]*

Am 06.11.2025 stehen Titel und Link **ueber** der Anrede, unbeschriftet, und der Gegenstand wird
im Text nie wieder eingefuehrt: «Neubau Alters-und Pflegeheim St. Theodul, Fiesch / <link> /
Guten Morgen Andreas / haettest Du Interesse diesen Wettbewerb zu machen?»

Das Wiki kennt bisher nur die Gegenbewegung (Breadcrumb, Link **darunter** unter «Hier der
Link:»). Ist der Kopf-Block eine eigene Form fuer die **Anlass-Mail** — der Gegenstand rahmt von
oben, damit der Text kurz bleiben kann? Oder ist es schlicht, was beim Kopieren aus dem Browser
oben landet? *Warum: im ersten Fall darf der Zwilling die Form aktiv verwenden und spart damit
den ganzen Einleitungsabsatz, den er sonst erfindet; im zweiten darf er sie nie erzeugen.*

**#4 — Darf der Harness bei Deinen Mails alles unterhalb des ersten Signaturblocks wegschneiden?** ·
*Methodik, [[CLAUDE]]*

Zwei Belege an zwei aufeinanderfolgenden Tagen (24. und 25.11.2025, beide an den 3D-Freelancer):
Deine Mail endet mit Gruss und vollem Block, **darunter** haengt die ungefilterte
Modell-Arbeitsunterlage — bei der 24.11.-Mail rund 60 Zeilen mit «Workflow 1/2», Trennlinien und
dem harten Tell «einschlie**ss**en» als «einschlie**ß**en».

Vorschlag: der Fidelity-Review und das Mail-Training schneiden kuenftig **mechanisch am ersten
Signaturblock** und werten nur, was darueber steht. Der Schnitt ist eindeutig und kostet nichts.
*Warum die Frage trotzdem: es gibt Mails, in denen unter dem Block noch etwas von Dir steht (der
Nachklapp-Eingabetermin, 260826). Ein blinder Schnitt wuerde den mit wegwerfen. Soll die Regel
also lauten «alles unter dem Block ist verdaechtig und wird einzeln geprueft» statt «wird
verworfen»?*

**#5 — «Danke fuer deine Angaben und lieber Gruss» — eigene Stufe oder Tippfluss?** ·
*Facette [[stimme]]*

Am 11.11.2025 schliesst Du mit **einer** Zeile: Dank mit Objekt plus Kurzgruss, kein Komma,
«lieber» klein, darunter Name und voller FG-Block. Der Dank ist dabei **vorweggenommen** — er
gilt Angaben, die noch gar nicht geliefert sind.

Das Wiki kennt «Danke und Gruss» als terse Dank-plus-Gruss-Formel. Ist die Variante **mit Objekt**
(«Danke fuer deine Angaben und …») eine eigene, waermere Stufe fuer die Bitte an eine
nicht-fachliche Person — oder dieselbe Formel, nur ausgeschrieben? *Warum: der Zwilling greift
in dieser Lage derzeit zu «Beste Gruesse» und laesst den Block weg; beides war hier falsch.*

**#6 — Die Goldquelle Sent Items 2025 ist ausgeschoepft. Welche Gattung als naechste?** ·
*Steuerung*

Dieser Lauf hat vier Fenster (Sept./Okt./Anfang und Ende Nov. 2025, zusammen rund 80 Sent Items)
geprueft; **ueber 90 % waren bereits destilliert**, uebrig blieben genau die drei gemessenen
Mails. Das `twin-mail-training` hat den Bestand weitgehend gehoben — das ist ein Erfolg, aber es
heisst, dass ein weiteres Datumsfenster kaum noch traegt.

Zwei Wege liegen bereit: **(a)** die Fachprosa 2007–2014 aus `02_Architektur_Archiv`, die
[[QUESTIONS]] 260829c #1 als Gold-Kandidat uebergeben hat (andere Gattung, andere Facetten —
[[fachsignatur]] und [[haltung]] haben dafuer bisher keine Quelle); **(b)** `Drafts` Seite 2–5,
die Batch 109 als historischen Gold-Bestand 2024/2025 identifiziert hat. *Warum die Frage an
Dich: (a) haengt an Deinem Entscheid aus 260829c #1 (ist Stimme von 2007 heute noch Gold?), und
ohne diesen Entscheid bleibt nur (b).*

---

## 260831 — aus Batch 110 (`Drafts` Seite 2, fuenf Golds 11/2025–04/2026)

**#1 — «Dear Hlep» am 10.02.2026: ist die englische Anrede an den Webprogrammierer gewandert?** ·
*Beziehungsregister, betrifft eine Rule*

Die Rule `anrede-kontakte` fuehrt fuer diesen Kontakt «**Hi Hleb**», «zweifach aus Deiner eigenen
Hand belegt (16.02. und 27.06.2026)», und grenzt ausdruecklich gegen «Hello» ab (das gehoert dem
3D-Freelancer). Der Entwurf vom **10.02.2026** — also sechs Tage vor dem dort genannten
Erstbeleg — traegt «**Dear Hlep,**» mit Komma und «**Kind regards**».

Drei Lesarten: **(a)** eine **Bewegung** `Dear` → `Hi` beim Uebergang von der Zugangs-/
Vertragsphase in die laufende Zusammenarbeit; **(b)** «Dear» gehoert der **Gattung**
(formelle Auskunft mit weitergereichter Supportantwort), «Hi» dem lockeren Zuruf; **(c)** freie
Variation wie beim deutschen Gruss. *Warum die Frage an Dich: die Rule beschreibt die Stufe ab
Mitte Februar als feststehend; traegt Lesart (a), gehoert ein Satz zur Vorgeschichte hinein, und
der Zwilling darf «Dear» bei einem neuen englischsprachigen Kontakt nicht fuer falsch halten.
Claude aendert den Wortlaut einer Rule nicht selbst.*

**#2 — Soll der Zwilling den Anrede-Fehlgriff aus der Verzeichnisform aktiv korrigieren?** ·
*Beziehungsregister, Verfahren*

Zum zweiten Mal belegt (nach «Herr Mustafa» statt «Herr Eren», Batch 100): die Exchange-Form
«Nachname Vorname Zweitname» erzeugt eine falsche Anrede — hier dreimal «**Herr** Valentin» an
eine Frau, dazu einmal die Verzeichniszeile unveraendert als Anrede («Guten Tag Valentin
Michelle Amanda»).

Der Zwilling kann das erkennen, sobald eine Antwort der Gegenseite mit Signatur vorliegt. Die
Frage ist, **was er dann tun soll**: (a) still korrigieren und ab der naechsten Mail richtig
anreden; (b) korrigieren und Dich in einem Satz darauf hinweisen; (c) den Thread-Stand halten,
weil eine stille Aenderung der Anrede selbst auffaellt. *Warum: Variante (a) ist die hoeflichste,
aber sie veraendert unbemerkt etwas, das Du geschrieben hast — und genau das ist sonst verboten.*

**#3 — Ist «lgr» eine Grussform, die der Zwilling verwenden darf?** · *Stimme, klein aber scharf*

Beleg 20.03.2026 an den Technischen Dienst (Du-Kontakt): die Mail endet auf «**lgr**», klein,
allein, ohne Name und ohne Block. Das ist die kuerzeste bisher belegte Form und ein starker
Echtheitsmarker — aber Kuerzel dieser Art wirken schnell schnodderig, wenn sie am falschen
Kontakt landen. *Warum: der Zwilling schreibt heute im Du-Register durchgaengig «Lieber Gruss».
Darf «lgr» in die kurze, rein operative Mail an einen vertrauten Kontakt — oder bleibt es Dir
vorbehalten?*

---

## 260831b — aus dem Fidelity-Review (Drafts Seite 3, drei Golds 04/2026–05/2026)

**#1 — «Dear» ans Team, «Hi» an die Person: ist das die Trennlinie?** ·
*Beziehungsregister, betrifft eine Rule — korrigiert 260831 #1 vom selben Tag*

Heute früh hat Batch 110 aus dem «**Dear Hlep**» vom 10.02.2026 eine mögliche Bewegung
`Dear` → `Hi` abgeleitet, weil die Rule `anrede-kontakte` «Hi Hleb» ab dem 16.02.2026 führt.
Der Fidelity-Lauf hat wenige Stunden später einen Entwurf vom **05.05.2026** gefunden, also
gut drei Monate NACH dem «Hi»: «**Dear HLEB team**», ohne Schlusskomma, Sign-off «Best regards».

Damit ist die Bewegung als monotone Entwicklung erledigt — beide Formen laufen parallel. Die
Trennlinie, die beide Belege ohne Rest erklärt, ist der **Adressat**: «Hi <Vorname>» an die
Person, «Dear <Firma> team» an das Kollektiv. Stimmt das? *Warum die Frage: der Zwilling hält
«Dear» nach der heutigen Rule-Lesart für überholt und würde ein ganzes Team mit «Hi» anreden.
Deutsch hast Du für genau diesen Fall die Kollektiv-Anrede belegt («Geschätzte Firma <Name> AG»,
«Geschätztes Care-Team»); es wäre stimmig, dass Englisch dasselbe tut. Claude ändert den
Wortlaut einer Rule nicht selbst.*

**#2 — Fällt die Bitte-Form bei einer FÄLLIGEN Schuld auf den nackten Indikativ?** ·
*Facetten [[stimme]] × [[haltung]]*

Die Vier-Stufen-Skala sagt: fremde Ressource, insbesondere Geld → höflichste Stufe «Darf ich
Sie bitten …», weil der Druck von Dir stammt. Deine Mahnung vom 14.04.2026 schreibt aber
«**Daher Bitte ich Sie** bis Ende KW16 die Überweisung zu tätigen» — nackter Indikativ mit
kausalem «Daher», und davor der unverstellte Satz «Ich arbeite seit 3 Monaten für Sie ohne
Bezahlung.»

Meine Lesart: die Skala misst, **wer den Druck erzeugt** — und bei einer fälligen, unbezahlten
Rechnung erzeugt ihn nicht mehr Du, sondern der Verzug des Empfängers. Die Skala bliebe damit
unverändert richtig und bekäme nur einen Satz zur Fälligkeit. Trifft das? *Warum: der Zwilling
schreibt Mahnungen derzeit in der höflichsten Stufe und hängt zusätzlich den Vorbehalt «bei
Akzeptanz der Rechnung» an — er stellt Deine fällige Forderung noch einmal zur Disposition.*

**#3 — Erstanrede mit vollem Namen, danach nur Nachname: Regel oder Zufall?** ·
*Facette [[beziehungsregister]]*

Erste Mail an den neuen Gruner-Ansprechpartner, 11.05.2026: «**Geschätzter Herr Bojan
Stevanovic**». Zwei Tage später, gleicher Vorgang: «**Geschätzter Herr Stevanovic**».

Das ist **nicht** die Verzeichnisform-Falle («Herr Mustafa», «Herr Valentin») — dort fiel der
Nachname weg, hier ist der Name vollständig und richtig. Ist der volle Name Deine bewusste
**Erstnennung** bei einem übernommenen Kontakt, und wird danach verkürzt? *Warum: der Zwilling
setzt heute in beiden Fällen den Nachnamen und verfehlt damit genau die erste Mail, die eine
neue Arbeitsbeziehung eröffnet.*

**#4 — «Wer fragt, bringt keinen Apparat mit» — gilt das generell?** · *Facette [[fachsignatur]]*

Deine Brandschutzfrage vom 11.05.2026 an einen VKF-Brandschutzexperten enthält **keine Norm,
keine Klasse, keinen Nachweis** — nur die Frage: «Ist die Ausführung Gastroküche in Metal
Pflicht oder auch in Holz möglich?» Zwei Tage vorher hast Du dieselbe Materialfrage
**beantwortet** und dabei drei Wissensebenen verbunden (Zuständigkeit Kantonales Labor,
VKF-Brandabschnitt, eigene architektonische Empfehlung).

Also: der Fachapparat gehört der Antwort, der Eingabe und dem Gesuch — nie der Frage, weil er
die Antwort präjudiziert und den Gefragten zum Bestätiger einer fremden Subsumtion macht.
Ist das die Regel? *Warum: der Zwilling baut in Fachfragen reflexhaft Normen und
Leistungserklärungen ein, die niemand genannt hat — heute «Bfl-s1 nach EN 13501-1», frei
erfunden. Ein klares Ja hier schneidet die häufigste Erfindungslage an der Wurzel ab.*

**#5 — Wachstums-Riegel: Verdichten künftig ohne Rückfrage?** · *Steuerung, [[CLAUDE]]*

Fünf Läufe lang lag `rules/jans-dna-facetten.md` bei 33'952 von 34'000 B, und fünf Läufe lang
wurde kein Marker mehr ins Gehirn kompiliert. Heute liess sich zum ersten Mal ZEIGEN, was das
kostet: die Regel «Zahlungserinnerung → namenlose Anrede» steht seit Batch 36 im Artikel, war
nie kompiliert, und der Zwilling hat sie heute prompt verfehlt («Guten Tag Herr [Name]» statt
«Guten Morgen»).

Dieser Lauf hat darum verdichtet statt zu warten: drei Redundanzen aus dem Beziehungsregister-
Do-Block entfernt (Gruss-Regel und «Du gross» stehen bereits in [[stimme]] bzw. im Kern
`jans-dna.md`) und den namenlosen Marker dafür promoviert. Stand jetzt 33'976 B, Reserve 24 B.

Zwei Fragen: **(a)** Soll Verdichten künftig der Regelweg sein — also darf jeder Lauf
redundante Do-Zeilen streichen, um Platz für einen gemessenen Marker zu schaffen, ohne Dich zu
fragen? **(b)** Oder hebst Du `MAX_AUTO_BYTES` (der Block liegt in **jedem** Texterzeugnis-Lauf
an, nicht in jeder Session — 1'000 B mehr sind rund 250 Token je Erzeugnis)? *Warum: ohne
Entscheid steht der nächste Lauf wieder vor 24 B Reserve, und das ist ein halber Satz. Die
Frage 260829b #4 ist damit nicht erledigt, sondern beziffert.*

## 260831c — Bring-Schuld aus Wissens-Chef Run 49 (31.08.2026): die Dear/Team-Regel erreicht das Gehirn nicht, und der Grund ist ein anderer als angenommen

*Beziehungsregister · Arbeitsweise · Status: offen, Ursache berichtigt*

Der Fidelity-Lauf vom selben Tag hat den Befund «**Dear** gehoert dem Team, **Hi** der Person»
(Gold B, 05.05.2026, «Dear HLEB team») korrekt erhoben und im Artikel abgelegt. **Im kompilierten
Gehirn steht er nicht:** `grep -c "Dear"` auf den Auto-Block von `rules/jans-dna-facetten.md`
ergibt **0**.

**Die Ursache ist NICHT der Wachstums-Riegel.** Der CHANGELOG-Eintrag vom 31.08.2026 legt die
fehlende Kompilierung dem Riegel zur Last (Reserve gemessen 24 B). Nachgemessen im Lauf 49 gilt
aber zuerst etwas anderes: `skills/twin/tools/build_dna.py` kompiliert je Facette **nur den
Do/Don't-Block**. Die Dear/Team-Regel steht in `wiki/beziehungsregister.md` in einem
**Fidelity-Abschnitt** (Z. 3630) und im Do/Don't-Block (6'119 B) mit **0 Treffern** gar nicht.
Es fehlt also zuerst die **Promotion in die kompilierbare Ebene**; die 24-B-Grenze wird erst
danach zum Thema. Eine blosse Anhebung der Grenze wuerde nichts kompilieren.

**Warum das zaehlt:** derselbe Lauf hat den «namenlos»-Marker sehr wohl in den Do/Don't-Block
promoviert und damit kompiliert. Die beiden Befunde desselben Tages wurden also ungleich
behandelt, ohne dass das auffiel.

**Naechster Schritt (bewusst nicht von Run 49 ausgefuehrt):** Die Promotion einer Zeile in den
Do/Don't-Block liegt in der Domaene des Zwillings, nicht der Aufsicht, und sie laeuft unmittelbar
in die 24-B-Reserve — welcher bestehende Marker dafuer weicht, ist eine Abwaegung ueber Raphaels
Stimme und kein Aufsichts-Entscheid. Run 49 legt den Punkt darum hier ab, statt ihn selbst zu
schreiben (Rule `wissens-bibliothekar`, Pause vor Umstrukturierung).

**Zweite, davon unabhaengige Luecke (an Raphael, kein Claude-Eingriff):** die Person/Kollektiv-Achse
fehlt im **gesamten Rule-Bestand** — `rules/anrede-kontakte.md` Z. 80 (Hleb-Zeile) und
`rules/jans-dna-facetten.md` Z. 83-88 tragen beide die einachsige Klausel «die englische Anrede
haengt am Kontakt». Die zweite Fundstelle wiegt schwerer, weil sie vor jedem ausgehenden
Texterzeugnis gelesen wird. Beide Stellen sind **richtig, aber unvollstaendig**; der Wortlaut einer
Rule wird von Claude nie selbst geaendert (siehe 260831b #1).

## 260901 — aus dem Mail-Training Batch 111 (Drafts Seite 3, offset 50–74)

**#1 (Stimme · Gewichtungs-Entscheid erbeten) — ist die englische Mail an das Webteam vom
05.05.2026 wirklich Deine Hand, oder hast Du sie sprachlich glaetten lassen?**

Der Fidelity-Lauf vom 31.08.2026 hat sie als `authentisch` gewertet und daraus unter anderem den
Marker «der Gedankenstrich lebt auch englisch in der Mail» gezogen. Batch 111 hat diesen einen
Satz **quarantaeniert** (Vorbehalt in [[stimme]] eingetragen, die uebrigen Marker der Mail bleiben
gueltig), weil vier Signale dagegen stehen: die Kontrollgruppen-Quote (0 Em-Striche / 0 Bullets auf
322 W deutsches Gold desselben Batches gegen 1 + 2 auf 185 W, dazu 2 im Betreff), die in
`wissen/twin/CLAUDE.md` gelistete AI-Paste-Schlussfloskel, der Kontrast zu Deinem eigenen,
gebrochenen Englisch an **denselben Empfaenger** 20 Tage frueher (15.04.2026 06:06), und Deine
eigene Vorgabe «kein Gedankenstrich als Stilmittel» (10.06.2026).

**Warum die Frage zaehlt:** Der Marker wuerde dem Zwilling beibringen, im Englischen den
Gedankenstrich zu setzen — gegen eine Deiner ausdruecklichen Regeln. Die inhaltlichen Marker
derselben Mail («→» vor der URL, «•» als englisches Aufzaehlungszeichen, die Eigen-Nomenklatur
C-Mediastrip / D-PD) sind dagegen projektspezifisch und von keinem Modell erfindbar, also
weiterhin gelernt. Die Arbeitshypothese ist **zwei Haende in einer Mail**: Deine Substanz, fremd
geglaettete Sprachoberflaeche — dieselbe Gattung wie die vierte Falle im KB-Schema, nur auf den
englischen Strang angewandt.

**Was ich brauche:** ein Satz von Dir. Entweder «das habe ich selbst so geschrieben» (dann faellt
die Quarantaene und der englische Strang bekommt eine eigene Gedankenstrich-Regel), oder «da war
ein Werkzeug dabei» (dann gilt fuer den englischen Strang dieselbe Zwei-Haende-Pruefung wie fuer
das Dokument-Archiv, und die Sprachoberflaeche englischer Mails ab 2026 ist generell mit Vorsicht
zu gewichten).

**#2 (Verfahren · kein Entscheid noetig, nur zur Kenntnis) — zwei Loops haben heute dasselbe
Quellfenster bearbeitet.** `twin-fidelity-review` (31.08.) und `twin-mail-training` Batch 111
(01.09.) haben beide `Drafts` Seite 3 gezogen; die drei Golds sind identisch. Das war kein
Schaden — der zweite Lauf hat den Widerspruch oben gefunden, den der erste erzeugt hatte, also
hat die Doppelung genau das geleistet, wofuer eine zweite Instanz da ist. Es heisst aber, dass
das Batch-Register `raw/_INGESTED.md` den Verbrauch des Fidelity-Laufs nicht mitfuehrt und der
naechste Mail-Lauf denselben Bereich ein drittes Mal zoege. Batch 111 vermerkt darum im Register,
welches Fenster der Fidelity-Lauf verbraucht hat.

## 260901b — aus dem Fidelity-Review (Drafts Seite 4, drei Golds 03./04.2026, zwei davon Handy-Fragmente)

**#1 — Trennt sich die Behördenanfrage in zwei Gattungen: Auslegung einer strittigen Norm ↔
schlichte Verfahrensauskunft?** · *Facette [[fachsignatur]]*

Der Do-Block sagt für die Behörde: NICHT subsumieren, sondern die konkurrierenden Auslegungen
belegt gegenüberstellen, mit «–»-Alternativfrage und «Hintergrund der Anfrage:». Deine Anfrage
ans AfB vom 26.03.2026 macht nichts davon — sie öffnet mit «Ich wollte mich bei Ihnen erkundigen
wie die Eingabequittung einer Baueingabe im Anzeigeverfahren mit …» und stellt die Frage im
ersten Satz.

Meine Lesart: der belegte Apparat gehört der **strittigen Norm**, die Du selbst gelesen hast und
zur Wahl stellst. Die blosse Verfahrensauskunft («wie handhabt ihr das?») trägt ihn nicht.
Trifft das? *Warum die Frage: der Zwilling hat gestern für genau diese Aufgabe die volle
Konstruktion gebaut — und der Rahmen verlangte danach nach Inhalt, den es nicht gab. Er hat eine
unterzeichnete Vollmacht und zwei Rechtsalternativen behauptet, beides frei erfunden. Ein Ja
hier schneidet nicht eine Erfindung ab, sondern die Gliederung, die sie erzeugt.*

**#2 — Ist «Grüezi Herr <Nachname>» eine eigene Anredestufe, und bleibt das kurze Schreiben
niederschwellig, auch wenn sein Thema schwer ist?** · *Facette [[beziehungsregister]], berührt
`rules/anrede-kontakte.md`*

Zwei Entwürfe vom 26.03.2026, beide ans Amt, beide gegen die heutige Regel:
«**Grüezi Herr Kamm**» an den namentlich bekannten Sachbearbeiter der Geodaten-Stelle (die Regel
sagt: bekannt → «Geschätzte/r»), und «**Guten Tag**», namenlos, an vier Adressaten des AfB, von
denen zwei namentlich dastehen, in der Sache Vertretungsbefugnis im Anzeigeverfahren (die Regel
sagt: rechtsbegründetes Ersuchen → «Sehr geehrte Damen und Herren»).

Meine Lesart: die Stufe folgt dem **Gewicht des einzelnen Schreibens**, nicht der Bekanntheit
der Person und nicht der Rechtserheblichkeit des Themas. Eine kurze Erkundigung bleibt unten,
erst das ausformulierte Ersuchen hebt. Stimmt das — und ist «Grüezi Herr <Nachname>» bei Dir
eine bewusste Stufe unterhalb von «Geschätzter Herr <Nachname>»? *Warum: der Zwilling lag heute
zweimal zu hoch und schreibt Ämtern dadurch steifer, als Du es tust. Beide Belege stammen aber
vom selben Tag und Gerät — deshalb ist die Regel bewusst NICHT ins Gehirn kompiliert worden. Den
Wortlaut von `anrede-kontakte` ändert Claude nie selbst.*

**#3 — Lässt Du die Leerzeile zwischen Anrede und erstem Satz in der kurzen Rückfrage absichtlich
weg?** · *Facette [[stimme]]*

Beide Fragmente vom 26.03.2026 setzen den ersten Satz **direkt** unter die Anrede («Grüezi Herr
Kamm / Auf Ihrem Plan ist die …», «Guten Tag / Ich wollte mich …»). Die längere Mail vom
07.04.2026 — dasselbe Gerät, dieselbe Woche — hält die Leerzeile. Der Artikel kannte die
fehlende Leerzeile bisher nur für das reine Transmittal.

Ist das eine Form der kurzen operativen Rückfrage, oder schlicht das Tippen auf dem Handy?
*Warum: der Zwilling setzt heute immer eine Leerzeile. Wenn es eine Form ist, ist sie billig zu
lernen; wenn es ein Geräte-Artefakt ist, darf sie gar nicht gelernt werden — sonst wandert sie
in Mails, die Du am Rechner schreibst.*

**#4 — Beantwortest Du eine Fachplanerfrage, die an den Bauherrn gerichtet ist, grundsätzlich
nicht mit — auch wenn Du die Antwort kennst?** · *Facette [[haltung]]*

Am 07.04.2026 fragte der Brandschutzexperte **den Betrieb** («folgende Frage an den Betrieb …
Ist dies so in Ordnung … oder sollen … die Alarmhörner belassen werden?»). Du hast in derselben
Mail geantwortet und die Frage **nicht** beantwortet, sondern daneben den Submissionsstrang
eröffnet.

Meine Lesart: das ist die Linie «der Bauherr entscheidet über das, was ihn bindet — über den
Verfahrensweg entscheidest Du», hier zum ersten Mal an einem Fachplaner-Vorgang. Gilt sie so
streng, dass Du auch dann schweigst, wenn Du die Betriebsantwort sicher weisst? *Warum: der
Zwilling springt in solche Lücken und antwortet stellvertretend. Ein klares Ja macht aus einer
Beobachtung eine anwendbare Regel; ein Nein sagt mir, woran Du die Ausnahme erkennst.*

**#5 — Harness, kein Twin-Thema: darf der NAS-Guard einen verschatteten Mount selbst auflösen?**
· *Betrieb, zur Kenntnis + Entscheid*

Dieser Lauf startete ohne `/Volumes/daten`. Weder Netz noch NAS waren schuld (Last 0.06, Port 445
offen): der Keepalive trennte um 05:10 einen als hängend erkannten Mount, der Remount landete auf
`/Volumes/daten-2`, weil der Name noch belegt war — und danach meldete `nas-auto-mount.sh`
**15-mal in Folge** «Mount-Verifizierung fehlgeschlagen», weil `mount volume` die bestehende
Verbindung zurückgibt, statt unter dem erwarteten Namen neu zu mounten. Von Hand aufgelöst; der
Lauf lief anschliessend vollständig über SSH auf `/volume2/daten`, weil der SMB-Mount weiter alle
paar Minuten wegbrach.

Zwei Punkte: **(a)** Soll `nas-auto-mount.sh` einen Mount derselben Freigabe unter
`/Volumes/daten-N` erkennen und vor dem Remount trennen dürfen? Das ist ein `umount -f` ohne
Rückfrage und gehört deshalb Dir. **(b)** Der wiederkehrende Stall selbst (alle paar Minuten,
Mac Book Pro, NAS idle) ist ein zweites, älteres Thema — er steht in der Memory-Notiz
«NAS-Mount-Haertung» als gelöst, ist es aber offenbar nicht mehr. *Warum hier: der Lauf wäre ohne
den SSH-Umweg ausgefallen, und ein ausgefallener Fidelity-Lauf fällt nur im Register auf.*

**(c) — und der schwerere Teil: das GitHub-Backup laeuft seit dem 29.08.2026 leer.** Der Commit
dieses Laufs liegt sauber auf dem NAS, der **Push scheitert**: `main` ist **540 Commits voraus,
267 zurueck** gegenueber `github/main`, gemeinsamer Vorfahre 29.08.2026. Zwei Committer bauen
seither parallele Historien (nativer `nas-selfcommit.sh` und `auto-sync [Macmini]`).
`nas-selfcommit.sh` macht dabei alles richtig — Rebase, dann Merge, bei Konflikten sauberer
Abbruch mit dem Vermerk «Konflikte brauchen ein Urteil». Das Urteil fehlt seit drei Tagen.
**Solange es fehlt, ist GitHub kein Backup, sondern ein Stand vom 31.08.** Eine 540/267-Divergenz
aufzuloesen heisst zu entscheiden, welche Historie gilt — das entscheidet Claude nicht selbst.

## 260902 — Batch 112 (`Drafts` Seite 5, 15.08.–01.09.2026)

**#1 (Beziehungsregister · Entscheid Raphael) — hebt JEDER persönliche Kontakt die Anrede-Stufe,
oder nur ein Kontakt von einigem Gewicht?** Am 01.09.2026 nennst Du im zweiten Satz das
Telefonat desselben Morgens («Besten Dank für das Telefongespräch von heute Morgen») und bleibst
in der Anrede trotzdem auf der kältesten Stufe, «Sehr geehrter Herr Bajrami». Das ist nach
Stadelmann (22.07.2026) der zweite Gegenbeleg zur Treffen-Klausel in `rules/anrede-kontakte.md`
— und der erste, bei dem der Anlass im Erzeugnis selbst steht, also nicht aus dem Kalender
erschlossen werden muss. *Warum wir fragen: die Klausel-Belege (Eren nach der
Koordinationssitzung, Hiltmann nach dem Telefonat) tragen alle eine Bewegung **Sie → Du** nach
einem längeren Gespräch; die beiden Gegenbelege sind kurze Abstimmungstelefonate in laufender
Sache und bewegen gar nichts. Mögliche Trennlinie also nicht «Kontakt ja/nein», sondern
**Gewicht und Art des Kontakts**. Zwei Belege sind zu dünn, um sie zu ziehen — und die Klausel
sagt dem Zwilling heute, er solle vor jeder Fachplaner-Mail den Kalender prüfen und die Anrede
des letzten Threads als überholt behandeln. Das war in diesem Fall dreifach falsch gewesen.*
**Kein Eingriff in die Rule** — die Kontaktliste ist Dein Register.

**#2 (Echo-Schutz · an den Harness, Fortschreibung von 260819 #1) — die Token-Prüfung an der
ohnehin gelesenen Mail hat zum ersten Mal geliefert; soll sie in den Vorfilter-Standard?**
Batch 97 hatte einen Suchindex-Sweep über `font-claude-response-body` verlangt, Batch 98 wies
ihn als unmöglich nach (`outlook_email_search` indexiert kein Markup) und schlug ersatzweise
vor, jede ohnehin geöffnete Mail auf das Token zu prüfen — Kosten null. Genau so entstand in
diesem Lauf der **dritte Beleg der 15. Falle** (17.08.2026, Nutzungsbestätigung an das
städtische Amt, Cc Bauherrschaft und Fachplaner). *Warum das mehr ist als eine Bestätigung: der
Fund **widerlegt die Kanaltrennung aus Batch 111**. Eine Exchange-`internetMessageId` galt dort
als Beleg für Raphaels eigene Hand; hier trägt sie Maschinentext samt Raphaels Outlook-Signatur.
Der Umschlag trennt das Gerät, nicht die Hand. Als Vorfilter bleibt die Regel brauchbar, als
Gold-Nachweis ist sie erledigt.* Vorschlag zur Aufnahme in den Standard: (a) Token-Prüfung an
jeder gelesenen Mail, (b) zusätzlich der **gekürzte Service-Satz** als markup-freies
Zweitsignal — «Für Rückfragen stehen wir Ihnen gerne zur Verfügung» statt Deiner belegten Form
«Bei Fragen oder Unklarheiten stehe ich Ihnen jederzeit gerne zur Verfügung».

**#3 (Stimme · Bestätigung erbeten, ergänzt 260830 #1) — trennt die Du-Grossschreibung nach
frisch getipptem und eingesetztem Text?** In der Mail vom 25.08.2026 stehen alle drei
Grossformen («Dir», «Du», «Deine») **oberhalb** der Separatorlinie des Handy-Clients, die
Kleinform («findest **d**u generell hier») **unterhalb**, im wiederverwendeten Ablage-Baustein.
*Warum das nützlich wäre: die drei bisherigen Lesarten (Satzfunktion, Adressat-vs-Zuruf,
Haupt-vs-Nebensatz) verlangen alle eine Deutung des Satzes; diese hier ist im HTML nachmessbar
und damit die billigste. Sie schliesst die anderen nicht aus. Frage an Dich schlicht: schreibst
Du das Du klein, wenn Du einen Textbaustein einsetzt, den Du nicht in diesem Moment formulierst?*

**#4 (Arbeitsweise · zur Kenntnis, keine Frage) — der Zwilling darf ein Platzhalter-Gerüst nicht
glattschreiben.** Der Entwurf vom 01.09. ist bis zur Aufforderung fertig und setzt danach
`TeKoSi / _`, `Jans / _`, `_ Terminplan`. Das ist keine unfertige Prosa, sondern eine bereits
getroffene Gliederung nach Akteur. Als Regel in [[arbeitsweise]] aufgenommen; hier nur vermerkt,
weil der Zwilling bisher jeden abgebrochenen Entwurf als «zu Ende schreiben» gelesen hat.

**#5 (Harness · Methodik, erledigt sich selbst) — der `Drafts`-Bestand ist durchlaufen.** Seiten
1–5 sind mit den Batches 108–112 abgedeckt. Künftige Läufe ziehen dort nur noch den Zuwachs
(`order: newest`, Abgleich gegen `raw/_INGESTED.md`) statt einer Seitennummer; der reguläre
Vorwärtsfaden ist wieder `rj@` **Sent Items ab 01.09.2026**. *Warum vermerkt: die
Seitennummer-Mechanik hätte beim nächsten Lauf still ins Leere gegriffen, weil der Bestand
während des Durchlaufs von 124 auf 126 gewachsen ist.*

## 260902 — Fidelity-Review (twin-fragesteller)

**#1 [Fachsignatur/Stimme] Fallen die beiden Service-Satz-Verbote ganz, oder gelten sie neben der
Grundregel?**
Heute zweifach widerlegt, wortgleich, aus Deiner eigenen Hand: der Antrag ans UGZ (30.07.2026)
und das Abgebot an den Kuechenbauer (27.07.2026) tragen beide «Bei Fragen oder Unklarheiten stehe
ich Ihnen jederzeit gerne zur Verfuegung.» — obwohl der Zwilling kompiliert hat, dass Gesuch und
Antrag ans Amt (260719) und «alles im laufenden Vergabeverfahren» (260818/260826) ihn NICHT
tragen. Meine Aufloesung: die Grundregel 260807 traegt beides — wer fuer sich selbst etwas
erbittet (Antrag, Abgebot, Entgegenkommen), haelt den Kanal offen; wer etwas einfordert, worauf
er Anspruch hat (Auskunftsersuchen nach Fristablauf), schliesst ohne. Trennlinie also **Anspruch
gegen Gefallen**, nicht «Amt» oder «Vergabe».
*Warum das den Zwilling annaehert:* der Satz steht oder faellt in praktisch jeder ausgehenden
Sie-Mail; die falsche Regel hat ihn heute in zwei von drei Blindfassungen unterdrueckt. Eine
Zeile von Dir entscheidet, ob die Carve-outs gestrichen werden oder als Ausnahmen bestehen
bleiben.

**#2 [Stimme] Steht «Danke und Gruss» vor dem Block in der Sie-Behoerdenmail wirklich als Regel?**
Der Antrag ans UGZ (30.07.2026) schliesst mit dem Service-Satz und direkt darauf «Freundliche
Gruesse» + Block — ohne «Danke und Gruss». Der Zwilling hat die Formel heute zweimal gesetzt und
lag zweimal daneben. Ist sie an eine engere Gattung gebunden (Bitte um Nacharbeit?), oder ist sie
ueberhaupt keine Behoerden-Regel?
*Warum:* betrifft den Schluss jeder Amtsmail; Einzelbeleg, deshalb nicht kompiliert.

**#3 [Beziehungsregister] «Gruezi Herr X» und das namenlose «Guten Tag» ans Amt — Kanal oder
Gewicht?**
Praezisierung der Frage 260901b #2. Gegenprobe gefahren: neun authentische Amts-Eroeffnungen aus
Juni bis August 2026 ueber Outlook Desktop/Web, sechs Amtsstellen — **ausnahmslos** «Geschaetzte/r»
oder «Sehr geehrte/r», kein einziges «Gruezi», kein namenloses «Guten Tag». Beide Ausreisser vom
26.03.2026 sind Handy-Kurzentwuerfe, die nach zwei Zeilen abbrechen. Arbeitshypothese also: die
niederschwellige Eroeffnung haengt am **Kanal** (hingetippte Kurznachricht), nicht am Gewicht des
Anliegens.
*Warum:* entscheidet, ob der Zwilling die Anrede je nach Geraet/Laenge senken darf. Ich habe
keinen Maerz-Desktop-Vergleich, und die Regel beruehrt `rules/anrede-kontakte.md` — deren
Wortlaut aendere ich nie selbst.

**#4 [Beziehungsregister] Soll Othmar Stadelmann in `rules/anrede-kontakte.md` aufgenommen
werden — Du, seit August 2026?**
Belegt: 22.07.2026 «Geschaetzter Herr Stadelmann» (Sie), 05.08.2026 08:45 «Guten Morgen Othmar, /
Besten Dank fuer **Deine** E» (Du, eigene Hand). Chronologisch monoton, dritte Bestaetigung der
Trajektorien-Klausel. Die Rule fuehrt ihn bisher nur als Warnvermerk unter der Treffen-Klausel,
nicht als eigene Zeile.
*Warum:* er ist im KISPI-Strang laufend Empfaenger; ohne Zeile raet der Zwilling bei jeder Mail
neu.

**#5 [Stimme] Ist der vorweggenommene Dank («Danke fuer die prompte Zusendung.») bewusst gesetzt?**
Dreifach im selben Strang belegt, jedes Mal **anstelle** einer Bitte, jedes Mal bevor geliefert
wurde. Ich lese ihn als eigene Form neben der Vier-Stufen-Skala: er unterstellt die Zusage und
macht ein Nein teuer, ohne Druck auszusprechen. Ist das Absicht oder Routine — und gilt er auch
gegenueber Behoerden, oder nur gegenueber Unternehmern und Lieferanten?
*Warum:* der Zwilling trennt reflexhaft in Anweisung + generischen Dank und verliert damit genau
die Wirkung, die Deine Form hat.

**#6 [Arbeitsweise] Bleibt ein Rasterfeld absichtlich leer?**
Im UGZ-Antrag steht «Termin/Sprechstunde:» mit Doppelpunkt und ohne Wert, waehrend die
Teams-Sitzung samt Beitrittslink schon eroeffnet ist. Ich lese das als bewusstes Verfahren: das
Gefaess anlegen, die eine offene Groesse als leeres Feld sichtbar stehen lassen, statt sie zu
erfragen oder zu erfinden. Soll der Zwilling das generalisieren — leeres Feld statt Bitte um
Vorschlaege?
*Warum:* er hat heute genau hier einen ganzen Bitte-Satz erfunden. Waere das bestaetigt, haette
er ein einfaches, uebertragbares Mittel gegen die Erfindungs-Drift.
