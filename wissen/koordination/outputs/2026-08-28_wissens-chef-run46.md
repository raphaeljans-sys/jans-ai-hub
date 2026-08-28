# Wissens-Chef Run 46 — 28.08.2026

**Delta-Basis** 27.08.2026 23:11, Fenster **24,0 h**, **109 Commits**, 58 geänderte Dateien in
`wissen/` + `rules/` + `skills/`. Frisch gewachsen: `energie` Run 166 (SIA-380/1-Korrigenda C1:2019,
GFM 2028), `normen` Run 64 (SIA 416:2003 → `speculative`), `grobkosten` (EI30-Kennwerte KISPI),
`projekt-lessons`, `twin` (Batch 107).

**Zuschnitt** 5 Melder (`model: sonnet`) + 5 Refuter (Hauptmodell, adversarial) = **10 Agenten**,
1'819'895 Token, 173 Werkzeugaufrufe, 9,2 Min, **0 Fehler**. Dazu ein eigener Strang im Hauptkontext:
ein neu gebauter deterministischer Vorfilter, die Gegenprüfung zweier Agenten-Befunde am Original und
eine Verifikation am amtlichen Bundesrecht.

**Bilanz: 5 Befundstränge bestätigt, 1 widerlegt, 3 Nullbefunde gemessen. 21 Dateien geändert,
13 rein additiv, 8 gewollte Zeilenersetzungen — keine Datei hat Bestand verloren.**

Der Lauf hat einen gemeinsamen Nenner: **vier von fünf Befunden entstanden am 28.08.2026 selbst.**
Zwei Läufe derselben Nacht (`normen` Run 64, `energie` Run 166) haben hervorragende Arbeit geleistet
und dabei je eine Kante nicht bedient, die über ihre KB-Grenze hinausging. Das ist kein Vorwurf an
sie — es ist genau die Lücke, für die diese Instanz existiert.

---

## Der schwerste Befund: ein Bundesgesetzesartikel, der das Gebäudeprogramm nicht trägt

`baurecht` führte an **zwei** Stellen «Gebäudeprogramm (**Art. 45 EnG**)» — im Buch-Destillat
(`buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md` Z. 49) und, weitergewandert, in der
**konsumierten Wiki-Schicht** (`wiki/baureife-und-erschliessung.md` Z. 318).

**Am amtlichen Volltext gegengelesen** — Fedlex, EnG SR 730.0, Konsolidierung 20260101, über die
Filestore-URL nach Rule `auto-verbesserungen` 260721, vom Hauptprozess selbst gezogen und nicht vom
Agenten übernommen:

> Art. 45 trägt den Randtitel **«Gebäude»** und verpflichtet ausschliesslich die **Kantone,
> Vorschriften zu erlassen** (Abs. 1-3: Rahmenbedingungen, Verbrauchsstandards, maximal zulässiger
> Anteil nicht erneuerbarer Energien, ortsfeste elektrische Widerstandsheizungen, verbrauchsabhängige
> Heizkostenabrechnung). **Kein Wort zu Förderbeiträgen.**

Die Fördermechanik steht in **Art. 50-52 EnG** — Art. 50 «Energie- und Abwärmenutzung», Art. 51
«Grundsätze» (Globalbeiträge oder Finanzhilfen), Art. 52 «Globalbeiträge» (nur, sofern ein Kanton über
ein Förderprogramm verfügt) — i.V.m. **Art. 34 CO2-Gesetz**. Alle drei Artikel selbst nachgelesen.

**Dieselbe Zeile trug einen zweiten Fehler:** sie führt **Fenster** unter den förderfähigen
Gebäudeteilen. Seit dem **HFM 2015** (gültig ab 01.01.2017) sind Fenster, Türen, Kellerdecken und
Estrichböden ausgeschlossen — dreifach unabhängig in der KB `energie` belegt (HFM-Destillat sowie die
Förderdestillate ZH und SZ), ohne Verifikationsvorbehalt.

**Warum das zählt:** der Buch-Layer ist nach `skills/baurecht/SKILL.md` Z. 70-71 ausdrücklich eine
**zitierbare** Synthese (Stufe 0b), keine Rohschicht. Eine solche Zeile kann direkt in eine
Bauherren-Auskunft laufen — und die Wiki-Zeile steht ohnehin in der konsumierten Schicht.

