#!/bin/bash
# Kontingent-Lage dokumentieren + Takt-Entscheide erneuern (Auftrag Raphael 12.08. spaet).
# Wartet zuerst, bis kein anderer Dispatch-Lauf mehr aktiv ist (max. 30 Min).
R="$1"
for i in $(seq 1 30); do
    pgrep -f "claude (-p|--print)" > /dev/null 2>&1 || break
    sleep 60
done
bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" 'Neue Kontingent-Lage dokumentieren und Takt-Entscheide erneuern: Das private Max-Abo bleibt bei 20x, zusaetzlich neues Team-Abo mit zwei Seats fuer die Stationen (Standard-Nutzung). 1) Datierter Chronik-Eintrag zur neuen Lage in rules/betrieb-chronik.md. 2) Vorschlagsliste als Entscheidungsvorlage: welche pausierten Loops reaktivieren (planungsgrundlagen, synobsis, Nachtfenster-Dichte, KORPUS-QUEUE bauprodukte), welche bewusst pausiert bleiben (baurecht-buch = Festigungsmodus) — je mit Begruendung und Token-Schaetzung; Raphael entscheidet per Liste, also NICHTS entpausen oder umtakten. Ablage der Liste unter docs/konzepte/260813-Kontingent-Takt/ und Verweis im Fristen-Register. 3) Migrationsplan Team-Abo: welches Konto auf welcher Station, was passiert mit Scheduled-Task-Registry, Routinen und Sessions beim Kontowechsel, Risiken (Lehre 09.08.: stille Registry-Ausfaelle), Nachmessung via task-takt-nachweis (A8) — Plan vorlegen, NICHTS umstellen. 4) Kontingent-Aufsicht anpassen: claude-abo-auslastung und vollgas-fruehwarnung auf drei Toepfe erweitern (Max 20x privat + 2 Team-Seats); Lehre vom 09.08. fest einbauen: Warnungen werden GESENDET (Apple Mail, Standard-Absender), nicht als Entwurf gespeichert — diese Anpassung darf umgesetzt werden, mit Messung (Testlauf mit erzwungener Warnschwelle) und Chronik-Eintrag. Rules beachten (sync-kanonische-quelle, Meldepflicht). Vorher pruefen, was der A-Paket-Lauf und die Audit-Session an claude-abo-auslastung/vollgas-fruehwarnung bereits geaendert haben — nicht doppelt bauen. Abschluss: Kurzbilanz je Punkt mit Dateipfaden.' > "$R/antwort.md" 2>&1
echo "Kontingent-Dispatch beendet."
