---
quelle: gvz.ch «Versicherungsleistungen» (Prämienformel) + gvz.ch FAQ «Häufige Fragen Versicherung»
  (Wertvermehrungs-Beispiele inkl. PV, Prämiendifferenz-Mechanik) + gvz.ch «Meldepflichten und
  Rechtsgrundlagen» + gvz.ch «Bauzeitversicherung abschliessen» + gvz.ch Formular «Anmeldung kleine
  Wertvermehrung» + gvz.ch PDF «21photovoltaikanlagen-doku-pm.pdf» (nicht auslesbar) + Web-Recherche
  zu privaten Gebäudeversicherern im GUSTAVO-Kanton Schwyz (Mobiliar u.a.)
herausgeber: Gebäudeversicherung Kanton Zürich (GVZ); ergänzend private Versicherer (Mobiliar) für
  Kt. Schwyz als Vergleichsindikator
ausgabe: gvz.ch Web-Auftritt, Abruf 2026-07-25 (kein Ausgabedatum auf den Seiten vermerkt)
gelesen: Web-Recherche 2026-07-25 (Sonnet-Rechercheagent, WebSearch/WebFetch + direkter curl-Abruf
  der GVZ-Seiten mit Text-Extraktion zur Ziffern-genauen Verifikation)
datenstand: 2026-07-25
status: established (allgemeine GVZ-Prämienformel und Wertvermehrungs-Mechanik ziffern-genau am
  Original verifiziert; PV-/Speicher-SPEZIFISCHER Tarifzuschlag ist ein verifizierter Negativbefund —
  existiert bei der GVZ nicht als eigene Grösse; Kt. Schwyz bleibt ebenfalls Negativbefund)
last_updated: 2026-07-25
---

# Destillat — GVZ-Prämienmechanik bei PV-Anlage und Batteriespeicher

## Das Wichtigste in 1 Satz
Die GVZ kennt **keinen PV- oder Batteriespeicher-spezifischen Prämienzuschlag** — sie erhebt eine
**Einheitsprämie von 29 Rappen pro 1'000 Franken Versicherungswert** (0,29 ‰) auf **alle** Gebäude
unabhängig vom Einzelrisiko; eine PV-Anlage wirkt sich auf die Prämie **ausschliesslich indirekt**
aus, indem sie als «Wertvermehrung» den Gebäudeversicherungswert erhöht, auf den dann derselbe
Einheitssatz angewendet wird — für Batteriespeicher gibt es auf gvz.ch dazu gar keine eigene Aussage,
und für den GUSTAVO-Kanton Schwyz (private Feuerversicherung) ist keine vergleichbare öffentliche
Promille-Formel auffindbar.

## Kernaussagen mit Fundstellen

### 1. Die GVZ-Prämienformel (ziffern-genau am Original verifiziert)
Wörtlich von `gvz.ch/hauptnavigation/versicherung/versicherungsleistungen` (curl-Abruf 2026-07-25,
Volltext-Extraktion, Abschnitt «Prämie»):

> «Die GVZ setzt auf eine Einheitsprämie und erhebt trotz unterschiedlicher Risiken für alle Gebäude
> den gleichen Prämiensatz. Die jährliche Versicherungsprämie beläuft sich auf insgesamt 29 Rappen
> pro 1'000 Franken Versicherungswert. Sie setzt sich zusammen aus 19 Rappen Versicherungsprämie,
> 2 Rappen zugunsten der Erdbebenversicherung sowie 8 Rappen Brandschutzabgaben, die für den
> Brandschutz und zur Unterstützung der Feuerwehren eingesetzt werden. Die Mindestprämie pro Gebäude
> beträgt 10.00 Franken.»

Rechenbeispiel der GVZ selbst: «Die Prämie für ein Haus mit einem Versicherungswert von CHF 500'000
beträgt CHF 145.00 (500 x 0.29).» Dieselbe Formel und dasselbe Rechenbeispiel finden sich wortgleich
auch auf der FAQ-Seite (`haeufige-fragen1/haeufige-fragen-versicherung`), dort zusätzlich mit dem
Hinweis, dass Beträge unter CHF 10 weder in Rechnung gestellt noch zurückerstattet werden.

**Bedeutung für PV/Speicher:** Der Satz «erhebt trotz unterschiedlicher Risiken für alle Gebäude den
gleichen Prämiensatz» ist die entscheidende Aussage — sie schliesst explizit eine risikoabhängige
Differenzierung (und damit auch einen PV- oder Batteriespeicher-spezifischen Zuschlag) aus. Es gibt
bei der GVZ **keine Promille-Staffelung nach kWp oder kWh**, keine Sonderprämie für Solaranlagen und
keine gesonderte Tarifzeile für Batteriespeicher.

### 2. PV-Anlage als «Wertvermehrung» — der einzige Hebel auf die Prämie
Von der FAQ-Seite (Abschnitt «Was ist eine Wertvermehrung?»), wörtlich:

