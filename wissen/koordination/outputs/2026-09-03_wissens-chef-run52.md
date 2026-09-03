# Wissens-Chef Lauf 52 — 03.09.2026

**Zuschnitt.** 6 Melder (`model: sonnet`) auf dem Zuwachs seit Lauf 51, 4 adversariale
Verifikatoren, dazu vier eigene Messungen im Hauptkontext. **10 Agenten.**

**Bilanz: 9 Befunde bestaetigt (davon 3 eingeschraenkt) · 2 widerlegt · 2 Nullbefunde ·
1 Befund am Pruefinstrument selbst.** 22 Dateien geaendert, alle nativ per `ssh` nachgemessen.

---

## 1. Was seit Lauf 51 gewachsen ist

`normen` Run 78 (SIA 416, elf Anhangfiguren messend abgedeckt) · `baurecht` Fallreport Witikon
W3 Hanglage · `energie` Run 176 (EIV am Pronovo-Tarifrechner gemessen) mit Cross-KB-Eingang in
`planungsgrundlagen` · `twin` Fidelity-Review · `wettbewerbs-dna` Umlaut-Sanierung ·
`kunde-bopp` Auftragsnachtrag.

Die drei erstgenannten trugen den ganzen Ertrag dieses Laufs.

---

## 2. Bestaetigt und gesetzt

### 2.1 CHF/m3 GV ist gegenueber Aussenflaechen blind (Achse A, eingeschraenkt bestaetigt)

`normen` Run 78 hat gemessen, dass die Flaeche/Volumen-Paarung der SIA 416 bei den
Aussenkategorien **abbricht**: Balkone/Terrassen (ANF) und Laubengaenge (AVF) haben kein
Volumen-Pendant, sie zaehlen zum AKV mit eigenstaendiger Ziff. 6. Ueber Balkon- und
Laubengangplatte ist der Raum in allen fuenf Volumenfiguren leer.

Der Befund **benennt seine Konsumenten namentlich** — `grobkosten-onepager`,
`machbarkeit-studio`, `grobkosten-rechner`. Gemessen trug am selben Tag **keiner** von ihnen
den Vorbehalt (0 Treffer bei breitem Suchraster: `Aussenflaeche`, `AKF`, `AKV`, `ANF`, `AVF`,
`Terrasse`, `Vordach`, `Bezugsgroesse`). Der Verifikator hat den Einwand «vielleicht rechnen
die gar keine Varianten» **widerlegt** — alle drei sind ausdruecklich Variantenvergleichs-
Werkzeuge, der Befund trifft ihren Kernanwendungsfall.

**Die Einschraenkung, die ich mitgesetzt habe:** durchgerechnet bleibt ein Balkon-Delta bei
mittleren Projekten meist innerhalb der ±25-%-Bandbreite, welche die Grobschaetzung ohnehin
ausweist. Materiell wird es bei kleinen Projekten und bei bewusst balkonlastigen Varianten —
also genau dann, wenn der Aussenflaechenanteil das Vergleichsmerkmal ist. Der gesetzte Text
sagt das ausdruecklich, damit der Vorbehalt nicht ueberdehnt wird.

**Gesetzt:** `skills/grobkosten-onepager/SKILL.md` (+11/-0), `agents/grobkosten-rechner.md`
(+7/-2, neuer Arbeitsschritt 4 samt Renummerierung), `skills/machbarkeit-studio/SKILL.md`
(+6/-0), `grobkosten/wiki/kennwerte.md` (+10/-0),
`immobilienbewertung/wiki/flaechendefinitionen-sia.md` (+11/-0),
`immobilienbewertung/wiki/realwert-sachwert.md` (+8/-0).

### 2.2 Das Destillat behauptete etwas ueber seine Konsumenten, das nicht stimmte

Der schaerfste Fund des Laufs, und er kam vom **Verifikator**, nicht vom Melder. Der
Statusabsatz von `normen/destillate/sia-416-2003.md` sagte:

> «die zitierenden Bausteine des Hub tragen seit Run 77 einen entsprechenden Vermerk»

