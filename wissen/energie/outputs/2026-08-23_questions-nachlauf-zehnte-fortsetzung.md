# QUESTIONS-Nachlauf, zehnte Fortsetzung (Run 155) — 2026-08-23

## Auftrag

Weitere offene Fragen aus `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand,
dort weitermachen, wo Run 154 aufgehört hat. Zuerst CHANGELOG und letzten Laufreport gelesen.

## Vorgehen

1. Eigene, vollständige zeilenweise Durchsicht aller verbliebenen `- [ ]`/`- [~]`-Zeilen in
   `wiki/QUESTIONS.md` (dritte unabhängige Prüfung in Folge, nach Run 152 und Run 154).
2. Ergebnis: Run 154s Klassifikation bestätigt sich für alle dort genannten Punkte (E103, E94,
   E-S1, E-R148-1, E-R148-2, E-R149-4, E-R134-3, E-R129-5, E-WC32-1, zwei Fernwärme-Altzeilen,
   E-R134-4). Eine Zeile fehlte in Run 154s Aufzählung: **E-R129-4**, ein Teilbefund vom selben
   Tag (Büro-Diskrepanz AHB 25 m³/h/Person vs. SIA-2024-Auslegungswert 36 m³/(h·P)), der
   explizit als "eigene Klärung nötig" markiert war.
3. Konkreter nächster Schritt aus dem Eintrag selbst übernommen: SIA-2024:2006-Original erneut
   prüfen, ob die Standardwert-Spalte der betroffenen Tabellenzeile einen alternativen,
   niedrigeren Wert enthält.

## Befund

**SIA 2024:2006, Datenblatt 3.1 «Einzel-, Gruppenbüro», S. 34** (Original geladen via
M365-Graph-Connector, Site PL, Drive `02_Recht_Norm`, Pfad
`SIA_Merkblaetter/MERKBLAETTER/2024_2006_d.pdf`, Datei-ID `01XRK3TQ236LFFNE6LCZGJL4EUKJ5WD4VS`,
lokal mit `pdftotext -layout` extrahiert):

Die Tabellenzeile lautet (Rohtext):
```
Aussenluftvolumenstrom pro Person   Nichtraucher   V'e,P   m3/(hP)   [Auslegung] 36   [Standardwert] —   [Bereich] —
```

Die Spalten Standardwert und Bereich sind für **diese eine Grösse** leer — anders als bei den
beiden Nachbarzeilen «Spez. Aussenluftvolumenstrom Tag/Nacht», die alle drei Spalten befüllt
zeigen. Es existiert in der Quelle **kein** alternativer, niedrigerer Wert für den
Aussenluftvolumenstrom pro Person.

**Definitionstext, Kap. 2, S. 15:** «Der Aussenluftvolumenstrom wird pro Person (V'e,P) und –
aufgrund der [Personenzahl] … wie z.B. Büronutzung wird im Allgemeinen mit 36 m³/h pro Person
gerechnet» — mit Fundstellen-Marginalie **SIA 380/4**. Die IDA-Luftqualitätskategorien nach
SIA 382/1 werden im selben Kapitel nur für die Steuerung/Regelung des Ventilators erwähnt, nicht
für die Bemessung der Aussenluftrate selbst.

## Einordnung

Von den drei ursprünglich formulierten Erklärungshypothesen für die 25-vs-36-Diskrepanz:

1. **«AHB rechnete 2008 mit dem SIA-2024-Standardwert statt dem Auslegungswert»** — **widerlegt**,
   ein solcher Standardwert existiert für diese Grösse in der Quelle nicht.
2. **«Eine ältere/abweichende SIA-380/4-Fassung nannte einen anderen Wert»** — weiterhin offen.
   SIA 380/4 ist weder im NAS- noch im SharePoint-Bestand (PL-02) vorhanden und ist eine
   kostenpflichtige Norm (electrosuisse/SIA-Shop) — dieselbe Blockade wie beim Normkauf
   SIA 380/1:2016 unter E-R148-1.
3. **«Die Stadt Zürich hat 2008 eine eigene Wirtschaftlichkeitsabwägung getroffen»** — weiterhin
   offen, nicht recherchierbar ohne direkte Rückfrage bei der AHB-Fachstelle Energie und
   Gebäudetechnik.

E-R129-4 bleibt damit offen, ist aber nicht mehr ein unbegrenzter Rechercheauftrag, sondern
inhaltlich in derselben Kategorie wie E-R148-1: blockiert am Normkauf bzw. an einer externen
Rückfrage, die nicht per Websuche oder freiem PDF zu lösen ist.

## Register-Änderungen

- `wiki/QUESTIONS.md` — E-R129-4 um den Teilbefund ergänzt.
- `destillate/ahb-raummodul-buero.md` — Nachtrag-Absatz präzisiert, Frontmatter `last_updated`
  nachgezogen.
- `destillate/INDEX.md` — Zeile `ahb-raummodul-buero` nachgezogen.
- `CHANGELOG.md` — neuer Run-155-Abschnitt.

## Bestand für den nächsten Lauf

Nach dieser Prüfung ist kein weiterer, ohne Raphaels Entscheid, externe Freigabe oder Normkauf
lösbarer Rechercheauftrag mehr auffindbar. Der nächste sinnvolle Schritt ist entweder eine der in
`wiki/QUESTIONS.md` gelisteten Raphael-Entscheidungen einzuholen (insbesondere E-S1 Skill-Struktur,
seit 25+ Läufen entscheidungsreif; E103 Pflegeplatz-Kennwert; E-R148-1/E-R129-4 Normkauf
SIA 380/1:2016 bzw. SIA 380/4), oder ein neues Themenfeld per freier Wahl zu erschliessen, sofern
PL-02/PL-04 weiterhin ohne neue Datei bleiben.
