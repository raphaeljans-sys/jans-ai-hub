# Wissensbasis: Immobilienbewertung (Verkehrswert / Marktwert)

## Was das ist

Eine kompoundierende Wissensbasis zur **Bewertung von Liegenschaften** — Verkehrswert,
Marktwert, Landwert, Ertragswert, Residualwert — ausgerichtet auf die reale
Bewertungspraxis von Raphael Jans Architekten ETH (JANS). Quelle ist die ueber Jahre
gewachsene Sammlung auf SharePoint (`IMMO - 01` bis `IMMO - 06`), insbesondere der
Wuest-Partner-Fachkurs **"Immobilien entwickeln"** (SIA inForm / Wuest Academy).

Ziel: Jede beantwortete Bewertungsfrage, jede Kursunterlage und jeder Projektfall
verdichtet sich hier zu bleibendem, verlinktem Wissen — damit zukuenftige
Bewertungsanfragen (LB / RW / MA / CS) auf der Summe aller bisherigen aufbauen.

Diese Wissensbasis ist die Faktenbasis des Skills `immobilienbewertung` und seiner
Sub-Agenten (`realwert-rechner`, `ertragswert-rechner`, `vergleichswert-analyst`).

## Fokus-Bereiche

1. **Bewertungsverfahren** — Realwert/Sachwert, Ertragswert/DCF, Vergleichswert/hedonisch,
   Residualwertmethode; Gewichtung zum Marktwert.
2. **Residualwert & Landwert** — die Kern-Methodik des Wuest-Kurses: Landwert aus der
   Entwicklung eines typischen Mehrfamilienhauses (Erloes minus Kosten minus Marge).
3. **Ertragswert / Diskontierung** — Kapitalisierung, Diskontsatz-Herleitung, Terminal
   Value, DCF ueber den Lebenszyklus.
4. **Markt- & Vergleichsdaten** — UBS Real Estate Fact Sheets, Wuest-Indizes, Bodenpreise,
   hedonische Quantile, Lageklasse 1-10.
5. **Kennwerte & Flaechen** — BKP-Baukosten je Nutzung, SIA-416-Flaechendefinitionen,
   Ausnuetzung, Kennwerte Wohnen/Healthcare/Buero.
6. **Nutzungskonzepte & Erfolgsfaktoren** — Mehrwert durch Positionierung (Serviced
   Apartments, Co-Living, Alterswohnen), Markttauglichkeit in Wettbewerben.

Der Bibliothekar nutzt diese Fokus-Bereiche, um zu priorisieren, was vertieft wird —
gesteuert durch das **Trainingsprogramm** (`training/PROGRAMM.md`).

## Bibliothekar-Rolle

Ich handle als **active librarian** (siehe `rules/wissens-bibliothekar.md`):
- Ich ingestiere, fasse zusammen, schreibe und verlinke **ohne jedes Mal zu fragen**.
- Ich protokolliere jede Aenderung in `CHANGELOG.md`.
- Ich schlage proaktiv neue Artikel und Verbindungen vor.
- Ich **pausiere und frage** vor Destruktivem (Artikel umbenennen/mergen/loeschen).
- Im Zweifel, was ich geaendert habe: das CHANGELOG ist die Wahrheit.

## KB-spezifische Schreibregeln

- **Quellenpflicht (streng):** Jeder Kennwert, Satz, Faktor oder jede Formel traegt eine
  Quelle (Kursunterlage mit Seite, IMMO-Ordner-Datei, SIA-/BKP-Norm, UBS-FS-Gemeinde mit
  Stand). Unbelegtes wird `status: speculative` markiert (verschaerft die Rule
  `identifikatoren-verifizieren.md` fuer den Fachinhalt).
- **Zahlen sind Zeitpunkt-gebunden:** Jeder Markt-/Kostenkennwert traegt seinen **Stand**
  (Monat/Jahr). Aelter als 18 Monate → im Artikel als `⚠ Aktualitaet pruefen` flaggen und
  in `wiki/wissensluecken.md` eintragen.
- **Keine Bewertungsgutachten-Fiktion:** Wir halten Methodenwissen und Kennwerte, kein
  rechtsverbindliches Schaetzungsgutachten. Heikle Annahmen (Diskontsatz, Mietzins) immer
  als Annahme kennzeichnen, nie als Tatsache.
- **Kanton/Gemeinde kennzeichnen** bei ortsspezifischen Werten (Bodenpreis, Lageklasse).
- Schweizer Hochdeutsch, echte Umlaute ae/oe/ue, kein ss-Ersatz fuer scharfes S
  (Rules `umlaute-konvention.md`, `dokument-layout-standard.md`).

## Ordner

- `raw/` — Kursunterlagen-Auszuege, Projekt-Lessons, Mail-Threads, Markt-Clips.
  Reinkippen, nicht ordnen. Grosse Quell-PDFs bleiben in den `IMMO`-SharePoint-Ordnern;
  `raw/_INGESTED.md` registriert, welche Quelle wie weit eingearbeitet ist.
- `wiki/` — kompilierte Artikel + `INDEX.md` + `wissensluecken.md`. Meine Domaene.
- `outputs/` — erzeugte Bewertungen/Briefings/Health-Checks (JJJJ-MM-TT_titel.md).
- `training/` — `PROGRAMM.md` (Lern-Loop) + `curriculum.md` (Lektionsplan aus dem Kurs).

## Quellen-Hierarchie (fuer Verlaesslichkeit)

1. Anerkannte Methodik (Wuest-Kurs "Immobilien entwickeln", SIA-Normen 416/2024, IAZI/IVS)
2. Aktuelle Marktdaten (UBS Fact Sheets, Wuest-Indizes, BFS Baupreisindex — mit Stand)
3. BKP-Baukosten-Kennwerte (CRB eBKP-H, werk-material, buerointerne Auswertungen)
4. Eigene JANS-Projektfaelle (`IMMO - 01 Projekte`, mit Kuerzel LB/RW/MA/CS/TDD)
5. Web-Recherche (nur wenn 1-4 luecken; Stand und Quelle notieren)

## Verwandte Skills (nicht duplizieren, sondern andocken)

- `kostenschaetzung` — BKP-Baukosten (liefert den Gebaeude-/Neuwert-Teil).
- `machbarkeit` — Baufeld/Volumen + wirtschaftliche Potenzialstudie (Residualwert als
  Vorstufe; teilt die Methodik dieser KB).
- `ankaufspruefung` — TDD/Zustand (liefert Sanierungsstau in die Realwert-Minderung).
- `stockwerkeigentum` — Wertquoten (nutzt dieselbe Flaechen-/Wertlogik).
- `baurecht` — Zone/Ausnuetzung (begrenzt das bewertbare Volumen).
