---
title: Trainingslauf 38 — Auswertungslauf (Korpus-Spec `bauprodukte`)
status: established
last_updated: 2026-07-30
sources: [wissen/spec/outputs/2026-07-28_destillat-bauprodukte_spec.md, wissen/bauprodukte/CHANGELOG.md, wissen/bauprodukte/wiki/ (8 Artikel), skills/wissens-destillat/training/bauprodukte-sektionen.md, skills/wissens-destillat/KORPUS-QUEUE.md, Task-Registry (list_scheduled_tasks, 30.07.2026 23:50)]
links: [[anwendung-jans]], [[verifier]], [[environment-jans-hub]]
---

# Trainingslauf 38 — Auswertungslauf

Datum: 2026-07-30, 23:45–00:15 CEST (Datum gemessen via `date`, Rule 260730b).
Lauf-Typ: **Auswertungslauf** — es gibt eine neue reale Spec seit Lauf 37 (27.07.):
`outputs/2026-07-28_destillat-bauprodukte_spec.md`. Damit ist der Ereignis-Trigger des
Statuskopfs («läuft nur auf Zuruf bei realer Spec-Anwendung») sachlich erfüllt.

## 1. Ausgewertet: die neunte reale Spec — und der erste maschinen-gerichtete Typ

Die Korpus-Spec `bauprodukte` (28.07., 01:30-Lauf) ist die **neunte** belegte Spec-Anwendung
und unterscheidet sich strukturell von allen acht vorherigen: ihr Adressat ist **kein Mensch
und kein einzelnes Vorhaben**, sondern ein **Strom unbeaufsichtigter Folgeläufe** (Nachtschicht
Mac Mini, vier Slots 23:30/02:30/05:30/13:30, wechselnde Modelle je Phase). Sie wurde selbst
autonom verfasst, ohne Entscheide zu erfinden: die Schlüsselentscheide sind aus bereits
gesetzten Artefakten (`bauprodukte/CLAUDE.md`, `KORPUS-QUEUE.md`, Hub-Rules) abgeleitet, echte
offene Wahlen wanderten nach `QUESTIONS.md`.

Damit ist der Typenkatalog vollständiger: neben der **entschiedenen Spec** (Interview geführt)
und der **Interview-Vorbereitung** (Lauf 20/21, Trigger jetzt, Interview später) steht neu die
**abgeleitete Spec** — Trigger jetzt, Interview gar nicht, weil kein menschlicher Entscheid
aussteht, sondern nur die bindende Fixierung bereits gesetzter Vorgaben.

### Was zum ersten Mal messbar ist

Bisher war die Nützlichkeit einer Spec anekdotisch belegt («Gate triggerte korrekt+nützlich»).
Hier ist sie **zählbar**, weil die Spec sieben Bewertungskriterien vorab festschrieb und
danach 15 destillierte Dateien / 8 Wiki-Artikel in fünf Läufen über 2,5 Tage entstanden:

| Kriterium der Spec | Ist-Stand 30.07. (8 Artikel) |
|---|---|
| Frontmatter mit `sources` je Artikel | 8/8 |
| `status: emerging` beim ersten Beleg, kein vorschnelles `established` | 8/8 `emerging` |
| Datumsstempel bei jeder Preis-/Kennwertangabe | 8/8 |
| BKP-Code im Artikel geführt | 8/8 |
| Offene Fragen nach `QUESTIONS.md` statt stille Lücke | 11 Einträge, davon 3 neu am 30.07. |

Das ist der bislang stärkste Beleg für die dritte Stufe der Methode («Präzise + Verifier»):
**vorab definierte Bewertungskriterien wirken als Abnahme-Ersatz dort, wo nachts kein Mensch
abnimmt.**

### Der entscheidende Zusatz — Kriterien allein genügen nicht

Der stärkste Einzelbeleg des Laufs relativiert den Satz oben zugleich. Am 30.07. strich der
Wissens-Chef (Run 21) in `bkp-261-aufzuege.md` eine **abgeleitete, unbelegte Kabinenbreite
(1250 mm)** und ersetzte sie durch die belegte Masskizzen-Zahl (1050 mm); dadurch kippte der
darauf aufgebaute SIA-500-Abgleich (Standardkategorie verfehlt). Das ist exakt Kriterium 1
(Fundstellenpflicht) und die Verifier-Regel «autoritative Instanz bei Zweifel an einem
Kennwert» in Aktion.

Entscheidend ist, **wer** sie anwandte: nicht der schreibende Loop — der hatte die unbelegte
Ableitung selbst produziert und gegen das eigene Kriterium verstossen — sondern ein **zweiter,
unabhängiger Loop**. Die Lehre für [[verifier]]: ein Kriterienkatalog in der Spec ist eine
Prüf-*Vorschrift*, keine Prüf-*Instanz*. Er wirkt erst, wenn ein anderer Prozess als der
erzeugende ihn anwendet. Eine Spec, die maschinelle Folgeläufe steuert, muss die zweite Instanz
darum **benennen** (hier faktisch `wissens-chef`), sonst prüft der Autor sich selbst.

## 2. Korrektur-Delta: fünfter Alterungsmodus — die maschinelle Selbst-Überholung

