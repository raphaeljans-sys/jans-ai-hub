# Werkzeugbefund: `grep` ist auf dem MacBook Pro ein Alias auf ugrep

Datum: 15.09.2026, Anlass: PDF-Volltextsuche nach «Keramiktablar» über 1'471 Planblätter (2619 KISPI).

## Befund

In der Claude-Code-Shell dieser Station löst `grep` nach ugrep auf. ugrep bricht bei Mustern mit
begrenzten Wiederholungen wie `.{0,50}(tablar|ablage).{0,50}` mit «exceeds complexity limits» ab.
In einer `while read`-Schleife mit `2>/dev/null` bleibt davon nichts sichtbar: die Schleife läuft
über alle Dateien, liefert null Treffer und sieht wie ein Sachbefund aus («kein Plan enthält das Wort»).
Erst der Direktaufruf auf einer Datei, die den Begriff nachweislich enthält, zeigte den Fehler.

Zweiter Fund derselben Familie: `timeout` existiert auf macOS nicht (auch `gtimeout` fehlt ohne
coreutils); `timeout 20 pdftotext …` scheitert still und liefert ebenfalls null Treffer.

## Regel

1. Für Volltext-Schleifen `/usr/bin/grep` voll qualifiziert aufrufen, nie das Alias.
2. Bevor eine Schleife über hunderte Dateien läuft, das Muster an einer Datei mit bekanntem
   Treffer prüfen (Positivkontrolle). Ein leeres Ergebnis ist zuerst eine Aussage über das
   Werkzeug (Rule `auto-verbesserungen` 260730b, `wege-und-vollmachten` Ziff. 5).
3. `timeout` nicht voraussetzen; wenn nötig `perl -e 'alarm N; exec @ARGV'` oder ohne Limit.

## Belege

Session 15.09.2026, Abklärung `03_BKP/LOS_250.01 …/260915-Keramiktablar-Waschtisch-Plaene/`
(Projekt 2619). Erste Schleife: 3'595 PDFs, 0 Treffer; nach Korrektur 1'471 PDFs, 373 Treffer.
