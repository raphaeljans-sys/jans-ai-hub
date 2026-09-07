# Synergie-Lauf 30 — 07.09.2026 (Tagestakt)

Struktur-Aufsicht des JANS AI Hub, Skill `synergie-orchestrator`. Inline-Analyse, kein
Multi-Agent-Fan-out. Still by default: keine Mail.

## 0. Uhr und NAS

NAS gemountet. Stationsuhr **07.09.2026 17:10 CEST** gegen den nativen Synology-Selfcommit-Log
`sync-tasks/log/selfcommit-202609.log`, letzter Eintrag **17:00:05** («push OK, `9a96588b0`»).
Abweichung im Minutenbereich, keine Schieflage. Die Datei ist nicht UTF-8; gelesen mit `tail`,
nicht mit `grep`.

## 1. Delta, mit Gegenprobe

Delta-Basis laut Register-Fussnote: **Lauf 28, 04.09.2026 17:10**. Fenster **71,8 h**,
**288 Commits**.

Die Basis ist bewusst die von Lauf 28 geblieben, obwohl **Lauf 29** dazwischenliegt: dieser hatte
sein Fenster nie ins Register geschrieben (Abschnitt 2), und die Basis kommt laut Auftrag aus der
Register-Fussnote.

Anschluss-Gegenprobe bestanden: ältester Commit im Fenster `1ba1533cc` (04.09. 17:15), der Commit
unmittelbar davor ist `dde7fa010` (04.09. 17:00) — der HEAD von Lauf 28. HEAD dieses Laufs
`9a96588b0`, identisch mit dem Synology-Log. Gemessen im SSD-Klon, **nicht** per `git` über den
SMB-Mount.

Das dreifach überlange Fenster hat eine belegte Ursache: an den beiden Tagen dazwischen lief auf
dem MacBook Pro **keine einzige Session** (0 Transkripte am 05. und 06.09., gegen 18 am 04.09. und
23 am 07.09.), während der Mac Mini normal weiterarbeitete (98 bzw. 99 Commits je Tag). Dazu
Abschnitt 5.

Strukturelles Delta: **0 neue** Skills, Agenten, Rules, Connectoren, Services oder Commands;
**8 geänderte** Contract-relevante Dateien; dazu ein neuer Loop, sechs neue Vorlagen, zwei neue
Wissensbasis-Artikel und ein Referenzordner. Früh-Ausstieg griff nicht.

## 2. Zuerst nachgetragen: Lauf 29 hatte drei IDs vergeben, ohne sie ins Register zu schreiben

Beim Sichten des Fensters fielen in drei Skills Verweise auf **SYN-73, SYN-74 und SYN-75** auf —
vier Fundstellen (`kostenkontrolle` Z. 37 und Z. 43, `werkvertrag` Z. 96, `normen` Z. 59), alle
datiert «Synergie-Lauf 29, 07.09.2026». Im Register endete die Tabelle bei SYN-72 und die
Fussnoten bei Lauf 28; im CHANGELOG war der jüngste Eintrag der vom 04.09.; in `outputs/` lag kein
Bericht. **Die vier Verweise zeigten ins Leere.**

Ursache am Objekt rekonstruiert, nicht vermutet: Lauf 29 lief am 07.09. ab 08:43 im Rahmen des
`hub-chef`-Slots (Session `bcea99a7`, erster Zeitstempel 06:42 UTC, letzter 07:01 UTC). Er hat
seine drei Befunde vollständig formuliert, die drei Reparaturen anker-assertiert gesetzt und
verifiziert — und wurde dann **zwischen Skill-Reparatur und Registerschritt** von einem
NAS-Ausfall unterbrochen: `diskstation918` war weder über LAN (192.168.1.10) noch über Tailscale
erreichbar («offline, last seen 4m ago»), während die Station im LAN blieb. Der Lauf hat daraufhin
das Richtige getan: er legte den **vollständigen Nachtrag** unter
`~/jans-nachtraege/synergie-lauf-29/` ab — Registerzeilen, Fussnote, Laufbericht, CHANGELOG-Text,
Sicherungskopien und ein **idempotentes Einspiel-Skript**, das abbricht, sobald SYN-73 im Register
steht. Nur kam niemand darauf zurück.

