# QUESTIONS-Abarbeitung — beide EKAS-Richtlinien destilliert, Kollision entdeckt

24.08.2026, ~03:55-04:02 Uhr

## Auftrag

Offene Fragen in `wissen/normen/wiki/QUESTIONS.md` abarbeiten. CHANGELOG-Kopf und Report des
letzten Laufs (SIA-Sweep 37. Fortsetzung, `2026-08-24_sia-sweep-siebenunddreissigste-fortsetzung.md`)
zuerst gelesen; drei offene Punkte übernommen:

1. Beide EKAS-Richtlinien (2134 Forstarbeiten, 76 S.; 6512 Arbeitsmittel, 32 S.) destillieren —
   bereits als kostenlos verfügbar bestätigt.
2. Den breiteren 16-Titel-Cross-Referenzen-Rest (Baumpflege, Solar/Asbest, Hubarbeitsbühnen/
   Krane, Ausbildung) erst nach Rücksprache mit Raphael fortsetzen.
3. 33045.d (ungeklärte Nummer) bei Gelegenheit auflösen.

## Durchgeführt

### Punkt 1: beide EKAS-Richtlinien destilliert

Beide PDFs von `ekas.admin.ch/fileadmin/Dokumente/Richtlinien/gueltig/` geladen (`curl -sL`),
mit `pdftotext -layout` extrahiert.

- **EKAS 6512 «Arbeitsmittel»** (vom 19.10.2001, Stand 01.01.2017, 32 S.): vollständig gelesen.
  Destillat `destillate/ekas-6512-arbeitsmittel.md`, `established`. Kernbefund: Ziff. 5.3
  (Art. 32a Abs. 3 VUV) verlangt eine dokumentierte Überprüfung von Baugerüsten, Rollgerüsten
  und Baustellenaufzügen **nach jeder Montage** — direkt anschlussfähig an die JANS-
  Bauleitungspraxis bei Gerüstabnahmen. Systematik der Schutzeinrichtungen (trennend/
  nichttrennend), Steuer-/Schalteinrichtungen (Energieabtrennung je Energieart) vollständig
  dokumentiert.
- **EKAS 2134 «Forstarbeiten»** (vom 06.12.2017, Stand 27.06.2025, 76 S.): Hauptteil Ziff. 1-7
  vollständig gelesen, inklusive der technischen Detailkapitel 5.2 (Arbeitsorganisation), 5.3
  (PSA), 6.1 (Fällen/Aufarbeiten), 6.6 (Besteigen von Bäumen) sowie Anhang 7 (Ausbildungsstufen
  F1-F7) und Anhang 12-14 (Rechtsgrundlagen/Fachunterlagen/Normen-Verzeichnis). Anhänge 2-6/8-11
  nur über Inhaltsverzeichnis erschlossen, im Frontmatter offen ausgewiesen. Destillat
  `destillate/ekas-2134-forstarbeiten.md`, `established`. Kernbefund: der Fall- und
  Gefahrenbereich beim Baumfällen entspricht der **doppelten Baumlänge** (Ziff. 6.1.5); die
  Richtlinie ist die Rechtsgrundlage der bereits in dieser KB destillierten Suva-Publikationen
  33071.d/33072.d — identische 2-m-/5-m-Schwellenwerte für die Leitersicherung (Ziff. 6.6.5) wie
  im Suva-Destillat.

Nachgeführt: `wiki/REGISTER.md` Abschnitt D (Status «erschlossen» + zwei neue Tabellenzeilen),
`destillate/INDEX.md` (zwei neue Zeilen), `training/norm-inventar.md` (eine additive
`[x]`-Log-Zeile).

### Punkt 2: bewusst nicht fortgesetzt

Die 37. Fortsetzung hatte selbst empfohlen, den breiteren 16-Titel-Cross-Referenzen-Rest erst
nach Rücksprache mit Raphael fortzusetzen, da er über den ursprünglichen, von 44002.d Kap. 8
ausgehenden SIA-Teilauftrag hinausreicht. Diese Empfehlung wird befolgt, nicht überschrieben.
Offene Frage an Raphael in `wiki/QUESTIONS.md` festgehalten (Abschnitt «SIA-Sweep, interaktive
Session», Ende).

