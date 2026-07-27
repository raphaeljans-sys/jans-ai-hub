# Normen-Training Run 31 (MacBook Pro, 27.07.2026) — SIA/VKF

**Kurzfassung:** Kein neues Grunddestillat aus dem bestehenden Inventar-Scope noetig (PL-02
`02_Normen` weiterhin 0 offene `[ ]`), stattdessen Vertiefungsstufe (b) **Retro-Verifikation**
plus die Aufarbeitung von zwei Reichweiten-Luecken, die Run 30 hinterlassen hatte.

**Ergebnis in einem Satz:** Alle fuenf Destillate, die nach ihrer ersten Pruefrunde als
korrigiert galten, wurden in der zweiten Runde **erneut beanstandet** — zusammen **78 Befunde**,
darunter **zwei echte Regressionen**, bei denen die erste Runde korrekte Werte durch falsche
ersetzt bzw. richtige Information geloescht hatte.

---

## 1. Voraussetzungen

- NAS gemountet, Zugriffs-Check auf ein Test-PDF unter `PL - 03 Brandschutz/` erfolgreich
  (kein TCC-Block, Inhalt lesbar). Kein Fallback ueber den M365-Connector noetig.
- Run-Nummer erst nach Sicht der juengsten `outputs/`-Datei belegt (Methodik-Pflicht seit Run 22):
  `2026-07-27_normen-nacht-run30.md` existiert → dieser Lauf ist **Run 31**.
- Frischecheck Dateibestand: PL-02 459 SIA-PDF / 58 VKF-Dateien, PL-03 152 Dateien
  (105 PDF) — keine neuen Dateien seit dem 20.07.2026.

## 2. Vertiefungsstufe (b) — Retro-Verifikation, 5 Destillate, 78 Befunde

Fuenf unabhaengige Widerlegungs-Agenten, scope-getrennt gegen die Original-PDFs. Alle
Verdikte BEANSTANDET; alle Befunde eingearbeitet; alle fuenf Destillate bleiben bewusst
`speculative`, weil kein Nulldurchgang zustande kam.

| Destillat | Runde | Befunde | Schwerste Einzelbefunde |
|---|---|---|---|
| `lignum-4-1-…-feuerwiderstand.md` | 2. | **26** (Teil A/B 12, Teil C 14) | 40-mm-Abgrenzung ins Gegenteil verkehrt (Ausschluss- als Einschlusskriterium); 12–15-Minuten-Aussage der falschen Kategorie zugeordnet; Ausnahmeregel von den Decken auf die linearen Bauteile verschoben und Klasse invertiert; K/F/BSP-Gruppenzuordnung falsch (F gehoert zu den Brandschutzplatten, K steht in beiden Spalten); Wandtraglast je Systemtyp statt je Feuerwiderstandsklasse; Tab. 447-1 Alternativen als Kombination dargestellt; drei Faelle mit Werten aus der falschen Tabellenspalte |
| `lignum-4-2-anschluesse-feuerwiderstand.md` | 2. | **18** + 10 fehlende Kernziffern | Brettstapel/Brettschichtholz-Festigkeitsklassen vertauscht (C24 ↔ GL24k); dreimal dasselbe Muster: EI90-Werte als EI60 ausgegeben und die echte EI60-Zeile (BSP30) fehlte; Mindestauflager dem falschen Beplankungsfall zugeordnet (40/60/80 statt 100/120/140 mm); Temperaturkriterien 250/270 °C und 140/180 °C vertauscht; kumulative Anforderung zur Alternative erweicht («und» → «oder») |
| `lignum-lignatec-brandschutz.md` | 2. | **17** | Tab. 3 Brandabschnitt 4 Geschosse ist EI60 (baulich), nicht EI30 — der Sprinkler-Wert war als Baulich-Wert ausgewiesen; Tab. 3 hat sieben statt acht Geschoss-Spalten (bb/nbb sind Varianten derselben Spalte); der Geschoss-Katalog Baulich/Sprinkler gehoert zu Ziff. 3.1.2 **Korridore**, nicht zu 3.1.1 Treppenanlagen; Tab. 4 Korridor 5–6 Geschosse laesst verkleidete Holzbauteile zu (das Destillat schloss Holz aus); REI60(nbb) beim Treppenhaus erst ab 4 Geschossen; ISSN falsch |
| `sia-d0165-2000-kennzahlen-immobilienmanagement.md` | 2. | **17** | **Regression:** die Erstrunde hatte die Honorar-Sammelcodes BKP 19-99 / EKG W1-W6 als «im Original nicht auffindbar» geloescht — beides steht auf S. 32 f.; **zwei sachlich falsche Offene-Punkte-Nachtraege** der Erstrunde (die S.-41-Werte sind aus den Sternwerten herleitbar; das VF-Label auf S. 38 ist lesbar und lautet VF 9.1); Ausgabedatum «Juli 2000» nirgends belegt (Impressum nennt nur «Ausgabe 2000»); Schaetzerhandbuch-Kuerzel im Original SVGK, nicht SVKG; nicht existierende «DIN 416» in einer Kapitelueberschrift |
| `vkf-ah-1001-15-wohnbauten.md` | Fassungs-Delta | **28 materiell / 12 redaktionell** | siehe Abschnitt 3 |

