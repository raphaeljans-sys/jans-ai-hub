---
title: Fidelity-Review 2026-08-01 — Modalitätswechsel auf Dokument-Gold
status: final
last_updated: 2026-08-01
gewichtung: authentisch
sources: [AR - 03 Studien/2407 Regensdorf/09_Dokumente/JANS (240419_Praesentationsskript_Strategische_Machbarkeit.docx, Entwerferische Fragestellungen in Bezug auf Grundriss.docx), ../wiki/stimme.md, ../wiki/denken.md, ../wiki/haltung.md, ../wiki/fachsignatur.md, ../wiki/arbeitsweise.md, ../wiki/beziehungsregister.md, ../outputs/2026-07-31_fidelity.md, ../raw/_INGESTED.md]
links: [[stimme]], [[denken]], [[haltung]], [[beziehungsregister]], [[fachsignatur]], [[arbeitsweise]], [[QUESTIONS]]
---

# Fidelity-Review 2026-08-01 — der erste Lauf ausserhalb der Mail

Frische Session ohne Vorwissen.

**Gesamt-Fidelity 56.** Das ist der tiefste je gemessene Wert, und er ist der nützlichste seit
Tagen. Er misst nicht denselben Gegenstand wie die 75 vom 31.07.: gemessen wurde zum ersten Mal
ein **JANS-Eigendokument** statt einer Mail. Der Befund in einem Satz: **der Zwilling ist ein
Mail-Zwilling.** Nimmt man ihm den Mail-Rahmen weg, schreibt er weiter Mails.

## Warum dieser Lauf die Modalität wechselt

Der Mail-Korpus ist als Gold erschöpft, und das ist jetzt messbar, nicht mehr vermutet:

```
Sent Items rj@, beforeDateTime 2025-07-04, order oldest  →  totalResultCount 2
```

Das Postfach beginnt am **04.07.2025**. Es gibt kein älteres Mail-Gold. Das Fenster
Juli 2025 bis Dezember 2025 (alles, was vor dem Claude-Stichtag liegt) ist durch 40 Mail-Batches
und rund zwanzig Fidelity-Läufe durchgearbeitet; Dezember 2025 wurde am 31.07. als vollständig
verbraucht ausgewiesen. Der Modalitätswechsel auf Archiv-Dokumente stand seit dem 29.07. als
Empfehlung in drei aufeinanderfolgenden Reports (260729, 260730, 260731, dort je Empfehlung 3
bzw. 4). Dieser Lauf setzt ihn um.

**Gewähltes Gold** — Projekt 2407 Regensdorf, Holenbachstrasse 45-55, beide Dokumente 2024 und
damit klar vor-Claude, beide im Wiki **null belegt** (Gegenprobe `grep -rin "regensdorf\|holenbach"`
= 0 Treffer, in beiden Datumsformaten):

- **Gold A** `240419_Praesentationsskript_Strategische_Machbarkeit.docx` — Skript für die
  Präsentation der Machbarkeitsstudie vor der Bauherrschaft, 19.04.2024.
- **Gold B** `Entwerferische Fragestellungen in Bezug auf Grundriss.docx` — interner
  Fragenkatalog zur Grundriss-/Baukörpertypologie.

