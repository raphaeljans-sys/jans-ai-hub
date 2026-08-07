---
name: wettbewerbs-dna-reaktivierung
description: One-Time Mo 20.07. 12:30 (nach Wochenlimit-Reset 11:59): Wettbewerbs-DNA-Loop wieder scharf schalten — gedrosselt 1x taeglich 02:20, nicht VOLLGAS
enabled: false
---

> STILLGELEGT 25.07.2026 durch den VOLLGAS-Chef-Radar — nicht nur als erledigter Einmal-Task,
> sondern weil sein Inhalt inzwischen SCHAEDLICH ist. Der Auftrag stammt aus dem Drossel-Regime
> (Rule 260714) und wuerde bei jedem erneuten Feuern das Gegenteil der heutigen Anweisung tun:
> Schritt 3 setzt `wettbewerbs-dna-training` ausdruecklich auf den gedrosselten Nachttakt
> (`20 2 * * *`, «NICHT auf VOLLGAS zurueckstellen»), Schritt 5 haelt das Drossel-Banner und den
> «Schoner-Modus» fest, Schritt 6 verbietet den Start des Endlos-Runners. Seit der ausdruecklichen
> Anweisung Raphaels vom 25.07.2026 (VOLLGAS wieder aktiv, Rule 260725) ist all das aufgehoben.
> Der Task feuerte am 25.07. um 12:49 erneut im Endlos-Zyklus und wurde vom Radar abgebrochen,
> bevor er den Drossel-Takt wieder setzen konnte.
> `enabled: false` statt Loeschen: reversibel, und der Runner ueberspringt ihn dadurch.

Du bist der Reaktivierungs-Anstoss fuer den Wettbewerbs-DNA-Loop des JANS AI Hub (Station MacBook Pro). Autonom ausfuehren, Raphael ist nicht anwesend: sinnvolle Entscheide treffen und im Output notieren, keine Rueckfragen.

KONTEXT: Der Scheduled Task `wettbewerbs-dna-training` wurde waehrend des Drossel-Regimes (Rule 260714, Wochenlimit war zu 81% ausgeschoepft) am 13.07.2026 stillgelegt. Prompt, Beschreibung und Takt sind am 17.07.2026 bereits auf den gedrosselten Betrieb korrigiert worden (1x taeglich 02:20 im Nachtfenster gemaess Regel 260711, EIN Baustein pro Lauf, kein VOLLGAS). Es fehlt nur noch das Scharfschalten nach dem Wochenlimit-Reset (Montag 20.07.2026, 11:59).

AUFTRAG:
1. Vorbedingung pruefen: NAS gemountet (test -d /Volumes/daten/jans-ai-hub)? Wenn nein: still beenden, nichts aendern.
2. Limit-Lage pruefen, BEVOR du reaktivierst. Der Reset soll um 11:59 erfolgt sein — verifiziere das, statt es anzunehmen: `claude -p "Antworte nur mit: OK" --model haiku` (Timeout 90s). Kommt eine Usage-/Rate-Limit-Meldung, ist das Fenster NICHT frei — dann NICHT reaktivieren, sondern einen Vermerk in /Volumes/daten/jans-ai-hub/logbuch/vollgas/RADAR.md schreiben und dich selbst auf den naechsten Tag 12:30 neu setzen (update_scheduled_task mit fireAt).
3. Ist das Fenster frei: `update_scheduled_task` mit taskId `wettbewerbs-dna-training`, enabled=true. Danach mit `list_scheduled_tasks` verifizieren, dass er wirklich auf enabled=true und cronExpression `20 2 * * *` steht (nicht blind vertrauen). WICHTIG: NICHT auf VOLLGAS/alle-2-Stunden zurueckstellen — der gedrosselte Nachttakt ist gewollt, bis Raphael ausdruecklich etwas anderes anordnet.
4. Radar-Eintrag: neuen datierten Eintrag ZUOBERST (unter der Legende) in /Volumes/daten/jans-ai-hub/logbuch/vollgas/RADAR.md — Fensterzustand, was reaktiviert wurde, mit welchem Takt und warum nicht mehr VOLLGAS. Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, ss statt ß, keine erfundenen Zahlen.
5. Pruefen, ob das Drossel-Banner im Kopf von RADAR.md nach dem Reset noch stimmt. Es verweist auf «mindestens bis zum naechsten Wochen-Reset» — dieser ist jetzt erfolgt. Das Banner NICHT eigenmaechtig aufheben (Rule 260714: Wiederhochfahren auf VOLLGAS nur auf ausdrueckliche Anweisung Raphaels), aber im Eintrag vermerken, dass Raphael entscheiden muss, ob das Drossel-Regime weiterlaeuft oder das alte Lastprofil zurueckkommt. Der Radar bleibt bis dahin im Schoner-Modus.
6. NAS-Repo committen und pushen: cd /Volumes/daten/jans-ai-hub && git add logbuch/vollgas/ && git commit -m "vollgas-radar: wettbewerbs-dna-training nach Wochen-Reset reaktiviert (gedrosselter Nachttakt)" && git push github main. Bei Konflikt: git pull --rebase, nie force.

KEINE Mail an Raphael — der Radar und das Tagesbriefing des Hub-Chefs melden es. Den Endlos-Runner NICHT starten (STOP-Dateien bleiben unangetastet).