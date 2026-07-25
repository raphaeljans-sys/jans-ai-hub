---
quelle: (1) Umweltproduktdeklaration (EPD) «Backsteine SwissModul», Schweizer Ziegelindustrie /
  p+f Sursee (Pruef- und Forschungsinstitut), Oktober 2017 — https://ziegelindustrie.ch/wp-content/uploads/2023/06/EPD-SwissModul-2018.pdf;
  (2) treeze Ltd. / Stadt Zuerich Amt fuer Hochbauten, Fachstelle Nachhaltiges Bauen, «Oekobilanz
  ausgewaehlter Betonsorten», Schlussbericht Version 4.1, 11/2016, Autoren Tschuemperlin/Ramseier/
  Frischknecht — https://treeze.ch/fileadmin/user_upload/downloads/Publications/Case_Studies/Building_and_Construction/551_%C3%96kobilanz_ausgew%C3%A4hlter_Betonsorten_v4.1_TitelblattAHB.pdf;
  (3) Hunziker Kalksandstein / KS-Quadro, «Kalksandstein in der Oekobilanz» (Datenblatt), Literatur
  EMPA/KBOB — https://www.hunziker-kalksandstein.ch/files/downloads/hunziker-kalksandstein/planung/technische-beratung/kalksandstein-hunziker_kalksandstein-ksque-oekobilanz_01-d.pdf
  und «Hunziker-KS Dokumentation 2022» (identische Tabelle, S. 13/14) — https://www.hunziker-kalksandstein.ch/files/downloads/hunziker-kalksandstein/Hunziker-KS_dokumentation_2022.pdf
herausgeber: (1) Schweizer Ziegelindustrie (Verband), Pruefstelle p+f Sursee, Datenbasis sechs
  Schweizer Werke + Ecoinvent 2016; (2) Stadt Zuerich, Amt fuer Hochbauten (Auftraggeberin),
  bearbeitet durch treeze Ltd., Uster; (3) Hunziker Kalksandstein AG (Schweizer KS-Hersteller),
  Datengrundlage KBOB/eco-bau/IPB Oekobilanzdaten im Baubereich 2009/1:2016 (Literatur EMPA)
ausgabe: (1) EPD Oktober 2017, gueltig 5 Jahre bis Oktober 2023 (nach EN 15804:2012+A1:2013 /
  EN 15942 — bei Redaktionsschluss dieses Destillats formal abgelaufen, aber weiterhin die
  aktuellste oeffentlich zugaengliche Schweizer Backstein-EPD, keine Nachfolgeversion auffindbar);
  (2) treeze-Bericht Version 4.1, 11/2016, Datenbasis Ecoinvent/KBOB Stand 2016; (3) Hunziker-
  Datenblatt undatiert bzw. identische Tabelle in der 2022er-Dokumentation, Datenbasis KBOB/eco-bau/
  IPB 2009/1:2016 (aeltere KBOB-Version als die im Hauptartikel gefuehrte v8.0/20.02.2026)
gelesen: alle drei Quellen vollstaendig via curl+pdftotext gelesen (2026-07-25); EPD SwissModul
  612 Zeilen Volltext inkl. LCIA-Tabelle und Dichte-Umrechnungstabelle; treeze-Betonsorten-Bericht
  2325 Zeilen (Tab. 4.1 + Fig. 4.4 ausgelesen); Hunziker-Datenblatt (1 Seite) sowie die identische
  Tabelle in der 74-seitigen 2022er-Dokumentation
datenstand: 2026-07-25 (EPD-Datenstand Oktober 2017/Ecoinvent 2016; treeze-Betonsorten-Datenstand
  11/2016; Hunziker-Datenstand KBOB 2009/1:2016)
status: established
last_updated: 2026-07-25
ergaenzende_quellen: `[[kbob-graue-treibhausgasemissionen-2025]]` (KBOB-Faktenblatt + Minergie/
  eco-bau-Grenzwerte, annualisiert); `[[kbob-bauteilkatalog-co2-je-aufbau]]` (Holzbau-Pendant:
  Lignumdata-Bauteilaufbauten 25-34 kg CO2-eq/m2 Aussenwand + treeze/ZZ-Wancor-Vergleichsstudie
  2017 mit relativen Prozentwerten Holz -73% ggue. Backstein+EPS) — dieses Destillat liefert dazu
  die fehlende ABSOLUTE Massivbau-Gegenzahl
