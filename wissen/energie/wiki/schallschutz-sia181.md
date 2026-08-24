---
title: Schallschutz im Hochbau — SIA 181:2020 (Anforderungswerte)
status: established
last_updated: 2026-08-24
datenstand: "2008 (ältester tragender Quellenstand: BFH-Lignum-Bericht vom 04.12.2008 zur Flankenübertragungs-Mechanik, gestützt auf SIA 181:2006/EN 12354:2001 — der Mechanismus selbst gilt laut Destillat normgültig und zeitlos auch unter der heute geltenden Ausgabe SIA 181:2020, nur die konkreten Anforderungswerte sind auf 2020 zu beziehen, siehe die im Artikel bereits gesetzte ⚠ Ausgaben-Diskrepanz-Notiz. Die übrigen Quellen sind neuer: CLT-Schallschutz Stora Enso, Produktdokumentation Version 06.2021; Cercle-Bruit-Merkblatt Kt. Schwyz vom 29.01.2021 (löst die Vorversion vom 30.10.2020 ausdrücklich ab); baukultur-laerm.ch zu SIA 181:2020 Ziff. 3.1.1, Stand 20.01.2022; SIA 181:2020 selbst)"
sources: [destillate/sia-181-schallschutz-anforderungswerte.md, destillate/clt-schallschutz-stora-enso.md, destillate/lignum-schallschutz-holzbau-flankenuebertragung.md, destillate/aussenlaerm-schallschutzfenster-strasse-bahn.md, destillate/cerclebruit-sz-merkblatt-laermbelastete-gebiete.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[holzbau-bauphysik-clt]], [[clt-schallschutz-stora-enso]], [[lignum-schallschutz-holzbau-flankenuebertragung]], [[aussenlaerm-schallschutzfenster-strasse-bahn]], [[cerclebruit-sz-merkblatt-laermbelastete-gebiete]]
---

# Schallschutz im Hochbau — SIA 181:2020

Schnellreferenz für die verbindlichen CH-Schallschutz-Anforderungen. Speist FAQ **F25** (Schallschutz-
Pflicht) und schärft **F17** (taugt CLT-Holzbau akustisch). Faktenbasis → `[[sia-181-schallschutz-anforderungswerte]]`.

> **Querbezug KB normen (Fundstelle/Ausgabe):** Norm-Fundstelle SIA 181 führt die normen-KB
> (`wissen/normen/destillate/sia-181-2006`, Register `wissen/normen/wiki/REGISTER` Zeile 109).
> ⚠ **Ausgaben-Diskrepanz:** dieser Artikel arbeitet mit der aktuellen Ausgabe **SIA 181:2020**;
> das normen-Register führt bislang **2006** als gültig (2013-Register-Benchmark). Re-Destillat
> SIA 181:2020 in normen ausstehend (Wissens-Chef Run 3, 2026-07-13).

## Vier Schutzziele, eine Logik
SIA 181:2020 regelt vier Lärmarten: **Luftschall** (Stimme/TV durch die Wand), **Trittschall**
(Gehen oben), **Haustechnik** (WP/Lüftung/Sanitär) und **Aussenlärm** (Strasse/Bahn). Bewertet
wird stets der **Empfangsraum** (wo gestört wird) über seine **Lärmempfindlichkeit**
(gering / mittel-Wohnen / hoch) und den **Störgrad** der Quelle.

**Zwei Niveaus:** Mindestanforderung (Gesetz) und erhöhte Anforderung (Komfort). Abstand seit 2020
**4 dB** beim Innenlärm (vorher 3), **3 dB** beim Aussenlärm.

## Die wichtigsten Zahlen (Wohnen, mittlere Empfindlichkeit)
| Schutzziel | Mindest | erhöht | Merksatz |
|---|---|---|---|
| Luftschall Wohnungstrennung D_i (Störgrad mässig) | ≥ 52 dB | ≥ 56 | grösser = besser |
| Trittschall Wohnungstrennung L' (mässig) | ≤ 53 dB | ≤ 49 | kleiner = besser |
| Haustechnik Dauergeräusch im Schlafraum L_H | ≤ 28 dB(A) | ≤ 24* | *Kleinstwert 25 |
| Aussenlärm ruhige Lage D_e | 27 dB | 30 | im Verkehr: L_r − 33 |

