# Schub-Lane BAURECHT-THALWIL — Prüflauf 2026-08-29e (fünfter Lauf desselben Tages)

**Auftrag:** Wochenkontingent vor dem Montags-Reset produktiv ausschöpfen; nächsten offenen
Batch (T1-T8) der Reglemente-Queue 2414 Thalwil ermitteln und abarbeiten, Schwerpunkt
Umgebungs-/Gestaltungsrecht, Fassungsstand-Pflicht.

## Ausgangslage bei Laufbeginn

Vier vorangehende Läufe desselben Tages (2026-08-29 / -29b / -29c / -29d) hatten bereits
erschöpfend bestätigt:

- kein offener Datei-Batch (T1-T9 vollständig, Quellordner unverändert 234 Dateien)
- die beiden externen Fassungsstand-Wachposten T-01/T-02 (revBZO-Genehmigung/-Inkrafttreten)
  frisch nachgeprüft, unverändert offen (echte Verwaltungsakte, nicht selbst schliessbar)
- ein echter QUESTIONS-Restposten (Baulinien-Querverweis) geschlossen
- ein KB-weiter Sweep über die gesamte `wiki/`-Ebene nach den vier bekannten aufgehobenen
  Erlassen (StrAV, HWSchV, EG GSchG, KGSchV): 0 unmarkierte Fundstellen

Ein fünfter Lauf mit demselben Prüfgegenstand hätte keinen Mehrwert gehabt.

## Befund dieses Laufs

Statt eines fünften Nullbefunds wurde die **Themen-Liste der Priorität (d)** selbst geprüft
(`training/PROGRAMM.md`, «Die neun Themen, in denen der Harness sattelfest werden soll») —
das ist die inhaltliche Zielliste hinter der Datei-Batch-Queue, nicht identisch mit ihr.

Fünf der neun Themen trugen dort **keinen** ERLEDIGT-Vermerk (anders als 4, 5, 7, 9), obwohl
der zugehörige Fachinhalt bereits vollständig im Wiki steht:

| Thema | Fundstelle im Wiki | Ursprung |
|---|---|---|
| 1 · Vorgarten/Wegabstandsbereich | [[umgebungsgestaltung-und-einfriedungen]], Abschnitt «Die kommunale Ebene» — Art. 50 lit. b revBZO | Batch T2, Run 73 (13.08.2026) |
| 2 · Grünflächenziffer | [[nutzungsziffern]] Z. 139-230 (§ 257 PBG + Anrechnungspraxis) + [[umgebungsgestaltung-und-einfriedungen]] (Art. 50 lit. a / Art. 31 revBZO) | Batch T2/T3 |
| 3 · Pflichtbäume | [[umgebungsgestaltung-und-einfriedungen]] — Art. 50 lit. c/d revBZO | Batch T2 |
| 6 · Rechtsprechungs-Register § 238 Abs. 1 PBG | [[umgebungsgestaltung-und-einfriedungen]] Ziff. 4a, 15 Fundstellen | Buch-Run 88 (23.08.2026) |
| 8 · Näherbaurecht (praktisch) | [[abstaende-und-hoehen]], Abschnitt «Näherbaurecht» (Art. 738 ZGB, SBB, Grundbuch) | Batch T6, Run 77 (23.08.2026) |

Für Thema 2 wurde zusätzlich geprüft, ob die von PROGRAMM.md konkret genannte Praxisfrage
(«was wird abgezogen, Plattenwege!») tatsächlich beantwortet ist — bestätigt: `nutzungsziffern.md`
Z. 230 nennt explizit «nicht versiegelte ... auch keine Rasengittersteine» als Ausschlusskriterium
der Grünflächenziffer.

## Fassungsstand

Kein neuer Erlass geprüft, kein neues totes Recht gefunden. Die zitierten Fundstellen
(Art. 50/31 revBZO, § 257/238a PBG, § 238 Abs. 1 PBG, Art. 738 ZGB) waren bereits in früheren
Läufen fassungsstandgeprüft; dieser Lauf hat nur die **Tracker-Korrektheit**, nicht den
Rechtsinhalt selbst erneut geprüft.

## Vorgenommene Änderungen (alle append-only, `git diff --numstat` je `-0`)

- `training/PROGRAMM.md`: neuer Abschnitt «Nachtrag 29.08.2026» nach der Themen-Liste (+35/−0).
- `training/KORPUS-QUEUE-thalwil-reglemente.md`: Prüflauf-Vermerk (+11/−0).
- `CHANGELOG.md`: neuer Eintrag `2026-08-29e` (+21/−0).

Keine Wiki-Datei geändert (reine Bookkeeping-Korrektur, kein neuer Fachinhalt).

## Was offen bleibt

- Die beiden externen Fassungsstand-Wachposten T-01/T-02 (revBZO-Genehmigung durch die
  Baudirektion, Inkrafttreten) — echte Verwaltungsakte, nicht durch einen weiteren Lauf
  schliessbar, nächste sinnvolle Prüfung nicht vor einer erkennbaren Änderung auf
  `thalwil.ch/bzorevision` oder `oerebdocs.zh.ch`.
- Der PBG-Teilrevisions-Wachposten «Baulinien» (RRB 1319/2024, KR-Geschäft 6000).
- Ausserhalb dieser Queue: die von Buch-Run 137 offen gelassene Art.-24c-RPG-Diskrepanz und
  Kap. 22/23 (Band 2), beide screenshot-abhängig — nicht Gegenstand dieser Schub-Lane.

## Fazit

**Nichts mehr offen** aus der Reglemente-Queue 2414 Thalwil oder der Priorität (d) — weder
datei- noch themenseitig. Alle neun Themen sind jetzt auch im Tracker als erledigt erkennbar.
Ein sechster Lauf desselben Tages sollte nicht denselben Prüfgegenstand ein weiteres Mal
bestätigen, sondern entweder auf die externen Wachposten warten oder ausserhalb dieser Queue
arbeiten (z. B. die von Run 137 benannten Restpunkte, sofern Screenshot-Zugriff besteht).
