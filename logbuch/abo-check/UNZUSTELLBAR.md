# UNZUSTELLBAR — Eskalationsmail des Abo-Checks blieb im Entwurf liegen

**Datum:** 06.09.2026, 18:1x CEST (Station Mac Mini)

Die nach dem zweiten Messausfall in Folge fällige Selbst-Meldung an rj@ ist **nicht
zugestellt worden**. Sie liegt als Entwurf in Apple Mail.

## Verifikation (Lehre 260812f, genau dafür eingebaut)

Entwürfe vor dem Senden: **149**. Nach `send`: **150**. Die Nachricht ist unter ihrem
Betreff in der Entwurfs-Mailbox nachweisbar, in den Gesendeten nicht.
`osascript … send` hat dabei `true` zurückgegeben und der Shell-Rückgabewert war 0 —
beides beweist nichts, genau wie am 12.08.2026 protokolliert.

Der Zähler `ausfaelleInFolge` wird deshalb **nicht** zurückgesetzt: aus Raphaels Sicht ist
weder die Ursache behoben noch die Meldung angekommen.

## Der Mailtext im Wortlaut

**Betreff:** Abo-Auslastung blind seit 2 Läufen — Terminal, claude, /login
**An:** rj@raphaeljans.ch

Der wöchentliche Abo-Auslastungs-Check misst seit zwei Läufen in Folge nichts mehr (30.08. und heute 06.09.). Der Connector scheitert am Token-Refresh: invalid_grant, "Refresh token expired", danach 401 am Usage-Endpunkt.

Letzte belastbare Messung: 23.08.2026, Woche alle Modelle 42 %, Tempo 0.47, GRÜN. Seither vierzehn Tage ohne Prozent-, Reset- und Extra-Usage-Sicht.

Der Zugang selbst lebt: elf laufende claude-Prozesse auf dem Mac Mini, die Lanes arbeiten. Blind ist allein der Connector, dessen Refresh-Token-Kopie durch Rotation überholt wurde. Der Keychain-Stempel steht unverändert auf dem 24.08., der am 30.08. empfohlene Login ist also nicht erfolgt.

Behebung, ein Handgriff auf dem Mac Mini: im Terminal claude starten und /login ausführen, Methode "Claude account with subscription". Danach fährt der Check einen Kontrolllauf.

Details: /Volumes/daten/jans-ai-hub/logbuch/abo-check/ALARM.md

## Einordnung

Der Versandkanal des Mac Mini ist damit ein **zweiter, eigenständiger blinder Fleck** neben
dem Connector. Das Logbuch führt seit dem 28.08.2026 eine osascript-Blockade von Apple Mail
auf dieser Station (ag-gruendung-monitor, Eintrag vom 04.09.). Lesende Abfragen antworten
inzwischen wieder, das Senden nicht. Ein Alarmweg, der still in den Entwürfen endet, ist
kein Alarmweg — die Prüfung der Entwurfszahl ist derzeit das Einzige, was das sichtbar macht.
