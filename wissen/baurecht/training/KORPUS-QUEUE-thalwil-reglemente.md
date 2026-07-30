---
name: KORPUS-QUEUE-thalwil-reglemente
beschreibung: Erschliessungs-Fahrplan fuer den Baurechts-/Reglemente-Ordner des Projekts 2414 Thalwil, Bohlweg 3. Speist den Loop `baurecht-buch-training` als zweite Korpus-Quelle neben dem Standardwerk.
angelegt: 2026-07-30 (Auftrag Raphael, nach der Begleitbeschrieb-Eingabe Bohlweg 3 vom selben Tag)
quelle_pfad: "/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2414 THALWIL/06 Reglemente"
station: Mac Mini (OneDrive-Mount); vom MacBook via `ssh mini` lesbar
umfang: 243 Dateien (ohne .DS_Store), 13 Top-Ordner
---

# Korpus-Queue — Reglemente-Ordner 2414 Thalwil / Bohlweg 3

## Warum dieser Korpus

Das Standardwerk (Fritzsche/Bösch/Wipf/Kunz) liefert die **Dogmatik**. Dieser Ordner liefert,
was dem Harness bisher fehlt: die **kommunale Konkretisierung und die Anwendungsebene** einer
realen Parzelle — BZO Thalwil samt Revision 2025, Merkblätter und Wegleitungen der Gemeinde,
OEREB-Auszug, Näherbaurecht, und Raphaels **eigene** baurechtliche Zusammenfassungen.

Auslöser ist die Eingabe vom 30.07.2026 (Begleitbeschrieb Projektänderung, Bauentscheid
2024.227). Dabei zeigte sich die Lücke konkret: die KB führt in `raw/` nur die **alte**
BZO Thalwil (Stand 07.06.2026). Der Begleitbeschrieb argumentiert durchgehend mit der
**revBZO** (Art. 50 Abs. 1 lit. b, Art. 31 Abs. 1, negative Vorwirkung seit 16.05.2025) —
diese Artikel waren aus der KB heraus **nicht verifizierbar**. Die Synopse liegt in diesem
Ordner.

## Abgrenzung (Rule `projekt-ablage-stand`)

- **In die KB wandert nur Verallgemeinerbares:** BZO-Artikel und ihre Revision, Merkblätter,
  Wegleitungen, Messweisen, kantonale Normen. Diese gelten für **jedes** Thalwiler Projekt.
- **Im Projektordner bleibt Projektgebundenes:** OEREB-Auszug Parzelle 6289/9568, das konkrete
  Näherbaurecht SBB, Verfügungen, projektbezogene Factsheets. Sie werden **zitiert**, nicht
  kopiert.
- **Raw ist Quell-Dump:** was in `raw/` landet, wird nie editiert (Rule `wissens-bibliothekar`).

## Echo-Schutz (wichtig)

`_Zusammenfassungen JANS/` enthält **Raphaels eigene** baurechtliche Zusammenfassungen. Zwei
Klassen sauber trennen:

- **Authentisch (Gold):** von Raphael selbst verfasst, vor der Claude-Ära bzw. ohne
  Claude-Beteiligung — z.B. `200831 BR Grundstück.pdf`, `260302 BR Grundstück Thalwil.docx`.
  Diese dürfen als Fach- **und** Stilquelle dienen.
- **Claude-Erzeugnisse (kein Lernstoff):** die datierten Factsheets im JANS-Schema
  (`260609-Factsheet-02-Gartenmauer-Regularien-Bohlweg3.pdf`,
  `260703-Baurecht-Gartenmauern-Thalwil.*`, `260703-Baurecht-Besondere-Gebaeude-Thalwil.*`).
  Sie sind **Prüfmaterial**, nicht Quelle: gegen den amtlichen Wortlaut gegenlesen und
  gefundene Fehler melden. Nie als Beleg zitieren (eisernes Echo-Verbot, Rule `jans-dna`).

## Batches (Reihenfolge verbindlich, 1 Batch pro Lauf)

