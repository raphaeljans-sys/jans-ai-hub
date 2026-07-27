# KB `bauprodukte` — Bauprodukte- und Gewerkewissen nach BKP

Angelegt 28.07.2026 durch den Skill `wissens-destillat` (Korpus 1 der Korpus-Queue).

## Fokus

Was JANS über **Bauprodukte, Systeme und Gewerke** weiss — geordnet nach BKP 2017, damit
es dieselbe Sprache spricht wie Ausschreibung, Kostenplanung und Bauleitung.

Quelle: `/Volumes/daten/03 Bauprodukte_BKP` (37 Gewerke-Sektionen, gewachsene
Produktunterlagen, Systembeschriebe, Datenblaetter, Leistungserklärungen).
Das Archiv ist `raw/` im Sinne der Rule `wissens-bibliothekar`: **nur lesen, nie verändern.**

## Artikelschnitt

Ein Artikel je **Sache**, nicht je Quelldatei:

- je **Gewerk** ein Übersichtsartikel (`bkp-271-gipserarbeiten.md`) — was gehoert dazu,
  welche Systeme sind ueblich, welche Schnittstellen zu Nachbargewerken,
  welche wiederkehrenden Fehlerbilder;
- je **Produktgattung** ein Artikel (`gipsfaserplatte.md`, `indach-pv.md`) — Aufbau,
  Kennwerte, Klassifizierung, Einsatzgrenzen;
- je **Fehlerbild / Praxisfall** ein Artikel, wo er wiederkehrt.

Ein PDF kann drei Artikel speisen; zehn PDFs können einen speisen.

## Schreibregeln (ergaenzend zu `wissen/WISSEN-CLAUDE.md`)

1. **Datumsstempel-Pflicht.** Die Unterlagen im Archiv sind teils zehn Jahre alt. Jede
   Angabe zu Preisen, Normausgaben, Zulassungen und Produktnamen trägt den Stand des
   Quelldokuments (`Stand gemäss Datenblatt 03/2018`). Ohne datierbare Quelle wird die
   Angabe **nicht** aufgenommen.
2. **BKP-Codes verifiziert**, nie geraten — `references/bkp-2017/BKP-2017-Liste.md`
   (Rule `bkp-2017-referenz`).
3. **Normzitate** nur mit Fundstelle aus `wissen/normen/` (Rule `normen-referenz`).
   Brandschutz-Klassifizierungen zusätzlich gegen den Skill `brandschutz`.
4. **Kein Hersteller-Marketing.** Superlative und Werbeaussagen werden nicht übernommen;
   übernommen wird, was pruefbar ist (Kennwert, Klassifizierung, Aufbau, Grenze).
5. **Herstellerneutral formulieren**, wo der Artikel in ein LV fliessen könnte
   (Rule 260626, Submissionsunterlagen sind neutral). Produktnamen als Beispiel
   kennzeichnen, nicht als Vorgabe.
6. `status: established` erst bei unabhaengiger Zweitbelegung (Norm, zweites Datenblatt,
   eigener Projektbeleg).

## Wofür dieser KB gezogen wird

`ausschreibung` (technische Anforderungen im LV) · `offertenpruefung` (ist das marktueblich)
· `brandschutz` (Klassifizierung, Leistungserklärung) · `unternehmerfindung` (welches
Gewerk kann das) · `grobkosten`/`kostenschaetzung` (Systemwahl als Kostentreiber).

## Verwandt

`wissen/normen` · `wissen/grobkosten` · `wissen/projekt-lessons` (dort die Erfahrung
aus eigenen Projekten, hier das Produkt- und Systemwissen).
