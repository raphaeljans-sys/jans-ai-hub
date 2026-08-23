---
quelle:
  - "PL - 02_Recht_Norm/06_Richtlinien/Minergie/Vergleich/ME-ME-P-Haus.pdf"
  - "PL - 02_Recht_Norm/06_Richtlinien/Minergie/Vergleich/Qh+Qww-Haus-Abbildung.pdf"
herausgeber: "Verein Minergie (beide Dokumente mit Quellenvermerk «Quelle: Minergie»). Seite 1 der Qh+Qww-Abbildung trägt zusätzlich den Firmenvermerk «Reimann Fredy, Planungsbüro für Energie- & Gebäudetechnik» — vermutlich Ersteller/Aufbereiter der Grafik, nicht Herausgeber der zugrunde liegenden Systematik."
ausgabe: "Kein Ausgabedatum auf den Dokumenten selbst (keine Fusszeile, kein Titelblatt, kein Versionsvermerk). Einziger Datierungs-Hinweis: ME-ME-P-Haus.pdf nennt als Bezugsnorm ausdrücklich «SIA 380/1:2009» — die Grafik referenziert damit die 2009er-Ausgabe von SIA 380/1, die 2016 durch SIA 380/1:2016 abgelöst wurde. Ein amtliches Erscheinungsdatum ist mit den vorliegenden Dokumenten nicht verifizierbar."
gelesen: "2026-08-15, beide PDF vollständig gelesen: ME-ME-P-Haus.pdf (1 Seite) und Qh+Qww-Haus-Abbildung.pdf (2 Seiten). Zusätzlich pdftotext -layout als Gegenprobe für die reine Text-Extraktion; die massgeblichen Inhalte stecken in den Grafiken selbst und wurden per Bildlektüre erschlossen."
datenstand: "⚠ Undatiertes Dokument mit klarem Alters-Indiz: Bezugsnorm SIA 380/1:2009 (heute gültig: SIA 380/1:2016) und eine Minergie-Heizwärmebedarf-Systematik als Prozentsatz DIESER SIA-380/1-Grenzwerte (90 % Minergie / 60 % Minergie-P). Diese Bezugsbasis ist seither zweimal abgelöst worden: zunächst durch den Bezug auf MuKEn 2014 (90 % M / 70 % M-P bei Neubau, siehe [[minergie-standards]]), zuletzt durch den Bezug auf MuKEn 2025 (90 % M und M-A / 70 % M-P, siehe [[minergie-produktreglement-2026-1-muken-vergleich]]). Die Zahlen in diesem Destillat sind damit mit hoher Wahrscheinlichkeit über zehn Jahre alt, in jedem Fall älter als 18 Monate. Der lastModifiedDateTime-Wert aus SharePoint (24.03.2025, identisch bei allen drei Dateien im Ordner «Vergleich») ist erkennbar nur ein Migrations-/Kopierzeitpunkt, kein Erstellungsdatum — hier nur als schwaches Indiz vermerkt, nicht als Beleg. Aktueller Bezugspunkt der KB: Produktreglement MINERGIE/-P/-A Version 2026.1, siehe [[minergie-produktreglement-2026-1-muken-vergleich]]."
status: emerging
last_updated: 2026-08-23
links:
  - [[minergie-standards]]
  - [[minergie-produktreglement-2026-1-muken-vergleich]]
  - [[minergie-p-genese-passivhaus-vergleich-2002]]
  - [[minergie-nachweiskurs-2023-mkz-thge]]
---

# Destillat — Minergie gegen Minergie-P: Bauteil-Vergleich (Einfamilienhaus) und Heizwärmebedarf-Formel

## Das Wichtigste in einem Satz

Ein undatiertes, aber erkennbar altes Minergie-Merkblatt (Bezugsnorm SIA 380/1:2009) stellt am
Beispiel eines Einfamilienhaus-Neubaus Minergie und Minergie-P bauteilscharf gegenüber
(Dämmstärke, Verglasung, Luftdichtigkeit, gewichtete Energiekennzahl) und eine zugehörige
Grafik erklärt, wie sich der Heizwärmebedarf Qh überhaupt aus Verlusten und Gewinnen
zusammensetzt — beide Dokumente sind als **didaktisches Prinzip-Material** weiterhin brauchbar,
ihre **Zahlenwerte selbst sind veraltet** und dürfen nicht in ein aktuelles Projekt übernommen
werden.

## Kernbegriffe, Formeln und Tabellen

### 1. ME-ME-P-Haus.pdf — Bauteilvergleich Neubau Einfamilienhaus

Wörtliche Fussnote der Grafik: **«Vergleich gültig für Neubauten Gebäudekategorie Wohnen
Einfamilienhaus»** — die Tabelle gilt also ausdrücklich nur für diese eine Gebäudekategorie,
nicht für MFH oder Zweckbauten.

