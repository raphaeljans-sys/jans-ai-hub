# Wissensbasis: Kunde Christoph Bopp

## Was das ist

Kompoundierendes **Kunden-Kontext-Wissen** zu Christoph Bopp — einem wiederkehrenden
Auftraggeber von JANS (Raphael Jans Architekten ETH). Ziel: Anfragen von Christoph
schneller und treffsicherer beantworten, weil sein Kontext (Rollen/Firmen, laufende
Projekte, Arbeitsweise, typische Auftragsarten, Tonfall) als abrufbares Wissen vorliegt
statt jedes Mal aus dem Mail-Archiv rekonstruiert zu werden.

Dieser KB ist der **Prototyp eines Kunden-KB**. Das Schema (Profil · Projekte · Auftrags-
Muster · Lessons) ist auf weitere Schluesselkunden uebertragbar (`wissen/kunde-<name>/`).

## Fokus-Bereiche

1. **Profil & Beziehung** — wer ist Christoph, in welchen Rollen/Firmen tritt er auf
   (WOMA Maur, Nova Property, privat), Tonfall, Erreichbarkeit, Praeferenzen.
2. **Laufende & abgeschlossene Projekte** — je Objekt: Adresse, Auftragsart, Stand, Lessons.
3. **Auftrags-Muster** — welche Leistungen fragt er typischerweise nach (STWEG-Begruendung/
   Wertquoten, technische Due Diligence/Ankaufspruefung, baurechtliche Machbarkeit) und
   welcher JANS-Skill bedient sie.
4. **Vorgehens-Lessons** — was bei der Zusammenarbeit gut/schlecht lief, Honorar-Muster.

## Bibliothekar-Rolle

Active librarian (Rule `rules/wissens-bibliothekar.md`): ingestieren, kompilieren,
verlinken ohne Rueckfrage; jede Aenderung im `CHANGELOG.md`; Pause + Rueckfrage nur vor
Destruktivem. Quelle ist primaer das Mail-/Projektarchiv — beim Beantworten einer
Bopp-Anfrage entsteht ein Output, und das Profil/die Projektliste waechst mit.

## KB-spezifische Schreibregeln

- **Beleg-Pflicht:** Jede Aussage ueber Christoph (Rolle, Projekt, Praeferenz) traegt ihre
  Quelle (Mail-Datum + Absenderadresse, Projektordner). Unbelegte Vermutung =
  `status: speculative`.
- **Personendaten zurueckhaltend:** Nur geschaeftlich relevante Angaben (Rollen, Projekte,
  Arbeitsweise, geschaeftliche Kontaktdaten). Keine sensiblen Privatdaten sammeln; Natel/
  Mail nur, soweit fuer die Zusammenarbeit noetig und vom Kunden selbst geteilt.
- **Rollen sauber trennen:** Christoph tritt unter mehreren Absendern/Firmen auf
  (woma-maur.ch, novaproperty.ch, bluewin.ch). Bei jedem Projekt vermerken, in welcher
  Rolle/fuer welche Eigentuemerschaft er handelt — nicht vermischen.
- **Aktualitaet:** Projektstaende veralten; bei Statusangaben Datum mitfuehren und bei neuer
  Korrespondenz aktualisieren.
- Schweizer Hochdeutsch, echte Umlaute ae/oe/ue → ä/ö/ü, kein ß.

## Ordner

- `raw/` — Mail-Exporte, Threads, Dossiers, Protokolle, Wertquoten-xlsx von/zu Christoph.
  Reinkippen, nicht ordnen.
- `wiki/` — kompilierte Artikel (`profil-christoph-bopp`, je Projekt ein Artikel) + `INDEX.md`
  + `QUESTIONS.md`. Meine Domaene.
- `outputs/` — erzeugte Antworten/Memos/Briefings fuer Bopp-Anfragen (JJJJ-MM-TT_titel.md).

## Quellen-Hierarchie

1. Direkte Korrespondenz von Christoph (Mail, datiert, mit Absenderadresse).
2. Projektunterlagen/Dossiers im JANS-Archiv (OneDrive, NAS).
3. Eigene abgeschlossene Auftraege (outputs/ dieses KB).
4. Oeffentliche Register (Handelsregister/Zefix) nur fuer Firmenrollen-Verifikation.

## Anbindung an Skills

Bopp-Anfragen werden i.d.R. von diesen Skills bedient — dieser KB liefert den Kontext:
`stockwerkeigentum` (STWEG/Wertquoten), `ankaufspruefung` (TDD), `machbarkeit` (BZO/Baulinie),
`baurecht`, `honorarberechnung-sia102` (Honorar), `email`/`korrektur` (Antwort).
