#!/bin/bash
# Remote-Task: ultra-review-fixes — erzeugt 01.08.2026 aus claude.ai/code (Ultra-Review Commit 084d01d)
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
R="$1"

# MacBook ist nicht der Dispatch-Primaerhost — bewusste Ausnahme, Task ist stationsgebunden
export DISPATCH_ALLOW_ANY_HOST=1
export DISPATCH_MAX_BUDGET_USD=10

cat > "$R/auftrag.md" <<'AUFTRAG'
KORREKTUR-AUFTRAG aus dem Ultra-Code-Review vom 01.08.2026 (Cloud-Session, Commit 084d01d
«Normen Run 40 + Cluster-C-Ingest»). Alle Befunde sind am Repo verifiziert. Setze sie um.

AUSFUEHRUNGSREGELN
- Beachte Rule sync-kanonische-quelle: Aenderungen an der massgeblichen Kopie vornehmen
  (KB-Inhalte gehoeren zur NAS-Bibliothek), danach wie ueblich committen/pushen.
- Outputs/Run-Reports sind Protokolle: Korrekturen dort als datierten Nachtrag
  («Korrektur 01.08.2026: ...») anfuegen, nicht stillschweigend umschreiben.
  Lebende Dokumente (PROGRAMM.md, QUESTIONS.md, Werkdateien, Wiki) direkt editieren.
- Jede KB-Aenderung bekommt einen datierten CHANGELOG-Eintrag (Rule wissens-bibliothekar).
- Ueberall echte Umlaute (Rule umlaute-konvention).
- Befunde 1-3 ZUERST — sie muessen vor dem naechsten naechtlichen Normen-Lauf sitzen.
- Schreibe zum Schluss eine kurze Bilanz (umgesetzt / nicht umgesetzt und warum).

BEFUND 1 — QUESTIONS.md: Task-ID-Kollision N-R40-1..4 (P1!)
Datei wissen/normen/wiki/QUESTIONS.md. Die neuen Run-40-Auftraege (Zeilen ~18-34: GVZ zweite
Runde P1, SWKI zweite Runde P1, Grauton Tabelle 2 P3, Suva 67012 Fassungsstand P3) tragen
dieselben IDs wie vier aeltere, noch offene Auftraege in derselben Datei (Zeilen ~80-90,
Aufzugs-/VSA-Themen P3/P4). Zudem sind die neuen Eintraege nummerierte Listenpunkte statt
Checkboxen. Fix: neue Auftraege auf N-R40-5..8 umnummerieren (vorher pruefen, dass diese IDs
nirgends vergeben sind), in `- [ ]`-Checkbox-Form bringen, Prioritaeten beibehalten. Danach
im ganzen normen-Bestand (QUESTIONS.md, outputs/2026-07-31_normen-nacht-run40.md,
CHANGELOG.md, training/norm-inventar.md, REGISTER) nach Verweisen auf diese vier Auftraege
greppen und konsistent nachziehen (in Outputs als Korrektur-Nachtrag).

BEFUND 2 — QUESTIONS.md: erledigter Auftrag N-R21-1 nicht abgehakt
Zeile ~107: `- [ ] N-R21-1 (P2): SWKI VA 103-1 ... destillieren` steht offen, obwohl
CHANGELOG (Zeile ~31) und norm-inventar (~1267, [~] 260731) ihn als erfuellt fuehren.
Fix: auf `- [x]` setzen mit Vermerk «erledigt 31.07.2026, Run 40 →
destillate/swki-va103-01-2017.md»; die Binnenaussage «Inventarzeile ... unveraendert offen»
streichen/korrigieren. Sonst destilliert der Nachtlauf das Dokument erneut und
ueberschreibt die Run-40-Korrekturen.

BEFUND 3 — Sicherheitskritische Negations-Umkehr «muessen nicht brennbar sein»
wissen/normen/training/PROGRAMM.md Zeile ~187: «Dachbelag und Fluchtweg-Seite muessen nicht
brennbar sein» liest sich als «brauchen nicht brennbar zu sein» (= keine Anforderung).
Gemeint ist das Gegenteil (Nicht-brennbar-Signatur BKZ 6q.3, siehe Run-Report ~Z. 88):
sie MUESSEN NICHTBRENNBAR sein. Fix: Formulierung eindeutig machen, z.B. «Dachbelag und
Fluchtweg-Seite muessen nichtbrennbar sein (BKZ 6q.3)». Gleiche Mehrdeutigkeit in
wissen/normen/CHANGELOG.md Zeilen ~16-17 («... nicht brennbar sein muessen») beheben.
Pruefe zusaetzlich, ob das betroffene Destillat (Lignatec/Tabelle-5-Thema) die Aussage
eindeutig formuliert; falls nicht, dort ebenfalls praezisieren.