---

# Destillat — Massivbau-Aussenwand: kg CO2-eq/m2 aus Schweizer EPD/LCA-Primaerdaten (Backstein, Beton)

> Ergaenzung zum Holzbau-Pendant `[[kbob-bauteilkatalog-co2-je-aufbau]]`: dort ein direkt
> abrufbarer Bauteilkatalog (Lignumdata) mit vollstaendigem Schichtplan UND ausgewiesenem GWP
> je m2. Fuer Massivbau existiert **kein oeffentlich frei zugaenglicher Bauteilkatalog mit
> derselben Eins-zu-eins-Transparenz** (bauteilkatalog.ch fuehrt die GWP-Spalte nur im PRO-
> Abo, erneut bestaetigt in dieser Recherche). Stattdessen liegen zwei belastbare, oeffentliche
> **Primaerdaten-Quellen auf Material-/Bauteilebene** vor (Backstein-EPD nach EN 15804, Beton-
> Oekobilanz der Stadt Zuerich), aus denen sich mit dem in der Quelle selbst dokumentierten
> Umrechnungsfaktor (Dichte x Wanddicke) eine reale kg-CO2-eq/m2-Zahl herleiten laesst. Diese
> Herleitung ist unten **Schritt fuer Schritt offengelegt** (Rule identifikatoren-verifizieren:
> nichts erfinden) — die CO2-Rohwerte stammen 1:1 aus der Quelle, nur die Wanddicke ist eine
> hier getroffene, ausgewiesene Annahme (kein Bestandteil der Quelle selbst).

## Das Wichtigste in 1 Satz
Eine **Backstein-Vollwand SwissModul** (17.5-25 cm, nur Ziegelmaterial, ohne Moertel/Putz/
Daemmung) verursacht nach der Schweizer Ziegelindustrie-EPD (2017) hochgerechnet **rund
35-52 kg CO2-eq/m2**; eine **unbewehrte Hochbaubeton-Wand** gleicher Dicke nach der treeze/
Stadt-Zuerich-Oekobilanz (2016) **rund 46-58 kg CO2-eq/m2** (ohne Bewehrungsstahl) — beide
Werte liegen damit bereits **ueber** dem gesamten Holzbau-Wandaufbau-Bereich von 25-34 kg
CO2-eq/m2 (Lignumdata), **obwohl bei Backstein/Beton weder Daemmung noch Putz/Moertel
mitgerechnet sind** und die Holzbauwand rund 300-340 mm Gesamtdicke inkl. Daemmung/
Fassade/Innenbekleidung hat.

## A) EPD «Backsteine SwissModul» — Schweizer Ziegelindustrie (Oktober 2017)

Umweltproduktdeklaration nach EN 15804:2012+A1:2013 / EN 15942, erarbeitet von der Schweizer
Ziegelindustrie mit dem VITO (Flandern) und p+f Sursee, Datenbasis sechs Schweizer Werke +
Ecoinvent 2016. Deklarierte Einheit: **1 Tonne Backsteine Typ «SwissModul»**, Referenz-
Nutzungsdauer 150 Jahre. Verwendungszweck laut EPD: tragende UND nichttragende Waende, «in
Kombination mit normalem Moertel, ueblicherweise mit ca. 1 cm Putz geschuetzt».

### GWP-Ergebnis je Tonne Backstein (Lebenszyklusphasen A1-C4, gemaess EPD-Tabelle)

