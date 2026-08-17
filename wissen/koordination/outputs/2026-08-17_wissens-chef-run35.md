# Wissens-Chef Run 35 — 17.08.2026 (Abendlauf, 23,9 h nach Run 34)

**Zuschnitt:** 5 Melder + 4 Refuter (9 Agenten, 1'659'131 Token, 180 Werkzeugaufrufe, 12,9 Min
Laufzeit). Die Korpus-Messung fuhr der Hauptprozess deterministisch selbst, ohne Subagenten.
**Uhr-Kontrolle bestanden:** Station 23:17:12 CEST gegen Synology-Selfcommit 23:15:06
(= HEAD `40c4b51a`); Delta rund zwei Minuten, kein Datumssprung.

**Ergebnis in einem Satz: 16 Meldungen, davon 4 harte — und von den vier harten hielt genau eine.
Die drei Widerlegungen sind der Ertrag dieses Laufs, nicht sein Ausschuss.**

---

## 1 · Der bestaetigte harte Befund: dieselbe Norm-Ausgabe, zweimal falsch, in der fuehrenden KB

`wissen/energie/wiki/u-werte-grenzwerte-ch.md` (`status: established`) ordnete die
**EnFK-Vollzugshilfe EN-102 (Dez. 2018)** an drei Stellen der Norm-Ausgabe **SIA 380/1:2009** zu.
Richtig ist **2016**. Der Artikel widersprach sich dabei selbst: Zeile 12 «SIA 380/1:2009», vier
Zeilen weiter Zeile 16 «Kt. ZH heute SIA 380/1:2016 (dieser Artikel)».

Der Refuter unternahm vier Widerlegungsversuche. Der staerkste war «es gibt zwei EN-102-Ausgaben»,
gestuetzt darauf, dass die SharePoint-Datei `EN-102-d_Waermeschutz_3801_2009_2018Dez.pdf` heisst.
Widerlegt am eigenen Destillat `enfk-en-102-waermeschutz-2018.md` Z. 4 und 129-131: die Fusszeile
jeder PDF-Seite nennt als Basis die Ausgabe 2016. **Eine EN-102 auf Basis 2009 existiert nicht** —
die auf 2009 fussende Vollzugshilfe ist das andere Dokument **EN-2 (Feb. 2013)**, das dieselbe KB
korrekt und getrennt fuehrt.

**Der Fehler hatte bereits eine Zahl verdorben.** Das fand nicht der Melder, sondern der Refuter:
Zeile 119 fuehrte fuer EN-102 Tabelle 5 die Klimareferenz **8,5 °C** — den Wert der Ausgabe 2009.
Das Destillat nennt fuer dieselbe Tabelle **+9,4 °C**, und der Artikel sagt das auf Zeile 146
selbst («Referenz-Jahresmitteltemperatur neu 9,4 °C (statt 8,5 °C)»). Der Jahrgangsfehler war also
nicht nur eine Etikettenfrage.

**Die Figur ist die eigentliche Lehre.** `planungsgrundlagen` hatte **exakt denselben Fehler** am
25.07.2026 (Wissens-Chef Run 15) in ihrem eigenen Artikel korrigiert — und dabei ausdruecklich
`energie` als fuehrend fuer diese Vollzugshilfe erklaert. **Die zuliefernde KB wurde geheilt, die
fuehrende blieb falsch.** Beide Male ist die Ursache derselbe irrefuehrende Dateiname. Das ist die
Umkehrung des Musters aus Run 34 (dort korrigierte man am Ort des Auffallens statt am Ort des
Entstehens): hier korrigierte man am Ort des Entstehens **und vergass, dass die Quelle selbst
denselben Fehler trug**.

**Ausgefuehrt (active-with-flagging):** vier Edits, je mit Korrekturvermerk im Text — Zeile 12
(Ausgabe), Zeile 119 (Zahlenwert 8,5 → 9,4 °C), Abschnitt «Datenstand/Aktualitaet», `last_updated`.
Die korrekten 2009-Nennungen (Versionsabgleich EN-2, Delta-Abschnitt 2016 gegenueber 2009,
`sources`) blieben unberuehrt und wurden danach per `grep` nachgemessen.

