# Normen-Nacht Run 78 — 03.09.2026, ab 01:28 CEST (MacBook Pro)

**Ein Arbeitsgegenstand, und es war der von Run 77 selbst benannte:** die **messende
Abdeckungsrichtung des Hauptprozesses** war auf **einer** von zwölf Figuren des Anhangs zu
`sia-416-2003.md` gelaufen (Figur 11). Dieser Lauf fährt sie auf den **übrigen elf** — Figuren
1-10 und 12, gedruckte Seiten 46-55 und 57. Ergebnis: zwei Kernbefunde mit Hub-Reichweite, sechs
weitere Befunde, **N77-1 geschlossen**, und von zwei Hebungs-Blockern ist noch einer übrig.

---

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Arbeitsdatum | `date` → 2026-09-03 01:28 CEST |
| NAS gemountet | ja; alle Zugriffe mit vollem Pfad (Rule `sync-kanonische-quelle`) |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf; 2 Claude-Session-Prozesse |
| OneDrive-Zugriff auf PL-02 | funktioniert **inhaltlich** (`pdfinfo`/`pdftotext`/`pdftoppm` auf der Zieldatei), kein M365-Fallback nötig |
| NAS-Repo vor Beginn | `git status --porcelain wissen/normen` **nativ per ssh** sauber; Basis-Commit `3bd56d0ef` (01:45) |
| Inventarstand | PL-02/PL-03 weiterhin **0 offene `[ ]`** im SIA/VKF-Scope → Vertiefungsstufe (b) |
| Run-Nummer | **78**, nach Sicht der jüngsten `outputs/`-Datei (Run 77, 02.09.) |

**Stations-Split eingehalten:** nur SIA. Keine DIN-/VSS-/RAL-Position berührt oder abgehakt.

**Seitenversatz null**, an der Fusszeile der S. 46 abgelesen und an S. 49/53/55/57 über die
Figurentitel gegengeprüft.

## 2. Methode — und warum sie diesmal anders ist als in Run 77

Run 77 hat **eine** Figur rechnerisch aufgenommen. Dieser Lauf nutzt, dass der Anhang aus **drei
Serien** besteht, die jeweils **dieselbe Zeichnung** mehrfach einfärben: Grundriss (Fig. 1-4),
Flächenschnitt (Fig. 5/6), Volumenschnitt (Fig. 8-12). Daraus folgt ein schärferes Verfahren:

1. Alle Anhangseiten selbst rendern (300 dpi Vollseiten, Detailfragen 600 dpi, Präfix
   `sia416-r78-`).
2. Legenden-Swatches **je Figur an der Figur selbst** messen.
3. Jedes Pixel per Nächste-Farbe-Klassierung zuordnen.
4. Die Serien **gegeneinander registrieren** (beste Translation über die Deckung der schwarzen
   Linienmasken) und **kreuztabellieren**.

**Punkt 4 ist der eigentliche Abdeckungstest.** Er prüft nicht, ob eine Aussage des Destillats
stimmt, sondern ob die Figuren untereinander aufgehen — und findet damit, was in **keiner**
Aussage vorkommt. Das ist die Fragerichtung, die Methodik-Pflicht 13 verlangt und die eine
Refuter-Runde strukturell nicht leisten kann.

Drei unabhängige **Refuter-Agenten** (sonnet, eigene Arbeitsverzeichnisse, Präfixe
`r78-refA-`/`refB-`/`refC-`, Methodik-Pflicht 5) haben 17 Behauptungen zu **widerlegen**
versucht; jeder hat seine Legenden-Swatches selbst gemessen und seine Referenzstellen selbst
gewählt.

Jeder Befund einzeln mit Fundstelle und Messwert: `training/n78-figuren-1-10-12-anlage.md`
(A78-01 bis A78-16, Refuter-Verdikte C-1 bis C-5).

## 3. Verdikte

**17 Behauptungen geprüft: 11 bestätigt, 5 eingeschränkt, 1 Zahlenwert widerlegt.
8 inhaltliche Befunde · 3 Bestätigungen geführter Regeln · 2 Selbstkorrekturen im Lauf ·
0 falsche Zahlenwerte im Destillat.**

