# Konversations-Destillat 19.09.2026

MacBook Pro 23 Sessions · Mac Mini 22 Sessions · Cloud/Dispatch 4 — Fenster 26h
(18.09.2026 07:07 bis 19.09.2026 09:07 CEST; Lauf verspätet, weil das MacBook Pro über Nacht aus war)

Echte Gespräche: 8 Sessions, alle am 18.09. zwischen 12:20 und 14:26 CEST auf dem Mac Mini, zu
sechs Themen. Auf dem MacBook Pro keine neue Eingabe Raphaels (die Tailscale-Session 1de07953
zeigt nur den Stand vom 17.09., steht im Destillat vom 18.09.). Cloud/Dispatch: vier
Nachtschicht-Zyklen des Mac Mini, keine Handy-Aufträge, keine neuen Remote-Task-Ergebnisse.
`ssh mini` lief sauber.

Der Logbuch-Radar hat heute um 09:0x bereits den Roh-Digest gelesen und die KISPI-Punkte
(GVZ-Eingabe, josmos-Adresse, Deckenspiegel-DWG) eingetragen. Dieses Destillat ergänzt dort nur,
was im Register noch fehlt.

Big Points:
1. KISPI GVZ-Eingabe Sprühnebelanlage: Abklärung und JOMOS-Vorlage gebaut, Mail 13:42 raus; Knackpunkt ist die Zeit (Prüfdauer 3 bis 6 Wochen gegen Endmontage KW 42).
2. KISPI Deckenspiegel OG1 Sektor 41 als leichtes DWG für die Metalldecken-Ausschreibung bereit.
3. Kontakte Tonet und Rothe erschienen nicht auf dem Handy: Ursache am Mac gefunden und behoben.
4. MacBook-Display wird jetzt vom Mac Mini aus geweckt (`wach` und Dienst `ch.jans.macbook-wecker`); Entsperren bleibt offen.
5. «Kompletter Systemzugang» nicht erteilt; die Rückfragen kommen von Computer-Use und macOS, nicht von Claude Code.

## 01 KISPI PPTS: GVZ-Eingabe Anpassung Sprühnebelanlage 1. OG, Auflage II.26 (Mac Mini, Session 13c27f3a, 18.09. 12:46 bis 13:25)

**Kern und Entscheide.**
Auftrag Raphael: klären, ob für den Umbau PPTS «eine eingabe des Abänderungsplanes der
Sprinkleranlage bei der GVZ» nötig ist, «weniger als 10 Stk. Sprinklerköpfe», A4 mit Sachlage,
und ob ein Schreiben an die Feuerpolizei vom Architekten oder von JOMOS kommen soll.

1. **Schwelle:** Projektbegutachtung nur bei Neuanlage, Generalüberholung, Erweiterung mit mehr
   als 10 Sprinklern oder 100 m² sowie bei «wesentlicher Änderung» (VKF-Brandschutzrichtlinie
   19-15 Ziff. 5.1, GVZ-Weisung 20.08 Ziff. 7.1 Abs. 1, im Original nachgelesen). «Wesentliche
   Änderung» ist nirgends definiert, Ermessen der GVZ.
2. **Auflage II.26 des Bauentscheids** verlangt ohne Schwellenvorbehalt Einreichung und
   Genehmigung vor Ausführungsbeginn. Ohne schriftlichen GVZ-Beleg bleibt sie bei der
   feuerpolizeilichen Abnahme offen.
3. Im 1. OG ist eine **Sprühnebelanlage EconAqua** verbaut (Sonderanwendung, Weisung Ziff. 4.8),
   JOMOS-Anlage-Nr. 57891, Sektor 41. **JOMOS ist Systemträgerin, darum kommt das Schreiben von
   JOMOS** (Antworten Raphael: Systemträgerin «ja», Düsen «ca. 5», Fläche «464 Nutzfläche»).
4. **464 m² liegen über der 100-m²-Schwelle.** Die Argumentation lautet jetzt: keine Erweiterung
   der geschützten Fläche, Schutzumfang, Hydraulik und Zulassung unverändert. Vertretbar, aber
   schwächer; die GVZ kann Fläche plus Nutzungsänderung Büro zu Klinik als wesentliche Änderung
   lesen.
5. **Rückfallebene bezahlt:** Auftrag 308115-79 enthält die Vorabklärung als Titel 1 für
   CHF 4'500.00 (entfällt bei GVZ-Bestätigung).
6. **Zeitkonflikt:** JOMOS rechnet mit 3 bis 6 Wochen Prüfung; Endmontage laut Terminplan vom
   08.06.2026 in KW 42. Das Schreiben muss darum in KW 39 bei der GVZ sein.
7. Auf Raphaels «kannst du es noch vereinfachen» auf drei Absätze gekürzt. **In der Vorlage steht
   die Endmontage als Lücke «Kalenderwoche ____».** Der Satz «die neue Nutzung ist durch die
   bestehende Auslegung abgedeckt» steht ohne Vorbehalt; JOMOS soll ihn prüfen.

