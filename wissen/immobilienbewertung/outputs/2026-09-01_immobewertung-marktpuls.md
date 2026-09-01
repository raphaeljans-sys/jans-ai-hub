# Marktpuls KB Immobilienbewertung — Stichtag 01.09.2026

**Lauf:** One-Time-Task `immobewertung-marktpuls-260901`, am Stichtag ausgeloest
**Laufdatum (gemessen):** 2026-09-01, 07:00–08:2x CEST · Station MacBook Pro
**NAS:** gemountet (mit Vorbehalt, siehe Abschnitt 8) · **Kollisionsschutz:** keine
Zweitinstanz auf dieser KB (`ps` geprueft, kein headless-Lauf aktiv)

---

## 0. Der Termin ist eingeloest — und zwar wortwoertlich am Termin

Der vorgezogene Lauf vom 13.08.2026 hat den Auftrag dieses Tages geschaerft: zwei Werte waren
zu holen, fuer die der Stichtag 01.09.2026 ueberhaupt existiert. Beide sind bearbeitet,
**keiner ist geschaetzt**.

| Auftragspunkt aus dem 13.08.-Lauf | Ergebnis heute |
|---|---|
| BWO-Referenzzinssatz-Publikation 01.09.2026 | ✅ **beschafft** — Primaerabruf 08:00 CEST |
| BFS-Leerwohnungsziffer 01.06.2026 | ◐ **teilweise** — Kanton ZH publiziert (18.08.), CH und SZ noch nicht |
| SMG-Mietindex August 2026 | ✗ noch nicht publiziert (erwartet ~13.09.) |
| SNB-Quartalsheft 3/2026 | ✗ noch nicht publiziert (erwartet ~24.09.) — **aber gegenstandslos geworden**, siehe 3. |
| SREBI-PDF-Verifikation | ✅ **erledigt**, Sackgasse aufgeloest |

**Eine Beobachtung zum Ablauf, die es wert ist festgehalten zu werden:** um **07:52 CEST** war
die BWO-Publikation noch nicht da, um **08:00 CEST** war sie da. Der Task feuert um 07:00. Ein
Lauf, der die Seite einmal beim Start abfragt und dann «nicht publiziert» meldet, haette den
Termin um acht Minuten verfehlt — und zwar zum zweiten Mal in Folge. Der Lauf hat deshalb
gepollt statt einmal geschaut. **Fuer den naechsten Termin: den Task auf 09:00 CEST legen,
nicht auf 07:00.**

---

## 1. Der Kernwert: BWO-Referenzzinssatz, Publikation 01.09.2026

**Referenzzinssatz 1.25 %, unveraendert ab 02.09.2026. Massgebender Durchschnittszinssatz
1.31 %, Stichtag 30.06.2026.**

Quelle im Wortlaut (bwo.admin.ch/referenzzinssatz, Abruf 01.09.2026 08:00 CEST): «Aktueller
Referenzzinssatz: 1,25 % — gueltig seit 02.09.2025, **unveraendert ab 02.09.2026**.» Die
Entwicklungstabelle fuehrt die neue Zeile **1,25 % · 02.09.2026 · 1,31 % · 30.06.2026**.
Beides direkt an der Amtsquelle gelesen, nicht ueber Medienberichterstattung.

### Der Befund ist nicht «unveraendert», sondern «der Abwaertstrend ist gestoppt»

| Stichtag | Durchschnittszinssatz | Referenzzins gueltig ab |
|---|---|---|
| 31.12.2025 | 1.32 % | 03.03.2026 |
| 31.03.2026 | 1.31 % | 02.06.2026 |
| **30.06.2026** | **1.31 %** | **02.09.2026** |

Die KB fuehrte seit dem 12.07.2026 die Lesart «Tendenz sinkend → Erhoehungsrisiko sinkt →
eher Senkungspotenzial». **Diese Lesart ist zurueckgenommen.** Der Satz ist im zweiten Quartal
2026 nicht weiter gefallen. Die Abstaende:

- zur **Erhoehungsschwelle 1.37 %**: **6 Basispunkte** — unveraendert seit einem Quartal
- zur **Senkungsschwelle 1.13 %**: 18 Basispunkte

**Der Satz liegt naeher an einer Erhoehung als an einer Senkung, und der Puffer hat sich
dieses Quartal nicht vergroessert.** Das ist ausdruecklich **keine** Trendwende nach oben —
zwei gleiche Werte sind kein Trend, und die Interpretation waere derselbe Fehler in die andere
Richtung. Es ist der Wegfall einer Entwarnung.

**Bewertungsrelevanz.** Fuer laufende Bewertungen aendert sich nichts: 1.25 % gilt, Bestandes-
mieten sind bis mindestens **01.12.2026** weder anpassungspflichtig noch -berechtigt. Fuer die
**DCF-Mietprognose** gilt neu: ein Szenario «Referenzzins sinkt → Mietsenkungsanspruch» ist
fuer 2027 **nicht mehr das naheliegendere**. Wer eine Richtung annimmt, weist sie als Annahme
aus. Eingearbeitet in `wiki/ertragswert-dcf.md`.

**Naechste Termine (Primaerquelle):** 01.12.2026 (Stichtag 30.09.2026); 2027: 01.03. · 01.06. ·
01.09. · 01.12.

---

## 2. SREBI Q2-2026 am Primaerdokument verifiziert — die Sackgasse vom 13.08. ist aufgeloest

Der 13.08.-Lauf notierte: «PDF-Primaerquelle nicht frei abrufbar → Wert `emerging`,
Verifikation am UBS-PDF beim naechsten Lauf.» **Erledigt.**

Gelesen wurde: «UBS Swiss Real Estate Bubble Index — Schweizer Immobilien», Chief Investment
Office GWM, Holzhey/Skoczek/Saputelli, **6. August 2026, 06:00 UTC**, 8 Seiten. Wortlaut:
«Der UBS Swiss Real Estate Bubble Index stieg im 2. Quartal 2026 **von 0,62 auf 0,72**
Indexpunkte.» Alle Begleitzahlen wortwoertlich bestaetigt. **Status `emerging` →
`established`.**

**Der Zugangsweg** (gehoert in die Registry, weil er nicht offensichtlich ist): das PDF ist
ueber den **JCR-Link der UBS-Indexseite** abrufbar; ein direkter `curl` auf denselben Pfad
wird mit **HTTP 403** abgewiesen. Der Weg fuehrt nur ueber WebFetch. Die Linkliste je Quartal
steht auf der Indexseite selbst.

### Drei Dinge, die nur im Primaerdokument stehen

**(a) Der Revisionsgrund ist jetzt belegt, nicht nur beobachtet.** Der Bericht nennt ihn:
«Die Werte der Vorquartale wurden allerdings aufgrund **neuer Daten zur Wohnbautaetigkeit
2025** nach unten revidiert.» Der 13.08.-Befund (Q1-2026 von 0.69 auf 0.62) ist damit
ursaechlich erklaert — revidiert wird ueber die Perspektive «Umfeld» (Reinzugang am Bestand),
nicht ueber die Preisreihen.

**(b) Die vier Perspektiven (Q2-2026, Vorquartal in Klammern):**

| Perspektive | Score | Risiko |
|---|---|---|
| **Fundament** (Preis-Miet-, Preis-Einkommens-Verhaeltnis) | **1,81** (1,77) | **erhoeht** |
| Dynamik (reale Preisveraenderung 3 J / 10 J) | 0,40 (0,36) | moderat |
| Kosten (Kauf-Miete-Nutzungskosten) | −0,75 (−0,74) | gering |
| Umfeld (Hypothekarvolumen/Einkommen, Reinzugang) | −0,52 (−0,62) | gering |