Der eine widerlegte Wert traf eine Behauptung **dieses Laufs**, nicht den Bestand — und der
Hauptprozess hatte ihn unabhängig bereits berichtigt, bevor der Refuter-Bericht eintraf
(Messkasten zu weit gefasst, weisser Blattrand mitgezählt). Über fünf Prüfrunden hinweg ist
**kein einziger falscher Zahlenwert** des Destillats gefunden worden.

### 3.1 Kernbefund 1 — die Fläche/Volumen-Paarung bricht bei den Aussenkategorien ab

Die Figuren 6 (Flächen) und 11/12 (Volumen) zeigen **dasselbe Beispielgebäude**. Raum für Raum
gemessen:

| Raum / Bauteil | Fläche (Fig. 6) | Volumen (Fig. 11/12) |
|---|---|---|
| Estrich · Keller | NNF | NNV |
| «Wohnen» | HNF | HNV |
| Treppenhaus | VF | VV |
| Schacht DG · Grube unter der Terrasse | FF | FV |
| **Laubengang** | **AVF** | **kein Nutzvolumen — nur AKV** |
| **Terrasse / Balkon** | **ANF** | **kein Nutzvolumen — nur AKV** |

**Die Gegenprobe macht es hart:** über der Balkonplatte des 1. OG und über der Laubengangplatte
ist der Raum in **allen fünf** Volumenfiguren leer — Weissanteil 0.986 bzw. 1.000, jede
Legendenfarbe 0.000. Der Raum über einer Aussenfläche ist nicht bloss «kein Nutzvolumen», sondern
**überhaupt kein Volumen** der Norm. Strukturell gestützt (Refuter C): das AKV trägt die
**eigenständige Ziffer 6**, nicht «5.3».

⚠ **Praxisfolge, und sie ist der Grund, warum dieser Befund Hub-Reichweite hat:** Ein
Variantenvergleich über **CHF/m³ GV** ist gegenüber Aussenflächen **blind**, einer über
**CHF/m²** nicht. Zwei Varianten, von denen eine grosszügige Balkone und Laubengänge hat und die
andere nicht, sind zwischen den beiden Kennwerten **nicht neutral** — die balkonreiche erscheint
im m³-Vergleich günstiger, obwohl sie mehr Bauteile hat. Betroffen: `grobkosten-onepager`,
`machbarkeit-studio`, Agent `grobkosten-rechner`.

Das Destillat führte die Beobachtung bisher nur abstrakt aus der Legende (Run 65: «aussen kennt
die Norm nur Konstruktionsvolumen»). Jetzt steht sie am durchgerechneten Beispiel, mit der
Konsequenz für den Kennwertvergleich.

### 3.2 Kernbefund 2 — KV ist aus KF nicht hochrechenbar

Deckenzone zwischen zwei Geschossen (x1250-1400, y1136-1155 bei 300 dpi):
**Figur 8 GV 0.737 · Figur 9 NGV 0.000 · Figur 10 KV 0.684.**

Die **Geschossdecken sind KV**. Eine waagrechte Platte hat im Geschossgrundriss **keine**
Entsprechung, weil Ziff. 2.2 die KF als *Grundrissfläche* der geschnittenen Bauteile definiert
und Wände, Stützen und Brüstungen aufzählt. Grössenordnung: **51'684 von 131'842 KV-Pixeln
(39.2 %)** liegen in **56 von 1131 Bildzeilen** — den Platten; dazu die geneigte
Dachkonstruktion, ebenfalls ohne KF-Pendant. **Eine Schätzung «KV = KF × Geschosshöhe»
unterschätzt das KV um deutlich mehr als ein Drittel.**

Damit ist auch die zweite Hälfte von N77-1 beantwortet: bei **VF/VV** besteht **keine**
Asymmetrie (das Treppenhaus ist beidseits vorhanden, der Unterschied ist ein
Darstellungsunterschied). **N77-1 ist geschlossen.**

