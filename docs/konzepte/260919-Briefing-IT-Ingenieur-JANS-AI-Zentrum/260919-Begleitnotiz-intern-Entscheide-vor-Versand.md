# Begleitnotiz intern: Entscheide vor dem Versand des Briefings

Raphael Jans Architekten ETH/SIA · Stand 19.09.2026 · Nur für den Inhaber, nicht an den Ingenieur weitergeben

## 00 Big Points

**00.1 Das Briefing ist versandbereit bis auf Deine Entscheide.** Offen sind die Termine (Platzhalterlinien), der Budgetrahmen und die Bestätigung des Hub-Schnitts. Alles Weitere steht.

**00.2 Drei Entwürfe, drei Richter, ein Ergebnis.** Geprüft wurden Cloud-first, eigener Server und Hybrid. Alle drei Richter (Plattform-Architekt, Inhaber-Sicht, Datenschutz und Sicherheit) wählen den Hybrid als Rückgrat: kleiner Kern zuerst, Ausbau nur bei geschäftlichem Auslöser. Das Briefing ist so gebaut.

**00.3 Die Grössenordnung liegt weit über den CHF 20'000 des Strategiepapiers vom Juli.** Jenes Papier hatte einen anderen Zuschnitt (GPU-Workstation, Lizenzen, ein bis zwei Integrationstage) und adressiert keinen der heutigen Befunde. Die Schätzung für Stufe 1 steht in Abschnitt 04, ausdrücklich ohne Offertgrundlage.

**00.4 Ein Termin drängt unabhängig vom Ingenieur.** Am 02.10.2026 steht der erste unbeaufsichtigte Monatslauf der bexio-Buchungen an, heute ohne Betragsgrenze. Abschnitt 02 nennt die Sofortmassnahmen. Der Punkt steht im Fristen-Register.

**00.5 Der Engpass bist Du.** Alle Richter halten fest: bindend ist nicht die Zahl der Ingenieurtage, sondern Deine Verfügbarkeit für Entscheide und wache Umschaltfenster. Belegt sind 24 Tage zwischen «gebaut» und «geladen». Plane ein bis zwei Tage je Woche über fünf bis neun Monate.

## 01 Wie das Briefing entstanden ist

**01.1 Ist-Analyse.** Zehn parallele, rein lesende Analyse-Läufe über je ein Subsystem, 120 belegte Befunde, zusammengeführt im Befundkatalog (48 Seiten). Drei Kernzahlen habe ich an der Quelle nachgemessen: 2'543 Läufe mit 43 % Fehlläufen, 346 Mount-Abrisse am 17.09., 46 Task-Definitionen.

**01.2 Panel.** Noten 1 bis 5, höher ist besser.

| Richter | A Cloud-first | B Eigener Server | C Hybrid |
|---|---|---|---|
| Inhaber-Sicht | 3.2 | 2.6 | 4.0 |
| Plattform-Architekt | 3.4 | 3.0 | 4.0 |
| Datenschutz und Sicherheit | 3.5 | 3.0 | 3.5 |

**01.3 Was aus A und B übernommen wurde.** Aus A: Berechtigungsprofile vom werkzeuglosen Leser bis zum aussenwirksamen Profil, «Risiko zuerst», Kostenmodell der KI in drei Szenarien, Entscheid, welche Routinen gar nicht migriert werden. Aus B: Stecker-Probe, Schattenbetrieb (beide erzeugen, nur das alte System sendet), Nachbau durch eine zweite Fachperson, Datenklasse «lizenzgebunden», Mac-Worker holt Aufträge ab. Korrekturen an C: schlanke Geräteverwaltung und Neuinstallation der dritten Station schon in Stufe 1, Mandantenfeld ab dem ersten Datenbankschema, Studio-Hosting mit Anmeldung als frühes, kleines Paket.

## 02 Sofortmassnahmen ohne Ingenieur

**02.1 bexio vor dem 02.10.2026.** Du hast am 17.09. «alles automatisch, ohne Betragsgrenze» bestätigt. Alle drei Richter raten, das vor dem ersten unbeaufsichtigten Monatslauf nochmals zu prüfen: Betragsschwelle und Vier-Augen-Freigabe festlegen, den Test des Zahlungs-Scope zurückstellen, den Lauf vom 02.10. als Trockenlauf mit Bericht fahren. Die Whitelist verlangt für Buchungen Stornierbarkeit, die Spec vom 17.09. kennt keinen Storno-Weg. Dieser Widerspruch ist vor dem Lauf zu klären.

**02.2 NAS-Backup nachweisen.** Im DSM prüfen, ob Hyper Backup läuft, wohin, wann zuletzt. Eine Datei wirklich zurückholen. Im Hub steht dazu nur eine Zeile vom 10.06.2026, das Volume ist zu 93 % belegt.

