# Vollgas-Frühwarnung — Log

Still-by-default: pro Lauf ein datierter Einzeiler. Mail nur bei echtem Handlungsbedarf.
Werte in Mio Tokens, «teuer» = input + cache_creation + output (die relevante Grösse;
«total» ist von billigem cache_read dominiert).

## 2026-07-27 21:45 — GEMELDET (Mail an rj@ gesendet)

Verbrauch teuer/total je Station (Mio):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 22.07. | 2.89 | 45.02 | 2.11 | 62.60 |
| 23.07. | 3.87 | 63.53 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 14.36 | 379.50 | 6.04 | 132.25 |

**Blockade-Status: HART.** Wochenlimit («You've hit your weekly limit · resets 12pm
Europe/Zurich») von 26.07. 00:53 bis 27.07. 12:00 lokal (~35 h) vollständig erschöpft,
beide Stationen. Rund 2'000 Fehlversuche MacBook Pro, ~2'700 Mac Mini — Tagessumme
26.07. exakt 0.00 Mio produktive Tokens auf beiden Stationen.

**Interaktive Sessions:** 0 menschlich getippte Sitzungen mit Limit-Ereignis nachweisbar
(strukturelle Prüfung über isApiErrorMessage/apiErrorStatus 429, Session-Typisierung über
erste User-Eingabe). Kriterium (a) im engen Wortlaut also NICHT erfüllt.

**Betroffen war stattdessen der operative Betrieb:** `logbuch-radar` (04:55) und
`hub-chef-taeglich` (06:39) brachen heute früh nach dem ersten Arbeitsschritt ab, ohne
Briefing-Mail — das Morgenbriefing 27.07. fiel aus. `mahnwesen-verzugscheck` und
`zahlungsabgleich-check` liefen durch.

**Zweitbefund (P1):** `vollgas-chef-radar` ist alle 3 h getaktet und enabled, lastRunAt
aber 25.07. 19:47 — seit über zwei Tagen kein Lauf; RADAR.md steht seit 25.07. 21:55
still. Die Aufsicht hat den 35-h-Ausfall deshalb nirgends gemeldet. Kriterium (c) war
darum nicht messbar.

**Kriterium (b):** kombinierter teurer Tagesverbrauch 25.07. = 53.1 Mio (weit über
18 Mio), 26.07. jedoch 0.00 (weil blockiert) — zwei Folgetage formal nicht erfüllt.

**Meldeentscheid:** trotz formal nicht erfüllter Einzelkriterien gemeldet — ein 35 h
leeres Wochenkontingent mit ausgefallenem Morgenbriefing ist der Sachverhalt, den diese
Frühwarnung verhindern soll. Kein Drossel-Vollzug (das entscheidet Raphael); Mail enthält
`touch /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP` als Option.

**Nächste Mail:** nicht für denselben Befund. Erst wieder bei neuer Erschöpfung, bei
blockierter interaktiver Sitzung oder wenn der Radar weiterhin tot ist.
