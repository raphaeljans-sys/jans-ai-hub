# Training-Run 51 — Immobilienbewertung (27.07.2026)

## Ausgangslage und Bruch mit der Delta-Serie

Die Läufe 39–50 waren achtzehn aufeinanderfolgende Delta-Null-Bestätigungsläufe. Jeder von
ihnen hat den Marktpuls-Check (E7) mit derselben Begründung übersprungen: «bewusst nicht
geprüft, Drossel-Rule 260714, nächster Wert 01.09.2026».

**Diese Begründung ist seit dem 25.07.2026 hinfällig.** Rule `auto-verbesserungen` 260725
(«Vollgas wieder aktiv») hebt die Drosselung vom 14.07. auf ausdrückliche Anweisung Raphaels
auf; die Läufe am 25.07. (Runs 43–50) haben die Formel dennoch weitergereicht. Statt eines
neunzehnten Bestätigungslaufs wurde deshalb zuerst die *Begründung* der Serie geprüft — und
der erste wieder zulässige Marktpuls-Check hat sofort zwei belegte neue Datenpunkte geliefert.

## Durchgeführte Prüfungen

1. **Kollisionsschutz (Rule 260724):** `ps aux | grep immobewertung` findet keine
   Zweitinstanz. Kein Rückzug nötig.
2. **Neuer Bewertungsfall:** `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE` direkt inkl.
   Änderungsdaten gelistet — 10 Fallordner, jüngster weiterhin **8855 Wangen,
   Bahnhofstrasse 27 (09.06.2026)**. Kein neuer Ingest-Kandidat.
3. **Marktpuls (E7), erster Web-Check seit Run 17 (12.07.):** zwei Recherche-Subagenten
   (Modell Sonnet, mechanische Stufe) auf Zins-Anker bzw. Miet-/Preisindizes; die beiden
   Treffer anschliessend im Hauptmodell **an der Primärquelle gegengelesen** (Modell D).

## Ergebnis — zwei neue belegte Datenpunkte

### 1. SMG/Homegate-Mietindex Juni 2026 = 134.0 Punkte

+0.3 Punkte (+0.2 %) gegenüber Mai, **+2.5 % YoY**. Publiziert 13.07.2026 (SMG Swiss
Marketplace Group, Medienmitteilung «Mietindex 06/2026» — Primärquelle direkt gegengelesen).

- Löst den bisherigen Anker Mai 2026 = 133.7 ab **und bestätigt ihn implizit** (134.0 − 0.3).
- Vierter Monat in Folge bei +2.5 % YoY — die Aufwärtsbewegung läuft in gleichmässigem Takt.
- Regionale YoY-Spitzen: **Nidwalden +8.3 %**, Graubünden +6.7 %, Genf +5.3 %; JANS-Kernmarkt
  **Zürich +3.3 %**, Bern +1.5 %; Städte-Spitze Stadt Luzern +6 %.
- Grösster Monatssprung: **Schwyz +2.3 % MoM** (JANS-Zweitmarkt); Gegenbewegung Lugano −1.1 %.
- **Bewertungsrelevanz:** das Neuvermietungspotenzial übertrifft die +0.7-%-Jahresprognose
  weiterhin um rund das Dreifache. Bei Ertragsbewertungen mit Neuvermietungsannahme ist die
  Prognose-Zahl der falsche Anker.

### 2. ⚠ Wüest Partner Immo-Monitoring Q2-2026 — Ist läuft der Prognose davon

Publiziert 16.07.2026 (via cash.ch, Primärmeldung direkt gegengelesen):
**Einfamilienhäuser +1.5 % QoQ / +4.3 % YoY**, **Eigentumswohnungen +1.0 % QoQ / +4.3 % YoY**.

- Das sind erstmals **realisierte Quartalszahlen** statt der Prognose. Gegenüber der
  Sommerprognose (EFH +3.1 % / ETW +2.8 % für das *Gesamtjahr*) liegt die realisierte
  Jahresrate beider Segmente **rund 1.2–1.5 Pp höher** — und das bereits nach dem ersten
  Halbjahr.
- Die Prognose wurde **nicht formell revidiert**; Prognose und Ist-Erhebung sind
  auseinandergelaufen.
- **Bewertungsrelevanz:** bei Vergleichswert-/Marktwertansätzen ist die **Ist-Reihe
  (+4.3 % YoY) der belastbarere Anker**, die Prognose (~+3 %) die konservative Untergrenze.
