# Norm-Inventar — Arbeitsliste des Nacht-Loops `normen-training-nacht`

- **Quelle (bleibt SharePoint, nie kopieren):** `PL - 02_Recht_Norm/02_Normen/`
- **Erstellt:** 11.07.2026 (automatischer Scan) · Status-Pflege durch den Loop
- Status-Spalte: `[ ]` offen · `[x] JJMMTT` destilliert · `[~] JJMMTT` teil-destilliert (nur Auszug/Vorschau im Bestand, Volltext als Bring-Schuld offen) · `—` übersprungen (Grund in Bemerkung)
- Priorität: P1 = Skill-Kernnormen (zuerst), P2 = übrige SIA de, P3 = DIN/VSS/RAL, — = Sprachvariante/alt
- Vertiefungsstufe (c) Q&A-Selbstbefragung: Stand/Abdeckung in `destillate/qa/INDEX.md`
  (SIA/VKF-P1-Kernnormen abgesichert 260715, Run 14 — 205 Fragen, 0 Fehler).
- Vertiefungsstufe (d) Querschnitts-Synthesen DIN/VSS/RAL: `wiki/synthese-din-vss-ral-fachskills.md`
  (Mac Mini Mini-Run 30, 260715 — 5 neue Sektionen 9-13 + Vertiefungen Abschnitt 6/7,
  Grunddestillation/Retro-Verifikation/Q&A fuer DIN/VSS/RAL bereits seit Mini-Run 29 komplett).
- Mini-Run 31 (Mac Mini, 260716): Inventar-Check bestaetigt erneut 0 offene `[ ]`-Positionen in
  DIN (72)/VSS (17)/RAL (1) und keine neuen Dateien in der live gemounteten SharePoint-Ablage —
  2 von 6 aus Mini-Run 30 offenen Vertiefungs-Luecken geschlossen (SIA 331 ↔ EN 12207/DIN 1249-11
  Ziffer-fuer-Ziffer, RAL-GZ 638 BKP-Zuordnung), adversarial verifiziert, 0 Fehler. Details
  `wiki/QUESTIONS.md` Abschnitt "Mini-Run 31", Report `outputs/2026-07-16_normen-mini-run31.md`.
- **Mini-Run 32 (Mac Mini, 260716, dritte Bestaetigung in Folge) — INVENTAR KOMPLETT
  fuer DIN/VSS/RAL:** Datei-fuer-Datei-Abgleich bestaetigt erneut 72/17/1 Dateien, 0 offene
  `[ ]`-Positionen, keine neuen Dateien (auch der bisher nicht im Inventar gefuehrte, leere
  Ordner `Lignum/` enthaelt 0 Dateien). Alle vier Vertiefungsstufen (a-d) sind fuer die
  komplette Familie seit Mini-Run 29/30 abgeschlossen; die 4 nach Mini-Run 31 verbleibenden
  Vertiefungs-Luecken benoetigen SIA/VKF-Zugriff (Station MacBook Pro) oder Quellen ausserhalb
  der Normen-SharePoint-Ablage und sind aus dem DIN/VSS/RAL-Scope heraus nicht schliessbar.
  Empfehlung an Raphael: Scheduled Task `normen-training-mini` gemaess PROGRAMM.md-Endbedingung
  pausieren/auf Datei-Aenderungs-Trigger umstellen, bis neue Dateien in DIN_Norm/VSS_Norm/
  RAL_Norm/Lignum auftauchen. Details `wiki/QUESTIONS.md` Abschnitt "Mini-Run 32",
  Report `outputs/2026-07-16_normen-mini-run32.md`.

- **Run 15 (MacBook Pro, 260717) — INVENTAR-KORREKTUR, «SIA/VKF komplett» war falsch:** Ein Datei-für-Datei-
  Abgleich gegen die live gemountete SharePoint-Ablage zeigt, dass der Scan vom 11.07.2026 nur
  `SIA_Norm/SIA_Normen/alle/` erfasst hat. **58 SIA-Dateien** (Ordner `SIA_Vertraege/`, `SIA_Merkblaetter/`,
  `SIA_Abo/`, `SIA_Normen/SIA 102|112|282|380_1_2016/` und die Wurzeldatei `i385-1_2011_d.pdf`) und
  **1 VKF-Datei** (`07_BSV 2026 Projekt/`) fehlten. Sie sind neu erfasst: Sektion «SIA — Nachtrag 260717»
  und die letzte VKF-Zeile. Darunter zwei gewichtige Bestandslücken, die in diesem Lauf geschlossen wurden:
  **SIA 380/1:2016** (Heizwärmebedarf, im Bestand nur ausserhalb `alle/`) und die **SIA-1001er-Vertragsnormen**
  (Faktenbasis von `werkvertrag`/`honorarberechnung-sia102`). Lehre: Ein Inventar-Scan gilt erst als
  vollständig, wenn er die Ordnerbäume rekursiv ab `02_Normen/` erfasst — nicht ab einem Unterordner.
  Report `outputs/2026-07-17_normen-nacht-run15.md`.

## SIA (391 Dateien — Grundmenge des Scans 11.07.2026; +58 im Nachtrag 260717, siehe unten)

