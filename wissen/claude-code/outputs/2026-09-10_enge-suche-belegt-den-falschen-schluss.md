---
title: Die enge Suche liefert ein richtiges Ergebnis und belegt damit den falschen Schluss
status: established
last_updated: 2026-09-10
sources:
  - Eigener Lauf `logbuch-radar` 10.09.2026, 06:5x bis 07:1x (MacBook Pro), Messungen am Original
  - Gegenprobe Apple Mail, Konto Exchange, Gesendete Elemente, Suchmuster «glaeser» gegen «Küchenbau»
  - Graph-Gegenprobe `outlook_email_search`, Abfrage «Küchenbau» ab 08.09.2026
  - Register `logbuch/fristen.md`, Eintrag «NEU 10.09.2026, 06:5x — LOS 273.35 Küchenbau» samt Nachtrag 07:0x
links:
  - "[[wege-und-vollmachten]]"
  - "[[auto-verbesserungen]]"
---

# Die enge Suche liefert ein richtiges Ergebnis und belegt damit den falschen Schluss

## Der Befund

Der Hub kennt die Regel, dass **ein leeres Suchergebnis zuerst eine Aussage über das Werkzeug
ist** (Rule `wege-und-vollmachten` Ziff. 5, Rule `auto-verbesserungen` 260730b und 260807). Der
Lauf vom 10.09.2026 hat den **Spiegelfall** belegt, der davon nicht erfasst ist:

> Ein **nicht leeres, sachlich korrektes** Suchergebnis kann einen falschen Schluss tragen,
> wenn das Suchmuster enger ist als der Vorgang.

Das leere Ergebnis warnt durch seine Leere. Das zu enge Ergebnis warnt nicht, es antwortet.

## Der Fall, gemessen

Eine eingehende Mail fragte nach dem Stand eines Bauloses. Die Prüfung lief über das
naheliegende Muster, den **Absender**:

- Suche nach `glaeser` in den Gesendeten: **ein** Treffer, vom 29.05.2026, danach nichts.
- Daraus gezogener Schluss: «unbeantwortet, Ball bei JANS, Statusauskunft fällig.»

Das Ergebnis war richtig. Der Schluss war falsch. Die Gegenprobe über das **Sachmuster**
statt über den Absender, also `Küchenbau` statt `glaeser`, zeigte 24 Treffer und darin den
entscheidenden Sachverhalt: das Los war im Juni an einen **anderen** Anbieter vergeben worden,
die Ausführungsfreigabe an diesen war am 31.08. und 01.09. versandt. Der Anfragende ist damit
ein nicht berücksichtigter Submittent, und fällig war nicht eine Statusauskunft, sondern die
**Absage**. Zwei verschiedene Handlungen, zwei verschiedene Adressaten-Register, ein
Unterschied, den die enge Suche nicht sichtbar machen konnte.

Beide Suchen waren technisch fehlerfrei. Der Fehler lag im Schnitt der Frage.

## Warum die bestehende Regel das nicht abdeckt

Die bestehenden Formulierungen hängen alle am **Nullergebnis**: «ein leeres Suchergebnis ist
zuerst eine Aussage über das Werkzeug», «ein Weg, den niemand findet, ist so gut wie keiner».
Sie greifen, wenn nichts zurückkommt. Hier kam etwas zurück, und genau das machte die Lage
stabil: ein Treffer mit Datum wirkt wie ein Beleg, nicht wie eine Lücke. Die
Selbstbestätigung ist dieselbe wie bei der festgeschriebenen Störung in
`auto-verbesserungen` 260807 (Spiegelfall 03.09.2026): wer nicht breiter fragt, erfährt
nicht, dass die Antwort an der Frage vorbeigeht.

## Die Arbeitsregel daraus

1. **Bei einem Punkt, der auf eine Handlung hinausläuft, mindestens zweimal suchen: einmal
   über die Person, einmal über die Sache.** Der Absender sagt, ob kommuniziert wurde; das
   Geschäft sagt, *was* überhaupt geschuldet ist. Stimmen beide nicht überein, gewinnt die
   Sachsuche.
2. **Eine Pendenz gegen einen Dritten nie aus der Abwesenheit einer Antwort an ihn ableiten,
   ohne den Vorgang selbst gesehen zu haben.** Ein Schweigen kann bedeuten, dass noch etwas
   offen ist, oder dass die Sache längst ohne ihn entschieden wurde.
3. **Der Beleg für «Ball bei uns» ist der Vorgangsverlauf, nicht die Leerstelle im
   Postausgang.** Das ist dieselbe Disziplin, die der Radar für eingehende und ausgehende
   Mails schon kennt (Rule `auto-verbesserungen` 260709, eingehend↔ausgehend paaren), nur
   eine Ebene höher: nicht Mail gegen Mail, sondern Mail gegen **Geschäftsstand**.

## Zweiter, kleinerer Befund desselben Laufs

Die Delegation des mechanischen Mail-Lesens an Subagenten (Modell `haiku`) lieferte die
Klartext-Bodies zuverlässig, **scheiterte aber reproduzierbar an HTML-Bodies und an jedem
Anhang**. Der zweite Subagent brach mit einer Rückfrage ab, statt die im Auftrag genannten
Ausweichwege zu gehen. Die belegentscheidenden Stücke dieses Laufs, eine Mahnungs-PDF und
ein HTML-Body mit einer Abrechnungsweisung samt abweichender Rechnungsadresse, kamen erst
durch eigenes Lesen zustande. **Folge für künftige Läufe:** Anhänge und HTML-Bodies nicht
delegieren, sondern im Hauptlauf lesen; an den Subagenten geht die Breite, die Belegtiefe
bleibt beim Hauptlauf. Das deckt sich mit der Schwelle in Rule `modellwahl-routine` Ziff. 3,
präzisiert sie aber nach Inhaltstyp statt nach Anzahl der Werkzeugaufrufe.
