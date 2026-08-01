---
title: Locale-Regression — ein neuer Wrapper erbt die Härtungen des abgelösten Wegs nicht
status: belegt
last_updated: 2026-08-01
sources:
  - scripts/claude-run.sh (Bestand 01.08.2026, Locale-Fix ergänzt, Commit dd239633)
  - scripts/dispatch-run.sh Z. 74–82 (Locale-Härtung vom 21.07.2026)
  - wissen/*/outputs/2026-08-01_health-check.md (Monats-Wissenscheck, 20 KBs)
  - Eigene Messung 01.08.2026 mit env -i / LC_ALL=C und Fake-CLAUDE_BIN
links:
  - "[[hub-betrieb-runner]]"
---

# Locale-Regression: ein neuer Wrapper erbt die Härtungen des abgelösten Wegs nicht

## Der Fall

Der Monats-Wissenscheck vom 01.08.2026 fand in **13 von 20 Wissensbasen** flächendeckend
ae/oe/ue-Ersatzschreibungen statt echter Umlaute — Verstoss gegen die Rule
`umlaute-konvention`, die ausdrücklich Vorrang vor anderslautenden Vorgaben hat.
Absolutwerte: `immobilienbewertung` 831, `normen` 620 (davon 305 in einer einzigen Datei),
`baurecht` 455, `architekten-synobsis` 175, `wettbewerbs-dna` 151, `planungsgrundlagen` 125.

Betroffen waren ausdrücklich **frisch geschriebene** Artikel mit `last_updated` vom
27.–30.07.2026. Der Health-Check vom 22.07. hatte denselben Befund bereits als Top-1
gemeldet und auf einen Locale-Bug zurückgeführt — der galt als behoben.

## Die Ursache

Der Bug war behoben, aber am falschen Ort weiterhin wirksam:

| Script | Locale-Export | Entstanden |
|---|---|---|
| `dispatch-run.sh` | `LANG`/`LC_ALL` = `de_CH.UTF-8` (Z. 81/82) | Fix am **21.07.2026** |
| `claude-run.sh` | **keiner** | **29.07.2026** |

`claude-run.sh` entstand **eine Woche nach** dem Fix im Geschwister-Script und hat ihn nie
geerbt. Gleichzeitig machte die Rule 260729 (Anthropic-Lecture) diesen neuen Wrapper zum
**verbindlichen Einstieg aller automatischen Läufe**. Damit wanderten `arbeits-weiche.sh`,
`multi-claude.sh`, `vollgas-runner.sh` und `wissens-trigger.sh` von einem gehärteten Weg auf
einen ungehärteten — und der als behoben geltende Fehler lief unter neuem Namen weiter.

## Die Messung

launchd- und Cowork-Prozesse starten ohne interaktives Login-Profil in der POSIX-`C`-Locale.
Nachgemessen mit `env -i … LC_ALL=C` und einem Fake-`CLAUDE_BIN`, das die Locale ausgibt:

- **mit Fix:** `LANG=de_CH.UTF-8 LC_ALL=de_CH.UTF-8 CTYPE=de_CH.UTF-8`
- **Kontrollgruppe ohne Fix:** `LANG=LEER LC_ALL=C CTYPE=C`

Wichtig für die Diagnose: es ist **kein Encoding-Schaden**. Dieselbe Datei, die 89 ae/oe-Stellen
trägt, enthält daneben 1383 korrekte Umlaute. Die ASCII-Laufumgebung erzeugt keine kaputten
Bytes, sie erzeugt eine **Schreibgewohnheit** im Lauf. Wer nach Mojibake sucht, findet nichts
und erklärt den Befund für unbegründet.

## Die verallgemeinerbaren Lehren

**1. Ein Fix gilt der Datei, nicht dem Problem.** Entsteht später ein zweiter Einstiegspunkt
für dieselbe Aufgabe, erbt er nichts. Der Befund kehrt unter neuem Namen zurück, und die
Chronik sagt «bereits behoben». Zwei Pflichten folgen daraus: wer einen Fix einbaut, prüft,
ob ein Geschwister-Script dieselbe Aufgabe erfüllt; wer einen Wrapper neu schreibt, geht die
Härtungen des abgelösten Wegs Zeile für Zeile durch, bevor er ihn verbindlich macht.

**2. Ein Nullbefund ist kein Defektbeleg.** Am selben Tag lief das Gegenstück dazu: der
Logbuch-Radar meldete `mail@raphaeljans.ch` als «blinden Kanal» des Mail-Vorfilters, weil das
Konto im Extrakt mit null Zeilen erschien, und schrieb die Ursache den englischen
Mailbox-Namen zu. Nachgemessen war das falsch — die Namensliste des Scripts führt die
englischen Varianten seit mindestens 19.07., jeder Zugriff steht in einem `try`, und ein
Gegenlauf mit weiterem Zeitfenster lieferte das Konto prompt. Das Konto hatte im Fenster
schlicht keine Mail. «Die Quelle liefert nichts» und «die Quelle ist kaputt» sehen im Extrakt
identisch aus; sie lassen sich nur am Werkzeug trennen, nie am Ergebnis. Hätte man den
«Fix» ausgeführt, wäre an einem funktionierenden Script geschraubt worden.

**3. Der Bestandssweep gehört zum Fix.** Nach der Korrektur wurden alle `claude -p`-Aufrufer
in `scripts/` durchsucht: fünf rufen über `claude-run.sh` und erben den Fix, `sync-task-run.sh`
läuft über `dispatch-run.sh`, drei weitere nennen `claude -p` nur im Kommentar. Erst diese
Vollzähligkeit erlaubt die Aussage, dass jeder ausführende Pfad die UTF-8-Locale trägt.

## Nicht erledigt

Die bereits geschriebenen ae/oe-Stellen sind **nicht rückwirkend** korrigiert. Der Fix
stoppt den Zufluss; die Altlast in den 13 KBs bleibt Aufräumarbeit der jeweiligen Lern-Loops.
