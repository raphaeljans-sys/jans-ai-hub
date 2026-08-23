# SIA-Sweep, zweite Fortsetzung (interaktive Session) — Statistik aktualisiert, vier offene Fragen vertieft

- **Datum:** 23.08.2026
- **Auftrag Raphael:** den SIA-Sweep der KB `wissen/normen` fortsetzen — die im Register
  geführten SIA-Zeilen ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis
  beschaffen, Register nachführen, Destillate anlegen. Rule `normen-referenz`
  (Fundstellenpflicht) und `wissens-bibliothekar` beachten.
- **Vorlauf gelesen:** CHANGELOG (zwei Einträge vom selben Tag: der Blindzone-Sweep
  15:57–ca. 18 Uhr, danach ein Fortsetzungslauf, der einen Tabellen-Formatfehler in allen 69
  editierten Zeilen behob) und der Report `outputs/2026-08-23_sia-sweep-blindzone.md`.

## Befund vor der eigenen Arbeit

Zwei vorangegangene Läufe hatten dasselbe Ziel (Blindzone Abschnitt A, 69 aktive Zeilen ohne
Datei im Haus) bereits vollständig erreicht und formal verifiziert. Eigene Gegenprobe per
Python-Scan über die vollständige Tabelle (259 Zeilen, davon 187 aktiv) bestätigt: **0 Zeilen
mit leerer Bestand-Abgleich-Spalte.** Kein konkurrierender `claude`-Prozess lief parallel an
derselben KB (`ps aux` geprüft — nur der eigene Prozess dieser Session).

Da die Blindzone selbst bereits geschlossen war, bestand die sinnvolle Fortsetzung aus zwei
Teilen: (1) die seit Run 37 (29.07.2026) unveränderte Blindzone-Statistik in `wiki/REGISTER.md`
war durch den Sweep überholt und irreführend geworden — aktualisiert; (2) die vier im Sweep
offen gebliebenen Fragen N-SIASWEEP-1 bis -4 mit gezielter Web-Recherche vertieft.

## 1. Blindzone-Statistik in REGISTER.md aktualisiert

Der Abschnitt «⚠ Die 2013-Blindzone — beziffert» (Zeilen 59ff.) zeigte weiterhin die
Run-37-Zahlen (102 von 177 aktiven Zeilen ohne Datei im Haus, 58 %) — nach dem Sweep
sachlich falsch, weil alle Zellen inzwischen Inhalt tragen. Neue Tabelle mit
Vorher/Nachher-Spalten: **187 aktive Zeilen, 0 leere Zellen (Blindzone geschlossen), davon
aber weiterhin nur 131 mit echtem Volltext im Haus und 56 nur mit Shop-Metadaten** (kein
Volltext gelesen, kein Kauf). Diese Unterscheidung — leere Zelle vs. Zelle mit reinen
Metadaten — war nach dem Sweep sonst nicht mehr sichtbar, obwohl die zugrunde liegende
Bestandslücke (kein Volltext) für 56 Normen fortbesteht. Verbindliche Regel im selben
Abschnitt entsprechend präzisiert: keine leeren Zellen mehr, aber der Norminhalt einer
«Kein Volltext im Haus»-Zeile bleibt ohne Volltext nicht zitierfähig.

## 2. Die vier offenen Fragen vertieft

**N-SIASWEEP-1 (SIA 381/3 Heizgradtage) — GESCHLOSSEN.** Espazium-Fachartikel «SIA: Neue
Berechnung der Heizgradtage» (espazium.ch, publiziert 08.05.2015, revidiert 10.11.2015):
die Empfehlung wurde auf Beschluss der Zentralkommission für Normen zurückgezogen, der
Fachinhalt ging in die Corrigenda SIA 2028/C1:2015 zum Merkblatt SIA 2028 über (neue Methode
nach EN ISO 15927-6/SIA 381.206, Accumulated Temperature Differences, mit Übergangsfrist
für die traditionellen HGT-20/12-Werte). Sekundärquelle, nicht am Original (SIA 2028/C1:2015
nicht im Haus) verifiziert — als Fundstelle für die Meldung selbst aber ausreichend belastbar.

