# Trainingslauf 46 — KB Planungsgrundlagen (2026-07-14, Token-Vollgas)

Rotation gemäss Ankündigung aus Run 45: zurück zu **Kartenportale (PL-01)** + **Energie
(PL-04)**. Schwerpunkt Kartenportale: den in Run 44 begonnenen, aber offen gelassenen Rest der
amtlichen Weisung «ÖREB-Kataster Betrieb und Nachführung der Daten» V3 (S. 20-73 von 73)
vollständig abschliessen. Sechs Selbstfragen Kartenportale + eine Energie-Web-Refresh-Frage.

## Domäne 1 — Kartenportale (PL-01): K40-Rest §5.3-§5.12

Quelle: `PL - 01 Kartenportale/Grundstueckkataster/Allgemein/oereb_weisung_v3.pdf`, Seiten
20-73 (Run 44 hatte S. 1-19 bereits ausgewertet). Alle acht Themen-Detailprozesse gelesen:

- **§5.2-5.8 (kommunale/kantonale Nutzungsplanung, überkommunale Gestaltungspläne,
  Planungszonen, Quartierpläne, kommunale/kantonale Verkehrsbaulinien):** bestätigen bei sechs
  von sieben Themen das bereits dokumentierte generische 4-6-Phasen-Muster (Auftrag/Entwurf →
  Vorprüfung → Öffentliche Auflage → Festsetzung → Genehmigung → Inkraftsetzung), nur mit
  themaspezifischer Zuständigkeit — kein inhaltlicher Delta. Zwei echte Zusatzfunde:
  - **Mehrwertausgleich (MWA)** als Blocker vor der öffentlichen Auflage (kommunale
    Nutzungsplanung + überkommunale Gestaltungspläne): muss vorab geklärt werden, sonst keine
    öffentliche Auflage; separates Tool eMehrwertausgleich, Ergebnis fliesst in den
    RPV-47-Planungsbericht ein.
  - **Quartierplan als 7-Phasen-Sonderfall** (QP01-49, mit Abstand aufwendigster Prozess):
    zwei Grundeigentümerversammlungen, notarielle Prüfung der Neuordnung der Rechtsverhältnisse
    VOR Festsetzung, eigener Vermessungsplan, grundbücherlicher Vollzug nach §§161 ff. PBG —
    näher an einer Landumlegung als an einer Zonenplan-Revision.
- **§5.9 Statische Waldgrenzen:** zwei getrennte Änderungswege — Bauzonen-Erstfestsetzung
  (WG01-14, seit 2018, danach entfällt dieser Weg) vs. Rodung/Ersatzaufforstung (RE01-12, der
  einzige verbleibende Änderungsweg danach). Zentraler Fund: die Waldgrenze ändert sich erst
  mit der **ausgeführten** Rodung (Abnahmeprotokoll, ggf. Jahre nach Bewilligung), nicht mit der
  blossen Rodungsbewilligung. Kreisforstmeister (KFM) in Personalunion zuständige Stelle +
  Fachstelle.
- **§5.10 Grundwasserschutzzonen:** formal Gemeinde zuständig, Antragsteller in der Praxis meist
  Wasserversorgung/Fassungseigentümer; hydrogeologisches Gutachten zwingend; provisorische
  «Zonen S» können vor jeder öffentlichen Auflage sofort in den ÖREB-Kataster aufgenommen
  werden.
- **§5.11 Grundwasserschutzareale:** im Unterschied zur Zone ist hier das AWEL selbst
  zuständige Stelle UND Fachstelle — die Gemeinde kommt im Ablaufschema nicht vor.
- **§5.12 Kataster der belasteten Standorte (KbS):** einziges der acht Themen OHNE eigene
  Vorprüfungs-Phase. Auslöser immer ein Anlassfall (Bauvorhaben, Untersuchung, Sanierung),
  Bericht direkt an AWEL Sektion Altlasten, 30-Tage-Rechtsmittelfrist ab Verfügung an den
  Standortinhaber.

Alle Funde in `wiki/kartenportale-oereb-kataster-system-zh.md` als neue §8-§12 eingearbeitet,
Frontmatter (`sources`, `last_updated`) aktualisiert. **Die 73-seitige Weisung ist damit
vollständig ausgewertet** — der "Offen"-Abschnitt des Artikels ist geschlossen.

## Domäne 2 — Energie (PL-04): E5-Refresh MuKEn-2025-ZH-Überführung

Web-Refresh-Check (WebSearch: aeesuisse.ch, hev-zh.ch, energiehub-gebaeude.ch) zum Stand der
ZH-Umsetzung von MuKEn 2025. Ergebnis: weiterhin keine kantonsspezifische Vernehmlassung oder
Terminangabe für Zürich auffindbar — nur die allgemeine EnDK-Timeline «Umsetzung 2025-2030»
(Plenarbeschluss 29.08.2025 bestätigt). Datenstand in `energie-energienachweis-zh-formulare`
§Datenstand unverändert bestätigt, kein neuer Rechercheauftrag nötig vor konkretem Hinweis.

## Verifikations-Stufe

Alle sieben Fragen wurden gegen den real gelesenen Volltext der amtlichen Weisung (Seiten 20-73,
Original-PDF) bzw. per WebSearch an drei unabhängigen Quellen beantwortet — keine Ferndiagnose
aus dem Gedächtnis. Der Delta-Check bei §5.2-5.8 wurde explizit gegen das bereits im Artikel §4
dokumentierte generische Prozessmodell geprüft, bevor neue Abschnitte angelegt wurden.

## Register nachgeführt

- `training/curriculum.md` — fünf neue K40-Rest-Einträge (§5.3-5.8/§5.9/§5.10-5.11/§5.12) +
  E5-Refresh-Vermerk
- `wiki/QUESTIONS.md` — Sammel-Eintrag K40-Rest (Domäne A)
- `raw/_INGESTED.md` — zwei neue Zeilen (ÖREB-Weisung-Rest, Energie-Web-Refresh)
- `wiki/INDEX.md` — Artikelzeile `kartenportale-oereb-kataster-system-zh` nachgeführt
  (vollständig ausgewertet + Run-46-Zusatzfunde)
- `CHANGELOG.md` — ein neuer Eintrag oben eingefügt

## Nächste Schritte

- Kartenportale-Backlog aus dieser Quelle vollständig geschlossen — kein offener Rest mehr in
  der ÖREB-Weisung V3. Nächster Kartenportale-Turnus kann sich auf andere PL-01-Ordner
  konzentrieren (z.B. produktiven ZH-Endpunkt für Grundwasserschutzzonen-Layer testen, aus
  `kartenportale-naturgefahren-objektschutz` §8 offen).
- Energie-Refresh bleibt bei "kein konkreter Hinweis, kein neuer Check nötig" — nächster Check
  nur bei Signal einer tatsächlichen ZH-Vernehmlassung.
- Rotation: nächster Lauf zurück zu Recht & Norm (PL-02) + Brandschutz (PL-03) — dortiger
  Backlog laut Run 45 bereits weitgehend abgearbeitet (nur noch 09/10/04-Büro-CI-Vorlagen
  niedrige Priorität + optionales 51-seitiges ECO-BKP-Kompendium).
