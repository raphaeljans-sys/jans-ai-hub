---
quelle: "«Zur lärmarmen Konstruktion von Wärmepumpenanlagen» — ERFA-Seminar 25.02.2002,
  Referat K. Baschnagel, EMPA Dübendorf (Eidgenössische Materialprüfungs- und Forschungsanstalt);
  amtlich gehostet vom Kanton Zürich, Baudirektion, Amt für Abfall, Wasser, Energie und Luft
  (AWEL), Fachstelle Lärmschutz, unter der Rubrik «Neuanlagen» (zh.ch, Dateiname
  d8506-laermarme_konstruktion_empa-fals.pdf). In den Quellenangaben referenziert das Referat
  seinerseits: W. Lips, «Lärmbekämpfung durch Kapselung» (SUVA Luzern, Bestellnr. 66026); W. Lips,
  «Elastische Lagerung von Maschinen» (SUVA Luzern, Bestellnr. 66057); VDI 2711/2567/2062/3727/3733
  (deutsche VDI-Richtlinienreihe «Lärmarm Konstruieren»); K. Eggenschwiler, «Lärm von Wärmepumpen»,
  Heizung und Lüftung Nr. 5, 1996.
herausgeber: "EMPA Dübendorf (Bundesanstalt); amtlich zugänglich gemacht durch Kanton Zürich,
  AWEL Fachstelle Lärmschutz"
ausgabe: "ERFA-Seminar-Unterlage vom 25.02.2002 (8 Seiten), unverändert auf zh.ch/AWEL abgelegt"
gelesen: "2026-07-25, vollständig (8 Seiten) via Read-Tool nach curl-Download von zh.ch"
datenstand: "2026-07-25 abgerufen; Inhalt selbst datiert 2002 — die physikalischen Grundprinzipien
  (Feder-Masse-Schwinger, Resonanzfrequenz, Körperschallentkopplung) sind zeitlos und durch die
  VDI-Reihe/SUVA-Publikationen weiterhin Stand der Technik; ⚠ moderne Produktbeispiele (z.B.
  aktuelle Kompressor-Aufhängungen, Wärmepumpen-Systemmodule) sind in der Quelle nicht enthalten
  und wurden hier nicht ergänzt"
status: emerging (Primärquelle amtlich verifiziert und im Volltext gelesen; physikalische Aussagen
  sind fachlich unstrittig, aber die Quelle selbst ist mit 2002 nicht mehr taufrisch — vor einer
  Hebung auf established sollte geprüft werden, ob eine neuere EMPA/BAFU/FWS-Fassung dasselbe
  Thema aktueller behandelt)
last_updated: 2026-07-25
---

# Destillat — Körperschallisolation bei Wärmepumpenanlagen (EMPA/AWEL ZH)

## Das Wichtigste in 1 Satz

Neben dem behördlich geregelten **Aussenlärm** (LSV-Planungswerte, bereits in
`[[waermepumpe-aussenlaerm-vollzugshilfe]]`/`[[cerclebruit-vollzugshilfe-waermepumpen-laermschutz]]`
abgedeckt) gibt es eine zweite, bautechnisch ebenso wichtige, bisher in der KB **nicht** behandelte
Baustelle: **Körperschall** — die über elastische Lagerung, Kapselung und entkoppelte
Rohrleitungen beherrschte Schwingungsübertragung des Wärmepumpen-Kompressors/-Ventilators **ins
eigene Gebäude** (Schlaf-/Wohnräume, Nachbarwohnungen im selben Haus), unabhängig davon, ob der
Aussenlärm-Grenzwert gegenüber Dritten eingehalten ist.

## Einordnung: Luftschall vs. Körperschall (Grundunterscheidung der Quelle)

- **Luftschall:** mechanische Schwingungen (vibrierende Maschinenteile, ausströmende Gase), die
  direkt über die Luft zum Ohr des Empfängers gelangen. Das ist der Schall, den die
  LSV-Planungswerte (Anhang 6, Ziff. 34) und der Lärmschutznachweis erfassen.
- **Körperschall:** mechanische Schwingungen, die über feste Strukturen (Maschinen-/Gebäudeteile:
  Fundament, Decke, Wand, Rohrleitung) übertragen werden und erst an anderer Stelle wieder als
  Luftschall abgestrahlt werden — z.B. wenn der Kompressor im Keller die Bodenplatte anregt und der
  Schall zwei Stockwerke höher im Schlafzimmer als tieffrequentes Brummen hörbar wird.
