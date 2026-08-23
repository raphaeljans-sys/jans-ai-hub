# QUESTIONS.md-Nachlauf, zwanzigste Fortsetzung (23.08.2026)

## Auftrag

Weitere offene Fragen in `wissen/energie/wiki/QUESTIONS.md` abarbeiten, Anschluss an die
neunzehnte Fortsetzung (`outputs/2026-08-23_questions-nachlauf-neunzehnte-fortsetzung.md`).

## Vorgehen

Alle Zeilen mit `- [ ]` (14 Treffer, `grep -n "^\- \[ \]"`) einzeln im Kontext gelesen — nicht
nur die Checkbox gezählt, weil diese KB das Muster fährt, eine Auflösung als **neue** `[x]`-Zeile
oberhalb der historischen `[ ]`-Originalzeile abzulegen («Ursprünglicher Wortlaut zur
Nachvollziehbarkeit») statt die alte Zeile zu überschreiben. Ein blosses Zählen der `[ ]`-Zeilen
hätte bereits gelöste Punkte fälschlich als offen ausgewiesen.

## Befund je Punkt

| Punkt | Status | Befund |
|---|---|---|
| E-S1 | bereits [x] gelöst | Skill `energie` existiert, GESCHLOSSEN Run 157 |
| E103 | echt offen | Pflegeplatz-Flächenkennwert — Entscheid Raphael nötig (eigene Projektdaten auswerten?) |
| E94 | echt offen | CHF/m² Innendämmung — Negativbefund, einziger Weg ist reale JANS-Projektofferte (Entscheid Raphael) |
| E-R129-5 | bereits [x] gelöst | Kennzeichnungssystem destilliert, GESCHLOSSEN 19. Fortsetzung |
| E-WC32-1 | kein Forschungspunkt | Meta-Lehre (Verzeichnisliste statt INDEX-Volltextsuche prüfen), bereits gelebte Praxis |
| E-R134-3 | echt offen, ausgeschöpft | Lambda-Anomalie, Herausgeber/Datum der Quelle fehlen, kein weiterer Ansatz |
| E-R134-4 | bereits [x] gelöst | Negativbefund MFH-Bauteilvergleich, GESCHLOSSEN Run 151 |
| E-R148-1 | echt offen | Normkauf SIA 380/1:2016 — Beschaffungsentscheid Raphael |
| E-R148-2 | Entscheidungsvorschlag | Loop-Taktung fragengetrieben vs. wöchentlich — nicht eigenmächtig umsetzen (Lehre 25.07.2026) |
| E-R149-2 | bereits [x] gelöst | Zurückgezogen (Prüffehler), EIV-Tariftabelle war schon belegt |
| E-R150-3 | echt offen, nicht auflösbar | Widerspruch im Willerzell-Originaldokument selbst |
| E-R161-1 | echt offen | Rg-Wert schwach belüftete Luftschicht — Normkauf SN EN ISO 6946, Beschaffungsentscheid Raphael |

## Ergebnis

**Kein neuer, aus eigener Kraft lösbarer Rechercheansatz gefunden.** Die verbliebenen echt
offenen Punkte (E103, E94, E-R134-3, E-R148-1, E-R150-3, E-R161-1) sind exakt die Menge, die
bereits der Report der neunzehnten Fortsetzung als "verbleibend offen, keine neuen Ansätze"
übergeben hatte — dieser Lauf bestätigt das durch vollständige Einzelprüfung, statt es zu
übernehmen. Alle sechs fallen in eine von drei Klassen, die kein weiterer Recherchelauf lösen
kann:

1. **Beschaffungsentscheid Raphael** (E-R148-1, E-R161-1): kostenpflichtige Norm nötig
   (SIA 380/1:2016 bzw. SN EN ISO 6946), weder auf NAS noch SharePoint frei verfügbar.
2. **Freigabe-Entscheid Raphael** (E103, E94): der einzige verbleibende Weg führt über die
   Auswertung eigener JANS-Projektdaten (Healthcare-Projekte bzw. eine reale Offerte BKP 271) —
   das ist ein Compounding-Kandidat, aber keine Recherche, sondern eine Freigabefrage.
3. **Sachliche Sackgasse** (E-R134-3, E-R150-3): Quelle ohne Herausgeber/Datum bzw. Widerspruch
   im Originaldokument selbst — es gibt keine externe Quelle, die das auflösen könnte.

Keine Datei wurde geändert; dieser Lauf ist eine reine Verifikation. Kein CHANGELOG-Eintrag mit
Bestandsänderung, nur ein Vermerk, dass die Prüfung stattfand (siehe CHANGELOG-Eintrag von
heute).

## Empfehlung für den nächsten Lauf

Die KB `wissen/energie` hat mit diesem Lauf einen Punkt erreicht, an dem die Frage-getriebene
Abarbeitung von `QUESTIONS.md` erschöpft ist, bis Raphael eine der drei offenen
Entscheidungsfragen beantwortet (Normkauf, Projektdaten-Freigabe, Loop-Taktung E-R148-2). Ein
nächster Lauf ohne neue Eingabe von Raphael sollte nicht erneut dieselben sechs Punkte
durchgehen, sondern entweder (a) auf die Loop-Taktungsfrage E-R148-2 warten, oder (b) einen
neuen Themenkomplex aus einer bislang nicht befragten Quelle anstossen (neue PL-04-Dateien,
neue Web-Recherche zu einem noch nicht gestellten Bauherren-Thema), statt die Erschöpfung erneut
zu vermessen.
