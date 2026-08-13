# Wissens-Chef Run 31 — 13.08.2026, 23:11 bis 23:4x CEST

**Zuschnitt:** 5 Melder-Felder + 9 Refuter, in zwei getrennten Workflows (14 Agenten,
2,25 Mio Token). Delta seit Run 30 (02:10): **75 geaenderte Dateien** in `wissen/`.

**Ergebnis in einem Satz:** Ein Melder-Befund hat die Gegenpruefung ueberstanden und ist umgesetzt;
vier sind gefallen — und in dreien davon war der mitgelieferte Korrekturvorschlag **selbst falsch**.
Die drei Korrekturen mit LV-Wirkung fand nicht die Agentenflotte, sondern der Hauptprozess, beim
Nachfassen einer Uebergabe aus Run 30.

---

## 1 · Was seit Run 30 gewachsen ist

| KB | Lauf | Zuwachs |
|---|---|---|
| `normen` | Run 50 (01:4x–02:07) | 20 ABB-/SIA-Destillate am Original nachgeprueft, 79 Kernbefunde bestaetigt |
| `energie` | Run 129 | AHB-Ordner 14, 5 Destillate, erste Healthcare-Quelle der KB |
| `bauprodukte` | 2 Outputs | Duschwanne Nischeneinbau + Schuerze, erco-Lichtplanung |
| `claude-code`, `twin`, `grobkosten` | diverse | Methoden-Register, Fidelity-Lauf 2, Ruecktaktungs-Empfehlung |

75 Dateien liegen deutlich ueber der in Run 29 vorgeschlagenen Zuwachsschwelle von rund 40. Der
Lauf war damit auch nach der praezisierten Taktregel faellig.

---

## 2 · Die Felder und ihre Bilanz

| Feld | Melder | Refuter | Ergebnis |
|---|---|---|---|
| A `normen` → Abnehmer-Skills | 0 Befunde | — | sauber; die sechs Run-50-Korrekturen sind bei keinem Abnehmer haengengeblieben |
| B `energie` ↔ `normen` | 2 | 3 + 1 | 1 bestaetigt (SIA 386.111), 1 widerlegt (SIA 382/1) |
| C `energie` ↔ `planungsgrundlagen` | 2 | 2 + 1 | beide widerlegt |
| D `bauprodukte` ↔ `normen`/`energie` | 1 | 2 | widerlegt |
| E `grobkosten` ↔ `immobilienbewertung` ↔ `kostenschaetzung` | 1 | — | bereits bekannt (Ticket T-Regelgeschoss) |

**Feld A ist die wichtigste Null.** Run 30 hatte genau hier einen Befund mit Geldwirkung gefunden
(eine `normen`-Korrektur, die den Skill `ausschreibung` nicht erreichte). Der Melder hat die sechs
sachlichen Korrekturen aus Run 50 einzeln gegen `skills/`, `rules/`, `wissen/` und `references/`
gegriffen — keine alte Fassung ueberlebt. Er hat zusaetzlich die Run-50-Aussage zu den BKP-Codes
unabhaengig gegen die offizielle Liste geprueft und deckungsgleich befunden.

---

## 3 · Der eine bestaetigte Befund: eine Norm, die nur eine der beiden KBs kannte

**SIA 386.111:2022 (Gebaeudeautomation/BACS).** `energie` fuehrt seit Run 106 (25.07.2026) ein
`established`-Destillat mit der vollstaendigen amtlichen Ausgaben- und Gueltigkeitskette
(386.110:2007 · 386.110:2012 archiviert seit 30.11.2017 · 386.111:2017 archiviert seit 31.08.2022 ·
386.111:2022 gueltig ab 01.09.2022, Bezugsnorm SN EN ISO 52120-1:2021), belegt an shop.sia.ch. In
`normen` — der fuer Norm-Fundstellen fuehrenden KB — existierte dazu **nichts**: 0 Treffer fuer
«386» (ausser der Fremdfamilie DIN EN 386 Brettschichtholz), 0 fuer «BACS», 0 fuer «52120». Auch in
QUERBEZUEGE 0, es gab also nicht einmal eine offene Uebergabe.

