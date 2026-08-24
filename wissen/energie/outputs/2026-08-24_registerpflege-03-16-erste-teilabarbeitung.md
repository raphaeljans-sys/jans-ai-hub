# Registerpflege 03.16 — erste Teilabarbeitung (24.08.2026)

Auftrag: weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und
Datenstand, Anschluss an den Audit-Nachlauf desselben Tages. 03.16 («Register-Sammelauftrag ist
nur zu einem Sechstel abgearbeitet») war der einzige noch unbearbeitete Punkt der
Audit-Pruefwarteschlange, der ausdruecklich einen eigenen Lauf verlangte statt einen
Einzeleinsatz — dieser Bericht dokumentiert diesen Lauf.

## Ergebnis in Kürze

| Baustelle aus 03.16 | Status vor diesem Lauf | Status nach diesem Lauf |
|---|---|---|
| 11 unregistrierte Destillate | offen | registriert in `destillate/INDEX.md`, zwei Dubletten benannt |
| Verwaister Vollzugsordner-Zwilling (A-P2 02.16) | Frontmatter kündigte Fix an, Fix fehlte | Zwilling-Abschnitt im Artikel ergänzt, registriert |
| 3 Statuswerte ausserhalb der Skala | offen | normiert auf `established`/`speculative`, Inhalt erhalten |
| ~20 tote Links | unverifizierte Schätzung | gegengeprüft: kein neuer Fund, Suchfläche jetzt abgeschlossen |
| 31 Themenartikel ohne `datenstand` + ~30 Alterskorpus-Destillate | offen | weiterhin offen, bewusst nicht angefasst |

## 1. Elf unregistrierte Destillate

Gefunden per Abgleich `destillate/*.md` gegen die in `destillate/INDEX.md` erwähnten Dateinamen
(Skript-Vergleich, kein manuelles Durchblättern). Jede der elf Zeilen wurde aus dem `quelle`-,
`herausgeber`-, `status`- und `datenstand`-Feld der jeweiligen Datei selbst gebildet:

- `asbest-dimension-jenseits-spritzasbest` — established, Umweltpraxis Nr. 41, Juli 2005
- `eco-bau-pflanzen-am-bau` — speculative, 1991-1997, **Dublette** zu
  `[[pflanzen-am-bau-projektierungsgrundlagen-zh]]` (identische Quelldatei `5.26PflanzenamBau.pdf`)
- `elektrosmog-informationsblatt-ahb-ewz` — established, Februar 2002
- `en-1b-hoechstanteil-berechnungsbeispiel` — emerging, Formular abgelaufen 31.12.2010
- `energ-bbv1-waermebedarf-rechtsgrundlagen-zh` — established, geltende Fassung 2026-08-17
- `energiequelle-erdsonden-potentialabklaerung-zh-innenstadt` — emerging, bürointern, 19.01.2023
- `haushaltgeraete-professionelle-beschaffung-stadt-zh` — speculative, November 2004
- `kbob-bodenbelaege-buerobau-50-jahre` — speculative, April 2000, **Dublette** zu
  `[[bodenbelaege-buerobau-kbob-vergleich-50-jahre]]` (identische Quelldatei
  `3.27.I Bodenbelaege(KBOB2000_1).pdf`)
- `kbob-pcb-fugendichtungsmassen-2004-4` — established, 2004
- `minergie-me-antrag-nachweisformular-kommentiert` — emerging, Bezugsnorm SIA 380/1:2009
- `vollzugsordner-energie-zh-abschnitt3-en1` — superseded (siehe Abschnitt 2)

Die zwei Dubletten wurden nicht gemerged (Rule `wissens-bibliothekar`: destruktive Aktion braucht
Rückfrage), sondern im Registereintrag benannt, damit der nächste Lauf sie findet.

## 2. Vollzugsordner-Zwilling geschlossen

`vollzugsordner-energie-zh-abschnitt3-en1.md` trug seit einer frühen Session desselben Tages ein
`last_updated`-Feld mit dem Versprechen, ein «Warnblock» sei unten im Artikel ergänzt worden —
tatsächlich stand dort keiner (per `grep` verifiziert, kein Treffer für die versprochenen
Stichworte im Artikelkörper). Jetzt nachgeholt: ein Abschnitt «Verhältnis zum Zwilling» erklärt,
dass zwei unabhängige Läufe (Run 144) denselben Quellenausschnitt destilliert haben, ohne
dass sich die beiden Ergebnisse decken — diese Datei trägt den vollständigen Fliesstext (elf
Standardlösungen, Rechenbeispiele), der bereits registrierte Zwilling
(`[[vollzugsordner-energie-zh-abschnitt3-1-3-2-en1]]`) die WDV-2022-Vergleichstabelle.

## 3. Drei Statuswerte normiert

Die KB-Skala laut `wissen/WISSEN-CLAUDE.md` kennt `emerging | established | speculative`; die
energie-KB nutzt lokal zusätzlich `superseded`. Drei Dateien trugen Werte ausserhalb dieser
Skala:

- `g-werte-verglasungstypen-ch.md`: `needs-verification` → `speculative` (Werte stammen aus
  einer WebSearch-Zusammenfassung, nicht aus eigenem Volltext-Lesen — im `gelesen`-Feld bereits
  so dokumentiert).
