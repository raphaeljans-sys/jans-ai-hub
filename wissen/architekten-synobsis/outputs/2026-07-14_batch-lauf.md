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

## Zweiter Batch-Aufruf desselben Tages (05:47, VOLLGAS-Endlos-Taktung)
Start: 2026-07-14T05:47:06+0200, Ende: 2026-07-14T05:47:33+0200.

Vorab in der Quelle `05_Architekten_Synobsis` geprueft: 854 Top-Level-Ordner statt 853 —
Differenz ist der neue Ordner `00_Organisation` (Buero-interne Ablage/Referenzen, kein
Architekten-Ordner, bleibt zu Recht ausserhalb des Katalogs). Kein neuer Architekt.

Ergebnis identisch zum 00:27-Lauf: 853/853, offen 0, `vectors.npz` deterministisch ohne
Diff neu geschrieben, nur Zeitstempel in `catalog/INDEX.md`/`catalog/cad-index.json`
aktualisiert (weiterhin 15 Architekten mit CAD). Kein neuer Stoff.

## Dritter Batch-Aufruf desselben Tages (06:28, VOLLGAS-Endlos-Taktung)
Start: 2026-07-14T06:28:50+0200, Ende: 2026-07-14T06:29:15+0200.

Ergebnis identisch zu den beiden vorherigen Laeufen: 853/853, offen 0, `vectors.npz`
deterministisch ohne Diff neu geschrieben (`git diff --stat` leer), nur Zeitstempel in
`catalog/INDEX.md`/`catalog/cad-index.json` aktualisiert. Kein neuer Stoff seit 2026-07-02.
Naechster inhaltlicher Fortschritt bleibt an neues Rohmaterial in der Quelle oder eine
freigegebene Stufe-3-Bereinigung (siehe `wiki/QUESTIONS.md`) gebunden.

## Vierter Batch-Aufruf desselben Tages (08:46, VOLLGAS-Endlos-Taktung)
Start: 2026-07-14T08:46:39+0200, Ende: 2026-07-14T08:47:06+0200.

Vorab in der Quelle geprueft: weiterhin 854 Top-Level-Ordner (`00_Organisation` bleibt der
einzige Nicht-Architekten-Ordner, kein neuer Architekt seit dem 05:47-Lauf).

Ergebnis identisch zu den drei vorherigen Laeufen: 853/853, offen 0, `vectors.npz`
deterministisch ohne inhaltlichen Diff neu geschrieben, nur Zeitstempel in
`catalog/INDEX.md`/`catalog/cad-index.json` aktualisiert (weiterhin 15 Architekten mit CAD).
Kein neuer Stoff seit 2026-07-02. Reiner Wiederholungslauf im Rahmen der VOLLGAS-Endlos-
Taktung; naechster inhaltlicher Fortschritt bleibt an neues Rohmaterial in der Quelle oder
eine freigegebene Stufe-3-Bereinigung (siehe `wiki/QUESTIONS.md`) gebunden.

## Fuenfter Batch-Aufruf desselben Tages (11:54, synobsis-batch-nacht regulaerer Task)
Start: 2026-07-14T11:54:12+0200, Ende: 2026-07-14T11:54:37+0200.

Vorab in der Quelle geprueft: 859 Top-Level-Eintraege (statt 854 beim letzten Lauf) —
Differenz zunaechst als moegliche neue Architekten-Ordner untersucht. Ergebnis der
Pruefung: kein echter Rueckstand. Die Differenz besteht aus (a) drei bereits verarbeiteten
Architekten-Ordnern mit Leerzeichen am Namensende (`Conte Pianetti Zanetta Arch `,
`Smiljan Radic `, `Radic_Smjlian`) — diese waren in `state/processed.json` schon vorher
korrekt mit dem exakten (Leerzeichen-behafteten) Namen erfasst, ein eigener Ad-hoc-
Vergleichsscript hatte durch `.strip()` faelschlich einen Rueckstand vorgetaeuscht — und
(b) fuenf lose Dateien direkt auf Root-Ebene der Quelle (`Unknown.jpg`,
`_Japanische Architekten.docx`, `lieblingsarchitekt.jpg`,
`tumblr_lbf4yyf79H1qat99uo1_500.jpg`, `New_York_Segram_pl_00_caruso2012FSworkbook 25.dwg`),
die zu Recht nicht als Architekten-Ordner gescannt werden (`list_architects()` filtert auf
`is_dir()`). Batch-Skript bestaetigt: 853/853, offen 0, `vectors.npz` deterministisch ohne
inhaltlichen Diff neu geschrieben, nur Zeitstempel in `catalog/INDEX.md`/`catalog/cad-index.json`
aktualisiert. Kein neuer Stoff seit 2026-07-02.

Empfehlung (nicht umgesetzt, nur beobachtet): die fuenf losen Root-Dateien sind
Ablage-Streuverlust in der read-only Quelle `05_Architekten_Synobsis` und sollten bei
Gelegenheit von Raphael in einen passenden Architekten-/Sammelordner einsortiert oder
geloescht werden — der Skill fasst die Quelle nicht an (strikt read-only).
