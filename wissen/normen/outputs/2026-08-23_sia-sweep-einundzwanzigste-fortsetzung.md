# SIA-Sweep, einundzwanzigste Fortsetzung — SIA-269-Familie komplett auf Korrigenda-Methode geprüft (7 Nullbefunde)

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
  nachführen, Destillate anlegen. Rule `normen-referenz` und `wissens-bibliothekar` beachten,
  jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md`-Kopf (zu Sessionbeginn bereits: SIA-Sweep zwanzigste
  Fortsetzung ganz oben, Report-Zeitstempel 21:55 Uhr) und
  `outputs/2026-08-23_sia-sweep-zwanzigste-fortsetzung.md`.

## Ausgangslage und Kollisionsprüfung

Der Auftrag verlangte explizit, den Lauf als **zwanzigste** Fortsetzung zu beginnen. Beim
ersten Lesen von `CHANGELOG.md` stand dieser Titel jedoch bereits ganz oben (Report-Datei
`2026-08-23_sia-sweep-zwanzigste-fortsetzung.md`, mtime 21:55 Uhr) — ein paralleler Prozess mit
identischem oder sehr ähnlichem Auftragstext hatte die 20. Fortsetzung bereits fertiggestellt,
bevor dieser Lauf zu schreiben begann. Gemäss der im Auftrag selbst genannten Ausweich-Regel
(«falls "zwanzigste" inzwischen von einem Parallellauf belegt ist — dann "einundzwanzigste"
verwenden») wurde dieser Lauf konsequent als **einundzwanzigste** Fortsetzung geführt.

`ps aux | grep "claude -p"` zeigte zu Laufbeginn drei parallele `claude -p`-Prozesse: den
eigenen (dieser Auftrag, KB `wissen/normen`, SIA-Sweep), einen weiteren an `wiki/QUESTIONS.md`
derselben KB (fremder Auftrag, andere Zeilen — dieser Prozess schrieb während der Laufzeit den
neuen Kopf-Eintrag «QUESTIONS-Abarbeitung 16» in dieselbe `CHANGELOG.md`), und einen dritten an
der KB `wissen/energie` (fremde KB, kein Konflikt). Vor jedem Schreibvorgang wurden
`wiki/REGISTER.md` und `CHANGELOG.md` jeweils frisch gelesen: `REGISTER.md` trug beim zweiten
Lesen bereits die fünf inhaltlich erweiterten Zeilen der 20. Fortsetzung (SIA 232/1, 384/6,
2016, 2042, 2044 — zu diesem Zeitpunkt noch uncommittet), `CHANGELOG.md` bereits den neuen
QUESTIONS-Abarbeitung-16-Kopf. Beide wurden unverändert belassen; der eigene Beitrag wurde in
`REGISTER.md` als neuer Absatz unmittelbar nach dem Absatz der 20. Fortsetzung eingefügt, in
`CHANGELOG.md` als neuer Eintrag oberhalb des QUESTIONS-Abarbeitung-16-Kopfs.

## Durchgeführt

### Kandidatenwahl

Die 20. Fortsetzung hatte keinen weiteren Kandidaten-Filter mehr vorgegeben, sondern empfohlen,
die verbleibende Blindzone-Restmenge («Kein Volltext im Haus», noch nicht auf Korrigenda
geprüft) systematisch fortzusetzen. Per `grep "Kein Volltext im Haus" wiki/REGISTER.md` wurde
die vollständige Restliste gezogen und gegen die in der 19./20. Fortsetzung bereits geprüften
Zeilen abgeglichen. Gewählt wurde die **vollständige SIA-269-Familie** («Erhaltung von
Tragwerken»), soweit noch nicht durch die 17. Fortsetzung erledigt (269/3, 269/5, 269/8 dort
bereits mit Korrigenda-Fund abgeschlossen): **SIA 269, 269/1, 269/2, 269/4, 269/7** (5 Zeilen).
Ergänzt um zwei SIA-118/xxx-Vertragsbedingungen-Zeilen (Allgemeine Bedingungen, für die Skills
`ausschreibung`/`werkvertrag` relevant) mit weiterhin aktueller, nicht archivierter Basisnorm:
**SIA 118/232, SIA 118/240** (2 Zeilen). Insgesamt 7 Kandidaten — innerhalb des Zielkorridors
5-8 dieses Auftrags.

### Methode

Je Kandidat die Produktseite per `curl -A "Mozilla/5.0" https://shop.sia.ch/normenwerk/
{ingenieur|architekt}/{slug}/D/Product` abgerufen (269-Familie unter der Kategorie `ingenieur`,
118/xxx unter `architekt`, Slug-Bindestrich-Ersatz für den Schrägstrich in der Normnummer, z.B.
`269-1_2011_d`, `118-232_2011_d`). Jede Seite auf Erreichbarkeit und korrekte Auflösung
geprüft (Titel-Feld `class="Titel">SIA ..."` bzw. Meta-Title mit dem erwarteten Normtitel
verglichen, z.B. „SIA 269 / 2011 d - Grundlagen der Erhaltung von Tragwerken (Normenwerk =>
Ingenieur)"), dann das Feld `lblAnhangBezeichnung` gezählt und ausgelesen.

