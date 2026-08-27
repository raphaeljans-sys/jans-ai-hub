---
quelle: "Vollzugshilfe EN-102 «Waermeschutz von Gebaeuden»"
herausgeber: "EnFK — Konferenz Kantonaler Energiefachstellen"
ausgabe: "Januar 2020 (Basis: Norm SIA 380/1, Ausgabe 2016) — die geltende Fassung. ⚠⚠ **Begruendung der Korrektur vom 2026-08-24 am selben Tag richtiggestellt:** die frueher gefuehrte Angabe «Dezember 2018» war KEINE Verwechslung mit EN-112 «Kuehlraeume», sondern eine **echte, aeltere Ausgabe derselben Vollzugshilfe EN-102**, die weiterhin auf einem kantonalen Spiegel liegt. Beide Ausgaben nebeneinander geladen und verglichen, siehe Abschnitt «Zwei Ausgaben — Editionsklaerung»"
gelesen: "2026-06-06 (S. 1-16, vollstaendig); Korrektur-Gegenpruefung Tabelle 5 + Frontmatter 2026-07-17 (S. 10-11, per curl+pdftotext); Ausgabedatum-Korrektur 2026-08-24 (unabhaengiger Zweitmirror Kt. Schaffhausen, S. 1 + Fusszeile jeder Seite S. 4-21, per WebFetch geladen)"
datenstand: "Jan 2020 / SIA 380/1:2016 — operative Vollzugsbasis Kt. ZH bereits seit Anforderungsprofil Version 16.01a (Ausgabe 11.04.2017), fortgefuehrt ueber die EnerG-Revision 1.9.2022 (MuKEn 2014) hinweg. ⚠ MuKEn 2025 von EnDK 08/2025 verabschiedet, kantonale Umsetzung ZH Stand 06/2026 ausstehend."
status: established
sources:
  - "EnFK, Vollzugshilfe EN-102 «Waermeschutz von Gebaeuden», Ausgabe Januar 2020 (Basis: Norm SIA 380/1, Ausgabe 2016), Tabelle 5 S. 10-11 — Original-PDF vormals energie.tg.ch/public/upload/assets/95320/22_EN-102-d_Waermeschutz_3801_2016.pdf (per curl+pdftotext geladen und gegengeprueft 2026-07-17; URL seit 2026-08-24 defekt, 301 auf nicht aufloesbaren internen Hostnamen)"
  - "wissen/energie/destillate/muken-2025-anhang-1-3-uwert-heizwaermebedarf.md (Run 2026-07-17) — hatte den Transkriptionsfehler in Tabelle 5 sowie den falschen Frontmatter-Jahrgang (2009 statt 2016 als SIA-Basis) bereits identifiziert und dokumentiert; diese Korrektur setzt die dort empfohlene Bereinigung um"
  - "Adversarial-Verify Runde 2 (2026-07-23): Kanton Luzern, Kantonale Energieverordnung (KEnV), Anhang 1-3 (Dokument Nr. 774-A1), Amt fuer Umwelt und Energie Luzern — uwe.lu.ch/-/media/UWE/Dokumente/Themen/Energie/Energiegesetz_EnG/Anhang_KEnV.pdf, per curl+pdftoppm (Tabellen liegen als Bildgrafik vor) gegengeprueft 2026-07-23 — unabhaengige vierte Quelle (kantonale Rechtsnorm statt Vollzugs-/Software-Sekundaerdokument), Tabelle 2/3/4/5 UND Anhang 3 (Q_H,li) zahlengleich"
  - "Ausgabedatum-Korrektur (2026-08-24): Kanton Schaffhausen, Baudepartement Energiefachstelle, Sammel-PDF «Register 2 Gebaeudehuelle» (sh.ch/CMS/get/file/31530027-6467-41e2-9546-311c53380766), enthaelt die vollstaendige Vollzugshilfe EN-102 als eigenstaendiges Kapitel S. 4-21. Zwei voneinander unabhaengige Belege in derselben Datei: (1) die einleitende Registerseite S. 1 listet alle fuenf Dokumente des Registers mit exaktem Ausgabedatum je Titel — EN-102 «Waermeschutz von Gebaeuden» Januar 2020, EN-112 «Kuehlraeume» Dezember 2018, EN-131/132 Juni 2017 — (2) die Fusszeile jeder einzelnen EN-102-Seite (S. 4-21) traegt durchgehend «Ausgabe Januar 2020 (Basis: Norm SIA 380/1, Ausgabe 2016)». Die PDF-Metadaten (Title: Vollzugshilfe EN-102, CreationDate 2020-02-20) stuetzen das Datum zusaetzlich. Tabelle 2 (U-Werte inkl. Storenkasten 0,50/0,50) ist zahlengleich mit dem bisherigen Destillat-Stand — die Werte selbst waren nie falsch, nur das Ausgabedatum im Frontmatter"
