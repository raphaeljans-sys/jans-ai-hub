# Wissens-Chef Run 29 — Cross-KB-Konsistenzlauf

**Datum:** Melder-Teil begonnen 08.08.2026 23:15, abgebrochen; Wiederaufsatz und Ausführung
13.08.2026 00:50–01:30 CEST. Alle Korrekturvermerke tragen einheitlich **13.08.2026**, das Datum
der tatsächlichen Ausführung.
**Umfang:** 6 Felder · 12 gemeldete Befunde · 12 verifiziert · 18 Agenten im zweiten Anlauf
(6 Melder, 12 Refuter) · 0 Agentenfehler.
**Ergebnis:** **0 bestätigt, 11 gedämpft, 1 widerlegt.** Nach Verifikation keine Schwere «hoch»
mehr: 3 mittel, 9 tief. 13 Dateien in 5 KBs plus 2 Skills geändert.

---

## 1 · Der Lauf hat sich zweimal ereignet, und das gehört in den Bericht

Der erste Anlauf am 08.08.2026 um 23:15 brach ab: **10 von 14 Agenten** starben mit «You've hit
your weekly limit». Vier Melder waren durch, kein einziger Verifikator. Der Wiederaufsatz über
`resumeFromRunId` lief am 13.08. und lieferte die vier fertigen Melder aus dem Cache, während die
abgebrochenen neu fuhren.

Das erzeugt einen methodischen Vorbehalt, den ich benenne statt verschweige: **die Melder der
Felder A und B lasen den Bestand vom 08.08.**, und `energie` hat seither 40 Dateien geändert. Die
Staleness ist trotzdem geheilt, weil **alle zwölf Verifikatoren am aktuellen Bestand liefen** und
jede Fundstelle selbst nachlasen — in vier Fällen mit korrigierten Zeilennummern, was belegt, dass
sie wirklich am Original waren und nicht die Meldung abschrieben.

Der zweite Umstand ist ebenso berichtenswert: **zwischen Run 28 und Run 29 lagen fünf Tage ohne
Cross-KB-Lauf.** Nichts ist in dieser Zeit verfallen. Dazu unten mehr, weil Raphael während des
Laufs genau danach gefragt hat.

---

## 2 · Dimensionierung, gemessen statt geschätzt

Zuwachs seit Run 28, per `git log --name-only` im SSD-Klon:

| KB | geänderte Dateien 07.08. 23:00 → 08.08. 23:00 | zusätzlich bis 13.08. |
|---|---|---|
| normen | 47 | 3 |
| energie | 32 | 40 |
| twin | 20 | 7 |
| grobkosten | 10 | 5 |
| immobilienbewertung | 7 | — |
| firmengruendung-ch | 5 | — |
| bauprodukte | 3 | 11 |

Die sechs Felder folgten dem Zuwachs: `normen` Run 48 hatte in einer Nacht **17 Erstdestillate**
angelegt (die ABB-Reihe SIA 118/2xx, SIA 380/3, SIA 382/2, Tunnel- und Aufzugsnormen) und
SIA 112/1:2017 auf `established` gehoben; `energie` Run 125 hatte den Minergie- und GEAK-Bestand
erschlossen.

---

## 3 · Der einzige substanzielle Sachbefund: dieselbe Passage, zwei Bring-Schulden, eine kam an

`energie` hatte am **25.07.2026** in
`destillate/sommerlicher-waermeschutz-sia180-nachweisverfahren.md` belegt, dass SIA 380/2:2022
zwei Normen ablöst — SIA 382/1:2014 **und** SIA 382/2:2011 — und beide Übergaben ausdrücklich als
Bring-Schuld an die KB `normen` markiert.

- Die **erste** ist angekommen: `destillate/sia-382-1-2014.md` trägt seit dem 26.07.2026 das Feld
  `ausgabe_ueberholt` mit der Ablösung durch SIA 382/1:2025.
- Die **zweite** nie. Und am 08.08.2026 hat ein frischer Destillier-Lauf sie nicht etwa gefunden,
  sondern **neu formuliert**: das Erstdestillat `sia-382-2-2011.md` schreibt unter «Offene Punkte»,
  ob eine Revision erfolgt sei, «bleibt offene Bring-Schuld».

