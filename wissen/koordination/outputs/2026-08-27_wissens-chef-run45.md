# Wissens-Chef Run 45 — 27.08.2026

**Delta-Basis** 26.08.2026 23:11, Fenster **24,0 h**, **115 Commits**, HEAD `6f0c65633`, 58 geänderte
Dateien in `wissen/` + `rules/` + `skills/`. Uhr-Kontrolle bestanden (Stationsuhr 23:11 CEST gegen
den nativen Synology-Selfcommit 23:00:05 — die Synology-Uhr hängt an keiner Stationsuhr).

**Zuschnitt** 6 Melder (`model: sonnet`) + 4 Refuter (Hauptmodell, adversarial) = **10 Agenten**,
1'800'065 Token, 163 Werkzeugaufrufe, 6,7 Min, **0 Fehler**. Dazu ein eigener Strang im Hauptkontext
(zwei deterministische Vorfilter, die Gegenprüfung eines Refuter-Nebenfunds).

**Bilanz: 4 Befunde gemeldet, 4 bestätigt — alle vier vom Refuter abgeschwächt, keiner gekippt.
2 Nullbefunde gemessen, 1 Nebenfund widerlegt. 7 Dateien geändert, 5 rein additiv, 2 gewollte
Zeilenersetzungen.**

Bemerkenswert an dieser Bilanz ist die Refuter-Stufe: sie hat diesmal **keinen** Befund gekippt, aber
**jeden** korrigiert — einen vergrössert (eine dritte Fundstelle, die der Melder übersah), drei in
ihrer Aussenwirkung deutlich verkleinert. Ein Melder allein hätte heute vier richtige Befunde mit vier
zu grossen Konsequenzen geliefert.

---

## Der Befund mit der grössten Reichweite: ein Fehlzeiger im Kerngeschäft

`wissen/wettbewerbs-dna/wiki/muster/kennwerte-healthcare.md` weist an **drei** Stellen die KB
`wissen/grobkosten/` als führende Quelle für CHF/m³ aus — in einem Artikel, der von Titel bis Quellen
durchgehend **Healthcare** ist. Genau dort führt `grobkosten` ausdrücklich **nicht**: führend ist
`wissen/immobilienbewertung/wiki/realwert-sachwert` (826–1'420 CHF/m³ GV, Median ~1'100, Bezugsgrösse
**BKP 2 Gebäude**). Das steht seit Run 15/16 in der Führungsmatrix und seit Run 17/27 im Kopfblock von
`grobkosten` selbst.

**Der Refuter hat den Befund in beide Richtungen korrigiert.** Grösser: der Melder sah zwei
Fundstellen, es sind drei — die übersehene (Z. 365) steht ausgerechnet neben der Tabelle der
abgeleiteten CHF/m³- und CHF-je-Pflegeplatz-Werte, also dort, wo ein Leser dem Zeiger am ehesten folgt.
Kleiner: `grobkosten` ist **keine Sackgasse**. Wer dem falschen Verweis folgt, landet auf einem korrekt
beschilderten Wegweiser, der Healthcare ausschliesst und mit Bezugsgrössen-Vorbehalt weiterleitet. Die
Übertragung eines Wohnbau-m³-Werts auf ein Spital ist durch zwei ausdrückliche Verbotstexte in der
Zielquelle abgefangen. **Real ist ein Umweg mit Fehlleitungsrisiko und ein Wortlaut-Widerspruch in
einem `established`-Artikel — keine Frankenwirkung.**

**Die Natur des Fehlers bestimmte die Lösung.** Der Satz ist eine KB-weite Standardformel der
`wettbewerbs-dna`, wortgleich verwendet bei **Schulbau** (20.07.) und **Wohnungsbau** (27.07.) — und
dort **richtig**, weil `grobkosten` für Wohnbau tatsächlich führt. Nur die Healthcare-Instanz geht
fehl. Ein globales Suchen-und-Ersetzen hätte zwei richtige Aussagen zerstört, um eine falsche zu
heilen (Rule `auto-verbesserungen` 260811). Deshalb: abschnittsweise am Anker, rein additiv, mit dem
Bezugsgrössen-Vorbehalt BKP 2 im neuen Zeiger.

**Warum es dreizehn Monate stand:** drei Reparaturläufe trafen daneben. Run 16 (26.07.) korrigierte
den abgeleiteten JSON, Run 17/27 (27.07./06.08.) den `grobkosten`-Kopfblock, Run 35 (17.08.) den
Schwesterartikel `jury-argumente-healthcare.md`. **Der Quellartikel blieb jedes Mal unberührt** — git
bestätigt: letzte Änderung 25.07.2026, `1725cbdc0`. Und er kam in `QUERBEZUEGE.md` **null-mal** vor.
Ab heute ist er in der Matrix registriert.

