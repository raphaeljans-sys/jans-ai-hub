# QUESTIONS-Abarbeitung 23 — 2026-08-23

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established` ist
zitierfähig. CHANGELOG und Report des letzten Laufs (Abarbeitung 22) zuerst gelesen, dort
weitergemacht.

## Ausgangslage

Diese KB wird am 23.08.2026 extrem intensiv parallel bearbeitet (22 vorherige „Abarbeitung"-Läufe
plus über 26 „SIA-Sweep"-Fortsetzungen laut CHANGELOG-Kopf). Abarbeitung 22 hatte die Zeile
„VERIFIKATION AUSSTEHEND für vier heute erzeugte/erweiterte Artefakte" (Zeile ~3202, tatsächlich
fünf benannte Dateien) als „ergiebigsten nächsten Einzellauf" identifiziert, aber aus
Aufwandsgründen nicht bearbeitet.

## Bearbeitet

**Die „VERIFIKATION AUSSTEHEND"-Zeile geschlossen — die geforderte Arbeit war bereits getan.**

Die Zeile stammt aus „Run 22" (25.07.2026, nicht zu verwechseln mit der heutigen Abarbeitung 22)
und listet fünf Artefakte als „noch nicht adversarial gegengeprüft":

1. `destillate/sia-266-1-2003.md`
2. `destillate/sia-410-1986.md`
3. `destillate/vkf-brl-13-15-baustoffe-bauteile.md` (Fassungs-Delta 2017)
4. `destillate/vkf-brl-verwendung-baustoffe.md` (Fassungs-Delta 2017)
5. `wiki/vkf-beherbergungskategorien.md`

Prüfung der Frontmatter-Felder `status`/`verifikation` aller fünf Dateien (heute, 23.08.2026,
gelesen) zeigt: alle fünf wurden noch am selben Tag (25.07.2026), durch die direkten
Folge-Läufe Run 23-27, vollständig adversarial verifiziert:

- `sia-266-1-2003.md`: fünf Retro-Verifikationsrunden (Runde 1: 13+9 Befunde; Runde 2-4: je 1-2
  Befunde; Runde 5: 0 Befunde) → Status `established`.
- `sia-410-1986.md`: adversarial geprüft Run 23 (Verdikt BEANSTANDET, Systematik-Fehler
  Positionsnummern korrigiert, danach `established`) plus Q&A-Selbstbefragung Run 27
  (18 unabhängige Fragen, 0 Widersprüche).
- `vkf-brl-13-15-baustoffe-bauteile.md`: Fassungs-Delta 2017 per Seitenbildvergleich adversarial
  gegengeprüft (Run 23), Verdikt BESTANDEN, 0 Abweichungen → `established`.
- `vkf-brl-verwendung-baustoffe.md`: Fassungs-Delta 2017 adversarial verifiziert (Run 23,
  BEANSTANDET, 5 Korrekturen eingearbeitet; Run 24 unabhängige Re-Verifikation, 4/5 wortgetreu
  bestätigt, 1/5 präzisiert) → `established`.
- `wiki/vkf-beherbergungskategorien.md`: zwei unabhängige Verifikationsrunden (Runde 1
  BEANSTANDET, 12 Korrekturen; Runde 2 Run 23, alle 12 seitengenau bestätigt plus 1 neuer,
  lokal begrenzter Befund korrigiert) → `established`.

Die heutigen (23.08.2026) Ergänzungen an `sia-266-1-2003.md` (Status-Zusatz `superseded`,
Web-Beleg SIA-Shop-Produktseite: SIA 266/1:2015 ersetzt die Ausgabe 2003) und `sia-410-1986.md`
(Status-Zusatz `zurückgezogen` per 01.01.2025, Web-Beleg suissetec.ch-Newsmeldung) sind
eigenständig quellenbelegt und ändern nichts an den bereits verifizierten Ziffern-Inhalten —
sie begründen keine neue Retro-Verifikationspflicht.

Die Checkbox war seit vier Wochen einfach nicht nachgezogen worden, obwohl die verlangte Arbeit
längst erledigt war — dasselbe Bookkeeping-Muster, das der direkt darunterstehende
„GESCHLOSSEN (Run 24, 260725)"-Eintrag für einen anderen Punkt bereits dokumentiert.

## Geprüft, kein neuer Ansatzpunkt

Die übrigen 37 offenen `[ ]`-Punkte in `wiki/QUESTIONS.md` wurden überflogen und gegen drei
Kategorien geprüft:

- **Bring-Schuld (kostenpflichtig, Kauf durch Raphael):** SIA 380/1:2016, SIA 385/1:2011,
  SIA 266/1:2015, SIA 410-Nachfolgewerke, SIA 181:2020, SIA 118:2013, VA 105-01:2015, SIA 491,
  SN EN 12193:2019, SN 640 052, SN 641 400, Wegleitung SIA 271 (Volltext) — alle bereits mehrfach
  bestätigt und mit Preis/Bezugsquelle belegt.
- **Raphael-Entscheid / strukturell, nicht faktisch:** Duplikate-Merge aus dem Reconcile
  (destruktiv, Rückfrage-Pflicht), Cross-Contamination-Beobachtung, doppelte Run-Nummern.
- **Bereits erschöpfte oder nicht deutbare Recherche:** N-R40-3 (EN-81-Reihe, ausdrücklich „kein
  systematischer Nachzieh-Auftrag", nur bei konkretem Projektbedarf), N-R40-7 (Grauton in
  Lignatec-Tabelle, Legende kennt keine getönte Variante — aus der Quelle selbst nicht ableitbar),
  BSV-2026-Überwachung (fällig erst nach der für März 2027 erwarteten IOTH-Entscheidung, also vor
  diesem Termin nichts zu prüfen).

Kein weiterer frei und kostenlos lösbarer Punkt gefunden.

## Verifikation

- `wiki/QUESTIONS.md`: `git diff --numstat` zeigt `+19/-7` — exakt die eine ersetzte Zeile,
  gegen `git diff` (Volltext) geprüft, keine fremden Zeilen berührt.
- `wissen/normen/CHANGELOG.md`: `+41/-0` — reiner Anhang am Dateikopf, keine bestehende Zeile
  verändert.

## Nächster Lauf

Freie, kostenlose Recherchepunkte sind in dieser KB zum Stand 23.08.2026 weitgehend erschöpft.
Ein produktiverer nächster Schritt dürfte sein: die Liste der Bring-Schulden zu einer einzigen,
priorisierten Einkaufsliste für Raphael verdichten (SIA-Shop-Preise sind grösstenteils bereits
einzeln belegt), statt weiterhin denselben Bestand nach neuen kostenlosen Wegen abzusuchen.
