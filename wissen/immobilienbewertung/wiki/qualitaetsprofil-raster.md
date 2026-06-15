---
title: Qualitaetsprofil-Raster — Standard / Zustand / Mikrolage (1–5)
status: established
last_updated: 2026-06-15
sources: [WP-Hedonic-Beispielbericht Langenthal (Qualitaetsprofil S. 4, Skalen + Sub-Faktoren), Schaetzerhandbuch SVKG/SEK/SVIT 2012, SIA 416, Entscheid Raphael Jans 15.06.2026]
links: [[svs-svkg-standard]], [[realwert-sachwert]], [[bewertungsverfahren-ueberblick]]
---

# Qualitaetsprofil-Raster — Standard / Zustand / Mikrolage

Das Raster macht den **Augenschein** mess- und vergleichbar. Es ist WP-kompatibel (gleiche
1–5-Skalen, damit Resultate direkt gegen einen WP-Modellwert plausibilisiert werden können), wird
aber durch **eigene Beobachtung vor Ort** gefüllt statt durch Kunden-Selbstauskunft. Speist
direkt den Realwert-Abschlag (Zustand/Sanierungsstau) und den Standard-Zuschlag.

## 1. Standard — Skala 1.0 (dürftig) … 5.0 (luxuriös)

Qualitative Einschätzung von Raumverhältnissen, Materialisierung und Haustechnik.

| Sub-Faktor | Erfassung | Skala |
|---|---|---|
| Aussenbereich/Umgebung | Gartengestaltung, Beläge, Einfriedung | Lowlevel / Basic / Highlevel |
| Wärme — Erzeugung | WP / Öl / Gas / Fernwärme / Pellets … | (Typ) |
| Wärme — Abgabe | Bodenheizung / Radiatoren | (Typ) |
| Grundrissqualität | Raumhöhe, Grundriss, mittlere Zimmergrösse | Lowlevel / Basic / Medium / Highlevel / Premium |
| Küche | Ausstattung, Materialisierung, Anzahl Elemente | Lowlevel / Basic (21–40k) / Highlevel / Premium |
| Bodenbeläge | Laminat/Kork/Textil → Parkett/Naturstein | Lowlevel / Basic / Highlevel / Premium |
| Nasszellen | Materialisierung, Anzahl, Typ (Familienbad/Dusche/Gäste-WC) | Lowlevel / Basic (11–30k) / Highlevel / Premium |
| Weitere Ausstattung | Cheminée, Sicherheitssystem, Pool, Lift … | (Aufzählung) |

Modellwert-Beispiel WP-Bericht: **3.6 — leicht überdurchschnittlich**.

## 2. Zustand — Skala 1.0 (erneuerungsbedürftig) … 5.0 (neuwertig)

Zustand von Aussenhülle, Innerem und Haustechnik. Unterscheide **Modellwert** (gewichtet) vs.
**berechneter Zustand ohne Sanierungen** (Alterswert) — die Differenz zeigt den Sanierungseffekt.

Sanierungs-/Zustandserfassung je Bauteil (Jahr · Umfang · Restnutzungsdauer · Sanierungsbedarf CHF):

- **Rohbau/Tragwerk**
- **Gebäudehülle:** Steildach/Flachdach · Fassade, Balkone · Fenster
- **Innenausbau:** Küche · Bäder/Sanitär · Oberflächen · übriger Innenausbau
- **Haustechnik:** Wärmeerzeugung · Wärmeabgabe · Elektro/Lüftung/Lift
- **Umgebungsarbeiten**

→ Der aufsummierte Sanierungsstau ist der **Abschlag im Realwert** ([[realwert-sachwert]]) und Input
für den Skill `ankaufspruefung` (TDD). Restnutzungsdauer je Bauteil dokumentieren.

Beispiel WP-Bericht: Modellwert **3.2 — intakt**, berechnet ohne Sanierungen **2.7**.

## 3. Mikrolage — Skala 1.0 (sehr schlecht) … 5.0 (exzellent)

Lage **relativ zur Makrolage** (Gemeinde). Faktoren:

| Gruppe | Faktoren |
|---|---|
| Gelände | Hangneigung, Exposition, Sonnenscheindauer Sommer/Winter, See-/Bergsicht |
| Infrastruktur | Distanz Zentrum/Schule/Einkauf/Haltestelle, **ÖV-Güteklasse (A–D)**, Erholung, See, Fluss |
| Immissionen | Eisenbahn dB(A) Tag/Nacht, Strassen dB(A) Tag/Nacht, Distanz Hauptstrasse/Bahn/Sendeanlage/HSL |
| Zonierung | Bauzone gemäss BZO |

Distanzen/Immissionen automatisierbar via `geo-zh.mjs` / swisstopo / Lärmkataster (Phase 2).
Beispiel WP-Bericht: **3.0 — durchschnittlich**.

## Makrolage (separat)

Qualität des kommunalen Immobilienmarktes (Gemeinderating, Skala 1–5). Basis: UBS Fact Sheets /
Wüest-Benchmarks (siehe [[datenquellen-registry]]) + Standort-/Marktrating. Beispiel Langenthal: **3.1**.

## Nutzung im Gutachten

1. Vor Ort je Faktor beobachten und einstufen (Aufnahmeblatt `tools/aufnahmeblatt`).
2. Standard- und Zustands-Wert → Realwert-Zu-/Abschläge.
3. Mikro-/Makrolage → Lageklasse/Vergleichswert ([[lageklasse-landwertanteil]]).
4. Skalenwerte im Gutachten als Profil darstellen (Balken analog WP) — beobachtet, nicht deklariert.
