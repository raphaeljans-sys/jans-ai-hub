# Wissens-Chef Run 24 — Cross-KB-Delta-Lauf

**Datum:** 03.08.2026, 23:10–23:55 CEST (MacBook Pro)
**Verfahren:** ein Workflow, **12 Agenten** (4 Lese-Felder, 8 adversariale Verifikatoren),
2.04 Mio. Subagent-Token, 270 Tool-Calls, 15.3 Min. Laufzeit.
**Vorlauf:** Run 23 endete am selben Abend um 22:51 — dieser Lauf steht ausschliesslich auf dem
Zuwachs der 22 Minuten davor und der Stunde danach.

## 1. Warum dieser Lauf schlank war

Run 23 lag beim Start **22 Minuten** zurück. Statt den gewohnten Fan-out (Run 23: 30 Agenten)
zu wiederholen, wurde zuerst gemessen, ob überhaupt Substanz gewachsen ist. Sie war es:
`energie` hatte um 22:58 den Lauf 122 mit **neun AHB-Gebäudetechnik-Destillaten** und einem neuen
Themenartikel abgeschlossen, `normen` zwischen 22:46 und 23:08 **sieben** Destillate im
Hindernisfrei-, Sanitär- und Wasserfeld angelegt oder stark ausgebaut. Vier Felder mit echter
Überschneidungsgefahr — also vier Leser statt sechs, zwei Verifikatoren je Feld statt aller
Befunde.

**Kontingent:** beim Start [FREI], 26.3 von 167 Mio (15.7 %) bei 6.7 % verstrichener Woche. Der
Verbrauch lief also **9 Punkte vor** dem Zeitanteil — das war der zweite Grund für die schlanke
Dimensionierung, nicht nur das kleine Delta.

## 2. Ergebnis in Zahlen

| | |
|---|---|
| Gemeldete Befunde | 35 (4 Felder) |
| Verifiziert | 8 (die je zwei schwersten je Feld) |
| **Bestätigt** | **7** |
| Widerlegt | 1 |
| Korrigierte Dateien | **9** in 4 KBs |
| Beantwortete offene Punkte | 2 (K42-4a in `normen`, Frage 2 in `baurecht`) |
| Neue Lese-/Beschaffungsaufträge | 3 |

Bemerkenswert: **in sechs von acht Fällen war die vom Melder vorgeschlagene Auflösung falsch oder
zu eng**, obwohl der Befund selbst hielt. Die Verifikationsstufe verdient ihren Namen also nicht
als Filter, sondern als zweiter Blick — sie hat in diesem Lauf mehr Wert erzeugt als das Aussieben.

## 3. Der teuerste Fund: die Baurechts-KB führte falsche Geländerhöhen

**Bestätigt von zwei unabhängigen Verifikatoren, beide am Original — Buch-Screenshot und beide
Norm-Ausgaben.**

`wissen/baurecht/buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md` führte im
Fliesstext und in der Schwellenwert-Tabelle drei falsche Werte:

| Bisher in der KB | Richtig (Buch S. 1291, Shot 649) |
|---|---|
| Mindesthöhe i.d.R. **90 cm**, bei Brüstungstiefe > 20 cm **100 cm** | Mindesthöhe **1 m**; feste Brüstungen ab 20 cm Breite **90 cm** (Werte waren **vertauscht**) |
| Öffnungen bis 75 cm Höhe **≤ 90 mm** | keine Öffnung **> 12 cm Durchmesser** (Kugelprobe) |
| bei Höhe > 12 m mindestens **110 cm** | **steht nirgends** — frei hinzugefügt, Fundstellenangabe falsch |

**Die Pointe:** Die KB hatte den Widerspruch selbst bemerkt und ihn als **Fassungsdivergenz**
zwischen SIA 358:1996 (baurecht) und :2010 (normen) angemeldet — Frage 2 in
`baurecht/wiki/QUESTIONS.md`. Diese Rahmung war falsch. Die Verifikatoren haben die deutsche
Originalfassung **1996** aus dem Hausbestand ausgelesen (`…/xalt/358_1996_d.pdf`, Ziff. 3 13 /
3 14 / 3 15 / 3 22) und die Ausgabe **2010** gerendert und gelesen: **die Masse sind in beiden
Ausgaben identisch.** Die Suche nach «90 mm», «0.09», «1.1 m» im 1996er Volltext bleibt ohne
Treffer. Das Vorwort 2010 belegt, dass die Teilrevision nur Ziff. 0.3, die Normenliste 0.2, den
Begriff «Traverse», die Texte 3.3.2/3.3.4 und Anhang B betraf.

