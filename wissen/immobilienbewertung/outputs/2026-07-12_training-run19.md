# Training-Run 19 — Verifikations-Pass Ertragswert-/Residualwert-Kennwerte (2026-07-12)

**Modus:** Verifikation/Vertiefung (kein neuer Ingest). Zweiter Lauf im ab 12.07.2026
verbindlichen Verifikations-Modus (Rule `auto-verbesserungen` 260712, PROGRAMM Abschnitt
«Verifikations-Stufe»). Setzt die im Run-18-Report angekuendigte Priorisierung um: Reproduzier-
barkeit der Ertragswert-/Diskont-Kennwerte in [[ertragswert-dcf]] sowie der Residualwert-
Excel-/Rechenblatt-Logik in [[residualwertmethode]].

## Die drei verifizierten Komplexe (Modell D — Volltext-Recompute)

### 1. Herosé-Annuitaetenformel (ertragswert-dcf)

Der KB-Text beschrieb die CURAVIVA-Annuitaet als «lineare Abschreibung ueber 33 Jahre +
kalkulatorischer Zins BWO-Referenzsatz 1.25 %». Das liest sich wie Abschreibung + separat
draufgerechnetem Durchschnittszins (P/N + i·P·(N+1)/(2N)). Recompute mit dieser Formel trifft
die publizierte Hotellerie-Taxe-Annuitaet (1'820'000) nur auf **1.1 %** (Formel: 1'799'943).

Der Recompute mit der **Standard-Kapitalwiedergewinnungsformel** PMT = P·i/(1−(1+i)^−N) trifft
dagegen fast exakt:

| Groesse | Investition | Formel-Ergebnis | Publiziert | Abweichung |
|---|---|---|---|---|
| Annuitaet Hotellerie-Taxe | 48'988'000 | **1'820'730** | 1'820'000 | 0.04 % |
| Annuitaet Pflege-Abschreibung | 6'812'000 | **253'196** | 253'200 | 0.002 % |

Annuitaet/Bett (÷114 belegte Betten) und /Tag (÷365) reproduzieren sich daraus ebenfalls exakt
(15'972/2'221 bzw. 43.75/6.08). **Verdikt: bestanden**, Formel-Beschreibung praezisiert — fuer
Nachrechnungen (Skill `healthcare-wirtschaftlichkeit`) ist die Annuitaetenformel die belastbare
Rechenvorschrift, nicht linear+Durchschnittszins.

### 2. DXMA-A4-Rechenbeispiel (residualwertmethode)

Vollstaendiger Nachvollzug der Kette Block 2 (Ertragspotenzial) → Block 4 (Landwert):

| Groesse | Formel | Recompute | KB-Wert | Verdikt |
|---|---|---|---|---|
| Ertragswert Miete | (400×808+4×140×12)/0.025 | 13'208'000 | 13'200'000 | bestanden |
| Ertragswert STWE | 16'500×808+4×25'000 | 13'432'000 | 13'430'000 | bestanden |
| BKP 2 | 4'000 × **aGF 810** | 3'240'000 | 3'230'000 | bestanden (aGF, nicht GF!) |
| BKP 1-5 | BKP2 / 0.8 | 4'037'500 | 4'040'000 | bestanden |
| Total Investition | BKP1-5+Risiko+PE+Finanz. | 5'440'000 | 5'440'000 | exakt |
| Landwert STWE | ErtragswertSTWE − Investition | 7'990'000 | 7'990'000 | exakt |
| Landwert Mietobjekt | (mit −5 % Baukostenabschlag) | ≈8'030'000 | 8'030'000 | bestanden |

