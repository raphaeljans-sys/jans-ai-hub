# Normen-Nacht Run 64 — 28.08.2026, ab 01:28 CEST (MacBook Pro)

**Vertiefungsstufe (b), zwei Arbeitsgegenstände:**
1. Erste Abdeckungsrunde auf `destillate/sia-416-2003.md` — Rang 1 der Prüfstand-Kandidatenliste.
2. Die in Run 63 offen gebliebene **Kalibrierung der Stichprobenstufe**.

---

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Arbeitsdatum | `date` → 2026-08-28 01:28 CEST |
| NAS gemountet | ja |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| OneDrive-Zugriff auf PL-02 | **funktioniert** — Test-PDF gelesen, kein TCC-Fallback nötig |
| Zieldatei-Frische | letzter Commit 23.08.2026, NAS-mtime 23.08. — kein Drift |
| Run-Nummer | nach Sicht der jüngsten `outputs/`-Datei (Run 63) vergeben |

**Stations-Split eingehalten:** nur SIA. Keine DIN-/VSS-/RAL-Position berührt oder abgehakt.

## 2. Wahl des Arbeitsgegenstands

PL-02 und PL-03 tragen weiterhin **0 offene `[ ]`**-Grunddestillate im SIA/VKF-Scope; die 24
verbleibenden offenen Inventarzeilen sind Beschaffungs-Bring-Schulden (SIA-Shop, VSS-Kundendienst,
SNV) oder Mac-Mini-Scope. Also Vertiefungsstufe.

Run 63 hatte den nächsten Kandidaten benannt: `sia-416-2003.md`, Rang 1 der Liste
`training/n62-3-pruefstand-kandidaten.md`. Begründung dort: **12 entscheidungstragende
Konsumenten**, darunter vier Agenten, die Flächen und Volumen rechnen — jede Machbarkeitsstudie,
jede Grobkostenschätzung, jeder Flächennachweis zieht hier. Verschärfend das Missverhältnis:
die **Teilnorm** `sia-416-1-2007.md` trägt 994 Zeilen und einen Prüfstand, die **Mutternorm**
74 Zeilen und keinen.

## 3. Methode

Sechs parallele Aufnahme-Agenten (sonnet), je ein Quellenabschnitt, Fragerichtung durchgehend
**Abdeckung** («was steht in der Quelle und fehlt im Destillat»), nicht Refuter. Alle
Kernbefunde vom Hauptprozess am Original nachgeprüft.

- Seitenversatz **null**, an S. 5 und S. 17 am Seitenrand **abgelesen** (Methodik-Pflicht 6).
- Renderings mit normspezifischem Präfix `sia416-r64-` (Methodik-Pflicht 5).
- Die Quelle hat einen **echten Textlayer**. Tabellen und Figuren wurden trotzdem gerendert und
  abgelesen (Methodik-Pflicht 8) — die Zuordnungsmatrix Ziff. 4.3 und alle zwölf Figuren.
  Genau dort lagen die schwersten Befunde.
- Vor jeder Übernahme geprüft, ob das Destillat die Aussage **an anderer Stelle** führt
  (Methodik-Pflicht 7).

## 4. Ergebnis Teil 1 — SIA 416:2003

**12 Kernlücken, 18 Nebenlücken, kein einziger falscher Wert.**

| Abschnitt | Kern | Neben |
|---|---|---|
| Vorwort + Ziff. 0 (S. 3-7) | 4 | 3 |
| Ziff. 1-2 (S. 8-10) | 2 | 0 |
| Ziff. 3-4 (S. 11-13) | 5 | 2 |
| Ziff. 5-6 (S. 14-16) | 1 | 4 |
| Anhang S. 44-52 (Figuren 1-7) | 3 | 5 |
| Anhang S. 53-57 (Figuren 8-12) | 4 | 3 |

*(Die Abschnittssummen ergeben 19; nach der Zusammenführung durch den Hauptprozess bleiben 12
eigenständige Kernbefunde — mehrere Agenten meldeten denselben Sachverhalt aus
unterschiedlicher Richtung, was nach Methodik-Pflicht 7 als unabhängige Bestätigung und nicht
als zusätzlicher Befund zählt.)*

### 4.1 Die folgenreichsten Kernbefunde

