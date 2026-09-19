# Begleitnotiz intern: Entscheide vor dem Versand

Raphael Jans Architekten ETH/SIA · Stand 19.09.2026 · Nur für den Inhaber, nicht an den Ingenieur weitergeben

## 00 Big Points

**00.1 Versandbereit bis auf fünf Entscheide.** Vor dem Versand brauche ich von Dir: Bestellform, Wachstumsziel, Hub-Schnitt, Bewertungsraster und die Anbieterliste, dazu die Termine in den Platzhalterlinien. Zehn weitere Entscheide gehören in den Workshop von AP0 und halten den Versand nicht auf.

**00.2 Zwei Stufen beim Versand.** Zuerst geht nur die zweiseitige Anfrage hinaus. Das Briefing und Beilage 1 folgen nach der Geheimhaltungsvereinbarung, der Befundkatalog liegt an der Begehung auf. Drei Prüfer haben unabhängig gewarnt: das volle Briefing beschreibt zusammen mit Firmenname und Mailadresse, wie das System angreifbar ist.

**00.3 Das Briefing ist auf dem Hybrid gebaut.** Geprüft wurden Cloud-first, eigener Server und Hybrid. Alle drei Richter des Panels wählen den Hybrid als Rückgrat: kleiner Kern zuerst, Ausbau nur bei geschäftlichem Auslöser.

**00.4 Die Grössenordnung liegt weit über den CHF 20'000 des älteren Investitionsplans.** Jenes Papier (im Hub seit Juli 2026 geführt) hatte einen anderen Zuschnitt: GPU-Workstation, Lizenzen, ein bis zwei Integrationstage. Von den heutigen Befunden streift es nur Backup und Datenschutz mit CHF 500. Die Schätzung für Stufe 1 steht in Abschnitt 05, ausdrücklich ohne Offertgrundlage.

**00.5 Ein Termin drängt unabhängig vom Ingenieur.** Am 02.10.2026 steht der erste unbeaufsichtigte Monatslauf der bexio-Buchungen an, ohne Betragsgrenze. Der Punkt steht im Fristen-Register, die Sofortmassnahmen in Abschnitt 02.

**00.6 Der Engpass bist Du.** Alle Richter halten fest: Bindend ist nicht die Zahl der Ingenieurtage, sondern Deine Verfügbarkeit für Entscheide und wache Umschaltfenster. Belegt sind 24 Tage zwischen «gebaut» und «geladen». Plane ein bis zwei Tage je Woche über sechs bis neun Monate.

## 01 Wie das Briefing entstanden ist

**01.1 Ist-Analyse.** Zehn parallele, rein lesende Analyse-Läufe über je ein Subsystem, 120 belegte Befunde, zusammengeführt im Befundkatalog (48 Seiten). Drei Kernzahlen habe ich an der Quelle nachgemessen: 2'543 Läufe mit 43 % Fehlläufen, 46 Task-Definitionen und 346 Stall-Meldungen des Keepalive am 17.09.2026. Letztere sind eine einzige Episode von 03:15 bis 09:07, nicht 346 Abrisse. Den Fehler hat die Gegenprüfung gefunden, er ist überall korrigiert.

**01.2 Panel in der Bilanz.** A Cloud-first: plus kleinster Eigenbetrieb, trägt Mitarbeitende und Mandanten am besten; minus zehn bis zwölf Anbieterbeziehungen, erzwingt faktisch den API-Betrieb, keine Sofortmassnahme vor dem 02.10. B Eigener Server: plus höchste Datenhoheit, härteste Abnahmetests; minus rund ein Dutzend selbst betriebene Dienste, teuerste und längste Variante, Klumpenrisiko Büro. C Hybrid: plus ein Host, eine Datenbank, Ausbau nur bei Auslöser, Sofortmassnahmen, Eigenleistung beziffert; minus Aufwände im Entwurf rund um die Hälfte zu tief (in 05 korrigiert), Geräteverwaltung und Mandantenfeld zu spät (im Briefing vorgezogen).

**01.3 Gegenprüfung.** Sechs Prüfer haben Briefing, Beilage und diese Notiz gelesen: skeptischer Ingenieur, Faktencheck, Rechtschreibung, Layout, Stil-Gate, Vertraulichkeit. Eingearbeitet sind unter anderem: Offerte verlangt nicht mehr gratis, was AP0 bezahlt liefert; Abnahmewerte sind als Vorschlagswerte markiert; «gemeinsame» Pakete haben eine Abgrenzung; Repository wird nur einmal geschnitten; sechs statt vierzehn Fragen.

## 02 Sofortmassnahmen ohne Ingenieur

**02.0 Versandbedingung.** 02.4 bis 02.7 und 02.9 sind erledigt, bevor das Briefing das Haus verlässt. Es zeigt genau auf diese Lücken.

