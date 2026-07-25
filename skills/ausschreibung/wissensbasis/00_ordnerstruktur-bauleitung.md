# Master-Ablagestruktur Bauleitung (Harness-Skelett)

Quelle: `08_Bauleitung/0000_Bauleitungsordner` — die erprobte JANS-Projektablage.
Sie gliedert nach **SIA-Phasen-Buchstaben** und ist zugleich der Bauplan fuer
die Agenten-/Skill-Orchestrierung.

## Top-Ebene je Projekt

```
XX_00_Projektdaten          → Objekt, Bauherr, Beteiligte (Skill stammdaten)
00_01_Behoerden
00_02_Gewerke
00_03_Architekt
00_04_Planer
00_06_Termine               → Skill terminplanung
00_07_Protokolle            → Skill protokoll
00_08_Korrespondenz         → Agent email
00_09_Fotos/                → Bauphasen-Fotodoku (Bestand → Rohbau → Ausbau → Maengel)
00_C_Honorar                → Skill honorarberechnung-sia102
00_D_Kostenplanung          → Skill kostenschaetzung (KV / Grobkosten)
00_F_Ausschreibung          → Skill ausschreibung (LV, Versand, Vergabe)
00_G_Vertraege              → Werkvertrag
00_H_Unternehmer/           → Realisierung je Gewerk (Skill unternehmerkontrolle)
00_I_Kostenkontrolle        → Baubuchhaltung / Schlussabrechnung
```

Die Buchstaben C/D/F/G/H/I entsprechen den SIA-102-Phasen und der BBase-Modullogik:

| Buchstabe | SIA-Phase | Skill |
|---|---|---|
| C | Honorar | `honorarberechnung-sia102` |
| D | Kostenplanung (KV) | `kostenschaetzung` |
| F | Ausschreibung | `ausschreibung` |
| G | Vertraege (Werkvertrag) | _neu: werkvertrag_ |
| H | Unternehmer (Realisierung) | _neu: unternehmerkontrolle_ |
| I | Kostenkontrolle | _neu: kostenkontrolle_ |

## Je Gewerk (unter `00_H_Unternehmer/XX <BKP> <Gewerk>/`)

Pro Gewerk wiederholt sich dieselbe Struktur (Master = `XX 000 UN Vorlage`):

```
XX <BKP> 01 Grundlagen
XX <BKP> 02 Richtofferten
XX <BKP> 03 AS versand              (Ausschreibung versand / Abgebot versand)
XX <BKP> 04 Offerte UN              (je Anbieter: UN xy)
XX <BKP> 05 Vergabe                 (XX XXX UNGespr.docx = Unternehmergespraech)
XX <BKP> 06 WV                      (WV Unterlagen + Beilagen)
XX <BKP> 08 Korrespondenz/          (Aus / Ein, Lieferschein)
XX <BKP> 10 Rechnungen, NT, Regie
XX <BKP> 11 SR                      (Abnahmeprotokoll + Garantieschein)
```

## Platzhalter-Konvention

- `XX`  = Projekt-Nummer (z.B. 72)
- `YYY` = Projektkuerzel
- `XXX` / `<BKP>` = Gewerk-/BKP-Nummer (z.B. 271 Gipser, 285 Maler)
- Dateien: `YYMMDD_<Inhalt>_<Projekt>_<Gewerk>` (JANS-Dateinamen-Rule)

## Submissions-Block

```
1_Submission/
  a_Allgemeine Bedingungen
  b_Titelblatt_Offertenbeschrieb
  c_Begleitbrief
```

## Anwendung im Skill

Wenn ein neues Ausschreibungsprojekt startet, dient diese Struktur als
Soll-Ablage: pro Gewerk ein Ordnerbaum nach obigem Muster, gefuellt mit
LV (`.crbx`/`.md`/PDF), Anschreiben, Antwortformular und spaeter den Rueckmeldungen.
