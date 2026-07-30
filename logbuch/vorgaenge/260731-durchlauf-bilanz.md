# Durchlauf-Bilanz — Stand 31.07.2026

Leitgrösse des Hubs: Durchlaufzeit und Wartezeit (Entscheid 31.07.2026).
Quelle: logbuch/fristen.md · Register: logbuch/vorgaenge/vorgaenge.tsv

## 1. Bestand

| Grösse | Wert |
|---|---|
| Vorgänge insgesamt | 86 |
| davon aktiv | 82 |
| davon erledigt | 4 |
| mit Eröffnungsdatum (messbar) | 7 von 82 |
| mittleres Alter der messbaren | 29 Tage |
| ältester offener Vorgang | 120 Tage |

Ältester: Freigabe-Entscheid Raphael: Jurybericht 2507 Halden herunterladen?

## 2. Bei wem liegt der Ball

| Ball bei | Vorgänge |
|---|---|
| unbekannt | 56 |
| JANS | 19 |
| Raphael | 5 |
| extern: Kübler/Gruner | 1 |
| extern: Duran/Gruner | 1 |

Bei 56 von 82 aktiven Vorgängen liess sich der Ball nicht aus dem
Text belegen. Diese Zahl ist die wichtigste Qualitätsangabe dieser Bilanz: sie
sagt, wie gross der blinde Fleck ist. Sie sinkt, sobald der Radar beim Eintragen
konsequent «AKTION JANS», «AKTION Raphael» oder «Ball bei \<Stelle\>» schreibt.

## 3. Nachfass-Schwelle (7 Tage)

Vorgänge, die extern liegen und seit über 7 Tagen keine Bewegung zeigen: **0**


Das ist der Regelkreis: jeder Eintrag hier ist ein Kandidat für einen
Nachfass-Entwurf. Erstellt wird er vom Skill `logbuch` bzw. auf Zuruf; versendet
wird nichts ohne Freigabe.

## 4. Was diese Bilanz noch nicht kann

- **Durchlaufzeit misst nur, wo ein Eröffnungsdatum steht.** Aktuell 7 von
  82 aktiven Vorgängen. Das Feld wird nur gesetzt, wenn im Text ausdrücklich
  «seit \<Datum\>» steht; es wird nie geraten. Jeder neue Vorgang sollte es
  mitbekommen, dann wächst die Messbasis von selbst.
- **Erledigte Vorgänge tragen kein Abschlussdatum.** Damit lässt sich die
  abgeschlossene Durchlaufzeit (die eigentliche Zielgrösse) noch nicht rechnen,
  nur das Alter der offenen. Das Feld kommt, sobald der Radar es beim Schliessen
  setzt.
- **Wartezeit ist nicht in eigene und fremde Anteile getrennt.** Dafür müsste je
  Vorgang die Ball-Historie mitlaufen, nicht nur der aktuelle Stand.

Erzeugt von scripts/vorgaenge-bilanz.sh · 86 Tabellenzeilen gelesen