last_updated: "2026-08-24 (zweiter Lauf desselben Tages: Editionsklaerung Dez. 2018 ↔ Jan. 2020 am Volltext-Diff, Revisionsindex gefunden, Zahlengleichheit aller Grenzwert-Tabellen belegt)"
---

# EN-102 «Waermeschutz von Gebaeuden» (EnFK, Jan 2020)

## Das Wichtigste in 1 Satz
Diese Vollzugshilfe legt die **konkreten U-Wert-Grenzwerte** (Einzelbauteilnachweis) und die
**Heizwaermebedarf-Grenzwerte** (Systemnachweis) fest, mit denen ein Gebaeude in der Schweiz
den winterlichen Waermeschutz nach SIA 380/1 erfuellen muss — plus die Regeln fuer den
sommerlichen Waermeschutz (g-Wert).

## Zwei Nachweiswege (Wahl der Bauherrschaft)
- **Einzelbauteilnachweis:** legt fuer jedes Bauteil den maximal zulaessigen U-Wert fest
  (Tabellen 2/4). Einfacher; jede einzelne Anforderung muss eingehalten sein.
- **Systemnachweis:** rechnet den Heizwaermebedarf Q_H ueber die ganze Huelle (Tabelle 5);
  die einzelnen U-Werte duerfen frei gewaehlt werden, solange das Ziel Q_H,li eingehalten ist.
- **Zwingend Systemnachweis**, wenn einzelne U-Werte/Waermebruecken die Grenzwerte reissen,
  ODER bei Vorhangfassaden / Sonnenschutzglaesern mit g < 0,3.

## Kernzahlen — Einzelbauteilnachweis NEUBAU (Tabelle 2, U_li in W/(m²·K))
Spalte 1 = gegen Aussenklima oder weniger als 2 m im Erdreich · Spalte 2 = gegen unbeheizte
Raeume oder mehr als 2 m im Erdreich. Gilt bei 20 °C Raumtemperatur.

| Bauteil | Aussen / <2 m Erdreich | unbeheizt / >2 m Erdreich |
|---|---|---|
| Opake Bauteile (Dach, Decke, Wand, Boden) | **0,17** | **0,25** |
| Fenster, Fenstertueren | 1,0 | 1,3 |
| Tueren | 1,2 | 1,5 |
| Tore (SIA 343) | 1,7 | 2,0 |
| Storenkasten | 0,50 | 0,50 |

## Kernzahlen — Einzelbauteilnachweis UMBAU / UMNUTZUNG (Tabelle 4, U_li)
Gilt fuer vom Umbau/Umnutzung **betroffene** Bauteile. Neue Bauteile beim Umbau (z.B. neue
Fenster) erfuellen die strengeren **Neubau**-Werte.