- `energierichtplan-freienbach-econcept.md`: `teilverifiziert — Negativbefund für das
  Originaldokument, Volltext-Fund für das aktuell gültige Nachfolgedokument` → `established`.
  Begründung: das tatsächlich zitierte und im Artikel verwendete Dokument (Begleitbericht
  Energieträgerkarte Gemeinde Freienbach, 10.01.2025) ist vollständig im Volltext gelesen; der
  Negativbefund zum unauffindbaren econcept-Original von 2013 bleibt unverändert im Abschnitt
  «Rechercheweg» dokumentiert.
- `swki-va106-vernehmlassung-zugangsversuch.md`: ein mehrzeiliger Freitext-Negativbefund →
  `established`, analog zur KB-Konvention für mehrfach reproduzierte, methodisch abgesicherte
  Negativbefunde (siehe andere Destillate mit «established (Negativbefund)» im Bestand). Vor der
  Änderung geprüft, dass der komplette Wortlaut («vierter Versuch», «Wayback-CDX-Vollsuche»,
  «NEU ZUGÄNGLICH») bereits im Artikelkörper (Abschnitt «Das Wichtigste in 1 Satz» und
  «Kernbegriffe») vorhanden ist — nichts ging beim Normieren verloren.

## 4. Tote-Links-Zahl gegengeprüft

Eigener Scan (Python, alle `[[…]]`-Ziele in `destillate/` und `wiki/` gegen vorhandene
Dateinamen) fand 21 Treffer — mehr als die im Audit geschätzten «rund 20», aber bei genauer
Prüfung kein grösseres Problem:

- **4 sind FAQ-interne Fragenanchors** (`[[F16]]`, `[[F71]]`, `[[F77]]`, `[[F245]]`) — diese
  verweisen auf Kapitelüberschriften in `wiki/BAUHERREN-FAQ.md` (`## F16 — …`), nicht auf
  Dateinamen; mein Scan prüfte nur gegen Dateinamen und produzierte hier falsche Positive.
- **2 sind historische Zeilen** in `QUESTIONS.md` selbst (E67, datiert 2026-07-14; «Neues Thema
  freie Wahl», datiert 2026-07-25) — beide vor dem dokumentierten Merge vom 26.07.2026, der
  `sia-2024-nutzungsdaten-gesundheitsbau.md` in `sia-2024-nutzungsrandbedingungen-
  gesundheitsbau.md` überführt hat. Nach KB-Konvention («historische Zeile nicht löschen»)
  bewusst unverändert gelassen.
- **8 sind legitime Cross-KB-Links** auf tatsächlich existierende Artikel der KB `normen`
  (`sia-271-2007`, `sia-312-2013`, `sia-2040-2017`, `sia-416-1-2007`, `sia-416-2003`,
  `sia-mb-2024-2006`, `vkf-brl-26-15-gefaehrliche-stoffe`, `vkf-teilrevision-2026-pyrotechnik`) —
  alle acht in `wissen/normen/destillate/` gefunden und verifiziert. Mein erster Scan prüfte
  fälschlich nur gegen die energie-KB selbst, nicht gegen die Schwester-KB.
- **6 sind bereits identisch im Backlink-Hygiene-Register** (Run 123, 04.08.2026, in
  `QUESTIONS.md` weiter oben dokumentiert): `behoerden-vorabklaerung`, `abstaende-und-hoehen`,
  `healthcare-energie`, `energie-baueingabe-zusatzformulare`,
  `recht-norm-regenwasser-gewaesserraum-zh`, `u-wert-berechnung-bauteilekatalog-neubauten`.

**Ergebnis: kein neuer toter Link gefunden.** Die Suchfläche ist mit einem zweiten, unabhängigen
Scan (24.08.2026) bestätigt abgeschlossen — offen bleibt nur die inhaltliche Behebung der
bereits sechs bekannten Ziele (Skill-Nennung statt Artikel-Link, Cross-KB-Präfix ergänzen, oder
neues Destillat anlegen), was Artikelarbeit ist, kein Registerscan mehr.

## Bewusst nicht angefasst

Die 31 Themenartikel ohne Frontmatter-Feld `datenstand` und die rund 30 Alterskorpus-Destillate
(A-WERKZEUG-Fund, `wissen/tools/datenstand-waechter.py`) bleiben offen — das ist die
grossflächige Nachrüstung, die einen eigenen, längeren Lauf braucht und nicht in diese Session
passt.

## Methodische Notiz

Ein naiver `[[…]]`-Scan gegen nur eine KB erzeugt falsche Positive, sobald die KB absichtlich
Cross-KB-Links führt (hier: acht Links auf `normen`) oder Fragenanchors mit derselben
Klammer-Syntax wie Artikel-Backlinks verwendet (FAQ-Nummern). Ein künftiger automatisierter
Backlink-Check (Skill `wissenscheck`, wie in der Run-123-Lehre vorgeschlagen) sollte beide Fälle
vom Scope ausschliessen, sonst meldet er ein Vielfaches der tatsächlichen Fehlerzahl.