**Wichtiger Fund:** Die BKP-2-Kosten (4'000 CHF/m2) beziehen sich auf die **aGF (810 m2)**, nicht
auf die GF (1'050 m2, die fuer HNF/Mietertrag verwendet wird) — 4'000×1'050=4'200'000 haette klar
abgewichen. Diese Kostenbasis war im Artikel nicht explizit benannt und ist fuer kuenftige
Nachrechnungen entscheidend: **Erstellungskosten auf aGF, Mietertrag/HNF-Effizienz auf GF.**
Zusaetzlich: die «80 %-Aufschlag»-Formulierung bedeutet BKP2 = 80 % von BKP1-5 (Division), nicht
Multiplikation — abweichend von der 85 %-Regel des Wuest-Hauptschemas (zwei separat belegte
Quellen-Konventionen, DXMA vs. Wuest-Kurs).

Nur die Entwicklungsgewinn-Absolutbetraege (2'380'000/2'340'000) liessen sich auf lediglich ~2 %
genau nachvollziehen (mehrstufige Rundungskette); die daraus abgeleiteten EK-Renditen (99 %/98 %)
reproduzieren sich als Gewinn/EK exakt. **Verdikt: bestanden**, aGF/GF-Klarstellung ergaenzt.

### 3. Barwert-Verlust-Tabelle (ertragswert-dcf, Wuest-Kurs S. 69)

Recompute ueber 1−(1+i)^−N:

| Satz | 10 J Formel/Quelle | 30 J Formel/Quelle | 50 J Formel/Quelle |
|---|---|---|---|
| 3 % | 25.6 % / 27 % (Δ1.4 Pp) | 58.8 % / 62 % (Δ3.2 Pp) | 77.2 % / 81.4 % (Δ4.2 Pp) |
| 5 % | 38.6 % / 38.9 % (Δ0.3 Pp) | 76.9 % / 77.4 % (Δ0.5 Pp) | 91.3 % / 92.0 % (Δ0.7 Pp) |
| 10 % | 61.5 % / 62.2 % (Δ0.7 Pp) | 94.3 % / 94.6 % (Δ0.3 Pp) | 99.15 % / 99.2 % (Δ0.05 Pp) |

5 %- und 10 %-Zeilen bestehen (≤1 Pp Abweichung, im Rundungsrahmen). Die 3 %-Zeile weicht deutlich
staerker und **wachsend mit N** ab — passt eher zu einem Satz nahe 3.3-3.4 % als zu exakt 3.0 %.
**Verdikt: Zahlen bleiben belegt aus der Quelle** (S. 69, WP-Kursfolie), Status `established`
unveraendert — mit einem ⚠-Vermerk als Merkzahl-Vorbehalt bei der 3 %-Zeile.

## Gesamtverdikt

Alle drei Komplexe **bestanden** (keine Beanstandung, die eine Status-Herabstufung erfordert
wuerde). Zwei substanzielle Praezisierungen fuer kuenftige Anwendungen: die exakte Herosé-
Annuitaetenformel und die aGF/GF-Kostenbasis-Unterscheidung im DXMA-Blatt. Keine neue D-Luecke.

## Geaenderte Dateien

- `wiki/ertragswert-dcf.md` — Annuitaetenformel-Praezisierung (Sektion 2b), Barwert-Verlust-
  ⚠-Vermerk, `last_updated` 07-08→07-12, «Offen»-Eintrag.
- `wiki/residualwertmethode.md` — DXMA-Recompute-Sektion, aGF/GF-Klarstellung, `last_updated`
  07-08→07-12, «Offen»-Eintrag.
- `wiki/wissensluecken.md` — Run-19-Erledigt-Eintrag, B-Sektion aktualisiert.
- `raw/_INGESTED.md` — Run-19-Stand-Block.
- `training/curriculum.md` — Verifikations-Vermerk aktualisiert, naechster Komplex vorgeschlagen.
- `wiki/INDEX.md` — Run-19-Hinweis an beiden Eintraegen.
- `CHANGELOG.md` — Run-19-Eintrag (zuoberst).

## Empfehlung an Raphael (unveraendert seit Run 18)

Der auto-schliessbare Rueckstand ist abgearbeitet; der Loop haertet nur noch bestehende
Kennwerte weiter nach. Der Grenznutzen sinkt mit jedem weiteren Verifikations-Lauf ohne neues
externes Signal. **Vorschlag unveraendert: Ruecktaktung ins Nachtfenster** (z.B. alle 2 Tage,
22:00-06:00), sobald Raphael entscheidet. Bis dahin laeuft der Loop gemaess VOLLGAS-Weisung
(Rule 260712c/d/e) im Intensiv-Takt weiter.

## Naechster Lauf

- **Wenn weiter im Intensiv-Takt:** Nutzungskonzeptions-/Marktanalyse-Kennzahlen
  ([[nutzungskonzepte]]) verifizieren, oder das Lehrstueck «hoeherer Ertrag ≠ hoeherer Landwert»
  (S. 153-155, drei Varianten-Zeilen der Tabelle nachrechnen).
- **Neues externes Signal ab 01.09.2026:** Referenzzins-Publikation (Stichtag 30.06.), SREBI
  Q2-2026, danach Baupreisindex Dez-2026 → Marktpuls-Update [[investorenmarkt-makro]].
- **Sobald Raphael liefert:** D5 (Margen/Finanzierung), D10 (Blatt-Bereinigung Kennwerte
  Altersheime), D11 (Index-Reihe m3-Richtwerte 2003→2026).
