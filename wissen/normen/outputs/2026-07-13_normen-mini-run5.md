# Normen-Training Mini (Mac Mini) — Run 5, 13.07.2026

## Auftrag

Fortsetzung des DIN/VSS/RAL-Destillations-Loops (Station Mac Mini) gemäss
`training/PROGRAMM.md`. Run 4 (13.07.2026) hatte gemeldet, dass alle offenen
DIN-Sonstiges-Dateien und die 5 grossen VSS-Scans destilliert seien, und
empfohlen, im nächsten Lauf die Endbedingung zu prüfen.

## Ablauf

1. Git-Pull auf dem NAS-Repo (bereits aktuell).
2. Zugriffs-Check SharePoint-Ordner `PL - 02_Recht_Norm/02_Normen/` — erreichbar.
3. Inventar-Abgleich: `training/norm-inventar.md` (DIN 71, VSS 14, RAL 1 gelistete
   Dateien) gegen den tatsächlichen Ordnerinhalt geprüft:
   - `DIN_Norm/`: 72 Dateien real vs. 71 im Inventar → Differenz `FileOpenInstaller.dmg`
     (Installer-Programm, keine Norm).
   - `VSS_Norm/`: 17 Dateien real vs. 14 im Inventar → Differenz 3 Bild-/Screenshot-
     Dateien (`Bildschirmfoto 2021-04-29 um 18.38.50.png`, `Rampe.JPG`, `buk/SEB250.png`).
   - `RAL_Norm/`: 1 Datei, deckungsgleich mit Inventar.
4. Die 4 fehlenden Nicht-Norm-Dateien im Inventar als `—` (übersprungen, begründet)
   nachgetragen; DIN-Header von "71 Dateien" auf "72 Dateien" korrigiert, VSS-Header
   von "14" auf "17" korrigiert.
5. `wiki/QUESTIONS.md` bereinigt: mehrere zuvor offene `[ ]`-Einträge, die durch
   Run 3/4 bereits erledigt waren (DIN 277-3, grosse VSS-Dateien, DIN-Sonstiges-
   Grossdateien, DRM-Frage), auf `[x]` gesetzt und mit Beleg versehen.
6. Nach dem Nachtrag: **0 offene `[ ]`-Positionen** in den Abschnitten DIN (72
   Dateien), VSS (17 Dateien), RAL (1 Datei) von `training/norm-inventar.md`.

## Ergebnis

**DIN/VSS/RAL KOMPLETT.** Jede Datei in den drei Normfamilien ist entweder
destilliert (mit Fundstelle im jeweiligen Destillat unter `wiki/destillate/`)
oder begründet übersprungen (Sprachvariante, Altausgabe, Nicht-Norm-Datei wie
Installer/Screenshot/Foto/Admin-Dokument).

Damit ist die Endbedingung des Scheduled Tasks `normen-training-mini` erreicht
(siehe Task-Prompt, Schritt 9: "Sind alle DIN/VSS/RAL-Positionen … destilliert
oder begründet übersprungen, meldet der Lauf «DIN/VSS/RAL KOMPLETT» und bittet
Raphael, den Task zu beenden").

## Verbleibende, nicht-blockierende Qualitätslücken

Diese betreffen die Tiefe/Vollständigkeit einzelner bereits erfasster Destillate,
nicht die Inventar-Vollständigkeit — sie blockieren die KOMPLETT-Meldung nicht,
sind aber für die Wissensqualität festgehalten (Details in `wiki/QUESTIONS.md`):

- **VKF-Duplikate (5 Paare)** aus dem Reconcile vom 13.07. — Merge ist destruktiv
  (Löschen einer Datei), braucht Raphaels Rückfrage vor Ausführung.
- **DIN EN 1627:2011** (Einbruchhemmung) nur als 4-von-44-Seiten-Teil-Destillat im
  Bestand — Vollnorm müsste separat beschafft werden.
- **SN 640 105a** (Anhang in `VSS 640 291a Parkieren Geometrie.PDF`, ab S.25) nicht
  separat destilliert.
- **Fehlende Schweizer Pendants** zu mehreren deutschen Sonstiges-Destillaten
  (SIA 500 Hindernisfreie Bauten, SWKI 99-3 Spital-RLT, SIA 260er-Tragwerksnormen)
  — Kandidaten für den SIA/VKF-Loop auf dem MacBook Pro, nicht für diese Station.

## Empfehlung an Raphael

Der Scheduled Task `normen-training-mini` (Mac Mini, DIN/VSS/RAL) kann beendet
werden — sein Auftrag (Inventar komplett destillieren/begründet überspringen)
ist erfüllt. Verbleibende Arbeit an dieser KB ist Qualitätsvertiefung (Duplikat-
Merge, Teil-Destillat-Ergänzung, CH-Pendants), keine Inventar-Abarbeitung mehr —
dafür eignet sich eher ein gelegentlicher, gezielter Lauf als ein Dauer-Loop.

## Ressourcenverbrauch

Gering — kein PDF-Destillat in diesem Lauf nötig, nur Inventar-Abgleich,
Bereinigung und Reporting.
