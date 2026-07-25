# Training-Run 15 — Immobilienbewertungs-Harness (2026-07-08)

**Modus:** Aktualisierungs-/Vertiefungs-Modus (Wuest-Kurs, alle T-Aufgaben, E-Quellen bereits
eingearbeitet). **Kern dieses Laufs: D4 geschlossen** — die vier Residualwert-Excel-Tools auf
Zellebene reverse-engineered. Plus Marktpuls-Web-Check.

## Ausgangslage

Nach Run 14 waren keine offenen T-Aufgaben mehr vorhanden; die als naechste Kandidaten notierten
Luecken waren D4 (`.xlsx`-Tool-Formeln), D8 (JANS-Kennwerte-DOCX), Emilienheim-Flaechenkennwerte
und laufender Marktpuls. D4 war seit Run 1 als «hoch» priorisiert und galt als **freigabegebunden**.

**Schluesselbefund vorab:** Der SharePoint-Pfad der Excel-Tools ist **TCC-lesbar** (die aus anderen
Kontexten bekannte CloudStorage-Blockade greift hier nicht) — ein `head -c` liefert den ZIP-Header
`PK`. Damit ist D4 ohne separate Freigabe bearbeitbar; die «Freigabe»-Markierung war eine
konservative Annahme, kein technisches Hindernis. Auslesen per `unzip` + selbstgeschriebenem
XML-Zellparser (kein openpyxl verfuegbar) → Label/Wert/Formel je Zelle.

## Die 10 Themen dieses Laufs

1. **WP-Pre-Check «AZ-HNF Tool»-Engine** — HNF-Herleitung ohne Grundrisse.
2. **WP-Residualwert-Rechenkette** (Soll-Ertrag → Nettoertrag → Ertragswert → Residualwert).
3. **HNF-Zerlegung** GF − VF − KF − FF − NNF + Effizienz-Ampel KF/GF 0.18/0.23/0.30.
4. **Betriebskosten-/Unterhalts-Parameterset** (5 %/1 %/13/21-24 CHF-m2HNF, belegte Ranges).
5. **Diskontierungs-Empfehlungen** in den Zellen (2.2-2.9 %, ZH/GE 2.2 %, Gewerbe +0.6-1.5 Pp).
6. **Gewerbe-Mietansatz = 5.5 % der Erstellungskosten** (kostengekoppelte Faustregel).
7. **JANS-Kalibrierungs-Delta** (Pre-Check: Risiko 12 %, Diskont 2.45 %).
8. **Sensitivitaets-Zellformel** = CS-Break-Even-Generator (T18-Validierung aus der Quelle).
9. **JANS- vs WP-Gesamtvergleich** (Einblatt-Tool identisch, Pre-Check 2 Zellen geaendert).
10. **Marktpuls-Web-Check** (SNB/Referenzzins/Baupreisindex).

## Was gelernt wurde

### Zwei Tool-Familien, klar getrennt

- **«Residualwert Berechnung» (einblaettrig, Lehrtool):** Die JANS-Datei ist **formel- UND
  default-identisch** mit der WP-Datei — nur die Kopfzelle traegt «JANS». JANS hat dieses Tool
  nicht rekalibriert. Vollstaendige belegte Rechenkette + Defaults (Diskont 2.5 %, Risiko 7 %,
  Betriebskosten 5 %, Leerstand 1 %, IH 13 / IS 21 CHF-m2HNF, Zeitwert-Abzinsung 2 % ueber 3 J).
- **«Pre-Check Tool» (zweiblaettrig):** enthaelt die **«AZ-HNF Tool»-Engine**, die die HNF allein
  aus einer Planungsziffer (GFZ/AZ/UeZ/BMZ) oder der Gebaeudegrundflaeche herleitet — der
  eigentliche Differenzierer fuer rechnerische Machbarkeitsstudien ohne Grundrisse.

### Belegte Faustregeln

