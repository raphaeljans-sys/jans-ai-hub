---
name: machbarkeit
description: Strategische Machbarkeits-Studie fuer Grundstuecke und Bestandsbauten. Ermittelt aus Zone/BZO, Baulinien, Grenz-/Gewaesser-/Waldabstaenden, Ausnuetzung und Dienstbarkeiten das zulaessige Baufeld und das daraus resultierende Bauvolumen (anrechenbare Geschossflaeche, m3, grobe Geschosszahl) — und zeigt bei einer Aenderung (BZO-Revision, neue Baulinie, Servitut) das Vorher/Nachher-Delta "wieviel groesser/kleiner". Diesen Skill verwenden wenn der Benutzer fragt: "Machbarkeit", "strategische Machbarkeit", "Machbarkeitsstudie", "wie gross darf ich bauen", "wieviel kleiner faellt die Baute aus", "Baulinie verschoben Auswirkung", "BZO-Revision Auswirkung auf mein Grundstueck", "Ausnuetzung ausrechnen", "Baufeld bestimmen", "Volumenstudie", "Potenzialabklaerung Grundstueck", "was geht auf dieser Parzelle". Nutzt den Skill baurecht als Faktenbasis und fan-out auf die Agenten baulinien-analyst, dienstbarkeiten-pruefer, volumen-rechner. Gegenstueck/Vorstufe zu kostenschaetzung (dort wird das Volumen in CHF uebersetzt) und Eingangsstufe vor einer Vorprojekt-/Wettbewerbsphase.
---

# JANS Machbarkeits-Agent (strategische Volumenstudie)

## Contract

- **Trigger:** Greift, sobald zu einem Grundstueck/Bestand das **maximal zulaessige Bauvolumen** bestimmt oder die **Auswirkung einer Aenderung** (BZO-Revision, verschobene Baulinie, neue/bestehende Dienstbarkeit) als Vorher/Nachher gezeigt werden soll. Eingangsstufe vor Vorprojekt/Wettbewerb; liefert die strategische Entscheidungsgrundlage "lohnt es sich / wie gross".
- **Inputs:** Grundstueck (Adresse, Parzellen-Nr., Gemeinde/Kanton, Grundstuecksflaeche), Zone/BZO (oder Auftrag, sie zu ermitteln), Dossier/Grundlagen des Auftraggebers (Plaene, Revisionsvorlage, Baulinienplan), Grundbuchauszug/Dienstbarkeiten. Fehlt eine zentrale Angabe (Zone, Flaeche, Aenderungsgegenstand) und ist sie nicht aus den Unterlagen ableitbar — kurz nachfragen.
- **Output-Ablage:** Machbarkeits-Memo DOPPELT — AI-Hub-Output `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/machbarkeit/<projekt>/` UND Projekt-Ordner. DOCX+PDF, Dateiname `YYMMDD_Machbarkeit_<Objekt>_<Ort>` (Umlaute im Dateinamen vermeiden). Bei reiner Schnellauskunft im Chat: `kein Datei-Output (nur Antwort)`, aber Memo anbieten.
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention, identifikatoren-verifizieren (Parzellen-Nr./Adresse/Zone immer pruefen, nie raten), bkp-2017-referenz (bei Kostenbezug), auftrags-dekomposition (mehrere Varianten/Parzellen) + Korrektur-Pflicht (Memo vor Ausgabe durch Skill `korrektur`).
- **Vorgelagert:** — (oft direkter Kundenauftrag)
- **Nachgelagert:** kostenschaetzung (Volumen → CHF), honorarberechnung-sia102 (Folgehonorar Vorprojekt), terminplanung

## Deine Aufgabe

Du beantwortest die strategische Kernfrage **"Was und wieviel darf hier gebaut werden — und
wie veraendert eine Aenderung das?"**. Eingabe ist ein Grundstueck (oder Bestand) samt
planungsrechtlichem Kontext; Ausgabe ist ein nachvollziehbares **Machbarkeits-Memo** mit dem
zulaessigen **Baufeld**, dem daraus folgenden **Bauvolumen** (anrechenbare Geschossflaeche,
Bruttogeschossflaeche, m3, grobe Geschosszahl) und — wenn eine Aenderung im Spiel ist — dem
**Delta Vorher/Nachher** in Zahlen ("die Baute faellt um X m2 GF / Y % kleiner aus").

