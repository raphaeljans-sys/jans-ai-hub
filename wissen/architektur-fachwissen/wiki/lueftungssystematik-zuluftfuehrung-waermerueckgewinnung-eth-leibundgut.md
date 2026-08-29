---
title: "Lüftungssystematik: Zu-/Abluftführung, Raumluftströmungsprinzipien und Wärmerückgewinnung (ETH-Vorlesung Gebäudetechnik, Prof. Leibundgut 2008)"
status: speculative
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/01_Konstruktion/01_Technische_Inst_I_II/02_Vorlesungsfolien/110916_Webseite/03_Luftung.pdf (Vorlesung «Lüftung», Vorlesungsreihe Technische Installationen I/II, © Prof. H.-J. Leibundgut, Professur für Gebäudetechnik ETH Zürich, August 2008, Folien 17-29 und 39-41, gelesen vollständig; identischer Inhalt als 4-pro-Seite-Druck auch in .../02_Vorlesungsfolien/04 Lüftung 4er.pdf, keine unabhängige Zweitquelle)", "raw/inventar/archiv-fachwissen__01_Konstruktion.md"]
links: ["[[lueftungsgrundlagen-co2-kennzahlen-aussenluftwechselraten-eth-leibundgut]]"]
---

# Lüftungssystematik: Zu-/Abluftführung, Raumluftströmungsprinzipien und Wärmerückgewinnung

## Kontext

Zweiter Themenblock derselben ETH-Vorlesung «Lüftung» (Prof. H.-J. Leibundgut, Professur für
Gebäudetechnik, Stand August 2008) wie
[[lueftungsgrundlagen-co2-kennzahlen-aussenluftwechselraten-eth-leibundgut]]: die Systematik, wie
Zu- und Abluft räumlich zugeordnet und geführt werden, die drei Grundprinzipien der
Raumluftströmung sowie die vier gängigen Wärmerückgewinnungs-Bauarten mit Rückwärmezahlen. Für
JANS relevant als Gliederungsraster, um mit einem HLK-Planer über die grundsätzliche
Systemwahl zu sprechen, bevor die Detailauslegung beginnt.

## Vier Grundtypen der Zu-/Abluftführung

Die Vorlesung unterscheidet nach der Art, wie Zu- und Abluft geführt werden, vier Kombinationen:

1. **Fassade/Fassade natürlich** — Luftaustausch über geöffnete Fenster.
2. **Fassade/Fassade mechanisch** — Luftaustausch über dezentrale Lüftungsgeräte in der Fassade;
   die Wärmerückgewinnung erfolgt dabei dezentral je Gerät.
3. **Fassade/lateral** — Zuluft über die Fassade, Abluft wird lateral abgesaugt und zu einem
   zentralen Abluftgerät im Gebäudeinnern geführt; Wärmerückgewinnung z. B. über eine
   Abluft-Wärmepumpe, die einen Heizwasserspeicher auflädt, der wiederum die dezentralen
   Lüftungsgeräte mit Heizwasser versorgt.
4. **Raum/Raum** — sowohl Zu- als auch Abluft werden raumseitig geführt (siehe die drei
   Strömungsprinzipien unten).

**Fensterlüftung, Raumdurchspülungs-Faustregel:** Bei einseitiger Fensterlüftung ist eine
Raumdurchspülung gewährleistet, wenn die Raumtiefe T höchstens das 2,5-Fache der Raumhöhe H
beträgt (T ≤ 2,5·H); bei Querlüftung gilt T ≤ 5,0·H.

## Drei Raumluftströmungsprinzipien (Zuordnung Raum/Raum)

- **Quelllüftung.** Lufteintritt über grosse Öffnungen im Bodenbereich (Gitter), niedrige
  Austrittsgeschwindigkeit (rund 0,2 m/s) ohne Zugerscheinung/Geräusche, Zulufttemperatur
  gleich oder höchstens 3 K unter der Raumlufttemperatur. Die Frischluft schichtet sich im
  Bodenbereich ein, der «Heizkörper Mensch» lässt sie aufsteigen und erzeugt so die
  Raumdurchströmung. Anwendungsbeispiele der Folie: Werkstatt, Klassenzimmer, Foyer.
- **Verdrängungslüftung.** Grossflächige Luftein- und -ausbringung, kolbenartige und
  turbulenzarme Strömung; führt Keime/Staubpartikel wirksam ab. Anwendung in Reinräumen
  (Halbleiter-, Raumfahrt-, Lebensmitteltechnik, Pharmaindustrie) und aseptischen Räumen
  (OP-Raum, Steril-Bereich).
