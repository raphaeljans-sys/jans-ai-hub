# Training-Run 24 — KB Immobilienbewertung (2026-07-13)

## Ausgangslage

Run 23 hatte festgestellt: sechs Bestaetigungslaeufe in Folge ohne neuen materiellen
Befund, keine vom Loop selbststaendig schliessbare Aufgabe mehr im Ingest-/
Verifikations-Curriculum. Verbleibend nur Bring-Schulden Raphaels (D5 Margen-/
Finanzierungspraxis, D10 Original-Blatt-Bereinigung, D11 Index-Fortsetzung) und D6
(AZ/GFZ-Kennwerte), das als "Grossrecherche noetig, nicht in einem Trainingslauf zu
leisten" eingestuft war.

## Was dieser Lauf gemacht hat

1. **Bewertungsordner erneut geprueft** (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE`):
   keine Datei/kein Ordner neuer als 2026-07-10 → weiterhin **kein neuer JANS-
   Bewertungsfall** seit Wangen 8855 (bestaetigt seit Run 6/22).
2. **D6 direkt angegangen statt die Grossrecherche-Einschaetzung zu wiederholen.**
   Testweise Fetch der amtlichen Bau- und Zonenordnung (BZO) von **Thalwil** und
   **Waedenswil** (beide ZH, JANS-Bezugsmaerkte, bereits mit UBS-Fact-Sheets in
   `marktdaten-gemeinden/` vorhanden): `WebFetch` liefert bei diesen PDFs nur
   Binaerdaten (komprimierte PDF-Struktur), aber der **lokal zwischengespeicherte
   PDF-Anhang** liess sich per `pdftotext -layout` sauber als Text extrahieren.
   Ergebnis: beide Gemeinden haben eine klar strukturierte Tabelle **"Art. 3
   Grundmasse"** mit AZ/Vollgeschossen/Gebaeudehoehe/Grenzabstand je Wohnzone —
   vollstaendig, belegt, mit Artikelnummer.
3. **Neuer Wiki-Artikel [[az-gfz-kennwerte]]** angelegt: vollstaendige Grundmasse-
   Tabellen Thalwil (W1/W2/WG2-WGS/W3/WG3/WG4, AZ 30-70 %) und Waedenswil (W2/30%,
   W2/40%, W3/55%, W4/70%, WG3-WG5, AZ 30-85 %) inkl. Sonderregeln (Ausnuetzungs-
   Bonus behindertengerechtes Wohnen Waedenswil, reale vs. statutarische AZ Thalwil
   — AZreal liegt 48-82 % ueber AZ_BZO, wichtiger Befund fuer Volumenstudien-
   Kalibrierung). Kurzer Vergleich Thalwil ↔ Waedenswil (fast identisches Zonenraster,
   Waedenswil zusaetzlich WG5/85%).
4. **Marktpuls nicht erneut geprueft** — unveraendert seit Run 17 (2026-07-12), kein
   neuer Publikationstermin (SNB naechster Entscheid 09/2026, Referenzzins-Publikation
   01.09.2026) — kein Grenznutzen fuer einen taeglichen Web-Check.

## Korrektur der Vorlaufer-Einschaetzung

Die in Run 23 getroffene Aussage "D6 braucht eine Grossrecherche, nicht in einem
Trainingslauf zu leisten" war **zu pessimistisch**: pro Gemeinde ist es ein einzelner,
gut handhabbarer Fetch+Extraktions-Schritt (amtliche BZO-PDF → `pdftotext -layout` →
"Art. 3 Grundmasse"-Tabelle). Die Grossrecherche liegt im **Umfang** (11 Gemeinden in
`marktdaten-gemeinden/`), nicht in der Schwierigkeit der Methode je Gemeinde. Damit ist
diese KB wieder **nicht mehr in der reinen Bestaetigungsschleife** — es gibt eine klar
definierte, tractable Restarbeit fuer die naechsten Laeufe.

## Naechste Schritte

- Restliche 9 Gemeinden mit derselben Methode abarbeiten: Langnau am Albis, Zollikon,
  Maur, Regensdorf, Wald (alle ZH), Wangen, Einsiedeln (SZ), Muri (AG), Luzern.
- Danach D6 als weitgehend geschlossen markieren (Bemerkung: BZO-Stand ist eine
  Momentaufnahme, vor jeder Bewertung bei der Gemeinde verifizieren — Hinweis im
  Artikel bereits verankert).
- Bewertungsordner und Marktpuls bleiben Teil des Standard-Checks jedes Laufs (billig,
  aber notwendig fuer Aktualitaet).

## Registerpflege

- `wiki/wissensluecken.md`: D6-Zeile aktualisiert (2/11 Gemeinden erfasst, Methode
  bestaetigt tractabel), Run-24-Eintrag in Tabelle B ergaenzt.
- `wiki/INDEX.md`: neuer Eintrag [[az-gfz-kennwerte]] unter "Grundlagen & Daten".
- `wiki/marktdaten-gemeinden/zh-thalwil-8800.md` + `zh-waedenswil-8820.md`: Backlink
  auf [[az-gfz-kennwerte]] ergaenzt.
- `CHANGELOG.md`: Eintrag ergaenzt (siehe dort).
