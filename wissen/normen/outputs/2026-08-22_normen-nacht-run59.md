# Normen-Training Run 59 (MacBook Pro, 22.08.2026) — die Fassungs-Deltas, und eine Neufassung, die sich als Korrektur ausgibt

**Kurzfassung.**

> Run 58 hat festgestellt, **dass** 23 VKF-Destillate auf einer ueberholten Fassung beruhen, und
> daraus den Vorrang-Auftrag **N58-1** formuliert: die Deltas destillieren. Dieser Lauf hat ihn
> fuer die vier dort genannten Vorrang-Publikationen erledigt und **104-15** vorgezogen —
> **fuenf von 23**.
>
> **Der schwerste Befund betrifft die Aenderungsliste selbst.** Die Brandschutzerlaeuterung
> **108-15 (Brandfallsteuerungen)** ist zwischen 2015 und 2020 **vollstaendig neu redigiert**
> worden; ihr Titelblatt weist als Aenderung aber **nur den Schritt 2020 → 2022** aus, zwei
> Absaetze einer Ziffer. Wer der Liste traut, haelt das Dokument fuer seine Hausfassung mit einer
> kleinen Korrektur. **Eine Aenderungsliste sagt, was seit der letzten Fassung geaendert wurde,
> nicht, was seit der Fassung geaendert wurde, die man selbst hat.**
>
> Materiell am folgenreichsten fuer die Projektarbeit: die **Pruefintervalle der integralen Tests**
> sind kodifiziert (2 / 4 / 6 Jahre nach Risikogruppe) statt Behoerdenermessen; der
> **Brandschutzkonzept-Bericht** ist erst ab **QSS 4** erforderlich statt ab QSS 3; und
> **«Ueberhohe Raeume»** haben ihr Flaechenkriterium von 4'800 m² verloren.

## 1. Ausgangslage

Gate `lauf-gate.sh` rc=0, NAS gemountet, kein konkurrierender Lauf (`ps`). Zugriff auf
`PL - 03 Brandschutz/` direkt gelesen — kein TCC-Fall, M365-Fallback nicht noetig. Inventar
weiterhin ohne destillierbare offene Position; der Lauf arbeitet nach PROGRAMM Ziff. 6 auf der
Vertiefungsstufe und folgt dabei der **ausdruecklichen Uebergabe** aus Run 58 Ziff. 9.1.
Stationssplit eingehalten: nur VKF, kein DIN/VSS/RAL.

Fuenf Fassungspaare beschafft und geoeffnet. Alle fuenf MD5 der neuen Fassungen stimmen mit den in
Run 58 protokollierten ueberein — die Portaldateien haben sich in zwei Tagen nicht geaendert, die
Matrix ist reproduzierbar.

| Publikation | Hausbestand | geltend | Aenderungsliste vorhanden? |
|---|---|---|---|
| BRL 10-15 Begriffe und Definitionen | 01.01.2015, 47 S. | **01.01.2019**, 49 S. | ja, elf Positionen |
| BRL 11-15 Qualitaetssicherung | 01.01.2015, 29 S. | **01.01.2019**, 28 S. | ja, elf Positionen |
| BSE 108-15 Betriebsbereitschaft BFS | 01.01.2015, 29 S. | **01.01.2020, Stand 01.08.2022**, 29 S. | ja, **aber nur fuer 2020 → 2022** |
| BSE 104-15 Spaenefeuerungen | 01.01.2015, 17 S. | **01.12.2022**, 17 S. | **nein** |
| Verz. 40-15 Weitere Bestimmungen | 01.01.2015, 22 S. | **11.06.2025**, 24 S. | **nein** |

## 2. Arbeitsteilung und was der Hauptprozess selbst geprueft hat

Vier Destillier-Agenten (Sonnet) fuer 11-15, 40-15, 104-15 und 108-15; das Grundlagenglossar 10-15
hat der Hauptprozess selbst bearbeitet. Nach Rueckkehr der Agenten hat der Hauptprozess die
folgenschweren und alle als Quellendefekt gemeldeten Befunde **am Original nachgelesen**
(Methodik-Pflicht 5):

