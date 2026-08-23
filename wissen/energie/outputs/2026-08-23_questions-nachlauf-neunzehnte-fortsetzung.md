---
titel: "QUESTIONS-Nachlauf, neunzehnte Fortsetzung: E-R129-5 geschlossen"
datum: 2026-08-23
status: final
---

# QUESTIONS-Nachlauf (neunzehnte Fortsetzung, 23.08.2026)

## Auftrag

Weitere offene Fragen in `wissen/energie/wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und
Datenstand, danach in die Wiki-/Destillat-Artikel einarbeiten. Anschluss an die achtzehnte
Fortsetzung (`outputs/2026-08-23_questions-nachlauf-achtzehnte-fortsetzung.md`).

## Bestandsaufnahme

Vollständige Durchsicht aller mit `- [ ]` markierten Zeilen in `QUESTIONS.md` (4'504 Zeilen).
Ergebnis: die meisten sind entweder bereits als `[x]` GESCHLOSSEN mit darunter stehen
gelassenem Original-Wortlaut (KB-eigenes Muster, keine doppelte Arbeit nötig) oder echte
Sackgassen bzw. Entscheide, die nur Raphael treffen kann:

| Punkt | Status | Grund |
|---|---|---|
| E-R148-1 (P1) | offen, Beschaffungsentscheid | Normkauf SIA 380/1:2016 nötig für U-Wert-/Q_H,li-Tabellenwerte und Gebäudekategorien |
| E103 | offen, Entscheid Raphaels | Pflegeplatz-Flächenkennwert nur über Freigabe eigener JANS-Projektdaten (2410 WALD u.a.) herleitbar |
| E94 | offen, Entscheid Raphaels | Innendämmung CHF/m² — breit erfolglos recherchiert (Run 82), einziger Weg ist eigene Projektofferte |
| E-R134-3 (P3) | offen, Sackgasse | Lambda-Anomalie in Merkblatt ohne Herausgeber/Datum, Aufwand nicht gerechtfertigt |
| E-R150-3 (P3) | offen, Sackgasse | Zwei Widersprüche im Willerzell-Bericht selbst nicht auflösbar |
| E-R161-1 (Rest) | offen, Beschaffungsentscheid | «schwach belüftete» Luftschicht, Normkauf SN EN ISO 6946 |
| E-WC32-1 (P3) | Prozessnotiz | Arbeitsweise-Lehre, kein Content-Punkt |
| E-R129-5 (P4) | **war der einzige aus eigener Kraft lösbare Punkt** | s.u. |

## Bearbeitung: E-R129-5

Ursprünglicher Punkt (Run 129, 13.08.2026): das PDF `Standards_Kennzeichnungssystem_V2.2.pdf`
(Stadt Zürich AHB) wurde geprüft und als `[-]` (nicht destilliert) abgelegt, weil es keine
energetischen Kennwerte enthält. Vermerkt für Neubewertung, «sobald die KB das Thema
Zählerstruktur/Submetering vertieft».

Diese Bedingung ist erfüllt: `[[energiemonitoring-submetering-grossverbraucher-zh-sz]]` ist
seit Run 117 (27.07.2026) `established` und beschreibt die rechtlichen EN-141-/MuKEn-Schwellen
für Gebäudeautomations-Monitoring in ZH/SZ.

**Vorgehen:** PDF über die M365-CLI erneut beschafft (`m365 spo file get --asFile`, Site
`/sites/PL`, Pfad `PL  Immobilienpreise/04_Merkblätter/Projektadmin AHB/14-Energie-und
Gebaeudetechnik/14.5-Standards/Standards_Kennzeichnungssystem_V2.2.pdf`, zwei Leerzeichen im
Bibliotheksnamen, Werkzeugfalle aus Run 134 erneut bestätigt). Alle 24 Seiten mit PyMuPDF
extrahiert und gelesen.

**Befund:** Der frühere Negativbefund («keine energetischen Kennwerte») bleibt richtig. Neu
erkannt: das Dokument definiert eine DIN-basierte (DIN EN 6779/61346, KKS-analoge)
hierarchische Adressierung für Gebäudetechnik-Anlagen UND Automations-Datenpunkte
(Standort→Gebäude→Raum→Anlage→Komponente→Signal), mit eigenem Signaltyp **`Z` = Zählwert**
und explizitem Bezug zum städtischen Energie-/Anlagenmonitoring («IMMO-Box», S. 3 — «Vorgaben
der Portfoliostruktur und der Parameter für das Energie- und Anlagenmonitoring (IMMO-Box) der
IMMO»). Das ist genau das technische Werkzeug, das ein Submetering-/Automations-
Datenpunktkonzept (EN-141-Funktionen a-g) in der Praxis strukturiert — komplementär zum
bereits destillierten `[[ahb-zuerich-gt-rl9-gebaeudeautomation]]` (Funktionen statt
Adressierung).

**Umgesetzt:**
- Neues Destillat `destillate/stadt-zuerich-kennzeichnungssystem-gebaeudetechnik-2007.md`
  (status `emerging` — Dokument 19 Jahre alt, dokumenteigene Revisionstabelle leer, Aktualität
  nicht feststellbar).
- Verlinkt in `[[energiemonitoring-submetering-grossverbraucher-zh-sz]]`, Bauherren-Transfer
  Punkt 2 (Zählerkonzept) und Backlinks.
- `QUESTIONS.md`: E-R129-5 als `[x]` geschlossen, Original-Wortlaut darunter belassen.
- `destillate/INDEX.md`, `training/pdf-inventar.md` (`[-]` → `[x]`), `raw/_INGESTED.md`
  (Nachtragszeile) nachgeführt.
- `CHANGELOG.md`-Eintrag gesetzt.

## Prüfung nach Rule 260811

`git diff --numstat` nativ per ssh auf der Synology (SMB-`git status` hängt, Rule
`sync-kanonische-quelle`):

```
1  0  wissen/energie/destillate/INDEX.md
8  2  wissen/energie/destillate/energiemonitoring-submetering-grossverbraucher-zh-sz.md
1  0  wissen/energie/raw/_INGESTED.md
1  1  wissen/energie/training/pdf-inventar.md
14 1  wissen/energie/wiki/BAUHERREN-FAQ.md   ← NICHT von dieser Session verursacht
15 0  wissen/energie/wiki/QUESTIONS.md
?? wissen/energie/destillate/stadt-zuerich-kennzeichnungssystem-gebaeudetechnik-2007.md
```

Alle eigenen Diffs sind rein additiv bzw. gezielte Ersetzung der selbst editierten Stellen
(keine fremde Löschung). Die Änderung an `BAUHERREN-FAQ.md` stammt nachweislich nicht aus
dieser Session (kein Edit/Write dieser Session hat die Datei berührt) — vermutlich eine
parallel laufende Session am selben KB (Muster analog Run 160/161 vom selben Tag). Nicht
angerührt, hier nur dokumentiert.

## Verbleibend offen

Keine neuen Recherche-Ansätze in diesem Lauf gefunden über E-R129-5 hinaus. Verbleibend:
E-R148-1 (P1, Normkauf SIA 380/1:2016), E103/E94 (Freigabe eigener Projektdaten), E-R134-3
(Sackgasse), E-R150-3 (Sackgasse, im Original nicht auflösbar), die «schwach belüftete»
Luftschicht-Zwischenstufe aus E-R161-1 (Normkauf SN EN ISO 6946). Alle fünf sind entweder
Beschaffungsentscheide Raphaels oder dokumentierte Sackgassen ohne weiteren
Recherche-Ansatz — die KB ist damit aus eigener Kraft bis auf diese fünf Punkte
durchgearbeitet.
