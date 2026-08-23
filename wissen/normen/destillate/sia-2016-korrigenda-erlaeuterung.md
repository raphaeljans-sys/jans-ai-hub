---
quelle: "shop.sia.ch/normenwerk/architekt/2016_2012_d/D/Product — zwei kostenlose Anhänge (Preisgruppe 0): 'Erläuterung' (gemeinsam mit SIA 2015, UUID 1ea3ba6a-cdaa-41a6-bf95-7c02ffc344e8) und 'Korrigenda C1' (UUID ab00f92d-c1ce-4f9e-b459-4801c6f0d760); Basis-Merkblatt SIA 2016:2012 selbst kostenpflichtig und NICHT im Haus"
herausgeber: "Schweizerischer Ingenieur- und Architektenverein (SIA), Zürich"
ausgabe: "Erläuterung zu SIA 2015:2012/SIA 2016:2012 (Copyright 2018, 3 S.); Korrigenda SIA 2016-C1:2018, gültig ab 01.11.2018, 5 Seiten"
ersetzt: "erläutert bzw. korrigiert das Merkblatt SIA 2016:2012 «Datenmodelle zu Ver- und Entsorgungsleitungen» (Basistext selbst nicht im Haus, Beschaffung Bring-Schuld Raphael); Merkblatt selbst archiviert seit 31.07.2025, ersetzt durch SIA 405:2025 (GEO405-Konsolidierung, siehe Register-Zeile SIA 405, N-SIASWEEP-4 geschlossen)"
gelesen: "beide vollständig, 3 + 5 Seiten, direkte PDF-Downloads (Preisgruppe 0, kein Kauf nötig) und `pdftotext -layout`"
datenstand: "Erläuterung Copyright 2018 (kein eigenes Gültig-ab-Datum); Korrigenda C1 genehmigt 23.10.2018, gültig ab 01.11.2018"
status: established
last_updated: 2026-08-23
verifikation: "Direktlektüre beider Original-PDFs (Modell D), vollständig vom Herausgeber-Shop geladen (kostenloser Download). Keine separate Refuter-Runde; kleine, klar strukturierte Fach-/Korrekturdokumente."
links: [[REGISTER]]
---

# SIA 2016 — Erläuterung (mit SIA 2015) und Korrigenda C1:2018

## Das Wichtigste in 3 Sätzen

Zwei kostenlose Zusatzdokumente zum GEO405-Merkblatt SIA 2016:2012 «Datenmodelle zu Ver-
und Entsorgungsleitungen»: eine gemeinsame Erläuterung mit SIA 2015 (2018) zu
Datenaustausch-Details (Strukturattribut «Eigenschaft», XTF-Beispieldatei; Abwassermodell
verweist auf VSA-DSS-Richtlinien) sowie die Korrigenda C1:2018 (gültig ab 01.11.2018) mit
drei technischen Nachträgen zur SIA405/INTERLIS-Modellbenennung und zum Elektrizitäts-
Modell. Beide Dokumente betreffen ein bereits archiviertes Merkblatt (seit 31.07.2025 durch
SIA 405:2025 abgelöst, N-SIASWEEP-4 bereits geschlossen) — die praktische Relevanz für
laufende JANS-Projekte ist damit gering, die inhaltliche Vollständigkeit der KB steigt aber.

## Erläuterung (2018) — Kerninhalt

- **Strukturattribut «Eigenschaft» (SIA 2015, Kap. 2.2.5):** zusätzliche Sachinformationen
  zu Leitungsobjekten (z.B. «Funktion» bei Wasserleitungen) werden über ein generisches
  Attributpaar Bezeichnung/Wert transportiert und im XTF-Format als
  `<SIA405_LKMap.SIA405_LKMap.Eigenschaften>`-Block mit `<Bezeichnung>`/`<Wert>` abgebildet
  (vollständiges XTF-Beispiel im Original enthalten).
  - Wichtig ist die Pflichtattribut-Regel: Objektart, Medium, Wertebereich und Eigenschaft
    müssen zwingend übergeben werden.
- **Abwassermodell (SIA 2016, Kap. 2.3.2):** für die Unterscheidung Primärer (PAA) vs.
  Sekundärer (SAA) Abwasserleitungen und die Frage, wann Haltungen unterbrochen werden,
  verweist die Erläuterung auf die VSA-Richtlinien Datenstruktur Siedlungsentwässerung
  (VSA-DSS) und die Wegleitung GEP-Daten des VSA (nicht in dieser KB).

## Korrigenda C1:2018 — Kerninhalt (mit Fundstelle)

- **Ziff. 3.2.2.6 (S. 16):** Modellbenennung bei Geo405/INTERLIS erweitert — neu
  `SIA405_<Medium>_<Erstellungsjahr>` statt nur `SIA405_<Medium>` (Beispiel:
  `SIA405_Wasser_2015`); bei Fehlerkorrekturen zusätzlich `-JJJJMMDD`-Suffix
  (`SIA405_Wasser_2015-20170922`), der `MODEL`-Name bleibt dabei unverändert.
- **Ziff. 2.3.6 (S. 13):** Modelldatei Elektrizität neu als Teilmenge von `vsestrom.ili`
  definiert, ohne topologische Informationen — die Vorgängerversion 2012 sei «in der Praxis
  nicht implementierbar» gewesen (Originalwortlaut).

## JANS-Praxis-Transfer

- Gering: GEO405-Leitungskataster-Datenmodelle sind kein aktiver JANS-Arbeitsbereich; das
  Merkblatt ist zudem bereits abgelöst. Relevanz nur bei künftiger Beteiligung an
  Leitungskataster-Datenlieferungen an Werke/Gemeinden.

## Nicht geleistet / Grenzen dieses Destillats

- Das Basis-Merkblatt SIA 2016:2012 selbst (Hauptkapitel, vollständige Datenmodelle) bleibt
  nicht im Haus.
- Kein Abgleich, ob die Erläuterung/Korrigenda-Inhalte bereits vollständig in die
  Nachfolgenorm SIA 405:2025 übernommen wurden — Basistext von SIA 405:2025 selbst
  ebenfalls nicht im Haus (nur das Frontmatter/die Ersetzt-Klausel, `sia-405-2025-vorwort.md`).

## Nachgeführte Register-Punkte

- `wiki/REGISTER.md`, Zeile SIA 2016: Erläuterung + Korrigenda-Fund ergänzt.
- `destillate/INDEX.md`: neue Zeile.
