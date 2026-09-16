---
titel: Wissens-Chef Lauf 60 — Cross-KB-Abgleich der JANS-Wissensbasen
datum: 2026-09-16
lauf: 60
zuschnitt:
  - "Workflow mit 7 Meldern (model: sonnet), je Feld mit Meldung ein adversarialer Verifikator (6), Gegenpruefung aller tragenden Befunde am Original im Hauptkontext"
  - "Delta-Basis facefa10e → 8eca226aa (Lauf-59-Commit bis nas-selfcommit 16.09.2026 23:00), 111 Commits, 54 Wissens-/Rules-Dateien, nativ im SSD-Klon gemessen"
  - "Eigene Messungen: BBV I § 4 Abs. 4 am amtlichen Wortlaut baurecht/raw/260607 gegengelesen; Fassungsidentitaet Nr. 133 beidseitig geprueft; grep TR2022 ueber den ganzen baurecht-Baum; SIA-2017-Doppelspur in beiden Dateien zeilenweise verglichen; Byte-Riegel selbst nachgemessen"
bilanz: "6 Meldungen → 5 bestaetigt (2 mit korrigiertem Zuschnitt) · 1 widerlegt · 3 Felder Nullbefund"
dateien_geaendert: 15
loeschungen: 0
---

# Wissens-Chef Lauf 60 — 16.09.2026

## Das Wichtigste

Der Lauf hat **einen Fehlertyp zweimal gefunden**, und das ist der eigentliche Ertrag: eine
Korrektur erreicht nur die Stellen, die der Melder genannt hat — nicht den Artikel. Beim
energie-Lauf 201 vom selben Tag blieben drei von sechs Fundstellen im ueberholten Stand stehen,
obwohl der gesetzte Vermerk «am Original gegengelesen» behauptet. Der Artikel widerspricht sich
seither selbst. Bei der SIA-2017-Doppelspur hat Lauf 59 die falsche Negativaussage berichtigt und
den darunterliegenden Duplikat-Text nicht bemerkt.

**Die Lehre, gleiche Familie wie Eintrag 260807:** wer «gegengelesen» schreibt, macht eine Aussage
ueber den ganzen Text. Ein Korrekturvermerk, der nur die gemeldeten Zeilen deckt, erzeugt genau den
Glauben, das Problem sei erledigt — und ist damit schaedlicher als gar keiner.

Zweiter Ertrag: **der Verifikations-Schritt hat zwei Melder korrigiert, nicht nur bestaetigt.**
Einmal wollte ein Melder einen Transkriptions-Layer kuerzen, der treue Wiedergabe leisten soll;
einmal wollte er eine @-importierte Rule selbst aendern, was dieser Loop seit Run 32 nicht darf.
Beide Male war der Befund richtig und die vorgeschlagene Handlung falsch.

## Bilanz

| | Zahl |
|---|---|
| Felder geprueft | 7 |
| Meldungen | 6 |
| bestaetigt, Zuschnitt unveraendert | 3 |
| bestaetigt, Zuschnitt korrigiert | 2 |
| widerlegt | 1 |
| Felder mit Nullbefund | 3 |
| Dateien geaendert | 15, alle additiv (2 beabsichtigte Zeilenersetzungen: Frontmatter-Quelle, Status-Zeile) |
| Loeschungen | 0 |

## Befunde

### WC60-1 · energie → planungsgrundlagen · bestaetigt · **Korrektur erreichte nur drei von sechs Stellen**

`planungsgrundlagen/wiki/energie-private-kontrolle-zh.md` traegt seit dem 16.09.2026 einen
Korrekturvermerk, der Artikel sei «am Original gegengelesen» und alle vier Beanstandungen aus
energie Run 201 seien berichtigt. Selbst nachgemessen, im Artikel:

- **Z. 124 (berichtigt):** «§ 4 Abs. 4 BBV I … Erfasst sind Anhang-Ziff. 3.2, 3.3, 3.4.1 und 3.4.2,
  **nicht** Ziff. 3.1 Laerm»
