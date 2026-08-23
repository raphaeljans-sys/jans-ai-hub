# Normen-Training Run 60 (MacBook Pro, 23.08.2026) — der Jahrgang 2017, und ein Destillat, das seinen eigenen Beleg falsch abschrieb

**Kurzfassung.**

> Run 58 hat festgestellt, dass 23 VKF-Destillate auf einer ueberholten Fassung beruhen; Run 59
> hat fuenf Deltas destilliert. Dieser Lauf hat den **ganzen Rest des Sammelpostens 01.01.2017**
> abgearbeitet: **sechzehn Fassungspaare** beschafft, gegenuebergestellt und destilliert, davon
> fuenfzehn aus dem Vorrang-Auftrag N58-1 und die BRL 13-15 als Gegenprobe. **Damit ist N58-1
> bis auf drei Sonderfaelle erledigt.**
>
> **Der schwerste Befund liegt nicht in den Normen, sondern in der KB selbst.** Dieselbe Quelle
> ist zweimal destilliert — `vkf-aenderungen-brandschutzrichtlinien-2017.md` und
> `vkf-brl-aenderungen-2017.md`, beide `established`, dieselben vierzehn Abschnitte. Und die
> aeltere der beiden gibt die **Gesamthoehe** falsch wieder: sie laesst die Fassung 2017 «um den
> Dachrand» messen, wo das Original «um die Dachflaeche … ueber dem tiefst gelegenen Teil des
> massgebenden Terrains» sagt. An der Gesamthoehe haengt die Einstufung geringe Hoehe / mittlere
> Hoehe / Hochhaus und damit das ganze Anforderungsprofil. Inline korrigiert.
>
> Materiell am folgenreichsten fuer die Projektarbeit: die EN-Klassen **E und E-d2 wandern von
> RF4 (cr) nach RF3 (cr)**, die RF4-Zeile ist seit 2017 leer; die **15-Sekunden-Frist der
> Sicherheitsbeleuchtung ist ersatzlos entfallen**; und bei den **Loescheinrichtungen** kehrt sich
> das Personenzahl-Kriterium fuer kleine Verkaufsraeume um.

## 1. Ausgangslage

Gate `lauf-gate.sh` rc=0, NAS gemountet, kein konkurrierender Lauf (`ps`). Zugriff auf
`PL - 03 Brandschutz/` direkt gelesen, kein TCC-Fall, M365-Fallback nicht noetig. Das Inventar
hat weiterhin keine destillierbare offene Position; der Lauf arbeitet nach PROGRAMM Ziff. 6 auf
der Vertiefungsstufe und folgt der Uebergabe aus Run 59. Stationssplit eingehalten: nur SIA und
VKF, kein DIN, VSS oder RAL.

**Alle sechzehn geltenden Fassungen** ueber
`https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-<NR>.pdf/content`
geladen. **Alle sechzehn MD5 stimmen mit den in Run 58 protokollierten ueberein** — die
Fassungsmatrix ist drei Tage spaeter unveraendert reproduzierbar. Fassungsdatum bei jeder Datei
**am gedruckten Titelblatt abgelesen**, nicht aus Dateiname oder Portal-Titel abgeleitet; alle
sechzehn tragen «01.01.2017».

## 2. Der Fund im Hausbestand, und warum er den Lauf nicht abgekuerzt hat

Im Hausbestand liegt `Aenderungen_Brandschutzrichtlinien_VKF-2017.pdf`, eine synoptische
Gegenueberstellung 2015 gegen 2017 mit gelb markierten Aenderungen (AFC Basel, Autorin Lisa
Hugenschmidt, 32 Folien). Das ist ein starkes Werkzeug — und es ist eine **Sekundaerquelle**.
Sie wurde als **Zeiger** verwendet, nie als Beleg; jeder uebernommene Delta ist am
VKF-Originalpaar geprueft.

Drei Gruende, warum sie den Lauf ohnehin nicht ersetzt haette:

1. Sie deckt **nur die Richtlinien** ab. Die sechs Brandschutzerlaeuterungen (100-15, 101-15,
   102-15, 105-15, 106-15, 107-15) und die beiden Arbeitshilfen (1000-15, 1002-15) fehlen ganz —
   und genau dort liegen die groessten Deltas dieses Laufs.
2. Auch bei den Richtlinien fehlen **18-15** und **24-15**.
3. Sie ist an mindestens einer materiellen Stelle **falsch abgeschrieben worden** (Ziff. 4).

**Die amtliche Aenderungsliste auf Seite 2 jeder Fassung** ist die bessere Quelle und wurde fuer
alle sechzehn ausgelesen. Bemerkenswert: die Richtlinien tragen «Vom IOTH am 22. September 2016
genehmigte Aenderungen», die Erlaeuterungen und Arbeitshilfen dagegen «Von der Technischen
Kommission VKF am 29. September 2016 genehmigte Aenderungen» — zwei verschiedene Gremien, sieben
Tage auseinander, fuer dieselbe Revision.