### 3.3 Figur 4 klassiert zwei Treppen desselben Grundrisses verschieden

| Element | Fig. 1 | Fig. 2 | Fig. 3 | Fig. 4 |
|---|---|---|---|---|
| obere Treppe (gemeinschaftlich) | GF 0.97 | NGF 0.97 | **weiss 0.96** | **VF 0.97** |
| untere Treppe (wohnungsintern) | GF 0.98 | NGF 0.97 | **weiss 0.95** | **HNF 0.97** |

Nullwerte gegengeprüft: in der unteren **kein einziges** VF-Pixel, in der oberen **kein einziges**
HNF-Pixel. Refuter A hat es an Einzelpunkten unabhängig reproduziert.

Die Norm zeigt damit die Regel der Ziff. 2.1.2 — zur VF zählen nur die **ausserhalb der Wohnung**
liegenden Treppen — **an ihrem eigenen Beispiel und im selben Grundriss**. Bisher stand sie im
Destillat nur als Begriffszeile und, seit Run 77, auf der Volumenseite. Die Flächenseite ist die
unmittelbar aufmassrelevante: wer alle Treppen pauschal als VF zählt, verschiebt Fläche aus der
HNF in die VF und verfälscht jedes HNF/GF-Verhältnis.

Zwei Folgeaussagen aus derselben Messung: **ein Treppenlauf ist nie KF** (beide Läufe in Figur 3
weiss), und **der Luftraum ist netto zu messen** — seine Grenze läuft entlang der Treppenwange,
der Lauf daneben ist eingefärbt. Wer das Treppenauge als Rechteck abzieht, zieht den Lauf mit ab.

### 3.4 Die Flächen der Figuren 5/6 sind Bänder ohne Massbedeutung

Alle **vierzehn** Bänder beider Figuren sind **52 bis 54 px hoch** (±0.08 mm auf dem Blatt),
während die Bandabstände mit 100, 253, 161, 165, 161 und 152 px stark variieren.

**Der Beweis ist die Selbstwidersprüchlichkeit der Norm:** dasselbe oberste Band (Spitzboden)
liegt in **Figur 5 bei y720-772**, in **Figur 6 bei y749-800** — **29 px tiefer** —, obwohl die
schwarzen Referenzlinien beider Zeichnungen deckungsgleich sind (y710-711, 730-732, 801-802, 816
in **beiden**) und alle übrigen sechs Bandpaare auf 0-2 px übereinstimmen. Refuter B hat es
unabhängig reproduziert und zusätzlich geprüft, dass Massstab und Registrierung stimmen.

**Die vertikale Lage eines Bandes trägt keine Information.** Figur 5/6 sagt, WELCHE Flächen es
gibt und wie weit sie in der Horizontalen reichen — nichts über Höhen. Das ist der scharfe
Gegensatz zu den Figuren 8-12, wo die Farbe das wirkliche Volumen füllt und die Geometrie die
Messgrösse **ist** (Figur 8: der eingefärbte Umriss definiert den Umfang des GV, Run 65). Wer
beide Serien gleich liest, liest aus Figur 5/6 Höhen heraus, die dort nicht stehen.

### 3.5 Vier weitere Aufnahmen, die es bisher nicht gab

- **Die raumweise Zuordnung der Figur 6** (Estrich/Spitzboden/Keller NNF · Treppenhaus VF über
  vier Geschosse · Schacht und Grube unter der Terrasse FF · Laubengang AVF · Terrasse/Balkon
  ANF). Zwei davon stehen in keiner Beispielliste der Norm: das Treppenhaus als durchgehende VF
  und die Grube unter einer Aussenfläche als FF.
- **Der Bestand des AKV in Figur 12:** genau **sechs** Elementgruppen — zwei Dachüberstände, die
  Laubengang-Platte, zwei Balkonplatten und ein **senkrechtes Bauteil in Ansicht, das über beide
  Balkongeschosse durchläuft** (y1073-1456), also kein Zubehör der oberen Platte. Damit ist der
  Run-65-Schluss («gehören zum AKV nach Ziff. 6») zum **direkten Beleg** geworden. Die grosse
  Terrassenplatte fehlt in der Liste: dieselbe Bauform ist einmal AKV und einmal GV-Bestandteil —
  massgebend ist nicht die Bauform, sondern was darunter liegt.
