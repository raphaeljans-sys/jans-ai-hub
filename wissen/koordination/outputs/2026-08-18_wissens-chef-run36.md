# Wissens-Chef Run 36 — 18.08.2026 (Abendlauf, 23,8 h nach Run 35)

**Zuschnitt:** 5 Melder + 3 Refuter (8 Agenten, 1'324'146 Token, 154 Werkzeugaufrufe, 10,1 Min).
Die Korpus-Messung auf der Skills-Schicht fuhr der Hauptprozess deterministisch selbst.
**Uhr-Kontrolle bestanden:** Station 23:12:03 CEST gegen Synology-Selfcommit 23:00:07
(= HEAD `0fb9b72a`); Delta konsistent mit dem 15-Min-Takt, kein Datumssprung.

**Ergebnis in einem Satz: neun Meldungen, davon drei harte — zwei bestaetigt, eine teilweise —
und der schwerste Befund liegt nicht in einer Wissensbasis, sondern in einem Skill, der
Honorarofferten schreibt.**

Alle drei Uebergabe-Auftraege aus Run 35 sind erledigt, zwei davon mit einem Negativbefund.

---

## 1 · Der Kernbefund: eine Norm-Fundstelle, die es nicht gibt, in einem Erzeugnis mit Geldfolge

`skills/honorarberechnung-sia102/SKILL.md` fuehrte eine Phasenanteils-Tabelle unter der
Ueberschrift «SIA 102:2020 — Phasenanteile Grundleistungen», mit der Quellenzeile
«Quelle: SIA 102:2020, Anhang A».

**Beides existiert nicht.** SIA 102:2020 endet mit Art. 6; ein Art. 7 und eine
Anhang-A-Prozenttabelle gibt es in dieser Ausgabe nicht. Die Ordnung enthaelt seit 2020
ueberhaupt keine baukostenabhaengige Prozent-Honorierung mehr — mutmasslich WEKO-bedingt, denn
auch die Kalkulationshilfe SIA 102-K wurde 2018 zurueckgezogen. Belegt fuenffach in
`wissen/normen` (Original S. 1-41 vollstaendig gelesen, `status: established`, Kernbefund in
vier unabhaengigen Runden gegengeprueft). «Anhang A» ist zudem in **keiner** Ausgabe der
Beleg-Ort: die Prozenttabelle steht in **SIA 102:2014, Ziff. 7.7**.

**Die Warnung lag seit dem 14.07.2026 vor — und war namentlich adressiert.** Das Destillat
`sia-102-2020.md` schreibt im Abschnitt «JANS-Praxis-Transfer» woertlich:

> Skill `honorarberechnung-sia102`: … **Achtung:** keine Baukosten-%-Tabelle in SIA 102:2020 —
> die Skill-eigene Phasenanteils-Tabelle muss gegen eine andere/aeltere Quelle verifiziert oder
> als buerointerne Konvention ausgewiesen werden.

Sie wurde nie in den Skill uebertragen. **Das ist die Figur aus Run 35, eine Schicht tiefer.**
Dort wusste die zuliefernde KB Bescheid und die fuehrende blieb falsch; hier weiss die fuehrende
KB Bescheid und der **anwendende Skill** blieb falsch. Verschaerfend: Wissens-Chef Run 35 hat
genau diese Datei am 17.08. angefasst — einen Pruefschritt aus einer projekt-lessons-Lehre
eingetragen — und die Fundstelle nicht bemerkt. **Wer einen Baustein anfasst, prueft nicht
automatisch, was er behauptet.**

### Warum es zaehlt

Der Skill formuliert Honorarofferten an Bauherrschaften. Sein Mail-Baustein trug den Satz
«Honorarofferte fuer \<Phasen\> (gestuetzt auf SIA 102:2020)» direkt ueber einer Rechnung nach
aufwandbestimmender Bausumme und Schwierigkeitsgrad — also nach genau der Methode, die diese
Ausgabe nicht kennt. Eine Offerte, die so argumentiert, behauptet eine normative Deckung, die
es nicht gibt.

### Die Zahlen selbst — nachgerechnet, aber bewusst nicht geaendert

Ich habe die Skill-Tabelle gegen die echte 2014er-Tabelle gerechnet. Die Norm verteilt 100 %
ueber die Phasen 3+4+5; der Skill zieht zusaetzlich Phase 21 Vorstudien mit 4 % hinein. Auf
gemeinsame Basis normiert (Faktor 0,96):

