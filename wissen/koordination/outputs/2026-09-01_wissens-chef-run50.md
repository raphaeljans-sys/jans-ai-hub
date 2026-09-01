# Wissens-Chef Lauf 50 — 01.09.2026

**Zuschnitt:** 6 Melder (`model: sonnet`) + 3 adversariale Verifikatoren (Hauptmodell) + eigene
Nachmessung des Hauptkontexts an den Originalquellen. Delta-Basis: Zuwachs seit Lauf 49 (31.08.),
Schwerpunkt auf den 48 neuen `architektur-fachwissen`-Artikeln und den frischen Kennwerte-Artikeln
in `wettbewerbs-dna`.

**Bilanz: 2 bestaetigt und korrigiert · 2 teilweise · 1 Kernvorwurf widerlegt · 2 Nullbefunde ·
1 Uebergabe entwertet · 1 Infrastruktur-Befund von erheblichem Gewicht.**

---

## 1. ⚠ Der wichtigste Befund ist nicht fachlich, sondern operativ: die kanonische Wissensbasis ist unvollstaendig

**387 Dateien liegen auf `github/main` und fehlen im NAS-Arbeitsbaum** — Datei fuer Datei mit
`[ -e ]` geprueft, nicht aus dem Diff geschlossen. Davon **383 in `architektur-fachwissen`**, 4 in
`baurecht/outputs` (Thalwil-Schub-Lane vom 29.08., Laeufe e/f/h/i). Konkret: das afw-Wiki fuehrt auf
dem NAS **99** Artikel, auf GitHub **455** — **356 fertige Artikel der Nachtschicht fehlen in der
Quelle, aus der jede Station liest.**

Das Fristen-Register dokumentiert die Divergenz seit vier Tagen — aber durchgehend als
**Backup-Rueckstand**: «die Arbeit liegt vollstaendig auf dem NAS, nur nicht auf GitHub». Das ist
die eine Richtung (626 Commits). Die andere (267 Commits) war nie gemessen. **Damit aendert sich die
Schwere: nicht «Backup fehlt», sondern «kanonische Quelle unvollstaendig».** Ein `wissenscheck` auf
dem NAS misst die 99 Artikel und meldet «stabil» — die Luecke ist von innen unsichtbar.

Aufgefallen an einem Einzelfall: ein Melder meldete beilaeufig, der am 31.08. committete Artikel
`wettbewerbsverfahren-zweistufig-…-zuerichforum-programmreduktion.md` existiere nicht mehr im HEAD.
Meine erste Lesart — «ein Commit ist per Rebase aus dem Branch gefallen» — war **falsch** und musste
korrigiert werden: `66df04125` ist der **GitHub-Kopf**, nicht ein verlorener NAS-Commit. Die
Nachmessung in die Gegenrichtung brachte dann die 387.

**Kein Datenverlust.** Alles liegt auf `github/main` und im SSD-Klon. Ursache ist der bereits
benannte haengende Konflikt in `wissen/normen/CHANGELOG.md` bei `1eed7118c`. **Nicht selbst
aufgeloest:** unbeaufsichtigter Lauf, Git-Interna, fremde unbestaetigte Arbeit in der Konfliktdatei
(Rule `interaktive-eingriffe` Ziff. 3, Rule `auto-verbesserungen` 260811 Ziff. 3). Registriert in
`logbuch/fristen.md`; vorgelegter Weg dort.

⚠ **Offenzulegen:** Dieser Lauf hat einen CHANGELOG-Kopfeintrag **in genau die Konfliktdatei**
`wissen/normen/CHANGELOG.md` geschrieben (+12). Das war vor der Messung und macht die Aufloesung
minim aufwendiger. Der Eintrag dokumentiert eine reale Korrektur und wird deshalb nicht
zurueckgenommen — wer den Merge aufloest, soll es aber wissen.

---

## 2. Bestaetigt und korrigiert: eine Genehmigungsfiktion, die es seit 2020/2024 nicht mehr gibt

