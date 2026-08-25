# Normen-Nacht Run 62 — 26.08.2026, ab 01:28 CEST (MacBook Pro)

**Auftrag:** Scheduled Task `normen-training-nacht`, Stations-Split SIA + VKF.
**Run-Nummer** nach Sicht der jüngsten `outputs/`-Datei vergeben: Run 61 war der Nacht-Lauf vom
25.08.2026. Dieser Lauf ist **62**.

## 1. Voraussetzungen (gemessen, nicht angenommen)

| Prüfung | Ergebnis |
|---|---|
| `scripts/lauf-gate.sh normen-training-nacht` | Exit 0 — freigegeben |
| NAS-Mount | vorhanden |
| Kollisionsschutz `ps aux` | kein zweiter `normen-training`-Prozess |
| Zugriff OneDrive PL-02 | **intakt**, 634 PDF sichtbar, Test-PDF-Header gelesen |
| Bestandsfrische PL-02 | jüngste Änderung **07.08.2026** — kein neues Rohmaterial (19 Tage) |
| Bestandsfrische PL-03 | keine Datei neuer als 01.08.2026, 105 PDF |
| Inventar `norm-inventar.md` | 0 destillierbare Positionen; die 6 offenen Zeilen sind ausnahmslos Kauf-/Beschaffungs-Bring-Schulden |

Kein Grunddestillat fällig → Arbeit auf Vertiefungsstufe (b), gemäss PROGRAMM Ziff. 6.

## 2. Wahl des Arbeitsgegenstands — und ein abgefangener Fehlbefund

Der Report von Run 61 nannte als nächste fällige Vertiefung den «Fliesstext der Kapitel 1-4 des
Lignatec, den Run 40 als nächste ungeprüfte Methode benannt hat — nicht angefasst». **Das ist
überholt.** Die Gegenprüfung am Bestand ergab: Run 41 (01.08.2026) hat genau diesen Fliesstext-Diff
gefahren (sechs Kernbefunde, im Destillat-Frontmatter dokumentiert) und dabei die vollständige
Seiten-Inventur `training/lignatec-seiteninventur.md` erstellt. `wiki/QUESTIONS.md` hält seit dem
24.08.2026 ausdrücklich fest, dass die Reports 40 bis 45 diesen Punkt fälschlich als offen
fortschrieben. Run 61 hat die überholte Zeile ein weiteres Mal fortgeschrieben.

Das ist derselbe Fehlertyp, den **Methodik-Pflicht 10** für extern recherchierte Statusaussagen
beschreibt — hier auf einen **internen** Vorgang angewandt: eine Aussage über den eigenen Rückstand
gehört gegen den KB-Stand geprüft, bevor sie zum Auftrag wird. Als N62-4 in `QUESTIONS.md`
geschlossen, damit ihn kein dritter Lauf erbt.

**Stattdessen gewählt: `sia-118-1991.md`.** Begründung nach der Methoden-Lehre — eine Methode auf
einem Teil, auf dem sie nie gelaufen ist:

- Das Destillat trug seit dem 17.07.2026 `established`, gestützt auf Refuter-Runden (12.07., Modell
  D), eine Q&A-Selbstbefragung (14.07.) und eine Verifier-Gegenprüfung (17.07.). **Die
  Abdeckungsrichtung ist dort nie gelaufen.**
- Genau diese Konstellation bezeichnet **Methodik-Pflicht 13** (verbindlich seit 17.08.2026) als
  unzureichend für `established`.
- SIA 118 ist das meistgezogene Destillat des Hub: Rule `normen-referenz` verpflichtet
  `werkvertrag`, `unternehmerkontrolle`, `kostenkontrolle` und `ausschreibung` darauf. Die
  Ausgabe 2013 ist nicht im Haus, also ist **dieses** Destillat das, was die Skills tatsächlich ziehen.
- Grössenvergleich, der die Erwartung setzte: 161 Zeilen für 190 Artikel.

## 3. Methode

