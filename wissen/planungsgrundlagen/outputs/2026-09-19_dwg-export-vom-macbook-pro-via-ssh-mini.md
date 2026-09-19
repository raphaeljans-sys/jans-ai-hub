---
title: DWG-Export vom MacBook Pro ohne lokales LibreDWG (ssh mini + dxf2dwg)
date: 2026-09-19
status: established
sources:
  - Folgeauftrag zum Bestandesplan-Scan-Fall (Ansichten Nord/West als DWG), 19.09.2026
  - `skills/pdf2dwg/SKILL.md` (Grenzen-Abschnitt, ergaenzt)
---

# DWG-Export vom MacBook Pro ohne lokales LibreDWG

Ergaenzung zu `2026-09-19_bestandesplan-scan-zu-verkaufsgrundriss.md`: der Folgeauftrag
verlangte echte `.dwg`-Dateien für zwei neu gezeichnete Ansichten. LibreDWG (`dxf2dwg`) und
das venv `~/.venvs/pdf2dwg` gibt es laut `skills/pdf2dwg/SKILL.md` nur auf dem Mac Mini — auf
dem MacBook Pro fehlt das Werkzeug. Der Weg dorthin ist trotzdem kurz:

1. **DXF lokal erzeugen** — ezdxf ist NICHT nur im venv `~/.venvs/pdf2dwg` verfügbar,
   sondern auch in `~/.venvs/volumen3d` (auf dem MacBook Pro vorhanden). Ein eigenständiges
   DXF (HEADER/TABLES/ENTITIES über `ezdxf.new("R2000")`) schreiben, keine Abhängigkeit vom
   fehlenden Werkzeug.
2. **DXF zum Mac Mini** — `scp datei.dxf mini:/tmp/…` (derselbe SSH-Schlüssel-Zugang wie
   `ssh mini`, kein Zusatzschritt).
3. **Wandeln auf dem Mac Mini** — `/opt/homebrew/bin/dxf2dwg -y --as r2000 datei.dxf`. Der
   volle Pfad ist Pflicht: `dxf2dwg`/`dwg2dxf`/`dwgread` liegen unter Homebrew, das aber im
   **nicht-interaktiven** `ssh`-PATH fehlt (`echo $PATH` liefert nur `/usr/bin:/bin:/usr/sbin:/sbin`).
   Gleiche Familie wie Rule `auto-verbesserungen` 260917b (dort für `brew` selbst notiert,
   gilt sinngemäss für jedes Homebrew-Binary in einem `ssh mini '<befehl>'`-Aufruf).
4. **OBJECTS-Sektion vor der Wandlung entfernen** — wie im Skill für den ArchiCAD-Fall
   dokumentiert (korrupte MATERIAL-/MLEADERSTYLE-Objekte aus dem ezdxf-Standardschema).
   Ergebnis bestätigt: **auch nach dem Strip bleiben einige `MATERIAL`-Warnungen** (die
   CLASSES-Sektion deklariert die Klasse weiterhin, auch ohne Instanzen; ein
   `DIMSTYLE`-Eintrag "Standard" referenziert weiterhin einen Material-Handle) — das deckt
   sich mit der im Skill genannten Erfahrung «47 → 1 dwgread-Fehler»: **nicht restlos
   warnungsfrei, aber `dwgread` endet mit `SUCCESS`**, und das ist das dokumentierte
   Abnahmekriterium.
5. **DWG zurückholen** — `scp mini:/tmp/…/datei.dwg .`, danach den `/tmp`-Ordner auf dem
   Mac Mini wieder aufräumen (kein Datenrückstand auf der Fremdstation).
6. **Verifikation ohne LibreDWG auf dem MacBook Pro** — `head -c6 datei.dwg` zeigt die
   Version (`AC1015` = AutoCAD 2000, passend zu `--as r2000`); ein Roundtrip
   (`dwg2dxf` auf dem Mac Mini, dann die Entity-Zahl im Modellbereich zählen) bestätigt, dass
   die Geometrie ankam, bevor die Datei ausgeliefert wird.

## Warum das eine eigene Notiz verdient

Der Skill-Grenzen-Abschnitt nannte bisher nur die Sackgasse («LibreDWG gibt es nur auf dem
Mac Mini») ohne den Anschlussweg zu benennen. Für eine Aufgabe, die auf dem MacBook Pro
beginnt (wie hier), ist der native `ssh mini`-Kanal (laut `CLAUDE.md`
Remote-Orchestrierungs-Tabelle: «direkt `ssh mini '<befehl>'`, sofort») schneller als ein
Sync-Task und braucht keine Freigabe-Schwelle, weil er weder schreibend ins NAS-Repo noch in
eine der fünf heiklen Klassen aus `interaktive-eingriffe.md` eingreift — reine
Werkzeug-Nutzung auf einer bereits erreichbaren Station.

## Verallgemeinerbar

Jede DWG-Erzeugung vom MacBook Pro aus kann diesen Weg nehmen, nicht nur PDF-Pläne über den
Skill `pdf2dwg`: eigenes DXF (ezdxf, egal aus welchem venv) → `scp` → `dxf2dwg` mit vollem
Pfad → `scp` zurück. Der Skill selbst bleibt für PDF-Plot-Bereinigung (Schraffur-Striche,
Duplikate) zuständig; diese Notiz deckt den Fall ab, in dem die Geometrie bereits als
saubere Python-Zeichnung vorliegt und nur noch das Zielformat fehlt.