| Phase | SIA 102:2014 Ziff. 7.7 | normiert | Skill | Delta |
|---|---|---|---|---|
| 31 Vorprojekt | 9 % | 8,6 | 11 % | +2,4 |
| 32 Bauprojekt | 21 % | 20,2 | 21 % | +0,8 |
| 33 Bewilligungsverfahren | 2,5 % | 2,4 | 5 % | +2,6 |
| 41 Ausschreibung | 18 % | 17,3 | 18 % | +0,7 |
| 51 Ausfuehrungsprojekt | 16 % | 15,4 | 19 % | +3,6 |
| **52 Ausfuehrung** | **29 %** | **27,8** | **20 %** | **-7,8** |
| 53 Inbetriebnahme/Abschluss | 4,5 % | 4,3 | 2 % | -2,3 |

Die Basisverschiebung erklaert rund 4 Prozentpunkte, die **Ausfuehrungsphase** aber weicht um
knapp acht ab: sie ist im Skill um rund ein Viertel tiefer gewichtet als in der Norm. Bei einem
Honorar von CHF 600'000 sind das rund **CHF 47'000** auf der Bauleitungsphase.

**Trotzdem habe ich keine einzige Zahl angefasst.** Sie sind eine Eigenkonvention, kein
Abschreibfehler — Methode 3 des Skills rechnet mit 41 % = 4+11+21+5 konsistent auf ihnen auf,
und die tiefere Gewichtung von Phase 52 hat einen erkennbaren Grund (die oertliche Bauleitung
wird haeufig separat vergeben). Sie mechanisch durch die Normwerte zu ersetzen waere ein
**Geschaeftsentscheid** und genau der Fehlertyp des BKP-271.10-Falls: ersetzen, statt den
Sachbezug zu pruefen. **Falsch war das Etikett, nicht die Zahl** — dieselbe Linie wie Run 35
bei der EBF-Schwelle.

**Ausgefuehrt, rein deklaratorisch:** Ueberschrift und Quellenzeile auf «buerointerne
JANS-Konvention» berichtigt, mit der echten 2014er-Tabelle als Herleitung danebengestellt; im
Mail-Baustein «SIA 102:2020» durch «SIA 102:\<Ausgabe\>» plus Entscheidungshinweis ersetzt; an
der Kategorien-Tabelle ein Vorbehalt zu den drei belegten Abweichungen gesetzt.

---

## 2 · Der zweite bestaetigte Befund: § 47a BBV I, drei Jahre nach seiner Abloesung als geltend gefuehrt

`wissen/baurecht/buecher/band-2/17-gebaeude-und-raeume-teil2-ausruestungen.md`
(`status: established`) beschrieb § 47a BBV I als «Hoechstanteil nicht erneuerbarer Energien:
Neubau hoechstens 80 % des zulaessigen Waermebedarfs». Das ist der Rechtsstand der 6. Aufl. 2019.

Seit dem **01.09.2022** traegt § 47a die **Grenzwerttabelle des gewichteten Energiebedarfs**
(35/35/40/35/40/45/40/70/20/20/25 kWh/m² EBF), und fuer Neubauten gilt zusaetzlich das
**Fossilverbot** nach § 11 Abs. 1 EnerG. Der alte Stand ist also nicht bloss umnummeriert,
sondern **materiell erledigt**: wer die 80 % als Toleranz verwendet, rechnet mit einem
Spielraum, den es seit drei Jahren nicht mehr gibt. Verifiziert am amtlichen Volltext
(`raw/260607_amtlich_zh_bbv1.md` Z. 686-742, Nachtrag 133).

**Der Refuter fand fuenf Fundstellen statt der drei gemeldeten** — darunter die
Frontmatter-Paragraphenliste und den § 10a-EnerG-Absatz im Heizungs-Abschnitt, also genau die
Stelle, die ein Bauleitungs-Anwender beim Heizungsersatz zuerst liest. Alle fuenf markiert.

**Der Beinahe-Fehler, den die Refuter-Stufe verhindert hat:** Zwei Zeilen weiter steht in
derselben Datei eine **andere** 80-%-Zahl — der Systemnachweis nach SIA 380/1 — die unberuehrt
gueltig ist. Ein globales Suchen-und-Ersetzen ueber «80 %» haette sie mitgerissen. Rule
`auto-verbesserungen` 260811 in Reinform, und der Grund, warum der Refuter explizit sagen muss,
was **nicht** zu aendern ist.

