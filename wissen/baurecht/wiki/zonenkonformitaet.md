---
title: Zonenkonformität & BZO-Systematik — Kanton Zürich
status: established
last_updated: 2026-08-23
sources: [260602_docs-baurecht-bzo-zh.md, 260602_docs-baurecht-begriffe.md, "Art. 13 BZO Zürich (Stadt)", "Art. 14 BZO Zürich (Stadt)", "Art. 18 BZO Zürich (Stadt)", 260607_amtlich_zh_bzo-zurich-stadt.md, "Art. 3 BZO Thalwil", "Art. 6 BZO Thalwil", "Art. 20a BZO Thalwil", 260607_amtlich_zh_bzo-thalwil.md, 260823_amtlich_zh_bzo-thalwil-grundmasse.md, "Art. 25 BZO Thalwil", "§ 293 PBG", "[[kap16-10_gebaeudedimensionen-harmonisierung]]"]
links: [[nutzungsziffern]], [[abstaende-und-hoehen]], [[baubewilligungsverfahren]], [[gebaeudearten-und-abstandssystem]]
verifiziert:
  - datum: 2026-08-23b
    methode: "Screenshot-Gegenprobe (Korpus-Queue Batch T6, Ordner «03 PBG Zürich» + «Anrechenbares Untergeschoss Abgrabunge») gegen raw/260607_amtlich_zh_bzo-thalwil.md Z. 874-908, Buch-Run 77"
    umfang: "Art. 6 BZO Thalwil (Bauweise: Grenzbau, Gebäudelängen-Überschreitung, anrechenbares UG am Hang) — bislang nicht im Wiki erfasst, obwohl im Raw bereits vollständig vorhanden"
    ergebnis: "Wortgleich CONFIRMED, neue Sektion ergänzt. Kein neuer raw/-Ingest nötig."
  - datum: 2026-07-25
    methode: "Modell-D-Volltextabgleich, Buch-Run 56, Stichproben-Re-Verifikation (Priorität c, PROGRAMM.md) — Original-PDF (oerebdocs.zh.ch/getDoc?docid=6) neu mit pdftotext -layout extrahiert, da die bestehende raw-Datei die mehrspaltige Grundmasse-Tabelle linearisiert und dadurch Spalten verschoben hatte"
    umfang: "Art. 13 (Wohnzonen W2-W6, Grundmasse), Art. 14 (Mehrlängenzuschlag), Art. 18 (Zentrumszonen Z5-Z7) BZO Zürich Stadt, Stand 29.05.2024, gegen raw/260607_amtlich_zh_bzo-zurich-stadt.md + frisch extrahiertes PDF-Layout"
    ergebnis: "GESAMTE Zahlenwerttabelle war falsch. Quelle war raw/260602_docs-baurecht-bzo-zh.md, eine selbst erstellte Schätz-/Platzhaltertabelle (dort explizit 'TODO: Werte ergänzen', nie am Erlass geprüft) - keine Halluzination im Wiki selbst, aber ein seit der Ersterfassung unbelegter Platzhalter, der als 'established' lief. Alle Werte ersetzt durch die amtliche Art.-13/14/18-Tabelle; die Systematik 'grosser/kleiner Grenzabstand' existiert in der Stadt-Zürich-BZO nicht (das ist kantonale PBG/ABV-Regelbauweise-Terminologie für Gemeinden ohne eigene Grundmasse-Regelung) und wurde durch die reale Struktur (Grundgrenzabstand + Mehrlängenzuschlag Art. 14) ersetzt."
  - datum: 2026-08-23
    methode: "Layout-Neuextraktion (pdftotext -layout) gegen frisch bezogenes amtliches PDF (oerebdocs.zh.ch/getDoc?docid=1296) UND unabhängige Zweitquelle (Projektordner-Screenshot-PDF derselben Erlassseite, Stand 26.11.2024) — Korpus-Queue Batch T3, Buch-Run 75"
    umfang: "Art. 3 (Grundmasse Wohnzonen W1-WG4), Art. 20a (SBV Aufwertung/Verdichtung W3/WG3) BZO Thalwil, gegen raw/260823_amtlich_zh_bzo-thalwil-grundmasse.md"
    ergebnis: "Neue Thalwil-Sektion ergänzt (Grundmasse-Tabelle + Art. 20a + Zonenarten-Legende). Dieselbe Linearisierungs-Fehlerfamilie wie beim Zürich-Stadt-Fall vom 25.07.2026 bestätigt: raw/260607_amtlich_zh_bzo-thalwil.md verschiebt Art. 3 von seinen Zonen-Spalten (Zeilen 682-918); Art. 20a war dort dagegen bereits korrekt lesbar und wird nur bestätigt, nicht neu ingestiert. Zwei unabhängige PDF-Quellen (frischer Download + Projektordner-Kopie) zeichengleich, kein Fassungskonflikt trotz abweichender Gesamtseitenzahl (19 vs. 21, PDF-Exportartefakt)."
