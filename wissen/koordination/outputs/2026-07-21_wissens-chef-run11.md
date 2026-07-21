# Wissens-Chef Run 11 — Cross-KB-Konsistenzlauf (2026-07-21)

Gedrosselter Lauf (Rule 260714). 5 parallele Lese-Agenten über das reguläre Agent-Tool
(Workflow-Tool headless weiter nicht nutzbar, wie Run 10). 1 gemeldeter materieller Widerspruch
→ 1 adversarialer Verifier. Fokus: frischer Stoff seit Run 10 (baurecht Buch-Run 50, normen
Audit-B, energie Run 83, Zulauf wettbewerbs-dna B5 → entwurfs-referenzen).

## Geprüfte Paare (5)

| Paar | Widerspruch | Aktion |
|---|---|---|
| baurecht ↔ energie (BVV-Meldeverfahren, Bring-Schuld) | 0 (verifiziert am raw) | Bring-Schuld bestätigt geschlossen; Titel-Fix; 1 Struktur-Punkt |
| normen ↔ baurecht (Norm-Fundstellen) | 1 → TEILWEISE (präzisiert) | SIA-500 präzisiert + Kennwert-Flag; 3 Norm-Links |
| energie ↔ planungsgrundlagen (Private Kontrolle) | 0 | beidseitig verlinkt; 1 Rollen-Trim-Punkt |
| grobkosten ↔ immobilienbewertung ↔ kostenschaetzung | 0 | 1 führende-Quelle-Link |
| wettbewerbs-dna ↔ entwurfs-referenzen (Schulbau, Erst-Check) | 0 | Drift-Guard gesetzt |

## Befunde (bestätigt / widerlegt)

### 1. Run-10-Bring-Schuld geschlossen — BESTÄTIGT (baurecht ↔ energie)
baurecht Buch-Run 50 hat die §§ 2a-2e BVV Meldeverfahren als vierten Verfahrenstyp integriert.
Am raw-BVV verifiziert: §-Zuordnung, Schwellen (2 m³, 2,5 m), Fristen (30 Tage) deckungsgleich mit
energie, BVV **Nachtrag 133** beidseits, EnerG-Fossilverbot korrekt an § 11 (nicht § 10a). QUESTIONS
als ✅ ERLEDIGT geführt, bidirektionale Verlinkung vorhanden. **Kein Widerspruch, kein Veraltetes.**
Offen (Struktur, nicht autonom): geringfügige Doppelspur — baurecht restatet die WP-Detailschwellen,
die laut Rollen-Matrix energie führt; trimmbar auf Verweis, aber Trim über KB-Grenze → Loop-Arbeit.

### 2. SIA-500-Kennwert — adversarial korrigiert (normen ↔ baurecht)
Gemeldet: baurecht führe die «abgelöste» Norm SN 521 500. **Verifier-Verdikt TEILWEISE:** die SN-Nummer
521 500 ist NICHT abgelöst (persistente Registriernummer der geltenden SIA 500:2009) — nur die Ausgabe
1988. Der reale Mangel: (a) unpräzise Zitierung → korrigiert auf «SIA 500:2009 «Hindernisfreie Bauten»,
Ziff. 9.7» + Destillat-Link; (b) **Kennwert-Mismatch** — Wiki «1 je 25 Wohnungen / 100 m» vs. SIA 500:2009
Ziff. 9.7.2 «1 je weitere 25 **Parkplätze**, keine 100-m-Gehdistanz». Herkunft des Wiki-Werts offen
(Ausgabe 1988 oder ZH-Parkierungs-Wegleitung) → **Wert NICHT geändert, geflaggt** (QUESTIONS 2026-07-21).
Dies ist der Wert der Verifikationsstufe: ohne sie wäre eine falsche Norm-Nummer «korrigiert» worden.

### 3–5. Weitere Paare — 0 Widerspruch
- **energie ↔ planungsgrundlagen:** WP-Weichen fassungsgleich, WDV vs. EN-110 sauber getrennt,
  Formularmatrix bewusst abgegrenzt. Einzige Lücke: Private Kontrolle doppelt geführt ohne Verweis → verlinkt.
- **Kennwert-Dreieck:** alle Zahlen exakt identisch, Doppelzählungs-Guard (Run 4) weiter gültig; ein
  einseitig fehlender führende-Quelle-Link in immobilienbewertung → gesetzt.
- **Schulbau-Handoff:** Kennwerte deckungsgleich, beidseitig verlinkt, aktuell; Drift-Guard gegen stilles
  Veralten des eingefrorenen JSON-Derivats gesetzt.

## Ausgeführte Aktionen (9 Dateien in 5 KBs — nur Links/Präzisierungen/1 Flag, keine Löschung)

- baurecht/wiki/fahrzeugabstellplaetze-und-parkierung.md — SIA-500 präzisiert + Ziff.-9.7-Link + Kennwert-Flag
- baurecht/wiki/grundlagen-planungs-baurecht.md — SIA-181-Destillat-Link (+Fassungsvorbehalt 2020); VSS SN 640 291a → VSS 40 291 (2021)
- baurecht/wiki/bauausfuehrung-und-baukontrolle.md — VKF-BRL 12-15-Destillat-Link
- baurecht/wiki/QUESTIONS.md — Run-10-Titel «§§ 2a-2c» → «§§ 2a-2e»; neuer SIA-500-Kennwert-Flag
- energie/destillate/private-kontrolle-zh.md — Querbezug → planungsgrundlagen (führend Verfahren)
- energie/destillate/wta-formular-zh-waermetechnische-anlagen.md — Fossilverbot «§ 10a» → «§ 11 Abs. 1 EnerG»
- planungsgrundlagen/wiki/energie-private-kontrolle-zh.md — Rücklink auf das energie-Quell-Destillat
- immobilienbewertung/wiki/realwert-sachwert.md — Link auf führende Wüest-Median/Quantile-Quelle
- wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md — Drift-Guard (Regenerierungs-Trigger) in §8

Register QUERBEZUEGE um 5 datierte Paar-Einträge ergänzt; je KB CHANGELOG protokolliert.

## Offene Punkte (kein neuer Entscheid für Raphael)

Alles Loop-/Struktur-Arbeit, keine Entscheidungen:
- **SIA-500-Kennwert** (baurecht): wahre Quelle des «25 Wohnungen / 100 m»-Werts belegen, dann Wert an
  SIA 500:2009 Ziff. 9.7 angleichen oder Quelle umbenennen (baurecht-Loop).
- **WP-Schwellen-Doppelspur** (baurecht): Detailschwellen auf reinen Verweis auf energie trimmen (mittel-tief).
- **Private-Kontrolle-Rollen-Trim** (energie/pg): Substanz zusammenführen (pg führend) — Umstrukturierung.
- **energie destillate/INDEX.md Z.166** widerlegte «Kühlmöglichkeit»-Aussage + 35 Dubletten-Zeilen (energie-Loop-Backlog, Health-Check 21.07.).
- **SIA 181:2020 Re-Destillat** (normen, bekannte Bring-Schuld, REGISTER).

**E1 (Doppelspur Energierecht ZH)** bleibt unverändert offen — kein neuer Stoff dazu in diesem Lauf.

## Methodik-Notiz
Adversariale Verifikation nur für den einen gemeldeten materiellen Widerspruch (die übrigen Befunde
waren fehlende Links / prozessuale Drift / KB-interne Veraltet-Fälle, am zitierten file:line-Anker direkt
verifiziert). Der eine Verifier-Lauf hat den Befund substanziell korrigiert (Norm-Nummer doch gültig) —
Beleg, dass die Stufe nicht zeremoniell ist.
