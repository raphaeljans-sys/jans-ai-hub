---
title: "Wissens-Chef Run 23 — Cross-KB-Pruefung des Zuwachses seit Run 22"
datum: 2026-08-03
station: MacBook Pro
verfahren: "1 Workflow, 30 Agenten (6 Lese-Agenten + 24 adversariale Verifikatoren), 4.87 Mio. Subagent-Token, 536 Tool-Calls, ~22 Min."
ergebnis: "24 Befunde verifiziert — 22 BESTAETIGT, 2 WIDERLEGT. Korrekturen in 14 Dateien in 6 KBs. Zwei Entscheide fuer Raphael."
---

# Wissens-Chef Run 23

## Das Wichtigste in drei Saetzen

Der teuerste Fund ist ein **normwidriges Planungsmass**: der Sanitaerraum-Artikel gab
Raumbreiten fuer rollstuhlgerechte WC aus, die SIA 500 Ziff. 7.2.3.2 unterschreiten, und empfahl
sie ausdruecklich «direkt als Planungsgrundlage fuer Pflegezimmer-Nasszellen».
Zweitens fuehrte `baurecht` die **aufgehobene Anhang-Fassung von § 259 PBG** als geltendes Recht,
womit Waldabstandsflaechen und offene Gewaesser in der Bauzone faelschlich aus der anrechenbaren
Grundstuecksflaeche fielen — ein Fehler, der die Ausnuetzung zu tief rechnet.
Drittens ist der **Grundkontext gemessen wieder groesser als vor der Kontext-Diaet 2.0**
(115'482 gegen 105'573 B), fast allein durch `rules/jans-dna.md`, die sich in fuenf Tagen
verdoppelt hat und die niemand misst.

## 1. Was geprueft wurde

Sechs Felder, ausgewaehlt nach dem inhaltlichen Zuwachs seit Run 22 (31.07. abends):

| Feld | Anlass |
|---|---|
| energie ↔ planungsgrundlagen | `energie` Lauf 121 (03.08., 11 neue Destillate + neuer Wiki-Artikel) |
| baurecht ↔ planungsgrundlagen | Rechts-Achse, `baurecht` seit 31.07. inhaltlich still |
| normen (PAV-Estrich) ↔ grobkosten ↔ bauprodukte | `normen` Run 41 (01.08.): 7 Estrich-Merkblaetter auf einen Schlag |
| normen (hindernisfrei/RWA/Entwaesserung) ↔ planungsgrundlagen | 3 neue Destillate hindernisfreies Bauen + neuer Sanitaerraum-Artikel |
| energie (Minergie/Waermebruecken) ↔ normen | Norm-Achse gegen die neue Minergie-Welle |
| spec ↔ claude-code ↔ twin | Rotationsliste, erstmals als Dreieck |

Jeder Befund ging an einen unabhaengigen Verifikator mit dem Auftrag, ihn zu **widerlegen**, und
mit zwei getrennt gestellten Fragen: haelt der Befund, und traegt die vorgeschlagene Aufloesung.

## 2. Die Messung, die Run 22 verlangt hat

Run 22 hatte die Verifikatoren mit der Trefferquote frueherer Laeufe geprimt und daraus die
Konsequenz gezogen, diesen Satz zu streichen. Er ist gestrichen. **Das Ergebnis ist dasselbe:
24 von 24 «Aufloesung traegt nicht».** Die Quote war also nicht geprimt.

Sie bedeutet aber nicht, was sie zu bedeuten scheint. Beim Durchlesen aller 24 Verdikte ist das
Muster eindeutig: «traegt nicht» heisst fast nie «der Melder lag falsch», sondern **«die Korrektur
gehoert an eine andere Stelle, oder sie greift zu kurz»**. Drei Beispiele aus diesem Lauf:

