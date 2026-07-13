---
title: Werkleitungskataster — Strom/Kommunikation-Planauskunft (EKZ, Swisscom, Sunrise-UPC)
status: emerging
last_updated: 2026-07-13
sources:
  - EKZ Einsiedeln AG — Merkblatt zur einmaligen Datenabgabe (Planauskunft 1428968, 27.11.2023,
    reale JANS-Bestellung Reckholdernstrasse 20 Willerzell)
  - Swisscom (Schweiz) AG — Netzauskunft Reckholdern (Ausgabedatum 26.11.2023, Auskunftnummer
    2023-11-26-00001, Massstab 1:200, Gueltigkeit 3 Monate)
  - Sunrise UPC — "Katasterauskuenfte" Kontaktblatt (4 Regionen West/Ost/Ticino/Romandie,
    online ueber upc.ch/leitungskataster)
  - PL-01/Werkleitungen/{ekz-planauskunft.ch, swisscom.ch, sunrise.ch, leitungskataster.upc.ch}
links: [[kartenportale-geoportale-uebersicht]] [[kartenportale-sharepoint-ablage]]
  [[recht-norm-tiefgarage-erschliessung]] [[kartenportale-grundlagen-checkliste-neue-parzelle]]
---

# Werkleitungskataster — Planauskunft vor Baubeginn/Baueingabe

Schliesst eine bisher unbearbeitete Luecke in PL-01 (Ordner `Werkleitungen/`): bevor gegraben,
eine Baugrube ausgehoben oder ein neuer Hausanschluss geplant wird, muss geklaert sein, **wo die
bestehenden Versorgungsleitungen** (Strom, Kommunikation, Gas, Wasser) auf und neben der Parzelle
verlaufen. Anders als Zonenplan/Baulinien/OEREB ist der Werkleitungskataster **kein zentrales,
kantonales Geoportal** — jeder Leitungsbetreiber fuehrt seinen eigenen Kataster und liefert die
Auskunft ueber ein eigenes, meist login-pflichtiges Bestellportal.

## 1. Zustaendigkeiten (kein zentrales Portal)

| Sparte | Betreiber (Region ZH/SZ, Beispiele) | Bestellweg |
|---|---|---|
| **Strom** | EKZ (Elektrizitaetswerke des Kantons Zuerich; regional auch Gemeindewerke, z.B. ewz Stadt Zuerich) | `ekz-planauskunft.ch` (Login + Bestellformular je Parzelle/Perimeter) |
| **Festnetz/Kommunikation (Kupfer/Glasfaser)** | Swisscom | `swisscom.ch` Geo-Portal, "Netzauskunft" |
| **Kabelnetz/Kommunikation** | Sunrise UPC (vormals UPC) | `upc.ch/leitungskataster` — 4 Regionen (West/Ost/Ticino/Romandie), Region Ost deckt Zuerich/Winterthur/Gossau/Jona ab |
| **Gas** | kommunale Gaswerke / Energie 360° (Stadt ZH) / regionale Erdgas-Versorger | i.d.R. separate Anmeldung bei der Gemeinde-/Regionalwerk |
| **Wasser/Abwasser** | Gemeindewerke (Wasserversorgung, Kanalisation) | i.d.R. beim Tiefbau-/Werkamt der Gemeinde, oft zusammen mit dem Werkleitungskataster der Gemeinde selbst |

**Konsequenz fuer die Vorprojekt-Checkliste:** es braucht **mehrere separate Anfragen** (mind.
Strom + Kommunikation + Gemeindewerke Gas/Wasser), nicht eine einzige Abfrage wie bei OEREB/GWR.
Bei `behoerden-vorabklaerung` faelschlicherweise oft beim Tiefbauamt vermutet — das Tiefbauamt
regelt Strassenabstand/Erschliessung, **nicht** die Werkleitungsauskunft selbst.

## 2. Ablauf (am Beispiel EKZ, real getestet)

1. **Anmeldung/Freischaltung:** Konto bei `ekz-planauskunft.ch` beantragen — Bestaetigungsmail
   "Ihr Konto fuer die EKZ-Planauskunft wurde freigeschaltet" (keine Wartefrist im realen Fall
   Reckholdern erkennbar, gleicher Tag).
2. **Bestellung je Perimeter:** Planauskunft fuer die konkrete Parzelle/Adresse anfordern
   (Format: "Plotanfrage").
3. **Lieferung:** drei Dokumente je Bestellung — **Planauskunft-Plot** (der eigentliche Leitungsplan,
   farbig), **Symbole-Legende** (Legende zu den verwendeten Leitungssymbolen) und **Kurzbrief**
   (Merkblatt mit Nutzungsbestimmungen, s. Punkt 3).
