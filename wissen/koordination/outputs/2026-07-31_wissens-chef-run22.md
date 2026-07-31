---
title: "Wissens-Chef Run 22 — Cross-KB-Pruefung des Zuwachses seit Run 21"
datum: 2026-07-31
station: MacBook Pro
verfahren: "1 Workflow, 31 Agenten (6 Lese-Agenten + 25 adversariale Verifikatoren), 4.83 Mio. Subagent-Token, 516 Tool-Calls, ~18.5 Min."
ergebnis: "25 Befunde verifiziert — 16 BESTAETIGT, 9 WIDERLEGT. Korrekturen in 15 Dateien in 7 KBs plus einer Skill-Referenz."
---

# Wissens-Chef Run 22

## Das Wichtigste in drei Saetzen

Der teuerste Fund des Laufs ist eine **umgedrehte Rechtsschwelle**: der am selben Abend erzeugte
Wiki-Artikel `umweltwaerme-gewaesser` machte aus «mindestens vier Wohneinheiten» ein «< 4
Wohneinheiten» und aus einer Erteilungsvoraussetzung einen Pflichtausloeser — ein Bauherr mit einem
Einfamilienhaus am Zugersee haette daraus «keine Konzession noetig» gelesen, wo das Gegenteil gilt.
Zweitens hat ein Destillat aus derselben Nacht einer Norm eine Rechenmethode zugeschrieben, die
sie nicht hat (SIA 2056 «fuenf VDI-4707-Kategorien»), obwohl das vollstaendige, am Original
verifizierte Destillat derselben Norm seit einer Woche in der fuehrenden KB liegt.
Drittens fuehrte die fuehrende Kostenreferenz des Hauses **abgelesene** Naeherungswerte weiter,
obwohl die exakte Quantiltabelle seit dem 31.07. im Haus liegt — Delta im oberen Holzbau-Segment
+44.8 % statt +38 %.

## 1. Was geprueft wurde

Sechs Felder, ausgewaehlt nach dem Zuwachs seit Run 21 (30.07. abends):

| Feld | Anlass |
|---|---|
| baurecht ↔ planungsgrundlagen ↔ projekt-lessons | Wissens-Ruecklauf 2414 Thalwil (31.07., 01:15) |
| normen ↔ bauprodukte ↔ energie | zwei KBs bearbeiteten in derselben Nacht denselben Aufzug-Gegenstand |
| energie Run 120 ↔ baurecht ↔ planungsgrundlagen | sieben neue Destillate + Gewaesser-Wiki-Artikel (31.07., 22:48 — 24 Min. vor Laufbeginn) |
| grobkosten ↔ normen ↔ bauprodukte | Brandschutz-Mehraufwand RF1, Mengen aus Lignum Tab. 522-1 |
| immobilienbewertung ↔ grobkosten ↔ kostenschaetzung-Ref | Ingest Cluster A-E (rund 370 KB) |
| bauprodukte ↔ projekt-lessons | Rotationsliste, nie geprueft |

Jeder Befund ging an einen unabhaengigen Verifikator mit dem ausdruecklichen Auftrag, ihn zu
**widerlegen** — und zwei getrennte Fragen zu beantworten: haelt der Befund, und traegt die
vorgeschlagene Aufloesung.

## 2. Die Lehre des Laufs: ich habe die Verifikatoren geprimt, und das muss gesagt werden

**In allen 25 Faellen lautete das Urteil «Aufloesung traegt nicht».** Nach 24/24 in Run 21 ist das
kein Befund mehr, sondern ein Verdacht auf ein Artefakt — und die Ursache liegt bei mir: ich habe
den Verifikatoren im Prompt mitgegeben, dass die Aufloesung «in den Laeufen 20 und 21 in fast ALLEN
Faellen nicht tragfaehig» war. Das ist eine Ankerformulierung, die genau das Urteil nahelegt, das
dann eintrat.

Ich habe deshalb die Gegenvorschlaege nicht uebernommen, sondern jeden vor der Umsetzung selbst am
Original nachgelesen. Das Ergebnis entlastet die Verifikatoren weitgehend, ohne das Priming zu
entschuldigen: die genannten Schaeden waren fast durchweg konkret und pruefbar, nicht reflexhaft.
Drei Beispiele, die ich am Original bestaetigen konnte:

- Die Estrich-Korrektur haette pauschal «BKP 214/271» durch «281.0/225.4» ersetzt — und damit die
  Holz-Bauteilstaerken (die dort **richtig** stehen) unter «Estriche» gebucht. Ein schwererer
  Fehler als der behobene. Ich habe nur den Estrich korrigiert.
