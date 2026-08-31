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

## Ableitungs-Regel fuer `wiki/muster/`-Artikel (Bauaufgaben-Weiche, 31.08.2026)

Es gibt **kein** Template fuer die `muster/kennwerte-*`- und `muster/jury-argumente-*`-Artikel;
ein neuer Artikel wird faktisch aus dem zuerst geschriebenen abgeleitet (Reihenfolge Schulbau
20.07. → Healthcare 25.07. → Wohnungsbau 27.07.2026). **Genau dabei wandern bauaufgaben-
abhaengige Saetze unbemerkt mit.** Belegter Fall: die Standardformel «fuer CHF/m3 fuehrt
`wissen/grobkosten/`» ist fuer Schulbau und Wohnungsbau richtig, fuer **Healthcare falsch**
(dort fuehrt `wissen/immobilienbewertung/wiki/realwert-sachwert.md`) — sie stand vom 25.07.
bis zum 31.08.2026 dreimal falsch in `muster/kennwerte-healthcare.md`.

Darum gilt beim Ableiten oder Erweitern eines Muster-Artikels:

1. **Jede Fuehrungsaussage** («fuehrend ist KB X», «Wahrheit liegt bei Y») wird gegen die
   Fuehrungsmatrix in `wissen/koordination/QUERBEZUEGE.md` geprueft, bevor sie uebernommen
   wird — nie aus dem Vorgaengerartikel uebernehmen.
2. Ist die Aussage bauaufgaben-abhaengig, wird sie im Zielartikel als **Bauaufgaben-Weiche**
   markiert (⚠-Block direkt vor dem Satz, wie in `kennwerte-schulbauten.md`,
   `kennwerte-healthcare.md`, `kennwerte-wohnungsbau.md` seit 31.08.2026).
3. Dasselbe gilt fuer **Kennwert-Baender**: Vorbehalte und Nicht-Reproduzierbarkeiten der
   Quelle wandern mit dem Wert mit, nicht nur der Wert (Beispiel: 826–1'420 CHF/m3 GV gilt,
   der reproduzierbare Rohband 826–1'285 ist ausdruecklich **kein** geltender Band).

Kuenftige Kandidaten, an denen die Regel greift: eine vierte Bauaufgabe «Gewerbe/Buero» und
ein sechster Healthcare-Subtyp «ambulante Praxisbauten» (beide Entscheid Raphael, offen).

## Goldstandards

Die Dossiers **2102 Muttenz und 2206 Schoental** sind die Goldstandard-Dossiers
(Aussage Raphael 12.07.2026): an ihnen wird das maschinelle Wettbewerbs-Prozedere
geschaerft, weil dort das Delta zum Sieg dokumentiert ist.

⚠ **Rang-Korrektur 31.08.2026 (Etappe 4, Lauf 05):** Hier stand bis heute «die beiden
**2. Plaetze** 2102 Muttenz und 2206 Schoental». Das ist der belegte Rang-Stolperstein dieser
KB an seiner Wurzel — an der Stelle, die jeder Lauf zuerst liest. Belegt gilt:
**2102 Muttenz = 4. Rang / 3. Preis** (Jurybericht S. 15) und **2206 Schoental = 3. Rang /
3. Preis** (Schlussbericht S. 11, amtlich bestaetigt durch die Verfuegung des Schulrats
Altstaetten, Dokument `221109_Entscheid_Schoental_Altstaetten.pdf`; das Ausstellungsdatum
ist quellenintern widerspruechlich — Dateiname 09.11.2022 gegen Quellenzeile 17.11.2022 —
und wird darum hier NICHT beziffert, siehe `wiki/QUESTIONS.md`). Massgeblich sind allein `wiki/INDEX.md` und
`outputs/2026-07-12_rang-klaerung-2102-2206.md` — nie Gedaechtnis, Rule oder Memory. Die
Goldstandard-Eigenschaft haengt am dokumentierten Delta zum Sieg, nicht am Rang.