Quelle `118_1991_d.pdf`, 75 Seiten, sauberer Textlayer. Normteil PDF-S. 9-53. Segmentiert in sechs
Teile, je ein Abdeckungs-Agent (Sonnet, mechanische Stufe delegiert nach Modell-Politik). Auftrag je
Agent ausdrücklich **nicht** Refuter, sondern: jeden Artikel absatzweise aufnehmen und nur melden,
**was in der Quelle steht und im Destillat fehlt** — mit Pflicht, vor jedem Befund das **ganze**
Destillat zu durchsuchen (Methodik-Pflicht 7), und mit Klassierung Kern/Neben.

**Unabhängige mechanische Gegenmessung des Hauptprozesses vorab:** Das Destillat nennt nominell
**190 von 190** Artikeln — eine wertlose Sättigungszahl, weil Bereichsangaben wie «Art. 44-57» alle
Innenglieder mitzählen. Ohne Bereichs-Innenglieder gerechnet: **150 Artikel mit eigener Aussage, 40
nur mitgemeint** (grösster Block Art. 65-81, Teuerung). Diese Zahl deckte sich mit den späteren
Agenten-Bilanzen und diente als Plausibilitätsanker.

**Seitenversatz am Original abgelesen, nicht gerechnet** (Methodik-Pflicht 6, Lehre aus Run 50): Alle
sechs Agenten meldeten unabhängig eine Diskrepanz zur Auftrags-Seitenspanne. Der Hauptprozess hat die
gedruckten Randzahlen an sechs Stichproben abgelesen: PDF 9→7, 10→8, 21→19, 26→24, 45→43, 53→51.
**Gedruckte Seite = PDF-Seite minus 2, konstant.** Die Agenten zitierten durchgehend gedruckte Seiten
— methodisch richtig. Im Destillat wird gleichwohl nach **Artikel und Absatz** zitiert, wie die Norm
selbst und das bestehende Destillat es tun; ungeprüfte Seitenzahlen zu streuen wäre der Fehler aus
Run 50 gewesen.

## 4. Ergebnis

**84 Kernbefunde, 82 Nebenbefunde — und kein einziger falscher Wert.**

| Segment | Artikel | Kern | Neben | Vom Destillat gar nicht erwähnte Artikel |
|---|---|---|---|---|
| A | 1-29 | 7 | 9 | 3, 9, 10, 24 |
| B | 29-59 | 15 | 21 | 46, 51, 52, 53, 54, 57 |
| C | 60-86 | 8 | 11 | 60, 61, 85 |
| D | 87-121 | 15 | 14 | 88, 91 |
| E | 122-156 | 22 | 15 | 147, 151 |
| F | 157-190 | 17 | 12 | 163, 167, 168, 175, 183 |

**Das ist der zweite reale Beleg für Methodik-Pflicht 13, und der bisher grösste.** Run 54 zeigte an
`sia-416-1-2007` dieselbe Asymmetrie (Refuter: 93 bestätigt, 2 widerlegt — Abdeckung auf denselben
Seiten: 37 Kern-, 20 Nebenlücken, kein falscher Wert). Hier wiederholt sie sich an einem Destillat,
das drei unabhängige Prüfrunden bestanden hatte und im Frontmatter ausdrücklich als «vollständig
gegen den Volltext verifiziert» galt. Die Befunde fallen fast durchgehend in Klasse (b) des Run-53-
Schemas — **weggelassener eigenständiger Inhalt, für den die Refuter-Richtung strukturell blind ist**.

### 4.1 Die folgenreichsten Kernbefunde

1. **Art. 163 — die Protokollfalle der Abnahme.** Erkennt die Bauleitung bei der gemeinsamen Prüfung
   einen Mangel und verzichtet ausdrücklich oder stillschweigend auf dessen Geltendmachung, gilt das
   Werk insoweit als genehmigt und die Unternehmerhaftung entfällt in diesem Umfang. **Stillschweigender
   Verzicht wird vermutet für erkannte, aber nicht protokollierte Mängel.** Der ganze Artikel fehlte.
   Für die JANS-Bauleitung die schärfste Regel des Abnahmekapitels.
