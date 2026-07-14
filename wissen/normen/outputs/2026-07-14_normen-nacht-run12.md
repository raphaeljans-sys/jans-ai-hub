# Normen-Training SIA/VKF — Run 12 (MacBook Pro, 2026-07-14)

## Ausgangslage

Der Loop ist seit Rule 260713 (13.07.2026) auf SIA/VKF gedrosselt (1x taeglich 01:20),
Token-Fokus des MacBook Pro liegt auf dem Wettbewerbs-DNA-Training. `training/norm-inventar.md`
zeigt fuer SIA und VKF weiterhin 0 offene `[ ]`-Positionen — dieser Run setzt bei Vertiefungsstufe
(b) Retro-Verifikation an, gemaess Plan aus Run 11.

## Batch (4 Positionen)

| Norm/Dokument | Aufgabe | Seiten |
|---|---|---|
| SIA 100:2004 | Retro-Verifikation | 24 |
| SIA 108:2014 | Retro-Verifikation | 44 |
| SIA 2020:2017 | Retro-Verifikation + fehlender INDEX-Eintrag nachgetragen | 20 |
| VKF-BRL 28-15 Anerkennungsverfahren | Duplikat-Merge (`vkf-brl-28-15-anerkennungsverfahren.md` vs. `vkf-brl-anerkennungsverfahren.md`) | 9 |

3 parallele Verifikations-Agenten (SIA 100/108/2020) + 1 manueller Merge-Vergleich
(VKF-BRL 28-15, durch den Orchestrator selbst).

## Verifikations-Verdikte

### SIA 100:2004 — bestanden nach 1 Ergaenzung
~55 Einzelaussagen geprueft (Rechtsform, Zweck, Mitgliederkategorien, Fristen, Delegiertenschluessel,
Organe, Inkrafttreten-Kette). 1 Luecke: Art. 15 lit. b (Wahl Praesidium/Mitglieder Schweizerische
Standeskommission + Zentralkommission fuer Normen und Ordnungen) fehlte, ergaenzt. Keine sachlichen
Fehler. **Status: established (verifiziert 260714, Volltextabgleich).**

### SIA 108:2014 — bestanden nach umfangreichen Ergaenzungen
Alle 44 Seiten gegen ~38 Kernziffern-Fundstellen geprueft. Groesster Befund des Laufs: mehrere
komplette Artikel fehlten im Destillat — Art. 1.7.21/.22 (mehrere Beteiligte), Art. 1.9.3
(Verjaehrung andere Ansprueche), Art. 1.10.2/.4 (Zuschlagsrecht/Schadenersatz bei Kuendigung),
Art. 1.11/1.12 (Mediation, Gerichtsbarkeit), Art. 3.5/3.6 (Beauftragung/Zusammenarbeit,
Qualitaetssicherung), Art. 5.5/5.6/5.9/5.10/5.11 — letztere sind genau jene Artikel, die das
Vorwort als WEKO-Verzicht auf Honorarerhoehungsempfehlungen konkret benennt (Vorwort war zuvor
nur pauschal zusammengefasst). Zusaetzlich 1 falsch verortete Fussnote (SIA 1001/1-3: S. 5 statt
S. 14) und fehlender "(aufgehoben)"-Vermerk bei Art. 5.4.2. Alle Prozentsaetze/Fristen (±15%/±10%,
30/60 Tage, 2/5/10 Jahre) bestaetigt korrekt. **Status: established (verifiziert 260714,
Volltextabgleich).**

### SIA 2020:2017 — bestanden nach 1 Fundstellen-Korrektur + Registrierungsluecke geschlossen
~35 Einzelaussagen geprueft (Sicherheitsleistungstypen, Rueckbehalt, Solidarbuergschaft,
Erfuellungsgarantie, Risikoanalyse). 1 Fehler: Ziff. 6.1 zitierte Art. 151 statt korrekt Art. 152
fuer die Rueckbehalt-Regelung bei Gesamtpreisvertraegen, korrigiert. Ergaenzt: neuer Abschnitt
"Regelung im Werkvertrag" (Ziff. 6.1-6.3 vollstaendig). Alle Zahlen (Rueckbehalt 10%/5% ab
CHF 500'000/max. CHF 2 Mio.; Solidarbuergschaft 10%/5% ab CHF 300'000/min. CHF 30'000/max.
CHF 2 Mio.; Erfuellungsgarantie 5-15%) bestaetigt. Zusaetzlich: das Destillat fehlte komplett in
`destillate/INDEX.md` (Registrierungsluecke seit 12.07.2026) — nachgetragen. **Status: established
(verifiziert 260714, Volltextabgleich).**

