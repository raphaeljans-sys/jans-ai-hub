# Verifikation — Phase 1 (Sandbox-Bau von `lauf.sh`)

**Ausgefuehrt:** 03.09.2026, Mac-Mini-Nachtschicht (Fortsetzung der Sync-Task
`sync-tasks/mac-mini/20260830-083324_Laufzeitschicht-Umbau-Phasen-0-2.md`, direkt im Anschluss
an `BEFUND.md` Phase 0). **Umfang: nur Phase 1** — `scripts/lauf.sh` bauen und in einer
isolierten Sandbox smoke-testen. **Phase 2 (die vollstaendige Zwoelfer-Matrix aus Spec
Abschnitt 5) ist NICHT Teil dieses Laufs** und braucht Messungen auf dem MacBook Pro und der
dritten Station, die von einer einzelnen Mac-Mini-Session aus nicht im 5-USD-Rahmen zu leisten
sind (gleiche Budget-Disziplin wie in Phase 0 vermerkt).

Diese Datei ist daher **kein** Abschluss-Dokument fuer die vier Bewertungskriterien V1–V4 —
sie haelt fest, was in Phase 1 tatsaechlich gemessen wurde, und was fuer Phase 2 offen bleibt.
Details und Rohbefunde: `BEFUND.md`, Abschnitt 6.

## Was gebaut wurde

`scripts/lauf.sh` (NEU, additiv, kein bestehendes Skript veraendert) — deckt alle sieben
Punkte aus Spec Abschnitt 4 ab. Kopfkommentar im Skript selbst dokumentiert Zweck, Aufruf und
die bewusst offene Arbeitsbaum-Frage (F1).

## Ergebnis je Bewertungskriterium

| Kriterium | Status | Befund |
|---|---|---|
| **V1 — Startweg-Matrix gruen** (3 Stationen × 4 Startwege) | **nicht gemessen** | Phase 2. In diesem Lauf nur EIN Startweg auf EINER Station indirekt gepruegt (dieselbe Session, kein `nohup`, keine `ssh`-Shell, kein launchd) — kein Ersatz fuer die Matrix. |
| **V2 — Rauchtest geht denselben Weg wie ein echter Lauf** | **teilweise, indirekt** | `lauf.sh` selbst delegiert an `claude-run.sh`, es gibt noch keinen umgestellten Rauchtest, der `lauf.sh` aufruft (das ist Phase 3). Die Sandbox-Laeufe in diesem Dokument sind der erste Beleg, dass der Weg technisch funktioniert. |
| **V3 — Treiber mit leerer Queue endet in ≤3 Runden** | **nicht gemessen** | Kein Treiber ist auf `lauf.sh` umgestellt (Phase 3). Nicht pruefbar vor der Umstellung. |
| **V4 — gewedgte Binary wird erkannt und umgangen** | **JA, real bestaetigt** | Siehe unten — sowohl in der Sandbox als auch (ungeplant) mit einem echten Binary auf dem Mac Mini. |

**Kurzfassung: 1 von 4 Kriterien real erfuellt (V4), 1 teilweise/indirekt (V2), 2 offen fuer
Phase 2 (V1, V3).** Das ist erwartungsgemaess — Phase 1 baut, Phase 2 verifiziert breit.

## Tests, die gelaufen sind (alle in Phase 1, additiv, ohne Produktiv-Skripte anzufassen)

1. **Normallauf gegen Stub-Binary** (isoliertes `/tmp`-Scratch-Repo mit eigenem `.git`,
   `LAUF_CLAUDE_BIN` auf ein Stub gesetzt, das `--version` und `-p …` beantwortet, ohne das
   Netzwerk zu beruehren): `rc=0`, Journalzeile im erwarteten `claude-run.sh`-Format,
   `ertrag_messbar=ja`, 2 geaenderte Dateien erkannt, kein neuer Commit (korrekt, `claude-run.sh`
   committet nichts von sich aus).
