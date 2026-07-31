# QUESTIONS — wissen/grobkosten

Offene Fragen / Wissenslücken / ungelöste Spannungen. Neueste zuoberst.

## 2026-07-31 (Mac Mini Nachtschicht) — Bring-Schuld aus `normen` teilweise eingelöst: Mengen aus Tab. 522-1 erfasst, CHF-Einheitspreis bleibt die Lücke

**Fortschritt, nicht abgeschlossen.** Weiterführung von 2026-07-30c unten. In `wiki/kennwerte.md`
(Abschnitt «Brandschutz-Mehraufwand RF1») neu erfasst: Tab. 522-1 liefert eine belegte, konkrete
Mehrmenge (+30 mm Estrich bei K30-RF1, +50 mm bei K60-RF1 auf Decken RF1), Tab. 340-1 liefert
dagegen nur Mindestgüten, die im Holzbau ohnehin marktüblich sind — voraussichtlich kein
eigener Kostentreiber. Ein CHF/m²-Kennwert nach BKP 214/271 ist damit weiterhin **nicht**
gesetzt: es fehlt ein Einheitspreis Zementestrich (CHF/m²/cm) und ein Einheitspreis
K30-RF1/K60-RF1-Bekleidung (CHF/m²) — beide in `wissen/bauprodukte/` und
`skills/kostenschaetzung/referenzen/` gesucht und nicht gefunden (31.07.2026). **Offen bleibt
konkret:** ein reales Devis/eine Unternehmerofferte mit Estrich- oder
Brandschutzbekleidungs-Position destillieren, sobald eines im `ausschreibung`- oder
`bauprodukte`-Bestand auftaucht — kein Einheitspreis schätzen.

## 2026-07-30c (Wissens-Chef Run 21, Cross-KB) — Bring-Schuld aus `normen`: Brandschutz-Kennwerte sind nie in einen BKP-214/271-Kennwert übersetzt worden

**Offen.** Bring-Schuld aus `normen` Run 30–33 (Nachtrag Run 38). Zwei der Lignum-Destillate in
der führenden Norm-KB tragen einen ausdrücklichen Abnehmer-Auftrag an diese KB
(`wissen/normen/destillate/lignum-4-2-anschluesse-feuerwiderstand.md`, Zeilen 496–500, zu den
Tabellen 340-1 und 522-1; `.../lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`,
Zeilen 852–855, «relevant für die Grobkostenlogik BKP 214/271»). Angekommen ist davon bisher
nichts: bis zu diesem Lauf enthielt weder `wiki/kennwerte.md` noch sonst eine Wiki-Datei dieser
KB einen Verweis auf `normen`.

- **Offen bleibt:** Die Tabellen 340-1 (Baustoffe) und 522-1 (Brandschutzbekleidungen) sind noch
  nicht in einen Kosten-Kennwert nach BKP 214/271 übersetzt. Solange das fehlt, ist der
  Holzbau-Zuschlag bei brandschutztechnisch erhöhten Anforderungen nur eine untere Näherung
  (Vermerk «Anwendungsgrenze (Datenlage)» in `wiki/kennwerte.md`, gesetzt in diesem Lauf).
- **Führung, nicht materiell fortschreiben:** Ob eine RF1-/Kapselungsanforderung im konkreten
  Fall besteht, führen die Lignum-Destillate ausdrücklich NICHT selbst
  (`lignum-4-2-...md`, Zeilen 492–495); massgebend sind die VKF-Brandschutzvorschriften 2015
  bzw. die Arbeitshilfen. Diese KB zieht solche Anforderungen, sie formuliert sie nicht
  (Rule `normen-referenz`).
- **Gegenrichtung noch offen:** In den Abnehmer-Blöcken beider Lignum-Destillate steht nur der
  Gattungsname «kostenschaetzung / grobkosten», kein Zielpfad. Die Präzisierung auf
  `wissen/grobkosten/wiki/kennwerte.md` gehört in die abgebende KB `normen` und ist in diesem
  Lauf nicht erfolgt (anderer Zuständigkeitsbereich).

## 2026-07-30b (Wissens-Chef Run 21) — Korrektur: der Konsistenz-Check des Holzbau-Zuschlags war ungedeckt

**Korrektur zum Eintrag «2026-07-30 — Bring-Schuld aus Run 20 eingelöst» weiter unten (bleibt als
Beweisstand unverändert stehen).** Der dort und in `wiki/kennwerte.md` geführte Konsistenz-Beleg
«Deckt sich grössenordnungsmässig mit dem bereits geführten HNF-Spread (+10–20 %), verfeinert ihn
um die Segment-Differenzierung» ist nicht gedeckt.

- **Der Zuschlag selbst bleibt.** Er ist sauber belegt und datiert (Wüest Partner/Lignum/BAFU,
  25.09.2025, Diagramm-Ablesung 300 dpi, normalisiert auf 01.04.2025). Falsch war allein die
  Behauptung, die HNF-Quelle kenne keine Segment-Differenzierung und stehe nicht im Widerspruch.
- **Tatsächlicher Befund:** Das HNF-Referenzblatt
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`,
  Abschnitt 3, segmentiert gleich benannt und war zum Zeitpunkt der Kalibrierung bereits so
  vorhanden (belegt seit mindestens 25.07.2026, git 7b4c0777). Gerechnet: unteres Segment
  5'000 gegen Massivbau 4'500 = +11 %, oberes 6'200 gegen 4'500 = +38 % CHF/m² HNF, gegen die
  hier geführten ≈ 0 % und ≈ +13 % auf GV-Basis.
- **Nicht Teuerung:** Beide Datensätze ruhen auf demselben Preisstand April 2023. Die Spreizung
  erklärt sich aus Bezugsgrösse (HNF gegen GV), verschiedenen Stichproben und beidseitiger
  Diagramm-Ableseunschärfe. Sie bleibt **ungeklärt**; ein gemeinsamer Zuschlag wird nicht
  gebildet.
- **Belastbar bleibt allein der zweite Check:** Massivbau-Median ≈995 CHF/m³ GV innerhalb des
  eigenen MFH-gehoben-Seed-Bands 850–1'050.
- **Bekannte Fehlstelle im Destillat vom 30.07.2026:** In
  `raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md` steht die gleichlautende
  Fehlaussage «das untere Preissegment (≈Parität) ist in der HNF-Quelle nicht abgebildet — neue
  Differenzierung, kein Widerspruch». Sie wird dort **bewusst nicht korrigiert** (`raw/` wird nie
  editiert, Rule `wissens-bibliothekar`) und ist hiermit als bekannte Fehlstelle des Destillats
  festgehalten. Massgeblich ist der korrigierte Stand in `wiki/kennwerte.md`.
- **Korrigiert in diesem Lauf:** `wiki/kennwerte.md` (Konsistenz-Absatz),
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`
  (Zusammenfassung Abschnitt 3 und Schlussabsatz 3b), `CHANGELOG.md` (Richtigstellung).

## 2026-07-30 (Nachtschicht) — `bauenmitholz.info` geprüft: Negativbefund, ca.-Werte bleiben Stand

**Erledigt, Nullbefund:** Der im selben Tag weiter unten offen gelassene Verifikationspunkt
("Diagramm-Ablesung gegen `bauenmitholz.info` prüfen, falls dort Zahlenwerte publiziert sind")
ist geprüft. Ergebnis: Die Seite (inkl. Unterpunkt `/baukostenrechner`) publiziert **keine**
Tabellen — nur eine interaktive App (Wüest Partner) mit 36 anonymisierten Fallbeispielen,
indexbereinigt in einer Grafik dargestellt. Weder die Studie vom 25.09.2025 noch Zahlenwerte
(Median/Q1/Q3/Min/Max) sind dort verlinkt oder publiziert. Die pixel-kalibrierten ca.-Werte aus
Run 20/heute (`raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md`) bleiben damit der
beste verfügbare Stand — eine Ersetzung durch Originalzahlen wäre nur über die interaktive App
selbst (kein WebFetch-Zugriff) oder direkten Kontakt zu Lignum (`info@lignum.ch`) möglich.
Kennwerte in `kennwerte.md` bleiben unverändert (keine Korrektur nötig, nur der offene Punkt
geschlossen). Details: `raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md`,
Abschnitt «Verbleibende offene Punkte».

## 2026-07-30 — Bring-Schuld aus Run 20 eingelöst: Holzbau-Zuschlag kalibriert, Methodenwiderspruch aufgelöst

**Erledigt (Mac Mini Nachtschicht):** Die in Run 20 (29.07.2026) übergebene Wüest Partner/
Lignum/BAFU-Studie wurde selbst gezogen (`https://www.minergie.ch/media/
3_holzbau-investionskosten-julia-selberherr.pdf`) und ausgewertet:

