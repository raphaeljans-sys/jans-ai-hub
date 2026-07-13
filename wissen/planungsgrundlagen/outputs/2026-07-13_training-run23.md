# Training Run 23 — KB Planungsgrundlagen · 2026-07-13

**Schwerpunkt-Domaenen (Token-Vollgas, 2 Domaenen):** Energie (PL-04, Prioritaet) + Recht & Norm
(PL-02). Rotation gemaess PROGRAMM.md (Kartenportale → Energie → Recht/Norm → Brandschutz):
Run 22 war Kartenportale + Meta, Run 23 setzt konsequent bei Energie fort und nimmt Recht & Norm
als zweite Domaene (Token-Vollgas-Vorgabe: 2 Domaenen + 10-16 Fragen pro Lauf).

## Ausgangslage / erkannte Luecke

Curriculum-/QUESTIONS-Stand geprueft: fast alle Lektionen `[x]`, verbleibende offene Punkte (D3
Skill-Entscheid, D5-Rest PV-Schlussabrechnung, D8/B2 wartend auf externe Publikation, B5 BSV 2026
wartend) sind extern blockiert — kein Fortschritt ohne neue Quelle. Statt reiner Refresh-Checks
wurden **bisher unbearbeitete SharePoint-Unterordner** identifiziert: in PL-04 `endk.ch/
Waermetechnischen Anlagen`, `endk.ch/Formular S Schallschutznachweis Aussenlärm`, `endk.ch/Gesuch
zur Versickerung von Regenwasser HLS Planer`; in PL-02 `05_Raumpilot`, `09_Sanitaereinrichtung`,
`01_Gesetze/06_Wohnbauförderung`, `10 Lärmschutz`. Alle enthalten reales, unerschlossenes
Planungsgrundlagen-Material.

## Bearbeitete Fragen (Run 23)

**Energie — E12/D9 (Zusatzformulare) + D3 (Meta-Entscheid):**
1. Was regelt das WTA-Formular (waermetechnische Anlagen) und wie unterscheidet sich die
   Verfahrensweiche je Anlagentyp? → Melde-/Anzeige-/Ordentliches Verfahren, Neubau-Kopplung
   EN-103, GWR-Ausfuehrungskontrolle.
2. Wie grenzt sich Formular S (Aussenlaerm) von LN-1a/1b (Anlagen-eigener Laerm bei Luft-WP) ab?
3. Welche Novelle betrifft aktuell die LSV? → USG/LSV-Aenderung 01.04.2026 (Web-Recherche).
4. Wann ist eine Regenwasser-Versickerungsanlage bewilligungspflichtig, wann nicht (Bagatellgrenze)?
5. Welche Materialschwelle loest bei Metalldaechern/-fassaden eine Adsorberpflicht aus? → 50 m²,
   Fassadenfaktor 0.2.
6. Rechtfertigt sich ein eigenes Skill `energie-nachweis`? → Analytisch entschieden: NEIN
   (Domaene bereits vollstaendig im Wiki + Agent `energie-berater` organisiert).

**Recht & Norm — R10 (Raumprogramm-Referenzwerke) + R11 (aktuelle regulatorische Entwicklungen):**
7. Was leistet Raumpilot als Gebaeudelehre-Nachschlagewerk, und wie unterscheidet es sich
   methodisch von Neufert? → Funktionsbereiche statt fertiger Raumtypen, Kapitelstruktur belegt.
8. Welche Mindest-Nettowohnflaeche gibt das WBS 2015 des Bundes je Zimmerzahl vor? →
   30/45/60/80/100/120/140 m² (1-7-Zi), Grundausstattungs-Tabelle vollstaendig erfasst.
9. Wie viele Personal-/Publikumstoiletten braucht ein Gebaeude nach Stadt-ZH-Praxis (UGZ)? →
   Tabellen fuer Personal (ArGV3), Publikum (35-150 Pers./Einheit), Betreuungsstaetten.
10. Gibt es neue, noch nicht erfasste PBG-Vorlagen? → **Denkmalschutz-PBG-Revision** (RRB
    02.07.2026 zuhanden Kantonsrat) neu gefunden und erfasst — bisher nicht in der KB.
11. Wie ist der aktuelle Stand der RPG-2-ZH-Umsetzung (Refresh)? → unveraendert, neu Kreisschreiben
    Mai 2026 als Vollzugshilfe bekannt.

## Neue/erweiterte Artikel

- **NEU [[energie-baueingabe-zusatzformulare]]** (Energie) — WTA-Formular, Formular S
  Schallschutznachweis Aussenlaerm, Gesuch Versickerung Regenwasser; Status `established`
  (mehrfach belegt aus Original-PDF + Web-Refresh).
- **NEU [[recht-norm-raumprogramm-referenzwerke]]** (Recht & Norm) — Raumpilot, WBS 2015,
  UGZ-Toilettenanlagen-Bemessung; Status `established`.
- **Erweitert [[recht-norm-quellenlandkarte]]** — zwei neue Abschnitte (Denkmalschutz-PBG-Revision,
  Laermschutz LSV-Vollzug), RPG-2-Refresh, Verlinkung neuer Artikel.
- **Erweitert [[energie-uebersicht]]** — Verlinkung neuer Artikel, D3-Entscheid dokumentiert.

## Verifikations-Stufe (Modell-D-Volltextabgleich, kein separater Agenten-Workflow noetig)

Alle Kennzahlen/Schwellenwerte stammen direkt aus dem Original-PDF (WTA-Formular, Versickerungs-
gesuch, UGZ-Merkblatt, WBS-Broschuere) — Volltext gelesen, keine Sekundaerquelle. Die zwei neuen
Web-Fakten (Denkmalschutz-PBG-Revision, LSV-Novelle 01.04.2026) wurden je durch eine gezielte
WebFetch-Zusammenfassung der Original-Medienmitteilung/Quellseite verifiziert (nicht nur aus der
Suchergebnis-Vorschau uebernommen). Kein Verdikt "beanstandet" — alle Aussagen bestehen den
Volltextabgleich. Status `established` vergeben, wo mehrfach/im Original belegt; `speculative`
nirgends noetig.

## Was als naechstes

- **Naechste Domaene laut Rotation:** Brandschutz (PL-03) — B5 (BSV 2026) faellig fuer Refresh-Check
  im August 2026 (politische Vernehmlassung), sonst PL-03 weitgehend gesaettigt; ggf. neue
  Arbeitshilfen-Unterordner pruefen.
- **Kartenportale:** ZH-Endpunkt fuer Naturgefahrenkarte (K10-Rest) weiterhin offen.
- **Recht & Norm:** Raumpilot-Kapitel "Wohnen" (S. 155-348) und WBS-Detailkriterien K1-K25 bei
  konkretem Bedarf vertiefen; Denkmalschutz-PBG-Kantonsratsbeschluss verfolgen.
- **Energie:** D5-Rest (installierter PV-System-CHF/kWp) bleibt offen bis reales JANS-Projekt mit
  PV-Schlussabrechnung anfaellt.
