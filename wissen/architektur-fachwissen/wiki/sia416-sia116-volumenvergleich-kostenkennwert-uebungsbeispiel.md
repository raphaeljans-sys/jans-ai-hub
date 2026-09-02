---
title: "SIA 416 vs. SIA 116: Flächen-/Volumenvergleich mit Kostenkennwert am selben Gebäude"
status: speculative
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/03_Bauprozesse_I_II/02_Projektbeschriebe/Beschriebe.doc (Dateidatum 27.06.2007, kein Autor/Titel im Text, unvollständiges Fragment)", "raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md"]
links: []
---

# SIA 416 vs. SIA 116: Flächen-/Volumenvergleich mit Kostenkennwert

## Kontext und Belegvorbehalt

Der Beleg ist ein kurzes, unvollständiges Übungsbeispiel (Dateidatum 27.06.2007, kein Autor,
kein Titel, bricht nach der Überschrift «Unserer Wandaufbau im Vergleich» ohne Inhalt ab).
Charakter und Herkunft (Bürointerne Schulung, Studienunterlage, Wettbewerbsvorlage) sind
nicht belegt — deshalb `status: speculative`. Der fachliche Inhalt selbst (die
Berechnungsschritte und Zahlen) ist in sich konsistent und nachvollziehbar und wird deshalb
trotzdem festgehalten, als Rechenbeispiel, nicht als bestätigte Bürohaltung.

## Kernaussage: Zwei Volumendefinitionen am selben Gebäude ergeben ~43 % Differenz

Für ein und dasselbe Gebäude (Geschossfläche 234 m², Geschosshöhe 3,20 m,
Aussengeschossfläche 160 m²) liefern die beiden Normfassungen deutlich unterschiedliche
Volumenwerte:

| Norm | Rechenweg | Ergebnis |
|---|---|---|
| SIA 416/2002 | Geschossfläche 234 m² × Geschosshöhe 3,20 m | **750 m³** |
| SIA 116/1952 | Geschossfläche 234 m² × 3,20 m (750 m³) + Zuschlag Aussengeschossfläche 160 m² × 2,00 m (320 m³) | **1'070 m³** |

Der Unterschied entsteht ausschliesslich durch den SIA-116-Zuschlag für die
Aussengeschossfläche (Balkone, Vorbauten o. Ä.) mit einer pauschalen Zuschlagshöhe von
2,00 m — SIA 416/2002 kennt diesen Zuschlag nicht und bleibt bei der reinen
Geschossflächen-Multiplikation.

## Kernaussage: Trotz 43 % Volumendifferenz nur ~3,6 % Differenz im Kostenkennwert

Angewendet auf zwei unterschiedliche BKP-2-Richtwerte (Basis Zürcher Baukostenindex 928.4,
Stand 1.4.2002) konvergieren die Kostenschätzungen trotz der grossen Volumendifferenz fast:

| Norm | Bezugsgrösse | Kennwert | Ergebnis |
|---|---|---|---|
| SIA 416 | Hauptnutzfläche 206,5 m² | CHF 1'500.-/m² | CHF 309'750.- |
| SIA 116 | Gebäudevolumen inkl. Zuschlag 1'070 m³ | CHF 300.-/m³ | CHF 321'000.- |

Differenz rund CHF 11'250.- bzw. **3,6 %** — deutlich kleiner als die 43 % Differenz auf
Ebene der Bezugsgrösse selbst. Das zeigt (an diesem einen Beispiel, nicht allgemeingültig
belegt): die beiden Normsysteme sind über ihre jeweils zugehörigen Kostenkennwerte so
kalibriert, dass am Ende ähnliche Kostenschätzungen herauskommen, auch wenn die
Zwischengrössen (Fläche vs. Volumen, mit/ohne Zuschlag) stark divergieren. Ein Vergleich
von Volumenwerten allein, ohne den zugehörigen normspezifischen Kennwert, wäre daher
irreführend.

## Nebenbefund: Referenzwandaufbau-Kosten (EKG-Methode)

Der Beleg nennt zusätzlich ein Elementkostengliederung(EKG)-Referenzbeispiel für eine
Aussenwand:

- E4 Aussenwände EG/OG: Backsteinmauerwerk 15 cm + Wärmedämmung 12 cm + eingefärbter
  Aussenputz, CHF 180.-/m²
- M4 Wandverkleidung innen: Weissputz/Rauhfasertapete, weiss gestrichen, CHF 37.-/m²
- Wandkonstruktion insgesamt: **CHF 217.-/m²**

Der Beleg bricht danach ab («Unserer Wandaufbau im Vergleich» ohne Fortsetzung) — ein
eigener Wandaufbau wurde im vorliegenden Fragment nicht mehr gegenübergestellt.

## Praxisregeln

1. **SIA-116-Volumenwerte nie ungeprüft mit SIA-416-Volumenwerten vergleichen** — der
   Aussengeschossflächen-Zuschlag (2,00 m pauschal) kann allein zweistellige
   Prozentdifferenzen erzeugen.
2. **Kostenkennwerte sind normabhängig kalibriert.** Ein CHF/m³-Kennwert aus einer
   SIA-116-Quelle ist nicht auf ein SIA-416-Volumen übertragbar und umgekehrt — die
   Bezugsgrösse und der Kennwert gehören immer zusammen.
3. Dieser Beleg ist ein Rechenbeispiel, keine bestätigte Methodik — vor Verwendung in einer
   echten Kostenschätzung mit einer aktuellen, belegten Quelle (z. B. `wissen/grobkosten`)
   gegenprüfen.

## Offene Punkte

Autorenschaft, Kontext (Schulung/Wettbewerb/Lehrbuch) und das Zielgebäude sind nicht
belegt. Der Vergleich der «eigenen» Wandaufbau-Kosten gegen das EKG-Referenzbeispiel fehlt
im Beleg (Fragment endet vor diesem Abschnitt) — kein Anschlussfund in dieser Sektion
identifiziert.
