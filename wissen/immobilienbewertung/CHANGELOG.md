# CHANGELOG — KB Immobilienbewertung

Jede Änderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-08-23 (Vertiefungslauf 7 — acht Gemeinden ohne jede Preisbasis haben jetzt eine)

Die KB fuehrt Marktdatenblaetter fuer sieben ZH-Gemeinden. Fuer **acht weitere
JANS-Bezugsgemeinden** gab es **keinerlei Preisdaten** — obwohl sie in [[az-gfz-kennwerte]] mit
Dichtekennwerten gefuehrt werden und damit als Arbeitsgebiet belegt sind: **Horgen, Kilchberg,
Kuesnacht, Meilen, Adliswil, Richterswil, Oberrieden, Niederhasli**. Aus der kantonalen
Handaenderungsstatistik sind jetzt **Median und Quartile fuer EFH und Eigentumswohnungen** (Total,
3 Jahre gepoolt 2025-2023) samt **Fallzahlen** eingearbeitet ([[amtliche-preisstatistik-zh]],
Abschnitt 4c), mit einem Verweis im Sammel-Index `wiki/marktdaten-gemeinden/README.md`.

**Der wichtigste Lesehinweis ist die Streuung.** Am Seeufer sind die Quartilsbaender riesig:
**Kilchberg EFH 2.54 bis 6.66 Mio.** (Faktor 2.6), **Kuesnacht 2.80 bis 7.00 Mio.** (Faktor 2.5).
Ein Median allein sagt dort fast nichts — die Mikrolage entscheidet ueber den Faktor 2, und genau
das bildet das Quartilsband ab. **Immer mit Quartilen zitieren.**

**Vorbehalte mitgeschrieben:** ⚠ **Oberrieden EFH n = 18** ueber drei Jahre ist die duennste Zeile
(als Groessenordnung brauchbar, fuer eine Bewertung zu duenn — Nachbargemeinden mitlesen) · es sind
**Totalpreise, keine CHF/m2**, ein direkter Vergleich mit den UBS-Quantilen ist nur ueber die
implizite Flaeche moeglich und nur dort, wo ein Fact Sheet existiert · die Bodenpreise dieser
Gemeinden sind **modelliert** (Abschnitt 2) · der Poolingzeitraum liegt vollstaendig im
**provisorischen** Bereich der Quelle.

**Was das aendert:** fuer ein Objekt in diesen acht Gemeinden musste bisher auf die Nachbargemeinde
oder einen Kantonswert ausgewichen werden. Das ist nicht mehr noetig. **Ein Fact Sheet ersetzt das
nicht** — dort stehen CHF/m2-Quantile, Mietniveau und Angebotsdaten; geschlossen ist die Luecke
beim **Niveau-Anker**.

Geaenderte Dateien: `wiki/amtliche-preisstatistik-zh.md` (Abschnitt 4c),
`wiki/marktdaten-gemeinden/README.md`.

## 2026-08-23 (Vertiefungslauf 6 — D16 neu: der BKP-2-Anteil von 75 % weicht um 15 Prozentpunkte ab)

Beim Abgleich der heute in `grobkosten` eingearbeiteten **amtlichen BKP-Anteilsstruktur** gegen die
JANS-Kennwertkette dieser KB ist eine materielle Abweichung aufgefallen.

**Der Befund.** Der Schritt **BKP 2 → BKP 1-5 ueber einen BKP-2-Anteil von 75 %** in
[[realwert-sachwert]] ist der einzige Rechenschritt der Kette, der **nicht aus einer Preisreihe**
stammt, sondern aus dem JANS-Kalkulationsblatt selbst (R. Jans, 25.03.2025). Zwei unabhaengige
Strukturquellen nennen deutlich hoehere Anteile:

| Quelle | Grundgesamtheit | BKP-2-Anteil | daraus BKP 1-5 aus 3'365 |
|---|---|---|---|
| JANS-Kalkulationsblatt | EFH/ZFH, Praxisregel | **75.0 %** | **4'485** (gefuehrt) |
| ZIW Revision 2025 | 54 reale KV Zuercher MFH-Neubauten 2020-2024 | **89.4 %** | **3'765** |
| Schaetzungsanleitung Tab. 3 | MFH 1985 | **90.6 %** | **3'713** |

**Materiell:** der gefuehrte Ansatz liegt rund **19 % hoeher**. Am eigenen Rechenbeispiel der KB
(Thalwil Bohlweg 1, 950 m2 GF) sind das **4'262'000 gegen 3'577'000 CHF — rund 686'000 CHF
Differenz aus diesem einen Faktor**.

**Ausdruecklich kein Fehlerbefund.** Drei Erklaerungen sind offen und keine ausgeschlossen:
(a) die 75 % gelten fuer **EFH/ZFH**, die Strukturquellen fuer **MFH** — ein Einfamilienhaus traegt
anteilig mehr Umgebung (BKP 4) und Vorbereitung je m2, ein tieferer Anteil ist plausibel, 15
Prozentpunkte sind damit aber nicht gezeigt; (b) ein hoeherer BKP-1-5-Ansatz ist fuer einen
**Neuwert konservativ**; (c) es ist eine gerundete **Praxisregel**, keine Messung.

**Nichts geaendert** — 4'485 bleibt unveraendert stehen. Neu als **D16** registriert
(Prioritaet **hoch**, weil die Regel jeden EFH-Neuwert dieser KB um rund 19 % bewegt und bisher
ohne Vorbehalt weitergereicht wurde), mit einer Frage, die Raphael als Autor des Blatts in einem
Satz beantworten kann. Ein ⚠-Block mit der Vergleichstabelle steht jetzt unmittelbar bei der
Herleitung in [[realwert-sachwert]], damit der Vorbehalt mitwandert.

Geaenderte Dateien: `wiki/realwert-sachwert.md` (⚠-Block bei der Kennwert-Herleitung),
`wiki/wissensluecken.md` (D16). Gegenstueck in `wissen/grobkosten/wiki/kennwerte.md`.

## 2026-08-23 (Vertiefungslauf 5 — Konsistenz-Check der eigenen Tagesarbeit; ein Widerspruch korrigiert)

Nach drei Durchgaengen durch die vier Wissensbasen ein Abgleich der Zahlen, die heute in mehrere
KBs geschrieben wurden.

**Sauber:** der verkettete ZIW-Stand **01.04.2026 = 1'221.3** steht jetzt einheitlich in
`immobilienbewertung` (fuehrend), `grobkosten` (implizit ueber die Faktorentabelle) und
`entwurfs-referenzen` (Teuerungsanker des Wohnen-Sets); der abgeloeste Weg ueber 1'220.8 ist als
Gegenprobe dokumentiert. Der Stuetzpunktstreit **1.346 gegen 1.334** ist in beiden KBs unveraendert
und gleichlautend gefuehrt.

**Zwei Korrekturen:**

1. **Stehengebliebene Erwartung in [[realwert-sachwert]].** Die D11-Zeile fuehrte «juengste
   publizierte Halbjahresreihe; naechste Publikation ~04/06.2026» — das las sich wie eine offene
   Erwartung, obwohl die Publikation am **08.07.2026** erfolgt ist. Praezisiert: 1210.4 ist der
   juengste Wert **dieser Reproduktion** (die HEV-Reihe endet dort weiterhin), die Erwartung ist
   eingetroffen, Verweis auf den Fassungsvermerk. Kein Wert geaendert.

2. **Widerspruch im eigenen Artikel [[investorenmarkt-makro]].** Der Eintrag vom 20.08.2026 nannte
   als naechsten BFS-Publikationstermin **«Okt-2026»**, der vom 13.08.2026 dagegen
   **«Dez-2026, Oktober-Erhebung»** — dieselbe Reihe, zwei Termine. **Richtig ist Dez-2026**,
   primaerverifiziert an der BFS-Indexseite: «Der Baupreisindex wird **halbjaehrlich berechnet
   (April und Oktober)** und die Ergebnisse im **Juni und Dezember** publiziert.» Die Fehlangabe
   verwechselte den **Erhebungs**monat mit dem **Publikations**monat — eine Verwechslung, die einen
   Marktpuls zwei Monate zu frueh ansetzt und den Wert dann faelschlich als «noch nicht publiziert»
   verbucht. Die falsche Angabe ist **durchgestrichen stehen gelassen** statt geloescht, damit die
   Korrektur nachvollziehbar bleibt. Ohne Wirkung auf Werte — der Indexstand 100.6 (+1.0 % YoY) ist
   in beiden Eintraegen identisch und heute an der Primaerquelle bestaetigt.

**Nebenbefund, der einen ⚠-Vermerk entschaerft:** [[investorenmarkt-makro]] fuehrt bereits den
**massgebenden Durchschnittszinssatz 1.31 % per 31.03.2026**. Der in [[ertragswert-dcf]] mit ⚠
geflaggte **Basiszinssatz** (5-Jahres-Durchschnitt der variablen ersten Hypotheken) ist damit
naeherungsweise abgedeckt — der Vermerk «bei Anwendung aktuellen Stand pruefen» bleibt richtig,
aber der Stand ist **in dieser KB vorhanden und nicht erst zu beschaffen**. Der in Vertiefungslauf
2 gemeldete Fehlschlag beim SNB-Datenwuerfel ist damit weniger gravierend als dort dargestellt;
ein zweiter Versuch ueber opendata.swiss (nach der an anderer Stelle gelernten Regel) blieb
ebenfalls ohne Treffer — die SNB-Zinsreihen liegen dort nicht.

Geaenderte Dateien: `wiki/realwert-sachwert.md` (eine Zeile praezisiert),
`wiki/investorenmarkt-makro.md` (Korrektur + `last_updated`).

## 2026-08-23 (Vertiefungslauf 4 — D1 beziffert: «veraltet» heisst nicht «zu tief»)

Dritte Runde. D1 fuehrte vier UBS-Fact-Sheets seit Monaten mit einem ⚠ «veraltet», **ohne zu sagen,
wie weit sie danebenliegen**. Mit den in Vertiefungslauf 3 erschlossenen kantonalen Reihen ist das
jetzt beziffert: je Gemeinde der 3-Jahres-Pool, der auf dem Jahr des Fact-Sheet-Stands endet, gegen
den aktuellen Pool 2025-2023.

| Gemeinde | UBS-Stand | EFH | EW |
|---|---|---|---|
| Waedenswil | 7/2024 | **+2.1 %** | **+0.6 %** |
| Maur | 2024-Q1 | **+4.2 %** | **+7.3 %** |
| **Regensdorf** | 12/2023 | **−6.7 %** | **−5.7 %** |
| Wald | 12/2023 | **+2.1 %** | **+4.9 %** |

Fallzahlen je Pool: EFH 38-95, EW 99-258 — tragfaehig.

**Der Befund kehrt die Intuition um: «veraltet» heisst nicht «zu tief».** In **Regensdorf** liegen
die kantonalen Mediane heute **rund 6 % UNTER** dem Stand, auf dem das Blatt vom 12/2023 beruht —
wer dort mit dem alten Fact Sheet bewertet, bewertet **zu hoch**. In Waedenswil und Wald ist die
Bewegung mit rund 2 % kleiner als die uebliche Bandbreite einer Bewertung, in Maur beim EW mit
+7.3 % am groessten.

**Priorisierung der Neubestellung, direkt daraus:** **Regensdorf zuerst** (falsche Richtung,
materiell), dann **Maur** (groesste Bewegung); **Waedenswil und Wald sind trotz ⚠-Flag praktisch
noch brauchbar**. Das ist der erste Fall, in dem D1 eine Reihenfolge statt einer Sammelwarnung
hat.

**Drei Vorbehalte mitgeschrieben:** (1) die Pools **ueberlappen** im Jahr 2023, die Deltas sind
deshalb **gedaempft**; (2) es sind **Totalpreis-Mediane, nicht CHF/m2** — eine Verschiebung der
gehandelten Objektgroessen wandert mit; (3) **Einzeljahre taugen nicht**: Waedenswil EFH schwankt
ungepoolt zwischen 1'640 und 2'500 Tausend CHF bei n = 26-33 pro Jahr, und in Regensdorf sind
2021-2023 gar nicht publiziert (n = 12-13, unter der Publikationsschwelle). **Immer den
3-Jahres-Pool verwenden.**

Geaenderte Dateien: `wiki/amtliche-preisstatistik-zh.md` (neuer Abschnitt 4b),
`wiki/wissensluecken.md` (D1 beziffert samt Priorisierung).

## 2026-08-23 (Vertiefungslauf 3 — kantonale Handaenderungsstatistik: D14 beantwortet, D2 fuer Kt. ZH geschlossen)

Zweite Runde durch die vier Wissensbasen, Start bei dieser KB. Angesetzt beim wertvollsten noch
offenen Punkt: **D14**, «kein von Wuest Partner unabhaengiger Gegencheck der Preis-NIVEAUS». D14
hatte den Loesungsweg selbst benannt (kantonale Handaenderungsstatistik ZH/SZ) und zugleich als
Bring-Schuld abgeschrieben — **«beides kostenpflichtig bzw. zugangsgebunden»**. Diese Annahme ist
geprueft worden.

**Die Annahme war falsch.** Das **Amt fuer Statistik und Daten des Kantons Zuerich** publiziert die
Handaenderungsstatistik als **Open Government Data** (opendata.swiss `immobilienpreise-im-kanton-zurich`
+ `daten.statistik.zh.ch`, CSV/JSON/XLSX), **ohne Abo und ohne Gesuch**. Grundlage sind die
**Handaenderungsanzeigen der Grundbuchaemter und Notariate** — effektiv bezahlte Preise aus
vollzogenen Transaktionen, kein hedonisches Modell, keine Inserate. Damit hat diese KB erstmals
eine **zweite, methodisch unabhaengige Preisquellenfamilie**.

**Neuer Artikel `wiki/amtliche-preisstatistik-zh.md`** (`established`), Inhalt:

- **Bodenpreise nach Immobilienmarktregion, effektiv, 5 Jahre gepoolt, 2021-2025, Stand 2025/Q4,
  quartilsaufgeloest:** Stadt Zuerich **6'747** · Seegemeinden **3'115** · Stadt Winterthur
  **2'087** · Agglomerationsgemeinden **2'065** · Landgemeinden **1'039** · Kanton **1'742** CHF/m2
  (Median, je mit Q10-Q90 und Fallzahl). Dazu die amtliche **Zuteilung der 15 JANS-Bezugsgemeinden**
  zu den Regionen (Stand 07.04.2026): See — Kilchberg/Oberrieden/Richterswil/Thalwil/Kuesnacht/
  Meilen/Zollikon/Waedenswil/Horgen · Agglomeration — Niederhasli/Regensdorf/Adliswil/Langnau a.A./
  Maur · Land — Wald.
- **EFH- und EW-Preisniveaus (Verkaufspreise total, Median + Quartile, 3 Jahre gepoolt 2025-2023)
  fuer 16 Gemeinden**, Fallzahlen 18-294.

**⚠ Wichtigster Warnbefund — die Gemeinde-Bodenpreise sind MODELLIERT, nicht gemessen.** Der
Datensatz fuehrt `medianEffektiv` und `medianModel` nebeneinander; bei den JANS-Gemeinden ist der
effektive Median 2025 fast durchgehend leer, weil pro Gemeinde und Jahr nur **0-6**
Baulandhandaenderungen anfallen. Wo doch einer existiert, weicht er stark ab: **Waedenswil 735
gegen Modell 1'558** (Faktor 0.47), **Stadt Zuerich 11'169 gegen 7'836** (Faktor 1.43). Kein
Widerspruch der Quelle, sondern die Streuung eines Medians aus vier bzw. sechs Grundstuecken.
**Praxisregel im Artikel verankert: auf Gemeindeebene keinen Bodenpreis-Einzeljahreswert
verwenden** — weder den effektiven (zu wenige Faelle) noch den modellierten (nicht gemessen);
belastbar ist die regionale 5-Jahres-Reihe.

**Der Gegencheck (D14).** Die beiden Quellen messen verschiedene Groessen — der Kanton
Verkaufspreise **total**, die Fact-Sheets **CHF je m2**. Ein Zahlenvergleich ist unmoeglich, ein
Plausibilitaets-Check ueber die **implizite Flaeche** (kantonaler Median / UBS-CHF-je-m2) dagegen
aussagekraeftig. An **sieben Gemeinden** mit UBS-Blatt gefuehrt: **EFH 132-189 m2** (Median 159),
**EW 80-128 m2** (Median 115) — ueber ein Preisspektrum von Faktor 2.5 (Wald bis Zollikon) **kein
einziger unmoeglicher Wert**. **Die beiden Quellenfamilien sind miteinander vereinbar.**
Ausdruecklich ein **Plausibilitaets-, kein Identitaetsnachweis**; die implizite Flaeche ist zudem
keine SIA-416-Groesse.

**Ein Ausreisser, bewusst nicht wegerklaert:** **Langnau a.A. EW = 80 m2** liegt deutlich unter dem
Feld (naechster Wert 100 m2). Ursache nicht entschieden — kleinste Fallzahl (n=44) oder tatsaechlich
kleinteiligerer Bestand. Als offener Einzelpunkt vermerkt.

**Nebenbefund zu D1:** bei **Regensdorf und Wald** ist der UBS-Stand (12/2023) **aelter** als der
kantonale Poolingzeitraum 2023-2025; die dort tiefsten impliziten Flaechen (132/138 m2) sind
wahrscheinlich ein Altersartefakt der UBS-Seite, kein Flaechenbefund — ein weiteres Argument fuer
die Neubestellung dieser beiden Fact Sheets.

**Vorbehalte der Quelle, mitgefuehrt:** die letzten drei Jahre und das laufende Jahr sind
**provisorisch** (rueckwirkende Neuklassifizierung bei Abbruch — der ganze Poolingzeitraum
2023-2025 faellt hinein); die Statistik wird **gerade modernisiert** und das Datenangebot 2027
neu strukturiert, **Ressourcen-IDs vor der naechsten Verwendung neu aufloesen**; nur Kanton ZH.

**Registerpflege:** **D14** beantwortet — Originaltext **erhalten**, die Antwort ist angehaengt statt
den Eintrag zu ersetzen; Prioritaet mittel → **niedrig**, nicht durchgestrichen, weil vier
Teilpunkte offen bleiben (Plausibilitaets- statt Identitaetsnachweis, Langnau-Ausreisser, Kanton SZ,
Ausweitung auf alle 160 Gemeinden). **D2** fuer den **ganzen Kanton ZH** geschlossen (nach der Stadt
Zuerich aus Vertiefungslauf 2), Prioritaet hoch → **mittel**, Rest ist nur noch der Kanton Schwyz.

**Selbstkorrektur aus Vertiefungslauf 2:** der verkettete ZIW-Stand 01.04.2026 stand hier mit
**1'220.8** (Weg ueber 01.10.2025 ≈ 1'213.5 × 1.006), waehrend `grobkosten` auf **1'221.3** rechnet
(01.04.2025 = 1'210.4 × publizierte Jahresteuerung 1.009). Beide Wege zulaessig, Unterschied
0.04 %, gerundeter Faktor **1.358 unveraendert** — aber zwei Zahlen fuer denselben Stichtag in zwei
KBs sind genau die Divergenz, vor der der Doppelfuehrungs-Befund derselben Seite warnt.
**Vereinheitlicht auf 1'221.3** (ein publizierter Stand mal eine publizierte Rate statt zweier
Kettenschritte); der andere Weg bleibt als Gegenprobe dokumentiert.

Geaenderte Dateien: `wiki/amtliche-preisstatistik-zh.md` (neu), `wiki/INDEX.md`,
`wiki/datenquellen-registry.md`, `wiki/wissensluecken.md`, `wiki/realwert-sachwert.md`. Report:
`outputs/2026-08-23_vertiefungslauf-3-amtliche-preisstatistik-zh.md`.

## 2026-08-23 (Vertiefungslauf 2 — Teuerungsanker, ZIW-Revision 2025, Bodenpreis-Quelle)

Fortsetzung desselben Auftrags am selben Tag, Schwerpunkt **Belegstand der Anker**, an denen die
Rechenketten haengen, statt eines weiteren Recomputes der Ketten selbst. Vier Befunde, alle an
Primaerquellen gegengelesen. **Kein Kennwert der KB ist geaendert.**

**1. Die seit Run 31 offene ZIW-Nachfuehrung ist faellig und einloesbar.** Der Artikel
[[realwert-sachwert]] trug «naechste Publikation ~04-06/2026 nachziehen»; publiziert wurde am
**08.07.2026** zum Stichtag **01.04.2026**: Total (BKP 1, 2, 4, 5) **100.6**, Basis
**Oktober 2025 = 100**, April 2025 = 99.7, **Jahresteuerung +0.9 %**. Erstmals mit
**BKP-Teilindizes**: Vorbereitung (BKP 1) 102.2 / +2.2 %, **Gebaeude (BKP 2) 100.4 / +0.4 %**,
Umgebung (BKP 4) 100.7 / +0.7 %, Baunebenkosten (BKP 5) 101.0 / +1.0 %. Quelle: amtliche
ZIW-Indextabelle (`stadt-zuerich.ch/ziw`), abgerufen 23.08.2026.

**2. Der Klammersatz «nicht mit dem BFS-Baupreisindex zu verwechseln, der eine andere
Basis/Methodik hat» ist fuer die Reihe ab 2021 ueberholt.** Der **Methodenbericht Revision 2025**
(Statistik Stadt Zuerich, Juni 2026, 16 S., Volltext gelesen) haelt fest: die eigenstaendige
Zuercher Baupreiserhebung wurde **2020 nach 100 Jahren eingestellt**; seither «entspricht der ZIW
ab Basisjahr 2020 dem BFS-Baupreisindex ‹Neubau Mehrfamilienhaus› der Region Zuerich …
Anpassungen … lediglich bei der **Gewichtung**». Zwei uebereinstimmende Werte von ZIW und BFS sind
damit **keine gegenseitige Bestaetigung** — dieselbe Logik wie beim UBS-FS/Wuest-Befund.
Der Vermerk ist **nicht gestrichen, sondern auf die Vor-2021-Reihe eingegrenzt**: dort (Offerten-
methode, ~200 Bauunternehmen, eigenes Zuercher Indexhaus) liegt der Stuetzpunkt 01.04.2003 = 899.2,
der den Faktor 1.346 traegt.

**3. Die 1939er-Verkettung ist amtlich gedeckt.** Derselbe Bericht: «Die alten und die neuen
Indexreihen werden ueber das Basisjahr verkettet, sodass … eine durchgehende und vergleichbare
lange Zeitreihe bestehen bleibt.» Die Sorge, die Revision 2025 entwerte den 1.346-Faktor, ist
ausgeraeumt. Rechnerische Fortschreibung (**als Verkettung gekennzeichnet, kein publizierter
Wert**): 1'213.5 × 1.006 ≈ **1'220.8**, Faktor 2003→2026 ≈ **1.358**. Nebenbefund: die
HEV-Schwyz-Reproduktion der verketteten Reihe wurde erstmals im **Volltext** gelesen statt nur
zitiert und bestaetigt **beide** strittigen Stuetzpunkte des Doppelfuehrungs-Befunds
(**899.2** und **907.6**) — der Streit 1.346 vs. 1.334 ist also eine echte Stuetzpunktwahl und
kein Lesefehler einer Seite.

**4. BFS-Teuerungsanker nach Bauwerksart eingearbeitet** (Basis Okt-2025 = 100, Stand April 2026,
primaerverifiziert): die Bauwerksarten laufen um bis zu **1.1 Prozentpunkte** auseinander —
Neubau MFH/EFH +1.0 %, **Renovation MFH +0.6 %**, Tiefbau +1.2 %, **Neubau Buerogebaeude −0.1 %
im Halbjahr**. Praxisfolge als **Nutzungsregel 7** in [[datenquellen-registry]] verankert:
Umbau-/Sanierungskennwerte mit **Renovation** indexieren, nicht mit Neubau oder Total.
Publikationsrhythmus primaerverifiziert (Erhebung April/Oktober, **Publikation Juni/Dezember**)
— der notierte naechste Termin **Dez-2026** ist damit bestaetigt, nicht geschaetzt.

**Neue Entscheidfrage D15 (statt eigenmaechtiger Umstellung).** Fuer die Indexierung der
Tab.-2-Neuwert-Richtwerte liegen jetzt **drei** belegte Anker vor, die 2025/26 um **0.6 Prozent-
punkte** auseinanderliegen: ZIW-Total +0.9 %, **ZIW-Gebaeude BKP 2 +0.4 %**, BFS Neubau MFH +1.0 %.
Sachlich naechster Anker fuer einen reinen Gebaeude-Neuwert ist der **BKP-2-Teilindex** (die
Richtwerte sind Baukosten je m3 umbauter Raum; das Total wurde vor allem von BKP 1 mit +2.2 %
gehoben). Nicht umgestellt — der Entscheid gehoert zusammen mit **1.346 vs. 1.334** zu Raphael.

