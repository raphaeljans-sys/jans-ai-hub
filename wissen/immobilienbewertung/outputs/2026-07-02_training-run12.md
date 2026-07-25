# Training-Run 12 — 2026-07-02

Lern-Loop KB Immobilienbewertung (unbeaufsichtigt). Der Wuest-Kurs und alle lesbaren E-Quellen
sind seit Run 10 eingearbeitet; der Loop laeuft im **Vertiefungs-/Aktualisierungsmodus**. Dieser
Lauf hat den groessten noch offenen inhaltlichen Gap geschlossen — **T17 (Healthcare-Bewertung)** —
und die offenen Findings des Wissens-Health-Checks (01.07.) bereinigt.

## Die 10 Themen dieses Laufs

**Block A — Healthcare-Bewertungsbruecke (T17), aus der oeffentlichen Healthcare-Bibliothek**
(`IMMO-06/Healthcare/HEIM`; NICHT D8-freigabegebunden, da oeffentliche/Dritt-Dokumente):

1. **Herosé Erstellungskosten-Kennwerte** (Baukredit-Bericht Stadt Aarau, 13.12.2021): BKP-
   Anlagekosten 55.8 Mio, BKP 2 = **1'105 CHF/m3 GV / 3'848 CHF/m2 GF / 346'681 CHF/Zimmer** →
   `realwert-sachwert`.
2. **Vier-Heim-Vergleich** (Herosé/Suhrhard Buchs/Blumenrain Zollikon/Obere Muehle Lenzburg):
   **337-418k CHF Gebaeudekosten/Zimmer**, Hotellerietaxe 150-180 CHF/Tag → `realwert-sachwert`.
3. **Annuitaets-Finanzierungsmodell** (Herosé Tab. 9): lineare Abschreibung **33 Jahre** nach
   CURAVIVA-Handbuch Anlagebuchhaltung V2019, kalkulatorischer Zins = **BWO-Referenzzins 1.25 %**,
   Annuitaet/Bett/Tag 43.75 (Hotellerie) + 6.08 (Pflege) → `ertragswert-dcf`.
4. **Taxen-/Finanzierungsstruktur:** KVG-Abzug 6.812 Mio (z.L. Pflege) ↔ Investition z.L.
   Hotellerie 48.988 Mio; **Hotellerie-Taxe 120→153 CHF/Tag** (+33, marktgerechter Neubau-Tarif);
   Spezialfinanzierung ueber Investitionsfonds (keine Steuergelder) → `ertragswert-dcf`.
5. **ARTISET KVG-KoRe** (Betriebswirtschaftliche Instrumente, 17.04.2023): standardisierte Kosten-/
   Leistungsrechnung mit Kostentraegern LZP/ToNs/AUEP → belegt die Trennung Pflege (KVG) ↔
   Hotellerie/Betreuung (Bewohner) → `ertragswert-dcf`.
6. **Healthcare-Bewertungsbruecke** zum Skill `healthcare-wirtschaftlichkeit`: drei durable Regeln
   (Erstellungskosten +20-25 %, kostenbasierter Ertragswert via Annuitaet, Deliverable ueber
   Schwester-Skill) → `projektstruktur-deliverables`. Healthcare-Diskontzeile der D3-Tabelle von
   *emerging/Annahme* auf **Kosten-/Annuitaetsseite belegt** gehoben.

**Block B — Marktpuls-Refresh (Web, E7):**

7. **Marktpuls 02.07.2026:** SNB-Leitzins **0.00 %** (naechster Entscheid 09.2026), Referenzzins
   **1.25 %** (Durchschnitt 1.32 %, naechste Publikation 01.09.2026), SMG/Homegate-Mietindex
   **Mai-2026 133.7 (+2.5 % YoY)** juengster publizierter Stand, 10-j Eidgenoss **~0.35 %** — alle
   Anker unveraendert, kein Diskontsatz-Handlungsbedarf → `investorenmarkt-makro`, `datenquellen-registry`.

**Block C — Wissens-Health-Check Phase 2 (Findings vom 01.07.):**

8. **Run-11-Prozessleck** (Finding E) nachgetragen: `ertragswert-dcf` `last_updated` 30.06.→07-02,
   Run-11-Eintrag protokolliert, `outputs/2026-06-30_training-run11.md` angelegt.
9. **2 falsche Backlinks** (Finding B) korrigiert: `[[healthcare-wirtschaftlichkeit]]` → Skill-
   Klartext (`zh-wald-8636`, Frontmatter + 2x Body); `[[outputs/…]]` → Report-Klartext (`sz-wangen-8854`).
10. **Frontmatter/INDEX** (Finding F/G) vereinheitlicht: Thalwil `plz: 8136`→**8800**; `kanton:`
    Zuerich→**Zürich** (langnau, zollikon); INDEX `nutzungskonzepte` *emerging*→**established**.

## Was gelernt wurde (Kern)

- **Ein Pflegeheim-Ertragswert ist kostenbasiert**, nicht frei kapitalisiert: die nachhaltige
  Heimtaxe deckt die **Annuitaet** der Investition (33 J CURAVIVA / BWO-Referenzzins). Der reale
  Herosé-Fall verankert diese Annuitaetsseite mit echten Zahlen und bestaetigt die Methodik des
  Skills `healthcare-wirtschaftlichkeit`.
- **Healthcare-Erstellungskosten** liegen belegt bei **~3'850-4'000 CHF/m2 GF** — der Wohn-
  Basiskennwert +20-25 % (Installationsgrad/Ausbaustandard); das deckt sich mit dem WALD-Anker.
- Der D8-Freigabe-Vorbehalt betrifft nur die **JANS-internen DOCX-Kennwerte** — die oeffentlichen/
  Dritt-Dokumente der Healthcare-Bibliothek (Baukredit-Botschaften, Fachverbands-Publikationen)
  sind frei verwertbar und ein reicher, bisher ungenutzter Fundus.

## Naechste Schritte

- **T17-Rest:** realer Healthcare-**Verkaufs-/Fondsfall** fuer den Investoren-Markt-Diskont
  (Kapitalisierung der Betreiber-Miete beim Verkauf) — Bring-Schuld Raphael.
- **Ungelesen (kuenftige Laeufe):** Obsan-Bericht 03/2022, SenioResidenz-Geschaeftsbericht, weitere
  Healthcare-Businesscase-Dokumente in `IMMO-06/Healthcare/HEIM/Kennwerte…`.
- Marktpuls weiter laufend (naechster SREBI Q2-2026 ~09.2026, Referenzzins-Publikation 01.09.2026).
