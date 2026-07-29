# Regel: Dateinamen-Konvention (Datum-Prefix)

## Hintergrund

Raphael verwendet fuer alle abgelegten Dokumente, Checklisten, Reports und Exports ein einheitliches Datums-Prefix im Dateinamen. Das erlaubt chronologische Sortierung in Finder/Explorer und macht Ablagen ueber Jahre hinweg konsistent auffindbar.

## Format

Alle Dateinamen beginnen mit einem 6-stelligen Datum im Format **XXYYZZ**:

- **XX** = Jahr (2-stellig, z.B. 26 fuer 2026)
- **YY** = Monat (2-stellig, mit fuehrender Null, z.B. 04 fuer April)
- **ZZ** = Tag (2-stellig, mit fuehrender Null, z.B. 20 fuer den 20.)

Danach ein Bindestrich, dann der sprechende Titel.

## Beispiele

Richtig:
- 260420-Todo-Pflanzplan-Stefan.docx
- 260307-Kostenschaetzung-KISPI.pdf
- 261215-Baueingabe-Thalwil.docx

Falsch:
- 20260420-Todo-Pflanzplan.docx (8-stellig, zu lang)
- 2026-04-20-Todo.docx (Bindestriche im Datum)
- Todo-Pflanzplan-260420.docx (Datum am Ende)
- 26-04-20-Todo.docx (Bindestriche im Datum)

## Ordner-Ablage (verbindlich)

Erzeugnisse werden **nie lose** abgelegt, sondern immer in einem **eigenen Unterordner**.
Der Ordner folgt demselben Benennungsprinzip wie die Dateien: **6-stelliges Datum (YYMMDD),
Bindestrich, sprechender Titel** — identisch zum Namensstamm der enthaltenen Dateien.

- Ordnername = Namensstamm der Deliverables (z.B. Ordner `260604-AfB-Fristen-Stadt-ZH/`
  enthaelt `260604-AfB-Fristen-Stadt-ZH.docx` + `.pdf` + `.md`).
- Alle Fassungen desselben Erzeugnisses (MD/DOCX/PDF) liegen zusammen in diesem Ordner.
- Gilt auch fuer Outputs aus Skills, Agenten und dem Wissens-Layer.

Richtig:
```
09_Dokumente/
  260604-AfB-Fristen-Stadt-ZH/
    260604-AfB-Fristen-Stadt-ZH.docx
    260604-AfB-Fristen-Stadt-ZH.pdf
    260604-AfB-Fristen-Stadt-ZH.md
```

Falsch: die drei Dateien lose direkt in `09_Dokumente/`.

## Gilt fuer

- Alle Dokumente in der JANS-Ablage (SharePoint, NAS, OneDrive)
- Alle von Claude generierten Exports (PDFs, DOCX, Checklisten, Reports)
- Alle Agent-Outputs im Ordner `30 JANS AI HUB OUTPUT/`

## Ausnahmen

- System-Dateien (README.md, CLAUDE.md, SKILL.md)
- Projekt-Stammordner mit Nummern-Prefix (z.B. `2414 THALWIL`)
- Dateien, die bereits eine andere Nummerierung haben und nicht von Claude umbenannt werden sollen

## Fuer Code, der Dateinamen erzeugt: NIE `toISOString()`

Ein Script, das ein Datums-Prefix bildet, muss die **lokale** Zeit verwenden. In JavaScript liefert
`new Date().toISOString().slice(0,10)` **UTC** und datiert damit jede Datei zwischen 00:00 und 02:00
CEST (bzw. 00:00–01:00 CET im Winter) **einen Tag zurueck** — genau im Nachtfenster, in dem die
Lern-Loops und Scheduled Tasks laufen. Richtig ist `new Date().toLocaleDateString("sv-SE")`
(liefert `JJJJ-MM-TT`) bzw. in bash `date "+%y%m%d"`.

Belegt am 30.07.2026 um 00:39 CEST: `geo-zh.mjs` erzeugte `Zonenplan-ZH_136_3338_2026-07-29.json`.
Der Bestandssweep fand das Muster in **acht** Scripts; die vier `planungsgrundlagen`-Connectoren
sind behoben und nachgemessen, die restlichen vier sind offen (`wissen/planungsgrundlagen/wiki/QUESTIONS.md`
E13). Dasselbe gilt fuer **fremde** Timestamps: der SZ-OEREB-Server benennt seine PDF in UTC —
wer den Servernamen als Datumsquelle uebernimmt, erbt den Fehler.

## Im Zweifel

Bei Unsicherheit: 6-stelliges Datum verwenden (YYMMDD), Bindestrich, sprechender Titel.
