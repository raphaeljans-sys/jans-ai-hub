# SIA-Sweep, 33. Fortsetzung — 24.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
SIA-Sweep-Laufs (32. Fortsetzung) zuerst gelesen, dort weitergemacht.

## Kollisionscheck

`ps aux` vor Arbeitsbeginn: eigener Prozess (Skript-Wrapper `mschub521`, PID 54155, exakt dieser
Auftragstext). Parallel liefen `mschub519` (PID 53453, KB `normen`, QUESTIONS-Abarbeitung —
andere Datei, kein Konflikt) und `mschub520` (PID 53891, KB `projekt-lessons`, fremdes
Verzeichnis). Kein Konkurrenzlauf auf denselben Dateien.

## Ausgangslage geprüft

Die 32. Fortsetzung hatte vier neue, kostenlose Bring-Schuld-Kandidaten aus dem Verweisnetz der
neun bereits destillierten Factsheets benannt: 33026.d, 33028.d, 44002.d, 67018.d.
`training/norm-inventar.md` unverändert bei 5 offenen kostenpflichtigen SIA/VKF-Bring-Schulden
— kein Kaufentscheid seit der 32. Fortsetzung.

## Durchgeführt: alle vier Kandidaten beschafft, gelesen, destilliert

Beschaffungsweg: `curl -A "Mozilla/5.0" https://www.suva.ch/waswo/<Nr>.D` — lieferte bei allen
vier Publikationen erneut die HTML-Produktseite (Content-Type text/html) statt des PDFs,
identische Werkzeug-Falle wie bei den neun Factsheets der 32. Fortsetzung. Lösung: aus den
`<a>`-Tags mit Linktext „PDF Deutsch" den `sitecorecontenthub.cloud`-Downloadlink extrahiert
(`v=`-Parameter je Publikation individuell), danach mit `pymupdf` (Python `fitz`) Text und
Metadaten gelesen.

| Nr. | Titel | Ausgabe | Seiten | Kernwert |
|---|---|---|---|---|
| 33026.d | Arbeitsplattformnetze | Stand Februar 2022 | 2 | Klasse B1 (SN EN 1263-1), Maschenweite max. 45 mm, Höhendifferenz Netz/Tragstruktur max. 1,5 m, Neigung max. 20° |
| 33028.d | Seitenschutz mit Auffangnetzen — Anforderungen | Stand Januar 2022 | 2 | Zwei Systeme (Drahtseil-Ersatz Netz-Oberkante 1,0 m / Netz ohne Drahtseil 1,5 m), Pfostenabstand max. 10 m |
| 44002.d | Sicherheit durch Anseilen — Persönliche Absturzschutzausrüstung | Erstausgabe März 1989, überarb. Oktober 2025 | 36 | Fangstosskraftgrenze 6 kN, Rettungszeit Hängesyndrom 10-20 Min., drei PSAgA-Systemarten, vollständiger EN-Normenkatalog |
| 67018.d | Checkliste Kleinarbeiten auf Dächern (bis 2 Personen-Tage) | Ausgabe Januar 2022 | 4 | 20-Fragen-Kontrollraster, Rettungszeit 20 Min. |

Alle vier PDFs mit echtem Textlayer (kein Scan), vollständig gelesen. Alle vier
PDF-Metadatentitel ohne Sprachsuffix (.f/.i) als deutsche Fassung bestätigt.

**Nebenbefund — 44002.d ist keine Factsheet, sondern eine 36-seitige Grundlagenbroschüre:**
Deutlich umfangreicher als alle bisherigen Suva-Publikationen dieser KB. Destillat entsprechend
mit Kapitelstruktur (Grundsätze, Systeme, Rettung, PSA-Normenkatalog, Anschlageinrichtungen,
Instandhaltung, gesetzliche Anforderungen) statt der sonst üblichen kurzen
Kernaussagen-Liste angelegt. Ausgabe Oktober 2025 macht sie zur zweitjüngsten Suva-Publikation
dieser KB (nach 67150.d, Juli 2026).

