# 13 — Übergabe-Modus: Submissionsdossier für externe Bauleitung (statt Versand)

> Entstanden aus Projekt 2414 Thalwil (Entscheid Raphael 11.07.2026: Submission macht
> die externe Bauleitung pw Baumanagement / Peter Weisser; JANS liefert nur die
> Devisierungsgrundlagen). Gilt für jedes Projekt, dessen Stammdatei den Modus
> «Übergabe an Bauleitung» setzt.

## 1. Grundsatz

Wenn eine **externe örtliche Bauleitung** mandatiert ist, endet die JANS-Leistung bei
den **Devisierungsgrundlagen**: JANS erstellt je Los das Submissionsdossier, die
Bauleitung macht Versand, Fragenbeantwortung, Offertöffnung, Vergleich, Abgebote,
Vergabeantrag, Werkverträge und die ganze Ausführungsphase.

Der Skill `ausschreibung` läuft dann NUR mit Phase 1 (LV-/Dossier-Erstellung) plus dem
**Übergabe-Paket** (dieser Baustein). Phase 2 (Versand) und Phase 3 (Auswertung)
entfallen für JANS. Ob der Modus gilt, steht in der Projekt-Stammdatei
(`projekte/<projektnr>-*.md`) — dort zuerst nachschauen.

## 2. Leistungsabgrenzung (Orientierung SIA 102 / SIA 103-Logik)

Nach SIA 102 gehört die Phase 41 «Ausschreibung» (18 % Grundleistungen: Devisierung,
Einholen der Offerten, Offertvergleich, Vergabeantrag) zu den Architekten-Grundleistungen;
die örtliche Bauleitung ist Teil von Phase 52. Wird die Bauleitung separat mandatiert,
muss der **Schnitt INNERHALB von Phase 41 vertraglich fixiert** werden — sonst haften
beide für alles und keiner für nichts. JANS-Standard-Schnitt:

| Leistung | Architekt (JANS) | Bauleitung (extern) |
|---|---|---|
| Pläne Ausschreibungsstand + Planliste mit Index | X | |
| Baubeschrieb / Materialisierung | X | |
| LV/Devisierungsgrundlagen (Positionen, Mengen, Bauseits-Abgrenzung) | X | |
| Anbieterliste (inkl. Bauherren-Vorgaben) | X (zusammenstellen) | X (finalisieren, anschreiben) |
| Versand, Fristen, Submissions-Korrespondenz | | X |
| Fragenbeantwortung während Submission | (nur architektonische Rückfragen via Bauleitung) | X |
| Offertöffnung, Vergleich, Abgebotsrunden | | X |
| Vergabeantrag an Bauherrschaft, Werkverträge | | X |
| Terminplan Ausführung, örtl. Bauleitung, Ausmass, Kostenkontrolle, NT/Regie, Abnahmen | | X |
| Architektonische Oberleitung (Bemusterung, gestalterische Freigaben) | X (sofern beauftragt) | |

**Wichtig:** Diesen Schnitt einmal schriftlich gegenüber Bauherrschaft + Bauleitung
festhalten (kurzes Mail genügt), damit Honorar- und Haftungsgrenzen klar sind.

## 3. Übergabe-Paket je Los (Standard-Inhalt)

Ablage im Projekt: `03 BKP/<Gewerk-Ordner>/<Projektnr> <BKP> 03 AS versand/`
(Standard-Nomenklatur). Die Sendungsform (Einzel-ZIP je Los oder EINE Sammelsendung
über alle Lose) bestimmt die Projekt-Stammdatei — siehe Ziff. 5.

1. **LV/Devis** (DOCX + PDF): Stammzeile mit Objekt/Bauherrschaft/Bauleitung,
   Positionen mit Mengen, Preisspalten leer, Bauseits-Leistungen ausgewiesen,
   «Grundlagen des Angebots» mit konkreten Plan-Nummern + Index.
2. **Plansatz Ausschreibungsstand** (PDF) + **Planliste** (Plan-Nr., Titel, Index, Datum).
3. **Baubeschrieb/Materialisierung** (sofern losrelevant).
4. **Antwortformular** — bei AT/DE-Anbietern mit den Zusatzfeldern aus
   `12_auslaendische-unternehmer.md`.
