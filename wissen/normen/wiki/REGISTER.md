# REGISTER — Gültigkeit der Normen (KB Normen)

> **Zweck:** Immer ZUERST hier nachschauen — welche Ausgabe einer Norm ist gültig, welche
> ist ersetzt/zurückgezogen, und was liegt im JANS-Bestand. Belegt aus den amtlichen
> SIA-Verzeichnissen; **nichts erfunden**.

## Quellen & Datenstand (wichtig)

| Quelle | Art | Datenstand | Aussagekraft |
|---|---|---|---|
| `SIA_Norm/SIA_Normen/Gesamtverzeichnis/ersetzte_normen.pdf` | Rückzugs-/Ersatz-Register SIA | **25.02.2013** («x aktuell / actuel — Stand/Etat: 25.02.2013») | Gültig-/Ersetzt-Ketten je Norm bis Feb 2013 — die tragende Quelle dieses Registers |
| `…/Gesamtverzeichnis/Gesamtverzeichnis SIA.pdf` | Produkt-/Preiskatalog SIA | **~2001/2002** (Preise CHF, «ab 1. März 2002»; Editionen max. 2001/2002) | Nur historischer Titel-/Kategorie-Katalog (O=Ordnung, N=Norm, E=Empfehlung); für Gültigkeit überholt durch das 2013-Register |

**Konsequenz:** Dieses Register bildet den **Stand 25.02.2013** ab. Normen, die nach 2013
revidiert wurden (z.B. SIA 102:2014/2020, SIA 112:2014, SIA 105:2020, SIA 380/1:2016),
sind hier NICHT mehr aktuell abgebildet. Wo der JANS-Bestand (Inventar) eine **neuere**
Ausgabe hält als die 2013-gültige, ist das in der Spalte «Bestand-Abgleich» vermerkt —
diese neuere Bestandsausgabe gilt dann als vermutlich aktuell (bei Bedarf am SIA-Shop
gegenprüfen, nur auf Zuruf; kein Auto-Web). Ein definitiver Aktualitäts-Nachweis nach 2013
bleibt eine offene Bring-Schuld (siehe `QUESTIONS.md`).

## ⚠ Die 2013-Blindzone — beziffert (Stichprobe Run 37, 29.07.2026)

Der Satz oben beschreibt das Risiko; dieser Abschnitt misst es. Maschineller Abgleich aller
Register-Zeilen des Abschnitts A gegen den realen Dateibestand (`SIA_Norm/`, ohne
Sprachvarianten und `xalt`), Verdachtsfälle danach am Titelblatt des Originals verifiziert:

| Kennzahl | Wert |
|---|---|
| SIA-Zeilen in Abschnitt A | 248 |
| davon alle Ausgaben zurückgezogen | 71 |
| **aktiv** (2013 gültige Ausgabe) | **177** |
| davon mit Bestand-Abgleich (Datei im Haus) | 75 |
| davon **ohne Datei im Haus → Blindzone** | **102 (58 % der aktiven)** |
| Blindzone-Zeilen mit 2013-Ausgabe älter als 2003 | 14 |

**Was das praktisch heisst.** Für die 75 Zeilen mit Bestand wirkt der eigene Bestand als
Korrektiv: liegt im Haus eine jüngere Ausgabe, fällt die Veralterung auf (genau so wurde in
Run 37 die Zeile SIA 2020 als veraltet entlarvt — im Haus liegt die Ausgabe 2017, die
ausdrücklich «Ersetzt Merkblatt SIA 2020:2001» trägt). Für die **102 Zeilen ohne Datei
existiert dieses Korrektiv nicht**: eine Revision nach dem 25.02.2013 kann hier mit
hausinternen Mitteln grundsätzlich nicht bemerkt werden. Der Fall SIA 385/9 (Shop führt eine
Ausgabe 2023, Register führt 2011) ist kein Einzelfall, sondern ein Vertreter dieser Klasse.

**Verbindliche Regel.** Bei einer Zeile mit **leerer Bestand-Spalte** darf das Ausgabejahr
**nicht** als geltend zitiert werden, ohne extern (SIA-Normenverzeichnis/Shop) gegengeprüft
zu haben. Zulässig ist die Formulierung «zuletzt bestätigt 25.02.2013, jüngere Revision nicht
geprüft». Das gilt besonders für die 14 Zeilen mit einer 2013-Ausgabe älter als 2003
(u.a. SIA 215:1978, SIA 370/24:1979, SIA 381/3:1982, SIA 370/21:1987, SIA 380/3:1990,
SIA 2003:1996, SIA 2014:1996) — dort ist eine zwischenzeitliche Revision am wahrscheinlichsten.

## Lese-Legende

- **Gültig 2013** = die per 25.02.2013 nicht zurückgezogene deutsche Ausgabe.
- **Ausgaben-Kette**: `Jahr✓` = 2013 gültig · `Jahr✗` = zurückgezogen (ältere Ausgabe).
- **Bestand-Abgleich**: was das JANS-Inventar (`training/norm-inventar.md`, dt. Ausgaben,
  ohne Sprachvarianten/xalt) hält, vs. der 2013-gültigen Ausgabe.
- Nur die 2013 **gültigen** Kern-Norm-Ausgaben sind hier verzeichnet; vollständige
  historische Rückzugsdaten stehen im Quell-Destillat `destillate/sia-register-2013.md`.

## A) SIA — Gültigkeit je Norm (Stand 25.02.2013)

