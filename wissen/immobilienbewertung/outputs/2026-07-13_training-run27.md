# Training-Run 27 — KB Immobilienbewertung (2026-07-13)

**Typ:** produktiver D6-Ausbau (erster echt neuer Erkenntnisgewinn seit Run 24) via
Multi-Agent-Workflow. **Takt:** Intensivphase (Rule 260712), Workflow-Parallelisierung
autorisiert (Rule 260712c, PROGRAMM.md).

## Ausgangslage

Die KB ist inhaltlich weitgehend fertig: Wuest-Kurs + E1–E10 vollständig, alle T-Aufgaben
und D4/D8 geschlossen. Runs 18–23 waren reine Verifikations-Bestätigungen ohne materiellen
Befund; Runs 24–26 haben die einzige noch selbst-schliessbare Ader angezapft — **D6
(Dichte-Kennwerte je Gemeinde aus amtlicher BZO)**. Alle 10 UBS-FS-Gemeinden waren erfasst,
aber mehrere JANS-Bezugsmärkte mit realem Bewertungsfall fehlten noch.

## Gewählte 10 Themen dieses Laufs

1.–8. **BZO-Dichtemasse-Extraktion** (Workflow-Fan-out, je 1 Agent):
   Niederhasli · Oberrieden · Kilchberg · Horgen · Küsnacht · Meilen · Adliswil · Richterswil.
9. **Marktpuls (E7)** — Web-Check der Zins-/Preis-Anker gegen Run 26.
10. **Neuer JANS-Bewertungsfall** — Prüfung des Bewertungsordners.

## Was gelernt / geändert

### D6 — 8 neue Gemeinden (alle belegt, 0 Fehler)

Multi-Agent-Workflow mit 8 parallelen Extraktions-Agenten; jeder zog die amtliche BZO
(Gemeindeseite bzw. kantonaler OEREB-Speicher `oerebdocs.zh.ch`), extrahierte die
Wohnzonen-Grundmasse per `pdftotext -layout` und meldete strikt belegt. Alle 8
`obtainable=true`. Eingearbeitet in [[az-gfz-kennwerte]] mit voller Tabelle + Quelle
(Artikel + URL) je Gemeinde:

| Gemeinde | Kennziffer | Quelle-Stand | Bemerkung |
|---|---|---|---|
| Niederhasli (8155) | **keine** (Hülle) | BZO 2024, in Kraft 08.08.2025 (IVHB) | CS-Bewertungsfall Seestrasse 64 |
| Oberrieden (8942) | AZ | BZO 2013, Stand 26.01.2026 (IVHB-TR) | Machbarkeits-Studio-Markt |
| Kilchberg (8802) | BMZ | BZO 2012/14/15 | Emilienheim/Healthcare |
| Horgen (8810) | BMZ (Zonencode) | BZO 2011/16, TR 2021/23 | Alt-Messweise, keine VG |
| Küsnacht (8700) | BMZ | Stand Juli 2019 | 7 W2-Stufen 1.00–1.75, wie Zollikon |
| Meilen (8706) | BMZ | BZO 2020, in Kraft 01.05.2025 (IVHB) | Goldküste |
| Adliswil (8134) | AZ | BZO 1995, Stand Juni 2024 | ZW bis 110 %/5 VG; Nachbar Langnau |
| Richterswil (8805) | AZ | Stand 18.08.2023 | Zonencode = AZ; Hanglagen-Zuschlag |

D6 deckt damit **19 Gemeinden** ab: 9 AZ, 6 BMZ, 1 ÜZ-System (Luzern), **1 keine-Kennziffer/
Hülle** (Niederhasli); 1 in Revision (Langnau). Alle 10 UBS-FS-Gemeinden + alle Gemeinden mit
realem JANS-Bewertungsfall sind jetzt erfasst.

### Zwei materielle Befunde

1. **Vierte Steuerungslogik (Niederhasli).** Die IVHB-Totalrevision 2024 hat die klassischen
   Dichte-Kennziffern in den Wohnzonen **ganz abgeschafft** — kein AZ, kein BMZ, kein ÜZ. Die
   zulässige Dichte ergibt sich rein geometrisch aus der Gebäudehülle (Fassadenhöhe + Länge/
   Breite) plus der Grünflächenziffer (min. 20 %). Für die Bewertung/Machbarkeit heisst das:
   das Volumen ist **aus der Hüllgeometrie zu rechnen**, nicht aus Ziffer × Landfläche.
   Klassische BMZ/ÜZ existieren dort nur noch in den Gewerbe-/Industriezonen. Die
   Bezugsgrössen-Systematik im Artikel wurde von drei auf vier Modi erweitert. Wichtig:
   Meilen und Oberrieden sind ebenfalls IVHB-umgestellt, behalten aber ihre Kennziffer (BMZ
   bzw. AZ) — die Kennziffer-Abschaffung ist ein Gestaltungsentscheid der Gemeinde, keine
   zwingende IVHB-Folge.

