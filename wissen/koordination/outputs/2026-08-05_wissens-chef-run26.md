---
titel: "Wissens-Chef Run 26 — Cross-KB, 5 Felder: das Haus-Archiv als Fehlerquelle"
datum: 2026-08-05
typ: lauf-report
run: 26
---

# Wissens-Chef Run 26 (05.08.2026, 23:11 CEST)

Fünf Felder, 15 Agenten (5 Melder auf Sonnet, 10 adversariale Verifikatoren auf dem
Hauptmodell), 11 gemeldete Befunde, **10 verifiziert: 8 bestätigt, 2 gedämpft, 0 widerlegt**.

## 1 · Dimensionierung, gemessen statt geschätzt

Zuwachs seit Run 25 per `git log --stat` über `wissen/`: **energie 28 Dateien** (Run 124 endete
drei Minuten vor Laufbeginn, dazu der ecoBKP-2026-Erstzugriff um 05:38), twin 23, **normen 8**,
projekt-lessons 5, bauprodukte 4, grobkosten 3, planungsgrundlagen / immobilienbewertung /
baurecht je 2. Das trägt fünf Felder. Die Felder wurden nicht nach Turnus gewählt, sondern
entlang des Zuwachses: drei der fünf zielen auf Material, das jünger als 24 Stunden war.

## 2 · Der teuerste Fund: das eigene Archiv ist die Fehlerquelle

**Zwei unabhängige Felder sind auf dieselbe Publikation konvergiert** (F1 und F3) — dasselbe
Vorsortier-Signal, das sich schon in Run 25 als das stärkste erwiesen hat. Der Verifikator des
zweiten Felds hat den Befund dann deutlich verschärft.

**VKF-Brandschutzmerkblatt 2001-15 «Solaranlagen».** Beide Destillate der KB `normen` führten
«Unterdachbahnen dürfen aus Baustoffen der RF4 (cr) bestehen». Geltend ist: «Unterdachbahnen
**müssen mindestens aus Baustoffen der RF3 (cr)** bestehen» (Ziff. 3.2.3 Abs. 3). Aus einer
Erlaubnis ist eine Pflicht geworden, und RF4(cr) ist die **günstige Standardbahn** — das ist kein
Registerschönheitsfehler, sondern ein falscher Bauteilwert, der ins Leistungsverzeichnis wandert.

Entscheidend ist die Datierung, die der Verifikator selbst am Original ermittelt hat: Der Delta
stammt **nicht aus der Ausgabe 2022, sondern aus der Ausgabe 01.01.2017**. Er hat die
Zwischenfassung gezogen (12 Seiten, Fussnote «Fassung gemäss Beschluss Technische Kommission VKF
vom 02. Dezember 2016») und den Satz dort bereits wörtlich gefunden. **Der Hausbestand ist damit
seit neun Jahren überholt, nicht seit vier** — und keine der drei beteiligten KBs kannte die
Zwischenfassung. Ein Hinweis darauf lag sogar vor: `normen` hatte das PDF-Metadatum
«ModDate 19.06.2017» notiert und als rein technisch abgetan.

**VKF-Brandschutzrichtlinie 22-15 «Blitzschutzsysteme»** (zweiter Fall, gleiche Wurzel). Beide
Original-PDFs wurden geladen und volltext-diffed. Die Ausgabe 2017 ändert gegenüber 2015 **genau
fünf Dinge**, und darunter ist **genau eine geänderte Zahl in der gesamten Tabelle a–j**: Anhang
zu Ziff. 2, **Zeile c (besonders hohe Bauwerke, Hochhäuser über 30 m), Spalte B von III auf II**.
Da Klasse I die höchste Schutzstufe ist, wurde die Anforderung an den inneren Blitzschutz
**erhöht**. Wer die Hausfassung heranzieht, unterspezifiziert ihn um eine Klasse — ein Fehler mit
Kostenfolge, der im Elektro-LV nicht auffällt.