**Die beiden Fehler verlangten verschiedene Behandlung, und das ist der Punkt.** Die
Artikelzuordnung ist **schlicht falsch** und wurde berichtigt. Die Förderfähigkeit ist **veralteter,
nicht falscher Buchstand** — eine 6. Auflage von 2019 darf den Vorgängerstand vor 2017 korrekt
wiedergeben, und die Buchseite S. 760-761 wurde nicht eingesehen. Dort steht ein
Fassungsstand-Vermerk, keine Umschreibung. **Nicht angefasst, weil richtig:**
`buecher/band-2/17-…` Z. 21 nennt Art. 45 EnG korrekt als Bundes-Energierecht; der Laufbericht
`outputs/2026-06-30_buch-run16.md` bleibt unangetastet, Laufberichte werden nicht rückwirkend
redigiert.

**Aktion:** wiki +3/−1, Buch-Destillat +1/−1. Matrixzeile gesetzt.

---

## Der Fund, den der übliche Schutzmechanismus strukturell nicht fangen kann

`energie` hat gestern Nacht die Korrigenda **SN 520380/1-C1:2019** zur SIA 380/1 im Volltext gelesen
und destilliert — kostenlos, Preisgruppe 0, mit zwei materiellen Änderungen: **Zielwert-Faktor für
Neubauten 60 % → 70 %** (Ziff. 2.3.11) und **durchgängiger Verweiswechsel SN EN ISO 13790 →
SN EN ISO 52016-1**. Vorbildliche Arbeit.

Nach der Führungsmatrix führt aber **`normen`** den Fassungsstand einer Norm **inklusive Korrigenda**.
Dort war sie an **drei** Stellen nicht angekommen — und `normen` führte «SN EN 13790» in
`destillate/sia-380-1-2016.md` **zweimal aktiv** weiter, einmal davon im Abschnitt «Normbezüge … für
die **Anwendung relevant**».

**Drei Dinge machen diesen Befund lehrreich.**

Erstens ist er **kein Neuland**: die KB `normen` hat die Regel am 28.07.2026 (Run 19) selbst
geschrieben — «bei unveränderter Ausgabe können Korrigenda Ziffern materiell ändern … bei jedem
SIA-Destillat die Korrigenda-Liste des SIA-Shops prüfen (Preisgruppe 0)». Für SIA 380/1 wurde sie nicht
vollzogen, während die Nachbarzeile SIA 2028 ihre beiden Korrigenda vorbildlich führt. Die Regel ist da,
ihre Durchsetzung ist ungleichmässig.

Zweitens — und das ist der eigentliche strukturelle Fund — **greift der übliche Auffangmechanismus
hier nicht**. Rule `normen-referenz` Ziff. 1b verlangt bei `status: speculative` das Gegenlesen am
Original. Genau das würde «SN EN 13790» **bestätigen**, weil die Korrigenda ein **eigenständiges
Dokument** ist. Wer der Regel folgt, bekommt den falschen Stand bestätigt. Registriert als **N46-2**.

Drittens liegt die Bringschuld nach Rule `wissens-bibliothekar` (Fassung 23.08.2026) beim
**erledigenden Lauf**. `energie` Run 166 hat seine Abschlussregel sauber dokumentiert — «grep über
`wiki/` und `destillate/` mit Schreibvarianten, genau eine betroffene Fundstelle **KB-weit**» — und
war damit bewusst KB-intern. Gegenprobe: `grep -c "normen"` im Run-166-Report = **0**; auch die
`links:`-Zeile des neuen Destillats nennt ausschliesslich energie-eigene Artikel. Als **E46-1**
vorgelegt: die Abschlussregel braucht einen Schritt «welche andere KB führt dieses Thema nach der
Matrix?». **Das ist der Punkt, der die Wiederholung verhindert** — die vier Datei-Edits heilen nur
diesen einen Fall.

**Der Refuter hat abgeschwächt, und zwar zu Recht:** der Zielwert-Faktor hat aus dieser Datei **keine
Aussenwirkung**. Sie trägt ab Z. 17 ein Warnbanner und verbietet dem Agenten `energie-berater` ab
Z. 165 ausdrücklich jede Q_H-Ableitung — aus ihr dürfen überhaupt keine Werte herausgehen. Die scharfe
Kante ist allein der Rechennorm-Verweis. **Eigener Nullbefund, gemessen:** der Zielwert-Faktor 60 %
kommt ausserhalb der KB `energie` hub-weit **nirgends** vor.

**Aktion:** `sia-380-1-2016.md` +9/−2 (Korrigenda-Block plus inline ⚠ an beiden Fundstellen),
`destillate/INDEX.md` +1/−1, `wiki/REGISTER.md` +1/−1. Matrixzeile gesetzt.

