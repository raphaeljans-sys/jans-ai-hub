# Marktpuls KB Immobilienbewertung — VORGEZOGEN, 13.08.2026

**Lauf:** One-Time-Task `immobewertung-marktpuls-260901`, vorgezogen ausgeloest
**Laufdatum (gemessen):** 2026-08-13, 01:00 CEST · Station MacBook Pro
**Nomineller Stichtag des Tasks:** 01.09.2026 — **19 Tage in der Zukunft**
**NAS:** gemountet · **Kollisionsschutz:** keine Zweitinstanz auf dieser KB (`ps` geprueft)

---

## 0. Der Befund, der allem vorangeht: dieser Lauf fand vor seinem Stichtag statt

Der Task-Prompt sagt: «Der einzige im Voraus bekannte Ereignis-Zeitpunkt war der Marktpuls-
Stichtag 01.09.2026 — **das ist heute**.» Das ist am Laufdatum nicht zutreffend.

Gemessen (Rule 260730b — das Arbeitsdatum kommt aus `date`, nie aus einem Dateiinhalt):

| Pruefung | Ergebnis |
|---|---|
| `date "+%Y-%m-%d %H:%M %Z"` | **2026-08-13 01:00 CEST** |
| Task `fireAt` | 2026-09-01T05:00:00Z |
| Task `nextRunAt` | 2026-09-01T05:00:00Z |
| Task `lastRunAt` | **fehlt — der Task hat nie gefeuert** |
| Task `enabled` | true |

Der Task ist also **nicht verbraucht**; dieser Lauf wurde vorgezogen ausgeloest. Er wurde
entsprechend behandelt: **der Task bleibt scharf auf 01.09.2026**, und saemtliche Eintraege
sind auf **13.08.2026** datiert, nicht auf den Stichtag. Der Report heisst deshalb
`2026-08-13_immobewertung-marktpuls-vorgezogen.md` und nicht, wie im Auftrag vorgesehen,
`2026-09-01_immobewertung-marktpuls.md` — ein auf den 01.09. datiertes Erzeugnis waere ein
falsches Datum in der KB und genau der Fehler, den Rule 260730b (Buch-Run 72) untersagt.

**Das ist keine Formalie, sondern verschiebt das Ergebnis.** Der Stichtag 01.09.2026 wurde
gewaehlt, weil die BWO an diesem Tag ihre Quartalspublikation veroeffentlicht. Die beiden
Werte, fuer die der Termin existiert, waren heute nicht abrufbar:

- **BWO-Referenzzinssatz-Publikation 01.09.2026** samt massgebendem Durchschnittszinssatz per
  Stichtag 30.06.2026. Publikationstermine 2026: 02.03. · 01.06. · **01.09.** · 01.12.
- **BFS-Leerwohnungsziffer** zum Stichtag 01.06.2026 (Erhebung 1. Juni, Publikation September).

Beide bleiben offen und wurden **nicht geschaetzt**.

---

## 1. Neu belegt (drei Werte)

| Groesse | Wert | Datenstand / Publikation | Quelle | Status |
|---|---|---|---|---|
| UBS SREBI | **0.72** «moderat» (Q2-2026) | publ. **06.08.2026** | UBS CIO, Medienberichterstattung gegengelesen | `emerging` |
| BFS-IMPI Wohnimmobilienpreisindex | **127.7** (Q4-2019 = 100); +0.7 % QoQ, **+3.5 % YoY** | Q2-2026, publ. **30.07.2026** | BFS/EDI | `established` |
| LIK Landesindex Konsumentenpreise | **101.1**; −0.1 % MoM, **Jahresteuerung 0.4 %** | Juli 2026, publ. 08.2026 | BFS/EDI | `established` |

**SREBI Q2-2026 im Detail:** dritter Anstieg in Folge, weiterhin deutlich unter der
Risikoschwelle 1.0 (Blase 1989 bei ~2.3). Begleitzahlen: Wohneigentum **+3.6 % YoY**,
Angebotsmieten **+2.4 %**, Bestandesmieten **+1.1 %**. Die UBS-Prognose 2026 wurde von +3 % auf
**nominal +3.5–4.0 %** angehoben.