| Phase | Modul | kg CO2-eq / Tonne |
|---|---|---|
| Rohmaterialzufuehrung | A1 | 3.74 |
| Transport Rohmaterial | A2 | 0.74 |
| Herstellung (Formgebung/Trocknung/Brennen) | A3 | 205 |
| Herstellung inkl. Verpackung | A3 | 208 |
| Transport zur Baustelle | A4 | 3.63 |
| Bau/Einbau | A5 | 2.11 |
| Nutzung — CO2-Aufnahme durch Karbonatisierung (150 Jahre) | B1 | -20.0 |
| Abbau/Abbruch | C1 | 4.04 |
| Transport Entsorgung | C2 | 1.00 |
| Entsorgung/Veraeusserung | C4 | 10.5 |
| **TOTAL (A1-C4, ohne Modul D)** | | **231** |
| Total inkl. Verpackung (ohne Modul D) | | 233 |
| **Nur Herstellung (A1-A3, cradle-to-gate, ohne 150-Jahre-Karbonatisierungsgutschrift)** | | **208** |

Die Karbonatisierungsgutschrift (B1, -20 kg CO2/Tonne) ist **keine** biogene Kohlenstoffbindung
wie bei Holz, sondern eine ueber 150 Jahre Nutzungsdauer angenommene CO2-Aufnahme des
gebrannten Tons durch Kalzium-/Magnesiumoxid-Rueckreaktion mit Luft-CO2 (rund 2 % der
Backsteinmasse). Sie ist bereits im Total von 231 kg CO2/Tonne enthalten.

### Umrechnung Tonne zu m2 Mauerwerk (Dichte-Tabelle direkt aus der EPD)

Die EPD liefert selbst eine Dichte-Tabelle je Backsteintyp/Wanddicke («Umrechnungsfaktor Tonne
→ m2 Mauerwerk haengt von der Dichte des Produktes und dem Mauerwerkstyp ab»):

| Backsteintyp | Wanddicke [cm] | Dichte Backstein [kg/m3] | Masse Ziegel je m2 Wand [kg] | **kg CO2-eq/m2 (A1-C4, Total 231/t)** | kg CO2-eq/m2 (nur Herstellung A1-A3, 208/t) |
|---|---|---|---|---|---|
| SwissModul | 17.5 | 875 | 153.1 | **35.4** | 31.9 |
| SwissModul | 20.0 | 925 | 185.0 | **42.7** | 38.5 |
| SwissModul | 25.0 | 900 | 225.0 | **52.0** | 46.8 |

Rechenweg (Beispiel 17.5 cm): 0.175 m Wanddicke x 875 kg/m3 Dichte = 153.1 kg Ziegelmasse je
m2 Wandflaeche; 153.1 kg / 1'000 kg x 231 kg CO2-eq = 35.4 kg CO2-eq/m2. **Diese Werte
umfassen ausschliesslich das Ziegelmaterial** — Moertel, Putz (die EPD nennt ca. 1 cm
Aussenputz als typisch) und eine allfaellige zusaetzliche Daemmschicht (bei modernen
Aussenwaenden mit Backstein als tragender Schale praktisch immer noetig) sind **nicht**
enthalten und wuerden den realen Wandaufbau-Wert weiter erhoehen.

## B) treeze/Stadt Zuerich «Oekobilanz ausgewaehlter Betonsorten» (2016) — Hochbaubeton je m3

Studie im Auftrag der Stadt Zuerich, Amt fuer Hochbauten, Fachstelle Nachhaltiges Bauen,
bearbeitet von treeze Ltd. (demselben Institut wie die bereits im Holzbau-Destillat zitierte
ZZ-Wancor-Studie). Funktionelle Einheit: **1 m3 Beton, unspezifische Rezeptur** — ausdruecklich
**«ohne Bewehrung»** (Statement im Bericht: «... Beton ohne Bewehrung an»).

| Betonsorte | Rohdichte [kg/m3] | GWP Herstellung [kg CO2-eq/m3] | GWP Entsorgung [kg CO2-eq/m3] | **GWP Total [kg CO2-eq/m3]** |
|---|---|---|---|---|
| Magerbeton, unspezifisch | 2'150 | 109 | 19.2 | **128** |
| Hochbaubeton, unspezifisch | 2'300 | 205 | 25.0 | **230** |
| Tiefbaubeton, unspezifisch | 2'350 | 228 | 25.5 | **253** |
| Bohrpfahlbeton, unspezifisch | 2'325 | 249 | 25.2 | **274** |

