---
titel: "Normen-Training Run 22 (MacBook Pro) — «KOMPLETT» war eine Messfehler-Kette: 2 unsichtbare Normen destilliert, 2 Destillate auf ueberholter Fassung, 11 QUESTIONS-Punkte geschlossen"
datum: 2026-07-25
station: "MacBook Pro"
familien: "SIA + VKF (Stations-Split; DIN/VSS/RAL gehoeren dem Mac Mini, nicht angefasst)"
meilenstein: "KEINE achte «KOMPLETT»-Bestaetigung — stattdessen Korrektur der Vollstaendigkeits-Metrik und Abbau des realen Rueckstands"
agenten: "13 (7 Destillier-/Klaerungs-Agenten, 3 adversariale Refuter auf dem Hauptmodell, 2 Korrektur-Agenten, 1 Destillier-Agent SIA 410)"
---

# Normen-Training Run 22 — MacBook Pro (SIA/VKF)

## Ergebnis in Kuerze

Die Runs 15-21 haben SIA/VKF **sieben Mal in Folge** als «komplett» gemeldet; Run 21 (heute, wenige
Stunden vor diesem Lauf) mit dem Schluss, es gebe «keine reale Quelle zu bearbeiten». Dieser Lauf hat
deshalb keine achte Bestaetigung produziert, sondern die **Messgroesse** geprueft — und den Rueckstand
abgebaut, der die ganze Zeit in `wiki/QUESTIONS.md` lag.

**Die Vollstaendigkeits-Metrik war zu schmal.** «0 offene `[ ]` im Inventar» plus «keine neuen Dateien»
misst ausschliesslich Datei-**Existenz**. Nicht gemessen wurden vier Dinge, und in allen vier lag Arbeit:

| Blinder Fleck | Befund |
|---|---|
| **Klassierung** der Bestandsdateien | 2 deutschsprachige Normen als «Sprachvariante» abgehakt und nie destilliert |
| **Fassungsstand** der Destillate | 2 VKF-Destillate beruhten auf der ueberholten Fassung 01.01.2015 |
| **Zweite Ablage** | die geltenden VKF-Fassungen 2017/2022 liegen in `PL - 03 Brandschutz/`, das das Inventar nicht scannt |
| **`wiki/QUESTIONS.md`** | rund 50 offene Punkte, davon 11 in diesem Lauf geschlossen |

Die Aussage «SIA/VKF KOMPLETT» gilt weiterhin fuer die **Grunddestillation des erfassten Bestands** —
sie war aber kein Beleg dafuer, dass nichts zu tun ist.

## Zugriffs- und Kollisions-Check (Pflicht)

- NAS `/Volumes/daten` gemountet: **OK**.
- OneDrive-Zugriff auf `PL - 02_Recht_Norm/02_Normen/` und `PL - 03 Brandschutz/`: **OK**, Content-Read
  erfolgreich (keine TCC-Blockade), rund 20 PDF vollstaendig gelesen.
- Kollisions-Check (`ps`, Rule 260724): **keine** laufende zweite `normen`-Instanz.
- **Aber:** eine bereits abgeschlossene Parallel-Instanz hatte die Run-Nummer 21 belegt und Report,
  Inventar-Kopfnotiz und CHANGELOG-Eintrag geschrieben. Dieser Lauf fuehrt daher die Nummer **22** und
  laesst den Fremd-Report unveraendert stehen (Protokoll), weist seine ueberholte Kernaussage aber aus.

## Neu destilliert: zwei Normen, die als «Sprachvariante» unsichtbar waren

**SIA 266/1:2003 «Mauerwerk – Ergaenzende Festlegungen»** — Datei `alle/i/266_1_d.pdf` ist **deutsch**
und lag nur falsch im italienischen Sprachordner. Die `/1`-Ergaenzungsnormen galten in dieser KB als
«moeglicherweise nicht im Bestand». Pruef-/Deklarationsnorm zu SIA 266 (regelt das WIE, SIA 266 das WAS):
zwei SIA-eigene Pruefverfahren (Ziff. 2.2 Mauerwerksdruckfestigkeit, Ziff. 2.3 Steinquerzugfestigkeit)
plus eine Ergaenzung zum EN-772-11-Verfahren (Ziff. 2.4). Destillat `sia-266-1-2003.md`, S. 1-12
vollstaendig.

