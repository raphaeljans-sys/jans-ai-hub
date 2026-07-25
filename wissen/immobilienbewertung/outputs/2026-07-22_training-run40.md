# Lern-Report Immobilienbewertung — Training-Run 40 (2026-07-22)

**Ergebnis in einem Satz:** Delta-Null-Bestaetigungslauf — kein neuer Ingest, keine
Artikelaenderung; die KB ist unveraendert saturiert und hat keine vom Loop selbststaendig
schliessbare Aufgabe mehr.

## Ablauf dieses Laufs

1. **Stand gelesen:** `training/PROGRAMM.md`, `training/curriculum.md` (Stand Run 39),
   `raw/_INGESTED.md`, `wiki/wissensluecken.md`. Befund: Wuest-Kurs (W0–W10) + alle
   Ergaenzungsquellen (E1–E10) + alle auto-schliessbaren T-Aufgaben eingearbeitet; die letzte
   selbst schliessbare Aufgabe (D6 Luzern) ist seit Run 36 zu. Alle verbleibenden Luecken sind
   extern gebunden (Bring-Schulden Raphael D1/D2/D5/D7/D9/D10 bzw. zeitlich blockiert:
   Langnau/Zollikon/Luzern-BZO fruehestens 2027, naechster amtlicher Referenzzins 01.09.2026).

2. **10 Themen NICHT erfunden.** Bei einer saturierten KB 10 Themen zu konstruieren waere ein
   Verstoss gegen die Leitplanke «Nie erfinden» (PROGRAMM.md). Stattdessen der ehrliche
   Delta-Check der drei einzigen Kanaele, ueber die neue Arbeit entstehen koennte:

   - **Neuer JANS-Bewertungsfall?** Bewertungsordner
     `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/` direkt gelistet — **unveraendert**, juengster
     Fall weiterhin **Wangen 8855 Bahnhofstrasse 27 LB** (09.06.). 10 Faelle/Ordner, kein neuer
     seit Run 6. Kein Trigger.
   - **Marktpuls?** Bewusst **nicht** per Web geprueft (Drossel-Rule `auto-verbesserungen`
     260714, Wochenlimit schonen). Kein neuer amtlicher Stichtag erreicht: SNB-Leitzins und
     Referenzzins 1.25 % naechste Publikation **01.09.2026**; KB bleibt beim belegten
     Durchschnittszinssatz 1.31 % per 31.03.2026. Kein Trigger.
   - **Verifikations-Kandidat?** Alle Kernkomplexe (Healthcare-Kennwerte, Ertragswert-/
     Residualwert-Rechnungen, Nutzungskonzeptions-Kennzahlen, Landwert-Lehrstueck) wurden in
     den Runs 18–22 per Modell D exakt reproduziert. Eine weitere Wiederholung waere unter der
     Token-Drosselung nicht gerechtfertigt.

3. **Kein Eskalations-Delta.** Beide offenen Pendenzen stehen bereits sichtbar in
   `logbuch/fristen.md` und werden **nicht** erneut geflaggt (der Trainings-Report ist als
   Meldekanal an Raphael nachweislich untauglich):
   - **Loop-Ruecktaktung** — Eintrag 19.07.2026, Status «offen, Entscheid Raphael»
     (Optionen: woechentlich ODER ereignisgesteuert bei neuem Fall / Stichtag 01.09.2026).
   - **Oberrieden-Hoehenkorrektur** — Eintrag 17.07.2026, Rule `auto-verbesserungen` 260624
     nennt faelschlich «9.0 m traufseitig», amtlich sind 8.5 m (9.0 m = Flachdach-Fassadenhoehe).

## Was gelernt / geaendert

- **Nichts inhaltlich geaendert** — kein neuer Fakt, keine Statushebung, keine neue Luecke.
- Bestaetigt: die KB ist seit Run 16 (auto-schliessbare Rueckstaende) bzw. Run 36 (letzter
  Restposten) saturiert; Runs 34/35/37/38/39 waren bereits Delta-Null-Laeufe. Run 40 reiht sich
  ein — der sechste folgenlose Bestaetigungslauf in Folge.

## Was als naechstes

- **Entscheid Raphael zur Ruecktaktung ausstehend** (im Fristen-Register seit 19.07.). Bis dahin
  bleibt der Nachttakt 02:50; jeder Lauf ohne neuen Fall / neues Rohmaterial / neuen amtlichen
  Marktwert bleibt ein Delta-Null-Bericht.
- **Produktiver Ingest erst wieder bei einem Trigger:** neuer Ordner im Bewertungsordner,
  Bring-Schuld-Material einer D-Luecke, oder Stichtag **01.09.2026** (Referenzzins/SREBI Q2).