2. **Art. 125 Abs. 2 — eine halbierte Bestimmung, die sich gegen den Unternehmer neigte.** Das
   Destillat führte nur den zweiten Satz (Rohbau-Fassadengerüste zwei Monate unentgeltlich) und liess
   den ersten weg: Verlangt die Bauleitung längeres Vorhalten, als die Arbeiten es erfordern, **hat der
   Unternehmer Anspruch auf zusätzliche Vergütung**. So gelesen wirkte der Absatz, als sei längeres
   Vorhalten generell gratis — ein Bauleiter hätte einen berechtigten Nachtrag abgewiesen.
3. **Art. 83 — Bauhandwerkerpfandrecht, verschluckt durch eine falsche Bereichsgrenze.** Der Artikel
   (Anspruch nach Art. 837 ff. ZGB, Ausschluss bei öffentlichen Bauten) fehlte inhaltlich ganz. Ursache:
   Die «Offene Punkte» führten «Kap. 2.4-2.6 (Teuerungsabrechnung, **Art. 62-83**)» und deklarierten den
   Bereich als bewusst nur zusammengefasst. Die Teuerungsabrechnung reicht aber nur bis **Art. 82**
   (Art. 41 Abs. 1 verweist auf «Art. 64 ff.»; das beigebundene SIA-Merkblatt nennt «Art. 64 bis 82»);
   Art. 83 ist das eigene Kap. 2.7. **Eine ungenaue Bereichsangabe in einer Selbstauskunft hat einen
   erstrangigen Bauleitungsstoff unsichtbar gemacht** — verwandt mit der Lehre aus Run 50, dass ein
   einziger Methodenfehler viele Fundstellen verdirbt.
4. **Art. 169 — die drei Mängelrechte ohne ihre Schranken.** Verbesserung nur ohne übermässige Kosten,
   Minderung reduziert bei Mitverschulden des Bauherrn, Rücktritt nur ohne unverhältnismässige
   Nachteile für den Unternehmer. Alle drei Schranken fehlten; das Destillat überdehnte die
   Bauherrenrechte. Klasse (a) — hier wäre die Refuter-Richtung sichtbar gewesen und war es nicht.
5. **Art. 86 Abs. 4 — Ausnahme von der ±20 %-Regel.** Bei zur Ausschreibungszeit bautechnisch
   unbestimmbaren Mengen gelten Abs. 1-3 nicht. Die ±20 %-Regel steht im Destillat als *zentrale
   Kennzahl*, also an der prominentesten Stelle — ohne ihre Ausnahme.
6. **Art. 147 und Art. 151 — Gesamtpreisverträge haben eine eigene Zahlungssystematik.** Teilzahlungsplan
   und Rückbehalt/Sicherheiten sind dort **gesondert im Werkvertrag zu regeln**; die Prozentsätze des
   Art. 150 gelten nicht automatisch. Beide Artikel fehlten vollständig — bei einem Büro, das
   Pauschalverträge einsetzt, unmittelbar vertragsrelevant.
7. **Art. 164 — Abnahme ohne gemeinsame Prüfung.** Unterbleibt die Prüfung innert Monatsfrist am
   Bauherrn, gilt das Werk dennoch als abgenommen; unterbleibt sie am Unternehmer, nicht. Damit hängt
   der Startpunkt von Garantie- und Verjährungsfrist im häufigen Fall ohne förmliche Abnahme.
8. **Art. 60/61 — Witterung und Marktstörungen sind KEINE Sonderfälle wie Art. 59.** Zusatzvergütung
   nur bei Vereinbarung, Art. 59 nicht anwendbar, kein Auflösungsrecht. Beide Artikel fehlten ganz;
   das Destillat führte nur Art. 58 und 59 und legte damit die falsche Analogie nahe.