| geprueft | Ergebnis |
|---|---|
| 104-15 Ziff. 5.5 Abs. 2, 45-m²-Schwelle und mechanisches Austragungssystem | **bestaetigt**, woertlich |
| 104-15 Ziff. 5.2 / 5.4, RF1 → RF3 (cr) | **bestaetigt**, woertlich |
| 104-15 Ziff. 5.5, Wegfall der Massangaben und des Bullets «ereignisbezogene konstruktive Massnahmen» | **bestaetigt** |
| 108-15 Ziff. 7.4, Risikogruppen 2 / 4 / 6 Jahre | **bestaetigt**, woertlich |
| 108-15, alte Regel «Intervall … durch die Brandschutzbehoerde festzulegen» | **bestaetigt**, woertlich |
| 11-15, QSS-Tabelle «Brandschutzkonzept» | **bestaetigt und praezisiert** — beide Fassungen selbst gerendert; der Rohbefund uebersah die Umbenennung der Zeile in «Brandschutzkonzept **(Bericht)**» und den Wechsel bei QSS 1 von *leer* auf ○ |
| 40-15, dreifach duplizierter SUVA-Eintrag in 3.7/3.8/3.9 der Fassung 2015 | **bestaetigt**, woertlich |
| 40-15, Wasserzeichen «in Ueberarbeitung» auf dem Hausbestand | **bestaetigt am Rendering — nachdem der Hauptprozess es zunaechst faelschlich widerlegt hatte** (siehe Ziff. 5) |

## 3. Die fuenf gewichtigsten Sachbefunde

### Befund 1 — BSE 108-15: eine Neufassung, die sich als Korrektur ausgibt

Titelblatt: «01.01.2020 / 108-15de», darunter «Stand 01.08.2022». Aenderungsliste: **eine Zeile**,
Ziff. 5.3 Abs. 4 und 6, TKB-Beschluss 08.06.2022. Tatsaechlich ist der normative Hauptteil von
sieben auf fuenfzehn gedruckte Seiten gewachsen und der Anhang von achtzehn auf elf geschrumpft;
die alten, an einem Beispielgebaeude durchexerzierten Formulare (Zonenplaene, Matrix,
Abnahmedrehbuch, periodische Kontrolle, Eigenkontrolle, Legende) sind **entfallen**.

Neu geregelt: Fernzugriff (Ziff. 5.10), Rueckstellung (5.8), Gebaeudeautomation **nicht** als
Uebertragungsweg fuer die automatische Aktivierung (5.4 Abs. 2), Blackout-Test als Bestandteil des
integralen Tests (6.4.2), Rolle **Anlageverantwortlicher** mit sieben Pflichten (7.6),
**Bewilligungspflicht fuer Stilllegung und Rueckbau** (7.8), Dokumentation mit **15 statt 6**
Pflichtpositionen (7.5.2), Verankerung im **SIA-Phasenmodell** (6.1 bis 6.4). Durchgehend heisst
«Ansteuerung» neu «Aktivierung».

**Und die Pruefintervalle:** 2015 «ist durch die Brandschutzbehoerde festzulegen» — heute
Risikogruppe 1 mindestens alle **2 Jahre** (RWA mit Leistungsnachweis, RDA), Risikogruppe 2
mindestens alle **4 Jahre** (Beherbergungsbetriebe Typ [a]/[b], RWA ohne Leistungsnachweis),
Risikogruppe 3 mindestens alle **6 Jahre**. Fuer Bewirtschaftungs- und Wartungsvertraege ist das
keine Verhandlungsgroesse mehr.

### Befund 2 — BRL 11-15: die Uebereinstimmungserklaerung hat den Erklaerenden gewechselt

Ziff. 4.1.1 lit. e (Unterschrift der Eigentuemerschaft) ist **ersatzlos gestrichen**. Die Erklaerung
gibt neu allein der **QS-Verantwortliche Brandschutz** ab — und zwar nur noch ueber die ihm durch
die Brandschutzvorschriften auferlegten **Qualitaetssicherungsmassnahmen**, nicht mehr ueber die
vollstaendige und maengelfreie Umsetzung **aller** Massnahmen. Die gestufte Kaskade
Eigentuemerschaft → QS-Verantwortlicher → Fachplaner → Errichter samt Organigramm ist aus dem
Anhang verschwunden.

**Zwei gegenlaeufige Bewegungen, die man nicht verwechseln darf:** persoenlich steht der
QS-Verantwortliche jetzt allein, sachlich ist sein Gegenstand enger. Der Anhang sagt ausdruecklich,
eine Aussage ueber Taetigkeiten Dritter lasse sich **nur so weit** ableiten, als deren Planung,
Begleitung, Ueberwachung oder Kontrolle in seinem Aufgabenbereich lag. Wer die Rolle uebernimmt,
sollte den Auftrag entlang genau dieser Grenze fassen.