- Die Aufzug-Korrektur haette einen Warnhinweis entfernt, statt zuerst die falsche Sachaussage zu
  berichtigen — der Artikel haette dann selbstbewusst etwas Falsches behauptet.
- Ein Vorschlag haette Cross-KB-Links in der **baren** Form `[[…]]` gesetzt, die ueber KB-Grenzen
  tot ist. Der Zielartikel waere zweimal verlinkt gewesen, einmal lebend, einmal tot.

**Konsequenz fuer Run 23: der Prompt-Satz mit der Trefferquote frueherer Laeufe fliegt raus.** Die
zwei Fragen bleiben getrennt gestellt, aber ohne Erwartungswert. Erst dann laesst sich messen, ob
die Quote wirklich so hoch ist oder ob ich sie erzeuge.

## 3. Der teuerste Einzelbefund: eine umgedrehte Rechtsschwelle

`energie/wiki/umweltwaerme-gewaesser.md` fuehrte fuer den Kanton Schwyz «Schwelle > 50 kW oder
**< 4 Wohneinheiten**». Der amtliche Wortlaut (§ 12 Abs. 2 lit. e/f WRG, im Destillat
`grundwasserwaermenutzung-bewilligung-zh-sz` am Volltext gelesen) sagt das Gegenteil: «wobei diese
**in der Regel mindestens vier** betragen muss».

Der Fehler ist doppelt. Erstens die Richtungsumkehr. Zweitens — und das ist der gefaehrlichere Teil,
den erst die Verifikation herausgearbeitet hat — die Verwechslung zweier Normen: § 11 Abs. 2 lit. b
WRG begruendet die Konzessionspflicht **groessenunabhaengig**; §§ 12 Abs. 2 lit. e/f regeln den
Gesuchsinhalt und setzen eine Mindestgroesse fuer die **Erteilung**. Aus einer Erteilungshuerde
wurde eine Freistellung.

Praxisfolge der Fehlfassung fuer einen realen JANS-Fall (EFH oder 2-3-WE-Objekt am Zugersee oder
Vierwaldstaettersee): «unter der Schwelle, also keine Konzession noetig». Richtig ist: es bleibt
konzessionspflichtig, die Konzession wird aber in der Regel **nicht erteilt**.

Bemerkenswert ist die Isolation des Fehlers: der Artikel war der **einzige Ausreisser gegen fuenf
gleichlautende, korrekte Stellen derselben KB**. Der Verdichtungsschritt vom Destillat zum
Wiki-Artikel hat die Aussage gekippt, nicht die Recherche.

## 4. «Ein Zugang heilt keinen Bestand» — sechster Fundort in Folge, diesmal mit falscher Sachaussage

Bisher war das Muster harmlos: eine KB baut einen Artikel, obwohl das Wissen anderswo schon liegt.
Run 22 zeigt die teure Variante.

Das am 31.07. erzeugte Destillat `aufzug-energieeffizienz-vdi4707` schrieb SIA 2056:2019 zu, sie
uebernehme «explizit die **fuenf** VDI-4707-Nutzungskategorien», und erklaerte die Frage fuer offen,
weil die Norm «nicht im Volltext gelesen» sei. Tatsaechlich liegt SIA 2056 seit dem **24.07.** in
der fuehrenden KB `normen` als `established` Volldestillat (S. 1-130 gelesen, am Original
verifiziert). Dort steht: **vier** Nutzungsintensitaetsstufen **nach Gebaeudetyp** (Tab. 78,
Krankenhaus = «stark»), nicht fuenf nach taeglicher Fahrzeit. `grep "4707"` ueber `normen/` liefert
genau **einen** Treffer — den informativen Publikationshinweis in Anhang G.

Die Sekundaerquellen-Aussage war also nicht bloss unbelegt, sie war **falsch**, und der Bestand
haette sie am selben Tag widerlegt. Sieben Rechercheagenten liefen in Run 120 parallel; keiner
suchte ueber die Achse «SIA 2056», alle ueber «Aufzug/VDI».

**Erschwerend, und im Lauf-Protokoll von energie selbst dokumentiert:** Run 120 hat die
Verifikationsstufe budget-bewusst reduziert («kein volles 2-3-Agenten-Adversarial-Panel gemaess
PROGRAMM.md, stattdessen Spot-Check»). Von sieben neuen Destillaten trugen zwei einen bestaetigten
Fehler. Das ist keine Zufallsstichprobe, aber es ist ein Signal.