### Umrechnung m3 zu m2 Wand (Annahme Wanddicke, hier getroffen — nicht Teil der Quelle)

Fuer eine **unbewehrte Hochbaubeton-Wand** (Rezeptur «Hochbaubeton, unspezifisch», 230 kg
CO2-eq/m3):

| Wanddicke [cm] | Beton-Volumen je m2 [m3] | **kg CO2-eq/m2 (ohne Bewehrung)** |
|---|---|---|
| 20 | 0.20 | **46.0** |
| 25 | 0.25 | **57.5** |
| 30 | 0.30 | **69.0** |

Rechenweg (Beispiel 20 cm): 0.20 m3/m2 x 230 kg CO2-eq/m3 = 46.0 kg CO2-eq/m2. **Reale
Betonwaende sind fast immer bewehrt** (Bewehrungsstahl-Anteil laut KBOB-Oekobilanzdaten
typischerweise deutlich CO2-intensiv je kg) — der reale Wert liegt damit **hoeher** als die
hier ausgewiesene reine Betonmasse. Eine mehrschalige Aussenwand (Beton + Daemmung + Vorsatz-
schale) wuerde zusaetzlich die Daemmschicht mitrechnen.

## C) Ergaenzend: Hunziker Kalksandstein/Zementstein «Oekobilanz» (KBOB/EMPA-Literatur, 2009/1:2016)

Datenblatt eines Schweizer KS-Herstellers (Hunziker Kalksandstein AG, identische Tabelle auch
in der 74-seitigen 2022er-Produktdokumentation, S. 13/14), Quelle explizit «www.kbob.ch,
Oekobilanzdaten im Baubereich, KBOB/eco-bau/IPB 2009/1:2016», Literaturbasis EMPA:

| Baustoff | Treibhausgasemission Total [kg CO2-eq **je kg Baustoff**] |
|---|---|
| Zementstein | 0.130 |
| Kalksandstein (generisch) | 0.139 |
| Kalksandstein Hunziker (werkeigen, 2022er-Version) | 0.100 |
| Backstein | 0.223-0.258 (zwei Ausgaben leicht abweichend) |
| Porenbetonstein | 0.417-0.420 |

**Diese Tabelle liefert bewusst KEINE Umrechnung auf m2 Wand**, da sie keine Wanddicke/
Steinformat-Dichte-Zuordnung wie die EPD unter A) enthaelt — eine Hochrechnung auf kg CO2/m2
wuerde hier eine Steindichte/Wandaufbau-Annahme erfordern, die in dieser Quelle nicht belegt
ist. Sie bestaetigt aber qualitativ dieselbe Reihenfolge wie die treeze/ZZ-Wancor-Studie im
Holzbau-Destillat: Zementstein/Kalksandstein liegen bezueglich Treibhausgas am guenstigsten,
Backstein rund 60-90 % hoeher, Porenbeton am schlechtesten.

## Bauherren-Transfer

- **Reale Zahlenpaare fuer die Materialwahl-Beratung** (Herstellung + Entsorgung, je m2 Wand):
  Holzbau-Staenderwand (Lignumdata, 297-342 mm inkl. Daemmung/Fassade/Innenbekleidung) **25-34
  kg CO2-eq/m2** — versus Backstein-Vollwand SwissModul (17.5-25 cm, NUR Ziegel, ohne Moertel/
  Putz/Daemmung) **35-52 kg CO2-eq/m2** — versus unbewehrte Hochbaubeton-Wand (20-30 cm, ohne
  Bewehrung) **46-69 kg CO2-eq/m2**. Der Massivbau-Wert ist bereits ohne die fehlenden Schichten
  (Daemmung, Putz, Moertel, Bewehrungsstahl) hoeher als der vollstaendige Holzbau-Wandaufbau —
  bei Ergaenzung der fehlenden Schichten waechst der Abstand weiter.
