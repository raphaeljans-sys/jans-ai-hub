# Roh-Beleg: 2305 Wädenswil — Ankaufsprüfung, Pre-Check-Tool (Residualwert)

Quelle: SharePoint `IMMO - 03 KNOW-HOW/05 Residualwert/Exel Tabelle/jans/
Immo-02-P23D-Pre-Check_Tool_Jans.xlsx` (JANS-eigenes Excel-Tool, Blätter «Cover Pre-Check» +
«AZ-HNF Tool»). Bereits in Run 6 als Kandidat identifiziert («Pre-Check-Tool 2305 Wädenswil …
echtes JANS-Projekt, lohnt volle Extraktion inkl. Klärung von Frage 1 direkt an der
Exceldatei»), in diesem Lauf (Run 7, 27.07.2026) direkt in der Excel-Datei geöffnet und
ausgewertet (`openpyxl`, Werte-Modus `data_only=True`).

## Objekt

Projekt 2305, Bezeichnung im Dokument «Ankaufsprüfung», Ortschaft Wädenswil, Parzelle
WE9039, Grundstücksfläche 1'662 m², Zone Kernzone (keine Planungsziffer), 4 Vollgeschosse +
2 Dachgeschosse + 1 Untergeschoss (gemäss Zone K BZO), max. Gebäudehöhe 13.5 m. Nutzung MFH
(Mehrfamilienhaus, im Tool als «MFH» ausgewählt), 42 Wohneinheiten (Whg-Mix 1–4-Zi.).
Stichdatum im Dokument: 23.02.2025.

## Gebäudevolumen (Tool-Berechnung, nicht SIA-416-Feld-verifiziert)

- **Gebäudevolumen oberirdisch (GV oi): 11'724.48 m³** (Zelle `AC45`, Formel-Output des Tools
  aus Geschossfläche × Geschosshöhe × Geschossanzahl, nicht direkt aus Bauplänen ausgemessen).
- Kein separater UG-Volumenwert im Tool ausgewiesen (das Tool rechnet HNF-Flächen inkl. UG,
  aber das GV-Feld selbst ist explizit nur «GV oi»).

## Kosten (Tool-eigene Sensitivitäts-/Residualwertrechnung)

Das Tool weist im Feld `D46` explizit **«BAUKOSTEN inkl. MwSt.»** aus, mit einem Faktor
`G48 = 1.13` unter der Bezeichnung `G47 = «Faktor BKP 2 zu BKP 1-5»`. Der damit berechnete
Gesamtwert in `I48`/`I56` trägt jedoch die **abweichende** Feldbezeichnung
**«Total BKP 1-9, inkl. PP, MwSt., Vermietungskosten, Bauherrenleistungen, Finanzierung»**:

| Feld | Bezeichnung im Tool | CHF |
|---|---|---|
| I56 | Total BKP 1-9 (ohne Risiko-/Gewinnanteil) | 16'180'000 |
| J56 | Erstellungskosten + Risiko-/Gewinnanteil (12 %) | 18'120'000 |

## Kennwerte-Klärung zu QUESTIONS.md «Offene Frage 1» (BKP-1-9-vs-BKP-1-5-Bezeichnung)

Dieses Dokument **löst die in Run 6 offen gelassene Frage 1 NICHT auf, sondern bestätigt die
Inkonsistenz direkt im Tool selbst**: derselbe Faktor (`G48 = 1.13`) wird in derselben Zeile
sowohl als «BKP 2 → BKP 1-5»-Umrechnung (Zellbeschriftung `G47`) als auch — im damit
berechneten Output zwei Zeilen weiter unten — als «BKP 1-9»-Summe (Zellbeschriftung `I48`)
bezeichnet. Da BKP 6-8 gemäss `references/bkp-2017/` reine Reservekategorien sind (i.d.R.
null) und BKP 9 (Ausstattung) im Wohnungsbau real ungleich null ausfällt, bleibt **unklar, ob
die 1.13 als Multiplikator auf BKP 2 tatsächlich BKP 1-5 oder BKP 1-9 ergibt** — die
Feldbeschriftungen widersprechen sich innerhalb desselben Tools. Eine Klärung wäre nur durch
Rücksprache mit dem Ersteller des Tools (Raphael Jans) oder durch Vergleich mit einem
Projekt möglich, das sowohl dieses Tool-Ergebnis als auch eine unabhängige, klassisch
gegliederte BKP-1-5-Kostenschätzung besitzt (bisher kein solcher Fall in dieser KB
gefunden).

## Abgeleiteter Kennwert (NICHT promoviert)

Rein rechnerisch: 16'180'000 CHF (BKP-1-9-Label) ÷ 11'724.48 m³ GV oi = **1'380 CHF/m³**;
mit Risiko-/Gewinnanteil 18'120'000 ÷ 11'724.48 = **1'546 CHF/m³**. Beide Werte werden
**NICHT** in `wiki/kennwerte.md` aufgenommen (weder als Einzelfall n=1 noch als obere
Näherung) — analog zur bestehenden Behandlung von Wald Haselstudstrasse
(`raw/2411-wald-haselstudstrasse.md`), da die BKP-1-5-vs-1-9-Zuordnung ungeklärt bleibt und
zusätzlich das GV nicht SIA-416-feldverifiziert, sondern eine Tool-Formel ist.

## Nebenbefund: zweite Tool-Instanz mit unvollständigen Projektangaben

Eine weitere Kopie desselben Tools unter `AR - 03 Studien/2304 Waedenswil/09_Dokumente/
03_Residualwertberechnung/02_Immo-02-P23D-Pre-Check_Tool_Jans/
03_Immo-02-P23D-Pre-Check_Tool_Jans.xlsx` enthält abweichende Zahlen (GV oi 9'080.064 m³,
Total BKP 1-9 12'210'000 CHF, + Risiko 13'060'000 CHF) bei **leeren Projektnummer-/
Projektname-Feldern** (`B6`/`D6`/`I6` = None) — vermutlich eine frühere Tool-Variante oder ein
anderes Nutzungsszenario desselben Vorhabens (reine Wohnnutzung, gemäss Dateiname eines
Nachbardokuments `..._reine_Wohnnutzung.xlsx`), nicht eindeutig demselben Projektstand
zuordenbar. **Nicht extrahiert** (fehlende Provenienz-Kernangaben, Rule
`identifikatoren-verifizieren`).

## Dokumenttyp und Belastbarkeit

JANS-eigenes Ankaufsprüfungs-/Pre-Check-Tool (Residualwertrechnung), **kein Ausführungs-/
Ist-Beleg**, kein separates GV-Ausmass-Dokument. Stichdatum 23.02.2025. Kostengenauigkeit
nicht explizit ausgewiesen (typisch für diese Planungsphase ±25-30 %, vgl. eigene
Sensitivitätsanalyse im Tool mit ±30 % Diskontierungsspreizung).

Abrufdatum: 2026-07-27.
