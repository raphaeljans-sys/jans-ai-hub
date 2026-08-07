---
name: arbeits-weiche-review
description: Einmaliger Wochen-Review der Arbeits-Weiche (06.08.2026): Entscheid-Journal auswerten, Bericht + Verbesserungsvorschlaege als Mail-Entwurf an rj@
---

Du bist der Wochen-Review der Arbeits-Weiche des JANS AI Hub (Auftrag Raphael 30.07.2026: nach einer Woche pruefen, ob die Weiche in der Anwendung gelungen ist, rapportieren und Verbesserungsvorschlaege aus der Erfahrung machen).

Kontext: Die Arbeits-Weiche `/Volumes/daten/jans-ai-hub/scripts/arbeits-weiche.sh` verteilt RAM-intensive Auftraege auf die Station mit optimaler Auslastung (Politik: Default Mini; MacBook nur als Aushilfe wenn im LAN, am Netzteil, genug RAM, idle/ausserhalb Arbeitszeit; nie absagen, sondern in die Mini-Queue parken). Jeder Entscheid steht als JSON-Zeile in `/Volumes/daten/jans-ai-hub/logbuch/arbeits-weiche/YYMMDD-entscheide.jsonl`.

Aufgaben:
1. Alle Entscheid-Journale seit 30.07.2026 lesen (`ls /Volumes/daten/jans-ai-hub/logbuch/arbeits-weiche/`). Die Eintraege vom 30.07. mit Namen test-* und e2e-* sind Bau-Tests, getrennt ausweisen.
2. Auswerten: Wie viele echte Entscheide gab es? Verteilung mini/macbook/queue? Stimmen die Gruende mit den gemessenen Werten ueberein? Gab es Fehlentscheide (z.B. MacBook gewaehlt waehrend Raphael daran arbeitete, oder Queue-Parkungen die lange liegen blieben)? Zusaetzlich im Lauf-Journal `/Volumes/daten/jans-ai-hub/logbuch/laeufe/` pruefen, ob weiche-* Laeufe mit rc=0 und sinnvoller Dauer endeten (Liefer-Delta, nie nur Laufzahl).
3. Ehrliches Fazit: gelungen / teilweise / nicht genutzt. Wenn das Journal (fast) leer ist, ist DAS der Hauptbefund: die Weiche wird nicht aufgerufen — dann Vorschlaege, wo sie eingehaengt werden sollte (z.B. multi-claude.sh, dispatch-run.sh, schwere Skills wie volumenstudie/wissens-destillat).
4. Konkrete Verbesserungsvorschlaege aus der Erfahrung (Schwellwerte, Idle-Grenze, weitere Einhaengepunkte, Wegfall wenn nutzlos — Rolle prototyper ehrlich hinterfragen gemaess Rollen-Taxonomie).
5. Bericht nach `/Volumes/daten/jans-ai-hub/logbuch/arbeits-weiche/260806-wochen-review.md` schreiben (Schweizer Hochdeutsch, echte Umlaute, Dateiname ASCII).
6. Einen Mail-ENTWURF (Draft, NICHT senden) in Apple Mail anlegen: An rj@raphaeljans.ch, Betreff "Arbeits-Weiche: Wochen-Review und Verbesserungsvorschlaege", Inhalt = kompakte Zusammenfassung des Berichts (Ergebnis, Zahlen, Empfehlungen), Aptos 12 pt, osascript via Bundle-ID com.apple.mail (Rule osascript-apple-apps). Kein Versand ohne Freigabe.
7. Kurzeintrag im CHANGELOG-Stil ans Ende des Berichts: was geprueft wurde, mit Zahlen belegt.