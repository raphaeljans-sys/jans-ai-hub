---
title: Tageslicht im Gebäude (Anforderungen Minergie-ECO und SN EN 17037)
status: emerging
last_updated: "2026-09-07 (Run 185, neu angelegt: Vorgabe 140.01 des Vorgabenkatalogs Zusatz ECO 2023.1 vollständig destilliert, Ausnahmeregelung für Schulbauten wörtlich am Vorgabentext verifiziert)"
datenstand: "01.07.2026 (Dokumentstand der geltenden Fassung des Vorgabenkatalogs Zusatz ECO, Nachweisversion 2023.1); Normbezüge SN EN 17037 und SIA 380/1 im Katalog ohne Ausgabejahr genannt"
sources: [destillate/minergie-eco-vorgabenkatalog-standard-2023-1.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[minergie-standards]], [[sommerlicher-waermeschutz]], [[fenster-uw-g-wert-zielkonflikt]], [[fenster-verglasung]], [[minergie-eco-gebaeudelabel]]
---

# Tageslicht im Gebäude (Anforderungen Minergie-ECO und SN EN 17037)

> **Status `emerging`.** Der Artikel gibt den Vorgabenkatalog Zusatz ECO wieder, gelesen am
> Volltext der geltenden Fassung. Er ist noch nicht durch eine zweite Prüfinstanz gegengelesen.
> Die Ausgabejahre von SN EN 17037 und SIA 380/1 nennt der Katalog nicht; sie sind vor einem
> Zitat in einem ausgehenden Dokument über die KB `normen` zu verifizieren (Rule
> `normen-referenz`).

## Warum Tageslicht ein Ausschlusskriterium ist

Bei Minergie-ECO ist Tageslicht keine Komfortempfehlung, sondern eine **Ausschlussvorgabe**:
Vorgabe 140.01 muss zu 100 % erfüllt sein, sonst gibt es kein Zertifikat, unabhängig davon, wie
viele Punkte das Projekt sonst sammelt. Das macht sie zu einer der wenigen Vorgaben, die ein
Projekt tatsächlich scheitern lassen können.

## Die Zahlen (Vorgabe 140.01)

| Kriterium | Wert | Punkte |
|---|---|---|
| Tageslichterfüllungsgrad Hauptnutzräume | mind. 50 % | 0, Ausschlussvorgabe |
| Tageslichterfüllungsgrad Hauptnutzräume | mind. 70 % | 2, Bonus |
| Anteil Raumflächen mit ungenügendem Erfüllungsgrad | max. 20 % Neubau / max. 35 % Erneuerung | 0, Ausschlussvorgabe |
| Anteil Raumflächen mit ungenügendem Erfüllungsgrad | max. 10 % Neubau / max. 20 % Erneuerung | 2, Bonus |

Die Berechnung der «Tageslichtversorgung» nach **SN EN 17037** ist zugelassen. Für die
Ausschlussvorgabe muss der **Medianwert der Autonomie mehr als 50 %** betragen, für den Bonus
mehr als 70 %. Die Niveaus entsprechen jeweils einer Beleuchtungsstärke «während 50 % der
Tagesstunden auf der halben Raumfläche»: «Gering» 300 Lux, «Mittel» 500 Lux, «Hoch» 750 Lux.
Der Katalog rät ausdrücklich davon ab, eine Autonomie von 70 % beim Niveau 750 Lux anzustreben,
«weil dies sehr grosse Glasflächen erfordert, die zu einer schlechteren thermischen Situation
führen» — der Zielkonflikt ist also im Regelwerk selbst benannt.

**Vereinfachte Berechnung über den Tageslichtquotienten (TLQ)** nach SN EN 17037:

| Beleuchtungsstärke | erforderlicher TLQ |
|---|---|
| mehr als 100 Lux | 0.6 % |
| mehr als 300 Lux | 1.9 % |
| mehr als 500 Lux | 3.1 % |
| mehr als 750 Lux | 4.7 % |

Niveaus in der vereinfachten Berechnung: «Gering» TLQ-Median über 1.9 %, «Mittel» über 3.1 %,
«Hoch» über 4.7 %. Bei der detaillierten Berechnung (dynamische stündliche Simulation) gilt
stattdessen der Autonomie-Median über 50 % bei der jeweiligen Beleuchtungsstärke; als Beispiel
einer Simulationszeitspanne nennt der Katalog für Büros 8 bis 17 Uhr, also neun Stunden.

