# Training-Run 47 — Immobilienbewertung (2026-07-25)

Fünfter Trigger an diesem Tag (nach Run 43 ca. 09:xx, Run 44, Run 45, Run 46). Ergebnis:
**Delta-Null-Bestätigungslauf, fünfzehnter in Folge.**

## Ablauf

1. **Kollisionsschutz (Rule 260724) geprüft:** `ps aux` zeigte einen `claude -p`-Prozess mit
   identischem `immobewertung-training`-Prompt (PID 53590) — verifiziert als der eigene
   Elternprozess dieser Session (Shell-PPID = 53590), **keine Zweitinstanz**.
2. **Bewertungsordner erneut direkt gelistet**
   (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/`): unverändert 4 Fälle — Langnau 3338,
   Thalwil 9568, Ebmatingen 3932, **Wangen 8855 weiterhin der jüngste** (09.06.2026). Kein
   neuer JANS-Bewertungsfall.
3. **Marktpuls bewusst nicht geprüft** (Drossel-Rule 260714) — nächster amtlicher Wert
   (Referenzzins/Durchschnittszinssatz) erst 01.09.2026, kein Grenznutzen für einen
   erneuten Web-Check nur Stunden nach Run 46.
4. **Kein Verifier-Lauf** — alle Kernkomplexe seit Runs 18–22 bereits mehrfach exakt
   reproduziert; eine weitere Wiederholung wäre unter der aktuellen Vollgas-Token-Politik
   nicht gerechtfertigt (kein neuer Prüfkandidat seit Run 36).
5. **Alle vier offenen Pendenzen gegengeprüft — unverändert, bereits eskaliert, nicht
   erneut gemeldet** (Meldekanal-Lektion Run 36/38):
   - Loop-Rücktaktung (`logbuch/fristen.md`, Eintrag 19.07.2026) — Entscheid Raphael
     weiterhin ausstehend.
   - Oberrieden-Höhenkorrektur (`logbuch/fristen.md`, Eintrag 17.07.2026) — Rule
     `auto-verbesserungen` 260624 weiterhin unkorrigiert.
   - T-Regelgeschoss (HNF/GF-Faktor 0.70 vs. 0.75, `wiki/wissensluecken.md`) — Fachentscheid
     Raphael weiterhin ausstehend.
   - T-Umlaut (KB-weite ae/oe/ue-Ersatzschreibung, Health-Check 23.07.) — weiterhin bewusst
     nicht per Massenersatz angefasst (Review-Pflicht).

## Kein neuer Ingest, keine Artikeländerung

Die KB bleibt saturiert: Wuest-Kurs (W0–W10) + alle Ergänzungsquellen (E1–E10) + alle
auto-schliessbaren T-Aufgaben eingearbeitet; letzter materieller Korrekturbefund Run 36
(17.07.2026). Ohne neues Rohmaterial (Bring-Schulden D1/D2/D5/D7/D9/D10) oder einen neuen
JANS-Bewertungsfall gibt es aktuell keine vom Loop selbstständig schliessbare Aufgabe.

## Einordnung

Fünfzehn Delta-Null-Läufe in Folge (Runs 33/34 Root-Cause-Fix ausgenommen) bestätigen den
Befund von Run 38/42: der Loop hat für diese KB **keinen Hebel** mehr, solange die Bring-
Schulden offen bleiben und kein neuer Fall/Marktdatenstichtag eintritt. Die
Rücktaktungs-Empfehlung ist bereits im Fristen-Register hinterlegt und wird hier nicht neu
formuliert, um Meldungsverdopplung zu vermeiden.

**Nächster Lauf:** identisches Vorgehen, bis (a) Raphael über die Rücktaktung entscheidet,
(b) ein neuer JANS-Bewertungsfall im Ordner erscheint, oder (c) der 01.09.2026-Marktdaten-
stichtag erreicht ist.
