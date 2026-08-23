# SIA 500 Korrigenda C3:2013/C4:2019 vollständig ausgewertet; VKF 12-15-Querverweis nachgetragen

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten (QUESTIONS-Abarbeitung,
siebter Lauf). Vorlauf gelesen: `CHANGELOG.md` (Kopf: sechster Lauf) und
`outputs/2026-08-23_questions-abarbeitung5.md`.

## Ergebnis

### 1. SIA 500 Korrigenda C3:2013/C4:2019 — GESCHLOSSEN (Run-19-Auftrag vom 28.07.2026)

Der seit dem 28.07.2026 offene Auftrag «C3/C4 Ziffer für Ziffer gegen das Destillat
durchgehen» war unbearbeitet liegen geblieben: das Destillat kannte nur Ziff. 9.7.2/9.7.3
(C3) im Detail, alle übrigen Stellen trugen nur einen pauschalen Fassungs-Vorbehalt.

**Beschaffung:** Beide Korrigenda sind auf shop.sia.ch als kostenloser Download geführt
(Preisgruppe 0):
- C4:2019 — Produktseite `shop.sia.ch/normenwerk/architekt/sia%20500-c4/D/Product`,
  Download `shop.sia.ch/aaa1c316-633d-4f61-8910-bf9c422b1a1b/D/DownloadAnhang`, 4 S.,
  180'348 Bytes (Dateigrösse deckt sich exakt mit Shop-Metadaten).
- C3:2013 — Produktseite `shop.sia.ch/normenwerk/architekt/sia%20500-c3/D/Product`,
  Download `shop.sia.ch/56f709e4-e76e-46a2-9dad-4a439a8a1df9/D/DownloadAnhang`, 7 S.,
  55'176 Bytes.

Beide per `curl -L -A "Mozilla/5.0"` geladen und mit `/opt/homebrew/bin/pdftotext -layout`
vollständig gelesen (nicht nur die zuvor bekannten Stellen).

**Umfang der Änderungen:**
- **C4:2019 (7 Ziffern):** 3.4.1 (Türhöhe-Ausnahme gestrichen), Tabelle 4/3.7.3
  (Aufzugskabine Aussenraum-Tiefe 2,00→2,10 m), 3.7.4 (Übereck-Kabinentüren-Mass),
  3.7.6 (Befehlsgeber-Bezugshöhe), 3.7.7 (Kontrast-/Tastenanforderung verschärft), 3.7.8
  (Gegensprechanlagen-Verweis auf SN EN 81-70), 6.2.2 (Ertastbare Informationen —
  Aufzug-Befehlsgeber-Verweis ergänzt).
- **C3:2013 (über 20 Stellen):** 0.3 (Normverweise ausgetauscht), 1.2 (**Rollstuhlgewicht
  Innenraum 250→300 kg**), 3.3.3 (Freiflächen vor Türen statt nur Drehflügeltüren + neue
  Abstandsregel zu Treppenabgängen), 3.3.6.2 (Automatiktür-Normen ausgetauscht), 3.6.4.1
  (Handlauf auf Zwischenpodesten), 3.7.2 (Kabinentüren→Schachttüren + Messregel), 3.7.4/9.5.1
  analog, 3.8.5 (**Treppenlift-Nennlast 250→300 kg**), 4.4 (Beleuchtung Innen-/Aussenraum
  getrennt), 7.7.2 (Anordnung verbindlich + Anhang A.8.2 auf SN EN 13200-1 umgestellt), 8.2.2
  (brandgesicherte Rollstuhlflächen eigenständig neu bemessen), 9.1.1 (Bodenflächen-Zusatz),
  9.1.5 (Präzisierung), 9.2.4 (neu eingeführt), 9.5.1 (Terminologie), Anhang A.8.7
  (Fluss-/Seebäder-Handlaufabstand), Anhang D.1.1.3 (Tabelle 9 neu gegliedert).

**Sicherheitsrelevantester Einzelfund:** Das Referenzgewicht des Innenraum-Rollstuhls
(Ziff. 1.2, Begriffe-Definition) ist seit C3:2013 **300 kg statt 250 kg** — dieselbe Korrektur
gilt für die Treppenlift-Nennlast (Ziff. 3.8.5). Beide Werte waren in der KB bis heute mit dem
alten Wert 250 kg geführt, ohne jeden Korrigenda-Hinweis. Das Destillat `sia-500-2009.md`
verlinkt auf `bkp-261-aufzuege.md` — jede Lastannahme, die von dort auf das SIA-500-Referenz-
gewicht zurückgreift, war potenziell mit dem falschen Wert gerechnet.