---

# Zonenkonformität & BZO-Systematik

Die Bau- und Zonenordnung (BZO) ist das kommunale Regelwerk, das pro Zone die
spezifischen Bauvorschriften festlegt (Nutzung, Masse, Gestaltung). **Jede Gemeinde
im Kanton Zürich hat eine eigene BZO** — Werte nie als allgemeingültig behandeln. Die
übergeordnete Planungssystematik (Richtplan, Nutzungsplanung, Sondernutzung) und das
Einordnungsgebot stehen in [[raumplanung-und-gestaltung]].

> **Wichtig — kommunal, nicht kantonal:** die Grundmasse-Tabelle unten gilt **nur für
> die Stadt Zürich**. Jede andere Gemeinde hat eigene Zahlen; die Systematik
> (Vollgeschosse/Untergeschoss/Dachgeschoss/Gebäudehöhe/Grenzabstand/AZ) ist über die
> IVHB-Harmonisierung meist vergleichbar aufgebaut, die Werte selbst nicht. Amtliche BZO-
> Volltexte für 43 weitere ZH-Gemeinden liegen in `raw/260607_amtlich_zh_bzo-<gemeinde>.md`.

## Zonenarten (Stadt Zürich)
W2–W6 (Wohnzonen 2–6 Geschosse, inkl. reduzierter Sub-Varianten W2bI/W2bII/W2bIII und
W4b), Z5–Z7 (Zentrumszonen), IG I–III (Industrie-/Gewerbezonen), Q (Quartiererhaltung),
Oe (öffentliche Bauten), E (Erholung), L (Landwirtschaft), F (Freihaltung), R (Reserve).

## Grundmasse BZO Stadt Zürich (Art. 13 f. — Wohnzonen)

Amtlich verifiziert gegen Art. 13/14 BZO Zürich (Stadt), Stand 29.05.2024
(`raw/260607_amtlich_zh_bzo-zurich-stadt.md`). Der **Grundgrenzabstand ist einheitlich
5 m** in allen Wohnzonen (keine Unterscheidung «grosser/kleiner GA» wie in der
kantonalen PBG/ABV-Regelbauweise); er erhöht sich bei Fassadenlängen über 12 m um einen
Drittel der Mehrlänge bis zum in der letzten Spalte genannten Höchstmass
(Mehrlängenzuschlag, Art. 14).

| Zone | Vollgeschosse max. | anr. UG max. | anr. DG max. | Gebäudehöhe max. | Grundgrenzabstand min. | AZ max. | Mehrlängenzuschlag max. |
|---|---|---|---|---|---|---|---|
| W2 | 2 | 1 | 1 | 9 m | 5 m | 60 % | 10 m |
| W3 | 3 | 0 | 1 | 9,5 m | 5 m | 90 % | 10 m |
| W4b | 4 | 0 | 1 | 12,5 m | 5 m | 105 % | 11 m |
| W4 | 4 | 0* | 1 | 12,5 m | 5 m | 120 % | 11 m |
| W5 | 5 | 0* | 1 | 15,5 m | 5 m | 165 % | 12 m |
| W6 | 6 | 0* | 1 | 18,5 m | 5 m | 205 % | 13 m |

