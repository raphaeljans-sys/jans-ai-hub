# KB Normen — Schema (Baunormen-Wissensbasis JANS)

## Fokus

Die **Normen-KB** macht die komplette Normen-Bibliothek auf SharePoint
(`PL - 02_Recht_Norm/02_Normen/` — SIA, VKF, DIN, VSS, RAL, Lignum) als schnell
verfügbares, **belegtes** Wissen für den JANS AI Hub nutzbar. Kernfragen:
Was sagt Norm X zu Thema Y? Welche Ausgabe ist gültig? Welche Ziffer belegt eine
Aussage in LV, Werkvertrag, Honorarofferte, Brandschutz-Factsheet?

## Architektur (3 Ebenen, Progressive Disclosure)

1. **Register** (`wiki/REGISTER.md` + `training/norm-inventar.md`): WAS existiert,
   welche Ausgabe ist gültig/ersetzt (Quelle: `ersetzte_normen.pdf` + Gesamtverzeichnis).
   Immer zuerst hier nachschauen.
2. **Destillate** (`destillate/<norm>-<jahr>.md`): je Norm die schnell lesbare
   Kurzfassung — Geltungsbereich, Kernziffern, Tabellen, Definitionen, JANS-Praxis-Transfer.
3. **Originale** (SharePoint, NIE kopieren): Verbindlichkeitsstand. Bei Detailfragen
   gezielt via Read mit `pages:` lesen; Fundstelle (Norm, Ausgabe, Ziffer) zitieren.

## Verbindliche Regeln dieser KB

- **Nie eine Ziffer/Zahl aus dem Gedächtnis zitieren** — immer Destillat oder Original
  als Quelle; sonst als offene Frage in `wiki/QUESTIONS.md`.
- **Ausgaben-Disziplin:** Jede Antwort nennt die Ausgabe (z.B. SIA 102:2020). Bei
  mehreren Ausgaben im Bestand gilt das Register; ersetzte Ausgaben nur für
  Altvertraege (z.B. SIA 118:1991 in laufenden Werkverträgen) mit Vermerk.
- **Urheberrecht:** SIA/VKF/DIN-Inhalte sind geschützt. Destillate bleiben intern
  (NAS). In Kundendokumente nur kurze Zitate mit Quellenangabe, nie Norm-Auszüge
  oder ganze Tabellen kopieren.
- **Compounding:** Jede Norm-Anfrage, deren Norm noch nicht destilliert ist, erzeugt
  das Destillat gleich mit (Antwort → `outputs/` → Destillat → Register nachführen).
- Artikel-Format, Status-Stufen, CHANGELOG-Pflicht: gemäss `wissen/WISSEN-CLAUDE.md`.

## Quellen

- SharePoint: `PL - 02_Recht_Norm/02_Normen/` (SIA_Norm/SIA_Normen/alle = 110 PDFs de,
  Sprachvarianten e/f/i, xalt = Altbestand; VKF_Norm = Brandschutznorm + Richtlinien 2015;
  DIN_Norm; VSS_Norm; RAL_Norm; Lignum aktuell leer).
- Gültigkeits-Quellen: `Gesamtverzeichnis/Gesamtverzeichnis SIA.pdf` + `ersetzte_normen.pdf`.
- Inventar/Arbeitsliste: `training/norm-inventar.md` (528 Dateien, automatisch gescannt 11.07.2026).

## Nutzer dieser KB

Skill `normen` (Router) + Rule `normen-referenz` (verpflichtet die Fach-Skills
`ausschreibung`, `werkvertrag`, `unternehmerkontrolle`, `honorarberechnung-sia102`,
`kostenschaetzung`, `brandschutz`, `terminplanung`, `wettbewerb`/`flaechen-nachweis`
auf diese KB). Nacht-Loop: Scheduled Task `normen-training-nacht` (22:00, täglich,
bis Inventar abgearbeitet), Programm in `training/PROGRAMM.md`.
