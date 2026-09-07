---
title: Audit des Bauleitungs-Harness gegen das Bauadministrations-Raster (bbase.ch) und Praxistest 2619
date: 2026-09-07
status: established
sources:
  - skills/ausschreibung/wissensbasis/14_bauadministration-prinzipien.md (Scan bbase.ch, 31 Seiten, 15 Handbuecher, 07.09.2026)
  - Audits je Skill (Scratchpad 07.09.2026), Laufbericht skills/ausschreibung/wissensbasis/training/2026-09-07_bauleitung-run0.md
  - Praxistest kostenkontrolle mit 2619 KISPI BAUKOSTEN.pdf (Stand 01.06.2026) und LOS-Ordnern 03_BKP
skills: [ausschreibung, offertenpruefung, werkvertrag, unternehmerkontrolle, kostenkontrolle, honorarberechnung-sia102]
---

# Audit des Bauleitungs-Harness gegen das Bauadministrations-Raster (07.09.2026)

## Situation

Auftrag Raphael: bbase.ch scannen, die Prinzipien der Bauadministration als Raster fassen, den
Bauleitungs-Harness dagegen testen und den Lern-Loop ergaenzen. Der Hub kannte BBase bereits als
Quelle (Schulungen W695/W696 in `07_werkvertrag-unternehmerkontrolle.md`), hatte aber kein
Pruefraster und keinen laufenden Loop fuer die Bauleitung.

## Was passiert ist

01 Raster mit 42 Prinzipien angelegt (`14_bauadministration-prinzipien.md`), fuenf Audits je Skill,
ein Praxistest des Skills `kostenkontrolle` mit den realen Kostendaten 2619. Ampelbilanz vor der
Umsetzung: werkvertrag 2 gruen / 11 gelb / 2 rot; kostenkontrolle 3 / 11 / 10; unternehmerkontrolle
3 / 13 / 6; ausschreibung mit offertenpruefung 0 / 7 / 2; honorarberechnung 0 / 7 / 7.

02 Wiederkehrendes Muster ueber alle fuenf Skills: der Harness beschreibt die Erzeugnisse (LV,
Vertrag, Protokoll, Rapport) gut, aber nicht die **Belegkette dazwischen**. Es fehlten
Vergabeantrag mit vergleichbarer KV-Summe, Aenderungsprotokoll (Mutation), Zahlungsantrag,
Kontoauszug je Vergabeeinheit und die Trennung von Vertragssumme und Rueckstellungen «Diverse».

03 Der Praxistest fand in der Kostenprognose 2619 (Stand 01.06.2026) vier Fehlerklassen, die
projektuebergreifend wiederkehren: Angebotsbetraege inkl. neben exkl. MwSt in derselben Spalte
(Estermann 80'089.15 inkl. MwSt nach Skonto, exkl. 75'600); ein Angebotsbetrag ohne Beleg im
Losordner (JOMOS 38'000 gegen belegte 24'412 exkl. MwSt); Los-Nummern als BKP-Codes (271.13,
259.21, 273.50, Gruppe 690) und dasselbe Los mit bis zu drei Nummern; ein Rechenfehler im
Stundentotal (4'968.5 statt 3'968.5 h).

## Ursache

Die Bauleitungs-Skills sind aus Erzeugnis-Vorlagen gewachsen (Goldstandard-LVs, Werkvertrag,
Protokolle), nicht aus dem Buchungsmodell einer Baubuchhaltung. Ohne Belegkette prueft niemand
die Eingaben (MwSt-Basis, Beleg, BKP-Code, Summen), und die Kostenerwartung war vor der ersten
Vergabe null, weil die Prognoseregel nur vergebene Gewerke kannte.

## Konsequenz

Am 07.09.2026 direkt eingearbeitet (umkehrbar, Laufbericht run0): Vergabe-Gate und Freigabeblock
8a, LV-Kopie mit eingefrorenem Original, Vertragsbrief mit Ruecksendefrist, Vergabeeinheit und
gedeckte Konti im Vertragskopf, Nachtragstypen ERBR/ERNE/ABBR/ABNE, getrennte Sicherheiten
(Art. 149-150 und Art. 181), Kostenrapport mit 13 Spalten und Ampel je Konto, Aenderungsprotokoll,
Vergabeantrag, Zahlungsantrag, Kontoauszug je VE, Preisstandanpassung, Kostenerwartung je
Vergabestand, Eingabe-Normierung, Abnahme-Aufgebot, Schlussrechnung mit Saldoklausel,
Beurteilung in beide Richtungen, Mengenarten SIA 451, Versand-Gate, Methodenwahl-Gate im Honorar,
Faktorprotokoll mit Plausibilitaetsgrenze, Leistungsnachweis. Offene Entscheide L14 bis L26 in
`wissensluecken.md`. Loop `bauleitung-training` (Montag 04:20) prueft weiter.

## Regel fuers naechste Mal

1. **Kein Betrag in eine Kostenprognose ohne Beleg, MwSt-Basis und BKP-2017-Code.** Angebote vor
   dem Eintrag auf exkl. MwSt und vor Skonto normieren, Belegstelle in die Bemerkung, Los-Nummer
   als Konto neben dem verifizierten Code.
2. **Kostenerwartung je Vergabestand**, nie nur aus Verpflichtungen: vor Angebot der KV, mit
   Angebot das Angebot plus Diverse, vergeben der Vertrag plus NT plus Diverse.
3. **Belegkette vor Erzeugnis**: Vergabeantrag, Aenderungsprotokoll, Zahlungsantrag und
   Kontoauszug je Vergabeeinheit sind die Stellen, an denen der Bauherr unterschreibt; ohne sie
   ist jede Kostenaussage im Streitfall unbelegt.
4. **Summen der Quelle nachrechnen**, bevor sie weiterverwendet werden.
