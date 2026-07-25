# Trainingslauf 15 — Spec-Methode (14.07.2026, 05:09)

## Ausgangslage
Letzter Lauf: 14 (14.07., 01:10) — Verifikationslauf, Praezisierung der Reue-Pruefung
(«eine "haelt an"-Diagnose hat ein Ablaufdatum»). Dieser Lauf triggert nur gut vier Stunden
spaeter am selben Tag, obwohl die Skill-Beschreibung seit 13.07. auf **1x taeglich 04:10**
gedrosselt ist (Auto-Verbesserung 260713, «Wettbewerbs-DNA ist der Fokus-Harness»).

## 1. Stand geprueft
- `outputs/`: keine neue reale Spec seit Lauf 7 (Wettbewerbs-Layer, 12.07.) — unveraendert.
- `logbuch/fristen.md`: unveraendert seit Commit 13.07. 20:47 (vor Lauf 14). Kein neuer
  Monitor-/Radar-Eintrag zur AG-Gruendung seit Lauf 14 geprueft — nichts zu verifizieren.
- Commit-Historie seit 14.07. 01:10 (`git log --since`): ausschliesslich `nas-selfcommit`-
  Batches, ein `normen`-Retro-Verifikationslauf und ein `Immobewertung-Training`-Delta-Check
  («ohne Aenderung») — kein Ereignis, das die Spec-KB betrifft.
- `QUESTIONS.md` F1/F3: weiterhin ohne neuen Beleg (F1-Ueberdehnungsgegentest unbelegt,
  F3 nur noch Marketing/Text offen).

## 2. Befund
**Kein neues Material seit Lauf 14.** Eine erneute volle Auswertung oder ein weiterer
Environment-Sweep waere reine Wiederholung ohne neuen Anlass — laut `training/PROGRAMM.md`
("Zwei Lauf-Typen") und der Leitplanke "Gate nicht ueberdehnen" genau die Art von
selbstgemachter Arbeit, die der Loop vermeiden soll. Dieser Lauf bleibt bewusst minimal.

## 3. Prozess-Beobachtung (fuer den Loop selbst)
Die Drosselung auf 1x/Tag (04:10, Auto-Verbesserung 260713) scheint fuer den Scheduled Task
`spec-training` noch nicht konsequent zu greifen — dieser Lauf feuerte ca. 05:09, keine 4 Std.
nach Lauf 14 (01:10). Das ist eine Scheduling-Frage ausserhalb des KB-Mandats (Cron-Konfiguration
der Station), nicht etwas, das die Spec-Methodik selbst betrifft. Wird notiert, nicht autonom
am Scheduler repariert.

## 4. Bewusst nicht getan
- Kein weiterer Environment-Sweep (Lauf 13 hat Drei-Listen-Konsistenz + KB-zu-Skill-Sync frisch
  geprueft; Lauf 14 hat die letzte offene Reue-Pruefung vertieft).
- Keine erfundene F1/F3-Fuellung.
- Keine Aenderung an `wiki/verifier.md`, `wiki/QUESTIONS.md`, `rules/spec-methode.md` oder
  `skills/spec/SKILL.md` — kein neuer Beleg, der eine Aenderung rechtfertigt.
- Kein Mail-Versand.

## Naechstes
- Naechster Lauf: sobald eine neue reale Spec eintrifft, voller Auswertungslauf; sonst wieder
  gezielte Reue-Pruefung mit neuem Primaerquellen-Check statt Wiederholung.
- Scheduling-Drosselung `spec-training` auf effektiv 1x/Tag pruefen (Cron/Task-Konfiguration),
  falls Mehrfachlaeufe am selben Tag weiter auftreten — Hinweis an Raphael, kein KB-Thema.
