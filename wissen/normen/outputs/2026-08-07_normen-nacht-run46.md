# Normen-Training Run 46 (MacBook Pro, 07.08.2026) — eine geplante Statushebung ist gescheitert, und das war der Ertrag

**Kurzfassung.** Dieser Lauf hat zwei Dinge getan. Er hat die **letzte als bemessungsrelevant
geführte Abdeckungslücke** dieser Wissensbasis geschlossen (SWKI VA103-01, Kap. 2.3
«Quellen» — die Emissionsgrundlagen, aus denen jede Parkhauslüftung gerechnet wird), zusammen
mit vier weiteren Lücken derselben Richtlinie. Und er hat die für heute vorgesehene **Hebung
des GVZ-Merkblatts 30.17.3 auf `established`** versucht — und sie ist gescheitert, mit fünf
Kernbefunden in einem Destillat, das Run 45 als erstes der ganzen Reihe **BESTANDEN** hatte.

Das Scheitern ist der eigentliche Ertrag. Vier Runden lang haben die Refuter dieses Merkblatts
auf die farbcodierten Matrizen der Ziff. 6 gezielt; sie halten inzwischen zum dritten Mal
zellengenau. Sämtliche neuen Befunde liegen im **Fliesstext der Seiten 2 bis 9** — genau dort,
wo ein früherer Verifikationsabschnitt festhielt, alle Ziffern seien «Wort für Wort geprüft und
stimmen». Der folgenreichste betrifft die Anforderungen an die Entrauchungsöffnungen und hätte
im praxishäufigsten Fall, der Einstellhalle im 1. UG mit Brandlüfterkonzept, direkt in ein
Leistungsverzeichnis gewirkt.

---

## 1. Vorbedingungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | **rc=0** (01:28 CEST) |
| NAS | gemountet |
| Kollisionsschutz `ps` | kein zweiter Normen-Lauf |
| Stations-Split | eingehalten — nur VKF/GVZ und PL-02-Kern, kein DIN/VSS/RAL |
| Quellzugriff OneDrive | beide Quell-PDF lesbar, keine TCC-Blockade |
| Run-Nummer | nach Sicht der jüngsten `outputs/`-Datei (Run 45) vergeben |

## 2. Der Vorrang-Auftrag — und ein Rückstand, der seine eigene Erledigung überlebt hat

Die Auftragszeile des Scheduled Task verlangt seit dem 29.07.2026 die achte Lignatec-Runde mit
rechnerischer Aufnahme von Tab. 3 und Tab. 4. Sie wurde in **Run 38** gefahren. Die Läufe 39
bis 45 haben das siebenmal neu festgestellt; dies ist die achte Feststellung. Der
Ersatzvorschlag aus Run 45 (Auftragszeile auf «arbeite den im jüngsten Report ausgewiesenen
Rückstand ab» umstellen) bleibt unverändert gültig und wird hiermit wiederholt. Ich nehme die
Umstellung nicht selbst vor.

**Neu ist etwas anderes, und es betrifft genau diesen Mechanismus.** Run 45 wies als
Rückstandspunkt 1 aus: «Der Fliesstext der Kapitel 1 bis 4 des Lignatec ist weiterhin nie
systematisch gegen das Destillat gediffed, und eine Seiten-Inventur für den Lignatec existiert
nicht. Das ist die nächste Methode auf einem ungeprüften Teil.» Dieser Satz steht so oder
ähnlich in den Reports der Runs 40 bis 45.

**Er ist seit Run 41 falsch.** Am Bestand geprüft:

- `training/lignatec-seiteninventur.md` **existiert**, 351 Zeilen, erstellt am 01.08.2026,
  Seitenzahlen ausdrücklich am Seitenrand abgelesen statt aus der Blattnummer berechnet.
- Das Destillat-Frontmatter führt die zehnte Runde vom 01.08.2026 mit dem Vermerk: «**Erstmals
  wurde der FLIESSTEXT der Kapitel 1-4 (Druckseiten 3, 4, 6, 7, 10, 11, 14) systematisch gegen
  das Destillat gediffed**» — mit sechs Kernbefunden, drei davon am eigenen Rendering
  nachgelesen.

