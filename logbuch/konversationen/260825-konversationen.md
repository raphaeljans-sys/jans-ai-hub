# Konversations-Destillat 25.08.2026

**Abdeckung:** MacBook Pro 66 Sessions · Mac Mini 225 Sessions · Cloud/Dispatch 4 Dispatch-Protokolle
(`remote-tasks/results/` leer) — Fenster 26 h (24.08.2026 04:13 bis 25.08.2026 06:13 CEST).

**Lage in einem Satz:** Nach dem Vollschub-Wochenende war der Montag ein **Projekttag am 2619 KISPI** —
siebzehn echte Gespräche auf dem Mac Mini, fast alle fachlich: Bodenbelags-Systematik, Plan- und
CAD-Beschaffung über die Truninger-Plattform, Sanitärapparate und vier SharePoint-Freischaltungen.
Daneben lief die Infrastruktur-Aufräumung des Vortages zu Ende: der Git-Stau ist aufgelöst, die
SSH-Vermaschung der drei Stationen steht, und Raphael hat die offene Sync-Architekturfrage
entschieden.

---

## 1. KISPI: vier SharePoint-Freischaltungen und eine gefundene Rechte-Ursache (Mac Mini, 24.08. 09:24 bis 18:51)

**Kern und Entscheide**

- Vier Freischaltungen auf der Site **JANS - 2619-KISPI**, alle nach demselben belegten Dreistufen-Muster
  (Gast im Tenant, M365-Gruppe `kispi@raphaeljans.ch`, SharePoint-Gruppe 5 «JANS - 2619-KISPI Members»):
  - **Nicklas Rothe**, Röthlisberger AG (firmiert als Schreinermanufaktur), `nr@schreinermanufaktur.ch`,
    UPN `nr_schreinermanufaktur.ch#EXT#@raphaeljans.onmicrosoft.com`, Objekt-ID
    `5cbf66f0-55e1-4f38-95ac-cba497c10d0e`. Dabei **Stephan Lanz** (`stl@schreinermanufaktur.ch`,
    Site-User-ID 52) nachgetragen, der bisher nur in der M365-Gruppe stand.
  - **Mustafa Eren**, Gruner AG Sanitärplanung (`mustafa.eren@gruner.ch`), Zugriffsanfrage 24.08. 09:24.
  - **Riccardo Guerini** und **Igor Suljanovic** (beide `@kispi.uzh.ch`), vorher nirgends erfasst.
- **Die eigentliche Ursache wurde bei Levi Hiltmann gefunden** (TeKoSi AG, `levi.hiltmann@tekosi.ch`):
  die Bibliothek «Dokumente» hat eine unterbrochene Rechtevererbung
  (`HasUniqueRoleAssignments: true`). Hiltmann war Gast im Tenant und Mitglied der M365-Gruppe, hatte
  auf der Bibliothek selbst aber **effektiv null Rechte** (`High=0 Low=0` gegen `High=432
  Low=1011030767` bei den funktionierenden Fachplanern). **Ein neuer Link allein hätte denselben
  Fehler erzeugt.** Mit der Aufnahme in die SharePoint-Gruppe 5 behoben.
- Bei der Nachkontrolle über alle 22 Projektgäste fielen drei weitere mit demselben Muster auf und
  wurden mitbehoben: **Albin Spahic** (Site-User 13), **Yasarcan Cetin** (Gruner, 26) und
  **Tim Harder** (Jomos, 43). Danach: niemand mehr ohne Zugriff.

**Offene Punkte und Folgeaktionen**

- Die Gast-Einladungen an Rothe, Guerini und Suljanovic müssen von den Empfängern noch angenommen
  werden (Status `PendingAcceptance`).
- Der Mail-Entwurf an Levi Hiltmann liegt als offenes Verfassen-Fenster in Apple Mail (`rj@`, Register
  Du, «Lieber Levi») und ist **noch nicht versendet**.

**Radar-relevant:** ja — Zusage gegenüber vier Fachplanern; der Mail-Entwurf wartet auf Versand.
Betrifft ausserdem den Register-Punkt vom 25.08. zum Platzhalter `[ZIELORDNER OFFEN]` in der
Hiltmann-Mail vom 24.08. 11:24: der dort fehlende Zielordner-Pfad gehört in genau diesen Entwurf.

---

