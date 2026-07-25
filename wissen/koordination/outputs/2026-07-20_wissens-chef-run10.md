# Wissens-Chef Run 10 — Cross-KB-Audit (2026-07-20)

**Modus:** gedrosselter Lauf (Rule 260714). 4 parallele Lese-Agenten am frischen Stoff seit Run 9,
danach keine Verifikationsrunde (kein einziger Widerspruch gemeldet — nichts zu widerlegen).
Workflow-Tool wie in energie Run 82 headless nicht nutzbar (« Review dynamic workflow before running »)
→ 4 Hintergrund-Agenten über das reguläre Agent-Tool, gleiche Parallelität, Schreibkonflikt-Vermeidung
durch getrennte Zieldateien je Paar.

## Geprüfte Paare (Auswahl nach frischem Stoff seit Run 9)

1. **energie ↔ baurecht** — § 2a BVV Wärmepumpen-Meldeverfahren (energie Run 81/82).
2. **energie ↔ planungsgrundlagen** — dasselbe Meldeverfahren, Verfahrensseite (WTA-Formular).
3. **normen ↔ planungsgrundlagen ↔ auflagebereinigung** — Brandschutz/VKF; pg Run 54 (§5ao/§5ap) +
   neuer auflagebereinigung-Artikel `gvz-einreichung-bma-sprinkler`.
4. **kunde-bopp ↔ firmengruendung-ch** (Rotation, Erst-Check) — Rechtsformen Genossenschaft/AG.

> Das im Task-Auftrag genannte Pflichtpaar grobkosten ↔ immobilienbewertung ↔ kostenschätzung-Ref
> wurde bewusst **nicht** erneut geprüft: seit Run 3 stabil, immobilienbewertung saturiert, kein neuer
> Fall (jüngster Wangen 8855). Als Delta-Check-Kandidat in die Rotationsliste zurückgestellt. Der
> Token-Einsatz floss stattdessen dorthin, wo seit Run 9 wirklich neuer Stoff landete.

## Gesamtbefund: 0 Widerspruch, 0 Veraltetes, 0 echte Doppelspur

Bemerkenswert für einen Cross-KB-Lauf: **kein einziger materieller Konflikt.** Alle Befunde sind
strukturell (fehlende Cross-Links, eine Vollständigkeitslücke). Zwei mögliche Ursachen, beide gut:
- Die Rechts-/Fassungsdisziplin nach den Run-7/8/9-Korrekturen hält — der frische § 2a-BVV-Stoff kam
  **fassungsgleich** in energie und baurecht an (BVV Nachtrag 133, EnerG Nachtrag 129), inkl. korrektem
  § 11 EnerG (kein § 10a-Rückfall).
- Das wiederkehrende «VKF-Wortlaut fortgeschrieben ohne normen-Link»-Muster trat diesmal **nicht** auf:
  die frischen pg-§5ao/§5ap markieren ihre Zahlen ausdrücklich als Musterplan-Beispielwerte.

Weil keine Widersprüche vorlagen, war die adversariale Verifikationsrunde gegenstandslos; jeder Befund
ist direkt am zitierten `file:line`-Anker verifiziert (die Agenten lieferten Zeilennummern + Kurz-Zitate,
vor jeder Edit gegengelesen).

## Ausgeführte Aktionen (7 Dateien in 5 KBs, ausschliesslich Links/Querbezüge + 1 QUESTIONS)

### § 2a BVV Wärmepumpen-Meldeverfahren — dreiseitig verlinkt
- `energie/destillate/bvv-zh-meldeverfahren-klimaanlagen-waermepumpen.md`: Cross-KB-Querbezug-Block.
  Rollenteilung fixiert: **energie = Rechtsgrundlage** (§ 2a/§ 2c BVV, WP-Weichen: 2 m³ aussen,
  2,5 m Erdsonde, Kernzonen-Ausnahme Abs. 2), **baurecht = Verfahrenstyp-Systematik**,
  **planungsgrundlagen = WTA-Formular/Verfahrensablauf**.
- `baurecht/wiki/baubewilligungsverfahren.md`: Querbezug-Block zum Meldeverfahren §§ 2a-2c BVV (4.
  ZH-Verfahrenstyp) + ausdrückliche Abgrenzung **§ 2a BVV (LS 700.6) ≠ § 2a ABV (LS 700.2)**.
- `planungsgrundlagen/wiki/energie-baueingabe-zusatzformulare.md`: Querbezug im WTA-Abschnitt auf die
  energie-Rechtsgrundlage (schliesst die Führungslücke der verfahrensführenden KB).
- `baurecht/wiki/QUESTIONS.md`: offener Punkt — Meldeverfahren als eigenen Abschnitt destillieren
  (raw liegt vor), arbeitsteilig zu energie, um eine BVV-Doppelspur analog E1 zu vermeiden.

### Brandschutz/VKF-Dreieck — GVZ-Artikel an normen angebunden
- `auflagebereinigung/wiki/gvz-einreichung-bma-sprinkler.md`: Querbezug «KB normen» — Schwellen
  (BMA >10/600 m², SPA >10/100 m², Ausserbetriebsetzung) auf VKF-BRL 20-15 Ziff. 4.1/3.10 bzw.
  19-15 Ziff. 5.1/4.4 (normen führend).
- `auflagebereinigung/wiki/brandschutz-auflagen-qss.md`: reziproker Backlink im GVZ-Abschnitt (II.25/26).
- `normen/destillate/vkf-brl-20-15-brandmeldeanlagen.md` + `vkf-brl-19-15-sprinkleranlagen.md`:
  JANS-Praxis-Transfer zeigt jetzt auf den konkreten GVZ-Artikel statt generisch.

### Register/Protokoll
- `koordination/QUERBEZUEGE.md`: 4 datierte Paar-Einträge; Rotationsliste bereinigt (kunde-bopp
  ausgetragen, grobkosten/immo als Delta-Kandidat zurückgestellt).
- CHANGELOG-Zeilen in allen 5 berührten KBs + koordination.

## Offene Entscheide für Raphael

**Keine neuen.** Der einzige neue offene Punkt (baurecht-Meldeverfahren-Destillat) ist Loop-Arbeit,
keine Entscheidung — er wandert in den baurecht-Trainings-Loop, nicht auf Raphaels Tisch.

**Weiterhin offen aus früheren Läufen (unverändert, hier nur zur Erinnerung, keine Doppelmeldung):**
- **E1** — Doppelspur ZH-Energierecht (energie führt ZH-EnerG-§§ auf Absatzebene, obwohl baurecht
  führend). Run 10 zeigt: dieselbe Gefahr droht auf der BVV, sobald baurecht das Meldeverfahren
  destilliert — deshalb die QUESTIONS-Notiz «arbeitsteilig anlegen».
- E2 (§ 8a EnerG), normen-Dublette Solaranlagen (Run 6), GSchV-Doppelspur (Run 7), VKF-16-15-Matrix-
  Übernahme + BSR-2022-Volltext (Run 8), diverse Bring-Schulden (SIA 2024/2021, SIA 382/1:2025,
  SIA 181:2020, C2:2020).

## Nebenbeobachtung (nicht Cross-KB, nur vermerkt)
`firmengruendung-ch` hat keinen Genossenschafts-Artikel (die Rechtsform-Tabelle listet sie nicht).
Interne Coverage-Lücke dieser KB, durch kunde-bopp nicht auslösbar — falls der Wissens-Chef solche
internen Lücken separat sammeln soll, wäre das ein eigener Kandidat für den firmengruendung-Loop.
