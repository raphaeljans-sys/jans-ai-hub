---
titel: Wissens-Chef Run 18 — Cross-KB-Lauf auf das Delta seit Run 17
datum: 2026-07-27
lauf: 18
verfahren: Workflow-Fan-out, 5 Lese-Agenten + 10 adversariale Verifikatoren
ergebnis: 17 Meldungen, 10 verifiziert, 7 BESTAETIGT / 3 WIDERLEGT
---

# Wissens-Chef Run 18 (27.07.2026, 23:10)

## Zuschnitt

Run 17 endete um 22:19 — dieser Lauf hat also ein **Delta von knapp einer Stunde**. Es war
trotzdem ergiebig, weil in diesem Fenster genau das Material entstand, das Run 17 angestossen
hatte: die **Nachtschicht zog den EG-GSchG-Sweep nach** (12/15 Fundorte) und **energie Run 117**
legte fünf neue Destillate plus drei Wiki-Artikel an. Der Chef prüft damit unmittelbar das, was
die Nacht-Loops eine Stunde zuvor produziert haben — inklusive der Frage, ob die eigene
Sweep-Anordnung sauber ausgeführt wurde.

Fünf Felder: (A) Nachkontrolle EG-GSchG-Sweep · (B) EnerGIS ↔ planungsgrundlagen/baurecht ·
(C) Therapiebad ↔ normen/immobilienbewertung/grobkosten · (D) Rückkühler/Solarpflicht ↔
normen/planungsgrundlagen + energie-intern · (E) SZ-Abwärme + Submetering ↔ baurecht/
planungsgrundlagen + Vorläufer aus Run 116.

**Aufwand:** 15 Agenten, 2.19 Mio. Subagent-Token, 260 Tool-Calls, 13:21 Min. Lese-Agenten ohne
Schreibrecht; alle Edits vom Chef. Kollisionsschutz vorab geprüft (kein zweiter wissens-chef).

---

## Die sieben bestätigten Befunde

### 1. [materiell] Der Sweep hat sich selbst einen neuen Fehler eingebaut — falscher WsG-Abschnitt im Frontmatter

`baurecht/buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md:7` ordnete die
Abwasser-/Kanalisationsparagraphen des aufgehobenen EG GSchG dem WsG-Abschnitt **§§ 45-48** zu —
das ist der **planerische Gewässerschutz**. Der **Fliesstext derselben Datei** (Z. 17 und Z. 55)
sagt das Richtige: Nachfolge ist **Abschnitt C, §§ 49 ff. (Siedlungsentwässerung)**; Band 1
(`03-erschliessung-landsicherung-teil1.md:97`) ebenso.

**Am amtlichen Volltext selbst nachgeprüft** (Chef-Regel aus Run 17; PDF
`724.1_12.12.24_133.pdf`, 36 Seiten, per `pdftotext -layout` gelesen): «B. Planerischer
Gewässerschutz» umfasst §§ 45-48, «**C. Siedlungsentwässerung**» beginnt bei **§ 49**. Der
Fliesstext hat recht, das Frontmatter war falsch. Zusätzlich: «§ 13 ff.» ist selbst ein
Übertragungsfehler — § 13 EG GSchG regelt die Sicherheitsleistung, der Abwasser-Abschnitt beginnt
bei **§ 14**.

**Warum das zählt:** Das Frontmatter-Array ist die maschinell durchsuchbare Paragraphenliste des
Destillats. Ein Sweep, der eine Falschzitierung durch eine andere ersetzt, sieht in jeder
grep-basierten Erfolgskontrolle wie Erfolg aus. → Korrigiert auf «§§ 14 ff. … Nachfolge §§ 49 ff.
WsG, Abschnitt C Siedlungsentwässerung».

### 2. [materiell] Der Sweep hat den dritten Kanal nicht erreicht — planungsgrundlagen zitiert weiter aufgehobenes Recht