Buchwortlaut und Seitenbelege blieben bewusst stehen (Schreibregel Seitentreue: das Destillat
dokumentiert, was das Buch sagt; korrigiert wird durch Vermerk, nicht durch Loeschen).

---

## 3 · Der dritte Befund, teilweise: richtig in der Sache, falsch im Ort

Gemeldet war, `planungsgrundlagen/wiki/recht-norm-arbeitshilfen-planungsdetails.md` fuehre die
Fluchtwegtuer-Ausnahme «≤ 30 m²/≤ 6 Personen» als geltende VKF-Regel. Der Sachkern hielt: die
Zahl ist der Stand der VKF-Generation 2003, massgebend ist heute **VKF-BRL 16-15 Ziff. 2.5.5**
mit der Ausnahme fuer Raeume mit **max. 20 Personen, ohne Flaechenkriterium**.

**Der Refuter korrigierte den Melder in zwei Punkten**, und beide haetten Schaden angerichtet:

1. **Falscher Ort.** Gemeldet war eine Tabellenzeile, die den Anwendungsbereich der Produktnorm
   SN EN 179 korrekt wiedergibt und unveraendert bleiben musste. Der Fehler stand im Fliesstext
   darunter.
2. **Regelwidriger Beleg.** Der Vorschlag haette per Backlink ein `speculative`-Destillat zur
   Belegquelle eines `established`-Artikels gemacht — untersagt durch Rule `normen-referenz`
   Ziff. 1b. Verlinkt wurde stattdessen auf `vkf-brl-16-15-flucht-rettungswege.md`.

Der Refuter fand ausserdem den schaerferen Punkt, den der Melder uebersah: schon der im
Merkblatt abgedruckte Artikel der VKF 2003 **enthaelt gar keine Zahl** — die 30 m²/6 Personen
sind eine Setzung des Merkblatts. Die Zuschreibung war also doppelt falsch. Weil dieser Beleg
selbst in einem `speculative`-Destillat steht, blieb die Korrektur bewusst beim Fassungs- und
Geltungsvorbehalt.

---

## 4 · Uebergabe-Auftrag 1: der Cluster ist gelesen und beschriftet

Run 35 hatte 33 doppelt destillierte Quell-PDF und 36 unverdrahtete KB-Paare gemessen und
`recht-norm-arbeitshilfen-planungsdetails.md` als schaerfsten Einzelfall benannt (drei
Doppel-Destillate, null Verweise). Gelesen ergab sich: **fuenf der sieben Quellen** haben ein
Gegenstueck in `normen`, zwei sind echte Alleinstellungen.

**Statt sieben Einzelvermerken steht jetzt eine Landkarte am Artikelkopf** — der Melder hatte
selbst eingewandt, Einzelvermerke seien kleinteilig, und er hatte recht. Die Tabelle nennt je
Quelle das Gegenstueck und den Fuehrenden, mit dem Merksatz: **die Doppelbewirtschaftung ist
gewollt** (beide KBs lesen dieselbe PDF mit verschiedener Absicht — `normen` die zitierfaehige
Fundstelle, `planungsgrundlagen` die baupraktische Einordnung); falsch waere nur, sie nicht
aufzuschreiben. Gegenkanten in den drei betroffenen `normen`-Destillaten gesetzt.

**Die Lesung ergab zwei inhaltliche Funde, die eine reine Verlinkungsuebung nicht gebracht
haette** — die Fluchtwegtuer-Fassung oben, und die AUVA-Ausstattungsklassen-Matrix, die in §7
als unqualifizierte Vorprojekt-Empfehlung stand («landet automatisch in Klasse 3»), obwohl
`normen` sie am 03.08. fuer die Schweiz als **nicht validiert** eingestuft hatte. Vorbehalt
nachgezogen, mit Verweis auf Suva 44066/BauAV (Schwelle 3,0 m statt der AUVA-eigenen 5 m).

**Nebenertrag zum Statusgefaelle:** Das PAV-E-01-Destillat in `normen` traegt `speculative`,
waehrend `planungsgrundlagen` dieselbe PDF vollstaendig gelesen und als `established` gefuehrt
hat — bei Zeile fuer Zeile identischen Kernwerten. Der Verifikationsvorsprung lag ungenutzt,
weil keine Seite von der anderen wusste. Im Destillat vermerkt.

---