Der Fehler entstand also **beim Destillieren aus dem Buch-Screenshot**. Wäre die vorgeschlagene
Auflösung («als Stand-1996-Zitat kennzeichnen») umgesetzt worden, hätte die KB eine Normhistorie
festgeschrieben, die es nie gab — und den eigenen Lesefehler dem Standardwerk zugeschoben.

**Umgesetzt:** beide Stellen auf den Buchwortlaut korrigiert, Korrekturvermerk mit vollständiger
Belegkette gesetzt, Frage 2 als **falsch gerahmt geschlossen** (nicht «beantwortet»).

**Daraus ein neuer Auftrag an den Buch-Harness:** Der Fehler liegt in der Screenshot-Destillation,
nicht in der Quelle. Die übrigen Schwellenwert-Tabellen desselben Shot-Bereichs (632–655) sind
gegen die Buchseiten gegenzulesen, bevor ihr Status `established` fortgeführt wird.

## 4. K42-4a geschlossen — der Punkt, an dem drei KBs hingen

Run 23 hatte den Sitzhöhen-Konflikt (46 gegen 50 cm) als **höchstprioritären Leseauftrag**
hinterlassen: entscheidbar nur in SIA 500:2009 Anhang E, im Hub vorhanden, aber ungelesen.

**Am Original entschieden (Chef-Arbeit, nicht delegiert):** SIA 500:2009, **Anhang E**, Schnitt zu
**Figur E.1 (S. 49)** und **Figur E.2 (S. 51)** bemasst die Klosett-Sitzhöhe mit
«**+ 0.46 (OK Brille)**»; die Positionslegende M setzt den Klappsitz auf «0,46 m über Boden».

**46 cm ist damit normbelegt.** Die 50 cm der KL_Hochbau-Katalogblätter sind ein undatierter Wert
ohne Normbezug. Unabhängig bestätigt hat es derselbe Lauf von der anderen Seite: das erst gestern
Abend angelegte Destillat `procap-mb105-2009-rollstuhlgerechte-toiletten` führt «OK Brille
+0.46 m» und ist die erste ausdrücklich SIA-500-bezogene Quelle im Bestand, die das Mass trägt.
Der abnehmende Artikel in `planungsgrundlagen` hatte den richtigen Wert die ganze Zeit im eigenen
§4 stehen («WC-Sitzfläche OK ca. +460 mm») — er traute ihm nur nicht.

**Nachgezogen an vier Stellen:** `normen/wiki/QUESTIONS.md` (K42-4a beantwortet),
`normen/destillate/sia-500-2009.md` (`gelesen`-Feld), `normen/destillate/kl-hochbau-sanitaer-katalogblaetter.md`
(Vorbehalt aufgelöst), `planungsgrundlagen/wiki/recht-norm-sanitaerraeume-planungsgrundlagen.md`
(Wert freigegeben). Neuer, kleinerer Auftrag **K42-4b**: Anhang E im Übrigen (E.3 Dusche, E.4/E.5)
bleibt ungelesen — aber niemand wartet darauf.

## 5. Die Aufzugskabine: aus einer Pflicht war eine Komfortstufe geworden

`planungsgrundlagen/wiki/recht-norm-hindernisfreies-bauen-zh.md` führte in der Kabinen-Tabelle
«Im Gebäudeinneren, **erhöhte Anforderung** | 1.40 × 1.40 m». Das liest sich als freiwillige
Komfortstufe. Es ist eine Pflicht:

> **SIA 500:2009 Ziff. 3.7.4** — «Die Kabinentüren sind an den Schmalseiten der Aufzugskabine
> anzuordnen, vorzugsweise zur Ermöglichung der Durchfahrt an gegenüberliegenden Seiten. Übereck
> angeordnete Kabinentüren sind zulässig, wenn das Kabinenmass mindestens 1,40 m x 1,40 m beträgt.»

