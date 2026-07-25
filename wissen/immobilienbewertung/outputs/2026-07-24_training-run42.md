# Lern-Report Immobilienbewertung — Training-Run 42 (2026-07-24)

**Ergebnis in einem Satz:** Delta-Null-Bestaetigungslauf (neunter in Folge, Runs
34/35/37/38/39/40/41/42) — kein neuer Ingest, keine Artikelaenderung; die KB ist unveraendert
saturiert. Neu belegt: der einzige noch offene substanzielle KB-Punkt ist ein **Hygiene-Befund
(ae/oe/ue-Ersatzschreibung)** aus dem Health-Check 23.07., der **nicht** unbeaufsichtigt per
Massenersatz behoben werden darf.

## Ablauf dieses Laufs

1. **Voraussetzungen geprueft:** NAS gemountet; **keine Zweitinstanz** dieses Loops aktiv
   (Rule `auto-verbesserungen` 260724, Kollisionsschutz — `ps` sauber).

2. **Stand gelesen:** `training/PROGRAMM.md`, `training/curriculum.md` (Stand Run 41),
   `wiki/wissensluecken.md`, letzter Report `outputs/2026-07-23_training-run41.md` und der
   `outputs/2026-07-23_health-check.md`. Befund unveraendert: Wuest-Kurs (W0–W10) + alle
   Ergaenzungsquellen (E1–E10) + alle auto-schliessbaren T-Aufgaben eingearbeitet; der letzte
   selbst schliessbare Restposten (D6 Luzern) ist seit Run 36 zu. Alle verbleibenden Luecken
   sind extern gebunden (Bring-Schulden Raphael D1/D2/D5/D7/D9/D10 bzw. zeitlich blockiert:
   Langnau/Zollikon/Luzern-BZO fruehestens 2027, naechster amtlicher Referenzzins 01.09.2026).

3. **10 Themen NICHT erfunden.** Bei einer saturierten KB 10 Themen zu konstruieren waere ein
   Verstoss gegen die Leitplanke «Nie erfinden» (PROGRAMM.md). Stattdessen der ehrliche
   Delta-Check der drei einzigen Kanaele, ueber die neue Arbeit entstehen koennte:

   - **Neuer JANS-Bewertungsfall?** Bewertungsordner
     `IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/` direkt gelistet — **unveraendert** (10
     Fall-/Studienordner + `_Archiv`; Thalwil 9568 LB/MA/RW, Ebmatingen 3932 LB/RW, Langnau
     3338 LB, Niederhasli 2025 CS, Wald 8636 Desktop-/Volumenstudie STWE, Wangen 8855 LB).
     Juengster Bewertungsfall weiterhin **Wangen 8855 Bahnhofstrasse 27 LB**. Kein neuer Fall
     seit Run 6. Kein Trigger.
   - **Marktpuls?** Bewusst **nicht** per Web geprueft (Drossel-Rule `auto-verbesserungen`
     260714, Wochenlimit schonen). Kein neuer amtlicher Stichtag erreicht: SNB-Leitzins und
     Referenzzins 1.25 % naechste Publikation **01.09.2026**; KB bleibt beim belegten
     Durchschnittszinssatz 1.31 % per 31.03.2026. Kein Trigger.
   - **Verifikations-Kandidat?** Alle Kernkomplexe (Healthcare-Kennwerte, Ertragswert-/
     Residualwert-Rechnungen, Nutzungskonzeptions-Kennzahlen, Landwert-Lehrstueck) wurden in
     den Runs 18–22 per Modell D exakt reproduziert. Eine weitere Wiederholung waere unter der
     Token-Drosselung nicht gerechtfertigt.

4. **Kein Eskalations-Delta bei den zwei bekannten Pendenzen.** Beide stehen bereits sichtbar
   in `logbuch/fristen.md` (im Lauf gegengeprueft) und werden **nicht** erneut geflaggt:
   - **Loop-Ruecktaktung** — Eintrag 19.07.2026, Status «offen, Entscheid Raphael» (Optionen:
     woechentlich ODER ereignisgesteuert bei neuem Fall / Stichtag 01.09.2026). Steht jetzt
     seit fuenf Tagen ohne Entscheid; wird bewusst nicht erneut hochgezogen.
   - **Oberrieden-Hoehenkorrektur** — Eintrag 17.07.2026, Rule `auto-verbesserungen` 260624
     nennt faelschlich «9.0 m traufseitig», amtlich sind 8.5 m (9.0 m = Flachdach-Fassadenhoehe).