| # | Batch | Inhalt | Ziel in der KB | Status |
|---|---|---|---|---|
| **T1** | **BZO-Revision 2025** | `02 BZO Thalwil/_BZO-Revision 2025/`: `20250416-BZO-Vorschriften-Synopse.pdf`, `20250905-Auslegung-negative-Vorwirkung-BZO-Artikel.pdf` | neuer `raw/`-Volltext revBZO Thalwil + neuer Wiki-Artikel [[negative-vorwirkung-und-bzo-revision]] | offen |
| **T2** | **Umgebungsgestaltung** | `02 BZO Thalwil/02 Umgebungsgestaltung/` (Gartenmauern, Vorgarten, Grünanteil) | Wiki [[umgebungsgestaltung-und-einfriedungen]] (neu) | offen |
| **T3** | **Grundmasse + SBV W3** | `02 BZO Thalwil/01 Grundmasse/`, `Sonderbauvorschrift W3/`, `Zonenplan/` | [[zonenkonformitaet]] + [[nutzungsziffern]] schärfen | offen |
| **T4** | **Merkblätter/Wegleitungen** | `02 BZO Thalwil/00 BZO Merkbaltt Wegleitungen/` (Gebäudehöhen-Messweise, qualitative Beurteilungskriterien, Wegleitung BZO 2020, Merkblatt Abstände) | [[abstaende-und-hoehen]], [[gebaeudearten-und-abstandssystem]] | offen |
| **T5** | **Einzelthemen** | `Kniestock/`, `Massgebendes Terrain/`, `Besonderes Gebäude/`, `Fahrzeugabstellplaetze/`, `Fensterflaechen/`, `Spiel und Ruheflaeche/`, `Baugespann/`, `Wohnungserhebung/` | je bestehender Wiki-Artikel | offen |
| **T6** | **PBG-Screenshots + Näherbaurecht** | `03 PBG Zuerich/` (Vordach § 260 Abs. 3/4, anrechenbares UG), `Näherbaurecht NBR2008/` | [[abstaende-und-hoehen]] (Näherbaurecht § 270 Abs. 3) | offen |
| **T7** | **Archiv-Sichtung** | `_Archiv/` (91 Dateien: VSS-Norm, Merkblätter Konstruktion, Lärmschutz, Naturgefahren, Brandschutz, PV) | Triage; Brandschutz → Skill `brandschutz`, Lärm → [[laermschutz-und-nichtionisierende-strahlung]] | offen |
| **T8** | **Gegenlesen der Claude-Factsheets** | die drei datierten Factsheets (siehe Echo-Schutz) | Fehlerbericht in `outputs/`, keine Aufnahme als Quelle | offen |

## Arbeitsregeln je Batch

1. **Fassungsstand zuerst.** Kommunales Recht altert wie kantonales. Vor jeder Übernahme
   klären: gilt der Artikel, und in welcher Fassung (alt / revBZO / negative Vorwirkung)?
   Die Leitplanke «Verweisnormen zweiteilig prüfen» (Run 71) gilt hier doppelt: BZO-Artikel
   verweisen oft auf PBG-Paragraphen, die ihrerseits gealtert sind.
2. **Alt- und revBZO nebeneinander führen**, nie ersetzen. Die negative Vorwirkung heisst,
   dass für laufende Verfahren **beide** Fassungen relevant sind — jeweils die strengere.
   Artikel-Nummern unterscheiden sich zwischen den Fassungen; Zitate immer mit «BZO» oder
   «revBZO» kennzeichnen.
3. **Screenshots sind Belege**, keine Volltexte: Fundstelle (Artikel, Seite) notieren, den
   Wortlaut aber am amtlichen Text verifizieren, wo einer beschaffbar ist.
4. **Gemeinde-Merkblätter sind Verwaltungsverordnungen** — sie binden die Behörde im Interesse
   der Rechtsgleichheit, sind für Private aber nicht direkt verbindlich
   ([[grundlagen-planungs-baurecht]], BGE 139 II 470). Diese Stufe im Wiki mitschreiben.
5. **Kein Projektgeheimnis in die KB:** Eigentümernamen, Kaufpreise, private Korrespondenz
   bleiben draussen. Parzellennummer und Zone sind öffentlich (OEREB) und dürfen bleiben.
