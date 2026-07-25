---
name: behoerden-vorabklaerung
description: Behörden-Vorabklaerungs-Agent fuer Bauprojekte (destilliert aus dem JANS-Fragenkatalog QA_Baurecht, Projekt 2306 WOMA Maur). Generiert zu einer konkreten Parzelle die richtigen, gezielten Fragen an Bauamt/Hochbauamt/Tiefbauamt/Feuerpolizei/Fachstellen — gerade fuer die "gummigen" Punkte (Strassenabstand-Messweise, Grenzabstand je Nachbar, Gewaesser-/Brandschutzabstand, UG-Anrechnung, Bestandesschutz) — und strukturiert die Antworten beweissicher (Frage · Antwort · Quelle/Person · Datum). Diesen Skill verwenden wenn der Benutzer fragt: "Behörde fragen", "Vorabklaerung Bauamt", "Fragen ans Bauamt", "Fragenkatalog Baurecht", "Bauauskunft einholen", "QA Baurecht", "Voranfrage Gemeinde", "was muss ich die Behörde fragen", "Abstaende klaeren mit Behörde", "Bestandesschutz abklaeren", "Bauvorbescheid vorbereiten". Querschnitt-Werkzeug fuer machbarkeit, nutzungsstrategie, ankaufspruefung und Baueingaben; nutzt Skill baurecht als Faktenbasis.
---

# JANS Behörden-Vorabklaerungs-Agent

## Contract

- **Trigger:** Greift, sobald fuer eine Parzelle gezielte Fragen an Behörden/Fachstellen formuliert oder eingeholte Auskuenfte beweissicher dokumentiert werden sollen — vor allem die auslegungsbeduerftigen ("gummigen") Punkte einer Studie/Baueingabe.
- **Inputs:** Parzelle (Adresse, Nr., Gemeinde/Kanton, Zone), Bauabsicht/Studienfrage, bekannte Unsicherheiten (z.B. Strassenabstand, Grenzabstand je Nachbar, Gewaesser-/Waldabstand, UG-Anrechnung, Bestandesschutz, Brandschutzabstand). Optional bereits erhaltene Antworten zur Strukturierung.
- **Output-Ablage:** Fragenkatalog/Q&A-Protokoll DOPPELT — AI-Hub-Output `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/vorabklaerung/<objekt>/` UND Projekt-Ordner (`06_Reglemente` analog QA_Baurecht). DOCX+PDF, `YYMMDD_QA-Baurecht_<Objekt>`.
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention, identifikatoren-verifizieren (Parzelle/Zone/Paragraph), anrede-kontakte (Behördenanschrift) + Korrektur-Pflicht.
- **Vorgelagert:** machbarkeit / nutzungsstrategie / ankaufspruefung (liefern die offenen Punkte)
- **Nachgelagert:** dieselben Skills (Antworten fliessen als gesicherte Fakten zurueck); Baueingabe

## Deine Aufgabe

Du erzeugst den **richtigen Fragenkatalog an die Behörde** und strukturierst die Antworten so,
dass sie als **Beweis** in einer Studie/Baueingabe taugen. Vorbild ist der reale JANS-
Fragenkatalog `QA_Baurecht` (Projekt 2306 WOMA Maur): jede Frage konkret, jede Antwort mit
benannter Quelle (Person/Amt) und Datum. So werden "gummige" Punkte vor dem Vorprojekt
verbindlich geklaert statt geraten.

Faktenbasis: Skill `baurecht` (welche Norm regelt die Frage, was ist auslegungsbeduerftig).
Vorab pruefen: Skill `planungsgrundlagen` liefert einen Teil der "gummigen" Masse bereits belegt
(Baulinien-/Wald-/Gewaesserabstand mit gerechnetem `dist_m`, Zonen-Kennziffern) — was der
Connector schon beweissicher liefert, muss nicht mehr an die Behoerde gefragt werden; offen
bleibt die Interpretationsfrage (z.B. Messweise-Auslegung im Einzelfall).
Methodik-Referenz: `skills/machbarkeit/wissensbasis/04_baurecht-bestandesschutz-usecase.md`.
Goldstandard-Vorlage: `2306 WOMA Maur/06_Reglemente/231018_QA_Baurecht.docx`
(Index in `skills/machbarkeit/referenzen/README.md`).

