---
quelle: ewz "Tarif Fernwärme im Wärmeverbund KVA und Holz" (Tarifsystem 2022, Ausgabe Juni 2026) + ewz AGB Fernwärme (Ausgabe Januar 2025) + Preisüberwacher "Marktbeobachtung Fernwärmetarife Schweiz" (06.07.2023) + Stadtwerk Winterthur + Agro Energie Schwyz AG "Tarife und Konditionen" (publiziert 04.09.2025) + Agro Energie Schwyz AG "Reglement für die Abgabe von Fernwärme" (Ausgabe 31.07.2022) + Energie Einsiedeln AG "Preisblatt für Fernwärme 2025" + Energie Ausserschwyz AG Live-Richtpreisrechner (klickstrecke.energie-ausserschwyz.ch, 17 zusätzliche Adress-Abfragen in 8 Gemeinden) + Energie Ausserschwyz AG "Allgemeine Geschäftsbedingungen (AGB) für Fernwärme" (V5.0, Ausgabe April 2024)
herausgeber: ewz (vormals ERZ Fernwärme, Stadt Zürich) / Eidgenössischer Preisüberwacher / Stadtwerk Winterthur / Agro Energie Schwyz AG / Energie Einsiedeln AG / Energie Ausserschwyz AG
ausgabe: Tarifsystem 2022, Ausgabe Juni 2026 (ewz); Preisüberwacher-Bericht Datenbasis 2022 (66 Anbieter); Agro Energie Schwyz "Tarife und Konditionen", publiziert 04.09.2025 (Anschlussgebühr gültig bis 31.12.2026, Grund-/Arbeitspreis gültig bis 30.09.2026); Agro Energie Schwyz Reglement, Ausgabe 31.07.2022; Energie Einsiedeln Preisblatt Fernwärme 2025; Energie Ausserschwyz AGB V5.0/April 2024
gelesen: 2026-07-14/2026-07-15/2026-07-17/2026-07-18/2026-07-20/2026-07-21 (Web via WebSearch/WebFetch; ewz-Tarifblatt, Preisüberwacher-PDF, Agro-Energie-Tarifblatt und Einsiedler Preisblatt vollständig gelesen — Agro-PDF seitenweise gerendert; 15.07. ergänzt um Energieverbund-Einsiedeln-Infoblatt 2017 (pdftotext), EBL Energie Rigi + ECOGEN Arth-Goldau Web; 17.07. Live-Richtpreisrechner Energie Ausserschwyz per curl/htmx-Endpunkt `/heating/?id=` für 17 weitere Adressen in Freienbach/Wollerau/Pfäffikon SZ/Altendorf/Siebnen/Galgenen/Lachen abgefragt, EASZ-AGB (15 Seiten) und Agro-Reglement (Art. 4+5, Vertragsdauer) vollständig per pdftotext gelesen; 18.07. erneuter Live-Rechner-Zugriff (Run T6): 1 neue Adresse Bäch SZ/Freienbach erfolgreich abgefragt (Fernwärme dort nicht verfügbar), danach durchgehend HTTP 500 auf dem Server bei jeder weiteren `/heating/?q=`-Suche — mit curl (mehrere frische Sessions) UND WebFetch bestätigt, also serverseitig und nicht clientseitig; EBL Energie Rigi FAQ-PDF + Fernwärme-Seite sowie ECOGEN-Arth-Goldau-Seite erneut per WebFetch geprüft, keine neuen CHF-Zahlen; 20.07. Run 82: HX-Request-Header-Fix identifiziert, 11 neue Adressen Lachen/Pfäffikon SZ; 21.07. Run 83: reale Strassenlisten von Galgenen + Freienbach via OpenStreetMap/Overpass-API bezogen (statt Rätselraten), gezielt 28 weitere Adressen getestet — Galgenen-Dorfkern (Schulstrasse/Untergasse/Obergasse/Altersheimstrasse, 17 Adressen) + Freienbach-Dorfzentrum (Postweg/Grützenstrasse, 6 Adressen) + Bäch SZ (Bächaustrasse, 5 Adressen, alle nicht verfügbar); zusätzlich WebSearch/WebFetch zu älteren EASZ-Factsheets (Aug 2023, Okt 2024) und EASZ-Newsartikeln zum Ausbauplan Freienbach)
datenstand: 2026-06 (ewz-Formel), 2022/2023 (Preisüberwacher-Marktbeobachtung), 2025/2026 (Agro Energie Schwyz Tarife), 2022 (Agro Energie Schwyz Reglement/Vertragsdauer), 2025 (Energie Einsiedeln), 2017 (Energieverbund Einsiedeln, veraltet), 2026 (Küssnacht/Arth-Goldau, keine CHF-Zahlen, 2. Bestätigung 18.07.2026; Live-Richtpreisrechner-Abfragen 17.07.2026 + 18.07.2026 + 20.07.2026 Run 82 + 21.07.2026 Run 83, insgesamt 30 Adressen), 2024 (Energie Ausserschwyz AGB), 2023/2024 (ältere EASZ-Factsheets zum Ausbauplan, Sekundärbeleg via WebSearch, nicht als PDF primärgelesen), ⚠ "Herbst 2024"-Aktualisierung nur über Sekundärquelle, nicht PDF-primärverifiziert
status: emerging
last_updated: 2026-07-21
---

# Fernwärme-Anschlusskosten Kt. Zürich und Kt. Schwyz (ergänzt Anschlusspflicht-Destillate)

**Das Wichtigste in 1 Satz:** Ein Fernwärmeanschluss in der Stadt Zürich (ewz) kostet nach der
amtlichen 2026er-Tarifformel für ein EFH (ca. 12 kW) einmalig rund CHF 31'000–32'000
(Anschlussbeitrag P3) plus laufend rund CHF 3'200–3'500/Jahr (Grundpreis P2 + Arbeitspreis P1,
exkl. CO2-Abgabe/MWST); im Kt. Schwyz publiziert Agro Energie Schwyz als einziger Verbund eine
vollständige Tarifformel (Anschlussgebühr CHF 20'676 + 800/kW bis 20 kW, indexiert; Grundpreis
92.02 CHF/kW·Jahr; Arbeitspreis 14.20 Rp./kWh) — schweizweit ermittelt der Preisüberwacher im
Schnitt CHF 14'393 Anschlusskosten und CHF 3'052–3'467 Jahreskosten für ein EFH.

## Kostenstruktur (schweizweit einheitlich)

- **Arbeitspreis (P1):** Rp./kWh für die bezogene Wärmemenge, inkl. Kapitalkostenanteil;
  meist jährlich indexiert (LIK, Holzschnitzelpreis, Heizöl-/Gas-/Elektrizitätsindex).
- **Leistungspreis/Grundpreis (P2):** CHF/kW·Jahr, verbrauchsunabhängig, deckt Netzbetrieb/
  Unterhalt + Kapitalkostenanteil Hausanschluss.
- **Anschlussbeitrag (P3):** einmalig, Deckungsbeitrag an die Erstellungskosten des
  Hausanschlusses.

## Formel und Beispielrechnungen — Stadt Zürich (ewz, Tarifsystem 2022, Stand Juni 2026)

Arbeitspreis: P1 = 65 CHF/MWh × Teuerungsfaktor (2026 = 1.24) × Rücklauftemperaturzuschlag
(0–20 %, nur Heizperiode Okt–März) → 8.06–9.67 Rp./kWh (ohne CO2-Abgabe/MWST).

Leistungspreis 0–250 kW: P2 = (900 + 42 × kW) × Index Wohnbaupreise (2026 = 1.14).

Anschlussbeitrag Neubau, L ≤ 1 MW: P3 = (25'000 + 263'000 × L[MW]) × 1.14.
Anschlussbeitrag Bestand: P3 = (25'000 + 179'000 × L[MW]) × 1.14.

Eigene Beispielrechnungen (Indexstand 2026, exkl. MWST, nach der amtlichen Formel, keine
amtlich publizierten Einzelbeispiele):

| Objekt | Leistung | P2 Grundpreis/Jahr | P3 Neubau | P3 Bestand |
|---|---|---|---|---|
| EFH | 12 kW | CHF 1'601 | CHF 32'098 | CHF 30'949 |
| Doppel-EFH/kl. MFH | 29 kW | CHF 2'415 | CHF 42'380 | — |
| MFH | 55 kW | CHF 3'659 | CHF 44'990 | CHF 39'723 |