## 2. KISPI Bodenbeläge: Systematik FB50 bis FB72, Factsheet und Unternehmer-Adressblatt (Mac Mini, 24.08. 12:32 und 18:51)

**Kern und Entscheide**

- **FB50** ist der Normalfall: Standard-Linoleum in Bahnen, Stösse verschweisst, überall ohne
  elektrostatische Anforderung. **FB51** ist der ableitfähige Boden, Ableitwiderstand gegen Erde
  R < 100 MΩ, für medizinisch genutzte Räume der Gruppen 1 und 2 (OP, Eingriff, Aufwachraum,
  Intensiv, Herzkatheter, Endoskopie) sowie ESD-Technikräume.
- **Der praktisch wichtigste Punkt: FB51 ist ein System, kein Belag.** Ableitfähig wird der Boden
  erst mit leitfähigem Kleber, eingelegtem Kupferband im Raster und Anschluss an die Erdungsschiene
  durch den Elektriker, dazu die Widerstandsmessung nach Verlegung.
- Plattenbeläge: **FB70** Steinzeug glasiert 100 × 100 mm nach Fliesenspiegel, Hohlkehlsockel,
  R10/R10b; **FB71** dieselbe Qualität in **50 × 50 mm für Duschen**, im Gefälle verlegt, ohne
  Fliesenanschnitt; **FB72** der Mischfall im selben Raum. Die Logik: das kleinere Format erlaubt die
  Gefällefläche ohne Anschnitt. Quelle ist der Bodentypenkatalog `G-ARC_5640_Bodenaufbauten_Gesamt.pdf`.
- Zweiseitiges **Factsheet** abgelegt unter
  `.../AR - 01 Projekte/2619_KINDERSPITAL/03_BKP/LOS_281.00 Bodenbeläge Grundlagen/260821-2619-Bodenbelag-Index-FB50-FB51/`
  (docx, pdf, md).
- **Linoleum-Unternehmer identifiziert:** INEVO AG, vormals Pfister Professional AG (Rebranding
  zwischen 2022 und 2023). Vertragsadresse Bernstrasse Ost 49, 5034 Suhr; ausführende Filiale
  Hochbordstrasse 4, 8600 Dübendorf, +41 44 517 50 80, `duebendorf@inevo.ch`. Ansprechpersonen hart
  belegt: **Mischa Baldauf**, Leiter Verkauf Bodenbeläge, `mischa.baldauf@inevo.ch`,
  +41 44 517 50 81, Mobile +41 79 421 19 72, und **Joël Futterer**, `joel.futterer@inevo.ch`.
  Überholt und nicht mehr zu verwenden: Hochbordstrasse 24, 044 823 95 35 und alle `@pfister.ch`-Adressen.
- Einseitiges **Adressblatt** abgelegt unter `.../260821-2619-Adressblatt-Bodenbelaege-Inevo/`;
  die toten Pfister-Angaben stehen dort bewusst als eigene Position, damit sie erkennbar bleiben.

**Offene Punkte und Folgeaktionen**

- Die **verbindliche Normfundstelle** für die medizinisch genutzten Raumgruppen als FB51-Auslöser ist
  beim Elektroplaner Gruner AG einzuholen. Sie ist im Hub nicht belegt und wurde bewusst nicht geraten.
- Die **raumweise Freigabeliste FB51** steht als Bestätigung von Elektroplanung und Medizintechnik aus.
- Die Spiegelung des Factsheets ohne MD-Datei in die für alle Projektbeteiligten sichtbare Bibliothek
  wurde nicht ausgeführt (Rule `projekt-ablage-stand` / Eintrag 260813).

**Radar-relevant:** ja — Pendenz gegenüber Gruner AG (Normfundstelle) und der Medizintechnik
(Freigabeliste), beides vor der Ausschreibung LOS 281.21 fällig.

---

## 3. KISPI Bodenaufbaudetails: Nasszellen, Therapieküche, Bolon (Mac Mini, 24.08. 12:32)

**Kern und Entscheide**

- Auftrag mit drei Teilfragen. Für die **Nasszellen** vollständig belegt: massgebendes Detail 1:2 in
  `2619_51_S-ARCJ_8640_DT00_01_NASSZELLEN-UMBAU.pdf`, Bauteilkatalog-Aufbau **B338.H**.
