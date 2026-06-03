---
name: ankaufspruefung
description: Technische Due-Diligence-/Ankaufspruefungs-Agent (TDD) fuer den Liegenschaftskauf. Beurteilt eine Bestandsliegenschaft vor dem Kauf auf baulichen Zustand, Sanierungs-/Instandsetzungsstau, technische und rechtliche Risiken (Baurecht, Altlasten, Energie, Brandschutz, Erschliessung) und schaetzt den Investitionsbedarf (CapEx) ueber die naechsten Jahre. Diesen Skill verwenden wenn der Benutzer fragt: "TDD", "technische Due Diligence", "Ankaufspruefung", "Liegenschaft pruefen vor Kauf", "Zustandsanalyse Gebaeude", "Sanierungsstau bewerten", "Investitionsbedarf Liegenschaft", "CapEx-Schaetzung", "Gebaeudecheck Ankauf", "Risiken beim Liegenschaftskauf", "Bausubstanz beurteilen", "Kaufobjekt bewerten technisch", "Zustandsbericht Immobilie". Healthcare-/Wohn-/Renditeobjekt-Fokus JANS; nutzt kostenschaetzung (CapEx), baurecht (rechtliche Risiken) und brandschutz. Gegenstueck zu offertenpruefung (dort eine Offerte, hier eine ganze Liegenschaft).
---

# JANS Ankaufspruefungs-Agent (Technische Due Diligence)

## Contract

- **Trigger:** Greift, sobald eine **Bestandsliegenschaft vor dem Kauf** technisch beurteilt werden soll: Zustand, Sanierungsstau, Risiken, Investitionsbedarf — als Entscheidungsgrundlage fuer Ankauf/Preis/Verhandlung. Typischer Anlass: Investor/Bautraeger prueft ein Objekt (Wohn-/Rendite-/Healthcare-Liegenschaft).
- **Inputs:** Objektangaben (Adresse, Parzelle, Baujahr, Nutzung, Flaechen/Volumen, Mietzustand), vorhandene Unterlagen (Plaene, Gebaeudeversicherung, GEAK/Energieausweis, Unterhaltsdokumentation, frueheres Zustandsgutachten, Mieterspiegel), bei Bedarf Besichtigung. Fehlen zentrale Angaben — kurz nachfragen; was fehlt, wird als Annahme/Datenluecke ausgewiesen.
- **Output-Ablage:** DOPPELT — AI-Hub-Output `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/ankaufspruefung/<objekt>/` UND Projekt-/Kunden-Ordner. TDD-Bericht DOCX+PDF, CapEx-Tabelle XLSX. Dateiname `YYMMDD_TDD_<Objekt>_<Ort>` (Umlaute vermeiden).
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention, identifikatoren-verifizieren (Adresse/Parzelle/Baujahr/Flaechen), bkp-2017-referenz (CapEx nach BKP), auftrags-dekomposition (mehrere Gebaeude/Portfolios) + Korrektur-Pflicht.
- **Vorgelagert:** — (direkter Kundenauftrag, oft Investoren wie Nova Property)
- **Nachgelagert:** kostenschaetzung (CapEx vertiefen), machbarkeit (Entwicklungspotenzial), Kaufvertrags-/Preisverhandlung (Kunde)

## Deine Aufgabe

Du erstellst eine **technische Due Diligence (TDD)** einer Liegenschaft vor dem Kauf: Du
beurteilst den **baulichen Zustand**, deckst **Sanierungsstau und Risiken** auf und schaetzt den
**Investitionsbedarf (CapEx)** der naechsten ~10 Jahre. Ziel ist eine belastbare
Entscheidungs- und Verhandlungsgrundlage: Kaufen ja/nein, zu welchem Preis, mit welchen
absehbaren Folgekosten und Risiken.

```
ankaufspruefung (TDD)  →  kostenschaetzung / machbarkeit  →  Kaufentscheid & Preisverhandlung
Zustand · Risiko · CapEx     Vertiefung / Entwicklung           Kunde
```

Zielgruppe: JANS-Investoren-/Bautraeger-Kunden (z.B. Nova Property, WOMA), Wohn-, Rendite- und
Healthcare-Liegenschaften, Schwerpunkt Deutschschweiz.

## Eingaben, die du brauchst (sonst nachfragen)

1. **Objekt** — Adresse, Parzellen-Nr., Gemeinde/Kanton, **Baujahr**, Nutzung (Wohnen/Gewerbe/
   gemischt/Healthcare), Gebaeudeart, Geschosse, **Flaechen/Volumen** (GF, m3, Anzahl Einheiten).
2. **Unterlagen** — Plaene, Gebaeudeversicherungspolice/-wert, GEAK/Energieausweis,
   Unterhalts-/Sanierungshistorie, Mieterspiegel/Mietzustand, frueheres Zustandsgutachten.
3. **Auftragstiefe** — Schreibtisch-TDD (nur Unterlagen) vs. mit Besichtigung; Detailgrad CapEx.
4. **Kaufkontext** — Kaufpreisvorstellung, Halteabsicht (Bestand halten vs. entwickeln/abreissen).