| Bauteil | Aussen / <2 m Erdreich | unbeheizt / >2 m Erdreich |
|---|---|---|
| Opake Bauteile (Dach, Decke, Wand, Boden) | **0,25** | **0,28** |
| Fenster, Fenstertueren | 1,0 | 1,3 |
| Tueren | 1,2 | 1,5 |
| Tore (SIA 343) | 1,7 | 2,0 |
| Storenkasten | 0,50 | 0,50 |

## Waermebruecken-Grenzwerte (Tabelle 3)
| Typ | Beschreibung | Grenzwert |
|---|---|---|
| Typ 1 | Auskragungen als Platten/Riegel | Ψ 0,30 W/(m·K) |
| Typ 2 | Unterbrechung der Daemmschicht durch Waende/Boeden/Decken | Ψ 0,20 |
| Typ 3 | Unterbrechung an horizontalen/vertikalen Gebaeudekanten | Ψ 0,20 |
| Typ 5 | Fensteranschlag | Ψ 0,15 |
| Typ 6 | Punktuelle Durchdringungen der Daemmung | χ 0,30 W/K |

Beim **Einzelbauteilnachweis** gibt es fuer Umbauten keine Waermebruecken-Grenzwerte; beim
**Systemnachweis** sind sie in Q_H einzurechnen. Vereinfachung: 3 m Waermebrueckenlaenge je m²
Fensterflaeche fuer den Fensteranschlag (SIA 380/1 Ziff. 3.5.3.4).

## Kernzahlen — Systemnachweis Heizwaermebedarf NEUBAU (Tabelle 5, kWh/m²)
Q_H,li = Q_H,li0 + ΔQ_H,li · (A_th/A_E). Klima: Jahresmitteltemperatur +9,4 °C,
Auslegungstemperatur −8 °C. p_H,li = spez. Heizleistung.

| Geb.-Kategorie | Q_H,li0 | ΔQ_H,li | p_H,li (W/m²) |
|---|---|---|---|
| I Wohnen MFH | 13 | 15 | 20 |
| II Wohnen EFH | 16 | 15 | 25 |
| III Verwaltung | 13 | 15 | 25 |
| IV Schule | 14 | 15 | 20 |
| V Verkauf | 7 | 14 | — |
| VI Restaurant | 16 | 15 | — |
| VII Versammlungslokal | 18 | 15 | — |
| VIII Spital | 18 | 17 | — |
| IX Industrie | 10 | 14 | — |
| X Lager | 14 | 14 | — |
| XI Sportbaute | 16 | 14 | — |
| XII Hallenbad | 15 | 18 | — |

**Umbau/Umnutzung:** Grenzwert Q_H,li,re = **1,5-faches** des Neubau-Grenzwerts.

**Adversarial-Verify Runde 2 2026-07-23:** Q_H,li-Werte an unabhängiger Quelle Kanton Luzern
(KEnV Anhang 3, Dokument Nr. 774-A1, uwe.lu.ch) zahlengleich bestätigt — alle 12 Kategorien
I-XII (Q_H,li0, ΔQ_H,li, p_H,li) sowie der Umbau-Faktor 1,5×Q_H,li stimmen exakt mit der Tabelle
oben überein. Damit bestätigt sich unabhängig, dass die am 2026-07-17 korrigierte Tabelle 5
(vormaliger Transkriptionsfehler Q_H,li0 14/16/16/18/13/24/24/20/15/15/19/19, Q_H,li
16/16/21/18/16/19/19/20/18/18/18/25) korrekt bereinigt wurde — die jetzigen Werte
13/16/13/14/7/16/18/18/10/14/16/15 (Q_H,li0) und 15/15/15/15/14/15/15/17/14/14/14/18 (Q_H,li)
sind an einer vierten, von EnFK/KKE, Kt. ZH und ENTECH völlig unabhängigen Quelle (kantonale
Rechtsnorm) gegengeprüft. Zusätzlich bestätigt: Tabelle 2 (Einzelbauteil Neubau), Tabelle 3
(Wärmebrücken) und Tabelle 4 (Umbau) — alle Werte in dieser Datei sind gegen die LU-Anhänge 1/2
geprüft und identisch (0,17/0,25 Neubau opak, 0,25/0,28 Umbau opak, Fenster/Türen/Tore/
Storenkasten sowie Ψ-/χ-Werte deckungsgleich).

