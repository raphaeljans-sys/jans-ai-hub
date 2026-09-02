---
title: "Dispositionsvorlagen: revidierbares Gliederungsskelett mit Kapitelabsichten im Klartext"
status: emerging
last_updated: 2026-08-30
sources:
  - "/Volumes/daten/02_Architektur_Archiv/02_Architektur_Vermitteln/08_Wissenschaftliches_Arbeiten/Dissposition/vorlage/repository.pdf (Studienarbeit HTA Luzern, Disposition «Architekturvisualisierung Tag und Nacht», Wettbewerb Stadion Allmend, vollständig gelesen 30.08.2026)"
  - "/Volumes/daten/02_Architektur_Archiv/02_Architektur_Vermitteln/08_Wissenschaftliches_Arbeiten/Dissposition/vorlage/vorgabe disposition.doc (Studienarbeit HTA Luzern, Disposition «Architektur und ihre Repräsentation in der Kunst» zu Zaha Hadid, Osusky/Filliger, 06.-28.01.2005, vollständig gelesen 30.08.2026 via textutil-Konvertierung)"
  - "raw/inventar/archiv-fachwissen__02_Architektur_Vermitteln.md"
links:
  - "[[wissenschaftliches-arbeiten-aufbau-zitierregeln-arbeitsphasen]]"
  - "[[INDEX]]"
---

# Dispositionsvorlagen aus studentischen Arbeiten

## Kontext

Zwei reale Dispositionen (Gliederungsentwürfe vor der eigentlichen Schreibarbeit) aus
Studienarbeiten der HTA Luzern, keine abstrakten Vorlagen, sondern ausgefüllte Beispiele zu
konkreten Themen (Architekturvisualisierung Tag/Nacht am Wettbewerb Stadion Allmend;
Bildsprache Zaha Hadids). Beide zeigen dasselbe Strukturprinzip, das der Leitfaden Imhof
(siehe [[wissenschaftliches-arbeiten-aufbau-zitierregeln-arbeitsphasen]]) als «Konzipieren
(Disposition)» beschreibt: eine so ausführliche wie mögliche Gliederung, in der zu jedem
Kapitel bereits die inhaltliche Absicht im Klartext notiert ist, nicht nur der Titel.

## Muster 1: Kapitelabsicht im Klartext statt nur Titel

Die Disposition zur Architekturvisualisierung («repository.pdf») zeigt das Prinzip
besonders klar: Jeder Gliederungspunkt trägt neben dem Titel eine Kurzbeschreibung dessen,
was inhaltlich hineingehört, inklusive Quellenverweise und offener Fragen. Beispiel aus dem
Hauptteil:

> «1.0 Kulturgeschichtlicher Überblick: (Text Werner Oechslin: Licht ein Gestaltungsmittel,
> siehe Daidalos Ausgabe, die ich Marc gegeben habe) Themen wären: Göttliches Licht, Licht in
> Raum holen, Licht- und Schatten Berechnungen, Illumination des Barocks, Übersinnliches
> Licht, Verzeichnung des Räumlichen»

Diese Form unterscheidet sich von einem reinen Inhaltsverzeichnis dadurch, dass sie schon
die Quelle, den Interviewpartner («2.0 Interview mit Philipp Schaerer, Konzepte heute»)
und teils den Bearbeitungsstand («falls Zeit knapp weglassen») festhält. Sie funktioniert
damit gleichzeitig als Recherche-Tracker und als Gliederungsentwurf.

## Muster 2: Revisionsdaten als eingebaute Versionskontrolle

Die Disposition zu Zaha Hadid trägt im Titelblock ein Feld für fortlaufende Revisionen:
«Datum: 06.01.2005, rev. 17.01.2005, rev. 28.01.2005». Diese einfache Konvention — jede
inhaltliche Überarbeitung der Disposition bekommt ein eigenes Datum im selben Dokument —
macht den Umbau der Gliederung im Projektverlauf nachvollziehbar, ohne dass dafür ein
separates Änderungsprotokoll nötig wäre. Beide Beispiele bestätigen, dass sich die
Disposition mit fortschreitender Arbeit ändert — das Gliedern, Neugliedern und Umgruppieren
gehört zur Bearbeitung des Themas, nicht zu einem einmaligen Startschritt.

## Gemeinsame Grundstruktur

Beide Dispositionen folgen derselben Dreiteilung: **Einleitung** (Einführungstext,
Begriffsklärung, Aufgabenstellung, Ausgangslage) → **Hauptteil** in nummerierten,
thematischen Blöcken mit Unterpunkten → **Fazit/Schlusswort** (Bestätigung oder Widerlegung
der eingangs formulierten Thesen, Ausblick), gefolgt vom Literatur- und Quellenverzeichnis.
Die Zaha-Hadid-Disposition schliesst dabei explizit mit der in der Einleitung gestellten
Frage («Inwiefern sind Zaha Hadids Skizzen als Kunst, inwiefern als architektonischer
Entwurf zu verstehen?») — ein Beleg für die im Leitfaden Imhof geforderte Harmonisierung
zwischen Einleitungsfrage und Schlusskapitel.

## Anwendbarkeit für JANS

Dieses Zweistufenmuster — Gliederungspunkt mit Kapitelabsicht im Klartext, plus
Revisionsdatum bei jeder inhaltlichen Überarbeitung — ist ein direkt übernehmbares
Scope-Management-Werkzeug für den Skill `studien-generator` und spiegelt die Spec-Methode
(Rule `spec-methode`) praktisch: Bevor ein Kapitel geschrieben wird, wird zuerst dessen
Absicht in einem Satz festgehalten, und jede spätere Planänderung ist am Datum ablesbar.
