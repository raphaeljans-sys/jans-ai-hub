---
title: Synergie-Lauf 24 (31.08.2026, Tagestakt)
status: established
last_updated: 2026-08-31
sources:
  - git-Log NAS-Repo, Fenster 30.08.2026 17:10 bis 31.08.2026 17:10 (179 Commits), nativ per ssh
  - git-Log origin/main im selben Fenster (82 Commits)
  - scripts/nas-auto-mount.sh, scripts/ensure-nas-mounted.sh, scripts/nas-keepalive.sh, scripts/heartbeat.sh
  - scripts/git-divergenz.sh, skills/heartbeat/SKILL.md, Scheduled Task heartbeat-daily
  - ~/Developer/jans-ai-hub/.git/nas-auto-mount.log und .git/nas-ensure.log (31.08.)
  - sync-tasks/log/selfcommit-202608.log, sync-tasks/log/selfcommit-fehlversuche
  - rules/betrieb-chronik.md (260824), rules/jans-dna-facetten.md, rules/jans-dna.md
  - wissen/twin/outputs/2026-08-31_fidelity.md, logbuch/fristen.md
links:
  - "[[SYNERGIE-REGISTER]]"
---

# Synergie-Lauf 24 — 31.08.2026

**Delta-Basis** 30.08.2026 17:10 (Lauf 23) · **Fenster** 24,0 h · **179 Commits** im NAS-Repo,
**82** auf `origin/main` · **2 neue Befunde** (SYN-64, SYN-65), beide nur gemeldet.

## Schritt 0 — Uhr und NAS

**Die NAS-Pruefung war diesmal der Lauf.** `/Volumes/daten` existierte nicht. Die Freigabe war
gemountet, aber unter `/Volumes/daten-1` (`mount`: `//raphaeljans@192.168.1.10/daten on
/Volumes/daten-1`). In diesem Zustand ist die Station fuer den ganzen Hub blind: alle Symlinks,
alle `@`-Importe und jeder Script-Pfad zeigen auf `/Volumes/daten`. Diese Session startete
entsprechend ohne Skills, Agenten, Commands und Rules (SessionStart-Waechter). Daraus wurde
**SYN-64**.

Geheilt wurde nur die laufende Station: `umount /Volumes/daten-1` (sauber, nicht `-f`), danach der
hauseigene `scripts/ensure-nas-mounted.sh` — der launchd-Waechter mountete daraufhin binnen einer
Minute korrekt nach `/Volumes/daten`, Sentinel lesbar, Symlinks intakt. Am Mount-Weg selbst wurde
nichts geaendert.

**Uhr-Check bestanden.** Stationsuhr 17:20 CEST gegen den juengsten nativen Zeitstempel der
Synology: Selfcommit-Log 17:15:06, NAS-HEAD `a9083705d` 17:15:01 +0200. Abweichung unter fuenf
Minuten, kein Nachstellen noetig. Der Log ist nicht UTF-8, gelesen mit `tail`/`awk` und
`grep -a` (Rule 260730b).

**Arbeitsweise dieses Laufs:** der SMB-Mount fiel waehrend des Laufs zweimal erneut aus und wurde
je vom Guard zurueckgeholt. Nach dem zweiten Ausfall liefen alle Messungen und alle
Schreibvorgaenge **nativ per ssh auf der Synology** (`/volume2/daten/jans-ai-hub`) statt ueber
SMB — kein `git` ueber SMB (Rule 260726), kein `cd` auf einen NAS-Pfad (Chronik 260824).

## Schritt 1 — Delta mit Gegenprobe

Beidseitig gemessen, weil NAS und GitHub seit dem 29.08. auseinanderlaufen:

- NAS-Repo: **179 Commits** im Fenster, HEAD `a9083705d` (17:15) — liegt im Fenster,
  Gegenprobe bestanden, keine Uhr-Schieflage.
- `origin/main`: **82 Commits**, Kopf `66df04125` (31.08. 06:12).

**Strukturelles Delta auf beiden Seiten leer.** `--diff-filter=A` ueber `skills/ agents/ rules/
connectors/ services/ commands/`: keine einzige neue Datei, weder auf dem NAS noch auf
`origin/main`. Geaendert wurden zwei Rules, beide auf der NAS-Seite:
`rules/sync-kanonische-quelle.md` (`8d93a8431`, Eigenrauschen von Lauf 23) und
`rules/jans-dna-facetten.md` (`92545f372`, twin-fidelity-review 06:02). KB-Bewegung ohne neuen
Baustein: NAS `energie` 28, `twin` 19, `wettbewerbs-dna` 11, `koordination` 8,
`planungsgrundlagen` 2, `architektur-fachwissen` 2, `spec` 1; GitHub `architektur-fachwissen` 336.