`planungsgrundlagen/wiki/recht-norm-baueingabe-verfahren-zh.md` fuehrte seit dem 01.08.2026 als
`established`: «**Gilt als bewilligt, wenn 30 Tage nach Anzeige keine Antwort der Behoerde
vorliegt**» (Anzeigeverfahren ZH). Der geltende Erlass traegt das nicht: § 13 Abs. 2 BVV nennt eine
Behandlungsfrist **ohne Saeumnisfolge**, § 18 Abs. 1 BVV zaehlt **vier aktive Abschlussformen** auf
und kennt **keinen Absatz 3** mehr. Fiktionsformel im ganzen Erlass: **je 0 Treffer** ueber fuenf
Suchvarianten. «Schweigen = Freigabe» gilt allein im **Meldeverfahren** (§ 2e BVV).

**Praktische Folge:** Wer der Aussage folgte, haette nach blossem Fristablauf mit dem Bauen begonnen
— ohne Bewilligung.

**Der Verifikator hat die Begruendung des Melders berichtigt, und das ist die eigentliche Lehre.**
Es war **kein** Verwechslungsfehler (Meldeverfahren → Anzeigeverfahren), sondern ein
**Fassungsstand-Fehler**: die Aussage war bis zu den Revisionen vom 20.11.2019 (in Kraft 01.02.2020)
und 24.01.2024 (in Kraft 01.04.2024) **richtig** (aBVV § 13 Abs. 2 i.V.m. § 18 Abs. 3). Deshalb
tragen sie **vier** Hub-Quellen: der «Ratgeber Baubewilligung» (Maerz 2016), das Standardwerk Bd. 1
S. 415/416 (6. Aufl. 2019) und zwei `energie`-Destillate des AWEL-Vollzugsordners (Juni 2013).

**Und deshalb hat der Hub den Fehler schon einmal gemeldet und wieder abgelegt:**
`baurecht/CHANGELOG.md` haelt unter Run 15 (25.07.2026) genau diesen Verdacht fuer «widerlegt» —
gemessen **am Buch**, nicht am Erlass. Die veraltete Belegschicht hat sich selbst bestaetigt.

> **Regel daraus, allgemeiner als der Fall: ein Verdacht gegen eine Sekundaerquelle ist am geltenden
> Erlass zu messen, nie an der Sekundaerquelle selbst.** Das ist die rechtliche Schwester der
> Norm-Regel aus Lauf 49 («die fuehrende Norm selbst oeffnen»).

**Ausgefuehrt, fuenf additive Eingriffe, null Loeschungen:** Korrekturblock im pg-Artikel (+29) ·
neuer Abschnitt «Abschluss des Anzeigeverfahrens (§ 18 BVV)» in `baurecht/wiki/baubewilligungs-
verfahren.md` (+21), der die Luecke schliesst, die das Fehllesen ueberhaupt ermoeglichte (der
Artikel schwieg zu § 18) · Ueberholungsvermerke in beiden `energie`-Destillaten (+10/+10) ·
datierte Berichtigung des Run-15-Eintrags (+1).

**Bewusst nicht angefasst:** das Buch-Destillat `baurecht/buecher/band-1/…teil2.md`. Ein
Buch-Destillat gibt seine Quelle korrekt wieder; ein Eingriff dort waere Quellenverfaelschung.

---

## 3. Teilweise: der fRsi-Streit war ein Bezugsgroessen-Konflikt — der echte Fehler stand daneben

