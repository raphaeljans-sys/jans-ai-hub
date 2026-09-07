# Beurteilung nach Abschluss des Gewerks

Angelegt 07.09.2026 nach dem Audit gegen `ausschreibung/wissensbasis/14_bauadministration-prinzipien.md` (Prinzip 04.39). Reifegrad R2, Benutzer-Validierung ausstehend.

Zwei Bogen je Gewerk nach der Schlussrechnung: A Unternehmer durch die Bauleitung,
B Bauleitung durch den Unternehmer. Das Ergebnis von A fliesst in die Stammdaten des
Skills `unternehmerfindung` zurück (Rule `wissens-ruecklauf`).

## Kopf
```
Projekt            [Objekt]              Gewerk       BKP [XXX] [Gewerk]
Unternehmer        [Firma]               Vertragssumme CHF [..]
Abrechnungssumme   CHF [..] ([..] %)     Nachträge    [Anzahl, CHF]
Abnahme am         [TT.MM.JJJJ]          Mängel       [Anzahl, behoben bis TT.MM.JJJJ]
```

## A Beurteilung Unternehmer (durch Bauleitung)
Skala 1 (ungenügend) bis 4 (sehr gut).

| Kriterium | Note | Bemerkung |
|---|---|---|
| Ausführungsqualität | | |
| Termintreue | | |
| Ausmass und Rechnungen (prüfbar, fristgerecht) | | |
| Nachtragsverhalten (angemessen, vorgängig) | | |
| Mängelbehebung (Frist, Qualität) | | |
| Sicherheit und Ordnung auf der Baustelle | | |
| Zusammenarbeit | | |

```
Empfehlung für künftige Submissionen  [ ] ja  [ ] mit Vorbehalt  [ ] nein
Bauleitung: …  Datum: …
```

## B Beurteilung Bauleitung (durch Unternehmer)
Skala 1 (ungenügend) bis 4 (sehr gut).

| Kriterium | Note | Bemerkung |
|---|---|---|
| Planlieferung und Vollständigkeit der Grundlagen | | |
| Entscheide und Erreichbarkeit | | |
| Koordination mit anderen Gewerken | | |
| Rechnungsprüfung und Zahlungsfristen | | |
| Abnahme und Mängelabwicklung | | |

```
Unternehmer: …  Datum: …
```

## Pflege
Bogen A in die Stammdaten des Skills `unternehmerfindung` übertragen (Firma, Gewerk,
Projekt, Datum, Empfehlung); Bogen B als Lernsignal für die eigene Bauleitung ablegen.
