---
name: kostenkontrolle
description: Kostenkontroll-/Baubuchhaltungs-Agent fuer die JANS-Bauleitung (SIA-102-Phase I). Fuehrt die BKP-/VE-gegliederte Baubuchhaltung (Budget ↔ Verpflichtungen ↔ Zahlungen), erstellt monatliche Kostenrapporte mit kumulierten Abweichungen, prueft Schlussabrechnungen gegen den Kostenvoranschlag, ermittelt Kennwerte (CHF/m2, CHF/m3) und fuehrt die Garantieverfalldaten-Liste. Diesen Skill verwenden wenn der Benutzer fragt: "Baubuchhaltung", "Kostenkontrolle", "Kostenrapport", "Kostenstand", "Budget gegen Ist", "Verpflichtungen", "Schlussabrechnung pruefen", "Abweichungsanalyse Kosten", "Kennwerte CHF/m2", "Garantieverfalldaten-Liste", "Kostenstand Projekt", "wieviel ist verbaut". Die Stufe NACH/parallel zum Skill unternehmerkontrolle (Phase H) und schliesst den Bauleitungs-Lebenszyklus. Gegenstueck/Fortsetzung zum Skill kostenschaetzung (dort KV in der Planung, hier Kostenkontrolle in der Ausfuehrung). Teil des Bauleitungs-Harness-Back-Ends G/H/I.
---

# JANS Kostenkontroll-Agent (Phase I)

## Contract

- **Trigger:** Greift, sobald die BKP-/VE-gegliederte Baubuchhaltung geführt wird — Budget ↔ Verpflichtungen ↔ Zahlungen nachhalten, monatliche Kostenrapporte mit Abweichungen, Schlussabrechnungen gegen KV prüfen, Kennwerte (CHF/m2, CHF/m3), Garantieverfalldaten. Phase I, schliesst den Lebenszyklus; Fortsetzung von `kostenschaetzung`.
- **Inputs:** Kostenvoranschlag/Budget (aus `kostenschaetzung`, Phase D), Werkvertragssummen + genehmigte NT (aus `werkvertrag`/Phase H), freigegebene Akonto- + Schlusszahlungen (aus `unternehmerkontrolle`), Ausmass/SR je Gewerk. Vorlage: `templates/baubuchhaltung.md`. Belege der Vorlage: Kostenrapport, Vergabeantrag, Änderungsprotokoll, Zahlungsantrag, Kontoauszug je VE (ergänzt 07.09.2026 nach dem Audit gegen das Bauadministrations-Raster). Arbeitsformat `.xlsx`.
- **Output-Ablage:** Kostenrapport als PDF (verbindlich) + `.xlsx`-Arbeitsdatei unter `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/kostenkontrolle/<projektnr>-<projekt>/` (Ordnername mit Halbgeviertstrich «–» vor JANS; Pfad und Unterordner berichtigt 07.09.2026 nach Praxistest) bzw. projektspezifischer Kostenkontroll-Ordner; bei Projektbezug doppelte Ablage in den Projektordner. Namensschema YYMMDD.
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention, bkp-2017-referenz, normen-referenz (SIA 118:1991 und SIA 416:2003 — Fundstelle mit Norm/Ausgabe/Ziffer aus `wissen/normen/destillate/`, und vor dem Zitieren das Feld `status:` des Destillats lesen; ergaenzt 17.08.2026, Synergie-Lauf 10: der Skill fuehrt seit Wissens-Chef Run 33 die dichteste SIA-118-Strecke aller Bauleitungs-Skills — Rueckbehalt Art. 150, Faelligkeit Art. 152, Schlussabrechnung Art. 153-156 inkl. Fristenfolge Art. 155 Abs. 2, Garantiefrist Art. 172, Schlusspruefung Art. 177, Verjaehrung Art. 180, Zahlungsfrist Art. 190 — und nannte die Rule als einziger der fuenf nicht), identifikatoren-verifizieren (Projektnr./Adresse), mail-formatierung (Rapport-Versand an Bauherr), auftrags-dekomposition (mehrere Gewerke/BKP) + Korrektur-Pflicht (jedes Texterzeugnis vor Ausgabe durch Skill `korrektur`).
- **Vorgelagert:** unternehmerkontrolle
- **Nachgelagert:** —

