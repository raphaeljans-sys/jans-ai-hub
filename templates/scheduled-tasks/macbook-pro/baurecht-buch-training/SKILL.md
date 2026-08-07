---
name: baurecht-buch-training
description: Buch-Training Baurecht — FESTIGUNGSMODUS woechentlich (Mo 23:40, Nachtfenster). NEU 30.07.2026 (Auftrag Raphael): PRIORITAET (d) Umgebungs-/Gestaltungsrecht vertiefen + zweite Korpus-Quelle einarbeiten (Reglemente-Ordner 2414 Thalwil, 243 Dateien, Fahrplan training/KORPUS-QUEUE-thalwil-reglemente.md, Batches T1-T8). Daneben weiter (a) beschaffbare Luecken, (b) Fassungsstand kantonaler UND kommunaler Erlasse, (c) Stichproben-Re-Verifikation.
---

Fuehre EINEN Lauf des JANS-Baurecht-Harness im FESTIGUNGSMODUS aus (unbeaufsichtigt, woechentlich im Nachtfenster).

REPO bestimmen: Wenn /Volumes/daten/jans-ai-hub existiert, nutze diesen Pfad als REPO; sonst /Users/raphaeljans/Developer/jans-ai-hub. Wenn keiner existiert, sauber abbrechen und melden.

DATUM MESSEN, NIE ABLEITEN: einmal `date "+%Y-%m-%d %H:%M %Z"` ausfuehren und dieses Datum fuer Dateinamen, Frontmatter und Eintraege verwenden (Rule 260730b). Nie aus einem Dateiinhalt oder einer Systemmeldung auf «heute» schliessen.

RUN-NUMMER: unmittelbar VOR dem Schreiben gegen die juengste Datei in `wissen/baurecht/outputs/` pruefen (`ls outputs/ | sort`), NICHT gegen den PROGRAMM-Tracker allein — am 30.07.2026 entstand so eine Nummernkollision (Run 70 lief vor Run 69). Zusaetzlich per `ps` pruefen, ob derselbe Loop schon laeuft.

STAND: Alle 23 Kapitel des Standardwerks «Zuercher Planungs- und Baurecht, Band 1+2» (Fritzsche/Boesch/Wipf/Kunz, 6. Aufl. 2019) sind erschlossen. Seit Run 71 traegt jeder Wiki-Artikel ein `verifiziert`-Feld; die Erst-Verifikations-Liste ist abgearbeitet.

1. Stand lesen: $REPO/wissen/baurecht/training/PROGRAMM.md (verbindlich, inkl. aller Leitplanken — besonders «Grep-Toleranz bei Buchstaben-Paragraphen», «Fassungsstand kantonaler Erlasse» und NEU seit Run 71 «Verweisnormen ZWEITEILIG pruefen»), training/KORPUS-QUEUE-thalwil-reglemente.md, wiki/QUESTIONS.md, letzter outputs/-Report.

2. PRIORITAETEN (pro Lauf 1-2 Bloecke, nicht mehr):

   (d) **REGELBLOCK, solange die Queue offen ist — Umgebungs-/Gestaltungsrecht + Thalwil-Korpus.**
       Auftrag Raphael 30.07.2026. Arbeite den naechsten offenen Batch aus
       `training/KORPUS-QUEUE-thalwil-reglemente.md` ab (T1 → T8, ein Batch pro Lauf).
       Quelle liegt auf dem MAC MINI unter «…/AR - 01 Projekte/2414 THALWIL/06 Reglemente»
       (OneDrive); vom MacBook via `ssh mini` lesbar — Pfad in der Queue-Datei.
       Beachte dort zwingend: die Abgrenzung (nur Verallgemeinerbares in die KB,
       Projektgebundenes bleibt im Projektordner, Rule projekt-ablage-stand), den
       ECHO-SCHUTZ (Raphaels eigene Zusammenfassungen = Gold; die datierten
       Claude-Factsheets sind PRUEFMATERIAL, nie Quelle) und die Arbeitsregeln 1-5.
       Zielthemen, in denen der Harness sattelfest werden soll (Liste im PROGRAMM,
       Abschnitt «PRIORITAET (d)»): Vorgarten/Wegabstand, Gruenflaechenziffer,
       Pflichtbaeume, Einfriedungen/Gartenmauern/Sichtschutz, negative Vorwirkung der
       revBZO, Einordnung § 238 Abs. 1 PBG, Besondere Gebaeude, Naeherbaurecht, StrAV.
       Die zwei groessten belegten Luecken zuerst: es fehlen der **revBZO-Volltext**
       (KB hat nur die alte BZO Thalwil) und die **StrAV** als amtlicher Volltext.

   (a) Beschaffbare Luecken aus QUESTIONS.md schliessen. Aktuell offen: Nachfolgeerlass der
       per 01.01.2022 aufgehobenen KGSchV (LS 711.11); Teilverbindlichkeit SIA 380/1 am
       geltenden BBV-I-Anhang; die zwei EG-GSchG-Zuordnungen (§ 15 Abs. 3 40-m-Nebenanlagen,
       § 36 Abs. 2 Grundbuch-Anmerkung), beide am WsG- UND WsV-Volltext erfolglos gesucht.

   (b) Fassungsstand-Check — neu ausdruecklich fuer KANTONALE **und KOMMUNALE** Erlasse.
       Je Lauf 1-2 Erlasse auf zhlex bzw. beim kommunalen Publikationsorgan pruefen:
       gilt er noch, welcher Nachtrag ist die letzte materielle Fassung, wurde
       durchnummeriert. Bei Verweisnormen IMMER beide Ebenen (Verweisnorm UND verwiesene
       Anhangsziffer) — Run 71 fand die BBV I unveraendert in Kraft, waehrend die
       verwiesene Anhang-Ziffer 1.2/1.21 seit 1.9.2022 aufgehoben war und damit die
       kantonale Verbindlichkeit der SIA 181 ersatzlos wegfiel.

   (c) Stichproben-Re-Verifikation (Modell D, adversarial) nach aeltestem `verifiziert`-Datum:
       `grep -h "^verifiziert:" wiki/*.md | sort`. Nur noch als Fuellblock, wenn (d) klein ausfaellt.

