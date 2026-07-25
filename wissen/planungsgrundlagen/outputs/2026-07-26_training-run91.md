# Training Run 91 — Kartenportale + Energie (Frischecheck) + Schliessung M4 (KB-weite Umlaut-Sanierung)

**Datum:** 2026-07-26 · **Rotation:** Kartenportale (PL-01) + Energie (PL-04) — nach Run 90
(Recht/Norm + Brandschutz), gemäss Rotation Kartenportale → Energie → Recht/Norm → Brandschutz.

## Ablauf

1. Stand gelesen: `curriculum.md` (durchgehend `[x]`), `wiki/QUESTIONS.md` (zwei offene Punkte:
   D9, M4), letzte Reports Run 89 (Kartenportale+Energie) und Run 90 inkl. dessen Nachtrag.
2. Frischecheck für den turnusgemässen Domänen-Pair gegen Run 89 als Referenz.
3. Da der Frischecheck erneut Null ergab (25. Nullbefund in Folge), **nicht** einen 25. inhaltlich
   identischen Nullbericht geschrieben, sondern den seit dem Health-Check vom 25.07. offenen
   Register-Punkt **M4** abgearbeitet — den einzigen Punkt der KB, der ohne neues Quellmaterial
   und ohne reales Projekt lösbar war.

## Befund 1: Frischecheck (Kartenportale + Energie) — Null

- `find "PL - 01 Kartenportale" -newer 2026-07-26_training-run89.md -type f` → **0 Treffer**.
- `find "PL - 04 Energie" -newer 2026-07-26_training-run89.md -type f` → **0 Treffer**.

Seit Run 89 ist in beiden SharePoint-Ordnerbäumen keine Datei neu hinzugekommen oder verändert
worden. Damit ist dies die **25. Nullbefund-Bestätigung in Folge** über alle vier Domänen.
Bewusst keine künstlichen Zusatzfragen erzeugt, um den 10–16-Fragen-Zielkorridor formal zu füllen
(Rule `wissens-bibliothekar`: nichts erfinden, keine Pseudo-Tiefe).

## Befund 2: M4 geschlossen — KB-weite Umlaut-Sanierung (51 Dateien)

**Das Problem war falsch diagnostiziert.** M4 lag seit dem 25.07. mit der Begründung, der Befund
sei "zu gross für einen Nachtschicht-Fix", weil ein Blind-`sed` echte Doppelvokale, Zitate und
Dateinamen verfälschen würde. Richtig daran ist nur die zweite Hälfte: eine Regex **kann** das
nicht leisten. Die Kontextanalyse zeigt, warum — die Ersatzschreibung ist von legitimen Folgen
nicht mechanisch trennbar:

| legitim (darf nicht ersetzt werden) | Vorkommen | ersetzt (muss korrigiert werden) |
|---|---|---|
| `neue`, `neuer`, `neuen` | 147 | `Gebaeude` → Gebäude |
| `bauen`, `Bauen`, `Baueingabe` | 159 | `Hoehe` → Höhe |
| `Feuerwehr`, `Feuerwiderstand` | 59 | `fuer` → für |
| `Quelle`, `Quellen`, `Querschnitt` | 194 | `Zuerich` → Zürich |
| `aktuell*`, `zuerst`, `Steuer*` | 100+ | `Ueberpruefung` → Überprüfung |

Die Lösung ist deshalb **kein besseres Regex, sondern ein kuratiertes Token-Mapping**:

1. **Extraktion:** alle 2'651 distinkten Tokens mit `ae/oe/ue` aus den 51 Wiki-Dateien
   (Schutzzonen vorher maskiert), 9'275 Vorkommen.
2. **Klassifikation:** acht parallele Sonnet-Subagenten entscheiden je Token, welche Stellen
   ersetzte Umlaute sind (Modell-Politik "Minimum Viable Model": mechanische Stufe → Sonnet).
3. **Maschinelle Validierung:** jede vorgeschlagene Ersetzung muss aus dem Original **allein**
   durch `ae→ä`/`oe→ö`/`ue→ü` ableitbar sein — geprüft über die Menge aller Teilmengen-Varianten
   je Token. Ergebnis: **2'651 Zeilen, 0 Beanstandungen**, keine Zeile mit verändertem Stamm,
   veränderter Endung oder veränderter Gross-/Kleinschreibung.
4. **Urteilsstufe (Hauptmodell, nicht delegiert):** die 13 riskanten Konvertierungen (Umlaut nach
   Vokal oder nach `q`) einzeln geprüft — alle 13 korrekt, es sind Komposita-Grenzen
   (`Bau|überwachung`, `Bau|ökologie`, `Folge|änderung`, `ge|ändert`, `ge|öffnet`, `ge|übt`,
   `Subsidiär`, `neubau|ähnliche`). Ebenso die 317 unverändert gelassenen Tokens gegengelesen —
   korrekt, inklusive der subtilen Fälle `Risikoermittlung` (Risiko+Ermittlung), `Grauenergie`,
   `Baueingabe`, `zueinander`, `aeesuisse` (Verbandsname), `Oetwil` (amtliche Schreibweise),
   `Temperaturkoeffizient`, `true`/`critique`.
5. **Anwendung** mit Schutzzonen: Code-Blöcke, Inline-Code, URLs, `[[Wikilinks]]`,
   Markdown-Linkziele, Pfade, Dateinamen, Slugs. Zwingend, weil Datei-/Ordnernamen und
   Wiki-Slugs nach `dateinamen-konvention.md` ASCII bleiben müssen.