`*` vorbehältlich Art. 8 Abs. 7 BZO. Reduzierte Varianten W2bI/W2bII/W2bIII: 2
Vollgeschosse, GH 9 m, GA 5 m, AZ 40 %/40 %/45 % (niedrigere Ausnützung als Standard-W2).
In Gebieten mit erhöhter Ausnützung (im Zonenplan bezeichnet) gelten abweichende
Regeln (Art. 13 Abs. 2, u.a. AZ = Vollgeschosszahl × 100 % im 12-m-Strassenstreifen,
nicht übertragbar). AZ-Bonus bis 10 Prozentpunkte bei Arealüberbauung Minergie-Standard
(Art. 8 Abs. 5/6). Herabsetzung des Grenzabstands je weggelassenem Vollgeschoss um 1 m
bis zum kantonalen Mindestmass: Art. 15 BZO.

## Grundmasse Zentrumszonen (Art. 18)

| Zone | Vollgeschosse max. | Gebäudehöhe max. | Grundgrenzabstand min. | AZ max. |
|---|---|---|---|---|
| Z5 | 5 | 19 m | 3,5 m | 200 % |
| Z6 | 6 | 22 m | 3,5 m | 230 % |
| Z7 | 7 | 25 m | 3,5 m | 260 % |

Zur Bedeutung der Ziffern siehe [[nutzungsziffern]], zu Abständen/Höhen
[[abstaende-und-hoehen]].

## Besondere Zonen
- **Quartiererhaltungszonen (Q):** strengere Gestaltung, Einschränkungen bei
  Abbruch/Neubau, Inventar schützenswerter Bauten beachten.
- **Kernzonen (K):** historische Ortskerne mit besonderen Schutzbestimmungen.

## Grundmasse BZO Thalwil (Art. 3 — Wohnzonen)

Amtlich verifiziert gegen Art. 3 BZO Thalwil (`raw/260823_amtlich_zh_bzo-thalwil-
grundmasse.md`, Layout-Neuextraktion — die bestehende `raw/260607_amtlich_zh_bzo-
thalwil.md` linearisiert dieselbe Tabelle und verschiebt die Zahlen von ihren
Zonen-Spalten; **dieselbe Fehlerfamilie wie bei der Stadt-Zürich-Tabelle**, Buch-Run 56).
Zonen-Legende siehe unten «Zonenarten Thalwil».

| Zone | Vollgeschosse max. | anr. UG max. | anr. DG max. | Gebäudehöhe max. | Firsthöhe max. | Grundabstand min. | AZ max. | Gebäudelänge max. |
|---|---|---|---|---|---|---|---|---|
| W1 | 2 | 1c | 1 | 7,50 m | 4,50 m | 5 m | 30 % | 25 m d |
| W2 | 2 | 1c | 1 | 7,50 m | 4,50 m | 5 m | 40 % | 30 m |
| WG2/WGS | 2 | 1 | 1 | 7,50 m | 4,50 m | 5 m | 40 % a | 30 m |
| W3 | 3 b | 1 | 1 b | 10,50 m | 5,50 m | 5 m | 60 % | 40 m |
| WG3 | 3 b | 1 | 1 b | 10,50 m | 5,50 m | 5 m | 60 % | 40 m |
| WG4 | 4 | 1 | 1 | 13,50 m | 5,50 m | 5 m | 70 % | 40 m |

Mehrlängenzuschlag (alle Wohnzonen einheitlich): ¼ der Mehrlänge über der Grundlänge von
15 m, max. bis 7 m (Art. 3 lit. e — abweichende Berechnung bei Gebäudeabstand < 7 m).
Fussnoten: a) WGS max. 50 % der Vollgeschossfläche für Wohnen; b) im Rahmen von Art. 20a
(SBV Aufwertung/Verdichtung, siehe unten) ersetzt in W3/WG3 ein Vollgeschoss das DG; c)
Ausbau zu Wohn-/Arbeitsräumen bis max. 50 % der nach § 255 Abs. 2 PBG zulässigen
Geschossfläche; d) Seeufer-Sonderregel (Gebäudelänge/Freiflächenziffer).

