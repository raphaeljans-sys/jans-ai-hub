---
title: Fenster-Zielkonflikt — Uw vs. g-Wert (Winter- ↔ Sommerschutz)
status: emerging
last_updated: 2026-07-25
sources: [destillate/fenster-verglasung-uw-g-wert.md, destillate/fenster-energieetikette-fea-bfe.md, destillate/g-werte-verglasungstypen-ch.md, destillate/sommerlicher-waermeschutz-sia180-nachweisverfahren.md, normen/destillate/sia-180-2014.md, normen/destillate/sia-382-1-2014.md, WebSearch/WebFetch Juli 2026 (minergie.ch, baunetzwissen.de, energie-experten.org, glaslotsen.de, fensterversand.ch — DE-Sekundärquellen als Kontext, nicht amtlich CH)]
links: [[INDEX]], [[fenster-verglasung]], [[sommerlicher-waermeschutz]], [[fenster-energieetikette-fea-bfe]], [[g-werte-verglasungstypen-ch]], [[u-werte-grenzwerte-ch]], [[BAUHERREN-FAQ]]
---

# Fenster-Zielkonflikt — Uw vs. g-Wert (Winter- ↔ Sommerschutz)

**Das Wichtigste in 1 Satz:** Ein Fenster kann nicht gleichzeitig maximal viel Sonnenwärme im
Winter hereinlassen (hoher g-Wert) UND maximal wenig im Sommer (tiefer g-Wert) — die Schweizer
Norm löst den Konflikt nicht am Glas, sondern über eine **orientierungsabhängige g_tot-Grenze**
(Glas + beweglicher Aussensonnenschutz, SIA 180:2014 Ziff. 5.2.4.1), weil nur ein bewegliches
System den Konflikt **zeitlich** auflösen kann (im Winter offen, im Sommer geschlossen), während
ein fest tiefer Glas-g-Wert (Sonnenschutzglas) den Konflikt nur **verschiebt**, nicht löst.

Dieser Artikel bündelt die in `[[fenster-verglasung]]`, `[[sommerlicher-waermeschutz]]` und den
Destillaten verstreuten Einzelaussagen zum Zielkonflikt zu einem eigenen Themenartikel
(Curriculum-Punkt A5).

## 1. Warum der Zielkonflikt physikalisch unausweichlich ist

Der **g-Wert (Gesamtenergiedurchlassgrad)** beschreibt, welcher Anteil der auftreffenden
Sonnenstrahlung ins Rauminnere gelangt. Er ist bauphysikalisch **richtungslos** — dieselbe
Glasscheibe lässt im Januar wie im Juli denselben Strahlungsanteil durch. Deshalb gilt zwingend:

- **Winter:** hoher g-Wert → kostenlose solare Gewinne (Qs im Heizwärmebedarf nach SIA 380/1) →
  Süd-Fenster «heizen mit» (`[[fenster-verglasung-uw-g-wert]]`).
- **Sommer:** derselbe hohe g-Wert lässt dieselbe Energiemenge herein, wenn die Sonne draussen
  bereits Überschuss liefert → Überhitzungsrisiko (`[[sommerlicher-waermeschutz]]`).

Ein Fenster kann diesen Konflikt am Glas **nicht auflösen, sondern nur verschieben** — entweder
zugunsten des Winters (hoher g-Wert, Sommerrisiko in Kauf genommen) oder zugunsten des Sommers
(tiefer g-Wert, Wintergewinn verschenkt). Die einzige echte Auflösung ist ein **bewegliches**
Element, das die Jahreszeit unterscheidet: der aussenliegende Sonnenschutz.

## 2. Die amtliche Schweizer Antwort: g_tot je Himmelsrichtung (SIA 180:2014)

**Primärquelle, ziffern-genau** (`normen/destillate/sia-180-2014.md`, Ziff. 5.2.4.1, Fig. 12 —
Nachweisverfahren 2 für Fassadenfenster): der maximal zulässige **g_tot** (Glas × Reduktionsfaktor
fc des Sonnenschutzes) ist eine Funktion des **Glasanteils fg** und hängt von der **Orientierung**
ab:

| Orientierung | Grenzwert g_tot | bei welchem Glasanteil fg |
|---|---|---|
| **Nord** | ≤ 0,20 / fg (max. 1,00) | grosszügigste Grenze — Nordfassade heizt kaum mit, Überhitzungsrisiko gering |
| **Nordost / Nordwest** | ≤ 0,13 / fg (max. 0,28) | mittlere Grenze |
| **Ost / Südost / Süd / Südwest / West** | ≤ 0,07 / fg (max. 0,15) | strengste Grenze — genau die Fassaden mit dem höchsten sommerlichen Strahlungseintrag |

Quelle: SIA 180:2014 Ziff. 5.2.4.1, primärquellenverifiziert 13.07.2026 (Wissens-Chef Run 6),
geführt in der KB `normen`. **Bemerkenswert:** die Norm behandelt Süd **gleich streng** wie Ost/
West/Südost/Südwest — die verbreitete Intuition «Süd ist die Sonnenseite, dort braucht es am
meisten Sonnenschutz» stimmt normtechnisch, aber Ost/West sind **nicht privilegiert**, obwohl die
Morgen-/Abendsonne dort flacher einfällt (tiefstehende Sonne ist schwerer zu beschatten — ein
Grund, warum die Norm hier keine Erleichterung gibt).

Ergänzend begrenzt **Tab. 8 (Ziff. 5.2.2.3)** den **Glasanteil** je Raumkategorie/Fassadenzahl/
Sonnenschutz-Steuerung unabhängig vom g_tot (z.B. Wohnen hohe Speicherfähigkeit, eine Fassade:
50 % manuell / 70 % automatisch gesteuerter Sonnenschutz) — beide Stellschrauben (g_tot und
Glasanteil) wirken zusammen.

**Einfachster Weg (Verfahren 1, EN-102/Kt. ZH):** wer keine Orientierungsrechnung will, legt den
Sonnenschutz pauschal auf **g_tot ≤ 0,10** aus (unabhängig von Orientierung) — das ist die in der
Praxis meistverbreitete Vorgabe, weil sie ohne Verfahren-2-Rechnung auskommt
(`destillate/sommerlicher-waermeschutz-sia180-nachweisverfahren.md`).

## 3. Optimale g-Wert-Bandbreiten je Himmelsrichtung — was heisst das konkret fürs Glas?

Die SIA-180-Grenzwerte gelten für **g_tot** (System Glas + Storen). Für den **Glas-g-Wert allein**
(ohne Storen, z.B. bei der Wahl zwischen Standard- und Sonnenschutzglas) existiert **keine
amtliche CH-Tabelle nach Himmelsrichtung** — die folgende Einordnung stützt sich auf die
CH-Herstellerdaten in `[[g-werte-verglasungstypen-ch]]` (Flachglas Schweiz, `needs-verification`)
und auf DE-Sekundärquellen zur Grössenordnung (ausdrücklich **nicht amtlich, nicht CH-spezifisch**,
nur zur Orientierung):

| Fassade | Glas-g-Wert-Logik | Bandbreite (Grössenordnung) | Einordnung |
|---|---|---|---|
| **Süd** | hoher g-Wert erwünscht, WENN beweglicher Aussensonnenschutz vorhanden (löst den Konflikt zeitlich) | Standard-Dreifachglas **0,50–0,61** (CH-Herstellerdaten vetroTherm Trio) | mit Storen unproblematisch; ohne Storen Systemnachweis-Risiko |
| **Ost / West** | am kritischsten — tiefstehende Morgen-/Abendsonne ist am schwersten zu beschatten (Lamellen wirken bei flachem Einfallswinkel schlechter) | gleiche SIA-180-Grenze wie Süd (g_tot ≤ 0,07/fg); DE-Quellen nennen als Kompromiss **0,45–0,55**, wenn kein beweglicher Schutz möglich ist | am ehesten Kandidat für Sonnenschutzglas, wenn Storen baulich nicht gehen |
| **Nord** | g-Wert zweitrangig — kaum direkte Einstrahlung, U-Wert (Winterschutz) zählt mehr | Standardglas ohne Beschichtung, DE-Richtwert **0,50–0,55** | SIA-180-Grenze grosszügig (g_tot ≤ 0,20/fg), meist unproblematisch |