---

## Ein Statuswechsel mit bekannter Konsumentenliste — und niemand wurde benachrichtigt

`normen` hat gestern Nacht (Run 64) `destillate/sia-416-2003.md` von `established` auf
**`speculative`** herabgestuft: erste Abdeckungsrunde, **12 Kern- und 18 Nebenlücken, kein einziger
falscher Wert**; der Figurenanhang S. 49-57 war bis dahin nie eingesehen. Die Herabstufung ist
sachlich richtig und im eigenen Register begründet (**N64-2**: ohne Refuter-Runde bleibt `speculative`
richtig).

**Die 12 Konsumenten stehen namentlich** in `normen/training/n62-3-pruefstand-kandidaten.md` Z. 67 —
darunter vier rechnende Agenten. Die Liste existierte. Benachrichtigt wurde niemand.

**Gefunden über einen Vorfilter, den dieser Lauf neu gebaut hat.** Kein bestehendes Werkzeug fragt, ob
ein Artikel den **Status seines Link-Ziels behauptet** und ob dieser noch stimmt (`link-zielabgleich`
prüft, ob ein Link ankommt, nicht was über das Ziel behauptet wird). Hub-weit: **258 Rohtreffer**,
nach Abzug der Journalprosa aus CHANGELOGs und Laufberichten genau **zwei riskante** Fälle —
Behauptung `established`, Ziel real `speculative`:

- `energie/destillate/gebaeudehuellziffer-ebf-flaechendefinition.md` Z. 228
- `energie/wiki/bezugsgroessen-energienachweis.md` Z. 84

Beide stammen aus **Wissens-Chef Run 34** (16.08.2026) und boten das Destillat wörtlich mit
«`status: established`» als **autoritativen Ersatz** für eine schwache Quelle an — die
RHYMO-Flächenhierarchie einer privaten Immobilienfirma. Alle übrigen 256 Treffer sind
konservativ-veraltet (behauptet `emerging`, Ziel längst `established`) und damit ungefährlich: sie
unterschätzen die Belastbarkeit des Ziels, statt sie zu überschätzen.

**Was NICHT geschah, und warum das die eigentliche Entscheidung des Laufs ist.** Der Melder wollte die
inhaltlichen Vertiefungen aus Run 64 in die Konsumenten übertragen. Der Refuter hat dem drei Riegel
vorgeschoben, alle drei tragfähig:

1. Der **Präzedenzfall steht an genau diesem Artikelpaar** — Wissens-Chef Run 35, 17.08.2026:
   «Keine Korrektur — und ausdrücklich keine Änderung eines `established`-Artikels auf ein
   `speculative`-Destillat hin.»
2. Rule `normen-referenz` Ziff. 1b sagt dasselbe generisch: `speculative` ist Warnkarte, nicht
   Zitierquelle.
3. `normen` führt die betroffenen Blöcke (Ziff. 4.1-4.3, Höhenregel aus Figur 8) selbst unter **N64-2**
   als **noch nicht gegengeprüft**.

Gesetzt wurden deshalb **Prüfvermerke, keine Korrekturen** — nach dem Muster, das Run 34 selbst
vorgemacht hat («als Prüfauftrag, nicht als Beleg»).

**Widerlegt:** die gemeldete Doppelspurigkeit zwischen `immobilienbewertung/wiki/flaechendefinitionen-sia`
und `normen`. Die Doppelbewirtschaftung ist **gewollt und seit Run 35/36 registriert** — `normen` führt
die zitierfähige Fundstelle, `immobilienbewertung` die baupraktische Einordnung. Der Vorschlag, die
Tabellen «auf einen Verweis zu verschlanken», hätte eine `established`-Tabelle durch einen Zeiger auf
eine `speculative`-Quelle ersetzt, also die Belegqualität an der Bewertungsgrundlage **gesenkt** — und
wäre als Merge nach Rule `wissens-bibliothekar` Punkt 4 ohnehin rückfragepflichtig gewesen.

**Bestätigt und vergrössert** wurde dagegen die fehlende Kante: `flaechendefinitionen-sia` baut
vollständig auf SIA 416:2003 auf, führte im Frontmatter aber nur `[[sia-416-1-2007]]` — die
**zurückgezogene** Ergänzungsnorm — und nicht die Mutternorm. Die Kette
`grobkosten/wiki/kennwerte` → `flaechendefinitionen-sia` → ✗ endete in einer Sackgasse.