| Kriterium | Minergie | Minergie-P |
|---|---|---|
| Erneuerbare Energien | empfohlen | erforderlich |
| Heizwärmebedarf | **90 % Grenzwert SIA 380/1:2009** | **60 % Grenzwert SIA 380/1:2009** |
| Luftdichtigkeit | gut | geprüft |
| Wärmedämmung | 20 cm bis 25 cm | 20 cm bis 35 cm |
| Wärmeschutzverglasung | zweifach | dreifach |
| Wärmeverteilung | übliche Verteilung | Lufterheizung möglich |
| A-Haushaltgeräte | empfohlen | erforderlich |
| Kontrollierte Wohnungslüftung | erforderlich | erforderlich |
| Wärmeleistungsbedarf | keine Anforderung | max. 10 W/m²* (*bei Luftheizung) |
| Gewichtete Energiekennzahl | **38 kWh/m²** | **30 kWh/m²** |

Die Bezugsgrösse der 38/30 kWh/m² wird auf der Grafik selbst **nicht** ausgeschrieben (weder
EBF noch eine andere Fläche steht explizit dabei) — vermutlich ist analog zur übrigen
Minergie-Systematik die Energiebezugsfläche EBF gemeint, das ist mit diesem Dokument allein
aber **nicht** zu belegen (siehe Offene Punkte).

### 2. Qh+Qww-Haus-Abbildung.pdf — die Heizwärmebedarf-Formel als Prinzip-Skizze

Seite 1 zeigt am Gebäudeschnitt die SIA-380/1-Grundgleichung, wörtlich aus der Grafik:

> **Heizwärmebedarf Qh = Energieverluste − Energiegewinne = (Qt + Ql) − (Qs + Qp + Qe)**

Die Bestandteile, mit ihren im Dokument genannten Einflussgrössen:

- **Qt — Transmissionswärmeverluste:** Energieverlust durch Bauteile, abhängig von U-Wert,
  Fläche, Klimarandbedingungen.
- **Ql — Lüftungswärmeverluste:** Energieverlust durch Lüftung, abhängig von Luftwechsel
  (Nutzereinfluss!), Gebäudevolumen, Klimakennwerten.
- **Qs — Gewinn durch Sonneneinstrahlung:** abhängig von g-Wert, Beschattung, Verschmutzung,
  Orientierung (Globalstrahlung).
- **Qp — freie Wärme von Personen.**
- **Qe — freie Wärme von Elektroanlagen.**

Direkt daneben, als Merksatz hervorgehoben: **«Verluste minimieren!»**

Ergänzend zeigt dieselbe Seite, wie aus dem Heizwärmebedarf Qh der **Endenergieverbrauch**
wird: kg Öl, m³ Gas, Ster Holz, kWh Fernwärme oder kWh Elektrizität zur Deckung des Bedarfs Qh
**sowie** der Aufbereitungs-, Speicher- und Verteilverluste (Wirkungsgrad η). Für die Erzeugung
von Warmwasser- **und** Heizenergie zusammen (Qh + Qww) werden dieselben vier Verlustarten
genannt: Aufbereitungsverluste, Verteilverluste, Speicherverluste, Wirkungsgrad η.

Seite 2 zeigt eine rein qualitative Konzeptgrafik (keine Zahlenwerte, keine Achsenskalierung):
mit steigendem **Dämmstandard** (x-Achse «Auswirkungen») steigt der Aufwand für die
**Gebäudehülle** (grüne Kurve, leicht exponentiell zunehmend), während der Aufwand für die
**Haustechnik** (rote Kurve, linear fallend, Beschriftung «Heizleistung, Wärmeverbrauch»)
sinkt. Die Grafik illustriert damit die Substitutionslogik, die auch die Tabelle oben
inhaltlich trägt: eine bessere Hülle senkt die nötige Heizleistung so stark, dass am Ende eine
einfachere, kleinere Haustechnik reicht — bei Minergie-P laut Tabelle so weit, dass eine
**Luftheizung möglich** wird und der Wärmeleistungsbedarf auf **max. 10 W/m²** begrenzt ist.

## Bauherren-Transfer

- **Was «Minergie-P ist strenger» am Einfamilienhaus konkret bedeutet:** Nicht nur ein
  strengerer Heizwärmebedarf-Grenzwert (60 % statt 90 % des damaligen SIA-380/1:2009-Werts),
  sondern eine ganze Kette von Folgeanforderungen: dickere Dämmung (bis 35 statt 25 cm),
  Dreifach- statt Zweifachverglasung, **geprüfte** (gemessene) statt nur «gute»
  Luftdichtigkeit, und A-Geräte als Pflicht statt Empfehlung. Ein Bauherr, der «einfach etwas
  strenger dämmen» will, unterschätzt damit oft, dass Minergie-P ein Bündel von
  Einzelanforderungen ist, kein einzelner verschärfter Wert.
