# QUESTIONS-Abarbeitung — Lignatec L41-1/L41-2 geschlossen (24.08.2026)

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je Aussage,
nur `established`-Destillate zitierfähig, Rule `wissens-bibliothekar` beachten.

## Ausgangslage

CHANGELOG-Kopf gelesen: die KB gilt für den ursprünglichen SIA-Sweep-Auftrag seit dem
Vormittag des 24.08.2026 als vielfach unabhängig bestätigt gesättigt (>30 Läufe desselben
Tages, dokumentierter Betriebsbefund in `logbuch/fristen.md` bereits eskaliert, Rule
`auto-verbesserungen` 260803 verbietet ein weiteres identisches Duplikat). Statt eines 31.
Sättigungs-Nachweises wurde gezielt im separat geführten Run-41-Bestand
(`wiki/QUESTIONS.md`, Abschnitt „Run 41 (MacBook Pro, 01.08.2026)") nach Punkten gesucht, die
weder Kauf noch Entscheid Raphaels voraussetzen. Zwei Kandidaten identifiziert: L41-1
(Fussnote [a], drei fehlende Nutzungen) und L41-2 (nicht zugeordnete REI90(nbb)-Zeile in
Tabelle 4).

## Vorgehen

1. Laufende Prozesse geprüft (`ps aux`): kein Konkurrent auf dieser KB — der einzige Prozess
   mit identischem Auftragstext ist der eigene Lauf.
2. Quelle beschafft: der im Destillat-Frontmatter hinterlegte Pfad
   (`OneDrive-FreigegebeneBibliotheken–JANS/PL - 03 Brandschutz/06 Lignum Brandschutz/…`) war
   auf dieser Station nicht gemountet/synchronisiert. Per `mdfind` eine inhaltsgleiche
   Projektkopie lokalisiert: `AR - 01 Projekte/2414 THALWIL/06 Reglemente/_Archiv/11
   Brandschutz/Lignatec/Lignatec_brandschutz.pdf` (12 A3-Seiten, `pdfinfo` bestätigt A3-Format
   wie in der Seiten-Inventur beschrieben).
3. `pdftoppm -r 300 -png` auf Blatt 04 (S. 8-9, Tabelle 3) und Blatt 06 (S. 12-13, Tabelle 4),
   sowohl als volle A3-Seite als auch (via Pillow-Crop) als Halbseiten gelesen. Die volle Seite
   war für L41-2 nötig, um die Nutzungsspalte auf S. 12 pixelgenau gegen die Werte auf S. 13
   auszurichten — ein reiner Halbseiten-Split hätte die Zeilenzuordnung nicht gesichert.

## Ergebnis

**L41-1**: Fussnote [a] (S. 8 unten links) wörtlich gelesen — definiert «Beherbergungsbetriebe
[a]» als «Krankenhäuser, Alters- und Pflegeheime, Heime für Behinderte, Strafanstalten,
geschlossene Erziehungsanstalten». Die drei ursprünglich vermissten Nutzungen sind Teil der
Definition der bereits tabellierten Zeile, kein eigener Tabelleneintrag. Für JANS
Healthcare-Praxis relevant: Alters-/Pflegeheime und Heime für Behinderte tragen dieselbe
Anforderung wie Krankenhäuser (R60(nbb)/EI60(nbb) durchgehend ab 2 Geschossen, keine
Sprinkler-Reduktion). Vollständiger Wortlaut aller drei Fussnoten [a]/[b]/[c] in das Destillat
übernommen.

**L41-2**: die REI90(nbb)/EI90(nbb)-Zeile in Tabelle 4 gehört zu «Industrie-/Gewerbebauten
q > 1000 MJ/m² · Bauten mit unbekannter Nutzung», Baulich-Konzept, ab 4 Geschossen (Spalten 4,
5-6, 7-8) — nicht zu einer Beherbergungsbetriebe-Zeile. Zur Kontrolle die Beherbergungsbetriebe
[a]-Zeile in denselben Spalten mitgelesen: durchgehend REI60(nbb)/EI60(nbb), kein REI90. Diese
Nutzungszeile fehlte im Tabelle-4-Abschnitt des Destillats vollständig und ist jetzt als
eigener Eckwert-Absatz ergänzt.

## Geänderte Dateien

- `destillate/lignum-lignatec-brandschutz.md`: Tabelle-3-Abschnitt (Fussnoten [a]/[b]/[c]),
  Tabelle-4-Abschnitt (neue Nutzungszeile), neuer Verifikationsstand-Eintrag. `status` bleibt
  `speculative` — gezielte Prüfung zweier Punkte, keine vollständige Tabellenrunde.
- `wiki/QUESTIONS.md`: L41-1/L41-2 mit ✅-Blockquote geschlossen, Run-41-Kopfzeile aktualisiert.
- `CHANGELOG.md`: Eintrag oben.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: Destillat +45/-0, `QUESTIONS.md`
+30/-1 (die eine Löschung ist die ersetzte Run-41-Kopfzeile, per `git diff` gegengelesen — kein
fremder Inhalt betroffen), `CHANGELOG.md` +44/-0. Kein globales Suchen-und-Ersetzen verwendet.

## Offen geblieben (nicht bearbeitet, damit hier keine Spekulation entsteht)

L41-3 (getönte Deckschicht/Stiel Tabelle 2, aus der Quelle nicht ableitbar), L41-4
(vollständige Zellrunde Tabelle 3/4/5, Seiten-Inventur `training/lignatec-seiteninventur.md`
liegt bereit), G41-1 (Auslegungsfrage Feuerpolizei ZH), G41-2 (GVZ-Merkblattnummer, Web-Check
ergebnislos), Hindernisfreies Bauen H41-1 bis H41-4, PAVIDENSA P41-3 bis P41-5 — alle
unverändert wie im CHANGELOG-Kopf vom 24.08.2026 beschrieben, entweder Rechtsfrage,
Bring-Schuld oder aus der Quelle nicht entscheidbar.
