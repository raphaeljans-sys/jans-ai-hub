# Normen-Training Run 44 (MacBook Pro, 05.08.2026) — KEIN Destillat-Lauf: Rücktritt am Lauf-Gate, und der Grund ist ein Befund

**Kurzfassung.** Dieser Lauf hat **kein Destillat erzeugt und keine Verifikation gefahren**. Das
Lauf-Gate hat ihn um 01:28 abgewiesen, und nach Rule 260728 ist dann still zurückzutreten.

Der Abweisungsgrund ist allerdings kein Ressourcenengpass, sondern ein **Defekt**: die beiden
Lauf-Plätze der Station sind von **zwei verwaisten Fensterproben des vollgas-Radars** belegt,
die nie sterben. Speicher wäre vorhanden gewesen (3427 MB gegen einen Mindestwert von 3000,
Druckstufe 2 = Normalzustand dieser Station). Das Gate hat also korrekt gehandelt und dabei
Falsches gemessen.

Diese Nebenwirkung ist **neu**. Der Radar führt den Proben-Defekt seit dem 04.08. als reines
Messproblem («Defekt der Messmethode, nicht des Kontingents»), viermal dokumentiert. Dass seine
Leichen von einem anderen Wächter als Auslastung gezählt werden und damit den Nachtbetrieb
sperren, steht bisher nirgends.

---

## 1. Vorbedingungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | **rc=1 — ABGEWIESEN** (01:28:13 und 01:28:25 CEST) |
| Abweisungsgrund | «bereits 2 Laeufe aktiv (Grenze 2)» |
| NAS | gemountet |
| Speicher | 3427 MB verfügbar (Mindestwert 3000), Druckstufe 2 |
| Kollisionsschutz `ps` | kein zweiter Normen-Lauf; die zwei gezählten «Läufe» sind Radar-Proben |
| Run-Nummer | nach Sicht der jüngsten `outputs/`-Datei (Run 43) vergeben |

Quellzugriff auf OneDrive wurde **nicht** geprüft, weil nach dem Gate-Rücktritt kein Lesevorgang
mehr anstand.

## 2. Der Befund: verwaiste Radar-Proben füllen die Lauf-Plätze des Gates

### Die Mechanik

Der `vollgas-chef-radar` startet in jedem seiner 8-Stunden-Slots (00:50 / 08:50 / 16:50) eine
Fensterprobe `claude -p "Antworte nur mit: OK" --model haiku` mit eigenem 100-Sekunden-Watchdog.
Diese Probe **hängt seit dem 04.08.** Der Radar hält das in vier Einträgen fest (04.08. 09:10 bis
05.08. 00:57) und notiert jeweils, die Prozesse seien beendet worden. Das gelingt nicht
zuverlässig.

Das Lauf-Gate zählt laufende Läufe mit `pgrep -f "claude (-p|--print)"`. Dieses Muster **matcht
die Probe**. Die Grenze auf dem MacBook Pro ist 2.

Damit gilt: **zwei hängende Proben = Gate dauerhaft dicht.** Kein Lauf, der das Gate fragt, kommt
mehr durch, und die Sperre löst sich nicht von selbst, weil die Proben nicht sterben.

### Die Messung

Zustand am 05.08. 01:28 (`ps -o pid,ppid,state,lstart,etime,rss`):

| PID | gestartet | Alter | PPID | State | RSS |
|---|---|---|---|---|---|
| 54048 | 04.08. 16:58:06 | 8 h 30 | 1 | SN | 0 |
| 87945 | 05.08. 00:58:05 | 30 min | 1 | SN | 16 KB |

Beide sind verwaist (PPID 1), beide tragen die Kommandozeile der Fensterprobe. Die Startzeiten
decken sich mit den Radar-Slots 16:50 und 00:50, jeweils rund acht Minuten versetzt. Die Zuordnung
zum Radar ist damit belegt, nicht vermutet.

### Die Wirkung, ehrlich bemessen

Im Gate-Log (`logbuch/speicher/gate-Macbookpro.log`) stehen genau **zwei** Abweisungen mit dem
Grund «bereits 2 Laeufe aktiv», und beide stammen von diesem Lauf. Die Blockade besteht erst seit
00:58, dem Start der zweiten Probe. **Dieser Normen-Lauf ist der erste und bisher einzige
Betroffene.**

Das ist also noch kein Ausfall in der Breite, und es wäre falsch, ihn als solchen zu melden. Der
Punkt ist ein anderer: die Sperre ist **monoton**. Sie geht nicht von allein weg, und der nächste
Radar-Slot um 08:50 kann eine dritte Leiche hinterlassen. Ohne Eingriff ist der 08:50-Slot der
erste, der auf eine bereits gesperrte Station trifft.

### Warum er nicht behoben wurde