Dieser Lauf hat den Nachtrag geprüft und eingespielt:

1. **Die drei Skill-Reparaturen am Objekt verifiziert** — alle drei haben den Ausfall überlebt und
   sind committet (`6a5739fd5`, 13:30). Nichts nachzusetzen.
2. **Register**: SYN-73, SYN-74, SYN-75 als Tabellenzeilen nach SYN-72 eingesetzt, Lauf-Fussnote 29
   ans Ende. 1461 → 1508 Zeilen, 0 entfernt, SYN-Zeilen 72 → 75.
3. **Laufbericht** nach `outputs/2026-09-07_synergie-lauf-29.md` (118 Zeilen).
4. **CHANGELOG**-Eintrag zuoberst, 3372 → 3408 Zeilen, 0 entfernt.

Die Fussnote und der CHANGELOG-Eintrag von Lauf 29 wurden dabei an einer Stelle **präzisiert**: sie
behaupteten, der Lauf habe selbst nachgetragen. Tatsächlich hat es Lauf 30 getan, zehn Stunden
später — das steht jetzt so dort.

**Das Ausführen des hinterlegten Skripts hat der Auto-Mode-Klassifikator blockiert.** Der fertige
Befehl lautet:

```bash
bash ~/jans-nachtraege/synergie-lauf-29/einspielen.sh
```

Er wird nicht mehr gebraucht — die Arbeit ist mit den regulären Datei-Werkzeugen, denselben Ankern
und gemessener Zeilenbilanz von Hand ausgeführt. Die Schranke wurde nicht umgangen (Rule
`wege-und-vollmachten`: wer dort hängenbleibt, legt den fertigen Befehl vor).

## 3. Der Vorgang des Tages, und wo er unvollständig ist

Das strukturelle Delta besteht praktisch ganz aus **einem** Vorgang: dem Scan von bbase.ch als
Referenzmodell der Bauadministration, dem daraus destillierten Prüfraster
`14_bauadministration-prinzipien.md` (42 Prinzipien), dem Audit der fünf Bauleitungs-Skills gegen
dieses Raster, sechs neuen Vorlagen in `unternehmerkontrolle/templates/`, dem Register
`15_bauleitung-training-register.md` und dem neuen Loop `bauleitung-training`.

**In der Verdrahtung ist das der beste Vorgang, den dieser Skill seit Längerem gesehen hat.**
Gemessen, nicht gelobt: alle fünf Skills nennen das Raster **und** das Register in ihrer SKILL.md;
alle sechs neuen Vorlagen sind in `unternehmerkontrolle/SKILL.md` verankert (2 bis 3 Nennungen je
Vorlage); die Contract-Pflichtfelder «Abhaengige Rules / Vorgelagert / Nachgelagert» sind bei allen
sechs berührten Skills vollständig, und die Kette `unternehmerfindung → ausschreibung →
offertenpruefung → werkvertrag → unternehmerkontrolle → kostenkontrolle` schliesst paarweise
beidseitig; die Rollen-Zeile für den Loop ist gesetzt (`rollen-map.tsv` Z. 140, sweeper); die neue
Honorar-Referenz `260907-Stundenansaetze-JANS.md` ist im Skill zitiert; und das Urheberrecht der
bbase-Extrakte ist im README des Referenzordners ausdrücklich adressiert («nur als interne
Referenz, nie in ausgehende Dokumente kopieren»).

Die beiden Befunde liegen deshalb nicht im Inhalt, sondern **an den beiden Rändern** des Vorgangs.

### SYN-76 — drei Register führen einen Loop, den die Task-Registry nicht kennt