Der Punkt ist damit aus der Rückstandsliste zu nehmen (vermerkt als N46-2 in
`wiki/QUESTIONS.md`). Er ist nicht deshalb erwähnenswert, weil noch etwas zu tun wäre, sondern
weil er eine Fehlerklasse belegt: **ein Rückstandspunkt, der von Report zu Report kopiert wird,
ohne am Bestand geprüft zu werden, überlebt seine eigene Erledigung.** Das ist Methodik-Pflicht
10 — eine Statusaussage gegen den eigenen Bestand prüfen, bevor sie als Lücke gilt — angewandt
auf die **eigenen Reports** statt auf eine externe Recherche. Die Pflicht ist am 06.08.2026 aus
dem umgekehrten Fall entstanden (eine externe Recherche meldete eine Lücke, die die KB längst
führte); sie greift in beide Richtungen.

## 3. GVZ-Merkblatt 30.17.3 — die Hebung auf `established` ist gescheitert

**Verdikt: BEANSTANDET.** 5 Kernbefunde, 8 Nebenbefunde, alle inline im Fliesstext eingearbeitet
(Methodik-Pflicht 9), nicht bloss angehängt.

### Was gehalten hat

Die Richtung «stimmt, was das Destillat behauptet» ergab **nichts**. Beide Matrizen wurden zum
dritten Mal unabhängig zellenweise nachgemessen: alle 27 Wertzellen, Gitterlinien programmatisch
detektiert (Zeilenhöhe 143 bzw. 144 px, waagrechte Teilung auf halber Höhe, Diagonale nur in der
Spalte ≤ 600 m²), Legenden **je Matrix einzeln** gemessen und identisch (RGB 178/224/246 gegen
reines Weiss). Auch die Beispielmarkierungen bestätigen die Sprinkler-Lesart erneut: Beispiel 1
(«mit oder ohne Sprinkleranlage») schraffiert die ganze Zelle über 141 px, Beispiel 2 («ohne
Sprinkleranlage») exakt die untere weisse Halbzelle über 71 px. Der Streit um Ziff. 6, an dem
sich vier Runden abgearbeitet haben, ist entschieden.

### Was gefehlt hat

Alle Kernbefunde stammen aus der anderen Fragerichtung — was im Destillat **fehlt**. Und sie
liegen nicht im Anhang, sondern im Fliesstext der Seiten 2 bis 9.

**1. Der Funktionserhalt 400 °C / 200 °C gilt auch für die Entrauchungsöffnungen.** Das
Destillat kannte ihn nur für die Heissgasventilatoren der maschinellen RWA (Ziff. 4.2.3.1). Im
Anhang zu Ziff. 4.2.2.4 Abs. 1, gedruckte S. 9, steht er ein zweites Mal — und Ziff. 4.2.2.4
gehört zum **Brandlüfter**-Konzept: «Der Funktionserhalt muss bei 400 °C (mit Sprinkleranlage
bei 200 °C) während mindestens einer Stunde gewährleistet sein.» Damit fehlte im
praxishäufigsten Fall, der Einstellhalle im 1. UG mit Brandlüfterkonzept, die einzige harte
Bauteilanforderung an Klappen, Jalousien, Antriebe und Verschlüsse. Wer nach der bisherigen
Fassung devisiert hätte, hätte Entrauchungsöffnungen ohne 400 °C/1 h ausgeschrieben — beim
Entrauchungsnachweis N2 nicht genehmigungsfähig.

**2. Die Bedien- und Verschlussanforderungen fehlten vollständig.** Ziff. 4.2.2.4 Abs. 4,
gedruckte S. 4: Entrauchungsöffnungen müssen **einzeln** und von einem im Brandfall sicheren
Standort aus **öffen- und wieder schliessbar** sein, die Betriebsbereitschaft muss **auch bei
Stromausfall** gewährleistet sein. Das ist die kostentreibende Anforderung schlechthin
(Federrücklauf oder Notstrom je Antrieb), und «einzeln» plus «wieder schliessbar» schliesst die
naheliegende Billiglösung — eine gemeinsam angesteuerte, nur öffnende Gruppe — aus. Dazu aus
dem Anhang S. 9 die Erleichterung für kleinere Einstellhallen (manuelle Bedienung von aussen)
samt Pflicht zu Markierung und funktionierender Schliessung.

