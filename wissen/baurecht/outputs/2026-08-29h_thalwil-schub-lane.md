---
titel: Schub-Lane BAURECHT-THALWIL — achter Lauf 2026-08-29
datum: 2026-08-29
---

# Schub-Lane BAURECHT-THALWIL, achter Lauf (2026-08-29h)

## Auftrag

Wochenkontingent-Ausschöpfung vor dem Montags-Reset. Nächsten offenen Batch der
Korpus-Queue `training/KORPUS-QUEUE-thalwil-reglemente.md` (T1-T8) abarbeiten, mit
Schwerpunkt Umgebungs-/Gestaltungsrecht und Fassungsstand-Pflicht für kantonale UND
kommunale Erlasse.

## Befund

Kein offener Batch. Die Queue (T1-T9, 234 Dateien) ist seit Run 87 (23.08.2026)
vollständig abgearbeitet und wurde allein am 29.08.2026 bereits siebenmal unabhängig
bestätigt (Läufe a-g). Statt eines achten reinen Textbefunds wurde diesmal eine echte
Live-Quelle gezogen: die vier tragenden Erlasse von
[[umgebungsgestaltung-und-einfriedungen]] — PBG, ABV, VErV, BZO Thalwil — frisch über
`skills/baurecht/connectors/recht-ch.mjs` von zhlex bezogen und byte-genau gegen die
bestehenden `raw/`-Volltexte verglichen.

**Ergebnis:**
- VErV: weiterhin Nachtrag 127 (unverändert seit Buch-Run 83, 23.08.2026)
- ABV: weiterhin Nachtrag 127 (unverändert seit 07.06.2026)
- BZO Thalwil: unverändert seit 07.06.2026 (byte-identisch bis auf Abrufdatum)
- PBG: Nachtrag 134 (statt 133) — kein Neufund, bereits am 24.08.2026 (Buch-Run 122)
  erfasst (`raw/260824_amtlich_zh_pbg-nachtrag134-aenderungen.md`); betrifft § 221 PBG
  (Zwischennutzungen) und die IVHB-Anpassungsfrist, nicht die in diesem Artikel
  geführten §§ 238/238a/240/241/257/309 PBG.

Kein neues totes Recht (⚠), keine neue Lücke. Die vier live gezogenen Volltexte waren
reine Duplikate und wurden nach dem Abgleich wieder gelöscht (kein Ingest nötig).

## Änderungen

- `wiki/umgebungsgestaltung-und-einfriedungen.md`: ein neuer `verifiziert`-Eintrag
  (append-only, `+1/-0`).
- `training/KORPUS-QUEUE-thalwil-reglemente.md`: Prüflauf-Eintrag 2026-08-29h.
- `CHANGELOG.md`: Eintrag 2026-08-29h.

## Offen (ausserhalb dieses Auftrags, nicht bearbeitet)

- Kap. 22/23 (Band 2, allgemeines Buch-Curriculum) — blockiert ohne Screenshot-Zugriff
  auf die SharePoint-Bibliothek `PL - 02_Recht_Norm`.
- Art.-24c-Abs.-2-RPG-Diskrepanz (Run 137) — dieselbe Blockade.
- Drei datenbankbedingt unverifizierbare Alt-Fallzitate, [[geschosse-und-kniestock]].

Diese vier Punkte gehören zum allgemeinen Buch-Trainingsprogramm, nicht zur
Thalwil-Reglemente-Queue, und wurden daher nicht bearbeitet.

## Fazit

Nichts mehr offen aus der Thalwil-Reglemente-Queue oder der Priorität (d). Die heutige
Ausschöpfung dieser Schub-Lane sollte auf eine gezielte Fassungsstand-Nachprüfung an
anderen KB-Artikeln oder auf den allgemeinen Buch-Loop umgelenkt werden, nicht auf einen
neunten Nullbefund an derselben Stelle.
