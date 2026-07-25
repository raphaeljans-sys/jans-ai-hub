# Wissens-Health-Check: projekt-lessons — 2026-07-25

## Zusammenfassung
| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 (leicht) |
| G Promotion-Kandidaten | 1 (State-Files veraltet) |

## Top-3 (Raphaels Aufmerksamkeit)
1. **Erster Inhalt seit Anlage (02.06.2026):** Der Artikel `kispi-lbw-rohdichte-800`
   (23.07.2026, status `established`) durchbricht den seit zwei Health-Checks (01.07.,
   22.07.) bestaetigten Leerstand — allerdings nicht ueber den empfohlenen Bootstrap-Weg
   (3-5 Faelle aus dem Logbuch), sondern als direkte Ad-hoc-Recherche zu einer konkreten
   Bauleitungs-Frage (KISPI, Rohdichte-Vorgabe). Guter Beleg, dass der Compounding-Loop
   ("Antwort als Report, dann pruefen ob Wiki-Artikel entsteht") funktioniert — die
   groessere Bootstrap-Pendenz aus logbuch/fristen.md bleibt trotzdem offen.
2. **State-Files nach dem Neuzugang nicht vollstaendig nachgefuehrt:** `INDEX.md`
   verlinkt den neuen Artikel korrekt im Abschnitt "Bauleitung/Ausführung", aber die
   Statistik-Fusszeile ("Artikel im Wiki: 0", Stand 02.06.2026) und `QUESTIONS.md`
   ("KB frisch angelegt, noch kein Material eingearbeitet") wurden beim Anlegen des
   Artikels am 23.07. nicht mitaktualisiert — Nebenwirkung, kein inhaltlicher Fehler.
   Als Teil dieses Checks nachgefuehrt (siehe Details F/G).
3. **Artikelstruktur weicht von der KB-Schreibregel ab:** `CLAUDE.md` verlangt je
   Lesson-Artikel "Situation → was passiert ist → Ursache → Konsequenz → Regel/
   Empfehlung fuers naechste Mal". Der Artikel nutzt stattdessen "Beweiskette (5
   Glieder) → Fazit → Verallgemeinerbare Lesson → Projekt-Ablage" — inhaltlich
   gleichwertig (Beweiskette = Situation/Ursache, Fazit = Konsequenz, Verallgemeinerbare
   Lesson = Regel), aber andere Ueberschriften. Nachvollziehbar, weil dieser Fall eine
   **Verifikation** ("Vorgabe X ist korrekt") statt eines **Fehlerfalls** ist, fuer den
   das Schema urspruenglich gedacht war — die KB-Regel deckt bislang nur den
   Fehlerfall-Typus ab.

## Details je Audit

### A. Widersprueche
Keine. Weiterhin nur 1 Wiki-Artikel, kein zweites Thema zum Abgleich vorhanden.

### B. Kaputte Backlinks & Orphans
Keine. Der Artikel hat `links: []` (keine internen `[[...]]`-Verweise ausser der
Textreferenz auf `wissen/normen/wiki/en-520-gipsplattentypen.md`, die als Klartext-Pfad
und nicht als Wiki-Link gefuehrt wird — Datei geprueft, existiert). INDEX.md verlinkt
`[[kispi-lbw-rohdichte-800]]` korrekt, kein Orphan.

### C. Unbelegte Claims
Keine. Alle drei zentralen Aussagen des Artikels sind belegt: (1) DFIR = EN 520 Typ D
= Rohdichte ≥ 800 kg/m³ → Rigips-Normbroschüre + Schwester-Artikel im KB `normen`;
(2) Erstellungs-LV 271.13 schreibt DFIR vor → DS3 File-25311424; (3) verbaut wurden
Duraline Vario/Habito → Truninger-DS3-Unternehmerdokumentation LOS 271.13. Fünf Quellen
im Frontmatter, durchgaengig mit Fundort/Dateiname.

### D. RAW-Coverage
`raw/_INGESTED.md` weiterhin leeres Register (0 Eintraege) — der neue Artikel wurde
nicht über einen `raw/`-Dump kompiliert, sondern direkt aus Projektablage/DS3/Web
recherchiert (legitimer Compounding-Pfad gemaess `wissens-bibliothekar.md`, nicht nur
"Bulk-Reinkippen"). Keine Coverage-Luecke, da nichts in `raw/` liegt, das nicht
abgedeckt waere. Empfehlung unveraendert: der Register-Eintrag koennte nachtraeglich
die Primaerquellen (DS3-File-IDs) referenzieren, ist aber kein Pflichtfeld, wenn `raw/`
gar nicht als Zwischenstation genutzt wurde.

### E. Veraltete Artikel
Keine. `last_updated: 2026-07-23`, 2 Tage alt, keine neuere Evidenz seither ersichtlich.

### F. Schreibregel-Verstoesse
1 leichter Fund: Artikelstruktur nutzt eigene Ueberschriften statt der in `CLAUDE.md`
vorgegebenen Kette Situation→was passiert→Ursache→Konsequenz→Regel (siehe Top-3 Punkt 3).
Inhaltlich vollstaendig, Frontmatter korrekt (title/status/last_updated/sources/links),
Schweizer Hochdeutsch mit echten Umlauten, kein ß, keine dekorativen Symbole. Kein
Fix in Phase 1 (Formulierungsfrage, keine Falschaussage) — Vorschlag: `CLAUDE.md` um
einen zweiten zulaessigen Artikeltyp "Verifikation/Klärung" ergänzen, sobald ein
zweiter Fall dieser Art auftritt (noch kein Muster bei n=1).

### G. Promotion-Kandidaten
Kein Artikel-Status zu promoten (bereits `established`, hoechste Stufe). Aber:
State-File-Pflege nachgeholt — `INDEX.md`-Statistik und `QUESTIONS.md`-Kopfzeile
waren seit dem Artikel-Neuzugang vom 23.07. veraltet (zeigten weiterhin "0 Artikel" /
"noch kein Material"), obwohl 1 etablierter Artikel vorliegt. Im Rahmen dieses Checks
nicht-destruktiv korrigiert (reine Bestandsangleichung, keine inhaltliche Aenderung).

## Empfehlung
Die grosse Bootstrap-Pendenz (logbuch/fristen.md, Eintrag 22.07.) bleibt bestehen und
sinnvoll: 3-5 reale, abgeschlossene Faelle aus dem Logbuch (KISPI Los 273.35
Roethlisberger-Preischeck, SBB-Naeherbaurecht Thalwil 2414) sind weiterhin nicht
kompiliert. Der 23.07.-Artikel zeigt einen zweiten, ebenfalls gueltigen Befuellungsweg
(Ad-hoc-Anfrage → Report → Wiki), der keinen dedizierten Bootstrap-Lauf braucht — beide
Wege koennen parallel laufen. Fristen-Pendenz-Notiz entsprechend ergaenzt (Teilfortschritt
vermerkt, Kernempfehlung bleibt offen).

## Fazit
Kerngesund, nicht mehr leer. Erster Artikel etabliert und sauber belegt; einzige Funde
sind Bestandspflege (State-Files) und eine kleine, unkritische Schema-Frage bei n=1 —
kein Handlungsdruck vor dem naechsten reellen Zuwachs.