**3. Dauernd offene Belüftungsöffnungen müssen im Brandfall schliessbar sein**, zum Beispiel
mit einem nicht brennbaren Deckel (Ziff. 4.2.2.4 Abs. 5, S. 4). Betrifft praktisch jede
Tiefgarage mit permanenten Lüftungsgittern oder Schachtöffnungen, erzeugt eigene Bauteile und
widerspricht der üblichen Annahme, dauernd offene Öffnungen seien im RWA-Konzept unproblematisch.

**4. Beim 1-%-Kriterium der NRWA fehlte das Wort, auf das es ankommt.** Ziff. 4.2.1 Abs. 2,
S. 3: «Entrauchungs- und Nachströmöffnungen weisen je eine **geometrisch freie Fläche** von
mindestens 1 % der Brandabschnittsfläche auf.» Dasselbe Destillat führt wenige Abschnitte
später die aerodynamisch wirksame Fläche A_aerodyn = A · c mit c = 0,3 bis 0,65. Sobald beide
Grössen im selben Dokument stehen und eine davon unqualifiziert bleibt, ist die Verwechslung
die naheliegende Lesart — und sie kostet den Faktor 1/c, also bis rund das Dreifache.

**5. Anhang-Beispiel 2 war unvollständig zitiert.** Die Bildunterschrift nennt vier notwendige
Entrauchungsöffnungen, «davon sind zwei Notausgänge — die direkt ins Freie führen —
anrechenbar». Der Halbsatz fehlte, obwohl er bei Beispiel 1 in Run 45 ergänzt worden war.

Dazu acht Nebenbefunde, darunter zwei mit Bemessungsbezug: der Aufstellabstand von 3 bis 4 m
gilt für **jeden** Brandlüfter (nicht nur für Grosslüfter, wie das Destillat zuordnete) und wird
erst durch die mitgelieferte Begründung bemessbar — der Luftkegel muss die ganze Einblasöffnung
abdecken; und die Volumenstromzahlen der Brandlüfter sind Messwerte auf freiem Feld ohne
Druckverlust, deren Verdrängungswirkung mit Raumgeometrie, Türöffnungen, Korridorlänge und
Witterung abnimmt.

### Nachprüfung durch den Hauptprozess

Kernbefunde 1 bis 4 habe ich am eigenen 300-dpi-Rendering der gedruckten Seiten 3, 4 und 9
wörtlich nachgelesen und bestätigt (Präfix `/tmp/gvz-hp46/`; PDF-Seite = gedruckte Seite, kein
Versatz), Kernbefund 5 an der Grundriss-Beschriftung der S. 12. Zusätzlich nach Methodik-Pflicht
7 per Volltextsuche über die **ganze** Datei geprüft, ob die Aussagen anderswo bereits stehen:
«Rauchmanagement» 0 Treffer, «Stromausfall» 0, «wieder schliessbar» 0, «geometrisch frei» 0,
«nicht brennbaren Deckel» 0, «Feuerwehrzugang» 0, «Teilflächen» 0, «anrechenbar» ausschliesslich
bei Beispiel 1. Keine Scheinbefunde.

### Die Lehre, zum vierten Mal in dieser KB

Ein Verifikationsabschnitt dieses Destillats hält fest, «alle Fliesstext-Ziffern 1–9 wurden Wort
für Wort geprüft und stimmen». Diese Behauptung ist durch die Kernbefunde 1 bis 4 widerlegt. Sie
ist damit selbst ein Fall des Musters, das dieselbe Datei an anderer Stelle korrekt beschreibt:
**eine ausdrücklich als geprüft geführte Stelle war der Fehler.** Es ist der vierte belegte Fall
(Run 35 Tab. 446-1, Run 36 Tab. 5, Run 41 «diagonal zweigeteilt», jetzt dieser).