**Echo-Prüfung: negativ, beide sind Gold.** Dichte Tippfehler («Bebauuntstyp», «Szenariso»,
«Macharkeitsstudie», «Machbarekti», «NACHBARSCAHFT», «Abgestuffte», «Maumassenverteilung»,
«Bauköper»), ein Kasusfehler in der Anmoderation, gemischte Anführungszeichen (Guillemets «WIE»
neben typografischem „UMBAU") und gemischte Apostrophformen (7'200 neben 1’440) im selben
Absatz. Ein Modell hätte all das vereinheitlicht.

**Kontaminations-Vermerk, ehrlich:** die SharePoint-Suche zeigte vorab einen Satzanfang aus dem
**Protokoll** desselben Projekts («Grundsätzlich stehen drei unterschiedliche Strategien»). Meine
Blindfassung nennt drei Varianten, das Original drei Szenarien — die **Dreizahl ist deshalb
unten nicht als Treffer gewertet**. Die Blindfassungen selbst entstanden vollständig vor jedem
Lesen der beiden Golddateien und liegen fixiert im Scratchpad
(`twin-blindfassungen-260801.md`).

## Gold A — Präsentationsskript «Strategische Machbarkeit» (19.04.2024)

| Facette | Score | Drift |
|---|---|---|
| Stimme | 52 | **Kernfehler.** Ich habe eine **Rede** geschrieben, Raphael schreibt ein **Gerüst**: nummerierte VERSALIEN-Kapitel + Tabulator + «: Kurzbeschrieb», Stichworte statt Sätze, Zahlen in einer Kolonne. Dazu habe ich Mail-Signaturphrasen («Besten Dank …», «Ich erlaube mir …») in ein internes Dokument getragen, das gar keinen Empfänger hat. |
| Denken | 55 | Varianten-Denken und Wenn-dann-Kette getroffen. Ganz gefehlt: das tragende Instrument, ein **Vier-Interessen-Raster** — Favorit Bauherrschaft · Favorit Baubehörde · Favorit Nachbarschaft **ausdrücklich als *Advocatus diaboli*** (mit selbst beschafftem Beweismittel: Geländeschnitt zum Nachbarhaus) · Favorit Bewohner/Bautechnik. Ebenso gefehlt: die offengelegte Rechenkette und die nummerierte «1. Erkenntnis». |
| Haltung | 58 | Ich empfehle und schliesse. Raphael macht das Gegenteil: der letzte Traktandenpunkt heisst «07 INPUT» und trägt den Vermerk «Eigentliches Ziel der heutigen Präsentation: Input und Fragen». Verfehlt auch das Fazit **gegen den erklärten Favoriten der Bauherrschaft** («Hofhaus schöpft die maximale Baumassenreserve nicht aus», obwohl der Hof der «klare Favorit» ist) und die Selbstkritik an der eigenen Variante («Machbar aber schon massiv»). |
| Beziehungsregister | 45 | **Schwächste Facette.** Ich habe «Gebt mir bescheid» und «Ihr» gesetzt — ein Mail-Register in einem Dokument ohne Adressaten. Das Original hat keine Anrede, keinen Gruss, keine Signatur und führt den Auftraggeber in der **Drittform** «Sitzung vom 7.2.2024 mit Herrn Bopp». |
| Fachsignatur | 48 | Echter Fachfehler: ich rechne mit **Ausnützungsziffer**, Regensdorf arbeitet mit der **Baumassenziffer** — «W2.2 = Grundstücksfläche × 2.2, **+ 0.3 für die Arealüberbauung**», daraus 22'490 m3 Arealüberbauung / 7'564 m3 Baumassenreserve / 3'195 m3 **stille Reserven** / rund 10'000 m3 Total. Gefehlt auch: «Abstandsbild», «subsidiäre Tragwerksmassnahmen», «Sondierbohrungen» als noch nicht erbrachte Vorleistung. |
| Arbeitsweise | 62 | **Beste Facette.** Gliederung, Grundlage→Fazit→nächster Schritt und die Zerlegung sitzen. Verfehlt: die **Agenda als eigener Kopf** mit Kurzbeschrieb je Kapitel; der **Zustimmungs-Check** davor («Wenn alle mit den Themenschwerpunkten einverstanden sind, würde ich beginnen»); die Herkunftskette mit «>» (Studie 2018 → deren Kernaussage → offene Kritik «Desktop-Studie, sagt nicht viel aus über das «WIE»» → eigener Anspruch «muss eine belastbare Entscheidungsgrundlage sein»). |

## Gold B — Fragenkatalog «Entwerferische Fragestellungen» (2024)

Sieben Zeilen, und sie kosten den Zwilling mehr Punkte als jede lange Mail.

| Facette | Score | Drift |
|---|---|---|
| Stimme | 50 | Ich setze «_ » und formuliere aus. Das Original setzt **«>>>»** — ein eigenes Zeichen für die offene Frage — und wird telegrafisch: «Position Treppenhaus», «Position Balkon», «Position Zimmer», «Position Wohnen». Themenblöcke als blosses Label ohne Doppelpunkt («Baukörperlänge», «Nutzungsverteilung»). |
| Denken | 58 | Die selbstgestellte Fragenkaskade als Instrument getroffen. Verfehlt: die **Ableitungsrichtung** — «Was ergibt sich aus der maximalen Gebäudelänge für eine ideale **Spännerzahl**?» Die Typologie folgt bei ihm der baurechtlichen Grenze, nicht der Entwurfsidee. |
| Haltung | 65 | Nichts Falsches, aber auch nichts Belegtes: die Gattung ist zu kurz, um Haltung zu prüfen. |
| Beziehungsregister | 80 | Beide Fassungen ohne Empfänger — hier trägt die DNA. |
| Fachsignatur | 42 | **Schwächste Facette des Laufs.** Ich frage rein typologisch (Wohnungstiefe, Belichtung, Küchenlage). Raphael koppelt **jede** Frage an eine Rechts- oder Schutzgrösse: «Wie nahe darf der Baukörper architektonisch **und feuerpolizeilich** an die Nachbarsbauten kommen?», «Wie gross ist der **Mehrhöhenzuschlag** gegen Westen?». Der Titel sagt es vorweg: «in Bezug auf Grundriss, Bauköper **und Baurecht**». |
| Arbeitsweise | 55 | Gruppierung nach Themen verfehlt (ich hatte eine flache Liste). Dazu ein **belegtes Don't verletzt**: ich hänge «Ich schlage vor, sie in dieser Reihenfolge zu klären» an — genau die Schlussverlängerung, die seit 260731 im Gehirn steht. Das Original endet mit der letzten Frage. |

## Gesamtbild

| Facette | Gold A | Gold B | Mittel |
|---|---|---|---|
| Stimme | 52 | 50 | **51** |
| Denken | 55 | 58 | **57** |
| Haltung | 58 | 65 | **62** |
| Beziehungsregister | 45 | 80 | **63** |
| Fachsignatur | 48 | 42 | **45** |
| Arbeitsweise | 62 | 55 | **59** |
| **Gesamt** | 53 | 58 | **56** |

**Der Wert ist nicht mit den Mail-Läufen vergleichbar** und darf nicht als Rückschritt gelesen
werden. Zwei Gründe: die Gattung war im Wiki mit null Markern belegt (bei den Mail-Läufen lag
das Material vollständig vor, dort mass der Test das *Abrufen*), und die Notation eines
Eigendokuments ist bei Raphael eine andere als die der Mail — nicht eine Variante davon. Die 56
messen, wie weit die aus Mails destillierte DNA in eine ungeprüfte Modalität trägt. Antwort:
etwa zur Hälfte.

## Der Kernbefund: es gibt eine zweite Notation, und sie war nirgends beschrieben

| Element | Mail (belegt) | Eigendokument (neu belegt) |
|---|---|---|
| Rahmen | Anrede · Gruss · Signatur | keiner |
| Grundform | ausformulierter Satz | Stichwort-Gerüst mit Doppelpunkt-Zuordnung |
| Kapitel | fette Blocktitel | `01 AUSGANGSLAGE` VERSALIEN + Tab + `: Kurzbeschrieb` |
| Offene Frage | «_ »/«–»-Bullet | **`>>>`** |
| Quelle/Grundlage | Fliesstext-Verweis | **`>`** vor Studie oder Sitzungsdatum |
| Varianten | «Variante 1/2/3» | benannte Szenarien «UMBAU»/«ENSEMBLE»/«TRANSFORMATION» |
| Zahlen | im Satz | rechtsbündige Kolonne, Label nachgestellt |
| Erkenntnis | Fliesstext | nummeriert («1. Erkenntnis: …») |

Alle acht Zeilen der rechten Spalte waren vor diesem Lauf unbelegt. Das erklärt die 56
vollständig: der Zwilling hat nicht falsch gearbeitet, er hatte für diese Gattung kein Wissen.

## Gegenseitige Validierung der Facetten

Kein neuer Widerspruch, aber eine **präzisierte Spannung**: die seit 260731 befristete
Zwischenregel in [[stimme]] («die Aufzählungsform wechselt blockweise mit der Logik des Blocks»)
war für die **Sie-Mail** formuliert. Das Dokument-Gold zeigt, dass der Formwechsel dort nicht
kontextabhängig, sondern **bedeutungstragend** ist: «>>>» heisst offene Frage, «>» heisst
Grundlage, «_ » heisst Aufzählung. Das ist ein Zeichensystem, kein Stilwechsel. Die offene
QUESTIONS 260730 #3 gewinnt damit eine zweite Dimension und wird durch die neue Frage 260801 #4
ergänzt, nicht ersetzt.

Zweiter Befund: [[fachsignatur]] kannte «Recht in **Wirtschaftlichkeit** übersetzen». Gold B
zeigt eine zweite, gleichwertige Kette — «Recht in **Entwurf** übersetzen» (maximale
Gebäudelänge → ideale Spännerzahl). Keine Korrektur, eine Erweiterung; sie ist eingearbeitet.

## Änderungen an der Wissensbasis

- **[[stimme]] Do/Don't** — neue **Gattungsweiche Mail ↔ Eigendokument** samt Notation
  (VERSALIEN-Kapitel, «>», «>>>», benannte Szenarien, Zahlenkolonne, nummerierte Erkenntnis);
  neues Don't: den Mail-Ton nicht ins Eigendokument tragen.
- **[[stimme]]** — neuer Beleg-Abschnitt mit der Gegenüberstellungstabelle und der Echo-Prüfung.
- **[[denken]] Do/Don't** — **Vier-Interessen-Raster** (Bauherrschaft · Behörde · Nachbarschaft
  als Advocatus diaboli · Bewohner/Bautechnik), nummerierte Erkenntnisse, Rechenkette offenlegen.