- **Vorbedingung 1 geklärt (Stichprobe):** Folie 3 zeigt für den Kostenteil 17 Holzbauten gegen
  50 reale Referenzobjekte (unpaarige Gruppenauswertung), NICHT die «35 Objekte gegen digitalen
  Zwilling»-Paarung — diese Paarungsmethodik gilt belegt nur für das ökologische Fallbeispiel
  (Folie 7, n=1). Folie 2 vermischt beide Methoden in einer Pauschalaussage. Damit ist der von
  `energie` übernommene Widerspruch aufgelöst, nicht nur bestätigt.
- **Vorbedingung 2 (Zahlenlabels fehlen):** Folie 5 (Boxplots BKP1–5/GV und /GF) trägt keine
  Zahlenwerte im Textlayer. Per Pixel-Kalibrierung der Gitterlinien (300-dpi-Rasterung,
  Farbcode-Klassifikation der Balkensegmente) ausdrücklich als **ca.-Werte** abgelesen —
  gleiches Vorgehen wie `energie` bei den unlabelten Treibhausgas-Boxplots.
- **Zuschlag kalibriert:** `wiki/kennwerte.md`, Abschnitt «Zuschläge (multiplikativ)» — die
  pauschale, unbelegte Zeile «Hoher Ausbaustandard/Nachhaltigkeit (Minergie-P, Holz) +5–15 %»
  in Bauweise (Holz, jetzt belegt) und Ausbaustandard (Minergie-P, weiterhin unbelegt) getrennt.
  Ergebnis (Median, auf 01.04.2025 normalisiert via Zürcher Index): Holzbau unteres
  Preissegment ≈ **Parität** mit Massivbau (kein Aufpreis), Holzbau oberes Preissegment ≈
  **+13 %**. Deckt sich grössenordnungsmässig mit dem bereits geführten HNF-Spread
  (+10–20 %), verfeinert ihn um die Segment-Differenzierung.
- **Konsistenz-Check:** Massivbau-Median (≈995 CHF/m³ GV, normalisiert) liegt innerhalb des
  eigenen MFH-gehoben-Seed-Bands dieser KB (850–1'050) — kein Widerspruch zum bestehenden Stand.
- **Abgelegt:** `raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md` (volle Tabellen,
  Methodik, Preisstand-Normalisierung); Ergänzung in `skills/kostenschaetzung/referenzen/
  20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md` (Abschnitt 3b, gemäss Ablage-Konvention
  «Kalibrierungspunkt hier, Referenzblatt dort»).
- **Weiterhin offen:** Diagramm-Ablesung bleibt eine Näherung (keine Originalzahlen); bei
  Gelegenheit gegen `bauenmitholz.info` verifizieren, falls dort Zahlenwerte publiziert sind.
  HNF-Bezug fehlt in dieser Quelle (nur GV/GF).

## 2026-07-29 — Cross-KB `energie` → `grobkosten` (Wissens-Chef Run 20): Bring-Schuld Erstellungskosten Holzbau gegen Massivbau, Kalibrierung des unbelegten Zuschlags +5–15 %

Angemeldet in der **Empfänger-KB**, nicht als Notiz in der abgebenden (Regel aus Run 8). Der Text
unten folgt dem Verifikationsurteil; die ursprüngliche Fundmeldung trug einen Methodenanspruch, der
für den Kostenteil der Quelle **nicht** belegt ist.

**Die Bring-Schuld.** `wiki/kennwerte.md:200` führt in der Tabelle «Zuschläge (multiplikativ)» den
einzigen Holz-Ansatz des Hubs: «Hoher Ausbaustandard / Nachhaltigkeit (Minergie-P, Holz) | + 5–15 % |
je nach Zielbild». Der Wert ist ein reiner Seed **ohne Quelle** (Herkunft `CHANGELOG.md:627`,
Anlage der KB) und vermischt zwei Treiber: die **Bauweise** (Holz gegen mineralisch) ist etwas anderes
als der **Ausbaustandard** (Minergie-P). Rekursiver grep «holzbau|massivbau|lignum» über die gesamte KB:
0 Treffer. Aufgabe: den Zuschlag an einer belegten Quelle kalibrieren **und** die beiden Treiber trennen.

**Die Quelle, die genau die Bauweise-Achse liefert.** Wüest Partner AG (Dr. Julia Selberherr) im
Auftrag von Lignum / Holzwirtschaft Schweiz / BAFU, «Massiv- vs. Holzbau: Erstellungskosten und
ökologische Kennzahlen im Vergleich», Präsentation 25.09.2025, 12 Folien. Folie 4 definiert die
Kennzahlen **BKP 1–5 pro GV, pro GF und pro HNF** (plus BKP 2 und BKP 214), teuerungsbereinigt per
**April 2023**, Kategorie Grossregion / Wohnbauten. Folie 5 stellt Massivbau gegen Holzbau (oberes/
unteres Preissegment) auf den Achsen GV und GF gegenüber. Das ist punktgenau die Leitkennzahl dieser
KB (CHF/m³ GV, BKP 1–5, Wohnbau), nicht EBF, nicht HNF-only, nicht Healthcare.

**Vorbedingungen und Vorbehalte, die vor der Auswertung zu klären sind:**

- **Die Quelle liegt NICHT im Hub archiviert** und muss selbst gezogen werden:
  `https://www.minergie.ch/media/3_holzbau-investionskosten-julia-selberherr.pdf` (12 Folien, 2.28 MB,
  Textlayer vorhanden); Ergebnisplattform laut Deck: `bauenmitholz.info`. In `energie` wurde die PDF in
  **Run 83 (21.07.2026)** gelesen, aber nur ökologisch ausgewertet; der Kostenteil wurde **nie**
  extrahiert. `energie/raw/` enthält dazu nur den `_INGESTED.md`-Vermerk (Z. 207, WebSearch/WebFetch).
- **Stichprobe klären, nicht übernehmen.** Die oft zitierten «35 Holzbauten gegen digitalen Zwilling»
  gelten belegt nur für die **ökologische** Hälfte (Folie 7: Fallbeispiel Holzbau gegen digitalen
  Zwilling in mineralischer Bauweise, gleiche Dimensionen/U-Wert/Schall). Für den **Kostenteil** weist
  die Datengrundlagen-Folie 3 eine andere Stichprobe aus: **17 Holzbauten (Baujahr 2019–2022) gegen 50
  reale Referenzobjekte (2001–2022)**, dazu 1 Fallbeispiel Sanierung/Aufstockung (2021) und 2
  Modellrechnungen (2026), Erstellungskosten BKP 1–5 je CHF 5–150 Mio. Folie 2 behauptet pauschal, die
  35 Holzbauten seien «in Bezug auf Kosten und ökologische Kennzahlen» mit dem Zwilling verglichen
  worden; das widerspricht Folie 3 und der Darstellung auf Folie 5 (Realobjekt-Segmentierung nach
  Preissegment, keine Paarbildung). Diese Unklarheit ist **zu klärende Vorbedingung**, keine Tatsache.
- **Zahlenlabels fehlen.** Die Kostenkennzahlen stehen auf Folie 5 nur als **Diagramm ohne
  Zahlenlabels**; im Textlayer existieren bloss die Achsenskalen (BKP 1–5 pro GV 500–2'000, pro GF
  2'000–5'000). Eine Kalibrierung liefert also entweder ausdrücklich als abgelesen markierte ca.-Werte
  (so hat es `energie` bei den ökologischen Boxplots gehandhabt) oder muss über `bauenmitholz.info` gehen.
- **Preisstand normalisieren.** April 2023, Kategorie Grossregion/Wohnbauten. Vor dem Vergleich mit dem
  Preisstand-2026-Band 850–1'050 CHF/m³ GV (MFH gehoben, `kennwerte.md:78`) über den verketteten
  Zürcher Index der Wohnbaukosten (`kennwerte.md:229 ff.`) normalisieren.
- **Ablage-Konvention:** der Kalibrierungspunkt gehört hierhin (hier steht der unbelegte Zuschlag), das
  später destillierte numerische Referenzblatt aber nach `skills/kostenschaetzung/referenzen/` (so am
  07.06.2026 mit dem Wüest-Benchmark gehandhabt, `kennwerte.md:25`) — beides zusammen, nicht als Alternative.

**Warum die Übergabe erst jetzt kommt.** `energie` hat diese Kostenhälfte am **25.07.2026** geprüft und
für sich verworfen, mit der Begründung «Wüest-Partner-Studien nur Gesamtgebäude-Kennwerte»
(`wissen/energie/wiki/QUESTIONS.md:1580-1583`). Für `energie` unbrauchbar, für `grobkosten` genau die
richtige Aggregationsstufe: erkannt, richtig charakterisiert und trotzdem nie übergeben.

## 2026-07-27 — Trainings-Run 18: siebter Sättigungsbeleg in Folge, bewusst KEIN erneuter Sweep

- Kollisionscheck (`ps`, Rule 260724): einziger Treffer die eigene Prozessinstanz. Lauf
  begann ~1 Min. nach dem Run-17-Commit (13:26:11).
- **Bewusst kein erneuter Bibliotheks-/Ereignis-Trigger-Sweep:** Run 17 hat sowohl den
  kanonischen Quellpfad (`04_Buero/02_Projekte`) als auch den `kostenkontrolle`-Ereignis-
  Trigger bereits geprüft (null Treffer, Freshness-Filter `-newermt "2026-07-25"`). Ein
  identischer Re-Check eine Minute später würde garantiert dasselbe Nullergebnis liefern —
  das widerspricht der eigenen Leitplanke «Kein Leerlauf-Zwang», die auch für wiederholte
  Prüfungen ohne Erkenntnisgewinn gilt, nicht nur für erfundene Kennwerte.
- **Registerpflege statt Sweep:** `wiki/INDEX.md` war seit Run 14 nicht mehr nachgeführt
  (Zusammenfassung endete bei Run 14, Run 15-17 fehlten) — nachgetragen.
- Keine neue Inhaltsfrage. Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation
  "norm, eloquent") bleiben ausschliesslich durch Raphael Jans direkt oder neues, real
  abgelegtes Material lösbar — beide sind auf Formel-Ebene (Run 13/14) bereits maximal
  zugespitzt, eine weitere Vertiefung ohne neue Quelle bringt nichts.
