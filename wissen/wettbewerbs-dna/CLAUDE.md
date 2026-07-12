# KB wettbewerbs-dna — Regeln fuer den Bibliothekar

Zweck: Diese Wissensbasis destilliert das JANS-Wettbewerbswissen — aus den eigenen
Teilnahmen (`OneDrive/AR - 02 Wettbewerbe/`, 12 Projekte) und spaeter aus externen
Juryberichten (konkurado.ch, competitions.espazium.ch) — zu einem kompoundierenden
Modell: **Welche Typologie und Programmanordnung gewinnt bei welcher Bauaufgabe, und
warum?** Sie speist den Skill `wettbewerb` (Agenten programm-leser, programm-pruefer,
bericht-autor) und ist die Wissensgrundlage des Wettbewerbs-Layers
(Spec: `wissen/spec/outputs/2026-07-12_wettbewerbs-layer_spec.md`).

## Quellen-Prinzip (WICHTIG, abweichend vom Standard)

Die Originalquellen (Programme, Abgaben, Juryberichte, CAD, Bilder) BLEIBEN im
OneDrive-Archiv `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 02 Wettbewerbe/`
— sie werden NIE hierher kopiert (17'045 Dateien) und NIE veraendert (Nur-Lese-Quelle).
`raw/` enthaelt nur Text-Extrakte (z.B. pdftotext-Dumps von Juryberichten) mit
Quellpfad-Vermerk im Dateikopf.

## Dossier-Format je Teilnahme (`wiki/teilnahmen/<nr>-<name>.md`)

Frontmatter gemaess `wissen/WISSEN-CLAUDE.md` (title, status, last_updated, sources, links).
Pflicht-Sektionen:

1. **Stammdaten** — Verfahren (offen/selektiv), Auslober, Bauaufgabe, Jahr, Kennwort,
   Resultat (Rang/Anerkennung), Team.
2. **Programm-Soll** — Kernvorgaben: Raumprogramm-Eckwerte, Abgabeforderungen, Kriterien.
3. **Eigener Beitrag** — gewaehlte Typologie (Taxonomie unten), Programmanordnung,
   Setzung/Staedtebau, Material/Tragwerk, Kennzahlen (GF/GV, falls belegt).
4. **Jury-Urteil** — Lob und Kritik als kurze woertliche Zitate MIT Beleg
   (Dokument + Seite). Bei Rang 2–n: **Delta zum 1. Platz** explizit (was hatte der
   Sieger, was wir nicht hatten — aus der Wuerdigung des Siegerprojekts destilliert).
5. **Lessons / DNA** — verallgemeinerbare Regeln («bei Schulhaus-Erweiterung am Hang
   praemierte die Jury …»), verlinkt auf `wiki/muster/`-Artikel.

## Taxonomie Typologie (einheitlich verwenden)

Kompakter Solitaer · gegliederter Solitaer · Zeile · Winkel/L · Hof/Cluster ·
Ensemble/Mehrkoerper · Anbau/Weiterbauen · Hochpunkt. Erschliessung: Spaenner ·
Laubengang · Cluster · Halle/Zentralraum. Immer plus Freitext-Praezisierung.

## Status-Hebung (Verifikations-Pflicht, Regel 260712)

Artikel starten als `draft`. Hebung auf `established` NUR nach unabhaengiger
Widerlegungs-Pruefung (Refuter-Agent liest den Original-Jurybericht gegen den Artikel:
stimmen Zitate, Rang, Zuordnungen?). Ergebnis im CHANGELOG protokollieren.

## Schreibregeln

Schweizer Hochdeutsch, echte Umlaute (Dateinamen ASCII). Jede nicht-triviale Aussage
mit Quelle (Pfad + Seite). Vollstaendige Pfade ausschreiben (Regel 260619). Fremde
Projekte/Juryberichte nur sinngemaess, Zitate kurz (Urheberrecht). Nichts erfinden;
Luecken nach `wiki/QUESTIONS.md`.

## Goldstandards

Die beiden **2. Plaetze 2102 Muttenz und 2206 Schoental** sind die Goldstandard-Dossiers
(Aussage Raphael 12.07.2026): an ihnen wird das maschinelle Wettbewerbs-Prozedere
geschaerft, weil dort das Delta zum Sieg dokumentiert ist.
