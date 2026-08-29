---
titel: Schub-Lane BAURECHT-THALWIL — Lauf 2026-08-29j
datum: 2026-08-29
---

# Schub-Lane BAURECHT-THALWIL, Lauf 2026-08-29j

## Auftrag

Wochenkontingent-Ausschöpfung vor dem Montags-Reset. Nächsten offenen Batch der Korpus-Queue
`training/KORPUS-QUEUE-thalwil-reglemente.md` (T1-T8) abarbeiten, Schwerpunkt Umgebungs-/
Gestaltungsrecht, Fassungsstand-Pflicht für kantonale und kommunale Erlasse.

## Befund

Kein offener Batch. Die Queue (T1-T9, 234 Dateien) ist seit Run 87 (23.08.2026) vollständig
abgearbeitet und wurde allein am 29.08.2026 bereits neunfach unabhängig bestätigt (Läufe a-i).
Statt einer zehnten reinen Nullbefund-Wiederholung — von Lauf h explizit als nicht mehr
zielführend eingestuft — wurde dieser Lauf auf einen bislang unadressierten, konkreten Befund
verwendet.

**Kopfzeilen-Korrektur:** Die `umfang:`-Angabe in der Queue-Kopfzeile nannte seit Anlage
(03.08.2026) unverändert 243 Dateien/13 Top-Ordner, obwohl acht der neun Bestätigungsläufe
desselben Tages bereits 234 Dateien ausgezählt hatten — die Kopfzeile selbst wurde dabei nie
gegengeprüft. Live-Nachzählung im OneDrive-Quellordner (`find`, Mac-Mini-Station, direkter
Zugriff): **234 Dateien, 11 Top-Ordner** bestätigt. Kopfzeile entsprechend korrigiert. Ursache
der ursprünglichen Differenz nicht mehr rekonstruierbar (keine Versionshistorie des
Quellordners geprüft).

**Betriebsbefund (kein Fachinhalt):** Eine Notiz aus einem vorangegangenen Lauf war ausserhalb
des NAS-Mounts (auf dem SSD-Klon) geschrieben und nicht regelkonform (Regel
`sync-kanonische-quelle`) commitet worden — sie lag als unkommittierte Änderung im lokalen
Klon. Sie wurde inzwischen vom Mac-Mini-eigenen Auto-Sync automatisch als Commit `4272900a3`
nachträglich eingebucht (bereits auf GitHub); kein Handlungsbedarf, aber Hinweis für künftige
Läufe: ausschliesslich über den NAS-Mount schreiben.

Kein totes Recht (⚠) neu gefunden, keine neue Lücke, kein Ingest, keine Wiki-Änderung.

## Änderungen

- `training/KORPUS-QUEUE-thalwil-reglemente.md`: Kopfzeile `umfang:` korrigiert
  (243/13 → 234/11) + Prüflauf-Eintrag 2026-08-29j (`git diff --numstat`: `+27/-1`, die eine
  Löschung ist die begründete Kopfzeilen-Korrektur, kein Suchen-und-Ersetzen).
- `CHANGELOG.md`: Eintrag 2026-08-29j (reine Einfügung, `+18/-0`).

## Fazit

Nichts offen aus der Thalwil-Reglemente-Queue, der Priorität (d) oder ihren Querverweisen.
Für die nächste Ausschöpfung dieser Schub-Lane (unverändert seit Lauf h): allgemeiner Buch-Loop
oder eine gezielte Fassungsstand-Nachprüfung an anderen, noch nicht geprüften KB-Artikeln —
nicht ein elfter Bestätigungslauf an derselben Stelle.