(Am Original-PDF nachgelesen, nicht aus dem Destillat übernommen.) Wer bei Über-Eck-Türen
1.10 × 1.40 m ansetzt, baut eine Kabine, in der der Rollstuhlfahrende **nicht wenden kann** — und
das ist nach dem Bau nicht mehr korrigierbar.

**Warum es übersehen wird** — und das gehört als Warnung in die abnehmende KB: Tabelle 4
(Ziff. 3.7.3) führt nur die Masse, die Bedingung steht **eine Ziffer später**. Der Verifikator hat
die Auflösung zudem verschoben: nicht das kommunale UGZ-Merkblatt ist der Beleg, sondern die über
§ 34 BBV I verbindliche Norm; das Merkblatt ist Vollzugshilfe.

**Mitgenommener Fassungsvorbehalt:** Ziff. 3.7.3 **und** 3.7.4 sind durch **SN 521500/C4:2019**
geändert; der C4-Wortlaut ist im Hub nicht ausgewertet (P1 in `normen/wiki/QUESTIONS.md`).

## 6. Zwei tote Rechtsgrundlagen in frisch destilliertem Bestand

**(a) Das Wasserwirtschaftsgesetz ist aufgehoben.** Das gestern Abend um 465 Zeilen ausgebaute
Destillat `normen/destillate/gvz-awel-leitfaden-hochwassergefahrenkarten-2003.md` stützt seine
gesamte Verbindlichkeitsaussage auf **§ 22 WWG**. Das WWG vom 2. Juni 1991 ist durch das
**Wassergesetz (WsG, LS 724.1)** abgelöst, in Kraft seit **1. Juni 2026** — amtlich belegt am
Volltext im Hub (`baurecht/raw/260803_amtlich_zh_wsg.md`, § 126 lit. b).

Der Verifikator ging über den Melder hinaus und lieferte die **vollständige Nachfolgekette**, weil
ein blosser «Nachfolge § 26 WsG»-Vermerk die geänderte Zuständigkeit verdeckt hätte: Gefahrenkarte
§ 26 WsG / § 31 WsV (neu ohne den Begriff «behördenverbindlich», neu mit Feststellungsanspruch der
Grundeigentümer), planungsrechtliche Festlegungen § 36 WsV, Anordnung im Bauverfahren §§ 33/34 WsG
und § 44 WsV. **Materiell geändert:** die **Gemeinde** ordnet die Objektschutzmassnahmen mit der
Baubewilligung selbst an; die Direktion nur noch bei Sonderobjekten. Der im Destillat beschriebene
Ablauf über eine «Genehmigung der Auflagen durch die Baudirektion» ist damit überholt. Vorbehalt
mit der ganzen Kette gesetzt.

**(b) Art. 20a LRV existiert nicht mehr.** Der `energie`-Lauf 122 hatte vier tote Normverweise in
den AHB-Richtlinien selbst gemeldet. Die Cross-KB-Prüfung zeigt, dass zwei davon **auch in
`planungsgrundlagen`** als geltendes Recht stehen. Art. 20 und Art. 20a LRV sind aufgehoben mit
Wirkung seit **1. Jan. 2022** (AS 2021 632, am Fedlex-Volltext SR 814.318.142.1 nachgelesen,
Zweitbeleg `baurecht/raw/260713_amtlich_ch_lrv.md`) — die Konformitätsnachweis-Pflicht ist
**entfallen**, nicht «älter geworden». **SIA 380/4:2006** ist seit 31.07.2019 archiviert; der
Nachweisweg läuft heute über SIA 387/4 / SIA 2056, im Kanton Zürich über EVEN, Formular EN-111.
Beide Stellen mit Wirktiefe-Vermerk versehen (drei Fundstellen).

**Führungs-Korrektur des Verifikators, die zählt:** Der Melder wollte `energie` zur Belegautorität
für den Erlassstand machen. Führend ist `baurecht` (LRV) bzw. `normen` (SIA/EN) — sonst hätte die
Korrektur genau die Doppelspur zementiert, die im selben Bericht als eigener Befund stand.

## 7. Eine Lücke, die keine war

`energie/wiki/gebaeudetechnik-pflichtenheft.md` meldete: «Die in RL8 erwähnte
EN-12464-1-Übersichtstabelle mit den Lux-Werten fehlt im Bestand.» Sie fehlt nicht — sie liegt
seit 19.01.2007 im AHB-Ordner und ist in `planungsgrundlagen` §14.2 mit Zahlenwerten destilliert.
Die KB erklärte eine vorhandene Zahlenbasis für nicht existent und schickte den Nutzer auf einen
kostenpflichtigen Umweg.

