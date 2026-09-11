# Normen-Nacht Run 84 — 11.09.2026, ab 01:28 CEST (MacBook Pro)

**Zwei Arbeitsblöcke:** (A) die Risikokarte N83-2 in ihrer Textlayer-Klasse abgearbeitet,
(B) WC57-N2 geschlossen: SIA 181:2006 Anhang G, H und J am Original destilliert, weil ein
KISPI-Fall daran hängt (PL57-1). Details und Belege: `training/n84-textlayer-mechaniken-260911.md`.

## Big Points

1. **26 Destillate, 90 Grenzwerte am Bild geprüft: kein falscher Wert, keine falsche Richtung.**
   Die Prüfstufe konnte widerlegen: **8 von 8** untergeschobene Kontrollwerte erkannt (erstmals
   gemessen, Vorschlag Run 50).
2. **Sieben neue Textlayer-Mechaniken belegt** (N82-3). Die gefährlichste: die Pi-Schrift
   SchwabePi der SIA-Normen 2006 macht aus «≤» die Ziffer «9» und aus «≥» die «0». Aus
   «N ≤7» wird «N 97», aus «Lr ≤ 64» wird «Lr 9 64». Eine Scheinzahl, keine Lücke.
3. **Die Run-83-Karte hat zwei blinde Flecken:** sie sieht keine Destillate, die einer solchen
   Scheinzahl gefolgt sind (sie suchen ≤/≥, das dann fehlt), und keine, die «<=»/«>=» schreiben.
4. **Sechs Bestandsfehler gefunden und inline korrigiert** (Methodik-Pflicht 9), keiner davon ein
   verschobener Grenzwert:
   SIA 181:2006 Tab. 3: Umschaltschwellen **L_r ≤ 64 / ≤ 56 dB(A)** fehlten, genau an der
   Pi-verfälschten Stelle ·
   SIA 108:2014 Art. 9.2: **fünf** Kriterien, nicht vier (N reicht 5-15), «SIA 2024» statt
   «SIA-024» ·
   VKF BRL 24-15: **11** Temperaturklassen, nicht 9; Kerosin in allen drei Korrosionsklassen ·
   Suva 44006: Praxis-Transfer machte aus «vorzugsweise 1,50 m» einen Abnahmegrenzwert ·
   GVZ MFH nbb: Fundstelle Ziff. 2.3 Abs. 3 ergänzt ·
   VKF BSPUB-57: Paraphrase «abgelegene Berghütten» auf den Normwortlaut zurückgeführt.
5. **SIA 181:2006 Anhang G ist destilliert.** Für PL57-1 zählt: die Empfehlung Spital
   Korridor–Zimmer **D_i 30 / 35 dB** gilt für die Wand **ohne Türeinfluss** (Fussnote 1), Türen
   werden nach G.1 separat über das **Labor-R_w** festgelegt. Zwischen Nutzungseinheiten nennt die
   Norm den Türwert normativ als **R'_w + C ≥ 37 dB** (Ziff. 3.2.1.5). Die Legende «35 dB» deckt
   sich deshalb nur zahlengleich mit Stufe 2. Vorfrage bleibt: gehören Korridor und Zimmer zur
   selben Nutzungseinheit?

## Voraussetzungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Datum | `date` → 2026-09-11 01:28 CEST |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| OneDrive-Zugriff | inhaltlich lesbar (`pdfinfo`, `pdftotext`, `pdftoppm`, PyMuPDF), kein M365-Fallback |
| NAS-Repo bei Laufbeginn | nativ per ssh: HEAD `3cac690ff`, `wissen/normen` sauber |
| Inventar | 0 offene `[ ]` im SIA/VKF-Scope ausser Bring-Schulden (SIA 181:2020 P1, SIA 491 P2) |
| Run-Nummer | 84, nach Sicht der jüngsten `outputs/`-Datei (Run 83, 10.09.) |

