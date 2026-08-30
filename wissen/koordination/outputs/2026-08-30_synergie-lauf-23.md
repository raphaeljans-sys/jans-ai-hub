---
title: Synergie-Lauf 23 (30.08.2026, Tagestakt)
status: established
last_updated: 2026-08-30
sources:
  - git-Log NAS-Repo, Fenster 29.08.2026 17:10 bis 30.08.2026 17:10 (359 Commits)
  - scripts/vollgas-schub.sh (Z. 110-148)
  - rules/betrieb-chronik.md 260729, rules/sync-kanonische-quelle.md
  - logbuch/vollgas/schub/*.prompt, *.log
  - logbuch/fristen.md (Eintraege 29./30.08.2026)
links:
  - "[[SYNERGIE-REGISTER]]"
---

# Synergie-Lauf 23 — 30.08.2026

**Delta-Basis** 29.08.2026 17:10 (Lauf 22) · **Fenster** 24,0 h · **359 Commits** im NAS-Repo.

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr 17:10 CEST, juengste native Synology-Logzeile 17:07:21 — Abweichung
unter drei Minuten, Uhr-Check bestanden. Der Log ist nicht UTF-8; gelesen mit `tail`/`awk`, nicht
mit `grep` (Rule 260730b).

## Schritt 1 — Delta mit Gegenprobe

Die Gegenprobe brachte einen eigenen Befund: **NAS 359, SSD-Klon 251 Commits** im selben Fenster.
Das ist keine Uhr-Schieflage — der juengste gefilterte Treffer ist der HEAD `2f1307fdf` (17:07),
schliesst also lueckenlos an. Ursache ist die seit dem 29.08. 21:51 laufende **Sync-Divergenz**,
die im Fristen-Register bereits als P1 gefuehrt wird. Aktueller Stand: **Versuch 363, 293 lokal /
186 remote**. Als datierter Nachtrag im Register ergaenzt (Rule 260805 — ein Laufbericht ist kein
Meldekanal). Gemessen wurde durchgehend gegen das NAS als kanonische Quelle.

Strukturelles Delta: 0 neue Bausteine; 2 neue Korpus-Specs unter `skills/wissens-destillat/specs/`
(Dateien eines bestehenden Skills, keine Bausteine); 2 geaenderte Rules. Frueh-Ausstieg greift nicht.

## Schritt 3 — Was geprueft wurde

Einzige Regeaenderung mit Baustein-Bezug ist **Rule 260830** (Commit `64accb80e`, 08:21), die einen
ausfuehrenden Baustein und fuenf Auftragstexte benennt. Geprueft wurde, ob die genannte Umsetzung
real ist — das Muster von Rule 260807 und SYN-56 (eine Gegenmassnahme gilt als vorhanden, weil sie
dokumentiert ist).

**Ergebnis zuerst positiv, und das gehoert festgehalten:** Die Umsetzung existiert wirklich.
`scripts/vollgas-schub.sh` traegt den Delta-Abbruch samt ausfuehrlicher Begruendung (Z. 110-148)
und eine zweite, unabhaengige Selbstauskunft-Erkennung. `fachwissen.prompt` — von der Rule
namentlich als Anlassfall genannt — ist mustergueltig auf Zustands-Selbstermittlung umgestellt
und verlangt einen festen Abbruchsatz. Drei weitere Prompts wurden vom Leerlauf-Waechter durch
Stilllegungs-Prompts ersetzt, die Originale als `.prompt.orig-260830` gesichert. **Kein
SYN-56-Muster.**

Die drei Befunde liegen eine Ebene tiefer.

### SYN-61 — der Messbefehl widerspricht der eigenen Chronik

Das Script misst den Ertrag mit `git status --porcelain` gegen den SMB-Mount und begruendet das
im Kommentar mit «Lesendes git ueber SMB ist erlaubt (Rule 260726 verbietet nur schreibende
Befehle)». `rules/betrieb-chronik.md` 260729 widerlegt genau diesen Satz gemessen: derselbe Befehl
lief in den 2-Minuten-Timeout, **waehrend ein `claude -p`-Lauf und der 15-Min-Committer aktiv
waren** — ein Szenario, das bei dieser Lane per Konstruktion immer vorliegt.

Der Kern ist eine **Grundkontext-Luecke**, kein Nachlaessigkeitsfehler: die importierten Rules
`sync-kanonische-quelle` und 260726 sagen beide sinngemaess «nur `git` gehoert nativ auf die
Synology»; die Einschraenkung auf **schreibende** Befehle steht ausschliesslich in der nicht
importierten Chronik. Wer nur den Grundkontext hat, zieht den Umkehrschluss des Script-Kommentars.

**Gesetzt:** ⚠-Querverweis in `rules/sync-kanonische-quelle.md` (+11/−0). Kein Eingriff ins Script.

### SYN-62 — die Lane misst fremden Ertrag

`DELTA` und `KOPF` messen das **ganze Repo**. Bei 8 bis 24 Commits pro Stunde (gemessen ueber den
30.08.) und fuenf parallelen Lanes plus 15-Min-Committer rettet jede Lane jede andere vor dem
Abbruch. Derselbe Fehler eine Ebene hoeher: die alte Fassung zaehlte Laeufe, die neue zaehlt
**fremden** Ertrag. Rule 260830 nennt «neuer Commit-Kopf» selbst als Kriterium, der
Konstruktionsfehler steckt also schon in der Regel.

**Gedaempft:** die lane-lokale Selbstauskunft-Erkennung greift und hat bei SYNOBSIS nachweislich
funktioniert; der Befund trifft den als Hauptmechanismus benannten Weg, nicht die
Abbruchfaehigkeit ueberhaupt. Aktuell laeuft nur eine Lane, die real liefert — **latent, nicht
akut**. Nur gemeldet, kein Eingriff.

### SYN-63 — ein Lane-Prompt blieb unerreicht

Von fuenf Prompts erreichte die Korrektur vier. `synobsis.prompt` traegt weiterhin den Stand vom
29.08. («Charge 2 und folgende sind offen»), waehrend die Lane seither meldet: «Es gibt nichts mehr
zu bearbeiten. Dies ist Lauf 30+ mit identischem Nullstand». Zusaetzlich fehlt der feste
Abbruchsatz — dass der Treiber trotzdem stoppen konnte, war Zufall (der Lauf traf zwei der vier
Erkennungsmuster), nicht Konstruktion. Lane steht bei Runde 348. Nur gemeldet: einen fremden
Auftragstext schreibt ein Aufsichtslauf nicht um.

## Was nicht als Befund uebernommen wurde

Die ueber 600 ertraglosen Laeufe sind in `logbuch/fristen.md` vollstaendig gefuehrt (677 Laeufe /
515 ohne Delta), Adressat dort ist der Scheduler — Synergie-Sache ist allein die Abbruchlogik und
der Prompt. Der `Broken pipe` in `claude-run.sh` ist Betriebsstoerung ohne Baustein-Bezug. Die
zwei neuen Korpus-Specs sind sachgerecht abgelegt und im Lane-Prompt als Schreibbereich gefuehrt.

## Schreib-Kontrolle

Jeder Anker vor dem Schreiben auf Trefferzahl 1 assertiert, kein globales Suchen-und-Ersetzen,
Umfang gegen Sicherungskopien im Scratchpad gemessen (nicht per `git` ueber SMB):
`rules/sync-kanonische-quelle.md` +11/−0 (39 → 50) · `logbuch/fristen.md` +11/−0 (4546 → 4557) ·
`SYNERGIE-REGISTER.md` +3 Tabellenzeilen (60 → 63) plus Fussnote (1100 → 1161).
**Alle Eingriffe rein additiv, null Loeschungen.**
