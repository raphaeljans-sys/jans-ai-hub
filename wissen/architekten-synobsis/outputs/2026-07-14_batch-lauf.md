# Batch-Lauf 2026-07-14 — synobsis-batch-nacht

Station: Mac Mini (Macmini.local)
Start: 2026-07-14T00:27:32+0200
Ende: 2026-07-14T00:27:58+0200

## Status vorher
Architekten gesamt: 853
verarbeitet: 853
offen: 0
Stand: 2026-07-02T22:52:26 (letzter inhaltlicher Fortschritt)

## Ablauf
- Stufe 1 (Scan/Katalog): nichts zu tun, 853/853 bereits vollstaendig verarbeitet.
- Stufe 2 (Embeddings): `vectors.npz` mit `intfloat/multilingual-e5-base` neu geschrieben
  (853 x 768), deterministisch, kein inhaltlicher Diff gegenueber vorherigen Laeufen.
- Stufe 3 (Kuratierung): entfaellt, keine neuen Eintraege.

## Status nachher
Architekten gesamt: 853
verarbeitet: 853
offen: 0

## Git-Diff
Nur Zeitstempel geaendert: `catalog/INDEX.md` (Stand-Zeile 13.07.2026 19:24 -> 14.07.2026 00:27),
`catalog/cad-index.json` (`stand`-Feld, weiterhin `architekten_mit_cad: 15`). `vectors.npz`
unveraendert (kein Diff, deterministisches Modell).

## Ergebnis
Reiner Wiederholungslauf ohne neuen Stoff, wie an den vorherigen VOLLGAS-Taktungen seit
2026-07-13 09:29. Naechster inhaltlicher Fortschritt braucht entweder neues Rohmaterial in
der Quelle oder eine von Raphael freigegebene Stufe-3-Bereinigung der in
`wiki/QUESTIONS.md` gesammelten Doppelordner-/Slug-Fragen.
