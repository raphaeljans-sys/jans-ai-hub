# Konversations-Destillat 31.08.2026

**Abdeckung:** MacBook Pro 19 Sessions · Mac Mini 330 Sessions · Cloud/Dispatch 3 Dispatch-Protokolle, 0 remote-tasks — Fenster 26 h (30.08.2026 04:13 bis 31.08.2026 06:13 CEST). Beide Extrakte liefen sauber, `ssh mini` trug (rc 0).

**Ein Gespräch im Fenster, am Sonntagvormittag des 30.08.** Raphael hat von zu Hause aus über die Fernsteuerung auf dem Büro-MacBook die Nachtbilanz des Vollgas-Schubs hinterfragt. Daraus wurden zwei Entscheide: die leerlaufende Lane wurde gestoppt, und der Umbau der Laufzeitschicht wurde als Spec an den Mac Mini übergeben. Alles Übrige im Fenster ist Maschinerie ohne menschliche Eingabe.

Gegengezählt: 15 «RAPHAEL:»-Zeilen im MacBook-Digest, davon **fünf** von Raphael im Fenster getippt (Blöcke 01 und 02). Acht weitere stammen aus dem 29.08.-Teil derselben fortgesetzten Sitzung und sind im Destillat vom 30.08. bereits erfasst; zwei sind Fensterproben («Antworte nur mit: OK»). Im Mini-Digest 334 «RAPHAEL:»-Zeilen, davon **keine einzige** echte Eingabe: 325 sind wortgleiche Lane-Auftragstexte (FACHWISSEN 170, SYNOBSIS 155), drei sind der Nachtschicht-Prompt, sechs sind Bildeinblendungen aus den Destillat-Läufen selbst.

---

## 01 «warum laufen diese Prozesse nicht sauber» — die Lane lief sauber, der Treiber nicht (MacBook Pro, 30.08. ca. 08:0x bis 08:22)

**Kern und Entscheide.** Raphael wörtlich: «synobsis läuft noch, hat aber in 344 Runden nur 2 Dateien bewegt. Das sieht für mich ebenfalls nach Leerlauf aus, auch wenn der Radar es hat stehen lassen. Soll ich die Lane stoppen? warum laufen diese prozesse nicht sauber ich bin echt entäuscht von claude das das immer noch nicht funktioniert».

Nachgelesen statt vermutet: **jeder einzelne synobsis-Lauf endete mit `rc=0`**, dachte fünf bis 29 Turns, kostete 0.20 bis 1.36 USD und kam zum fachlich richtigen Ergebnis. Wörtlich aus dem Lauf um 08:17: «Es gibt nichts mehr zu bearbeiten. Dies ist Lauf 30+ mit identischem Nullstand.» Die Lane hat mehr als dreissigmal in Folge korrekt gearbeitet, korrekt gemeldet und um ihre eigene Pausierung gebeten.

Der Fehler lag im **Treiber**: seine Abbruchbedingung fragte nur, ob ein Lauf schnell und leer war. Ein Lauf, der 192 Sekunden nachdenkt, 1.36 USD kostet und sorgfältig begründet «hier ist nichts mehr offen», zählte damit als Erfolg und löste die nächste Runde aus. Die Lane wurde bei Runde 348 gestoppt (letzter Logeintrag `synobsis.log` 30.08. 08:17:19).

Zweiter Befund derselben Familie, im selben Zug gefunden: der Auftragstext der Lane FACHWISSEN behauptete über 70 Läufe lang «kein Destillat, keine Spec», während im selben Zeitraum beide Korpus-Specs entstanden und das Wiki wuchs. Ein Prompt, der eine Momentaufnahme festschreibt und endlos nachgefüttert wird, wird beim zweiten Zustellen zur Falschaussage.

Daraus entstand **Rule `auto-verbesserungen` 260830** (Treiber brechen nach gemessenem Liefer-Delta ab; ein wiederholt zugestellter Prompt schreibt nie einen Fortschrittsstand fest). Der Synergie-Lauf 23 hat am 30.08. 17:20 unabhängig nachgemessen, dass die Umsetzung real in `scripts/vollgas-schub.sh:110` steht und `fachwissen.prompt` mustergültig auf Zustands-Selbstermittlung umgestellt ist.

