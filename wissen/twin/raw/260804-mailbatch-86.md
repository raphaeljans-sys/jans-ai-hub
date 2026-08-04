# Mailbatch 86 — Lücken-Sweep `rj@` 06.–13.03.2026

**Lauf:** twin-mail-training, 04.08.2026 · **Gewichtung:** authentisch (handgetippte Eigentexte)
**Fenster:** Sent Items rj@raphaeljans.ch, 2026-03-06 (nachmittags) bis 2026-03-13, order oldest.
**Umfang:** `totalResultCount` **17** Sent Items, vollständig gelistet; 8 Eigentexte destilliert.
Kontrollfenster 18.–31.03.2026 zusätzlich vollständig gelistet (**73** Sent Items) — abgedeckt.

## Zwei Methodik-Korrekturen (vor der Lektüre, beide festhaltenswert)

### 1. Die Fenster-Empfehlung aus Batch 85 war falsch

Batch 85 schrieb: «Batches 32/33 decken 04.–12.03. nur stichprobenartig ab, **ab 13.03. ist der
Bestand ungeprüft**». Das stimmt nicht. Das Batch-Register zeigt die sequenzielle Kette

| Batch | Fenster |
|---|---|
| 34 | 06.–12.03.2026 |
| 35 | 12.–17.03.2026 |
| 36 | 18.–24.03.2026 |
| 37 | 24.–27.03.2026 |
| 38 | 30.03.–03.04.2026 |

Zur Kontrolle wurde 18.–31.03. trotzdem vollständig gelistet: 73 Sent Items, 28./29.03. sind
Wochenende ohne Versand, keine Lücke. Die **echte** Dünnstelle liegt davor — die Batches 32–35
lasen im Fenster 28.02.–17.03. je nur «5 Volltexte bei 20 gesichteten», also rund ein Viertel.

### 2. Der Tages-Grep gegen das Wiki erzeugt Falsch-Lücken — die wichtigere Lehre

Der in Batch 84/85 eingeführte Tagesabgleich (pro Kalendertag in beiden Datumsformaten greppen)
meldete für den **20.03.2026 null Belege**. Tatsächlich liegt dort einer der wertvollsten Funde
des ganzen Korpus, vollständig destilliert:

> Claude-Cowork-**Entwurf** an das eigene Postfach, 20.03.2026 19:06 («Hinweis: Dies ist ein
> Entwurf, erstellt von Claude Cowork. Bitte vor dem Versand prüfen und nach Bedarf anpassen.»)
> → **Versand** an Sandro Mauchle, 19:21. Ein echtes **Korrektur-Delta** (SILBER).

Erfasst ist es in `wiki/stimme.md` 1555–1566, `wiki/haltung.md` 480–487 und
`wiki/arbeitsweise.md` 1104–1107 — jeweils zitiert als «Batch 36», **ohne Datumsangabe**. Genau
das macht es für einen Tages-Grep unsichtbar.

**Regel ab jetzt:** Der Abgleich läuft **Batch-Register zuerst** (Datumsbereiche der Batches aus
`_INGESTED.md`), der Tages-Grep ist nur die **zweite** Stufe innerhalb eines Fensters, das das
Register bereits als dünn ausweist. Ohne diese Korrektur wäre das Sandro-Delta in diesem Lauf ein
zweites Mal destilliert worden — mit dem doppelten Schaden, Arbeitszeit zu verbrennen und einen
Einzelbeleg wie zwei unabhängige Belege aussehen zu lassen.

Verwandt: die Warnung in `CLAUDE.md`, bei jedem Beleg **beide Datumsformate** zu greppen. Sie
reicht nicht — ein Marker kann überhaupt kein Datum tragen.

## Tages-Vorabgleich im gewählten Fenster

| Tag | Wiki-Belege | Sent Items | Befund |
|---|---|---|---|
| 06.03. (ab 12:00) | 1 | 2 | dünn |
| 07.03. | 4 | 1 | belegt (Steinmann Sie→Du, Batch 34) |
| 08.03. | 0 | 1 | **Lücke** |
| 09.03. | 0 | 4 | **Lücke** |
| 10.03. | 5 | 3 | belegt (Batch 34) |
| 11.03. | 0 | 3 | Rauschen (WordPress-Fwd, Terminannahme) |
| 12.03. | 2 | 3 | belegt (Batch 34/35) |
| 13.03. | 0 | 1 | **Lücke** |

## Destillat — 5 echte Lücken

1. **Zuständigkeitskette selbst schliessen** (06.03., Wartstrasse 8) → `arbeitsweise`, `fachsignatur`
   UGZ meldet 15:38 die Erfüllung der Schadstoff-Auflage und verweist auf die Kreisarchitektin;
   15:44 geht dieselbe Mail dorthin, ein Satz Eigentext, Bauherrin im cc; 15:45:01 dieselbe
   Weiterleitung allein an die Bauherrin mit «Zur Info». Gleiche Choreografie wie die drei
   Angebotsfreigaben in neun Sekunden (Batch 85), hier im Behördenverkehr.