- **[[haltung]] Do/Don't** — die Präsentation dient dem Input, nicht der Zustimmung;
  Agenda-Zustimmung einholen; Fazit gegen den Favoriten der Bauherrschaft; Selbstkritik an der
  eigenen Variante.
- **[[fachsignatur]] Do/Don't** — Baumassenziffer-Mechanik (W2.2 × Fläche, +0.3 Arealüberbauung,
  stille Reserven), Vokabular (Abstandsbild, Mehrhöhenzuschlag, Spännerzahl, subsidiäre
  Tragwerksmassnahmen, Sondierbohrungen, Geländeschnitt); jede entwerferische Frage an eine
  Rechts-/Schutzgrösse koppeln.
- **[[arbeitsweise]] Do/Don't** — Präsentation beginnt mit der Agenda und deren Zustimmung;
  Grundlagen mit Herkunft belegen («>»), inklusive offener Kritik an der übernommenen Vorstudie.
- **[[beziehungsregister]] Do/Don't** — Drittform «Herr <Nachname>» im Eigendokument, mit
  ausdrücklichem Vorbehalt (Einzelbeleg 2024) und Verweis auf die Frage.
- **[[QUESTIONS]]** — Runde 260801 mit 5 Fragen.
- **`rules/jans-dna.md`** — neu kompiliert, alle sechs Facetten tragen die neuen Klauseln.
- **`raw/_INGESTED.md`** — Gold-Verbrauch dieses Laufs verbucht (Empfehlung 1 aus 260731,
  erstmals angewandt) plus neuer Strang «Dokument-Gold».

