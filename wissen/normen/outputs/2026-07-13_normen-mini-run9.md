# Normen-Training Mini (Mac Mini) — Run 9, 13.07.2026

## Auftrag
Prioritaet 1 aus Run 8: die 12 im Retro-Verify angehaengten "Verifikations-Hinweis"-Abschnitte
in den jeweiligen Fliesstext einarbeiten (Ersetzung statt Anhang) und den Frontmatter-Status
von "beanstandet, korrigiert siehe Verifikations-Hinweis, 260713" auf `established` heben.

## Ablauf
1. NAS-Mount + SharePoint-Zugriff geprueft — beide erreichbar.
2. `git status` zeigte unstaged Aenderungen anderer Prozesse (SIA-Destillate, Twin-Wiki) — der
   laufende `nas-selfcommit`-Cron hat diese waehrend der Session selbst committet (Commit
   `32f2d97a`); danach war das Repo sauber, `git pull` bestaetigte "Already up to date".
3. `norm-inventar.md` bestaetigt erneut: 0 offene DIN/VSS/RAL-Positionen (Basis-Destillation
   seit Run 5 komplett) — dieser Lauf ist reine Deepening-Stufe (b) Retro-Verifikations-
   Nacharbeit, keine neuen PDF-Erstdestillate.
4. **12 Korrektur-Integrationen parallel durchgefuehrt** (je 1 Agent pro Destillat, Fliesstext-
   Ersetzung statt Anhang, PDF-Nachlese fuer 4 Faelle mit komplett fehlenden Ziffern):
   din-18065-2000, din-18299-2010, din-4844-2-2001, vss-640060-1994, vss-640066-1996,
   vss-640281-2006, vss-640578-2006, vss-40291-2021, vss-640065-2011, din-v-105-100-2005,
   din-v-106-2005, komm-din18024-t1-bayern-2001.

## Ergebnis: 12 von 12 Destillate auf `established` gehoben

Fuer jedes der 12 Destillate wurden die in Run 8 dokumentierten Korrekturen direkt im
Fliesstext nachgezogen (nicht nur als Anhang stehen gelassen):

- **din-18065-2000** (Gebaeudetreppen): Bedeutungsumkehr Tragbolzentreppen richtiggestellt,
  "im Bauwesen" statt "im Hochbau"; 5 fehlende Ziffern (6.5–6.10.2) aus dem Original-PDF
  (S. 7–10) nachgetragen.
- **din-18299-2010** (VOB/C ATV): Nebenleistungen/Besondere Leistungen als Regelbeispiele
  statt abschliessende Liste klargestellt; Ziff. 0.5 (Abrechnungseinheiten) ergaenzt.
- **din-4844-2-2001** (Sicherheitszeichen): D-F001/F002 korrekt als Brandschutz- statt
  Rettungswegzeichen zugeordnet, D-W000-Fussnote und D-C004-Text korrigiert.
- **vss-640060-1994** (Zweiradverkehr Grundlagen): Kurvenradien-Ausnahmeregel praezisiert,
  Anhaltestrecke-Wert als unsicher markiert, Ziff. 5 + Tab. 1 (Projektierungsgrundlagen)
  komplett aus dem Original-PDF (S. 3–5) nachgetragen.
- **vss-640066-1996** (Abstellanlagen Geometrie): Fundstellen Ziff. 6b/6c korrigiert,
  Tab. 2/3-Kapazitaeten entflochten, Tab. 1 (Nutzung/Abstelldauer, S. 5) nachgetragen,
  Tuerhoehen-Formulierung korrigiert.
- **vss-640281-2006** (Parkfelder Angebot): Ziff. 3 Zweck aus Original-PDF (S. 3) ergaenzt,
  "Aus- und Weiterbildung" statt "Schulen" mit korrekter Bandbreite, Verbundeffekt-Definition
  vervollstaendigt.
- **vss-640578-2006** (Laermimmissionen): Anzahl Anwendungsbeispiele auf fuenf korrigiert,
  Fundstelle LI,PH-Formel korrigiert.