**Einordnung der Quellenlage:** Die DE-Bandbreiten (energie-experten.org, fenster-schmidinger.at,
glaslotsen.de) sind **keine Schweizer Fachquelle** und werden hier nur als Grössenordnungs-Kontext
geführt, analog zur bestehenden Praxis in `[[g-werte-verglasungstypen-ch]]`. Die einzige
**verbindliche** CH-Grösse bleibt der orientierungsabhängige **g_tot** nach SIA 180 (Abschnitt 2).
Eine CH-amtliche Tabelle «optimaler Glas-g-Wert je Himmelsrichtung» (ohne Storen) wurde in dieser
Recherche nicht gefunden — offener Punkt (Abschnitt 7).

## 4. Sonnenschutzglas vs. bewegliche Aussenstoren — der Tradeoff

Zwei grundsätzlich verschiedene Wege, den g-Wert im Sommer zu senken:

| | **Sonnenschutzglas** (fixer tiefer g-Wert, z.B. vetroSol-Typen 0,17–0,37) | **Bewegliche Aussenstoren/Raffstoren** (g_tot 0,10–0,15 bei geschlossen, voller Glas-g-Wert bei offen) |
|---|---|---|
| **Winter-Wirkung** | verschenkt dauerhaft solare Gewinne — auch an einem sonnigen Januartag bleibt der g-Wert tief | volle solare Gewinne nutzbar, sobald hochgefahren |
| **Sommer-Wirkung** | wirkt immer, unabhängig von Bedienung/Steuerung/Ausfall | wirkt nur bei korrekter Bedienung — Ausfall (Wind, defekter Motor, falsche Steuerung) hebt den Schutz auf |
| **Bauliche Voraussetzung** | keine — funktioniert auch bei Fixverglasung, Vorhangfassaden, hohen Fassaden ohne Storenkasten | braucht Storenkasten/Führungsschienen, Windwiderstandsklasse 6 nach SIA 342, meist automatische Steuerung |
| **Normkonsequenz** | g < 0,3 löst nach EN-102 automatisch den **Systemnachweis** (statt Einzelbauteilnachweis) aus | bleibt i.d.R. im einfacheren Einzelbauteilnachweis, wenn g_tot-Grenzen eingehalten sind |
| **Tageslicht/Aussicht** | dauerhaft reduzierte Lichttransmission (z.B. Typ «70/37»: 70 % Licht bei g 0,37) | bei offenem Storen volle Transparenz, nur bei geschlossenem Storen reduziert |
| **Wirkungs-Faktor sommerlich** (SIA 382/1, Anhang C, Beispielwerte) | — | aussenliegend vs. innenliegend: **Faktor 4–5** bei sonst gleicher Verglasung (z.B. Dreifachglas + Aussenlamellen g 0,07 vs. + Innenlamellen g 0,36) |

**Faustregel (aus den CH-Quellen destilliert):** Sonnenschutzglas ist die richtige Wahl, wenn ein
beweglicher Aussensonnenschutz baulich **nicht möglich oder nicht gewünscht** ist (grossflächige
Fixverglasung, Vorhangfassade, exponierte Ost-/Südost-Fassade ohne Vordach). In allen anderen
Fällen ist der **bewegliche, aussenliegende, automatisch gesteuerte Sonnenschutz die bessere
Lösung**, weil er den Zielkonflikt **zeitlich auflöst** statt ihn ganzjährig zu erkaufen — der
Faktor 4–5 gegenüber innenliegendem Sonnenschutz zeigt zugleich, dass **innenliegender** Blend-/
Sonnenschutz keine valable Alternative zum aussenliegenden ist (Wärme ist beim Innenbehang bereits
im Raum).