- **Z. 52-53 (stehen geblieben):** «die in Ziff. 3.2 / 3.3 des BBV-I-Anhangs genannten Rechtsnormen
  gelten als erfuellt» — ohne Absatznummer, ohne 3.4.1/3.4.2, ohne die Einschraenkung «soweit sie
  energetische Anforderungen betreffen»
- **Z. 102 (berichtigt):** «Quelle/Stand: **August 2026**»
- **Z. 153-154 und Frontmatter Z. 5 (stehen geblieben):** «Stand April 2025»

Gegengelesen am amtlichen Wortlaut `baurecht/raw/260607_amtlich_zh_bbv1.md` § 4 Abs. 4: die Fassung
des Destillats ist die richtige, Abs. 4 nennt Ziff. 3.2, 3.3, 3.4.1 und 3.4.2 mit der Einschraenkung.

**Aktion:** drei additive Einschuebe. Kein bestehender Wortlaut geaendert.

### WC60-2 · energie ↔ baurecht · bestaetigt, Zuschnitt enger · **Erlasswortlaut doppelt, aber nicht zu kuerzen**

`energie/destillate/private-kontrolle-zh.md` Z. 130-170 gibt BBV I §§ 4-7 und Anhang Ziff. 3 nahezu
wortgleich wieder. Derselbe amtliche Volltext liegt seit 07.06.2026 in
`baurecht/raw/260607_amtlich_zh_bbv1.md` — selbst geprueft: **dieselbe Fassungsdatei
`700.21_6.5.81_133.pdf`**, § 4 Abs. 1-5 wortgleich. Die eigene Querbezug-Notiz des Destillats sagt
«nicht doppelt pflegen».

Der Melder wollte kuerzen und auf `baurecht` verweisen, wie es der Schwesterartikel
`energie/wiki/umweltwaerme-gewaesser.md` tut. **Der Verifikator hat das zurueckgewiesen, und er hat
recht:** `wiki/` und `destillate/` haben laut `energie/CLAUDE.md` verschiedene Funktionen — der
Destillat-Layer soll das PDF treu transkribieren. Der Konventionsvergleich traegt deshalb nur halb.

**Aktion:** additiver Fuehrungsvermerk (Fassungsstand primaer in `baurecht/raw/` verifizieren, bei
Fassungsaenderung dort zuerst nachziehen) + neue Matrixzeile. Die bestehenden Matrixzeilen deckten
nur §§ 47-48c und § 47a; **die §§ 4-7 waren nirgends zugeordnet** — das war die eigentliche Luecke.

### WC60-3 · baurecht ← planungsgrundlagen · bestaetigt · **Rueckkante zum Richtplan-Umsetzungsstand fehlte**

`baurecht/wiki/raumplanung-und-gestaltung.md` fuehrt den kantonalen Richtplan samt ausfuehrlichem
⚠-Block zum Bundesrecht 2026 (Buch-Run 143, artikelscharf: Art. 1 Abs. 2 lit. bter/bquater, Art. 8c/8d,
Art. 18bis, Art. 38b RPG, Art. 25a-25g RPV). Kein Wort zum laufenden **kantonalen** Umsetzungsstand.
Selbst nachgemessen: `grep -rl "TR2022|Vorlage 6012|Vorlage 6013"` ueber `wissen/baurecht/` liefert
**null Treffer**, waehrend `planungsgrundlagen/wiki/recht-norm-quellenlandkarte.md` ihn mit fuenf
datierten Refreshes fuehrt (Vorlagen 6012/6013, Ueberweisung 12.03.2025, KEVU-Vorlage 6013a
03.03.2026, kein publiziertes Fertigstellungsdatum).

