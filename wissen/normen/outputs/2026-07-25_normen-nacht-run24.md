---
titel: "Normen-Training Run 24 (MacBook Pro) — Bookkeeping-Rueckstand (7 Punkte) geschlossen + BRL-14-15-Delta & SIA-266/1 weitere Retro-Verifikation"
datum: 2026-07-25
station: "MacBook Pro"
familien: "SIA + VKF (Stations-Split; DIN/VSS/RAL gehoeren dem Mac Mini, nicht angefasst)"
meilenstein: "Kein neues Destillat — Rueckstandsabbau + zwei angeforderte Retro-Verifikationsrunden"
agenten: "2 adversariale Refuter-Agenten (Hintergrund) + Korrekturen/Bookkeeping direkt durch den Hauptmodell-Lauf"
---

# Normen-Training Run 24 — MacBook Pro (SIA/VKF)

## Ergebnis in Kuerze

Run 23 hatte zwei konkrete Folgeaufgaben hinterlassen (VKF-BRL 14-15-Delta re-verifizieren, SIA 266/1
dritte Runde) und zwei strukturelle Entscheide bei Raphael belassen (PL-03-Entscheid, Bring-Schulden).
Dieser Lauf hat zuerst den Bookkeeping-Rueckstand in `wiki/QUESTIONS.md` bereinigt (7 Punkte, die
inhaltlich bereits erledigt waren, aber nicht als `[x]` markiert), dann die zwei angeforderten
Verifikationsrunden gefahren. Keine neue Norm destilliert — `norm-inventar.md` zeigt weiterhin 0 offene
`[ ]`-Positionen.

## Zugriffs- und Kollisions-Check (Pflicht)

- NAS `/Volumes/daten` gemountet: **OK**.
- OneDrive-Zugriff auf `PL - 02_Recht_Norm/02_Normen/` und `PL - 03 Brandschutz/`: **OK** — direkt per
  `find`/`pdfinfo` sowie durch beide Hintergrund-Agenten bestaetigt.
- Kollisions-Check: `git status --short -- wissen/normen/` lieferte keine Ausgabe (kein fremder,
  uncommitteter Stand); keine zweite `normen`-Instanz auf diesem Host erkennbar.
- Workflow-Tool nicht verfuegbar in dieser Session (Meldung "Review dynamic workflow before running",
  keine interaktive Freigabe moeglich) — gemaess PROGRAMM.md-Fallback stattdessen zwei parallele
  Hintergrund-Agenten direkt ueber das Agent-Tool gestartet (funktional aequivalent zur Workflow-
  Pipeline: Destillier-/Pruef-Agent + unabhaengige Verifikation je Strang).

## Bookkeeping-Rueckstand geschlossen (7 Punkte, `wiki/QUESTIONS.md`)

Alle sieben Punkte waren beim Gegenlesen der Destillate bereits inhaltlich erledigt — hier nur der
Abgleich Destillat ↔ offene Frage, keine neue Quelle noetig:

1. **VKF-BRL 16-15 Ziff. 3.5.2 Personenbelegung** — bereits seit Wissens-Chef Run 8 (18.07.2026)
   vollstaendig nachgefuehrt (Verkaufs-Tabelle Fachmaerkte/Supermaerkte/hochfrequentierte Supermaerkte)
   und in Run 23 nochmals gegengelesen bestaetigt.
2. **VKF-BRL 16-15 S.16-ABSV-Aenderung** — Diagnose war bereits in Run 23 korrigiert (Bildunterschrift
   liegt auf S. 15, keine Vertauschung Ziff. 2.4.3/2.4.4), der QUESTIONS-Punkt war nur nicht geschlossen.
3. **Methodik-Pflicht `pdfimages`-Bildvergleich** — steht bereits als Pflicht 4 in `training/PROGRAMM.md`.
4. **SIA 385/1** — Datei `SIA_Norm/i385-1_2011_d.pdf` liegt vor (6 von 28 Normseiten), war fälschlich
   als "nur Screenshots im Themenordner" notiert. Bereits am 17.07.2026 korrekt als Auszug/Bring-Schuld
   destilliert (`destillate/sia-385-1-2011.md`).
5. **SIA 380/1:2016** — Datei `SIA 380_1_2016/i380-1_2016_d.pdf` bestaetigt im Bestand (6 von 60
   Normseiten). Bereits am 17.07.2026 korrekt als Auszug/Bring-Schuld destilliert
   (`destillate/sia-380-1-2016.md`, blockiert Agent `energie-berater`).
