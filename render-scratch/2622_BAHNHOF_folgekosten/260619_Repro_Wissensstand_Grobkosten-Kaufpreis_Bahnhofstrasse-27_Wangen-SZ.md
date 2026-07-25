# Repro / Wissensstand — Grobkosten & bereinigte Kaufpreisempfehlung
## Studie 2622 · Bahnhofstrasse 27, 8855 Wangen SZ

> **Zweck dieses Dokuments:** vollstaendiger, reproduzierbarer Wissensstand zur Grobkosten-
> schaetzung der Folgekosten (10 J) und der daraus abgeleiteten bereinigten Kaufpreisempfehlung.
> Damit kein Wissensstand verloren geht: jede Eingangsgroesse, jeder Kennwert, jede Annahme und
> jedes Ergebnis ist hier nachgefuehrt. Maschinell reproduzierbar via `*.config.json` + Generatoren.
>
> **Erstellt:** 19.06.2026 (nach Besichtigung) · **Verfasser:** Raphael Jans Architekten ETH/SIA
> **Status:** Grobschaetzung ±25 %, aktenbasierter Marktwert (⚠A), keine Schaetzungs-/Rechtsverbindlichkeit.

---

## 1. Objekt & Stammdaten (Quelle: GRULER-Vermessung 14.01.2026, OEREB 07.06.2026)

| Feld | Wert |
|---|---|
| Objekt | Bahnhofstrasse 27, 8855 Wangen SZ |
| Parzelle / EGRID | 25 / CH379377805305 · 751 m² |
| Zone / ES | Wohn- und Gewerbezone 3 Geschosse (WG3) · ES III |
| Objekttyp | gemischtes Mehrfamilienhaus (Gewerbe-EG + Wohnen), Altbau ~1979 |
| Geschosse | 3 Vollgeschosse (EG+OG1+OG2) ausgeschoepft + DG + UG · Lift · 3 Garagen + Vorplatz |
| **HNF total** | **538.0 m²** (EG 175.4 · OG1 166.9 · WHG3 195.7) |
| Dach | First +12.05 / DG-Boden +7.93 (Schraegdach) |
| Marktwert Halten (JANS, as-is, ⚠A) | CHF 2.6–2.8 Mio (Ertragswert-gefuehrt, Brutto-Kap. 5.0 %) |
| Angebot Verkaeufer / Bankschaetzung | 3.10 Mio / 2.90 Mio |

### Flaechen je Geschoss (SIA 416)
| Geschoss | GF m² | HNF m² | Nutzung |
|---|---|---|---|
| UG | 298.8 | — | 3 Garagen, Keller, Heizung/Tank, LS |
| EG | 240.1 | 175.4 | Arztpraxis (zonenkonform) |
| OG1 | 223.9 | 166.9 | 2 Whg (4.5-Zi 105.0 / 2.5-Zi 61.9) |
| OG2 | 152.3 | 117.7 | Teil WHG 3 |
| DG | 107.3 | 78.0 | Teil WHG 3 |
| **Total oberird.** | **723.6** | **538.0** | |

**WHG 3** = 7.5-Zi-Maisonette OG2+DG, **195.7 m² HNF**, veraltet → Objekt des Dachausbaus.

---

## 2. Besichtigungsbefund 19.06.2026 (Raphael Jans, vor Ort)

| Bauteil | Befund | Konsequenz |
|---|---|---|
| Fenster | 47 J alt, Ersatz in ~5 J faellig | Vollersatz 3-fach, Hor. ~5 J |
| Dach | 47 J, Daemmung schlecht, Sommer-Ueberhitzung | Eindeckung + Nachdaemmung, akut–mittel |
| Heizung (Erzeugung) | Oelheizung 20 J, Ersatz in ~10 J | Umstieg Fernwaerme/WP, Hor. ~10 J |
| Heizverteilung | evtl. Ersatz noetig bei Fernwaerme-Anschluss (Systeminkompatibilitaet Niedertemperatur) | bedingt¹ |
| Sanitaer | System fragil, evtl. ganzes Leitsystem faellig bei Dachausbau | bedingt² |
| Elektro | sieht gut aus | nur Anpassung, gering |

> **Fotos:** zum Erstellungszeitpunkt noch nicht in `09_Dokumente/05_Bilder/` abgelegt → bauteilweise
> Schaerfung der Zustandsnoten ausstehend.

---

## 3. Methodik

