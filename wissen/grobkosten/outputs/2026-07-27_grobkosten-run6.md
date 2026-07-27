# Grobkosten-Trainingslauf Run 6 — 27.07.2026

## Kollisionscheck

`ps aux | grep grobkosten-training` zeigte genau einen Treffer — per PPID-Abgleich als die
eigene Parent-Instanz dieses Laufs identifiziert (keine echte Zweitinstanz auf diesem Host).

## Ausgangslage

Nach Run 5 (`wiki/QUESTIONS.md`) waren `AR - 01 Projekte`, `AR - 07 Archiv` und `IMMO - 06
Kennwerte` bereits geprüft. Vorschlag für Run 6: vier weitere Bibliotheken sichten —
`AR - 03 Studien`, `IMMO - 01 Projekte`, `IMMO - 02/03/05`, und die komplett ungesichtete
zweite SharePoint-Bibliothek `OneDrive-FreigegebeneBibliotheken–RaphaelJans-ArchitektenETH`.

## Vorgehen

Vier parallele Subagenten (Modell sonnet, Minimum-Viable-Model-Politik: mechanische
Ordner-/Dokument-Exploration nicht im Hauptkontext) haben je einen Bereich systematisch
durchsucht (find nach Kosten-Keywords + Sichtprüfung jedes Treffers). Die Ergebnisse wurden im
Hauptkontext geprüft, gegen die bestehende KB-Historie abgeglichen (Dubletten-Check gegen
bereits bekannte Projekte) und die Promotions-/Verwertbarkeitsentscheide getroffen.

## Ergebnis

**Zwei neue Einzelfälle in `wiki/kennwerte.md` aufgenommen:**

| Projekt | Kennwert | Reife |
|---|---|---|
| 8155 Niederhasli, Seestrasse 64 | 1'032 CHF/m³ GV | Einzelfall n=1 — stärkster bisheriger Beleg (explizite BKP-1-5-Gliederung + explizites GV im selben Dokument) |
| 2001 Haus Deuber, Thalwil | 1'086 CHF/m³ GV | Einzelfall n=1 (eBKP-H-Näherung) |

**Zwei weitere Rohbelege dokumentiert, aber NICHT promoviert** (offene Scope-/
Bezeichnungsfragen): 2411 Wald Haselstudstrasse (BKP-1-9-vs-1-5-Vorbehalt), 8123 Ebmatingen Im
Grossacher 2 zweites Dokument (GV nicht explizit, keine Rückrechnung).

**Drei identifizierte, aber zurückgestellte Kandidaten** für Run 7: Pre-Check-Tool 2305
Wädenswil, 2304 Waedenswil Residualwert-Tool, Langnau Giebelweg 12.

**Zwei Bibliotheken vollständig geprüft und komplett out of scope:** `IMMO - 02 UBSFS`
(Gemeinde-Marktstatistik), `IMMO - 05 Bodenpreise` (Landpreise).

**Zweite SharePoint-Bibliothek vollständig geprüft:** nur 4 Dateien insgesamt, keine
verwertbaren Kostendaten.

**Möglicher Baustein für Stufe 4 (Teuerungs-Normalisierung) identifiziert:** Zürcher Index der
Wohnbaukosten 1939-2004 (`IMMO - 03 KNOW-HOW/06 Schaetzungen/schaetzungsanleitung_kap5.pdf`) —
noch nicht bewertet/verkettet mit dem BFS-Index.

## Neue offene Fragen (Details `wiki/QUESTIONS.md`)

1. Ein in mehreren JANS-eigenen Pre-Check-/Residualwert-Tools verwendeter Umrechnungsfaktor
   (BKP2 → Gesamt = 1.13) wird uneinheitlich als "BKP 1-9" bzw. "BKP 1-5" bezeichnet —
   ungeklärt, ob BKP 9 (Ausstattung) im Total enthalten ist. Betrifft die Wald-Werte.
2. Das Standard-Label "norm, eloquent" taucht wortgleich in zwei unabhängigen Projekten (Haus
   Deuber, Reckholdern) auf — mutmasslich ein fixer Vorlagentext des JANS-GKB-Tools, keine
   projektspezifische Einschätzung. Für künftige Läufe nicht als verlässliche Standard-Angabe
   werten.
3. Trotz rechnerisch n≥2 für "MFH" (Grubenackerstrasse, Haus Deuber, Niederhasli, Wald) bewusst
   KEINE Median-Bildung ausgelöst — Standards uneinheitlich/unklar, Wald mit Vorbehalt. Erst
   nach Klärung von Frage 1+2 erwägen.

## Nebenbefund (kein grobkosten-Thema, zur Kenntnis)

Acht Projektordner unter `AR - 03 Studien` (2304, 2305, 2408, 2409, 2412, 2513, 2514, 2515)
teilen ein identisches, nie projektspezifisch ausgefülltes GKS-Copy-Paste-Template (GV 1'668
m³, 950-1'050 CHF/m³) — ein liegen gebliebener Platzhalter ohne reale Projektwerte. Keine
Aktion in diesem autonomen Lauf (keine Rückfrage/Mail), nur als Datenqualitäts-Beobachtung
festgehalten.

## Nachgeführte Dateien

- `raw/8155-niederhasli-seestrasse64.md` (neu)
- `raw/2001-haus-deuber-thalwil.md` (neu)
- `raw/2411-wald-haselstudstrasse.md` (neu)
- `raw/2412-ebmatingen-grossacher.md` (Addendum)
- `wiki/kennwerte.md` (neue Run-6-Sektion, Frontmatter, Provenienz-Historie)
- `wiki/QUESTIONS.md` (neuer Eintrag)
- `wiki/INDEX.md` (Stand aktualisiert)
- `training/quellen-inventar.md` (Run-6-Abschnitt)
- `raw/_INGESTED.md` (vier neue Zeilen)
- `CHANGELOG.md` (neuer Eintrag)

## Vorschlag für Run 7

Die drei zurückgestellten Kandidaten extrahieren — insbesondere das Pre-Check-Tool 2305
Wädenswil direkt aus der Exceldatei öffnen, um Frage 1 (BKP-1-9-vs-1-5-Faktor) aufzulösen.
Danach MFH-Median-Bildung neu prüfen.