- **Sieben aufeinanderfolgende Läufe (12-18) ohne neuen Kennwert** in weniger als 40 Minuten
  Realzeit (12:57-13:27 Uhr) bestätigen den in Run 15/16 gemeldeten Taktungsfehler
  (VOLLGAS-Runner feuert diesen Loop im Minutenabstand statt gemäss `cron_target: "0 9,21
  * * *"`). Diese Empfehlung liegt jetzt viermal identisch vor (Run 15, 16, 17, 18) und
  wiederholt sie hier ein letztes Mal explizit: **kein weiterer grobkosten-Run vor entweder
  (a) einer Antwort von Raphael zu Frage 1/2, oder (b) einem neuen, tatsächlich abgelegten
  Kostenstand mit GV-Bezug** — bis dahin liefert jeder weitere Zyklus nur identische
  Nullbefunde bei realem Budget-/Zeitverbrauch. Details: `outputs/2026-07-27_grobkosten-run18.md`.

## 2026-07-27 — Trainings-Run 17: sechster Sättigungsbeleg in Folge (Run 12–17), Freshness-Check jetzt auf kanonischem Quellpfad

- Lauf begann ~4 Min. nach dem Run-16-Commit. Kein Bibliotheks-/Formel-Sweep wiederholt.
  Diesmal geprüft: `find -iname "*kosten*" -newermt "2026-07-25"` direkt auf
  `/Volumes/daten/04_Buero/02_Projekte/` (kanonischer Quellpfad aus `training/PROGRAMM.md`,
  Run 16 hatte nur den OneDrive-Spiegel geprüft) sowie ein neuer `kostenkontrolle`-Ereignis-
  Trigger (neue Schlussabrechnung seit 20.07.2026) — beide null Treffer.
- Keine neue Inhaltsfrage. Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation
  "norm, eloquent") bleiben nur durch Raphael Jans direkt oder neues Material lösbar.
- Sechs aufeinanderfolgende Läufe (12–17) ohne neuen Kennwert, jetzt auch auf dem
  kanonischen Quellpfad selbst bestätigt (nicht nur dem OneDrive-Spiegel). Ein weiterer
  identischer Lauf ohne neues Signal liefert keinen Erkenntnisgewinn mehr. Empfehlung
  unverändert: auf Ereignis-Trigger zurücktakten bzw. Frage 1/2 im nächsten interaktiven
  Kontakt mit Raphael klären (liegt ausserhalb der Befugnis dieses Loops). Details:
  `outputs/2026-07-27_grobkosten-run17.md`.

## 2026-07-27 — Trainings-Run 16: fünfter Sättigungsbeleg in Folge (Run 12–16), keine neue Frage

- Lauf begann ~2 Min. nach dem Run-15-Commit. Kein Bibliotheks-/Formel-Sweep wiederholt
  (beide bereits ausgeschöpft/abschliessend belegt, Run 11/14). Einziger neuer, günstiger
  Check: `find` nach Kosten-Dateien mit Änderungsdatum nach 27.07.2026 09:00 Uhr in der
  SharePoint-Bibliothek `OneDrive-FreigegebeneBibliotheken–JANS` — null Treffer.
- Keine neue Inhaltsfrage. Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation
  "norm, eloquent") bleiben wie in Run 11–15 beschrieben nur durch Raphael Jans direkt oder
  neues Material lösbar.
- Fünf aufeinanderfolgende Läufe (12–16) ohne neuen Kennwert bestätigen die Taktungs-
  Beobachtung aus Run 15: der VOLLGAS-Runner feuert diesen Loop im Minutenabstand statt
  gemäss `cron_target` 2x täglich. Empfehlung unverändert: auf Ereignis-Trigger zurücktakten
  (liegt ausserhalb der Befugnis dieses Loops). Details: `outputs/2026-07-27_grobkosten-run16.md`.

## 2026-07-27 — Trainings-Run 15: kein neuer Kennwert, vierter Sättigungsbeleg in Folge (Run 12–15) — Taktungshinweis statt Inhaltsfrage

- Lauf begann ~2 Min. nach dem Run-14-Commit; Empfehlung aus Run 14 (kein Sweep in
  unmittelbarer zeitlicher Nähe) befolgt. Keine neue Inhaltsfrage — Frage 1/2 bleiben wie in
  Run 12–14 beschrieben nur durch Raphael Jans direkt oder neues Material lösbar.
- **Einziger neuer Punkt:** Beobachtung zur Taktung selbst. Der Scheduled Task
  (`cron_target: "0 9,21 * * *"`) feuert seit heute Mittag über den VOLLGAS-Runner im
  Minutenabstand statt 2x täglich; vier Läufe in Folge (12–15) ohne neuen Kennwert. Empfehlung
  an `vollgas-chef-radar`/Raphael: diesen Loop jetzt auf den Ereignis-Trigger zurücktakten
  (siehe `training/PROGRAMM.md` Endbedingung), statt im aktuellen Takt weiterlaufen zu lassen.
  Details: `outputs/2026-07-27_grobkosten-run15.md`.

## 2026-07-27 — Trainings-Run 14: Frage-1-Formelbefund auch an der projekteigenen Wald-Exceldatei bestätigt (kein neuer Blocker, aber schärfere Beweislage)

- **Kein Bibliotheks-Sweep, kein Ereignis-Trigger-Re-Check** (Empfehlung Run 13 befolgt).
  Kollisionscheck via `ps`/`PPID`-Abgleich: einziger Treffer die eigene Prozessinstanz (dieser
  Lauf begann ca. 13:06 Uhr, nur Minuten nach dem Run-13-Commit 13:05:46).
- **Umgesetzt (Option b aus Run 13):** Statt eines fachlich unverbundenen Blatts
  ("Sensitivitätsanalyse Cover Pre-Check") wurde ein direkterer, bisher nicht geprüfter Weg
  gewählt: die **projekteigenen** Exceldateien des Wald-Falls selbst (`8636 Wald
  Haselstudstrasse Desktopstudie/…xlsx` und `…Volumenstudie STWE/…xlsx`, SharePoint
  `IMMO - 01 Projekte`) im Formel-Modus geöffnet — bisher hatte nur Run 13 das generische
  Master-Template geprüft, nicht die tatsächlich für `raw/2411-wald-haselstudstrasse.md`
  verwendeten Live-Dateien.
- **Ergebnis:** identische Formelstruktur wie am Master-Template (`G48=1.13` als "Faktor BKP 2
  zu BKP 1-5" beschriftet, fliesst ausschliesslich in die als "Total BKP 1-9" beschriftete
  Summe `I56` ein, kein Rechenschritt für BKP 6-9). Zusätzlich bestätigt: die aus dem PDF
  extrahierten CHF/m³-Werte (1'539/1'765) stimmen mit den Live-Formelwerten (1'537/1'766)
  überein — keine Übertragungsfehler in `raw/2411-wald-haselstudstrasse.md`. Details:
  `raw/2411-wald-haselstudstrasse.md`, Abschnitt "Nachtrag Run 14".
- **Einordnung:** Frage 1 bleibt strukturell ungelöst (weiterhin nur durch Raphaels Antwort auf
  die in Run 13 zugespitzte Ja/Nein-Frage lösbar) — dieser Lauf liefert keine neue offene Frage,
  sondern schliesst eine Lücke in der Beweiskette (Master-Template UND die konkret betroffene
  Projektdatei zeigen dieselbe Inkonsistenz, kein Einzelfall einer veralteten Kopie).
