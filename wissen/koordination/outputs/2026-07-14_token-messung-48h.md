# Token-Messung 48h nach Vollgas-Start

**Datum:** 14.07.2026, 16:00 (automatischer Kontroll-Lauf, Scheduled Task `token-messung-140716`)
**Anlass:** Kontrollmessung 48 h nach dem Token-Vollgas-Start vom 12.07.2026 (Rule `auto-verbesserungen.md`, Eintrag 260712b/c/e).
**Kontext:** Am 14.07.2026, 12:53 wurde die Vollgas-Phase per Rule 260714 wieder **gedrosselt** (Endlos-Runner gestoppt, Radar auf «Schoner»). Diese Messung liefert die Faktenbasis dazu.

Methodik: Auswertung aller lokalen Transkripte `~/.claude/projects/*/*.jsonl` beider Stationen, je Zeile `message.usage`, Duplikate über `(message.id, requestId)` ausgeschlossen, gruppiert nach Kalendertag. «Teuer» = Input + CacheWrite + Output (Cache-Read ist die günstige Komponente). Gemessene Werte, nicht geschätzt.

---

## 1. MacBook Pro — Tokens pro Tag

| Datum | Total | davon «teuer» (In+CW+Out) | Nachrichten |
|---|---|---|---|
| 05.07. | 8.3 Mio | 0.88 Mio | 61 |
| 06.07. | 54.4 Mio | 3.56 Mio | 308 |
| 07.07. | 16.1 Mio | 1.80 Mio | 129 |
| 08.07. | 42.8 Mio | 2.90 Mio | 249 |
| 09.07. | 26.3 Mio | 2.02 Mio | 161 |
| 10.07. | 36.4 Mio | 2.80 Mio | 204 |
| 11.07. | 40.0 Mio | 1.98 Mio | 208 |
| **12.07. (Vollgas-Start)** | **288.7 Mio** | **15.19 Mio** | 1547 |
| **13.07. (1. voller Vollgas-Tag)** | **630.9 Mio** | **37.60 Mio** | 3788 |
| 14.07. (bis 16:00, Teiltag) | 341.0 Mio | 20.14 Mio | 1989 |

Referenz-Schnitt vor Vollgas (05.–11.07.): rund 32 Mio total/Tag, davon ca. 2.3 Mio «teuer».

## 2. Mac Mini — Tokens pro Tag (via SSH gemessen)

| Datum | Total | davon «teuer» (In+CW+Out) | Nachrichten |
|---|---|---|---|
| 05.07. | 8.7 Mio | 0.33 Mio | 55 |
| 06.07. | 15.7 Mio | 0.72 Mio | 98 |
| 07.07. | 9.0 Mio | 0.37 Mio | 52 |
| 08.07. | 36.3 Mio | 1.71 Mio | 199 |
| 09.07. | 24.1 Mio | 1.65 Mio | 132 |
| 10.07. | 23.3 Mio | 1.00 Mio | 113 |
| 11.07. | 69.7 Mio | 3.24 Mio | 374 |
| **12.07. (Vollgas-Start)** | **168.4 Mio** | **5.92 Mio** | 1395 |
| **13.07. (1. voller Vollgas-Tag)** | **662.0 Mio** | **27.06 Mio** | 4078 |
| 14.07. (bis 16:00, Teiltag) | 397.5 Mio | 15.02 Mio | 2192 |

Referenz-Schnitt vor Vollgas (05.–11.07.): rund 27 Mio total/Tag, davon ca. 1.3 Mio «teuer».

## 3. Beide Stationen zusammen — Vollgas-Tage

| Datum | Total (beide) | «teuer» (beide) |
|---|---|---|
| 12.07. | 457 Mio | 21.1 Mio |
| **13.07. (Spitzentag)** | **1'293 Mio (≈ 1.29 Mrd)** | **64.7 Mio** |
| 14.07. (bis 16:00) | 738 Mio | 35.2 Mio |

---

## 4. Faktor gegenüber vor Vollgas

Bezugsgrösse = Tagesschnitt 05.–11.07. je Station.