**Ergebnis:** 2'334 Tokens korrigiert, 317 bewusst unverändert; **4'769 Zeilen in 51 Dateien**.

**Verifikation nach dem Lauf** (gegen ein vorher gezogenes Backup aller 51 Dateien):

- Wikilinks je Datei **bitgleich** — keine Abweichung.
- URLs je Datei **bitgleich** — keine Abweichung.
- Zeilenzahl je Datei **identisch** — keine Strukturänderung.
- Stichproben-Diffs gelesen: in `recht-norm-ivhb-baubegriffe.md` und
  `energie-pv-eignung-typenwahl.md` wurde die Prosa korrigiert, während der SharePoint-Pfad
  `01_Gesetze/02_Zuerich/Planung/` und PDF-Dateinamen wie
  `Final_Dossier_Solararchitekur_tiefaufgeloest.pdf` unverändert blieben — genau die
  Unterscheidung, an der ein `sed` gescheitert wäre.

**Nebenbefund miterledigt:** vorbestehender Tippfehler `frühren` → `früheren` (2x) in
[[recht-norm-ivhb-baubegriffe]].

**Bewusst nicht angefasst** (Entscheid, nicht Lücke): `OEREB` (45x, Akronym/Identifikator, wird
auch in Endpunkt- und Produktnamen geführt — Umstellung auf `ÖREB` wäre ein eigener Entscheid);
`CHANGELOG.md` und die `outputs/`-Berichte (historische Protokolle werden nicht nachträglich
umgeschrieben); die Eigennamen-Kandidaten `Troesch`, `Schaerer`, `Lueter` (ohne Beleg der
amtlichen Schreibweise nicht geraten, Rule `identifikatoren-verifizieren`).

## Neues Werkzeug (wiederverwendbar, kompoundierend)

- `scripts/umlaut-restore.py` — Restaurator mit Schutzzonen und Trockenlauf-Default.
  Ersetzt **ausschliesslich** anhand der Mapping-Datei; ein nicht gelistetes Token bleibt
  garantiert unverändert (deshalb systematisch sicherer als jede Regex).
- `scripts/umlaut-restore-mapping.json` — 2'334 kuratierte, maschinell validierte Einträge.

Nutzbar für dieselbe Sanierung in anderen KBs (der Health-Check vom 25.07. hat den
Ersatzschreibungs-Befund nicht nur hier gemeldet). Aufruf:

```bash
python3 /Volumes/daten/jans-ai-hub/scripts/umlaut-restore.py --mapping /Volumes/daten/jans-ai-hub/scripts/umlaut-restore-mapping.json /Pfad/zu/*.md
```

Ohne `--apply` läuft ein Trockenlauf. Für einen fremden KB gilt: zuerst Trockenlauf, dann die
dort **neuen** Tokens (nicht im Mapping) wie oben klassifizieren und das Mapping ergänzen — nie
das Mapping blind auf unbekanntes Vokabular ausweiten.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf (keine neuen Fachinhalte). Die Sanierung ist
formal/orthografisch, nicht inhaltlich: **kein einziger Fachwert, keine Quelle, keine Fundstelle
wurde verändert** — nachgewiesen über die bitgleichen URLs/Wikilinks und die unveränderte
Zeilenstruktur.

**`last_updated` bewusst NICHT nachgeführt.** Die Frontmatter-Daten der 51 Artikel bleiben stehen:
sie dokumentieren den **inhaltlichen** Stand (Datenstand der Quelle), und der hat sich nicht
geändert. Ein Massen-Bump auf 2026-07-26 würde 51 Artikel fälschlich als inhaltlich frisch
ausweisen und die Datenstand-Disziplin (⚠-Regel bei >18 Monaten) entwerten.

## Stand der KB nach diesem Lauf

Offen ist nur noch **D9** (realer MFH-/ZEV-Betriebskostenfall, seit Run 36) — lösbar
ausschliesslich durch ein reales Projekt, nicht durch diesen Loop.

## Empfehlung an Raphael (zwanzigste Wiederholung, jetzt mit erledigtem Restposten)

Fünfundzwanzig aufeinanderfolgende Läufe (Run 67–91) ohne einen einzigen neuen Wiki-Fund. Mit der
Schliessung von M4 ist jetzt auch der letzte **selbst lösbare** Restposten der KB abgearbeitet;
alles Verbleibende (D9) wartet auf reales Projektmaterial. Die Empfehlung aus Run 69–90 —
diesen Loop auf einen täglichen Frischecheck ohne vollen Bearbeitungslauf umzustellen, bis neues
Material eintrifft — steht damit stärker als zuvor und wird weiterhin nicht eigenmäßig umgesetzt
(Taktentscheide sind Raphaels Entscheid, Rule auto-verbesserungen 260714/260725).

## Nächster Schritt

Für den nächsten Recht/Norm+Brandschutz-Turnus (Run 92): Frischecheck gegen Run 90/den Run-90-
Nachtrag als Referenz. Optional, falls Raphael es freigibt: dieselbe Umlaut-Sanierung mit dem
neuen Werkzeug auf die übrigen KBs anwenden (`wissen/energie`, `wissen/baurecht`, …) — dort ist
derselbe Befund zu erwarten, das Werkzeug liegt bereit.
