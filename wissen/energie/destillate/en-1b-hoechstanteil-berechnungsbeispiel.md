---
quelle: "PL - 02_Recht_Norm/06_Richtlinien/Minergie/SIA380_1_Energie_im_Hochbau/EN-1b Berechnet.pdf"
herausgeber: "EnFK — Konferenz Kantonaler Energiefachstellen (Titelblock EN-1b, dreisprachig DE/FR/IT)"
ausgabe: "Formular EN-1b «Energienachweis Höchstanteil, Rechnerische Lösung», Version Januar 2009, gültig bis 31.12.2010 (Fusszeile). Referenznummer 403-002-EN-1b-002-ger."
gelesen: "2026-08-16, vollständig (1 von 1 Seite, ausgefülltes Rechenbeispiel)."
datenstand: "⚠ Formular selbst befristet «gültig bis 31.12.2010» — heute seit 15 Jahren ausser Kraft. Die Grundmechanik (Höchstanteil 80 % nichterneuerbare Energie am Wärmebedarf Heizung+Warmwasser) ist die Vorläufer-Systematik der heutigen EN-ZH/EVEN-Formulare, siehe [[energienachweis-zh]]. Bezugsnorm im Formular: SIA 380/1 Ausgabe 2009 (heute SIA 380/1:2016)."
status: emerging
last_updated: 2026-08-16
links:
  - [[energienachweis-zh]]
  - [[systemnachweis-kurs-zh-2009]]
  - [[bezugsgroessen-energienachweis]]
---

# Destillat — EN-1b «Berechnet»: durchgerechnetes Beispiel zur 80-%-Höchstanteil-Regel

## Das Wichtigste in einem Satz

Ein ausgefülltes Rechenbeispiel des historischen EnFK-Formulars EN-1b (gültig 2009-2010) zeigt
konkret mit Zahlen, wie die Höchstanteil-Regel («maximal 80 % des Wärmebedarfs Heizung+Warmwasser
darf mit nichterneuerbarer Energie gedeckt werden», siehe [[systemnachweis-kurs-zh-2009]]) im
Einzelfall gerechnet wird — inklusive einem Fall, in dem die Bedingung **nicht** erfüllt ist.

## Die Rechnung im Detail (mit Originalwerten)

| Grösse | Wert | Bedeutung |
|---|---|---|
| Qh,li (Grenzwert Heizwärmebedarf) | 150 MJ/m² | Zulässiger Grenzwert gemäss SIA 380/1 |
| Qww (Wärmebedarf Warmwasser) | 50 MJ/m² | Grenzwert Warmwasser |
| ❶ = Qh,li + Qww | **200 MJ/m²** | Summe der Grenzwerte |
| ❷ = 80 % von ❶ | **160 MJ/m²** | Höchstanteil mit nichterneuerbarer Energie gedeckter Bedarf |
| Qh (effektiver Heizwärmebedarf, SIA 380/1:2009) | 120 MJ/m² | Effektiv berechneter Wert des Projekts |
| ELA (Strombedarf mechanische Ersatzluftanlagen) | 0 MJ/m² | Im Beispiel nicht vorhanden |
| Qww effektiv | 50 MJ/m² | Effektiver Warmwasserbedarf |
| fed (Anteil Qww mit elektr. Widerstand) | 0 % | Kein elektrischer Boiler-Anteil |
| ❸ = Qh + [Qww × (1+fed/100)] + 2×ELA | **170 MJ/m²** | Effektiver Bedarf Heizung + Warmwasser |
| ❹ (Nettobeitrag erneuerbare Energien) | 0 MJ/m² | Im Beispiel keine erneuerbare Deckung |
| ❺ = ❸ − ❹ | **170 MJ/m²** | Bedarf gedeckt mit nichterneuerbaren Energien |
| **Bilanz: ❺ ≤ ❷ erfüllt?** | **170 ≤ 160 → NEIN** | Höchstanteil-Bedingung **nicht erfüllt** |
| Kennzahl ① Wärmedämmung | 80 % | (im Formular als separate Kennzahl ausgewiesen) |
| Kennzahl ② Höchstanteil nichterneuerbarer Energie | 85 % | Effektiver Anteil im Beispiel (über dem Grenzwert 80 %) |

Formel wörtlich aus dem Formular: **Qh + [Qww × (1+fed/100)] + 2 × ELA**, mit ELA doppelt
gewichtet (Faktor 2) — mechanische Ersatzluftanlagen (ohne Wärmerückgewinnung) werden im
historischen Verfahren also mit einem Strafexponenten belastet, weil ihr Strombedarf primär-
energetisch teurer gewichtet wird als reine Wärmeenergie.

## Bauherren-Transfer

- **Das Beispiel zeigt bewusst einen Negativfall** (Bedingung nicht erfüllt, ❺=170 > ❷=160):
  ein Projekt mit gutem, aber nicht optimalem Heizwärmebedarf (120 statt z.B. 90-100 MJ/m²) und
  **ganz ohne erneuerbare Energiedeckung** (❹=0) verfehlt die 80-%-Regel selbst dann, wenn die
  Wärmedämmung mit 80 % gut bewertet ist. Das illustriert die Kernlogik dieser älteren
  Nachweisfamilie: eine gute Hülle allein genügt nicht, es braucht zusätzlich einen
  Mindestanteil erneuerbarer Wärmeerzeugung.
- **Der doppelt gewichtete ELA-Term ist eine Konstruktionsregel, die bis heute in ähnlicher Form
  fortwirkt:** mechanische Lüftungen ohne Wärmerückgewinnung werden im Nachweis systematisch
  schlechter bewertet als Lüftungen mit WRG — ein Argument, das bei jeder Systemwahl früh mit dem
  Bauherrn zu besprechen ist (vgl. [[systemnachweis-kurs-zh-2009]]).
- **Dieses konkrete Formular selbst darf für ein heutiges Projekt nicht mehr verwendet werden**
  (befristet bis 31.12.2010, längst durch EN-ZH/EVEN abgelöst, siehe [[energienachweis-zh]]).
  Sein Wert liegt ausschliesslich darin, die **Rechenlogik** der Höchstanteil-Systematik an
  einem durchgerechneten Zahlenbeispiel verständlich zu machen — die KB führte bisher vor allem
  leere Formulare, aber kaum ausgefüllte Rechenbeispiele.

## Offene Punkte

- **Kein Bezug zu einem konkreten Objekt** — Gemeinde, Parzelle und Bauvorhaben sind im PDF leer
  gelassen; es handelt sich um ein reines Musterbeispiel des EnFK, kein Projektdokument.
- **Verhältnis zum Nachfolgeverfahren EN-ZH/EVEN nicht Zahl-für-Zahl nachvollzogen** — ob die
  heutige Formel in EN-105/EN-110-ZH (siehe [[energienachweis-zh]]) strukturell identisch ist
  oder inzwischen anders gewichtet, wäre bei Bedarf am aktuellen Formularsatz zu prüfen.