- **Die Gesamtlegende S. 44/45 vollständig ausgezählt:** 9 Innen + 7 Aussen (Flächen), 7 + 1
  (Volumen). Die zwei ungepaarten Innen-Kategorien sind damit **abgezählt** statt aufgezählt: UF
  und NNF. Alle **24** Signaturen haben Weissanteil **0.000** — die Aussen-Signatur ist schwarze
  Schraffur **über** der Vollfarbe. Die Ansichts-Signatur der Figur 12 ist die **einzige von 26**
  mit weissem Grund. **Braun trägt drei Bedeutungen** (KFT/KV voll, AKFT/AKV schraffiert).
- **Figur 5 zeigt die Grenze UF ↔ AGF über EINEM Keller:** das Kellergeschoss reicht bis x2151,
  die Terrasse darüber nur bis x1992 — über demselben Bauwerk liegt links AGF, rechts UF. Die
  Regel war geführt, aber allein der Figur 7 zugeschrieben.

### 3.6 Die HNF/NNF-Grenze an der Traufseite — und eine Fehldeutung, die zum zweiten Mal kam

Im DG-Band der Figur 6 schlägt der Zeilenschnitt bei y850 von HNF (222,26,55) bei x1580 auf NNF
(246,135,18) bei x1583 um; der **Schwarzanteil zwischen x1570 und x1600 ist exakt 0.000** — keine
Wand, keine Linie. Das ist die **Flächenseite** derselben Konstellation, die Run 77 an Figur 11
auf der Volumenseite gemessen hat.

⚠ **Die naheliegende Erklärung «zu geringe Raumhöhe» ist zum zweiten Mal von einem Agenten
angeboten und zum zweiten Mal widerlegt.** SIA 416 kennt an keiner Stelle einen
Raumhöhen-Schwellenwert; Ziff. 2.1.1.1/2.1.1.2 und 5.1.1.1/5.1.1.2 stellen auf Zweckbestimmung
und Nutzung ab, und an keiner der beiden Grenzen steht ein Mass. **Zwei unabhängige Agenten in
zwei Läufen an zwei Figuren mit derselben falschen Erklärung** — die Fehldeutung ist naheliegend
und wiederholbar und ist deshalb jetzt **ausdrücklich als widerlegt im Destillat geführt**, statt
bloss nicht übernommen zu werden.

### 3.7 Additivität — dreifach unabhängig gemessen

| Serie | Prüfung | Hauptprozess (mit Toleranzband) | Refuter |
|---|---|---|---|
| Grundriss | GF = NGF + KF · NGF = HNF+NNF+VF+FF | **0** Abweichungsregion > 1500 px in vier Richtungen | A: grösste **nicht** linienartige Komponente **213 px** |
| Volumen | GV = NGV + KV · NGV = HNV+NNV+VV+FV | **0** Abweichungsregion > 1200 px in vier Richtungen | C: **IoU 0.986 / 0.990** |

Refuter A hatte ohne Toleranzband gearbeitet und XOR-Komponenten bis 48'231 px gemeldet, sie aber
als linienförmig ausgewiesen. **Der Hauptprozess hat den Einwand selbst nachgerechnet**
(Formfaktor jeder Komponente): keine der sechs grössten je Test hat einen Füllgrad über 0.093;
die grösste kompakt aussehende misst 407 × 5 px, ist also ebenfalls eine Linie. Die drei
Verfahren widersprechen sich nicht, sie messen dasselbe verschieden streng.

## 4. Zwei Selbstkorrekturen im Lauf, beide gehören ins Protokoll

