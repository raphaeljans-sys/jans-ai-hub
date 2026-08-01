---
title: Synergie-Lauf 03 (monatlich)
status: established
last_updated: 2026-08-01
sources:
  - Git-Log NAS-Repo 26.07.-01.08.2026 (Delta seit Lauf 02)
  - skills/*/SKILL.md Contract-Bloecke
  - wissen/bauprodukte/CLAUDE.md, wissen/claude-code/
  - connectors/hub-setup-daten.json, rules/auto-verbesserungen.md
  - logbuch/rollen/rollen-map.tsv
links:
  - "[[SYNERGIE-REGISTER]]"
---

# Synergie-Lauf 03 — 01.08.2026

Monatlicher Lauf des Skills `synergie-orchestrator` (Scheduled Task
`synergie-lauf-monatlich`, 04:40 Nachtfenster). Delta-Basis: Lauf 02 vom 25.07.2026.
Leichtgewichtig gefahren, kein Multi-Agent-Fan-out (Drossel-Disziplin, Leitplanke im
SKILL.md Z. 107 ff.).

## 1. Methodischer Vorbehalt zur Delta-Messung

Der Commit `7b4c0777` vom 25.07.2026 21:00 («nas-selfcommit: 3185 Datei(en)») hat den
gesamten Bestand neu als Add erfasst. Ein `--diff-filter=A --since=2026-07-25` meldet
deshalb faelschlich fast jeden Skill als neu. Das echte Delta wurde ab **26.07.2026**
gemessen. Wer kuenftige Laeufe faehrt: dieselbe Falle pruefen, bevor ein Befund auf
«neuer Baustein» gestuetzt wird.

## 2. Inventar-Delta seit Lauf 02

| Gegenstand | Stand |
|---|---|
| Skills auf Platte | 50 (Lauf 02: 49) |
| Neuer Skill | `wissens-destillat` (28.07.) |
| Neue Wissens-KBs | `bauprodukte` (28.07., 8 Wiki-Artikel), `claude-code` |
| Neue Rules | `wissens-ruecklauf` (31.07., importiert), `rollen-taxonomie` (29.07., importiert), `betrieb-chronik` (nicht importiert) |
| Neue Connectoren | `hub-setup.mjs` + `hub-setup-daten.json` (30.07.) |
| Neue Agenten | keine |
| Skills ohne Contract-Block | weiterhin 4 von 50 (`oereb-schwyz`, `pdf2dwg`, `planungsgrundlagen`, `volumenstudie`) — SYN-14 unveraendert |

## 3. Neue Befunde

### SYN-16 — KB `bauprodukte` haengt als Insel, `ausschreibung` fuehrt Parallelwissen (Typ 1+2)

**Belegt.** Der Skill `wissens-destillat` hat am 28.07. den Korpus 1 eroeffnet und die
KB `wissen/bauprodukte` mit acht Wiki-Artikeln gefuellt (`bkp-261-aufzuege.md`,
`terrazzo-kunststein-bodenbelaege.md`, `dachbegruenung-systeme.md`,
`z-winkel-beschlag-schreinerei.md` u.a.). Ein Grep ueber `skills/`, `agents/`, `rules/`
und `services/` findet **ausserhalb des Erzeugers null Verweise** auf diese KB; der
einzige Fundort ist die Aufzaehlung in `CLAUDE.md` Z. 253.

Die KB ist dabei ausdruecklich fuer die Ausschreibung geschrieben:
`wissen/bauprodukte/CLAUDE.md` Schreibregel 5 verlangt «herstellerneutral formulieren,
wo der Artikel in ein LV fliessen koennte (Rule 260626)». Der vorgesehene Konsument ist
also benannt — die Kante zu ihm fehlt. `skills/ausschreibung/SKILL.md` nennt in
«Inputs» keine einzige `wissen/`-KB.

**Zweite Haelfte des Erstbefunds — am selben Tag nachgemessen und WIDERLEGT.** Der
Erstbefund behauptete eine sich anbahnende Doppelspurigkeit mit
`ausschreibung/wissensbasis/05_knowhow-gewerke.md` (56 Zeilen, Gewerke 271, 226, 272,
285) und stuetzte das auf die «37 Gewerke-Sektionen nach BKP» der Quelle. Die Messung am
Objekt ergibt ein anderes Bild:

- Die Sektionsliste des Korpus enthaelt **272 Metallbau bereits** (1 Datei destilliert) —
  die Ueberschneidung ist also nicht kuenftig, sondern schon da. Aber:
- `05_knowhow-gewerke.md` sagt zu 272 ausschliesslich **Ausschreibungsform**
  («funktional ausschreiben — zu spezifisch fuer ein NPK-LV; Grundlage
  Architektenplaene + Architektenbeschrieb statt Positionsverzeichnis»), zu 281/282
  **gar nichts**. Die Datei enthaelt ueber alle vier Gewerke hinweg keine einzige
  Produktaussage, sondern LV-Schreibpraxis (Garantie, Werkpreis-Vollstaendigkeit,
  Plan-vor-Text, Musterpflicht).
- 271, 226 und 285 fehlen im Bauprodukte-Korpus ganz; die 37 Sektionen sind die real
  vorhandenen Archivordner, nicht die vollstaendige BKP-Gliederung.

Die beiden Bestaende reden also nicht ueber dieselbe Sache. Die Rollentrennung, die der
Erstbefund als Entscheid vorlegen wollte, wird faktisch bereits gelebt. Der Befund
reduziert sich auf **Typ 1** — es fehlt nur die Kante.

**Lehre fuer Folgelaeufe:** Ein Doppelspur-Verdacht darf nicht aus der Ueberschneidung
von *Gewerke-Nummern* abgeleitet werden. Zwei Bestaende koennen dasselbe BKP-Kapitel
fuehren und trotzdem disjunkt sein, wenn der eine ueber das Bauteil und der andere ueber
die Ausschreibungsform spricht. Vor jedem Typ-2-Befund den Inhalt beider Seiten lesen,
nicht nur ihre Ordnungsbegriffe vergleichen.

**Umgesetzt (active-with-flagging):** Die Kante ist gesetzt — `wissen/bauprodukte` steht
jetzt in der «Inputs»-Zeile von `ausschreibung` (mit expliziter Abgrenzung gegen
`05_knowhow-gewerke.md` und dem Neutralitaetsvermerk nach Rule 260626),
`offertenpruefung` (technische Plausibilisierung der angebotenen Systeme) und
`kostenschaetzung` (Plausibilisierung des Kostentreibers). Kein Entscheid Raphael noetig.

### SYN-17 — Setup-Fakten doppelt gepflegt: `hub-setup-daten.json` gegen CLAUDE.md (Typ 2)

**Belegt.** Rule 260730 (`auto-verbesserungen.md`) erklaert
`connectors/hub-setup-daten.json` zur **kanonischen** Datenquelle fuer Setup-Fakten und
schreibt «nur dort pflegen». Dieselben Fakten stehen weiterhin ausformuliert in drei
Tabellen von `CLAUDE.md`: Netzwerk (Stationen, LAN- und Tailscale-IPs), E-Mail-Konten
(sechs Adressen mit Typ und Verwendung) und M365-Connector (App-ID, Tenant-ID,
Zertifikatspfad, Gueltigkeit). Beide Staende stimmen heute ueberein — gemessen, nicht
angenommen.

Das Risiko ist asymmetrisch: CLAUDE.md ist der **immer geladene** Kontext, die JSON wird
nur bei bewusstem Connector-Aufruf gelesen. Bei einer Aenderung (naechster Anlass:
Zertifikatserneuerung Maerz 2028, oder ein IP-Wechsel) gewinnt in der Praxis der Stand,
der ohnehin im Kontext liegt — also die Kopie, nicht das Original.

Zusaetzlich kollidiert die Doppelfuehrung mit Rule 260719 (Kontext-Diaet): CLAUDE.md
soll Wegweiser sein, nicht Dokumentation.

**Empfehlung:** Die drei Tabellen in CLAUDE.md auf je eine Wegweiser-Zeile eindampfen
(«Stationen, IPs, SSH-Wege, Mail-Konten und M365-Parameter:
`node connectors/hub-setup.mjs --alles`»), die Details nur noch in der JSON fuehren.
Spart Grundkontext und beseitigt die Divergenzquelle in einem Schritt. Entscheid
Raphael, weil es den immer geladenen Kontext betrifft.

### SYN-18 — Contract des neuen Skills `wissens-destillat` war unvollstaendig (Typ 1)

**Belegt und direkt behoben** (active-with-flagging). Der am 28.07. angelegte Skill
trug einen Contract-Block mit Trigger, Inputs, Output und Nicht-Ziel, aber ohne die drei
Pflichtfelder **Abhaengige Rules**, **Vorgelagert** und **Nachgelagert**
(`skills/SKILL-CONTRACT.md`, Abschnitt 2). Genau diese drei Felder tragen den
Prozess-Graphen — ohne sie ist ein Skill fuer jeden Ketten-Befund unsichtbar, obwohl er
Wissen fuer vier andere Skills erzeugt.

Die Felder sind nachgetragen: vorgelagert `spec` (Korpus-Spec), nachgelagert
`wissenscheck` und der Bibliothekar-Betrieb der Ziel-KB sowie die fachlich
konsumierenden Skills je Korpus. Die Rollen-Registrierung war bereits korrekt
(`rollen-map.tsv` Z. 78 und 113, `sweeper`, Ziel `wissen/bauprodukte`).

### SYN-19 — Sieben Skills fehlen im Wegweiser CLAUDE.md (Typ 1)

**Belegt.** Von 50 Skills auf Platte erscheinen sieben in **keiner** Zeile von
CLAUDE.md: `brandschutz`, `honorarberechnung-sia102`, `masterclass`, `telesales`,
`tenant-hygiene`, `email-preferences` (0 Treffer bei case-insensitiver Volltextsuche)
sowie `heartbeat` (nur als Command-Erwaehnung, nicht in der Skill-Tabelle).

Zwei davon sind fachliche Kern-Skills mit Status `aktiv` im Rollen-Register:
`brandschutz` (builder) und `honorarberechnung-sia102` (builder). Ein Buero, das
Honorarofferten schreibt und Brandschutznachweise fuehrt, hat beide Faehigkeiten im
Wegweiser zu stehen.

**Ehrliche Abgrenzung:** Das technische Skill-Routing laeuft ueber die
`description`-Frontmatter der jeweiligen SKILL.md, nicht ueber CLAUDE.md. Der Ausfall
ist also kein harter Trigger-Block. Verloren geht die **Kompositionssicht**: beim
Zerlegen eines mehrteiligen Auftrags wird als vorhanden angenommen, was im Wegweiser
steht. Insofern ist die Verbindung zu den Rollen-Register-Notizen «nie geladen» bei
`telesales` und `masterclass` (Stand 29.07.) eine **Hypothese, kein Beweis** — aber eine
pruefbare: sichtbar machen, dann in der naechsten Rollen-Bilanz nachmessen, ob sich die
Ladehaeufigkeit bewegt.

**Empfehlung:** Die sieben Zeilen in der Skill-Tabelle ergaenzen. `email-preferences`
steht im Register als `referenz`/`parkiert` — dort genuegt eine Fussnote statt einer
Tabellenzeile.

## 4. Nachgefuehrte Altbefunde

| ID | Messung 01.08.2026 |
|---|---|
| SYN-01 | **halb geschlossen.** `skills/kostenschaetzung/SKILL.md` Z. 84 und `agents/grobkosten-rechner.md` (4 Treffer) beziehen sich auf `wissen/grobkosten`. `agents/realwert-rechner.md` und `agents/wirtschaftlichkeit-rechner.md` weiterhin 0 Treffer — die beiden Bewertungs-/Wirtschaftlichkeitsrechner haengen noch nicht an der fuehrenden Kennwerte-DB. |
| SYN-02 | **unveraendert.** `volumen_generator.py` kennt weiterhin nur `--parzelle/--out/--name/--variante` (Z. 128 ff.), kein Parameter-Set-Input; letzte inhaltliche Aenderung vor dem 25.07. MVP-Bau weiterhin offen. |
| SYN-06 | **teilweise adressiert, Kanal fehlt.** Die neue Rule `wissens-ruecklauf` (31.07.) macht den Rueckfluss nach jedem substanziellen Deliverable zur allgemeinen Pflicht. Der in SYN-06 verlangte **konkrete** Kanal fehlt aber: `offertenpruefung` und `kostenkontrolle` enthalten je 0 Verweise auf `grobkosten` und 0 auf einen Rueckfluss-Schritt. Die generische Pflicht ersetzt den benannten Kippschritt nach `wissen/grobkosten/raw/` nicht. |
| SYN-14 | **unveraendert.** Weiterhin 4 Skills ohne Contract-Block; `pdf2dwg` nicht nachgeruestet. |
| SYN-03, SYN-07 | erledigt (S5/S6 im Katalog aktiviert 15.07.), keine Nachmessung noetig. |
| SYN-04, SYN-05, SYN-08 bis SYN-13, SYN-15 | unveraendert offen; keine Aenderung der Beteiligten im Delta, deshalb nicht neu aufgerollt (Compounding-Regel). |

## 5. Geschaeftsmodell-Sicht (Phase 5)

Kein neuer Service-ENTWURF in diesem Lauf. Begruendung: das Delta seit Lauf 02 ist fast
vollstaendig **infrastruktureller** Natur (Destillat-Pipeline, Setup-Connector,
Betriebs-Rules, Rollen-Register) und nicht kundenseitig. Der einzige Baustein mit
Aussenwirkungspotenzial ist die KB `bauprodukte` — sie ist mit acht Artikeln aus 37
Sektionen aber noch zu duenn, um als Leistungsversprechen zu tragen. Wiedervorlage,
sobald die Korpus-Queue die ersten Gewerke vollstaendig abgedeckt hat.

Bestehende Entwuerfe unveraendert: GM4 (Bauleitungs-Backend fuer Dritte, SYN-11) und
die Wettbewerbs-Fabrik-Verknuepfung (SYN-02/SYN-13) warten beide auf Raphaels Freigabe.

## 6. Was Raphael entscheiden muss

Nach der Korrektur von SYN-16 bleiben **zwei** Entscheide, beide betreffen `CLAUDE.md`
und damit den immer geladenen Kontext.

**1. SYN-19 — die sieben fehlenden Skill-Zeilen ergaenzen. Empfehlung: ja, ohne
Vorbehalt.** Kosten sieben Zeilen Grundkontext, Nutzen sind zwei aktive Fach-Skills
(`brandschutz`, `honorarberechnung-sia102`), die heute bei der Auftrags-Dekomposition
nicht mitgedacht werden. Das ist der billigste Gewinn im ganzen Lauf.
`email-preferences` bleibt draussen (Register: `referenz`/`parkiert`).

**2. SYN-17 — Faktentabellen aus CLAUDE.md verlagern. Empfehlung: ja, aber
differenziert, nicht alle drei gleich.**

- **Netzwerk-Tabelle und M365-Parameter raus.** Das sind reine Nachschlagedaten, die
  niemand auswendig braucht, aber jede Session mittraegt. Der Einwand «dann sind sie ohne
  NAS weg» traegt nicht: `connectors/hub-setup.mjs` und `hub-setup-daten.json` sind
  git-versioniert und liegen im SSD-Klon (gemessen 01.08.), also auch bei nicht
  gemountetem NAS greifbar.
- **Mail-Konten-Tabelle verdichtet drin lassen.** Hier steckt Verhaltenswissen, nicht nur
  ein Datensatz: Standard-Absender `rj@raphaeljans.ch`, Gmail wird nicht verwendet,
  Versand ueber Apple Mail. Das gilt in fast jeder Mail-Session und gehoert nach der
  Kontext-Diaet-Logik (260719) genau deshalb in den Grundkontext — aber als zwei Zeilen,
  nicht als Sechs-Zeilen-Tabelle. Die Adressliste selbst wandert in die JSON.

## 7. Was in diesem Lauf direkt gesetzt wurde

Zwei mechanische Vervollstaendigungen, beide ohne inhaltliche Entscheidung
(active-with-flagging):

1. **SYN-18** — die drei fehlenden Contract-Felder in
   `skills/wissens-destillat/SKILL.md` (gegen `SKILL-CONTRACT.md`).
2. **SYN-16** — `wissen/bauprodukte` in die «Inputs»-Zeile von `ausschreibung`,
   `offertenpruefung` und `kostenschaetzung`, mit Abgrenzung gegen
   `05_knowhow-gewerke.md` und Neutralitaetsvermerk (Rule 260626).

An `CLAUDE.md` wurde nichts geaendert.