**Offene Punkte und Folgeaktionen.** Der Wirksamkeitsnachweis der Rule im Feld liegt vor: `synobsis` beendete sich am 30.08. um 08:22 mit dem vorgesehenen Abbruchsatz selbst (Radar 20:40). Zwei Sachfragen der Lane bleiben offen, siehe Block 06.

**Radar-relevant: ja, aber bereits geführt** — der Vorgang steht als Nachtrag 30.08. 06:5x im Register («ERLEDIGT: die Leerlauf-Schleife des Vollgas-Schubs ist abgestellt»), die Lehre ist als Rule verankert. Kein neuer Registereintrag nötig.

---

## 02 Laufzeitschicht-Umbau: Werkbank-Frage, Spec, Übergabe an den Mac Mini (MacBook Pro, 30.08. 08:2x bis 08:43)

**Kern und Entscheide.** Drei Fragen Raphaels in Folge: «wo soll ich diesen umbau am besten in auftrag geben? bei welchem gerät?», dann «warum auf dem revendo und nicht direkt auf dem mac mini?», dann «kannst du den spec nicht so ablegen dass der mac mini nach getaner arbeit beim abrufen der nas comits diesen selbständig installiert».

Die erste Empfehlung (Revendo als neutrale dritte Werkbank) wurde auf Raphaels Rückfrage hin **zurückgenommen**, und die Rücknahme war sachlich richtig: die Skripte liegen alle auf dem NAS und sind geteilt, wer sie editiert, ändert sie im selben Moment für alle drei Stationen. Es gibt also gar keine Isolation, egal wo gearbeitet wird. Gebraucht wurde nie eine neutrale Maschine, sondern eine **saubere Shell**, und die liefert SSH auf jeder Station. Für den Mini sprach dreierlei: die headless-Arbeit läuft tatsächlich dort, er ist Always-On, und er trägt mit 2.1.251 das gesündeste Binary im PATH (das Büro-MacBook hat die gewedgte Homebrew-Fassung 2.1.236).

**Ergebnis.** Spec `docs/konzepte/260830-Laufzeitschicht-Umbau/SPEC.md`, committet als `c1d3f127c`, dazu eine Pendenz vom Typ `prompt` in `sync-tasks/mac-mini/`; der Sync-Task-Runner auf dem Mini feuert alle 30 Minuten und führt solche Pendenzen über `dispatch-run.sh` als vollen headless-Lauf mit CLAUDE.md, Rules und Skills aus. Freigegeben sind die **Phasen 0 bis 2**: Befund aufnehmen, `scripts/lauf.sh` **neben** den bestehenden Skripten neu bauen, Verifikation durchmessen, Berichte ablegen. Alles rein additiv. Ausdrücklich nicht freigegeben: bestehende produktive Skripte ändern, launchd anfassen, Anmeldedateien schreiben, Binaries installieren. **Phase 3, das Umschalten der Laufzeitschicht, bleibt bei Raphael.**

**Offene Punkte und Folgeaktionen.** Die Pendenz wurde um 08:41 selbst wieder angehalten (`.angehalten`), und zwar aus dem Spec-Befund **B6** heraus: `dispatch-run.sh` Zeile 33 pinnt das Arbeitsverzeichnis auf `$HOME/Developer/jans-ai-hub`, also den SSD-Klon der jeweiligen Station, während Rule `sync-kanonische-quelle` geteilte Inhalte nur auf dem NAS-Pfad erlaubt. Eine Station, die im Klon arbeitet, würde genau den Befund reproduzieren, den sie untersuchen soll. Der Umbau ist damit aufgegleist, aber **nicht angelaufen**, und er wird es auch nicht, solange B6 offen ist.

**Radar-relevant: ja, aber bereits geführt** — Register-Nachtrag 30.08. 08:4x (Hub-Chef) nennt Spec, Befund B6 und die angehaltene Pendenz namentlich. Kein Doppeleintrag.

---

## 03 Die Sync-Divergenz als Folge derselben Ursache, und ein neuer Nebeneffekt (MacBook Pro 30.08. 08:43; eigene Messung 31.08. 06:2x)

