# Rule: Rollen-Taxonomie (jeder Baustein hat eine Rolle)

**Immer aktiv.** Der Hub führt seit dem 29.07.2026 Buch darüber, welche der fünf
Rollen ein Baustein besetzt: **prototyper · builder · sweeper · grower ·
maintainer**. Konzept und Rollendefinition:
`docs/konzepte/260729-Rollen-Taxonomie/`.

## Warum

Der Bestand wächst monoton, weil jeder Anlass zum Bau eines neuen Skills führt und
kein Mechanismus fragt, ob das Gebaute je benutzt wird. Die Erstmessung vom
29.07.2026 zeigt: 90 % der automatisierten Rechenzeit geht an Prototyper, unter
1 % an Grower und Maintainer zusammen, und von 50 Skills wurden 24 je aufgerufen.

## Regeln

1. **Jeder neue Baustein bekommt beim Anlegen eine Rolle** im Register
   `logbuch/rollen/rollen-map.tsv`. Das gilt für Skills, Agenten und Loops. Ohne
   Registereintrag fällt der Baustein in der Bilanz unter «unzugeordnet» und
   verfälscht jede Quote.

2. **Vor dem Bau eines neuen Skills zuerst die Rolle bestimmen und prüfen, ob sie
   bereits überbesetzt ist.** Ein weiterer Prototyper braucht eine Begründung,
   warum er mehr wert ist als ein Sweeper, der den Bestand verdichtet. Der
   Prototyper-Reflex ist die belegte Standard-Drift dieses Hub.

3. **Bei jeder Takt-, Drossel- oder Stilllegungsentscheidung zuerst die
   Rollen-Bilanz lesen** (`scripts/rollen-bilanz.sh`), nicht den Einzelfall
   diskutieren. Die Frage lautet nicht «welchen Loop schalte ich ab», sondern
   «welche Rolle ist überbesetzt».

4. **Quoten werden gemessen und berichtet, nie automatisch durchgesetzt.**
   Zielbänder stehen im Konzept. Die Drosselentscheidung bleibt bei Raphael
   (Lehre 25.07.2026: kein eigenmächtiges Drosseln).

5. **Jede neue Schutzmechanik wird in den Selbsttest aufgenommen**
   (`scripts/schutzmechanik-selbsttest.sh`) und dort auf Freigabe- UND
   Abweisungspfad geprüft. Eine Mechanik, die immer «nein» sagt, sieht im Log
   aus wie eine, die funktioniert (Lehre 28.07.2026).

## Instrumente

| Script | Rolle | Wann |
|---|---|---|
| `scripts/rollen-bilanz.sh [Tage]` | Messung | vor Takt-/Drosselentscheiden, monatlich |
| `scripts/nutzungs-radar.sh [Tage]` | Grower | monatlich, vor jedem neuen Skill |
| `scripts/schutzmechanik-selbsttest.sh` | Maintainer | wöchentlich und nach jeder Änderung an einer Schutzmechanik |

Reports landen in `logbuch/rollen/`.

## Wann NICHT

- Nicht auf einzelne Erzeugnisse anwenden (Mails, Dokumente). Die Taxonomie
  ordnet Bausteine des Hub, nicht Texte.
- Nicht als Verbot lesen: eine überbesetzte Rolle schliesst einen guten neuen
  Baustein nicht aus, sie verlangt nur eine Begründung.
