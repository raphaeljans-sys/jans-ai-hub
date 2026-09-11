---
title: Synergie-Lauf 34 (Tagestakt)
datum: 2026-09-11
delta_basis: 2026-09-10 17:10
fenster_commits: 117
status: abgeschlossen
---

# Synergie-Lauf 34 — 11.09.2026

Ein Loop, der als «fehlend» im Fristen-Register stand, lag die ganze Zeit auf der anderen Station.
Und eine Messung mit «0 Treffer» war eine Aussage über das Suchmuster.

## Big Points

1. **SYN-76 widerlegt: `bauleitung-training` existiert, auf dem Mac Mini.** Angelegt 07.09.2026
   16:04:51 (`ssh mini`, lesend). Lauf 30 hat 70 Minuten später nur die Registry des MacBook Pro
   gemessen. Die Aktion Raphael «Task anlegen» hätte einen **Doppellauf** erzeugt; sie ist im
   Fristen-Register zurückgenommen. Rest: der erste planmässige Lauf (Mo 08.09. 04:20) hat keine
   Spur hinterlassen. Gegenmessung Mo 14.09. nach 04:20.
2. **SYN-81 breiter als gemessen.** Mit einem Muster, das auch Prosa und VOLLGAS-Lokalcommits
   erfasst, tragen **6 von 12 Mini-Prompts** eine git-Anweisung ohne `nas-commit-now`, darunter der
   aktive `grobkosten-training`. Das zählt, weil V0+ die Lern-Loops als zweite Welle auf den Mini legt.
3. **SYN-80: der Vorschlag wirkt, der Schaden wächst.** Der Fidelity-Review fährt den Satzbau-Check
   aus (d) mit. Der SYN-78-Zeiger ist nach Reparatur (08.09.) und Rückkürzung (09.09.) nun ganz
   gestrichen. Zweite Schadensmessung, jetzt an ungesehenen Golds; siebter Lauf mit der Empfehlung
   36'000 B.
4. **SYN-83 neu (Prio 3):** `connectors/WEGE.md` nennt das fehlende Zertifikat als Ursache eines
   Hängers von `m365-graph.mjs`. Gegenprobe mit leerem `HOME`: Abbruch in 0 s. Kandidat: `fetch`
   ohne Zeitdeckel. Unterpunkt in WEGE gesetzt, Werkzeugfix offen.

## Die Lehre des Laufs

Beide Korrekturen treffen **frühere Synergie-Läufe**, und beide haben dieselbe Ursache: eine Messung,
die nur einen Teil des Suchraums sah, wurde als Aussage über das Ganze geführt. Einmal eine Station
statt zwei, einmal wörtliche Befehle statt aller Formen einer Anweisung. Richtig gemessen hatten die
Vertiefung vom 11.09. (Mini-Inventur mit `bauleitung-training`) und der V0+-Spiegel; nur hat keine
dieser Stellen das Register berichtigt, das die falsche Aktion trug.

## Geschrieben

| Datei | Änderung | Zeilen |
|---|---|---|
| `wissen/koordination/SYNERGIE-REGISTER.md` | SYN-83 neu, Nachträge SYN-76/80/81, Fussnote Lauf 34 | 1763 → 1821 |
| `logbuch/fristen.md` | drei datierte Nachträge (Befunde 07.09., 08.09., 10.09.) | 5480 → 5480 |
| `rules/betrieb-chronik.md` | Nachtrag zu 260907 | 3322 → 3332 |
| `connectors/WEGE.md` | Unterpunkt zum m365-graph-Nachtrag | 1139 → 1146 |
| `wissen/koordination/CHANGELOG.md` | Eintrag | 3776 → 3793 |

Keine Zeile entfernt. Keine Mail (still by default).

## To-do

1. **Raphael:** `bauleitung-training` **nicht** auf dem MacBook anlegen. Falls er ab Montag laufen
   soll, auf dem Mini in `list_scheduled_tasks` den Takt prüfen.
2. **Gegenmessung Mo 14.09.** nach 04:20: neue Zeile im Laufjournal von Register 15 oder neuer
   Bericht unter `skills/ausschreibung/wissensbasis/training/`.
3. **Vor der zweiten V0+-Welle:** Mini-Prompts `grobkosten-training` und `normen-training-mini`
   (und bei Reaktivierung `synobsis-batch-nacht`) auf `nas-commit-now.sh` stellen; `wissenscheck-monatlich`
   vor dem 01.10.
4. **Offen, Entscheid Raphael:** Byte-Riegel der Facetten auf 36'000 B (SYN-69/80 (b)).
5. **Werkzeug:** Zeitdeckel für die `fetch`-Aufrufe in `connectors/m365-graph.mjs` (SYN-83 (b)).