1. **Die Messregel für die Gebäudehöhe steht nicht im Normtext, sondern in Figur 8 (S. 53).**
   Ziff. 5 sagt nur «GF × zugehörige Höhe, ohne jegliche Zuschläge oder Abzüge» — mehr steht
   dort nicht, das hat der zuständige Agent ausdrücklich als Negativbefund gemeldet und der
   Hauptprozess bestätigt. Die eigentliche Messregel zeigt der Massstrang der Figur:
   **geschossweise Segmente** (H 2.UG, H 1.UG, H EG, H 1.OG, H 2.OG, H DG), also kein lichtes
   Raummass, und darüber ein **eigenes Segment «Dicke Dach» bis zum First**.
   **Konsequenz:** Das GV reicht bis zur **Dachaussenhaut**, inklusive der vollen
   Dachkonstruktion. Wer bis zur inneren Deckenlinie oder einer angenommenen Kniestockhöhe
   misst, unterschätzt bei jedem geneigten Dach systematisch das GV — und damit jede
   CHF/m³-Grobkostenzahl. Der Befund lag in einem Seitenbereich, der **nie eingesehen** war.
2. **Ziff. 4.3 entzieht auch die Aussen-Konstruktionsfläche AKF der Zuordnung.** Das Destillat
   führte «GGF und KF entziehen sich der Zuordnung». Der Normtext nennt oberhalb der Matrix
   generisch «Gebäudegrundfläche, Konstruktionsfläche»; die Matrix, vom Hauptprozess am
   400-dpi-Rendering Zelle für Zelle abgelesen, lässt **AKFT (3.2.1) und AKFN (3.2.2) in allen
   sechs Zeilen ohne Beziehung** — genau wie GGF, KFT und KFN. Für den `wertquoten-rechner`
   heisst das: auch tragende Balkonstützen und Brüstungen gehen weder in einen Sonder- noch in
   einen Gemeinschaftsanteil ein. Ein Leser, der «KF» als Ziff. 2.2 liest, hätte AKF daneben
   stehen lassen.
3. **Die Vier-Faktoren-Regel fehlte vollständig** (Vorwort S. 5 und Ziff. 0.2, S. 6). Das
   Destillat trug nur das Ergebnis («keine Kostenermittlungsmethode»), nicht die Begründung:
   Flächen und Volumen bilden allein den Faktor **Quantität** ab; **Form, Qualität und
   Komplexität** (z.B. Installationsgrad) sind separat einzubeziehen, weil neuere
   Kostenermittlungsmethoden sie nicht mehr über Zu- und Abschläge erfassen.
4. **Der ganze dritte Absatz der Ziff. 0.2 fehlte** — die Regel, dass die Berechnungstiefe der
   Planungsstufe zu entsprechen hat, mit vier ausformulierten Fällen (Raumprogramm,
   Kostenermittlung, Entwurf/Wettbewerb, Miete/Miteigentum).
5. **Ziff. 4.1 und 4.2 hatten kein Zuordnungskriterium.** FSN knüpft am **Sondernutzungsrecht**
   an, nicht an der faktischen Benutzung. FGN trägt **zwei** mit «oder» verbundene Kriterien:
   gemeinsam genutzt **oder zum Betrieb des Gebäudes notwendig** — eine technische Zentrale
   fällt also auch dann zwingend in die FGN, wenn sie niemand mitbenutzt. Beides fehlte; das
   Destillat führte nur die Abkürzungsliste.
6. **Laubengang ist AVF, nicht ANF** (Figur 6, S. 51; vom Hauptprozess am Bild bestätigt).
   Die Nutzungsart entscheidet auch im Aussenbereich über NF/VF/FF — nicht die Bauform. Für
   Wohnbau- und Pflegeheim-Erschliessungen unmittelbar relevant.
7. **Die Abgrenzung «Balkon AGF vs. UF» war im Destillat als offene Frage geführt** und mit
   dem Verweis versehen, dafür seien die Figuren im Original zu konsultieren. Die Antwort lag
   in Figur 7 (S. 52) — also im nie gelesenen Teil. Zwei Kriterien: **Überdeckung** entscheidet
   GF gegen AGF, **Terrainanschluss** entscheidet AGF gegen UF; bei freistehenden Bauten
   entscheidet die allseitige Umschliessung, nicht die Aufständerung.
8. **Der Nebensatz zu den Fundationen.** Die Norm nimmt nur «spezielle Fundationen, **die einer
   Verbesserung der Tragfähigkeit des Baugrundes dienen**» aus. Das Destillat übernahm die
   Beispiele (Pfählungen, Kofferungen, Sohlenbeton), liess aber das Kriterium weg — womit
   offenblieb, ob normale Fundamente zählen. **Sie zählen**, und Figur 8 zeigt das Streifen-
   fundament als Teil des eingefärbten Volumens. Der zuständige Agent hatte den Punkt als
   Nebenbefund eingestuft; der Hauptprozess hat ihn nach der Figurensicht auf Kern hochgestuft.
