# tools/ — Generator Plan-/Dokumentenliste

## build_auflagenliste.py

Erzeugt die **XLSX-Trackingliste** der Auflagebereinigung (JANS-Layout: Cambria,
neutral/schwarz, gruppiert nach Planer, Autofilter, Freeze Panes, Legenden).

Die Datei ist eine **anpassbare Vorlage** — die mitgelieferte Version ist mit den
Daten des Goldstandard-Falls 2619-KISPI (Lenggstrasse 30) befüllt.

### Pro neuem Projekt anpassen
1. `PLANER` + `ORDER` — Gewerk-Kürzel aus der Projekt-Adressliste.
2. `ROWS` — je Planer die Deliverables `(dokument, auflagepunkt, fuer_amt, frist)`
   aus dem Output von `planer-zuteiler` + `amts-fristen-zuordner`.
3. Titelblock (`subs`) — Projektnr., Objekt, Adresse, Entscheid-Referenz, Stand.
4. Ausgabepfade `OUT_PROJEKT`, `OUT_HUB`, `FNAME` (Datums-Prefix YYMMDD).

### Ausführen
```bash
python3 tools/build_auflagenliste.py
```
Benötigt `openpyxl` (`pip install openpyxl`). Speichert doppelt (Projekt + AI-Hub-Output).

### Spalten
`Nr. · Planer · Plan-/Dokument · Auflagepunkt · für Amt · Frist · Status`
(Status-Default «offen»). Werte/Legenden siehe `wissen/auflagebereinigung/wiki/vorgehen-auflagebereinigung.md`.
