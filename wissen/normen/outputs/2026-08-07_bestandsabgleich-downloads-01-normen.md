# Bestandsabgleich: ~/Downloads/01 Normen gegen PL-02-Normenbibliothek

**Datum:** 2026-08-07 · **Anlass:** Frage Raphael (Mac Mini): Was in dieser Sammlung fehlt im
Bestand, und was davon stand auf der Beschaffungsliste? · **Methode:** Datei-Inventar beider
Seiten (544 Dateien Downloads, 658 Dateien `PL - 02_Recht_Norm/02_Normen/`), Normalisierung
auf Norm-Nummer + Ausgabejahr, Verdachtsfälle am Titelblatt verifiziert (pdftotext bzw.
Seiten-Rendering bei Scans ohne Textlayer).

## Technischer Kernbefund zuerst (Wiederholungsgefahr)

40 Dateinamen im Downloads-Ordner tragen **U+F022** (Private-Use-Zeichen, alter Mac/SMB-Ersatz
für «/», z.B. `118266-1_2017.pdf` = «118/266-1»). Ein naiver Dateinamen-Abgleich übersieht
genau diese 40 Dateien — und darunter liegen fast alle echten Neuzugänge. Bei künftigen
Bestandsabgleichen U+F022 immer als «/» normalisieren.

## A) Echte Neuzugänge (Nummer/Ausgabe nirgends in PL-02, Titelblatt verifiziert)

| Datei (Downloads) | Norm | Befund |
|---|---|---|
| `alle/118-C1_2026_d.pdf` | **SIA 118-C1:2026**, Korrigenda C1 zur SIA 118:2013 | Deckt exakt die Lücke aus REGISTER-Zeile SIA 118 (Run 45, 06.08.2026: «Inhalt der Korrigenda nicht eingesehen») |
| `alle/118•266-1_2017.pdf` | **SIA 118/266-1:2017** «Allgemeine Bedingungen für Mauerwerk», SN 507266-1, gültig ab 2017-09-01, 20 S. | Ersetzt SIA 118/266:2004 (im Haus nur f/i) |
| `alle/118•266-2_2017.pdf` | **SIA 118/266-2:2017** «Allgemeine Bedingungen für Natursteinmauerwerk», SN 507266-2, gültig ab 2017-09-01, 20 S. | **Ersetzt SIA 226:1976** — REGISTER führt SIA 226:1976 noch als «gültig 2013 ✓, Bestand ✓»; Zeile braucht Nachtrag |
| `alle/112•1_2017.pdf` | **SIA 112/1:2017** «Nachhaltiges Bauen — Hochbau», SN 530112/1, gültig ab 2017-09-01, 52 S. | Titelblatt: «Ersetzt SIA 112/1:2004». REGISTER führt 2005 als gültig; Bestand bisher nur `f/112-1_2005_f.pdf` |
| `alle/387•4_2017.pdf` | **SIA 387/4:2017** (Elektrizität in Gebäuden — Beleuchtung) | Nummer 387/4 bisher in keiner Sprache im Haus |
| `alle/281•3_2018_d.pdf` | **SIA 281/3:2018** | REGISTER 2013-gültig: 2002; im Haus nur `f/281_3_f.pdf`; Downloads bringt zusätzlich auch die 2002er deutsch |
| `alle/118•244_2006_d.pdf`, `118•246_2006_d.pdf`, `118•248_2006_d.pdf` | **SIA 118/244, 118/246, 118/248 (je 2006, deutsch)** | Diese drei 118er fehlten komplett (auch f/i nicht vorhanden) |
| `UPI - Stairs/mm43_Scale_06_upi.pdf`, `…_07_upi.pdf` | upi (bfu italienisch): Mb 0204 «Scale in case ed edifici pubblici» + Opuscolo «Ringhiere e parapetti» | Treppen/Geländer-Dokumentation; im Haus nur `DIN_Norm/Sonstiges/Skript_Treppen.pdf` |

## B) Deutsch-Erstfassungen (Norm im Haus bisher NUR französisch)