Bemerkenswert ist die Richtung: Run 45 hatte dieses Destillat BESTANDEN und das ausdrücklich als
gute Nachricht gemeldet — «der erste sauber bestandene Kern in einer langen Reihe». Genau dieses
Bestehen war die Falle. Es maß die Matrix, nicht das Dokument.

## 4. SWKI VA103-01 — fünf von acht Abdeckungslücken geschlossen

Run 45 hatte acht Lücken ehrlich benannt und eine davon als **einzige bemessungsrelevante**
markiert: Kap. 2.3 «Quellen», die Herleitung der Emissionsgrundlagen. Sie ist geschlossen,
zusammen mit Kap. 2.1, 2.6.7, 3.2 und 3.3.

**Was jetzt im Destillat steht.** Die vollständige Bemessungskette vom Fahrzeug zum
Volumenstrom: die Kernformel E_CO = E_CO,0 + e_CO · s; Tab. 2 mit dem Faktor f_IDA über elf
Temperaturstufen samt der im Original gedruckten Regressionsgleichung; Tab. 3 mit der Regel
θ_IDA = θ_ODA + 5 K für exponierte und + 10 K für geschützte Geschosse, wobei eine **offene
Wendelrampe alle angeschlossenen Geschosse exponiert macht**; Tab. 4 und Tab. 5; die Faustformel
V̇ ≅ 8 · Ė_CO; und die Aufschlüsselung des 50-%-Grundzuschlags in 40 % Inhomogenität plus 10 %
Aussenluft-Vorbelastung, additiv gerechnet. Dazu die Planungsgrundsätze der Ziff. 2.1 (der
bemessungsrelevante Fall ist die **Ausfahrt mit kaltem Motor**, kurze Ausfahrstrecken senken
den Volumenstrom direkt), der Verweis von Ziff. 2.6.7 auf SIA 382/1 Ziff. 5.12.4, die
sechsschrittige Bemessungsfolge der Ziff. 3.2 samt Tab. 11 (Inhomogenitätsfaktor f_IH: Standard
1,00, mit Nachweis 0,70 bis 1,00) und die Zonenregeln der Ziff. 3.3.

**Die Zahlenkette ist rechnerisch geschlossen** — das ist die Verifikation, die hier zählt: 8 ·
1,79 = 14,3 und 8 · 0,02767 = 0,221 ergeben die erste Zeile von Tab. 5, mit 1,5 multipliziert
die Zeile «Standardfall»; jede Zeile von Tab. 4 lässt sich aus E_CO,0 und e_CO nachrechnen
(2,90 + 0,02958 · 400 = 14,73; 1,79 + 0,02767 · 400 = 12,85). Kein Sprung, keine erfundene
Zwischenzahl. Die gedruckten Seiten 26 und 54 habe ich am eigenen 200-dpi-Rendering nachgelesen.

**Zwei Korrekturen an dem, was die Agenten geliefert haben.**

Erstens die Einheit. Der Destillier-Agent deutete «WB» in Tab. 5 spontan als
«Warte-/Bewegungseinheit je Fahrzeug». Es ist die **Wagenbewegung** — die französische Spalte
schreibt MV, mouvement de véhicule, und das Destillat führt WB/h an anderer Stelle längst
korrekt. Der Wert 22 m³/WB wäre sonst falsch interpretiert in eine Bemessung gewandert. Der
Fall ist der Grund für Eintrag N46-3: solange das Abkürzungsverzeichnis der Richtlinie (Kap.
1.2) nicht destilliert ist, hat das Destillat für seine eigenen Kürzel keine Referenz.

