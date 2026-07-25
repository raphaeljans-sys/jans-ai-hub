# Trainings-Programm: grobkosten (Kennwerte-Lernmodell)

Angelegt 25.07.2026 durch den VOLLGAS-Chef-Radar (Umlenkung freier Kapazitaet gemaess
Schritt 6 des Radar-Auftrags: energie und planungsgrundlagen haben Saettigung gemeldet,
grobkosten ist die groesste offene Wissensluecke mit vorhandenem Quellmaterial).

## Warum dieser Loop

`wiki/kennwerte.md` traegt heute ausschliesslich **Seed-Werte** (Marktannahmen). Der Skill
`grobkosten-onepager` und der Agent `grobkosten-rechner` rechnen damit Volumen x Kennwert
fuer jede fruehe Studie. Rule `identifikatoren-verifizieren` und die KB-eigene Regel
«Kennwerte nie raten» verlangen belegte Werte. Solange `raw/` leer ist, bleibt jede
Grobkostenaussage eine Annahme. Dieser Loop fuellt `raw/` aus dem realen JANS-Bestand.

## Quellenlage (verifiziert 25.07.2026)

Das Material liegt **nicht** im Architektur-Archiv, sondern unter:

```
/Volumes/daten/04_Buero/02_Projekte/<projekt>/04_Kosten/          (bzw. «4 Kosten», «6_Kosten»)
```

Verifizierte Beispiele:
- `1527_EH Europe GmbH/4 Kosten/` — `40 Kostenschätzung`, `41 Kostenermittlung KV`,
  `42 Kostenvoranschlag`, `44 Baubuchhaltung_Baukosten/442 Bauabrechnung` (+ `441 Kostenstände`)
- `1011_Lorrainestr_4/04_Kosten/` — `00_Offerten`, `Referenzen_Baukostenplan`
- `1012_Ardez/04_Kosten`, `1303_Steinhof/04_Kosten`, `1115_Kostenberechnung/Grobkostenberechnung.docx`
- `1524_Winterthur_Erweiterung_Bezirksgebaeude/2 Rahmenbedinungen/6_Kosten`,
  `1525_Bauhaus Museum Dessau/2 Rahmenbedinungen/6_Kosten`

Zweitquelle fuer laufende Projekte: `kostenkontrolle`-Outputs und Schlussabrechnungen der
aktuellen Mandate (SharePoint-Projektordner). Healthcare gehoert **nicht** hierher, sondern
in `kostenschaetzung` (Wuest-Partner m²-NF-Daten).

## Stufen

**Stufe 1 — Inventar (zuerst, garantiert produktiv).**
`training/quellen-inventar.md` anlegen und fuellen: je Projekt eine Zeile mit Projektnummer,
Kurzname, Nutzung, gefundenen Kostendokumenten (Pfad), Dokumenttyp (Kostenschaetzung / KV /
Bauabrechnung / Offerte), Verwertbarkeit (`[ ]` offen, `[x]` ausgewertet, `[-]` untauglich mit
Grund). Erst wenn das Inventar steht, wird gelesen.

**Stufe 2 — Extraktion.**
Pro Lauf 2–4 offene Inventar-Zeilen der Prioritaet nach abarbeiten (Bauabrechnung vor KV vor
Kostenschaetzung vor Offerte — je naeher am Ist, desto wertvoller). Je Projekt einen Eintrag
nach `raw/<projektnr>-<kurzname>.md` mit: Projekt, Nutzung, Standard, Region, Baujahr/Preisstand,
GV (m³ SIA 416), aGF/BGF, Kosten je BKP 1–5, Dokumenttyp, Quellpfad, Abrufdatum. Fehlende
Groessen als fehlend markieren, **nie** rechnerisch ergaenzen oder schaetzen.

**Stufe 3 — Verdichtung.**
Sobald zu einer Nutzungsart n ≥ 2 belegte Faelle vorliegen: `wiki/kennwerte.md` fortschreiben —
Median + Band, Reife von `Seed` auf `belegt n=…` heben, Preisstand mitfuehren, Provenienz je
Wert. Bei nur einem Fall: Wert als `Einzelfall n=1` fuehren, Seed **nicht** ueberschreiben.

**Stufe 4 — Teuerungs-Normalisierung.**
Werte aus unterschiedlichen Jahren nur mit ausgewiesenem Preisstand nebeneinanderstellen; eine
Normalisierung auf einen gemeinsamen Stichtag erst vornehmen, wenn ein belegter Baupreisindex
(ZH/Schweiz, Quelle + Ausgabe) in der KB hinterlegt ist. Bis dahin: Preisstand je Wert ausweisen
und die Spanne offen lassen.

## Leitplanken

- **Kennwerte nie raten.** Jeder Wert traegt Reife und Provenienz (Datei/Pfad + Abrufdatum).
- **Read-only auf Projektdaten.** Der Loop liest `/Volumes/daten/04_Buero/…`, schreibt
  ausschliesslich in `wissen/grobkosten/`.
- **Kein Leerlauf-Zwang.** Findet ein Lauf kein neues Material, wird ein bestehender Kennwert
  gegengeprueft oder das Inventar vertieft — es werden keine Fuellwerte erzeugt.
- **BKP-Codes** ausschliesslich nach `references/bkp-2017/` (Rule `bkp-2017-referenz`).
- **Vertraulichkeit:** Bauherren-/Unternehmernamen und Vertragssummen bleiben in `raw/`;
  ins `wiki/` gehen nur verdichtete Kennwerte ohne Zuordenbarkeit zum einzelnen Auftrag.

## Endbedingung

Sind alle Inventar-Zeilen `[x]` oder `[-]` und traegt `wiki/kennwerte.md` fuer die gefuehrten
Nutzungsarten belegte Werte, meldet der Loop Saettigung und schlaegt Ruecktaktung auf einen
Ereignis-Trigger vor (neuer Kostenstand aus `kostenkontrolle`) statt weiter zu zyklieren.
