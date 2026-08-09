# Rule: Wege pruefen, bevor eine Aufgabe als unmoeglich gilt

**Immer aktiv, Kurzregel.** Bevor eine Aufgabe mit «geht nicht» oder «Aktion Raphael»
zurueckgegeben wird, ist das **Wege-Register** zu konsultieren:
`/Volumes/daten/jans-ai-hub/connectors/WEGE.md`.

## Die Regel

1. **Erst nachschlagen, dann probieren.** Das Register nennt je Faehigkeit mehrere Wege in
   Rangfolge, mit vollem Pfad und Testbefehl. Ein Weg, der nicht im `PATH` liegt, ist
   trotzdem ein Weg.
2. **Alle Wege durch, bevor aufgegeben wird.** Erst wenn jeder gelistete Weg nachweislich
   versagt hat, ist eine Aufgabe blockiert. «Ich habe drei Dinge probiert» genuegt nicht,
   wenn das Register einen vierten kennt.
3. **Werkzeug kaputt ist nicht Weg tot.** Zuerst `bash scripts/wege-doctor.sh` laufen lassen.
4. **Jede gelaufene Sackgasse wird eingetragen.** Dieselbe Sackgasse zweimal zu laufen ist
   der teuerste vermeidbare Fehler.
5. **Ein leeres Ergebnis ist zuerst eine Aussage ueber das Werkzeug**, nicht ueber die Quelle
   (gleiche Familie wie `auto-verbesserungen` 260730b und 260807).

## Vollmacht

Was ohne Rueckfrage getan werden darf, steht abschliessend in
`logbuch/AKTIONS-WHITELIST.md` (seit 09.08.2026 Version v2, A1 bis A9). Kurz:
**umkehrbare Arbeit wird getan, nicht vorgelegt**; was nach aussen wirkt, laeuft ueber das
Widerrufsfenster; Zahlungen bleiben ausgenommen.

Zwei Schichten liegen ueber der Whitelist und werden **nie umgangen**: der
Auto-Mode-Klassifikator von Claude Code und die Sync-Task-Freigabe-Schwelle. Wer dort
haengenbleibt, legt den fertigen Befehl vor, statt einen Umweg zu suchen.

## Anlass

KISPI, 08./09.08.2026: Der abgelaufene Gastzugriff von sieben Projektbeteiligten wurde als
«kein Weg vorhanden» zurueckgegeben. Tatsaechlich war die CLI for Microsoft 365 die ganze
Zeit per Zertifikat angemeldet, mit `Sites.FullControl.All`. Sie lag nur nicht im `PATH`.
Der Fall und die belegten Sackgassen stehen im Register.

## Wann NICHT

- Bei trivialen Auskuenften und Statuschecks. Die Regel greift, sobald eine Aufgabe an einem
  Zugang zu scheitern droht.
- Sie hebt keine Sicherheitsgrenze auf. Ein Weg, den es gibt, ist nicht automatisch ein Weg,
  den man gehen darf; dafuer gilt die Whitelist.