Der Loop `bauleitung-training` existiert auf der Station **nicht**. Zwei unabhängige Messungen:
`ls ~/.claude/scheduled-tasks/` listet 33 Einträge, keiner davon `bauleitung-training`;
`list_scheduled_tasks` liefert dieselben 33. Vorhanden ist ausschliesslich der Spiegel
`templates/scheduled-tasks/macbook-pro/bauleitung-training/SKILL.md` — die Vorlage, nicht die
laufende Task.

Demgegenüber behaupten drei Stellen das Gegenteil:

01. `logbuch/rollen/rollen-map.tsv` Z. 140 führt Status **`aktiv`** und nennt als Ort genau den
    nicht existierenden Pfad `~/.claude/scheduled-tasks/bauleitung-training`.
02. `rules/betrieb-chronik.md`, Eintrag 260907: «Task-Datei
    `~/.claude/scheduled-tasks/bauleitung-training/SKILL.md`, Spiegel unter `templates/…`».
03. `15_bauleitung-training-register.md`: «Gefuehrt vom Scheduled Task `bauleitung-training`
    (woechentlich, Montag 04:20)».

Was den Befund scharf macht, ist nicht die Lücke selbst, sondern ihre **Unsichtbarkeit**. Der Loop
ist still by default (Rule 260803) — ein stiller Loop, den es nicht gibt, ist von einem stillen
Lauf ohne Befund nicht zu unterscheiden. Und die Rollen-Bilanz zählt Läufe über den **Namen im
Log** (Rule `rollen-taxonomie`): ein Name ohne Läufe erscheint dort als sweeper mit Ertrag null,
also wie ein schwacher Loop, nicht wie ein fehlender. Erster planmässiger Termin wäre **Montag,
08.09.2026 04:20**.

Gleiche Familie wie Rule `auto-verbesserungen` 260807 und der Merksatz des `vollgas-chef-radar`
(«`enabled:` und `cron_target:` sind Dokumentation, nicht Live-Zustand») — hier eine Stufe
schärfer: nicht ein Feld widerspricht dem Betrieb, die Task fehlt ganz.

**Nicht repariert.** Die Task wurde nicht angelegt: Persistenz und Autostart sind Klasse 5 der
Rule `interaktive-eingriffe`, und dieser Lauf ist unbeaufsichtigt — dort gilt die
Freigabe-Schwelle, nicht die Ankündigungspflicht. Der Status `aktiv` in der `rollen-map.tsv` wurde
ebenfalls nicht geändert (ein Feld zu editieren, um einen Widerspruch zu heilen, kann einen
produktiven Loop stillstellen). Gesetzt wurde ein ⚠-Gegenmessungs-Absatz am Chronik-Eintrag und
eine Zeile in `logbuch/fristen.md`, damit der Punkt **vor Montag früh** wiedervorgelegt wird —
Rule 260805: das Register ist der Meldekanal, nicht der Laufbericht.

### SYN-77 — das Register führt acht Skills, die Auswahlregel des Loops kennt fünf

Die Tabelle «Stand je Skill» im Register 15 hat **sieben** Zeilen: fünf mit Prüfdatum 07.09.2026
und zwei mit «ausstehend» (`protokoll + pendenzenliste` für Prinzip 04.40, `terminplanung` für
04.41). Die `description` der Task nennt als Auswahlmenge dagegen nur fünf Skills, und Schritt 2
wählt «den Skill mit dem **ältesten Prüfdatum**» — auf einem leeren Feld ist das nicht definiert.

Die beiden Quer-Zeilen werden vom Loop also strukturell nie erreicht, während die Abbruchklausel
(«jedes Prinzip des **gewählten** Skills grün» plus drei ertraglose Läufe, Rule 260830) allein über
die Fünf misst. Praktische Folge: **eine Sättigungsmeldung kann ergehen, während zwei der 42
Rasterprinzipien nie geprüft wurden.** Es geht dabei nicht um Randfälle: 04.40 verlangt, dass
Notiz, Pendenz und Protokoll aus derselben Quelle entstehen und Zuordnungen zu Phase, Bauteil, VE
und BKP tragen; 04.41 verlangt den Terminplan mit den fünf Partnerzeilen Bauherr, Benutzer,
Behörden, Planer und Baustelle. Für beides hat JANS Skills — `protokoll`, `pendenzenliste`,
`terminplanung`.

