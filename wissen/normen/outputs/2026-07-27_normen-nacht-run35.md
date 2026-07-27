# Normen-Training Run 35 (MacBook Pro, 27.07.2026) — SIA/VKF

**Kurzfassung:** Kein neues Grunddestillat (PL-02 weiterhin 0 offene `[ ]`). Dieser Lauf hat die
von Run 34 empfohlene sechste unabhängige Verifikationsrunde für die drei verbleibenden
speculativen Lignum-/SIA-Destillate gefahren (3 parallele Refuter-Agenten, Hauptmodell).
**Ergebnis: erster sauberer Nulldurchgang** — `sia-d0165-2000-kennzahlen-immobilienmanagement.md`
wird nach sechs Runden `established`. Die beiden Lignum-Destillate bleiben `speculative`; beide
neuen Befunde bei `lignum-4-1-...md` wurden vom Hauptprozess selbst gegen das Original
nachgeprüft, bevor sie übernommen wurden — einer davon widersprach einer früheren, explizit als
korrekt geführten Stelle (siehe Abschnitt 3).

---

## 1. Voraussetzungen

- NAS gemountet (`/Volumes/daten` erreichbar).
- Kollisionsschutz (Rule 260724): `ps aux` vor Beginn geprüft, keine zweite aktive Instanz von
  `normen-training-nacht` ausser dieser Session selbst.
- Kein neues Original-PDF-Zugriffs-Test nötig, da die drei Zieldateien (Lignatec, SIA D0165,
  Lignum 4.1) bereits aus Vorläufer-Runs bekannt und zugänglich sind.

## 2. Sechste Verifikationsrunde — 3 Destillate

| Destillat | Runde | Befunde | Verdikt | Status |
|---|---|---|---|---|
| `sia-d0165-2000-kennzahlen-immobilienmanagement.md` | 6. | **0** | Nulldurchgang | **established** |
| `lignum-lignatec-brandschutz.md` | 6. | **1** | Ziff. 1.2 Nuance "meistens" vs. "und" | speculative |
| `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` | 6. | **2** | Tab. 446-1/446-3 Bandbreiten | speculative |

**Konvergenz-Übersicht (Befunde je Runde):**
- `sia-d0165-...md`: 17 → 4 → 1 → 3 → 3 → **0**
- `lignum-lignatec-...md`: 17 → 1 → 1 → 1 → 1 → **1**
- `lignum-4-1-...md`: 26 → 5 → 1 → 2 → **2**

## 3. Details je Destillat

### sia-d0165-2000-kennzahlen-immobilienmanagement.md — established

Vollständiger Volltext-/Bildabgleich aller 73 Original-Seiten (4 Lesedurchgänge à ~20 Seiten).
Gezielt kritisch geprüft: Impressum (Druck Schwabe & Co. AG Muttenz, "2. Auflage 2000
Exemplare", ISBN 3-908483-29-8), ISBN an zwei Fundstellen, Anhang-Zählung (8 Anhänge laut
Inhaltsverzeichnis, Folio-Angaben deckungsgleich), Tabellen-Spaltenbeschriftungen, DIN-18960-
Referenz ("Ausgabe 1999-08, Tabelle 1"). Beide Berechnungsbeispiele S. 37-47 erneut Zahl für
Zahl nachgerechnet, fehlerfrei. GEFMA-Doppelcodierung 226/490 (Entsorgung) und GEFMA-230
(Instandsetzung, 2xx nicht 4xx) — Fixe aus Run 32/33 — sowie der dokumentierte PDF/Folio-
Seitenversatz vollständig bestätigt, keine Regression.

Ein Nebenbefund ohne Korrekturbedarf: Das Original selbst nennt für die Kennzahl EV/EBF an
zwei Stellen unterschiedliche Bezugsnormen (Fussnote 6, S. 9: "SIA 380/1"; Kap. 3.1.3/3.3,
S. 18/28: "SIA 180/4") — eine Original-Inkonsistenz zwischen zwei echten SIA-Normen. Das
Destillat gibt beide Stellen jeweils korrekt wieder, ohne die Diskrepanz separat zu benennen
(analog zu den bereits dokumentierten Sicherheitsjahrbuch/-handbuch- und SVGK-Fällen). Kein
Befund, da das Destillat an keiner Stelle etwas Falsches behauptet.

