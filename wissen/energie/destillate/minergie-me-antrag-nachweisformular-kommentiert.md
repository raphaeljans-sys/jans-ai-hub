---
quelle: "PL - 02_Recht_Norm/06_Richtlinien/Minergie/Nachweisformulare/ME-Antrag/ME-Antrag mit Kommentare.pdf"
herausgeber: "Nicht ausgeschrieben. Layout und Feldsystematik (Zeilen E2-E32, L1-L14) entsprechen erkennbar der alten Minergie-Nachweis-Excel-Mappe (Blätter «Eingaben»/«Details je Zone»); die Formulierung der Kommentarfelder («Zwingende Eingabe», «Übertrag aus Blatt Sommer») ist Minergie-Fachsprache, aber ohne Logo/Fusszeile nicht als offizielles Minergie-Dokument zu belegen."
ausgabe: "Kein Ausgabedatum im Dokument. Bezugsnorm ausdrücklich SIA 380/1:2009 (Feld E12/E29: «aus der Berechnung SIA 380/1:2009 übertragen»). Datei-Metadaten: CreationDate 18.04.2010, ModDate 29.04.2010 — als Werkzeugartefakt, nicht als amtliches Erscheinungsdatum gewertet, aber als starkes Alters-Indiz konsistent mit der Bezugsnorm."
gelesen: "2026-08-16, vollständig (2 von 2 Seiten, Bildlektüre der Excel-Screenshots samt Kommentarblasen)."
datenstand: "⚠ Bezugsnorm SIA 380/1:2009 (heute gültig: SIA 380/1:2016), Primäranforderung im Dokument «Minergie: 90 % von Grenzwert SIA 380/1» / «Minergie-P: 60 % von Grenzwert SIA 380/1» — dieselbe, seither zweimal abgelöste Prozentbasis wie in [[minergie-me-vs-me-p-vergleich]]. Der Nachweis läuft heute nicht mehr über eine Excel-Mappe, sondern über die Label-Plattform (siehe [[minergie-produktreglement-2026-1-muken-vergleich]]). Datenstand mit hoher Wahrscheinlichkeit über 15 Jahre alt, in jedem Fall älter als 18 Monate."
status: emerging
last_updated: 2026-08-16
links:
  - [[minergie-me-vs-me-p-vergleich]]
  - [[minergie-produktreglement-2026-1-muken-vergleich]]
  - [[minergie-nachweisformular-2022-set]]
  - [[minergie-standards]]
---

# Destillat — ME-Antrag mit Kommentare: kommentierte alte Minergie-Nachweis-Excel-Mappe

## Das Wichtigste in einem Satz

Ein zweiseitiger Screenshot-Ausschnitt aus einer alten Minergie-Nachweis-Excel-Mappe (Bezugsnorm
SIA 380/1:2009), mit eingeblendeten Kommentarblasen, die erklären, welche Eingabefelder
**zwingend** auszufüllen sind — didaktisch nützlich, um zu verstehen, wie fehleranfällig der
frühere, manuelle Minergie-Nachweis war, aber selbst technisch überholt (heute Label-Plattform,
siehe [[minergie-produktreglement-2026-1-muken-vergleich]]).

## Kernbegriffe und Feldsystematik

### Seite 1 — Blatt «Eingaben», Gebäudedaten und Lüftungsangaben (Zeilen E2-E32)

- **E2-E13 Gebäudedaten:** Gebäudestandort (m.ü.M.), Klimastation, bis zu 4 Zonen, Gebäude-
  kategorie, Warmwasserpflicht (Merksatz im Kommentar: «EFH, MFH und Spitäler sind immer mit
  Warmwasser zu berechnen»), Energiebezugsfläche EBF, Gebäudehüllzahl, Baujahr ab 2000 (ja/nein),
  Wärmeabgabe, thermischer Komfort im Sommer (Übertrag aus separatem Blatt «Sommer»).
- **Zwingende Eingabe, wörtlich aus der Kommentarblase (E12/E13):** «Heizwärmebedarf Qh mit
  Standardluftwechsel, aus der Berechnung SIA 380/1:2009 zu übertragen.»
- **E15-E32 Lüftung-Klima-Kälteanlagen:** Kleinanlagen mit Standardwerten, Standard-Lüftungs-
  anlagentyp, Wärmerückgewinnungs-Wärmetauscher, Ventilatorantrieb, Nenn-Luftvolumenstrom;
  gesonderter Pfad «Externe Berechnung, z.B. aus Tool SIA 380/4» für Kühlung/Befeuchtung.