## 5 · Die beiden Negativbefunde — und warum sie den Lauf tragen

### Uebergabe-Auftrag 3: die Dateinamen-Gegenprobe ist abgeschlossen

Gesucht wurde die Wiederholung der Run-35-Figur: ein `established`-Artikel, der eine
**Norm-Ausgabe aus einem SharePoint-Dateinamen** statt aus dem Dokumentkopf uebernimmt. Der
Melder durchsuchte systematisch alle `wissen/*/wiki/` und `wissen/*/destillate/` nach Artikeln,
deren `quelle:`/`sources:` einen Dateinamen mit eingebetteter Norm-Nummer und Jahreszahl traegt,
und prueste je Treffer Fliesstext gegen Dateiname.

**Kein weiterer Fall.** Die Figur war **kein systematisches Muster**, sondern zweimal derselbe
Quellordner. Der Punkt ist geschlossen und rotiert nicht weiter — ein Ergebnis, das genauso viel
wert ist wie ein Fund, weil es eine offene Sorge aus der Liste nimmt.

### Das neue SIA-416/1-Destillat bestaetigt die Run-35-Aufloesung

Run 35 hatte den Streit «1,0 m gegen 1,5 m» aufgeloest: SIA 416/1:2007 Ziff. 3.2.2 (Figur 16)
nennt 1,0 m, die 1,5 m stammen aus der RFB-Richtlinie auf Basis des **Entwurfs 3/05** und gelten
je fuer sich. Am 18.08. hat `normen` (Run 56) dasselbe Destillat unabhaengig erweitert und am
300-dpi-Original nachgelesen — **der Wert steht unveraendert**.

**Ein Urteil aus einem frueheren Lauf, das eine unabhaengig nachgelesene Quelle spaeter
bestaetigt, ist der beste verfuegbare Beleg dafuer, dass die Refuter-Stufe traegt.**

Kleiner Folgefehler behoben: Der Verweis zeigte auf «Z. 232-233»; nach dem Wachstum steht der
Wert auf Z. 267. Auf **Ziffer/Figur statt Zeilennummer** umgestellt. Merkposten fuer kuenftige
Kanten: nie auf Zeilennummern eines wachsenden Destillats verweisen.

---

## 6 · Uebergabe-Auftrag 2: die Skills-Schicht gemessen

Die Messung fuhr der Hauptprozess deterministisch. Von 21 Skills mit Fach-Codes tragen 13 eine
Norm-Strecke von drei oder mehr Nennungen. Gegen die Verankerung geprueft (Pfad `wissen/normen`
oder Rule `normen-referenz`):

| Skill | Norm-Nennungen | verankert? |
|---|---|---|
| brandschutz | 27 | ja |
| **honorarberechnung-sia102** | **14** | **nein — Kernbefund M1-1** |
| ausschreibung | 9 | ja |
| normen | 8 | ja |
| kostenkontrolle · offertenpruefung · unternehmerkontrolle | 6 | ja |
| werkvertrag | 5 | ja |
| grobkosten-onepager · kostenschaetzung · planungsgrundlagen · wettbewerb | 4 | siehe unten |
| energie | 3 | indirekt (eigene KB) |

**Die erste Messung war zu grob und ich habe sie verworfen.** Sie meldete sechs Skills als
«traegt Normstoff ohne Verankerung». Die Gegenprobe auf **indirekte** Kanten zeigte: `energie`,
`planungsgrundlagen`, `kostenschaetzung` und `grobkosten-onepager` verweisen auf ihre eigenen
Fach-KBs, die den Normstoff fuehren — und ihre Nennungen sind duenn (ein bis zwei Erwaehnungen,
keine materielle Fortschreibung). Uebrig bleiben zwei echte Faelle: `honorarberechnung-sia102`
(Befund M1-1) und `wettbewerb` (4× SIA 416, null KB-Pfade — leichtgewichtig, weil es nur
Flaechennachweise betrifft, aber unverankert).

Dasselbe Muster wie Run 35 bei der Korpus-Messung: **eine Kennzahl, die den Kontext nicht
mitmisst, produziert Fehlalarme.** Hier war es die indirekte Kante ueber die Fach-KB.

Die vier weiteren gezielt geprueften Fundstellen (Rueckbehalt Art. 149-150, Garantiefrist
Art. 172, Verjaehrung Art. 180, Ruegefrist) stimmen **woertlich** mit den Destillaten ueberein —
Run 33 und 34 haben dort ganze Arbeit geleistet.