## 5. Die Ablesung war messbar zu ungenau

Seit Run 21 stand im fuehrenden Kostenblatt des Hauses
(`skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`), der
Holzbau-Aufpreis im oberen Preissegment betrage **+38 %** — gerechnet aus Werten, die die
Ueberschrift ehrlich als «aus Spread abgelesen» auswies.

Seit dem 31.07. liegt die exakte Quantiltabelle im Haus (Ingest Cluster B). Der Verifikator hat sie
zusaetzlich am Original-PDF gegengelesen. Richtig ist **+44.8 %** (6'506 gegen 4'492 CHF/m² HNF).
Die Ablesung lag rund sieben Prozentpunkte zu tief.

Zugleich faellt eine Erklaerung, die Run 21 selbst gesetzt hatte: die Spreizung zwischen HNF- und
GV-Basis wurde mit «verschiedene Stichproben» begruendet. Beide Reihen stammen aus **derselben
Studie mit derselben Stichprobe** (17 Holzbauten gegen knapp 50 Massivbau-Referenzen, Indexstand
April 2023) — HNF auf S. 18/36, GV auf S. 34. Damit bleibt als Ursache allein die Bezugsgroesse.
Ob die den Faktor 3.5 traegt (+44.8 % gegen +12.9 %), ist neu als **Ursachenfrage** in
`grobkosten/wiki/QUESTIONS.md` angemeldet. Ein gemeinsamer Zuschlag wird weiterhin nicht gebildet.

## 6. Ein Auftrag, der seit einem Tag ins Leere lief

`baurecht/training/PROGRAMM.md` beauftragte den naechsten Lauf, den Volltext der
**Strassenabstandsverordnung** zu beschaffen. Die StrAV ist seit dem **01.06.2020 aufgehoben**, und
ihr Nachfolgeerlass (Verkehrserschliessungsverordnung) liegt seit dem **30.07.2026** in derselben
KB — beschafft im Zuge derselben Triage, die den Sweep angeordnet hatte. Der Sweep (Batch T0) hat
Curriculum und QUESTIONS nie erreicht.

Das ist die Fortsetzung des Musters aus Run 21 (ein falscher «dauerhaft offen»-Status steuerte einen
Ruecktaktungs-Vorschlag): **Wissensfehler verfaelschen nicht nur Inhalte, sondern Auftraege.** Hier
haette ein Lauf Arbeitszeit auf die Beschaffung eines toten Erlasses verwendet.

Korrigiert an drei Stellen, mit den VErV-Kernparagraphen §§ 23/26/27/28/29 — und mit dem ehrlichen
Restpunkt, den die Verifikation gefunden hat: **Vorspruenge, Tueren/Tore und Materialien an der
Strassengrenze (bisher §§ 11/12 StrAV) haben in der VErV keine Entsprechung.** Die Anschlussnorm ist
offen; der alte Auftrag war also nicht einfach falsch, er verdeckte eine echte Luecke.

## 7. Der mechanisch wertvollste Fund: ein toter Pfad an 18 Stellen

Die amtlichen WsG-/WsV-Volltexte liegen als `260730_amtlich_zh_wsg.md` bzw. `…_wsv.md`. Zitiert
wurden sie im Hub durchgehend als **`260728_…`** — 18 Vorkommen in 11 Dateien ueber drei KBs und das
Koordinationsregister. Die Zeilennummern in den Verweisen stimmen exakt (stichprobenweise selbst
geprueft: § 44 auf Z. 699, § 97 Abs. 3 auf Z. 1374, § 121 auf Z. 1373); es ist ein reiner
Dateinamen-Datumsfehler, der sich beim ersten Zitat eingeschlichen und dann fortgepflanzt hat.

Alle 18 lebenden Vorkommen korrigiert. Datierte Chronik-Eintraege (CHANGELOG, Run-19-Bericht)
bewusst **unveraendert** — sie dokumentieren, was damals geschrieben wurde.

## 8. Erst-Pruefung bauprodukte ↔ projekt-lessons: die Rotationsliste hatte die falsche Frage

Die Liste fuehrte das Paar mit «Abgrenzung ungeklaert». Sie ist geklaert, und zwar dreifach
(zwei Matrix-Zeilen plus `bauprodukte/CLAUDE.md`). Beide gemeldeten Doppelspur-Befunde wurden
widerlegt.