**SIA 410:1986 «Kennzeichnung von Installationen in Gebaeuden — Sinnbilder fuer die Haustechnik»** —
Datei `alle/f/410_d_f_i.pdf` ist **dreisprachig d/f/i** und enthaelt den deutschen Volltext; sie war als
«Sprachvariante» abgehakt und hatte **keinen einzigen REGISTER-Eintrag**. Praktisch wichtig: es ist eine
**Empfehlung**, nicht eine Norm, und die Kennzeichnung ist **empfehlend** formuliert (Ziff. 0.1/0.2, S. 4)
— das ist die Frage, die in der Projektarbeit zaehlt. Systematik: sechs Grundsinnbilder (Ziff. 1.1, S. 5)
im Baukastenprinzip, gegliedert nach Gewerk (Heizung S. 14-18, Lueftung/Klima S. 19-23, Kaelte S. 24-26,
Sanitaer S. 27-32, MSR-Ergaenzung 1993 S. 33-34). Destillat `sia-410-1986.md`, S. 1-36 vollstaendig.

**Gegenprobe systematisch gefahren:** alle drei Sprachordner (`alle/e`, `alle/f`, `alle/i`) gegen deutsche
Namensmuster (`_d.pdf`, `_dfi`, `_de`) und Titel-Metadaten geprueft — **genau diese zwei Faelle**, keine
weiteren. Die Klassierungsluecke ist damit geschlossen, nicht nur bepflastert.

## Zwei Destillate standen auf einer ueberholten Fassung

Entdeckt ueber die Identifikation der vier nichtsprechenden `BSPUB-*.pdf`-Dateien in PL-03
(Mapping: `outputs/2026-07-25_pl03-fassungs-mapping.md`).

**VKF-BRL 14-15 «Verwendung von Baustoffen»** (fachlich der relevanteste Fall — steuert Materialwahl und
Ertuechtigung): Destillat beruhte auf Fassung 01.01.2015, geltend ist 01.01.2017 (IOTH-Beschluss
22.09.2016). 13 materielle Aenderungen nachgetragen, die drei wichtigsten:
- **Neuer neunteiliger cr-Ausnahmekatalog** (Ziff. 2 Abs. 3) — zuvor nur drei Ausnahmen.
- **Wegfall der Hochhaus-Sonderanforderung** fuer Rohrleitungen/-daemmungen (Ziff. 5.1.2: einheitlich
  RF3/cr statt RF1/RF2 an Hochhaeusern).
- **Wegfall der RF1-Gehaeusepflicht** fuer Rauminformationssysteme in vertikalen Fluchtwegen (Ziff. 5.3).

**VKF-BRL 13-15 «Baustoffe und Bauteile — Klassifikation»** (Klassifikationsfundament, auf das andere
Richtlinien verweisen): materiell sind die EN-Klassen **E/E-d2 und EL/EL-d2 von RF4 auf RF3 (cr)
umgestuft**; RF4 hat 2017 kein SN-EN-13501-1-Aequivalent mehr. Zusaetzlich ausserhalb der amtlichen
Aenderungsliste gefunden: EN-Normzitate in Ziff. 2.2.6 neu mit Ausgabejahr.

Beide Deltas sind **einfach destilliert und noch NICHT adversarial verifiziert** — im jeweiligen Destillat
mit einem sichtbaren Vorbehalt markiert, damit die Werte nicht unbesehen in Ausschreibung,
Brandschutznachweis oder Behoerdenkorrespondenz wandern.

## Verifikations-Verdikte (Richter-Stufe auf dem Hauptmodell)

Drei adversariale Refuter mit dem Auftrag zu **widerlegen**, im Zweifel BEANSTANDET. Alle drei haben
angeschlagen — die Verifikations-Pflicht bleibt hochgradig wertstiftend.