- **Deckt sich richtungsgleich mit der bereits im Holzbau-Destillat zitierten treeze/ZZ-Wancor-
  Studie** (Holzriegelwand -73 % ggue. Backstein+EPS bei gleichem U-Wert 0.16 W/m2K): dort nur
  als Prozentwert belegt, hier erstmals mit einer **realen absoluten Gegenzahl** unterlegt — drei
  unabhaengige Schweizer Quellen (Lignumdata/EPD SwissModul/treeze-Betonsorten), alle KBOB- bzw.
  Ecoinvent-basiert, zeigen dieselbe Richtung.
- **Fuer eine Bauherren-Beratung «lohnt sich Holzbau bei der Aussenwand»** kann damit erstmals
  ein reales Zahlenpaar (nicht nur ein Prozentsatz) genannt werden: die eigentliche Ziegel-
  bzw. Betonmasse einer Massivwand verursacht je nach Dicke **rund 1.3- bis 2-mal so viel**
  graue Treibhausgasemissionen wie eine komplette Holzbau-Staenderwand mit Daemmung — und das,
  bevor Moertel/Putz/Bewehrung/Daemmung der Massivwand ueberhaupt mitgezaehlt sind.
- **Vorsicht bei der Interpretation:** Die Massivbau-Werte hier sind Ziegel- bzw. Beton-Rohmasse
  je Wanddicke, **kein vollstaendiger Wandaufbau** wie beim Lignumdata-Pendant. Fuer eine
  projektgenaue Vergleichsrechnung (z.B. SIA-2032-Nachweis) muessen Moertel/Putz/Daemmung/
  Bewehrung mit den zugehoerigen KBOB-Kennwerten ergaenzt werden — die hier gezeigten Zahlen
  sind der **Boden**, nicht die vollstaendige Wand.

## Offene Punkte (bestaetigter Negativbefund, wie in `[[kbob-bauteilkatalog-co2-je-aufbau]]` bereits dokumentiert)

- **Kein einzelnes, oeffentlich frei zugaengliches Massivbau-Bauteildatenblatt mit vollstaendigem
  Schichtplan (Backstein/KS/Beton + Daemmung + Putz in EINEM Datenblatt) und direkt ausgewiesenem
  GWP je m2 gefunden** — analog zu den Lignumdata-Holzbau-Datenblaettern D0115/D0077/D0122/D0107.
  bauteilkatalog.ch fuehrt diese Kombination zwar, die GWP-Spalte bleibt aber weiterhin hinter dem
  kostenpflichtigen PRO-Abo (in dieser Recherche erneut ueberprueft, keine Aenderung ggue. dem
  bereits im Holzbau-Destillat dokumentierten Befund vom 2026-07-25).
  ecobau.ch/eco-bau.ch bietet Instrumente (ecoBKP, ecoProdukte, Graue-Energie/CO2-Tool) und die
  KBOB-Rohdaten, aber **keine** frei abrufbare PDF mit fertig gerechneten Wandaufbau-Beispielen.
  swissbeton.ch/beton.org fuehren EPDs je Betonsorte (deutsche Beispiele wie C25/30 eingesehen),
  aber ebenfalls je m3 Beton, nicht als fertiger Wandaufbau.
- **Die m2-Werte in diesem Destillat sind deshalb eine eigene, transparent offengelegte
  Umrechnung** (Dichte x Wanddicke aus der Quelle selbst, aber die Wanddicke als hier getroffene
  Annahme) — **keine** direkt in einer Quelle vorgefundene m2-Zahl wie bei Lignumdata. Das ist
  eine Naeherung an die Luecke, schliesst sie aber nicht vollstaendig.
- **EPD SwissModul formal abgelaufen** (gueltig bis Oktober 2023, kein Nachfolgedokument bei
  ziegelindustrie.ch gefunden) — Groessenordnung und Methodik (EN 15804) bleiben uebertragbar,
  eine aktualisierte EPD waere aber genauer.
- **Naechster Schritt (falls gewuenscht):** Eine gezielte Anfrage an eco-bau/KBOB oder an einen
  bauteilkatalog.ch-PRO-Zugang bliebe der direkteste Weg zu einer publizierten, vollstaendigen
  Massivbau-Wandaufbau-m2-Zahl inkl. Daemmung/Putz in einem einzigen Dokument.