Dazu die Tabellenaenderung: **Brandschutzkonzept (Bericht)** ist neu erst ab **QSS 4**
erforderlich, bei QSS 1 bis 3 empfehlenswert; 2015 war es ab QSS 3 erforderlich. Unveraendert
bleibt, dass ein Brandschutzkonzept unter Anwendung von Nachweisverfahren in QSS 1 und 2
unzulaessig und ab QSS 3 zulaessig ist. Und Fussnote [7] zu den Flucht- und Rettungswegeplaenen
wechselt vom Automatismus («erforderlich bei Beherbergungsbetrieben») zum Behoerdenentscheid
(«auf Verlangen der Brandschutzbehoerde, z. B. Beherbergungsbetriebe»).

### Befund 3 — BRL 10-15: sechs neue Begriffe, und zwei geaenderte Messregeln

**«Ueberhohe Raeume»** (S. 34) verlangt neu **nur** eine Raumhoehe > 6.0 m; das
Flaechenkriterium **> 4'800 m²** des Vorgaengerbegriffs «Grossflaechige, ueberhohe Raeume» ist
**entfallen**. Der Begriff erfasst damit ein Vielfaches an Raeumen — und er ist alphabetisch von
**G** nach **Ü** gewandert, was den Wegfall zusaetzlich unsichtbar macht.

**«Gesamthoehe»** (S. 23): bei Flachdaechern ist der hoechste Punkt nicht mehr der **Dachrand**,
sondern die **Dachflaeche** bzw. der Dachflaechenbereich ueber dem **tiefstgelegenen** Teil des
massgebenden Terrains. Am Hang und bei hoher Attika kann sich die Einstufung geringer / mittlerer
Hoehe / Hochhaus verschieben — und daran haengt praktisch das ganze Anforderungsprofil.

Neu definiert: **Raum** (vertikale Ausdehnung auf eine Ebene begrenzt; Galerien und untergeordnete
abgetrennte Bereiche sind **keine** eigenstaendigen Raeume), **Galerie** (Luftraum **> 50 %** der
Raumgrundflaeche), **Verkaufsraeume** (weder «grosse Personenbelegung» noch «Verkaufsgeschaefte»;
es gelten die Anforderungen an **Gewerbe und Industrie**), **Einliegerwohnung** (braucht **keinen**
direkten Zugang vom Freien), **Dachkonstruktionen**, **Ueberhohe Raeume**. Geaendert: **Bedachung**
(nur noch das Bekleidungs- und Abdichtungssystem, nicht mehr das ganze Dach), **Nutzungseinheit**
(ein einzelner Raum genuegt; «sollen frei zugaenglich» → «**muessen**»), **Kindertagesstaetten**
(neu ausdruecklich: es gelten die nutzungsbezogenen Anforderungen an **Schulen**),
**Uebereinstimmungserklaerung** (siehe Befund 2).

Der neue Anhang «zu Dachkonstruktionen» (S. 42) ordnet erstmals **jede Dachschicht einem Kapitel
der BRL 14-15 zu** — Schichten 1 bis 5 der Gebaeudehuelle (Ziff. 3), Schichten 6 bis 8 dem
Gebaeudeausbau (Ziff. 4). Welche Ziffer fuer welche Schicht gilt, ist damit ablesbar statt
Auslegungssache.

### Befund 4 — BSE 104-15: zwei Verschaerfungen, zwei Lockerungen

Verschaerft: **automatisches mechanisches Austragungssystem** fuer Silos, Verzicht nur bis **45 m²**
Grundflaeche; **EI-30-S-Klappe beim Gebaeudeeintritt** fuer Rueckluftkanaele vom Freien, mit einer
Schliessverzoegerung von hoechstens **120 Sekunden** bei nicht permanent laufendem Foerderventilator.
Gelockert: Baustoff freistehender Silos und offener Lagerbehaelter **RF1 → mindestens RF3 (cr)**;
die pauschale raumseitige RF1-Abdeckung eingebauter Silos und Filterraeume entfaellt und trifft nur
noch **brennbare** Bauteile. Die Entstauber-Bemessung ist ganz auf **SN EN 16770** umgestellt:
≤ 8'000 m³/h und/oder Rohluftbereich ≤ 3.5 m³, Typisierung A bis D — das
Anschlussdurchmesser-Kriterium ist weg.

### Befund 5 — Verz. 40-15: die Ausgabejahre sind verschwunden

