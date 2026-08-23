# QUESTIONS-Abarbeitung 22 (23.08.2026)

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established` ist
zitierfähig. CHANGELOG und Report des letzten Laufs (Abarbeitung 21) zuerst gelesen, dort
weitergemacht. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` geprüft.

## Ausgangslage

Diese KB wird heute extrem intensiv parallel bearbeitet (21 vorherige „Abarbeitung"-Läufe plus
über 25 „SIA-Sweep"-Fortsetzungen, Stand Sichtung dieses Laufs). Ein Grossteil der frei
recherchierbaren Punkte war bereits abgearbeitet oder als externe Bring-Schuld (kostenpflichtige
SIA-/VSS-Normen, Kaufentscheid Raphael) mehrfach bestätigt. Ein `claude -p`-Prozess mit
identischem Auftragswortlaut lief beim Start dieses Laufs bereits parallel (PID 60838) — gemäss
Auftrag kein Konkurrent, sondern ein weiterer Lauf derselben Aufgabe.

## Methodik

Systematischer Scan aller verbleibenden `- [ ]`-Checkboxen (40 zu Laufbeginn) auf zwei Muster:
(1) Punkte, deren Fliesstext bereits eine Lösung/einen Verweis auf „keine Aktion nötig" enthält,
aber die äussere Checkbox nicht nachgezogen wurde (wie in Abarbeitung 20/21 mehrfach gefunden);
(2) P4-Punkte mit einem einzigen, klar abgrenzbaren offenen Sachverhalt, der sich mit ein bis
zwei gezielten Web-Abfragen prüfen lässt, ohne eine kostenpflichtige Quelle zu benötigen.

## Bearbeitet (zwei Punkte)

**1. „DIN EN 12101-2 im VKF-Ordner" — GESCHLOSSEN (Checkbox nachgezogen).** Der Fliesstext
dokumentierte bereits vollständig, dass `VKF_Norm/02_Brandschutzrichtlinien 2015/
DIN EN 12101-2.pdf` eine Dublette der bereits destillierten `din-en-12101-2-2003.md` ist und
beim Reconcile referenziert statt neu destilliert wurde — inhaltlich seit dem Reconcile erledigt,
nur äusserlich nie abgehakt. Checkbox `[ ]` → `[x]` gesetzt.

**2. N-R40-4 (P4): Verhältnis SVAS ↔ VSA — recherchiert, Ergebnis negativ, Checkbox auf `[~]`.**
Die Frage war, ob/wie die SVAS (Schweizerische Vereinigung für Aufzugssicherheit, laut einer
älteren SNEL-Quelle Herausgeberin der Broschüre «SNEL, ESBA etc.») mit dem VSA (Verband
Schweizerischer Aufzugsunternehmen, Betreiber von `aufzuege.ch`) zusammenhängt.

- `www.aufzuege.ch/Der_VSA/Mitglieder/` (WebFetch): keine Erwähnung von SVAS, keine dokumentierte
  Beziehung. Der VSA beschreibt sich dort nur als Branchenverband der 13 gelisteten
  Aufzugsunternehmen, keine explizite Zweckbeschreibung.
- Die vermutete SVAS-Eigenseite `svas-assa.ch` bzw. `www.svas-assa.ch` ist **nicht erreichbar**:
  WebFetch liefert `getaddrinfo ENOTFOUND` (DNS-Auflösung schlägt fehl). Ein von der WebSearch
  gefundener Cache-Spiegel `urlmetriken.ch/www.svas-assa.ch` liefert beim Abruf `ECONNREFUSED`.
- Einzige verwertbare Fundstelle bleibt ein Domain-Statistik-Snippet, das den Vereinsnamen
  bestätigt, aber weder Zweck, Trägerschaft noch ein Verhältnis zum VSA belegt.

**Ergebnis:** keine zitierfähige Quelle gefunden. Die tote Domain deutet eher auf eine nicht mehr
aktive oder in eine andere Organisation aufgegangene Vereinigung hin als auf eine aktuell
bestehende, eigenständige Schwesterorganisation des VSA — das ist ausdrücklich eine Vermutung,
keine belegte Aussage, und wurde als solche in `wiki/QUESTIONS.md` markiert. Checkbox `[ ]` →
`[~]` (recherchiert, weiterhin offen), damit kein künftiger Lauf denselben toten Domain-Pfad
erneut probiert. Bleibt P4 (kein konkreter Projektbedarf ersichtlich, kein weiterer Anlauf ohne
neuen Ansatzpunkt sinnvoll).

## Geprüft, kein neuer Ansatzpunkt gefunden (keine Änderung)

- **N-R21-2 (VA 105-01:2015 Volltext, P3):** weiterhin Kaufentscheid Raphael, keine neue Quelle.
- **SN 640 052 / SN 641 400 (VSS):** bereits in mehreren parallelen Läufen heute (u. a.
  „QUESTIONS-Abarbeitung 19" und Folge-Nachträge) bis zur Erschöpfung recherchiert; SN 641 400
  bleibt eine echte, ungelöste externe Bring-Schuld (VSS-Shop liefert 404, keine belegbare
  Nachfolgenorm). Kein weiterer eigener Anlauf ohne neuen Zugangsweg.
- **Merkblatt SIA 2014 «CAD-Layerorganisation», SIA 491, SN EN 12193:** ausschliesslich
  kostenpflichtig im SIA-/SNV-Shop, mehrfach verifiziert — reine Bring-Schulden, kein
  Recherche-Mehrwert durch erneuten Anlauf.
- **Wegleitung SIA 271 (nur 2-Seiten-Auszug im Bestand):** Bring-Schuld, SIA-Wegleitungen sind
  regelmässig nicht frei im Netz verfügbar; kein Suchversuch, da absehbar erfolglos und ohne
  Mehrwert gegenüber der bereits dokumentierten Lücke.
- **VERIFIKATION AUSSTEHEND (vier Artefakte, sia-266-1-2003 / sia-410-1986 / VKF-BRL-Deltas /
  vkf-beherbergungskategorien):** dieser Punkt verlangt eine vollständige adversariale
  Gegenprüfung gegen die Original-PDFs (nicht mit ein bis zwei Web-Abfragen erledigbar) und
  wurde in diesem Lauf aus Aufwandsgründen nicht begonnen — echter Kandidat für einen eigenen,
  grösseren Lauf.

## Nicht bearbeitet (Prozess-/Meta-Notizen, kein Norm-Inhalt)

„Cross-Contamination erneut aufgetreten" und „Doppelte Run-Nummer 21 im Protokoll" sind
Betriebsnotizen zur Commit-/Protokoll-Hygiene, keine mit Fundstelle belegbaren Norm-Fragen —
ausserhalb des Auftragsrahmens dieses Laufs.

## Verifikation (`git diff --numstat`, Rule `auto-verbesserungen` 260811)

| Datei | Kumulativ |
|---|---|
| `wiki/QUESTIONS.md` | +17 / -2 — die 2 Löschzeilen sind exakt die 2 selbst ersetzten Checkbox-Zeilen (per `git diff \| grep "^-"` einzeln gegen die eigene Editierliste geprüft, keine fremde Zeile berührt) |
| `CHANGELOG.md` | additiv (dieser Eintrag) |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit läuft über den
15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.

## Nächster Schritt (Empfehlung)

- **VERIFIKATION AUSSTEHEND** (vier Artefakte) ist der ergiebigste nächste Einzellauf — braucht
  aber Zeit am Original-PDF, nicht nur Web-Recherche.
- Die verbleibenden ca. 35 offenen Checkbox-Punkte sind mehrheitlich P3/P4 oder echte externe
  Bring-Schulden (Kaufentscheid Raphael). Weitere Bestandsabgleich-Läufe gegen REGISTER/INDEX
  lohnen sich nur noch punktuell, da die parallel laufenden „SIA-Sweep"-Läufe denselben Weg
  bereits sehr dicht abdecken.
- Bei einer künftigen Abarbeitung zuerst `outputs/` nach dem jüngsten `questions-abarbeitung*`-
  UND `sia-sweep-*`-Report sortieren (nicht nur nach Nummer), da beide Laufreihen denselben
  Fragenbestand bearbeiten und sich gegenseitig überholen können.