**Kern.** Am Ende des Gesprächs wurde der Sync-Zustand rein lesend gemessen: das NAS-Repo selbst ist sauber, der Commit sitzt, es hängt kein Merge — blockiert ist allein der Abgleich mit GitHub. Gemessen wurden damals 203 Commits nur auf dem NAS gegen 115 nur auf GitHub, gemeinsamer Vorfahre `01204714a` vom 29.08. 22:04, inhaltlich 317 Dateien Unterschied. Die Ursache ist dieselbe wie in Block 02: zwei parallele Schreibwege, NAS-Pfad und SSD-Klon.

Im selben Zug wurde eine eigene frühere Meldung korrigiert: die Angabe, `architektur-fachwissen` sei von 2 auf 94 Artikel gewachsen, betraf **nur die NAS-Seite**. Die Klon-Seite trug einen anderen Stand. Das ist heute weiterhin messbar und für jede Zahl aus dieser KB entscheidend: die Lane FACHWISSEN meldet in ihren eigenen Läufen zuletzt 245 Wiki-Artikel, die NAS-Seite trägt heute um 06:2x **99**. Beide Zahlen sind richtig, sie beschreiben verschiedene Seiten derselben Divergenz. Wer eine davon ohne Seitenangabe zitiert, erzeugt einen Fehler.

**Eigene Messung heute, nativ per ssh auf der Synology (`/volume2/daten/jans-ai-hub`).** Divergenz um 06:2x **413 lokal voraus / 267 nicht integriert** (Verlauf: 203/115 am 30.08. 08:43 → 330/216 → 364/245 → 396/266 am 31.08. 02:50 → 413/267). Selfcommit-Versuch **504**, heute allein **118 Versuche**. Arbeitsbaum sauber, kein `MERGE_HEAD`, kein `rebase-merge`, keine `index.lock`, `git diff --diff-filter=U` null Dateien — das Script setzt weiterhin vollständig zurück statt halb aufzulösen.

**Neuer Nebeneffekt, sauber belegt: der scheiternde Rebase schreibt Arbeitsbaum-Dateien neu, und damit ist die mtime auf dem NAS keine Datumsquelle mehr.** Aufgefallen an dieser Ablage selbst: `logbuch/konversationen/260830-konversationen.md` trägt auf der Synology die mtime **31.08. 06:15:05**, obwohl die Datei am 30.08. 06:30 committet wurde (`fd1e5f248`) und ihr Inhalt unverändert das Fenster 29./30.08. beschreibt. Der Zeitstempel deckt sich auf die Sekunde mit der Logzeile `2026-08-31T06:15:05 rebase fehlgeschlagen (413/267) — versuche Merge`. Alle 39 übrigen Dateien im selben Ordner tragen unverändert ihre Entstehungs-mtime; betroffen ist also, was in den Konfliktbereich des jeweiligen Rebase-Versuchs fällt. **Praktische Folge für jeden Lauf:** Rule `auto-verbesserungen` 260730b verlangt für eine Umdatierung einen Beleg statt einer Hypothese — solange dieser Zustand anhält, ist die NAS-mtime kein solcher Beleg, und es gilt der native Synology-Log beziehungsweise `git log`.

**Radar-relevant: ja** — die Zahl selbst als Nachtrag an der bestehenden P1-Zeile, der mtime-Befund neu (Register-Ergänzungen unten).

---

## 04 Was die Maschinerie im Fenster gearbeitet hat (Mac Mini, 30.08. 04:13 bis 31.08. 06:13)

**Zahlen, gemessen am Lauf-Journal `logbuch/laeufe/`:** 327 headless-Läufe, **alle mit rc=0**, zusammen **USD 380.64**. Davon 169 Läufe der Lane FACHWISSEN (USD 324.08), 155 der Lane SYNOBSIS (USD 48.75), 3 Dispatch-Läufe (USD 7.82). Auf dem MacBook Pro kein einziger headless-Lauf im Fenster. Auf der Synology 282 Commits im Fenster.

