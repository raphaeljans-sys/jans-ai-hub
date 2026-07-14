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

## 2026-07-14 06:51 — Fenster heute Nacht [VOLL] getroffen, jetzt [FREI]; Ultra-Loop wettbewerbs-dna idelt (P2)

**Fensterzustand [FREI], voriges Fenster war [VOLL]:** Um 04:48-04:49 haben mehrere MacBook-Loops
(`wettbewerbs-layer-nachbrenner`, `wettbewerbs-dna-training`, `baurecht-buch-training`) «You've hit
your session limit · resets 4:50am» getroffen — das rollierende 5h-Fenster war also voll ausgereizt
(Ziel erfuellt). Nach dem Reset 04:50 rollt der Runner seither lueckenlos weiter, kein Reset-Loch;
seit ~05:00 kein neuer Limit-Treffer. Login-Signal wie bekannt: nacktes `claude -p` → «Not logged in»
(Test-Artefakt, Token-Zeile in ~/.jans-dispatch.env vorhanden), Runner selbst rc=0 durchgehend.

**Durchsatz stark:** 27 Commits in 90 Min, 55 in 6 Std, rc=0 auf beiden. MacBook Zyklus laeuft
(wettbewerbs-layer-nachbrenner aktiv), Mac Mini Zyklus 319 (energie Run 60 fertig → normen-mini).
Inhaltlich echt: energie **Solarpflicht 26/26 Kantone abgeschlossen** (Run 60, `9bfc2695`); normen-mini
Run 19 DIN/VSS/RAL-Familie komplett retro-verifiziert; planungsgrundlagen Run 39/40 Recht-Norm + PV.
Kein STOP, keine Doppellaeufe.

- **P2 (NEU) — Ultra-Fokus-Loop `wettbewerbs-dna-training` idelt (~10s, «keine Anfrage»):** Auf 2 der
  letzten 3 echten Laeufe (05:31, 06:39; 04:48 war ein echter Limit-Treffer) bricht der Loop nach
  ~10s mit «I don't see an actual question / keine konkrete Anfrage» ab, obwohl seine SKILL.md voll
  bestueckt ist (23 Zeilen, Etappe-3-Auftrag). Damit produziert ausgerechnet der laut Rule 260713 als
  ULTRA gesetzte Token-Fokus-Loop keine Last; die echte Wettbewerbs-Arbeit traegt derzeit allein der
  `wettbewerbs-layer-nachbrenner` (B3 Schulbau 23/23 established). Der Runner uebergibt die SKILL.md
  identisch wie bei den funktionierenden Loops (`-- "$PROMPT"`), das Idle ist also intermittierend, nicht
  strukturell. Empfehlung: bei naechster interaktiver/ruhiger Gelegenheit einen expliziten «Fahre den
  naechsten offenen Baustein aus ETAPPE-3.md aus»-Auftakt in die SKILL.md voranstellen (robuster gegen
  Konversations-Antwort), NICHT mitten im laufenden Zyklus editieren (Byte-Offset-Risiko). `spec-training`
  zeigt dasselbe Muster (10s, «keine Anfrage») — gleicher Fix.
- **P3 (unveraendert) — energie M2 «eigener Skill energie?»:** jetzt 16 Laeufe ueberfaellig; braucht
  Raphaels Entscheid interaktiv, kein Mail-Anlass.
- **P3 (unveraendert) — normen-mini Budget-Cap 25 USD / normen-training-nacht Redundanz-Slot:** nur
  beobachten; Cap-Treffer unter VOLLGAS = gewuenschter Voll-Verbrauch, kappt bisher nach Abschluss.

Kein Mail-Anlass: keine neue P1, Login laeuft, Fenster wird gefuellt.

---

## 2026-07-14 05:51 — Beide Stationen laufen lueckenlos, starker Durchsatz, keine P1 [FREI]

**Fensterzustand [FREI]:** Login OK (`claude -p` mit gesourctem OAuth-Token → «OK»; das nackte
«Not logged in» ohne Token bleibt der bekannte Test-Artefakt). Der Runner rollt sauber durch die
Nachtfenster ohne Reset-Loch — die Taktgeber-Vorgabe ist erfuellt. Login-Block war am 13.07
(19:53/20:52) geloest und dokumentiert; keine neue oder offene P1.

**Durchsatz stark, beide Stationen tragen:** **18 Commits in 90 Min, 53 in 6 Std**, rc=0 auf
beiden. MacBook (Zyklus 110): baurecht → immobewertung (aktuell, Kind PID 80949 aktiv) → normen-nacht
→ spec → twin-fidelity (Mailbatch 37) → twin-mail → wettbewerbs-dna → wettbewerbs-layer-nachbrenner.
Mac Mini: energie Run 58, normen-mini Run 18 (Abschluss), planungsgrundlagen Run 38+39, synobsis
2. Nacht-Lauf.

**Inhaltlicher Fortschritt echt (nicht Wiederholung):** wettbewerbs-dna Etappe-3-Schulbau **B3-Ziel
erreicht (23/23 established)** — naechster Schritt B4 (Muster jury-argumente-schulbauten auf alle 23
Berichte, groessere Refuter-Welle); energie Solarpflicht auf **14/26 Kantone** erweitert (neu
VD/GE/TI/SO/VS/SH); normen-mini Run 18 Retro-Verifikation DIN/VSS-Restbestand abgeschlossen +
Inventar-Bookkeeping nachgezogen; planungsgrundlagen Run 39 Recht/Norm AHB-Stadt-ZH + Brandschutz
BSV-2026-Refresh.

**Prozess-Sanity (kein Problem):** Ein Haupt-Runner PID 4210 (Parent, seit 13.07 10:49, 19 h),
dessen per-Loop-Subshell-Kind PID 80948 (PPID 4210) und darunter das aktive `claude`-Kind PID 80949
(immobewertung). KEIN Duplikat, keine STOP-Datei, Log strikt sequenziell.

**Hebel-Priorisierung:** Fenster wird gefuellt, aber Login gibt «OK» = aktuell Kapazitaet frei; kein
Leerlaufloch, kein Stall → kein Selbst-Eingriff (Loops nicht mitten im Zyklus editieren,
Byte-Offset-Risiko). Der Batch-Volumen-Hebel wird nach der Messung `token-messung-140716` (heute
16:00) beurteilt.

- **P3 (unveraendert) — normen-mini Budget-Cap 25 USD:** Run 18 traf «Exceeded USD budget (25)»,
  hatte aber vorher den Abschluss committet. Unter VOLLGAS ist ein getroffener Budget-Cap gewuenschter
  Voll-Verbrauch, kein Fehler; nur beobachten, dass der Cap nicht mitten in unfertiger Arbeit kappt.
- **P3 (unveraendert) — energie M2 «eigener Skill energie?»:** jetzt 14 Laeufe reif, braucht Raphaels
  Entscheid in einer interaktiven Session; kein Mail-Anlass.
- **P3 (unveraendert) — normen-training-nacht Leerlauf-Slot (MacBook):** teils redundant zu
  normen-training/-mini; Prompt-Zuweisung beim naechsten ruhigen Lauf pruefen.
- **P3 (unveraendert) — M365-MCP-Connector-Ausfall / immobewertung langsamer SMB-Git-Zugriff:** beide
  nur beobachten, Apple-Mail-Fallback bzw. rc=0-Abschluss belegen «kein Blocker».

Kein Mail-Anlass: keine neue P1, Login-Block laengst geloest.

---

## 2026-07-14 00:50 — Neues 5h-Fenster laeuft lueckenlos an, beide Stationen voll, keine P1 [FREI]

