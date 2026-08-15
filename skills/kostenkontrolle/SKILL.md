---
name: kostenkontrolle
description: Kostenkontroll-/Baubuchhaltungs-Agent fuer die JANS-Bauleitung (SIA-102-Phase I). Fuehrt die BKP-/VE-gegliederte Baubuchhaltung (Budget ↔ Verpflichtungen ↔ Zahlungen), erstellt monatliche Kostenrapporte mit kumulierten Abweichungen, prueft Schlussabrechnungen gegen den Kostenvoranschlag, ermittelt Kennwerte (CHF/m2, CHF/m3) und fuehrt die Garantieverfalldaten-Liste. Diesen Skill verwenden wenn der Benutzer fragt: "Baubuchhaltung", "Kostenkontrolle", "Kostenrapport", "Kostenstand", "Budget gegen Ist", "Verpflichtungen", "Schlussabrechnung pruefen", "Abweichungsanalyse Kosten", "Kennwerte CHF/m2", "Garantieverfalldaten-Liste", "Kostenstand Projekt", "wieviel ist verbaut". Die Stufe NACH/parallel zum Skill unternehmerkontrolle (Phase H) und schliesst den Bauleitungs-Lebenszyklus. Gegenstueck/Fortsetzung zum Skill kostenschaetzung (dort KV in der Planung, hier Kostenkontrolle in der Ausfuehrung). Teil des Bauleitungs-Harness-Back-Ends G/H/I.
---

# JANS Kostenkontroll-Agent (Phase I)

## Contract

- **Trigger:** Greift, sobald die BKP-/VE-gegliederte Baubuchhaltung geführt wird — Budget ↔ Verpflichtungen ↔ Zahlungen nachhalten, monatliche Kostenrapporte mit Abweichungen, Schlussabrechnungen gegen KV prüfen, Kennwerte (CHF/m2, CHF/m3), Garantieverfalldaten. Phase I, schliesst den Lebenszyklus; Fortsetzung von `kostenschaetzung`.
- **Inputs:** Kostenvoranschlag/Budget (aus `kostenschaetzung`, Phase D), Werkvertragssummen + genehmigte NT (aus `werkvertrag`/Phase H), freigegebene Akonto- + Schlusszahlungen (aus `unternehmerkontrolle`), Ausmass/SR je Gewerk. Vorlage: `templates/baubuchhaltung.md`. Arbeitsformat `.xlsx`.
- **Output-Ablage:** Kostenrapport als PDF (verbindlich) + `.xlsx`-Arbeitsdatei unter `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/submission/<projektnr>-<projekt>/` bzw. projektspezifischer Kostenkontroll-Ordner; bei Projektbezug doppelte Ablage in den Projektordner. Namensschema YYMMDD.
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention, bkp-2017-referenz, identifikatoren-verifizieren (Projektnr./Adresse), mail-formatierung (Rapport-Versand an Bauherr), auftrags-dekomposition (mehrere Gewerke/BKP) + Korrektur-Pflicht (jedes Texterzeugnis vor Ausgabe durch Skill `korrektur`).
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
/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-Liste.md  ← BKP-Gliederung (verbindlich)
/Volumes/daten/jans-ai-hub/wissen/normen/destillate/sia-118-1991.md  ← Fristen/Prozentsaetze (Rule normen-referenz)
/Volumes/daten/jans-ai-hub/wissen/normen/destillate/sia-416-2003.md  ← Bezugsflaechen fuer CHF/m2, CHF/m3
```

**Norm-Fundstellen kommen aus der KB `normen`, nicht aus dem Gedaechtnis** (Rule
`normen-referenz`). Das Destillat `sia-118-1991.md` ist volltextgelesen und nennt diesen
Skill in Z. 148 ausdruecklich als Abnehmer; die Fundstellen zu den Schritten 5 bis 7 stehen
unten im Ablauf. Gegenkante gesetzt Wissens-Chef Run 33 (15.08.2026) — der Skill fuehrte
bis dahin **null** Verbindungen in die Normen-KB, obwohl er Schlussabrechnungsfristen und
Garantieverfalldaten fuehrt.

Verwandte Skills: `kostenschaetzung` (KV/Budget-Herkunft), `unternehmerkontrolle`
(liefert Ausmass/NT/Regie/SR-Pruefung je Gewerk), `offertenpruefung` (Plausibilitaet),
`normen` (Norm-Fundstellen belegen).

Vorlage in diesem Skill:
```
templates/baubuchhaltung.md  ← Kostenstand-Tabelle (Budget/Verpflichtung/Zahlung/Prognose)
                               + Schlussabrechnungs-Pruefung + Garantieverfalldaten (R2)