- **MacBook Pro, 13.07.:** Total ×20 (630.9 vs. 32 Mio), «teuer» ×16 (37.6 vs. 2.3 Mio).
- **Mac Mini, 13.07.:** Total ×25 (662.0 vs. 27 Mio), «teuer» ×21 (27.1 vs. 1.3 Mio).
- **Grössenordnung insgesamt:** der Verbrauch ist am ersten vollen Vollgas-Tag um das **≈ 20-fache** hochgesprungen — genau die beabsichtigte «voll an den Anschlag»-Wirkung.
- Anteil «teurer» Tokens am Total unverändert bei rund 5–6 %; der Löwenanteil ist günstiger Cache-Read. Der Vollgas-Effekt ist also mengengetrieben (viele Läufe), nicht durch teurere Einzelaufrufe.

**API-Gegenwert (grobe Schätzung, dient nur der Einordnung — das Max-Abo rechnet nicht pro Token ab):** ausgehend vom Referenz-Anker (ca. 2.5–3.5 Mio «teuer» ≈ 100–120 USD/Tag beim MacBook) entspricht der Spitzentag 13.07. beider Stationen zusammen einem Pay-per-Use-Gegenwert von grob **2'000–2'500 USD/Tag**, gegenüber ca. 150 USD/Tag vorher (Faktor ≈ 15). Klar als Schätzung markiert.

## 5. Limit-Ereignisse — ja, deutlich

Auswertung der Transkripte auf echte API-Fehler-Marker (`isApiErrorMessage`), nach Inhalt kategorisiert. Die reine Stichwortsuche nach «rate/limit/overloaded» ist unbrauchbar, weil diese Wörter im System-Prompt/in den Rules selbst vorkommen — deshalb wurde auf die echten Fehler-Payloads gefiltert.

**Dominierendes Ereignis: 5-Stunden-Sitzungslimit** («You've hit your session limit · resets …»). Das ist das rollierende 5h-Fenster des Max-Abos — und das wiederholte Erreichen war unter Rule 260712e ausdrücklich das Ziel (Wochenlimit füllen).

| Datum | MacBook Pro (5h-Limit-Treffer) | Mac Mini (5h-Limit-Treffer) |
|---|---|---|
| 12.07. | ≈ 203 | ≈ 424 |
| 13.07. | ≈ 814 | ≈ 1'257 |
| 14.07. (bis 16:00) | ≈ 380 | ≈ 403 |

**Monatliches Guthaben-Limit** («You've hit your monthly spend limit»): am 12.07. mehrfach getroffen (MacBook 11×, Mac Mini 189×), danach nicht mehr — deckt sich mit dem Nutzungsguthaben/Credits-Stand von 108 % aus dem /usage-Screenshot vom 14.07.
**Overloaded (529):** nur vereinzelt (je 1× am 12.07.) — kein Anbieter-Engpass.
**«Not logged in»:** wenige (headless-CLI-Login), gemäss RADAR zwischenzeitlich behoben und kein aktueller Blocker.

**Scheduled Tasks:** alle Lern-Loops sind planmässig gelaufen (letzte Läufe 13./14.07. gemäss `lastRunAt`), keine systematischen Ausfälle. Nur der `wettbewerbs-dna-training`-Loop und der Endlos-Runner sind seit dem Drossel-Entscheid (12:53) bewusst deaktiviert/gestoppt.

## 6. Einordnung und Empfehlung

Die Messung bestätigt beide Ziele der Vollgas-Phase: der Verbrauch ist um das ≈ 20-fache gestiegen und die 5h-Fenster wurden tatsächlich vieler Male ausgereizt. Zugleich zeigt sie, warum die Drosselung (Rule 260714) richtig kam: bei der Rate vom 13.07. wäre das Wochenlimit (Stand 81 %, Reset Mo 11:59) lange vor dem Reset auf 100 % gelaufen, und das monatliche Guthaben ist bereits über 100 %.

**Empfehlung: an der bereits umgesetzten Drosselung festhalten — nicht weiter hochdrehen.**
- Endlos-Runner bleibt gestoppt (STOP + STOP-Macmini seit 12:53), Radar bleibt Schoner.
- Lern-/Trainings-Loops nur noch im Nachtfenster (22:00–06:00), je 1× täglich — so trägt das verbleibende Wochen-Kontingent sicher bis zum Reset am Montag.
- Operative Monitore (logbuch-radar, hub-chef, heartbeat, mahnwesen, zahlungsabgleich) unverändert am Morgen belassen.
- Wiederhochfahren erst nach dem Wochen-Reset und nur auf ausdrückliche Anweisung.

Kein Handlungsbedarf über die schon getroffene Drosselung hinaus.
