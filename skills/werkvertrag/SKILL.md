---
name: werkvertrag
description: Werkvertrags-Agent fuer die JANS-Bauleitung (SIA-102-Phase G). Erstellt aus einer Vergabeempfehlung bzw. einem bereinigten Angebot einen vollstaendigen Werkvertrag nach SIA Norm 118 — in einem der drei Verguetungsmodelle Einheitspreis (Ausmass), Pauschalpreis oder Kostendach, inkl. Zusammenstellung, 22 Allgemeinen Bedingungen, SIA-118-Aenderungen und Unternehmer-Angaben (Haftpflicht, Garantie, Regieansaetze). Diesen Skill verwenden wenn der Benutzer fragt: "Werkvertrag erstellen", "WV ausfertigen", "Vertrag fuer Unternehmer", "Werkvertrag SIA 118", "Pauschalvertrag", "Einheitspreisvertrag", "Kostendachvertrag", "Vertrag nach Vergabe", "Vergabe in Vertrag giessen", "Konventionalstrafe festlegen", "Garantie/Rueckbehalt im Vertrag". Die Stufe NACH dem Skill ausschreibung/offertenpruefung (Vergabe) und VOR dem Skill unternehmerkontrolle (Realisierung). Teil des Bauleitungs-Harness-Back-Ends G/H/I.
---

# JANS Werkvertrags-Agent (Phase G)

## Contract

- **Trigger:** Greift, sobald eine abgeschlossene Vergabe in einen rechtsgültigen Werkvertrag nach SIA Norm 118 gegossen werden soll — in einem der drei Vergütungsmodelle Einheitspreis, Pauschal oder Kostendach. Phase G im Bauleitungs-Harness, zwischen Vergabe und Realisierung.
- **Inputs:** Gewerk/BKP, Vergabeempfehlung bzw. bereinigtes Angebot (aus `offertenpruefung`), Projekt-Stammdaten (Objekt, Bauherr, Architektur, Bauleitung, Unternehmer), Termine + Konventionalstrafe, Vergütungsmodell, Regieansätze/Garantieangaben des Unternehmers. Vorlage: `templates/werkvertrag-vorlage.md`. Sollen bauökologische Anforderungen dem Unternehmer überbunden werden, liefert die KB `wissen/energie` die Vertragsstufe: `destillate/ahb-bedingungen-werkleistungen-nachhaltiges-bauen.md` (Warendeklaration mit Zustimmungsvorbehalt, materialscharfer statt pauschaler Anforderungskatalog, Kostenfolge zulasten der Unternehmung) und `wiki/oekologische-materialvorgaben-beschaffung.md`. ⚠ Quelle von 2008, nicht unbesehen als heutiger Vertragsbestandteil verwenden; die Rangfolge der Vertragsbestandteile richtet sich nach SIA 118:1991 Art. 21/7 (Rule `normen-referenz`), nicht nach der Selbstzuschreibung der Quelle.
- **Output-Ablage:** Werkvertrag als PDF (verbindlich) + Mail-Entwurf, DOPPELT — Projekt-Versandordner `…/06 WV/` und AI-Hub-Output `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/submission/<projektnr>-<projekt>-<gewerk>/`. DOCX+PDF, Namensschema YYMMDD.
- **Abhaengige Rules:** dokument-layout-standard, mail-formatierung, umlaute-konvention, dateinamen-konvention, bkp-2017-referenz, normen-referenz (SIA 118 und die ABB-Reihe SIA 118/xxx — Fundstelle mit Norm/Ausgabe/Ziffer, und vor dem Zitieren das Feld `status:` des Destillats lesen), identifikatoren-verifizieren (Projektnr./Adresse/Termin/Konventionalstrafe), auftrags-dekomposition (mehrere Gewerke) + Korrektur-Pflicht (jedes Texterzeugnis vor Ausgabe durch Skill `korrektur`).
- **Normen-Warnkarte (kein Zitat, nur Wegweiser):** `wissen/normen/wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` zeigt, dass die Vergütungs- und Ausmassgrenzen der ABB-Reihe **je Gewerk verschieden** sind (Gerüst-Inklusivgrenze, Abzugsgrenzen, Abnahme-/Mängelziffern). Der Artikel steht auf `status: speculative` und ist damit ausdrücklich **keine Zitierquelle** — der Wert für den Vertrag kommt aus dem Destillat `wissen/normen/destillate/sia-118-<nr>-<jahr>.md` bzw. dem Original-PDF.
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
  14_bauadministration-prinzipien.md      ← Pruefraster Bauadministration (Referenz bbase.ch,
                                             07.09.2026): fuer Phase G die Prinzipien 04.17,
                                             04.23 bis 04.29; Audit-Stand in 15_bauleitung-training-register.md
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
1a. **Vergabefreigabe pruefen (Gate)** — kein Vertrag ohne unterzeichneten Vergabeantrag.
   Der Vergabeantrag (Beilage: Offertvergleich/Vergabeempfehlung) stellt die Vertragssumme
   netto der **vergleichbaren KV-Summe** gegenueber: KV-Betrag der gedeckten Konti abzueglich
   der Rueckstellungen fuer Regie, Teuerung und Ausmassreserve. Er traegt die Unterschriften
   von Architekt UND Bauherrschaft. Fehlt er, zuerst den Freigabeblock der Vergabeempfehlung
   (`ausschreibung/templates/vergabeempfehlung_template.md`, Sektion 8a) erstellen und die
   Freigabe abwarten. Quelle: `14_bauadministration-prinzipien.md` 04.23 und 05.5
   (ergaenzt 07.09.2026, Audit gegen das Bauadministrations-Raster).
