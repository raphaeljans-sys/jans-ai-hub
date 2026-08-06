---
title: Eine nachgerüstete Sperre wirkt, aber sie ist unauffindbar, wenn der Vorbau ihren Grund überschreibt
status: belegt
last_updated: 2026-08-06
sources:
  - scripts/lauf-gate.sh Z. 182–219 (Wochenkontingent-Block, ergänzt 03.08.2026)
  - scripts/arbeits-weiche.sh Z. 100–106 (gate_ok, Ausgabe nach /dev/null) und Z. 149–157 (Grund-Bildung)
  - logbuch/arbeits-weiche/*.jsonl (26 Betriebs-Entscheide 31.07.–06.08.2026)
  - logbuch/laeufe/*.jsonl (7 Läufe rc=1, result_tail «You've hit your weekly limit», 01.–03.08.2026)
  - logbuch/arbeits-weiche/260806-wochen-review.md
links:
  - "[[hub-betrieb-runner]]"
---

# Eine nachgerüstete Sperre wirkt, aber sie ist unauffindbar, wenn der Vorbau ihren Grund überschreibt

## Der Fall

Vom 01.08. 23:30 bis 03.08. 05:30 endeten sieben Nachtschicht-Läufe nach 6 bis 9
Sekunden mit rc=1 und 0.00 USD. Grund war ein erschöpftes Wochenkontingent, nicht
der Speicher: die Stationen hatten in genau diesen Momenten 8.8 bis 9.9 GB frei.

Am 03.08.2026 wurde die Lücke geschlossen, und zwar im **Lauf-Gate**
(`scripts/lauf-gate.sh`, Wochenkontingent-Block). Die vorgelagerte Arbeits-Weiche
fragt dieses Gate über `gate_ok` und erbt die Prüfung damit, ohne selbst geändert
worden zu sein.

## Die verbleibende Schwäche

Der Vorbau reicht den Grund nicht weiter. `gate_ok` wirft die Gate-Ausgabe nach
`/dev/null` und wertet nur den Exit-Code aus. Weist das Gate wegen des Kontingents
ab, schreibt die Weiche in ihr Journal:

    beide Stationen nicht bereit (mini 12.0 GB Druck 1 · macbook 3.4 Druck 2)

Das ist eine reine Speicheraussage, die eine kerngesunde Station beschreibt. Die
Sperre greift korrekt, aber jede spätere Auswertung des Journals sieht eine
Abweisung, für die die protokollierten Messwerte keinen Anlass geben, und sucht am
falschen Ort.

## Die verallgemeinerbare Regel

**Wer eine Schutzmechanik in einer tieferen Schicht nachrüstet, muss prüfen, ob jede
vorgelagerte Schicht ihren Grund weiterträgt.** Ein Exit-Code transportiert die
Wirkung, nicht die Begründung. Wo der Vorbau die Begründung selbst zusammensetzt,
überschreibt er sie stillschweigend mit dem, was er allein kennt, und die neue
Sperre wird im Betrieb unsichtbar.

Zwei Prüffragen beim Nachrüsten einer Sperre:

1. Welche Aufrufer stehen zwischen der Sperre und dem Journal, das später gelesen wird?
2. Bildet einer davon seinen Abweisungsgrund aus eigenen Messwerten statt aus der
   Antwort der Sperre? Dann protokolliert er ab sofort eine Halbwahrheit.

## Nebenbefund derselben Familie

Dieselbe Trennung zerreisst die Wirkungsmessung: Die Weiche entscheidet unter dem
Namen `nachtschicht`, der Lauf läuft unter `dispatch-versuch1`. Beide Journale teilen
keinen Schlüssel, die Zuordnung von 26 Entscheiden zu 31 Läufen musste über
Zeitstempel von Hand erfolgen. Ein durchgereichter Name ist dieselbe Klasse von
Versäumnis wie ein nicht durchgereichter Grund.
