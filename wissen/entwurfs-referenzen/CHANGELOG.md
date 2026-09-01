# CHANGELOG — Entwurfs-Referenzen

## 2026-09-01 (Claude Code Agent, unbeaufsichtigt) — Wissenscheck Phase 1: A0 · B0 · C0 · D0 · E0 · F0 · G0

Letzter Check 25.08., 7 Tage Abstand, aktueller Stand stabil (Sachartikel established, keine Backlink-Befunde, Struktur sauber seit 23.08., Raw-Material leer). Report abgelegt: `outputs/2026-09-01_health-check.md`. Einziger offener Punkt bleibt Parameter-Set-ASCII-Frage (bewusst offen, Entscheid Raphael).

## 2026-08-25 (Nachtschicht Mac Mini, Versuchs-Slot 13:30) — Wissenscheck Phase 1: A0 B0 C0 D0 E0 F1 G0

Faellig als aeltestes Health-Check-Datum unter den KBs ohne eigenen Taktgeber (letzter Check
08-03). Bestaetigt den durch die acht Vertiefungslaeufe vom 23.08. bereits sehr gruendlich
geprueften Stand, kein neuer Befund. Der 08-03-Backlink-Befund ist strukturell geloest
(Notation-Klausel `wiki/INDEX.md` seit 23.08.). Einziger offener Punkt: die drei
Parameter-Set-JSON schreiben durchgehend ASCII (ae/oe/ue) statt echter Umlaute — vermutlich
beabsichtigt fuer maschinenlesbare Felder, aber nie als Ausnahme in `CLAUDE.md` festgehalten;
nicht selbst entschieden (Phase 2 unbeaufsichtigt nicht ausgefuehrt). Voller Report:
`outputs/2026-08-25_health-check.md`.

## 2026-08-23 (Vertiefungslauf 8 Revendo) — Querprobe zwischen den Feldern: die Sets sind in sich stimmig

Die Prüfregel aus `wissen/grobkosten` in der hier passenden Form angewendet: **die Felder eines
Sets müssen zueinander passen**, sonst beschreiben sie nicht dasselbe Gebäude.

**Healthcare — die drei Flächenfelder gehen auf.** `gf_pro_einheit_m2` × `gv_gf_faktor` gegen
`gv_pro_einheit_m3`: Bandunterkante 90 × 3.2 = 288 gegen 289 (**−0.3 %**), Bandoberkante
135 × 3.2 = 432 gegen 436 (**−0.9 %**). Beim **Median** weicht es um +3.6 % ab — das ist **kein
Fehler**, sondern erwartbar: der Median eines Verhältnisses ist nicht das Verhältnis der Mediane.
**Lesehilfe daraus:** wer die drei Felder gegeneinander rechnet, nimmt die **Bandränder**, nicht
die Mediane.

**Schule — die zwei Kostenkennwerte aus verschiedenen Projekten sind miteinander vereinbar.**
`chf_m2_gf_einzelwert` 4'250 (Wattwil) und `chf_je_einheit` 1.6–1.8 Mio. je Klassenzimmer (Hausen,
Schöntal) implizieren zusammen **376–424 m² GF je Klasse**. Gegenprobe am Wattwil-Objekt selbst
(14'100 m² GF, 720 Schüler): je nach Klassengrösse **352 / 392 / 431 / 470 m²** (bei 18/20/22/24
Schülern). Das implizierte Fenster liegt **mitten darin**. ⚠ **Kein Beleg, eine Plausibilitätsprobe**
— die Klassengrösse in Wattwil ist nicht bekannt und nur als Bandbreite unterstellt, und ein
Kantonsschulbau hat einen anderen Flächenschlüssel als eine Primarschule. Die Probe hätte einen
groben Widerspruch aufgedeckt (etwa 150 oder 900 m² je Klasse); den gibt es nicht.

**Wohnen — abgeleitete Kosten je Wohnung als Lesehilfe:** 332'500–409'500 CHF je
4.5-Zimmer-Wohnung auf Preisstand 2018/2019, indexiert **388'550–483'000 CHF**. ⚠ BKP 1–9 inkl.
MwSt., exkl. Parkierung, aus einem **gemeinnützigen** Verfahren — eine Erstellungskosten-, keine
Marktpreisgrösse und **nicht** mit Eigentumswohnungspreisen vergleichbar. **Nicht als Feld
eingetragen**, weil es reine Multiplikation zweier bereits geführter Felder ist.

**Ergebnis: kein Widerspruch zwischen den Feldern der drei Sets.** Dieselbe Probe hat bei den
Projektbelegen in `wissen/grobkosten` einen echten Fehler gefunden — hier hält alles.

Geänderte Dateien: `wiki/QUESTIONS.md`.

## 2026-08-23 (Vertiefungslauf 7 Revendo) — Rückwirkung eines Quellenbefunds auf den eigenen Flächenblock

In `wissen/immobilienbewertung` hat ein Recompute der Quelltabelle (JANS-8-Objekt-Referenzvergleich,
alle 24 Zellen) eine **dritte** inkonsistente Zelle zutage gefördert, die D10 bisher nicht kannte:
**Lanzeln ST-ZH, Spalte CHF/Pflegezimmer** weicht um **12.6 %** ab, während CHF/m³ und CHF/m² GF
derselben Zeile exakt reproduzieren. **BKP 2, GF und GV sind damit bestätigt — unsicher ist die
Platzzahl 123** (zurückgerechnet entspräche der Tabellenwert 107.6 Plätzen).

**Auswirkung auf den am selben Tag gefüllten Flächenblock, geprüft statt angenommen:**

| Feld | betroffen? | Begründung |
|---|---|---|
| `gf_pro_einheit_m2` [90, 135] | **nein** | die untere Grenze trägt **Herosé**, dessen Platzzahl die eigene CHF/PZ-Spalte bestätigt |
| `gf_pro_einheit_m2_median` 111 | **nein** | Median verschiebt sich in beiden Fällen nicht |
| `gv_pro_einheit_m3` [289, 436] | **ja** | die untere Grenze **289 stammt von Lanzeln**; mit 107.6 Plätzen läge sie bei 330, der Bandrand bei **314** (dann Herosé) |
| `gv_pro_einheit_m3_median` 343 | **nein** | unverändert in beiden Fällen |
| `gv_gf_faktor` 3.2 | **nein** | Verhältnis GV/GF, von der Platzzahl unabhängig |

**Das Band ist NICHT geändert** — welcher Wert stimmt, ist ohne das Original-Blatt nicht
entscheidbar. Stattdessen ist die **untere Grenze als unsicher gekennzeichnet**, mit der
Empfehlung, im Zweifel mit dem Median oder mit 314 zu rechnen. Der bestehende Hinweistext ist
durch Anhängen erweitert, nichts überschrieben; `validate.py --all`: OK.

**Das ist der Fall, für den die Vorbehalte gedacht waren.** Der Flächenblock wurde heute Morgen
mit vier ausdrücklichen Vorbehalten angelegt, darunter «zwei Zeilen quellenintern inkonsistent» —
als heute Abend eine dritte auftauchte, liess sich die Auswirkung in Minuten prüfen, weil
dokumentiert war, welche Zeile welchen Bandrand trägt. Ohne diese Notiz hätte man das Band neu
herleiten müssen.

Geänderte Dateien: `wiki/parameter-sets/healthcare-neubau-zh.json` (nur `flaechen.hinweis`).

## 2026-08-23 (Vertiefungslauf 6 Revendo) — Nachkontrolle: eigener Platzhalter als Fehlalarm entfernt

Nachkontrolle des Konsistenzlaufs, nachdem der NAS-Klon nachgezogen hatte: der Befund
`[[architekten-synobsis]]` ist **weg**, die Umstellung auf Pfadnotation hat gegriffen.