Dazu: Hypothekarvolumen **+3,1 % YoY**; reale Preise annualisiert **2,8 %** ueber 3 Jahre gegen
langfristiges Mittel **1,5 %**, 10-Jahres-Rate 2,2 %.

**Das ist der Punkt, den die Schlagzeile «Blasenrisiko moderat» verdeckt:** die Gesamtzahl
0,72 wird von tiefen Nutzungskosten und schwacher Bautaetigkeit gedaempft — **nicht** von einem
gesunden Preis-Einkommens-Verhaeltnis. Die Fundamentalperspektive steht mit **1,81 im Band
«erhoeht»**. In einem JANS-Deliverable darf «moderat» nicht ohne den Fundament-Score stehen.

**(c) Regionale Analyse (Datenstand der Karte: Q1-2026).** **Zuerich ist die einzige
Grossstadt mit «hohem» Ungleichgewicht**, Lausanne «erhoeht»; Basel, Bern und Genf haben sich
entspannt. Tourismusregionen Graubuendens fast flaechendeckend hoch, Westschweiz entlang des
Genfersees erhoeht. **Fuer JANS-Bewertungen in der Stadt Zuerich ist das der einschlaegige
Vorbehalt.**

---

## 3. Der eigentliche methodische Ertrag: der risikofreie Zins ist doch maschinenlesbar

Der Vertiefungslauf vom **23.08.2026** hat in `wiki/ertragswert-dcf.md` einen Kasten angelegt
mit dem Titel «Warum es fuer den risikofreien Basiszins keine maschinenlesbare Reihe mehr
gibt». Belegt war: die SNB-Datenportal-Wuerfel `rendoblim` und `rendoblid` werden seit dem
01.09.2025 nicht mehr fortgeschrieben; der verbleibende datierte Weg sei das **Quartalsheft**,
naechster Termin Ende September 2026.

**Das stimmt fuer die geprueften Wuerfel — aber der Anker ist trotzdem taeglich verfuegbar:**

**`https://www.snb.ch/public/rss/de/interestRates`** («Aktuelle Zinssaetze», RSS/RDF mit
`cb:`-Namespace der Zentralbank-Spezifikation). Der Feed traegt je Handelstag die Reihe **R10**
— «Rendite Bundesobligationen Eidgenossenschaft / Kassazinssatz bei einer Laufzeit von 10
Jahren» — mit Wert, Einheit, Periode und Publikationszeitstempel; dazu Leitzins, SARON und die
Sichtguthaben-Saetze. Kein Login, kein JavaScript, `curl`-fest.

| Handelstag | R10 |
|---|---|
| 25.08.2026 | 0.442 % |
| 26.08.2026 | 0.412 % |
| 27.08.2026 | 0.424 % |
| 28.08.2026 | 0.443 % |
| **31.08.2026** | **0.469 %** |

Ebenfalls amtlich bestaetigt per 31.08.2026: **SNB-Leitzins 0.00 %**, **SARON −0.05 %**.

**Drei Konsequenzen.**

1. **Die undatierten Live-Snapshots (~0.42–0.51 %), die der 20.08.-Lauf verworfen hatte, waren
   der Sache nach richtig.** Unbrauchbar war nicht ihr Wert, sondern ihre Datierung. Sie sind
   jetzt durch datierte amtliche Werte im selben Band ersetzt.
2. **Der Basiszins steht bei 0.47 % (31.08.2026)** gegen 0.39 % (Mitte Juni) und 0.34 % (Mitte
   Maerz) — rund **+8 Basispunkte** seit dem gefuehrten Stand. Die im Kasten bezifferte
   Tragweite trifft ein: **die Diskont-Baender der Tabelle D3 verschieben sich nicht.** Der
   Vorbehalt fuer Bewertungen am unteren Bandrand bleibt, ist jetzt aber belegt statt vermutet.
   Ein Weiterlaufen ueber ~0.8 % waere der Punkt, an dem D3 neu zu pruefen ist.