### Ergebnis: 7 von 7 Nullbefunde

Jede der sieben Produktseiten führte **genau ein** `lblAnhangBezeichnung`-Feld mit dem Wert
«Inhaltsverzeichnis» — kein zusätzlicher, kostenloser Korrigenda- oder Ergänzungs-Download
vorhanden:

- **SIA 269** — shop.sia.ch/normenwerk/ingenieur/269_2011_d, SN 505269
- **SIA 269/1** — ingenieur/269-1_2011_d, SN 505269/1
- **SIA 269/2** — ingenieur/269-2_2011_d, SN 505269/2
- **SIA 269/4** — ingenieur/269-4_2011_d, SN 505269/4
- **SIA 269/7** — ingenieur/269-7_2011_d, SN 505269/7
- **SIA 118/232** — architekt/118-232_2011_d
- **SIA 118/240** — architekt/118-240_2012_d

Damit ist die gesamte SIA-269-Familie (Basisnorm 269 plus 269/1 bis 269/8) jetzt vollständig
auf die Korrigenda-Methode geprüft: drei Mitglieder (269/3, 269/5, 269/8) tragen ein eigenes
Korrigenda-Destillat aus der 17. Fortsetzung, die übrigen sechs (269, 269/1, 269/2, 269/4 aus
diesem Lauf, sowie implizit 269/6-1/269/6-2, die keine eigene Registerzeile führen) bleiben
ohne kostenlosen Zusatzinhalt.

## Nachgeführt

- `wiki/REGISTER.md`: neuer Sammelabsatz «Korrigenda-Check-Sweep, 23.08.2026 (SIA-Sweep,
  einundzwanzigste Fortsetzung)» im Blindzone-Abschnitt, direkt nach dem Absatz der 20.
  Fortsetzung eingefügt (rein additiv, keine bestehende Zeile verändert).
- Kein neues Destillat — sieben echte Nullbefunde erhalten keinen Wiki-Artikel (Rule
  `wissens-bibliothekar`).
- `destillate/INDEX.md`: unverändert, kein neuer Eintrag nötig.
- `CHANGELOG.md`: eigener Eintrag oberhalb des inzwischen von einem Parallellauf gesetzten
  QUESTIONS-Abarbeitung-16-Kopfs eingefügt.
- Dieser Report.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft (Rule `auto-verbesserungen` 260811):

| Datei | Befund |
|---|---|
| `wiki/REGISTER.md` | 41 Einfügungen / 5 Löschungen. Die 5 „Löschungen" stammen ausschliesslich aus der bereits vor diesem Lauf uncommitteten Zeilenerweiterung der 20. Fortsetzung (SIA 232/1, 384/6, 2016, 2042, 2044 — Zeile durch längere Fassung ersetzt), nicht aus diesem Lauf selbst. Gezielte Prüfung (`git diff \| grep einundzwanzigste`) zeigt genau die zwei erwarteten neuen Zeilen des eigenen Absatzes, keine fremde Zeile berührt |
| `CHANGELOG.md` | 265 Einfügungen / 0 Löschungen — rein additiv, eigener Eintrag oben eingefügt |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über
`scripts/nas-commit-now.sh` bzw. den 15-Minuten-`nas-selfcommit`-Cron).

## Nicht geleistet / offene Bring-Schulden

- Die von der 20. Fortsetzung empfohlenen fehlenden Registerzeilen **SIA 384/6:2021** und
  **SIA 2042:2022** (aktuell gültige Nachfolgeausgaben ohne eigene Zeile in dieser KB) wurden
  in diesem Lauf nicht angelegt — Priorität lag auf der Blindzone-Fortsetzung.
- **Verbleibend für die 22. Fortsetzung:** die restlichen SIA-118/xxx-AVB-Zeilen (118/222,
  118/242, 118/243, 118/251, 118/252, 118/253, 118/318, 118/329, 118/331, 118/342, 118/343,
  118/370) — 12 Zeilen, alle bisher nur mit Metadaten, noch nicht auf Korrigenda geprüft. Dazu
  die bereits vertieft recherchierten, aber noch nie gezielt auf einen zusätzlichen kostenlosen
  Korrigenda-Anhang geprüften Zeilen SIA 381/3, SIA 422, SIA 2025 und SIA 118/430 (Nachfolge-/
  Rückzugsstatus dort bereits geklärt bzw. als Bring-Schuld benannt; echte Trefferwahrschein-
  lichkeit unklar, da die jeweiligen Basisnormen selbst bereits archiviert sind — geringere
  Priorität als die 118/xxx-Restmenge).
- Bei keinem der 7 Kandidaten ein Cross-KB-Bezug oder eine neue offene Frage entstanden; kein
  neuer `wiki/QUESTIONS.md`-Eintrag gesetzt.
- Trefferquote dieses Laufs 0/7 — deutlich niedriger als die 20. Fortsetzung (5/13), aber
  konsistent mit einer engen, bereits gut erschlossenen Normfamilie (drei der acht
  269-Unternormen waren durch die 17. Fortsetzung bereits fündig geprüft; die verbleibenden
  fünf plus zwei 118/xxx-Kontrollzeilen liefern erwartungsgemäss weniger Substanz).