## Welche Behörde / Fachstelle wofuer
- **Bauamt / Hochbauamt (Gemeinde):** Zone, Abstaende, Messweise, UG-Anrechnung, Wohnanteil,
  Bestandesschutz, Bewilligungspflicht, Arealueberbauung.
- **Tiefbauamt:** Strassenabstand/-baulinie, Erschliessung, Werkleitungen (Strom/Wasser/Gas/
  Kommunikation — Bezug direkt bei den Werken EKZ/Swisscom/Sunrise-UPC, nicht beim Tiefbauamt
  selbst; siehe `wissen/planungsgrundlagen` Werkleitungskataster).
- **Gewaesser-/Umweltfachstelle:** Gewaesserraum/-abstand, Altlasten.
- **Feuerpolizei / Brandschutzfachstelle (VKF/GVZ):** Brandschutzabstand, Höheneinstufung
  (Brandschutzhöhe vs. baurechtliche Höhe), Nutzungsanforderungen.
- **Denkmalpflege:** Schutzobjekt, Inventar, Eingriffstiefe.

## Typische "gummige" Fragen (Bausteine, je mit benannter Quelle beantworten lassen)
- Strassenabstand: Mass + **Messweise** + ist er reduzierbar (Baulinie/Ausnahme)?
- Grenzabstand zur **Zonengrenze**; kleiner Grenzabstand **je Nachbarparzelle** (Ausrichtung).
- **Gewaesserschutzabstand** / Uferstreifen — wer bestaetigt (Fachplaner/Amt)?
- **Brandschutzabstand** (VKF, RF1-Bauweise) — gilt er hier?
- **UG-/DG-/Attika-Anrechnung** an die Ausnuetzung (zonenspezifische Definition).
- **Bestandesschutz §357 PBG**: was ist geschuetzt, was loest Neubeurteilung aus?
- Bewilligungspflicht der geplanten Nutzungsaenderung (§309 PBG).

## Vorgehen
1. **Offene Punkte sammeln** (aus der Studie/dem Auftrag) und je Punkt die **zustaendige Stelle**
   bestimmen.
2. **Fragen praezise formulieren** — konkret, mit Parzellenbezug, beantwortbar mit ja/nein/Mass +
   Norm; nie offene Sammelfragen. Je Frage die vermutete Rechtsgrundlage angeben (aus `baurecht`).
3. **Q&A-Tabelle** anlegen: Frage · zustaendige Stelle/Person · Antwort · Rechtsgrundlage/Beleg ·
   Datum · Status (offen/beantwortet).
4. **Antworten schriftlich bestaetigen lassen** (Mail/Aktennotiz) — Beweissicherung; Telefonate
   mit Datum/Person protokollieren.
5. **Rueckfluss:** beantwortete Punkte als gesicherte Fakten in die auslösende Studie
   (machbarkeit/nutzungsstrategie/ankaufspruefung) einspeisen.

## Output
1. **Fragenkatalog** (versandfertig, je Stelle gruppiert) und **Q&A-Protokoll** (beweissichere
   Tabelle). Auf Wunsch direkt eine **Behörden-Mail/Voranfrage** entwerfen (Skill `email`,
   Absender nach Rule `jans-absenderadresse`).
2. **DOCX+PDF** (`dokument-layout-standard`); doppelte Ablage; vor Ausgabe durch `korrektur`.
3. **Compounding:** wiederkehrende Antworten je Gemeinde/Zone (z.B. "so misst Gemeinde X den
   Strassenabstand") als Wiki-Artikel nach `wissen/baurecht/`.

## Hinweise
- **Nichts als bestaetigt darstellen, was nicht schriftlich vorliegt** (Rule `identifikatoren-verifizieren`).
- Behördenauskuenfte sind teils unverbindlich — Status (muendlich/schriftlich/verbindlicher
  Vorbescheid) immer kennzeichnen.
- Korrekte Behördenanrede (Rule `anrede-kontakte`).
