# DIN 1946-6 ↔ SIA 382/1 Methodenvergleich — Mac Mini Nachtschicht 21.07.2026

## Auftrag

Nachtschicht-Zyklus Mac Mini (Prioritaet 5: offene QUESTIONS.md einer KB recherchieren und
als Wiki-Artikel kompilieren). Doppelarbeit-Guard geprueft: `dispatch/log/` und CHANGELOG
zeigten keinen parallelen Zugriff auf diesen Punkt durch die MacBook-Dauerschicht.

## Vorgehen

1. Vier offene Punkte in `wissen/normen/wiki/QUESTIONS.md` gesichtet (DIN/VSS/RAL-Bereich,
   Mac-Mini-Zustaendigkeit gemaess Arbeitsteilung 260714). Drei davon brauchen entweder eine
   Raphael-Entscheidung oder sind bestaetigte Negativbefunde ohne neuen Rechercheansatz
   (Kantonsrat-Solarpflicht-Beratungsstand, DIN-277-1-Lesefehler lokal, Task-Stilllegung).
2. Vierter Punkt («din-1946-6-2009 ↔ SIA 382/1 Methodenvergleich») war seit Run 5 (13.07.)
   als «Teil-Grundlage vorhanden» vermerkt und wartete auf die SIA-382/1-Anhaenge — die
   wurden just heute (Run 17, MacBook Pro) ergaenzt und adversarial verifiziert.
3. Beide Destillate (`din-1946-6-2009.md`, 311 Zeilen, vollstaendig gelesen+verifiziert;
   `sia-382-1-2014.md`, 156 Zeilen, vollstaendig gelesen+verifiziert) vollstaendig gelesen.
   Keine externe Recherche noetig — reine Synthese aus vorhandenem, bereits belegtem Material.
4. Vergleichsartikel geschrieben: Geltungsbereich, Bemessungslogik (Kernbefund),
   Betriebsstufen/Steuerung, Energieeffizienz-Kennwerte, Waermerueckgewinnung,
   Praxisfolge JANS, offene Punkte.

## Ergebnis

Neuer Wiki-Artikel `wissen/normen/wiki/din-1946-6-sia-382-1-lueftungsauslegung-methodenvergleich.md`
(status established, da vollstaendig aus zwei established-Quellen synthetisiert, keine eigene
neue Tatsachenbehauptung ausserhalb der Quellen).

**Kernbefund:** DIN 1946-6 bemisst huellen-/feuchteschutzgetrieben (Flaechenformel +
Raum-Pauschalwerte), SIA 382/1 nutzungs-/lastgetrieben (Personen/Waerme/Schadstoffe als
gleichrangige Kriterien). Ein direkter Zahlenvergleich einzelner Tabellenwerte ist deshalb
nur bedingt aussagekraeftig. Fuer CH-Baueingaben bleibt ausschliesslich SIA 382/1
(+ SIA 180/380/1/2023) massgebend — DIN 1946-6 dient in dieser KB nur als Kontextwissen fuer
Projekte mit deutscher Bauherrschaft/Lieferantenunterlagen, nie als Ersatzgrundlage.

## Register nachgefuehrt

- `wiki/QUESTIONS.md` — Punkt geschlossen (✓ 2026-07-21).
- `wiki/INDEX.md` — neuer Artikel eingetragen.
- `CHANGELOG.md` — Eintrag oben ergaenzt.

## Offen / naechster Schritt

- Kein Zahlenvergleich der konkreten Tabellenwerte (DIN Tab. 5-7 vs. SIA Tab. 14) — beide
  Quellen referenzieren Originaltabellen nur sinngemaess (Urheberrecht); waere ohnehin nur mit
  Vorbehalt aussagekraeftig (siehe Artikel Abschnitt 2).
- DIN-4719-Produktnorm (P_SPI/P_E-Grenzwerte) nicht im Bestand — fuer vollstaendigen
  Effizienz-Zahlenvergleich fehlt diese Quelle; kein akuter Bedarf, da CH-Praxis ohnehin
  SIA-SPI-Grenzwert (≤0,35 W/(m³/h)) massgebend ist.

## Budget

Deutlich unter dem 5-USD-Nachtschicht-Limit — reine Lesearbeit an zwei bereits im Bestand
vorhandenen Destillaten, kein Agent-Fan-out, keine Websuche.