- Beide Übertragungswege treten in der Praxis meist **kombiniert** auf; bei Kältemittel-/
  Solerohrleitungen zusätzlich als **Flüssigkeitsschall**, der über die Rohrwandung in Körperschall
  umgewandelt wird.

## Die vier Massnahmen-Bausteine (aus der Quelle, mit Kernformeln/-regeln)

### 1. Kapseln / Schallschutzhauben (gegen Luftschall an der Quelle)
Wirkzusammenhang: `L_w2 = L_w1 − R + 10·log(1/α)` (L_w1 = Schalleistung in der Kapsel, R =
Schalldämmung der Kapselwand, α = Schallabsorptionsgrad der Innenauskleidung, L_w2 = abgestrahlte
Schalleistung). Rechenbeispiel der Quelle: bei L_w1 = 100 dB, R = 30 dB senkt eine
schallabsorbierende Auskleidung (α = 0.6 statt 0.01) die abgestrahlte Schalleistung von 90 dB auf
72 dB — **18 dB Unterschied allein durch die Innenauskleidung**. Eine gute Kapselung braucht: an
die Verhältnisse angepasste Luftschalldämmung, wirksame Innenabsorption, möglichst kleine
Öffnungen nach aussen, abgestimmte Körperschallisolation (sonst untergräbt die Kapsel-Anbindung
selbst den Effekt).

### 2. Schalldämpfer (in Zu-/Abluftkanälen)
Kenngrössen: Durchgangsdämpfung (stark frequenzabhängig — meist am wirksamsten bei 1–2 kHz,
deutlich schwächer bei tiefen Frequenzen), Druckverlust, Eigengeräusch, Bauvolumen,
Alterungsbeständigkeit. Tieffrequente Geräusche (typisch bei Radialgebläsen) sind viel
aufwendiger zu dämpfen als mittel-/hochfrequente (Axialgebläse) — bei der Projektierung ist daher
frühzeitig Platzreserve für Kanaldämpfer einzuplanen.

### 3. Körperschallisolation (elastische Lagerung) — das Kernthema
Physikalisches Modell: **Feder-Masse-Schwinger**. Das Verhältnis der ins Fundament eingeleiteten
Kraft F_F zur anregenden Kraft F_M hängt von der **Resonanzfrequenz f₀** der Lagerung ab:
- Nur wenn die **Erregerfrequenz deutlich über f₀** liegt, wirkt die elastische Lagerung dämmend.
- **In der Nähe von f₀ wird die Übertragung sogar grösser** als ohne jede Federung — eine falsch
  dimensionierte «Schwingungsdämpfung» kann das Problem verschlimmern statt lösen.
- f₀ hängt ab von: wirksamer Masse der Körperschallquelle, dynamischer Steifigkeit der Feder unter
  Last, wirksamer Masse der Unterlage.

Konstruktive Grundregeln:
- **Gummi (Elastomere)** ist volumenkonstant und darf **nur auf Druck, nie auf Zug** beansprucht
  werden — falsch montierte Gummilager sind ein häufiger Ausführungsfehler.
- **Flächenförmige Lagerung** (Bauakustik-Trittschall-Prinzip) ist für Wärmepumpen **nicht
  geeignet** — es braucht punktweise Abfederung.
- **Punktweise Abfederung** (Einfachisolation): geeignet bei mittlerer Körperschallanregung auf
  Geschossdecken bzw. bei starker Anregung direkt auf der Gebäudefundamentplatte.
- **Doppelisolation:** bei starker Schwingungsanregung auf Geschossdecken wirksamer, aber
  anspruchsvoller in der Dimensionierung — bei Fehlanpassung schlechteres statt besseres Ergebnis.
- **Gruppenisolation:** mehrere kleine Geräte auf einem gemeinsamen, gefederten Sockel montieren.
- **Sockel** erhöhen die wirksame Masse (reduziert Schwingungsamplitude, entlastet
  Rohrleitungsanschlüsse), sind aber bei gleicher Resonanzfrequenz isolationstechnisch neutral —
  ihr Nutzen ist v.a. bei sehr leichten Geschossdecken relevant.