| Norm | Gültig 2013 | Ausgaben-Kette (✓ gültig / ✗ zurückgezogen) | Bestand-Abgleich (JANS-Inventar) |
|---|---|---|---|
| SIA 102 | 2003 | 2003✓ · 2001✗ · 1984✗ | Bestand 2020/2014 → **neuer als Register 2013** (2013 gueltig: 2003); Bestand vermutlich aktuell |
| SIA 102/1 | —(alle zurueckgezogen) | 1994✗ |  |
| SIA 103 | 2003 | 2003✓ · 2001✗ · 1984✗ | Bestand 2003 = gueltig 2013 ✓ |
| SIA 104 | 2003 | 2003✓ · 1994✗ | Bestand 2003 = gueltig 2013 ✓ |
| SIA 105 | 2007 | 2007✓ | Bestand 2020 → **neuer als Register 2013** (2013 gueltig: 2007); Bestand vermutlich aktuell |
| SIA 106 | 2007 | 2007✓ |  |
| SIA 108 | 2003 | 2003✓ · 2001✗ · 1984✗ | Bestand 2014/2003 → **neuer als Register 2013** (2013 gueltig: 2003); Bestand vermutlich aktuell |
| SIA 108/1 | —(alle zurueckgezogen) | 1992✗ |  |
| SIA 110 | 2003 | 2003✓ · 1988✗ | Bestand 2003 = gueltig 2013 ✓ |
| SIA 110/1 | —(alle zurueckgezogen) | 1999✗ |  |
| SIA 111 | 2003 | 2003✓ | Bestand 2014/2003 → **neuer als Register 2013** (2013 gueltig: 2003); Bestand vermutlich aktuell |
| SIA 111/1 | —(alle zurueckgezogen) | 1993✗ |  |
| SIA 111/2 | —(alle zurueckgezogen) | 1992✗ |  |
| SIA 111/3 | —(alle zurueckgezogen) | 1991✗ |  |
| SIA 112 | 2001 | 2001✓ | Bestand 2014 → **neuer als Register 2013** (2013 gueltig: 2001); Bestand vermutlich aktuell |
| SIA 112/1 | 2005 | 2005✓ |  |
| SIA 113 | 2010 | 2010✓ |  |
| SIA 116 | —(alle zurueckgezogen) | 1952✗ |  |
| SIA 117 | —(alle zurueckgezogen) | 1972✗ |  |
| SIA 118 | 2013 | 2013✓ · 1977✗ | Bestand 1991 → **veraltet** (2013 gueltig: 2013). **Am Herausgeber verifiziert 06.08.2026 (Run 45, Produktseite `118_2013_d`):** SIA 118:2013 gueltig ab 01.01.2013, 72 S., SN 507118; Vorgaenger SIA 118:1977 (Neudruck 1991) archiviert, gueltig bis 31.12.2012. Neu belegt: **Korrigenda C1** als eigener Download-Anhang auf der Produktseite und Feld «Revision 1 / Revisions-Datum 01.12.2025». Inhalt der Korrigenda nicht eingesehen (kostenpflichtige Norm). Schliesst Uebergabe **E-123-6** (Ausgabestand fuer die Vertragshierarchie) |
| SIA 118/198 | 2007 | 2007✓ · 2004✗ |  |
| SIA 118/222 | 2012 | 2012✓ |  |
| SIA 118/232 | 2011 | 2011✓ |  |
| SIA 118/240 | 2012 | 2012✓ |  |
| SIA 118/242 | 2012 | 2012✓ |  |
| SIA 118/243 | 2008 | 2008✓ |  |
| SIA 118/244 | 2006 | 2006✓ |  |
| SIA 118/246 | 2006 | 2006✓ |  |
| SIA 118/248 | 2006 | 2006✓ |  |
| SIA 118/251 | 2008 | 2008✓ |  |
| SIA 118/252 | 2012 | 2012✓ |  |
| SIA 118/253 | 2012 | 2012✓ |  |
| SIA 118/257 | 2005 | 2005✓ |  |
| SIA 118/262 | 2004 | 2004✓ |  |
| SIA 118/263 | 2004 | 2004✓ |  |
| SIA 118/265 | 2004 | 2004✓ |  |
| SIA 118/266 | 2004 | 2004✓ |  |
| SIA 118/267 | 2004 | 2004✓ |  |
| SIA 118/318 | 2009 | 2009✓ |  |
| SIA 118/329 | 2008 | 2008✓ |  |
| SIA 118/331 | 2008 | 2008✓ |  |
| SIA 118/342 | 2009 | 2009✓ |  |
| SIA 118/343 | 2010 | 2010✓ |  |
| SIA 118/370 | 2007 | 2007✓ |  |
| SIA 118/380 | 2007 | 2007✓ |  |
| SIA 121 | 2003 | 2003✓ · 1996✗ | Bestand 2003 = gueltig 2013 ✓ |
| SIA 122 | 2012 | 2012✓ |  |
| SIA 123 | 2013 | 2013✓ · 1970✗ |  |
| SIA 124 | 2013 | 2013✓ · 1970✗ |  |
| SIA 125 | **2017** (nicht im 2013-Register) | 2017✓ (Erstausgabe, kein «Ersetzt»-Vermerk) | **Nachtrag Run 37 (260729), am Titelblatt verifiziert:** «SIA 125:2017 Bauwesen 507 125 — Preisänderungen infolge Teuerung für Leistungen der General- und Totalunternehmer», **Vertragsnorm** (Vorwort S. 4, Reglement SIA 148), SN 507125:2017 de, gültig ab 2017-05-01, 16 S., «2017-05 / 1. Auflage». Bestand vollständig; Destillat `sia-125-2017.md` |
| SIA 136 | —(alle zurueckgezogen) | 1939✗ |  |
| SIA 142 | 2009 | 2009✓ · 1998✗ | Bestand 2009/1998 = gueltig 2013 ✓ |
| SIA 143 | 2009 | 2009✓ | Bestand 2009 = gueltig 2013 ✓ |
| SIA 144 | **2013** (im 2013-Register noch nicht erfasst) | 2013✓ (neues Instrument, ersetzt nichts) | **Nachtrag Run 37 (260729), am Titelblatt verifiziert:** «Ordnung SIA 144 2013 — Ordnung für Ingenieur- und Architekturleistungsofferten», SN 507 144, «2013-08 1. Auflage», genehmigt 25.05.2013, gültig ab 01.08.2013, 20 Normseiten (PDF 22 S.). Dokumentart **Ordnung** (Verfahrensordnung). Ergänzt SIA 142 (Wettbewerbe) und SIA 143 (Studienaufträge), ersetzt sie NICHT (Präambel «Entwicklung der Ordnungen»). Destillat `sia-144-2013.md` |
| SIA 150 | 1977 | 1977✓ | Bestand 2018 → **neuer als Register 2013** (2013 gueltig: 1977); Bestand vermutlich aktuell |
| SIA 152 | —(alle zurueckgezogen) | 1993✗ |  |
| SIA 153 | —(alle zurueckgezogen) | 1991✗ |  |
| SIA 155 | —(alle zurueckgezogen) | 1987✗ |  |
| SIA 160 | —(alle zurueckgezogen) | 1989✗ |  |
| SIA 161 | —(alle zurueckgezogen) | 1990✗ |  |
| SIA 161/1 | —(alle zurueckgezogen) | 1990✗ |  |
| SIA 162 | —(alle zurueckgezogen) | 1993✗ |  |
| SIA 162/1 | —(alle zurueckgezogen) | 1989✗ |  |
| SIA 162/2 | —(alle zurueckgezogen) | 2001✗ · 1990✗ |  |
| SIA 162/3 | —(alle zurueckgezogen) | 1990✗ |  |
| SIA 162/4 | —(alle zurueckgezogen) | 1994✗ | **Nachfolgekette am Herausgeber verifiziert 06.08.2026 (Run 45, Produktseite `162-4_1994_d`):** SIA 162/4:1994 «Recyclingbeton», gueltig ab 01.12.1994, **archiviert per 31.12.2009**; die Produktseite fuehrt eine eigene Rubrik **«Nachfolger»** mit Verweis auf SIA 2030:2010. Damit ist die Nachfolge **herausgeberseitig belegt**, nicht mehr nur sekundaerquellengestuetzt. Achtung: die verbreitete Kurzform «MB 2030» ist auf der Shop-Seite nirgends so beschriftet — korrekt ist **SIA 2030**. Kette weiterverfolgen bis 2030:2021, siehe Zeile SIA 2030. Schliesst Uebergabe **E-123-3** |
| SIA 162/5 | —(alle zurueckgezogen) | 1997✗ |  |
| SIA 162/6 | 1999 | 1999✓ |  |
| SIA 164 | —(alle zurueckgezogen) | 1992✗ |  |
| SIA 164/1 | —(alle zurueckgezogen) | 1986✗ |  |
| SIA 166 | 2004 | 2004✓ | Bestand 2004 = gueltig 2013 ✓ |
| SIA 172 | —(alle zurueckgezogen) | 1974✗ |  |
| SIA 179 | 1998 | 1998✓ | Bestand 1998 = gueltig 2013 ✓ |
| SIA 180 | 1999 | 1999✓ · 1988✗ | Bestand 2014 → **neuer als Register 2013** (2013 gueltig: 1999); **✓ Bestand 2014 als geltend BESTAETIGT** (nicht mehr «vermutlich»): Destillat `sia-180-2014` weist aus Original-PDF «SN 520180:2014 de, 1. Aufl. 2014-05, **gueltig ab 2014-07-01**, ersetzt SIA 180:1999» — deckungsgleich mit Tabelle C. Offen bleibt nur die **Korrigenda C2:2020** (Existenz belegt via Stadt-ZH-Wegleitung Ziff. 4.1.1, Inhalt nicht verifiziert) (Wissens-Chef Run 6, 16.07.2026) |
| SIA 180/1 | —(alle zurueckgezogen) | 1988✗ |  |
| SIA 180/4 | —(alle zurueckgezogen) | 1982✗ |  |
| SIA 180/081 | **2017** (EN ISO) / CH-Ausgabe **2018** | SN EN ISO 10077-1:2017✓ · 2006✗ | **Nachtrag Run 37 (260729), am Titelblatt verifiziert:** «Wärmetechnisches Verhalten von Fenstern, Türen und Abschlüssen — Berechnung des Wärmedurchgangskoeffizienten — Teil 1: Allgemeines (ISO 10077-1:2017)». **Ausgabejahr 2017 = EN ISO; CH-Übernahme 1. Auflage 2018-04, gültig ab 2018-04-01** (strikt getrennt führen). Ersetzt SN EN ISO 10077-1:2006. Unveränderte Übernahme ohne nationale Vorbehalte. Reiner Scan ohne Textlayer. Destillat `sia-180-081-2017.md` |
| SIA 180/082 | **2017** (EN ISO) / CH-Ausgabe **2018** | SN EN ISO 10077-2:2017✓ · 2012✗ | **Nachtrag Run 37 (260729), am Titelblatt verifiziert:** «… Teil 2: Numerisches Verfahren für Rahmen (ISO 10077-2:2017)». **Ausgabejahr 2017 = EN ISO; CH-Übernahme 1. Auflage 2018-04, gültig ab 2018-04-01.** Ersetzt SN EN ISO 10077-2:2012. ⚠ **Falle:** das PDF-interne Title-Metadatenfeld lautet fälschlich «ISO 10077-1-2017» (Teil **1**) — der sichtbare Inhalt ist korrekt Teil 2; metadatenbasierte Suchen führen hier in die Irre. Destillat `sia-180-082-2017.md` |
| SIA 181 | 2006 | 2006✓ · 1988✗ | Bestand 2006 = gueltig 2013 ✓; **⚠ neuere Ausgabe SIA 181:2020** (in KB energie `wiki/schallschutz-sia181` als aktuell gefuehrt) → Re-Destillat 2020 ausstehend (Wissens-Chef Run 3, 13.07.2026) |
| SIA 183 | —(alle zurueckgezogen) | 1996✗ |  |
| SIA 184 | 1972 | 1972✓ | Bestand 1972 = gueltig 2013 ✓ |
| SIA 190 | 2000 | 2000✓ · 1993✗ |  |
| SIA 191/1 | —(alle zurueckgezogen) | 2001✗ |  |
| SIA 195 | 1999 | 1999✓ | Bestand 1999 = gueltig 2013 ✓ |
| SIA 196 | 1998 | 1998✓ | Bestand 1998 = gueltig 2013 ✓ |
| SIA 197 | 2004 | 2004✓ | Bestand 2004 = gueltig 2013 ✓ |
| SIA 197/1 | 2004 | 2004✓ |  |
| SIA 197/2 | 2004 | 2004✓ |  |
| SIA 198 | 2004 | 2004✓ · 1993✗ | Bestand 2004 = gueltig 2013 ✓ |
| SIA 199 | 1998 | 1998✓ | Bestand 1998 = gueltig 2013 ✓ |
| SIA 203 | 1997 | 1997✓ | Bestand 1997 = gueltig 2013 ✓ |
| SIA 205 | 2003 | 2003✓ · 1984✗ |  |
| SIA 215 | 1978 | 1978✓ |  |
| SIA 220 | —(alle zurueckgezogen) | 1992✗ |  |
| SIA 221 | —(alle zurueckgezogen) | 1992✗ |  |
| SIA 222 | —(alle zurueckgezogen) | 1990✗ |  |
| SIA 225 | —(alle zurueckgezogen) | 1988✗ |  |
| SIA 226 | 1976 | 1976✓ | Bestand 1976 = gueltig 2013 ✓ |
| SIA 229 | —(alle zurueckgezogen) | 1993✗ |  |
| SIA 230 | —(alle zurueckgezogen) | 1979✗ |  |
| SIA 231 | —(alle zurueckgezogen) | 1989✗ |  |
| SIA 232 | —(alle zurueckgezogen) | 2000✗ | Bestand 2000; 2013 kein gueltiger Eintrag |
| SIA 232/1 | 2011 | 2011✓ |  |
| SIA 232/2 | 2011 | 2011✓ |  |
| SIA 233 | —(alle zurueckgezogen) | 2000✗ |  |
| SIA 234 | —(alle zurueckgezogen) | 1997✗ |  |
| SIA 235 | —(alle zurueckgezogen) | 1997✗ |  |
| SIA 238 | —(alle zurueckgezogen) | 1988✗ |  |
| SIA 240 | 2012 | 2012✓ · 1988✗ | Bestand 1988 → **veraltet** (2013 gueltig: 2012) |
| SIA 241 | 1988 | 1988✓ | Bestand 1988 = gueltig 2013 ✓ |
| SIA 242 | 2012 | 2012✓ |  |
| SIA 243 | 2008 | 2008✓ |  |
| SIA 244 | 2006 | 2006✓ · 1976✗ | Bestand 2006 = gueltig 2013 ✓ |
| SIA 246 | 2006 | 2006✓ · 1976✗ | Bestand 2006 = gueltig 2013 ✓ |
| SIA 248 | 2006 | 2006✓ · 1976✗ | Bestand 2006 = gueltig 2013 ✓ |
| SIA 251 | 2008 | 2008✓ | Bestand 2008 = gueltig 2013 ✓ |
| SIA 252 | 2012 | 2012✓ · 2002✗ · 1988✗ | Bestand 2002 → **veraltet** (2013 gueltig: 2012) |
| SIA 253 | 2002 | 2002✓ · 1988✗ | Bestand 2002 = gueltig 2013 ✓ |
| SIA 254 | —(alle zurueckgezogen) | 1988✗ |  |
| SIA 256 | 1988 | 1988✓ | Bestand 1988 = gueltig 2013 ✓ |
| SIA 257 | 2005 | 2005✓ · 1989✗ | Bestand 2005 = gueltig 2013 ✓ |
| SIA 259 | —(alle zurueckgezogen) | 1977✗ |  |
| SIA 260 | 2003 | 2003✓ | Bestand 2003 = gueltig 2013 ✓ |
| SIA 261 | 2003 | 2003✓ | Bestand 2003 = gueltig 2013 ✓ |
| SIA 261/1 | 2003 | 2003✓ |  |
| SIA 262 | 2013 | 2013✓ · 2003✗ | Bestand 2003 → **veraltet** (2013 gueltig: 2013) |
| SIA 262/1 | 2003 | 2003✓ |  |
| SIA 263 | 2013 | 2013✓ · 2003✗ | Bestand 2003 → **veraltet** (2013 gueltig: 2013) |
| SIA 263/1 | 2013 | 2013✓ · 2003✗ |  |
| SIA 264 | 2003 | 2003✓ | Bestand 2003 = gueltig 2013 ✓ |
| SIA 264/1 | 2003 | 2003✓ |  |
| SIA 265 | 2012 | 2012✓ · 2003✗ | Bestand 2003 → **veraltet** (2013 gueltig: 2012) |
| SIA 265/1 | 2009 | 2009✓ · 2003✗ |  |
| SIA 266 | 2003 | 2003✓ | Bestand 2003 = gueltig 2013 ✓ |
| SIA 266/1 | 2003 | 2003✓ | Destillat `sia-266-1-2003.md` (Run 22, 260725; Run 23 zweite adversariale Runde — 1 Fehler Figur-1 h/l vertauscht korrigiert; Run 24 dritte Runde — 0 Befunde ausserhalb Figur-1, 1 neuer Fehler exakt dort [Fy/Querdruck verwechselt] korrigiert; Run 25 vierte Runde — Figur-1 jetzt sauber, 2 kleinere Stilbefunde ausserhalb korrigiert; fuenfte Runde 0 Befunde). **Status established (260725).** Prüf-/Deklarationsnorm zu SIA 266 (WIE, nicht WAS): zwei SIA-eigene Prüfverfahren (Ziff. 2.2 Mauerwerksdruckfestigkeit, Ziff. 2.3 Steinquerzugfestigkeit) + Ergänzung zum EN-772-11-Verfahren (Ziff. 2.4). Bestandsfalle: liegt deutsch als `alle/i/266_1_d.pdf` im italienischen Sprachordner. ⚠ Offen: ob eine neuere Ausgabe (vermutlich 2015, parallel zur SIA-266-Revision) existiert (Bestandsfrage, nicht Textgenauigkeit) |
| SIA 266/2 | 2012 | 2012✓ |  |
| SIA 267 | 2003 | 2003✓ | Bestand 2003 = gueltig 2013 ✓ |
| SIA 267/1 | 2003 | 2003✓ |  |
| SIA 269 | 2011 | 2011✓ |  |
| SIA 269/1 | 2011 | 2011✓ |  |
| SIA 269/2 | 2011 | 2011✓ |  |
| SIA 269/3 | 2011 | 2011✓ |  |
| SIA 269/4 | 2011 | 2011✓ |  |
| SIA 269/5 | 2011 | 2011✓ |  |
| SIA 269/7 | 2011 | 2011✓ |  |
| SIA 270 | 2007 | 2007✓ · 1992✗ | Bestand 1992 → **veraltet** (2013 gueltig: 2007) |
| SIA 271 | 2007 | 2007✓ · 1986✗ | Bestand 2007 = gueltig 2013 ✓ |
| SIA 271/2 | —(alle zurueckgezogen) | 1994✗ |  |
| SIA 272 | 2009 | 2009✓ · 1980✗ | Bestand 1980 → **veraltet** (2013 gueltig: 2009) |
| SIA 273 | 2008 | 2008✓ · 1989✗ | Bestand 1998/1989 → **veraltet** (2013 gueltig: 2008) |
| SIA 274 | 2010 | 2010✓ |  |
| SIA 279 | 2011 | 2011✓ · 2004✗ · 2000✗ | Bestand 2018 → **neuer als Register 2013** (2013 gueltig: 2011); Bestand vermutlich aktuell |
| SIA 280 | —(alle zurueckgezogen) | 2009✗ |  |
| SIA 281 | 2013 | 2013✓ · 2007✗ · 1992✗ | Bestand 2017 → **neuer als Register 2013** (2013 gueltig: 2013); Bestand vermutlich aktuell |
| SIA 281/1 | —(alle zurueckgezogen) | 1996✗ |  |
| SIA 281/2 | 2011 | 2011✓ · 1999✗ |  |
| SIA 281/3 | 2002 | 2002✓ |  |
| SIA 282 | 2011 | 2011✓ |  |
| SIA 283 | 2009 | 2009✓ |  |
| SIA 284 | 2011 | 2011✓ |  |
| SIA 312 | **2013** (im 2013-Register noch nicht erfasst; Stand des Registers 25.02.2013, Norm gültig ab 01.11.2013) | 2013✓ | **Nachtrag Run 37 (260729), am Titelblatt verifiziert:** «SIA 312:2013 Bauwesen 564 312 — Begrünung von Dächern», SN 564312:2013 de, gültig ab 2013-11-01, 24 S., Preisgruppe 18. Ersetzt laut Vorwort (S. 4) die Empfehlung SIA 271/2:1994 «Flachdächer zur Begrünung» — dieser Vermerk steht NICHT auf dem Titelblatt. Destillat `sia-312-2013.md` |
| SIA 318 | 2009 | 2009✓ · 1988✗ | Bestand 1988 → **veraltet** (2013 gueltig: 2009) |
| SIA 320 | —(alle zurueckgezogen) | 1978✗ |  |
| SIA 329 | 2012 | 2012✓ · 2008✗ · 1989✗ | Bestand 2018/1989 → **neuer als Register 2013** (2013 gueltig: 2012); Bestand vermutlich aktuell |
| SIA 331 | 2012 | 2012✓ · 2008✗ · 1988✗ | Bestand 1988 → **veraltet** (2013 gueltig: 2012) |
| SIA 342 | 2009 | 2009✓ · 1988✗ | Bestand 1988 → **veraltet** (2013 gueltig: 2009) |
| SIA 343 | 2010 | 2010✓ · 1990✗ | Bestand 2018/1990 → **neuer als Register 2013** (2013 gueltig: 2010); Bestand vermutlich aktuell |
| SIA 358 | —(alle zurueckgezogen) | 1996✗ · 1978✗ | Bestand 2010; 2013 kein gueltiger Eintrag |
| SIA 370/10 | —(alle zurueckgezogen) | 1979✗ |  |
| SIA 370/11 | —(alle zurueckgezogen) | 1990✗ |  |
| SIA 370/20 | —(alle zurueckgezogen) | 1990✗ |  |
| SIA 370/21 | 1987 | 1987✓ |  |
| SIA 370/24 | 1979 | 1979✓ |  |
| SIA 370/101 | —(alle zurueckgezogen) | 1985✗ |  |
| SIA 380/1 | 2009 | 2009✓ · 2007✗ · 2001✗ · 1988✗ |  |
| SIA 380/3 | 1990 | 1990✓ |  |
| SIA 380/4 | 2006 | 2006✓ · 1995✗ |  |
| SIA 380/7 | —(alle zurueckgezogen) | 1985✗ |  |
| SIA 381/1 | —(alle zurueckgezogen) | 1980✗ |  |
| SIA 381/2 | —(alle zurueckgezogen) | 1988✗ |  |
| SIA 381/3 | 1982 | 1982✓ |  |
| SIA 382/1 | 2007 | 2007✓ |  |
| SIA 382/2 | 2011 | 2011✓ |  |
| SIA 384/1 | 2009 | 2009✓ · 1991✗ |  |
| SIA 384/2 | —(alle zurueckgezogen) | 1982✗ |  |
| SIA 384/4 | —(alle zurueckgezogen) | 1987✗ |  |
| SIA 384/6 | 2010 | 2010✓ |  |
| SIA 385/1 | 2011 | 2011✓ · 2000✗ | ⚠ **NUMMERN-WIEDERVERWENDUNG — Falle, geprüft Run 22 (260725):** Die Nummer 385/1 bezeichnet zwei sachlich UNVERWANDTE Normen. 385/1:2011 = «Anlagen für Trinkwarmwasser in Gebäuden» (Bestand: nur 6-seitige Vorschau, Bring-Schuld). 385/1:2000 = «Wasser und Wasseraufbereitungsanlagen in öffentlichen Schwimmbädern» (ersetzte 385/1:1982 + Empf. 385/11:1990 + 385/12:1994; ging 2011 in **385/9** auf). Die Datei `alle/f/385_1_f.pdf` (60 S., französisch) ist die **Schwimmbad-Ausgabe 2000** und damit **KEIN** Ersatz für den fehlenden Trinkwarmwasser-Volltext — ihre Legionellen-Angaben betreffen Beckenwasser/Duschen, nicht Speicher-/Zirkulationstemperaturen im Hochbau. Die in QUESTIONS vorgeschlagene «billigste Lückenschluss»-Prüfung dieser Datei ist damit erledigt und negativ; Abschnitt B dieses Registers dokumentierte die Umnummerierung bereits |
| SIA 385/3 | —(alle zurueckgezogen) | 1991✗ |  |
| SIA 385/9 | 2011 (Stand 25.02.2013) | 2011✓ | **Quellentreu belegt (Run 37, 260729):** `ersetzte_normen.pdf` führt «x SIA 385/9:2011 d — 01.05.2011», ersetzt **SIA 385/1:2000** (Schwimmbad-Materie, siehe Abschnitt B). Das «x» heisst: per 25.02.2013 aktuell. ⚠ **Nicht mit Ausgabejahr zitieren.** Der SIA-Shop weist eine **Ausgabe 385/9:2023** aus (ersetzt 385/9:2011) — bisher nur über die Shop-Produktseite gemeldet, **nicht am Normtext verifiziert**; die Norm liegt weder in PL-02 noch in PL-03 (Run 37 in beiden Ablagen gesucht). Bis zur Beschaffung gilt: «zuletzt bestätigt 25.02.2013, jüngere Revision nicht geprüft». Klassenfall der 2013-Blindzone; Bring-Schuld in `QUESTIONS.md` |
| SIA 385/11 | —(alle zurueckgezogen) | 1990✗ |  |
| SIA 385/12 | —(alle zurueckgezogen) | 1994✗ |  |
| SIA 400 | 2000 | 2000✓ · 1985✗ | Bestand 2000 = gueltig 2013 ✓ |
| SIA 405 | 2012 | 2012✓ · 1998✗ | Bestand 1998 → **veraltet** (2013 gueltig: 2012) |
| SIA 410 | 1978, Teilrevision 1986 (in Kraft 01.06.1986); Kap. 6 MSR separat genehmigt 28.04.1993 | 1986✓ (dreisprachig d/f/i) | Erfasst Run 22 (260725), adversarial geprüft Run 23 (260725, BEANSTANDET — Zitierfehler Positionsnummern korrigiert, established). «Kennzeichnung von Installationen in Gebaeuden — Sinnbilder fuer die Haustechnik», **Empfehlung** (nicht Norm), Kennzeichnung empfehlend (Ziff. 0.1/0.2). Destillat `sia-410-1986.md` (established). Bestandsfalle: liegt als `alle/f/410_d_f_i.pdf` im franzoesischen Sprachordner. ⚠ Aktualitaet nach 1993 NICHT verifiziert (Hauptteil ~40 J. alt) — vor projektbezogener Verwendung am SIA-Normenverzeichnis pruefen. SIA 410/1 (Farbcode, in Ziff. 2.5 Pos. 7 referenziert) nicht im Bestand |
| SIA 414 | 1980 | 1980✓ | Bestand 1980 = gueltig 2013 ✓ |
| SIA 416 | 2003 | 2003✓ | gilt (Ersatz für SIA 416:1993 + SIA 116:1952, siehe Abschnitt B); Bestand-Abgleich siehe Run-2-Präzisierungen unten ("SIA 416 \| 2003 \| SIA 416:1993 + SIA 116:1952 \| gilt") |
| SIA 416/1 | 2007 | 2007✓ |  |
| SIA 421 | 2006 | 2006✓ · 2004✗ | Bestand 2006 = gueltig 2013 ✓ |
| SIA 422 | 2009 | 2009✓ |  |
| SIA 423 | 2006 | 2006✓ | Bestand 2006 = gueltig 2013 ✓ |
| SIA 430 | 1993 | 1993✓ | Bestand 1993 = gueltig 2013 ✓ — ⚠ **nach 2013 revidiert:** SIA 430:2023 «Vermeidung und Entsorgung von Bauabfällen» gültig ab 01.08.2023, die Ausgabe 1993 «Entsorgung von Bauabfällen» galt bis 31.07.2023; Organisationsteil neu in SIA 118/430:2023 (shop.sia.ch, verifiziert 04.08.2026, Wissens-Chef Run 25). **Ausgabe 2023 nicht im Haus** — die gefüllte Bestand-Spalte ist hier KEIN Aktualitätsnachweis, weil der Bestand genau die 2013-gültige Ausgabe ist |
| SIA 431 | 1997 | 1997✓ | Bestand 1997 = gueltig 2013 ✓ |
| SIA 450 | 1993 | 1993✓ | Bestand 1993 = gueltig 2013 ✓ |
| SIA 451 | 1992 | 1992✓ | Bestand 1992 = gueltig 2013 ✓ |
| SIA 460 | —(alle zurueckgezogen) | 1990✗ |  |
| SIA 461 | —(alle zurueckgezogen) | 1991✗ |  |
| SIA 462 | —(alle zurueckgezogen) | 1994✗ | Bestand 1994; 2013 kein gueltiger Eintrag |
| SIA 465 | 1998 | 1998✓ | Bestand 1998 = gueltig 2013 ✓ |
| SIA 469 | 1997 | 1997✓ | Bestand 1997 = gueltig 2013 ✓ |
| SIA 480 | 2004 | 2004✓ | Bestand 2004 = gueltig 2013 ✓ |
| SIA 493 | 1997 | 1997✓ | Bestand 1997 = gueltig 2013 ✓ (Aussage per Stichtag 25.02.2013, bleibt richtig) — → **nach 2013 archiviert**, siehe Run-5-Zeile SIA 493 weiter unten |
| SIA 500 | 2009 | 2009✓ | Bestand 2009 = gueltig 2013 ✓ |
| SIA 721 | 2001 | 2001✓ | Bestand 2001 = gueltig 2013 ✓ |
| SIA 723 | 2001 | 2001✓ | Bestand 2001 = gueltig 2013 ✓ |
| SIA 752 | —(alle zurueckgezogen) | 2002✗ | Bestand 2002; 2013 kein gueltiger Eintrag |
| SIA 753 | —(alle zurueckgezogen) | 2002✗ | Bestand 2002; 2013 kein gueltiger Eintrag |
| SIA 2001 | 2011 | 2011✓ · 2009✗ · 2007✗ · 2005✗ · 2003✗ · 2001✗ · 1998✗ |  |
| SIA 2002 | —(alle zurueckgezogen) | 1990✗ |  |
| SIA 2003 | 1996 | 1996✓ |  |
| SIA 2004 | —(alle zurueckgezogen) | 1992✗ |  |
| SIA 2006 | 2013 | 2013✓ · 1993✗ |  |
| SIA 2007 | 2001 | 2001✓ · 1997✗ |  |
| SIA 2008 | —(alle zurueckgezogen) | 1994✗ |  |
| SIA 2009 | —(alle zurueckgezogen) | 1996✗ |  |
| SIA 2010 | —(alle zurueckgezogen) | 1995✗ |  |
| SIA 2013 | —(alle zurueckgezogen) | 1995✗ |  |
| SIA 2014 | 1996 | 1996✓ |  |
| SIA 2015 | 2012 | 2012✓ · 2005✗ · 1998✗ |  |
| SIA 2016 | 2012 | 2012✓ · 2005✗ · 1998✗ |  |
| SIA 2017 | 2000 | 2000✓ |  |
| SIA 2018 | 2004 | 2004✓ |  |
| SIA 2019 | —(alle zurueckgezogen) | 2000✗ |  |
| SIA 2020 | ~~2001~~ → **2017** | **2017✓** · 2001✗ | ⚠ **Run 37 (260729): diese Zeile war belegt VERALTET und ist korrigiert.** Das 2013-Register führte 2001 als gültig; im Haus liegt die Ausgabe **2017**, deren Titelblatt ausdrücklich «**Ersetzt Merkblatt SIA 2020:2001**» trägt — die Veralterung war also hausintern beweisbar, es brauchte keine externe Quelle. Verifiziert am Original: «SIA 2020:2017 Bauwesen 592020 — Sicherheitsleistungen des Unternehmers im Werkvertrag, Merkblatt zur Norm SIA 118», SNR 592020:2017 de, gültig ab 2017-05-01, 20 S., «2017-05 1. Auflage». Dokumentart **SIA-Merkblatt** (nach Veröffentlichung 3 Jahre gültig, Verlängerung um je 3 Jahre möglich). Destillat `sia-2020-2017.md`. **Dieser Fall ist der Musterbeleg der 2013-Blindzone oben** |
| SIA 2021 | 2002 | 2002✓ |  |
| SIA 2022 | 2003 | 2003✓ |  |
| SIA 2023 | 2008 | 2008✓ · 2004✗ |  |
| SIA 2024 | 2006 | 2006✓ | **⚠ neuere Ausgabe SIA 2024:2021** (ersetzt 2015; gueltig ab 1.12.2021, inkl. Korrigenda C1:2024) — in KB energie `destillate/sia-2024-nutzungsdaten-gesundheitsbau` als aktuell gefuehrt; Register-Stand 2006 ueberholt, Re-Destillat 2021 ausstehend (Quelle SIA-Shop; Wissens-Chef Run 4, 14.07.2026). **Freie amtliche Interims-Quelle vorhanden:** SIA-Grundlagenbericht zur Revision 2021 inkl. Korrigenda C1:2024 (cms.sia.ch/de/api/getMedia/941, 20.10.2024), in KB `energie` ausgewertet und am 18.07.2026 (energie Run 80) verifiziert — deckt Systematik, Gebaeudekategorien und die Elektrizitaetskennzahlen Kat. VIII (Ziff. 4.2.1/4.2.3), **nicht** die Raumdatenblaetter Anhang A/F. Bring-Schuld damit auf den Volltext Anhang A/F und die zitierfaehige Ziffern-Fundstelle verengt (Wissens-Chef Run 9, 19.07.2026) |
| SIA 2025 | 2012 | 2012✓ |  |
| SIA 2026 | 2006 | 2006✓ |  |
| SIA 2027 | 2006 | 2006✓ |  |
| SIA 2028 | 2010 | 2010✓ · 2008✗ |  |
| SIA 2029 | 2013 | 2013✓ |  |
| SIA 2030 | **2021** | 2010✗ | ⚠ **Korrigiert 06.08.2026 (Run 45), am Herausgeber verifiziert.** Die bisherige Angabe «gueltig 2010» ist ueberholt: SIA 2030:2010 ist **archiviert, gueltig bis 31.10.2021**. Geltend ist **SIA 2030:2021**, gueltig ab **01.11.2021**, 20 S., SN 592030, mit Revision 1 vom 01.11.2025 und einer **Korrigenda C1**. **Auch der Titel hat gewechselt:** 2010 «Recyclingbeton», 2021 «**Beton mit rezyklierten Gesteinskoernungen**» (Produktseite `2030_2021_d`, selbst abgerufen). Wer heute auf Recyclingbeton verweist, zitiert SIA 2030:2021, nicht die 2010er-Zwischenstufe. Vorgaenger der Kette: SIA 162/4:1994 |
| SIA 2031 | 2009 | 2009✓ |  |
| SIA 2032 | 2010 | 2010✓ | ⚠ **Fassungsflag Wissens-Chef Run 20, 29.07.2026.** Zwei unabhängige Sekundärquellen der KB `energie` führen seit 26.06.2026 die Fassung **SIA 2032:2020** (KBOB-Faktenblatt «Graue Treibhausgasemissionen» 04.04.2025, `wissen/energie/destillate/kbob-graue-treibhausgasemissionen-2025.md:6`; MuKEn-2025-Methodikpapier Modul G, `wissen/energie/destillate/muken-2025-modul-g-co2-grenzwerte.md:107`). Register-Stand 2010 damit vermutlich überholt. **Ausgaben-Kette bewusst unverändert:** die Bestand-Spalte ist leer (Blindzone-Regel oben), der Normtext wurde nie eingesehen (`wissen/energie/destillate/graue-energie-sanieren-vs-neubau-amortisation.md:132`) und ein Rückzugsdatum für die Ausgabe 2010 ist im Hub nicht belegt; ein gesetztes ✗ wäre selbst eine ungedeckte Gültigkeitsaussage. Zusätzliches Indiz: SIA 2032 ist ein SIA-Merkblatt, dort gilt die Regel 3 Jahre plus Verlängerung um je 3 Jahre (vgl. Zeile SIA 2020), was gegen einen Stand 2010 spricht. Zitierform bis zur Verifikation: «zuletzt bestätigt 25.02.2013, jüngere Revision nicht geprüft». Kein Destillat in `normen` vorhanden, Bring-Schuld in `QUESTIONS.md` |
| SIA 2035 | 2009 | 2009✓ |  |
| SIA 2036 | 2009 | 2009✓ |  |
| SIA 2039 | 2011 | 2011✓ |  |
| SIA 2040 | 2011 | 2011✓ |  |
| SIA 2042 | 2012 | 2012✓ |  |
| SIA 2044 | 2011 | 2011✓ |  |
| SIA 2045 | 2012 | 2012✓ |  |

