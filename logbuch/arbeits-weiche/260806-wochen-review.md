# Arbeits-Weiche: Wochen-Review 06.08.2026

Auftrag Raphael 30.07.2026: nach einer Woche prüfen, ob die Weiche in der Anwendung
gelungen ist, rapportieren und Verbesserungsvorschläge aus der Erfahrung machen.

Betrachtungszeitraum: 30.07.2026 bis 06.08.2026 05:30 CEST.
Quellen: `logbuch/arbeits-weiche/*.jsonl` (8 Journale, 42 Zeilen),
`logbuch/laeufe/*.jsonl` (31 Läufe des Nachtschicht-Loops),
`scripts/arbeits-weiche.sh`, `scripts/nachtschicht-run.sh`,
`~/Library/LaunchAgents/ch.jans.nachtschicht.plist`.

## Fazit in einem Satz

**Teilweise gelungen.** Die Weiche arbeitet technisch fehlerfrei, hat aber in einer
ganzen Woche keinen einzigen abweichenden Entscheid getroffen, und sie war blind
gegenüber der einzigen Ressource, die in dieser Woche tatsächlich knapp wurde.

## 1. Zahlen

### Entscheide

| Kategorie | Anzahl |
|---|---|
| Journalzeilen gesamt | 42 |
| davon Bau- und Testeinträge (30.07. sowie 31.07. bis 01:28) | 16 |
| **Echte Betriebs-Entscheide** (31.07. 02:30 bis 06.08. 05:30) | **26** |

Die 16 Testeinträge sind sauber als solche erkennbar (`test-normalfall`,
`test-mini-voll`, `test-beide-voll`, `e2e-test`, `e2e-test2`, `testlauf`,
`sprechender-name`, `messung-takt-a/b/c`, zwei Zeilen mit dem Namen `--takt` aus dem
Versions-Schiefstand vom 31.07., zwei Probeläufe `nachtschicht` und zwei
`normen-training-nacht` vom MacBook aus). Sie sind hier durchgehend getrennt geführt.

### Verteilung der 26 echten Entscheide

| Ziel | Anzahl | Anteil |
|---|---|---|
| mini | 26 | 100 % |
| macbook | 0 | 0 % |
| queue | 0 | 0 % |
| keine | 0 | 0 % |

Alle 26 stammen von **einem einzigen Aufrufer**: `nachtschicht-run.sh`, im Takt-Modus,
viermal täglich (02:30, 05:30, 13:30, 23:30, entsprechend den vier Slots in
`ch.jans.nachtschicht.plist`). Eingabestation immer der Mini.

### Gemessene Werte

| Station | min | Median | max | Schwelle | Abstand zur Schwelle (Median) |
|---|---|---|---|---|---|
| Mini frei | 6.0 GB | 9.4 GB | 17.4 GB | 4 GB | +5.4 GB |
| MacBook frei | 2.6 GB | 3.7 GB | 5.9 GB | 3 GB | +0.7 GB |

Der Mini kam der Abweisungsschwelle in keinem einzigen Entscheid nahe; der kleinste
gemessene Wert lag 2.0 GB darüber. Der freie Speicher des Mini ist im Wochenverlauf
zudem gestiegen (8.5 bis 9.5 GB am 31.07., 15.6 bis 17.4 GB am 05./06.08.).

### Stimmen die Gründe mit den Messwerten überein?

**Ja, in allen 26 Fällen.** Jeder Eintrag trägt `mini_gb` >= 4 und `mini_druck` <= 2
und begründet folgerichtig mit `mini-frei`. Es gibt **keinen Fehlentscheid**:
kein Auftrag wurde aufs MacBook geleitet, während Raphael daran arbeitete
(der Fall trat nie ein), und keine Queue-Parkung blieb liegen
(es wurde nie eine angelegt; `sync-tasks/` enthält keinen einzigen `weiche-*`-Task).

### Liefer-Delta: was kam aus den 26 Entscheiden heraus?

Die Weiche entschied 26-mal auf den Mini. Zugeordnet über den Zeitstempel ergaben
diese 26 Entscheide im Lauf-Journal:

| Ergebnis | Anzahl | Merkmale |
|---|---|---|
| rc=0, echte Arbeit | 19 (73 %) | 276 bis 1019 s Laufzeit, 2.37 bis 4.95 USD, 30 bis 77 Turns |
| rc=1, Sofortabbruch | 7 (27 %) | 6 bis 9 s, 0.00 USD, 1 Turn |

Die 19 erfolgreichen Läufe zeigen plausible Dauern und Kosten, also echtes
Liefer-Delta. Die sieben Abbrüche liegen alle in einem zusammenhängenden Fenster
vom 01.08. 23:30 bis 03.08. 05:30 und tragen alle denselben Grund:

> You've hit your weekly limit · resets Aug 3 at 12pm (Europe/Zurich)

Nicht der Speicher war knapp, sondern das **Wochenkontingent**. Der Mini hatte in
genau diesen sieben Momenten zwischen 8.8 und 9.9 GB frei; die Weiche meldete
korrekt `mini-frei` und feuerte einen Lauf, der sechs Sekunden später am
Kontingent scheiterte. Am 03.08. um 12:00 lief das Kontingent zurück, der
13:30-Slot desselben Tages lieferte wieder normal.

### Die Weiche im Lauf-Journal

`weiche-*` erscheint dort nur dreimal, alle vom 30.07. aus den Bau-Tests
(einmal rc=1 wegen abgelaufener OAuth-Session, einmal rc=0 in 9 s mit dem
Ergebnis `FUNKTIONIERT`). Im Betrieb taucht kein einziger `weiche-*`-Lauf auf.
Grund: Die Weiche wird ausschliesslich im **Takt-Modus** gerufen, und der führt
bewusst nichts aus. Der Ausführungsmodus samt SSH-Fernstart und Queue-Parkung
ist seit dem Bau **nie produktiv gelaufen**.

## 2. Was gelungen ist

- **Kein einziger Fehlentscheid** in 26 Entscheiden. Begründung und Messwert
  stimmen lückenlos überein.
- **Die Schutzwirkung greift.** Das MacBook wurde nie belastet. Das war das
  ausdrückliche Ziel der asymmetrischen Politik, und es ist erreicht, wenn auch
  ohne Bewährungsprobe.
- **Das Journal taugt.** Eine Zeile je Entscheid, maschinenlesbar, mit allen vier
  Messwerten. Diese Auswertung war ohne Nacharbeit möglich, das ist die
  eigentliche Leistung der Bauentscheidung vom 30.07.
- **Der Takt-Modus war die richtige Ergänzung** (31.07.). Ohne ihn hätte jeder
  abgewiesene Takt einen Queue-Task erzeugt, die sich dupliziert hätten.
- **Die Versions-Schiefstand-Härtung hat sich bezahlt gemacht.** Die zwei
  Journalzeilen mit dem Namen `--takt` vom 31.07. 01:18 dokumentieren genau den
  Beinahe-Fehler, gegen den die Weiche seither mit einem harten Fehler schützt.

## 3. Was nicht gelungen ist

### 3.1 Die Weiche hat nie gestellt

100 % der Entscheide gingen auf den Default. Eine Weiche, die eine Woche lang nie
umlegt, hat keinen messbaren Nutzen erbracht, sondern nur bestätigt, was ohne sie
ebenso passiert wäre. Das ist kein Baufehler, sondern ein Befund über die
Wirklichkeit: **der Mini ist nicht knapp.** Der Aushilfsfall, für den die halbe
Komplexität der Weiche existiert (LAN-Erreichbarkeit, Netzteil, Idle-Zeit,
Arbeitszeitfenster), ist in einer Woche kein einziges Mal eingetreten und wird
bei diesem Speicherprofil auch künftig kaum eintreten.

### 3.2 Sie misst die falsche knappe Ressource

Das ist der wichtigste Befund dieses Reviews. Knapp war in dieser Woche nicht der
Speicher, sondern das Wochenkontingent, und zwar 30 Stunden lang. Die Weiche kennt
diese Dimension nicht. Sie meldete sieben Mal Bereitschaft in einen Zustand hinein,
in dem kein Lauf möglich war.

Ehrlich einzuordnen: Während der Kontingentsperre hätte **auch eine bessere Weiche
keine Arbeit retten können**, weil beide Stationen am selben Konto hängen. Der
Gewinn liegt nicht in geretteter Arbeit, sondern in der Diagnose. Das Nachtschicht-Log
schrieb sieben Mal `Zyklus gestartet` und verschwieg den wahren Grund des Ausfalls;
er stand nur im `result_tail` des Lauf-Journals. Eine Weiche, die das Kontingent
kennt, hätte sieben Mal `keine, Kontingent erschöpft bis 03.08. 12:00` protokolliert.
Das ist der Unterschied zwischen einem stillen und einem erklärten Ausfall.

Das Datum liegt bereit: `connectors/claude-usage.mjs` existiert seit 20.07.2026,
und die Kontingent-Aufsicht (`vollgas-fruehwarnung`, `vollgas-chef-radar`) wertet
es bereits aus. Die Weiche fragt es nur nicht.

### 3.3 52 nutzlose SSH-Runden