## 5. Wie SIA 180/382 das Überhitzungsrisiko rechnerisch fassen — Stunden, nicht Gradstunden

Die Frage, ob es in der Schweizer Norm eine **Übertemperatur-Gradstunden-Methode** (Kelvinstunden,
°h = Grad Überschreitung × Stunden) gibt: **Nein — SIA 180/382 arbeitet mit einem reinen
Stundenkriterium, nicht mit gradgewichteten Kelvinstunden.**

- **SIA 180:2014, Verfahren 3 (Simulation), Ziff. 5.2.6.3:** normatives Kriterium ist, dass **alle**
  berechneten empfundenen Temperaturen unter der oberen Grenzkurve der Figur 3 liegen — die Norm
  kennt hier **kein Stundenkontingent** (0 h Überschreitung zulässig).
- **Vollzugspraxis (Stadt ZH, Kt. ZH):** weicht davon ab und arbeitet mit einem **Stundenkontingent**
  auf Basis der Figur 4: max. **100 Übertemperaturstunden/Jahr** für Neubauten/Gesamtsanierungen,
  **400 Stunden** für Bestandesbauten/Wohnbauten (SIA 382/1) — Schwellwert Raumtemperatur 26,5 °C.
  Bestätigt durch unabhängige Quelle (minergie.ch, WebFetch 25.07.2026): «Minergie definiert ein
  Maximum von 100 h/Jahr mit über 26,5 °C (statt 400 h gemäss SIA-Norm 180)» — deckt sich mit dem
  bereits in `destillate/sommerlicher-waermeschutz-sia180-nachweisverfahren.md` primärquellen-
  belegten 100 h/400 h-Kontingent.
- **Zum Vergleich — die deutsche Übertemperaturgradstunden-Methode (DIN 4108-2/GEG, KEINE
  Schweizer Norm):** dort wird jede Stunde Überschreitung mit der **Anzahl Kelvin** der
  Überschreitung gewichtet (1 K während 2 h = 2 °h, ebenso 2 K während 1 h = 2 °h) und gegen einen
  Jahresgrenzwert in **Kelvinstunden (Kh/a)** geprüft (Wohnbauten ca. 1'200 Kh/a, Nichtwohnbauten
  ca. 500 Kh/a, je nach Klimaregion — DE-Quelle baunetzwissen.de, **nicht amtlich für die
  Schweiz**). Diese gradgewichtete Methode ist **präziser** als ein reines Stundenkontingent
  (eine 5-K-Überschreitung zählt mehr als eine 1-K-Überschreitung), wird aber in der Schweizer
  SIA-180/382-Praxis **nicht verwendet** — dort zählt jede Überschreitungsstunde gleich, unabhängig
  vom Ausmass der Überschreitung.

**Für JANS-Aussagen bedeutet das:** Wird nach einer «Gradstunden-Methode» für ein Schweizer
Projekt gefragt, ist die korrekte Antwort, dass die SIA-180/382-Praxis ein **Stundenkriterium**
(100 h/400 h über 26,5 °C) verwendet, keine Kelvinstunden-Gewichtung — Letztere ist ein deutsches
Konzept und sollte nicht unbelegt auf CH-Projekte übertragen werden.

## 6. Die Fenster-Energieetikette macht den Zielkonflikt in einer Zahl sichtbar