## Ein substanzieller offener Punkt: KB-Hygiene ae/oe/ue (aus Health-Check 23.07.)

Der Health-Check vom 23.07. hat als Hauptfund die **KB-weite Ersatzschreibung ae/oe/ue statt
echter Umlaute** dokumentiert (>2'000 Vorkommen ueber praktisch alle ~26 Wiki-Dateien; in diesem
Lauf stichprobenweise bestaetigt: `wiki/residualwertmethode.md` hat **0** echte Umlaute). Das
verstoesst gegen `rules/umlaute-konvention.md` und die KB-eigene Schreibregel (`CLAUDE.md`).

**Bewusste Entscheidung dieses Laufs: NICHT unbeaufsichtigt per Massenersatz beheben.** Ein
blindes `ae→ä / oe→ö / ue→ü` wuerde legitime deutsche Buchstabenfolgen zerstoeren — allen voran
**«Raphael»→«Raphäl»**, dazu «aktuelle»→«aktülle», «neue»→«nüe», «individuell»→«individüll»,
«Manuel», «Statue», «Silhouette», «Poesie» usw. Eine korrekte Konversion braucht ein
deutsch-woerterbuch-bewusstes, review-pflichtiges Vorgehen und gehoert damit in einen dedizierten
**wissenscheck-Phase-2-Lauf mit Kontrolle**, nicht in einen naechtlichen, unbeaufsichtigten
Trainings-Lauf. Bis dahin bleibt die bestehende (in sich konsistente) Ersatzschreibung stehen —
die `umlaute-konvention` erlaubt das ausdruecklich, solange keine bewusste Ueberarbeitung laeuft.

**Abgrenzung:** Der bereits in `logbuch/fristen.md` (Eintrag 23.07.) registrierte Umlaut-Punkt
betrifft die **fuenf Mac-Mini-Scheduled-Task-Prompts** (going-forward-Luecke seit der
Minimum-Viable-Model-Umstellung 19.07., baurecht/energie/planungsgrundlagen/normen/synobsis) —
das ist ein anderer, config-gebundener Fall. Der hier gemeinte Befund ist der **Retro-Fix der 26
bestehenden immobilienbewertung-Wiki-Dateien**; er ist im Health-Check-Report festgehalten und
wird hier in `wiki/wissensluecken.md` (Abschnitt B, T-Hygiene) als offene Librarian-Aufgabe
gefuehrt.

## Was gelernt / geaendert

- **Nichts inhaltlich geaendert** — kein neuer Fakt, keine Statushebung, keine neue Daten-Luecke.
- Register gepflegt: `training/curriculum.md` (Stand Run 42), `wiki/wissensluecken.md`
  (Abschnitt B: Run-42-Zeile + Hygiene-Aufgabe T-Umlaut), `CHANGELOG.md`.
- Bestaetigt: die KB ist seit Run 16 (auto-schliessbare Rueckstaende) bzw. Run 36 (letzter
  Restposten) saturiert; Runs 34/35/37/38/39/40/41 waren Delta-Null. Run 42 reiht sich ein.

## Was als naechstes

- **Entscheid Raphael zur Ruecktaktung ausstehend** (im Fristen-Register seit 19.07., jetzt
  5 Tage offen). Bis dahin bleibt der Nachttakt; jeder Lauf ohne neuen Fall / neues Rohmaterial /
  neuen amtlichen Marktwert bleibt ein Delta-Null-Bericht.
- **Umlaut-Retro-Fix der KB** als dedizierten, kontrollierten wissenscheck-Phase-2-Lauf fahren
  (deutsch-bewusste Konversion, keine blinde Ersetzung) — nicht im unbeaufsichtigten Nachttakt.
- **Produktiver Ingest erst wieder bei einem Trigger:** neuer Ordner im Bewertungsordner,
  Bring-Schuld-Material einer D-Luecke, oder Stichtag **01.09.2026** (Referenzzins/SREBI Q2).
