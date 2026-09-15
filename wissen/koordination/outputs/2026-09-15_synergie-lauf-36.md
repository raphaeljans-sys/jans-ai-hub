---
title: Synergie-Lauf 36 (Tagestakt)
datum: 2026-09-15
delta_basis: 2026-09-14 17:10
fenster: 24 h, 113 Commits
neu: SYN-86, SYN-87
nachgefuehrt: SYN-85
---

# Synergie-Lauf 36, 15.09.2026

## Big Points

1. **Das Fristen-Register führte als letzten offenen Rest eine Aktion, die längst erledigt ist.** An der
   Speicherpool-Zeile stand weiter «Rest offen: Tenant-Versionslimit auf Automatisch stellen». Der
   Hygiene-Lauf vom 14.09. hat gemessen, dass der Tenant **seit spätestens 27.07.** auf Automatisch steht
   und das nur neue Bibliotheken betrifft. Die sieben Bibliotheken von JANS.PROJEKTE stehen weiter manuell
   auf 500 Versionen. Die Korrektur stand bisher nur im Report und in der SKILL. Jetzt steht sie als
   Nachtrag an der Register-Zeile. **SYN-86.**
2. **Der neue Behebungsweg setzt auf eine Shell, die auf den Macs nicht läuft.** Die SKILL nennt die
   SPO Management Shell; WEGE führt sie als Windows-only. Das installierte PnP 3.1.0 hat
   `Set-PnPSiteVersionPolicy -EnableAutoExpirationVersionTrim -ApplyToExistingDocumentLibraries`
   (Signatur gemessen, Wirkung nicht). Der Vermerk in der SKILL ist gesetzt, ausgeführt wurde nichts.
   Stand Tenant: 917.67 GB, 87.07 %, bis zur 88-%-Marke fehlen 9.85 GB.
3. **Der Leitungskataster-Weg für die Stadt Zürich steht in WEGE, aber nicht in der KB.** Der Nachtrag
   vom 15.09. (GeoShop Stadt, ERZ-Planarchiv) erreicht den Wiki-Artikel `kartenportale-werkleitungskataster`
   nicht, auf den WEGE selbst verweist. Die offene Frage ist in `planungsgrundlagen` gesetzt. Der kantonale
   GeoShop ist als Sackgasse gemessen. **SYN-87.**
4. **SYN-85: Gegenprobe bestanden.** Der Mini-Lauf `energie-training` wurde am 14.09. um 22:37:54 bestätigt.
   Seit dem 14.09. um 12:58 gab es auf keiner der beiden Stationen einen Fehlstart.

## Delta

Fenster 14.09. 17:10 bis 15.09. 17:10, 113 Commits. Uhr ohne Abweichung (Station 17:10, Synology-Log
17:00:06). Gemessen nativ im SSD-Klon, HEAD `3cdbfcc65`. Kein neuer Skill, Agent, Connector, Command oder
Rule. Geändert haben sich:

| Datei | Commit | Umfang | Einordnung |
|---|---|---|---|
| `skills/tenant-hygiene/SKILL.md` | `ea61c2313` | 12/0 | geprüft → SYN-86 |
| `connectors/WEGE.md` | `3cdbfcc65` | 7/0 | geprüft → SYN-87 |
| `rules/jans-dna-facetten.md` | `cfb2b7d3d` | 20/29 | Auto-Block, gewollt, Nullbefund |
| `rules/anrede-kontakte.md` | `b3572721b` | 9/0 | Wissens-Chef Lauf 58, dort geprüft |
| `agents/dokument.md`, `rules/dokument-layout-standard.md`, `rules/betrieb-chronik.md` | `e50dbd81e`, `670212cc1` | – | eigene Schreibvorgänge Lauf 35 |

## Gesetzt (active-with-flagging)

1. `logbuch/fristen.md`: datierter in-place-Nachtrag an der Speicherpool-Zeile, Zeilenzahl 5521 → 5521.
2. `skills/tenant-hygiene/SKILL.md`: Contract-Pflichtfelder `Vorgelagert`/`Nachgelagert` sowie ein Vermerk,
   dass PnP das Gegenstück zur SPO-Shell ist (85 → 99, Wortlaut vom 14.09. unangetastet).
3. `wissen/planungsgrundlagen/wiki/QUESTIONS.md`: neuer Abschnitt mit den Punkten (a) bis (c), wobei (c)
   im selben Lauf gemessen und abgehakt wurde (2264 → 2287). CHANGELOG der KB nachgeführt.

## Offen (Raphael bzw. spätere Läufe)

1. **Versionsrichtlinie auf Bibliotheks-Ebene setzen**, danach trimmen. Das geht nur interaktiv und nach
   Freigabe Raphael (Phase 2). Dabei einmal prüfen, ob der App-Token für `Set-PnPSiteVersionPolicy` reicht,
   und das Ergebnis in WEGE Weg 3 eintragen.
2. **§8 «Stadt Zürich»** in `kartenportale-werkleitungskataster` einarbeiten und den Kostenwiderspruch
   zwischen den WEGE-Nachträgen vom 08.09. und 15.09. klären.
3. **Methodisch (Entwurf):** Wer als Aufsichts-Loop eine eigene frühere Empfehlung korrigiert, sucht deren
   Stelle im Register und trägt die Korrektur dort nach.

WEGE.md wurde bewusst nicht editiert, weil eine interaktive Session die Datei um 16:4x zuletzt geschrieben hat.
Es wurde keine Mail verschickt und nichts am Tenant ausgeführt.