4. **Gueltigkeit sehr kurz:** die EKZ-Planauskunft ist nur **2 Wochen** gueltig (Leitungsnetz
   aendert sich laufend) — **nicht** auf Vorrat bestellen, sondern erst kurz vor tatsaechlichem
   Bedarf (Baugrube/Sondierung/Werkleitungsplanung).

## 3. Rechtliche/technische Nutzungsbestimmungen (EKZ-Merkblatt, uebertragbares Muster)

- Plandaten dienen **ausschliesslich** der Abklaerung/Ortung der Leitungslage — keine anderen
  Zwecke.
- **Gueltigkeitsdauer 2 Wochen** ab Erstellung der Planauskunft (EKZ); Swisscom-Netzauskunft
  dagegen **3 Monate** gueltig (unterschiedliche Praxis je Betreiber — vor Verwendung immer das
  Ausstellungsdatum auf dem Plot pruefen).
- Daten entsprechen dem **Dokumentationsstand zum Ausstellungszeitpunkt**, keine Garantie fuer
  spaetere Aktualitaet; **genaue Tiefenlage muss vor Ort sondiert werden** (Swisscom-Hinweis:
  nicht eingemessene Hausanschlussleitungen sind nur ungenau eingezeichnet).
- Nutzung **nur durch den anfragenden Interessenten** fuer das konkrete Projekt — Weitergabe an
  Dritte untersagt.
- Ausdruck **muss farbig** erfolgen und farbig verwendet werden — bei Schwarz-Weiss-Ausdrucken
  lehnt der Betreiber jede Haftung ab (Sicherheitsrelevanz: Leitungsarten sind farblich codiert).
- Bei Schaeden waehrend der Bauausfuehrung: **sofortige Meldung** an die im Plan angegebene Nummer
  Pflicht (Gefahrenminimierung).
- **Warnhinweis Stromschlag** (Swisscom-Beispiel): Kupferkabel koennen mit bis zu **190 Volt DC**
  unter Spannung stehen — auch bei Kommunikationsleitungen nicht unterschaetzen.
- **Datenmodell-Norm:** die Leitungsdaten folgen **SIA GEO 405** (Leitungskataster-Datenmodell) —
  Fundstelle fuer den CAD-/GIS-Datenaustausch mit Fachplanern.

## 4. Datenformat und Massstab

- EKZ: Planauskunft-Plot als **PDF-Plan**, farbig, mit separater Symbol-Legende. Projektierte
  (noch nicht realisierte) Gebaeude werden **blau** dargestellt — auf solche Objekte darf **nicht**
  eingemessen werden.
- Swisscom: **Netzauskunft** als PDF-Plot, Massstab typ. **1:200**, Zentrumskoordinate + Perimeter
  angegeben, Gueltigkeit 3 Monate.
- Sunrise UPC: online abrufbare Katasterauskunft je Region (`upc.ch/leitungskataster`), analoges
  Prinzip.

## 5. Automatisierbarkeit — bewusst (noch) kein Connector

Im Gegensatz zu OEREB/Zonenplan/Baulinien/GWR (alle ueber `geo-zh.mjs`/`geo-sz.mjs` login-frei
automatisiert) ist der Werkleitungskataster **login-pflichtig, betreiberspezifisch und ohne
oeffentliche REST-/WFS-Schnittstelle** — eine Automatisierung wuerde ein Nutzerkonto je Betreiber
und vermutlich eine Portal-Interaktion (kein offenes API) voraussetzen. Diese Lektion haelt daher
bewusst **keinen** Connector-Anspruch fest, sondern dokumentiert den validierten **manuellen**
Ablauf — Status `emerging`, weil real erprobt (Fall Reckholdern), aber nicht automatisierbar im
bisherigen Connector-Sinn.

## 6. Bezug fuer die Standard-Checkliste "neue Parzelle"

Ergaenzung zu [[kartenportale-grundlagen-checkliste-neue-parzelle]] (M1): der Werkleitungskataster
gehoert **nicht** zu den 8 automatisiert beziehbaren Pflicht-Grundlagen, ist aber vor **Baueingabe/
Ausfuehrung** (nicht schon im Vorprojekt/Machbarkeit) ein Pflichtschritt — insbesondere bei
Tiefgaragen/Aushub (Querbezug [[recht-norm-tiefgarage-erschliessung]]) und Hausanschlussplanung.
Empfehlung: Anfrage bei EKZ (oder zustaendigem Gemeindewerk) + Swisscom + Sunrise-UPC parallel
stellen, sobald das Projekt Ausfuehrungsreife erreicht — wegen der kurzen Gueltigkeit (2 Wochen
EKZ) nicht frueher.
