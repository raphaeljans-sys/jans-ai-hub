# Synergie-Lauf 25 — 01.09.2026 (Tagestakt)

**Delta-Basis** 31.08.2026 17:10 (Lauf 24) · **Fenster** 24,0 h · **Modus** leichtgewichtig, inline,
kein Fan-out.

## Schritt 0 — Uhr und NAS

NAS gemountet (`//raphaeljans@192.168.1.10/daten on /Volumes/daten`). Stationsuhr **17:10 CEST**,
juengster nativer Synology-Zeitstempel **17:00:06** (Selfcommit-Log) und **17:00:01**
(NAS-HEAD `ae644e967`). Abweichung unter zehn Minuten, kein Nachstellen noetig.

**Transienter Mount-Abriss im Lauf.** Gegen 17:2x scheiterte ein Zugriff auf
`rules/auto-verbesserungen.md` mit «No such file or directory»; `mount | grep -i daten` zeigte den
Mount unmittelbar danach wieder intakt, `/Volumes/daten-1` existiert auf dieser Station nicht. Das
ist die Idle-Stall-Signatur nach Chronik 260831b (59 Abrisse am 31.08.), nicht der
Fremdmontage-Zustand aus SYN-64. Kein Eingriff noetig; der Vorfall ist zum Beleg fuer SYN-67
geworden.

## Schritt 1 — Delta, beidseitig gemessen

NAS und GitHub laufen seit dem 29.08. auseinander, darum beide Seiten. **Gemessen nativ per `ssh`
auf der Synology**, nicht per `git` ueber SMB (Rule `sync-kanonische-quelle`, Chronik 260729).

| | NAS-Repo | `origin/main` |
|---|---|---|
| Kopf | `ae644e967`, 01.09. 17:00 | `66df04125`, **31.08. 06:12** |
| Commits im Fenster | **122** | **0** |

**Gegenprobe bestanden** auf der NAS-Seite: der neueste Commit im gefilterten Ergebnis ist der
tatsaechliche HEAD. Auf der GitHub-Seite ist die Null **kein Werkzeugartefakt, sondern der Befund
selbst** — der Kopf steht seit ueber 35 Stunden still.

**Strukturelles Delta beidseitig leer.** `--diff-filter=A` ueber `skills/ agents/ rules/
connectors/ services/ commands/`: **keine neue Datei**. Geaendert wurden zwei Rules, beide auf der
NAS-Seite: `rules/betrieb-chronik.md` (5 Commits) und `rules/jans-dna-facetten.md` (1 Commit). Kein
neuer Skill, Agent, Connector, Service, Command, keine neue KB. Damit keine Contract-Pflichtfelder,
keine Rollen-Zeile, keine Allowlist-Freigabe und kein @-Import zu pruefen. Der Frueh-Ausstieg nach
Schritt 2 greift wegen der zwei Rule-Aenderungen nicht.

**KB-Bewegung (reine Inhaltsarbeit, nicht aufgerollt):** `twin` (31), `energie` (17),
`immobilienbewertung` (15), `planungsgrundlagen` (10), `baurecht` (9), `koordination` (7,
Eigenrauschen Lauf 24), `spec` (3), `claude-code` (3), `architekten-synobsis` (2), `normen` (1).

## Schritt 3 — Pruefung

### Die beiden Rule-Aenderungen: beide sauber

`rules/betrieb-chronik.md` **2/2** (Commit `3e6c76732`): «dreimal» → «viermal» im eigenen Eintrag
desselben Laufs. Reine Zahlkorrektur. Die uebrigen vier Commits sind reine Anhaenge (+14, +17, +34,
+39, alle −0).

`rules/jans-dna-facetten.md` **6/5** (Commit `5141c74e3`): gestrichen wurden ein Beispielzusatz
(«acht Empfaenger, einer zustaendig») und ein Rueckverweis auf die Zeilenregel, die 40 Zeilen
hoeher unveraendert steht. Commit-Message nennt es «zweite Verdichtungsrunde» — trifft zu.
**Dritter Lauf in Folge, in dem eine Zeilenbilanz mit Loeschungen sich als harmlos erweist**; der
Merksatz aus Lauf 24 bleibt trotzdem gueltig, weil die Pruefung ihn jedes Mal erst erzeugt.