## Energiebezugsflaeche (EBF / A_E)
Summe aller ober-/unterirdischen Geschossflaechen, deren Nutzung Beheizen/Klimatisieren
verlangt — brutto (Aussenmasse) gemessen. Raumhoehe < 1,0 m zaehlt nicht. Treppenhaeuser/
Aufzugsschaechte gegen aktiv beheizte Geschosse duerfen vereinfacht mit aequivalentem U-Wert
**2,5 W/(m²·K)** gerechnet werden (SIA 380/1:2016 Anhang C).

## Sommerlicher Waermeschutz (g-Wert)
- Guter Sonnenschutz ist bei **allen Raeumen** (auch Wohnbauten) Pflicht; Anforderung an den
  g_tot nach SIA 180:2014 Verfahren 2.
- g_tot-Anforderung haengt von **Orientierung** und **Glasanteil f_g** der Fassade ab
  (E/SE/S/SW/W am strengsten; N am mildesten).
- Bei Kuehlung mit Kaeltemaschine / wenn Kuehlung nach SIA 382/1 noetig: zusaetzlich
  **automatische, fassadenweise Steuerung** + **Windfestigkeit** des Sonnenschutzes (SIA 342:2009).
- Verschattungsfaktor F_S1 ohne Nachweis: Horizontwinkel 30° (mehrgeschossig/hoehere Nachbarn),
  sonst 20°.

## Bauherren-Transfer
- **«Welcher U-Wert ist Pflicht?»** → Aussenwand/Dach/Boden eines Neubaus **0,17**, beim Umbau
  des betroffenen Bauteils **0,25**; Fenster **1,0**. Das sind Maximalwerte — kleiner = besser.
- Wer ein einzelnes Bauteil nicht schafft (z.B. Denkmalschutz an der Fassade), rechnet den
  **Systemnachweis** und kompensiert ueber andere, besser gedaemmte Bauteile.
- Beim Umbau gilt: nur **betroffene** Bauteile muessen ertuechtigt werden; reine Mal-/
  Tapezierarbeiten oder Kuechen-/Bad-Erneuerungen loesen keine Daemmpflicht aus.
- Sommerlicher Hitzeschutz ist heute **Pflicht** — aussenliegende, bewegliche, windfeste und
  gesteuerte Beschattung einplanen, nicht erst nachruesten.

## Offene Punkte / zu pruefen
- ⚠ **Datenstand:** Werte basieren auf SIA 380/1:2016 (EN-102 Jan 2020, Fusszeile jeder Seite
  bestaetigt "Basis: Norm SIA 380/1, Ausgabe 2016" — Korrektur 2026-07-17, vorher irrtuemlich als
  2009 gefuehrt; Ausgabedatum der Vollzugshilfe selbst am 2026-08-24 von Dez 2018 auf Jan 2020
  berichtigt, siehe Frontmatter `sources`). Kt. ZH wendet diese Werte bereits seit dem eigenen Anforderungsprofil Version
  16.01a (Ausgabe 11.04.2017) an, fortgefuehrt ueber das per 1.9.2022 revidierte EnerG. **MuKEn
  2025** (EnDK 08/2025) uebernimmt dieselben Zahlenwerte unveraendert (siehe
  `[[muken-2025-anhang-1-3-uwert-heizwaermebedarf]]`) — die eigentliche Verschaerfung liegt in
  anderen Modulen (Fossilverbot, PV-Pflicht, Grauenergie), nicht bei U-Werten/Heizwaermebedarf.
