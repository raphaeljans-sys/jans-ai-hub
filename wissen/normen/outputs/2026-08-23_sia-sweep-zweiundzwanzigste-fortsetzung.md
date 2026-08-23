# SIA-Sweep, zweiundzwanzigste Fortsetzung — SIA-118/xxx-AVB-Restliste komplett auf Korrigenda-Methode geprüft (12 Nullbefunde)

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
  nachführen, Destillate anlegen. Rule `normen-referenz` und `wissens-bibliothekar` beachten,
  jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md`-Kopf (SIA-Sweep einundzwanzigste Fortsetzung, oberster
  Eintrag) und `outputs/2026-08-23_sia-sweep-einundzwanzigste-fortsetzung.md`.

## Ausgangslage und Kollisionsprüfung

`ps aux | grep "claude -p"` zeigte zu Laufbeginn drei parallele `claude -p`-Prozesse: den
eigenen (PID 40119, dieser Auftrag, KB `wissen/normen`, SIA-Sweep), einen weiteren an
`wiki/QUESTIONS.md` derselben KB (PID 39144, fremder Auftrag, andere Zeilen) und einen dritten
an der KB `wissen/baurecht` (PID 38964, fremde KB, kein Konflikt). `wiki/REGISTER.md` und
`CHANGELOG.md` wurden vor dem eigenen Schreibvorgang jeweils frisch gelesen: der oberste
CHANGELOG-Eintrag war unverändert die einundzwanzigste Fortsetzung, `wiki/REGISTER.md` trug
ihren Absatz als letzten SIA-Sweep-Eintrag — kein Parallellauf hatte in der Zwischenzeit einen
eigenen SIA-Sweep-Absatz gesetzt. Der eigene Beitrag wurde in `REGISTER.md` als neuer Absatz
unmittelbar nach dem Absatz der einundzwanzigsten Fortsetzung eingefügt, in `CHANGELOG.md` als
neuer Eintrag oberhalb von dessen Kopf.

## Durchgeführt

### Kandidatenwahl

Die einundzwanzigste Fortsetzung benannte die Fortsetzung explizit: die zwölf verbliebenen
SIA-118/xxx-Vertragsbedingungen-Zeilen, die zwar bereits vollständige Metadaten (Ausgabejahr,
gültig-ab/gültig-bis, Archiv-/Nachfolgestatus) tragen, aber noch nie auf einen zusätzlichen
kostenlosen Korrigenda-Download geprüft worden waren: **SIA 118/222, 118/242, 118/243, 118/251,
118/252, 118/253, 118/318, 118/329, 118/331, 118/342, 118/343, 118/370**.

### Methode

Je Kandidat die Produktseite per `curl -A "Mozilla/5.0" https://shop.sia.ch/normenwerk/
architekt/{slug}/D/Product` abgerufen (Slug = Normnummer mit Bindestrich statt Schrägstrich
plus dem in der jeweils bereits bestehenden Registerzeile geführten Ausgabejahr, z.B.
`118-222_2012_d`). **Abweichung zur bisherigen Verifikationsmethode festgestellt:** diese
Produktseiten führen — anders als die in früheren Fortsetzungen geprüften Seiten — kein
`<title>`-Tag und kein befülltes `class="Titel"`-Feld. Verifiziert wurde stattdessen über das
`<meta name="description">`-Tag, das den vollen Produkttitel im Klartext enthält (z.B.
„SIA-Shop Produkt - 'SIA 118/222 / 2012 d - Allgemeine Bedingungen für Gerüstbau
(Normenwerk => Architekt)'"), danach das Feld `lblAnhangBezeichnung` gezählt und ausgelesen.

### Ergebnis: 12 von 12 Nullbefunde

Jede der zwölf Produktseiten führte **genau ein** `lblAnhangBezeichnung`-Feld mit dem Wert
«Inhaltsverzeichnis» — kein zusätzlicher, kostenloser Korrigenda- oder Ergänzungs-Download
vorhanden:

- **SIA 118/222** — architekt/118-222_2012_d, SN 507222, «Allgemeine Bedingungen für Gerüstbau»
  (Ausgabe archiviert seit 31.07.2024)
- **SIA 118/242** — architekt/118-242_2012_d, SN 507242, «… für Verputz- und
  Trockenbauarbeiten» (weiterhin aktuell)
- **SIA 118/243** — architekt/118-243_2008_d, SN 507243, «… für verputzte
  Aussenwärmedämmungen» (Ausgabe archiviert seit 31.01.2026)
- **SIA 118/251** — architekt/118-251_2008_d, SN 507251, «… für schwimmende Estriche im
  Innenbereich» (weiterhin aktuell)
- **SIA 118/252** — architekt/118-252_2012_d, SN 507252, «… für Bodenbeläge aus Zement,
  Magnesia, Kunstharz und Bitumen» (weiterhin aktuell)
- **SIA 118/253** — architekt/118-253_2012_d, SN 507253, «… für Bodenbeläge aus Linoleum,
  Kunststoff, Gummi, Kork, Textilien und Holz» (Ausgabe archiviert seit 31.10.2024)
- **SIA 118/318** — architekt/118-318_2009_d, SN 507318, «… für Garten- und Landschaftsbau»
  (weiterhin aktuell)
- **SIA 118/329** — architekt/118-329_2008_d, SN 507329, «… für Vorhangfassaden» (Ausgabe
  archiviert seit 31.05.2020)
- **SIA 118/331** — architekt/118-331_2008_d, SN 507331, «… für Fenster und Fenstertüren»
  (weiterhin aktuell)
- **SIA 118/342** — architekt/118-342_2009_d, SN 507342, «… für Sonnen- und
  Wetterschutzanlagen» (weiterhin aktuell)
- **SIA 118/343** — architekt/118-343_2010_d, SN 507343, «… für Türen und Tore» (weiterhin
  aktuell)
- **SIA 118/370** — architekt/118-370_2007_d, SN 507370, «… für Aufzüge, Fahrtreppen und
  Fahrsteige» (Ausgabe archiviert seit 30.11.2016)

Der Archivstatus der geprüften Ausgabe (fünf archiviert, sieben weiterhin aktuell) hatte keinen
erkennbaren Einfluss auf das Ergebnis — beide Gruppen liefern durchgängig nur das reguläre
Inhaltsverzeichnis, keinen kostenlosen Zusatzanhang.

## Nachgeführt

- `wiki/REGISTER.md`: neuer Sammelabsatz «Korrigenda-Check-Sweep, 23.08.2026 (SIA-Sweep,
  zweiundzwanzigste Fortsetzung)» im Blindzone-Abschnitt, direkt nach dem Absatz der
  einundzwanzigsten Fortsetzung eingefügt (rein additiv, keine bestehende Zeile verändert).
- Kein neues Destillat — zwölf echte Nullbefunde erhalten keinen Wiki-Artikel (Rule
  `wissens-bibliothekar`).
- `destillate/INDEX.md`: unverändert, kein neuer Eintrag nötig.
- `CHANGELOG.md`: eigener Eintrag oberhalb des Kopfs der einundzwanzigsten Fortsetzung
  eingefügt.
- Dieser Report.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft (Rule `auto-verbesserungen` 260811):

| Datei | Befund |
|---|---|
| `wiki/REGISTER.md` | 73 Einfügungen / 5 Löschungen. Die 5 „Löschungen" stammen ausschliesslich aus einer bereits vor diesem Lauf uncommitteten Zeilenerweiterung eines Parallellaufs (SIA 232/1, 384/6, 2016, 2042, 2044 — Zeile durch längere Fassung ersetzt), nicht aus diesem Lauf selbst. Gezielt geprüft (`grep -c` je Zeile): alle fünf Zeilen weiterhin vollständig im Dokument vorhanden |
| `CHANGELOG.md` | 340 Einfügungen / 0 Löschungen — rein additiv, eigener Eintrag oben eingefügt |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über
`scripts/nas-commit-now.sh` bzw. den 15-Minuten-`nas-selfcommit`-Cron).

## Nicht geleistet / offene Bring-Schulden

- Die von der einundzwanzigsten Fortsetzung offen belassenen fehlenden Registerzeilen
  **SIA 384/6:2021** und **SIA 2042:2022** (aktuell gültige Nachfolgeausgaben ohne eigene Zeile
  in dieser KB) wurden auch in diesem Lauf nicht angelegt.
- **Verbleibend für die 23. Fortsetzung:** die vier niedriger priorisierten, bereits vertieft
  recherchierten Zeilen **SIA 381/3, SIA 422, SIA 2025, SIA 118/430** — bei allen vieren ist die
  jeweilige Basisnorm bereits archiviert/zurückgezogen bzw. (bei 118/430) neu und ohne eigene
  Archiv-Vorstufe, ein zusätzlicher kostenloser Korrigenda-Download auf der jeweiligen
  Produktseite ist entsprechend weniger wahrscheinlich, aber noch nicht geprüft. **Danach ist
  keine ursprünglich als «Kein Volltext im Haus» geführte Blindzone-Zeile mehr offen** — die
  23. Fortsetzung sollte vor einer weiteren Kandidatenwahl per
  `grep "Kein Volltext im Haus" wiki/REGISTER.md` gegen alle bisherigen Sweep-Absätze (7. bis
  22. Fortsetzung) neu abgleichen, ob tatsächlich nichts mehr offen ist, bevor der Sweep als
  vollständig gilt.
- Bei keinem der 12 Kandidaten ein Cross-KB-Bezug oder eine neue offene Frage entstanden; kein
  neuer `wiki/QUESTIONS.md`-Eintrag gesetzt.
- Trefferquote dieses Laufs 0/12 — wie bereits bei der 21. Fortsetzung (0/7) konsistent mit
  einer engen, in den früheren Läufen bereits gut erschlossenen Restmenge: die substanziellen
  Korrigenda-Treffer wurden mehrheitlich in der 19./20. Fortsetzung gefunden, die verbleibende
  Restmenge liefert erwartungsgemäss wenig zusätzliche Substanz.