**02.1 bexio vor dem 02.10.2026.** Du hast am 17.09.2026 entschieden, dass ich die Bankbewegungen ohne Betragsgrenze selbständig buche. Alle drei Richter raten, das vor dem ersten unbeaufsichtigten Monatslauf einzugrenzen, und ich teile das: Betragsschwelle und Vier-Augen-Freigabe festlegen, den Test des Zahlungs-Scope zurückstellen, den Lauf vom 02.10. als Trockenlauf mit Bericht fahren. Die Whitelist verlangt für Buchungen Stornierbarkeit, die Spec vom 17.09.2026 kennt keinen Storno-Weg. Die Umstellung der Task nehme ich auf Dein Wort vor.

**02.2 NAS-Backup nachweisen.** Im DSM prüfen, ob Hyper Backup läuft, wohin, wann zuletzt. Eine Datei wirklich zurückholen. Im Hub steht dazu nur eine Zeile vom 10.06.2026, das Volume ist zu 93 % belegt.

**02.3 Zweiter Alarmkanal.** Push-Kanal und ein externer Dead-Man-Switch für Tagesbriefing und Fristen-Radar. Der Mail-Weg ist mindestens dreimal still ausgefallen.

**02.4 Git-Konto prüfen.** Zwei-Faktor, Branch-Schutz, Schreibrecht des Deploy-Schlüssels der Synology.

**02.5 Ausführung per Push entschärfen.** Der Remote-Task-Runner führt jede gepushte Shell-Datei aus. Abschalten oder hinter die Freigabe-Schwelle stellen.

**02.6 Freigabe-Rückkanal per Mail stilllegen.** Er prüft nur die Absenderadresse. Bis eine authentisierte Freigabe steht, Freigaben nur im Gespräch.

**02.7 MacBook Pro härten.** Firewall ein, SSH nur mit Schlüssel, Bildschirmfreigabe und Dateifreigabe nur im Tailnet. Systemschalter stellst Du selbst, den Klickweg liefere ich auf Zuruf.

**02.8 Alte Zugänge schliessen.** Die frühere Microsoft-365-App mit Client-Secret in Entra prüfen und entfernen. Den nicht genutzten Gmail-Connector mit Senderecht in claude.ai deaktivieren.

**02.9 Studio-Links.** Den Zufallslink-Deploy einfrieren, bis ein Hosting mit Anmeldung steht. Den einen Live-Link prüfen oder vom Netz nehmen.

**02.10 Baustopp.** Ab jetzt keine neuen Wächter, Scheduler und Queues. Lern-Loops mit Zahl und Termin reduzieren. Der Ingenieur soll kein Ziel verifizieren, das sich täglich bewegt (heute 135 Commits je Tag, 13 Betriebsbefunde je Woche).

## 03 Entscheide vor dem Versand

**03.1 Bestellform und Budgetrahmen.** Gesamtauftrag Stufe 1 oder Tranchen je Etappe? Vorschlag: Tranchen, zuerst nur AP0, Obergrenze für die Erstbestellung nach Eingang der Offerten.

**03.2 Wachstumsziel.** Wie viele Mitarbeitende und Stationen bis wann? Das Audit vom 10.06.2026 nennt bis zu fünf weitere Stationen. Vorschlag: bei «einige Mitarbeitende» bleiben, eine Zahl braucht der Ingenieur erst beim Auslöser von AP14.

**03.3 Hub-Schnitt.** Neun Hubs in drei Gruppen, in Stufe 1 technisch nur drei Zonen (Briefing 04.3 und 04.6). Der Schnitt ist mein Vorschlag aus Geschäftsmodell und Service-Katalog, im Repo gab es dazu kein Konzept. Vorschlag: so versenden, AP0 darf ihn korrigieren.

**03.4 Bewertungsraster und Form.** Gewichte 30, 20, 20, 15, 15, Bindefrist drei Monate, höchstens zehn Seiten. Im Briefing 07.3 und AP10 stehen zudem drei Platzhalter für Dein Zeitbudget, Deine Entscheidfrist und die Servicezeiten. Vorschlag: ein Tag je Woche, Entscheid innert fünf Arbeitstagen, Servicezeiten werktags 07:00 bis 18:00.

**03.5 Anbieterliste und Vereinbarung.** Mindestens drei Anbieter, damit die Offerten vergleichbar sind. Namen kenne ich keine und erfinde keine. Auf Zuruf recherchiere ich eine Liste nach dem Profil in 07, je Eintrag mit Quelle. Die Anfrage kündigt eine Geheimhaltungsvereinbarung des Büros an. Kein Vorschlag, mir fehlt eine Vorlage: entweder stellt sie Deine Rechtsfachperson, oder Du akzeptierst die des Anbieters, dann passe ich Anfrage 04.2 an.