Der praktisch folgenreichste Punkt ist keine einzelne Zeile, sondern eine Konvention: die Fassung
2025 nennt bei SN-, SN-EN- und DIN-Referenzen **kein Ausgabejahr mehr**, dafuer erstmals die
parallele SIA-Nummer. Wer bisher «SN 505 260, Ausgabe 2003-01» aus diesem Verzeichnis zitierte,
muss die gueltige Ausgabe kuenftig selbst verifizieren — **das Verzeichnis liefert sie nicht mehr**.
Inhaltlich neu: die **Eurocode-Serie zum Brandfall** (neun Positionen), ein ganz neuer
**Abschnitt 2.18** mit der Normen- und Literaturbasis fuer ingenieurmaessige Nachweisverfahren
(die vorher schlicht fehlte), die Merkblaetter **2001-15**, **2008-15** und **2011-15**, die
Kategorie **3.10 «Zivil genutzte Schutzbauten»**. Direkt zu uebernehmen: Aufzugsverordnung neu
**SR 930.112**, Druckgeraeteverordnung neu **SR 930.114**, Aufzugsnormen **SN EN 81-20 ff.** statt
81-1/-2.

## 4. Wo nur das Rendering den Befund trug (Methodik-Pflicht 8)

Zwei Faelle in einem Lauf, beide mit Ausschreibungswirkung:

1. **104-15, Anhang-Skizze S. 14.** Der Fliesstext der Ziff. 5.5 hat die Masse **1.2 × 2.0 m**
   (Handentleer-Tuere) und **0.8 × 0.8 m** (Stocheroeffnung) gestrichen. **In der Skizze stehen sie
   unveraendert weiter.** Ein reiner Text-Diff haette sie als entfallen gemeldet; sie gelten
   materiell fort. Wer Ziff. 5.5 allein liest, plant seit 2022 ohne Mass.
2. **10-15, Anhang S. 40.** Der Textlayer beider Fassungen ist **zeichenidentisch**, obwohl die
   Aenderungsliste diese Seite ausdruecklich nennt. Die Aenderung liegt als Rastertext **in der
   Zeichnung**: die Bildunterschrift wechselt von «Verwendung **brennbarer** Baustoffe» auf
   «Verwendung **von** Baustoffen» — der geaenderte Titel der BRL 14-15.

## 5. Der Werkzeug-Befund gegen den eigenen Prozess

Ein Agent meldete, der Hausbestand `40-15:2015` trage ein diagonales Wasserzeichen **«in
Ueberarbeitung»**. Das ist genau die Klasse Befund, die Methodik-Pflicht 5 selbst nachpruefen
laesst — eine Aussage ueber eine defekte oder nicht finale Quelldatei. Der Hauptprozess hat sie
geprueft und **zunaechst falsch widerlegt**:

| Pruefung | Ergebnis |
|---|---|
| `grep -ic "überarbeitung"` im Textlayer | **0 Treffer** |
| `pdfimages -list -f 1 -l 3` | **ein einziges Bildobjekt** (639 × 135 px, das VKF-Logo) |
| **110-dpi-Rendering, angesehen** | **Wasserzeichen deutlich sichtbar, diagonal ueber die ganze Seite** |

**Zwei unabhaengige Werkzeugpruefungen lieferten negativ, was im Bild sofort steht.** Der Grund ist
sachlich: ein Wasserzeichen dieser Art ist ein Grafikobjekt, kein Rasterbild und kein Textfluss —
`pdftotext` gibt es nicht aus, `pdfimages` listet es nicht. **Wer eine Quelle auf Entwurfsmarker
prueft, muss rendern.** Das ist die Familie von Rule `auto-verbesserungen` 260730b (ein leeres
Suchergebnis ist zuerst eine Aussage ueber das Werkzeug) und `wege-und-vollmachten` Ziff. 5 — hier
zum ersten Mal in dieser KB **gegen den Hauptprozess selbst** belegt. Festgehalten als N59-2.

Die praktische Folge ist real: das Bestands-Destillat `vkf-verz-40-15-weitere-bestimmungen.md`
beruht auf einem als Entwurf markierten Exemplar. Sie ist nachrangig, weil die geltende Fassung
inzwischen destilliert ist, aber sie betrifft die Belegqualitaet rueckwirkend.

Der zweite Quellenbefund derselben Datei ist bestaetigt und unstrittig: die Abschnitte **3.6, 3.7,
3.8 und 3.9** der Fassung 2015 tragen **alle vier** denselben Eintrag «Informationsschrift
Nr. 66050, Gruenschnitzelsilos der SUVA» — sachlich passend nur zu 3.6. Ein Kopierfehler ueber vier
Abschnitte, in der Fassung 2025 bereinigt.