**Cross-Bestätigung Rettungszeit (kein Widerspruch, drei unabhängige Quellen):** 44002.d nennt
für das Hängesyndrom eine Bandbreite von 10-20 Minuten; `suva-33029-2022-psaga-fassadengeruestbau`
und `suva-67018-2022-checkliste-kleinarbeiten-daechern` (dieser Lauf) nennen beide 20 Minuten
für denselben Sachverhalt. Alle drei Werte am jeweiligen Original bestätigt, im neuen Destillat
als Cross-Referenz vermerkt.

**Neuer, deutlich grösserer Bring-Schuld-Block entdeckt:** Kapitel 8 von 44002.d («Weitere
Publikationen») listet ein breites Netz weiterer Suva-Titel, die in dieser KB noch nicht
erschlossen sind: 33016.d (Arbeiten am hängenden Seil), 33006.d (Rigging
Veranstaltungstechnik), 33032.d (Seilwurfsystem), 33070.d (Seilsicherung im steilen Gelände),
33071.d (Sicher arbeiten auf Bäumen), 33072.d (Arbeiten auf der Leiter an Bäumen),
33102.d/33103.d/33104.d (Ortsfeste Leitern Schächte/Gebäude/Maschinenanlagen), 44062.d
(Sicheres Einsteigen in Schächten/Gruben/Kanälen), 44095.d (Solaranlagen-Montage), 44096.d
(Anschlageinrichtungen auf Dächern), 88816.d/84044.d (Acht lebenswichtige Regeln, zwei
Formate), 67055.d (Checkliste Ortsfeste Leitern), 67064/1.d + 67064/2.d (Checkliste
Hubarbeitsbühnen, zweiteilig), dazu EKAS-RL 2134 (Forstarbeiten) und EKAS-RL 6512
(Arbeitsmittel). Bewusst **nicht** in diesem Lauf verfolgt — der Umfang (16 Titel) sprengt den
Vier-Kandidaten-Zuschnitt der letzten Fortsetzungen deutlich; vollständig dokumentiert im
Destillat und im Register für einen Folgelauf.

## Nachgeführt

- 4 neue Destillat-Dateien in `destillate/` (siehe Tabelle), alle Frontmatter mit `quelle`,
  `herausgeber`, `ausgabe`, `gelesen`, `status: established`, `verifikation`-Vermerk inkl.
  Werkzeug-Falle.
- `destillate/INDEX.md`: 4 neue Zeilen nach der bestehenden `suva-33029`-Zeile.
- `training/norm-inventar.md`: 1 neue Sammelzeile `[x] 260824` mit vollem Beleg, nach der
  bestehenden Neun-Factsheets-Zeile.
- `wiki/REGISTER.md` Abschnitt D: 4 neue Tabellenzeilen in der Suva-Publikationstabelle; der
  bisherige Bring-Schuld-Absatz wurde durch einen ✅-Vermerk ersetzt, ergänzt um den neuen,
  grösseren Bring-Schuld-Block aus dem Verweisnetz von 44002.d.
- `CHANGELOG.md`: neuer Kopf-Eintrag oberhalb des vorherigen QUESTIONS-Abarbeitungs-Laufs
  (chronologisch korrekt eingefügt, dessen Eintrag unverändert darunter belassen).

## Offen für den nächsten Lauf

1. **Grosser neuer Bring-Schuld-Block** (16 Suva-Titel + 2 EKAS-Richtlinien, siehe oben) —
   direkte Fortsetzung dieser Mandatsausweitung; empfiehlt sich in mehreren kleineren
   Fortsetzungen statt einem Lauf, gleiche HTML-Fallen-Route erwartbar (Content-Type prüfen,
   nicht nur ob pymupdf Text liefert).
2. Danach unverändert wie in den Vorläufen: Raphaels Kaufentscheide zu den 5 kostenpflichtigen
   SIA/VKF-Bring-Schulden, oder Rest-Check der übrigen bfu-Publikationen auf neuere Fassungen.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft: 4 neue Destillat-Dateien (`git status
--porcelain`, alle `??` — kein Bestand überschrieben), `destillate/INDEX.md` reine Ergänzung
(4 neue Zeilen, 0 gelöscht), `training/norm-inventar.md` reine Ergänzung (1 neue Zeile, 0
gelöscht), `wiki/REGISTER.md` Block-Ersatz per Volltext-Diff geprüft, keine fremde Zeile
berührt. Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit über den
15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
