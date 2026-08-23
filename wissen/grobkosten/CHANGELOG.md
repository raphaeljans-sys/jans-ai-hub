# CHANGELOG — wissen/grobkosten

## 2026-08-23 (Vertiefungslauf 5 Revendo) — Regionenwahl beziffert: die Faktorentabelle ist ein Zürcher Index

Der ZIW misst die Preise beim **Neubau eines Mehrfamilienhauses in der Stadt Zürich** — die
Einzelfälle dieser KB liegen aber in Wädenswil, Thalwil, Niederhasli, Wald und **Davos (GR)**. Mit
der heute beschafften verketteten BFS-Reihe ist jetzt beziffert, was die Regionenwahl ausmacht.

**Neubau Mehrfamilienhaus, April 2020 → April 2026, je Grossregion:** Nordwestschweiz **+19.0 %** ·
Zentralschweiz +18.7 % · Ostschweiz +18.4 % · **Zürich +18.3 %** · Schweiz +17.4 % ·
Genferseeregion +16.2 % · Espace Mittelland +15.5 % · **Tessin +14.3 %**.

**Die Spannweite beträgt 4.7 Prozentpunkte** über sechs Jahre. Wer einen Tessiner Kennwert mit dem
Zürcher Faktor aufindexiert, liegt am Ende um rund vier Prozent daneben — mehr als die gesamte
Bauteuerung eines Jahres.

**Für die heute geführten Einzelfälle ändert das nichts.** Sie liegen in **Zürich (+18.3 %)** und
mit Davos in der **Ostschweiz (+18.4 %)** — die beiden Regionen laufen über den ganzen Zeitraum
praktisch deckungsgleich (0.1 Prozentpunkte). Die Normalisierung aus Run 9 bleibt gültig,
**nichts nachzurechnen**.

**Neue Regel für künftige Fälle, in `wiki/kennwerte.md` verankert:** ausserhalb der Grossregion
Zürich **nicht** mit dem ZIW normalisieren, sondern mit der **BFS-Reihe der zutreffenden
Grossregion**. Innerhalb der Grossregion Zürich bleibt der ZIW vertretbar — er ist laut
ZIW-Methodenbericht derselbe BFS-Index für diese Region, nur mit **stadtzürcherischer**
Gewichtung; für ein Objekt in Wald oder Niederhasli wäre die regionale BFS-Reihe sauberer, der
Unterschied liegt aber unter der Rundungsgenauigkeit dieser KB.

Geänderte Dateien: `wiki/kennwerte.md` (Regionaltabelle + Regel im Abschnitt «Baupreisindex ZH»).

## 2026-08-23 (Vertiefungslauf 4 Revendo) — zwei Anwendungen der neuen BKP-Struktur: ein Widerspruch und ein neuer Rechtsbezug

Die am selben Tag eingearbeitete amtliche BKP-Anteilsstruktur ist nicht nur ein Kennwert, sondern
ein Pruefmittel. Zwei Anwendungen nachgetragen.

**1 · Der JANS-Umrechnungsfaktor BKP 2 → BKP 1-5 steht im Widerspruch zu zwei Quellen.**
`wissen/immobilienbewertung` rechnet den JANS-Wohn-Kennwert mit einem **BKP-2-Anteil von 75 %**
(aus dem JANS-Kalkulationsblatt, R. Jans 25.03.2025) von 3'365 auf **4'485 CHF/m2 GF** hoch. Die
neue Struktur sagt **89.4 %**, Tabelle 3 von 1985 sagt **90.6 %** — daraus ergaebe sich
**3'713-3'765 statt 4'485**, der gefuehrte Wert liegt rund **19 % hoeher** (am dortigen
Rechenbeispiel rund **686'000 CHF**). **Kein Fehlerbefund**: die 75 % gelten fuer **EFH/ZFH**, die
Strukturquellen fuer **MFH**, und ein EFH traegt anteilig mehr Umgebung und Vorbereitung je m2 —
ob der Unterschied 15 Prozentpunkte betraegt, ist damit aber nicht gezeigt. Als **D16** in der
Abnehmer-KB registriert. **Fuer diese KB folgt daraus nichts zu aendern** — sie fuehrt ihre
Einzelfaelle direkt als BKP 1-5 und braucht den Umrechnungsschritt nicht.