Nachgemessen falsch. Der Statuswechsel auf `speculative` (28.08.2026) hatte **zwoelf namentlich
bekannte Konsumenten** (Vorgang N46-3); der Eingriff aus Run 46 erreichte
`flaechendefinitionen-sia.md` und zwei `energie`-Artikel — **nicht** `grobkosten/wiki/kennwerte.md`
und **nicht** `immobilienbewertung/wiki/realwert-sachwert.md`, obwohl beide GV nach SIA 416 als
harten Bezugswert zitieren.

**Lehre, mit Reichweite ueber diesen Fall hinaus:** ein Destillat darf ueber den Zustand seiner
Konsumenten keine Aussage treffen, die es nicht selbst gemessen hat. Sie altert unbemerkt und
verhindert genau die Nachpflege, die sie behauptet — wer sie liest, haelt die Arbeit fuer getan.
Gleiche Familie wie Rule `auto-verbesserungen` 260807 (Wirkung messen, nicht aus der Existenz
schliessen).

Berichtigt (+12/-0); die uebrigen der zwoelf Konsumenten sind **nicht** einzeln nachgemessen und
bleiben offen.

### 2.3 HEIV heisst «hohe», nicht «hochalpine» (Achse D, bestaetigt am Primaerbeleg)

`planungsgrundlagen` fuehrte in seiner Kategorientabelle:

> «**HEIV** (Hochalpine EIV) | — | hochalpine Anlagen, hier nicht vertieft»

HEIV ist die **hohe Einmalverguetung** fuer Volleinspeiser ohne Eigenverbrauch, 2 bis < 150 kW,
Deckel 60 % (pronovo.ch, abgerufen 03.09.2026; BFE-Faktenblatt pubdb 7238). Verwechselt worden
war sie mit einem **anderen** Regime: der Foerderung alpiner PV-Grossanlagen nach **Art. 71a EnG**
(«Solarexpress»), die zufaellig ebenfalls einen 60-%-Deckel kennt.

Der Fehler war **isoliert, nicht geerbt**: die fuehrende KB `energie` fuehrt beide Regime seit
jeher in getrennten Tabellenzeilen. **Das Merkzeichen war der Leerstrich** in der
Leistungsbereich-Spalte — die Zeile war aus dem Kuerzel heraus geraten, nie an einer Quelle
gemessen.

Im selben Zug: **«degressiv» → «marginal».** Der Mechanismus ist marginal wie ein Steuertarif;
«degressiv» beschreibt nur den Effekt auf den Durchschnittssatz und ist genau die Fehlvorstellung,
die `energie` Run 176 am Tarifrechner widerlegt hat. Die zweite Fundstelle (Refresh-Protokoll)
blieb **bewusst unangetastet** — ein datiertes Protokoll gibt seinen Stand korrekt wieder und
traegt den ⚠-Ueberholt-Vermerk bereits.

Dazu `last_updated` (stand auf `2026-07-19`) und der INDEX-Eintrag nachgezogen.

**Die Lehre zur Bringschuld:** `energie` Run 176 hat seine Cross-KB-Pflicht mustergueltig erfuellt
— die Zahlen sind **zifferngenau** deckungsgleich, die Rechenbeispiele fuer 50/150/300 kWp habe
ich nachgerechnet, kein Fehler. Ungedeckt blieb, was **daneben** stand: Legende, Frontmatter,
INDEX-Zeile. Eine erfuellte Bringschuld deckt den Sachwert, nicht den umgebenden Absatz.

### 2.4 Waldabstand: das Mass steht, die Linie laeuft (Achse C, eingeschraenkt bestaetigt)

Die Teilrevision des Ergaenzungsplans Waldabstandslinien der Stadt Zuerich (Amt fuer Staedtebau,
oeffentliche Auflage seit **03.12.2025**, OEREB-`docid` 17431) stand hub-weit **nur** im
Fallreport vom 03.09.

