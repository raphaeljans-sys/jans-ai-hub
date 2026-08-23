---
title: Interaktive Pruefung — Register-Nachtrag Wasserversorgung ZH + neue Matrixzeile Mehrwertabgabe
status: established
last_updated: 2026-08-24
sources: [wissen/koordination/QUERBEZUEGE.md, wissen/koordination/CHANGELOG.md, wissen/baurecht/wiki/baureife-und-erschliessung.md, wissen/baurecht/wiki/QUESTIONS.md, wissen/baurecht/outputs/2026-08-23_buch-run93.md, wissen/baurecht/outputs/2026-08-23_buch-run98.md, wissen/immobilienbewertung/wiki/residualwertmethode.md, wissen/energie/outputs/2026-08-23_energie-audit-qualitaetsoffensive.md]
links: [[QUERBEZUEGE]]
---

# Interaktive Pruefung — 24.08.2026

Kein Scheduled Run (kein "Wissens-Chef Run N", kein "Synergie-Lauf N") — Auftrag direkt im
Gespraech, Fortsetzung der Register-Pflege. Delta-Basis: letzter geloggter Stand ist
Synergie-Lauf 16 (23.08.2026, 17:10-17:45); seither 98 weitere Commits, u.a. energie-Audit
(47 Befunde, 3 P1 korrigiert), baurecht Buch-Runs 93/96/97/98/99, immobilienbewertung
Vertiefungslaeufe 7-12, planungsgrundlagen Vertiefungslaeufe 6-8 (neue Pruefwerkzeuge
`link-zielabgleich`, `kennwert-recompute` in `wissen/tools/`).

**Wichtiger Betriebshinweis (kein Chronik-Eintrag, nur Kontext dieser Notiz):** Waehrend dieser
Sitzung liefen parallel mehrere `claude-run.sh`-Prozesse (rev1/rev3/rev6/rev7/rev8/rev9) auf
demselben NAS-Repo, je an einer anderen KB (u.a. `immobilienbewertung` gleichzeitig mit dem
hier bearbeiteten Querbezug). Ein `git diff --numstat` gegen den SMB-Mount haengte sich
prompt auf (dieselbe Falle wie Rule `auto-verbesserungen` 260726/260811 beschreibt) und wurde
nach Timeout beendet, ohne Lock-Datei zu hinterlassen. Verifikation der eigenen Edits erfolgte
daher ueber gezielte `grep`-Treffer + Zeilenzahl statt `git diff` — beide Zieldateien zeigen
die erwarteten, additiven Aenderungen ohne Dublette der alten Formulierung.

## 1 · Registerpflege: P1 "Wasserversorgung ZH" war fachlich seit einem Tag geschlossen

`QUERBEZUEGE.md` Zeile 34 fuehrte die Zuordnung §§ 95-100 WsG / § 178 WsV weiterhin als
"im Hub noch unverarbeitet, als P1 angemeldet" (Stand Run 20, 29.07.2026). Tatsaechlich hat
`baurecht` diese Bring-Schuld bereits am **23.08.2026** direkt (nicht Teil der Buch-Run-Serie)
geschlossen: §§ 93-101 WsG + § 178 WsV vollstaendig gelesen und in
`wiki/baureife-und-erschliessung.md`, Abschnitt "Versorgung & Entsorgung (§ 236 PBG)"
eingearbeitet (Bezugspflicht § 97 Abs. 1 WsG, Anschlusspflicht § 178 Abs. 1 WsV, Brauchwasser
gebuehrenfrei § 97 Abs. 3 WsG, Gebuehrenkette § 100 WsG i.V.m. §§ 61 f.), mit vollstaendiger
Fundstelle (`raw/260803_amtlich_zh_wsg.md` Z. 1297-1403, `raw/260803_amtlich_zh_wsv.md`
Z. 2090-2105). `wiki/QUESTIONS.md` fuehrt den Punkt bereits als "✅ ERLEDIGT 2026-08-23".
**Nur die Registerzeile hier hing zurueck** — reine Buchfuehrungslücke, kein fachlicher
Rueckstand. Zeile 34 nachgezogen (Fassung/§-Bereich korrigiert auf §§ 93-101, Schluss-Vermerk
mit Beleg ergaenzt).

**Verifiziert durch eine unabhaengige Lese-Gegenprobe** (Explore-Agent, adversarial, siehe
Anhang unten) — bestaetigt: Buch-Run 93 (23.08.2026) behandelt eine ANDERE Norm (§§ 97/98 WsV,
Trennsystem-Pflicht Meteor-/Schmutzwasser) und ist nicht die Quelle der Schliessung; die
eigentliche Schliessung erfolgte separat am selben Tag ausserhalb der Run-Zaehlung.

## 2 · Neuer Querbezug: Mehrwertabgabe ZH (baurecht, frisch verifiziert) ↔ immobilienbewertung