**FACHWISSEN — die einzige Lane mit Ertrag.** Themenschwerpunkt Korpus `archiv-fachwissen`, Sektionen `01_Staedtebau`, `01_Tragwerk` und `02_Gestalt_Kulturverstaendnis`: Personen- und Werkartikel (Sottsass und Memphis, Mackintosh, Le Corbusier und Perriand, Christian Menn, Bieler Holzbrücken-Werkregister, Ähnlichkeitsgesetz und Modellstatik), Städtebau (Gartenstadtbewegung, Collage City, Sieverts «Zwischenstadt», Berlin-Strategiewechsel Schinkel/Lenné/Hobrecht), zuletzt am 31.08. um 06:11 ein Artikel zum Preisgerichtsbericht ZÜRICHFORUM (Wettbewerb Kongresszentrum Zürich, Vorsitz Peter Zumthor, 105 Seiten). Ein brauchbarer Werkzeugfund nebenbei: das Read-Werkzeug liest auch Scans, die im Inventar als «textlos, OCR nötig» markiert waren, ohne System-`poppler` — vier zuvor blockierte Positionen wurden dadurch frei. Die Lane hat ausserdem in jedem Lauf ausgewiesen, dass sie keine gesperrten Positionen (Verträge, Personaldossiers, Adress- und Honorardaten) angefasst hat, wie es Rule `auto-verbesserungen` 260823 verlangt. Ein Lauf überschrieb versehentlich einen bestehenden Registereintrag statt anzuhängen, bemerkte es über die eigene `--numstat`-Messung und machte es im selben Lauf rückgängig.

**SYNOBSIS — 155 Läufe, null Ertrag.** Die eigentliche Sacharbeit war bereits am 29.08. erledigt. Jeder Lauf im Fenster bestätigte den Nullstand erneut und wiederholte die Empfehlung, den Dispatcher zu pausieren. Genau dieser Befund führte im Gespräch (Block 01) zum Stopp und zur Rule 260830.

**Nachtschicht Mac Mini, drei Zyklen.** (1) Fristen-Radar mit P1-Nachtrag zur Sync-Divergenz. (2) 13:30-Slot: KB `energie`, Destillat `rilumi-minergie-luftdichtheit-n50` von der veralteten Ausgabe 2022.1 (Symbol qE50) auf die gültige 2026.1 (Symbol qa50, SIA 180.206 «Verfahren 3») nachgeführt, samt Bauherren-FAQ F63; die Zahlenwerte selbst blieben unverändert. (3) 23:4x: Zyklus **bewusst ohne Änderung geschlossen** — alle sechs Standardprioritäten waren durch parallele Loops abgedeckt, und ein weiterer Schreibzugriff hätte die Konfliktfläche der Divergenz nur vergrössert. Budget rund 1.3 von 5 USD.

**Radar-relevant: nein** für den Inhalt (rein Hub-intern, kein Projekt, kein Kunde, kein Betrag mit Aussenwirkung). Die Kostenzahl gehört in die Kontingent-Betrachtung, siehe Block 05.

---

## 05 NEU — Das Lauf-Gate weist den Schub seit heute 01:00 ab; die Frist läuft, das Kontingent verfällt

**Kern, eigene Messung an `logbuch/speicher/gate-Macmini.log` und `gate-Macbookpro.log`.** Seit **31.08. 01:00:24** weist das Lauf-Gate die Lane `schub-fachwissen` mit der Begründung «Wochenkontingent zu 85.x % aufgebraucht (Drosselschwelle erreicht)» ab. Bis 06:18 sind das **201 Abweisungen** auf dem Mac Mini, dazu zwei für `weiche-nachtschicht`; auf dem MacBook Pro drei weitere (`normen-training-nacht` 01:28, `weiche-nachtschicht` 02:30 und 05:30). Am 30.08. gab es im ganzen Fenster **null** Abweisungen. Der Treiber versucht es unverändert etwa alle 95 Sekunden erneut; nur ein einziger Lauf kam seit 01:00 durch (Runde 223 um 06:04:52, rc=0).

**Warum das mehr ist als Buchhaltung.** Der Radar hat um 01:06 gemessen, dass rund 25 Mio Token heute um 12:00 verfallen, wenn sie niemand einsetzt, und daraus richtig geschlossen, dass Stilllegen zehn Stunden vor Fristende der falsche Zug wäre. Das Lauf-Gate blockiert seit 01:00 aus derselben Zahl heraus **genau diese Verwendung**. Beide Mechanismen arbeiten korrekt und ziehen gegeneinander; das Ergebnis ist, dass der Schub seit elf Stunden faktisch beendet ist, ohne dass jemand ihn beendet hätte, und dass der Rest des Wochenkontingents ungenutzt verfällt. `STOP-SCHUB` ist nicht gesetzt.