`planungsgrundlagen/wiki/kartenportale-oereb-kataster-system-zh.md` führte in der ÖREB-Tabelle die
Themen **130 Gewässerschutzbereiche**, **131 Grundwasserschutzzonen** und **132
Grundwasserschutzareale** auf **LS 711.1** (EG GSchG) — ohne jeden Aufhebungsvermerk, `status:
established`. In **derselben Tabelle** ist Thema 190 vorbildlich geflaggt (durchgestrichene
Altnorm → Nachfolge-§, plus Warnkasten) — was die ungeflaggten Zeilen als geprüft-aktuell
erscheinen lässt. Dritter Fundort in derselben KB:
`recht-norm-regenwasser-gewaesserraum-zh.md:108`, wo WWG und HWSchV korrekt als aufgehoben
markiert sind und das EG GSchG im selben Satz nicht.

Dieser Kanal war in `baurecht/training/PROGRAMM.md:154` als «Drittkanal (andere KB, nur melden)»
angemeldet — und blieb offen. **Der ÖREB-Artikel ist die Nachschlagequelle jeder
PL-01-Grundlagenauskunft**; von dort wandert die Rechtsgrundlage in Baugesuche und
Vorabklärungen — gegenüber dem AWEL, das den Nachfolgeerlass längst anwendet.

**Nachfolge am Volltext verifiziert** (nicht geraten, und damit schärfer als der Lese-Agent
vorschlug, der Thema 132 offenlassen wollte): **§ 45 Abs. 1 WsG** setzt Gewässerschutzbereiche
**und** Grundwasserschutzareale fest (Themen 130 **und** 132), **§ 46 WsG** die
Grundwasserschutzzonen (131). Nebenfund mit eigenem Wert: **§ 48 Abs. 2 WsG** verankert den
**Wärmenutzungsatlas** gesetzlich — direkt verwertet in Befund 4.
→ Beide Dateien korrigiert, Warnkasten um das EG GSchG erweitert.

### 3. [materiell] 70-%-Kurzschluss: eine Vollzugsvorgabe wird zur Voraussetzung der Anschlussverfügung

`energie/destillate/energis-kartenwerk-stadt-zuerich.md:172-175` schrieb, die 70-%-Schwelle der
städtischen WVV sei «dieselbe 70-%-Schwelle, die materiell auch die Anschlussverfügung nach
§ 295 Abs. 2 PBG rechtfertigt». **§ 295 Abs. 2 PBG kennt keine Prozentschwelle.** Amtlicher
Wortlaut (`baurecht/raw/260607_amtlich_zh_pbg.md:3035-3040`): zwei **kumulative** Voraussetzungen —
Nutzung lokaler Abwärme/erneuerbarer Energien **und** Angebot «zu technisch und wirtschaftlich
gleichwertigen Bedingungen wie aus konventionellen Anlagen».

Im Spiel sind drei verschiedene 70-%-Regeln mit verschiedenen Bezugsgrössen: Art. 8 lit. a WVV
(städtisch, Energieträgermix), § 47 g BBV I (kantonal, Erfüllungsfiktion für § 11 EnerG) und das
AfB-Merkblatt (Vollzug). Der **Gleichwertigkeits-Vorbehalt** — praktisch der Hebel jeder
Einsprache gegen eine Anschlussverfügung — fehlte im Destillat vollständig.

Besonders lehrreich: das Schwesterdestillat `fernwaerme-anschlusspflicht-zh.md` **warnt auf Z. 42-43
selbst** davor («Gesetzestext nennt keine feste 70-%-Schwelle»), zieht aber auf Z. 61-63 denselben
Kurzschluss. Eine KB kann die richtige Einsicht besitzen und sie zwanzig Zeilen später verlieren.
→ Beide Stellen korrigiert.

### 4. [struktur, bestätigt] Kartenportal-Wissen komplett in der falschen KB — planungsgrundlagen hat null Eintrag

