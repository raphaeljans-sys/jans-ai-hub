---
titel: Wissens-Chef Run 21 — Cross-KB-Koordinationslauf
datum: 2026-07-30
station: MacBook Pro
verfahren: Workflow-Fan-out, 2 Workflows, 37 Agenten, ~6.02 Mio. Subagent-Token, 618 Tool-Calls, ~24 Min.
gepruefte_felder: [aufzuege/bauprodukte, parkierung, absturzsicherung, holzbau/lignatec, energie-run119-rest, kunde-bopp (Erst-Pruefung)]
ergebnis: 24 Befunde gemeldet, 19 bestaetigt, 5 widerlegt — Korrekturen in 40 Dateien in 7 KBs plus 3 Skill-Dateien
---

# Wissens-Chef Run 21

## Das Wichtigste in drei Sätzen

In **allen 24** verifizierten Fällen war die vorgeschlagene Korrektur nicht tragfähig, auch in den 19,
deren Befund zutraf: Run 20 hatte dieses Verhältnis mit 11 von 18 erstmals gemessen, Run 21 zeigt es
als Regel, und damit ist die Verifikationsstufe nicht mehr in erster Linie ein Schutz vor
Falschbefunden, sondern vor **Falschkorrekturen**. Der teuerste Einzelfund ist ein Aufzugsartikel, der
sich selbst widerlegte und den Leser zugleich anwies, der falschen Rechnung zu folgen, bevor die Zahl
in ein Leistungsverzeichnis wandert. Der unangenehmste ist struktureller Art: eine überholte
Wissenslücke stand siebenmal im Steuerungsregister von `baurecht` und war dort **eine der drei
Begründungen dafür, einen Lern-Loop zurückzutakten** — ein Wissensfehler hat also nicht nur Inhalte,
sondern eine Ressourcenentscheidung verfälscht.

---

## 1. Was geprüft wurde

Sechs Paare, ausgewählt nach dem Zuwachs seit Run 19/20 (29./30.07.) und nach der Rotationsliste:

| Feld | Anlass | Ergebnis |
|---|---|---|
| bauprodukte ↔ normen (Aufzüge BKP 261, Rutschfestigkeit) | zwei neue Artikel 29./30.07.; stand seit Run 20 auf der Rotationsliste | 3 bestätigt, 1 widerlegt |
| baurecht ↔ planungsgrundlagen ↔ normen (Parkierung) | Buch-Run 70 vom 30.07. | 4 bestätigt, 0 widerlegt |
| normen ↔ baurecht (Absturzsicherung, Geländer/Brüstungen) | zwei neue bfu-Destillate aus normen-Run 38, 30.07. | 2 bestätigt, 2 widerlegt |
| normen ↔ grobkosten ↔ bauprodukte (Holzbau) | Lignatec Tab. 3/4 **und** Holzbau-Zuschlag am selben Tag | 3 bestätigt, 1 widerlegt |
| energie ↔ normen ↔ planungsgrundlagen | die vier Run-119-Destillate, die Run 20 nicht angefasst hat | 4 bestätigt, 0 widerlegt |
| **kunde-bopp** ↔ projekt-lessons/Skills | **Erst-Prüfung**; letztes Paar der Liste «Noch nie geprüft», seit Run 9 offen | 3 bestätigt, 1 widerlegt |

Damit ist die Liste «Noch nie geprüft» erstmals leer.

---

## 2. Die Lehre des Laufs: die Auflösung ist gefährlicher als der Befund

24 Befunde gingen in die adversariale Verifikation. 19 hielten stand. Und in **allen 24** Fällen
urteilte der Verifikator, dass die mitgelieferte Auflösung so nicht gesetzt werden darf. Das ist kein
Formalismus — in den drei schwersten Fällen hätte die Umsetzung des ursprünglichen Vorschlags einen
neuen, schlechteren Fehler eingebaut als den, den er beheben wollte:

**(a) Aufzugskabine.** Der Befund war richtig: der Artikel rechnete mit einer aus dem Schachtmass
abgeleiteten Breite von 1250 mm, während dieselbe Datei «Kabinenbreite 1050 mm bei beiden Varianten»
ausweist. Die vorgeschlagene Auflösung hätte daraus «1.05 × 1.46 m, erfüllt die Kategorie bedingt
zulässig» gemacht — die Tiefe 1460 mm gilt aber nur für die Options-Variante mit Türfront über die
ganze Schachtbreite. In der Standardvariante (1085 mm Tiefe) ist auch die Kategorie «bedingt zulässig»
nicht erfüllt. Der Fix hätte genau die Zahl in ein LV geschrieben, die dort nicht hingehört.

**(b) Parkierung.** Der Befund war richtig: die beiden Parkierungs-Artikel kennen einander nicht. Die
vorgeschlagene Auflösung hätte `baurecht` auf `planungsgrundlagen` als geometrie-führend zeigen
lassen — und damit die abgelöste Normausgabe von 2005 über den bereits sauberen `baurecht`-Pfad
zurückgeholt. Führend ist nach der Matrix `normen`.

**(c) Giebelweg 12.** Der Befund war richtig: `kunde-bopp` konserviert einen überholten Zwischenstand.
Die vorgeschlagene Auflösung wollte auf die 1'167 m³ des Skills korrigieren — auch das ist nur ein
Zwischenstand (Version 2 vom 12.06.). Der am Original verifizierte Endstand lautet 1'162 m³.

**Betriebsregel daraus, ab sofort für jeden Cross-KB-Lauf:** Der Verifikator beantwortet zwei Fragen,
nicht eine. Erstens «stimmt der Befund», zweitens «trägt die vorgeschlagene Auflösung». Die zweite
Frage hat in diesem Lauf jeden einzelnen Vorschlag korrigiert.

---

## 3. Der teuerste Einzelbefund: ein Artikel, der sich selbst widerlegt

`bauprodukte/wiki/bkp-261-aufzuege.md` enthielt zwei Zahlen zur selben Kabine. Im oberen Teil eine aus
dem Schachtmass **abgeleitete** Breite von 1250 mm, im mittleren Teil die aus der Masskizze
**abgelesene** Breite von 1050 mm. Der Konformitätsabgleich rechnete mit der abgeleiteten Zahl und kam
zum Schluss, die Kabine übertreffe die SIA-500-Standardkategorie; die Herstellereinstufung «bedingt
rollstuhlgängig» erschien dadurch unerklärlich eng. Der Artikel schloss mit der Anweisung: «Vor einem
LV mit SIA-500-Bezug: Kabinenmass gegen Tabelle 4 der Norm selbst rechnen, nicht die Herstellerkategorie
übernehmen» — er wies den Leser also an, der falschen Rechnung zu folgen statt der richtigen
Herstellerangabe.

Dazu kam ein zweiter, unabhängiger Widerspruch: an anderer Stelle führt derselbe Artikel die
AS-Kategorien als «1400 × 1100 mm» und «1250 × 1100 mm», wo 1100 durchgängig die Breite und 1250 die
Tiefe ist. Dieselbe Zahl 1250 trug im Artikel zwei Bedeutungen.

**Korrigiert:** 1.05 m verfehlt die Standard-Kategorie in jeder Variante; «bedingt zulässig» ist nur in
der Options-Variante erfüllt. Die Produktidentität Winner/Swisslift bleibt ausdrücklich offen, statt
sie stillschweigend gleichzusetzen — genau diese ungeprüfte Gleichsetzung hatte den Fehler erzeugt. Der
verbleibende Rest (Verifikation des Breitenwerts beim Hersteller) steht als offene Frage in der KB,
nicht als Behauptung im Artikel.

---

## 4. Der strukturell unangenehmste Befund: ein Wissensfehler steuert einen Loop