Das ist die Verschärfung des zweiten Struktur-Musters. **Eine verpuffte Übergabe verschwindet
nicht nur — sie kann von einem späteren Lauf als Wissenslücke wiedergeboren werden**, und sieht
dann aus wie ein sauber ausgewiesener offener Punkt statt wie ein Versäumnis. Dass beide Hälften
aus **derselben Passage derselben Datei** stammen, macht den Fall zum Lehrstück: es lag nicht an
der Übergabe, sondern daran, dass niemand prüfte, ob sie vollständig eingelöst war.

**Belegt am Herausgeber, nicht abgeschrieben.** Die Melder-Vorlage wollte den Beleg aus dem
energie-Destillat übernehmen. Das hätte die führende KB an ein fremdes Destillat gehängt statt an
die Quelle; Matrixzeile 46 verlangt «Herausgeber-Beleg und Abrufdatum». Der Hauptprozess hat
shop.sia.ch selbst abgefragt (13.08.2026): die Produktseite der SIA 380/2 (2022) führt im
Vorgänger-Block «im Archiv» ausdrücklich **SIA 2044:2019 und SIA 382/2:2011, beide «gültig bis
31.10.2022»**.

Gesetzt: das Frontmatter-Feld `gueltigkeit` (getrennt von `status`, wie Matrixzeile 46 es
vorschreibt), die aufgelöste Schlusszeile unter «Offene Punkte», eine **Ergänzung** in der
Bemerkungsspalte von `REGISTER.md` Z. 257 — der Stichtagswert «Bestand 2011 = gueltig 2013» blieb
unangetastet (viertes Struktur-Muster) — und Nachträge in QUESTIONS.

**Die neue Lücke, die dabei sichtbar wird (N29-1), wiegt schwerer als der behobene Fehler:**
SIA 380/2:2022 liegt **nicht im Bestand** und ist ungelesen. Für klimatisierte Gebäude führt die
KB damit nur noch abgelösten Stand.

---

## 4 · Was die Verifikation diesmal geleistet hat: Schaden verhindern

Die Quote kippt gegenüber Run 28. Dort wurden 4 von 20 Befunden bestätigt; hier **keiner**. Das ist
kein schwacher Lauf, sondern eine andere Art von Ertrag: **vier Melder-Vorschläge waren aktiv
schädlich** und wurden gekippt.

1. **Eine «Richtigstellung», die eine korrekte Aussage in einen Fehler verwandelt hätte.** Der
   Melder wollte im energie-Artikel zur Raumluftfeuchte das Band 30–70 % von «thermische
   Behaglichkeit» auf «Materialschutz» korrigieren. Der Verifikator hat am Primärdestillat
   nachgelesen: SIA 180 führt das Band in **zwei** Bezügen — Ziff. 2.4.1.3 (Gültigkeitsbereich der
   Figur 6, thermische Behaglichkeit) und Ziff. 6.4.1–6.4.3 (Materialschutz). Der Artikel meinte
   den richtigen. Gesetzt wurden nur die ziffern-genauen Fundstellen.
2. **Eine Anreicherung maschineller Abschriften.** Die Goldstandard-LV-Dateien sind
   `crbx_parser.py`-Ausgaben echter .crbx. Ein ABB-Hinweis darin hätte die Abschrift verfälscht,
   wäre beim nächsten Parser-Lauf überschrieben worden — und hätte einen `speculative`-Wert in ein
   Kopier-Vorbild geschrieben, aus dem neue LVs entstehen.
3. **Ein kopierter Querbezug-Block, der Führung abgetreten hätte.** Der Melder wollte den
   Run-11-Wortlaut («dort führend, nicht doppelt pflegen») ins Minergie-Destillat kopieren. Das
   hätte die Minergie-Verfahren stillschweigend an `planungsgrundlagen` übergeben und einem
   späteren Lauf die Rechtfertigung geliefert, das energie-Destillat zusammenzustreichen.
4. **Ein Eintrag in ein Register, das es nicht gibt.** Ein Vorschlag wollte nach
   `immobilienbewertung/wiki/QUESTIONS.md` schreiben. Diese KB führt laut ihrer eigenen CLAUDE.md
   bewusst **`wissensluecken.md`** statt QUESTIONS. Der Eintrag hätte genau das Phantom-Register
   erzeugt, vor dem Run 28 gewarnt hat. **Hier widersprachen sich zwei Verifikatoren** — einer
   nannte die Schema-Abweichung, der andere schlug den Ort trotzdem vor; entschieden wurde am
   Schema-Abschnitt der KB-CLAUDE.md.