## Empfehlungen

1. **Den Dokument-Strang systematisch weiterführen.** Der Modalitätswechsel hat bei zwei
   gelesenen Dateien acht unbekannte Notations-Elemente und zwei Fachlücken gefunden — die
   höchste Ausbeute pro gelesenem Dokument in der Geschichte dieser KB. Unerschlossen liegen
   allein in `AR - 03 Studien` neun Projekte vor 2026 (2001, 2002, 2103, 2304, 2305, 2306, 2407,
   2408, 2409, 2410, 2411, 2412), dazu `AR - 02 Wettbewerbe` mit den Erläuterungsberichten. Der
   Mail-Loop `twin-mail-training` sollte diesen Strang übernehmen, sobald die Februar-Lücke
   abgearbeitet ist; die Fenster-Logik («nächstes Fenster») lässt sich 1:1 auf Projektordner
   übertragen.
2. **Die Gattung vor dem Schreiben bestimmen.** Der Zwilling hat in beiden Blindfassungen
   reflexhaft eine Mail geschrieben. Die neue Gattungsweiche im Gehirn behebt das nur, wenn der
   erste Schritt jedes Erzeugnisses lautet: *Mail oder Eigendokument?* Für das Gate im Skill
   `twin` heisst das eine zusätzliche Eingangsfrage, nicht nur Empfänger und Anlass.
3. **Das Vier-Interessen-Raster ist ein Skill-Kandidat, keine Stilregel.** Es gehört
   inhaltlich in `machbarkeit` und `nutzungsstrategie` (dort als Pflichtschritt vor der
   Variantenbewertung), nicht nur in die Twin-DNA. Voraussetzung ist Raphaels Antwort auf
   QUESTIONS 260801 #3 — ob es sein Standardraster ist oder für Regensdorf gebaut war.
4. **Artikelgrösse** — unverändert offen, fünfte Nennung. [[stimme]] steht jetzt bei rund
   260 KB. Der Rückruf funktionierte in diesem Lauf nur deshalb sauber, weil das Gold **null**
   Belege hatte und die Suche folglich nichts finden konnte.
