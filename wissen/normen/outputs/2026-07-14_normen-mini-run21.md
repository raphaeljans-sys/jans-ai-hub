# Normen-Training Mini (Mac Mini) — Run 21, 14.07.2026

## Auftrag

Fortsetzung Vertiefungsstufe (c) Q&A-Selbstbefragung fuer die DIN/VSS/RAL-Familie
(Stations-Split Mac Mini), gemaess Plan aus Run 20: vier neue Kandidaten (bisher nur
retro-verifiziert, noch nicht Q&A-selbstbefragt), parallel via vier Sub-Agenten.
Zusaetzlich Vertiefungsstufe (d): Querschnitts-Synthese um eine Sammelstelle
"Grenzen der Uebertragbarkeit" ergaenzt.

## Durchgefuehrt

### (c) Q&A-Selbstbefragung (4 Normen, parallel via Sub-Agenten)

Je Norm 15-20 Pruefungsfragen formuliert und JEDE unabhaengig durch Volltextlektuere
des Original-PDF beantwortet (nicht aus dem Destillat abgeschrieben), dann gegen das
bestehende Destillat abgeglichen:

1. **DIN 276-1:2008** (Kosten im Bauwesen) — 18/18 Fragen bestanden nach Ergaenzung,
   0 Sachfehler. 6 Ergaenzungen: fuenf Begriffsdefinitionen (Kostenkontrolle/-steuerung/
   -gliederung/-gruppe/-prognose, Ziff. 2.5/2.6/2.8/2.9/2.12) waren in der Begriffsliste
   erwaehnt, fehlten aber im Abschnitt Kernziffern; vier Grundsatz-Ziffern aus 3.3
   (Zweck, Grundlagen/Erlaeuterungen, Besondere Kosten — praxisrelevant bei Hanglagen/
   Altlasten, Kostenstand/-prognose); Ziff. 4.3 Darstellung der Kostengliederung
   (Zuordnungsregel bei Mehrdeutigkeit ueber KG 390/490/590); "ersetzt"-Frontmatterfeld
   praezisiert (DIN 276-2/276-3-Editionen ergaenzt); Link auf `din-277-2-2005.md` ergaenzt.

2. **DIN 277-1:2005** (Grundflaechen/Rauminhalte, Begriffe) — 17/18 bestanden, 1 echter
   Fehler: KGF-Schwellenwert "bis 1,0 m² lichter Querschnitt" (Kriechkeller/
   Installationskanaele, Ziff. 3.1.2) fehlte als explizites Gegenstueck zur bereits
   vorhandenen NGF-Schwelle "ueber 1,0 m²". 5 Ergaenzungen: BRI/NRI/KRI-Definitionen
   samt Ausschlusslisten (Ziff. 3.2-3.2.2) waren im Verifikationsvermerk als "bestaetigt"
   vermerkt, fehlten aber inhaltlich im Abschnitt Kernziffern; NGF-Ausschlussliste
   (Ziff. 3.1.1); VF-Ausschluss Bewegungsflaechen (Ziff. 3.1.1.3); Ermittlungsregel
   fuer schraege Flaechen via vertikale Projektion (Ziff. 4.1.3); Vorwort-Aenderungsliste
   gegenueber DIN 277-1:1987-06 (u.a. KRI-Neuaufnahme, Aufgabe Haupt-/Nebennutzflaeche-
   Unterscheidung). Cross-Check SIA 416: kein einziger SIA-Bezug im Normtext, bestehende
   JANS-Praxis-Transfer-Aussage bleibt gueltig. Hinweis: eine Fundstellen-Korrektur
   (S.3 statt S.4) war bereits durch einen parallel laufenden nas-selfcommit/Retro-
   Verifikations-Prozess (Commit 4f4a79d7, 04:58 Uhr) erledigt — vom Sub-Agenten
   uebernommen statt doppelt korrigiert.

3. **DIN 18040-2:2011** (Barrierefreies Bauen, Wohnungen) — 14/20 bestanden, 1 Korrektur:
   Ziff. 4.2.1 "andere Wege auf dem Grundstueck ≥120 cm" ist im Original nur eine
   Empfehlung ("sollten"), keine zwingende Anforderung wie beim Weg zum Haupteingang —
   Destillat stellte es faelschlich als Pflicht dar. 5 Ergaenzungen, davon zwei komplette
   fehlende Abschnitte: Ziff. 4.3.4 Bodenbelaege (rutschhemmend mind. R9 nach BGR 181,
   visuell kontrastierend) und Ziff. 4.4 Warnen/Orientieren/Informieren/Leiten
   (Kontrastwerte K≥0,4/K≥0,7, taktil Profilschrift UND Braille zwingend beide); zudem
   DIN 18650-1/-2 in der Normenliste ergaenzt und Vorwort-Aenderungen gegenueber
   DIN 18025-1/-2 (4 Punkte) als Kontext ergaenzt. Bestaetigt (kein Fehler): Seitenzahl
   Bild 9 (bereits korrigiert) und «keine Notrufanlagen-Pflicht» (kein Vorkommen von
   "Notruf" im gesamten Volltext) unabhaengig erneut verifiziert.