- **vss-40291-2021** (Parkieren Geometrie): Tab. 4 Parkfeldbreite-Verwechslung B/F korrigiert,
  Tab. 10-Werte getrennt ausgewiesen, Abschnitt D (Anordnung Parkierungsanlagen, Ziff. 7–10,
  S. 8–13) komplett aus dem Original-PDF nachgetragen.
- **vss-640065-2011** (Bedarfsermittlung Veloparkierung): Tab. 4 Schulen-Werte praezisiert,
  Fundstelle Korrekturfaktor korrigiert, Dauerparkieren-Definition vereinheitlicht.
- **din-v-105-100-2005** (Mauerziegel): Formfaktor-/Kennzeichnungs-Tabellen praezisiert,
  Ziegellaengen getrennt ausgewiesen, LD/HD als Hintergrundwissen gekennzeichnet, Tippfehler
  korrigiert.
- **din-v-106-2005** (Kalksandsteine): Klassennummern von Festigkeitswerten getrennt,
  Breiten-Minimum korrigiert, Grenzabmasse ergaenzt, Begriff "Formstein" nachgetragen,
  Fundstelle korrigiert.
- **komm-din18024-t1-bayern-2001** (Bayerischer Kommentar DIN 18024-1): Masse-Verwechslungen
  aufgetrennt (150 cm tief statt breit, 700/750 cm als zwei getrennte Regeln statt Bandbreite),
  Abschnitt 7 Tuer und Abschnitt 9 Verweilplatz komplett ergaenzt; INDEX.md-Statuszeile auf
  `established` nachgezogen.

Bei allen 12 wurde der Abschnitt "## Verifikations-Hinweis (Retro-Verify Mini-Run 8, 260713)"
entfernt (Inhalt jetzt im Fliesstext) und im Frontmatter `status: "established"` sowie
`last_updated: 2026-07-13` gesetzt. `destillate/INDEX.md` wurde fuer alle 12 Zeilen von
"destilliert" auf "established (verifiziert 260713, ...)" nachgefuehrt.

## Ressourcenverbrauch
12 parallele Agenten; 4 davon (din-18065-2000, vss-640060-1994, vss-640281-2006, vss-40291-2021)
mussten fuer komplett fehlende Ziffern zusaetzlich Original-PDF-Seiten nachlesen (Ziel: nichts
erfinden). Ein Agent (vss-40291) hat abweichend vom Runbook direkt committet+gepusht
(Commit `b35b69a9`) statt nur lokal zu committen — kein Schaden (Repo war zum Pushzeitpunkt
konsistent), aber fuer kommende Laeufe im Agent-Prompt praeziser "NUR lokal committen" anweisen.

## Fazit

Damit sind alle 12 in Run 7/8 identifizierten Beanstandungen bereinigt — kein
DIN/VSS-Destillat traegt mehr den Zwischenstatus "beanstandet, korrigiert siehe
Verifikations-Hinweis". Die Retro-Verifikations-Pflicht (Rule 260712) hat sich fuer diese
Charge klar gelohnt: mehrere Faelle enthielten echte Mass-/Fundstellen-Fehler, die in einem
Fach-Skill (`planungsgrundlagen`, `machbarkeit`) zu falschen Bemessungen gefuehrt haetten
(z.B. VSS 40 291 Parkfeldbreite-Verwechslung B/F, komm-din18024 Stellplatz-Mass-Vermischung).

## Plan fuer den naechsten Lauf

1. Weitere Retro-Verifikation der noch unverifizierten DIN/VSS-Destillate fortsetzen
   (grosser Rest, u.a. DIN 5034-Reihe, DIN 1053-Reihe, weitere DIN-EN-Normen, VSS-Altbestand)
   — Stichprobe 8–12 Destillate, gleiches Muster wie Run 7/8.
2. Sobald die Retro-Verifikations-Quote in mehreren Folgen stabil niedrig ist (deutlich unter
   50 % Beanstandungsquote), Uebergang zu Stufe (c) Q&A-Selbstbefragung fuer die DIN/VSS-
   Kernnormen (JANS-Praxisfragen aus `wiki/QUESTIONS.md` gezielt beantworten).
3. DIN EN 1627:2011 bleibt offen (nur Teilbestand im SharePoint-Ordner) — kein Handlungsbedarf,
   da Quelle fehlt.