- Beim Blitzschutz wollte der Melder `planungsgrundlagen` korrigieren. Der Verifikator zeigte,
  dass dort die **geltende** Nummer steht und die als «primaerverifiziert» gelobte Seite die
  **zurueckgezogene** fuehrt. Die Meldung haette die geltende Norm durch die aufgehobene ersetzt.
- Bei den Sanitaerraeumen wollte der Melder «46 statt 50 cm» setzen. Der Verifikator zeigte, dass
  **keine der beiden Zahlen verwendungsreif** ist und der eigentlich belegbare Fehler woanders
  liegt: bei der Raumbreite.
- Bei SWKI VA103-01 wollte der Melder die fuehrende KB als «unvollstaendiger» einstufen. Der
  Verifikator zeigte, dass nur ihr **Selbstbeschreibungsfeld** falsch ist; der Koerper fuehrt die
  angeblich fehlenden Kapitel.

**Lehre:** die zweite Frage misst nicht die Qualitaet der Melder, sondern die Tiefe des zweiten
Blicks. Ich habe deshalb wie in Run 22 jede Aufloesung vor der Umsetzung selbst am Original
nachgelesen — und in sechs Faellen die Verifikator-Fassung genommen, nicht die Melder-Fassung.

## 3. Der teuerste Einzelbefund: ein normwidriges Mass mit Empfehlung

`planungsgrundlagen/wiki/recht-norm-sanitaerraeume-planungsgrundlagen.md` fuehrte fuer
rollstuhlgerechte WC die Raumbreiten **140 cm** («minimale Loesung») und **160 cm**
(«Normalausfuehrung»). **SIA 500:2009 Ziff. 7.2.3.2 verlangt min. 1,65 × 1,80 m**, +0,50 m bei
innen oeffnender Tuer. Beide Werte unterschreiten die Norm in der Breite; die Raumtiefe 220 cm
erfuellt sie.

Was den Fall teuer macht, ist nicht die Zahl, sondern der Abschnitt «Relevanz JANS» desselben
Artikels: er empfahl diese Masse «direkt als Planungsgrundlage fuer Pflegezimmer-Nasszellen».
Ein Vorprojekt auf dieser Grundlage haette in der Prueffung eine nicht normkonforme Nasszelle
gezeigt — und zwar in genau der Bauaufgabe, in der JANS am haeufigsten arbeitet.

Belegt gleich dreifach: `wissen/normen/destillate/sia-500-2009.md` (S. 24),
`zhb-2005-mindestanforderungen-hindernisfreies-bauen.md` («min. 165 × 180 cm») und
`bkz-2005-checkliste-hindernisfrei-hochbau.md`.

Die **Sitzhoehe** (50 gegen 46 cm) ist damit ausdruecklich **nicht** entschieden. Beide Zahlen
sind nicht-normativ; SIA 500 Anhang E (S. 42-60) enthaelt die Detailmasse, liegt im Hub als PDF
vor und ist **nicht gelesen**. Das ist die einzige Stelle, die den Konflikt aufloest, statt ihn
zu verwalten — als Leseauftrag K42-4a aufgenommen.

## 4. Zwei KBs, dieselbe Quelle, 90 Minuten Abstand — und diesmal hat es funktioniert

Waehrend mein Fan-out lief, destillierte `normen` in Run 42 (22:21) genau die Quelle, um die es
in Abschnitt 3 geht: die KL-Hochbau-Katalogblaetter S53-56. Und `normen` notierte dabei aus
eigenem Antrieb den offenen Punkt **K42-4**: die Behindertenanlagen-Masse zitierten keine Norm
und seien «ungeprueft, ob sie mit SIA 500:2009 uebereinstimmen».

Das ist der Regelfall, den dieser Loop sonst als Problem meldet — zwei KBs am selben Gegenstand,
ohne voneinander zu wissen. Hier ergaenzten sie sich: `normen` stellte die Frage, der Cross-KB-Lauf
hatte die Antwort. **K42-4 ist beantwortet**, der Fassungsvorbehalt steht jetzt im neuen
normen-Destillat, und der Leseauftrag K42-4a haengt an der einen Stelle, die drei KBs zugleich
bedient.