- λ-Wert-Tabellen der Baustoffe stehen im SIA-Register (www.sia.ch/register) bzw. im
  BFE-Bauteilekatalog → siehe `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]`.
- Kennwerte Normfenster + g-Wert: «Merkblatt Fenster» der EnFK (www.endk.ch).

## Zwei Ausgaben — Editionsklaerung (2026-08-24, Volltext-Diff)

**Es gibt EN-102 in zwei Ausgaben, beide auf Basis SIA 380/1:2016, beide 18 Seiten.** Beide wurden
am 24.08.2026 nebeneinander per `curl` geladen und mit `pdftotext -layout` volltext-verglichen:

| Ausgabe | Fundort (Abruf 24.08.2026) | Groesse |
|---|---|---|
| **Dezember 2018** (aeltere) | `energie.tg.ch/public/upload/assets/95320/22_EN-102-d_Waermeschutz_3801_2016.pdf` — HTTP 200, laedt einwandfrei | 832'765 B |
| **Januar 2020** (geltende) | `energiehub-gebaeude.ch/wp-content/uploads/2025/08/EN-102-d_Waermeschutz_3801_2016_2020Jan-2.pdf` — kanonisches EnDK-Portal, Upload 08/2025 | 841'171 B |

Titelblatt und Fusszeile jeder Seite tragen das jeweilige Datum woertlich
(«Ausgabe Dezember 2018 (Basis: Norm SIA 380/1, Ausgabe 2016)» bzw. «Ausgabe Januar 2020 …»).

**Zwei Richtigstellungen an der eigenen Arbeit vom selben Tag:**

1. **Die Ausgabe «Dezember 2018» war nie ein Irrtum.** Der erste Korrekturlauf vom 24.08.2026 hat
   sie als Verwechslung mit EN-112 «Kuehlraeume» erklaert. Das stimmt nicht: sie ist eine echte
   Vorauflage von EN-102 selbst — der urspruengliche PL-04-Quelldateiname
   `EN-102-d_Waermeschutz_3801_2009_2018Dez.pdf` traegt das Datum sogar im Namen. **Richtig war
   die Korrektur des geltenden Standes auf Januar 2020, falsch war ihre Begruendung.**
2. **Der thurgauer Spiegel ist NICHT defekt.** Der Frontmatter-Vermerk «URL seit 2026-08-24
   defekt, 301 auf nicht aufloesbaren internen Hostnamen» liess sich heute nicht reproduzieren:
   HTTP 200, 832'765 Bytes, keine Umleitung. Er zeigt nur die aeltere Ausgabe.

**Der fachlich entscheidende Befund: die Zahlen sind identisch.** Der Volltext-Diff (Ausgabezeile
neutralisiert) ergibt genau **zwei materielle Aenderungen**, beide im Kapitel 8 (sommerlicher
Waermeschutz), beide im Revisionsindex der Ausgabe Januar 2020 woertlich ausgewiesen:

> «Sept. 2019 · 8.1 Sonnenschutz · Praezisierung zu Free-Cooling»
> «Sept. 2019 · 8.4 Diagramm · Praezisierung: Einzuhaltende Punkte sind «Vereinfachungen»»

**Kapitel 2, 5, 6 und 7 sind wortgleich** — damit sind **alle in diesem Destillat gefuehrten
Grenzwerte** (Tabelle 2 U-Werte Neubau, Tabelle 3 Waermebruecken, Tabelle 4 Umbau/Umnutzung,
Tabelle 5 Heizwaermebedarf) zwischen den beiden Ausgaben unveraendert. Es besteht **kein
Korrekturbedarf an einer einzigen Zahl** der KB, und die 57 Backlinks auf dieses Destillat tragen
weiter. Das ist der belastbare Teil des Befunds: nicht «vermutlich gleich», sondern zeilenweise
verglichen.

**Sachlicher Zugewinn aus der Revision (Kap. 8.1, Wortlaut Ausgabe Januar 2020):**