Die freiwillige **FEA** (`[[fenster-energieetikette-fea-bfe]]`) rechnet den g-Wert-Vorteil direkt
gegen den Uw-Verlust auf: **Uw,eq = [Energieverlust (Hw) − Energiegewinn (Hs)] / Fensterfläche**.
Das Musterbeispiel im BFE-Faktenblatt zeigt den Zielkonflikt konkret: ein Fenster mit **Uw 1,1**
(solide, nicht rekordtief), aber **g-Wert 60 %** erreicht bereits **Uw,eq = −0,08 → Klasse A** (die
Bestklasse) — der Beleg, dass ein hoher g-Wert die fehlende Uw-Rekordmarke über die
Winter-Energiebilanz mehr als wettmacht. Das ist die **Winterseite** des Zielkonflikts in einer
Kennzahl; die **Sommerseite** (Überhitzung) deckt die FEA bewusst **nicht** ab — dafür ist der
g_tot-Nachweis nach SIA 180 zuständig (Abschnitt 2).

## 7. CH-Faustregel — Zusammenfassung für die Bauherren-Beratung

1. **Es gibt keinen «richtigen» g-Wert per se** — richtig ist immer die Kombination aus Glas-g-Wert
   UND Sonnenschutz-Reduktionsfaktor fc, gemessen als **g_tot**, und die SIA-180-Grenze dafür hängt
   von der **Orientierung** ab (Nord grosszügig, alle anderen Himmelsrichtungen streng gleich).
2. **Der pragmatische Standardweg:** aussenliegenden, beweglichen, automatisch gesteuerten
   Sonnenschutz einplanen und das Glas selbst mit einem normalen, eher hohen g-Wert wählen (z.B.
   Standard-Dreifachglas ~0,5–0,6) — das System aus Glas + Storen macht den Unterschied, nicht das
   Glas allein.
3. **Sonnenschutzglas nur dort, wo Storen baulich nicht gehen** (Fixverglasung, Vorhangfassade,
   exponierte Fassade ohne Vordach) — und dann bewusst, im Wissen um den Winter-Gewinnverlust und
   die Systemnachweis-Schwelle bei g < 0,3.
4. **Es gibt keine Schweizer «Gradstunden»-Methode** — die Norm zählt Überschreitungsstunden
   (100 h Neubau / 400 h Bestand über 26,5 °C), nicht gradgewichtete Kelvinstunden wie in
   Deutschland.
5. **Innenliegender Sonnenschutz ist keine Alternative** zum aussenliegenden — Faktor 4–5 schlechter
   (SIA 382/1, Anhang C).

## 8. Offene Punkte

- **CH-amtliche Tabelle «optimaler Glas-g-Wert je Himmelsrichtung» (ohne Storen)** nicht gefunden —
  Abschnitt 3 stützt sich auf CH-Herstellerdaten + DE-Sekundärquellen zur Grössenordnung. Eine
  gezielte Anfrage bei SZFF/FFF oder Minergie (Hilfstool «Sommerlicher Wärmeschutz») könnte das
  schliessen.
- **SIA 180:2014 Figur 13** (g_tot für Dachflächenfenster/Oberlichter je Orientierung) bleibt
  offen (bereits als offener Punkt in `destillate/sommerlicher-waermeschutz-sia180-nachweisverfahren.md`
  geführt).
- **Deutsche Kelvinstunden-Methode:** nur über Sekundärquelle (baunetzwissen.de) belegt, nicht am
  DIN-4108-2-Originaltext verifiziert — für CH-Projekte ohnehin nicht relevant, aber bei einer
  vertieften Recherche zu präzisieren, falls je gebraucht (z.B. Referenzprojekt in Deutschland).
- **Korrigenda C2:2020 zu SIA 180** — ob sie Ziff. 5.2.4.1 (g_tot) oder 5.2.6.3 (Simulationskriterium)
  ändert, ist laut `normen/destillate/sia-180-2014.md` weiterhin ungeklärt.

---
Status: `emerging` — Kernaussagen (SIA-180-g_tot-Tabelle, Stunden- vs. Gradstunden-Unterscheidung,
Sonnenschutzglas-vs-Storen-Tradeoff) sind primärquellenbelegt aus bereits `established` geführten
KB-Destillaten; die Glas-g-Wert-Bandbreiten je Himmelsrichtung (Abschnitt 3) bleiben teilweise auf
DE-Sekundärquellen gestützt und rechtfertigen noch keine Hebung auf `established`.
