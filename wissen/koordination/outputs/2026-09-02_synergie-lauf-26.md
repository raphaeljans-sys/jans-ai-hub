---
titel: Synergie-Lauf 26 (Tagestakt)
datum: 2026-09-02
delta_basis: 2026-09-01 17:10
fenster_h: 24.0
commits: 133
neue_befunde: SYN-68, SYN-69
aufgerollt: SYN-43
---

# Synergie-Lauf 26 — 02.09.2026

## Schritt 0: Uhr und NAS

NAS gemountet. Stationsuhr `2026-09-02 17:10 CEST`, nativer Synology-Log
`sync-tasks/log/selfcommit-202609.log` letzter Eintrag `2026-09-02T17:00:07 push OK
(905f2e1cf)`. Deckungsgleich, keine Schieflage; der Lauf traegt das reale Datum.

## Schritt 1: Delta mit Gegenprobe

Delta-Basis 01.09.2026 17:10 (Fussnote Lauf 25). Fenster 24,0 h, **133 Commits**.
Gegenprobe bestanden: aeltester Commit im Fenster `45f413cf2` (01.09. 17:15) schliesst
lueckenlos an, juengster ist der HEAD `905f2e1cf` selbst. Gemessen wurde nativ im
SSD-Klon, dessen HEAD mit dem NAS-Kopf uebereinstimmt — nie `git` ueber SMB.

Strukturelles Delta: **0 neue** Bausteine in `skills/ agents/ rules/ connectors/ services/
commands/`. **7 geaenderte** Struktur-Dateien:

01 `rules/betrieb-chronik.md` (3 Commits, nicht importiert)
02 `rules/auto-verbesserungen.md` (+21/−0, neuer Eintrag 260902)
03 `rules/jans-dna-facetten.md` (14/15, nicht importiert)
04 `rules/sync-kanonische-quelle.md` (+12/−0, Eigenrauschen Lauf 25)
05 `skills/wettbewerb/SKILL.md` (3/1)
06 `skills/kostenkontrolle/SKILL.md` (2/1)
07 `agents/flaechen-nachweis.md` (1/1)

Positionen 05 bis 07 stammen aus **einem** Commit (`6c34e2db6`, normen Run 77).

## Schritt 3: Pruefung

### Neuer Baustein ausserhalb der sechs Verzeichnisse

`scripts/claude-session-waechter.sh` (Commit `b079d6d2b`, 171 Zeilen). Verdrahtung
vollstaendig: Kettenaufruf in `speicher-waechter.sh` Z. 211-221, Rule-Verankerung
`auto-verbesserungen` 260902 (importiert), Chronik 260902, Log-Ziel
`logbuch/speicher/<Station>-sessions.log`.

Die Rule behauptet «beide Stationen». **Gemessen statt geglaubt:** `ssh mini` bestaetigt
`ch.jans.speicher-waechter` geladen (`launchctl list` Treffer 1) und die Scriptkopie im
dortigen SSD-Klon vorhanden. Die Behauptung haelt.

Keine Zeile in `logbuch/rollen/rollen-map.tsv` — geprueft und **nicht** als Befund
gezaehlt: `speicher-waechter.sh` und `kontingent-waechter.sh` fehlen dort ebenso, der
Registertyp `script` fuehrt insgesamt nur fuenf Zeilen (arbeits-weiche, rollen-bilanz,
nutzungs-radar, schutzmechanik-selbsttest, vorgaenge-bilanz). Das ist das Muster der
ganzen verketteten Waechter-Familie, kein neuer Drift dieses Fensters.

### SYN-68 — Der Drift-Waechter sieht die verketteten Waechter nicht

Check 6 in `scripts/schutzmechanik-selbsttest.sh` (Z. 148-170) erntet Scriptnamen aus
`~/Library/LaunchAgents/*.plist` und vergleicht nur diese md5-weise NAS gegen SSD.
Eigene Messung 02.09.: die Ernte liefert **10 Namen**; `kontingent-waechter.sh` und
`claude-session-waechter.sh` sind nicht darunter, weil sie keine eigene Plist haben.
Beide werden mit **SSD-Vorrang** aufgerufen — genau das Startmuster, dessen Drift Check 6
abfangen soll.

Adversariale Gegenpruefung: beide Scripts sind heute md5-identisch NAS/SSD, es liegt
**keine** Drift vor. Der Befund ist ein blinder Fleck, kein Defekt. Er wiegt trotzdem,
weil `claude-session-waechter.sh` das einzige zerstoerende Glied der Kette ist und die
Sync-Divergenz aus SYN-65/66 offen ist — der Pull-Zyklus, auf den der blinde Fleck
vertraut, ist derzeit nicht verlaesslich.