| Status | Prio | Datei | Norm-Nr | Jahr | Bemerkung |
|---|---|---|---|---|---|
| [x] 260714 | P1 | `102.2020.pdf` | 102 | 2020 | gilt (jüngste im Bestand); established, verifiziert 260714 (71 Aussagen in 3 Sektionen, Art.5 komplett + Art.4.3/4.4/4.53/4.6 ergaenzt, keine Fehler); sia-102-2020.md |
| [x] 260714 | P1 | `102_2014.pdf` | 102 | 2014 | — ersetzt durch 2020; established (verifiziert 260714, 1 Fehler korrigiert Baukategorien Altersheime, Tabelle S.45-48 ergaenzt); sia-102-2014.md |
| [x] 260712 | P1 | `103_2003_d.pdf` | 103 | 2003 |  |
| [x] 260712 | P1 | `105.2020.pdf` | 105 | 2020 |  |
| [x] 260712 | P1 | `111.2014.pdf` | 111 | 2014 | gilt (jüngste im Bestand) |
| [x] 260714 | P1 | `111_2003_d.pdf` | 111 | 2003 | — ersetzt durch 2014; established (verifiziert 260714, 2 Fehler korrigiert Gesamtleitungskatalog/Kuendigungszuschlag); sia-111-2003.md |
| [x] 260712 | P1 | `112.2014.pdf` | 112 | 2014 |  |
| [x] 260712 | P1 | `118_1991_d.pdf` | 118 | 1991 | Volltext-Destillat (75 S. Textlayer), alle Kennzahlen Modell-D-verifiziert (run4) |
| [x] 260712 | P1 | `416_2003_dfi.pdf` | 416 | 2003 |  |
| [x] 260712 | P1 | `451_1992_d.pdf` | 451 | 1992 |  |
| [x] 260714 | P2 | `100_2004_df.pdf` | 100 | 2004 | established (verifiziert 260714, Volltextabgleich, Art.15 lit.b ergaenzt); sia-100-2004.md |
| [x] 260713 | P2 | `104_2003_d.pdf` | 104 | 2003 |  Reconcile 260713: sia-104-2003.md (verifiziert established 260713)  |
| [x] 260714 | P2 | `108-U_2014_d.pdf` | 108 | 2014 | gilt (jüngste im Bestand); established (verifiziert 260714, mehrere komplett fehlende Artikel ergaenzt: 1.7.21/.22, 1.9.3, 1.10.2/.4, 1.11/1.12, 3.5/3.6, 5.5/5.6/5.9/5.10/5.11); sia-108-2014.md |
| — | — | `108_2003_d.pdf` | 108 | 2003 | ersetzt durch 108:2014 (destilliert sia-108-2014.md); Altausgabe uebersprungen |
| [x] 260713 | P2 | `110_2003_d.pdf` | 110 | 2003 |  Reconcile 260713: sia-110-2003.md (verifiziert established 260713)  |
| [x] 260713 | P2 | `121_2003_d.pdf` | 121 | 2003 | Teil-Destillat (Formularblaetter S.18-22 nicht im Detail); verifiziert 260713, 1 Fehler korrigiert (Ziff. 3.7); sia-121-2003.md |
| [x] 260713 | P2 | `125_2017.pdf` | 125 | 2017 | established, verifiziert 260713; sia-125-2017.md |
| — | — | `142_1998_d.pdf` | 142 | 1998 | ersetzt durch 142:2009 (destilliert sia-142-2009.md); Altausgabe uebersprungen |
| [x] 260714 | P2 | `142_2009.pdf` | 142 | 2009 | gilt (jüngste im Bestand); established (verifiziert 260714, 0 Fehler, Art. 29.2-29.3 + Genehmigung ergaenzt); sia-142-2009.md |
| [x] 260714 | P2 | `143_2009.pdf` | 143 | 2009 | established (verifiziert 260714, 0 Fehler, Genehmigung ergaenzt); sia-143-2009.md |
| [x] 260713 | P2 | `144_2013.pdf` | 144 | 2013 | established, verifiziert 260713; sia-144-2013.md |
| [x] 260713 | P2 | `150_2018.pdf` | 150 | 2018 | established, verifiziert 260713; sia-150-2018.md |
| [x] 260713 | P2 | `162.051_2000_d.pdf` | 162 | 2000 | established (Retro-Verifikation Run5, SN EN 206-1 Beton; beanstandet-korrigiert Std.beton-Fundstelle); sia-162-051-2000.md |
| [x] 260713 | P2 | `162.152_2001_d.pdf` | 162 | 2001 | established, verifiziert 260713; sia-162-152-2001.md |
| [x] 260713 | P2 | `166_2004_d.pdf` | 166 | 2004 | established, verifiziert 260713; sia-166-2004.md |
| [x] 260713 | P2 | `16954_2018_de.pdf` | 1695 | 2018 | established, verifiziert 260713; sia-1695-4-2018.md |
| [x] 260713 | P2 | `179_1998_d.pdf` | 179 | 1998 | established, verifiziert 260713; sia-179-1998.md |
| [x] 260713 | P2 | `180.081_2017.pdf` | 180 | 2017 | established, verifiziert 260713; sia-180-081-2017.md |
| [x] 260713 | P2 | `180.082_2017.pdf` | 180 | 2017 | Teil-Destillat, verifiziert 260713; sia-180-082-2017.md |
| [x] 260713 | P2 | `180_2014.pdf` | 180 | 2014 | Teil-Destillat (Kernkapitel, Anhaenge A-H offen), verifiziert 260713; sia-180-2014.md |
| [x] 260713 | P2 | `181_2006_d.pdf` | 181 | 2006 | Teil-Destillat (normativer Kern + Teile Anhang), verifiziert 260713; sia-181-2006.md |
| [x] 260714 | P2 | `184_1972_d.pdf` | 184 | 1972 | established (verifiziert 260714, Volltextabgleich, sia-184-1972.md), Baureinigungs-Arbeiten |
| [x] 260713 | P2 | `193.111_1999_d.pdf` | 193 | 1999 | established (Run5, SN EN 12063:1999 Spundwaende, Kern S.1-46 verifiziert); sia-193-111-1999.md |
| [x] 260713 | P2 | `195_1999_d.pdf` | 195 | 1999 | established (Run5, Rohrvortrieb, beanstandet-korrigiert gamma_Q); sia-195-1999.md |
| [x] 260713 | P2 | `196_1998_d.pdf` | 196 | 1998 | teil-destillat (Run5, Baulueftung Untertagbau, Kern S.1-37); sia-196-1998.md |
| [x] 260713 | P2 | `197_2004_d.pdf` | 197 | 2004 | established (Run5, Verkehrstunnel Grundlagen, Volltext verifiziert); sia-197-2004.md |
| [x] 260713 | P2 | `198_2004_d.pdf` | 198 | 2004 | established (Run5, Untertagbau Ausfuehrung, Kern verifiziert); sia-198-2004.md |
| [x] 260713 | P2 | `199_1998_d.pdf` | 199 | 1998 | established (Run5, Geologie/Geotechnik Untertagbau); sia-199-1998.md |
| [x] 260713 | P2 | `2014_2017.pdf` | 2014 | 2014 | established (Run5, SIA 2014:2017 CAD-Layer-Kodierung; beanst.-korr. Bsp C.1.2); sia-2014-2017.md |
| [x] 260714 | P2 | `2020_2017.pdf` | 2020 | 2020 | established (verifiziert 260714, Volltextabgleich, Fundstellen-Fehler Ziff.6.1 Art.152 statt Art.151 korrigiert); sia-2020-2017.md, Sicherheitsleistungen Unternehmer Werkvertrag (Merkblatt zu SIA 118) |
| [x] 260713 | P2 | `203_1997_d.pdf` | 203 | 1997 | established (Run5, Abfalldeponien, beanst.-korrigiert); sia-203-1997.md |
| [x] 260713 | P2 | `2040_2017.pdf` | 2040 | 2017 | established (Run5, SIA 2040:2017 2000-Watt/Effiz.pfad); sia-2040-2017.md |
| [x] 260713 | P2 | `2051_2018.pdf` | 2051 | 2018 | established (Run5, SIA 2051:2017 BIM-Begriffe); sia-2051-2018.md |
| [x] 260714 | P2 | `226_1976_d.pdf` | 226 | 1976 | established (verifiziert 260714, Volltextabgleich, sia-226-1976.md), Naturstein-Mauerwerk |
| [x] 260712 | P2 | `232_2000_d.pdf` | 232 | 2000 |  |
| [x] 260712 | P2 | `240_1988_d.pdf` | 240 | 1988 |  |
| [x] 260714 | P2 | `241_1988_d.pdf` | 241 | 1988 | established (verifiziert 260714, Volltextabgleich, sia-241-1988.md), Schreinerarbeiten |
| [x] 260713 | P2 | `244_2006_d.pdf` | 244 | 2006 | verifiziert established 260713 Run5 (bestanden); sia-244-2006.md |
| [x] 260713 | P2 | `246_2006_d.pdf` | 246 | 2006 | verifiziert established 260713 Run5 (bestanden); sia-246-2006.md |
| [x] 260713 | P2 | `248_2006_d.pdf` | 248 | 2006 | verifiziert established 260713 Run5 (bestanden); sia-248-2006.md |
| [x] 260712 | P2 | `251_2008 Unterlagsboden.pdf` | 251 | 2008 |  |
| [x] 260712 | P2 | `252_2002_d.pdf` | 252 | 2002 |  |
| [x] 260712 | P2 | `253_2002_d.pdf` | 253 | 2002 |  |
| [x] 260714 | P2 | `256_1988_d.pdf` | 256 | 1988 | established (verifiziert 260714, Volltextabgleich, sia-256-1988.md), Deckenverkleidungen aus Fertigelementen |
| [x] 260712 | P2 | `257_2005_d.pdf` | 257 | 2005 |  |
| [x] 260712 | P2 | `260_2003_d.pdf` | 260 | 2003 |  |
| [x] 260712 | P2 | `261_2003_d.pdf` | 261 | 2003 |  |
| [x] 260712 | P2 | `262_2003_d.pdf` | 262 | 2003 |  |
| [x] 260712 | P2 | `263_2003_d.pdf` | 263 | 2003 |  |
| [x] 260712 | P2 | `264_2003_d.pdf` | 264 | 2003 |  |
| [x] 260712 | P2 | `265_2003_d.pdf` | 265 | 2003 |  |
| [x] 260712 | P2 | `266_2003_d.pdf` | 266 | 2003 |  |
| [x] 260712 | P2 | `267_2003_d.pdf` | 267 | 2003 |  |
| [x] 260713 | P2 | `270_1992_d.pdf` | 270 | 1992 | destilliert (sia-270-1992.md), Abdichtungen Dichtungsbahnen/Gussasphalt |
| [x] 260712 | P2 | `271_2007 Abdichtung von Hochbauten .pdf` | 271 | 2007 |  |
| [x] 260713 | P2 | `272_1980_d.pdf` | 272 | 1980 | established (Run5, Grundwasserabdichtungen, Volltext verifiziert); sia-272-1980.md |
| — | — | `273_1989 Abdichtungen von befahrbaren Flächen im Hochbau.pdf` | 273 | 1989 | ersetzt durch 273:1998 (Bestand, destilliert 260713 Run 7); Altausgabe uebersprungen |
| [x] 260713 | P2 | `273_1998_d.pdf` | 273 | 1998 | destilliert (sia-273-1998.md); ACHTUNG Dateiname/Inhalt-Diskrepanz: PDF selbst datiert 1989, siehe QUESTIONS.md; jüngste im Bestand; 2013-gültig wäre 273:2008 (nicht im Bestand); 273_1989 ersetzt |
| [x] 260712 | P2 | `279_2018.pdf` | 279 | 2018 |  |
| [x] 260712 | P2 | `281_2017.pdf` | 281 | 2017 |  |
| [x] 260713 | P2 | `312_2013.pdf` | 312 | 2013 | verifiziert established 260713 Run5 (beanst.-korr. BKP 224 Bedachungsarbeiten); sia-312-2013.md |
| [x] 260713 | P2 | `318_1988_d.pdf` | 318 | 1988 | destilliert (sia-318-1988.md), Garten- und Landschaftsbau |
| — | — | `329_1989_d.pdf` | 329 | 1989 | ersetzt durch 329:2018 (destilliert sia-329-2018.md); Altausgabe uebersprungen |
| [x] 260712 | P2 | `329_2018.pdf` | 329 | 2018 | gilt (jüngste im Bestand) |
| [x] 260713 | P2 | `331_1988_d.pdf` | 331 | 1988 | destilliert (sia-331-1988.md), Fenster |
| [x] 260713 | P2 | `342_1988_d.pdf` | 342 | 1988 | destilliert (sia-342-1988.md), Sonnen- und Wetterschutzanlagen |
| [x] 260713 | P2 | `343.051_2018.pdf` | 343 | 2018 | teil-destillat (Run5, SN EN 14351-2:2018 Innentueren; beanst.-korr. EN 1191); sia-343-051-2018.md |
| [x] 260713 | P2 | `343_1990_d.pdf` | 343 | 1990 | destilliert (sia-343-1990.md), Türen und Tore |
| [x] 260712 | P2 | `358_2010 Geländer und Brüstungen.pdf` | 358 | 2010 |  |
| [x] 260713 | P2 | `370.028_2003_d.pdf` | 370 | 2003 | verifiziert established 260713 Run5 (bestanden); sia-370-028-2003.md |
| [x] 260713 | P2 | `370.080_2003_d.pdf` | 370 | 2003 | established (Run5, SN EN 81-80:2003 Aufzuege-Nachruestung SNEL); sia-370-080-2003.md |
| [x] 260713 | P2 | `382 1-2014.pdf` | 382 | 2014 | teil-destillat (Run5, Lueftung/Klima Kern S.1-63; beanst.-korr. Ziff.); sia-382-1-2014.md |
| — | — | `384.201_2003_d.pdf` | 384 | 2003 | ersetzt durch 384/201:2017 (destilliert 260713 Run 7); Altausgabe uebersprungen |
| [x] 260713 | P2 | `384.201_2017.pdf` | 384 | 2017 | teil-destillat (Run5, SN EN 12831-1:2017 Heizlast Kap.1-6; beanst.-korr. Gl.17); sia-384-201-2017.md |
| [x] 260714 | P2 | `400_2000_d.pdf` | 400 | 2000 | established (verifiziert 260714, 0 Fehler, Anhang C Normtext ergaenzt); sia-400-2000.md, Wettbewerbs-Layer — Linien/Schraffuren/Masse/CAD |
| [x] 260713 | P2 | `405_1998_d.pdf` | 405 | 1998 | teil-destillat (Run5, Leitungskataster GIS, Kern verifiziert); sia-405-1998.md |
| [x] 260713 | P2 | `414_1980_d.pdf` | 414 | 1980 | destilliert (sia-414-1980.md), Masstoleranzen im Bauwesen |
| [x] 260714 | P2 | `421_2006_d.pdf` | 421 | 2006 | established, verifiziert 260714 (Volltextabgleich Run 10, 3 Definitionsluecken ergaenzt, keine Fehler); sia-421-2006.md |
| [x] 260713 | P2 | `423_2006_d.pdf` | 423 | 2006 | established (Run5, Gebaeudedimensionen/Abstaende IVHB); sia-423-2006.md |
| [x] 260713 | P2 | `430_1993_d.pdf` | 430 | 1993 | destilliert (sia-430-1993.md), Entsorgung von Bauabfällen |
| [x] 260713 | P2 | `431_1997_d.pdf` | 431 | 1997 | established (Run5, Baustellenentwaesserung SIA/VSA); sia-431-1997.md |
| [x] 260713 | P2 | `450_1993_d.pdf` | 450 | 1993 | established (Run5, Kosteninfo Bauwesen, Kern verifiziert, beanst.-korr. KKK); sia-450-1993.md |
| [x] 260713 | P2 | `462_1994_d.pdf` | 462 | 1994 | verifiziert established 260713 Run5 (bestanden); sia-462-1994.md |
| [x] 260713 | P2 | `465_1998_d.pdf` | 465 | 1998 | verifiziert established 260713 Run5 (bestanden); sia-465-1998.md |
| [x] 260713 | P2 | `469_1997_d.pdf` | 469 | 1997 | verifiziert established 260713 Run5 (bestanden); sia-469-1997.md |
| [x] 260713 | P2 | `480_2004_d.pdf` | 480 | 2004 | established (Run5, Wirtschaftlichkeit Hochbau); sia-480-2004.md |
| [x] 260713 | P2 | `493_1997_d.pdf` | 493 | 1997 | established (Run5, Oekodeklaration Bauprodukte, beanst.-korr.); sia-493-1997.md |
| [x] 260712 | P2 | `500_2009.pdf` | 500 | 2009 |  |
| [x] 260713 | P2 | `564_282.pdf` | 564 |  | established (Run5, SIA 282:2019 fluessig aufzubringende Abdichtungen); sia-564-282.md |
| [x] 260713 | P2 | `592056.pdf` | 5920 |  | teil-destillat (Run5, SIA 2056:2019 elektr. Energiebedarf; beanst.-korr.); sia-592-056.md |
| [x] 260713 | P2 | `721_2001_d.pdf` | 721 | 2001 | verifiziert established 260713 Run5 (bestanden); sia-721-2001.md |
| [x] 260714 | P2 | `723_2001_d.pdf` | 723 | 2001 | established, verifiziert 260714 (24 Aussagen, bestanden); sia-723-2001.md |
| [x] 260713 | P2 | `752_2002_d.pdf` | 752 | 2002 | verifiziert established 260713 Run5 (beanst.-korr. Ziff.2.4.5); sia-752-2002.md |
| [x] 260713 | P2 | `753_2002_d.pdf` | 753 | 2002 | verifiziert established 260713 Run5 (bestanden); sia-753-2002.md |
| [x] 260713 | P2 | `EN 13200-12019.pdf` | 1320 | 2019 | established (Run5, SN EN 13200-1:2019 Zuschaueranlagen, Volltext verifiziert); sia-en-13200-1-2019.md |
| [x] 260713 | P2 | `d 0165.pdf` | 0165 | 2000 | Teil-Destillat (sia-d0165-2000-kennzahlen-immobilienmanagement.md), nur 5-S.-Fragment gelesen; Vollversion 73 S. in xalt offen |
| — | — | `e/112_2001_e.pdf` | 112 | 2001 | Sprachvariante |
| — | — | `e/260_2003_e.pdf` | 260 | 2003 | Sprachvariante |
| — | — | `e/261_2003_e.pdf` | 261 | 2003 | Sprachvariante |
| — | — | `e/262_2004_e.pdf` | 262 | 2004 | Sprachvariante |
| — | — | `e/266_2003_e.pdf` | 266 | 2003 | Sprachvariante |
| — | — | `f/102_f.pdf` | 102 |  | Sprachvariante |
| — | — | `f/103_f.pdf` | 103 |  | Sprachvariante |
| — | — | `f/104_f.pdf` | 104 |  | Sprachvariante |
| — | — | `f/108_f.pdf` | 108 |  | Sprachvariante |
| — | — | `f/110_f.pdf` | 110 |  | Sprachvariante |
| — | — | `f/111_f.pdf` | 111 |  | Sprachvariante |
| — | — | `f/112-1_2005_f.pdf` | 112 | 2005 | Sprachvariante |
| — | — | `f/112_f.pdf` | 112 |  | Sprachvariante |
| — | — | `f/118-198_2004_f.pdf` | 118 | 2004 | Sprachvariante |
| — | — | `f/118-257_2005_f.pdf` | 118 | 2005 | Sprachvariante |
| — | — | `f/118-262_2004_f.pdf` | 118 | 2004 | Sprachvariante |
| — | — | `f/118-263_2004_f.pdf` | 118 | 2004 | Sprachvariante |
| — | — | `f/118-265_2004_f.pdf` | 118 | 2004 | Sprachvariante |
| — | — | `f/118-266_2004_f.pdf` | 118 | 2004 | Sprachvariante |
| — | — | `f/118-267_2004_f.pdf` | 118 | 2004 | Sprachvariante |
| — | — | `f/118_f.pdf` | 118 |  | Sprachvariante |
| — | — | `f/121_f.pdf` | 121 |  | Sprachvariante |
| — | — | `f/136_f.pdf` | 136 |  | Sprachvariante |
| — | — | `f/142_f.pdf` | 142 |  | Sprachvariante |
| — | — | `f/150_f.pdf` | 150 |  | Sprachvariante |
| — | — | `f/162_051-A1_2000_f.pdf` | 162 | 2000 | Sprachvariante |
| — | — | `f/162_051-A2_2005_f.pdf` | 162 | 2005 | Sprachvariante |
| — | — | `f/162_051f.pdf` | 162 |  | Sprachvariante |
| — | — | `f/162_152-A1_2004_f.pdf` | 162 | 2004 | Sprachvariante |
| — | — | `f/162_152-A2_2005_f.pdf` | 162 | 2005 | Sprachvariante |
| — | — | `f/162_152f.pdf` | 162 |  | Sprachvariante |
| — | — | `f/162_2_f.pdf` | 162 |  | Sprachvariante |
| — | — | `f/162_3_f.pdf` | 162 |  | Sprachvariante |
| — | — | `f/162_4_f.pdf` | 162 |  | Sprachvariante |
| — | — | `f/162_5_f.pdf` | 162 |  | Sprachvariante |
| — | — | `f/162_6_f.pdf` | 162 |  | Sprachvariante |
| — | — | `f/166_2004_f.pdf` | 166 | 2004 | Sprachvariante |
| — | — | `f/178_f.pdf` | 178 |  | Sprachvariante |
| — | — | `f/179_f.pdf` | 179 |  | Sprachvariante |
| — | — | `f/180_4_f.pdf` | 180 |  | Sprachvariante |
| — | — | `f/180_f.pdf` | 180 |  | Sprachvariante |
| — | — | `f/181_2006_f.pdf` | 181 | 2006 | Sprachvariante |
| — | — | `f/184_f.pdf` | 184 |  | Sprachvariante |
| — | — | `f/190_2000_f.pdf` | 190 | 2000 | Sprachvariante |
| — | — | `f/190_203f.pdf` | 190 |  | Sprachvariante |
| — | — | `f/193_111f.pdf` | 193 |  | Sprachvariante |
| — | — | `f/193_112f.pdf` | 193 |  | Sprachvariante |
| — | — | `f/195_f.pdf` | 195 |  | Sprachvariante |
| — | — | `f/196_f.pdf` | 196 |  | Sprachvariante |
| — | — | `f/197-1_2004_f.pdf` | 197 | 2004 | Sprachvariante |
| — | — | `f/197-2_2004_f.pdf` | 197 | 2004 | Sprachvariante |
| — | — | `f/197_2004_f.pdf` | 197 | 2004 | Sprachvariante |
| — | — | `f/198_2004_f.pdf` | 198 | 2004 | Sprachvariante |
| — | — | `f/199_f.pdf` | 199 |  | Sprachvariante |
| — | — | `f/2001_2005_f.pdf` | 2001 | 2001 | Sprachvariante |
| — | — | `f/2003_f.pdf` | 2003 | 2003 | Sprachvariante |
| — | — | `f/2004_f.pdf` | 2004 | 2004 | Sprachvariante |
| — | — | `f/2007_f.pdf` | 2007 | 2007 | Sprachvariante |
| — | — | `f/2008_f.pdf` | 2008 | 2008 | Sprachvariante |
| — | — | `f/2014_f.pdf` | 2014 | 2014 | Sprachvariante |
| — | — | `f/2015_2005_f.pdf` | 2015 | 2015 | Sprachvariante |
| — | — | `f/2016_2005_f.pdf` | 2016 | 2016 | Sprachvariante |
| — | — | `f/2017_f.pdf` | 2017 | 2017 | Sprachvariante |
| — | — | `f/2018_2004_f.pdf` | 2018 | 2018 | Sprachvariante |
| — | — | `f/2020_f.pdf` | 2020 | 2020 | Sprachvariante |
| — | — | `f/2021_f.pdf` | 2021 | 2021 | Sprachvariante |
| — | — | `f/2022_f.pdf` | 2022 | 2022 | Sprachvariante |
| — | — | `f/2023_2004_f.pdf` | 2023 | 2023 | Sprachvariante |
| — | — | `f/203_f.pdf` | 203 |  | Sprachvariante |
| — | — | `f/205_f.pdf` | 205 |  | Sprachvariante |
| — | — | `f/215_003f.pdf` | 215 |  | Sprachvariante |
| — | — | `f/215_f.pdf` | 215 |  | Sprachvariante |
| — | — | `f/222_f.pdf` | 222 |  | Sprachvariante |
| — | — | `f/226_f.pdf` | 226 |  | Sprachvariante |
| — | — | `f/232_f.pdf` | 232 |  | Sprachvariante |
| — | — | `f/233_f.pdf` | 233 |  | Sprachvariante |
| — | — | `f/234_f.pdf` | 234 |  | Sprachvariante |
| — | — | `f/235_f.pdf` | 235 |  | Sprachvariante |
| — | — | `f/240_f.pdf` | 240 |  | Sprachvariante |
| — | — | `f/241_f.pdf` | 241 |  | Sprachvariante |
| — | — | `f/242_1_f.pdf` | 242 |  | Sprachvariante |
| — | — | `f/242_2_f.pdf` | 242 |  | Sprachvariante |
| — | — | `f/243_1_f.pdf` | 243 |  | Sprachvariante |
| — | — | `f/243_2_f.pdf` | 243 |  | Sprachvariante |
| — | — | `f/244_f.pdf` | 244 |  | Sprachvariante |
| — | — | `f/246_f.pdf` | 246 |  | Sprachvariante |
| — | — | `f/248_f.pdf` | 248 |  | Sprachvariante |
| — | — | `f/251_1_f.pdf` | 251 |  | Sprachvariante |
| — | — | `f/251_2_f.pdf` | 251 |  | Sprachvariante |
| — | — | `f/252_f.pdf` | 252 |  | Sprachvariante |
| — | — | `f/253_f.pdf` | 253 |  | Sprachvariante |
| — | — | `f/256_f.pdf` | 256 |  | Sprachvariante |
| — | — | `f/257_2005_f.pdf` | 257 | 2005 | Sprachvariante |
| — | — | `f/260_2003_f.pdf` | 260 | 2003 | Sprachvariante |
| — | — | `f/261_1_f.pdf` | 261 |  | Sprachvariante |
| — | — | `f/261_f.pdf` | 261 |  | Sprachvariante |
| — | — | `f/262-153_2003_f.pdf` | 262 | 2003 | Sprachvariante |
| — | — | `f/262_1_f.pdf` | 262 |  | Sprachvariante |
| — | — | `f/262_f.pdf` | 262 |  | Sprachvariante |
| — | — | `f/263_1_f.pdf` | 263 |  | Sprachvariante |
| — | — | `f/263_2003_f.pdf` | 263 | 2003 | Sprachvariante |
| — | — | `f/264_1_f.pdf` | 264 |  | Sprachvariante |
| — | — | `f/264_f.pdf` | 264 |  | Sprachvariante |
| — | — | `f/265_1_f.pdf` | 265 |  | Sprachvariante |
| — | — | `f/265_f.pdf` | 265 |  | Sprachvariante |
| — | — | `f/266_1_f.pdf` | 266 |  | Sprachvariante |
| — | — | `f/266_f.pdf` | 266 |  | Sprachvariante |
| — | — | `f/267_1_f.pdf` | 267 |  | Sprachvariante |
| — | — | `f/267_f.pdf` | 267 |  | Sprachvariante |
| — | — | `f/270_f.pdf` | 270 |  | Sprachvariante |
| — | — | `f/271_1_f.pdf` | 271 |  | Sprachvariante |
| — | — | `f/271_2_f.pdf` | 271 |  | Sprachvariante |
| — | — | `f/271_f.pdf` | 271 |  | Sprachvariante |
| — | — | `f/272_f.pdf` | 272 |  | Sprachvariante |
| — | — | `f/273_f.pdf` | 273 |  | Sprachvariante |
| — | — | `f/274_f.pdf` | 274 |  | Sprachvariante |
| — | — | `f/279_2004_f.pdf` | 279 | 2004 | Sprachvariante |
| — | — | `f/280_f.pdf` | 280 |  | Sprachvariante |
| — | — | `f/281_1_f.pdf` | 281 |  | Sprachvariante |
| — | — | `f/281_2_f.pdf` | 281 |  | Sprachvariante |
| — | — | `f/281_3_f.pdf` | 281 |  | Sprachvariante |
| — | — | `f/281_f.pdf` | 281 |  | Sprachvariante |
| — | — | `f/318_f.pdf` | 318 |  | Sprachvariante |
| — | — | `f/329_f.pdf` | 329 |  | Sprachvariante |
| — | — | `f/331_f.pdf` | 331 |  | Sprachvariante |
| — | — | `f/342_f.pdf` | 342 |  | Sprachvariante |
| — | — | `f/343_f.pdf` | 343 |  | Sprachvariante |
| — | — | `f/358_f.pdf` | 358 |  | Sprachvariante |
| — | — | `f/370-028_2003_f.pdf` | 370 | 2003 | Sprachvariante |
| — | — | `f/370-080_2003_f.pdf` | 370 | 2003 | Sprachvariante |
| — | — | `f/370.001-A1_2005_f.pdf` | 370 | 2005 | Sprachvariante |
| — | — | `f/370.002-A1_2005_f.pdf` | 370 | 2005 | Sprachvariante |
| — | — | `f/370_001-A1_2005_f.pdf` | 370 | 2005 | Sprachvariante |
| — | — | `f/370_001-A2_2004_f.pdf` | 370 | 2004 | Sprachvariante |
| — | — | `f/370_001f.pdf` | 370 |  | Sprachvariante |
| — | — | `f/370_002-A2_2004_f.pdf` | 370 | 2004 | Sprachvariante |
| — | — | `f/370_002f.pdf` | 370 |  | Sprachvariante |
| — | — | `f/370_003f.pdf` | 370 |  | Sprachvariante |
| — | — | `f/370_121f.pdf` | 370 |  | Sprachvariante |
| — | — | `f/370_21_f.pdf` | 370 |  | Sprachvariante |
| — | — | `f/370_23_f.pdf` | 370 |  | Sprachvariante |
| — | — | `f/370_24_f.pdf` | 370 |  | Sprachvariante |
| — | — | `f/380_1_f.pdf` | 380 |  | Sprachvariante |
| — | — | `f/380_3_f.pdf` | 380 |  | Sprachvariante |
| — | — | `f/380_4_f.pdf` | 380 |  | Sprachvariante |
| — | — | `f/381_101_2000_f.pdf` | 381 | 2000 | Sprachvariante |
| — | — | `f/381_2_f.pdf` | 381 |  | Sprachvariante |
| — | — | `f/381_3_f.pdf` | 381 |  | Sprachvariante |
| — | — | `f/382_102f.pdf` | 382 |  | Sprachvariante |
| — | — | `f/382_1_f.pdf` | 382 |  | Sprachvariante |
| — | — | `f/382_2_f.pdf` | 382 |  | Sprachvariante |
| — | — | `f/382_3_f.pdf` | 382 |  | Sprachvariante |
| — | — | `f/384_1_f.pdf` | 384 |  | Sprachvariante |
| — | — | `f/384_201_2003_f.pdf` | 384 | 2003 | Sprachvariante |
| — | — | `f/384_4_f.pdf` | 384 |  | Sprachvariante |
| — | — | `f/384_501f.pdf` | 384 |  | Sprachvariante |
| — | — | `f/385_1_f.pdf` | 385 |  | Sprachvariante |
| — | — | `f/385_3_f.pdf` | 385 |  | Sprachvariante |
| — | — | `f/400_f.pdf` | 400 |  | Sprachvariante |
| — | — | `f/405_f.pdf` | 405 |  | Sprachvariante |
| — | — | `f/406_f.pdf` | 406 |  | Sprachvariante |
| — | — | `f/410_1_2f.pdf` | 410 |  | Sprachvariante |
| — | — | `f/410_d_f_i.pdf` | 410 |  | Sprachvariante |
| — | — | `f/414_10_f.pdf` | 414 |  | Sprachvariante |
| — | — | `f/414_f.pdf` | 414 |  | Sprachvariante |
| — | — | `f/421_2004_f.pdf` | 421 | 2004 | Sprachvariante |
| — | — | `f/430_f.pdf` | 430 |  | Sprachvariante |
| — | — | `f/431_f.pdf` | 431 |  | Sprachvariante |
| — | — | `f/450_f.pdf` | 450 |  | Sprachvariante |
| — | — | `f/451_f.pdf` | 451 |  | Sprachvariante |
| — | — | `f/462_f.pdf` | 462 |  | Sprachvariante |
| — | — | `f/465_f.pdf` | 465 |  | Sprachvariante |
| — | — | `f/469_f.pdf` | 469 |  | Sprachvariante |
| — | — | `f/480_2004_f.pdf` | 480 | 2004 | Sprachvariante |
| — | — | `f/493_f.pdf` | 493 |  | Sprachvariante |
| — | — | `f/721_f.pdf` | 721 |  | Sprachvariante |
| — | — | `f/723_f.pdf` | 723 |  | Sprachvariante |
| — | — | `f/752_f.pdf` | 752 |  | Sprachvariante |
| — | — | `f/753_f.pdf` | 753 |  | Sprachvariante |
| — | — | `i/100_di.pdf` | 100 |  | Sprachvariante |
| — | — | `i/102_2003_i.pdf` | 102 | 2003 | Sprachvariante |
| — | — | `i/103_2003_i.pdf` | 103 | 2003 | Sprachvariante |
| — | — | `i/108_2003_i.pdf` | 108 | 2003 | Sprachvariante |
| — | — | `i/110_i.pdf` | 110 |  | Sprachvariante |
| — | — | `i/111_i.pdf` | 111 |  | Sprachvariante |
| — | — | `i/112_i.pdf` | 112 |  | Sprachvariante |
| — | — | `i/118-257_2005_i.pdf` | 118 | 2005 | Sprachvariante |
| — | — | `i/118-262_2004_i.pdf` | 118 | 2004 | Sprachvariante |
| — | — | `i/118-263_2004_i.pdf` | 118 | 2004 | Sprachvariante |
| — | — | `i/118-265_2004_i.pdf` | 118 | 2004 | Sprachvariante |
| — | — | `i/118-266_2004_i.pdf` | 118 | 2004 | Sprachvariante |
| — | — | `i/118_i.pdf` | 118 |  | Sprachvariante |
| — | — | `i/142_i.pdf` | 142 |  | Sprachvariante |
| — | — | `i/180_4_i.pdf` | 180 |  | Sprachvariante |
| — | — | `i/180_i.pdf` | 180 |  | Sprachvariante |
| — | — | `i/181_i.pdf` | 181 |  | Sprachvariante |
| — | — | `i/199_i.pdf` | 199 |  | Sprachvariante |
| — | — | `i/243_1_i.pdf` | 243 |  | Sprachvariante |
| — | — | `i/243_2_i.pdf` | 243 |  | Sprachvariante |
| — | — | `i/257_2005_i.pdf` | 257 | 2005 | Sprachvariante |
| — | — | `i/257_i.pdf` | 257 |  | Sprachvariante |
| — | — | `i/260_2003_i.pdf` | 260 | 2003 | Sprachvariante |
| — | — | `i/261_2003_i.pdf` | 261 | 2003 | Sprachvariante |
| — | — | `i/262_2003_i.pdf` | 262 | 2003 | Sprachvariante |
| — | — | `i/263_2003_i.pdf` | 263 | 2003 | Sprachvariante |
| — | — | `i/264_2003_i.pdf` | 264 | 2003 | Sprachvariante |
| — | — | `i/265_2003_i.pdf` | 265 | 2003 | Sprachvariante |
| — | — | `i/266_1_d.pdf` | 266 |  | Sprachvariante |
| — | — | `i/266_2003_i.pdf` | 266 | 2003 | Sprachvariante |
| — | — | `i/271_i.pdf` | 271 |  | Sprachvariante |
| — | — | `i/318_i.pdf` | 318 |  | Sprachvariante |
| — | — | `i/358_1996_i.pdf` | 358 | 1996 | Sprachvariante |
| — | — | `i/380_1_i.pdf` | 380 |  | Sprachvariante |
| — | — | `i/381_3_i.pdf` | 381 |  | Sprachvariante |
| — | — | `i/406_i.pdf` | 406 |  | Sprachvariante |
| — | — | `i/462_i.pdf` | 462 |  | Sprachvariante |
| — | — | `i/469_i.pdf` | 469 |  | Sprachvariante |
| — | — | `i/723_i.pdf` | 723 |  | Sprachvariante |
| — | — | `xalt/102_2003_d.pdf` | 102 | 2003 | ersetzt/alt (xalt) |
| — | — | `xalt/102_d_2001.pdf` | 102 | 2001 | ersetzt/alt (xalt) |
| — | — | `xalt/112_2001_d.pdf` | 112 | 2001 | ersetzt/alt (xalt) |
| — | — | `xalt/116_1952_D.pdf` | 116 | 1952 | ersetzt/alt (xalt) |
| — | — | `xalt/118_343_VL_2008-04-28.pdf` | 118 | 2008 | ersetzt/alt (xalt) |
| — | — | `xalt/136_d.pdf` | 136 |  | ersetzt/alt (xalt) |
| — | — | `xalt/150_1977_d.pdf` | 150 | 1977 | ersetzt/alt (xalt) |
| — | — | `xalt/151_dfi.pdf` | 151 |  | ersetzt/alt (xalt) |
| — | — | `xalt/164_1992_d.pdf` | 164 | 1992 | ersetzt/alt (xalt) |
| — | — | `xalt/178_1996_d.pdf` | 178 | 1996 | ersetzt/alt (xalt) |
| — | — | `xalt/180_1999_d.pdf` | 180 | 1999 | ersetzt/alt (xalt) |
| — | — | `xalt/190.203_1997_d.pdf` | 190 | 1997 | ersetzt/alt (xalt) |
| — | — | `xalt/190_2000_d.pdf` | 190 | 2000 | ersetzt/alt (xalt) |
| — | — | `xalt/193_112d.pdf` | 193 |  | ersetzt/alt (xalt) |
| — | — | `xalt/205_2003_d.pdf` | 205 | 2003 | ersetzt/alt (xalt) |
| — | — | `xalt/215.002_2000_d.pdf` | 215 | 2000 | ersetzt/alt (xalt) |
| — | — | `xalt/215_002f.pdf` | 215 |  | ersetzt/alt (xalt) |
| — | — | `xalt/215_003d.pdf` | 215 |  | ersetzt/alt (xalt) |
| — | — | `xalt/215_d.pdf` | 215 |  | ersetzt/alt (xalt) |
| — | — | `xalt/222_1990_d.pdf` | 222 | 1990 | ersetzt/alt (xalt) |
| — | — | `xalt/233_2000_d.pdf` | 233 | 2000 | ersetzt/alt (xalt) |
| — | — | `xalt/234_1997_d.pdf` | 234 | 1997 | ersetzt/alt (xalt) |
| — | — | `xalt/235_1997_d.pdf` | 235 | 1997 | ersetzt/alt (xalt) |
| — | — | `xalt/242-1_1994_d.pdf` | 242 | 1994 | ersetzt/alt (xalt) |
| — | — | `xalt/242_2_d.pdf` | 242 |  | ersetzt/alt (xalt) |
| — | — | `xalt/262.153_2003_d.pdf` | 262 | 2003 | ersetzt/alt (xalt) |
| — | — | `xalt/274_VL_d_080303-VL.pdf` | 274 |  | ersetzt/alt (xalt) |
| — | — | `xalt/274_d.pdf` | 274 |  | ersetzt/alt (xalt) |
| — | — | `xalt/279_2004_d.pdf` | 279 | 2004 | ersetzt/alt (xalt) |
| — | — | `xalt/280_d.pdf` | 280 |  | ersetzt/alt (xalt) |
| — | — | `xalt/281_1992_d.pdf` | 281 | 1992 | ersetzt/alt (xalt) |
| — | — | `xalt/358_1996_d.pdf` | 358 | 1996 | ersetzt/alt (xalt) |
| — | — | `xalt/370.001_1998_d.pdf` | 370 | 1998 | ersetzt/alt (xalt) |
| — | — | `xalt/370.002_1998_d.pdf` | 370 | 1998 | ersetzt/alt (xalt) |
| — | — | `xalt/370.003_2000_d.pdf` | 370 | 2000 | ersetzt/alt (xalt) |
| — | — | `xalt/370.121_1995_d.pdf` | 370 | 1995 | ersetzt/alt (xalt) |
| — | — | `xalt/381.101_2000_d.pdf` | 381 | 2000 | ersetzt/alt (xalt) |
| — | — | `xalt/382.102_2000_d.pdf` | 382 | 2000 | ersetzt/alt (xalt) |
| — | — | `xalt/384.501_1998_d.pdf` | 384 | 1998 | ersetzt/alt (xalt) |
| — | — | `xalt/416dfi.pdf` | 416 |  | ersetzt/alt (xalt) |
| — | — | `xalt/SIA 142_VL Revision 080310-2.pdf` | 142 |  | ersetzt/alt (xalt) |
| — | — | `xalt/SIA 252_VL_2011-12.pdf` | 252 | 2011 | ersetzt/alt (xalt) |
| — | — | `xalt/SIA 342_VL_d_2008-04-17.pdf` | 342 | 2008 | ersetzt/alt (xalt) |
| — | — | `xalt/SIA 500_Vernehmlassung_2006.pdf` | 500 | 2006 | ersetzt/alt (xalt) |
| — | — | `xalt/SIA D0165_2000 Kennzahlen im Immobilienmanagement.pdf` | 0165 | 2000 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/102_d_2001.pdf` | 102 | 2001 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/111_3_1991.pdf` | 111 | 1991 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/112_d_2001.pdf` | 112 | 2001 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/116_D.pdf` | 116 |  | ersetzt/alt (xalt) |
| — | — | `xalt/neu/118_d_1991.pdf` | 118 | 1991 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/181_d_1988.pdf` | 181 | 1988 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/380_1_d_2001.pdf` | 380 | 2001 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 118_343_VL_2008-04-28.pdf` | 118 | 2008 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 142_VL Revision 080310-2.pdf` | 142 |  | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 251_2008 Unterlagsboden.pdf` | 251 | 2008 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 252_VL_2011-12.pdf` | 252 | 2011 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 271_2007 Abdichtung von Hochbauten .pdf` | 271 | 2007 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 273_1989 Abdichtungen von befahrbaren Flächen im Hochbau.pdf` | 273 | 1989 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 274_VL_d_080303-VL.pdf` | 274 |  | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 342_VL_d_2008-04-17.pdf` | 342 | 2008 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 358_2010 Geländer und Brüstungen.pdf` | 358 | 2010 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 416_1_2007.pdf` | 416 | 2007 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA 500_2009.pdf` | 500 | 2009 | ersetzt/alt (xalt) |
| — | — | `xalt/neu/SIA D0165_2000 Kennzahlen im Immobilienmanagement.pdf` | 0165 | 2000 | ersetzt/alt (xalt) |
| — | — | `xalt/pub2007.pdf` | 2007 | 2007 | ersetzt/alt (xalt) |
| — | — | `xalt/reserve.pdf` |  |  | ersetzt/alt (xalt) |
| — | — | `xalt/revision.pdf` |  |  | ersetzt/alt (xalt) |

## SIA — Nachtrag 260717 (58 Dateien, beim Scan 11.07.2026 übersehen)

**Befund Run 15 (MacBook Pro, 17.07.2026):** Der automatische Inventar-Scan vom 11.07.2026 hat nur
`SIA_Norm/SIA_Normen/alle/` erfasst. Die Schwester-Ordner `SIA_Vertraege/`, `SIA_Merkblaetter/`,
`SIA_Abo/` sowie einzelne norm-eigene Unterordner (`SIA_Normen/SIA 102|112|282|380_1_2016/`) und die
Datei im `SIA_Norm/`-Wurzelverzeichnis blieben unerfasst — 58 Dateien. Die Meldung «SIA-Inventar
0 offene Positionen» der Läufe 13/14 beruhte damit auf einer unvollständigen Grundmenge und ist
korrigiert. Pfade unten relativ zu `PL - 02_Recht_Norm/02_Normen/SIA_Norm/`.

### Vertragsnormen (P1 — Faktenbasis der Skills `werkvertrag` und `honorarberechnung-sia102`)

| Status | Prio | Datei | Norm-Nr | Jahr | Bemerkung |
|---|---|---|---|---|---|
| [x] 260717 | P1 | `SIA_Vertraege/SIA1001.1_2020_Planer_Bauleitervertrag/1001-1_2020_d.pdf` | 1001/1 | 2020 | Planer-/Bauleitungsvertrag; Volltext 11 S.; established, adversarial verifiziert 260717 (9 Aussagen, 4 Beanstandungen korrigiert — u.a. Versicherungs-Sparten Ziff. 8.1); sia-1001-1-2020.md |
| [x] 260717 | P1 | `SIA_Vertraege/SIA1001.2_2020_Gesellschaftsvertrag_fuer_Planergemeinschaften/1001-2_2020_d.pdf` | 1001/2 | 2020 | Gesellschaftsvertrag Planergemeinschaften; Volltext 22 S.; established, verifiziert 260717 (7 Aussagen, 1 Beanstandung korrigiert — Aufbewahrungspflicht Ziff. 17.2); sia-1001-2-2020.md |
| [x] 260717 | P1 | `SIA_Vertraege/SIA1001.3_2020_Subvertag_fuer_Planer_und_oder_Bauleitungsleistung/1001-3_2020_d.pdf` | 1001/3 | 2020 | Subvertrag Planer-/Bauleitungsleistungen; Volltext 11 S.; established, verifiziert 260717 (11 Aussagen, 2 Beanstandungen korrigiert — Urheberrecht: 2 wörtliche Passagen umgeschrieben); sia-1001-3-2020.md |
| [x] 260717 | P1 | `SIA_Vertraege/SIA1001.11_BIM_Zusatzvereinbarung_BIM/1001-11-K_2018_d.pdf` | 1001/11-K | 2018 | BIM-Zusatzvereinbarung (Kommentar); Volltext 12 S.; established, verifiziert 260717 (11 Aussagen, 5 Beanstandungen korrigiert — u.a. Datenrechte, Kann-Formulierungen); sia-1001-11-2018.md |
| [x] 260717 | P1 | `SIA_Vertraege/SIA1023_Werkvertrag/e1023_2013_d.pdf` | 1023 | 2013 | Werkvertrags-Formular (Bezug SIA 118); Volltext 5 S.; established, verifiziert 260717 (9 Aussagen, 6 Beanstandungen korrigiert — Formular ist grösstenteils Leerfeld, SIA-118-Inhalte waren unbelegt hineingelesen); sia-1023-2013.md |
| [x] 260717 | P1 | `SIA_Vertraege/Honorarberechnung/Honorarempf_SIA2009_d.pdf` + `SIA_Vertraege/Honorarberechnung/z-werte 2015.pdf` | — | 2009/2015 | Honorar-Hilfsmittel in EIN Destillat gefasst; **wichtiger Befund: Honorarempfehlung 2009 ist keine SIA-Publikation, sondern eine KBOB-Empfehlung** (Fusszeile S. 2-6); established, verifiziert 260717 (13 Aussagen, 5 Beanstandungen korrigiert); sia-honorar-hilfsmittel.md |
| [ ] | P2 | `SIA_Vertraege/00_Vertag_Knowhow/230529_Vertragsunterschiede.pdf` | — | 2023 | Knowhow-Papier Vertragsunterschiede — noch nicht destilliert |
| [ ] | P3 | `SIA_Vertraege/SIA2031_Einzelarbeitsvertrag/Vorlage_1031_d.pdf` | 1031 | — | Einzelarbeitsvertrag (Arbeitsrecht, keine Baunorm) — tiefe Priorität |
| [ ] | P3 | `SIA_Vertraege/SIA2100_Vertrag_Praktikant_DE.pdf/Vertrag_Praktikant_DE.pdf` | — | — | Praktikantenvertrag (Arbeitsrecht, keine Baunorm) — tiefe Priorität |
| — | — | `SIA_Vertraege/SIA1001.1_2020_Planer_Bauleitervertrag/_Archiv/SIA1002_2001_VfAL_scan.PDF` | 1002 | 2001 | Archiv, ersetzt durch SIA 1001/1:2020 — übersprungen |
| — | — | `SIA_Vertraege/SIA1001.1_2020_Planer_Bauleitervertrag/_Archiv/SIA1002_2003_VfAL.pdf` | 1002 | 2003 | Archiv, ersetzt durch SIA 1001/1:2020 — übersprungen |
| — | — | `SIA_Vertraege/SIA1001.1_2020_Planer_Bauleitervertrag/_Archiv/SIA1002_2003_VfAL_Vorlage.pdf` | 1002 | 2003 | Archiv-Vorlage, ersetzt durch SIA 1001/1:2020 — übersprungen |

### Normen ausserhalb `alle/` (P1/P2 — echte Bestandslücken, keine Duplikate)

| Status | Prio | Datei | Norm-Nr | Jahr | Bemerkung |
|---|---|---|---|---|---|
| [~] 260717 | P1 | `SIA_Normen/SIA 380_1_2016/i380-1_2016_d.pdf` | 380/1 | 2016 | **Heizwärmebedarf — zentrale Energienachweis-Norm; im Bestand NUR hier (in `alle/` nur f/i-Sprachvarianten und die alte Ausgabe 2001 unter `xalt/`). PDF ist Vorschau/Auszug: 6 von 60 Normseiten, der gesamte normative Teil S. 5-58 fehlt → KEINE Q_H-Grenzwerte, KEINE U-Werte, KEINE Gebäudekategorien.** struktur-destillat (Auszug), status `speculative`, adversarial verifiziert 260717 (Run 15); **Bring-Schuld P1: Volltext beschaffen** (SIA-Abo/Kauf) — erst dann `established`. FALLE: `alle/xalt/neu/380_1_d_2001.pdf` ist Volltext, aber zweifach überholt (2001→2009→2016) und darf NICHT als Ersatz dienen. sia-380-1-2016.md; Nutzer: Agent `energie-berater`, Skill `planungsgrundlagen` |
| [x] 260717 | P2 | `i385-1_2011_d.pdf` (Wurzel `SIA_Norm/`) | 385/1 | 2011 | Anlagen für Trinkwarmwasser (nicht «Trinkwasser»); ersetzt SIA 385/3:1991; im Bestand nur hier (in `alle/` nur f-Variante). **PDF ist Vorschau/Auszug: 6 von 28 Normseiten, normativer Teil S. 5-26 fehlt → keine Grenzwerte (Legionellen/Ausstosszeit/Speicher/Daemmung).** struktur-destillat (Auszug), verifiziert 260717 (Run 15); Bring-Schuld P1: Volltext beschaffen; sia-385-1-2011.md |
| [ ] | P2 | `SIA_Normen/SIA 112/Bereichs_Phasenmatrix.pdf` | 112 | — | Hilfsmittel zu SIA 112 (Bereichs-/Phasenmatrix) — noch nicht destilliert |
| [ ] | P2 | `SIA_Normen/SIA 112/SIA_Leistungsmodell.pdf` | 112 | — | Hilfsmittel Leistungsmodell — noch nicht destilliert |
| [ ] | P3 | `SIA_Normen/SIA 112/tabelle_infrastruktur.xls.pdf` | 112 | — | Tabelle Infrastruktur (PDF-Druck einer XLS) — noch nicht destilliert |
| — | — | `SIA_Normen/SIA 282/SIA282.pdf` | 282 | — | Duplikat zu `alle/564_282.pdf` (destilliert 260713, sia-564-282.md) — übersprungen |
| — | — | `SIA_Normen/SIA 102/SIA_102_2020.pdf` | 102 | 2020 | Duplikat zu `alle/102.2020.pdf` (destilliert 260714) — übersprungen |
| — | — | `SIA_Normen/SIA 102/SIA_102_2014.pdf` | 102 | 2014 | Duplikat zu `alle/102_2014.pdf` (destilliert 260714) — übersprungen |
| — | — | `SIA_Normen/SIA 102/SIA_102_2003.pdf` | 102 | 2003 | ersetzt durch 2020; Duplikat/Altbestand — übersprungen |
| — | — | `SIA_Normen/SIA 102/SIA_102_2001.pdf` | 102 | 2001 | ersetzt durch 2020; Duplikat/Altbestand — übersprungen |

### Merkblätter (P2 — geschlossene Serie, noch nicht destilliert)

| Status | Prio | Datei | Norm-Nr | Jahr | Bemerkung |
|---|---|---|---|---|---|
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2001_2005_d.pdf` | 2001 | 2005 | SIA-Merkblatt-Serie 2000er — Titel am Original zu verifizieren |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2003_d.pdf` | 2003 | — | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2004_d.pdf` | 2004 | — | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2006_d.pdf` | 2006 | — | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2007_d.pdf` | 2007 | — | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2008_d.pdf` | 2008 | — | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2014_d.pdf` | 2014 | — | SIA-Merkblatt (Abgleich mit `alle/`-Destillat sia-2014-2017.md nötig — evtl. ältere Ausgabe) |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2015_2005_d.pdf` | 2015 | 2005 | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2016_2005_d.pdf` | 2016 | 2005 | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2017_d.pdf` | 2017 | — | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2018_2004_d.pdf` | 2018 | 2004 | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2020_d.pdf` | 2020 | — | SIA-Merkblatt (Abgleich mit sia-2020-2017.md nötig) |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2021_d.pdf` | 2021 | — | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2022_d.pdf` | 2022 | — | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2023_2004_d.pdf` | 2023 | 2004 | SIA-Merkblatt (Wohnungslüftung) |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2024_2006_d.pdf` | 2024 | 2006 | SIA-Merkblatt (Standard-Nutzungsbedingungen — hohe Relevanz für `kostenschaetzung`/Energie) |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2026_2006_d.pdf` | 2026 | 2006 | SIA-Merkblatt |
| [ ] | P2 | `SIA_Merkblaetter/MERKBLAETTER/2027_2006_d.pdf` | 2027 | 2006 | SIA-Merkblatt |
| — | — | `SIA_Merkblaetter/MERKBLAETTER/2007_e.pdf` | 2007 | — | Sprachvariante (englisch) — nicht destillieren |
| [ ] | P3 | `SIA_Merkblaetter/SIA2023_Wohnungslüftung.pdf` | 2023 | — | Begleit-/Auszugsdokument zu SIA 2023 |
| [ ] | P3 | `SIA_Merkblaetter/SIA271_Wegleitung_Abdichtung.pdf` | 271 | — | Wegleitung zu SIA 271 (Destillat sia-271-2007.md vorhanden) |
| [ ] | P3 | `SIA_Merkblaetter/SIA358_Artikel Geländer.pdf` | 358 | — | Fachartikel zu SIA 358 (Destillat sia-358-2010.md vorhanden) |
| [ ] | P3 | `SIA_Merkblaetter/SIA500_Auslegung.pdf` | 500 | — | Auslegung zu SIA 500 (Hindernisfreies Bauen; Destillat sia-500-2009.md vorhanden) |
| [ ] | P3 | `SIA_Merkblaetter/sia_142i-301d_Postversand_2015.pdf` | 142i | 2015 | Wettbewerbswesen, Postversand-Merkblatt |
| [ ] | P3 | `SIA_Merkblaetter/wettbewerb_befangenheit.pdf` | 142 | — | Befangenheit im Wettbewerb — Relevanz für Skill `wettbewerb` |