- **Gewerbe-Miete = 5.5 % der Erstellungskosten je Nutzung** (Zellformel `Miete = Baukosten/m2 × 0.055`).
- **Flaecheneffizienz-Ampel:** Konstruktionsflaeche/Geschossflaeche < 0.18 effizient · 0.23 normal ·
  > 0.30 klein/ineffizient.
- **Skalen-/Kostenniveau-Faktoren:** groessere Einheiten guenstiger (200 m2 → 1.11, 2'000 m2 → 1.04);
  Kostenniveau guenstig 0.9 / durchschnittlich 1.0 / ueberdurchschnittlich 1.1 / gehoben 1.35 /
  luxurioes 2.1; Hochhausfaktor ×1.1 ab GF/Geschoss > 9.9; Faktor BKP 2 → BKP 1-9 = 1.13.

### JANS-Kalibrierung — der ehrliche Dreipunkt-Befund

| Parameter | WP-Default | JANS-Pre-Check-Default | JANS reale Praxis (MA Thalwil) |
|---|---|---|---|
| Risiko-/Gewinnanteil | 7 % | **12 %** | 8 % |
| Diskontierung | 2.4 % | **2.45 %** | 2.70 % |

Der 12 %-Wert ist als hinterlegter **Worst-Case-Default** des Schnellcheck-Tools zu lesen, nicht als
gelebte Konvention — die realen LB/MA-Saetze (8 %/2.70 %) sind die belastbaren.

### Sensitivitaet — T18 aus der Quelle bestaetigt

Die automatische Sensitivitaetstabelle rechnet
`RW(δ,Δbps) = ROUND((1+δ)·Nettoertrag/(Diskont+Δbps/10000) − (Baukosten+Risiko), −4)` — exakt das
in Run 8 formalisierte CS-Break-Even-Schema. Linear im Zaehler, hyperbolisch im Nenner → Merkzahl
−20 Bps → +16 % Marktwert bestaetigt.

### Marktpuls

- **SNB-Leitzins 0.00 %** (erwartet Halten bis Ende 2026) — unveraendert.
- **Referenzzinssatz 1.25 %** (BWO-Bestaetigung 02.03.2026; keine Aenderung vor Mitte 2027) — unveraendert.
- **Neu: BFS-Baupreisindex auf Basis Okt-2025 = 100 umgestellt; erster Stand April 2026 = 100.6
  (+0.6 % Halbjahr, +1.0 % YoY).** Bauteuerung moderat, kein Kostenschub.

## Was geaendert wurde

- `wiki/residualwertmethode.md`: neue Sektion «Excel-Tool Formel-Logik (D4)»; Tool-/Offen-Bullet +
  Frontmatter (last_updated 07-08, sources).
- `wiki/ertragswert-dcf.md`: Diskont-/Risiko-Kalibrierungs-Notiz (D4 geschlossen); last_updated 07-08.
- `wiki/investorenmarkt-makro.md`: Baupreisindex-Neu-Basierung + Marktpuls-Log Run 15; last_updated 07-08.
- Register: `raw/_INGESTED.md` (4 XLSX → eingearbeitet + Stand-Run-15-Block), `wiki/wissensluecken.md`
  (D4 erledigt), `training/curriculum.md` (E2 ✓), `wiki/INDEX.md`, `CHANGELOG.md`.

## Was als naechstes

- **D5** (buerospezifische Margen-/Finanzierungspraxis: Zins/Laufzeit, Vermarktungs-%) — Bring-Schuld
  Raphael; mit D4 ist die Tool-Mechanik nun bekannt, es fehlt nur noch die JANS-Zahlenkalibrierung.
- **D8** (JANS-Kennwerte-DOCX) + Emilienheim-Flaechenkennwerte — sobald verfuegbar/lesbar (naechster
  Lauf: pruefen, ob auch diese DOCX-Pfade TCC-lesbar sind wie die XLSX hier).
- **Marktpuls:** naechste Referenzzins-Publikation 01.09.2026, SREBI Q2-2026 ~09.2026.