Der Selbsttest wurde **nicht** angefasst: Schutzmechanik-Scripts fallen unter
«Systemdienste/Persistenz» (Rule `interaktive-eingriffe`) und gehoeren nicht in einen
unbeaufsichtigten Aufsichtslauf.

### SYN-69 — Der Wachstums-Riegel zahlt jetzt mit Regeln

Am 02.09. verschwand aus dem kompilierten Don't-Block der Marker «eine Folge einzeln zu
beantwortender Fragen als offene Bullet-Liste tarnen». `wissen/twin/wiki/arbeitsweise.md`
Z. 4057-4060 nennt beide Gruende offen: Deckung durch die 260824-Regel im Do-Block, und
«die Streichung diente zugleich dem Riegel (Reserve von 14 B auf 29 B)».

Deckungszusage geprueft, sie haelt nicht auf der Ebene der Konsumenten. Die 260824-Regel
(`rules/jans-dna-facetten.md` Z. 378-381) sagt, die Drift sei Vereinheitlichung und
Raphael entscheide je Block neu — kein Kriterium. Die naechstliegende Deckung ist die
260804-Regel (Z. 348-354), und sie prueft eine andere Sache: nummeriert wird, worauf
spaeter zurueckverwiesen wird, nicht, was einzeln zu beantworten ist. Das explizite
Kriterium steht nur noch im Wiki-Artikel (Z. 60-66) — den lesen die Konsumenten nicht.

Riegelstand selbst nachgerechnet (Extraktion aus `build_dna.py` lesend nachgebaut, ohne
zu schreiben): Auto-Block **33'922 B von 34'000**, Reserve **78 B**. Je Facette: stimme
7663, arbeitsweise 6574, beziehungsregister 5961, haltung 5926, fachsignatur 4978,
denken 2719. Damit ist der offengebliebene Punkt (b) aus Lauf 21 belegt: der Loop misst
nur die sechs Do/Don't-Sektionen, die Datei selbst ist 35'197 B gross.

Der Kopfkommentar von `build_dna.py` Z. 57-60 hat diesen Zustand am 18.08. selbst als
Grenze benannt: bei 29 B Reserve wurde 30'000 auf 34'000 angehoben, weil «die naechste
Runde Regeln geloescht haette statt Doppelungen — der Punkt, an dem der Riegel schadet
statt schuetzt». Zwei Wochen spaeter ist dieselbe Reserve erreicht, und diesmal wurde die
Regel geloescht, statt den Entscheid erneut vorzulegen.

### Geprueft, kein Befund

**(a) Rueckkante SIA 416.** `normen` Run 77 setzte den `speculative`-Vermerk bei vier
Konsumenten. Gegenprobe ueber alle Fundstellen von `sia-416-2003` ausserhalb der KB
`normen`: **alle** Struktur-Konsumenten sind gestempelt. Der einzige ungestempelte Fund
(`wissen/architektur-fachwissen/wiki/kostenkennwerte-schulanlage-leutschenbach.md`)
zitiert das Destillat nur fuer das Metadatenfeld `ersetzt`, nicht fuer Werte aus dem
Figurenanhang — unerheblich.

**(b) Zeilenbilanz 14/15.** 14 der 15 Loeschungen sind Verdichtung nach neuer Beleglage
260902: der Carve-out «im laufenden Vergabeverfahren KEIN Service-Satz» ist fuer Abgebot
und Antrag ans Amt widerlegt und wurde mit Querverweis umformuliert. Vierter Lauf in
Folge, in dem eine Zeilenbilanz mit Loeschungen ueberwiegend harmlos ist; die eine
verbleibende Loeschung ist diesmal echt und wurde zu SYN-69.

**(c) Sync-Divergenz.** Wie in Lauf 23-25 kein eigener Synergie-Befund; im Fristen-Register
gefuehrt, Ursachenseite als SYN-66 erfasst. Neu ist allein ihre Rolle als Grund in SYN-68.

## Schritt 4: Geschrieben

- `SYNERGIE-REGISTER.md`: SYN-68, SYN-69, Statusnachtrag SYN-43, Fussnote Lauf 26.
  1269 → 1271 Zeilen vor der Fussnote, 67 → 69 Tabellenzeilen, **null geloeschte Zeilen**
  (Diff-Gegenprobe gegen Sicherungskopie). SYN-43-Zeile 4220 → 4735 Zeichen, additiv.
- `wissen/twin/wiki/QUESTIONS.md`: Flag zu SYN-69 angehaengt (Cross-KB-Bringschuld).
- `CHANGELOG.md`: Eintrag zuoberst.

Keine Mail (Loop still by default). Kein P1-Blocker. Kein Service-ENTWURF, kein
Katalog-Bezug.
