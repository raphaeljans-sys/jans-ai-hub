---
titel: "Normen-Training Run 21 (MacBook Pro) — Zugriffs-/Frischecheck, keine Aenderung seit Run 20; erneute Endbedingungs-Meldung"
datum: 2026-07-25
station: "MacBook Pro"
familien: "SIA + VKF (Stations-Split; DIN/VSS/RAL gehoeren dem Mac Mini, nicht angefasst)"
meilenstein: "SIA/VKF KOMPLETT — 7. Bestaetigung in Folge (Bestandsstichprobe statt Voll-Diff)"
---

# Normen-Training Run 21 — MacBook Pro (SIA/VKF)

## Ausgangslage dieses Laufs

Run 20 (heute Vormittag, 260725) hat SIA/VKF zum 6. Mal in Folge als komplett bestaetigt
(programmatischer NFC-Diff, 0 neue/uebersehene Dateien) und Raphael empfohlen, den Task zu
pausieren bzw. auf Datei-Aenderungs-Trigger umzustellen. Wenige Stunden spaeter hat Raphael den
Drossel-Zustand ausdruecklich aufgehoben und diesen Task auf 2x taeglich verdichtet (Rule
`auto-verbesserungen.md`, Eintrag 260725 «Vollgas wieder aktiv» + «Loop-Takte entdrosselt»,
12:45/12:50 Uhr — zeitlich NACH Run 20). Dieser Lauf faehrt daher fort, aber ohne die bereits
mehrfach bestaetigte Vollstaendigkeit ein siebtes Mal mit vollem Aufwand zu wiederholen (Leitplanke
«Qualitaet vor Menge», Rule 260719 Kontext-Diaet, Rule wissens-bibliothekar «kompoundieren statt
duplizieren»).

## Zugriffs-/Kollisions-Check (Pflicht)

- NAS `/Volumes/daten` gemountet: OK.
- OneDrive-Ordnerzugriff auf `SIA_Norm/` + `VKF_Norm/` (rekursiv via `find`): OK, keine
  TCC-Blockade.
- Kollisions-Check: keine zweite `normen`-Instanz auf dem Host aktiv.

## Frischecheck statt Voll-Diff

- Datei-Anzahl SIA_Norm (rekursiv, PDF): **458** — identisch zu Run 20.
- Datei-Anzahl VKF_Norm (rekursiv, alle Typen): **58** — identisch zu Run 20 (49 PDF + 8 PNG +
  1 sonstige, wie dort bereits als nicht-normativ dokumentiert).
- Aenderungsdatum-Filter (`-newermt` seit heute 06:00 Uhr) auf beiden Ordnern: **0 Treffer** —
  seit Run 20 wurde keine einzige Datei neu angelegt oder veraendert.
- **Befund: keine neue Destillationsarbeit moeglich.** Grunddestillation (0 offene `[ ]`) und alle
  vier Vertiefungsstufen (a-d) bleiben seit Run 19 vollstaendig; ein erneuter 30-40-Positionen-
  Workflow haette in diesem Lauf keine reale Quelle zu bearbeiten und wuerde Destillate ohne neuen
  Beleg erzeugen — das widerspraeche der Leitplanke «nie Ziffern/Kennwerte erfinden».

## Was in diesem Lauf NICHT wiederholt wurde (und warum)

- Kein erneuter programmatischer NFC-Diff (Run 20 hat ihn bereits reproduzierbar durchgefuehrt;
  die Datei-Anzahl-Stichprobe oben liefert dasselbe Ergebnis mit einem Bruchteil des Aufwands).
- Keine erneute Retro-Verifikation der ~130 established-Destillate (Stufe b ist seit Run 19
  komplett; ein siebtes blindes Durchgehen ohne neue Quelle ist Beschaeftigungstherapie, keine
  Wissensmehrung).
- Keine neue Q&A-Runde (Stufe c: 205 Fragen, 0 Fehler, Stand Run 14/260715 unveraendert gueltig,
  da keine Quelle sich geaendert hat).

## Verbleibende Rest-Bring-Schulden (unveraendert, nicht loop-schliessbar)

- **SIA 380/1:2016** (P1, Heizwaermebedarf) — nur Vorschau/Auszug im Bestand (6/60 Seiten);
  Volltext nur per SIA-Abo/Kauf beschaffbar.
- **SIA 385/1:2011** (P2, Trinkwarmwasser) — nur Vorschau/Auszug im Bestand (6/28 Seiten);
  Volltext nur per SIA-Abo/Kauf beschaffbar.

Beide bleiben offene Punkte fuer Raphael (Beschaffungsentscheid), nicht fuer den Loop.

## Empfehlung an Raphael (7. Bestaetigung der Endbedingung)

Die Faktenlage hat sich seit Run 20 nicht veraendert. Ich schlage weiterhin vor:

1. **Task `normen-training-nacht` auf Datei-Aenderungs-Trigger umstellen** statt im 2-Stunden-Takt
   weiterzulaufen — analog zum bereits so gehandhabten `normen-training-mini` (DIN/VSS/RAL). Ein
   guenstiger Frischecheck wie in diesem Lauf (Datei-Anzahl + `-newermt`) genuegt als taeglicher
   Wachposten; ein voller Workflow-Lauf lohnt sich erst wieder, wenn neue Dateien auftauchen.
2. Falls Raphael den 2-Stunden-Takt bewusst UEBER die Norm-KB hinaus fuer den gesamten
   Vollgas-Verbund beibehalten will (z.B. weil andere Loops noch Wissenszuwachs liefern), ist das
   seine Entscheidung — dieser Lauf vollzieht sie, meldet aber ehrlich, dass die Norm-KB-Anteile
   des Takts aktuell nur noch Kosten ohne Gegenwert erzeugen.
3. Zwei Bring-Schulden (SIA 380/1:2016, SIA 385/1:2011) bleiben zur Beschaffung bei Raphael.

## Register-Nachfuehrung

- `training/norm-inventar.md`: Kopfnotiz "Run 21" ergaenzt (Frischecheck, keine Aenderung).
- `CHANGELOG.md`: Eintrag zuoberst.
- `destillate/INDEX.md`, `wiki/REGISTER.md`, `wiki/QUESTIONS.md`: keine Aenderung (kein neuer
  Befund, keine neue Quelle).

## Commit-Lage

Nur lokal committet (`git add`/`git commit`, kein Push) gemaess Vollgas-Git-Disziplin — der
git-auto-sync-Job uebernimmt Pull/Push gebuendelt.