Zweitens der Kapiteltitel. Die Lückenliste führte «Kap. 3.3 Zonenaufteilung, **Spezialfälle**».
Am Inhaltsverzeichnis und am Kapitelkopf heisst es schlicht **«Zonenaufteilung»**;
«Spezialfälle» ist ein Unterpunkt darin. Die Folge war nicht bloss kosmetisch: weil die
Lückenzeile den Unterpunkt beschrieb, galt der eigentliche Kapitelinhalt — Berechnungsreihenfolge
beginnend bei der entferntesten Zone, Zone-je-Stockwerk-Regel, Beilagepflicht zu Anhang C,
Rampenabschnitt je Formular — gar nie als fehlend. **Eine Lückenliste, die Kapitelnamen aus dem
Gedächtnis statt aus dem Inhaltsverzeichnis führt, verkleinert die Lücke, die sie dokumentieren
soll.**

## 5. Nachgeführt

`destillate/gvz-rwa-parkhaus-einstellraum.md` (fünf Kernbefunde und acht Nebenbefunde inline,
Frontmatter `status`/`gelesen`, neuer Verifikationsabschnitt) ·
`destillate/swki-va103-01-2017.md` (zwei neue Fachabschnitte, Lückenliste mit
Erledigt-Markierung, Frontmatter) · `training/norm-inventar.md` (beide Zeilen mit Verdikt) ·
`destillate/INDEX.md` (beide Zeilen) · `wiki/QUESTIONS.md` (N46-1 bis N46-3) · `CHANGELOG.md`.

Beide Destillate bleiben `speculative`. Keine Statushebung in diesem Lauf.

## 6. Was dieser Lauf NICHT geprüft hat

- **Die drei SWKI-Begriffskapitel** (Kap. 1.1.1-1.1.3, S. 10-14; Kap. 1.2 Abkürzungen,
  S. 15-16) bleiben offen. Nicht bemessungsrelevant, aber die WB-Fehldeutung dieses Laufs zeigt
  die Kosten.
- **Die gezielte GVZ-Runde auf Ziff. 4.2.2.3/4.2.2.4 und den Fliesstext-Anhang S. 8/9** ist
  fällig, aber nicht gefahren — sie ist die Konsequenz aus den heutigen Befunden, nicht deren
  Voraussetzung. Bis dahin keine Hebung auf `established`.
- **Anhang S. 12 des VKF-Merkblatts 2001-15** (Elektroschema) wurde erneut nicht gerendert; die
  Zwischenausgabe 01.01.2017 hat weiterhin kein Destillat.
- **Der Fassungsvorbehalt zur VKF-BSR 21-15** im GVZ-Destillat (Divergenzband 1'201–3'600 m²
  gesprinklert) ist weiterhin nur auf Dateiexistenz des referenzierten Destillats geprüft, nicht
  inhaltlich gegengeprüft.
- **DIN 18232-2:2003-06 gegen die im Haus liegende Fassung 2007** — unverändert offen.
- **Die Ablage-Pendenz aus dem 05.08.-Eintrag** (SharePoint hält an beiden Orten nur die
  VKF-Fassung 2015, trotz Ordnername «2015-17-22») ist bewusst nicht angefasst; sie verlangt
  Raphaels Entscheid.
- **Der Mac Mini ist ungeprüft** (DIN/VSS/RAL, Stations-Split).

## 7. Kein Versand

Nach Rule 260803 ist der Ertrag dieses Laufs Wissensbasis-Pflege ohne Aussenwirkung: keine
Frist, kein Termin, kein Kunde, kein Geld. **Keine Mail.** Der Eintrag geht ins Logbuch, damit
der Hub-Chef ihn im Tagesbriefing aufnehmen kann, falls er ihn für berichtenswert hält.

Ein Punkt wirkt allerdings über diese KB hinaus und gehört dort nicht unterzugehen: **die
Anforderungen an Entrauchungsöffnungen nach GVZ 30.17.3 Ziff. 4.2.2.4 fehlten bisher
vollständig.** Sie betreffen jede künftige Tiefgaragen-Ausschreibung mit Brandlüfterkonzept —
Funktionserhalt 400 °C für eine Stunde, einzeln und wieder schliessbar, betriebsbereit auch bei
Stromausfall. Wer eine solche Position aus dem Destillat gezogen hat, bevor heute korrigiert
wurde, hat sie unvollständig gezogen.