Weil zwei Rules bewegt sind, greift der Frueh-Ausstieg nach Schritt 2 nicht. Weil **kein** neuer
Baustein existiert, entfaellt die gesamte Verdrahtungspruefung: keine Contract-Pflichtfelder,
keine Zeile in `logbuch/rollen/rollen-map.tsv`, keine Allowlist-Freigabe, kein @-Import.

## Schritt 3 — Was geprueft wurde

### SYN-64 — drei Waechter, eine blinde Annahme

Alle drei Mount-Waechter fragen dasselbe: liegt ein Mount auf `/Volumes/daten`?
`nas-auto-mount.sh` Z. 70 und Z. 173, `ensure-nas-mounted.sh` Z. 45-46, `nas-keepalive.sh` Z. 46;
`heartbeat.sh` Z. 51 fragt gleichbedeutend `ls "$NAS_BASE/"`. macOS haengt eine SMB-Freigabe aber
unter `/Volumes/daten-1` ein, wenn der Name `daten` im Moment des Mountens belegt ist — und genau
diesen Zustand erzeugt `nas-auto-mount.sh` Z. 76 mit seinem eigenen `umount -f` im
Haenger-Zweig. Danach ist die Falle geschlossen: `mount volume` (Z. 151) meldet OK, weil die
Freigabe unter anderem Namen laengst haengt; die Verifikation Z. 173 findet nichts und schreibt
ERROR. Im Kreis, ohne Ausgang. Die Mountpunkt-Vorbereitung Z. 142-145 raeumt nur ein verwaistes
Verzeichnis auf, keine Fremdmontage.

Gemessen am 31.08.: letzter `[OK]` 13:23:25, danach **83 `[ERROR]`-Zeilen bis 17:19:34**,
`ensure-nas-mounted.sh` protokollierte um 13:21:10 den sauberen Abbruch (rc 1). Rund vier Stunden,
in denen jeder headless-Lauf folgenlos abbrach — der Guard tut dabei genau das Richtige, nur
erfaehrt es niemand.

**Adversariale Gegenpruefung.** (a) Gibt es die Gegenmassnahme schon woanders? Grep `daten-[0-9]`
ueber `scripts/`, `rules/`, `skills/heartbeat/`: **ein** Treffer, `rules/betrieb-chronik.md`
Z. 817 — der Ausfallmodus ist seit dem 24.08. beschrieben, aber in keinem Script abgebildet.
(b) Faengt der Keepalive es ab? Nein, `nas-keepalive.sh` Z. 46 stellt dieselbe Frage.
(c) Faengt `heartbeat` es ab? Nein, und doppelt nicht: es fragt gleich (Z. 51), heilt mit
`open smb://…` in dieselbe Falle (Z. 58) — und wird selbst ueber den NAS-Pfad aufgerufen, den es
pruefen soll. (d) Ist der Ausloeser vielleicht extern und der Befund damit theoretisch? Auch dann
bleibt der Punkt: der Zustand tritt belegt auf und kein Waechter kommt heraus.

Empfehlung: vor dem Mountversuch die Freigabe unter Fremd-Mountpunkt suchen und trennen
(`mount | grep "/${SMB_SHARE} on /Volumes/${SMB_SHARE}-"` → `umount`), dieselbe Erkennung als
Diagnose in Guard und Keepalive. **Nicht gebaut** — Eingriff in den Mount-Weg der Station,
Freigabe-Schwelle.

### SYN-65 — die Messung existiert, der taegliche Waechter fuehrt sie nicht aus

`scripts/git-divergenz.sh` wurde am 24.08. exakt fuer diesen Fall gebaut; sein Kopf sagt es selbst
(Z. 8-12): «NAS und GitHub liefen sechs Stunden auseinander (26/51 Commits), ohne dass es jemand
sah … Dieser Check ist das Fenster darauf». Aufgerufen wird er an genau einer Stelle:
`skills/heartbeat/SKILL.md` Z. 313-317. Der Scheduled Task `heartbeat-daily` fuehrt aber nicht den
Skill aus, sondern das Script; und `scripts/heartbeat.sh` prueft in Abschnitt 2 (Z. 68-83) nur
`git status --short`, also sauber gegen schmutzig, nie ahead/behind. Grep `git-divergenz` ueber
`scripts/`, `skills/`, `rules/`, `commands/` und alle 33 Scheduled Tasks: **ein** Treffer, die
SKILL.md-Zeile. Die Gegenmassnahme liegt im Text, nicht im ausfuehrenden Pfad — das SYN-56-Muster.

Was dadurch ungemeldet blieb: das NAS-Repo steht seit dem 29.08. 22:04 (merge-base `01204714a`)
quer zu GitHub, `main` ist **ahead 471 / behind 267**, der native Selfcommit meldet seit
29.08. 21:51 durchgehend «Konflikte brauchen ein Urteil», Zaehler
`sync-tasks/log/selfcommit-fehlversuche` = **555**. Die zwoelf Konfliktdateien sind samt und
sonders append-Dateien (`skills/wissens-destillat/KORPUS-QUEUE.md`, die CHANGELOGs von
`architekten-synobsis`, `architektur-fachwissen`, `baurecht`, `grobkosten`, `normen`, drei
`raw/inventar`-Dateien, `wiki/QUESTIONS.md`, eine add/add-Kollision auf
`protofunktional-begriff-abgrenzung-funktionalismus.md`).