## 3. Arbeitsteilung und was der Hauptprozess selbst nachgelesen hat

Acht Destillier-Agenten (Sonnet) fuer die sechzehn Publikationen. Nach ihrer Rueckkehr hat der
Hauptprozess die folgenschweren Befunde **an eigenen Renderings der Originale** nachgelesen
(Methodik-Pflicht 5), nicht die Agentenmeldung uebernommen:

| geprueft | Ergebnis |
|---|---|
| Gesamthoehe, Fassung 2015 gegen 2017, AFC-Synopse Folie 2 | **bestaetigt** — 2015 «um den Dachrand», 2017 «um die Dachflaeche…»; das KB-Destillat war falsch |
| QSS-Tabelle, welcher Fassungsschritt die Lockerung bei QSS 3 brachte | **datiert** — Beschluss 22.09.2016, also Fassung 2017, nicht 2019 |
| BRL 18-15, Anhangtabelle S. 8, Zeile Verkaufsraeume | **bestaetigt**, kein Extraktionsartefakt; uebrige Zeilen identisch |
| BRL 18-15, Fussnote [2] der Nachbarzeile | **praezisiert den Befund** — WLP erst ab 2'000 Personen, die Doppelerfassung 2015 war redundant, nicht widerspruechlich |
| BRL 13-15, Zuordnungstabelle Ziff. 2.4.1 S. 8 | **bestaetigt** — E, E-d2, EL, EL-d2 von RF4 (cr) nach RF3 (cr); RF4-Zeile 2017 «–» |
| BRL 21-15, Anhangtabelle S. 13, Fussnote [3] | **bestaetigt** — wandert von LRWA zu NRWA und MRWA, Zahlenwerte unveraendert |
| BRL 17-15, Anhangtabelle S. 9, Zeile Verkaufsraeume | **bestaetigt** — Verschiebung in die Gewerbe-/Industriezeile |
| AH 1000-15, doppelt vergebene Ziffer 4.2.2.2 in der Fassung 2015 | **bestaetigt** am Original — echter Redaktionsfehler der VKF |
| Folgefehler-Verdacht des Agenten im Bestandsdestillat 1000-15 | **WIDERLEGT** — das Destillat zitiert 4.2.2.2 nur fuer die Dachtabelle, wo die Nummer in beiden Fassungen zutrifft |
| Zwei-Schritt-Zuordnung der BRL 10-15 durch Run 59 | **WIDERLEGT als Befund** — Run 59 hatte die Beschluesse 2016 und 2018 bereits korrekt getrennt |

Zwei der elf Nachpruefungen haben einen vermuteten Befund **widerlegt**. Das ist der Ertrag der
Methodik-Pflichten 5 und 7, und er faellt in beide Richtungen: einmal gegen einen Agenten, einmal
gegen die eigene Arbeitshypothese des Hauptprozesses.

## 4. Der Befund, der die KB selbst betrifft: ein Doppelbestand, und eine falsche Gesamthoehe

Dieselbe Quelle ist in dieser KB **zweimal** destilliert:
`vkf-aenderungen-brandschutzrichtlinien-2017.md` (13.07.2026) und `vkf-brl-aenderungen-2017.md`
(21.07.2026). Beide `established`, beide mit denselben vierzehn Abschnitten und denselben
Seitenbezuegen, beide aus der AFC-Synopse. Sie sind unabhaengig voneinander entstanden, und
niemand hat es bemerkt — der Fassungs-Sweep in Run 58 hat Destillate gegen das **Portal**
abgeglichen, nicht gegen einander.

**Und die aeltere der beiden ist an einer materiellen Stelle falsch.** Sie gibt die Fassung 2017
der **Gesamthoehe** so wieder: «um den Dachrand beziehungsweise um den Dachflaechenbereich ueber
dem tiefst gelegenen Teil des massgebenden Terrains». Gedruckt steht dort «um **die Dachflaeche**
beziehungsweise um den Dachflaechenbereich …». Der Begriff der **alten** Fassung ist in den Satz
der **neuen** hineingerutscht — die haeufigste und unauffaelligste Art, eine Fassungsaenderung zu
verderben, weil der Satz danach vollstaendig plausibel klingt.

Warum das zaehlt: an der Gesamthoehe haengt die Einstufung geringe Hoehe / mittlere Hoehe /
Hochhaus, und daran praktisch das ganze brandschutztechnische Anforderungsprofil. Bei einem
Flachdach am Hang oder mit hoher Attika entscheidet genau dieser Halbsatz, ob gemessen wird bis
zum Dachrand oder bis zur Dachflaeche ueber dem **tiefstgelegenen** Terrainpunkt.