Empfohlenes Vorgehen (Vorabklärungen laut Quelle): Masse des zu federnden Geräts, Erregerfrequenz
und -kraft, wirksame Masse und Eigenfrequenz der Unterlage (Decke/Fundament), erforderliche
Isolationswirkung, zulässige Amplitude am Gerät — daraus Abstimmungsverhältnis und Resonanzfrequenz
f₀ der Abfederung festlegen und **kontrollieren, dass f₀ nicht in der Nähe der Eigenfrequenz der
Unterlage liegt**.

### 4. Rohrleitungen (Kompensatoren, elastische Aufhängung)
Rohrleitungen sind ein häufig unterschätzter Übertragungsweg — «das Rohrleitungsnetz kann weite
Gebäudeteile mit Körperschall regelrecht verseuchen» (wörtlich aus der Quelle). Massnahmen: jede
Leitungsbefestigung ist selbst ein Feder-Masse-System und muss entsprechend dimensioniert werden;
**Kompensatoren** (flexible Schlauchleitungen, 90–360° gebogen) zwischen Gerät und starrem
Leitungsnetz; alle Befestigungspunkte und Wanddurchführungen isolieren; nur körperschalltechnisch
geprüfte Rohrbefestigungsmaterialien verwenden. Kältemittelleitungen sind wegen ihrer kleinen Masse
und starken tieffrequenten Anregung besonders schwierig zu dämmen — bei erhöhten Anforderungen
braucht es Gummifederelemente **mit zusätzlicher Masse** (nicht nur ein einfaches Gummilager).

## Praxis-Schemata nach Anlagetyp (aus Abschnitt 6 der Quelle)

- **Luft/Wasser-Wärmepumpe aussen aufgestellt:** grösstes Lärmpotenzial, Hauptquelle meist der
  Ventilator. Aufstellungsort so wählen, dass er von eigenen UND fremden Wohn-/Schlafräumen
  abgeschirmt ist; Lärmschutzwände direkt um die Wärmepumpe sind strömungstechnisch eher ungünstig
  (Verwirbelung); Ventilatoren dürfen **nie an leichte Strukturen** (dünne Bleche) montiert werden,
  da diese den Körperschall als Luftschall abstrahlen.
- **Luft/Wasser-Wärmepumpe innen aufgestellt:** Zu-/Abluftkanäle sind mitentscheidend, oft stört
  gerade der tieffrequente Anteil; Luftkanäle müssen von der Körperschallquelle entkoppelt montiert
  werden; ausreichend Platz für Kanal-Schalldämpfer einplanen.
- **Sole/Wasser- und Wasser/Wasser-Wärmepumpen:** fast immer im Gebäudeinnern aufgestellt —
  Schwerpunkt liegt klar auf Körperschall, nicht Luftschall. Alle Anlagekomponenten möglichst auf
  einer einzigen, fachgerecht elastisch gelagerten Platte montieren, Kapsel über die ganze
  Einrichtung, Kühlluftführung über Schalldämpfer, Leitungsdurchführungen schalldicht. Konkrete
  Regeln: **Gebäudefundamentplatte (Kellerboden) ist für die Lagerung wesentlich günstiger als eine
  Geschossdecke**; Nähe zu Büro-/Wohn-/Schlafräumen meiden; Leitungsnetz mit Kompensatoren von der
  Wärmepumpe und mit elastischen Aufhängungen vom Gebäude entkoppeln; bei Splitanlagen möglichst
  keine oder nur kurze Kältemittelleitungen; sekundäre Einrichtungen (Wärmetauscher, Pumpen,
  Ventilatoren, Regelventile), die nicht mit der Wärmepumpe zusammen gelagert sind, separat vom
  Gebäude entkoppeln.

## Bauherren-Transfer (eigene Einordnung)

1. **Zwei getrennte Probleme, zwei getrennte Nachweise:** Der Lärmschutznachweis nach LSV
   (Planungswert gegenüber dem Nachbarn) sagt **nichts** darüber aus, ob die Wärmepumpe im eigenen
   Schlafzimmer oder in der Nachbarwohnung im selben Haus als störendes Brummen/Dröhnen
   wahrgenommen wird — das ist ein rein bautechnisches Körperschall-Thema und wird von keiner
   Bewilligungsbehörde geprüft. Wer die Wärmepumpe im Keller unter dem eigenen Wohnzimmer oder bei
   einer MFH/STWEG-Anlage in der Nähe fremder Schlafzimmer plant, muss die Körperschallentkopplung
   **von sich aus** einfordern (Planungsleistung, kein Bewilligungspunkt).
