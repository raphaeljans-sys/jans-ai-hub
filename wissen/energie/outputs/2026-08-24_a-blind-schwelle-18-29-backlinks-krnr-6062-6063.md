# A-BLIND-Schwelle auf 18-29 Backlinks abgesenkt, KRNr 6062/6063 Solarpflicht live nachgeprüft

Datum: 2026-08-24 · Lauf: interaktive Session, Fortsetzung des A-BLIND-Fall-2-Laufs vom selben Tag

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand,
Anschluss an den letzten Lauf (`outputs/2026-08-24_a-blind-fall2-erdwaermesonden-gschg-gschv.md`).
Dessen eigene Empfehlung für den nächsten Lauf: entweder die Backlink-Schwelle für die A-BLIND-
Methode (Primärquellen-Verifikation der meistzitierten Destillate) von ≥30 auf 20-29 absenken,
oder auf neu destillierte Quellen warten.

## Vorgehen

1. Backlink-Zählung wiederholt (Python-Skript wie im Vorlauf, `[[...]]`-Referenzen in `wiki/*.md` +
   `destillate/*.md`, gegen tatsächlich existierende Destillate gefiltert), Bereich auf 18-29
   erweitert (38 Treffer statt der ≥30-Kandidaten des Vorlaufs).
2. Die acht meistzitierten (27-29 Backlinks) einzeln gegen Frontmatter (`status`) und Abschnitt
   «Offene Punkte» geprüft:
   - `bfe-u-wert-bauteilekatalog-neubauten-2002` (29): established, aber offener Punkt verweist auf
     SN EN ISO 6946 als Primärquelle — dieselbe Normkauf-Blockade wie E-R161-1, nicht neu lösbar.
   - `ahb-zuerich-gt-rl8-beleuchtung` (29): status emerging, aber die Lücke ist Normablösung
     (SIA 380/4 → SIA 387/4), keine A-BLIND-Frage (kein PDF-Lesefehler zu prüfen).
   - `pv-marktzahlen-kosten-ch-2025` (28), `fernwaerme-anschlusspflicht-zh` (27): established,
     kein offener Primärquellen-Punkt im Frontmatter/Abschnitt.
   - `minergie-nachweiskurs-2023-mkz-thge` (28): established, Verifikationsvermerk bereits vom
     21.07.2026 vorhanden (Adversarial Verify gegen Produktreglement 2026.1).
   - `gebaeudeprogramm-bund-hfm-2015` (27): established, offener Punkt ist reine
     Web-Aktualitätswarnung («Zahlen vor Zitat prüfen»), kein Primärtext-Fall.
   - `zh-energiegesetz-revision-solarpflicht-2026` (Backlinks nicht massgeblich, eigenes
     Verfahrenstracking mit `status: emerging`): siehe unten.
   - `muken-2025-modul-7-betriebsoptimierung-hlkkse` (27): der einzige dort vermerkte
     Primärtext-Punkt (200'000-kWh-Schwelle BBV I) war bereits am 19.07.2026 (Wissens-Chef Run 9)
     geschlossen — der Text stand nur nicht mit Durchstreichungs-Markup da; nachgezogen (kosmetisch,
     kein Sachfehler).

**Ergebnis: kein neuer A-BLIND-Fall in diesem Backlink-Bereich.**

3. Stattdessen einen konkret gangbaren, überfälligen Datenstand-Check nachgeholt: die
   Solarpflicht-Vorlage hatte seit Run 95 (25.07.2026) keine frische Prüfung mehr — dort war eine
   «passiv/ereignisgetrieben»-Nachprüfung empfohlen worden. Live-Abfrage der CDWS-
   Geschäftsdatenbank Kantonsrat ZH (`parlzhcdws.cmicloud.ch/parlzh5/cdws/Index/GESCHAEFT/
   searchdetails?q=krnr%20any%20<Nr>&l=de-CH`) für **beide** Geschäftsnummern einzeln (KRNr 6062
   Solarpflicht, KRNr 6063 Langzeitspeicher).

## Befund

Beide Geschäfte zeigen **unverändert** `PendentBeiNeu = Kommission`, genau ein protokollierter
Ablaufschritt («Antrag Regierungsrat», Sitzungsdatum 26.11.2025) — identisch mit dem Stand aus
Run 87 (24.07.2026) und Run 95 (25.07.2026). **Ein Monat ohne Fortschritt** seit der letzten
Prüfung; kein Kommissionsbericht, keine erste Lesung. Für die Bauherren-Beratung unverändert:
kein Inkraftsetzungsdatum bekannt, heutige Baugesuche bleiben bei EN-104-ZH.

Nebenbefund: `wiki/BAUHERREN-FAQ.md` F116 trug bereits einen «Nachtrag 2026-08-24» eines früheren
Laufs desselben Tages, der aber nur KRNr 6062 explizit nannte (obwohl die begleitende KRNr-6064-
Abklärung beide Geschäfte betraf) — auf beide Nummern ausgeweitet.

## Eingearbeitet

- `destillate/zh-energiegesetz-revision-solarpflicht-2026.md`: neuer Abschnitt «Aktualitäts-Check
  2026-08-24», Frontmatter `last_updated`.
- `wiki/BAUHERREN-FAQ.md` F116: Nachtrag um KRNr 6063 ergänzt.
- `wiki/QUESTIONS.md`: neuer datierter Abschnitt mit Kandidatenliste und Befund.
- `CHANGELOG.md`: Eintrag mit Anschlusslogik zum Vorlauf.

## Für den nächsten Lauf

Unter 18 Backlinks lohnt sich die A-BLIND-Methode nicht mehr (Streuverlust zu gering zitierten
Einzelquellen). Der A-BLIND-Vorrat aus stark zitierten, primärtext-offenen Destillaten ist für
dieses Quartal ausgeschöpft — nächster Fortschritt braucht entweder ein neu destilliertes, häufig
zitiertes Dokument, oder Raphaels Entscheid zu den bekannten Normkauf-Blockaden (SIA 380/1:2016,
SN EN ISO 6946, SIA 2024:2021 Anhang A/F).

`git diff --numstat` nach jedem Schreibvorgang geprüft: alle drei Dateien laufen additiv (Destillat
+27/-1 Frontmatter-Zeilenersatz, FAQ +4/-3 Umformulierung, QUESTIONS.md +27/-0), keine fremde
Löschung.