**Fensterzustand [FREI]:** Login OK (`claude -p` mit gesourctem OAuth-Token → «OK»; das nackte «Not
logged in» ohne Token bleibt ein Test-Artefakt, kein Blocker). Der Runner ist sauber ins neue 5h-Fenster
(ab ~23:50) gerollt: `baurecht-buch-training` startete 00:12:59 und lief die vollen ~18 Min durch
(rc=0, 1107s, Run 43). Kein Reset-Loch zwischen den Fenstern — genau die Taktgeber-Vorgabe.

**Durchsatz stark, beide Stationen tragen:** **19 Commits in 120 Min**, rc=0 auf beiden. MacBook
(Zyklus 63): baurecht Run 43 → immobewertung Run (rc=0, 570s) → aktuell normen-nacht. Mac Mini
(Zyklus 216): energie Run 56+57, normen-mini Run 16 (DIN 1054/1946-4 Q&A), planungsgrundlagen Run 35,
synobsis 853/853. Inhaltlicher Fortschritt echt, nicht nur Wiederholung: DIN 1076/1072/VSS retro-verifiziert
(je 1 Fehler korrigiert), energie um LSV-Waermepumpen-Laermschutz + Solarpflicht AG/BS/GR gewachsen.

**Prozess-Sanity (kein Problem):** Zwei `vollgas-runner.sh` auf dem MacBook, aber KEIN Duplikat —
PID 4210 (Parent, seit 13.07 10:49) ist der Haupt-Runner, PID 28369 dessen per-Loop-Subshell-Kind
(PPID 4210). Log strikt sequenziell, keine STOP-Datei.

**Hebel-Priorisierung:** Fenster wird gefuellt, aber noch nicht sichtbar 100 % (Login gibt aktuell «OK»
= Kapazitaet frei). Kein Leerlaufloch offen, kein Stall — daher kein Selbst-Eingriff noetig (Loops nicht
mitten im Zyklus editieren, Byte-Offset-Risiko). Der Batch-Volumen-Hebel wird erst nach der Messung
`token-messung-140716` (heute 16:00) beurteilt: zeigt sie, dass die 5h-Fenster NICHT regelmaessig
ausgereizt werden, dann Batch-Volumen der Normen-/Baurecht-Loops erhoehen; hitten sie das Limit, ist
alles optimal und nur Kontinuitaet ueber die Fenster sichern.

- **P3 (unveraendert) — energie M2 «eigener Skill energie?»:** jetzt 13 Laeufe reif, braucht Raphaels
  Entscheid in einer interaktiven Session; der Loop kann es nicht selbst loesen. Kein Mail-Anlass.
- **P3 (unveraendert) — normen-training-nacht Leerlauf-Slot (MacBook):** laeuft gerade (START 00:41), beim
  naechsten ruhigen Lauf Prompt-Zuweisung pruefen; teils redundant zu normen-training/-mini.
- **P3 (unveraendert) — immobewertung-Lauf notierte langsamen SMB-Git-Zugriff** (Lauf trotzdem rc=0/570s
  abgeschlossen); nur beobachten, kein Blocker.
- **P3 (unveraendert) — M365-MCP-Connector-Ausfall / normen-Budget 50 / NAS-Remount-Hostname:** wie 20:52.

Kein Mail-Anlass: keine neue P1, die P1-Login war bereits am 13.07 (19:53/20:52) geloest und dokumentiert.

---

## 2026-07-13 20:52 — Stall-Killer-Fix bestaetigt wirksam, MacBook-Fenster fuellt sauber, keine offene P1 [FREI]

**Fensterzustand [FREI]:** Login OK (claude -p mit gesourctem OAuth-Token → «OK»; das nackte «Not
logged in» ohne Token ist ein Test-Artefakt, KEIN Blocker — der Runner arbeitet mit Token). Aktuelles
5h-Fenster (18:50–23:50) wird aktiv gefuellt, noch nicht regelmaessig 100 %. Das vorige Fenster
(13:50–18:50) war um 15:50 sauber ausgereizt (Session-Limit, Reset 18:50) — [VOLL].

**Der Stall-Killer aus dem 19:53-Lauf wirkt — Beleg:** Der haengende `baurecht-buch-training`-Lauf ist
um 19:50 sauber gekappt worden (ENDE rc=143 nach 14209s = ~4 h), genau wie beabsichtigt. Seither
zykliert der MacBook-Runner strikt sequenziell und produktiv durch: immobewertung (rc=0, 507s) →
normen-nacht → spec (rc=0, 368s) → twin-fidelity (rc=0, 354s) → twin-mail (rc=0, 659s) → wettbewerbs-dna
(rc=0, 702s) → aktuell wettbewerbs-layer-nachbrenner. Das ~1 h-Leerlauf-Loch, das der vorige Lauf
diagnostiziert hatte, ist geschlossen. Supervisor-Fix persistent verifiziert (`vollgas-supervisor.sh`
Z. 36–64, `MAX_RUN_SECS=3600`). Der `git log` bestaetigt den Durchsatz: **21 Commits in 90 Min**, beide
Stationen rc=0 (Mini Zyklus 136: energie Run 54 / normen-mini Run 14 / planungsgrundlagen Run 34 / synobsis
853/853; MacBook: baurecht Run 41, twin-mail Batch 44, spec Lauf 13, immobewertung Run 26).

**Prozess-Sanity (kein Problem):** Zwei `vollgas-runner.sh`-Prozesse auf dem MacBook, ABER kein Duplikat —
PID 4210 (Parent launchd, 10 h) ist der Haupt-Runner, PID 70186 ist dessen per-Loop-Subshell-Kind. Das
Log ist strikt sequenziell (keine interleaved/doppelten Zyklen). Die ~20 gleichzeitigen `claude`-Kinder
sind das Sub-Agenten-Fan-out des laufenden wettbewerbs-Loops (Refuter-Verifikation `jury-argumente-
schulbauten.md`, 15 externe + 3 eigene Jury-Reports) — unter VOLLGAS gewuenschter Token-Verbrauch, kein
Doppellauf.

**Hebel-Priorisierung:** Fenster noch nicht regelmaessig 100 % → weniger Leerlauf bleibt der Hebel; nach
dem Stall-Killer sind aktuell keine Leerlauf-Loecher offen. Keine P1.

- **P3 (neu) — Leerlauf-Slot `normen-training-nacht` (MacBook):** liefert intermittierend Leerlaeufe
  (heute 4s/7s/13s «kein Auftrag» rc=1/0, dazwischen ein echter 784s-Lauf). Die echte SIA/VKF-Normenarbeit
  laeuft ohnehin ueber `normen-training` MacBook Run 5 (febcc75d) + `normen-training-mini` auf dem Mini —
  dieser Nacht-Slot ist teils redundant. Unter VOLLGAS ist ein 13s-Nulllauf ein kleiner verschenkter
  Fenster-Slot; Prompt-Zuweisung des Loops beim naechsten ruhigen Lauf pruefen (nicht mitten im Zyklus
  editieren → Byte-Offset-Risiko).
- **P3 (unveraendert) — M365-MCP-Connector faellt systematisch aus** (twin-fidelity-Nebenbefund, Batch 36
  bis heute): Apple-Mail-Fallback greift zuverlaessig, aber an Hub-Chef/Heartbeat melden.
- **P3 (unveraendert) — Leerlauf-Loops:** synobsis 853/853 gesaettigt; normen DIN/VSS/RAL «Basisinventar
  komplett established»; energie M2 «eigener Skill energie?» seit dem 9. Mal eskaliert (braucht Raphaels
  Entscheid, kein Mail-Anlass). Kandidaten fuer Taktreduktion nach der Intensivphase.
- **P3 (unveraendert) — normen-Budget 50 / NAS-Remount-Hostname:** greifen erst ab naechster
  Runner-Generation bzw. Tailscale-Fallback ausstehend.