**Die gemeinsame Ursache, und der eigentliche Ertrag dieses Laufs:** Das JANS-SharePoint-Archiv
hält für beide Publikationen an **beiden** Ablageorten byte-identisch nur die Fassung 2015 — beim
Blitzschutz sogar in einem Ordner namens «Brandschutzrichtlinien 2015-17-22». Solange das so
bleibt, reproduziert **jeder künftige Destillat-Lauf, der brav «Primärquelle SharePoint» liest,
denselben Fehler**. Das ist keine Panne eines Laufs, sondern eine Fehlerquelle mit Wiederholrate.

Daraus ist eine neue Matrix-Zeile geworden: Der Hausbestand ist **kein Gültigkeitsbeleg**,
sondern nur ein Bestandsnachweis; der Abgleich gegen den VKG-Publikationsendpunkt
(`services.vkg.ch` / `services2.vkf.ch`, öffentlich und kostenlos) ist Pflichtschritt, bevor ein
VKF-Destillat `established` wird.

## 3 · Was die Verifikation an den Meldungen korrigiert hat

Die Quote bleibt, wo sie in Run 25 lag: **die Befunde halten, die vorgeschlagenen Auflösungen
nicht.** In diesem Lauf hätten **fünf von zehn** Melder-Auflösungen bei mechanischer Ausführung
Schaden angerichtet. Die vier lehrreichsten:

1. **Falsche Entmaterialisierungs-Richtung.** Der Melder wollte beim Blitzschutz die Tabelle im
   `energie`-Destillat streichen und auf `normen` verweisen lassen — weil `normen` laut Matrix
   führt. Genau das `energie`-Destillat trug aber die **aktuelle** Fassung samt richtigem Wert II.
   Der Fix hätte den einzigen Ort im Hub, der den richtigen Hochhaus-Wert kennt, durch den
   falschen ersetzt. **Führung heisst nicht, dass die schlechtere Datenlage gewinnt:** formell
   bleibt `normen` führend, inhaltlich musste `normen` auf den Stand von `energie` gehoben werden.

2. **Kopieren statt Gegenlesen hätte eine Lücke eingefroren.** Bei der VKF-FAQ 2005-01 (Lithium)
   sollte die `energie`-Fassung nach `normen` übertragen werden. Der Verifikator hat die FAQ am
   Original geladen und in der `energie`-Fassung **zwei Lücken** gefunden: das komplette
   Lüftungs-Bullet (feuerwiderstandsfähige Trennung, Brandschutzklappen mit Kanalrauchmelder —
   die kostenrelevanteste Einzelanforderung der FAQ) und eine Verkürzung, die die **grössere** der
   beiden Lockerungen unsichtbar machte. Der Übertrag hätte beide Lücken in die führende KB
   getragen und dort verifiziert aussehend eingefroren.

3. **Ein Präzedenzfall wurde falsch zitiert.** Der Melder berief sich auf die SIA-493-Auflösung
   aus Run 25 als Beleg für «wechselseitig verlinken». Die etablierte gerade das Gegenteil: die
   führende KB zieht nach, die anderen verweisen; symmetrische Verlinkung wäre ein Matrix-Verstoss.

4. **Ein toter Link wäre entstanden.** Beim Wärmepumpen-Querverweis hätte der vorgeschlagene
   blanke Wikilink in `baurecht/wiki` auf eine dort nicht existierende Datei gezeigt — der
   nächste `wissenscheck` hätte ihn als neuen Mangel gemeldet. Die Hausform für diesen Bezug
   (Backtick-Pfadstring im Querbezug-Block) stand im selben Artikel 14 Zeilen weiter oben.

## 4 · Die beiden gedämpften Befunde — zweimal hat die Verifikation einen Eingriff verhindert

