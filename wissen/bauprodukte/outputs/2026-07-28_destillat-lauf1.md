# Destillat-Lauf 1 `bauprodukte` — 28.07.2026, 04:30 (Mac Mini Nachtschicht)

## Ergebnis in einem Satz

Phase 0 (Inventar) fuer alle 37 Gewerke-Sektionen abgeschlossen, erster Artikel
(`dachbegruenung-systeme.md`) destilliert, eine Fehltriage entdeckt und korrigiert.

## Ausgangslage

Drei vorangegangene Nachtlaeufe (01:44/02:14/03:32) hatten den Pipeline-Treiber
`destillat-lauf.sh` per Hintergrundprozess gestartet, die jeweilige Dispatch-Session
aber vorzeitig mit "warte auf automatische Benachrichtigung" beendet. Da jeder
Dispatch-Aufruf ein eigener, unabhaengiger `claude -p`-Prozess ist (kein
Zustand zwischen Laeufen), stirbt ein per `run_in_background` gestarteter
Kindprozess beim Sessionende mit — die Benachrichtigung kommt nie. Ergebnis: Phase 0
lief mehrfach an (Sektionen wuchsen schrittweise 2→37), Phase 1/2 kamen nie durch.

## Was in diesem Lauf anders gemacht wurde

Das Skript wurde **synchron im Vordergrund** ausgefuehrt (Bash-Tool ohne
`run_in_background`, Timeout 570s) — dieselbe Session wartet auf das Ergebnis, statt
auf eine kuenftige zu hoffen.

## Resultate

1. **Phase 0:** 37/37 Sektionen erfasst, 214 Dateien inventarisiert (zuvor 2/37 mit
   134 Dateien).
2. **Phase 1 (Haiku, Budget 0.50 USD):** nach 6 triagierten Positionen budget-gekappt
   (`Exceeded USD budget`). Vier P1-Kandidaten entstanden: Dachbegruenung, PU-
   Beschichtung, ERCO-Katalog, "Leuchtenauswahl Nasszellen" (letztere fehlerhaft,
   s.u.).
3. **Phase 2 (Sonnet, Budget 1 USD):** ebenfalls budget-gekappt, ohne verwertbares
   Ergebnis (54s Laufzeit) — die engen Budgets liessen keinen vollen Artikelzyklus
   in der Subprozess-Variante zu.
4. **Diese Session hat daraufhin manuell ein Destillat gefahren:**
   - Kandidat "Leuchtenauswahl Nasszellen.pdf" gepr��ft — stellte sich als
     Katalog-Scrapbook mit handschriftlichen Klebezetteln heraus (Tic Light,
     Catellani+Smith, Glashuette Limburg, eintopf/etna von Martin Wallroth), keine
     IP-/Feuchtraum-Klassifizierung trotz Dateiname. Fehltriage im Inventar
     korrigiert (`[-]` statt `[t]` mit Begruendung), kein Artikel geschrieben.
   - Kandidat "Dachbegruenung.doc" gelesen (via `textutil -convert txt`, da
     Read-Tool `.doc` nicht nativ liest): kurze, aber inhaltlich dichte
     Materialrecherche (Architekturbuero Christian Kerez Zuerich, Projekt
     Eschenbach, Stand Dez. 2001/Jan. 2002) zu drei CH-Anbietern fuer
     Dachbegruenungssysteme. Artikel `wiki/dachbegruenung-systeme.md` geschrieben
     (status `emerging`, alle Einzelangaben als unverifiziert/23-jaehrig
     gekennzeichnet gemaess Datumsstempel-Pflicht).

## Lehre fuer kuenftige Laeufe

- **Nie mehr `destillat-lauf.sh` per `run_in_background` in einer Dispatch-Session
  starten und die Session dann beenden** — der Kindprozess stirbt mit. Immer
  synchron im Vordergrund fahren oder das Skript in kleineren Haeppchen (enger
  Scope, kurze Laufzeit) direkt in der Session ausfuehren.
- Subprozess-Budgets von 0.50-1 USD reichen fuer Phase 1 (Triage) fuer ~5-6
  Positionen, aber nicht zuverlaessig fuer einen vollen Phase-2-Artikelzyklus
  inklusive PDF-Lektuere — realistischer sind 1.5-2 USD je Phase-2-Artikel, wenn
  der Subprozess-Weg wieder versucht wird.
- Scan-Dateien mit generischem/irrefuehrendem Dateinamen sollten in Phase 3 stets
  gegenlas werden, bevor destilliert wird — der Dateiname allein traegt nicht
  zuverlaessig den Inhalt.

## Naechster Schritt

5 triagierte Positionen (`[t]`) warten auf Phase 2: PU-Beschichtung (225), ERCO-
Katalog (233, gross — evtl. mehrteilig), sowie drei P3-Kandidaten in 233
(Designessay Judd, Scan ohne Kontext, Konstruktionsplan). Ein Folgelauf kann direkt
mit Phase 2 starten (Phase 0/1 nicht erneut noetig fuer diese Positionen).
