# Batch-Lauf 2026-07-20 — architekten-synobsis

Scheduled Task `synobsis-batch-nacht`, Mac Mini (Macmini.local). **Nachgeholter Lauf am Tag**
(11:53), nicht im vorgesehenen Nachtfenster 22:00–06:00: der planmaessige Nachtlauf ist an der
NAS-Erreichbarkeit gescheitert und wurde von Raphael manuell nachgestossen (siehe unten).

## Voraussetzungen
- Host-Weiche: `Macmini.local` (enthaelt "Macmini") — erfuellt.
- NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` und `/Volumes/daten/jans-ai-hub`
  erreichbar — beim **zweiten** Anlauf erfuellt.

## Vorgeschichte: abgebrochener Nachtlauf
Der erste Anlauf desselben Tages brach an Voraussetzung 2 ab. Befund damals:
- `/Volumes/daten` nicht gemountet (nur `Macintosh HD`).
- Ping NAS LAN `192.168.1.10`, NAS Tailscale `100.92.246.28` und Gateway `192.168.1.1`
  je 100 % Paketverlust.
- Default-Route: **gateway 192.168.53.1**, interface `en1` — der Mac Mini hing nicht im
  Buero-LAN `192.168.1.0/24`, sondern in einem Fremdnetz `192.168.53.0/24`; Tailscale-CLI
  meldete einen Startfehler (`Tailscale.CLIError error 1`).
- Gemaess Auftrag wurde nichts erzwungen, kein Mount-Versuch, kein Teil-Lauf.
Nach Wiederherstellung der Netzanbindung durch Raphael lief der Task ohne Rueckstand durch.

## Lauf
- Start 11:53:22, Ende 11:53:48 (+0200), Dauer 26 s.
- Charge 25.
- **Stufe 1 (Scan/Katalog):** nichts zu tun — 853/853 verarbeitet, offen 0. Kein neuer Stoff
  seit 2026-07-02 (18 Tage).
- **Stufe 2 (Embeddings):** venv `~/.venvs/synobsis` vorhanden, Vektorindex neu geschrieben
  `catalog/vectors.npz` (853 × 768, Modell `intfloat/multilingual-e5-base`). Deterministisch
  → kein inhaltlicher Diff.
- **Stufe 3 (Kuratierung):** entfaellt, keine neuen Eintraege.

## Fortschritt
- Architekten gesamt: 853
- verarbeitet: 853 (100 %)
- offen: 0
- Katalog-Stand: 2026-07-02T22:52:26 (unveraendert)

## Funktionspruefung
Semantische Suche stichprobenweise gegen den frisch geschriebenen Index geprueft:
`--semantic "introvertierter Hof Beton Kapelle"` liefert plausibel gerankte Treffer
(0.85 Sauerbruch Hotton, 0.85 Soeder, 0.85 Capponi, 0.84 Gaertner …). Stufe 2 ist scharf.

## Gegen-Verifikation der Quelle
Unabhaengig vom Scan geprueft, ob wirklich kein Rohmaterial dazugekommen ist:
- Quelle zeigt unveraendert 854 Top-Level-Verzeichnisse = 853 Architekten + `00_Organisation`
  (kein Architekt) — deckungsgleich mit dem Katalog, kein Rueckstand.
- Juengste Aenderungen von Architekten-Ordnern unveraendert gegenueber dem Vortag: `HdM`
  (07.04.2026), `Ilg Santer Architekten` (25.03.2026), `MPP` (17.11.2025). Seit dem
  Katalog-Stand (02.07.2026) ist in der Quelle nichts Neues angelegt worden.

## Repo-Aenderung
- Nur Zeitstempel: `catalog/INDEX.md` (Stand-Zeile) und `catalog/cad-index.json`
  (`stand`-Feld), je 1 Zeile (`git diff --stat`: 2 files changed, 2 insertions, 2 deletions).
  `vectors.npz` deterministisch ohne inhaltlichen Diff.

## Auffaelligkeiten / Empfehlung
- **Endbedingung erreicht — Empfehlung zum achten Mal in Folge: den Loop stilllegen.**
  Dies ist der **18. ergebnislose Lauf** seit dem 13.07.2026. Jeder dieser Laeufe hat
  ausschliesslich zwei Zeitstempel-Zeilen produziert. Regel 260712b: «Abgeschlossene Inventare
  (Endbedingung erreicht) werden ganz beendet statt gedrosselt.» Der Entscheid liegt bei
  Raphael — eine Konfigurationsaenderung am Scheduled Task ist vom Task-Auftrag nicht gedeckt
  und wurde deshalb auch heute nicht selbst vorgenommen. **Konkret zu tun: Scheduled Task
  `synobsis-batch-nacht` loeschen oder pausieren.**
- Der heutige Netz-Zwischenfall stuetzt die Empfehlung zusaetzlich: ein Loop ohne Ertrag
  erzeugt bei jeder Stoerung Diagnose- und Nachfass-Aufwand, dem kein Nutzen gegenuebersteht.
- Unabhaengig davon empfehlenswert: klaeren, warum der Mac Mini zeitweise im Netz
  `192.168.53.0/24` haengt und Tailscale nicht startet — das betrifft alle Always-On-Ketten
  auf dieser Station, nicht nur diesen Task.
- Wieder-Anlass fuer einen Lauf nur bei (a) neuem Rohmaterial in der Quelle oder (b) einer
  freigegebenen Stufe-3-Bereinigung der in `wiki/QUESTIONS.md` gesammelten
  Doppelordner-/Slug-Fragen. Der Katalog bleibt such- und embedding-bereit.