## B) Grosse Umnummerierungen / Familienwechsel (2003er-Tragwerksreform u.a.)

Belegt aus `ersetzte_normen.pdf` (Spalte «Ersatz für / ersetzt durch»):

- **Tragwerksnormen 2003** (per 30.06.2004 zurückgezogen, ersetzt durch die 26x-Reihe):
  - SIA 160:1989 → **SIA 260:2003 / 261:2003 / 261/1:2003** (Einwirkungen)
  - SIA 162:1993 → **SIA 262:2003** (Beton); SIA 162/1 → 262/1
  - SIA 161:1990 → **SIA 263:2003 / 264:2003** (Stahl-/Verbundbau); 161/1 → 263/1
  - SIA 164:1992 → **SIA 265:2003 / 265/1** (Holzbau)
  - SIA V177:1995 → **SIA 266:2003 / 266/1** (Mauerwerk)
  - SIA V191/192:1995/96 → **SIA 267:2003 / 267/1** (Geotechnik)
  - Zweite Revision: SIA 262/263/263-1:2003 → **:2013** (per 31.12.2012 abgelöst).
- **SIA 118-Integration** (organisatorische Teile in die 118/-Reihe verschoben, technischer
  Teil bleibt Fachnorm), z.B.: SIA 232:2000 → **118/232:2011** (org.) + 232/1, 232/2:2011 (techn.);
  SIA 240/244/246/248/257/318/329/331/342/343 → je **118/xxx** (org.) + Fachnorm (techn.).
