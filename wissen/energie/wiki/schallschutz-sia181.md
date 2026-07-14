---
title: Schallschutz im Hochbau — SIA 181:2020 (Anforderungswerte)
status: established
last_updated: 2026-07-14
sources: [destillate/sia-181-schallschutz-anforderungswerte.md, destillate/clt-schallschutz-stora-enso.md, destillate/lignum-schallschutz-holzbau-flankenuebertragung.md, destillate/aussenlaerm-schallschutzfenster-strasse-bahn.md, destillate/cerclebruit-sz-merkblatt-laermbelastete-gebiete.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[holzbau-bauphysik-clt]], [[clt-schallschutz-stora-enso]], [[lignum-schallschutz-holzbau-flankenuebertragung]], [[aussenlaerm-schallschutzfenster-strasse-bahn]], [[cerclebruit-sz-merkblatt-laermbelastete-gebiete]]
---

# Schallschutz im Hochbau — SIA 181:2020

Schnellreferenz fuer die verbindlichen CH-Schallschutz-Anforderungen. Speist FAQ **F25** (Schallschutz-
Pflicht) und schaerft **F17** (taugt CLT-Holzbau akustisch). Faktenbasis → `[[sia-181-schallschutz-anforderungswerte]]`.

> **Querbezug KB normen (Fundstelle/Ausgabe):** Norm-Fundstelle SIA 181 fuehrt die normen-KB
> (`wissen/normen/destillate/sia-181-2006`, Register `wissen/normen/wiki/REGISTER` Zeile 109).
> ⚠ **Ausgaben-Diskrepanz:** dieser Artikel arbeitet mit der aktuellen Ausgabe **SIA 181:2020**;
> das normen-Register fuehrt bislang **2006** als gueltig (2013-Register-Benchmark). Re-Destillat
> SIA 181:2020 in normen ausstehend (Wissens-Chef Run 3, 2026-07-13).

## Vier Schutzziele, eine Logik
SIA 181:2020 regelt vier Laermarten: **Luftschall** (Stimme/TV durch die Wand), **Trittschall**
(Gehen oben), **Haustechnik** (WP/Lueftung/Sanitaer) und **Aussenlaerm** (Strasse/Bahn). Bewertet
wird stets der **Empfangsraum** (wo gestoert wird) ueber seine **Laermempfindlichkeit**
(gering / mittel-Wohnen / hoch) und den **Stoergrad** der Quelle.

**Zwei Niveaus:** Mindestanforderung (Gesetz) und erhoehte Anforderung (Komfort). Abstand seit 2020
**4 dB** beim Innenlaerm (vorher 3), **3 dB** beim Aussenlaerm.

## Die wichtigsten Zahlen (Wohnen, mittlere Empfindlichkeit)
| Schutzziel | Mindest | erhoeht | Merksatz |
|---|---|---|---|
| Luftschall Wohnungstrennung D_i (Stoergrad maessig) | ≥ 52 dB | ≥ 56 | groesser = besser |
| Trittschall Wohnungstrennung L' (maessig) | ≤ 53 dB | ≤ 49 | kleiner = besser |
| Haustechnik Dauergeraeusch im Schlafraum L_H | ≤ 28 dB(A) | ≤ 24* | *Kleinstwert 25 |
| Aussenlaerm ruhige Lage D_e | 27 dB | 30 | im Verkehr: L_r − 33 |

Vollstaendige Tabellen (alle Empfindlichkeits-/Stoergrad-Kombinationen, Haustechnik-Einzelgeraeusche,
Aussenlaerm im Verkehrsbereich, Empfehlungen innerhalb der Wohnung) → `[[sia-181-schallschutz-anforderungswerte]]`.

