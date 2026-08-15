---
name: energie
description: Energie-Agent (Router) ueber die JANS-Energie-Wissensbasis — beantwortet Bauherren- und Planerfragen zu Energie, Gebaeudehuelle, Waermeerzeugung, Solar/PV, Lueftung, Foerderung und Energierecht ZH/SZ belegt mit Quelle und Datenstand aus der KB wissen/energie (196+ belegte Kernfragen, 212+ Destillate, 30 Themenartikel). Diesen Skill verwenden wenn der Benutzer fragt - "U-Wert", "Heizwaermebedarf SIA 380/1", "welche Heizung", "Waermepumpe JAZ", "lohnt sich PV", "Eigenverbrauch/ZEV/LEG", "Batteriespeicher", "Minergie", "GEAK", "Energienachweis EN-ZH/EVEN", "Foerderung Energie ZH/SZ", "MuKEn 2025", "Solarpflicht", "graue Energie/THGE", "Komfortlueftung", "sommerlicher Waermeschutz", "Abwaermenutzung", "Daemmstoffe/Innendaemmung", "Fenster Uw/g-Wert", "Elektroheizungs-Ersatzpflicht", "Erdsonden-Bewilligung", "was kostet mich das energetisch" - und wenn ein anderer Skill eine Energie-Aussage belegen muss. Faktenbasis KB wissen/energie; Vorlaeufer war der Umweg ueber planungsgrundlagen (PL-04).
---

# JANS Energie-Agent (Router über die Energie-Wissensbasis)

Freigegeben durch Raphael am 03.08.2026 (Meta-Punkt M2, seit Run 45 offen). Grund: Die KB
`wissen/energie` ist mit 212+ Destillaten, 196+ belegten Kernfragen und 30 Themenartikeln die
grösste Wissensbasis des Hub und weit über dem Punkt, an dem der Umweg über
`planungsgrundlagen` (PL-04) noch trug.

## Contract

- **Trigger:** Jede Energie-, Gebäudehüllen-, Haustechnik- oder Energierechtsfrage — von
  Raphael, aus einer Bauherren-Rückfrage oder aus einem anderen Skill heraus.
- **Inputs:** Fachfrage, optional Projektkontext (Kanton, Neubau/Bestand, Gebäudekategorie,
  Bauherrschaft ja/nein).
- **Output:** Antwort mit **Quelle + Datenstand** und Reife-Vermerk. Bei Bauherren-Adressat im
  Format der KB: Kurz-Antwort für den Bauherrn / fachliche Begründung / Quelle und Datenstand.
- **Nicht-Ziel:** Rechtsberatung; Ersatz des Energienachweis-Fachplaners; Wiedergabe ganzer
  Norm-Passagen (Urheberrecht — nur kurze Zitate mit Fundstelle).
- **Abhängige Rules:** `normen-referenz` (Norm-Fundstellen), `wissens-bibliothekar`
  (Compounding-Pflicht Schritt 5), `wissens-ruecklauf` (Rücklauf nach Deliverables),
  `identifikatoren-verifizieren`, `umlaute-konvention`, `dokument-layout-standard`,
  `projekt-ablage-stand` (projektgebundene Ablage), Korrektur-Pflicht (`korrektur`).
- **Vorgelagert:** `planungsgrundlagen` (Beschaffung der PL-04-Grundlagen und des
  Objektkontexts; führte dieses Feld bis 03.08.2026), `baurecht` (Erlasswortlaut ZH/SZ),
  `normen` (Norm-Fundstellen).
- **Nachgelagert:** `machbarkeit`, `machbarkeit-studio`, `kostenschaetzung`,
  `grobkosten-onepager`, `ankaufspruefung`, `immobilienbewertung`,
  `healthcare-wirtschaftlichkeit`, `wettbewerb`, `auflagebereinigung` (belegen ihre
  Energie-Aussagen hier); Agent `energie-berater` als Fan-out; Service S6
  (`services/KATALOG.md`).

## Router (immer in dieser Reihenfolge)

1. **BAUHERREN-FAQ zuerst:** `wissen/energie/wiki/BAUHERREN-FAQ.md` — 196+ Kernfragen, jede mit
   Quelle und Datenstand. Die meisten Fragen sind hier bereits beantwortet. Direkt zitieren.
2. **Themenartikel:** `wissen/energie/wiki/INDEX.md` → passender der 30 Artikel (z.B.
   `heizleistung-und-waermeerzeuger`, `pv-eigenverbrauch-zev`, `abwaermenutzung-gebaeude`,
   `foerderung-energie-zh` / `-sz`, `komfortlueftung`, `graue-energie`, `geak-gebaeudeenergieausweis`).
3. **Destillat:** `wissen/energie/destillate/<slug>.md` über `destillate/INDEX.md` — dort stehen
   die Zahlen mit Fundstelle und Statusvermerk.
4. **Neu recherchieren:** Erst wenn 1–3 nichts hergeben. Dann **amtliche Primärquelle** suchen
   (AWEL/BFE/EnDK/EnFK/SIA/VKF), per `curl -A Mozilla` + `pdftotext` bzw. Read mit `pages:` im
   Volltext lesen — nicht aus Suchtreffer-Zusammenfassungen zitieren.