Das ist der Klassenfall «Uebergabe verpufft im abgebenden KB» (Muster aus Run 8) — nur ohne den
Flag, der ihn sichtbar gemacht haette. Die Matrix sagt fuer diesen Fall ausdruecklich: *«meldet sie
eine Archivierung, ist sie in normen NACHZUZIEHEN (sonst verpufft die Uebergabe)»*.

**Der Refuter hat den Befund bestaetigt und den Vorschlag zugleich beschnitten.** Ein Eintrag in
`destillate/INDEX.md` oder gar ein normen-Destillat waere ein Regelverstoss gewesen: der Volltext
ist nicht im Bestand und nicht gelesen (CHF 144.–), und nach QUERBEZUEGE Z. 60 legt nur der
destillierende Lauf eine Destillatdatei an. Richtig ist ausschliesslich eine Registerzeile ohne
Inhaltsaussage — Praezedenz im selben Register: VA 105-01.

**Umgesetzt, dreiteilig:**
1. Registerzeile **SIA 386.111** in `normen/wiki/REGISTER.md` zwischen SIA 385/12 und SIA 387/4,
   mit ⚠-Sperre «keine Inhaltsaussage ableitbar», dem Bezeichner-Hinweis (aeltere Zitate
   «SIA 386.110» sind ueberholt) und dem Vorbehalt zu den EN-15232-Effizienzfaktoren.
2. **Gegenrichtung** im energie-Destillat: Querbezug-Block, der die Registerzeile nennt, den
   Primaerbeleg hier verankert und festhaelt, dass ein Fassungswechsel in **beiden** Dateien
   nachzuziehen ist.
3. Matrix-Zeile «Gebaeudeautomation/BACS» in QUERBEZUEGE, deckungsgleich zur SWKI-Zeile (Entscheid
   Raphael 31.07.2026). Damit ist die Zustaendigkeit geregelt, nicht nur der Einzelfall repariert.

---

## 4 · Drei Korrekturen, die der Hauptprozess selbst fand — alle BKP/Fundstelle

Ausgangspunkt war die aus Run 30 uebergebene, dort bewusst nicht angefasste Zeile.

**(1) `normen/destillate/INDEX.md` Z. 22 — Bedeutungsumkehr, korrigiert.** Die Zeile trug
weiterhin «Arbeitsgerueste fuer Beton NICHT inbegriffen (anders als Mauerwerk-ABB)», obwohl
Run 49/50 diese Aussage im Destillat und im Wiki-Artikel als falsch nachgewiesen hatten. Run 50 hat
die Zeile sogar angefasst — den Status-Vermerk ergaenzt, die Sachspalte aber stehen gelassen.
**Die Statusspalte wurde gepflegt, die Sachspalte nicht.** Neu mit Ziff. 8.4.2.2/8.4.2.3 und der
richtiggestellten Mauerwerk-Parallele.

**(2) `normen/destillate/sia-118-262-2004.md` Z. 161 — drei falsche BKP-Codes, neu.** Die
Abnehmer-Zeile zum Skill `ausschreibung` nannte «BKP 241/242 Baumeisterarbeiten Beton/Ortbeton» und
«BKP 291 Statik/Bauingenieur». Am systematischen Teil der BKP-2017-Liste nachgeschlagen:
Hauptgruppe 24 (HLK-Anlagen, Gebaeudeautomation) fuehrt 240 · 242 · 244 · 245 — **kein 241, kein
243**, und **242 ist «Heizungsanlagen»**. **291 ist der Architekt**, der Bauingenieur ist **292**.