---

## 2 · Die drei Widerlegungen — und warum jede etwas anderes zeigt

### F1 — «SIA 416/1 als Flaechenbedarfs-Norm zitiert» · WIDERLEGT

Gemeldet war, `immobilienbewertung/wiki/flaechendefinitionen-sia.md:13` schreibe SIA 416/1 die
Rolle einer Raumprogramm-Norm zu, waehrend sie die Energiekennzahlen-Ergaenzungsnorm ist. Der
vollstaendige Satz lautet aber: «Massgebend ist **SIA 416**; fuer Flaechenbedarf/Programm
**ergaenzend** SIA 416/1 und SIA 2024.» Das ist dieselbe Rollenzuweisung, die auch das
normen-Destillat trifft. Der Refuter ergaenzte, dass **Anhang A der SIA 416/1** tatsaechlich
programmrelevant ist (Zuordnung Raum → Flaechenkategorie HNF1-HNF6/NNF/VF/FF).

**Zeigt:** Der Melder las aus «ergaenzend» eine Gleichsetzung. Und die vorgeschlagene Korrektur
haette einen `established`-Artikel auf ein Destillat mit `status: speculative` hin geaendert —
genau das, was Rule `normen-referenz` Ziff. 1b verbietet. **Keine Aktion.**

### F2 — «EBF-Schwelle 1,5 m gegen 1,0 m» · WIDERLEGT, und der wertvollste Befund des Laufs

Zwei Zahlen fuer dieselbe Groesse: `planungsgrundlagen` schrieb, Geschossflaechen mit lichter
Raumhoehe **<1,5 m** zaehlten nicht zur Energiebezugsflaeche; das normen-Destillat nennt fuer
SIA 416/1 Ziff. 3.2.2 **1,0 m**. Ich hatte beide Absaetze selbst gelesen: erkennbar dieselbe
Norm-Ziffer, identischer Katalog samt Rueckausnahme «Abstellraeume <10 m²».

Der Refuter ging an die Originale und loeste es auf. **SIA 416/1:2007 Ziff. 3.2.2 (Figur 16) nennt
1,0 m** — am eigenen 200-dpi-Rendering gelesen, Figur 16 zeigt «h < 1 m» / «h ≥ 1 m». Die 1,5 m
sind **kein Uebertragungsfehler**, sondern die wortgetreue Wiedergabe der **RFB-Richtlinie V7.0
(13.07.2007) Ziff. 3.5.2.3** der Stadt Zuerich, die auf dem **Entwurf 3/05** der SIA 416/1 fusst
und ueber den AHB-Honorarvertrag bindend ist. **Zwei je fuer sich gueltige Fassungen.**

**Was trotzdem zu tun war:** Die Fassungsangabe stand in Zeile 30, die Zahl in Zeile 78. Wer
Abschnitt 1.2 isoliert liest, haelt 1,5 m fuer den geltenden SIA-Stand — **fuer einen
Energienachweis waere das der falsche Nenner der Energiekennzahl.** Ausgefuehrt: Zwischenueberschrift
auf «SIA 416/1 **Entwurf 3/05** — RFB-Stand» praezisiert, Fassungsvorbehalt gesetzt, der beide
Zahlen mit ihrer jeweiligen Geltung nebeneinanderstellt. **Der Wert 1,5 m blieb unveraendert.**

**Zeigt:** Ein widerlegter Befund kann trotzdem eine echte Luecke freilegen — hier keine
Wahrheits-, sondern eine Ergonomieluecke. Und: eine kommunale Richtlinie, die auf einem
**Norm-Entwurf** fusst, sieht bei jeder Pruefung wie ein Uebertragungsfehler aus, solange die
Fassungsangabe nicht neben der Zahl steht.

### F4 — «HNF/GF 0,70 gegen 0,75 einseitig ungeflaggt» · WIDERLEGT