**IMPI Q2-2026 im Detail:** EFH **−0.4 % QoQ**, ETW **+1.6 % QoQ**; staedtische Gemeinden und
kleine Agglomerationen **+1.8 %**, laendliche Gemeinden stabil.

**LIK im Detail:** Rueckgang energie- und saisongetrieben (Flug-, Diesel-, Benzinpreise,
Ausverkauf Bekleidung); Verlauf Mai 0.6 % → Juni 0.5 % → **Juli 0.4 %**.

---

## 2. Die zwei methodischen Befunde — der eigentliche Ertrag

### 2.1 Der SREBI wird rueckwirkend revidiert

Die Q2-Publikation weist den Vorquartalswert mit **0.62** aus. Dieselbe Reihe meldete im Mai
fuer Q1-2026 aber **0.69** («Anstieg um 0.23 auf 0.69», UBS-Mitteilung 07.05.2026, ueber zwei
unabhaengige Quellen bestaetigt). UBS hat Q1-2026 nachtraeglich **um 0.07 Punkte nach unten
revidiert**.

Der bisherige KB-Wert 0.69 war zu seinem Datenstand **korrekt** und ist nicht falsch erfasst
worden — er ist **ueberholt**. Das ist der wichtige Unterschied: hier war kein KB-Fehler zu
korrigieren, sondern eine Eigenschaft der Quelle zu dokumentieren.

**Daraus Nutzungsregel 5** (`wiki/datenquellen-registry.md`): Index-Reihen nie ohne
Publikationsdatum zitieren; Werte aus zwei Publikationsstaenden nie in derselben Zeitreihe
mischen.

### 2.2 IMPI und WP widersprechen sich beim EFH-Quartalswert

| Quelle | EFH Q2-2026 QoQ | YoY |
|---|---|---|
| BFS IMPI (amtlich, Transaktionen) | **−0.4 %** | +3.5 % (Total) |
| WP Immo-Monitoring (publ. 16.07.2026) | **+1.5 %** | +4.3 % |
| UBS SREBI (publ. 06.08.2026) | — | +3.6 % (Wohneigentum) |

Kein Fehler einer der Reihen, sondern Methodendifferenz: das BFS misst beurkundete
Handaenderungen mit Publikationsverzug und Stichprobenschwankung, WP modelliert hedonisch und
bezieht Angebotsdaten ein. **Beim YoY liegen alle drei mit +3.5 bis +4.3 % nahe beieinander** —
die Divergenz steckt praktisch ganz im Quartalswert.

**Arbeitsregel fuer JANS-Deliverables** (`wiki/vergleichswert-hedonisch.md`, gespiegelt als
Nutzungsregel 6 in der Registry):

1. Nie einen einzelnen Quartalswert als Marktaussage verwenden — fuer Trends die **YoY-Rate**.
2. Bei divergierenden Reihen **beide nennen**; die Bandbreite ist die ehrliche Antwort.
3. Quelle **und Publikationsdatum** immer mitfuehren (siehe 2.1).
4. Der IMPI ersetzt die Quantile nicht — er liefert Entwicklung, keine Niveaus je Gemeinde.

---

## 3. Warum der IMPI mehr ist als eine weitere Zahl

Der Wissens-Chef hat am 07.08.2026 belegt, dass die KB auf der Marktseite **keine echte
Zweitmeinung** hatte: auch die UBS Local Fact Sheets sind laut ihrem eigenen Quellenverzeichnis
ein **Wuest-Partner-Derivat** (Immobilien- und Baulandpreise, Standortratings, Angebotsziffern).
Zwei uebereinstimmende Zahlen aus UBS-FS und WP-Report waren also nie eine Bestaetigung, sondern
zweimal dieselbe Quelle.