2. **V4 — gewedgtes Binary**: ein absichtlich 30 s schlafendes Stub-Binary wurde nach dem
   eingebauten 5-Sekunden-Watchdog korrekt uebersprungen ("Binary uebersprungen
   (gewedgt/keine Antwort in 5s)"). Weil `$HOME` in diesem Testlauf nicht isoliert war, griff
   der naechste Kandidat auf das ECHTE `/opt/homebrew/bin/claude` durch — der Lauf ging real
   und kostenpflichtig durch (0.0537 USD). Das ist ungeplant, aber ein echtes, unverfaelschtes
   V4-Datum: dieselbe Homebrew-Fassung, die Befund B2 vom 29.08. als gewedgt beschreibt, war
   am 03.09.2026 23:42 gesund, antwortete in 4.7 s auf `--version`, und der anschliessende
   `-p`-Aufruf lieferte `rc=0`. Kosten und Lehre sind in `BEFUND.md` Abschnitt 6 dokumentiert.
   **Fuer Phase 2: `HOME`/`PATH` in jedem Testlauf vollstaendig isolieren**, sonst greift ein
   Fallback auf ein echtes, kostenpflichtiges Binary durch, statt auf den vorgesehenen
   Test-Stub.
3. **Arbeitsbaum = NAS-Pfad (Default)**: mit isoliertem `HOME`, Stub-Binary nur ueber `PATH`
   erreichbar, ohne `--repo`-Override: `lauf.sh` waehlte den NAS-Pfad, wies
   `ertrag_messbar="nein"` aus und rief **keinen** `git`-Befehl auf. Bestaetigt, dass die in
   Punkt 6 des Spec-Zielbilds verlangte Ertragsmessung die Rule `sync-kanonische-quelle.md`
   (kein `git` gegen das NAS-Repo ueber SMB, auch nicht lesend) respektiert, statt sie zu
   verletzen.

Alle Test-Journalzeilen (ausser dem realen V4-Kostendatum, das dokumentiert statt geloescht
wurde) sind aus den echten `logbuch/laeufe/260903-*.jsonl`-Dateien wieder entfernt — per
Datei-Edit (`awk`/`grep -v`, kein `git`), da diese Dateien nicht git-verfolgt sind.

## Nicht getestet — Einstieg fuer den naechsten Phase-2-Lauf

- Zwoelfer-Matrix: (a) interaktive Session, (b) SSH-Shell, (c) `nohup`-Abloesung,
  (d) launchd-Kontext — je auf MacBook Pro, Mac Mini, dritte Station.
- Der reale B4-Fall: ein aus dieser Session per `nohup` abgeloester `lauf.sh`-Aufruf muss
  geprueft werden, ob das `unset` der vier `CLAUDE_CODE_*`-Variablen das beobachtete
  "OAuth session expired" tatsaechlich verhindert (BEFUND.md Abschnitt 4 nennt die Hypothese,
  bisher unverifiziert).
- V2/V3 setzen voraus, dass mindestens ein Treiber probeweise auf `lauf.sh` umgestellt wird —
  das ist inhaltlich schon Phase 3 (Umschalten) und braucht Raphaels Freigabe. Ein
  **read-only** Probelauf eines Treibers gegen `lauf.sh` (ohne die Originaldatei zu aendern,
  z.B. eine Kopie des Treibers, die `lauf.sh` statt `claude-run.sh` aufruft) waere ein
  moeglicher additiver Zwischenschritt fuer Phase 2, ohne Phase 3 vorwegzunehmen.

## Fuenf-Zeilen-Bericht (Sync-Task-Vorgabe)

V1: nicht gemessen (Phase 2, drei-Stationen-Matrix fehlt). V2: teilweise/indirekt bestaetigt
(Sandbox-Laeufe belegen den technischen Weg, kein umgestellter Rauchtest). V3: nicht gemessen
(kein Treiber umgestellt, das ist Phase 3). V4: JA, real bestaetigt (gewedgtes Stub-Binary
erkannt und uebersprungen, echtes Fallback-Binary erfolgreich verwendet, ungeplant mit realen
Kosten von 0.0537 USD). `scripts/lauf.sh` ist additiv gebaut, alle sieben Spec-Punkte
umgesetzt, kein bestehendes Skript veraendert — Phase 2 (Zwoelfer-Matrix, realer B4-Test)
bleibt fuer den naechsten Lauf offen.