`baurecht/wiki/fahrzeugabstellplaetze-und-parkierung.md` erklärte die VSS-Rampenkennwerte als
«**needs-verification wegen Kostenpflicht** — vor Anwendung in einer Projektierung ist der aktuelle
Normtext käuflich zu beziehen». Die Norm liegt seit dem 13.07.2026 im JANS-Normenbestand (der
Verifikator hat die Datei physisch nachgewiesen) und ist in `normen` über alle 32 Seiten destilliert
und dreifach verifiziert. Der Artikel wurde seither dreimal angefasst — die Aussage blieb jedes Mal
stehen, obwohl derselbe Artikel an vier anderen Stellen korrekt auf normen-Destillate verweist.

Der eigentliche Schaden liegt aber nicht im Artikel. Dieselbe überholte Aussage streute in **sieben**
Stellen des Steuerungsregisters `baurecht/wiki/QUESTIONS.md`, und an einer davon ist sie **eine der
drei Begründungen für den Vorschlag, den Loop `baurecht-buch-training` von zweimal täglich auf
wöchentlich zurückzutakten**: «Verbleibend sind ausschliesslich Punkte, die per se NICHT am
Gesetzeswortlaut belegbar sind: VSS-Rampen-/Parkierungsnormen (kostenpflichtig, dauerhaft nicht frei
beschaffbar) …».

Das ist der erste belegte Fall, in dem ein Wissensfehler nicht nur einen Inhalt, sondern eine
**Takt- und Ressourcenentscheidung** verfälscht. Alle sieben Stellen sind jetzt erledigt-markiert (der
Alttext bleibt durchgestrichen als historischer Wortlaut stehen), und der Rücktaktungs-Vorschlag trägt
einen Korrekturvermerk: er stützt sich nur noch auf zwei seiner drei Begründungen. Über die Taktung
selbst entscheidet Raphael (Abschnitt 6).

---

## 5. «Ein Zugang heilt keinen Bestand» — jetzt mit Ursachennachweis

Das Muster ist in fünf aufeinanderfolgenden Läufen belegt (Run 18, 19, 20 und zweimal in Run 21). Neu
ist, dass dieser Lauf erstmals die **Ursache** dokumentiert findet statt sie zu vermuten.

Der Kurator-Report des Laufs, der den Aufzugsartikel schrieb, hält fest, dass gezielt
«`wissen/normen/` nach Aufzugs-/Barrierefreiheits-Fundstellen durchsucht» wurde — und dabei nur
`sia-500-2009` gefunden wurde. Die Suche war auf **Barrierefreiheit** verengt; das seit zwei Wochen
`established` vorliegende Brandschutz-Destillat `vkf-brl-23-15-befoerderungsanlagen` blieb unentdeckt.
Es gibt also keinen bewussten Verzicht, der entlasten würde, und auch keine Nachlässigkeit — der
Bestand wurde durchsucht, aber **zu eng befragt**.

**Konsequenz für die KB-Loops:** Die Bestandssuche vor einem neuen Artikel läuft über alle
Gewerke- und Themenachsen des Gegenstands, nicht nur über die eine, die den Artikel motiviert hat. Ein
Aufzug ist Barrierefreiheit **und** Brandschutz **und** Kosten; ein Bodenbelag ist Material **und**
Rutschfestigkeit **und** Reaktion auf Feuer.

Der zweite Fundort desselben Musters im Lauf: die offene Frage «Rutschfestigkeit fehlt» in
`bauprodukte` ist durch `bfu-bodenbelaege` (30.07.) beantwortet — und, älter und führend, durch
SIA 244:2006 Ziff. 6.7, seit dem 13.07. `established` im Bestand. Auch hier war die Antwort älter als
die Frage.

---

## 6. Offene Entscheide für Raphael

### 6.1 SWKI ist in der Führungsmatrix gar nicht zugeordnet (Entscheid nötig)

