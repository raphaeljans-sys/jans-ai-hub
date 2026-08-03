---
title: Werkleitungskataster — Strom/Kommunikation-Planauskunft (EKZ, Swisscom, Sunrise-UPC) + Wasser/Gas/Kanalisation SZ (EW Lachen AG)
status: emerging
last_updated: 2026-08-01 (Wartungslauf 02: upc.ch unerreichbar (K65 geschlossen))
sources:
  - EKZ Einsiedeln AG — Merkblatt zur einmaligen Datenabgabe (Planauskunft 1428968, 27.11.2023,
    reale JANS-Bestellung Reckholdernstrasse 20 Willerzell)
  - Swisscom (Schweiz) AG — Netzauskunft Reckholdern (Ausgabedatum 26.11.2023, Auskunftnummer
    2023-11-26-00001, Massstab 1:200, Gültigkeit 3 Monate)
  - Sunrise UPC — "Katasterauskünfte" Kontaktblatt (4 Regionen West/Ost/Ticino/Romandie,
    online über upc.ch/leitungskataster)
  - PL-01/Werkleitungen/{ekz-planauskunft.ch, swisscom.ch, sunrise.ch, leitungskataster.upc.ch}
  - EW Lachen AG, GIS-Fachstelle — realer E-Mail-Wechsel "Werksleitungsbestellung Einsiedeln" /
    "KTN 3301 Einsiedeln" (17.11.2023, Perimeter Reckholdernstrasse Willerzell/Einsiedeln),
    PL-01/KtSZ Schwyz/ewlachen.ch/231117_out_Anfrage + 231117_in_Grundlagen
  - Bezirk Einsiedeln, Fachbereich Liegenschaftsentwässerung — "Merkblatt Liegenschaftsentwässerung,
    Bauherren und Planer" (Stand November 2021), PL-01/KtSZ Schwyz/ewlachen.ch/_Info/
    liegenschaftsentwaesserung_planer.pdf
links: [[kartenportale-geoportale-uebersicht]] [[kartenportale-sharepoint-ablage]]
  [[recht-norm-tiefgarage-erschliessung]] [[kartenportale-grundlagen-checkliste-neue-parzelle]]
  [[recht-norm-abstandsvorschriften-wald-gewaesser]]
---

# Werkleitungskataster — Planauskunft vor Baubeginn/Baueingabe

Schliesst eine bisher unbearbeitete Lücke in PL-01 (Ordner `Werkleitungen/`): bevor gegraben,
eine Baugrube ausgehoben oder ein neuer Hausanschluss geplant wird, muss geklärt sein, **wo die
bestehenden Versorgungsleitungen** (Strom, Kommunikation, Gas, Wasser) auf und neben der Parzelle
verlaufen. Anders als Zonenplan/Baulinien/OEREB ist der Werkleitungskataster **kein zentrales,
kantonales Geoportal** — jeder Leitungsbetreiber führt seinen eigenen Kataster und liefert die
Auskunft über ein eigenes, meist login-pflichtiges Bestellportal.

## 1. Zuständigkeiten (kein zentrales Portal)

| Sparte | Betreiber (Region ZH/SZ, Beispiele) | Bestellweg |
|---|---|---|
| **Strom** | EKZ (Elektrizitätswerke des Kantons Zürich; regional auch Gemeindewerke, z.B. ewz Stadt Zürich) | `ekz-planauskunft.ch` (Login + Bestellformular je Parzelle/Perimeter) |
| **Festnetz/Kommunikation (Kupfer/Glasfaser)** | Swisscom | `swisscom.ch` Geo-Portal, "Netzauskunft" |
| **Kabelnetz/Kommunikation** | Sunrise UPC (vormals UPC) | ⚠ ~~`upc.ch/leitungskataster`~~ **seit spätestens 01.08.2026 unerreichbar** (Zertifikat abgelaufen 29.06.2026, Kataster-Host 403 auch im Browser) → Bezug über Sunrise, siehe Kasten unten. Historischer Stand: 4 Regionen (West/Ost/Ticino/Romandie), Region Ost deckt Zürich/Winterthur/Gossau/Jona ab; Sunrise-Markenauftritt führt real auf dieselbe `leitungskataster.upc.ch`-Domäne (Delta Run 42, Anmeldung/Bestellung Reckholdern belegt: Sunrise-gebrandete Korrespondenz, Login/Bestellung technisch weiterhin unter dem UPC-Namen — Marken-/Technikstand-Delta nach der Sunrise-UPC-Fusion, kein separates zweites Portal) |
| **Gas** | kommunale Gaswerke / Energie 360° (Stadt ZH) / regionale Erdgas-Versorger | i.d.R. separate Anmeldung bei der Gemeinde-/Regionalwerk |
| **Wasser/Abwasser** | Gemeindewerke (Wasserversorgung, Kanalisation) | i.d.R. beim Tiefbau-/Werkamt der Gemeinde, oft zusammen mit dem Werkleitungskataster der Gemeinde selbst |

