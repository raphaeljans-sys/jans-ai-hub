---
name: planungsgrundlagen-wartung
description: Monatlicher Endpunkt-/Link-/Connector-Check der KB planungsgrundlagen (maintainer; ersetzt den eingestellten Quellen-Turnus)
---

Monatlicher WARTUNGSLAUF der Wissensbasis `planungsgrundlagen` (Station: Mac Mini bevorzugt, laeuft aber auf jeder Station). Umwidmung vom 30.07.2026, Entscheid Raphael nach 28 Erschoepfungsbestaetigungen: der Quellen-Turnus (grower) ist EINGESTELLT, dieser Loop ist ein MAINTAINER. Du produzierst KEIN neues Wissen und vergibst KEINE Trainings-Run-Nummer.

Vorbedingung: test -d /Volumes/daten/jans-ai-hub. Wenn nicht gemountet, einmal osascript -e 'mount volume "smb://diskstation918.tail8265aa.ts.net/daten"' versuchen, sonst still beenden.

Zuerst lesen: /Volumes/daten/jans-ai-hub/wissen/planungsgrundlagen/training/PROGRAMM.md (Statuskopf), wiki/QUESTIONS.md, der letzte Report unter outputs/.

AUFTRAG — genau diese vier Punkte, eng gefasst:

1. ENDPUNKT- UND LINK-FRISCHECHECK. Alle in wiki/ zitierten Endpunkte und Download-URLs auf Erreichbarkeit pruefen (HTTP-Statuscode, z.B. per curl -s -o /dev/null -w '%{http_code}'). Tote oder umgezogene Adressen ersetzen, wenn die neue belegbar ist; sonst im Artikel ausdruecklich als tot markieren mit Datum. Jede Aenderung mit Quelle belegen, nie raten.

2. CONNECTOR-FUNKTIONSTEST. Die eigenen Connectoren mit je einem realen Beispiel testen: connectors/geo-zh.mjs, skills/planungsgrundlagen/connectors/geo-sz.mjs (Achtung: skills/oereb-schwyz/connectors/geo-sz.mjs ist seit 30.07.2026 ein SYMLINK hierauf, es gibt nur noch EINE Fassung — nicht wieder aufspalten), connectors/behoerden-zh.mjs. Abweichungen beheben und den erfolgreichen Test als Benchmark im zugehoerigen Wiki-Artikel festhalten. Nie ungetesteten Connector-Code committen.

3. OFFENE AUFGABEN SICHTEN. wiki/QUESTIONS.md durchgehen und NUR abhaken, was nachweislich erledigt ist. Neue Luecken, die dieser Lauf findet, dort ergaenzen. Keine Wissensproduktion, keine Vertiefung von Fachfragen.

4. QUELLBESTAND KURZ PRUEFEN (eine Zeile). Nachsehen, ob in den vier PL-Ordnern auf SharePoint neues Material liegt. Wenn ja: NICHT selbst destillieren, sondern im Report vermerken und in QUESTIONS.md als Entscheid fuer Raphael eintragen (Reaktivierung als grower waere dann zu pruefen). Wenn nein: eine Zeile im Report, fertig.

OUTPUT: Report nach wissen/planungsgrundlagen/outputs/JJJJ-MM-TT_wartung-NN.md (NN fortlaufend, beginnend bei 01 — KEINE Trainings-Run-Nummer, die Zaehlung der Trainingslaeufe endete bei Run 92). CHANGELOG.md der KB ergaenzen (neueste zuoberst).

SICHERN: NIEMALS git commit/push/pull gegen /Volumes/daten/jans-ai-hub ueber den SMB-Mount ausfuehren (haengt uninterruptibel, blockiert die index.lock fuer alle, Rule 260726). Ausschliesslich: bash /Volumes/daten/jans-ai-hub/scripts/nas-commit-now.sh "planungsgrundlagen-wartung NN: <kurz>". Lesende git-Befehle sind erlaubt.

GRENZEN: keine Mails, keine Buchungen, keine Veroeffentlichungen, nichts loeschen. Dateien in raw/ werden nie editiert. Artikel umbenennen/mergen/loeschen nur nach Rueckfrage (Rule wissens-bibliothekar). Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, ss statt ß, keine erfundenen Zahlen. Datums-Prefix im Dateinamen immer aus LOKALER Zeit bilden (date "+%y%m%d" bzw. toLocaleDateString("sv-SE")), nie aus toISOString() — das datiert im Nachtfenster einen Tag zurueck.