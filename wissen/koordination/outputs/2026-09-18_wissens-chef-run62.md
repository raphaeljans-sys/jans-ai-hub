# Wissens-Chef, Lauf 62 (18.09.2026, Abendlauf)

**Delta-Basis** `6f72d0334` → `847a69f79`, Fenster 24 h, **117 Commits**, 65 Wissens-, Rules- und
Skill-Dateien, nativ im SSD-Klon gemessen. Zuschnitt: Workflow mit **6 Meldern** (Pflichtpaare a bis d,
rotierend twin ↔ rules und architektur-fachwissen/energie ↔ normen), je Meldung ein **adversarialer
Verifikator**, Gegenprüfung aller tragenden Befunde am Original im Hauptkontext.

## Hinweis für das Tagesbriefing (Hub-intern, kein operativer Befund)

**Der Byte-Riegel des Twin-Harness ist praktisch erschöpft: 36'992 von 37'000 B, Reserve 8 B.** Die
nächste Kompilierung, die den Auto-Block auch nur um einen Satz wachsen lässt, bricht ab (der Compiler
schreibt dann nichts, er wächst also nicht still). Die Grenze wurde am 17.09. von 34'000 auf 37'000 B
gehoben und ist nach einem Tag aufgebraucht. Damit wird die offene Frage `wissen/twin/wiki/QUESTIONS.md`
260917b #6 (Block nach Gattung teilen) dringend. Ein weiteres Anheben der Grenze würde das Problem nur
um einen Tag verschieben.

## Das Wichtigste

Ein ruhiger Lauf. Fünf von sechs Feldern zeigen keinen neuen Befund, weil ihr Zuwachs die Umsetzung von
Lauf 61 war, und die Melder haben das korrekt erkannt statt es neu zu melden. Die eine Meldung hielt der
Prüfung nicht in der gemeldeten Form stand: sie war kein Widerspruch zwischen zwei KBs, sondern eine
Einordnung, die innerhalb eines Artikels nicht nachgezogen war. Dazu kommt ein eigener Fehler aus Lauf 61,
den ein Melder gefunden hat.

## Bilanz

| | Zahl |
|---|---|
| Melder / Verifikatoren | 6 / 1 |
| Meldungen | 1 |
| bestätigt wie gemeldet | 0 |
| **anderer Zuschnitt** | **1** |
| widerlegt | 0 |
| Nebenbefunde aus Melder-Notizen, im Hauptkontext bestätigt | 2 |
| geänderte Dateien | 9, alle additiv, eine bewusste Zeilenersetzung (Syntax) |
| offene Entscheide für Raphael | 3 (aus Lauf 61 fortgeschrieben) + Byte-Riegel oben |

## Befunde

### WC62-1 auflagebereinigung ↔ normen · Zuschnitt schmaler · **«3 Arbeitstage» gegen «3 Tage» ist Verschärfung, kein Widerspruch**

Die Nachtschicht vom 18.09. hat die GVZ-Weisung 30.25 im Volltext gelesen und die
Ausserbetriebsetzungs-Frist in `auflagebereinigung/wiki/gvz-einreichung-bma-sprinkler.md` Abschnitt 3 auf
**«spätestens 3 Arbeitstage vorher»** (Ziff. 3.6, GMA-Workflow) gesetzt. Die `normen`-Destillate führen
nach VKF-BRL 20-15 Ziff. 3.10 und 19-15 Ziff. 4.4 **«spätestens bzw. min. 3 Tage»**. Am Original selbst
nachgelesen.

Der Melder hat das als Widerspruch gemeldet und eine Rückfrage bei der GVZ vorgeschlagen. Der Verifikator
hat beides zurückgewiesen: VKF setzt eine Mindestfrist, die GVZ verschärft sie im kantonalen Vollzug, und
3 Arbeitstage halten 3 Kalendertage immer ein. Die Primärquelle ist gelesen, also gibt es keine offene Frage.

Der wirkliche Mangel lag im Artikel selbst: sein Querbezug-Kasten nannte die Frist weiter als «3 Tage
vorher, norm-geführt», und der CHANGELOG-Eintrag vom 18.09. spricht von einer «Korrektur», als sei die
VKF-Angabe falsch gewesen. Unter dem Kasten steht jetzt ein datierter Nachtrag, der beides einordnet:
im Kanton Zürich gilt praktisch die GVZ-Frist, normen bleibt für den Normwortlaut führend. An den
normen-Destillaten nichts geändert. Das Null-Ergebnis von Run 10 im Register bleibt für die Schwellen
richtig und ist für diese Frist datiert präzisiert.

### WC62-2 baurecht · eigener Fehler Lauf 61 · **Verschachtelte Klammern in der links-Zeile**

