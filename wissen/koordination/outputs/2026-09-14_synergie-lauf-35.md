---
title: Synergie-Lauf 35 (Tagestakt)
datum: 2026-09-14
delta_basis: 2026-09-11 17:10
fenster: 72 h, 299 Commits
neu: SYN-84, SYN-85
nachgefuehrt: SYN-76, P1 MacBook-App (Fristen-Register)
---

# Synergie-Lauf 35, 14.09.2026

## Big Points

1. **Der App-Ausfall traf beide Stationen, im Register stand nur eine.** Die Mac-Mini-App war vom 12.09. 22:37
   bis 14.09. 13:57 im selben `session_stale_relogin`-Latch wie das MacBook: 11 gescheiterte Starts, darunter der
   eigene `vollgas-chef-radar` (viermal), `heartbeat-daily` und `bauleitung-training`. Die Mini-Nachtschicht (CLI)
   mass den Ausfall viermal, aber jedes Mal nur per `ssh macbook`. **SYN-85.**
2. **Beide Ausfälle sind seit 14.09. um 13:58 behoben** («sessionKey rotated», Mini 13:57:54, MacBook 13:59:07).
   Dieser Lauf (17:10:23) ist der erste bestätigte MacBook-Start danach. Im Fristen-Register als erledigt nachgetragen.
   Gegenprobe: `hub-chef-taeglich` am 15.09. um 08:35.
3. **Die Präsentations-Regel 260913 erreicht ihren Erzeuger nicht.** `agents/dokument.md` nennt «PPTX/Folien»,
   `dokument-layout-standard` führt PPTX als eigenes Format. Beide Vermerke sind gesetzt. Dazu kommt ein alter Widerspruch
   im Agenten (Arial, Dunkelblau, 1" Rand), der ebenfalls vermerkt ist. Kein InDesign-Generator im Hub, obwohl am 14.09.
   drei InDesign-Erzeugnisse entstanden sind. **SYN-84.**
4. **SYN-76, Gegenmessung vom 14.09.:** `bauleitung-training` wurde um 04:26 gestartet und scheiterte am Mini-Latch.
   Bilanz: 2 Slots, 0 Läufe. Nächste Gegenmessung am 21.09.

## Delta

Fenster 11.09. 17:10 bis 14.09. 17:10. Die Läufe vom 12. und 13.09. fielen durch den MacBook-Latch aus. Uhr ohne
Abweichung (Station 17:10, Synology 17:00:09). Gemessen wurde nativ im SSD-Klon, die Anschlussprobe ist lückenlos.
Strukturell geändert: `rules/auto-verbesserungen.md` (260913), `rules/betrieb-chronik.md`, `connectors/WEGE.md`,
dazu neu `scripts/papierkorb-dataless-loeschen.py`. Kein neuer Baustein.

## Gesetzt (active-with-flagging, rein additiv)

01.1 **agents/dokument.md** mit zwei Vermerken: Präsentationen als InDesign (260913); «Design-Vorgaben» sind überholt,
es gilt `dokument-layout-standard`. Der Wortlaut bleibt unangetastet, über die Streichung entscheidet Raphael.

01.2 **rules/dokument-layout-standard.md** mit einem Querverweis in «Geltung»: PPTX ist kein Lieferformat mehr.

01.3 **logbuch/fristen.md** mit dem ERLEDIGT-Absatz zum P1 MacBook-App samt Mini-Befund und einem Nachtrag zur
SYN-76-Zeile.

01.4 **rules/betrieb-chronik.md** mit Eintrag 260914b.

## Nullbefunde

Papierkorb-Eingriff: Die Regel ist erfüllt (Chronik, Fristen, WEGE). Keine Überschneidung mit `tenant-hygiene`.
SYN-83 und SYN-81 sind unbewegt. InDesign ist auf beiden Stationen installiert.

## To-do Raphael

02.1 Streichung der Zeilen «Design-Vorgaben» in `agents/dokument.md` freigeben (SYN-84 c).

02.2 Entscheid, ob das InDesign-Scripting der KISPI-Vorlagen als Hub-Werkzeug gebaut wird (SYN-84 d).

02.3 CLI-Probe auf «Cannot start session» für beide Stations-Logs in heartbeat oder `stationen-watchdog` (SYN-85 b).