P3-Werte sind "standardisierte Richtwerte" (ewz-Dokument); verbindlich ist die individuelle
Fernwärmeofferte. ⚠ Ausblick im ewz-Dokument: ab voraussichtlich 2029 einheitliches
Gebührenmodell für alle städtischen thermischen Netze angestrebt, tendenziell höher als heute.

## Winterthur (Vergleich, nicht primärverifiziert)

Arbeitspreis Standard: 5.4 Rp./kWh. Beispiel EFH 12 kW/22'800 kWh: CHF 2'576/Jahr.
Preisniveau-Vergleich (Stichdatum unklar, vermutlich 2025): Winterthur 8.3 Rp./kWh < Zürich
11.5 < Basel 12.0 < Dietikon 14.1 < Bern 14.9 Rp./kWh.

## Preisüberwacher-Marktbeobachtung Schweiz (Primärquelle vollständig gelesen, Datenbasis 2022)

Jahreskosten nach Gebäudetyp (CHF/Jahr, Durchschnitt/Spanne):
- EFH (12 kW, 20'000 kWh): Ø CHF 3'052 (Spanne 811–4'650), Arbeitspreis Ø 10.6 Rp./kWh.
- Doppel-EFH/kl. MFH (29 kW, 50'000 kWh): Ø CHF 7'400 (1'846–11'550).
- MFH (55 kW, 100'000 kWh): Ø CHF 14'474 (3'376–22'875).
- Grössere Überbauung (270 kW, 500'000 kWh): Ø CHF 67'745 (12'868–92'359).

**Anschlusskosten EFH:** Durchschnitt CHF 14'393 (Einzelwerte CHF 3'000 bis über CHF 36'000);
einige Anbieter verrechnen keine Anschlussgebühr. Nur 2/58 Anbieter erheben zusätzlich
Konzessionsabgaben; CO2-Abgabe bei 6/48 EFH-Anbietern separat (0.067–1.3 Rp./kWh). Nur 14/66
Tarife sind behördlich genehmigt (dort tendenziell tiefere Jahreskosten).

⚠ Sekundärquelle "Herbst 2024" (nicht als PDF gegengelesen): Jahreskosten EFH CHF 1'878–5'267,
Ø CHF 3'467/Jahr bzw. 17 Rp./kWh (+10 % ggü. August 2022) — Grössenordnung deckt sich mit der
eigenen ewz-2026-Berechnung (CHF 3'213–3'535/Jahr).

## Vertragsdauer

ewz/ERZ: keine fixe Laufzeit in den AGB selbst — wird im individuellen Wärmelieferungsvertrag
festgelegt; Rückbaukosten bei Kündigung trägt die kündigende bzw. vertragsverletzende Partei.
Energie 360° (anderer ZH-Anbieter, nicht primärverifiziert): 10 Jahre Erstlaufzeit, danach 12
Monate Kündigungsfrist; Kunde trägt Rückbaukosten der Unterstation.

## Vergleich zur Wärmepumpe (bereits in der KB: Erdsonde 4'090, Luft-WP 4'344, Fernwärme 4'940
CHF/Jahr Vollkosten, Quelle EnergieSchweiz-Heizkostenrechner)

Die hier recherchierten reinen Betriebskosten (P1+P2, ohne P3, exkl. CO2/MWST) liegen für ein
EFH tiefer (CHF 3'052–3'535/Jahr) als der bereits dokumentierte Vollkosten-Wert 4'940 CHF/Jahr —
plausibel, da der EnergieSchweiz-Wert vermutlich Vollkosten inkl. MWST/CO2-Abgabe und ein anderes
Verbrauchsprofil ansetzt; die genaue Methodik des EnergieSchweiz-Rechners war nicht Teil dieser
Recherche.

## Kanton Schwyz (Recherche 14.07.2026, Primärquellen)

Im Kanton Schwyz gibt es keinen kantonsweiten Fernwärmetarif; je Verbund gilt ein eigenes
Tarifblatt. Drei Betreiber decken die relevanten Räume ab.

### Agro Energie Schwyz AG (Talkessel Schwyz/Ibach) — vollständig publiziert

Quelle: "Tarife und Konditionen (exkl. MwSt)", publiziert 04.09.2025 (Anschlussgebühr gültig bis
31.12.2026; Grund-/Arbeitspreis gültig bis 30.09.2026).

- **Einmalige Anschlussgebühr (AG), je kW vereinbarter Anschlussleistung P:**
  AG = CHF 20'676 + CHF 800 × P (bis 20 kW) bzw. CHF 31'000 + CHF 380 × P (ab 20 kW),
  indexiert mit dem Zürcher Index der Wohnbaukosten (B = 133.70 / BO = 125.30 → Faktor 1.067;
  auf die Anpassung an den Stand April 2025 = 143.4 wird verzichtet).
  Publiziertes Beispiel im Tarifblatt: 15 kW → CHF 32'676 unindexiert, **CHF 34'866.55 indexiert**.
- **Abzüge "Erschliessungsvorteil"** (bestehender Hausanschluss/Leitungsnetz in der
  Nachbarliegenschaft): Feinerschliessung − CHF 6'200 (bei Ersatz einer fossilen Heizung
  zusätzlich Anteil Pacovis − CHF 500), Groberschliessung − CHF 4'200, Neuanschluss ab
  Verteilnetz − CHF 0. Befristeter Jubiläumsrabatt 01.01.–31.12.2026: zusätzlich − CHF 3'000 /
  − CHF 2'500 / − CHF 2'000.
- **Zuleitung ab Parzellengrenze zulasten Kunde** (Richtpreise Mehrlängen): Grabarbeiten
  600–800 CHF/m; Fernwärmeleitung im Graben (> 10 Trassemeter) 600–800 CHF/TM; hausintern ab
  Hauseintritt bis Übergabestation (> 2 TM) 400–500 CHF/TM.
- **Grundpreis:** CHF 92.02/kW und Jahr (ab 01.10.2025; Basis CHF 84.00/kW per Dez. 2006,
  LIK-indexiert).
- **Arbeitspreis:** 14.20 Rp./kWh (ab 01.10.2025). Nach Indexmodell wären es 15.79 Rp./kWh; Agro
  reduziert freiwillig auf 14.20. Indexformel gewichtet Frischholz/Altholz/Heizöl
  (Gewichtung 2024/25: Altholz 54.4 %, Frischholz 32.5 %, Heizöl 13.1 %).

Eigene Beispielrechnungen nach dieser Formel (exkl. MWST, keine amtlich publizierten Beispiele
ausser dem 15-kW-Fall):

| Objekt | Leistung / Verbrauch | Anschlussgebühr (indexiert) | Grundpreis/Jahr | Arbeitspreis/Jahr | Jahreskosten total |
|---|---|---|---|---|---|
| EFH | 12 kW / 20'000 kWh | CHF 32'306 | CHF 1'104 | CHF 2'840 | CHF 3'944 |
| EFH (Tarifblatt-Beispiel) | 15 kW | CHF 34'867 | CHF 1'380 | — | — |
| MFH | 55 kW / 100'000 kWh | CHF 55'380 | CHF 5'061 | CHF 14'200 | CHF 19'261 |

### Energie Einsiedeln AG (Dorf Einsiedeln)

Quelle: "Preisblatt für Fernwärme 2025" (gültig 01.01.–31.12.2025), abgerufen 14.07.2026.

- **Arbeitspreis 2025: 11.53 Rp./kWh** exkl. MWST (Basis 8.4 Rp./kWh, gewichtete Indexformel
  Altholz 30 % / Holzschnitzelindex 8 % / Strom 15 % / Heizöl 22 % / LIK 25 %).
- **Grundpreis:** kein publizierter CHF/kW-Ansatz — der Basis-Grundpreis wird **bei
  Vertragsabschluss individuell** festgelegt und danach LIK-indexiert (Faktor 2025 = 1.08222).
  Publiziertes Beispiel MFH 55 kW / 100'000 kWh: Grundpreis CHF 10'713.77/Jahr (aus GP-Basis
  CHF 9'900) + Arbeitskosten CHF 11'530 → rund **CHF 22'244/Jahr exkl. MWST**.
- **Anschlussbeitrag:** nur qualitativ beschrieben (einmalig, inkl. Zuleitung ins Gebäude),
  keine CHF-Zahl publiziert.

**Zusätzliche Prüfung 16.07.2026 (Run 74, Wayback Machine, Preisblätter 2023/2024 + Formular
"Anfrage Wärmebezug"):** Grundpreis-/Arbeitspreisformel strukturell seit mind. 2023 stabil
(GP-Basis CHF 9'900, LIK-indexiert; Arbeitspreis-Gewichtung Altholz/Holzschnitzel/Strom/Heizöl/
LIK unverändert). Der Anschlussbeitrag ist in KEINER der geprüften Preisblatt-Versionen
(2023/2024/2025) beziffert — auch das Anfrageformular für Neukunden fragt nur Objektdaten ab,
ohne eine Anschlusskosten-Tabelle zu nennen. **Bestätigter Negativbefund (3. Bestätigung).**

### Energie Ausserschwyz AG (March/Höfe: Galgenen, Siebnen, Lachen, Altendorf, Pfäffikon,
Freienbach, Wollerau, Wilen, Buttikon, Reichenburg, Feusisberg, Schindellegi)

Kein publiziertes Tarifblatt (erneut bestätigt 16.07.2026), aber die Website betreibt unter
`klickstrecke.energie-ausserschwyz.ch/heating/` (Anbieter: abonax/evus) einen adressbasierten
Live-Richtpreisrechner ("Preisindikation für die Fernwärme"), der für eine eingegebene Adresse
im Versorgungsgebiet echte CHF-Beträge ausgibt (Methodik-Hinweis im Tool: "Die Verbräuche,
Anschlusswerte und Ausmass wurden auf Grund von Benchmarks berechnet", alle Beträge exkl. MWST).

**Erweitertes Sampling 17.07.2026 (Run T5, insgesamt 19 real abgefragte Adressen in 8 Gemeinden):**
Der Live-Richtpreisrechner läuft technisch auf einem htmx-Endpunkt (`GET /heating/?q=<Adresse>`
für die Adresssuche, `GET /heating/?id=<Objekt-ID>` für die Preisindikation je Gebäude); beide
Endpunkte liefern serverseitig gerendertes HTML zurück und lassen sich direkt per `curl`
abfragen (kein Browser/JS-Rendering nötig). Damit liess sich die Stichprobe systematisch von
2 auf 19 Adressen ausweiten: Freienbach (Blumenweg 1/2/3/5), Lachen SZ (Hintere Bahnhofstrasse
1/5 — bereits bekannt — plus Aapark 10/11/12/13/14), Galgenen (Allmeindstrasse 1/10/12/13/15),
Pfäffikon SZ (Alte Landstrasse 3), Siebnen (Aabächliweg 5), Altendorf (Acherenboden 1).

| kW (rückgerechnet)* | Investitionsbeitrag brutto | Grundgebühr/Jahr | Beobachtet an |
|---|---|---|---|
| 10 | CHF 21'300 | CHF 1'900 | Lachen (Aapark 10/11/12/13/14, 4×), Altendorf (Acherenboden 1) — 5 Adressen, **identischer Wert** |
| 12 | CHF 24'200 | CHF 2'200 | Lachen (Hintere Bahnhofstrasse 5); Freienbach (Grützenstrasse 14) — identischer Wert, 21.07.2026 Run 83 |
| 13 | CHF 25'600 | CHF 2'300 | Freienbach (Grützenstrasse 4a) — 21.07.2026, Run 83 |
| 14 | CHF 27'000 | CHF 2'400 | Galgenen (Altersheimstrasse 20a) — 21.07.2026, Run 83 |
| 15 | CHF 28'400 | CHF 2'500 | Lachen SZ (Zürcherstrasse 10a) — 20.07.2026, Run 82; Freienbach (Grützenstrasse 12) — identischer Wert, 21.07.2026 Run 83 |
| 16 | CHF 29'900 | CHF 2'700 | Freienbach (Blumenweg 2), Galgenen (Allmeindstrasse 13, Untergasse 11, Obergasse 16g, Altersheimstrasse 20, Altersheimstrasse 24) — 6 Adressen, identisch (4 davon 21.07.2026 Run 83) |
| 17 | CHF 31'300 | CHF 2'800 | Lachen (Hintere Bahnhofstrasse 1) |
| 18 | CHF 32'700 | CHF 2'900 | Galgenen (Allmeindstrasse 12, 15, Untergasse 1, Untergasse 10) — 4 Adressen, identisch (2 davon 21.07.2026 Run 83) |
| 20 | CHF 35'500 | CHF 3'200 | Galgenen (Obergasse 10) — 21.07.2026, Run 83 |
| 22 | CHF 37'900 | CHF 3'400 | Freienbach (Blumenweg 1, 3), Galgenen (Allmeindstrasse 10, Untergasse 12), Siebnen (Aabächliweg 5) — 5 Adressen, identisch |
| 24 | CHF 40'300 | CHF 3'600 | Galgenen (Obergasse 12) — 21.07.2026, Run 83 — Übergangsbereich Segment 1/2, siehe Anmerkung unten |
| 30 | CHF 46'200 | CHF 4'100 | Galgenen (Altersheimstrasse 22) — 21.07.2026, Run 83 — Übergangsbereich, passt bereits leicht besser zu Segment 2 |
| 33 | CHF 48'300 | CHF 4'300 | Pfäffikon SZ (Etzelstrasse 10) — 20.07.2026, Run 82 |
| 41 | CHF 54'000 | CHF 4'800 | Pfäffikon SZ (Bahnhofstrasse 11) — 20.07.2026, Run 82 |
| 44 | CHF 56'100 | CHF 5'000 | Pfäffikon SZ (Bahnhofstrasse 13) — 20.07.2026, Run 82; Freienbach (Postweg 5) — identischer Wert, 21.07.2026 Run 83 |
| 48 | CHF 58'300 | CHF 5'200 | Pfäffikon SZ (Alte Landstrasse 3) |
| 50 | CHF 59'200 | CHF 5'300 | Pfäffikon SZ (Etzelstrasse 103) — 20.07.2026, Run 82 |
| 51 | CHF 59'800 | CHF 5'400 | Lachen SZ (Zürcherstrasse 1, 10), Pfäffikon SZ (Bahnhofstrasse 1) — 3 Adressen, identisch, 20.07.2026, Run 82 |
| 72 | CHF 72'300 | CHF 6'500 | Pfäffikon SZ (Etzelstrasse 101) — 20.07.2026, Run 82 |
| 74 | CHF 73'400 | CHF 6'600 | Galgenen (Allmeindstrasse 1, Untergasse 13) — 2 Adressen, identisch (2. davon 21.07.2026 Run 83) |
| 76 | CHF 74'600 | CHF 6'700 | Freienbach (Grützenstrasse 1) — 21.07.2026, Run 83 |
| 78 | CHF 75'800 | CHF 6'800 | Pfäffikon SZ (Bahnhofstrasse 14) — 20.07.2026, Run 82 |
| 86 | CHF 80'600 | CHF 7'200 | Freienbach (Grützenstrasse 2) — 21.07.2026, Run 83 |
| 107 | CHF 94'800 | CHF 8'500 | Pfäffikon SZ (Churerstrasse 103) — 20.07.2026, Run 82 |
| 144 | CHF 115'500 | CHF 10'300 | Pfäffikon SZ (Bahnhofstrasse 16) — 20.07.2026, Run 82 |
| 162 | CHF 127'400 | CHF 11'400 | Galgenen (Schulstrasse 3) — 21.07.2026, Run 83 |
| 168 | CHF 130'300 | CHF 11'700 | Pfäffikon SZ (Churerstrasse 101) — 20.07.2026, Run 82 |
| 188 | CHF 142'100 | CHF 12'700 | Galgenen (Altersheimstrasse 12) — 21.07.2026, Run 83 |
| 202 | CHF 150'400 | CHF 13'500 | Galgenen (Obergasse 14a) — 21.07.2026, Run 83 |
| 290 | CHF 184'100 | CHF 16'500 | Galgenen (Schulstrasse 1) — 21.07.2026, Run 83 — **Ausreisser**, liegt ca. 10 % UNTER der Segment-2-Formel-Vorhersage (Formel sagt ca. CHF 204'000 voraus, real sind es CHF 184'100); vermutlich Grossobjekt/Sonderfall (grosses MFH o.ä.) mit degressiv tieferem Grenzsatz, nicht in die Regression einbezogen |

\* kW wie zuvor aus dem kantonalen Förderbeitrag zurückgerechnet: kW = (Förderbeitrag − 4'000)/200
([[foerderprogramm-energie-sz-2026]]). Zusätzlich seit 21.07.2026 (Run 83) direkt aus der
Preisindikationsseite auch der **Energiepreis/Jahr** ablesbar (bisher nur Grundgebühr erfasst) —
z.B. 16 kW: Energiepreis CHF 4'500/Jahr; 74 kW: CHF 20'600/Jahr; 202 kW: CHF 56'300/Jahr; skaliert
plausibel mit kW, aber noch nicht systematisch regressiert (kleinere Nebenpriorität).

**Zentraler Befund: die lineare Näherung ist erhärtet — und zugleich präzisiert.** Bei
identischem rückgerechnetem kW-Wert liefert das Tool an unterschiedlichen Adressen/Gemeinden
den **exakt identischen** Investitionsbeitrag und die exakt identische Grundgebühr (5× bei 10 kW,
4× bei 22 kW, je 2× bei 16 und 18 kW) — das ist kein Zufall, sondern ein starkes Indiz für eine
echte, wenn auch nicht publizierte, nach Anschlussleistung **gestaffelte Tarifformel** (kein
Einzelfall-Schätzwert). Der Energiepreis/die Betriebskosten variieren dagegen bei gleichem kW
leicht zwischen Objekten (z.B. bei 10 kW: Energiepreis CHF 1'700–2'800/Jahr je nach Adresse) —
das deutet auf eine zweite, von der Anschlussleistung unabhängige Flächen-/Verbrauchsschätzung
("Ausmass") hin, die laut Tool-Methodik ("Verbräuche, Anschlusswerte und Ausmass wurden auf
Grund von Benchmarks berechnet") separat in die Kalkulation einfliesst.

Lineare Regression über die inzwischen 30 kW-Stufen (21.07.2026, Run 83, eigener Python-OLS-
Berechnungsschritt) zeigt weiterhin eine **degressive Zwei-Segment-Struktur** (nicht eine
einzige Gerade über den gesamten Bereich), jetzt aber deutlich dichter gestützt und bis in den
Grossobjekt-/Pflegeheim-Massstab (>150 kW) verifiziert:

- **Segment 1 (10–22 kW, erweitert auf 8 Stützpunkte per 21.07.2026 Run 83 — neu: 13, 14, 15, 20 kW
  ergänzt, Residuen < CHF 280, < 1 %):** Investitionsbeitrag ≈ CHF 7'471 + CHF 1'396 × kW;
  Grundgebühr ≈ CHF 700 + CHF 123 × kW·Jahr (nahezu unverändert ggü. der alten 6-Stützpunkte-
  Formel CHF 7'540 + 1'390×kW — bestätigt die Stabilität). Einzelne Stützpunkte treffen die
  Formel exakt (14 kW: CHF 27'000 vorhergesagt = CHF 27'000 beobachtet).
- **Segment 2 (33–202 kW, erweitert auf 14 Stützpunkte per 21.07.2026 Run 83 — neu: 74, 76, 86,
  162, 188, 202 kW ergänzt, Residuen bis CHF 1'280, < 1.5 %):** Investitionsbeitrag ≈
  CHF 29'110 + CHF 602 × kW; Grundgebühr ≈ CHF 2'604 + CHF 54.0 × kW·Jahr (praktisch identisch zur
  Run-82-Formel CHF 29'080 + 603×kW — die Formel ist damit über einen mehr als 6-fach breiteren
  kW-Bereich als am 20.07.2026 stabil bestätigt, inkl. Grossobjekt-Grössenordnung 162-202 kW, die
  in etwa der Anschlussleistung eines mittleren Pflegeheims/Mehrfamilienhaus-Ensembles entspricht).
  **Transitionszone präzisiert:** 24 kW passt weiterhin klar zu Segment 1 (Segment-1-Formel Δ 1.5 %
  vs. Segment-2-Formel Δ 8 %), 30 kW dagegen bereits leicht besser zu Segment 2 (Δ 2 % vs. Δ 7 % bei
  Segment 1) — der Übergang liegt damit enger eingegrenzt zwischen ca. 24 und 30 kW (vorher nur grob
  "ca. 20–22 kW" vermutet). Ein einzelner Ausreisser bei 290 kW (Galgenen Schulstrasse 1, CHF 184'100
  brutto vs. CHF 204'000 Formel-Vorhersage, ca. 10 % Abweichung) wurde bewusst NICHT in die Regression
  einbezogen — bei Anschlussleistungen weit über dem bisherigen Sample nimmt die Formel-Unsicherheit
  wieder zu, vermutlich weil dort andere Tarifstufen oder objektspezifische Sonderkonditionen (grosses
  MFH/Gewerbeobjekt) greifen.

Die tiefere Grenzrate oberhalb von ca. 20–22 kW ist strukturell **analog zur publizierten Formel
von Agro Energie Schwyz** (dort explizit zweistufig: CHF 800/kW bis 20 kW, CHF 380/kW ab 20 kW) —
das stützt die Plausibilität der hier abgeleiteten Zwei-Segment-Formel zusätzlich, auch wenn sie
bei Energie Ausserschwyz nirgends offiziell als Text-Formel publiziert ist.

**Verfügbarkeit ist stark strassenzugsspezifisch, nicht gemeindeweit.** Von den zusätzlich
geprüften Adressen meldete das Tool bei folgenden Strassenzügen "Leider ist für Ihre Adresse
zurzeit keine Fernwärme verfügbar" (Netz dort noch nicht gebaut/geplant): Wollerau
(Allenwindenstrasse 10/12/35, 4 Adressen geprüft), Pfäffikon SZ (3-Eidgenossen-Strasse 3/11,
im Gegensatz zur nahen Alte Landstrasse, die verfügbar ist), Altendorf (Abschlachtweg 2/7/8/21,
im Gegensatz zu Acherenboden 1), Siebnen (Aabächliweg 1/2/3/4, im Gegensatz zu Aabächliweg 5).
Für "Feusisberg" als Ortsname lieferte die Adresssuche keine Treffer; der zur Gemeinde Feusisberg
gehörende Ortsteil Schindellegi führt postalisch unter "8808 Pfäffikon SZ" und wurde nicht separat
auf Strassenebene geprüft. Das Netz ist damit auch innerhalb einer PLZ/Gemeinde lückenhaft — bei
jeder Bauherren-Anfrage die exakte Adresse im Tool prüfen, nicht die Gemeindezugehörigkeit als
Verfügbarkeitsindikator werten.

**Klärung Ingenbohl/Brunnen:** Diese Gemeinde gehört gemäss Web-Recherche (17.07.2026) zum
Versorgungsgebiet von **Agro Energie Schwyz** (Talkessel-Schwyz-Netz zusammen mit Schwyz,
Morschach, Steinen — Grossabnehmer Swiss Holiday Park Morschach 1'700 kW, Kloster Ingenbohl
1'100 kW), **nicht** zu Energie Ausserschwyz. Der Live-Richtpreisrechner (nur für das
March-/Höfe-Gebiet von Energie Ausserschwyz) ist für Ingenbohl/Brunnen damit das falsche
Werkzeug; dort gilt die bereits oben dokumentierte allgemeine Tarifformel von Agro Energie
Schwyz. Agro Energie Schwyz selbst betreibt kein vergleichbares Live-Richtpreis-Tool.

**Einordnung ggü. den anderen SZ-Verbünden (EFH ~12 kW):** Ausserschwyz netto CHF 17'800 (nach
kantonaler Förderung) liegt deutlich unter Agro Energie Schwyz (CHF 32'306, vor
Erschliessungsvorteil, vor Förderabzug) und ewz Zürich (CHF 32'098 P3 Neubau) — plausibel, weil
die Ausserschwyz-Zahl bereits die Förderung abzieht; rechnet man die Förderung bei Agro/ewz
ebenfalls ab, verkleinert sich der Abstand deutlich, bleibt aber bestehen.

**Weiterhin unbekannt:** eine offiziell als Text/Preisblatt publizierte Tarifformel (die hier
abgeleitete Formel ist eine belegte, aber vom Tool-Output rückgerechnete Näherung, keine
zitierte Anbieter-Formel); die genaue Zusammensetzung des "Investitionsbeitrags" (Grabarbeiten/
Trassemeter analog Agro Energie Schwyz nicht separat ausgewiesen).

⚠ Eine Sekundärquelle (dein-heizungsbauer.de/heizung.de-Portale) verortet den bereits bei Agro
Energie Schwyz als unbelegt verworfenen Wert "EFH 10 kW ≈ CHF 18'000" mit Stand 2019 **auch** bei
Energie Ausserschwyz — an keiner Primärquelle (Preisblatt/Website) auffindbar; dass dieselbe Zahl
bei zwei verschiedenen SZ-Verbünden kursiert, stützt den Verdacht, dass es sich um eine generische,
nicht anbieterspezifische Schätzung von Vergleichsportalen handelt. **Nicht verwenden.** Zum
Vergleich: die hier belegte 10-kW-Stufe liegt bei CHF 21'300 brutto (vor Förderabzug) bzw.
CHF 15'300 netto (nach Förderabzug CHF 6'000) — beides deutlich über dem kursierenden CHF-18'000-Wert.

**Sampling-Versuch 18.07.2026 (Run T6) — eine neue Adresse, danach Server-Ausfall des Tools
(bestätigter Negativbefund für diesen Tag):** Der Live-Richtpreisrechner wurde erneut angesteuert,
um Segment 2 (22–74 kW, bisher nur 3 Stützpunkte) mit weiteren Adressen nachzuverdichten sowie
Küssnacht/Arth-Goldau erneut auf publizierte Tarife zu prüfen. Ergebnis:

- Die Adresssuche (`GET /heating/?q=Seestrasse`) lieferte zunächst zwei Treffer in **Bäch SZ**
  (Gemeinde Freienbach, PLZ 8806): "Seestrasse" (Objekt-ID 191956428) und "Seestrasse 101"
  (Objekt-ID 243839). Beide Preisindikationsseiten (`GET /heating/?id=<ID>`) zeigten uebereinstimmend:
  **"Leider ist für Ihre Adresse zurzeit keine Fernwärme verfügbar"** — Bäch SZ ist damit ein
  weiterer, bisher nicht dokumentierter Strassenzug ohne aktuelle Netzverfügbarkeit (ergänzt die
  bereits unten dokumentierte Lückenhaftigkeits-Liste).
- Alle danach gestellten Suchanfragen (`Bahnhofstrasse Reichenburg`, `Zürcherstrasse Reichenburg`,
  `Dorfstrasse Buttikon`, `Chappelistrasse Wilen`, `Bahnhofstrasse Siebnen`, `Poststrasse Lachen`,
  sowie ein Re-Test des zuvor funktionierenden Begriffs `Blumenweg`/`Seestrasse`) lieferten
  durchgehend **HTTP 500 "Server Error"** — reproduziert über mehrere frische curl-Sessions (neue
  Cookies/CSRF-Token je Versuch, mehrere Wiederholungen mit Wartezeit) UND unabhängig über das
  WebFetch-Werkzeug (ebenfalls HTTP 500 ohne Response-Body). Da der Fehler sowohl über curl als
  auch über ein technisch unabhängiges Fetch-Werkzeug auftrat, ist er dem **Server von Energie
  Ausserschwyz zuzuordnen, nicht der eigenen Abfrage-Methode** (kein Formatierungs-, Header- oder
  Session-Problem auf unserer Seite). Damit konnte am 18.07.2026 kein zusätzlicher Preis-Stützpunkt
  für Segment 2 gewonnen werden — bestätigter, dokumentierter Negativbefund für diesen Tag (nicht
  gleichzusetzen mit einer dauerhaften Nichtverfügbarkeit des Tools; bei der nächsten Recherche
  erneut versuchen, idealerweise mit gezielten Adressen im 30–60-kW-Bereich für Segment 2).

**Ursache des HTTP-500-Fehlers gefunden und behoben (20.07.2026, Run 82) — der Server-Ausfall vom
18.07.2026 war KEIN dauerhaftes Problem.** Isolierter curl-Test mit verschiedenen Header-
Kombinationen zeigt: die Such-Route `GET /heating/?q=<Adresse>` verlangt serverseitig den
htmx-Marker-Header `HX-Request: true` (das Suchfeld auf der eingebetteten Seite triggert diesen
Header selbst per `hx-get`/`hx-trigger`); ohne ihn wählt die Django-Anwendung einen Codepfad, der
zuverlässig HTTP 500 wirft — reproduziert und wieder aufgelöst. Die Preis-Route (`?id=<Objekt-ID>`)
braucht diesen Header nicht (funktionierte deshalb immer schon per einfachem curl). **Merksatz für
künftige Abfragen:** Adress-Suche zwingend mit `-H "HX-Request: true"`, Preisabfrage ohne
Sonder-Header.

Mit dem Fix liess sich der Rechner am 20.07.2026 erneut befragen (11 neue Adressen in Lachen/
Pfäffikon SZ) — Ergebnis oben in die Sampling-Tabelle und die Segment-2-Regression eingearbeitet.
**Tariflogik seit 17.07.2026 unverändert:** vier Wiederholungen bereits bekannter Stützpunkte
(10 kW, 18 kW) lieferten exakt identische Beträge. **Kreuzvalidierung der Adress-Unabhängigkeit
erneut bestätigt:** kW 51 liefert an drei Adressen in zwei Gemeinden (Lachen, Pfäffikon) exakt
denselben Betrag.

**Klärung der drei Run-82-Beobachtungen (21.07.2026, Run 83):**

**1. Galgenen Bodenwiesweg — echte Netzlücke, kein Daten-/Mapping-Fehler.** Um zu klären, ob
"Bodenwiesweg keine Fernwärme verfügbar" ein Adress-Mapping-Problem oder ein reales Ausbau-Loch
ist, wurde die Adress-Suche zunächst mit Varianten wiederholt (`q=Bodenwiesweg`, `q=Bodenwiesweg
Galgenen`) — beide liefern konsistent dieselben 5 Objekt-IDs (Bodenwiesweg 3/5/6/6/7, davon eine
Adresse mit zwei IDs, vermutlich Alt-/Neubestand), **alle 5 mit identischem Resultat "keine
Fernwärme verfügbar"**. Um echte Verfügbarkeit im übrigen Galgenen zu prüfen, wurde die reale
Strassenliste von Galgenen aus OpenStreetMap/Overpass bezogen (78 Strassen) und gezielt gegen den
Rechner getestet: **Schulstrasse, Untergasse, Obergasse und Altersheimstrasse (Dorfkern-Strassen,
alle im direkten Umfeld des Schulhauses/Altersheims) liefern durchgehend reale Preisindikationen**
(17 von 17 getesteten Hausnummern verfügbar, nur Obergasse 17 "nicht verfügbar"). **Verdikt:
geklärt, keine Störung.** Bodenwiesweg ist ein reales, noch nicht erschlossenes Wohnquartier am
Siedlungsrand, während der historische Dorfkern von Galgenen (wo auch die Energiezentrale steht)
bereits vollständig ans Netz angeschlossen ist — konsistent mit dem bereits dokumentierten Muster
"strassenzugsspezifisch, nicht gemeindeweit". Die 17 neuen Dorfkern-Adressen lieferten zugleich
wertvolle neue Stützpunkte für die Segment-1/2-Regression (siehe Tabelle oben und unten), inkl.
zweier grosser Objekte (Schulstrasse 1 mit 290 kW, Obergasse 14a mit 202 kW) — vermutlich
Schulhaus/Altersheim/grössere Mehrfamilienhäuser im Dorfzentrum.

**2. Freienbach "ab 2028" vs. reale Preisdaten — kein Widerspruch, sondern unvollständiges
Factsheet-Bild.** Um die Pilotanschluss-Hypothese zu prüfen, wurden über OSM/Overpass reale
Freienbach-Strassen ermittelt und getestet: **Postweg 5 sowie Grützenstrasse 1/2/4a/12/14 liefern
allesamt reale Preisindikationen** (5 weitere Adressen zusätzlich zum bereits bekannten Blumenweg,
macht mind. 3 verschiedene Strassenzüge mit total 9 real abgefragten, verfügbaren Freienbach-
Adressen). Eine gezielte Gegenprobe in **Bäch SZ** (postalisch eigener Ortsteil der Gemeinde
Freienbach, PLZ 8806) zeigt dagegen konsequent "keine Fernwärme verfügbar" (Bächaustrasse
12/13/15/17/1a, zusätzlich zur bereits am 18.07.2026 geprüften Seestrasse — macht 6 von 6
getesteten Bäch-Adressen ohne Verfügbarkeit). Eine ergänzende Web-Recherche zu älteren EASZ-
Factsheets zeigt zudem: bereits das Factsheet Stand August 2023 nannte "Freienbach ab 2026" (nicht
2028), und ein EASZ-Newsartikel vom 12.12.2024 ("Bis zu 24 Baustellen gleichzeitig in Betrieb")
beschreibt den Leitungsbau explizit als "von Pfäffikon in Richtung Freienbach" fortschreitend —
Pfäffikon war zu diesem Zeitpunkt bereits grösstenteils erschlossen. **Verdikt: geklärt, kein
Widerspruch.** Das Freienbach-Dorfzentrum (unmittelbar an Pfäffikon angrenzend, gleicher
Siedlungskörper am See) wurde als Erweiterung des Pfäffikon-Netzes bereits ab ca. 2025/26
erschlossen — konsistent mit der 2023er-Factsheet-Angabe "ab 2026" — während der im Feb-2026-
Factsheet genannte Wert "ab 2028" sich vermutlich auf die vollständige, gemeindeweite Erschliessung
inkl. der räumlich abgesetzten Ortsteile (insbesondere Bäch, das nachweislich noch nicht am Netz
ist) bezieht. Das ist keine Pilotanschluss-Ausnahme, sondern derselbe strassenzugsspezifische
Ausbau-Mechanismus, der bei allen anderen Gemeinden bereits dokumentiert ist — bei einer
Freienbach-Adresse also immer die exakte Strasse im Rechner prüfen, nicht die "ab 2028"-Angabe
des Factsheets als pauschale Absage werten.

**3. Pfäffikon SZ, Churerstrasse 100/104 — Sonderfall geklärt ✓ 2026-07-22 (Mac Mini Nachtschicht).**
Ursache war kein Tool-Fehler, sondern schlicht eine unvollständige Objekt-ID-Abfrage: die frühere
Beobachtung («weder Preis- noch nicht-verfügbar-Block») kam zustande, weil die `?id=`-Route mit
dem htmx-Header `HX-Request: true` (der nur für die `?q=`-Suchroute nötig ist, vgl. T6) lediglich
einen leeren 2-Byte-Fragment-Rumpf liefert. Ohne diesen Header liefert `?id=` die vollständige
Seite (37 kB) inkl. Verfügbarkeits-/Preisblock. Direkt abgefragt (`curl` ohne HX-Request-Header,
Objekt-IDs 245489/245496 über die Adress-Suche ermittelt): beide Adressen zeigen **«Fernwärmeanschluss
möglich»** UND **«Fernwärmeanschluss ab 2024 geplant»** — der Rechner kennt also einen dritten
Verfügbarkeitsstatus zwischen «verfügbar» (mit Preis) und «nicht verfügbar»: **angekündigt/geplant,
noch ohne Preisberechnung**, deshalb bleibt die Preisindikation leer, obwohl der Anschluss möglich
ist. Sonderfall damit vollständig aufgeklärt, kein weiterer Rechercheaufwand nötig. Merksatz für
künftige Läufe: bei der `?id=`-Pricing-Route **kein** `HX-Request`-Header setzen (Gegenteil der
`?q=`-Suchroute).

### Vertragsdauer und Kündigungsfrist — die drei SZ-Fernwärme-Verbünde (Primärquellen 17.07.2026)

**Agro Energie Schwyz AG** ("Reglement für die Abgabe von Fernwärme", Ausgabe 31.07.2022, Art. 5
"Vertragsabschluss / Vertragsauflösung / Eigentümerwechsel"): Die Vertragsdauer wird **nicht** als
fixer Wert im Reglement vorgegeben, sondern individuell in der Anschlussofferte festgelegt — die
Offerte enthält gemäss Reglement ausdrücklich "die Vertragsdauer" als eigenen Punkt neben
Leistung, Verwendungszweck, Anschlussgebühr und geschätzten Betriebskosten. Kündigung aus
wichtigem Grund ist beidseitig mit **6 Monaten** Frist möglich (wichtiger Grund insbesondere:
Vertragsverletzung trotz Mahnung/Nachfrist). Der Bezüger kann den Wärmelieferungsvertrag zudem
**jederzeit mit einer Kündigungsfrist von 2 Jahren** vorzeitig auflösen; dabei schuldet er der
AES die Nachzahlung des indexierten Grundpreises für jedes nicht erfüllte Vertragsjahr. Bei
Verkauf der Liegenschaft ist der Vertrag zwingend auf den Käufer zu übertragen. Reglements-
/Tarifänderungen sind mit 30 Tagen Vorankündigung jeweils per 1. Oktober möglich.

**Energie Ausserschwyz AG** ("Allgemeine Geschäftsbedingungen (AGB) für Fernwärme", V5.0,
Ausgabe April 2024, Art. 4 "Vertragsbeginn, Vertragsdauer und Vertragskündigung"): **Feste
Vertragsdauer von 20 Jahren** ab Beginn der Wärmelieferung. Danach stillschweigende Verlängerung
um jeweils weitere **5 Jahre**, sofern nicht eine Partei mit eingeschriebenem Brief und **1 Jahr**
Kündigungsfrist auf das Ende der (verlängerten) Vertragsdauer kündigt. Der Kunde kann zusätzlich
jederzeit mit **1 Jahr** Frist vorzeitig kündigen; auch hier schuldet er dann die Nachzahlung des
indexierten Grundpreises für jedes nicht erfüllte Vertragsjahr — analoge Regel wie bei Agro
Energie Schwyz, dort aber mit 2 statt 1 Jahr Frist. Bei Auflösung des Anschlusses zusätzlich
Rückbaukosten zulasten Kunde, kein Anspruch auf Rückerstattung des Investitionsbeitrags (Art. 2.6).
Wärmebezugspflicht: ausschliesslicher Bezug von der EASZ während der Vertragsdauer (Ausnahmen nur
für kleine Solar-/Abwärme-/Zusatzanlagen ohne Netzanschluss, analog Agro Energie Schwyz).

**Energie Einsiedeln AG:** Kein öffentliches AGB-/Reglement-Dokument zur Vertragsdauer
auffindbar — geprüft wurden die Website (`energie-einsiedeln.ch/fernwaerme/`), sämtliche dort
verlinkten PDF (Preisblatt, Ausbauplanung, Förderprogramm, Offerteformular, Energiefonds-
Reglement — keines davon regelt die Fernwärme-Vertragsdauer) sowie eine gezielte
`site:energie-einsiedeln.ch`-Suche nach AGB/Reglement/Vertragsbedingungen. **Bestätigter
Negativbefund**, ergänzt den bereits dokumentierten Negativbefund zum Anschlussbeitrag.

**Einordnung:** Die 20-jährige Erstlaufzeit bei Energie Ausserschwyz ist deutlich länger als die
in der ZH-KB dokumentierte Erstlaufzeit von Energie 360° (10 Jahre, nicht primärverifiziert) und
strukturell strenger als bei Agro Energie Schwyz (dort keine feste Mindestdauer im Reglement,
dafür kürzere 2-Jahres-Ausstiegsfrist statt 1 Jahr). Für Bauherren im March-/Höfe-Gebiet ist die
20-Jahres-Bindung ein materieller Fakt für die Investitionsentscheidung Fernwärme vs. Wärmepumpe
und sollte vor Vertragsunterzeichnung explizit angesprochen werden — bei Agro Energie Schwyz ist
die tatsächliche Laufzeit dagegen erst aus der individuellen Offerte ersichtlich, nicht aus dem
Reglement.

### Wärmeverbund Küssnacht am Rigi (EBL Energie Rigi, vormals ECOGEN Rigi Genossenschaft/AGRO
Energiezentrum Rigi) und Wärmeverbund Arth-Goldau (ECOGEN Arth-Goldau Genossenschaft) — beide
recherchiert 15.07.2026, kein Tarifblatt öffentlich

Beide Verbünde existieren real und sind im Ausbau (EBL Energie Rigi: Spatenstich für einen
weiteren Bauabschnitt am 20.07.2026 in Küssnacht, Gebiete Seeplatz/Grepperstrasse; ECOGEN
Arth-Goldau: Aufbauprojekt, Fernwärme soll laut Lokalpresse "in zwei Jahren" fliessen). **Keine
CHF-Zahl zu Anschlusskosten oder Tarifen ist auf den offiziellen Seiten publiziert** — beide
verweisen auf eine individuelle Offerte ("Offerte anfragen").

**2. Bestätigung 18.07.2026 (Run T6):** Erneute gezielte Prüfung per WebSearch + WebFetch —
`ebl-rigi.ch/fernwaerme` (Fernwärme-Hauptseite Küssnacht), das dort verlinkte FAQ-PDF
"2025.04_FAQ EBL Energie Rigi.pdf" sowie `ecogen-genossenschaft.ch/arth-goldau/` (Hauptseite
Arth-Goldau). Ergebnis unverändert: EBL Energie Rigi wirbt nur mit "Transparente Tarife und
langfristige Preisstabilität" ohne Zahlen und verweist auf Telefon/Mail für eine individuelle
Offerte; das FAQ-PDF enthält keine CHF-Beträge zu Grundpreis/Arbeitspreis/Anschlussbeitrag.
ECOGEN Arth-Goldau nennt weiterhin nur die Begriffe "Vorzugspreise" (Frühbucher) und
"Genossenschaftspreise" sowie "einmalige Anschlusskosten" als Vorteil, ohne einen einzigen
CHF-Betrag zu nennen. **Bestätigter Negativbefund (2. Bestätigung)** — für beide Verbünde bleibt
nur der Weg über eine individuelle Offertanfrage.
Strukturelle Besonderheit Arth-Goldau: **genossenschaftliches Modell** — der Anschluss macht die
Liegenschaft automatisch zum Genossenschaftsmitglied, die einmaligen Anschlusskosten werden als
Energieanteile (nicht als reiner Kaufpreis) verbucht; ein "Sorglos"-Vorabanschluss-Produkt sichert
den Fernwärmebezug bereits vor Fertigstellung der Quartierleitung. Küssnacht (EBL) wurde 2026
organisatorisch von der EBL-Gruppe übernommen (vormals zwei getrennte Rechtsträger ECOGEN Rigi
Genossenschaft + AGRO Energiezentrum Rigi AG) — Tarifstruktur der Übernahme nicht separat publiziert.

Ergänzend gefunden: ein älteres (Stand 02/2017), separates Infoblatt der **Energieverbund
Einsiedeln AG** (c/o Kuriger Treuhand AG — ein anderer Rechtsträger als das oben zitierte
"Energie Einsiedeln AG"-Preisblatt 2025, vermutlich Vorläufer-/Schwestergesellschaft für das
klosternahe Netz) nennt eine konkrete, alte Anschlussgebühren-Formel: **100 CHF/kW
Anschlussleistung, mindestens CHF 5'000**, gestaffelter Grundpreis 145–180 CHF/kW·Jahr je nach
Anschlussleistungsband, Arbeitspreis damals 9.0 Rp./kWh. Wegen des Alters (2017, vor der bereits
zitierten 2025er-Quelle mit 11.53 Rp./kWh) nur als grobe historische Orientierung verwendbar, nicht
als aktueller Anschlusspreis — schliesst die Einsiedler Anschlussbeitrags-Lücke nicht wirklich,
zeigt aber, dass die Grössenordnung (~100 CHF/kW, Mindestbetrag CHF 5'000) deutlich unter dem
Agro-Energie-Niveau (20'676 + 800/kW) liegen könnte, falls die Formel von 2017 noch gilt — das ist
unbestätigt und explizit als Annahme markiert.

### Einordnung SZ

Die Anschlussgebühr von Agro Energie Schwyz liegt in derselben Grössenordnung wie der ewz-
Anschlussbeitrag P3 in der Stadt Zürich (EFH rund CHF 32'000); der Arbeitspreis (14.20 Rp./kWh)
liegt deutlich über dem ewz-Wert (8.06–9.67 Rp./kWh), Einsiedeln liegt mit 11.53 Rp./kWh
dazwischen. Der oft zitierte Wert "rund CHF 18'000 für ein EFH mit 10 kW" liess sich an keiner
Primärquelle bestätigen und widerspricht der publizierten Formel (10 kW → CHF 30'583 indexiert,
vor Erschliessungsvorteil-Abzügen: CHF 30'598) — nicht verwenden.

## Bauherren-Transfer

Für die Stadt Zürich (Wärmeverbund KVA und Holz): einmalig Anschlussbeitrag CHF 31'000–32'000
(EFH) bzw. CHF 40'000–45'000 (MFH, standardisierter Richtwert), laufend CHF 3'200–3'500/Jahr
(EFH) bzw. CHF 11'700–13'300/Jahr (MFH), exkl. CO2-Abgabe/MWST. Vertragsdauer vor Unterschrift
explizit erfragen (nicht in AGB fixiert). Ein sauberer Investitionsvergleich mit der eigenen
Wärmepumpe müsste den Anschlussbeitrag P3 den kompletten WP-Anlagekosten (Bohrung/Gerät/
Installation) gegenüberstellen. Besteht eine rechtliche Anschlusspflicht (§ 295 PBG ZH bzw.
kommunale Übergangsfrist, siehe [[fernwaerme-anschlusspflicht-zh]]), besteht Wahlfreiheit meist
nur innerhalb der Übergangsfrist.

Für den Kanton Schwyz (Talkessel Schwyz, Agro Energie): einmalig rund CHF 32'000 (EFH 12 kW) bzw.
CHF 55'000 (MFH 55 kW), abzüglich Erschliessungsvorteil (bis CHF 6'700) und des bis 31.12.2026
befristeten Jubiläumsrabatts (bis CHF 3'000); laufend rund CHF 3'900/Jahr (EFH) bzw. CHF 19'300/Jahr
(MFH), exkl. MWST. Achtung: die Grabarbeiten und die Zuleitung ab Parzellengrenze (600–800 CHF/m)
sind darin NICHT enthalten und können bei abgesetzter Lage schnell fünfstellig werden — bei jeder
SZ-Fernwärme-Offerte die Trassemeter separat abfragen. In Einsiedeln und in der Ausserschwyz ist
der Anschlussbeitrag nicht als Text-Formel publiziert (individuelle Offerte); dort ist zusätzlich
der kantonale Förderbeitrag CHF 4'000 + 200/kW einzurechnen. Für das March-/Höfe-Gebiet (Energie
Ausserschwyz) liefert der öffentlich zugängliche Live-Richtpreisrechner (klickstrecke.energie-
ausserschwyz.ch) für die konkrete Adresse einen belastbaren Richtwert, wenn dort bereits Netz
verfügbar ist (Verfügbarkeit ist strassenzugsspezifisch, nicht gemeindeweit, vorher prüfen);
rückgerechnet aus inzwischen 30 Adressen (Stand 21.07.2026) liegt der Investitionsbeitrag bis rund
24-30 kW bei rund CHF 7'500 + CHF 1'400/kW, darüber degressiv bei rund CHF 600/kW zusätzlich (jetzt
bis 202 kW verifiziert, d.h. auch für Grossobjekte/Pflegeheim-Grössenordnung belastbar; ein
Einzelpunkt bei 290 kW weicht davon ab und bleibt Ausreisser). Bei der Vertragsdauer bestehen
deutliche Unterschiede: Energie Ausserschwyz bindet **fest auf 20 Jahre** (danach automatische
Verlängerung um je 5 Jahre, Ausstieg mit 1 Jahr Frist gegen Nachzahlung), Agro Energie Schwyz legt
die Dauer individuell in der Offerte fest (Ausstieg mit 2 Jahren Frist gegen Nachzahlung), bei
Energie Einsiedeln ist die Vertragsdauer nicht öffentlich dokumentiert — bei jeder SZ-Fernwärme-
Offerte die Vertragsdauer und die vorzeitige Ausstiegsfrist explizit erfragen und mit der
Nutzungsdauer des Gebäudes abgleichen.

## Offene Punkte

- "Herbst 2024"-Zahlen des Preisüberwachers nicht als eigenständiges PDF gegengelesen.
- watson.ch-Meldung zu Fernwärmetarif 2027 (Fixkosten +3.58 %, Arbeitspreis-Halbierung) konnte
  nicht direkt verifiziert werden — nicht zitierfähig.
- Energie 360° und EKZ Wärme nennen öffentlich keine konkreten CHF-Beträge (nur Struktur).
- Agro-Energie-Grund-/Arbeitspreis nur bis 30.09.2026 gültig — ab Oktober 2026 neu prüfen.
- Energie-Einsiedeln-Preisblatt ist der Jahrgang 2025; ein Preisblatt 2026 war am 14.07.2026 nicht
  auffindbar. Aktueller Anschlussbeitrag Energie Einsiedeln AG (2025er-Rechtsträger) bleibt
  unpubliziert — auch nach Wayback-Prüfung der Preisblätter 2023/2024/2025 (Run 74), bestätigter
  Negativbefund (3. Bestätigung); nur eine 2017er-Formel eines mutmasslichen Vorläufer-
  Rechtsträgers gefunden (siehe oben), nicht als aktuell verwendbar.
- Energie Ausserschwyz: kein offizielles Text-Tarifblatt, aber seit Run 74 + Run T5/T6 + Run 82
  + Run 83 (21.07.2026) **30 reale Preisindikationen** aus dem Live-Richtpreisrechner in 8
  Gemeinden (Freienbach, Lachen SZ, Galgenen, Pfäffikon SZ, Siebnen, Altendorf, Bäch SZ negativ)
  über einen kW-Bereich von 10 bis 290 kW verfügbar; die daraus abgeleitete Zwei-Segment-Formel
  (Segment 1, 10-22 kW, 8 Stützpunkte, Residuen < 1 %; Segment 2, 33-202 kW, 14 Stützpunkte,
  Residuen < 1.5 %, jetzt bis in die Grossobjekt-/Pflegeheim-Grössenordnung verifiziert) ist eine
  belegte, engmaschige Näherung, aber weiterhin KEINE offiziell publizierte Anbieter-Formel. Ein
  Einzelpunkt bei 290 kW (Galgenen Schulstrasse 1) weicht ca. 10 % von der Segment-2-Formel ab und
  bleibt als unerklärter Ausreisser vermerkt (evtl. andere Tarifstufe/Sonderkonditionen jenseits
  von 202 kW — bei Gelegenheit mit weiteren Adressen über 200 kW nachprüfen). Vertragsdauer/Kündigungsfrist bei Agro
  Energie Schwyz (individuell in Offerte, 2 Jahre Ausstiegsfrist) und Energie Ausserschwyz (fest
  20 Jahre + 5-Jahres-Verlängerung, 1 Jahr Ausstiegsfrist) sind jetzt primärquellenbelegt (Art. 5
  Agro-Reglement 2022 bzw. Art. 4 EASZ-AGB 2024). Bei Energie Einsiedeln bleibt die Vertragsdauer
  trotz gezielter Suche (Website, alle verlinkten PDF, site:-Suche) ein **bestätigter
  Negativbefund**.
- Verfügbarkeits-Stichprobe 17.07.2026 zeigt: das Ausserschwyz-Netz ist strassenzugsspezifisch
  lückenhaft, nicht gemeindeweit durchgängig (z.B. Wollerau Allenwindenstrasse, Pfäffikon SZ
  3-Eidgenossen-Strasse, Altendorf Abschlachtweg, Siebnen Aabächliweg 1–4 aktuell ohne
  Fernwärme-Verfügbarkeit laut Tool, obwohl Nachbarstrassen versorgt sind). **Ergänzt 21.07.2026
  (Run 83, jetzt geklärt statt offen):** Galgenen Bodenwiesweg (5 Adressen) ist ebenfalls ohne
  Verfügbarkeit, obwohl der historische Dorfkern (Schulstrasse/Untergasse/Obergasse/
  Altersheimstrasse, 17 Adressen) bereits vollständig versorgt ist — reale Netzlücke, kein
  Mapping-Fehler (Details siehe Abschnitt "Klärung der drei Run-82-Beobachtungen" oben). Ebenso
  Bäch SZ (Ortsteil der Gemeinde Freienbach, PLZ 8806): 6 von 6 getesteten Adressen
  (Bächaustrasse + Seestrasse) ohne Verfügbarkeit, während das Freienbach-Dorfzentrum
  (Blumenweg/Postweg/Grützenstrasse, 9 Adressen) bereits versorgt ist — das löst den ehemaligen
  "Freienbach ab 2028 vs. reale Preisdaten"-Widerspruch auf (kein Pilotanschluss, sondern
  derselbe strassenzugsspezifische Ausbau-Mechanismus). Für "Feusisberg" als
  Ortsname liefert die Adresssuche keine Treffer (Ortsteil Schindellegi läuft unter PLZ Pfäffikon
  SZ, dort nicht separat auf Strassenebene geprüft) — bei Bedarf mit konkreter Strasse
  nachprüfen. Ingenbohl/Brunnen gehört zum Versorgungsgebiet von Agro Energie Schwyz
  (Talkessel-Schwyz-Netz), nicht zu Energie Ausserschwyz — dafür ist kein Live-Tool verfügbar,
  es gilt die bereits dokumentierte allgemeine Agro-Formel.
- Pfäffikon SZ, Churerstrasse 100/104 bleibt weiterhin ein unaufgeklärter Sonderfall (Seite zeigt
  Adresse + Karte, aber weder Preisblock noch "nicht verfügbar"-Text) — am 21.07.2026 nicht erneut
  geprüft, offen für einen künftigen Lauf.
- Wärmeverbünde Küssnacht am Rigi (EBL Energie Rigi) und Arth-Goldau (ECOGEN Arth-Goldau
  Genossenschaft) recherchiert 15.07.2026, **erneut geprüft 18.07.2026 (Run T6, 2. Bestätigung)**:
  **beide existieren, publizieren aber weiterhin keine Tarife** — nur "Offerte anfragen"/
  "Vorzugspreise"/"Genossenschaftspreise" ohne Zahlen. Damit als eigenständige Kostenquelle nicht
  nutzbar, aber immerhin als Ansprechpartner für Bauherren in diesen Gemeinden dokumentiert.
- Energie Ausserschwyz Live-Richtpreisrechner: Versuch am 18.07.2026 (Run T6), Segment 2 (22–74 kW)
  mit weiteren Adressen nachzuverdichten, scheiterte an einem **serverseitigen HTTP-500-Fehler**
  des Tools bei jeder Suchanfrage ausser der ersten (reproduziert über curl mit mehreren frischen
  Sessions UND über WebFetch, also nicht auf der eigenen Abfrage-Methode beruhend). Immerhin ein
  neuer Datenpunkt: **Bäch SZ (Gemeinde Freienbach, Seestrasse) ist ohne Fernwärme-Verfügbarkeit**
  — ergänzt die bereits dokumentierte strassenzugsspezifische Lückenhaftigkeit. Segment-2-
  Nachverdichtung (idealerweise Adressen im 30–60-kW-Bereich) bleibt offen für den nächsten Lauf,
  sobald das Tool wieder stabil antwortet.
- Herkunft/Methodik der bereits in der KB vorhandenen EnergieSchweiz-4'940-CHF-Zahl nicht bis auf
  Eingabeprofil zurückverfolgt.

> **Querbezug KB grobkosten/immobilienbewertung:** Die hier gefuehrten Fernwaerme-Anschluss- und
> Betriebskosten sind BKP-2-Unterpositionen (BKP 24 HLK) und stecken bereits in den aggregierten
> Erstellungskennwerten von `wissen/grobkosten` (CHF/m3 GV, BKP 1-5) und
> `immobilienbewertung/wiki/realwert-sachwert` (BKP 2). **Nicht additiv** zu einem m3-/m2-Aggregat
> aufrechnen (Doppelzaehlung); nur fuer den Komponenten-/Vollkostenvergleich verwenden.

**Backlinks:** [[fernwaerme-anschlusspflicht-zh]] · [[fernwaerme-anschlusspflicht-sz]] ·
[[heizsysteme-vollkostenvergleich-energieschweiz]] · [[waerme-contracting-vertragsmodelle-ch]]