2. **Relevante Referenzgrösse: SIA 181 «Haustechnik-Geräusche» (bereits in
   `[[sia-181-schallschutz-anforderungswerte]]` dokumentiert).** Der dortige Grenzwert für
   Dauergeräusche im Schlafzimmer (28 dB(A) bei mittlerer Empfindlichkeit, 25 dB(A) erhöht) ist das
   **Zielmass**, gegen das die hier beschriebenen Körperschall-Massnahmen (Feder-Masse-Lagerung,
   Kompensatoren, Kapselung) im Innern des Gebäudes einzuhalten sind — die EMPA-Quelle liefert das
   physikalische Handwerkszeug dazu, SIA 181 den geschuldeten Zielwert.
3. **Aufstellungsort schlägt Nachbesserung:** Wie beim Aussenlärm gilt auch hier «Quelle vor
   Massnahme» — die günstigste und billigste Lösung ist die **Wahl des Aufstellungsorts** (Fundament
   statt Geschossdecke, Abstand zu Schlafräumen), nicht die nachträgliche Sanierung einer falsch
   montierten Anlage. Eine falsch dimensionierte Feder-Lagerung (Resonanzfrequenz zu nahe an der
   Erregerfrequenz) kann das Brummen sogar **verstärken** — das ist ein Argument, die Dimensionierung
   einem Fachplaner/Akustiker zu übertragen und nicht dem Standardangebot des Heizungsinstallateurs
   blind zu vertrauen.
4. **Bei Sole/Wasser-Wärmepumpen im Keller eines MFH/STWEG** (häufigster JANS-Fall bei
   Heizungsersatz in Bestandsbauten) besonders auf die vier Punkte achten: Aufstellung auf der
   Fundamentplatte statt auf einer Zwischendecke, Kompensatoren am Gerät, elastische Rohraufhängung
   ohne starre Durchdringung des Gebäudes, keine unisolierten sekundären Pumpen/Ventile.
5. **Splitgeräte-Kältemittelleitung als Schwachstelle:** Bei Splitanlagen (Aussen-/Inneneinheit)
   ist die Kältemittelleitung wegen ihrer geringen Masse konstruktiv schwer zu dämmen — bei
   erhöhten Anforderungen (z.B. Innengerät neben einem Schlafzimmer) explizit nach Gummifeder-
   elementen **mit Zusatzmasse** fragen, ein blosses «Gummischlauch»-Standardteil genügt oft nicht.

## Offene Punkte

- **Datenstand der Quelle (2002):** Die physikalischen Grundprinzipien (Feder-Masse-Resonanz,
  Kapselwirkung) sind normativ unverändert, aber konkrete Produktbeispiele/Herstellerangaben aus
  2002 sind veraltet. Eine neuere FWS- oder BAFU-Publikation speziell zu Körperschall bei
  Wärmepumpen (falls vorhanden) sollte in einem Folgelauf gesucht und ergänzt werden.
- **Keine quantitativen Grenzwerte für Körperschall/Haustechnikgeräusche im eigenen Gebäude** in
  dieser Quelle selbst — die Zahlen kommen aus SIA 181 (bereits verlinkt), die EMPA-Quelle liefert
  nur das bautechnische «Wie», keine eigenen Grenzwerte.
- **Kosten/Marktpreise für Körperschallisolations-Massnahmen** (Sockel, Kompensatoren,
  Gummifederelemente) sind in der Quelle nicht enthalten — nicht recherchiert, da ausserhalb des
  Quellenumfangs.
- **VDI-Richtlinien (2711, 2567, 2062, 3727, 3733)**, auf die sich die Quelle stützt, wurden nicht
  selbst beschafft (deutsches Regelwerk, in CH als «anerkannte Regel der Technik» analog
  heranziehbar, aber kein Schweizer Erlass) — für vertiefte Bemessung im Einzelfall beizuziehen.

**Backlinks:** `[[waermepumpe-aussenlaerm-vollzugshilfe]]`, `[[cerclebruit-vollzugshilfe-waermepumpen-laermschutz]]`
(Aussenlärm/Nachbarschaft, komplementäres Thema), `[[sia-181-schallschutz-anforderungswerte]]`
(Zielwerte Haustechnik-Geräusche, Empfehlung Anhang G/H), `[[waermepumpe-laerm-nachmessung-kostenfolge]]`
(Kostenfolge bei Reklamation), `[[waermepumpe-aussengeraet-grenzabstand-zh-sz]]` (Grenzabstand
Aussengerät).
