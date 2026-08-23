---
title: QUESTIONS-Abarbeitung 24 — Schweizer-Pendants-Punkt geschlossen, Inventar-Scan-Härtung präzisiert
datum: 2026-08-23
---

# QUESTIONS-Abarbeitung 24

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established` ist
zitierfähig. CHANGELOG und Report des letzten Laufs (Abarbeitung 23 bzw. SIA-Sweep, 27.
Fortsetzung) zuerst gelesen, dort weitergemacht. Rule `wissens-bibliothekar` beachten, jede
Aussage belegen, nichts raten, CHANGELOG-Eintrag gesetzt, nach jedem Schreiben
`git diff --numstat` geprüft.

## Ausgangslage

Diese KB wurde am 23.08.2026 bereits durch 27 SIA-Sweep-Fortsetzungen und 23 vorherige
QUESTIONS-Abarbeitungen bearbeitet. Der letzte gelesene Lauf (SIA-Sweep, 27. Fortsetzung)
bestätigte den Section-A-Sweep (SIA-Zeilen ohne Volltext im Haus) als erschöpft und empfahl als
nächsten Schritt entweder Raphaels Kaufentscheid zu den dokumentierten Bring-Schulden oder eine
Mandatsausweitung auf DIN/VSS/RAL (Abschnitt D). Von den 37 zu Laufbeginn offenen Checkbox-Punkten
war der überwiegende Teil bereits screening-geprüft als Bring-Schuld (kostenpflichtig,
Kaufentscheid Raphael) oder Strukturentscheid (nicht loop-lösbar) kategorisiert.

## Vorgehen

Alle 37 offenen `- [ ]`-Zeilen durchgesehen (Zeilenliste per `grep`), gegen drei Kategorien
gescreent: (1) bereits als Bring-Schuld/Strukturentscheid dokumentiert (kein neuer
Ansatzpunkt), (2) inhaltlich unentscheidbar aus der Quelle (z.B. N-R40-7 Grauton-Tabelle, bereits
in Abarbeitung 23 als „nicht deutbar" abgeschlossen), (3) Bookkeeping-Rückstand — die Arbeit ist
an anderer Stelle der KB bereits nachweislich erledigt, nur die Checkbox in `QUESTIONS.md` wurde
nie nachgezogen. Zwei Treffer der Kategorie (3) gefunden und geschlossen bzw. präzisiert.

## Bearbeitet (zwei Punkte)

### 1. „Schweizer Pendants zu deutschen Sonstiges-Destillaten fehlen noch" — GESCHLOSSEN

Der Punkt (Mac Mini Run, 13.07.2026) benannte drei Ergänzungskandidaten für den SIA/VKF-Loop:
SIA 500 (Pendant zu Barrierefreiheit-Regelungen), SIA-Grundlagen Raumakustik (Pendant zu
DIN 18041) und die SIA-260er-Tragwerksnormen (Pendant zu den Eurocodes). Bestandsprüfung im
`destillate/`-Ordner und in `wiki/REGISTER.md`:

- **SIA 500** (`destillate/sia-500-2009.md`): `established`, seit 23.08.2026 zusätzlich alle
  vier Korrigenda C1:2009–C4:2019 am amtlichen Wortlaut ausgewertet
  (`wiki/REGISTER.md` Z. 921, Report `outputs/2026-08-23_sia500-korrigenda-c1-c2-vollstaendig.md`).
- **SIA-Grundlagen Raumakustik**: `destillate/sia-181-1-2026.md` — SIA 181/1:2026, SN 520181/1,
  gültig ab 01.02.2026, neue eigenständige Norm ohne Vorgänger; Produktdatenblatt web-verifiziert
  23.08.2026 (`shop.sia.ch/normenwerk/architekt/181-1_2026_f`), Volltext kostenpflichtig
  (110 CHF, Bring-Schuld Raphael, keine Änderung an diesem Status). Schliesst laut
  `wiki/REGISTER.md` Z. 1575 explizit die Lücke „keine SIA-Raumakustik-Norm im Bestand"
  (Mini-Run 30).
- **SIA-260er-Tragwerksnormen**: vollständige Serie im Destillat-Ordner vorhanden —
  `sia-260-2003.md`, `sia-261-2003.md`/`sia-261-1-2003.md`, `sia-262-2003.md`/`sia-262-1-2003.md`,
  `sia-263-2003.md`, `sia-264-2003.md`/`sia-264-1-2003.md`, `sia-265-2003.md`,
  `sia-266-2003.md`/`sia-266-1-2003.md`, `sia-267-2003.md`/`sia-267-1-2003.md`. Vier der
  Beiblätter (261/1, 262/1, 264/1, 267/1) tragen laut `wiki/REGISTER.md` (Z. 17-27) eine
  Refuter-Verifikation vom 260807, Status `established`.

Alle drei genannten Kandidaten sind damit im Bestand — Checkbox auf `[x]` gesetzt, Beleg
inline ergänzt.

**Nicht mit geschlossen:** der in derselben Passage historisch mitgeführte, aber sachlich
andere CH-Pendant-Fall „SWKI 99-3 als Pendant zu DIN 1946-4" (Zeilen im Abschnitt „Mac Mini
Run 3", unverändert gelassen) war bereits am 30.07.2026 durch Wissens-Chef Run 21 auf den
korrekten Nachfolger VA105-01:2015 umgestellt worden (Zeile ~2390 ff.); dessen verbleibende
Lücke (Volltext Kap. 3-6) ist unter der eigenen Zeile **N-R21-2** als Bring-Schuld weiterhin
korrekt offen geführt — keine Dopplung angelegt.

### 2. „Inventar-Scan haerten" — teilweise präzisiert, nicht vollständig geschlossen

Der Punkt (Run 15, Juli 2026) forderte zwei Härtungen für den nächsten Scan: (1) rekursiv ab
`02_Normen/` statt nur `SIA_Normen/alle/` scannen, (2) je PDF die tatsächliche Seitenzahl gegen
die Titelblatt-Deklaration prüfen, um weitere Auszug-PDFs zu finden.

- **Punkt (1) ist durch die SIA-Sweep-Fortsetzung „fünfte" (23.08.2026) substanziell erledigt**
  — mit funktionierendem Graph-API-Zugang wurde ein vollständiges Listing von 140 Dateien aus
  `SIA_Norm/SIA_Normen/alle/` plus sieben norm-eigenen Unterordnern gegen die 55 verbliebenen
  Bestandslücken-Nummern geprüft: 0 Treffer, die Lücke ist real, kein Scan-Artefakt der
  ursprünglichen `alle/`-only-Erfassung. Als Beleg vermerkt.
- **Punkt (2) bleibt bewusst offen.** Die im ursprünglichen Eintrag zitierte „Gegenprobe Run 15:
  0 weitere Auszüge" bezog sich auf den damaligen Destillat-Bestand (Mitte Juli). Der Bestand ist
  seither auf 79+ SIA-Destillate gewachsen; ein Seitenzahl-Audit über den aktuellen Bestand wurde
  nicht erneut gefahren. Diesen Punkt ohne Prüfung als „vermutlich weiterhin 0" zu schliessen
  wäre eine Vermutung, keine Verifikation — bewusst nicht getan (Regel: nichts raten). Checkbox
  auf `[~]` (teilweise) gesetzt statt `[x]`.

## Geprüft, kein neuer Ansatzpunkt

Die übrigen 35 Checkbox-Punkte erneut gegen die drei Screening-Kategorien geprüft: Bring-Schulden
(SIA 118:2013, SIA 380/1 Volltext, SIA 385/1 Volltext, SIA 266/1 Volltext, Merkblatt SIA 2014,
SIA 491, SN EN 12193, SN 640 052, SN 641 400, Wegleitung SIA 271, VA 105-01 Volltext, Z1/Z2-
Koeffizienten SIA 103) bleiben unverändert offen — allesamt bereits mehrfach mit Preis/Quelle
belegt, kein weiterer kostenloser Beschaffungsweg gefunden. Strukturentscheide (Duplikat-Merges
VKF, Fassungspflege-Systemfrage, „modale Überdehnung" als Lehre für künftige Läufe, Cross-
Contamination/doppelte Run-Nummer) bleiben unverändert bei Raphael bzw. sind keine
abschliessbaren Einzelfragen. N-R40-7 (Grauton-Tabelle) und N-R40-3 (EN-81-Reihe) bleiben aus den
in Abarbeitung 22/23 dokumentierten Gründen unverändert offen.

## Verifikation

`git diff --numstat` nach jedem der beiden Schreibvorgänge geprüft: Edit 1 (Zeile ~3202, von
einem parallelen Prozess zwischen Lesen und Schreiben bereits geschlossen — kein eigener Edit,
kein Konflikt) plus eigener Edit „Schweizer Pendants" ergab kumuliert `34/14`; Edit 2
(„Inventar-Scan härten") ergab kumuliert `48/15` — inkrementell `14/1`, passend zur eigenen
Ersetzung (1 Zeile `[ ]`→`[~]` plus neuer Nachtrag-Absatz). Beide Diffs ausschliesslich an den
selbst editierten Stellen, keine fremde Zeile berührt. Kein `git`-Schreibbefehl über den
SMB-Mount; Commit über den 15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