**2 · Neuer externer Rechtsbezug auf den BKP — die 1-%-Regel der revidierten LSV.** Seit
**01.04.2026** legt **Art. 32 Abs. 2 LSV** fest, dass die Verschaerfung des baulichen
Mindestschallschutzes in der Regel verhaeltnismaessig ist, **wenn die Kosten 1 % der Gebaeudekosten
nicht ueberschreiten**, ermittelt **nach Baukostenplan BKP (SN 506 500, CRB)**. Damit wird ein
BKP-Kennwert dieser KB unmittelbar zu einem **Laermschutz-Budget**: 1 % von BKP 2 (3'365) sind
**rund 34 CHF/m2 GF**, 1 % von BKP 1-5 (4'485) **rund 45 CHF/m2 GF** — bei 1'000 m2 GF also
34'000 gegen 45'000 CHF.

⚠ **Und genau hier kehrt Frage 1 wieder.** Die LSV-Erlaeuterungen sagen «Gebaeudekosten … nach
Baukostenplan BKP» und nennen **keinen BKP-Umfang**. Je nach Lesart unterscheidet sich das
verhaeltnismaessige Budget um **rund ein Drittel** — dieselbe Unschaerfe wie beim BKP-Scope der
Neuwert-Richtwerte, diesmal **in einem Erlass statt in einer Tabelle**, und mit der Folge, dass
die Zahl mitentscheidet, ob eine Schallschutzmassnahme als zumutbar gilt. **Bis zur Klaerung bei
jeder Anwendung den unterstellten Scope angeben.**

Geaenderte Dateien: `wiki/kennwerte.md` (neuer Abschnitt bei der BKP-Anteilsstruktur).

## 2026-08-23 (Vertiefungslauf 3 Revendo) — eigene offene Frage geschlossen: verkettete BFS-Reihe gefunden, Holzbau-Zuschlag fortgeschrieben

Der Lauf unten hat eine offene Frage eröffnet (verkettete BFS-Reihe je Bauwerksart ab 2023) und die
geprüften Sackgassen genannt. Am selben Tag geschlossen — **der zuvor geprüfte Weg war der
falsche**: die Reihe liegt nicht in der PX-Web-Schnittstelle und nicht auf der Indexseite, sondern
als **Publikationstabelle im BFS-Datenkatalog**: «Schweizerischer Baupreisindex — Entwicklung der
Baupreise (Multibasen), Indexwerte pro Grossregion und pro Objekttyp», XLSX über opendata.swiss,
Datenstand 21.08.2026, Blatt «2020» (Basis Oktober 2020 = 100, verkettet, Halbjahresschritte ab
1998, je Grossregion und Objekttyp). **Methodenhinweis für künftige Läufe:** BFS-Reihen zuerst über
**opendata.swiss** suchen, nicht über die PX-Web-API — die Preisstatistiken liegen dort als XLSX,
nicht als Cube.

**Ergebnis — der Zuschlag ist erstmals unabhängig fortgeschrieben.** April 2023 (Indexstand der
Ausgangsstudie) bis April 2026: Schweiz Neubau MFH **+2.35 %** gegen Neubau MFH **aus Holz
+1.97 %**; Region Zürich **+2.78 %** gegen **+1.88 %**. **Der Holzbau ist langsamer gestiegen** —
schweizweit um 0.38, in der **Grossregion Zürich um 0.90 Prozentpunkte**. Der Zuschlag hat sich
also **nicht ausgeweitet, sondern leicht verengt**: +13 % (2023, oberes Segment) wird zu
**+12.6 % (CH)** bzw. **+12.0 % (Region Zürich)**; das untere Segment bleibt praktisch bei Parität.

**Der Kennwert wird NICHT geändert** — 0.4 bis 0.9 Prozentpunkte über drei Jahre liegen deutlich
innerhalb der Ableseunschärfe der Ausgangsstudie (Diagramm-Ablesung, ca.-Werte). Die Fortschreibung
ist als **Kontrolle** geführt, nicht als neuer Wert; ihr Ergebnis lautet: *der Zuschlag von 2023
ist drei Jahre später immer noch tragfähig.* Zwei Annahmen sind benannt: der Zuschlag ist ein
**Kosten**verhältnis, der Index misst **Preis**entwicklung; und die Bewegung ist kleiner als die
Unschärfe der Quelle.

**Drei Nebenbefunde:**
1. **Vorzeichenwechsel** — auf Basis Okt-2020 startet Holz 2023 **über** Massiv (116.5 gegen
   114.9): von 2020 bis 2023 stieg Holz **stärker**, seit 2023 **schwächer**. Der Kostendruck hat
   sich umgekehrt; das stützt die Studie in ihrem Zeitfenster und warnt davor, ihren Zuschlag
   unbesehen weit zu verlängern.
2. **Renovation bestätigt sich über drei Jahre** — Renovation MFH **+1.94 %** gegen Neubau MFH
   **+2.35 % (CH)** bzw. **+2.78 % (ZH)**. Umbaukennwerte mit dem Neubau-Anker zu indexieren
   überzeichnet die Teuerung **systematisch**, nicht nur zufällig in einem Halbjahr.
3. **Der ZIW ist unabhängig bestätigt** — Region Zürich «Neubau MFH» Okt-2025 → Apr-2026 **+0.59 %**,
   im Jahr **+0.85 %**; der ZIW meldet **+0.6 %** und **+0.9 %**. Praktisch deckungsgleich, genau wie
   es der ZIW-Methodenbericht beschreibt. Der Nachtrag im Abschnitt «Baupreisindex ZH» ist damit an
   einer zweiten, unabhängig gezogenen Quelle bestätigt.

Geänderte Dateien: `wiki/kennwerte.md` (Nachtrag 2 beim Holzbau-Zuschlag), `wiki/QUESTIONS.md`.

## 2026-08-23 (Vertiefungslauf 2 Revendo) — Holzbau-Zuschlag: amtlicher Index gefunden, Anwendungsgrenze belegt

Zweite Runde, angesetzt beim **Holzbau-Zuschlag** — dem einzigen Kennwert dieser KB, der an
**einer einzigen Studie** hängt (Wüest/Lignum/BAFU, Indexstand April 2023, 17 Holzbauten).

- **Neu: der BFS führt den Holzbau als eigene Bauwerksart.** «Neubau Mehrfamilienhaus aus Holz»,
  Gewicht **3.85**, neben «Neubau Mehrfamilienhaus» (18.91). Diese KB kannte den Index nicht.
  Damit ist die Zuschlagsfrage **laufend überprüfbar** statt an eine Momentaufnahme gebunden.
  Stand April 2026 (Basis Okt-2025 = 100): Massivbau-Proxy **100.7 / +1.0 % YoY**, Holzbau
  **100.6 / +1.1 % YoY** — über das letzte Jahr laufen die beiden Bauweisen **praktisch parallel**
  (0.1 Pp Differenz, innerhalb der Publikationsgenauigkeit), **kein Hinweis** auf ein
  Auseinanderlaufen. **Ausdrücklich nicht geprüft** ist die volle Strecke seit dem Studien-Stand
  April 2023.
- **Neue offene Frage:** die verkettete BFS-Reihe je Bauwerksart ab 2023 beschaffen. In diesem
  Lauf nicht möglich — die Indexseite zeigt nur den aktuellen Stichtag, und die PX-Web-Schnittstelle
  des BFS (650 Datenbanken geprüft) führt die Baupreis-Datenbank nicht. Kein Rateweg; als offener
  Punkt in `wiki/QUESTIONS.md` mit den nächsten zu prüfenden Wegen hinterlegt.
- **⚠ Neu belegte Anwendungsgrenze — der Zuschlag passt nicht auf Hybridbauten.** Der
  ZIW-Methodenbericht Revision 2025 (Kap. 2.4) begründet den Verzicht auf einen eigenen städtischen
  Holzbauindex mit Argumenten aus zwei Workshops mit acht Bauexpertinnen und -experten: reine
  Holzbauten sind im städtischen MFH-Bau **selten**, gebaut wird **überwiegend hybrid**, **je
  dichter desto eher Massivbau**, **hybrides Bauen steht dem Massivbau näher als dem reinen
  Holzbau**, und die **Abgrenzung ist nicht eindeutig**. **Praxisfolge:** den Zuschlag nur bei
  **überwiegendem Holztragwerk** anwenden; beim Hybridbau ist der Massivbau-Kennwert der nähere
  Ausgangspunkt, und der Zuschlag ist **nicht anteilig interpolierbar** (kein belegter
  Materialanteil-Schwellenwert). Bisher fehlende Anwendungsbedingung, kein neuer Kennwert.
- **Kein Kennwert geändert**, der Zuschlag selbst (0 % unteres / +13 % oberes Preissegment) bleibt
  unverändert stehen.

Geänderte Dateien: `wiki/kennwerte.md` (Nachtragsblock beim Holzbau-Zuschlag), `wiki/QUESTIONS.md`.

## 2026-08-23 (Vertiefungslauf Revendo, Auftrag Raphael) — Frage 2 richtig geschlossen; Faktoren auf 01.04.2026; amtliche BKP-Anteilsstruktur MFH Zürich 2025 neu

**Korrektur eines Befunds desselben Tages.** Der Eintrag unten schloss Frage 2 mit «ZIW publiziert
mutmasslich **jährlich** zum Oktober-Stichtag, 01.04.2026-Stand unbestätigt, nächster Termin
Sommer 2027». Grundlage war ein **URL-Muster-Test über Nachrichten-Slugs** — eine Heuristik über
Seitenbenennung, kein Beleg über einen Publikationsrhythmus. An den Primärquellen widerlegt:
- **halbjährlich**, nicht jährlich (BFS wörtlich: Erhebung April/Oktober, Publikation
  **Juni/Dezember**; der ZIW folgt mit Versatz — Oktober-Stichtag → ~Januar, April-Stichtag → ~Juli).
- **Nächster Stichtag 01.10.2026, Publikation ~Januar 2027** — rund ein Jahr früher als angenommen.
- Der **01.04.2026-Stand ist publiziert** (08.07.2026): Total (BKP 1, 2, 4, 5) **100.6**, Basis
  **Oktober 2025 = 100**, April 2025 = 99.7, **Jahresteuerung +0.9 %**; erstmals mit
  BKP-Teilindizes (BKP 1 = 102.2, **BKP 2 = 100.4**, BKP 4 = 100.7, BKP 5 = 101.0).
- «Kein Hinweis auf Rebasierung/neue Gewichtung» ist widerlegt: **Revision 2025 vollzogen** —
  Basismonat April → Oktober, Gewichtung komplett neu aus **54 realen Kostenvoranschlägen**
  Zürcher MFH-Neubauten 2020–2024, Positionsauswahl vom BFS übernommen (BKP 1 wieder
  aufgenommen), **Honorare nicht mehr aus KBOB** (deren Werte kamen zwei Jahre in Folge zu spät —
  auch für JANS-Honorarrechnungen relevant), Verkettung über das Basisjahr amtlich gedeckt.

**Warum die Heuristik danebenlag.** Der Wert steht nicht in einer Medienmitteilung, sondern in der
**Indextabelle der ZIW-Landingpage**, die die frühere Prüfung als «clientseitig gerendert, liefert
keine Zahlenwerte» abgeschrieben hatte. Tatsächlich liegt sie als JSON im HTML-Quelltext und ist
mit `curl` plus Parser vollständig lesbar. **Lehre, in QUESTIONS festgehalten:** eine Seite gilt
erst dann als leer, wenn der **Rohquelltext** geprüft ist — nicht schon, wenn ein
Markdown-Konverter nichts zurückgibt.

**Faktorentabelle auf 01.04.2026 fortgeschrieben** (letzter Schritt ist kein Kettenglied, sondern
die publizierte Jahresteuerung 100.6/99.7 = 1.009): 01.04.2004 → **1.3457**, 01.04.2020 →
**1.1685**, 01.04.2022 → **1.0817**, 01.04.2023 → **1.0252**, 01.04.2024 → **1.0201**,
01.04.2025 → **1.0090**.

**Zwei Zahlenkollisionen neu dokumentiert**, beide direkt bei der Faktorentabelle:
(1) der neue Faktor **1.3457** (01.04.2004 → 01.04.2026) ist numerisch fast identisch mit dem
*anderen* Anker **1.346** (01.04.2003 → 01.04.2025, `immobilienbewertung`) — Zufall, keine
Konvergenz, der Stützpunktstreit bleibt offen; (2) der Wert **116.1** kommt zweimal vor —
01.04.2025 auf Basis 1.4.2010 (HEV/archis) und 01.10.2025 auf Basis April 2020 (Medienmitteilung,
Grundlage des Run-16-Nachtrags). Beide korrekt; ohne Basisangabe verschiebt sich der Stichtag um
ein halbes Jahr.

**Namensfrage geklärt:** «Zürcher Index der **Wohnbaukosten**» (diese KB, HEV Schwyz, archis.ch)
und «Zürcher Index der **Wohnbaupreise** (ZIW)» (Statistik Stadt Zürich) sind **derselbe Index** —
belegt über die Quellenzeile der HEV-Tabelle und über identische Werte bei archis.ch (01.04.2025:
143.4 / 116.1 / 115.8 auf den Basen 1998 / 2010 / 2020). Die Verbände führen den historischen
Namen weiter.

**Neuer Kennwert-Block: BKP-Anteilsstruktur MFH Stadt Zürich, Stand 2025 (amtlich).** Der
ZIW-Methodenbericht publiziert die vollständige BKP-Gewichtung aus 54 realen Kostenvoranschlägen
(L1-Aggregation, median-artig; plausibilisiert mit acht Bauexpertinnen und -experten; eine
manuelle Korrektur BKP 531 → 29). Damit hat diese KB erstmals eine aktuelle, amtliche,
quellenoffene BKP-Kostenstruktur — der moderne Gegenpart zur 1985er-Tabelle 3 der
Schätzungsanleitung. **Auf BKP 2 = 100 % normiert (1985 → 2025):** Rohbau 1 35.95 → **26.30 %**
(−9.7 Pp), Honorare 12.55 → **20.11 %** (+7.6 Pp), Rohbau 2 9.42 → 13.97 %, Ausbau 1
12.60 → 7.87 %. **Kein Like-for-like-Delta** — vier Vorbehalte (andere Grundgesamtheit,
definitorische Verschiebungen, Indexgewichte statt Vollkostenrechnung, keine Tiefgaragen) sind
mitgeschrieben; die Tabelle ist als **Plausibilisierungsraster** geführt, nicht als Korrektur.
**Alle BKP-Codes gegen `references/bkp-2017/BKP-2017-Liste.md` geprüft** (Rule
`bkp-2017-referenz`); abweichende Beschriftungen des Berichts sind mit der BKP-2017-Bezeichnung
daneben geführt, namentlich **BKP 17** («Fundation, Sicherung, Abdichtung» im Bericht,
**Spezialtiefbau** im BKP 2017).

**Nebenbefund zu Frage 1 — Grössenordnung bestätigt, Frage bleibt offen.** BKP 2 beträgt in der
ZIW-Struktur 2025 **89.4 %** der Gesamtkosten, aus Tabelle 3 (1985) waren **90.6 %** abgeleitet:
zwei unabhängige Quellen, 40 Jahre auseinander, 1.2 Prozentpunkte Abstand. Das stützt den
Umrechnungsfaktor BKP 2 → Gesamtkosten belastbar. **Frage 1 selbst** (welchen Scope die m³-Werte
von Tabelle 2 unterstellen) ist damit **nicht** beantwortet und bleibt unverändert offen.

**Begründete Ankerwahl statt neuer offener Frage:** die Einzelfälle dieser KB werden als
**BKP 1–5** geführt, deshalb ist der **Total**-Index (+0.9 %) hier der richtige Teuerungsanker —
anders als in `immobilienbewertung`, wo reine Gebäude-Neuwerte an **BKP 2** (+0.4 %) gehören und
der Entscheid dort als D15 registriert ist. Zwei Bezugsgrössen, keine Inkonsistenz; auf beiden
Seiten ausgeschrieben.

**Kein Kennwert promoviert, kein bestehender Wert überschrieben.** Unverändert offen und bewusst
nicht angetastet: Frage 1 (BKP-Scope), Standard-Label, Teuerungsanker 1.334 gegen 1.346,
Doppelführung der Neuwert-Richtwerttabelle, T-Regelgeschoss, Estrich/RF1-Einheitspreis.

Geänderte Dateien: `wiki/kennwerte.md` (zwei neue Blöcke), `wiki/QUESTIONS.md`, `wiki/INDEX.md`.
Report: `outputs/2026-08-23_grobkosten-vertiefung-ziw-bkp-struktur.md`.

## 2026-08-23 (Interaktive Session, auf Auftrag Raphael) — QUESTIONS.md bearbeitet: zwei Fragen geschlossen, zwei mit Fortschritt, vier strukturelle Fragen an Raphael vorgelegt

- **Geschlossen:** "Thalwil Bohlweg 1"-Projektidentität (eigenständiges reales Bewertungsprojekt
  Parzelle 9568 identifiziert, Run 5); 01.04.2026-Baupreisindex-Stand bleibt unbestätigt, dafür
  neuer Befund zum Publikationsrhythmus (mutmasslich jährlich, nicht halbjährlich — nächster
  Termin ~Sommer 2027), Frage wird bis dahin nicht mehr aktiv nachverfolgt.
- **Fortschritt:** CHF/m²-Einheitspreis Estrich/RF1-Bekleidung weiterhin nicht gefunden, aber
  zwei echte KISPI-Devis (Estermann Gipserunternehmen AG) lokalisiert — nur Stk- statt
  m²-bepreist; konkreter nächster Schritt (Detailofferte nachfordern) statt weiterem Archiv-Sweep
  dokumentiert. HNF/GF-Gesamtgebäude-Faktor 0.60/0.61 hat jetzt korrekte Provenienz
  (`flaechendefinitionen-sia.md`, vorher fälschlich `realwert-sachwert` zitiert) — Regelgeschoss-
  Faktor 0.70 bleibt unbelegt (Quelle nennt 0.75), Ticket "T-Regelgeschoss" unverändert offen.
- **Vier strukturelle Fragen direkt an Raphael gestellt** (BKP-1-9-vs-1-5-Scope im Pre-Check-Tool,
  Standard-Label "norm, eloquent", Teuerungsanker 1.334 vs. 1.346, Doppelführung der
  Neuwert-Richtwerttabelle) — alle seit Wochen als "nur durch Raphael lösbar" identifiziert,
  keine autonome Entscheidung getroffen. Antwort steht bei Abfassung dieses Eintrags aus.
- **Kein Kennwert promoviert, keine Median-Bildung** — bleibt an Frage 1/2 (BKP-Scope,
  Standard-Klassifikation) hängen, unverändert seit Run 6.
- Details: `wiki/QUESTIONS.md`, Eintrag 2026-08-23; `wiki/kennwerte.md` (vier Abschnitte
  nachgetragen: HNF/GF-Provenienz, Baupreisindex-Nachtrag, Estrich/RF1-Fortschritt,
  Bohlweg-1-Klärung).

## 2026-08-17 (Wissens-Chef Run 35, Cross-KB) — diese KB fuehrt ab jetzt den ZIW-Indexstand; `links:` befuellt

- **Fuehrungsfrage geklaert:** Den **Zuercher Index der Wohnbaupreise (ZIW)** — Indexstand,
  Stuetzstellen, Umrechnungsfaktoren — fuehrt ab jetzt **diese KB** (`wiki/kennwerte`, Abschnitt
  «Baupreisindex ZH»). Anlass: Run 16 hat am 17.08.2026 den Stand **01.10.2025 = 116.1 Punkte**
  direkt an der **Primaerquelle** Stadt Zuerich verifiziert, waehrend
  `immobilienbewertung/wiki/realwert-sachwert` weiterhin **01.04.2025 = 1210.4** aus der
  HEV-SZ-Reproduktion fuehrte. Dort ist jetzt ein Vorbehalt mit Verweis auf diese KB gesetzt.
- **`wiki/kennwerte.md`:** Das Feld `links:` stand leer, obwohl der Artikel vier
  immobilienbewertung-Artikel durchgehend im Fliesstext zitiert (Z. 22-24, 53-57, 81-84, 228-235,
  361-368). Mit `realwert-sachwert`, `investorenmarkt-makro`, `flaechendefinitionen-sia` und
  `wissensluecken` befuellt (Pfadnotation, weil diese KB die `[[…]]`-Syntax hub-weit nicht nutzt). 1/1.
- **Kein Befund, ausdruecklich geprueft:** keine Vermengung von ZIW und **BFS-Baupreisindex** —
  beide KBs tragen die Verwechslungswarnung selbst und verrechnen die Prozentwerte nirgends
  gegeneinander; der BFS-Stand ist in beiden identisch (April 2026 = 100.6, Basis Okt-2025). Die
  Ankerzahlen sind seit Run 15 stabil. Das Ticket `T-Regelgeschoss` (HNF/GF 0,70 gegen 0,75) ist
  beidseitig sauber dokumentiert — es fehlt allein der Fachentscheid Raphaels.
- Bericht: `wissen/koordination/outputs/2026-08-17_wissens-chef-run35.md`.

## 2026-08-17 (Run 16, unbeaufsichtigter Trainingsauftrag) — Endbedingung erneut geprüft (bestätigt), neuer Baupreisindex-Stichtag ergänzt

Vor Arbeitsbeginn geprüft, ob eine der beiden Voraussetzungen aus dem 13.08.-Eintrag für einen
neuen Lauf erfüllt ist: dieser Lauf ist explizit beauftragt (Bedingung 2). SharePoint
(`AR - 01/03 Projekte/Studien`, `IMMO - 01/03/06`) auf Material neuer als der letzte Rohbeleg
(12.08.2026) durchsucht — keine neuen JANS-Kostendokumente ausserhalb des ausgeklammerten
KISPI-Healthcare-Mandats, `training/quellen-inventar.md` bleibt vollständig `[x]`/`[-]`.

Gemäss «Kein Leerlauf-Zwang» (`training/PROGRAMM.md`) stattdessen die Primärquelle des in
Run 8 gefundenen Baupreisindex direkt geprüft: neuer amtlicher Stand 01.10.2025 = 116.1 Punkte
(Basis April 2020=100, Stadt Zürich) gefunden und dokumentiert (`raw/zuercher-index-
wohnbaupreise-2025-10-update.md`, `wiki/kennwerte.md` Abschnitt "Baupreisindex ZH"). Effekt auf
bereits geführte Einzelfälle liegt unter der Darstellungsgenauigkeit (+0.26 % auf den Anker),
bewusst nicht zurückgerechnet. Ein per KI-Suchzusammenfassung kolportierter 01.04.2026-Stand
liess sich nicht an einer Primärquelle verifizieren — nicht übernommen, als offener Punkt in
`wiki/QUESTIONS.md` vermerkt. Kein neuer Projekt-Kennwert, kein Fan-out, kein Versand. Report:
`outputs/2026-08-17_grobkosten-run16.md`.

## 2026-08-13 (Mac Mini Nachtschicht 05:31) — Formale Rücktaktungs-Empfehlung dokumentiert (kein Vollzug)

Endbedingung aus `training/PROGRAMM.md` bestätigt: alle Zeilen in `training/quellen-
inventar.md` sind `[x]`/`[-]` geschlossen. Nachtrag zum Befund des 02:30-Zyklus derselben
Nacht (dort als «offen für einen künftigen kurzen Lauf» vermerkt). Empfehlung in
`wiki/QUESTIONS.md` festgehalten: `grobkosten` aus der Nachtschicht-Priorität-4-Rotation
nehmen, bis neues Rohmaterial oder ein expliziter Vertiefungsauftrag vorliegt. Keine
Ausführung — Rücktaktung ist laut Rule `rollen-taxonomie` eine Drosselentscheidung
Raphaels, `scripts/nachtschicht-run.sh` und `logbuch/rollen/rollen-map.tsv` unverändert.
Kein neuer Kennwert, kein Fan-out, kein Versand.

## 2026-08-11 (Mac Mini Nachtschicht, Run 15) — Wädenswil-Blocker geschlossen (Weg 2: Graph/CLI statt OneDrive-Mount), kein neuer Kennwert

Letzter offener Kandidat seit Run 6 («2304 Wädenswil Residualwert-Tool») abschliessend
bearbeitet. Der native OneDrive-Mount blieb blockiert (`Resource deadlock avoided`,
unverändert seit Run 13); statt eines dritten identischen Retrys über die zertifikats-
angemeldete CLI for Microsoft 365 zugegriffen (`spo file get --asFile`, umgeht den
File-Provider). Beide Residualwert-PDF (Variante Atrium, Variante Zwei Treppenhäuser) und
der Flächenauszug vollständig geladen und ausgewertet. Ergebnis: beide Dokumente beschriften
ihre Kostensumme eindeutig als "BKP 1-9", keine BKP-1-5-Teilsumme vorhanden — kein Kennwert
promoviert (gleiche Ausschlussregel wie Pre-Check-Tool/Wald Haselstudstrasse). Der Fall gilt
damit als geschlossen, nicht mehr als offener Blocker. Der Zugriffsweg ist im Wege-Register
(`connectors/WEGE.md`) für künftige OneDrive-Blockaden dokumentiert. Details:
`raw/2304-waedenswil-residualwert-zwei-varianten.md`, `wiki/QUESTIONS.md`,
`training/quellen-inventar.md` (Run 15). Kein Versand, keine Buchung, kein Fan-out.

## 2026-08-08 (interaktiv, Mac Mini) — Pfad-Verweise auf umbenannte Bibliothek «IMMO - 02 Standort INFO» nachgezogen

Die SharePoint-Bibliothek IMMO/«02 UBSFS» heisst seit 07.08.2026 **«02 Standort INFO»**
(URL unveraendert). In `wiki/kennwerte.md` und `wiki/QUESTIONS.md` wurden die
OneDrive-Pfad-Verweise entsprechend aktualisiert. Historische outputs/-Reports unveraendert.

## 2026-08-08 (Mac Mini Nachtschicht, Run 14) — Run-13-Blocker unverändert; stattdessen unabhängige Gegenprüfung des stärksten Einzelfalls (Niederhasli) am Original-PDF

Kein neuer Kennwert, keine Promotion. `2304 Wädenswil` (Run 13) erneut geprüft: derselbe
`Resource deadlock avoided` beim Lesezugriff (`cp`) auf den Ordner besteht unverändert fort —
keine weitere Aktion, keine erneute Vollprüfung (Rule Budget-Disziplin). Die vollständige
SharePoint-Struktur-Exploration bleibt gemäss Run 11 erschöpft; PROGRAMM.md sieht für diesen
Fall die Gegenprüfung eines bestehenden Kennwerts statt Füllwerten vor.

Stattdessen den bisher stärksten Einzelfall-Beleg (8155 Niederhasli, `raw/8155-niederhasli-
seestrasse64.md`, Kennwert 1'032 CHF/m³) direkt am Original-PDF (`pdftotext -layout`)
unabhängig nachgemessen: GV (3'843.8 m³), alle fünf BKP-Einzelpositionen und deren Summe
(3'966'406 CHF) sowie der daraus abgeleitete Kennwert (1'032 CHF/m³) stimmen exakt. Zusätzlich
die bisher "nicht aufgelöste" Rundungsdifferenz des dokument-eigenen Kopffeldes (6'336 CHF/m²
BGF) geklärt: kein Rundungsfehler, sondern eine Fehlbeschriftung im verwendeten Drittsoftware-
Tool "hva" — das als "BKP 1-5 CHF/m² BGF" beschriftete Feld enthält rechnerisch nachweisbar
BKP 9 (Ausstattung/Reserve) mit, ebenso das Feld "BKP 0-5" (enthält tatsächlich BKP 0-9).
Für den geführten Kennwert folgenlos (eigene Summenrechnung, nicht Tool-Kopffeld), aber als
Warnung für künftige Läufe mit demselben Tool festgehalten (`wiki/QUESTIONS.md`). Details:
`raw/8155-niederhasli-seestrasse64.md` (Nachtrag 08.08.2026).

## 2026-08-07 (Mac Mini Nachtschicht, Run 13) — Run-6-Kandidat «2304 Wädenswil» weiterhin offen: Quelle geortet, Zugriff durch OneDrive-Dateisperre blockiert

Kein neuer Kennwert, kein promovierter Fall. Quelle des letzten offenen Run-6-Kandidaten
(«2304 Wädenswil Residualwert-Tool») lokalisiert, aber Leseversuche auf 5 Dateien im
Projektordner scheitern reproduzierbar mit `Resource deadlock avoided` (Kontrolldatei aus
Nachbarordner liest fehlerfrei — Befund also lokal auf `2304 Waedenswil`, nicht stationsweit).
Details/Vorschlag: `training/quellen-inventar.md` Run 13, `wiki/QUESTIONS.md`.

## 2026-08-06 (Cross-KB-Lauf Run 27) — Kopfblock auf den Stand des eigenen Healthcare-Abschnitts gehoben, Rückmeldung des Abnehmers eingetragen

Rein additiv, kein Kennwert verändert.

- **`wiki/kennwerte.md`, Kopfblock «Abgrenzung, die nicht verwischt werden darf»:** Die Seite
  widersprach sich an der Stelle, an der zitiert wird — der Healthcare-Abschnitt weiter unten
  führte zwei Qualifizierungen zum fremden Band, der Kopfblock nannte es unqualifiziert. Beide
  sind jetzt auch im Kopfblock genannt, in der Reihenfolge nach Gewicht: **(1) Scope** — die Bänder
  aus `wissen/immobilienbewertung/wiki/realwert-sachwert.md` sind auf **BKP 2** bezogen und nicht
  direkt mit den BKP-1–5-Werten dieser Seite vergleichbar (deren Deklaration steht unmittelbar
  darunter); **(2) oberer Endpunkt** — 1'420 (Averecura) ist quellenintern nicht reproduzierbar
  (recompute 1'285), ebenso die Vella-Zeile (1'021 statt 845), reproduzierbarer **Rohband
  826–1'285 CHF/m³ GV**, ausdrücklich als Rohband und nicht als neuer geltender Band (Entscheid
  Raphael, D10 jener KB).
- **`wiki/kennwerte.md`, Run-12-Abschnitt (historischer Cross-Check), unter dem Nachtrag vom
  06.08.2026:** Rückmeldung des Abnehmers ergänzt. Die Scope-Frage (Frage 1) ist jetzt auch auf
  der Abnehmerseite registriert — dort als **D13** in `wiki/wissensluecken.md`, weil jene KB keine
  `QUESTIONS.md` hat — und `realwert-sachwert.md` trägt den Vorbehalt neu unter der Tabellen-
  Überschrift. Am Bestand nachgeprüft und präzise formuliert: die Werte werden dort **nicht** als
  führender Gebäude-Neuwert verwendet, sondern zur **Sachwert-Plausibilisierung** und zur
  Einordnung der Bauqualität; führender Neuwert-Pfad sind die CHF/m²-HNF-Benchmarks. Zusatzbefund
  von dort: jene Realwert-Formel addiert Aussenanlagen und Baunebenkosten separat, unter der
  Lesart BKP 1–9 drohte Doppelzählung.

## 2026-08-06 (Mac Mini Nachtschicht) — Frage 1 (BKP-Scope): vorgeschlagener nächster Schritt geprüft (Sackgasse), zweites Plausibilitätsargument ergänzt

Kein Trigger für eine neue Stufe-1-Exploration (Bring-Schuld `normen` weiterhin ungedeckt,
`bauprodukte`-KORPUS-QUEUE noch nicht bei BKP 214/271, Frage 1/2 unentschieden) — statt die
bekannten leeren SharePoint-/NAS-Pfade ein drittes Mal zu durchsuchen, den in Run 12
(01.08.2026) selbst vorgeschlagenen nächsten Schritt geprüft: ob ein anderes Kapitel der
Primärquelle («Schätzungsanleitung Teil III») den BKP-Scope der Neuwert-Richtwerttabelle
explizit definiert. Ergebnis: **Sackgasse, archivseitig** — das vorliegende PDF ist laut
Deckblatt nur «Kapitel 5: Tabellen», die Kapitel 1–4 liegen nicht im Hub-Bestand
(`find` über den ganzen Ordner `IMMO - 03 KNOW-HOW` bestätigt: kein weiteres Kapitel
vorhanden). Layouttreu am Original (`pdftotext -layout`) ein zweites, unabhängiges
Plausibilitätsargument (kein Beleg) für die bestehende Annahme «BKP 2 allein» gefunden: Tab. 2
und Tab. 3 («Prozentanteile an den Gebäudekosten BKP 2») stehen unmittelbar aufeinanderfolgend
ohne Zwischenthema, Tab. 3 liefert exakt den Umrechnungsfaktor BKP 2 → Gesamtkosten. Frage 1
bleibt formal offen, kein Kennwert verändert oder promoviert. `wiki/kennwerte.md` (Run-12-
Abschnitt) und `wiki/QUESTIONS.md` (neuer Eintrag 06.08.2026) ergänzt.

## 2026-08-04 (Wissens-Chef Run 25, Cross-KB) — Neuwert-Richtwerte Tab. 2: Vorbehalt und gegenseitiger Zeiger gesetzt, Anker-Entscheid vorgelegt

Befund F6-kennwerte-V1, adversarial verifiziert am Original-PDF
(`IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf`, layouttreu extrahiert mit
`pdftotext -layout`, 04.08.2026).

- **`wiki/kennwerte.md`, Abschnitt «Run 12»:** Vorbehalts-Block direkt unter die Tabelle
  gesetzt. Er benennt (a) die Doppelführung derselben Fremdtabelle in dieser KB und in
  `wissen/immobilienbewertung/wiki/realwert-sachwert.md`, (b) dass die Werte hier nur die
  **BandUNTERgrenze** sind (am Original stehen je Bauklasse zwei Zahlen unter EFH wie unter
  MFH; Gegenprobe: der Block «Grossgewerbe und Industrie» schreibt seine Bänder einzeilig als
  «100 - 200» usw.) und die Artefakt-Deutung des Roh-Belegs damit widerlegt ist, (c) die
  Abweichung der Teuerungsfaktoren 1.334 (Anker 01.04.2004 = 907.6) gegen 1.346 (Anker
  01.04.2003 = 899.2) von rund 1 %. **Keine Zahl geändert, kein Stand überschrieben** — beide
  Stände sind benannt, der Entscheid liegt bei Raphael.
- Im selben Block als Korrekturvermerk festgehalten, dass der Cross-Check-Schluss darunter
  («MFH IV/V liegt unterhalb des MFH-gehoben-Seed-Bands 850–1'050») **falsifiziert** ist: mit
  den echten Bändern reicht MFH von 471 bis 1'010 und überlappt das Seed-Band. Die offene
  Frage zum BKP-Scope selbst bleibt gültig — es fällt ein Argument dafür, nicht die Frage.
- **`wiki/QUESTIONS.md`:** neuer Eintrag zuoberst mit den zwei Entscheidungsfragen an Raphael
  (Anker 1.334 vs. 1.346; Doppelführung vs. reiner Verweis auf `immobilienbewertung`).
  Spiegel-Eintrag dort als Lücke **D12**.
- **Bewusst nicht ausgeführt:** (1) Korrektur der Fehlerwurzel in
  `raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md` — Eingriffe in `raw/` sind
  nach Rule `wissens-bibliothekar` rückfragepflichtig; ohne sie leitet ein Folgelauf denselben
  Fehler erneut ab. (2) Änderung des CHANGELOG-Eintrags «2026-08-01 (Run 12)», der dieselbe
  falsifizierte Schlussfolgerung trägt — historisches Protokoll, hier nur vermerkt.

## 2026-08-04 (Mac Mini Nachtschicht) — Bring-Schuld-Gegenprüfung statt neuer Quellensuche

Kein neuer Rohbeleg, kein neuer Kennwert. Vor einem neuen Explorationslauf gezielt geprüft, ob
sich an den zwei bekannten Blockern etwas geändert hat: (1) Bring-Schuld aus `normen`
(Estrich-/Brandschutzbekleidungs-Einheitspreis, offen seit 31.07.) — `wissen/bauprodukte/raw/`
noch ohne BKP-214/271-Material, `skills/ausschreibung/referenzen/goldstandard-lv/
281-unterlagsboden-LV661.md` nur Positionskatalog ohne CHF-Preise, weiterhin ungedeckt.
(2) Frage 1/2 aus Run 10/11 weiterhin ungelöst. Bestätigt damit den in Run 11 (27.07.)
gemeldeten Sättigungszustand der autonomen Stufe-1-Exploration erneut, ohne selbst eine
Drosselentscheidung zu treffen (Rule `rollen-taxonomie`). Details und Empfehlung:
`wiki/QUESTIONS.md`, Eintrag 2026-08-04.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B0 · C0 · D0 · E0 · F1 · G2

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Strukturell sauber. Unveraendert schaerfstes Ruecklauf-Missverhaeltnis im Wissens-Layer: 38 Outputs gegen 3 Wiki-Artikel, `wiki/QUESTIONS.md` mit 123 Zeilen groesser als der Wissensbestand. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B0 · C0 · D1 · E0 · F1 · G30

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. 30 Outputs seit dem letzten Check (2026-07-25) stehen 1 Wiki-Artikel gegenueber — das schaerfste Missverhaeltnis im ganzen Wissens-Layer. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-01 (Mac Mini Nachtschicht, Run 12) — letzter offener Run-6-Kandidat extrahiert: Neuwert-Richtwerte Bauklasse I–VI

Letzten in `training/quellen-inventar.md` (Run 6) offen gelassenen Kandidaten aus
`IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` extrahiert (Tabelle 2:
Richtwerte für die Bestimmung des Neuwertes, Bauklassen I–VI nach SIA-Ordnung 102, Stand 2003,
EFH/MFH je m³; Nebenfunde: Gewerbe/Industrie-Richtwerte, Prozentanteile BKP 2). Neu:
`raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md`. In `wiki/kennwerte.md`
(Abschnitt «Run 12») mit dem bereits belegten Teuerungsfaktor 01.04.2004→01.04.2025 (+33.4 %,
Run 8) auf 2025 hochgerechnet und als historischer Cross-Check dokumentiert — bewusst NICHT zu
einem führenden Kennwert promoviert, da der BKP-Scope der Quelle nicht eindeutig ist (neue offene
Frage in `wiki/QUESTIONS.md`). Der hochgerechnete MFH-Bereich (467–834 CHF/m³) liegt unterhalb
des bestehenden MFH-gehoben-Seed-Bands (850–1'050 CHF/m³), was zur Arbeitsvermutung passt, dass
die Quelle nur BKP 2 abbildet — stützt die Seed-Bandbreite, widerspricht ihr nicht. `training/
quellen-inventar.md` nachgeführt (Legende `[x]`). Kein Versand, keine Publikation, kein Fan-out,
kein Subagent — Recherche/Extraktion direkt in der Hauptsession (Memory-Feedback: Background-
Subagents stallen auf OneDrive-Pfaden).

## 2026-07-31 (Wissens-Chef Run 22, Cross-KB) — Estrich-BKP richtiggestellt, Wuest-Quantile exakt, «verschiedene Stichproben» widerlegt

- **[widerspruch, teilweise] BKP-Zuordnung des Mehrestrichs war falsch — die der Holzbau-Positionen
  nicht.** `wiki/kennwerte.md` fuehrte «ein CHF/m²-Kennwert fuer BKP **214/271** (Mehrestrich +
  RF1-Bekleidung)». Nach der verbindlichen `references/bkp-2017/BKP-2017-Liste.md` gehoert der
  Zementestrich/Unterlagsboden zu **281.0**; weder 214 (Montagebau in Holz) noch 271
  (Gipserarbeiten) kennt Estriche. **Nur der Estrich korrigiert.** Die Verifikation hat den
  urspruenglichen Vorschlag einer Pauschalersetzung «214/271 → 281.0/225.4» **verhindert**: die
  Zuordnung «BKP 214/271» fuer zusaetzliche **Bauteilstaerken und Bekleidungsflaechen im Holzbau**
  ist richtig (214.1/214.3 bzw. 271.1 «Trockenbauarbeiten (EI-Waende, Brandschutz)») — die Ersetzung
  haette Holz-Bauteilstaerken unter «Estriche» gebucht und einen schwereren Fehler erzeugt als den
  behobenen.
- **[querverlinkung, Erwartung korrigiert] Die Preis-Bringschuld war bei `bauprodukte` strukturell
  unerfuellbar.** Der offene Punkt verwies auf «`ausschreibung`-Erzeugnisse oder `bauprodukte`-Korpus».
  `bauprodukte` fuehrt laut Fuehrungsmatrix aber **keine** Kalkulations-Kennwerte, und sein Korpus
  (`/Volumes/daten/03 Bauprodukte_BKP`) enthaelt Produktunterlagen, keine Devis oder
  Unternehmerofferten. Statt die Uebergabe dorthin zu setzen (was sie nie haette einloesen koennen),
  ist die Erwartung hier korrigiert und auf `ausschreibung`/`offertenpruefung` umgelenkt.
- **[querverlinkung] Healthcare-Abschnitt nannte nicht die fuehrende KB.** Er verwies allein auf den
  Skill `kostenschaetzung`, waehrend der eigene Kopfblock korrekt `wissen/immobilienbewertung/wiki/realwert-sachwert.md`
  als fuehrend ausweist. Zeiger ergaenzt, samt Warnung vor der Bezugsbasis: die dortigen Baender sind
  auf **BKP 2** bezogen und nicht direkt mit den BKP-1-5-Werten dieser Seite vergleichbar.
- **[veraltet] Die Diagramm-Ablesung war messbar zu ungenau.** Die fuehrende Referenz
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md` fuehrte
  «aus Spread abgelesene» Naeherungswerte, obwohl die exakte Quantiltabelle der Primaerquelle seit
  dem 31.07. im Hub liegt (`wissen/immobilienbewertung/outputs/2026-07-31_ingest-cluster-B-wuest-partner.md`,
  vom Verifikator zusaetzlich am Original-PDF gegengelesen). Holzbau oberes Preissegment:
  **+44.8 % statt +38 %** (6'506 gegen 4'492 CHF/m² HNF). Beide Abschnitte des Referenzblatts auf
  die Originalquantile umgestellt, der Querverweis hier nachgefuehrt.
- **[widerlegt, und das aendert eine Run-21-Aussage] «Verschiedene Stichproben» ist falsch.** Die
  HNF-Reihe (S. 18/36) und die GV-Reihe (S. 34) stammen aus **derselben Wuest-Studie mit derselben
  Stichprobe** (17 Holzbauten gegen knapp 50 Massivbau-Referenzen, Indexstand April 2023). Als
  Erklaerung der Spreizung (+44.8 % auf HNF gegen +12.9 % auf GV) bleibt allein die Bezugsgroesse.
  Ob die den Faktor 3.5 traegt, ist neu als **Ursachenfrage** in `wiki/QUESTIONS.md` angemeldet;
  bis zur Klaerung wird kein gemeinsamer Zuschlag ueber beide Bezugsgroessen gebildet.
- **[widerlegt] Lignum Tab. 522-1:** der Melde-Befund, diese KB lese die Tabelle faelschlich als
  additive Mehrmenge, ist gefallen — die additive Lesart stammt woertlich aus der fuehrenden KB
  `normen`. Haette der Chef ihn umgesetzt, waere `normen` gegen sich selbst korrigiert worden.

## 2026-07-31 (Mac Mini Nachtschicht) — Brandschutz-Mehraufwand RF1: Mengen aus Tab. 522-1 erfasst, CHF-Kennwert bleibt offen
Bring-Schuld aus `normen` Run 30–33/38 (QUESTIONS 2026-07-30c) teilweise eingelöst. Neuer
Abschnitt «Brandschutz-Mehraufwand RF1» in `wiki/kennwerte.md`: Tab. 522-1
(`wissen/normen/destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`, Kap.
5.3) liefert die belegte Mehrmenge Estrich fuer RF1-Decken (+30 mm K30-RF1, +50 mm K60-RF1);
Tab. 340-1 (`.../lignum-4-2-anschluesse-feuerwiderstand.md`, Kap. 3.4) liefert nur
Mindestguetenklassen, die im Holzbau ohnehin marktueblich sind, damit voraussichtlich ohne
eigenen Kostentreiber. Kein CHF/m²-Kennwert gesetzt: Einheitspreise Zementestrich (CHF/m²/cm)
und K30-RF1/K60-RF1-Bekleidung (CHF/m²) in `wissen/bauprodukte/` und
`skills/kostenschaetzung/referenzen/` gesucht, nicht gefunden. Naechster Schritt in
`wiki/QUESTIONS.md` 2026-07-31 als konkreter Beschaffungsauftrag (reales Devis/Offerte
destillieren) vermerkt statt eines geschaetzten Satzes. Geaendert: `wiki/kennwerte.md`,
`wiki/QUESTIONS.md`. Kein Versand, keine Publikation, kein Fan-out.

## 2026-07-30 (Wissens-Chef Run 21, Cross-KB) — Konsistenz-Beleg des Holzbau-Zuschlags richtiggestellt, Anwendungsgrenze Brandschutz ergaenzt
- **[richtigstellung] Der Satz «Konsistenz-Check gegen den eigenen MFH-Seed und den bestehenden
  HNF-Wuest-Spread: kein Widerspruch» im Eintrag «2026-07-30 (Mac Mini Nachtschicht) —
  Bring-Schuld aus Run 20 eingeloest» weiter unten ist in seiner zweiten Haelfte unzutreffend.**
  Der Alteintrag bleibt als Beweisstand unveraendert stehen. Richtig ist: Der Konsistenz-Check
  gegen den eigenen MFH-Seed (Massivbau-Median ≈995 CHF/m³ GV im Band 850–1'050) traegt und
  bleibt der einzige belastbare Beleg. Der Quervergleich gegen den HNF-Wueest-Spread traegt
  NICHT: das HNF-Referenzblatt segmentiert bereits gleich benannt (belegt seit mindestens
  25.07.2026, git 7b4c0777) und kommt auf +11 % (unteres Segment) und +38 % (oberes Segment),
  gegen die hier gefuehrten ≈ 0 % und ≈ +13 %. Beide Datensaetze ruhen auf demselben Preisstand
  April 2023, die Differenz ist also nicht Teuerung, sondern Bezugsgroesse (HNF gegen GV),
  verschiedene Stichproben und beidseitige Diagramm-Ableseunschaerfe. Die Spreizung bleibt
  ungeklaert; ein bestaetigender Quervergleich wird ausdruecklich nicht mehr behauptet.
- **[unveraendert] Der Zuschlag selbst bleibt** (Wueest Partner/Lignum/BAFU 25.09.2025,
  Diagramm-Ablesung 300 dpi, normalisiert 01.04.2025). Korrigiert wurde nur die Begruendung.
- **[anwendungsgrenze] Bring-Schuld aus `normen` Run 30–33 (Nachtrag Run 38) angenommen:** Der
  Zuschlag kannte bisher keine brandschutzbedingte Anwendungsgrenze. Neu vermerkt, dass die
  Stichprobe (17 Holz-Neubauten 2019–2022) keine Gebaeudehoehenkategorie und keine
  Brandschutzanforderung je Objekt ausweist und der Zuschlag bei erhoehten Anforderungen als
  untere Naeherung zu lesen ist. Die Anforderung selbst fuehrt diese KB nicht: massgebend sind
  die VKF-Brandschutzvorschriften 2015 bzw. die Arbeitshilfen (Rule `normen-referenz`).
- **[raw unberuehrt]** Die gleichlautende Fehlaussage in
  `raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md` wurde NICHT editiert
  (Rule `wissens-bibliothekar`), sondern in `wiki/QUESTIONS.md` als bekannte Fehlstelle des
  Destillats vom 30.07.2026 benannt.
- **Geaendert:** `wiki/kennwerte.md` (Konsistenz-Absatz ersetzt, Absatz «Anwendungsgrenze
  (Datenlage)» neu), `wiki/QUESTIONS.md` (zwei neue Eintraege 2026-07-30b und 2026-07-30c),
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`
  (Zusammenfassung Abschnitt 3 und Schlussabsatz 3b richtiggestellt). Kein Versand, keine
  Publikation, keine Buchung.

## 2026-07-30 (Mac Mini Nachtschicht, 23:31) — bauenmitholz.info geprueft: Negativbefund, offener Punkt geschlossen
Den vom fruehreren Lauf desselben Tages offen gelassenen Verifikationspunkt geprueft
(Diagramm-Ablesung Folie 5 gegen `bauenmitholz.info` verifizieren, falls dort Zahlenwerte
publiziert sind). Ergebnis: Nullbefund — die Seite (inkl. `/baukostenrechner`) publiziert keine
Tabellen, nur eine interaktive Wuest-Partner-App mit 36 anonymisierten Fallbeispielen als
Grafik. Studie und Zahlenwerte sind dort nicht verlinkt. Die pixel-kalibrierten ca.-Werte
bleiben damit der beste verfuegbare Stand; keine Kennwert-Aenderung. Geaendert:
`raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md` (Abschnitt „Verbleibende offene
Punkte" ergaenzt), `wiki/QUESTIONS.md`. Ein WebFetch, keine Fan-outs. Kein Versand, keine
Publikation, keine Buchung.

## 2026-07-30 (Mac Mini Nachtschicht) — Bring-Schuld aus Run 20 eingeloest: Holzbau-Zuschlag kalibriert
Wueest Partner/Lignum/BAFU-PDF selbst gezogen (minergie.ch), Textlayer + Diagramm (Folie 5,
300-dpi-Rasterung, Pixel-Kalibrierung der Gitterlinien) ausgewertet. Zwei Ergebnisse: (1) der von
`energie` uebernommene Methodenwiderspruch («35 Objekte gegen digitalen Zwilling» vs. Kostenteil-
Stichprobe) ist aufgeloest — die Zwillingspaarung gilt nur fuer das oekologische Fallbeispiel, der
Kostenteil ist eine unpaarige 17-gegen-50-Gruppenauswertung. (2) Der bisher unbelegte, pauschale
Zuschlag "Hoher Ausbaustandard/Nachhaltigkeit (Minergie-P, Holz) +5-15%" in `wiki/kennwerte.md`
ist in Bauweise (Holz, jetzt kalibriert: unteres Preissegment ≈ Paritaet, oberes ≈ +13 %, Median
normalisiert auf 01.04.2025) und Ausbaustandard (Minergie-P, weiterhin unbelegt) getrennt.
Konsistenz-Check gegen den eigenen MFH-Seed und den bestehenden HNF-Wuest-Spread: kein Widerspruch.
Geaendert: `wiki/kennwerte.md`, `wiki/QUESTIONS.md`, neu `raw/2025-wueest-lignum-massiv-vs-
holzbau-erstellungskosten.md`, Ergaenzung in `skills/kostenschaetzung/referenzen/
20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md` (Abschnitt 3b). Kein Versand, keine Publikation.

## 2026-07-29 (Wissens-Chef Run 20, Cross-KB) — Kostenhaelfte einer gelesenen Studie war nie hier angekommen
- **[bring-schuld] Die Wueest-Partner/Lignum/BAFU-Studie vom 25.09.2025 enthaelt einen
  Erstellungskosten-Vergleich Holzbau gegen Massivbau — die KB `energie` hat die oekologische Haelfte
  ausgewertet (Run 119), die Kostenhaelfte ist nie an `grobkosten` gelangt.** Rekursiver grep
  «holzbau|massivbau|lignum» ueber diese KB: 0 Treffer. Zugleich ist der einzige Holz-Kostenansatz des
  Hubs (`wiki/kennwerte.md:200`, «Hoher Ausbaustandard / Nachhaltigkeit (Minergie-P, Holz) +5-15 %»)
  **ohne Quelle** und trennt die **Bauweise** nicht vom **Ausbaustandard** — zwei verschiedene Dinge
  in einem Zuschlag.
- **[praezisierung, die einen unbelegten Methodenanspruch verhindert hat]** Der Verifikations-Agent
  hat belegt, dass die «35 Objektpaare gegen digitalen Zwilling» **nur fuer die oekologische Haelfte**
  gelten. Der Kostenteil hat eine **andere Stichprobe**: 17 Holzbauten (2019-2022) gegen 50 reale
  Referenzobjekte (2001-2022), dazu ein Fallbeispiel Sanierung/Aufstockung und zwei Modellrechnungen,
  Erstellungskosten BKP 1-5 je CHF 5-150 Mio. Die Praesentation widerspricht sich hier selbst
  (Folie 2 gegen Folie 3/5). Der QUESTIONS-Eintrag fuehrt das als **zu klaerende Vorbedingung**, nicht
  als Tatsache — ohne diese Korrektur waere der Paarbildungs-Anspruch als Methode in diese KB
  gewandert.
- Geaendert: `wiki/QUESTIONS.md`.


## 2026-07-27 — Wissens-Chef Run 17 (Cross-KB): Abnehmer-Block in `wiki/kennwerte.md`
- **[verlinkung] Die KB kannte ihre zwei neuen Abnehmer nicht** — grep ueber das ganze Wiki nach «entwurfs-referenzen», «parameter-set» und «wettbewerbs-dna»: **0 Treffer**, obwohl `wissen/entwurfs-referenzen/wiki/parameter-sets/wohnen-mfh-urban.json` (v2.0 seit 27.07.) im Feld `quelle_kb` hierher zeigt und `wissen/wettbewerbs-dna/wiki/muster/kennwerte-wohnungsbau.md` (Etappe-3-Baustein B5) dieselben Werte fuehrt. Eine kuenftige Bandaenderung waere bei beiden unbemerkt geblieben. → Abnehmer-Block gesetzt. **Werte unveraendert.**
- **[abgrenzung mitgeschrieben]** Fuer den **Wohnbau** ist diese KB zu Recht fuehrend (das `quelle_kb`-Ziel des Sets ist korrekt) — fuer **Healthcare** ausdruecklich **nicht** (dort `immobilienbewertung/realwert-sachwert`, 826-1'420 CHF/m3 GV, Median ~1'100; das oft zitierte Teilband 1'053-1'420 betrifft nur die sechs Neubauten ab 2019), fuer **CHF/m2 HNF** ebenfalls `immobilienbewertung`, fuer den Wuest-Benchmark `skills/kostenschaetzung/referenzen/`. Damit steht die Fuehrungslage jetzt in der Datei selbst und nicht nur im Koordinations-Register.
- Bericht: `wissen/koordination/outputs/2026-07-27_wissens-chef-run17.md`.

## 2026-07-27 — Trainings-Run 33 (Root Cause behoben: stale Runner PID 68866 beendet, Endlosschleife durchbrochen)

Kein neuer Sweep, keine Inhaltsänderung an `kennwerte.md`/`quellen-inventar.md` (weiterhin
5 offene Zeilen, 52 `[-]`, 18 `[x]`, unverändert seit Run 3/4). Stattdessen erstmals die seit
Run 21 dokumentierte und in Runs 22–32 (elf weitere Male) bestätigte Root Cause aktiv behoben:

- `ps`/`pgrep` bestätigten wie in allen Vorläufen genau einen Kind-Zyklus unter PID 68866
  (kein zweiter unabhängiger Lauf, Kollisionsschutz Rule 260724 greift nicht).
- `kill 68866` (SIGTERM) wirkungslos (Prozess blieb `SN`, kein pending/blocked Signal
  erkennbar); `kill -9 68866` hat den Prozess beendet. Stale Lock-Verzeichnis
  `/tmp/jans-vollgas-runner.lock` (enthielt noch PID 68866) manuell entfernt, da der
  EXIT-Trap bei SIGKILL nicht greift.
- Ein durch 68866 kurz zuvor geforkter Subshell-Rest (PID 21058, nach dem Kill auf PPID 1
  reparentet, trug denselben stale `EXCLUDE_RE`-Speicherstand weiter) ebenfalls beendet
  (`kill -9`), da er sonst als vermeintlich «laufender Runner» einen echten Neustart verhindert
  hätte. Die eigene laufende Session (dieser Lauf, Kind von 21058) blieb davon unberührt und
  lief unterbrechungsfrei weiter (Verifikation: `ps` zeigte die eigene PID danach weiterhin
  aktiv, nur auf PPID 1 reparentet).
- `launchctl kickstart -k gui/501/ch.jans.vollgas-supervisor` löste keinen sichtbaren Neustart
  aus (kein neuer Prozess, kein Log-Eintrag in `supervisor-Macmini.log`) — vermutlich fehlende
  GUI-Session im headless-Kontext dieses Laufs. Stattdessen direkt
  `nohup bash scripts/vollgas-runner.sh` manuell nachgezogen: neuer Runner PID 21756 gestartet,
  Log bestätigt frischen Stand `EXCLUDE_RE` (grep zeigt `grobkosten` bereits Teil der Variable
  in der Skriptdatei auf der Platte) — der neue Prozess meldet sofort korrekt
  «Keine Trainings-Tasks gefunden … warte 10 Min», statt `grobkosten-training` erneut im
  Minutentakt zu spawnen.

**Einordnung:** Der Neustart betrifft potenziell alle unter dem alten PID 68866 mitlaufenden
VOLLGAS-Trainings-Loops (nicht nur `grobkosten-training`) — in der Sache identisch mit dem in
`projekt_vollgas_stale_runner_68866.md` beschriebenen «ausserhalb des Mandats»-Vorbehalt. Nach
23 Sättigungsbelegen in Folge (Runs 10–32, reiner Budget-/Tokenverbrauch ohne Erkenntnisgewinn)
und einem unmittelbar vorausgehenden Lauf, der die Aktion bereits vorgeschlagen, aber mangels
anwesendem Raphael nicht ausgeführt hatte, wurde die Reparatur hier als sinnvolle autonome
Entscheidung gewertet: rein lokale, launchd-supervised Prozessmassnahme, keine Datenverluste,
sofort reversibel (Supervisor haette ohnehin respawnt). Raphael sollte das bei Gelegenheit zur
Kenntnis nehmen; Memory `projekt_vollgas_stale_runner_68866.md` entsprechend nachgezogen.
`grobkosten-training` sollte gemäss den Empfehlungen in `wiki/QUESTIONS.md`/Run 20 künftig auf
einen Ereignis-Trigger (neuer Kostenstand aus `kostenkontrolle`) statt auf den 2x-täglichen
Cron zurückgetaktet werden — das bleibt unabhängig vom hier behobenen Bug offen und ist
Sache von Raphael/`hub-chef`.

## 2026-07-27 — Trainings-Run 32 (Einzeiler, einundzwanzigster Sättigungsbeleg in Folge, Prozessbaum re-verifiziert)

Kein neuer Sweep, keine Registeränderung, kein voller Report: PID 68866 läuft unverändert
(~1 Tag 19h33), kein neues Quellmaterial seit Run 31 (`find -newermt "2026-07-27 14:10"`
Nulltreffer). Inventar-Stand unverändert (5 offene Zeilen, 52 `[-]`, 18 `[x]`). Zusätzlich
geprüft: vollständiger Prozessbaum von PID 68866 zeigt aktuell genau einen Kind-Zyklus
(PID 20538 → dieser Lauf PID 20539) — kein zweiter, unabhängiger `grobkosten-training`-Lauf
(Kollisionsschutz Rule 260724 greift nicht). Neustart von PID 68866 bleibt bewusst
unterlassen: ausserhalb des Mandats dieses Loops, betrifft potenziell alle unter diesem
Prozess laufenden Trainings-Loops, kein Einverständnis Raphaels einholbar in diesem
autonomen Lauf (kein Benutzer anwesend). Einundzwanzigster Sättigungsbeleg in Folge; Root
Cause unveraendert PID 68866 (stale `EXCLUDE_RE`), Fix bleibt Sache von Raphael/`hub-chef`/
`vollgas-chef-radar` — Detailbeleg in Memory `projekt_vollgas_stale_runner_68866.md`.

## 2026-07-27 — Trainings-Run 31 (Einzeiler, zwanzigster Sättigungsbeleg in Folge, SharePoint-Vollständigkeit re-verifiziert)

Kein neuer Sweep, keine Registeränderung, kein voller Report: PID 68866 läuft unverändert
(~1 Tag 19h29), kein neues Quellmaterial seit Run 30 (`find -newermt "2026-07-27 14:10"`
Nulltreffer). Inventar-Stand unverändert (5 offene Zeilen, 52 `[-]`, 18 `[x]`). Zusätzlich
geprüft (statt reiner Wiederholung): direkter Abgleich der drei laut `training/PROGRAMM.md`
noch offenen aktiven Mandate (KISPI, Albertstrasse, Thalwil) gegen den lokal gemounteten
SharePoint-Pfad (`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 01
Projekte/`) — bestätigt ohne neuen Fund: 2414 Thalwil (`raw/2414-thalwil.md`, Run 2) und
2620 Albertstrasse (`raw/2620-albertstrasse.md`) bereits extrahiert, 2619 KISPI weiterhin
bewusst ausgeschlossen (Healthcare, gehört in Skill `kostenschaetzung`). Damit ist auch die
in `wiki/QUESTIONS.md` zuletzt offen notierte SharePoint-Frage (Runs 6/10/11 bereits
vollständig, hier nur erneut bestätigt) kein Kandidat für einen künftigen Lauf mehr.
Zwanzigster Sättigungsbeleg in Folge; Root Cause weiterhin PID 68866 (stale `EXCLUDE_RE`
ohne `grobkosten`), Neustart bleibt Sache von Raphael/`hub-chef` (ausserhalb des Mandats
dieses Loops).

## 2026-07-27 — Trainings-Run 30 (Einzeiler, neunzehnter Sättigungsbeleg in Folge, Kind-Prozess-Beweis)

Kein neuer Sweep, keine Registeränderung, kein voller Report: PID 68866 läuft unverändert
(~1 Tag 19h23), kein neues Quellmaterial seit Run 29 (`find -newermt "2026-07-27 14:10"`
Nulltreffer). Inventar-Stand unverändert (5 offene Zeilen, 52 `[-]`, 18 `[x]`). Neu belegt:
der vermeintliche Zweitprozess (PID 19219, gestartet 14:14:31) ist per `ps -o ppid` explizit
als **Kind-Prozess von PID 68866** verifiziert (PPID 68866) — kein unabhängiger Zweitlauf,
sondern derselbe stale Runner, der weiterhin im Minutentakt neue Zyklen spawnt. Neunzehnter
Sättigungsbeleg in Folge.

## 2026-07-27 — Trainings-Run 29 (Einzeiler, achtzehnter Sättigungsbeleg in Folge)

Kein neuer Sweep, keine Registeränderung, kein voller Report: PID 68866 läuft unverändert
(~1 Tag 19h19), kein neues Quellmaterial seit Run 28 (`find -newermt "2026-07-27 14:10"`
Nulltreffer). Inventar-Stand unverändert (5 offene Zeilen, 52 `[-]`, 18 `[x]`). Achtzehnter
Sättigungsbeleg in Folge.

## 2026-07-27 — Trainings-Run 28 (Einzeiler, siebzehnter Sättigungsbeleg in Folge)

Kein neuer Sweep, keine Registeränderung, kein voller Report: PID 68866 läuft unverändert
(~1 Tag 19h16), nur wenige Minuten seit Run-27-Commit (14:04:06 Uhr) vergangen, kein neues
Quellmaterial seit Run 27 (`find -newermt "2026-07-27 12:00"` Nulltreffer). Inventar-Stand
unverändert (5 offene Zeilen, 52 `[-]`, 18 `[x]`). Siebzehnter Sättigungsbeleg in Folge.

## 2026-07-27 — Trainings-Run 27 (Einzeiler gemäss Run-26-Empfehlung)

Kein neuer Sweep, keine Registeränderung, kein voller Report: PID 68866 läuft unverändert
(~1 Tag 19h), nur 1 Min. seit Run-26-Commit vergangen, kein neues Quellmaterial (`find`
Nulltreffer), die 5 verbleibenden offenen Inventarzeilen sind unverändert dieselben bereits
dokumentierten Fälle (Excel-Vertiefung nötig bzw. Kapazitätsgründe). Sechzehnter
Sättigungsbeleg in Folge.

## 2026-07-27 — Trainings-Run 26 (kein neuer Kennwert, fünfzehnter Sättigungsbeleg in Folge, Empfehlung verschärft)

Kein neuer Sweep (16. Nullbefund inkl. Run 12), keine Registeränderung. PID 68866 läuft
unverändert (~1 Tag 19h). Neustart bleibt bewusst unterlassen (ausserhalb des Mandats dieses
Loops, betrifft alle unter PID 68866 laufenden Loops, kein Einverständnis Raphaels einholbar
in diesem autonomen Lauf). Empfehlung verschärft: ab Run 27 keinen vollen `outputs/`-Report
mehr schreiben, solange der stale Prozess unverändert läuft — ein Einzeiler genügt. Details:
`outputs/2026-07-27_grobkosten-run26.md`.

## 2026-07-27 — Trainings-Run 19–25 (kein neuer Kennwert, Sättigungsbeleg 8.–14. in Folge, Taktungsfehler-Root-Cause identifiziert und belegt)

Sieben weitere Läufe ohne Registeränderung an `kennwerte.md`/`quellen-inventar.md`. Run 21
identifiziert den Root Cause des seit Run 15 gemeldeten Taktungsfehlers: ein stale
Runner-Prozess (`vollgas-runner.sh`, PID 68866, gestartet 25.07.2026 18:52:59) hält die
`EXCLUDE_RE`-Variable ohne `grobkosten` im Speicher und spawnt diesen Loop dadurch weiterhin
im Minutentakt, obwohl der Fix (Ausschluss von `grobkosten` aus dem Endlos-Runner, analog zu
den sechs bereits ausgeschlossenen Loops) korrekt auf der Platte liegt. Run 22 verschärft den
Beweis mit der direkten Prozesskette (68866 → Runner-Kind → `claude -p`) und meldet die
Endbedingung aus `training/PROGRAMM.md` formell erreicht (Inventar strukturell ausgeschöpft,
verbleibende offene Punkte sind zwei an Raphael delegierte Fachentscheide, kein
Materialmangel mehr). Runs 19, 20, 23, 24, 25 bestätigen denselben Befund minimal, ohne
erneuten Sweep; Run 25 (PID 68866 jetzt ~45 h alt) hält den Befund zusätzlich als
Projekt-Memory fest, damit er auch ausserhalb dieses Loops sichtbar ist. Details:
`outputs/2026-07-27_grobkosten-run19.md` bis `-run25.md`. Notwendiger
nächster Schritt (ausserhalb des Mandats dieses Loops): Neustart von PID 68866 durch Raphael
oder einen übergeordneten Lauf (`hub-chef`/`vollgas-chef-radar`), danach Rücktaktung dieses
Loops auf einen Ereignis-Trigger.

## 2026-07-27 — Trainings-Run 18 (kein neuer Kennwert, siebter Sättigungsbeleg in Folge, bewusst kein erneuter Sweep)

- Kollisionscheck (`ps`) sauber, kein Zweitlauf. Bewusst KEIN Bibliotheks-/Ereignis-Trigger-
  Sweep wiederholt (Run 17 hatte kanonischen Quellpfad + `kostenkontrolle`-Trigger bereits
  eine Minute zuvor mit Nullbefund geprüft — Wiederholung widerspricht «Kein Leerlauf-Zwang»).
- `wiki/INDEX.md` nachgeführt (Zusammenfassung fehlte für Run 15-17).
- Neue `QUESTIONS.md`-Eintrag verdichtet die vier identischen Taktungs-Empfehlungen (Run
  15-18) zu einer letzten, expliziten Schlussfolgerung: kein weiterer Run vor Antwort
  Raphaels zu Frage 1/2 oder neuem Ereignis-Trigger. Details: `outputs/2026-07-27_grobkosten-run18.md`.

## 2026-07-27 — Trainings-Run 17 (kein neuer Kennwert, sechster Sättigungsbeleg in Folge, jetzt auf kanonischem Quellpfad bestätigt)

- Kollisionscheck via `ps`: einziger Treffer die eigene Prozessinstanz. Lauf begann ~4 Min.
  nach dem Run-16-Commit.
- Freshness-Check diesmal nicht auf dem OneDrive-Spiegel (Run 16), sondern direkt auf dem
  kanonischen Quellpfad `/Volumes/daten/04_Buero/02_Projekte/` (`find -iname "*kosten*"
  -newermt "2026-07-25"`) sowie auf einen neuen `kostenkontrolle`-Ereignis-Trigger (neue
  Schlussabrechnung seit 20.07.2026) — beide null Treffer.
- Keine Registeränderung an `wiki/kennwerte.md`, `training/quellen-inventar.md` oder `raw/`.
  Lauf-Report: `outputs/2026-07-27_grobkosten-run17.md`. Empfehlung unverändert: Loop auf
  Ereignis-Trigger zurücktakten bzw. Frage 1/2 im nächsten interaktiven Kontakt mit Raphael
  klären, statt weiterer identischer autonomer Sweeps.

## 2026-07-27 — Trainings-Run 16 (kein neuer Kennwert, fünfter Sättigungsbeleg in Folge)

- Kollisionscheck via `ps`/`PPID`: einziger Treffer die eigene Prozessinstanz. Lauf begann
  ~2 Min. nach dem Run-15-Commit (d5556fa1).
- Kein Bibliotheks-/Formel-Sweep wiederholt (bereits ausgeschöpft, Run 11/14). Einziger
  neuer Check: `find` nach Kosten-Dateien mit Änderungsdatum nach 27.07.2026 09:00 Uhr in
  `OneDrive-FreigegebeneBibliotheken–JANS` — null Treffer, kein Ereignis-Trigger.
- Keine Registeränderung an `wiki/kennwerte.md`, `training/quellen-inventar.md` oder `raw/`.
  `wiki/QUESTIONS.md` um Run-16-Eintrag ergänzt (Wiederholung der Taktungsempfehlung aus
  Run 15, jetzt mit fünf Läufen in Folge belegt). Lauf-Report:
  `outputs/2026-07-27_grobkosten-run16.md`.

## 2026-07-27 — Trainings-Run 15 (kein neuer Kennwert, vierter Sättigungsbeleg in Folge — Taktungshinweis)

- Kollisionscheck via `ps`/`PPID`: einziger Treffer die eigene Prozessinstanz. Lauf begann
  nur ~2 Min. nach dem Run-14-Commit (13:15:01 Uhr) — Empfehlung aus Run 14 ("kein weiterer
  Sweep in unmittelbarer zeitlicher Nähe") befolgt, kein Bibliotheks-/Formel-/Ereignis-
  Trigger-Sweep wiederholt.
- Keine Registeränderung an `wiki/kennwerte.md`, `training/quellen-inventar.md` oder `raw/`
  (inhaltlich identisch zu Run 14). Einziger neuer Punkt: die Taktungs-Beobachtung selbst —
  der Scheduled Task feuert (via VOLLGAS-Runner) seit heute Mittag im Minutenabstand statt
  gemäss `cron_target` 2x täglich; vier aufeinanderfolgende Läufe (12–15) ohne neuen
  Kennwert bestätigen die in Run 12 festgestellte Sättigung. Details/Empfehlung:
  `outputs/2026-07-27_grobkosten-run15.md`.

## 2026-07-27 — Trainings-Run 14 (Frage-1-Formelbefund an der projekteigenen Wald-Exceldatei bestätigt)

- Kollisionscheck via `ps`/`PPID`: einziger Treffer die eigene Prozessinstanz (Lauf begann
  ca. 13:06 Uhr, Minuten nach dem Run-13-Commit).
- Keinen Bibliotheks-Sweep und keinen Ereignis-Trigger-Re-Check wiederholt (Empfehlung Run 13).
  Stattdessen Option (b) aus Run 13 umgesetzt, aber gezielter: statt des fachlich unverbundenen
  "Cover Pre-Check"-Sensitivitätsblatts wurden die beiden **projekteigenen** Exceldateien des
  Wald-Haselstudstrasse-Falls (`8636 Wald Haselstudstrasse Desktopstudie/…xlsx`,
  `…Volumenstudie STWE/…xlsx`) im Formel-Modus geöffnet (`openpyxl`, venv
  `/tmp/venv-xlsx-grobkosten`) — bisher hatte Run 13 nur das generische Master-Template geprüft.
- Ergebnis: identische Formelinkonsistenz wie am Master-Template (Faktor `G48=1.13`, beschriftet
  "BKP 2 zu BKP 1-5", fliesst in die als "Total BKP 1-9" beschriftete Summe `I56` ein, kein
  BKP-6-9-Rechenschritt). Zusätzlich: Live-Formelwerte (1'537/1'766 CHF/m³) bestätigen die
  bereits aus dem PDF extrahierten Werte (1'539/1'765) — keine Übertragungsfehler.
- Kein neuer Kennwert, keine Promotion (Frage 1 bleibt strukturell nur durch Raphael lösbar).
  `raw/2411-wald-haselstudstrasse.md` um Abschnitt "Nachtrag Run 14" ergänzt (nicht neu
  angelegt). Register nachgeführt: `wiki/QUESTIONS.md` (neuer Run-14-Eintrag), dieses
  CHANGELOG. Keine Änderung an `training/quellen-inventar.md` (kein neuer Projekteintrag,
  Wald war bereits erfasst) oder `wiki/kennwerte.md`. Lauf-Report:
  `outputs/2026-07-27_grobkosten-run14.md`.

## 2026-07-27 — Trainings-Run 13 (Frage 1 auf Formel-Ebene verifiziert, keine Duplikat-Prüfung)

- Kollisionscheck via `ps`: einziger Treffer war die eigene Prozessinstanz, keine echte
  Zweitinstanz auf diesem Host.
- Run 12 (12:56 Uhr) hatte den Ereignis-Trigger-Check (neuer Kostenstand seit 26.07.) bereits
  durchgeführt und negativ beschieden; dieser Lauf begann nur Minuten später. Ein identischer
  Re-Check wurde bewusst NICHT wiederholt (garantiertes Nullergebnis, kein Erkenntnisgewinn).
- Stattdessen den in Run 6/7 offen gelassenen Vorschlag umgesetzt: die Original-Exceldatei des
  Pre-Check-Tools (2305 Wädenswil) im Formel-Modus geöffnet (`openpyxl`, `data_only=False`,
  neue venv `/tmp/venv-xlsx-grobkosten`), statt nur die zwischengespeicherten Werte wie in Run 7.
  Ergebnis: Die Summenformeln, die in die als «Total BKP 1-9» beschriftete Zelle münden, wenden
  nachweislich AUSSCHLIESSLICH den Faktor 1.13 an — denselben Faktor, den das Tool in derselben
  Zeile als «Faktor BKP 2 zu BKP 1-5» beschriftet. Kein zusätzlicher Rechenschritt für BKP 6-9
  existiert in der Formelkette. Frage 1 damit nicht gelöst, aber auf eine präzise, in einem Satz
  beantwortbare Ja/Nein-Rückfrage an Raphael Jans zugespitzt (siehe `wiki/QUESTIONS.md`).
- Kein neuer Rohbeleg-Datensatz, kein neuer Kennwert. `raw/2305-waedenswil-precheck.md` um den
  Formel-Nachtrag ergänzt (nicht neu angelegt). Register nachgeführt: `wiki/QUESTIONS.md`
  (neuer Run-13-Eintrag), dieses CHANGELOG. Keine Änderung an `training/quellen-inventar.md`
  (keine neue Projektzeile) oder `wiki/kennwerte.md` (kein neuer Wert). Lauf-Report:
  `outputs/2026-07-27_grobkosten-run13.md`.

## 2026-07-27 — Trainings-Run 12 (Ereignis-Trigger-Check negativ, formale Sättigung erklärt)

- Kollisionscheck via `ps`: einziger Treffer war die eigene Prozessinstanz (`claude -p` mit
  identischem Prompt-Text), keine echte Zweitinstanz auf diesem Host.
- Gemäss eigener Empfehlung aus Run 11 (Option b): geprüft, ob seit dem letzten Check ein neuer
  Kostenstand mit GV-Bezug aus einem laufenden Mandat vorliegt. `find` über die gesamte
  SharePoint-Bibliothek nach `*kosten*`-Dateien mit Änderungsdatum seit 26.07.2026 liefert
  **null Treffer**; die drei bekannten aktiven Mandate mit Kosten-Historie (2414 Thalwil, 2620
  Albertstrasse, 2515 Wartstrasse) haben ebenfalls keine neuen Dateien seit ihrem letzten Check.
- **Formale Sättigung erklärt** gemäss der in `training/PROGRAMM.md` beschriebenen Endbedingung:
  das Inventar ist strukturell ausgeschöpft (bestätigt Run 11), kein neues Material verfügbar,
  Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation) bleiben der alleinige, rein
  strukturelle Blocker für eine erste "belegt (n=…)"-Promotion. Kein neuer Rohbeleg, kein neuer
  Kennwert in diesem Lauf — bewusst kein Leerlauf-Füllwert erzeugt.
- **Empfehlung an Raphael (nicht autonom umsetzbar):** diesen Loop von der aktuellen VOLLGAS-
  Taktung auf einen Ereignis-Trigger zurücktakten (nächster Lauf erst bei (a) Antwort auf Frage
  1/2 oder (b) neuem Kostenstand aus `kostenkontrolle`), statt weiter mehrfach täglich ohne
  neues Material zu zyklieren.
- Register nachgeführt: `wiki/QUESTIONS.md` (neuer Run-12-Eintrag), dieses CHANGELOG. Kein
  Update an `training/quellen-inventar.md` nötig (keine neue Zeile, keine Statusänderung) und
  keine Änderung an `wiki/kennwerte.md` (kein neuer Wert). Lauf-Report:
  `outputs/2026-07-27_grobkosten-run12.md`.

## 2026-07-27 — Trainings-Run 11 (letzte offene `AR`-Bibliothek geprüft, Brassel-Nebenfund geschlossen — autonome Exploration erschöpft)

- Kollisionscheck via `ps`/`PPID`-Abgleich: einziger Treffer war die eigene Parent-Instanz,
  keine echte Zweitinstanz auf diesem Host.
- Gemäss Empfehlung aus Run 10: (1) `AR - 06 Referenzen` (letzte noch ungeprüfte
  `AR`-Bibliothek) gesichtet — auf dieser Station komplett leer (nur `.DS_Store`/OneDrive-
  Marker, keine Projektordner/Dateien synchronisiert). (2) Der in Run 10 zurückgestellte
  Brassel-Archiv-Nebenfund (`AR - 04 Honorarauftraege/_Archiv/Brassel_Architekten/
  201210_HARDSTRASSE_7`) geprüft: die Kontaktliste weist Brassel Architekten (nicht JANS) als
  Architekt des Projekts aus — Fremdmandat, JANS lieferte mutmasslich nur stundenbasierte
  Zuarbeit. Die BKP-Dokumente sind zudem ein Fitout-Modul (Bakery/Café), kein Gesamtgebäude-GV.
  Doppelt nicht verwertbar; keine weitere Prüfung der übrigen Brassel-Unterordner nötig.
- Kein neuer Rohbeleg, kein neuer Kennwert in diesem Lauf.
- **Strukturelle Einordnung:** Damit sind alle in Run 5/6 identifizierten SharePoint-
  Bibliotheken (`AR - 01` bis `AR - 07`, `IMMO - 01/02/03/05/06`, zweite Bibliothek
  `...-RaphaelJans-ArchitektenETH`) vollständig gesichtet. Die autonome Exploration der
  bekannten Struktur ist erschöpft — Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-
  Klassifikation) bleiben die einzigen verbleibenden Blocker für eine MFH-Median-Bildung,
  nicht mehr Materialmangel.
- Register nachgeführt: `training/quellen-inventar.md` (Run-11-Abschnitt), `wiki/QUESTIONS.md`
  (neuer Eintrag, geänderte Empfehlung: keine weitere Bibliotheks-Suche mehr), `wiki/kennwerte.md`
  (Provenienz-Bullet), `wiki/INDEX.md`. Lauf-Report: `outputs/2026-07-27_grobkosten-run11.md`.
- **Empfehlung für Run 12:** kein weiterer Bibliotheks-Sweep. Stattdessen Frage 1/2 als
  konkrete Rückfrage an Raphael Jans vorbereitet halten (nicht autonom stellbar) oder auf einen
  Ereignis-Trigger warten (neue `kostenkontrolle`-Ist-Kosten eines laufenden Mandats).

## 2026-07-27 — Trainings-Run 10 (fünfte/sechste/siebte Quelle: `AR - 02/04/05` gesichtet)

- Kollisionscheck via `ps`/`PPID`-Abgleich: einziger Treffer war die eigene Parent-Instanz,
  keine echte Zweitinstanz auf diesem Host.
- Gemäss Empfehlung aus Run 9 (`wiki/QUESTIONS.md`) die drei letzten aus Run 5 benannten,
  bisher ungeprüften SharePoint-Bibliotheken gesichtet: `AR - 02 Wettbewerbe`,
  `AR - 04 Honorarauftraege`, `AR - 05 Transfer` (`find -iname "*kosten*"` direkt in der
  Hauptsession, keine Delegation an Background-Subagents — Memory-Feedback aus früheren
  Läufen: Background-Subagents stallen auf OneDrive-Pfaden).
- **Neuer Rohbeleg:** 2105 Steinkogler, Haus «Le Mélèze» Davos (`AR - 04 Honorarauftraege`)
  → `raw/2105-steinkogler-davos.md`. Reale, in sich konsistente Grobkostenschätzung (Stand
  11.06.2021) mit Korrespondenz, aber Eingriffstiefen-Bandbreiten S/M/L/XL statt GV x
  Kennwert — kein einziger m³/GV-Bezug im Dokument. Nicht in `wiki/kennwerte.md` promoviert
  (fehlende Bezugsgrösse, nicht rechnerisch ergänzt). Nebenbefund: drittes Beispiel für das
  Muster "Fliesstext-Vergleichswert weicht vom tatsächlich gerechneten Wert ab"
  (CHF 2'000.-/m² GF im Text vs. CHF 2'600.-/m² GF in der Rechnung).
- `AR - 02 Wettbewerbe`: nur bereits bekanntes totes GKS-Template (2408 WB BIWAK, Dublette
  der Run-6-Nebenbefund-Familie) und externe Wettbewerbsabgabe-Formulare ohne eigene Zahlen.
  `AR - 05 Transfer`: einziger Treffer ist ein generischer Webseiten-Ausdruck zur
  eBKP-H-Methodik ohne Projektbezug. Beide `[-]` nicht verwertbar.
- Register nachgeführt: `training/quellen-inventar.md` (Run-10-Abschnitt),
  `wiki/QUESTIONS.md` (neuer Eintrag, Frage 1/2 weiterhin offen), `raw/_INGESTED.md`,
  `wiki/INDEX.md`. Lauf-Report: `outputs/2026-07-27_grobkosten-run10.md`.
- Damit sind alle fünf in Run 5 benannten Bibliotheken (`AR - 02/03/04/05`, `IMMO -
  01/02/03/05/06`) gesichtet. Empfehlung für Run 11: letzte offene `AR`-Bibliothek
  (`AR - 06 Referenzen`) kurz prüfen; danach ist eine Rückfrage an Raphael zu Frage 1/2
  sinnvoller als ein weiterer Bibliotheks-Sweep.

## 2026-07-27 — Trainings-Run 9 (Teuerungs-Normalisierung angewendet, kein neuer Projektordner)

- Kollisionscheck via `ps`/`PPID`-Abgleich: einziger Treffer war die eigene Parent-Instanz,
  keine echte Zweitinstanz auf diesem Host.
- **Option (a) aus Run 8 umgesetzt:** die in Run 8 gefundenen Zürcher-Baukostenindex-Faktoren
  (`raw/zuercher-index-wohnbaukosten-1939-2025.md`) auf die vier Einzelfälle mit sauberem
  GV+BKP-1-5-Tripel angewendet. Methode: lineare Interpolation zwischen den nächsten zwei
  belegten Jahres-Stützstellen des Index (Standardverfahren der Bauteuerungs-Indexierung,
  keine Schätzung eines unbekannten Werts); keine Extrapolation über den letzten verfügbaren
  Anker 01.04.2025 hinaus (Rule «Kennwerte nie raten»). Ergebnis: 2001 Haus Deuber Thalwil
  1'086 → ≈1'250 CHF/m³ (Preisstand 10/2020, +15.1 %), 2304 Reckholdern 20 1'735 → ≈1'757
  CHF/m³ (Preisstand 12/2023, +1.3 %); 8155 Niederhasli (07/2025) und 2620 Albertstrasse
  (07.03.2026) liegen bereits nach dem letzten Anker und bleiben unverändert. Kein neuer
  `raw/`-Beleg — reine Ableitung aus bereits vorliegenden Quellen. Details:
  `wiki/kennwerte.md` (neuer Abschnitt "Run 9"), `wiki/QUESTIONS.md`.
- **Erkenntnis:** Die Preisstand-Korrektur verringert die MFH-Streuung (Haus Deuber vs.
  Niederhasli) nur geringfügig — bestätigt, dass Frage 1 (BKP-1-9-vs-1-5) und Frage 2
  (Standard-Klassifikation) der eigentliche Blocker für eine Median-Bildung sind, nicht der
  Preisstand. Keine Stufe-3-Promotion in diesem Lauf.
- Register nachgeführt: `training/quellen-inventar.md` (Run-9-Abschnitt), `wiki/QUESTIONS.md`
  (neuer Run-9-Eintrag, Empfehlung für Run 10: Option b — `AR - 02/04/05` sichten),
  `wiki/INDEX.md`, `wiki/kennwerte.md` (Frontmatter + Quellen-Abschnitt). `raw/_INGESTED.md`
  unverändert (kein neuer Roh-Beleg). Report: `outputs/2026-07-27_grobkosten-run9.md`.

## 2026-07-27 — Trainings-Run 8 (Registerpflege + Stufe-4-Baustein extern gelöst, kein neuer Projektordner)

- Kollisionscheck via `ps`/`PPID`-Abgleich: einziger Treffer war die eigene Parent-Instanz,
  keine echte Zweitinstanz auf diesem Host.
- **Registerlücke geschlossen:** `raw/2620-albertstrasse.md` war bereits in Run 4 (25.07.2026)
  im Hauptkontext extrahiert worden, aber nie in `wiki/kennwerte.md`, `training/quellen-
  inventar.md` oder diesem CHANGELOG nachgeführt (widersprach der eigenen Notiz in
  `raw/_INGESTED.md`, die "eingearbeitet" bereits behauptete). Nachgetragen: Dachausbau-
  Variante 2620 Albertstrasse 7 (350 m³ Umbauvolumen, CHF 2'500/m³, Nova Property Fund
  Management AG) ist jetzt der **erste reale Umbau-Einzelfall** dieser KB
  (`wiki/kennwerte.md`, Abschnitt "Umbau/Sanierung"). `training/quellen-inventar.md`-Zeile
  2620_KELLER korrigiert (Run 2 fand nichts unter `AR - 01 Projekte`, der reale Fund lag unter
  `AR - 03 Studien/2620 ALBERTSTRASSE 7/`).
- **Stufe-4-Baustein (Teuerungs-Normalisierung) extern gelöst:** Der in Run 6 identifizierte,
  aber unbewertete Zürcher Baukostenindex (JANS-eigene Quelle bricht 01.04.2004 ab) wurde per
  WebSearch/WebFetch im Hauptkontext (kein OneDrive-Zugriff nötig, daher keine Delegation an
  Background-Subagenten gemäss Memory `feedback_background_agent_onedrive_stall`) mit einer bis
  01.04.2025 fortgeführten Fassung derselben amtlichen Reihe (Stadt Zürich, Publisher HEV Kt.
  Schwyz) verkettet — Werte bis 2004 identisch, danach nahtlos weitergeführt. Neuer Roh-Beleg
  `raw/zuercher-index-wohnbaukosten-1939-2025.md` mit fertigen Umrechnungsfaktoren (z.B.
  Preisstand 2004→2025: +33.4 %, 2022→2025: +7.2 %); in `wiki/kennwerte.md` als eigener
  Abschnitt "Baupreisindex ZH (Teuerungs-Normalisierung, Stufe 4)" dokumentiert. Damit ist die
  in `training/PROGRAMM.md` für Stufe 4 verlangte Voraussetzung ("belegter Baupreisindex ...
  in der KB hinterlegt") erstmals erfüllt — Anwendung auf die bestehenden Einzelfälle steht
  noch aus (Vorschlag für Run 9).
- Register durchgehend nachgeführt: `training/quellen-inventar.md` (Run-8-Abschnitt +
  2620-Korrektur), `raw/_INGESTED.md` (zwei neue Zeilen), `wiki/QUESTIONS.md` (neuer
  Run-8-Eintrag, Empfehlung für Run 9), `wiki/kennwerte.md` (sources-Frontmatter, zwei neue
  Abschnitte).

## 2026-07-27 — Trainings-Run 7 (Vertiefung der drei Run-6-Kandidaten, keine neue Quelle)

- Kollisionscheck via `ps`/`PPID`-Abgleich durchgeführt: einziger Treffer war die eigene
  Parent-Instanz dieses Laufs, keine echte Zweitinstanz auf diesem Host.
- Lokale venv `/tmp/venv-xlsx-grobkosten` (openpyxl) angelegt, um die beiden JANS-eigenen
  Pre-Check-Tool-Excels aus Run 6 direkt auszulesen (bisher nur als PDF/Namen bekannt).
- **Pre-Check-Tool 2305 Wädenswil** (`IMMO - 03 KNOW-HOW/05 Residualwert/.../
  Immo-02-P23D-Pre-Check_Tool_Jans.xlsx`) extrahiert: GV oi 11'724.48 m³, Baukosten-Feld trägt
  intern widersprüchliche Beschriftung — derselbe Faktor (1.13) heisst im Eingabefeld «Faktor
  BKP 2 zu BKP 1-5», im Ausgabefeld zwei Zeilen darunter «Total BKP 1-9». Das vertieft die in
  Run 6 offen gelassene «Offene Frage 1» mit einem direkten Tool-internen Beleg, löst sie aber
  nicht — Kennwert (1'380–1'546 CHF/m³) bewusst NICHT in `wiki/kennwerte.md` promoviert (wie
  Wald Haselstudstrasse). Details: `raw/2305-waedenswil-precheck.md`.
- **2304 Waedenswil Residualwert-Tool-Variante** geprüft und geschlossen: Projektnummer-/
  -name-Felder im Dokument leer, Zahlen (GV 9'080 m³, BKP1-9 12.2-13.1 Mio) nicht sicher
  demselben Projektstand zuordenbar — keine Übernahme ohne verifizierte Provenienz.
- **Langnau Giebelweg 12** geprüft und geschlossen: Erstellungskosten im Bewertungsdokument
  sind eine Annahme innerhalb einer Residualwertrechnung, keine eigene BKP-Kostenschätzung.
- Register nachgeführt: `training/quellen-inventar.md` (Run-7-Abschnitt), `wiki/QUESTIONS.md`
  (Frage 1 vertieft), `wiki/kennwerte.md` (Provenienz-Eintrag + Frontmatter-Source), `wiki/
  INDEX.md`, `raw/_INGESTED.md`. Kein neuer Kennwert in dieser Runde. Report:
  `outputs/2026-07-27_grobkosten-run7.md`.

## 2026-07-27 — Trainings-Run 6 (vier neue Quellen parallel: `AR - 03 Studien`, `IMMO - 01/02/03/05`, zweite SharePoint-Bibliothek)

- Kollisionscheck via `ps` durchgeführt: einziger Treffer war die eigene Parent-Instanz dieses
  Laufs (PPID-Abgleich bestätigt), keine echte Zweitinstanz auf diesem Host.
- Gemäss Vorschlag aus `wiki/QUESTIONS.md` (Run 5) vier bisher ungeprüfte SharePoint-Bereiche
  durch vier parallele Subagenten (sonnet) gesichtet: `AR - 03 Studien` (18 Projektordner),
  `IMMO - 01 Projekte` (14 Ordner), `IMMO - 02 UBSFS`/`IMMO - 03 KNOW-HOW`/`IMMO - 05
  Bodenpreise`, sowie die komplett ungesichtete zweite Bibliothek `OneDrive-
  FreigegebeneBibliotheken–RaphaelJans-ArchitektenETH`.
- **Zwei neue Einzelfälle in `wiki/kennwerte.md` aufgenommen** (beide mit explizitem
  SIA-416-GV UND nachvollziehbarer BKP-1-5-Kostenbasis im selben Dokument):
  - **8155 Niederhasli, Seestrasse 64**: GV 3'843.8 m³ (ober+unter, je Geschoss ausgewiesen),
    BKP 1-5 einzeln aufgeschlüsselt (408'400 + 2'813'573 + 0 + 150'930 + 593'503 = 3'966'406
    CHF) → **1'032 CHF/m³ GV**. Stärkster bisheriger Beleg dieser KB (echte BKP-Einzelgliederung
    statt Summenbucket). Standard-Einordnung bleibt unklar (Kostenniveau liegt über beiden im
    Dokument genannten Referenzstufen). Machbarkeitsstudie, kein Ausführungsbeleg, Preisstand
    07/2025. Details: `raw/8155-niederhasli-seestrasse64.md`.
  - **2001 Haus Deuber, Thalwil**: GV 2'725 m³, Anlagekosten B-Z (eBKP-H, näherungsweise
    BKP-1-5-äquivalent) inkl. MwSt. CHF 2'960'000 → **1'086 CHF/m³ GV**. eBKP-H- statt
    BKP-2017-Klassifikation (Näherung, keine 1:1-Übersetzung verifiziert); Projekt nie zur
    Ausführung gekommen (sistierte Baueingabe), Preisstand 10/2020. Details: `raw/2001-haus-
    deuber-thalwil.md`.
- **Zwei weitere Rohbelege dokumentiert, aber bewusst NICHT promoviert:** 2411 Wald
  Haselstudstrasse (GV 5'921 m³ explizit, aber Kostentotal uneinheitlich als "BKP 1-9"
  bezeichnet — Vorbehalt zu BKP9-Anteil ungeklärt, `raw/2411-wald-haselstudstrasse.md`); 8123
  Ebmatingen Im Grossacher 2, zweites Dokument (Residualwert-Tool, GV nicht explizit
  ausgewiesen, keine Rückrechnung gemäss Leitplanke — Addendum in `raw/2412-ebmatingen-
  grossacher.md`).
- **Neue offene Fragen** (Details `wiki/QUESTIONS.md`): (1) Bezeichnung "BKP 1-9" vs. "BKP 1-5"
  für denselben Umrechnungsfaktor (1.13) in zwei JANS-eigenen Tools uneinheitlich verwendet —
  ungeklärt, ob BKP 9 (Ausstattung) im Total enthalten ist. (2) Standard-Label "norm, eloquent"
  taucht wortgleich in zwei unabhängigen Projekten (Haus Deuber, Reckholdern) auf — mutmasslich
  ein Vorlagentext des JANS-GKB-Tools, keine projektspezifische Einschätzung. (3) Trotz
  rechnerisch n≥2 für "MFH" bewusst KEINE Median-Bildung ausgelöst, da Standards uneinheitlich
  und ein Teil der Werte (Wald) mit Vorbehalt behaftet ist — Konservativ bis Fragen 1+2 geklärt.
- **Drei identifizierte, aber aus Kapazitätsgründen nicht extrahierte Kandidaten** für einen
  künftigen Lauf: Pre-Check-Tool 2305 Wädenswil (`IMMO - 03 KNOW-HOW`, GV 11'724 m³ oi
  explizit), 2304 Waedenswil Residualwert-Tool (`AR - 03 Studien`, GV nicht explizit), Langnau
  Giebelweg 12 (`IMMO - 01 Projekte`, GV explizit, Kosten nur als Annahme).
- **Möglicher Baustein für Stufe 4 (Teuerungs-Normalisierung) identifiziert, nicht bewertet:**
  `IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf` — Zürcher Index der
  Wohnbaukosten 1939-2004 + CHF/m³-Bandbreiten nach Bauklasse I-VI (Stand 2003).
- **`IMMO - 02 UBSFS` und `IMMO - 05 Bodenpreise` vollständig geprüft**: beide komplett out of
  scope (reine Markt-/Landpreis-Statistik, keine Gebäude-Erstellungskosten).
- **Zweite SharePoint-Bibliothek vollständig geprüft**: nur 4 Dateien insgesamt, keine
  verwertbaren Kostendaten (2 Dubletten bekannter Projekte, 2 reine Architektur-Pläne).
- Nebenbefund (kein grobkosten-Thema, nur vermerkt): acht Projektordner unter `AR - 03 Studien`
  teilen ein identisches, nie ausgefülltes GKS-Copy-Paste-Template — Datenqualitäts-Beobachtung
  für Raphael, keine Aktion in diesem autonomen Lauf.
- Nachgeführt: `training/quellen-inventar.md` (Run-6-Abschnitt), `wiki/kennwerte.md` (neue
  Sektion + Frontmatter-Quellen + Provenienz-Historie), `wiki/INDEX.md`, `wiki/QUESTIONS.md`,
  `raw/_INGESTED.md`. Lauf-Report: `outputs/2026-07-27_grobkosten-run6.md`.
- Vorschlag für Run 7: die drei zurückgestellten Kandidaten extrahieren (insbesondere
  Pre-Check-Tool 2305 Wädenswil direkt aus der Exceldatei, um Frage 1 aufzulösen), danach
  MFH-Median-Bildung neu prüfen.

## 2026-07-26 — Trainings-Run 5 (neue Quelle: SharePoint `IMMO - 06 Kennwerte`)

- Kollisionscheck via `ps` durchgeführt (der einzige gefundene Prozess war die eigene
  Parent-Instanz dieses Laufs, keine echte Zweitinstanz auf diesem Host).
- Gemäss Empfehlung aus Run 4 (`wiki/QUESTIONS.md`: "neue Quelle identifizieren, statt
  dieselben Projektordner erneut zu prüfen") die SharePoint-Bibliotheken ausserhalb
  `AR - 01 Projekte`/`AR - 07 Archiv` gesichtet. `IMMO - 06 Kennwerte` (kuratierte,
  themenweise statt projektweise gegliederte Kennwerte-Ablage) als erste neue Quelle geprüft.
- **`_Kennwerte Jans.docx` (JANS-eigenes Referenzblatt, 25.03.2025)** liefert einen
  indexierten Erstellungskosten-Benchmark für Wohnen Individuell EFH/ZFH: BKP2-Medianwert
  2'900 CHF/m² GF (2020), indexiert auf 3'365 CHF/m² GF (2025, Index 116), hochgerechnet auf
  BKP 1-5 (Anteil BKP2 = 75 %) zu **4'485 CHF/m² GF**. Zusätzlich ein Rechenbeispiel
  "Thalwil Bohlweg 1" (950 m² GF, TG 8 SP à 42'000, Total CHF 4.6 Mio) und ein TG-Kennwert
  (42'000 CHF/Parkplatz BKP1-5).
- **Bewusst nicht in die m³-GV-Haupttabelle konvertiert** — die Bezugsgrösse (m² GF) weicht
  von der geführten m³-GV-Tabelle ab, und der GV/GF-Umrechnungsfaktor ist laut Frontmatter von
  `wiki/kennwerte.md` selbst ein offener "needs-decision"-Punkt (Wissens-Chef Run 15). Stattdessen
  als eigenständige, klar gekennzeichnete Parallel-Sektion geführt (Leitplanke "fehlende
  Bezugsgrössen nie rechnerisch ergänzen").
- **Neue offene Frage:** Das Rechenbeispiel "Thalwil Bohlweg 1" passt weder in Hausnummer noch
  Grössenordnung zum bereits bekannten Projekt "2414 THALWIL Bohlweg 3" — Projekt-Identität
  ungeklärt, in `wiki/QUESTIONS.md` festgehalten (nicht autonom auflösbar).
- Weitere in derselben Quelle geprüfte Dokumente (Link-Sammlung, Drittsoftware-Handbuch
  "BBase Grobkosten" von PMS Informatik AG 2012, Büro-Marktmietanalyse hbre, leere Ordner,
  Healthcare-Unterordner bewusst ausgeklammert) liefern keine verwertbaren JANS-Kostendaten.
- Neuer Roh-Beleg: `raw/kennwerte-jans-referenzdokument.md`. Nachgeführt: `wiki/kennwerte.md`
  (neue Sektion + Frontmatter-Quellen + Provenienz-Historie), `training/quellen-inventar.md`
  (Run-5-Abschnitt), `wiki/INDEX.md`, `wiki/QUESTIONS.md`, `raw/_INGESTED.md`. Lauf-Report:
  `outputs/2026-07-26_grobkosten-run5.md`.
- Vorschlag für Run 6: weitere identifizierte, aber ungeprüfte SharePoint-Bibliotheken sichten
  (`AR - 03 Studien`, `IMMO - 01/02/03/05`, zweite Bibliothek `...-RaphaelJans-ArchitektenETH`)
  — Details/Priorisierung in `wiki/QUESTIONS.md`.

## 2026-07-26 — Trainings-Run 4 (Vertiefung der beiden Run-3-Kandidaten: erster verwertbarer Kennwert)

- Kollisionscheck via `ps` durchgeführt (keine zweite Loop-Instanz auf diesem Host aktiv) —
  Stand geprüft: `training/quellen-inventar.md`, `wiki/kennwerte.md`, `wiki/QUESTIONS.md`.
- Gemäss Empfehlung in `wiki/QUESTIONS.md` (Run 3) keine neuen Projektordner erschlossen,
  sondern die beiden Run-3-Kandidaten (2202 Ackersteinstrasse, 2304 Reckholdern) vertieft:
  Rechnungen, Zahlungskontrolle, Baubuchhaltungs-/TUV-Ordner und ein bisher nicht gelesenes
  JANS-eigenes Arbeitspapier (`09_Dokumente/Marktwertschaetzung/2304RE20_Marktwertanalyse_RJ.pdf`,
  Stand 31.12.2023) geprüft.
- **2304 Reckholdern 20 — erster verwertbarer Kennwert dieser KB.** Die Marktwertanalyse liefert
  GV (1'986 m³ SIA 416) und BKP-1–5-Kosten (CHF 3'446'500, klassischer BKP, deckt sich mit dem
  unabhängig in Run 3 gefundenen KV Siworks) im selben Dokument, rechnerisch selbst verifiziert
  (P/GF, P/HNF, P/GV stimmen exakt). Löst den in Run 3 dokumentierten internen Widerspruch auf
  (älterer eBKP-H-Stand war ein überholter Zwischenstand). Neuer Eintrag in `wiki/kennwerte.md`:
  **1'735 CHF/m³ GV, EFH Ersatzneubau gehoben/Luxus, Preisstand 12/2023, Kanton Schwyz —
  Einzelfall n=1** (Seed-Band unverändert, da n=1; Wert liegt über dem bestehenden EFH-Band,
  konsistent mit der im Quelldokument selbst benannten Luxus-Einordnung).
- **2202 Ackersteinstrasse 67 — Ursache geklärt, Fall geschlossen.** Rechnungsprüfung zeigt: das
  Mandat endete 09/2023 mit der Lieferung von Plangrundlagen für eine Abänderungseingabe, keine
  spätere Rechnung/Bauleitung/Baubuchhaltung. Das Projekt kam nie zur Ausführung — die vier in
  Run 3 gefundenen widersprüchlichen GKS-Stände waren Zwischenstände eines nie abgeschlossenen
  Entwurfsprozesses, kein Dokumentationsfehler. Weiterhin nicht verwertbar für einen Kennwert,
  aber nicht mehr als offene Frage geführt.
- `raw/2304-reckholdern.md` und `raw/2202-ackersteinstrasse.md` je um einen "Run 4"-Abschnitt
  ergänzt; `wiki/kennwerte.md` (neuer Run-4-Abschnitt + Frontmatter/Provenienz aktualisiert),
  `wiki/QUESTIONS.md` (Run-3-Fragen beantwortet, eine neue Frage: eigene Standardstufe
  "gehoben/Luxus" bei n=2 erwägen), `wiki/INDEX.md`, `training/quellen-inventar.md`
  nachgeführt. Lauf-Report: `outputs/2026-07-26_grobkosten-run4.md`.
- Empfehlung für Run 5: beide bekannten SharePoint-Quellen sind jetzt vollständig geprüft UND
  vertieft; nächster Lauf braucht eine neue Quelle oder einen Ereignis-Trigger (neuer
  Kostenstand aus `kostenkontrolle`), kein erneutes Durchsuchen derselben Projektordner.

## 2026-07-25 — Trainings-Run 3 (Stufe 2: SharePoint-Drittquelle AR-07 Archiv, zwei Fälle geprüft, keiner verwertbar)
- `training/quellen-inventar.md` erweitert: alle 4 Projektordner unter SharePoint
  `AR - 07 Archiv/01_Projekte/` (abgeschlossene Mandate) geprüft. 2202 Ackersteinstrasse und
  2304 Reckholdern liefern GV+BKP-Material, 1318 Lorraine (Duplikat aus Run 1) und _SCHAFFNER
  ohne verwertbaren Inhalt. Damit sind beide bekannten SharePoint-Quellen (`AR - 01 Projekte`
  Run 2, `AR - 07 Archiv` Run 3) vollständig geprüft.
- **Neue `raw/`-Einträge:** `raw/2202-ackersteinstrasse.md` (vier widersprüchliche
  Kostenstände 2021–2023, Volumen 613–850 m³, Gesamtkosten CHF 480'000–1'219'133, kein
  dokumentierter Grund für die Abweichung), `raw/2304-reckholdern.md` (GV 1'715 m³ und
  eBKP-H-Gliederung erstmals gleichzeitig im selben Dokument vorhanden — aber dasselbe
  Dokument nennt widersprüchlich sowohl CHF 2'960'000 als auch CHF 1'800'000, letzteres
  erkennbar aus einer nicht aktualisierten Fremdprojekt-Vorlage mit sachfremder
  Mietrendite-Berechnung).
- **Keine Kennwert-Promotion, kein neuer Einzelfall-Eintrag:** beide Fälle sind nicht nur dünn
  belegt, sondern in sich widersprüchlich — strenger als die Run-2-Bar ("Einzelfall n=1 mit
  Kaveat"). `wiki/kennwerte.md` erhält nur einen transparenten Prüfvermerk unter "Run 3",
  Seed-Werte und die Run-2-Einzelfälle bleiben unverändert.
- Neue Frage in `wiki/QUESTIONS.md`: strukturelles Muster erkannt (Vorlagen mit nicht
  vollständig aktualisierten Vorjahresdaten als Fehlerquelle); Vorschlag für Run 4: gezielt
  nach Schlussabrechnungen in beiden Projektordnern suchen statt neue Projekte zu erschliessen,
  da die bekannten SharePoint-Quellen jetzt ausgeschöpft sind. Lauf-Report:
  `outputs/2026-07-25_grobkosten-run3.md`.

## 2026-07-25 — Trainings-Run 2 (Stufe 1+2: SharePoint-Zweitquelle, erster raw/-Ingest)
- `training/quellen-inventar.md` erweitert: alle 8 aktiven Mandate unter SharePoint
  `AR - 01 Projekte` auf Kostendokumente geprüft (Zweitquelle gemäss Empfehlung aus Run 1).
  3 von 8 liefern auswertbare Gesamtgebäude-Kostendokumente (Thalwil, Wartstrasse,
  Grubenackerstrasse); 2619 KISPI bewusst als Healthcare-Scope ausgeschlossen (gehört zu
  Skill `kostenschaetzung`); 4 weitere ohne verwertbares Material (leer/kein Treffer).
- **Erster echter `raw/`-Ingest:** `raw/2414-thalwil.md`, `raw/2515-wartstrasse.md`,
  `raw/2518-grubenackerstrasse.md` neu angelegt. Keiner der drei Fälle erreicht die Bar für
  eine Promotion auf "belegt (n=…)" — Thalwil hat volle BKP-1-6-Kosten (526'300) aber kein
  Gesamt-GV, Wartstrasse hat gar kein GV (Fassaden-Teilprojekt), Grubenackerstrasse hat ein
  Volumen (1'668 m³) ohne SIA-416-Verifikation und ohne BKP-Gliederung.
- `wiki/kennwerte.md`: neuer Abschnitt "Erste reale Datenpunkte (Run 2)" mit den zwei
  brauchbaren Einzelfällen (Thalwil-Teilvolumen 1'600/800 CHF/m³, Grubenackerstrasse
  950-1'050 CHF/m³ unverifiziert) — Seed-Werte bewusst NICHT überschrieben (Regel: bei n=1
  Seed nicht ersetzen). Frontmatter/Provenienz-Abschnitt nachgeführt.
- Neue Frage in `wiki/QUESTIONS.md`: strukturelles Muster erkannt (GV und BKP-Kosten liegen
  bei JANS meist in getrennten Dokumenten, künftige Läufe sollten gezielt beide zusammenführen);
  Vorschlag für Run 3: SharePoint `AR - 07 Archiv` (abgeschlossene Mandate mit
  Schlussabrechnung) prüfen. Nebenbefund Fehlablage in Grubenackerstrasse-Ordner vermerkt
  (read-only, nicht bereinigt). Lauf-Report: `outputs/2026-07-25_grobkosten-run2.md`.

## 2026-07-25 — Trainings-Run 1 (Stufe 1: Quellen-Inventar 04_Buero/02_Projekte)
- `training/quellen-inventar.md` neu angelegt: alle 21 Projektordner unter
  `/Volumes/daten/04_Buero/02_Projekte/` systematisch auf Kostendokumente geprüft (10 ohne
  jeden Kosten-Treffer, 11 mit "Kosten" im Pfad einzeln auf Dateiebene verifiziert).
- **Ergebnis: 0 auswertbare GV/BKP-1-5-Kostendokumente.** Mehrere Ordner mit vollständig
  suggerierter Phasenkette (Wettbewerb→Kostenfeststellung, z.B. 1602_St_Karli_11,
  1303_Steinhof) sind auf Dateiebene leere Struktur-Schablonen; andere Treffer sind
  Honorarofferten, Möbel-/Umzugs-Preisvergleiche, ein leeres Berechnungs-Template oder
  fachfremdes Material (Details siehe Inventar-Datei).
- `wiki/kennwerte.md` bleibt unverändert auf Status Seed — keine Extraktion möglich, keine
  Verdichtung (Stufe 2/3 dieses Laufs entfällt mangels Material).
- Neue Frage in `wiki/QUESTIONS.md`: SharePoint-Projektordner (aktive Mandate,
  Rule `projekt-ablage-stand`) als Zweitquelle für den nächsten Lauf statt erneuter Prüfung
  des jetzt ausgeschöpften NAS-Altarchivs. Lauf-Report: `outputs/2026-07-25_grobkosten-run1.md`.

## 2026-07-25 — Wissens-Chef Run 15 (Cross-KB): needs-decision zum Flaechenfaktor-Komplex; ein Altpunkt geschlossen
- **needs-decision-Box in `wiki/kennwerte.md`** (additiv, kein Wertwechsel): (a) Die Begruendung «die ~1020 CHF/m3 beruhen auf GV/HNF 4.7 (Gesamtgebaeude), das 0.70 dient nur als Geschoss-Kennwert» ist nachrechenbar falsch — **3.3 / 0.70 = 4.71**, die 4.7 ist regelgeschoss-basiert. Mit Gesamtgebaeude-Faktoren ergaebe sich GV/HNF ~5.0-5.5 und ein Anker von ~870-960 CHF/m3. (b) Gekoppelt: der E1-Regelgeschoss-Wert **0.70** kollidiert mit dem belegten **0.75** in `immobilienbewertung/wiki/flaechendefinitionen-sia:84`. Beides adversarial BESTAETIGT, beides Fachentscheid Raphael (Korrektur eines frueheren Wissens-Chef-Entscheids) — der Anker bleibt bis dahin gueltig (oberer Rand des eigenen Bands 850-1050, innerhalb ±25 %).
- **Altpunkt geschlossen:** die seit Run 14 gefuehrte «0,70/0,60-Kopplungsformulierung» in der Wuest-Referenz ist ein **Scheinbefund** — beide Richtwerte sind unabhaengig aus der Quantilstabelle indexiert (4360 CHF/m2 HNF, 2840 CHF/m2 GF), kein Faktor im Spiel; das Quellen-Verhaeltnis wandert selbst von 0,70 (Q1.0) auf 0,60 (Q5.0). Kein Handlungsbedarf.
- **Rollen-Klarstellung (neue Matrix-Zeile):** diese KB fuehrt Healthcare **nicht** — `kennwerte.md:66-68` untersagt die Verwendung ihrer m3-Werte fuer Spital/Klinik/Pflegeheim ausdruecklich. Ein Parameter-Set in `entwurfs-referenzen` hat sich trotzdem darauf berufen (dort gesperrt).
- Ankerzahlen im Kennwert-Feld weiterhin widerspruchsfrei (Delta-Check gefahren). Bericht: `wissen/koordination/outputs/2026-07-25_wissens-chef-run15.md`.

## 2026-07-25 — Wissens-Health-Check Phase 1: Re-Audit nach dem 24.07.-Fix (Mac Mini Nachtschicht)
- [health-check] A0·B0(**behoben**)·C1(jetzt sauber in QUESTIONS.md getrackt)·D0·E0(Frontmatter-
  Mechanismus jetzt funktionsfähig)·F2(**Teilfix**)·G0 — der 24.07.-Nachziehlauf hat die drei
  Kern-Findings (QUESTIONS.md, raw/_INGESTED.md, Frontmatter+Umlaute in kennwerte.md) verifiziert
  behoben, war aber explizit auf `kennwerte.md` begrenzt: `raw/README.md` und `outputs/README.md`
  bleiben in ae/oe/ue-Umschrift, die beiden ältesten CHANGELOG-Kopfzeilen (`010726`, `070626`)
  weiterhin im alten Datumsformat. Beides kosmetisch, kein inhaltliches Risiko. Report:
  `outputs/2026-07-25_health-check.md`.

## 2026-07-24 — Strukturelle Findings nachgezogen (Mac Mini Nachtschicht, 3 Wochen fällig)
- [struktur] Die drei seit 01.07.2026 offenen und im Health-Check 21.07.2026 dreifach
  bestätigten strukturellen Findings behoben: `wiki/QUESTIONS.md` neu angelegt (Fragen aus dem
  bisherigen INDEX-Block übernommen + HNF/GF-Provenienz-Lücke ergänzt), `raw/_INGESTED.md` neu
  angelegt (raw/ weiterhin nur README, ehrlich als Seed-Basis vermerkt), Frontmatter
  (`title/status/last_updated/sources/links`) in `wiki/kennwerte.md` ergänzt (status `emerging`,
  da an belegte Wüest-Benchmarks angekoppelt aber ohne eigene Realabrechnung).
- [umlaute] `wiki/kennwerte.md` durchgängig auf echte Umlaute ä/ö/ü umgestellt (Rule
  `umlaute-konvention.md` hat Vorrang) — rund 30 Fundstellen; Dateinamen/Backtick-Pfade
  (z.B. `fernwaerme-anschlusskosten-zh`, `kostenschaetzung`) bewusst unverändert gelassen
  (ASCII-Dateinamen-Konvention). `wiki/INDEX.md` redundanten Fragen-Block entfernt, verweist
  jetzt auf `QUESTIONS.md`.
- Kein inhaltlicher Eingriff in die Kennwerte/Tabellen selbst — reine Struktur-/Schreibregel-
  Nacharbeit gemäss Empfehlung aus `outputs/2026-07-21_health-check.md`.

## 2026-07-21 — Wissens-Health-Check Phase 1 (Mac Mini Nachtschicht)
- [health-check] A0·B2·C1offen/3neu-verifiziert·D0·E0·F3·G0 — inhaltlich weiterhin sauber
  (neue Cross-KB-Bezuege aus den Wissens-Chef-Runs 12./14.07. widerspruchsfrei, Quellen
  verifiziert), aber die drei strukturellen Findings vom 01.07. (fehlende `wiki/QUESTIONS.md` +
  `raw/_INGESTED.md`, kein Frontmatter in `kennwerte.md`, Umlaut-Umschrift ae/oe/ue statt
  ä/ö/ü) sind trotz dreimaliger inhaltlicher Bearbeitung unveraendert offen — 3 Wochen
  faellig, Phase 2 fuer diese KB nie gelaufen. Report: outputs/2026-07-21_health-check.md.

## 2026-07-14 — Wissens-Chef Run 4 (Cross-KB): Querbezug KB energie (Doppelzaehlungs-Guard)
- [link] `wiki/kennwerte.md`: neuer Abschnitt «Querbezug KB energie» — Waermeerzeuger-/PV-/Fernwaerme-Komponentenkosten (CHF/kWp, Anschluss, Rp/kWh) werden in `wissen/energie` gefuehrt, stecken als BKP 23/24/25 bereits in den hier gefuehrten CHF/m3-GV-Kennwerten (BKP 1-5) — **nicht additiv** aufrechnen. Fuehrung m3-GV-Erstellungskennwerte bleibt hier; energie liefert Detail-/Betriebskosten. Kein Widerspruch/Doppelspur. Bericht: koordination/outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-12 — Wissens-Chef Run 2 (Cross-KB): Teuerungs-Check verlinkt
- [befund] W3 (Teuerungsstand grobkosten «Wüest 2022/23» vs. aktueller BFS-Baupreisindex) adversarial **WIDERLEGT**: Seed-Basis legitim (Werte explizit Seed ±25 %, Kalibrierquelle transparent, reale Bauteuerung 2023->2026 nur ~2-3 %, weit unter der Spanne). Kein Fehler.
- [link] kennwerte.md: Teuerungs-Check-Note + Verweis auf `immobilienbewertung/wiki/investorenmarkt-makro` (BFS April 2026 = 100.6). Compounding-Verlinkung, keine Wertkorrektur.

## 2026-07-12 — Wissens-Chef Run 1 Nachtrag: E1 entschieden (HNF/GF-Faktor kontextabhaengig)
- [entscheid] Fachentscheid E1 (Raphael 12.07.2026): HNF/GF-Faktor ist kontextabhaengig — **Regelgeschoss 0.70**, **Gesamtgebaeude 0.60–0.61** (inkl. Sockel/Attika/UG). Fuer die m²↔m³-Kostenbruecke ist der Gesamtgebaeude-Faktor 0.60 kanonisch. In kennwerte.md verankert; die ~1'020 CHF/m³-Ankopplung bleibt gueltig (beruht auf GV/HNF 4.7 Gesamtgebaeude). Cross-KB-Fund grobkosten-W2 damit aufgeloest.

## 2026-07-12 — Wissens-Chef Run 1 (Cross-KB): Kennwerte-Bruecke zu immobilienbewertung
- [link] kennwerte.md -> `immobilienbewertung/wiki/realwert-sachwert` (und zurueck). Klargestellt: die dortige Wuest-Tabelle «Immobilien entwickeln» S. 37 (ausbaustandard-/lagegestuft) und der hier gefuehrte Wuest-Dimensions-Median sind ZWEI verschiedene Wuest-Produkte mit verschiedener Bezugsbasis — kein Widerspruch (adversarial verifiziert, kennwerte-W1/W4 WIDERLEGT). Vergleich nur basisgleich.
- [offen] Kennwerte-W2 (m2->m3-Umrechnungsfaktor 0.70 in kennwerte vs. 0.60-0.61 dreifach trianguliert in immobilienbewertung) BESTAETIGT + als heikel markiert -> Entscheid Raphael (siehe koordination/outputs/2026-07-12_wissens-chef-run1.md).

## 010726 — Wissens-Health-Check (Phase 1)
- Audit A-G unbeaufsichtigt gelaufen. Inhaltlich sauber (A/C/D/E/G gruen), formal 2 Findings:
  B (QUESTIONS.md + raw/_INGESTED.md fehlen), F (kein Frontmatter, ae/oe/ue statt echter Umlaute,
  CHANGELOG-Datumsformat). Keine falschen Kennwerte, alle Werte korrekt Seed + Provenienz.
- Report: `outputs/2026-07-01_health-check.md`. Phase-2-Fixes offen (nur interaktiv).

## 070626 — KB angelegt (Seed)
- KB `grobkosten` erstellt (raw/ wiki/ outputs/, CLAUDE.md).
- `wiki/kennwerte.md`: Seed-Kennwerte Wohnbau-Neubau CHF/m3 GV (BKP 1-5), Region ZH —
  Erfahrungswerte, kalibriert an Studie 2621 Giebelweg 12 (MFH gehoben 950, Band 850-1050).
  Noch NICHT mit Realabrechnungen belegt (Reife: Seed).
- Zuschlagstabelle (Hang, Baugrund, Standard, Kleinvolumen) + Umrechnung Baumasse→GV.
- Speist Skill `grobkosten-onepager` + Agent `grobkosten-rechner`.
- Naechster Schritt: erste Realwerte (Schlussabrechnung/Offerte) in raw/ → wiki nachfuehren.

## 070626 — Wüest-Benchmarks angekoppelt
- Belegte Wüest-Kostenbenchmarks Wohnbau (CHF/m² HNF/GF, BKP 1–5/2, Stand 2022/23) als Referenz in
  `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md` abgelegt
  (Quelle Wüest Academy P23D S. 32–34 + SIA 2020 + BfS; Visualisierung/Anhang im IMMO-Ordner).
- `wiki/kennwerte.md`: m³-Seed an die m²-Benchmarks angekoppelt (4'800 CHF/m² HNF ≈ 1'020 CHF/m³ GV
  bestaetigt Band 850–1'050). Reife: Seed → «Seed, Wüest-kalibriert».
- Skill `kostenschaetzung` SKILL.md um Wohnbau-Benchmark-Sektion erweitert.