grep über alle 51 Wiki-Artikel von `planungsgrundlagen`: «EnerGIS» **0**, «WVV»/
«Wärmeversorgungsverordnung» **0**, «Wärmenutzungsatlas» **0** (letzteres kommt im ganzen Hub nur
in energie-Dateien vor). Die Pflicht-Checkliste «neue Parzelle» kennt keinen Energiekarten-Schritt.
Zugleich führt das energie-Destillat vollständiges Beschaffungswissen (URL, HTTP-200-Test ohne
Login, Angular-SPA-Grenze, zwei tote Downloadpfade) — nach Matrix Zuständigkeit von
`planungsgrundlagen`.
→ Zwei Zeilen in der Portalübersicht gesetzt (EnerGIS, Wärmenutzungsatlas), die zweite mit der in
Befund 2 gefundenen gesetzlichen Verankerung **§ 48 Abs. 2 WsG** — der Cross-KB-Lauf hat sich hier
selbst zugearbeitet. Die materielle Rechtsaussage bleibt bei `energie`.

*Vom Verifikator korrigiert:* der Lese-Agent vermutete konkurrierende Zugriffswege
`gis.zh.ch` vs. `maps.zh.ch` — `gis.zh.ch` ist ein CNAME auf `maps.zh.ch`, kein Widerspruch. Nicht
übernommen.

### 5. [materiell] SIA 385/1 — die KB hatte die Antwort zwei Tage vor der Frage

Das Therapiebad-Destillat erklärte die «Bezeichnungskollision SIA 385/1» für ungeklärt und
verlangte eine Prüfung vor jedem Zitat. `normen/wiki/REGISTER.md` Abschn. B hatte den Fall in
**Run 22 (25.07.)** abschliessend aufgelöst: reine **Nummern-Wiederverwendung** — die
Badewasser-Norm 385/1:2000 ging **2011 in SIA 385/9** auf, die Nummer 385/1 wurde 2011 für
«Anlagen für Trinkwarmwasser in Gebäuden» neu vergeben.
→ Abschnitt 7 durch die belegte Kette ersetzt, offener Punkt 4 geschlossen.

**Der Verifikator hat den Befund verschärft**, statt ihn zu bestätigen: die geltende Ausgabe ist
nicht 385/9:2011, sondern laut SIA-Shop **385/9:2023**. Ursache ist eine strukturelle Grenze der
führenden KB — das REGISTER speist sich aus `ersetzte_normen.pdf` mit **Stand 25.02.2013** und
bildet spätere Revisionen nicht ab. Hätte ich die vorgeschlagene Auflösung wörtlich übernommen,
hätte ich einen neuen Fassungsfehler in `energie` geschrieben. → Als Fassungs-Prüfauftrag in
`normen/wiki/QUESTIONS.md` angemeldet, im Destillat mit ausdrücklichem Fassungsvorbehalt zitiert.

### 6. [materiell] Falscher Kantonskatalog bei der Solarpflicht — zum zweiten Mal dieselbe Fehlerklasse

`rueckkuehler-flaechenkonkurrenz-pv-laermschutz.md:121-126` schrieb «i.d.R. 60 % der geeigneten
Bruttodachfläche» pauschal den Kantonen BE, BL und AG zu. Die eigene KB weiss es besser:
**AG** bleibt beim Bundesminimum **20 % aGF**, **BE** kennt gar keine Flächenschwelle (10 % aGF und
≥ 60 % geeignete Dachfläche) und ist damit gerade **kein** Bundesminimum-Kanton. Übereinstimmend
ist nur die Abzugs-Systematik, nicht die Zahl.

**Der Verifikator fand an der Primärquelle einen gewichtigeren zweiten Fehler in derselben
Passage:** Z. 152-153 behauptete, «alle drei Vollzugshilfen» kennten eine Ausnahmebewilligung bei
technischer Unmöglichkeit. Das AG-Merkblatt schliesst genau das ausdrücklich aus («wird auf eine
Befreiung aufgrund fehlender technischer Möglichkeit **bewusst nicht** eingegangen»). Für ein
AG-Projekt ist «der Rückkühler belegt die Fläche» damit **kein gangbarer Weg** — und das war die
Kernantwort, wegen der das Destillat überhaupt geschrieben wurde.
→ Beide Stellen korrigiert, je Kanton aufgeschlüsselt.