Bemerkenswert ist nicht der Fehler, sondern sein Muster: **Run 50 hat exakt diese Fehlerfamilie
gefunden** und in `sia-118-267-2004.md` korrigiert, inklusive der Feststellung «BKP 241 und 243
existieren im BKP 2017 nicht». Das Schwester-Destillat, das denselben falschen Code trug, wurde
nicht mitgezogen. Korrigiert auf **BKP 211** (mit 211.5), **BKP 212** fuer die Betonfertigteile nach
Ziff. 8.6 und **BKP 292**, mit Herleitung und Verweis auf Rule `bkp-2017-referenz`.

**(3) Mechanischer Sweep als Gegenprobe.** Alle «BKP nnn»-Nennungen in `wissen/`, `skills/` und
`rules/` gegen die 846 gueltigen Codes der offiziellen Liste gedifft. Die uebrigen Abweichungen
liegen in `raw/`-Bestaenden und Laufberichten — Zeitdokumente, nicht angefasst. Der einzige lebende
Treffer: `skills/ausschreibung/projekte/2620-albertstrasse-7.md`, vier bereits versandte Lose mit
«BKP»-Praefix und **ungueltigen Nummern**:

| Eintrag | Befund am Original |
|---|---|
| BKP 272.5 Briefkastenanlage | BKP 272 Metallbauarbeiten hat nur .0 bis .4 |
| BKP 275.0 Schliessanlage | BKP 275 Schliessanlagen ist ein Code **ohne** Unterpositionen |
| BKP 285.00 Innere Malerarbeiten | existiert nicht — und verkuerzt waere es irrefuehrend: **285.0 ist «Geruste»**, Innere Malerarbeiten sind **285.1** |
| BKP 250 Sanitaeranlagen | 250 ist die **Uebergangsposition**; Apparate sind 251 |
| BKP 281.5 Bodenbelag Kunststein | **gueltig**, unveraendert |

Das ist der Klassenfall aus der 271.10-Chronik (Ticket N43-1): buerointerne Los-Nummern, die mit
dem BKP-Praefix geschrieben werden und so in den naechsten LV-Titel wandern.

**Die Aktion war bewusst zurueckhaltend: keine einzige Nummer geaendert.** Sie stehen so in den
ausgegebenen LV; ein Umschreiben haette den Projektnachweis verfaelscht. Gesetzt wurde die von der
Rule vorgeschriebene Form — `LOS <Nr.>` statt `BKP <Nr.>`, je Zeile der Grund und, wo am Original
belegbar, der echte Code daneben. **Die Briefkastenanlage blieb offen**: die Liste fuehrt den
Begriff nicht woertlich, und Raten ist hier der Fehler, nicht die Luecke.

---

## 5 · Die vier widerlegten Meldungen — und warum das der eigentliche Befund ist

| Meldung | Runden | Urteil |
|---|---|---|
| SIA 382/1:2025 (73 %/70 % WRG) ohne normen-Vorbehalt | 3 | **WIDERLEGT** (3/3) |
| Abnahme Komfortlueftung ohne Verweis auf Private Kontrolle | 2 | **WIDERLEGT** (2/2) |
| Gebaeudeautomation ohne Verweis auf EN-135 | 1 | **WIDERLEGT** |
| SIA 181 ohne Ziffer/Ausgabe im bauprodukte-Output | 2 | **WIDERLEGT** (2/2) |

**SIA 382/1.** Der Melder las `komfortlueftung.md` Z. 19-20 und uebersah den Verweis vier Zeilen
weiter (Z. 22), dazu Z. 82, Z. 124 und das Frontmatter-Feld `sources`. Wichtiger ist der zweite
Punkt: der «fehlende normen-Vorbehalt» ist kein fachlicher Zweifel, sondern ein
KB-Synchronisationsvermerk, den `normen` **selbst aufgeloest hat** — REGISTER Z. 605 erklaert den
eigenen Stand 2014 fuer «ueberholt» und uebergibt die 2025er-Fuehrung an das energie-Destillat. Und
der Wert ist unabhaengig primaerquellennah gedeckt: MuKEn 2025, Anhang 6, Standardmassnahme 5,
`established` und MD5-verifiziert am amtlichen EnDK-Text. Haette man den Vorschlag umgesetzt, waere
ein gesicherter Grenzwert in einem bauherrengerichteten Artikel als unsicher markiert worden.

