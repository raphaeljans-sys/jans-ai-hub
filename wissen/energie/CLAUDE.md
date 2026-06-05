# KB Energie — Schema

Strategische Wissensbasis Energie fuer JANS. **Ziel:** das Architekturbuero energetisch fuehrend
machen und **bessere, belegte Antworten auf Bauherren-Fragestellungen** liefern — in einer Zeit,
in der nachhaltiges Bauen und Klimawandel immer wichtiger werden. Folgt dem Meta-Schema
`wissen/WISSEN-CLAUDE.md`, mit einer Besonderheit: dem **Destillate-Layer**.

Seed-Quelle: der SharePoint-Ordner **PL - 04 Energie** (120 PDFs + 12 DOCX): Minergie-Wissen,
EnDK/MuKEn, Heizwaermebedarf SIA 380/1, U-Wert-Bauteilekatalog, Solar/PV, ZH-Energienachweis.

## Aufbau (Besonderheit: destillate/)

```
wissen/energie/
  destillate/   ← PDF→MD: je Quelldokument EINE schnell lesbare .md-Fassung (+ INDEX.md)
  wiki/         ← kompilierte Themen-Artikel quer ueber Destillate + BAUHERREN-FAQ + INDEX/QUESTIONS
  raw/          ← zusaetzliche Dumps (Mailauskuenfte, Notizen); PL-04 selbst bleibt auf SharePoint
  outputs/      ← erzeugte Bauherr-Antworten/Reports; gute fliessen zurueck in wiki/
  training/     ← PROGRAMM.md (taeglich), curriculum.md, pdf-inventar.md (Konvertier-Queue)
```

- **destillate/** ist der Transfer-Layer: er macht aus traegen PDFs schnell les- und zitierbare
  Markdown-Fassungen mit Quelle + Datenstand im Frontmatter. Claude liest kuenftig das Destillat
  statt das PDF → schneller, belegt, verlinkbar.
- **wiki/** verdichtet mehrere Destillate zu Themen (U-Wert, Heizwaermebedarf, PV, Minergie,
  Nachweis ZH) und speist die **BAUHERREN-FAQ** — das Kernprodukt fuer den Bueroalltag.

## Schreibregeln (zusaetzlich zum Meta-Schema)
- **Nie erfinden:** kein λ-/U-Wert, kein Grenzwert, kein CHF-Foerderbetrag ohne Beleg. Unsicheres
  bleibt `speculative` + Verifikationsvermerk (Rule `identifikatoren-verifizieren`).
- **Datenstand zwingend:** jede Norm-/Grenzwert-/Foerderangabe mit Jahr/Version. Energierecht und
  Foerderung aendern schnell (MuKEn-Umsetzung ZH); >18 Mt. ohne Pruefung → ⚠ + QUESTIONS.
- **Destillat-Treue:** das Destillat gibt die Quelle korrekt wieder, ergaenzt nichts Erfundenes;
  eigene Einordnung klar als solche markieren («Bauherren-Transfer»).
- **Bauherren-Nutzen zuerst:** jede Erkenntnis auf «was heisst das fuer den Bauherrn» zuspitzen.
- **Verlinken statt doppeln:** Brandschutz bei Solar → Skill `brandschutz`; Recht → `baurecht`.

## Verbindung zum Harness
- Agent `energie-berater` liest primaer diese KB (Destillate + BAUHERREN-FAQ).
- Skill `planungsgrundlagen` (Domaene Energie) verweist hierher; der dortige Artikel
  `energie-uebersicht` ist die Bruecke.
- **Taeglicher** Loop: Scheduled Task `energie-training` (siehe `training/PROGRAMM.md`).
- Kandidat fuer ein eigenes Skill `energie` / `energienachweis`, sobald die KB traegt.

## Bibliothekar-Rolle
Active-with-flagging (Rule `wissens-bibliothekar.md`): destillieren/schreiben/verlinken ohne
Rueckfrage, jede Aenderung im `CHANGELOG.md`; Pause nur vor Destruktivem.