## Die Schluesselregel fuer Bauherren
**Bei EFH, Doppel-/Reihen-EFH und Stockwerkeigentum gelten gegen Aussenlaerm immer die ERHOEHTEN
Anforderungen** — von Gesetzes wegen, ohne Vertragsklausel. Fuer den **Innen-Komfort** (kein
Trittschall vom Nachbarn) muss der Bauherr die erhoehten Anforderungen dagegen **vertraglich
vereinbaren** (Werkvertrag/Kaufvertrag) — sonst schuldet der Unternehmer nur das Minimum.
→ Schnittstelle Skill `werkvertrag` (Vertragsklausel) / `ausschreibung` (LV-Vorgabe).

## Bauwert ≠ Laborwert — die Flanken-Mechanik
SIA 181 fordert **D_nT,w / L'_nT,w am fertigen Bau, inkl. Flankenuebertragung** (volumen-/spektral-
korrigiert), nicht den Labor-Einzahlwert des Bauteils. Faustregel: das Labor-R_w/L'_n,w muss **mit
Reserve** ueber der Anforderung liegen.

**Der Strich macht den Unterschied:** **R_w** (ohne Strich) = reine Bauteilkenngroesse im Labor
**ohne** Nebenwege; **R'_w** (mit Strich) = Bauwert **mit** den bauueblichen Flanken (analog Trittschall
L_n,w → L'_n,w). SIA 181 verlangt seit der Ausgabe 2006 (direkter Bezug zur **EN 12354**), dass neben
dem Trennbauteil die **~12 Nebenwege** ueber die flankierenden Bauteile in die Prognose einbezogen
werden. Zwei Zuschlaege:
- **K_P** (Projektierungszuschlag) deckt Streuungen ab;
- **K_F** (Flankenuebertragung) wird **zusaetzlich** angesetzt — via Prognose nach EN 12354 oder via
  Abschaetzung aus dem Vergleich Labor↔Bau.

Zudem zaehlt erst die **Summe aus R_w und dem Spektrum-Anpassungswert** (C fuer Autobahnlaerm, C_tr
fuer staedtischen Strassenverkehr mit lauten tiefen Anteilen) — `Rw(C;C_tr) = 53(-1;-5) dB`.

- **Massivbau:** Flankenabzug moderat (~1–3 dB).
- **Holzbau/CLT:** durchlaufende Scheiben/Stoesse → **3–8 dB** Flankenverlust; im Holzbau sind die
  **Flankenkennwerte oft gar nicht verfuegbar** → Prognose nach EN 12354 + Reserve, Bauteilstoesse
  **elastisch entkoppeln** (sonst macht die Flanke die gute Trennwand zunichte) →
  `[[lignum-schallschutz-holzbau-flankenuebertragung]]`, `[[clt-schallschutz-stora-enso]]`,
  `[[holzbau-bauphysik-clt]]` / F17.

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

## Wo der Schallschutz im JANS-Workflow auftaucht
- **Entwurf:** Grundriss-Stapelung (Schlafraum nicht ueber Technikraum/Lift), WP-Standort.
- **Ausschreibung/LV:** Trennwand-/Deckenaufbauten mit Ziel-D_nT / L'_nT statt nur «Rw 52».
- **Werkvertrag:** erhoehte Anforderung explizit vereinbaren, wenn der Bauherr Komfort will.
- **Abnahme:** im Streitfall Baumessung (D_nT/L'_nT) — die Norm ist der Massstab.

## Abgrenzung
- **Oeffentlich-rechtlicher Laermschutz** (USG/LSV, Planungs-/Immissionswerte, Laermempfindlichkeits-
  stufen ES I–IV im Zonenplan) → Skill `baurecht`. SIA 181 = **privatrechtlich/bautechnisch**.
- **WP-Laermschutznachweis LN-1** beim Heizungsersatz → FAQ F14, `[[wta-formular-zh-waermetechnische-anlagen]]`.
- **Brandschutz** der gleichen Bauteile (GKF hebt REI) → Skill `brandschutz`; Synergie Schall+Brand+Waerme.

⚠ **Datenstand 2026-06-24:** Werte aus Buero-Zusammenfassung der SIA 181:2020 — projektverbindlich die
Original-Norm beiziehen.