- **Empfehlung für Run 15:** Kein weiterer Formel-Sweep zu Frage 1 — die Beweislage ist jetzt
  vollständig (Master-Template + betroffene Projektdatei). Ein weiterer reiner
  Bibliotheks-Sweep oder Ereignis-Trigger-Check in unmittelbarer zeitlicher Nähe zu diesem Lauf
  bleibt weiterhin ohne Erkenntnisgewinn (Materialmangel ist strukturell erschöpft, siehe Run
  11/12). Sinnvoll ist ein Ereignis-Trigger-Re-Check erst wieder nach einem echten zeitlichen
  Abstand (z.B. beim nächsten regulären 09/21-Uhr-Takt) oder nach neuem, tatsächlich abgelegtem
  Material. Bis dahin bleibt (a) die Rückfrage an Raphael Jans (Frage 1/2, nicht autonom lösbar)
  der einzige verbleibende Weg zu einer ersten "belegt (n=…)"-Promotion.

## 2026-07-27 — Trainings-Run 13: Frage 1 auf Formel-Ebene verifiziert und zu einer präzisen Ja/Nein-Rückfrage zugespitzt

- **Kein erneuter Ereignis-Trigger-Check:** Run 12 (12:56 Uhr) hatte den Ereignis-Trigger
  (neuer Kostenstand seit 26.07.) bereits geprüft und negativ beschieden; dieser Lauf begann nur
  wenige Minuten später (Kollisionscheck via `ps`: einziger Treffer die eigene Prozessinstanz).
  Ein identischer Re-Check hätte in dieser Zeitspanne garantiert dasselbe Nullergebnis geliefert
  — bewusst NICHT wiederholt (Rule «Kein Leerlauf-Zwang»: keine Duplikat-Prüfung ohne
  Erkenntnisgewinn). Stattdessen ein bisher nicht begangener Weg geprüft: Auflösung von Frage 1
  direkt an der Formel-Ebene des Pre-Check-Tools (2305 Wädenswil), wie in Run 6/7 als offener
  Punkt vorgeschlagen ("Klärung von Frage 1 direkt an der Exceldatei").
- **Befund:** Die Originaldatei `Immo-02-P23D-Pre-Check_Tool_Jans.xlsx` war auf dieser Station
  (MacBook Pro) nicht über den bisher verwendeten Pfad-Alias erreichbar (leerer Ordner, analog
  zum in Run 11 dokumentierten Stations-Sync-Muster), aber unter dem direkten SharePoint-Mount
  `OneDrive-FreigegebeneBibliotheken–JANS/IMMO - 03 KNOW-HOW/…` vorhanden. Mit `openpyxl` im
  Formel-Modus (`data_only=False`, neue venv `/tmp/venv-xlsx-grobkosten`) statt nur im
  Werte-Modus (wie Run 7) geöffnet: Die Summenformeln `AF69:AF73`, die in `I56` («Total BKP 1-9»)
  münden, wenden **ausschliesslich** den Faktor `G48 = 1.13` auf die BKP-2-Einheitskosten an —
  denselben Faktor, den das Tool in derselben Zeile als «Faktor BKP 2 zu BKP 1-5» beschriftet
  (`G47`). Es existiert an keiner Stelle der Formelkette ein zusätzlicher Rechenschritt für
  BKP 6-8 (Reserven) oder BKP 9 (Ausstattung). Details: `raw/2305-waedenswil-precheck.md`,
  Abschnitt "Nachtrag Run 13".
- **Ergebnis:** Frage 1 bleibt strukturell ungelöst (keine autonome Auflösung möglich — beide
  Deutungen sind rechnerisch in sich schlüssig), aber jetzt maximal scharf für eine schnelle
  Rückfrage an Raphael Jans vorbereitet: *Ist die vom Tool als «Total BKP 1-9» ausgewiesene
  Summe in Wahrheit ein BKP-1-5-Total (weil nur der 1.13-Faktor «BKP2→BKP1-5» je angewendet
  wird), oder ist der Faktor 1.13 tatsächlich als «BKP2→BKP1-9» gemeint und nur die
  Feldbeschriftung `G47` falsch?* Eine einzige Antwort löst nicht nur diesen Fall, sondern auch
  den strukturgleichen Wald-Haselstudstrasse-Fall (`raw/2411-wald-haselstudstrasse.md`, gleicher
  Tool-Faktor 1.13) und potenziell weitere künftige Pre-Check-Tool-Fälle in einem Schritt.
- **Empfehlung für Run 14:** Kein weiterer Bibliotheks-Sweep und kein weiterer Ereignis-Trigger-
  Check in derselben Sitzungsnähe. Entweder (a) die oben zugespitzte Frage bei Gelegenheit direkt
  an Raphael stellen (nicht autonom in diesem Loop), oder (b) falls ein Lauf ohne neues Material
  auskommen muss: prüfen, ob sich dieselbe Formel-Ebenen-Methode auf ein bisher nur wert- statt
  formelseitig geprüftes JANS-Tool anwenden lässt (z.B. die Sensitivitätsanalyse-Formeln auf
  Blatt «Cover Pre-Check», in diesem Lauf mitgesichtet, aber ohne BKP-1-9-vs-1-5-Bezug).

## 2026-07-27 — Trainings-Run 12: Ereignis-Trigger-Check negativ — formale Sättigung erklärt, Rücktaktung empfohlen

- **Geprüft (Option b aus Run 11):** Ob seit dem letzten Check ein neuer Kostenstand aus einem
  laufenden Mandat vorliegt. Ergebnis: `find` über die **gesamte** SharePoint-Bibliothek
  (`OneDrive-FreigegebeneBibliotheken–JANS`) nach `*kosten*`-Dateien mit Änderungsdatum seit
  26.07.2026 00:00 liefert **null Treffer**. Gezielt auch die drei aktiven Mandate mit bekanntem
  Kosten-Bezug (2414 Thalwil, 2620 Albertstrasse, 2515 Wartstrasse) auf neue Dateien seit ihrem
  jeweils letzten Check-Datum geprüft — ebenfalls keine.
- **Formale Sättigung gemäss `training/PROGRAMM.md` Endbedingung:** Das Inventar ist strukturell
  ausgeschöpft (alle bekannten Bibliotheken `[x]`/`[-]`, bestätigt Run 11), UND es liegt kein
  neues Material vor, das Frage 1 (BKP-1-9-vs-1-5) oder Frage 2 (Standard-Klassifikation)
  autonom auflösen könnte. `wiki/kennwerte.md` erreicht damit für keine Nutzungsart die Reife
  "belegt (n=…)" — der Blocker ist nachweislich **strukturell** (zwei offene Fachfragen an
  Raphael Jans), nicht mehr Materialmangel. Ein weiterer täglicher/mehrfach-täglicher Zyklus
  dieses Loops verspricht keinen weiteren Ertrag, solange Frage 1/2 ungeklärt bleiben.
- **Empfehlung:** Diesen Loop von der aktuellen Taktung (mehrfach täglich, VOLLGAS) auf einen
  **Ereignis-Trigger** zurücktakten: nächster sinnvoller Lauf erst, wenn (a) Raphael Jans Frage
  1/2 beantwortet (dann sofort die wartenden MFH-Einzelfälle Haus Deuber/Niederhasli/Wald neu
  bewerten und ggf. den ersten Median bilden), oder (b) ein neuer Kostenstand mit GV-Bezug aus
  einem laufenden Mandat abgelegt wird (`kostenkontrolle`-Output oder neue SharePoint-Datei).
  Dies ist eine Beobachtung/Empfehlung für den nächsten interaktiven Kontakt mit Raphael — keine
  autonome Änderung der Scheduled-Task-Taktung selbst (liegt ausserhalb der Befugnis dieses Loops).

## 2026-07-27 — Trainings-Run 11: letzte offene `AR`-Bibliothek geprüft (leer), Brassel-Nebenfund als Fremdmandat geschlossen — autonome Exploration erschöpft

- **`AR - 06 Referenzen` (letzte aus Run 5 als noch offen benannte `AR`-Bibliothek):** auf dieser
  Station komplett leer (nur `.DS_Store` + OneDrive-interne Marker-Datei, keine Projektordner).
  Kein Fund möglich.
- **Brassel-Archiv-Nebenfund aus Run 10 abschliessend geklärt:** Die Kontaktliste zu
  `201210_HARDSTRASSE_7` (`Kontakte/Kontakliste Hardstrasse 7.pdf`) weist Brassel Architekten
  (nicht JANS) als Funktion "Architektur" aus. Das gesamte `_Archiv/Brassel_Architekten/`-Verzeichnis
  ist damit als **Fremdmandat** eingeordnet (JANS lieferte mutmasslich stundenbasierte Zuarbeit,
  siehe Stundenabrechnungs-Korrespondenz in anderen Unterordnern) — keine JANS-eigenen
  Gebäude-Kostendaten. Die dortigen BKP-Dokumente sind zudem ein Fitout-Modul (Bakery/Café),
  kein Gesamtgebäude-GV. Doppelt ausserhalb des Scopes dieser KB.