BEFUND 4 — Widerspruchs-Flag im Cluster-C-Ingest beruht auf Ingest-Fehler
wissen/immobilienbewertung/outputs/2026-07-31_ingest-cluster-C-bfs-werkmaterial.md,
Zeilen ~65-71. Das Flag erklaert die KB-Aussage «neu Basis Okt-2025 = 100, April 2026 =
100.6» fuer unbelegt und dekretiert «Bis ein Beleg vorliegt, gilt fuer JANS-Erzeugnisse
Basis Okt 2020 = 100». Der Beleg existiert aber in der KB: wiki/investorenmarkt-makro.md
fuehrt die Umbasierung mit Primaerquelle (BFS Baupreisindex April 2026, Web BFS/fachbau.ch
18.06.2026, Run 15; erneut bestaetigt 27.07.2026, Run 51, training/curriculum.md E7).
Das Archiv der Ablage reicht nur bis Datenstand 30.10.2025 und KANN die Umbasierung von
Mitte 2026 nicht enthalten — Abwesenheit im Archiv ist kein Widerspruch. Fix: Abschnitt
umschreiben: kein Widerspruch, Archiv aelter als Umbasierung, Beleg vorhanden (Quellen
nennen); das Dekret ersatzlos streichen; fuer JANS-Erzeugnisse gilt die aktuelle Basis
Okt-2025 = 100 (juengster Stand April 2026 = 100.6, +1.0 % YoY); die alte Reihe (Basis
Okt 2020) bleibt als historisches Werkmaterial mit Umrechnungshinweis (116.2 → 100) stehen.

BEFUND 5 — Cluster-C-Datei komplett transliteriert (Umlaut-Regel verletzt)
Dieselbe Datei (135 Zeilen) schreibt durchgehend ae/oe/ue («laeuft», «Zuerich»,
«Prueffrage») entgegen Rule umlaute-konvention (Vorrang-Klausel). Fix: ganze Datei
sorgfaeltig auf echte Umlaute umschreiben — NICHT blind per sed (Woerter wie «Quelle»,
«neue», «Steuerung» enthalten legitime ue/eu-Folgen). Datei- und Pfadnamen unveraendert
lassen. Pruefe bei der Gelegenheit auch die widerspruechliche Zeile 58 in
wissen/immobilienbewertung/CLAUDE.md («echte Umlaute ae/oe/ue») und korrigiere sie auf
die Rule-konforme Aussage (echte Umlaute ä/ö/ü).

BEFUND 6 — Fehlender CHANGELOG-Eintrag der KB immobilienbewertung
Der Cluster-C-Ingest vom 31.07. (135 Zeilen inkl. des o.g. Flags) hat keinen Eintrag in
wissen/immobilienbewertung/CHANGELOG.md hinterlassen. Fix: nachtragen (datiert 31.07.2026,
neueste zuoberst) plus separater Eintrag 01.08.2026 fuer die heutigen Korrekturen.

BEFUND 7 — Widerspruechliche 100-m2-Grenze im korrigierten SWKI-Geltungsbereich
outputs/2026-07-31_normen-nacht-run40.md Zeilen ~159-165 (gespiegelt in CHANGELOG ~31-33):
«Mittel- und Grossgaragen ab 100 m2» / «Kleingaragen unter 100 m2» kollidiert mit der
Typdefinition «bis 100 m2 / 100-1000 m2 / ueber 1000 m2» — exakt 100 m2 ist beides.
Fix: im Destillat destillate/swki-va103-01-2017.md und wenn greifbar im Original
(SWKI VA 103-1, OneDrive PL-02, Ziff. 0.1.2) nachschlagen, wo die Grenze wirklich liegt,
und alle Stellen harmonisieren (Outputs per Korrektur-Nachtrag). Ist das Original nicht
greifbar: Grenzfall als offene Frage mit neuer ID in QUESTIONS.md aufnehmen und beide
Stellen mit «Grenzfall exakt 100 m2 ungeklaert» annotieren. Nichts erfinden.