- Offen (als Annahme markiert, nicht belegt): ob WP die Jahresprognose im Herbst anhebt.

## Bewusst NICHT übernommen (Leitplanke)

Die **Rendite 10-jähriger Eidgenossen**. Die Recherche lieferte nur undatierte
Live-Snapshots (~0.42–0.51 %) ohne extrahierbaren Stichtag; das SNB-Datenportal
(`data.snb.ch`, Reihen `rendoblim`/`rendoeid`) ist dynamisch und per WebFetch nicht als
Tabelle auslesbar. Der KB-Wert ~0.32–0.40 % (Juni 2026) bleibt stehen, die mögliche
Aufwärtsdrift ist als neue Lücke **T-Eidgenossen-Rendite** erfasst statt geraten.

## Unverändert bestätigt

- SNB-Leitzins **0.00 %** (Lagebeurteilung 18.06.2026; nächster Entscheid **24.09.2026**).
- Hypothekarischer Referenzzinssatz **1.25 %** (per 02.06.2026 bestätigt, nächste
  Publikation **01.09.2026**); massgebender Durchschnittszinssatz **1.31 % per 31.03.2026**
  — weiterhin klar unter der Erhöhungsschwelle 1.37 %.
- BFS-Baupreisindex **April 2026 = 100.6** (+1.0 % YoY), nächste Publikation Okt-2026.
- **SREBI Q2-2026 weiterhin nicht publiziert** — Q1-2026 = 0.69 «moderat» bleibt der Anker.
- Keine Anpassung der Diskont-/Kapitalisierungssätze.

## Geänderte Dateien

- `wiki/investorenmarkt-makro.md` — zwei belegte Ergänzungen, `last_updated` 2026-07-12 →
  2026-07-27, Frontmatter-`sources` um beide Primärquellen erweitert; Status bleibt
  `established` (keine Statushebung, daher kein separater Refuter-Lauf nötig — die
  Verifikation erfolgte durch Gegenlesung an der Primärquelle).
- `training/curriculum.md` — E7-Zeile aktualisiert, Stand Run 51 ergänzt.
- `wiki/wissensluecken.md` — neue Lücke T-Eidgenossen-Rendite, Run-51-Zeile.
- `CHANGELOG.md` — Eintrag 2026-07-27 zuoberst.

## Kernlektion

**Eine aus dem Vorlauf übernommene Auslassungs-Begründung ist bei jedem Lauf gegen die
geltende Rule-Lage zu prüfen, nicht zu kopieren.** Zwölf Läufe haben «Drossel-Rule 260714»
weitergereicht, nachdem diese Rule aufgehoben war, und daraus «kein neuer Befund»
geschlossen — die Delta-Null-Serie war zuletzt ein Artefakt der kopierten Begründung, nicht
des Marktes. Dieselbe Mechanik wie die Run-36-Lektion (ein als «geparkt» markierter
Restposten verdeckte eine Falschangabe): bei Saturierung ist die Prüfung der eigenen
Annahmen der ergiebigere Kandidat als eine weitere Bestätigungsrunde.

## Offene Pendenzen (nicht erneut eskaliert)

Alle vier stehen bereits in `logbuch/fristen.md` bzw. `wiki/wissensluecken.md` und werden
gemäss der Meldekanal-Lektion (Run 36/38) hier nicht wiederholt gemeldet: Loop-Rücktaktung
(19.07.), Oberrieden-Höhenkorrektur (17.07.), T-Regelgeschoss (0.70 vs. 0.75, Fachentscheid
Raphael), T-Umlaut (Health-Check 23.07.).

## Nächster sinnvoller Auslöser

Der Marktpuls ist damit wieder ein tragender Lauf-Inhalt statt einer Auslassung. Konkrete
Termine: **Mietindex Juli 2026** (Mitte August), **SREBI Q2-2026** (erwartet ~09.2026),
**Referenzzins-Publikation 01.09.2026** (Stichtag 30.06.2026), **BFS-Baupreisindex
Okt-2026**, WP-Herbstprognose (ob die Jahresprognose an die Ist-Werte angehoben wird).
Dazu unverändert: neuer JANS-Bewertungsfall oder eine der Raphael-Bring-Schulden
(D1/D2/D5/D10).