2. **Vertrags-LV als Kopie anlegen, Original einfrieren.** Das bereinigte Angebot bzw. der
   Offertvergleich mit den Favoritenpreisen (Abgebot eingerechnet) wird als Kopie
   `YYMMDD-WV-<projektnr>-LOS<nn>-LV.pdf` in `…06 WV/` abgelegt; das Original in
   `…04 Offerte UN/` und `…05 Vergabe/` wird nie veraendert. Die Zusammenstellung zieht
   Brutto → Rabatt → weitere Abzuege (Baureinigung, Baustrom, Bauwasser gemaess
   `04_konditionen.md`) → Skonto → MwSt 8,1 % → Netto aus dieser Kopie, nicht aus dem
   Gedaechtnis. Vertragsbestandteil (c) in Ziff. 1 nennt Dateiname und Datum der Kopie
   (Prinzip 04.24).
3. **Verguetungsmodell** waehlen, passenden Verguetungstext einsetzen.
4. **Termine + Konventionalstrafe** konkret setzen (Ziff. 22) — vergabekritisch,
   nie als Platzhalter stehen lassen.
5. **Rueckbehalt und Garantie getrennt setzen** — zwei Sicherheiten, zwei Fundstellen,
   zwei Schwellen (praezisiert 16.08.2026, Wissens-Chef Run 34; die Zeile fuehrte beide
   zuvor unter «10 % Art. 181»): **Rueckbehalt bis Abnahme** 10 %, ueber Fr. 300'000.–
   noch 5 %, min. Fr. 30'000.– (SIA 118:1991 **Art. 149-150**); **Solidarbuergschaft nach
   Abnahme** 10 %, ueber Fr. 200'000.– noch 5 %, min. Fr. 20'000.– (**Art. 181**), beide
   max. Fr. 1 Mio. Garantie-/Ruegefrist 2 J. (Art. 172), Verjaehrung der Maengelrechte
   5 J. (Art. 180), bei absichtlich verschwiegenen Maengeln 10 J. Quelle
   `wissen/normen/destillate/sia-118-1991.md`, `status: speculative` (herabgestuft Run 62, 26.08.2026 — die Herabstufung betrifft eine offene **Abdeckungs**richtung bei Nebenbefunden, ausdruecklich **nicht** die Richtigkeit der hier zitierten Werte; Statuslabel nachgezogen Wissens-Chef Lauf 53, 07.09.2026. Vor dem Zitieren das Feld `status:` im Destillat selbst pruefen.).
   ⚠ **Ruegefrist verdeckte Maengel: 60 Tage ab Entdeckung** — und die Korrigenda in die
   Vertragsbestandteil-Liste aufnehmen: «Norm SIA 118:2013 inkl. Korrigenda C1:2026»
   (ergaenzt Synergie-Lauf 29, 07.09.2026 — SYN-74). **SIA 118-C1:2026** aendert Art. 179
   Abs. 2 von «sofort» auf **60 Tage ab Entdeckung**; fuer Vertraege, die **nach dem
   01.01.2026** abgeschlossen werden, gilt die Frist wegen der OR-Revision (AS 2025 270)
   ohnehin **zwingend**, auch ohne Vereinbarung der Korrigenda. Betrifft **nur verdeckte**
   Maengel, nicht die Garantiefrist nach Art. 172. Quelle
   `wissen/normen/destillate/sia-118-c1-2026.md` (`status: established`, Refuter-verifiziert
   Run 47) — dieses Destillat nennt diesen Skill an erster Stelle als Abnehmer. Der Wortlaut
   steht seit Run 32 (14.08.2026) in `templates/werkvertrag-vorlage.md` Z. 123-126; hier
   nachgezogen, damit der Ablaufschritt ihn fuehrt und nicht erst das Dokument.