Der echte Mangel lag woanders und war teurer: auf Artikelebene existierte in **keiner Richtung** eine
Verbindung. Das ist deshalb bitter, weil `bauprodukte` den Artikel zu Trockenbau/Bekleidungen
**mangels Quellmaterial blockiert** hat (die Korpus-Ordner `214 Montagebau in Holz` und
`271 Gipserarbeiten` enthalten null Dateien) — waehrend `projekt-lessons` mit dem KISPI-Fall den
einzigen belegten Praxisfall des Hubs zu genau diesem Gegenstand fuehrt, inklusive LV-Kuerzel-Lesart
nach NPK 643 und real verbauten Plattenqualitaeten. Die blockierte KB und ihre Loesung standen
unverbunden nebeneinander.

Erst-Verlinkung in beide Richtungen gesetzt. Keine neue Matrix-Zeile noetig.

## 9. Ausgefuehrte Aktionen

**15 Dateien in 7 KBs plus eine Skill-Referenz.**

| Datei | Aktion |
|---|---|
| `energie/wiki/umweltwaerme-gewaesser.md` | SZ-Konzessionsschwelle an zwei Fundorten korrigiert; Fassungsvermerk + Verweis nach `baurecht` |
| `energie/destillate/aufzug-energieeffizienz-vdi4707.md` | vier Stellen: SIA-2056-Sachaussage berichtigt, offener Punkt aufgeloest |
| `energie/destillate/etappierte-energetische-sanierung-zh-sz.md` | EnerG-Fassungsabgleich 125→129 durchgefuehrt und als folgenlos dokumentiert |
| `baurecht/training/PROGRAMM.md` | StrAV-Auftrag ersetzt (3 Stellen); Revisionsvorbehalt 7-%-Quote Thalwil |
| `planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` | BZO Art. 11 auf den amtlichen Wortlaut inkl. Solar-Klausel |
| `bauprodukte/wiki/bkp-261-aufzuege.md` | Selbstwiderspruch aufgeloest, Verweis statt Fortschreibung |
| `bauprodukte/wiki/QUESTIONS.md` | Teil-Antwort zu Punkt 9 (Verweis auf den KISPI-Praxisfall) |
| `projekt-lessons/wiki/kispi-lbw-rohdichte-800.md` | Abschnitt «Abnehmer in anderen KBs», Erst-Verlinkung |
| `grobkosten/wiki/kennwerte.md` | Estrich-BKP 281.0; Healthcare-Zeiger; HNF/GV-Stichprobenfrage |
| `grobkosten/wiki/QUESTIONS.md` | neue Ursachenfrage HNF/GV-Spreizung |
| `skills/kostenschaetzung/referenzen/20260607-Wuest-…md` | Abschnitte 3 und 3b auf exakte Quantile umgestellt |
| `immobilienbewertung/CHANGELOG.md` | vier fehlende Ingest-Eintraege nachgetragen |
| `immobilienbewertung/training/PROGRAMM.md` | Einarbeitung der Reports als Ereignis-Trigger verankert |
| 11 Dateien in `energie/`, `planungsgrundlagen/`, `koordination/` | toter WsG-/WsV-Pfad, 18 Vorkommen |
| `koordination/QUERBEZUEGE.md` | 5 Paar-Eintraege, 2 neue Matrix-Zeilen, Rotationsliste |

## 10. Offene Entscheide fuer Raphael

### 10.1 Verifikationstiefe der `energie`-Nachtlaeufe (Entscheid noetig)

Run 120 hat die im eigenen `PROGRAMM.md` vorgeschriebene Verifikationsstufe **bewusst reduziert**
und das protokolliert. Von den sieben neuen Destillaten dieses Laufs trugen zwei einen im Cross-KB-
Lauf bestaetigten Fehler, einer davon mit direkter Praxisfolge fuer einen Bauherrn (Abschnitt 3).

Die Wahl ist ehrlich dokumentiert, deshalb lege ich sie vor statt sie zu ueberstimmen:
**(a)** Verifikationspflicht fuer `established`-Kandidaten wieder verbindlich, dafuer weniger
Destillate pro Lauf. **(b)** Status bleibt, aber neue Destillate starten grundsaetzlich als
`emerging` und werden erst nach Verifikation heraufgestuft. **(c)** unveraendert lassen und den
Cross-KB-Lauf als nachgelagerte Kontrolle akzeptieren.