**Der Wüest-Faktor 0.70 war kein Widerspruch.** Run 25 hatte in zwei Registern festgehalten, die
Wüest-Referenz führe «einen Regelgeschoss-Faktor 0.70 unkommentiert» und der kanonische Entscheid
vom 12.07.2026 habe damit «einen Abnehmer nie erreicht». Der Verifikator hat die Primärquelle
gelesen (Wüest-Academy-Folie S. 34): Das 0.70 ist die **Effizienzannahme der Quelle selbst**
innerhalb ihrer eigenen Herleitung («2'800 / 0.70 HNF Effizienz = CHF 4'000 /m2 HNF»), kein von
JANS angewandter Faktor. Und die Stelle rechnet einen **Ganzgebäude**-Benchmark um, nicht ein
Regelgeschoss — sie ist gar kein Abnehmer dieses Entscheids. Ändern hiesse das Zitat verfälschen
und die Konvergenz der drei Herleitungen der Quelle auf rund 4'800 (Folien S. 33/34/35) zerstören.
Auch die Richtung stimmte nicht: der «korrigierte» Wert wäre nicht 3'733, sondern 4'301 bis 4'590
gewesen — also **höher**, nicht tiefer. Die Run-25-Wertung ist in beiden Registern richtiggestellt.

**Der eigentliche Abnehmer lag eine Tabelle weiter.** Beim Umsetzen ist er aufgetaucht: **Zeile 96**
derselben Referenz, in der Tabelle «4. JANS-Richtwerte», führt «Umrechnung | HNF ≈ 0.70 × GF» —
ausdrücklich als **JANS-Richtwert** deklariert und **ohne Bezugsgrösse**. Die Tabelle enthält
Ganzgebäude-Richtwerte; dort wäre nach dem kanonischen Entscheid 0.60–0.61 einschlägig, nach dem
eigenen Datensatz 0.65. Die Zahl wurde **nicht** geändert (sie hängt am offenen Fachentscheid),
gesetzt ist ein Vorbehaltsblock. Der Fachentscheid gewinnt damit eine zweite, kostenwirksame
Facette (siehe Abschnitt 7).

**Die Beleuchtungs-Lücke war nicht die, die gemeldet wurde.** Gemeldet war eine gemeinsame
Bring-Schuld von `bauprodukte` und `energie`. Tatsächlich sind es zwei verschiedene Dinge:
`energie` braucht raumbezogene Bemessungswerte (E_m, UGR, W/m²), `bauprodukte` Lampen- und
Leuchtenkennwerte (lm/W, Ra, Farbtemperatur, BKP 233) — und ein Herstellerratgeber ist für
EN-Normwerte ohnehin keine zulässige Quelle. Der schwerere Defekt am selben Ort war ein anderer:
**E-122-6 war seit dem 03.08.2026 überholt** und schickte den Leser an einer vorhandenen Datei
vorbei. Run 24 hatte festgestellt, dass die EN-12464-1-Übersichtstabelle im Bestand liegt und mit
Zahlenwerten destilliert ist — und hatte das in den Artikel geschrieben, **aber nie ins Register**.
Das ist das bekannte Muster «Übergabe verpufft im abgebenden KB», hier in der Variante
**«Korrektur verpufft im Register»**. Der Eintrag bleibt trotzdem offen: der vorhandene Auszug
gibt den Stand vor EN 12464-1:2011 / SIA 2024:2006 wieder. Was offen ist, ist enger als bisher
formuliert — nicht «Zahlen überhaupt», sondern die geltende Ausgabe.

## 5 · Weitere bestätigte Befunde

**Ein erfundener Beleg in `energie`.** Das Destillat `brandschutz-lueftung-schnittstelle` schrieb
SIA 2023 den Titel «Lüftungs- und Klimaanlagen — Allgemeine Grundlagen und Anforderungen» zu — der
gehört zu SIA 382/1. Der Verifikator hat den Foliensatz selbst extrahiert: **er nennt für SIA 2023
gar keinen Titel.** Der Titel wurde also beim Destillieren hinzugefügt, nicht aus der Quelle geerbt
— ein erfundener Beleg, die schwerere Variante. Praktisch wichtiger als der Titeldreher ist aber
die Aktualität: das Merkblatt SIA 2023 «Lüftung in Wohnbauten» ist **seit 1.5.2021 zurückgezogen**
und durch die Norm SIA 382/5:2021 ersetzt — belegt in derselben KB, zwei Destillate weiter. Die
bisherige Weisung «aktuelle SIA-Norm 2023 vor Verwendung prüfen» schickte den Leser eine Norm
suchen, die es nicht mehr gibt. Ein dritter Punkt wurde ausdrücklich **nicht** korrigiert: die
Folien-Zuschreibung «Anhang F» ist am Bestand nicht belegbar (dort steht die Publikationsliste),
stammt aber aus der Quelle — sie ist als Attributionsfehler markiert und offen gelassen, statt auf
eine plausibel aussehende Ziffer umgeschrieben zu werden.