**02.3 Zweiter Alarmkanal.** Push-Kanal und ein externer Dead-Man-Switch für Tagesbriefing und Fristen-Radar. Der Mail-Weg ist mindestens dreimal still ausgefallen.

**02.4 GitHub-Konto prüfen.** Zwei-Faktor, Branch-Schutz, Schreibrecht des Deploy-Schlüssels der Synology.

**02.5 Ausführung per Push entschärfen.** Der Remote-Task-Runner führt jede gepushte Shell-Datei aus. Abschalten oder hinter die Freigabe-Schwelle stellen.

**02.6 Freigabe-Rückkanal per Mail stilllegen.** Er prüft nur die Absenderadresse. Bis eine authentisierte Freigabe steht, Freigaben nur im Gespräch.

**02.7 MacBook Pro härten.** Firewall ein, SSH nur mit Schlüssel, Bildschirmfreigabe und Dateifreigabe nur im Tailnet. Systemschalter stellst Du selbst, den Klickweg liefere ich auf Zuruf.

**02.8 Alte Zugänge schliessen.** Die frühere Microsoft-365-App mit Client-Secret in Entra prüfen und entfernen. Den nicht genutzten Gmail-Connector mit Senderecht in claude.ai deaktivieren.

**02.9 Studio-Links.** Den Zufallslink-Deploy einfrieren, bis ein Hosting mit Anmeldung steht. Den einen Live-Link prüfen.

**02.10 Baustopp.** Ab jetzt keine neuen Wächter, Scheduler und Queues. Lern-Loops mit Zahl und Termin reduzieren. Der Ingenieur soll kein Ziel verifizieren, das sich täglich bewegt (heute 135 Commits je Tag, 13 Betriebsbefunde je Woche).

## 03 Entscheide vor dem Versand

**03.1 Budgetrahmen und Bestellform.** Gesamtauftrag Stufe 1 oder Tranchen je Etappe, Obergrenze für die Erstbestellung. Vorschlag: Tranchen, zuerst nur AP0.

**03.2 Wachstumsziel.** Wie viele Mitarbeitende und Stationen bis wann. Das Audit vom 10.06. nennt bis fünf weitere Stationen, das Briefing schreibt «einige Mitarbeitende». Bitte bestätigen oder beziffern.

**03.3 Hub-Schnitt.** Neun Hubs in drei Gruppen, siehe Briefing 04.3. Der Schnitt ist mein Vorschlag aus Geschäftsmodell und Service-Katalog, im Repo gab es dazu kein Konzept.

**03.4 Git-Standort und Historie.** GitHub mit Schutzregeln behalten, Schweizer oder EU-Hosting, oder selbst gehostet. Umgang mit der bestehenden Historie samt dem Bewerberdatensatz vom 23.08.: Vorschlag neu aufsetzen mit bereinigtem Stand, altes Repository einfrieren.

**03.5 Zentrale.** Linux-Host statt Mac mini als Zentrale. Damit entfällt der offene Entscheid «FileVault aus» auf dem Mac mini, FileVault bleibt überall an.

**03.6 NAS.** Erweitern, ersetzen oder kalte Archive auslagern. Welche Wiederherstellungszeit ist für Büroarchiv und laufende Projekte tragbar.

**03.7 Zwei Rechtsträger.** Nutzt die AG denselben Hub als zweiten Mandanten oder eine getrennte Instanz. Wie wird verrechnet.

**03.8 Partnerbüros.** Werden Fremddaten wirklich verarbeitet, auf welcher Vertragsgrundlage, mit oder ohne anonymisierten Rückfluss der Kennwerte.

**03.9 Datenstandort.** Ist Schweiz zwingend oder genügt EU mit Vertrag. Vorher die Geheimhaltungsklauseln der Bauherrschaften im Spitalumfeld prüfen lassen.

**03.10 Rollenteilung.** Was die KI weiterhin selbst bauen darf (Skills, Wissen, Harness über Vorschläge) und was nur über den Ingenieur läuft (Plattform, Identität, Netz, Secrets, Policy).

**03.11 Privat und Geschäft.** Private Mailkonten und private Scripts (IPTV) aus dem Geschäfts-Hub herauslösen.

**03.12 Umfang vor Migration.** Welche der 46 Routinen und der 21 nie aufgerufenen Skills überhaupt weiterleben. Jede gestrichene Routine spart Ingenieurtage.

**03.13 Wartungsmodell.** Gewünschte Reaktionszeiten, Patch-Fenster, Stellvertretung im Notfall.

**03.14 Bewertungskriterien.** Die Gewichte in Briefing 11 (30, 20, 20, 15, 15) sind mein Vorschlag. Ebenso Bindefrist drei Monate und höchstens 15 Seiten.

**03.15 Wen anfragen.** Mindestens drei Anbieter, damit die Offerten vergleichbar sind. Namen kenne ich keine und erfinde keine.

## 04 Aufwand und Kosten zur Plausibilisierung der Offerten

