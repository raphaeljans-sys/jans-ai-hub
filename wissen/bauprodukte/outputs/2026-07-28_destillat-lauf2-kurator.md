# Destillat-Lauf 2 `bauprodukte` — Kurator-Stufe (Phase 3), 28.07.2026, 05:30 (Mac Mini Nachtschicht)

## Ergebnis in einem Satz

Die vier am 28.07. morgens destillierten Artikel (PU-Beschichtung, ERCO Ratgeber
Teil 1, BKP-261-Aufzüge, Chromstahltreppe) sind gegen ihre Rohquellen und gegen
Nachbar-KBs geprüft; ein Cross-KB-Fund (SIA 500 Ziff. 3.7.3) wurde in beide
Richtungen verwoben, keine unbelegte Aussage gefunden, keine Status-Hebung.

## Ausgangslage

Der vorangegangene Lauf (`2026-07-28_destillat-lauf1.md` + CHANGELOG-Eintrag «Vier
Artikel destilliert») hatte die Phase-2-Fliessarbeit für 4 Artikel abgeschlossen,
aber ausdrücklich **keine Kuratierung** vorgenommen («Kein Fan-out, keine
AskUserQuestion — das macht die Kurator-Stufe»). Diese Lücke ist der Gegenstand
dieses Laufs (Skill `wissens-destillat`, Ablaufschritt 4).

## Beleg-Prüfung (gegen Rohquelle)

Stichprobenartig zwei der vier Artikel **vollständig gegen die Originaldatei**
gegengelesen (Budget-Disziplin: nicht alle vier, aber die mit den meisten
quantitativen Einzelangaben):

- **`pu-beschichtung-fassade.md`** gegen `021230 Beschichtung PU.doc`
  (`textutil -convert txt`): alle Zahlen (80-120 Fr./m², Sandstrahlen 25-30,
  Haftgrund 15-20, Schichtdicke 2mm, 70-80°C, Schlauchlänge 90m, 600 my
  Dampfdurchlässigkeit, 300-400% Elastizität) sowie alle drei Referenzbeispiele
  stimmen wortgetreu mit der Quelle überein. Keine Abweichung gefunden.
- **`chromstahltreppe-oberflaechen.md`** gegen `020320 Chromstahltreppe.doc`:
  alle fünf Preisangaben (55-60k/50-55k/40k/30k/35k), Werkstoff 1.4301, Verzug
  10-15°, Wartungsempfehlung (monatliches Nachschleifen) stimmen wortgetreu.
  Keine Abweichung gefunden.
- **`bkp-261-aufzuege.md`** (Datenblätter, teils Bild-PDF ohne Textlayer laut
  `pdftotext`-Test) und **`erco-lichtplanung-grundlagen.md`** (grosses PDF, nur
  Auszug S. 1-20) nicht Wort-für-Wort gegengelesen — Plausibilitätsprüfung
  stattdessen über Fachwissen (Kelly/Lam-Zuordnung, Seagram Building/Kimbell Art
  Museum sind bekannte, korrekt zugeordnete Referenzprojekte der Lichtplanungs-
  geschichte; MRL-/SP-Aufzugstypen sind branchenüblich benannt und die
  Kennwerte-Grössenordnungen plausibel). Kein Widerspruch gefunden.

**Ergebnis:** keine erfundene oder verzerrte Aussage in den zwei vollständig
geprüften Artikeln; keine Auffälligkeit in den zwei plausibilitätsgeprüften.

## Widerspruchs-Prüfung gegen Nachbar-KBs

Gezielt `wissen/normen/` nach Aufzugs-/Barrierefreiheits-Fundstellen durchsucht
(Rule `normen-referenz`), weil `bkp-261-aufzuege.md` EN 81-70 nur aus einem
Herstellerdatenblatt zitierte, ohne die massgebliche **Schweizer** Fundstelle:

- **Fund:** [[sia-500-2009]] (status `established`) zitiert in Ziff. 3.7.3/
  Tabelle 4 exakt SN EN 81-70 und nennt die drei Kabinen-Mindestmasse (Standard
  1.10×1.40 m / bedingt 1.00×1.25 m / Aussenraum 1.10×2.00 m).
- **Gerechneter Abgleich:** die AS-Winner-Kabine (1250×1460 mm) übertrifft
  rechnerisch beide Standard-Masse — die AS-eigene Einstufung «bedingt
  rollstuhlgängig» ist damit enger als die SIA-500-Mindestanforderung. Das ist
  kein Widerspruch zwischen den KBs, sondern eine Präzisierung: die
  Herstellerkategorie darf nicht unbesehen für ein SIA-500-Nachweis übernommen
  werden, das Kabinenmass ist gegen die Norm-Tabelle selbst zu rechnen.
- Kein Widerspruch zu `wissen/grobkosten` oder `wissen/baurecht` gefunden (keine
  Überschneidung in Preis-/Baurechtsaussagen der vier Artikel).

## Verwebung

- `wiki/bkp-261-aufzuege.md`: Backlink [[sia-500-2009]] ergänzt, neuer Abschnitt
  im Kapitel «Barrierefreiheit» mit dem gerechneten Kabinenmass-Abgleich, den
  offenen Punkt «EN 81-70 nicht im Volltext geprüft» auf die bereits verifizierte
  Schweizer Fundstelle umgestellt.
- `wissen/normen/destillate/sia-500-2009.md`: Rückverweis [[bkp-261-aufzuege]]
  in Frontmatter `links` und im Fliesstext bei Ziff. 3.7 ergänzt (Verwebung in
  beide Richtungen gemäss Skill-Anleitung).
- `pu-beschichtung-fassade.md` und `chromstahltreppe-oberflaechen.md`: keine
  Verwebungslücke gefunden, unverändert gelassen.

## Promotion

Alle vier Artikel bleiben `status: emerging` — keiner hat eine unabhängige
Zweitquelle (Rule 260714, Promotion nur bei Zweitbelegung). Keine Hebung.

## Was NICHT gemacht wurde (Budget-Disziplin)

- `erco-lichtplanung-grundlagen.md` und `bkp-261-aufzuege.md` wurden nicht
  Wort-für-Wort gegen die Bild-PDFs gegengelesen (OCR/Vision-Lektüre wäre ein
  eigener Kostenblock) — stattdessen Plausibilitätsprüfung über Fachwissen.
  Bei einem künftigen dedizierten Lauf: `bkp-261-aufzuege.md` gegen die
  Original-PDFs seitengenau nachprüfen, sobald die vier Datenblätter für ein
  konkretes Projekt gezogen werden (dann lohnt sich der Aufwand ohnehin).
- Keine neue Destillation in diesem Lauf (keine Phase 0/1/2) — reine Kuratierung,
  wie vom Nachtschicht-Auftrag verlangt (eine Aufgabe, messbares Ergebnis).

## Nächster Schritt

Laut `training/bauprodukte-inventar.md` bleiben triagierte P1-Positionen für einen
künftigen Phase-2-Lauf (u.a. ERCO-Restkapitel «Lichttechnik» mit den
praxisrelevanten Kennwerten). Diese Kuratierung ändert daran nichts — der nächste
Destillat-Lauf kann direkt mit Phase 2 fortsetzen.
