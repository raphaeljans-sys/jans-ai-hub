---
title: Radon — bauliche Schutzmassnahmen und Grenzwerte
status: emerging
last_updated: "2026-09-07 (Nachtschicht Mac Mini Run 184, neu angelegt)"
datenstand: "01.07.2026 (Minergie-ECO Vorgabenkatalog Zusatz ECO, Nachweisversion 2023.1, geltende Fassung)"
sources: [destillate/minergie-eco-vorgabenkatalog-standard-2023-1.md]
links: [[INDEX]], [[BAUHERREN-FAQ]], [[elektrosmog]], [[gebaeudeschadstoffe]]
---

# Radon — bauliche Schutzmassnahmen und Grenzwerte

> Status **emerging**, Einzelagenten-Lauf ohne Refuter-Panel. Quelle ist der Minergie-ECO
> Vorgabenkatalog (110.03/110.04/110.50) — Radonschutz gilt aber unabhängig von einer
> ECO-Zertifizierung als Stand der Technik für jedes Gebäude mit erdberührten Aufenthaltsräumen.

## Das Wichtigste
Radon ist ein natürliches, radioaktives Edelgas aus dem Untergrund, das durch undichte
erdberührte Bauteile ins Gebäude eindringt. Der Grenzwert unterscheidet sich nach Neubau und
Erneuerung und ist bei der Erneuerung als Ausschlussvorgabe (zwingend, kein Punktesystem)
strenger durchgesetzt:

| Fall | Grenzwert (Messwert) | Toleranz Messunsicherheit |
|---|---|---|
| Neubau, nach Fertigstellung | ≤ 100 Bq/m³ | inkl. Messunsicherheit ≤ 200 Bq/m³ |
| Erneuerung, Ausgangszustand (vor Massnahme) | ≤ 100 Bq/m³ empfohlen | inkl. Messunsicherheit ≤ 200 Bq/m³ |
| Erneuerung, nach Fertigstellung (Ausschlussvorgabe) | ≤ 300 Bq/m³ | Wert **inkl.** Messunsicherheit bereits ≤ 300 Bq/m³ |

Bei der Erneuerung ist die Messunsicherheit also anders als beim Neubau **bereits im
Grenzwert selbst enthalten** — keine zusätzliche Toleranz obendrauf.

**Abgrenzung zum gesetzlichen Referenzwert** (ergaenzt Wissens-Chef Lauf 53, 07.09.2026): Die
Werte oben sind **Minergie-ECO-Zertifizierungsschwellen**, nicht das Gesetz. Der gesetzliche
Radon-Referenzwert liegt nach **StSV Art. 155 Abs. 2 bei 300 Bq/m³** und gilt fuer alle
Aufenthaltsraeume unabhaengig von jeder Zertifizierung — fuehrend dafuer ist die KB
`planungsgrundlagen`, Artikel `recht-norm-radonschutz` (dort Z. 30). Es besteht kein
Zahlenwiderspruch: die ECO-Ausschlussvorgabe fuer Erneuerungen faellt mit dem gesetzlichen Wert
zusammen. Aber der ECO-Neubauwert **100 Bq/m³ ist eine Zertifizierungsschwelle und nicht «der»
Grenzwert** — diese Verwechslung ist der Grund fuer diesen Absatz.

## Bauliche Schutzmassnahmen (Neubau und Erneuerung)
- **Keine erdberührten Wohn-/Aufenthaltsräume** — oder Radondrainage aus perforierten Rohren
  Ø 10 cm unter der Bodenplatte (aktiv oder passiv entlüftet).
- **Durchgehende Fundamentplatte** statt Naturkeller oder Streifenfundamente.
- **Rohrdurchführungssysteme (RDS)** bei jeder Durchdringung neu erstellter Fundamentplatten
  oder erdberührter Aussenwände.
- **Wasserdichter Beton nach SIA 272** oder gasdichte Feuchtigkeitssperren (z. B. Bitumenbahn
  mit Aluminiumfolie) bei neu erstellten erdberührten Bauteilen.