**D2 (Bodenpreise) fuer die Stadt Zuerich geschlossen.** Statistik Stadt Zuerich publiziert die
**LIMA-Handaenderungsstatistik als offenes CSV unter CC0**
(`bau_hae_lima_preise_anzahl_hae_art_bebauung_jahr_od5144`, Stand 05.02.2026, Daten 2008-2025,
9'908 Zeilen, 47 Gebiete bis auf Quartiersebene, mit **Fallzahlen**). Entscheidend ist die Reihe
**«Preis pro m2 Grundstuecksflaeche abzgl. Versicherungswert»** — eine Bodenpreis-Naeherung, die
methodisch die Umkehrung der Realwert-Formel ist. Heruntergeladen, ausgewertet und mit **vier
Vorbehalten** in [[lageklasse-landwertanteil]] eingearbeitet (Stadt 2025: EFH 4'879 / MFH 6'627
CHF/m2 bei 110/165 Handaenderungen; Quartiersspreizung Fluntern EFH 7'726 gegen Affoltern 2'483,
Faktor rund 3). **Ausserhalb der Stadt bleibt D2 offen und hoch** — die JANS-Kerngemeinden liegen
am Seeufer, im Bezirk Horgen und in SZ. Nebenwirkung: der seit 06.2026 offene Punkt
«LK-Beispielrechnung gegen Bodenpreis-Vergleichswert spiegeln» ist fuer Stadtzuercher Objekte
jetzt durchfuehrbar (nicht ausgefuehrt — es fehlt ein JANS-Fall in der Stadt Zuerich).

**Geprueft, kein Befund:** Ertragswert/DCF (Marktanker aktuell; der ⚠-Vermerk zum Basiszinssatz
bleibt bewusst als Anwendungsvorbehalt stehen — der SNB-Datenwuerfel fuer Hypothekarzinssaetze war
ueber die geprueften Cube-IDs nicht auffindbar, geraten wird nicht), Vergleichswert/hedonisch
(Anker frisch seit 13.08.2026), Residualwertmethode (Methodenartikel, marktsensitive Inputs haengen
an den beiden anderen Artikeln und sind dort geprueft).

**Bewusst nicht angefasst:** T-Regelgeschoss (Fachentscheid Raphael), T-Umlaut (review-pflichtig,
kein Massenersatz — neu geschriebener Text dieses Laufs verwendet echte Umlaute), Neurechnung der
Richtwerte-Tabelle auf 1.358 (haengt an D15).

**Werkzeug-Befund Station Revendo:** pdftotext/poppler fehlen; die PDF-Belege waren zunaechst
unlesbar. Behelf: `pypdf` in einem Scratchpad-venv — flüchtig. Empfehlung `brew install poppler`;
nicht selbst installiert (Systemaenderung).

Geaenderte Dateien: `wiki/realwert-sachwert.md`, `wiki/lageklasse-landwertanteil.md`,
`wiki/datenquellen-registry.md`, `wiki/wissensluecken.md` (D15 neu, D2 teilweise geschlossen,
Run-Eintrag). Report:
`outputs/2026-08-23_vertiefungslauf-2-teuerungsanker-ziw-bfs.md`.

## 2026-08-23 (Vertiefungslauf Kennwerte/Verfahren, Auftrag Raphael)

Auftrag: die vier Verfahrensartikel (Realwert, Ertragswert/DCF, Vergleichswert/hedonisch,
Residual-Landwert) auf Aktualität und Belegstand prüfen, offene Fragen wo belegbar schliessen,
Bring-Schulden klar markiert offen halten statt raten.

**Befund vorab:** die KB ist durch die Runs 1-52, mehrere Wissens-Chef-Cross-KB-Läufe und den
Health-Check vom 22.08.2026 bereits sehr weit verifiziert — alle tragenden Rechenketten der vier
Verfahrensartikel wurden in den Runs 18-22 per Modell-D-Recompute gegen die Primärquellen
gegengelesen und bestanden. Ein weiterer Vollverifikations-Pass ohne neues Rohmaterial wäre
Wiederholung; die Prüfung dieses Laufs hat sich deshalb auf (a) Marktanker-Aktualität, (b) eine
gezielte Stichprobe bei einer der als "hängig" geführten Rechtsgrundlagen und (c) Registerpflege
konzentriert.

**Neu belegt:**
- **SMG/Homegate-Mietindex Juli 2026 = 134 Punkte** (0 % MoM, +2.4 % YoY, publ. 13.08.2026) —
  erster MoM-Rückgang in 15 von 26 Kantonen seit Beginn der in [[investorenmarkt-makro]]
  geführten Beobachtungsserie (Run 51); mit einem Datenpunkt nicht als Trendwende zu werten,
  aber als möglicher Frühindikator vermerkt. Primärquelle direkt gegengelesen.
- **Zollikon-BZO-Teilrevision materiell weiterentwickelt:** die Gemeindeversammlung hat die
  Revision am 03.12.2025 mit Änderung angenommen (bisheriger KB-Stand: "Gemeinderat-Beschluss
  20.08.2025, noch nicht in Kraft" — das war der Stand vor der Volksabstimmung). Die amtliche
  Rechtssammlung der Gemeinde führt zum Web-Check-Zeitpunkt (23.08.2026) weiterhin **Stand
  5.4.2013** als gültig — Rechtskraft/kantonale Genehmigung ist damit weiterhin offen, die in
  [[az-gfz-kennwerte]] hinterlegte Grundmass-Tabelle bleibt unverändert korrekt. Nur der
  Zwischenstand ist nachgeführt, keine Kennwerte geändert.

**Registerpflege (kein neuer Fachbefund):** die vom Health-Check 22.08.2026 gemeldete veraltete
Klammer-Angabe in [[wissensluecken]] D1 ("Langnau am Albis ganz fehlend") ist entfernt — der
Fact-Sheet-Artikel [[marktdaten-gemeinden/zh-langnau-am-albis-8135]] existiert seit Längerem und
ist `established` (Stand 12/2025).

**Geprüft, kein neuer Fund:** BWO-Referenzzinssatz (nächste Publikation 01.09.2026, turnusgemäss
noch nicht fällig), BFS-Baupreisindex (nächste Erhebung 01.10.2026, halbjährlich, noch nicht
fällig), SNB-Leitzins (nächster Entscheid 24.09.2026). Kein neuer JANS-Bewertungsfall — der
IMMO-01-Projektordner enthält zwar einen zuvor in dieser KB nicht erwähnten Ordner "8155
Niederhasli … CS Controlling Sensitivität", dessen Dateien datieren aber auf 11.08.2025 (älter
als der bekannte jüngste Fall Wangen 8855, 06.2026) — kein neuer, sondern ein bereits
bestehender Altfall.

**Bewusst nicht angefasst:** T-Regelgeschoss (Fachentscheid Raphael 0.70 vs. 0.75, needs-decision-
Box in [[realwert-sachwert]] unverändert in Kraft) und T-Umlaut (KB-weite ae/oe/ue-Schreibung,
review-pflichtig, dedizierter wissenscheck-Phase-2-Lauf nötig — kein blinder Massenersatz). Alle
Bring-Schulden D1 (teilw. geschlossen s.o.)/D2/D5/D7/D9/D10/D12/D13/D14 bleiben unverändert als
solche markiert offen — keine davon ist ohne Material/Zugang von Raphael autonom schliessbar.

Geänderte Dateien: `wiki/investorenmarkt-makro.md` (SMG-Update, `last_updated`/Quellen
nachgeführt), `wiki/az-gfz-kennwerte.md` (Zollikon-Zwischenstand, `last_updated` nachgeführt),
`wiki/wissensluecken.md` (D1-Korrektur, neuer Run-Eintrag). Report:
`outputs/2026-08-23_vertiefungslauf-kennwerte-verfahren.md`.

## 2026-08-22 (Wissens-Health-Check, Nachtschicht Mac Mini, Phase 1) — A1 · B0 · C0 · D3 · E1 · F2 · G1

Erster systematischer 7-Audit-Check seit dem Sammellauf 03.08.2026 (Prioritaet 6, da alle
Nachtschicht-Prioritaeten 1-4 gesaettigt waren). Kein neuer materieller Befund: T-Regelgeschoss
(A) und T-Umlaut (F, jetzt mit Datei-Verteilung lokalisiert: ertragswert-dcf.md 56 / realwert-
sachwert.md 31 / weitere) bleiben bekannt-offen. Drei Backlink-/Orphan-Verdachtsfaelle eines
mechanischen Erstpasses als falsch-positiv verworfen (Unterordner-Pfade, Cross-KB-Links).
Einzig neuer Punkt: D1 in `wissensluecken.md` haelt "Langnau am Albis fehlt" faelschlich offen,
obwohl der Fact-Sheet-Artikel seit laengerem existiert und established ist — Registerpflege,
nicht selbst ausgefuehrt (Phase 2 unbeaufsichtigt nicht gelaufen). Voller Report:
`outputs/2026-08-22_health-check.md`.

## 2026-08-19 (Wissens-Chef Run 37, Cross-KB) — Fassungsvermerk zum Glied «SIA 416/1»; die massgebende SIA 416:2003 bleibt unberuehrt

- **`wiki/flaechendefinitionen-sia.md`:** Der Satz «Massgebend ist **SIA 416** …; fuer
  Flaechenbedarf/Programm ergaenzend SIA 416/1 und SIA 2024» hat einen Fassungsvermerk erhalten,
  der **ausschliesslich** das Glied «SIA 416/1» betrifft: diese Ergaenzungsnorm ist zurueckgezogen
  (gueltig 01.07.2007 bis 31.03.2015). Belegt an zwei Primaerquellen (Normen-Nacht Run 57, 19.08.2026): SIA-Shop-Produktdatenblatt
(«archivierter Titel», mit Enddatum) und Titelblatt der **SIA 380:2015** (SN 504380:2015),
das woertlich «Ersatz fuer SIA 416/1:2007» traegt. **SIA 380:2015 liegt nicht im Haus** —
Beschaffung ist Bring-Schuld (Ticket `N57-2` in `wissen/normen/wiki/QUESTIONS.md`); die
Fundstellen sind deshalb **nicht** umgehaengt, sondern nur mit Fassungsvermerk versehen.

- **Bewusst eng gehalten.** Kein Vermerk im Frontmatter-Titel (Z. 2) — ein Titel ist kein
  Fundstellenort, und er nennt beide Normen in einem Atemzug. Die gesamte SIA-416:2003-Hierarchie
  des Artikels (GSF/GF/NGF/NF/HNF/NNF/VF/FF/KF, Volumen GV/NGV/KV/AKV) ist **unberuehrt gueltig**
  und wurde nicht angefasst; ein globales Ersetzen auf «SIA 416» waere hier der Fehlertyp aus Rule
  `auto-verbesserungen` 260811 gewesen (~25 Zeilen der Datei handeln von der gueltigen Norm).
- **Nebenbefund, nicht geaendert:** «fuer Flaechenbedarf/Programm ergaenzend SIA 416/1» ist auch
  fachlich schief — SIA 416/1 fuehrt «Kennzahlen fuer die Gebaeudetechnik»; Raumnutzungsdaten
  liefert **SIA 2024**. Im Vermerk benannt, der Satz selbst unveraendert.
- **Kontext:** Der am 18.08. von Run 36 gesetzte Backlink auf `[[sia-416-1-2007]]` zeigte seit dem
  19.08. auf ein Destillat mit Rueckzugs-Warnkasten. Der Backlink bleibt richtig — er fuehrt jetzt
  zur Warnung statt an ihr vorbei.

## 2026-08-18 (Wissens-Chef Run 36, Cross-KB) — Backlink auf das SIA-416/1-Destillat gesetzt

- `wiki/flaechendefinitionen-sia.md` nannte **SIA 416/1** im Fliesstext, ohne auf die
  Norm-Fundstelle zu zeigen. Seit Run 56 fuehrt die KB `normen` dazu ein eigenes Destillat
  (`sia-416-1-2007.md`); im Feld `links:` ergaenzt.
- **Kein inhaltlicher Befund.** Die in Run 35 gegen diesen Artikel erhobene Meldung
  («SIA 416/1 als Flaechenbedarfs-Norm zitiert») war bereits damals widerlegt; das neue
  Destillat bestaetigt die Rollenzuweisung «massgebend SIA 416, ergaenzend SIA 416/1» erneut.

## 2026-08-17 (Wissens-Chef Run 35, Cross-KB) — ZIW-Indexstand ueberholt, Fuehrung an `grobkosten`; zwei Meldungen gegen diese KB widerlegt

- **`wiki/realwert-sachwert.md`:** Die Stuetzstelle **01.04.2025 = 1210.4** (HEV-SZ-Reproduktion,
  Stand 14.07.2026) ist nicht mehr die juengste. `grobkosten/wiki/kennwerte` Z. 361-363 hat am
  17.08.2026 den Stand **01.10.2025 = 116.1 Punkte (Basis April 2020 = 100)** direkt an der
  **Primaerquelle** Stadt Zuerich verifiziert (≈ 1'213.5 auf Basis 1939 = 100). Vorbehalt gesetzt,
  **Fuehrung fuer den ZIW-Indexstand an `grobkosten` abgegeben** — diese KB verweist dorthin, statt
  die Reihe parallel zu pflegen. 12/0.
- **Die Tab.-2-Richtwerte wurden bewusst NICHT neu gerechnet.** Die Umstellung verschoebe sie um
  rund 0,3 %, weit innerhalb der ohnehin gefuehrten Bandbreite; eine Neurechnung gehoert in die
  regulaere Ueberarbeitung, nicht in einen Koordinationslauf.
- **Zwei Meldungen gegen diese KB WIDERLEGT, keine Aenderung:** (1) `wiki/flaechendefinitionen-sia`
  Z. 13 zitiere SIA 416/1 faelschlich als Flaechenbedarfs-Norm — der Satz sagt «massgebend ist
  SIA 416; **ergaenzend** SIA 416/1 und SIA 2024», also genau die richtige Rollenteilung, und
  Anhang A der 416/1 ist tatsaechlich programmrelevant. (2) der Konflikt HNF/GF 0,70 gegen 0,75 sei
  hier ungeflaggt — er ist es nicht: `realwert-sachwert` Z. 222-231 traegt eine eigene
  ⚠-needs-decision-Box, `wissensluecken` Z. 30 das Ticket `T-Regelgeschoss` samt Sperrklausel
  «keine der beiden Stellen still umstellen». Der Melder hatte den **Beleg**-Ort mit dem
  **Vorbehalts**-Ort verwechselt; seine vorgeschlagene Warnung haette die Sperrklausel verletzt.
- Bericht: `wissen/koordination/outputs/2026-08-17_wissens-chef-run35.md`.

## 2026-08-13 (Marktpuls VORGEZOGEN, MacBook Pro) — SREBI Q2-2026, BFS-IMPI neu in der KB, LIK 07.2026; zwei methodische Befunde; die zwei Stichtags-Werte bewusst offen gelassen

**Einordnung zuerst, weil sie das ganze Ergebnis rahmt: dieser Lauf fand 19 Tage VOR seinem
Stichtag statt.** Der One-Time-Task `immobewertung-marktpuls-260901` traegt `fireAt`
**01.09.2026**, `nextRunAt` 01.09.2026 und **kein `lastRunAt`** — er hat nie gefeuert und ist
**nicht verbraucht**; der Lauf wurde vorgezogen ausgeloest. Der Task-Prompt behauptet «Stichtag
01.09.2026 — das ist heute»; das gemessene Datum ist **2026-08-13 01:00 CEST** (`date`, Rule
260730b: das Arbeitsdatum kommt nie aus einem Dateiinhalt). Alle Eintraege dieses Laufs sind
deshalb auf **13.08.2026** datiert, nicht auf den Stichtag, und der Report heisst
`outputs/2026-08-13_immobewertung-marktpuls-vorgezogen.md` statt `2026-09-01_…`.

**Konsequenz, nicht Formalie:** der Stichtag 01.09.2026 ist genau der Tag, an dem die BWO ihre
Quartalspublikation veroeffentlicht. Die zwei Werte, fuer die der Termin gewaehlt wurde, waren
heute nicht abrufbar und wurden **nicht geschaetzt**.

**Neu belegt (drei Werte):**

- **UBS SREBI Q2-2026 = 0.72** «moderat» (publ. 06.08.2026), dritter Anstieg in Folge; Begleit-
  zahlen Wohneigentum +3.6 % YoY, Angebotsmieten +2.4 %, Bestandesmieten +1.1 %; UBS-Prognose
  2026 von +3 % auf **+3.5–4.0 %** angehoben. → `wiki/investorenmarkt-makro.md`. Status
  `emerging` (PDF-Primaerquelle nicht frei abrufbar, Medienberichterstattung gegengelesen).
- **BFS-Wohnimmobilienpreisindex IMPI Q2-2026 = 127.7** (Q4-2019 = 100; +0.7 % QoQ, **+3.5 %
  YoY**; EFH −0.4 % QoQ, ETW +1.6 % QoQ; staedtisch +1.8 %, laendlich stabil; publ. 30.07.2026).
  **Erstmals in der KB gefuehrt** — neuer Abschnitt in `wiki/vergleichswert-hedonisch.md`, neue
  Zeile in `wiki/datenquellen-registry.md`.
- **LIK Juli 2026 = 101.1**, −0.1 % MoM, **Jahresteuerung 0.4 %** (Juni 0.5 %, Mai 0.6 %).
  → `wiki/investorenmarkt-makro.md` und `wiki/ertragswert-dcf.md`.

**Zwei methodische Befunde — der eigentliche Ertrag des Laufs:**

1. **Der SREBI wird rueckwirkend revidiert.** Die Q2-Publikation weist Q1-2026 mit **0.62** aus,
   waehrend die Mai-Publikation **0.69** meldete («Anstieg um 0.23 auf 0.69», 07.05.2026,
   mehrfach unabhaengig belegt). Der bisherige KB-Wert war zu seinem Datenstand korrekt und ist
   **ueberholt, nicht falsch erfasst**. Daraus **Nutzungsregel 5** in
   `wiki/datenquellen-registry.md`: Index-Reihen nie ohne Publikationsdatum zitieren, nie Werte
   aus zwei Publikationsstaenden in derselben Zeitreihe mischen.
2. **IMPI und WP widersprechen sich beim EFH-Quartalswert** Q2-2026: amtlich **−0.4 % QoQ**
   gegen WP **+1.5 % QoQ**. Kein Fehler einer der Reihen, sondern Methodendifferenz
   (beurkundete Handaenderungen vs. hedonisches Modell mit Angebotsdaten); beim **YoY** liegen
   IMPI +3.5 %, WP +4.3 % und UBS +3.6 % nahe beieinander. Daraus die Arbeitsregel: **YoY statt
   QoQ** fuer Trendaussagen, **Bandbreite nennen** statt den bequemeren Wert, Publikationsstand
   mitfuehren. → `wiki/vergleichswert-hedonisch.md`, `wiki/datenquellen-registry.md`
   (Nutzungsregel 6).

**Alle drei Verfahrensartikel geprueft (Auftragspunkt 3):**

- `wiki/ertragswert-dcf.md` — Inflationsanker auf 0.4 % (07.2026) nachgefuehrt. Die
  **Langfrist-Annahme ~1.0 % bleibt bewusst stehen**: der Rueckgang ist energie-/saisongetrieben,
  und ein Langfrist-Anker, der jedem Monatsausschlag folgt, ist keiner. Absenkung Richtung
  0.7–0.8 % erst bei anhaltend tieferem Niveau oder gesenkter SNB-Prognose (Bedingung notiert).
- `wiki/vergleichswert-hedonisch.md` — neuer IMPI-Abschnitt samt Divergenztabelle und
  vierteiliger Arbeitsregel.
- `wiki/realwert-sachwert.md` — **geprueft, keine Aenderung noetig**, und das ausdruecklich
  vermerkt statt still uebersprungen: SREBI und IMPI sind Preisreihen fuer Wohneigentum und
  treffen den Vergleichswert, nicht die Erstellungskosten; der **LIK ist nicht der
  Baupreisindex**. Die massgebenden Anker (BFS-Baupreisindex April 2026 = 100.6, ZIW-Reihe
  Publikationsstand 01.01.2026) sind unveraendert. Naechster Anlass: Baupreisindex **Dez-2026**.

**Unveraendert bestaetigt:** SNB-Leitzins **0.00 %** (seit 18./19.06.2026 keine Sitzung; naechste
**24.09.2026**, dann 10.12.2026), BWO-Referenzzinssatz **1.25 %** (seit 02.09.2025, bestaetigt
02.06.2026), massgebender Durchschnittszinssatz **1.31 % per 31.03.2026**, BFS-Baupreisindex
April 2026 = 100.6, SMG-Mietindex Juni 2026 = 134.0 (Juli-Wert noch nicht publiziert).

**Bewusst NICHT gefuellt (nicht publiziert zum Laufdatum):** BWO-Referenzzinssatz-Publikation
**01.09.2026** samt Durchschnittszinssatz per Stichtag 30.06.2026, und **BFS-Leerwohnungsziffer**
zum Stichtag 01.06.2026 (Publikation September; letzter Stand 01.06.2025 = 1.00 %, 48'455
Wohnungen, ZH 0.48 %). Die Bring-Schulden Raphaels (UBS-FS-Quantile, Bodenpreise,
Diskontsatz-Tools, Excel-Tools) wurden **nicht** durch Schaetzwerte ersetzt.

**Register:** `wiki/INDEX.md` (zwei Zeilen nachgefuehrt), `wiki/wissensluecken.md` (neue
Bring-Schuld **D14** «kein WP-unabhaengiger Gegencheck der Preis-NIVEAUS» — die
Entwicklungs-Seite ist durch den IMPI geschlossen, die Niveau-Seite bleibt vollstaendig
WP-basiert; ueberschneidet sich mit D2 und ist sinnvollerweise zusammen zu loesen), Erledigt-
Eintrag 13.08.2026. Der Task `immobewertung-marktpuls-260901` bleibt **scharf auf 01.09.2026**.

## 2026-08-08 (interaktiv, Mac Mini) — SharePoint-Bibliothek «02 UBSFS» heisst neu «02 Standort INFO»; Pfad-Verweise nachgezogen

Die Dokumentbibliothek IMMO/«02 UBSFS» wurde am 07.08.2026 auf SharePoint in **«02 Standort
INFO»** umbenannt (List-Id und URL `/sites/IMMO/02 UBS FS` unveraendert). Der lokale
OneDrive-Sync traegt seit 08.08.2026 ebenfalls den neuen Ordnernamen. In den lebenden
Wiki-Artikeln wurden die Pfad-Verweise aktualisiert (`wiki/marktdaten-gemeinden/README.md`,
`wiki/vergleichswert-hedonisch.md`): `IMMO - 02 UBSFS` → `IMMO - 02 Standort INFO`.
Historische Eintraege in CHANGELOG und datierten outputs/-Reports bleiben unveraendert
(Beleg-Charakter).

## 2026-08-07 (Wissens-Chef Run 28, Feld E-kennwerte) — UBS-FS als WP-Derivat kenntlich gemacht; Kennwert-Vorbehalt an die Abholstelle gesetzt

Rein additiv, kein Wert geändert, keine Tabelle und kein Artikel umgeschrieben. Die
Bereinigung des JANS-Original-Blatts bleibt **D10** bei Raphael.

- **`wiki/projektstruktur-deliverables.md`, Referenzobjekte des Rasters (WALD/Averecura):** Die
  Zeile zitierte **1'420 CHF/m3 GV / 4'250 CHF/m2 GF** ohne den seit 06.08.2026 mitgeführten
  Nichtreproduzierbarkeits-Vorbehalt; wer nur diesen Absatz liest, nahm die Werte als belegte
  Referenzgrösse mit. Neu steht der Vorbehalt unmittelbar an der Zitatstelle, samt Nachrechnung
  aus denselben Rohgrössen (12.34 Mio / 9'600 m3 = **1'285**, / 3'100 m2 = **3'981**), Verweis auf
  [[realwert-sachwert]] (Rohband 826-1'285, ausdrücklich kein neuer geltender Band) und
  [[wissensluecken]] D10 sowie dem Hinweis, dass der geltende Healthcare-Ansatz des Artikels
  ~1'100 CHF/m3 GV bzw. ~3'850-4'000 CHF/m2 GF ist. **Die Zahlen 1'420 und 4'250 bleiben als
  getreue Abschrift unverändert stehen.** (Befund war als WIDERSPRUCH gemeldet, ist verifiziert
  ein reiner Vorbehalts-/Querverlinkungsbefund, KB-intern, Schwere niedrig.)
- **`wiki/vergleichswert-hedonisch.md`, Abschnitt «UBS-FS vs. WP-Standortreport»:** ergänzt (nicht
  umgeschrieben) um den Befund, dass laut Quellenverzeichnis des UBS RE LFS (Exemplar Wangen SZ
  12/2025, S. 13) auch Immobilien- und Baulandpreise, Angebotsmenge/-ziffer,
  Marktabsorptionspotenzial und Insertionsdauer von **Wüest Partner** stammen. UBS-FS und
  WP-Standortreport sind für Preisspektren dasselbe Datenuniversum, kein unabhängiger
  Zweitbeleg; echte Zweitmeinung nur IAZI/CIFI oder kantonale Handänderungsstatistik. Mit
  ausdrücklicher Trennung **Nettoangebotspreise (LFS-Preisstatistik) ↔ transaktionsbasiertes
  hedonisches Modell (Abschnitt T7)**, damit der Verweis keinen Scheinwiderspruch zum
  Hedonik-Absatz erzeugt. Faustregel unverändert gültig. Pfadverweis auf
  `outputs/2026-08-07_iazi-location-report-vs-ubs-lfs-wp-standortinfo.md` gesetzt (der Report war
  bis dahin im ganzen Hub nur im CHANGELOG erwähnt).
- **`wiki/datenquellen-registry.md`, Zeile «UBS Real Estate Fact Sheets»:** Bemerkungsspalte um
  denselben WP-Herkunftsvermerk plus Pfadverweis auf den Report und [[vergleichswert-hedonisch]]
  ergänzt. Die Herkunftsaussage wird materiell in dieser KB geführt.
- **Ausserhalb `wissen/`: `skills/machbarkeit/wissensbasis/03_wirtschaftlichkeit-residualwert.md`,
  Z. 22:** Der Satz «Gegenkontrolle immer über UBS-Fact-Sheet (Baulandpreis/m²) + Makleranalyse.»
  bleibt **wörtlich unverändert** (inkl. «immer»); angehängt ist nur der Vorbehalt, dass das
  Fact-Sheet keine von WP unabhängige Zweitquelle ist, der Baulandpreis selbst
  residualmethodisch modelliert ist und die Makleranalyse die unabhängige Komponente bleibt.
  Verweis bewusst auf den Wiki-Artikel `wissen/immobilienbewertung/wiki/vergleichswert-hedonisch.md`
  statt auf den tagesdatierten Report (Konvention `02_kennwerte-kosten.md:32/39`). Die ROI-Zeile
  (Marktwert über UBS-FS) wurde **nicht** angefasst: dort wird eine Datenquelle benannt, kein
  Unabhängigkeitsanspruch erhoben.

## 2026-08-07 — Quellenvergleich IAZI Location Report vs. UBS RE LFS vs. WP Standortinformation

Neuer Report `outputs/2026-08-07_iazi-location-report-vs-ubs-lfs-wp-standortinfo.md`
(Anlass: Prüfung IAZI-Landwertbericht 6340 Baar 1Q26). Kernbefunde: UBS-LFS-Preisdaten
stammen von Wüest Partner (LFS = WP-Derivat, kein unabhängiger Gegencheck); IAZI ist das
einzige transaktionsbasierte zweite Datenuniversum; IAZI-exklusiv sind Landwert-Matrix
(Ausnützung × 5 Lageklassen, EFH+MFH), Mikrolage-Quantile und Leerstand je Zimmerzahl.
Nova-Fonds (SCCREF/Novavest) werden durch WP bewertet (Diskontsätze 2.55 %/2.85 % FY2025).

## 2026-08-06 (Cross-KB-Lauf Run 27) — Vorbehalte an die Stelle gesetzt, an der abgeholt wird; BKP-Scope neu als D13

Rein additiv, kein Wert geändert, keine Tabelle angefasst (das JANS-Original-Blatt zu bereinigen
bleibt D10 bei Raphael).

- **`wiki/realwert-sachwert.md`, Abnehmer-/Übergabeblock der Healthcare-Bänder:** Der Vorbehalt zu
  den nicht reproduzierbaren Rohwerten stand 12 bis 14 Zeilen unter dem Block und reiste beim
  Weiterreichen nicht mit. Neu steht **im Block selbst**, dass der obere Endpunkt 1'420 (Averecura)
  und die Vella-Zeile quellenintern nicht reproduzierbar sind (recompute 1'285 bzw. 1'021; die
  übrigen sechs Zeilen reproduzieren exakt) und der reproduzierbare **Rohband 826-1'285 CHF/m3 GV**
  lautet — ausdrücklich als Rohband, **nicht** als neuer geltender Band (Entscheid Raphael).
  Derselbe Vorbehalt ist im Lauf an den zwei anderen Zitierstellen nachgetragen worden:
  `wissen/entwurfs-referenzen/.../healthcare-neubau-zh.json` (die tatsächlich gelesene Kopie) und
  der Kopfblock von `wissen/grobkosten/wiki/kennwerte.md`. Vermerkt in **D10**.
- **`wiki/realwert-sachwert.md`, Tab. 2 (Neuwert-Richtwerte):** Vorbehalt zum **BKP-Scope** der
  Fremdtabelle unmittelbar unter die Tabellen-Überschrift gesetzt (Quelle nennt nur «Baukosten je
  m3 umbauter Raum (SIA 116)» ohne BKP-Angabe; Differenz rund 10 %, BKP 2 = 906.3 Promille der
  Gesamtkosten nach Tab. 3). Mit dem für diesen Artikel spezifischen Zusatz: die Realwert-Formel
  addiert Aussenanlagen und Baunebenkosten bereits separat, unter der Lesart BKP 1-9 drohte
  Doppelzählung. **Bewusst NICHT** als Punkt 3 in den Doppelführungs-Block (D12) aufgenommen — das
  ist keine Divergenz der zwei KB-Stände, sondern eine Eigenschaft der Fremdquelle.
- **`wiki/wissensluecken.md`:** neue Lücke **D13** (BKP-Scope Tab. 2 ungeklärt, Priorität mittel,
  Abgrenzung zu D12 benannt) — die Frage war bisher nur in `wissen/grobkosten` registriert, diese
  KB als zweite führende Stelle kannte sie nicht. D10 um den Mitführungs-Vermerk ergänzt.
- **`wiki/realwert-sachwert.md`, Healthcare-Umbau-Kostenband:** Abnehmer-Vermerk gesetzt (Skill
  `kostenschaetzung`, Abschnitt «Reduktionsfaktoren Umbau/Sanierung») — der Skill kannte das Band
  bis heute nicht. **Keine Führungsübertragung:** die Rollen-Matrix begrenzt die Führung von
  `kostenschaetzung` auf den Wüest-Benchmark, dieses Band ist JANS-Eigenmaterial und bleibt hier
  geführt; im selben Zug ist der Satz «für CHF/m2 NF führt der Skill kostenschaetzung» um genau
  diese Abgrenzung präzisiert.

## 2026-08-05 (Wissens-Chef Run 26, Cross-KB) — Run-25-Wertung zum Wuest-Faktor 0.70 richtiggestellt, echter Abnehmer gefunden

Der Befund wurde adversarial verifiziert und dabei **gedaempft**: Run 25 hatte die Wuest-Referenz
`:32` als «Regelgeschoss-Faktor 0.70 unkommentiert» eingeordnet und daraus geschlossen, der
kanonische Entscheid vom 12.07.2026 habe «einen Abnehmer nie erreicht». Beides traegt nicht.

- **Primaerquelle gelesen** (Wueest-Academy-Folie S. 34): Das 0.70 dort ist die
  **Effizienzannahme der Quelle selbst** innerhalb ihrer eigenen Herleitung («2'800 / 0.70 HNF
  Effizienz = CHF 4'000 /m2 HNF»), kein angewandter JANS-Faktor. Und die Stelle rechnet einen
  **Ganzgebaeude**-Benchmark um, kein Regelgeschoss — sie ist gar kein Abnehmer dieses Entscheids.
  Aendern haette das Zitat verfaelscht und die Konvergenz der drei Herleitungen der Quelle auf
  rund 4'800 (Folien S. 33/34/35) zerstoert. Auch die Richtung stimmte nicht: der «korrigierte»
  Wert waere 4'301 bis 4'590 gewesen, also **hoeher** statt tiefer.
- **`wiki/wissensluecken.md` (T-Regelgeschoss)** und **`wiki/realwert-sachwert.md`** (Blockzitat
  des Run-25-Nachtrags): Richtigstellung je **angehaengt**, kein Wort des datierten Bestands
  ueberschrieben. Dazu in `realwert-sachwert.md` der Zusatz «(Annahme der Quelle)» an der
  0.70-Stelle; Zahl unveraendert.
- **Der echte Abnehmer lag eine Tabelle weiter:** **Zeile 96** derselben Referenz fuehrt
  «Umrechnung | HNF ≈ 0.70 × GF» ausdruecklich als **JANS-Richtwert** und **ohne Bezugsgroesse**,
  in einer Tabelle mit Ganzgebaeude-Richtwerten — dort waere nach dem kanonischen Entscheid
  0.60-0.61 einschlaegig, nach dem eigenen Datensatz 0.65. **Zahl nicht geaendert** (haengt am
  Fachentscheid), gesetzt ist ein Vorbehaltsblock in der Referenz und ein Nachtrag im Ticket.
- **Der Fachentscheid 0.70 gegen 0.75 bleibt unveraendert offen** und ist durch diesen Lauf weder
  gestuetzt noch erledigt — er gewinnt aber eine zweite, kostenwirksame Facette (welcher Faktor
  steht in der Richtwert-Tabelle, und mit welcher Bezugsgroesse).

Bericht: `wissen/koordination/outputs/2026-08-05_wissens-chef-run26.md`.

## 2026-08-04 (Wissens-Chef Run 25, Cross-KB) — Doppelfuehrung Tab. 2 benannt, HNF/GF-Zeiger gesetzt, Preisstand-Vermerk WALD-Anker

- **`wiki/realwert-sachwert.md`, Neuwert-Richtwerte CHF/m3 (Befund F6-kennwerte-V1, verifiziert
  am Original-PDF `schaetzungsanleitung_kap5.pdf`, `pdftotext -layout`, 04.08.2026):**
  Vorbehalts-Block unter die aufindexierte Tabelle gesetzt. Er benennt die Doppelfuehrung
  derselben Fremdtabelle in dieser KB und in `wissen/grobkosten/wiki/kennwerte.md`
  (Abschnitt «Run 12»), die dortige Beschraenkung auf die BandUNTERgrenze — die hier gefuehrte
  **Bandlesart ist am Original bestaetigt** (je Bauklasse zwei Zahlen unter EFH wie unter MFH)
  — und die Abweichung der Teuerungsfaktoren 1.346 (Anker 01.04.2003 = 899.2) gegen 1.334
  (Anker 01.04.2004 = 907.6) von rund 1 %. **Keine Zahl geaendert.**
- **`wiki/wissensluecken.md`:** neue Zeile **D12** (Entscheid Raphael: welcher Teuerungsanker
  gilt hub-weit, und wird die Doppelfuehrung durch einen reinen Verweis ersetzt). Empfehlung
  des Verifikators 1.346 / 01.04.2003 wegen der Fusszeile «Stand 2003» im Tabellenkopf; die
  Alternative bleibt als benannte Unsicherheit von rund 1 % stehen. Spiegel-Eintrag in
  `wissen/grobkosten/wiki/QUESTIONS.md`.
- **HNF/GF-Regelgeschoss (Befund F6-kennwerte, Meldung 4):** In der `needs-decision`-Box von
  `wiki/realwert-sachwert.md` nachgetragen, dass der kanonische Entscheid vom 12.07.2026 und
  das Flag vom 25.07.2026 die fuehrende Wuest-Benchmark-Referenz
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md:32` nie
  erreicht haben — dort steht 0.70 unkommentiert. Zeile `T-Regelgeschoss` in
  `wiki/wissensluecken.md` entsprechend erweitert. **In der Skill-Referenz selbst wurde nicht
  geschrieben** (fremder Zustaendigkeitsbereich in diesem Lauf); die Gegenrichtung bleibt offen.
- **Preisstand-Vermerk:** Der beilaeufig zitierte WALD-Studienanker «~4'000 CHF/m2 GF» aus
  `skills/healthcare-wirtschaftlichkeit` traegt weder Basisjahr noch Index und ist im
  Healthcare-Abschnitt als **«Preisstand unbelegt»** markiert. Ausdruecklich mit vermerkt: der
  Wert ist inhaltlich **nicht** ueberholt (Neubauten ab 2019 roh 3'561-4'250, teuerungsbereinigt
  3'820-4'485 — der Anker liegt mittig); es fehlt die Datierung, nicht die Groessenordnung.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B6 · C1 · D0 · E0 · F2 · G2

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Fuenf der sechs B-Befunde entfallen auf `wiki/wissensluecken.md` (kein Frontmatter, totes Ziel `[[outputs/…]]`). Fehlende `wiki/QUESTIONS.md` ist bewusste Schema-Abweichung — gehoert in `CLAUDE.md` dokumentiert. **Audit F korrigiert gegenueber 2026-08-01:** die 91 Warnmarker sind durch `CLAUDE.md` Z. 52 vorgeschrieben, kein Deko-Verstoss. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-03 — Korrekturen aus Ultra-Code-Review (Befunde A-D)

- **Befund A (wichtigster Punkt):** `outputs/2026-07-31_ingest-cluster-C-bfs-werkmaterial.md`,
  Abschnitt 1.1 — das «WIDERSPRUCHS-FLAG fuer den Hauptlauf» samt Dekret («Bis ein Beleg
  vorliegt, gilt fuer JANS-Erzeugnisse Basis Okt 2020 = 100») war ein Ingest-Fehler: das
  Archiv (juengstes Dokument Datenstand 30.10.2025) kann die erst im April 2026 publizierte
  Totalrevision naturgemaess nicht enthalten — Abwesenheit im Archiv ist kein Widerspruch zum
  belegten Stand in [[investorenmarkt-makro]] (BFS/fachbau.ch 18.06.2026 Run 15, bestaetigt
  27.07.2026 Run 51). Abschnitt umgeschrieben, Dekret ersatzlos gestrichen: fuer
  JANS-Erzeugnisse gilt die aktuelle Basis Oktober 2025 = 100 (April 2026 = 100.6, +1.0 % YoY);
  alte Reihe (Basis Okt 2020) bleibt als historisches Werkmaterial mit Umrechnungshinweis
  stehen. Folgestelle im selben Report (Abschnitt «Zusammenfassung der Ziel-Zuordnung»,
  Punkt «Nach QUESTIONS.md») hatte dieselbe offene Frage nochmals aufgeworfen — als erledigt
  markiert und auf den Beleg verwiesen.
- **Befund B:** Datei war durchgehend transliteriert (ae/oe/ue statt ä/ö/ü, Rule
  `umlaute-konvention`). Die Entscheids-/Flag-/Merkhilfe-Passagen (Widerspruchs-Flag,
  Empfehlungen an den Hauptlauf, offene Fragen, innere Widersprueche, Zusammenfassung der
  Ziel-Zuordnung, Handlungsbedarf ausserhalb der KB) sind auf echte Umlaute umgeschrieben.
  **Offener Punkt:** die vollstaendige Konversion des rund 1'270-zeiligen Fliesstexts (v.a.
  die Objektbeispiele A-J und Kapitel 1.4-1.9) wurde aus Budgetgruenden nicht abgeschlossen.
  Dieselbe Transliteration betrifft auch die Schwesterdatei
  `outputs/2026-07-31_ingest-cluster-E-projekte.md` (ungeprueft, vermutlich vollstaendig
  betroffen). CLAUDE.md Zeile ~58 korrigiert («echte Umlaute ae/oe/ue» → «ä/ö/ü, ss statt ß»).
- **Befund C:** ~Z. 129 — Selbstwiderspruch «Einzige belegte Zahl … unbelegter Ausgangswert»
  aufgeloest (Trotte-Wert CHF 3'907/m2 bleibt unbelegter Ausgangswert; der zweite Wert
  CHF 600/m2, 2008, als rein didaktische Uebungsaufgabe ohne Objektbezug eingeordnet).
- **Befund D:** Abschnitt 1.2, Veraenderungsraten Schweiz (+0.1 %/+0.5 %) gegen die xlsx-Quelle
  `241000 Grundlagen/cc-t-05.05.06.xlsx` (Registerblatt 1) geprueft: Die Raten sind die vom
  BFS selbst publizierten Werte aus ungerundeten Indexstaenden und weichen deshalb von der
  Differenz der gerundeten Tabellenwerte in Abschnitt 1.1 ab. Fussnote ergaenzt.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B2 · C1 · D15 · E0 · F831 · G16

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. 831 ae/oe-Verstoesse in 14 von 16 Artikeln — der hoechste Wert des gesamten Wissens-Layers. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-31 (Wissens-Chef Run 22, Cross-KB) — Protokoll-Nachtrag: Ingest Cluster B, C, D und E waren nie eingetragen

- **[protokollpflicht] Vier von fuenf Ingest-Reports des Laufs vom 31.07.2026 fehlten in diesem
  CHANGELOG.** Eingetragen war nur Cluster A. Die uebrigen vier liegen seit demselben Lauf in
  `outputs/`, wurden aber weder hier noch in `raw/_INGESTED.md` protokolliert — ein Verstoss gegen
  die Protokollpflicht der Rule `wissens-bibliothekar`. Der Cluster-D-Report existierte (01:43)
  bereits, als der Cluster-A-Eintrag geschrieben wurde (01:53), und wurde uebersprungen.
  Nachgetragen (Quellordner je Report im Kopf ausgewiesen):
  - `outputs/2026-07-31_ingest-cluster-B-wuest-partner.md` — `IMMO - 04 Marktpreise/wuest partner/`,
    sechs Quellen gelesen. **Wichtigster Inhalt:** die exakten Quantiltabellen des Berichts
    «Holzbaukennzahlen fuer Investoren» (26.04.2024) auf CHF/m2 HNF (S. 18/36) und CHF/m3 GV (S. 34).
  - `outputs/2026-07-31_ingest-cluster-C-bfs-werkmaterial.md` — BFS-Statistik, werk-material.online,
    Lignum/keevalue/Stadt Zuerich/comparis.
  - `outputs/2026-07-31_ingest-cluster-D-bodenpreise-kennwerte.md` — `IMMO - 05 Bodenpreise` und
    `IMMO - 06 Kennwerte` (Restbestand); KI-Ausgaben darin sind markiert und nach dem Echo-Schutz
    **nicht** als Beleg verwendbar.
  - `outputs/2026-07-31_ingest-cluster-E-projekte.md` — `IMMO - 01 Projekte/{02 STWE, 03 TDD,
    04 CONTROLLING, 05 MASSAUFNAHMEN, _Vorlage}`; enthaelt die Ziel-Zuordnung fuer den Hauptlauf.
- **Status aller fuenf Reports: Report vorhanden, Wiki-Einarbeitung steht aus.** Kein `wiki/`-Artikel
  wurde angefasst (juengste Wiki-Datei 28.07.). Da der Scheduled Task auf `enabled=false` steht und
  der naechste vorgesehene Lauf der 01.09.2026 ist, laegen die Reports sonst rund einen Monat brach —
  deshalb ist die Einarbeitung neu als Ereignis-Trigger in `training/PROGRAMM.md` verankert.
- **Erster Abnehmer hat bereits gezogen:** die exakten Wuest-Quantile aus Cluster B sind am
  31.07.2026 in die fuehrende Referenz `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`
  eingesetzt worden und haben dort die abgelesenen Naeherungswerte abgeloest (oberes Holzbau-Segment
  +44.8 % statt +38 %).

## 2026-07-31 — Ingest Cluster A: `IMMO - 03 KNOW-HOW` gelesen, Report in `outputs/`
- **[ingest]** Neuer Report `outputs/2026-07-31_ingest-cluster-A-knowhow.md` (8 Quellen,
  vollstaendig gelesen, jede Aussage mit Fundstelle).
- **Hauptquelle:** Wüest-Partner-Bewertungsbericht EFH Langenthal (Musterbericht «Beispiel»,
  9 Seiten, 15.04.2020) — Berichtsanatomie, Wertkette 927'000 + 44'000 = 971'000, Skalen und
  Wortanker des Qualitaetsprofils, Standard-Schwellen in CHF (Küche Basic 21'000–40'000,
  Nasszellen Basic 11'000–30'000), Mikrolage-Positionsraster mit Einheiten, vollstaendiges
  Glossar (NWF/BGF, Gebaeudevolumen GVA/SIA 116/SIA 416, Grundstuecksflaeche = Bauzonenanteil,
  Zimmerzaehlregeln, Servitute, ZGB 646-651 / 712a-712t).
- **Negativbefund festgehalten** (gegen spaetere Fehlzitierung): der Bericht enthaelt KEINEN
  Realwert, KEINEN Landwert/Bauwert/Zeitwert, KEINE Altersentwertung, KEINEN Diskont-/
  Kapitalisierungssatz, KEIN DCF, KEINE Verfahrensgewichtung und KEINEN SVKG/SEK/SVIT-Bezug.
- **Kernfund Residualwert:** Sensitivitaetsgesetz «Residuumsfehler = Erloesfehler ÷
  Bodenwertanteil», 45 Tabellenwerte gegen die Identitaet verifiziert (Quelle: Google-Vorschau,
  Urheber unbekannt — als mathematischer Zusammenhang, nicht als empirischer Beleg fuehren).
- **Als fachlich leer gemeldet** (gueltiges Ergebnis, nicht schoengeredet): die drei
  Wuest-Mails (nur Kontakt/Produktlink), `1_Adressen.docx`, `_Link.docx` (eine URL:
  Bodenpreis-Monitoring Stat. Amt ZH, `bfs=293`, Gemeinde unverifiziert) und der
  Mentimeter-Kursfeedback-Screenshot.
- **Vier Screenshots als Laien-/Portalquellen markiert** (ImmoScout24, businessbroker.ch,
  businesstransaction.ch, deutsche-wertbau.de — deutsch, nicht CH): kein Fachbeleg.
- **Fehlablage bestaetigt:** `03 Abzinsung/Bildschirmfoto 2023-12-31 um 22.00.44.png` ist ein
  Planschriftkopf «Quartiergestaltungsplan Reckholderen», Bezirk Einsiedeln, genehmigt
  24.03.1983 Nr. 212 — ohne jeden Bezug zur Abzinsung. Gemeldet, nicht verschoben.
- **Offen fuer den naechsten Lauf:** die eigentlichen Residualwert-Rechenwerkzeuge des
  SIA-Kurses Immo-02-P23D (WP-Praesentation, Residualwert-Projektbewertung.xlsx und
  Pre-Check-Tool je in WP- und Jans-Fassung, Kursnotizen) sowie `06 Schaetzungen/` und
  `07 FLAECHENBEZEICHNUNG/`.
- **Artikel-Vorschlaege:** `hedonischer-bericht-anatomie` (neu) und
  `residualwert-sensitivitaet` (neu oder als Abschnitt in `residualwertmethode`).

## 2026-07-29 — `training/PROGRAMM.md`: Statuskopf «EREIGNIS-TRIGGER» gesetzt (vollgas-chef-radar 12:57)
- **[struktur]** Die Programmdatei trug keinen Hinweis darauf, dass `immobewertung-training` seit
  dem **26.07.2026** (Entscheid Raphael, Registry-Nachzug 27.07.) auf `enabled=false` steht und
  der naechste vorgesehene Lauf der One-Time-Task `immobewertung-marktpuls-260901` zum Stichtag
  **01.09.2026** ist (oder ein realer Bewertungsauftrag).
- **Warum das zaehlt:** die Mac-Mini-Nachtschicht waehlt in **Prioritaet 4** ueber
  `wissen/*/training/PROGRAMM.md` die am laengsten nicht trainierte KB und liest dabei nur die
  Programmdatei, nicht das Task-Register. `immobilienbewertung` stand mit CHANGELOG-Stand
  28.07. 23:35 im vorderen Feld der neun Kandidatinnen.
- **Massnahme:** Statuskopf gesetzt (Ereignis-Trigger, kein gueltiges Ziel fuer Prioritaet 4).
  Kein inhaltlicher Eingriff, keine Aenderung an Takt oder Register.

## 2026-07-28 — Training-Run 52 (Mac Mini Nachtschicht): T-Eidgenossen-Rendite geschlossen

- **[luecke geschlossen]** Die in Run 51 offen gebliebene Luecke **T-Eidgenossen-Rendite**
  (10-j-Eidgenossen-Rendite nicht datumsscharf belegbar, nur undatierte Web-Live-Snapshots
  ~0.32–0.51 %) ist geloest: **SNB-Quartalsheft 2/2026** (publ. 24.06.2026) per PDF-Volltext
  gefunden und gegengelesen (Kapitel 5 «Geld- und Kapitalmarktzinsen»), wörtliches Zitat: «Die
  Rendite zehnjähriger Anleihen der Eidgenossenschaft lag Mitte Juni bei 0,39 % (Mitte März:
  0,34 %)». Amtlich datierter Primaerwert ersetzt die zuvor bewusst nicht uebernommenen
  Live-Snapshots.
- **[artikel] `wiki/investorenmarkt-makro.md`** (`last_updated` 2026-07-27 → 2026-07-28):
  Bullet «Rendite 10-jaehrige Bundesobligation» ersetzt (0.39 %/0.34 % statt Bandbreite),
  Quelle im Frontmatter ergaenzt.
- **[register] `wiki/wissensluecken.md`**: T-Eidgenossen-Rendite als erledigt markiert
  (Konvention wie D-Items, `~~...~~` + Erledigt-Vermerk).
- Kein neuer JANS-Bewertungsfall geprueft (ausserhalb des Aufgabenscopes dieses Laufs,
  Bewertungsordner unveraendert seit Run 51 bekannt). Kein Fan-out, eine WebSearch + ein
  WebFetch (SNB-PDF), Budget ca. 3.60 USD von 5 USD. Bericht:
  `outputs/2026-07-28_training-run52.md`.

## 2026-07-27 — Training-Run 51: Delta-Serie durchbrochen — Marktpuls nach Drossel-Aufhebung reaktiviert

- **[befund/prozess] Die Begruendung fuer 12 aufeinanderfolgende Delta-Null-Laeufe war seit dem
  25.07.2026 hinfaellig.** Die Laeufe 39–50 haben den Marktpuls-Check jeweils mit «Drossel-Rule
  260714» uebersprungen und daraus «kein neuer Befund» geschlossen. Die Drossel wurde am
  25.07.2026 auf Anweisung Raphaels aufgehoben (Rule `auto-verbesserungen` 260725, «Vollgas wieder
  aktiv») — die uebernommene Begruendung wurde danach ungeprueft weitergereicht. Erster Check nach
  Aufhebung liefert sofort **zwei neue belegte Datenpunkte**. Kernlektion: eine aus dem Vorlauf
  uebernommene Auslassungs-Begruendung ist bei jedem Lauf gegen die geltende Rule-Lage zu pruefen,
  nicht zu kopieren.
- **[artikel] `wiki/investorenmarkt-makro.md`** (`last_updated` 2026-07-12 → 2026-07-27, Status
  bleibt `established`), zwei belegte Ergaenzungen, beide an der Primaerquelle gegengelesen:
  - **SMG/Homegate-Mietindex Juni 2026 = 134.0** (+0.3 Pkt / +0.2 % MoM, **+2.5 % YoY**; publ.
    13.07.2026) loest den Mai-Anker 133.7 ab **und bestaetigt ihn implizit** (134.0 − 0.3). Vierter
    Monat in Folge bei +2.5 % YoY. Regionale YoY-Spitzen Nidwalden +8.3 % / Graubuenden +6.7 % /
    Genf +5.3 %; JANS-Kernmarkt Zuerich +3.3 %; groesster Monatssprung **Schwyz +2.3 % MoM**.
  - **⚠ Wuest Partner Immo-Monitoring Q2-2026** (publ. 16.07.2026): **EFH +1.5 % QoQ / +4.3 % YoY**,
    **ETW +1.0 % QoQ / +4.3 % YoY** — erste **Ist-Werte** gegen die Prognose. Die realisierte
    Jahresrate liegt **~1.2–1.5 Pp ueber der Sommerprognose** (EFH +3.1 % / ETW +2.8 %), die
    Prognose wurde nicht revidiert → Prognose und Ist sind auseinandergelaufen. Fuer
    Vergleichswert-/Marktwertansaetze ist die **Ist-Reihe der belastbarere Anker**, die Prognose
    die konservative Untergrenze.
- **[leitplanke] Bewusst NICHT uebernommen:** die Rendite 10-j Eidgenossen. Die Recherche lieferte
  nur undatierte Live-Snapshots (~0.42–0.51 %) ohne Stichtag; der KB-Wert ~0.32–0.40 % (Juni 2026)
  bleibt stehen, die moegliche Aufwaertsabweichung ist als offener Punkt vermerkt statt geraten.
- **[bestaetigt unveraendert]** SNB-Leitzins 0.00 % (Lagebeurteilung 18.06.2026, naechster Entscheid
  24.09.2026), Referenzzins 1.25 % (bestaetigt 02.06.2026, naechste Publ. 01.09.2026),
  Durchschnittszinssatz 1.31 % per 31.03.2026, BFS-Baupreisindex April 2026 = 100.6 (naechste
  Publ. Okt-2026), SREBI Q2-2026 weiterhin nicht publiziert (Q1 = 0.69 bleibt Anker). Kein neuer
  JANS-Bewertungsfall (Bewertungsordner inkl. Aenderungsdaten gelistet, juengster weiterhin
  Wangen 8855 vom 09.06.2026). Kollisionsschutz (Rule 260724) geprueft, keine Zweitinstanz.
  Keine Anpassung der Diskont-/Kapitalisierungssaetze.
- Bericht: `outputs/2026-07-27_training-run51.md`.

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB): Abnehmer-Block in `realwert-sachwert` gesetzt
- **[verlinkung] Die fuehrende Healthcare-Kennwertquelle kannte ihre Abnehmer nicht.** `wiki/realwert-sachwert.md` ist laut Rollen-Matrix fuehrend fuer CHF/m3 GV und CHF je Pflegeplatz, hatte aber null Treffer fuer «entwurfs-referenzen», «parameter-set» oder «wettbewerbs-dna» — eine kuenftige Aenderung des Bands waere bei den Abnehmern unbemerkt geblieben. → Abnehmer-Block gesetzt (Parameter-Set `healthcare-neubau-zh.json` v2.0, Skills `healthcare-wirtschaftlichkeit` und `machbarkeit`), mit dem ausdruecklichen Hinweis, dass das Teilband 1'053-1'420 nur die sechs Neubauten ab 2019 betrifft, waehrend das Gesamtband 826-1'420 (Median ~1'100) gilt. Werte unveraendert.
- Bericht: `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-25 — Training-Run 50: Delta-Null-Bestaetigungslauf (achtzehnter in Folge)

- **Kein neuer Ingest, keine eigene Artikelaenderung.** KB unveraendert saturiert; kein
  neuer JANS-Bewertungsfall (Bewertungsordner direkt gelistet inkl. Aenderungsdaten,
  juengster weiterhin Wangen 8855, 09.06.2026), Marktpuls bewusst nicht geprueft
  (Drossel-Rule 260714, naechster Wert 01.09.2026), kein Verifier-Lauf. Kollisionsschutz
  (Rule 260724) geprueft — der gefundene `claude -p`-Prozess mit identischem Prompt war
  der eigene Elternprozess dieser Session, keine Zweitinstanz.
- **Alle vier offenen Pendenzen gegengeprueft, unveraendert und bereits eskaliert** (nicht
  erneut im Report gemeldet, Meldekanal-Lektion Run 36/38): Loop-Ruecktaktung
  (`logbuch/fristen.md` 19.07.), Oberrieden-Hoehenkorrektur (`logbuch/fristen.md` 17.07.),
  T-Regelgeschoss, T-Umlaut (beide `wiki/wissensluecken.md`).
- **Empfehlung wiederholt (seit Run 22, jetzt zum 14. Mal):** neunter Trigger allein am
  25.07.2026 — Grenznutzen ohne neuen Fall/neues Rohmaterial weiterhin null.
- Details: `outputs/2026-07-25_training-run50.md`.

## 2026-07-25 — Training-Run 49: Delta-Null-Bestaetigungslauf (siebzehnter in Folge)

- **Kein neuer Ingest, keine eigene Artikelaenderung.** KB unveraendert saturiert; kein
  neuer JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen
  8855), Marktpuls bewusst nicht geprueft (Drossel-Rule 260714, naechster Wert 01.09.2026),
  kein Verifier-Lauf. Kollisionsschutz (Rule 260724) geprueft — der gefundene `claude -p`-
  Prozess mit identischem Prompt war der eigene Elternprozess dieser Session, keine
  Zweitinstanz.
- **Alle vier offenen Pendenzen gegengeprueft, unveraendert und bereits eskaliert** (nicht
  erneut im Report gemeldet, Meldekanal-Lektion Run 36/38): Loop-Ruecktaktung
  (`logbuch/fristen.md` 19.07.), Oberrieden-Hoehenkorrektur (`logbuch/fristen.md` 17.07.),
  T-Regelgeschoss und T-Umlaut (`wiki/wissensluecken.md`).
- Details: `outputs/2026-07-25_training-run49.md`.

## 2026-07-25 — Training-Run 48: Delta-Null-Bestaetigungslauf (sechzehnter in Folge)

- **Kein neuer Ingest, keine eigene Artikelaenderung.** KB unveraendert saturiert; kein
  neuer JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen
  8855), Marktpuls bewusst nicht geprueft (Drossel-Rule 260714, naechster Wert 01.09.2026),
  kein Verifier-Lauf. Kollisionsschutz (Rule 260724) geprueft — der gefundene `claude -p`-
  Prozess mit identischem Prompt war der eigene Elternprozess dieser Session, keine
  Zweitinstanz.
- **Alle vier offenen Pendenzen gegengeprueft, unveraendert und bereits eskaliert** (nicht
  erneut im Report gemeldet, Meldekanal-Lektion Run 36/38): Loop-Ruecktaktung
  (`logbuch/fristen.md` 19.07.), Oberrieden-Hoehenkorrektur (`logbuch/fristen.md` 17.07.),
  T-Regelgeschoss (0.70 vs. 0.75, Wissens-Chef Run 15), T-Umlaut (Health-Check 23.07.).
- Bericht: `outputs/2026-07-25_training-run48.md`.

## 2026-07-25 — Training-Run 47: Delta-Null-Bestaetigungslauf (fuenfzehnter in Folge)

- **Kein neuer Ingest, keine eigene Artikelaenderung.** KB unveraendert saturiert; kein
  neuer JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen
  8855), Marktpuls bewusst nicht geprueft (Drossel-Rule 260714, naechster Wert 01.09.2026),
  kein Verifier-Lauf. Kollisionsschutz (Rule 260724) geprueft — der gefundene `claude -p`-
  Prozess mit identischem Prompt war der eigene Elternprozess dieser Session, keine
  Zweitinstanz.
- **Alle vier offenen Pendenzen gegengeprueft, unveraendert und bereits eskaliert** (nicht
  erneut im Report gemeldet, Meldekanal-Lektion Run 36/38): Loop-Ruecktaktung
  (`logbuch/fristen.md` 19.07.), Oberrieden-Hoehenkorrektur (`logbuch/fristen.md` 17.07.),
  T-Regelgeschoss (0.70 vs. 0.75, Wissens-Chef Run 15), T-Umlaut (Health-Check 23.07.).
- Bericht: `outputs/2026-07-25_training-run47.md`.

## 2026-07-25 — Training-Run 46: Delta-Null-Bestaetigungslauf (vierzehnter in Folge)

- **Kein neuer Ingest, keine eigene Artikelaenderung.** KB unveraendert saturiert; kein
  neuer JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen
  8855), Marktpuls bewusst nicht geprueft (Drossel-Rule 260714, naechster Wert 01.09.2026),
  kein Verifier-Lauf. Kollisionsschutz (Rule 260724) geprueft, keine Zweitinstanz.
- **Alle vier offenen Pendenzen gegengeprueft, unveraendert und bereits eskaliert** (nicht
  erneut im Report gemeldet, Meldekanal-Lektion Run 36/38): Loop-Ruecktaktung
  (`logbuch/fristen.md` 19.07.), Oberrieden-Hoehenkorrektur (`logbuch/fristen.md` 17.07.),
  T-Regelgeschoss (0.70 vs. 0.75, Wissens-Chef Run 15), T-Umlaut (Health-Check 23.07.).
- Bericht: `outputs/2026-07-25_training-run46.md`.

## 2026-07-25 — Training-Run 45: Delta-Null-Bestaetigungslauf (dreizehnter in Folge)

- **Kein neuer Ingest, keine eigene Artikelaenderung.** KB unveraendert saturiert; kein
  neuer JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen
  8855), Marktpuls bewusst nicht geprueft (Drossel-Rule 260714, naechster Wert 01.09.2026),
  kein Verifier-Lauf. Kollisionsschutz (Rule 260724) geprueft, keine Zweitinstanz.
- **Alle vier offenen Pendenzen gegengeprueft, unveraendert und bereits eskaliert** (nicht
  erneut im Report gemeldet, Meldekanal-Lektion Run 36/38): Loop-Ruecktaktung
  (`logbuch/fristen.md` 19.07.), Oberrieden-Hoehenkorrektur (`logbuch/fristen.md` 17.07.),
  T-Regelgeschoss (0.70 vs. 0.75, Wissens-Chef Run 15), T-Umlaut (Health-Check 23.07.).
- Bericht: `outputs/2026-07-25_training-run45.md`.

## 2026-07-25 — Training-Run 44: Delta-Null-Bestaetigungslauf (zwoelfter in Folge)

- **Kein neuer Ingest, keine eigene Artikelaenderung.** KB unveraendert saturiert; kein
  neuer JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen
  8855), Marktpuls bewusst nicht geprueft (Drossel-Rule 260714, naechster Wert 01.09.2026),
  kein Verifier-Lauf. Kollisionsschutz (Rule 260724) geprueft, keine Zweitinstanz.
- **Alle vier offenen Pendenzen gegengeprueft, unveraendert und bereits eskaliert** (nicht
  erneut im Report gemeldet, Meldekanal-Lektion Run 36/38): Loop-Ruecktaktung
  (`logbuch/fristen.md` 19.07.), Oberrieden-Hoehenkorrektur (`logbuch/fristen.md` 17.07.),
  T-Regelgeschoss (0.70 vs. 0.75, Wissens-Chef Run 15), T-Umlaut (Health-Check 23.07.).
- Bericht: `outputs/2026-07-25_training-run44.md`.

## 2026-07-25 — Training-Run 43: Delta-Null-Bestaetigungslauf (elfter in Folge)

- **Kein neuer Ingest, keine eigene Artikelaenderung.** KB unveraendert saturiert; kein
  neuer JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen
  8855), Marktpuls bewusst nicht geprueft (Drossel-Rule 260714, naechster Wert 01.09.2026),
  kein Verifier-Lauf. Kollisionsschutz (Rule 260724) geprueft, keine Zweitinstanz.
- **Neu registriert (T-Regelgeschoss):** ein fremder, bereits beendeter Wissens-Chef-
  Cross-KB-Lauf (Run 15, Eintrag direkt unten) hatte vor diesem Lauf einen `needs-decision`-
  Vermerk zu `CHANGELOG.md`/`wiki/realwert-sachwert.md` gestaged — bewusst nicht angefasst
  (Rule 260724: kein Fremd-Staged in den eigenen Commit ziehen).
- Bericht: `outputs/2026-07-25_training-run43.md`.

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): needs-decision HNF/GF-Regelgeschoss; zwei Verdachtsfaelle widerlegt
- **needs-decision-Box in `wiki/realwert-sachwert.md`** (additiv, kein Wertwechsel): der E1-Entscheid vom 12.07.2026 setzt den Regelgeschoss-Faktor **0.70** «kanonisch, Hub-weit» — der eigene fuehrende Flaechen-Artikel `wiki/flaechendefinitionen-sia:84` fuehrt dagegen den **belegten 0.75** (Band 0.73-0.80, Flaechenkonzeption Wohnen R. Jans 20.10.2024, vgl. `residualwertmethode:191`). Gleicher Geltungsbereich, gleiche Bezugsgroesse; der Entscheid hat die Gesamtgebaeude-Haelfte (0.60-0.61) harmonisiert und die Regelgeschoss-Haelfte auf einem quellenlosen Faustwert festgeschrieben. Adversarial BESTAETIGT → Fachentscheid Raphael, bis dahin gilt 0.70 weiter.
- **Verdacht widerlegt (a):** «Baumasse vs. GV unvereinbar behandelt» — Scheinwiderspruch. Flaeche/Volumen-Verhaeltnisse sind gegenueber dem UG-Ein-/Ausschluss invariant (GF/Volumen ~ 1/mittlere Geschosshoehe); am Objekt Averecura auf GV-Basis verifiziert (0.323 / 0.196). Die grobkosten-Faustregel GV ~ Baumasse x 1.25-1.45 darf ausdruecklich **nicht** in die Flaechenfaktoren hineingerechnet werden.
- **Verdacht widerlegt (b):** der WALD-Healthcare-Anker ~CHF 4000/m2 GF sei ueberholt — im Gegenteil, die 8-Objekt-Basis dieser KB zitiert und **bestaetigt** ihn.
- **Neue Matrix-Zeile:** diese KB (`realwert-sachwert`) ist neu als fuehrend fuer **Healthcare-CHF/m3 GV + CHF je Pflegeplatz** (belegte Realwerte) registriert; `grobkosten` fuehrt Healthcare nicht.
- Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-24 — Training-Run 42: Delta-Null-Bestaetigungslauf (kein neuer Ingest-Befund)

- **Kein neuer Ingest, keine Artikelaenderung.** KB unveraendert saturiert; kein neuer
  JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen 8855),
  keine auto-schliessbare Ingest-Aufgabe offen. Marktpuls bewusst nicht geprueft (Drossel-Rule
  260714, naechster Wert 01.09.2026), kein Verifier-Wiederholungslauf; Kollisionsschutz
  (Rule 260724) geprueft — keine Zweitinstanz. Neunter Delta-Null-Lauf in Folge
  (Runs 34/35/37/38/39/40/41/42).
- **Neu registriert (nicht behoben): KB-Hygiene ae/oe/ue.** Der Health-Check-Hauptfund vom
  23.07. (KB-weite Ersatzschreibung, >2'000 Vorkommen, ~26 Wiki-Dateien) ist jetzt als offene
  Librarian-Aufgabe **T-Umlaut** in `wiki/wissensluecken.md` (Abschnitt B) gefuehrt. Bewusst
  **kein** blinder Massenersatz unbeaufsichtigt (wuerde «Raphael»→«Raphäl», «aktuelle», «neue»
  u. ae. zerstoeren) → gehoert in einen kontrollierten wissenscheck-Phase-2-Lauf. Abgrenzung
  zum bereits registrierten Fristen-Eintrag 23.07. (der betrifft die 5 Mac-Mini-Task-Prompts,
  going-forward — nicht diesen Retro-Fix der Bestandsdateien).
- **Kein Eskalations-Delta:** beide offenen Pendenzen — Loop-Ruecktaktung (Fristen-Register
  19.07.) und Oberrieden-Hoehenkorrektur (Fristen-Register 17.07.) — stehen bereits in
  `logbuch/fristen.md`; nicht erneut geflaggt.
- Register gepflegt: `training/curriculum.md`, `wiki/wissensluecken.md`.
  Report: `outputs/2026-07-24_training-run42.md`.

## 2026-07-23 — Wissens-Health-Check (Phase 1, Nachtschicht Mac Mini)

Audit gegen den letzten Check (01.07., 22 Tage): alle 5 damaligen Findings korrekt behoben
(Run-11-Nachtrag, 2 Backlink-Fixes, Kanton-Vereinheitlichung, Thalwil-PLZ, nutzungskonzepte-
Status). Neuer Hauptfund: **KB-weite ae/oe/ue-Ersatzschreibung statt echter Umlaute** ueber
praktisch alle 26 Wiki-Dateien (>2'000 Vorkommen; residualwertmethode.md 0 echte Umlaute vs.
197 Ersatzschreibungen) — der 01.07.-Check hatte Audit F faelschlich gruen bewertet, ohne
tatsaechlich auszuzaehlen. Gleicher Fehlertyp heute auch in `wissen/spec` gefunden (paralleler
Lauf 07:30). Zweiter Fund: ~30 Pseudo-Backlinks `[[marktdaten-gemeinden]]` ohne Artikel-Ziel
(Ordner statt Datei, Meta-Schema-Verstoss, kosmetisch). Dritter Fund: `az-gfz-kennwerte.md`
reifer Promotion-Kandidat (emerging → established), haengt nur noch an Langnau-BZO-Revision.
Keine Phase-2-Aktion (Nachtschicht-Scope, nur Audit). Report: `outputs/2026-07-23_health-check.md`.

## 2026-07-23 — Training-Run 41: Delta-Null-Bestaetigungslauf (kein neuer Befund)

- **Kein neuer Ingest, keine Artikelaenderung.** KB unveraendert saturiert; kein neuer
  JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen 8855),
  keine auto-schliessbare Aufgabe offen. Marktpuls bewusst nicht geprueft (Drossel-Rule 260714,
  naechster Wert 01.09.2026), kein Verifier-Wiederholungslauf. 10 Themen zu erfinden waere ein
  Leitplanken-Verstoss — siebter Delta-Null-Lauf in Folge (Runs 34/35/37/38/39/40/41).
- **Kein Eskalations-Delta:** beide offenen Pendenzen — Loop-Ruecktaktung (Fristen-Register
  19.07.) und Oberrieden-Hoehenkorrektur (Fristen-Register 17.07.) — stehen bereits sichtbar in
  `logbuch/fristen.md` (im Lauf gegengeprueft, Zeilen 36/38); nicht erneut geflaggt.
- Register gepflegt: `training/curriculum.md`, `wiki/wissensluecken.md`.
  Report: `outputs/2026-07-23_training-run41.md`.

## 2026-07-22 — Training-Run 40: Delta-Null-Bestaetigungslauf (kein neuer Befund)

- **Kein neuer Ingest, keine Artikelaenderung.** KB unveraendert saturiert; kein neuer
  JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen 8855),
  keine auto-schliessbare Aufgabe offen. Marktpuls bewusst nicht geprueft (Drossel-Rule 260714,
  naechster Wert 01.09.2026), kein Verifier-Wiederholungslauf. 10 Themen zu erfinden waere ein
  Leitplanken-Verstoss — sechster Delta-Null-Lauf in Folge (Runs 34/35/37/38/39/40).
- **Kein Eskalations-Delta:** beide offenen Pendenzen — Loop-Ruecktaktung (Fristen-Register
  19.07.) und Oberrieden-Hoehenkorrektur (Fristen-Register 17.07.) — stehen bereits sichtbar in
  `logbuch/fristen.md`; nicht erneut geflaggt.
- Register gepflegt: `training/curriculum.md`, `wiki/wissensluecken.md`, `raw/_INGESTED.md`.
  Report: `outputs/2026-07-22_training-run40.md`.

## 2026-07-21 — Wissens-Chef Run 11 (Cross-KB): führende Wuest-Median-Quelle in realwert verlinkt
- Cross-KB-Lauf Kennwert-Dreieck grobkosten ↔ immobilienbewertung ↔ kostenschaetzung/referenzen (Run 11).
  **0 Zahlen-Widerspruch** — alle deckungsgleichen Kennwerte (4'360/Quantile 3'460-7'250, 4'800, 2'840/2'330,
  ~1'020 CHF/m³) exakt identisch; Faktor 0.70/0.60-61 kontextabhängig aufgelöst (E1); Doppelzählungs-Guard
  (Run 4) weiter gültig.
- **wiki/realwert-sachwert.md:** die eigenständig aus dem Wüest-Kurs (S.33) getragenen Median-/Quantilswerte
  an die laut Rollen-Matrix führende Quelle `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-
  Wohnen-CHF-m2.md` verlinkt (grobkosten verwies bereits korrekt, immobilienbewertung nicht).
- **Nur gemeldet:** realwert-BFS-Teuerung steht noch auf alter Basis (Okt-2020=100) ggü. grobkosten
  (rebasiert Okt-2025=100) — KB-intern (Abgleich mit `investorenmarkt-makro`), durch ±25%-Spanne abgesichert.

## 2026-07-21 — Training-Run 39: Delta-Null-Bestaetigungslauf (kein neuer Befund)

- **Kein neuer Ingest, keine Artikelaenderung.** KB unveraendert saturiert; kein neuer
  JANS-Bewertungsfall (Bewertungsordner direkt gelistet, juengster weiterhin Wangen 8855),
  keine auto-schliessbare Aufgabe offen. Marktpuls bewusst nicht geprueft (Drossel-Rule 260714,
  naechster Wert 01.09.2026), kein Verifier-Wiederholungslauf (Kernkomplexe in Runs 18–22 exakt
  reproduziert). 10 Themen zu erfinden waere ein Leitplanken-Verstoss.
- **Kein Eskalations-Delta** (anders als Run 38): beide offenen Pendenzen — Loop-Ruecktaktung
  (Fristen-Register 19.07.) und Oberrieden-Hoehenkorrektur (Fristen-Register 17.07.) — stehen
  bereits sichtbar in `logbuch/fristen.md`; nicht erneut geflaggt.
- Register gepflegt: `training/curriculum.md`, `wiki/wissensluecken.md`, `raw/_INGESTED.md`.
  Report: `outputs/2026-07-21_training-run39.md`.

## 2026-07-19 — Training-Run 38: Delta-Lauf; Ruecktaktungs-Empfehlung eskaliert ins Fristen-Register

- **Kein neuer Ingest, keine Artikelaenderung.** KB unveraendert saturiert; kein neuer
  JANS-Bewertungsfall (juengster Wangen 8855), keine auto-schliessbare Aufgabe offen.
  Marktpuls bewusst nicht geprueft (Drossel-Rule 260714, naechster Wert 01.09.2026), kein
  Verifier-Wiederholungslauf.
- **Delta:** die seit Run 22 (13.07.) **siebenmal** folgenlos im Report wiederholte Empfehlung
  «Loop ruecktakten» ist nach `logbuch/fristen.md` ueberfuehrt (Eintrag 19.07.2026, Status
  «offen, Entscheid Raphael»; Optionen: woechentlich ODER ereignisgesteuert bei neuem Fall /
  Stichtag 01.09.2026). Gleicher Mechanismus wie Run 36 beim Oberrieden-Flag — der
  Trainings-Report ist als Meldekanal an Raphael nachweislich untauglich. Der Loop taktet sich
  nicht selbst zurueck.
- Register gepflegt: `training/curriculum.md`, `wiki/wissensluecken.md`, `raw/_INGESTED.md`.
  Report: `outputs/2026-07-19_training-run38.md`.

## 2026-07-18 — Training-Run 37: schlanker Bestaetigungs-/Delta-Lauf (kein neuer Befund)

- **Kein neuer Ingest, keine Artikelaenderung.** Die KB ist saturiert; alle auto-schliessbaren
  Aufgaben sind seit Run 36 abgearbeitet. 10 Themen zu waehlen waere ein Leitplanken-Verstoss.
- Bewertungsordner (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`) geprueft: **unveraendert**,
  juengster Fall weiterhin Wangen 8855 (Ordner-Stand 09.06.2026).
- Marktpuls (E7) **bewusst nicht** per Web geprueft (Drossel-Rule 260714, Wochenlimit-Schonung;
  naechster amtlicher Wert 01.09.2026). KB-Anker unveraendert: SNB 0.00 %, Referenzzins 1.25 %,
  Durchschnittszinssatz 1.31 % per 31.03.2026.
- **Kein Verifier-Lauf** — alle Kernkomplexe wurden in den Runs 18–22 bereits exakt reproduziert;
  eine Wiederholung waere unter der Token-Drosselung nicht gerechtfertigt.
- **Oberrieden-Hoehenkorrektur nicht erneut geflaggt:** Run 36 hat den Punkt korrekt aus dem Loop
  in `logbuch/fristen.md` (Pendenz an Raphael) ueberfuehrt. Der Trainings-Report war als Meldekanal
  untauglich → hier nicht ein 10. Mal wiederholt.
- **Empfehlung an Raphael:** Ruecktaktung dieser KB auf woechentlich oder ereignisgesteuert
  (neuer JANS-Fall / Marktpuls-Stichtag 01.09.2026) — bis dahin produziert jeder Lauf nur einen
  Delta-Null-Bericht. Der Loop taktet sich nicht selbst zurueck.
- Geaendert: `outputs/2026-07-18_training-run37.md` (neu), `training/curriculum.md`,
  `wiki/wissensluecken.md`, `raw/_INGESTED.md`, dieser CHANGELOG.

## 2026-07-17 — Training-Run 36: D6-Restposten Luzern geschlossen + **materielle Korrektur**

- **Erster materieller Korrekturbefund seit Run 27.** Statt eines vierten Bestaetigungslaufs den
  letzten auto-schliessbaren D6-Restposten angegangen («Luzern-Per-Ordnungsnummer», offen seit
  Run 25) — dabei erwies sich der **eigene Artikelabschnitt als falsch**: «BZR 2022 / Art. 40/43 /
  Wohnzonen A–F nach Gesamthoehe» beschrieb den **Entwurf der laufenden BZO-Revision**, nicht das
  geltende Recht.
- **Amtlicher Volltextbefund** (sRSL Nr. 7.1.2.1.1, BZR vom 17.01.2013, **Ausgabe 01.09.2024**,
  in Kraft seit 03.06.2014): «Gesamthoehe» kommt **null Mal** vor · **keine** Klassen A–F
  (A/B = **Ortsbildschutzzone**) · Art. 40 = Rutsch/Sturz, Art. 43 = Energie (massgebend sind
  Art. 4/5/7/24/26 + Anhang 1) · Zonen heissen **WO** (Art. 5) / **WA** (Art. 7) · Dichte ueber
  **UEZ je Ordnungsnummer**, Hoehe ueber **Vollgeschosse oder Fassadenhoehe** (Art. 26: FH 21 m /
  Firsthoehe 27 m / max. 6 VG).
- **Neu belegt** → [[az-gfz-kennwerte]]: UEZ-Spannen **WO 0.05–0.8 (Nr. 101–192)** und
  **WA 0.15–1.0 (Nr. 1–66)** samt Ausreissern (Nr. 54 WA UEZ 1.0; Nr. 182 WO UEZ 0.8; Nr. 50 WA
  FH 45 m Hochhaus) und Nummern ohne UEZ (101–106, 183/184, 189/190 → Sonderregel Art. 12/13/25
  bzw. qualifiziertes Verfahren). **Folgekorrektur:** die UEZ-Zeile der Kennziffer-Uebersicht
  nannte «0.20–0.31» (= Einsiedler Spanne) → korrigiert auf **0.05–1.0** mit Gemeinde-Differenzierung.
- **Zwei bewertungsrelevante Zusatzbefunde:** (1) **UEZ-Bonus Art. 24 Abs. 3** — Gestaltungsplan
  +10 %, gemeinnuetzige Wohnungen +5 %, **max. 15 %** (als Chance zu pruefen, «kann»-Vorschrift);
  (2) **⚠ doppelte Massgeblichkeit seit 28.04.2026** — bis zur Genehmigung der neuen BZO
  (2. Auflage 28.04.–27.05.2026, Genehmigung fruehestens Mitte 2027) muessen Baugesuche
  **sowohl dem BZR 2013 als auch der neuen BZO** entsprechen, die strengere gilt; eine Rechnung
  nur auf dem BZR 2013 ist seither unvollstaendig. **Littau = separates BZR** (Art. 4 Abs. 2).
- **Verifikation:** Modell D (amtlicher Volltext) + **1 Refuter-Agent** (auf 1 begrenzt statt 2–3,
  Drossel-Rule 260714) → Verdikt **teilweise widerlegt**; **beide Beanstandungen uebernommen**:
  Ausgabe 01.09.2024 statt 01.08.2024 (mein Erst-Fetch lief ueber den Geoshop-Spiegel; Anhang-1-Werte
  beider Fassungen ueber alle 89 WO-Zeilen **diff-identisch** → Werte gelten, zitiert wird sRSL) und
  A–F = Luzerns **eigener** Revisionsentwurf (keine Fremdgemeinde-Verwechslung). Der Refuter hat den
  Lauf messbar verbessert — die praktisch wichtigste Erkenntnis (doppelte Massgeblichkeit) stammt
  aus der Gegenpruefung.
- Bewertungsordner unveraendert (6 Faelle, juengster Wangen 8855). Marktpuls bewusst nicht geprueft
  (naechster amtlicher Wert 01.09.2026; Drossel-Rule 260714). Status `az-gfz-kennwerte` bleibt
  `emerging`, `last_updated` 2026-07-17.
- **Offener Punkt an Raphael — 9. Meldung:** Oberrieden-Hoehenkorrektur (Rule `auto-verbesserungen`
  260624 nennt 9.0 m traufseitig; amtlich 8.5 m) weiterhin unkorrigiert. **Empfehlung: als Pendenz
  ueber `logbuch`/`hub-chef` fuehren** statt weiter im Trainings-Report zu melden.
- Details: `outputs/2026-07-17_training-run36.md`.

## 2026-07-15 — Training-Run 35: minimaler Bestaetigungslauf (zweiter Trigger desselben Tages)

- Zweiter Trigger am 15.07. (nach Run 34 00:58). **Kein neuer Ingest, keine Artikelaenderung.**
  Bewertungsordner unveraendert (6 Faelle, juengster Wangen 8855). Marktpuls bewusst NICHT
  erneut per Web geprueft — Run 34 (< 8 Std. zurueck) hat Referenzzins 1.25 %/Durchschnittszins
  1.31 % bestaetigt, naechster amtlicher Wert erst 01.09.2026; ein Recheck waere Token-Verbrauch
  gegen das Wochenlimit (Drossel-Rule 260714).
- Oberrieden-Hoehenkorrektur (Rule 260624, amtlich 8.5 m statt 9.0 m traufseitig) zum 8. Mal an
  Raphael geflaggt. Trigger-Haeufung (2x/Tag) erneut vermerkt — Scheduled-Task-Frequenz pruefen.
- Register nachgefuehrt. Report: `outputs/2026-07-15_training-run35.md`.

## 2026-07-15 — Training-Run 34: Delta-/Marktpuls-Check (neuer Tag, Soll-Takt)

- Erster Lauf am neuen Tag nach dem Run-33-Root-Cause-Fix. **Kein neuer Ingest, keine
  Artikelaenderung** — es gibt keine 10 ehrlich schliessbaren Themen mehr (Wuest-Kurs +
  E1-E10 + alle auto-schliessbaren T-Aufgaben seit Run 16 abgearbeitet); 10 Themen zu
  erfinden waere ein Verstoss gegen die Leitplanke «nie erfinden».
- Delta-Check: Bewertungsordner unveraendert (6 Faelle, juengster Wangen 8855). Marktpuls-Web:
  Referenzzins **1.25 %** bestaetigt (naechste Publikation 01.09.2026), SNB-Leitzins
  unveraendert, kein neuer amtlicher Durchschnittszinssatz (KB bleibt 1.31 % per 31.03.2026) —
  keine Uebernahme der unpraezisen Blog-Spanne (Quellenpflicht).
- Oberrieden-Hoehenkorrektur (Rule 260624, amtlich 8.5 m statt 9.0 m traufseitig) zum
  **7. Mal** an Raphael geflaggt, weiterhin unkorrigiert.
- Empfehlung bestaetigt: Nachttakt 02:50 (Rule 260713) ist fuer diese saturierte KB angemessen;
  produktiver Lauf erst wieder bei neuem JANS-Fall / neuem Rohmaterial / neuem amtlichen
  Marktwert (fruehestens 01.09.2026). Report: `outputs/2026-07-15_training-run34.md`.

## 2026-07-14 — Wissens-Chef Run 4 (Cross-KB): Querbezug KB energie (Doppelzaehlungs-Guard)
- [link] `wiki/realwert-sachwert.md` (nach BKP-Anteile Tab. 3): Verweis auf `wissen/energie` fuer absolute Haustechnik-/PV-/Fernwaerme-Komponentenkosten — diese stecken bereits in den BKP-2-/HNF-Erstellungskennwerten, **nicht additiv**. Gegenrichtung in energie-Destillaten gesetzt. Kein Wertkonflikt (Metrik-Ebenen getrennt). Bericht: koordination/outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-14 — Training-Run 33: Root-Cause-Fix Trigger-Haeufung + Delta-Check

- **Root-Cause behoben statt zum sechsten Mal nur protokolliert:** `scripts/vollgas-runner.sh`
  zykliert `immobewertung-training` weiterhin im VOLLGAS-Endlos-Loop mit (INCLUDE_RE matcht
  `immob`), obwohl Rule `auto-verbesserungen` 260713 (Vortag) diesen Loop auf 1x taeglich
  02:50 gedrosselt hat. `EXCLUDE_RE` im Runner um die sechs 260713-gedrosselten Loops ergaenzt
  (`immobewertung|baurecht-buch|normen-training|twin-mail|twin-fidelity|^spec-training`) —
  nur noch `wettbewerbs-dna-training`/`wettbewerbs-layer-nachbrenner` bleiben im Endlos-Zyklus,
  simuliert und bestaetigt.
- Delta-Check: kein neuer JANS-Bewertungsfall, Marktanker unveraendert seit Run 31 (kein
  erneuter Web-Check, kein Grenznutzen). Oberrieden-Hoehenkorrektur-Erinnerung (Rule 260624)
  zum sechsten Mal protokolliert.
- Report: `outputs/2026-07-14_training-run33.md`.

## 2026-07-14 — Training-Run 32: Delta-Check (fuenfter Trigger desselben Tages)

- Fuenfter Trigger am selben Tag (nach Run 28 00:38, Run 29 04:51, Run 30 05:44, Run 31 07:32
  Uhr), erneut ausserhalb der Sollfrequenz (Rule 260713: 1x taeglich 02:50). Schlanker Delta-Check
  statt Vollzyklus: Bewertungsordner erneut gelistet, unveraendert (kein neuer JANS-Fall).
  Marktanker nicht erneut per Web geprueft (Run 31 liegt < 4 Std. zurueck, kein Grenznutzen vor
  den naechsten Publikationsterminen 09.2026). D6-Restposten Langnau weiterhin blockiert.
- Oberrieden-Hoehenkorrektur-Erinnerung (Rule `auto-verbesserungen` 260624) zum **fuenften Mal**
  protokolliert — weiterhin nicht korrigiert.
- Trigger-Haeufung (5 Laeufe an einem Kalendertag) jetzt eindeutig bestaetigt — Empfehlung an
  Raphael, die Trigger-Quelle(n) (Scheduled Task vs. VOLLGAS-Runner) zu pruefen, damit Token-
  Einsatz nicht auf reine Bestaetigungs-Delta-Checks faellt.
- Report: `outputs/2026-07-14_training-run32.md`.

## 2026-07-14 — Training-Run 31: D11 geschlossen (ZIW-Index-Faktor 2003→2025)

- Erster produktiver Lauf seit Run 27: die amtliche Reihe **Zuercher Index der Wohnbaupreise**
  (Stadt Zuerich, Basis 01.06.1939=100, Publikationsstand 01.01.2026) per Web gefunden und
  ausgewertet — schliesst die seit Run 18 offene Luecke **D11**. Wert 01.04.2003=899.2, Wert
  01.04.2025=1210.4 → **Index-Faktor 1.346 (+34.6 %)**. Die m3-Neuwert-Richtwerte (Schaetzungs-
  anleitung Tab. 2, Bauklasse I-VI) sind jetzt auf 2025 hochgerechnet in [[realwert-sachwert]]
  eingearbeitet (neue Tabelle + Quellenverweis + History-Eintrag).
- Register aktualisiert: `wiki/wissensluecken.md` (D11 → erledigt), `training/curriculum.md`
  (Stand Run 31), `raw/_INGESTED.md` (neue Quelle ZIW-Reihe).
- Bewertungsordner erneut geprueft: kein neuer JANS-Bewertungsfall (weiterhin 4 bekannte:
  Thalwil 9568, Ebmatingen 3932, Wangen 8855, Langnau 3338). Langnau-BZO-Revision per Web
  bestaetigt unveraendert (kantonale Vorpruefung/Auflage Fruehjahr 2026, Festsetzung erst
  Fruehjahr 2027 — weiterhin nicht rechtskraeftig, keine Aenderung an [[az-gfz-kennwerte]] noetig).
- **Vierte Meldung an Raphael:** die Oberrieden-Hoehenkorrektur (Rule `auto-verbesserungen`
  260624 nennt faelschlich 9.0 m traufseitig; amtlich seit Run 27 belegt sind 8.5 m traufseitig)
  ist weiterhin nicht korrigiert.
- Report: `outputs/2026-07-14_training-run31.md`.

## 2026-07-14 — Training-Run 30: Delta-Check (dritter Trigger desselben Tages)

- Dritter Trigger am selben Tag (nach Run 28, 00:38 Uhr, und Run 29, 04:51 Uhr), erneut ausserhalb
  der Sollfrequenz (Rule 260713: 1x taeglich 02:50). Kurzer Delta-Check: Bewertungsordner
  unveraendert (kein neuer Fall), Marktanker unveraendert (SNB 0.00 %/Referenzzins 1.25 %/
  Durchschnittszinssatz 1.31 % seit 31.03.2026), D6-Restposten Langnau weiterhin blockiert.
  Oberrieden-Hoehenkorrektur-Erinnerung (Rule 260624) zum dritten Mal protokolliert. Kein Ingest,
  keine Wiki-Aenderung.
- Neu vermerkt: die Haeufung von drei Triggern an einem Tag deutet auf eine Ueberlappung von
  Scheduled Task und VOLLGAS-Runner hin — Empfehlung, die Trigger-Quellen zu pruefen.
- Report: `outputs/2026-07-14_training-run30.md`.

## 2026-07-14 — Training-Run 29: Delta-Check (Zusatz-Trigger 4 Std. nach Run 28)

- Zusaetzlicher Scheduled-Task-Trigger ausserhalb der Soll-Frequenz (Rule 260713: 1x taeglich
  02:50; dieser Lauf 04:51). Kurzer Delta-Check statt vollem 10-Themen-Zyklus: Bewertungsordner
  unveraendert (kein neuer Fall), Marktanker unveraendert (SNB 0.00 %/Referenzzins 1.25 %),
  D6-Restposten Langnau weiterhin blockiert. Kein Ingest, keine Wiki-Aenderung.
- Report: `outputs/2026-07-14_training-run29.md`.

## 2026-07-14 — Training-Run 28: schlanker Beobachtungslauf (Rule 260713 Drosselung)

- Kein neuer Ingest: Bewertungsordner geprueft (kein neuer JANS-Fall seit Wangen 8855),
  Marktpuls-Web-Check (SNB 0.00 %/Referenzzins 1.25 % beide unveraendert seit Run 17), D6-
  Restposten Langnau weiterhin blockiert (Revision 2026/27 nicht rechtskraeftig).
- **Wiederholter Hinweis an Raphael:** Rule `auto-verbesserungen` 260624 (Oberrieden-Beispiel
  «9.0 m traufseitig») ist gemaess Run-27-Befund amtlich falsch (8.5 m traufseitig) — Korrektur
  liegt ausserhalb des KB-Mandats, daher hier zum zweiten Mal protokolliert statt selbst
  editiert.
- Report: `outputs/2026-07-14_training-run28.md`. Dieser Loop bleibt gemaess Rule 260713 auf
  Minimalfrequenz (1x taeglich), solange kein neues Rohmaterial oder ein neuer Bewertungsfall
  vorliegt.

## 2026-07-13 — Wissens-Chef Run 3 (Cross-KB): Querbezug zu KB grobkosten
- [link] `residualwertmethode.md`: Querbezug-Block → grobkosten `kennwerte` (kanonische CHF/m³-GV-Kennwerte) inkl. E1-Faktor (0.70 Regelgeschoss / 0.60–0.61 Gesamtgebaeude). Keine Kennwert-Widersprueche (Paar immobilienbewertung↔grobkosten: 0). Bericht: `wissen/koordination/outputs/2026-07-13_wissens-chef-run3.md`.

## 2026-07-13 — Training-Run 27: D6 breit ausgebaut — 8 JANS-Bezugsmärkte via Workflow-Fan-out

- **[[az-gfz-kennwerte]] erweitert von 11 auf 19 Gemeinden.** Multi-Agent-Workflow (8 parallele
  Extraktions-Agenten, Workflow-Autorisierung Rule 260712c; alle 8 `obtainable=true`, 0 Fehler)
  zog je die amtliche BZO-Grundmasse der Wohnzonen: **Niederhasli** (BZO 2024, IVHB, in Kraft
  08.08.2025), **Oberrieden** (BZO 2013/Stand 26.01.2026), **Kilchberg** (BZO 2012/14/15),
  **Horgen** (BZO 2011/16 TR 2021/23), **Küsnacht** (Stand 2019), **Meilen** (BZO 2020 IVHB),
  **Adliswil** (BZO 1995/Stand 2024), **Richterswil** (Stand 2023). Alle mit exakter Quelle
  (Artikel + URL), nichts geraten.
- **Zwei materielle Befunde:** (1) **Niederhasli** (IVHB-Totalrevision 2024) hat die Dichte-
  Kennziffern in den Wohnzonen **ganz abgeschafft** — kein AZ/BMZ/ÜZ, reine Hüllensteuerung
  (Fassadenhöhe + Gebäudemasse + Grünflächenziffer). Das ist eine **vierte Steuerungslogik**;
  die Bezugsgrössen-Tabelle wurde von drei auf vier Modi erweitert. (2) **Oberrieden-Höhen-
  korrektur:** amtlich 8.5 m traufseitig / 13.0 m giebelseitig / 9.0 m Flachdach — die
  Altannahme «9.0 m traufseitig» in Rule `auto-verbesserungen` 260624 ist falsch. **Flag an
  Raphael:** das illustrative Beispiel in Rule 260624 korrigieren (8.5 m trauf statt 9.0 m).
- **Register gepflegt:** INDEX, wissensluecken (D6-Zeile + Section-B + Erledigt), _INGESTED
  (externe amtliche Quellen), curriculum (Stand Run 27). Marktpuls (E7) unverändert (SNB
  0.00 %/Referenzzins 1.25 %), kein neuer JANS-Bewertungsfall. Report:
  `outputs/2026-07-13_training-run27.md`.
- **Kernlektion:** die in Run 23 als «Grossrecherche nötig, nicht in einem Trainingslauf
  leistbar» abgetane D6-Ader ist per Workflow-Fan-out (ein Agent je Gemeinde) effizient
  batchweise zu schliessen — Vorlage für künftige belegpflichtige Batch-Extraktionen.

## 2026-07-13 — Training-Run 26: D6 weiter geschlossen — Muri-AG-Revision 2018/19 + Zollikon bestaetigt

- **[[az-gfz-kennwerte]] aktualisiert:** **Muri AG** von Stand 31.10.2012 auf die **Revision
  2018/2019** (BNO vom 21.06.2018, RRB-genehmigt 27.02.2019) umgestellt — Quelle ist ein
  Bild-PDF ohne Textebene (`pdftotext` liefert 0 Zeichen), **erstmals visuell via Read-Tool
  gelesen statt per OCR/Textschicht**. Ergebnis: die Ausnuetzung wurde deutlich erhoeht
  (W1 0.30→0.35, W2 0.40→0.45, W3 0.50→0.60, WG3 0.60→0.70) und eine neue Hochdichte-Zone
  **W3+ (AZ 0.8, 5 Vollgeschosse, 18 m Gesamthoehe)** eingefuehrt; System von Gebaeudehoehe/
  Firsthoehe auf **Gesamthoehe** (IVHB) umgestellt. Kernzone Bruehl (KB) wurde von der
  Gemeindeversammlung **teilzurueckgewiesen** und ist nicht in Kraft — als Vorbehalt vermerkt.
- **Zollikon bestaetigt aktuell gueltig:** die zitierte 1996-Fassung ist mit dem offiziell
  gefuehrten **Stand 5.4.2013** (konsolidierter Neudruck 19.02.2024, `zollikon.ch/_doc/4980595`,
  echte Textebene) materiell **wertidentisch** — kein stiller Rechtsverlust. Neu erfasst:
  **Zentrumszone (Art. 11)**, BMZ max. 2.70 Flachdach/2.80 Schraegdach, Gebaeudehoehe 13.5 m.
  Eine vom Gemeinderat am 20.08.2025 beschlossene **Teilrevision** ist der Gemeindeversammlung
  vorgelegt (Infoveranstaltung 05.11.2025), aber **noch nicht in Kraft** — Wiedervorlage nach
  Beschluss.
- **Langnau am Albis:** Zeitplan der BZO 2026/27 gegengeprueft, unveraendert bestaetigt
  (kantonale Vorpruefung/oeffentliche Auflage Fruehjahr 2026, Inkraftsetzung Fruehjahr 2027).
- Register gepflegt: `wissensluecken.md` (D6 von "substanziell" auf "weitgehend geschlossen",
  9 von 11 Gemeinden aktuell), `INDEX.md`, `curriculum.md` (Run-26-Stand + Methoden-Lektion:
  Bild-PDFs kuenftig per Read-Tool visuell statt nur per `pdftotext` pruefen).
- Kein neuer JANS-Bewertungsfall (Bewertungsordner erneut geprueft, weiterhin Wangen 8855 der
  juengste Fall seit Run 6). Marktpuls (E7) erneut unveraendert seit Run 17 (SNB 0.00 %,
  Referenzzins 1.25 %, naechster Publikationstermin 01.09.2026).
- Report: `outputs/2026-07-13_training-run26.md`.

## 2026-07-13 — Training-Run 25: D6 substanziell geschlossen — 7 weitere Gemeinden (Dichte-Kennwerte)

- **[[az-gfz-kennwerte]] massiv erweitert** um 7 Gemeinden, je direkt aus der amtlichen
  BZO/dem Baureglement extrahiert (`curl` + `pdftotext -layout` auf die amtliche PDF; bei
  Wangen SZ Spaltenzuordnung per Zeichenpositions-Alignment verifiziert, Kernzone als
  leftmost-Spalte erkannt):
  - **AZ (Ausnuetzungsziffer):** Maur ZH (nBZO 2023: W1 20/W2 35-45/W3 60 %), Regensdorf ZH
    (BZO 2020: W2A 27/W2B 35/W3 50 %), Wangen SZ (W1 0.25/W2 0.45/W3 0.55/W4 0.70, +GP-Werte),
    Muri AG (Stand 2012: W1 0.3/W2 0.4/W3 0.5).
  - **Baumassenziffer (m3/m2):** Zollikon ZH (BZO 1996: W 1.25-2.60, WG bis 2.90), Wald ZH
    (W 1.1-2.8, WG 2.0-2.8; Geschossaufteilung frei).
  - **Ueberbauungsziffer:** Einsiedeln SZ (Baureglement 2025: W1/W4 20/W2 28/W3 24 %).
  - **Luzern (Stadt):** anderes System — Wohnzonen A-F nach Gesamthoehe + Ueberbauungsziffer
    je Zonenplan-Ordnungsnummer; als System-Beschrieb erfasst, Per-Zonenwerte offen.
  - **Langnau am Albis:** BZO 2005 ausser Kraft (Revision 2026/27), kein in-Kraft-PDF —
    als Status-/Vorbehalt-Eintrag erfasst (JANS-Fall 2621 Giebelweg).
- **Kernbefund (neu):** die Gemeinden regeln Dichte ueber DREI nicht ineinander umrechenbare
  Kennziffern (AZ / Baumassenziffer / Ueberbauungsziffer). Artikel erhielt Uebersichtstabelle
  + explizite Warnung, dass zonenuebergreifende Vergleiche nur bei gleicher Bezugsgroesse
  zulaessig sind; Artikel-Titel/Frontmatter entsprechend generalisiert.
- Register gepflegt: `wissensluecken.md` (D6 auf «niedrig»/substanziell geschlossen, Tabelle B),
  `INDEX.md` (Eintrag aktualisiert), Backlinks `[[az-gfz-kennwerte]]` in 8 Gemeinde-Fact-Sheets
  (zollikon/maur/regensdorf/wald/wangen/einsiedeln/muri/luzern).
- Kein neuer JANS-Bewertungsfall (Bewertungsordner-Stand seit Run 6). Marktpuls unveraendert
  seit Run 17 (kein neuer Publikationstermin, naechster ab 01.09.2026).
- Report: `outputs/2026-07-13_training-run25.md`.

## 2026-07-13 — Training-Run 24: D6-Sackgasse durchbrochen — AZ/GFZ-Kennwerte Thalwil + Waedenswil

- **Neuer Wiki-Artikel [[az-gfz-kennwerte]]:** amtliche Ausnuetzungsziffer-Tabellen
  (Art. 3 Grundmasse) fuer Thalwil (W1-WG4, AZ 30-70 %, inkl. reale vs. statutarische
  AZ +48-82 %) und Waedenswil (W2/30%-WG5/85%, AZ 30-85 %, inkl. Behindertenwohnen-
  Bonus) direkt aus den amtlichen BZO-PDFs extrahiert (`pdftotext -layout` auf den
  lokal zwischengespeicherten WebFetch-Anhang, da WebFetch selbst bei diesen PDFs nur
  Binaerdaten zurueckgibt).
- **Korrektur der Run-23-Einschaetzung:** D6 war als "Grossrecherche noetig, nicht in
  einem Trainingslauf zu leisten" eingestuft. Praxistest zeigt: pro Gemeinde ist es ein
  einzelner, gut handhabbarer Fetch+Extraktions-Schritt — die Grossrecherche liegt im
  Umfang (11 Gemeinden), nicht in der Methode. D6 damit von "Bring-Schuld Raphael" auf
  "D/T, Methode erprobt, 9 Gemeinden offen" neu eingestuft.
- Kein neuer JANS-Bewertungsfall (Bewertungsordner erneut geprueft). Marktpuls
  unveraendert seit Run 17 (kein neuer Publikationstermin) — kein Web-Check noetig.
- Register gepflegt: `wissensluecken.md` (D6-Zeile + Tabelle B), `INDEX.md` (neuer
  Eintrag), Backlinks in `zh-thalwil-8800.md` + `zh-waedenswil-8820.md`.
- Report: `outputs/2026-07-13_training-run24.md`.

## 2026-07-13 — Training-Run 23: sechste Bestaetigung ohne neue Erkenntnis, kein Ingest

- **Kein neuer Ingest, keine neue Verifikation.** Statt eine der fuenf bereits bestandenen
  Verifikationen zu wiederholen, drei konkrete Kandidaten geprueft: (1) Bewertungsordner
  direkt gelistet — kein neuer JANS-Fall seit Wangen 8855 (09.06.); (2) D6 (AZ/GFZ-Kennwerte)
  gegen `wissen/baurecht/wiki/nutzungsziffern.md` geprueft — nur Rechtssystematik, keine
  kompilierte Zonen-Kennwerttabelle vorhanden, hub-weite Suche findet nur duenne
  Einzelwerte (SZ Landhauszone 0.2, Basel-Wettbewerbsfaelle) → D6 bleibt offen, nicht
  erfunden; (3) Marktpuls-Web-Check — SNB 0.00 % und Referenzzins 1.25 % weiterhin
  unveraendert (sechster Check in Folge ohne neuen Wert, naechste Publikation 01.09.2026).
- Report: `outputs/2026-07-13_training-run23.md`. Empfehlung an Raphael verschaerft:
  D6 als eigene Recherche-Grossaufgabe auslagern oder Takt fuer diese KB auf reine
  Marktpuls-Checks reduzieren, bis neues Material/ein neuer Fall eintrifft.

## 2026-07-13 — Training-Run 22: Verifikations-Pass Erfolgsfaktoren + Schwamendingen + Neuwert-Tabellen (Modell D)

- **Fuenfter Lauf in Folge im Verifikations-Modus.** Kein neuer Ingest — drei Komplexe per
  Modell-D-Volltext-Gegenlesung gegen die Original-PDFs geprueft (die beiden von Run 20
  benannten Kandidaten plus ein dritter, selbst identifizierter Komplex).
- **Nachgeprueft & exakt reproduziert:**
  1. DXMA-Aufwertungsgewinn-Tabelle (10 Zeilen, S. 7) + vier Baurecht-Fallbeispiele
     (Breitensteinstrasse, Stampfenbachstrasse, Fabrikstrasse, S. 10/12/14/15) gegen die
     Original-DXMA-Folien → [[erfolgsfaktoren-wettbewerb]].
  2. Schwamendingen-Nutzermix-Quoten (Hortus Conclusus/Low-Tech-Siedlung/Patchwork City,
     S. 138-145) + Wohnungsgroessen + Mietzinseinschaetzung gegen die Original-Wuest-Folien →
     [[nutzungskonzepte]]. Neu ergaenzt: Hortus-Conclusus-Referenzprojekt (reale «Vertikale
     Gartenstadt», Penzel Valier/Robertneun, 1. Rang Studienauftrag 2020).
  3. Tab. 2 (Neuwert-Richtwerte Bauklasse I-VI, EFH/MFH + Grossgewerbe/Industrie) + Tab. 3
     (BKP-Anteile MFH-mittlerer-Standard Baujahr 1985) aus dem Schaetzungsanleitungs-Anhang
     Kapitel 5 → [[realwert-sachwert]].
- **Verdikt:** alle drei Komplexe bestanden, keine Korrektur. Alle drei Artikel bleiben
  `established`, `last_updated` auf 2026-07-13 gesetzt.
- **Zusatzbefund:** der Zuercher Index der Wohnbaukosten (Tab. 4 im selben Anhang) endet im
  Quelldokument bei 01.04.2004 = 907.6 — reicht nicht bis 2026. D11 (m3-Richtwerte aufindexieren)
  bleibt offen; eine aktuelle Fortsetzung der Indexreihe muss separat beschafft werden.
- Bewertungsordner geprueft: weiterhin kein neuer JANS-Fall seit Run 6 (Wangen 8855, 09.06.).
  Marktpuls nicht erneut geprueft (unveraendert seit Run 17, kein neuer Publikationstermin).
- **Befund:** damit sind saemtliche von den Runs 18-21 identifizierten Verifikations-Kandidaten
  abgearbeitet; kein weiterer auto-schliessbarer Kandidat identifiziert. Empfehlung Ruecktaktung
  ins Nachtfenster zum fuenften Mal in Folge, jetzt mit Nachdruck — der Loop erzeugt ohne neues
  Rohmaterial (D1/D2/D5/D6/D7/D9/D10/D11) oder einen neuen JANS-Fall keinen weiteren
  Erkenntnisgewinn mehr.

## 2026-07-13 — Training-Run 21: Verifikations-Pass Nutzungskonzeptions-Kennzahlen S. 123-133 (Modell D)

- **Vierter Lauf in Folge im Verifikations-Modus.** Kein neuer Ingest — Modell-D-Volltext-
  Gegenlesung des Zielgruppensegmentierungs-/Nutzermix-Blocks (Wuest-Kurs S. 123-133) gegen die
  Originalfolien; im Run-20-Report als naechster Verifikations-Kandidat angekuendigt.
- **Nachgeprueft & exakt reproduziert:** Sinus-Milieu-Kennzahlen (Arrivierte 9 % / Ø 47 J / >9'000
  CHF, Postmaterielle 13 % / Ø 45 J / 6'000+, Performer 11 % / Ø 39 J / 9'000+), Best-Ager
  (55-75 / 2.5-4.5 Zi), Expats (Ø 44.2 J / 82 % / 7 Typen, InterNations 2018), Aktive Familien
  (40-50 % / 3.5-5.5 Zi / 30-45 J / ~2 Kinder), Nutzermix Wohnen (20-30/40-50/30-40 %) und
  Geschaeftsflaechen (65/25/10 %). Alle deckungsgleich mit den Folien.
- **Verdikt:** bestanden, keine Korrektur. [[nutzungskonzepte]] bleibt `established`,
  `last_updated` auf 2026-07-13.
- **Anreicherung:** Milieuzugehoerigkeit der Aktiven Familien (Buergerliche Mitte 35 /
  Buergerlich-Gehobene 25 / Adaptiv-Pragmatische 25 / Postmaterielle 15 %) neu in
  [[nutzungskonzepte]] erfasst (war bisher nicht dokumentiert).
- **Leitplanke gewahrt:** die feingliedrige Sinus-Verteilungstabelle (Ingenbohl/Innerschweiz/
  Kt. SZ/Schweiz, Foliennr. 51) ist nur approximativ lesbar → nur qualitativer Befund erfasst
  (Ingenbohl: Adaptiv-Pragmatische + Buergerliche Mitte ueber-, Postmaterielle/Performer/
  Konsumorientierte Basis unterrepraesentiert), keine unsicheren Dezimalwerte uebernommen.
- **Marktpuls (E7) nicht erneut geprueft** — unveraendert seit Run 17 (2026-07-12), kein neuer
  Publikationstermin erreicht.
- **Register gepflegt:** curriculum.md (Stand Run 21), wissensluecken.md (B-Tabelle + Erledigt),
  outputs/2026-07-13_training-run21.md.
- **Empfehlung:** Ruecktaktung ins Nachtfenster zum **vierten Mal in Folge** — vier Verifikations-
  laeufe ohne materiellen Befund; auto-schliessbare Rueckstaende seit Run 16 abgearbeitet.

## 2026-07-13 — Training-Run 20: Verifikations-Pass Lehrstueck «hoeherer Ertrag ≠ hoeherer Landwert» (Modell D)

- **Dritter Lauf in Folge im Verifikations-Modus.** Kein neuer Ingest — Modell-D-Volltext-
  Recompute des Landwert-Lehrstuecks (Wuest-Kurs S. 153-155, in [[residualwertmethode]] seit
  Run 9 dokumentiert, bisher nicht gegen die Original-Folie nachgerechnet).
- **Drei Varianten-Zeilen nachgerechnet:** Office-Homes (Ertragswert 39'845'000 − Erstellung
  30'500'000 = 9'345'000 ≈ 9.3 Mio ✓), Perlenhaeuser (39'249'000 − 29'900'000 = 9'349'000 ≈
  9.3-9.4 Mio, Tabellenwert 9.4 Mio auf Rundungsgrenze), Best-Ager-Community (38'981'000 −
  33'200'000 = 5'781'000 ≈ 5.8 Mio ✓). Formel Landwert = Ertragswert − Erstellung reproduziert
  sich durchgehend.
- **Zusatz-Plausi:** CHF/m2-GSF-Kennwert (880/880/550) impliziert fuer alle drei Varianten ein
  konsistentes Grundstueck (~10.5-10.7k m2 GSF) — bestaetigt die im Lehrstueck vorausgesetzte
  Vergleichbarkeit «gleiches Grundstueck, unterschiedliche Konzepte».
- **Verdikt:** bestanden, keine Korrektur. [[residualwertmethode]] bleibt `established`,
  `last_updated` auf 2026-07-13.
- **Marktpuls (E7) nicht erneut geprueft** — unveraendert seit Run 17 (2026-07-12), kein neuer
  Publikationstermin erreicht; ein taeglicher Web-Check hat keinen Grenznutzen.
- **Empfehlung an Raphael (zum dritten Mal in Folge):** Ruecktaktung des Loops ins Nachtfenster.
  Drei Verifikationslaeufe ohne Befund/Korrektur deuten auf sinkenden Grenznutzen der
  Intensivphase fuer diese spezifische KB hin.
- [edit] [[residualwertmethode]] — Verifikations-Sektion zum Lehrstueck, `last_updated`.
- [edit] `wiki/wissensluecken.md`, `training/curriculum.md` — Run-20-Verifikationsstand.
- [output] `outputs/2026-07-13_training-run20.md`.

## 2026-07-12 — Training-Run 19: Verifikations-Pass Ertragswert-/Residualwert-Kennwerte (Modell D)

- **Zweiter Lauf im Verifikations-Modus** (Fortsetzung Run 18). Kein neuer Ingest — haertet die
  am haeufigsten reproduzierten Rechenwege per **Volltext-Recompute**.
- **Herosé-Annuitaeten** (1'820'000 Hotellerie-Taxe / 253'200 Pflege-Abschreibung): Standard-
  Kapitalwiedergewinnungsformel PMT=P·i/(1−(1+i)^−N) trifft beide auf ≤0.04 % — praeziser als
  die zunaechst nahegelegte lineare-Abschreibung-+-Durchschnittszins-Lesart (Abw. ~1.1 %).
  Formel-Beschreibung in [[ertragswert-dcf]] praezisiert.
- **DXMA-A4-Rechenbeispiel** (Ertragswert Miete/STWE, Investition, Landwert): vollstaendig
  nachgerechnet, bestanden bis auf Rundung. Fund: **BKP-2-Kosten rechnen auf aGF (810 m2), nicht
  auf GF (1'050 m2)** — bisher nicht explizit; jetzt in [[residualwertmethode]] klargestellt.
  DXMA-«80 %-Aufschlag» = BKP2/0.8 (abweichend von der 85 %-Regel des Wuest-Hauptschemas, zwei
  belegte Quellen-Konventionen).
- **Barwert-Verlust-Tabelle** (Wuest-Kurs S. 69): 5 %/10 %-Zeilen bestehen (≤1 Pp Abweichung),
  3 %-Zeile weicht wachsend ab (1.4 Pp bei 10 J → 4.2 Pp bei 50 J) → ⚠-Vermerk in
  [[ertragswert-dcf]], Status bleibt established.
- **Verdikt:** keine neue Luecke, keine Herabstufung. Beide Artikel bleiben `established`,
  `last_updated` auf 2026-07-12.
- [edit] [[ertragswert-dcf]] — Annuitaetenformel-Praezisierung, Barwert-Verlust-⚠-Vermerk,
  `last_updated`, «Offen»-Sektion.
- [edit] [[residualwertmethode]] — DXMA-Recompute-Sektion, aGF/GF-Klarstellung, `last_updated`,
  «Offen»-Sektion.
- [edit] `wiki/wissensluecken.md`, `raw/_INGESTED.md`, `training/curriculum.md`, `wiki/INDEX.md`
  — Run-19-Verifikationsstand.
- [output] `outputs/2026-07-12_training-run19.md`.

## 2026-07-12 — Wissens-Chef Run 1 Nachtrag: E1 entschieden (HNF/GF-Faktor kontextabhaengig)
- [entscheid] Fachentscheid E1 (Raphael 12.07.2026) Hub-weit verankert: Gesamtgebaeude 0.60–0.61 (m²↔m³-Bruecke), Regelgeschoss 0.70. In realwert-sachwert.md als Entscheid-Box gesetzt; grobkosten verweist hierher. Der Faktor war in dieser KB bereits latent beidseitig genutzt (Z.96 /0.70 Geschoss, Z.156 0.61 Gesamtgebaeude).

## 2026-07-12 — Training-Run 18: Verifikations-Pass Healthcare-Kennwerte (Modell D)

- **Erster Lauf im Verifikations-Modus** (PFLICHT-Stufe ab 12.07., Rule auto-verbesserungen 260712).
  Kein neuer Ingest — der auto-schliessbare Rueckstand ist seit Run 16 abgearbeitet, Run 17 war
  Marktpuls. Dieser Lauf haertet die meistgenutzten Kennwerte per **Volltext-Recompute** (BKP2 ÷
  Flaeche/Zimmer gegen die Quell-Zahlen).
- **Bestanden:** Herose-Einzelanker (BKP2/GF 3'848, /GV 1'105, /Zimmer 346'681 — exakt); JANS-Wohn-
  Kennwert-Kette (2'900×1.16=3'365 → /0.75=4'485 → HNF 7'350, rundungsgenau); 6 von 8 Heim-Objekten
  der 8-Objekt-Tabelle (Dankensberg/Trotte/Herose/Lanzeln/Mathysweg/St.Anna, CHF/m2 GF **und** CHF/m3 GV);
  USZ-BKP-Teilsumme plausibel; CHF/Pflegezimmer als 24-m2-normiert bestaetigt.
- **Beanstandet:** Averecura (Tab. 4'250/1'420 vs. recompute 3'981/1'285) + Vella-Zeile (BKP2 24.5 Mio ÷
  7'150 = 3'427 ≠ Tab. 2'835) → quellenintern inkonsistente Roh-Zeilen im Original-Blatt → neue Luecke
  **D10** (Bring-Schuld Blatt-Bereinigung). Zusaetzlich neue Luecke **D11** (m3-Richtwerte 2003
  aufindexieren — Index-Faktor 2003→2026 fehlt, nicht geraten).
- **Verdikt:** tragende Kennwerte bleiben `established`; Neubau-Band **~3'800-4'500 CHF/m2 GF**
  (teuerungsbereinigt) unveraendert, reproduzierbarer Rohband praezisiert auf **2'623-3'981**.
- [edit] [[realwert-sachwert]] — `last_updated` 07-10→07-12; m3-2003-Flag → D11 verlinkt; Verifikations-
  Verdikt in «Offen / zu vertiefen»; die bestehende (dangling) Run-18-Notiz jetzt durch unabhaengigen
  Recompute belegt + D10-Verweis aufgeloest.
- [edit] `wiki/wissensluecken.md` — D10 + D11 in Tabelle A; B-Sektion auf Verifikations-Modus; Run-18-
  Erledigt-Eintrag; Ruecktaktungs-Empfehlung.
- [edit] `raw/_INGESTED.md`, `training/curriculum.md`, `wiki/INDEX.md` — Run-18-Verifikationsstand.
- [output] `outputs/2026-07-12_training-run18.md`.
- **Empfehlung:** Ruecktaktung des Loops ins Nachtfenster (auto-schliessbarer Rueckstand abgearbeitet;
  naechstes externes Signal ab 01.09.2026). Entscheid Raphael, nicht stillschweigend umgesetzt.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Kennwerte-Bruecke zu grobkosten
- [link] [[realwert-sachwert]] -> `grobkosten/wiki/kennwerte` als fuehrende m3-GV-Grobkennwerte-DB (Ankerwert ~1'020 CHF/m3 GV Wohnbau ZH). Bezugsbasis-Warnung ergaenzt (Ausbaustandard-Tabelle S.37 vs. Dimensions-Median = verschiedene Wuest-Produkte).
- [offen] m2->m3-Faktor-Diskrepanz (grobkosten 0.70 vs. hier 0.60-0.61) -> heikler Fachentscheid Raphael (siehe koordination-Report).

## 2026-07-12 — Training-Run 17: Auffrischungslauf Marktpuls (keine offene Luecke)

- **Reiner Aktualisierungslauf** — alle auto-schliessbaren Luecken sind seit Run 16 zu; verbleibend
  nur D5 (Bring-Schuld Raphael). Keine neue Quelle ingestiert.
- **Bewertungsordner geprueft** (`IMMO-01/01 BEWERTUNG PROJEKTE`): **kein neuer JANS-Bewertungsfall**
  seit Run 6 (juengster Ordner Wangen 8855, 09.06.2026) → keine neue reale Fallauswertung.
- **Marktpuls-Web-Check (12.07.2026):** alle Zins-/Preis-Anker **unveraendert** — SNB-Leitzins 0.00 %
  (Entscheid 19.06.2026; Inflation 0.1 % Feb → 0.6 % Mai, erdoelgetrieben; BIP ~1 % 2026 / ~1.5 % 2027),
  Referenzzins 1.25 % (BWO, naechste Publ. 01.09.2026), SMG/Homegate-Mietindex Mai-2026 133.7 (+2.5 % YoY),
  BFS-Baupreisindex April-2026 100.6 (+1.0 % YoY), UBS SREBI Q1-2026 0.69 «moderat» (Q2 noch nicht publ.),
  WP-Sommerprognose 2026 Wohneigentum ~+3 % (EFH +3.1 % / ETW +2.8 %).
- **Einziger neuer Detailwert:** massgebender **Durchschnittszinssatz per 31.03.2026 = 1.31 %** (von
  1.32 % per 31.12.2025) → driftet weiter weg von der Erhoehungsschwelle 1.37 %; Risiko einer
  Referenzzins-Erhoehung auf 1.50 % sinkt weiter.
- **`wiki/investorenmarkt-makro.md`** (07-12, established): Durchschnittszinssatz-Update in der
  Referenzzins-Marktpuls-Sektion + Run-17-Logeintrag + Frontmatter-Quelle/last_updated 07-10→07-12.
- Register gepflegt: `raw/_INGESTED.md` (Run-17-Stand-Block), `training/curriculum.md` (E7 ✓ 07-12),
  `wiki/wissensluecken.md` (Run-17-Erledigt-Zeile), `outputs/2026-07-12_training-run17.md`.

## 2026-07-10 — Training-Run 16: D8 geschlossen — JANS-Kennwerte-DOCX + Healthcare-Umbaukosten

- **D8 geschlossen** (die letzte auto-schliessbare Daten-Luecke): Wie schon bei den `.xlsx`-Tools
  (Run 15) sind auch die als freigabegebunden angenommenen Kennwerte-**DOCX** TCC-lesbar
  (unzip + XML-Parser). Drei bisher ungelesene JANS-DOCX aus `IMMO-06 Kennwerte` ingestiert.
  10 Themen dieses Laufs: (1) aGF/GF-Umrechnungsfaktor, (2) JANS-Wohn-Erstellungskosten-Kennwert
  EFH/ZFH indexiert, (3) BKP2→BKP1-5-Herleitung + TG-Ansatz, (4) Thalwil-Bohlweg-Rechenbeispiel +
  HNF-Faktor, (5) Healthcare-Spitalumbau-Kostenband CHF/m2 NF, (6) realer Fall Psychiatrie-Teilumbau,
  (7) realer Fall Kispi ZH Paediatrie, (8) `_Kennwerte_Links.docx` Quellenverzeichnis, (9) Emilienheim-
  Gap-Bestaetigung, (10) Marktpuls-Web-Check.
- **`wiki/flaechendefinitionen-sia.md`** (07-10, established): neuer **JANS-Umrechnungsfaktor aGF ↔ GF**
  (Altbau **0.8** / Neubau **0.9**) in der aGF/BGF-Abgrenzungssektion — Faustwert, um aus der
  baurechtlich anrechenbaren Flaeche die geometrische GF fuer Volumen-/Kostenrechnung abzuleiten.
  Frontmatter last_updated 07-06→07-10, Quelle `_Kennwerte Jans.docx` ergaenzt.
- **`wiki/realwert-sachwert.md`** (07-10, established): zwei neue Sektionen. (a) **«JANS-Erstellungskosten-
  Kennwert Wohnen (EFH/ZFH)»** — belegte indexierte Herleitung Median 2020 2'900 → 2025 **3'365 CHF/m2
  GF BKP 2** (Index 116) → BKP2=75 % → **4'485 CHF/m2 GF BKP 1-5**; TG **42'000 CHF/SP**; Worked example
  Thalwil Bohlweg 1 (950 m2 GF → 4.6 Mio inkl. TG; **HNF-Faktor 7'350 CHF/m2 HNF BKP 1-5**). Aktueller
  datierter JANS-Ansatzwert, ergaenzt die WP-Benchmarks (Stand 2021-2023). (b) **«Healthcare-Umbau-
  Kostenband (JANS Spektrumskosten, CHF/m2 NF)»** — 6-stufiges Spitalumbau-Band (Buero→Praxis 2'000-3'000
  bis OP-Station ab 10'000) + 2 reale JANS-Einordnungsfaelle (Psychiatrie-Teilumbau ~1'100/m2 HNF →
  Zielkorridor 1'800-2'500; Kispi ZH Paediatrie 4'412/m2 NF). Trennt Umbau (NF) sauber vom Neubau (GF).
  Frontmatter + Offen-Log aktualisiert.
- **`wiki/datenquellen-registry.md`** (07-10, established): `_Kennwerte Jans.docx` + Healthcare-Umbaukosten
  von «offen/DOCX» auf **eingearbeitet**; neue Zeile **`_Kennwerte_Links.docx`** (JANS-Quellen-Linkliste,
  in die Nutzungsregel gespiegelt). Healthcare-Zeile auf «Neubau- UND Umbaukennwerte belegt».
- **`wiki/investorenmarkt-makro.md`** (07-10, established): **Marktpuls-Web-Check Run 16** — alle Anker
  unveraendert (SNB-Leitzins 0.00 %, Referenzzins 1.25 %, SARON 0.78 %, Festhypothek 5 J ab 1.11 %/10 J
  ab 1.41 %, Mietindex Mai-2026 133.7 +2.5 % YoY, Baupreisindex April-2026 100.6). Kein neuer
  Publikationstermin seit Run 15.
- **Register:** `raw/_INGESTED.md` (3 DOCX-Zeilen + Stand-Run-16-Block), `wiki/wissensluecken.md`
  (D8 durchgestrichen/erledigt + Emilienheim-Gap bestaetigt nicht verfuegbar; nur noch D5 offen),
  `training/curriculum.md` (E5 ✓ vollstaendig), `wiki/INDEX.md` (realwert-sachwert + flaechendefinitionen-sia).
  Lern-Report `outputs/2026-07-10_training-run16.md`.
- **Status:** Alle T-Aufgaben, der Wuest-Kurs, alle lesbaren E-Quellen, **D4 und D8** eingearbeitet.
  Offen nur noch **D5** (buerospezifische Margen-/Finanzierungspraxis — echte Bring-Schuld Raphael,
  nicht durch den Loop schliessbar) + laufender Marktpuls (naechste Publikationen 01.09.2026).

## 2026-07-08 — Training-Run 15: D4 geschlossen — Excel-Residualwert-Tools reverse-engineered

- **D4 geschlossen** (die letzte hoch-priorisierte Daten-/Formel-Luecke): Die vier Residualwert-
  Excel-Tools (`05 Residualwert/Exel Tabelle/{wp,jans}/`, je Pre-Check + «Residualwert Berechnung»)
  wurden per **unzip + XML-Zellparser** auf Zellebene ausgelesen. Der SharePoint-Pfad ist entgegen
  der Freigabe-Annahme TCC-lesbar (keine Freigabe noetig). 10 Themen dieses Laufs: (1-2) WP
  Pre-Check-Engine + Residualwert-Kette, (3) HNF-Herleitung ohne Grundrisse, (4) Betriebskosten-
  Parameterset, (5) Diskont-Empfehlungen, (6) Gewerbe-5.5-%-Regel, (7) JANS-Kalibrierungs-Delta,
  (8) Sensitivitaets-Formel = CS-Break-Even-Generator, (9) JANS- vs WP-Vergleich, (10) Marktpuls.
- **`wiki/residualwertmethode.md`** (07-08, established): neue Sektion **«Excel-Tool Formel-Logik
  (D4 — reverse-engineered aus den Zellen)»** — zwei Tool-Familien dokumentiert. Einblatt-Tool
  «Residualwert Berechnung»: JANS = **formel- und default-identisch mit WP** (nur Kopfzelle). Belegte
  Rechenkette Soll-Ertrag→Nettoertrag→Ertragswert(=Nettoertrag/Diskont)→Residualwert−Abzuege→Wert
  n. Fertigstellung/Brutto-/Nettorendite; Defaults Diskont 2.5 %/Risiko 7 %/Betriebsk. 5 %/Leerstand
  1 %/IH 13/IS 21 CHF-m2HNF/Zeitwert 2 %×3 J; **Gewerbe-Miete = 5.5 % der Erstellungskosten**.
  Pre-Check-Tool: **«AZ-HNF Tool»-Engine leitet HNF ohne Grundrisse aus einer Planungsziffer ab**
  (HNF = GF − VF − KF − FF − NNF; Effizienz-Ampel KF/GF 0.18/0.23/0.30; Kompaktheit 1-5; Skalen-/
  Kostenniveau-Faktoren 0.9-2.1; Hochhausfaktor 1.1). **JANS-Kalibrierung = genau 2 Zellen** (Risiko
  7 %→12 %, Diskont 2.4 %→2.45 %). Sensitivitaets-Zellformel bestaetigt den T18-Break-Even-Generator.
  Frontmatter last_updated 06-10→07-08; «Offen»/Tool-Bullet aktualisiert (D4 ✓).
- **`wiki/ertragswert-dcf.md`** (07-08, established): neue Diskont-/Risiko-Kalibrierungs-Notiz (D4
  vollstaendig geschlossen) — JANS-Pre-Check-Defaults 12 %/2.45 % vs WP 7 %/2.4 % vs gelebte Praxis
  8 %/2.70 %; Ertragswert = Nettoertrag/Diskontierung aus Zellen bestaetigt. last_updated 07-06→07-08.
- **`wiki/investorenmarkt-makro.md`** (07-08, established): **Marktpuls-Web-Check Run 15** —
  SNB-Leitzins 0.00 % + Referenzzins 1.25 % unveraendert (BWO-Bestaetigung 02.03.2026, erwartet bis
  Ende 2026 / keine Aenderung vor Mitte 2027). **Neu: BFS-Baupreisindex auf Basis Okt-2025 = 100
  umgestellt, erster Stand April 2026 = 100.6 (+1.0 % YoY)** → Bauteuerung moderat. last_updated
  07-04→07-08; Baupreisindex-Zeile + Marktpuls-Log + Quellen ergaenzt.
- **Register:** `raw/_INGESTED.md` (4 XLSX offen→eingearbeitet + Stand-Run-15-Block), `wiki/
  wissensluecken.md` (D4 durchgestrichen/erledigt + Erledigt-Eintrag), `training/curriculum.md`
  (E2 ✓), `wiki/INDEX.md` (residualwertmethode-Zeile). Lern-Report `outputs/2026-07-08_training-run15.md`.
- **Status:** Alle T-Aufgaben, der Wuest-Kurs, alle lesbaren E-Quellen **und D4** eingearbeitet.
  Offen nur noch: D5 (buerospezifische Margen-/Finanzierungspraxis, Bring-Schuld Raphael), D8
  (JANS-Kennwerte-DOCX, Freigabe), Emilienheim-Flaechenkennwerte, laufender Marktpuls.

## 2026-07-06 — Training-Run 14: T19 geschlossen — JANS-Healthcare-Kennwert-Raster befuellt

- **T19 geschlossen** (die letzte offene T-Aufgabe). Drei bisher ungelesene Quellen aus der
  Healthcare-/WALD-Bibliothek ingestiert und synthetisiert: JANS' eigenes gefuelltes **8-Objekt-
  Referenzblatt** «Kennwerte Altersheime Gesundheitszentren» (8 reale CH-Heime 2011-2025), die
  **WALD-Tertianum-Baumassenberechnung** (Richtprojekt, V1-V7) und die **SECO/USI-Effizienzstudie
  Crivelli/Filippini/Lunati 2001** (835 CH-Pflegeheime).
- **`wiki/projektstruktur-deliverables.md`** (07-06, established): T19-Raster-Bullet von
  «Arbeitsstand/leer» auf **befuellt** — Wirtschaftlichkeitsfaktoren-Tabelle (Bettzahl 28-123,
  **GF/Bett 90-135 m2** sinkend mit Groesse, **NF/Bett 51-71 m2**, **Bauvolumen/HNF 4.3-9.7**), die
  3 Fragestellungen belegt beantwortet (**optimale Betriebsgroesse 70-80 Betten**, SE = 1 bei 79;
  Schwelle ~50; normale Groesse Median 52/Ø 62), Referenzobjekte identifiziert (Wald = Averecura
  28 PZ; Szenarios = Baumassen V1-V7).
- **`wiki/realwert-sachwert.md`** (07-06, established): Healthcare-Kostenband von 1 (Herosé) auf
  **8 reale Objekte** verbreitert — neue Tabelle mit **BKP 2 = 2'623-4'250 CHF/m2 GF (indexiert
  3'042-4'485), 826-1'420 CHF/m3 GV, 273'000-780'000 CHF/PZ**; Healthcare-Neubauansatz auf
  **~3'850-4'500 CHF/m2 GF** praezisiert.
- **`wiki/flaechendefinitionen-sia.md`** (07-06, established): neue Sektion **JANS-Flaechenfaktoren
  Healthcare** — HNF/GF **~0.43-0.61 (Ø ~0.55)**, GF/Baumasse ~0.29-0.33, Bauvolumen/HNF 4.3-9.7;
  belegt aus dem 8-Objekt-Set, kontrastiert mit Wohnen (0.60-0.75).
- **`wiki/ertragswert-dcf.md`** (07-06, established): Betriebsgroessen-/Skaleneffizienz-Befund
  (Crivelli 2001) in die Healthcare-Ertragsseite eingewoben (Optimum 70-80 Betten, ~50 % zu klein →
  Tragfaehigkeitsrisiko bei knappen Margen).
- **Register:** `_INGESTED.md` (3 neue Quellen + Stand Run 14), `wissensluecken.md` (T19 → Erledigt,
  **keine offenen T-Aufgaben mehr**), `curriculum.md` (E10 ✓ + E7-Marktpuls 07-06), `INDEX.md`
  (4 Artikelbeschreibungen). Marktpuls-Web-Check: SNB 0.00 % / Referenzzins 1.25 % **unveraendert**
  (naechste Publikationstermine erst 09.2026).
- **Ausblick:** Loop weiter im Aktualisierungs-/Vertiefungs-Modus. Naechste Kandidaten bei Freigabe:
  D4 (`.xlsx`-Tool-Formeln), D8 (JANS-Kennwerte-DOCX), Emilienheim-Flaechenkennwerte; sonst Marktpuls.

## 2026-07-04 — Training-Run 13: Healthcare-Vertiefung — T17 vollstaendig geschlossen (Investoren-Markt-Seite)

- **T17 vollstaendig geschlossen** (Kosten- UND Investoren-Markt-Seite). Grosser Healthcare-
  Vertiefungslauf: sieben bisher ungelesene oeffentliche/Dritt-Quellen aus der Healthcare-Bibliothek
  + CRB-Marktpreise + Web, parallel via vier Lese-Agenten distilliert, zentral synthetisiert.
- **`wiki/ertragswert-dcf.md`** (07-04, established): (1) neue Sektion **Healthcare-Investoren-Markt-
  Diskont** aus **SenioResidenz AG GB 2017** (reiner Healthcare-Immobilien-Investor, WP-DCF): Marktwert
  21.75 Mio / Soll-Miete 1.145 Mio → **impliziter Brutto-Yield ~5.3 %** (Healthcare ~2 Pp ueber Wohnbau),
  Belehnung 40-60 %; angewandter Diskontsatz im Bericht nicht beziffert (unsicher). (2) Neue Sektion
  **Pflegeplatzkosten-Struktur** (BFS «Indikatoren Pflegeheime 2019-2021»: 10'035 CHF/Mt, Ertrag
  Pension 55 %/Pflege 43 %, Belegung 90 %, 60 % defizitaer; NZZ/Curaviva: Pension 4'124/KVG-Pflege
  4'401/Betreuung 1'529 CHF/Mt — nur Hotellerie speist die Liegenschaft). (3) **D3-Healthcare-Zeile**
  von *emerging* auf **belegt** gehoben. (4) **Gewerbe-Feinabstufung** je Mietersegment (Segment-
  Reihenfolge belegt aus WP-2026-Prognose Buero +0.5 %/Detailhandel −1.5 %) — D3-Rest praezisiert.
- **`wiki/investorenmarkt-makro.md`** (07-04, established): neue Sektion **Healthcare-Immobiliennachfrage
  (Obsan 03/2022)** — Pflegebett-Bedarf +69.2 %/**+54'335 Betten bis 2040** (~+921 Heime), 80+ +88 %,
  strukturelle Angebotsluecke (+600 Ist vs. +2'587 Soll Betten/J), Kosten-BIP-Anteil verdoppelt
  (3.4-4.8 % bis 2045/50). Marktpuls-Web-Check 07.2026: **alle Zins-Anker unveraendert**; neu WP-2026-
  Segment-Prognose Geschaeftsflaechen.
- **`wiki/realwert-sachwert.md`** (07-04, established): neue Sektion **Healthcare-Kostenband erweitert
  auf Spital** — CRB werk-material (Frauenklinik KSL 3'426 / USZ-Mehrzweckbau 3'767 CHF/m2 GF +
  BKP-Aufgliederung USZ, Preisstand 2020.04 Ostschweiz). Healthcare-Neubau-Kostenband **~3'400-3'850+
  CHF/m2 GF** (Pflegeheim unten, Spital oben).
- **`wiki/projektstruktur-deliverables.md`** (07-04): Healthcare-Bruecke auf **T17 geschlossen**
  erweitert (Investoren-Marktwert SenioResidenz, Operating-Benchmarks BFS, **JANS-Kennwert-Raster 2411**
  als Arbeitsstand + realer ZH-Fall Emilienheim Kilchberg).
- **Register:** `raw/_INGESTED.md` (7 neue Quellen-Zeilen + Stand Run 13), `curriculum.md` (E9
  Healthcare vollstaendig, E7 Marktpuls), `wissensluecken.md` (T17 → Erledigt; neue Aufgabe **T19**
  JANS-Kennwert-Raster befuellen), `INDEX.md` (4 Deskriptoren). Output `outputs/2026-07-04_training-run13.md`.

## 2026-07-02 — Training-Run 12: Healthcare-Bewertungsbruecke (T17 belegt) + Health-Check-Cleanup

- **T17 (Healthcare-Bewertungsfall) auf der Kosten-/Annuitaetsseite geschlossen** ueber die bisher
  ungelesene, oeffentliche Healthcare-Bibliothek (`IMMO-06/Healthcare/HEIM`; nicht D8-freigabe-
  gebunden, da Dritt-/oeffentliche Dokumente): der **Baukredit-Bericht Neubau Pflegeheim Herosé
  Aarau** (Stadtrat Aarau, Botschaft GV 2018-2021/285, 13.12.2021, 116 Zimmer, 55.8 Mio).
- **`wiki/realwert-sachwert.md`** (07-02, established): neue Sektion **Healthcare-Neubau-
  Erstellungskosten-Benchmark** — BKP-Zusammenstellung (55.8 Mio), Kennwerte BKP 2 = **1'105 CHF/m3
  GV / 3'848 CHF/m2 GF / 346'681 CHF/Zimmer**, **Vier-Heim-Vergleich** (Herosé/Suhrhard/Blumenrain
  Zollikon/Obere Muehle Lenzburg: 337-418k CHF/Zimmer, Taxe 150-180). Bestaetigt Healthcare-Zuschlag
  +20-25 % (~3'850-4'000 CHF/m2 GF).
- **`wiki/ertragswert-dcf.md`** (07-02, established): neue Sektion **Healthcare-Ertragsmodell — realer
  CH-Fall Herosé** — kostenbasiertes Taxensystem, **Annuitaets-Finanzierung** (lineare Abschreibung
  **33 J** nach CURAVIVA Handbuch Anlagebuchhaltung V2019, kalk. Zins = **BWO-Referenzzins 1.25 %**),
  KVG-Abzug 6.812 Mio, Annuitaet/Bett/Tag 43.75+6.08, **Hotellerie-Taxe 120→153 CHF/Tag**,
  Spezialfinanzierung ueber Investitionsfonds, KoRe-Kostentraeger (ARTISET). Healthcare-Diskontzeile
  der D3-Tabelle: Kosten-/Annuitaetsseite **belegt** (statt *emerging*/Annahme), Investoren-Markt-
  Diskont bleibt offen.
- **`wiki/projektstruktur-deliverables.md`** (07-02): neue Sektion **Healthcare-Bewertung — Bruecke
  zum Skill `healthcare-wirtschaftlichkeit`** (drei durable Regeln: Erstellungskosten +20-25 %,
  kostenbasierter Ertragswert via Annuitaet, Deliverable ueber Schwester-Skill).
- **Run-11-Prozessleck nachgetragen** (Health-Check-Finding E): `ertragswert-dcf.md` `last_updated`
  30.06.→07-02, Run-11-Eintrag (10-j Eidgenoss 0.24-0.40 %) in der Offen-Sektion protokolliert,
  Output `outputs/2026-06-30_training-run11.md` angelegt.
- **Health-Check-Findings B/F bereinigt:** 2 falsche `[[Backlinks]]` → Klartext
  (`[[healthcare-wirtschaftlichkeit]]`→Skill in `zh-wald-8636`; `[[outputs/…]]`→Report in
  `sz-wangen-8854`); Frontmatter vereinheitlicht (`zh-thalwil` `plz: 8136`→**8800**; `kanton:`
  Zuerich→**Zürich** in langnau/zollikon); INDEX `nutzungskonzepte` *emerging*→**established**.
- **Marktpuls (Web, 02.07.):** alle Anker unveraendert — SNB 0.00 %, Referenzzins 1.25 % (naechste
  Publ. 01.09.2026), Mietindex Mai-2026 133.7 (+2.5 % YoY), 10-j Eidgenoss ~0.35 %. → [[investorenmarkt-makro]].
- Register: `raw/_INGESTED.md` (2 neue Quellen + Stand Run 12), `curriculum.md` (E9 Healthcare ✓,
  E7 Marktpuls), `wissensluecken.md` (T17 reframed + Erledigt), `datenquellen-registry.md` (Healthcare-
  Zeile), `INDEX.md` (Deskriptoren). Output `outputs/2026-07-02_training-run12.md`.

## 2026-06-30 — Training-Run 11: Marktpuls 10-j Eidgenoss (nachtraeglich protokolliert)

- **`wiki/ertragswert-dcf.md`**: risikofreies Basisniveau der JANS-Diskontsatz-Tabelle (D3) auf
  **10-j Eidgenoss 0.24-0.40 % (Juni 2026, Ende Juni sinkend auf 0.24 %)** aktualisiert (Web,
  tradingeconomics/SNB-Datenportal). **Prozessleck:** Run 11 fuehrte `last_updated`/CHANGELOG/Output
  nicht nach (vom Health-Check 01.07. gemeldet, Finding E) — **nachtraeglich mit Run 12 protokolliert**
  (dieser Eintrag + `outputs/2026-06-30_training-run11.md`). Kein weiterer inhaltlicher Edit.

## 2026-07-01 — Wissens-Health-Check (Phase 1, unbeaufsichtigt)

- Audit A-G ueber 26 Wiki-Artikel + Outputs + `_INGESTED`/`training`. Befund: gesunde, sehr gut
  belegte KB (kein ß, keine Deko-Symbole, Quellenpflicht + Stand durchgaengig, keine Orphans,
  INDEX vollstaendig). 3 echte Findings: (1) **Run 11 vom 30.06. hat `ertragswert-dcf.md`
  editiert, aber `last_updated`/CHANGELOG/Output nicht nachgefuehrt** (Prozessleck wie Run 7);
  (2) **2 formal falsche `[[Backlinks]]`** — `[[healthcare-wirtschaftlichkeit]]` (Skill, in
  `zh-wald-8636`) + `[[outputs/2026-06-09_...]]` (in `sz-wangen-8854`); (3) minor Frontmatter-
  Inkonsistenzen (`kanton:` Zuerich/Zürich, Thalwil `plz: 8136` statt 8800; `nutzungskonzepte`
  INDEX *emerging* vs. Frontmatter *established*). Keine Aktionen ausgefuehrt (Phase 2 offen).
  Report: `outputs/2026-07-01_health-check.md`.

## 2026-06-28 — Training-Run 10: drei ungelesene Quellen ingestiert (D3-Wohnbau-Faustregel belegt + SIA 416 normverankert)

- **`wiki/ertragswert-dcf.md`** (06-28, established): zwei neue belegte Sektionen aus Raphaels
  datierter Notiz `231231_Residualwert und Diskontierung.docx` (31.12.2023) — **JANS-Diskontsatz-
  Dekomposition 2.5 %=2.0 % Kapitalverzinsung+0.5 % Abschreibung** (schliesst die Wohnbau-Faustregel
  von D3), **Betriebskosten-Pauschale 2.5 %=5x0.5 %** (Verwaltung/Versicherung/Versorgung,
  Instandhaltung, Instandsetzung, Leerstand, Liegenschaftssteuer), belegte **Rechenkaskade**
  Residualwert←Ertragswert←Nettoertrag←Mietertrag (worked example Einsiedeln 287 CHF/m2 × 300 m2)
  + **Abzinsungsformel** W0=Wn/(1+i)^N. Aus `Disskontierung.docx` neue Sektion **Healthcare-
  Diskontsatz-Anker** (Pflege 4-8 %, JANS-Arbeitsnotiz, sauber als nominal/europaeisch eingeordnet)
  → Healthcare-Zeile der konsolidierten Tabelle von *speculative* auf *emerging*.
- **`wiki/flaechendefinitionen-sia.md`** (06-28, established): **vollstaendig auf die kanonische
  SIA-416:2003-Norm verankert** (Quelle: Norm-PDF S. 6-15) — Hierarchie GSF/GF/NGF/NF/HNF/NNF/VF/FF/
  KF/AGF mit Codier-Ziffern + normgetreue Definitionen, Wohnungsbau-Beispiele NNF/VF/FF, Volumen
  GV/NGV/KV/AKV (GV ohne Zu-/Abzuege, Bezug CHF/m3-Kennwerte), Miet-/STWE-Flaechen FSN/FGN (Bruecke
  `stockwerkeigentum`) und die wichtige **Abgrenzung Norm 0.1**: aGF/BGF (Ausnuetzung), Baumassen-
  Volumen und Energiebezugsflaeche sind **keine** SIA-416-Begriffe, sondern baurechtlich/energetisch.
- Kursnotizen IMG_7064-67 ausgewertet (Anfangsrendite=Mietertrag/Kaufpreis, 30 % Landanteil /
  8 % Risikomarge, WP-Pre-Check-Tool-Layout als D4-Teilbeleg ohne Zahlen).
- Register: `raw/_INGESTED.md` (drei Quellen → eingearbeitet, Stand Run 10), `curriculum.md`
  (neu E8 ✓), `wissensluecken.md` (D3 → «niedrig», Erledigt-Eintrag), `INDEX.md` (Deskriptoren),
  Output `outputs/2026-06-28_training-run10.md`. Marktpuls unveraendert seit Run 9 (06-26).

## 2026-06-26 — Training-Run 9: JANS-Diskontsatz-Tabelle konsolidiert (D3 T-Teil) + Marktpuls

- **`wiki/ertragswert-dcf.md`** (06-26, → established): neue Sektion **JANS-Diskontsatz-Tabelle (D3
  konsolidiert)** — alle bisher verstreuten Diskontsatz-Anker (WP S. 52/55, Risikozuschlagsmodell
  S. 54, JANS-Konvention 2.50/2.70 %) zu **einer** additiven Bottom-up-Herleitung zusammengefuehrt:
  risikofreier Basiszins **10-j Eidgenoss ~0.35 % (Juni 2026, Web)** + Illiquiditaets-/Lage-/
  Objektzuschlag, gegen den WP-top-down-Satz plausibilisiert (beide Wege → gleiche Bandbreite).
  Konsolidierte Tabelle je Nutzung/Lage (Wohnen 2.1-3.3 %, Gewerbe 2.7-3.8 %, Healthcare
  ~3.0-4.0 % *Annahme*) + **Real-vs-nominal-Bruecke (Fisher**, Langfrist-Teuerung ~1.0 % → nominal
  ~3.1-4.3 % Wohnen) + Sensitivitaets-Leitplanke −20 Bps → +16 %. Belegte Zeilen abschliessend; die
  JANS-Faustregeln (Illiquiditaets-/Objektzuschlag, Gewerbe-Feinabstufung, Healthcare-Zuschlag)
  bleiben als *Annahme* markierte Bring-Schuld (Healthcare → T17).
- **`wiki/investorenmarkt-makro.md`** (06-26): Marktpuls-Refresh — **Rendite 10-j Bundesobligation
  ~0.32-0.40 % (Juni 2026)** neu als risikofreies Basisniveau erfasst; Web-Check bestaetigt
  **SNB-Leitzins 0.00 % (19.06) + Referenzzins 1.25 %** unveraendert gegenueber Run 8.
- Register: `wissensluecken.md` (D3 T-Teil ✓, D3 von «D/T hoch» auf «D mittel» zurueckgestuft),
  `curriculum.md` (E7 laufend Run 9), `raw/_INGESTED.md` (Stand Run 9), Output
  `outputs/2026-06-26_training-run9.md`.

## 2026-06-22 — Training-Run 8: CS-Sensitivitaets-Generator formalisiert (T18) + Mietpuls 05.2026

- **`wiki/projektstruktur-deliverables.md`** (06-22, → established): neue Sektion **CS-Sensitivitaets-
  Generator (T18)** — die Niederhasli-Zwei-Modell-Tabelle als **ein verallgemeinertes Rechen-Schema**
  formalisiert: `Marge(δ) = 1 − K0(1+βδ)/[E0(1+αδ)]` mit Ertrags-/Kosten-Elastizitaet α/β und
  **geschlossener Break-Even-Formel `δ* = (K0−E0)/(E0·α−K0·β)`**. Uebertragen auf vier Werttreiber
  (Ausnuetzung/Mietzins α1β0 → δ\*=−M0; Leerstand; Baukosten α0β1 → γ\*=+M0/(1−M0)). Aus den
  Niederhasli-Ist-Zahlen rechnerisch validiert: **BE_A = −8.1 % (= −M0) bestaetigt; BE_B auf −11.6 %
  praezisiert** (frueher per Auge ~−13 %); **effektive Kosten-Elastizitaet β ≈ 0.33** (nicht 0.30,
  «70/30» ist gerundet). Tornado-Sensitivitaet `dM/dδ=(1−M0)(α−β)`, Modellwahl-Regel A/B =
  RW-`tief`/`hoch`, 3-Zeilen-Rezept fuer neues CS. CS-Glossar um die Generator-Formel ergaenzt.
- **`wiki/investorenmarkt-makro.md`** (06-22): Mietpuls-Refresh — **SMG/Homegate-Mietindex Mai 2026
  133.7 (+2.5 % YoY)**, realisierte Mieten ueber der +0.7-%-Prognose; Gesamtjahr 2025 +2.3 %; Hotspot
  Stadt Luzern +7.2 %. Web-Check bestaetigt Referenzzins 1.25 % stabil + SREBI Q1-2026 0.69 als
  aktuellen Anker (gegenueber Run 7 unveraendert).
- Register: `wissensluecken.md` (T18 ✓), `curriculum.md` (E7 laufend Run 8; Run 7 nachgetragen),
  `_INGESTED.md` (T18-Formalisierung vermerkt). Report: `outputs/2026-06-22_training-run8.md`.

## 2026-06-20 — Training-Run 7: Marktpuls 06.2026 + Diskontsatz-Methodik (T10/D3) [Report nachgetragen]

Run 7 lief am 20.06.2026, editierte zwei Artikel und wurde per `nas-selfcommit` gesichert, hinterliess
aber **keinen Output-Report und keinen CHANGELOG-Eintrag** — hier nachgetragen (Run 8):

- **`wiki/investorenmarkt-makro.md`** (06-20): Marktpuls 06.2026 — **SNB-Lagebeurteilung 18.06.2026
  Leitzins 0.00 % gehalten** (Inflation 0.6 % Mai, erdoelgetrieben/Kerninflation verhalten, BIP
  ~1 %/~1.5 %); **Referenzzins per 01.06.2026 bei 1.25 % bestaetigt** — der befuerchtete Sprung auf
  1.50 % ist NICHT eingetreten (Durchschnittssatz unter Schwelle 1.37 %); **WP-Prognose 2026**
  (Transaktionspreise EW +2.8 % / EFH +3.1 %, Bauinvestitionen +5.3 %); SREBI Q2-2026 noch nicht publiziert.
- **`wiki/ertragswert-dcf.md`** (06-20, D3-Teilantwort): **Diskontsatz-Methodik der Bewertungshaeuser**
  (gemeindespezifisch aus Transaktionen + Plausibilisierung ueber 10-j Bundesobligation, IAZI/WP) +
  **Marktkontext 2026** (SNB 0 % / Referenzzins 1.25 % → WP-2023-Diskontanker bleiben plausibel, eher
  unteres Band). Offen bleibt die vollstaendige JANS-Tabelle je Nutzung/Lage/Risiko (Bring-Schuld D3).

## 2026-06-18 — Training-Run 6: CS- und LB-Deliverable-Methodik aus realen Faellen (T15/T16/T10)

- **`wiki/projektstruktur-deliverables.md`** (06-18): drei neue Methodik-Sektionen aus realen
  Deliverables — **CS Controlling & Sensitivitaet** (Niederhasli, 250811): Controlling-Factsheet-
  Felderschema (Plausibilitaets-Check einer Fremdstudie) + **Sensitivitaetsanalyse mit Zwei-
  Kostenmodell-Logik** (A fix / B 70/30, Δ Ausnuetzung 0/−10/−20 % → Marge + Break-Even ~−8 %/−13 %)
  + Fazit/Empfehlung; **«Bestand halten vs. Abbruch+Neubau»** (Langnau 3338): Vergleichswert-Bestand
  ↔ Residual-Landwert, BMZ-Deckelung; **«Renditeobjekt-Kaufpreispruefung»** (Wangen): Ertragswert-
  Band + impl. Bruttorendite-Pruefung. CS-Kuerzel-Glossar geschaerft.
- **`wiki/ertragswert-dcf.md`** (06-18): **Ertragswert-Band ueber 3 Kapitalisierungssaetze**
  (4.75/5.00/5.25 %) + **Kaufpreispruefung** (Angebot → impl. Bruttorendite vs. 4.5-%-Schwelle →
  Verhandlungsrichtung) + **Ausbau-/Umnutzungs-Rendite-Impact** (Mietuplift kapitalisiert vs.
  Investition; STWE-Einzelverkauf als Hebel; Grob-KV Umbau = Neubau-Median × Umbau-Anteil + SIA-102-
  Honorar-Grobansatz) — alles aus LB Wangen Bahnhofstr. 27.
- **`wiki/vergleichswert-hedonisch.md`** (06-18): **Entscheidlogik Bestand halten vs. Abbruch**
  (A Bestandeswert hedonisch ↔ B Entwicklungs-Landwert residual; volumengedeckelte BMZ-Zone),
  belegt aus LB Langnau; Datenquelle Popety.io bei fehlendem UBS-FS.
- **`wiki/investorenmarkt-makro.md`** (06-18): **Marktpuls-Update** — UBS SREBI **Q1-2026 0.69**
  «moderat» (Hotspots GR/Einsiedeln/Stadt ZH/Nidwalden, loest Q4-25-Anker 0.48 ab); Referenzzins-
  **Durchschnittssatz 1.31 % nahe Erhoehungsschwelle 1.37 %** → moegliche Trendwende auf 1.50 %.
- Register gepflegt: `_INGESTED.md` (6 Faelle ausgewertet, E6 vollstaendig), `curriculum.md`
  (E6 ✓ vollstaendig, E7 laufend), `wissensluecken.md` (T15 ✓, T16 teilweise ✓; neu T17 Healthcare-
  Bruecke, T18 CS-Generator). Befund: kein Healthcare-Bewertungsfall im Bewertungsordner.
- Report: `outputs/2026-06-18_training-run6.md`.

## 2026-06-16 — Training-Run 5: reale JANS-Faelle quantitativ ausgewertet (T9b/T7b/T10/D4)

- **`wiki/projektstruktur-deliverables.md`** (→ established, 06-16): **Quantitative Kennwert-
  Benchmark-Tabelle** aus 3 ausgewerteten Faellen (Thalwil 9568 LB+MA, Ebmatingen 3932 LB,
  Wangen 2622) — HNF-Faktor (57-80 %), ME/STWE-Kaufpreis-Quantil je Lage, Erstellungskosten
  (CHF/HNF, CHF/m3), Residualer Landwert, ROE-Befund; dazu **MA-Wertanker-Synthese** (4 Boden-
  wert-Anker Residualwert/UBS-FS-Mittel/UBS-FS-Top → Marktwert + Entwicklergewinn-Gegenrechnung).
- **`wiki/ertragswert-dcf.md`** (06-16): **JANS-Bewertungskonvention** belegt — Kapitalisierung
  Mietobjekt 2.50 %/40 J, Diskontierung Residualwert 2.70 %, Risiko/Gewinn 8 %, Baukosten-
  abschlag −5 %, Bruttoanfangsrendite-Schwelle 4.5 % (Geschaeft 5.5 %), ROE-Ampel; **Residual-
  wert-Tool-Struktur** reverse-engineered aus MA Thalwil S. 9 (adressiert D4 teilweise).
- **`wiki/vergleichswert-hedonisch.md`** (06-16): **T7b** Zu-/Abschlagslogik Median → Objekt
  als 6-Schritt-Checkliste + JANS-Quantil-Praxisanker (Premium Q90 / Schnitt Q50-60, Bauland
  nach Lageklasse Schlecht/Mittel/Top).
- **`wiki/investorenmarkt-makro.md`** (06-16): **Marktpuls 06.2026** — Angebotsmieten 2026
  +0.7 % (nach +6 % 2024), Bestandesmieten −0.8 %, UBS SREBI Q4-2025 0.48 «moderat» (staerkster
  Quartalsanstieg seit 1989), EFH +4.1 % YoY, BFS Baupreisindex Okt-2025 116.2.
- **`wiki/realwert-sachwert.md`** (→ established, 06-16): Baupreisindex-2025-Update + JANS-
  Praxisbeleg (WP-S.37-Kennwerttabelle = gelebter JANS-Kostenkennwert, MA Thalwil 6'000/HNF).
- Register gepflegt: `_INGESTED.md` (3 Faelle ausgewertet), `curriculum.md` (E6 weitgehend,
  E7 fortgeschritten), `wissensluecken.md` (T9b/T7b ✓, T10/D4 teilweise; neu T15/T16).
- Report: `outputs/2026-06-16_training-run5.md`.

## 2026-06-15 — UBS-FS Langnau am Albis 8135 (12/2025) kompiliert

- **Neu `wiki/marktdaten-gemeinden/zh-langnau-am-albis-8135.md`** — UBS Real Estate Local
  Fact Sheet Langnau am Albis (ZH), 12/2025, Daten 2025-Q3. EFH-Median 12'549 CHF/m²
  (~1.27x Kt. ZH), EW-Median 11'358, Mietmedian 279 CHF/m²/Jahr, Bauland Top 4'451 CHF/m².
  MS Zimmerberg — Faktenbasis fuer **Fall 2621 Giebelweg 12** (FS liegt auch im Studienordner).
- README + INDEX ergaenzt; Zaehler auf **11 kompilierte UBS-FS**.
- Quelldatei in `IMMO - 02 UBSFS/` von doppelter Endung `.pdf.pdf` auf `.pdf` korrigiert.

## 2026-06-15 — Gutachten-Produkt «besser als WP» (Phase 1): Standard + Qualitaetsprofil + Aufnahmeblatt

- **Entscheid Raphael (2 Frage-Runden):** signiertes Experten-Gutachten mit Besichtigung, methodisch
  SVS/SVKG-konform, Datenbasis UBS-FS/Wüest-Benchmarks (aktiv) + Inserate-Proxy, alle 4 Objekttypen
  (Start EFH/EWG am Fall Bahnhofstrasse 27 Wangen), als ausgebauter Skill → DOCX/PDF. Benchmark:
  WP-Hedonic-Beispielbericht Langenthal (9 Seiten, vollständig analysiert).
- **Neu `wiki/svs-svkg-standard.md`** — Gutachten-Aufbau (11 Pflichtteile), Marktwert-Definition,
  Marktwertbereinigungen, Disclaimer/Haftung. **Wording-Regel verankert** (Methode statt SVKG-Titel;
  Dauerregel `rules/auto-verbesserungen.md` 260615).
- **Neu `wiki/qualitaetsprofil-raster.md`** — Standard/Zustand/Mikrolage-Skalen 1–5 aus dem WP-Bericht
  übernommen, aber durch Augenschein gefüllt; Sanierungsstau je Bauteil = Realwert-Abschlag.
- **Neu (Skill) `tools/aufnahmeblatt.md`** — iPhone-taugliches Besichtigungs-Aufnahmeblatt + Foto-Konvention.
- **Neu (Skill) `KONZEPT-WP-UEBERLEGEN.md`** — Pflichtenheft + Gap-Analyse WP vs. JANS + 4-Phasen-Bauplan.
- **SKILL.md** um Sektion «Gutachten-Standard & Besichtigung» ergänzt; INDEX neue Rubrik «Gutachten-Produkt».
- **Phase 2 Generator erledigt (15.06.2026):** `tools/build_gutachten.py` (JSON → DOCX, Titelblatt
  mit grosser Marktwert-Kennzahl, Qualitätsprofil-Balken 1–5, Tabellen, Glossar; venv
  `~/.venvs/jansdocx`, Baukasten `jans_docx.py`). **Pilot Wangen** durchgespielt: aktenbasierter
  Gutachten-Entwurf (4 S., Marktwert Halten 2.6–2.8 Mio) + Aufnahmeblatt-Formular (2 S.) gebaut,
  gerendert, im Projektordner 2622 + AI-Hub-Output abgelegt. Offen: Karten-Block via `geo-zh.mjs`;
  Finalisierung nach Besichtigung 19.06. (Ist-Mieten/GVA/KV) durch `korrektur`.

## 2026-06-14 — Training-Run 4: alle 10 UBS-FS + SREBI + Hedonik-Modellfamilie + JANS-Flächenfaktoren (10 Themen)

- **Alle 10 UBS Fact Sheets kompiliert** (E4/T7 abgeschlossen): 4 neue Gemeinde-Artikel
  `zh-thalwil-8800`, `ag-muri-5630`, `zh-regensdorf-8105`, `lu-luzern-6000` (Quantile EFH/EW/
  Miete/Bauland/Geschäft + Preis-Miet-Verhältnis, alle ⚠ > 18 Mt.) → `marktdaten-gemeinden/`;
  README + INDEX nachgeführt. Befund: Premium-Seelage ZH (Thalwil EFH-Median 15'384) ↔ ländlich
  (Muri AG 7'978) = Faktor ~2 allein über die Lage.
- **Hedonik-Modellfamilie belegt** (T7): Wüest/IAZI/Fahrländer/PriceHubble, Methodenkern
  (Regression, ~70 Kriterien, >20'000 Handänderungen/Jahr, UBS-Modell 1999 mit WP), Einsatz-
  grenze nur EFH/EW → `vergleichswert-hedonisch.md`.
- **UBS SREBI Bubble Index Q2-2024** (T14): Index 0.74 «moderat», 4 Perspektiven (Fundament
  1.73/Dynamik 0.17/Kosten 0.47/Umfeld -0.81), Methodik, regionale Ungleichgewichte (ZH/Genf/
  Lausanne/Zug) → `investorenmarkt-makro.md`.
- **Marktpuls 06.2026** (T10 teilweise): Referenzzinssatz 1.25 % (seit 09.2025), SNB-Leitzins
  0 % → `investorenmarkt-makro.md`. **Büromarkt ZH** (hbre/Savills 2024): Tertiär 500'000→580'000
  bis 2050, Serviced Offices → ebd.
- **JANS-Flächenfaktoren Wohnen** (T8): HNF/Baumasse 0.20, GF/Baumasse 0.33, HNF/GF 0.60 (ganzes
  Gebäude) / 0.75 (Regelgeschoss) + Wohnungsmix-Benchmark, aus Flächenkonzeption Wohnen
  (R. Jans 20.10.2024) → `flaechendefinitionen-sia.md` (Platzhalter «zu verifizieren» ersetzt).
- **Reale JANS-Bewertungsfälle** (T9): Referenz-Benchmark-Register (Thalwil 9568 LB+RW+MA,
  Ebmatingen 3932 LB+RW tief/hoch, Langnau/Wangen/Niederhasli) → `projektstruktur-deliverables.md`.
- Register: `_INGESTED.md`, `curriculum.md` (E4 ✓, E5/E6/E7 teilweise), `wissensluecken.md`
  (T7/T8/T9/T14 ✓, T10 teilweise), `INDEX.md`. Report `outputs/2026-06-14_training-run4.md`.

## 2026-06-12 — Training-Run 3: Mietwert-Korrektur + Gastgewerbe + Hedonik + 4 Marktblätter (10 Themen)

- **Schätzungsanleitung Kap. 5 vollständig erschlossen** (E3 abgeschlossen): Tab. 12
  Nutzflächen + Tab. 13 Raumeinheiten → `flaechendefinitionen-sia.md`; Tab. 14 (Punktesystem
  Wohnlage + Bauweise/Alter/Heizung) + Tab. 15 (Kriterienraster ±9 %) Mietwertberechnung sowie
  Tab. 25-28 Gastgewerbe-Umsatzmiete → `ertragswert-dcf.md` (T13 erledigt).
- **Hedonik-Methodik belegt** (E4/T7 teilweise): WP-Standortreport-Aufbau (Beispiel Langenthal
  21.06.2023 — Quantil-Preisspektren Wohnen/Geschäft, residualmodellierte Baulandpreise,
  Datengrundlagen-Anhang) + UBS-FS-Glossar-Methodik (Quantil-Definition, 11-Kriterien-
  Standort-Rating, BFS-Gemeindetypen, MS-Region, Datenquellen) → `vergleichswert-hedonisch.md`
  (emerging → **established**) + `marktdaten-gemeinden/README.md`.
- **4 neue Gemeinde-Marktblätter** (von 2 auf 6 Gemeinden): `zh-maur-8124` (7/2024),
  `zh-wald-8636` (12/2023, **Healthcare-Standort** 29.7 % Gesundheits-Beschäftigung →
  Projekt 2410), `zh-waedenswil-8820` (12/2023), `sz-einsiedeln-8840` (12/2023) — je
  vollständige Quantil-Tabellen EFH/EW/Miete/Bauland/Geschäft + Preis-Miet-Verhältnis. Alle
  mit ⚠ (Stand > 18 Mt.).
- `ertragswert-dcf.md` status established (Mietwert/Gastro); `INDEX` Statusbumps
  (ertragswert-dcf + vergleichswert-hedonisch → established) + 4 Gemeinden ergänzt.
- Register gepflegt: curriculum (E3 vollständig, E4 teilweise), _INGESTED (Schätzungsanleitung
  vollständig, Hedonik-Report + 6 UBS-FS eingearbeitet), wissensluecken (T13 ✓, T7 teilweise,
  neu T14 SREBI). Report `outputs/2026-06-12_training-run3.md`.

## 2026-06-10 — Training-Run 2: DXMA-Erfolgsfaktoren + Schaetzungsanleitung (10 Themen)

- Quellen vollstaendig eingearbeitet: **DXMA-Erfolgsfaktoren-Folien** (37 S., 06.2023) und
  **Schaetzungsanleitung Kap. 5** (Tabellen-Anhang). Damit ist Modul 4 des Wuest-Curriculums
  geschlossen (E1) und die zentrale Schaetzungs-Tabellenquelle erschlossen (E3).
- `erfolgsfaktoren-wettbewerb.md` neu aufgebaut (emerging → **established**): sechs DXMA-
  Faktoren (Baurecht/Nutzung/Baukosten/Mikrolage/Vermarktung/Bewertung), Aufwertungsgewinn-
  Prinzip («Gewinn liegt im Einkauf», Wissensasymmetrie) + 10 belegte Referenzfaelle,
  **AZ-Optimierungsformel** (UG/DG-Anrechnung, Split-Zone; Breitenstein/Stampfenbach/
  Fabrikstrasse), Baukosten-Effizienz (Pfaeffikon), Verweis A4-Bewertungsblatt.
- `lageklasse-landwertanteil.md` (speculative → **established**): Lageklassenschluessel
  Wohnen/Gewerbe (Tab. 6/7) + vollstaendige Landwertanteil-Tabelle LK→% (Tab. 8) — T5 erfuellt.
- `realwert-sachwert.md`: CHF/m3-Neuwert-Richtwerte Bauklasse I-VI (Tab. 2), BKP-Anteile
  (Tab. 3), Alterswertminderung (Lebensdauer Tab. 9, wirtschaftliches Alter Tab. 10,
  Wertminderung Tab. 11) — T6 vollstaendig + T12 erfuellt.
- `residualwertmethode.md`: **DXMA-Marktwertschaetzung auf einem A4-Blatt** (5 Bloecke,
  belegtes Rechenbeispiel) als schlanke Operationalisierung eingearbeitet.
- `nutzungskonzepte.md`: DXMA-Fallbeispiele (MinMax, Ueber-Gaerten/volumenbasiert, Tiny
  Houses, RRR+RRR, performativ, Gotthardstrasse).
- `bewertungsverfahren-ueberblick.md`: Realwert-/Ertragswert-Gewichtung je Objektart
  (Tab. 22, Mittelwertmethode) — T11; `ertragswert-dcf.md`: Kapitalisierungssatz-Aufbau
  B/U/V/A/R (Tab. 21/23).
- Register gepflegt: INDEX, _INGESTED, curriculum (E1 ✓, E3 ✓), wissensluecken (T4/T5/T6/
  T11/T12 erledigt, neue Luecke T13 Mietkorrektur/Gastgewerbe). Report
  `outputs/2026-06-10_training-run2.md`.

## 2026-06-09 — Referenzfall Bahnhofstrasse 27 Wangen SZ bewertet (Compounding)

- Erster vollstaendig bewerteter JANS-Fall in der KB: gemischtes MFH Wangen SZ, Kaufpreispruefung
  3.1 Mio vs. Bankschaetzung 2.8 Mio → Marktwert JANS 2.6–2.8 Mio (3.1 als Renditekauf ~10 % zu hoch).
- Report `outputs/2026-06-09_bewertung-bahnhofstrasse27-wangen.md` mit uebertragbaren Benchmarks:
  Brutto-Kapitalisierungssatz gemischtes MFH periphere SZ-Gemeinde ~5.0 %; Umbaukennwerte
  ~1'800 (leicht) / ~3'200 (mit Baueingabe) CHF/m² HNF; Honoraransaetze klein-Umbau ~10/15 %;
  Mietansaetze Wangen (Wohnen Altbau ~235–255, Gewerbe ~200 CHF/m²/J).
- `wiki/marktdaten-gemeinden/sz-wangen-8854.md`: "Anwendungshinweis (offen)" → "Referenzfall
  (bewertet)" mit verlinkten Kennwerten.
- Deliverable (A4 PDF im JANS-LB-Stil) im Projektordner AR-03 Studien/2622 + AI-Hub-Output.
- **Nachtrag:** Lageklasse-Befund (ÖREB Parz. 25): Objekt = **«Mittel»** (Bauland 2'702 CHF/m²,
  Bahnhof/zentral + ÖV vs. Laerm/ES III/kein Aussichtsbonus). In Report + Wangen-Marktblatt
  festgehalten; als Infopoint ins A4-Deliverable aufgenommen (Landwert 751×2'702 ≈ 2.03 Mio).

## 2026-06-09 — UBS Fact Sheets Wangen (SZ) + Zollikon (ZH) eingearbeitet

- Zwei neue UBS Real Estate Local Fact Sheets (12/2025, Daten 2025-Q3) aus
  `IMMO - 02 UBSFS` kompiliert und als maschinenlesbare Marktdaten-Blaetter abgelegt:
  - `wiki/marktdaten-gemeinden/sz-wangen-8854.md` (Wangen SZ, BFS 1349) — EFH-Median
    10'690, EW-Median 9'616, Miete-Median 265 CHF/m²/Jahr.
  - `wiki/marktdaten-gemeinden/zh-zollikon-8125.md` (Zollikon ZH, BFS 0161) — EFH-Median
    19'514, EW-Median 20'000, Miete-Median 388 CHF/m²/Jahr.
- Neuer Sammel-Index `wiki/marktdaten-gemeinden/README.md` (Lesehilfe UBS-FS-Spaltenlogik).
- `wiki/INDEX.md` um Sektion "Marktdaten Gemeinden" erweitert.
- `datenquellen-registry.md`: UBS-FS-Zeile auf 10 Gemeinden / Stand 2212-2512 aktualisiert,
  Verweis auf kompilierte Blaetter; **UBS Swiss Real Estate Bubble Index Q2-2024**
  (`srebi-q2-2024-de.pdf`) als Makro-Quelle neu registriert (Status offen).
- `raw/_INGESTED.md`: UBS-FS-Zeile auf "teilweise — Wangen/Zollikon eingearbeitet" gesetzt.
- Im Wangen-Blatt **Anwendungshinweis** zum erwarteten Folgefall *Bahnhofstrasse 27, Wangen
  SZ* (Plausibilisierung Verkaufspreis 3.1 Mio. vs. Bankschaetzung 2.8 Mio.) hinterlegt —
  Bewertung noch nicht durchgefuehrt.

## 2026-06-03 — KB angelegt (Seed aus IMMO-Sammlung)

- KB `immobilienbewertung` erstellt nach Meta-Schema (`wissen/WISSEN-CLAUDE.md`).
- `CLAUDE.md` (KB-Schema, Fokus-Bereiche, Quellen-Hierarchie) geschrieben.
- Struktur `raw/ wiki/ outputs/ training/` angelegt.
- **Seed-Artikel** im `wiki/` aus der ersten Sichtung der Ordner `IMMO - 01` bis
  `IMMO - 06` und der Wuest-Partner-Praesentation "Immobilien entwickeln" (21.06.2023,
  236 Seiten):
  - `bewertungsverfahren-ueberblick` (established)
  - `residualwertmethode` (established)
  - `ertragswert-dcf` (emerging)
  - `vergleichswert-hedonisch` (emerging)
  - `realwert-sachwert` (emerging)
  - `flaechendefinitionen-sia` (established)
  - `lageklasse-landwertanteil` (emerging)
  - `nutzungskonzepte` (emerging)
  - `investorenmarkt-makro` (emerging)
  - `erfolgsfaktoren-wettbewerb` (emerging)
  - `datenquellen-registry` (established)
  - `projektstruktur-deliverables` (established)
- `wiki/INDEX.md` und `wiki/wissensluecken.md` angelegt; 20+ Wissensluecken aus der
  Datenquellen-Pruefung erfasst (veraltete UBS-FS, CRB-OAK 2011, Bodenpreise nur als
  Screenshots, Ausnuetzungsziffer-Ordner leer, Diskontsatz-Herleitung undokumentiert,
  Excel-Residualwert-Logik nicht reverse-engineered).
- `training/PROGRAMM.md` (Lern-Loop alle 2 Tage, 10 Themen/Lauf) und
  `training/curriculum.md` (Lektionsplan aus dem 236-seitigen Wuest-Kurs) angelegt.
- `raw/_INGESTED.md` als Quellen-Register angelegt.

## 2026-06-10
- Referenzfall Bahnhofstrasse 27 Wangen SZ: Bankschaetzung von 2.8 auf **2.9 Mio** korrigiert
  (Quelle: Mail David Chaled 09.06.2026, PS im Thread «Bahnhofstrasse 27»). Kaufpreisempfehlung
  JANS 3.0 Mio ergaenzt. Datei: outputs/2026-06-09_bewertung-bahnhofstrasse27-wangen.md
- Sitzungspraesentation 11.06.2026 (6 Folien, JANS-CI monochrom) erstellt; Ablage Studie 2622
  (02_Korrespondenz/260611_Sitzung Chaled) + AI Hub Output immobilienbewertung/2622-bahnhofstrasse-27