---

## 7 · Ausgefuehrte Aktionen

| # | Datei | Aktion | numstat |
|---|---|---|---|
| 1 | `skills/honorarberechnung-sia102/SKILL.md` | Norm-Etikett → buerointerne Konvention (Ueberschrift, Quellenzeile, Mail-Baustein, Kategorien-Vorbehalt); **alle Zahlen unveraendert** | 41/4 |
| 2 | `wissen/baurecht/buecher/band-2/17-…-ausruestungen.md` | Fassungsstand-Vermerk § 47a BBV I + 4 Kurzmarker, `last_updated` | 32/3 |
| 3 | `wissen/planungsgrundlagen/wiki/recht-norm-arbeitshilfen-planungsdetails.md` | Doppelfuehrungs-Landkarte, VKF-Fassungsvorbehalt, AUVA-Vorbehalt | 37/2 |
| 4 | `wissen/normen/destillate/stadt-zuerich-richtlinie-absturzsicherungen-…md` | Gegenkante | 8/0 |
| 5 | `wissen/normen/destillate/pav-e-01-2008-…md` | Gegenkante + Statushinweis | 10/0 |
| 6 | `wissen/normen/destillate/auva-planungsgrundlagen-…md` | Gegenkante | 9/0 |
| 7 | `wissen/energie/destillate/energ-bbv1-…md` | Gegenkante zu `baurecht`, Fuehrung geklaert | 9/0 |
| 8 | `wissen/planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` | Zeilenverweis → Ziffer/Figur | 4/1 |
| 9 | `wissen/immobilienbewertung/wiki/flaechendefinitionen-sia.md` | Backlink `sia-416-1-2007` | 1/1 |
| 10 | `wissen/baurecht/wiki/QUESTIONS.md` | T-09 Pruefluecke §§ 47b-47n, T-10 Buch-Layer-Fassungshinweis | +25 |
| 11 | 5 × `CHANGELOG.md` (baurecht, planungsgrundlagen, normen, energie, immobilienbewertung) | Laufeintraege | +106 |
| 12 | `koordination/QUERBEZUEGE.md` | 3 Matrixzeilen + 5 Prueflauf-Eintraege | +180 |

**Schreib-Kontrolle (Rule `auto-verbesserungen` 260811):** Jede Datei nach dem Schreiben per
`git diff --numstat` gemessen — **nativ ueber ssh auf der Synology**, nie git ueber SMB. Die
elf Loeschungen sind durchgehend beabsichtigte Zeilenersetzungen (Ueberschriften, Frontmatter,
Tabellenzeilen); die Zahl stimmt exakt mit der Zahl meiner Edits ueberein. **Keine Datei hat
Bestand verloren.**

Beim Messen faellt ein Betriebsdetail auf, das kuenftige Laeufe kennen sollten: der
15-Min-Selfcommit greift **mitten in den Lauf hinein**. Der erste Messwert zeigte 18/1 statt der
erwarteten Summe, weil Commit `a41e5ad0` (23:30) einen Teil bereits eingesammelt hatte. Wer nur
`git diff` misst, misst den Rest — die vollstaendige Messung braucht den Vergleich gegen den
Stand **vor** dem Lauf (hier `f3a2f1ad`, der Run-35-Commit).

---

## 8 · Offene Entscheide fuer Raphael

### E1 — NEU und der wichtigste: Honorar-Phasenanteile und Kategorien-Skala (Geldfolge)

Die Herkunftsangabe ist korrigiert, die **Zahlen stehen unveraendert** und brauchen Deinen
Entscheid. Drei Punkte, alle im selben Skill:

1. **Phasenanteile.** Die JANS-Tabelle gewichtet Phase 52 Ausfuehrung mit 20 % gegen 29 % der
   Norm (normiert 27,8 %) — rund CHF 47'000 bei einem Honorar von CHF 600'000. Ist das die
   gewollte Konvention (weil die oertliche Bauleitung oft separat vergeben wird), oder ist die
   Tabelle einmal falsch aus der Norm uebernommen worden und soll angeglichen werden?
2. **Kategorien-Skala.** Der Skill fuehrt sechs Kategorien I-VI und nennt den Schwierigkeitsgrad
   «q»; SIA 102:2014 kennt **sieben** Kategorien I-VII, nennt den Schwierigkeitsgrad **«n»** und
   verwendet «q» fuer den Leistungsanteil in Prozent. Symbole angleichen?
