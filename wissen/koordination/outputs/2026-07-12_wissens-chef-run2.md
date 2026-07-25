# Wissens-Chef — Lauf 2

Datum: 2026-07-12
Umfang: (1) offener Fachentscheid E1 aus Run 1 entschieden; (2) offene Verifikation W3
nachgezogen; (3) rotierendes neues Paar auflagebereinigung ↔ baurecht.
Methode: Workflow-Fan-out (3 Agenten) mit adversarialer Verifikation. 0 Fehler.

## E1 entschieden (m²↔m³-Umrechnungsfaktor)

Der HNF/GF-Faktor ist kontextabhängig — **Regelgeschoss 0.70** (effizientes Wohngeschoss),
**Gesamtgebäude 0.60–0.61** (inkl. Sockel/Attika/UG). Für die **m²↔m³-Kostenbrücke** ist der
Gesamtgebäude-Wert 0.60 kanonisch. In `grobkosten/kennwerte` und `immobilienbewertung/realwert-sachwert`
je als Entscheid-Box verankert (Hub-weit gültig). Nebenbefund: die immobilienbewertung-KB nutzte
beide Werte bereits latent richtig (Geschoss /0.70, Gesamtgebäude 0.61) — der Entscheid macht es
explizit. Damit ist der letzte offene Punkt aus Run 1 geschlossen.

## W3 nachverifiziert (Baupreisindex-Stand) — WIDERLEGT

Der Verdacht, grobkosten sei mit «Wüest 2022 / Stand 2023» gegenüber dem aktuellen BFS-Baupreisindex
(April 2026 = 100.6) veraltet, wurde adversarial widerlegt: grobkosten deklariert seine Werte
transparent als Seed ±25 %, die reale Bauteuerung 2023→2026 beträgt kumuliert nur ~2–3 % (moderat,
BFS) und liegt weit innerhalb der Grobschätzungsspanne. Kein Fehler. Als Compounding-Aktion eine
Teuerungs-Check-Note + Verweis auf `investorenmarkt-makro` gesetzt.

## Neues Paar auflagebereinigung ↔ baurecht

Inhaltlich konsistent, verschiedene Flughöhen (baurecht = Rechtsnatur/Verfahren §§ 318/321/326/327/329
PBG; auflagebereinigung = operative Umsetzung Ämter/Fristen/Gewerke). 1 gemeldeter Widerspruch W1
(Baubeginn-Definition) **adversarial widerlegt** — nur unterschiedliche Präzisionsstufen
(umgangssprachlich «Spatenstich» = juristisch «Aushubbeginn», § 326 PBG). Als Präzisierung ergänzt.
1 Doppelspur (Fristen-Phasen) ist ein designter Handoff, kein Eingriff.

**Aktionen (4 Backlinks + 1 Präzisierung):**
- fristenlogik-bauentscheid-zh → baurecht/nebenbestimmungen-und-reverse (§ 321) + bauausfuehrung-und-baukontrolle (§ 326/327, § 23 BVV)
- aemter-stadt-zuerich → baurecht/baubewilligungsverfahren (§ 318/329)
- baurecht/bauausfuehrung-und-baukontrolle → auflagebereinigung/fristenlogik (Artikel-Backlink statt nur Skill-Nennung)
- Baubeginn juristisch präzisiert (Aushubbeginn, RB 1994 Nr. 88)

## Stand nach Run 2

Keine offenen Fachentscheide mehr aus Run 1/2. Alle bestätigten Befunde bereinigt.
Nächster Lauf (Rotation): energie ↔ baurecht (Energienachweis-Pflicht im Bewilligungsverfahren).

## Gesamt-Bilanz Run 1 + 2
- 6 KB-Paare geprüft, 12 Widerspruchs-Verdachtsfälle adversarial verifiziert.
- 5 bestätigt (4 Faktenkorrekturen ausgeführt: Gewässerraum-Bemessung, stehende Gewässer 0,5 ha,
  EN-105 WRG, Baubeginn-Präzisierung; 1 Fachentscheid E1 getroffen), 7 widerlegt.
- 12 Querverlinkungen gesetzt, 4 Doppelspuren durch Rollenklärung entschärft.