### VKF-BRL 28-15 Anerkennungsverfahren — Duplikat-Merge (Inhaltsvergleich abgeschlossen)
Beide Destillate (`vkf-brl-28-15-anerkennungsverfahren.md`, Status destilliert, und
`vkf-brl-anerkennungsverfahren.md`, Status established) Wort-fuer-Wort gegen das 9-seitige
Original gelesen. Befund: `vkf-brl-28-15-anerkennungsverfahren.md` ist die inhaltlich
vollstaendigere Fassung — insbesondere fehlt in `vkf-brl-anerkennungsverfahren.md` Ziff. 3.3
(Qualitaetsmanagement-Pflicht des Gesuchstellers bei Produkten) komplett, ausserdem ist der
Anhang (zu Ziff. 2.2) dort nur als offener Punkt vermerkt statt inhaltlich uebernommen.
`vkf-brl-28-15-anerkennungsverfahren.md` auf **established (verifiziert 260714, Volltextabgleich)**
gehoben. Physisches Loeschen des Duplikats `vkf-brl-anerkennungsverfahren.md` ist eine destruktive
Aktion (Rule `wissens-bibliothekar`: Rueckfrage vor Ausfuehrung) und bleibt bewusst offen fuer
Raphaels Bestaetigung — in `wiki/QUESTIONS.md` entsprechend vermerkt.

## Gesamtbefund

4/4 Positionen bearbeitet. 3 Retro-Verifikationen bestanden nach Korrekturen — SIA 108:2014
zeigte den bisher groessten Lueckenbefund des Vertiefungs-Loops (5+ komplett fehlende Artikel),
was die Verifikationsstufe (b) als Qualitaetsnetz bestaetigt. 1 Duplikat inhaltlich aufgeloest
(bessere Fassung identifiziert und established gesetzt), physische Bereinigung wartet auf
Rueckfrage. Keine Ziffern/Kennwerte erfunden.

## Nachgefuehrt

- `training/norm-inventar.md`: 4 Zeilen (100_2004, 108-U_2014, 2020_2017, Anerkennungsverfahren.pdf)
  auf `established`/`260714` gesetzt.
- `destillate/INDEX.md`: sia-100-2004.md, sia-108-2014.md, vkf-brl-28-15-anerkennungsverfahren.md
  auf established aktualisiert; sia-2020-2017.md neu eingetragen (Registrierungsluecke geschlossen).
- `wiki/QUESTIONS.md`: VKF-BRL-28-15-Duplikat-Eintrag um den 260714-Verifikationsstand ergaenzt.
- `CHANGELOG.md`: neuer Eintrag oben.
- Destillate direkt korrigiert/ergaenzt (Edit-Tool, durch die Verifikations-Agenten + Orchestrator).

## Naechster Batch

Weitere Kandidaten fuer Vertiefungsstufe (b) Retro-Verifikation (Status `destilliert`, noch nicht
`established`, gueltige Ausgabe): SIA 142:2009, SIA 143:2009, SIA 400:2000 (P1-Kernnorm CAD/Plaene),
SIA 111:2003 (Altausgabe, niedrigere Prioritaet), `sia-register-2013.md`/`sia-gesamtverzeichnis-2002.md`
(Register-Dokumente). Ausstehende Teil-Destillate (SIA 196/382-1/384-201/405/592-056 etc.) koennten
in einem kuenftigen Lauf zu Volldestillaten vervollstaendigt werden. Weitere VKF-Duplikat-Paare aus
`wiki/QUESTIONS.md` (Solaranlagen, BSV2015-Bericht) warten ebenfalls auf inhaltlichen Vergleich.

**Kein "SIA/VKF KOMPLETT"** — Grunddestillation ist fertig, Vertiefungsstufen (b)/(c)/(d) laufen
weiter gemaess `training/PROGRAMM.md`.

## Technischer Hinweis (Git/SMB)

Wie bereits in Run 11 dokumentiert: `git status`/`git diff` gegen das NAS-Repo haengen ueber SMB
gelegentlich in uninterruptible I/O-Wait. Der `nas-selfcommit`-Cron (alle 15 Min, ext4 statt SMB)
hat den Grossteil dieses Laufs bereits automatisch committet (`f75e2b71`, 11:15 Uhr); die
VKF-BRL-28-15-Korrektur wurde unmittelbar danach geschrieben und wird vom naechsten Cron-Zyklus
erfasst. Kein manuelles Eingreifen (kein Force-Commit, kein Lock-Handling) noetig.