5. **Compounding-Pflicht:** Nach Schritt 4 das Destillat anlegen, FAQ-Antwort ergänzen und
   `destillate/INDEX.md`, `wiki/INDEX.md`, `raw/_INGESTED.md`, `CHANGELOG.md` nachführen
   (Rule `wissens-bibliothekar`).
6. **Nicht im Bestand:** ehrlich als Negativbefund sagen, in `wiki/QUESTIONS.md` eintragen —
   **nie eine Zahl raten**. Normenbeschaffung ist Raphaels Entscheid.

## Antwort-Standard (die vier eisernen Regeln der KB)

- **Nie erfinden.** Kein λ-/U-Wert, keine JAZ, kein Grenzwert, kein CHF-Fördersatz, kein
  Paragraf ohne Fundstelle. Ein ehrlicher Negativbefund ist ein vollwertiges Ergebnis.
- **Datenstand zwingend** (Jahr/Normausgabe/Abrufdatum). Energierecht und Förderung altern
  schnell: alles über 18 Monate mit ⚠ markieren.
- **Ausgabe mitprüfen.** Ein Negativbefund ist nur so gut wie die Ausgabe, an der er erhoben
  wurde (Lehre Run 116: die MuKEn-2-GWh-Klausel galt als widerlegt, weil die Ausgabe 2014
  statt 2025 gelesen worden war).
- **Reife-Ampel:** `established` (primärquellen-verifiziert) · `emerging` · `speculative` —
  den Status der Quelle in der Antwort mittragen, nicht glätten.

## Kantonaler Fokus

**ZH und SZ** sind vollständig erschlossen (Fördersätze, Energienachweis/EVEN, Elektroheizungs-
Ersatzpflicht, Erdsonden-/Grundwasser-Bewilligung, Fernwärme, VHKA, Denkmalschutz). Für andere
Kantone ist die Abdeckung dünn — das gehört gesagt, statt ZH-Regeln stillschweigend zu
übertragen. Häufigste Falle: eine ZH-Norm auf ein SZ-Projekt anwenden (die Kantone weichen bei
Schwellenwerten und Verfahren regelmässig ab).

## Arbeitsteilung mit den führenden KBs

Diese KB führt die **Fachphysik und die Bauherren-Antwort**. Nicht hier fortschreiben:

- **Erlasswortlaut ZH/SZ** (§§-Nummer, Absatz, Fassungsstand) führt `baurecht`
  (`wissen/baurecht/raw/`) — von dort zitieren.
- **Nachweis-Verfahren, Formulare, EN-Nummern** führt `planungsgrundlagen`
  (`wiki/energie-energienachweis-zh-formulare`).
- **Norm-Fundstellen** (SIA/VKF, Ziffer und Ausgabe) führt `normen` (Rule `normen-referenz`).
- **Brandschutz** (Solar, Batteriespeicher, Küchenabluft) führt `brandschutz` — hier nur
  verlinken, nicht duplizieren.

## Verknüpfungen

- **KB:** `wissen/energie/` — `CLAUDE.md` dort zuerst lesen; täglicher Lern-Loop über den
  Scheduled Task `energie-training` (alleiniger Taktgeber seit 03.08.2026), Programm
  `training/PROGRAMM.md`.
- **Agent:** `energie-berater` (PV-/U-Wert-/Nachweis-Fan-out, bisher über `planungsgrundlagen`).
- **Fach-Skills, die hier belegen:** `machbarkeit`, `machbarkeit-studio`, `kostenschaetzung`,
  `grobkosten-onepager`, `ankaufspruefung`, `immobilienbewertung` (energetischer Zustand),
  `healthcare-wirtschaftlichkeit` (Betriebsenergie), `wettbewerb`, `auflagebereinigung`,
  `stockwerkeigentum` (Heizungsersatz als Ausloeser des Sanierungsbeschlusses — Rueckkante
  am 13.08.2026 dort gesetzt, hier am selben Tag nachgezogen; Synergie-Lauf 05).
- **Bauleitungs-Skills, die den bauoekologischen Beschaffungsstrang hier belegen** (Kante
  beidseitig gesetzt 15.08.2026, Synergie-Lauf 08): `ausschreibung` (Submissionsbedingungen,
  ECO-BKP-Reihe nach BKP-Code, Anforderung als Hauptposition statt Variante), `werkvertrag`
  (Ueberbindung an die Unternehmung: Warendeklaration mit Zustimmungsvorbehalt, Kostenfolge),
  `unternehmerkontrolle` (Baustellenkontrolle der Materialvorgaben). Fuehrender Artikel:
  `wissen/energie/wiki/oekologische-materialvorgaben-beschaffung.md`. ⚠ Alterskorpus
  2006/2008 — uebertragbar ist die Mechanik, nicht der Wortlaut.
- **Ablage:** Bauherren-Reports nach `wissen/energie/outputs/`; projektgebundene Erzeugnisse in
  den Projektordner (Rule `projekt-ablage-stand`).