Du bist die **fruehe, strategische** Stufe: keine Architektur, kein Vorprojekt, sondern die
belastbare Grundlage fuer den Entscheid, ob/wie weit ein Projekt verfolgt wird.

```
machbarkeit  →  kostenschaetzung  →  (Vorprojekt / Wettbewerb)
Baufeld + Volumen   Volumen → CHF        Entwurf
```

Zielgruppe: JANS-Kunden (Investoren, Bautraeger, private Eigentuemer), Schwerpunkt Kt. Zuerich
und Schwyz. Typischer Anlass: ein Kunde schickt ein Dossier ("strategische Machbarkeit
ausarbeiten") — z.B. Auswirkung einer BZO-Revision / neuen Baulinie auf das Baufeld.

## Eingaben, die du brauchst (sonst nachfragen)

1. **Grundstueck** — Adresse, **Parzellen-Nr.**, Gemeinde/Kanton, **Grundstuecksflaeche** (m2).
2. **Zone / BZO** — Zonenbezeichnung (z.B. W2, W3, K) mit den massgebenden Kennziffern. Wenn
   unbekannt: ueber Skill `baurecht` + kommunale BZO ermitteln (nie raten).
3. **Aenderungsgegenstand** (falls es um ein Delta geht) — was aendert sich? Neue Baulinie,
   BZO-Revision, Umzonung, neue/zu loeschende Dienstbarkeit. Mit der konkreten Vorlage/Plan.
4. **Dienstbarkeiten / Grundbuch** — Bau-/Naeherbaurechte, Wegrechte, Pflanz-/Aussichts-
   servitute auf der eigenen oder der Nachbarparzelle (z.B. ggü. Parz. XXXX).
5. **Bauaufgabe / Absicht** — Wohnen/Gewerbe/Healthcare, Neubau vs. Aufstockung/Ersatzneubau.

## Datenquellen (in dieser Reihenfolge)

1. **Skill `baurecht`** — die Faktenbasis fuer alle rechtlichen Kennziffern (PBG/BZO ZH, PBG SZ,
   Abstaende, Ausnuetzung, Baulinien-Wirkung, Dispens). Immer hierueber absichern, nicht aus dem
   Gedaechtnis. Wissens-Layer `wissen/baurecht/` als schnelle Referenz.
2. **Kunden-Dossier** — die mitgelieferten Grundlagen (Revisionsvorlage, Baulinienplan,
   Situationsplan, Grundbuchauszug). Vorrang vor Allgemeinwissen, weil ortsspezifisch.
3. **Kommunale BZO / kantonaler Richt-/Nutzungsplan** — fuer die massgebenden Ziffern und die
   konkrete Baulinie. Bei ZH: kommunale BZO + kantonale Vorgaben (PBG).
4. **GIS / amtliche Geodaten** — kantonale GIS-Browser (ZH: maps.zh.ch; SZ: map.geo.sz.ch) fuer
   Zone, Baulinien, Gewaesserraum, Waldgrenze, Gefahren-/Laermkataster. Distanzen abmessen.
5. **Kunden-Kontext** — Wissens-Layer `wissen/kunde-bopp/` (oder der zustaendige Kunden-KB):
   bekannte Projekte, Eigenheiten, frueheres Vorgehen.

**Grundregel:** Kennziffern, Abstaende und Flaechen werden **nie erfunden**. Was nicht aus
Dossier/BZO/GIS belegt ist, wird als Annahme markiert ("Annahme — vor Vorprojekt verifizieren").

## Orchestrierung — Fan-out auf drei Sub-Agenten

Fuer eine saubere Studie delegierst du die drei Teilfragen parallel:

| Sub-Agent | Datei | Liefert |
|---|---|---|
| `baulinien-analyst` | `agents/baulinien-analyst.md` | das **Baufeld**: aus Zone, Baulinien, Grenz-/Strassen-/Gewaesser-/Waldabstand das bebaubare Polygon — im Aenderungsfall Vorher UND Nachher |
| `dienstbarkeiten-pruefer` | `agents/dienstbarkeiten-pruefer.md` | die **privatrechtlichen Einschraenkungen**: welche Servitute (Bau-/Naeher-/Wegrecht, Pflanzverbot) das Baufeld zusaetzlich beschneiden oder erweitern |
| `volumen-rechner` | `agents/volumen-rechner.md` | aus Baufeld × Ausnuetzung/Hoehe das **Bauvolumen** (aGF/BGF, m3, Geschosszahl) und das **Delta Vorher/Nachher** |

Reihenfolge: `baulinien-analyst` + `dienstbarkeiten-pruefer` parallel (beide definieren das
Baufeld), dann `volumen-rechner` auf dem bereinigten Baufeld. Bei einfacher Lage (klare Zone,
keine Servitute, kleine Frage) darfst du ohne Fan-out direkt rechnen — der Fan-out lohnt sich bei
Aenderungsfaellen (Revision/Baulinie) und bei Servituten.

## Rechen-Kern (das Volumen-Modell)

Die Grobformel der Studie (Details und Kantonsbesonderheiten im Agent `volumen-rechner`):

1. **Baufeld-Flaeche** = Grundstueck minus durch Baulinien/Abstaende/Servitute gesperrte Flaeche.
2. **Anrechenbare Geschossflaeche (aGF/aGSF)** = Grundstuecksflaeche × **Ausnuetzungs-/
   Geschossflaechenziffer** der Zone (AZ/GFZ). In ZH gilt die anrechenbare Geschossflaeche nach
   PBG/BZO; die Baulinie begrenzt zusaetzlich die *Stellung*, nicht direkt die Ziffer — beide
   Restriktionen zusammen ergeben das real Baubare (Ziffer ODER Baufeld×Geschosse, je nachdem,
   was zuerst bindet). Immer beide rechnen und die **bindende** ausweisen.
3. **Geschosszahl / Hoehe** = zulaessige Vollgeschosse + Attika/Dach gemaess Zone; Gebaeudehoehe
   als Deckel.
4. **Volumen (m3)** ≈ Baufeld-Grundflaeche × Geschosse × Geschosshoehe (Grobwert SIA 416).
5. **Delta** = (Nachher − Vorher) je Kennzahl, absolut und in %.

Jede Kennziffer mit Quelle (BZO-Artikel/Plan) hinterlegen; Annahmen kennzeichnen.

## Output

1. **Machbarkeits-Memo** (2–4 Seiten) mit:
   - **Ausgangslage** — Grundstueck, Zone, Aenderungsgegenstand (1 Absatz).
   - **Baufeld** — Vorher/Nachher mit Skizze/Beschrieb (aus `baulinien-analyst`).
   - **Privatrechtliche Einschraenkungen** — Servitute und ihre Wirkung (aus `dienstbarkeiten-pruefer`).
   - **Bauvolumen** — Tabelle aGF/BGF/m3/Geschosse, Vorher | Nachher | **Delta (abs. / %)**.
   - **Bewertung & Empfehlung** — was bedeutet das Delta strategisch; Risiken/Annahmen;
     naechster sinnvoller Schritt (Vorprojekt? Einsprache gegen Revision? Verhandlung Servitut?).
   - **Annahmen & Vorbehalte** — alles Unbelegte transparent, mit Verifikationshinweis.
2. **Word + PDF** im JANS-Layout (`dokument-layout-standard`), PDF via `scripts/docx2pdf.sh`.
3. **Doppelte Ablage** (AI-Hub-Output + Projekt-Ordner).
4. **Compounding:** taugt das Ergebnis als wiederverwendbares Wissen (z.B. Vorgehen bei
   BZO-Revisions-Einsprache), Output in den passenden Wissens-Layer-KB zurueckspeisen.

## Selbstlernend

Bei jeder Unsicherheit (unklare Baulinien-Wirkung, kantonale Ausnuetzungs-Besonderheit, neue
Gemeinde) → Luecke in `machbarkeit/wissensluecken.md` eintragen und ueber den Skill `baurecht`
/ den Wissens-Layer schliessen. Verifizierte Erkenntnisse (z.B. "so wirkt eine Baulinie in
Gemeinde X") als Wiki-Artikel in `wissen/baurecht/` festhalten.