- Produktangaben: Bodenplatte **Agrob Buchtal Chroma Plural Non-Slip**, Farbton Sandgrau, Steinzeug
  glasiert DIN EN 14411 Gruppe BLa, Abriebklasse 4, Format 100 × 100 × 6,5 mm (Duschbereich
  50 × 50 × 6,5 mm im Gefälle), Rutschhemmung **R10/B** nach DIN 51130, GS1 (bfu/EM/PA),
  Epoxidharzfugen 2K, Fugenbreite 2 bis 3 mm, Fugenfarbe **Mapei Kerapoxy Design 111 Silbergrau**.
- Vier bemasste Erklärskizzen erzeugt und im Projektordner abgelegt (Form nach Eintrag 260820).

**Offene Punkte und Folgeaktionen**

- Die Teilfragen zum **Therapieküchen-Linoleum** (Farbe, Rutschfestigkeit, Fugenausbildung) und zum
  **Bolon-Konstruktionsaufbau** sind im Transkript abgeschnitten; ob sie beantwortet wurden, ist dort
  nicht belegt. Bei Bedarf nachfassen.

**Radar-relevant:** nein.

---

## 4. KISPI Therapieküche: CAD-Daten der Standmischbatterie (Mac Mini, 24.08. 18:51)

**Kern und Entscheide**

- **Weder der emme-Küchenplan** (2026-2022325/1/1, 09.07.2026) **noch der Gastro-Online-Installationsplan**
  (26-122-01.3, Vorabzug, 01.05.2026) nennen Fabrikat oder Artikelnummer der Standmischbatterie mit
  Brause. Das Fabrikat wurde darum **nicht abgeleitet, sondern zurückgefragt**; Raphael entschied für
  **KWC GASTRO**.
- Geliefert wurden beide zur Darstellung passenden Typen: **24.501.146.000** (Ausladung A 300) und
  **24.501.144.000** (A 200), Gesamthöhe 1012 mm über Arbeitsplatte, bei APL 900 also OK 1912 mm ab
  Fertigboden.
- KWC liefert DXF/STEP/STL, kein DWG. Wandlung mit LibreDWG nach AC1015 (AutoCAD 2000, von ArchiCAD
  direkt lesbar), geometrisch verifiziert mit 11'009 bzw. 11'003 Entities, 2D-Ansichten von 1:10 auf
  1:1 skaliert. Ablage `~/Downloads/260824-KWC-Gastro-Standmischbatterie-Brause/`.

**Offene Punkte und Folgeaktionen**

- **Fabrikat und Ausladung sind Annahmen** und müssen bei emme bzw. Gastro-Online bestätigt werden,
  sonst wird auf ungeprüfter Grundlage geplant.
- Die **Freihöhe gegen den Fenstersturz** am Fensterspültisch (Wand 9, Anschluss S01) ist zu prüfen.

**Radar-relevant:** ja — Pendenz mit Fehlplanungsrisiko: Bestätigung vor der Ausführungsplanung.

---

## 5. KISPI Sanitärapparat: Lavabo-Typ S016 (Mac Mini, 24.08. 10:56)

**Kern und Entscheide**

- **S016 ist kein Katalog-Lavabo**, sondern das Apparatetyp-Modul «SAN 1.6» der ARGE KISPI
  (Herzog de Meuron Basel / Gruner AG): Plan 51_G-ARC_S016, Index B, Massstab 1:10, Druckdatum
  07.06.2024, Projekt-Nr. 377. Quelle:
  `.../JANS - 2619-KISPI - Dokumente/2 Umbauprojekt Neu PPTS/33.04 BKP/LOS_260.03 Sanitaeranlagen PREISIG/Plangrundlagen/`.
- Inhalt unter anderem: Waschtisch massgefertigt Kunststein nach Angabe ARC, **Einhandmischer
  wandmontiert Similor Citypro Liberty**. Geometrie: Waschtischplatte 450 × 340 mm, OK Waschtisch
  +0.850, Mischerachse +1.000.

**Offene Punkte und Folgeaktionen**

- Raphaels eigentliche Frage, **ob ein Einlochmischer ohne Wandmontage mit diesem Typ möglich ist**,
  ist im Transkript nicht mehr beantwortet. Nachzuholen — sie hängt mit dem Register-Punkt zur
  Montagehöhe der Wandmischbatterie vom 20.08. zusammen.

**Radar-relevant:** ja — offene Fachfrage am laufenden Projekt, im Gespräch gestellt und nicht beantwortet.

---