Vollständige Tabellen (alle Empfindlichkeits-/Störgrad-Kombinationen, Haustechnik-Einzelgeräusche,
Aussenlärm im Verkehrsbereich, Empfehlungen innerhalb der Wohnung) → `[[sia-181-schallschutz-anforderungswerte]]`.

## Die Schlüsselregel für Bauherren
**Bei EFH, Doppel-/Reihen-EFH und Stockwerkeigentum gelten gegen Aussenlärm immer die ERHOEHTEN
Anforderungen** — von Gesetzes wegen, ohne Vertragsklausel. Für den **Innen-Komfort** (kein
Trittschall vom Nachbarn) muss der Bauherr die erhöhten Anforderungen dagegen **vertraglich
vereinbaren** (Werkvertrag/Kaufvertrag) — sonst schuldet der Unternehmer nur das Minimum.
→ Schnittstelle Skill `werkvertrag` (Vertragsklausel) / `ausschreibung` (LV-Vorgabe).

## Bauwert ≠ Laborwert — die Flanken-Mechanik
SIA 181 fordert **D_nT,w / L'_nT,w am fertigen Bau, inkl. Flankenübertragung** (volumen-/spektral-
korrigiert), nicht den Labor-Einzahlwert des Bauteils. Faustregel: das Labor-R_w/L'_n,w muss **mit
Reserve** über der Anforderung liegen.

**Der Strich macht den Unterschied:** **R_w** (ohne Strich) = reine Bauteilkenngrösse im Labor
**ohne** Nebenwege; **R'_w** (mit Strich) = Bauwert **mit** den bauüblichen Flanken (analog Trittschall
L_n,w → L'_n,w). SIA 181 verlangt seit der Ausgabe 2006 (direkter Bezug zur **EN 12354**), dass neben
dem Trennbauteil die **~12 Nebenwege** über die flankierenden Bauteile in die Prognose einbezogen
werden. Zwei Zuschläge:
- **K_P** (Projektierungszuschlag) deckt Streuungen ab;
- **K_F** (Flankenübertragung) wird **zusätzlich** angesetzt — via Prognose nach EN 12354 oder via
  Abschätzung aus dem Vergleich Labor↔Bau.

Zudem zählt erst die **Summe aus R_w und dem Spektrum-Anpassungswert** (C für Autobahnlärm, C_tr
für städtischen Strassenverkehr mit lauten tiefen Anteilen) — `Rw(C;C_tr) = 53(-1;-5) dB`.

- **Massivbau:** Flankenabzug moderat (~1–3 dB).
- **Holzbau/CLT:** durchlaufende Scheiben/Stösse → **3–8 dB** Flankenverlust; im Holzbau sind die
  **Flankenkennwerte oft gar nicht verfügbar** → Prognose nach EN 12354 + Reserve, Bauteilstösse
  **elastisch entkoppeln** (sonst macht die Flanke die gute Trennwand zunichte) →
  `[[lignum-schallschutz-holzbau-flankenuebertragung]]`, `[[clt-schallschutz-stora-enso]]`,
  `[[holzbau-bauphysik-clt]]` / F17. Ein bezifferter Einzelhebel bei Kastendecken: abgehängte Decke
  ~60 mm bringt **3–6 dB** Verbesserung (Quelle wie oben). Ein vollständiger Katalog konkreter
  Rw-/Ln,w-Werte je Anschlussdetail bleibt offen — der zuständige Online-Bauteilkatalog
  (`lignumdata.ch`) war am 24.08.2026 nicht erreichbar (Serverfehler, nicht inhaltlich geprüft).