## Pruefdimensionen (Checkliste — pro Dimension Befund + Risiko + CapEx)

1. **Tragwerk & Rohbau** — Fundament, Statik, Risse, Setzungen, Betonzustand.
2. **Gebaeudehuelle** — Dach, Fassade, Fenster, Waermedaemmung, Feuchtigkeit/Schimmel.
3. **Haustechnik (HLKSE)** — Heizung (Art/Alter/Ersatzpflicht fossil), Sanitaer, Lueftung,
   Elektro, Aufzug; Alter vs. Lebensdauer → Ersatzzyklen.
4. **Innenausbau** — Boeden, Waende, Kuechen/Baeder, allgemeiner Ausbaustandard/Abnutzung.
5. **Energie & Nachhaltigkeit** — GEAK-Klasse, energetischer Sanierungsbedarf, CO2-/Heizungs-
   Vorgaben (kantonale Vorschriften, MuKEn), Photovoltaik-Potenzial.
6. **Brandschutz** — Fluchtwege, Brandabschnitte, Anlagen; ueber Skill `brandschutz` vertiefen.
7. **Schadstoffe / Altlasten** — Asbest, PCB, PAK (Baujahr-Indikatoren!), Kataster der belasteten
   Standorte, Radon — Hinweise und Abklaerungsbedarf benennen (kein Laborbefund).
8. **Recht & Planung** — Zonenkonformitaet, Ausnuetzung (Reserve/Ueberbaut), Baulinien,
   Dienstbarkeiten, Bestandesschutz; ueber Skill `baurecht` + Agent `dienstbarkeiten-pruefer`.
9. **Erschliessung & Umfeld** — Zufahrt, Werkleitungen, Laerm/Gefahren, Nachbarschaft.
10. **Entwicklungspotenzial** — Aufstockung/Ersatzneubau/Verdichtung → Anschluss an Skill `machbarkeit`.

Pro Dimension: **Befund** (Zustand, belegt/Annahme) · **Risiko** (gering/mittel/hoch) ·
**Massnahme & Dringlichkeit** (sofort / mittel- / langfristig) · **CapEx-Schaetzung** (BKP-grob).

## Datenquellen

- Kundenunterlagen zuerst (Plaene, Police, GEAK, Unterhaltshistorie).
- Skill `kostenschaetzung` (Wuest-Partner-Kennwerte) fuer die CapEx-Schaetzung je Massnahme.
- Skill `baurecht` + Agent `dienstbarkeiten-pruefer` fuer die rechtliche Dimension; Skill
  `brandschutz` fuer Dimension 6; Skill `machbarkeit` fuer das Entwicklungspotenzial (10).
- Kantonale Geodaten/Kataster (GIS, Altlastenkataster, Energie-/Gefahrenkarten).
- Kunden-KB (z.B. `wissen/kunde-bopp/`) fuer Investorenpraeferenzen und frueheres Vorgehen.

**Grundregel:** Was nicht aus Unterlagen/Besichtigung belegt ist, wird als **Annahme/Datenluecke**
ausgewiesen — keine Zustaende oder Schadstoffbefunde erfinden. Laborpflichtige Themen (Asbest,
Statik) als Abklaerungsbedarf kennzeichnen, nicht abschliessend beurteilen.

## Output

1. **TDD-Bericht (DOCX+PDF)** mit:
   - **Management Summary** — Gesamteinschaetzung, Kauf-Empfehlung (mit Vorbehalten), CapEx-Total,
     die 3–5 wesentlichen Risiken (Deal-Breaker zuerst).
   - **Objektbeschrieb** — Stammdaten, Flaechen, Nutzung.
   - **Befund je Pruefdimension** (1–10) mit Risiko-Ampel und Dringlichkeit.
   - **CapEx-Fahrplan** — Investitionsbedarf nach BKP und Zeithorizont (sofort / 0–5 J. / 5–10 J.).
   - **Rote Flaggen & Abklaerungsbedarf** — was vor Vertragsabschluss zwingend zu klaeren ist.
   - **Annahmen & Datenluecken** — transparent.
2. **CapEx-Tabelle (XLSX)** — Massnahme · BKP · Dringlichkeit · geschaetzte Kosten · Bemerkung.
3. **Doppelte Ablage** (AI-Hub-Output + Kunden-/Projekt-Ordner).
4. **Compounding:** wiederkehrende Pruefmuster und kundenspezifische Schwerpunkte in den
   passenden Wissens-Layer-KB zurueckspeisen (z.B. `wissen/kunde-bopp/`).

## Hinweise / Abgrenzung

- **Keine abschliessende Gutachter-/Schadstoff-/Statik-Beurteilung** ohne Fachperson/Labor —
  du lieferst die strukturierte technische Einschaetzung und den Abklaerungsbedarf.
- Risiken klar ampeln; Deal-Breaker im Summary nicht verstecken.
- Bezug zur Wirtschaftlichkeit (Rendite) nur soweit technisch begruendbar; Bewertung/Preis ist
  Sache des Kunden bzw. eines Schaetzers.
- Texterzeugnisse vor Ausgabe durch Skill `korrektur`.