`baurecht` Buch-Run 98 (23.08.2026) hat den ZH-Mehrwertausgleich (MAG, LS 700.9) erstmals im
amtlichen Volltext gelesen (bisher zitierte nur der Entwurf von 2019) und zwei materielle
Korrekturen gefunden: kantonal ist die Abgabe **fix 20 %** (kein Ermessen, kein Split nach
Einzonung/Umzonung) und nur bei **Einzonung** oder **Umzonung in eine Zone fuer oeffentliche
Bauten** ausgeloest (§ 2 Abs. 1, § 4 Abs. 1 MAG); kommunal koennen Gemeinden **bis 40 %** des
um Fr. 100'000 gekuerzten Mehrwerts erheben, aber nur bei Auf-/Umzonung, nur mit eigenem
Reglement und mit einer Flaechenschwelle 1'200-2'000 m² (§ 19 MAG).

Gegenprobe in `wissen/immobilienbewertung/wiki/residualwertmethode.md`: der Artikel fuehrt
seit Vertiefungslauf 9 (23.08.2026) unveraendert die generische Wuest-Kurs-Zeile "Mehrwertabgabe
bei Um-/Aufzonungen: 20-40 % des Planungsmehrwerts (Ermessen der Gemeinde)" — **kein
Sachwiderspruch** (die Bandbreite deckt die ZH-Zahlen zufaellig ab), aber eine
Praezisions-Luecke mit echter Rechenfolge: die generische Formulierung suggeriert eine
einzige, gemeinde-ermessensabhaengige Quote, waehrend in ZH zwei unabhaengige, an
unterschiedliche Ausloeser gebundene Saetze nebeneinander, nur einer oder gar keiner greifen
koennen. `agents/wirtschaftlichkeit-rechner.md` und `skills/machbarkeit/SKILL.md`
(Residualwert-Motor Typ B) fuehren Mehrwertabgabe **ueberhaupt nicht** — ungeprueft gelassen,
ob das im Scope liegt (Machbarkeitsstudien Typ B rechnen meist innerhalb der geltenden Zone,
nicht bei Um-/Aufzonung; eine Klaerung ist kein trivialer Querbezug und bleibt offen).

**Gesetzt (active-with-flagging, additiv):**
- Neue Matrixzeile in `QUERBEZUEGE.md` (nach der Zeile "Mehrfach-Destillation…", vor den
  Struktur-Muster-Blockquotes).
- Querbezug-Blockquote + Frontmatter-Ergaenzung (`sources`, `links`) in
  `residualwertmethode.md`, unmittelbar nach dem bestehenden `grobkosten`-Querbezug — der
  bestehende Wuest-Kurs-Text bleibt unveraendert (Belegtreue zur Quelle), die ZH-Praezisierung
  steht als eigener, klar gekennzeichneter Block daneben.

**Bewusst nicht angefasst:** `agents/wirtschaftlichkeit-rechner.md` — ob Mehrwertabgabe in den
Scope von Typ-B-Machbarkeitsstudien gehoert, ist eine methodische Entscheidung, keine
Verlinkung; als offener Punkt hier vermerkt, nicht selbst entschieden.

## 3 · Gegengeprueft, kein Befund: energie-Audit (23.08.2026) ohne Cross-KB-Streuung

Der energie-Audit vom 23.08.2026 (47 Befunde, 3 P1 korrigiert: THGE-Grenzwert-Nenner GF↔EBF,
erfundene 30-%-Solarthermie-Bundesfoerderung, fehlender EFH/&lt;40kW-Ausschluss Klimapraemie)
wurde gezielt gegen `planungsgrundlagen`, `bauprodukte`, `grobkosten`, `immobilienbewertung`,
`normen` gegrept (Kennzahlen, Foerder-/Programmnamen). **Keine der drei korrigierten Aussagen
lebt unkorrigiert in einer anderen KB weiter** — die Fehler waren rein energie-intern
(Destillat ↔ FAQ ↔ Index), keine Cross-KB-Duplikate. Kein Befund, keine Aktion.

## 4 · Nicht bearbeitet (Umfang dieser Sitzung)

Aus Zeit-/Kostengruenden nicht im Detail nachgezogen: die drei neuen Pruefwerkzeuge
(`bezugsgroessen-check.py`, `datenstand-waechter.py`, `kennwert-recompute.*`,
`link-zielabgleich.*`) sind bereits in `wissen/tools/README.md` selbst dokumentiert und tragen
eine eigene Anti-Dublette-Warnung ("wer hier ein siebtes Werkzeug bauen will…") — kein
Koordinations-Befund. Die baurecht-Buch-Runs 96/97/99 (Vorentscheid, Raumplanung, Natur-/
Denkmalschutz, alle Modell-D-Re-Verifikationen ohne materielle Aenderung) wurden nicht gegen
andere KBs gegengeprueft — kein Anlass erkannt, der ueber die bestehenden Matrixzeilen
hinausgeht.

## Anhang — Ergebnis der unabhaengigen Lese-Gegenprobe (Explore-Agent, adversarial)

**Aufgabe A (Wasserversorgung ZH):** bestaetigt P1 fachlich geschlossen seit 23.08.2026,
Register hing zurueck (siehe Abschnitt 1).

**Aufgabe B (energie-Audit-Cross-KB):** bestaetigt keine Streuung der drei P1-Korrekturen in
andere KBs (siehe Abschnitt 3). Beide Ergebnisse in dieser Sitzung uebernommen.
