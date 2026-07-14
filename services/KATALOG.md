# JANS Service-Katalog — produktisierte Dienstleistungen

> Die vier trainierten Studien-/Bauleitungs-Services des Hub als Kunden-Deliverables auf
> Knopfdruck. Jeder Service startet mit EINEM Befehl; der Hub orchestriert die Pipeline,
> QS laeuft immer ueber `korrektur` + `twin`, Ablage nach `dateinamen-konvention` in
> `30 JANS AI HUB OUTPUT/` + Projektordner. Preise/Honorar setzt Raphael (Hinweis:
> Skill `honorarberechnung-sia102` fuer die Offerte).
>
> Autorisiert: Raphael Jans, 02.07.2026 (Spec Hub-Chef-Harness). Der Skill `hub-chef` prueft
> eingehende Anfragen gegen diesen Katalog und schlaegt das passende Paket samt Startbefehl vor.

## S1 — Machbarkeits-Studio (interaktiv)

- **Deliverable:** selbst-tragendes HTML-Live-Studio (Regler: Kennwert/Preis/Mietzins/Marge/
  Diskont, Residualwert live je Variante) + ablagefertiges Dossier (DOCX/PDF), auf Wunsch
  gehostet als privater Link (Hostpoint, `scripts/deploy-studio.sh`).
- **Pipeline:** `planungsgrundlagen` (EGRID/OEREB/Kataster) → `machbarkeit` (Baufeld/Volumen/
  Baurecht) → `volumenstudie` (3D/Renderings) → `grobkosten-onepager` (Kennwerte) →
  `machbarkeit-studio` (Studio+Dossier) · Wertkontrolle `immobilienbewertung`.
- **Kunden-Input:** Adresse/Parzelle, Absicht (Verkauf/Rendite), ggf. Varianten-Wuensche.
- **Startbefehl:** `Machbarkeits-Studio fuer <Adresse/Parzelle>, Varianten <...>`
- **Durchlaufzeit:** 1 Arbeitstag (inkl. Geodaten + Renderings).

## S2 — Immobilienbewertung (Verkehrs-/Marktwert)

- **Deliverable:** Bewertungsbericht DOCX+PDF (LB/MA/RW/CS) — Realwert, Ertragswert/DCF,
  Vergleichswert, Synthese Marktwert; bei Entwicklung Landwert via Residual.
- **Pipeline:** Skill `immobilienbewertung` mit Fan-out `realwert-rechner` /
  `ertragswert-rechner` / `vergleichswert-analyst`; KB `wissen/immobilienbewertung/`
  (2-Tage-Training laeuft).
- **Kunden-Input:** Objekt (Adresse), Mietertragslage falls vorhanden, Zweck der Bewertung.
- **Startbefehl:** `Immobilienbewertung fuer <Objekt>, Zweck <Verkauf/Finanzierung/Ankauf>`
- **Durchlaufzeit:** 1–2 Arbeitstage.

## S3 — Ankaufspruefung / TDD

- **Deliverable:** TDD-Bericht nach Goldstandard 2513 BAAR: Bauherren-Fragenkatalog,
  BKP-Massnahmen mit 3-Ampel, Restnutzungsdauer, CapEx-Fahrplan 10 Jahre; kombinierbar mit
  S2 zum **Ankaufs-Paket** (Zustand + Wert).
- **Pipeline:** Skill `ankaufspruefung` · nutzt `kostenschaetzung`, `baurecht`
  (+ `dienstbarkeiten-pruefer`), `brandschutz`; Grundlagen via `planungsgrundlagen`.
- **Kunden-Input:** Objekt, verfuegbare Unterlagen (Plaene, Zustandsberichte), Besichtigung.
- **Startbefehl:** `Ankaufspruefung fuer <Objekt>` (Zusatz: `mit Bewertung` fuer das Paket)
- **Durchlaufzeit:** 2–3 Arbeitstage nach Unterlagen/Besichtigung.

## S4 — Bauleitungs-Backend (Phasen G–I, auch fuer Dritte)