9. **Das «betrachtete Grundstück» ist nicht zwingend eine Katasterparzelle** (Ziff. 1, S. 8):
   zulässig sind eine Parzelle, mehrere Parzellen oder **Teile** davon. Bei Machbarkeitsstudien
   über Parzellengrenzen hinweg die Bezugsbasis überhaupt erst zulässig machende Aussage.

### 4.2 Ein Strukturbefund: der Volumenteil war systematisch dünner als der Flächenteil

Zu HNF, NNF, VF und FF führte das Destillat volle Wortdefinitionen samt Beispielen. Die
volumenseitigen Pendants NGV, NV, VV und FV standen **nur als Abkürzungen im Gliederungsbaum** —
ohne Definition. Das ist kein Einzelfehler, sondern eine durchgehende Asymmetrie: der
Flächenteil wurde ausdestilliert, der Volumenteil abgekürzt. Alle vier Definitionen sind in
diesem Lauf ergänzt.

### 4.3 Was das Frontmatter falsch auswies

`gelesen:` nannte «S. 1-17 (deutscher Normteil komplett) + S. 44-48 (Anhang: Farblegende,
Figuren 1-3)». Beides war ungenau: der deutsche Teil endet auf **S. 16** (S. 17 ist bereits die
französische `TABLE DES MATIÈRES`), und der Anhang reicht bis **S. 57** mit den **Figuren 1-12**.
Die Selbstauskunft hat neun Figurenseiten unsichtbar gemacht — dieselbe Mechanik wie der
Art.-83-Fall aus Run 62, wo eine ungenaue Bereichsangabe einen erstrangigen Stoff verdeckte.

## 5. Verifikations-Verdikte (Hauptprozess, am Original)

| Befund | Verdikt |
|---|---|
| Ziff. 0.2 dritter Absatz, vier Fälle | **bestätigt** (S. 6, Volltext gelesen) |
| Ziff. 0.4 fünfte Regel «Projektphasen/Massstab/Genauigkeiten» | **bestätigt** (S. 7) |
| Ziff. 0.4 Fertigmass-Aufzählung inkl. «Geländer» | **bestätigt** (S. 7) |
| Vorwort: vier kostenbeeinflussende Faktoren | **bestätigt** (S. 5) |
| Vorwort: SIA 112:2001 und SIA D 0165 | **bestätigt** (S. 5) |
| Ziff. 1: Parzelle / mehrere / Teile | **bestätigt** (S. 8) |
| Ziff. 1.2.1: BUF = Hart- bzw. Grünflächen | **bestätigt** (S. 8) |
| Ziff. 4.3: AKF ebenfalls ohne Beziehung | **bestätigt** — Matrix am 400-dpi-Rendering zeilenweise abgelesen |
| Figur 6: Laubengang = AVF | **bestätigt** — gelb schraffiert gegen Legende geprüft |
| Figur 8: Höhensegmente + «Dicke Dach» bis First | **bestätigt** — Massstrang am Rendering abgelesen |
| Figur 7: Überdeckung/Terrainanschluss als Kriterien | **bestätigt in der Grundregel**; die Einzelbeispiele bewusst nicht ausgedeutet |
| Ziff. 5: keine Höhendefinition im Normtext | **bestätigt als Negativbefund** |

Keine Widerlegung. Zwei Agentenaussagen wurden **abgeschwächt** übernommen: die Detail-Deutung
einzelner Beispiele der Figur 7 und die Behauptung, «H 2.UG» ende exakt an der Unterkante der
Bodenplatte — beides ist am 200-dpi-Bild nicht zweifelsfrei, und die Aussage wird nicht
gebraucht. Sie stehen als offener Punkt im Destillat statt als Befund.

## 6. Ergebnis Teil 2 — Kalibrierung der Stichprobenstufe

Run 63 legte eine Dreiteilung für die 308 Kandidaten vor und wies zugleich aus, dass deren
Stufe 2 — «Stichprobe statt Vollrunde» — **nie gefahren** und ihre Trefferquote unbekannt ist.
Sie sei an einem Destillat zu kalibrieren, dessen Vollrunde vorliegt.

**Anlage:** `sia-118-1991.md` in der Fassung **vor** Run 62 (aus Git geholt — gegen die heutige
Fassung gemessen wären die Lücken geschlossen und die Messung wertlos). Kapitel 1, 5 und 6 per
Seed 64 gezogen und protokolliert, **bevor** die Run-62-Details gelesen wurden. Ein blinder
Subagent, `outputs/`, aktuelle Fassung, QUESTIONS und CHANGELOG ausdrücklich gesperrt.

