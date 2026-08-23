# Vertiefungslauf Kennwerte/Verfahren — 23.08.2026

Auftrag Raphael: die KB `wissen/immobilienbewertung` vertiefen — die hinterlegten Kennwerte und
Verfahren (Realwert, Ertragswert/DCF, Vergleichswert/hedonisch, Residual-Landwert) auf
Aktualität und Belegstand prüfen, offene Fragen wo belegbar schliessen, Bring-Schulden von
Raphael klar als solche markiert offen halten statt raten. Rule `wissens-bibliothekar` und
`identifikatoren-verifizieren` beachtet.

## Ausgangslage

Diese KB ist eine der am intensivsten trainierten im Hub: 52 Trainingsläufe, mehrere
Wissens-Chef-Cross-KB-Läufe und ein Health-Check vom 22.08.2026 liegen bereits vor. Die vier
tragenden Verfahrensartikel (`realwert-sachwert`, `ertragswert-dcf`, `vergleichswert-hedonisch`,
`residualwertmethode`) sind alle `status: established` und wurden in den Runs 18-22 per
Modell-D-Recompute (Volltext-Gegenlesung der Primärquellen) durchgeprüft — alle bestanden, bis
auf zwei bekannte, bereits als Bring-Schuld geführte Inkonsistenzen im Quellmaterial (D10, zwei
Roh-Zeilen der Healthcare-Referenztabelle). Ein weiterer Vollverifikations-Pass ohne neues
Rohmaterial wäre reine Wiederholung — das haben die Runs 34-52 wiederholt bestätigt
("Delta-Null-Bestätigungslauf").

Die Prüfung dieses Laufs konzentrierte sich deshalb gezielt auf: (a) Marktanker-Aktualität seit
dem letzten Marktpuls (13.08.2026), (b) eine Stichprobe bei einer der als "rechtlich hängig"
geführten Zonenordnungen (Zollikon), (c) Registerpflege eines vom Health-Check 22.08.2026
gemeldeten, aber nicht behobenen Fundes.

## Vorgehen und Befunde

### 1. Marktanker (Web-Check 23.08.2026)

- **SMG/Homegate-Mietindex Juli 2026 = 134 Punkte**, 0 % MoM, +2,4 % YoY (Vormonat Juni: +2,5 %
  YoY), publ. 13.08.2026. Primärquelle
  [swissmarketplace.group/de/media-release/mietindex-07-2026-de](https://swissmarketplace.group/de/media-release/mietindex-07-2026-de)
  direkt abgerufen und gegengelesen. **Neuer Befund:** erster MoM-Rückgang in 15 von 26 Kantonen
  seit Beginn der Beobachtungsserie in [[investorenmarkt-makro]] (Run 51, 27.07.2026) — bislang
  eine gleichmässige Aufwärtsbewegung. Grösste Rückgänge Nidwalden −4,0 %, Schwyz −1,9 %, Genf/Uri
  je −1,5 %, Zürich −0,4 %; Anstiege nur St. Gallen +0,7 % und Tessin +0,6 %. Jahresvergleich
  weiterhin stark: Graubünden +7,1 %, Zug +5,0 %, Luzern +4,2 %. Eingearbeitet in
  `wiki/investorenmarkt-makro.md`, Abschnitt "Marktpuls Mieten & Blasenrisiko" — explizit als
  **ein** Datenpunkt gekennzeichnet, nicht als bestätigte Trendwende.
- **BFS-Baupreisindex:** nächste Erhebung turnusgemäss erst 01.10.2026 (halbjährlich, April/
  Oktober) — zum Laufdatum korrekt nicht fällig, bestätigt per Web-Check.
- **BWO-Referenzzinssatz:** nächste Publikation 01.09.2026 (quartalsweise 02.03./01.06./
  01.09./01.12.) — zum Laufdatum korrekt nicht fällig, bestätigt per Web-Check.
- **SNB-Leitzins:** nächste geldpolitische Lagebeurteilung 24.09.2026 — kein neuer Entscheid seit
  18.06.2026 zu erwarten, bestätigt.
- **UBS SREBI, BFS-IMPI, LIK:** alle drei sind quartals- bzw. monatsweise seit dem 13.08.2026-Lauf
  nicht neu erschienen (SREBI/IMPI quartalsweise, nächste Publikation erst nach Q3-Ende;
  LIK-August-Wert erst Anfang September fällig) — kein neuer Datenpunkt, keine Änderung nötig.

### 2. Stichprobe Rechtsgrundlage: Zollikon BZO-Teilrevision

Der Artikel `wiki/az-gfz-kennwerte.md` führte den Stand "Gemeinderat hat am 20.08.2025 eine
Teilrevision beschlossen, der Gemeindeversammlung vorgelegt, noch nicht in Kraft" (zuletzt
bestätigt Run 26, 13.07.2026 — über ein Jahr alt). Bei einem Datenstand dieses Alters und einem
hängigen Gemeindeentscheid war ein Web-Check angezeigt.