**Anders als in der Stadt Zürich gibt es in Thalwil keinen Grundgrenzabstand-Bonus/-Malus
nach Geschosszahl** (Art. 15 BZO Zürich-Stadt) — der Grundabstand ist in allen Thalwiler
Wohnzonen einheitlich 5 m, unabhängig von der Geschosszahl.

### Sonderbauvorschrift Aufwertung/Verdichtung W3/WG3 (Art. 20a BZO Thalwil)

Für Neu-/Umbauten in den Zonen **W3 und WG3** kann anstelle der Grundmasse-Zeile oben diese
Sonderregelung gelten (Voraussetzungen beachten, keine Automatik):

- **AZ:** max. **80 %** inkl. Gewerbeerleichterung (statt 60 %).
- **Vollgeschosse:** max. **4** (kein zusätzliches DG) statt 3 + DG.
- **Gebäudehöhe:** max. **13,50 m** statt 10,50 m.
- **Bedingung Abs. 6:** die Erleichterungen (Abs. 3-5) gelten bei Neubauten nur, wenn
  mindestens 25 % der zum Wohnen/Arbeiten genutzten Bruttogeschossfläche für
  ausnützungseffizienten Wohnungsbau reserviert ist, mit einem HNF-Deckel nach SIA 416 je
  Zimmerzahl (1,5-Zimmer 50 m² bis 6-Zimmer 132 m², ohne Überschreitungsspielraum).
- **Ausschluss:** nicht kombinierbar mit Arealüberbauung (Art. 21/22) oder untereinander
  kumulierbar.

### Bauweise Thalwil (Art. 6 BZO) — Grenzbau, Gebäudelänge, anrechenbares UG am Hang

Amtlich verifiziert gegen Art. 6 BZO Thalwil (`raw/260607_amtlich_zh_bzo-thalwil.md`
Z. 874-908) und gegen einen unabhängigen Screenshot derselben Erlassseite (Korpus-Queue
Batch T6, «Anrechenbares Untergeschoss Abgrabunge»/Art. 6.4-5) — wortgleich, CONFIRMED.

- **Abs. 1 — geschlossene Überbauung** ist zulässig (keine eigene Voraussetzung genannt).
- **Abs. 2 — Grenzbau** ist in allen Wohnzonen gestattet, wenn an ein bestehendes Gebäude
  angebaut wird **oder** der Nachbar schriftlich zustimmt (Alternative, keine Kumulation).
- **Abs. 3 — Gebäudelängen-Überschreitung bei Grenzbau:** bei gleichzeitigem Grenzbau oder
  Anbau an ein bestehendes Gebäude darf die Gesamtlänge die zonengemässe maximale
  Gebäudelänge (Art. 3, siehe Tabelle oben) um höchstens **10,00 m** überschreiten —
  Kann-Vorschrift, gebunden an Quartiercharakter, Baumassenverteilung, Hauptgesimshöhe und
  Dachprofil («gute Lösung»), keine automatische Zusatzlänge.
