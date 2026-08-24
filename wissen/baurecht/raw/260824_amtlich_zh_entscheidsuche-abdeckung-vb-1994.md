---
quelle: entscheidsuche.ch (öffentlicher Elasticsearch-Proxy `_searchV2.php`, Index
  `entscheidsuche.v2-zh_verwaltungsgericht`, Hierarchie-Tag `ZH_VG`)
bezogen: 2026-08-24
methode: direkte API-Abfragen (curl, POST/JSON) gegen https://entscheidsuche.ch/_searchV2.php
zweck: Zugriffsweg-Abklärung für VB 94/0016 (= RB 1994 Nr. 72), zitiert in
  wiki/ausnahmebewilligung-und-bestandesschutz.md, seit Buch-Run 121 (2026-08-24) als
  unverifiziert geführt
---

# Abdeckungs-Nachweis entscheidsuche.ch für Jahrgang 1994 (ZH Verwaltungsgericht)

## Anlass

Buch-Run 126 hatte die interne Such-API von `entscheidsuche.ch` (`_searchV2.php`, Feld
`reference`, Format „ VB.JJJJ.NNNNN") erfolgreich für drei VB-Zitate aus 2003/2007 genutzt.
Als Fortsetzung (von Buch-Run 125/126 als nächster Schritt empfohlen) wurde geprüft, ob
derselbe Weg auch den bislang unverifizierten Fall **VB 94/0016 (RB 1994 Nr. 72)** erschliesst.

## Direkte Abfrage (negativ)

```
POST https://entscheidsuche.ch/_searchV2.php
{"query":{"term":{"reference":" VB.1994.00016"}}}
→ hits.total.value = 0

{"query":{"term":{"reference":" VB.94.00016"}}}
→ hits.total.value = 0
```

Kontrollprobe (identisches Abfrageformat, bekannter existierender Fall):

```
{"query":{"term":{"reference":" VB.2003.00118"}}}
→ hits.total.value = 1, Treffer korrekt (ZH_VG_001_-VB-2003-00118_2003-05-13)
```

Die Methode selbst ist damit verlässlich; die Nulltreffer für 1994 sind kein Abfragefehler.

## Statistischer Nachweis: Jahrgang 1994 ist im Index nicht vorhanden

Datums-Aggregation über den gesamten Bestand (`hierarchy: ZH_VG`) zeigt, dass die früheste
Einzelentscheidung 1990-09-25 datiert, der Bestand vor 2000 aber nur eine Handvoll Ausreisser
enthält:

```
POST .../_searchV2.php
{"size":0,"query":{"term":{"hierarchy":"ZH_VG"}},
 "aggs":{"by_year":{"date_histogram":{"field":"date","calendar_interval":"year","format":"yyyy"}}}}

1990 → 1 Eintrag
1991-1995 → 0 Einträge (auch 1994: 0)
1996 → 1
1997 → 1
1998 → 3
1999 → 3
2000 → 219
2001 → 222
2002 → 206
2003 → 269
2004 → 288
```

Zusatzabfrage direkt auf den Datumsbereich 1994-01-01 bis 1994-12-31 (Hierarchie `ZH_VG`)
liefert ebenfalls `hits.total.value = 0`.

## Befund

Der Jahrgang 1994 ist im Verwaltungsgerichts-Index von `entscheidsuche.ch` **vollständig
unvertreten** (nicht nur der gesuchte Einzelfall). Das bestätigt statistisch, was in
[[ausnahmebewilligung-und-bestandesschutz]] bisher nur als Vermutung stand («VGr-Datenbank
deckt erst ab 2000») — mit Zahlenbeleg statt Annahme.

## Geprüfte Alternativwege (alle negativ oder nur kostenpflichtig)

1. **Offizielle Entscheiddatenbank des Verwaltungsgerichts ZH** (`zh.ch`, verwiesen von
   `zh.ch/de/politik-staat/streitigkeiten-vor-verwaltungsgericht/rechtsprechung-des-
   verwaltungsgerichts.html`): keine Angabe zum Erfassungszeitraum, kein Hinweis auf
   Entscheide vor 2000. Die Seite nennt aber einen offiziellen Weg für nicht in der
   Datenbank auffindbare Urteile: **kostenpflichtige Bestellung einer anonymisierten
   Urteilskopie direkt beim Gericht.**
2. **Rechenschaftsberichte Gerichte ZH** (`gerichte-zh.ch/organisation/obergericht/
   rechenschaftsbericht`): nur Obergericht (nicht Verwaltungsgericht), online nur ab
   Jahrgang 2005; ältere Jahrgänge nur gegen Fr. 18.– pro Exemplar per E-Mail bestellbar
   — selbst wenn erhältlich, wäre das der falsche Gerichtszweig.
3. **e-periodica.ch** (WebSearch): keine digitalisierten Rechenschaftsberichte des ZH
   Verwaltungsgerichts aus den 1990er-Jahren auffindbar.
4. **`zentraleserien.zh.ch`** (Staatsarchiv, Fund aus Buch-Run 123): deckt nur
   Regierungsratsbeschlüsse (RRB) ab, keine Verwaltungsgerichtsentscheide — für VB 94/0016
   von vornherein nicht der richtige Bestand (galt bereits für RRB Nr. 1294/1995, nicht neu
   für VB 94/0016 geprüft, da kategorisch falsche Quelle).

## Schluss

Kein freier, unmittelbarer digitaler Zugriffsweg auf VB 94/0016 (RB 1994 Nr. 72) bekannt.
Der einzige verbleibende Weg ist die kostenpflichtige Bestellung beim Verwaltungsgericht ZH
selbst — das liegt ausserhalb der Kompetenz eines Wissens-Layer-Laufs (Rule
`user-CLAUDE.md` «Grenzen»: keine Zahlungen ohne Einzelfreigabe) und wird hier nur als
Option für Raphael festgehalten, nicht ausgelöst.