**Verbindlichkeitsgrad statt Zahlenwert.** Die VKF-FAQ 2005-01 senkt für LFP-Heimspeicher (rund
80 % des Schweizer Markts) die Anforderung von EI 60 auf EI 30. Die FAQ bezeichnet sich aber
selbst als «einen möglichen Lösungsansatz» und trägt die Fusszeile «Erläuterung / Interpretation».
«EI 30 genügt» darf deshalb **nicht als geltende Vorgabe ins LV** — die bisherige Formulierung
«rechtlich nicht zwingend» lud genau dazu ein. Der Vorbehalt ist an drei Stellen gesetzt,
einschliesslich der Bauherren-FAQ.

**ecoBKP 2026 gegen die Zeiger von gestern.** Run 25 hatte die eco-BKP-Achse erstmals verlinkt —
auf den Stand **2008**, mit ausdrücklichem Datierungsvorbehalt. Einen Tag später lag die Ausgabe
**2026** destilliert im Hub. Die Zeiger sind nachgeführt, aber **positionsweise geprüft statt
pauschal gehoben**: BKP 214/215 und 225 bekommen den 2026er-Zeiger, **BKP 271 und 281 bewusst
nicht** (ecoBKP 271/281 sind nicht destilliert — ein Zeiger dorthin wäre ein Sachbezugsfehler
gewesen). Den stärksten Treffer hatte der Melder selbst übersehen: **BKP 224 Dachbegrünung**, wo
ein bestehender `bauprodukte`-Artikel einen vollständigen 2026er-Gegenpart hat. Und der Satz «zu
den Brandschutzbekleidungen BKP 225.4 trägt der eco-Bestand nichts bei» bleibt wörtlich stehen —
am Original nachgeprüft gilt er für 2026 unverändert.

## 6 · ⚠ TERMINKRITISCH — Thalwil, Eingabe morgen (06.08.2026)

**Der Punkt aus Run 25 steht unverändert, und die Meldekette hat versagt.** Ziffer 4.5 des
versandbereiten Begleitbeschriebs Bohlweg 3 trägt weiterhin den am 04.08. als falsch
festgestellten Satz zu Art. 45 revBZO. Selbst nachgeprüft (nicht nur über den Agenten): der Satz
steht in **vier** Dateien — md/docx/pdf im Deliverable-Ordner 260806 **und** in der Versandkopie
im Korrespondenzordner; dazu unarchiviert im Zwischenstand 260731.

**Warum er noch steht:** Run 25 hat ihn im Laufbericht prominent markiert und darauf vertraut,
dass das Tagesbriefing ihn aufnimmt. Das Hub-Chef-Briefing vom 05.08. (08:39) führt ihn **nicht**.
Ein Bericht ist kein Meldekanal. Deshalb steht der Punkt jetzt in `logbuch/fristen.md`, als
datierter Nachtrag an der bestehenden Begleitbeschrieb-Zeile — dort liest ihn der Radar um 06:55,
also vor dem Versand.

**Was inhaltlich falsch ist** (am Erlasstext nachgelesen, zwei unabhängige Prüfungen):
Art. 45 revBZO enthält keine 50-m²-Regel — die Zahl steht ausschliesslich in der Bemerkungsspalte
des Planungsbüros, die laut Frontmatter der Rohdatei kein Rechtstext ist. Und Art. 45 revBZO
**wirkt gar nicht vor**: er ist in der massgebenden Fassung vom 05.09.2025 nicht grau hinterlegt.
Der Schlusssatz «nach alter und neuer Ordnung eingehalten» behauptet also Konformität mit einem
Massstab, der keiner ist. Zitiert ist zudem die falsche Synopsen-Fassung (16.04.2025 statt
05.09.2025).

