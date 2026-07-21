# Wissens-Health-Check: planungsgrundlagen — 2026-07-21

Mac Mini Nachtschicht, Phase 1 (Audit + Report, unbeaufsichtigt). Letzter Health-Check:
2026-07-01 (20 Tage her, aeltester unter den Mac-Mini-KBs energie/planungsgrundlagen/
architekten-synobsis/normen — synobsis ist Tool-KB ohne Standard-Audit).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 (nicht erschoepfend geprueft, s. Methodik) |
| B Kaputte Backlinks/Orphans | 3 (2 Zeilenumbruch-Links, 0 Orphans, 2 fehlend im INDEX) |
| C Unbelegte Claims | 0 (Stichprobe, s. Methodik) |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 2 (1 fehlende Frontmatter, 1 KB-weites Umlaut-Problem) |
| G Promotion-Kandidaten | 10 emerging-Artikel identifiziert, nicht einzeln geprueft |

## Methodik-Hinweis (Budget-Disziplin)

Dieser Lauf folgt der Budget-Vorgabe des Nachtschicht-Dispatch (schlank halten, keine
grossen Agent-Fan-outs). Audit A (n²-Paarvergleich ueber 48 Artikel) und eine vollstaendige
Audit-C-Pruefung (3 Claims × 48 Artikel) wurden **nicht erschoepfend** durchgefuehrt, sondern
durch gezielte grep-/Stichproben-Checks ersetzt. Kein Widerspruch und keine unbelegte
Kernaussage in den geprueften Stichproben gefunden — das ist kein vollstaendiger Ausschluss.
Empfehlung: bei naechster Gelegenheit (grosszuegigeres Budget) Audit A/C vollstaendig nachholen.

## Top-3 (Raphaels Aufmerksamkeit)

1. **F — Umlaut-Konvention KB-weit verletzt:** 39 von 48 Wiki-Artikeln enthalten
   Umlaut-Ersatzschreibweisen (fuer/ueber/moeglich/waere/muessen/koennen/groesse/Strasse/
   Flaeche/zusaetzlich/natuerlich/Aenderung statt ä/ö/ü). Stichprobe verifiziert (kein
   False-Positive): `kartenportale-oereb-egrid-bezug.md:41` — "der richtige Schluessel fuer
   OEREB" statt "Schlüssel für OEREB". Deckt sich mit dem identischen Befund heute Nacht in
   der KB `energie` (8 Artikel + BAUHERREN-FAQ) — moeglicherweise ein systematischer
   Trainings-Loop-Defekt (Agent schreibt konsequent ae/oe/ue), nicht Einzelfehler. Betroffene
   Dateien (Auszug, vollstaendige Liste per grep reproduzierbar):
   `brandschutz-pl03-wegweiser.md`, alle `energie-*.md` (11/11), die meisten `kartenportale-*.md`
   (11/13) und `recht-norm-*.md` (16/20).
2. **B — 2 Backlinks durch Zeilenumbruch zerbrochen:** `energie-energienachweis-zh-formulare.md`
   Z. 252-253 (`[[recht-norm-\n  tiefgarage-erschliessung]]`) und `energie-uebersicht.md`
   Z. 168-169 (`[[energie-energienachweis-\n  zh-formulare]]`) — der Linktext wird durch einen
   Zeilenumbruch mitten im `[[...]]`-Ausdruck gesplittet, das Zielarti kel existiert, der Link
   funktioniert aber nicht als Backlink-Referenz. Zusaetzlich: 2 Artikel fehlen im INDEX.md
   (`recht-norm-rechtsprechung-vg-zh.md`, `recht-norm-sanitaerraeume-planungsgrundlagen.md`).
3. **F — Fehlende Frontmatter:** `kartenportale-sharepoint-ablage.md` hat kein YAML-Frontmatter
   (kein `title:`/`status:`/`last_updated:`/`sources:`-Block), nur eine Inline-Status-Zeile im
   Fliesstext ("**Status:** established · **Quelle:** ..."). Einziger Ausreisser unter 48 Artikeln.

## Details je Audit

### A. Widersprueche
Nicht erschoepfend geprueft (Budget). Keine in Stichproben (Umlaut-/Frontmatter-Scan,
Backlink-Scan) aufgefallenen Wortmeldungen deuten auf inhaltliche Widersprueche hin.
QUESTIONS.md fuehrt bereits mehrere aufgeloeste Verdachtsfaelle (z.B. M3 "§49b PBG" Run 47/48,
C32 "BSR 14-15" Run 41) — die dortige Selbstkorrektur-Disziplin ist intakt, keine offene
unbestaetigte Spannung gefunden.

### B. Kaputte Backlinks & Orphans
- 2 durch Zeilenumbruch zerbrochene `[[...]]`-Links (Details oben, Top-2).
- 0 echte Orphans (jeder Artikel hat mindestens einen eingehenden Link).
- 2 Artikel fehlen im INDEX.md: `recht-norm-rechtsprechung-vg-zh.md`,
  `recht-norm-sanitaerraeume-planungsgrundlagen.md`.
