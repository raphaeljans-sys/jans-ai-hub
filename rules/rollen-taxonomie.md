# Rule: Rollen-Taxonomie (jeder Baustein hat eine Rolle)

**Immer aktiv, Kurzregel.** Der Hub führt Buch darüber, welche der fünf Rollen ein Baustein
besetzt: **prototyper · builder · sweeper · grower · maintainer**.

Lazily, bei Bedarf: Messwerte, Zielbänder und Rollendefinition in
`docs/konzepte/260729-Rollen-Taxonomie/` · die betriebsnahen Regeln (Takt-/Drossel-Entscheide,
Radar-Auswertung, Schutzmechanik-Selbsttest) in `rules/betrieb-chronik.md`, Abschnitt 260729b.

## Regeln

1. **Jeder neue Baustein bekommt beim Anlegen eine Rolle** im Register
   `logbuch/rollen/rollen-map.tsv`. Das gilt für Skills, Agenten und Loops. Ohne
   Registereintrag fällt der Baustein in der Bilanz unter «unzugeordnet» und verfälscht
   jede Quote.

2. **Vor dem Bau eines neuen Skills zuerst die Rolle bestimmen und prüfen, ob sie bereits
   überbesetzt ist.** Ein weiterer Prototyper braucht eine Begründung, warum er mehr wert
   ist als ein Sweeper, der den Bestand verdichtet. Der Prototyper-Reflex ist die belegte
   Standard-Drift dieses Hub.

3. **Quoten werden gemessen und berichtet, nie automatisch durchgesetzt.** Zielbänder stehen
   im Konzept. Die Drosselentscheidung bleibt bei Raphael (Lehre 25.07.2026: kein
   eigenmächtiges Drosseln).

4. **Nie Läufe zählen, immer Ertrag** — und allgemein: zuerst fragen, was ein Zähler
   wirklich zählt. Ein Lauf ist erst dann Arbeit, wenn er mit rc=0 endet; Fehlstarts und
   abgewürgte Hänger gehören getrennt ausgewiesen, nie in dieselbe Summe. Wer sie mitzählt,
   misst Betriebsstörungen und nennt sie Auslastung. Die Fallbelege stehen im
   Konzeptdokument.

## Wann NICHT

- Nicht auf einzelne Erzeugnisse anwenden (Mails, Dokumente). Die Taxonomie ordnet Bausteine
  des Hub, nicht Texte.
- Nicht als Verbot lesen: eine überbesetzte Rolle schliesst einen guten neuen Baustein nicht
  aus, sie verlangt nur eine Begründung.