## 5. Der Fehler steckte diesmal im fuehrenden Bestand, nicht bei den Abnehmern

Das Estrich-Feld ist dafuer der klarste Fall. Alle vier bestaetigten Befunde liegen in `normen`
und in einem Fall in der Norm-Destillat-Schicht selbst:

- `sia-251-2008` zitiert den **Fugenplan als Ziff. 2.4.7**. Der Verifikator hat das Norm-PDF
  gerendert: Ziff. 2.4.7 regelt etwas anderes (Schwind- statt Bewegungsfugen), und die Norm
  verweist auf S. 16 in Ziff. 2.4.1 **selbst** auf «einen Fugenplan nach Ziffer **2.4.9**».
  Die beiden Sekundaerquellen — PAV-E 01 und `planungsgrundlagen` — zitierten richtig.
- PAV-E 01 ordnet die **Fussbodenheizung BKP 244** (Lufttechnische Anlagen) zu. Richtig ist
  **242** (Heizungsanlagen).
- `sia-252-2002` trug kein `ersetzt_durch`, obwohl das am selben Tag entstandene PAV-E 12
  durchgehend **SIA 252:2012** zitiert.

Die Umkehrung des gewohnten Musters ist der eigentliche Befund: **eine Sekundaerquelle kann die
fuehrende Quelle korrigieren.** Der Schluss «im Zweifel gilt das Norm-Destillat» traegt nicht
ohne Blick ins Original.

Bei zwei weiteren Ziffern (2.6.3/2.6.5) habe ich bewusst **nicht** still umgeschrieben, sondern
einen Pruefvermerk gesetzt: der Sachwert 26 °C ist unbestritten, nur die Fundstelle wandert.

## 6. Eine Richtungsumkehr, die teuer geworden waere

Gemeldet war: `planungsgrundlagen` fuehre mit «SN 414022» eine nicht auffindbare Blitzschutz-Norm,
`energie` habe mit «SNR 464022:2015» die primaerverifizierte.

Tatsaechlich ist es umgekehrt. **SNR 464022:2015 ist seit dem 20.02.2024 durch SN 414022:2024
ersetzt** und bei SNV-Connect als «Withdrawn» gefuehrt — belegt in der KB `energie` selbst, im
Destillat `snr-464022-blitzschutz-ausfuehrung.md`. Die Meldung haette die geltende Normnummer
durch die zurueckgezogene ersetzt und diese zusaetzlich als «primaerverifiziert» geadelt.

Beide Seiten sind jetzt auf den belegten Stand gezogen: `energie` auf SN 414022:2024 **mit dem
ehrlichen Vorbehalt**, dass die inhaltlichen Kernaussagen aus der Ausgabe 2015 stammen und fuer
2024 nicht geprueft sind; `planungsgrundlagen` um die Ausgabe ergaenzt. Dazu der Kernsatz, den
keine der beiden Seiten fuehrte: **eine Solaranlage begruendet fuer sich keine Blitzschutzpflicht.**

## 7. Der Loop hat sich selbst gemessen — und der Befund gegen ihn haelt nur halb

`claude-code` meldete am 03.08. um 21:04, `wissens-chef` laufe seit dem 31.07. ohne Liefer-Beleg,
mit drei Beweisstuecken. Geprueft:

- **Die ersten beiden halten:** fuer den 01.08. und 02.08. gibt es weder Run-Bericht noch
  CHANGELOG-Eintrag. Das ist richtig.
- **Die Ursache ist extern und gemessen:** das Wochen-Kontingent war erschoepft, Reset am 03.08.
  um 12:00. Im Lauf-Journal steht das fuer **jeden** getakteten Lauf beider Stationen im selben
  Fenster (`260801-laeufe.jsonl` ab 14:28 durchgehend bis `260803-laeufe.jsonl` 05:30, alle rc=1;
  erster erfolgreicher Lauf 03.08. 13:41). Die `wissens-chef`-Slots um 23:12 fielen mitten hinein.
  Der Task ist gefeuert (`lastRunAt` gesetzt) und hatte kein Kontingent — kein Loop-Defekt.