**Der Verifikator hat den Zielort des Melders korrigiert, und das ist der lehrreiche Teil.** Der
Melder wollte den Wachposten an die 30-m-Zeile in `baurecht` setzen. Falsch: eine Planrevision
verschiebt die **Linienlage** (Geodatum, `planungsgrundlagen`), nicht das **Abstandsmass** aus
§ 66 PBG (`baurecht`) — genau die Arbeitsteilung, die beide Artikel seit dem 27.08.2026 selbst
beschreiben. Gesetzt wurde deshalb der Hauptvermerk in `planungsgrundlagen` (als zweiter
benannter Wald-`proj`-Fall neben Wila/Boppelsen, diesmal aus laufender Projektarbeit statt als
Existenznachweis) und ein Verweis in `baurecht`.

**Materiell, nicht bloss ein Hinweis:** nach § 234 PBG kann bereits eine **beantragte**
planungsrechtliche Festlegung ein Vorhaben scheitern lassen — dieselbe Vorwirkungs-Analogie,
die der baurecht-Artikel weiter unten fuer projektierte Verkehrsbaulinien schon selbst zieht.

### 2.5 Der Weg, den es schon gab (Achse C, eingeschraenkt bestaetigt)

Der Fallreport fuehrte den geo.admin-`identify` per Punktkoordinate als **Werkzeug-Erkenntnis**.
Er ist **keine**: `identifyParcel(east, north)` steht seit langem in
`skills/planungsgrundlagen/connectors/geo-zh.mjs` (Z. 503-521), ruft genau diesen Endpunkt auf
und liefert `rings` bereits mit. Was fehlt, ist allein der **CLI-Einstieg** — es gibt kein
`--punkt E,N`, nur `--adresse` und `--egrid`. Genau der Fall «Nachbarparzelle ohne Adresse» hat
also keinen Zugang, obwohl der Weg dahinter existiert.

**Deshalb bewusst KEIN neuer Eintrag in `connectors/WEGE.md`:** das Register fuehrt Faehigkeiten,
nicht CLI-Flags, und die Zeile «Geodaten ZH und SZ → `geo-zh.mjs`» deckt die Faehigkeit ab. Ein
Flag-Eintrag waere mit der bestehenden Granularitaet inkonsistent. Stattdessen: Gegenrichtung in
`kartenportale-oereb-egrid-bezug.md` dokumentiert, Builder-Kandidat als **PG-52-1** in QUESTIONS.

Rule `wege-und-vollmachten` in Reinform: ein vorhandener Weg, den niemand findet, ist so gut wie
keiner.

### 2.6 Treppenbreite: zahlengleich, unabhaengig, unerklaert (Achse E, eingeschraenkt bestaetigt)

§ 305 Abs. 1 PBG ZH (1,2 m / 0,9 m EFH) und die bfu-Empfehlung 2.007.01:12.2020 (MFH 1,20 m /
EFH 0,90 m) treffen sich auf denselben Zahlen, ohne voneinander zu wissen.

Der Verifikator hat die naheliegende Entschaerfung geprueft und **widerlegt**: die Hypothese
«bfu schoepft aus SIA 500, SIA 500 spiegelt die Bauordnungen» traegt nicht — SIA 500 fuehrt in
**derselben** bfu-Tabellenzeile ausdruecklich «keine Angabe». Die Quellen sind unabhaengig; warum
sie zusammenfallen, bleibt offen.

Beidseitig verlinkt, aber mit drei Vorbehalten, ohne die der Verweis in die Irre gefuehrt haette:
§ 305 regelt Treppen **und Gaenge** in einer Zahl, die bfu-Zeile nur die Treppe; die
**Bezugsgroesse** ist an keiner der beiden Stellen definiert; und die bfu-Empfehlung ist
**nicht rechtsverbindlich**. Der letzte Punkt hat Praezedenz: im selben KB-Paar ist die Grenze
«Gesetz gegenueber Empfehlung» schon einmal verwischt worden und musste nachgezogen werden.

---

## 3. Widerlegt

### 3.1 Der `links:`-Vorschlag — zum dritten Mal dieselbe Falle