**Empfehlung des Verifikations-Agenten:** Status auf `established` heben — umgesetzt.

### lignum-lignatec-brandschutz.md — speculative, 1 Befund

Neurendering aller 12 Doppelseiten mit `pdftoppm -r 300`, in 24 Halbseiten gesplittet und
einzeln gelesen. Befund: Ziff. 1.2 (S. 3, letzter Satz "Tragende und/oder brandabschnittbildende
Bauteile"). Original: "Decken sind in der Regel tragend und **meistens** brandabschnittbildend."
Destillat gab wieder: "Decken sind i.d.R. tragend **UND** brandabschnittbildend" — das
grossgeschriebene "UND" suggeriert eine Absolutaussage, die das Original mit "meistens"
ausdrücklich abschwächt. Korrigiert.

Alle drei Kreuztabellen (Tab. 3/4/5) inkl. sämtlicher Vorrunden-Korrekturstellen (Run-32-Fix
Tab. 4 Schrägstrich, Run-33-Fix Tab. 5 EFH/REFH-Ausnahme, Run-34-Fix Figur-1-Fundstelle) per
Hochauflösungs-Crop erneut pixelgenau bestätigt. Alle vier Axonometrie-Doppelseiten, Literatur/
Impressum vollständig CONFIRMED. Fehlerdichte in den drei Kern-Tabellen seit Run 32 praktisch
null; verbleibende Einzelbefunde betreffen nur noch Rand-/Nuance-Präzision im Fliesstext, nicht
mehr die Feuerwiderstandswerte selbst.

### lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md — speculative, 2 Befunde

Neurendering aller 40 Seiten (Teile A/B/C) mit `pdftoppm -r 300`. Zellenweise Nachrechnung
sämtlicher Grössenordnungs-Tabellen mit expliziter Kopfzeilen-Spaltenzuordnung (nicht aus dem
Fliesstext übernommen, sondern selbst nachgezählt).

**Befund 1 — Tab. 446-1 (S. 51, Wände mehrlagige Massivholzplatten REI30):** Destillat nannte
Gesamt-Untergrenze 50 mm. Zeile "Mehrlagige Massivholzplatte (d)" über alle sieben Spalten A-G:
A=105/110, B=80/85, C=60, D=60, E=115, F=100, G=95 — kleinster Wert 60 mm (Spalten C/D, EI30).
**Dieser Befund widersprach einer früheren, explizit als korrekt geführten Stelle** ("Tab. 446-1
Untergrenze 50 mm war korrekt", Historie Run 30/31). Weil eine widersprechende Feststellung
gegen eine bereits bestätigte Stelle nicht automatisch als neue Regression gewertet werden darf
(siehe Methodik-Lehre unten), hat der Hauptprozess selbst die Originalseite (Teil C, PDF-Seite
Scan tc-05, gedruckte Seite 51) mit `pdftoppm -r 300` gerendert und die Tabelle visuell
nachgezählt: **bestätigt, kleinster Wert ist 60 mm, nicht 50 mm.** Die frühere "50 mm war
korrekt"-Bestätigung war selbst die fehlerhafte Stelle. Korrigiert von 50-115 auf **60-115 mm**.

**Befund 2 — Tab. 446-3 (S. 53, Wände REI90):** Destillat nannte "auf die tragenden R-Spalten
allein bezogen 155-205 mm (R90)". Die R90-Gruppe der Tabellenkopfzeile umfasst tatsächlich VIER
Spalten (A-D: 200/205, 175/180, 155/160, 120/125), nicht drei. Vom Hauptprozess selbst am
Original (gedruckte Seite 53, Scan tc-06) nachgezählt: **bestätigt, kleinster R90-Wert ist
120 mm (Spalte D), nicht 155 mm.** Korrigiert auf **120-205 mm (R90)**. Die
Gesamttabellen-Bandbreite 60-205 mm (über alle R/EI/REI-Spalten) war bereits korrekt und bleibt
unverändert.

Regressionscheck aller Runde-1-5-Korrekturen (Tab. 320-1, 431-1 bis 431-4 inkl. der bereits im
Fliesstext stehenden sechste-Runde-Korrektur zu Tab. 431-2, Abb. 310-2, 432-1 bis 447-1, 462-1/
462-2, 522-1, 536-1/537-1/537-2/541-2, Kap. 4.5, VSSM-Schreibweise): keine Regression. Sechste
Runde in Folge mit mindestens einem Befund.

## 4. Methodik-Lehre dieses Laufs

Ein neuer Refuter-Befund, der einer früher als "bestätigt korrekt" geführten Stelle widerspricht,
darf NICHT automatisch als Regression des neuen Befunds gewertet oder verworfen werden — die
ältere Bestätigung kann selbst die fehlerhafte Stelle gewesen sein (wie hier bei Tab. 446-1
geschehen). Bei einem solchen Widerspruch ist eine dritte, unabhängige Prüfung direkt am
Original entscheidend, nicht die Reihenfolge oder Mehrheit der bisherigen Aussagen. Der
Hauptprozess hat dies in diesem Lauf selbst übernommen (eigenes 300-dpi-Rendering statt blindes
Vertrauen auf den Agenten-Bericht), bevor die Korrektur übernommen wurde.

## 5. Nachgeführt

- `destillate/sia-d0165-2000-kennzahlen-immobilienmanagement.md`: Status → established.
- `destillate/lignum-lignatec-brandschutz.md`: Ziff.-1.2-Fix, Status-Frontmatter.
- `destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`: Tab.-446-1/446-3-Fix,
  Status-Frontmatter.
- `destillate/INDEX.md`: alle drei Zeilen nachgeführt.
- `training/norm-inventar.md`: neuer Run-35-Eintrag oben.
- `CHANGELOG.md`: neuer Kopfeintrag mit Methodik-Lehre.
- `wiki/QUESTIONS.md`: keine neuen offenen Fragen (alle drei Befunde sind Destillat-interne
  Korrekturen, keine externen Recherche-Aufträge).

## 6. Offen

1. **Siebte Runde** für die zwei verbleibenden speculativen Destillate (`lignum-lignatec-...md`
   1 Befund, `lignum-4-1-...md` 2 Befunde) ist der naheliegende nächste Batch — beide zeigen
   aber deutlich sinkende Fehlerdichte in den Kern-Tabellen, verbleibende Befunde sind
   zunehmend Rand-/Nuance-Fragen statt Kernwert-Fehler.
2. **Empfehlung an Raphael (Wiederholung aus Run 19/34, weiterhin unbeantwortet):** Die
   Grunddestillation, alle vier Vertiefungsstufen (a-d) sowie inzwischen sechs
   Verifikationsrunden sind für SIA/VKF komplett bzw. weit ausgereizt. Der verbleibende
   Rückstand beschränkt sich auf zwei Lignum-Dokumente, die in aufeinanderfolgenden Runden
   durchgehend nur noch 1-2 kleine, meist randständige Befunde produzieren (keine neuen
   substanziellen Fehler seit Run 32). Vorschlag: entweder (a) eine siebte/achte Runde noch
   fahren, bis beide sauber durchlaufen, dann Task auf Datei-Änderungs-Trigger umstellen, oder
   (b) den Task jetzt auf reduzierte Taktung zurückstufen und die beiden Lignum-Reste als
   "speculative, stabil" mit dokumentierten Restbefunden akzeptieren, statt jede 2 Stunden
   erneut zu verifizieren. Beide Wege sind fachlich vertretbar; die Entscheidung bleibt bei
   Raphael, da sie eine Taktungsfrage ist, keine Qualitätsfrage.
3. **VKF-Merkblatt 2003-15** bleibt externe Beschaffung, unverändert seit Run 32.
4. **Bring-Schulden unverändert:** SIA 491, SN EN 12193, SN 640 052, SN 641 400 (KB `baurecht`).

**Keine «SIA/VKF KOMPLETT»-Neumeldung** — bereits in Run 19 (24.07.2026) gemeldet und seither
wiederholt bestätigt; dieser Lauf hat den ersten Nulldurchgang einer der drei verbleibenden
Vertiefungspositionen erreicht (sia-d0165 → established) und zwei weitere, vom Hauptprozess
selbst verifizierte Befunde bei den Lignum-Destillaten korrigiert.