- **Das dritte Beweisstueck ist ein Nicht-Signal:** `wissens-chef` ist ein App-Scheduled-Task und
  laeuft nicht ueber `scripts/claude-run.sh`, das die Journalzeilen schreibt. Er hat dort **nie**
  eine Zeile hinterlassen, auch nicht in seinen erfolgreichen Zeiten.

Zwei Pflichtpruefungen sind in die Rotationsanleitung von `methoden-radar` aufgenommen, beide
kosten je einen `grep`: schreibt der geprueftte Loop ueberhaupt in das geprueftte Belegsystem, und
lag im Fenster ein Kontingent-Abbruch vor.

## 8. Was `mtime` nicht misst

Der Zuwachs-Scan zeigte fuer `planungsgrundlagen` 37 geaenderte Dateien seit Run 22 — mit Abstand
der groesste Posten. **Davon war fast alles eine Umlaut-Sanierung** (Commit `d9f9e02f`, 18 von 36
geprueften Wiki-Dateien, ae/oe/ue → ä/ö/ü im Fliesstext). Kein neues Wissen, kein einziger
geaenderter Sachwert.

`find -newermt` misst Kosmetik wie Substanz. Richtig ist `git log --stat` mit Blick in den Diff.
Der Fehler war folgenlos, weil die Felder auch am unveraenderten Bestand ergiebig waren — aber er
haette einen ganzen Lauf auf ein Scheinfenster ausrichten koennen.

Nebenbefund derselben Pruefung: die Umlaut-Sanierung ist **nicht im CHANGELOG** von
`planungsgrundlagen` erfasst (Rule `wissens-bibliothekar` Ziff. 2). Nachgetragen.

## 9. Ausgefuehrte Aktionen

**14 Dateien in 6 KBs.**

| Datei | Aktion |
|---|---|
| `planungsgrundlagen/wiki/recht-norm-sanitaerraeume-planungsgrundlagen.md` | Normvorbehalt SIA 500 Ziff. 7.2.3.2; Sitzhoehen-Vorbehalt; §5.3-Freispruch eingeschraenkt; Empfehlung entschaerft |
| `planungsgrundlagen/wiki/recht-norm-hindernisfreies-bauen-zh.md` | Kuechen-Sachfehler (Kap. 6 statt Kap. 7) korrigiert, Tisch-Werte als eigene Zeile; unbelegte «Rechtsnachfolgerin»-Behauptung gestrichen |
| `planungsgrundlagen/wiki/recht-norm-abstandsvorschriften-wald-gewaesser.md` | Gewaesser-Merksatz: 15 m flaechenunabhaengig, 0,5 ha als Verzichtsgrund |
| `planungsgrundlagen/wiki/energie-pv-brandschutz.md` | Normausgabe SN 414022:2024; Kernsatz «PV begruendet keine Blitzschutzpflicht» ergaenzt |
| `baurecht/wiki/nutzungsziffern.md` | § 259 PBG in die Fassungs-Weiche ueberfuehrt, beide Fassungen belegt, Handlungsanweisung |
| `normen/destillate/gvz-rwa-parkhaus-einstellraum.md` | Fassungs-/Kollisionsvorbehalt + Divergenzband + Planungsregel; BKP 246/244 → 245 |
| `normen/destillate/sia-251-2008.md` | Fugenplan Ziff. 2.4.7 → 2.4.9; Ziff. 2.6.3/2.6.5 als prueffbeduerftig markiert |
| `normen/destillate/pav-e-01-2008-…heizestriche.md` | BKP 244 → 242, Estrich auf 281.0 praezisiert |
| `normen/destillate/sia-252-2002.md` | `ersetzt_durch: SIA 252:2012` ergaenzt, `status` praezisiert |
| `normen/destillate/kl-hochbau-sanitaer-katalogblaetter.md` | Fassungsvorbehalt zu den S56-Massen (beantwortet K42-4) |
| `normen/wiki/QUESTIONS.md` | K42-4 beantwortet; neuer Leseauftrag K42-4a (SIA 500 Anhang E) |
| `energie/destillate/gebaeudehuellziffer-ebf-flaechendefinition.md` | Klimareferenz 2016 → 2009 berichtigt (Satz war zudem defekt); SIA-180/4-Existenzverneinung widerlegt |
| `energie/destillate/pv-blitzschutz-gebaeudeversicherung-ch.md` | SNR 464022:2015 → SN 414022:2024 mit Fassungsvorbehalt |
| `claude-code/wiki/methoden-register.md` + `QUESTIONS.md` | SPW-Befund geklaert; zwei Pflichtpruefungen in die Rotationsanleitung |
| `claude-code/wiki/kontext-architektur.md` | Grundkontext nachgemessen, Messreihe statt Momentaufnahme |
| `twin/CLAUDE.md` | Erst-Verlinkung zur Kontext-Budget-KB; Takt `twin-fidelity-review` berichtigt |
| 6 × `CHANGELOG.md`, `koordination/QUERBEZUEGE.md` | Protokoll, 6 Paar-Eintraege, Rotationsliste |