**Ein Rest war selbstverursacht.** Die Erklärnotiz, die ich zur Umstellung geschrieben hatte,
enthielt die Wiki-Link-Syntax als **Beispiel in doppelten eckigen Klammern** — und das Werkzeug
liest jedes solche Vorkommen als Link, auch ein zitiertes. Der eigene Erklärtext erzeugte also
genau den Fehlalarm, den er erklären sollte. Die Beispiele sind jetzt ausgeschrieben
(«in doppelten eckigen Klammern», «Wiki-Link»), `wiki/INDEX.md` enthält **kein einziges** Vorkommen
der Syntax mehr.

**Kleine Lehre, die über den Fall hinausgeht:** in einer Datei, die von einem Link-Prüfer gelesen
wird, darf Link-Syntax nicht als Beispiel zitiert werden — der Prüfer unterscheidet nicht zwischen
Verwendung und Erwähnung. Dasselbe gilt für jede andere maschinell ausgewertete Auszeichnung.

Damit melden alle vier heute bearbeiteten Wissensbasen **keine echten Struktur-Befunde** mehr.

Geänderte Dateien: `wiki/INDEX.md` (zwei Formulierungen).

## 2026-08-23 (Vertiefungslauf 5 Revendo) — Scope-Warnung beim Wohnen-Kostenband

Beim Versuch, das indexierte CHF/m²-HNF-Band des Wohnen-Sets gegen die Kennwerte der
Nachbar-KBs zu spiegeln, ist aufgefallen, dass der Vergleich **gar nicht zulässig ist** — und
dass das nirgends stand.

**Der Befund.** Das Band **3'500–3'900 CHF/m² HNF** lautet auf **BKP 1–9 inkl. MwSt., exkl.
Parkierung** (Koch-Areal Zürich 2018/2019). Die Kostenkennwerte von `wissen/grobkosten` und der
JANS-Wohn-Kennwert in `wissen/immobilienbewertung` lauten dagegen auf **BKP 1–5**. Der Unterschied
sind BKP 3 (Betriebseinrichtungen), 6–8 (Reserve) und vor allem **9 (Ausstattung)**.

**Wie gross der Unterschied ist, ist in diesem Hub nicht belegt.** Die einzige aktuelle amtliche
BKP-Struktur — die ZIW-Revision 2025 aus 54 realen Zürcher MFH-Kostenvoranschlägen — deckt nur
**BKP 1, 2, 4 und 5** ab und schweigt zu 3 und 9. Ein Zahlenvergleich über die Scope-Grenze hinweg
ist deshalb **nicht zulässig, auch nicht überschlägig**: er erzeugte eine Differenz, die in
Wahrheit eine **Definitionsdifferenz** ist.

**Warnung im Feld `chf_m2_hnf_bkp_scope` verankert**, damit sie mitwandert, wenn das Band zitiert
wird. Es ist dieselbe Falle wie beim BKP-Scope der Neuwert-Richtwerte
(`immobilienbewertung` D13 / `grobkosten` Frage 1) und bei der 1-%-Regel von Art. 32 Abs. 2 LSV —
**dreimal am selben Tag in drei verschiedenen Zusammenhängen aufgetaucht.** Das ist kein Zufall,
sondern ein Muster: **BKP-Zahlen ohne Scope-Angabe sind im Hub die häufigste stille Fehlerquelle.**

Geänderte Dateien: `wiki/parameter-sets/wohnen-mfh-urban.json` (nur das Feld
`kosten_referenz.chf_m2_hnf_bkp_scope`, durch Anhängen; `validate.py --all`: OK).

## 2026-08-23 (Vertiefungslauf 4 Revendo) — Konsistenzlauf: der einzige echte Befund behoben

Abschluss-Konsistenzlauf mit `wissen/tools/wiki-konsistenz.sh`. Einziger Befund dieser KB:
**`[[architekten-synobsis]]` löst nirgends auf** — gemeldet, weil jene KB **keinen `wiki/`-Ordner**
führt (sie ist als `catalog/` plus Abfragewerkzeug gebaut), das Werkzeug seine Ziele aber in
`wiki/` und `destillate/` sucht. Der Punkt stand seit den Health-Checks vom 01.08. und 03.08.2026
und war dort jeweils nur beschrieben, nicht behoben.

**Behoben, nicht wegdefiniert:** in `wiki/INDEX.md` (4 Vorkommen) und in den vier
Domänen-Sub-Indizes (`architekten/`, `entwurfsprinzipien/`, `materialien/`, `typologien/`, je 1)
auf **Pfadnotation** `wissen/architekten-synobsis` umgestellt. Das ist nicht nur
werkzeugfreundlich, sondern **sachlich richtiger**: der Verweis geht auf eine **KB**, nicht auf
einen Artikel — die Wiki-Link-Syntax ist dafür der falsche Ausdruck. Dieselbe Pfadnotation nutzt
`wissen/grobkosten` aus verwandtem Grund. Eine kurze Notationsnotiz im `wiki/INDEX.md` hält den
Grund fest, damit die Umstellung nicht bei nächster Gelegenheit zurückgedreht wird.

**In `raw/_INGESTED.md` steht dasselbe Muster und bleibt unangetastet** — `raw/` ist lesend.

**Eigener Fehler, transparent:** der erste Korrekturversuch hat die Ersetzung zwar berechnet, aber
nur die Erklärnotiz angehängt und den ersetzten Text nie zurückgeschrieben. Beim Nachmessen
aufgefallen und im zweiten Anlauf korrekt ausgeführt.

**Und ein Werkzeug-Befund**, der die Verwirrung erst erklärt: `wiki-konsistenz.sh` misst die
**NAS-Kopie**, nicht das lokale Repo — voll dokumentiert in
`wissen/planungsgrundlagen/wiki/QUESTIONS.md` (vierte Werkzeug-Falle) und im dortigen CHANGELOG.

Geänderte Dateien: `wiki/INDEX.md`, `wiki/architekten/INDEX.md`,
`wiki/entwurfsprinzipien/INDEX.md`, `wiki/materialien/INDEX.md`, `wiki/typologien/INDEX.md`.

## 2026-08-23 (Vertiefungslauf 3 Revendo) — Schul-Teuerungsanker geschlossen (Selbstkorrektur)

- **Selbstkorrektur zu Vertiefungslauf 1:** der Teuerungsanker des Schul-Sets war offen gelassen
  worden mit der Begründung, es liege «keine bis 2021 zurückreichende verkettete Reihe» des
  BFS-Baupreisindex vor. **Das war falsch** — die Reihe liegt als Publikationstabelle im
  BFS-Datenkatalog (XLSX über opendata.swiss, Datenstand 21.08.2026, Basis Oktober 2020 = 100,
  Halbjahresschritte ab 1998, je Grossregion und Objekttyp), nicht in der PX-Web-Schnittstelle,
  wo zuerst gesucht wurde.
- **Anker gesetzt:** Grossregion **Ostschweiz** (Kantonsschule Wattwil liegt im Kanton St. Gallen),
  Bauwerksart **«Neubau»**: 01.04.2021 = 101.6 → 01.04.2026 = 118.2, Faktor **1.1634 (+16.3 %)**;
  Bandbreite über die plausiblen Nachbar-Bauwerksarten Hochbau 1.1509 bis Neubau MFH 1.1668.
- **Indexiert:** 4'250 → rund **4'940 CHF/m² GF** auf 01.04.2026 (Band 4'890–4'960), im Block
  `indexiert` als **gekennzeichnete Ableitung**. Der **Rohwert 4'250 bleibt unverändert** auf
  Preisstand 2021, und er bleibt ein **abgeleiteter Einzelwert aus einem Kostenziel** — die
  Indexierung macht ihn **aktueller, nicht belastbarer**.