Ich neige zu **(b)** — es kostet keinen Durchsatz und macht die Belegstufe ehrlich, statt sie in
einem Nebensatz zu verstecken. Der Entscheid liegt bei Dir.

### 10.2 Materielle Umstellung des Tiefgaragen-Artikels (aus Run 21, unveraendert offen)

`planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung.md` fuehrt weiterhin ueber rund
90 Zeilen die Tiefgaragen-Geometrie aus der abgeloesten VSS-Ausgabe 2005 samt der 2021 abgeschafften
Komfortstufen. Der Fassungs-Vorbehalt steht davor, die Werte laufen aber weiter in
Machbarkeitsstudien ein. Frage unveraendert: Vorrang-Auftrag fuer den `planungsgrundlagen`-Loop?

### 10.3 Taktung `baurecht-buch-training` (aus Run 21, unveraendert offen)

Der Ruecktaktungs-Vorschlag steht mit Korrekturvermerk im Register; die Grundlage ist seit Run 21
schmaler. Entscheid liegt bei Dir.

## 11. An die fuehrenden KBs uebergeben (Bring-Schulden)

- **an `energie`:** der Wiki-Themenartikel «Kommunale Waermeplanung ZH/SZ» fehlt weiterhin
  (offen seit Run 21). Neu dazu: der Aufzug-Fall zeigt, dass die Bestandssuche vor einem neuen
  Destillat ueber die **Norm**achse laufen muss, nicht nur ueber die Gegenstandsachse.
- **an `immobilienbewertung`:** Einarbeitung der fuenf Ingest-Reports ins Wiki; die offenen Punkte
  aus Cluster B und C gehoeren nach `wiki/wissensluecken.md`. `raw/_INGESTED.md` ist ebenfalls
  unbeschrieben.
- **an `baurecht`:** Anschlussnorm fuer Vorspruenge/Tueren/Tore an der Strassengrenze suchen
  (VErV hat keine); SIA-358-Ausgabe 1996 gegen 2010 klaeren (offen seit Run 21).
- **an `bauprodukte`:** die Ziff.-3.6-Neuregelung der VKF-BRL 23-15 am amtlichen 2017er-Original
  verifizieren lassen — das ist Sache von `normen`, aber `bauprodukte` haengt daran.
- **an `grobkosten`:** Einheitspreise Estrich und RF1-Bekleidung aus einem realen Devis des
  `ausschreibung`-Bestands destillieren; **nicht** weiter bei `bauprodukte` suchen.

## 12. Der ehrliche Teil

**Was gut lief.** Die Trefferquote der Melde-Agenten lag bei 16 von 25, und die neun widerlegten
Befunde fielen fast alle erst am Original — sie waren plausibel formuliert. Ein widerlegter Befund
war besonders wertvoll: haette ich ihn umgesetzt, haette ich die fuehrende KB `normen` gegen sich
selbst korrigiert.

**Was ich falsch gemacht habe.** Ich habe die Verifikatoren mit der Trefferquote frueherer Laeufe
geprimt (Abschnitt 2). Das Ergebnis 25/25 ist deshalb nicht als Messwert verwendbar, und ich habe
es im Register nicht als solchen eingetragen.

**Was ich nicht gemacht habe.** Die Verdichtung des Gewaesser-Artikels habe ich nur an den zwei
falschen Stellen korrigiert, nicht durchgesehen — ein neu erzeugter Artikel, dessen eine geprueftete
Kernaussage gekippt ist, verdient eine vollstaendige Gegenlesung durch die fuehrende KB. Das ist
`energie`-Arbeit, nicht Chef-Arbeit, und als Bring-Schuld angemeldet. Ebenso habe ich die
Ingest-Reports nicht inhaltlich ins Wiki eingearbeitet, sondern nur protokolliert und den Trigger
gesetzt.

## 13. Bilanz

| | Run 20 | Run 21 | Run 22 |
|---|---|---|---|
| Agenten | 30 | 37 | 31 |
| Befunde verifiziert | 18 | 24 | 25 |
| bestaetigt | 11 | 19 | 16 |
| Dateien korrigiert | 27 | 40+3 | 15 (+18 Pfad-Vorkommen) |
| offene Entscheide | 3 | 3 | 3 (davon 2 uebernommen) |

Die Rotationsliste ist nach der Erst-Pruefung `bauprodukte ↔ projekt-lessons` um zwei neue Paare
ergaenzt; zwei aus Run 21 bleiben offen, weil ihre Voraussetzung (Etappe 4 «Vertiefung») noch nicht
geliefert hat.
