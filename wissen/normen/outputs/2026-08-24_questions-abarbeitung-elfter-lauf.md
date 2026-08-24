# QUESTIONS-Abarbeitung 24.08.2026 (elfter Lauf) — Sättigung ein elftes Mal bestätigt

## Auftrag

Fortsetzung der Daueraufgabe: offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage mit Norm/Ausgabe/Ziffer, nur `established` zitierfähig. CHANGELOG und Report des
letzten Laufs (zehnter Lauf, `outputs/2026-08-24_questions-abarbeitung-zehnter-lauf-1006uhr.md`)
zuerst gelesen.

## NAS-Hinweis

`/Volumes/daten` war beim Sessionstart nicht gemountet. `wissen/normen` ist versionierter
Repo-Inhalt (kein NAS-Symlink) — keine Blockade für diese Datei. `.claude/skills` und
`.claude/agents` sind NAS-Symlinks und in dieser Session daher nicht verfügbar; für diesen
Lauf ohne Bedeutung, da nur Datei-Lektüre nötig war.

## Vorgehen

32 verbleibende `- [ ]`-Zeilen gezählt — unverändert gegenüber dem zehnten Lauf. Statt die
bereits im zehnten Lauf geprüften zwei Kandidaten erneut zu vertiefen, wurden gezielt die
Punkte gelesen, die in der Stichprobe des zehnten Laufs NICHT im Volltext geprüft worden
waren, um eine reine Wiederholung zu vermeiden:

- **Wegleitung SIA 271 / Lignatec-Grauton (N-R40-7):** beide tragen bereits einen Nachtrag vom
  24.08.2026 mit dokumentiertem, ergebnislosem Web-Beschaffungs- bzw. Web-Recherche-Versuch
  (WebSearch/WebFetch). Kein neuer Ansatzpunkt seit heute Morgen.
- **Cross-Contamination-Notiz (Rule 260724) und doppelte Run-Nummer 21:** beides sind
  Betriebs-/Protokollnotizen über den Loop selbst, keine Normaussagen — nicht durch
  Primärquellenlektüre lösbar, sondern allenfalls durch Anpassung der Commit-/Nummerierungs-
  Praxis (liegt ausserhalb dieser Datei).
- **Duplikate aus dem Reconcile (vier VKF-Dateipaare):** Merge ist als **destruktiv** markiert
  und verlangt ausdrücklich Rückfrage vor Ausführung — kein Loop-Fall.
- **Workflow-Tool-Notiz (13.07.2026):** dokumentiert ein einmaliges Tool-Verhalten, keine
  offene Normfrage.
- **Strukturhinweis Run 8 (Fassungspflege blinder Fleck) und «modale Überdehnung» (23/73
  Befunde):** beides sind methodische Lehren für künftige Destillier-/Verifikationsprompts,
  keine einzelnen offenen Fundstellen — bereits als Prozessregel in `training/PROGRAMM.md`-
  Empfehlung festgehalten (Text vorhanden, keine weitere Handlung durch Lektüre möglich).
- **SIA 491 / SN EN 12193 / SN 640 052 / SN 641 400 (Bring-Schulden aus `baurecht`):** laut
  Nachtrag 23.08.2026 bereits zweifach (Run 30, Run 36) in PL-02 UND PL-03 geprüft und
  nachweislich nicht im Haus, kostenpflichtige Beschaffung (SIA 491: CHF 90.00, shop.sia.ch).
  SN 640 052/SN 641 400 laut REGISTER Abschnitt B fünffach erfolglos web-beschafft, einziger
  Restweg VSS-Kundendienst (`info@vss.ch`).
- **SIA 380/1, 385/1, 266/1, 118:2013, SIA 181:2020 (Bring-Schuld P1):** je mit dokumentiertem,
  erfolglosem SIA-Normen-Abo-Prüfweg bzw. Kaufhinweis (shop.sia.ch) — Kaufentscheid Raphael.

Kein einziger der acht neu gelesenen Punkte war durch weitere Primärquellenlektüre lösbar.
Alle acht bestätigen dieselbe Kategorisierung, die der zehnte Lauf für die Gesamtliste
festgestellt hatte.

## Ergebnis

Elfte Bestätigung in Folge: kein mit Primärquellenlektüre lösbarer Rest in `wiki/QUESTIONS.md`
gefunden. Die 32 verbleibenden Checkboxen sind durchgehend entweder (a) Bring-Schuld/
Kaufentscheid Raphael (SIA 380/1, 385/1, 266/1, 118:2013, 181:2020, SIA 491), (b)
Strukturentscheid Raphael (destruktive Duplikat-Merges, Inventar-Reichweite, Nulldurchgang-
Konvention), (c) genuin unlösbare Quell-Ambiguitäten (Lignatec-Grauton, SVAS/VSA-Verhältnis,
Wegleitung SIA 271 Volltext), (d) methodische/Betriebs-Notizen über den Loop selbst
(Cross-Contamination, Run-Nummerierung, Workflow-Tool), oder (e) bewusst erhaltener
Ursprungswortlaut bereits geschlossener Punkte.

## Eskalationsempfehlung an Raphael

Elf aufeinanderfolgende Läufe (davon die letzten zehn am 24.08.2026) haben dieselbe
Sättigung bestätigt. Die verbleibenden 32 Punkte sind mit Loop-Mitteln (Primärquellenlektüre)
nicht weiter reduzierbar. Konkrete Freigaben, die den Bestand tatsächlich verkleinern würden:

1. **Käufe SIA-Shop** (Bring-Schuld, kostenpflichtig): SIA 380/1:2016, SIA 385/1:2011,
   SIA 266/1:2015, SIA 118:2013, SIA 181:2020 Volltext, SIA 491.
2. **Freigabe der vier destruktiven Duplikat-Merges** (VKF-Destillate, Dateipaare oben) —
   ein Ja/Nein genügt, danach kann ein Loop die Löschung in einem Schritt ausführen.
3. Alternative Arbeitsrichtung statt weiterer QUESTIONS-Läufe: Abdeckungsrichtung der
   VKF-Delta-Destillate prüfen (`wiki/REGISTER.md` Abschnitt D) — echte, noch nicht begonnene
   Arbeit ausserhalb dieser Datei.

## Eingearbeitet

- `wissen/normen/CHANGELOG.md`: dieser Lauf vorangestellt.
- `wiki/QUESTIONS.md`: keine Änderung — alle acht neu geprüften Punkte waren bereits korrekt
  klassifiziert, kein neuer Schliessungs-Eintrag nötig.

## Diff-Gegenprobe (`git diff --numstat`)

Siehe Ende dieses Laufs — nur CHANGELOG.md additiv verändert.