- **Lehre über den Fall hinaus, in `wiki/QUESTIONS.md` festgehalten:** zweimal am selben Tag wurde
  ein «nicht beschaffbar» widerlegt (hier der Anker, in `wissen/grobkosten` die verkettete Reihe
  für den Holzbau-Zuschlag), beide Male wegen des **Zugriffswegs**, nicht der Datenlage. Ein
  Negativbefund über eine amtliche Reihe gilt erst, wenn **opendata.swiss und der
  Publikationskatalog** der Stelle geprüft sind — eine leere API ist kein Beleg für fehlende Daten.
- Am Set sind gegenüber HEAD ausschliesslich `preisstand.teuerungsanker` und `preisstand.hinweis`
  verändert (Hinweis durch Anhängen, Originaltext erhalten) plus der neue Block `indexiert`.
  `validate.py --all`: OK.

Geänderte Dateien: `wiki/parameter-sets/schule-volksschule-ch.json`, `wiki/QUESTIONS.md`.

## 2026-08-23 (Vertiefungslauf 2 Revendo) — Healthcare-Flächenblock gefüllt; die Geometrie-Brücke ist doch belegbar

Zweite Runde, angesetzt an der grössten verbliebenen Lücke: der **`flaechen`-Block des
Healthcare-Sets war vollständig leer** — er enthielt nur einen Hinweis, warum nichts drinsteht.

- **Drei Flächen-Kennwerte aus dem JANS-8-Objekt-Referenzvergleich abgeleitet** (führender Artikel
  `wissen/immobilienbewertung/wiki/realwert-sachwert.md`, Run 14, established — acht reale
  CH-Alters-/Pflegeheime 2011–2025 mit GF, GV nach SIA 416 und Bettzahl in derselben Tabelle):
  **GF je Pflegeplatz 90–135 m²** (Median 111) · **GV je Pflegeplatz 289–436 m³** (Median 343) ·
  **GV/GF-Faktor 3.06–3.48** (Median **3.2**). Nichts geschätzt, alles gerechnet.
- **Die B6-Sperre bleibt unberührt.** Der bisherige Hinweis ist **erhalten**: der Spital-Korridor
  95–100 m²/Bett bleibt **nicht übernommen** (subtypfremd), ein **NF/GF-Faktor für Pflegeheime
  bleibt unbelegt**. Gefüllt sind ausschliesslich Grössen aus einem pflegeheim-eigenen Bestand.
