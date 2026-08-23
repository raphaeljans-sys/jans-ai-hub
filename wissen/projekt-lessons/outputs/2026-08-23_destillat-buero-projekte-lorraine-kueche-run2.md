# Destillat-Lauf `buero-projekte` Phase 2, Run 2 — 2026-08-23

Ziel-KB: `wissen/projekt-lessons` · Korpus-Spec: `skills/wissens-destillat/specs/buero-projekte-spec.md`
Vorlauf: Run 1 (23.08.2026, `outputs/2026-08-23_destillat-buero-projekte-lorraine-kueche-run1.md`)

## Was gemacht wurde

Die 46 nach Run 1 verbliebenen `[t]`/P1-Zeilen wurden gelesen: 42 aus dem Rest-Cluster
`1318_Lorraine_Kueche` (Metallbau BKP 272, Wandbeläge BKP 282, Malerarbeiten BKP 285,
Elektro-Endrechnung, diverse Duplikate/Pläne) sowie vier Zeilen aus `1011_Lorrainestr_4`,
`1115_Kostenberechnung` und `1603_Steinhof`. Zwei parallele Subagenten (Read-Tool, nur lesend
im Archiv): Agent A auf die drei offenen Gewerke Metallbau/Wandbeläge/Malerarbeiten
(inkl. Rückgriff auf die LV-Referenzwerte in `150916_Kostenanschlag_dreistellig_Kueche_Maria.pdf`),
Agent B auf die übrigen 24 Dateien.

## Ergebnis

- **Update an `wiki/lorraine-kueche-maria-1318-kv-nebengewerke-abweichung.md`:**
  - Wandbeläge: LV CHF 1'300 vs. real CHF 3'601.60 (Fliesen bezahlt CHF 2'305.60 + Verlegung
    CHF 1'296.00) — **+177,0 %, Faktor ≈ 2,77**.
  - Malerarbeiten: LV CHF 560 vs. zwei vollständigen Konkurrenzofferten CHF 5'799.03
    (OptiMaler) bzw. CHF 4'458.50 unvollständig (Edulu, ohne Weissputz-Position) —
    **+935,5 % bzw. +696,2 %**, die grösste Einzelabweichung im gesamten Cluster.
  - Metallbau (BKP 272): bleibt **ohne gültigen Vergleichswert** — die im gleichnamigen
    Ordner abgelegten Offerten (Weibel: kompletter CNS-Küchenkorpus, Franke: CNS-Abdeckung,
    WESCO: Dunstabzugshaube) betreffen laut Master-LV sachlich BKP 273 (Positionen
    273.2.1/273.3.5), nicht 272. Bezogen auf die richtige LV-Position ergeben sich dort
    zusätzlich +54,4 % bis +178,6 % — eine Nuancierung der bisherigen Kernaussage: auch
    innerhalb des insgesamt gut geschätzten Hauptgewerks Schreinerarbeiten weichen dessen
    eigene technische Apparate-Unterpositionen im selben Muster ab.
  - **BKP-Korrektur:** Heizung/Sanitär/Elektro trugen in Run 1 unkommentiert die internen
    LV-Nummern der Kostenschätzungssoftware (223/224/225) als BKP-Codes. Gegen
    `references/bkp-2017/BKP-2017-Liste.md` verifiziert und korrigiert: 242 Heizungsanlagen,
    251/254 Sanitäranlagen, 232 Starkstrominstallationen.
- **Neuer Artikel `wiki/lorraine-kueche-1318-elektro-nachtrag-anschlusswerte-kuechenbauer.md`**
  (emerging): Elektro-Endrechnung +54,2 % (CHF 4'272.55 → CHF 6'588.15), Ursache im
  Rechnungstext dokumentiert (Anschlusswerte Backofen erst während Ausführung geklärt).
- **Neuer Artikel `wiki/dachstock-lorrainestrasse4-1011-denkmalpflege-foerderkombination-2003.md`**
  (emerging): Fremdmandat (Architektin Monika Wyss), Dachstocksanierung 2003/2004 im selben
  Gebäude wie Projekt 1318, aber zehn Jahre früher und ohne JANS-Mandat. Protokollierte
  Denkmalpflege-Begehung mit bezifferten Zugeständnissen, parallel bewilligte Förderung
  Denkmalpflege + Minergie, eigene Unterhalt-/Wertvermehrungs-Gliederung.
- **Inventar:** 46 Zeilen bearbeitet — 18 auf `[x]` (mit Artikel-Backlink), 28 auf `[-]`
  (Duplikate, Blanko-Formulare, reine Pläne/CAD-Exporte, Scope-Mismatches, Datenpunkte ohne
  Ursache-Konsequenz-Kette). Zähler danach: 822 Zeilen gesamt (unverändert), 660 `[-]`,
  117 `[t]` (91 P2, 26 P3 — alle P1-Zeilen des Gesamtkorpus jetzt abgearbeitet), 36 `[x]`.

## Verifikation (Stufe 3, in dieser Session)

- Jede Zahl im Update und in den beiden neuen Artikeln stammt direkt aus den
  Subagenten-Rohberichten mit Fundstellen-Zitat; keine Zahl interpoliert.
- **BKP-Codes explizit gegen `references/bkp-2017/BKP-2017-Liste.md` geprüft** (nicht nur aus
  dem Quelldokument übernommen): dabei den Run-1-Fehler entdeckt (223/224/225 sind
  Blitzschutzanlagen/Bedachungsarbeiten/Spezielle Dichtungen — nicht Elektro/Heizung/Sanitär)
  und korrigiert. Für die Update-Ergänzungen zusätzlich verifiziert: 272 Metallbauarbeiten,
  273 Schreinerarbeiten (inkl. 273.2/273.3-Struktur), 282 Wandbeläge, 285 Innere
  Oberflächenbehandlungen (285.1 Malerarbeiten) — alle korrekt.
- Ordner-BKP-Diskrepanz (Franke/WESCO in Ordner «272», sachlich BKP 273) direkt am Master-LV
  nachvollzogen, nicht nur aus dem Subagenten-Befund übernommen.
- Anonymisierung: private Kontaktdaten aus dem Dachstock-Konvolut (Adressen, Kontaktlisten der
  Unternehmerliste) bewusst nicht in den Artikel übernommen.
- Alle drei Artikel/Updates markieren die Frankenbeträge explizit als historischen Beleg
  (2015 bzw. 2003/2004), kein aktueller Richtwert.
- Nach jedem Schreibvorgang `git diff --numstat` geprüft (Rule `auto-verbesserungen` 260811):
  Inventar 46/46 (exakt die bearbeiteten Zeilen, keine Fremdänderung), keine anderen
  unerwarteten Diffs.

## Offen / nächster Schritt

- `1318_Lorraine_Kueche` ist P1-seitig vollständig abgearbeitet. Die 91 P2- und 26 P3-Zeilen
  des Gesamtkorpus (alle 22 Projektordner) stehen für den nächsten Lauf an — bisher wurde nur
  ein einziger P1-Cluster gesichtet, keine Aussage über den Ertrag der übrigen 21 Projekte.
- Pflicht-Zusatzauftrag `bevorzugte-systeme-jans.md` (Entscheid Raphael 31.07.2026): weiterhin
  nicht begonnen — Materialbasis aus einem einzigen Projekt reicht nicht für wiederkehrende
  Produktnennungen über mehrere Projekte.

Kein «KORPUS KOMPLETT» — Korpus `buero-projekte` bleibt in `KORPUS-QUEUE.md` auf `aktiv`.