- **Erdsonden von Wärmepumpen** mindestens 3 m vom Gebäude entfernt platzieren.
- **Lüftungsanlagen exakt einregulieren**: Zu-/Abluftverhältnis in allen Räumen zwischen 1
  und 1.05 (Unterdruck im Gebäude zieht Radon aktiv an); Aussenluftdurchlässe nach
  SIA 382/1:2014 Kap. 5.12.
  ⚠ **Diese Normfundstelle ist nicht gedeckt** (Wissens-Chef Lauf 53, 07.09.2026, adversarial
  verifiziert). Die einzige deklarierte Quelle dieses Artikels
  (`destillate/minergie-eco-vorgabenkatalog-standard-2023-1.md`) nennt weder SIA 382/1 noch
  Ziff. 5.12 — Volltextsuche ueber alle 466 Zeilen: null Treffer. Eine Ziff. 5.12 zu SIA 382/1
  fuehrt zwar `destillate/ahb-zuerich-gt-rl5-lueftungsanlagen.md` Z. 28, aber zur **Ausgabe 2007**
  und zu einem anderen Regelungsgegenstand (Platzierung von Aussenluftfassungen, nicht das hier
  behandelte Zu-/Abluftverhaeltnis); dieselbe Datei traegt Z. 95 selbst den Vorbehalt, ihre
  Ziffern vor Verwendung gegen die aktuelle Ausgabe zu pruefen. Zudem ist **SIA 382/1:2014 seit
  01.02.2025 durch SIA 382/1:2025 ersetzt** (`wissen/normen/wiki/REGISTER.md` Z. 1090; derselbe
  Stand steht in `wissen/energie/wiki/INDEX.md` Z. 140-142). Vor Verwendung am Original pruefen;
  Fundstelle und Fassungsstand fuehrt die KB `normen` (Rule `normen-referenz`).
- **Luft-Erdregister** (falls vorhanden): nicht unter dem Gebäude, glattwandige
  Kunststoffrohre, Luftdichtheitsklasse D nach DIN EN 13779 bzw. DIN EN 16798-3.

## Messmethodik
- **Passive, vom METAS zugelassene Radondosimeter.**
- Expositionsdauer: **mindestens 2, besser 3 Monate** (Erneuerung, vor Massnahme, während
  einer Heizperiode) bzw. **mindestens 3 Monate** (nach Fertigstellung, in der ersten
  Heizperiode nach Bezug).
- Messort: typische Aufenthaltsräume (Wohn-/Schlaf-/Kinderzimmer, Büro, Schulzimmer) im
  untersten Stockwerk, meist Parterre; zusätzlich exponierte Räume (Naturkeller) als
  Hinweis auf Maximalwerte.
- Positionierung: 1 bis 1.5 m Höhe, in Kontakt mit normaler Raumluft, nicht direkt neben
  Fenstern/Türen, nicht in Zonen mit viel Luftzirkulation.
- Bei Neubauten dürfen die Messwerte **nach** Ausstellung des definitiven Zertifikats
  eintreffen: Frist bis **1.5 Jahre nach Fertigstellung**; bei Grenzwertüberschreitung
  verpflichtet sich der Antragsteller, innert weiterer 1.5 Jahre nachzubessern.
- Messungen nach dem Label GI «Gutes Innenraumklima» werden als gleichwertig anerkannt.
- Qualitätssicherung: die für die Radonmessung zuständige Fachperson darf **nicht** derselben
  Firma angehören wie der für die Zertifizierung verantwortliche Antragsteller.
- Eine vom BAG anerkannte Radonfachperson ist **nicht** für die Messung selbst nötig, sondern
  erst bei der Umsetzung zusätzlicher Schutzmassnahmen oder einer Radonsanierung.

## Einordnung: Radonkarte des BAG
Die Radonkarte zeigt nur die grobe **Wahrscheinlichkeit** einer Grenzwertüberschreitung — sie
ist wegen der starken geologischen Abhängigkeit **kein verlässlicher Ersatz** für eine
Messung am konkreten Grundstück. Bei erhöhter Wahrscheinlichkeit sind trotzdem bauliche
Massnahmen umzusetzen bzw. bei Erneuerungen eine Ausgangsmessung durchzuführen.

## Bauherren-Transfer
Radonschutz ist reine Rohbau-/Gebäudetechnik-Disziplin und günstig, solange er **vor** der
Fundamentplatte entschieden wird (Drainage, RDS, Betonqualität) — Nachrüstung nach Bezug ist
ungleich teurer. Bei Erneuerungen mit bekannt radonbelastetem Untergrund lohnt sich eine
Ausgangsmessung vor Baubeginn, weil sie die Beweislast im Streitfall (Ausschlussvorgabe!)
umkehrt: ohne Ausgangsmessung lässt sich eine Verschlechterung durch die Erneuerung selbst
(dichtere Hülle, Unterdruck durch neue Lüftung, neue Leitungsdurchführungen) nicht widerlegen.

## Offene Punkte
- Kein produktseitiger Vergleich verschiedener Radondrainage-/RDS-Systeme (Hersteller,
  Materialkosten) — bislang nur die normative Anforderungsseite destilliert.
- Die Radonkarte des BAG selbst (kantonale Risikoeinstufung ZH/SZ) ist hier nicht ausgewertet.
- Keine Aussage zu Sanierungsmassnahmen bei nachträglich zu hohen Werten (Radonsauger,
  Unterdrucksysteme) — nur Neubau-/Erneuerungs-Prävention.
