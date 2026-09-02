---
title: "Flächenerfassungs- und Bewirtschaftungsplan-Richtlinie (RFB) Stadt Zürich"
status: emerging
last_updated: 2026-08-29
sources: ["/Volumes/daten/02_Architektur_Archiv/01_Entwerfen/22_Grundrisse/Wohngrössen/rl_flaechenerfassung _und_bewirtschaftungsplaene_dmb_immo_id_671.pdf (Richtlinie für die Flächenerfassung und Erstellung von Bewirtschaftungsplänen, Stadt Zürich Immobilien-Bewirtschaftung, Version 16.0, Stand 05.02.2013, 92 Seiten, S. 8 Abschnitt 1.1-1.4, S. 13 Abschnitt 2.2.1, S. 21-22 Abschnitt 2.3.15, S. 37 Abschnitt 3.5.1.1-3.5.1.2, S. 79 Abschnitt 4.3-4.4)", "raw/inventar/archiv-fachwissen__01_Entwerfen.md Abschnitt Triage und Punkt 1"]
links: []
---

# Flächenerfassungs- und Bewirtschaftungsplan-Richtlinie (RFB) Stadt Zürich

## Kontext

Verbindliches Planlieferungs-Handbuch der Stadt Zürich (Immobilien-Bewirtschaftung IMMO,
Amt für Hochbauten AHB) für alle im Auftrag des AHB erstellten Pläne (S. 8, Abschnitt 1.2
Geltungsbereich): «integrierender Bestandteil des Honorarvertrages zwischen dem AHB und
allen beauftragten Planenden». Version 16.0, Stand 05.02.2013 — **Aktualität vor jeder
Verwendung verifizieren**, das Dokument selbst listet eine über 15-stufige
Änderungshistorie seit 2005 (S. 2-4). Struktur in zwei Teilen: Teil 1 CAD-Daten für den
Bewirtschaftungsplan, Teil 2 Handbuch zur Flächenerfassung.

## Kern: wann und was geliefert werden muss

Nach Abschnitt 2.2.1 (S. 13) sind Flächenpolygone **verbindlich zu zwei Zeitpunkten** zu
liefern, an den Bauprojektphasen nach SIA 102 gekoppelt:

| SIA-102-Phase | Teilphase | Pläne | Status |
|---|---|---|---|
| 3 Projektierung | 32 Bauprojekt | Baueingabepläne (M 1:100) | zwingend für Import ins CAFM-System |
| 5 Realisierung | 53 Abschluss | revidierte Ausführungspläne auf dem Detaillierungsgrad der Baueingabe (M 1:100) | zwingend für Import ins CAFM-System |

Vorprojektpläne (Teilphase 31) und reine Ausführungspläne (Teilphase 51) werden **nicht**
für den Import benötigt — nur Baueingabe- und die revidierte Schlussfassung.

Der Lieferumfang (Abschnitt 4.3, S. 79) verlangt je Liefertermin einen vollständigen Satz
Bewirtschaftungspläne auf CD mit digitalen Daten der Architekturpläne (Grundrisse,
Schnitte) und der Bewirtschaftungspläne, beschriftet mit Verfasseradresse, Standort- und
Gebäude-IMMO-Nummer und Erstellungsdatum; Papierform ist nicht nötig. Die Daten müssen
laut Abschnitt 4.4 von einer akkreditierten Prüfstelle freigegeben werden, bevor sie ins
CAFM-System (Aperture) importiert werden.

## Kern: Flächensystematik (methodisch, nicht als Norm-Ersatz)

Die Richtlinie stützt ihre Flächendefinitionen ausdrücklich auf **SIA 416 (2003) «Flächen
und Volumen von Gebäuden»** und **SIA d 0165 (2000) «Kennzahlen im Immobilien-Management»**
(S. 8, Abschnitt 1.4 «Weitere Grundlagen»; Fussnoten S. 37). Sie definiert operational
(Abschnitt 3.5.1.1, S. 37): Geschossfläche GF = Nettogeschossfläche NGF + Konstruktionsfläche
KF, als «allseitig umschlossene und überdeckte Grundrissfläche der zugänglichen Geschosse
einschliesslich der Konstruktionsflächen», gerechnet über die äusseren Bauteilmasse
einschliesslich Bekleidung. Nicht als GF gezählt werden Hohlräume unter dem untersten
zugänglichen Geschoss, nicht zugängliche Konstruktions-Hohlräume, Installationsgeschosse
unter 1,5 m lichter Höhe und Lufträume über 5 m² (auch Treppenaugen über 5 m²).

**Norm-Vorbehalt:** Diese Definitionen sind hier nur **methodisch** referenziert, wie eine
öffentliche Bauherrschaft SIA 416/SIA d 0165 in eine eigene, verbindliche Planlieferpflicht
übersetzt. Für die verbindliche, aktuell gültige Flächendefinition gilt ausschliesslich
`wissen/normen` (Rule `normen-referenz`) — SIA 416 (2003) ist in diesem Dokument von 2013
zitiert, die heute gültige Ausgabe ist dort zu prüfen, nicht hier.

## Kern: Flucht- und Rettungssymbole (Abschnitt 2.3.15, S. 21-22)

Aus dem CAFM-System werden Flucht- und Rettungspläne generiert. Dafür sind sechs
Datenobjekte mit eigenem Symbol auf separaten CAD-Layern zu zeichnen: Feuerlöscher
(`Z291_FEUERLOESCHER`), Löschposten (`Z292_LOESCHPOSTEN`), Notfalltelefon
(`Z293_NOTFALLTELEFON`), Handalarmtaster (`Z294_HANDALARMTASTER`), «Im Brandfall Lift nicht
benutzen» sowie Löschdecke (`Z299_LOESCHDECKE`, laut Änderungshistorie S. 2 ergänzt
19.12.2005).

## Praxisregel

1. Wer für die Stadt Zürich (AHB/IMMO) plant, liefert Flächenpolygone **nur** zu
   Baueingabe und revidierter Schlussfassung — Vorprojekt- und reine Ausführungspläne
   sind für den CAFM-Import irrelevant. Diese zwei Zeitpunkte in den eigenen
   Leistungsphasenplan aufnehmen, bevor ein Planlieferungstermin verpasst wird.
2. Das Muster liefert eine belegte Vorlage, wie eine öffentliche Bauherrschaft eine
   verbindliche CAD-Datenlieferung als Vertragsbestandteil (nicht als Empfehlung) in den
   Honorarvertrag einbindet — übertragbar auf eigene Planlieferungsvereinbarungen mit
   anderen institutionellen Bauherrschaften.
3. Layer-Namenskonventionen für Flucht-/Rettungssymbole sind stadtspezifisch (Präfix
   `Z29x_`) und nicht auf andere Bauherrschaften übertragbar, wohl aber das Prinzip
   separater Layer je Symboltyp für automatisierte Plangenerierung.

## Offene Punkte

- Version 16.0 ist Stand 2013; ob die Stadt Zürich seither eine neuere Version
  veröffentlicht hat, ist nicht geprüft. Vor Verwendung in einem laufenden
  Zürcher-Stadt-Projekt aktuelle Fassung bei der IMMO-Fachstelle CAD/CAFM einholen.
- Die vollständige Flächensystematik (Abschnitt 3.5, S. 35-58: Mietflächen,
  Aussen-Geschossflächen AGF/ANGF/AKF, Nutzungsarten-Zuordnung SIA 416 zu SIA d 0165) ist
  nur in ihrem GF/NGF-Kern destilliert; der Rest bleibt bei Bedarf für einen Folgelauf.
