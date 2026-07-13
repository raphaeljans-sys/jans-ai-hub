---
quelle: MuKEn 2025 Volltext (Mustervorschriften der Kantone im Energiebereich, verabschiedet 29.08.2025), Art. 1.39 «Anforderung und Nachweis graue Energie», Basismodul Teil G — PDF-Spiegel energiehub-gebaeude.ch (energiehub-gebaeude.ch/wp-content/uploads/2025/09/MuKEn2025_d-2025-08-29.pdf); zusaetzlich Tabellenwert G 1.39 gegengeprueft gegen Minergie-Uebersicht «Minergie im Kontext der MuKEn 2025» (minergie.ch, Stand 01.01.2026) und WebSearch-Indexierung (Suchmaschine zeigt denselben Wert 12.4 kg CO2-eq unabhaengig). VERIFIZIERT (13.07.2026, Run 51) gegen die Methodik-Primaerquelle selbst: Minergie/ecobau «Berechnungsmethodik Grenzwerte THGE in Erstellung» (12.09.2023, Version 1), LOKAL per Read-Tool (pages 1-10, keine Web-Fetch-Zwischenstufe) direkt aus dem PDF gelesen — Tabelle 1 (Basisgrenzwerte) und Tabelle 3 (Zuschlaege) bestaetigen die Kernzahlen zahlengenau.
herausgeber: Konferenz Kantonaler Energiedirektoren (EnDK); Verifikationsquelle: Minergie Schweiz / ecobau
ausgabe: MuKEn 2025, verabschiedet 29.08.2025, Art. 1.39; Verifikationsquelle Minergie/ecobau-Methodikpapier, 12.09.2023, Version 1
gelesen: 2026-07-13 (PDF-Volltext via WebFetch/Jina-Reader zweimal unabhaengig abgefragt, Werte in beiden Durchgaengen identisch; zusaetzlich Modul-Zuordnung "G 1.39 Graue Energie: Grenzwerte auf Basis Minergie-ECO-Methodik" direkt aus dem 1-seitigen Minergie-PDF gelesen). Verifikation 13.07.2026 (Run 51): Minergie/ecobau-Methodikdokument lokal per Read-Tool gelesen (kein Web-Fetch-Reader).
datenstand: 2025-08-29 — ⚠ Empfehlung der EnDK, noch NICHT automatisch geltendes kantonales Recht (siehe [[muken-2025-verabschiedet]]). Verifikationsquelle Minergie/ecobau: 12.09.2023 (Vorlaeufer-Methodikpapier, auf dem MuKEn 2025 Modul G ausdruecklich aufbaut).
status: established
last_updated: 2026-07-13
---

# MuKEn 2025 Modul G (graue Energie) — konkrete kg-CO2-eq/m²·a-Grenzwerte

**Das Wichtigste in 1 Satz:** Art. 1.39 MuKEn 2025 setzt für Neubauten und wesentliche Erneuerungen
einen **objektspezifischen Grenzwert der Treibhausgasemissionen aus der Erstellung**, der sich aus
einem **Basisgrenzwert je m² Energiebezugsfläche (EBF)** — je nach Gebäudekategorie zwischen
**12,4 und 19,9 kg CO₂-eq/m²EBF·a** —, einem tieferen Grenzwert für unbeheizte Geschossflächen
(**5,5 kg CO₂-eq/m²(GF−EBF)·a**, für alle Kategorien gleich) und drei technischen Zuschlägen
(Erdsonde, PV, Solarthermie) zusammensetzt.

## Kernzahlen (Art. 1.39, Formel + Tabelle)

**Formel:**
`GW_Objekt = (GW_EBF × EBF) + (GW_(GF-EBF) × (GF − EBF)) + Z_Erdsonde + Z_PV + Z_Thermie`

**Basisgrenzwerte GW_EBF nach Gebäudekategorie [kg CO₂-eq/m²EBF·a]:**