Die Spec veraltete in ihrem Plan-Abschnitt **binnen drei Stunden**. Sie führt als Faktenbasis
«Inventarstand: 2/37 erfasst» und als ersten Checkpoint «Inventar Phase 0 fortsetzen (35 von 37
Sektionen offen)». Um **04:24 desselben Tages** war die Sektions-Inventarisierung bei **37/37**
— erledigt vom nächsten Slot der eigenen Maschine.

Zweitbeleg derselben Familie: `KORPUS-QUEUE.md` (mtime 28.07. 06:58) führt in der Stand-Spalte
weiterhin «6 Artikel, Stand 28.07. 06:30»; real sind es 8 Artikel / 15 destillierte Dateien.

Das ist ein **fünfter Alterungsmodus** neben den vier bekannten. Die Faktenbasis-Drift (Lauf 28,
SYN-02) beschrieb Tage bis Wochen, während eine Spec auf Freigabe wartet. Hier ist die Skala
**Stunden**, und die Richtung ist umgekehrt: nicht die Umwelt zieht an der wartenden Spec vorbei,
sondern die **von der Spec selbst gesteuerte Maschine** überholt deren Zählstände.

Konsequenz, in [[anwendung-jans]] eingetragen: **Zählstände gehören nicht in den bindenden Teil
einer Spec.** Wo ein Stand nötig ist, wird auf das nachführende Artefakt verwiesen
(`bauprodukte-sektionen.md`, `-inventar.md`), nicht die Zahl kopiert. Das ist inhaltlich
dieselbe Krankheit wie **F-ENV1** (Zählstände ohne Nachführungs-Verfahren, Run 20) — F-ENV1
verallgemeinert sich damit von Wiki-Artikeln auf **Spec-Dokumente allgemein** und hat jetzt
einen zweiten, unabhängigen Beleg.

## 3. Gate-Schwelle (F1)

Unverändert. Die neunte Anwendung ist wieder mehr-Scope und hoch-einsatzig (bindend für einen
ganzen Korpus über Monate); **weiterhin kein Beleg für Überdehnung**, weiterhin kein genervter
Mittelfall in `outputs/`. Keine Rule-Änderung — `rules/spec-methode.md` bleibt unberührt.

## 4. Environment-Audit — ein belegter Befund, nicht autonom repariert

Statt einer erzwungenen Top-5-Liste nur der eine Befund, der in diesem Lauf tatsächlich
gemessen wurde (Gate nicht überdehnen gilt auch nach innen):

**Registry-Diskrepanz `spec-training`.** Der Task trägt `enabled: false` (Ereignis-Trigger,
Entscheid Raphael 26.07.), aber `lastRunAt: 2026-07-30T21:44:58Z` = **23:44 CEST heute** —
dieser Lauf. Der hinterlegte Cron wäre `10 4 * * *` (04:10), also nicht die Laufzeit; die
Mac-Mini-Nachtschicht ist auf dieser Station nicht geladen (`launchctl list` ohne Treffer);
im Lauf-Journal `logbuch/laeufe/260730-laeufe.jsonl` steht keine `spec`-Zeile.

**Die Ursache ist damit nicht belegbar** — und wird hier bewusst nicht erraten (Lauf-21-Lehre:
ein Artefakt ist keine Quelle für seine eigene Herkunft; Rule 260730b: messen, nicht ableiten).
Faktum ist nur: ein als deaktiviert geführter Loop hat gefeuert. Das berührt die Betriebsregel
«Deaktivierung eines Loops braucht ALLE Orte» und liegt ausserhalb des KB-Mandats →
**an Raphael/Betrieb geflaggt, nicht autonom geändert** (dieselbe Disziplin wie bei den
`logbuch`-Befunden der Läufe 11–25).

Inhaltlich war der Lauf trotzdem berechtigt: die Trigger-Bedingung (neue reale Spec) war erfüllt.

## 5. Quellen-Schuld (Schritt 5 des Programms)

Nichts einzuholen: **F4 vollständig eingelöst** (Karpathy-Gist 30.06., Cherny-Primärquelle
03.07.), **F5 eingelöst** (Anthropic «Plan before editing», 27.06.). Keine offene Quelle in
F4/F5 — ehrlich vermerkt statt eine Ersatzaufgabe zu erfinden.

## 6. Geändert in diesem Lauf

- `wiki/anwendung-jans.md` — fünfter Alterungsmodus + Regel «keine Zählstände im bindenden Teil»;
  Hinweis, dass eine maschinen-gerichtete Spec ihre zweite Prüfinstanz benennen muss.
- `wiki/verifier.md` — «Ein Kriterienkatalog ist keine Prüfinstanz» (belegt bkp-261-Kabinenmass).
- `wiki/QUESTIONS.md` — F1 neunter Trigger + neuer Spec-Typ; F-ENV1 verallgemeinert.
- `CHANGELOG.md`, dieser Report.

## 7. Nächstes

- **Reue-Prüfung im nächsten Lauf:** hält die Kriterien-Konformität der `bauprodukte`-Artikel,
  wenn der Korpus wächst (heute 8 Artikel / 15 von 214 Dateien)? Besonders Kriterium 6
  (`established` erst bei unabhängiger Zweitbelegung) steht unter Druck, sobald die ersten
  Artikel eine Zweitquelle bekommen. Prüfen am Artefakt (Frontmatter), nicht am CHANGELOG-Text.
- **Offen an Raphael/Betrieb:** die Registry-Diskrepanz aus Abschnitt 4.
- **Nicht wieder aufwärmen:** F4/F5 sind geschlossen.