> «Wertvermehrend sind Investitionen in bisher nicht vorhandene Bestandteile des Gebäudes (z. B.
> energetische Sanierung von Dach oder Fassade, Einbau eines Cheminées oder einer Sauna,
> **Anbringung einer Photovoltaik-Anlage (PV) auf dem Dach**), der Ersatz von Bestandteilen mit einer
> deutlich höheren Wertigkeit […] oder wenn das Gebäudevolumen vergrössert wird.»

Die PV-Anlage wird von der GVZ selbst **explizit als Beispiel einer Wertvermehrung** genannt — sie
erhöht den Gebäudeversicherungswert um (im Regelfall) die Erstellungskosten der Anlage. Auf diesen
erhöhten Wert wird anschliessend derselbe Einheitssatz von 0,29 ‰ angewendet. Es gibt **keine eigene,
niedrigere oder höhere** Bewertungslogik für PV-Wertvermehrungen gegenüber anderen Wertvermehrungen
(Sanierung, Cheminée, Sauna, Küchenausbau) — die Mechanik ist identisch.

### 3. Meldeschwellen und Verfahren (ziffern-genau verifiziert)
Von `meldepflichten-und-rechtsgrundlagen` und `bauzeitversicherung-abschliessen` (beide curl-verifiziert):

- **Bis CHF 50'000 UND bis 50 % des aktuellen Versicherungswerts** («kleine Wertvermehrung»): laufende
  schriftliche Anmeldung genügt, **keine Schätzung nötig**, Anmeldung ist bereits vor Baubeginn möglich
  (Formular «Anmeldung kleine Wertvermehrung» — geprüft: das Formular selbst enthält **kein PV- oder
  Batteriespeicher-spezifisches Feld**, nur ein generisches Feld «Wertvermehrung (CHF)»).
- **Über CHF 50'000 ODER über 50 % des aktuellen Versicherungswerts**: Pflicht zur
  **Bauzeitversicherung vor Baubeginn** (Versicherungssumme = veranschlagte Baukosten bzw. bauliche
  Wertvermehrung inkl. Honorar und MWST); nach Bauvollendung muss ein **Schätzungsgesuch** für die
  definitive Neubewertung gestellt werden.
- Für eine durchschnittliche Aufdach-PV-Anlage eines Einfamilienhauses (Erstellungskosten meist im
  tiefen bis mittleren fünfstelligen Bereich) greift in der Regel der einfache Weg der «kleinen
  Wertvermehrung» — bei grossen Gewerbe-/MFH-Anlagen oder in Kombination mit Batteriespeicher kann die
  50'000-Franken-Schwelle überschritten werden und eine Schätzung nötig machen.

### 4. Prämienanpassung im Jahresverlauf (mit einer offenen Nuance)
Wörtlich von der FAQ-Seite:

> «Wird der Versicherungswert aufgrund einer Schätzung angepasst, so wird die Prämiendifferenz für
> den Rest des Jahres in Rechnung gestellt oder der zu viel bezahlte Betrag zurückerstattet. Beträge
> unter 10 Franken werden weder in Rechnung gestellt noch zurückerstattet.»