Zwei Melder widersprachen sich: der eine hielt «SIA-Grenze 0,75» in `energie/wiki/innendaemmung.md`
fuer veraltet, der andere hielt dagegen, 0,75 gelte weiter. **Am Destillat nachgemessen (Lehre aus
Lauf 49, diesmal befolgt):** Ziff. 6.2.1.4 legt f_Rsi = 0,75 der Kurve der zulaessigen
**Raumluftfeuchte** zugrunde — eine **Annahme, keine Bauteilanforderung**. Der vereinfachte Nachweis
ist Ziff. **6.2.2.1** und verlangt den standortabhaengigen **Anhang-F-Wert** (0,80/0,83). Die
Aussenwandecke faellt in beiden denkbaren Lesarten unter Anhang F; Ziff. 6.2.3.6 kalibriert
R_si = 0,25 ausdruecklich «wegen Gebaeudekanten».

**Der schwerere Fehler stand in der zweiten Satzhaelfte, die kein Melder geprueft hatte:** «wird
durch 40–80 mm Innendaemmung **zuverlaessig ueber die Grenze gehoben**» widerspricht der **eigenen
Tabelle** des zitierten Katalogs — 40 mm = fRsi 0,61–0,63, 80 mm = 0,75–0,80, ueber 0,80 erst ab
120 mm. Der Beratungsblock desselben Destillats formuliert korrekt «deutlich verbessert»; erst das
Fazit spitzt zu, und das Wiki hat die Zuspitzung uebernommen. **Das ist eine Bauherren-Zusicherung
bei Innendaemmung — der Punkt mit realem Schadenpotenzial (Schimmel).**

Sauber gehalten: die Katalogwerte rechnen mit R_si = 0,35 (Systematik 1999), SIA 180:2014 verlangt
0,25 — ein direkter Vergleich mit Anhang F ist unzulaessig. Korrekt ist darum nicht «80 mm genuegt
nicht», sondern **«die Aussage ist nicht mehr belegt»**.

**Ausgefuehrt:** `energie/wiki/innendaemmung.md` (+24) · `energie/destillate/bfe-waermebruecken-
katalog…` (+11) · `normen/destillate/sia-180-2014.md` (+8). Die Glossarzeile im Normdestillat war
**die Fehlerquelle des ganzen Vorgangs**: sie zieht Anhang-F-Grenzwert und 0,75-Annahme in einem
Satz zusammen und hat den Gegen-Melder in die Irre gefuehrt.

---

## 4. Kernvorwurf widerlegt: der Schulbau-«Fehlzeiger» war ein geprueftes Design

Ein Melder meldete die Bauaufgaben-Weiche der `kennwerte-*`-Artikel als Fehlzeiger. Der Verifikator
hat das widerlegt: die Weiche ist eine **Zustaendigkeits-, keine Bestandeszuweisung**, in Run 45
geprueft und bewusst stehen gelassen. **Sie zu «korrigieren» haette einen dokumentierten Entscheid
still gedreht** — genau der Fehlertyp, vor dem Lauf 49 gewarnt hat.

Bestaetigt ist nur das **Etikett**: `grobkosten` fuehrt **null** Schulbau-Positionen (68 grep-Treffer
sind samt und sonders «Median-**Bildung**», «Bring-**Schul**d»; Werkzeug gegengeprueft). «(belegt)»
trifft den Wohnungsbau; fuer Schulbau ist die Zuweisung **offen**, Entscheid bei Raphael.
**Ausgefuehrt:** additive Praezisierung in beiden Artikeln (+13 je), Weiche unveraendert.

**Der neue afw-Leutschenbach-Artikel schliesst die Luecke nicht** — und warum nicht, ist selbst
lehrreich: er warnt korrekt vor der SIA-116/416-Verwechslung, benennt aber die **zweite** Falle
nicht: `grobkosten` rechnet auf **BKP 1–5**, Leutschenbach auf **BKP 2** (656 CHF/m³) bzw. **BKP 1–9**
(987 CHF/m³). 987 gegen das MFH-Band 800–1'000 zu halten waere ein reiner Scope-Fehlschluss. Dazu
n=1, Preisstand 2003/04, kein Indexpfad.

---

## 5. Uebergabe aus Lauf 49: entwertet, kein Eingriff