`alle/`-Scans, Nummern identisch mit vorhandenen f-Fassungen: SIA 162/6:1999 · 261/1:2003 ·
262/1:2003 · 263/1:2003 · 264/1:2003 · 265/1:2003 · 267/1:2003 · 281/2:1999 · 281/3:2002 ·
370/21:1987 · 370/24:1979 · 380/3:1990 · **380/4:2006** · 382/2:2011 · 385/3:1991 ·
**410/1+410/2:1981** («Kennzeichnung von Installationen in Gebäuden», SN 502 410/1 + 410/2,
Empfehlung Ausgabe 1981, am Titelblatt verifiziert) · 385/1:2000.

- **410/1+410/2:1981 deutsch schliesst die QUESTIONS-Bring-Schuld** «SIA 410/1 (der eigentliche
  Farbcode) ist nicht im Bestand» (Eintrag zu SIA 410) — mindestens für die Ausgabe 1981;
  die Aktualitätsfrage (Revision nach 1993?) bleibt offen.
- ⚠ **385/1:2000 ist die Schwimmbad-Ausgabe** (Nummern-Wiederverwendung, siehe REGISTER-Zeile
  SIA 385/1) — sie ist NICHT der fehlende Trinkwarmwasser-Volltext 385/1:2011.

## C) Kein Neuzugang (geprüft und verworfen)

- `SN - Norm/SN640 - Parkieren.pdf` = **SN 640 291a** (Dez. 2005, gültig ab 01.02.2006) — im
  Haus als `VSS_Norm/VSS 640 291a Parkieren Geometrie.PDF`.
- Die zwei VKF-Dateien «Branschutzabstände Tragwerke» / «Brandverhütung & organisatorischer
  Brandschutz» = Umlaut-/Tippfehler-Namensvarianten der vorhandenen BSR-2015-Dateien.
- `Vorlage_1002_d.pdf` = SIA 1002:2003 VfAL (im Haus im Vertrags-Archiv), Lizenz abgelaufen 2017.
- DIN- und VSS-Ordner: vollständig deckungsgleich mit dem Bestand.
- Übrige SIA-`alle/`-Dateien: deckungsgleich (466 exakte Basename-Treffer).

## D) Abgleich mit der Beschaffungsliste (QUESTIONS.md)

**Getroffen:** SIA 118-C1 (Korrigenda zur 118:2013) und SIA 410/1:1981 (s.o.).

**Weiterhin offen, im Ordner NICHT enthalten:** SIA 430:2023 · SIA 118/430:2023 ·
SIA 2032:2020 · SIA 385/9:2023 · SIA 2024:2021 Volltext · SIA 118:2013 (Hauptnorm; nur die
Korrigenda ist da) · SIA 380/1 Volltext · SIA 385/1:2011 Volltext · SIA 242 · SIA 491:2013 ·
SN EN 12193 · SN 640 052 · SN 641 400 · VA 105-01:2015 · SIA 390/1 · SVGW TPW 2001/1 ·
SIA 266/1 neuere Ausgabe (118/266-1:2017 ist eine ANDERE Norm — AVB, nicht Prüfnorm).

## Empfohlene Folgearbeiten (nicht ausgeführt, Entscheid Raphael)

1. Die A/B-Dateien nach `PL - 02_Recht_Norm/02_Normen/SIA_Norm/…` übernehmen (Dateinamen dabei
   ASCII-bereinigen, U+F022 → «-»).
2. REGISTER nachtragen: SIA 118 (C1 jetzt im Haus, Inhalt destillierbar), SIA 226 (ersetzt
   durch 118/266-2:2017), SIA 112/1 (2017), SIA 281/3 (2018), 387/4 (2017 neu), SIA 410/1
   (Bestand 1981 vorhanden).
3. QUESTIONS: Bring-Schuld SIA 410/1 auf «Ausgabe 1981 im Haus, Aktualität offen» umstellen;
   Bring-Schuld 118-C1 schliessen, Destillat einplanen.


---

## NACHTRAG gleicher Tag (Tiefenrecherche, nach Underscore-Umbenennung der Dateinamen)

Raphael hat die U+F022-Zeichen durch «_» ersetzt; kompletter Neuabgleich mit sprachbewusster
Auswertung (deutsch vs. f/i) plus zwei parallele Pruef-Agenten (Titelblatt-Verifikation aller
33 Kandidaten; REGISTER/QUESTIONS-Gegenpruefung). Korrekturen und Ergaenzungen zum Hauptteil:

**Korrekturen am Hauptteil:**
- SIA 416/1:2007 ist DOCH im Bestand (`SIA_Norm/SIA_Normen/alle/xalt/neu/SIA 416_1_2007.pdf`) — kein Neuzugang.
- Die upi-Hefte (Scale, Ringhiere e parapetti) sind nur die ITALIENISCHEN Fassungen der im Haus
  vorhandenen bfu-Dokumentationen (`PL-02/06_Richtlinien/BfU/bfu_Treppen.pdf`,
  `bfu_Gelaender und Bruestungen_2019.pdf`) — Uebernahme optional.

**Zusaetzliche Deutsch-Erstfassungen, die der Hauptteil uebersehen hatte** (Bibliothek haelt nur f/i):
118/198:2004 · 118/257:2005 · 118/262:2004 · 118/263:2004 · 118/265:2004 · 118/266:2004 ·
118/267:2004 · 197/1:2004 · 197/2:2004 · 162.051 A1 (SN EN 206-1/A1:2004; Dateiname nennt
faelschlich 2000) · 162.051 A2:2005 · 162.152 A1:2004 · 162.152 A2:2005.

**Titelblatt-Verifikation:** alle 33 Kandidaten sind deutsche Fassungen mit korrekter Nummer.
Drei Namens-Befunde: `162.051_A1_2000_d.pdf` ist die Aenderung A1:2004 (2000 = Basisnorm);
`380_3_1990_d.pdf` traegt kein Ausgabejahr auf dem Titelblatt (nur Copyright/Druck 1991);
`197_1_2004_d.pdf` hat den Titelblatt-Widerspruch Normkopf «:2003» vs. Copyright 2004.

**REGISTER-Gegenpruefung (Kernpunkte):** Als AKTUELL zu uebernehmen u.a. 118/244/246/248,
118/257, 118/262/263/265/267, 261/1, 262/1, 264/1, 267/1 (deutsche Fassungen = explizite
Bring-Schuld QUESTIONS Z. 1687–1693), 281/3:2018, 112/1:2017, 118/266-1/-2:2017, 387/4:2017,
410/1+2:1981, 382/2:2011, 162/6:1999, 197/1+2:2004. Als ARCHIV-Altausgaben: 118/198:2004
(ersetzt durch 2007), 118/266:2004 (durch 118/266-1/-2:2017), 263/1:2003 (durch 2013),
265/1:2003 (durch 2009), 281/2:1999 (durch 2011), 281/3:2002 (durch 2018), 380/4:2006
(durch SIA 2056:2019), 385/1:2000 (in 385/9 aufgegangen), 385/3:1991 (umnummeriert zu 385/1:2011).
370/21, 370/24, 380/3 nur mit Blindzone-Vermerk verwenden (14er-Hochrisikoliste).

**Destillat-Prioritaeten laut KB-Pruefung:** (1) 261/1+262/1+264/1+267/1 deutsch,
(2) 118-C1:2026, (3) 410/1, (4) Register-Nachfuehrungen 281/3:2018, 112/1:2017,
118/266-1/-2:2017, 387/4:2017. Bei jeder Uebernahme die Bestand-Spalte im REGISTER fuellen
(einziger Mechanismus gegen die 2013-Blindzone).

**AUSGEFUEHRT (gleicher Tag, Freigabe Raphael):** Die Uebernahme ist vollzogen — 30 aktuelle
Ausgaben nach `SIA_Norm/SIA_Normen/alle/` (inkl. Umbenennung `162.051_A1_2000_d.pdf` →
`162.051_A1_2004_d.pdf` gemaess Titelblatt-Befund) und 9 ersetzte Ausgaben nach `alle/xalt/`.
Alle 39 Zieldateien auf Existenz und Groesse geprueft (Stichprobe byte-identisch). Damit sind
die Bring-Schulden «deutsche Fassungen 261/1, 262/1, 264/1, 267/1» und «SIA 410/1 nicht im
Bestand» bestandsseitig geschlossen; 118-C1:2026 liegt zur Destillation bereit.
REGISTER-Nachfuehrung (Bestand-Spalten + neue Zeilen) bleibt der naechste Schritt.
