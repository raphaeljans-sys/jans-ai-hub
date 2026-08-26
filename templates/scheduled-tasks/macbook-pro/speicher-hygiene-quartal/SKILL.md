---
name: speicher-hygiene-quartal
description: Quartals-Putz Speicher-Hygiene: brew cleanup + Top-10-Verzeichnis-Report (loescht nichts ausser Homebrew-Caches)
---

Quartals-Putz Speicher-Hygiene auf dieser Station (Freigabe Raphael 14.08.2026, Anlass: Systemdaten-Analyse, siehe rules/betrieb-chronik.md 260814).

Auftrag, still und knapp:
1. `df -h /System/Volumes/Data` messen (vorher).
2. `brew cleanup --prune=all` ausfuehren (einzige erlaubte Loeschaktion).
3. Top-Verzeichnisse messen: `du -xsh ~/Library/Caches/* | sort -rh | head -10`, `du -xsh ~/Library/CloudStorage/* ~/Library/Group\ Containers/UBF8T346G9.OneDriveStandaloneSuite`, `du -xsh ~/Library/Preferences/Maxon`, Adobe-Altversionen in /Applications auflisten (mehr als eine Jahresversion je App = Befund).
4. NICHTS weiter loeschen, nichts evicten, keine Sync- oder Systemschalter anfassen (Rule auto-verbesserungen 260814: das macht Raphael selbst). Nur berichten.
5. Ergebnis als kurzen Abschnitt «Speicher-Hygiene <Datum>» in den heutigen Datumsblock von /Volumes/daten/jans-ai-hub/logbuch/LOGBUCH.md schreiben (Ein-Mail-Prinzip: keine Mail, der hub-chef liest das Logbuch). Falls NAS nicht gemountet: Report stattdessen nach ~/Developer/jans-ai-hub/ NICHT schreiben, sondern Lauf mit Vermerk beenden.

Modell-Politik (Rule modellwahl-routine): weniger als zehn Werkzeugaufrufe, alles inline im Hauptlauf, unabhaengige Messbefehle in EINEM parallelen Block, kein Subagent. Regellauf ohne Befund: zwei, drei Saetze im Logbuch, fertig.