## 04 Entscheide für den Workshop von AP0

**04.1 Git-Standort und Historie.** Beim heutigen Hoster mit Schutzregeln bleiben, Schweizer oder EU-Hosting, oder selbst gehostet? Vorschlag: Standort nach juristischer Klärung, Repositorys mit bereinigtem Stand neu aufsetzen, das alte einfrieren (betrifft auch den Bewerberdatensatz vom 23.08.2026).

**04.2 Zentrale.** Linux-Host statt Mac mini als Zentrale. Vorschlag: ja. Damit entfällt der offene Entscheid «FileVault aus» auf dem Mac mini, FileVault bleibt überall an.

**04.3 NAS.** Erweitern, ersetzen oder kalte Archive auslagern? Welche Wiederherstellungszeit ist für Büroarchiv und laufende Projekte tragbar? Kein Vorschlag, mir fehlen RAID-Stand und Plattenalter.

**04.4 Zwei Rechtsträger.** Nutzt die AG denselben Hub als zweiten Mandanten oder eine getrennte Instanz? Wie wird verrechnet? Vorschlag: ein Hub, Mandantenfeld ab dem ersten Datenbankschema.

**04.5 Partnerbüros.** Werden Fremddaten wirklich verarbeitet, auf welcher Vertragsgrundlage, mit oder ohne anonymisierten Rückfluss der Kennwerte? Vorschlag: erst beim ersten konkreten Partner entscheiden, AP14 wartet darauf.

**04.6 Datenstandort.** Ist die Schweiz zwingend oder genügt die EU mit Vertrag? Vorschlag: vorher die Geheimhaltungsklauseln der Bauherrschaften im Gesundheitswesen prüfen lassen.

**04.7 Rollenteilung.** Vorschlag: Die KI baut weiterhin Skills, Wissen und Harness über Vorschläge, Plattform, Identität, Netz, Secrets und Policy laufen nur über den Ingenieur.

**04.8 Privat und Geschäft.** Vorschlag: private Mailkonten und private Scripts (IPTV) aus dem Geschäfts-Hub herauslösen.

**04.9 Umfang vor Migration.** Welche der 46 Task-Definitionen und der 21 nie aufgerufenen Skills überhaupt weiterleben. Vorschlag: ich lege Dir vor AP6 eine Streichliste vor. Jede gestrichene Routine spart Ingenieurtage.

**04.10 Wartungsmodell.** Reaktionszeiten, Patch-Fenster, Stellvertretung im Notfall. Vorschlag: aus den Offerten übernehmen und vergleichen.

## 05 Aufwand und Kosten zur Plausibilisierung der Offerten

**05.1 Vorbehalt.** Alle Werte sind Schätzungen des Panels ohne Offertgrundlage. Sie dienen nur dazu, eingehende Offerten einzuordnen. Nicht weitergeben, sonst setzt Du den Preisanker selbst.

**05.2 Bandbreiten.**

| Position | Schätzung |
|---|---|
| Stufe 1 (AP0 bis AP10) | 60 bis 100 Ingenieurtage |
| Eigenleistung Büro mit KI | 20 bis 40 Tage |
| Kleinste sinnvolle Erstbestellung | 25 bis 40 Ingenieurtage |
| Ausbaupakete AP11 bis AP14 zusammen | rund 30 bis 55 Ingenieurtage |
| Wartung | 1 bis 2 Tage je Monat |
| Hardware (Host, USV, Backup-Ziel, Switch) | CHF 3'300 bis 8'000 |
| NAS-Ersatz oder Erweiterung, separat | CHF 2'500 bis 6'000 |
| Plattformdienste je Monat | CHF 60 bis 340 |
| Kalenderdauer Stufe 1 | 6 bis 9 Monate |

**05.3 Herleitung.** Stufe 1 und Eigenleistung sind die Hüllkurve dreier Richterwerte für den Umfang des Hybrid-Entwurfs. Das Briefing hat Stufe 1 um Geräteverwaltung, Red-Team-Suite und Rückbau erweitert, das untere Ende gilt also für einen kleineren Umfang. Die Ausbaupakete stützen sich auf den Entwurf (33 bis 59 Tage, abzüglich der vorgezogenen Geräteverwaltung); das Studio-Hosting hat das Panel nicht beziffert. Die Kalenderdauer ist der Panelwert von 16 bis 25 Wochen mal 1.5 für Deine Verfügbarkeit.

