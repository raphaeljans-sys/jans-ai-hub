# Trainingsprogramm — NACHT-Loop der KB Normen (`normen-training-nacht`)

Ziel: die komplette Normen-Bibliothek (SharePoint `PL - 02_Recht_Norm/02_Normen/`,
Inventar 528 Dateien) in belegte, schnell verfügbare Destillate überführen —
**jede Nacht ab 22:00, bis das Inventar abgearbeitet ist** (Entscheid Raphael 11.07.2026).

## Takt & Umfang (verbindlich)

- **Frequenz:** täglich 22:00 (Scheduled Task `normen-training-nacht`). Der Lauf arbeitet
  so viele Normen wie in einer Session sauber möglich (Richtwert **8–12 Destillate**),
  Qualität vor Menge; spätestens um 08:00 ist Schluss.
- **Endbedingung:** Sind alle P1–P3-Positionen im `norm-inventar.md` destilliert oder
  begründet übersprungen, meldet der Lauf «INVENTAR KOMPLETT» im Output und bittet
  Raphael, den Scheduled Task zu beenden (Loop läuft nicht ewig weiter).
- **Reihenfolge:** P1 zuerst (Skill-Kernnormen), dann P2 (übrige SIA de), dann P3
  (DIN/VSS/RAL). Sprachvarianten (e/f/i) und `xalt` werden NICHT destilliert.

## Lauf 1 — Sonderprogramm (Pflicht, vor allen Destillaten)

1. `ersetzte_normen.pdf` + `Gesamtverzeichnis SIA.pdf` destillieren →
   `wiki/REGISTER.md` aufbauen: je Norm-Nr. die gültige Ausgabe, ersetzte Ausgaben,
   Datenstand des Verzeichnisses.
2. Inventar-Abgleich: bei Normen mit mehreren Ausgaben im Bestand (z.B. SIA 102
   2001/2003/2014/2020) die alten als «— ersetzt durch <Jahr>» markieren.

## Ablauf jedes Laufs (immer gleich)

1. **Stand lesen:** `training/norm-inventar.md` (offene Positionen, P1 zuerst),
   `wiki/QUESTIONS.md`, letzter `outputs/`-Report.
2. **Zugriffs-Check:** 1 Test-PDF via Read öffnen. Scheitert der Zugriff auf
   `~/Library/CloudStorage/OneDrive…` (TCC-Blockade launchd, bekanntes Muster),
   Fallback: Download via M365-Connector (SharePoint-Pfad identisch); scheitert auch
   das, Lauf mit Fehlermeldung im Output abbrechen — NICHT raten.
3. **Destillieren:** je Norm Read mit `pages:` (max 20 S./Request; grosse Normen über
   mehrere Nächte, Fortschritt im Frontmatter `gelesen:` festhalten).
   Destillat nach Muster `destillate/INDEX.md`; nichts erfinden, Fundstellen (Ziffer)
   notieren; DRM-geschützte DIN-PDFs als «DRM, manuell» markieren und überspringen.
4. **Register nachführen:** `norm-inventar.md` (Status `[x] JJMMTT`), `destillate/INDEX.md`,
   `wiki/REGISTER.md` (Gültigkeit), `wiki/QUESTIONS.md`.
5. **Output:** `outputs/JJJJ-MM-TT_normen-nacht-runN.md` — was destilliert, was offen,
   Plan für die nächste Nacht.
6. **CHANGELOG** ergänzen (neueste zuoberst), NAS-Repo committen + pushen.

## Leitplanken (Qualität)

- **Nie Ziffern/Kennwerte erfinden** — nur was im PDF steht; Unsicheres `speculative`.
- **Ausgabe + Datenstand zwingend** in jedem Destillat.
- **Urheberrecht:** Destillate = eigene Kurzfassung mit Fundstellen, keine
  Tabellen-/Textkopien im Wortlaut; alles bleibt intern auf dem NAS.
- **Kompoundieren:** bestehende Destillate wachsen (Frontmatter `gelesen:`), keine Duplikate.
- **Echte Umlaute ä/ö/ü, Schweizer Hochdeutsch.**

## Fortschritts-Tracker

Arbeitsliste: `training/norm-inventar.md` · Destillat-Stand: `destillate/INDEX.md` ·
Gültigkeit: `wiki/REGISTER.md` · letzter Lauf: `outputs/` · Änderungen: `CHANGELOG.md`.