- **SIA 118 selbst:** 1977 → **2013** (per 31.12.2012 zurückgezogen). ⚠ JANS-Bestand hält 1991.
- **SIA 116:1952 → SIA 416:2003** (Flächen/Volumen Hochbau); **SIA 180/4:1982 → SIA 416/1:2007**.
- **SIA 380/7:1985 → SIA 118/380:2007**; **SIA 380/1**: 1988→2001→2007→**2009** (Kette; nach 2013 weiter zu :2016, siehe Bestand).
- **SIA 462:1994 → SIA 269/269/1:2011** (Erhaltung Tragwerke); **SIA 162/5:1997 → 269/2:2011**.
- **SIA 385/1:2000 → 385/9:2011**, **385/3:1991 → 385/1:2011** (Trinkwasser/Warmwasser umnummeriert).
- **SIA 752/753:2002 → 118/252 bzw. 118/253:2012** (org. Teile in 118er-Reihe).

## C) Mehrfach-Ausgaben im Bestand (Inventar-Flags)

Wo das Inventar mehrere Ausgaben derselben Norm hält, gilt die jüngere; die ältere nur für
Altverträge mit Vermerk. Im `training/norm-inventar.md` in der Bemerkung markiert:

| Norm | Bestand | Gilt | Ältere Ausgabe |
|---|---|---|---|
| SIA 102 | 2020 + 2014 | **2020** | 2014 — ersetzt durch 2020 |
| SIA 111 | 2014 + 2003 | **2014** | 2003 — ersetzt durch 2014 |
| SIA 108 | 108-U:2014 + 2003 | **2014 (108-U)** | 2003 |
| SIA 142 | 2009 + 1998 | **2009** | 1998 — ersetzt durch 2009 |
| SIA 273 | 1998 + 1989 | **1998** (2013-gültig danach 2008!) | 1989; ⚠ beide älter als 2013-gültige 2008 |
| SIA 329 | 2018 + 1989 | **2018** | 1989 |
| SIA 343 | 2018 + 1990 | **2018** | 1990 |
| SIA 384.201 | 2017 + 2003 | **2017** | 2003 |
| SIA 180 | 2014 + 180.081/082:2017 | **2014 + Teilnormen 2017** | — |