BEFUND 8 — Zwei Abschnitte «Ergebnis der neunten Runde» in PROGRAMM.md
Zeile ~149 (Run 39, 30.07.) und ~174 (Run 40, 31.07.) tragen denselben Titel. Der
Commit-Text nennt Run 40 die «neunte Lignatec-Runde»; Run 39 war eine Mess-/
Abdeckungsrunde. Fix: die Zaehlung anhand des Dateikontexts aufloesen (welcher Lauf ist
wirklich die neunte Runde?), einen der beiden Titel korrigieren, so dass beide eindeutig
sind, und die Korrektur im normen-CHANGELOG vermerken.

BEFUND 9 — Selbstwiderspruch «Einzige belegte Zahl ... unbelegter Ausgangswert»
Cluster-C-Datei Zeilen ~127-129: der Trotte-Wert (CHF 3'907/m2) wird im selben Satz
«belegt» und «unbelegt» genannt; «einzige» stimmt zudem nicht (CHF 600/m2 steht wenige
Zeilen darueber). Fix: umformulieren, z.B. «Einzige konkrete Kennzahl dieser Ablage ...
Quelle im Dokument nicht genannt, daher als unbelegter Ausgangswert zu fuehren»; den
zweiten Wert sauber einordnen.

BEFUND 10 — Falsche Ordnerzuordnung in QUESTIONS.md Punkt 6
Zeilen ~36-41: PAVIDENSA und 09_Sanitaereinrichtung werden den «restlichen
06_Richtlinien-Bestaenden» zugerechnet. Laut training/norm-inventar.md (~1163) liegt
PAVIDENSA unter 04_Merkblaetter/Fugenlose Bodenbelaege, 09_Sanitaereinrichtung ist ein
eigener Schwesterordner. Fix: Formulierung korrigieren, damit kein kuenftiger Lauf am
falschen Pfad sucht.

BEFUND 11 — Veraenderungsraten passen nicht zur eigenen Tabelle
Cluster-C-Datei Zeile ~82: «Total 115.2 (+0.1 % ggue. Apr 2024, +0.5 % ggue. Okt 2023)»;
aus der Tabelle in Abschnitt 1.1 ergibt sich +0.2 % (115.0→115.2) bzw. +0.6 %
(114.5→115.2). Moeglich, dass die Raten aus ungerundeten BFS-Werten der Quell-xlsx
stammen. Fix: wenn die xlsx (OneDrive, cc-t-05.05.06.xlsx) greifbar ist, nachpruefen und
den zutreffenden Wert setzen bzw. eine erklaerende Fussnote (ungerundete Basis) anbringen;
sonst nur Fussnote mit dem Rechenhinweis.

BEFUND 12 — Chronik-Ausnahme im Run-Report ueberdehnt formuliert
outputs/2026-07-31_normen-nacht-run40.md Zeilen ~27-31: Der Report behauptet, Chronik
260731b nehme «die stationsgeteilten Norm-Familien ausdruecklich» vom Weichen-Zwang aus.
Die Chronik (rules/betrieb-chronik.md ~525) listet aber nur konkrete Scripts
(cron-training-mini.sh u.a.) und die Klasse App-Scheduled-Tasks. Das Ergebnis (Weiche
nicht befolgt) war ueber die App-Scheduled-Task-Klasse trotzdem regelkonform. Fix:
datierter Korrektur-Nachtrag im Report, der die Begruendung auf die tatsaechliche
Ausnahme (App-Scheduled-Task; Stations-Split als sachliches Zusatzargument) engfuehrt,
damit keine Klassen-Ausnahme «Norm-Familien» als Praezedenz stehen bleibt.

ABSCHLUSS
- normen/CHANGELOG.md: Sammeleintrag 01.08.2026 «Korrekturen aus Ultra-Code-Review» mit
  den betroffenen Punkten.
- Kurze Bilanz als Antwort ausgeben (wird nach remote-tasks/results/ zurueckgespielt).
AUFTRAG

bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" "$(cat "$R/auftrag.md")" > "$R/antwort.md" 2> "$R/dispatch-stderr.log"
echo "Exit-Code dispatch-run: $?"