- **Vier Vorbehalte im Set mitgeschrieben:** Ist-Werte statt Sollwerte · das **Zentrum St. Anna LU
  ist ausgeschlossen** (207 m²/PZ, 715 m³/PZ, konsistent mit seinem CHF/PZ-Ausreisser 780'000),
  beim **GV/GF-Faktor aber mit 3.45 unauffällig** — der Zentrumscharakter zeigt sich in der Fläche
  je Platz, nicht in der Höhe · **zwei quellenintern inkonsistente Zeilen** (Averecura, Vella, D10),
  beim Nachrechnen bestätigt (BKP 2/GV ergibt **1'285 statt 1'420** bzw. **1'021 statt 845**, die
  übrigen **sechs reproduzieren exakt**); **ohne sie bleiben GF/PZ-Band und GV/GF-Faktor
  unverändert**, GV/PZ verengt sich auf 289–412 — der Kernwert ist also gegen den bekannten
  Quellenfehler robust · der **GV/GF-Faktor ist eine mittlere rechnerische Höhe** inkl. Unter- und
  Dachgeschossanteilen, **nicht** die konstruktive Geschosshöhe.
- **Fortschritt gegenüber dem eigenen Befund vom selben Tag.** Vertiefungslauf 1 hielt fest, die
  Geometriefelder liessen sich «aus den Wettbewerbs-Quellen nicht seriös füllen». Das stimmt — hier
  kommt die Quelle aus einer anderen Richtung: nicht aus Juryberichten, sondern aus dem **eigenen
  JANS-Referenzblatt**. Der **GV/GF-Faktor ist die gesuchte Brücke zu `volumen_generator.py`**, denn
  er ist die Grösse, mit der aus einer Geschossfläche ein Volumen wird. Bewusst **nicht** als
  `gebaeude.geschosshoehe_m` eingetragen, sondern als neues Feld **`flaechen.gv_gf_faktor`** — das
  Schema-Feld meint die konstruktive Geschosshöhe; sie gleichzusetzen wäre genau der stille Fehler,
  den diese KB vermeiden soll.
- **Die Entscheidfrage verschiebt sich damit:** nicht mehr «lässt sich Geometrie überhaupt
  belegen», sondern **ob `volumen_generator.py` einen GV/GF-Faktor entgegennehmen soll statt einer
  Geschosshöhe**. Schnittstellenfrage an Raphael, keine Recherche. Für Schule und Wohnen fehlt ein
  vergleichbares Referenzblatt mit GF und GV derselben Objekte — dort bleibt die Lücke.
- **Healthcare-Kostenbänder jetzt maschinenlesbar** statt nur in Prosa: `chf_m3_gv_band`
  **[826, 1420]** (spiegelt den führenden Artikel), **`chf_m3_gv_band_reproduzierbar`
  [826, 1285]** (neu deklariertes Feld, der beim Recompute bestätigte Teil), `chf_m3_gv_median`
  1100, `chf_je_einheit` Pflegeplatz **272'780–530'000 CHF** (BKP 2; Zentrum St. Anna mit 780'000
  bewusst ausserhalb), `bkp_scope`. **Welcher Band gilt, ist Entscheid D10 bei Raphael** — hier
  nicht vorweggenommen, sondern **beides sichtbar gemacht**, statt einen Bandrand stillschweigend
  mitwandern zu lassen.
- **Vier neue Felddeklarationen im Schema** (`flaechen.gf_pro_einheit_m2`, `.gv_pro_einheit_m3`,
  `.gv_gf_faktor`, `kosten_referenz.chf_m3_gv_band_reproduzierbar`), semantisch als **rein additiv**
  verifiziert. Alle drei Sets nach jedem Schritt `validate.py --all`: **OK**. Am Healthcare-Set
  sind gegenüber HEAD ausschliesslich **zwei `hinweis`-Felder verändert**, beide durch **Anhängen**
  — die Originaltexte stehen vollständig darin.

Geänderte Dateien: `parameter-schema/entwurfs-parameter.schema.json`,
`wiki/parameter-sets/healthcare-neubau-zh.json`, `wiki/QUESTIONS.md`.

## 2026-08-23 (Vertiefungslauf Revendo) — Schema-Deckungs-Audit, Preisstand maschinenlesbar, Kostenblock des Schul-Sets gefüllt

Fortsetzung desselben Tages, Auftrag Raphael: Parameter-Sets prüfen und ausbauen. Erst gemessen,
dann ergänzt; jeder Schreibvorgang mit `validate.py --all` gegengelesen und **semantisch** gegen
die Vorversion auf rein additiv geprüft (JSON-Baumvergleich — bei JSON verschiebt schon eine
Reformatierung den Zeilen-Diff, ein `--numstat` allein trägt hier nicht).

- **Schema-Deckungs-Audit:** feldweiser Abgleich Schema gegen alle drei Sets ergab **sieben
  benutzte, aber nicht deklarierte Felder** (`scope_hinweis`, `flaechen.hinweis`,
  `kosten_referenz.chf_m2_hnf_band`, `.chf_m2_hnf_bkp_scope`, `.hinweis`, `.quelle_kb_m2_nf`,
  `.quelle_kb_nicht_anwendbar`). Sie validierten nur, weil `additionalProperties` offen steht —
  ein konsumierendes Werkzeug hatte für sie keinen Vertrag, obwohl sie tragend sind
  (`quelle_kb_nicht_anwendbar` verhindert im Healthcare-Set eine falsche Kostenquelle). Alle
  sieben nachträglich deklariert. **`additionalProperties` bleibt bewusst offen** — ein Umstellen
  auf `false` würde künftige Belegfelder blockieren.
- **Konstruktionsbefund:** `kosten_referenz.chf_m3_gv_band` ist deklariert und in **keinem** Set
  gesetzt — kein Jurybericht der Feeder-Quelle nennt ein Gebäudevolumen (dreimal unabhängig
  belegt: Healthcare, Schulbau, Wohnungsbau). Das faktisch benutzte `chf_m2_hnf_band` war dagegen
  undeklariert. Das Schema war am CHF/m³-Denken von `volumen_generator.py` gebaut, die
  Quellenlage liefert m²- und Einheitswerte. Neu deklariert und in Gebrauch:
  **`chf_m2_gf_einzelwert`** (getrennt vom Band, damit ein Einzelfall nicht als Band gelesen wird)
  und **`chf_je_einheit`**. `chf_m3_gv_band` bleibt deklariert und leer, führend ist
  `wissen/grobkosten/`.
- **★ Preisstand-Lücke geschlossen.** Alle Kostenangaben trugen ihren Preisstand bisher **nur in
  Prosa** — für eine KB, deren Zweck maschinenlesbare Parameter sind, ein echter Defekt. Neu:
  **`kosten_referenz.preisstand`** (`jahr`, optional `stichtag`, `teuerungsanker`, `hinweis`,
  optional `indexiert`), in allen drei Sets befüllt:
  - `wohnen-mfh-urban`: **2018/2019** (Koch-Areal Zürich), Anker **ZIW** (regional passend),
    Stützstellen 1036.8 / 1046.3 / 1210.4 (Basis 1939 = 100), 01.04.2026 ≈ 1221.3 verkettet über
    die publizierte Jahresteuerung +0.9 % → Faktor **1.167–1.178**, indexiert rund
    **4'090–4'600 CHF/m² HNF**. Das **Rohband 3'500–3'900 bleibt unverändert stehen**; der
    indexierte Wert steht separat im Block `indexiert` als **gekennzeichnete Ableitung**.
  - `healthcare-neubau-zh`: **2011–2025, gemischt**, **kein pauschaler Anker** — das Band spannt
    über 14 Jahre und der führende Artikel führt die Objekte bereits teuerungsbereinigt
    (Index-Stand ~115); wer das übersieht, indexiert doppelt. Genau das steht jetzt im Feld.
  - `schule-volksschule-ch`: **2021** (m²-Wert) bzw. 2012–2026 (Einheitswerte), **Anker bewusst
    offen** — St. Galler Objekt, der verifizierte Anker ist der Zürcher ZIW (regional unpassend),
    und für den BFS-Baupreisindex liegt keine bis 2021 zurückreichende verkettete Reihe vor.
    Indexierung wäre geraten und unterbleibt.
- **Kostenblock des Schul-Sets war leer und ist gefüllt.** `schule-volksschule-ch.json` trug nur
  `bkp_schwerpunkte` und `quelle_kb` — obwohl die im eigenen `quellen`-Feld zitierte Quelle
  `wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` (established, refuter-bestätigt)
  Werte führt. Nachgetragen: **`chf_m2_gf_einzelwert: 4250`** (Kantonsschule Wattwil, 60 Mio.
  Anlagekosten inkl. Umgebung exkl. MWST / 14'100 m² GF — abgeleiteter **Einzelwert aus einem
  Kostenziel**, kein Ist-Wert, kein Band) und **`chf_je_einheit`** Klassenzimmer
  **1.6–1.8 Mio. CHF** (Regelschul-Neubau, **Gesamtanlage** je Klassenzimmer). Preisstand-Nebenbefund:
  der Bericht des Preisgerichts datiert **29.04.2021** — der Ordnername «2025» im Referenzarchiv
  täuscht ein jüngeres Datum vor.
- **Verdrahtungs-Befund präzisiert: die Brücke zum Generator ist BEIDSEITIG leer.** Der Eintrag
  unten hält fest, `machbarkeit` referenziere die Sets mit 0 Treffern. Die Feldmessung zeigt:
  **`geschosshoehe_m` ist in keinem einzigen Set gesetzt** — genau das Feld, das
  `volumen_generator.py` lesen könnte. `gebaeude` enthält bei Healthcare und Wohnen
  **ausschliesslich** `orientierung_regeln`, beim Schul-Set zusätzlich `geschosse_min/max` und
  `erschliessung`. Selbst wenn `machbarkeit` die Sets morgen läse, käme in zwei von drei Fällen
  kein Geometriewert an.
- **Bewusst nicht gefüllt — Belegdisziplin:** (a) Schule: belegt ist die **lichte Raumhöhe
  Klassenzimmer ≥ 3.00 m** (2206 Schöntal), neu als **`gebaeude.lichte_raumhoehe_m`** eingetragen
  mit ausdrücklichem Vermerk, dass daraus **kein** `geschosshoehe_m` abgeleitet wird (dazwischen
  liegen Decken- und Bodenaufbau; keine Quelle nennt eine Schul-Geschosshöhe). (b) Healthcare:
  `kennwerte-healthcare.md` führt breit belegte Raster (7.5/8.0/8.1/8.4/10.8 m) und Geschosshöhen
  (3.60 m Soll) — **alle aus Akutspital und Psychiatrie**; dieses Set ist auf Pflegeheim/
  Alterszentrum begrenzt und B6 verbietet die Quer-Übertragung zwischen Subtypen. Nichts
  übernommen. (c) Wohnen: ein einziger Rasterwert im Korpus (3.20 m Holzbau, «kein
  Vergleichswert») — taugt nicht als typologisches `fassaden_raster_m`.
- **Entscheidfrage an Raphael:** die Geometriefelder sind aus Wettbewerbs-Quellen nicht seriös
  füllbar (Juryberichte belegen Regeln und Kosten, nicht Regelgeometrie). Entweder (a) eigene
  JANS-Projektgeometrie als Quelle erschliessen, oder (b) entscheiden, dass die Sets bewusst keine
  Geometrie liefern — dann gehörte `geschosshoehe_m` aus dem Schema gestrichen statt leer
  mitgeführt. Beides Entscheid, keine Recherche.
- **`wissen/wettbewerbs-dna` nur gelesen, nicht verändert** (Stationsteilung 23.08.2026: die KB
  wird parallel auf einer anderen Station bearbeitet).
- Validierung nach jedem Schritt: alle drei Sets **OK**. Ein Zwischenstand mit `stichtag: null`
  wurde vom Validator korrekt abgewiesen und auf «Feld weglassen» korrigiert — eine Lücke wird
  nicht als `null` geschrieben.

Geänderte Dateien: `parameter-schema/entwurfs-parameter.schema.json` (12 neue Felddeklarationen,
semantisch als rein additiv verifiziert), alle drei Sets in `wiki/parameter-sets/`,
`wiki/parameter-sets/INDEX.md`, `wiki/QUESTIONS.md`. Report:
`outputs/2026-08-23_vertiefungslauf-parameter-sets.md`.

## 2026-08-23 — Die sechs offenen Fragen (Parameter-Sets + Integration) beantwortet; Schema um `synobsis_slug` vertieft

- **`wiki/QUESTIONS.md`, Abschnitte «Parameter-Sets» und «Integration» (6 Positionen):** alle
  sechs gegen den tatsächlichen Code-/KB-Bestand geprüft und beantwortet, nicht geraten:
  1. Rendering-Vorgaben (Kamerawinkel/Lichtstimmung) gehören NICHT ins Parameter-Set — Beleg
     `skills/volumenstudie/tools/c4d_szene.py` (Kamera/Licht werden pro Lauf aus der Geometrie
     berechnet bzw. im Code gesetzt) und `axo_render.py` (`--azimut`/`--elevation` sind bereits
     eigene, situative CLI-Flags, nicht typologiegebunden).
  2. Fassaden-Granularität ist bereits korrekt gelöst — Beleg: `healthcare-neubau-zh.json`
     mischt Material und belegte Detaillierungsregeln (Fensteranteil-Schwellen), das Schema
     schränkt `fassade` nicht auf reine Materialnamen ein; die Belegpflicht selbst reguliert
     die Granularität.
  3. Kein Sanierungs-/Umbau-Set vorgezogen — Beleg: die Feeder-Quelle `wissen/wettbewerbs-dna`
     enthält 0 Treffer für „sanierung"/„umbau" (ausschliesslich Neubau-Wettbewerbe); Sanierung
     wird bereits von `kostenschaetzung` (Reduktionsfaktoren) und `ankaufspruefung` (CapEx
     Bestand) geführt, die kein geometrisches Parzelle→Volumen-Set brauchen.
  4. Kein `--parameter-set`-Flag in `volumen_generator.py` — Beleg: das Skript kennt nur vier
     rein geometrische Variantenschlüssel und deckt laut Docstring bewusst keine Fachlogik ab;
     eigentlicher Befund ist, dass `machbarkeit`/`machbarkeit-studio` diese Parameter-Sets
     heute mit 0 Treffern gar nicht referenzieren — die Verdrahtung fehlt im aufrufenden Skill,
     nicht im Generator.
  5. Rückkopplung läuft über Output-Compounding (Rule `wissens-ruecklauf.md` +
     `wissens-bibliothekar.md` + diese `CLAUDE.md` Abschnitt «Compounding-Logik»), bereits
     mehrfach an dieser KB durch `wissens-chef`-Läufe vorgemacht (CHANGELOG Run 15/16/27/35);
     offene Lücke ist nicht der Mechanismus, sondern dass die Rückkopplung mangels
     Konsument (Punkt 4) noch nie aus einem echten Machbarkeits-Lauf zurückgeflossen ist.
  6. Kein eigener Scheduled Task nötig — zwei bestehende generische Tasks
     (`wettbewerbs-dna-training`, wöchentlich; `wissens-chef`, täglich) bedienen diese KB
     bereits de facto; sie taucht in `logbuch/rollen/rollen-map.tsv` konsequent nicht als
     eigener Registereintrag auf.
- **`parameter-schema/entwurfs-parameter.schema.json`:** optionales Feld `synobsis_slug` in
  `referenz_projekte.items.properties` ergänzt — nachgetragener Bau-Punkt aus Wissens-Chef Run
  15 (25.07.2026, CHANGELOG-Eintrag unten), bis heute offen geblieben. Rein additiv, keine
  bestehenden Felder verändert.
- **`wiki/parameter-sets/healthcare-neubau-zh.json`:** `synobsis_slug: "Boltshauser_Architekten"`
  beim Referenzprojekt Alterszentrum Hottingen ergänzt — gegen `wissen/architekten-synobsis/
  catalog/Boltshauser_Architekten.json` (Feld `slug`) verifiziert, eindeutiger Treffer.
  **Bewusst NICHT ergänzt:** `wohnen-mfh-urban.json` (Kandalama/Brisgi-Areal, „Müller Sigrist
  Architekten / Meier Leder Architekten" — im Katalog nur `Mueller_Sigrist.json` vorhanden, für
  Meier Leder kein Eintrag; ein Teil-Slug hätte einen vollständigeren Treffer vorgetäuscht) und
  „Harder Spreyermann Architekten" (Pinarello/Seebahn-Höfe, kein Katalog-Treffer).
- Beide Parameter-Sets nach den Edits mit `validate.py --all` geprüft: alle drei weiterhin
  schema-valide (OK). `git diff --numstat` nach jedem Schreibvorgang geprüft: rein additive
  Zeilen, keine Löschung fremden Inhalts.
- Keine neue Feldrecherche, keine geschätzten Kennwerte — reine Klärung/Dokumentation
  bestehender Architektur-Entscheide plus eine verifizierte Katalog-Verlinkung.

## 2026-08-18 (Nachtschicht Mac Mini) — Erster Artikel in `entwurfsprinzipien/`: Donald Judd, Trennung Kunst/Funktion

- **Neuer Artikel `wiki/entwurfsprinzipien/trennung-kunst-funktion-judd.md`:** kompiliert aus
  Donald Judds Essay «It's Hard to Find a Good Lamp» (1993, © Judd Foundation), vollstaendig
  gelesen an der Primaerquelle (`/Volumes/daten/03 Bauprodukte_BKP/233 Leuchten und Lampen/
  6 Pendellampe/Judd/`). Kernpunkte: Kunst und Gebrauchsgegenstand sind kategorial verschieden,
  Proportion als «visible reasonableness» statt Dekor, Kritik an Stil-Imitation und an
  Distributions-Oligopolen. Urheberrecht beachtet — nur kurze Zitate mit Quellenangabe, kein
  Volltext-Nachdruck. Erster Artikel des bisher leeren Ordners `entwurfsprinzipien/`
  (Haltung/Diskurs-Achse).
- Herkunft: Cross-KB-Fund der Schluss-Triage `wissen/bauprodukte` vom 15.08.2026 (dort als kein
  Bauprodukt verworfen, `bauprodukte-inventar.md` Z. 165), am 15.08. nur als Promotion-Kandidat
  in `wiki/QUESTIONS.md` vermerkt und dort ausdruecklich als «eigener dedizierter Lauf»
  vorgemerkt — dieser Lauf holt das nach.
- Register nachgezogen: `wiki/entwurfsprinzipien/INDEX.md`, `wiki/INDEX.md` (Sektion
  Entwurfsprinzipien), `wiki/QUESTIONS.md` (Kandidat auf ERLEDIGT gesetzt).

## 2026-08-17 (Wissens-Chef Run 35, Cross-KB) — `healthcare-neubau-zh.json`: Quellenstand der B4-Quelle nachgezogen

- **`wiki/parameter-sets/healthcare-neubau-zh.json`:** Die Zitatzeile zu
  `wissen/wettbewerbs-dna/wiki/muster/jury-argumente-healthcare.md` fuehrte «8 Quellen,
  25.07.2026». Die Quelle ist am 17.08.2026 gewachsen (Etappe-4-Vertiefung 03, Abschnitt 7
  «Rueckkopplung» aus den eigenen Teilnahmen 2101 KSSG H14 und 2205 Guggerbach): **15 Quellen**.
  Stand nachgezogen, JSON-Validitaet nach dem Edit geprueft. 1/1.
- Die Gegenrichtung (Abnehmer-Vermerk) ist in `wettbewerbs-dna` gesetzt.
- Bericht: `wissen/koordination/outputs/2026-08-17_wissens-chef-run35.md`.

## 2026-08-06 (Cross-KB-Lauf Run 27) — `healthcare-neubau-zh.json`: Vorbehalt zum oberen Kosten-Endpunkt nachgetragen

- **`wiki/parameter-sets/healthcare-neubau-zh.json`, Block `kosten_referenz`, Feld `hinweis`:**
  rein additiv ergaenzt. Das Set fuehrte den Kennwertband 826-1'420 CHF/m3 GV (BKP 2) aus
  `wissen/immobilienbewertung/wiki/realwert-sachwert.md` **unqualifiziert** — obwohl der obere
  Endpunkt **1'420** (Averecura) und die Vella-Zeile in der Quelle als **quellenintern nicht
  reproduzierbar** ausgewiesen sind (recompute 1'285 bzw. 1'021; die uebrigen sechs Zeilen
  reproduzieren exakt). Der reproduzierbare **Rohband 826-1'285** ist jetzt genannt, ausdruecklich
  als Rohband und **nicht** als neuer geltender Band (Entscheid Raphael, haengt an der Bereinigung
  des JANS-Original-Blatts; `wissen/immobilienbewertung/wiki/wissensluecken.md` D10). Ebenfalls
  ergaenzt: der Hinweis, dass die Baender auf **BKP 2 (Gebaeude)** bezogen sind.
- Begruendung fuer den Eingriff in dieses Set: es ist die Kopie, die `machbarkeit` und
  `healthcare-wirtschaftlichkeit` tatsaechlich lesen. Die beiden Wiki-Seiten zu qualifizieren und
  das Set auszulassen haette ausgerechnet die meistkonsumierte Fassung unqualifiziert gelassen.
- Kein anderes Feld beruehrt, keine Version hochgezaehlt (v2.0 unveraendert), JSON nach dem Edit
  mit `python3 -m json.tool` validiert.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D0 · E0 · F1 · G1

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Ein B-Befund: `[[architekten-synobsis]]` im `wiki/INDEX.md` ist ein KB-Name, kein Artikel — als Pfadangabe schreiben. Sonst sauber. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D0 · E0 · F1 · G0

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. Kleinste KB im Bestand (2 Wiki-Dateien: INDEX + QUESTIONS, kein einziger Sachartikel). Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-27 — `wohnen-mfh-urban.json` komplett neu geschrieben (v1.0 → v2.0, Etappe-3-Baustein B5) — damit ALLE DREI Etappe-3-Bauaufgaben vollständig
- **Vollständige Neufassung, rein aus den beiden established Etappe-3-Mustern abgeleitet**
  (`wissen/wettbewerbs-dna/wiki/muster/kennwerte-wohnungsbau.md` B6 + `jury-argumente-
  wohnungsbau.md` B4, beide established 27.07.2026, 8 Quellen trägertyp-gespreizt). Bisherige
  v1.0-Quellen (BWO Wohnungsmarktbericht 2024, SIA 416, Wüest Baukostenindex 2024, BFS
  Gebäudestatistik) ersatzlos entfernt — generisch, nicht aus Etappe-3-Quellen ableitbar.
  Unbelegte externe Referenz "Siedlung Klee (pool Architekten)" aus v1.0 entfernt (nicht
  verifizierbar), ersetzt durch zwei aus B3/B4 belegte Referenzprojekte (Pinarello/Seebahn-
  Höfe, Kandalama/Brisgi-Areal, Architekten-Namen gegen `wiki/extern/`-Artikel verifiziert).
- **Kein `chf_m3_gv_band` gesetzt** (Strukturbefund wie Schulbau/Healthcare: kein einziger
  der 8 Wohnungsbau-Juryberichte nennt ein Gebäudevolumen in m³) — stattdessen neues Feld
  `kosten_referenz.chf_m2_hnf_band` [3500, 3900] (BKP 1–9, Koch-Areal, zwei unabhängige
  Baufelder derselben Auslobung) mit Hinweis auf die eingeschränkte Basis (eine Auslobung,
  Zürich 2018/2019, nicht schweizweiter Median).
  `flaechen.hnf_pro_einheit_m2` [95, 105] für die Nutzeinheit "Wohnung (4.5-Zimmer)" — aus
  zwei unabhängigen, deckungsgleichen Programm-Wohnungsspiegeln (Seebahn-Höfe, Brisgi).
  `gebaeude`-Geometriefelder (Geschosszahl/Erschliessung/Statik/Dachform) bewusst NICHT
  gesetzt (wie bei Healthcare v2.0) — B4/B6 belegen trägertyp-abhängig genuin verschiedene
  Typologien, ein einzelner Enum-Wert wäre erfunden; stattdessen `orientierung_regeln` mit
  der Herleitungsregel je Trägertyp.
- **Zwei-Runden-Refuter-Verifikation:** 1. Durchgang fand 6 Fehler (u.a. Holzbau-Beleg
  fälschlich dem Sieger statt dem 3.-Rang-Projekt Walkeweg zugeschrieben; "belegt in 7 von
  8 Berichten"-Statistik an die falsche Aussage gehängt; Vier-Systeme-Aufzählung nur 3
  Items; scope_hinweis überdehnte "Einzelbeleg" auf privat-institutionell obwohl B4 das
  nicht so kennzeichnet; ein K.o.-Punkt zu kumulierten baurechtlichen Verstössen fehlte
  ganz), alle korrigiert; 2. Durchgang bestätigte alle 6 Korrekturen fehlerfrei. Beide
  Refuter-Agenten liefen direkt über das Agent-Tool (kein Workflow-Tool, konsistent mit der
  in dieser KB wiederholt dokumentierten headless-Review-Blockade des Workflow-Tools).
- **Damit sind alle drei Etappe-3-Ziel-Bauaufgaben (Schulbau, Healthcare, Wohnungsbau)
  vollständig: B1–B6 je established.** Siehe `wissen/wettbewerbs-dna/training/ETAPPE-3.md`.

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB): Quellenzuweisung v2.0 korrigiert, INDEX nachgezogen
- **[korrektur, materiell] `parameter-sets/healthcare-neubau-zh.json`** hat mit der Neufassung v2.0 (25.07., 21:53) zwar das beanstandete Wohnbau-Band entfernt, die **Quellenzuweisung aber unveraendert uebernommen**: `quelle_kb: "wissen/grobkosten/"` plus Hinweistext «fuer CHF/m3 bzw. CHF/m2 fuehrend bleiben wissen/grobkosten/…». Genau diese Verwendung untersagt `grobkosten` ausdruecklich (Abschnitt «Healthcare / Spezialnutzung»; die KB erklaert sich fuer Healthcare in `CLAUDE.md` insgesamt fuer unzustaendig). Da `quelle_kb` das einzige maschinenlesbare Quellenfeld ist, waeren konsumierende Werkzeuge auf die untersagte Quelle gelenkt worden. → `quelle_kb` auf `wissen/immobilienbewertung/wiki/realwert-sachwert.md` umgestellt, neues Feld `quelle_kb_m2_nf` (Skill `kostenschaetzung`, Wueest) und `quelle_kb_nicht_anwendbar` (grobkosten, mit Begruendung); Zahlenwerte unveraendert, JSON schema-valide geprueft.
- **[korrektur] `wiki/INDEX.md`** beschrieb das Set noch mit den v1.0-Quellen «CURAVIVA/Wueest/JANS 2410+2619/SIA 416», die die Neufassung ersatzlos entfernt hat (der Sub-Index `parameter-sets/INDEX.md` war bereits korrekt). → an den Ist-Zustand angeglichen (v2.0, Herkunft B4/B6, Scope Pflegeheim/Alterszentrum/betreutes Alterswohnen).
- **[hinweis] Verfahren:** Der Sperrvermerk, den Wissens-Chef Run 15 im alten Block gesetzt hatte (Loeschung = rueckfragepflichtig), ist mit der Neufassung gegenstandslos geworden — faktisch wurde damit im KB-Loop die Loeschoption gezogen. Sachlich gut begruendet (B6 Abschnitt 0/8: kein externer Jurybericht nennt einen projektspezifischen Kennwert), verfahrensmaessig im Bericht benannt.
- **[praezisierung]** Das oft zitierte Band **1'053-1'420 CHF/m3 GV** gilt nur fuer die sechs Neubauten ab 2019; das Gesamtband der acht Objekte ist **826-1'420**, der Median ~1'100 gehoert zum Gesamtband. v2.0 zitiert korrekt.
- Bericht: `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-25 — `healthcare-neubau-zh.json` komplett neu geschrieben (v1.0 → v2.0, Etappe-3-Baustein B5)
- **Vollstaendige Neufassung, rein aus den beiden established Etappe-3-Mustern abgeleitet**
  (Muster `wissen/wettbewerbs-dna/wiki/muster/kennwerte-healthcare.md` B6 +
  `jury-argumente-healthcare.md` B4, beide an diesem Tag auf `established` gehoben — B6
  Healthcare damit vollstaendig, vgl. CHANGELOG dortselbst). Bisherige v1.0-Quellen
  (CURAVIVA-Richtwerte, pauschale Wueest-Kostenkennwerte) ersatzlos entfernt — sie liessen
  sich nicht mehr gegen die jetzt established Quellen belegen und widersprachen der
  Etappe-3-Vorgabe "nur belegte Werte aus B4/B6".
- **Scope bewusst verengt** auf Pflegeheim/Alterszentrum, Demenz-Sondertyp und betreutes
  Alterswohnen (JANS-Auftragsprofil, vgl. 2410-WALD) — Akutspital/Psychiatrie/gemischter
  Subtyp sind in B4/B6 mit eigenen, teils klar abweichenden Kennwerten belegt und wegen
  B6s Subtyp-Vermischungsverbot bewusst NICHT in dieses Set uebernommen (`healthcare-
  akutspital.json`/`healthcare-psychiatrie.json` bleiben als eigene Sets geplant, INDEX.md).
- **`kosten_referenz.chf_m3_gv_band` bleibt bewusst leer** (kein numerisches Feld) —
  B6 Abschnitt 0/8 weist aus, dass kein einziger der 11 externen Healthcare-Juryberichte
  einen projektspezifischen CHF/m2- oder CHF/m3-Kennwert nennt. Damit ist die GESPERRT-
  Markierung aus Wissens-Chef Run 15 (Eintrag oben) gegenstandslos: das beanstandete Band
  [850,1050] existiert in v2.0 nicht mehr. Der `kosten_referenz.hinweis`-Text nennt
  `wissen/grobkosten/` sowie, spezifisch fuer Alters-/Pflegeheime, den 8-Objekt-
  Referenzvergleich `wissen/immobilienbewertung/wiki/realwert-sachwert.md` (CHF/m3 GV
  826-1'420, Median rund 1'100 BKP 2 — als dritte Quelle im `quellen`-Array deklariert,
  nicht unbelegt vermengt).
- **Refuter-Pruefung bestanden:** unabhaengiger Agent prüfte alle 28 Einzelaussagen des
  neuen JSON gegen B4/B6 wortgenau; 2 kleine Abschnitts-Ungenauigkeiten und 1 unbelegter
  Cross-KB-Verweis gefunden und direkt korrigiert (dritte Quelle sauber deklariert statt
  unbelegt eingemischt). Schema-valide (`validate.py --all` → OK fuer alle drei Sets).
- INDEX.md-Eintrag nachgezogen (Etappe-3-Herkunft + Scope-Praezisierung, analog zum
  bestehenden Eintrag fuer `schule-volksschule-ch.json`).

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): Healthcare-Kostenband GESPERRT + Erst-Verlinkung zu architekten-synobsis
- **`wiki/parameter-sets/healthcare-neubau-zh.json`, Block `kosten_referenz`: `status: GESPERRT` + belegter Hinweis ergaenzt** (nichts geloescht — Loeschung braucht Rueckfrage). Zwei unabhaengig adversarial BESTAETIGTE Befunde: (1) Das gefuehrte Band **[850, 1050] CHF/m3 GV ist das Wohnbau-MFH-Band** der KB `grobkosten` — und beruft sich per `quelle_kb` ausgerechnet auf die KB, die diese Verwendung fuer «Spital, Klinik, Alters-/Pflegeheim, Reha, Praxis» **ausdruecklich untersagt** (`grobkosten/wiki/kennwerte.md:66-68`). (2) Das Band liegt deutlich unter dem belegten Healthcare-Niveau: **1053-1420 CHF/m3 GV** (BKP 2, Median ~1100) aus dem 8-Objekt-Referenzvergleich in `immobilienbewertung/wiki/realwert-sachwert` (fuenf der acht Objekte im Kt. ZH). Wertsetzung = Fachentscheid Raphael. Schema-Validator laeuft unveraendert durch (`validate.py --all` → OK fuer alle drei Sets).
- **Erst-Verlinkung zur KB `architekten-synobsis`** (die beiden KBs kannten sich bis heute nicht, 0 Grep-Treffer in beiden Richtungen): `wiki/typologien/bildung.md` fuehrt neu die synobsis-Quellen (`wiki/THEMEN.md` §1.4 Bildungsbauten, `wiki/RAUMTYPOLOGIEN.md`) — der Artikel war ohne eine einzige Katalog-Quelle kompiliert worden, obwohl der Referenz-Katalog der deklarierte Arbeitsweg dieser KB ist.
- **Kein Systematik-Widerspruch:** synobsis fuehrt Raumfiguren/Parti, diese KB fuehrt Gebaeudenutzungen — zwei Achsen, gleiches Wort. In zwei getrennten Matrix-Zeilen fixiert.
- Offen (Bau-Arbeit, nicht Wissens-Chef): optionales Feld `synobsis_slug` in `referenz_projekte`, damit die woertlich genannten Referenz-Architekten (Boltshauser, Pool) maschinell auf den Katalog zeigen.
- Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-25 (Nachtschicht-Zyklus Mac Mini ~06:30 — Health-Check + zwei Fixes)
- [health-check] Wissens-Health-Check Phase 1: A1→behoben · B0 · C0 · D0 · E0 · F1→behoben
  · G0. Report: `outputs/2026-07-25_health-check.md`.
- [fix] `wiki/typologien/bildung.md`: durchgehender ae/oe/ue-Ersatzschreibungs-Bug (104
  Woerter, u.a. Gebaeude/Groessenordnung/fuer/Schueler/Hoehe/Ortsnamen Schoental-Schoenau-
  Stoeckacker-Faellanden) auf echte Umlaute korrigiert — derselbe bekannte Bug wie bei
  `spec`/`immobilienbewertung`/`planungsgrundlagen`, hier aber klein genug (1 Artikel) fuer
  eine direkte, wortweise Korrektur statt nur Flaggen. `last_updated` auf 2026-07-25 gesetzt.
- [fix] `raw/_INGESTED.md`: veraltete Formulierung *"Seed-Import steht aus"* nachgezogen
  auf den seit 20./23.07. ueberall sonst geltenden Abfrage-Workflow-Wortlaut — war die
  einzige verbliebene Datei mit dem alten Stand, von drei vorherigen Checks uebersehen.
- Keine neue Recherche, keine neuen Kennzahlen — reine Korrektur/Konsistenz.

## 2026-07-24 (Nachtschicht-Zyklus Mac Mini ~04:30 — erster Wiki-Artikel kompiliert)
- [wiki] **`wiki/typologien/bildung.md` neu** — erster echter Wiki-Artikel dieser KB
  (bisher reine Parameter-Set-Sammlung). Kompiliert den seit 21./23.07. offenen
  Promotion-Kandidaten: HNF/GF-Referenzband 0.52–0.54, 900-m²-Geschossflaechen-Schwelle
  als harte Entwurfsregel, Programm-Mengengerueest (Klassenzimmer 64–75 m², Cluster-
  Koernung 3–4, Regelklasse 19–21 Schueler), Materialien/Ausdruck, Kostendach-
  Groessenordnung (1.6–1.8 Mio. CHF je Klassenzimmer Regelschule, rund 2.5 Mio.
  Sonderschule) und 6 Referenzprojekte. Reine Kompilation aus bereits
  refuter-verifizierten Quellen (`parameter-sets/schule-volksschule-ch.json` v1.0 +
  `wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md`, established) — keine neue
  Recherche, keine neuen Kennzahlen erfunden. Zwei offene Punkte bewusst NICHT geloest
  und im Artikel + `QUESTIONS.md` (dort weiterhin bei `wettbewerbs-dna`) vermerkt: der
  GF-Widerspruch 2206 Schoental «ARCHE» (0.655 vs. 0.759 HNF/GF) und der fehlende
  Reha-/Aerztehaus-Subtyp (Gesundheitsbau, nicht Bildungsbau).
- [index] `wiki/INDEX.md` (Sektion Typologien) und `wiki/typologien/INDEX.md` auf den
  neuen Artikel verlinkt.
- [questions] `wiki/QUESTIONS.md`: Promotion-Kandidat auf ERLEDIGT gesetzt.
- Budget-Hinweis: der 23.07.-Lauf hatte diese Kompilation bewusst als zu gross fuer den
  Nachtschicht-Rahmen zurueckgestellt; nach Pruefung war sie reine Kompilation ohne neue
  Quellenrecherche und passte in den 5-USD-Rahmen.

## 2026-07-23 (2. Eintrag, Nachtschicht-Zyklus Mac Mini ~20:30 — Sub-Index-Widerspruch behoben)
- [index] Den im Health-Check ~19:00 gefundenen Widerspruch nachgezogen: die vier Domänen-
  Sub-Indizes (`wiki/typologien|entwurfsprinzipien|architekten|materialien/INDEX.md`)
  behaupteten weiterhin wörtlich einen ausstehenden Roh-Seed-Import aus
  `05_Architekten_Synobsis`, obwohl dieser Weg bereits seit 20.07.2026 als ÜBERHOLT
  gilt (Abfrage-Workflow gegen `architekten-synobsis` statt Roh-Import). Alle vier
  Sub-Indizes sowie die vier entsprechenden Abschnitte im Haupt-`wiki/INDEX.md` auf den
  Abfrage-Workflow-Wortlaut umgestellt (Verweis auf `[[architekten-synobsis]]` +
  CHANGELOG-Datum).
- [questions] `wiki/QUESTIONS.md`: Nachzug im Seed-Import-Abschnitt vermerkt; neuen
  Abschnitt «Promotion-Kandidat» für `typologien/bildung.md` (aus dem Health-Check
  ~19:00) angelegt, damit der Vorschlag nicht nur im CHANGELOG verpufft, sondern als
  offene Aufgabe nachverfolgbar bleibt.
- Keine inhaltliche Recherche, reine Registerpflege/Konsistenz-Fix (Doppelarbeit-Guard:
  bewusst NICHT die grössere Aufgabe — Kompilation von `bildung.md` selbst — begonnen,
  da das ein neuer Wiki-Artikel mit Quellenprüfung wäre und den Nachtschicht-Rahmen
  sprengen würde; bleibt als Promotion-Kandidat offen für einen dedizierten Lauf).

## 2026-07-23 (Wissens-Health-Check, Nachtschicht Mac Mini ~19:00)
- Wissenscheck Phase 1 (aeltestes Audit-Datum, 20.07., 3 Tage): die 20./21.07.-Fixes
  (Haupt-INDEX, QUESTIONS) sind weiterhin korrekt wirksam, alle drei Parameter-Sets
  weiterhin schema-valide (`validate.py` OK). Neuer Fund: die vier Domaenen-Sub-Indizes
  (`architekten/`, `entwurfsprinzipien/`, `materialien/`, `typologien/` je `INDEX.md`)
  behaupten weiterhin woertlich einen ausstehenden Seed-Import, obwohl das Haupt-Register
  dies seit 20.07. als UEBERHOLT fuehrt — Widerspruch zwischen Sub- und Haupt-Register.
  Promotion-Kandidat: `typologien/bildung.md` liesse sich jetzt aus dem bereits
  refuter-verifizierten `schule-volksschule-ch.json` + dem established Benchmark
  `wettbewerbs-dna/kennwerte-schulbauten` kompilieren (erster echter Wiki-Artikel dieser
  KB). Kein neues Seed-Material fuer weitere Parameter-Sets gefunden (bestaetigter
  Nicht-Fund). Keine Phase-2-Aktion (Nachtschicht-Scope, nur Audit). Report:
  `outputs/2026-07-23_health-check.md`.

## 2026-07-21 (2. Eintrag, Nachtschicht-Zyklus Mac Mini ~20:30 — INDEX/QUESTIONS nachgezogen)
- [index] `wiki/INDEX.md` Zeile Schulhaus-Set war noch als «Angekündigt aus wettbewerbs-dna B5»
  formuliert, obwohl das Set laut Eintrag weiter unten (selber Tag) bereits eingetroffen,
  schema-valide und refuter-BESTANDEN ist. Auf denselben Eintrags-Stil wie die anderen beiden
  Parameter-Sets umgestellt (Datei-Link + Kurzbeleg).
- [questions] `wiki/QUESTIONS.md`: Koordinationspunkt «Namens-Abstimmung Schulhaus-Set» auf
  [x] erledigt gesetzt (war durch den Zulauf bereits faktisch geloest, aber nicht abgehakt).
  Erneut per `validate.py` gegen das Schema geprueft: OK.

## 2026-07-21 (Zulauf aus wettbewerbs-dna B5 — Schulhaus-Set eingetroffen)
- [parameter-set] `wiki/parameter-sets/schule-volksschule-ch.json` NEU eingetroffen aus dem
  Task `wettbewerbs-dna-training` (Etappe 3, Baustein B5). Abgeleitet ausschliesslich aus den
  established Mustern `kennwerte-schulbauten.md` (B6) + `jury-argumente-schulbauten.md` (B4).
  Schema-validiert (validate.py OK) und durch einen unabhaengigen Refuter-Agenten Wert fuer
  Wert gegen die Quellen geprueft: VERDIKT BESTANDEN, kein erfundener Kennwert; 2 Praezisierungen
  eingearbeitet (geschosse_min 3→1 wegen belegtem Dorf-Fall Grossaffoltern; Regelklasse-Fundstelle
  geschaerft). `chf_m3_gv_band` bewusst NICHT gesetzt (aus Schul-Juryberichten strukturell nicht
  belegbar — bleibt bei `wissen/grobkosten/`; QUESTIONS wettbewerbs-dna).
- [index] parameter-sets/INDEX.md: Set unter «Vorhandene» gefuehrt; geplantes `bildung-schulhaus.json`
  gestrichen (durch dieses Set unter dem abgestimmten Namen realisiert, vgl. Koordinationspunkt
  CHANGELOG 2026-07-20). Damit die am 20.07. offene Namens-Abstimmung geschlossen.

## 2026-07-20 (2. Eintrag, Phase-2-Fixes aus dem Erst-Audit, Dauerschicht-Zyklus 25)
- [index] Haupt-INDEX: wohnen-mfh-urban ergaenzt, [[...]]-Links auf JSONs durch relative
  Links ersetzt (Konvention), Ankuendigung schule-volksschule-ch.json aus wettbewerbs-dna B5.
- [questions] Seed-Import-Sektion als UEBERHOLT geschlossen (architekten-synobsis deckt
  die Quelle; Abfrage-Workflow dokumentiert); NEU: Koordinationspunkt Namens-Abstimmung
  Schulhaus-Set (B5 liefert schule-volksschule-ch.json statt bildung-schulhaus.json).
- [entscheid] Schulhaus-Set NICHT hier gebaut — Doppelarbeit-Guard: wettbewerbs-dna B5
  (naechster Lauf des dedizierten Tasks) leitet es selbst aus kennwerte-schulbauten ab;
  diese KB validiert es beim Eintreffen gegen das Schema.

## 2026-07-20
- Erst-Wissenscheck Phase 1 (Dauerschicht-Zyklus 24): Geruest sauber (Schema-Validierung
  beider Parameter-Sets OK), aber KB schlafend seit Anlage. Befunde: INDEX-Luecke
  (wohnen-mfh-urban fehlt im Haupt-INDEX), [[...]]-Konvention auf JSON, **Seed-Import
  aus 05_Architekten_Synobsis ist UEBERHOLT** (KB architekten-synobsis deckt das mit
  Katalog+Vektorindex+Themenregister ab → Abfrage-Workflow statt Roh-Import),
  Compounding-Kandidat bildung-schulhaus.json aus wettbewerbs-dna-Benchmark
  kennwerte-schulbauten (heute established). Voller Report:
  outputs/2026-07-20_health-check.md

## 2026-06-18
- KB angelegt: Ordnerstruktur, CLAUDE.md, JSON-Schema, Beispiel-Parameter-Set
- Seed-Import steht aus (NAS-Ordner 05_Architekten_Synobsis → raw/)