**Aktion:** Backlink gesetzt, Prüfauftrag vermerkt (+15/−1); zwei Statusnachträge in `energie`
(je +1/−1). Matrixzeile gesetzt. **N46-3** an `normen`: ob ein Statuswechsel an einem Destillat mit
bekannter Konsumentenliste künftig eine Benachrichtigungspflicht auslöst.

---

## Ein Phantom-BKP-Code, zwölf Stunden alt

Zwei Reports vom 28.08.2026 zum selben Vorgang — `grobkosten` (belegte Preisreihen für
EI30-Schiebetüren, Berchtold 2020 Serie und Jegen 2026 Einzelstück) und `projekt-lessons` (wo der
Produktstandard des Bestands liegt) — nannten einander **null-mal**. Die Arbeitsteilung selbst ist
sauber: `grep -c CHF` im projekt-lessons-Report = 0, und der grobkosten-Report führt keine
übertragbare Prozess-Lehre. Die Führungsmatrix hält.

**Schwerer als die fehlende Verbindung war das, was der Refuter zusätzlich fand:** beide führten
«**BKP 274.01**». Am kanonischen Original nachgeprüft — `references/bkp-2017/BKP-2017-Liste.md`
Z. 533-538: unter **273** existieren nur `.0` bis `.3`, und **274 «Innere Spezialverglasungen» hat
überhaupt keine Unterposition**. «274.01» ist eine bürointerne Los-Nummer.

Das ist **exakt die Fehlerfamilie, die der Hub am 04.08.2026 teuer gelernt hat** (Fall «271.10», der
sich unbemerkt in 15 Dateien ausgebreitet hatte) und die seither in der importierten Rule
`bkp-2017-referenz.md` verboten ist: bürointerne Los-Nummern nie mit dem Präfix «BKP», sondern als
`LOS <Nr.>`. **Der Hub weiss es an anderer Stelle richtig** — derselbe projekt-lessons-Report schreibt
korrekt `LOS_235.21`, und der Entscheid-Radar vom 25.07. schreibt «Jegen **Los** 274.01». Hier zahlt
sich aus, dass der Befund zwölf Stunden nach seiner Entstehung gefunden wurde und nicht nach dreizehn
Monaten.

**Nicht angefasst:** die Quellenzeile «G-BKP 273.04_05» — das ist die wörtliche Bezeichnung des
KBOB-Werkvertrags und als Fremdbezeichnung zulässig.

Dazu je ein **toter Wikilink**: `[[grobkosten-bkp-2]]` (existiert hub-weit nicht; auf das reale
`[[kennwerte]]` berichtigt) und `[[koordination]]` (existiert nicht — **bewusst nicht entfernt**,
Löschen fällt unter Rule `wissens-bibliothekar` Punkt 4). Struktureller Nebenfund **PL46-3**: tote
Links in `outputs/` sind hub-weit **ungeprüft**, weil Prüfung B des Skills `wissenscheck` nur `wiki/`
abdeckt. Beide heute gefundenen toten Zeiger lagen in `outputs/`.

**Aktion:** grobkosten-Output +9/−2, projekt-lessons-Report +5/−0, dessen CHANGELOG +15/−1,
wechselseitiger Klartext-Verweis gesetzt.

---

## Drei Nullbefunde, gemessen statt vermutet

- **Förderung ausserhalb `energie`.** Die Ankündigung des **GFM 2028** (EnDK, 28.08.2026, löst das
  HFM 2015 ab) betrifft die meistzitierte Förderquelle der KB. Gegenprobe über `planungsgrundlagen`
  und `skills/planungsgrundlagen`: **null Dateien** mit Förderaussagen. Der einzige Aussenbezug war
  die oben behandelte `baurecht`-Zeile.
- **Zielwert-Faktor 60 %.** Hub-weit ausserhalb `energie` nirgends geführt.
- **`bauprodukte` und Türen.** Kein Artikel zu Türen oder Spezialverglasungen; die KB führt nach der
  Matrix ohnehin **keine Kennwerte für Kalkulationen**. Kein Widerspruch, kein Handlungsbedarf — ein
  Artikel auf Vorrat wäre nach dem Schreib-Riegel des Skills `wissenscheck` sogar unerwünscht. Als
  BP46-2 nur vermerkt, damit ein künftiger Türen-Artikel die Fundstellen findet. Nebenbefund **BP46-1**:
  BKP 281 steht im bauprodukte-INDEX zweimal.