## 6. KISPI Truninger-Plattform: DWG-Fund, 605-Dateien-Spiegel und 72 Grundrisse (Mac Mini, 24.08. 12:32 und 15:55)

**Kern und Entscheide**

- Zum Plan `S-ARC_7550_DT-XX_XX_Teek-Rgl-Det` wurde die zugehörige **DWG auf DS3 gefunden**
  (File-34814071, 779 KB, hochgeladen 10.02.2023) — nicht bei den Revisionsplänen, sondern bei den
  Ausführungsplänen für die Baustelle. Das Raphael vorliegende PDF ist Index C mit Plandatum
  12.05.2022, die DWG ist also nicht älter; ob es derselbe Index ist, sagt der Dateiname nicht.
- Danach der ganze Ordner **7000-7999_DETAILPLANUNG_2** gespiegelt: 605 Dateien (268 DWG, 337 PDF),
  674 MB, fehlerfrei nach `~/Downloads/260824-KISPI-DS3-Detailplanung-2/` — bewusst nach Downloads
  und nicht in die OneDrive-Bibliothek, um keinen SharePoint-Upload auszulösen.
- **Ein Fehler im eigenen Connector wurde dabei gefunden und behoben** (`connectors/truninger-ds3.mjs:161`,
  lückenloses Blättern). Ohne den Fix hätte die Suche nur 270 statt 605 Dateien gesehen — jede Antwort
  wäre geraten gewesen.
- Separat: **alle 72 Grundrisse 1:50 Architekt-Revision Akutspital Süd** heruntergeladen (Sektoren
  EG 1211–1243, 1.OG 1311–1343, 2.OG 1411–1443, DG 1511–1543, 1.UG 1711–1743, 2.UG 1811–1843),
  414 MB, verifiziert gegen die Planliste `S-ARC_0000_TA-XX_XX_XLS` Stand 05.11.2024. Ablage
  `.../2619_KINDERSPITAL/99 Grundlagen TRUNINGER PLATFORM/53 Revisionsplaene 02 Sued HDM/1000-1999_GRUNDRISSE/`.
  Eine Dachaufsicht 1:50 liegt im Projektraum nicht vor, nur die 1:200-Übersicht.

**Offene Punkte und Folgeaktionen**

- Der Connector-Fix lag am Sessionende **uncommittet im SSD-Repo**; die Session hatte kein NAS.
  Prüfen, ob er inzwischen über den Auto-Sync draussen ist.

**Radar-relevant:** nein.

---

## 7. Speicher-Engpass für ArchiCAD, zweimal am selben Tag (Mac Mini, 24.08. 12:32 und 12:57)

**Kern und Entscheide**

- Raphael musste **zweimal** Arbeitsspeicher für ArchiCAD 27 freimachen. Beim ersten Mal waren es
  **11 alte, vergessene Claude-Code-Hintergrund-Sessions** mit Laufzeiten von einer Stunde bis
  **fünf Tagen**, rund 2500 MB; frei danach 2111 MB statt 462 MB bei 31 GB belegt.
- Beim zweiten Mal wurde die eigentliche Ursache gefunden: ein loser Dauerlauf-Supervisor
  **`/tmp/vollschub-mini-v2.sh`** aus dem Vollschub-Wochenende, der im Minutentakt bis zu fünf
  parallele `claude -p`-Läufe nachschob und bis 11:30 Uhr laufen sollte. Gestoppt über STOP-Datei
  und PID 78931; zusätzlich `ch.jans.nachtschicht`, `ch.jans.wissens-trigger` und
  `ch.jans.synctask-runner` entladen. Freier Speicher danach 47 %.

**Offene Punkte und Folgeaktionen**

- **Der Zusammenhang zum Radar-Befund vom Vortag ist der eigentliche Punkt:** dass
  `ch.jans.nachtschicht` am 24.08. entladen war und der Vollgas-Chef-Radar dies um 13:13 als P1
  meldete, hat hier seine Erklärung — es war kein Ausfall, sondern diese bewusste Entladung.
- **Eigene Nachmessung heute 25.08. 06:2x: alle drei Jobs sind wieder geladen** (`ch.jans.nachtschicht`,
  `ch.jans.wissens-trigger`, `ch.jans.synctask-runner` stehen in `launchctl list`). Kein offener Punkt.