- Zusaetzlich beobachtet (kein Fehler, nur Hinweis): rund 40 `[[...]]`-Links zeigen auf Skills
  (`machbarkeit`, `healthcare-wirtschaftlichkeit`, `ankaufspruefung`, `behoerden-vorabklaerung`,
  `stockwerkeigentum`, `auflagebereinigung`, `massgebendes-terrain`, `oereb-schwyz`,
  `studien-generator`, `dateinamen-konvention`) oder auf Artikel in Schwester-KBs (`energie`,
  `baurecht`) — beides laut CLAUDE.md gewollt ("verlinkt statt dupliziert"), aber im lokalen
  Backlink-Check nicht aufloesbar. Kein Handlungsbedarf, nur Methodik-Hinweis fuer kuenftige
  Audits (Cross-KB-Links brauchen einen Cross-KB-Resolver, um echte von falschen Treffern zu
  trennen — genau das wurde hier manuell nachgezogen).

### C. Unbelegte Claims
Stichprobe (3 Artikel: `kartenportale-sharepoint-ablage.md`, `kartenportale-werkleitungskataster.md`,
`recht-norm-radonschutz.md`) zeigt durchgehend belegte `sources:`-Bloecke mit konkreten
Primaerquellen (SR-Nummern, PDF-Pfade, Datum/Auskunftsnummer). Keine erschoepfende Pruefung
(Budget).

### D. RAW-Coverage
`raw/_INGESTED.md` ist als fortlaufendes Narrativ-Register gefuehrt (nicht als einfache
Dateiliste), jede Zeile traegt bereits Inline-Verweise auf die daraus entstandenen
Wiki-Artikel (`→ [[...]]`). Keine Coverage-Luecke gefunden — die vier PL-Ordner-Zeilen
(PL-01 bis PL-04) sind als "teilweise" markiert, was laut Registerkonvention den laufenden,
nicht abgeschlossenen Explorationsstand korrekt abbildet, keine versteckte Luecke.

### E. Veraltete Artikel
0 Findings. Verteilung `last_updated`: aeltester Artikel 2026-06-05 (46 Tage), Median Mitte
Juli — alle deutlich unter der 90-Tage-Schwelle. Kein Artikel mit neuerer widersprechender
Quelle identifiziert.

### F. Schreibregel-Verstoesse
- **Umlaut-Konvention (Top-1, Details oben):** 39/48 Artikel betroffen. Hohe Trefferzahl
  deutet auf einen systematischen Defekt im Trainings-/Schreib-Loop hin, nicht auf einzelne
  Tippfehler — vergleichbar mit dem heutigen energie-Befund.
- **Fehlende Frontmatter:** `kartenportale-sharepoint-ablage.md` (Details oben, Top-3).
- Keine ß-Verstoesse gefunden (Stichprobe). Keine dekorativen Symbole/Emojis gefunden
  (Stichprobe).

### G. Promotion-Kandidaten
10 Artikel mit `status: emerging`: `energie-betriebsenergie-pv-wirtschaftlichkeit.md`,
`kartenportale-ebau-sz-baugesuch.md`, `kartenportale-denkmalschutz-isos.md`,
`kartenportale-historisches-terrain-vermessungsbuero.md`, `kartenportale-werkleitungskataster.md`,
`recht-norm-baurechtsanalysen-benchmarks.md`, `recht-norm-mehrwertrevers-grundbucheintragungen.md`,
`recht-norm-pbg-revision-bauen-im-bestand.md`, `recht-norm-richtprojekt-ueberbauungsordnung.md`,
`recht-norm-zivilschutz-bautechnik.md`. Nicht einzeln auf Promotion-Reife geprueft (Budget) —
Kandidat fuer den naechsten regulaeren Trainingslauf (Run 55+, `training/PROGRAMM.md`).

## Empfehlung an Raphael (nicht selbst umgesetzt, Phase 2 nur interaktiv)

- Umlaut-Korrektur KB-weit (39 Artikel) via Skill `korrektur` (Agent `rechtschreibung`) —
  substanzieller Aufwand, eigener Lauf empfohlen, nicht in dieser Nachtschicht.
- 2 zerbrochene Links reparieren (kleiner mechanischer Fix, 2 Dateien).
- 2 fehlende INDEX-Eintraege ergaenzen.
- Frontmatter fuer `kartenportale-sharepoint-ablage.md` nachtragen.
- Pruefen, ob der Umlaut-Defekt eine gemeinsame Ursache mit dem energie-Befund hat (gleicher
  Trainings-Agent/Prompt-Baustein?) — Cross-KB-Nebenbefund, ggf. an `koordination`-KB melden.
