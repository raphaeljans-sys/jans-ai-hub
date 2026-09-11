# Konversations-Destillat 11.09.2026

**Abdeckung:** MacBook Pro 20 Sessions · Mac Mini 7 Sessions · Cloud/Dispatch 5 — Fenster 26h
(10.09.2026 04:1x bis 11.09.2026 06:13 CEST; die fünf Dispatch-Protokolle sind Nachtschicht-Läufe
des Mac Mini und inhaltsgleich mit dessen Sessions; `remote-tasks/results/` im Fenster leer).

**Befund vorweg: kein neues Gespräch, dritter Tag in Folge.** Keine inhaltliche Eingabe von
Raphael im Fenster. Die «RAPHAEL:»-Zeilen auf dem MacBook Pro sind zwei Verbindungstests
(«Antworte nur mit: OK»), eine Stop-Hook-Rückmeldung und ein geladener Skill-Prompt; auf dem
Mac Mini sind es die Nachtschicht-Aufträge.

**Methodik (mtime-Falle, dritter Tag).** Die Steinbrüchelstrasse-Session `4898bf59` erscheint
mit «letzte Aktivität 11.09.2026 01:20». Am JSONL nachgemessen: letzte Eingabe Raphaels
**08.09.2026 17:21 CEST**, danach nur Metadatenzeilen (`custom-title`, `mode`). Vollständig im
Destillat vom 09.09.2026 behandelt, hier nicht wiederholt.

Die Blöcke unten sind darum **Befunde aus Routine-Läufen am Beleg**, keine Gespräche.

---

## 01 2619 KISPI PPTS: Eskalation vom 10.09. und ihre Folgen

**Quelle:** Logbuch-Radar 10.09. 06:5x, Hub-Chef 10.09. 08:4x, `twin-mail-training` Batch 119
(11.09. 03:5x), alle am Beleg.

01.1 **Eskalation.** Raphael an A. Spahic, **10.09.2026 04:35** («Ferienabwesenheit, offene
Rechnungen»): Frist **10.09. 17:00** für das Transaktionsdatum der offenen Rechnungen, künftig nur
**Vorkasse** (Angebot HOP2), **kein «Gut zur Ausführung»** an Gewerke bis Vertrag, Zahlung und
Vorauszahlung vorliegen, **zwei Wochen Ferien ab nächster Woche ohne Vertretung**, Rückzug aus dem
Planungsteam, falls bis **KW39** keine Klärung. Ob Spahic bis 17:00 geantwortet hat, zeigt kein
Transkript des Fensters.

01.2 **Jegen, Tür 01.2.339.1: erledigt.** Raphael gibt am 10.09. um 11:23 frei («Wir haben Ihnen
alle Pläne freigegeben. Teilen Sie uns den Montagetermin mit.»), gestützt auf die 26 gestempelten
Fotos von F. Wuersch (Stempel 09.09.26). Neu offen, alles bei Dritten: Montagetermin (Jegen),
Werkplan-Korrektur S1 Gliss, Träger 3 cm höher, «UK Träger 2729mm» (Jegen), ELE-Anschlüsse am
Träger, danach Estermann zum Schliessen (KISPI).

01.3 **Samstag 19.09.2026, Estermann.** Die Bestätigung durch KISPI ist **heute 11.09.** fällig;
bis 10.09. 05:3x keine Antwort. Kalender führt «Lbw schiebetüren erstellen» auf 08:00, die eigene
Mail nennt 06:30.

01.4 **Brandschutz.** J. Ziegel (Gruner) fällt die ganze Woche aus; seine Pendenzen und die
Gruner-Stellungnahme an die Feuerpolizei folgen erst in KW38, also in Raphaels Ferien.

01.5 **Los 273.35.** Vergeben im Juni an Röthlisberger; der Hub-Chef hat eine Absage an Gläser als
Entwurf in die Entwürfe gelegt (Versand durch Raphael).

**Radar-relevant: ja** (Frist heute, Ferienkollision, Geld). Bereits im Register geführt:
`logbuch/fristen.md` Z. 5412, 5425, 5438, 5442, 5446. **Kein neuer Eintrag.**

---

## 02 Debitoren: bexio-Zugang am 33. Tag tot

**Quelle:** Verzugscheck und Zahlungsabgleich MacBook Pro, 10.09. 08:23.