**Befund:** Die Gemeindeversammlung Zollikon hat die Teilrevision am **03.12.2025 mit Änderung
angenommen** (164 Stimmberechtigte,
[zollikon.ch/aktuellesinformationen/2660627](https://www.zollikon.ch/aktuellesinformationen/2660627)).
Der KB-Stand war damit um diesen Schritt veraltet. Die amtliche Rechtssammlung der Gemeinde
([zollikon.ch/allethemenbereiche/thema/77737](https://www.zollikon.ch/allethemenbereiche/thema/77737),
Web-Check 23.08.2026) führt aber weiterhin **Stand 5. April 2013** als gültige Fassung — die
Revision ist angenommen, aber noch nicht rechtskräftig (kantonale Genehmigung/Rekursfrist
vermutlich offen; nicht telefonisch bei der Bauabteilung verifiziert, das wäre über den
Web-Recherche-Rahmen dieses Laufs hinausgegangen).

**Konsequenz für die KB:** Die in `az-gfz-kennwerte.md` hinterlegte Grundmass-Tabelle (BMZ
1.25-2.90 je Zone) bleibt **unverändert korrekt**, weil sie den nach wie vor gültigen
2013er-Stand abbildet. Geändert wurde nur der Zwischenstand-Vermerk (Datum des
GV-Beschlusses statt nur des Gemeinderats-Beschlusses, Web-Check-Datum), nicht ein einziger
Kennwert. Die "Offen/nächste Schritte"-Zeile ist entsprechend nachgeführt: Wiedervorlage bleibt
bestehen, jetzt mit dem korrekten Meilenstein.

**Einordnung:** Dieser Befund ist ein Beispiel dafür, warum "über 18 Monate alt" allein kein
hinreichendes Aktualitätskriterium ist — der Artikel selbst ist erst vom 17.07.2026, aber der
darin zitierte Rechtsstatus war schon damals über anderthalb Jahre alt und hatte sich seither
weiterentwickelt, ohne dass die KB es abbildete. Empfehlung für künftige Läufe: bei Artikeln mit
einem ausdrücklich als "hängig"/"noch nicht in Kraft" markierten Rechts- oder Verfahrensstatus
lohnt sich unabhängig vom `last_updated`-Datum ein Status-Check, weil genau diese Fälle sich
bewegen, ohne dass ein KB-Update sie automatisch nachzieht.

### 3. Registerpflege D1

Der Health-Check vom 22.08.2026 hatte gemeldet, dass `wiki/wissensluecken.md` D1 den
Klammerzusatz "Langnau am Albis ganz fehlend" weiterhin führt, obwohl der Fact-Sheet-Artikel
`wiki/marktdaten-gemeinden/zh-langnau-am-albis-8135.md` (status `established`, Stand 12/2025)
seit Längerem existiert — der Health-Check selbst führte das nicht aus (Phase 2 unbeaufsichtigt
lief nicht). In diesem Lauf nachgeholt: Klammerzusatz entfernt, Korrektur mit Datum und
Fundstelle vermerkt.

### 4. Neuer JANS-Bewertungsfall?

`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/` direkt gelistet. Auffällig war ein Ordner "8155
Niederhasli 2025 Seestrasse 64 CS Controlling Sensitivität", der in keinem bisherigen
Trainingslauf dieser KB erwähnt ist. Dateidatum-Check: alle Dateien darin datieren auf
**11.08.2025** — älter als der bislang jüngste bekannte Fall (Wangen 8855, Juni 2026). Es handelt
sich damit **nicht** um einen neuen Fall, sondern um einen bereits bestehenden Altfall, der
bislang schlicht nicht in die Bewertungsfall-Historie dieser KB aufgenommen wurde (kein
KB-Fehler — die bisherigen Läufe prüften konsistent nur auf *neue*, nicht auf *lückenlos erfasste*
Fälle). Keine Aktion ausgelöst; falls Raphael eine rückwirkende Erfassung wünscht, wäre das ein
eigener kleiner Auftrag.

## Bring-Schulden (unverändert offen, nicht geraten)

| # | Lücke | Status in diesem Lauf |
|---|---|---|
| D1 | UBS Fact Sheets teils veraltet (Wädenswil 7/2024, Einsiedeln/Regensdorf/Wald 12/2023) | Klammerfehler zu Langnau korrigiert; die eigentliche Bring-Schuld (neue Fact Sheets bestellen) bleibt offen |
| D2 | Bodenpreise nur als Screenshots, keine strukturierte Quelle | unverändert offen |
| D5 | Margen-/Finanzierungsannahmen der JANS-Praxis | unverändert offen |
| D7 | Kennwerte Büro/Gewerbe dünn belegt | unverändert offen |
| D9 | Szenarien-Definitionen (lowbudget/standard/gehoben/exklusiv) | unverändert offen |
| D10 | Zwei Roh-Zeilen der Healthcare-Referenztabelle quellenintern inkonsistent | unverändert offen, Bereinigung des Original-Blatts nötig |
| D12 | Teuerungsanker Tab. 2 (1.346 vs. 1.334) — Fachentscheid | unverändert offen |
| D13 | BKP-Scope der Neuwert-Richtwerte Tab. 2 ungeklärt | unverändert offen, Primärquelle nicht im Haus |
| D14 | Kein WP-unabhängiger Gegencheck der Preisniveaus (IAZI/CIFI/Handänderungsstatistik) | unverändert offen, kostenpflichtig/zugangsgebunden |

Keine dieser neun Lücken wurde geraten oder stillschweigend gefüllt — sie bleiben exakt so
markiert, wie sie waren, mit dem einzigen Unterschied, dass D1 seinen falschen Klammerzusatz
verloren hat.

## Bewusst nicht angefasst

- **T-Regelgeschoss** (HNF/GF-Faktor 0,70 vs. 0,75): Fachentscheid Raphael, die
  `needs-decision`-Box in `realwert-sachwert.md` bleibt unverändert in Kraft.
- **T-Umlaut** (KB-weite ae/oe/ue-Ersatzschreibung, laut Health-Check 23.07.2026 >2'000
  Vorkommen über ~26 Dateien): explizit als review-pflichtig und **nicht** per blindem
  Massenersatz zu lösen markiert — ein dedizierter `wissenscheck`-Phase-2-Lauf ist der richtige
  Rahmen, nicht dieser Vertiefungslauf.

## Technischer Hinweis

Dieser Lauf lief auf einer Station, auf der `git diff --numstat` direkt gegen den SMB-gemounteten
NAS-Pfad hängt (bestätigt, Rule `sync-kanonische-quelle.md`/`auto-verbesserungen` 260726). Die
Diff-Kontrolle nach jedem Schreiben erfolgte stattdessen nativ per `ssh` auf die Synology
(`git log --stat` / `git show --numstat` nach Auslösen von `nas-commit-now.sh` mit
`JANS_NAS_SSH=raphaeljans@192.168.1.10`, da der Tailscale-Hostname auf dieser Station nicht
auflöste) — für `az-gfz-kennwerte.md` 16 Einfügungen/9 Löschungen, für `investorenmarkt-makro.md`
19/2, für `wissensluecken.md` 2/1: alle Werte proportional zu den vorgenommenen Edits, keine
unbeabsichtigte Massenlöschung.
