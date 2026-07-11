---
title: Elektromobilität — Ladeinfrastruktur am Wohngebäude
status: established
last_updated: 2026-07-11
sources: [destillate/e-mobilitaet-ladeinfrastruktur-gebaeude-ch.md, destillate/wp-pv-eigenverbrauch-lastmanagement.md, destillate/batteriespeicher-heimspeicher-pv-ch.md, destillate/zev-eigenverbrauch-mfh-her-2025.md]
links: [[wp-pv-eigenverbrauch-lastmanagement]], [[pv-eigenverbrauch-zev]], [[batteriespeicher]], [[BAUHERREN-FAQ]]
---

# Elektromobilität — Ladeinfrastruktur am Wohngebäude

**Kern:** Wer ein Wohngebäude für Elektroautos rüstet, entscheidet nicht über eine einzelne Wallbox,
sondern über eine **Grunderschliessung**: einmal die Leitungen und das Lastmanagement für **alle**
Parkplätze legen, die einzelnen Ladestationen später nachrüsten. Das ist auf 20+ Jahre die
kostengünstige, zukunftssichere Lösung. Antwort für den Bauherrn: **FAQ F39** → `[[BAUHERREN-FAQ]]`.

## Grunderschliessung nach SIA 2060 (drei Stufen)
| Stufe | Bezeichnung | Inhalt |
|---|---|---|
| **C1** | «Power to Garage» / Grundinstallation | Erschliessung ab Hauptverteilung inkl. **Messung fürs Lastmanagement** + Trasse zum Parkplatz (z. B. Flachbandkabel) |
| **C2** | «Power to Parking» / Vorrüstung | Montageplatte/Anschlusspunkt am einzelnen Parkplatz |
| **D** | «Ready to charge» | Ladestation installiert und betriebsbereit |

→ **Empfehlung:** Stromversorgung + Datenverbindung für **alle** Parkplätze in einem Zug (C1/C2), damit
später jede Station ohne Bauarbeiten nachgerüstet werden kann. **Intelligente, ausbaufähige Anlage** ist
der Einzelplatzlösung in den meisten Fällen überlegen (Fehlinvestition vermeiden). Beim **Neubau**:
Ladestation oder mindestens deren Grundinstallation grundsätzlich empfohlen.

## Dynamisches Lastmanagement
- Ohne Steuerung würde gleichzeitiges Laden mehrerer Autos den **Hausanschluss überlasten**.
- **Dynamisches** Lastmanagement misst den momentanen Hausverbrauch und gibt den Ladepunkten nur die
  **gerade freie** Leistung → bestehender Anschluss reicht meist, teurer Ausbau entfällt.
- Standardstecker **Typ 2** (AC), üblich **11 kW** je Punkt (Bandbreite 1,4–22 kW). Ladestation via
  digitale Schnittstelle (i. d. R. **Modbus**) ans **EMS** angebunden, PV-optimiert gesteuert.

## Kopplung mit PV — das E-Auto als flexibler Tagesverbraucher
- E-Auto-Batterie **ca. 20–100 kWh**; von **Frühling bis Herbst bis zu 100 % aus PV** ladbar, tagsüber
  in die Sonne, bei Bedarf nachts günstig nachladen. Reihenfolge der Eigenverbrauchs-Hebel siehe
  `[[batteriespeicher]]`/`[[wp-pv-eigenverbrauch-lastmanagement]]` — das E-Auto ist der **flexibelste**
  Verbraucher, das EMS das Herzstück.
- **Kosten:** Ladestation gebäudeseitig **ab CHF 1'000** — die grosse «Batterie» liefert das Auto gratis
  mit, ungleich günstiger als ein stationärer Speicher (ab CHF 10'000 EFH / 20'000 MFH).
- **V2H/V2G** (Vehicle to Home/Grid, Rückspeisung ins Gebäude bzw. Netz): kommt «in naher Zukunft», heute
  noch nicht Standard — bei der Grunderschliessung mitdenken.

## Prozess, Rollen, Kostentragung
- Ablauf nach SIA-Phasen: **Vorstudie → Projektierung/Ausschreibung → Realisierung → Bewirtschaftung**,
  real **6–9 Monate** (min. 3). Grössere Projekte: **Fachbauleitung durch Elektroplaner**.
- Beteiligte: Eigentümer/Verwaltung, Elektroplaner/-installateur, Lieferant Ladelösung, Netzbetreiber;
  bei WP+PV der **Systemintegrator**.
- **Mietobjekt:** Investitionskosten über **Erhöhung der Parkplatzmiete** deckbar (nicht Wohnungsmiete).
- **STWEG:** Zustimmung/Kostentragung → Skill `stockwerkeigentum` (eigener EnergieSchweiz-Leitfaden
  «Ladeinfrastruktur im Stockwerkeigentum»).
- Elektrosicherheit: **NIV (SR 734.27)**.

## Offene Punkte
- Konkrete **CHF/kW** der Grunderschliessung je Parkplatz (objektabhängig, Elektroplaner-Offerte).
- **SIA 2060** kostenpflichtig — Stufen hier aus dem EnergieSchweiz-Leitfaden referiert.
- **Förderung** für Ladeinfrastruktur uneinheitlich → `[[energiefranken-foerder-suchmaschine-ch]]`.

**Backlinks:** `[[wp-pv-eigenverbrauch-lastmanagement]]` · `[[pv-eigenverbrauch-zev]]` ·
`[[batteriespeicher]]` · `[[e-mobilitaet-ladeinfrastruktur-gebaeude-ch]]` · `[[BAUHERREN-FAQ]]`