4. **SN 640 050:1993** (Grundstueckzufahrten) — 13/18 bestanden vor Ergaenzung, 0
   Sachfehler bei allen Zahlenwerten (Breiten, Radien, Neigungen, Gefaellsbruch Tab. 2).
   5 echte Luecken ergaenzt (keine Fehler, fehlende Aussagen): Zusatzanforderungen aus
   SN 640 271 bei schweren Motorwagen (Ziff. 3); vollstaendige A/B/C-Matrix nach
   Parkfeldzahl x Strassentyp (Tab. 1, bisher nur verbal umschrieben); HVS-Restriktion
   (Zufahrten auf Hauptverkehrsstrassen ausserhalb besiedelter Gebiete grundsaetzlich
   vermeiden, Tab. 1 Fussnote 2); Hinweis zur Zusammenfassung nebeneinanderliegender
   Zufahrten (Tab. 1 Fussnote 1); Zeile "Sichtverhaeltnisse gemaess [7]" + Geometrie-
   Grundsatz aus Ziff. 6.

**Befund:** durchwachsener als in Run 20 — DIN 18040-2 (14/20) und SN 640 050 (13/18)
zeigen eine hoehere Luecken-Quote als die bisher gepruefte Kerngruppe (DIN 4102-1,
DIN 18040-1, VSS 40 291 je ≥18/20). Kein Fall betrifft jedoch falsche Zahlenwerte in
bereits vorhandenen Kernaussagen — die Abweichungen sind durchgaengig fehlende
Abschnitte/Begriffe oder eine faelschlich als Pflicht statt Empfehlung dargestellte
Anforderung (DIN 18040-2 Ziff. 4.2.1), nicht falsche Kennwerte.

### (d) Querschnitts-Synthese erweitert

`wiki/synthese-din-vss-ral-fachskills.md` um Abschnitt 9 "Grenzen der Uebertragbarkeit
(Sammelstelle)" ergaenzt — buendelt die in den Abschnitten 1-8 verstreuten
Nicht-Aequivalenz-Hinweise (DIN-4102 vs. RF-Klassen, DIN-276 KG vs. BKP, DIN-277 NGF
vs. SIA-416 HNF, VOB/B vs. SIA-118-Fristen, DIN-18040 vs. SIA-500, DIN-5034 vs.
SIA-380/1) in einer Tabelle mit Spalte "Uebertragbar?" (Ja/Nein/Ungeprueft) und
Fundstellen-Verweis. Neu identifiziert: DIN 18040-1/2 vs. SIA 500 ist inzwischen
"ungeprueft" statt "keine SIA-500-Referenz vorhanden" — SIA 500 wurde zwischenzeitlich
vom MacBook Pro destilliert (`destillate/sia-500-2009.md`, established); direkter
Cross-Check zwischen den beiden Destillaten ist ein offener Folgeauftrag.

### Bookkeeping

`destillate/INDEX.md` fuer alle vier Positionen nachgetragen (zwei Sub-Agenten — DIN
18040-2, DIN 277-1 — hatten ihre Destillate korrekt aktualisiert und selbst
committet/gepusht, aber das zentrale INDEX nicht nachgefuehrt; die anderen zwei — DIN
276-1, VSS 640050 — hatten weder committet noch das INDEX aktualisiert. Bookkeeping-
Lag-Muster wie in Run 18/20, weiterhin nicht vollstaendig durch Sub-Agenten-Prompts
behoben).

## Ergebnis

- 4 zusaetzliche DIN/VSS-Destillate Q&A-verifiziert: 62/74 Fragen insgesamt sofort
  bestanden, 3 echte Fehler korrigiert (KGF-Schwelle DIN 277-1, Ziff. 4.2.1 DIN 18040-2,
  keine bei DIN 276-1/VSS 640050 — dort nur Luecken), 21 Ergaenzungen.
- Insgesamt sind damit 7 von ~95 DIN/VSS/RAL-Destillaten explizit Q&A-selbstbefragt
  (DIN 4102-1, DIN 18040-1, VSS 40 291 aus Run 20; DIN 1946-4 aus Mini-Run 16;
  DIN 276-1, DIN 277-1, DIN 18040-2, SN 640 050 aus diesem Lauf — 8 Destillate).
- Querschnitts-Synthese um Abschnitt 9 (Uebertragbarkeits-Sammelstelle) erweitert.
- Kein neuer offener Punkt in `wiki/QUESTIONS.md` fuer DIN/VSS/RAL; ein Folgeauftrag
  vermerkt (SIA-500 vs. DIN-18040 Cross-Check, siehe Synthese Abschnitt 9).

## Naechster Schritt (Run 22)

Vertiefungsstufe (c) fortsetzen mit weiteren Kandidaten ohne bisherige Q&A-
Selbstbefragung, priorisiert nach Fach-Skill-Relevanz: RAL-GZ 638 (Gitterroste,
bereits 46-Aussagen-Volltextabgleich, aber nicht im Q&A-Format), DIN 18041
(Hoersamkeit), DIN EN 12101-2 (Rauch-/Waermeabzug), VSS 640281/640065 (Parkierung
Bedarf/Angebot), DIN 1053-1 (Mauerwerk Berechnung). Vertiefungsstufe (d): SIA-500-vs.-
DIN-18040-Cross-Check als eigene Kurz-Notiz in der Synthese nachtragen, sobald Zeit
vorhanden.

INVENTAR-STATUS DIN/VSS/RAL: unveraendert **Grunddestillation + Retro-Verifikation
KOMPLETT** (seit Run 19). Vertiefungsstufen (c)/(d) laufen weiter, kein «Task
beenden»-Vorschlag noetig (VOLLGAS-Programm: nach Familienabschluss automatisch
Wechsel in die Vertiefung, kein Leerlauf).
