---
titel: "Energie — Nebenlauf 2026-07-30: vierte Kollisionsnacht, Zweitverifikation VKF 22-15"
datum: 2026-07-30
typ: nebenlauf-report
lauf-nummer: keine (Kollisions-Ruecktritt, Rule auto-verbesserungen 260724)
status: kein Wissenszugewinn — Redundanz zu Run 92, bewusst so dokumentiert
korrigiert: 2026-08-03 (Datum, Redundanzbefund, Ursachendiagnose)
---

# Energie-Nebenlauf 2026-07-30 — vierte Kollisionsnacht in Folge

Vorlaeufer: `2026-07-27_energie-nebenlauf-kollision-zweiter-taktgeber.md`,
`2026-07-28_energie-nebenlauf-kollision-wiederholung.md`,
`2026-07-29_energie-nebenlauf-kollision-dritte-nacht.md`.

## Was passiert ist

Der App-Scheduled-Task `energie-training` startete um 22:37, waehrend seit 22:30 eine zweite
Instanz desselben Loops lief (PID 95841). Gemaess Rule 260724 ist dieser Lauf zurueckgetreten:
keine Run-Nummer belegt, keine Register-/Destillat-Edits, kein Commit. Die parallele Instanz
fuehrte Run 111 zu Ende.

## Ergebnis: kein Wissenszugewinn — und warum

Der Lauf hat zwei Kandidaten aus der Prioritaetenliste von **Run 110** bearbeitet
(VKF-Brandschutzrichtlinie 22-15 «Blitzschutzsysteme», GVZ-Formular
`21photovoltaikanlagen-doku-pm.pdf`). Beide waren zu diesem Zeitpunkt **laengst erledigt**:

- **VKF 22-15** wurde in **Run 92** erschlossen und hat ein eigenes Destillat
  `[[vkf-richtlinie-22-15-blitzschutzsysteme]]` (services.vkg.ch, 22-15de, in Kraft seit
  1.1.2015, curl+pdftotext, `established`).
- Das **GVZ-Formular** ist ebenfalls gelesen, Destillat
  `[[gvz-photovoltaik-melde-versicherungspflicht]]` — identische Einordnung als einseitiges
  AcroForm ohne Praemien-/Speicheraussagen.

**Ursache des Leerlaufs:** Der Lauf hat den Stand ueber ein fehlerhaftes Verzeichnis-Listing
gelesen und `run110` als juengsten Report genommen, obwohl bereits Run 119 vorlag. Die
zugrunde gelegte Prioritaetenliste war damit neun Laeufe alt und ihre Punkte laengst
abgearbeitet. Zusaetzlich wurde das Arbeitsdatum aus den umliegenden Dateinamen abgeleitet
(25.07.) statt gemessen (30.07.) — beides exakt die Fehlermuster, gegen die Rule 260729b
(«juengsten Stand pruefen, nicht den zuletzt selbst gelesenen») und Rule 260730b («Datum
messen, nie ableiten») geschrieben wurden.

## Restwert des Laufs

1. **Unabhaengige Zweitverifikation von Run 92:** VKF 22-15 wurde ein zweites Mal, auf
   getrenntem Weg und ohne Kenntnis des bestehenden Destillats, an derselben Primaerquelle
   gelesen — mit deckungsgleichem Befund (8 Seiten, 22-15de, IVTH-Beschluss 18.09.2014, in
   Kraft 1.1.2015). Insbesondere bestaetigt: **die Richtlinie erwaehnt Photovoltaik mit null
   Treffern ueber alle 8 Seiten.** Die Blitzschutzpflicht haengt allein an Gebaeudetyp,
   Nutzung, Personenbelegung, Hoehe, Volumen und Lage — nie an der PV-Anlage. Das stuetzt den
   `established`-Status des Destillats.
2. **Werkzeug-Praezisierung:** Beide Dokumente waren normale Text-PDFs, bei denen bereits
   `pdftotext -layout` genuegte; die multimodale Read-Stufe war unnoetig. Die frueheren
   «nicht auslesbar»-Vermerke stammten daher, dass WebFetch als einziges Werkzeug versucht
   wurde. Eskalationsleiter: `curl -A Mozilla` → `file`-Check → `pdftotext -layout` → erst
   dann Read multimodal.
3. **Vierter Kollisionsbeleg** — und damit der Anlass, die Ursache endlich zu Ende zu
   diagnostizieren (siehe unten).

## Ursachendiagnose der Kollisionsserie (nachgetragen 03.08.2026)

Die ersten drei Nebenlauf-Reports und dieser hier hatten die Ursache beim `EXCLUDE_RE` des
Vollgas-Runners vermutet. **Das war falsch.** Der Runner traegt seit dem 25.07. eine
pgrep-Doppellauf-Sperre (`vollgas-runner.sh`, Match auf die Frontmatter-Zeile
`name: <task>`) und haette den Lauf uebersprungen.

Der tatsaechliche zweite Taktgeber war **`scripts/cron-training-mini.sh energie`**, gefeuert
vom LaunchAgent `ch.jans.training-energie.plist`. Dieses Script uebergibt einen
**handgeschriebenen** Prompt ohne YAML-Frontmatter — die Sperre des Runners sucht aber genau
die `name:`-Zeile und war fuer diesen Prozess **blind**. Damit liefen App-Scheduled-Task und
LaunchAgent-Job vier Naechte lang unabhaengig voneinander auf derselben KB.

**Behoben (Stand 03.08.2026):**
- Die LaunchAgents `ch.jans.training-energie` und `ch.jans.training-normen` sind seit dem
  03.08. deaktiviert (`.disabled-260803`), `ch.jans.training-plg` bereits seit dem 28.07.
  Damit ist der dritte Taktgeber weg.
- `EXCLUDE_RE` im Runner um `energie-training`, `normen-training` und
  `planungsgrundlagen-training` ergaenzt (03.08.2026, Freigabe Raphael). Bis dahin standen
  diese drei als einzige getaktete Loops nicht darin; `normen-training-nacht` deckte
  `normen-training` nicht ab.
- Die Doppellauf-Sperre um eine **zweite, breitere Stufe** ergaenzt: zusaetzlich zum
  Frontmatter-Match wird jetzt case-insensitiv auf den blossen Loop-Namen geprueft, sodass
  auch handgeschriebene Prompts («Energie-Trainings») erkannt werden.

## Lehre

Ein Kollisions-Ruecktritt ist richtig, ersetzt aber die Ursachenanalyse nicht. Vier Naechte
in Folge hat je eine Instanz die Kollision sauber erkannt, korrekt zurueckgetreten, einen
Report geschrieben — und die falsche Ursache vermutet, weil niemand geprueft hat, WER der
zweite Prozess eigentlich ist. Der entscheidende Schritt war ein Blick in dessen argv.