Ablage: `.../AR - 01 Projekte/2619_KINDERSPITAL/03_BKP/LOS_259.21 Sprinkleranlage JOMOS/`
`260918-Abklaerung-GVZ-Eingabe-Spruehnebel-PPTS/` und
`260918-Vorlage-Schreiben-JOMOS-an-GVZ-Auflage-II26/`; Wissens-Rücklauf
`wissen/auflagebereinigung/outputs/2026-09-18_gvz-eingabe-unter-schwelle-spruehnebel.md`.
Raphael hat danach selbst um 13:42 an JOMOS, Gruner und KISPI versandt (Radar-Zeile).

**Offene Punkte.** JOMOS reicht in KW 39 ein und setzt die KW ein; J. Ziegel bis 05.10.
abwesend, Vertretung N. Meragi. Alter Entwurf 13:25 kann weg (Aktion Raphael).

**Radar-relevant: ja.** Betrifft Zeile «NEU 19.09.2026, 09:0x — GVZ-Eingabe Sprühnebelanlage»;
Nachtrag mit Prüfdauer, KW-Lücke und 464-m²-Einschätzung ins Register.

## 02 Falsche Adresse tim.harder@josmos.ch in Outlook (Mac Mini, Session 2d875755, 18.09. 13:53 bis 14:11)

**Kern.** Adressbuch sauber (nur `tim.harder@jomos.ch`), Apple Mail sauber; der Tippfehler steckt
nur in der Outlook-Vorschlagsliste des Kontos rj@. Herkunft: zwei KISPI-Mails «Anpassung
Sprühnebelanlage …» vom 07.05.2026 16:47 und 16:55 an die falsche Adresse. Entfernen gelang nicht:
Mac-App bietet kein X, Web-Outlook im gesteuerten Chrome-Profil meldet «kein Postfach» (rj@ ist
laut Graph lizenziert und erreichbar; Verdacht alte admin@-Sitzung). Kein Passwort eingegeben,
keine Cookies gelöscht.

**Offene Punkte (Aktion Raphael).** Inkognito-Fenster, outlook.office.com, neue Mail, «hard»
tippen, X beim josmos-Eintrag. Oder Claude mit «Cookies löschen» beauftragen.

**Radar-relevant: ja**, bereits eingetragen (Zeile «NEU 19.09.2026, 09:1x — … an eine falsche
Adresse»). Brisanz: die GVZ-Argumentation stützt sich auf Harders Telefonaussage vom 07.05.

Dazu am Rand: `/Users/raphaeljans/Desktop/_Jomos Kontakt.docx` auf Wunsch tabellenfrei neu
gesetzt (Session e8c6936a, 12:58; Original als `_Jomos Kontakt-ORIGINAL.docx` daneben).

## 03 KISPI LOS 283.10: Deckenspiegel OG1 Sektor 41 als DWG (Mac Mini, Session e19f3174, 18.09. 12:40 bis 14:26)

**Kern.** Auf Truninger liegt nur ein Gesamt-DWG OG1 (`S-ARC_3600_DS-01_XX_DECKENS-OG1.dwg`,
19 MB, Satz 52 Ausführung); die Revisionspläne 53 gibt es nur als PDF. Auf zweimal «ja bitte»
heruntergeladen und über Rhino auf Sektor 41 geschnitten (LibreDWG scheiterte am Revit-DWG):
1.6 MB, AutoCAD 2007, Meter, Originalkoordinaten; enthält Lüftung/HLK 700, Leuchten 455,
Elektro 187, Sprinkler 122 Objekte. Nicht in ArchiCAD geöffnet.

**Offene Punkte.** Planindex DWG (Satz 52) gegen das jüngere Revisions-PDF prüfen, bevor die
Deckeneinbauten ins LV gehen (Deckblätter C-DB01, D-DB01 dazwischen).

**Radar-relevant: ja**, bereits als ERLEDIGT 19.09. 09:1x eingetragen.

## 04 Kontakt Aaron Tonet (und Nicklas Rothe) aufs Handy (Mac Mini, Session b06a966f, 18.09. 12:38 bis 14:08)

**Kern.** Raphael wollte Aaron Tonet (Nova Property Fund Management AG, Senior Transaction
Manager) «heute per kontakt suche auf dem handy» finden und anrufen. Kontakt angelegt (Direkt
+41 58 255 37 27, Zentrale +41 58 255 37 37, aaron.tonet@novaproperty.ch), erschien aber nicht.
Auch Nicklas Rothe (angelegt 31.08.) fehlte. **Ursache:** beide hingen nur am Konto «rj I JANS»,
nicht im Exchange-Ordner «Kontakte»; nur der Ordner synchronisiert. Beide in den Ordner gelegt
(21 von 21), Backup `/Users/raphaeljans/Kontakte-Waisen-Backup-260918.vcf`, WEGE.md berichtigt.
Nebeneffekt: eine zweite Tonet-Kopie im iCloud-Konto, bewusst stehen gelassen. Tonet fehlt in
`rules/anrede-kontakte.md`.