### Punkt 3: nicht bearbeitet

Kein Fortschritt bei 33045.d in diesem Lauf.

## Unerwarteter Befund: Kollision mit parallelem Lauf

Beim Kollisionscheck vor Laufende (`ps aux`, `git diff --numstat`) zeigte sich, dass ein zweiter,
unabhängig um 03:57 Uhr gestarteter Claude-Prozess (Task-Bezeichnung im Prompt «SIA-Sweep
fortsetzen», PID 92836, zum Befundzeitpunkt weiterhin aktiv, ca. 5 Minuten Laufzeit) **denselben
Auftrag** — beide EKAS-Richtlinien destillieren — parallel und ohne Kenntnis dieses Laufs
bearbeitet hat. Beide Läufe griffen auf denselben offenen Punkt aus demselben Report (37.
Fortsetzung) zurück, weil beide kurz nacheinander gestartet wurden, bevor der jeweils andere
seine Ergebnisse committen konnte.

Ergebnis: vier Destillate für zwei Dokumente unter unterschiedlichen Dateinamen:

| Dokument | Dieser Lauf | Paralleler Lauf | Tiefenunterschied |
|---|---|---|---|
| EKAS 6512 | `ekas-6512-arbeitsmittel.md` | `ekas-6512-2017-richtlinie-arbeitsmittel.md` | beide S. 1-32 vollständig gelesen, ähnlich tief |
| EKAS 2134 | `ekas-2134-forstarbeiten.md` | `ekas-2134-2025-richtlinie-forstarbeiten.md` | dieser Lauf: Ziff. 5.2/5.3/6.1/6.6 vollständig; paralleler Lauf: nur Kap. 1-4 vollständig, Kap. 5.2/5.3/6.1-6.6 nur über Inhaltsverzeichnistitel — die sicherheitskritische Kennzahl «doppelte Baumlänge» fehlt dort im Destillat |

**Nicht selbst konsolidiert** — Artikel zusammenlegen oder löschen ist destruktiv (Rule
`wissens-bibliothekar`), zudem lief der parallele Prozess zum Befundzeitpunkt noch, ein Eingriff
in seine Datei während des laufenden Schreibvorgangs wäre riskant. Stattdessen als neuer,
prominent an den Kopf von `wiki/QUESTIONS.md` gesetzter Punkt dokumentiert, mit
Entscheidvorschlag (dieser Lauf als führend für 2134 wegen grösserer Lesetiefe, 6512 sachlich
gegenlesen) und dem Hinweis, dass Register/INDEX aktuell nur die Dateien dieses Laufs führen —
der parallele Lauf dürfte seine eigenen Registereinträge noch nachziehen, was zu doppelten
Zeilen führen kann, falls nicht vorher konsolidiert wird.

**Einordnung für künftige Läufe:** Bei kurz aufeinanderfolgenden, thematisch identischen
Scheduled-Task-Starts auf derselben KB (hier: zwei um drei Minuten versetzte Starts auf
denselben offenen Punkt) ist eine Kollision trotz Kollisionscheck am Laufanfang nicht
ausgeschlossen, wenn beide Läufe zum Zeitpunkt ihres jeweiligen Checks noch nichts vom anderen
sehen konnten. Ein Kollisionscheck kurz vor Laufende (wie hier) fängt das zumindest auf, bevor
stillschweigend doppelte Registereinträge entstehen.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: `wiki/REGISTER.md`, `destillate/INDEX.md`,
`training/norm-inventar.md` und `destillate/ekas-6512-arbeitsmittel.md` waren bereits durch den
15-Minuten-`nas-selfcommit` (Commit `6df65218`, 04:00:02 Uhr) gesichert, bevor dieser Lauf sie
erneut prüfen konnte — beim Abgleich mit dem Commit-Diff (`git show --stat`) zeigten sich
ausschliesslich additive, unveränderte eigene Edits, keine fremde Zeile berührt.
`wiki/QUESTIONS.md` zeigte nach beiden Edits 80/0 (rein additiv, zwei neue Blöcke, keine
Löschung). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit über den
15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