## D) Nicht-SIA-Familien (Gültigkeit)

- **VKF:** Bestand = **Brandschutzvorschriften 2015** (Norm 1-15 + Richtlinien/Erläuterungen 2015,
  inkl. Änderungen 2016/2017). Aktuellere BSV (Revision) nur auf Zuruf beschaffen — offene Frage.
- **DIN / VSS / RAL:** deutsche/schweiz. Regelwerke ohne SIA-Rückzugsregister; Gültigkeit je
  Dokument beim Destillieren aus dem Deckblatt erfassen. DIN-PDFs ggf. FileOpen-DRM (dann «DRM, manuell»).
- **SWKI (Schweizerischer Verein von Gebäudetechnik-Ingenieuren):** im Haus liegt genau **ein**
  SWKI-Dokument, `PL - 02_Recht_Norm/06_Richtlinien/SWKI/SWKI VA 103-1 Lüftungsanlagen für
  Parkhäuser.pdf` (Priorität P2, **noch nicht destilliert**; Beleg `training/norm-inventar.md`,
  Abschnitt `06_Richtlinien/SWKI`). Reiner **Bestandseintrag ohne Gültigkeitsaussage** — Ausgabe
  und Stand sind nicht am Original erfasst.

  **Führungsentscheid Raphael 31.07.2026 (Wissens-Chef Run 21):** SWKI gehört in den Scope dieser
  KB, nach demselben Zuschnitt wie SIA, VKF und VSS — **`normen` führt Fundstelle, Ausgabe und
  Fassungsstand, `energie` führt die angewandte Fachaussage** (Lüftungs-/HLK-Physik) und verweist
  für die Ausgabe hierher. Das ist keine Scope-Ausweitung, sondern die bestehende Regel auf einen
  weiteren Herausgeber angewandt; Präzedenz ist bfu (Run 38). Anlass war ein belegter Fehlaufwand:
  ohne Registerzeile wollte diese KB SWKI 99-3 destillieren, obwohl die Richtlinie seit dem
  1.8.2015 ersetzt ist und `energie` das seit dem 25.07.2026 belegt hatte.

  **Was hier geführt wird und was nicht.** Die Registerzeilen tragen nur, was am Original oder am
  Hausbestand belegt ist — für die im Haus fehlenden Volltexte gibt es **keine Gültigkeitsaussage**
  (weder ✓ noch ✗), sonst entstünde dieselbe ungedeckte Aussage, die die Verifikation in Run 20 am
  SIA-2032-Fall verhindert hat.

| SWKI-Richtlinie | Ausgabe | Bestand | Bemerkung |
|---|---|---|---|
| VA103-01 «Lüftungsanlagen für Parkhäuser» | **2017-04** (Erstausgabe April 2017, 110 S., zweisprachig d/f — am Deckblatt erfasst Run 40, 31.07.2026) | ✓ Haus, **destilliert** (`swki-va103-01-2017.md`, Status `speculative`) | `06_Richtlinien/SWKI/`, Beleg `training/norm-inventar.md`. Ergänzt VKF-BRL 25-15; einschlägig für `planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung`. **Auftrag N-R21-1 erfuellt (Run 40, 31.07.2026).** Wichtig fuer die Anwendung: die Richtlinie gilt **nur fuer Mittel- und Grossgaragen ab 100 m2**; fuer Kleingaragen unter 100 m2 gilt sie ausdruecklich NICHT (Ziff. 0.1.2, am Original woertlich nachgeprueft) — dort nur Empfehlung natuerliche Lueftung plus SIA 180. Ergaenzt VKF-BSR 25-15, ersetzt sie nicht. Einschlaegig fuer `planungsgrundlagen/wiki/recht-norm-tiefgarage-erschliessung` |
| VA 105-01 | **2015-08** (genehmigt 02.07.2015, in Kraft 01.08.2015) | ✗ Volltext nicht im Bestand (Kap. 3-6 kostenpflichtig, Kaufentscheid offen) | **ersetzt SWKI 99-3:2003 + Beiblatt 2004.** Belegt über Titelblatt/Vorwort (OCR) in `wissen/energie/destillate/reinraum-op-klimatisierung-gesundheitsbau-ch.md`, Zweitquelle H+ eFlash 2015-09. Belegt ist «abgelöst/ersetzt», **nicht** ein förmlicher Rückzug |
| SWKI 99-3:2003 (+ Beiblatt 2004) | 2003 | ✗ | **abgelöst per 1.8.2015** durch VA 105-01. Nicht mehr destillieren |
| VA 106, SWKI 2004-1 | — | ✗ | in `wissen/energie` nur über Leseprobe/Verkaufsseiten bekannt (Destillat dort `emerging`). Hier bewusst **keine** Ausgabe- oder Gültigkeitsaussage |
- **bfu (Beratungsstelle für Unfallverhütung, Bern):** Fachbroschüren/Fachdokumentationen mit
  eigener Publikationsnummer im Schema `<Nr> – <MM.JJJJ>` im Impressum; kein Rückzugsregister,
  die Fassung steht am Dokument. Aufgenommen Run 38 (30.07.2026) aus
  `PL - 02_Recht_Norm/06_Richtlinien/BfU/`. Diese Publikationen sind **keine Normen**, sondern
  Auslegungs-/Praxishilfen: sie geben durchgehend die Norm SIA 358 (Geländer/Brüstungen) sowie
  SIA 500, DIN 51130/51097 und VSS SN 640 238 wieder. **Verbindlich ist im Streitfall die Norm,
  nicht die bfu-Broschüre** — die Broschüre ist Auslegungshilfe und Beleg für die «anerkannten
  Regeln der Baukunde».

| bfu-Publikation | Nr. | Ausgabe | Bestand | Bemerkung |
|---|---|---|---|---|
| Geländer und Brüstungen | 2.003.01 | **01.2019** (geltend) | ✓ beide | ersetzt die Fassung 07.2012, die ebenfalls im Haus liegt; die 2019er ergänzt quantifizierte Werte, die 2012 fehlten |
| Türen und Tore | 2.005-01 | 12.2012 | ✓ | Klemmstellen, kraftbetätigte Tore |
| Glas in der Architektur | 2.006.01 | 10.2010 | ✓ | älteste der Reihe — bei Verwendung auf eine neuere bfu-Fassung prüfen (nicht im Haus) |
| Treppen | 2.007.01 | 11.2009 | ✓ | älteste der Reihe — dito |
| Bodenbeläge | 2.027 | 2011 | ✓ | Materialkunde, Ausführung, Sanierung, Reinigung |
| Anforderungsliste Bodenbeläge (Gleitfestigkeit) | 2.032 | 2012 | ✓ | praxisführend für Bewertungsgruppe je Raum; zitiert 2.027 als Grundlage |
| Sicherheit im Wohnungsbau | 2.034 (2.034.01) | 07.2011 (Druck 2009, Rechtsstand vor 1.1.2011) | ✓ | KEIN Bauteilkatalog, sondern rechtsvergleichende Studie: Bindungsstärke der SIA 358 je Kanton + FL für Geländer/Brüstungen/Treppen (Generalklausel/Verweis/Inkorporation); ZH: § 20 BBV I (Geländer, keine Zahl) + § 305 PBG (Treppenbreiten, beziffert) |
| Sicherheit, rechtliche Aspekte | 2.075.01 | 02.2011 | ✓ | Kurzinfo, 2 S.; Werkeigentümerhaftung Art. 58 OR, Art. 229 StGB |

⚠⚠ **Besonderer Vorbehalt zu 2.034 «Sicherheit im Wohnungsbau»:** Diese Publikation gibt
**kantonales Recht** wieder, mit ausdrücklichem Rechtsstand «Bauerlasse konsultiert vor dem
1.1.2011» (Vorbehalt auf S. 8 der Quelle). Kantonales Baurecht ändert häufig. Die dort zitierten
Paragrafen — auch die Zürcher § 20 BBV I und § 305 PBG — sind deshalb **nie als geltender
Rechtsstand zu zitieren**, sondern nur als Einstiegshinweis, welche Norm im jeweiligen Kanton
überhaupt einschlägig ist. Der geltende Wortlaut ist über die KB `baurecht` bzw. die amtliche
Gesetzessammlung zu verifizieren (Rule `normen-referenz` und `identifikatoren-verifizieren`).

⚠ **Zitier-Vorbehalt:** Für 2.006.01 (2010) und 2.007.01 (2009) ist nicht geprüft, ob die bfu
inzwischen neuere Fassungen publiziert hat — im Haus liegen nur diese. Vor einer Verwendung in
einem laufenden Projekt ist der aktuelle Stand auf bfu.ch abzugleichen (gleiche Logik wie die
2013-Blindzone bei SIA, siehe oben).

---
*Aufgebaut im Nacht-Loop `normen-training-nacht`, Run 1 (Sonderprogramm), 11.07.2026.
Quelle Gültigkeit: SIA `ersetzte_normen.pdf`, Stand 25.02.2013. Fortschreibung bei jeder Revision.*

## B) DIN / VSS / RAL — Gültigkeit der destillierten Normen (Lauf 260712, Mac Mini)

Kein zentrales Rückzugs-/Ersatzregister wie bei SIA vorhanden; Gültigkeit wird aus
Titelblatt-Angaben (Ersatz für / Ausgabejahr) der jeweiligen Norm entnommen.

| Norm | Ausgabe | Ersetzt | Bemerkung |
|---|---|---|---|
| DIN 277-1 | 2005-02 | 1987-06 | gilt |
| DIN 277-2 | 2005-02 | 1987-06 | gilt |
| DIN 5034-1 | 1999-10 | 1983-02 | gilt |
| SN 640 050 (VSS) | Mai 1993 | SN 640 620 (März 1973) | gilt |
| ZH 700.5 Zugangsnormalien | 09.12.1987 | Normalien 19.12.1979 | gilt, in Kraft seit 01.01.1988 |
| ZH 722.15 Verkehrssicherheitsverordnung | 15.06.1983 | — | gilt, geändert 05.10.1994 (in Kraft 01.01.1995) |
| Stadt ZH Merkblatt Veloabstellplätze | 1996, überarb. 1998 | — | städtische Richtlinie, kein SNV-Normtext |
| RAL-GZ 638 Gitterroste | September 2008 | keine ältere Ausgabe im Bestand | gilt; vollständig destilliert (S.1-24) |

## Run-2-Präzisierungen (12.07.2026, MacBook Pro — am Original verifiziert)

Gültigkeitsangaben direkt aus dem Titelblatt/Vorwort des jeweiligen Destillats (nicht aus dem
2013-Register abgeleitet, sondern am PDF belegt):