## Aussenlärm (Strasse/Bahn) vertieft — zwei getrennte Systeme
Die Aussenlärm-Zeile oben (SIA-181-De) ist nur die **bautechnische** Hälfte. Parallel dazu prüft
die **Lärmschutz-Verordnung (LSV, Art. 31/32)** am **offenen** Fenster, ob überhaupt eine
Baubewilligung erteilt werden darf (Immissionsgrenzwert/Planungswert nach Empfindlichkeitsstufe) —
das ist eine eigene, vorgelagerte Prüfung, nicht durch ein gutes Schallschutzfenster ersetzbar.
Massnahmen-Kaskade (Quelle → Grundriss → bauliche Massnahmen → Fenster als Letztmittel),
Ausnahmebewilligungs-Ampel (gelbe/rote Räume), ZH-Festverglasungsschwelle (70/60 dB), die
R'w+Ctr-Ausschreibungslogik sowie Schallschutzfenster-Klassen (kommerziell) →
`[[aussenlaerm-schallschutzfenster-strasse-bahn]]`, FAQ **F68**.

**Kantonaler Vergleich SZ vs. ZH (JANS-Fokuskantone, Run 63):** der Kanton Schwyz verschärft die
Bundespraxis an drei Stellen — 10 % Fensterfläche als Grundvoraussetzung (statt 5 % als reine
Ausnahmeregel), eine harte **3-dB-Obergrenze** für Ausnahmebewilligungen (darüber keine Ausnahme
möglich, kein gestaffeltes Regime), und ein grundsätzliches **Festverglasungsverbot** für
lärmempfindliche Wohn-/Arbeitsräume — der in Zürich zulässige Ausweg «Festverglasung ab 70 dB
Tag/60 dB Nacht» existiert in Schwyz nicht →
`[[cerclebruit-sz-merkblatt-laermbelastete-gebiete]]`.

**Formel amtlich bestätigt + Klassentabelle abschliessend verneint (Run 64):** die Stadt Bern
(Praxisblatt Okt. 2023) bestätigt amtlich die Rechenformel **De ≥ Lr,Tag − 33 dB** /
**De ≥ Lr,Nacht − 25 dB** (erhöhte Anforderungen 3 dB strenger) — konsistent mit dem oben
dokumentierten Kleinstwert De ≥ 27 dB. Ebenfalls geklärt: **SIA 181 definiert keine
Schallschutzklassen** für Fenster (Zweitquellen-Check via Stauffer.ch); die im Markt kursierende
«SSK 1-6»-Skala stammt aus der deutschen Norm DIN 4109, nicht aus SIA 181 — ein Schweizer
Fensterhändler (Hasler) behauptet auf seiner Website fälschlich einen SIA-181-Ursprung, das ist
adversarial widerlegt. Details → `[[aussenlaerm-schallschutzfenster-strasse-bahn]]`.

## Wo der Schallschutz im JANS-Workflow auftaucht
- **Entwurf:** Grundriss-Stapelung (Schlafraum nicht über Technikraum/Lift), WP-Standort.
- **Ausschreibung/LV:** Trennwand-/Deckenaufbauten mit Ziel-D_nT / L'_nT statt nur «Rw 52».
- **Werkvertrag:** erhöhte Anforderung explizit vereinbaren, wenn der Bauherr Komfort will.
- **Abnahme:** im Streitfall Baumessung (D_nT/L'_nT) — die Norm ist der Massstab.

## Abgrenzung
- **Oeffentlich-rechtlicher Lärmschutz** (USG/LSV, Planungs-/Immissionswerte, Lärmempfindlichkeits-
  stufen ES I–IV im Zonenplan) → Skill `baurecht`. SIA 181 = **privatrechtlich/bautechnisch**.
- **WP-Lärmschutznachweis LN-1** beim Heizungsersatz → FAQ F14, `[[wta-formular-zh-waermetechnische-anlagen]]`.
- **Brandschutz** der gleichen Bauteile (GKF hebt REI) → Skill `brandschutz`; Synergie Schall+Brand+Wärme.

⚠ **Datenstand 2026-06-24:** Werte aus Büro-Zusammenfassung der SIA 181:2020 — projektverbindlich die
Original-Norm beiziehen.
