# Synergie-Lauf 01 — Erstinventar und Einrichtung des Orchestrators

Datum: 15.07.2026 · Ausloeser: Auftrag Raphael (Orchestrator einrichten, der alle
Prozesse/Harnesse gegenseitig prueft + Geschaeftsmodell-Vorschlaege) · Modus: gedrosselt
(Rule 260714 — Inline-Analyse, kein Multi-Agent-Fan-out).

## Inventar-Stand (aus CLAUDE.md + Contract-Bloecken)

- 48 Skills (inkl. neu `synergie-orchestrator`), ~30 Agenten, 17 Wissens-KBs,
  20 Rules, 4 Katalog-Services (S1–S4), Connectoren: geo-zh/geo-sz, bexio, M365,
  zefix, truninger-ds3, ebaugesuche-zh, behoerden-zh, geo-maps.
- Etablierte Ketten: Studien-Pipeline (planungsgrundlagen → machbarkeit → volumenstudie
  → grobkosten-onepager → machbarkeit-studio) und Bauleitungs-Lebenszyklus
  (unternehmerfindung → ausschreibung → offertenpruefung → werkvertrag →
  unternehmerkontrolle → kostenkontrolle).
- Aufsichts-Ebenen vorher: hub-chef (taeglich/operativ), wissens-chef (Cross-KB),
  harness-review (reaktiv), wissenscheck (je KB). Neu: synergie-orchestrator (Struktur).

## Befunde

12 Befunde, dokumentiert im `../SYNERGIE-REGISTER.md` (SYN-01 … SYN-12).
Gewichtung nach Hebel:

1. **SYN-02 (Entwurfsprozess, groesster Hebel):** Wettbewerbs-DNA-Parameter-Sets an die
   Volumen-Pipeline anschliessen → typologisch informierte Variantenstudien. Das ist der
   Kern eines neuen, verkaufbaren Entwurfsprozesses (Papier «Typologischer
   KI-Entwurfsprozess»). Naechster Schritt: Spec.
2. **SYN-01 + SYN-06 (Kennwerte-Monopol):** `wissen/grobkosten` als einzige Kennwerte-
   Wahrheit; Offerten/Schlussabrechnungen fuettern sie zurueck. Macht jede Kostenaussage
   konsistenter und die DB mit jedem Projekt wertvoller.
3. **SYN-03 / SYN-07 / SYN-09 / SYN-11 (Service-Kandidaten):** Wettbewerbs-Fabrik,
   Energie-Vorabklaerung, Studio-als-Akquise, Bauleitungs-Backend B2B — als ENTWUERFE
   fuer den Katalog formuliert, Aktivierung nur durch Raphael.
4. **SYN-04 / SYN-10 (Ketten schliessen):** Vorabklaerung↔Auflagen-Loop und
   Auflagen-Fristen→Terminplanung.
5. **SYN-05 (Stammdaten), SYN-08 (eine Stimme):** Hygiene-Themen mit klarer fuehrender
   Quelle.

## Abgeleitetes Deliverable

Geschaeftsmodell-Konzept: `docs/konzepte/260715-Geschaeftsmodell-KI-Architekturbuero/`
(MD+DOCX+PDF) — sechs Geschaeftsmodell-Bausteine GM1–GM6 samt Loop «neue Entwurfsprozesse
erkennen und implementieren».

## Naechste Schritte (Empfehlung an Raphael)

- Freigabe-Entscheid: welche Katalog-ENTWUERFE (S5/S6) aktiv werden.
- SYN-02 als Spec aufgleisen (nach Wochenlimit-Reset, Rule 260714 beachten).
- Periodischer Lauf (monatlich, Nachtfenster) erst NACH ausdruecklicher Freigabe einplanen.