**Radar-relevant:** nein — nachgemessen und erledigt; erklärt rückwirkend den P1-Befund des
Vollgas-Chef-Radars vom 24.08. 13:13.

---

## 8. Sync-Architektur: Raphael hat entschieden (Mac Mini, 24.08. abends)

**Kern und Entscheide**

- Der Git-Stau des Tages wurde aufgelöst: Sicherung auf Zweig `rettung/nas-vor-merge-260824` und Tag
  `rettung-nas-260824` auf `85c4596b`, dann **Merge statt Rebase** (`9bb816682`). Sechs der sieben
  Konflikte waren reine Append-Kollisionen, beide Seiten wurden behalten; zwei brauchten Urteil.
  NAS, GitHub und beide Stations-Klone stehen danach auf demselben Stand.
- **Die Messung, die den Entscheid trug:** über 14 Tage und 1554 Commits verteilt sich die Arbeit auf
  `nas-selfcommit` 1127, benannte Commits 398 und `auto-sync [Macmini]` 29 — also knapp zwei Prozent.
  Diese zwei Prozent trugen aber **40 Dateien, die auf keinem anderen Weg nach draussen kamen**.
- **Raphaels Entscheid, wörtlich: «nein mach eine ganz einfach symple lösung die stabil ist und
  direkt».** Damit ist die im Register als «Entscheid fällig» geführte Architekturfrage entschieden:
  **zwei Schreiber bleiben**, kein Rule-Umbau, keine KB-Sperre. Stattdessen ein Messwerkzeug
  `scripts/git-divergenz.sh` (nur lesend) und **Check 16 im Heartbeat**.
- Zuvor gebaut und getestet: Merge-Rückfall bei Rebase-Fehlschlag, Fehlzähler und Eskalation ins
  Fristen-Register ab dem dritten Fehlversuch, in `nas-selfcommit.sh` und `git-auto-sync.sh`.
  Ein Bug dabei behoben (`$LOG` statt `$LOG_FILE`).

**Offene Punkte und Folgeaktionen**

- Der Registereintrag vom 24.08. 18:45 steht noch auf **«offen, hoch»** und verlangt einen Entscheid,
  den Raphael am selben Abend getroffen hat. Er ist nachzuführen.

**Radar-relevant:** ja — Register-Punkt «Entscheid fällig» ist durch Raphaels Entscheid überholt.

---

## 9. SSH-Vollvermaschung der drei Stationen und der Vermaschungs-Test (Mac Mini und MacBook Pro, 24.08. 17:40 bis 19:04)

**Kern und Entscheide**

- Der Zettel `zettel/JETZT.md` (hinterlegt von station-03, dem MacBook Pro von Revendo, am 24.08. 17:40)
  nannte drei Handgriffe. **Handgriff 1** — Public Key `mail@raphaeljans.ch` in `~/.ssh/authorized_keys`
  — wurde vom Auto-Mode-Klassifikator blockiert; der fertige Befehl wurde vorgelegt statt umgangen
  (Rule `wege-und-vollmachten`).
- **Eigene Nachmessung heute 25.08. 06:2x: der Schlüssel liegt auf beiden Stationen (Mac Mini und
  MacBook Pro, je ein Eintrag). Handgriff 1 ist erledigt**, entgegen dem Stand am Sessionende.
- Auf dem MacBook Pro entstand daraus ein wiederholbares Werkzeug: **`scripts/vermaschungs-test.sh`,
  aufrufbar als `/vermaschung`** (bash-3.2-kompatibel, da macOS kein `mapfile` kennt). Es misst neun
  Ebenen als Matrix: SSH über alle sechs Richtungen, Tailnet und LAN getrennt, NAS-Lese- und
  Schreibprobe je Station mit Zufallstoken-Umlauf, dazu Git-Stand, Symlinks, Uhrendrift,
  Claude-CLI-Status und Rückkanäle. Voller Lauf rund 40 Sekunden, `--netz` rund 20. Rein lesend,
  einzige Ausnahme das selbst wieder entfernte Token.
- **Ergebnis des ersten Laufs (24.08. 18:37): alle drei Stationen vollständig vermascht, kein Befund.**

**Offene Punkte und Folgeaktionen:** keine.

**Radar-relevant:** nein.

---

## 10. Sicherheit: Synology-Home auf 777 (Mac Mini, 24.08. 18:25)

**Kern und Entscheide**