### 7. [materiell] Rückfall hinter die eigene Chef-Korrektur vom Vortag

`energiemonitoring-submetering-grossverbraucher-zh-sz.md:210-215` schrieb, ein Betrieb in der
Zwischenzone 200'000-500'000 kWh könne sich **nicht** von der Betriebsoptimierung befreien lassen.
**§ 48c Abs. 1 lit. c BBV I** (amtlich, `baurecht/raw/260607_amtlich_zh_bbv1.md:937`) befreit
Betriebsstätten, «für die eine freiwillige Zielvereinbarung abgeschlossen wurde (KMU-Modell)» —
**schwellenunabhängig**. Die Zwischenzone ist der Hauptanwendungsfall, nicht der Ausschluss.

Dieselbe Korrektur hat der Chef **in Run 16 am Vortag** in `planungsgrundlagen` gesetzt und dort
ausdrücklich als «[Korrektur Wissens-Chef Run 16]» markiert; das energie-eigene Schwesterdestillat
`muken-2025-modul-7-…` hat es ebenfalls richtig. Nur die neue Datei fiel zurück. **Eine Korrektur
in KB A immunisiert KB B nicht** — sie muss dort ankommen, wo die nächste Datei geschrieben wird.
→ Drei Stellen korrigiert (Tabelle, Befreiungsliste, «Praktische Konsequenz»), mit den zwei
Vorbehalten des Verifikators: die Befreiung tritt nicht automatisch ein (abgeschlossener Vertrag
nötig), und die Aufnahmekriterien des KMU-Modells sind im Hub nicht belegt.

---

## Die drei widerlegten Befunde — und was sie trotzdem eingebracht haben

**W1 — «Amt für Gewässer SZ existiert nicht».** Der Lese-Agent stützte sich auf einen
hub-internen grep-Negativbefund. Der Verifikator ging nach draussen: das **AfG** existiert
(Umweltdepartement SZ, Bahnhofstrasse 9). SZ **teilt** die Gewässerschutzfachstelle auf — AfG für
Abwasser (§ 17 EGzGSchG), AfU für Grundwasserschutz (§ 29 EGzGSchG). Beide KB-Angaben sind
richtig, sachbereichsabhängig. **Hätte ich den Befund umgesetzt, hätte ich die Falschangabe erst
erzeugt**, die er verhindern wollte: eine SZ-Abwasserwärme-Vorabklärung wäre ans unzuständige AfU
gegangen. Der Unterschied zwischen «steht nicht in unserer KB» und «gibt es nicht» ist genau die
Lücke, die die adversariale Stufe schliessen soll. → Die Unterscheidung ist jetzt im
Überholt-Vermerk des Vorläufers festgehalten.

**W2 — «BL-Solarpflicht widersprüchlich».** Verwechselte Regelungsstufen: die Bundespflicht
Art. 45a EnG gilt in BL; gekippt wurde die kantonale Ausdehnung **unterhalb** der Schwelle, und
das Volks-Nein vom 8.3.2026 betraf eine **Verschärfung** (Nachrüstpflicht Bestand). Kein
Widerspruch — **aber** der Verifikator bestätigte einen echten Restbefund: BL steht in Wiki und
Quell-Destillat **doppelt**, mit dem überholten Run-56/57-Stand daneben. → Beide überholten Zeilen
als solche markiert.

**W3 — «Therapiebad hat keine SIA-380/1-Kategorie».** Der Befund führte die Grenzwerte der
Gebäudekategorie XII Hallenbad gegen eine Aussage, die sich auf die **Raumnutzungs**-Ebene
(SIA 2024) bezog. Nicht derselbe Gegenstand. Der Restkern (Kategorie XII nennt «Heilbäder»
ausdrücklich) bleibt als kleiner Präzisierungsauftrag beim energie-Loop.

**3 von 10 kassiert (Run 17: 2 von 10, Run 15: 5 von 14).** Die Quote ist gesund: eine
Verifikationsstufe, die nichts mehr kippt, prüft nicht mehr.

---

## Ausgeführte Aktionen (13 Stellen in 12 Dateien)