9. **Art. 94 — Säumnis der Bauleitung mit Auflösungsrecht.** Stellt sie Unterlagen und Grundstücke nicht
   rechtzeitig bereit, hat der Unternehmer Anspruch auf Fristerstreckung, bei fortgesetzter Säumnis ein
   Auflösungsrecht nach Gläubigerverzug (Art. 95 OR). Stand nur als nackte Verweiszahl im Destillat.
10. **Art. 57 mit Art. 44 Abs. 3 — wer die Regie leitet, haftet.** Der Unternehmer haftet nur für Regie
    unter eigener Leitung. Art. 57 fehlte vollständig, obwohl der Praxis-Transfer die Spanne
    «Art. 44-57» zitiert.

### 4.2 Zwei eigene Kernbefunde des Hauptprozesses ausserhalb der Segmente

Die Segmente deckten PDF-S. 9-53. Der Hauptprozess hat zusätzlich die Schlussseiten gesichtet, weil
das Destillat sie pauschal als «reiner Gesetzestext-Abdruck» abtat:

- **PDF-S. 74-75 sind kein Gesetzestext, sondern das SIA-Merkblatt A 95-004d vom 05.01.1995** der
  Kommission 118 zur Mehrwertsteuer — eine Auslegung zur Norm selbst, mit eigener Zählung 1-2
  beigebunden. Dauerhafter Gehalt: **Weist der Unternehmer die MWST nicht offen aus, gilt sie als in
  die Preise eingerechnet** (Art. 50 Abs. 1 für Regieansätze, Art. 62 Abs. 1 Ziff. 5 für
  Einheits-/Global-/Pauschalpreise), und er kann dafür **keine Nachforderung** stellen; Verbandspreise
  sind in der Regel ohne MWST gerechnet; eine Satzänderung ist über Art. 82 abrechenbar, **ausgeschlossen
  bei Pauschalpreisen (Art. 41 Abs. 1) und bei Regie mit Richtpreis ohne Teuerungsvorbehalt
  (Art. 56 Abs. 4)**. Der Übergangsteil Wust→MWST 1995 ist historisch und als solcher markiert.
  Als eigener Abschnitt ins Destillat aufgenommen.
- **Art. 135 Abs. 4** (von keinem Agenten gemeldet): Bei Gebäuden mit **mehr als fünf Geschossen oder
  über 15 m Höhe** stellt der Bauherr den am Ausbau beteiligten Unternehmern vertikale
  Transportmöglichkeiten und sanitäre Einrichtungen **kostenlos** zur Verfügung. Für ein Büro mit
  Ausbau- und Baunebengewerbe-Anteil eine unmittelbar kalkulationsrelevante Bauherrenpflicht.

Die Schlussseiten PDF-S. 72-73 (Kommissionen, Genehmigung, Inkrafttreten) wurden gesichtet und
tragen keinen normativen Gehalt — die Selbstauskunft des Destillats trifft dort zu.

### 4.3 Ein dritter Befund über die Methode: auch die Q&A-Runde ist blind für Fehlendes

Der Hub-Reichweiten-Check (Lehre aus dem BKP-271.10-Fall: eine korrigierte Aussage kann sich
ausgebreitet haben) ergab, dass **kein Fach-Skill** die korrigierten Halbsätze übernommen hatte —
der Fehler blieb in der KB. Er förderte aber einen methodischen Fund zutage.

In `destillate/qa/sia-118-1991-fragen.md` fragt **F10** der Q&A-Runde vom 14.07.2026, wie lange
Fassadengerüste dem Bauherrn unentgeltlich zur Verfügung stehen. Die Antwort ist richtig. Es ist
**dieselbe Hälfte von Art. 125 Abs. 2, die das Destillat schon hatte** — nach der anderen Hälfte,
dem Vergütungsanspruch für längeres Vorhalten, konnte niemand fragen, weil sie nicht dastand.

