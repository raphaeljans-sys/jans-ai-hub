# Vertiefungsläufe 7–12 immobilienbewertung — Gemeinde-Abdeckung, Lageklassen-Spiegelung, Quellenbefunde

**Datum:** 23.08.2026 · **Station:** Revendo · Abschluss der Tagesarbeit an dieser KB.
Vorläufe: `…_vertiefungslauf-kennwerte-verfahren.md` (Lauf 1, andere Session),
`…_vertiefungslauf-2-teuerungsanker-ziw-bfs.md`, `…_vertiefungslauf-3-amtliche-preisstatistik-zh.md`,
`…_vertiefung-4-bis-6-d1-konsistenz-d16.md`.

---

## Lauf 7 — acht Gemeinden ohne jede Preisbasis haben jetzt eine

Die KB führte Marktdatenblätter für sieben ZH-Gemeinden. Für **acht weitere JANS-Bezugsgemeinden**
gab es **keinerlei Preisdaten** — obwohl sie in [[az-gfz-kennwerte]] mit Dichtekennwerten geführt
werden und damit als Arbeitsgebiet belegt sind: **Horgen, Kilchberg, Küsnacht, Meilen, Adliswil,
Richterswil, Oberrieden, Niederhasli**. Aus der kantonalen Handänderungsstatistik sind jetzt Median
und Quartile für EFH und Eigentumswohnungen samt Fallzahlen eingearbeitet.

**Der wichtigste Lesehinweis ist die Streuung.** Am Seeufer sind die Quartilsbänder riesig:
Kilchberg EFH **2.54 bis 6.66 Mio.** (Faktor 2.6), Küsnacht **2.80 bis 7.00 Mio.** (Faktor 2.5). Ein
Median allein sagt dort fast nichts — die Mikrolage entscheidet über den Faktor 2. **Immer mit
Quartilen zitieren.** Dünnste Zeile: Oberrieden EFH mit n = 18.

## Lauf 8 — die Lageklassenmethode gegen amtliche Bodenpreise gespiegelt

Der seit dem 10.06.2026 offene Punkt ist eingelöst — nicht an einem Objekt, sondern **regional über
den ganzen Kanton**, was als Plausibilitätsprüfung der Skala mehr aussagt.

Rechenweg: `Anteil(LK) = Bodenpreis je m² Grundstück / (Neuwert je m² GF × AZ)`, Neuwert-Ansatz
**BKP 2, 4 + 5 = 3'542 CHF/m² GF** (JANS-Kennwert BKP 2 umgerechnet über die BKP-Struktur der
ZIW-Revision 2025).

**Zwei Befunde:**
1. **Für die Stadt Zürich sprengt der amtliche Bodenpreis die Skala bei jeder Ausnützung** — selbst
   bei AZ 1.0 verlangt der Median 6'747 CHF/m² einen Landwertanteil von **190 %**, während Tab. 8
   bei **166.67 %** endet; bei AZ 0.6 sind es **317 %**. Kein Genauigkeitsproblem, sondern ein
   **Skalen-Anschlag**.
2. **Die Verschiebung reicht weiter hinunter als erwartet** — bei AZ 0.6 landen **gewöhnliche
   Agglomerationsgemeinden bei LK 8.0**, dem Punkt, den der Artikel als «typisch für zentrale
   Stadtlagen» beschreibt. Wer nach Tab. 6 mit LK 5–6 einstuft, rechnet **918–1'211 CHF/m²** gegen
   einen amtlichen Median von **2'065**. Faktor zwei.

**Ausdrücklich eine Sensitivitätsrechnung**, keine Kalibrierung — vier Annahmen sind
mitgeschrieben. Es folgt **nicht**, dass Tab. 8 falsch ist, sondern dass sie im heutigen Zürcher
Markt **keine eigenständige Landwertermittlung** trägt: ein daraus hergeleiteter Landwert deutlich
unter dem regionalen Median ist der **Normalfall, kein Warnsignal**.

## Lauf 9 — Residualwertmethode: Preisstand ausgewiesen, Hebel gerechnet

Die Default-Parameter stammen aus dem **Wüest-Kurs 06.2023**, ein Preisstand-Vermerk fehlte. Mit den
Defaults der Seite selbst gerechnet: Endwert **8'650**, Landwert roh **2'573 CHF/m² HNF** — rund
**30 % des Endwerts**. Daraus der Hebel: **1 % Miete → 3.4 % Landwert**, **1 % Erstellungskosten →
2.2 % Landwert**.

Die seit April 2023 aufgelaufenen **+2.78 %** Baukosten würden den Landwert allein um **6.6 %**
drücken. **Deshalb ist eine einseitige Indexierung schlechter als gar keine** — die Mieten sind
ebenfalls gestiegen, beide wirken gegenläufig. **Bewusst nicht nachgeführt:** für die beidseitige
Rechnung fehlt der Mietindex-Stand zum Kursdatum, und den zu schätzen wäre Raten.

## Lauf 10 — warum es für den risikofreien Basiszins keine maschinenlesbare Reihe mehr gibt