| Pruefgegenstand | Verdikt | Befunde |
|---|---|---|
| `wiki/vkf-beherbergungskategorien.md` | **BEANSTANDET** | Sachkern (Kategorien-Wortlaut, ≥-20-Schwelle, vier kumulative [c]-Bedingungen, alle Zahlenwerte) bestaetigt; 12 Korrekturen: 5 falsche Seitenzahlen, gemischte Ausgaben 2015/2017, eine Modalitaets-Haertung, eine falsch als [a]-spezifisch dargestellte Regel, eine widerlegte Negativ-Aussage |
| `sia-266-1-2003.md` | **BEANSTANDET** | 13 Befunde + 9 Luecken; alle Zahlen, Toleranzen und Formeln 1-2 fehlerfrei |
| Fassungs-Delta BRL 16-15 | **BEANSTANDET** | Sachkern richtig (Ziff. 3.7 materiell unveraendert), aber falsche Seitenzahl, falsche Diagnose, eine uebersehene Aenderung und eine irrefuehrende Verallgemeinerung |

Alle Beanstandungen wurden eingearbeitet; **kein** Artefakt dieses Laufs wurde auf `established` gehoben.

### Die vier gewichtigsten Einzelbefunde

1. **`sia-266-1-2003.md`: «liefert keine Bemessungs- oder Kostenkennwerte» war falsch.** Tabelle 1 (S. 8)
   fuehrt laut Tabellentitel Mindestanforderungen mit charakteristischen Werten (fxk, ffxk, fbk, fbqk,
   fmk, Exk = 1000 fxk, Lochflaechenanteil ≤ 50 %). Die Aussage haette die Norm fuer die Bauleitung
   faelschlich als kennwertfrei abgestempelt — und widersprach dem eigenen Destillat-Text.
2. **`sia-266-1-2003.md`: «drei eigene Prueferfahren» war eine unbelegte Zuspitzung** (korrekt: zwei plus
   eine Ergaenzung zum EN-Verfahren), und die Behauptung «keine sollte-Formulierungen im Dokument» war
   widerlegt — Ziff. 2.2.4 enthaelt zwei Sprechakte, davon einen echten Empfehlungssatz.
3. **Beherbergungskategorien: «Betreutes Wohnen — keine VKF-Fundstelle» war widerlegt.** BRL 10-15de,
   Stichwort «Wohnbauten» (S. 35), nennt **Alterswohnungen** ausdruecklich als Wohnbauten. Praxisfolge:
   betreutes Wohnen ohne Pflegeabhaengigkeit ist als Wohnbau zu behandeln; erst «auf fremde Hilfe
   angewiesen» bei ≥ 20 Personen fuehrt in Kategorie [a]. Das ist fuer die JANS-Healthcare-Projekte der
   entscheidende Hebel und war zuvor als Nicht-Wissen dokumentiert.
4. **BRL 16-15: die Einordnung «nur erlaeuternder Anhang, keine materielle Aenderung» war zu pauschal.**
   Fuer Ziff. 3.7 traegt sie (die Bemessungsgroesse steht redundant im Haupttext). Fuer **Ziff. 3.5.2
   Personenbelegung** traegt sie nicht: dort traegt **allein der Anhang** die Zahlen, der Haupttext sagt
   nur «von flaechenbezogenen Annahmen ist auszugehen». Ersetzt wurde «Verkaufsgeschaefte 0.5/0.35/0.25»
   durch «Fachmaerkte 0.1/0.1, Supermaerkte 0.38/0.15, hochfrequentierte Supermaerkte 0.45/0.21» plus neue
   Fussnote — mit direkter Wirkung auf Ausgangs- und Fluchtwegbreiten. Als offener P1-Punkt vermerkt.

## Methodischer Kernbefund: pdftotext ist bei Prinzipskizzen blind

Der 16-15-Refuter hat nicht nur Werte geprueft, sondern die **Methode** angegriffen — und damit eine
uebersehene Aenderung gefunden. Bei VKF-Richtlinien liegen Masse, Legenden und Begriffe teils als
Rastertext INNERHALB der Zeichnungen; ein Volltextvergleich sieht sie grundsaetzlich nicht. Die Aussage
«alle uebrigen Kennwerte identisch» war deshalb durch die verwendete Methode gar nicht gedeckt.

Die unabhaengige Gegenprobe (alle 55 eingebetteten Bilder beider Fassungen paarweise nach Seite,
Dimension und Bytegroesse) fand genau eine inhaltliche Zeichnungsaenderung: **S. 16**, wo die zwei
Bildlegenden von «Horizontaler Fluchtweg …» auf «Gesamtlaenge von Fluchtwegen …» umbenannt wurden — das
ist der «und 16»-Teil des ABSV-Beschlusses, den die Aenderungsliste nennt und der bisher fehlte. Die
zuvor angenommene «vertauschte Bildunterschrift» existiert nicht: es wurde durchgaengig umbenannt, und
beide Zeichnungen stehen in **beiden** Fassungen unter der Ueberschrift zu Ziff. 2.4.4.

