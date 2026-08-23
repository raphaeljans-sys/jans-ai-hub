---
titel: QUESTIONS-Nachlauf, neunte interaktive Fortsetzung (Run 154)
datum: 2026-08-23
---

# QUESTIONS-Nachlauf — neunte Fortsetzung (Run 154)

## Auftrag
Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand,
danach in die Wiki-Artikel einarbeiten. CHANGELOG und letzten Lauf-Report zuerst lesen, dort
weitermachen, wo Run 153 aufgehört hat.

## Vorgehen
1. CHANGELOG-Kopf und die letzten neun Lauf-Abschnitte in `wiki/QUESTIONS.md` gelesen (Run
   148-153, alle vom 21.-23.08.2026).
2. Statt Run 152/153s Schluss («Bestand für reine Recherche erschöpft») zu übernehmen: **jede**
   verbliebene `- [ ]`/`- [~]`-Zeile der Datei einzeln per `grep` isoliert und im Kontext
   gelesen (nicht nur die Zusammenfassungen der Vorläufer-Runs).
3. Für jede Zeile geprüft: bereits an späterer Stelle geschlossen (typisches Muster dieser KB:
   «Ursprünglicher Wortlaut» bleibt unchecked stehen, die Lösung steht oberhalb mit `[x]`)?
   Blockiert durch Entscheid Raphaels, Dateifreigabe oder bewusste Zurückstellung? Oder
   tatsächlich offen und ohne Blocker recherchierbar?

## Befund
Von 17 verbliebenen `- [ ]`/`- [~]`-Zeilen war **eine einzige** tatsächlich offen und ohne
Blocker lösbar: **E12**, «Solarsplitvertrag/ZEV-Vertragsmodell rechtlich vertiefen» (Zeile 455,
Abschnitt «Inhaltliche Lücken», offen seit 13.07.2026).

Alle anderen 16 Zeilen fielen in eine von drei Kategorien:
- **Entscheid Raphaels nötig** (5): E103, E94, E-S1, E-R148-1, E-R148-2.
- **Extern blockiert** (1): E-R149-4 (Dateifreigabe ausserhalb Session-Rechten).
- **Bewusste Merkposten / bereits andernorts geschlossen** (11): E-R134-3, E-R129-5, E-WC32-1,
  zwei Fernwärme-kW-Zeilen (Run 84/96 gelöst), E-R134-4 (Run 151 gelöst), E-R150-3, E-R132-4
  (Teilbefund, dokumentiert), sowie drei weitere bereits mit `[x]`/`✓`-Nachtrag versehene
  Zeilen, die nur aus Nachvollziehbarkeitsgründen im ursprünglichen Wortlaut stehen geblieben
  sind.

## E12 — Recherche und Ergebnis
Vier unabhängige Web-Quellen geprüft (WebSearch + WebFetch): stromwerk.ch (Blogartikel «Eigenverbrauch
mit ZEV, vZEV und EVG»), ews-energie.ch (Produktseite EVG/LEG/ZEV), energie-experten.ch
(Fachartikel vZEV/LEG), ewz.ch (Produktteaser ewz.solarsplit, Volltext nicht zugänglich). Eine
gezielte Suche nach einer amtlichen Primärquelle (EnG/EnV-Artikel, der «EVG» legaldefiniert)
blieb erfolglos — der Begriff kommt im Gesetzestext nicht vor.

**Kernaussage, durch alle vier Quellen übereinstimmend gestützt:** «EVG»/«Solarsplit» ist ein
kommerzielles Vollservice-Produkt einzelner Verteilnetzbetreiber, technisch identisch mit einem
**vZEV**, administrativ vereinfacht (Netzbetreiber übernimmt Messung/Abrechnung/Auszahlung,
Teilnehmer bleiben VNB-Kunde). Es gilt dieselbe Grenze wie beim vZEV: **gemeinsamer
Netzanschlusspunkt** vorausgesetzt — für ein Mehrgebäude-Areal mit getrennten Hausanschlüssen
ungeeignet, dort sind klassischer ZEV (private Verkabelung) oder ab 1.1.2026 die LEG die
richtigen Instrumente.

Das schliesst die im Praxisbeispiel `[[werkhof29-zirkulaeres-bauen-stroh-lehm]]` offen gelassene
Frage nach dem «obligatorischen Solarsplitvertrag» plausibel ein — mit der ausdrücklichen
Einschränkung, dass das Dossier selbst keine Vertragsdetails nennt und die Einordnung damit eine
plausible Zuordnung anhand der Beschreibung bleibt, kein Beleg am Vertrag selbst.

## Neue/geänderte Artefakte
- **Neu:** `destillate/evg-eigenverbrauchsgemeinschaft-solarsplit.md` (`emerging`, Web-Sekundärquellen,
  Einschränkungen im Artikel selbst benannt).
- **Neu:** FAQ **F256** in `wiki/BAUHERREN-FAQ.md`.
- **Ergänzt:** `destillate/werkhof29-zirkulaeres-bauen-stroh-lehm.md` (offener Punkt geschlossen,
  Stroh-Bemessungswert-Verweis nachgetragen), `destillate/zev-eigenverbrauch-mfh-her-2025.md` und
  `destillate/leg-lokale-elektrizitaetsgemeinschaft-2026.md` (je ein Backlink).
- **Register:** `destillate/INDEX.md` (+1 Zeile), `wiki/QUESTIONS.md` (E12 auf `[x]`, neuer
  Run-154-Abschnitt), `CHANGELOG.md` (dieser Eintrag).

## Für den nächsten Lauf
Der Bestand an reinen, ohne Raphaels Entscheid oder externe Freigabe lösbaren Recherche-
aufträgen ist nach zwei unabhängigen zeilenweisen Prüfungen in Folge (Run 152 und dieser Lauf)
auf null. Sinnvolle nächste Schritte: eine der oben gelisteten Raphael-Entscheidungen einholen,
oder — falls PL-02/PL-04 weiterhin ohne neue Datei bleiben — ein neues Themenfeld per freier
Wahl erschliessen (Muster Run 96 ff.).
