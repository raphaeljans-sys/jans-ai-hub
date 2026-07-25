# Wissens-Chef Run 15 — Cross-KB-Lauf 25.07.2026

**Verfahren:** Workflow-Fan-out (Vollgas wieder aktiv, Rule 260725) — 6 parallele Lese-Agenten auf
Paaren mit Überschneidungsgefahr, danach **14 adversariale Verifikations-Agenten** (Auftrag:
den Befund zu *widerlegen*, im Zweifel UNBESTIMMT). 20 Agenten, ~2.93 Mio. Subagent-Token,
374 Tool-Aufrufe, 12:52 Minuten Wanduhr.

**Ergebnis: 14 gemeldete Widersprüche/Veraltet-Fälle → 9 BESTÄTIGT, 5 WIDERLEGT.**
Der schärfste Lauf seit Run 8: erstmals mehrere **materielle Fehler** (ein Rechtsfehler, ein
Normausgaben-Fehler, ein unzulässiger Kennwert), nicht nur Struktur.

---

## Teil 1 — Direkt ausgeführt (4 Faktenkorrekturen)

### 1. Versickerungspflicht — Rechtsfehler in `planungsgrundlagen` (BESTÄTIGT, korrigiert)
`recht-norm-regenwasser-gewaesserraum-zh.md` schrieb: «Nach Art. 7 GSchG muss nicht verschmutztes
Regenwasser **nicht** versickert werden.» Das kehrt die gesetzliche Regel um. Der Verifier hat
Art. 7 GSchG (SR 814.20) amtlich im Fedlex-Filestore in zwei Konsolidierungen geprüft:
**Abs. 2 macht die Versickerung zum Regelfall** («nach den Anordnungen der kantonalen Behörde
versickern zu lassen»), Einleitung und ARA-Ableitung sind die Ausnahmen der Kaskade. Die KB
`energie` sagte am selben Gegenstand das Richtige («versickert auf der Parzelle») — die beiden
Artikel zeigten nur nirgends aufeinander, und genau in dieser Blindstelle stand der Fehler.

→ Wortlaut korrigiert, Fundstelle Art. 7 Abs. 2 ergänzt, bidirektionaler Link gesetzt.
**Praxisrelevanz hoch:** die falsche Fassung hätte in einer Bauherren-/Behördenauskunft die
Entwässerungsstrategie in die falsche Richtung gedreht.

### 2. EN-102-Normbasis — SIA 380/1:2009 statt :2016 (BESTÄTIGT, korrigiert)
`planungsgrundlagen` führte die EnFK-Vollzugshilfe EN-102-d (Dez. 2018) als «Basis SIA 380/1:2009»,
`energie` als «:2016». Der Verifier hat das **Original-PDF geladen** (curl + pdftotext): Titel- und
Kopfzeile jeder Seite lauten «Ausgabe Dezember 2018 (Basis: Norm SIA 380/1, Ausgabe 2016)».
Ursache ist der irreführende SharePoint-Dateiname `EN-102-d_Waermeschutz_3801_2009_2018Dez.pdf`.

→ Beide pg-Stellen korrigiert, der Dateinamen-Fallstrick dokumentiert (damit er nicht ein drittes
Mal reproduziert wird), Verweis auf das führende energie-Destillat gesetzt. Die Grenzwerte
(0,17 / 1,0 W/m²K Neubau, 0,25 Umbau) waren beidseitig identisch und bleiben unverändert.

### 3. AWEL-Regenwasser-Richtlinie — Ausgabe 2025 statt 2006 (BESTÄTIGT, Flag gesetzt)
Der Widerlegungsversuch scheiterte an einer amtlichen Primärquelle **im eigenen Hub**: die
konsolidierte **BBV I (LS 700.21)** führt im Anhang der anerkannten Regeln der Baukunde unter
«Abwasserentsorgung» die «Regenwasser**bewirtschaftung**, Richtlinie und Praxishilfe der
Baudirektion, **Ausgabe 2025**». Die in pg destillierte Fassung heisst noch «Regenwasser**entsorgung**»,
V2.2 März 2006. Ebenso überholt: die zitierte «VSA-Richtlinie 2002» (Nachfolge «Abwasser-
bewirtschaftung bei Regenwetter», 2019).

→ ⚠-Ausgaben-Flag im Stil der bestehenden WWG/HWSchV-Flags gesetzt, VSA-Nachfolge nachgeführt.
Kein Trim, kein Neuschrieb — die GSchG-Substanz bleibt gültig.

### 4. Raumtypologie-Schlüssel in `architekten-synobsis` (BESTÄTIGT, korrigiert)
`CLAUDE.md` nannte zwei der neun Raumtypen anders als der kanonische Katalog-Schlüssel:
«Grosser Raum» statt **«Grosse Halle»**, «Skulpturaler» statt **«Skulptularer Raum»**. Die dort
dokumentierte Abfrage `--raumtyp` schlug damit fehl. Git-Historie: die Schlüssel lauteten nie
anders. Der Fehler entstand durch Vereinheitlichung auf ein «… Raum»-Muster plus stillschweigende
Rechtschreibkorrektur.