Ein Melder schlug vor, `wissen/normen/...`-Pfade in die `links:`-Frontmatter zweier
afw-Artikel einzutragen. **Widerlegt am Primaerbeleg:** `wissen/WISSEN-CLAUDE.md` Z. 50/60-61
definiert `links:` ausschliesslich als `[[artikel-name]]` auf einen Artikel **derselben** KB, und
`architektur-fachwissen/wiki/QUESTIONS.md` #64 haelt den Schema-Entscheid ausdruecklich offen —
«Bis zum Entscheid: nichts anfassen». Eine der beiden vorgeschlagenen Dateien ist sogar **genau
eine der drei**, die dort aufgezaehlt sind.

Derselbe Vorschlag ist damit zum dritten Mal entstanden (Run 48, jetzt Lauf 52). **Das sagt
weniger ueber die Melder als darueber, dass die gelebte Praxis nirgends beschrieben ist** — und
mein eigener Fan-out-Prompt hat die Warnung nicht mitgegeben, obwohl sie im Register steht
(Zeile «Register der Cross-KB-Kanten»). Handwerklicher Fehler auf meiner Seite.

### 3.2 § 9 ABV gegenueber § 276 Abs. 1 PBG — kein Widerspruch

Gemeldet als Doppelattribution derselben Regel («UG mehrheitlich ueber gewachsenem Boden gilt
als Geschoss»). Am **Erlasswortlaut im eigenen `raw/`-Bestand** widerlegt: zwei verschiedene
Erlasse mit verschiedenem Regelungsgegenstand — § 9 ABV (alte Fassung) betrifft die Berechnung
der **Ausnuetzungsziffer**, § 276 Abs. 1 PBG die allgemeine **Geschoss-Anrechenbarkeit**; beide
trugen historisch dasselbe materielle Kriterium. Klassisch «Verordnung konkretisiert Gesetz».
Beide Zitate korrekt, keine Korrektur.

---

## 4. Nullbefunde (mit Messung)