| Norm | Ausgabe (Bestand) | Ersetzt laut PDF | Bemerkung |
|---|---|---|---|
| SIA 103 | 2003 | Ordnung SIA 103:1984 (Art. 5–7 genehmigt 21.06.2003) | gilt; Bauingenieur-Honorar analog SIA 102 |
| SIA 105 | 2020 (gültig ab 2020-01-01) | SIA 105:2014 + SIA 105-K:2018 | gilt; **kein baukostenabhängiges Prozentmodell (Art. 7)** — nur Kategorie-/Zeitmodell (Art. 6) |
| SIA 111 | 2014 (gültig ab 2014-11-01) | Ordnung SIA 111:2003 | gilt; Verständigungsnorm «Modell Planung und Beratung» |
| SIA 112 | 2014 (SN 509 112:2014, gültig ab 2014-11-01) | SIA 112:2001 | gilt; Verständigungsnorm «Modell Bauplanung» |
| SIA 416 | 2003 | SIA 416:1993 + SIA 116:1952 | gilt (bestätigt Register-Abschnitt B «116→416») |
| SIA 451 | 1992 | SIA 451:1989 | gilt; technisch (LV-Datenformate), Kontext CRB/NPK |
| VKF 1-15 Brandschutznorm | 2015 (in Kraft 01.01.2015) | BSN 2003 | gilt; BSV 2015 rechtsgültig (BSV 2026 frühestens nach IOTH-Plenum 03/2027, siehe QUESTIONS) |
| VKF-BRL 16-15 Flucht-/Rettungswege | Ausgabe 2015, Fassung 01.01.2017 mit Zusatzvermerk **«Stand 01.12.2022»** (Änderungsstufen: ABSV 22.03.2017, TKB 09.06.2021, Fehlerkorrektur 01.12.2022 — alle drei laut Änderungsliste S. 2 «im Anhang») | BRL 16-03 | gilt; **Fassungs-Deltas geprüft Run 22 (260725), Datei `PL - 03 Brandschutz/…/BSPUB-1394520214-85.pdf`.** Ziff. 3.7 Schleusenpflicht Einstellräume: Bezugsgrösse **Brandabschnittsfläche > 1'200 m²**, in BEIDEN Fassungen wortidentisch (Haupttext S. 12) — die Meldung aus `planungsgrundlagen`, die Bezugsfläche sei von «Geschossfläche» geändert worden, betrifft nur die erläuternde Anhang-Einleitungszeile S. 33 und ist als materielle Änderung **widerlegt**. ⚠ ABER: die Personenbelegung Verkauf (Ziff. 3.5.2, Anhang S. 24) ist eine **materielle Kennwert-Änderung** — dort trägt allein der Anhang die Zahlen (Haupttext sagt nur «flächenbezogene Annahmen»): «Verkaufsgeschäfte 0.5/0.35/0.25» ersetzt durch «Fachmärkte 0.1/0.1, Supermärkte 0.38/0.15, hochfrequentierte Supermärkte 0.45/0.21» + neue Fussnote. Ferner ABSV-Änderung auch auf S. 16 (Bildlegenden von «Horizontaler Fluchtweg» auf «Gesamtlänge von Fluchtwegen» umbenannt) |
| VKF-BRL 14-15 Verwendung von Baustoffen | Ausgabe 2015; **geltende Fassung 01.01.2017** (IOTH-Beschluss 22.09.2016) | BRL 13-03/14-03 (RF-Klassen) | gilt; **Fassung 2017 nachgetragen Run 22 (260725)** aus `PL - 03 Brandschutz/…/BSPUB-1394520214-77.pdf` — Destillat beruhte bis dahin auf der überholten Fassung 01.01.2015. 13 materielle Änderungen, u.a. neuer neunteiliger cr-Ausnahmekatalog (Ziff. 2 Abs. 3, zuvor nur drei Ausnahmen), Wegfall der Hochhaus-Sonderanforderung für Rohrleitungen/-dämmungen (Ziff. 5.1.2: einheitlich RF3/cr statt RF1/RF2 an Hochhäusern), Wegfall der RF1-Gehäusepflicht für Rauminformationssysteme in vertikalen Fluchtwegen (Ziff. 5.3). Delta Run 23 (260725) adversarial geprüft BEANSTANDET, 5 lokale Korrekturen eingearbeitet (Ziff.2 Abs.8 + Ziff.3.2.3 Abs.1 ergänzt, Fussnote[2]/[7]-Fehler korrigiert, SN-EN-60065-Fassung); die drei Kernbefunde bestätigt korrekt. Run 24 (260725) Re-Verifikation dieser 5 Korrekturen: 4/5 wortgetreu bestätigt, 1/5 (Ziff.3.2.3 Abs.1) präzisiert — einzige echte Neuerung ist der Zusatz "bzw. flächige Schichten", "Aussenwandbekleidungen" stand bereits 2015. Delta-Sorgfaltsstufe weiterhin speculative bis nächste saubere Runde; Anhang der Fassung 2017 nicht ausgewertet |
| VKF-BRL 13-15 Baustoffe und Bauteile — Klassifikation | Ausgabe 2015; **geltende Fassung 01.01.2017** (IOTH-Beschluss 22.09.2016: Ziff. 2.4.1 Tabelle S. 8, Anhang zu Ziff. 3.4 S. 24) | — | gilt; **Fassung 2017 nachgetragen Run 22 (260725)** aus `PL - 03 Brandschutz/…/BSPUB-1394520214-71.pdf` — Destillat beruhte bis dahin auf der überholten Fassung 01.01.2015. Materiell: die EN-Klassen **E/E-d2 und EL/EL-d2 sind von RF4 auf RF3 (cr) umgestuft**, RF4 hat 2017 kein SN-EN-13501-1-Äquivalent mehr. Ausserhalb der amtlichen Änderungsliste zusätzlich gefunden: EN-Normzitate in Ziff. 2.2.6 mit Ausgabejahr versehen. Delta Run 23 (260725) adversarial geprüft **BESTANDEN** (0 Befunde), auf established gehoben |
| VKF-Merkblatt 2005-15 Lithium-Ionen-Batterien | Stand **01.06.2021** | unbekannt (Nummernkreis seit 2015) | gilt; **Merkblatt**, nicht Richtlinie — Ziff. 4 bezeichnet die Massnahmen ausdruecklich als «Hilfestellungen»/«Loesungsansaetze», beim Zitieren kenntlich machen. **Nicht im Hausbestand PL-03**, bezogen von der VKG-Publikationsplattform (BSPUB-1394520214-3688), Destillat `vkf-merkblatt-2005-15-lithium-ionen-batterien.md` (260731). Kernschwellen Speichersysteme je Brandabschnitt: < 15 kWh HL I, 15-100 kWh HL II, > 100 kWh HL III. **Ergänzt 05.08.2026:** dazu die eigenständige **VKF-FAQ 2005-01 «Lithium-Eisenphosphat-Batterien»** (Beschluss ABSV 09.09.2025, Bezug Ziff. 1.2, BSPUB-0000003901-3176, am Original verifiziert) — für LFP max. 100 kWh/Brandabschnitt genügt **EI 30** statt EI 60, ab 100 kWh **EI 60** im Gebäude statt Freiaufstellung/heisser Bemessung; in EFH/Gebäuden geringer Abmessung LFP kapazitätsunabhängig in allen Räumen ausser Fluchtweg und Gefahrenzone; zwingend feuerwiderstandsfähige Trennung der Lüftungsanlagen (Brandschutzklappen mit Kanalrauchmelder). Verbindlichkeitsgrad wie das Merkblatt: «möglicher Lösungsansatz», «Erläuterung/Interpretation» |
| VKF-BRL 27-15 Nachweisverfahren | 2015 (IVTH-Beschluss 18.09.2014, verbindlich für alle Kantone) | BRL 27-03 | gilt |

## Mini-Run-2-Reconcile (12.07.2026, Mac Mini — Destillate ohne Register-/Inventar-Eintrag nachgezogen)

Diese Destillate waren bereits am 12.07.2026 abends (nas-selfcommit 20:00) auf dem NAS
vorhanden, aber weder im `norm-inventar.md` noch im Destillat-`INDEX.md`/hier erfasst
(vermutlich Lauf ohne abschliessenden Bookkeeping-Schritt). Inhalt geprüft (Stichprobe
DIN 4102-1, SN 640 060), Qualität entspricht dem KB-Standard — jetzt nachgezogen:

| Norm | Ausgabe (Bestand) | Ersetzt laut PDF | Bemerkung |
|---|---|---|---|
| DIN 18040-1 | 2010-10 | — | gilt; Barrierefreies Bauen öffentl. Gebäude |
| DIN 18040-2 | 2011-09 | DIN 18025-1:1992-12 + DIN 18025-2:1992-12 | gilt; Barrierefreies Bauen Wohnungen (Destillat 13.07.2026, Pendant zu DIN 18040-1) |
| DIN 18065 | 2000-01 | — | gilt; Gebäudetreppen |
| DIN 18299 | 2010-04 | — | gilt; VOB/C Allg. Regelungen Bauarbeiten |
| DIN 1946-6 | 2009-05 | — | gilt; Teil-Destillat (125 S., S.1-20+27-37 gelesen) |
| DIN 276-1 | 2008-12 | — | gilt; Kosten im Bauwesen (Hochbau) |
| DIN 276-4 | 2009-08 | — | gilt; Kosten im Ingenieurbau |
| DIN 4102-1 | 1998-05 | DIN 4102-1:1981-05 | gilt; Voll-Destillat (28/28 S. gelesen, inkl. Anhang B S.21-25); Q&A-Selbstbefragung Run 20 (260714) |
| DIN 5034-2 | 1985-02 | — | gilt |
| DIN 5034-3 | 2007-02 | — | gilt |
| DIN 5034-4 | 1994-09 | — | gilt; Quell-PDF im Bestand nur ungerade Seiten (Scan-Lücke, kein Extraktionsfehler) |
| DIN 5034-6 | 1995-06 | — | gilt |
| DIN EN 12101-2 | 2003-09 (dt. Fassung EN 12101-2:2003) | — | gilt; Teil-Destillat (38 S., Anhang C-F S.17-30 offen) |
| SN 640 060 (VSS) | November 1994 | nicht angegeben im Dokument | gilt |
| SN 640 066 (VSS) | April 1996 | nicht angegeben im Dokument | gilt |

## Mini-Run (23.07.2026, Mac Mini — EN 520 Bestandslücke recherchiert)

| Norm | Ausgabe | Ersetzt | Bemerkung |
|---|---|---|---|
| SN EN 520 (DIN EN 520) Gipsplatten — Begriffe, Anforderungen, Prüfverfahren | 2004+A1:2009 (dt. Fassung DIN EN 520:2009-12) | EN 520:2004 (ohne A1) | **nicht im JANS-Bestand** (SharePoint PL-02 02_Normen/DIN_Norm geprüft, 72 Dateien, EN 520 fehlt); nur kostenpflichtig verfügbar (Beuth/DIN Media/SNV) — kein Kauf ohne Freigabe. Öffentliche Vorschau bestätigt Ziffer 4.13 «Definierte Dichte (Typ D)» als Fundstelle; Typenbuchstaben lt. Vorschau A/D/E/F/H1-3/I/P/R (bisheriges Wiki nur A/D/F/H/I/R). Details/Praxis: [[en-520-gipsplattentypen]]. |

## Run-3-Präzisierungen (12.07.2026, MacBook Pro — am Original verifiziert)

P2-SIA-Batch (Tragwerk 260–267, Hindernisfrei/Sicherheit/Boden/Abdichtung/Dach/Fassade).
Gültigkeit/«ersetzt» direkt aus Titelblatt/Vorwort des jeweiligen PDF belegt (nicht aus dem
2013-Register abgeleitet); alle Destillate am Original adversarial verifiziert (`established`):

