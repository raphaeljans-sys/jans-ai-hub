# JANS Wissens-Layer (`wissen/`)

Die dritte Schicht des JANS AI Hub neben **Skills** (Fähigkeiten) und **Rules**
(Verhalten): eine sich selbst verbessernde, kompoundierende Wissensbasis, in der
Claude als **KI-Bibliothekar** arbeitet.

Prinzip (nach Karpathy / Corey Ganim, an die JANS-Harness angepasst): du kippst
Rohmaterial in `raw/`, Claude kompiliert es zu gepflegten, verlinkten Wiki-Artikeln
(`wiki/`), beantwortete Fragen werden zu Reports (`outputs/`) und fliessen ins Wiki
zurück. Ein monatlicher Health-Check (`wissenscheck`) hält alles sauber.

## Aufbau

- `WISSEN-CLAUDE.md` — Meta-Schema (gilt für alle KBs). **Hier zuerst lesen.**
- `<domäne>/` — je Wissens-Domäne ein eigener Knowledge Base nach gleichem Bauplan
  (`raw/ wiki/ outputs/` + `CLAUDE.md` + `CHANGELOG.md`).

## Aktuelle KBs

- `baurecht/` — Schweizer Baurecht (Fokus ZH/SZ). Pilot, Seed aus `docs/baurecht/`.
- `projekt-lessons/` — projektübergreifende Erfahrungen/Lessons (Bauleitung, Healthcare).
  Frisch angelegt, bereit zur Befüllung.

## Geregelt durch

- Rule `rules/wissens-bibliothekar.md` (Rolle/Autonomie: active-with-flagging)
- Skill `skills/wissenscheck/` (Health-Check, 7 Audits, 2 Phasen)
- Rule `rules/sync-kanonische-quelle.md` (NAS kanonisch — nur hier editieren)

## Neuen KB anlegen

Siehe Abschnitt „Neuen KB anlegen" in `WISSEN-CLAUDE.md`.