Dazu zwei Vorlagenfehler, die kleiner sind, aber dasselbe Muster zeigen: der Eintrag in
`planungsgrundlagen/QUESTIONS.md` wäre liegen geblieben (die KB steht seit 30.07.2026 im
**Wartungsmodus** und arbeitet dort nichts Neues ab), und `[[Wikilinks]]` über die KB-Grenze hätten
in beiden KBs kein Ziel gehabt und wären im nächsten `wissenscheck` als tote Backlinks aufgelaufen
— die «Auflösung» wäre eine Verschlechterung gewesen.

---

## 5 · Die Nachkontrolle von Run 28 ist vollständig bestanden

Feld E lieferte **null Befunde**, und das ist ein Ergebnis, kein Leerlauf. Alle drei Korrekturen
aus Run 28 sind unverändert in Kraft, per `git show` gegen Commit `598be5e8` (07.08.2026 23:55)
geprüft — keine spätere Änderung hat etwas halbiert:

- § 321 Abs. 2 PBG steht mit **beiden** Halbsätzen an beiden Orten, wortgleich zum amtlichen
  Volltext (`baurecht/raw/260607_amtlich_zh_pbg.md` Z. 3304–3309), mit Fassungsvorbehalt.
- Der beidseitige Revers-Verweis trägt die Statusetiketten mit (baurecht `established`
  buchverifiziert ↔ planungsgrundlagen `emerging`, Quelle Boesch ZBl 1993).
- Der Skill `behoerden-vorabklaerung` führt die Vorentscheid-Terminologie mit **zwingender**
  Kantonsangabe.

Und die freie Prüfung der Rechts-Achse ergab: das wiederkehrende Muster «planungsgrundlagen
schreibt Gesetzeswortlaut materiell fort, statt aus baurecht zu ziehen» ist dort **erstmals nicht
mehr auffindbar**. Die geprüften Artikel tragen durchgängig «Kein Doppel»-Klauseln.

---

## 6 · Der lehrreichste Befund ist KB-intern — und wird als solcher geführt

Die Bauherren-FAQ **F219** («Unsere Stockwerkeigentümerschaft muss die Heizung ersetzen — was
kostet die Beratung?») behauptete bis heute: «ab welcher Objektgrösse sie kostenpflichtig wird, ist
nicht belegt». Dieselbe KB hatte diese Frage am **08.08.2026** geschlossen: die Impulsberatung
«erneuerbar heizen» ist für alle Gebäudekategorien kostenlos, der Unterschied nach Objektgrösse
liegt allein im Zeitaufwand.

Der Kern-Fehler ist damit **keine veraltete Zahl, sondern eine falsch gewordene Aussage über den
eigenen Belegstand** — und F219 ist eine direkt an Bauherren kopierbare Antwort. Das Destillat
wurde nachgeführt und die Frage als «GEKLÄRT» abgehakt; der verdichtete Layer (FAQ, INDEX,
Quellenzeile) hing fünf Tage nach.

Nachgezogen sind alle drei Stellen. Die CHF-1'500-2'000-Angabe **bleibt stehen** als datierte
Abschrift der Broschüre 10.2021, mit Vorbehalt daneben statt stillem Zahlentausch. Präzisiert
wurde auch der Beleg selbst: das Stichdatum **1.4.2022 ist ein Einzelquellen-Beleg**
(Medienmitteilung admin.ch); der Programmauftritt belegt die Kostenlosigkeit, nennt aber kein
Startdatum.

Regel in `energie/wiki/QUESTIONS.md`: **ein «GEKLÄRT» gilt erst, wenn die abhängigen Stellen
mitgezogen sind** — sonst ist die Klärung im Destillat begraben.

---

## 7 · Ausgeführte Aktionen