**Konsequenz für die Vorprojekt-Checkliste:** es braucht **mehrere separate Anfragen** (mind.
Strom + Kommunikation + Gemeindewerke Gas/Wasser), nicht eine einzige Abfrage wie bei OEREB/GWR.
Bei `behoerden-vorabklaerung` fälschlicherweise oft beim Tiefbauamt vermutet — das Tiefbauamt
regelt Strassenabstand/Erschliessung, **nicht** die Werkleitungsauskunft selbst.

## 2. Ablauf (am Beispiel EKZ, real getestet)

1. **Anmeldung/Freischaltung:** Konto bei `ekz-planauskunft.ch` beantragen — Bestätigungsmail
   "Ihr Konto für die EKZ-Planauskunft wurde freigeschaltet" (keine Wartefrist im realen Fall
   Reckholdern erkennbar, gleicher Tag).
2. **Bestellung je Perimeter:** Planauskunft für die konkrete Parzelle/Adresse anfordern
   (Format: "Plotanfrage").
3. **Lieferung:** drei Dokumente je Bestellung — **Planauskunft-Plot** (der eigentliche Leitungsplan,
   farbig), **Symbole-Legende** (Legende zu den verwendeten Leitungssymbolen) und **Kurzbrief**
   (Merkblatt mit Nutzungsbestimmungen, s. Punkt 3).
4. **Gültigkeit sehr kurz:** die EKZ-Planauskunft ist nur **2 Wochen** gültig (Leitungsnetz
   ändert sich laufend) — **nicht** auf Vorrat bestellen, sondern erst kurz vor tatsächlichem
   Bedarf (Baugrube/Sondierung/Werkleitungsplanung).

## 3. Rechtliche/technische Nutzungsbestimmungen (EKZ-Merkblatt, übertragbares Muster)

- Plandaten dienen **ausschliesslich** der Abklärung/Ortung der Leitungslage — keine anderen
  Zwecke.
- **Gültigkeitsdauer 2 Wochen** ab Erstellung der Planauskunft (EKZ); Swisscom-Netzauskunft
  dagegen **3 Monate** gültig (unterschiedliche Praxis je Betreiber — vor Verwendung immer das
  Ausstellungsdatum auf dem Plot prüfen).
- Daten entsprechen dem **Dokumentationsstand zum Ausstellungszeitpunkt**, keine Garantie für
  spätere Aktualität; **genaue Tiefenlage muss vor Ort sondiert werden** (Swisscom-Hinweis:
  nicht eingemessene Hausanschlussleitungen sind nur ungenau eingezeichnet).
- Nutzung **nur durch den anfragenden Interessenten** für das konkrete Projekt — Weitergabe an
  Dritte untersagt.
- Ausdruck **muss farbig** erfolgen und farbig verwendet werden — bei Schwarz-Weiss-Ausdrucken
  lehnt der Betreiber jede Haftung ab (Sicherheitsrelevanz: Leitungsarten sind farblich codiert).
- Bei Schäden während der Bauausführung: **sofortige Meldung** an die im Plan angegebene Nummer
  Pflicht (Gefahrenminimierung).
- **Warnhinweis Stromschlag** (Swisscom-Beispiel): Kupferkabel können mit bis zu **190 Volt DC**
  unter Spannung stehen — auch bei Kommunikationsleitungen nicht unterschätzen.
- **Datenmodell-Norm:** die Leitungsdaten folgen **SIA GEO 405** (Leitungskataster-Datenmodell) —
  Fundstelle für den CAD-/GIS-Datenaustausch mit Fachplanern.

## 4. Datenformat und Massstab

- EKZ: Planauskunft-Plot als **PDF-Plan**, farbig, mit separater Symbol-Legende. Projektierte
  (noch nicht realisierte) Gebäude werden **blau** dargestellt — auf solche Objekte darf **nicht**
  eingemessen werden.
- Swisscom: **Netzauskunft** als PDF-Plot, Massstab typ. **1:200**, Zentrumskoordinate + Perimeter
  angegeben, Gültigkeit 3 Monate.
- Sunrise UPC: online abrufbare Katasterauskunft je Region (~~`upc.ch/leitungskataster`~~ —
  **nicht mehr erreichbar**, siehe Kasten unten), analoges Prinzip.