Am 200-dpi-Rendering der Synopse beidseitig abgelesen, beide Spalten gelb markiert. **Inline
korrigiert** (Methodik-Pflicht 9); das Parallel-Destillat fuehrte die Stelle von Anfang an
richtig und ist bis zum Entscheid ueber die Zusammenlegung als fuehrend gekennzeichnet. Die
Zusammenlegung selbst ist destruktiv und liegt bei Raphael (N60-1).

## 5. Was 2017 wirklich geaendert hat — die materiellen Befunde

### 5.1 Baustoffe: eine ganze EN-Klasse wechselt die Brandverhaltensgruppe

**BRL 13-15, Ziff. 2.4.1, S. 8.** Die EN-Klassen **E und E-d2** (Bauprodukte) sowie **EL und
EL-d2** (lineare Rohrdaemmungen) stehen 2015 in der Zeile **RF4 (cr)** und 2017 in der Zeile
**RF3 (cr)**. Die RF4-Zeile zeigt 2017 in allen drei Produktspalten nur noch «–». Vom
Hauptprozess an eigenen Renderings beider Fassungen abgelesen.

**Damit ist zugleich N59-1 beantwortet**, die seit Run 59 offene Frage nach der Bedeutung von
«(cr)». «(cr)» steht fuer *comportement critique* und ist ein **Anwendungsbeschraenkungs-Flag
innerhalb einer RF-Gruppe**, keine eigene fuenfte Stufe: Baustoffe, die zwar die RF-Stufe
erreichen, aber wegen Rauchentwicklung, brennendem Abtropfen oder Korrosivitaet beschraenkt
anwendbar sind. Praktisch heisst das: **ein Produkt der Klasse E erfuellt eine Anforderung «RF3»
niemals, eine Anforderung «RF3 (cr)» seit 2017 schon.** Wer eine Anwendungsbeschraenkung
ausschliessen will, muss den cr-freien Teilbereich verlangen und darf sich nicht darauf
verlassen, dass ein in die RF3-Zeile gewandertes Produkt auch die cr-freie Teilmenge erfuellt.

### 5.2 Sicherheitsbeleuchtung: die 15-Sekunden-Frist ist weg

**BRL 17-15, Ziff. 3.2.2 Abs. 1, S. 6.** Die feste Frist von 15 Sekunden fuer das Erreichen der
Nennbeleuchtungsstaerke ist **ersatzlos entfallen** und durch «entsprechend dem Stand der
Technik» ersetzt. Eine harte, im Abnahmeprotokoll pruefbare Zahl ist damit zu einem
auslegungsbeduerftigen Begriff geworden. Fuer Ausschreibung und Abnahme heisst das: die Frist
gehoert neu **in den Werkvertrag**, wenn sie gelten soll, denn die Richtlinie traegt sie nicht
mehr.

### 5.3 Verkaufsraeume: dieselbe Bereinigung an drei Stellen

Der Jahrgang 2017 fuehrt den Begriff **«Verkaufsraeume»** neu ein (BRL 10-15) und zieht ihn
zugleich durch die Anwendungsrichtlinien. Das ist in diesem Lauf an drei unabhaengigen Stellen
sichtbar geworden, und erst zusammen ergeben sie ein Bild:

- **BRL 10-15** definiert Verkaufsraeume als Raeume fuer den Warenverkauf, die weder unter
  «Raeume mit grosser Personenbelegung» noch unter «Verkaufsgeschaefte» fallen, mit der
  Zuweisung «es gelten die nutzungsbezogenen Anforderungen an **Gewerbe und Industrie**».
- **BRL 17-15**, Anhang zu Ziff. 2.2, S. 9: «Verkaufsraeume» wandert aus der Zeile «Raeume mit
  grosser Personenbelegung, Verkaufsgeschaefte» in die Zeile «Industrie- und Gewerbebauten» —
  genau die Zuweisung der Definition. Fuer den Verkaufsraum sinkt damit die Anforderung:
  sicherheitsbeleuchtete Rettungszeichen und Sicherheitsbeleuchtung **fuer Fluchtwege in
  Raeumen** sind nur noch empfehlenswert statt erforderlich.
- **BRL 18-15**, Anhang zu Ziff. 2, S. 8: die Zeile «Verkaufsraeume ≤ 1'200 m²» kehrt ihr
  Personenzahl-Kriterium um, von «und mehr als 300 Personen» auf «und ≤ 300 Personen».