Der offene Punkt («nur undatierte Live-Snapshots ~0.42–0.51 %») hat einen Grund, der nicht an der
Recherche liegt: die SNB-Würfel `rendoblim` und `rendoblid` liefern **PublishingDate 01.09.2025**
und enden bei **Juli 2025**, während der Würfel `zimoma` derselben Schnittstelle bis **Juli 2026**
aktuell ist. **Kein Portalausfall — die Renditenreihen werden unter den bekannten IDs seit einem
Jahr nicht fortgeschrieben.** Ein Nachfolger war nicht ermittelbar (Katalog nur über die
JavaScript-Anwendung).

Verbleibender datierter Primärweg: das **SNB-Quartalsheft**; Heft 3/2026 Ende September 2026 — der
nächste Termin, an dem der Anker überhaupt belegt fortgeschrieben werden kann. **Tragweite klein
und beziffert:** selbst bei ~0.5 % stiege der Basiszins um rund 0.2 Prozentpunkte, die
Diskont-Zeilen liegen ohnehin am unteren Bandrand.

## Lauf 11 — D17: der Gutachten-Standard steht auf einer überholten Auflage

[[svs-svkg-standard]] — der verbindliche Rahmen für **jedes** JANS-Bewertungsgutachten — beruft sich
auf das Schätzerhandbuch **2012**. Massgebend ist die **5. Auflage 2019**, CHF **185.–** direkt bei
der SVKG.

Drei Berührungspunkte: der **Swiss Valuation Standard** ist erst in der 5. Auflage kodifiziert
(die Wording-Regel beruft sich also auf eine Fassung, die nicht im Haus ist) · die
**Lageklassifizierungsmethode** ist überarbeitet — genau die Methode aus Lauf 8, weshalb ein
eigener kalibrierter Anteilsschlüssel **erst nach Einsicht** sinnvoll wäre · die Seitenangabe
S. 367 gilt für 2012.

**Beleggrenze:** primär belegt sind Auflage, Jahr, Preis, Bezugsweg (svkg.ch). Die Liste der
Neuerungen stammt aus Buchhandels-Listungen — Sekundärquelle, **kein Inhaltsbeleg**.

## Lauf 12 — die strukturelle Lücke hinter D17

**Der Hub kontrolliert Norm-Fassungen systematisch, Fachbücher nicht.** Dafür gibt es `normen`, die
Rule `normen-referenz` und regelmässige Sweeps — ein Fachbuch ist keine Norm, fällt durchs Raster
und altert trotzdem. Neuer Abschnitt in [[datenquellen-registry]] mit den **sieben Standardwerken**,
auf denen diese KB steht, je mit Auflage, Stand und Fundstellen, plus **Nutzungsregel 8**:

- Jedes Werk **mit Auflage** führen — ein Werk ohne Auflagenangabe ist wie ein Kennwert ohne
  Preisstand.
- **Nie eine Seitenzahl** angeben, die für die aktuelle Auflage nicht geprüft ist. Seitenzahlen
  wandern zwischen Auflagen — die häufigste stille Falschzitierung.
- **Prüfanlass ist die Verwendung, nicht der Kalender.**
- Über den Inhalt einer nicht vorliegenden Auflage **keine Aussage**, auch keine beruhigende.

---

## Das Muster hinter drei Befunden des Tages

D13/Frage 1 (BKP-Scope), D16 (BKP-2-Anteil), die 1-%-Regel der LSV, das Wohnen-Kostenband, die
fehlenden Preisstände und jetzt die Auflage — **sechs Fälle, eine Form**: der Fehler entsteht nie
durch eine falsche Zahl, sondern durch eine **fehlende Angabe**. Die Zahl ist richtig, sieht richtig
aus, wird korrekt zitiert und wird trotzdem falsch verwendet. Scope, Preisstand, Auflage sind die
drei Angaben, deren Fehlen im Hub am teuersten ist.

## Was jetzt bei Raphael liegt (diese KB)

| # | Punkt | Was gebraucht wird |
|---|---|---|
| **D16** | BKP-2-Anteil 75 % gegen amtlich 89.4 % | **Ein Satz** — gilt für EFH/ZFH wirklich ein 15 Pp tieferer Anteil, oder ist es eine Faustregel mit Marge? Wirkung: ~19 % auf jeden EFH-Neuwert |
| **D17** | Schätzerhandbuch 5. Auflage 2019 | **CHF 185.–** bei der SVKG bestellen. Berührt Gutachten-Rahmen, SVS und Lageklassenmethode |
| **D12/D13/D15** | Teuerungsanker + BKP-Scope Tab. 2 | Ein Entscheid für alle drei — sie betreffen dieselbe Tabelle |
| **D10** | Zwei nicht reproduzierbare Zeilen im Referenzblatt | Bereinigung des JANS-Original-Blatts |
| **D1** | Fact Sheets | **Regensdorf zuerst** (liegt zu hoch), dann Maur; Wädenswil und Wald noch brauchbar |
| Methode | Lageklassen-Skala | Erst nach D17 entscheiden — die 5. Auflage hat die Methode überarbeitet |

## Geänderte Dateien (Läufe 7–12)

`wiki/amtliche-preisstatistik-zh.md` (Abschnitt 4c) · `wiki/marktdaten-gemeinden/README.md` ·
`wiki/lageklasse-landwertanteil.md` (Spiegelung, D17-Vorbehalt) · `wiki/residualwertmethode.md` ·
`wiki/ertragswert-dcf.md` · `wiki/svs-svkg-standard.md` · `wiki/datenquellen-registry.md` ·
`wiki/wissensluecken.md` (D16, D17) · `CHANGELOG.md`.