`energie` führt vier SWKI-Richtlinien materiell (VA105-01, VA106, 2004-1, VA103-1). `normen` hat im
Register keine einzige SWKI-Zeile. Die Folge ist messbar: `normen` will bis heute SWKI 99-3
destillieren, eine Richtlinie, die seit dem 1.8.2015 vollständig durch VA105-01:2015 ersetzt ist — und
`energie` weiss das seit dem 25.07.

Die naheliegende Korrektur wäre eine Matrix-Zeile «SWKI → führend: normen». **Ich habe sie bewusst
nicht gesetzt.** Die SWKI-Zuordnung ist Teil des seit Run 31 offenen Strukturentscheids zum PL-02-Scope
(`normen/wiki/QUESTIONS.md`, Befund 3), den die KB selbst ausdrücklich als «nicht vom Loop zu
entscheiden» markiert. Nach Rule `rollen-taxonomie` (Regel 3) messe und berichte ich, statt
durchzusetzen. Die Matrix trägt darum neu eine Zeile, die die Führung **offen** ausweist — die erste
ihrer Art.

Was jetzt gilt: die Fassungskorrektur (99-3 → VA105-01) ist in `normen` gesetzt, ohne neue
Gültigkeitsbehauptung und ohne Registerzeile aus Sekundärquellen. Was fehlt, ist der Entscheid, ob
`normen` künftig auch die Nicht-SIA-Richtlinien (bfu, GVZ, Suva, SWKI, Suissetec) führt.

**Frage:** Soll `normen` die Führung für SWKI übernehmen — und damit implizit für den ganzen
`06_Richtlinien`-Bestand — oder bleibt SWKI bei `energie`, mit einer Bring-Schuld-Zeile in `normen`?

### 6.2 Materielle Umstellung des Tiefgaragen-Artikels auf VSS 40 291:2021 (Auftrag nötig)

`planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung.md` führt über rund 90 Zeilen die
Tiefgaragen-Geometrie aus der abgelösten Ausgabe SN 640 291a (2005) samt der 2021 abgeschafften
Komfortstufen A/B/C — und empfiehlt «Komfortstufe B» ausdrücklich als Wohnbau-Standard. Die Deltas sind
projektwirksam: Rampenneigung 12 %/15 % statt geltend 15 %/18 %, Fahrgasse Gegenverkehr 5.00 m statt
5.50 m.

**Gesetzt ist der Fassungs-Vorbehalt** (Frontmatter, Kopf des Abschnitts 2, INDEX-Kernwert), die
Übergabe an `normen` und die bidirektionale Verlinkung. Damit ist der Bestand gefahrlos: wer den
Artikel liest, sieht sofort, dass die Werte historisch sind.

**Nicht gemacht** habe ich die materielle Umstellung des Abschnitts. Das wäre eine Umstrukturierung
fremder Führungsinhalte und gehört in den `planungsgrundlagen`-Loop, nicht in einen Cross-KB-Lauf. Sie
ist dort als offener Punkt angemeldet.

**Frage:** Soll der `planungsgrundlagen`-Loop das als Vorrang-Auftrag bekommen? Die Werte laufen sonst
weiter in Machbarkeitsstudien ein — mit einem Vorbehalt davor, aber eben doch.

### 6.3 Taktung `baurecht-buch-training` (Grundlage hat sich geändert)

Der bestehende Vorschlag, den Loop von zweimal täglich auf wöchentlich zurückzutakten, stützte sich auf
drei Begründungen. Eine davon ist weggefallen (Abschnitt 4). Der Vorschlag steht mit Korrekturvermerk
weiterhin im Register; die Entscheidung lag und liegt bei Raphael. Ich weise nur darauf hin, dass die
Grundlage schmaler ist als beim ersten Vorlegen — nach der Lehre aus Run 20, eine Vorlage nie gegen
einen überholten Stand zu entscheiden.

---

## 7. An die führenden KBs übergeben (Bring-Schulden, nicht Chef-Sache)

- **an `normen`:** `planungsgrundlagen` führt die Parkierungs-Geometrie aus der abgelösten Ausgabe —
  Delta-Abgleich 2005 → 2021 nötig. In `normen/wiki/QUESTIONS.md` angemeldet.