**Als Pflicht verankert** in `training/PROGRAMM.md`: `pdfimages -list` ueber beide Fassungen, Paarvergleich,
bei Abweichung Extraktion und Sichtkontrolle.

## Geschlossene Altlasten (11 Punkte in QUESTIONS.md)

- Beherbergungs-Kategorien [a]/[b]/[c] definiert (war «kritisch fuer Healthcare»).
- «Betreutes Wohnen»-Negativaussage widerlegt und durch eine Fundstelle ersetzt.
- P1 BRL 16-15 Fassung 01.12.2022 gelesen, Ziff.-3.7-Teilfrage entschieden.
- SIA 385/1: franzoesische Variante geprueft — **negativ**, Nummern-Wiederverwendung (2000 = Schwimmbad,
  2011 = Trinkwarmwasser; Schwimmbad-Materie ging in 385/9 auf). Der «billigste Lueckenschluss» ist versperrt.
- SIA 112: OCR-Verdacht ausgeraeumt — die Fehlzuordnung war ein Destillat-Fehler, kein Scanfehler
  (Volltext-OCR aller 26 Seiten: SIA 112 ordnet nirgends eine Ordnungsnummer einer Fachrichtung zu).
- VKF-Merkblatt 2001-15 Solaranlagen: Fassungsfrage entschieden, soweit ohne Beschaffung moeglich
  (PL-02 und PL-03 byte-identisch, MD5 `56fb4bab…`; keine 2022er im Bestand; belegt RF4(cr), Ziff. 3.2.3).
- SIA `/1`-Ergaenzungsnormen: Bestand geprueft — 266/1 deutsch vorhanden und destilliert, die uebrigen
  nur franzoesisch, 260/1 gar nicht.
- Strukturhinweis «Fassungspflege ist der blinde Fleck»: bestaetigt und mit zwei konkreten Faellen belegt.
- Zwei **Stale-Befunde** korrigiert, die kuenftige Laeufe zu Doppelarbeit verleitet haetten: «SIA 118:1991
  noch nicht destilliert» (existiert seit 260712, `established`) und «Merkblatt-Serie SIA 2001-2027 noch
  nicht destilliert» (destilliert in Run 16).

## Neu offen (Uebergabe an den naechsten Lauf)

1. **Retro-Verifikation der fuenf heutigen Artefakte — das ist der naechste Lauf**, bevor irgendeine neue
   Quelle angefasst wird: `sia-266-1-2003.md` (nach Korrektur), `sia-410-1986.md`,
   `wiki/vkf-beherbergungskategorien.md` (nach Korrektur) und die Fassungs-Deltas 2017 in
   `vkf-brl-13-15-baustoffe-bauteile.md` und `vkf-brl-verwendung-baustoffe.md`.
2. **P1: BRL 16-15 Ziff. 3.5.2 Personenbelegung** vollstaendig nachfuehren (materielle Kennwert-Aenderung).
3. **BRL 16-15 S. 16** (umbenannte Bildlegenden, ABSV 22.03.2017) nachtragen; die Diagnose «vertauschte
   Bildunterschrift» korrigieren.
4. **Entscheid noetig: PL-03 ins Inventar aufnehmen** (mit Fassungs-Spalte) oder als getrennte
   Brandschutz-Ablage fuehren und im Skill `normen` einen Pflicht-Querblick verankern.
5. **Bring-Schulden unveraendert** (nur ueber SIA-Abo/Kauf schliessbar, kein Loop-Fall): Volltext
   SIA 380/1:2016, Volltext SIA 385/1:2011, SIA 118:2013, SIA 2048, SIA 242, SN EN 520, SIA 410/1
   (Farbcode). Neu dazu: Ausgabefrage SIA 266/1 (vermutlich 2015) und Aktualitaet SIA 410 nach 1993.