Kein Widerspruch — eine fehlende Rueckkante, nach einer Konvention, die in dieser KB bereits
zweimal gelebt wird. Lauf 59 hat an derselben Materie gearbeitet und nur den Zeiger **in**
planungsgrundlagen gesetzt, nicht den aus baurecht heraus.

**Aktion:** Rueckkante-Absatz nach dem bestehenden ⚠-Block + Matrixzeile.

### WC60-4 · twin → rules/anrede-kontakte · bestaetigt · **Vorlage, keine Aktion**

Claudia Horeni (AfB Stadt Zuerich, Denkmalpflege/Wohnanteil-Praxis) ist zweifach unabhaengig aus
Raphaels eigener Hand belegt — Ersterfassung Batch 30 (10.07.2026) und Regressionsbestaetigung im
Fidelity-Review vom 16.09.2026 am selben Gold: «Geschaetzte Frau Horeni,» am Vormittag nach einem
«angenehmen Beratungsgespraech». Sie fehlt in der @-importierten `rules/anrede-kontakte.md` (selbst
nachgemessen: null Treffer). Dieselbe Beleglage hat im August zur Aufnahme von sechs Kontakten
gefuehrt.

**Die Rule wurde nicht angefasst.** Der Melder empfahl eine Zeile; der Verifikator hat das
zurueckgewiesen und den Praezedenzfall geliefert: Run 32 (14.08.2026) haelt fest, ein Fund
«importierte Rule widerspricht KB» sei «nie eine Aktion dieses Loops, immer eine Vorlage»,
bestaetigt in Lauf 58 bei Sonderegger. Und im **selben** Fidelity-Review vom 16.09. wurde der
strukturgleiche Fall Cornelia Gasser genau so behandelt — als offene Frage, nicht als Direktedit.

**Aktion:** `twin/wiki/QUESTIONS.md` 260916b #5.

### WC60-5 · architektur-fachwissen ↔ normen · bestaetigt, Zuschnitt breiter · **SIA 2017 doppelt gefuehrt, in beide Richtungen**

Beide KBs geben den normativen Kern des SIA-Merkblatts 2017 materiell parallel wieder — Ablaufschema
Ziff. 3, alle zwoelf Kriterien 1-6/A-F, Bewertungsmodell Ziff. 5, mit identischem Seitenbeleg. Der
afw-Artikel entstand am 29.08.2026 direkt aus dem Original-PDF im Architektur-Archiv, ohne das seit
dem 19.07.2026 bestehende `normen/destillate/sia-mb-2017.md` (`status: established`) zu kennen. Lauf
59 hat nur die falsche Negativaussage berichtigt; der Duplikat-Text blieb unbemerkt.

**Gegenrichtung, vom Verifikator gefunden und selbst geprueft:** `architektur-fachwissen` traegt eine
Eigenleistung, die `normen` fehlt — den am 15.09.2026 am SIA-Shop erhobenen Geltungsstand (aktives
Normenwerk, kein Rueckzug, kein Nachfolger, Produkt-ID belegt). Genau diese Frage steht in `normen`
unter «Offene Punkte» als **erster Punkt** offen. Eine Bringschuld, die nie gezogen wurde.

**Aktion:** Fuehrungsvermerk in afw (normen fuehrt Fundstellen), «Beantwortet»-Nachtrag am offenen
Punkt in normen, Matrixzeile. **Die Doppelspur ist benannt, nicht aufgeloest** — eine Verdichtung
waere ein Eingriff in bestehenden Wortlaut und gehoert Raphael vorgelegt, nicht diesem Lauf.

## Widerlegt

**Doppelspur Stabilisierungsziel (2 %-Regel) baurecht ↔ planungsgrundlagen.** Der Melder las die
«Kernmechanik»-Passage in `recht-norm-quellenlandkarte.md` als unabgestimmte Parallelfuehrung
materiellen Rechts. Der Verifikator hat nachgewiesen, dass sie **unmittelbar nach** einem bereits
gesetzten Selbstbeschreibungssatz steht («Die rechtliche Wuerdigung bleibt bei `wissen/baurecht` …
hier nur der Datenstand») samt korrektem Verweis auf die Fuehrungsmatrix — gesetzt Anfang September,
also vor dieser Pruefung. Der Melder zitierte die Selbstbeschreibung zudem an der falschen Zeile
(232 f. statt 196-198), also ohne den Kontext gelesen zu haben.