**Aktion:** +7/−0 an drei Ankern. Matrixzeile «Healthcare-Kostenkennwerte» um `wettbewerbs-dna`
ergänzt.

---

## Ein Formulardatum, das seit anderthalb Jahren abgelaufen wäre

`planungsgrundlagen/wiki/energie-energienachweis-zh-formulare.md` Z. 95-96 führt **EN-104** als
«gültig bis 31.12.2024». `energie` hat am selben Tag (Run 165) den Ausgabenstand aller zwölf
EN-Formulare direkt an der EnDK-Plattform nachgemessen: EN-104 trägt unverändert die Sachversion
Juni 2019 und ist durch die **Sammel-Neustempelung vom 28.11.2025** auf **31.12.2026** verlängert.
Laut Führungsmatrix ist `planungsgrundlagen` für die Formularseite führend — und hatte den Punkt
nicht nachgezogen.

**Der Refuter hat drei Einschränkungen belegt, die den Befund schärfen statt entschärfen:**

1. Nur das **Datum** ist überholt. Der zweite Halbsatz «→ ab 2026 EN-104-ZH/EVEN» bleibt richtig und
   wird vom energie-Destillat selbst gestützt.
2. Die Aussenwirkung liegt **ausserhalb** des Kantons Zürich. Für ein ZH-Gesuch gilt ohnehin EVEN;
   dort entsteht keine Fehldisposition. Der im selben Abschnitt zitierte JANS-Realbeleg ist aber
   **Bezirk Einsiedeln SZ, Parz. 3301** — und dort läuft das nationale Formular bis Ende 2026 weiter.
   Die Angabe «gültig bis 31.12.2024» führt genau in dem Fall in die Irre, den der Artikel als
   Musterbeispiel führt.
3. Es ist womöglich **kein Ablesefehler**, sondern der korrekt wiedergegebene Stempel des lokal
   abgelegten Exemplars — ein veralteter **Exemplarstand**. Deshalb «VERALTET», nicht «falsch».

**Der eigentliche Mangel ist Registerhygiene.** Derselbe Artikel führt im Abschnitt «Datenstand /
offen» EN-ZH, EN-110-ZH und **EN-105** mit ihrer Ablaufkante. EN-104 fehlte dort vollständig — obwohl
es dieselbe Kante zum Jahreswechsel 2026/27 hat wie EN-105, das direkt darüber steht.

**Aktion:** +11/−0 (Nachtrag an der Quellenangabe, EN-104 als ⚠-Merkposten im Datenstand-Abschnitt
ergänzt). Die materiellen Kennwerte (10 W/m² EBF, Deckel 30 kW, 8/16 m²/kW) sind von beiden Seiten
gedeckt und blieben unberührt.

---

## Die Durchsicht, die 280 Zeilen zu früh endete

Run 63 hat am 27.08. in `normen/wiki/synthese-sia-vkf-fachskills.md` die verschmolzene
SIA-102-Fundstelle «3.3.3-3.3.5» aufgetrennt und im CHANGELOG festgehalten, dieser Artikel sei «der
zentrale Weiterverteiler» und verdiene «eine eigene Durchsicht». **Die Durchsicht endete vor Zeile
457** — dort trug die Zeile «Wo Kostenschätzung nicht Grundleistung ist» dieselbe Sammelangabe
unverändert weiter, im Abschnitt für den Skill `kostenschaetzung`.

Der Refuter hat auch hier abgeschwächt: die alte Angabe war **nicht durchweg falsch**, sondern
unpräzise verschmolzen. Ziff. 3.3.3 definiert die Grundleistungen, 3.3.4 die besonders zu
vereinbarenden — beide tragen den zweiten Halbsatz der Zeile sachlich. Fehlerhaft war die tragende
Ziffer und die Miteinbeziehung von **3.3.5**, dem **phasenunabhängigen** Sonderhonorar-Anspruch, der
gerade nicht an Phase 2 hängt.

**Aktion:** Fundstelle auf «4.21 / **3.3.2** / **3.3.4**» präzisiert, mit ⚠-Vermerk auf Tabelle 2.3
(1/1, gewollte Zeilenersetzung innerhalb der Tabellenzeile).

**Der Artikel trägt damit vier inline gesetzte Vorbehalte aus vier unabhängigen Läufen** — Z. 270
(22.08., SYN-41), Z. 89 (26.08., Run 44), Z. 176/177 (27.08., Run 63), Z. 457 (heute) — und im
Frontmatter weiterhin `status: established` / `last_updated: 2026-07-17`. **Der Statusentscheid gehört
der KB `normen`** und ist seit heute als **N63-3** in deren `QUESTIONS.md` registriert
(Synergie-Lauf 20). Dieser Lauf nimmt ihn nicht vorweg — er liefert nur den vierten Datenpunkt.

