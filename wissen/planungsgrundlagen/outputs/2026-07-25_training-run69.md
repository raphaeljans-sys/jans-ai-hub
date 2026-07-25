# Training Run 69 — Kartenportale + Energie (Token-Vollgas)

**Datum:** 2026-07-25 · **Rotation:** Kartenportale (PL-01) + Energie (PL-04) — nach Run 68
(Recht/Norm + Brandschutz), gemaess Rotation Kartenportale → Energie → Recht/Norm → Brandschutz.

## Ablauf

1. Stand gelesen: `curriculum.md` (Kartenportale K1-K59 alle `[x]`, Energie E1-E46/D1-D9
   alle `[x]`/`[~]` bis auf D9), `wiki/QUESTIONS.md` (nur zwei echte `[ ]`-Punkte in der
   gesamten KB: D9 und M4, siehe unten), letzte drei Reports (Run 66/67/68).
2. Run 67 hatte fuer Kartenportale/Energie bereits einen vollstaendigen Dateinamens-/Ordnerdiff
   gefahren und selbst empfohlen, einen weiteren Durchgang derselben Methode erst bei neuem
   SharePoint-Material zu wiederholen. Dieser Lauf hat das woertlich genommen: statt eines
   weiteren (voraussichtlich ergebnislosen) Diffs ein **deterministischer Datei-Frischecheck**
   (`find <PL-Ordner> -newer <Run-67-Report>`), der objektiv beantwortet, ob seither ueberhaupt
   neues Material auf SharePoint dazugekommen ist.

## Befund: Frischecheck (Kartenportale + Energie)

- `find "PL - 01 Kartenportale" -newer 2026-07-25_training-run67.md -type f` → **0 Treffer**.
- `find "PL - 04 Energie" -newer 2026-07-25_training-run67.md -type f` → **0 Treffer**.
- Es ist seit Run 67 kein einziges neues oder veraendertes File in beiden Ordnerbaeumen
  dazugekommen. Damit entfaellt die Grundlage fuer eine weitere Wiki-Vertiefung durch reines
  Quellenlesen — es gibt schlicht kein ungelesenes Material mehr.

## Befund: die zwei verbleibenden offenen QUESTIONS-Punkte

- **D9 (offen seit Run 36, zuletzt Run 56 erneut geprueft):** realer MFH-/ZEV-Betriebskostenfall
  (Eigenverbrauchsgemeinschaft, GREIV ≥100 kWp) fehlt weiterhin — der einzige vorhandene
  Betriebsenergie-Beleg ist der bereits dokumentierte EFH-Fall. Kein neues Material in
  `_Betriebsenergie/` (0 Treffer im Frischecheck). Bleibt **bewusst offen**, bis ein reales
  JANS-MFH-PV-Projekt mit Verbrauchs-/Kostendaten vorliegt — nicht mit synthetischen Zahlen
  fuellbar (Rule `identifikatoren-verifizieren`: nichts erfinden).
- **M4 (KB-weite Umlaut-Ersatzschreibung + 2 Artikel ohne Frontmatter):** explizit als Aufgabe
  fuer einen dedizierten `korrektur`-Lauf vermerkt (Run 68), nicht Gegenstand dieses
  Domaenen-Trainingslaufs — unveraendert offen, keine Aktion in diesem Lauf.

## Refresh-Check MuKEn-2025-ZH-Ueberfuehrung (E5/E9)

Da kein neues Rohmaterial vorlag, wurde stattdessen der periodische Web-Refresh fuer den einzigen
"lebenden" (sich extern aendern koennenden) Fakt der Domaene Energie gezogen:

- WebSearch "Kanton Zuerich EnerG Verordnung MuKEn 2025 Umsetzung Eigenstrom 20 W/m2
  Inkrafttreten 2026" + WebFetch `hev-zh.ch/politik/energie-umwelt/muken/`.
- Ergebnis: weiterhin **keine ZH-spezifische Vernehmlassung, kein Gesetzesentwurf, kein
  Umsetzungstermin** auffindbar — nur die generische EnDK-Timeline "Umsetzung 2025-2030".
  Unveraendert bestaetigt gegenueber dem letzten Check (Run 61, 2026-07-25) — n-te
  Refresh-Bestaetigung seit Run 14 (2026-07-04), kein neuer Datenstand.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf (reine Negativ-Bestaetigung + ein
unveraendert bestaetigter Refresh-Check). Kein Adversarial-Verify noetig — der Frischecheck ist
mechanisch-deterministisch (Dateisystem-Zeitstempel), der WebSearch-Refresh bestaetigt lediglich
den bereits mehrfach verifizierten Status quo ohne neue Sachaussage.

## Token-Vollgas-Bilanz

Kein neuer Wiki-Fund — bewusst, weil es nach dem Frischecheck schlicht kein ungelesenes Material
mehr gibt und die zwei verbleibenden offenen Punkte (D9, M4) beide explizit auf externe
Voraussetzungen warten (reales Projekt bzw. dedizierter Korrektur-Lauf), die dieser Loop nicht
selbst herstellen kann. **Damit bestaetigt dieser Lauf zusammen mit Run 68 (Recht/Norm +
Brandschutz, ebenfalls "kein Fund" nach dreifacher Methode) den Zustand: alle vier Domaenen der
KB Planungsgrundlagen sind nach mehrfachen unabhaengigen Scout-Methoden (Begriffs-Grep,
Tiefenscan, Dateinamen-Diff, jetzt Frischecheck) vollstaendig ausgeschoepft, solange kein neues
SharePoint-Material oder ein neuer realer Projektfall hinzukommt.** Bewusst keine kuenstlichen
Zusatzfragen erzeugt, um den Zielkorridor 10-16 Fragen/Lauf formal zu erfuellen (Rule
`wissens-bibliothekar`: nichts erfinden, keine Pseudo-Tiefe) — ein ehrlicher Null-Befund ist bei
dieser Faktenlage die korrekte Ausgabe.

## Empfehlung an Raphael (PROGRAMM.md §Intensivphase)

Die Intensivphase sieht vor, eine Ruecktaktung ins Nachtfenster vorzuschlagen, sobald "ein markant
besserer Wissensstand erreicht ist (Inventar/Rueckstaende abgearbeitet, keine auto-schliessbaren
Luecken)". Nach Run 68 + 69 trifft das fuer **alle vier Domaenen gleichzeitig** zu: kein
Curriculum-Punkt offen, kein neues Rohmaterial, die zwei verbleibenden offenen Punkte (D9/M4)
warten auf externe Ereignisse statt auf weitere Lese-Laeufe. Empfehlung: diesen Loop
(`planungsgrundlagen-training`) von "taeglich/Token-Vollgas" auf einen ereignisgetriebenen Modus
umstellen (nur bei neuem SharePoint-Material oder auf Anstoss eines realen Projekts erneut
fahren) — nicht stillschweigend umgesetzt, sondern hier als Vorschlag protokolliert.

## Naechster Schritt

Fuer den naechsten Recht/Norm+Brandschutz-Turnus (Run 70 laut Rotation): wie in Run 68
festgehalten, ebenfalls kein bekannter Backlog-Punkt. Ein weiterer Kartenportale/Energie-Turnus
lohnt sich erst wieder bei neuem SharePoint-Material (Frischecheck-Kommando ist jetzt als
wiederholbares Muster etabliert: `find "<PL-Ordner>" -newer <letzter-Report> -type f`) oder wenn
ein reales Projekt D9 aktiviert.
