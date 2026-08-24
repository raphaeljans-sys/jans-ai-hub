# QUESTIONS-Abarbeitung 24.08.2026 (zwölfter Lauf) — zwei Alt-Punkte nachgezogen, Rest bestätigt gesättigt

## Auftrag

Fortsetzung der Daueraufgabe: offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage mit Norm/Ausgabe/Ziffer, nur `established` zitierfähig. CHANGELOG und Report des
letzten Laufs (elfter Lauf, `outputs/2026-08-24_questions-abarbeitung-elfter-lauf.md`, 10:10 Uhr)
zuerst gelesen.

## NAS-Hinweis

`/Volumes/daten` war beim Sessionstart nicht gemountet. `wissen/normen` ist versionierter
Repo-Inhalt (kein NAS-Symlink) — keine Blockade für diese Datei. `.claude/skills` und
`.claude/agents` sind NAS-Symlinks und in dieser Session daher nicht verfügbar; für diesen
Lauf ohne Bedeutung, da nur Datei-Lektüre/-Bearbeitung nötig war.

## Vorgehen

Der elfte Lauf hatte elffach dieselbe Sättigung bestätigt (32 offene Checkboxen, keine mit
Primärquellenlektüre lösbar). Statt eine zwölfte reine Wiederholung der gleichen acht Punkte
zu produzieren, wurden gezielt Alt-Einträge geprüft, die in den letzten Läufen nicht explizit
gegengelesen wurden — mit dem Ziel, echte Falsifikation statt Bestätigung zu suchen:

1. **N-R21 / SIA 400 Aktualität gegen suissetec-Hinweis** (Z. 4980): eigenständig per WebFetch
   auf `shop.sia.ch/normenwerk/architekt/sia%20400/d/D/Product` geprüft — Ergebnis (SIA 400:2000,
   Rev. 1/2015, aktuell, kein Nachfolger gelistet) deckt sich exakt mit einer bereits am
   23.08.2026 unter «TEIL (1) GESCHLOSSEN» dokumentierten Prüfung. Kein neuer Fund, reine
   Redundanz — Beleg, dass die bestehende Schliessung korrekt ist.
2. **Verify-Abschluss MacBook, Teilpunkt (5) BRL 100-15 Register-Gegenprüfung** (Z. 4501f.):
   `wiki/REGISTER.md` Z. 640 (BSE 100-15, Run 60) zeigt die Antwort bereits vor — war bereits
   unter demselben Datum als «Nachtrag 24.08.2026: Teilpunkt (5) GESCHLOSSEN» eingetragen.
   Wieder keine neue Erkenntnis, nur Gegenprobe.
3. **Mac Mini Run 3 (Z. 4415), Status-Notiz 13.07.2026:** alle drei Folgen dieses veralteten
   Zwischenstands sind tatsächlich noch NICHT geschlossen gewesen — die «offen für nächsten
   Lauf»-Liste war durch die direkt nachfolgenden Einträge (Mac Mini Run 4/5) längst erledigt,
   und der SWKI-99-3-Punkt war zwar an anderer Stelle (Z. 3112 ff.) korrigiert, aber die
   Checkbox hier lief seit sechs Wochen weiter mit. **Geschlossen** (siehe unten).
4. **Folgeprüfung zur 2015er-BRL-Serie** (Z. 4869): `wiki/REGISTER.md` Z. 657 dokumentiert, dass
   Run 60 (23.08.2026) genau die hier verlangte Durchsicht — Fassungsdatum-vs-Ausgabejahr-
   Verwechslung über die ganze 2017er-Sammelrevision (15 Publikationen) — bereits vollständig
   durchgeführt hat. **Geschlossen** (siehe unten), mit Abgrenzung zur separat offenen
   Abdeckungsrichtungs-Frage (Eskalationspunkt 3 des elften Laufs, keine Wiederholung).

Zusätzlich stichprobenartig gegengelesen ohne Fund: N-R21-2 (VA 105-01 Kaufentscheid, Z. 3040,
korrekt als Bring-Schuld klassifiziert), Dateiname/Norm-Nummer-Diskrepanz 592056/564_282
(Z. 4630, korrekt als «kein Fehler, destruktive Umbenennung nur mit Bestätigung» klassifiziert).

## Ergebnis

**Zwei echte Schliessungen** (Alt-Notizen, deren Inhalt durch spätere, unabhängige Arbeit
längst überholt war, aber deren Checkbox nie nachgezogen wurde) — kein neuer
Primärquellenbefund, sondern Aufräumen von Buchhaltungsschulden im Dokument selbst:

- **Mac Mini Run 3 (Z. 4415):** alle Folgeaufträge laut den direkt anschliessenden
  Einträgen (Run 4/5, DIN/VSS/RAL komplett) erledigt; SWKI-99-3-Gegenstand war ohnehin
  falsch (ersetzt durch VA 105-01:2015 seit 1.8.2015, siehe `wiki/REGISTER.md`).
- **Folgeprüfung 2015er-BRL-Serie (Z. 4869):** durch Run 60 (`wiki/REGISTER.md`, Abschnitt
  01.01.2017-Sammelrevision) für alle fünfzehn Publikationen bereits erledigt.

Offene Checkboxen: **32 → 30**. Kein einziger der 30 verbleibenden Punkte war unter den heute
geprüften acht (vier neu gelesene + vier stichprobenartig gegengelesene) ein mit
Primärquellenlektüre lösbarer Fall — sie bleiben Bring-Schuld/Kaufentscheid Raphael,
destruktive Struktur-Entscheide, genuine Quell-Ambiguitäten oder Betriebs-/Methodennotizen,
wie in den Läufen 1–11 bereits kategorisiert.

## Eskalationsempfehlung an Raphael

Unverändert gegenüber dem elften Lauf — die drei dort genannten Freigaben (SIA-Shop-Käufe,
Freigabe der vier destruktiven VKF-Duplikat-Merges, alternative Arbeitsrichtung
Abdeckungsrichtung VKF-Delta-Destillate) bleiben die einzigen Hebel, die den Bestand weiter
verkleinern würden. **Neu:** die verbleibenden 30 Checkboxen sind nach zwölf Läufen (davon elf
reine Bestätigungen und dieser zwölfte mit nur zwei Buchhaltungs-Nachträgen) so gut wie
vollständig auf Struktur-/Kaufentscheide reduziert — ein Vorschlag für den nächsten Lauf ist,
NICHT erneut die ganze Liste zu sichten, sondern gezielt zu prüfen, ob eine der noch
ungeprüften «Vorarbeit vorhanden»-Verweise (Cross-Referenzen auf andere KBs wie
`planungsgrundlagen`) mittlerweile ebenfalls durch dortige Arbeit überholt ist — dasselbe
Muster wie die zwei heutigen Funde.

## Eingearbeitet

- `wissen/normen/CHANGELOG.md`: dieser Lauf vorangestellt.
- `wiki/QUESTIONS.md`: zwei Punkte auf `[x]` gesetzt (Z. 4415 Mac Mini Run 3, Z. 4869
  Folgeprüfung 2015er-BRL-Serie), Ursprungswortlaut jeweils erhalten.

## Diff-Gegenprobe (`git diff --numstat`)

`wissen/normen/wiki/QUESTIONS.md`: 34 Zeilen hinzugefügt, 21 entfernt (zwei Checkbox-Schliessungen
mit Begründungstext, keine sonstigen Änderungen).
