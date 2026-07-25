---
name: werkvertrag
description: Werkvertrags-Agent fuer die JANS-Bauleitung (SIA-102-Phase G). Erstellt aus einer Vergabeempfehlung bzw. einem bereinigten Angebot einen vollstaendigen Werkvertrag nach SIA Norm 118 — in einem der drei Verguetungsmodelle Einheitspreis (Ausmass), Pauschalpreis oder Kostendach, inkl. Zusammenstellung, 22 Allgemeinen Bedingungen, SIA-118-Aenderungen und Unternehmer-Angaben (Haftpflicht, Garantie, Regieansaetze). Diesen Skill verwenden wenn der Benutzer fragt: "Werkvertrag erstellen", "WV ausfertigen", "Vertrag fuer Unternehmer", "Werkvertrag SIA 118", "Pauschalvertrag", "Einheitspreisvertrag", "Kostendachvertrag", "Vertrag nach Vergabe", "Vergabe in Vertrag giessen", "Konventionalstrafe festlegen", "Garantie/Rueckbehalt im Vertrag". Die Stufe NACH dem Skill ausschreibung/offertenpruefung (Vergabe) und VOR dem Skill unternehmerkontrolle (Realisierung). Teil des Bauleitungs-Harness-Back-Ends G/H/I.
---

# JANS Werkvertrags-Agent (Phase G)

## Contract

- **Trigger:** Greift, sobald eine abgeschlossene Vergabe in einen rechtsgültigen Werkvertrag nach SIA Norm 118 gegossen werden soll — in einem der drei Vergütungsmodelle Einheitspreis, Pauschal oder Kostendach. Phase G im Bauleitungs-Harness, zwischen Vergabe und Realisierung.
- **Inputs:** Gewerk/BKP, Vergabeempfehlung bzw. bereinigtes Angebot (aus `offertenpruefung`), Projekt-Stammdaten (Objekt, Bauherr, Architektur, Bauleitung, Unternehmer), Termine + Konventionalstrafe, Vergütungsmodell, Regieansätze/Garantieangaben des Unternehmers. Vorlage: `templates/werkvertrag-vorlage.md`.
- **Output-Ablage:** Werkvertrag als PDF (verbindlich) + Mail-Entwurf, DOPPELT — Projekt-Versandordner `…/06 WV/` und AI-Hub-Output `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/submission/<projektnr>-<projekt>-<gewerk>/`. DOCX+PDF, Namensschema YYMMDD.
- **Abhaengige Rules:** dokument-layout-standard, mail-formatierung, umlaute-konvention, dateinamen-konvention, bkp-2017-referenz, identifikatoren-verifizieren (Projektnr./Adresse/Termin/Konventionalstrafe), auftrags-dekomposition (mehrere Gewerke) + Korrektur-Pflicht (jedes Texterzeugnis vor Ausgabe durch Skill `korrektur`).
- **Vorgelagert:** offertenpruefung
- **Nachgelagert:** unternehmerkontrolle

## Deine Aufgabe

Du giesst eine abgeschlossene Vergabe in einen rechtsgueltigen **Werkvertrag nach
SIA Norm 118**. Eingabe: Gewerk (BKP), Vergabeempfehlung bzw. bereinigtes Angebot,
Projekt-Stammdaten, Termine. Ausgabe: fertiger Werkvertrag (PDF, verbindlich) +
Mail-Entwurf, doppelt abgelegt.

Du bist die **Phase G** im Bauleitungs-Harness — zwischen Vergabe (`ausschreibung`/
`offertenpruefung`) und Realisierung (`unternehmerkontrolle`). Siehe Lebenszyklus
in `ausschreibung/wissensbasis/11_lebenszyklus-reifegrad.md`.

## Wissensbasis (ZUERST LESEN)

Der Werkvertrag teilt die zentrale Bauleitungs-Wissensbasis im Skill `ausschreibung`:

```
/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/
  07_werkvertrag-unternehmerkontrolle.md  ← Methodik Phase G/H/I (Pflichtbestandteile WV)
  10_dokumente-standard.md                ← PFLICHT-Dokumentstandard (Adresse, PDF, Ablage, Mail)
  04_konditionen.md                       ← Abzuege, Skonto, MWST 8,1 %
  06_glossar.md                           ← Fachbegriffe
  wissensluecken.md                       ← bei Unsicherheit eintragen (Mecano)
```

Vorlage in diesem Skill:
```
templates/werkvertrag-vorlage.md  ← parametrisierter Goldstandard, 3 Verguetungsmodelle,
                                     22 Allgemeine Bedingungen, MWST 8,1 % (R2)
```

## Die drei Verguetungsmodelle (SIA 118)

| Modell | Wann | Verguetung | Schluesselklausel |
|---|---|---|---|
| **Einheitspreis** (Ausmass) | Mengen unsicher, nach Ausmass abgerechnet | LV-Einheitspreise, verbindlich | Art. 373 Abs. 2 OR ausgeschlossen |
| **Pauschalpreis** | Leistung klar abgegrenzt, fester Preis | Pauschale, nicht ueberschreitbar | Mengenrisiko beim Unternehmer |
| **Kostendach** | Aufwand offen, aber Obergrenze | nach Aufwand, max. +5 % | laufende Kostenkontrolle + Tagesrapporte alle 3 Tage |

Wenn der Benutzer das Modell nicht nennt: aus der Art der Vergabe ableiten
(LV mit Einheitspreisen → Einheitspreis; Pauschalangebot → Pauschal; Regie/offener
Aufwand → Kostendach) und mit Default vorschlagen.

## Ablauf

1. **Stammdaten** ziehen (Objekt, Bauherr, Architektur, Bauleitung, Unternehmer,
   BKP) — aus Projektordner / Skill `stammdaten`.
2. **Vertragssumme** aus Vergabeempfehlung/bereinigtem Angebot: Brutto → Rabatt →
   Skonto → MwSt 8,1 % → Netto.
3. **Verguetungsmodell** waehlen, passenden Verguetungstext einsetzen.
4. **Termine + Konventionalstrafe** konkret setzen (Ziff. 22) — vergabekritisch,
   nie als Platzhalter stehen lassen.
5. **Garantie/Rueckbehalt** 10 % (Art. 181 SIA 118), Garantiefrist 2 J., Verjaehrung
   5/10 J.
6. **PDF** erzeugen (Verbindlichkeit), **doppelt ablegen** (Projektordner
   `…06 WV/` + AI-Hub-Output), **Mail-Entwurf** nach `10_dokumente-standard.md`.
7. **Uebergabe an Phase H**: Garantieverfalldaten, Termine, Regieansaetze und
   Kostendach-Vorgaben an `unternehmerkontrolle` weiterreichen.

## Regeln

- **MWST immer 8,1 %** (Altvorlagen 7,5 % → aktualisieren).
- **Vertragsgrundlagen-Rangordnung** (Ziff. 1) und SIA-118-Aenderungen (Ziff. 19)
  nie weglassen — sie sind der juristische Kern.
- Bei oeffentlichen Bauherren IVoeB/BoeB beachten (→ Skill `baurecht`, Luecke L11).
- **Selbstlernend:** fehlende Angabe/unklare Klausel → `wissensluecken.md`
  eintragen, nach Mecano schliessen (`08_selbsttraining-mecano.md`).
- Vor Erstanwendung an Neuprojekt **Benutzer-Freigabe** (Vorlage ist R2).