| Datei | Aktion |
|---|---|
| `baurecht/buecher/band-2/12-baureife-teil3-versorgung-entsorgung.md` | Frontmatter: §§ 14 ff./16 → §§ 49 ff. WsG (Abschnitt C) statt §§ 45-48 |
| `baurecht/training/PROGRAMM.md` | Selbstwiderspruch bereinigt (§§ 35/36 → §§ 45/46 gestrichen), §§ 49 ff. und §§ 61/62 am Volltext bestätigt eingetragen |
| `baurecht/wiki/QUESTIONS.md` | **P1** WsG-Volltext fehlt im Hub — inkl. funktionierender Bezugs-URL und Mindestumfang; **P2** §§ 4-7 EnerG nachziehen |
| `planungsgrundlagen/wiki/kartenportale-oereb-kataster-system-zh.md` | ÖREB-Themen 130/131/132 auf §§ 45/46 WsG umgestellt, Warnkasten um EG GSchG erweitert |
| `planungsgrundlagen/wiki/recht-norm-regenwasser-gewaesserraum-zh.md` | EG-GSchG-Aufhebungsvermerk gesetzt (dritter Fundort) |
| `planungsgrundlagen/wiki/kartenportale-geoportale-uebersicht.md` | EnerGIS + Wärmenutzungsatlas (§ 48 Abs. 2 WsG) aufgenommen |
| `planungsgrundlagen/wiki/energie-pv-eignung-typenwahl.md` | Flächenkonkurrenz Haustechnik ↔ PV-Pflichtfläche + Bezugsgrössen-Warnung |
| `energie/destillate/energis-kartenwerk-stadt-zuerich.md` | 70-%-Kurzschluss aufgelöst, Gleichwertigkeits-Vorbehalt eingesetzt |
| `energie/destillate/fernwaerme-anschlusspflicht-zh.md` | derselbe Kurzschluss an der zweiten Stelle |
| `energie/destillate/energiemonitoring-submetering-grossverbraucher-zh-sz.md` | § 48c lit. c als eigener Befreiungstatbestand, drei Stellen |
| `energie/destillate/rueckkuehler-flaechenkonkurrenz-pv-laermschutz.md` | Solarpflicht je Kanton aufgeschlüsselt; AG-Ausnahmeregel richtiggestellt |
| `energie/destillate/therapiebad-hallenbad-energie-pflegeheim.md` | SIA 385/9 aufgelöst; Alters- und Bezugsgrössen-Vorbehalt an die Zahlen |
| `energie/destillate/abwaerme-bereitstellungspflicht-sz.md` | «tragbar» statt «zumutbar», fehlender Auslösetatbestand § 30a Abs. 2 ergänzt |
| `energie/destillate/abwasserwaermenutzung-kanalisation-zh-sz.md` | Überholt-Vermerk + Backlink auf die Vertiefung, AfG/AfU-Unterscheidung |
| `energie/destillate/waermeplanung-kommunal-zh-sz.md` | offener WVV-Punkt als erledigt geschlossen, Backlink |
| `energie/destillate/solarpflicht-national-mantelerlass-kantone.md` + `energie/wiki/solarpflicht-schweiz-kantone.md` | BL-Doppelzeile entwertet |
| `energie/destillate/INDEX.md` | Alters-Vorbehalt in die propagierte Kennwert-Zeile gezogen |
| `normen/wiki/QUESTIONS.md` | SIA 385/9-Fassung (P1), EN 13487 + EN 12102-1 fehlen ganz (P2) |

Nicht ausgeführt und bewusst gemeldet: der **WsG-Volltext** und die **§§ 4-7 EnerG** — das ist
Inventaraufbau und gehört dem baurecht-Loop, nicht der Meta-Aufsicht.

---

## Musterbefunde für den Synergie-Orchestrator

