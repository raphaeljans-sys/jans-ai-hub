# SIA-Sweep, dreiundzwanzigste Fortsetzung — Section-A-Blindzone-Sweep abgeschlossen

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
  nachführen, Destillate anlegen. Rule `normen-referenz` und `wissens-bibliothekar` beachten,
  jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md`-Kopf (SIA-Sweep zweiundzwanzigste Fortsetzung, oberster
  SIA-Sweep-Eintrag) und `outputs/2026-08-23_sia-sweep-zweiundzwanzigste-fortsetzung.md`.

## Ausgangslage und Kollisionsprüfung

`ps aux | grep -i claude` zeigte zu Laufbeginn drei parallele `claude -p`-Prozesse: den eigenen
(PID 43810, identischer Lauf-Prompt zu diesem Auftrag — laut Anleitung der eigene Prozess, kein
Konkurrent) sowie zwei weitere `claude -p`-Prozesse mit dem Prompt «Arbeite weitere offene Fragen
in `wissen/normen/wiki/QUESTIONS.md` ab» (QUESTIONS-Abarbeitung-Läufe derselben KB, andere
Zeilen/Abschnitte). `wiki/REGISTER.md` und `CHANGELOG.md` wurden unmittelbar vor dem eigenen
Schreibvorgang frisch gelesen (nicht aus einem früher gecachten Stand): `CHANGELOG.md` trug zu
diesem Zeitpunkt bereits einen neuen Kopf-Eintrag «QUESTIONS-Abarbeitung 18» eines Parallellaufs
— der eigene Eintrag wurde darüber eingefügt. `wiki/REGISTER.md`, Zeile **SIA 118/430**, trug
bereits den Befund eines parallelen Laufs («kein kostenloser Zugang gefunden», Zeitstempel
23.08.2026) — dieser Befund wurde übernommen, nicht erneut geprüft (keine doppelte Arbeit).

## Durchgeführt

### 1. Die drei von der 22. Fortsetzung benannten Restkandidaten geprüft

Die 22. Fortsetzung hatte als nächsten Schritt vier Kandidaten benannt (SIA 381/3, SIA 422,
SIA 2025, SIA 118/430), von denen 118/430 zu Laufbeginn bereits durch einen Parallellauf erledigt
war. Die verbleibenden drei mit der in der 22. Fortsetzung etablierten präzisen Methode geprüft:
Produktseite `shop.sia.ch` per `curl -A "Mozilla/5.0"` abgerufen, Titel über
`<meta name="description">` gegen die erwartete Norm verifiziert (diese Produktseiten führen kein
`<title>`-Tag), danach `lblAnhangBezeichnung`-Feld ausgezählt und ausgelesen.

**3 von 3 Nullbefunde** — je genau ein Anhang, ausschliesslich «Inhaltsverzeichnis»:

- **SIA 381/3** — `shop.sia.ch/normenwerk/ingenieur/sia381-3_1982_d/D/Product`, SN 565381/3,
  Titel «Heizgradtage der Schweiz» (verifiziert per Meta-Description). Die Nachfolgefrage war
  bereits in einer früheren Fortsetzung am Original gelöst (SIA 2028-Korrigenda C1:2015
  übernimmt den Heizgradtage-Inhalt); hier nur die Produktseite selbst auf einen weiteren
  Zusatz-Download gegengeprüft.
- **SIA 422** — `shop.sia.ch/normenwerk/architekt/sia422_2009_d/D/Product`, SN 513422, Titel
  «Bauzonenkapazität, mit Anhang Bauzonendimensionierung». Archiviert seit 31.12.2024, weiterhin
  **kein Nachfolger auf der Produktseite genannt** (N-SIASWEEP-2 bleibt offen).
- **SIA 2025** — `shop.sia.ch/normenwerk/architekt/sia2025_2012_d/D/Product`, SN 592025, Titel
  «Begriffe in Bauphysik, Energie- und Gebäudetechnik». Archiviert seit 31.12.2023, weiterhin
  **kein Nachfolger auf der Produktseite genannt** (N-SIASWEEP-3 bleibt offen).

### 2. Vollständigkeitsabgleich Abschnitt A (54 Zeilen)

Wie von der 22. Fortsetzung empfohlen: alle Zeilen mit Bestand-Status «Kein Volltext im Haus» in
Abschnitt A (SIA — Gültigkeit je Norm) extrahiert (`grep "Kein Volltext im Haus"` im Zeilenbereich
221–487 von `wiki/REGISTER.md`) und gegen die Sweep-Fortsetzungen 7 bis 23 kreuzgeprüft — sowohl
gegen die Fortsetzungs-Absätze der «2013-Blindzone»-Sektion als auch gegen die jeweils eigene
Zeile. Ergebnis: **54 von 54 Zeilen sind auf die Korrigenda-Methode geprüft.** Fünf Zeilen
erschienen bei einem naiven Regex-Abgleich zunächst als «nicht erwähnt», stellten sich bei
manueller Prüfung als false positives heraus:

- **SIA 269/3, SIA 269/8** — in der Fortsetzungs-Prosa nur als nackte Nummer ohne «SIA»-Präfix
  genannt (bereits eigenes Korrigenda-Destillat aus der 17. Fortsetzung).
- **SIA 381/3, SIA 422, SIA 2025** — heute in diesem Lauf (Punkt 1 oben) frisch verifiziert.
- **SIA 118/430** — heute vom Parallellauf verifiziert (Punkt Kollisionsprüfung oben).

Keine echte unbehandelte Zeile gefunden.

### 3. Sechs Neuzugänge aus den 4000er-Abschnitten nachgezogen

Die beiden Unterabschnitte «4000er-Reihe — Neuzugänge nach 2013» und «Weitere Neuzugänge nach
2013» (Sweep-Fortsetzungen 8–10) führen sechs Zeilen, die zwar bereits vollständige Metadaten
(Ausgabejahr, gültig-ab, Archiv-/Aktualitätsstatus) tragen, aber nie auf einen zusätzlichen
kostenlosen Anhang geprüft worden waren. Mit derselben Methode nachgeholt:

| Norm | Produktseite | Anhänge | Befund |
|---|---|---|---|
| SIA 4008:2025 | ingenieur, `sia%204008/d/D/Product` | 1 | nur «Inhaltsverzeichnis» |
| SIA 4018:2023 | ingenieur, `4018_2023_d/D/Product` | 1 | nur «Inhaltsverzeichnis» |
| SIA 4020:2026 | architekt, `4020_2026_d/D/Product` | 1 | nur «Inhaltsverzeichnis» |
| SIA 4013:2021 | architekt, `4013_2021_d/D/Product` | 1 | nur «Inhaltsverzeichnis» |
| SIA 380:2022 | architekt, `380_2022_d/D/Product` | 1 | nur «Inhaltsverzeichnis» |
| SIA 242.002:2008 | ingenieur, `242.002_2008_d/D/Product` | **0** | kein Anhang, auch kein Inhaltsverzeichnis |

SIA 242.002 weicht damit als einzige der neun heute geprüften Zeilen vom sonst durchgängigen
Muster «genau ein Inhaltsverzeichnis-Anhang» ab: die Produktseite führt überhaupt keinen
Download-Anhang — ein reines Bestellprodukt ohne jeden kostenlosen Auszug.

### 4. Section-A-Blindzone-Sweep für abgeschlossen erklärt

Mit den neun heutigen Nullbefunden (3 Restkandidaten + 6 Neuzugänge) sind sämtliche
Register-geführten SIA-Zeilen in Abschnitt A, deren Bestand-Status «Kein Volltext im Haus»
lautet, jetzt mit einem Produktdatenblatt (Ausgabejahr, gültig-ab/gültig-bis, Archiv-/
Nachfolgestatus) UND einer geprüften Corrigenda-/Zusatzanhang-Abfrage versehen. Verbleibende
offene Punkte sind damit keine Such- oder Prüflücken mehr, sondern zwei Kategorien:

1. **Echte Bring-Schulden** — der kostenpflichtige Volltext-Kauf selbst, für alle 54 Zeilen
   gleichermassen offen (Entscheid/Budget Raphael).
2. **Zwei ungeklärte Nachfolger-Fragen** (SIA 422, SIA 2025) — beide bereits als N-SIASWEEP-2/3
   in `wiki/QUESTIONS.md` erfasst, nicht über die kostenlos zugänglichen Quellen (Shop-Metadaten,
   SNV-Webshop, amtliche SIA-Publikationsverzeichnisse) weiter aufklärbar.

## Nachgeführt

- `wiki/REGISTER.md`: neuer Sammelabsatz «Korrigenda-Check-Sweep, 23.08.2026 (SIA-Sweep,
  dreiundzwanzigste Fortsetzung) — Abschluss der Section-A-Blindzone» im Blindzone-Abschnitt,
  direkt nach dem Absatz der 22. Fortsetzung eingefügt (rein additiv, keine bestehende Zeile
  verändert).
- Kein neues Destillat — neun echte Nullbefunde erhalten keinen Wiki-Artikel (Rule
  `wissens-bibliothekar`).
- `destillate/INDEX.md`: unverändert, kein neuer Eintrag nötig.
- `CHANGELOG.md`: eigener Eintrag oberhalb des Kopfs (QUESTIONS-Abarbeitung 18 eines
  Parallellaufs) eingefügt.
- Dieser Report.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft (Rule `auto-verbesserungen` 260811):

| Datei | Befund |
|---|---|
| `wiki/REGISTER.md` | 31 Einfügungen / 0 Löschungen — rein additiv |
| `CHANGELOG.md` | 228 Einfügungen / 0 Löschungen — rein additiv, eigener Eintrag oben eingefügt |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über
`scripts/nas-commit-now.sh` bzw. den 15-Minuten-`nas-selfcommit`-Cron).

## Nicht geleistet / weiterhin offen

- **SIA 422 und SIA 2025:** Nachfolger-Namen weiterhin nicht offiziell bestätigt (N-SIASWEEP-2/3)
  — die kostenlos zugänglichen Quellen (Shop, SNV, amtliche Publikationsverzeichnisse) sind
  ausgeschöpft; eine Klärung bräuchte entweder eine SIA-Direktauskunft oder den (kostenpflichtigen)
  Volltext einer Nachfolgenorm, die den Rückzug im Vorwort begründet.
- Keine der neun heute geprüften Zeilen wurde auf einen tatsächlichen Volltext-Kauf hin
  weiterverfolgt — bleibt Bring-Schuld Raphael für alle 54 Zeilen der Blindzone gleichermassen.
- **Die systematische Section-A-Sweep (SIA — Gültigkeit je Norm, Fortsetzungen 7–23) gilt hiermit
  als abgeschlossen.** Zwei sinnvolle nächste Schritte für einen künftigen SIA-Sweep-Lauf:
  1. Dieselbe Korrigenda-Methode auf Abschnitt D (Nicht-SIA-Familien: DIN/VSS/RAL) ausweiten,
     falls dort ebenfalls unbehandelte «Kein Volltext im Haus»-Zeilen bestehen — in diesem Lauf
     nicht geprüft (Auftrag war explizit «SIA-Zeilen»).
  2. Die im Sweep wiederholt aufgefallenen Bring-Schulden (54 Volltext-Käufe) zu einer
     priorisierten Einkaufsliste bündeln, nach Relevanz für aktive Fach-Skills sortiert (z.B.
     SIA 380:2022 für `energie`, SIA 4013 für CAD-Datenaustausch-Vorgaben).