Gemeldet war, nur `grobkosten` flagge den offenen Fachentscheid, die Gegenseite fuehre 0,75
unkommentiert. Tatsaechlich ist die Flaggung beidseitig und auf der immobilienbewertung-Seite sogar
dichter: `realwert-sachwert.md:222-231` traegt eine eigene ⚠-needs-decision-Box, die den Gegenwert
woertlich nennt und auf `grobkosten/wiki/kennwerte` zurueckzeigt; `wissensluecken.md:30` fuehrt das
Ticket `T-Regelgeschoss` samt **Sperrklausel «keine der beiden Stellen still umstellen»**.

**Zeigt:** Der Melder verwechselte den **Beleg-Ort** (`flaechendefinitionen-sia:84`, wo der Wert
0,75 herkommt und bewusst unveraendert bleibt) mit dem **Vorbehalts-Ort**. Haette man seinen
Vorschlag ausgefuehrt, waere die Sperrklausel verletzt worden. **Keine Aktion.**

---

## 3 · Die Korpus-Messung — Run 34s Vorschlag ausgefuehrt und dabei geschaerft

Run 34 hatte fuer heute vorgeschlagen, die `quelle:`-Frontmatter aller KBs auf gemeinsame
**Quellordner-Praefixe** zu gruppieren. Das habe ich gemacht — und die Messung war zu grob. Sie
meldete `PL - 04 Energie` mit 14 zu 1 zugunsten von `planungsgrundlagen`; **alle 14 Treffer lagen in
`outputs/`**, also in Trainingsberichten, kein einziger im Bestand. Eine Kennzahl, die Laufberichte
mitzaehlt, misst Betriebsamkeit und nennt sie Bestand.

**Die tragfaehige Messung ist die auf Dateiebene, beschraenkt auf die dauerhafte Schicht**
(`wiki/`, `destillate/`, `buecher/`). So gemessen:

**33 identische Quell-PDF werden von zwei oder mehr KBs unabhaengig destilliert. Daraus 38
KB-uebergreifende Paare — 2 beidseitig verdrahtet, 36 nicht.**

| KB-Paar | unverdrahtete Doppel-Destillate |
|---|---|
| planungsgrundlagen ↔ normen | 18 |
| planungsgrundlagen ↔ energie | 11 |
| energie ↔ normen | 4 |
| immobilienbewertung ↔ normen | 2 |
| baurecht ↔ normen | 1 |

Vier `planungsgrundlagen`-Artikel tragen die Masse: `recht-norm-hindernisfreies-bauen-zh` (7),
`energie-heizwaermebedarf-waermeerzeugerleistung` (7), `recht-norm-sanitaerraeume-planungsgrundlagen`
(3), `recht-norm-arbeitshilfen-planungsdetails` (3).

**Zwei Vorbehalte, ohne die die Zahl luegt.** Erstens ist die Kante auf **Dokument**ebene gemessen.
Auf **KB**-Ebene sind mehrere dieser Artikel verdrahtet: `energie-heizwaermebedarf-…` nennt die KB
`energie` zweimal ausdruecklich als fuehrend, `recht-norm-sanitaerraeume-…` nennt zwei
normen-Destillate namentlich. Der scharfe Fall ist `recht-norm-arbeitshilfen-planungsdetails`: null
Verweise bei drei doppelt destillierten Quellen. Zweitens gilt weiterhin, was Run 34 selbst
angemerkt hat: **Doppelbewirtschaftung ist nicht per se falsch.** Falsch ist nur, sie nicht
aufzuschreiben.

**Bewusst nicht abgearbeitet.** 36 Kanten blind in fremde Wikis zu setzen, ohne die Paare gelesen zu
haben, waere genau der Fehler, den dieser Lauf an drei widerlegten Meldungen vorgefuehrt bekommen
hat. Vorschlag: **je Lauf einen Cluster lesen und beschriften**, beginnend mit
`recht-norm-arbeitshilfen-planungsdetails` (null Kanten) und `recht-norm-hindernisfreies-bauen-zh`
(7 Paare, ein geschlossener Fach-Cluster).