**Was NICHT abschliessend geklärt werden konnte:** Zwei C3-Korrekturen betreffen Anhänge, die
in dieser KB nicht im Volltext gelesen sind (nur Anhang A und E sind vollständig ausgewertet,
B/C/D/F/G/H nicht): die neue Bodenflächen-Anforderung «gemäss Anhang B» (Ziff. 9.1.1) und die
Neufassung von Tabelle 9 in Anhang D.1.1.3. Beide sind aus der Korrigenda selbst zitiert und
im Destillat als offener Punkt vermerkt, nicht gegen den vollständigen Anhangstext geprüft.

**Nachgeführt:** `destillate/sia-500-2009.md` (Frontmatter + 9 Kernziffern-Bullets + Zentrale-
Tabellen-Abschnitt + Offene-Punkte-Abschnitt), `wiki/QUESTIONS.md` (Run-19-Abschnitt
geschlossen), `wiki/REGISTER.md` (SIA-500-Zeile).

### 2. VKF BRL 12-15 — fehlender Querverweis zur Teilrevision 2026 nachgetragen

N58-1 (offener Sonderfall «12-15/26-15 Teilrevision 2026 — ersetzt jenes Destillat die
Bestandsdestillate?») geprüft: Antwort nein, das Teilrevisions-Destillat deckt nur die vier
vom IOTH-Beschluss vom 06.03.2026 geänderten Absätze ab (12-15 Ziff. 3.2 Abs. 10 und 4.5
Abs. 1; 26-15 Ziff. 11.1.3 Abs. 1-2), der übrige Inhalt bleibt bei der Bestandsfassung 2015.

Dabei einen echten Bestandsfehler gefunden: `vkf-brl-26-15-gefaehrliche-stoffe.md` verlinkt die
Teilrevision seit Run 58 (20.08.2026) sowohl im Frontmatter als auch im Fliesstext,
`vkf-brl-12-15-brandverhuetung-organisatorischer-brandschutz.md` verlinkte sie **nirgends** —
identische Ausgangslage, ungleich nachgeführt. Nachgetragen (Frontmatter-Link + Fliesstext-Box,
Formulierung analog zum 26-15-Vorbild). Kein neuer Fachinhalt destilliert, reine
Konsistenzkorrektur.

## Verifikationsstand

Beide Korrigenda-PDFs sind primärquellenfest (offizielle shop.sia.ch-Domain, Preisgruppe 0,
Dateigrösse deckt sich mit den unabhängig abgerufenen Shop-Metadaten). Der VKF-Befund stützt
sich auf Gegenlektüre zweier bereits primärquellenfest belegter KB-Dateien, kein neuer
Fachinhalt destilliert. Nach jedem Schreibvorgang `git diff --numstat` geprüft — alle
Änderungen reine Ergänzungen, keine Bestandslöschung. Ein `nas-selfcommit`-Zwischencommit hat
den VKF-12-15-Edit während des Laufs bereits gesichert (Commit `c02644a5`); Inhalt danach am
Dateibestand erneut verifiziert.

## Bewusst nicht weiterverfolgt

N-SIASWEEP-1 bis -4, N59-2, N59-4, N60-1, N60-2 — laut Vorlaufbericht bereits erschöpft
(N-SIASWEEP, N59-2/-4) bzw. Freigabe Raphael ausstehend (N60-1/-2, nicht selbständig zu
entscheiden). Kein Doppelaufwand zur parallel laufenden SIA-Sweep-Fortsetzung: ein zweiter
`claude`-Prozess bearbeitete während dieses Laufs denselben CHANGELOG mit einem anderen
Auftrag (SIA-Blindzone-Sweep, oberer Abschnitt der Datei) — per `ps aux` als eigenständiger,
nicht konkurrierender Prozess bestätigt, eigener Arbeitsbereich (SIA-Ziffernbestand vs.
VKF-Querverweise/SIA-500-Korrigenda) gewählt, um Schreibkonflikte zu vermeiden.
