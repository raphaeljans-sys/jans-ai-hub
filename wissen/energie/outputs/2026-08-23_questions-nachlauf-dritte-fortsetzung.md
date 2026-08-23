---
title: Interaktive Session (dritte Fortsetzung) — E-R129-1 und E-R33-1 (Cross-KB) geschlossen, E-R147-1 teilweise geklärt
datum: 2026-08-23
station: MacBook Pro / Claude Code (interaktiver Auftrag, dritte Fortsetzung derselben Session)
---

# Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, danach
in die Wiki-Artikel einarbeiten. Fortsetzung zweier vorangehender Interaktiv-Sessions desselben
Tages (CHANGELOG-Einträge «15 offene Fragen geschlossen» und «E-R25-3 vollständig geschlossen,
E-PL02-1/2 als Registerpflege geschlossen»).

# Vorgehen

Zuerst CHANGELOG und die beiden letzten Output-Reports gelesen (Run 150 und die vorangehende
Fortsetzungs-Session), um dort weiterzumachen, wo der letzte Lauf aufgehört hatte. Alle noch mit
`- [ ]` markierten Punkte in `wiki/QUESTIONS.md` durchgesehen (`grep`); daraus drei Punkte
ausgewählt, die entweder KB-intern lösbar sind (kein PL-02/PL-04-Korpuszugriff, den Run 150
bereits als erschöpft dokumentiert hatte) oder einen einzigen, gezielten Web-Abruf verlangen.

# Bearbeitet

## E-R129-1 (P2) — geschlossen, KB-intern

Der Raumschall-Grenzwert 25 dB(A) im AHB-Merkblatt Kontrollierte Wohnungslüftung (Stadt Zürich
AHB, 2007) war nie gegen die geltende SIA 181 geprüft, obwohl die KB seit Juni 2026 ein eigenes
Destillat der Anforderungswerte führt (`[[sia-181-schallschutz-anforderungswerte]]`). Reiner
Lesevergleich zweier bestehender Destillate, keine neue Quelle nötig.

**Ergebnis:** Kategorie «Haustechnik-Geräusche, Dauergeräusch, Lärmempfindlichkeit mittel
(Wohnen)»: Mindestanforderung 28 dB(A), erhöhte Anforderung rechnerisch 24 dB(A), gekappt am in
der Norm selbst definierten Kleinstwert 25 dB(A). Die 25 dB(A) des AHB-Merkblatts entsprechen
damit exakt der heute geltenden SIA-181:2020-**erhöhten** (Komfort-)Anforderung, nicht der
Mindestanforderung — ein Unterschied von 3 dB, praktisch relevant bei Übernahme in eine
Ausschreibung oder einen Werkvertrag (Komfortziel darf nicht unbemerkt zum Vertragsminimum
werden oder umgekehrt).

Eingearbeitet: `destillate/ahb-merkblatt-kontrollierte-wohnungslueftung.md` (Offene Punkte,
Frontmatter `datenstand`, Backlink), `wiki/QUESTIONS.md`.

## E-R33-1 (P2, Cross-KB mit `normen`) — geschlossen per Web-Abruf

Seit Wissens-Chef Run 28 (07.08.2026) stand offen, welche Formulierung zur Ausgabe von SIA 387/4
korrekt ist: «SIA 387/4:2023, gültig ab 01.08.2023» (fünf Fundstellen in `energie`) gegen «SIA
387/4 Ausgabe 2017, aktualisiert 01.08.2023» (eine Fundstelle,
`destillate/aufzug-energieeffizienz-vdi4707.md`). Die KB `normen` führt die Norm-Fundstelle
(Rule `normen-referenz`) und hatte den Punkt ausdrücklich offen gelassen, bis ein eigener,
datierter Abruf der SIA-387/4-Produktseite auf `shop.sia.ch` vorliegt — dieser Abruf war seit
Run 28 nie gemacht worden, weder in `normen` noch in `energie`.

**Durchgeführt:** direkter Abruf beider Produktseiten via WebFetch (23.08.2026):
- `shop.sia.ch/normenwerk/architekt/387-4_2017_d/D/Product`: SIA 387/4:2017, gültig ab
  01.05.2017, **gültig bis 31.07.2023, Status archiviert**, mit Korrigenda C1 vom 01.04.2020.
- `shop.sia.ch/normenwerk/architekt/387-4_2023_d/D/Product`: SIA 387/4:2023, gültig ab
  01.08.2023, Status **aktiv**, führt SIA 387/4:2017 und SIA 387/4-C1:2020 ausdrücklich als
  archivierte Vorgänger.

**Ergebnis:** Es handelt sich um eine eigenständige neue Ausgabe (2023), nicht um eine blosse
Aktualisierung der 2017er-Fassung. Die Formulierung «Ausgabe 2017, aktualisiert 01.08.2023» war
falsch; «SIA 387/4:2023, gültig ab 01.08.2023» war die korrekte Formulierung und stand bereits an
fünf von sechs Stellen in der KB.