> ⚠ **`upc.ch` ist unerreichbar — Bezug nur noch über Sunrise (gemessen 01.08.2026).**
> Das TLS-Zertifikat von `www.upc.ch` (CN `www.upc.ch`, SAN u.a. `upc.ch`) ist am
> **29.06.2026 abgelaufen**; `https://` bricht damit ab, `http://` antwortet nicht.
> `leitungskataster.upc.ch` liefert **HTTP 403 — auch im echten Browser**, ist also
> **keine** Bot-Sperre, sondern eine abgeschaltete Ressource. Betreiber ist nach der
> Fusion die **Sunrise** (`www.sunrise.ch`, 200). Ein direkter Nachfolge-URL für den
> Leitungskataster ist **nicht belegt** und wird hier bewusst nicht behauptet — die
> Auskunft ist über den Sunrise-Kundendienst/Business-Kontakt anzufordern.
> (Schliesst K65; Wartungslauf 01 hatte den Fall zu Recht offen gelassen, weil eine
> Bot-Sperre wie ein Ausfall aussieht — die Browser-Gegenprüfung entscheidet.)

## 5. Automatisierbarkeit — bewusst (noch) kein Connector

Im Gegensatz zu OEREB/Zonenplan/Baulinien/GWR (alle über `geo-zh.mjs`/`geo-sz.mjs` login-frei
automatisiert) ist der Werkleitungskataster **login-pflichtig, betreiberspezifisch und ohne
öffentliche REST-/WFS-Schnittstelle** — eine Automatisierung würde ein Nutzerkonto je Betreiber
und vermutlich eine Portal-Interaktion (kein offenes API) voraussetzen. Diese Lektion hält daher
bewusst **keinen** Connector-Anspruch fest, sondern dokumentiert den validierten **manuellen**
Ablauf — Status `emerging`, weil real erprobt (Fall Reckholdern), aber nicht automatisierbar im
bisherigen Connector-Sinn.

## 6. Bezug für die Standard-Checkliste "neue Parzelle"

Ergänzung zu [[kartenportale-grundlagen-checkliste-neue-parzelle]] (M1): der Werkleitungskataster
gehört **nicht** zu den 8 automatisiert beziehbaren Pflicht-Grundlagen, ist aber vor **Baueingabe/
Ausführung** (nicht schon im Vorprojekt/Machbarkeit) ein Pflichtschritt — insbesondere bei
Tiefgaragen/Aushub (Querbezug [[recht-norm-tiefgarage-erschliessung]]) und Hausanschlussplanung.
Empfehlung: Anfrage bei EKZ (oder zuständigem Gemeindewerk) + Swisscom + Sunrise-UPC parallel
stellen, sobald das Projekt Ausführungsreife erreicht — wegen der kurzen Gültigkeit (2 Wochen
EKZ) nicht früher.

## 7. SZ-Fall: EW Lachen AG — Wasser/Gas/Fernwaerme/Kanalisation Bezirk Einsiedeln (Run 27, 2026-07-13)

Realer JANS-Bezug (Perimeter KTN 3301 Einsiedeln, Reckholdernstrasse Willerzell, 17.11.2023)
zeigt den Kt.-SZ-Ablauf für die Sparten, die EKZ/Swisscom/Sunrise **nicht** abdecken. Anders als
in Kt. ZH gibt es hier **kein Web-Bestellportal** — die Bestellung läuft **per E-Mail**:

1. **Bestellformular auf der Betreiber-Website** (`ewlachen.ch/gis-fachstelle/werkleitungsbestellung/
   werkleitungsbestellung-einsiedeln`) erzeugt eine formatierte **E-Mail an `gisfachstelle@ewlachen.ch`**
   mit Projektbezeichnung, gewünschtem Ausschnitt (KTN-Nummer), den benötigten Medien
   (**Wasser/Gas/Fernwaerme/Kanalisation**, mehrfach wählbar), Zielformat (**DXF/DWG inkl. PDF**,
   Kosten nach Aufwand) sowie Liefer- und Rechnungsadresse.
2. **Antwort der GIS-Fachstelle** (real: gleicher Tag) mit den Daten als **DWG- und PDF-Anhang**,
   inkl. Haftungsausschluss: die Lieferung enthält nur die **Abwasserleitungen**, die dem
   Elektrizitätswerk/der Gemeinde bekannt sind — für Gas/Fernwaerme/Wasser waren **im konkreten
   Perimeter keine Daten vorhanden**. Für weitergehende Abwasserleitungsangaben (evtl. Archivbestand)
   wird auf die **Abteilung Infrastruktur des Bezirks Einsiedeln** verwiesen (cc im realen Mail-Fall).
3. **Kein Gültigkeits-/Formathinweis** wie bei EKZ (2 Wochen) oder Swisscom (3 Monate) im
   EW-Lachen-Antwortmail ersichtlich — offen, ob eine Gültigkeitsfrist analog gilt (Frage in
   `wiki/QUESTIONS.md` vorzumerken).