Der Versuch, die beiden verwaisten PIDs zu beenden, wurde vom Berechtigungs-Classifier abgewiesen.
Der Weg wurde **nicht** umgangen. Die Bereinigung braucht Raphaels Hand oder eine Bash-Freigabe.

### Einordnung

Das ist die Fehlerklasse aus Rule `rollen-taxonomie`: «Fehlstarts und abgewürgte Hänger gehören
getrennt ausgewiesen, nie in dieselbe Summe. Wer sie mitzählt, misst Betriebsstörungen und nennt
sie Auslastung.» Der Gate-Zähler kann einen arbeitenden Lauf nicht von einer toten Probe
unterscheiden, weil er nur auf die Kommandozeile schaut.

Die zweite Lehre betrifft den Radar: Ein defektes Messwerkzeug ist **nicht folgenlos**, wenn seine
Leichen von einem anderen Wächter als Last gezählt werden. Der Radar hat den Defekt vier Läufe
lang zutreffend als Messproblem eingeordnet und dabei nur nach innen geschaut, auf die eigene
Aussagekraft. Die Wirkung nach aussen ist ihm entgangen.

### Empfehlungen (nicht selbst umgesetzt)

1. **Sofort:** die beiden verwaisten Proben beenden. Danach ist die Station wieder frei.
   ```bash
   kill 54048 87945
   ```
2. **Am Radar:** die Fensterprobe so beenden, dass sie nicht verwaisen kann (Prozessgruppe statt
   Einzel-PID, `kill -9` als Nachfassen, Verifikation des Erfolgs statt Annahme). Solange die Probe
   hängt, entsteht pro Slot eine potenzielle Leiche.
3. **Am Gate:** den Lauf-Zähler gegen tote Proben immunisieren. Denkbar ist, die Fensterprobe aus
   dem Zählmuster auszunehmen oder verwaiste Prozesse (PPID 1) nicht mitzuzählen. **Vor der
   Umstellung messen, nicht danach** — der Gate-Header dokumentiert zwei Fälle, in denen eine
   plausible Schwellenänderung ohne vorherige Messung ein Dauerveto erzeugt hätte.
4. **Grundsätzlich:** Wenn ein Wächter meldet, sein Messwerkzeug sei defekt, gehört die Frage dazu,
   wer sonst noch von den Artefakten dieses Werkzeugs liest.

## 3. Zweiter Punkt, nachrichtlich: der Vorrang-Auftrag im Task-Text

Laut Report zu Run 43 ist der Vorrang-Auftrag des Task-Textes (achte Lignatec-Runde mit
rechnerischer Aufnahme von Tab. 3 und Tab. 4) **seit Run 38 erledigt** und wurde in den Läufen 39
bis 43 fünfmal neu festgestellt.

**Das ist ein Fremdbefund, keine eigene Feststellung.** Dieser Lauf hat kein Rendering gefahren und
keine Tabelle aufgenommen; er kann die Erledigung nicht bestätigen. Weitergegeben wird sie, weil
sie für die Taktfrage zählt.

Empfehlung unverändert: **Task-Text nachführen.** Der Vorrang-Block steht seit dem 29.07. und
kostet in jedem Lauf Kontext für eine Feststellung, die sechsmal dieselbe war.

## 4. Was dieser Lauf NICHT geprüft hat

Nach der Methoden-Lehre aus Run 36 ist auszuweisen, was ungeprüft blieb:

- **Kein Destillat, keine Verifikation, keine Inventar-Position.** Der gesamte fachliche Auftrag
  ist offen und geht unverändert an den nächsten Lauf.
- **Kein Rendering, keine zellenweise Tabellenaufnahme** am Lignatec oder anderswo.
- **Der Mac Mini ist ungeprüft.** Ob dort dasselbe Proben-Muster Lauf-Plätze belegt (Grenze 3), ist
  offen. Das wäre über SSH messbar und wurde bewusst nicht gemacht, weil es über den Auftrag dieses
  Laufs hinausgeht.
- **Der 08:50-Slot vom 04.08. ist ungeprüft.** Ob auch er eine Leiche hinterliess und sie später
  wegfiel, geht aus den Daten nicht hervor.
- **Die Kontingentlage** wurde nicht eigens gemessen; das Gate kam nicht bis zur Budget-Prüfung,
  weil die Laufzahl vorher abwies. Der Radar meldete um 00:57 «FREI» bei 25.2 % Verbrauch.

## 5. Kein Versand

Nach Rule 260803 ist dieser Befund ein Hub-Internum ohne Aussenwirkung (Betriebsmechanik,
Script-Verhalten) und damit **nicht sendewürdig**. Keine Mail. Der Eintrag geht ins Logbuch, damit
der Hub-Chef ihn im Tagesbriefing aufnehmen kann. Der Punkt unter Empfehlung 1 verlangt allerdings
eine Hand am Terminal und sollte dort nicht untergehen.
