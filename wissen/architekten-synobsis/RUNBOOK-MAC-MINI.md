# RUNBOOK — Mac Mini: Synobsis-Aufbereitung scharfschalten (Screenshare)

Stufe 1 (Scan/Katalog/Stichwort-Suche) laeuft bereits stationsunabhaengig.
Dieses Runbook richtet **Stufe 2 (Semantik)** + den **alternierenden Batch-Lauf**
auf dem Mac Mini ein. Reihenfolge einhalten.

## 0. Vorpruefung
```bash
ls /Volumes/daten/05_Architekten_Synobsis >/dev/null && echo "NAS ok"
cd /Volumes/daten/jans-ai-hub/wissen/architekten-synobsis
~/.venvs/pdftools/bin/python tools/synobsis_scan.py --status
```

## 1. Stufe-2-venv (Embeddings) — der lokale Kernschritt
Achtung: `torch`/`sentence-transformers` brauchen Python 3.11/3.12 (NICHT 3.14).
Passendes Python sicherstellen (z. B. `brew install python@3.12`), dann:
```bash
python3.12 -m venv ~/.venvs/synobsis
~/.venvs/synobsis/bin/pip install --upgrade pip
~/.venvs/synobsis/bin/pip install sentence-transformers numpy
# Erststart laedt das Modell intfloat/multilingual-e5-base (~1 GB) einmalig
~/.venvs/synobsis/bin/python tools/synobsis_embed.py
```
Ergebnis: `catalog/vectors.npz`. Test (numpy/sentence-transformers liegen nur im
`synobsis`-venv, NICHT im `pdftools`-venv — dort faellt die Suche sonst auf
Stichwort-Modus zurueck):
```bash
~/.venvs/synobsis/bin/python tools/synobsis_query.py --semantic "introvertierter Hof Beton Kapelle"
```

## 2. Erstdurchlauf anstossen (853 Architekten in Chargen)
```bash
bash tools/synobsis_batch.sh 25      # einmal manuell zur Kontrolle
```
Laeuft sauber? Dann automatisieren.

## 3. Alternierender Batch-Task (Mac Mini, immer-an)
Variante A — Scheduled Task in Claude (auf dem MAC MINI anlegen, da er immer-an ist):
  Prompt: "Fuehre einen Synobsis-Aufbereitungs-Lauf aus: bash
  /Volumes/daten/jans-ai-hub/wissen/architekten-synobsis/tools/synobsis_batch.sh 25 ;
  danach Stand committen+pushen (nur wissen/architekten-synobsis/). NAS muss
  gemountet sein, sonst sauber abbrechen." — Taktung z. B. alle 2 h bis
  Erstdurchlauf steht, danach woechentlich.

Variante B — launchd (rein deterministisch, ohne Claude):
  `~/Library/LaunchAgents/ch.jans.synobsis-batch.plist` mit StartInterval (z. B.
  7200 s) auf `tools/synobsis_batch.sh`. Logs nach `outputs/batch.log`.

## 4. PFLICHT: TCC / Festplattenvollzugriff (sonst stiller Fehler)
launchd-Jobs duerfen ohne FDA NICHT auf `/Volumes/daten` (bekannte Falle).
`/bin/bash` (und ggf. die Python-Binaries) in Systemeinstellungen ->
Datenschutz & Sicherheit -> Festplattenvollzugriff aufnehmen. Pruefen:
```bash
bash /Volumes/daten/jans-ai-hub/scripts/check-launchd-fda.sh 2>/dev/null || true
```

## 5. Abschluss
```bash
~/.venvs/pdftools/bin/python tools/synobsis_scan.py --status
cd /Volumes/daten/jans-ai-hub && git add wissen/architekten-synobsis && \
  git commit -m "synobsis: Stufe 2 scharf + Batch-Task" && git push github main
```