**Abnahme Komfortlueftung.** Die werkvertragliche Abnahmemessung (Luftmengenabgleich,
WRG-Wirkungsgrad, Dichtigkeit, Nachweis nach einem Betriebsjahr) und die oeffentlich-rechtliche
Private Kontrolle nach BBV I § 4 sind zwei verschiedene Dinge, nicht zwei Namen fuer dasselbe. Der
Vorschlag haette sie gleichgesetzt **und dabei EN-105 falsch bezeichnet** (es ist das Detailformular
des Projekt-Nachweises Lueftung, nicht das der Ausfuehrungskontrolle).

**EN-135.** Der deutlichste Fall. **EN-135 sind «Beheizte Freiluftbaeder».** Gebaeudeautomation ist
**EN-141**, gefuehrt sowohl unter Befugnis He als auch Kl. Der Melder hatte eine Nummer aus der
Aufzaehlung «EN-101, 103, 104, 120, 130, 133, 134, 135, 141» gegriffen und ihr das letzte Stichwort
der Zeile zugeordnet. Die «Korrektur» haette einen frischen Sachfehler in einen
`established`-Artikel geschrieben.

**SIA 181.** Die Stelle referiert eine Schmidlin-Montageanleitung; die Norm-Nennung ist die
Begruendung des Herstellers, keine eigene Norm-Behauptung des Hub, und es haengt keine Zahl daran.
Die Rule `normen-referenz` greift dort nicht.

**Das Muster, das bleibt:** In **drei von vier** widerlegten Faellen war nicht nur die Meldung
falsch, sondern der mitgelieferte Korrekturvorschlag selbst fehlerhaft — zweimal mit einer
erfundenen oder falsch zugeordneten Formularnummer. Ein Melder-Lauf ohne Refuter haette diese KBs
**verschlechtert**. Die Refuter-Stufe ist damit nicht Qualitaetskosmetik, sondern die eigentliche
Arbeit; die 9 Refuter kosteten 1,35 Mio Token gegen 0,90 Mio fuer die 5 Melder, und das Geld war
auf der Refuter-Seite besser angelegt.

Bemerkenswert auch: der **einzige** bestaetigte Befund wurde vom Refuter zugleich **teilweise
zurueckgeschnitten**. Ein Refuter, der nur Ja oder Nein sagt, waere hier zu grob gewesen.

---

## 6 · Unveraendert offen

1. **Ticket T-Regelgeschoss** (HNF/GF **0.70 vs. 0.75**) — `flaechendefinitionen-sia:84` fuehrt die
   belegten 0.75, `realwert-sachwert:219` die 0.70 aus dem Hub-Entscheid vom 12.07.2026.
   **Fachentscheid Raphael**, seit Run 15 offen, in Run 25/26 zweimal praezisiert. Bis zum Entscheid
   darf keine der beiden Stellen still umgestellt werden; dieser Lauf hat nichts geaendert.
2. **BKP-Code Briefkastenanlage (2620 Albertstrasse 7)** — die BKP-2017-Liste fuehrt den Begriff
   nicht woertlich. Bewusst offen gelassen statt geraten; gehoert beim naechsten Anlass am Original
   bestimmt.
3. **Ticket N43-1** (271.10-Chronik) — der Sweep dieses Laufs hat den lebenden Rest auf **eine**
   Datei eingegrenzt und die dort behandelt. Ob weitere Los-Nummern in Projektdateien mit
   BKP-Praefix stehen, die der Sweep nicht sah (etwa in SharePoint-LV), bleibt unbeantwortet.
4. **Uebergabe an `normen` aus Run 30, Punkt 2** — ob die Wendung «umgekehrte Systematik» im
   Wiki-Artikel `abb-reihe-verguetungs-und-ausmassgrenzen.md` Z. 63 praezise genug ist. Der Absatz
   Z. 80-89 erklaert es korrekt; die Wendung selbst schiebt den Leser weiter Richtung
   «gegenlaeufig». Kein Sachfehler, deshalb nicht selbst angefasst.