02.1 Drei unabhängige Proben je **HTTP 401**; Token formal gültig bis 13.12.2026, Sitzung
serverseitig beendet. Nur ein neuer Token hilft (developer.bexio.com, `~/.bexio.env`).

02.2 Offene Rechnungen, Stand 08.08.2026: fünf Positionen, zusammen **CHF 51'400.00**; älteste
**RE-00087** (KISPI, CHF 15'000.00), **147 Tage** Verzug. UBS-Nachforschung zu RE-00087 am 38. Tag.

02.3 Abo-Frist 08.09.2026 verstrichen; am **08.10.2026** stellt bexio von Starter (CHF 35/Mt.)
auf Advanced (CHF 42/Mt.) um.

**Radar-relevant: ja**, bereits im Register (Zeilen «bexio-Zugang tot», «08.09.2026 bexio-Abo»).
Kein neuer Eintrag. Passt zu 01.1: die KISPI-Eskalation fragt genau nach diesen Rechnungen.

---

## 03 Energie-FAQ F291 korrigiert: Fassadendämmung und Fensterersatz im Anzeigeverfahren

**Quelle:** Wissens-Chef Lauf 57, 10.09. 23:5x, Commit `1917f4cef`.

F291 nannte das ordentliche Verfahren; im Kanton Zürich gilt § 325a PBG (Anzeigeverfahren, ohne
Aussteckung und Auflage, Behandlungsfrist 30 Tage). Warnhinweis in F291 gesetzt, KB `baurecht`
informiert.

**Radar-relevant: bedingt.** Keine Frist, aber Aussenwirkung: falls F291 seit dem 09.09. an eine
Bauherrschaft ging, dort berichtigen. Nicht ins Register (kein Frist-/Zusage-Charakter).

---

## 04 Hub-Betrieb mit Termin

04.1 **SYN-81** (Synergie-Lauf 33): der Prompt `wissenscheck-monatlich` verlangt noch `git` über
SMB; **vor dem 01.10.2026** korrigieren. Register Z. 3.

04.2 **M365-Tenant** 916.05 GB (86.91 %), Restlaufzeit rund **58 Tage** nach 14-Tage-Schnitt
(`tenant-hygiene/reports/260910-hygiene.md`).

04.3 **AG-Gründung** unverändert P1: Kapitaleinzahlung CHF 50'000 am 10.09. 27 Tage überfällig,
Notariat ohne Antwort seit 13.08.

04.4 **Tailscale-Wächter** weiterhin nicht installiert (Register seit 28.08.).

**Radar-relevant: ja** für 04.1 und 04.3, beide geführt. Kein neuer Eintrag.

---

## 05 Widerspruch für den Radar: Steinbrüchelstrasse nicht überfällig

Die Nachtschicht vom 10.09. 13:30 (Mac Mini) führt in ihrer Überfällig-Zusammenstellung
«Steinbrüchelstrasse, Abgabe an C. Bopp bis 09.09., 1 Tag überfällig». Das Register belegt das
Gegenteil: Bericht am **04.09.2026** an christoph.bopp@novaproperty.ch versandt, Punkt erledigt
(`logbuch/fristen.md` Z. 5409 f.). **Nicht neu aufnehmen.**

---

## 06 Routine-Läufe (Sammelzeile)

Rund zwei Dutzend Läufe mit Ergebnis, ohne Blocker: `logbuch-radar`, `hub-chef` (Briefing 10.09.
08:48 gesendet), `ag-gruendung-monitor`, `heartbeat` (8 von 9 grün), `vollgas-chef-radar`
(Kontingent 21.9 % bei 50.6 % der Woche), `vollgas-fruehwarnung`, `twin-fidelity-review`
(Gesamt **38**, erstmals an ungesehenen Golds), `twin-mail-training` Batch 119, `normen` Run 84
(90 Grenzwerte am Original geprüft, keiner falsch; neue Verfälschung «≤» → «9» im Textlayer der
SIA-Normen 2006 und SIA 108), `energie` Lauf 190 und drei Nachtschicht-Zyklen (Abschreibfehler in
`planungsgrundlagen` und im WTA-Destillat behoben), `tenant-hygiene`, `synergie-orchestrator`.

**Radar-relevant: nein.**