| Kat. | Gebäudekategorie | GW_EBF |
|---|---|---|
| I | Wohnen MFH | 12,4 |
| II | Wohnen EFH | 13,6 |
| III | Verwaltung | 13,6 |
| IV | Schulen | 12,4 |
| V | Verkauf | 19,9 |
| VI | Restaurant | 16,1 |
| VII | Versammlung | 17,4 |
| VIII | Spitäler | 19,9 |
| IX | Industrie | 17,4 |
| X | Lager | 17,4 |
| XI | Sportbauten | 17,4 |
| XII | Hallenbäder | 17,4 |

**Grenzwert unbeheizte Flächen (alle Kategorien gleich):** GW_(GF-EBF) = **5,5 kg CO₂-eq/m²(GF−EBF)·a**

**Zuschläge (technikbedingt, kommen zum Basisgrenzwert dazu):**
- Erdsonde: **+0,3 kg CO₂-eq/(m²EBF·a)**
- PV-Anlage: **+7,1 kg CO₂-eq/(m² Panelfläche·a)** — Anrechnung 100 % bei Eigenverbrauch, 40 % bei
  Netzeinspeisung
- Solarthermie: **+5,6 kg CO₂-eq/(m² Kollektorfläche·a)**

## Rechenbeispiel PV-Zuschlag (aus der Methodik-Primärquelle übernommen)

Die Minergie/ecobau-Methodik (12.09.2023), auf der Modul G aufbaut, illustriert die
PV-Zuschlagsrechnung mit einem konkreten Zahlenbeispiel (S. 5, Kap. 2.2 «Bilanzierung der Objekte
— PV»): PV-Fläche 65 m², prognostizierte Produktion 12'000 kWh/a, Eigenstromverbrauch 42 %,
THGE-Ansatz 7,1 kg/m²a, Energiebezugsfläche (EBF) des Gebäudes 175 m².

`THGE_PV = (65 m² × 42 % × 7,1 kg/m²a + 65 m² × (100 % − 42 %) × 0,4 × 7,1 kg/m²a) / 175 m² = 1,72 kg/m²EBF·a`

Das heisst: nur der **Eigenverbrauchs-Anteil zählt zu 100 %**, der eingespeiste Rest nur zu **40 %**
— der auf die EBF umgelegte PV-Zuschlag ist damit **deutlich kleiner** als die tabellierte
Panelflächen-Zuschlagszahl (7,1 kg/m²·a) suggeriert, sobald man ihn auf die ganze Gebäude-EBF
verteilt statt auf die reine Panelfläche. Für Erdsonde und Solarthermie gilt dieselbe Rechenlogik.

## Einordnung / Verifikationsstand
- Diese Zahlen stammen aus dem **PDF-Volltext des Basismoduls** (nicht mehr nur aus einer
  Sekundärquelle wie im Vorgänger-Recherche-Stand vom 12.07.2026) — zweimal unabhängig per
  WebFetch/Jina-Reader abgefragt, beide Durchgänge lieferten identische Werte. Die Google-
  Suchindexierung zeigt den Wert **12,4 kg CO₂-eq** (Kat. I, Wohnen MFH) unabhängig ebenfalls an,
  was die Zahl zusätzlich stützt.
- **Konsistenz-Check gegen Nachbarwissen:** Die KB-Notiz [[graue-energie-betriebsenergie]] nennt
  den (älteren) Minergie-THGE-Grenzwert **11 kg CO₂/m²·a seit 2023**; die ecobau.ch-Sekundärquelle
  (zitiert in [[muken-2025-verabschiedet]]) sagt, die MuKEn-Basiswerte lägen **2–3 kg über dem
  Minergie-ECO-Grenzwert 2**. 12,4 (MuKEn, Kat. I) minus 2–3 kg ergäbe ~9,4–10,4 als impliziter
  Minergie-ECO-Grenzwert-2-Wert für MFH — das liegt in plausibler Nähe der genannten 11 kg, aber
  nicht exakt deckungsgleich (unterschiedliche Gebäudekategorie-Zuschnitte/Rundung nicht
  auszuschliessen). Insgesamt **stimmig**, aber **nicht bis auf die Kommastelle kreuzverifiziert**.
