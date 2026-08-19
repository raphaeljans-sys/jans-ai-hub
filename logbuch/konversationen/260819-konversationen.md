# Konversations-Destillat 19.08.2026

Abdeckung: MacBook Pro 39 Sessions · Mac Mini 5 Sessions · Cloud/Dispatch 5 (fünf
Nachtschicht-Läufe Mac Mini, deckungsgleich mit den fünf Mini-Sessions;
`remote-tasks/results/` im Fenster leer) — Fenster 26 h (18.08. ca. 04:15 bis 19.08. ca.
06:15 CEST), Stand 19.08.2026 06:15. Beide Extraktionen rc=0, auch die via `ssh mini`.

**Raphael hat im Fenster kein einziges Gespräch geführt.** Alles, was der Rohdigest an
`RAPHAEL:`-Zeilen zeigt, ist entweder automatisiert (Stop-Hook-Feedback, Bild-Platzhalter
aus dem Read-Werkzeug, Dispatch-Prompt-Text, „Antworte nur mit: OK"-Sonden) oder stammt aus
Sessions, die inhaltlich weit ausserhalb des Fensters liegen. Dritter Tag in Folge ohne
echtes Gespräch (17.08. und 18.08. dieselbe Diagnose in den Vorlauf-Destillaten).

---

## Vorbemerkung: der Messfehler der Extraktion besteht am dritten Tag fort, mit einer neuen Beobachtung (MacBook Pro, gemessen 19.08.2026 06:15)

- **Kern/Befund:** `scripts/konversations-extract.sh` wählt weiterhin über `find -mmin`
  (Dateizeit), nicht über den echten Zeitstempel der letzten Nachricht. Gegen die JSONL
  selbst geprüft (`jq .timestamp`, jede der 39 MacBook-Sessions einzeln): **21 von 39
  Sessions liegen inhaltlich ausserhalb des 26-h-Fensters**, die meisten davon vom 17.08.
  Zwei Sessions sind besonders auffällig, weil sie **den dritten Tag in Folge** neu
  auftauchen, obwohl ihre letzte echte Nachricht auf **14.08. 2026, 14:47 Uhr** bzw.
  **13:12 Uhr** datiert: `c5f3a9c1` (Systemlast/Routine-Sessions/Quarantäne-Ordner/
  Transkript-Archiv aufs NAS) und `28edb7fc` (150 GB Systemdaten, Caches, Dropbox-Empfehlung
  auf beiden Stationen). Beide sind bereits im Register verankert (Zeile „Speicherplatz
  MacBook Pro", Quelle „Gespräch MacBook Pro 14.08.2026, Destillat 260816") und stehen hier
  **nicht** als neues Gespräch.
- **Neue Beobachtung: zwei getrennte Mechanismen, nicht einer.** (1) Der bekannte
  05:15-Block ist heute wieder da, diesmal mit **8 Dateien mit identischer mtime 19.08.
  05:15** (gestern 16, vorgestern der erste Fund) — inhaltlich sind alle acht tatsächlich
  im Fenster (Heartbeat, zwei Radar-Läufe, Wissens-Chef, Twin-Mail-Training,
  Normen-Buch-Training, Tenant-Hygiene), auch wenn ihr echter letzter Schreibzeitpunkt
  teils Stunden vor 05:15 lag (z. B. `a3d11c53` real 12:57 Uhr, mtime trotzdem 05:15 des
  Folgetags). Das stützt weiterhin den Kandidaten `ch.jans.claude-autoupdate` (Plist
  täglich 05:15), diesmal folgenlos, weil die betroffenen Dateien ohnehin frisch sind.
  (2) Die beiden 14.08.-Altfälle laufen **nicht** in diesem Block, sondern tragen eigene,
  von Tag zu Tag leicht wandernde Zeiten: 18.08. 05:19/05:20, heute 19.08. 05:20/06:19.
  Ein zweiter, noch unbenannter Mechanismus fasst also gezielt genau diese zwei Dateien an,
  unabhängig vom 05:15-Takt. Da es dieselben zwei Sessions sind wie am 18.08., ist es kein
  Zufallsmuster.
- **Offene Punkte / Folgeaktionen:** unverändert die im Register genannte Aktion (Auswahl
  auf den echten Nachrichten-Zeitstempel umstellen, Bild-Platzhalter herausfiltern). Neu zu
  prüfen: was genau `c5f3a9c1` und `28edb7fc` täglich anfasst, ohne den Inhalt zu ändern —
  ein gezielter Test (`stat` vor/nach einem vollständigen Tageszyklus, an genau diesen zwei
  Dateien) würde den zweiten Mechanismus eingrenzen.
- **Radar-relevant:** nein als neuer Punkt (betrifft Register-Punkt „Die
  Konversations-Extraktion misst die Dateizeit statt der Gesprächszeit", 17.08., offen) —
  die heutige Beobachtung gehört als dritter datierter Nachtrag dorthin.

---

## Routine-Läufe

Im Fenster liefen auf dem MacBook Pro rund 18 Loop- und Trainingssessions ohne
Besonderheiten: Heartbeat, zwei Logbuch-/Vollgas-Radar-Läufe, Hub-Chef-Lauf 18.08.2026,
Wissens-Chef Run 36, Twin-Mail-Training Batch 98, zwei Twin-Fidelity-Reviews, ein
Normen-Buch-Training-Lauf (Seitenkontrolle per Bild-Rendering), Tenant-Speicher-Hygiene,
zwei bexio-Läufe (Verzugscheck + Hygiene), sowie der eigene Vorlauf dieses Tasks
(774cb368, 18.08. 06:21). Auf dem Mac Mini fünf Nachtschicht-Dispatch-Zyklen (05:30,
13:30, 23:30, 02:30, 05:30) nach demselben Prioritäten-Schema wie an den Vortagen.

Zwei Punkte daraus sind operativ und stehen bereits im Register — hier nur zur
Vollständigkeit, ohne neue Zeile:

- **bexio antwortet den neunten Tag in Folge mit HTTP 401** (Verzugscheck und
  Hygiene-Lauf, beide 18.08.). Token seit 13.06.2026 unverändert, kein Verzugsstand
  messbar. RE-00100 (Nova, CHF 13'120) läuft am Donnerstag 20.08. ab und ist die nächste
  Frist ohne Live-Stand; RE-00101 (Tschopp, CHF 6'000) und RE-00098/99 (KISPI) bleiben
  unverifiziert. Es wurde nichts gemahnt, nichts gebucht, nichts versendet.
- **Ein Dispatch-Zyklus (18.08. 23:30) meldete einen fehlgeschlagenen NAS-Commit** wegen
  eines bekannten Tailscale-DNS-Fehlers; der 15-Minuten-Selfcommit-Cron übernahm die
  Sicherung planmässig, kein Datenverlust, kein Eingriff nötig.

Kein Blocker mit Registerbedarf. Der Nachtschicht-Zyklus 19.08. 02:30 (Wissenscheck
`kunde-bopp`) und 19.08. 05:30 (Energie-Training, Vollzugsordner Abschnitt 4.2–4.5) liefen
beide sauber innerhalb des Budgets durch.

---

## Register-Abgleich dieses Laufs

Geprüft gegen `logbuch/fristen.md`. **Keine neue Zeile inhaltlich nötig** — es gab kein
Gespräch mit Frist-, Zusage- oder Geldbezug. Die beiden Routine-Punkte oben (bexio-Token,
NAS-Commit-Fehlschlag) stehen bereits im Register bzw. sind durch die automatische
Selbstheilung gegenstandslos.

**Eine Ergänzung wäre sinnvoll:** an der bestehenden Zeile „Die Konversations-Extraktion
misst die Dateizeit statt der Gesprächszeit" (17.08., offen, mit Nachträgen vom 18.08.) ein
dritter datierter Nachtrag mit der heutigen Beobachtung — insbesondere der neue Befund, dass
zwei getrennte Mechanismen wirken (der 05:15-Block und der Mechanismus, der gezielt
`c5f3a9c1`/`28edb7fc` täglich anfasst). Diese Ergänzung nimmt Raphael selbst vor.
