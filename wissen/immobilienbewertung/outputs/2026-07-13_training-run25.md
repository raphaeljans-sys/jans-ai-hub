# Training-Run 25 — KB Immobilienbewertung (2026-07-13)

## Ausgangslage

Run 24 (heute frueher) hatte die seit Run 18-23 laufende Bestaetigungsschleife durchbrochen:
D6 (Dichte-Kennwerte je Gemeinde/Zone) war als «Grossrecherche noetig, nicht in einem
Trainingslauf zu leisten» eingestuft — der direkte Versuch zeigte aber, dass pro Gemeinde die
amtliche BZO-Tabelle mit einem einzigen Fetch + `pdftotext -layout` extrahierbar ist. Run 24
erfasste Thalwil + Waedenswil. Run 25 arbeitet die verbleibenden 9 JANS-Bezugsmaerkte ab.

## Die 10 Themen dieses Laufs (= die 9 offenen D6-Gemeinden + Methodik-Verdichtung)

1. **Zollikon (ZH)** — BZO 1996, oerebdocs.zh.ch docid=1611. Kennziffer **Baumassenziffer**
   (W 1.25 bis WG 2.90, BMZ 1.25-3.00 m³/m²). ⚠ Ausgabe 1996 — Aktualitaet zu pruefen.
2. **Maur (ZH)** — neue BZO (Genehmigung 26.09.2023), maur.ch. **AZ** W1 20 / W2/35 35 /
   W2/45 45 / W3 60 %; neu Gruenflaechenziffer 40 %. WG2 45 / WG3 60 %.
3. **Wald ZH** — BZO, wald-zh.ch. **Baumassenziffer** (W 1.1-2.8, WG 2.0-2.8); Besonderheit:
   Geschossaufteilung frei.
4. **Regensdorf (ZH)** — BZO 2020, oerebdocs docid=8897. **AZ** W2A 27 / W2B 35 / W3-WG3 50 %.
5. **Wangen SZ** — Baureglement, wangensz.ch. **AZ** W1 0.25 / W2 0.45 / W3 0.55 / W4 0.70,
   WG2 0.60 / WG3 0.75 (+ Gestaltungsplan-Werte); Kernzone ohne AZ.
6. **Einsiedeln SZ** — Baureglement 2025, einsiedeln.ch. **Ueberbauungsziffer** W1/W4 20 /
   W2 28 / W3 24 % (Verwechslung mit AZ vermieden — ÜZ ist ein Grundflaechenmass).
7. **Muri AG** — BNO Stand 2012, muri.ch. **AZ** W1 0.3 / W2 0.4 / W3 0.5 / WG3 0.6.
   ⚠ Revision 2019 vorhanden, aber nur Bild-PDF — Stand zu verifizieren.
8. **Luzern (Stadt)** — BZR 2022, stadtluzern.ch. Anderes System: Wohnzonen A-F nach
   **Gesamthoehe** + **Ueberbauungsziffer** je Zonenplan-Ordnungsnummer. Als System-Beschrieb
   erfasst; Per-Ordnungsnummer-Werte offen (Zonenplan-Legende noetig, nicht erfunden).
9. **Langnau am Albis (ZH)** — BZO 2005 **ausser Kraft** (Revision 2026/27); kein in-Kraft-PDF.
   Als Status-/Vorbehalt-Eintrag erfasst (wichtig fuer JANS-Fall 2621 Giebelweg).
10. **Methodik-Verdichtung** — Kernbefund: drei nicht ineinander umrechenbare Bezugsgroessen
    (AZ / Baumassenziffer m³/m² / Ueberbauungsziffer). Artikel um Uebersichtstabelle + Warnung
    ergaenzt, Titel/Frontmatter generalisiert.

## Was gelernt / geaendert wurde

- **[[az-gfz-kennwerte]] von 2 auf 8 Gemeinden mit voller Dichte-Tabelle erweitert** (Thalwil,
  Waedenswil, Zollikon, Maur, Wald, Regensdorf, Wangen SZ, Einsiedeln, Muri — plus Luzern
  System-Beschrieb, Langnau Status). Jeder Wert direkt aus der amtlichen Quelle belegt.
- **Kernbefund (neu, praxisrelevant):** die Gemeinden regeln bauliche Dichte ueber **drei
  verschiedene Kennziffern** — Ausnuetzungsziffer (Geschossflaeche/Land, 0.20-0.85),
  Baumassenziffer (Volumen/Land, 1.1-3.0 m³/m²), Ueberbauungsziffer (Gebaeudegrundflaeche/Land,
  0.20-0.31). Ein zonenuebergreifender Vergleich «AZ ↔ AZ» ist nur bei gleicher Bezugsgroesse
  zulaessig. Das ist fuer Machbarkeits-/Residualwertrechnungen entscheidend und war bisher in
  der KB nicht dokumentiert.
- **Qualitaets-/Verifikations-Notiz:** Bei Wangen SZ war die 15-Spalten-Tabelle mit pdftotext
  mehrdeutig (Margen-Referenz-Tokens). Statt zu raten (KB-Leitplanke) wurde die Spaltenzuordnung
  per **Zeichenpositions-Alignment** (Python) gegen die Header-Positionen verifiziert und die
  leftmost-Spalte als **Kernzone K** identifiziert (Beleg: AZ = «–», konsistent mit
  Vollgeschoss-/Hoehen-Zeilen). Erst danach die W1-WG3-Werte uebernommen.
- **Register:** `wissensluecken.md` (D6 auf «niedrig»/substanziell geschlossen; Tabelle B
  Run-25-Zeile), `INDEX.md`, `CHANGELOG.md`, `curriculum.md` (Stand Run 25), `raw/_INGESTED.md`
  (externe amtliche Quellen). Backlinks `[[az-gfz-kennwerte]]` in **8 Gemeinde-Fact-Sheets**.

## Verdikt

Zwei aufeinanderfolgende Laeufe (24 + 25) mit **echtem, belegtem Erkenntnisgewinn** nach den
Runs 18-23 (reine Bestaetigungen). D6 ist fuer die JANS-Bezugsmaerkte **substanziell
geschlossen**. Nichts erfunden: Luzern-Per-Zonenwerte und Langnau bleiben ehrlich offen, weil
die Quelle fehlt (Zonenplan-Legende) bzw. ausser Kraft ist.

## Naechster Lauf

Kein selbststaendig schliessbarer D6-Rest mehr, der ohne externe Abhaengigkeit loesbar waere:
- **Langnau am Albis** — Wiedervorlage nach Rechtskraft der BZO 2026/27 (~Fruehjahr 2027).
- **Luzern** — Per-Ordnungsnummer-Werte nur bei konkretem Standort (Zonenplan-Legende).
- **Muri AG** — Aktualisierung auf Revision 2019, sobald eine Textebene-Fassung vorliegt.
- **Zollikon** — Nachfolger der BZO 1996 pruefen.

Damit faellt die KB fuer die naechsten Laeufe wieder in den Beobachtungsmodus (neuer
JANS-Bewertungsfall / Marktpuls). Die Marktpuls-Anker sind seit Run 17 unveraendert (SNB
0.00 %, Referenzzins 1.25 %); naechster realistischer Aenderungstermin ab 01.09.2026.
**Empfehlung:** Ruecktaktung dieser KB ins Nachtfenster erneut sinnvoll, sobald die vier
Rest-Vorbehalte extern abhaengig bleiben — die zwei materiellen Laeufe (24/25) waren die
noch offene selbst-schliessbare Substanz, und die ist jetzt gehoben.