### Der Methodik-Befund (differenziert das bisherige Bild)

Seit Run 23/24 gilt in dieser KB der Satz «frisch nachgetragener Text ist die hoechste
Fehlerquelle». Run 31 zeigt: **das stimmt nicht pauschal, sondern beschreibt ein Risiko, das
je Textabschnitt unterschiedlich eintritt.**

- **Bestaetigt** bei Lignatec (beide Erstrunden-Korrekturen enthielten neue Fehler), bei
  SIA D 0165 (fuenf von neun schweren Befunden lagen in Passagen der Erstrunde) und bei
  Lignum 4.1 Teil C (Regression Tab. 446-1).
- **Widerlegt** bei Lignum 4.1 Teil A/B (alle sechs Erstrunden-Korrekturen hielten, 0 Befunde;
  die neuen Fehler lagen ausschliesslich in den unangetasteten Passagen) und bei Lignum 4.2
  (beide Erstrunden-Korrekturen hielten).

**Zwei Regressionen** sind der eigentlich neue Befund: eine Verifikationsrunde kann ein
Destillat auch **verschlechtern**. Tab. 446-1 (Lignum 4.1): die Erstrunde hob die korrekte
Untergrenze 50 mm faelschlich auf 60 mm. SIA D 0165: die Erstrunde loeschte belegte
Information. Beide sind zurueckgenommen.

**Konsequenz:** «einmal adversarial geprueft» ist kein hinreichender Grund fuer `established`.
Die Statushebung sollte einen **sauberen Nulldurchgang** verlangen, nicht eine bestandene
Korrekturrunde — so, wie es die Destillate dieses Laufs jetzt auch ausweisen.

## 3. Fassungs-Lücke VKF-Arbeitshilfe 1001-15 Wohnbauten (schwerster Sachbefund)

Die volle Fassung **01.01.2017 / Stand 17.05.2018** (29 S.) lag in einem PL-03-Ordner, den das
Inventar als «Plan-/Symbolvorlagen, keine Normtexte» eingestuft hatte. Das Destillat stand auf
`established` mit Fassung 2015.

- Amtliche Aenderungsliste (S. 2): **23 Ziffern** plus eine Fehlerkorrektur vom 17.05.2018;
  aufgeloest in Einzelabsaetze und Tabellen: **28 materielle, 12 redaktionelle** Aenderungen.
- **Die Run-30-Aussage «0 Abweichungen in Ziff. 3/5/6» ist widerlegt** — bei Ziff. 6 sogar
  inhaltlich (Ziff. 6.3.1 Fussnote [2] materiell geaendert). Ursache: der Abgleich lief gegen
  ein 4-seitiges Auszug-Dokument, das weder die Tabellenfussnoten noch die farbcodierten Zellen
  enthielt. Der Auszug ist im Destillat als Verifikationsquelle fuer unbrauchbar erklaert.
- **Zwei der wichtigsten Deltas steckten ausschliesslich in Zellfarben** und fehlen im
  Textlayer — ohne die 300-dpi-Renderings der fuenf farbcodierten Tabellen waeren sie
  unsichtbar geblieben. Das ist die praktische Bestaetigung der Methodik-Pflicht 4
  (Bildvergleich bei Normen mit Prinzipskizzen).

**Die fuenf praxisrelevantesten Deltas:**
1. Ziff. 6.3.1 Fussnote [2]: die 2'400-m²-Schwelle bezieht sich neu auf die Geschossflaeche
   **ueber Terrain**; die 30-Minuten-Reduktion einer brandabschnittsbildenden Geschossdecke
   REI 30 fuehrt neu **nur noch auf EI 30**, nicht auf «keine Anforderung».
2. Ziff. 4.1 Abs. 2–4 neu aufgebaut: statt «cr grundsaetzlich nicht anwendbar» neu «nicht ohne
   vollflaechige Abdeckung», plus Positivliste a–i.
3. Tab. 4.3.2 neue Fussnote [7]: einzelne lineare tragende Bauteile duerfen in vertikalen
   Fluchtwegen aus RF3 bestehen und **sichtbar** eingebaut werden.
4. Systematische Lockerung RF2/RF3 → RF3 (cr) an sechs Stellen. **Wer nach der 2015er-Fassung
   ausschreibt, verlangt hier mehr, als die geltende Fassung fordert.**