| Norm | Ausgabe (Bestand) | Ersetzt laut PDF | Bemerkung |
|---|---|---|---|
| SIA 260 | 2003 | Ziff. 0–3 der SIA 160:1989 | gilt; Grundlagen Tragwerksprojektierung (Tragwerksnormen-Generation 2003, mit SIA 260/1) |
| SIA 261 | 2003 | mit SIA 261/1 die Ziff. 4 der SIA 160:1989 | gilt; Einwirkungen (Schnee/Wind/Erdbeben, Tab. 8 Nutzlasten, Tab. 25–27 Erdbeben) |
| SIA 262 | 2003 | mit SIA 262/1 die SIA 162:1993 + SIA 162/1:1989 | gilt; Betonbau (γc=1,5/γs=1,15, Expositionsklassen Tab. 1, Betonsorten Tab. 3) |
| SIA 263 | 2003 | Ziff. 0–4.6 + 5–6 der SIA 161:1990 | gilt; Stahlbau |
| SIA 264 | 2003 | mit SIA 264/1 die Ziff. 4.7–4.9 der SIA 161:1990 | gilt; Stahl-Beton-Verbundbau |
| SIA 265 | 2003 | mit SIA 265/1 die SIA 164:1981/92 + SIA 164/1:1986 | gilt; Holzbau |
| SIA 266 | 2003 | mit SIA 266/1 die Empf. SIA V177:1995 | gilt; Mauerwerk (γM=2,0, Brand Tab. 10) |
| SIA 267 | 2003 | Empf. SIA V191:1995, V192:1996, Vornorm SIA 191/1:2001, Merkbl. SIA 2009:1996 | gilt; Geotechnik |
| SIA 500 | 2009 | SN 521500:1988 (Behindertengerechtes Bauen) | gilt; Hindernisfreie Bauten — Kernnorm Healthcare/öffentliche Bauten |
| SIA 358 | 2010 | SIA 358:1996 | gilt; Geländer und Brüstungen (Absturzsicherung) |
| SIA 251 | 2008 | Empf. SIA V251/1:1998 | gilt; Schwimmende Estriche im Innenbereich |
| SIA 252 | 2002 | techn. Teil SIA 252:1988 | gilt; Fugenlose Industriebodenbeläge |
| SIA 253 | 2002 | techn. Teil SIA 253 + SIA 254, Ausgabe 1988 | gilt; Bodenbeläge Linoleum/Kunststoff/Gummi/Kork/Textil/Holz |
| SIA 257 | 2005 | techn. Teile SIA 257:1989 (Maler) + SIA 259:1977 (Tapezierer) | gilt; Maler-, Holzbeiz- und Tapeziererarbeiten |
| SIA 271 | 2007 | techn. Teile SIA 271:1986 + SIA 271/1:1991 + SIA 271/2:1994 | gilt; Abdichtungen von Hochbauten |
| SIA 279 | 2018 | SIA 279:2011 + Merkbl. SIA 2001:2015 | gilt; Wärmedämmende Baustoffe — **neuer als 2013-Register (aktuell)** |
| SIA 281 | 2017 | SIA 281:2013 | gilt; Kunststoff-, Bitumen- und Ton-Dichtungsbahnen — **neuer als 2013-Register** |
| SIA 232 | 2000 | SIA 238:1988 + Teile SIA 123:1970 / SIA 124:1970 | gilt; Geneigte Dächer |
| SIA 329 | 2018 | SIA 329:2012 | gilt; Vorhangfassaden — **neuer als 2013-Register** (Abschnitt C führt 2018+1989) |
| SIA 240 | 1988 | Norm 130:1959 (Schlosser-/Metallarbeiten) | gilt (Bestand); Metallbauarbeiten — alte Ausgabe, aktuellere Ausgabe ggf. Bring-Schuld |

## Mini-Run-2-Neu (12.07.2026, Mac Mini — 5 neue Destillate, am Original gelesen)

| Norm | Ausgabe (Bestand) | Ersetzt laut PDF | Bemerkung |
|---|---|---|---|
| DIN 1249-11 | September 1986 | nicht angegeben (Erstausgabe Teil 11) | gilt; Flachglas im Bauwesen, Glaskanten (Begriff/Kantenformen) |
| DIN 68119 | September 1996 | DIN 68119:1990-04 (davor DIN 68119-1:1980-10) | gilt; Holzschindeln |
| DIN 4426 | September 2001 | DIN 4426:1990-04 | gilt; Instandhaltung baulicher Anlagen — Arbeitsplätze/Verkehrswege Dach+Fassade, Gerüstverankerung |
| DIN EN 12207 | 2000-06 (dt. Fassung EN 12207:1999-11) | teilweise DIN 18055:1981-10 (nur Ziff. 3.2 Fugendurchlässigkeit) | gilt; Fenster/Türen Luftdurchlässigkeit-Klassifizierung 1–4, NA-Tabelle Korrelation zu alten Beanspruchungsgruppen A/B/C |
| DIN 1055-2 | 2010-11 | DIN 1055-2:1976-02 | gilt; Bodenkenngrössen — nur Geotechnische Kategorie 1, Gründungstiefe ≤ 3 m |

## Mini-Run-6 (13.07.2026, Mac Mini — Deepening nach Inventar-Abschluss, am Original gelesen)

| Norm | Ausgabe (Bestand) | Ersetzt laut PDF | Bemerkung |
|---|---|---|---|
| SN 640 105a (VSS) | Dezember 2000 | SNV 640 105 (Oktober 1975) | gilt (keine neuere Ausgabe im Bestand); Verbreiterung der Fahrbahn in Kurven, vollständig als Anhang (S.25-37) in `VSS 640 291a Parkieren Geometrie.PDF` gelesen |

## Run-5 (13.07.2026, MacBook Pro — SIA/VKF-Basisinventar-Abschluss, am Original destilliert+verifiziert)

Mit diesem Lauf ist das **SIA/VKF-Basisinventar vollstaendig** (alle P1-P3-Positionen destilliert
oder begruendet uebersprungen). Neu registriert bzw. praezisiert:

| Norm | Ausgabe (Bestand) | Ersetzt laut PDF | Bemerkung |
|---|---|---|---|
| SIA 195 | 1999 (in Kraft 1.1.2000) | SIA 195:1992 «Pressvortrieb» | gilt; Rohrvortrieb, grabenlose Leitungen |
| SIA 196 | 1998 | SIA 196:1983 | gilt; Baulüftung im Untertagbau (Teil-Destillat, Kern) |
| SIA 197 | 2004 (in Kraft 1.10.2004) | Kap. 1+2 der SIA 198:1993 | gilt; Projektierung Tunnel – Grundlagen (mit 197/1, 197/2) |
| SIA 198 | 2004 (in Kraft 1.10.2004) | SIA 198:1993 (Ausführungsteil) | gilt; Untertagbau Ausführung (vertragl. Teil neu SIA 118/198) |
| SIA 199 | 1998 | SIA 199:1975 | gilt; Erfassen des Gebirges im Untertagbau |
| SIA 203 | 1997 | — | gilt; Deponiebau (setzt TVA um) |
| SIA 272 | 1980 (Nachdruck 3/1997) | — | gilt (Bestand); Grundwasserabdichtungen |
| SIA 282 (SN 564282) | **2019** (gültig ab 1.8.2019) | SIA 282:2011 | gilt; Flüssig aufzubringende Abdichtungen — **neuer als 2013-Register**; Datei `sia-564-282.md` |
| SIA 405 | 1998 | Empfehlung SIA 405:1985 | gilt; GEO405 Leitungskataster (Teil-Destillat) |
| SIA 431 | 1997 (in Kraft 1.12.1997) | — | gilt; Entwässerung von Baustellen (SIA/VSA) |
| SIA 450 | 1993 (Druck 4/1994) | — | gilt (Bestand); Informatik Kosteninformationen im Bauwesen |
| SIA 480 | 2004 | — | gilt; Wirtschaftlichkeitsrechnung Investitionen Hochbau |
| SIA 493 | 1997 (in Kraft 1.3.1998) | — | ⚠ **ARCHIVIERT seit 30.06.2022** — nicht mehr gültig. Deklaration ökologischer Merkmale von Bauprodukten. Quelle: shop.sia.ch, Produktseite SIA 493 (SN 550493): «Gültig ab: 01.03.1998», «Gültig bis: 30.06.2022, archivierter Titel!»; am Herausgeber abgerufen und verifiziert 04.08.2026 (Wissens-Chef Run 25). **Kein belegter 1:1-Nachfolger** (Feld «ersetzt durch» fehlt). Eine LV-/Werkvertragsklausel «Deklaration nach SIA 493» geht ins Leere. Das frühere «gilt» war ein Rückschluss aus dem Haus-PDF, das seinen eigenen späteren Rückzug nicht ausweisen kann. **Nachtrag 06.08.2026 (Run 45), selbst am Herausgeber geprüft:** Die **Korrigenda SIA 493-C1:1997** existiert als eigenes Shop-Produkt (SN 550493-C1, 13 S., gültig ab 01.03.1998, ebenfalls archiviert per 30.06.2022) und ist als **kostenloser Download** (0.00 CHF) beziehbar. Das Fehlen eines Nachfolgers ist jetzt **strukturell** bestätigt, nicht nur durch Abwesenheit im Fliesstext: die Produktseite von SIA 493 hat gar keine «Nachfolger»-Rubrik, während dieselbe Rubrik bei SIA 162/4 technisch vorhanden und befüllt ist. Der Weg über EPD nach EN 15804+A2 bzw. die KBOB-Ökobilanzdaten bleibt damit **Sekundärquelle** und darf nicht als Nachfolgeregelung des Herausgebers gesetzt werden. Offen: ob SIA ausserhalb des Shops eine Nachfolgeempfehlung ausgesprochen hat |
| SIA 2014 | **2017** (gültig ab 1.9.2017) | SIA 2014:1996 | gilt; CAD-Layerstruktur — **neuer als 2013-Register** |
| SIA 2040 | **2017** (gültig ab 1.5.2017) | SIA 2040:2011 | gilt; SIA-Effizienzpfad Energie (2000-Watt) — **neuer als 2013-Register** |
| SIA 2051 | **2017** (gültig ab 1.12.2017) | — (Erstausgabe) | gilt; BIM-Grundlagen — Datei `sia-2051-2018.md`. **Run 37 (260729) am Original bestätigt:** SNR 592051:2017 de, genehmigt 12.09.2017, gültig ab 2017-12-01, 52 Buchseiten (27 PDF-Seiten, Doppelseiten-Scan), Dokumentart **Merkblatt**. ⚠ **Die Bestandsdatei heisst `2051_2018.pdf` — der Dateiname ist falsch**, 2018 ist das Einscan-Datum (PDF-CreationDate 2018-02-07, Konica-Minolta). Das Register stimmt, die Datei ist die Fehlerquelle. Bewusst nicht umbenannt (Entscheid Raphael 29.07.2026, um Verweise nicht zu brechen) |
| SIA 2056 (SNR 592056) | **2019** (gültig ab 1.8.2019) | SIA 380/4:2006 | gilt; Elektrizität in Gebäuden Energie-/Leistungsbedarf — **neuer als 2013-Register**; Datei `sia-592-056.md` (Teil-Destillat) |
| SIA 370.028 (SN EN 81-28) | 2003 | — | gilt; Fern-Notruf für Aufzüge (Übernahme EN 81-28:2003) |
| SIA 370.080 (SN EN 81-80) | 2003 (gültig ab 1.7.2004) | Merkblatt SIA 2019:2000 | gilt; Sicherheit bestehender Aufzüge SNEL (Übernahme EN 81-80) |
| SIA 343.051 (SN EN 14351-2) | **CH-Ausgabe 2019** · EN-Basis 2018 | SN EN 14351-2:2018 (EN) → CH-Auflage 2019-01 | gilt; Innentüren-Produktnorm — **neuer als 2013-Register**; Feuer/Rauch NICHT abgedeckt (EN 16034); Teil-Destillat. **Run 37 (260729) präzisiert:** die Spalte nannte bisher «2018», das ist das Jahr der **europäischen Basisnorm** (EN 14351-2:2018). Das **Schweizer Ausgabejahr ist 2019** (Titelblatt: «Copyright © 2019 by SIA Zurich», «2019-01 1. Auflage», gültig ab 2019-01-01). Kein «Ersetzt»-Vermerk auf dem Titelblatt — welche Vorgänger-Ausgabe abgelöst wird, bleibt unbelegt (das frühere «SN EN 14351-2:2012?» war eine Vermutung und ist entfernt) |
| SIA 382/1 | **2014** (gültig ab 1.7.2014) | SIA 382/1:2007 | Lüftungs-/Klimaanlagen Grundlagen; Teil-Destillat (Kern S.1-63). **⚠ neuere Ausgabe SIA 382/1:2025** (ersetzt 2014, in Kraft seit 1.2.2025) — in KB energie `destillate/komfortlueftung-wrg-sia382-luftwechsel` als aktuell gefuehrt; Register-Stand 2014 ueberholt, Re-Destillat 2025 ausstehend (Quelle SIA-Shop; Wissens-Chef Run 4, 14.07.2026) |
| SIA 384/201 (SN EN 12831-1) | **CH-Ausgabe 2018** · EN-Basis 2017 | SN EN 12831:2003 (ersetzt, Titelblatt-Vermerk) | gilt; Norm-Heizlast-Berechnung — **neuer als 2013-Register**; Teil-Destillat. **Run 37 (260729) präzisiert:** die Spalte nannte bisher «2017», das ist das Jahr der **europäischen Basisnorm** (EN 12831-1:2017 bzw. SN EN 12831-1:2017 de). Das **Schweizer Ausgabejahr ist 2018** (Titelblatt: «1. Auflage 2018-12», gültig ab 2018-12-01, Copyright 2018). 111 S. (12 national + 99 EN). Das Destillat `sia-384-201-2017.md` führt die Trennung bereits korrekt |
| SIA 193.111 (SN EN 12063) | 1999 (gültig ab 1.8.1999) | — | gilt (Bestand); Spundwandkonstruktionen Spezialtiefbau |
| SN EN 13200-1 | **2019** (gültig ab 1.9.2019) | SN EN 13200-1:2012 | gilt; Zuschaueranlagen Teil 1 — **neuer als 2013-Register**; Datei `sia-en-13200-1-2019.md` |
| SIA 162.051 (SN EN 206-1) | 2000 (gültig ab 1.1.2003) | SIA V162.051:1994 / ENV 206:1990 | gilt (Bestand); Beton Teil 1 — spätere Ausgabe SN EN 206:2013 nicht im Bestand (Bring-Schuld) |
| VKF-BRL 107-15 | 2015 (genehmigt 23.9.2014) | — | gilt; Flüssiggasanlagen (Erläuterung zur Brandschutzrichtlinie) |

