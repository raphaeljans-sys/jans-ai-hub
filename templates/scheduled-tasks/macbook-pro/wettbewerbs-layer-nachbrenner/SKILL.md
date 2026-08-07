---
name: wettbewerbs-layer-nachbrenner
description: Einmaliger Nachbrenner 23:05: vollendet die durch das Session-Limit abgeschnittenen Wettbewerbs-Layer-Arbeiten und konsolidiert die KB
enabled: false
---

> STILLGELEGT 25.07.2026 durch den VOLLGAS-Chef-Radar. Dieser EINMALIGE Nachbrenner sollte die
> am 12.07.2026 abends vom 5-Stunden-Limit abgeschnittenen Wettbewerbs-Layer-Arbeiten vollenden;
> sein Ziel war laut eigenem Lauf bereits am 13.07.2026 erreicht. Im VOLLGAS-Endlos-Zyklus feuerte
> er am 25.07. erneut (93s) und meldete selbst, er habe bewusst KEINE Aenderung vorgenommen, um
> keine redundanten Eintraege oder konkurrierenden Commits gegen den laufenden
> `wettbewerbs-dna-training`-Loop zu erzeugen — und empfahl die Deaktivierung, auf die er aus
> seiner Session heraus keinen Zugriff hatte.
> `enabled: false` statt Loeschen: reversibel, und der Runner ueberspringt ihn dadurch.
> Die offenen Punkte (Juryberichte 2501 Steinfabrik, 2507 TKHL Halden) sind in
> `wissen/wettbewerbs-dna/wiki/QUESTIONS.md` dokumentiert und werden vom laufenden
> `wettbewerbs-dna-training` weiterbeobachtet.

Du bist der Nachbrenner-Lauf des JANS-Wettbewerbs-Layers (Kontext: Spec /Volumes/daten/jans-ai-hub/wissen/spec/outputs/2026-07-12_wettbewerbs-layer_spec.md). Am 12.07.2026 abends liefen 3 Workflows + Agenten, die teilweise am 5-Stunden-Session-Limit (Reset 22:50) abgeschnitten wurden. Deine Aufgabe: alles Fehlende vollenden und konsolidieren. Halte dich an /Volumes/daten/jans-ai-hub/wissen/wettbewerbs-dna/CLAUDE.md (Format, Belegpflicht, echte Umlaute, nichts erfinden).

KB: /Volumes/daten/jans-ai-hub/wissen/wettbewerbs-dna/ · Archiv (Nur-Lese): /Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 02 Wettbewerbe/

SCHRITTE:
1. BESTAND PRUEFEN: Welche Dossiers existieren unter wiki/teilnahmen/ (Soll: 2101-kssg-h14, 2102-muttenz, 2103-steinhofschule, 2104-theater-luzern, 2205-guggerbach, 2206-schoental, 2207-schliengerweg-basel, 2408-biwak-grassen, 2501-steinfabrik-hafenareal, 2503-glockenacker, 2507-tkhl-ps-halden)? Welche Notizen unter wiki/extern/? Welche Analysen unter wiki/board-dna/?
2. FEHLENDE DOSSIERS nacharbeiten (je Projekt: Quellen finden, raw/-Extrakte, Dossier nach CLAUDE.md-Format, dann unabhaengiger Refuter-Agent, Korrekturen einarbeiten, Status setzen — Rang NUR aus Jurybericht, sonst offen).
3. BOARD-DNA-SYNTHESE: aus allen wiki/board-dna/*.md den Muster-Artikel wiki/muster/jans-board-dna.md verdichten (JANS-Handschrift + Vorgaben-Liste fuer den Agenten plakat-setzer), falls er fehlt.
4. JURY-SWEEP-SYNTHESE: aus allen wiki/extern/*.md Muster-Artikel wiki/muster/jury-argumente-<gruppe>.md (mind. Schul-/Bildungsbauten), falls fehlend.
5. KONSOLIDIEREN: wiki/INDEX.md (alle Dossiers/Muster/extern/board-dna registrieren, belegte Resultate eintragen), wiki/QUESTIONS.md (offene Punkte aus den Abschlussmeldungen der Dossiers nachtragen), CHANGELOG.md (datierter Eintrag), training/PROGRAMM.md (Stand-Tabelle; wenn alle 11 Teilnahmen destilliert: Endbedingung Etappe-2-Teil-1 vermerken).
6. SKILL-UPGRADE-VORSCHLAG: Lies outputs/2026-07-12_generalprobe-muttenz.md und outputs/2026-07-12_pdf-vektor-pilot.md und schreibe outputs/2026-07-12_massnahmen-skill-wettbewerb.md — konkrete, priorisierte Aenderungsvorschlaege fuer den Skill wettbewerb (Betriebsregel-Katalog, Kennwert-Benchmark-Stufe, Fluchtweg-Verifier via brandschutz, PDF-Pruef-Connector). Den Skill selbst NICHT aendern (Entscheid Raphael).
7. COMMIT: cd /Volumes/daten/jans-ai-hub && git add wissen/wettbewerbs-dna && git commit (Meldung "wettbewerbs-dna: Volllast-Lauf 12.07. vollendet ...") && git push github main. Bei index.lock (NAS-Selfcommit-Cron): 2 Minuten warten, erneut versuchen; klappt es nicht, sicherstellen dass der Selfcommit die Dateien erfasst (git log) und das im Abschlussbericht vermerken.
8. ABSCHLUSS: kompakte Zusammenfassung (was vollendet, was weiterhin offen — insbesondere die zu klaerenden Rang-Diskrepanzen 2102/2206: Raphael sagt je «2. Platz», Juryberichte belegen 4. bzw. 3. Rang).