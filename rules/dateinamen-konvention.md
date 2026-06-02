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

## Gilt fuer

- Alle Dokumente in der JANS-Ablage (SharePoint, NAS, OneDrive)
- Alle von Claude generierten Exports (PDFs, DOCX, Checklisten, Reports)
- Alle Agent-Outputs im Ordner `30 JANS AI HUB OUTPUT/`

## Ausnahmen

- System-Dateien (README.md, CLAUDE.md, SKILL.md)
- Projekt-Stammordner mit Nummern-Prefix (z.B. `2414 THALWIL`)
- Dateien, die bereits eine andere Nummerierung haben und nicht von Claude umbenannt werden sollen

## Im Zweifel

Bei Unsicherheit: 6-stelliges Datum verwenden (YYMMDD), Bindestrich, sprechender Titel.