**Die Umkehr in der 18-15 ist keine Verschaerfung und kein Widerspruch, sondern eine
Entdopplung** — und dieser Punkt hat den Hauptprozess eine eigene Nachpruefung gekostet. Die
BRL 10-15 zaehlt Verkaufsraeume bis 1'200 m² mit ueber 300 Personen ausdruecklich zu den «Raeumen
mit grosser Personenbelegung»; die Fassung 2015 fuehrte denselben Raum also in **zwei** Zeilen
zugleich. Ob daraus ein Widerspruch wurde, haengt an der Fussnote [2] jener Nachbarzeile: der
Wasserloeschposten wird dort erst **ab 2'000 Personen** verlangt. Fuer 301 bis 2'000 Personen
ergaben beide Zeilen dasselbe. Die Doppelerfassung war **redundant, nicht widerspruechlich**.
Was real neu ist: kleine Verkaufsraeume mit **wenig** Publikum sind neu ausdruecklich
handfeuerloescherpflichtig; zuvor standen sie in keiner Zeile und lagen im Ermessen.

Ohne die Fussnote gelesen, waere daraus ein «Widerspruch in der Norm» geworden. Das ist
Methodik-Pflicht 7 in ihrer nuetzlichsten Form: die Zelle stimmt, die Tabelle entscheidet.

### 5.4 Schulbauten: der schwerste Einzelbefund, und er lautet anders als gemeldet

**AH 1002-15, Ziff. 7.3.2, S. 21.** Die Fassung 2015 kannte zwei Ausloeser fuer zwei vertikale
Fluchtwege: Geschossflaeche ueber 900 m² (A1) **und** Raeume mit einer Personenbelegung ueber
100 Personen (A2). Die Fassung 2017 nennt nur noch das Flaechenkriterium, neu als a/b
strukturiert, und verweist nur noch auf «BSR16-15, Z.2.4.2, **A1**». Das Wort «100 Personen»
kommt in der ganzen Fassung 2017 der Arbeitshilfe **kein einziges Mal** mehr vor.

Der Destillier-Agent hat daraus geschlossen, das Kriterium sei ersatzlos entfallen, und es als
groessten sicherheitsrelevanten Fund des Laufs gemeldet. **Die Beobachtung ist richtig, die
Schlussfolgerung war falsch — und zwar in der gefaehrlichen Richtung.** Die Gegenpruefung an der
Mutterrichtlinie zeigt: die **BRL 16-15 «Flucht- und Rettungswege», Fassung 01.01.2017**, fuehrt
in Ziff. 2.4.2 Abs. 2 unveraendert, dass Raeume mit mehr als 100 Personen durch mindestens zwei
vertikale Fluchtwege zu erschliessen sind, sofern nicht ausreichende ebenerdige Fluchtwege ins
Freie zur Verfuegung stehen.

**Die Anforderung ist also nicht abgeschafft, sie ist nur aus der Arbeitshilfe verschwunden.**
Die Gefahr ist damit die umgekehrte: nicht dass jemand eine weggefallene Anforderung noch
erfuellt, sondern dass jemand, der sich auf die Arbeitshilfe stuetzt, einen zweiten vertikalen
Fluchtweg **weglaesst, den die Richtlinie verlangt**. Fuer eine Aula oder eine Mehrzweckhalle mit
ueber 100 Personen ist das der Regelfall, nicht der Sonderfall — und Schulbauten sind
JANS-Kerngeschaeft.

Derselbe Griff erklaert eine zweite Beobachtung: die neue Fussnote zu Ziff. 4.3.2 verweist auf
«Beherbergungsbetriebe **[a]**», ohne das Zeichen zu definieren; der Agent hielt das fuer einen
nicht angepassten Textbaustein aus einer fremden Publikation. Es stammt aus **Abs. 3 derselben
Richtlinienziffer**. Auch dieser Absatz ist in der Arbeitshilfe nicht wiedergegeben.

Beide Stellen sind im Destillat **inline korrigiert** (Methodik-Pflicht 9), samt Kurzfassung.

### 5.5 Die uebrigen materiellen Befunde in Kuerze