**Und ein Punkt, der ohne diesen Lauf durchgegangen wäre:** Der in Run 25 vorbereitete
Ersatztext verortet beide Bauten in **§ 2a Abs. 1 ABV**. Abs. 1 gilt nur für **Kleinbauten**, also
freistehende Gebäude. Der Veloraum ist nach **Zeile 37 desselben Dokuments** «an den Hauptbau
angebaut» und fällt damit unter **Abs. 2** (Anbauten). Wer den vorbereiteten Text übernimmt,
tauscht ein falsches Zitat gegen ein zweites — diesmal eines, das die Behörde am eigenen Dokument
widerlegen kann. Am Erlasstext bestätigt: § 2a Abs. 1 ABV «Kleinbauten sind freistehende Gebäude
mit einer Grundfläche von höchstens 50 m²», Abs. 2 «Anbauten sind mit einem anderen Gebäude
zusammengebaute Gebäude mit einer Grundfläche von höchstens 50 m²».

**Die Flächenwerte sind richtig und bleiben unberührt** (45.8 m² zulässig, 34.0 m² = 5.2 %,
nachgerechnet). Die Schwere ist gegenüber der Meldung **gedämpft**: eine unzulässige positive
Vorwirkung liegt nicht vor, weil das geltende Recht erfüllt ist und das Projekt aus Art. 45 revBZO
nichts ableitet. Der reale Schaden ist ein nachprüfbar falsches Erlasszitat gegenüber genau der
Behörde, die die Synopse selbst herausgegeben hat — in einem Dokument, dessen Stärke sonst die
präzise Fundstellenarbeit ist.

**Fertige Ersetzung für Ziffer 4.5** (Zahlen unverändert, beide ABV-Absätze genannt, Art. 45
revBZO als ausdrücklich nicht massgebend ausgewiesen statt ersatzlos gestrichen — letzteres, weil
die Einleitung und die Begleitmail zusagen, die Nachweise seien durchgehend auf die revBZO geführt):

> **4.5 Besondere Gebäude / Klein- und Anbauten (Art. 24 Abs. 1 BZO; § 2a ABV).** Der in der
> Vorkorrespondenz verlangte Nachweis wurde überarbeitet (Plan S-64). Nach Art. 24 Abs. 1 BZO
> dürfen besondere Gebäude gesamthaft höchstens 7 % der massgeblichen Grundfläche bedecken:
> zulässig sind 45.8 m², beansprucht werden 34.0 m² entsprechend 5.2 % (Veloraum 26.19 m²,
> Gartenschopf 7.82 m²). Die Qualifikation der beiden Bauten richtet sich nach kantonalem Recht:
> § 2a ABV begrenzt die Grundfläche von Kleinbauten (Abs. 1, freistehend) wie von Anbauten
> (Abs. 2, mit einem anderen Gebäude zusammengebaut) auf höchstens 50 m²; mit 26.19 m²
> beziehungsweise 7.82 m² liegen beide deutlich darunter. Art. 45 revBZO ist nicht Prüfmassstab:
> er gehört gemäss der Synopse zur negativen Vorwirkung vom 5. September 2025 nicht zu den grau
> hinterlegten und damit vorwirkenden Bestimmungen. Die Vorgabe ist eingehalten.

**Claude hat das Dokument nicht geändert.** Es ist ein ausgehendes Erzeugnis an eine Behörde;
Freigabe und Versand bleiben bei Raphael. Nach der Ersetzung sind docx und pdf neu zu bauen und
**die Versandkopie im Korrespondenzordner zu überschreiben** — wird sie vergessen, geht die
falsche Fassung raus, obwohl das Deliverable korrigiert ist. Der überholte Zwischenstand-Ordner
260731 gehört ins `_Archiv/`.

## 7 · Offene Entscheide für Raphael

1. **Teuerungsanker und Regelgeschoss-Faktor (Ticket T-Regelgeschoss, aus Run 25, jetzt
   geschärft).** Neben der bekannten Frage 0.70 gegen 0.75 fürs Regelgeschoss ist zu entscheiden,
   **welcher Faktor in der JANS-Richtwert-Tabelle der Wüest-Referenz steht und mit welcher
   Bezugsgrösse er beschriftet wird** (Zeile 96, heute ohne Bezugsgrösse). Für ein ganzes Gebäude
   wäre nach dem eigenen kanonischen Entscheid 0.60–0.61 einschlägig, nach dem eigenen Datensatz
   0.65 — 0.70 ist dort voraussichtlich zu hoch. Die Zahl wurde nicht angetastet, nur ein
   Vorbehalt gesetzt.