6. **PDF erzeugen und mit Vertragsbrief versenden.** Der Werkvertrag erhaelt nach dem Kopf
   ein Inhaltsverzeichnis (Zusammenstellung, Verguetung, Allgemeine Bedingungen, Angaben des
   Unternehmers, Beilagen mit Dateinamen). Zwei Vertragsbriefe (Briefkopf gemaess
   `10_dokumente-standard.md`): an den Unternehmer mit Arbeitsgattung, Exemplarzahl und
   **Ruecksendefrist** fuer das unterzeichnete Exemplar (Vorschlag 10 Arbeitstage), an die
   Bauherrschaft mit derselben Frist zur Gegenzeichnung. Beide als Apple-Mail-Entwurf,
   Versand erst nach Freigabe. **Doppelt ablegen** (Projektordner `…06 WV/` + AI-Hub-Output).
   (Prinzipien 02.10, 03.6.)
7. **Uebergabe an Phase H und I**: an `unternehmerkontrolle` Garantieverfalldaten, Termine,
   Regieansaetze und Kostendach-Vorgaben; an `kostenkontrolle` je gedecktem KV-Konto die
   Vertragssumme (Spalte Vertrag) und daneben die **Rueckstellungen «Diverse»** (Spalte
   Diverse: Regie, Ausmassreserve, Rundung, Teuerung), zusammen die vergleichbare KV-Summe
   (Spalte Total). Bei Einheitspreisvertraegen die Ausmassreserve immer beziffern (Vorschlag
   aus dem Vergabeantrag), bei Pauschal null, bei Kostendach die 5-%-Toleranz als Reserve
   fuehren. Schliesst die Vorlage (Ziff. 16) Teuerung aus, ist die Teuerungsrueckstellung
   null und wird so ausgewiesen, nicht weggelassen (Prinzipien 04.27, 04.29).

## Regeln

- **MWST immer 8,1 %** (Altvorlagen 7,5 % → aktualisieren).
- **Vertragsgrundlagen-Rangordnung** (Ziff. 1) und SIA-118-Aenderungen (Ziff. 19)
  nie weglassen — sie sind der juristische Kern.
- Bei oeffentlichen Bauherren IVoeB/BoeB beachten (→ Skill `baurecht`, Luecke L11).
- **Selbstlernend:** fehlende Angabe/unklare Klausel → `wissensluecken.md`
  eintragen, nach Mecano schliessen (`08_selbsttraining-mecano.md`).
- Vor Erstanwendung an Neuprojekt **Benutzer-Freigabe** (Vorlage ist R2).