5. **Aeltere Bring-Schulden** unveraendert: lokaler OneDrive-Spiegel «IMMO - 02 UBSFS», Beschaffung
   SIA 380/2:2022 (N29-1), Verbleib von `normen/destillate/links.md`, D10, Spektrumskosten-Band,
   `MAX_AUTO_BYTES`.

---

## 7 · Zur Taktfrage

Run 29 empfahl zuwachsgesteuert (Schwelle rund 40 Dateien), Run 30 stellte den Kollisions-Ausloeser
daneben. Dieser Lauf stuetzt beides: der Zuwachs betrug 75 Dateien, der Lauf war klar faellig, und
der Ertrag lag **nicht** dort, wo der Zuwachs am groessten war.

Die drei Korrekturen mit LV-Wirkung kamen aus einer **uneingeloesten Uebergabe** — einer Zeile, die
ein frueherer Lauf ausdruecklich als offen markiert hatte. Die Agentenflotte hat sie nicht gefunden,
weil sie sie nicht suchte; der Hauptprozess fand sie in vier Minuten, weil er den Bericht des
Vorlaufs zuerst las.

**Vorschlag (Entscheid bleibt bei Raphael):** Vor dem Fan-out steht kuenftig ein fester,
mechanischer Schritt — **die offenen Uebergaben des letzten Laufs abarbeiten, bevor neue gesucht
werden.** Er kostet Minuten, braucht keinen Agenten, und er hat in diesem Lauf mehr eingebracht als
5 Melder mit 0,9 Mio Token. Eine Aufsichtsinstanz, die ihre eigenen offenen Punkte nicht abhakt,
erzeugt Register statt Wirkung.

---

## 8 · Kontrollen

- **Schreib-Kontrolle** (Rule `auto-verbesserungen` 260811): Zeilenzahl aller bearbeiteten Dateien
  gegen HEAD geprueft. `normen/destillate/INDEX.md` 384 → 384, `sia-118-262-2004.md` 172 → 172,
  `2620-albertstrasse-7.md` 40 → 53 (additiv). **Keine Datei hat Bestand verloren.**
- **`raw/` unberuehrt**, in allen KBs.
- **Kein Eingriff in fremde Wiki-Struktur** — nur Verlinkung, Registerzeile und Korrektur belegter
  Fehler.
- Arbeitsdatum gemessen (`date`), nicht aus einem Dateiinhalt uebernommen (Rule 260730b).

---

## 9 · Meldung

**Keine eigene Mail** (Rule 260803, Loop still by default). Fuer das Tagesbriefing des `hub-chef`:
**kein terminkritischer Punkt, aber ein operativer Hinweis mit LV-Bezug.**

Die Projektdatei `skills/ausschreibung/projekte/2620-albertstrasse-7.md` — die kanonische
Stammdatenquelle fuer neue Lose an der Albertstrasse 7 — fuehrte vier Los-Nummern mit
BKP-Praefix, die keine gueltigen BKP-2017-Codes sind. Bei «285.00 Innere Malerarbeiten» waere die
naheliegende Verkuerzung auf 285.0 in den LV-Titel «Geruste» gewandert. Die Datei ist bereinigt,
die Nummern selbst sind unveraendert. **Ein Schaden ist nicht eingetreten**: die vier Lose sind seit
Juni 2026 versandt, seither wurde an der Datei nicht gearbeitet.

Zweitens, zur Kenntnis und ohne Handlungsbedarf: `normen` Run 50 hat gestern eine BKP-Fehlerfamilie
korrekt gefunden und in einem Destillat behoben, im Schwester-Destillat aber nicht. Dieselbe Signatur
wie der Fall aus Run 30. **Eine KB heilt sich zuverlaessig dort, wo sie hinschaut — der blinde Fleck
liegt regelmaessig eine Datei weiter.**