2. **Beschaffung des VKF-Merkblatts 2001-15 in der geltenden Fassung 01.01.2022 und Ablage im
   SharePoint-Bestand**, dazu die BRL 22-15 in der Fassung 01.01.2017 — beide öffentlich und
   kostenlos, URLs und Prüfsummen stehen in den Bring-Schuld-Einträgen. Solange nur die
   2015er-Fassungen abgelegt sind, erzeugt jeder künftige Lauf denselben Fehler neu. Die
   2015er-PDFs bleiben liegen (Nachweiswert), sind aber als überholt zu kennzeichnen.
3. **Duplikat-Frage `vkf-brm-2001-15-solaranlagen` gegen `vkf-merkblatt-2001-15-solaranlagen`**
   bleibt parkiert wie bisher — ein Merge ist destruktiv und braucht die Einzelfreigabe. Beide
   sind in diesem Lauf gleichlautend markiert worden.

## 7b · Ausgeführte Aktionen

Vier Ausführungs-Agenten mit strikt disjunkten Dateimengen, danach eigene Nachkontrolle.

| KB / Ort | Was gesetzt wurde |
|---|---|
| `normen` | Fassungswarnung, Delta-Block und **zweiwertige Vermerke** in beiden Solaranlagen-Destillaten und in der BRL 22-15; FAQ-2005-01-Abschnitt aus dem Original samt Verbindlichkeitsvorbehalt; `ausgabe_ueberholt` in beiden SIA-2023-Destillaten; INDEX, REGISTER, QUESTIONS (Bring-Schuld mit URL, Seitenzahl, MD5), norm-inventar |
| `energie` | erfundener SIA-2023-Titel korrigiert und Rückzug per 1.5.2021 nachgeführt; zwei inhaltliche Lücken im Lithium-Destillat geschlossen; Verbindlichkeitsvorbehalt in Destillat und Bauherren-FAQ; Belegpflege am Blitzschutz-PV-Destillat; Archiv-Falle dokumentiert; E-122-6 qualifiziert; neuer Eintrag E-R26-1; zwei ecoBKP-Anschlusspunkte; INDEX |
| `bauprodukte` | vier additive Nachträge in QUESTIONS (BKP 224 Zeiger, BKP 281 negativ, BKP 214/215/225 aufgeteilt, ERCO-Abgrenzung), Lesefortschritt am Artikel gemessen nachgezogen |
| `baurecht` | Querbezug-Block zu den Wärmepumpen-Aussengeräten in Backtick-Pfadform, mit ZH-Reichweite, SZ-Regel und Subsumtionsvorbehalt |
| `planungsgrundlagen` | Kopfnotiz auf den geklärten Stand gehoben — die eigene Meldung ist am VKF-Original bestätigt und gilt bereits seit 2017 |
| `immobilienbewertung` + Skill-Referenz | Run-25-Wertung richtiggestellt (beide Register ergänzt, nichts überschrieben), Belegvermerk zum Quellen-Faktor 0.70, Vorbehaltsblock an der JANS-Richtwert-Zeile |
| `koordination` | 6 Paar-Einträge, 2 Matrix-Zeilen, CHANGELOG |
| `logbuch/fristen.md` | datierter Nachtrag an der Begleitbeschrieb-Zeile 2414 Thalwil |

**Bewusst nicht ausgeführt:** kein neues 2022er-Destillat der VKF 2001-15 (das ist ein eigener
Lesevorgang am Original, als Bring-Schuld angemeldet); kein Merge der beiden Solaranlagen-Destillate
(destruktiv, Einzelfreigabe); keine Änderung am Thalwiler Deliverable (ausgehendes Erzeugnis);
keine Änderung an `energie/wiki/oekologische-materialvorgaben-beschaffung.md` (KB-interner Defekt,
als E-R26-1 registriert und dem nächsten energie-Lauf überlassen).

