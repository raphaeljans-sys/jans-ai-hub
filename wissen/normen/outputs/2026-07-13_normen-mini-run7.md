# Normen-Training Mini (Mac Mini) — Run 7, 13.07.2026

## Auftrag

Fortsetzung des DIN/VSS/RAL-Loops (Station Mac Mini) gemäß `training/PROGRAMM.md`. Das
DIN/VSS/RAL-Inventar ist seit Run 5 vollständig abgearbeitet; Run 6 hat mit Deepening-Stufe
(a) begonnen (Tiefendestillat SN 640 105a) und für diesen Lauf Stufe (b) Retro-Verifikation
empfohlen: eine Stichprobe bestehender DIN/VSS-Destillate mit unabhängigen
Widerlegungs-Agenten gegen das Original gegenprüfen (Verifikations-Pflicht, Rule
auto-verbesserungen 260712).

## Ablauf

1. NAS-Mount + SharePoint-Zugriff geprüft — beide erreichbar.
2. Git-Status: unstaged Änderung an `station-status/mac-mini.md` (Heartbeat-Datei eines
   anderen Prozesses) gefunden, committet, dann `git pull` — Repo war aktuell.
3. `training/norm-inventar.md` (0 offene DIN/VSS/RAL-Positionen bestätigt) und
   `destillate/INDEX.md` gelesen, um Stichproben-Kandidaten für Stufe (b) auszuwählen.
4. **8 Destillate parallel verifiziert** (Volltextabgleich Modell D, je 1 Agent, adversariale
   Anweisung: gezielt Fehler suchen, nicht bestätigen):
   - `din-4102-1-1998.md` — BEANSTANDET (2 Fehler)
   - `din-4102-2-1977.md` — BESTANDEN
   - `din-18040-1-2010.md` — BEANSTANDET (2 fehlende Kernziffern-Abschnitte)
   - `din-18040-2-2011.md` — BESTANDEN
   - `din-1946-6-2009.md` — BEANSTANDET (1 Fehler)
   - `din-277-1-2005.md` — BEANSTANDET (1 Fundstellenfehler + unbelegte Gleichsetzung)
   - `din-277-2-2005.md` — BESTANDEN
   - `vss-640050-1993.md` — BESTANDEN
5. Alle 4 beanstandeten Destillate korrigiert (siehe Details unten), Frontmatter-Status
   nachgeführt, `destillate/INDEX.md` aktualisiert, `wiki/QUESTIONS.md` mit Lauf-Eintrag
   ergänzt.

## Ergebnis im Detail

### din-4102-1-1998.md — Teil-Destillat, 2 Fehler korrigiert
- Ziff. 5.2.2.1 (Verbundbaustoffe): Destillat hatte die 20%-Schwelle fälschlich als harte
  Obergrenze/Verbot dargestellt. Original: es ist eine Beweislastregel — über 20% brennbarer
  Schichten reichen Ofen-/Heizwert-/Brandschachtprüfung allein nicht mehr für die
  Klassifizierung aus. Korrigiert.
- Anhang A (Rauchprüfung): Destillat hatte "Prüftemperaturen 200-600°C" als durchgehenden
  Bereich behauptet — tatsächlich sind es diskrete Stufen (250/300/350/400/450/550/ggf.
  600°C, Ziff. A.6.3.10), vermischt mit dem separaten Kalibrierkurven-Bereich 200-550°C
  (Ziff. A.4.3, Vergleichskörpertemperatur). Korrigiert, beide Werte sauber getrennt.
- Bleibt Teil-Destillat (Anhang B, S.21-25, weiterhin nicht im Volltext gelesen — laut
  Prüf-Agent leicht nachtragbar, da die Titelseite/Apparatur bereits vorliegt).