3. Befunde einarbeiten: Destillate unter buecher/ und Wiki-Artikel korrigieren/schaerfen,
   [[backlinks]] + `verifiziert`/`last_updated` pflegen, wiki/QUESTIONS.md nachfuehren.
   **Register-Sweep-Pflicht**: nach jeder Korrektur `grep -rn` ueber Wiki, Destillat,
   buecher/INDEX.md, wiki/INDEX.md, training/curriculum.md, training/drills.md — derselbe
   Fakt steht an 5-6 Fundorten.

4. ANWENDUNG: mindestens 2 neue Drill-Karten in training/drills.md, Schwerpunkt auf den heute
   geprueften Stellen. Bei (d)-Batches je eine Karte am realen Fall Bohlweg 3 ausrichten.

5. Register: curriculum.md, buecher/INDEX.md, KORPUS-QUEUE (Batch-Status auf «erledigt»),
   PROGRAMM.md (Tracker), CHANGELOG.md (neueste zuoberst). Lern-Report:
   wissen/baurecht/outputs/JJJJ-MM-TT_buch-runN.md — was geprueft, Verdikte, Korrekturen, offen.

6. Sichern: NIE `git` ueber den SMB-Mount gegen das NAS-Repo. Stattdessen
   `bash $REPO/scripts/nas-commit-now.sh "<Message>"` (nativer Committer auf der Synology).
   Danach im Ziel verifizieren, nicht nur den rc auswerten.

ENDBEDINGUNG — bewusst streng: Melde «Rueckstand abgebaut» ERST, wenn (a) alle beschaffbaren
Luecken geschlossen sind, (b) der Fassungsstand ALLER zitierten kantonalen und kommunalen
Erlasse geprueft ist UND (d) die Korpus-Queue T1-T8 vollstaendig abgearbeitet ist. Ein Flag
«nicht am Gesetzeswortlaut belegbar» ist selten harmlos — er verdeckt oft einen Fehler.
Pruefe den Flag-Bestand jedes Mal gegen den aktuellen raw-Bestand, nie gegen den letzten Report.

Strikt: Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, kein ß, Quellenpflicht mit Band/Seite/§ bzw.
amtlicher Fundstelle, nichts erfinden. Genau EIN Lauf pro Aufruf.

## Modell-Politik (Minimum Viable Model, Rule modellwahl-routine; geschaerft 07.08.2026 nach Buch-Run 72)

DELEGIERBAR an einen Subagenten mit `model: haiku`, aber nur als EIN zusammenhaengender Block,
nie als viele kleine Auftraege (der Subagent laedt den Grundkontext neu, gemessen ~78'000 Token —
bei einem Zweizeiler ist die direkte Ausfuehrung guenstiger):
- Material beschaffen und aufbereiten: Dateien kopieren, `pdftotext`/`pdftoppm`, Seiten rendern
- BESTEHENDE Auswertungsscripts ausfuehren und das Ergebnis strukturiert zurueckgeben
- mechanischer Wortlaut-Abgleich einer VORGEGEBENEN Fundstellenliste gegen einen `raw/`-Volltext
- Register-Sweeps (`grep -rn` ueber die 5-6 Fundorte) als reine Trefferliste

`model: sonnet` nur, wenn die Methode bereits steht und lediglich Text zu verdichten ist —
typischer Fall Batch T5 (Einzelthemen artikelweise gegen bestehende Wiki-Artikel lesen).

NICHT DELEGIERT, bleibt im Hauptkontext:
- **Fassungsstand.** Gilt der Erlass noch, in welcher Fassung, und ist die Vorlage inzwischen
  ueberholt? Run 72: die Synopse war elf Monate alt und die Revision zwischenzeitlich an der Urne
  festgesetzt — der wertvollste Befund des Laufs stand in keinem Auftrag.
- **Verdikte und Artikeltext.** Ob ein Befund in die KB darf, Statushebungen, Flag-Bewertung und
  das Schreiben/Schaerfen der Wiki-Artikel. Der Artikel IST das Urteil, nicht seine Formatierung.
  (Die erste Fassung dieses Blocks delegierte «Artikel kompilieren» — das war falsch.)
- **Die Reaktion auf ein Null- oder Negativergebnis.** «Nichts gefunden» ist zuerst eine Aussage
  ueber das eigene Werkzeug, nicht ueber die Quelle. Run 72: das erste Extraktions-Script fand
  null Markierungen, weil es den falschen PDF-Operator suchte; das Ergebnis war sauber und falsch.
- **Erstmalige Methodenentwicklung.** Wo der Auswertungsweg erst gebaut wird, gibt es nichts zu
  delegieren; erst der zweite Lauf mit derselben Methode ist Haiku-Arbeit.
- **Jede Plausibilitaetspruefung eines eigenen Zwischenergebnisses.** Run 72 lieferte zweimal ein
  plausibles, falsches Zwischenergebnis (Spaltenverwechslung bei der Synopse; eine visuell falsch
  gelesene Seite). Beide Male hat erst die Gegenmessung entschieden, nicht das Hinsehen.

Gleiches Ergebnis-Format und gleiche Qualitaet wie bisher.