2. **Vier-Zeilen-Antwort** (13.03., Bauherr-Partner, Du) → `arbeitsweise`
   Quittieren · abgrenzen, was jetzt schon geht · die nächste eigene Leistung an eine Vorleistung
   des anderen koppeln · datierte Selbstverpflichtung. Alles in vier Zeilen, ohne Rückfrageschleife.
3. **Bitte ans Amt als vorweggenommener Dank** (06.03.) → `stimme`
   Ganze Mail ein Satz, Indikativ Präsens, kein «bitte», kein Konjunktiv. Schwesterform
   «Gerne erwarte ich Ihr Feedback diesbezüglich» (08.03., sonntags 22:07 ans Fachamt).
4. **Behörden-Sie in drei Stufen** (06./08./09.03.) → `beziehungsregister`
   Alle drei Stadt-ZH-Kontakte tragen «Geschätzte/r», kein einziges «Sehr geehrte/r», auch nicht
   an die verfahrensentscheidende Stelle. Dazu «Grüezi Herr <Nachname>» an den Handwerker beim
   Wechsel Mail→Telefon. Neue Mappings: Elisabeth Müller (AfB, Kreisarchitektin Wartstrasse 8),
   Roberto Finocchietti (UGZ, Fachstelle KISPI) — beide warm-Sie.
5. **Erfüllte Auflage ≠ Baufreigabe** (06.03.) → `fachsignatur`
   Feststellendes Fachamt (UGZ, Gebäudeschadstoffe) und freigebende Stelle (Kreisarchitekt) sauber
   getrennt; Perimeter-Vorbehalt: Erweiterung des Umbauperimeters → Nachuntersuchung **vor** dem
   Eingriff, § 239 Abs. 1 und 2 PBG.

## Bestätigt ohne Neuwert

- **Muster-Füttern des Amtes** (Batch 33) — zweiter Beleg mit datierter Quelle: Anfrage nach der
  amtseigenen Plan-/Dokumentenliste **im Anzeigeverfahren** unter Beilage von
  `221223_Checkliste_Laternengasse_5.pdf`, einer amtlichen Checkliste aus einem Fremdprojekt von
  Ende 2022. Belegt, dass die Reziprozität nicht improvisiert ist.
- «_A)/_B)»-Typografie · Zwischenpläne aktiv als «ungültig» kennzeichnen · Service-Satz «Bei Fragen
  oder Unklarheiten stehe ich Ihnen jederzeit gerne zur Verfügung» (Batch 24) · Planfreeze-/
  Change-Request-Steuerung und «keine Wertung, sondern eine Feststellung» (Batch 32, im Zitatverlauf
  der 13.03.-Mail nochmals sichtbar).

## Echo-Prüfung: negativ

Claude-Ära-Fenster, deshalb doppelt geprüft. Alle acht Rahmen sind handgetippt — dichte Tippfehler
und Helvetismen: «Plan und Dokumentenlist», «stehe Ich Ihnen» (Gross-I im Satz), «wo ersichtlich
ist», «Die aktualisieren Pläne», «Geschätzer Peter», «eBaugesuche-Platform», «gartenmauer» klein,
«ein definitiver Entscheid» (Kasus). Keine En-dash-Bandbreiten (Tell aus Batch 27/28), keine
polierten Bullet-Blöcke, keine generischen Eröffnungs-/Schlussfloskeln.

## Mikro-Metrik (`stilmetrik.py`, 302 W über die 8 destillierten Eigentexte)

| Kennzahl | Wert | Einordnung |
|---|---|---|
| Satzlänge ø | **12.6 W** | unteres Drittel des Korpusbandes 11.9–14.3 (Kurzmail-/Behördenfenster) |
| Du-Gross-Quote | **1.0** | vollständig |
| Tausender-Apostroph | 0 | keine Beträge im Fenster |
| Ellipsen «…» | 0 | — |
| «%» | kam nicht vor | — |
| Anreden | «Geschätzte Frau» 2× · «Geschätzter Herr» 1× · «Hoi Stefan» 1× · «Guten Morgen Stefan» 1× · «Grüezi Herr» 1× | **fünf Formen bei acht Mails in acht Tagen** |
| Grüsse | «Freundliche Grüsse» 3× · «Lieber Gruss» 2× | Sie-lastiges Fenster |

## Ertrag und nächstes Fenster

5 Lücken bei 8 gelesenen Eigentexten — beste Quote seit Batch 84, weil die sequenziellen Batches
32–35 hier nur ein Viertel des Bestandes gelesen hatten. `haltung` und `denken` gehen zum zweiten
Mal in Folge leer aus; das Fenster enthält Behörden- und Abwicklungsverkehr, keine Wertentscheide.

**Nächstes Fenster:** `rj@` **Dezember 2025 + Januar 2026** (Batches 22/23 deckten
10.12.2025–15.01.2026 mit «20 gesichtet, 5 gelesen» ab — die letzte grosse stichprobenartige Zone),
danach `rj@` **28.02.–05.03.2026** als Restlücke der Batches 32/33. Beim Abgleich zwingend die neue
Reihenfolge einhalten: **Batch-Register zuerst, Tages-Grep erst danach.**
