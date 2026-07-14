# Normen-Training Mini (Mac Mini) — Run 19, 14.07.2026

## Auftrag

Intensiv-Lauf DIN/VSS/RAL (Stations-Split Mac Mini, SIA/VKF bleiben MacBook Pro,
Rule `auto-verbesserungen` 260713/260712c VOLLGAS-ENDLOS).

## Ausgangslage

`git pull` scheiterte zunaechst an unstaged Aenderungen (VKF-Verifikationsdeltas +
Stationsstatus-Snapshots, vermutlich aus einem parallel laufenden Vollgas-Runner-Prozess
auf dem gemeinsamen NAS-Mount) — diese wurden vorab committet (`be13ed35`), danach war
`git pull --rebase` sauber (bereits aktuell).

Abgleich gegen den Run-18-Report (`outputs/2026-07-14_normen-mini-run18.md`) zeigte:
ein Hintergrund-Vollgas-Lauf hatte bereits **alle 17** offenen "Sonstiges"-Positionen der
DIN-Familie destilliert-vervollstaendigt UND retro-verifiziert (Frontmatter durchgehend
`established (verifiziert 260714, Retro-Verifikation Run 19)`), aber `training/norm-
inventar.md` und `destillate/INDEX.md` trugen dafuer noch keinen Vermerk — dasselbe
Bookkeeping-Lag-Muster wie bereits in Run 18 beobachtet.

## Durchgefuehrt

1. `git add -A` + Commit der vorgefundenen unstaged Aenderungen (17 Dateien Stations-
   status/VKF-Deltas).
2. `git pull --rebase` (danach clean, keine weiteren Konflikte).
3. Verifikations-Stand aller 17 offenen DIN-"Sonstiges"-Positionen gegen die Frontmatter-
   Felder `status`/`last_updated` der Destillate geprueft: alle bereits `established`,
   mit teils substanziellen Korrekturen (siehe CHANGELOG).
4. `training/norm-inventar.md` fuer alle 17 Zeilen mit dem Vermerk «Retro-verifiziert
   Mini-Run 19 (260714): established, ‹Kurzfassung Korrektur›» ergaenzt (Python-Skript,
   Substring-Match auf Dateinamen, Ergebnis manuell verifiziert — keine Fehlmatches wie
   in Run 18).
5. `destillate/INDEX.md` fuer dieselben 17 Positionen in der Status-Spalte nachgefuehrt
   (vorher noch «destilliert»/Teil-Destillat, jetzt konsistent `established` mit
   Korrektur-Kurzfassung).
6. Neuer Wiki-Artikel `wiki/synthese-din-vss-ral-fachskills.md`: Querschnitts-Synthese
   (Vertiefungsstufe (d) gemaess `training/PROGRAMM.md`) — ordnet DIN/VSS/RAL-Destillate
   den JANS-Fach-Skills zu (Brandschutz, Kostenschaetzung, Flaechen-Nachweis, Werkvertrag,
   Barrierefreiheit-Kontext, Parkierung, Tageslicht), inkl. expliziter Warnung, dass
   DIN-Kennwerte in aller Regel **Vergleichsreferenz**, nicht direkt anwendbares CH-Recht
   sind (Ausnahme VSS 40 291, direkt geltend). In `wiki/INDEX.md` registriert.
7. CHANGELOG ergaenzt (neueste zuoberst).

## Ergebnis

- Die **DIN/VSS/RAL-Familie (528-Datei-Inventar) ist jetzt vollstaendig destilliert UND
  retro-verifiziert** — kein offener Punkt mehr in `training/norm-inventar.md` fuer P3
  (ausser den bereits als "keine Norm"/Duplikat/xalt markierten uebersprungenen Dateien).
- `destillate/INDEX.md`, `training/norm-inventar.md` und `wiki/QUESTIONS.md` sind fuer
  diese Familie konsistent.
- Erster Baustein der Vertiefungsstufe (d) Querschnitts-Synthese fuer Fach-Skills gelegt.

## Naechster Schritt (Run 20)

Da die Grundinventarisierung + Retro-Verifikation von DIN/VSS/RAL abgeschlossen ist,
schwenkt der naechste Mac-Mini-Lauf gemaess `training/PROGRAMM.md` (Vertiefungsstufen)
auf:

- **(c) Q&A-Selbstbefragung:** 15-20 unabhaengig beantwortete Pruefungsfragen je
  Kern-DIN-Norm (Kandidaten: DIN 4102-1, DIN 1946-4/6, DIN 18040-1/2, DIN 276-1/277-1-3,
  VSS 40 291) — schliesst allfaellige Detail-Luecken, die eine reine
  Retro-Verifikation nicht aufdeckt.
- **(d) Synthese fortsetzen:** die begonnene `synthese-din-vss-ral-fachskills.md` bei
  Bedarf um weitere Fach-Skills ergaenzen (z.B. `unternehmerkontrolle`/Abnahme-Vergleich
  VOB/B vs. SIA 118 Garantie-/Maengelrecht, vertieft statt nur angerissen).
- Kein DIN/VSS/RAL-Punkt in `wiki/QUESTIONS.md` offen; SIA-500-Luecke (Barrierefreiheit)
  bleibt fuer den MacBook-Pro-SIA-Loop vermerkt (bereits im Synthese-Artikel notiert,
  nicht in dieser Familie behebbar, da SIA nicht Mac-Mini-Zustaendigkeit ist).

INVENTAR-STATUS DIN/VSS/RAL: **Grunddestillation + Retro-Verifikation KOMPLETT.**
Wechsel in Vertiefungsstufen (c)/(d) ab Run 20, kein «Task beenden»-Vorschlag noetig, da
gemaess VOLLGAS-Programm nach Familienabschluss automatisch in die Vertiefung gewechselt
wird (kein Leerlauf).
