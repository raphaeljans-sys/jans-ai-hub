# PROGRAMM — Architekten-Synobsis alternierender Aufbereitungs-Lauf

Verbindlicher Ablauf je Lauf (laeuft auf dem Mac Mini, unbeaufsichtigt).

Voraussetzung: NAS gemountet (`/Volumes/daten`). Wenn nicht erreichbar:
sauber abbrechen und melden, nichts schreiben.

1. Lauf starten: `bash /Volumes/daten/jans-ai-hub/wissen/architekten-synobsis/tools/synobsis_batch.sh 25`
   - Stufe 1: naechste 25 noch nicht verarbeiteten Architekten scannen
     (Taxonomie, Inventar, Text aus PDF/DOCX) -> Katalog + documents.jsonl.
   - Stufe 2: Vektorindex neu bauen (falls venv `~/.venvs/synobsis` vorhanden).
2. Fortschritt steht in `state/processed.json`; Protokoll in `outputs/batch.log`.
3. Wenn alle 853 verarbeitet sind, meldet der Scan "nichts zu tun" — danach dient
   der Lauf der Aktualisierung (geaenderte/neue Architekten via `--reindex` bei Bedarf).
4. Sichern: NAS-Repo committen+pushen gemaess Rule `sync-kanonische-quelle.md`
   (NUR `wissen/architekten-synobsis/`; die Quelle `05_Architekten_Synobsis`
   liegt ausserhalb des Repo und wird nie committet).

## Chargengroesse
Standard 25/Lauf. Einzelne Ordner (z. B. Sammelordner "1 Selection") sind sehr
gross -> Laufzeit schwankt. Bei Bedarf kleiner takten oder Frequenz erhoehen.

## Taktung (Vorschlag)
Mehrmals taeglich, bis der Erstdurchlauf (853 Architekten) steht; danach
woechentliche Aktualisierung. Konkrete Einrichtung: `RUNBOOK-MAC-MINI.md`.
