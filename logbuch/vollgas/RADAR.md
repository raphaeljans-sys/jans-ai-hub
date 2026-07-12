# VOLLGAS-Chef-Radar

Ziel (Auftrag Raphael 12.07.2026, Rule 260712c): Alle Routinen und Lern-Loops laufen im
Dauerbetrieb rund um die Uhr, bis das 5-Stunden- und Wochenlimit des Max-Abos ausgereizt
ist. Dieser Radar prueft alle 2 Stunden den Durchsatz, findet Blocker und schlaegt priorisiert
vor, wo Beschleunigung am meisten bringt. Neueste Eintraege zuoberst.

Legende: P1 = Blocker/groesster Hebel, P2 = starker Hebel, P3 = Feinschliff.

---

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