**N-SIASWEEP-2 (SIA 422 Bauzonenkapazität) — weiterhin offen, jetzt per Direktabruf
bestätigt.** Die Shop-Produktseite (SN 513422) wurde per WebFetch direkt (nicht nur über eine
Suchmaschinen-Synopse) erneut gelesen: archiviert, gültig bis 31.12.2024, Nachfolgerfeld
leer. Neuer Kontext: das SNV Swiss National Work Program (Stand 2019) führte die Norm damals
noch als «zur Revision vorgesehen» — die angekündigte Revision wurde offenbar nicht
abgeschlossen, sondern die Norm zwischen 2019 und 2024 ganz archiviert. Kein Nachfolger
gefunden.

**N-SIASWEEP-3 (SIA 2021 und SIA 2025) — weiterhin offen, jetzt per Direktabruf bestätigt.**
Beide Shop-Produktseiten (SN 592021, SN 592025) per WebFetch direkt gelesen: Nachfolgerfeld
in beiden Fällen leer, kein Suchmaschinen-Artefakt. Für SIA 2025 wurde eine
Espazium-Artikelsynopse zu Beschlüssen der Zentralkommission für Normen als möglicher
Rückzugsgrund gefunden (fehlender normativer Charakter, Widerspruch zu SIA 380:2022) — die
exakte Sitzung/das Datum liess sich aber nicht zuverlässig zuordnen (ein direkt abgerufener
Artikel gleichen Titels nannte einen abweichenden, vermutlich früheren und gescheiterten
Rückzugsversuch mit Zieldatum Ende 2014). Bewusst **nicht** als Fundstelle in REGISTER.md
übernommen, nur als Kontext im QUESTIONS-Eintrag vermerkt — Grundsatz «lieber unbelegt offen
lassen als eine unsichere Quelle als Fundstelle ausgeben».

**N-SIASWEEP-4 (GEO405-Familie, SIA 405:2025) — weiterhin offen, mit neuem Datum und
stärkerem Indiz.** Zwei neue, voneinander unabhängige Fundstellen: sogi.ch-Fachartikel nennt
das Gültig-ab-Datum **01.08.2025** wörtlich; die offizielle SIA-Webinar-Ankündigung
(`norm-sia-405-2025.events.sia.ch`) nennt als Teilnahme-Vorwissen ausdrücklich «die alte
Norm SIA 405:2015 sowie die Merkblätter 2015, 2016, 2045» — ein starkes Indiz für die
Konsolidierungsthese, aber keine explizite Ablösungsformel einer SIA-Primärquelle. Bleibt
Klärungsposten bis zur Beschaffung von SIA 405:2025 selbst.

## Warum keine neuen Destillate

Wie in den beiden Vorläufen: für alle hier bearbeiteten Zeilen liegt weiterhin kein Volltext
vor, nur freie Shop-/Fachartikel-Metadaten. Es gibt nichts zum Destillieren; die Fundstelle
steht direkt in der Register-Zeile bzw. im QUESTIONS-Eintrag.

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat` geprüft (reine Bash-Diff-Lesung über den
SMB-Mount, kein `git`-Schreibbefehl): `REGISTER.md` 46 hinzugefügt/30 entfernt,
`QUESTIONS.md` 69 hinzugefügt/13 entfernt — beides reine Text-Erweiterungen an den editierten
Stellen, keine Datenverluste. Commit via `nas-commit-now.sh` (nativ auf der Synology), nicht
per direktem `git` über den SMB-Mount (Rule `sync-kanonische-quelle`).

## Nicht geleistet / offene Bring-Schulden

- Kein Normtext gekauft oder gelesen.
- Die vier N-SIASWEEP-Fragen sind mit einer Ausnahme (N-1) weiterhin offen — keine der drei
  verbleibenden liess sich mit frei zugänglichen Quellen abschliessend klären.
- Kein Fach-Skill wurde auf diese Zeilen abgeglichen (wie in den Vorläufen: soweit ersichtlich
  zitiert kein Skill diese Normen aktiv).
- Der Abgleich der übrigen Registerabschnitte (B–D, DIN/VSS/RAL/Merkblätter) auf eine analoge
  Blindzone wurde nicht durchgeführt — der Auftrag war explizit auf die SIA-Zeilen in
  Abschnitt A begrenzt (Formulierung des Auftrags deckt sich mit den beiden Vorläufen).
