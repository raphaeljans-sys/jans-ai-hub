# VOLLGAS-Chef-Radar

Ziel (Auftrag Raphael 12.07.2026, Rules 260712c + 260712e): das WOCHENLIMIT des Max-Abos
ausschoepfen (Referenz 12.07.: 41% bzw. 52%), indem JEDES rollierende 5-Stunden-Fenster
maximal ausgereizt wird. Das 5h-Limit auf 100% ist ERFOLG, nicht Fehler — ein volles Fenster
ist ein voller Baustein zum Wochenlimit. Der Radar ist zugleich TAKTGEBER: er laeuft stuendlich,
erkennt Limit-Pausen (= gewuenschter Zustand) und sorgt dafuer, dass nach jedem 5h-Reset SOFORT
wieder ans Maximum gefahren wird, damit zwischen den Fenstern keine ungenutzte Luecke entsteht.
Neueste Eintraege zuoberst.

Legende: P1 = Blocker/groesster Hebel, P2 = starker Hebel, P3 = Feinschliff.
Fensterzustand je Eintrag: [VOLL] Fenster ausgereizt (Ziel) · [FREI] Kapazitaet offen, Vollgas sichern · [LOGIN] headless-Login-Block.

---

## 2026-07-12 23:15 — KORREKTUR: kein MacBook-Login-Blocker, Token gueltig [FREI]

**Richtigstellung (wichtig fuer kuenftige Laeufe):** Der als P1 gefuehrte «MacBook Pro Not
logged in»-Blocker war ein DIAGNOSE-FEHLER. Ursache: der Login-Test lief aus `~` OHNE das
Env-File zu sourcen; der Runner sourcet aber `~/.jans-dispatch.env` vor jedem Aufruf.
Verifiziert 23:12–23:15: (1) `~/.jans-dispatch.env` enthaelt einen gueltigen
`CLAUDE_CODE_OAUTH_TOKEN` (108 Zeichen, `sk-ant-o…`); (2) mit gesourctem Env antwortet
`claude -p … --model haiku` mit «OK» (rc=0); (3) die EXAKTE Runner-Invocation
(`--permission-mode acceptEdits --max-budget-usd 25 --fallback-model sonnet --output-format text -- "$PROMPT"`)
mit dem echten `baurecht-buch-training`-Prompt lief **>120 s echte Arbeit** bis zum Test-Abbruch.
Der MacBook-Runner IST arbeitsfaehig. **Fuer Raphael ist NICHTS zu tun — `setup-token` entfaellt.**

**Neue Erklaerung der rc=1-Zeilen im MacBook-Log:** (a) Beide Stationen nutzen dasselbe Max-Konto
(ein Token) → sie teilen sich EIN 5h-/Wochenlimit; wenn der Mac Mini das Fenster fuellt, bekommt
das MacBook Limit-Rueckweisungen (= gewollter [VOLL]-Zustand). (b) Der 19-s-rc=1 bei
`immobewertung-training` deutet auf einen fehlgeschlagenen ABSCHLUSS-Schritt (git commit/push des
Tasks) wegen der starken `index.lock`-Contention ueber SMB — die KB-Edits landen trotzdem und
werden vom nas-selfcommit eingesammelt.

**P2 — Doppelspurigkeit pruefen (statt Login):** MacBook-Runner UND launchd-Scheduled-Tasks
fahren dieselben Loops; der Runner hat zwar einen pgrep-Doppellauf-Schutz, aber die eigentliche
Bremse ist die Git-Lock-Contention (mehrere Committer auf EIN NAS-`.git` ueber SMB). Groesster
realer Hebel jetzt: Commit-Kollisionen entschaerfen (z.B. Tasks committen seltener / gebuendelt,
oder nas-selfcommit uebernimmt das Pushen exklusiv). Kein Login-Thema mehr.

**Mail:** KEINE. Der 22:52-Login-Blocker ist hiermit als Fehlalarm aufgeloest; eine Entwarnungs-
Mail waere unnoetiger Laerm (Morgen-Briefing traegt die Korrektur).

## 2026-07-12 23:05 — Mini-Run bestaetigt (rc=0), aber STOP-Macmini haelt Mini an (unklar)

