# Wissens-Chef Run 14 — Cross-KB-Koordination

Datum: 2026-07-24 · Station: MacBook Pro (scheduled task `wissens-chef`) · Modus: gedrosselt (Rule 260714)
Methode: 5 parallele Lese-Agenten (regulaeres Agent-Tool, Hintergrund) + 1 adversarialer Verifikations-Agent.

## Geprueft (frischer Stoff seit Run 13, 23.07.)

| Paar/Feld | Anlass (neu seit Run 13) | Ergebnis |
|---|---|---|
| baurecht ↔ planungsgrundlagen | baurecht Buch-Run 51 (Anhang 6 LSV), pg Run 58 | 3 Cross-Links gesetzt + 1 needs-verification |
| normen ↔ baurecht | normen Run 19 (Meilenstein «SIA/VKF KOMPLETT», Destillate SIA 405/2056, tote Links) | Null Cross-KB; Scheinwiderspruch geklaert |
| energie ↔ planungsgrundlagen | energie Run 87 (FAQ F1–F116) | 1 Cross-Link; Private-Kontrolle-Trim weiter offen |
| grobkosten ↔ immobilienbewertung ↔ kostenschaetzung | grobkosten Struktur-Findings, immo Run 42 (Delta-Null) | Null (widerspruchsfrei, Guards intakt) |
| firmengruendung-ch ↔ immobilienbewertung / kunde-bopp (rotierend) | neue Artikel Steuern/Holding (24.07.) | Null Cross-KB; intra-KB-Hygiene notiert |

## Befunde (bestaetigt / widerlegt)

### 1. SIA-181-Scheinwiderspruch (normen ↔ baurecht) — AUFGELOEST, kein Handlungsbedarf
Der vom Health-Check am 24.07. gemeldete Konflikt «normen Run-19-Meilenstein *SIA/VKF komplett* vs. offener
Bring-Schuld-Posten *SIA 181:2020 re-destillieren*» ist **kein Sachwiderspruch**:
- SIA 181 ist im norm-inventar als **P2** gefuehrt (`training/norm-inventar.md:74`), nicht Teil des P1-Kerns.
- SIA 181:2020 liegt **nicht im JANS-Bestand** (nur 2006 + alt 1988); die 2020er-Ausgabe ist eine kostenpflichtige
  Bring-Schuld (Norm-Kauf), die gar nicht destilliert werden kann.
- «Komplett» meint die Vertiefungs-Abdeckung (Stufen a–d) der **vorhandenen Bestandsdateien** (inkl. SIA 181:2006).
- Die normen-KB hat den Punkt **am selben Tag im eigenen Health-Check-Eintrag** korrekt verdiktet, samt Empfehlung,
  kuenftige Meilensteine als «Bestand komplett» statt «komplett» zu formulieren.
- Verdikt Run 14: reiner Formulierungspunkt, KB-intern bereits adressiert. **Kein Cross-KB-Eingriff.**

### 2. Laerm/ES-Rollen-Link baurecht ↔ pg — FEHLTE, gesetzt (bidirektional)
Frischer Buch-Run-51-Stoff (Anhang 6 LSV) machte sichtbar, dass der Laerm/ES-Artikel keinen reziproken Link
zur pg-Beschaffungsseite (GIS-Layer 0154) hatte — anders als das vorbildliche Abstaende-Muster. Gesetzt:
- baurecht `laermschutz-und-nichtionisierende-strahlung` → pg `kartenportale-zonenplan-zh` (Beschaffung dort fuehrend).
- pg `kartenportale-zonenplan-zh` (Layer-0154-Sektion) → baurecht (Recht/ES-Grenzwerte hier fuehrend).
- pg `energie-baueingabe-zusatzformulare` (milde ES-Definition-Doppelspur) → baurecht Recht-fuehrend-Rueckverweis.

### 3. LSV-Novelle 01.04.2026 vs. Anhang 3/4/6 — adversarial verifiziert → UNBESTIMMT (Entlastungstendenz)
pg fuehrt einen ⚠-Vorbehalt «USG/LSV per 01.04.2026 geaendert» (Sekundaerquelle bauen-im-laerm.ch), baurecht haelt
die ES-Belastungsgrenzwerte (Anhang 3/4/6) Fedlex-Konsolidierung Stand 1.11.2023 volltextverifiziert.
Adversarialer Verifier:
- pg **behauptet nicht**, dass die ES-Grenzwerttabellen geaendert wurden — es bestaetigt im Gegenteil deren
  Fortbestand (ES I–IV bleiben Bezugsgroesse) und markiert die konkreten Aenderungen selbst als ungeklaert.
- Nicht hart widerlegt, weil die Fedlex-Beschaffung das Datumssegment `20231101` fest verdrahtet (Rule 260721):
  der Abruf beweist nur, dass die 1.11.2023-Fassung damals galt, nicht dass keine neuere existiert.