6. **SIA 102 2014↔2020** — bereits in `norm-inventar.md` Zeile 93 als "— ersetzt durch 2020" markiert.
7. **`destillate/sia-480-2004.md`** verlinkte SIA 102:2003 als "nicht im Bestand" — faktisch falsch: die
   Datei liegt zweifach vor (`SIA_Normen/SIA 102/SIA_102_2003.pdf` UND `alle/xalt/102_2003_d.pdf`,
   56 S., `pdfinfo` bestaetigt Titel "Ordnung fuer Leistungen und Honorare der Architektinnen und
   Architekten"), ist aber bewusst nicht destilliert (ersetzt durch 2020). Linktext korrigiert.

## Retro-Verifikations-Verdikte (2 Hintergrund-Agenten, adversarial)

| Artefakt | Verdikt | Ergebnis | Status danach |
|---|---|---|---|
| `vkf-brl-verwendung-baustoffe.md`, Delta 2017 (Re-Verifikation der 5 Run-23-Korrekturen) | 4x BESTAETIGT, 1x BEANSTANDET | Ziff. 3.2.3 Abs. 1 praezisiert | speculative |
| `sia-266-1-2003.md` (dritte Runde) | BEANSTANDET | 1 neuer Fehler in Figur-1-Zeile gefunden+korrigiert | speculative |

### VKF-BRL 14-15-Delta — 4 von 5 Korrekturen bestaetigt, eine praezisiert

Der Refuter hat beide PDF-Fassungen (2015/2017) per `pdftotext -layout` vollstaendig extrahiert und
Wort fuer Wort gegen die 5 Run-23-Korrekturen gepruefti:

- **Fussnote [2] zu Ziff. 3.3.2** (Streichung "(inkl. Ueberlappungsbereich)" statt Ergaenzung): BESTAETIGT.
- **Ziff. 3.3.1 Abs. 5/6** (real umformuliert, nicht buchstabengleich): BESTAETIGT.
- **Ziff. 2 Abs. 8** (neuer Absatz Beschichtungen ≤1.5 mm): BESTAETIGT.
- **SN-EN-60065-Fassung + Trennung Ziff. 4.1 Abs. 7 / Fussnote [7]**: BESTAETIGT.
- **Ziff. 3.2.3 Abs. 1** (Geltungsbereichs-Erweiterung): **BEANSTANDET.** Die Run-23-Formulierung hatte
  den Umfang der Aenderung ueberzeichnet — "Aussenwandbekleidungen" und die Ortsangabe "im
  Hinterlueftungsbereich" standen bereits 2015 wortgleich im Text (nur andere Satzstellung: Relativsatz
  statt "wenn"-Nebensatz). Die tatsaechlich einzige materielle Neuerung 2017 ist der Zusatz **"bzw.
  flaechige Schichten"** (Erweiterung von reinen Daemmstoffen auf flaechige Schichten allgemein).
  Im Destillat korrigiert (Fundstelle S. 6 beider Fassungen).

Delta-Sorgfaltsstufe bleibt `speculative` bis zu einer kurzen Re-Verifikation dieser einen Korrektur.

### SIA 266/1 — dritte Runde: 0 neue Befunde ausserhalb Figur-1, aber erneut ein Fehler exakt dort

Der Refuter hat das komplette 12-seitige Original erneut gelesen und gegen das gesamte Destillat
abgeglichen. Bestaetigt ohne Abweichung: 31 Verweisungen (Ziff. 0.2), Tabelle 1 komplett inkl. aller
8 Fussnoten und Exk-Formel, Formel 1/2 (h/l-Definition), Ziff. 2.1-4.3, Genehmigung/
Uebergangsbestimmungen.

**Neuer Fehler exakt in der von Run 23 editierten Figur-1-Zeile:** Die Beschreibung hatte die
Hauptdruckkraft Fy (eingeleitet ueber die Pruefpresse mit Ausgleichsschichten, Ziff. 2.2.3, **Pflicht**)
faelschlich mit dem separaten, optionalen Querdruck-System (Stahlplatte t≥20mm/Spannstangen Ø≥16mm,
Ziff. 2.2.5, **Kann-Bestimmung**, ~0.1·fxk) zu einem Mechanismus verschmolzen. Beide Mechanismen sind
in der Norm klar getrennt (unterschiedliche Ziffern, unterschiedliche Modalitaet). Im Destillat
korrigiert — beide Mechanismen jetzt sauber auseinandergehalten. Die h/l-Korrektur aus Run 23 selbst
(Breite/Hoehe gemaess Formel-1-Definition) war und bleibt richtig.