5. **Anbieterliste** des Loses: Firmen, Kontakte, Bauherren-Vorgaben
   (z.B. 2-Angebote-Regel, gesetzte Anbieter), Hinweise (z.B. Alt-Offerten).
6. **Übergabeprotokoll** (1 Seite): was übergeben wird, Plan-/LV-Stand (Datum + Index),
   offene Punkte (Ziel: KEINE), Ansprechperson JANS für rein architektonische Fragen.

## 4. Konsistenz-Gate «keine Rückfragen» (PFLICHT vor jeder Übergabe)

Jedes Dossier durchläuft vor der Übergabe diese Prüfung — erst wenn alle Punkte
grün sind, geht das ZIP raus:

- [ ] **Plan ↔ LV:** Jede LV-Position hat eine Plangrundlage; kein Planinhalt des
      Gewerks fehlt im LV (Vollständigkeit in beide Richtungen).
- [ ] **Mengen nachvollziehbar:** Herleitung (Plan-Massaufnahme/Raumbuch) vermerkt;
      keine geratenen Mengen — Unsicherheiten als «Menge durch UN zu prüfen» markiert.
- [ ] **Materialisierung eindeutig:** Produkt/Qualität je Position bestimmt oder
      bewusst offen mit Gleichwertigkeits-Klausel; keine Widersprüche LV ↔ Baubeschrieb.
- [ ] **Bauseits-Abgrenzung:** Schnittstellen zu Nachbargewerken explizit (wer liefert,
      wer montiert, wer schliesst an) — häufigste Rückfrage-Quelle.
- [ ] **Plan-Stand einheitlich:** Alle Beilagen auf demselben Index; Planliste stimmt
      mit ZIP-Inhalt überein.
- [ ] **Identifikatoren verifiziert:** Projektnr., Objekt, Bauherrschaft, BKP-Codes
      (Rule `identifikatoren-verifizieren`, `bkp-2017-referenz`).
- [ ] **Korrektur-Harness gelaufen** (Skill `korrektur`) über LV, Protokoll, Beschriebe.
- [ ] **Selbsttest:** «Könnte ein fremder Bauleiter damit heute versenden, ohne JANS
      anzurufen?» — wenn nein, fehlt etwas: nachbessern, nicht übergeben.

## 5. Übergabe-Vorgang

**Sendungsform gemäss Projekt-Stammdatei** — Standard 2414: **EINE Sammelsendung**
über alle Lose (Entscheid Raphael 11.07.2026), kein Einzelversand je Los.

1. Je fertiges Los liegt das Dossier (Ziff. 3) in `…03 AS versand/` und hat das
   Konsistenz-Gate (Ziff. 4) bestanden; Checkpoint Raphael je Los.
2. Sind ALLE Lose des Pakets freigegeben: **Gesamt-ZIP über alle Gewerk-Ordner** —
   `YYMMDD_<Projektnr>_Submissionsdossier_GESAMT.zip`, ein Unterordner je Los —
   ablegen in `03 BKP/99 Übergabe PW Sammelsendung/`; Doppel-Ablage zusätzlich in
   `30 JANS AI HUB OUTPUT/submission/<projekt>/uebergabe/`.
3. **Gesamt-Übergabeprotokoll** (1 Seite: alle Lose, Plan-/LV-Stände je Los, offene
   Punkte = keine) beilegen; EINE WeTransfer-Sammelsendung an die Bauleitung
   vorbereiten; Begleitmail kurz, Hinweis «Submissions-Rückfragen der Unternehmer
   bitte direkt an die Bauleitung».
4. Übergabe im Übergabeprotokoll + Logbuch (Skill `logbuch`) festhalten —
   ab da liegt der Ball bei der Bauleitung (sauberer Schnitt, Beweissicherung).

## 6. Warum so streng (Hintergrund)

Der Übergabe-Modus existiert, weil ein knappes Architektur-Budget keine laufende
Submissions-Betreuung deckt. Jede Rückfrage der Bauleitung ist unbezahlte Arbeit —
das Konsistenz-Gate (Ziff. 4) ist deshalb kein Perfektionismus, sondern die
Budget-Schutzmauer. Lieber eine Stunde mehr Prüfung vor der Übergabe als zehn
Telefonate danach.