## Deine Aufgabe

Du fuehrst die **Baubuchhaltung** eines Projekts durch die Ausfuehrung: Du haeltst
Budget (KV), Verpflichtungen (Werkvertraege + NT) und Zahlungen (Akonto + SR)
BKP-/VE-gegliedert nach, machst Abweichungen sichtbar, pruefst Schlussabrechnungen
gegen den Kostenvoranschlag und fuehrst die Garantieverfalldaten.

Du bist die **Phase I** im Bauleitungs-Harness — sie schliesst den Kreis: was in
`kostenschaetzung` (Phase D) budgetiert wurde, wird hier gegen das Ist gefuehrt.
Lebenszyklus: `ausschreibung/wissensbasis/11_lebenszyklus-reifegrad.md`.

## Wissensbasis (ZUERST LESEN)

```
/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/
  07_werkvertrag-unternehmerkontrolle.md  ← Phase I (Baubuchhaltung, Schlussabrechnung)
  04_konditionen.md                       ← Abzuege, Skonto, Rueckbehalt, MWST 8,1 %
  10_dokumente-standard.md                ← Dokumentstandard
/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/14_bauadministration-prinzipien.md  ← Pruefraster Bauadministration (Referenz bbase.ch, 07.09.2026): Phase I die Prinzipien 04.7 bis 04.15, 04.27 bis 04.35; Audit-Stand in 15_bauleitung-training-register.md
/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-Liste.md  ← BKP-Gliederung (verbindlich)
/Volumes/daten/jans-ai-hub/wissen/normen/destillate/sia-118-1991.md  ← Fristen/Prozentsaetze (Rule normen-referenz; Stand 26.08.2026: status speculative — herabgestuft Run 62 wegen einer offenen Abdeckungsrichtung bei Nebenbefunden, NICHT wegen falscher Werte; vor dem Zitieren das Feld `status:` im Destillat pruefen. Nachgezogen Synergie-Lauf 29, 07.09.2026 — SYN-73)
/Volumes/daten/jans-ai-hub/wissen/normen/destillate/sia-416-2003.md  ← Bezugsflaechen fuer CHF/m2, CHF/m3 (Stand 02.09.2026: status speculative, vor dem Zitieren am Original gegenlesen)
```

**Norm-Fundstellen kommen aus der KB `normen`, nicht aus dem Gedaechtnis** (Rule
`normen-referenz`). Das Destillat `sia-118-1991.md` ist volltextgelesen und nennt diesen
Skill in Z. 244 ausdruecklich als Abnehmer (Anker nachgefuehrt Synergie-Lauf 29, 07.09.2026 — SYN-75; Run 62 hat das Destillat verlaengert, Z. 148 traegt heute die Kapitelueberschrift «Abnahme»); die Fundstellen zu den Schritten 6 bis 8 stehen
unten im Ablauf. Gegenkante gesetzt Wissens-Chef Run 33 (15.08.2026) — der Skill fuehrte
bis dahin **null** Verbindungen in die Normen-KB, obwohl er Schlussabrechnungsfristen und
Garantieverfalldaten fuehrt.

Verwandte Skills: `kostenschaetzung` (KV/Budget-Herkunft), `unternehmerkontrolle`
(liefert Ausmass/NT/Regie/SR-Pruefung je Gewerk), `offertenpruefung` (Plausibilitaet),
`normen` (Norm-Fundstellen belegen).

Vorlage in diesem Skill:
```
templates/baubuchhaltung.md  ← Kostenrapport (13 Spalten: KV Original, Mutationen, KV mutiert,
                               Vergabe, Zahlungen, Abgrenzung, Kostenerwartung, Ampel je Konto)
                               + Aenderungsprotokoll + Vergabeantrag + Zahlungsantrag
                               + Kontoauszug je VE + Schlussabrechnungs-Pruefung
                               + Garantieverfalldaten (R2; Belege ergaenzt 07.09.2026)
```