Kein Mail-Anlass (keine neue oder frisch geloeste P1; die P1 vom 19:53-Lauf war dort schon im selben Lauf
behoben und dokumentiert).

---

## 2026-07-13 19:53 — P1 behoben (haengender Run entblockt) + P2 strukturell geschlossen (Stall-Killer im Supervisor) [FREI]

**Fensterzustand [FREI]:** Session-Limit war um 15:50 erreicht (Reset 18:50, Meldung im MacBook-Log:
«You've hit your session limit · resets 6:50pm») — das Fenster 13:50–18:50 war also sauber ausgereizt
[VOLL-Phase]. Seit 18:50 laeuft ein frisches Fenster; es wird jetzt wieder gefuellt. Mac Mini durchgehend
gesund (Zyklus 134, normen-mini Run rc=0 1020s um 19:53, aktuell planungsgrundlagen). Login OK (rc=0-Laeufe).

**P1 in diesem Lauf selbst behoben — haengender baurecht-Run hat das frische MacBook-Fenster leerlaufen
lassen:** Der MacBook-Runner war seit 15:53 auf EINEM `baurecht-buch-training`-Lauf eingefroren — der Lauf
hing im Session-Limit-Retry (nur 0:05 CPU in ~4 h, 0 % CPU, STAT SN = schlafend). Der Runner-Loop stand
still (Log seit 15:51 nicht mehr geschrieben), also lief das ganze frische Fenster ab 18:50 auf dem MacBook
leer (~1 h verschenkt), waehrend der Mini normal weiterarbeitete. Ursache: der Runner hat einen Token-Budget-
Deckel ($50), aber KEINEN Wall-Clock-Deckel — ein Lauf, der im Retry haengt, verbraucht 0 Token, also greift
der Budget-Cap nie. Den haengenden claude-Prozess (PID 51072) mit SIGTERM gekappt; der Runner hat sofort
ENDE geloggt (rc=143, 14209s) und zykliert wieder (START immobewertung 19:50, CPU-aktiv). MacBook fuellt
das Fenster wieder. **Den gesunden Haupt-Runner NICHT angetastet** — nur das haengende Kind gekillt.

**P2 strukturell geschlossen — Stall-Killer statt nur Symptombehandlung:** Damit dieser Hang nicht wieder
das Fenster frisst, `scripts/vollgas-supervisor.sh` um einen **Wall-Clock-Stall-Killer** ergaenzt: kappt jeden
`claude -p`-Lauf des Runners, der > 60 Min laeuft (`VOLLGAS_MAX_RUN_SECS=3600`; gesunde Trainings enden bei
max ~18 Min, $50-Budget bounded — 60 Min = definitiv haengend). Bewusst in den **Supervisor** gelegt (nicht in
den Runner-Hot-Loop): der Supervisor wird von launchd alle 180 s frisch re-exec'd, also ist die Bearbeitung
gefahrlos (kein Byte-Offset-Corruption-Risiko wie beim Editieren des laufenden Runners), und die Datei liegt
auf dem geteilten NAS-Pfad → **beide Stationen** bekommen den Killer automatisch beim naechsten Tick (≤3 Min).
`bash -n` + Parser-Selbsttest gruen (inkl. Fuehrnull-Oktal-Falle). Der Killer laeuft VOR dem Alive-Check, weil
der haengende Lauf ein Kind des noch lebenden Runners ist.

**Hebel-Priorisierung:** Fenster noch nicht regelmaessig 100 % → mehr Last / weniger Leerlauf bleibt der Hebel;
der Stall-Killer ist genau das (verhindert Fenster-Leerlauf durch Haenger). P1 aktuell keiner offen.

- **P3 (unveraendert) — Leerlauf-Loops:** synobsis 853/853 gesaettigt; normen DIN/VSS/RAL «Basisinventar komplett
  established» (c56861a8); energie M2 «eigener Skill energie?» jetzt zum **9. Mal** eskaliert — der Loop kann das
  nicht selbst entscheiden, braucht Raphaels kurzen Entscheid (kein Mail-Anlass, hier notiert). Kandidaten fuer
  Taktreduktion nach der Intensivphase, unter VOLLGAS bewusst weiterlaufend.
- **P3 (unveraendert) — normen-Budget 50:** greift erst ab der naechsten Runner-Generation; Kontrollpunkt offen.
- **P3 (unveraendert) — NAS-Remount zielt remote auf LAN-IP** (Tailscale-Hostnamen-Fallback ausstehend).

---

## 2026-07-13 15:43 — P2 selbst gehoben: normen-Loop-Budget 25 → 50 USD/Lauf (staerkster Loop truncierte VOR der Pflicht-Verifikation) [FREI]

**Fensterzustand [FREI]:** Fenster wird aktiv gefuellt, noch nicht regelmaessig 100 %. Beide Runner
leben und zyklen sauber (Supervisor greift): MacBook Zyklus 24 (baurecht Run 40 rc=0 1054s, immobewertung
Run 24 rc=0, spec Lauf 11 rc=0, twin-fidelity 94 rc=0, aktuell twin-mail Batch 42); Mini Zyklus 49
(energie Run 50/51 rc=0, planungsgrundlagen Run 30/31 rc=0, synobsis 853/853, aktuell energie/normen-mini).
Der blanke `claude -p`-Login-Test bleibt das bekannte Env-Artefakt — die durchgehenden rc=0-Laeufe
beweisen Login OK, **kein Block.**

**Durchsatz (letzte 90 Min):** 22 Commits mit echter Substanz — baurecht Run 40 (BBV-I-Wortlaut, § 62
StrG-Divergenz), normen-mini Run 10 (DIN-5034-/1053-Retro-Verifikation 8/8 korrigiert), energie Run 49/50,
planungsgrundlagen Run 30, spec Lauf 11, twin-fidelity, plus Selfcommits. Fenster fuellt sich dicht.

**P2 in diesem Lauf selbst gehoben — Budget-Deckel des staerksten Loops:** `normen-training` brach auf
BEIDEN Stationen mit `Error: Exceeded USD budget (25)` ab (rc=1; Commit c9afc288 «12 SIA-Destillate,
Verifikation ausstehend, Budget-Abbruch»). Der `--max-budget-usd`-Deckel im `vollgas-runner.sh` kappte
den token-hungrigsten und laut Vorlauf substanzstaerksten Loop genau VOR der unter Rule 260712 verlangten
Pflicht-Verifikation. Unter VOLLGAS ist das doppelt schaedlich: das Fenster wird pro Lauf nur bis $25
gefuellt statt weiter, UND die Verifikation der Destillate bleibt liegen. Default `VOLLGAS_MAX_BUDGET_USD`
im NAS-Runner von **25 → 50** angehoben (bounded, kein Runaway-Risiko; deckt beide Stationen). **Wirkung
ab der naechsten Runner-Generation** (nach dem naechsten Supervisor-Neustart / Runner-Tod) — laufende,
gesunde Runner bewusst NICHT gekillt (haette in-flight-Spend von twin-mail/energie verworfen). Naechster
Kontrollpunkt: pruefen, ob normen mit 50 bis zur Verifikation durchlaeuft; falls weiter truncierend, hoeher.

**Hebel-Priorisierung:** Fenster noch nicht regelmaessig 100 % → mehr Last bleibt der Hebel; das
Budget-Anheben ist genau das (mehr Spend auf dem groessten Loop). Supervisor deckt die Grundlast-
Wiederbelebung. P1 aktuell keiner offen.

- **P3 (unveraendert) — Leerlauf-Loops:** immobewertung (D6 zum Auslagern), synobsis (853/853 gesaettigt),
  energie (M2 «eigener Skill?» zum 7. Mal eskaliert, braucht Raphaels Entscheid) laufen teils ins Leere —
  Kandidaten fuer Taktreduktion nach der Intensivphase, unter VOLLGAS bewusst weiterlaufend.
- **P3 (unveraendert) — NAS-Remount zielt remote auf LAN-IP** (Tailscale-Hostnamen-Fallback ausstehend).

---

## 2026-07-13 14:48 — P1-STRUKTURELL GELOEST: launchd-Supervisor auf BEIDEN Stationen — tote Runner heilen jetzt in ≤3 Min selbst [FREI]

**Fensterzustand [FREI]:** Fenster hat Kapazitaet und wird aktiv gefuellt. Beide Runner leben
und zyklen sauber: MacBook (PID 4210, seit 10:49) auf Zyklus 24 — baurecht Run 40 abgeschlossen
(14:45, rc=0, 1054s, BBV-I-Wortlaut + § 62 StrG Divergenz nachgezogen), aktuell immobewertung;
Mini (PID 4538, seit 11:51) auf Zyklus 47 — energie Run 49 / normen-mini Run 10 (rc=0), aktuell
planungsgrundlagen. Beide je genau EIN Runner (die zweiten PIDs sind die Loop-Subshells, PPID =
Runner). Der blanke `claude -p`-Login-Test bleibt das bekannte Env-Artefakt — die rc=0-Laeufe
beweisen: Login OK, **kein echter Block.**

**P1-STRUKTURELL — jetzt dauerhaft geschlossen statt nur markiert:** Die «Runner sterben still,
Radar startet erst stuendlich neu»-Leckage (bis ~1.5 h Fenster-Fuellzeit pro Ausfall, gestern/heute
je 2 Tode) ist behoben. Neu: `scripts/vollgas-supervisor.sh` + launchd-Job `ch.jans.vollgas-supervisor`
(StartInterval 180s, RunAtLoad, ThrottleInterval 60s) auf **beiden** Stationen geladen und verifiziert.
Der Waechter startet den Runner neu, sobald er tot ist — Erholung in ≤3 Min statt bis zu 1.5 h.
**Bewusst KEIN launchd-KeepAlive** (haette STOP und das Selbst-Ende 11.08. ausgehebelt, weil KeepAlive
den Runner nach jedem gewollten Exit sofort wieder hochreisst): der Waechter respektiert STOP/STOP-$HOST
und END_DATE selbst und startet dann NICHT; Duplikat-Schutz doppelt (Runner-LOCK + pgrep im Waechter).
Verifiziert: RunAtLoad hat auf beiden Stationen KORREKT no-op'd (kein zweiter Runner gespawnt), FDA fuer
/bin/bash auf beiden Stationen vorhanden (launchd→SMB reicht die NAS). Der Radar bleibt Taktgeber/Waechter,
traegt aber die Grundlast-Wiederbelebung nicht mehr allein.

**Durchsatz (letzte 90 Min):** dichte Commit-Folge — baurecht Run 40, normen-mini Run 10 (DIN 5034-/
1053-Reihe retro-verifiziert, 8/8 korrigiert), diverse normen-DIN-Verifikationen auf `established`
(276-1, EN 12207, EN 12101-2, 1045-2), twin-fidelity Fuenftlauf (94), synobsis 853/853 stabil,
energie Run 49 (Sackgassen ehrlich geschlossen), plus laufende Selfcommits. Substanzstaerkster Loop
weiterhin die Normen-Retro-Verifikation.

**Hebel-Priorisierung:** Fenster wird gefuellt, ist aber noch nicht regelmaessig 100 % → mehr/
kontinuierliche Last bleibt der Hebel; die dauerhafte Loesung dafuer (Keepalive) ist mit dem Supervisor
jetzt umgesetzt. Naechster Kontrollpunkt: pruefen, ob der Supervisor bei einem echten Runner-Tod
sauber greift (Log `logbuch/vollgas/supervisor-<host>.log`).

- **P2 (unveraendert) — NAS-Mount-Remount zielt remote auf LAN-IP** (`smb://192.168.1.10/daten`),
  via Tailscale nicht erreichbar. Fuer Morgen-Briefing: Tailscale-Hostnamen-Fallback ergaenzen.
- **P3 (unveraendert) — Leerlauf-Loops:** immobewertung (oft «keine konkrete Anfrage», D6 zum Auslagern),
  synobsis (853/853), energie (KB gesaettigt) laufen ins Leere — Kandidaten fuer Taktreduktion nach der
  Intensivphase, aktuell unter VOLLGAS aber bewusst weiterlaufend.

---

## 2026-07-13 11:52 — Jetzt der MINI-Runner tot (seit ~10:24), neu gestartet; ZWEITER stiller Runner-Tod heute → Keepalive-Hebel [FREI]

**Fensterzustand [FREI]:** Fenster hat Kapazitaet. Beweis am realen Betrieb: der MacBook-Runner
faehrt seit 10:49 sauber durch (baurecht 11:00, immobewertung 11:14, normen-nacht 11:34, spec 11:35,
twin-fidelity 11:42, twin-mail ab 11:42:57 — alle rc=0), 2 aktive `claude -p`. Das 5h-Fenster (Reset
war 08:50, naechster ~13:50) ist noch nicht ausgereizt. Der blanke `claude -p --model haiku` aus der
Radar-Shell meldet erneut «Not logged in» trotz TOKEN_SET=JA = bekanntes **Env-Artefakt** (der Runner
sourced den Token korrekt und faehrt rc=0). **KEIN echter Login-Block.**

**P1 (in diesem Lauf selbst behoben) — MINI-Runner war tot:** Der Mac-Mini-Runner ist nach
`START planungsgrundlagen-training` um 10:24:39 stumm ausgefallen — Macmini.log-mtime seit 10:24:33
eingefroren, `pgrep vollgas-runner` = KEIN Prozess, keine STOP-Datei. Rund **1 h 27 min** Luecke, in der
auf der Mini-Seite nur ein einzelner verwaister `planungsgrundlagen`-`claude -p` (PID 2958, etime 21:07,
im Normalbereich, produktiv) Token zog statt des vollen 4-Loop-Zyklus. Da Login OK, Fenster frei und
keine STOP-Datei: Mini-Runner unter der stehenden VOLLGAS-Autorisierung via `ssh mini` detached neu
gestartet (11:51:47, PID 4538, Zyklus 1). Verifiziert: laeuft, energie-training aktiv. Den verwaisten
`claude -p` 2958 **bewusst NICHT gekillt** (produktiver Lauf im Normalbereich) — kurzer Doppellauf ist
unter VOLLGAS erwuenscht, nicht schaedlich.

**P1-STRUKTURELL (groesster Hebel jetzt) — beide Runner sterben still, je 1x heute Morgen:**
MacBook-Runner ~09:20 tot → 10:49 neu; Mini-Runner ~10:24 tot → 11:51 neu. **Zwei stille Runner-Tode
in einem Vormittag** auf beiden Stationen zeigen: das Modell «Radar startet stuendlich manuell neu»
leckt bis zu ~1.5 h Fenster-Fuellzeit pro Ausfall — genau die Luecke, die der Taktgeber schliessen
soll. Empfehlung fuer den naechsten Schritt: **launchd-KeepAlive fuer `vollgas-runner.sh` auf beiden
Stationen** (`ch.jans.vollgas-runner`, KeepAlive=true, RunAtLoad=true), damit ein toter Runner in
Sekunden statt in bis zu einer Stunde neu anlaeuft. Der Radar bleibt Taktgeber/Waechter, muss dann aber
nicht mehr die Grundlast tragen. (Persistente launchd-Config auf beiden Stationen — im naechsten Lauf
umsetzbar; hier bewusst nur stark markiert statt still gebaut.)

**Durchsatz/Substanz (letzte 90 Min):** 8 NAS-Commits (Selfcommits + Inhalt: twin-mail Batch 40,
wettbewerbs-dna Rang-Entscheid belegt, normen-mini Run 9 — 12 Retro-Verify-Korrekturen in den
Fliesstext eingearbeitet, alle auf `established`). MacBook-Loops substanziell: normen-nacht (14 SIA-
Destillate abgeschlossen, Verifikations-Stufe fuer den naechsten Lauf offen), twin-fidelity (Runde
260713d, 4 Selbstfragen + Gehirn neu kompiliert). Normen-DIN/VSS-Retro-Verifikation bleibt der
substanzstaerkste Loop.

**Hebel-Priorisierung:** Fenster wird auf der MacBook-Seite gefuellt, war auf der Mini-Seite
untergefuellt (nur 1 statt 4 Loops) — mehr Last (= Runner-Neustart) war der richtige Hebel, umgesetzt.
Fenster ist noch NICHT regelmaessig 100 %, also bleibt mehr/kontinuierliche Last der Hebel → der
Keepalive (P1-strukturell) ist die dauerhafte Loesung.

- **P2 (unveraendert) — NAS-Mount-Remount zielt remote auf LAN-IP** (`smb://192.168.1.10/daten`),
  via Tailscale nicht erreichbar. Fuer Morgen-Briefing: Tailscale-Hostnamen-Fallback ergaenzen.
- **P3 (unveraendert) — Leerlauf-Loops:** immobewertung (11:14 «keine konkrete Anfrage», D6 zum
  Auslagern empfohlen), synobsis (853/853, 8 s Leerlauf), energie (KB gesaettigt, Meta-Frage M2
  «eigener energie-Skill?» seit Run 41 entscheidungsreif). Empfehlung: diese drei ins Nachtfenster
  ruecktakten, freie Kapazitaet auf die Normen-DIN/VSS-Verifikation lenken. Entscheid bei Raphael.

**WARNUNG (unveraendert, Bestand):** NIE `pkill -f "git commit"` auf diesen Stationen — die Trainings-
Prompts enthalten den String «git commit» und werden mitgetroffen. Haengende git-Prozesse ueber die
konkrete PID killen, `claude -p`-Prozesse ausschliessen.

**Mail:** KEINE. Der Mini-Runner-Ausfall war selbst behebbar (kein Raphael-only Login-/Credential-
Block), in diesem Lauf behoben — kein Mail-Anlass gemaess Disziplin.

## 2026-07-13 10:48 — MacBook-Runner ~1.5 h tot (Luecke geschlossen), neu gestartet; Mini durchgehend voll [FREI]

**Fensterzustand [FREI]:** Fenster hat Kapazitaet. Beweis am realen Betrieb: der Mac-Mini-Runner
faehrt durchgehend rc=0 (energie Run 47 10:14, normen-mini Run 8+9 bis 10:24, planungsgrundlagen
Run 27 10:24) und NAS-Commits laufen bis 10:45 — das Konto ist eingeloggt und das 5h-Fenster (Reset
war 08:50) noch nicht ausgereizt. Der blanke `claude -p --model haiku` aus der Radar-Shell meldet
weiterhin «Not logged in» = bekanntes **Env-Artefakt** (Token vorhanden: TOKEN_SET=JA; der Runner
sourced ihn korrekt). **KEIN echter Login-Block.**

**P1 (in diesem Lauf selbst behoben) — MacBook-Runner war tot:** Der MacBook-Runner ist nach
`START normen-training-nacht` um 09:20:49 stumm ausgefallen (kein ENDE, 0 aktive `claude -p`, kein
Runner-Prozess, keine STOP-Datei) — ~1 h 28 min ungenutzte Luecke, in der nur der Mini + der Radar
Token zogen. Genau die Luecke, die der Taktgeber verhindern soll. Da Login OK, Fenster frei und
keine STOP-Datei: Runner unter der stehenden VOLLGAS-Autorisierung neu gestartet (10:49, PID 4210,
Zyklus 1). Verifiziert: laeuft, baurecht-buch-training aktiv (1 `claude -p` rc-Fortschritt).

**Lagebild (gruen, ausser der behobenen Luecke):**
- Mini-Runner gesund (Log frisch 10:24, Zyklus 144). MacBook-Runner ab 10:49 wieder aktiv.
- **Durchsatz:** 16 NAS-Commits/90 Min (davon nur der Mini + Selfcommits, da MacBook ausgefallen —
  wieder anziehend, sobald der MacBook-Zyklus greift). Substanz: normen-mini Run 8 (12/12 DIN/VSS-
  Destillate retro-verifiziert und korrigiert) + Run 9 (12 Korrekturen in den Fliesstext eingearbeitet,
  alle auf `established`), energie Run 46+47 (ZH-Solarpflicht RRB-Belege, GEAK-Handaenderungspflicht,
  Batteriespeicher-Amortisation), planungsgrundlagen Run 26+27, wettbewerbs-dna (Rang-Entscheid Raphael
  belegt). Die Normen-DIN/VSS-Verifikation bleibt der substanzstaerkste Loop.

**Hebel-Priorisierung:** Weil der MacBook-Runner ausgefallen war, wurde das Fenster auf der
MacBook-Seite NICHT gefuellt — mehr Last (= Runner-Neustart) war hier der richtige Hebel, jetzt
umgesetzt. Empfehlung fuer den naechsten Lauf: pruefen, ob der MacBook-Runner erneut still ausfaellt
(Wiederholungsmuster) — falls ja, launchd-Keepalive fuer den Runner erwaegen statt manuellem Neustart.

**Selbstverschuldeter Nebeneffekt (ehrlich vermerkt):** Beim Bereinigen eines auf dem SMB-Mount
haengen gebliebenen `git commit` habe ich `pkill -f "git commit"` benutzt — das hat auch den
laufenden `baurecht-buch-training`-`claude -p` getroffen (dessen Prompt-Text den String «git commit»
enthaelt), Ergebnis rc=143 nach 679 s. Der Runner hat sich sofort erholt (START immobewertung 11:00:58),
Verlust ~1 Loop-Iteration; baurecht laeuft im naechsten Zyklus erneut. **WARNUNG fuer kuenftige
Radar-Laeufe: NIE `pkill -f "git commit"` auf dieser Station** — die Trainings-Prompts enthalten diesen
String. Stattdessen den haengenden git-Prozess ueber die konkrete PID killen (`ps` → PID, `kill <PID>`)
und Prozesse mit `claude -p` im Kommando ausschliessen.

**Git-Ablage dieses Eintrags:** Der `git commit` auf dem SMB-gemounteten NAS-Repo lief mehrfach in den
2-Min-Timeout (bekannte SMB-Langsamkeit + Multi-Committer-Kontention der Loops). RADAR.md ist auf Disk
geschrieben und **staged**; die DSM-native `nas-selfcommit` (alle 15 Min, ext4, nicht ueber SMB)
committet + pusht den Eintrag automatisch — das ist genau ihr Zweck. Kein weiterer manueller
Commit-Versuch (verschaerft nur die Lock-Kontention).

- **P2 (unveraendert) — NAS-Mount-Remount zielt remote auf LAN-IP** (`smb://192.168.1.10/daten`),
  via Tailscale nicht erreichbar. Fuer Morgen-Briefing: Tailscale-Hostnamen-Fallback ergaenzen.
- **P3 (unveraendert) — Leerlauf-Loops:** immobewertung (10:20 «keine Anfrage»), synobsis (853/853,
  8 s Leerlauf), energie (KB gesaettigt, Meta-Frage M2 «eigener energie-Skill?» seit Run 41
  entscheidungsreif). Empfehlung: diese drei ins Nachtfenster ruecktakten, freie Kapazitaet auf die
  Normen-DIN/VSS-Verifikation lenken. Entscheid bei Raphael (Ruecktaktung nicht stillschweigend).

**Mail:** KEINE. Die Runner-Luecke war selbst behebbar (kein Raphael-only Login-/Credential-Block),
in diesem Lauf behoben — kein Mail-Anlass gemaess Disziplin.

## 2026-07-13 09:27 — Fenster um 08:49 voll ausgereizt, um 8:50 Reset, Vollgas laeuft von selbst wieder [VOLL→FREI]

**Fensterzustand [VOLL→FREI, Taktgeber greift]:** Das vorige 5h-Fenster wurde von ~08:01 bis
08:49 voll ausgereizt — mehrere Loops beider Stationen mit «You've hit your session limit ·
resets 8:50am» (normen-nacht, spec, wettbewerbs-nachbrenner auf dem MacBook; normen-mini,
planungsgrundlagen auf dem Mini). Das ist der GEWUENSCHTE Zustand (voller Baustein zum
Wochenlimit). Um 8:50 Reset; danach **automatische Wiederaufnahme ohne Eingriff**: baurecht-buch
09:17 rc=0 (1431 s), immobewertung 09:20 rc=0, normen-nacht 09:20:49 gestartet; 133 aktive
`claude -p`. Keine ungenutzte Luecke zwischen den Fenstern — Taktgeber-Soll erfuellt.

**Kein Login-Block (Klarstellung):** Der blanke `claude -p --model haiku` aus der Radar-Shell
meldete «Not logged in» — das ist ein **Env-Artefakt** (die Radar-Shell sourced den
`CLAUDE_CODE_OAUTH_TOKEN` aus `~/.jans-dispatch.env` nicht, der Runner schon). Mit gesourctem
Env ist der Token vorhanden (verifiziert: JA) und der Runner arbeitet rc=0 durch. **KEIN P1.**

**Lagebild (gruen):**
- Beide Runner gesund, keine STOP-Datei. MacBook: Haupt-PID 81252 (seit 23:51) + Re-Exec 69402
  (09:20, laedt Skript-Updates selbst nach). Zyklus 50 laeuft. Mini: Zyklus 142, energie Run 44
  357 s rc=0, normen-mini Run 7 522 s rc=0.
- **Durchsatz:** 9 NAS-Commits/90 Min (bewusst weniger als die 27 um 07:13 — ~50 Min des Fensters
  lagen in der gewollten Limit-Pause 08:01–08:49). Substanz: normen-mini Run 7 (DIN/VSS-
  Retroverifikation, 4 Fehler korrigiert, 50 % Fehlerquote in der Stichprobe → Verifikations-
  Pflicht bestaetigt), energie Run 45 (ZH-Energiegesetz-Revision 2026 Solarpflicht belegt),
  setup-ssh-macbook.

**Hebel-Priorisierung:** Das Fenster wird regelmaessig auf 100 % gefahren (gerade eben 08:49) und
sofort wieder gefuellt → gemaess Schritt 5 ist die Lage **optimal**. Nur Kontinuitaet sichern,
keine zusaetzliche Frequenz stapeln. Kein Eingriff noetig.

- **P2 (unveraendert) — NAS-Mount-Remount zielt remote auf LAN-IP:** Remount-Fallback in
  Trainings/Runner nutzt `smb://192.168.1.10/daten` (LAN), remote via Tailscale nicht erreichbar.
  Fuer Morgen-Briefing: Remount-Snippet um Tailscale-Hostnamen-Fallback ergaenzen. Kein Nacht-Umbau.
- **P3 — Leerlauf-Loops als Endbedingungs-Kandidaten (fuer Tageslauf):** immobewertung-training
  (09:20 rc=0 «keine konkrete Anfrage angekommen», KB gesaettigt) und synobsis-batch (853/853
  komplett) drehen faktisch leer; energie meldet KB-Saettigung (91 Destillate / 61 FAQ, «marginal
  value thinning», M2-Entscheid «eigener energie-Skill» offen). Diese senken den Wochenverbrauch
  nicht (Fenster bleibt bindend + voll), verwerfen aber Slot-Potenzial ohne durables Ergebnis.
  Empfehlung: immobewertung/synobsis/energie ins Nachtfenster ruecktakten und freie Kapazitaet auf
  die **Normen DIN/VSS-Verifikation** lenken (dort findet Run 7 real 50 % Fehler → substanzielle
  Arbeit). Entscheid liegt bei Raphael (Ruecktaktung nicht stillschweigend).

**Mail:** KEINE (kein neuer/geloester P1; das planmaessige Voll-Fahren des Fensters ist Erfolg,
kein Mail-Anlass).

## 2026-07-13 07:13 — Volllast, 27 Commits/90 Min; Mount-Flappen im Remote-Betrieb entdeckt [FREI]

**Fensterzustand [FREI]:** `claude -p --model haiku` liefert nach kurzer Kaltstart-Latenz «OK»
rc=0 (Token gueltig). Keine Limit-Rueckweisung → das 5h-Fenster hat Kapazitaet, Vollgas laeuft.
Das vorige Fenster wurde gemaess 05:50-Eintrag regelmaessig auf 100 % gefahren (03:49) und sofort
wieder gefuellt.

**Lagebild (gruen):**
- MacBook-Runner gesund: Haupt-PID 81252 (seit 23:51) + Re-Exec-PID 54873 (16 Min, laedt
  Skript-Updates selbst nach). Aktiv `claude -p` PID 54874 = baurecht-buch-training. Zyklus 49,
  8 Loops back-to-back. Letzte ENDE-Zeilen rc=0: immobewertung 417 s, spec-training 370 s,
  twin-fidelity 422 s, twin-mail 615 s. Keine STOP-Datei.
- Mini-Runner gesund (Log frisch 06:57): Zyklus 108, normen-training-mini 841 s rc=0,
  planungsgrundlagen Run 24 289 s rc=0, synobsis 127 s rc=0. Keine STOP-Datei.
- **Durchsatz stark:** 27 NAS-Commits in 90 Min (Trainings-Commits + gebuendelte
  `nas-selfcommit`-Pushes). Beide Stationen brennen Token in 300–1600 s-Langlaeufen.

**Hebel-Priorisierung:** Fenster wird regelmaessig voll gefahren → gemaess Schritt 5 ist die
Lage **optimal**; nur Kontinuitaet sichern, keine zusaetzliche Frequenz stapeln. Kein Eingriff
noetig (Taktgeber-Re-Exec + Auto-Wiederaufnahme arbeiten selbsttaetig).

- **P2 NEU — NAS-Mount flappt im Remote-Betrieb, Auto-Remount zielt auf LAN-IP:** Das MacBook
  ist derzeit **remote** (Mount ueber Tailscale `diskstation918.tail8265aa.ts.net`). Waehrend
  dieses Laufs ist der SMB-Mount mehrfach kurz weggebrochen (stale handle) und von selbst
  zurueckgekommen. Mehrere Trainings-Shells (PIDs 57535/57664/57665/57695) versuchen bei
  Mount-Verlust einen Remount via `osascript … mount volume "smb://192.168.1.10/daten"` — das ist
  die **LAN-IP**, die ausserhalb des Bueros nicht erreichbar ist; der Remount kann remote also
  nicht greifen, die Laeufe haengen an der Selbstheilung des Tailscale-Mounts. Robustheitsluecke:
  der Remount-Fallback sollte remote den **Tailscale-Hostnamen** verwenden (bzw. LAN-IP nur im
  Buero). Kein Nacht-Umbau — im Morgen-Briefing an Raphael (Remount-Snippet in Trainings/Runner
  um Tailscale-Fallback ergaenzen).
- **P3 — normen-training-nacht 1× per Budget-Cap abgebrochen ($25/Lauf, rc=1, 681 s):** einmalig
  heute; kein chronisches Leck. Da das 5h-Fenster die bindende Grenze ist und ohnehin auf 100 %
  laeuft, senkt der Cap den Wochenverbrauch nicht — er verwirft nur die Teil-Scan-Arbeit dieses
  einen Laufs (Token ohne durables Destillat). Kleine Effizienznotiz fuer Raphael: `--max-budget-usd`
  im Runner (Default 25) fuer die scanlastigen Normen-Laeufe hochsetzen, damit sie durchlaufen.
- **P3 — Endbedingungs-Kandidaten (unveraendert, fuer Tageslauf):** immobewertung-training meldet
  **5. Verifikationslauf in Folge ohne Befund** → Ruecktaktung ins Nachtfenster empfohlen;
  wettbewerbs-dna + -nachbrenner laufen leer (warten auf Bauaufgaben-Prioritaeten/Jurybericht);
  energie-training PDF-Inventar erschoepft; synobsis 853/853 komplett. Freie Kapazitaet auf die
  groesste offene Luecke: **Normen DIN-Inventar** (aktiv, Mini Run 4 = DIN/VSS-Rest komplett gemeldet
  → naechster Lauf soll «DIN/VSS/RAL KOMPLETT» bestaetigen und Task-Ende vorschlagen).

**Mail:** KEINE (kein neuer/geloester P1; volle Fenster sind Erfolg, kein Mail-Anlass).

## 2026-07-13 05:50 — Volllast bestaetigt, 18 Commits/90 Min, Kontinuitaet gesichert [FREI]

**Fensterzustand [FREI]:** `claude -p --model haiku` liefert «OK» rc=0 (Token gueltig, korrekter
Export). Keine Limit-Rueckweisung → neues 5h-Fenster hat Kapazitaet, Vollgas laeuft. Der Reset um
03:50 war schon im Vorlauf sauber abgefangen; seither durchgehend Last.

**Lagebild (gruen):**
- MacBook-Runner gesund: Haupt-PID 81252 (seit 23:51) + frische Subshell 44442 (05:48, periodisches
  Re-Exec — laedt Skript-Updates selbst nach). **Zyklus 48** laeuft, 8 Loops back-to-back. Letzte
  ENDE-Zeilen alle rc=0: spec-training 856 s, twin-fidelity-review 528 s, twin-mail-training 401 s,
  wettbewerbs-dna 339 s, wettbewerbs-layer-nachbrenner 139 s → jetzt baurecht-buch-training aktiv.
- Mini-Runner gesund (Log frisch 05:46): **Zyklus 105**, energie 530 s rc=0, normen-mini 986/622 s
  rc=0, planungsgrundlagen Run 22 709 s rc=0, synobsis 140 s rc=0. Keine STOP-Datei.
- **Durchsatz stark:** 18 NAS-Commits in 90 Min (echte Trainings-Commits + gebuendelte
  `nas-selfcommit`-Pushes). Beide Stationen brennen Token in 140–1000 s-Langlaeufen sequenziell.

**Hebel-Priorisierung:** Fenster wird regelmaessig voll gefahren (03:49 = 100 %) und sofort wieder
gefuellt → gemaess Schritt 5 ist die Lage **optimal**; nur Kontinuitaet sichern, keine zusaetzliche
Frequenz stapeln. Taktgeber-Mechanik (Runner-Re-Exec + Auto-Wiederaufnahme nach Reset) arbeitet
selbsttaetig, kein Eingriff noetig.
- **P2 (unveraendert, fuer Tageslauf):** baurecht-buch-training ohne Ueberlappungs-Lock (Run 35:
  2/4 Ziele doppelt) + normen-training-mini-Doppelauslösung (`ch.jans.training-normen` feuert 2×
  gleichzeitig, Mini). Beide = strukturelle Task-/Runner-Fixes, nicht nachts autonom umbauen —
  im Morgen-Briefing an Raphael (kleiner Lockfile-Guard bzw. Scheduled-Task-Konfig pruefen).
- **P3 — Endbedingungs-Kandidaten haerten sich:** (a) `energie-training` meldet **PDF-Inventar
  erschoepft, Prioritaet 1+2 vollstaendig** → empfiehlt Web-Vertiefung oder Meta-Entscheid (eigener
  Skill `energie`). (b) `immobewertung-training` erneut Verifikationslauf «bestanden» ohne neuen
  Befund (≥4. in Folge) → Ruecktaktung ins Nachtfenster. (c) `wettbewerbs-dna` auf alle 6 Dossiers
  verdichtet, wirkt abgeschlossen. Freie Kapazitaet auf die groesste offene Luecke umlenken:
  **Normen DIN-Inventar** (DIN 1045-2, 1053er-Reihe, 1054, 18040-2, VStättVO-Rest — scanlastig,
  wird aktiv abgearbeitet, Run 3 = 9 neue Destillate). Kein Autonom-Umbau; im Tagesbriefing melden.

**Mail:** KEINE (kein neuer/geloester P1; das volle 03:49-Fenster ist Erfolg, kein Mail-Anlass).

## 2026-07-13 04:48 — 3:50-Reset sauber abgefangen, beide Stationen unter Volllast [FREI]

**Fensterzustand [FREI] (nach vollem Fenster):** Um 03:49 hat das vorige 5h-Fenster **100 %**
erreicht (beide Stationen meldeten «You've hit your session limit · resets 3:50am») — das ist der
Ziel-Zustand, ein voller Baustein zum Wochenlimit. Der Reset um 03:50 wurde vom Taktgeber-Mechanismus
**automatisch abgefangen**: beide Runner nahmen binnen ~30 s wieder Arbeit auf, ohne Eingriff. Live
gegengeprueft: mit `set -a; . ~/.jans-dispatch.env` liefert `claude -p --model haiku` «OK» (Token JA,
rc=0) → neues Fenster hat Kapazitaet, Vollgas laeuft.

**Lagebild (gruen):**
- MacBook-Runner gesund (Haupt-PID 81252 seit 23:51 + frische Subshell 35565 um 04:46 = periodisches
  Re-Exec, laedt Skript-Updates selbst nach). Zyklus 47 laeuft: baurecht-buch-training 1572 s rc=0,
  immobewertung-training 272 s rc=0, jetzt normen-training-nacht aktiv. Back-to-back-Langlaeufe.
- Mini-Runner gesund (Log frisch 04:43): energie-training 1231 s rc=0, normen-training-mini 1149 s
  rc=0, planungsgrundlagen-training 668 s (Run 21) rc=0; Zyklus 104, energie neu gestartet. Keine STOP-Datei.
- Durchsatz kontinuierlich: Jobs laufen ueberwiegend 600–1600 s sequenziell auf beiden Stationen =
  Dauer-Token-Burn. (Commit-Zaehler unterzaehlt, weil Trainings lokal committen und der
  `nas-selfcommit`-Cron sie gebuendelt pusht — die Log-Laufzeiten sind das verlaessliche Signal.)

**Hebel-Priorisierung:** Fenster wird regelmaessig voll gefahren (03:49 = 100 %) und sofort wieder
gefuellt → gemaess Schritt 5 ist die Lage optimal; nur **Kontinuitaet sichern**, keine zusaetzliche
Frequenz stapeln.
- **P2 — baurecht-buch-training ohne Ueberlappungs-Lock:** Run-35-Report meldet, 2 von 4 Zielen
  wurden **doppelt** bearbeitet (verschwendete Tokens auf Duplikat-Arbeit). Der Trainingslauf selbst
  empfiehlt einen Lock-Mechanismus fuer ueberlappende Laeufe. Strukturelle Aenderung an Runner/Task —
  nicht nachts autonom umbauen, Raphael tagsueber vorschlagen (kleiner Lockfile-Guard im PROGRAMM
  oder Runner-Skip, wenn schon ein baurecht-Prozess laeuft).
- **P3 — Endbedingungs-Kandidaten (fuer Tageslauf):** (a) `wettbewerbs-dna-training` faellt leer aus
  («keine konkrete Anfrage», 11 s rc=0) — passt zum 11/11-Abschluss vom 23:56; Loop liefert nichts
  mehr. (b) `immobewertung-training` meldet den **3. Verifikationslauf in Folge ohne neuen Befund**
  und empfiehlt selbst die Ruecktaktung ins Nachtfenster. Beide sind Signale, Kapazitaet auf die
  groesste offene Luecke (Normen-Inventar DIN/VSS/RAL — DIN 1045-2/DIN 1960 + ~12 kleinere laut
  normen-mini-Report) umzulenken. Kein Autonom-Umbau; im Morgen-Briefing an Raphael melden.

**Mail:** KEINE (kein neuer P1, kein frisch geloester P1 — die letzte Runner-Reparatur war 23:48/23:52
und bereits verbucht; das volle 03:49-Fenster ist Erfolg, kein Mail-Anlass).

## 2026-07-12 23:56 — Beide Stationen gesund, Volllast bestaetigt; Diagnose-Fallgrube dokumentiert [FREI]

**Fensterzustand [FREI]:** Token gueltig, `claude -p --model haiku` liefert «OK» rc=0 (mit
korrektem Export). Keine Limit-Rueckweisung → das 5h-Fenster hat noch Kapazitaet, Vollgas laeuft.

**Lagebild (alles gruen):**
- MacBook-Runner gesund (PID 81252 + Subshell 81659, saubere PPID-Struktur); Zyklus 1 laeuft,
  `baurecht-buch-training` 3+ Min durchgelaufen, `immobewertung-training` seit 23:51:49 aktiv.
  Der alte Stale-Prozess von 23:47 (1-s-rc=1-Serie) ist weg — nur ein Runner uebrig.
- Mini-Runner gesund (PID 61179): `energie-training` 544 s rc=0, `planungsgrundlagen-training`
  799 s rc=0 (Run 20), Zyklus neu gestartet 23:52:48. Keine STOP-Datei mehr.
- Durchsatz stark: **24 Commits/90 Min** ueber 6 KBs (baurecht Run 32, normen run4 + mini Run 2,
  planungsgrundlagen Run 20, energie Run 37, wettbewerbs-dna 11/11-Abschluss, immobewertung Run 18).
  Beide Runner fahren ~13-Min-Jobs sequenziell back-to-back = kontinuierlicher Token-Burn.

**Diagnose-Fallgrube (fuer kuenftige Laeufe festhalten):** Ein blosses `source ~/.jans-dispatch.env;
claude -p …` meldet «Not logged in», weil die Token-Zeile im Env-File KEIN `export` traegt — ohne
`set -a` wird die Variable nicht an den `claude`-Subprozess vererbt. Der Runner macht es richtig
(`set -a; . env; set +a`, Zeile 34). Also: «Not logged in» im Handtest ist KEIN Login-Blocker,
solange der Runner-Env-Export intakt ist — vor P1-Login-Alarm IMMER mit `set -a` gegenpruefen.

**Hebel-Priorisierung:** Fenster hat Kapazitaet und wird durch beide Dauer-Runner + launchd-Tasks
stark gefuellt. Kein akuter Hebel noetig — Kontinuitaet ueber die Fenster sichern.
- **P2 — Git-Lock-Contention ueber SMB** (Rest-Bremse, wie 23:15): Runner + launchd-Scheduled-Tasks
  committen parallel auf EIN NAS-`.git` ueber SMB → `index.lock`-Serialisierung frisst Wall-Clock.
  Sauberer Hebel: Trainings gebuendelt/seltener committen lassen, `nas-selfcommit` uebernimmt das
  Pushen exklusiv. Strukturelle Aenderung — nicht nachts autonom umbauen, tagsueber vorschlagen.
- **P3 — wettbewerbs-dna Endbedingung?** Commit «Volllast-Abschluss 11/11 Teilnahmen verifiziert,
  … konsolidiert» deutet auf ein fertiges Inventar. Beim naechsten Tageslauf pruefen, ob der
  Loop `wettbewerbs-dna-training`/`-nachbrenner` beendet und die Kapazitaet auf die groesste
  offene Wissensluecke (Normen-Inventar P1/P2) umgelenkt werden soll.

**Mail:** KEINE (kein neuer P1, kein frisch geloester P1 — die Runner-Reparatur war 23:48/23:52).

## 2026-07-12 23:52 — ECHTE URSACHE gefunden: MacBook-Runner war STALE (alte In-Memory-Version) [FREI]

**Aufloesung des Widerspruchs (23:15 vs. Live-Log):** Weder Login noch geteiltes Limit — der
MacBook-Runner (PID 14028, seit ~19:00) lief eine **veraltete In-Memory-Version** des Skripts.
Beweis: die 1-s-rc=1-Zeilen im Log tragen den ALTEN Hinweistext («Am Ende NAS-Repo committen und
pushen … vorgeschrieben.**'**» — mit verirrtem schliessenden Anfuehrungszeichen); das Skript auf
der Platte hat laengst den KORRIGIERTEN Git-Disziplin-Hinweis (nur lokal committen). Verifikation
23:47–23:52: mit gesourctem `~/.jans-dispatch.env` liefert `claude -p` «OK» rc=0; die EXAKTE
Runner-Invocation (acceptEdits, --max-budget-usd 25, --fallback-model sonnet, --output-format text,
`--`-Separator) mit dem ECHTEN baurecht-Prompt lief **25 s echte Arbeit** (Abbruch nur durch den
Test), fast-failt also NICHT. Der Bug steckte allein im laufenden Alt-Prozess.

**Selbst erledigt 23:48:** Alten Runner `pkill`t, frisch gestartet (PID 81252 + Subshell 81659,
PPID-Struktur = gesund wie Mini 58135). Neuer Runner: Zyklus 1 seit 23:48:02, `baurecht-buch-training`
lief 3+ Min durch (SKIP-Guard bestaetigt aktiven Prozess) — kein 1-s-Fail mehr. Der Runner re-exect
periodisch und laedt so Skript-Updates selbst nach.

**STOP-Macmini:** beim Aufraeumen bereits verschwunden (keine STOP-Datei mehr); Mini-Runner
gesund (energie-training 544 s rc=0 um 23:37, nach GitHub gepusht).

**Fazit fuer kuenftige Laeufe:** Bei 1-s-rc=1-Serien trotz gueltigem Token IMMER pruefen, ob der
laufende Runner-Prozess eine veraltete Skript-Version haelt (Hinweistext im Log-Tail mit der
Platten-Version vergleichen) — dann `pkill -f vollgas-runner.sh` + Neustart. NICHT Login/Token
verdaechtigen. Der 23:15-Eintrag lag mit «reines Diagnose-Env-Problem» halb richtig (Token OK),
aber die eigentliche Ursache war der Stale-Prozess.

**Mail:** KEINE (Blocker selbst behoben, kein Handlungsbedarf fuer Raphael).

## 2026-07-12 23:15 — (teilweise ueberholt durch 23:52) kein MacBook-Login-Blocker, Token gueltig [FREI]

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