### Neue Befunde

**SYN-66 — die B6-Bestandsaufnahme nennt einen Startpfad, es sind vier.** `docs/konzepte/
260830-Laufzeitschicht-Umbau/SPEC.md` Z. 27 belegt B6 allein an `dispatch-run.sh` Z. 33. Drei
weitere Starter pinnen das Arbeitsverzeichnis genauso auf den SSD-Klon und kommen in der Spec nicht
vor (`grep -c "arbeits-weiche"` = 0): `vollgas-runner.sh` Z. 73/162, `arbeits-weiche.sh` Z. 186 und
Z. 191, `nachtschicht-run.sh` Z. 155. Alle vier starten Claude-Laeufe — im Unterschied zu den sechs
legitimen Treffern desselben Greps, die im Klon arbeiten muessen. Aktiv: `logbuch/vollgas/RADAR.md`
traegt 01.09. 17:15. Nur gemeldet, kein Eingriff.

**SYN-67 — der stille CWD-Fallback lebt nur in der nicht importierten Chronik.**
`rules/betrieb-chronik.md` 260901 (Commit `caf46faaa`, +14/−0) beschreibt, wie ein fehlgeschlagenes
`cd` auf den NAS-Pfad die Shell nicht abbricht und relative Pfade still im SSD-Klon greifen — beim
Lesen unauffaellig richtig, beim Schreiben spurlos verloren. Der Grundkontext kennt nur die
Lese-Haelfte (`auto-verbesserungen` 260730b Ziff. 2); ueber alle sechs importierten Dateien nach
`CWD|relative[rn]? Pfad|Arbeitsverzeichnis|cd .*exit 1`: **0 Treffer**. **Ehrliche Zuspitzung:** in
`scripts/` ist das Muster praktisch abwesend (0 Zeilen ungesichertes `cd` in NAS-Pfade) — der
Befund trifft die Session-Schicht, und genau dafuer ist der Grundkontext zustaendig. Der
Mount-Abriss aus Schritt 0 ist der Selbstbeleg: sichtbar wurde er nur, weil der Zugriff absolut
adressiert war.

### Aufgerollt (Beteiligter bewegt)

- **SYN-43** — `jans-dna-facetten.md` bewegt: neue Apparat-Regel 260901, importiert nicht
  nachgetragen (0 Treffer). Muster unveraendert.
- **SYN-64** — Waechter unbewegt, `daten-[0-9]` weiterhin in keinem Script. Akuter Zustand auf
  dieser Station geheilt, Konstruktionsluecke offen.
- **SYN-65** — verschaerft: Divergenz **592/267** (war 471/267), Fehlversuche **681** (war 555),
  und **0 Commits nach GitHub** im ganzen Fenster. Drittes Mal von einem Synergie-Lauf gefunden,
  nie vom Waechter.

**Nicht aufgerollt (Compounding):** SYN-01 bis SYN-63 im Uebrigen — kein Beteiligter im
strukturellen Delta.

## Schritt 4 — Geschrieben

| Datei | vorher | nachher | geloescht |
|---|---|---|---|
| `SYNERGIE-REGISTER.md` | 1218 Z. / 65 Tab. | 1220 Z. / 67 Tab. | **0** |
| `rules/sync-kanonische-quelle.md` | 50 Z. | 62 Z. | **0** |

Alle Anker vor dem Schreiben auf Trefferzahl 1 assertiert, kein globales Suchen-und-Ersetzen,
Umfang gegen Sicherungskopien im Scratchpad gemessen (nicht per `git` ueber SMB). Die drei
Statusnachtraege an SYN-43/64/65 sind rein additiv ans Zeilenende gesetzt; Zeichenlaenge je Zeile
gemessen: 3140→4221, 2478→3040, 3061→4059 — alle drei gewachsen.

## Bemerkung zur Sendeschwelle

Der Lauf bleibt still (Rule `auto-verbesserungen` 260803). Der GitHub-Stillstand ist ein
Betriebsbefund mit realem Backup-Risiko, aber er ist als SYN-65 seit zwei Laeufen erfasst und
steht im Fristen-Register; ein P1-Blocker fuer diesen Loop ist er nicht. Der `hub-chef` traegt
Wesentliches ins Tagesbriefing.