- **Mischlüftung.** Zuluft wird in der Regel aus dem Deckenbereich mit hoher Geschwindigkeit
  (bis 10 m/s) und grosser Temperaturdifferenz zur Raumluft (bis 8 K) eingeblasen; dadurch
  können hohe Kühllasten bewirkt werden. Anwendungsbeispiele: Empfang, Einkaufshalle, Sporthalle.

## Vier Wärmerückgewinnungs-Bauarten mit Rückwärmezahlen

| Bauart | Funktionsprinzip | Rückwärmezahl ΦAL |
|---|---|---|
| Plattenwärmetauscher | Zuluft und Abluft durch Platten aus gut leitendem Material getrennt, geringer Plattenabstand; Feuchtigkeit und Schadstoffe werden nicht zwischen den Luftkanälen ausgetauscht | 45–75 % |
| Rotationswärmetauscher | Langsam rotierender Speicher aus wabenförmigen Kammern (Aluminium, Keramik oder Kunststoff), die abwechselnd Zuluft- und Abluftkanal durchwandern; wahlweise mit Feuchtigkeitsübertragung, dabei Geruchsübertragungsrisiko; grosse Abmessungen (950–5500 mm Durchmesser laut Folie) | 65–80 % |
| Kreislaufverbundenes System | Wärmeübertragung zwischen zwei räumlich getrennten Luftkanälen über einen Wasserkreislauf; Vorteil: Kanäle müssen nicht beieinanderliegen | 45–75 % |
| Fortluftkühlung mit Wärmepumpe | Erweiterung des kreislaufverbundenen Systems: eine an den Wasserkreislauf angeschlossene Wärmepumpe unterkühlt die Fortluft (interessant bei Aussentemperaturen > rund 6 °C) und leistet einen Beitrag zur Raumheizung — Kombination aus Wärmerückgewinnung und Aussenluft-Wärmepumpe | nicht separat beziffert |

Rückwärmezahl-Definition gemäss Folie: ΦAL = (θZL − θAL) / (θABL − θAL), mit θZL Zulufttemperatur,
θAL Aussenlufttemperatur, θABL Ablufttemperatur.

## LowEx-Lüftung — Zielkennzahlen (Stand der Folie, keine Norm)

Als Ausblick nennt die Folie deklarierbare, messtechnisch kontrollierbare Zielwerte für
sogenannte LowEx-Lüftungsanlagen (ausdrücklich als büroeigene/lehrstuhleigene Zielsetzung
formuliert, nicht als Norm zitiert):

- CO2-Fracht > 400 ppm/m³ Abluft
- Δp gesamt Zuluft < 300 Pa, Δp gesamt Abluft < 300 Pa
- Schalldruck im Raum durch Lüftung < 35 dBA (Büro) bzw. < 30 dBA (Wohnen)
- Turbulenzgrad im Raum < 15 %
- Raumbedarf in Hauptnutzung < 0,2 %, in Nebennutzung/Korridor < 2 %, im Gebäudetotal < 2 %
- Leistungsbedarf Zu-/Abluft-Ventilator < 3 W/m² HNF
- Strombedarf < 5 kWh/m²a HNF

## Praxisregel

Für ein Vorprojekt-Gespräch mit dem HLK-Planer liefert die Vier-Typen-Systematik
(Fassade/Fassade natürlich/mechanisch, Fassade/lateral, Raum/Raum) eine erste Sprache, um zu
klären, ob überhaupt eine zentrale Anlage nötig ist oder eine dezentrale/hybride Lösung reicht.
Die Quell-/Verdrängungs-/Mischlüftungs-Typologie ist unmittelbar auf Raumnutzung übertragbar —
insbesondere die Verdrängungslüftung als Pflichtprinzip für OP-Bereiche ist für
Healthcare-Projekte ein belegter Ankerpunkt. Die Rückwärmezahlen der vier WRG-Bauarten dienen als
grobe Vergleichsgrösse in einer frühen Variantendiskussion, ersetzen aber keine
Herstellerdatenblätter.

## Offene Punkte

- Die LowEx-Zielwerte sind explizit als Ziel-/Forschungsangaben der Professur formuliert (Stand
  2008), keine SIA- oder VKF-Norm; vor Verwendung als «Anforderung» in einem Devis oder
  Pflichtenheft wäre zu klären, ob diese Werte irgendwo normativ nachgeführt wurden oder reine
  Lehrmeinung geblieben sind — nicht recherchiert.
- Keine Verifikation der Rückwärmezahlen-Bandbreiten gegen aktuelle Herstellerangaben oder eine
  Produktnorm; die Werte sind Foliencharakter (2008), reine Kontext-/Plausibilisierungsgrösse.
- Wie im Schwesterartikel: dieselbe Vorlesung liegt nur in einer inhaltlich identischen
  Zweitdatei (4-pro-Seite-Druck) vor, keine unabhängige Zweitquelle — Status bleibt
  `speculative`.