**Offene Punkte.** Raphael meldet, ob Tonet und Rothe unter rj I JANS erscheinen; dann löscht
Claude die iCloud-Kopie (Zusage). Server-Ankunft ist nicht prüfbar (Graph Kontakte 403).

**Radar-relevant: ja, indirekt.** Betrifft Dauerpunkt «Antwort A. Tonet zum Durchleitungsrecht»
(zwei Entwürfe seit 15.09., Tag 9): Raphael wollte ihn offenbar am 18.09. anrufen; ob telefoniert
wurde, ist nicht belegt.

## 05 MacBook-Display vom Mac Mini aus wecken (Mac Mini, Session d6d8bba9, 18.09. 12:20 bis 14:04)

**Kern.** Das MacBook schläft am Netzteil nicht, nur das Display geht aus. Neu: Befehl `wach` im
Terminal des Mini (`/Volumes/daten/jans-ai-hub/scripts/macbook-wecken.sh`) und auf Raphaels «ja
finde ich eine gute Idee» der Dienst `ch.jans.macbook-wecker` (weckt bei Aufwachen oder
Entsperren des Mini; Programm lokal `/Users/raphaeljans/bin/macbook-wecker`, Log
`~/Library/Logs/macbook-wecker.log`). Auf die Rückmeldung «ultraschnell schwarz» Wachhaltezeit von
5 auf 90 Sekunden erhöht. Rückbau: `launchctl bootout gui/$(id -u)/ch.jans.macbook-wecker`.

**Offene Punkte (Entscheid Raphael).** Entsperren bei geschlossenem Deckel: Apple Watch, spätere
Passwortsperre oder eigene Bluetooth-Tastatur. Hinweis: in der Nacht auf den 19.09. war das
MacBook tatsächlich aus (Shutdown 23:37 laut Hub-Chef), der Wecker greift dann nicht.

**Radar-relevant: nein** (Komfort, keine Frist).

## 06 «Kompletter Systemzugang ohne Nachfragen» (Mac Mini, Session 5c32bfe2, 18.09. 13:55)

**Kern.** Raphael bat, Claude möge sich vollen Systemzugang erteilen. Nicht gemacht. Messung: in
Claude Code ist alles offen (`defaultMode: auto`, `Bash(*)` usw., 14 MCP-Server). Die Rückfragen
kommen von Computer-Use (Zustimmung je App und Session), von macOS (Automation,
Festplattenvollzugriff, Bedienungshilfen, einmal je Station) und bewusst vom Klassifikator und der
Freigabe-Schwelle. Vorschlag: unbeaufsichtigte Arbeit über Bash und Connectoren statt
Computer-Use; Claude misst auf Wunsch die fehlenden macOS-Haken je Station.

**Offene Punkte.** Raphael nennt den zuletzt hängengebliebenen Vorgang; macOS-Haken einmal je
Station setzen.

**Radar-relevant: nein** (keine Frist).

## 07 Kaufberatung Maus (Mac Mini, Session 277af80d, 18.09. 12:22 bis 12:29)

Logitech MX Master 4: Empfehlung Hellgrau normal für 89.90 (mit Bolt-Empfänger) oder «for Mac»
Space Black für 93.90; Universal Control per Bluetooth für das Zwei-Mac-Setup. Die Radar-Zeile
«Galaxus-Rechnung 86960418, CHF 89.90, zahlbar bis 09.10.2026» ist der Kauf dazu.
**Radar-relevant:** nur über die bestehende Rechnungszeile.

## Routine (nicht als Gespräch gezählt)

Rund 35 Routine-Läufe ohne Blocker: Hub-Chef 18.09. (Briefing 08:43) und 19.09. (nachgeholt,
still), Logbuch-Radar 18.09. und 19.09. (mailte heute selbst um 09:03, weil der Hub-Chef ausfiel),
Heartbeat beider Stationen (1 Task in der Freigabe-Queue, launchd SSD-First-Fallback), Vollgas-
Radar (Ampel FREI; eigener Fehlbefund «Lauf-Journal trocken» vom Mini 12:58 zurückgezogen),
Frühwarnung, AG-Gründungs-Monitor (unverändert, keine Mails seit 31.08.), mahnwesen-verzugscheck
und zahlungsabgleich (KISPI CHF 47'160.00; neu Tx 3796 CHF 4'800.00, beides im Register),
tenant-hygiene (828.71 GB, 79.38 %), Synergie-Lauf 39 (SYN-92), Wissens-Chef Lauf 62, zwei
Normen-Läufe, Energie Run 207, Twin Batch 124 und Fidelity 19.09. (60), vier Nachtschicht-Zyklen.
Besonderheit: die Nachtschicht setzte am 18.09. um 23:35 einen verbotenen git-Befehl ab; laut
Mini-Radar 00:58 «schon behoben».