→ Auf die literalen Schlüssel korrigiert, inklusive Hinweis, dass «Skulptularer» ein Schreibfehler
im **read-only Quellordner** ist und bewusst so bleibt. Eine Bereinigung am Quellordner wäre
destruktiv und wird hier ausdrücklich **nicht** vorgeschlagen.

---

## Teil 2 — Struktur-Aktionen (9 Cross-Links / Anmeldungen, alle additiv)

| Wo | Was |
|---|---|
| `normen/wiki/QUESTIONS.md` | **Vier Bring-Schulden aus `baurecht` angemeldet** (SIA 491, SN EN 12193:2008, SN 640 052, SN 641 400) — die KB hatte **0 Treffer** für «baurecht», es war noch nie eine Bring-Schuld von dort angekommen |
| `baurecht` ↔ `normen` | SIA-181-Hinlink aufs Destillat gesetzt (Rule `normen-referenz` nachgezogen) |
| `baurecht/wiki/QUESTIONS.md` | IVHB-**Teilantwort** vermerkt: der amtliche IVHB-Leitfaden der Baudirektion ZH liegt in `planungsgrundlagen` und bedient den dortigen offenen Fassungs-Punkt |
| `baurecht/wiki/QUESTIONS.md` | Neue Lücke: Revisionsstrang «Erleichtertes Bauen im Bestand» (§ 220a/§ 357 E-PBG) — **0 Treffer** in der ganzen Recht-KB |
| `planungsgrundlagen` (2 Artikel) | Reziproke Verweise nach `baurecht` (IVHB, PBG-Revision) |
| `planungsgrundlagen` ↔ `energie` | Regenwasser-Artikel bidirektional verlinkt |
| `architekten-synobsis` ↔ `entwurfs-referenzen` | **Erst-Verlinkung** in beide Richtungen (die KBs kannten sich nicht) |
| `koordination/QUERBEZUEGE.md` | **5 neue Matrix-Zeilen** (Regenwasser-Rollenteilung, synobsis/entwurfs-referenzen, Healthcare-Kennwert-Leitquelle) |

---

## Teil 3 — Offene Entscheide für Raphael (3, keiner autonom entschieden)

### E-1 — Flächeneffizienz-Faktor: 0.70 gegen belegte 0.75 (+ die 4.7-Begründung)
Der Wissens-Chef-Entscheid vom **12.07.2026** setzt den Regelgeschoss-Faktor HNF/GF = **0.70**
«kanonisch, Hub-weit». Der führende Flächen-Artikel führt dagegen den **belegten 0.75**
(Band 0.73–0.80 je Wohnungstyp, Quelle: Flächenkonzeption Wohnen R. Jans 20.10.2024). Gleicher
Geltungsbereich, gleiche Bezugsgrösse — der Entscheid hat die Gesamtgebäude-Hälfte (0.60–0.61)
harmonisiert und die Regelgeschoss-Hälfte auf einem quellenlosen Faustwert festgeschrieben.

Gekoppelt und ebenfalls bestätigt: die Begründung «die ~1'020 CHF/m³ beruhen auf GV/HNF 4.7
(Gesamtgebäude), das 0.70 dient nur als Geschoss-Kennwert» hält nicht nach — **3.3 / 0.70 = 4.71**.
Die 4.7 ist regelgeschoss-basiert. Mit Gesamtgebäude-Faktoren ergäbe sich GV/HNF ≈ 5.0–5.5 und ein
Anker von ~870–960 statt ~1'020 CHF/m³ GV.

**Empfehlung:** 0.75 kanonisch setzen (quellenbelegt) und die 4.7-Begründung durch die nachrechenbare
Fassung ersetzen. Der geführte Anker ~1'020 bleibt vertretbar — er liegt am oberen Rand des eigenen
Bands 850–1'050 und innerhalb der ±25-%-Grobschätzungsspanne.
**Status:** needs-decision-Box in beiden KBs gesetzt, Werte unverändert gültig.