### Abonnement/Administration (nicht normativ — übersprungen)

| Status | Prio | Datei | Bemerkung |
|---|---|---|---|
| — | — | `SIA_Abo/Korrespondenz/121011 SIA 358 2010 Bestaetigung_81eeab10.pdf` | Bestellbestätigung — keine Norm |
| — | — | `SIA_Abo/Korrespondenz/121011_Zugangsdaten_Aktuell.pdf` | Zugangsdaten — keine Norm; enthält Credentials, nicht in die KB übernehmen |
| — | — | `SIA_Abo/Korrespondenz/130902 Rechnung 3.Normenabonnement 2013.pdf` | Rechnung — keine Norm |
| — | — | `SIA_Abo/Korrespondenz/131217 Rechnung 4.Normenabonnement 2013.pdf` | Rechnung — keine Norm |
| — | — | `SIA_Abo/Korrespondenz/140618 SIA d 0165 2000 Bestaetigung_85bafecd.pdf` | Bestellbestätigung — keine Norm |
| — | — | `SIA_Abo/Korrespondenz/180208_INorm-Abo_2018_Login.pdf` | Login-Info — keine Norm; enthält Credentials, nicht in die KB übernehmen |
| — | — | `SIA_Abo/Lizenzen_und_Vorlagen_2013/Vorlage_1012-1_d.pdf` | Lizenz-/Vertragsvorlage 1012-1 — Lizenzdokument, keine Norm |
| — | — | `SIA_Abo/Lizenzen_und_Vorlagen_2013/Vorlage_1012-2_d.pdf` | Lizenz-/Vertragsvorlage 1012-2 — Lizenzdokument, keine Norm |
| — | — | `SIA_Abo/Lizenzen_und_Vorlagen_2013/Vorlage_1012-3_d.pdf` | Lizenz-/Vertragsvorlage 1012-3 — Lizenzdokument, keine Norm |
| — | — | `SIA_Abo/Lizenzen_und_Vorlagen_2013/Vorlage_1012-4_d.pdf` | Lizenz-/Vertragsvorlage 1012-4 — Lizenzdokument, keine Norm |