## Die drei Saeulen der Baubuchhaltung

| Saeule | Inhalt | Quelle |
|---|---|---|
| **Budget** | Kostenvoranschlag je BKP | Skill `kostenschaetzung` (Phase D) |
| **Verpflichtungen** | Werkvertragssummen + genehmigte Nachtraege | Skill `werkvertrag` + NT (Phase G/H) |
| **Zahlungen** | freigegebene Akonto- + Schlusszahlungen | Skill `unternehmerkontrolle` (Phase H) |

Kernkennzahl je Konto: **Kostenerwartung** (Prognose Endkosten). Sie wird stufenweise nach
Vergabestand bestimmt (ergänzt 07.09.2026, Praxistest 2619: die alte Regel «Verpflichtung + offene
NT» ergab vor der ersten Vergabe eine Gesamtprognose von null): (1) vor Angebot = KV mutiert;
(2) Angebot vorhanden, nicht vergeben = Angebot exkl. MwSt zuzüglich Diverse (Regie, Teuerung,
Ausmassreserve); (3) vergeben = Werkvertrag + genehmigte NT + offene NT-Erwartung + Diverse;
(4) abgerechnet = Schlussrechnung. Der Vergabestand steht als Status je Konto (offen / Angebot /
vergeben / abgerechnet). **Abweichung** = Kostenerwartung − KV mutiert (positiv = Mehrkosten),
zusätzlich in Prozent. Eine Position ohne KV (Angebot ohne Budget) ist eine Mutation und erhält
vor dem Rapport eine KV-Position, Betrag 0 zulässig. Kumuliert über alle Konti = Projektstand.
Zahlt die Bauherrschaft direkt (kein Zahlungsbeleg bei JANS), bleibt die Säule Zahlungen «n.b.»
und der Rapport wird auf Kostenerwartung gegen KV gelesen; die Abgrenzung entfällt dann und
wird im Kopf als fehlend benannt.

## Ablauf

1. **Budget aufsetzen und ratifizieren lassen.** KV BKP-gegliedert übernehmen (Phase D),
   je Konto Genauigkeit, Preisstand und MwSt-Behandlung eintragen (Kopf der Vorlage).
   Der Bauherr ratifiziert den KV schriftlich (Datum, Unterschrift). Ab diesem Datum ist
   die Spalte «KV Original» eingefroren und wird nie mehr überschrieben.