## Eine Fehlerklasse in einer importierten Rule — vorgelegt, nicht angefasst

`rules/anrede-kontakte.md` lädt in **jeder** Session. Zwei Zeiger darin sind überholt:

- Z. 16 nennt «**Sechs** unabhängige authentische Belege» gegen die Nivellier-Zeile. Das twin-Wiki
  steht bei **elf** (`twin/wiki/QUESTIONS.md` Z. 4478: «elfter Beleg dagegen, **null dafür**»).
- Z. 22 verweist auf «`QUESTIONS.md` … zuletzt Z. 3494-3503». **Dort steht heute eine völlig andere
  Frage** — Telefonnummern-Schreibweise und Du-Grossschreibung.

**Der zweite Punkt ist eine Fehlerklasse, kein Einzelfehler.** Der Refuter hat am Git-Stand vom
21.08.2026 nachgewiesen, dass der Verweis beim Setzen **korrekt war** und seither weggewandert ist:
`QUESTIONS.md` ist nicht rein append-only, die twin-Loops tragen auch oberhalb nach. Die **ID-Zeiger**
derselben Klammer (260815 #4, 260816 #1) haben gehalten. Lehre: absolute Zeilennummern aus einer Rule
in eine rückwirkend editierte Wiki-Datei sind grundsätzlich instabil.

**Bewusst kein Eingriff.** Der ⚠-Vermerk ist zwar Claudes eigener Text (Run 39), aber er steht in einer
importierten Rule, und die Datei sagt selbst: «Claude ändert den Wortlaut einer Rule nicht selbst.»
Der Refuter hielt den Edit für «vertretbar, aber nicht zwingend» — bei einem Grenzfall in einer Datei,
die in jeder Session lädt, ist Zurückhaltung die richtige Antwort.

**Abgeschwächt und nicht als Befund gemeldet:** der Stadelmann-Punkt ist am 26.08. (Run 44) bereits
adjudiziert («keine Aktion»). Neu ist allein die Belegzahl, von **eins auf zwei** (Batch 106,
26.08.2026). Im eigenen Register nachgeführt — reine Zahlenpflege, kein neuer Entscheid.

---

## Offene Entscheide

**Für Raphael (drei, alle klein, keiner eilig):**

1. **Nivellier-Zeile in `rules/anrede-kontakte.md`** — elf Belege dagegen, **null dafür**, seit
   **13 Tagen** offen (`twin/wiki/QUESTIONS.md` 260827 #1, dort mit ausformulierten Optionen). Dieser
   Lauf hat den Zählerstand geprüft und den Sachentscheid ausdrücklich **nicht** vorweggenommen. Bei elf
   zu null und zwei Wochen Liegezeit ist die Vorlage reif.
2. **Zähler und Zeiger im selbstgesetzten ⚠-Vermerk derselben Rule** (Z. 16 «Sechs» → elf; Z. 22
   Zeilenzeiger → stabiler ID-Zeiger «260827 #1»). Rein technische Pflege an Claudes eigenem Text,
   aber in einer importierten Rule. Freigabe genügt, dann setzt der nächste Lauf es.
3. **Drei Kontakte aus twin-Batch 107** (Livdin Bajrami, Yasarcan Cetin, Nicklas Rothe) fehlen in der
   Kontaktliste. Das twin-Wiki hält die Schwelle selbst fest («ab dem zweiten Beleg»); für **Bajrami**
   ist sie erfüllt (drei Belege, drei Wärmestufen im Sie) und für **Rothe** ebenfalls, dort mit einem
   belegten Wechsel **Sie → Du** binnen dreier Tage. Die Aufnahme ist nach dem Kopf der Rule Raphaels
   Entscheid («Im Zweifel nachfragen, nie raten»).

**Für die KBs (kein Entscheid Raphaels):**

- **`energie` E46-1** — die Abschlussregel «grep KB-weit» um einen Cross-KB-Schritt erweitern.
- **`normen` N46-1** — ob die Korrigenda-Regel aus Run 19 einmal systematisch über den ganzen
  SIA-Destillatbestand läuft. Die Durchsetzung ist heute ungleichmässig.
- **`normen` N46-2** — dass der `speculative`-Schutz bei Korrigenda strukturell nicht greift.
- **`normen` N46-3** — Benachrichtigungspflicht bei Statuswechsel mit bekannter Konsumentenliste.
- **`projekt-lessons` PL46-2** — toter Zeiger `[[koordination]]`; Entfernen ist ein Löschvorgang.
- **`projekt-lessons` PL46-3** — tote Links in `outputs/` sind hub-weit ungeprüft (`wissenscheck`
  Prüfung B deckt nur `wiki/`).
- **`bauprodukte` BP46-1** — BKP 281 steht im INDEX zweimal.

---

## Werkzeug-Ertrag dieses Laufs

Der Status-Zielabgleich (behauptet ein Artikel den Status seines Link-Ziels, und stimmt der noch?)
hat als Ad-hoc-Prüfung genau die zwei riskanten Fälle aus 258 Rohtreffern isoliert, die kein anderes
Werkzeug findet. Die Signalqualität stimmt: **zwei** Handlungsfälle, 256 harmlose. Als Kandidat für
ein siebtes Werkzeug in `wissen/tools/` vermerkt — **bewusst heute nicht gebaut**, weil ein Werkzeug
erst mit einer zweiten Messung an einem anderen Tag zeigt, ob die Trennschärfe hält.

## Geschriebene Dateien

| Datei | Diff |
|---|---|
| `wissen/baurecht/wiki/baureife-und-erschliessung.md` | +3 / −1 (gewollt: berichtigte Zeile 318) |
| `wissen/baurecht/buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md` | +1 / −1 (gewollt: Tabellenzeile) |
| `wissen/normen/destillate/sia-380-1-2016.md` | +9 / −2 (gewollt: zwei Fundstellen mit ⚠) |
| `wissen/normen/destillate/INDEX.md` | +1 / −1 (gewollt: Ausgabe-Spalte) |
| `wissen/normen/wiki/REGISTER.md` | +1 / −1 (gewollt: Ausgabe-Spalte) |
| `wissen/immobilienbewertung/wiki/flaechendefinitionen-sia.md` | +15 / −1 (gewollt: erweiterte `links:`-Zeile) |
| `wissen/energie/destillate/gebaeudehuellziffer-ebf-flaechendefinition.md` | +1 / −1 (gewollt: Nachtrag am Satzende) |
| `wissen/energie/wiki/bezugsgroessen-energienachweis.md` | +1 / −1 (gewollt: Nachtrag am Satzende) |
| `wissen/grobkosten/outputs/2026-08-28_kennwerte-ei30-schiebetueren-kispi.md` | +9 / −2 (gewollt: BKP-Label, Zeiger) |
| `wissen/projekt-lessons/outputs/2026-08-28_bestandsstandard-beschlaege-unternehmerdokumentation.md` | +5 / −0 |
| `wissen/projekt-lessons/CHANGELOG.md` | +15 / −1 (gewollt: BKP-Label) |
| `wissen/normen/CHANGELOG.md` | +30 / −0 |
| `wissen/energie/CHANGELOG.md` | +22 / −0 |
| `wissen/baurecht/CHANGELOG.md` | +23 / −0 |
| `wissen/immobilienbewertung/CHANGELOG.md` | +23 / −0 |
| `wissen/grobkosten/CHANGELOG.md` | +18 / −0 |
| `wissen/normen/wiki/QUESTIONS.md` | +31 / −0 |
| `wissen/energie/wiki/QUESTIONS.md` | +23 / −0 |
| `wissen/baurecht/wiki/QUESTIONS.md` | +27 / −0 |
| `wissen/projekt-lessons/wiki/QUESTIONS.md` | +25 / −0 |
| `wissen/bauprodukte/wiki/QUESTIONS.md` | +13 / −0 |
| `wissen/koordination/QUERBEZUEGE.md` | +156 / −1 (gewollt: Belegzähler Stadelmann) |
| `wissen/koordination/CHANGELOG.md` | (dieser Lauf) |
| `wissen/koordination/outputs/2026-08-28_wissens-chef-run46.md` | dieser Bericht (neu) |

**Cross-KB-Bringschuld erfüllt** (Rule `wissens-bibliothekar`, Fassung 23.08.2026): jeder offene Punkt
steht in der `QUESTIONS.md` der **Empfänger-KB**, mit der Empfänger-KB beim Namen — nicht nur in diesem
Bericht.

Jede Löschung ist oben einzeln als gewollte Zeilenersetzung ausgewiesen und wurde per Diff gegen den
letzten committeten Stand gemessen (Rule `auto-verbesserungen` 260811). **Keine Datei hat Bestand
verloren.** Kein `git` lief über den SMB-Mount (Rule `sync-kanonische-quelle`).