Der Zaehler liegt in genau dem Ordner, den `heartbeat.sh` Abschnitt 5 (Z. 136-151) ohnehin
abzaehlt — eine Datei daneben, ungelesen.

**Adversariale Gegenpruefung.** (a) Steht der Sachverhalt schon woanders? Die Divergenz ja,
siebenfach in `logbuch/fristen.md`, mit gefundener Ursache (`docs/konzepte/260830-Laufzeitschicht-Umbau/SPEC.md`,
Befund B6). Die **fehlende Meldung** steht dort nicht. (b) Ist das ueberhaupt ein Synergie-Befund
oder nur Betrieb? Es ist der Kern des Skills: sieben Laeufe haben dieselbe Zahl von Hand nativ per
ssh erhoben, weil kein Waechter sie liefert — Ketten-Luecke plus Doppelrechnung. (c) Waere die
Einhaengung riskant? Nein, sie ist zwei Zeilen; riskant ist nur, sie nebenbei zu setzen, deshalb
gemeldet statt gebaut.

### SYN-43 — aufgerollt, weil ein Beteiligter sich bewegt hat

`rules/jans-dna-facetten.md` hat am 31.08. 06:02 eine weitere praezise Anrede-Klausel aufgenommen
(«Auch die Zahlungserinnerung ist namenlos, selbst im warmen Du»), die importierte Fassung
`rules/anrede-kontakte.md` kennt sie nicht (0 Treffer, letzte Aenderung 27.08.). Der Verweis aus
Lauf 16 traegt weiterhin (Z. 57). Muster bestaetigt, Status nachgefuehrt, kein neuer Eintrag.

## Was nicht als Befund uebernommen wurde

**(a) Die 2/2-Zeile in `jans-dna-facetten.md`.** Derselbe Commit entfernt in Z. 225 die Klausel
«Gruss nach Mail-Typ; Stufe nur Richtwert; Du gross» und fuegt in Z. 213 eine neue hinzu —
`numstat` 2/2. Ein Substanzverlust, den die Schreib-Kontrolle nach Rule `auto-verbesserungen`
260811 **nicht** sehen wuerde, weil sie Zeilen zaehlt. Die Gegenprobe entlastet den twin-Lauf
dennoch vollstaendig: die Streichung ist begruendet dokumentiert
(`wissen/twin/outputs/2026-08-31_fidelity.md` Z. 177-178, `wissen/twin/CHANGELOG.md` Z. 26), und
«Gruss nach Mail-Typ» steht weiterhin im immer aktiven Kern `rules/jans-dna.md` Z. 52.
Dokumentierte Entdopplung, kein stiller Verlust. Kein Befund — der Merksatz bleibt trotzdem
festgehalten: eine 2/2-Zeile kann Substanz kosten.

**(b) Die Sync-Divergenz selbst.** Wie in Lauf 23: Symptom der bereits gefuehrten P1-Zeile, kein
eigener Synergie-Befund. Uebernommen wurde nur die Aussage ueber den Waechter (SYN-65).

**(c) Die 336 Dateibewegungen in `architektur-fachwissen` auf der GitHub-Seite.** Reine
KB-Inhaltsarbeit ohne neuen Baustein.

**(d) Die Mount-Ausfaelle waehrend des Laufs.** Betriebsstoerung mit bestehender Haertung
(`nsmb.conf`, Keepalive); Synergie-Sache ist allein die blinde Annahme der Waechter (SYN-64).

## Schreib-Kontrolle

Rule `auto-verbesserungen` 260811 eingehalten: jeder Anker vor dem Schreiben auf Trefferzahl 1
assertiert, kein globales Suchen-und-Ersetzen, jeder Eingriff zeilengenau am Anker, Umfang
vorher/nachher gemessen, Sicherungskopie des Registers im Scratchpad.

- `SYNERGIE-REGISTER.md`: **1161 → 1163** Zeilen (SYN-64, SYN-65 eingefuegt), **63 → 65**
  Tabellenzeilen, Diff gegen die Sicherungskopie: **0 geloeschte Zeilen**. Statusnachtraege an
  SYN-43 und SYN-65 rein additiv am Zeilenende (1163 → 1163). Fussnote Lauf 24 angehaengt:
  **1163 → 1218**.
- `wissen/koordination/CHANGELOG.md`: ein Eintrag zuoberst.
- `rules/betrieb-chronik.md`: ein datierter Eintrag zum Mount-Drift und zur Heilung.
- Alle Schreibvorgaenge nativ per ssh auf `/volume2/daten/jans-ai-hub`, kein SMB, kein `git` ueber
  SMB, kein `cd` auf einen NAS-Pfad.