- **an `baurecht`:** die SIA-358-Masse stehen dort offenbar in der Ausgabe **1996**, `normen` führt
  **2010** als geltend. Als offene Frage angemeldet, keine Zahl geändert — das ist Sache der KB.
- **an `energie`:** der Wiki-Themenartikel «Kommunale Wärmeplanung ZH/SZ» fehlt; vier Destillate warten
  auf Verdichtung. Der Cross-KB-Lauf legt keine neuen Themenartikel an.
- **an `bauprodukte`:** kein Artikel zu BKP 214.1/214.3 (Montagebau in Holz) und den zugehörigen
  Bekleidungen 271.1/225.4, obwohl die normative Grundlage in `normen` destilliert vorliegt. Mit dem
  ausdrücklichen Hinweis, `lignum-lignatec-brandschutz` **nicht** heranzuziehen (Stand 2005/VKF 2003).
- **an `kunde-bopp`:** Projekt-Detailartikel Baar Zugerstrasse 49 fehlt weiterhin; der Blocker
  (OneDrive-Platzhalter) ist unverändert dokumentiert.

---

## 8. Der ehrliche Teil

**Was gut lief.** Die Trefferquote der Melde-Agenten war hoch (19 von 24), und die widerlegten fünf
waren durchweg plausibel formuliert — sie fielen erst an den Originalquellen. Die Aufgabenteilung
Melden/Verifizieren/Umsetzen hat in diesem Lauf drei materielle Neu-Fehler verhindert.

**Was ich nicht geprüft habe.** Von den sechs Paaren berührt keines `twin`, `spec`, `firmengruendung-ch`,
`architekten-synobsis`, `entwurfs-referenzen`, `wettbewerbs-dna`, `projekt-lessons`, `immobilienbewertung`,
`auflagebereinigung` oder `claude-code`. Die am 30.07. reaktivierte Etappe 4 der `wettbewerbs-dna` ist
ungeprüft in den nächsten Lauf verschoben. Von den bfu-Destillaten aus normen-Run 38 habe ich zwei von
zehn angefasst.

**Wo ich unsicher bin.** Der Umsetzungs-Agent für `baurecht` hat sieben Registerstellen angefasst, an
denen Statusaussagen in datierten Log-Sektionen stehen. Die Regel «datierte Einträge nicht rückwirkend
umschreiben» und die Regel «ein falscher Status darf nicht stehen bleiben» ziehen dort gegeneinander.
Gewählt wurde: Alttext durchgestrichen stehen lassen, dahinter der datierte Erledigt-Vermerk. Das hält
beide Regeln ein, macht die Datei aber sperriger zu lesen. Falls das nicht gewollt ist, sage es — die
Konvention gilt dann für alle künftigen Läufe.

**Eine Zahl, die ich nicht selbst nachgerechnet habe.** Der Giebelweg-Endstand (1'162 m³, Attika
128.9 m², Reserve 105 m³) stammt aus der Gegenprüfung des Umsetzungs-Agenten an PROJEKT-STAND.md und am
Deliverable-PDF; ich habe seine Belegstellen gelesen, nicht das PDF selbst geöffnet.

---

## 9. Bilanz

| Grösse | Wert |
|---|---|
| Agenten | 37 (6 Leser, 24 Verifikatoren, 7 Umsetzer) |
| Subagent-Token | ~6.02 Mio. |
| Tool-Calls | 618 |
| Laufzeit | ~24 Min. (2 Workflows) |
| Befunde gemeldet / bestätigt / widerlegt | 24 / 19 / 5 |
| Auflösungen, die der Verifikator verwarf | **24 von 24** |
| Geänderte Dateien | 40 in 7 KBs + 3 Skill-Dateien, dazu das Koordinations-Register |
| Neue Matrix-Zeilen | 6 (eine davon bewusst mit **offener** Führung) |
| Rotationsliste «nie geprüft» | erstmals **leer** |