1. **Ein Sweep prüft sich nicht selbst.** Der EG-GSchG-Nachzug hat in einer Nacht 12 von 15
   Fundorten geschlossen — und dabei (a) im Frontmatter eine neue Falschzuordnung erzeugt, (b) den
   selbst angemeldeten Drittkanal in `planungsgrundlagen` nicht angefasst, (c) sein eigenes
   Register in einen Selbstwiderspruch gebracht. Alle drei Fehlerarten sind für eine
   grep-Erfolgskontrolle unsichtbar, weil der gesuchte String verschwunden ist. **Regel: nach
   einem Erlass-Sweep prüft eine zweite Instanz die ERSETZUNG, nicht das Verschwinden.**
2. **«Steht nicht in unserer KB» ≠ «gibt es nicht».** W1 wäre ohne den Gang zur externen Quelle zu
   einer erfundenen Korrektur geworden. Ein grep-Negativbefund belegt eine Lücke der eigenen KB —
   nie einen Sachverhalt in der Welt.
3. **Korrekturen sind nicht ansteckend (7. Fundort des Musters).** Die Run-16-Korrektur zu § 48c
   lit. c stand in `planungsgrundlagen`, war korrekt markiert — und die 24 Stunden später
   geschriebene energie-Datei fiel dahinter zurück. Eine Korrektur muss dort landen, wo die
   nächste Datei entsteht (Destillat/Register der schreibenden KB), nicht nur dort, wo der Fehler
   auffiel.
4. **Fassungspflege bleibt der blinde Fleck (Run-8-Regel bestätigt, neue Variante).** Das
   Normen-REGISTER ist als Konkordanz gut und als Fassungsnachweis strukturell begrenzt: sein
   Bestand hat Stand **2013**. Jede nach 2013 revidierte Norm kann dort mit veralteter Ausgabe
   stehen, ohne dass irgendetwas auffällt. Der Einzelfall 385/9 ist geflaggt; die Klasse ist offen.

---

## Für Raphael — Entscheide

### E1 (dringend, wirkt ab heute Nacht): zwei Taktgeber je Loop auf dem Mac Mini

Nicht mein Befund, aber ich habe ihn unabhängig verifiziert und er passt zu keinem KB-Register:
Der energie-Loop hat heute um 22:37 eine **bereits laufende Zweitinstanz** angetroffen und ist
korrekt zurückgetreten (`energie/outputs/2026-07-27_energie-nebenlauf-kollision-zweiter-taktgeber.md`).
Ursache: für `energie` und `plg` existieren auf dem Mac Mini **je zwei unabhängige Taktgeber** —
der App Scheduled Task **und** ein launchd-Agent (`ch.jans.training-energie`,
`ch.jans.training-plg`), sieben Minuten versetzt. **Eigene Prüfung per ssh:** beide Agenten sind
geladen, die plists liegen im Ordner (`ch.jans.training-normen.plist` unscharf daneben). Genau der
von Rule 260727 verbotene Zustand, und der launchd-Weg ist eine Übergangslösung, deren Bedingung
(«bis die App-Tasks interaktiv umgetaktet sind») erfüllt ist. Aufgefallen ist es bisher nicht, weil
die Dispatches am leeren Kontingent scheiterten — seit dem Reset am 27.07. 12:00 greifen sie wieder.

Zu entscheiden ist nur die Richtung: **App-Task behalten und launchd-Agenten entfernen**
(Empfehlung des Loops, weil der App-Task die gepflegte SKILL.md mit Modellpolitik trägt) oder
umgekehrt. Beides gleichzeitig laufen zu lassen kostet jede Nacht einen zusätzlichen
$25-Dispatch. Der Befehlssatz steht im verlinkten Report; die Ausführung ist eine
Konfigurationsänderung und wartet auf Deine Freigabe.

### E2 (unverändert offen aus Run 17): zwei Rule-Änderungen an `anrede-kontakte.md`

1. Generelle Klausel «Anrede-Stufe folgt dem Gewicht des Anliegens» (dreifach belegt, heilt alle
   Zeilen zugleich).
2. **Felix Stählin** — Karl Wächter AG oder Stählin AG Sanitär? Zwei Firmen, ein Vorname; ein
   Identifikator, der in Anschreiben und Werkverträge wandert.