**Werkzeuge:** «Tageslicht-Tool Minergie-ECO» (XLSX mit Anleitung) oder ein geeignetes
Simulationstool. Im Hilfsmittel-Block genannt: DIAL+ Lumière naturelle, EcoBIM Daylight,
Lesosai Tageslicht, Relux Lichtplanung. Anhang B des Katalogs vermerkt zum Stand 23.01.2025 ein
«überarbeitetes Tageslicht-Tool» — bei einer laufenden Zertifizierung also die Tool-Version
prüfen, nicht eine abgelegte Kopie weiterverwenden.

## Die befristete Ausnahme für Schulbauten (40 % statt 50 %)

Wörtlich aus dem Abschnitt «Bemerkungen» zu 140.01:

> «Befristete Ausnahmeregelung für die Gebäudekategorien kleine Schule und Schule (Neubau und
> Erneuerung) der Bauweisen «mittel», «leicht» und «sehr leicht» gemäss SIA-Norm 380/1: Ergeben
> sich Zielkonflikte zwischen der Erfüllung der Anforderungen an das Tageslicht und den
> sommerlichen Wärmeschutz gemäss Minergie (ab Version 2023), so gilt ein reduzierter
> Tageslichterfüllungsgrad für die Hauptnutzräume von mind. 40 %. Der Anteil der Raumflächen, die
> einen ungenügenden Tageslichterfüllungsgrad von weniger als 40 % aufweisen dürfen, beträgt
> unverändert max. 20 % (Neubau) bzw. 35 % (Erneuerung).»

Drei Bedingungen, die in der Kurzfassung des Änderungsanhangs fehlen und für die Anwendung
entscheidend sind:

1. Nur die Gebäudekategorien **kleine Schule und Schule**, Neubau wie Erneuerung.
2. Nur die **Bauweisen «mittel», «leicht» und «sehr leicht» nach SIA 380/1** — bei schwerer
   Bauweise steht die Ausnahme nicht offen.
3. Nur bei einem echten **Zielkonflikt mit dem sommerlichen Wärmeschutz gemäss Minergie ab
   Version 2023**; der Anteil ungenügend belichteter Raumflächen bleibt unverändert.

⚠ **Kein Befristungsdatum belegt.** Weder der Vorgabentext noch Anhang B nennen, bis wann die
Regelung gilt; das Wort «befristet» steht ohne Datum. Vor einer Berufung darauf bei der
Zertifizierungsstelle erfragen (offene Frage, siehe `[[QUESTIONS]]`).

## Zusammenhang mit dem sommerlichen Wärmeschutz

Die Ausnahme existiert, weil zwei Anforderungen gegeneinander laufen: Tageslicht verlangt grosse
Glasflächen, der sommerliche Wärmeschutz verlangt kleine oder gut verschattete. Der Katalog
adressiert den Konflikt an zwei Stellen ausdrücklich, einmal im Rat gegen die 750-Lux-Autonomie
von 70 % und einmal in der Schulbau-Ausnahme. Fachlich gehört die Auflösung in die frühe Phase:
Raumtiefe, Geschosshöhe, Brüstungshöhe und Fensterformat entscheiden über beide Grössen zugleich
und sind im Vorprojekt noch verhandelbar. Siehe `[[sommerlicher-waermeschutz]]` und
`[[fenster-uw-g-wert-zielkonflikt]]`.

## Die übrigen Vorgaben der 140er-Reihe

- **140.02 Ausblick von Arbeitsplätzen** — 80/20-Regel mit «mind. 80 %» als Bezugsgrösse.
- **140.03 Aktivierung der Nutzenden im Innenbereich** — bewegungsfördernde Innenräume.
- **140.04 Aktivierung der Nutzenden im Aussenbereich** — Velozufahrtswege, Veloparkplätze,
  Haupt- und Nebeneingänge; Nachweis über Umgebungspläne, Datenblätter Parkierungsanlagen und
  Fotos. Gilt laut FAQ auch für Industriebauten, dort aber nur für Bereiche mit Arbeitsplätzen.
  Hilfsmittel: ASTRA-Handbuch Veloparkierung, TBA ZH Leitfaden Veloparkierung in Wohnsiedlungen.

## Quellen

Destillat `[[minergie-eco-vorgabenkatalog-standard-2023-1]]`, Abschnitt «Die 140er-Reihe»,
gelesen am Volltext der geltenden Fassung (Dokumentstand 01.07.2026, S. 46-53/109) am
07.09.2026. Bauherren-Antwort: `[[BAUHERREN-FAQ]]` F285.