**Erstens, und sie ist die wichtigere:** Der Hauptprozess hat die Innen/Aussen-Trennung zuerst
über den **Weissanteil** versucht — in der Annahme, eine Schraffur lasse den Grund durchscheinen.
Die Messung in sauberen Teilflächen kehrte das um: in den Flächenfiguren ist die Aussen-Signatur
eine **schwarze** Schraffur **über** der vollflächigen Farbe (Weissanteil **0.000**,
Schwarzanteil 0.12-0.16). Die dichtebasierte Klassierung des ersten Versuchs hatte daraufhin den
Laubengang fälschlich als Vollfläche geführt und das oberste Band der Figur 5 fälschlich als
schraffiert (dort kreuzt eine Dachlinie das Band). **Lehre, sie gehört zu Methodik-Pflicht 8:**
eine Signatur wird in einer **Teilfläche ohne kreuzende Linien** gemessen; eine Schwellenwertregel
über die ganze Region misst dort, wo Beschriftung oder Konstruktionslinien hineinragen, das
Falsche — und liefert eine Zahl, die belastbar aussieht.

**Zweitens:** Die erste Aufnahme der Figur 12 führte **fünf** Elementgruppen, weil ein
morphologisches Schliessen mit 25×25 px die beiden Balkonplatten und das senkrechte
Ansichts-Bauteil zu **einer** Region verschmilzt. Erst die Messung des Streifens für sich zeigt,
dass er ein eigenständiges, über beide Geschosse durchlaufendes Bauteil ist. **Lehre:** ein
Schliessradius, der gross genug ist, um eine Schraffur zu einer Fläche zu verbinden, ist auch
gross genug, um benachbarte Bauteile zu verschmelzen — die Regionenzahl einer geschlossenen Maske
ist eine **untere Schranke** für die Zahl der Bauteile, nie deren Nachweis.

## 5. Der Hauptprozess widerspricht einer Refuter-Quantifizierung

Refuter B hat bestätigt, dass Flächenschnitt und Volumenschnitt nicht deckungsgleich sind, und
das mit «First 58 px weiter links bei nahezu gleicher linker Aussenkante, Zeichnung 10 % höher»
quantifiziert. **Beides hält der Nachmessung nicht stand:** die als «linke Gebäudekante»
genommenen x403/x400 sind nicht das Gebäude, sondern der linke **Textrand** der Seite.

| Grösse | Figur 5 | Figur 8 | Abweichung |
|---|---|---|---|
| Breite auf halber Höhe | 1126 px | 1116 px | 0.9 % |
| Gesamthöhe der Zeichnung | 1125 px | 1137 px | 1.1 % |
| First, Abstand von der linken Aussenkante | **38.2 %** der Breite | **38.2 %** der Breite | 0.0 % |

Massstab und Proportion sind praktisch identisch. Nicht deckungsgleich sind die Zeichnungen
trotzdem: ein Zeilenschnitt bei y1200 zeigt, dass die ersten drei senkrechten Linien mit −53/−54
px zur Deckung kommen, eine weiter rechts liegende erst mit −33 px — die Abweichung **wächst über
die Breite auf rund 20 px**. Es sind zwei **separat gezeichnete** Darstellungen desselben
Gebäudes, nicht zwei verschieden skalierte. Die Aussage bleibt, ihre Begründung ändert sich.

## 6. Statusentscheid — `speculative` bleibt, aber der Grund hat sich halbiert

**Was erledigt ist.** Run 77 nannte zwei Hebungs-Blocker. Der erste — die messende Abdeckung des
Hauptprozesses auf einer von zwölf Figuren — ist mit diesem Lauf geschlossen. Vier Prüfrichtungen
sind auf allen Teilen gelaufen, die Additivität beider Serien ist dreifach unabhängig gemessen,
und in fünf Prüfrunden ist kein falscher Zahlenwert gefunden worden.

**Was fehlt, ist genau eines — und es ist keine Arbeit, sondern eine Frage.** Der französische und
italienische Normteil (S. 17-30, S. 31-43) wurde nie systematisch gegen den deutschen gediffed;
die Prüfstand-Zeile trägt in **allen drei** Richtungen ein ✗.

