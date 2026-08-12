🛰️  JANS Dispatch — Lauf 20260813-001215-34351
    Auftrag : Neue Kontingent-Lage dokumentieren und Takt-Entscheide erneuern: Das private Max-Abo bleibt bei 20x, zusaetzlich neues Team-Abo mit zwei Seats fuer die Stationen (Standard-Nutzung). 1) Datierter Chronik-Eintrag zur neuen Lage in rules/betrieb-chronik.md. 2) Vorschlagsliste als Entscheidungsvorlage: welche pausierten Loops reaktivieren (planungsgrundlagen, synobsis, Nachtfenster-Dichte, KORPUS-QUEUE bauprodukte), welche bewusst pausiert bleiben (baurecht-buch = Festigungsmodus) — je mit Begruendung und Token-Schaetzung; Raphael entscheidet per Liste, also NICHTS entpausen oder umtakten. Ablage der Liste unter docs/konzepte/260813-Kontingent-Takt/ und Verweis im Fristen-Register. 3) Migrationsplan Team-Abo: welches Konto auf welcher Station, was passiert mit Scheduled-Task-Registry, Routinen und Sessions beim Kontowechsel, Risiken (Lehre 09.08.: stille Registry-Ausfaelle), Nachmessung via task-takt-nachweis (A8) — Plan vorlegen, NICHTS umstellen. 4) Kontingent-Aufsicht anpassen: claude-abo-auslastung und vollgas-fruehwarnung auf drei Toepfe erweitern (Max 20x privat + 2 Team-Seats); Lehre vom 09.08. fest einbauen: Warnungen werden GESENDET (Apple Mail, Standard-Absender), nicht als Entwurf gespeichert — diese Anpassung darf umgesetzt werden, mit Messung (Testlauf mit erzwungener Warnschwelle) und Chronik-Eintrag. Rules beachten (sync-kanonische-quelle, Meldepflicht). Vorher pruefen, was der A-Paket-Lauf und die Audit-Session an claude-abo-auslastung/vollgas-fruehwarnung bereits geaendert haben — nicht doppelt bauen. Abschluss: Kurzbilanz je Punkt mit Dateipfaden.
    Repo    : /Users/raphaeljans/Developer/jans-ai-hub
    Modus   : acceptEdits   Budget: $5
    Log     : /Volumes/daten/jans-ai-hub/dispatch/log/20260813-001215-34351.md
────────────────────────────────────────────────────────────
Kurzbilanz:

1. Chronik-Eintrag neue Kontingent-Lage: `rules/betrieb-chronik.md`, Abschnitt 260813. Dokumentiert Max 20x privat bleibt + neues Team-Abo mit 2 Seats, mit ausdrücklichem Verweis auf den Widerspruch zur bisherigen Max-5x-Notiz.

2. Entscheidungsvorlage (Loop-Reaktivierung + Migrationsplan in einem Dokument): `docs/konzepte/260813-Kontingent-Takt/260813-Kontingent-Takt.md`. Nichts entpaust oder umgetaktet. Verweis im Fristen-Register: `logbuch/fristen.md`, Eintrag 13.08.2026.

3. Migrationsplan Team-Abo: im selben Dokument, Abschnitt 2 (Konto-Zuordnung Variante A/B, Auswirkung auf die lokale Scheduled-Task-Registry, Risiken, Nachmessung über `task-takt-nachweis`/A8 — das Script existiert nicht, der A-Paket-Lauf dafür ist mit `budget_exhausted` abgebrochen). Nichts umgestellt.

4. Kontingent-Aufsicht erweitert: `templates/scheduled-tasks/mac-mini/claude-abo-auslastung/SKILL.md` und `templates/scheduled-tasks/macbook-pro/vollgas-fruehwarnung/SKILL.md` — Kontext auf drei Töpfe aktualisiert, Sendeweg-mit-Verifikation (Entwürfe vor/nach `send` zählen) als Pflichtschritt eingebaut. Chronik-Eintrag 260813b. Zwei Einschränkungen, offen kommuniziert statt verschwiegen: der geforderte reale Testlauf mit erzwungener Warnschwelle wurde aus Budgetgründen dieses Laufs nicht ausgeführt (steht als Lücke in 260813b), und die lokale Stationskopie von `claude-abo-auslastung/SKILL.md` unter `~/.claude/scheduled-tasks/` konnte wegen einer Permission-Sperre auf diese Datei nicht automatisch synchronisiert werden — das muss noch manuell nachgezogen werden, sonst zieht der nächste Lauf die alte Fassung.

Memory aktualisiert: `projekt_claude_abo_max5x.md` als überholt markiert, neue Notiz `projekt_claude_abo_drei_toepfe.md` angelegt, Index nachgeführt. Alles über `nas-commit-now.sh` committet und gepusht (kein `git` über SMB).
────────────────────────────────────────────────────────────
✅ Dispatch erledigt (Lauf 20260813-001215-34351).
   Protokoll: /Volumes/daten/jans-ai-hub/dispatch/log/20260813-001215-34351.md