### 3.1 Block A — Instandsetzung Bestand (Flaechenkennwerte)
`Kosten = Bezugsflaeche × Kennwert (CHF/Einheit)`, BKP 1–5, inkl. MwSt, Preisstand 2026, Deutschschweiz.
Bauteil-Erneuerungskennwerte = **JANS-Marktorientierung** (keine Submissionswerte).

### 3.2 Block B — Dachausbau (Wuest-Umbaulogik)
`Umbaukosten = Neubaukennwert × Eingriffstiefe-Faktor`, je m² HNF.
- Neubaukennwert Wohnen MFH **~4'800 CHF/m² HNF** (BKP 1–5, Massiv, teuerungsbereinigt).
  Quelle: `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`
  (Wuest Dimensions 2022 Median 4'360 + Teuerung; SIA 2020).
- Eingriffstiefe-Faktor **50–80 %** (substanziell bis gross: neue Trennung, 2. Kueche/Nasszelle,
  Schall-/Brandschutz, 2. Rettungsweg, Haustechnik, Oberflaechen; veraltete Maisonette).

### 3.3 Bezugsgroessen (abgeleitet — vor Finalisierung zu bestaetigen)
| Groesse | Wert | Herleitung |
|---|---|---|
| Fensterflaeche | ~150 m² | Fassade 3 VG (Umfang ~62 m × Hoehe ~7.9 m) × Fensteranteil ~28–30 % |
| Dachflaeche | ~300 m² | Fussabdruck ~240 m² × Schraegdach-Faktor ~1.25 |
| EBF (beheizt) | ~720 m² | ≈ oberirdische GF (EG+OG1+OG2+DG) |
| HNF total | 538.0 m² | GRULER (belegt) |
| Maisonette WHG 3 | 195.7 m² HNF | GRULER (belegt) |

---

## 4. Block A — Instandsetzung Bestand (Ergebnis)

| Bauteil | Bezug | Kennwert | Band CHF | Ø CHF | Horizont | Preisrelevant (Werterhalt) |
|---|---|---|---|---|---|---|
| Fenster | ~150 m² | 900–1'300/m² | 135'000–195'000 | 165'000 | ~5 J | JA (voll) |
| Dach (Eindeckung+Daemmung) | ~300 m² | 350–600/m² | 105'000–180'000 | 145'000 | akut–mittel | JA (voll) |
| Waermeerzeugung (Oel→Fernw.) | ~45 kW | pauschal | 50'000–90'000 | 70'000 | ~10 J | anteilig ~50 % |
| Waermeverteilung | ~720 m² EBF | 130–260/m² | 95'000–190'000 | 140'000 | bedingt¹ | nein (ausserhalb) |
| Sanitaer (Leitsystem) | 538 m² HNF | 130–280/m² | 70'000–150'000 | 110'000 | bedingt² | nein (ausserhalb) |
| Elektro | Zustand gut | pauschal | 0–30'000 | 15'000 | gering | nein (Routine) |
| **Total Block A** | | | **455'000–835'000** | **≈ 645'000** | | **preisrelevant ≈ 350'000** |

¹ nur bei Anschluss Fernwaermeverbund. ² v. a. bei Realisierung Dachausbau.

---

## 5. Block B — Dachausbau Maisonette → 2 Wohnungen (Ergebnis)

| Position | Bezug | Kennwert | Band CHF | Ø CHF |
|---|---|---|---|---|
| Umbau WHG 3 (OG2+DG) → 2 Einheiten | 195.7 m² HNF | 2'400–3'840/m² (= 4'800 × 50–80 %) | 470'000–750'000 | ~600'000 |

Deckt sich mit Platzhalter Bewertungsgutachten (~0.7 Mio). **Wertsteigernd nur via STWE-Einzelverkauf**
(Wohnteil-Oberkante ~3.5 Mio); als reines Halten traegt er sich nicht.

---

## 6. Folgekosten total

| | Band | Ø | Anteil Kaufpreis 3.0 Mio |
|---|---|---|---|
| Block A (Pflicht) | 0.46–0.84 Mio | 0.65 Mio | 15–28 % (Ø 21 %) |
| Block B (Option) | 0.47–0.75 Mio | 0.60 Mio | 16–25 % (Ø 20 %) |
| **Total** | **0.95–1.6 Mio** | **~1.25 Mio** | **31–53 % (Ø 42 %)** |

> **Doppelzaehlung:** bei gemeinsamer Ausfuehrung A+B sind Teile Sanitaer/DG-Daemmung bereits in B
> → ca. 50'000–100'000 nicht doppelt budgetieren.

---

## 7. Bereinigte Kaufpreisempfehlung

**Modell:** `bereinigter Kaufpreis = Marktwert Halten (as-is) − aufgeschobener, nicht eingepreister Werterhalt`.
Bewusst nur die akuten, unvermeidlichen Huellen-/Technik-Posten (Dach, Fenster, anteilig Heizung), um
Doppelzaehlung mit den tiefen Ist-Mieten und der Brutto-Kapitalisierung (5.0 %) zu vermeiden. Bedingte
Posten (Verteilung, Sanitaer) und der Dachausbau (B) bleiben ausserhalb.

| Schritt | CHF |
|---|---|
| Angebot Verkaeufer | 3'100'000 |
| Bankschaetzung | 2'900'000 |
| Marktwert Halten JANS (as-is, Mitte) | 2'700'000 |
| − Investitionsstau (zwingend, Dach+Fenster+anteilig Heizung) | − 350'000 |
| **= Bereinigte Empfehlung** | **≈ 2'350'000** |

**Empfehlung ~2.35 Mio · Verhandlungsziel 2.25 · Schmerzgrenze 2.50 · Abstand zum Angebot −0.75 Mio.**

**Sensitivitaet:** nur Dach+Fenster zwingend → Abzug ~0.31 → ~2.39 · inkl. Heizung voll + Teil Sanitaer
→ Abzug ~0.50 → ~2.20.
**Strategie:** gilt fuer Halten/Rendite. STWE-Einzelverkauf rechtfertigt hoeheren Preis (anderes Risikoprofil).

---

## 8. Quellen

- GRULER-Vermessung 14.01.2026 (Flaechen) · OEREB-Auszug 07.06.2026 (Zone/Lasten sauber).
- `260615_Bewertungsgutachten-ENTWURF_Bahnhofstrasse-27_Wangen-SZ.md` (Marktwert, Ertragswert, STWE-Oberkante).
- `260619_Aufnahmeblatt_Besichtigung_...md` (Bauteil-Raster der Besichtigung).
- Wuest-Benchmarks Wohnbau: `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`.
- Methodik Umbau/Reduktionsfaktoren: Skill `kostenschaetzung`; m³-Logik: `wissen/grobkosten/wiki/kennwerte.md`.

## 9. Offene Punkte / naechste Schritte

1. Bezugsflaechen bestaetigen (Fenster ~150 m², Dach ~300 m², EBF ~720 m²) oder messen.
2. Fotos Besichtigung auswerten → Zustandsnoten/Sanierungsstau je Bauteil schaerfen.
3. Marktwert finalisieren (Mieterspiegel + GVA-Police beim Eigentuemer einholen).
4. Abzugsquote/-anker fuer Kaufpreis kalibrieren; ggf. STWE-Strategie-Variante rechnen.
5. Bei realer Schlussabrechnung/Offerte: Kennwerte in `wissen/grobkosten/raw/` zurueckspeisen (Compounding).

## 10. Datei-Inventar & Ablage

| Datei | Inhalt | SharePoint-Zielordner |
|---|---|---|
| `260619_Grobkostenschaetzung_Folgekosten_...pdf` | A4 Folgekosten (Block A+B, Zeithorizont) | `09_Dokumente/04_Bewertung/` |
| `260619_Kaufpreisempfehlung-bereinigt_...pdf` | A4 bereinigte Kaufpreisempfehlung (Wasserfall) | `09_Dokumente/04_Bewertung/` |
| `260619_Repro_Wissensstand_..._{md,pdf}` | dieses Dokument | `09_Dokumente/06_Arbeitsdokumente/` |
| `260619_Kostenmodell_....config.json` | maschinell reproduzierbare Eingaben/Kennwerte/Ergebnisse | `09_Dokumente/06_Arbeitsdokumente/` |
| `folgekosten.html` / `kaufpreisempfehlung.html` | Render-Quellen (Reproduktion via weasyprint) | (Arbeitsdoku, optional) |

**Reproduktion:** `python3 -m weasyprint <name>.html <name>.pdf`.
**Backup/Versionierung:** GitHub-Repo `raphaeljans-sys/jans-ai-hub`, Branch
`claude/bahnhofstrasse-roof-expansion-huz26z`, Ordner `render-scratch/2622_BAHNHOF_folgekosten/`, PR #4.