Der **BFS-IMPI ist die erste Reihe der KB, die nicht aus dieser Familie stammt** — amtlich, auf
beurkundeten Handaenderungen, quartalsweise. Damit ist die **Preisentwicklungs-Seite** dieser
Luecke geschlossen.

**Nicht geschlossen ist die Niveau-Seite** (Quantile, CHF/m2 je Gemeinde). Dort bleibt die KB
vollstaendig WP-basiert. Neu als **D14** in `wiki/wissensluecken.md` gefuehrt; ein echter
Niveau-Gegencheck braucht IAZI/CIFI oder die kantonale Handaenderungsstatistik ZH/SZ — beides
zugangsgebunden, also Bring-Schuld, und sinnvollerweise **zusammen mit D2** (Bodenpreise) zu
loesen, weil es dieselbe Zugangsfrage und derselbe Anbieterkreis ist.

---

## 4. Die drei Verfahrensartikel — alle geprueft (Auftragspunkt 3)

| Artikel | Ergebnis |
|---|---|
| `ertragswert-dcf.md` | **geaendert** — Inflationsanker auf 0.4 % (07.2026) nachgefuehrt. Die **Langfrist-Annahme ~1.0 % bleibt bewusst stehen** (Begruendung unten). |
| `vergleichswert-hedonisch.md` | **geaendert** — neuer IMPI-Abschnitt mit Divergenztabelle und vierteiliger Arbeitsregel. |
| `realwert-sachwert.md` | **geprueft, keine Aenderung noetig** — ausdruecklich vermerkt, nicht still uebersprungen. |

**Zur Langfrist-Inflationsannahme:** die Teuerung ist seit Mai von 0.6 % auf 0.4 % gefallen, der
nominale Diskontsatz haengt an ihr. Trotzdem wurde der Langfrist-Anker **~1.0 % nicht gesenkt**:
der Rueckgang ist energie- und saisongetrieben, also dieselbe Erdoel-Mechanik, die im Mai nach
oben wirkte. Ein Langfrist-Anker, der jedem Monatsausschlag folgt, ist keiner. Im Artikel ist
die Bedingung notiert, unter der eine Absenkung Richtung 0.7–0.8 % gerechtfertigt waere
(anhaltend tieferes Niveau ueber mehrere Quartale oder gesenkte SNB-Prognose); der nominale
Diskont Wohnen laege dann bei ~2.8–4.0 % statt ~3.1–4.3 %.

**Zum Realwert:** SREBI und IMPI sind **Preis**reihen fuer Wohneigentum und treffen den
Vergleichswert, nicht die Erstellungskosten. Der **LIK ist der Konsumentenpreis-Index und nicht
der Baupreisindex** — andere Basis, andere Methodik. Die fuer den Realwert massgebenden Anker
sind unveraendert: BFS-Baupreisindex **April 2026 = 100.6** (+1.0 % YoY, naechste Publikation
Dez-2026 aus der Oktober-Erhebung) und die ZIW-Reihe der Stadt Zuerich (Publikationsstand
01.01.2026). Naechster Anlass zur Nachfuehrung dieses Artikels ist damit **Dez-2026**.

---

## 5. Unveraendert bestaetigt

| Groesse | Wert | Stand | Naechster Termin |
|---|---|---|---|
| SNB-Leitzins | **0.00 %** | Lagebeurteilung 18./19.06.2026; seither keine Sitzung | **24.09.2026**, dann 10.12.2026 |
| BWO-Referenzzinssatz | **1.25 %** | seit 02.09.2025, bestaetigt 02.06.2026 | **01.09.2026** |
| Massgebender Durchschnittszinssatz | **1.31 %** | per Stichtag 31.03.2026 | 01.09.2026 (Stichtag 30.06.2026) |
| Schwellen Referenzzins | 1.13 % / **1.37 %** | — | — |
| BFS-Baupreisindex | **100.6** (Basis Okt-2025 = 100) | April 2026 | Dez-2026 |
| SMG/Homegate-Mietindex | **134.0** | Juni 2026 | Juli-Wert noch nicht publiziert |

---