Das Script misst `MB_GB` und `MB_DRUCK` **unbedingt** (Zeilen 110 und 111), also vor
dem Entscheid, ob der Mini überhaupt bereit ist. Bei 26 Entscheiden mit dem Ergebnis
`mini` sind das 52 SSH-Aufrufe ans MacBook, die das Ergebnis in keinem einzigen Fall
beeinflusst haben. Jeder trägt ein 6-Sekunden-Timeout und damit einen Fehlerpfad in
eine Entscheidung hinein, die im Normalfall rein lokal beantwortbar wäre.

### 3.4 Entscheid und Lauf sind nicht verknüpfbar

`nachtschicht-run.sh` fragt die Weiche unter dem Namen `nachtschicht`, startet den
Lauf danach aber unter dem Loop-Namen `dispatch-versuch1`. Die beiden Journale
teilen keinen Schlüssel; die Zuordnung von 26 Entscheiden zu 31 Läufen in diesem
Review musste über Zeitstempel von Hand erfolgen. Für eine wiederkehrende
Auswertung ist das zu brüchig.

Als Beifang, ausserhalb des Weichen-Auftrags: Der produktive Nachtschicht-Loop
läuft im Journal weiterhin unter dem Versuchsnamen `dispatch-versuch1`. Das
verfälscht jede Zuordnung über den Namen, wovor die Rule `rollen-taxonomie`
ausdrücklich warnt.

### 3.5 Die MacBook-Schwelle sitzt genau auf dem Normalzustand

Der Median des freien Speichers auf dem MacBook betrug 3.7 GB bei einer Schwelle
von 3 GB; in 2 von 26 Messungen lag er darunter. Der Aushilfsfall würde also
ausgerechnet dann, wenn man ihn braucht, mit erheblicher Wahrscheinlichkeit an der
eigenen Schwelle scheitern. Die Schwelle ist nicht falsch, aber sie beschreibt eine
Station, die schlicht kein Speicherpolster hat.

### 3.6 Drei weitere claude-run-Aufrufer umgehen die Weiche

`dispatch-run.sh`, `multi-claude.sh` und `vollgas-runner.sh` starten Läufe über
`claude-run.sh`, fragen aber nur das lokale Lauf-Gate, nicht die Weiche. Belegt sind
fünf solche Läufe im Zeitraum (31.07. 22:53 mit 23.22 USD, 01.08. 14:28, 01.08.
22:30, 02.08. 22:30, 03.08. 22:20), die an der Weiche vorbeiliefen.

## 4. Verbesserungsvorschläge

Nach Nutzen geordnet.

### V1 (hoch): Kontingent als zweite Dimension aufnehmen

Vor dem Entscheid `mini-frei` zusätzlich das Wochenkontingent über
`connectors/claude-usage.mjs` prüfen. Ist es erschöpft, lautet das Ziel im
Takt-Modus `keine` mit dem Grund `Kontingent erschöpft bis <Rücksetzzeit>`;
im Ausführungsmodus **keine Queue-Parkung** (die Aufträge würden sich während
einer 30-Stunden-Sperre stapeln), sondern derselbe erklärte Ausfall.

Damit wird die Weiche zu dem, was sie sein sollte: die Instanz, die weiss, ob ein
Auftrag überhaupt laufen kann. Sieben von 26 Entscheiden dieser Woche hätten
davon profitiert, gegenüber null Entscheiden, die von der Speicherdimension
profitiert haben.

### V2 (mittel): MacBook erst messen, wenn es gebraucht wird

`MB_GB` und `MB_DRUCK` hinter `mini_bereit` verschieben. Im Normalfall wird die
Weiche damit ein rein lokaler, sofortiger Entscheid ohne Netzabhängigkeit.
Ersparnis nach dieser Woche: 52 SSH-Runden und zwei Timeout-Fehlerpfade je Entscheid.
Der Journaleintrag trägt dann `macbook_gb: ""` mit dem Vermerk `nicht gemessen`,
was ehrlicher ist als ein Wert, der nichts bewirkt hat.

### V3 (mittel): gemeinsamer Schlüssel für Entscheid und Lauf

Den Auftragsnamen, unter dem die Weiche entscheidet, an `claude-run.sh`
durchreichen, damit beide Journale über denselben Namen verbunden sind. Ohne das
bleibt jede künftige Wirkungsmessung Handarbeit. Separat davon gehört der
produktive Loop vom Versuchsnamen `dispatch-versuch1` auf einen sprechenden Namen,
mit stehengelassener Altzeile im Rollen-Register gemäss Rule `rollen-taxonomie`.

### V4 (offen, Entscheid Raphael): Rolle ehrlich hinterfragen

Die Weiche ist als `prototyper` gebaut. Nach einer Woche steht fest, dass ihre
Kernfunktion, die Lastverteilung über zwei Stationen, **keinen Anwendungsfall
gefunden hat**. Drei Wege stehen offen:

- **A, empfohlen: umwidmen statt ausbauen.** V1 und V2 umsetzen. Die Weiche wird
  damit vom Lastverteiler zum Startbarkeits-Wächter, also zu der Instanz, die vor
  jedem teuren Lauf prüft, ob Speicher, Lauf-Gate **und** Kontingent ihn zulassen.
  Das ist die Funktion, die diese Woche gefehlt hat. Die MacBook-Aushilfe bleibt als
  ruhender Zweig erhalten, kostet nach V2 aber nichts mehr.
- **B: weitere Aufrufer einhängen** (`dispatch-run.sh`, `multi-claude.sh`,
  `vollgas-runner.sh`). Davon rate ich **vorerst ab**: Es würde einen Entscheid,
  der immer `mini` lautet, vervierfachen und SSH-Latenz in weitere heisse Pfade
  tragen. Sinnvoll wird B **nach** V1, weil die Weiche dann tatsächlich etwas
  schützt, das ohne sie ungeschützt ist.
- **C: Rückbau.** Vertretbar, wenn V1 nicht gewollt ist. Dann leistet die Weiche
  nichts, was das lokale Lauf-Gate nicht schon leistet, und `nachtschicht-run.sh`
  könnte auf den Gate-Aufruf zurücklaufen, den es ohnehin zusätzlich macht.
  Der Speicherprofil-Befund dieser Woche würde als Begründung im Logbuch bleiben.

### V5 (klein): Schwellen belassen, MacBook-Schwelle vermerken

Die Mini-Schwelle von 4 GB ist unauffällig und braucht keine Anpassung
(kleinster Messwert 6.0 GB). Die MacBook-Schwelle von 3 GB nicht senken, sondern
den Befund festhalten: Das MacBook hat im Median nur 0.7 GB Polster darüber und
ist damit strukturell keine verlässliche Aushilfsstation. Das ist eine Erkenntnis
über die Hardware, kein Parameterfehler.

### V6 (klein): Idle-Grenze unverändert lassen

Die 15-Minuten-Idle-Grenze und das Arbeitszeitfenster 07:00 bis 19:00 wurden nie
scharf, weil nur der 13:30-Slot in die Arbeitszeit fällt und der Mini dort stets
frei war. Ohne Bewährungsprobe gibt es keinen Anlass zur Änderung.

## 5. Nicht ins Fristen-Register übernommen

Gemäss Rule 260805 geprüft: Dieser Lauf hat keine Frist, keinen Termin und keinen
terminkritischen Mangel an einem ausgehenden Erzeugnis zutage gefördert. Die
Kontingent-Blindheit ist ein Betriebsbefund ohne Datumsbezug und gehört in diesen
Bericht sowie zur Entscheidung V4, nicht in `logbuch/fristen.md`.

## CHANGELOG

**06.08.2026, Wochen-Review Arbeits-Weiche (Auftrag Raphael 30.07.2026).**
Geprüft: 8 Entscheid-Journale mit 42 Zeilen, davon 16 Bau- und Testeinträge
getrennt ausgewiesen und 26 echte Betriebs-Entscheide ausgewertet; Verteilung
26/0/0/0 auf mini/macbook/queue/keine; Begründung und Messwerte in 26 von 26
Fällen deckungsgleich, kein Fehlentscheid, keine liegengebliebene Queue-Parkung
(nie eine angelegt). Speicher Mini min 6.0 / Median 9.4 / max 17.4 GB gegen
Schwelle 4 GB, MacBook min 2.6 / Median 3.7 / max 5.9 GB gegen Schwelle 3 GB.
Liefer-Delta gegen `logbuch/laeufe/` gehalten: 19 von 26 Entscheiden führten zu
rc=0-Läufen mit 276 bis 1019 s und 2.37 bis 4.95 USD, 7 zu Sofortabbrüchen mit
rc=1 nach 6 bis 9 s und 0.00 USD, alle sieben im Fenster 01.08. 23:30 bis 03.08.
05:30 mit dem Grund `weekly limit`. Nur 3 `weiche-*`-Läufe im Lauf-Journal, alle
aus den Bau-Tests vom 30.07.; der Ausführungs- und der Queue-Pfad sind produktiv
nie gelaufen. Ein einziger Aufrufer (`nachtschicht-run.sh`, Takt-Modus, 4 Slots
täglich), drei weitere claude-run-Aufrufer umgehen die Weiche. Fazit teilweise
gelungen; sechs Verbesserungsvorschläge, davon V1 (Kontingent als zweite
Dimension) und V4 (Rollenentscheid) zur Freigabe durch Raphael.