⚠ **Als N78-1 Raphael vorgelegt:** Ist bei einer dreisprachigen Norm, deren **deutscher** Teil der
benutzte ist, ein systematischer Sprachdiff wirklich Voraussetzung für `established` — oder
genügt ein dokumentierter Stichproben-Abgleich? **Die Frage hat Reichweite über dieses Destillat
hinaus:** die KB führt weitere dfi-Normen, und beim heutigen Massstab könnte **keine** von ihnen
je `established` werden. Empfehlung des Laufs: dokumentierter Stichproben-Abgleich (Variante b),
weil sie messbar bleibt und den Prüfstand nicht entwertet. **Nicht selbständig entschieden** — das
ist eine Regel der KB, keine Feststellung an der Quelle.

## 7. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Der französische und italienische Normteil** — der einzige verbliebene Blocker, siehe Ziff. 6.
2. **Figur 7** ist nur als Regionenbestand aufgenommen (45 Regionen > 1200 px), nicht Beispiel für
   Beispiel neu gemessen; das geschah in Run 66 (Q&A) und wurde nicht wiederholt. Die vier
   Beispielzeilen lassen sich über ein reines y-Profil nicht sauber trennen, weil Beispiele
   benachbarter Zeilen einander in y überlappen — die Zeilenzuordnung des Run 66 bleibt die
   belastbare.
3. **Die Nachträge dieses Laufs** haben nur die Refuter-Richtung dieses Laufs gesehen, keine
   spätere unabhängige Runde. Die Fundstellen-Richtung ist auf ihnen nicht gefahren.
4. **Die Fundstellen-Richtung auf dem übrigen Bestand** — N63-2 bleibt auf einem von über 300
   Destillaten gefahren.
5. **Die 307 übrigen Kandidaten der N62-3-Liste** sind unverändert nur eine Metadaten-Messung.

## 8. Nebenbefund ausserhalb der KB: die P1-Sync-Divergenz ist aufgelöst

Vor Beginn wurde der Repo-Zustand nativ per ssh gemessen (nie `git` über den SMB-Mount, Rule
260726). Dabei zeigte sich: die seit dem **29.08.2026** als P1 geführte Divergenz NAS ↔ GitHub —
zuletzt am 02.09. 13:3x mit **705/267** protokolliert — **besteht nicht mehr**.

| Messung (nativ per ssh) | Wert |
|---|---|
| `git rev-list --count HEAD ^github/main` | **0** |
| `git rev-list --count github/main ^HEAD` | **0** |
| `HEAD` / `github/main` | beide **`3bd56d0ef`** (03.09. 01:45) |
| Wiki-Artikel `architektur-fachwissen` im NAS-Arbeitsbaum / auf `github/main` | **482 / 482** |

Die zweite Zeile ist die eigentliche Gegenprobe: der Nachtrag vom 02.09. hatte den Befund von
«Backup fehlt» auf **«kanonische Quelle unvollständig»** hochgestuft, weil 387 Dateien nur auf
GitHub lagen, darunter 356 Wiki-Artikel dieser KB. Beide Seiten tragen jetzt denselben Bestand.
**Nachtrag in `logbuch/fristen.md` gesetzt** (+5/−0, append-only nachgemessen), Zeile als erledigt
geführt.

**Zwei Einschränkungen, ausdrücklich:** Dieser Lauf hat die Divergenz **nicht aufgelöst** — sie
war Raphaels Einzelentscheid (Rule `interaktive-eingriffe` Ziff. 3), und wer sie wann aufgelöst
hat, ist aus dem Register nicht ersichtlich. Und die **Ursache** bleibt offen: Befund **B6** in
`docs/konzepte/260830-Laufzeitschicht-Umbau/SPEC.md` (`dispatch-run.sh` Zeile 33 pinnt das
Arbeitsverzeichnis auf den SSD-Klon der Station statt auf den NAS-Pfad). Solange zwei parallele
Schreibwege bestehen, entsteht dieselbe Divergenz erneut.

## 9. Berichtigt: eine veraltete Zeile, die drei Läufe überdauert hat