**04.1 Vorbehalt.** Alle Werte sind Schätzungen des Panels ohne Offertgrundlage. Sie dienen nur dazu, eingehende Offerten einzuordnen. Nicht weitergeben, sonst setzt Du den Preisanker selbst.

**04.2 Bandbreiten.**

| Position | Schätzung |
|---|---|
| Stufe 1 (AP0 bis AP10), Ingenieurtage | 60 bis 100 |
| Eigenleistung Büro mit KI | 20 bis 40 Tage |
| Kleinste sinnvolle Erstbestellung | 25 bis 40 Ingenieurtage |
| Ausbaupakete AP11 bis AP14 zusammen | 35 bis 70 Ingenieurtage |
| Wartung | 1 bis 2 Tage je Monat |
| Hardware (Host, USV, Backup-Ziel, Switch) | CHF 3'300 bis 8'000 |
| NAS-Ersatz oder Erweiterung, separat | CHF 2'500 bis 6'000 |
| Plattformdienste je Monat | CHF 60 bis 340 |
| Kalenderdauer Stufe 1 | 6 bis 9 Monate |

**04.3 Tagessatz.** Unbekannt, vom Ingenieur zu offerieren. Mit der Annahme CHF 1'200 bis 1'800 je Tag läge Stufe 1 bei rund CHF 72'000 bis 180'000, die Erstbestellung bei CHF 30'000 bis 72'000, die Wartung bei CHF 1'200 bis 3'600 je Monat. Die Varianten Cloud-first und eigener Server schätzte das Panel höher (bis rund CHF 185'000 beziehungsweise CHF 265'000).

**04.4 Warnzeichen in einer Offerte.** Stufe 1 deutlich unter 50 Ingenieurtagen (dann fehlen Freigabeschicht oder Datenschutz), Wartung unter einem Tag je Monat bei vielen selbst betriebenen Diensten, keine ausgewiesene Eigenleistung, kein Zeitbedarf des Inhabers, mehr als eine Handvoll selbst betriebener Dienste.

**04.5 KI-Kosten.** Das Journal weist USD 2'393 API-Äquivalent in 7.5 Wochen aus, heute vom Abo gedeckt. Darin stecken 43 % Fehlläufe und rund die Hälfte Treiberläufe, es fehlen aber die App-Routinen als grösster Verbraucher. Als Planwert taugt die Zahl nicht. Ein bereinigter Wert ist erst nach der Migration der Routinen messbar.

## 05 Kosten ausserhalb der Technik

**05.1 Rechtsfachperson.** DSG, Auftragsbearbeitung, Auslandbekanntgabe, Lizenzen der Normen und des Fachbuchs, Geheimhaltung im Spitalumfeld. Früh beiziehen, vor dem Standortentscheid.

**05.2 Versicherung.** Deckung der Berufshaftpflicht und einer Cyberversicherung für KI-gestützte Fixpreisprodukte und autonome Buchungen klären.

**05.3 Gesamtübersicht IT-Kosten heute.** Claude-Abos, Microsoft 365, bexio, Hosting, GitHub, Tailscale. Im Hub nicht erhoben, als Vergleichsbasis nötig.

## 06 Was vor der Geheimhaltungsvereinbarung nicht herausgeht

**06.1 Heraus darf:** das Briefing und Beilage 1. Beide enthalten keine Adressen, Kennungen oder Namen Dritter, nennen aber Schwachstellenklassen. Darum auch sie nur an ausgewählte Anbieter und als «vertraulich».

**06.2 Erst nach Unterschrift:** Befundkatalog, Hub-Audit, Systemanalyse, Spec, Zugang zum Repository. Der Ingenieur wird selbst Auftragsbearbeiter mit hohen Rechten und braucht Geheimhaltungs- und Auftragsbearbeitungsvertrag, ein benanntes Konto und einen geregelten Austritt.

## 07 Profil des gesuchten Ingenieurs

**07.1 Muss.** Erfahrung mit agentischen Systemen (Claude Code headless oder Agent SDK), mit Microsoft Entra und Graph unter Least Privilege, mit Linux-Betrieb und Infrastructure as Code, mit Backup und Monitoring im KMU.

**07.2 Soll.** macOS-Flotten und Geräteverwaltung, Synology, OPNsense, Tailscale, Sicherheitsarchitektur gegen Prompt-Injection, Schweizer DSG in der Praxis.

**07.3 Haltung.** Jemand, der streicht statt aufbaut und die Frage 10.13 des Briefings gern beantwortet.

## 08 Ablage

**08.1 Ordner.** `/Volumes/daten/jans-ai-hub/docs/konzepte/260919-Briefing-IT-Ingenieur-JANS-AI-Zentrum/` mit Briefing, Beilage 1, Befundkatalog und dieser Notiz, je als MD, DOCX und PDF (Beilage als HTML und PDF).