**Unabhaengig davon fand Melder B denselben Mechanismus in einem zweiten Ordner:** die vier heute
angelegten `energie`-Destillate aus `PL - 02_Recht_Norm/01_Gesetze/02_Zuerich/Energie/` haben in
`planungsgrundlagen` **null Treffer** — und fuer diesen Ordner gibt es, anders als fuer den
AHB-Ordner, noch gar keine Fuehrungszeile. Gesetzt, in beide Richtungen.

---

## 4 · Ausgefuehrte Aktionen (14 inhaltliche Dateien; dazu 8 CHANGELOG-Eintraege und dieser Bericht)

| # | Datei | Aktion | numstat |
|---|---|---|---|
| 1 | `energie/wiki/u-werte-grenzwerte-ch.md` | Norm-Ausgabe 2009 → 2016 an drei Stellen, Klimareferenz 8,5 → 9,4 °C, `last_updated` | 12/4 |
| 2 | `planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` | Fassungsvorbehalt EBF (Wert unveraendert), Zwischenueberschrift praezisiert | 10/2 |
| 3 | `planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` | Fuehrungsvermerk Ordner `…/02_Zuerich/Energie` → `energie` | 10/0 |
| 4 | `energie/wiki/energienachweis-zh.md` | Gegenkante zum selben Ordner | 7/0 |
| 5 | `immobilienbewertung/wiki/realwert-sachwert.md` | ZIW-Indexstand ueberholt, Fuehrung → `grobkosten` | 12/0 |
| 6 | `grobkosten/wiki/kennwerte.md` | leeres Feld `links:` mit den vier zitierten Artikeln befuellt | 1/1 |
| 7 | `entwurfs-referenzen/…/healthcare-neubau-zh.json` | Quellenstand 8 → 15, 25.07. → 17.08.2026 (JSON nachgeprueft) | 1/1 |
| 8 | `wettbewerbs-dna/wiki/muster/jury-argumente-healthcare.md` | Abnehmer-Vermerk | 4/0 |
| 9 | `skills/honorarberechnung-sia102/SKILL.md` | Pruefschritt «keine Phase ohne Preismechanismus» + Herkunft | 7/0 |
| 10 | `skills/kostenschaetzung/SKILL.md` | Pruefschritt «nach Beleglage differenzieren» + Herkunft | 8/0 |
| 11 | `skills/kostenkontrolle/SKILL.md` | Pruefschritt «nie nur die kumulierte Abweichung» + Herkunft | 6/0 |
| 12 | `projekt-lessons/wiki/nerves-2015-…md` | Gegenkante «Wo diese Lehre gelandet ist» | 9/0 |
| 13 | `projekt-lessons/wiki/lorrainestrasse-2011-…md` | Gegenkante | 7/0 |
| 14 | `koordination/QUERBEZUEGE.md` | 3 Matrixzeilen + 7 datierte Prueflauf-Eintraege | 184/0 |

**Schreib-Kontrolle (Rule `auto-verbesserungen` 260811):** Jede Datei nach dem Schreiben mit
`git diff --numstat` gemessen. Das Register zeigt **184/0** — reines Anhaengen, kein Bestandsverlust.
Nur drei Dateien haben ueberhaupt Zeilen ersetzt (1, 6, 7), und dort ist die Ersetzung die
beabsichtigte Korrektur. Keine Datei hat Bestand verloren.

**Bewusst NICHT ausgefuehrt:** der Zuschlags-Erfahrungswert «Faktor 2 bis 4» aus der
Nerves-Lesson wanderte **nicht** in `skills/kostenschaetzung`. Beide neuen Lessons tragen
`status: emerging` mit genau **einem** Beleg; ein einzelbelegter Faktor darf kein Kennwert in einem
Skill werden. Die qualitative Regel ist uebernommen, die Zahl bleibt im Fall. Ebenso wurden die
Tab.-2-Richtwerte in `realwert-sachwert` **nicht** auf den neuen Indexstand neu gerechnet (rund
0,3 % Verschiebung, weit innerhalb der gefuehrten Bandbreite) — das gehoert in die regulaere
Ueberarbeitung, nicht in einen Koordinationslauf.