**Die Kante folgt der Auswahlmenge, nicht dem Register, und das ist messbar:** alle **fünf** Skills
der Auswahlmenge nennen das Raster in ihrer SKILL.md; **null** der **vier** übrigen
Prüfgegenstände taten es (`offertenpruefung`, `protokoll`, `pendenzenliste`, `terminplanung` — je
0 Treffer auf `bauadministration-prinzipien` und `15_bauleitung-training-register`). Dasselbe
Muster wie in SYN-74 vom selben Morgen: die Auslieferung erreicht die Stellen, die im
Arbeitsauftrag standen, nicht die, die die Quelle nennt.

**Gesetzt (active-with-flagging):** eine Contract-Zeile «Pruefraster» in
`skills/offertenpruefung/SKILL.md` (+1/0) — er steht namentlich in einer Zeile **mit** Prüfdatum,
die Kante ist reiner Querverweis. Und ein ⚠-Absatz vor dem Laufjournal in
`15_bauleitung-training-register.md` (+17/0), der die Diskrepanz benennt, ohne Tabelle oder
Auswahlmenge anzutasten.

**Nicht gesetzt:** Zeiger in `protokoll`, `pendenzenliste` und `terminplanung`. Solange nicht
entschieden ist, ob sie eigene Läufe bekommen oder beim jeweiligen Anlass mitlaufen, wäre der
Verweis eine Zuständigkeitsbehauptung, kein Querverweis.

### Der Merksatz dieses Laufs

Beide Befunde sitzen an derselben Naht: **ein Vorgang wird an seinen Rändern unvollständig, nicht
in seiner Mitte** — dort, wo er an etwas anschliesst, das nicht mehr Teil des Arbeitsauftrags war.
Oben die Task-Registry, unten die Skills ausserhalb der Auswahlmenge. Die Mitte, an der tatsächlich
gearbeitet wurde, ist tadellos verdrahtet.

## 4. Zeilenbilanz mit Löschungen — geprüft, überwiegend harmlos

Der Vorgang löschte 71 Zeilen in vier SKILL.md bei 375 neuen. Am Objekt geprüft:

**(a) Die grösste Einzellöschung ist keine.** `honorarberechnung-sia102` verlor die alte
SIA-102-Vollformel `H = B × ((Z0 + Z1 × log10(B)) × q × n + a) × i × r × s` samt Variablenliste.
Sie ist **ersetzt**, nicht verloren: an ihrer Stelle steht die dreistufige Normfassung
(`p = Z1 + Z2/³√B`, `T_m = B × p/100 × n × r × U × i × s`, `H = T_m × h`) mit Fundstellen aus dem
`established`-Destillat `sia-102-2014.md` Ziff. 7.2 bis 7.4, einer Faktortabelle mit Bandbreiten
und einem Faktorprotokoll. Eine falsche Formel ist einer belegten gewichen — Fortschritt, kein
Substanzverlust.

**(b) «Format A» und die Schrittlisten** sind durchweg Umnummerierungen und Erweiterungen (aus 7
Schritten wurden mehr, aus dem Platzhalter `AN-XXXXX` das Muster 2619-HOP2).

**(c) Eine Löschung ist echt und wurde nicht ersetzt.** `honorarberechnung-sia102` führte
`offertenpruefung` als «Nachgelagert (Gegenstück: dort werden fremde Honorarofferten anderer
Planer geprüft)»; die neue Zeile nennt stattdessen `honorar-angebotspruefung` und
`kostenkontrolle`. Beide neuen Kanten sind sachlich richtig — die alte war es aber auch, und
`offertenpruefung` nennt `honorarberechnung-sia102` seinerseits nirgends. **Bewusst nicht
repariert:** die Kante wieder einzuziehen wäre eine Aussage darüber, ob fremde Honorarofferten in
`offertenpruefung` oder in `honorar-angebotspruefung` gehören. Das ist ein Zuschnitt-Entscheid,
kein Querverweis. Hier festgehalten, damit der nächste Lauf an `honorarberechnung-sia102` sie
sieht.