- **Warum eine Luftheizung bei Minergie-P überhaupt eine Option ist:** Die Tabelle nennt es
  direkt («Lufterheizung möglich» statt «übliche Verteilung»), die Konzeptgrafik erklärt das
  Warum — sinkt die Heizlast durch die bessere Hülle so weit (Minergie-P: max. 10 W/m²), lohnt
  sich eine eigenständige Warmwasser-Wärmeverteilung (Radiatoren, Bodenheizung) oft nicht mehr;
  die minimale Restwärme lässt sich über die ohnehin vorhandene Komfortlüftung mitverteilen.
  Das ist ein Investitionsentscheid mit Gewerke-Folgen (kein separates Verteilnetz), der früh
  in der Planung getroffen werden muss.
- **Die Formel Qh = (Qt + Ql) − (Qs + Qp + Qe) als Erklärhilfe, unabhängig vom Standard:** Sie
  eignet sich, um einem Bauherrn verständlich zu machen, warum Fensterorientierung,
  Verschattung, Personenbelegung und sogar die Elektrogeräte-Wärme in die
  Heizwärmebedarfs-Rechnung einfliessen — nicht nur die Dämmstärke. Das relativiert die
  verbreitete Vorstellung, der Heizwärmebedarf hänge allein am U-Wert der Fassade.
- **⚠ Diese Zahlen NIE in eine aktuelle Offerte oder Beratung übernehmen.** Die 90 %/60 %
  SIA-380/1:2009-Bezugsbasis und die 38/30 kWh/m²-Energiekennzahl sind eine überholte
  Rechengrösse. Für ein heutiges Projekt gilt das Produktreglement MINERGIE/-P/-A Version
  2026.1: Heizwärmebedarf 90 % (Minergie/-A) bzw. 70 % (Minergie-P) von **QH,li der MuKEn
  2025** (nicht mehr % von SIA 380/1 direkt), und eine projektspezifisch berechnete
  Minergie-Kennzahl statt eines festen 38/30-Werts — siehe
  [[minergie-produktreglement-2026-1-muken-vergleich]] für die vollständige, aktuell gültige
  Gegenüberstellung.

## Offene Punkte

- **Kein Erscheinungsdatum verifizierbar.** Weder Titelblatt noch Fusszeile noch
  Versionsvermerk nennen ein Datum; die Einordnung «SIA 380/1:2009 als Bezugsnorm, also
  vermutlich 2009 bis 2016 entstanden» ist eine Rückschlussdatierung von JANS, keine Angabe der
  Quelle selbst.
- **Bezugsgrösse der 38/30 kWh/m²-Energiekennzahl nicht ausgeschrieben — ✓ geklärt 23.08.2026
  (E-R134-2), am Dokument selbst weiterhin nicht belegt, an der Systematik ja.** Auf der Grafik
  steht nur «kWh/m²», ohne die Fläche zu benennen. Der Minergie-Glossar (minergie.ch, Eintrag
  «Energiekennzahl», abgerufen 23.08.2026) definiert die Grösse unabhängig vom Einzeldokument
  wörtlich als «Mass für die gesamte, einem Gebäude während eines Jahres netto gelieferte
  Energie, bezogen auf die Energiebezugsfläche (kWh/m²)» — die Minergie-Energiekennzahl ist
  also systemisch immer EBF-bezogen, nicht projekt- oder ausgabespezifisch wählbar. Die Annahme
  «EBF» war damit korrekt, ist aber weiterhin eine Ableitung aus der allgemeinen Systematik, kein
  Zitat aus ME-ME-P-Haus.pdf selbst — das Dokument nennt die Bezugsfläche nach wie vor nicht
  namentlich. Bleibt ohnehin nur von historischem Interesse, da der Wert selbst überholt ist.
- **Autorschaft der Qh/Qww-Abbildung nicht abschliessend geklärt.** Der Firmenvermerk «Reimann
  Fredy, Planungsbüro für Energie- & Gebäudetechnik» auf Seite 1 könnte Ersteller der
  konkreten Grafik-Aufbereitung sein oder nur ein Verweis auf den ursprünglichen
  Schulungskontext (evtl. derselbe Nachweiskurs wie in
  [[minergie-nachweiskurs-2023-mkz-thge]]) — mit den vorliegenden zwei Dokumenten allein nicht
  zu klären.
- **Nur EFH abgedeckt.** Die Tabelle gilt laut eigener Fussnote ausdrücklich nur für «Wohnen
  Einfamilienhaus»; ob eine analoge MFH- oder Zweckbau-Fassung existierte, ist mit diesem
  Fund allein nicht bekannt.
