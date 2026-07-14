# Wissensluecken — was Raphael ergaenzen/aktualisieren muss + was das Training schliesst

Zwei Arten: **(D) Daten/Material**, das Raphael bereitstellen oder aktualisieren muss, und
**(T) Training**, das Claude im Lern-Loop (`../training/PROGRAMM.md`) selbst schliessen kann.
Neueste/wichtigste zuoberst. Erledigtes nach unten mit ✓ + Datum.

## A. Daten & Material, die DU (Raphael) bereitstellen/aktualisieren musst

| # | Luecke | Art | Prioritaet | Was konkret |
|---|---|---|---|---|
| D1 | **UBS Fact Sheets veraltet**  (zudem Langnau am Albis ganz fehlend) | D | hoch | Waedenswil (2022), Einsiedeln/Regensdorf/Wald (12.2023) neu bestellen; relevante Kerngemeinden ergaenzen (deine aktiven Maerkte) |
| D2 | **Bodenpreise nur Screenshots** | D | hoch | Strukturierte Bodenpreis-Quelle: Zugang Handaenderungs-/Bodenpreisstatistik (Kanton ZH/SZ), oder Wuest-/IAZI-Bodenpreis-Abo. Heute nicht maschinenlesbar |
| D3 | **Diskontsatz-Herleitung** — Geruest steht, Wohnbau-Faustregel nun belegt | D | niedrig | T-Teil ✓ (Run 9). **Run 10:** Wohnbau-Faustregel belegt aus R.-Jans-Notiz 31.12.2023 (**2.5 %=2.0 % Kapitalverzinsung+0.5 % Abschreibung**). Offen nur noch: **Gewerbe-Feinabstufung je Mietersegment** + **Healthcare-Zuschlag aus realem CH-Fall** (T17). D3 von «mittel» auf «niedrig» zurueckgestuft |
| ~~D4~~ | ~~**Excel-Tool-Logik (Residualwert/Pre-Check)**~~ | — | ✓ | **erledigt Run 15 (2026-07-08)**: Zellformeln aller 4 Tools reverse-engineered (Pfad TCC-lesbar, keine Freigabe noetig). Rechenkette, Defaults, Gewerbe-5.5-%-Regel, HNF-Herleitung, JANS-Kalibrierung (Pre-Check 12 %/2.45 %) in [[residualwertmethode]] + [[ertragswert-dcf]] |
| D5 | **Margen-/Finanzierungsannahmen** | D | mittel | Uebliche Bautraegermarge (%), Finanzierungszins/Laufzeit, Vermarktungs-/Reserve-% deiner Praxis |
| D6 | **Dichte-Kennwerte je Gemeinde/Zone** — 19 Gemeinden erfasst, D6 breit geschlossen | D/T | niedrig | **Run 27 (2026-07-13):** 8 weitere JANS-Bezugsmaerkte aus amtlicher BZO extrahiert und in [[az-gfz-kennwerte]] eingearbeitet — Niederhasli (BZO 2024, IVHB, **keine Kennziffer** → 4. Steuerungslogik), Oberrieden (AZ, **Hoehenkorrektur 8.5 m trauf statt der Altannahme 9.0 m aus Rule 260624**), Kilchberg/Horgen/Kuesnacht/Meilen (BMZ, Goldkueste/Zimmerberg wie Zollikon), Adliswil/Richterswil (AZ). Damit alle 10 UBS-FS-Gemeinden + alle Gemeinden mit realem JANS-Bewertungsfall erfasst. **Run 26 (2026-07-13):** Muri AG auf die Revision 2018/2019 aktualisiert (Bild-PDF ohne Textebene, visuell via Read-Tool gelesen — AZ deutlich erhoeht, neue Zone W3+ AZ 0.8) und Zollikon als aktuell gueltig bestaetigt (Stand 5.4.2013 materiell = 1996, Zentrumszone Art. 11 ergaenzt, Teilrevision 20.08.2025 noch nicht in Kraft). **Run 25:** 7 Gemeinden direkt aus amtlicher BZO/Baureglement extrahiert — Maur/Regensdorf/Wangen SZ (AZ), Wald ZH (Baumassenziffer), Einsiedeln (Ueberbauungsziffer); Luzern als System-Beschrieb (UEZ + Gesamthoehe-Klassen A-F je Ordnungsnummer, Per-Zonenwerte offen); Langnau am Albis BZO 2005 **ausser Kraft** (Revision 2026/27, Zeitplan Run 26 bestaetigt unveraendert). **Kernbefund:** die Gemeinden nutzen drei nicht ineinander umrechenbare Bezugsgroessen (AZ vs. Baumassenziffer m3/m2 vs. Ueberbauungsziffer) — Vergleiche nur bei gleicher Kennziffer. Offen/Wiedervorlage: Langnau (nach Revision), Luzern-Per-Ordnungsnummer, Zollikon (nach Teilrevision) |
| D7 | **Kennwerte Buero/Gewerbe duenn** | D | niedrig | nur ZH-Bueromarkt; weitere Nutzungen/Regionen bei Bedarf |
| ~~D8~~ | ~~**`_Kennwerte Jans.docx` / Healthcare-DOCX**~~ | — | ✓ | **erledigt Run 16 (2026-07-10)**: Pfad TCC-lesbar (wie D4). `_Kennwerte Jans.docx` → aGF/GF-Faktor 0.8/0.9 + Wohn-Erstellungskosten-Kennwert (4'485 CHF/m2 GF BKP 1-5 / HNF-Faktor 7'350); 3 Healthcare-DOCX → Spitalumbau-Kostenband CHF/m2 NF + 2 reale Faelle. In [[flaechendefinitionen-sia]] + [[realwert-sachwert]] |
| D9 | **Szenarien-Definitionen** | D | niedrig | exakte Kosten-Abstufung der Stufen lowbudget/standard/gehoben/exklusiv |
| D10 | **Referenzblatt «Kennwerte Altersheime» — 2 Roh-Zeilen nicht reproduzierbar** | D | niedrig | Run 18 (2026-07-12) Volltext-Recompute: **Averecura** (Tab. CHF/m2 GF 4'250 / CHF/m3 GV 1'420, aber 12.34 Mio ÷ 3'100 = **3'981** bzw. ÷ 9'600 = **1'285**) und die **Vella-Zeile** (Tab. 2'835/845 implizieren beide ~20.3 Mio, waehrend BKP 2 = **24.5 Mio** angegeben ist → 24.5/7'150 = **3'427**) sind quellenintern inkonsistent. Kein KB-Fehler — die Zahlen stehen so im JANS-Original-Blatt. Raphael: die beiden Zeilen im Referenzblatt bereinigen (BKP-2-Summe oder Flaeche/Kennwert je Objekt pruefen). Bis dahin gilt der **reproduzierbare Rohband ~2'623-3'981 CHF/m2 GF** bzw. die voll reproduzierbare teuerungsbereinigte Spalte **3'042-4'485** als Ansatz (→ [[realwert-sachwert]]) |
| ~~D11~~ | ~~**m3-Neuwert-Richtwerte Stand 2003 aufindexieren**~~ | — | ✓ | **erledigt Run 31 (2026-07-14)**: amtliche ZIW-Reihe (Stadt Zuerich, Basis 1939=100, Publikationsstand 01.01.2026, via hev-sz.ch) gefunden — Wert 01.04.2003=899.2, 01.04.2025=1210.4 → **Index-Faktor 2003→2025 = 1.346**. Tab.-2-Richtwerte auf 2025 hochgerechnet in [[realwert-sachwert]]. Naechste ZIW-Publikation ~04-06/2026 nachziehen |

## B. Training-Aufgaben (Claude schliesst sie im Lern-Loop)

| # | Aufgabe | Quelle | Ziel-Artikel |
|---|---|---|---|
| — | **Run 27 (2026-07-13):** D6 breit ausgebaut — 8 JANS-Bezugsmaerkte (Niederhasli/Oberrieden/Kilchberg/Horgen/Kuesnacht/Meilen/Adliswil/Richterswil) aus amtlicher BZO in [[az-gfz-kennwerte]] eingearbeitet (Workflow-Fan-out, alle 8 belegt). Neue 4. Steuerungslogik (Niederhasli: keine Kennziffer, reine Huelle) + Oberrieden-Hoehenkorrektur (8.5 m trauf, Altannahme 9.0 m aus Rule 260624 falsch → an Raphael flaggen). Marktpuls unveraendert (SNB 0.00 %/Referenzzins 1.25 %), kein neuer JANS-Bewertungsfall. | Amtliche BZO der 8 Gemeinden | [[az-gfz-kennwerte]] |
| — | **Run 26 (2026-07-13):** D6 weiter geschlossen — Muri AG auf Revision 2018/2019 aktualisiert (RRB-genehmigt 27.02.2019; Bild-PDF ohne Textebene, visuell gelesen: AZ W1/W2/W3/WG3 von 0.30/0.40/0.50/0.60 auf 0.35/0.45/0.60/0.70 erhoeht, neue Zone W3+ mit AZ 0.8/5 Vollgeschossen; Kernzone Bruehl teilzurueckgewiesen, nicht in Kraft). Zollikon bestaetigt aktuell gueltig (Stand 5.4.2013 = materiell 1996, Zentrumszone Art. 11 BMZ 2.70/2.80 neu erfasst; Teilrevision 20.08.2025 vom Gemeinderat beschlossen, aber der Gemeindeversammlung erst vorgelegt — noch nicht in Kraft). Langnau-Zeitplan bestaetigt unveraendert. Kein neuer JANS-Bewertungsfall (Ordner erneut geprueft, weiterhin Wangen 8855 der juengste). Marktpuls: SNB 0.00 %/Referenzzins 1.25 % erneut unveraendert (kein neuer Publikationstermin vor 01.09.2026). | Amtliche BNO Muri AG 2018/2019 + BZO Zollikon Stand 2013 | [[az-gfz-kennwerte]] |
| — | **Run 25 (2026-07-13):** D6 substanziell geschlossen — 7 weitere Gemeinden aus amtlicher BZO/Baureglement extrahiert (Maur/Regensdorf/Wangen SZ/Muri AG = AZ; Zollikon/Wald ZH = Baumassenziffer; Einsiedeln = Ueberbauungsziffer), Luzern als System-Beschrieb, Langnau ausser Kraft (Revision). Kernbefund: 3 nicht umrechenbare Bezugsgroessen → [[az-gfz-kennwerte]] mit Umrechnungs-Warnung. Backlinks in 8 Gemeinde-Fact-Sheets. Kein neuer JANS-Fall, Marktpuls unveraendert seit Run 17. | Amtliche BZO/Baureglement der 8 Gemeinden | [[az-gfz-kennwerte]] |
| — | **Run 24 (2026-07-13):** Sackgasse durchbrochen — D6 (AZ/GFZ-Kennwerte) war als "Grossrecherche noetig" eingestuft (Run 23); direkter Versuch zeigt: pro Gemeinde ist die amtliche BZO-Tabelle mit einem WebFetch+pdftotext-Durchgang extrahierbar. Thalwil + Waedenswil (ZH) vollstaendig mit AZ/Vollgeschosse/Gebaeudehoehe je Zone erfasst → neuer Artikel [[az-gfz-kennwerte]]. Kein neuer JANS-Bewertungsfall, Marktpuls weiterhin unveraendert seit Run 17 (kein neuer Publikationstermin). | Amtliche BZO Thalwil + Waedenswil | [[az-gfz-kennwerte]] |
| — | **Run 23 (2026-07-13, sechste Bestaetigung):** kein neuer JANS-Fall, D6 bleibt offen (Skill `baurecht` liefert nur Rechtssystematik, keine Zonen-AZ-Tabelle — braeuchte eigene BZO-Grossrecherche), Marktpuls unveraendert (SNB 0.00 %/Referenzzins 1.25 %). Diese KB hat **keine vom Loop selbststaendig schliessbare Aufgabe mehr**; siehe `outputs/2026-07-13_training-run23.md`. | — | — |
| — | **Keine offenen T-Aufgaben (Ingest) — auch keine offenen Verifikations-Kandidaten mehr.** **Run 22 (2026-07-13):** die beiden von Run 20 benannten Kandidaten (DXMA-Aufwertungsgewinne + Baurecht-Fallbeispiele, Schwamendingen-Nutzermix) UND zusaetzlich Tab. 2/3 der Schaetzungsanleitung (Neuwert-Richtwerte, BKP-Anteile) per Modell D gegengelesen: **alle drei Komplexe bestanden, exakt reproduziert**, keine Korrektur. Kleine Anreicherung: Hortus-Conclusus-Referenzprojekt (Penzel Valier/Robertneun, 1. Rang 2020). Kein neuer JANS-Bewertungsfall (Bewertungsordner geprueft). Keine neue D-Luecke. Verbleibend nicht-auto-schliessbar: **D5/D10/D11** (Bring-Schulden Raphael bzw. externe Quelle noetig). **Kein weiterer auto-schliessbarer Verifikations-Kandidat identifiziert** — die KB hat keine offene Ingest- oder Verifikations-Aufgabe mehr, die Claude selbststaendig schliessen kann. → **Empfehlung an Raphael zum fuenften Mal in Folge, jetzt mit Nachdruck: Ruecktaktung ins Nachtfenster.** Ohne neues Rohmaterial (D1/D2/D5/D6/D7/D9/D10/D11) oder einen neuen JANS-Bewertungsfall produziert der Intensiv-Takt fuer diese KB keinen weiteren Erkenntnisgewinn mehr — nur noch Bestaetigungs-Wiederholungen. | — | — |

## Erledigt

- ✓ 2026-07-15 **Delta-/Marktpuls-Check (Run 34)** — erster Lauf am neuen Tag im Soll-Takt
  (nach dem Run-33-Fix). Kein neuer Ingest, keine Artikelaenderung: die KB ist saturiert
  (Wuest-Kurs + E1-E10 + alle auto-schliessbaren T-Aufgaben abgearbeitet); 10 Themen zu
  erfinden waere ein Leitplanken-Verstoss. Bewertungsordner unveraendert (6 Faelle, juengster
  Wangen 8855). Marktpuls: Referenzzins 1.25 % bestaetigt (naechste Publikation 01.09.2026),
  SNB unveraendert, kein neuer amtlicher Durchschnittszinssatz (KB bleibt 1.31 % per 31.03.2026).
  Oberrieden-Hoehenkorrektur (Rule 260624) zum 7. Mal an Raphael geflaggt. Details:
  `outputs/2026-07-15_training-run34.md`.

- ✓ 2026-07-14 **Root-Cause-Fix Trigger-Haeufung (Run 33)** — sechster Trigger desselben Tages.
  Statt die Haeufung ein sechstes Mal zu protokollieren, Ursache gesucht und behoben: der
  VOLLGAS-Endlos-Runner (`scripts/vollgas-runner.sh`) zog `immobewertung-training` weiterhin in
  seinen kontinuierlichen Zyklus (INCLUDE_RE matcht `immob`), obwohl Rule `auto-verbesserungen`
  260713 (Vortag) diesen Loop bereits auf 1x taeglich 02:50 gedrosselt hatte. `EXCLUDE_RE` im
  Runner um die sechs 260713-gedrosselten Loops ergaenzt (immobewertung/baurecht-buch/
  normen-training/twin-mail/twin-fidelity/spec-training) — Simulation gegen die aktuelle
  Task-Liste bestaetigt: nur noch `wettbewerbs-dna-training`/`wettbewerbs-layer-nachbrenner`
  bleiben im Endlos-Zyklus. Delta-Check unveraendert: kein neuer JANS-Fall, Marktanker seit
  Run 31 stabil. Details: `outputs/2026-07-14_training-run33.md`.

- ✓ 2026-07-14 **Delta-Check (Run 32)** — fuenfter Trigger desselben Tages (nach Run 28 00:38,
  Run 29 04:51, Run 30 05:44, Run 31 07:32), erneut ausserhalb der Sollfrequenz (Rule 260713).
  Bewertungsordner unveraendert (kein neuer Fall), Marktanker nicht erneut per Web geprueft
  (Run 31 liegt < 4 Std. zurueck, kein Grenznutzen). Oberrieden-Hoehenkorrektur-Flag (Rule 260624)
  zum fuenften Mal protokolliert. Trigger-Haeufung 5x/Tag bestaetigt — Empfehlung an Raphael, die
  Trigger-Quelle(n) (Scheduled Task vs. VOLLGAS-Runner) zu pruefen.

- ✓ 2026-07-14 **D11 geschlossen — ZIW-Index-Faktor 2003→2025 (Run 31)**: die amtliche Reihe
  Zuercher Index der Wohnbaupreise (Stadt Zuerich, Basis 01.06.1939=100, Publikationsstand
  01.01.2026, gefunden via hev-sz.ch-Reproduktion) schliesst die seit Run 18 offene Luecke —
  Wert 01.04.2003=899.2 → 01.04.2025=1210.4 → **Faktor 1.346 (+34.6 %)**. Die m3-Neuwert-
  Richtwerte (Tab. 2, Bauklasse I-VI EFH/MFH) sind jetzt auf 2025 hochgerechnet in
  [[realwert-sachwert]] hinterlegt. Zusaetzlich Bewertungsordner erneut geprueft: weiterhin
  kein neuer JANS-Fall (4 bekannte: Thalwil 9568, Ebmatingen 3932, Wangen 8855, Langnau 3338).
  Langnau-BZO-Revision per Web bestaetigt unveraendert (kantonale Vorpruefung/Auflage Fruehjahr
  2026, Festsetzung erst Fruehjahr 2027 — weiterhin nicht rechtskraeftig). **Oberrieden-
  Hoehenkorrektur-Flag (Rule `auto-verbesserungen` 260624, seit Run 27 dreifach protokolliert)
  bleibt unkorrigiert — vierte Meldung an Raphael, siehe Report.**

- ✓ 2026-07-14 **Delta-Check (Run 30)** — dritter Trigger desselben Tages (nach Run 28 00:38 und
  Run 29 04:51), erneut ausserhalb der Sollfrequenz (Rule 260713). Bewertungsordner unveraendert
  (kein neuer Fall), Marktanker per Web-Check bestaetigt unveraendert (SNB 0.00 %/Referenzzins
  1.25 %/Durchschnittszinssatz 1.31 % seit 31.03.2026). D6-Restposten Langnau weiterhin blockiert.
  Oberrieden-Hoehenkorrektur-Flag (Rule 260624, Run 27) zum dritten Mal protokolliert — noch nicht
  durch Raphael korrigiert. Neu vermerkt: Haeufung von 3 Triggern/Tag deutet auf Ueberlappung
  Scheduled Task/VOLLGAS-Runner hin.

- ✓ 2026-07-14 **Beobachtungslauf (Run 28)** — kein neuer Ingest (Rule 260713 drosselt diesen
  Loop auf 1x taeglich, Fokus liegt auf Wettbewerbs-DNA). Bewertungsordner geprueft: kein neuer
  JANS-Fall. Marktpuls-Web-Check: SNB 0.00 %/Referenzzins 1.25 % unveraendert seit Run 17.
  D6-Restposten Langnau weiterhin blockiert. Oberrieden-Hoehenkorrektur-Flag (Rule 260624,
  Run 27) zum zweiten Mal protokolliert — noch nicht durch Raphael korrigiert.

- ✓ 2026-07-13 **D6-Ausbau 8 JANS-Bezugsmärkte (Run 27)** — erster echt produktiver Lauf seit
  Run 26. Multi-Agent-Workflow (8 parallele Extraktions-Agenten, alle 8 `obtainable=true`) zog je
  die amtliche BZO-Grundmasse der Wohnzonen: **Niederhasli** (BZO 2024, IVHB, in Kraft 08.08.2025 —
  Wohnzonen ohne Kennziffer, reine Hüllensteuerung → **4. Steuerungslogik** neben AZ/BMZ/ÜZ),
  **Oberrieden** (AZ, Stand 26.01.2026 — **Höhenkorrektur:** amtlich 8.5 m traufseitig / 13.0 m
  giebelseitig / 9.0 m Flachdach; die Altannahme «9.0 m traufseitig» aus Rule `auto-verbesserungen`
  260624 ist falsch → **an Raphael flaggen**), **Kilchberg** (BMZ, Emilienheim-Markt), **Horgen**
  (BMZ, Zonencode = BMZ, Alt-Messweise), **Küsnacht** (BMZ, 7 W2-Stufen, wie Zollikon), **Meilen**
  (BMZ, BZO 2020 IVHB), **Adliswil** (AZ, Alt-BZO, ZW bis 110 %/5 VG), **Richterswil** (AZ,
  Zonencode). D6 deckt damit 19 Gemeinden ab (alle 10 UBS-FS + alle mit realem JANS-Bewertungsfall).
  → [[az-gfz-kennwerte]]. Marktpuls unverändert (SNB 0.00 %/Referenzzins 1.25 %, nächste Publikation
  01.09.2026), kein neuer JANS-Bewertungsfall (jüngster Wangen 8855).

- ✓ 2026-07-13 **Verifikations-Pass Erfolgsfaktoren + Schwamendingen + Neuwert-Tabellen (Run 22)** —
  fuenfter Lauf im Verifikations-Modus. **Modell D (Volltext-Gegenlesung):** (1) DXMA-Aufwertungs-
  gewinn-Tabelle (10 Zeilen, S. 7) + alle vier Baurecht-Fallbeispiele (Breitensteinstrasse,
  Stampfenbachstrasse, Fabrikstrasse, S. 10/12/14/15) gegen die Original-DXMA-Folien → **alle exakt
  reproduziert** → [[erfolgsfaktoren-wettbewerb]] bleibt `established`. (2) Schwamendingen-Nutzermix-
  Quoten (Hortus Conclusus 40/30/30, Low-Tech-Siedlung 50/40/10, Patchwork City 50/30/20) +
  Wohnungsgroessen + Mietzinseinschaetzung (S. 138-145) gegen die Original-Wuest-Folien → **alle
  exakt reproduziert** → [[nutzungskonzepte]] bleibt `established`; neu ergaenzt: Hortus-Conclusus-
  Referenzprojekt (reale «Vertikale Gartenstadt», Penzel Valier/Robertneun, 1. Rang 2020). (3) Tab. 2
  (Neuwert-Richtwerte Bauklasse I-VI) + Tab. 3 (BKP-Anteile MFH 1985) aus dem Schaetzungsanleitungs-
  Anhang → **alle Werte exakt reproduziert** → [[realwert-sachwert]] bleibt `established`. Zusatzbefund:
  der Zuercher Index der Wohnbaukosten (Tab. 4) im Original-Dokument endet bei 01.04.2004 — reicht
  nicht bis 2026, D11 bleibt offen (externe Fortsetzung noetig, nicht geraten). Bewertungsordner
  geprueft: weiterhin kein neuer JANS-Fall seit Run 6. Keine neue Luecke. **Damit sind alle von den
  Runs 18-21 benannten Verifikations-Kandidaten abgearbeitet — kein weiterer auto-schliessbarer
  Kandidat identifiziert.** Empfehlung Ruecktaktung ins Nachtfenster zum fuenften Mal in Folge,
  jetzt mit Nachdruck (Grenznutzen des Intensiv-Takts fuer diese KB erschoepft ohne neues Rohmaterial).

- ✓ 2026-07-13 **Verifikations-Pass Nutzungskonzeptions-Kennzahlen (Run 21)** — vierter Lauf
  im Verifikations-Modus, wie im Run-20-Report als naechster Kandidat angekuendigt. **Modell D
  (Volltext-Gegenlesung S. 123-133 gegen die Originalfolien):** Sinus-Milieu-Kennzahlen
  (Arrivierte 9 % / Ø 47 J / >9'000 CHF, Postmaterielle 13 % / Ø 45 J / 6'000+, Performer 11 % /
  Ø 39 J / 9'000+), Best-Ager-Community (55-75 / 2.5-4.5 Zi / ueberdurchschn. Einkommen), Expats
  (Ø 44.2 J / 82 % Hochschulabschluss / 7 Typen, InterNations 2018), Aktive Familien (40-50 % /
  3.5-5.5 Zi / 30-45 J / ~2 Kinder) und die Nutzermix-Quoten Wohnen (20-30/40-50/30-40 %) sowie
  Geschaeftsflaechen (Plug&Live 65 / Quartiersversorgung 25 / Kuenstlerhaus 10 %) reproduzieren
  **alle exakt**. Verdikt **bestanden**, keine Korrektur → [[nutzungskonzepte]] bleibt `established`,
  `last_updated` 2026-07-13. Kleine Anreicherung: Milieuzugehoerigkeit der Aktiven Familien
  (Buergerliche Mitte 35 / Buergerlich-Gehobene 25 / Adaptiv-Pragmatische 25 / Postmaterielle 15 %)
  neu erfasst. Feingliedrige Sinus-Verteilungstabelle (Ingenbohl/Innerschweiz/SZ/Schweiz) nur
  approximativ lesbar → nur qualitativer Befund (Ingenbohl: Adaptiv-Pragmatische + Buergerliche
  Mitte ueberrepraesentiert), keine Dezimalwerte uebernommen (Leitplanke). Marktpuls unveraendert
  seit Run 17. Keine neue Luecke. Ruecktaktung ins Nachtfenster zum vierten Mal in Folge empfohlen.

- ✓ 2026-07-13 **Verifikations-Pass Lehrstueck «hoeherer Ertrag ≠ hoeherer Landwert» (Run 20)** —
  dritter Lauf im Verifikations-Modus. **Modell D (Volltext-Recompute)** der drei Varianten-
  Zeilen (Wuest-Kurs S. 155) gegen die Original-Folie: Office-Homes 39'845'000−30'500'000=
  9'345'000 (≈9.3 Mio ✓), Perlenhaeuser 39'249'000−29'900'000=9'349'000 (≈9.3-9.4 Mio, Tabellen-
  wert auf Rundungsgrenze, sachlich korrekt), Best-Ager-Community 38'981'000−33'200'000=
  5'781'000 (≈5.8 Mio ✓). Zusatz-Check CHF/m2-GSF ergibt fuer alle drei ein konsistentes
  Grundstueck (~10.5-10.7k m2), wie vom Lehrstueck vorausgesetzt. Verdikt **bestanden**, keine
  Korrektur → [[residualwertmethode]] bleibt `established`, `last_updated` 2026-07-13. Marktpuls
  ungeprueft gelassen (unveraendert seit Run 17, kein neuer Publikationstermin erreicht — kein
  Grenznutzen fuer einen weiteren Web-Check nach 1 Tag). Keine neue Luecke. Empfehlung
  Ruecktaktung ins Nachtfenster zum dritten Mal in Folge bestaetigt.

- ✓ 2026-07-12 **Verifikations-Pass Ertragswert-/Residualwert-Kennwerte (Run 19)** — zweiter
  Lauf im Verifikations-Modus, wie im Run-18-Report als naechster Komplex angekuendigt.
  **Modell D (Volltext-Recompute):** (1) Herosé-Annuitaeten (1'820'000/253'200) reproduzieren
  sich **fast exakt** (Abw. 0.04 %/0.002 %) mit der Standard-Kapitalwiedergewinnungsformel
  PMT=P·i/(1−(1+i)^−N) — praeziser als die zunaechst nahegelegte lineare-Abschreibung-+-
  Durchschnittszins-Lesart (Abw. ~1.1 %) → [[ertragswert-dcf]] praezisiert. (2) **DXMA-A4-
  Rechenbeispiel** (Ertragswert Miete/STWE, Investition, Landwert) komplett nachgerechnet:
  bestanden bis auf Rundung; wichtiger Fund — die **BKP-2-Kosten rechnen auf aGF (810 m2),
  nicht auf GF (1'050 m2)**, bisher implizit im Artikel → [[residualwertmethode]] klargestellt.
  (3) **Barwert-Verlust-Tabelle** (S. 69): 5 %/10 %-Zeilen bestehen (≤1 Pp Abweichung), 3 %-
  Zeile weicht wachsend ab (bis 4.2 Pp bei 50 J) → ⚠-Vermerk, Status bleibt established. Keine
  neue Luecke; beide Artikel bleiben `established`, `last_updated` auf 2026-07-12.



- ✓ 2026-07-12 **Verifikations-Pass Healthcare-Kennwerte (Run 18)** — erster Lauf im
  Verifikations-Modus (PFLICHT-Stufe ab 12.07., Rule auto-verbesserungen 260712). **Modell D
  (Volltext-Recompute)** aller tragenden Healthcare-Neuwert-Kennwerte gegen die Quell-Zahlen:
  **BESTANDEN** = Herose-Einzelanker (BKP2/GF 3'848, /GV 1'105, /Zimmer 346'681 — exakt), die
  JANS-Wohn-Kennwert-Kette (2'900×1.16=3'365 → /0.75=4'485 → HNF 7'350, alle rundungsgenau) und
  **6 von 8** Heim-Objekten der 8-Objekt-Tabelle (Dankensberg/Trotte/Herose/Lanzeln/Mathysweg/
  St.Anna reproduzieren CHF/m2 GF **und** CHF/m3 GV aus BKP2÷Flaeche). **BEANSTANDET** = 2 Roh-Zeilen:
  **Averecura** (Tab. 4'250/1'420, recompute 3'981/1'285) und **Vella** (Tab. 2'835/845, aber BKP2
  24.5 Mio ÷ 7'150 = 3'427) sind quellenintern inkonsistent → neue Luecke **D10** (Original-Blatt-
  Bereinigung, Bring-Schuld). **CHF/Pflegezimmer** als auf 24-m2-Standardzimmer normiert bestaetigt
  (Lanzeln 272'780 ≠ 29.34 Mio/123). Verdikt: Kernaussage (Neubau-Band **~3'800-4'500 CHF/m2 GF**,
  teuerungsbereinigt) **bleibt established**; reproduzierbarer Rohband praezisiert auf **2'623-3'981**.
  Neue Luecke **D11** (m3-Richtwerte 2003 aufindexieren — Index-Faktor 2003→2026 fehlt, nicht geraten).
  Kein neuer Ingest, keine Marktpuls-Aenderung seit Run 17. **Ruecktaktung ins Nachtfenster empfohlen.**

- ✓ 2026-07-12 **Auffrischungslauf Marktpuls (Run 17)** — reiner Aktualisierungslauf, keine neue
  Quelle. Bewertungsordner geprueft: **kein neuer JANS-Fall** seit Run 6. Web-Marktpuls: alle Zins-/
  Preis-Anker unveraendert (SNB 0.00 %, Referenzzins 1.25 %, Mietindex Mai-2026 133.7 / +2.5 % YoY,
  Baupreisindex Apr-2026 100.6 / +1.0 % YoY, SREBI Q1-2026 0.69). Einziger neuer Detailwert:
  **Durchschnittszinssatz 31.03.2026 = 1.31 %** (von 1.32 %) → weiter weg von der Erhoehungsschwelle
  1.37 % → [[investorenmarkt-makro]]. Verbleibend nur D5 (Bring-Schuld Raphael).

- ✓ 2026-07-10 **D8 geschlossen — JANS-Kennwerte-DOCX + Healthcare-Umbaukosten eingearbeitet**
  (Run 16): Wie bei D4 sind auch die als freigabegebunden angenommenen Kennwerte-DOCX TCC-lesbar.
  Aus `_Kennwerte Jans.docx` (25.03.2025): der **aGF/GF-Umrechnungsfaktor Altbau 0.8 / Neubau 0.9**
  (→ [[flaechendefinitionen-sia]]) und der **indexierte JANS-Wohn-Erstellungskosten-Kennwert EFH/ZFH**
  (Median 2020 2'900 → 2025 3'365 CHF/m2 GF BKP 2 / **4'485 CHF/m2 GF BKP 1-5**; TG 42'000/SP;
  Thalwil-Bohlweg-Rechenbeispiel; **HNF-Faktor 7'350 CHF/m2 HNF**) → [[realwert-sachwert]]. Aus drei
  Healthcare-DOCX (`Spektrumskosten`, `Umbaukosten 500K/2500K`): das **JANS-Spitalumbau-Kostenband
  CHF/m2 NF** (6 Stationstypen 2'000-10'000+) + 2 reale Faelle (Psychiatrie-Teilumbau 1'100 →
  Zielkorridor 1'800-2'500; Kispi ZH Paediatrie 4'412) → [[realwert-sachwert]]. `_Kennwerte_Links.docx`
  → [[datenquellen-registry]]. Damit ist die **letzte auto-schliessbare D-Luecke** zu; verbleibend
  nur D5 (Bring-Schuld Raphael). Emilienheim-Flaechenkennwerte bestaetigt nicht verfuegbar
  (nur Medienquelle). Marktpuls-Web-Check: alle Anker unveraendert.

- ✓ 2026-07-08 **D4 geschlossen — Excel-Tool-Formeln reverse-engineered** (Run 15): Die vier
  Residualwert-Tools (WP + JANS, je Pre-Check + «Residualwert Berechnung») auf Zellebene ausgelesen
  (unzip + XML-Zellparser; der SharePoint-Pfad ist entgegen der Freigabe-Annahme TCC-lesbar). Belegt:
  die vollstaendige **Rechenkette** (Soll-Ertrag → Nettoertrag → Ertragswert = Nettoertrag/Diskont →
  Residualwert − Abzuege → Wert n. Fertigstellung/Brutto-/Nettorendite), die **Default-Parameter**
  beider Tool-Familien, die **Gewerbe-Miete-als-5.5-%-der-Erstellungskosten**-Regel, die
  **HNF-Herleitung ohne Grundrisse** (Pre-Check-Engine: HNF = GF − VF − KF − FF − NNF, Effizienz-Ampel
  KF/GF 0.18/0.23/0.30) und die **JANS-Kalibrierung** (Einblatt-Tool = WP unveraendert; Pre-Check
  genau 2 Zellen: Risiko 7 %→12 %, Diskont 2.4 %→2.45 %). Die **Sensitivitaets-Zellformel** bestaetigt
  exakt den CS-Break-Even-Generator (T18). → [[residualwertmethode]] (neue Sektion «Excel-Tool
  Formel-Logik (D4)») + [[ertragswert-dcf]]. Ehrlicher Dreipunkt-Befund: Tool-Default 7 % / gelebte
  JANS-Praxis 8 % (MA Thalwil) / Pre-Check-Worst-Case 12 % Risiko. Offen bleibt nur D5 (Bring-Schuld).
  Marktpuls-Web-Check: Zins-Anker unveraendert, **BFS-Baupreisindex neu Basis Okt-2025 = 100,
  April 2026 = 100.6 (+1.0 % YoY)** → [[investorenmarkt-makro]].

- ✓ 2026-07-06 **T19 geschlossen — JANS-Healthcare-Kennwert-Raster befuellt** (Run 14): Das leere
  interne Blatt «Kennwerte von Alters-/Pflegeheime» (R. Jans 27.04.2024) mit belegten Werten gefuellt
  aus JANS' eigenem **8-Objekt-Referenzvergleich** (`Kennwerte Altersheime Gesundheitszentren.pdf`,
  8 reale CH-Heime 2011-2025) + der **SECO/USI-Effizienzstudie** (Crivelli/Filippini/Lunati 2001,
  835 Heime). Ergebnis: Wirtschaftlichkeitsfaktoren belegt (Bettzahl 28-123; **GF/Bett 90-135 m2**,
  sinkt mit Groesse; **NF/Bett 51-71 m2**; **Bauvolumen/HNF 4.3-9.7**) → [[projektstruktur-deliverables]];
  Kostenbasis von 1 auf 8 Objekte verbreitert (**BKP 2 = 2'623-4'250 CHF/m2 GF / 826-1'420 CHF/m3 GV /
  273'000-780'000 CHF/PZ**) → [[realwert-sachwert]]; Healthcare-Flaechenfaktor **HNF/GF ~0.55** belegt
  → [[flaechendefinitionen-sia]]. Die 3 Fragestellungen beantwortet: **optimale Betriebsgroesse
  70-80 Betten** (SE = 1 bei 79), Kostenersparnisse ab ~50 Betten nicht mehr betraechtlich, normale
  Groesse **Median 52 / Ø 62 Betten**, ~50 % der CH-Heime zu klein → [[ertragswert-dcf]]. Offen (an
  Bopp): welche Kennwerte fuer den Projektentwickler entscheidend sind; Emilienheim-Flaechenkennwerte
  (im Referenzblatt nicht hinterlegt).

- ✓ 2026-07-04 **T17 vollstaendig geschlossen (Investoren-Markt-Seite)** (Run 13): Aus dem
  **Geschaeftsbericht der SenioResidenz AG 2017** (reiner Healthcare-Immobilien-**Investor**,
  WP-DCF-bewertet) den lang gesuchten realen CH-Fonds-/Verkaufsfall eingearbeitet: **impliziter
  Brutto-Investoren-Yield ~5.3 %** (Marktwert 21.75 Mio / Soll-Miete 1.145 Mio) — Healthcare-Brutto
  ~2 Pp ueber Wohnbau, tiefe Belehnung 40-60 % → D3-Healthcare-Zeile von *emerging* auf **belegt**
  (Kosten- UND Investoren-Seite) → [[ertragswert-dcf]]. Dazu die **Pflegeplatzkosten-Struktur**
  (BFS «Indikatoren Pflegeheime 2019-2021»: 10'035 CHF/Mt, Ertrag Pension 55 %/Pflege 43 %, Belegung
  90 %, 60 % defizitaer; NZZ/Curaviva: Pension 4'124/KVG-Pflege 4'401/Betreuung 1'529 CHF/Mt — nur
  Hotellerie speist die Liegenschaft) → [[ertragswert-dcf]]; **CH-Pflegebedarf-Prognose** (Obsan
  03/2022: +69 %/+54'335 Betten bis 2040, Angebotsluecke) als Nachfragetreiber → [[investorenmarkt-makro]];
  **Spital-Erstellungskosten** (CRB werk-material: 3'426-3'767 CHF/m2 GF) → Healthcare-Kostenband
  ~3'400-3'850+ [[realwert-sachwert]]; **Gewerbe-Feinabstufung** je Mietersegment (WP-2026 Buero
  +0.5 %/Detailhandel −1.5 %, Segment-Reihenfolge belegt) → [[ertragswert-dcf]]. Neue Aufgabe T19
  (JANS-Kennwert-Raster befuellen).

- ✓ 2026-07-02 **T17 (Kosten-/Annuitaetsseite) + Health-Check-Cleanup** (Run 12): Aus der bisher
  ungelesenen **oeffentlichen Healthcare-Bibliothek** (`IMMO-06/Healthcare/HEIM`, nicht D8-freigabe-
  gebunden) den **Baukredit-Bericht Pflegeheim Herosé Aarau** (Stadt Aarau, 13.12.2021) eingearbeitet:
  Erstellungskosten-Kennwerte (BKP 2 = 3'848 CHF/m2 GF / 1'105 CHF/m3 GV / 346'681 CHF/Zimmer +
  4-Heim-Vergleich) → [[realwert-sachwert]]; **Annuitaets-Finanzierungsmodell** (lineare Abschreibung
  33 J CURAVIVA / kalk. Zins BWO-Referenzzins 1.25 %, KVG-/Hotellerie-Taxen-Trennung, Taxe 120→153
  CHF/Tag, Spezialfinanzierung) → [[ertragswert-dcf]]; Healthcare-Bewertungsbruecke → [[projektstruktur-deliverables]].
  Plus **ARTISET KVG-KoRe** (Kostentraeger LZP/ToNs/AUEP). Healthcare-Diskontzeile: Kosten-/Annuitaets-
  seite belegt. Zusaetzlich die drei Health-Check-Findings (01.07.) bereinigt: Run-11-Prozessleck
  nachgetragen (`ertragswert-dcf` `last_updated`/CHANGELOG/Output), 2 falsche Backlinks korrigiert
  (`[[healthcare-wirtschaftlichkeit]]`→Skill-Klartext in `zh-wald-8636`; `[[outputs/…]]`→Report-Klartext
  in `sz-wangen-8854`), Frontmatter vereinheitlicht (Thalwil `plz: 8800`, `kanton: Zürich` in langnau/
  zollikon, INDEX `nutzungskonzepte` *established*). Marktpuls unveraendert.

- ✓ 2026-06-28 **E8 / D3-Wohnbau-Faustregel** (Run 10) **drei ungelesene Quellen ingestiert**
  (nicht freigabegebunden): R.-Jans-Notiz `231231_Residualwert und Diskontierung.docx` (31.12.2023)
  → **Diskontsatz-Dekomposition 2.5 %=2.0 % Kapitalverzinsung+0.5 % Abschreibung** (schliesst die
  Wohnbau-Faustregel von D3), **Betriebskosten-Pauschale 2.5 %=5x0.5 %**, belegte **Rechenkaskade**
  Residualwert←Ertragswert←Nettoertrag←Mietertrag + **Abzinsungsformel** W0=Wn/(1+i)^N →
  [[ertragswert-dcf]]. `Disskontierung.docx` → **Healthcare-Diskontsatz-Anker** (Pflege 4-8 %,
  JANS-Arbeitsnotiz) → Healthcare-Zeile *speculative*→*emerging*. **Kanonische SIA-416:2003-Norm-PDF**
  → [[flaechendefinitionen-sia]] vollstaendig normverankert (Hierarchie/Volumen/Miet-STWE-Flaechen/
  Abgrenzung aGF-BGF-EBF). Kursnotizen IMG_7064-67: Anfangsrendite=Mietertrag/Kaufpreis, 30 % Land /
  8 % Risikomarge, WP-Pre-Check-Tool-Layout (D4-Teilbeleg, ohne Zahlen). D3 → «niedrig».

- ✓ 2026-06-26 **D3 (T-Teil)** (Run 9) **JANS-Diskontsatz-Tabelle konsolidiert**: alle belegten
  Anker (WP S. 52/55, Risikozuschlagsmodell S. 54, JANS-Konvention 2.50/2.70 %) zu **einer**
  additiven Bottom-up-Herleitung zusammengefuehrt — risikofreier Basiszins **10-j Eidgenoss
  ~0.35 % (Juni 2026, Web)** + Illiquiditaets-/Lage-/Objektzuschlag, gegen den WP-top-down-Satz
  plausibilisiert. Konsolidierte Tabelle je Nutzung/Lage (Wohnen 2.1-3.3 %, Gewerbe 2.7-3.8 %,
  Healthcare ~3.0-4.0 % *Annahme*) + **Real-vs-nominal-Bruecke (Fisher**, Langfrist-Teuerung
  ~1.0 % → nominal ~3.1-4.3 % Wohnen). Belegte Zeilen abschliessend; die JANS-Faustregeln bleiben
  als *Annahme* markierte Bring-Schuld → [[ertragswert-dcf]]. D3 damit von «D/T hoch» auf «D
  mittel» zurueckgestuft.

- ✓ 2026-06-22 **T18** (Run 8) **CS-Sensitivitaets-Generator** formalisiert: die Zwei-Modell-Logik
  als ein Rechen-Schema **Marge(δ) = 1 − K0(1+βδ)/[E0(1+αδ)]** mit geschlossener Break-Even-Formel
  **δ\* = (K0−E0)/(E0·α−K0·β)**; uebertragen auf vier Werttreiber (Ausnuetzung/Mietzins α1β0 →
  δ\*=−M0; Baukosten α0β1 → γ\*=+M0/(1−M0); Leerstand). Aus den Niederhasli-Ist-Zahlen validiert
  (BE_A = −8.1 % = −M0 bestaetigt; **BE_B praezisiert auf −11.6 %** statt frueher per Auge ~−13 %;
  effektive Kosten-Elastizitaet **β ≈ 0.33**, nicht 0.30). Tornado-Sensitivitaet dM/dδ=(1−M0)(α−β),
  Modellwahl-Regel A/B = RW-`tief`/`hoch` → [[projektstruktur-deliverables]].

- ✓ 2026-06-18 **T15** (Run 6) Niederhasli **CS Controlling & Sensitivitaet** vollstaendig
  ausgewertet → **CS-Deliverable-Methodik** dokumentiert: Controlling-Factsheet (Felderschema,
  Plausibilitaets-Check einer Fremdstudie) + Sensitivitaetsanalyse (Werttreiber Ausnuetzung ×
  Δ 0/−10/−20 % × Kostenmodell A fix / B 70/30 → Marge + Break-Even) + Fazit/Empfehlung →
  [[projektstruktur-deliverables]].
- ✓ 2026-06-18 **T16** (Run 6, teilweise) LB Langnau Giebelweg 12 → **Bestand-halten-vs-Abbruch-
  Entscheidlogik** (Vergleichswert-Bestand ↔ Residual-Landwert; BMZ-Deckelung kippt auf Halten;
  Datenquelle Popety.io) → [[vergleichswert-hedonisch]] + [[projektstruktur-deliverables]]; LB
  Wangen Bahnhofstr. 27 → **Ertragswert-Band (3 Kapitalisierungssaetze) + Kaufpreispruefung
  (impl. Bruttorendite vs. Schwelle) + Ausbau-Rendite-Impact** → [[ertragswert-dcf]]. Healthcare-
  Teil offen (kein Fall im Bewertungsordner) → neu T17.


- ✓ 2026-06-16 **T9b** Inhalts-/Kennwert-Auswertung realer LB/MA-Faelle: Thalwil 9568
  (LB + MA), Ebmatingen 3932 (LB), Wangen 2622 quantitativ ausgewertet → **Kennwert-Benchmark-
  Tabelle** (HNF-Faktor, ME/Kaufpreis-Quantil, Erstellungskosten/HNF/m3, Residualer Landwert,
  ROE) + **MA-Wertanker-Synthese** (4 Bodenwert-Anker → Marktwert) in
  [[projektstruktur-deliverables]] (Run 5).
- ✓ 2026-06-16 **T7b** Zu-/Abschlagslogik Median → Objekt als 6-Schritt-Checkliste + JANS-
  Quantil-Praxisanker (Premium Q90 / Schnitt Q50-60, Bauland nach Lageklasse) →
  [[vergleichswert-hedonisch]] (Run 5).
- ✓ 2026-06-16 **T10 (teilweise)** Marktpuls Mieten/SREBI 06.2026: Angebotsmieten 2026 +0.7 %
  (nach +6 % 2024), Bestandesmieten −0.8 %, UBS SREBI Q4-2025 0.48 «moderat», EFH +4.1 % YoY,
  BFS Baupreisindex 116.2 (Okt-2025) → [[investorenmarkt-makro]], [[realwert-sachwert]] (Run 5).
- ✓ 2026-06-16 **D4 (teilweise)** JANS-Residualwert-Tool-Struktur aus MA Thalwil S. 9 reverse-
  engineered (Wohnungsmix × HNF/GF-Effizienz, 8 % Risiko, 2.70 % Diskontierung, Abzuege,
  Brutto-/Nettorendite-Kontrolle) + **JANS-Bewertungskonvention** (2.50 % Kapitalisierung,
  −5 % Baukostenabschlag, 4.5 % Renditeschwelle, ROE-Ampel) → [[ertragswert-dcf]] (Run 5).
  Offen bleibt das Auslesen der `.xlsx`-Formeln selbst (Freigabe).
- ✓ 2026-06-14 **T7** (Hedonik-Modellfamilie Wüest/IAZI/Fahrländer/PriceHubble, Methodenkern
  Regression/~70 Kriterien/>20'000 Handänderungen, Einsatzgrenze nur EFH/EW) + **alle 10 UBS-FS
  kompiliert** (neu Thalwil/Muri/Regensdorf/Luzern) → [[vergleichswert-hedonisch]],
  [[marktdaten-gemeinden/README]] (Run 4).
- ✓ 2026-06-14 **T8** JANS-Flächenfaktoren Wohnen (HNF/Baumasse 0.20, GF/Baumasse 0.33,
  HNF/GF 0.60 ganzes Gebäude / 0.75 Regelgeschoss + Wohnungsmix-Benchmark) belegt aus
  Flächenkonzeption Wohnen (20.10.2024) → [[flaechendefinitionen-sia]] (Run 4).
- ✓ 2026-06-14 **T9** Reale JANS-Bewertungsfälle als Referenz-Benchmark-Register erfasst
  (Thalwil 9568 LB+RW+MA, Ebmatingen 3932 LB+RW tief/hoch, Langnau, Wangen, Niederhasli CS) →
  [[projektstruktur-deliverables]] (Run 4).
- ✓ 2026-06-14 **T10 (teilweise)** Referenzzinssatz 1.25 % / SNB-Leitzins 0 % (Stand 06.2026)
  → [[investorenmarkt-makro]]; Mietpuls 2026 bleibt offen (Run 4).
- ✓ 2026-06-14 **T14** UBS SREBI Bubble Index Q2-2024 (0.74 «moderat», 4 Perspektiven,
  Methodik, regionale Ungleichgewichte) → [[investorenmarkt-makro]] (Run 4).

- ✓ 2026-06-12 **T13** Mietwert-Korrekturfaktoren (Tab. 14 Punktesystem + Bauweise/Alter/
  Heizung, Tab. 15 Kriterienraster ±9 %) + Gastgewerbe-Umsatzmiete (Tab. 25-28) eingearbeitet
  → [[ertragswert-dcf]]; Nutzflächen/Raumeinheiten (Tab. 12/13) → [[flaechendefinitionen-sia]].
  Damit Schätzungsanleitung Kap. 5 **vollständig** (Run 3).
- ✓ 2026-06-12 **T7 (teilweise)** Hedonik-Methodik: WP-Standortreport-Aufbau (Langenthal) +
  UBS-FS-Glossar-Methodik belegt; 4 weitere Gemeinden kompiliert (Maur/Wald/Wädenswil/
  Einsiedeln) → [[vergleichswert-hedonisch]], [[marktdaten-gemeinden/README]]. Offen:
  Hedonik-Modellfamilie, restliche UBS-FS (Thalwil/Regensdorf/Luzern/Muri).
- ✓ 2026-06-10 **T4** DXMA-Erfolgsfaktoren (komplettes Modul 4, 37 S.) eingearbeitet:
  6 Faktoren, Aufwertungsgewinn + 10 Referenzfaelle, AZ-Optimierungsformel, A4-Bewertungsblatt
  → [[erfolgsfaktoren-wettbewerb]], [[nutzungskonzepte]], [[residualwertmethode]] (Run 2).
- ✓ 2026-06-10 **T5** LK→Landwertanteil-Tabelle (Tab. 8) + Lageklassenschluessel Wohnen/
  Gewerbe (Tab. 6/7) belegt; Artikel speculative → established → [[lageklasse-landwertanteil]].
- ✓ 2026-06-10 **T6 (vollstaendig)** CHF/m3-Neuwert-Richtwerte (Tab. 2) + BKP-Anteile (Tab. 3)
  ergaenzt → [[realwert-sachwert]] (⚠ m3-Werte Stand 2003, aufzuindexieren).
- ✓ 2026-06-10 **T11** Realwert-/Ertragswert-Gewichtung je Objektart (Tab. 22, Mittelwert-
  methode) belegt → [[bewertungsverfahren-ueberblick]]; Kapitalisierungssatz-Aufbau
  (B/U/V/A/R, Tab. 21/23) → [[ertragswert-dcf]].
- ✓ 2026-06-10 **T12** Alterswertminderung (Lebensdauer Tab. 9, wirtschaftliches Alter
  Tab. 10, Wertminderung Tab. 11) belegt → [[realwert-sachwert]].
- ✓ 2026-06-09 **T1** Wuest-Kurs Modul 1 (Projektbewertung/Landwert, S. 13-72) vollstaendig
  eingearbeitet → [[residualwertmethode]], [[ertragswert-dcf]] (Training-Run 1).
- ✓ 2026-06-09 **T2** Wuest-Kurs Modul 2 (Nutzungskonzeption, S. 73-161) vollstaendig
  eingearbeitet → [[nutzungskonzepte]] (Training-Run 1).
- ✓ 2026-06-09 **T3** Wuest-Kurs Modul 3 (Investorenmarkt/Makro, S. 162-229) vollstaendig
  eingearbeitet → [[investorenmarkt-makro]] (Training-Run 1).
- ✓ 2026-06-09 **T6 (teilweise)** Erstellungskosten-Benchmarks je Nutzung/Standard
  (BKP 1-5, CHF/m2 HNF, WP-Kurs S. 31-38) belegt → [[realwert-sachwert]]; offen bleiben
  CHF/m3-Werte und die Schaetzungsanleitungs-Tabellen.
- ✓ 2026-06-09 **D3 (Grundstein)** Diskontsatz-Anker belegt (WP-Empfehlung Sommer 2023
  2.2-3.0 % Wohnen, Gewerbe +0.6-1.5 Pp; Erfahrungswerte) → [[ertragswert-dcf]];
  JANS-Kalibrierung + Aktualisierung 2026 weiterhin offen.
