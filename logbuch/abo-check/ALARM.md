# ALARM — Abo-Auslastung blind

**Datum:** 06.09.2026, 18:0x CEST (Station Mac Mini)
**Ausfälle in Folge:** 2 (30.08.2026 und 06.09.2026)
**Letzte belastbare Messung:** 23.08.2026, Woche alle Modelle 42 %, Tempo 0.47, Ampel GRÜN.
Seither vierzehn Tage ohne Prozent-, Reset- und Extra-Usage-Sicht.

## Fehlermeldung im Originalwortlaut

```
Token-Refresh fehlgeschlagen (HTTP 400, {"error":"invalid_grant","error_description":"Refresh token expired"}).
Der gespeicherte Refresh-Token ist entwertet (Rotation). BEHEBUNG: im Terminal
`claude` starten und `/login` ausfuehren — danach laeuft der Connector wieder unbeaufsichtigt.
Usage-Endpunkt antwortet 401: Token ungueltig oder abgelaufen.
```

Gemessenes Konto: `raphaeljans` (privates Max 20x). Keychain-Eintrag «Claude Code-credentials»,
Änderungsstempel **24.08.2026 15:48 UTC — unverändert seit dem letzten Lauf**. Der am 30.08.
empfohlene `/login` ist also nicht erfolgt; die Ursache besteht unverändert fort.

## Was NICHT kaputt ist

Der Zugang selbst lebt. Gegenmessung im selben Lauf: elf laufende `claude`-Prozesse auf der
Station, die Schub-Lanes arbeiten. Blind ist allein der Connector, der eine durch Rotation
überholte Refresh-Token-Kopie hält. Der Befund ist kein entwerteter Account.

Auch die Überwachung als solche fällt nicht aus: die Kontingent-Frühwarnung rechnet aus den
eigenen Lauf-Logs und meldet weiter. Es fehlt die Prozent-, Reset- und Extra-Usage-Sicht.

## Behebung (ein Handgriff, Aktion Raphael)

Im Terminal auf dem Mac Mini `claude` starten und `/login` ausführen, Methode
«Claude account with subscription». Danach einen Kontrolllauf des Checks fahren.

## Strukturell offen (Entscheid Raphael)

Bei Dutzenden parallel rotierenden Läufen ist der nächste Ausfall erwartbar. Ein eigener
Keychain-Service-Name beziehungsweise ein eigenes Konto für den Connector ist nicht gebaut.
