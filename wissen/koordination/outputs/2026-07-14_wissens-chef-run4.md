# Wissens-Chef Run 4 — Cross-KB-Konsistenz

Datum: 2026-07-14 · Lauf: gedrosselt (Rule 260714, Wochenlimit-Schonung) · Autonomie:
active-with-flagging.

## Auftrag & Vorgehen

Fokus-Lauf auf den seit dem letzten Koordinationscheck (Run 3, 2026-07-13) **neu gewachsenen**
Stoff — statt aller Paare gezielt die 3 ueberschneidungsgefaehrdeten Nahtstellen:

- **planungsgrundlagen Run 48** — neues VKF-Primaerdokument «Normkonzept BSV 2026» (170 S.).
- **energie Run 69** — vier neue Themenkomplexe (SIA 2024 Gesundheitsbau, Netzverstaerkung
  PV/E-Mobilitaet, Fernwaerme-Kosten, Netto-Null).

3 parallele Lese-Agenten (Fan-out), danach externe Verifikation der Editions-Befunde via
WebSearch am SIA-Shop.

## Befunde (bestaetigt) und Aktionen

### 1. normen ↔ energie — 2 Ausgaben-Divergenzen (fuehrender KB ueberholt)

| Norm | normen (fuehrend) | energie | Verifikation |
|---|---|---|---|
| SIA 2024 | REGISTER Z.266: **2006** | **2024:2021** (inkl. C1:2024) | SIA-Shop: 2024:2021 ersetzt 2015, gueltig ab 1.12.2021 ✓ |
| SIA 382/1 | REGISTER Z.464: **2014** | **382/1:2025** | SIA-Shop: 382/1:2025 ersetzt 2014, in Kraft seit 1.2.2025 ✓ |

energie recherchiert in Run 69 die aktuellen Ausgaben; der fuehrende KB normen bleibt auf dem
Register-Stand 2006/2014. Kein inhaltlicher Widerspruch der Kennwerte, reine Ausgaben-Aktualitaet.

**Aktion (direkt):**
- 2 «⚠ neuere Ausgabe»-Flags in `normen/wiki/REGISTER.md` (Z.266 + Z.464), Format analog dem
  SIA-181:2020-Flag aus Run 3, mit Quelle SIA-Shop.
- 3 «Querbezug KB normen»-Bloecke in energie: `destillate/sia-2024-nutzungsdaten-gesundheitsbau`,
  `destillate/sia-2024-nutzungsrandbedingungen-gesundheitsbau`, `destillate/komfortlueftung-wrg-sia382-luftwechsel`
  (weisen normen als fuehrende Fundstelle + die Ausgaben-Diskrepanz aus).

**Offen (Bring-Schuld normen-Loop, nicht autonom):** Re-Destillate SIA 2024:2021 + SIA 382/1:2025
(kostenpflichtiger Volltext im SIA-Shop).

*Zu verifizieren (benigne):* energie zitiert «SIA 384/2 Heizlast» als eine SIA-2024-Herleitungsquelle;
normen fuehrt SIA 384/2 als zurueckgezogen (aktuell SIA 384.201:2017). Es ist eine historische
Herleitungs-Zitierung, kein Aktualitaets-Claim von energie — kein Eingriff.

### 2. normen ↔ planungsgrundlagen — Fuehrung in der falschen KB (Normkonzept BSV 2026)

0 Sachwidersprueche (BSV 2015 = geltend, BSV 2026 = Zukunft/~2027; RF-/EI-Klassen deckungsgleich).
Neubefund: der neue §1a in `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` (Z.137ff, Run 48)
fuehrt das VKF-Primaerdokument «Normkonzept BSV 2026» (38 Eckpunkte) materiell und unverlinkt.
Laut Rule `normen-referenz` ist normen fuehrend — hat die PDF beschafft, aber **kein Destillat**.

**Aktion (direkt):** «Querbezug KB normen»-Block in §1a gesetzt (Fuehrung + Trim-Hinweis).

**Offen (heikel, nicht autonom):** normen destilliert das Normkonzept → dann §1a auf das
Planungs-/Bewilligungs-Framing kuerzen und ins normen-Destillat verlinken (Trim = groessere
Umstrukturierung, bewusst nicht selbst entschieden).

### 3. energie ↔ grobkosten ↔ immobilienbewertung — sauber getrennt

0 Widerspruch, 0 Doppelspur. energie fuehrt Komponenten-/Betriebskosten (CHF/kWp, Fernwaerme-
Anschluss, Rp/kWh), grobkosten/immo die aggregierten Erstellungskennwerte (CHF/m3 GV BKP 1-5 /
BKP-2-Anteile) — verschiedene Metrik-Ebenen. Einziges Risiko: **latente Doppelzaehlung**, wenn
ein energie-Komponentenwert additiv auf ein Aggregat gerechnet wird (die Komponenten sind
BKP-23/24/25 und stecken bereits drin).

**Aktion (direkt):** bidirektionale «nicht additiv»-Querbezuege gesetzt —
`grobkosten/wiki/kennwerte` + `immobilienbewertung/wiki/realwert-sachwert` → energie;
`energie/destillate/fernwaerme-anschlusskosten-zh` + `pv-marktzahlen-kosten-ch-2025` →
grobkosten/immo. **Bereinigt.**

## Offene Entscheide fuer Raphael

**Keine.** Alle Befunde autonom bereinigt oder als Loop-Bring-Schuld geflaggt. Drei offene
Punkte gehen an die jeweiligen Trainings-Loops (kein Raphael-Entscheid noetig):
1. normen: Re-Destillat SIA 2024:2021.
2. normen: Re-Destillat SIA 382/1:2025.
3. normen → planungsgrundlagen: Normkonzept BSV 2026 destillieren, dann §1a-Trim in planungsgrundlagen.

## Geaenderte Dateien

- `normen/wiki/REGISTER.md` (2 Flags) + `normen/CHANGELOG.md`
- `energie/destillate/{sia-2024-nutzungsdaten-gesundheitsbau, sia-2024-nutzungsrandbedingungen-gesundheitsbau,
  komfortlueftung-wrg-sia382-luftwechsel, fernwaerme-anschlusskosten-zh, pv-marktzahlen-kosten-ch-2025}.md`
  + `energie/CHANGELOG.md`
- `grobkosten/wiki/kennwerte.md` + `grobkosten/CHANGELOG.md`
- `immobilienbewertung/wiki/realwert-sachwert.md` + `immobilienbewertung/CHANGELOG.md`
- `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` + `planungsgrundlagen/CHANGELOG.md`
- `koordination/{QUERBEZUEGE.md, CHANGELOG.md}` + dieser Bericht.