## 6. Nachgefuehrt

- **5 neue Delta-Destillate** in `destillate/` (alle `status: speculative`)
- **5 Bestands-Destillate** inline korrigiert (Methodik-Pflicht 9): Warnkasten auf «Delta erledigt»,
  Delta-Link in `links:`, und an **14 materiell betroffenen Stellen** ein Inline-Marker mit Verweis
- `destillate/INDEX.md` · `wiki/REGISTER.md` (neuer Abschnitt + Chronikzeile) ·
  `training/n58-vkf-fassungsmatrix-260820.md` (Befundwert «✗ → Δ», Korrektur 108-15) ·
  `training/norm-inventar.md` · `wiki/QUESTIONS.md` · `CHANGELOG.md`
- **Ausserhalb der KB:** `skills/brandschutz/SKILL.md` — Fassungs-Delta-Block mit den drei
  Punkten, die diesen Skill unmittelbar beruehren (Gesamthoehe am Flachdach, QSS-Tabelle und
  Uebereinstimmungserklaerung, «Ueberhohe Raeume» ohne Flaechenkriterium) plus den fuenf neuen
  Begriffen mit Planungswirkung

**Diff gemessen** (Rule 260811), nativ per `ssh` auf der Synology, nie `git` ueber SMB: die
Loeschungen sind exakt die von mir ersetzten Zeilen (Warnkasten-Zeile und `links:`-Zeile je Datei,
dazu die Zeilen mit Inline-Marker). **Kein fremder Inhalt entfernt.** Sicherung aller fuenf
Bestands-Destillate im Scratchpad vor dem ersten Schreibvorgang; jede Ersetzung ankerbasiert mit
Eindeutigkeitspruefung (`assert count == 1`), kein globales Suchen-und-Ersetzen.

## 7. Pruefstand — welche Methode auf welchem Teil lief

| Publikation | Abdeckungsrichtung | Refuter-Richtung | ungeprueft geblieben |
|---|---|---|---|
| **10-15** | **vollstaendig** (Wort-Diff ueber den ganzen Korpus + `comm`-Abgleich beider Begriffslisten; ausser den elf angekuendigten und drei redaktionellen Punkten keine Abweichung) | gelaufen auf allen elf | Anhang-Seiten 38, 39, 43-47, 49 **nicht gerendert** |
| **11-15** | gelaufen (Wort-Diff) | gelaufen | Organigramme S. 20/23/26/27/28 und «Besondere Leistungen» S. 22/24/28 **nicht gerendert**; Zwischenfassung 2016 lag nicht vor |
| **108-15** | gelaufen (Gliederungs- und Kapitelvergleich) | gelaufen | Anhang-Beispieldiagramme «zu Ziff. 5.1» **nicht gerendert**; Einzelsatzebene nur stichprobenweise; Teilschritt 2020 → 2022 nicht isolierbar |
| **104-15** | gelaufen | gelaufen | Bedeutung des Zusatzes **«(cr)»** bei RF3 **nicht** in der BRL 13-15 nachgeschlagen (N59-1); SN EN 16770 lag nicht vor |
| **40-15** | teilweise | teilweise | **Kap. 2.17 «Gefaehrliche Stoffe» nur textuell**, entgegen Methodik-Pflicht 8 — der am staerksten umgebaute Abschnitt (N59-3); ebenso 2.7-2.12, 2.15/2.16, 2.18/2.19, 3.1-3.5 |

**Kein Destillat auf `established` gehoben.** Nach Methodik-Pflicht 13 ist das erst zulaessig, wenn
beide Richtungen auf **allen** Teilen gelaufen sind; die Tabelle oben zeigt, dass das bei keiner
der fuenf Publikationen der Fall ist. Alle fuenf stehen auf `speculative`, keine hat eine
unabhaengige Refuter-Runde durchlaufen.

## 8. Offen — Uebergabe

1. **N58-1 (weiterhin Vorrang): 18 der 23 Deltas sind offen**, ganz ueberwiegend die Fassung
   01.01.2017 — 17-15, 18-15, 20-15, 21-15, 23-15, 24-15, 25-15, 100-15, 101-15, 102-15, 105-15,
   106-15, 107-15, 1000-15, 1002-15. Alle Quellen frei zugaenglich, kein Beschaffungsaufwand.
   Weil sie **denselben Fassungsstand** teilen, lohnt hier ein Sammellauf gegen die
   Aenderungs-Uebersicht `vkf-brl-aenderungen-2017.md`, die bereits in der KB liegt — sie koennte
   einen Teil der Arbeit schon getan haben, was **vor** dem naechsten Lauf zu pruefen ist
   (Methodik-Pflicht 10).