**Der Skill-Layer ist nicht betroffen:** `grep` über `skills/` nach RF4(cr) im Unterdach-Kontext
liefert null Treffer — die Korrektur bleibt auf die Wissensbasen begrenzt.

## 7c · Zwei Befunde, die erst beim Umsetzen auftauchten

Beide stammen von den Ausführenden, nicht von den Meldern — und beide sind Belege dafür, dass ein
Ausführender messen und nicht bloss abschreiben muss.

- **`normen` kannte den Blitzschutz-Delta seit dem 13.07.2026.** Das Destillat
  `vkf-brl-aenderungen-2017.md` führt Zeile c (III → II) und die Umbenennung SEV-Leitsätze 4022 →
  SNR 464022 seit drei Wochen. Die beiden Destillate waren nur nie verlinkt — wer allein
  `vkf-brl-22-15-blitzschutzsysteme.md` las, sah die Verschärfung nicht. Das ist das
  Verpuff-Muster **innerhalb** einer KB, eine Blindheit, die kein einzelner Loop sieht. Backlink
  gesetzt.
- **Der ERCO-Lesestand war auch in der Vorlage falsch.** Die Verifikation hatte 73 Seiten gemessen,
  das Register führte 53. Beim Ausführen stand der Artikel bereits bei **95** (die Nachtschicht war
  dazwischengelaufen). Der Ausführende hat am Frontmatter gemessen statt die Vorlage zu übernehmen —
  mit dem Vorlagenwert hätte der nächste Lauf S. 74–95 doppelt gelesen.

## 8 · Was dieser Lauf über das Verfahren gelernt hat

- **Ein Laufbericht ist kein Meldekanal.** Der terminkritische Punkt aus Run 25 war korrekt
  gefunden, korrekt verifiziert und prominent markiert — und ist trotzdem nicht angekommen. Wer
  eine Frist meldet, schreibt sie ins Fristen-Register, nicht nur in seinen eigenen Bericht.
- **Der Hausbestand ist kein Gültigkeitsbeleg.** Zwei Publikationen, dieselbe Wurzel, in einem
  Fall in einem Ordner, dessen Name die neueren Fassungen bereits verspricht.
- **Ein Metadatum ist ein Signal.** Das «ModDate 19.06.2017» stand seit Wochen im Destillat und
  wurde als technisch abgetan. Es war der Fingerabdruck der übersehenen Zwischenfassung.
- **Führung heisst Zuständigkeit, nicht Vorrang der Datenlage.** Zweimal in diesem Lauf hätte die
  mechanische Anwendung der Matrix den besseren Stand durch den schlechteren ersetzt.
- **Eine Korrektur, die nur in den Artikel geschrieben wird, verpufft im Register.** Neue Variante
  eines bereits bekannten Musters — und diesmal war es die eigene Korrektur aus Run 24.
- **Dasselbe Muster gibt es innerhalb einer KB.** `normen` besass den Blitzschutz-Delta seit drei
  Wochen in einem zweiten Destillat und wusste es nicht. Bisher hat der Cross-KB-Lauf nur zwischen
  KBs gesucht; hier lag der Fund im Inneren einer einzigen.
- **Ein Ausführender muss messen, nicht abschreiben.** Zwei der Vorlagen dieses Laufs waren beim
  Ausführen bereits überholt (ERCO-Seitenstand, ein Backlink auf eine Datei, die bewusst nicht
  angelegt wurde). Beide Male hat die Gegenmessung den Fehler abgefangen — hätte der Ausführende
  die Anweisung wörtlich genommen, wäre je ein neuer Mangel entstanden.

## 9 · Meldung

Keine eigene Mail (Rule 260803, Ein-Mail-Prinzip). Für das Tagesbriefing markiert:
**⚠ terminkritisch, Abschnitt 6** — Ziffer 4.5 des Begleitbeschriebs 2414 Thalwil, Eingabe
06.08.2026, fertige Ersetzung liegt vor, Freigabe Raphael ausstehend. Zusätzlich als datierter
Nachtrag in `logbuch/fristen.md` eingetragen, weil der Berichtsweg in Run 25 nicht getragen hat.