**Die Q&A-Selbstbefragung teilt damit die Blindheit der Refuter-Richtung**, und aus demselben Grund:
Ihre Fragen werden **aus dem Destillat** abgeleitet, nicht aus der Quelle. Sie ist eine dritte
Methode mit demselben Angriffspunkt, nicht eine zusätzliche Absicherung. Das erklärt, warum SIA 118
drei bestandene Prüfrunden trug und trotzdem 84 Kernlücken hatte. Vertiefungsstufe (c) des PROGRAMM
sollte deshalb künftig ausdrücklich verlangen, die Prüfungsfragen **am Original** zu bilden; sonst
misst sie dasselbe wie Stufe (b). Als Nachtrag in der Q&A-Datei festgehalten; keine Regeländerung
vorgenommen, das wäre Raphaels Entscheid.

## 5. Verifikations-Verdikte (Hauptprozess, am Original)

Jeder Kernbefund wurde vom Hauptprozess selbst am Original nachgelesen (Methodik-Pflicht 5), rund 60
Artikel im Volltext. **Ergebnis: alle inhaltlich bestätigt.** Nach der Lehre aus Run 50 («eine
Verdikt-Verteilung ohne jede Widerlegung ist selbst prüfbedürftig») wurde gezielt gegen die vier
Befunde geprüft, die am ehesten Scheinbefunde nach Methodik-Pflicht 7 sein konnten. Das ergab **drei
Korrekturen** — zwei an Agentenbefunden, eine an einem eigenen Vorbefund:

| Prüfung | Ergebnis |
|---|---|
| Eigener Vorbefund «Art. 86 Abs. 3, andere Toleranzgrenze fehlt» | **WIDERLEGT** — das Destillat führt den Satz bereits. Nicht übernommen. |
| K-D1 «Art. 87 Abs. 4 fehlt» | **eingeengt** — die Regie-/Fremdvergabe-Wahl steht im Destillat; es fehlt nur der Schlusssatz, dass untergeordnete Arbeiten *immer* in Regie gehen. So eingearbeitet. |
| K-C6 «Art. 84 Abs. 5 fehlt» | **eingeengt** — Abs. 1 (Drittvergabe-Verbot) und Abs. 3 (Schadloshaltung) stehen im Destillat; nur die Art.-11-Abgrenzung des Abs. 5 fehlt. |
| K-E3 «Art. 125 Abs. 2» | **nicht widerlegt, sondern verschärft** — siehe 4.1 Ziff. 2. Der schwerste Einzelbefund der Runde. |
| K-F5/F6/F7 «Art. 169 Schranken», K-E20 «Art. 152 Abs. 2» | am Original bestätigt, unverändert übernommen |

## 6. Was am Destillat geändert wurde

- **18 Blöcke inline eingearbeitet** (Methodik-Pflicht 9 — Befunde korrigieren den Fliesstext, nicht
  nur einen angehängten Anhang), verteilt auf alle sieben Kapitel; neuer Abschnitt «Kostengrundlage,
  Teuerung, Bauhandwerkerpfandrecht (Kap. 2.4-2.7)»; neuer Abschnitt zum MWST-Merkblatt.
- **Sieben neue Zeilen in der Kennzahlen-Schnellübersicht** (u.a. ±20-%-Ausnahme, Teuerungs-Ausschlüsse,
  Bauhandwerkerpfandrecht, Art.-163-Protokollregel, Art.-164-Abnahmefiktion, Art. 135 Abs. 3-4).
- **Zwei überholte Selbstauskünfte inline korrigiert:** die Bereichsangabe «Art. 62-83» und die
  Pauschalaussage «Anhänge = reiner Gesetzestext-Abdruck».
- **Status `established` → `speculative`**, mit Begründung im Feld. Die Refuter-Ergebnisse bleiben
  ausdrücklich gültig; herabgestuft wird allein, weil nach Methodik-Pflicht 13 beide Richtungen auf
  allen Teilen gelaufen sein müssen und die Nebenbefunde offen sind. Dieselbe Entscheidung wie bei
  `sia-416-1-2007` in Run 54.