- **Abs. 4/5 — anrechenbares Untergeschoss an Hanglagen** (Falllinie an der Fassade
  **min. 10 %**): ist ein anrechenbares UG grundsätzlich zulässig (siehe Grundmasse-Tabelle
  oben, Spalte «anr. UG max.»), gilt zusätzlich:
  - **Talseits** (Voll- und Untergeschosse zusammengerechnet): höchstens **ein Geschoss
    mehr sichtbar** über dem gestalteten Terrain als die nach Art. 3 zulässige
    Vollgeschosszahl.
  - **Bergseits:** anrechenbare Untergeschosse dürfen um höchstens **1,50 m** freigelegt
    werden, und **nur zur Belichtung von Nebenräumen** (Küche, Bad, WC, Abstellräume u.ä.)
    — kein bergseitiger Hauptraum-Ausbau.
  - **In jedem Fall** ist die Freilegung anrechenbarer Untergeschosse auf den **halben
    Gebäudeumfang** beschränkt (Abs. 5), unabhängig von Tal-/Bergseite.
  - **Einordnung:** Art. 6 Abs. 4/5 BZO ist eine **kommunale Ausführungsbestimmung** zum
    kantonalen Freilegungsregime des § 293 PBG (nicht anrechenbares UG, max. 1,5 m über
    gestaltetem Boden, Gemeinde kann die Freilegung näher — auch strenger — regeln, § 293
    Abs. 4 PBG, siehe [[abstaende-und-hoehen]]) — betrifft aber, anders als § 293, die
    **anrechenbaren** UG und die Geschosszahl-Wirkung am Hang, nicht die Abstandsfrage.

### Attikageschosse Thalwil — ungeharmonisiert (Art. 25 BZO), Kreuzprobe Buch-Run 76

Die Rückversetzung von Attikageschossen folgt in Thalwil weiterhin der **alten**
Drittelsregelung/45°-Systematik (Art. 25 Abs. 3 BZO Thalwil: «An die Drittelsregelung gemäss
§ 292 PBG werden überdies nicht angerechnet …», `raw/260607_amtlich_zh_bzo-thalwil.md`
Z. 1642-1648) — **nicht** der harmonisierten h/2-Regel (63,43°, § 275 Abs. 4 nPBG) aus dem
Standardwerk-Kapitel [[kap16-10_gebaeudedimensionen-harmonisierung]] (Bd 2, S. 1230-1239, dort
als Vergleichsmaterial im T5-Ordner «Kniestock» als Buchscan vorgefunden, wortgleich mit dem
bestehenden Destillat gegengelesen — CONFIRMED, keine Korrektur). Massgebend für Thalwil bleibt
also die **alte** Fassung, solange die BZO nicht harmonisiert ist (vgl. [[negative-vorwirkung-und-bzo-revision]]).
Attikageschosse dürfen zudem weder 75 % der § 255 Abs. 2 PBG privilegierten Fläche noch 75 %
der Bruttogeschossfläche des darunterliegenden Geschosses übersteigen (Art. 25 Abs. 1 BZO) und
dürfen abweichend von § 292 PBG frei angeordnet werden, soweit sie nicht als Vollgeschoss in
Erscheinung treten (Art. 25 Abs. 2 BZO).

### Zonenarten Thalwil (Zonenplan-Legende, Stand 01.06.2024)

W1/W2 zweigeschossige Wohnzone · WG2 zweigeschossige Wohnzone mit Gewerbe · W3
dreigeschossige Wohnzone · WG3 dreigeschossige Wohnzone mit Gewerbeerleichterung · WG4
viergeschossige Wohnzone mit Gewerbeerleichterung · WGS Wohnzone mit Gewerbeerleichterung
am Seeufer · G Gewerbezone · Z Zentrumszone · KA/KB Kernzone A/B · QEZ
Quartiererhaltungszone · OE Zone für öffentliche Bauten und Anlagen · F Freihaltezone
(allgemein und §§ 39 ff. PBG) · E Erholungszone · R Reservezone · L Landwirtschaftszone
§§ 36 ff. PBG. Details (Empfindlichkeitsstufen LSV, Gestaltungsplanpflicht-Symbole):
`raw/260823_amtlich_zh_bzo-thalwil-grundmasse.md`.

## Online-Werkzeuge
- **GIS-ZH** (maps.zh.ch): Zonenplan, Kataster, Gewässer-/Waldabstände.
- **eBaugesucheZH:** elektronische Baueingabe (siehe [[baubewilligungsverfahren]]).
- **ÖREB-Kataster:** öffentlich-rechtliche Eigentumsbeschränkungen.

> Für Projekte ausserhalb der Stadt Zürich die jeweilige kommunale BZO konsultieren
> (Gemeindewebsite, GIS-ZH, eBaugesucheZH).