- Raphael hatte den Schlüssel selbst sauber angehängt (Backup vor dem Anhängen, `>>` statt `>`,
  `sort -u`, Rechte gesetzt). Gegengeprüft: Key-Login funktioniert, `authorized_keys` enthält drei
  Schlüssel (`macmini-ai-hub`, `mail@raphaeljans.ch`, `raphaeljans@me.com`).
- **Der echte Befund:** das Home-Verzeichnis auf der Synology steht auf **777**
  (`drwxrwxrwx+ /var/services/homes/raphaeljans`). `.ssh` selbst ist korrekt 700, aber Schreibrecht
  am übergeordneten Verzeichnis genügt: jeder andere DSM-Account kann `.ssh` umbenennen und ein
  eigenes daneben anlegen — und hat damit Key-Zugang als Raphael.
- Raphael antwortete **«ja dann schalte es ab»**; die Session bricht dort ab, was genau abgeschaltet
  wurde, ist im Transkript nicht belegt.

**Offene Punkte und Folgeaktionen**

- **Eigene Nachmessung heute 25.08. 06:2x: die Rechte stehen unverändert auf `drwxrwxrwx+`**
  (`.ssh` weiterhin 700). Die angeordnete Massnahme ist also **nicht ausgeführt**.

**Radar-relevant:** ja — offener Sicherheitsbefund mit angeordneter, aber nicht vollzogener Massnahme.

---

## 11. Tailscale-Ausfall: Ursache geklärt, Wächter gebaut, noch nicht scharf (Mac Mini, 24.08. 12:32)

**Kern und Entscheide**

- Ursache des Ausfalls: `WantRunning: false` bei `LoggedOut: false` — **der Tunnel war abgeschaltet,
  nicht abgestürzt.** Anmeldung gültig, Expiry «Never», Netzwerk-Extension seit dem Boot am 19.08.
  durchgehend geladen. Genau darum sahen Raphaels Screenshots richtig aus und keine der gesetzten
  Optionen half.
- **Wer abgeschaltet hat, ist nicht mehr feststellbar** (Unified Log reicht nur bis 21.08. 22:30
  zurück). Ein Sparkle-Auto-Update scheidet aus: das App-Bundle wurde am 20.08. um 02:20 ersetzt,
  der Stopp lag bereits um 00:57.
- Tailscale wieder eingeschaltet (100.120.219.12, Subnet-Route 192.168.1.0/24, `Health: []`).
- Gebaut: `scripts/tailscale-waechter.sh`, **Check 15** im Heartbeat, launchd-Vorlage
  `templates/launchd/ch.jans.tailscale-waechter.plist`.
- **Der unangenehme Teil, bereits als Rule 260824 verankert:** der Hub hatte den Befund viermal
  gefunden (Nachtschicht 19.08., Vollgas-Radar 20.08. 00:57, `energie-training` Runs 149 und 150 am
  23.08.) und nie gemeldet.

**Offene Punkte und Folgeaktionen**

- **Eigene Nachmessung heute 25.08. 06:2x: `ch.jans.tailscale-waechter` ist auf dem Mac Mini nicht
  geladen** (`launchctl list` zeigt nur Tailscale-eigene Jobs). Die Vorlage existiert, der Wächter
  läuft nicht. Bis dahin schützt nur der Heartbeat-Check, und der läuft auf Zuruf.

**Radar-relevant:** ja — der Schutz gegen den P1-Vorfall vom Wochenende ist gebaut, aber nicht scharf.

---

## 12. Ungeprüft geblieben: «Einladung zur Einreichung von Projektvorschlägen» (Mac Mini, 24.08. 12:32)

**Kern und Entscheide**

- Raphael legte die Mail
  «Offizielle Einladung zur Einreichung von Projektvorschlägen – Projekt-ID: 00936-7354-RO – 24.08.2026.eml»
  vor und fragte wörtlich: **«ist diese mail seriös, kannst du die daten herunter laden?»**
- **Die Session endete mit `API Error: 529 Overloaded`. Es liegt keine inhaltliche Antwort vor**, und
  im gesamten 26-h-Fenster nimmt keine spätere Session die Frage wieder auf.

**Offene Punkte und Folgeaktionen**

- Seriositätsprüfung und Download nachholen. Ob die Einladung eine Frist trägt, ist ungeprüft — das
  ist der Grund, warum der Punkt nicht liegen bleiben darf.