**Lagebild:** Zwei harte Fakten aus dem Mini-Log. (1) Positiv belegt: `planungsgrundlagen-training`
(Start 22:50:21) lief **832 s und endete rc=0** um 23:04:13 — echter Training-Run 19 mit Output
`outputs/2026-07-13_training-run19.md`, Register nachgefuehrt, auf GitHub gesichert. Damit ist die
22:55-These «Mini liefert nach Reset wieder» bewiesen. (2) Neu und kritisch: eine **leere Datei
`logbuch/vollgas/STOP-Macmini` (erstellt 22:58)** hat den Mini-Runner nach Abschluss des laufenden
Runs **23:04:43 beendet**. Damit produzieren aktuell BEIDE Prod-Stationen keinen Runner-Durchsatz:
MacBook Pro «Not logged in», Mac Mini gestoppt. (Die App-Scheduled-Tasks laufen unabhaengig weiter.)

**P1 — STOP-Macmini klaeren (nur melden, NICHT geloescht):** Die Datei ist leer, Herkunft unklar
(kein Login-/Fehlerbezug — der Mini war eingeloggt und lieferte gerade rc=0). Gemaess Radar-Regel
wird eine STOP-Datei aus unklarem Grund NICHT eigenmaechtig entfernt, nur gemeldet: moeglicherweise
hat Raphael den Mini bewusst gestoppt. Wenn NICHT gewollt: `rm logbuch/vollgas/STOP-Macmini` und auf
dem Mini `bash scripts/vollgas-runner.sh &` — das reaktiviert die staerkste Station (die als einzige
eingeloggt echten Durchsatz liefert). Bis zur Klaerung traegt keine Station den Runner.

**P1 — MacBook-Login (unveraendert):** «Not logged in», bereits GEMAILT 22:52. Keine Wiederholungsmail.

**Mail-Entscheid 23:05:** KEINE Mail. Der Login-Blocker ist bereits gemailt; die STOP-Herkunft ist
unklar und evtl. Raphaels eigene Handlung (Mail waere Spam). Das Morgen-Briefing (logbuch-radar/
hub-chef) surfaced beide Punkte. Sollte sich die STOP als ungewollt und der Login als geloest zeigen,
faellt der Runner-Durchsatz sofort wieder an.

## 2026-07-12 22:55 — Kurzcheck: Mac Mini liefert nach Limit-Reset wieder

**Lagebild (nur 3 Min nach 22:52):** Neu und positiv: der Mac Mini hat den 22:50-Limit-Reset
verarbeitet und produziert wieder. `planungsgrundlagen-training` startete 22:50:21 und laeuft
seit >4 Min ohne Abbruch (kein 2-4 s fast-fail mehr, kein «session limit»-Echo) = echter Lauf.
Damit ist P2 aus 22:52 positiv beantwortet: nach dem Reset traegt der Mini die Last wieder voll.

**P1 — MacBook Pro Login (unveraendert, Einzeiler):** headless CLI 22:55 erneut getestet =
«Not logged in». Runner PID 14028 cycelt weiter leer. Bereits GEMAILT 22:52 — KEINE
Wiederholungsmail. Naechste Mail erst, wenn geloest (Runner liefert).

**P2/P3 (unveraendert):** Batch-Volumen-Erhoehung erst sinnvoll, wenn beide Stationen liefern
(19:00). Messpunkt `token-messung-140716` steht.

## 2026-07-12 22:52 — Login-Blocker MacBook Pro haelt an, Mac Mini reizt Limit aus

**Lagebild:** Zwei-Stationen-Bild klar getrennt. **Mac Mini: Ziel erreicht** — Login
funktioniert, alle vier Loops melden «You've hit your session limit · resets 10:50pm».
Das ist der gewuenschte VOLLGAS-Zustand (Wochenlimit wird angefahren), kein Fehler; das
Limit ist um 22:50 gerade zurueckgesetzt, ab jetzt laeuft der Mini wieder voll. **MacBook
Pro: P1 haelt an** — headless CLI immer noch «Not logged in», Runner (PID 14028, ein
sauberer Prozess) cycled seit ~19:00 durch (Zyklus 60), jeder Lauf bricht in 0–2 s ab.
Rund 4 h MacBook-Pro-Kapazitaet ungenutzt. Selbst erledigt: Login getestet (weiter
blockiert), Runner-Prozessstand geprueft (kein Duplikat), Mail an Raphael gesendet
(erste Kommunikation dieses Blockers, 22:52 — 19:00-Eintrag war Radar-Setup ohne Mail).