- **Verdikt: UNBESTIMMT.** baurecht NICHT als veraltet markiert; stattdessen needs-verification in
  `baurecht/wiki/QUESTIONS.md` — an der Fedlex-Versionszeitleiste SR 814.41 klaeren, ob eine Konsolidierung
  `20260401` die Anhaenge 3/4/6 (Grenzwerte) oder nur Art. 31 ff. (Verfahren) beruehrt. Bis dahin established-Werte gueltig.

### 4. Kennwert-Feld (grobkosten/immo/kostenschaetzung) — Null, widerspruchsfrei
Alle geteilten Ankerwerte KB-uebergreifend identisch (4'800 / 4'360 CHF/m² HNF, ~1'020 CHF/m³ GV, HNF/GF-Faktor
0,70/0,60–0,61, Ebmatingen ~855 CHF/m³). Verweise bidirektional intakt, Rollen-Matrix eingehalten, Doppelzaehlungs-
Guard (Run 4) intakt. Einzige Notiz: grobkosten-**interne** Kopplungsformulierung (`kennwerte.md:21` vs. `:37-38`,
0,70 vs. 0,60) — niederprioritaer, KB-intern, kein Cross-KB-Befund.

### 5. firmengruendung-ch ↔ immobilienbewertung — Null Cross-KB (erste Cross-Pruefung)
Verschiedene Domaenen; immobilienbewertung schliesst Grundstueckgewinnsteuer bewusst aus (`residualwertmethode.md:288`).
Der Holding-Artikel verdiktet eine Holding fuer die reale JANS AG aktuell ohne Mehrwert; der JANS-AG-Namensblocker ist
separat als Namensrecht-Lesson erfasst (`ag-gruendungsablauf`), kein Holding-Thema. Intra-KB-Linkhygiene (Ruecklinks
auf `steuern-bei-gruendung`, Frontmatter `holding-struktur`) notiert, aber **nicht autonom editiert** — firmengruendung-ch
hat einen eigenen Nacht-Loop (Kollisionsschutz Rule 260724); an diesen Loop delegiert.

## Ausgefuehrte Aktionen (6, alle additiv — keine Loeschung, kein Trim)

| KB | Datei | Aktion |
|---|---|---|
| baurecht | `wiki/laermschutz-und-nichtionisierende-strahlung.md` | Querbezug-Block → pg (Beschaffung/Layer 0154) |
| baurecht | `wiki/QUESTIONS.md` | needs-verification: LSV-Novelle 01.04.2026 vs. Anhang 3/4/6 |
| planungsgrundlagen | `wiki/kartenportale-zonenplan-zh.md` | Rueckverweis → baurecht (Recht/ES fuehrend) |
| planungsgrundlagen | `wiki/energie-baueingabe-zusatzformulare.md` | ES-Doppelspur → baurecht Recht-fuehrend-Rueckverweis |
| energie | `wiki/BAUHERREN-FAQ.md` (F116) | Querbezug → pg `energie-energienachweis-zh-formulare` (EN-104) |
| — | Register | 3 KB-CHANGELOGs + QUERBEZUEGE (5 Paare) + koordination/CHANGELOG |

## Offene Punkte (kein neuer Entscheid fuer Raphael noetig — vorgemerkt/Loop)

1. **LSV-Novelle 01.04.2026 vs. Anhang 3/4/6** — amtliche Fedlex-Verifikation (SR 814.41, Segment `20260401`)
   ausstehend; needs-verification gesetzt. Loop-/Web-Arbeit.
2. **Private-Kontrolle-Trim energie ↔ pg** — WEITER OFFEN (seit Run 11). Das energie-Destillat `private-kontrolle-zh.md`
   fuehrt trotz «pg fuehrend»-Note die volle Verfahrens-Substanz im Body. Trim ist destruktiv/umstrukturierend →
   Entscheid Raphael. **Einziger substanzieller Struktur-Punkt, der eine Freigabe braucht.**
3. **firmengruendung-ch intra-KB-Linkhygiene** — an den KB-eigenen Nacht-Loop delegiert.
4. **grobkosten-interne 0,70/0,60-Kopplungsformulierung** — niederprioritaer, KB-intern.
5. **Umlaut-Config-Bug** (ASCII ae/oe/ue in Haiku/Sonnet-Subagenten-Outputs) — unveraendert getrackt, Config-Sache
   (Whitelist-verboten), fuer hub-chef/Raphael. Hier nur registriert (keine Doppelmeldung).

## Bewertung

Ruhiger Lauf: kein bestaetigter materieller Sachwiderspruch. Der einzige gemeldete Verdacht (LSV) verifizierte
sich als UNBESTIMMT und wurde regelkonform als needs-verification dokumentiert statt geraten. 6 additive Cross-Links
schliessen die frische Run-51-Laerm/ES-Luecke und die Run-87-EN-104-Luecke. Der Health-Check-Befund (SIA 181) loeste
sich als Scheinwiderspruch auf. Ein offener Trim (Private Kontrolle) bleibt fuer Raphael vorgemerkt.