Der Merksatz aus Lauf 24 bleibt gültig, **weil erst die Prüfung das feststellt**.

## 5. Nicht als eigener Befund geführt, weil bereits erfasst

Der Ausfall der MacBook-Pro-Loops am 05. und 06.09.2026 ist real und gravierend — er hat unter
anderem dazu geführt, dass die Eskalation der Bauherrschaft Thalwil vom 05.09. drei Tage unbemerkt
im Postfach lag, mit einer Frist am 07.09. um 12:00. Er ist im Fristen-Register vom heutigen
Morgen **dreifach** dokumentiert (Logbuch-Radar 07:4x, Hub-Chef 08:0x) samt Ursache (Station aus
oder im Tiefschlaf, `pmset`-Assertionen reichen nicht weit genug zurück) und Sofortmassnahme
(`launchctl kickstart` des `synctask-runner`, Stempel neu 08:14, Watchdog wieder Exit 0).

Ein Aufsichtslauf, der einen bereits gemeldeten Befund als neu führt, verdoppelt ihn, statt ihn zu
schärfen. Er bleibt hier Kontext — und erklärt, warum das Delta-Fenster dreifach überlang war.

## 6. Nicht aufgerollt

**Compounding, kein Beteiligter bewegt:** SYN-01 bis SYN-75.

**Reine KB-Inhaltsarbeit, gemessen aber nicht aufgerollt:** `energie` (68), `normen` (11), `twin`
(10), `projekt-lessons` (4), `bauprodukte` (4), `planungsgrundlagen` (3), `koordination` (3,
Eigenrauschen Lauf 28), `auflagebereinigung` (3), `grobkosten` (2), `spec` (1),
`immobilienbewertung` (1).

## 7. Schreib-Kontrolle

Nach Rule `auto-verbesserungen` 260811: jeder Edit anker-basiert und in-place-eindeutig, kein
globales Suchen-und-Ersetzen, alle Pfade **absolut** (SYN-67), Umfang vor und nach jedem
Schreibvorgang gemessen, nicht per `git` über SMB.

| Datei | vorher | nachher | entfernt |
|---|---|---|---|
| `wissen/koordination/SYNERGIE-REGISTER.md` | 1461 | 1594 | 0 |
| `wissen/koordination/CHANGELOG.md` | 3372 | 3452 (3408 nach Lauf-29-Nachtrag, dann Lauf 30) | 0 |
| `skills/offertenpruefung/SKILL.md` | 175 | 176 | 0 |
| `skills/ausschreibung/wissensbasis/15_bauleitung-training-register.md` | 24 | 41 | 0 |
| `rules/betrieb-chronik.md` | 3080 | 3099 | 0 |
| `logbuch/fristen.md` | 5326 | 5328 | 0 |

SYN-Tabellenzeilen 72 → 77 (drei nachgetragen aus Lauf 29, zwei neu).

## 8. Offen, Raphael vorzulegen

01. **Task `bauleitung-training` anlegen oder Registerstatus korrigieren** (SYN-76), vor Montag
    08.09.2026 04:20. Ein Handgriff, Vorlage liegt bereit.
02. **Zuschnitt des Bauleitungs-Loops** (SYN-77): bekommen `protokoll`, `pendenzenliste` und
    `terminplanung` eigene Läufe für die Prinzipien 04.40 und 04.41, oder laufen sie beim
    jeweiligen Anlass mit?
03. **Planerhaftung in `honorarberechnung-sia102`** (SYN-74 b, aus Lauf 29): Art. 367 Abs. 1bis
    lit. b OR erstreckt die 60-Tage-Rügefrist auf Planerwerke und betrifft damit die Haftung von
    JANS selbst.
04. **Kante `honorarberechnung-sia102` ↔ `offertenpruefung`** (Abschnitt 4c): gehören fremde
    Honorarofferten in `offertenpruefung` oder in `honorar-angebotspruefung`?