## SIA-Gesamtverz. (2 Dateien)

| Status | Prio | Datei | Norm-Nr | Jahr | Bemerkung |
|---|---|---|---|---|---|
| [x] 260714 | P2 | `Gesamtverzeichnis SIA.pdf` |  |  | Produkt-/Preiskatalog ~2002; established (verifiziert 260714, 0 Fehler) → `sia-gesamtverzeichnis-2002.md` |
| [x] 260714 | — | `ersetzte_normen.pdf` |  |  | Gültigkeitsregister Stand 25.02.2013; established (verifiziert 260714, Stichprobe 13 Normen, 1 Fehler in REGISTER.md korrigiert) → `sia-register-2013.md` + `wiki/REGISTER.md` |

## VKF (49 Dateien)

| Status | Prio | Datei | Norm-Nr | Jahr | Bemerkung |
|---|---|---|---|---|---|
| [x] 260712 | P1 | `01_Brandschutznorm 2015/1-15_Brandschutznorm.pdf` |  |  |  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/100-15_Brandmauern.pdf` | 100 |  |  Reconcile 260713: vkf-brl-100-15-brandmauern.md (Duplikat vkf-brl-brandmauern-100-15.md, Merge erledigt 260713; verifiziert established)  |
| [x] 260712 | P1 | `02_Brandschutzrichtlinien 2015/16-15_rev2016_flucht_und_rettungswege.pdf` |  | 2016 |  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/2001-15_VKF-AEAI_BrandschutzMerkblatt_Solaranlange_d.pdf` | 2001 | 2001 |  Reconcile 260713: vkf-brm-2001-15-solaranlagen.md (Duplikat vkf-merkblatt-2001-15-solaranlagen.md, Merge offen)  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Aenderungen_Brandschutzrichtlinien_VKF-2017.pdf` |  | 2017 |  Reconcile 260713: vkf-brl-aenderungen-2017.md (Duplikat vkf-aenderungen-brandschutzrichtlinien-2017.md, Merge offen)  |
| [x] 260714 | P1 | `02_Brandschutzrichtlinien 2015/Anerkennungsverfahren.pdf` |  |  | established (verifiziert 260714, Volltextabgleich, Ziff.3.3 QM ergaenzt); vkf-brl-28-15-anerkennungsverfahren.md ist die vollstaendigere Fassung (Duplikat vkf-brl-anerkennungsverfahren.md, Loeschung wartet auf Rueckfrage)  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/BSPUB-1394520214-57.pdf` |  | 2021 |  Reconcile 260713: vkf-brandschutznorm-1-15de-bspub57.md  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/BSV2015-Bericht und Änderungen.pdf` | 2015 | 2015 |  Reconcile 260713: vkf-bsv2015-bericht-aenderungen.md (+ vkf-bsv2015-vernehmlassungsbericht.md, unterschiedlicher Fokus, pruefen)  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Baustoff & Bauteile.pdf` |  |  |  Reconcile 260713: vkf-brl-13-15-baustoffe-bauteile.md  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Beförderungsanlagen.pdf` |  |  |  Reconcile 260713: vkf-brl-23-15-befoerderungsanlagen.md  | verifiziert 260714 (Run 7)
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Begriffe & Definitionen.pdf` |  |  |  Reconcile 260713: vkf-brl-10-15-begriffe-definitionen.md  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Blitzschutzsysteme.pdf` |  |  |  Reconcile 260713: vkf-brl-22-15-blitzschutzsysteme.md  | verifiziert 260714 (Run 7)
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Brandmeldeanlage.pdf` |  |  |  Reconcile 260713: vkf-brl-20-15-brandmeldeanlagen.md  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Brandschutz-Praevention.pdf` |  |  |  Reconcile 260713: vkf-merkblatt-brandschutzklassifikation-bauteile.md (Dateiname/Inhalt-Mismatch, Rename offen)  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Brandschutzabstaende Tragwerke 15.pdf` |  |  |  Reconcile 260713: vkf-brl-15-15-brandschutzabstaende-tragwerke.md (deckt 15+17-Revision ab)  | verifiziert 260714 (Run 7)
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Brandschutzabstaende Tragwerke 17 BSPUB-1394520214-81.pdf` |  | 2021 |  Reconcile 260713: vkf-brl-15-15-brandschutzabstaende-tragwerke.md (deckt 15+17-Revision ab)  | verifiziert 260714 (Run 7)
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Brandverhuetung & organisatorischer Brandschutz.pdf` |  |  |  Reconcile 260713: vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md  | verifiziert 260714 (Run 7)
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/DIN EN 12101-2.pdf` | 1210 |  |  Reconcile 260713: din-en-12101-2-2003.md (Dublette gleiche Norm im VKF-Ordner)  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Flucht & Rettungswege.pdf` |  |  |  Reconcile 260713: vkf-brl-16-15-flucht-rettungswege.md (identisch/abgedeckt mit 16-15_rev2016)  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Gefährliche Stoffe.pdf` |  |  |  Reconcile 260713: vkf-brl-26-15-gefaehrliche-stoffe.md  | verifiziert 260714 (Run 7)
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Kennzeichnung von Fluchtwegen.pdf` |  |  |  Reconcile 260713: vkf-brl-17-15-kennzeichnung-fluchtwege.md  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Löscheinrichtungen.pdf` |  |  |  Reconcile 260713: vkf-brl-18-15-loescheinrichtungen.md  | verifiziert 260714 (Run 7)
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Lufttechnische Anlage.pdf` |  |  |  Reconcile 260713: vkf-brl-25-15-lufttechnische-anlagen.md  | verifiziert 260714 (Run 7)
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Merkblatt_012_d.pdf` |  |  |  Reconcile 260713: vst-merkblatt-012-tueren-fluchtwegen.md  |
| [x] 260712 | P1 | `02_Brandschutzrichtlinien 2015/Nachweisverfahren im Brandschutz.pdf` |  |  |  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Qualitätssicherung im Brandschutz.pdf` |  |  |  Reconcile 260713: vkf-brl-11-15-qualitaetssicherung-brandschutz.md  | verifiziert 260714 (Run 7)
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Rauch & Wärmeabzugsanlagen.pdf` |  |  |  Reconcile 260713: vkf-brl-21-15-rauch-waermeabzugsanlagen.md  | verifiziert 260714 (Run 7)
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/SService Nr19091815480.pdf` | 1909 |  |  Reconcile 260713: szs-steeldoc-brandschutz-stahlbau-2015.md  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Sprinkleranlage.pdf` |  |  |  Reconcile 260713: vkf-brl-19-15-sprinkleranlagen.md  | verifiziert 260714 (Run 7)
| [x] 260712 | P1 | `02_Brandschutzrichtlinien 2015/Verwendung von Baustoffen.pdf` |  |  |  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/Wärmetechnische Anlagen.pdf` |  |  |  Reconcile 260713: vkf-brl-24-15-waermetechnische-anlagen.md  |
| [x] 260713 | P1 | `02_Brandschutzrichtlinien 2015/gege-panikprogramm-1.pdf` |  |  |  Reconcile 260713: en-179-1125-2009-panikbeschlaege-gege.md  |
| [x] 260714 | P2 | `03_Verzeichnisse Brandschutz 2015/40-15_Weitere Bestimmungen.pdf` |  |  | established, verifiziert 260714, vollstaendig (Ziff. 3.7-3.9 + Abkuerzungsverz. ergaenzt, 2 Ergaenzungen BSR 26-15); vkf-verz-40-15-weitere-bestimmungen.md |
| [x] 260713 | P2 | `04_Erlaeuterungen Brandschutz 2015/100-15_Brandmauern.pdf` | 100 |  | identisch (MD5) mit bereits destilliertem `02_Brandschutzrichtlinien 2015/100-15_Brandmauern.pdf` → vkf-brl-100-15-brandmauern.md |
| [x] 260714 | P2 | `04_Erlaeuterungen Brandschutz 2015/101-15_Atrien u Innenhöfe.pdf` | 101 |  | established, verifiziert 260714 (Innenhof-Doppeldefinition Ziff.1.3.2/2.5 praezisiert); vkf-brl-101-15-atrien-innenhoefe.md |
| [x] 260714 | P2 | `04_Erlaeuterungen Brandschutz 2015/102-15_Doppelfassaden.pdf` | 102 |  | established, verifiziert 260714 (35 Aussagen, bestanden); vkf-brl-102-15-doppelfassaden.md |
| [x] 260714 | P2 | `04_Erlaeuterungen Brandschutz 2015/103-15_Cheminees.pdf` | 103 |  | established, verifiziert 260714 (45 Aussagen, bestanden); vkf-brl-103-15-cheminees.md |
| [x] 260714 | P2 | `04_Erlaeuterungen Brandschutz 2015/104-15_Spänefeuer.pdf` | 104 |  | established, verifiziert 260714 (22 Aussagen, kosmetische Praezisierung Ziff.8.1.1); vkf-brl-104-15-spaenefeuer.md |
| [x] 260714 | P2 | `04_Erlaeuterungen Brandschutz 2015/105-15_Schnitzelfeuerung.pdf` | 105 |  | established, verifiziert 260714 (45 Aussagen, bestanden); vkf-brl-105-15-schnitzelfeuerung.md |
| [x] 260714 | P2 | `04_Erlaeuterungen Brandschutz 2015/106-15_Pelletsfeuerung.pdf` | 106 |  | established, verifiziert 260714 (35 Aussagen, bestanden); vkf-brl-106-15-pelletsfeuerung.md |
| [x] 260714 | P2 | `04_Erlaeuterungen Brandschutz 2015/107-15_Flüssiggasanlagen.pdf` | 107 |  | established, verifiziert 260714 2. Runde (55 Aussagen, bestanden); vkf-brl-107-15-fluessiggasanlagen.md |
| [x] 260714 | P2 | `04_Erlaeuterungen Brandschutz 2015/108-15_Betriebsbereitschaft BFS.pdf` | 108 |  | established, verifiziert 260714 (45 Aussagen, bestanden); vkf-brl-108-15-betriebsbereitschaft-bfs.md |
| [x] 260714 | P2 | `05_Arbeitshilfen Brandschutz 2015/1000-15_Gebäude mit geringer Abmessung.pdf` | 1000 |  | established, verifiziert 260714 (45 Aussagen, bestanden); vkf-ah-1000-15-gebaeude-geringer-abmessung.md |
| [x] 260714 | P2 | `05_Arbeitshilfen Brandschutz 2015/1001-15_Wohnbauten.pdf` | 1001 |  | established, verifiziert 260714 (60 Aussagen, 2 Korrekturen Ziff.7.5/12.2); vkf-ah-1001-15-wohnbauten.md |
| [x] 260714 | P2 | `05_Arbeitshilfen Brandschutz 2015/1002-03d_Parkhaeuser.pdf` | 1002 |  | established, verifiziert 260714 (45 Aussagen, 1 Korrektur Tabelle 2 R30 statt EI30); vkf-ah-1002-03-parkhaeuser.md |
| [x] 260714 | P2 | `05_Arbeitshilfen Brandschutz 2015/1002-15_Schulbauten.pdf` | 1002 |  | established, verifiziert 260714 (60 Aussagen, Tueren-Ausnahmeregel Ziff.7.4.6 ergaenzt); vkf-ah-1002-15-schulbauten.md |
| — | — | `_LINK.docx` |  |  | keine Norm, Verweis-/Linkdatei — übersprungen |
| — | — | `z_Administration/000_VKF_Bestellung_Norm_2015.pdf` | 000 | 2015 | keine Norm, Bestellformular — übersprungen |
| — | — | `z_Administration/000_VKF_Lieferschein_Norm_2015.pdf` | 000 | 2015 | keine Norm, Lieferschein — übersprungen |
| [ ] | P2 | `07_BSV 2026 Projekt (noch nicht in Kraft)/260711 VKF Normkonzept BSV 2026 Stand 2022-10-06.pdf` | — | 2022 | **Nachtrag 260717 (Run 15): im Scan 11.07.2026 nicht erfasst.** Normkonzept BSV 2026, Stand 06.10.2022 — noch NICHT in Kraft, daher nie als geltendes Recht zitieren. Strategisch relevant (Vorschau auf die Ablösung der BSV 2015): destillieren mit klarem Status-Vermerk `zukuenftig/nicht in Kraft` |

