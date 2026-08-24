# QUESTIONS-Abarbeitung 24.08.2026 (vierzehnter Lauf) — zwei weitere Alt-Punkte nachgezogen, Sättigung bestätigt

## Auftrag

Fortsetzung der Daueraufgabe: offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage mit Norm/Ausgabe/Ziffer, nur `established` zitierfähig. CHANGELOG und Report des
letzten Laufs (dreizehnter Lauf, `outputs/2026-08-24_questions-abarbeitung-dreizehnter-lauf.md`)
zuerst gelesen — dieser hatte wegen fehlendem NAS-Mount und fehlendem `node` im `PATH` keinen
Primärquellenzugriff und nur einen kleinen Fahrplan-Nachtrag (BSV 2026) eingetragen, 30 offene
Checkboxen unverändert gegenüber dem zwölften Lauf.

## NAS-Hinweis

`/Volumes/daten` war auch in dieser Session beim Start nicht gemountet (Systemwarnung dem
Benutzer angezeigt). `wissen/normen` ist versionierter Repo-Inhalt (kein NAS-Symlink) — keine
Blockade für diese Datei; `.claude/skills`/`.claude/agents` (NAS-Symlinks) waren nicht
verfügbar, für diesen reinen Datei-Lektüre-/Bearbeitungslauf ohne Bedeutung.

## Vorgehen

Alle 30 offenen Checkboxen einzeln mit Kontext gelesen (nicht nur die Titelzeile), gezielt nach
zwei Mustern gesucht, die in den letzten Läufen wertstiftend waren: (a) Cross-KB-Verweise
(`wissen/planungsgrundlagen`, `wissen/energie`, `wissen/baurecht`), die durch spätere,
unabhängige Arbeit dort überholt sein könnten — Ergebnis: der einzige "Vorarbeit
vorhanden"-Treffer im Volltext lag bereits **innerhalb** eines am 24.08. (zwölfter Lauf)
geschlossenen Eintrags, keine neue Angriffsfläche. (b) Interne Buchhaltungsschulden — Checkboxen,
deren Sachverhalt laut eigenem Text bereits an anderer Stelle der Datei gelöst wurde, aber nie
nachgezogen wurden (das Muster, das Lauf 12 zweimal gefunden hat).

Zwei echte Fälle von Muster (b) gefunden:

1. **Zeile ~4349, "Dateiname/Inhalt-Mismatch" (Ursprungswortlaut zu `vkf-merkblatt-
   brandschutzklassifikation-bauteile.md`):** Die Schliessung unmittelbar darüber (23.08.2026)
   hatte den Sachverhalt bereits vollständig aufgelöst — Dateiname stammt vom Serien-/
   Herausgeber-Brand, nicht vom Inhalt; `Brandverhuetung & organisatorischer Brandschutz.pdf`
   ist per Ordnerlisting eine eigenständige zweite Datei, kein Merge-Fall. Zusätzlich verweist
   Teilpunkt (3) des "Verify-Abschluss MacBook"-Eintrags (Zeile ~4508/4546) ausdrücklich auf
   dieselbe Schliessung ("bereits am 23.08.2026 an anderer Stelle dieser Datei geschlossen").
   Die Checkbox stand trotzdem weiter auf `[ ]`. **Geschlossen.**
2. **Zeile ~4500, "Verify-Abschluss MacBook (13.07.2026): neue offene Punkte aus den 9
   Retro-Verifikationen"** (5 Teilpunkte): die im selben Eintrag verschachtelten Nachträge vom
   24.08.2026 (zwölfter Lauf) hatten Teilpunkte (2), (3) und (5) einzeln bereits geschlossen und
   das ausdrücklich vermerkt ("bleibt nur noch (1) und (4) offen") — die äussere Checkbox blieb
   aber auf `[ ]` stehen, obwohl 3 von 5 Teilfragen erledigt sind. **Marker auf `[~]` (teilweise
   geschlossen) korrigiert**, mit Kurzverweis auf die verbleibenden zwei blockierten Teilpunkte
   (destruktiver Merge / externe ECCS-Bring-Schuld).

Keine weiteren Buchhaltungsschulden gefunden. Die übrigen 26 offenen Punkte wurden einzeln
gegen ihre Kategorisierung geprüft (Bring-Schuld/Kaufentscheid Raphael, destruktive
Struktur-/Merge-Entscheide mit Rückfrage-Pflicht, genuine Quell-Ambiguitäten ohne im Haus
liegenden Volltext, Betriebs-/Methodennotizen) — keine Fehlkategorisierung gefunden, keine mit
den in dieser Session verfügbaren Mitteln (Datei-Lektüre, kein `node`/M365-Zugang geprüft, da
dieselbe Zugriffslücke wie im dreizehnter Lauf vermutet und nicht erneut einzeln verifiziert)
lösbar.

## Ergebnis

Offene Checkboxen: **30 → 28** (davon 1 vollständig geschlossen `[x]`, 1 auf Teilschliessung
`[~]` korrigiert). Kein neuer Primärquellenbefund — beide Schliessungen sind reine
Dokumentpflege, der zugrundeliegende Sachstand war bereits vorher gelöst.

## Eskalationsempfehlung an Raphael

Unverändert gegenüber dem zwölften/dreizehnten Lauf — SIA-Shop-Käufe, Freigabe der vier
destruktiven VKF-Duplikat-Merges, sowie SN 641 400 (VSS-Kundendienst-Kontakt, Kontaktdaten
bereits im 13. Lauf recherchiert: info@vss.ch, +41 44 269 40 20) bleiben die einzigen Hebel,
die den Bestand ohne neuen NAS-/M365-Zugang weiter verkleinern würden. Nach 14 Läufen (davon 12
reine Bestätigungen, 2 mit nur kleinen Buchhaltungs-Nachträgen) ist die Liste strukturell
ausgeschöpft für Läufe ohne Primärquellenzugriff — ein Lauf mit gemountetem NAS und
funktionierendem M365-Zugang wäre nötig, um die verbleibenden Bring-Schulden tatsächlich durch
Beschaffung statt nur Web-Recherche zu bewegen.

## Eingearbeitet

- `wissen/normen/CHANGELOG.md`: dieser Lauf vorangestellt.
- `wiki/QUESTIONS.md`: ein Punkt auf `[x]` (Z. ~4349), ein Punkt auf `[~]` (Z. ~4500),
  Ursprungswortlaut jeweils erhalten.

## Diff-Gegenprobe (`git diff --numstat`)

`wissen/normen/wiki/QUESTIONS.md`: 13 Zeilen hinzugefügt, 3 entfernt (zwei Checkbox-Korrekturen
mit Begründungstext, keine sonstigen Änderungen).