---

## Zwei Artikel über dieselbe Linie, die einander nicht kannten

`baurecht/wiki/baulinien-und-abstandslinien.md` (Recht) und
`planungsgrundlagen/wiki/kartenportale-baulinien-abstandslinien-zh.md` (Geodatum) sind die beiden
Hälften derselben Matrixzeile und nannten einander in **keiner** Richtung.

Der Refuter hat zwei Überzeichnungen korrigiert. Erstens lässt der Rechtsartikel den Leser nicht ohne
Beschaffungspfad zurück — er nennt `geo-zh.mjs`, `geo-sz.mjs`, den Agenten `baulinien-analyst` und den
Skill `machbarkeit`. **Es fehlt nicht der Weg, sondern der Zeiger auf den Artikel, der die Fallen
dieses Wegs dokumentiert** (WFS-Endpunkt, ±150-m-Fenster statt Mini-BBOX, uneinheitliches
proj-Layer-Namensschema, senkrechte Abstandsmessung). Zweitens bestehen zwei **indirekte** Brücken
über je einen Schwesterartikel. Vollständig fehlend war allein die Richtung **pg-Geodatum-Artikel →
`baurecht`**.

**Aktion:** diese eine Richtung gesetzt (+9/−1, die Ersetzung ist die erweiterte `links:`-Zeile im
Frontmatter): Querbezug-Block nach dem bewährten Muster aus
`recht-norm-abstandsvorschriften-wald-gewaesser` Z. 28-32, plus `[[baulinien-und-abstandslinien]]` im
Frontmatter. Die Gegenrichtung bleibt bewusst offen (siehe unten).

---

## Zwei Nullbefunde, gemessen statt vermutet

- **energie ↔ normen (Fenster/Uf, Merkblatt 2021, SIA 2024).** Alle vier Prüfpunkte sind durch die
  Wissens-Chef-Läufe 43 und 44 am 25./26.08. abschliessend behandelt. Die Gegenprobe fand ausserhalb
  `wissen/energie` **keine** Fundstelle mehr, die die überholten Uf-Defaults 1,8 / 2,2 / 2,8 als
  geltend führt.
- **auflagebereinigung ↔ projekt-lessons ↔ normen (`superseded`-Zeiger).** Der Anlassfall
  `vkf-brl-20-15-brandmeldeanlagen` ist seit Run 44 eingeordnet; kein weiterer Zeiger einer der beiden
  KBs führt uneingeordnet auf ein `superseded`- oder `speculative`-Destillat. Auch die
  Führungszeile (projekt-lessons führt keine generischen Amtszuständigkeiten oder Normfundstellen)
  wird eingehalten.

## Ein widerlegter Nebenfund — und dasselbe Werkzeugmuster zwei Tage in Folge

Ein Refuter meldete als ungeprüften Nebenbefund, der für Run 35 protokollierte «Abnehmer-Vermerk» in
`wettbewerbs-dna/wiki/muster/jury-argumente-healthcare.md` sei nicht auffindbar. **Er steht dort** —
im Frontmatter, Z. 21-22: «ABNEHMER: `wissen/entwurfs-referenzen/.../healthcare-neubau-zh.json`
zitiert diesen Artikel als materielle B4-Quelle». Gesucht worden war nach «grobkosten», «realwert»,
«immobilienbewertung»: Begriffe, die in einem Vermerk über die KB `entwurfs-referenzen` naturgemäss
nicht vorkommen.

Der Refuter hat den Punkt korrekt als ungeprüft gekennzeichnet und ausdrücklich **nicht** als
bestätigt ausgewiesen — die Stufe hat funktioniert. Festzuhalten bleibt das Muster: **ein leeres
Suchergebnis ist zuerst eine Aussage über das Werkzeug, nicht über die Quelle** (Rule
`auto-verbesserungen` 260730b und 260807). Das ist der zweite Beleg an zwei aufeinanderfolgenden
Tagen; gestern traf es den Vorfilter, heute ein grep.

## Werkzeug-Beobachtung am Rand

`wissen/tools/wiki-konsistenz.sh` meldet unverändert dieselben **42** Kandidaten wie gestern,
überwiegend Fehlalarme aus Journalprosa und Schema-Platzhaltern — kein neuer Befund.