| Ort | Was gesetzt wurde |
|---|---|
| `normen` (Hauptbefund) | `gueltigkeit`-Feld in `sia-382-2-2011.md` mit eigenem Herausgeber-Beleg; Schlusszeile «Offene Punkte» aufgelöst; **Ergänzung** in REGISTER Z. 257; QUESTIONS: N48-7 datierter Nachtrag, neu N29-1 (SIA 380/2 nicht im Bestand), N29-2 (REGISTER Z. 256 SIA 382/1 noch «2007»), N29-3 (Kapitel-Lücke im SIA-180-Destillat) |
| `normen` ↔ `energie` (SIA 380/3) | einseitiger Querbezug in **Pfadform** auf die MuKEn-Dämmstärken, mit Vorbehalt zum `speculative`-Status; keine Rückrichtung (unbelegt) |
| `normen` ↔ `energie` (SIA 112/1) | Verweise in beide Richtungen; offener KB-Punkt «führt die aktuelle Fassung dieselbe Gliederung?» **belegt geschlossen** (21 Kriterien A/B/C statt 12/27); versprochene Bring-Schuld als gegenstandslos vermerkt |
| `energie` (SIA 180) | Querbezug-Block mit vier ziffern-genauen Fundstellen; Zahlen unverändert |
| `energie` ↔ `planungsgrundlagen` | gerichteter Querbezug im Minergie-Nachweisformular-Destillat + einzeiliger Zeiger an der EN-101b-Zeile, beide mit dem Pflicht-Vorbehalt (Formular abgelaufen 31.12.2023, ZH-Nachweis seit 01.01.2026 über EVEN) |
| `energie` (GEAK) | Verweis auf `oelheizung-gasheizung-ersatzpflicht-zh-sz` inline und im `links:`-Frontmatter |
| `energie` (F219-Kette) | FAQ F219 korrigiert, Kurz-Absatz mit Vorbehalt, Quellenzeile gestempelt, `destillate/INDEX.md` Z. 11 zweiter Aktualitätsvermerk, QUESTIONS E-125-4 mit Prozessregel |
| `immobilienbewertung` | Werkzeug-Vorbehalt «hva»-Kopffelder am Ort der Verwendung (CS-Deliverable) |
| Skill `ausschreibung` | neuer Abschnitt «Verbindliche Norm-Referenz» mit der Trennung Warnkarte ↔ Zitierquelle für die ABB-Reihe |
| Skill `stockwerkeigentum` | Rückweg zum Skill `energie` bei Heizungsersatz (Router, nicht Destillat) |
| Skill `wissenscheck` (08.08.) | **Schreib-Riegel** in Phase 2 — die Ursache des Run-28-Datenverlusts |
| `skills/twin/tools/build_dna.py` | Docstring nannte das falsche Schreibziel (`jans-dna.md` statt `jans-dna-facetten.md`) |
| `koordination` | 7 Paar-Einträge, 2 neue Matrix-Zeilen, CHANGELOG |

**Bewusst nicht ausgeführt:** keine Anreicherung der Goldstandard-LV-Abschriften; keine
Normtext-Ergänzung im SIA-180-Destillat (N29-3 — Normtext ergänzt der Lauf, der das Original vor
sich hat, nicht der Cross-KB-Lauf); kein `ersetzt_durch` an der eco-bau-Checkliste (abgelöst wurde
die SIA-Empfehlung, nicht die städtische Checkliste); kein Namenstausch «UBSFS» → «Standort INFO»
(siehe unten); keine neue Matrix-Zeile für `stockwerkeigentum` (Skill ohne eigene KB, keine
strittige Führung); nichts Destruktives.

---

## 8 · Offene Entscheide für Raphael

1. **Der lokale OneDrive-Spiegel heisst weiterhin «IMMO - 02 UBSFS».** SharePoint wurde am
   07.08.2026 auf «IMMO - 02 Standort INFO» umbenannt; der lokale Spiegel am 13.08. gemessen
   **nicht**. Die Registry-Verweise zeigen auf den lokalen Basispfad und lösen deshalb heute
   korrekt auf — ein Namenstausch würde sie **kaputt machen**. Zuerst zu entscheiden: wird der
   lokale Spiegel nachgezogen? Erst danach lohnt ein einmaliger, **vollständiger** Sweep über alle
   lebenden Stellen. ⚠ Der CHANGELOG-Eintrag vom 08.08.2026 in `grobkosten` und
   `immobilienbewertung`, der den lokalen Sync als nachgezogen meldet, ist messbar unzutreffend.
2. **Beschaffung SIA 380/2:2022** (N29-1) — solange sie fehlt, führt die KB für klimatisierte
   Gebäude nur abgelösten Bestand.
