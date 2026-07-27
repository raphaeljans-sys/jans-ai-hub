# Grobkosten-Training — Lauf uebersprungen (Kollision)

Datum: 27.07.2026, 12:00 Uhr
Station: Mac Mini (dieser Host)

## Befund

Vor Beginn der Register-Arbeit wurde gemaess Kollisionsschutz (Rule 260724) per `ps`
geprueft, ob auf diesem Host bereits eine zweite Instanz des Loops `grobkosten-training`
laeuft.

Ergebnis: JA — PID 1836 (`claude -p ... grobkosten-training`) lief zum Pruefzeitpunkt
bereits aktiv (Startzeit 11:59 Uhr, ELAPSED 00:20 beim Check um 12:00:10 Uhr), mit
identischem Prompt-Inhalt.

## Massnahme

Gemaess Protokoll zurueckgetreten:
- Keine Edits an `training/quellen-inventar.md`, `wiki/kennwerte.md`, `wiki/INDEX.md`,
  `wiki/QUESTIONS.md`, `raw/_INGESTED.md` oder `CHANGELOG.md`.
- Kein `git commit`.
- Nur dieser eindeutig benannte Report wird abgelegt.

Die laufende Instanz (PID 1836) fuehrt den eigentlichen Trainingslauf durch; deren
Ergebnis findet sich im naechsten regulaer benannten `outputs/2026-07-27_grobkosten-runN.md`.