`wissen/tools/datenstand-waechter.py` wurde in diesem Lauf erstmals hub-weit gefahren: **420
Kandidaten**, davon **205** der Klasse «CHF-Wert ohne Jahreszahl in einem Artikel ohne `datenstand`».
Die Verteilung zeigt eine **Kalibrierungsgrenze**: 48 dieser Treffer liegen in der KB `twin`, wo
CHF-Beträge **Zitatbelege aus echten Mails** sind (Stilmetrik: «Tausender-Apostroph 2×, CHF
100'000.–») und keine Kennwerte — dort ist ein `datenstand` sinnlos. Die vier gemeldeten
«Prüfstichtag 17.08.2026 verstrichen» sind in `energie/wiki/QUESTIONS.md` bereits annotiert und ins
Fristen-Register überführt. Der einzige potenziell substanzielle Block sind **54 Treffer in
`immobilienbewertung`**; das ist KB-intern und gehört dieser KB, nicht diesem Lauf. **Als Beobachtung
vermerkt, kein Handlungsbedarf hier.**

---

## Offene Entscheide

**Für Raphael: keine.** Dieser Lauf hat keinen Punkt erzeugt, der eine Entscheidung von aussen
braucht. Die beiden Punkte aus Run 44 (Belegkette zwischen zwei Rule-Dateien; Stadelmann-Anrede)
stehen unverändert dort.

**Für die KB `normen` (kein Entscheid Raphaels):**

1. **Statusentscheid `synthese-sia-vkf-fachskills.md`** — vier Vorbehalte aus vier Läufen bei
   `status: established`. Registriert als **N63-3**; dieser Lauf hat den vierten Vorbehalt gesetzt.

**Für die KB `wettbewerbs-dna` (kein Entscheid Raphaels):**

2. **Standardformel im Muster-Template** — der Fehlzeiger entstand durch einen unbedachten
   Formel-Übertrag aus den Schwesterartikeln. Ob das Template selbst eine Healthcare-Ausnahme bekommt,
   damit der nächste abgeleitete Artikel den Übertrag nicht wiederholt, entscheidet die KB.

**Für die KB-Führung `baurecht` / `planungsgrundlagen` (kein Entscheid Raphaels):**

3. **Gegenrichtung Baulinien** — ob der `baurecht`-Rechtsartikel einen direkten Verweis auf den
   Geodatum-Artikel braucht oder der indirekte Pfad über `abstaende-und-hoehen` genügt; und ob die
   Matrixzeile «Wald-/Gewässerabstand, Baulinien …» eine **benannte Artikelzuordnung** erhalten soll
   statt nur KB-Namen. Bewusst nicht selbst entschieden.

---

## Geschriebene Dateien

| Datei | Diff |
|---|---|
| `wissen/normen/CHANGELOG.md` | +26 / −0 |
| `wissen/planungsgrundlagen/CHANGELOG.md` | +22 / −0 |
| `wissen/wettbewerbs-dna/CHANGELOG.md` | +23 / −0 |
| `wissen/planungsgrundlagen/wiki/energie-energienachweis-zh-formulare.md` | +11 / −0 |
| `wissen/planungsgrundlagen/wiki/kartenportale-baulinien-abstandslinien-zh.md` | +9 / −1 (gewollt: erweiterte `links:`-Zeile im Frontmatter) |
| `wissen/wettbewerbs-dna/wiki/muster/kennwerte-healthcare.md` | +7 / −0 |
| `wissen/normen/wiki/synthese-sia-vkf-fachskills.md` | +1 / −1 (gewollt: präzisierte Tabellenzeile) |
| `wissen/koordination/QUERBEZUEGE.md` | +102 / −1 (gewollt: Matrixzeile Healthcare um `wettbewerbs-dna` ergänzt) |
| `wissen/wettbewerbs-dna/wiki/QUESTIONS.md` | +16 / −0 (offener KB-Punkt) |
| `wissen/planungsgrundlagen/wiki/QUESTIONS.md` | +16 / −0 (offener KB-Punkt) |
| `wissen/baurecht/wiki/QUESTIONS.md` | +19 / −0 (Gegenrichtung, Bringschuld) |
| `wissen/normen/wiki/QUESTIONS.md` | +8 / −0 (vierter Datenpunkt an N63-3) |
| `wissen/koordination/CHANGELOG.md` | +38 / −0 |
| `wissen/koordination/outputs/2026-08-27_wissens-chef-run45.md` | dieser Bericht (neu) |

**Cross-KB-Bringschuld erfüllt (Rule `wissens-bibliothekar`, Fassung 23.08.2026):** jeder offene Punkt
steht in der `QUESTIONS.md` der **Empfänger-KB**, nicht nur in diesem Bericht — die Lehre aus Run 44,
dass der Zeiger dort stehen muss, wo weitergearbeitet wird. Der vierte SIA-102-Datenpunkt hängt als
datierter Nachtrag am bestehenden Eintrag **N63-3**, nicht als neuer Eintrag daneben.

Keine Datei hat Bestand verloren; die drei Ersetzungen sind oben einzeln ausgewiesen (Rule
`auto-verbesserungen` 260811, jede per `git diff --numstat` nativ über ssh gemessen, nie über SMB).