- **Zweite zwingende Eingabe (E28/E29):** «Heizwärmebedarf Qh,eff mit effektivem, thermisch
  wirksamen Aussenluftvolumenstrom Vth aus der Berechnung SIA 380/1:2009 übertragen.» Fakultativ
  darf laut Kommentar stattdessen der raumhöhenkorrigierte Wert Qh,korr eingesetzt werden
  («Korrektur gemäss Angaben MINERGIE»).
- **Primäranforderung, als Randnotiz auf dem Blatt vermerkt:** «Minergie: 90 % von Grenzwert SIA
  380/1» / «Minergie-P: 60 % von Grenzwert SIA 380/1» — deckt sich exakt mit der Bauteiltabelle in
  [[minergie-me-vs-me-p-vergleich]] (dieselbe, seither überholte Prozentbasis).

### Seite 2 — Blatt «Details für Zone 1/2», Lüftungsgerät-Kennwerte

- Je Zone: Lüftungssystem, Aussenluftvolumenstrom (Standard-Wert **und** effektiver Wert),
  Druckverlust («Sind nebenstehende Punkte erfüllt?»), Wärmegewinn Erdreich-Wärmeübertrager
  (Dropdown, Standard «Kein Erdreich-Wärmeübertrager»), Lüftungsgerät (Marke/Typ, Wärmerück-
  gewinnung, Ventilatorantrieb, Betriebsart), elektrische Leistung aller Ventilatoren.
- **Minergie-P-spezifische Regel, wörtlich aus der Kommentarblase:** «Nur MINERGIE-P: Falls
  Lüftungsgerät nicht zertifiziert: für WRG-Wirkungsgrad Herstellerangaben minus 12 %, maximal
  80 %.» — ein pauschaler Sicherheitsabschlag für nicht zertifizierte Geräte, der bei Minergie
  (ohne P) laut Dokument nicht verlangt wird.
- Ergebniszeile «Werte für SIA 380/1, Minergie-Nachweis»: thermisch wirksamer Aussenluft-
  volumenstrom und Strombedarf Lüftungsanlage Qe (kWh/m²a) je Zone.

## Bauherren-Transfer

- **Der alte Nachweis war ein manuelles Excel-Verfahren mit mehreren Pflicht-Überträgen aus
  externen Berechnungen** (SIA-380/1-Tool, separates Sommer-Blatt) — jede Zwischenübertragung
  war eine mögliche Fehlerquelle. Das erklärt, warum der heutige Nachweis über die Minergie-
  Label-Plattform (siehe [[minergie-produktreglement-2026-1-muken-vergleich]]) als klarer
  Fortschritt zu werten ist: weniger manuelle Übertragsschritte, weniger Fehlerpotenzial.
- **Der Sicherheitsabschlag für nicht zertifizierte Lüftungsgeräte bei Minergie-P** (Hersteller-
  angabe WRG-Wirkungsgrad minus 12 %, gedeckelt auf 80 %) ist ein konkretes Argument, bei einer
  Minergie-P-Zertifizierung von Anfang an ein **zertifiziertes** Lüftungsgerät zu wählen — sonst
  rechnet der Nachweis mit einem schlechteren Wert als dem Datenblatt-Wert.
- **Warmwasser ist bei EFH/MFH/Spitälern immer Pflichtbestandteil des Nachweises**, unabhängig
  vom Gebäudekonzept — eine Ausnahme gilt laut Kommentar nur bei Verwaltung/Schule/Verkauf/
  Versammlung/Industrie/Lager ohne Warmwasser-Verteilsystem (Beispiel: nur kleine Einzelboiler in
  Putzräumen von Schulen).

## Offene Punkte

- **Herausgeber nicht abschliessend belegt** — kein Logo, keine Fusszeile, kein Copyright-Vermerk
  auf den zwei vorliegenden Seiten. Die Feldbezeichnungen und die SIA-380/1:2009-Bezugsnorm legen
  Minergie als Quelle nahe, sind damit aber nicht letztgültig bewiesen.
- **Vollständige Excel-Mappe nicht vorliegend** — dieses Dokument zeigt nur zwei von vermutlich
  deutlich mehr Blättern (erwähnt werden zusätzlich «Sommer» und «Details für Zone 2» bricht ab);
  eine vollständige Blattübersicht ist mit diesem Fund allein nicht möglich.
- **Kein Bezug zum heutigen Verfahren herstellbar** — ob und wie die hier gezeigten Pflichtfelder
  in der heutigen Label-Plattform wiederkehren, ist aus diesem Dokument nicht ersichtlich.