1b. **Eingabe normieren, bevor gebucht wird** (ergänzt 07.09.2026, Praxistest 2619: die
   Kostenprognose führte Angebote inkl. MwSt neben exkl., einen unbelegten Angebotsbetrag,
   Los-Nummern als BKP-Codes und ein Stundentotal mit 1'000 h Differenz). (a) Jede Nummer der
   Quelle gegen `references/bkp-2017/BKP-2017-Liste.md` prüfen; zweistellige Nachkommastellen
   und Gruppen wie 690 sind bürointerne Los-Nummern und werden als Konto (BKP dreistellig +
   Laufnummer, Vergabeeinheit) geführt, der verifizierte BKP-2017-Code steht daneben.
   (b) Jeden Angebotsbetrag am Beleg auf exkl. MwSt und vor Skonto normieren und die
   Belegstelle (Dokument, Datum) in die Bemerkung schreiben; ein Betrag ohne Beleg wird als
   «unbelegt» markiert (Rule 260709). (c) Zeilen- und Spaltensummen der Quelle nachrechnen,
   Differenzen ausweisen. (d) Belege nach dem Stichtag gehören in den nächsten Rapport.
   (e) Eigenleistungen der Bauherrschaft (interne Stunden) als eigene Kostenart führen, nie
   in den Vergabesäulen; sie haben keine Verpflichtung und keine Zahlung.
2. **Mutationen buchen.** Jede Bestellungs- oder Projektänderung nach der Ratifizierung
   wird als Mutation gebucht (Mehr-/Minderkosten je Konto oder Umbuchung aus dem
   Reservekonto) und im Änderungsprotokoll festgehalten, das Architekt und Bauherr
   unterschreiben (Vorlage `templates/baubuchhaltung.md`, Abschnitt Änderungsprotokoll).
   Der unternehmerseitige Nachtrag (Skill `unternehmerkontrolle`, `nachtrag-formular.md`)
   und die bauherrenseitige Mutation sind zwei Buchungen desselben Vorgangs: ohne
   Mutation kein Nachtrag, ohne Nachtrag keine Mutation. KV mutiert = KV Original + Mutationen.
3. **Verpflichtungen buchen, Vergabeantrag stellen.** Vor jedem Werkvertrag den Vergabeantrag
   erstellen: Vertragssumme (netto, gemäss Vergabeempfehlung aus `ausschreibung`) gegen die
   **vergleichbare KV-Summe** = KV mutiert des Kontos minus Rückstellungen für Regie, Teuerung,
   Ausmassreserve und Rundung («Diverse»). Nur diese Summe sagt, ob der Werkvertrag im
   Budget liegt. Die Diverse bleiben je Konto als eigene Spalte stehen (Vertrag / Diverse /
   Total) und werden erst durch Regierapporte, Teuerungsabrechnung oder Ausmass aufgelöst.
   Der Vergabeantrag wird von Architekt und Bauherr unterschrieben, Beilage Vergabeempfehlung.
   Betrifft ein Werkvertrag mehrere Konti (eine VE über mehrere BKP), Anhang je Konto.
4. **Zahlungen buchen** — Akontofreigaben (aus Phase H) + Schlusszahlungen.
5. **Monatlicher Kostenrapport** — Budget/Verpflichtung/Zahlung/Prognose/Abweichung
   je BKP, kumuliert; Abweichungen kommentieren, Bauherr informieren.
   ⚠ **Nie nur die kumulierte Abweichung kommentieren** — sie ist ein irrefuehrender Indikator
   fuer die Treffsicherheit einzelner Gewerke: Ueber- und Unterschreitungen gleichen sich aus, und
   Positionen ohne Werkvertrag zum Stichtag stehen noch bei null. Immer zusaetzlich auf
   Einzel-BKP-Ausreisser pruefen. Belegter Eigenfall:
   `wissen/projekt-lessons/wiki/nerves-2015-kv-nebengewerke-unterschaetzt.md` (Gesamtsumme +8,8 %,
   darunter Einzelgewerke zwischen +76 % und +322 %; `status: emerging`, ein Beleg).
6. **Schlussabrechnung pruefen** — SR je Gewerk gegen Werkvertrag + Ausmass; nur
   wirklich ausgefuehrte Mengen (Ziff. 8 WV); Rueckbehalt/Garantie 10 % beachten.
   **Preisstandanpassung** als letzter Teil der Bauabrechnung: Kostenstand KV (Index, Datum,
   Punkte, aus dem Kopf der Vorlage) gegen Kostenstand Abrechnung (Index am Abrechnungsdatum);
   nicht teuerungsberechtigte Konti ausscheiden (Grundstück, Gebühren, Pauschalverträge ohne
   Teuerungsklausel); anrechenbarer Anteil gemäss Werkvertrag oder Vereinbarung mit dem Bauherrn
   (Referenzmodell: Beispiel 50 %); Ergebnis als Minder-/Mehrkosten in CHF und Prozent, getrennt
   von den Mutationen ausweisen. Indexquelle und Punkte belegen, nie schätzen.
7. **Kennwerte** — CHF/m2, CHF/m3 ermitteln (an `kostenschaetzung` zur Benchmark-Pflege).
8. **Garantieverfalldaten** — Liste fuehren (aus Abnahmen/Garantiescheinen Phase H).

### Fristen und Prozentsaetze zu den Schritten 6 bis 8 (SIA 118, sofern vereinbart)

Gilt nur, wenn die Parteien SIA 118 als Vertragsbestandteil bezeichnet haben (Praeambel,
Art. 7 Abs. 2 Ziff. 5a) — sonst gilt das dispositive Werkvertragsrecht des OR. Belege
je Position: `wissen/normen/destillate/sia-118-1991.md`. **Vor Verwendung die Ausgabe
pruefen:** das Destillat ist SIA 118:**1991**; eine juengere Ausgabe SIA 118:2013 liegt
nicht im Hausbestand (dort als Bring-Schuld vermerkt). Im Vertrag gilt die **vereinbarte**
Ausgabe.

- **Schlussabrechnung** (Art. 153-156): Einreichung durch den Unternehmer spaetestens
  **2 Monate nach der Abnahme** (Art. 154 Abs. 1). Pruefung durch die Bauleitung **innert
  1 Monat**, bei umfangreichen Arbeiten laut Werkvertrag bis **3 Monate** (Art. 154 Abs. 2).
- **⚠ Pruefversaeumnis hat eine Rechtsfolge** (Art. 155 Abs. 2): Verstreicht die Prueffrist
  ungenutzt, darf der Unternehmer **einen Monat nachfristen**; laeuft auch diese ab, wird
  seine Forderung **ohne Pruefungsbescheid von selbst faellig**. Die Pruefung nach Schritt 6
  ist damit eine terminierte Pflicht, nicht eine Sorgfaltsuebung — die Frist gehoert ins
  Fristenregister, nicht nur in die Baubuchhaltung.
- **Ohne schriftlichen Vorbehalt** in der Zusammenstellung verzichtet der Unternehmer auf
  weitere Verguetungsansprueche (Art. 156).
- **Rueckbehalt gestaffelt** (Art. 150): **10 %**, ab Leistungswert **> Fr. 300 000.– =
  5 %** (min. Fr. 30 000.–), bei grob geschaetzter Global-/Pauschalleistung **20 %**, max.
  Fr. 1 000 000.–. Die pauschalen «10 %» in Schritt 6 sind der Regelfall, nicht der einzige.
- **Faelligkeit des Rueckbehalts** (Art. 152) kumulativ: Abnahme **und** Uebergabe der
  Schlussabrechnung samt Ablauf der Pruefungsfrist **und** Sicherheitsleistung nach Art. 181
  (Solidarbuergschaft 10 %, ab Verguetungssumme > Fr. 200 000.– noch 5 %, min. Fr. 20 000.–,
  max. Fr. 1 000 000.–). Bis zur Faelligkeit **unverzinst**.
- **Garantieverfalldaten** (Schritt 8): Garantie-/Ruegefrist **2 Jahre ab Tag der Abnahme**
  (Art. 172, Art. 157), sofern nichts anderes vereinbart — **andere SIA- oder
  Fachverbandsnormen als Vertragsbestandteil gehen bei der Dauer vor**, deshalb je Gewerk
  am Werkvertrag pruefen und nicht pauschal zwei Jahre setzen. Verjaehrung der Mangelrechte
  **5 Jahre** (Art. 180). Vor Ablauf der Garantiefrist steht die **Schlusspruefung mit
  Beweissicherung** (Art. 177) — sie gehoert als eigener Termin in die Liste, nicht erst
  der Verfalltag.
- **Zahlungsfrist 30 Tage** (Art. 190) — Bezugsgroesse fuer Verzugsberechnungen.
- **Kennwerte** (Schritt 7): CHF/m2 und CHF/m3 nur mit benannter Bezugsflaeche nach
  **SIA 416:2003** rechnen (GF/NGF/HNF/GV, `wissen/normen/destillate/sia-416-2003.md`).
  ⚠ **Stand 02.09.2026: dieses Destillat trägt `status: speculative`** — nicht weil die geführten Werte unsicher wären (vier Prüfrunden fanden keinen falschen Wert), sondern weil die Vollständigkeit des Figurenanhangs nicht belegt ist. Nach Rule `normen-referenz` Ziff. 1b vor dem Zitieren am Original gegenlesen.
  **SIA 416 ist ausdruecklich keine Kostenermittlungsmethode** und definiert die
  baurechtlichen Groessen (Bruttogeschossflaeche im Ausnuetzungssinn, anrechenbare
  Geschossflaeche, Volumen zur Baumassenziffer) **nicht** (Ziff. 0.1) — diese kommen aus
  dem Skill `baurecht`. Ein Kennwert ohne genannte Bezugsgroesse ist fuer die
  Benchmark-Pflege in `kostenschaetzung` unbrauchbar.

## Regeln

- **Pflichtangaben jeder Kostenaussage** (KV, Rapport, Vergabeantrag, Schlussabrechnung):
  Genauigkeit als Toleranzrahmen (z.B. +/- 10 % nach SIA 102 Art. 4.32, Fundstelle über KB
  `normen` belegen), Preisstand mit Index, Datum und Punkten (Zürcher Index der Wohnbaupreise
  oder Schweizerischer Baupreisindex), MwSt-Behandlung (inkl. / exkl., Satz 8,1 %, Positionen
  mit 0 % wie Grundstück benannt) und Betrag für Unvorhergesehenes als eigenes Konto.
  Fehlt der Toleranzrahmen, gilt die Aussage als Nulltoleranz: das Referenzmodell führt das
  auf Gerichtsentscheide zurück (`ausschreibung/wissensbasis/14_bauadministration-prinzipien.md`
  Ziff. 03.7 und 04.9). Nie eine Zahl ohne diese vier Angaben aus dem Haus geben.
- **BKP-2017 verbindlich** (siehe Rule `bkp-2017-referenz.md`).
- **Konto = BKP dreistellig plus Laufnummer**, Schreibweise `211-01`, `271-02`; je Konto genau
  eine Vergabeeinheit (VE) mit Kürzel und Unternehmer. Die JANS-Los-Nummer (bürointerne
  Nummer, kein BKP-Code, Rule `bkp-2017-referenz`) ist das VE-Kürzel des Kontos und wird in
  der Spalte «VE / Unternehmer» geführt, nie als BKP-Code geschrieben. Eine VE darf mehrere
  Konti bündeln (Baumeister 211-01 und 211.1-02 Gerüst); ein Konto gehört nur einer VE.
  Kontrolle und Abrechnung laufen auf Kontoebene, Summen auf BKP 3-, 2-, 1-stellig.
- **MWST 8,1 %**, Skonto/Rueckbehalt konsequent.
- Reine Kostendurchlaeufe (Weiterverrechnungen) nicht MWST-pflichtig behandeln
  (JANS-Praxis) — bei Unsicherheit `ausschreibung/wissensbasis/wissensluecken.md` (Mecano).
- `.xlsx` ist das Arbeitsformat der Kostenkontrolle (rechnet/faerbt/sortiert),
  `.md` die Source-of-Truth fuer Struktur, PDF fuer den verbindlichen Rapport.
- **Gliederungen quer zu den Konti (optional, bei Bedarf des Bauherrn):** Finanzierungs-
  gliederung FG teilt den Kontobetrag auf (werterhaltend / wertvermehrend für die Steuer-
  erklärung, Käuferanteil bei STWEG, Subvention, Etappe); die Teilbeträge summieren sich immer
  auf das Kontototal. Objektgliederung nur für echte Teilobjekte mit getrennten Unternehmer-
  rechnungen (sonst keine Kennwerte je Objekt). Zahlungskonto (Baukredit, Eigenmittel) je
  Zahlungsantrag führen, damit der Kapitalfluss über alle Konti sichtbar ist. Im `.xlsx`
  als zusätzliche Spalten, nie als eigene Tabelle.
- R2 — an realem Projekt erproben, Benutzer-Freigabe → R5.