3. **Der alte Befund wird nicht widerrufen.** Die Wuerfel wurden heute **nicht** erneut
   geprueft; ueber ihren Zustand sagt der Nachtrag nichts. Gefunden ist ein **anderer Endpunkt
   derselben Institution**. Genau das ist die Lehre, und sie ist im Hub schon zweimal
   aufgeschrieben worden: **ein leeres Ergebnis ist zuerst eine Aussage ueber das Werkzeug,
   nicht ueber die Quelle** (Rule `wege-und-vollmachten`, Ziff. 5).

Damit ist der Auftragspunkt «SNB-Quartalsheft 3/2026 nachziehen» **gegenstandslos geworden**
— das Heft bleibt fuer die *Begruendung* der Zinsbewegung die bessere Quelle, der *Zahlenwert*
wartet nicht mehr auf es.

---

## 4. Leerwohnungsziffer 01.06.2026 — der Neubau-Wert ist der bewertungsrelevanteste Fund

Die gesamtschweizerische BFS-Zahl ist am 01.09.2026 **noch nicht publiziert** (an der
BFS-Seite direkt geprueft; die Reihe endet dort bei 2025). Vorjahr: publiziert am 09.09.2025.
**Der Kanton Zuerich hat aber am 18.08.2026 publiziert:**

