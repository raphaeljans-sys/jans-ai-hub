---
title: "KBOB 2002: Gleitpreisklausel-Formel für Teuerungsabrechnungen und Honorargrundprozentsatz-Kurve bei subventionierten Bauten"
status: emerging
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/03_Bauprozesse_I_II/05_Vertraege/2_2002_KBBOB Hilfe Arch_verträge.pdf (KBOB «Verträge mit Architekten und Ingenieuren — Empfehlungen zur Honorierung, Ansätze (Rahmentarif) für Vergaben im freihändigen Verfahren», 19.12.2001/2002, Volltext gelesen, 3 Seiten)", "raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md Tabelle P2 Zeile 104"]
links: ["[[zeittarif-mechanik-tarifblatt-stgallen-2009]]", "[[honorarmechanik-wettbewerb-oeffentliche-bauherrschaft]]", "[[honorarberechtigte-bausumme-anrechenbarkeit]]"]
---

# KBOB 2002: Gleitpreisklausel-Formel und Honorargrundprozentsatz-Kurve

## Kontext

Amtliches Merkblatt der KBOB (Koordination der Bau- und Liegenschaftsorgane des Bundes;
Bund, Kantone/BPUK, Städte/SSV) vom 19.12.2001, gültig 2002, zu Honorierungsempfehlungen für
Architektur-/Ingenieurverträge. Die darin enthaltene **Zeittarif-Mechanik** (Mittelansatz,
Kategorien A–G, Anforderungsfaktor «a») ist inhaltlich dieselbe Systematik wie in
[[zeittarif-mechanik-tarifblatt-stgallen-2009]] bereits destilliert (dort die 2009er-Ausgabe
derselben KBOB-Linie) — hier **nicht erneut destilliert**, nur mit anderen 2002er-Zahlen
belegt (Mittelansatz 2002: CHF 140.–, Kategorien 190/160/130/110/95/85/75). Zwei
Mechanismen aus diesem Dokument sind dagegen **neu** und in keinem bestehenden Artikel
erfasst: die Gleitpreisklausel-Formel für Teuerungsabrechnungen und die
Honorargrundprozentsatz-Kurve bei subventionierten Bauten.

## Gleitpreisklausel/Teuerungsabrechnung

Gilt nur für Verträge mit **mindestens dreijähriger Laufzeit**, bei allen Honorarformen
ausser Pauschalverträgen, und nur bei einer Veränderung des Landesindex der Konsumentenpreise
(Basis Mai 1993 = 100) von **über 2 %** gegenüber Vertragsbeginn (einmalige Indexanpassung pro
Jahr).

Formel: **t1 = (0,2 + 0,8 × J1 / J0) − 1**

- `J0` = Landesindex bei Vertragsabschluss (Wert Oktober des Vorjahres)
- `J1` = aktueller Landesindex (Wert Oktober des Vorjahres des Anwendungsjahres)
- `0,2` = Festanteil (nicht indexabhängig)
- `0,8` = Lohnanteil (indexabhängig)
- Bei Verträgen über fünf Jahren Laufzeit darf **ab dem fünften Vertragsjahr** der Festanteil
  auf 0,15 und der Lohnanteil auf 0,85 verschoben werden.

Rechtsgrundlage laut Dokument: KBOB-Anwendungsrichtlinien zu den SIA-Ordnungen für
Leistungen und Honorare, Ausgabe Mai 1998, Ziff. zur Teuerungsabrechnung. Diese
Anwendungsrichtlinien sind hier nicht im Volltext geprüft — vor Verwendung im aktuellen
Vertrag gegen die jeweils gültige SIA-Ordnung und aktuelle KBOB-Fassung verifizieren, die
80/20-Aufteilung selbst ist der übertragbare Kern.

## Honorargrundprozentsatz bei subventionierten Bauten (freihändig, ohne Wettbewerb)

Für subventionierte Aufträge, die ohne Wettbewerbsverfahren freihändig vergeben werden, gibt
das Dokument eine **degressive Prozentkurve** des Honorars an den honorarbestimmenden
Baukosten vor, getrennt nach SIA-Ordnung 102/103 (Standard) und 108 (höherer Satz, vermutlich
für erschwerte/komplexere Aufgaben). Eckwerte 2002 (Baukosten exkl. MWST in Mio. CHF →
Honorarsatz in % nach 102/103 bzw. 108):

| Baukosten (Mio. CHF) | 102/103 | 108 |
|---|---|---|
| 0.10 | 26.8 % | 28.8 % |
| 0.50 | 18.5 % | 19.8 % |
| 1.00 | 16.1 % | 17.2 % |
| 3.00 | 13.3 % | 14.1 % |
| 5.00 | 12.3 % | 13.0 % |
| 10.00 | 11.1 % | 11.8 % |

Der Satz nach 108 liegt durchgehend rund 1–2 Prozentpunkte über 102/103. Die Kurve dient hier
als **Maximalansatz** für die Festlegung von Subventionen, nicht als reguläres
Vergabehonorar — Charakter also eher Ober-/Referenzgrenze als Marktpreis.

## Praxisregel/Anwendung

- Die Gleitpreisklausel-Formel ist als **Mechanik-Vorlage** für eigene Honorarverträge mit
  mehrjähriger Laufzeit brauchbar (Festanteil/Lohnanteil-Split, Bagatellschwelle 2 %,
  jährliche statt laufende Anpassung) — unabhängig vom konkreten Indexstand 2002.
- Die Honorargrundprozentsatz-Kurve ist nur bei tatsächlich subventionierten,
  freihändig vergebenen Aufträgen relevant (Sonderfall); für reguläre Honorarberechnung
  bleibt Skill `honorarberechnung-sia102` massgebend (eigene Konvention, andere Zahlen, siehe
  Vorbehalt in `wiki/INDEX.md`/CHANGELOG Run 41).
- Nebenkosten-Ansätze 2002 (Bahn Halbpreis, Auto CHF 0.40/km, Mahlzeit CHF 25.–, Übernachtung
  CHF 85.– inkl. Frühstück, Kopien max. CHF 0.20/Stück) sind reine 2002er-Spesenwerte ohne
  strukturellen Neuwert gegenüber heutiger Büropraxis — bewusst nicht als eigener Punkt
  destilliert.

## Offene Punkte

- Die KBOB-Anwendungsrichtlinien (Ausgabe Mai 1998), auf die dieses Merkblatt für Details
  verweist, liegen nicht im Archiv vor und sind nicht geprüft.
- Nicht verifiziert, ob die 2 %-Bagatellschwelle und der 0,2/0,8-Split in der aktuell
  gültigen KBOB-Fassung unverändert gelten — vor Vertragsgebrauch amtlich nachschlagen.
