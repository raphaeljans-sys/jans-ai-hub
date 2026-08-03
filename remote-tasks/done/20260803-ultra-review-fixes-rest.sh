#!/bin/bash
# Remote-Task: ultra-review-fixes-rest — erzeugt 03.08.2026 aus claude.ai/code
# Zweitanlauf: der Lauf vom 01.08. scheiterte am Wochenlimit (Reset war 03.08. 12:00).
# Die Normen-Befunde des Ultra-Reviews sind inzwischen durch die Nachtlaeufe behoben —
# dieser Task setzt NUR die verbliebenen Befunde in wissen/immobilienbewertung um.
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
R="$1"

export DISPATCH_ALLOW_ANY_HOST=1
export DISPATCH_MAX_BUDGET_USD=10

cat > "$R/auftrag.md" <<'AUFTRAG'
KORREKTUR-AUFTRAG (Rest) aus dem Ultra-Code-Review vom 01.08.2026. Die Befunde in der KB
normen sind bereits behoben (durch Nachtlaeufe) — NICHTS in wissen/normen doppelt anfassen.
Offen sind vier Befunde in wissen/immobilienbewertung und einer in wissen/normen/wiki/
QUESTIONS.md. Vor jedem Fix den aktuellen Dateistand pruefen (Zeilennummern sind zirka).

AUSFUEHRUNGSREGELN
- Rule sync-kanonische-quelle beachten; danach wie ueblich committen/pushen.
- Jede KB-Aenderung bekommt einen datierten CHANGELOG-Eintrag (Rule wissens-bibliothekar).
- Ueberall echte Umlaute (Rule umlaute-konvention).
- Zum Schluss kurze Bilanz ausgeben (umgesetzt / nicht umgesetzt und warum).

BEFUND A — Widerspruchs-Flag beruht auf Ingest-Fehler (WICHTIGSTER PUNKT)
Datei wissen/immobilienbewertung/outputs/2026-07-31_ingest-cluster-C-bfs-werkmaterial.md,
Abschnitt «WIDERSPRUCHS-FLAG fuer den Hauptlauf» (~Z. 66-77). Das Flag erklaert die
KB-Aussage «neu Basis Okt-2025 = 100, April 2026 = 100.6» fuer unbelegt und dekretiert
«Bis ein Beleg vorliegt, gilt fuer JANS-Erzeugnisse Basis Okt 2020 = 100». Der Beleg
existiert in der KB: wiki/investorenmarkt-makro.md fuehrt die Umbasierung mit Primaerquelle
(BFS Baupreisindex April 2026, Web BFS/fachbau.ch 18.06.2026, Run 15; erneut bestaetigt
27.07.2026, Run 51, training/curriculum.md E7). Das Archiv der Ablage reicht nur bis
Datenstand 30.10.2025 und KANN die Umbasierung von Mitte 2026 nicht enthalten — Abwesenheit
im Archiv ist kein Widerspruch. Fix: Abschnitt umschreiben (kein Widerspruch; Archiv aelter
als Umbasierung; Beleg mit Quellen nennen), das Dekret ersatzlos streichen; fuer
JANS-Erzeugnisse gilt die aktuelle Basis Okt-2025 = 100 (juengster Stand April 2026 = 100.6,
+1.0 % YoY); die alte Reihe (Basis Okt 2020) bleibt als historisches Werkmaterial mit
Umrechnungshinweis (116.2 → 100) stehen. Pruefe danach, ob ein spaeterer Hauptlauf-Abschnitt
derselben Datei oder ein Wiki-Artikel das Dekret bereits uebernommen hat, und korrigiere
Folgestellen mit.