| Ebene | 01.06.2026 | Vorjahr |
|---|---|---|
| **Schweiz** | ⚠ noch nicht publiziert | 1.00 % (48'455 Whg.) |
| **Kanton Zuerich** | **0.52 %** (4'189 Whg.) | 0.48 % (~3'800) |
| Stadt Zuerich | 0.11 % (252 Whg.) | — |
| Winterthur | 0.20 % | — |
| Region Oberland | 0.95 % | — |
| Region Pfannenstiel | 0.90 % | — |
| **Kanton Schwyz** | ⚠ noch nicht publiziert | 0.52 % (440 Whg., 2025) |
| **davon Neubau ZH (Baujahr 2024+)** | **3.02 %** (600 Whg.) | — |

**Der Neubau-Wert ist der Fund des Laufs.** Die Residualwertmethode dieser KB setzt
«struktureller Leerstand» mit dem WP-Default **1.0–3.5 %, hergeleitet aus der
BFS-Leerwohnungsziffer der Gemeinde** an, JANS-Basisfall **1 %**. Die amtliche Ziffer misst
aber den **Bestand** — ein Residualwert rechnet die **Erstvermietung eines Neubaus**, und dort
liegt der Leerstand im Kanton Zuerich beim **rund Sechsfachen**. Der Basisfall 1 % liegt damit
**unter** dem gemessenen Neubauwert, und zwar im angespanntesten Kanton; anderswo ist der
Abstand groesser, nicht kleiner.

**Neue Anwendungsregel** (kein neuer Default — die WP-Bandbreite bleibt als Kursstand stehen,
geaendert ist, welcher Wert aus dem Band fuer welche Phase gilt), eingetragen in
`wiki/residualwertmethode.md` und als Nutzungsregel 9 in der Registry:

1. Erstvermietungsphase **nicht** mit dem Bestandes-Leerstand rechnen — Neubauwert ansetzen
   oder Vermarktung als eigener Carry ueber die Absorptionsdauer fuehren (Sensitivitaet
   δ\* = −M0, Werthebel rund −8 %, steht bereits in `projektstruktur-deliverables`).
2. Dauerzustand nach Vollvermietung: Bestandeswert **der Gemeinde**.
3. **Gemeinde, nicht Kanton:** innerhalb ZH spannt die Ziffer von 0.11 % (Stadt) bis 0.95 %
   (Oberland) — Faktor neun.
4. **Kanton, nicht Land:** CH 1.00 % gegen ZH 0.48 % im Vorjahr — Faktor zwei. Der CH-Wert
   wurde deshalb **nicht** aus Kantonswerten hochgerechnet.

Zweiter Befund: **alle** gemessenen Werte liegen unter der von Wuest Partner genannten
optimalen Fluktuationsreserve von **1.3 %**, die Stadt Zuerich um mehr als eine Zehnerpotenz.
In der Stadt Zuerich ist ein Abschlag «schwer vermietbar» ohne objektspezifische Begruendung
nicht haltbar.

---

## 5. Die vier Verfahrensartikel — alle geprueft (Auftragspunkt 3)

| Artikel | Ergebnis |
|---|---|
| `ertragswert-dcf.md` | **geaendert** — Basiszins-Kasten aufgeloest (SNB-Feed, R10 0.469 %); Referenzzins-Szenario nach der BWO-Publikation praezisiert; Langfrist-Inflationsanker ~1.0 % **bestaetigt und neu belegt** |
| `vergleichswert-hedonisch.md` | **geaendert** — neuer Abschnitt «Marktanspannung und Fallhoehe» mit den zwei Korrektiven Leerwohnungsziffer und UBS-Fundament-Score |
| `residualwertmethode.md` | **geaendert** — Segmentregel struktureller Leerstand (Bestand vs. Neubau) |
| `realwert-sachwert.md` | **geprueft, keine Aenderung noetig** — ausdruecklich vermerkt, mit Begruendung je aktualisierter Groesse |

**Zum Langfrist-Inflationsanker.** Der 13.08.-Lauf hat ihn bei ~1.0 % stehen gelassen mit der
Begruendung, der Teuerungsrueckgang (0.6 % → 0.4 %) sei energiegetrieben und damit reversibel.
**Das ist inzwischen an der Preisseite messbar:** comparis.ch weist per Datenstand Juli 2026
(Mitteilung 20.08.2026) **Heizoel rund 31 % teurer als vor einem Jahr** aus, «Energie zum
Heizen» +3,7 % gegenueber Juni. Die Komponente, die die Jahresteuerung gedrueckt hat, dreht
bereits wieder nach oben. Haette man den Anker im August auf 0.7–0.8 % gesenkt, waere die
Senkung nach vier Wochen zu revidieren gewesen. **Der Anker bleibt bei ~1.0 %** — und der Fall
ist der Beleg fuer die Regel selbst: ein Langfrist-Anker wird an Quartalen gemessen, nicht an
Monaten.

**Zum Realwert.** Keine der vier heute aktualisierten Groessen beruehrt ihn: der
Referenzzinssatz wirkt auf Bestandesmieten (Ertragswert), SREBI ist eine Preis-/Risikoreihe,
R10 eine Diskontierungsgroesse, die Leerwohnungsziffer ein Nachfragemass. Die massgebenden
Anker bleiben BFS-Baupreisindex **April 2026 = 100.6** (naechste Erhebung 01.10.2026,
Publikation Dez-2026) und die ZIW-Reihe. **Naechster Anlass: Dez-2026.**

---

## 6. Nicht getan, und warum (Rechenschaft)

- **BFS-Leerwohnungsziffer Schweiz und Kanton SZ per 01.06.2026** — an beiden Quellen direkt
  geprueft, beide am 01.09.2026 nicht publiziert. **Nicht geschaetzt, nicht aus Kantonswerten
  hochgerechnet.**
- **LIK August 2026** — nicht publiziert (juengster Stand Juli 2026 = 101.1, Jahresteuerung
  0.4 %). BFS publiziert Anfang September.
- **SMG-Mietindex August 2026** — nicht publiziert; juengster Stand Juli 2026 = 134 Punkte,
  0 % MoM, +2.4 % YoY (bereits am 23.08.2026 eingearbeitet). Erwartet ~13.09.2026.
- **Wuest Partner Immo-Monitoring Herbst 2026** — gesucht, **nicht gefunden**. Der einzige
  Treffer mit dem Titel «Wuest Partner veroeffentlicht Herbstausgabe des Immo-Monitoring»
  erwies sich beim Oeffnen als Artikel vom **01.11.2021** mit Prognosezahlen fuer 2022. Er
  wurde deshalb **nicht** verwendet. Der Fall ist es wert, notiert zu werden: eine
  Suchtreffer-Ueberschrift ohne Jahreszahl im Text ist keine Quelle.
- **Bring-Schulden Raphaels** (D1 UBS-FS-Quantile, D2 Bodenpreise, D5 Diskontsatz, D10, D12,
  D13, D14, D15, D16, D17) — auftragsgemaess **nicht** durch Schaetzwerte ersetzt, unveraendert
  offen.
- **Der zweite Ereignis-Trigger aus PROGRAMM.md** (Einarbeitung der fuenf Ingest-Reports vom
  31.07.2026, rund 370 KB, in die Wiki-Artikel) — **erneut nicht angefasst**, aus demselben
  Grund wie am 13.08.: er ist ein eigener Trigger, kein Bestandteil des Marktpuls-Auftrags.
  **Er ist damit seit 32 Tagen offen und ist der groesste Rueckstand dieser KB.** Vorschlag in
  Abschnitt 9.
- **Der taegliche Takt wurde nicht reaktiviert.** `immobewertung-training` steht unveraendert
  auf `enabled: false`. Das bleibt Raphaels Entscheid.

---

## 7. Bewertungsrelevanz in fuenf Saetzen

Das Zinsumfeld ist unveraendert tief (Leitzins 0.00 %, Referenzzins 1.25 %, R10 0.47 %) —
**kein Anlass, Diskont- oder Kapitalisierungssaetze anzupassen**. Neu ist, dass der
Durchschnittszinssatz **nicht mehr faellt**: die Erwartung sinkender Bestandesmieten ab 2027
traegt nicht mehr, beide Richtungen sind offen und die Schwelle nach oben ist die naehere.
Die Preisdynamik bleibt stark (SREBI 0.72, Wohneigentum +3.6 % YoY, UBS-Prognose 2026
+3.5–4.0 %), das Blasenrisiko im moderaten Band — **aber die Fundamentalperspektive steht bei
1.81 «erhoeht», und Zuerich ist die einzige Grossstadt mit hohem regionalem Ungleichgewicht.**
Der Wohnungsmarkt bleibt extrem angespannt (ZH 0.52 %, Stadt ZH 0.11 %, alles unter der
Fluktuationsreserve von 1.3 %), **ausser im Neubausegment mit 3.02 %** — was fuer jede
Residualwertrechnung auf einem Neubauprojekt die praktisch wichtigste Zahl dieses Marktpulses
ist. Fuer die Ertragsbewertung bleibt der wichtigste Punkt unveraendert der aus Run 51: bei
Neuvermietungsannahmen ist die Jahresprognose der falsche Anker.

---

## 8. Betriebsbefund: der NAS-Mount ist heute mehrfach weggefallen

Kein KB-Inhalt, aber ein Befund, den der naechste Lauf kennen sollte. Der SessionStart-Hook
meldete «NAS nicht gemountet», obwohl der Mount stand; danach fiel er im Lauf **viermal** aus:

```
07:00:48 NAS nicht bereit — Guard startet Heilung   → bereit nach 22s
07:07:55 NAS nicht bereit — Guard startet Heilung   → bereit nach 20s
07:13:28 NAS nicht bereit — Guard startet Heilung   → bereit nach 45s
07:34:47 NAS nicht bereit — Guard startet Heilung   → NICHT bereit nach 120s (rc 1)
```

Beim vierten Mal blieb `/Volumes/daten` leer, waehrend dieselbe Freigabe unter
**`/Volumes/daten-2`** verfuegbar war: der Mount-Automat hatte parallel ueber den
**LAN-Pfad** (`//raphaeljans@192.168.1.10/daten`) und den **Tailscale-Pfad**
(`//raphaeljans@diskstation918.tail8265aa.ts.net/daten`) gemountet, und die numerierten
Ersatz-Mountpoints `daten-1`/`daten-2` blieben stehen. **Der Rest dieses Laufs lief ueber
`/Volumes/daten-2`** — physisch dieselbe Freigabe, dieselben Dateien, nur ein anderer lokaler
Mountpoint.

**Zwei Punkte fuer Raphael, beide bewusst nicht selbst ausgefuehrt:**

1. Der Guard `ensure-nas-mounted.sh` prueft **nur `/Volumes/daten`**. Liegt die Freigabe auf
   einem numerierten Ersatz-Mountpoint, meldet er «NAS nicht verfuegbar», obwohl sie erreichbar
   ist — ein headless-Lauf haette hier **abgebrochen, obwohl er haette arbeiten koennen**. Ein
   Fallback auf `daten-N` waere eine kleine, lohnende Ergaenzung.
2. Die verwaisten Mountpoints unter `/Volumes/` und der doppelte Mount (LAN + Tailscale auf
   dieselbe Freigabe) gehoeren aufgeraeumt. Beides sind Eingriffe in Systempfade und faellt in
   die Klassen der Rule `interaktive-eingriffe`; **in einem unbeaufsichtigten Lauf wird das
   nicht gemacht.** Vorgelegt statt getan.

---

## 9. Naechster Ereignis-Trigger (Auftragspunkt 5)

**Angelegt: `immobewertung-marktpuls-261201`, One-Time, 01.12.2026, 09:00 CEST.**

Der 01.12.2026 ist der dichteste Terminpunkt des Restjahres — **drei faellige Groessen in einem
Fenster**:

1. **BWO-Referenzzinssatz-Publikation 01.12.2026** (Stichtag 30.09.2026) — die Leitfrage ist
   nach dem heutigen Lauf schaerfer geworden: bleibt der Durchschnittszinssatz bei 1.31 %, oder
   nimmt er die verbleibenden **6 Basispunkte zur Erhoehungsschwelle 1.37 %**?
2. **SNB-Lagebeurteilung 10.12.2026** (kurz danach) und das Quartalsheft 4/2026.
3. **BFS-Baupreisindex Dez-2026** aus der Oktober-Erhebung — **der einzige Termin des Jahres,
   an dem `realwert-sachwert.md` ueberhaupt nachzufuehren ist.**

**Uhrzeit 09:00 statt 07:00** — der heutige Lauf hat gemessen, dass die BWO zwischen 07:52 und
08:00 publiziert.

**Nicht erneut zu holen:** BWO-Wert per 30.06.2026, SREBI Q2-2026 (verifiziert, `established`),
IMPI Q2-2026, LIK 07.2026. **Zuerst zu holen, weil dann laengst publiziert:**
BFS-Leerwohnungsziffer CH und SZ per 01.06.2026, LIK 08–11.2026, SMG-Mietindex 08–11.2026,
SREBI Q3-2026 (~11.2026), IMPI Q3-2026 (~10.2026).

**Zusaetzlich, und ausdruecklich als eigener Vorschlag an Raphael, nicht als angelegter Task:**
der zweite Ereignis-Trigger dieser KB — die Einarbeitung der fuenf Ingest-Reports vom
31.07.2026 (rund 370 KB) in die Wiki-Artikel — ist jetzt **32 Tage offen** und wurde von zwei
Marktpuls-Laeufen in Folge korrekt nicht mitgenommen. Er ist der groessere Rueckstand dieser
KB und braucht einen **eigenen Lauf**, nicht einen Anhang an einen Marktpuls. Ein
unbeaufsichtigter Nachtlauf dafuer waere sinnvoll — der Entscheid darueber liegt bei Raphael,
weil die KB bewusst auf Ereignis-Trigger steht und ein Lauf dieser Groesse kein Nebenprodukt
sein soll.

**Der taegliche Takt bleibt aus.**

---

## 10. Geaenderte Dateien

| Datei | Aenderung |
|---|---|
| `wiki/investorenmarkt-makro.md` | BWO-Publikation 01.09.2026 samt Trendbefund und Terminen; SREBI-Verifikation + vier Perspektiven + Revisionsgrund + regionale Karte; R10 aus dem SNB-Tagesfeed; **neuer Abschnitt «Leerwohnungsziffer»**; Frontmatter, `sources`, Log-Eintrag |
| `wiki/ertragswert-dcf.md` | Basiszins-Kasten aufgeloest (SNB-Feed); Inflations-Langfristanker bestaetigt und belegt; Referenzzins-Szenario praezisiert; Frontmatter |
| `wiki/vergleichswert-hedonisch.md` | neuer Abschnitt «Marktanspannung und Fallhoehe» (Leerwohnungsziffer + Fundament-Score); Frontmatter |
| `wiki/residualwertmethode.md` | neuer Abschnitt zur Segmentverwechslung beim strukturellen Leerstand; Frontmatter |
| `wiki/realwert-sachwert.md` | Pruefvermerke 13.08. und 01.09.2026 («geprueft, keine Aenderung») mit Begruendung je Groesse; Frontmatter |
| `wiki/datenquellen-registry.md` | SREBI-Zeile auf `established` + Zugangsweg; **zwei neue Quellenzeilen** (SNB-Feed, Leerwohnungszaehlung); **Nutzungsregeln 9 und 10** |
| `wiki/wissensluecken.md` | Erledigt-Eintrag 01.09.2026 |
| `wiki/INDEX.md` | sechs Zeilen nachgefuehrt |
| `CHANGELOG.md` | Eintrag 2026-09-01 zuoberst |
| `outputs/2026-09-01_immobewertung-marktpuls.md` | dieser Report |

---

## Quellen (alle Primaerabruf 01.09.2026, sofern nicht anders vermerkt)

- **BWO**, «Hypothekarischer Referenzzinssatz» (bwo.admin.ch/de/referenzzinssatz) und
  «Entwicklung Referenzzinssatz und Durchschnittszinssatz» — Abruf 08:00 CEST: 1.25 %
  unveraendert ab 02.09.2026, Durchschnittszinssatz 1.31 % per Stichtag 30.06.2026,
  Publikationstermine 01.12.2026 und 2027
- **UBS CIO GWM**, «UBS Swiss Real Estate Bubble Index — Schweizer Immobilien»,
  Holzhey/Skoczek/Saputelli, PDF 8 S., publ. 06.08.2026 06:00 UTC (Primaerdokument)
- **SNB**, Feed «Aktuelle Zinssaetze» (snb.ch/public/rss/de/interestRates), Datenstand
  31.08.2026: R10 0.469 %, Leitzins 0.00 %, SARON −0.05 %
- **Kanton Zuerich**, Medienmitteilung «Leerwohnungsziffer bleibt tief», 18.08.2026
- **Stadt Zuerich**, Medienmitteilung «Leichter Anstieg: 252 Leerwohnungen in Zuerich», 08.2026
- **Kanton Schwyz**, Datenportal data.sz.ch, Explore-API v2.1, Datensatz
  `leerstehende-wohnungen-und-leerwohnungsziffer` (27 Jahrgaenge, letzter 2025)
- **BFS**, Leerwohnungen (bfs.admin.ch) — Reihe endet bei 2025; Medienmitteilung
  «Leerwohnungsziffer faellt auf 1 Prozent im Jahr 2025», publ. 09.09.2025
- **BFS/EDI**, LIK Juli 2026 = 101.1 (Basis Dez-2025 = 100), Jahresteuerung 0.4 %
- **comparis.ch AG**, Medienmitteilung 20.08.2026 (Datenstand Juli 2026): Heizoel +31 % YoY,
  Energie zum Heizen +3.7 % MoM
- **SMG Swiss Marketplace Group**, Mietindex 07/2026 (134 Punkte, +2.4 % YoY, publ. 13.08.2026)
  — juengster publizierter Stand
