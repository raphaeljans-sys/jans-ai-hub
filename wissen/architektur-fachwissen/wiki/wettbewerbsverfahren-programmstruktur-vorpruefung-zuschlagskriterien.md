---
title: "Wettbewerbs-/Studienauftragsprogramm: Grundstruktur, Vorprüfungs- vs. Zuschlagskriterien (zwei öffentliche Verfahren 2009)"
status: emerging
last_updated: 2026-08-31
sources: ["/Volumes/daten/04_Buero/10_Referenzenbibliothek/25_Wettbewerb/zeughaus.pdf (Hochbauamt Kanton Appenzell Ausserrhoden, Präqualifikation und Studienauftrag «Umnutzung Zeughaus Ebnet, Herisau», 2009)", "/Volumes/daten/04_Buero/10_Referenzenbibliothek/25_Wettbewerb/Natums/a20natmus2009-03-0320wettbewerbsprogramm.pdf (Hochbauamt Stadt St.Gallen, offener Projektwettbewerb «Neubau Naturmuseum» nach SIA 142:1998, 2009)", "raw/inventar/buero-referenzen__25_Wettbewerb.md Abschnitte 1, 2, 7"]
links: ["[[wettbewerbs-teilnahmebedingungen-ausstand-abgabe-urheberrecht]]", "[[honorarmechanik-wettbewerb-oeffentliche-bauherrschaft]]", "[[raumprogramm-spaltenlogik-sia416-naturmuseum]]"]
---

# Wettbewerbs-/Studienauftragsprogramm: Grundstruktur

## Kontext

Zwei vollständig abgelegte Veranstalter-Programme öffentlicher Bauherrschaften aus
dem Frühjahr 2009, beide Abgabetermin 28.08.2009: **Zeughaus Ebnet, Herisau**
(Kanton Appenzell Ausserrhoden, selektives Verfahren: Präqualifikation plus
anonymer Studienauftrag, fünf eingeladene Büros) und **Neubau Naturmuseum,
St.Gallen** (Stadt St.Gallen, offener, anonymer Projektwettbewerb nach SIA 142,
Ausgabe 1998). Beide Programme sind Veranstalterunterlagen, keine eigenen
JANS-Beiträge; ihr Wert liegt in der Struktur, nicht im Projekt.

**Alle Normverweise dieser Quelle sind veraltet** (SIA 142:1998, SIA 102:2001/2003,
SIA 112:2003) und dürfen nie als geltendes Recht zitiert werden — jede
Norm-Übernahme läuft über den Skill `normen`, nie über dieses Inventar.

## Grundstruktur, in beiden Programmen dieselbe

Verfahren → Teilnahmeberechtigung → Beurteilungsgremium → Preissumme/Entschädigung
→ Weiterbearbeitung inkl. Honorarbasis → Termine → Vorprüfungs- und
Beurteilungskriterien → Liste der abgegebenen und der einzureichenden Unterlagen →
erst danach der inhaltliche Aufgabenteil (Städtebau, Baurecht, Erschliessung,
Baugrund, Energie, Naturschutz, Kostenrahmen).

**Praxisregel:** diese Gliederung als Referenzgerüst für den Skill `wettbewerb`
verwenden, unabhängig davon, ob ein offenes oder ein selektives Verfahren
vorbereitet wird.

## Vorprüfungs- vs. Zuschlagskriterien — zwei getrennte Prüfstufen

Das Naturmuseum-Programm (Ziff. 2.9) trennt ausdrücklich: **formelle Kriterien**
(fristgerechte Einreichung, Vollständigkeit, Lesbarkeit, Anonymität, Sprache)
entscheiden über die **Zulassung zur Beurteilung**; **materielle Kriterien**
(Erfüllung von Wettbewerbsaufgabe und Raumprogramm, Einhaltung der
Randbedingungen) über die **Zulassung zur Preiserteilung**.

**Praxisregel:** Formfehler töten den Beitrag ganz, materielle Mängel kosten
höchstens den Preis — diese Logik muss ein Konformitäts-Check (Agent
`programm-pruefer`) zweistufig nachbilden, nicht als eine einzige Prüfliste.

## Zuschlagskriterien: gleiche fünf Themen, entgegengesetzte Reihenfolgenlogik

Naturmuseum (Ziff. 2.10): Städtebauliches Konzept, Architektur, Organisation,
Wirtschaftlichkeit (Erstellung **und** Unterhalt), Nachhaltigkeit — das Programm
hält ausdrücklich fest, dass die Reihenfolge **keine Gewichtung** darstellt.

Zeughaus: dieselbe Kriterienfamilie wird ausdrücklich «unter den folgenden
Gesichtspunkten **und Reihenfolge**» genannt — funktionale Qualitäten zuoberst,
Wirtschaftlichkeit/Kosten an zweiter, architektonische Qualitäten an dritter
Stelle.

**Praxisregel:** zwei öffentliche Bauherrschaften desselben Jahres treffen
gegenläufige Aussagen zur Gewichtung. Ein Wettbewerbsprogramm ist deshalb immer
einzeln zu lesen — die Reihenfolge der Kriterien nie aus Erfahrung oder einem
anderen Programm ergänzen.

Ein drittes Programm (Stadt Zürich AHB, Wohnsiedlung Schönauring, 22.07.2011,
Quelle in [[honorarmechanik-wettbewerb-oeffentliche-bauherrschaft]]) verwendet
dieselbe vier-Themen-Familie wie das Naturmuseum (Städtebau/Architektur/
Aussenraum, Funktionalität, Wirtschaftlichkeit, ökologische Nachhaltigkeit,
ohne «Organisation» als eigenes Kriterium) und hält ebenfalls ausdrücklich
fest, dass die Reihenfolge keine Wertung enthält — ein zweiter Beleg für die
«keine Gewichtung»-Formel neben dem Naturmuseum-Fall.

## Aufgabenteil kann harte Regeln statt reiner Beschreibung enthalten

Der Baugrund-Abschnitt des Naturmuseum-Programms (Ziff. 3.8) formuliert eine
geometrische Bauregel («innerhalb der Grenzabstände bis 6 m Tiefe ohne Weiteres
zu bauen, darüber hinaus Distanz zur Grundstücksgrenze ≥ Bautiefe») **und**
verankert sie ökonomisch (Preisaufschlag für umbauten Raum unterhalb −6 m in der
Wirtschaftlichkeitsprüfung). Ein Beleg dafür, dass ein Programm-Aufgabenteil
mehr sein kann als Beschreibung — er kann eine Tiefenschwelle gleichzeitig als
Geometrieregel und als Kostenmechanismus setzen. Relevant für `machbarkeit` und
`grobkosten-onepager` als Musterlogik, nicht als übertragbarer Zahlenwert (die
6 m und der Aufschlag sind projektspezifisch St.Gallen 2009).

## Offene Punkte

- Kein Juryergebnis zu beiden Verfahren im Bestand (siehe `wiki/QUESTIONS.md`
  #24) — die Programme belegen, was verlangt wurde, nicht, was gewonnen hat.
- Ungeklärt, ob JANS an einem der beiden Verfahren teilnahm.
