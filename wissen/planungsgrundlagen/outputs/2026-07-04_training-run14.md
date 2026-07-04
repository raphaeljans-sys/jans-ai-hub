# Training Run 14 — KB Planungsgrundlagen · 2026-07-04

**Schwerpunkt-Domaene:** Energie (PL-04) — Rotation Run 13 Kartenportale → Run 14 Energie
(Prioritaetsdomaene). **Connector-Schritt:** nein (Domaene Energie hat keinen Connector).

## Ausgangslage / erkannte Luecke

Beim Stand-Lesen war **D6 (EVEN-Bedienung)** die einzige vollstaendig offene Energie-Aufgabe
(`[ ]` in QUESTIONS) — und die praktisch wichtigste: EVEN (`energievollzug.ch`) ist **seit
01.01.2026 der verbindliche Kanal** im Kt. ZH, aber in der KB war nur *dass* es EVEN gibt
dokumentiert, nicht *wie man es bedient*. Zweite Luecke: die MuKEn-2025-Fakten waren grob
(«EnDK 08/2025») und teils veraltet im Datum. Beides diesen Lauf geschlossen.

## Bearbeitete Fragen (Run 14)

**EVEN-Bedienung (D6):**
1. **Was ist EVEN, was deckt es ab?** → Digitalisierung der Energienachweise/-Meldungen, **nicht**
   des ganzen Baubewilligungsprozesses; ersetzt die «End-of-Life»-PDF EN-101…141; offene
   Schnittstellen zu eBAU/kommunalen Baugesuchsloesungen.
2. **Welche Kantone, seit wann?** → alle ausser **Bern** + **Liechtenstein** (25 + FL); AG
   Ersteinfuehrer 01.04.2025, ZH + Mehrheit 01.01.2026.
3. **Projektstruktur?** → Projekt (1 Bauherrschaft, 1+ Parzellen) → Gebaeude **je genau 1 EGID** →
   Gebaeudekategorie/Zone → Teilnachweis; Nachweis = Summe der Teilnachweise.
4. **Rollen?** → Planerseite: **Projektkoordination** (anlegen/einladen/einreichen/PK beauftragen) +
   **Nachweisverfassung** (Teilnachweise fuellen). Behoerdenseite: **Vollzugsverantwortung**, interne
   + externe Pruefer. **Private Kontrolle** nur in PK-Kantonen (= ZH). Plus Admin-Rollen.
5. **Ablauf Happy Case?** → Login (Kanton waehlen) → Projekt → Gebaeude (Neubau+Bestand) →
   Teilnachweis verfassen + Beilagen → einreichen → Pruefung (intern/extern/PK) → abschliessen.
6. **Aktionen/Kommunikation?** → Nachtrag (Teilnachweis, Pruefer↔Verfasser), Beanstandung (Projekt,
   Vollzugsverantwortung↔Projektkoordination), Ausfuehrungskontrolle (PK waehrend Bauphase),
   Vollzugskontrolle (Stichprobe).
7. **Statusmodell + Freigaben?** → Projekt initialisiert→in Pruefung→prov. freigegeben→freigegeben→
   prov. abgeschlossen→abgeschlossen; Freigabe-Kaskade **Bewilligungs-/Baufreigabe-/Bezugsbereit**
   (Baufreigabe → autom. Einladung zur Ausfuehrungskontrolle).
8. **Beilagen-Upload + Arbeitsweise?** → Anhaenge je Teilnachweis; kein Undo, kein Offline, alles
   protokolliert (Zeitstempel/Person/Rolle); GWR-Anbindung (Gebaeude-Status lt. GWR, Datenexport).

**MuKEn 2025 / ZH-Stand (D1/E5/D8):**
9. **Praezises Verabschiedungsdatum + Neubau-Werte?** → **EnDK-Plenum 29.08.2025**; Eigenstrom
   **20 W/m² EBF** (Art. 1.25, Verdoppelung), Waerme vollst. erneuerbar (Art. 1.28), graue-Energie-
   **THG-Grenzwert** nach Minergie-Reglement ab 01.01.2025 (Art. 1.39-40, <50 m² EBF befreit).
10. **ZH-Umsetzungsstand?** → **weiterhin ausstehend** (04.07.2026); bis dahin MuKEn 2014
    (Eigenstrom 10 W/m²). Klar getrennt gehalten von der geltenden ZH-Vorgabe.

## Was geaendert wurde

- **NEU** Wiki `energie-even-plattform-bedienung.md` (established) — 8 Sektionen: was EVEN ist,
  Projektstruktur, Rollen (inkl. Private Kontrolle fuer ZH), Ablauf Happy Case, Aktionen,
  Statusmodell + Freigabe-Kaskade, Portalfunktionen, JANS-Praxis-Merkposten.
- **Update** `energie-energienachweis-zh-formulare.md`: EVEN-Bruecke → neuer Artikel verlinkt;
  MuKEn-2025-Datenstand mit praezisen Artikelnummern + 20-W/m²-Warnung (MuKEn 2014 vs. 2025).
- **Update** `energie-uebersicht.md`: EVEN-Link, MuKEn-2025-Datum/Werte, D6 auf ✓ gesetzt.
- Register: INDEX (neuer Artikel + MuKEn-Praezisierung), QUESTIONS (D6 ✓, D8/D1 Update),
  curriculum (E5 praezisiert, E10 EVEN ✓), raw/_INGESTED (Schulung V1.4 + Web-Quellen).

## Quellen (belegt)

- **EnDK-Schulung «EVEN — Schulung der Bewilligungsbehoerden in Kantonen mit Privater Kontrolle»
  Version 1.4, Stand 13.10.2025** (68 Folien, energieagentur-sg.ch) — Hauptquelle Bedienung.
- Aargau EVEN-Praesenzschulung v0.40 (ag.ch) — Behoerdensicht.
- zh.ch/energienachweise (04.07.2026) — ZH-Verbindlichkeit + zwei Nachweis-Zeitpunkte.
- energie-zentralschweiz.ch/vollzug/even (04.07.2026) — Rollen/Teilnehmer.
- energiehub-gebaeude.ch/muken-2025 (04.07.2026) — MuKEn-2025-Artikel/Werte.

## Naechster Lauf (Run 15)

Rotation → **Recht/Norm** (PL-02). Kandidaten: **R3** Dispensrecht-Muster (05_Dispensrecht) vertiefen;
**B4-Rest** Art. 35 Waldabstand SZ; **B2-Rest** ZH-PBG «Klimaangepasste Siedlungsentwicklung»
Inkraftdatum verfolgen. Energie-Rest fuer spaeter: **D5 Typ B/C/D** (Dachziegel/transparent/Fassade
CHF/kWp) + **KISPI-EVEN-Screenshot-Walkthrough**, sobald der Nachweis dort real gefuehrt ist. Meta:
**M2** Anbindung machbarkeit/ankaufspruefung/behoerden-vorabklaerung schaerfen.