Diese Aussage ist wörtlich an eine **Schätzung** geknüpft (also den Weg für Wertvermehrungen über
CHF 50'000/50 %). Ob dieselbe unterjährige Pro-rata-Verrechnung auch bei einer «kleinen
Wertvermehrung» **ohne** Schätzung greift oder ob sich dort die Prämie erst auf den nächsten
Jahreswechsel hin anpasst, wird auf den geprüften Seiten **nicht explizit gesagt** — offener Punkt,
für eine verbindliche Bauherren-Aussage direkt bei der GVZ (versicherung@gvz.ch) zu verifizieren.

### 5. Batteriespeicher — auf gvz.ch keine eigene Prämienaussage
Auf keiner der geprüften GVZ-Seiten (Versicherungsleistungen, FAQ, Meldepflichten, Bauzeitversicherung,
Formular «Anmeldung kleine Wertvermehrung») kommt der Begriff «Batteriespeicher» oder «Speicher»
überhaupt vor. Batteriespeicher fallen der Logik nach ebenfalls unter «Wertvermehrung» (feste
Einrichtung, die den Gebäudewert erhöht) und würden denselben Einheitssatz auslösen — das ist aber
eine **Analogieschlussfolgerung dieser Recherche**, keine von der GVZ selbst getroffene Aussage.
Das separat verifizierte PDF `21photovoltaikanlagen-doku-pm.pdf` (auf gvz.ch verlinkt) liess sich
technisch nicht auslesen (stark komprimierter/kodierter PDF-Stream, kein Klartext extrahierbar) —
könnte bei erneutem Zugriff mit einem PDF-Textextraktor (statt WebFetch) weitere Details liefern und
bleibt ein offener Punkt für eine Folge-Recherche.

### 6. Kanton Schwyz — Negativbefund, gut begründet
Kt. Schwyz ist GUSTAVO-Kanton (keine kantonale Gebäudeversicherung mit Monopol, private
Feuerversicherer). Eine gezielte Suche nach einer mit der GVZ vergleichbaren öffentlichen
Promille-Formel bei den im Schwyzer Markt aktiven privaten Versicherern (u. a. Mobiliar) ergab:

- Die Mobiliar bietet einen **Prämienrechner** (individuelle Offerte online), aber **keine öffentlich
  publizierte Promille-Tabelle oder Formel** wie die GVZ.
- Private Versicherer kalkulieren Gebäudeversicherungsprämien typischerweise **individuell und
  risikobasiert** (Lage, Bauart, Deckungsumfang) statt über eine öffentliche Einheitsprämie — das ist
  der strukturelle Unterschied zum kantonalen Monopol und erklärt, warum keine GVZ-analoge Formel
  auffindbar ist.
- **Ehrlicher Negativbefund:** Es konnte keine primärquellenbelegte, öffentlich zugängliche
  Prämienmechanik für PV/Speicher bei einem in Kt. Schwyz aktiven privaten Gebäudeversicherer
  gefunden werden. Für eine konkrete Bauherren-Aussage in Kt. Schwyz muss der jeweilige private
  Versicherer direkt kontaktiert werden (kein Standardprozess, kein öffentlicher Tarif).

## Bauherren-Transfer

**Kt. Zürich (GVZ):**
1. Eine PV-Anlage erhöht den Gebäudeversicherungswert um ihre Erstellungskosten (Wertvermehrung) —
   sie löst **keinen** PV-spezifischen Zuschlagssatz aus, sondern denselben Einheitssatz von
   **0,29 ‰** (29 Rappen je CHF 1'000 Versicherungswert), der für das ganze Gebäude gilt.
2. Faustrechnung: PV-Erstellungskosten CHF 25'000 → Mehrprämie ca. CHF 7.25/Jahr (25 x 0.29); bei
   CHF 50'000 ca. CHF 14.50/Jahr — in der Praxis meist im Bereich der Mindestprämie/-differenz
   (Beträge unter CHF 10 werden nicht verrechnet).
3. Meldeweg: bis CHF 50'000 und bis 50 % des bisherigen Versicherungswerts → Formular «Anmeldung
   kleine Wertvermehrung», ohne Schätzung, auch vor Baubeginn möglich. Darüber (grosse MFH-/Gewerbe-
   Anlage, evtl. kombiniert mit Batteriespeicher) → Bauzeitversicherung vor Baubeginn + Schätzungsgesuch
   nach Fertigstellung.
4. Batteriespeicher: gvz.ch macht dazu keine eigene Aussage — mit der GVZ-Fachstelle
   (versicherung@gvz.ch) klären, ob/wie er separat zu melden ist.
5. Zeitpunkt der Prämienwirkung nach einer Schätzung: pro rata für den Rest des laufenden Jahres:
   bei einer «kleinen Wertvermehrung» ohne Schätzung ist das nicht explizit bestätigt — im Zweifel bei
   der GVZ nachfragen, nicht selbst festlegen.

**Kt. Schwyz:** keine öffentliche Formel verfügbar — die Prämienfolge einer PV-/Speicher-Meldung ist
individuell beim jeweiligen privaten Gebäudeversicherer der Bauherrschaft zu erfragen; nicht analog
zur GVZ-Formel rechnen.

## Offene Punkte
- Ob die unterjährige Pro-rata-Prämiendifferenz auch bei der «kleinen Wertvermehrung» (ohne
  Schätzung) greift, oder erst zum nächsten Jahreswechsel wirkt — auf den geprüften Seiten nicht
  explizit gesagt.
- Das GVZ-PDF `21photovoltaikanlagen-doku-pm.pdf` konnte technisch nicht ausgelesen werden (kodierter
  PDF-Stream) — Folge-Recherche mit dediziertem PDF-Textextraktor (z. B. `pdftotext`) statt WebFetch
  könnte zusätzliche PV-spezifische Reglementsdetails liefern.
- Batteriespeicher-spezifische GVZ-Aussage existiert nicht — Analogieschluss («gleiche Wertvermehrungs-
  Logik wie PV») ist plausibel, aber nicht von der GVZ selbst bestätigt.
- Kt. Schwyz: konkrete Tarifpraxis einzelner privater Versicherer (Mobiliar, Baloise, Zurich u. a.)
  zur PV-/Speicher-Wertvermehrung nicht recherchiert — projektspezifisch beim jeweiligen Versicherer
  zu klären.

Querbezug: `[[pv-blitzschutz-gebaeudeversicherung-ch]]` (Grundlagen Blitzschutz + Mitversicherung PV/
Batteriespeicher, GUSTAVO-Kantone), `[[batteriespeicher-heimspeicher-pv-ch]]` (Batteriespeicher
wirtschaftlich/technisch), `[[pv-solar-technologien]]`.