**Radar-relevant:** ja — unbeantwortete Frage Raphaels, möglicher Fristbezug, möglicher Phishing-Verdacht.

---

## 13. Energie-KB: Qualitätsoffensive im Multiagentenmodus (Mac Mini, 24.08. 12:32)

**Kern und Entscheide**

- Auf Raphaels Auftrag «kannst du im multiagentenmodus arbeiten und das wissen über energietraining
  auf ein neues level heben» lief ein **13-Agenten-Audit in drei Phasen** über sechs Prüfdimensionen
  mit adversarialer Gegenprüfung: **49 Befunde, 47 bestätigt** (3 P1, 18 P2, 26 P3), alle KB-intern belegt.
- Die Agenten arbeiteten lesend, die Korrekturen wurden im Hauptkontext angewendet — die
  Append-only-Disziplin der KB blieb in einer Hand.
- **Eine der drei P1-Korrekturen ist fachlich erheblich:** das THGE-Rechenbeispiel für Minergie
  dividierte seit 2023 durch die **Geschossfläche statt die EBF** und lieferte damit einen um 25 %
  zu strengen Zielwert; für ein Spital nannte die KB fälschlich 17, geltend sind **19,9 bzw. 18,5 kg
  CO₂-eq je m² EBF**.
- Auslöser war der Befund aus Run 150: die KB führte zwei Monate lang eine falsche Autarkiezahl und
  einen Tag lang eine falsche Förderantwort — **beide Fehler wurden zufällig gefunden, nicht gesucht.**

**Offene Punkte und Folgeaktionen**

- **Ob der fehlerhafte THGE-Kennwert je in einem Kundendokument verwendet wurde, ist im Transkript
  nicht belegt.** Das wäre zu prüfen, bevor der Punkt als erledigt gilt.

**Radar-relevant:** ja — falscher Fachkennwert stand über zwei Jahre in der KB; Verwendung nach aussen ungeprüft.

---

## 14. Routine-Läufe und bereits erfasste Blocker

- **MacBook Pro:** 63 Routine-Läufe (darunter fünf reine Fensterproben und vier Wiederaufnahmen nach
  Session-Limit oder API-Fehler), 3 Sessions mit echter Eingabe. **Mac Mini:** 208 Routine-Läufe,
  17 Sessions mit echter Eingabe. **Dispatch:** vier Nachtschicht-Zyklen, alle mit `exit_code: 0` —
  23:30 architekten-synobsis (sieben Identitätsfragen, fünf bestätigt, Commit `c71657057`, rund
  1,8 von 5 USD), 02:30 `wissenscheck` Phase 1 für `auflagebereinigung` (Befund A0·B2·C1·D0·E0·F2·G2),
  05:30 KB `claude-code` (Commits `cecc4dbbf`, `052349a88`, rund 2,8 von 5 USD).
- **Drei Blocker aus den Routine-Läufen stehen bereits im Fristen-Register und werden hier nicht
  gedoppelt:** der `ag-gruendung-monitor` seit 07.08. ausgefallen (UBS-Kapitalbescheinigung
  unbeobachtet), der bexio-Zugang seit 09.08. tot mit gesperrten Mahnschritten (RE-00100 CHF 13'120,
  RE-00098 CHF 13'600, RE-00099 CHF 3'680, RE-00101 CHF 6'000) und der offengelegte Zugangs-Token der
  Revendo-Station vom 23.08.
- **Zwei Befunde des 05:30-Laufs sind neu und lesenswert:** die Claude-Code-Distribution läuft
  inzwischen über einen nachgeladenen nativen Binary statt über ein gebündeltes `cli.js`
  (Version 2.1.243 verifiziert), und der Hub-Grundkontext liegt mit **125'112 B, rund 31'278 Token,
  erstmals seit der Kontext-Diät wieder deutlich über dem Vor-Diät-Wert** — zweiter voller Rebound,
  grösster Posten erneut `rules/auto-verbesserungen.md` mit 24,8 % und +78 % in 19 Tagen. Die Frage,
  ob ein Schwellenwert-Riegel nötig ist, liegt bei Raphael.
- **Nicht neu destilliert:** der Vollschub-Auftrag vom 23.08. und die Erstanbindung der
  Revendo-Station erscheinen im 26-h-Fenster erneut, weil ihre Sessions erst am 24.08. endeten. Sie
  sind vollständig im Destillat **260824** erfasst.