Beim Anhängen von `[[kartenportale-werkleitungskataster]]` hatte Lauf 61 in
`baurecht/wiki/baureife-und-erschliessung.md` Z. 6 geschrieben:
`[[03-erschliessung-landsicherung-teil1], [[kartenportale-werkleitungskataster]]]`. Korrigiert auf zwei
saubere Links. Rein syntaktisch; der Verweis im Fliesstext war immer korrekt. Gefunden hat es der Melder
des Feldes baurecht ↔ planungsgrundlagen, obwohl dieser Fund nicht in seinem Auftrag lag.

### WC62-3 normen (intern) · Nebenbefund · **Ein Projekt-Rücklauf erreichte sein Destillat nicht**

`normen/outputs/2026-09-18_filz-akustikpaneele-rf-klasse-fluchtweg.md` (2619 KISPI) hat die Zellen der
BRL 14-15 Ziff. 4.2 für die Fluchtwege in Gebäuden geringer und mittlerer Höhe (Fassung 2017) am
Original gelesen. Das Destillat `vkf-brl-verwendung-baustoffe`, das diese Tabelle als «nicht mit
Sicherheit verifiziert» führt, kannte den Report nicht; der normen-CHANGELOG sagt ausdrücklich «Kein
Destillat geändert». Rückkante unter der Ziff.-4.2-Zeile gesetzt, mit eng gefasster Reichweite: nur diese
Zellengruppe und nur Stand 2017. Die Frage, wie sich die Zellen zwischen 2015 und 2017 verschoben haben,
bleibt offen. Die Werte stammen aus dem Report; ich habe sie nicht selbst am PDF nachgelesen.

Der Melder hatte das bewusst nicht gemeldet, weil es KB-intern ist. Aufgenommen habe ich es trotzdem: das
Muster (ein Rücklauf schliesst eine Destillat-Lücke, und das Destillat erfährt davon nichts) ist genau
das, was die Rule `wissens-ruecklauf` verhindern soll.

## Nullbefunde (geprüft, ohne neuen Befund)

01. **energie ↔ planungsgrundlagen (Pflichtpaar).** Runs 205 bis 207 sind beidseitig nachgezogen; die
    30-kW-Auflösung steht an allen Stellen identisch. SG-Ready, Modbus und Förderprogramm SZ liegen
    ausserhalb des Überschneidungsbereichs (`grep` in `planungsgrundlagen/wiki/`: null Treffer).
02. **grobkosten ↔ immobilienbewertung ↔ Kostenreferenzen (Pflichtpaar).** Der Zuwachs ist die
    Umsetzung von WC61-7 und WC61-8. ZIW-Gewichte, Faktor 1.053 und Healthcare-CHF/m³-GV sind an allen
    Fundstellen deckungsgleich; jede BWO-Fundstelle mit 1.75 % trägt den Studienstand-Vermerk.
03. **twin ↔ rules.** Der Auto-Block stimmt mit den vier Golds des Fidelity-Reviews vom 18.09. überein.
    Der Fall Steinmann (Sie im Januar, Du in der Rule) ist bereits als Trajektorie registriert.
04. **architektur-fachwissen ↔ normen, energie ↔ normen.** WC61-5 ist vollständig durchgezogen. Die
    drei Normzitate im Run-207-Destillat (SIA 380/1 Anhang B, SIA 385/1, SIA MB 2060) sind je bereits
    registriert.
05. **baurecht ↔ planungsgrundlagen.** Ausser WC62-2 kein Zuwachs ausserhalb von Lauf 61.

## Offene Entscheide für Raphael (unverändert aus Lauf 61)

01. **Anrede-Rückstau:** sechs mehrfach belegte Kontakte fehlen in `rules/anrede-kontakte.md`
    (`twin/wiki/QUESTIONS.md` 260917b #2); Vorschlag: gebündelte Vorlage.
02. **Anteilsstruktur BKP:** Registerzeile für die parallel geführten ZIW-Gewichte, ja oder nein.
03. **SIA-2017-Doppelspur** zwischen `normen` und `architektur-fachwissen`: Verdichtung ja oder nein.

## Schreib-Kontrolle

9 Dateien: `auflagebereinigung/wiki/gvz-einreichung-bma-sprinkler.md`, `normen/destillate/vkf-brl-verwendung-baustoffe.md`,
`baurecht/wiki/baureife-und-erschliessung.md`, die drei zugehörigen CHANGELOGs, `koordination/QUERBEZUEGE.md`,
`koordination/CHANGELOG.md` und dieser Bericht. Alle Edits ankerbasiert (Anker einmalig geprüft, Ersatz mit
Anzahl 1), kein globales Ersetzen, kein Eingriff in `raw/`, kein Rule-Wortlaut geändert. Eine bewusste
Zeilenersetzung: die `links:`-Zeile in `baurecht` (Syntax). Umfang nach dem Commit per `--numstat` gemessen.