**Zweitens, gleiche Familie wie Rule 260830.** Die Rule verlangt, dass ein Treiber nach gemessenem Ertrag abbricht und die Selbstauskunft seines Laufs hört. Sie deckt den **leeren** Lauf ab, nicht den **abgewiesenen**: eine Gate-Abweisung ist kein Lauf, erzeugt kein Delta und keinen Abbruchsatz, und läuft deshalb an beiden Abbruchbedingungen vorbei. Das kostet kein Kontingent (das Gate blockiert vor dem Modellaufruf), aber es ist eine drehende Schleife, die von aussen wie Betrieb aussieht.

**Offene Punkte und Folgeaktionen.** Bis heute 11:00 (Ende des Schub-Auftrags) und 12:00 (Kontingent-Reset) ist zu entscheiden, ob die Drosselschwelle für die verbleibenden Stunden dieses befristeten Auftrags angehoben wird oder der Schub sauber beendet wird. Beides ist Raphaels Entscheid; Claude hat weder das Gate verstellt noch `STOP-SCHUB` gesetzt.

**Radar-relevant: ja, mit Tagesfrist** — neue Registerzeile unten.

---

## 06 Offene Rückfragen an Raphael und Routine

**Zwei Sachfragen der Lane SYNOBSIS** (KB `architekten-synobsis`), nicht über Websuche lösbar und deshalb an Raphael: wer **«Sik_Miroslav»** und **«Sutter_Annabarbara»** im JANS-Bürokontext sind. Sie blockieren die letzten Katalog-Positionen. Zusätzlich hängen vier **Katalog-Kollisionen** an einer NAS-Ordner-Zusammenführung, die als Freigabesache bei Raphael liegt, sowie ein produktiver `--reindex`-Lauf. Neu ins Register aufgenommen, weil die Lane die Punkte nur in ihren Laufberichten geführt hat und diese mit dem Stopp der Lane nicht mehr gelesen werden.

**Eine Frage aus dem Twin-Strang** (nicht radar-relevant, Sache der KB): Das Mail-Training vom 31.08. 03:50 hat die englische Anrede an den Webprogrammierer am 10.02.2026 als **«Dear Hlep,»** mit «Kind regards» belegt, sechs Tage vor dem Erstbeleg, den Rule `anrede-kontakte` für «Hi Hleb» nennt. Die Rule ist damit unvollständig, nicht falsch; vorgelegt als `wissen/twin/wiki/QUESTIONS.md` 260831 #1. Der Wortlaut der Rule wurde nicht selbst geändert.

**Routine-Läufe im Fenster, ohne Besonderheiten:** Logbuch-Radar (30.08. 07:06 und 20:43, 31.08. 01:06), Hub-Chef mit Tagesbriefing um 09:01 an rj@, Vollgas-Frühwarnung 07:23, Wissens-Chef Run 48 (12 Agenten, 0 Fehler), Synergie-Lauf 23, Tenant-Hygiene 20:10, Verzugscheck bexio, Twin-Fidelity 30.08. und 31.08. 05:58, Twin-Mail-Training Batch 110, Wettbewerbs-dna Lauf 05, Konversations-Log 30.08. Alle mit Ergebnis, keine neuen operativen Befunde ausser den oben genannten. Der `normen-training-nacht`-Lauf und zwei Nachtschicht-Slots fielen der Drosselschwelle zum Opfer (Block 05).

---

## Register-Ergänzungen aus diesem Destillat

1. **NEU** — Lauf-Gate weist den Schub seit 01:00 ab, 201 Abweisungen, Kontingent verfällt um 12:00 (Block 05).
2. **NEU** — Zwei offene Sachfragen und die Freigabesache der KB `architekten-synobsis` (Block 06).
3. **NACHTRAG zur P1-Sync-Zeile** — Divergenz 413/267, Versuch 504, und der Befund, dass der scheiternde Rebase Arbeitsbaum-Dateien neu schreibt und die NAS-mtime damit als Datumsquelle ausfällt (Block 03).