Die Zeile «Q&A-Runde auf dem Figurenanhang S. 44-57 — die einzige der drei etablierten
Richtungen, die dort nie lief; nächster Arbeitsgegenstand» stand bis heute unverändert in den
«Offenen Punkten» des Destillats — **während die Prüfstand-Tabelle derselben Datei seit Run 66
für beide Anhang-Zeilen «Q&A: Run 66» führt.** Ein Destillat, das seinem eigenen Prüfstand
widerspricht, schickt den nächsten Lauf auf eine erledigte Aufgabe. Inline korrigiert
(Methodik-Pflicht 9), als **N78-4** protokolliert. **Praktische Folge:** vor der Wahl des
Arbeitsgegenstands sind «Offene Punkte» und Prüfstand-Tabelle **gegeneinander** zu lesen, nicht
nur nacheinander.

## 10. Vorgelegt

1. **N78-1 — Ist ein Sprachdiff Voraussetzung für `established`?** Siehe Ziff. 6. Entscheid
   Raphael, mit drei benannten Varianten und einer Empfehlung. Reichweite: alle dfi-Normen der KB.

Alles Übrige dieses Laufs ist umkehrbare Arbeit am eigenen Wissensbestand und fällt unter die
Whitelist. Unverändert bei Raphael und **nicht erneut vorgelegt**: N77-2 (Methodik-Pflicht 14,
Signaturen messen statt betrachten), N77-3 (ID-Kollision der zwei Run-Nummernkreise), N65-2,
N65-4, N63-2 für den übrigen Bestand, N63-3, die Reihenfolge der 308 Kandidaten, das
Statusvokabular und die Beschaffungs-Bring-Schulden.

## 11. Bestandsmessung (Rule 260811)

Gemessen **nativ auf der Synology per ssh** (nie `git` über den SMB-Mount, Rule 260726), gegen
den Commit-Stand **bei Laufbeginn** (`3bd56d0ef`, 01:45).

| Datei | + | − | Bewertung |
|---|---|---|---|
| `wissen/normen/destillate/sia-416-2003.md` | 139 | 57 | **alle 57 einzeln im Diff nachgesehen und als gewollte Ersetzung belegt**: 2 Frontmatter-Zeilen, 10 Zeilen der Figurentabelle, 2 Prüfstand-Zeilen, der abgelöste Statusabsatz (rund 40 Zeilen) und 3 Zeilen der «Offenen Punkte» — jede mit einer erweiterten Fassung ersetzt |
| `wissen/normen/training/n78-figuren-1-10-12-anlage.md` | neu | — | Anlage, 5 Zeilen davon im Lauf selbst ersetzt (Platzhalter Teil C, Figur-7-Notiz, AKV-Elementzahl) |
| `wissen/normen/CHANGELOG.md` | Prepend | **0** | rein additiv |
| `wissen/normen/wiki/QUESTIONS.md` | Einschub nach der H1 | **0** | append-only sauber |
| `wissen/normen/destillate/INDEX.md` | 1 | 1 | genau die eine absichtlich ersetzte Zeile |
| `wissen/normen/training/norm-inventar.md` | 1 | **0** | append-only sauber |
| `logbuch/fristen.md` | 5 | **0** | append-only, unabhängig per `--numstat` nachgemessen |

**Kein Bestandsverlust.** Zwei Gegenproben am Destillat: (a) die Zahl der Überschriften geht von
**15 auf 17** — zwei neue Abschnitte, keiner entfernt. (b) Acht Kernformulierungen früherer Läufe
wurden nach dem Edit einzeln gegengesucht und sind alle noch vorhanden («Aus Run 65 unverändert
festgehalten», «abschnittsweise am einzelnen Konstruktionsstück», «kleines gekreuztes Symbol ohne
Legendeneintrag», «Netto-Deckenlinie liegt um die Dachdicke», «Dachkonstruktion als durchlaufende
Volumenschicht», «der Laubengang ist AVF», «beide Signaturen schraffiert», «109 Fundstellen»).

Umlaute: alle in diesem Lauf geschriebenen Dateien in der Zielkonvention (echte ä/ö/ü), auch die
Anlage in `training/` (Rule `umlaute-konvention`).