**Cross-KB-Bringschuld (Rule `wissens-bibliothekar`):** da `normen` denselben Auftrag ausdrücklich
als eigenen offenen Punkt (N27-2) führte, ist der Befund direkt dort nachgetragen —
`wissen/normen/wiki/REGISTER.md` Zeile 315 und `wissen/normen/wiki/QUESTIONS.md` (N27-2-Eintrag),
plus eigener CHANGELOG-Eintrag in `wissen/normen/CHANGELOG.md`, der die Gegenrichtung nennt.

**Unverändert bestehen bleibt** der ZH-Vollzugs-Vorbehalt: die BBV I ZH nennt für den Nachweis
EN-111 weiterhin die Ausgabe 2017 als **beachtliche** (nicht verordnungsverbindliche) Richtlinie
nach § 360 Abs. 3 PBG (Wissens-Chef Run 32) — das ist eine separate, unveränderte Rechtsfrage.

Eingearbeitet: `destillate/aufzug-energieeffizienz-vdi4707.md` (zwei Korrekturstellen +
ausführlicher Offene-Punkte-Nachtrag + Frontmatter), `wiki/QUESTIONS.md`,
`wissen/normen/wiki/REGISTER.md`, `wissen/normen/wiki/QUESTIONS.md`.

## E-R147-1 (P3) — teilweise geklärt, bleibt offen markiert (`[~]`)

Zwei Auflagen desselben Stadt-Zürich/ewz-Flyers «Professionelle Beschaffung: Haushaltgeräte»
(November 2004 und Januar 2008) rechnen dasselbe Wärmepumpen-Tumbler-Beispiel mit
unterschiedlichem Ergebnis vor: 5'300 CHF Ersparnis (2004) gegen 3'900 CHF (2008, FAQ F210). Die
im Register vermutete Ursache war eine geänderte Strompreis-Annahme zwischen den Ausgaben.

**Nachgerechnet:** beide Ausgaben rechnen mit demselben Strompreis 20 Rp./kWh (2004er-Ausgabe:
Beispiel-Wohnung auf derselben Seite, «3'300 kWh à 20 Rp./kWh»; 2008er-Ausgabe: dasselbe
Tumbler-Beispiel explizit «20 Rp./kWh Strom»). Die 2008er-Zahl rechnet exakt auf: 5'000 kg/Jahr ×
(0,60 − 0,34) kWh/kg × 20 Rp./kWh × 15 Jahre = 3'900 CHF. **Die Strompreis-Hypothese ist damit
widerlegt.** Die 2004er-Ausgabe nennt für denselben Verbrauchsunterschied nur die Faustregel «das
Doppelte an Strom», ohne die zugrundeliegenden kWh/kg zu beziffern (im vorliegenden
Destillat-Fliesstext nicht extrahierbar). Wahrscheinlichste Ursache jetzt: eine abweichende,
gröber gerundete Verbrauchsannahme der 2004er-Ausgabe (2008: Verhältnis 0,60/0,34 ≈ 1,76, nicht
exakt doppelt) — endgültig nur mit den fehlenden Original-kWh/kg-Werten der 2004er-Ausgabe
auflösbar, die auf SharePoint (PL-02) läge.

Checkbox bewusst auf `[~]` (teilweise) statt `[x]` gesetzt — die Ursache ist eingegrenzt, nicht
abschliessend bewiesen. Eingearbeitet:
`destillate/haushaltgeraete-professionelle-beschaffung-2004-erstausgabe.md` (zwei Stellen +
Frontmatter), `wiki/QUESTIONS.md`.

# Nicht angefasst

Unverändert seit den vorangehenden Sessions: E-R148-1 (Normkauf SIA 380/1:2016, Beschaffungs-
entscheid Raphaels), E-R149-4 (Task-Datei von der Harness als sensibel blockiert), E-R150-3
(bewusst offen dokumentiert, im Quelldokument nicht auflösbar), E-R143-2 (gehört sachlich zu
`normen`, Auflösung über SN-EN-12464-1), sowie alle Punkte, die einen erneuten PL-02-Datei-
zugriff verlangen (E-R132-2/-3/-4, E-R131-2, E-R129-2/-4/-5, E-R134-2/-3/-4, E-R140-1, E-R138-2,
E-S1) oder JANS-eigene Projektdaten brauchen (E103, E94).

# Registerpflege

`wiki/QUESTIONS.md` (drei Punkte bearbeitet, zwei `[x]`, einer `[~]`), zwei Destillate der KB
`energie` ergänzt, zwei Register der KB `normen` nachgetragen (Cross-KB-Bringschuld), beide
CHANGELOGs. Nach jedem Schreibvorgang `git diff --numstat` geprüft (nur additive Deltas, keine
ungewollten Löschungen — Details siehe Einzel-Commits).

# Priorität für den nächsten Lauf

Unverändert: der Normkauf SIA 380/1:2016 (E-R148-1) bleibt der einzige werthaltige Engpass, der
eine Kaufentscheidung Raphaels braucht. Für einen Lauf mit erneutem SharePoint/PL-02-Zugriff (M365
CLI) wären E-R132-2/-3, E-R129-2/-4 und die Original-kWh/kg-Werte zu E-R147-1 die nächsten
Kandidaten — alle drei sind reine Dateisichtungsarbeit, keine neuen Recherchefragen.