- **Damit sind alle in Run 5/6 identifizierten SharePoint-Bibliotheken vollständig gesichtet**
  (`AR - 01` bis `AR - 07`, `IMMO - 01/02/03/05/06`, zweite SharePoint-Bibliothek
  `...-RaphaelJans-ArchitektenETH`). Die autonome Exploration der bekannten Struktur ist damit
  absehbar erschöpft — ein weiterer reiner Bibliotheks-Sweep verspricht keinen neuen Ertrag mehr.
- **Empfehlung für Run 12 (geändert gegenüber bisherigem Muster):** NICHT erneut dieselben
  Bibliotheken durchsuchen. Stattdessen: (a) Frage 1 (BKP-1-9-vs-1-5-Bezeichnung, betrifft Wald
  Haselstudstrasse + Pre-Check-Tool-Familie) und Frage 2 (Standard-Klassifikation "norm,
  eloquent" mutmasslich Vorlagentext, betrifft Haus Deuber + Reckholdern) als konkrete,
  beantwortbare Rückfragen an Raphael Jans vorbereitet halten für den nächsten interaktiven
  Kontakt (nicht autonom in diesem Loop stellbar); (b) alternativ auf einen Ereignis-Trigger
  warten (neuer Kostenstand aus `kostenkontrolle` bei einem laufenden Mandat, z.B. KISPI/
  Albertstrasse/Thalwil, sobald dort Ist-Kosten mit GV-Bezug vorliegen) statt weiter zu zyklieren.
  Dies deckt sich mit der in `training/PROGRAMM.md` beschriebenen Endbedingung: das Inventar ist
  faktisch ausgeschöpft, auch wenn `wiki/kennwerte.md` noch keine "belegt (n=…)"-Reife erreicht
  hat — die Blocker sind jetzt strukturell (Frage 1/2), nicht mehr Materialmangel.

## 2026-07-27 — Trainings-Run 10: `AR - 02/04/05` gesichtet, Frage 1 + 2 weiterhin ungelöst — neuer Fund, aber anderer Blocker

- **Befund:** Die drei letzten aus Run 5 benannten SharePoint-Bibliotheken (`AR - 02
  Wettbewerbe`, `AR - 04 Honorarauftraege`, `AR - 05 Transfer`) gesichtet. Ein neuer,
  in sich konsistenter Rohbeleg (2105 Steinkogler, Haus «Le Mélèze» Davos,
  `raw/2105-steinkogler-davos.md`), aber NICHT promotionsfähig — anders als bisher: kein
  interner Widerspruch, sondern eine grundsätzlich andere Methodik (Eingriffstiefen-Bandbreiten
  S/M/L/XL statt GV x Kennwert, keine einzige m³/GV-Angabe im ganzen Dokument). Löst damit
  weder Frage 1 noch Frage 2.
  Dieser Lauf zeigt: die drei zurückgestellten Bibliotheken haben KEINEN Fall geliefert, der
  eine Standard-Klassifikation textlich eindeutig belegt.
- **Damit sind alle fünf in Run 5 benannten `AR`/`IMMO`-Bibliotheken gesichtet.** Einzige noch
  ungeprüfte `AR`-Bibliothek: `AR - 06 Referenzen` (Name legt reine Referenzsammlung nahe, wie
  bereits mehrfach beobachtet bei anderen `_Admin`/`Referenz`-Unterordnern — geringe
  Erwartungshaltung, aber nicht ausgeschlossen).
- **Neue Beobachtung (nicht Frage 1/2, aber ein wiederkehrendes Muster):** JANS-eigene
  Grobkosten-Dokumente enthalten wiederholt einen im Fliesstext genannten Vergleichswert, der
  von der tatsächlich angewandten Rechengrösse abweicht (hier: «CHF 2'000.-/m² GF» im Text vs.
  tatsächlich gerechnete «CHF 2'600.-/m² GF», 30 % Differenz, im Dokument nicht aufgelöst) —
  bereits bei Ackersteinstrasse/Reckholdern (Run 3/4) beobachtet, jetzt ein drittes Mal
  bestätigt. Für künftige Läufe: bei jedem Fund explizit prüfen, ob ein im Fliesstext genannter
  Richtwert mit dem tatsächlich verwendeten Rechenwert übereinstimmt, bevor irgendeine Zahl aus
  einem JANS-Dokument übernommen wird.
- **Empfehlung für Run 11:** `AR - 06 Referenzen` kurz sichten (letzte offene `AR`-Bibliothek);
  danach ist die autonome Exploration der bekannten SharePoint-Struktur absehbar erschöpft.
  Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation «norm, eloquent») bleiben ohne
  Rückfrage an Raphael Jans bzw. ohne einen neu abgelegten Fall (laufende Mandate über
  `kostenkontrolle`) nicht lösbar — sollte Run 11 ebenfalls nichts Neues liefern, ist eine
  Rückfrage an Raphael der nächste sinnvolle Schritt statt eines weiteren Bibliotheks-Sweeps.

## 2026-07-27 — Trainings-Run 9: Option (a) aus Run 8 umgesetzt (Teuerungs-Normalisierung), Frage 1 + 2 bleiben der Blocker

- **Erledigt:** Die Run-8-Baupreisindex-Faktoren wurden auf die vier belastbarsten Einzelfälle
  angewendet (`wiki/kennwerte.md`, Abschnitt "Run 9"). Methode: lineare Interpolation zwischen
  den nächsten zwei belegten Jahres-Stützstellen des Zürcher Index; keine Extrapolation über den
  letzten verfügbaren Anker (01.04.2025) hinaus. Ergebnis: Haus Deuber 1'086 → ≈1'250 CHF/m³
  (+15.1 %), Reckholdern 1'735 → ≈1'757 CHF/m³ (+1.3 %); Niederhasli (1'032) und Albertstrasse
  (2'500) liegen bereits nach dem letzten Anker und bleiben unverändert.
- **Weiterhin ungelöst — jetzt der alleinige Blocker für eine MFH-Median-Bildung:** Selbst nach
  Preisstand-Normalisierung liegen Haus Deuber (≈1'250, MFH) und Niederhasli (1'032, MFH) noch
  ca. 20 % auseinander. Das bestätigt: die Preisstand-Dimension war NICHT die Hauptursache der
  Streuung — Frage 1 (BKP-1-9-vs-1-5-Bezeichnung, betrifft Wald Haselstudstrasse + Pre-Check-
  Tool-Familie) und Frage 2 (Standard-Klassifikation "norm, eloquent" mutmasslich Vorlagentext,
  betrifft Haus Deuber + Reckholdern) bleiben beide nur durch Rückfrage an Raphael Jans bzw.
  durch einen neuen, eindeutig klassifizierten Fall lösbar — nicht autonom in diesem Loop.
- **Empfehlung für Run 10:** Da (a) jetzt erledigt ist, gemäss der in Run 8 genannten Option (b)
  neue, bisher ungeprüfte SharePoint-Bibliotheken sichten: `AR - 02 Wettbewerbe`,
  `AR - 04 Honorarauftraege`, `AR - 05 Transfer` (aus Run 5 als Kandidaten benannt, bisher keine
  geprüft) — mit Fokus auf einen Fall, der die Standard-Klassifikation textlich eindeutig
  belegt (Materialbeschrieb/Ausbaustandard), statt nur ein weiteres Dropdown-Label zu liefern.

## 2026-07-27 — Trainings-Run 8: Stufe-4-Baustein gelöst (Baupreisindex verkettet), Registerlücke geschlossen — neue Empfehlung für Run 9

- **Gelöst:** Der in Run 6 als "möglicher, aber unbewerteter Baustein für Stufe 4" geführte
  Zürcher Baukostenindex (JANS-eigene Quelle bricht 2004 ab) ist jetzt bis 01.04.2025 verkettet
  belegt (`raw/zuercher-index-wohnbaukosten-1939-2025.md`, fertige Umrechnungsfaktoren in
  `wiki/kennwerte.md`). Kein offener Punkt mehr — Stufe 4 kann ab sofort angewendet werden,
  sobald eine Median-Bildung ansteht.
- **Registerlücke behoben:** `raw/2620-albertstrasse.md` (Run 4 extrahiert, nie registriert)
  ist nachgetragen — erster realer Umbau-Kennwert (2'500 CHF/m³) in `kennwerte.md`.
- **Neue Empfehlung für Run 9 — zwei Optionen, beide sinnvoll:** (a) Die jetzt verfügbaren
  Teuerungsfaktoren auf die bestehenden Einzelfälle anwenden (Preisstand-Normalisierung), damit
  ein künftiger Median nicht unterschiedliche Preisstände vermischt. (b) Weiterhin ungeprüfte
  SharePoint-Bibliotheken sichten: `AR - 02 Wettbewerbe`, `AR - 04 Honorarauftraege`, `AR - 05
  Transfer` (aus Run 5 als Kandidaten benannt, bisher keine geprüft). Empfehlung: zuerst (a),
  da risikolos und mit vorhandenem Material machbar, dann (b) für neuen Rohstoff.
- **Weiterhin unverändert offen (aus Run 6/7):** Frage 1 (BKP-1-9-vs-1-5-Bezeichnung, nur durch
  Rückfrage an Raphael lösbar) und Frage 2 (Standard-Label "norm, eloquent" im GKB-Tool ist
  mutmasslich Vorlagentext) — siehe Einträge unten.

## 2026-07-27 — Trainings-Run 7 (Vertiefung Run-6-Kandidaten): Frage 1 bleibt offen, aber mit direktem Tool-Beleg verstärkt

- **Befund:** Die drei in Run 6 identifizierten, aber nicht extrahierten Kandidaten geprüft.
  Pre-Check-Tool 2305 Wädenswil (`raw/2305-waedenswil-precheck.md`) liefert den bisher
  direktesten Beleg für **Offene Frage 1** (BKP-1-9-vs-BKP-1-5-Bezeichnung, siehe Run-6-Eintrag
  unten): im selben Excel-Tool trägt derselbe Faktor (1.13) in derselben Rechenzeile zwei sich
  widersprechende Feldbeschriftungen — «Faktor BKP 2 zu BKP 1-5» (Eingabefeld) versus «Total
  BKP 1-9» (Ausgabefeld). Das bestätigt: die Inkonsistenz liegt im JANS-eigenen Tool selbst,
  nicht in einer Fehlübertragung zwischen Dokumenten. Eine Auflösung ist nur durch Rücksprache
  mit Raphael Jans (Tool-Ersteller) möglich — nicht autonom lösbar. Kennwert (1'380–1'546
  CHF/m³) bewusst NICHT promoviert.
- **Zweiter Kandidat (2304 Waedenswil Residualwert-Tool) geschlossen, nicht verwertbar:**
  Projektnummer-/-name-Felder im Dokument leer — Zahlen (GV 9'080 m³, BKP1-9 12.2-13.1 Mio)
  nicht sicher demselben Projektstand zuordenbar wie 2305 Wädenswil, obwohl im selben
  Projektordner abgelegt (möglicher Hinweis auf eine frühere Tool-Variante oder ein anderes
  Nutzungsszenario). Keine Übernahme ohne verifizierte Provenienz.
- **Dritter Kandidat (Langnau Giebelweg 12) geschlossen, nicht verwertbar:** Erstellungskosten
  im Bewertungsdokument sind explizit eine Annahme innerhalb einer Residualwertrechnung, keine
  eigene BKP-gegliederte Kostenschätzung.
- **Empfehlung für einen künftigen Lauf:** Frage 1 (BKP-1-9-vs-1-5) bleibt der grösste
  strukturelle Blocker für eine MFH-Median-Bildung (betrifft mind. 3 Einzelfälle: Wald
  Haselstudstrasse, 2305 Wädenswil, 2305 Pre-Check-Tool-Familie generell). Eine Klärung
  erfordert entweder eine Rückfrage an Raphael (nicht autonom in diesem Loop) oder das
  Auffinden eines Projekts mit sowohl Pre-Check-Tool-Ergebnis als auch unabhängiger,
  klassischer BKP-1-5-Kostenschätzung zum Abgleich.

## 2026-07-27 — Trainings-Run 6 (vier neue Quellen parallel gesichtet): zwei neue Einzelfälle, drei neue offene Punkte

- **Befund:** `AR - 03 Studien`, `IMMO - 01 Projekte`, `IMMO - 02/03/05` und die zweite
  SharePoint-Bibliothek `...-RaphaelJans-ArchitektenETH` parallel durch vier Subagenten
  geprüft. Zwei neue, gut belegte Einzelfälle in `wiki/kennwerte.md` aufgenommen: 8155
  Niederhasli Seestrasse 64 (1'032 CHF/m³, explizite BKP-1-5-Gliederung + explizites GV im
  selben Dokument — stärkster bisheriger Beleg dieser KB) und 2001 Haus Deuber Thalwil
  (1'086 CHF/m³, eBKP-H-Basis). Details: `raw/8155-niederhasli-seestrasse64.md`,
  `raw/2001-haus-deuber-thalwil.md`.
- **Offene Frage 1 — BKP-1-9-vs-BKP-1-5-Bezeichnung uneinheitlich (neu, betrifft mehrere
  JANS-eigene Pre-Check-/Residualwert-Tools):** Sowohl im Wald-Haselstudstrasse-Dokument
  (`raw/2411-wald-haselstudstrasse.md`) als auch im Pre-Check-Tool 2305 Wädenswil
  (`IMMO - 03 KNOW-HOW`) wird ein Umrechnungsfaktor "BKP 2 → Gesamt = 1.13" verwendet, aber im
  einen Dokument als "BKP 2 → BKP 1-9", im anderen (uneinheitlich) auch als "BKP 2 → BKP 1-5"
  bezeichnet. Da BKP 6-8 laut `references/bkp-2017/` reine Reserve-Kategorien sind (i.d.R.
  null), macht das nur dann keinen Unterschied, wenn BKP 9 (Ausstattung) im Total NICHT
  enthalten ist — das ist aus den vorliegenden PDF-Auszügen nicht abschliessend zu klären. Bis
  geklärt (Einsicht in die Original-Exceldatei "Pre-Check_Tool_Jans.xlsx" nötig, dort ist der
  Faktor als Formel hinterlegt), bleiben alle mit diesem Faktor gebildeten Werte als **obere
  Näherung** markiert und werden NICHT in die Haupttabelle promoviert.
- **Offene Frage 2 — Standard-Klassifikation im JANS-eigenen GKB-Tool ist ein Vorlagentext,
  nicht projektspezifisch:** Sowohl bei 2001 Haus Deuber als auch bei 2304 Reckholdern
  (bereits in Run 4 verwertet) trägt die Grobkostenberechnung das identische Label "norm,
  eloquent" — mutmasslich ein fixes Dropdown-Feld im JANS-eigenen GKB-Tool, keine bewusste
  Standard-Einschätzung je Projekt. Für künftige Läufe: dieses Label NICHT als verlässliche
  Standard-Angabe werten, sondern separat verifizieren (z.B. über Materialbeschrieb/
  Ausbaustandard-Text im selben Dokument), bevor ein Fall einer Standardstufe (einfach/mittel/
  gehoben) zugeordnet wird.
- **Offene Frage 3 — noch keine Median-Bildung trotz n≥2 für "MFH":** Mit inzwischen vier
  MFH-Datenpunkten (Grubenackerstrasse 950-1050 unverifiziert, Haus Deuber 1'086, Niederhasli
  1'032, Wald 1'539-1'765 als obere Näherung) läge rein zahlenmässig n≥2 vor. Bewusst NICHT
  verdichtet, weil die Standard-Einordnung uneinheitlich/unklar ist (siehe Frage 2) und die
  Wald-Werte durch Frage 1 mit Vorbehalt behaftet sind. Vorschlag für einen künftigen Lauf:
  zuerst Fragen 1+2 klären (ggf. durch Excel-Einsicht bzw. Materialbeschrieb-Vertiefung), dann
  erst eine MFH-Median-Bildung erwägen.
- **Drei identifizierte, aber in diesem Lauf aus Kapazitätsgründen nicht extrahierte
  Kandidaten für einen künftigen Lauf:** (a) Pre-Check-Tool 2305 Wädenswil (`IMMO - 03
  KNOW-HOW/05 Residualwert/Exel Tabelle/jans/Immo-02-P23D-Pre-Check_Tool_Jans.xlsx`, GV 11'724 m³
  oi explizit, Erstellungskosten 16.18-18.12 Mio BKP1-9) — echtes JANS-Projekt, lohnt volle
  Extraktion inkl. Klärung von Frage 1 direkt an der Exceldatei. (b) 2304 Waedenswil
  Residualwert-Tool (`AR - 03 Studien`, CHF/m³-Kennwert 1'566 vorhanden, GV nicht explizit). (c)
  Langnau Giebelweg 12 (`IMMO - 01 Projekte`, GV 1'152 m³ explizit, Kosten aber nur als
  "Annahme" in einer Bewertung, keine eigene Kostenschätzung).
- **Möglicher Baustein für Stufe 4 (Teuerungs-Normalisierung), noch nicht bewertet:**
  `IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` enthält eine "Zürcher
  Index der Wohnbaukosten"-Zeitreihe 1939-2004 sowie CHF/m³-Bandbreiten nach Bauklasse I-VI
  (Stand 2003). Das ist potenziell der in `training/PROGRAMM.md` Stufe 4 geforderte "belegte
  Baupreisindex" — aber die Zeitreihe endet 2004, eine Fortschreibung auf 2026 (z.B. via BFS-
  Baupreisindex, bereits als Quelle im Frontmatter-Kaveat von `kennwerte.md` referenziert) wäre
  nötig. Für einen künftigen Lauf: prüfen, ob sich die beiden Indexreihen (Zürcher Index bis
  2004, BFS-Index ab dort) verketten lassen.
- **Nebenbefund, kein grobkosten-Thema, aber vermerkt:** Acht Projektordner unter `AR - 03
  Studien` teilen sich ein identisches, nie ausgefülltes GKS-Copy-Paste-Template (GV 1'668 m³,
  950-1'050 CHF/m³) — ein liegen gebliebener Platzhalter, kein Dokumentationsfehler dieser KB.
  Nur zur Kenntnis, keine Aktion in diesem autonomen Lauf (keine Rückfrage/Mail).

## 2026-07-26 — Trainings-Run 5 (neue Quelle SharePoint `IMMO - 06 Kennwerte`): m²-GF-Benchmark gefunden, zwei neue offene Fragen

- **Befund:** Erste Quelle ausserhalb der Projektordner erschlossen. `_Kennwerte Jans.docx`
  (JANS-eigenes Referenzblatt, 25.03.2025) liefert einen indexierten Erstellungskosten-
  Benchmark für Wohnen Individuell EFH/ZFH (4'485 CHF/m² GF BKP1-5), aber auf einer anderen
  Bezugsgrösse (m² GF) als die geführte Tabelle (m³ GV). Details: `raw/kennwerte-jans-
  referenzdokument.md`, Verdichtung `wiki/kennwerte.md` (neue Parallel-Sektion).
- **Offene Frage 1 — Projekt-Identität "Thalwil Bohlweg 1":** Das im Referenzblatt gerechnete
  Beispiel (950 m² GF, 8-Platz-TG, CHF 4.6 Mio) passt weder in Hausnummer (Bohlweg 1 vs. 3)
  noch in Grössenordnung (Faktor ~10) zum bereits bekannten "2414 THALWIL Bohlweg 3"
  (EFH-Umbau, CHF 526'300 bzw. 482'000, `raw/2414-thalwil.md`). Ungeklärt, ob es sich um ein
  anderes/benachbartes Projekt oder einen früheren, grösseren Planungsstand handelt. Nicht
  autonom auflösbar (keine weitere Quelle in diesem Lauf gefunden) — bei Gelegenheit Raphael
  fragen, oder in einem künftigen Lauf gezielt nach einem Projekt "Bohlweg 1 Thalwil"
  suchen (SharePoint-Projektnummer unbekannt, evtl. unter anderer Nummer/Namen abgelegt).
- **Offene Frage 2 — GV/GF-Umrechnungsfaktor weiterhin ungeklärt (verstärkt den bestehenden
  needs-decision-Punkt aus Wissens-Chef Run 15):** Der neue m²-GF-Benchmark könnte in die
  Haupttabelle (CHF/m³ GV) integriert werden, sobald der GV/GF-Faktor für "Wohnen Individuell"
  entschieden ist. Bis dahin bleibt er als separate Sektion geführt — kein Kennwert wird
  geraten/umgerechnet.
- **Vorschlag für Run 6:** Weitere, in diesem Lauf identifizierte, aber ungeprüfte SharePoint-
  Bibliotheken sichten — Kandidaten mit plausibler Kosten-Relevanz: `AR - 03 Studien` (frühe
  Machbarkeits-/Kostenschätzungen), `IMMO - 01 Projekte`, `IMMO - 02 UBSFS`,
  `IMMO - 03 KNOW-HOW`, `IMMO - 05 Bodenpreise`, sowie die komplett ungesichtete zweite
  SharePoint-Bibliothek `OneDrive-FreigegebeneBibliotheken–RaphaelJans-ArchitektenETH`. Aus
  `IMMO - 04 Marktpreise` ist bereits ein Healthcare-PDF (`crb.ch/Spital_...Kostenkennwerte...`)
  bekannt — Weiterleitung an `kostenschaetzung` prüfen, nicht hier verwenden.

## 2026-07-26 — Trainings-Run 4 (Vertiefung statt neuer Projekte): Reckholdern verwertbar, Ackersteinstrasse-Ursache geklärt — neue offene Frage: Luxus-Standardstufe

- **Befund Reckholdern (gelöst, kein offener Punkt mehr):** Ein fünftes, später datiertes
  JANS-Dokument (`09_Dokumente/Marktwertschaetzung/2304RE20_Marktwertanalyse_RJ.pdf`, Stand
  31.12.2023) liefert GV (1'986 m³) und BKP-1–5-Kosten (CHF 3'446'500, klassischer BKP, deckt
  sich mit dem unabhängig gefundenen KV Siworks) im selben, rechnerisch selbst verifizierten
  Dokument. Der ältere eBKP-H-Widerspruch aus Run 3 (GV 1'715 m³, zwei sich widersprechende
  Kostenstände) ist damit als überholter Zwischenstand eingeordnet, nicht als ungeklärter
  Fehler. Erster Kennwert-Einzelfall mit sauberem GV+BKP-Tripel in dieser KB: 1'735 CHF/m³,
  EFH gehoben/Luxus. Details: `raw/2304-reckholdern.md`.
- **Befund Ackersteinstrasse (gelöst, kein offener Punkt mehr):** Rechnungsprüfung
  (`04_KTV/08_Rechnungen/`) zeigt, dass das Mandat mit der letzten Rechnung 07.09.2023
  ("Plangrundlagen für Abänderungseingabe") endete — keine spätere Rechnung, keine
  Bauleitung/Baubuchhaltung, kein Unternehmerzuschlag. Das Projekt kam nie zur Ausführung; die
  vier widersprüchlichen GKS-Stände aus Run 3 waren Zwischenstände eines nie abgeschlossenen
  Entwurfsprozesses. Eine Bauabrechnung wird für dieses Projekt nie existieren — Fall
  geschlossen (weiterhin nicht verwertbar, aber nicht mehr offen). Details:
  `raw/2202-ackersteinstrasse.md`.
- **Neue offene Frage (aus dem Reckholdern-Fund):** Der Reckholdern-Kennwert (1'735 CHF/m³)
  liegt deutlich über dem bestehenden EFH-Seed-Band (850–1'200), konsistent mit der im
  Quelldokument selbst benannten Luxus-Einordnung (Pool, Erker, Dachreiter, Hanglage). Sollte
  `wiki/kennwerte.md` bei einem zweiten vergleichbaren gehobenen/Luxus-EFH-Fall eine eigene
  Standardstufe "gehoben/Luxus" mit eigenem Band statt nur der bestehenden Stufen
  einfach/mittel/gehoben führen? Bis n=2 in dieser Kategorie vorliegt, keine Strukturänderung.
- **Empfehlung für Run 5:** Die beiden bekannten SharePoint-Quellen (`AR - 01 Projekte`,
  `AR - 07 Archiv`) sind jetzt vollständig geprüft UND vertieft (kein Kandidat mit offenem
  Klärungsbedarf mehr). Ein Run 5 müsste entweder eine neue Quelle identifizieren (z.B. weitere
  SharePoint-Bibliotheken ausserhalb `AR - 01`/`AR - 07`, sofern vorhanden) oder auf einen
  Ereignis-Trigger warten (neuer Kostenstand aus laufenden Mandaten via `kostenkontrolle`) statt
  erneut dieselben Projektordner zu durchsuchen.

## 2026-07-25 — Trainings-Run 3 (Drittquelle AR-07 Archiv geprüft): erstmals GV+BKP im selben Dokument, aber beide Fälle intern widersprüchlich

- **Befund:** SharePoint `AR - 07 Archiv` (abgeschlossene Mandate) vollständig geprüft (4
  Projektordner). Zwei liefern Material: 2202 Ackersteinstrasse 67 (4 Kostenstände über
  2021–2023, Volumen 613–850 m³, Gesamtkosten CHF 480'000–1'219'133, ohne erkennbaren Grund
  für die Abweichung) und 2304 Reckholdern 20 (erstmals GV 1'715 m³ UND vollständige
  eBKP-H-Gliederung im selben Dokument — aber dasselbe Dokument enthält zwei sich
  widersprechende Gesamtkosten, CHF 2'960'000 vs. CHF 1'800'000, wobei letztere erkennbar aus
  einer nicht aktualisierten Fremdprojekt-Vorlage stammt, inkl. sachfremder
  Mietrendite-Berechnung). Details: `raw/2202-ackersteinstrasse.md`, `raw/2304-reckholdern.md`.
- **Neues strukturelles Muster:** Anders als in Run 2 (wo GV und BKP-Kosten in getrennten,
  aber je für sich konsistenten Dokumenten fehlten) liegt hier das Problem NICHT im Fehlen von
  Grösse oder Kostengliederung, sondern in der internen Konsistenz der Dokumente selbst —
  Word/PDF-Vorlagen mit nicht vollständig aktualisierten Vorjahresdaten (Titelseite/
  Rendite-Block aus Fremdprojekt) und mehrfachen, sich widersprechenden Kostenständen ohne
  dokumentierten Anlass für die Änderung. Für künftige Läufe: bei einem Kandidaten mit
  vermeintlich vollständigem GV+BKP-Bild IMMER prüfen, ob das Dokument intern
  in sich konsistent ist (Summe der Positionen = ausgewiesenes Total, Objektbeschrieb passt
  zum Rest des Dokuments), bevor eine Übernahme erwogen wird.
- **Vorschlag für Run 4:** Beide Projekte haben mehrere Kostenstände über die Zeit — ein
  gezielter Blick auf eine allfällige Schlussabrechnung (Ist-Kosten) im selben Projektordner
  könnte die Widersprüche auflösen (in diesem Lauf nicht gesucht, nur die in `PROGRAMM.md`
  vorgeschlagenen KV-/GKS-Dokumente gelesen). Alternativ: Rückfrage an Raphael Jans, welcher
  Stand je Projekt effektiv realisiert wurde. Mit `AR - 07 Archiv` vollständig geprüft (4/4
  Projektordner `[x]`/`[-]`) und `AR - 01 Projekte` in Run 2 vollständig geprüft, sind die
  bekannten SharePoint-Quellen gemäss `PROGRAMM.md` ausgeschöpft — ein Run 4 müsste entweder
  gezielt nach Schlussabrechnungen suchen (statt neue Projektordner) oder eine neue Quelle
  identifizieren (z.B. `kostenkontrolle`-Outputs, falls dort inzwischen Kostenrapporte
  vorliegen).

## 2026-07-25 — Trainings-Run 2 (SharePoint-Zweitquelle geprüft): erste Realdaten, aber durchgängig zu dünn für Promotion

- **Befund:** SharePoint `AR - 01 Projekte` (aktive Mandate) bestätigt die in Run 1 offen
  gelassene Vermutung — hier liegen die echten Kostendokumente, nicht im NAS-Altarchiv. Von 8
  geprüften Mandaten liefern 3 auswertbare Gesamtgebäude-Kostendokumente (Thalwil, Wartstrasse,
  Grubenackerstrasse). Alle drei sind jedoch für eine Kennwert-Promotion **zu dünn**: Thalwil
  hat ein volles BKP-1-6-Bild (CHF 526'300) aber kein Gesamt-GV; Wartstrasse hat gar kein
  GV (Fassaden-Teilprojekt); Grubenackerstrasse hat ein Volumen (1'668 m³), aber nicht
  SIA-416-verifiziert, ohne BKP-Gliederung und ohne Nutzungsangabe. Details: `raw/*.md`.
- **Strukturelles Muster (wichtig für künftige Läufe):** Die Dokumente, die tatsächlich ein
  sauberes GV+BKP-1-5+Nutzung-Tripel enthalten würden, existieren im JANS-Alltag offenbar
  selten als EIN Dokument — GV steckt oft im Vorprojekt/Baugesuch (Planer-Fachdokument), BKP-
  Kosten in einem separaten Kostenblatt. Ein künftiger Lauf sollte pro Projekt gezielt NACH
  dem GV-Dokument (Baugesuch, Vorprojekt-Pläne mit Kubatur) suchen und es mit dem Kostenblatt
  zusammenführen, statt nur das Kostenblatt allein zu prüfen.
- **Ausgeschlossen (bewusst, nicht offen):** 2619 KISPI (Kinderspital Zürich, umfangreichstes
  Kostendossier im Bestand) — Healthcare-Scope, gehört in den Skill `kostenschaetzung`, nicht
  hierher. Empfehlung: eigener Hinweis an den `kostenschaetzung`-Loop, falls dieser die
  KISPI-Kostendaten noch nicht kennt.
- **Nebenbefund (kein grobkosten-Thema, aber notiert):** `2518_Grubenackerstrasse_7/
  04_KostenTermine/1_Kosten/2_Kostenschätzung/230324 Kostenvergleich Liftposition/` enthält
  Fremddaten zweier anderer Projekte (Reckholdern 20, Laternengasse 5) — Fehlablage, read-only
  nicht bereinigt, zur Kenntnis an Raphael.
- **Vorschlag für Run 3:** SharePoint `AR - 07 Archiv` (abgeschlossene Mandate mit
  Schlussabrechnung) prüfen — dort ist die Wahrscheinlichkeit eines vollständigen GV+BKP-Bilds
  höher als bei laufenden Mandaten (deren KV/GKS oft vor Baubeginn und ohne finales GV steht).

## 2026-07-25 — Trainings-Run 1 (Stufe 1, Inventar): Altarchiv `04_Buero/02_Projekte` liefert 0 auswertbare Kostendokumente — Zweitquelle SharePoint prüfen

- **Befund:** Vollständige Durchsicht aller 21 Projektordner unter
  `/Volumes/daten/04_Buero/02_Projekte/` (Details `training/quellen-inventar.md`) ergab **kein
  einziges** auswertbares GV/BKP-1-5-Kostendokument. Ordner, deren Struktur einen vollständigen
  Kostenverlauf suggerieren (z.B. `1602_St_Karli_11` mit 8 Phasenordnern Wettbewerb→
  Kostenfeststellung, `1303_Steinhof` ebenso), sind auf Dateiebene komplett leer (nur
  `.DS_Store`). Andere Treffer sind Honorarofferten (1011), Möbel-/Büroumzugs-Preisvergleiche
  (1527), ein leeres Berechnungs-Template (1115) oder fachfremd (1604, italienisches CISA-
  Palladio-Studienmaterial).
- **Offene Frage:** Ist dieses Alt-NAS-Archiv (`04_Buero/02_Projekte`, Projekte 2010–2015)
  überhaupt der richtige Ort für reale Baukosten, oder laufen JANS-Bauleitungsmandate mit
  echter Kostenkontrolle ausschliesslich über SharePoint (`AR - 03 Studien/`, aktive Mandate
  KISPI/Albertstrasse/Thalwil, Rule `projekt-ablage-stand`)? `training/PROGRAMM.md` nennt
  SharePoint bereits als Zweitquelle ("`kostenkontrolle`-Outputs und Schlussabrechnungen der
  aktuellen Mandate") — noch nicht geprüft, da dieser Lauf sich strikt an die im Prompt
  vorgegebene NAS-Quelle hielt.
- **Vorschlag für den nächsten Lauf:** SharePoint-Projektordner (M365-Connector,
  `09_Dokumente/CLAUDE/` bzw. die BKP-Kostenkontrolle-Ablage der aktiven Mandate) nach
  Schlussabrechnungen/Kostenständen mit GV-Bezug durchsuchen, statt das Alt-NAS-Archiv erneut
  zu prüfen (dort ist die Quellenlage nach dieser Vollprüfung ausgeschöpft).
- **Einzige nicht komplett wertlose Fundstelle:** `1318_Lorraine_Kueche` (BKP-Detailpositionen
  Schreiner/Heizung/Sanitär für einen Kücheneinbau) — kein Gebäude-GV, daher hier nicht
  verwertet; potenziell später für eine BKP-Einzelposition-Kennwert-Erweiterung interessant.

## 2026-07-24 — Nachgetragen aus Health-Check 21.07.2026 (strukturelle Findings, 3 Wochen offen)

- **Reale JANS-Schlussabrechnungen fehlen weiterhin.** Alle Kennwerte in `kennwerte.md` sind
  Status "Seed" (Wüest-kalibriert, keine eigene Realabrechnung). Erster Realwert ist der
  Promotion-Trigger auf "belegt (n=…)".
- **Umbau/Sanierung: eigene m³-Reduktionsfaktoren noch nicht belegt** — derzeit Verweis auf
  Skill `kostenschaetzung` (dort m²-NF-Reduktionsfaktoren, nicht direkt auf m³-GV übertragen).
- **Healthcare bewusst ausgelagert** an Skill `kostenschaetzung` (Wüest-Partner-m²-NF) — kein
  offener Punkt, nur zur Abgrenzung vermerkt.
- **HNF/GF-Umrechnungsfaktoren (0.70 Regelgeschoss, 0.60 Gesamtgebäude) ohne eigene Quelle** —
  erkennbare JANS-Faustannahmen, plausibel und im Band, aber ohne Provenienz-Tag (Audit C,
  Health-Check 21.07.2026). Unkritisch, aber bei Gelegenheit mit einer Herleitung/Quelle
  hinterlegen, sobald eine verfügbar ist.