### E-2 — Healthcare-Kostenband im Parameter-Set (gesperrt, Wert offen)
`entwurfs-referenzen/wiki/parameter-sets/healthcare-neubau-zh.json` führt als Healthcare-Kosten-
referenz das **Wohnbau-MFH-Band 850–1'050 CHF/m³ GV** und beruft sich per `quelle_kb` auf
`wissen/grobkosten` — ausgerechnet die KB, die diese Verwendung für «Spital, Klinik, Alters-/
Pflegeheim, Reha, Praxis» **ausdrücklich untersagt**. Zweitens liegt das Band deutlich unter dem
belegten Niveau: **1'053–1'420 CHF/m³ GV** (BKP 2, Median ~1'100) aus dem 8-Objekt-Referenz-
vergleich, fünf der acht Objekte im Kt. ZH.

**Optionen:** (a) Feld ersatzlos streichen (Schema erlaubt es, das Schul-Set läuft bereits ohne),
(b) auf [1050, 1420] BKP 2 setzen, (c) auf BKP 1–5 hochrechnen (~[1350, 1820], Faktor 1.28 aus der
USZ-Aufgliederung — dann als abgeleitete Annahme kennzeichnen).
**Status:** nichts gelöscht; `status: GESPERRT` + belegter Hinweis im Block, Validator läuft durch.

### E-3 — Ebmatingen CHF/m³: 2'400 gegen 855 (Faktor 2.8)
`skills/machbarkeit/wissensbasis/02_kennwerte-kosten.md:30` führt «Wohnen Vollausbau ~CHF 2'400/m³ GV
(Ebmatingen-Grobkosten)». Für dasselbe Projekt führt `immobilienbewertung/wiki/realwert-sachwert`
**~855 CHF/m³ GV** (BKP 1–5, LB 3932). Kein Bezugsgrössen-Unterschied erklärt das (Baumasse↔GV
ergäbe nur 1.25–1.45). Die 855 sind dreifach gestützt, die 2'400 quellenlos.
**Vermutung, nicht verifiziert:** die 2'400 könnten CHF/m² GF sein (Einheitenfehler) — deshalb
**kein eigenmächtiger Ersatz**. Der Abgleich braucht die Original-xlsx aus dem Projektordner
2412 Ebmatingen.
**Status:** ⚠-Flag mit Verweis auf die führende Quelle gesetzt.

---

## Teil 4 — Widerlegt (5) und geschlossene Altpunkte

- **Genehmigungsfiktion Anzeigeverfahren** (baurecht ↔ pg): argumentum e silentio — die
  baurecht-Beleg-Schicht führt «Verfahrensabschluss durch Stillschweigen» sehr wohl. Keine Korrektur.
- **Baumasse vs. GV «unvereinbar»** (grobkosten ↔ immo): Scheinwiderspruch — Fläche/Volumen-
  Verhältnisse sind gegenüber dem UG-Ein-/Ausschluss invariant (am Objekt Averecura verifiziert).
  Wichtiger Nebenbefund: die Faustregel GV ≈ Baumasse × 1.25–1.45 darf **nicht** in die
  Flächenfaktoren hineingerechnet werden (überschätzte GF/HNF um 25–45 %).
- **WALD-Healthcare-Anker ~4'000 CHF/m² GF «veraltet»**: Gegenteil — die neue 8-Objekt-Basis
  zitiert und bestätigt ihn.
- **CHF/kWp-PV-Preisniveau**: datierte Projektbelege (2022/23, schlüsselfertig inkl. MwSt) gegen
  Marktmedian 2024 ohne MwSt — zwei Aussagetypen, kein Widerspruch.
- **0,70/0,60-Kopplung in der Wüest-Referenz** (Altpunkt 4 seit Run 14): Scheinbefund, beide
  Richtwerte unabhängig aus der Quantilstabelle indexiert. **Geschlossen.**

**Fortschreibung der Altpunkte aus Run 14:** (1) LSV-Novelle 01.04.2026 — **erledigt** durch
baurecht Buch-Run 52 am 25.07. (Art. 31a LSV per 1.4.2026 aufgehoben, Anhänge 3/4/5/6 unverändert;
das Run-14-Flag ist damit geschlossen). (2) Private-Kontrolle-Trim energie ↔ pg — **weiter offen**
(destruktiv, Entscheid Raphael, seit Run 11). (3) firmengruendung-ch Linkhygiene — beim KB-Loop.
(4) 0,70/0,60-Kopplung — geschlossen, siehe oben. (5) Umlaut-Config-Bug — unverändert getrackt.

---

## Bewertung

Der ertragreichste Cross-Lauf bisher, und er belegt den Nutzen des Verfahrens doppelt: Die
adversariale Stufe hat **5 von 14** Meldungen kassiert (darunter drei, die ohne Prüfung zu falschen
Korrekturen geführt hätten) — und gleichzeitig drei Fehler bestätigt, die keine KB allein hätte
finden können, weil sie erst im *Vergleich* sichtbar werden: der Versickerungs-Rechtsfehler stand
in der Blindstelle zwischen zwei Artikeln, die nie aufeinander zeigten; die EN-102-Normbasis war
nur am Original-PDF entscheidbar; das Healthcare-Band widersprach der Regel seiner eigenen
Quell-KB.

Das wiederkehrende Struktur-Muster «**Übergabe verpufft im abgebenden KB**» ist zum vierten Mal
belegt, diesmal in neuer Richtung (baurecht → normen, 0 Treffer). Der Gegen-Befund ist neu und
lohnt Beobachtung: bei OEREB-Bezugswegen ist die **führende Beschaffungs-KB ärmer als die
zuliefernde Recht-KB** — die Rollen-Matrix beschreibt hier nicht mehr die Realität.
