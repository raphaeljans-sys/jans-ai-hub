---
title: Synergie-Lauf 33 — der Monats-Check kennt seine Werkzeuge nicht, und sein Prompt verlangt den verbotenen git-Weg
status: established
last_updated: 2026-09-10
sources:
  - wissen/koordination/SYNERGIE-REGISTER.md (SYN-43, SYN-80, SYN-81, SYN-82)
  - wissen/twin/outputs/2026-09-10_fidelity.md
  - skills/wissenscheck/SKILL.md
  - wissen/tools/README.md, wissen/tools/datenstand-waechter.py
  - ~/.claude/scheduled-tasks/wissenscheck-monatlich/SKILL.md, immobewertung-training/SKILL.md
---

# Synergie-Lauf 33 (10.09.2026, Tagestakt)

## Big Points

1. **SYN-81 (neu, Prio 2, Frist vor 01.10.):** zwei Task-Prompts verlangen `git add/commit/push` im
   NAS-Repo über den SMB-Mount. Rule `sync-kanonische-quelle` verbietet genau das, und
   `immobewertung-training` beruft sich sogar auf diese Rule. Live relevant: `wissenscheck-monatlich`
   (nächster Lauf 01.10.2026 19:30). Am 01.09. hat die Rule den Prompt übersteuert, Schaden null.
2. **SYN-82 (neu, Prio 2):** `wissenscheck` kennt keines der sieben Prüfwerkzeuge unter
   `wissen/tools/`, und sein Audit E («Reines Alter ist kein Problem») widerspricht dem
   Alterswächter («`last_updated` misst den letzten Zugriff, nicht das Alter der Zahlen»).
   Beidseitige Querverweise gesetzt, Methodenfrage offen.
3. **SYN-80 (nachgeführt):** die Bündelung wirkt, denn der Fidelity-Report nennt SYN-69 und übernimmt
   die Empfehlung, vor dem nächsten Nachziehen zu entscheiden. Der Riegel hat seinen ersten
   belegten Schadensfall (Blindtest: 20 statt 2 Wörter). Zwei Satzbau-Artefakte der Verdichtung
   repariert, Reserve **15 B**.
4. **SYN-43 (nachgeführt):** erster Gegenfluss. Eine Präzisierung aus der twin-Seite ist in die
   importierte `rules/anrede-kontakte.md` gewandert (Stadelmann, Sie → Du am 07.09.).

## Messung

Delta-Basis 09.09.2026 17:10, Fenster 24,0 h, **115 Commits**, nativ im SSD-Klon gemessen.
Uhr: Station 17:10 CEST, Synology 17:00:08, keine Abweichung. Anschlussprobe lückenlos
(`0db388bed` vor dem Fenster, `73356adc0` ältester darin, HEAD `af5b903dc`).

Strukturelles Delta: kein neuer Baustein. Geändert: `rules/jans-dna-facetten.md` (`efbaafac5`),
`rules/anrede-kontakte.md` und `CLAUDE.md` (`1081dfdd7`), `connectors/WEGE.md` (`e397d8950`), dazu
`wissen/tools/datenstand-waechter.py` (`8b0a2b9d6`).

## Befunde im Einzelnen

**SYN-81.** `grep` über 34 lokale Task-Prompts, 43 Vorlagen und (lesend per `ssh mini`) 9 Prompts
des Mac Mini: 4 / 4 / 0 Treffer. Zwei davon sind erledigte One-Times. Der Nachfolger
`immobewertung-marktpuls-261201` Z. 46 trägt bereits die richtige Fassung; die Korrektur wurde
nie in die Vorgänger zurückgetragen. Vorschlag: den Commit-Schritt in Prompt und Vorlage auf
`scripts/nas-commit-now.sh` umstellen. Nicht gesetzt (Präzedenz SYN-49/56: ausführende Bausteine
fasst dieser Lauf nicht an). Fristen-Eintrag oben in `logbuch/fristen.md`.

**SYN-82.** Audit E findet eine veraltete Geld- oder Marktzahl per Konstruktion nie, weil dafür
keine neuere raw-Quelle einläuft. Genau das hat das Energie-Audit vom 23.08. gemessen (35 von 37
Themenartikeln ohne `datenstand`). Die Werkzeuge laufen nur KB-weise (energie) und einmal hub-weit
beim Wissens-Chef. Gesetzt: Querverweis-Absatz in `skills/wissenscheck/SKILL.md` (Audit-Text
unverändert, Contract-Feld «Vorgelagert» bewusst leer gelassen) und Rückkante in
`wissen/tools/README.md`.

**SYN-80.** Die zwei Artefakte: `wiki/stimme.md` Z. 104 begann mit « . Der Abbruch …» (Datum
gestrichen, Punkt stehen gelassen), `wiki/arbeitsweise.md` Z. 188 verlor den Satzpunkt. Ursache: der
Verdichtungsschritt prüft den Anker (genau ein Treffer), nicht das Ergebnis. Gegenprobe
Bedingungsverlust an der SYN-43-Stelle: widerlegt, die Bedingung «innerhalb des Vorgangs» steht im
nächsten Punkt (Z. 239-240). Vorschlag an die twin-KB: ein Satzbau-Check nach jeder Verdichtung.

## Nullbefunde

`CLAUDE.md` WC56-1 (datierte Stand-Angabe ist mit 260830 Ziff. 3 vereinbar), `WEGE.md` IPTV
(privat, Rückverweise lösen auf), Stadelmann-Vermerk (kein Widerspruch zum Kompilat).

## To-do

1. **Raphael oder Betrieb, vor 01.10.:** Commit-Schritt in `wissenscheck-monatlich` und
   `immobewertung-training` umstellen (SYN-81).
2. **Raphael:** Riegel-Entscheid 36'000 B (SYN-69/78/80, sechster Fidelity-Lauf in Folge).
3. **Wissens-Chef:** Einbindung `wissen/tools/` in `wissenscheck`, Audit E für Geld und Markt
   (SYN-82 (b)).
4. **twin-KB:** Satzbau-Check im Verdichtungsschritt (SYN-80 (d)).
