# Grobkosten-Trainingslauf — Run 12 (27.07.2026)

## Ausgangslage

Run 11 (27.07.2026) hatte die autonome Exploration der bekannten SharePoint-Bibliotheken für
erschöpft erklärt: alle in Run 5/6 identifizierten Bibliotheken (`AR - 01` bis `AR - 07`,
`IMMO - 01/02/03/05/06`, zweite Bibliothek `...-RaphaelJans-ArchitektenETH`) sind vollständig
gesichtet. Empfehlung für Run 12: kein weiterer Bibliotheks-Sweep, sondern entweder (a) Frage 1/2
als Rückfrage an Raphael vorbereiten, oder (b) auf einen Ereignis-Trigger (neuer Kostenstand aus
`kostenkontrolle`) warten.

## Durchgeführt in diesem Lauf

1. **Kollisionscheck** (Rule 260724): `ps aux | grep grobkosten` zeigte einen Treffer — die
   eigene Prozessinstanz (`claude -p` mit identischem Prompt-Text). Keine echte Zweitinstanz.
2. **Ereignis-Trigger-Check (Option b aus Run 11):**
   - `find` über die komplette SharePoint-Bibliothek `OneDrive-FreigegebeneBibliotheken–JANS`
     nach Dateien mit `*kosten*` im Namen, Änderungsdatum seit 26.07.2026 00:00 → **0 Treffer**.
   - Gezielt die drei aktiven Mandate mit bekannter Kosten-Historie geprüft: 2414 Thalwil
     (kein Fund neuer Dateien), 2620 Albertstrasse (kein Fund seit 27.07. 06:00), 2515
     Wartstrasse (kein Fund seit 25.07.). Alle drei: keine neuen Kosten-Dokumente.
3. **Ergebnis:** Kein neues Material verfügbar. Der in Run 11 offen gehaltene Ereignis-Trigger
   ist damit für diesen Lauf negativ geprüft — keine Filler-Werte erzeugt (Rule «Kennwerte nie
   raten» / «Kein Leerlauf-Zwang» erfüllt durch die Trigger-Prüfung selbst).

## Formale Sättigungs-Erklärung

Gemäss `training/PROGRAMM.md`, Abschnitt "Endbedingung":

> Sind alle Inventar-Zeilen `[x]` oder `[-]` und trägt `wiki/kennwerte.md` für die gefuehrten
> Nutzungsarten belegte Werte, meldet der Loop Saettigung und schlaegt Ruecktaktung auf einen
> Ereignis-Trigger vor.

Das Inventar ist strukturell vollständig (bestätigt Run 11: alle bekannten Bibliotheken
`[x]`/`[-]`). `wiki/kennwerte.md` hat für keine Nutzungsart die Reife "belegt (n=…)" erreicht —
aber NICHT aus Materialmangel, sondern weil zwei rein strukturelle Fragen offen sind:

- **Frage 1** (BKP-1-9-vs-1-5-Bezeichnung, betrifft Wald Haselstudstrasse, 2305 Wädenswil
  Pre-Check-Tool-Familie): ein JANS-eigenes Excel-Tool beschriftet denselben Umrechnungsfaktor
  in derselben Zeile widersprüchlich — nur durch Rücksprache mit Raphael Jans (Tool-Ersteller)
  klärbar.
- **Frage 2** (Standard-Klassifikation "norm, eloquent" im GKB-Tool, betrifft Haus Deuber +
  Reckholdern): mutmasslich fixer Vorlagentext, keine bewusste Standard-Einschätzung je Projekt
  — nur durch Rücksprache oder einen neuen, textlich eindeutigen Fall klärbar.

Diese beiden Fragen sind seit Run 6/7 unverändert offen; sechs weitere Läufe (Run 7–11) haben
keinen neuen Fall geliefert, der sie auflöst. Ein weiterer Zyklus dieses Loops ohne neue
Eingabe (Antwort Raphael ODER neuer Kostenstand) verspricht keinen Fortschritt mehr.

## Empfehlung an Raphael (nicht autonom umsetzbar)

Diesen Loop von der aktuellen VOLLGAS-Taktung (mehrfach täglich, `cron_target: "0 9,21 * * *"`)
auf einen **Ereignis-Trigger** zurücktakten. Konkret sinnvoll:

- Nächster Lauf, sobald Raphael Frage 1 und/oder Frage 2 beantwortet (dann sofort die
  wartenden MFH-Einzelfälle Haus Deuber (≈1'250, normalisiert), Niederhasli (1'032), Wald
  Haselstudstrasse (1'539–1'765, obere Näherung) neu bewerten und ggf. den ersten
  MFH-Median bilden).
- ODER nächster Lauf, sobald ein neuer Kostenstand mit GV-Bezug aus einem laufenden Mandat
  über `kostenkontrolle` abgelegt wird.
- Diese Rücktaktung selbst liegt ausserhalb der Befugnis dieses autonomen Loops (analog zur
  Behandlung von `immobewertung-training`/`baurecht-buch-training`, siehe Rule
  `auto-verbesserungen.md`, Eintrag 260725 12:50) — reine Beobachtung/Vorschlag für den
  nächsten interaktiven Kontakt.

## Register-Änderungen dieses Laufs

- `wiki/QUESTIONS.md`: neuer Run-12-Eintrag (Ereignis-Trigger-Check + Sättigungserklärung).
- `CHANGELOG.md`: neuer Run-12-Eintrag.
- `training/quellen-inventar.md`: **unverändert** (keine neue Zeile, kein Statuswechsel — es
  gab nichts Neues zu inventarisieren).
- `wiki/kennwerte.md`: **unverändert** (kein neuer Kennwert, keine Reife-Hebung).
- Dieser Report: `outputs/2026-07-27_grobkosten-run12.md`.

## Git

Lokal committen (`git add wissen/grobkosten`, dann `git commit`), NICHT pushen/pullen
(VOLLGAS-Disziplin) — der git-auto-sync-Job übernimmt Push/Pull gebündelt.