- **Achse F** (`wettbewerbs-dna` ↔ `immobilienbewertung`/`grobkosten`/`entwurfs-referenzen`):
  Healthcare-Zahlen ueber drei Dateien **zifferngenau** deckungsgleich (826-1'420 CHF/m3 GV,
  Median ~1'100, BKP 2); Schulbau-Doppelspur ist korrekt referenziert, keine unabhaengige
  Zweitquelle; alle Bezugsgroessen explizit genannt. Der einzige Kandidat war **identisch mit dem
  von Lauf 50 bereits geschlossenen Befund** — der Melder hat das selbst erkannt und nicht als
  neu ausgegeben. Saubere Disziplin.
- **Achse B, Sachteil** (`normen` ↔ afw): von acht Artikeln mit SIA-416/116-Bezug behauptet
  keiner eine eigene Kategorien-Zaehlung, keiner rechnet Volumen aus Flaeche hoch.

---

## 5. Befund am Pruefinstrument (eigene Messung, gehoert nicht zur Schema-Frage)

Bei der Gegenmessung zu 3.1 hat sich etwas anderes gezeigt. `wissenscheck` Pruefung B prueft
laut Skill ausschliesslich `[[artikel-name]]`-Links. Daraus folgt zweierlei:

1. **Die Folgenprognose in QUESTIONS #64 ist widerlegt.** Dort steht, der naechste Wissenscheck
   werde die KB-Pfade als tote Backlinks melden — «Falschbefunde, die ein Aufsichtslauf selbst
   erzeugt hat». Ein nackter KB-Pfad ist aber kein `[[...]]`-Link und wird **konstruktionsbedingt
   nie** geprueft. Empirisch: `grobkosten/wiki/kennwerte.md` traegt **vier** solche Pfade, der
   Health-Check vom 01.09.2026 meldete **B0**. Der Entscheid ist damit nicht durch drohende
   Falschbefunde erzwungen — er kann in Ruhe fallen.
2. **Der echte tote Backlink liegt woanders und wurde uebersehen.**
   `immobilienbewertung/wiki/flaechendefinitionen-sia.md` traegt `[[sia-416-1-2007]]` — die
   Zieldatei liegt in `normen/destillate/`, nicht im Wiki dieser KB. Das ist nach Pruefung B ein
   **echter** toter Backlink; der Health-Check derselben KB vom 01.09.2026 meldete ebenfalls B0.

Das ist ein Befund am **Instrument**, nicht am Schema, und hier nur festgehalten — keine Aktion
in diesem Lauf.

Nebenher gemessen und ebenfalls im Nachtrag zu #64 festgehalten: die Form betrifft **elf**
Dateien hub-weit (bei 818 Wiki-Artikeln), **acht davon aelter als Run 47**, in **vier**
verschiedenen Notationen. Eine davon —
`planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung.md` — loest das Problem elegant:
Wikilinks bleiben sauber, der Cross-KB-Zeiger ist ausdruecklich als solcher beschriftet, und
daneben steht ein eigener Frontmatter-Schluessel `querbezug_kb_normen:`. **Diese Variante fehlt
im Entscheid** und gehoert als dritte hinein.

---

## 6. Offen, an Raphael

1. **Schema-Entscheid `links:`** (afw QUESTIONS #64) — unveraendert offen, aber jetzt mit
   gemessener Grundlage und einer **dritten Variante**. Wie in den Laeufen 50 und 51 wurde
   **kein** `links:`-Feld angefasst.
2. **Schulbau-CHF/m3** — bleibt `grobkosten` allein zustaendig, oder wird der Kennwert aus einer
   anderen Quellengattung beschafft? Offen seit 20.07.2026 (`wettbewerbs-dna/wiki/QUESTIONS.md`
   B6), von den Laeufen 50 und 51 weitergetragen. **Eigene Nachmessung: unveraendert offen** —
   der Eintrag steht woertlich als «Entscheid Raphael noetig», und die am 31.08. dort
   geschlossene Frage betraf die Healthcare-Standardformel, nicht diese.
3. **`normen/destillate/sia-102-2003.md`** bleibt `speculative` (nachgemessen: `status:
   speculative`, `last_updated: 2026-08-07`), obwohl zwei Fundorte der Originalnorm registriert
   sind. Rueckstand aus Lauf 51, unveraendert.

---

## 7. Offen, in den KBs (kein Entscheid Raphaels noetig)

- **bfu-Aktualitaets-Check** (`normen`): gelaufen erst fuer 2.006 (Glas) und 2.007 (Treppen),
  beide am 23.08.2026, beide mit Fund einer Ausgabe 12.2020. Aus **2.003, 2.005** (Tueren/Tore,
  Bestand 12.2012), **2.027, 2.032, 2.034, 2.075** (rechtliche Aspekte, Bestand 02.2011). ⚠ Aus
  2 von 2 Treffern laesst sich **keine** Trefferwahrscheinlichkeit fuer die uebrigen sechs
  ableiten — die Stichprobe war nicht zufaellig (beide im SIA-Sweep mitgenommen), n=2, und die
  Reihen haben nachweislich verschiedene Republikationsrhythmen. Die Rotationsachse `normen` ↔
  `baurecht` (bfu) bleibt deshalb **nicht abgeschlossen**.
- **N46-3-Rest**: zehn der zwoelf Konsumenten des `sia-416-2003`-Statuswechsels sind nach wie vor
  nicht einzeln nachgemessen.
- **PG-52-1**: `--punkt E,N` fuer `geo-zh.mjs` (Builder-Kandidat, klein).

---

## 8. Messung

`git diff --numstat` **nativ per `ssh`** auf der Synology (nie `git` ueber SMB, Rule
`sync-kanonische-quelle`; Messpflicht Rule `auto-verbesserungen` 260811). 22 Dateien.
Loeschungen ausschliesslich dort, wo eine Zeile **bewusst ersetzt** wurde:
`agents/grobkosten-rechner.md` 7/2 (Renummerierung der Arbeitsschritte),
`planungsgrundlagen/wiki/INDEX.md` 1/1, `energie-betriebsenergie-pv-wirtschaftlichkeit.md` 17/4
(`last_updated`, HEIV-Zeile, «degressiv»-Zeile samt Fortsetzung). Alle uebrigen **x/0**.

**Keine Mail.** Die drei offenen Punkte sind nicht operativ im Sinne von Rule
`auto-verbesserungen` 260803 — kein Geld, keine Frist, kein Termin, keine Behoerde, kein Kunde.