3. **Ein Satz zur ABB-Reihe in `goldstandard-lv/README.md`?** Abzuwägen gegen Kernprinzip 1
   (schlanker Stil, keine aufgeblähten SIA-118-Vorbemerkungen). Kein Automatismus.
4. **Verbleib von `wissen/normen/destillate/links.md`** (unverändert aus Run 28, Löschung braucht
   Einzelfreigabe).
5. **Ticket T-Regelgeschoss**, **D10** (Bereinigung des Healthcare-Originalblatts),
   **Spektrumskosten-Band**, **`MAX_AUTO_BYTES`** — alle unverändert offen aus Run 25–28.
6. **Bring-Schulden aus Run 27/28** unverändert: VKF 2001-15:2022 und BRL 22-15:2017 in den
   SharePoint-Bestand, Zwischenausgabe 2001-15:2017 destillieren, N27-1, N27-2.

---

## 9 · Zur Taktfrage: lohnt sich ein täglicher Lauf?

Raphael hat die Frage während dieses Laufs gestellt. Die ehrliche Antwort aus den Zahlen von Run 25
bis 29:

**Was für täglich spricht — genau ein Fall, aber ein starker.** Am 07.08. fand Run 28 einen
Datenverlust von 477 Zeilen, der **dreieinhalb Stunden alt** war. Gefunden wurde er nur, weil in
derselben Nacht ein Cross-KB-Lauf über genau diese Dateien ging. Frischer Schaden hat eine kurze
Halbwertszeit der Auffindbarkeit: je mehr Commits darüberwachsen, desto teurer die Rücknahme.

**Was dagegen spricht — alles andere.** Dieser Lauf kam nach **fünf Tagen Pause** und fand
**nichts, was durch die Pause entstanden oder schlimmer geworden wäre**. Der grösste Befund
(SIA 382/2) lag seit dem 25.07. und wäre von jedem beliebigen Lauf gefunden worden. Nach
Verifikation blieb **kein einziger Befund der Stufe «hoch»**. Und der Preis ist erheblich: beide
Anläufe zusammen rund **3,9 Mio Subagenten-Token**, der erste ist am Wochenkontingent gescheitert
— also an demselben Kontingent, aus dem Raphaels eigene Arbeit lebt.

**Der entscheidende Punkt:** Der eine Fall, der für täglich sprach, ist inzwischen **strukturell
gelöst**. Der Schreib-Riegel im `wissenscheck` (08.08.) verhindert die Ursache, statt auf einen
nächtlichen Zufallsfund zu hoffen. Ein Wächter am Erzeuger ist billiger und zuverlässiger als eine
tägliche Suchpatrouille.

**Empfehlung** (Entscheid bleibt bei Raphael): **nicht täglich, sondern zuwachsgesteuert.** Den
Lauf auslösen, wenn die KBs seit dem letzten Mal eine Schwelle überschritten haben — nach der
Messung dieses Laufs sinnvoll bei **rund 40 geänderten Dateien in `wissen/`** —, mit einem
garantierten Boden von einmal pro Woche, damit keine Achse dauerhaft ungeprüft bleibt. Das trifft
genau die Nächte, in denen `normen` 17 Destillate anlegt oder `energie` einen Ordner abräumt, und
lässt die ruhigen Tage aus. Zusätzlich sinnvoll: die Verifikationsstufe ist der teuerste und
zugleich wertvollste Teil (sie hat hier vier schädliche Eingriffe verhindert) — bei knappem
Kontingent eher die Zahl der Felder senken als die Refuter-Runden.

---

## 10 · Meldung

**Keine eigene Mail** (Rule 260803). Für das Tagesbriefing des `hub-chef`: **kein terminkritischer
Punkt.** Zwei operative Hinweise, beide ohne Frist — die **falsche Nachzugs-Meldung im
CHANGELOG vom 08.08.** (Punkt 1 oben, der lokale Spiegel ist nicht umbenannt) und die
**Beschaffungslücke SIA 380/2:2022**. Der Rest ist Hub-intern. Der Datenverlust aus Run 28 ist
zurückgenommen **und die Ursache seit dem 08.08. abgesichert**; ein Wiederholungsfall ist
nachgemessen nicht eingetreten.