**Ergebnis: 17 Kern- und 9 Nebenfunde.**

| Prüfung | Ergebnis |
|---|---|
| Die vier folgenreichsten Vollrunden-Kernbefunde dieser Kapitel (Art. 163, 164, 169, 147/151) | **alle vier blind reproduziert** |
| Von 18 gemeldeten Artikeln in der heutigen Fassung geführt | **17** — die Vollrunde fand sie folglich auch |
| Davon inhaltlich (nicht nur nach Nummer) nachgelesen | 3 von 3 bestätigt |
| Erkennbare Falsch-Positive | **keine** |
| Der eine Rest (Art. 3) | kein Falsch-Positiv, sondern ein in N62-1 noch offener Rückstand |

**Die Messung korrigiert den eigenen Vorschlag aus Run 63.** Die Stichprobe schlug in **allen
drei** gezogenen Kapiteln an und hätte die Vollrunde zweifelsfrei ausgelöst. Bei einer
Lückendichte wie hier — 84 Kernlücken über sieben Kapitel — trägt praktisch jedes Kapitel
welche, und jede Ziehung löst aus. **Stufe 2 mündet bei einem betroffenen Destillat in Stufe 1;
der erhoffte Spareffekt tritt genau dort nicht ein, wo Arbeit anfällt.**

Ihr Wert liegt anderswo: Sie misst zu einem Bruchteil der Kosten, **wie stark** ein Destillat
betroffen ist. Das taugt zum **Sortieren** der 308 nach gemessener statt vermuteter
Dringlichkeit — und ersetzt damit eine Priorisierung, deren Grenze die Kandidatenliste selbst
benennt («Reichweite ≠ Risiko»). Anlage: `training/n64-stichproben-kalibrierung.md`.

## 7. Was am Bestand geändert wurde

- **`destillate/sia-416-2003.md`** — alle 12 Kernbefunde **inline** eingearbeitet
  (Methodik-Pflicht 9), nicht angehängt; neuer Abschnitt «Verhältnis zur Kostenermittlung»,
  neuer Abschnitt «Anhang: Figuren S. 44-57» mit Figurentabelle und der AGF/UF-Regel; vier
  fehlende Volumenbegriffe ergänzt; **Prüfstand-Tabelle** gesetzt; Status
  `established` → **`speculative`**; `gelesen:` und `last_updated` berichtigt.
- **`training/n64-stichproben-kalibrierung.md`** — neu, die Kalibrieranlage.
- **`destillate/INDEX.md`**, **`training/norm-inventar.md`**, **`wiki/QUESTIONS.md`**
  (N64-1 bis N64-5), **`CHANGELOG.md`** nachgeführt.
- **Umlaute** in der Zielkonvention geschrieben, nicht nachträglich konvertiert; Stichprobe auf
  ae/oe/ue-Ersatzschreibung negativ.
- **Bestandsmessung nach Rule 260811:** die Verschiebung des CHANGELOG-Eintrags an die
  chronologisch richtige Stelle wurde gemessen — 12 521 Zeilen vorher, 12 521 nachher,
  **Delta 0**, kein Bestandsverlust.

## 8. Ausbreitungs-Check

Zwölf Dateien ziehen SIA 416 (Skills, Agenten, `rules/normen-referenz`). Geprüft, ob die
Vier-Faktoren-Aussage dort fehlt und ob eine falsche Aussage weitergereicht wurde.

**Kein Fehlerbefund.** `grobkosten-onepager` und `grobkosten-rechner` differenzieren bereits
nach Standard, Nutzung und Zuschlägen und deklarieren ±25 % — sie **handeln also normkonform**,
ihnen fehlte nur die Fundstelle dafür. Nach Methodik-Pflicht 10 ist das korrekt zu formulieren
als «die Skills hatten die Praxis, neu ist der Beleg» — nicht als «die Skills lagen falsch».
Der Beleg ist im Praxis-Transfer des Destillats nachgetragen, zusammen mit dem Hinweis auf die
Höhenregel beim GV-Aufmass. In die Skill-Dateien selbst wurde nicht eingegriffen.

## 9. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Keine Refuter-Runde auf den Nachträgen dieses Laufs** (N64-2). Die neuen Blöcke tragen nur
   die Abdeckungsrichtung. Solange das so ist, ist `speculative` die richtige Einstufung.