2. **N59-1:** Zusatz **«(cr)»** bei RF3 in der BRL 13-15 aufloesen. Ohne ihn ist die
   104-15-Lockerung nicht anwendbar.
3. **N59-3:** Kap. 2.17 des Verzeichnisses 40-15 am Rendering nachlesen.
4. **N59-2 / N59-4:** Wasserzeichen-Herkunft; moegliche Zwischenausgaben von 40-15 und 108-15.
5. **N58-2 bis N58-4 unveraendert:** Rueckzug der 103-15 zweitbelegen; Widerspruch bei 27-15;
   48 der 83 Indexeintraege ungeprueft.
6. **Abnehmer nachziehen.** `skills/brandschutz` ist in diesem Lauf ergaenzt worden. **Nicht
   geprueft**, ob andere Skills oder KBs auf den ueberholten Fassungen aufbauen — namentlich
   `wissen/energie` (fuehrt eigene VKF-Destillate) und `wissen/planungsgrundlagen`.
7. **Vorschlag Methodik-Pflicht 3b** (aus Run 57, in Run 58 zweitbelegt) bleibt Raphael zur
   Freigabe vorgelegt, nicht selbst eingetragen. **Dieser Lauf liefert kein neues Argument dafuer
   und legt ihn deshalb nicht erneut vor** (PROGRAMM: nicht erneut vorlegen ohne neuen Beleg).
8. **Beschaffungsposten unveraendert:** SIA 380:2015 (N57-2), SIA 266/2:2012, SIA 242:2012,
   SIA 274:2010, SIA 181:2020, SIA 118/265:2018, sechs ABB; N53-3, N48-5, N48-7, N55-3, N55-4.

## 9. Was dieser Lauf NICHT geleistet hat

- **Keine unabhaengige Refuter-Runde** ueber die fuenf neuen Destillate. Sie sind vom Hauptprozess
  an den folgenschweren Stellen gegengelesen, aber nicht adversarial widerlegt.
- **Keine Abdeckungsrichtung ueber die Vollstaendigkeit der Bestands-Destillate.** Geprueft wurde,
  was sich zwischen den Fassungen geaendert hat — nicht, ob die Bestands-Destillate ihre eigene
  Fassung vollstaendig abbilden.
- **Der SIA-Sweep** nach dem Muster von Run 58 ist weiterhin nicht gefahren. Das REGISTER beziffert
  die SIA-Blindzone seit Run 37 mit 102 Zeilen ohne Datei im Haus (58 % der aktiven); die
  SIA-Produktdatenblaetter mit «gueltig ab / gueltig bis» sind kostenlos. Das bleibt der naechste
  grosse Schritt neben N58-1.
- **DIN, VSS, RAL** nicht angefasst — Stationssplit, die gehoeren dem Mac Mini.

## Belege

Alle fuenf geltenden Fassungen ueber
`https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-<NR>.pdf/content`
geladen (NR 2768, 2706, 3017, 157, 137), Abruf 22.08.2026. **Alle fuenf MD5 stimmen mit den in
Run 58 protokollierten ueberein.** Fassungsdaten **am gedruckten Titelblatt abgelesen**, nicht aus
Dateiname oder Portal-Titel abgeleitet. Alte Fassungen aus dem Hausbestand SharePoint
`PL - 03 Brandschutz/`, Titelblaetter ebenfalls abgelesen. Seitenversatz in allen fuenf Paaren
gemessen; er ist ueberall null, mit einer Ausnahme: **das Inhaltsverzeichnis der Fassung 108-15:2015
ist ab «Anhang 1» durchgehend um eine Seite zu hoch** (Redaktionsfehler der VKF im Original), was
den scheinbaren Widerspruch «Anhang 9 auf S. 30 bei 29 Seiten» aufloest.

Gegenpruefung vor jedem Befund gegen das **ganze** Destillat (Methodik-Pflicht 7) und gegen
REGISTER, INDEX und QUESTIONS (Methodik-Pflicht 10). Renderings mit publikationsspezifischen
Praefixen (`glossar1015-`, `qs1115-`, `bfs10815-`, `spaene10415-`, `wb4015-`), Methodik-Pflicht 5.