**Wichtiger ist, was der Verifikator davor bewahrt hat:** Die naheliegende Reaktion wäre gewesen,
die offene Frage E-122-6 («aktuelle Lux-Bemessungsgrundlage fehlt») mit Verweis auf diese Tabelle
zu schliessen. Das wäre falsch — die Tabelle gibt den Stand **EN 12464-1 vor 2011** und **SIA
2024:2006** wieder. Die geltenden Ausgaben (SN EN 12464-1:2021, SIA 2024:2015) liegen im Bestand
nicht vor. Eine korrekte Lücke wäre durch eine 19 Jahre alte Tabelle ersetzt worden. **E-122-6
bleibt offen**, der Fundort ist jetzt vermerkt.

## 8. Der widerlegte Befund

Feld Wasser, Befund 1: Das AWEL-Merkblatt Versickerung führe für Lagerflächen im
Gewässerschutzbereich Au ein falsches Vorzeichen. **Traegt nicht.** Der Verifikator hat die
Quelldatei selbst mit `pdftotext -layout` extrahiert: der Zusatz «je nach Belag» steht so im
Original, die Spaltenfolge stimmt. Hätte man dem Melder gefolgt, wäre für Lagerflächen im Au nur
noch die Muldenvariante zugelassen worden — eine Verschärfung, die das Merkblatt nicht hergibt.

Übrig blieb eine **belegte Präzisierung ohne Wertkorrektur**: die Lösungsspalte der Zeilen 2 und 3
in `planungsgrundlagen/wiki/recht-norm-regenwasser-gewaesserraum-zh.md` war unvollständig
zusammengezogen (die Wendung «ohne belebte Bodenschicht» gehört zu den Parkplätzen, nicht zu den
Lagerflächen). Nachgeführt.

## 9. Wo bewusst nichts geändert wurde

Beim Gastro-/Toiletten-Befund hat der Verifikator eine **Ausgabe September 2022** des
UGZ-Merkblatts gefunden, die im Hub fehlt, und deren Zahlenwerte gleich mitgeliefert (Trennung ab
50 innenliegenden Gästeplätzen, zwölfstufige Tabelle mit zwei Bezugsspalten).

**Diese Zahlen wurden nicht eingetragen.** Sie stammen aus einer Web-Recherche, nicht aus einer
Datei im Hub, und konnten nicht am Original verifiziert werden. Eingetragen wurde stattdessen:
der nachweislich falsche Satz «inhaltlich deckungsgleich, Publikums-Tabellen unverändert» ist
gestrichen (die Tabellen sind belegbar geändert: Stadien 150 → 100, Personalschwelle 5 → 10,
Betreuungsstätten-Tabellen 2020 ganz entfallen), beide Fassungen sind als datierte Stände
gekennzeichnet, und die Beschaffung der Ausgabe 2022 ist als Auftrag notiert. Ein
Gastronomiebetrieb mit 30 Plätzen wird nach 2012 und 2020 **gegensätzlich** bemessen — deshalb
steht dort jetzt ein Vorbehalt statt einer Zahl.

## 10. Ausgeführte Aktionen

