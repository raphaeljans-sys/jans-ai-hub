# Trainings-Run 10 — grobkosten (27.07.2026)

## Auftrag

Gemäss Empfehlung aus Run 9 (`wiki/QUESTIONS.md`): die drei letzten aus Run 5 benannten,
noch ungeprüften SharePoint-Bibliotheken sichten — `AR - 02 Wettbewerbe`,
`AR - 04 Honorarauftraege`, `AR - 05 Transfer` — mit Fokus auf einen Fall, der die
Standard-Klassifikation textlich eindeutig belegt (zur Klärung von Frage 1/2, dem
Median-Blocker für MFH).

## Vorgehen

Kollisionscheck (Rule 260724): kein echter Zweitprozess. NAS + `04_Buero/02_Projekte`
erreichbar. Systematische `find -iname "*kosten*"`-Suche über die drei Bibliotheken direkt
in der Hauptsession (keine Background-Subagent-Delegation, siehe Memory-Feedback: OneDrive-
Pfade stallen bei Background-Agents). Alle Treffer gesichtet, relevante PDFs per
`pdftotext -layout` gelesen.

## Ergebnis

**1 neuer Rohbeleg:** 2105 Steinkogler, Haus «Le Mélèze» Davos (`AR - 04
Honorarauftraege/2105 Steinkogler`). Reale, in sich konsistente Grobkostenschätzung (JANS,
Stand 11.06.2021) mit begleitender Korrespondenz — aber methodisch fundamental anders als
alle bisherigen Fälle: Eingriffstiefen-Bandbreiten S/M/L/XL (bottom-up, itemisiert je
Sanierungsumfang), kein einziger m³/GV-Bezug im gesamten Dokument. Damit für die
CHF/m³-GV-Haupttabelle nicht verwertbar — bewusst nicht rechnerisch ergänzt. Details:
`raw/2105-steinkogler-davos.md`.

Nebenbefund: dritte Bestätigung des Musters "Fliesstext-Vergleichswert weicht vom
tatsächlich gerechneten Wert ab" (CHF 2'000.-/m² GF im Text vs. CHF 2'600.-/m² GF in der
tatsächlichen Neubau-Rechnung, 30 % Differenz, unaufgelöst) — bereits bei
Ackersteinstrasse/Reckholdern beobachtet.

`AR - 02 Wettbewerbe`: nur das bereits aus Run 6 bekannte tote GKS-Copy-Paste-Template
(2408 WB BIWAK) sowie externe, unausgefüllte Wettbewerbsabgabe-Kostenformulare. Ein
externes ARCHOBAU-Referenzdokument (KSSG St. Gallen, Kostenkennwerte-Referenzprojekte) kurz
geprüft und verworfen: Drittprojekte (Frauenklinik Luzern, Universitätsspital ZH u.a.),
grösstenteils Healthcare, kein JANS-Eigenprojekt.

`AR - 05 Transfer`: einziger Treffer ein generischer Webseiten-Ausdruck zur
eBKP-H-Methodik (Bauherrenberatungs-Website), kein Projektbezug.

**Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation) bleiben ungelöst** — dieser
Lauf liefert keinen Fall, der sie textlich eindeutig auflöst.

## Register nachgeführt

- `raw/2105-steinkogler-davos.md` (neu)
- `training/quellen-inventar.md` (Run-10-Abschnitt)
- `wiki/QUESTIONS.md` (neuer Eintrag)
- `raw/_INGESTED.md`
- `wiki/INDEX.md`
- `CHANGELOG.md`
- `wiki/kennwerte.md` — UNVERÄNDERT (kein neuer Kennwert in diesem Lauf)

## Empfehlung für Run 11

Alle fünf in Run 5 benannten Bibliotheken (`AR - 02/03/04/05`, `IMMO - 01/02/03/05/06`) sind
jetzt gesichtet. Einzige noch offene `AR`-Bibliothek: `AR - 06 Referenzen` (Name legt reine
Referenzsammlung nahe, geringe Erwartungshaltung). Sollte auch das nichts liefern: die
autonome Exploration der bekannten SharePoint-Struktur ist dann absehbar erschöpft — eine
Rückfrage an Raphael zu Frage 1/2 ist der nächste sinnvolle Schritt, statt weitere
Bibliotheken zu sweepen. Ergänzend zurückgestellt (nicht dringend): der Brassel-Archiv-
Nebenfund (`_Archiv/Brassel_Architekten/201210_HARDSTRASSE_7/BKP/`) — Fremdmandat oder
JANS-eigen unklar, in diesem Lauf nicht extrahiert.