Zusätzlich am Original **retro-verifiziert** (established, Stand 260713): SIA 244:2006, 246:2006,
248:2006 (Kunst-/Naturstein-/Plattenarbeiten), SIA 312:2013 (Dachbegrünung), SIA 370.028:2003,
SIA 462:1994, 465:1998, 469:1997 (Erhaltung/Sicherheit bestehender Bauwerke), SIA 721:2001,
752:2002, 753:2002 (NVB Bohren/Böden).

## Merkblätter, Wegleitungen und Vertragsvorlagen — Run 16 (260719, MacBook Pro)

Die 31 im Run 15 nachgetragenen Bestände (Merkblatt-Serie 2000er, Wegleitungen/Auslegungen,
SIA-112-Hilfsmittel, Vertragsvorlagen, VKF-Normkonzept) sind destilliert und adversarial
verifiziert. **Wichtig für die Ausgaben-Disziplin:** Bei den Merkblättern wich das tatsächliche
Ausgabejahr auf dem Titelblatt vielfach vom Dateinamen ab — massgebend ist die Spalte «Ausgabe».

| Dokument | Ausgabe (am Titelblatt verifiziert) | Gültigkeit / Vermerk | Destillat |
|---|---|---|---|
| Wärmedämmstoffe — Deklarierte Werte der Wärmeleitfähigkei… | SIA Merkblatt 2001, Ausgabe 2005 (Impressum 2005-… | established | `sia-mb-2001-2005.md` |
| Sanierputze und Sanierputzsysteme | Merkblatt SIA 2003, Revidierte Ausgabe April 1996… | established | `sia-mb-2003.md` |
| Merkblatt zur Empfehlung SIA 451 «Informatik-Datenformate… | Merkblatt SIA 2004, Ausgabe März 1992 | established | `sia-mb-2004.md` |
| Durchführung und Interpretation der Potentialmessung an S… | Merkblatt SIA 2006, Ausgabe Februar 1993 (Copyrig… | established | `sia-mb-2006.md` |
| SIA Merkblatt 2007 — Qualität im Bauwesen. Aufbau und Anw… | SIA Merkblatt 2007, Ausgabe 2001 | established | `sia-mb-2007.md` |
| Handbuch für Kommunikationsverkabelung — Wegleitung für B… | SIA Merkblatt 2008, Ausgabe April 1994 (identisch… | established | `sia-mb-2008.md` |
| Merkblatt SIA 2014 — CAD-Layerorganisation | Merkblatt SIA 2014, Ausgabe September 1996 | established | `sia-mb-2014-bestand.md` |
| GEO405 Daten- und Darstellungskataloge für unterirdische… | Merkblatt SIA 2015 (2005) — genehmigt 26. August… | established | `sia-mb-2015-2005.md` |
| GEO 405 — Datenmodelle und Datenaustausch für unterirdisc… | SIA Merkblatt 2016, Copyright 2005 by SIA Zurich… | established | `sia-mb-2016-2005.md` |
| Merkblatt SIA 2017 — Erhaltungswert von Bauwerken | SIA 2017, Ausgabe 2000 (genehmigt 23.02.2000, in… | established | `sia-mb-2017.md` |
| Merkblatt SIA 2018 — Überprüfung bestehender Gebäude bezü… | SIA 2018, 1. Auflage 2004-10; genehmigt ZNO 26.08… | established | `sia-mb-2018-2004.md` |
| SIA Merkblatt 2020 — Sicherheitsleistungen des Unternehme… | SIA Merkblatt 2020, Copyright © 2001 by SIA Zuric… | established | `sia-mb-2020-bestand.md` |
| Merkblatt 2021 — Gebäude mit hohem Glasanteil: Behaglichk… | SIA Merkblatt 2021, Ausgabe 2002 (kein Ausgabever… | established | `sia-mb-2021.md` |
| Merkblatt SIA 2022 — Oberflächenschutz von Stahlkonstrukt… | SIA 2022, Ausgabe 2003 (2003-07, 1. Auflage; ZNO-… | established | `sia-mb-2022.md` |
| Merkblatt 2023 — Lüftung in Wohnbauten | SIA Merkblatt 2023, Ausgabe 2004-06, 1. Auflage (… | established | `sia-mb-2023-2004.md` |
| Merkblatt SIA 2024 — Standard-Nutzungsbedingungen für die… | SIA 2024:2006 (Ausgabe 2006, 1. Auflage 2006-08;… | established | `sia-mb-2024-2006.md` |
| Merkblatt SIA 2026 — Effizienter Einsatz von Trinkwasser… | SIA Merkblatt 2026, Ausgabe 2006 (1. Auflage 2006… | established | `sia-mb-2026-2006.md` |
| Bauweisenspezifische Zuordnungen von Leistungen der Bauin… | SIA Merkblatt 2027, Ausgabe 2006 (Deckblatt "Ausg… | established | `sia-mb-2027-2006.md` |
| Merkblatt SIA 2023 «Lüftung in Wohnbauten» | SIA 2023, 1. Auflage 2004-06 (Copyright © 2004 by… | established | `sia-2023-begleitdokument.md` |
| Wegleitung zur Norm SIA 271 — Abdichtungen von Hochbauten | unbekannt (kein Ausgabevermerk im PDF) | **nur 2-Seiten-Auszug** im Bestand — Volltext Bring-Schuld; Run 25 (260725) technischer Kern bestaetigt 0 Befunde, 3 Frontmatter-Befunde korrigiert (PAVIDENSA-Name) | `sia-271-wegleitung.md` |
| Geländer und Brüstungen an historischen Bauten | Schweizer Ingenieur und Architekt (SI+A), Nr. 38,… | established | `sia-358-fachartikel.md` |
| Hindernisfreie Bauten — Auslegungen zur Norm SIA 500:2009 | Auslegungsdokument der Arbeitsgruppe SIA 500, Sta… | established | `sia-500-auslegung.md` |
| Postversand von Beiträgen von Wettbewerben und Studienauf… | SIA 142i-301d, 3. Revision Juni 2015 (Publikation… | established | `sia-142i-301-postversand-2015.md` |
| Befangenheit und Ausstandsgründe bei Mitgliedern des Prei… | Wegleitung, August 2004 (keine SIA-Dokumentnummer… | established | `sia-142-befangenheit.md` |
| Kein Titel auf dem Dokument. Das Blatt zeigt eine unbetit… | unbekannt (kein Ausgabevermerk im PDF; Fusszeile… | **speculative** — Ausgabe/Umfang am PDF nicht feststellbar | `sia-112-bereichs-phasenmatrix.md` |
| Phasen des SIA-Leistungsmodells | unbekannt (kein Ausgabevermerk, kein Datum im PDF) | **speculative** — Ausgabe/Umfang am PDF nicht feststellbar | `sia-112-leistungsmodell.md` |
| kein Titel im Dokument — Deckblatt fehlt; Arbeitstitel au… | unbekannt (kein Ausgabevermerk im PDF) | **speculative** — Ausgabe/Umfang am PDF nicht feststellbar | `sia-112-tabelle-infrastruktur.md` |
| kein Titel/Deckblatt im PDF — einseitiges Dokument, das m… | unbekannt (kein Ausgabevermerk im PDF; Datum 2305… | **speculative** — Ausgabe/Umfang am PDF nicht feststellbar | `sia-vertragsunterschiede-2023.md` |
| SIA-Einzelarbeitsvertrag, Nr. 1031, 2007 | SIA 1031, Nr. 1031 / 2007 (Formular von der Direk… | established | `sia-1031-einzelarbeitsvertrag.md` |
| Einzelarbeitsvertrag für Praktikantinnen und Praktikanten | unbekannt (kein Ausgabevermerk im PDF; PDF-Erstel… | established | `sia-praktikantenvertrag.md` |
| Normkonzept BSV 2026 | Normkonzept BSV 2026, Stand 06.10.2022 (Projektdo… | **NICHT in Kraft** (Projektstand) — nie als geltendes Recht zitieren | `vkf-normkonzept-bsv-2026-entwurf.md` |