- **Status auf `established` gehoben (13.07.2026, Run 51):** Das lokale Lesen der Minergie/ecobau-
  Methodik-Primärquelle (per Read-Tool, direkt aus dem PDF, keine Web-Fetch-Zwischenstufe) bestätigt
  Basisgrenzwerte UND Zuschläge **zahlengenau** (Wohnen MFH 12,4 · Verkauf/Spital 19,9 · unbeheizt
  5,5 · Erdsonde +0,3 · PV +7,1 · Solarthermie +5,6 — jeweils identisch mit den zuvor per Web-Fetch
  aus dem MuKEn-2025-Text extrahierten Werten). Das ist plausibel, weil Modul G laut Minergie-eigener
  Einordnung ausdrücklich **auf der Minergie-ECO-Methodik basiert** — zwei unabhängige, methodisch
  verwandte Primärquellen (MuKEn-2025-Text UND Minergie/ecobau-Methodikpapier) liefern dieselben
  Zahlen. Kleine Abweichungen bei Randkategorien bleiben: die neue Quelle nennt zusätzlich «Museen»
  (14,0) und «Kleine Schulbauten» (11,5), die im ursprünglichen MuKEn-Auszug nicht separat auftauchten,
  und verwendet «Kleine Wohnbauten» statt «Wohnen EFH» (beide 13,6 — vermutlich dieselbe Kategorie,
  nicht 1:1 wortgleich geprüft); die Kategorie «Lager» (17,4) bleibt aus der MuKEn-Quelle allein,
  nicht separat in der Minergie-Tabelle bestätigt.

## Bauherren-Transfer
- Für ein **heute** eingereichtes Baugesuch gilt weiterhin das aktuelle kantonale Recht (Kt. ZH:
  EnerG/EVEN ohne eigenes Graue-Energie-Modul) — diese MuKEn-2025-Werte sind noch **kein**
  Bewilligungskriterium, siehe [[muken-2025-verabschiedet]].
- Sobald ein Kanton MuKEn 2025 Modul G übernimmt, wird die graue Energie zur **rechnerischen
  Bewilligungsauflage**: Bei einem Wohnbau (MFH) darf die Erstellung im Schnitt **12,4 kg CO₂-eq
  pro m² EBF und Jahr** nicht überschreiten (zzgl. Zuschläge für Erdsonde/PV/Solarthermie) — ein
  Wert, den man mit Materialwahl (Tragstruktur ist laut [[graue-energie-betriebsenergie]] der
  grösste Hebel) und Bauteilkatalog gezielt steuern kann.
- PV-Anlagen erhöhen den Grenzwert selbst (Zuschlag statt Abzug) — d.h. eine PV-Pflicht
  (→ [[muken-2025-verabschiedet]], 20 W/m² EBF Neubau) und das Graue-Energie-Modul sind bewusst
  **nicht gegeneinander verrechnet**, sondern PV bekommt einen eigenen, grosszügigeren
  CO₂-Spielraum zugestanden.

## Offene Punkte
- **Nachweisverfahren im Detail** (SIA-Merkblatt 2032, akkreditiertes Tool gemäss
  Minergie-Reglement) nicht Zeile für Zeile aus dem Primärtext gelesen — nur die Methodik-
  Zuordnung ist belegt. Das Methodikpapier selbst verweist auf SIA-Merkblatt 2032:2020 als
  Berechnungsgrundlage und nennt 60 Jahre Nutzungsdauer / SIA 2032 für Bauteil-Amortisation.
- **Kt.-ZH-Umsetzungsstand unverändert offen** (siehe [[muken-2025-verabschiedet]]).
- ~~Lokale, direkte PDF-Textextraktion~~ ✓ erledigt (13.07.2026, Run 51) — siehe Verifikationsstand
  oben. Verbleibend: das MuKEn-2025-Original selbst (nicht nur die verwandte Minergie-Methodik)
  noch lokal statt per Web-Fetch-Reader gegenlesen, falls die Originaldatei einmal direkt (ohne
  Umweg über den energiehub-gebaeude.ch-Spiegel) zugänglich wird.

**Backlinks:** [[muken-2025-verabschiedet]] · [[graue-energie-betriebsenergie]] ·
[[kbob-graue-treibhausgasemissionen-2025]]