BEFUND B — Datei komplett transliteriert (Umlaut-Regel verletzt)
Dieselbe Datei (inzwischen ~1100 Zeilen) schreibt durchgehend ae/oe/ue («laeuft»,
«Zuerich», «Prueffrage») entgegen Rule umlaute-konvention (Vorrang-Klausel). Fix: Datei
sorgfaeltig auf echte Umlaute umschreiben — NICHT blind per sed (Woerter wie «Quelle»,
«neue», «Steuerung», «Bauern» enthalten legitime Folgen); Datei-/Pfadnamen und woertliche
Zitate aus Quelldokumenten unveraendert lassen. Sprengt die vollstaendige Konversion den
Budget-Rahmen: mindestens die Abschnitte mit Entscheiden/Flags/Merkhilfen konvertieren und
den Rest als offenen Punkt im KB-CHANGELOG festhalten. Pruefe auch Zeile ~58 in
wissen/immobilienbewertung/CLAUDE.md («echte Umlaute ae/oe/ue» — in sich widerspruechlich)
und stelle sie auf die Rule-konforme Aussage (echte Umlaute ä/ö/ü) um. Gleiches gilt fuer
die Schwesterdatei outputs/2026-07-31_ingest-cluster-E-projekte.md, falls sie ebenfalls
transliteriert ist — dann dort mindestens als offener Punkt vermerken.

BEFUND C — Selbstwiderspruch «Einzige belegte Zahl ... unbelegter Ausgangswert»
Dieselbe Cluster-C-Datei, ~Z. 129: der Trotte-Wert (CHF 3'907/m2 Geschossflaeche, 2019)
wird im selben Satz «belegt» genannt und als «unbelegter Ausgangswert» eingestuft; «einzige»
stimmt zudem nicht (CHF 600/m2 fuer 2008 steht wenige Zeilen darueber). Fix: umformulieren
(z.B. «Einzige konkrete Kennzahl dieser Ablage ... Quelle im Dokument nicht genannt, daher
als unbelegter Ausgangswert zu fuehren») und den zweiten Wert sauber einordnen.

BEFUND D — Veraenderungsraten passen nicht zur eigenen Tabelle
Dieselbe Datei, Abschnitt 1.2 Schweiz REG_01 (~Z. 82): «Total 115.2 (+0.1 % ggue. Apr 2024,
+0.5 % ggue. Okt 2023)»; aus der Tabelle in Abschnitt 1.1 ergibt sich +0.2 % (115.0→115.2)
bzw. +0.6 % (114.5→115.2). Moeglich, dass die Raten aus ungerundeten BFS-Werten der
Quell-xlsx stammen. Fix: wenn die xlsx (OneDrive, cc-t-05.05.06.xlsx) greifbar ist,
nachpruefen und den zutreffenden Wert setzen bzw. eine erklaerende Fussnote (ungerundete
Basis) anbringen; sonst nur Fussnote mit dem Rechenhinweis.

BEFUND E — Falsche Ordnerzuordnung in wissen/normen/wiki/QUESTIONS.md
Punkt «Bookkeeping-Widerspruch zusammenfuehren» (~Z. 111 ff.): PAVIDENSA und
09_Sanitaereinrichtung werden den «restlichen 06_Richtlinien-Bestaenden» zugerechnet.
Laut training/norm-inventar.md (~Z. 1163) liegt PAVIDENSA unter 04_Merkblaetter/Fugenlose
Bodenbelaege, 09_Sanitaereinrichtung ist ein eigener Schwesterordner. Fix: nur die
Formulierung praezisieren (Klammer aufloesen, richtige Pfade nennen), damit kein Lauf am
falschen Pfad sucht. KEINE weiteren Aenderungen in der normen-KB.

ABSCHLUSS
- immobilienbewertung/CHANGELOG.md: Eintrag 03.08.2026 «Korrekturen aus Ultra-Code-Review»
  (Befunde A-D); normen/CHANGELOG.md: Einzeiler fuer Befund E.
- Kurze Bilanz als Antwort ausgeben.
AUFTRAG

bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" "$(cat "$R/auftrag.md")" > "$R/antwort.md" 2> "$R/dispatch-stderr.log"
echo "Exit-Code dispatch-run: $?"