## DIN (72 Dateien)

| Status | Prio | Datei | Norm-Nr | Jahr | Bemerkung |
|---|---|---|---|---|---|
| — | P3 | `0 Anleitung.docx` |  |  | keine Norm, Admin-Anleitung Download/FileOpen-Plugin (Büro Meili Peter Architekten, Stand 2014) — übersprungen |
| [x] 260713 | P3 | `DIN-Norm/DIN 1045-2.pdf` | 1045 | 2008 | destilliert (din-1045-2-2008.md), vollstaendig S.1-62/62  Retro-verifiziert Mini-Run 18 (260714): established. Q&A-Selbstbefragung Mini-Run 26 (260714): 20/20 bestanden, 0 Fehler, 4 Ergaenzungen (Chloridgrenzwerte Gesteinskoernung, Wassereindringwiderstand 5.5.3, Restwasser-Verbot/Silikastaub). |
| [x] 260713 | P3 | `DIN-Norm/DIN 105-100.pdf` | 105 | 2012 | destilliert (din-105-100-2012.md), vollstaendig S.1-28/28, ersetzt DIN V 105-100:2005 ; retro-verifiziert Mini-Run 15 (260713); Q&A-Selbstbefragung Mini-Run 26 (260714): 20/20 bestanden, 0 Fehler, 10 Ergaenzungen (Konformitaetsbewertung Ziff.7, Kennzeichnung Ziff.5.2, Form/Grifflöcher) |
| [x] 260713 | P3 | `DIN-Norm/DIN 105-5.pdf` | 105 | 1984 | established, verifiziert 260713 (din-105-5-1984.md), Mini-Run 14: 13 Aussagen geprueft, keine Fehler; Q&A-Selbstbefragung Mini-Run 26 (260714): 18 Fragen, 0 Fehler, 13 Ergaenzungen (Leichtlangloch-Bezeichnungsschema Tab.7, Ziff.3.8 Kalk/Dampftest, Kennzeichnung+Tab.3/4) |
| [x] 260713 | P3 | `DIN-Norm/DIN 1053-1.pdf` | 1053 | 1996 | established (verifiziert 260713, Tabelle 12 korrigiert), din-1053-1-1996.md, vollstaendig S.1-32/32. Q&A-Selbstbefragung Mini-Run 22 (260714): 12/20 sofort bestanden, 1 Praezisierung (Ziff.8.1.2.3d Tab.8/Gl.18), 7 Ergaenzungen (Gewoelbe/Bogen/Kappen, Frost, Naturstein-Schlankheit u.a.). |
| [x] 260713 | P3 | `DIN-Norm/DIN 1053-100.pdf` | 1053 | 2007 | established (verifiziert 260713, Zug/Schub/aussergew. Einwirkung ergaenzt), din-1053-100-2007.md, vollstaendig S.1-39/39; Q&A-Selbstbefragung Mini-Run 25 (260714): 18 Fragen, 10 bestanden, 8 Ergaenzungen, 0 Fehler (15%-Umlagerung, Mindestauflagertiefen Ziff.8.7.2, α_s/c-Schubbeiwerte, Wind genaueres Verfahren Ziff.9.3, mitwirkende Breite Ziff.8.8, Anhang B.3/B.4 Naturstein, Kellerwand-Abminderung Gl.43/44, Tabelle-2-Fussnoten) |
| [x] 260713 | P3 | `DIN-Norm/DIN 1053-2.pdf` | 1053 | 1996 | established (verifiziert 260713, mehrere Ziffern+Tabelle 1 nachgetragen), din-1053-2-1996.md, vollstaendig S.1-5/5; Q&A-Selbstbefragung Mini-Run 26 (260714): 16/16 bestanden, 0 Fehler, 2 Ergaenzungen (Vorwort/Erscheinungszusammenhang mit 1053-1) |
| [x] 260713 | P3 | `DIN-Norm/DIN 1053-3.pdf` | 1053 | 1990 | established (verifiziert 260713, Ziffer-Zuordnung+Tabellen korrigiert), din-1053-3-1990.md, vollstaendig S.1-8/8; Q&A-Selbstbefragung Mini-Run 26 (260714): 15 Fragen, 0 Fehler, 7 Ergaenzungen (Bemessungsquerschnitt 4.3.2, Ueberdeckung 7.5, Ziff.7.1) |
| [x] 260713 | P3 | `DIN-Norm/DIN 1053-4.pdf` | 1053 | 2011 | destilliert (din-1053-4-2011.md), vollstaendig S.1-32/32 ; retro-verifiziert Mini-Run 15 (260713); Q&A-Selbstbefragung Mini-Run 26 (260714): 20/20 bestanden, 0 Fehler, 2 Ergaenzungen (Aufhaengebewehrung/-baender 9.2.2.2/.4, BGG 964) |
| [x] 260713 | P3 | `DIN-Norm/DIN 1054.pdf` | 1054 | 2010 | destilliert (din-1054-2010.md), vollstaendig S.1-105/105, Mini-Run3 ; retro-verifiziert Mini-Run 15 (260713) | Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 20 bestanden, 0 Fehler, 2 Ergaenzungen.
| [x] 260712 | P3 | `DIN-Norm/DIN 1055-2.pdf` | 1055 | 2010 | destilliert (din-1055-2-2010.md), Bodenkenngroessen ; retro-verifiziert Mini-Run 15 (260713); Q&A-Selbstbefragung Mini-Run 26 (260714): 16/16 bestanden, 0 Fehler, 6 Ergaenzungen (Ziff.4.1(4) gemischtkoernige Boeden, geschuettete Boeden, Kohaesionswerte) |
| [x] 260713 | P3 | `DIN-Norm/DIN 1072 Beiblatt 1.pdf` | 1072 | 1988 | destilliert (din-1072-beiblatt1-1988.md)  verifiziert 260713 (bestanden); Q&A-Selbstbefragung Mini-Run 26 (260714): keine Widersprueche, 3 Ergaenzungen (5 Nachrechnungsklassen statt nur 12/12, Schwingbeiwerte 3.3.4, Aenderungshistorie) |
| [x] 260713 | P3 | `DIN-Norm/DIN 1076.pdf` | 1076 | 1999 | destilliert (din-1076-1999.md)  verifiziert 260713 (beanstandet-korrigiert: Ziff. 4.4 Kann-Vorschrift praezisiert) | Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 20 bestanden, 0 Fehler, 4 Ergaenzungen.
| [x] 260713 | P3 | `DIN-Norm/DIN 1164-10.pdf` | 1164 | 2004 | destilliert (din-1164-10-2004.md)  verifiziert 260713 (bestanden) | Q&A-Selbstbefragung Mini-Run 27 (260714): 20 Fragen, 16 bestanden, 0 Fehler, 2 Ergaenzungen (Normenreihe/LH-Zement-Streichung, Auslieferungsstellen).
| [x] 260712 | P3 | `DIN-Norm/DIN 1249-11.pdf` | 1249 | 1986 | destilliert (din-1249-11-1986.md)  verifiziert 260713 (bestanden) | Q&A-Selbstbefragung Mini-Run 27 (260714): 18 Fragen, 16 bestanden, 0 Fehler, 2 Ergaenzungen (KG-Definition, Erlaeuterungen-Abschnitt).
| [x] 260713 | P3 | `DIN-Norm/DIN 1356-1.pdf` | 1356 | 1995 | destilliert (din-1356-1-1995.md)  verifiziert 260713 (bestanden) | Q&A-Selbstbefragung Mini-Run 27 (260714): 20 Fragen, 13 bestanden, 0 Fehler, 7 Ergaenzungen (Massstaebe, Schnittverlauf, Kennzeichnung Schnittflaechen, Tabellen 4/5).
| [x] 260713 | P3 | `DIN-Norm/DIN 1356-6.pdf` | 1356 | 2006 | destilliert (din-1356-6-2006.md)  verifiziert 260713 (beanstandet-korrigiert: Fundstelle Einleitung vs Ziff.1) | Retro-verifiziert Mini-Run 19 (260714): established, bestanden. Q&A-Selbstbefragung Mini-Run 27 (260714): 20 Fragen, 20 bestanden, 0 Fehler, 8 Ergaenzungen (Informationsdichte I/II inkl. Rechte-Pflichtangabe).
| [x] 260713 | P3 | `DIN-Norm/DIN 1627_Auszuege .pdf` | 1627 | 2011 | Teil-Destillat, verifiziert 260713 (din-en-1627-2011.md, nur 4/44 S. im Bestand, pdfinfo bestaetigt), Mini-Run 14: 1 Klassifizierungsfehler (RC 4) korrigiert, KB-Luecke Vollversion in QUESTIONS.md | Q&A-Selbstbefragung Mini-Run 27 (260714): 12 Fragen (Teilbestand 4/44 S.), 10 bestanden, 0 Fehler, 2 Ergaenzungen.
| [x] 260712 | P3 | `DIN-Norm/DIN 18040-1.pdf` | 1804 | 2010 | destilliert (din-18040-1-2010.md), Reconcile 260712 Mini-Run2 ; verifiziert 260713 (Volltextabgleich Run 7, 2 Luecken ergaenzt). Q&A-Selbstbefragung Mini-Run 20 (260714): 18/18 Fragen bestanden, 1 Fundstellen-Praezisierung (Rampe Ziff.4.3.8 S.16-18). |
| [x] 260713 | P3 | `DIN-Norm/DIN 18040-2.pdf` | 1804 | 2011 | destilliert (din-18040-2-2011.md), Pendant zu DIN 18040-1 ; verifiziert 260713 (Volltextabgleich Run 7, keine Fehler) | Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 20 bestanden, 0 Fehler, 3 Ergaenzungen.
| [x] 260712 | P3 | `DIN-Norm/DIN 18065.pdf` | 1806 | 2000 | destilliert (din-18065-2000.md), Reconcile 260712 Mini-Run2  Retro-verifiziert Mini-Run 18 (260714): established. | Q&A-Selbstbefragung Mini-Run 27 (260714): 20 Fragen, 16 bestanden, 1 Fehler korrigiert (Fussnote 1 Tabelle 2 war invertiert), 3 Ergaenzungen.
| [x] 260713 | P3 | `DIN-Norm/DIN 18232-2.pdf` | 1823 | 2007 | established, verifiziert 260713 (din-18232-2-2007.md), vollstaendig S.1-30/30, Brandschutz-relevant (NRA), Mini-Run 14: 66 Aussagen geprueft, 1 Ergaenzung | Q&A-Selbstbefragung Mini-Run 28 (260714): 18 Fragen, 18 bestanden, 0 Fehler, 3 Ergaenzungen.
| [x] 260712 | P3 | `DIN-Norm/DIN 18299.pdf` | 1829 | 2010 | destilliert (din-18299-2010.md), Reconcile 260712 Mini-Run2 ; verifiziert (Modell D) 260714, Ziff. 0.4 -> 0.4.1/0.4.2 praezisiert | Q&A-Selbstbefragung Mini-Run 27 (260714): 20 Fragen, 20 bestanden, 0 Fehler, 0 Ergaenzungen (Destillat bereits vollstaendig).
| [x] 260713 | P3 | `DIN-Norm/DIN 18560-2.pdf` | 1856 | 2009 | destilliert (din-18560-2-2009.md)  verifiziert 260713 (bestanden) | Q&A-Selbstbefragung Mini-Run 27 (260714): 18 Fragen, 13 bestanden, 0 Fehler, 5 Ergaenzungen (Zusammendrueckbarkeit C, Rohrueberdeckung, CM-Feuchte, Haerteprueфung).
| [x] 260713 | P3 | `DIN-Norm/DIN 1946-4.pdf` | 1946 | 2008 | established, verifiziert 260713 (din-1946-4-2008.md), vollstaendig S.1-66/66, Healthcare-RLT-Norm, Mini-Run 14: 55 Aussagen geprueft, 2 Fehler korrigiert | Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 20 bestanden, 0 Fehler, 3 Ergaenzungen.
| [x] 260713 | P3 | `DIN-Norm/DIN 1946-6.pdf` | 1946 | 2009 | established, verifiziert 260713 (din-1946-6-2009.md, vollstaendig S.1-125/125, adversariale Retro-Verifikation Mini-Run 13: 14 von ca. 100 Aussagen korrigiert) |
| [x] 260713 | P3 | `DIN-Norm/DIN 1946-7.pdf` | 1946 | 2009 | destilliert (din-1946-7-2009.md)  verifiziert 260713 (beanstandet-korrigiert) | Retro-verifiziert Mini-Run 19 (260714): established, ergaenzt (Ziff.5.2/5.3.7/Geltungsbereich). Q&A-Selbstbefragung Mini-Run 24 (260714): 20 Fragen, 0 Fehler, 14 Ergaenzungen, Abgrenzung DIN 1946-4 praezisiert.
| [x] 260713 | P3 | `DIN-Norm/DIN 1960.pdf` | 1960 | 2010 | destilliert (din-1960-2010.md), VOB Teil A ; retro-verifiziert Mini-Run 15 (260713) | Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 19 bestanden, 0 Fehler, 1 Ergaenzung.
| [x] 260713 | P3 | `DIN-Norm/DIN 1961.pdf` | 1961 | 2010 | established, verifiziert 260713 (din-1961-2010.md), VOB Teil B, Mini-Run 14: 85 Aussagen geprueft, keine Fehler; Q&A-Selbstbefragung Mini-Run 25 260714: 20 Fragen, 0 Fehler, 8 Vollstaendigkeits-Ergaenzungen (§ 10 Abs. 3-6 Nachbarschadenshaftung/Schutzrechte, § 3 Abs. 3-6 Zustandsniederschrift, § 4 Abs. 9-10 Fundklausel u.a.) |
| [x] 260713 | P3 | `DIN-Norm/DIN 272.pdf` | 272 | 1986 | destilliert (din-272-1986.md)  verifiziert 260713 (beanstandet-korrigiert: Vorlast-Faktor 10 falsch, Ziffer-Zuordnung korrigiert) | Retro-verifiziert Mini-Run 19 (260714): established, praezisiert (Geltungsbereich/Fundstellen, Vorlast-Faktor bestaetigt). Q&A-Selbstbefragung Mini-Run 27 (260714): 18 Fragen, 15 bestanden, 0 Fehler, 3 Ergaenzungen (Pruefbericht-Klima, Literaturref., DIN-18560-Systematik).
| [x] 260712 | P3 | `DIN-Norm/DIN 276-1.pdf` | 276 | 2008 | destilliert (din-276-1-2008.md), Reconcile 260712 Mini-Run2 ; verifiziert (Modell D) 260714, Kostenkennwert-Fundstelle korrigiert | Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 20 bestanden, 0 Fehler, 3 Ergaenzungen.
| [x] 260712 | P3 | `DIN-Norm/DIN 276-4.pdf` | 276 | 2009 | destilliert (din-276-4-2009.md), Reconcile 260712 Mini-Run2 ; retro-verifiziert Mini-Run 15 (260713) | Q&A-Selbstbefragung Mini-Run 27 (260714): 18 Fragen, 18 bestanden, 0 Fehler, 2 Ergaenzungen (NABau-Ausschuss, Schnittstelle KG 300/400).
| [x] | P3 | `DIN-Norm/DIN 277-1.pdf` | 277 | 2005 | destilliert 260712 ; verifiziert 260713 (Fundstellenfehler + unbelegte SIA-416-Gleichsetzung korrigiert, Run 7), erneut verifiziert (Modell D) 260714 |
| — | P3 | `DIN-Norm/DIN 277-1_Bildteil_MMMP München.pdf` | 277 |  | Foto-Scan Bildteil, Duplikat von DIN 277-1:2005-02 (bereits din-277-1-2005.md) — übersprungen |
| — | P3 | `DIN-Norm/DIN 277-1_MMMP München.pdf` | 277 |  | Foto-Scan desselben Bürobuch-Exemplars DIN 277-1:2005-02, inhaltlich Duplikat von din-277-1-2005.md — übersprungen | Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 14 bestanden, 1 Fehler korrigiert (Ziff. 4.1.2b), mehrere Ergaenzungen.
| [x] | P3 | `DIN-Norm/DIN 277-2.pdf` | 277 | 2005 | destilliert 260712 ; verifiziert (Modell D) 260714, ca. 60 -> 69 Raumkategorien korrigiert. Q&A-Selbstbefragung Mini-Run 24 (260714): 20 Fragen, 8 bestanden, 0 Fehler, 12 Ergaenzungen (Gruppe 7 Sonstige Nutzungen inkl. Schutzraeume). |
| [x] 260712 | P3 | `DIN-Norm/DIN 277-3.pdf` | 277 | 2005 | destilliert (din-277-3-2005.md), Inventar-Nachtrag 260713 (war faelschlich offen)  Retro-verifiziert Mini-Run 18 (260714): established. Q&A-Selbstbefragung Mini-Run 24 (260714): 21 Fragen, 17 bestanden, 0 Fehler, 4 Ergaenzungen (KG 313/520-Sonderfaelle).
| [x] 260713 | P3 | `DIN-Norm/DIN 4102-1.pdf` | 4102 | 1998 | established, verifiziert 260713 (din-4102-1-1998.md, vollstaendig S.1-28/28, Anhang B S.21-25 nachgelesen Mini-Run 12), Mini-Run 14: 58 Aussagen geprueft, 6 Fehler korrigiert + fehlende Ziff. 5.2.4 ergaenzt. Q&A-Selbstbefragung Mini-Run 20 (260714): 18/18 bestanden, 2 Korrekturen (Ziff. B.5.3 Brenner/Probenunterlage; Ziff. 5.2.4.5 Gipskarton-Teilregeln) + Vorwort-Aenderungsliste ergaenzt. |
| [x] 260713 | P3 | `DIN-Norm/DIN 4102-2.pdf` | 4102 | 1977 | destilliert (din-4102-2-1977.md) ; verifiziert 260713 (Volltextabgleich Run 7, keine Fehler) | Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 3 bestanden, 0 Fehler, mehrere Ergaenzungen.
| [x] 260712 | P3 | `DIN-Norm/DIN 4426.pdf` | 4426 | 2001 | destilliert (din-4426-2001.md), Fassadengeruest-Verankerung + Dachhaken relevant  verifiziert 260713 (bestanden); Q&A-Selbstbefragung Mini-Run 25 260714 (19 Fragen, 18 bestanden, 1 Ergaenzung Ziff. 5.2.2.1) |
| [x] 260713 | P3 | `DIN-Norm/DIN 4844-2.pdf` | 4844 | 2001 | destilliert (din-4844-2-2001.md), vollstaendig S.1-23/23, Mini-Run3  Retro-verifiziert Mini-Run 18 (260714): established, keine Korrektur noetig. Q&A-Selbstbefragung Mini-Run 24 (260714): 20 Fragen, 0 Fehler, 13 Ergaenzungen (Kombinationszeichen D-C001-004, Healthcare-Zeichen D-P011/D-P016/D-M020).
| [x] 260713 | P3 | `DIN-Norm/DIN 5034-1.pdf` | 5034 | 1999 | established (verifiziert 260713, Dm/Dmin-Grenzwerte+fehlende Regelspur korrigiert), din-5034-1-1999.md, Teil-Destillat | Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 18 bestanden, 0 Fehler, 2 Ergaenzungen.
| [x] 260713 | P3 | `DIN-Norm/DIN 5034-2.pdf` | 5034 | 1985 | established (verifiziert 260713, Fundstellen korrigiert, Gl.17 ergaenzt), din-5034-2-1985.md, vollstaendig S.1-13/14. Q&A-Selbstbefragung Mini-Run 24 (260714): 18 Fragen, 0 Fehler, 9 Ergaenzungen, DIN-4710-Verweis geklaert.
| [x] 260712 | P3 | `DIN-Norm/DIN 5034-3.pdf` | 5034 | 2007 | established (verifiziert 260713, DRr-Formel+g-Abhaengigkeit praezisiert), din-5034-3-2007.md | Q&A-Selbstbefragung Mini-Run 28 (260714): 18 Fragen, 15 bestanden, 1 Fehler korrigiert, 2 Ergaenzungen.
| [x] 260713 | P3 | `DIN-Norm/DIN 5034-4.pdf` | 5034 | 1994 | established (verifiziert 260713, k1h/k1v-Formelfehler korrigiert — war sachlich falsch), din-5034-4-1994.md, Teil-Destillat (Scan nur ungerade Seiten). Q&A-Selbstbefragung Mini-Run 25 (260714): 20 Fragen, 12 bestanden, 8 Ergaenzungen (Ziff. 1 Zu-/Abschlaege Arbeitsraeume/extreme Verhaeltnisse, Normenreihe-Uebersicht, Seiten-alpha-Zuordnung Tabellen), 0 Fehler. |
| [x] 260713 | P3 | `DIN-Norm/DIN 5034-6.pdf` | 5034 | 1995 | established (verifiziert 260713, Blendschutz/Waermestrahlung-Passage ergaenzt), din-5034-6-1995.md, vollstaendig S.1-6/6. Q&A-Selbstbefragung Mini-Run 24 (260714): 15 Fragen, 2 Korrekturen (g2-Anmerkung, Formelzeichen a=Raumtiefe), 1 Ergaenzung.
| [x] 260712 | P3 | `DIN-Norm/DIN 68119.pdf` | 6811 | 1996 | destilliert (din-68119-1996.md)  verifiziert 260713 (beanstandet-korrigiert: Fundstelle + Faserabweichung Gueteklasse praezisiert) | Q&A-Selbstbefragung Mini-Run 27 (260714): 20 Fragen, 18 bestanden, 1 Fehler korrigiert (Tabelle 4 Farbe/Harzgallen/Insektenfrass entbuendelt), 1 Ergaenzung.
| — | P3 | `DIN-Norm/DIN 68800-2 e.pdf` | 6880 |  | englische Fassung, uebersprungen (Sprachvarianten-Regel) |
| [x] 260713 | P3 | `DIN-Norm/DIN 919-1.pdf` | 919 | 1991 | destilliert (din-919-1-1991.md)  verifiziert 260713 (beanstandet-korrigiert: Fundstelle + falsche KF/KH-Interpretation korrigiert) | Retro-verifiziert Mini-Run 19 (260714): established, bestanden. Q&A-Selbstbefragung Mini-Run 27 (260714): 18 Fragen, 12 bestanden, 0 Fehler, 6 Ergaenzungen (Ziff. 8.2.3/8.2.4/8.3 komplett neu, Ziff. 7.3/9.3 ergaenzt).
| [x] 260712 | P3 | `DIN-Norm/DIN EN 12101-2.pdf` | 1210 | 2003 | destilliert (din-en-12101-2-2003.md, S.1-16+31-38/38), Reconcile 260712 Mini-Run2  Retro-verifiziert Mini-Run 18 (260714): established. Q&A-Selbstbefragung Mini-Run 22 (260714): 14/20 bestanden, 0 Fehler, 6 Ergaenzungen (Typ-A/B-NRWG, Abschnitt 10 Einbau/Wartung u.a.). |
| [x] 260712 | P3 | `DIN-Norm/DIN EN 12207.pdf` | 1220 | 2000 | destilliert (din-en-12207-2000.md)  Retro-verifiziert Mini-Run 18 (260714): established. Q&A-Selbstbefragung Mini-Run 25 (260714): 21 Fragen, 17 bestanden, 5 Ergänzungen (Ziff. 2/3, Vorwort-Herkunft), 0 Fehler. |
| [x] 260713 | P3 | `DIN-Norm/DIN V 105-100.pdf` | 105 | 2005 | destilliert (din-v-105-100-2005.md), vollstaendig S.1-31/31, Mini-Run3  Retro-verifiziert Mini-Run 18 (260714): established. | Q&A-Selbstbefragung Mini-Run 28 (260714): 19 Fragen, 19 bestanden, 0 Fehler, 2 Ergaenzungen.
| [x] 260713 | P3 | `DIN-Norm/DIN V 106.pdf` | 106 | 2005 | destilliert (din-v-106-2005.md), vollstaendig S.1-26/26, Mini-Run3  Retro-verifiziert Mini-Run 18 (260714): established. | Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 19 bestanden, 1 Fehler korrigiert, 1 Ergaenzung.
| [x] 260713 | P3 | `DIN-Norm/DIN V 107.pdf` | 107 | 1974 | destilliert (din-107-1974.md), Original ist DIN 107 ohne Vornorm-V-Zusatz  verifiziert 260713 (beanstandet-korrigiert: Korrelationstabelle ergaenzt) | Retro-verifiziert Mini-Run 19 (260714): established, bestanden. Q&A-Selbstbefragung Mini-Run 26 (260714): 15 Fragen, 0 Fehler, 3 Ergaenzungen (Ausgabe bereits 1922, Geländer-Definitionen 6.1.3/.4, Herde-Streichung 1974).
| [x] 260713 | P3 | `DIN-Norm/DIN_18041.pdf` | 18041 | 2004 | destilliert vollstaendig (din-18041-2004.md, S.1-39/39), Hoersamkeit kleine/mittlere Raeume ; verifiziert Mini-Run 17 (260714, Tab.1 Zeile II + Anhang D Zuschlaege korrigiert). Q&A-Selbstbefragung Mini-Run 22 (260714): 21/21 bestanden, 0 Fehler, 2 Ergaenzungen (Ziff.4.2.1.1 Grundprinzip, Ziff.4.5.3 Durchsage-/Alarmierungsanlagen). |
| [x] 260713 | P3 | `Sonstiges/041210_vstaett_vo.pdf` | 0412 |  | destilliert vollstaendig (vstaettvo-niedersachsen-2004.md, S.1-31/31) | Retro-verifiziert Mini-Run 19 (260714): established, vervollstaendigt (S.1-31/31) + bestanden. Q&A-Selbstbefragung Mini-Run 29 (260715): 20 Fragen, 16 bestanden, 0 Fehler, 4 Ergaenzungen (§7 Abs.4 Buehnenhaus/Arbeitsgalerien, §10 Abs.5 Sitzplatzzahl, §16 Abs.3 Buehnen-Rauchabzug, Begriffe Szenenflaeche/Buehne/Mehrzweckhalle).
| [x] 260713 | P3 | `Sonstiges/Abkuerzungsverzeichnis.pdf` |  |  | established (din-abkuerzungsverzeichnis-2010.md), reines Glossar, Mini-Run 12 | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (Eintragszahl ~500, VOF/VOL, NORM-SIA-Zuordnung, TRPV, EnEV, BMZ). Q&A-Selbstbefragung Mini-Run 27 (260714): 19 Fragen, 18 bestanden, 1 Fehler korrigiert (Eintragszahl 300 zu 500), 0 Ergaenzungen.
| [x] 260713 | P3 | `Sonstiges/Allgemeine_Grundlagen.pdf` |  |  | destilliert (baurecht-din-normenwerk-grundlagen-2010.md), VOB/DIN-Normenarbeit/EU-Harmonisierung | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (VOB-Teil-A-Paragrafenzahl, DIN-18330-Kennbuchstabe). Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen (Volltextabgleich).
| [x] 260713 | P3 | `Sonstiges/ArbStättV.pdf` |  |  | destilliert (arbstaettv-2004.md) | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (2 Fundstellen-Seitenzahlen, 1 Fehlzuordnung). Q&A-Selbstbefragung Mini-Run 28 (260714): 18 Fragen, 13 bestanden, Fehler korrigiert (Seitenangabe+Tippfehler), 4 Ergaenzungen.
| [x] 260713 | P3 | `Sonstiges/BauNVO.pdf` |  |  | destilliert (baunvo-1990.md) | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (Baugebiets-Katalog WB-Position). Q&A-Selbstbefragung Mini-Run 28 (260714): 20 Fragen, 18 bestanden, 1 Fehler korrigiert (§12 Abs.3 Nr.2), 2 Ergaenzungen.
| [x] 260713 | P3 | `Sonstiges/Baupreisindizes.pdf` |  | 2010 | destilliert (baupreisindizes-statistisches-bundesamt-2010.md), vollstaendig S.1-23/23, Mini-Run3; Statistik-Publikation nicht DIN-Norm | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (Fussnoten-Fundstelle, Bauland-Fussnote). Q&A-Selbstbefragung Mini-Run 29 (260715): 20 Fragen, 16 bestanden, 1 Fehler korrigiert (Umbasierungsformel-Beschriftung), 3 Ergaenzungen.
| [x] 260713 | P3 | `Sonstiges/DVNBauO_18.pdf` |  |  | destilliert (nbauo-barrierefreiheit-2004.md, gebuendelt mit DVNBauO_29+NBauO Par45/Par48) | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (§45/§48/§18/§29 mehrere Ergaenzungen).
| [x] 260713 | P3 | `Sonstiges/DVNBauO_29.pdf` |  |  | destilliert (nbauo-barrierefreiheit-2004.md, gebuendelt) | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (§45/§48/§18/§29 mehrere Ergaenzungen).
| [x] 260713 | P3 | `Sonstiges/Inhaltsverzeichnis.pdf` |  |  | destilliert (din-inhaltsverzeichnis-normensammlung-2012.md), Register ~450 Normen Stand 2012-04 | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (DIN V 106 Eintrag ergaenzt). Q&A-Selbstbefragung Mini-Run 29 (260715): 18 Fragen, 16 bestanden, 0 Fehler, 2 Praezisierungen (DIN EN 1991/1993-Teile-Luecken, DIN EN 1176-4 Datum).
| [x] 260713 | P3 | `Sonstiges/Komm Din 18024 Teil 1.pdf` | 1802 | 2001 | destilliert vollstaendig (komm-din18024-t1-bayern-2001.md, S.1-68/68) | Q&A-Selbstbefragung Mini-Run 29 (260715): 20 Fragen, 12 bestanden, 1 Korrektur (Abschnitt 12.1 Fahrsteige/Fahrtreppen-Aussage praezisiert), 8 Ergaenzungen.
| [x] 260713 | P3 | `Sonstiges/NBauO_§_45.pdf` |  |  | destilliert (nbauo-barrierefreiheit-2004.md, gebuendelt) | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (§45/§48/§18/§29 mehrere Ergaenzungen).
| [x] 260713 | P3 | `Sonstiges/NBauO_§_48.pdf` |  |  | destilliert (nbauo-barrierefreiheit-2004.md, gebuendelt) | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (§45/§48/§18/§29 mehrere Ergaenzungen). Q&A-Selbstbefragung Mini-Run 28 (260714): 26 Fragen, 24 bestanden, 1 Fehler korrigiert (Behinderten-Oberbegriff), Ergaenzungen §18 Abs.6+7.
| [x] 260713 | P3 | `Sonstiges/Planen_und_Bauen_im_Bestand.pdf` |  |  | destilliert (hoai-bauen-im-bestand-2011.md), HOAI-2009-Leistungsbild Bauen im Bestand | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (mehrere LP-Zuordnungen). Q&A-Selbstbefragung Mini-Run 29 (260715): 20 Fragen, 13 bestanden, 0 Fehler, 7 Ergaenzungen (groesster Fund: LP4 Genehmigungsplanung fehlte komplett).
| [x] 260713 | P3 | `Sonstiges/Planungsgrundlagen.pdf` |  |  | established (din-planungsgrundlagen-hoai-vorschriften-2004.md), HOAI-Leistungsphasen/MBO, kein CH-Bezug, Mini-Run 12 | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (mehrere LP-Zuordnungen, DIN-18205-Aussage). Q&A-Selbstbefragung Mini-Run 29 (260715): 18 Fragen, 12 bestanden, 2 Fehler korrigiert (DIN-4108-Reihe Teile-Luecke, §75 MBO Fristdauer), 4 Ergaenzungen.
| [x] 260713 | P3 | `Sonstiges/Skript_Treppen.pdf` |  |  | destilliert (treppen-hcu-hamburg-2008.md), HCU-Lehrskript + Neufert-Planungsgrundlagen | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (Stufenzahlregel, Mindestmasse-Tabelle, Formel, Fluchtdistanz, Fluchtleitern). Q&A-Selbstbefragung Mini-Run 29 (260715): 20 Fragen, 15 bestanden, 1 Fehler korrigiert (Laufbreiten-Tabelle Wohngebaeude-Zuordnung), 4 Ergaenzungen.
| [x] 260713 | P3 | `Sonstiges/VdS-Richtlinie 2234.pdf` |  |  | destilliert vollstaendig (vds-2234-1999-brand-komplextrennwaende.md), D-Versicherungsmerkblatt, kein CH-Normwerk | Retro-verifiziert Mini-Run 19 (260714): established, korrigiert (Brandwandklasse F90-A, Hoehendifferenz-Varianten, Feststellanlagen-Pflicht). Q&A-Selbstbefragung Mini-Run 29 (260715): 20 Fragen, 17 bestanden, 1 Fehler korrigiert (Ziff.6.2.2 Sicherheitsschleusen Brandwand war faelschlich Muss- statt Kann-Bestimmung), 3 Ergaenzungen.
| — | P3 | `FileOpenInstaller.dmg` |  |  | keine Norm, Installer-Programm (FileOpen-Plugin) — übersprungen, Nachtrag Mini-Run 5 (260713) |

