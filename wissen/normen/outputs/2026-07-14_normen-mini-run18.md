# Normen-Training Mini (Mac Mini) — Run 18 Abschluss, 14.07.2026

## Auftrag

Intensiv-Lauf DIN/VSS/RAL (Stations-Split Mac Mini, SIA/VKF bleiben MacBook Pro). Beim Start
dieses Laufs zeigte `git status`, dass ein bereits laufender Hintergrund-Prozess (Vollgas-Runner)
den Batch aus dem Run-17-Plan («Core-Batch» DIN 1045-2/18065/277-3/4844-2/EN-12101-2/EN-12207/
V-105-100/V-106, VSS 40-291/640-050/640-060/640-065/640-281/640-578) bereits retro-verifiziert
hatte — 7 von 14 Destillaten waren committet (Commit `57d55fdd`, "Run 18: ... teilweise"), die
restlichen 7 nur lokal geaendert, und `training/norm-inventar.md` hatte fuer keine der 14
Positionen einen Verifikations-Vermerk.

## Durchgefuehrt

1. `git pull --rebase` (nach Stash der unabhaengigen `station-status/mac-mini.md`-Aenderung).
2. Verifikations-Stand je Destillat gegen `destillate/INDEX.md` und die Frontmatter-Felder
   `status`/`verifikation` geprueft — alle 14 zeigten bereits `established (verifiziert 260714,
   Volltextabgleich Mini-Run 18)`, teils mit expliziten Korrekturvermerken (z.B. DIN 1045-2
   Expositionsklasse XF, DIN EN 12101-2 Anhang D/F).
3. Die 7 lokal offenen Destillat-Dateien committet.
4. `training/norm-inventar.md` fuer alle 14 Zeilen mit dem Vermerk «Retro-verifiziert Mini-Run 18
   (260714): established» ergaenzt (1 Fehlmatch auf die xalt/ersetzt-Zeile `xalt/VSS 640 065...`
   sofort korrigiert, siehe unten).
5. Commit + Push (`8809d2ca`), CHANGELOG ergaenzt.

## Qualitaetskontrolle des eigenen Scripts

Der automatisierte Zeilen-Update (Python, Substring-Match auf Dateinamen) traf zunaechst
faelschlich auch die `xalt/`-Zeile `VSS 640 065 Leichter Zweiradverkehr.pdf` (ersetzte/alte
Datei, kein aktives Destillat), weil der Dateiname als Substring auch im `xalt/`-Pfad vorkommt.
Sofort erkannt und zurueckgesetzt, bevor committet wurde — keine Fehlinformation im Inventar.

## Ergebnis

- 14 DIN/VSS-Kernnormen sind jetzt sowohl in `destillate/INDEX.md` als auch in
  `training/norm-inventar.md` konsistent als retro-verifiziert (`established`) ausgewiesen.
- Die DIN/VSS/RAL-Familie hat damit im Kern-/Geometrienormen-Bereich (alle Positionen mit
  direktem Skill-Bezug: Bauphysik/Tragwerk, Brandschutz-NRA, Parkierung/Verkehr) keine offene
  Retro-Verifikation mehr.

## Offen fuer den naechsten Schritt (in diesem Lauf direkt weiterverfolgt, siehe Run 19)

Die 10 Register-/Glossar-Positionen aus dem Run-17-Plan (din-abkuerzungsverzeichnis-2010,
din-inhaltsverzeichnis-normensammlung-2012, baurecht-din-normenwerk-grundlagen-2010,
baupreisindizes-statistisches-bundesamt-2010, din-planungsgrundlagen-hoai-vorschriften-2004,
din-919-1-1991, din-1946-7-2009, din-272-1986, din-107-1974, din-1356-6-2006) sowie 6 weitere
randstaendige "Sonstiges"-Dokumente ohne Verifikations-Vermerk (treppen-hcu-hamburg-2008,
nbauo-barrierefreiheit-2004, baunvo-1990, arbstaettv-2004, hoai-bauen-im-bestand-2011,
vds-2234-1999-brand-komplextrennwaende) plus die Vervollstaendigung des Teil-Destillats
vstaettvo-niedersachsen-2004 (S.21-31 fehlen).