2. **Oberrieden-Höhenkorrektur (Flag an Raphael).** Amtlich gilt für die Oberriedner W2:
   **traufseitige Fassadenhöhe 8.5 m**, giebelseitig 13.0 m, Flachdach-Fassadenhöhe 9.0 m
   (Gesamthöhe Flachdach 12.3 m). Eine frühe interne JANS-Notiz — Grundlage des
   illustrativen Beispiels in Rule `auto-verbesserungen` 260624 («z.B. W2 Oberrieden: 9.0 m
   traufseitig») — verwechselt die Flachdach- mit der Trauf-Höhe. **Empfehlung:** das
   Beispiel in Rule 260624 auf 8.5 m traufseitig korrigieren. (Der Kern der Rule —
   Volumenstudien auf das maximal zulässige Volumen auslegen — bleibt unberührt; nur die
   Beispielzahl ist falsch. Nicht eigenmächtig editiert, da ausserhalb des KB-Scopes.)

### Marktpuls (E7) + neuer Fall

- **Marktpuls unverändert** (Web-Check 2026-07-13, gleicher Tag wie Run 26): SNB-Leitzins
  0.00 % (seit 19.06.2026), Referenzzinssatz Mietwohnungen 1.25 % (seit 02.09.2025, nächste
  Publikation 01.09.2026). Kein neuer Wert → kein Edit an [[investorenmarkt-makro]].
- **Kein neuer JANS-Bewertungsfall.** Bewertungsordner geprüft; jüngster bleibt Wangen 8855.
  Der Niederhasli-CS-Fall (Seestrasse 64, 2025) ist bereits erfasst.

## Register gepflegt

[[az-gfz-kennwerte]] (Frontmatter-Quellen +8, Bezugsgrössen-Tabelle 3→4 Modi, 8 neue
Gemeinde-Sektionen, Abschluss-Bilanz), INDEX, wissensluecken (D6-Zeile + Section-B +
Erledigt-Block), _INGESTED (externe amtliche Quellen), curriculum (Stand Run 27), CHANGELOG.

## Verifikations-Notiz (Status)

Die 8 Extraktionen stammen je aus der **amtlichen Primärquelle** (die BZO ist selbst die
Gold-Quelle, Modell D). Sie sind aber Einzel-Agent-Extraktionen ohne unabhängige
Zweitlesung. Der Artikel bleibt daher `emerging` (nicht `established`) — eine
Status-Hebung würde die Verifikations-Pflicht (2. unabhängige Lesung) je Gemeinde
verlangen; das ist Kandidat für einen künftigen Verifikations-Lauf.

## Was als Nächstes

- **Flag umsetzen:** Raphael über die Oberrieden-Korrektur in Rule 260624 informieren.
- **Optionaler Verifikations-Lauf:** die 8 neuen Tabellen per Zweitlesung gegenprüfen →
  dann `az-gfz-kennwerte` auf `established` heben.
- **Weitere Gemeinden** nur noch bei konkretem Studienbedarf (die Methode — Workflow-Fan-out,
  1 Agent je amtliche BZO — ist etabliert und beliebig skalierbar).
- Sonst fällt die KB in den Marktpuls-/Bewertungsfall-Beobachtungsmodus zurück; **Rücktaktung
  ins Nachtfenster** bleibt sinnvoll, sobald die JANS-relevanten Gemeinden abgedeckt sind
  (nächste externe Signale ab 01.09.2026: Referenzzins, SREBI Q2).

## Kernlektion

Die in Run 23 als «Grossrecherche nötig, nicht in einem Trainingslauf leistbar» abgetane
D6-Ader liess sich per **Workflow-Fan-out** (ein Agent je Gemeinde, ein amtlicher
BZO-Fetch) in einem Lauf batchweise schliessen — 8 Gemeinden, 0 Fehler, ~4 Min. Diese
Methode ist die Vorlage für künftige belegpflichtige Batch-Extraktionen in allen KBs.