Stations-Split eingehalten: keine DIN-, VSS- oder RAL-Position berührt.

## Verdikte

**Block A (Refuter-Richtung auf 26 Destillaten, fünf Agenten, blind gegenüber den Destillaten):**
G1 SIA 180/382-2/400/108: 24 Punkte, 22 bestätigt, 2 Kontrollen erkannt ·
G2 SIA 244/246/248/272/226/162.152/462: 24 Punkte, 20 bestätigt, 3 per Verweis an der Grundnorm
bestätigt, 1 Kontrolle erkannt ·
G3 SIA 500/ZHB/SIA 118/AFS ×2: 11 Punkte, 10 bestätigt, 1 Kontrolle erkannt ·
G4 VKF ×7: 22 Punkte, 21 bestätigt, 1 Kontrolle erkannt ·
G5 GVZ/Suva/Kalksandstein: 15 Punkte, 14 bestätigt, 1 Kontrolle erkannt.
Die CM-Feuchtegrenzwerte weichen zwischen SIA 244/248 (zementgebunden mit Bodenheizung
≤ 2,0 %) und SIA 246 (≤ 1,5 %) **in den Normen selbst** ab, kein Übertragungsfehler.

**Block B (SIA 181:2006 Anhang G/H/J):** Hauptprozess am 110-dpi-Rendering, danach
unabhängiger Refuter mit eigenem Rendering: 37 Positionen, 27 bestätigt, 4 eingeschränkt (alle
eingearbeitet), 2 Lücken (eingearbeitet), 2 Kontrollen erkannt, kein falscher Wert im Bestand.
Die Sekundärquelle in `wissen/energie` stimmt in allen acht übernommenen Zeilen.

**Hauptprozess selbst am Original entschieden:** SchwabePi-Zuordnung (6 Ausschnitte), SIA 108
S. 37 (bbox + Rendering), SIA 181 Tab. 3 (200 dpi), BRL 24-15 S. 27, SIA 162.152:2001 S. 12,
GVZ S. 3, Suva S. 4, BSPUB-57 S. 8, alle Agenten-Nebenbefunde (Methodik-Pflicht 5/7).

## Was NICHT geprüft wurde

1. Die **24 Typ-A-Destillate** der Run-83-Karte (Quelle ohne Textlayer).
2. M5-M9 sind je an einer Datei belegt; ihre Reichweite ist nur für Pi-/Symbol-Schriften gemessen.
3. Die drei reinen ASCII-Destillate (`sia-480-2004`, `sia-mb-2021`, `vkf-brl-11-15`) nicht am
   Original.
4. SIA 181:2006 Anhang E/F bleiben ungelesen; Gesamtstatus des Destillats unverändert.
5. Keine Statushebung (Methodik-Pflicht 13).
6. Bring-Schulden unverändert: SIA 181:**2020** (P1), SIA 491, SN EN 12193, VSS-Positionen
   (Mac-Mini-Scope).

## Vorgelegt

**Neu N84-1:** der Producer-Vorfilter aus N82-1 greift zu kurz; vorgeschlagen ist ein
**Schrift-Vorfilter** (Pi-/Symbol-Schrift in der Quelle → Grenzwerte nur am Rendering). Claude
setzt keine Methodik-Pflicht selbst.
**Neu N84-2:** Typ-A-Rest der Karte (24 Destillate) als Arbeitsvorrat.
**Neu N84-3:** PL57-1-Vorfrage (Nutzungseinheit Korridor/Zimmer) an `wissen/projekt-lessons`
übergeben.
Unverändert bei Raphael: N83-1, N82-1, N81-3 (Methodik-Pflicht 14), N79-2, N78-1, N77-2/-3,
N65-2/-4, N63-2/-3, Beschaffungs-Bring-Schulden.

## Bestandsmessung

Siehe CHANGELOG-Eintrag 2026-09-11; Messung nativ per ssh gegen `3cac690ff` nach dem Commit.
