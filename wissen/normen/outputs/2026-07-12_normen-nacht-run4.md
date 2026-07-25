# Normen-Nacht-Loop — Run 4 (SIA 118 Volltext, P1-Kernnorm)

- **Datum:** 12.07.2026, ~23:30–23:45 · **Station:** MacBook Pro · **Modus:** Intensivphase/VOLLGAS-ENDLOS (Rule auto-verbesserungen 260712b/c)
- **Stations-Split:** eingehalten — NUR SIA destilliert. DIN/VSS/RAL = Mac Mini (lief zeitgleich, eigene Destillate din-1055-2/1249-11/4426/68119/en-12207).
- **Voraussetzungen:** NAS gemountet ✓; OneDrive-Normenpfad via Read/pdftotext lesbar ✓ (keine TCC-Blockade); SIA-118-PDF mit Textlayer (75 S.) ✓.

## Ausgangslage / Nebenläufigkeit (wichtig)
Dieser geplante Lauf (Scheduled Task, 23:29) fiel in ein **hochkonkurrentes Fenster**:
- Eine parallele **MacBook-run3-Session** destillierte zeitgleich SIA 232–500 (Dateien 23:14–23:29, `established`, vollständig) und hatte ihren `run3`-Report bereits geschrieben, aber Inventar/INDEX noch nicht überall nachgezogen (verwaiste `[~] in Arbeit`-Markierungen).
- Der **Mac Mini** produzierte parallel DIN-Destillate (Dateien bis 23:37) und hielt zeitweise `.git/index.lock`.

Um die von Rule `sync-kanonische-quelle` explizit gewarnte Kollision (gleichzeitige Git-/INDEX.md-Schreibzugriffe → index.lock-Korruption) zu vermeiden, wurde für diesen Lauf ein **von run3 unberührtes, hochwertiges Ziel ausserhalb dessen aktiver Range** gewählt: **SIA 118** (kein Destillat vorhanden, in run2 explizit als Mehrfach-Nacht-Priorität markiert, low collision).

## Destillat (1 neu, `established`)

| Destillat | Norm | Verdikt | gelesen (Quelle) |
|---|---|---|---|
| `sia-118-1991` | SIA 118:1977/1991 Allgemeine Bedingungen für Bauarbeiten | **bestanden** | Volltext 75 S. (pdftotext -layout, Textlayer). Art. 1–190 über Inhaltsverzeichnis + JANS-relevante Blöcke Art. 38–61 / 84–98 / 141–156 / 157–190 detailliert. |

Statt Menge dieses Fenster **Tiefe**: SIA 118 ist die grösste und für die JANS-Bauleitung wichtigste SIA-Norm (Rückgrat `werkvertrag`/`unternehmerkontrolle`/`kostenkontrolle`). Ein sauberes, belegtes Volltext-Destillat wiegt mehr als mehrere kleine P2-Positionen, die run3 ohnehin parallel abarbeitete.

## Verifikations-Verdikt (Modell D — Volltextabgleich, PFLICHT)
**Bestanden, 0 Beanstandungen.** Jede Kennzahl per grep gegen den extrahierten Quelltext gegengeprüft:

| Kennzahl | Artikel | Quelltext | Verdikt |
|---|---|---|---|
| Mengentoleranz Einheitspreis ±20 % (120 %/80 %) | Art. 86 | «20%», «120%», «80%» | ✓ |
| Rückbehalt 10 %/5 % (>Fr. 300 000), min 30 000, 20 %, max 1 000 000 | Art. 150 | alle Werte belegt | ✓ |
| Solidarbürgschaft 10 %/5 % (>Fr. 200 000), min 20 000, max 1 000 000 | Art. 181 | alle Werte belegt | ✓ |
| Garantiefrist (Rügefrist) 2 Jahre ab Abnahme | Art. 172 | «zwei Jahren», «Tag der Abnahme» | ✓ |
| Verjährung 5 Jahre / 10 Jahre (arglistig) | Art. 180 | «fünf Jahre», «10 Jahren» | ✓ |
| Zahlungsfrist 30 Tage | Art. 190 | «dreissig Tagen» | ✓ |
| Baustelleneinrichtungen 80 %/100 % | Art. 146 | «80%», «100%» | ✓ |
| Regierapport-Rückgabe 7 Tage | Art. 47 | «7 Tagen» | ✓ |
| Schlussabrechnung 2 Monate / Prüfung 1–3 Monate | Art. 154 | «zwei Monate», «Monatsfrist», «drei Monaten» | ✓ |