---

## 5 · Offene Entscheide fuer Raphael

### E1 — Du-Kontakte in `rules/anrede-kontakte.md`: unveraendert offen, weiterhin sieben

Aus Run 34 unveraendert uebernommen. Sechs Personen (Sonderegger, G. Angerer, Spoerri, Stadelmann,
Ziegel, Duran) sind im Twin-Register belegt, aber nicht in der Rule; **Levi Hiltmann** steht nur im
Fliesstext der Gewichts-Klausel, **nicht als Zeile in der Kontakttabelle** — wer beim Mailschreiben
die Tabelle konsultiert (der Normalfall), faellt fuer ihn auf den Sie-Default. Weiterhin bewusst
nicht selbst eingetragen: die Rule regelt ihre Pflege selbst («Wenn der Benutzer bestaetigt …»,
«Im Zweifel nachfragen, nie raten»), und ein aus Mailverkehr abgeleitetes Du-Mapping wirkt sofort in
ausgehende Post.

### E2 — Unveraendert offen aus frueheren Laeufen

SIA 382/2 Ausgabe 2004 gegen 2005 · Praezisierung `skills/ausschreibung` Z. 109-113 (Ersatzwortlaut
liegt vor, wegen Geldfolge nicht selbst gesetzt) · Ticket `T-Regelgeschoss` (HNF/GF 0,70 gegen 0,75)
— **dieser Lauf hat bestaetigt, dass das Ticket sauber und beidseitig dokumentiert ist**, es fehlt
allein der Fachentscheid · SYN-34 aus Synergie-Lauf 10 (Ruegefrist-/Verjaehrungsangaben in
`skills/ausschreibung`).

### E3 — Neu zur Kenntnis, kein Entscheid noetig

Der Registerpunkt `projekt-lessons ↔ mahnwesen/bexio` wartet seit Run 23 auf einen **zweiten Fall**.
Die beiden heute geprueften neuen Lessons sind es **nicht** (Angebots- und Schaetzgenauigkeit, kein
Bezug zu Rechnung, Mahnstufe oder bexio). Der Punkt bleibt offen. — Ebenso bleibt das Rotationspaar
`wettbewerbs-dna ↔ entwurfs-referenzen ↔ architekten-synobsis` in Rotation: Etappe 4 hat V1, V2
Schulbau und V2 Healthcare geliefert, **V2 Wohnungsbau und V3 Verdichtung stehen aus**.

---

## 6 · Uebergabe an Run 36

1. **Einen Cluster der Korpus-Messung lesen und beschriften.** Vorschlag:
   `recht-norm-arbeitshilfen-planungsdetails` (drei Doppel-Destillate, null Verweise auf
   `wissen/normen`) — der einzige der vier Hub-Artikel ohne jede Kante.
2. **Die Messung auf `skills/` ausdehnen.** Dieser Lauf hat nur `wissen/` gemessen. Ob ein Skill
   eine Norm- oder Kennwert-Aussage materiell fortschreibt, statt auf die fuehrende KB zu
   verweisen, ist dieselbe Frage in einer anderen Schicht — und Run 34 wie Synergie-Lauf 10 haben
   dort ihre Befunde gefunden.
3. **Die Gegenprobe zu Befund 1 fahren:** Gibt es weitere `established`-Artikel, die eine
   Norm-Ausgabe aus einem **Dateinamen** statt aus dem Dokumentkopf uebernommen haben? Der Fall
   EN-102 ist der zweite dieser Art (nach `planungsgrundlagen` im Juli), und die Ursache —
   Dateinamen auf SharePoint, die eine andere Ausgabe nennen als das Dokument — ist strukturell.

---

*Bericht des Wissens-Chefs, Run 35, 17.08.2026. Fan-out und Verifikation ueber das Workflow-Tool
(Melder `model: sonnet` nach Rule `modellwahl-routine`, Refuter im Hauptmodell; Urteil, Aktionen und
Registerpflege im Hauptkontext).*