- **Prüfstand-Tabelle ins Destillat** (nicht nur in den Report), mit ausdrücklichem Ausweis, was
  ungeprüft blieb.
- `destillate/INDEX.md` Zeile 59 nachgeführt.

**Diff-Gegenprobe** (Rule 260811), nativ per ssh auf der Synology, nie git über SMB:
`120 hinzugefügt / 5 entfernt`. Die fünf entfernten Zeilen sind einzeln geprüft und sind genau die
fünf beabsichtigten Zeilenersetzungen (`gelesen`, `status`, `last_updated` und die zwei korrigierten
«Offene Punkte»-Zeilen). Keine sonstige Löschung.

**Zwischenfall im Lauf, selbst behoben:** Der erste Einarbeitungsversuch schrieb die Umlaute als
ae/oe/ue und verstiess damit gegen `umlaute-konvention.md`. Statt global zu ersetzen (verboten nach
Rule 260811) wurde auf den vor dem Edit gesicherten Stand zurückgesetzt — Prüfsumme gegen die Kopie
verglichen — und der Einschub neu geschrieben. Kosten: ein Durchgang. Lehre: den Zieltext gleich in
der Zielkonvention schreiben, nicht nachträglich konvertieren.

## 7. Was NICHT geprüft wurde (Pflichtausweis der Methoden-Lehre)

1. **Die 82 Nebenbefunde sind nicht eingearbeitet** — sie stehen in den Agenten-Ergebnissen und als
   N62-1 in `QUESTIONS.md`. Grösster Block: die Teuerungsmechanik Art. 65-81.
2. **Das MWST-Merkblatt hat keine Refuter-Runde** — nur die Abdeckungsrichtung ist dort gelaufen (N62-2).
3. **Die übrigen `established`-Destillate sind nicht gesichtet.** Nur **26 von 461** tragen einen
   Prüfstand. Dass SIA 118 vier Wochen lang `established` trug, obwohl nur eine der beiden Richtungen
   gelaufen war, ist mit hoher Wahrscheinlichkeit kein Einzelfall (N62-3).
4. Sprachfassungen f/i unverändert nicht geprüft; Sachregister und ZGB/OR-Anhang bewusst nicht
   destilliert (Begründung im Prüfstand).

## 8. Eskalation an Raphael — unverändert, nichts Neues

Die drei Punkte aus Run 61 bleiben offen und werden hier **nicht erneut vorgelegt**, sondern nur
weitergeführt: Freigabe für die drei DE-Duplikat-Merges, Entscheid zum Marker `[a]`, sowie die
Beschaffungs-Bring-Schulden (SIA-Shop 380/1:2016, 385/1:2011, 266/1:2015, 181:2020, 491, 118:2013 ·
VSS-Kundendienst für SN 641 400, SN 640 052, SN 640 273a · SNV für SN EN 12193:2019).

**Kein neuer Entscheidbedarf aus Run 62.** Alle Änderungen dieses Laufs sind umkehrbare Arbeit am
eigenen Wissensbestand und fallen unter die Whitelist; die Statusherabstufung folgt einer bereits
freigegebenen Methodik-Pflicht und ist keine neue Regel.

## 9. Bezug zu SIA 118:2013

Unverändert: Die geltende Ausgabe ist **2013** und ist **nicht im Haus** (REGISTER Z. 297, am
Herausgeber verifiziert 06.08.2026); die Korrigenda **C1:2026** liegt vor und ist destilliert. Die
84 Lücken betreffen die Ausgabe **1977/1991**. Für Altverträge, die diese Ausgabe vereinbaren, sind
sie unmittelbar wirksam; für Neuverträge bleibt der Kauf der 2013er die Bring-Schuld. **Der Befund
verschärft diese Bring-Schuld nicht** — er zeigt nur, dass auch das vorhandene Destillat der
Altausgabe unvollständiger war als angenommen.