### din-18040-1-2010.md — auf established gehoben, 2 Lücken ergänzt
Das Destillat behauptete "keine offenen Ziffern (30/30 Seiten gelesen)" — das stimmte nur
für die Lektüre, nicht für die Kernziffern-Liste. Zwei praxisrelevante Abschnitte fehlten
komplett:
- Ziff. 5.2.1 Feste Bestuhlung (S. 24): Standflächen-Masse für Rollstuhlnutzer.
- Ziff. 5.3.6 Liegen (S. 29): Liegenmass 180×90×46-48 cm.
Beide ergänzt (Werte vom Prüf-Agent direkt aus dem Original zitiert), Vollständigkeits-Text
korrigiert. Alle übrigen ~30 geprüften Masszahlen (Bewegungsflächen, Türen, Rampen, Treppen,
Aufzüge, Sanitärräume) waren bereits 1:1 korrekt — daher trotz der Lücke auf `established`
gehoben.

### din-1946-6-2009.md — Teil-Destillat, 1 Fehler korrigiert
Ziff. 3.1.25-Anmerkung: "Bautenschutz" statt korrekt "Beheizung" als EnEV-§6-Zweckbezug
(der Fehler hätte den Sinn der Anmerkung verändert — die Norm nennt diesen Wortlaut viermal
identisch, S. 11-13). Korrigiert. Bleibt Teil-Destillat (~25% gelesen).

### din-277-1-2005.md — bleibt established, 2 Korrekturen
- Fundstellenfehler: "Ziff. 2, S. 3" für die DIN-276-Verweisung war falsch — korrekt ist
  Ziff. 1 (Anwendungsbereich) für den Inhalt, Ziff. 2 auf S. 2 (nicht S. 3) für die
  Fundstelle selbst. Korrigiert, beide Ziffern sauber getrennt referenziert.
- Unbelegte Gleichsetzung "Deutsches Pendant zu SIA 416" im Eröffnungssatz entfernt (DIN
  277-1 enthält selbst keinen SIA-Bezug) — Formulierung auf "vergleichbare Systematik,
  Begriffe nicht 1:1 gleichsetzen" präzisiert, konsistent mit dem bereits vorsichtigen
  JANS-Praxis-Transfer-Absatz.
- Zusätzlich in KGF-Beispielliste ergänzt: Wandöffnungen (Türen/Fenster/Durchgänge) zählen
  zur Konstruktions-Grundfläche, nicht zur Netto-Grundfläche (kontraintuitiv, fachlich
  relevant, fehlte in der Erstfassung).

### din-4102-2-1977.md, din-18040-2-2011.md, din-277-2-2005.md, vss-640050-1993.md
Keine Fehler gefunden. Status `established` gesetzt bzw. bestätigt.

## Fazit

4 von 8 Stichproben (50%) hatten reale inhaltliche Fehler — durchweg klein (falsche
Fundstelle, vermischte Zahlenwerte, unvollständige Aufzählung), aber bei mindestens zwei
Fällen (DIN 4102-1 Verbundbaustoff-Regel, DIN 1946-6 Zweckbezug) sinnverändernd genug, um
bei praktischer Nutzung zu Fehleinschätzungen zu führen. Die Verifikations-Pflicht (Rule
260712) bewährt sich damit als substanzieller Qualitätsschritt, nicht als Formalität —
Retro-Verifikation des bestehenden "destilliert"-Bestands (viele DIN/VSS-Einträge tragen
diesen unverifizierten Status) ist eine wertvolle Fortsetzung von Deepening-Stufe (b).

## Plan für den nächsten Lauf

- Weitere Stichprobe aus den ca. 15 verbleibenden unverifizierten DIN/VSS-Destillaten
  (Kandidaten: din-18065-2000, din-18299-2010, din-4844-2-2001, vss-640060-1994,
  vss-640066-1996, vss-640281-2006, vss-640578-2006, vss-40291-2021).
- Danach Übergang zu Stufe (c) Q&A-Selbstbefragung für die DIN/VSS-Kernnormen.
- DIN EN 1627:2011 bleibt offen (nur Teilbestand im SharePoint-Ordner, externe Beschaffung
  nötig — keine Aktion ohne neue Quelle möglich).

## Ressourcenverbrauch

8 parallele Verifikations-Agenten (je 1 PDF-Read-Zyklus, ~130-190k Tokens/Agent), 4
Destillat-Korrekturen, INDEX.md + QUESTIONS.md nachgeführt. Kein Workflow-Tool nötig (Agent-
Parallelisierung genügte für die Batchgrösse).