5. Ziff. 7.3.2 neu **geschoss**bezogen statt gebaeudebezogen.

Zusaetzlich: zwei neue Begriffe (Einliegerwohnung, Galerie) und eine Umnummerierung von
Kapitel 2 (2.3→2.5, 2.4→2.6) — alte Ziffernzitate laufen ins Leere. Konkordanztabelle im
Destillat ergaenzt. Status von `established` auf `speculative` gesenkt.

## 4. Reichweiten-Luecken des Inventars (zwei Ebenen)

### 4.1 PL-03 war nur zu 5 von 13 Ordnern erfasst

Run 30 meldete «alle 6 Unterordner erfasst». Tatsaechlich hat `PL - 03 Brandschutz/` **13**
Eintraege auf oberster Ebene; sieben waren nie gesichtet. Run 31 hat sie vollstaendig
aufgearbeitet:

- **`00 Brandschutzplaene bsvonline.ch` (35 Dateien) — Vollinventar erledigt.** Genau drei
  normrelevante PDFs: die 1001-15-Fassung 2017/2018 (Abschnitt 3); **VKF «Allgemein anerkannte
  Bauprodukte» V. 12.0** (TK Brandschutz 31.03.2017, 12 S.) — lag in **keiner anderen Ablage**
  und ist **neu destilliert**; BRL 15-15de Fassung 01.01.2017, MD5-identisch mit den bereits
  destillierten Kopien, kein Handlungsbedarf. Die uebrigen 32 Eintraege sind das
  bsvonline-**Musterplan-Set** (Feuerwehrplaene, BS-Plaene einfach/detailliert, Stoerfall
  ABC-Objekt) — Beispielplaene ohne eigene Norm-Aussage.
- **`00 Brandschutznachweis.ch` (4 PDF) — gesichtet, 2 destilliert, 2 begruendet ausgesondert.**
  Neu: `brandschutzfachstellen-anleitung-brandschutznachweis-v3.md` (Pflichtinhalte Textteil
  und Brandschutzplan, Verfahren) und `brandschutzplan-legende-symbole-2017.md` (Symbol- und
  Farbsystematik der Plandarstellung). Ausgesondert: das Klassifikations-Merkblatt (vollstaendig
  durch `vkf-brl-13-15` gedeckt) und der Muster-Brandschutznachweis (haelt selbst fest, dass
  daraus keine Anforderungen abgeleitet werden koennen).
- **`08 QS`** enthaelt eine **KI-generierte Erlaeuterung** zu einer QSS-1-Auflage, keinen
  Normtext — nicht destilliert (Echo-Schutz). Der Sachgehalt ist durch `vkf-brl-11-15` gedeckt.
- **`07 Blaues Buch`** (2 Screenshots) gehoert zur KB `baurecht`; **`11 Projekte`** leer;
  **`_Projekte Themen`** und **`z_Administration`** projektbezogen bzw. Verwaltung.

### 4.2 Eine Ebene hoeher: PL-02 wird nur zu einem Elftel gescannt

Das Inventar scannt aus PL-02 ausschliesslich `02_Normen/`. `PL - 02_Recht_Norm/` hat aber
**elf** Ordner; in den nie inventarisierten liegen rund **680 weitere PDFs**. Derselbe Fehlertyp
wie bei PL-03, nur eine Ebene hoeher.

Der normrelevante Kern ist ueberschaubar und benannt (BfU 9, GVZ 3, Suva 4, SWKI 1, Suissetec 2,
VSA 3, PAVIDENSA 9, `09_Sanitaereinrichtung` 15, ~20 lose Merkblaetter). Der Grossteil gehoert
NICHT in die Normen-KB: Minergie 79 und eco 55 → KB `energie`; Teilungsplan STWEG 71 → Skill
`stockwerkeigentum`; Projektadmin AHB 79 → keine Norm; Raumpilot/Neufert → Entwurfsliteratur.

**Fuer den Mac Mini gemeldet:** `PL - 02_Recht_Norm/Tiefgarage/1 VSS-Norm/` enthaelt echte
VSS-640-Normen (640 050/060/065/066/281/291a/578) ausserhalb von `02_Normen/VSS_Norm/`.
VSS ist Mini-Scope — hier bewusst nicht angefasst (Stations-Split).

### 4.3 Eine Run-30-Aussage widerlegt

«Unterordner `06 Lignum Brandschutz` hat KEIN PL-02-Gegenstueck (genuin neue Quelle)» ist
falsch: alle sechs Lignum-Dateien liegen **MD5-identisch** auch unter
`PL - 02_Recht_Norm/06_Richtlinien/Lignum Brandschutz/`. Sie waren nur ausserhalb von
`02_Normen/` abgelegt (der Ordner `02_Normen/Lignum/` ist leer). Die drei Lignum-Destillate
bleiben richtig und noetig — nur die Herkunftsaussage war es nicht.