## 6. Bewertungsrelevanz in drei Saetzen

Das Zinsumfeld ist unveraendert (Leitzins 0.00 %, Referenzzins 1.25 %, Durchschnittszinssatz
komfortabel innerhalb des Bands) — **kein Anlass, Diskont- oder Kapitalisierungssaetze
anzupassen**. Die Preisdynamik ist eher etwas staerker als im Fruehjahr unterstellt (UBS hebt
die Jahresprognose auf +3.5–4.0 %, alle drei Reihen zeigen YoY +3.5 bis +4.3 %), das
Blasenrisiko bleibt im moderaten Band. Fuer die Ertragsbewertung bleibt der wichtigste Punkt
unveraendert der aus Run 51: **das Neuvermietungspotenzial uebertrifft die Jahresprognose
deutlich** — bei Neuvermietungsannahmen ist die Prognosezahl der falsche Anker.

---

## 7. Nicht getan, und warum (Rechenschaft)

- **BWO-Publikation 01.09.2026 und BFS-Leerwohnungsziffer 01.06.2026** — zum Laufdatum nicht
  publiziert. Nicht geschaetzt, nicht interpoliert, als offen ausgewiesen.
- **Bring-Schulden Raphaels** (UBS-FS-Quantile D1, Bodenpreise D2, Diskontsatz-Annahmen D5,
  Excel-Tools) — auftragsgemaess **nicht** durch Schaetzwerte ersetzt; unveraendert offen.
- **SREBI-PDF-Primaerquelle** — nicht frei abrufbar (die UBS-Seite liefert nur ein
  PDF-Verzeichnis). Der Wert stammt aus gegengelesener Medienberichterstattung und traegt
  deshalb `emerging` statt `established`; Verifikation am PDF beim naechsten Lauf.
- **Der zweite Ereignis-Trigger aus PROGRAMM.md** (Einarbeitung der fuenf Ingest-Reports vom
  31.07.2026, rund 370 KB, in die Wiki-Artikel) — **nicht angefasst**. Er ist ein eigener,
  separat gesetzter Trigger und nicht Gegenstand des Marktpuls-Auftrags; ein Ingest dieser
  Groessenordnung nebenbei zu fahren, haette beides schlecht gemacht. **Er bleibt offen und ist
  der groessere Rueckstand dieser KB** — die Reports sind geschrieben, im Wiki ist davon noch
  nichts angekommen.
- **Der Task-Prompt wurde nicht editiert.** Der Satz «das ist heute» ist am 01.09.2026 zutreffend
  und korrigiert sich selbst; ein Eingriff in eine Scheduled-Task-Definition faellt in die
  Persistenz-Klasse und wird unbeaufsichtigt nicht vorgenommen. Stattdessen steht der Hinweis
  dort, wo der Lauf ihn ohnehin zuerst liest: im Statuskopf von `training/PROGRAMM.md`.

---

## 8. Naechster Ereignis-Trigger (Auftragspunkt 5)

**Der naechste Trigger existiert bereits und ist scharf: `immobewertung-marktpuls-260901`,
`fireAt` 01.09.2026 07:00.** Es wurde bewusst **kein neuer Task angelegt** — das haette einen
Doppellauf am selben Tag erzeugt. Der Task ist unveraendert `enabled`.

Sein Auftrag am 01.09.2026 ist durch diesen Lauf **geschaerft, nicht erledigt**:

1. **BWO-Referenzzinssatz-Publikation 01.09.2026** — der Kernpunkt. Massgebender
   Durchschnittszinssatz per Stichtag 30.06.2026; Leitfrage, ob er die Erhoehungsschwelle
   1.37 % erreicht (aktuell 1.31 %, Tendenz sinkend → Erhoehung unwahrscheinlich, aber der Wert
   ist der Zweck des Termins).
2. **BFS-Leerwohnungsziffer** Stichtag 01.06.2026 (Publikation September).
3. SMG-Mietindex Juli/August 2026; SNB-Quartalsheft 3/2026 (~09.2026, fuer die 10-j-Eidgenossen-
   Rendite); SREBI-PDF-Verifikation.