Keine erfundenen Ziffern; Destillat = eigene Kurzfassung mit Fundstellen, keine wörtlichen Tabellen-/Textkopien (Urheberrecht, bleibt intern NAS).

## Wichtige Befunde (für Raphael / die Skills)
- **SIA 118 ist jetzt belegt destilliert** — der Skill `werkvertrag` kann seine drei Vergütungsmodelle (Einheitspreis Art. 39/86, Pauschal Art. 41, Kostendach/Regie Art. 44 ff./56) und die 22 «Allgemeinen Bedingungen» ab sofort auf konkrete Artikel-Fundstellen abstützen statt aus dem Gedächtnis.
- **Ausgaben-Disziplin:** Bestand ist 1977/1991; laut REGISTER ist **SIA 118:2013** die gültige Ausgabe (nicht im Bestand = Bring-Schuld). In Altverträgen gilt die vereinbarte Ausgabe. Zitat immer «SIA 118:1991, Art. XXX».
- **run3-Reconcile ausstehend:** ~20 run3-SIA-Destillate (232, 240, 251–267, 271, 279, 281, 329, 358, 500) sind vollständig (`established`), aber im Inventar noch als `[~] in Arbeit (MacBook run3)` markiert. Kein Handlungsbedarf — das etablierte Reconcile-Muster (vgl. Mini-Run-2-CHANGELOG) schliesst diese Lücke; dieser Lauf hat sie bewusst NICHT angetastet (Doppel-Edit-Vermeidung).

## Offen / nächste Läufe
- **SIA P1-Rest:** SIA 102:2020-Vervollständigung (Art. 7 Phasenanteile), SIA 100/104/108/110 (kleine P1/P2, von der frühen «Session» abgebrochen, keine Datei).
- **SIA 118 — Vertiefung:** Kap. 1 (Art. 3, 11–37: Nebenunternehmer/Bauleitung/Gerichtsstand), Kap. 2.4–2.6 (Teuerungsabrechnung Art. 62–83), Kap. 4.2–4.4 (Art. 99–140 Ausführungsunterlagen/Baustellensicherheit) im nächsten Lauf artikelweise nachziehen (im Destillat unter «Offene Punkte» vermerkt).
- **SIA P2:** grosse Familie, run3 arbeitet den 230–500-Block; verbleibend v.a. 100–199-Block + 400er/700er.
- **VKF P1-Rest:** übrige Brandschutzrichtlinien (Löscheinrichtungen, Sprinkler, BMA, RWA, lufttechnische Anlagen, Brandschutzabstände Tragwerke) + P2 Erläuterungen/Arbeitshilfen (im Inventar viele `[~] in Arbeit (MacBook Session)`, tatsächlich noch offen — kein Destillat).

**Status Inventar:** SIA/VKF noch NICHT komplett — SIA-P1-Kern jetzt inkl. der Schlüsselnorm 118; VKF-Kernrichtlinien + P2 stehen aus. Endbedingung «SIA/VKF KOMPLETT» noch nicht erreicht.

## Commit-Hinweis
Wegen der Nebenläufigkeit (aktive run3 + Mac-Mini-DIN, geteilter dirty Working-Tree) wurde der eigene Commit auf die zwei isolierten Neu-Dateien beschränkt (`sia-118-1991.md`, dieser Report). Die Shared-Registry-Edits (INDEX/Inventar/CHANGELOG) sind auf Platte gesetzt und werden vom NAS-Self-Commit (15-Min-Cron, heute 20:00/23:15 aktiv) bzw. dem nächsten Loop-Commit mitgebündelt — bewusst kein konkurrierender Git-Vorgang während aktivem index.lock (Rule sync-kanonische-quelle).