## 5. Neue Destillate (3)

| Datei | Quelle | Status |
|---|---|---|
| `vkf-allgemein-anerkannte-bauprodukte-2017.md` | VKF «Allgemein anerkannte Bauprodukte», V. 12.0, TK Brandschutz 31.03.2017, 12 S. | speculative (Selbst-Gegenprobe, 5 Fehler korrigiert; unabhaengige Verifikation ausstehend) |
| `brandschutzfachstellen-anleitung-brandschutznachweis-v3.md` | Arbeitshilfe Brandschutzfachstellen Zentralschweiz, V.3, 4 S. | emerging (regionale Arbeitshilfe ohne eigenstaendige Rechtsverbindlichkeit) |
| `brandschutzplan-legende-symbole-2017.md` | Legendenblatt Brandschutzplan, Blattdatum 16.12.2016, Geltung ab 01.01.2017 | speculative (Herausgeber auf dem Blatt nicht ausgewiesen) |

Das Bauprodukte-Destillat schliesst eine echte Luecke: es ist die **Freistellungsliste** des
Schweizer Brandschutzes (Bauprodukte ohne Pruefnachweis und ohne VKF-Anerkennung verwendbar)
und damit die praktische Kehrseite von BRL 13-15 (Klassierung) und BRL 28-15 (Anerkennung).
Praxisrelevant fuer den Bestand: die Bauteil-Tabellen zu Beton, Mauerwerk und Decken sind
ausdruecklich auch fuer die Beurteilung bestehender Bauten gedacht. Wichtige Grenze: fuer
**Stahl, Stahl-Beton-Verbund und Holz enthaelt das Dokument keinerlei Tabellenwerte**.

## 6. Nachgefuehrt

- `destillate/INDEX.md`: 3 neue Zeilen; 4 Statuszeilen auf die Zweitrunden-Verdikte umgestellt;
  Fassungsangabe BRL 15-15 praezisiert (Titelblatt 01.01.2017 massgebend, nicht «rev. 2016»).
- `training/norm-inventar.md`: PL-03-Ordnertabelle auf alle 13 Eintraege vervollstaendigt;
  neuer Abschnitt «PL-02 Reichweite» mit Zahlen, Zuordnungsvorschlag und VSS-Meldung an den Mini.
- `wissen/normen/CHANGELOG.md`, `wiki/QUESTIONS.md`: Eintraege ergaenzt.
- Fuenf Destillate inhaltlich korrigiert (78 Befunde), je mit Abschnitt `## Verifikationsstand`.

## 7. Offen — davon zwei Entscheide bei Raphael

1. **Entscheid: Reichweite des Normen-Inventars.** Werden die normrelevanten Teilmengen der
   sechs nie gescannten PL-02-Ordner aufgenommen, oder bleibt die KB auf SIA/VKF/DIN/VSS/RAL
   begrenzt und die uebrigen Dokumente gehen an die Fach-Skills bzw. an `energie`/`baurecht`/
   `stockwerkeigentum`? Eine pauschale Aufnahme aller 680 PDFs waere falsch.
2. **Entscheid: Kriterium fuer `established`.** Run 31 legt nahe, die Statushebung an einen
   **sauberen Nulldurchgang** zu binden statt an eine bestandene Korrekturrunde. Das verlangt
   je Destillat systematisch eine Runde mehr.
3. **Dritte Runde faellig** fuer alle fuenf heute korrigierten Destillate, fokussiert auf die
   heute geaenderten Stellen — bei zwei nachgewiesenen Regressionen ist das keine Formalie.
4. **Unabhaengige Verifikation** der drei neuen Destillate (bisher nur Selbst-Gegenprobe).
5. **VKF-Merkblatt 2003-15** «Brandschutzplaene, Flucht- und Rettungswegplaene, Feuerwehrplaene»
   ist die Primaerquelle fuer Planpflicht und Symbolik und fehlt als Destillat. Bis dahin bleibt
   der amtliche Status des Symbolblatts unbestaetigt.
6. **Regionale Geltung** der beiden neuen Arbeitshilfen: Herausgeber sind sechs Zentralschweizer
   Fachstellen; fuer ZH-Projekte ist ungeprueft, ob die GVZ abweichende formelle Vorgaben kennt.
7. **Bring-Schulden unveraendert:** SIA 491 und SN EN 12193 (KB `baurecht`) in PL-02 UND PL-03
   erneut nicht gefunden — externe Beschaffung ueber den SIA-Shop noetig.

**Keine «SIA/VKF KOMPLETT»-Meldung.** Die Grunddestillation des erfassten Bestands ist
weiterhin vollstaendig, aber Run 31 hat in beiden Reichweiten-Ebenen und in der
Verifikationstiefe reale Arbeit gefunden — die Endbedingung ist nicht erreicht.