4. **Nicht** erneut zu holen: SREBI Q2-2026, IMPI Q2-2026, LIK 07.2026 — dieser Lauf hat sie
   bereits eingearbeitet (Hinweis steht im Statuskopf von `training/PROGRAMM.md`).

**Nach dem 01.09.2026** bietet sich als Folgetrigger der **01.12.2026** an (naechste
BWO-Publikation, kurz danach SNB-Lagebeurteilung 10.12. und BFS-Baupreisindex Dez-2026 —
drei faellige Werte in einem Fenster). Dieser Task ist **bewusst noch nicht angelegt**: er
gehoert an den Schluss des 01.09.-Laufs, damit die Kette nicht auf Vorrat wachsen muss.

**Der taegliche Takt wurde nicht reaktiviert** — `immobewertung-training` steht unveraendert auf
`enabled: false`. Das bleibt Raphaels Entscheid.

---

## 9. Geaenderte Dateien

| Datei | Aenderung |
|---|---|
| `wiki/investorenmarkt-makro.md` | SREBI Q2-2026 + Revisionsbefund; BWO-Status 13.08.; SNB/LIK-Update; Marktpuls-Log-Eintrag; `last_updated`, `sources` |
| `wiki/vergleichswert-hedonisch.md` | neuer Abschnitt BFS-IMPI + Divergenztabelle + Arbeitsregel; Log-Eintrag; `last_updated`, `sources` |
| `wiki/ertragswert-dcf.md` | Inflationsanker 0.4 % + Begruendung der stehengelassenen Langfrist-Annahme; `last_updated` |
| `wiki/realwert-sachwert.md` | Pruefvermerk «keine Aenderung noetig» samt Begruendung (LIK ≠ Baupreisindex) |
| `wiki/datenquellen-registry.md` | neue IMPI-Zeile; SREBI-Zeile aktualisiert; Nutzungsregeln 5 und 6; `last_updated` |
| `wiki/wissensluecken.md` | neue Bring-Schuld **D14**; Erledigt-Eintrag 13.08.2026 |
| `wiki/INDEX.md` | zwei Zeilen nachgefuehrt (vergleichswert, investorenmarkt) |
| `CHANGELOG.md` | Eintrag 2026-08-13 zuoberst |
| `training/PROGRAMM.md` | Statuskopf-Hinweis an den Lauf vom 01.09.2026 |
| `outputs/2026-08-13_immobewertung-marktpuls-vorgezogen.md` | dieser Report |

---

## Quellen (alle Web-Check 13.08.2026)

- UBS CIO, Swiss Real Estate Bubble Index Q2-2026, publ. 06.08.2026 (Medienberichterstattung
  nau.ch gegengelesen; PDF-Primaerquelle nicht frei abrufbar)
- UBS CIO, SREBI Q1-2026, publ. 07.05.2026 (swissinfo.ch + Zweitquelle — Beleg der Revision)
- BFS/EDI, «Die Preise fuer Wohneigentum sind im 2. Quartal 2026 um 0,7% gestiegen»,
  publ. 30.07.2026 (IMPI Q2-2026)
- BFS/EDI, «Die Konsumentenpreise sind im Juli um 0,1% gefallen», publ. 08.2026 (LIK Juli 2026)
- BWO, Hypothekarischer Referenzzinssatz (bwo.admin.ch/referenzzinssatz) — Stand und
  Publikationstermine 2026
- SNB, Terminplan geldpolitische Lagebeurteilungen (24.09.2026 / 10.12.2026)
- SMG Swiss Marketplace Group, Mietindex 06/2026, publ. 13.07.2026
- Wuest Partner, Prognose 2026 (EFH +3.1 % / ETW +2.8 % / Renditeliegenschaften +1.5–2.0 %)
- BFS, Leerwohnungszaehlung 01.06.2025 (1.00 %, 48'455 Wohnungen) — letzter publizierter Stand