Doppelbewirtschaftung ist nicht per se falsch. Falsch ist nur, sie nicht aufzuschreiben. Hier ist sie
aufgeschrieben. Keine Aktion.

## Nullbefunde

- **normen ↔ baurecht/brandschutz (Pflichtpaar b):** das neue Lignum-4/2-Destillat (Run 86, 63 Seiten
  inventarisiert, 26 Kernluecken nachgetragen) kollidiert mit keiner Feuerwiderstands-Aussage in
  baurecht, `skills/brandschutz`, architektur-fachwissen oder bauprodukte. Die 38 ersetzten Zeilen
  waren Inline-Nachtraege im Destillat selbst, kein anderswo fortlebender Altstand.
- **grobkosten ↔ immobilienbewertung ↔ kostenschaetzung (Pflichtpaar d):** kein Schreiber im Fenster.
  Bestandsabgleich der vier Grenzlinien gehalten; der geflaggte Ebmatingen-Wert 2'400 CHF/m³ GV taucht
  nirgends ohne seine Flagge auf. Zweiter Nullbefund in Folge.
- **bauprodukte ↔ normen:** die Uebergabe WC59-5 (Metalldecken BKP 283) ist angekommen und
  **beidseitig** verzeigert — die Bringschuld wurde vom erledigenden Lauf getragen, wie es die Rule
  `wissens-bibliothekar` seit dem 23.08. verlangt. Das funktioniert also.

## Offene Entscheide fuer Raphael

1. **Rueckstau bei den Anrede-Kontakten — vier Kandidaten stehen gleichzeitig offen.** Horeni (neu),
   Gasser (16.09.), Wuersch (16.09.) und Stadelmann (seit Lauf 56, 09.09., dort mit belegtem
   Registerwechsel Sie → Du). Alle vier sind mehrfach aus eigener Hand belegt, keiner steht in
   `rules/anrede-kontakte.md`. Run 32 hat 2026 festgehalten, es fehle ein Mechanismus, der belegte
   Wiki-Mappings in die Rule zieht — der Rueckstau zeigt, dass das keine Theorie mehr ist. **Zwei
   Wege:** entweder die vier Zeilen in einem Zug freigeben, oder den damals vorgeschlagenen
   Kandidatenlisten-Mechanismus bauen. Beides ist Dein Entscheid, nicht meiner.
2. **SIA-2017-Doppelspur verdichten?** Die Fuehrung ist jetzt benannt, der Text steht aber weiter
   zweimal da. Eine Verdichtung in `architektur-fachwissen` waere ein Eingriff in bestehenden
   Wortlaut — sag Bescheid, wenn ich ihn auf Einordnung plus Verweis kuerzen soll.
3. **Byte-Riegel `rules/jans-dna-facetten.md`: Reserve auf 98 B gefallen** (Lauf 59: 211 B, Lauf 58:
   16 B). Gemessen: 33'902 B gegen die Grenze 34'000 B. Die Rekompilierung vom 16.09. hat 113 B
   verbraucht, und **alle sechs Facetten-Wikis sind an diesem Tag gewachsen** — die naechste
   Rekompilierung faellt mit einiger Wahrscheinlichkeit durch den Riegel. Die Grenze wurde am
   18.08.2026 einmal von 30'000 auf 34'000 angehoben, mit dem ausdruecklichen Vermerk, wer sie
   anhebt, hebe die Ladekosten. Der Entscheid steht wieder an, und diesmal frueh genug, um ihn nicht
   unter Druck zu faellen.