**Musterbeobachtung ueber zwei Runden:** In Run 23 UND Run 24 lag der jeweils neu gefundene Fehler
exakt in der zuletzt editierten Passage (Figur-1-Beschreibung), waehrend der unveraenderte Rest beide
Male fehlerfrei blieb. Fuer diese KB heisst das: frisch nachgetragener/korrigierter Text ist die
hoechste Fehlerquelle, nicht der stabile Bestand — Retro-Verifikation sollte sich bei Wiederholungslaeufen
gezielt auf die zuletzt editierten Stellen konzentrieren, nicht gleichverteilt auf das ganze Dokument.

## Register-Nachfuehrung

- `destillate/sia-480-2004.md`: Linktext SIA 102:2003 korrigiert ("nicht im Bestand" → "im Bestand,
  ersetzt durch 2020, bewusst nicht destilliert").
- `destillate/vkf-brl-verwendung-baustoffe.md`: Ziff.-3.2.3-Abs.1-Zeile praezisiert, Verifikationsstand-
  Callout um Run-24-Re-Verifikation ergaenzt, `gelesen`-Feld nachgetragen.
- `destillate/sia-266-1-2003.md`: Figur-1-Zeile korrigiert (Fy/Querdruck getrennt), `verifikation`-Feld
  um dritte Runde ergaenzt.
- `destillate/INDEX.md`: 2 Eintraege aktualisiert (vkf-brl-verwendung-baustoffe, sia-266-1-2003).
- `wiki/REGISTER.md`: 2 Eintraege aktualisiert (SIA 266/1, VKF-BRL 14-15).
- `wiki/QUESTIONS.md`: 7 Altpunkte geschlossen (`[x]` mit Beleg), neue Run-24-Sektion am Kopf ergaenzt.
- `training/norm-inventar.md`: Kopfnotiz Run 24 ergaenzt (0 offene `[ ]`, keine neue Destillation).
- `CHANGELOG.md`: Eintrag zuoberst.

## Weiterhin offen — nicht selbst entschieden (Uebergabe an Raphael)

Unveraendert aus Run 22/23, dieser Lauf trifft sie bewusst nicht:

1. **Entscheid PL-03 ins Inventar aufnehmen** oder als getrennte Brandschutz-Ablage fuehren mit
   Pflicht-Querblick im Skill `normen`.
2. **Bring-Schulden** (nur ueber SIA-Abo/Kauf schliessbar): Volltext SIA 380/1:2016 (P1, blockiert
   `energie-berater`), SIA 385/1:2011, SIA 118:2013 (Werkvertraege), SIA 2048, SIA 242, SN EN 520,
   SIA 410/1 (Farbcode), 260/1-267/1 deutsche Fassungen (nur franzoesisch im Bestand), SIA 240:1988
   Ausgabe pruefen.

## Empfehlung an Raphael

Fuer den naechsten Lauf: (1) SIA 266/1 vierte Runde nach der Figur-1-Korrektur — falls diese wieder
sauber ist, kann der Status auf `established` gehoben werden; (2) kurze Re-Verifikation der
Ziff.-3.2.3-Abs.1-Praezisierung bei VKF-BRL 14-15-Delta; (3) danach `wiki/QUESTIONS.md` weiter
abarbeiten — nach den 7 Schliessungen dieses Laufs verbleiben primaer die oben genannten Bring-Schulden
und die zwei strukturellen Entscheide, beide bei Raphael. Kein neuer "INVENTAR KOMPLETT"-Vorschlag,
da die Vertiefungsstufen (b) Retro-Verifikation und (c) Q&A-Selbstbefragung fuer die betroffenen
Artefakte noch nicht abgeschlossen sind.

## Modell- und Kostendisziplin

2 adversariale Verifikations-Agenten liefen als eigenstaendige Hintergrund-Agenten auf Hauptmodell-Ebene
(Verifikations-/Richter-Stufe wird gemaess Rule 260719 nicht an ein guenstigeres Modell delegiert). Das
Workflow-Tool war in dieser Session nicht nutzbar (dynamische Skripte verlangen interaktive Review, die
in diesem headless/Scheduled-Task-Kontext nicht verfuegbar ist) — als Fallback wurden die zwei
unabhaengigen Pruefstraenge direkt und parallel ueber das Agent-Tool gestartet, funktional aequivalent
zur vorgesehenen Workflow-Pipeline. Alle Korrekturen (Fliesstext-Edits, 7 Bookkeeping-Schliessungen,
Register-Nachfuehrung) wurden vom Hauptmodell direkt ausgefuehrt, da sie inhaltliche
Praezisionsentscheidungen erforderten. Kein Artefakt-Status wurde ohne vorherige unabhaengige
Verifikation gehoben; beide re-verifizierten Artefakte bleiben bewusst `speculative`, da beide Runden
neue (wenn auch kleinere) Korrekturbedarfe zutage foerderten.