> «Automatische Steuerung des Sonnenschutzes ist noetig, wenn eine Kaeltemaschine fuer die
> Kuehlung eingebaut wird. Das heisst bei einer Anlage ohne Kaeltemaschine z.B. Free-Cooling via
> Erdsonde oder Grundwasser, ist die Automatisierung des Sonnenschutzes keine Pflicht. Das
> alleinige Betreiben von Umwaelz- und Foerderpumpen gilt nicht als aktive Kuehlung.»

Dieser Satz stand in der Ausgabe Dezember 2018 noch nicht und war in der KB nirgends erfasst →
eingearbeitet in `[[sommerlicher-waermeschutz-sia180-nachweisverfahren]]`, Bauherren-Antwort
**F258**. Die zweite Aenderung (Kap. 8.4) stuft die im Ablaufdiagramm genannten Punkte
ausdruecklich als «Vereinfachung» ein — der volle SIA-180-Nachweis bleibt der Massstab, das
Diagramm ist der vereinfachte Weg dorthin.

**Portal-Umzug (fuer kuenftige Links):** `endk.ch` leitet per 301 auf **`energiehub-gebaeude.ch`**
um; die Vollzugshilfen liegen dort unter `/fachleute/vollzugshilfen/`. Das dortige Angebot fuehrt
weiterhin nur die Saetze «EN-100 bis EN-142 (MuKEn 2014)» und historisch «EN-1 bis EN-16
(MuKEn 2008)» — **kein MuKEn-2025-Satz**, kein Termin dafuer publiziert (Abruf 24.08.2026).

Verwandt: `[[sia-380-1-heizwaermebedarf-berechnung]]`, `[[bauphysik-heizwaermebedarf-kennwerte]]`,
`[[bfe-u-wert-bauteilekatalog-neubauten-2002]]`, `[[enfk-en-104-eigenstromerzeugung]]`,
`[[muken-2025-anhang-1-3-uwert-heizwaermebedarf]]`.

---

## Ausgabenstand-Prüfung 2026-08-27 (Run 165, E-R164-2) — Ausgabe Januar 2020 BESTÄTIGT

Erstmals wurde nicht nur geprüft, ob eine **andere** Quelle diese Vollzugshilfe ablöst, sondern ob
eine **neuere Ausgabe derselben** Vollzugshilfe existiert — die Frage, an der Run 164 beim Merkblatt
Fenster gescheitert war.

**Ergebnis: keine neuere Ausgabe.** Auf der amtlichen EnDK-Plattform `energiehub-gebaeude.ch` (Ziel
des HTTP-301 von `endk.ch/de/fachleute-1/vollzugshilfen`) liegt als jüngste Datei
`EN-102-d_Waermeschutz_3801_2016_2020Jan-2.pdf` (Upload 12.08.2025). PDF-Title «Vollzugshilfe EN-102»,
CreationDate 20.02.2020, Fusszeile durchgehend **«Ausgabe Januar 2020 (Basis: Norm SIA 380/1, Ausgabe
2016)»**. Der bisher defekte TG-Link ist damit durch eine amtliche, erreichbare Fundstelle ersetzt.

**Die MuKEn-2025-Generation der Vollzugshilfen ist per 27.08.2026 nicht publiziert.** Der im
Frontmatter vermerkte Vorbehalt («kantonale Umsetzung ZH ausstehend») bleibt damit gültig; er betrifft
die künftige Ablösung, nicht den heutigen Stand.

**Familien-Trennung beachten:** Die Nummer EN-102 trägt auch ein **Nachweisformular** (EN-102a/b/c,
Versionen August 2020 / Oktober 2018 / Juni 2023, gültig bis 31.12.2026). Das ist ein anderes Dokument
als diese Vollzugshilfe. Erhebung und Tabelle: `[[enfk-nachweisformulare-gueltigkeit-2026]]`.