6. **Aus der KB `baurecht` (angemeldet 25.07.2026, heute geprueft):** SIA 491 (Lichtemissionen) und
   SN EN 12193 (Sportstaettenbeleuchtung) sind **nicht im Bestand** — Bestandspruefung erledigt, damit
   Beschaffungs-Bring-Schulden. SN 640 052 und SN 641 400 sind VSS und gehoeren dem Mac Mini
   (Stations-Split), hier nicht angefasst.
7. **Cross-Contamination erneut (Rule 260724):** der Selfcommit `3fe6585b` traegt die Meldung
   «twin-mail-training: Batch 61», enthaelt aber alle heutigen Normen-Dateien plus Dateien der KBs
   `energie` und `twin`. Kein Datenverlust, aber die Historie ordnet fremde Arbeit dem falschen Loop zu.

## Empfehlung an Raphael

**Die Endbedingung ist NICHT erreicht — anders als in den Runs 15-21 gemeldet.** Ich empfehle, den Task
NICHT zu pausieren, aber sein Ziel zu verschieben:

1. **Weiterlaufen lassen, mit geaendertem Auftrag.** Es gibt keine neuen Dateien zu destillieren, aber
   einen bezifferbaren Rueckstand: die fuenf unverifizierten Artefakte von heute, zwei offene P1-Punkte
   an der BRL 16-15 und rund 40 weitere Punkte in `QUESTIONS.md`. Der Loop sollte diesen Rueckstand
   abarbeiten, statt Datei-Zaehlungen zu wiederholen. Ein reiner Datei-Trigger haette den heutigen Lauf
   verhindert — und damit zwei undestillierte Normen und zwei ueberholte Brandschutz-Destillate stehen
   gelassen.
2. **Entscheid PL-03** (Punkt 4 oben) — das ist die einzige strukturelle Frage, die ich nicht selbst
   entscheiden kann und die bestimmt, ob solche Fassungsluecken kuenftig auffallen.
3. **Beschaffungsentscheid** zu den Bring-Schulden, priorisiert: SIA 380/1:2016 (P1, blockiert den Agenten
   `energie-berater`) und SIA 118:2013 (Werkvertraege).
4. **VOLLGAS-Passus im Auftragstext**: er verweist auf die Rules 260712b/260712c. Diese wurden am 14.07.
   gedrosselt und am 25.07. wieder aufgehoben (Rule 260725) — der Text passt derzeit zur Lage, sollte aber
   bei der naechsten Takt-Aenderung mitgezogen werden, damit er nicht wieder eine widerrufene Vorgabe hereinzieht.

## Register-Nachfuehrung

- `training/norm-inventar.md`: Kopfnotiz Run 22 (Messfehler-Kette dokumentiert); zwei Zeilen von
  «Sprachvariante» auf `[x] 260725` korrigiert (SIA 266/1, SIA 410); Run-21-Notiz als ueberholt markiert.
- `destillate/INDEX.md`: `sia-266-1-2003.md` und `sia-410-1986.md` neu registriert, je mit Bestandsfalle.
- `wiki/REGISTER.md`: **SIA 410 neu aufgenommen** (hatte keinen Eintrag); SIA 266/1 und SIA 385/1 um die
  Fallen-Dokumentation ergaenzt; VKF-BRL 13-15 **neu** und 14-15/16-15 auf den geltenden Fassungsstand
  gebracht.
- `wiki/QUESTIONS.md`: Run-22-Sektion am Kopf (11 Schliessungen, 9 neue Punkte); 8 Alt-Eintraege einzeln
  abgehakt bzw. auf `[~]` gesetzt.
- `training/PROGRAMM.md`: neuer Abschnitt «Methodik-Pflichten» (zwei Ablagen, Sprachvariante pruefen,
  Fassungsstand vor Werteabgleich, Bildvergleich-Pflicht) und Praezisierung der Endbedingung.
- `CHANGELOG.md`: Eintrag zuoberst.

## Modell- und Kostendisziplin

Modell-Politik nach Rule 260719 eingehalten: die zehn mechanischen Stufen (Quellen lesen, destillieren,
Korrekturen einarbeiten, Dateien identifizieren) liefen auf Sonnet-Subagenten; die drei
Verifikations-/Richter-Stufen und alle Register-/Statusentscheide liefen auf dem Hauptmodell. Kein Agent
hat den Status eines Artefakts selbst gehoben. 13 Agenten insgesamt.