3. **Healthcare-Zuordnung — der praxisnaechste Punkt.** Die Norm (Ziff. 7.6.5, S. 45-48) ordnet
   Pflegeheime/Reha/Sanatorien und Altersheime **Kat. V** zu, Arztpraxen **Kat. V**,
   Krankenhaeuser generisch **VI**, Behandlungstrakte und Universitaetskliniken **VII**. Der
   Skill fuehrt Pflegeheim bei III-IV und Praxis bei III — **zwei Stufen tiefer** als die Norm,
   und das im Kerngeschaeft.

Zusaetzlich ein Selbstwiderspruch in derselben Datei: Kernprinzip 3 sagt «Healthcare/Spital ist
Kategorie V (q=1.0-1.1)», die Tabelle 80 Zeilen spaeter «V (sehr anspruchsvoll) 1.15-1.2».

### E2 — NEU: Fassungsstand-Hinweis am Buch-Layer `baurecht` (Strukturfrage)

Das Standardwerk stammt von 2019, der Skill `baurecht` zitiert die Destillate als Top-Quelle
Stufe 0b. Inzwischen sind **vier** tote Rechtsstaende einzeln nachgetragen worden (KGSchV,
§ 42a, § 45 Abs. 3/§ 48 BBV I, jetzt § 47a). Ein Kopfvermerk in `buecher/CLAUDE.md` — «Rechtsstand
2019, jede §-Angabe vor Verwendung gegen den amtlichen Volltext in `raw/` pruefen» — waere
billiger als der fuenfte Einzelnachtrag. Bewusst nicht selbst gesetzt: das aendert die Beweislast
fuer jede Zitierung aus diesem Layer und ist eine Grundsatzentscheidung. Eingetragen als T-10.

### E3 — Unveraendert offen aus frueheren Laeufen

Du-Kontakte in `rules/anrede-kontakte.md` (weiterhin sieben; **Levi Hiltmann** steht nur im
Fliesstext der Gewichts-Klausel, nicht als Tabellenzeile — wer beim Mailschreiben die Tabelle
konsultiert, faellt fuer ihn auf den Sie-Default) · SIA 382/2 Ausgabe 2004 gegen 2005 ·
Praezisierung `skills/ausschreibung` Z. 109-113 · Ticket `T-Regelgeschoss` (HNF/GF 0,70 gegen
0,75) · SYN-34.

### E4 — Zur Kenntnis, kein Entscheid noetig

Der Registerpunkt `projekt-lessons ↔ mahnwesen/bexio` wartet weiter auf einen zweiten Fall. —
Das Rotationspaar `wettbewerbs-dna ↔ entwurfs-referenzen ↔ architekten-synobsis` bleibt offen
(V2 Wohnungsbau und V3 Verdichtung stehen aus).

---

## 9 · Uebergabe an Run 37

1. **`skills/wettbewerb` verankern** — der zweite echte Fall aus der Skills-Messung: 4× SIA 416
   ohne jede KB-Kante. Leichtgewichtig, aber offen.
2. **Den naechsten Doppel-Destillat-Cluster lesen.** Nach Run 35s Messung bleiben die drei
   uebrigen Hub-Artikel: `recht-norm-hindernisfreies-bauen-zh` (7 Paare, geschlossener
   Fach-Cluster), `energie-heizwaermebedarf-waermeerzeugerleistung` (7),
   `recht-norm-sanitaerraeume-planungsgrundlagen` (3). Der Aufwand pro Cluster lag heute bei
   etwa einem Melder — das Tempo traegt.
3. **Die Gegenprobe zu Befund 1 fahren, eine Schicht weiter.** Heute wurde geprueft, ob ein
   Skill eine Norm-**Fundstelle** erfindet. Die offene Schwesterfrage: schreibt ein Skill einen
   **Kennwert** materiell fort (CHF/m², Faktoren, Fristen), der in einer KB anders steht? Die
   Messung dafuer ist gebaut, sie muss nur auf Kennwerte statt auf Norm-Nennungen gerichtet
   werden.

---

*Bericht des Wissens-Chefs, Run 36, 18.08.2026. Fan-out und Verifikation ueber das
Workflow-Tool (Melder `model: sonnet` nach Rule `modellwahl-routine`, Refuter im Hauptmodell;
Korpus-Messung, Urteil, Aktionen und Registerpflege im Hauptkontext).*