| Publikation | Ziffer / gedruckte Seite | Aenderung |
|---|---|---|
| **BRL 18-15** | Anhang zu 3.2, S. 10 | Entnahmestelle: Feuerhahn 2″ «**oder** mit Storz 55/75» wird «**jeweils mit**» — aus der Alternative wird eine kumulative Ausruestungspflicht |
| **BRL 20-15** | 3.2.2 lit. k, S. 6 | neuer Buchstabe «separate Pellets- und Schnitzellager»; die folgenden Buchstaben verschieben sich |
| **BRL 20-15** | 3.2.2 lit. l, S. 6 | Erleichterung: bei ueberschrittener Brandbelastung genuegt teils eine Bereichsueberwachung entlang der Kabeltrasse statt Vollueberwachung |
| **BRL 21-15** | 3.4.1, Tabelle S. 8 | bei Atriumbauten «Grundflaeche» → «**Atriumsflaeche**»; Schwelle 2'400 m² unveraendert, aber die Bezugsflaeche ist eine andere |
| **BRL 21-15** | Anhang zu 3.2, Tabelle S. 13 | Fussnote [3] (Deckelung 3'600 m², darueber Leistungsnachweis) wandert von **LRWA** zu **NRWA und MRWA**. Zahlen unveraendert, die Nachweispflicht liegt neu bei anderen Systemtypen |
| **BRL 23-15** | 3.6 Abs. 2, S. 5 | Aufzugsschachttueren duerfen bei Anlagen in nur ein Untergeschoss direkt in eine Nutzungseinheit muenden, wenn E30/E60 erfuellt ist — bisher zwingend ueber Schleuse, Fluchtweg oder Vorplatz |
| **BRL 24-15** | Anhang zu 6.3 und 6.4, S. 39 | Klarstellung: die Lagermengen (10 m³ fest, 8'000 l bzw. 4'000 l fluessig) gelten **unabhaengig von der Nennwaermeleistung** |
| **BRL 25-15** | 3.7.4, S. 6/7 | Neustrukturierung: das Kriterium wechselt vom **Material der Leitung** zur **Lage im horizontalen oder vertikalen Fluchtweg**; die 0.5-mm-RF1-Ummantelung fuer cr-Baustoffe gilt neu allgemein |
| **BRL 25-15** | 4.2.2 Abs. 1 und 2, S. 9 | nach VKF-Absperrvorrichtung genuegt RF3 (cr) statt RF1 in der Kuechenabluft; die Absperrpflicht gilt neu bei Zufuehrung zu **jedem** Luftaufbereitungsapparat statt nur bei WRG-Rueckfuehrung |
| **BRL 25-15** | Anhang zu 4.3.1, S. 28 | Temperaturschwelle aller drei Tabellen «TL < 100 °C» → «TL **≤** 100 °C» |
| **BSE 101-15** | Anhang zu 2.2.2, S. 7 | reine Vektorgrafik, im Textlayer unsichtbar: Beschriftung «100 – 300 Personen» → «**> 100 bis ≤ 300** Personen» |
| **BSE 102-15** | 1.3 Abs. 1, S. 5 | Anwendungsbereich von «zwei Aussenfassaden» auf «mehrere **Fassadenebenen**» erweitert |
| **BSE 102-15** | 2.1.4 / 2.2 / 2.3 / 2.4 | textile Beschattung neu aus RF4 (cr) zulaessig; bei geschuetztem Loeschanlagenkonzept ausdruecklich von jeder Baustoffanforderung befreit |
| **BSE 105-15** | 6.6 Abs. 3, S. 6 | Temperaturueberwachungs-Einbauort wandert vom **Schnitzellager** nach **unmittelbar ausserhalb** davon; im Prinzipschema S. 12 nachvollzogen |
| **BSE 106-15** | 1 Abs. 2, S. 4 | Geltungsbereich: die Pellets-Definition verliert den Verweis auf EN 14961-2, nur noch Mass- und Feuchtewerte sind massgeblich |
| **BSE 106-15** | Anhang S. 10 | neue Schraegboden-Anforderung mit Mindestmass 1.0 × 0.7 m |
| **BSE 107-15** | 3.2 lit. b, S. 4 | «1'100 kg» → «1'100 kg **netto**» — und diese Aenderung steht **nicht** auf der Aenderungsliste |
| **BSE 107-15** | Anhang, Tabellen S. 9/10 | Zeile «mind. EI 60 **und zugekehrte Wand oeffnungslos**» verliert die Oeffnungslos-Bedingung; die Schutzabstandstabelle wird von getrennter Tank-/Flaschenlogik auf eine einheitliche m³-Tabelle umgestellt, die Ausnahme «kein Minimalabstand bis 250 kg» entfaellt |
| **AH 1000-15** | 5.1 Abs. 1/2, S. 10 | neue Reduktionskategorie «zwischen Einfamilienhaeusern», unabhaengig von der Hoehenklasse; Messgrundlage praezisiert |
| **AH 1000-15** | 4.1 Abs. 2, S. 6 | Systemwechsel vom Verbotsprinzip zur Abdeckungspflicht, mit neuem Katalog von neun cr-Ausnahmen |
| **AH 1002-15** | 4.3.2, S. 12/13 | tragende Bauteile in vertikalen Fluchtwegen: RF1 zwingend → **RF3**, mit neuer Fussnote «einzelne lineare tragende Bauteile, sichtbar einbaubar» |

**Rein redaktionell und ausdruecklich als solches gefuehrt** ist der grosse Rest: der
durchgaengige Wechsel «RF3» → «RF3 (cr)» (Kennzeichnung, keine Klassenaenderung), die
Begriffsumstellung «Bedachung» ↔ «Dachkonstruktion» und «Isolation» → «Daemmung». Bei der
**BSE 100-15 Brandmauern** ist das Ergebnis sogar vollstaendig: acht gelistete Fundstellen,
**keine einzige materiell**; alle Masse der drei Anhang-Prinzipschnitte am Rendering geprueft und
identisch. Ein ehrliches Nullergebnis ist auch ein Ergebnis.

## 6. Zwei Muster, die ueber diesen Lauf hinausreichen

### 6.1 Die Aenderungsliste ist nicht die Aenderung — zweiter belegter Fall

Run 59 hat an der **BSE 108-15** gezeigt, dass eine Aenderungsliste sagt, was seit der letzten
Fassung geaendert wurde, nicht was seit der Fassung geaendert wurde, die man selbst hat. Dieser
Lauf liefert einen **zweiten, andersartigen** Fall: die **BSE 107-15** nennt auf S. 2 als einzige
Position «Anhang zu Ziffer 3.4», waehrend tatsaechlich auch **Ziff. 3.2 des Hauptteils** geaendert
wurde («1'100 kg» → «1'100 kg netto») und zwei Anhang-Tabellen vollstaendig neu strukturiert
wurden. Hier ist die Liste nicht durch einen Fassungssprung verkuerzt, sondern schlicht
**unvollstaendig**.

Der Gegenbeleg desselben Laufs ist ebenso wichtig: bei der **BRL 24-15** war derselbe Verdacht
ausdruecklich zu pruefen, weil der Textlayer-Diff weit mehr Zeilen zeigte als die vier gelisteten
Fundstellen. Die Pruefung ergab, dass der Ueberhang fast vollstaendig auf rund zwanzig
Inhaltsverzeichnis-Zusaetze «(siehe Anhang)» und einen durchgehenden Kopfzeilen-Tippfehler
entfaellt. **Kein fuenfter materieller Befund** — die Liste dieser Publikation ist, soweit
pruefbar, vollstaendig.

Daraus die Arbeitsregel, die dieser Lauf befolgt hat und die kuenftige befolgen sollten: **die
Aenderungsliste ist der Zeiger, der Volltext-Diff ist die Kontrolle.** Weder ersetzt den anderen.
Wo der Diff mehr zeigt als die Liste, ist zuerst zu klaeren, ob es Rauschen ist — und erst dann,
ob die Liste luegt.

### 6.2 Eine Arbeitshilfe ist eine Wiedergabe, keine Rechtsquelle

Der Schulbau-Befund aus Ziff. 5.4 ist der Anlass, aber das Muster ist allgemein und betrifft die
ganze Familie der VKF-Arbeitshilfen und Brandschutzerlaeuterungen: sie zitieren die
Brandschutzrichtlinien mit Fundstelle («BSR16-15, Z.2.4.2, A1») und geben sie **auszugsweise**
wieder. Faellt in einer solchen Publikation eine Anforderung weg, sind zwei Deutungen moeglich,
und sie fuehren zu entgegengesetztem Handeln:

1. Die Anforderung wurde in der Mutterrichtlinie aufgehoben — dann ist es eine Lockerung.
2. Die Wiedergabe wurde gekuerzt — dann gilt die Anforderung weiter, und wer der Arbeitshilfe
   folgt, unterschreitet sie.

**Die Fundstelle im Text sagt einem, wo man nachschauen muss:** die Arbeitshilfe 1002-15 zitierte
2015 «Z.2.4.2, A1» **und** «Z.2.4.2, A2» und zitiert 2017 nur noch «A1». Der weggefallene
Verweis ist der Zeiger auf die Stelle, an der zu pruefen ist.

**Vorgeschlagene Methodik-Pflicht 14, Raphael zur Freigabe vorgelegt** (nicht selbstaendig
umgesetzt, gemaess dem Entscheid vom 17.08.2026 zu MP 11):

> Verliert eine VKF-Arbeitshilfe oder Brandschutzerlaeuterung zwischen zwei Fassungen eine
> Anforderung, wird das **nicht** als Lockerung protokolliert, bevor die zitierte Ziffer der
> Mutterrichtlinie in der entsprechenden Fassung nachgelesen wurde. Steht die Anforderung dort
> weiter, lautet der Befund «aus der Wiedergabe entfallen, materiell unveraendert in Kraft» —
> und er ist als **Warnung** zu fuehren, nicht als Erleichterung.

Der Beleg ist nicht konstruiert: der Befund waere ohne die Gegenpruefung als groesster
sicherheitsrelevanter Fund des Laufs ins Register gegangen, mit umgekehrtem Vorzeichen.

### 6.3 Was die Zahlen des Laufs ueber die Methode sagen

Elf Nachpruefungen des Hauptprozesses, davon **zwei Widerlegungen** und **eine Umkehrung**. Das
ist eine deutlich andere Verteilung als in Run 50, wo 79 von 79 gemeldeten Befunden bestaetigt
wurden und der Report damals selbst anmerkte, eine Bestaetigungsquote von 100 % sei
pruefbeduerftig. Die diesjaehrige Verteilung stuetzt beide Haelften der Methoden-Lehre: die
Nachpruefung **kann** widerlegen, und sie **hat** es getan.

Bemerkenswert ist, wo die Widerlegungen lagen. Keine betraf einen falsch abgelesenen Zahlenwert;
alle drei betrafen die **Deutung** einer richtig abgelesenen Beobachtung — der Kontext einer
Fussnote, die Reichweite einer Nummer, die Ebene einer Rechtsquelle. Die Agenten lesen zuverlaessig
und schliessen zu schnell. Das ist ein anderes Fehlerprofil als in den Runden 5 bis 8 der
Lignum-Reihe, wo falsche Zellwerte das Problem waren, und es legt nahe, den Nachpruefaufwand
kuenftig weniger auf «stimmt der Wert» und mehr auf «traegt der Schluss» zu legen.

## 7. Pruefstand — welche Methode auf welchem Teil (Methodik-Pflicht 13)

| Teil | Methode | Abdeckung |
|---|---|---|
| Titelblatt und Fassungsdatum, alle 16 Paare | gedruckt **abgelesen** | vollstaendig |
| Amtliche Aenderungsliste S. 2, alle 16 Fassungen 2017 | Textlayer, vollstaendig ausgelesen | vollstaendig |
| Volltext-Diff beider Fassungen, alle 16 Paare | `pdftotext -layout`, Fuss-/Kopfzeilen bereinigt | vollstaendig, als **Kontrolle** der Liste |
| Jede in der Liste genannte Tabelle und Zeichnung | **Rendering**, 150 bis 400 dpi, beide Fassungen | vollstaendig bei 13-15, 17-15, 18-15, 20-15, 21-15, 23-15, 24-15, 25-15, 100-15, 101-15, 105-15, 106-15, 107-15, 1000-15, 1002-15 |
| Fliesstext-Ziffern ohne Tabellenanteil | Textlayer, seitengetreu | vollstaendig |
| Folgenschwere Einzelbefunde | **Hauptprozess**, eigenes Rendering am Original | elf Stueck, siehe Ziff. 3 |

**Was ausdruecklich NICHT geprueft wurde:**

- **Die Abdeckungsrichtung.** Geprueft wurde, **was sich geaendert hat**. Ob die
  Bestands-Destillate ihre eigene Fassung 2015 vollstaendig abbilden, ist damit weiterhin
  unbekannt — dieselbe Luecke, die Run 59 fuer seine fuenf Deltas ausgewiesen hat. Nach
  Methodik-Pflicht 13 bleibt darum **kein** Delta-Destillat dieses Laufs auf `established`; alle
  sechzehn tragen `speculative`.
- **Keine unabhaengige Refuter-Runde** ueber die sechzehn neuen Destillate. Sie sind vom
  Hauptprozess an den folgenschweren Stellen gegengelesen, aber nicht adversarial widerlegt.
- **BSE 102-15, Anhang**: nicht gerendert, weil die Aenderungsliste dort keine Position nennt.
  Nicht ausgeschlossen, nur nicht geprueft.
- **AH 1002-15, Anhang S. 29-31**: nicht geprueft; moeglicher Ort eines Teils des Seitenzuwachses.
- **AH 1000-15, Ziff. 5.2 bis 9.1 und 10 bis 12**: nicht gerendert, kein Listeneintrag, Diff
  zeigte nur Paginierung.
- **AH 1002-15, Ziff. 4.4.1.2**: die vorliegende Datei traegt «Stand 17.05.2018» und enthaelt
  damit die Aenderungen von 2016 **und** 2018 in einem Schritt. Ohne Zwischenfassung ist nicht
  zuordenbar, welche cr-Lockerung aus welchem Schritt stammt.
- **DIN, VSS, RAL**: nicht angefasst, Stationssplit.

## 8. Nachgefuehrt

- **16 neue Delta-Destillate** unter `destillate/`, alle `speculative`, alle mit Pruefstand-Tabelle.
- **16 Bestands-Destillate** nachgefuehrt: der Warnkasten sagt nicht mehr «Das Fassungs-Delta ist
  nicht destilliert», sondern verweist auf das Delta; die `links:`-Zeile ist ergaenzt.
- **`vkf-aenderungen-brandschutzrichtlinien-2017.md`**: Gesamthoehe **inline korrigiert**,
  Doppelbestand-Kasten gesetzt.
- **`vkf-brl-aenderungen-2017.md`**: Doppelbestand-Kasten gesetzt, als fuehrend gekennzeichnet.
- **`vkf-brl-11-15-fassung-2019-delta.md`**: die QSS-Tabellenaenderung ist neu den beiden
  Beschluessen zugeordnet — QSS 3 von ● auf ○ stammt aus dem Beschluss 22.09.2016 (Fassung
  01.01.2017), die Umbenennung in «(Bericht)» und QSS 1 aus dem Beschluss 20.09.2018.
- **`vkf-brl-18-15-fassung-2017-delta.md`**, **`vkf-brl-17-15-fassung-2017-delta.md`**,
  **`vkf-ah-1002-15-fassung-2017-delta.md`**: je ein offener Punkt vom Hauptprozess am Original
  **geschlossen**, bei 1002-15 zusaetzlich der Kernbefund umgekehrt.
- `wiki/REGISTER.md`, `wiki/QUESTIONS.md`, `CHANGELOG.md`, `training/norm-inventar.md`.

## 9. Uebergabe an den naechsten Lauf

1. **N58-1 ist bis auf drei Sonderfaelle erledigt** — 20 der 23 ueberholten Destillate haben ihr
   Delta (5 aus Run 59, 15 aus diesem Lauf). Offen bleiben allein: **103-15** (am 31.08.2025
   zurueckgezogen, siehe N58-2 — hier ist nicht ein Delta zu destillieren, sondern die
   Zurueckziehung nachzuvollziehen), **12-15 und 26-15** (Teilrevision 2026, in
   `vkf-teilrevision-2026-pyrotechnik.md` bereits erfasst — zu pruefen ist nur, ob jenes
   Destillat die Bestandsdestillate ausreichend ersetzt), sowie **27-15** (N58-3).
2. **N60-1, Entscheid Raphael:** Zusammenlegung der beiden Destillate der AFC-Synopse. Claude legt
   Artikel nicht selbstaendig zusammen. Dasselbe gilt fuer die von einem Agenten aufgeworfene
   Frage, ob das Delta der 13-15 kuenftig inline im Bestandsdestillat oder als eigene Datei
   kanonisch ist (QUESTIONS 260823).
3. **N60-2, Methodik-Pflicht 14 zur Freigabe vorgelegt** — Wegfall in einer Arbeitshilfe gegen die
   Mutterrichtlinie pruefen, bevor er als Lockerung gilt. Belegt am Schulbau-Fall.
4. **Die Abdeckungsrichtung ist der naechste grosse Schritt**, nicht ein weiterer Delta-Lauf. Nach
   Methodik-Pflicht 13 kann kein Destillat auf `established`, solange nur die Refuter-Richtung
   gelaufen ist. Fuer die VKF-Familie ist sie auf **keinem** Bestands-Destillat gelaufen.
5. **Der SIA-Sweep** nach dem Muster von Run 58 ist weiterhin offen und seit Run 37 beziffert: das
   REGISTER fuehrt 102 SIA-Zeilen ohne Datei im Haus, 58 % der aktiven. Die
   SIA-Produktdatenblaetter mit «gueltig ab / gueltig bis» sind kostenlos. Das bleibt der
   groesste unbearbeitete Block dieser KB.
6. **Offen aus diesem Lauf, klein:** ob «Technikraum Sicherheitsstromversorgung» (neu in
   BRL 17-15) im Glossar BRL 10-15 gefuehrt wird; und der Begriffstausch «Bauten» → «Gebaeude» in
   der BSE 100-15, der in keiner Aenderungsliste steht.

## Belege

Alle sechzehn geltenden Fassungen ueber
`https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-<NR>.pdf/content`
geladen (NR 71, 89, 91, 101, 105, 113, 117, 121, 141, 145, 149, 161, 165, 169, 181, 189), Abruf
23.08.2026. **Alle sechzehn MD5 stimmen mit den in Run 58 protokollierten ueberein.**
Fassungsdaten am gedruckten Titelblatt abgelesen. Alte Fassungen aus dem Hausbestand SharePoint
`PL - 03 Brandschutz/`, Ordner «02 Brandschutzrichtlinien 2015-17-22», «04 Erlaeuterungen
Brandschutz 2015» und «05 Arbeitshilfen Brandschutz 2015», Titelblaetter ebenfalls abgelesen.

Zusaetzlich herangezogen und ausdruecklich als Sekundaerquelle behandelt:
`Aenderungen_Brandschutzrichtlinien_VKF-2017.pdf` (AFC Basel). Zusaetzlich zur Gegenpruefung
geladen: BRL 10-15 und BRL 11-15 in der Fassung 01.01.2019 (NR 2768, 2706); BRL 16-15 aus dem
Hausbestand, Fassung 01.01.2017.

Renderings mit publikationsspezifischen Praefixen (Methodik-Pflicht 5): `n60-afc-`, `hp60-1815-`,
`hp60-2115-`, `hp60-1315-`, `hp60-1715-` fuer den Hauptprozess, `n60-<nr>-` fuer die Agenten.
Gegenpruefung jedes Befundes gegen das **ganze** Destillat (Methodik-Pflicht 7) und gegen
REGISTER, INDEX und QUESTIONS (Methodik-Pflicht 10). Jede Tabelle gerendert statt extrahiert
(Methodik-Pflicht 8). Alle Korrekturen **inline** gesetzt, nicht nur angehaengt
(Methodik-Pflicht 9).