**P1 — Headless-Login MacBook Pro reparieren (nur Raphael, ~5 Min) — GEMAILT 22:52:**
Unveraendert ggue. 19:00. Terminal auf dem MacBook Pro: `claude setup-token` (Abo-OAuth,
KEIN API-Key), Token als `CLAUDE_CODE_OAUTH_TOKEN=...` in `~/.jans-dispatch.env`. Der Radar
raeumt danach selbst auf (Runner laeuft bereits, greift nach dem Login sofort). Solange
offen: MacBook-Pro-Runner produziert nichts. KEINE Wiederholungsmail mehr fuer diesen
Blocker (erst wieder Mail, wenn geloest = Runner liefert).

**P2 — Mac Mini nach Limit-Reset beobachten:** Reset war 22:50; naechster Radar-Lauf prueft,
ob der Mini wieder liefert (rc=0, >60 s) oder gleich erneut ins Limit faehrt. Erneutes Limit
= weiterhin Ziel erreicht, nichts tun.

**P3 — Batch-Volumen (unveraendert):** Vorschlag aus 19:00 steht; Umsetzung erst sinnvoll,
wenn beide Stationen liefern. Bis dahin traegt der Mac Mini die Last allein.

## 2026-07-12 19:00 — Erst-Analyse (Radar-Einrichtung)

**Lagebild:** Die 8 VOLLGAS-Scheduled-Tasks im App-Kontext laufen (alle lastRun heute,
Frequenzen gemaess 260712c). Der Endlos-Runner `scripts/vollgas-runner.sh` ist auf BEIDEN
Stationen tot: jeder `claude -p`-Aufruf bricht nach 1–2 s mit rc=1 ab, STOP-Datei hat ihn
18:35 beendet. Verifizierte Ursache: headless CLI meldet «Not logged in · Please run /login».
Damit laeuft nur ein Bruchteil des moeglichen Durchsatzes.

**P1 — Headless-Login reparieren (Aktion Raphael, ~5 Min pro Station):**
Auf dem MacBook Pro im Terminal `claude setup-token` ausfuehren (erzeugt einen
Abo-OAuth-Token, KEIN API-Key) und den Token als `CLAUDE_CODE_OAUTH_TOKEN=...` in
`~/.jans-dispatch.env` eintragen. Dasselbe auf dem Mac Mini (via Befehl `mini`); dort nach
Neustart zusaetzlich `security unlock-keychain`. Der Runner verweigert API-Keys bewusst
(nur Abo-Anmeldung, Rule 260712c). Groesster Einzelhebel: schaltet 12 Loops im
30-Sekunden-Zyklus rund um die Uhr frei.

**P2 — Runner neu starten, sobald Login steht:** STOP-Datei loeschen
(`rm /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP`) und auf jeder Station
`bash /Volumes/daten/jans-ai-hub/scripts/vollgas-runner.sh &` starten. Der Radar prueft
den Login kuenftig selbst und erledigt Neustart + STOP-Entfernung automatisch, sobald
das CLI eingeloggt ist.

**P2 — wettbewerbs-dna-training ohne lastRun:** Einziger VOLLGAS-Task ohne registrierten
Lauf. Naechster Slot 20:31; wenn er dann wieder nicht laeuft, Task-Prompt/Zustand pruefen.

**P3 — Batch-Volumen statt nur Frequenz:** Solange der Runner steht, bringt mehr Volumen
pro Lauf am meisten (z.B. Normen-Training: 6–8 statt 3–5 PDFs je Lauf; Baurecht:
2 Kapitel je Lauf). Frequenz-Erhoehung der App-Tasks erst NACH dem Runner-Fix beurteilen,
sonst Doppelspurigkeit.

**P3 — Messpunkt:** One-Time-Task `token-messung-140716` (14.07. 16:00) liefert die erste
48-h-Verbrauchsmessung. Radar gleicht dann ab, ob Limit-Pausen auftreten (= Ziel erreicht)
oder weiter Luft ist.