## VSS (17 Dateien)

| Status | Prio | Datei | Norm-Nr | Jahr | Bemerkung |
|---|---|---|---|---|---|
| [x] | P3 | `700.5 Zugangsnormalien_Kt_ZH7_9.12.87.pdf` | 700 | 1987 | destilliert 260712  verifiziert 260713 (beanstandet-korrigiert: Anhang-Tabelle Breitenbaender + fehlende Zeile/Abschnitte ergaenzt) |
| [x] | P3 | `722.15_Verkehrssicherheitsverordnung.pdf` | 722 | 1983 | destilliert 260712  verifiziert 260713 (beanstandet-korrigiert: 3 Sachfehler korrigiert) | Q&A-Selbstbefragung Mini-Run 27 (260714): 20 Fragen, 13 bestanden, 0 Fehler, 5 Ergaenzungen (§3/§4/§24, Anhang-Anwendungstabelle).
| [x] | P3 | `Merkblatt-VAPl.98.pdf` |  | 1998 | destilliert 260712  verifiziert 260713 (beanstandet-korrigiert: fehlende Abschnitte Wo/Ausfuehrung/Spezialfaelle ergaenzt) | Q&A-Selbstbefragung Mini-Run 27 (260714): 18 Fragen, 16 bestanden, 0 Fehler, 2 Ergaenzungen (Dokumentdatum, Beleuchtungshinweis).
| [x] 260713 | P3 | `VSS 40 291 Parkieren 2021.pdf` |  | 2021 | destilliert (vss-40291-2021-parkieren-anordnung-geometrie.md)  Retro-verifiziert Mini-Run 18 (260714): established. Q&A-Selbstbefragung Mini-Run 20 (260714): 20/20 Fragen bestanden, 0 Fehler, 2 Luecken ergaenzt (Fussgaenger-Zuschlag 0.80m Fahrgassen; Tab.8 Kleinwagen-Fahrgassen + MB/ML/LmV/LoV-Werte). |
| [x] | P3 | `VSS 640 050 Grundstückzufahrten.pdf` | 640 | 1993 | destilliert 260712  Retro-verifiziert Mini-Run 18 (260714): established. |
| [x] 260712 | P3 | `VSS 640 060 Leichter Zweiradverkehr Grundlagen.pdf` | 640 | 1994 | destilliert (vss-640060-1994.md), Reconcile 260712 Mini-Run2  Retro-verifiziert Mini-Run 18 (260714): established. Q&A-Selbstbefragung Mini-Run 24 (260714): 17 Fragen, 0 Fehler, 12 Ergaenzungen (Begriffssystematik, Fussgaengerzonen-Absatz).
| [x] 260713 | P3 | `VSS 640 065 Leichter Zweiradverkehr.pdf` | 640 | 2011 | destilliert (vss-640065-2011.md), Veloparkierung Bedarfsermittlung  Retro-verifiziert Mini-Run 18 (260714): established. Q&A-Selbstbefragung Mini-Run 22 (260714): 22/22 bestanden, 0 Fehler, 4 Ergaenzungen. |
| [x] 260712 | P3 | `VSS 640 066 Leichter Zweiradverkehr Geometrie.pdf` | 640 | 1996 | destilliert (vss-640066-1996.md), Reconcile 260712 Mini-Run2 ; verifiziert (Mini-Run 260714, Kapazitaetsangaben Fahrradboxen/-parkhaeuser korrigiert) ; Q&A-Selbstbefragung Mini-Run 25 (260714): 14 bestanden, 6 Ergaenzungen (Tueren Fahrradstationen, Anlagezufahrten Ziff.14, Tab.5 3. Spalte, Vorderradhalter-Mass), 0 Fehler |
| [x] 260713 | P3 | `VSS 640 281 Parkfelder.pdf` | 640 | 2006 | destilliert (vss-640281-2006.md)  Retro-verifiziert Mini-Run 18 (260714): established. Q&A-Selbstbefragung Mini-Run 22 (260714): 20/20 bestanden, 0 Fehler, 3 Ergaenzungen. |
| [x] 260713 | P3 | `VSS 640 291a Parkieren Geometrie.PDF` | 640 | 2005 | destilliert (vss-640291a-2005-parkieren-anordnung-geometrie.md), historisch/ersetzt durch 40 291:2021; enthaelt ab S.25 SN 640 105a (destilliert 260713 Run 6, sn-640105a-2000.md) ; verifiziert Mini-Run 17 (260714, Motorrad-Parkfeld-Laenge frei erfundener 2,50-m-Wert korrigiert) | Q&A-Selbstbefragung Mini-Run 27 (260714): 18 Fragen, 10 bestanden, 0 Fehler, 8 Ergaenzungen (Kleinwagen-Parkfelder Ziff.14, Kontrolleinrichtungen Ziff.19 komplett neu).
| [x] 260713 | P3 | `SN 640 105a Verbreiterung Fahrbahn Kurven (Anhang in VSS 640 291a-PDF, S.25-37)` | 640 | 2000 | destilliert (sn-640105a-2000.md), vollstaendig 13/13 S., Volltextabgleich verifiziert (Mini-Run 6) ; retro-verifiziert Mini-Run 15 (260713) | Q&A-Selbstbefragung Mini-Run 29 (260715): 18 Fragen, 14 bestanden, 0 Fehler, 4 Ergaenzungen (Geltungsbereich, Deichsellaenge-Definition, Ziff.8 Normalprofil-Vorbemerkung, Spezialfall Ziff.8f).
| [x] 260713 | P3 | `VSS 640 578 Brechnung der Immissionen.pdf` | 640 | 2006 | destilliert (vss-640578-2006.md), Laermimmissionen Parkierungsanlagen  Retro-verifiziert Mini-Run 18 (260714): established. Q&A-Selbstbefragung Mini-Run 24 (260714): 18 Fragen, 0 Fehler, 5 Ergaenzungen (Tag-/Nachtzeitfenster).
| — | P3 | `_In der Schweiz sind bei der Planung von Tiefgaragen mehrere Normen zu beachten.docx` |  |  | keine Norm, kurze Notiz/Übersicht (nennt SN 640 291:2020, SIA 500:2009, SN 640 075:2014, ZH-PPV) — übersprungen |
| — | P3 | `buk/https.docx` |  |  | keine Norm, enthält nur URL zu buk.arch.ethz.ch/Dokumentation/Parkieren — übersprungen |
| — | — | `xalt/VSS 640 065 Leichter Zweiradverkehr.pdf` | 640 |  | ersetzt/alt (xalt) |
| — | P3 | `Bildschirmfoto 2021-04-29 um 18.38.50.png` |  |  | keine Norm, Screenshot — übersprungen, Nachtrag Mini-Run 5 (260713) |
| — | P3 | `Rampe.JPG` |  |  | keine Norm, Foto — übersprungen, Nachtrag Mini-Run 5 (260713) |
| — | P3 | `buk/SEB250.png` |  |  | keine Norm, Bild — übersprungen, Nachtrag Mini-Run 5 (260713) |

## RAL (1 Dateien)

| Status | Prio | Datei | Norm-Nr | Jahr | Bemerkung |
|---|---|---|---|---|---|
| [x] 260712 | P3 | `RAL-GZ_638_Gitterroste_09-2008_.pdf` |  | 2008 | destilliert vollstaendig (ral-gz638-2008.md, S.1-24), Reconcile 260712 Mini-Run2 ; retro-verifiziert Mini-Run 15 (260713). Q&A-Selbstbefragung Mini-Run 22 (260714): 19/20 bestanden, 0 Fehler, 3 Ergaenzungen. |