| Datei | Aktion |
|---|---|
| `baurecht/buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md` | 3 falsche Werte im Fliesstext **und** in der Schwellenwert-Tabelle korrigiert, Korrekturvermerk mit Belegkette |
| `baurecht/wiki/QUESTIONS.md` | Frage 2 als falsch gerahmt **geschlossen**; Folgeauftrag Shot-Bereich 632–655 |
| `normen/wiki/QUESTIONS.md` | **K42-4a beantwortet**; neuer Auftrag K42-4b |
| `normen/destillate/sia-500-2009.md` | `gelesen`-Feld um Anhang E, Figuren E.1/E.2 ergänzt |
| `normen/destillate/kl-hochbau-sanitaer-katalogblaetter.md` | Sitzhöhen-Vorbehalt **aufgelöst**, 50 cm als normwidrig markiert |
| `normen/destillate/gvz-awel-leitfaden-hochwassergefahrenkarten-2003.md` | Rechtsstand-Vorbehalt WWG → WsG/WsV mit vollständiger Nachfolgekette |
| `normen/destillate/ugz-toilettenanlagen-personal-publikum-2020.md` | Ausgaben-Vorbehalt (2022 existiert), Beschaffungsauftrag |
| `planungsgrundlagen/wiki/recht-norm-hindernisfreies-bauen-zh.md` | Über-Eck-Pflicht 1.40 × 1.40 m auf SIA 500 Ziff. 3.7.4 belegt, C4:2019-Vorbehalt |
| `planungsgrundlagen/wiki/recht-norm-sanitaerraeume-planungsgrundlagen.md` | Sitzhöhe 46 cm **freigegeben**, Vorbehalt aufgelöst |
| `planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` | Art. 20a LRV + SIA 380/4 an 3 Stellen mit Wirktiefe-Vermerk |
| `planungsgrundlagen/wiki/recht-norm-raumprogramm-referenzwerke.md` | Falschzusicherung «unverändert» gestrichen, Fassungsvorbehalt Gastro/Publikum |
| `planungsgrundlagen/wiki/recht-norm-regenwasser-gewaesserraum-zh.md` | Lösungsspalte Zeilen 2/3 vervollständigt (aus dem widerlegten Befund) |

## 11. An die führenden KBs übergeben (Bring-Schulden)

- **an `normen`:** UGZ-Merkblatt Toilettenanlagen **Ausgabe September 2022** beschaffen und
  destillieren, REGISTER-Kette 2012 → 2020 → 2022 führen · **SN 521500/C4:2019** auswerten (P1,
  betrifft direkt die heute korrigierte Aufzugs-Ziffer) · K42-4b Anhang E im Übrigen.
- **an `baurecht`:** Schwellenwert-Tabellen des Shot-Bereichs 632–655 gegen die Buchseiten
  gegenlesen, bevor `established` fortgeführt wird.
- **an `energie`:** E-122-6 bleibt offen — die aktuelle Lux-Bemessungsgrundlage (SN EN
  12464-1:2021, SIA 2024:2015) fehlt im Bestand, die vorhandene AHB-Tabelle von 2007 schliesst
  sie nicht.

## 12. Für das Tagesbriefing (hub-chef)

**Keine eigene Mail** (Rule 260803, Ein-Mail-Prinzip). Ein Punkt ist meldenswert, weil er
Erzeugnisse betrifft, die JANS ausliefert:

> Die Baurechts-Wissensbasis führte falsche Geländer- und Brüstungshöhen (90/100 cm statt
> 1 m/90 cm) sowie eine erfundene Hochhaus-Höhe von 110 cm. Wer in den letzten Wochen eine
> Absturzsicherung aus der KB heraus bemessen oder beurteilt hat, sollte den Wert gegenprüfen.
> Korrigiert und belegt; die Norm selbst hat sich nie geändert.

**Kein Entscheid für Raphael offen aus diesem Lauf.** Die beiden Entscheide aus Run 23
(Grundkontext-Waage an `build_dna.py` / Verifikationstiefe der `energie`-Nachtläufe) bleiben
unverändert offen — mit der Ergänzung, dass Schritt 4 der Grundkontext-Diät um 23:11 die
`jans-dna.md` bereits aufgeteilt hat (117.2 → 85.9 kB), was Entscheid 10.1 in der Sache
weitgehend erledigt.

## 13. Methodische Notiz

Sechs von acht Auflösungen mussten korrigiert werden, obwohl sieben von acht Befunden hielten.
Das Muster ist über die Läufe hinweg stabil und in diesem Lauf besonders klar: **Melder finden
Widersprüche zuverlässig, erklären sie aber gerne als Fassungsproblem.** Zweimal (SIA 358,
Toiletten-Merkblatt) war die Fassungserklärung falsch beziehungsweise unvollständig; im
SIA-358-Fall hätte sie eine Normhistorie erfunden.

**Regel daraus, für den nächsten Lauf in den Prompt:** Bevor eine Abweichung zwischen zwei KBs
als Fassungsfrage erklärt wird, ist die **eigene Quelle** des abweichenden Destillats zu öffnen
(Buchseite, Screenshot, PDF). Ein Transkriptionsfehler sieht aus wie eine Fassungsdivergenz und
ist im Hub der häufigere der beiden Fälle.