2. **Die 18 Nebenbefunde sind nicht eingearbeitet** (N64-1).
3. **Die Spezifität der Stichprobenstufe ist nicht gemessen** (N64-3) — gemessen ist nur, dass
   sie findet, wenn etwas da ist. Ob sie schweigt, wenn nichts da ist, ist offen; ein
   nachweislich sauberes Destillat ist im Bestand nicht bekannt.
4. **Die Kalibrierung stützt sich auf einen Prüfling und einen Lauf.** Dieselbe schmale Basis,
   die schon Run 63 bei sich ausgewiesen hat.
5. **14 der 18 Stichproben-Artikel wurden nur nach Nummer abgeglichen**, drei inhaltlich.
6. **Fundstellen des SIA-416-Destillats wurden nicht systematisch geprüft** — dieselbe offene
   dritte Prüfrichtung wie in N63-2.
7. **Französischer und italienischer Normteil** unverändert nicht ausgewertet. Für N64-5
   («Dicke Dach» normativ oder illustrativ) wären sie der nächste Kontrolltext.
8. **Die übrigen 307 Kandidaten der N62-3-Liste sind weiterhin nur eine Metadaten-Messung** —
   keines davon wurde in diesem Lauf inhaltlich geöffnet.

## 10. Vorzulegen

Alle Änderungen dieses Laufs sind umkehrbare Arbeit am eigenen Wissensbestand und fallen unter
die Whitelist; die Statusherabstufung folgt der freigegebenen Methodik-Pflicht 13.

**Unverändert bei Raphael, aus Run 63 und jetzt mit der fehlenden Zahl unterlegt:** die
Reihenfolge für die 308 Kandidaten. Dieser Lauf liefert dazu das Ergebnis, das Run 63 nicht
hatte — die Stichprobe funktioniert, aber als Sortier-, nicht als Sparinstrument. Ein linearer
Vollrunden-Weg bleibt ausgeschlossen: dieser Lauf kostete eine Nacht für **eine** Norm.

Ebenfalls unverändert weitergeführt, **nicht erneut vorgelegt**: N63-2 (Fundstellen als dritte
Prüfrichtung), die drei DE-Duplikat-Merges, der Marker `[a]`, das Statusvokabular und die
Beschaffungs-Bring-Schulden (SIA-Shop 380/1:2016, 385/1:2011, 266/1:2015, 181:2020, 491,
118:2013 · VSS-Kundendienst für SN 641 400, SN 640 052, SN 640 273a · SNV für SN EN 12193:2019).

## 11. Ein methodischer Nachtrag zum eigenen Werkzeug

Die Bestandsmessung `git diff --numstat` im SSD-Klon lieferte **keine Ausgabe** — dieselbe
Konstellation, die in Run 63 kurz wie ein Infrastrukturbefund aussah. Ursache auch hier
harmlos und sofort nachgemessen: der SSD-Klon ist ein Lese-Spiegel, die Datei wurde über den
SMB-Mount auf dem NAS geändert, der Klon kennt die Änderung nicht. Die Messung wurde daraufhin
gegen die committete Fassung gefahren und lieferte den brauchbaren Wert.

Festgehalten, weil es die Regel aus Eintrag 260807 zum zweiten Mal in Folge belegt: **ein
leeres Ergebnis ist zuerst eine Aussage über das Werkzeug, nicht über die Quelle.**

**Zweiter Fall im selben Lauf, und der Grund, warum Rule 260730b die Verifikation verlangt.**
Der explizite `nas-commit-now.sh` meldete Erfolg, sein Commit (`f1ac76fa3`) enthielt aber
**weder das Destillat noch die Kalibrieranlage** — also genau die beiden inhaltlich wichtigsten
Dateien. Wer nur den Rückgabewert gelesen hätte, hätte den Lauf als vollständig committet
gemeldet. Die Nachmessung im Ziel zeigt die harmlose Ursache: der 15-Minuten-Cron
`nas-selfcommit` war um **01:45** dazwischengefahren und hatte beide Dateien bereits mitgenommen
(`186ea04b3`, «6 Datei(en)»). Der explizite Commit um 01:48 trug folglich nur den Rest nach.
Beide Commits stehen auf `origin/main`, der Arbeitsbaum ist sauber, es fehlt nichts — die
Änderungen dieses Laufs liegen lediglich auf **zwei** Commits statt auf einem.
Merksatz für den nächsten Lauf: **ein `--stat` des eigenen Commits ist keine Vollständigkeits-
prüfung, solange ein zweiter Committer auf dieselbe Ablage schreibt** — zu prüfen ist der
Zustand des Ziels, nicht der Inhalt des eigenen Commits.