**05.4 Tagessatz.** Unbekannt und unbelegt, vom Ingenieur zu offerieren. Mit der Panel-Annahme von CHF 1'200 bis 1'800 je Tag läge Stufe 1 bei rund CHF 72'000 bis 180'000, die Erstbestellung bei CHF 30'000 bis 72'000, die Wartung bei CHF 1'200 bis 3'600 je Monat. Ein Prüfer hält das gesuchte Profil für eher am oberen Rand oder darüber. Die Entwürfe Cloud-first und eigener Server bezifferten sich selbst auf CHF 85'000 bis 185'000 beziehungsweise CHF 100'000 bis 265'000, mit anderen Tagessätzen und Abgrenzungen. Normalisiert bleibt der Hybrid laut Panel rund einen Viertel bis einen Drittel günstiger als Cloud-first.

**05.5 Warnzeichen in einer Offerte.** Stufe 1 deutlich unter 50 Ingenieurtagen (dann fehlen Freigabeschicht oder Datenschutz), Wartung unter einem Tag je Monat bei vielen selbst betriebenen Diensten, keine ausgewiesene Eigenleistung, kein Zeitbedarf des Inhabers, mehr als eine Handvoll selbst betriebener Dienste.

**05.6 KI-Kosten.** Das Journal weist USD 2'393 API-Äquivalent in 7.5 Wochen aus, heute vom Abo gedeckt. Darin stecken 43 % Fehlläufe und rund die Hälfte Treiberläufe, es fehlen aber die App-Routinen als grösster Verbraucher. Als Planwert taugt die Zahl nicht. Ein bereinigter Wert ist erst nach der Migration der Routinen messbar.

## 06 Kosten ausserhalb der Technik

**06.1 Rechtsfachperson.** DSG, Auftragsbearbeitung, Auslandbekanntgabe, Vertragslage der heutigen KI-Nutzung, Lizenzen der Normen und des Fachbuchs, Geheimhaltung gegenüber Bauherrschaften. Früh beiziehen, vor dem Standortentscheid.

**06.2 Versicherung.** Deckung der Berufshaftpflicht und einer Cyberversicherung für KI-gestützte Fixpreisprodukte und autonome Buchungen klären.

**06.3 Gesamtübersicht IT-Kosten heute.** Claude-Abos, Microsoft 365, bexio, Hosting, Git-Hoster, Tailscale. Im Hub nicht erhoben, als Vergleichsbasis nötig.

## 07 Profil des gesuchten Ingenieurs

**07.1 Muss.** Erfahrung mit agentischen Systemen (Claude Code headless oder Agent SDK), mit Microsoft Entra und Graph unter Least Privilege, mit Linux-Betrieb und Infrastructure as Code, mit Backup und Monitoring im KMU.

**07.2 Soll.** macOS-Flotten und Geräteverwaltung, Synology, OPNsense, Tailscale, Sicherheitsarchitektur gegen Prompt-Injection, Schweizer DSG in der Praxis.

**07.3 Realität.** Diese Schnittmenge ist klein. Spezialisten für agentische Systeme sind oft Kleinstfirmen ohne Stellvertretung, klassische KMU-Dienstleister haben keine Agentenerfahrung. Darum lässt das Briefing Bietergemeinschaften zu und verlangt Stellvertretung nur für die Wartung.

## 08 Ablage und Versand

**08.1 Ordner.** `/Volumes/daten/jans-ai-hub/docs/konzepte/260919-Briefing-IT-Ingenieur-JANS-AI-Zentrum/`

**08.2 Versand 1, vor der Vereinbarung.** Unterordner `260919-Versand-1-vor-Geheimhaltung/` mit genau einer Datei: der Anfrage als PDF.

**08.3 Versand 2, nach der Vereinbarung.** Unterordner `260919-Versand-2-nach-Geheimhaltung/` mit genau zwei Dateien: Briefing und Beilage 1 als PDF. Nie MD, DOCX oder HTML an Dritte. Je Empfänger empfiehlt sich ein eigenes PDF mit Firmenname in der Fusszeile, das erzeuge ich auf Zuruf.

**08.4 Nur zur Einsicht.** Der Befundkatalog ist auch nach der Vereinbarung eine ausführbare Anleitung. Einsicht an der Begehung, Abgabe nur an den Anbieter, der AP0 erhält, und erst nachdem 02.5 bis 02.7 geschlossen sind.

## 09 To-do in dieser Reihenfolge

**09.1 Bis 02.10.2026.** bexio-Monatslauf eingrenzen (02.1).

**09.2 Diese Woche.** Backup-Nachweis und zweiter Alarmkanal (02.2, 02.3). 02.4 bis 02.9 auf Zuruf, die Klickwege liefere ich.

**09.3 Vor dem Versand.** Die fünf Entscheide aus 03, Termine in die Platzhalterlinien von Anfrage und Briefing.

**09.4 Anbieter.** Auf Zuruf recherchiere ich mindestens drei Anbieter nach dem Profil in 07.

**09.5 Begleitmail.** Entwurf je Anbieter im Sie, mit der Anfrage als Anhang. Versand erst nach Deiner Freigabe.