- **Deliverable:** durchgehender Bauleitungs-Service: LV/Devis + Submittenten-Shortlist +
  Versand → Werkvertrag SIA 118 (3 Verguetungsmodelle) → Unternehmerkontrolle (Ausmass/
  Akonto/Nachtrag/Abnahme/Maengel) → Kostenkontrolle (Baubuchhaltung, Kostenrapporte,
  Schlussabrechnung, Garantieverfalldaten).
- **Pipeline:** `unternehmerfindung` → `ausschreibung` → `offertenpruefung` → `werkvertrag`
  → `unternehmerkontrolle` → `kostenkontrolle`; Stammdaten `ausschreibung/anbieter/`.
- **Kunden-Input:** Projekt, Gewerke/BKP, Terminrahmen, Plangrundlagen.
- **Startbefehl:** je Stufe, z.B. `Ausschreibung <Gewerk/BKP> fuer Projekt <Nr>` oder
  `Kostenrapport Projekt <Nr>`
- **Durchlaufzeit:** projektbegleitend; einzelne Stufen 0.5–2 Arbeitstage.

## S5 — Wettbewerbs-Fabrik

- **Deliverable:** (a) eigene Wettbewerbsteilnahmen skaliert: Programm-Extraktion,
  Raumprogramm-/Flaechen-Nachweis SIA 416 (Soll/Ist-Ampel), Erlaeuterungsbericht,
  Konzept-Schemas, Plakat-Geruest, Situationsmodell-STL + Abgabe-Checkliste, gezogen
  durch die Konformitaets-Schleife bis erfuellt (Parti bleibt Human Gate bei Raphael);
  (b) Zulieferung fuer Partnerbueros: Flaechennachweis + Programm-Konformitaetspruefung
  als diskrete Dienstleistung (ohne eigenen Entwurfsanspruch, anonymitaetswahrend).
- **Pipeline:** Skill `wettbewerb` (Fan-out programm-leser / flaechen-nachweis /
  programm-pruefer / bericht-autor / schema-zeichner / plakat-setzer) · `volumenstudie`
  (3D/STL) · `planungsgrundlagen` (Geodaten) · `grobkosten-onepager` (Kennzahl);
  typologische Basis KB `wissen/wettbewerbs-dna/` + `wissen/entwurfs-referenzen/`.
- **Kunden-Input:** Wettbewerbsprogramm-PDF (+ Beilagen); bei Zulieferung: Projektstand
  des Partnerbueros (Plaene/Flaechentabelle).
- **Startbefehl:** `Wettbewerb <Name> aufsetzen` bzw. `Flaechennachweis/Konformitaetspruefung
  fuer <Wettbewerb> (Zulieferung)`
- **Durchlaufzeit:** Geruest + Nachweise 1–2 Arbeitstage nach Programm; projektbegleitend
  bis Abgabe. Aktiviert: 15.07.2026 (Synergie-Lauf 01, SYN-03).

## S6 — Energie-Vorabklaerung

- **Deliverable:** belegtes Energie-Factsheet zu Objekt/Parzelle: PV-/Solar-Eignung
  (Indach/Ziegel/transparent/Fassade/Aufdach), U-Wert-/Bauteil-Einschaetzung (SIA 380/1),
  Energienachweis-Vorpruefung + ZH-Baueingabe-Energieformulare-Fahrplan, Bauherren-
  Antworten aus der FAQ (jede Aussage mit Quelle). DOCX+PDF; auch als Add-on zu S1/S3.
- **Pipeline:** Agent `energie-berater` (PL-04) · KB `wissen/energie/` (Destillate +
  BAUHERREN-FAQ) · Grundlagen via `planungsgrundlagen` (`geo-zh.mjs`).
- **Kunden-Input:** Adresse/Parzelle, Gebaeudedaten (Baujahr, Nutzung), Absicht
  (Neubau/Sanierung/PV), vorhandene Unterlagen.
- **Startbefehl:** `Energie-Vorabklaerung fuer <Objekt/Adresse>` (Zusatz: `als Add-on zu
  <S1/S3-Auftrag>`)
- **Durchlaufzeit:** 0.5–1 Arbeitstag. Aktiviert: 15.07.2026 (Synergie-Lauf 01, SYN-07).