## 10. Offene Entscheide fuer Raphael

### 10.1 Der Grundkontext ist wieder groesser als vor der Diaet (neu, Entscheid noetig)

Gemessen am 03.08.2026 22:30, gleiche Messweise wie die Diaet-Messung vom 29.07.:

| | Grundkontext | jans-dna.md |
|---|---|---|
| vor der Diaet 2.0 | 105'573 B | — |
| nach der Diaet (29.07. 02:00) | 87'398 B | — |
| 29.07. 23:39 | 96'946 B | 15'356 B (14 %) |
| **03.08. 22:30** | **115'482 B** | **32'428 B (28.1 %)** |

Die Ersparnis der Kontext-Diaet 2.0 ist vollstaendig aufgezehrt, und der Stand liegt jetzt
**ueber** dem Ausgangswert. Getragen wird das fast allein von `rules/jans-dna.md`, die sich in
fuenf Tagen **verdoppelt** hat (+17'072 B) — sie laedt in jeder Session, auf jeder Station.

Der Mechanismus erklaert es: `twin` schreibt die Facetten fort, `build_dna.py` kompiliert sie in
die Rule, und **keine Stufe dieser Kette misst oder meldet die resultierende Groesse.** Niemand
hat etwas falsch gemacht; es gibt schlicht keine Waage.

Drei Wege: **(a)** Waage einbauen — `build_dna.py` meldet die Dateigroesse und warnt ab einer
Schwelle; billig, aendert aber nichts am Wachstum. **(b)** Die DNA auf einen Kernteil kuerzen und
die datierten Detail-Praezedenzen (die der Artikel selbst schon «werden nicht in die DNA
kompiliert» nennt) konsequent im Facetten-Wiki lassen. **(c)** So lassen — die DNA ist echter
Grundkontext, und 28 % dafuer sind vertretbar.

Ich neige zu **(a) plus (b)**: die Waage sofort, die Kuerzung als Auftrag an den naechsten
`twin-fidelity-review`. Der Entscheid liegt bei Dir, weil (b) an der Substanz des Zwillings
arbeitet und das nicht Chef-Arbeit ist.

### 10.2 Verifikationstiefe der `energie`-Nachtlaeufe (aus Run 22, unveraendert offen)

Run 22 legte drei Varianten vor (Verifikationspflicht wieder verbindlich / neue Destillate starten
als `emerging` / unveraendert lassen). Run 23 liefert dazu neue Daten: von den elf Destillaten aus
Lauf 121 trugen die vier geprueften **vier** bestaetigte Fehler, zwei davon in derselben Datei —
darunter ein Satz, der grammatikalisch defekt war und trotzdem den Lauf verlassen hat.

Das stuetzt Variante **(b)** weiter. Entscheid unveraendert bei Dir.

### 10.3 Zwei materielle Umstellungen (aus Run 21/22, unveraendert offen)

Tiefgaragen-Artikel auf die geltende VSS-Ausgabe · Taktung `baurecht-buch-training`.

## 11. An die fuehrenden KBs uebergeben (Bring-Schulden)

- **an `normen`:** **K42-4a — SIA 500:2009 Anhang E lesen** (S. 42-60, PDF im Hub). Hoechste
  Prioritaet unter den Lese-Auftraegen: drei KBs warten auf die Antwort, und ohne sie bleibt ein
  Sanitaer-Planungsmass unentschieden. Dazu: SIA 252:**2012** beschaffen (die 2002er ist im Haus,
  die geltende nicht); Ziff. 2.6.3/2.6.5 in `sia-251-2008` am Original bestaetigen; das
  `gelesen`-Feld von `swki-va103-01-2017` beschreibt sich selbst falsch.
- **an `energie`:** das **Grenzwertpaar 186/112 MJ/m²·a** am Original-Reader entscheiden (Schulen
  oder Industriebauten — beide KBs destillieren dieselbe Doppelseite, `planungsgrundlagen` zeigt
  Indizien eines Spaltenversatzes). Ebenso: PV-Faustwert 900 gegen 1'000 kWh/kWp konditionieren;
  Uf-Fallback-Werte (der Wiki-Artikel fuehrt die aeltere Fassung als «geschlossen»);
  Ueberhitzungsstunden-Zuschreibung «gemaess SIA 180 Fig. 4».
- **an `planungsgrundlagen`:** das **Meldeverfahren (§§ 2a-2e BVV)** fehlt im Verfahrensartikel
  ganz — das «Drei-Spuren-Modell» aus dem Ratgeber 2016 bildet vier Verfahrenstypen als drei ab.
  Dazu die **Doppelspur zur KB `energie`**: der Verifikator fand, dass **alle** Quellen von
  `energie-heizwaermebedarf-waermeerzeugerleistung.md` bereits energie-gefuehrt sind, nicht nur die
  vier gemeldeten. Das ist eine Umstrukturierung, keine Korrektur — bewusst nicht autonom gemacht.
- **an `twin`:** die DNA-Kuerzung haengt an Entscheid 10.1.

## 12. Der ehrliche Teil

**Was gut lief.** 22 von 24 Befunden hielten, und die zwei widerlegten waren beide wertvoll: einer
haette die geltende Blitzschutznorm durch die zurueckgezogene ersetzt. Die Verbindung des
Cross-KB-Befunds mit der 90 Minuten zuvor gestellten Frage K42-4 ist genau die Arbeit, fuer die
dieser Loop existiert.

**Was ich falsch gemacht habe.** Ich habe die Felder auf einem `mtime`-Scan aufgesetzt und in drei
Feld-Prompts einen «Anlass» behauptet, den es so nicht gab — der grosse `planungsgrundlagen`-Zuwachs
war eine Umlaut-Sanierung. Folgenlos, aber es war Glueck, nicht Methode. Der Fehler steht in
Abschnitt 8 statt versteckt in einer Fussnote.

**Was ich nicht gemacht habe.** Von 46 gemeldeten Befunden habe ich 24 verifizieren lassen — je
Feld die vier schwersten. Die 22 uebrigen sind **nicht** geprueft und **nicht** in diesem Bericht
bewertet; sie stehen in `journal.jsonl` des Laufs. Die Kappung ist protokolliert, nicht
stillschweigend. Ebenso habe ich die Estrich-Merkblaetter nur an der Spitze geprueft (E 01, E 12
und die SIA-Bezuege), nicht das ganze Cluster — als neues Rotationspaar aufgenommen.