**Zusatzfund im selben Ordner — Liegenschaftsentwässerung (Bezirk Einsiedeln, Merkblatt
November 2021):** direkt anschliessend an die Werkleitungsauskunft verlangt der Bezirk Einsiedeln
bei jeder Baueingabe einen **Entwässerungsplan nach SIA-Norm SN 592 000 «Liegenschaftsentwässerung»**
mit u.a. Abwasserleitungen/Schaechten/Rinnen/Abscheideanlagen, Dimensionierung/Materialisierung/
Gefälle der Leitungen, Versickerungs-/Retentionsanlagen und Anschlusspunkten an die öffentliche
Kanalisation. Rechtsgrundlage: GSchG/GSchV + das kommunale **Kanalisations- und
Entwässerungsreglement (KER, SRE 430.100, Bezirk Einsiedeln 28.02.2008)**. Kernpunkte:

- **Dachwasser ist grundsätzlich zu versickern** (Art. 7 Abs. 2 GSchG), Versickerungsmöglichkeit
  zwingend durch eine Fachperson (Hydrogeologe) nachzuweisen; ist Versickerung nicht möglich,
  retendierte Einleitung ins Oberflächengewässer — **beides kantonal bewilligungspflichtig**.
- **Anschlussgebühr** wird einmalig über das **Nettogebäudevolumen (NGV)** berechnet (§ 24 KER),
  zwei zulässige Berechnungsvarianten nach **SIA 416 (SN 504 416)**: Variante A = Gebäudevolumen
  GV (Ziff. 5/Figur 8) abzüglich eines prozentualen Konstruktionsvolumenanteils je Ansatzgruppe
  (EFH/MFH/Büro/Gewerbe/Hotel/öffentliche Baute 15%, Industrie/Nebenbaute 8%, Lagerhalle/Tief-
  oder Sammelgarage > 60 m² 8%); Variante B = direkt das Nettogebäudevolumen NGV (Ziff. 5.1/
  Figur 9) aus Nutz-/Verkehrs-/Funktionsvolumen. Berechnung + Schemaplan sind **tabellarisch
  einzureichen**.
- **Revidierte Ausführungspläne** der Liegenschaftsentwässerung sind spätestens mit der Meldung
  zur Schlussabnahme in **2-facher Papierform + georeferenziert elektronisch (PDF + DWG/DXF)**
  einzureichen (§ 19 Abs. 2 lit. b KER); die Schlussabnahme selbst verlangt vorgängige
  Dichtheitsprüfungsprotokolle.

Dieser Fund gehört inhaltlich zur Entwässerungsplanung (nicht zum Werkleitungskataster im engeren
Sinn), wird aber hier dokumentiert, weil er im selben SharePoint-Ordner und Bestellvorgang anfiel —
Querbezug zu [[recht-norm-abstandsvorschriften-wald-gewaesser]] (Gewässerraum-Einleitung) und
zu einer künftigen SIA-Normen-Sammelstelle für Entwässerung. Status `emerging`: ein einzelner,
aber vollständig dokumentierter realer Fall (Bezirk Einsiedeln), nicht auf andere SZ-Gemeinden

**Ergänzung Run 61 (2026-07-25):** neben dem E-Mail-Bezugsweg EW Lachen AG führt das
**Bezirks-GIS `gis.bezirkeinsiedeln.ch`** (siehe [[kartenportale-geoportale-uebersicht]]
§Bezirk-Ebene) unter dem Druckprodukt «Infrastruktur» einen eigenen, sofort als PDF ausdruckbaren
**«Leitungskataster Gde»** mit 7-Sparten-Legende (Abwasser/Kabelkommunikation/Wasser/Gas/
Elektrizität/Öffentliche Beleuchtung/Fernwärme) — ein schneller, unverbindlicher Erstüberblick
ohne Bestellung/Wartezeit («Für die Richtigkeit und Aktualität der Daten wird keine Garantie
übernommen»). **Ausdrücklich getrennt davon:** das kommunale White-Label-Portal `geoportal.ch`
(Betreiber GEOINFO Applications AG, Service Desk 058 580 40 60) führt **keinen** Leitungskataster
für Einsiedeln und verweist bei Anfragen direkt auf EW Lachen AG — beide Portale liegen zwar im
selben SharePoint-Projektordner, sind aber technisch unabhängige Systeme. Für die Baueingabe
bleibt die betreiberspezifische Auskunft (EKZ/Swisscom/EW Lachen) massgebend; das Bezirks-GIS-
Druckprodukt eignet sich nur für eine erste Groborientierung.
verifiziert.