```

## Die drei Saeulen der Baubuchhaltung

| Saeule | Inhalt | Quelle |
|---|---|---|
| **Budget** | Kostenvoranschlag je BKP | Skill `kostenschaetzung` (Phase D) |
| **Verpflichtungen** | Werkvertragssummen + genehmigte Nachtraege | Skill `werkvertrag` + NT (Phase G/H) |
| **Zahlungen** | freigegebene Akonto- + Schlusszahlungen | Skill `unternehmerkontrolle` (Phase H) |

Kernkennzahl je BKP: **Prognose Endkosten** = Verpflichtung + offene NT-Erwartung;
**Abweichung** = Prognose − Budget. Kumuliert ueber alle BKP = Projektstand.

## Ablauf

1. **Budget aufsetzen** — KV BKP-gegliedert uebernehmen (Phase D).
2. **Verpflichtungen buchen** — je vergebenem Gewerk Werkvertragssumme + genehmigte NT.
3. **Zahlungen buchen** — Akontofreigaben (aus Phase H) + Schlusszahlungen.
4. **Monatlicher Kostenrapport** — Budget/Verpflichtung/Zahlung/Prognose/Abweichung
   je BKP, kumuliert; Abweichungen kommentieren, Bauherr informieren.
5. **Schlussabrechnung pruefen** — SR je Gewerk gegen Werkvertrag + Ausmass; nur
   wirklich ausgefuehrte Mengen (Ziff. 8 WV); Rueckbehalt/Garantie 10 % beachten.
6. **Kennwerte** — CHF/m2, CHF/m3 ermitteln (an `kostenschaetzung` zur Benchmark-Pflege).
7. **Garantieverfalldaten** — Liste fuehren (aus Abnahmen/Garantiescheinen Phase H).

### Fristen und Prozentsaetze zu den Schritten 5 bis 7 (SIA 118, sofern vereinbart)

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
  seine Forderung **ohne Pruefungsbescheid von selbst faellig**. Die Pruefung nach Schritt 5
  ist damit eine terminierte Pflicht, nicht eine Sorgfaltsuebung — die Frist gehoert ins
  Fristenregister, nicht nur in die Baubuchhaltung.
- **Ohne schriftlichen Vorbehalt** in der Zusammenstellung verzichtet der Unternehmer auf
  weitere Verguetungsansprueche (Art. 156).
- **Rueckbehalt gestaffelt** (Art. 150): **10 %**, ab Leistungswert **> Fr. 300 000.– =
  5 %** (min. Fr. 30 000.–), bei grob geschaetzter Global-/Pauschalleistung **20 %**, max.
  Fr. 1 000 000.–. Die pauschalen «10 %» in Schritt 5 sind der Regelfall, nicht der einzige.
- **Faelligkeit des Rueckbehalts** (Art. 152) kumulativ: Abnahme **und** Uebergabe der
  Schlussabrechnung samt Ablauf der Pruefungsfrist **und** Sicherheitsleistung nach Art. 181
  (Solidarbuergschaft 10 %, ab Verguetungssumme > Fr. 200 000.– noch 5 %, min. Fr. 20 000.–,
  max. Fr. 1 000 000.–). Bis zur Faelligkeit **unverzinst**.
- **Garantieverfalldaten** (Schritt 7): Garantie-/Ruegefrist **2 Jahre ab Tag der Abnahme**
  (Art. 172, Art. 157), sofern nichts anderes vereinbart — **andere SIA- oder
  Fachverbandsnormen als Vertragsbestandteil gehen bei der Dauer vor**, deshalb je Gewerk
  am Werkvertrag pruefen und nicht pauschal zwei Jahre setzen. Verjaehrung der Mangelrechte
  **5 Jahre** (Art. 180). Vor Ablauf der Garantiefrist steht die **Schlusspruefung mit
  Beweissicherung** (Art. 177) — sie gehoert als eigener Termin in die Liste, nicht erst
  der Verfalltag.
- **Zahlungsfrist 30 Tage** (Art. 190) — Bezugsgroesse fuer Verzugsberechnungen.
- **Kennwerte** (Schritt 6): CHF/m2 und CHF/m3 nur mit benannter Bezugsflaeche nach
  **SIA 416:2003** rechnen (GF/NGF/HNF/GV, `wissen/normen/destillate/sia-416-2003.md`).
  **SIA 416 ist ausdruecklich keine Kostenermittlungsmethode** und definiert die
  baurechtlichen Groessen (Bruttogeschossflaeche im Ausnuetzungssinn, anrechenbare
  Geschossflaeche, Volumen zur Baumassenziffer) **nicht** (Ziff. 0.1) — diese kommen aus
  dem Skill `baurecht`. Ein Kennwert ohne genannte Bezugsgroesse ist fuer die
  Benchmark-Pflege in `kostenschaetzung` unbrauchbar.

## Regeln

- **BKP-2017 verbindlich** (siehe Rule `bkp-2017-referenz.md`).
- **MWST 8,1 %**, Skonto/Rueckbehalt konsequent.
- Reine Kostendurchlaeufe (Weiterverrechnungen) nicht MWST-pflichtig behandeln
  (JANS-Praxis) — bei Unsicherheit `wissensluecken.md`.
- `.xlsx` ist das Arbeitsformat der Kostenkontrolle (rechnet/faerbt/sortiert),
  `.md` die Source-of-Truth fuer Struktur, PDF fuer den verbindlichen Rapport.
- R2 — an realem Projekt erproben, Benutzer-Freigabe → R5.