Der wegen eines API-Fehlers unverifiziert gebliebene Befund («§14 fehlt der Rollen-nach-Ebene-Block»)
ist geprueft: Run 48 hat die uebrigen **acht** GT-RL-Paare **ausdruecklich bewusst** nicht angefasst,
um die dortige Fortschrittsmessung nicht unbrauchbar zu machen. §14/RL7/RL8 gehoert dazu. Kein
uebersehener Defekt, sondern ein registrierter Sammel-Rueckstand. **Kein Eingriff.**

## 6. Zwei Nullbefunde mit Aussage

- **afw ↔ normen (SIA 102:2003 / SIA 180):** Phasenanteile zeilengenau identisch, Ausgabe-Vorbehalte
  vorhanden und korrekt. **Nebenlehre fuer kuenftige Laeufe: der Dateizeitstempel 01.09. 23:00 auf
  saemtlichen KB-Dateien ist ein Sync-Touch, kein Inhaltsdelta** (`last_updated: 2026-08-29`) — den
  Delta-Zuschnitt ueber das Frontmatter fahren, nicht ueber mtime.
- **afw ↔ wettbewerbs-dna:** keine Doppelspurigkeit, saubere Arbeitsteilung (dna = eigene
  Jury-Erfahrung, afw = Veranstalter-Verfahrensseite aus dem Archiv). Der scheinbare Honorarkonflikt
  (CHF 110/128 gegen 135) loest sich ueber das Bezugsjahr. Verwertbar: afw belegt fuer Zeughaus Ebnet
  einen **anonymen** Studienauftrag und stuetzt damit eine Ableitung, die dna selbst als «nicht
  direkt belegt» markiert.

## 7. Klein, aber mit uebertragbarer Lehre: eBKP-H

Die neue afw-Kuerzel-Tabelle nannte «BKP 2017» **kein einziges Mal**, waehrend der Schwesterartikel
den Abgrenzungsvermerk vorbildlich traegt. Kein Fachfehler, kein Phantom-Code (alle Codes einzeln
gegen die BKP-2017-Liste geprueft). **Lehre: ein Warnblock, der nur im Schwesterartikel steht, wirkt
nicht** — Backlinks werden nicht zwingend verfolgt. Vermerk gesetzt (+9).

---

## 8. Offen, an Raphael

1. **⚠ Der haengende Merge — jetzt mit gemessener Folge fuer den Wissens-Layer.** 387 Dateien, davon
   356 afw-Wiki-Artikel, fehlen in der kanonischen Quelle. Aufloesung braucht die Sichtung der
   Konfliktdatei `wissen/normen/CHANGELOG.md`; Weg in `logbuch/fristen.md`. **Das ist der Punkt
   dieses Laufs mit der groessten Wirkung.**
2. **Schulbau-CHF/m³:** bleibt `grobkosten` allein zustaendig, oder wird der Kennwert aus einer
   anderen Quellengattung beschafft? Offen seit 20.07.2026 (`wettbewerbs-dna/wiki/QUESTIONS.md` B6).
3. **`links:`-Schema** (afw QUESTIONS #64) — unveraendert offen; deshalb wurde die fehlende
   Rueckkante `wettbewerbs-dna` → afw **nicht** gesetzt.
4. **`normen/destillate/sia-102-2003.md`** bleibt `speculative`, obwohl zwei Fundorte der
   Originalnorm registriert sind. Rueckstand von `normen` selbst.

## 9. Uebergabe an Lauf 51

- Nach Aufloesung des Merges: die 356 nachtraeglich sichtbaren afw-Artikel sind **ungeprueftes
  Delta** — der naechste Lauf sollte sie als Zuwachs behandeln, nicht als Bestand.
- `wissen/energie` fuehrt weitere Fundstellen der unqualifizierten «0,75»-Grenze (Suche
  `fRsi 0,75` ueber die KB), die diesem Lauf nicht im Weg standen, aber dieselbe Fassungs-Kante
  brauchen.
