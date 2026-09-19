# JANS AI Zentrum: Briefing und Offertanfrage für die IT-Architektur

Raphael Jans Architekten ETH/SIA · Grubenstrasse 37 · 8045 Zürich · Stand 19.09.2026 · Vertraulich

## 00 Big Points

**00.1 Worum es geht.** Das Büro betreibt seit März 2026 eine selbst gebaute KI-Betriebsumgebung, den JANS AI Hub. Er trägt heute Studien, Bauleitung, Korrespondenz, Buchhaltung und den Aufbau von Fachwissen. Gebaut hat ihn der Inhaber zusammen mit der KI (Claude Code), ohne IT-Fachperson.

**00.2 Was gesucht ist.** Ein AI- und IT-Ingenieur, der die IT-Architektur darunter fachgerecht neu baut und danach betreut: das JANS AI Zentrum, eine Plattform mit mehreren Fach-Hubs. Die KI baut weiterhin die Fachinhalte. Die Architektur, auf der sie läuft, kommt künftig vom Spezialisten.

**00.3 Was bleibt und was ersetzt wird.** Die Fachsubstanz bleibt: 51 Skills, 43 Agenten, 19 Wissensbasen, das Stilmodell des Büros, die Prozessketten. Ersetzt wird der Betriebs-Klebstoff: Netzlaufwerk als Rückgrat, Eigenbau-Sync, sieben parallele Scheduler, 22 Wächter-Scripts, Schutz per Prompt-Regel.

**00.4 Der Befund in Zahlen.** Die Ist-Analyse vom 19.09.2026 belegt 120 Schwachstellen, davon 25 kritisch. 43 % der unbeaufsichtigten Läufe schlagen fehl. Es gibt keine Tests, keine CI und keine belegte Wiederherstellungsprobe. Die Fachleistung des Systems ist hoch, das Fundament ist es nicht.

**00.5 Was zu offerieren ist.** Elf Leistungspakete (AP0 bis AP10) in drei Stufen. AP0, Audit und Zielarchitektur, ist eigenständig beauftragbar. Darauf folgen Festpreise oder Kostendächer je Paket und ein Wartungsvertrag.

**00.6 Wie offeriert wird.** Mit mindestens zwei Architekturvarianten, einem Preisblatt je Paket, den Betriebskosten über drei Jahre und den Antworten auf den Fragenkatalog in Abschnitt 10. Offertfrist: ________________.

## 01 Ausgangslage

**01.1 Das Büro.** Architekturbüro in Zürich, inhabergeführt, mit Ausbauabsicht auf einige Mitarbeitende. Eine Aktiengesellschaft ist in Gründung, es entstehen zwei Rechtsträger. Die Kundschaft liegt unter anderem im Spitalumfeld, entsprechend hoch sind die Ansprüche an Vertraulichkeit.

**01.2 Der Hub in Zahlen.** Stand 19.09.2026, gemessen am Repository und an den Betriebsjournalen.

| Grösse | Wert |
|---|---|
| Skills, Agenten, Commands | 51, 43, 13 |
| Verhaltensregeln (Rules) | 29, davon 24 in jeder Session geladen |
| Wissensbasen | 19 mit 1'656 belegten Artikeln |
| Eigenbau-Connectoren | 19 (Microsoft 365, bexio, Geodaten, Behördenportale u.a.) |
| Geplante Routinen | 46 Task-Definitionen, dazu rund 30 launchd-Jobs |
| Shell-Scripts | 84 mit 12'420 Zeilen |
| Repository | 11'865 Commits seit 23.03.2026, 5'605 Dateien |
| Unbeaufsichtigte Läufe | 2'543 in 7.5 Wochen, davon 43 % fehlgeschlagen |
| Hardware | 3 Macs, 1 Synology NAS (6 TB, 93 % belegt), OPNsense, Tailscale |
| Umsysteme | Microsoft 365 (SharePoint 79 % belegt), bexio, Claude im Abo |

**01.3 Das Geschäftsmodell.** Sechs produktisierte Dienstleistungen stehen im Service-Katalog: Machbarkeits-Studio, Immobilienbewertung, Ankaufsprüfung, Bauleitungs-Backend, Wettbewerbs-Fabrik, Energie-Vorabklärung. Ziel sind Fixpreisprodukte, ein Backend für Partnerbüros und interaktive, gehostete Studien für Bauherrschaften. Dafür braucht es Mehrbenutzerbetrieb, Mandantentrennung und ein Kundenportal. Nichts davon ist heute vorhanden.

**01.4 Sie beginnen nicht bei null.** Der Hub hat sich selbst gründlich untersucht: Hub-Audit vom 12.08.2026, Spec zur Laufzeitschicht vom 30.08.2026, Systemanalyse vom 11.09.2026 mit Zielbild und Migrationsplan in fünf Etappen, dazu eine Betriebs-Chronik mit 95 dokumentierten Vorfällen. Diese Unterlagen und der Befundkatalog vom 19.09.2026 stehen nach Unterzeichnung einer Geheimhaltungsvereinbarung zur Verfügung.

## 02 Was erhalten bleibt, was ersetzt wird

**02.1 Erhalten: die Fachsubstanz.** Die Fach-Skills mit ihren Prozessketten (von der Unternehmerfindung bis zur Kostenkontrolle, von den Geodaten bis zum interaktiven Studio). Die Wissensbasen mit Quellenpflicht und Statusmodell. Das Stilmodell des Büros mit täglicher Prüfung gegen echte Vorlagen. Die Kontierungsregeln und die Geodaten-Kette. Alles liegt als Markdown und Code vor und ist plattformneutral.

**02.2 Erhalten: die Betriebskultur.** Jeder Vorfall ist mit Messwert, Ursache und Lehre dokumentiert. Eingriffe sind umkehrbar, Zahlungen ausgeschlossen, heikle Aufgaben laufen nur nach Freigabe. Diese Regeln sind die Anforderungen an die neue Plattform.

**02.3 Ersetzt: der Betriebs-Klebstoff.** Das Netzlaufwerk als Rückgrat der Automatik. Der Eigenbau-Committer auf dem NAS. Sieben Scheduler und fünf Datei-Queues. 22 Wächter- und Heil-Scripts. Die Desktop-App als Scheduler der operativen Aufsicht. Alarmierung über den Mail-Client. Berechtigungen, die nur als Textregel bestehen.

## 03 Befund: zehn Querschnittsthemen

**03.1 Ein Netzlaufwerk als Rückgrat.** Skills, Regeln, Wissen, Logbuch und Queues liegen auf einer SMB-Freigabe. Reisst der Mount ab, ist die Station für den ganzen Hub blind. Belegt sind sieben Ausfalltage in sechs Wochen und bis 346 Abrisse an einem Tag. 730 Zeilen verdrahten den Pfad fest.

**03.2 Kein Job-System.** Sieben Feuermechanismen und fünf dateibasierte Queues laufen nebeneinander, ohne gemeinsamen Zustand, ohne Retry-Grenze, ohne Idempotenz. Folge: 43 % Fehlläufe, 699 ertraglose Läufe in einer Nacht, vier Tage ohne Tagesbriefing, 66 Stunden Ausfall der Aufsicht, weil der Scheduler eine Desktop-App mit persönlichem Login ist.

**03.3 Identität und Berechtigung ohne Least Privilege.** Die Automatik arbeitet mit sehr weiten Rechten auf Umsysteme und Stationen, Schlüssel werden von Hand zwischen den Geräten kopiert, Secrets liegen an fünf Orten. Eine Geräteverwaltung fehlt. Die Details stehen im Befundkatalog.

**03.4 Agentische Risiken sind nicht adressiert.** Die KI liest täglich Mails und Anhänge und darf handeln (versenden, buchen). Eine Trennung zwischen lesendem und handelndem Agenten gibt es nicht, Prompt-Injection kommt im ganzen System nicht vor. Die Grenze schreibender Aktionen hängt an Textregeln und an einem nicht steuerbaren Klassifikator des Herstellers.

**03.5 Datenschutz ohne Rahmen.** Personendaten Dritter (Mailkorpora, Kontaktregister, Kundenwissen, Fristenregister) liegen versioniert im Repository und werden automatisch ausser Haus gesichert. Datenklassen, Bearbeitungsverzeichnis, Auftragsbearbeitungsverträge und Löschkonzept fehlen. Ausschlusslisten für heikle Ordner bestehen nur als Text.

**03.6 Backup und Notfall nicht belegt.** Für 6 TB Bürodaten ist keine getestete 3-2-1-Sicherung dokumentiert, für Microsoft 365 und bexio gar keine. Wiederherstellungsziele und ein Notfallplan fehlen. Die Always-On-Station übersteht keinen unbeaufsichtigten Neustart, eine USV ist nicht dokumentiert.

**03.7 Die Überwachung hängt am Überwachten.** Wächter schreiben ihren Zustand auf das NAS, das sie überwachen. Einziger Alarmkanal ist der Mail-Client, der mehrfach still ausfiel. Ein Fernzugangs-Ausfall von vier Tagen wurde viermal korrekt gemessen und nie gemeldet. Ein Buchhaltungszugang war 36 Tage tot.

**03.8 Kein Engineering-Fundament.** Keine Tests, keine CI, kein Lockfile, kein Staging. Skills und Regeln werden direkt in Produktion editiert und wirken sofort auf allen Stationen und in allen Nachtläufen. Der Grundkontext jeder Session ist trotz zweier Diäten auf 151 kB gewachsen.

**03.9 Auf eine Person verdrahtet.** Ein Benutzer, eine Identität, ein Absender, ein Logbuch. Für Mitarbeitende gilt heute voller Zugriff ohne Rollenmodell. Kundenstudios liegen ohne Anmeldung hinter einem Zufallslink. Zwei Rechtsträger und Partnerbüros lassen sich so nicht abbilden.

**03.10 Worauf Sie bauen können.** Netz ohne offene Ports, Fernzugang nur über Tailscale. Secrets nie im Repository. Freigabe-Schwelle, Aktions-Whitelist und Widerrufsfenster als gelebte Praxis. Ein Lauf-Journal mit Kosten, Dauer und Ergebnis je Lauf. Ein fertiges Zielbild für den Umbau der Datenhaltung. Eine Messkultur, die jede Abnahme leicht macht.

## 04 Zielbild: eine Plattform, mehrere Hubs

**04.1 Grundsatz.** Das JANS AI Zentrum besteht aus einem Plattform-Hub, den der Ingenieur baut und verantwortet, und aus Fach-Hubs, die das Büro mit der KI auf dieser Plattform weiterbaut. Beilage 1 zeigt Ist und Soll auf einer Seite.

**04.2 Die Hubs.**

| Hub | Zweck | Nutzer | Schutzbedarf |
|---|---|---|---|
| Plattform-Hub | Identität, Laufzeit, Daten, Integration, Sicherheit, Monitoring, Delivery | Ingenieur, Inhaber | hoch |
| Wissens-Hub | Normen, Baurecht, Kennwerte, Lern-Loops, Suche | alle intern, lesend | mittel, Lizenzen beachten |
| Studien-Hub | Machbarkeit, Volumen, Bewertung, Ankauf, Energie, Wettbewerb | Inhaber, Mitarbeitende | hoch, je Auftrag |
| Projekt-Hub | Ausschreibung bis Kostenkontrolle, Protokolle, Pendenzen | Inhaber, Mitarbeitende, Partner | hoch, je Projekt und Mandant |
| Office-Hub | Korrespondenz, Fristen, bexio, Mahnwesen, zwei Rechtsträger | Inhaber | sehr hoch |
| Akquise-Hub | Website, LinkedIn, Telesales, Leads, Demo-Studio | Inhaber, Mitarbeitende | mittel |
| Kundenportal | Studios und Berichte mit Anmeldung, Ablauf, Protokoll | Bauherrschaften, Partner | hoch, Hosting CH oder EU |

**04.3 Die Schichten des Plattform-Hub.**

| Schicht | Anforderung | Ersetzt heute |
|---|---|---|
| Identität und Geräte | ein Konto je Person, MFA, Geräteverwaltung, Rollen, Mandanten | geteilte Schlüssel, voller Zugriff für alle |
| Laufzeit und Job-System | ein Scheduler mit Zustand, Retry, Timeout, Budget, Nachholen | 7 Scheduler, 5 Datei-Queues, Desktop-App |
| Agenten-Laufzeit | definierte Umgebung, Berechtigungsprofil je Jobklasse, Sandbox | Bash(*) ohne Deny-Liste, Schutz per Prompt |
| Daten | Git für Code und Wissen, Datenbank für Zustand und Register, Objektspeicher für Artefakte | alles in einem Repository auf SMB |
| Wissensdienst | Volltext- und Vektorsuche über alle Wissensbasen, Provenienz | grep über Dateien, Register bis 1 MB |
| Integration | typisierte MCP-Server je Domäne, gemeinsames Connector-SDK, Secrets-Speicher | 19 Einzel-CLIs, Secrets an fünf Orten |
| Sicherheit und DSG | Freigabeschicht ausserhalb der KI, Audit-Log, Datenklassen | Textregeln und Hersteller-Klassifikator |
| Backup und Notfall | 3-2-1, Restore-Probe, RPO und RTO, Sicherung M365 und bexio | unbelegte Einzelaussage |
| Monitoring und Alarm | unabhängig vom Überwachten, Push-Alarm, Kosten je Lauf | Wächter-Scripts, Alarm per Mail-Client |
| Delivery | Review, CI, Evals, Staging, Releases | Edit direkt in Produktion |

**04.4 Das Zielbild ist ein Vorschlag.** Hub-Schnitt und Schichten sind die Sicht des Auftraggebers. AP0 bestätigt oder korrigiert sie.

## 05 Leitplanken

**05.1 Substanz vor Plattform.** Fach-Skills, Wissensbasen und Stilmodell werden nicht neu geschrieben. Markdown bleibt das Autorenformat.

**05.2 Standard vor Eigenbau.** Wo ein erprobtes Werkzeug eine Eigenbau-Schicht ersetzt, gewinnt das Werkzeug.

**05.3 KI-bedienbar, aber geführt.** Alles ist per CLI, API oder Infrastructure as Code bedienbar, damit die KI weiterarbeiten kann. Änderungen an der Plattform laufen über Review und CI.

**05.4 Minimaler Eigenbetrieb.** Der Inhaber ist Architekt, nicht Administrator. Gesucht ist eine Lösung mit Wartungsvertrag, nicht ein zweiter Beruf.

**05.5 Datenhoheit.** Schweizer DSG, Datenstandort Schweiz oder EU bevorzugt, Kundschaft im Spitalumfeld.

**05.6 macOS bleibt.** Mail-Versand, ArchiCAD, Cinema 4D, InDesign und Rhino sind an Macs gebunden. Die Macs bleiben Arbeitsplätze, einer davon dient als Mac-Worker der Plattform.

**05.7 Microsoft 365 und bexio bleiben.** SharePoint ist die Projektablage, bexio die Buchhaltung.

**05.8 Etappen mit Rückfallweg.** Kein Big Bang. Parallelbetrieb, bis die Abnahme je Etappe gemessen ist. Die laufenden Bauprojekte mit ihren Fristen dürfen nicht stehen.

**05.9 Messbar.** Jedes Paket hat Abnahmekriterien. Das bestehende Lauf-Journal liefert die Vorher-Werte.

**05.10 Übergabefähig.** Code, Konfiguration und Dokumentation liegen im Repository des Auftraggebers. Kein proprietärer Lock-in, offene Standards, dokumentierter Ausstieg.

## 06 Leistungspakete

**06.0 Übersicht.** Stufe 1 beseitigt die kritischen Befunde. Stufe 2 hebt Qualität und Wissen. Stufe 3 öffnet das System für Dritte.

| Nr. | Paket | Stufe | Wer baut |
|---|---|---|---|
| AP0 | Audit und Zielarchitektur | 1 | Ingenieur |
| AP1 | Fundament: Server, Netz, Geräte, Identität | 1 | Ingenieur |
| AP2 | Daten, Sync und Backup | 1 | gemeinsam |
| AP3 | Laufzeit und Job-System | 1 | Ingenieur |
| AP4 | Sicherheit, Secrets, Freigabeschicht | 1 | Ingenieur |
| AP5 | Datenschutz nach DSG | 1 | gemeinsam |
| AP6 | Monitoring, Alarm, Notfallhandbuch | 1 | Ingenieur |
| AP7 | Integrations-Hub und Delivery | 2 | gemeinsam |
| AP8 | Wissensplattform mit Hybrid-Suche | 2 | gemeinsam |
| AP9 | Mehrbenutzer, Mandanten, Kundenportal | 3 | Ingenieur |
| AP10 | Betrieb und Wartung | laufend | Ingenieur |

**06.1 AP0 Audit und Zielarchitektur.** Verifikation des Befundkatalogs am lebenden System, Bedrohungsmodell für ein agentisches System, Zielarchitektur mit mindestens zwei Varianten (eigener Server im Büro, gehostet in der Schweiz oder EU, Mischform), Betriebskosten über drei Jahre, Migrationsplan in Etappen. Ergebnis: Architekturdokument, Entscheidvorlage, verbindliche Preise für AP1 bis AP6. Abnahme: jeder kritische Befund ist einem Paket und einer Massnahme zugeordnet.

**06.2 AP1 Fundament.** Dedizierter, headless betriebener Server (oder gehostete Entsprechung), unbeaufsichtigter Wiederanlauf ohne Abbau der Verschlüsselung, USV, Netz in Zonen, Fernzugang mit ACL, Geräteverwaltung für die Macs, ein Konto je Person auf Basis der bestehenden Microsoft-365-Identitäten. Abnahme: Stromausfall-Probe bestanden, alle Dienste starten ohne Anmeldung einer Person, ein verlorenes Notebook ist innert einer Stunde gesperrt und seine Schlüssel sind widerrufen.

**06.3 AP2 Daten, Sync und Backup.** SMB aus dem kritischen Pfad, aufbauend auf der vorhandenen Systemanalyse. Schnitt des Repository in Code, Wissen, Zustand, Telemetrie und Artefakte. Register und Journale in eine Datenbank, Binärdaten in einen Objektspeicher. Kapazitätsplanung und Nachfolge für das NAS. Sicherung nach 3-2-1 für Bürodaten, Microsoft 365 und bexio. Abnahme: ein Mount-Abriss stoppt keinen Hub-Lauf, Wiederherstellungsprobe protokolliert, RPO und RTO je Datenklasse vereinbart und erreicht.

**06.4 AP3 Laufzeit und Job-System.** Ein Scheduler mit persistentem Zustand, Retry mit Obergrenze, Timeout, Idempotenz, Budget je Lauf, Nachholen verpasster Läufe und Abbruch bei fehlendem Ertrag. Einheitliche Agenten-Laufzeit mit genau einer Anmeldungsquelle. Migration aller Routinen, Mac-Worker für gebundene Aufgaben. Klärung Abo gegen API samt Nutzungsbedingungen und Kosten. Abnahme: Fehlläufe unter 5 %, jede Routine mit Takt, letztem Ergebnis und nächstem Lauf an einem Ort sichtbar, operative Aufsicht läuft unabhängig von den Lern-Loops.

**06.5 AP4 Sicherheit, Secrets, Freigabeschicht.** Least Privilege für alle Umsysteme, Schlüssel je Gerät, zentraler Secrets-Speicher mit Rotation. Berechtigungsprofile je Jobklasse und Sandbox für unbeaufsichtigte Läufe. Architektur gegen Prompt-Injection: ein werkzeugloser Agent liest, nur strukturierte Daten erreichen den handelnden Agenten. Freigabeschicht ausserhalb der KI für schreibende Aktionen mit Betrags- und Mengengrenzen, signierte Aufträge statt Ausführung aus Dateien, unveränderliches Audit-Log. Abnahme: Red-Team-Probe mit präparierten Mails ohne Wirkung, kein Klartext-Secret auf einer Station, jede Aussenwirkung im Audit-Log.

**06.6 AP5 Datenschutz nach DSG.** Datenklassen, Bearbeitungsverzeichnis, Übersicht der Auftragsbearbeiter mit Datenstandort, Lösch- und Aufbewahrungskonzept. Personendaten aus Grundkontext und Repository in einen zugriffsgesteuerten Speicher. Technisch erzwungene Ausschlusslisten, Prüfung auf Personendaten und Secrets vor jedem Commit, Entscheidvorlage zur Bereinigung der Historie. Trennung lizenzierter Inhalte. Juristische Fragen benennen Sie, beantworten muss sie eine Rechtsfachperson. Abnahme: kein Personendatum in neuem Commit möglich, Verzeichnis und Verträge liegen vor.

**06.7 AP6 Monitoring, Alarm, Notfallhandbuch.** Überwachung ausserhalb der überwachten Systeme, Erfolgs-Heartbeat je Job, Erreichbarkeit von aussen, zentrale Logs mit Aufbewahrung, Kennzahlen zu Kapazität, Job-Erfolg und Kosten. Alarm über einen unabhängigen Kanal mit Zustellnachweis. Runbooks aus der Betriebs-Chronik, Notfallhandbuch mit Stellvertretung. Abnahme: ein simulierter Ausfall von NAS, Tunnel oder Scheduler ist innert 15 Minuten auf dem Telefon des Inhabers.

**06.8 AP7 Integrations-Hub und Delivery.** Typisierte MCP-Server je Domäne mit gemeinsamem SDK (Timeout, Retry, Fehlerklassen), synthetische Checks je Connector, Sanierung der fragilen Portal-Logins. Review, CI, Staging und Releases für Skills, Regeln und Scripts. Evaluations-Suite aus den vorhandenen Goldstandards. Abnahme: keine Änderung erreicht die Produktion ohne grüne Pipeline, jeder Connector meldet seinen Ausfall am selben Tag.

**06.9 AP8 Wissensplattform.** Selbst gehostete Volltext- und Vektorsuche über alle Wissensbasen mit Metadatenfiltern, als MCP-Dienst. Provenienz mit Dokument-ID und Quellversion, Schema-Validierung, Staging für automatische Läufe, Evaluations-Sets je Wissensbasis. Abnahme: gemessene Trefferquote auf einem Goldfragen-Set, sinkender Tokenverbrauch je Anfrage.

**06.10 AP9 Mehrbenutzer, Mandanten, Kundenportal.** Rollen für Mitarbeitende, Mandantenräume für Einzelfirma, AG und Partnerbüros, Kundenportal mit Anmeldung, Ablaufdatum, Widerruf und Zugriffsprotokoll, reproduzierbares Deployment, Hosting in der Schweiz oder EU. Abnahme: eine neue Person ist in zwei Stunden arbeitsfähig und sieht nur ihre Hubs.

**06.11 AP10 Betrieb und Wartung.** Wartungsvertrag mit Reaktionszeiten, Patch-Fenstern, Stellvertretung, halbjährlichem Review und Kostenübersicht. Abnahme: vereinbarte Reaktionszeit wird eingehalten und quartalsweise ausgewiesen.

## 07 Rollenteilung

**07.1 Der Ingenieur** baut und verantwortet den Plattform-Hub, setzt die Leitplanken für die KI und nimmt Plattform-Änderungen ab.

**07.2 Das Büro mit der KI** baut die Fach-Hubs weiter, migriert Skills und Routinen auf die neue Plattform und liefert Messwerte und Dokumentation zu.

**07.3 Der Inhaber** entscheidet Varianten, Budget, Datenstandort und Freigaben und nimmt jede Etappe ab.

**07.4 Die KI als Werkzeug des Ingenieurs.** Das System ist vollständig dokumentiert und per KI bearbeitbar. Wo Sie dadurch Aufwand sparen, weisen Sie das im Preis aus.

## 08 Etappen

| Etappe | Inhalt | Ergebnis |
|---|---|---|
| E0 | Geheimhaltung, Einsicht, Begehung, Offerte | Auftrag AP0 |
| E1 | AP0 | Architekturentscheid, Festpreise |
| E2 | AP1, AP2, AP6 | stabiles Fundament, gesicherte Daten, Alarm |
| E3 | AP3, AP4, AP5 | eine Laufzeit, Least Privilege, DSG-Rahmen |
| E4 | AP7, AP8 | Integration, Tests, Suche |
| E5 | AP9 | Öffnung für Mitarbeitende, Partner, Kundschaft |
| laufend | AP10 | betreuter Betrieb |

**08.1 Termine.** Gewünschter Beginn AP0: ________________. Gewünschter Abschluss Stufe 1: ________________.

## 09 Anforderungen an die Offerte

**09.1 Form.** PDF, höchstens 15 Seiten, dazu das Preisblatt.

**09.2 Preise.** AP0 als Festpreis. AP1 bis AP6 je als Festpreis oder Kostendach, verbindlich nach AP0. AP7 bis AP9 als Richtpreis mit Annahmen. AP10 als Monatspauschale mit Leistungsumfang, dazu Stundenansätze nach Funktion. Alle Preise in CHF, exklusive MWST, MWST ausgewiesen.

**09.3 Varianten.** Mindestens zwei Architekturvarianten mit den Gesamtkosten über drei Jahre: Hardware, Lizenzen, Hosting, KI-Nutzung, Wartung.

**09.4 Team.** Wer arbeitet, mit welcher Erfahrung in KI-Agenten-Plattformen, macOS- und Microsoft-365-Umgebungen und KMU-Betrieb. Referenzen, Verfügbarkeit, Stellvertretung.

**09.5 Eigentum.** Sämtliche Arbeitsergebnisse gehören dem Auftraggeber und liegen in seinem Repository.

**09.6 Vertraulichkeit und Datenschutz.** Geheimhaltungsvereinbarung vor Einsicht in den Befundkatalog. Zugriff nur mit persönlichen, protokollierten Konten. Vereinbarung zur Auftragsbearbeitung.

**09.7 Haftung.** Nachweis der Berufshaftpflicht, Aussage zur Haftung für Datenverlust während der Migration.

**09.8 Bindefrist.** Drei Monate ab Offertdatum.

## 10 Fragen, die die Offerte beantwortet

**10.1 Standort der Plattform.** Eigener Server im Büro, gehostet in der Schweiz oder EU, oder Mischform? Wie erreichen Sie den unbeaufsichtigten Wiederanlauf, ohne die Verschlüsselung abzubauen?

**10.2 Job-System.** Welches Werkzeug, und wie migrieren Sie 46 Routinen ohne Unterbruch der Aufsicht? Wie binden Sie den Mac-Worker ein?

**10.3 Agenten-Laufzeit.** Abo oder API für unbeaufsichtigte Läufe: was lassen die Nutzungsbedingungen zu, was kostet es bei heutigem Volumen (Journalwert rund USD 2'400 API-Äquivalent in 7.5 Wochen, ohne die App-Routinen), wie deckeln Sie?

**10.4 Agentische Sicherheit.** Wie trennen Sie lesende von handelnden Agenten, wie sieht Ihre Freigabeschicht aus, wie testen Sie sie?

**10.5 Microsoft 365.** Wie schneiden Sie die Rechte zu, und wie ersetzen Sie kopierte Schlüssel?

**10.6 Secrets.** Welches Produkt, welche Rotation, wie kommen unbeaufsichtigte Läufe an ihre Zugänge?

**10.7 Datenschnitt.** Was bleibt in Git, was geht in Datenbank und Objektspeicher? Wie gehen Sie mit der bestehenden Historie um?

**10.8 Wissensplattform.** Welcher Such-Stack, selbst gehostet, für rund 1'700 Artikel heute und ein Archiv von 1.9 TB dahinter?

**10.9 Backup.** Ihr Vorschlag für 6 TB Bürodaten, Microsoft 365 und bexio, mit RPO, RTO und Probe.

**10.10 Monitoring.** Welcher Stack, welcher Alarmkanal, was kostet er im Monat?

**10.11 Datenschutz.** Was decken Sie ab, wofür braucht es eine Rechtsfachperson?

**10.12 Betrieb.** Reaktionszeiten, Stellvertretung, Fernzugriff, Dokumentation, Ausstieg.

**10.13 Umgang mit KI-gebautem Code.** Was übernehmen Sie, was schreiben Sie neu, wie führen Sie Tests und Evals ein?

**10.14 Reihenfolge.** Was würden Sie anders schneiden oder früher tun als in Abschnitt 08?

## 11 Bewertung der Offerten

| Kriterium | Gewicht |
|---|---|
| Verständnis und Qualität der Lösung | 30 % |
| Erfahrung und Referenzen | 20 % |
| Preis und Kostentransparenz über drei Jahre | 20 % |
| Betriebskonzept und Wartung | 15 % |
| Vorgehen, Etappierung, Risiko | 15 % |

## 12 Ablauf

**12.1 Geheimhaltung.** Unterzeichnung der Vereinbarung, danach Zugang zu Befundkatalog, Hub-Audit und Systemanalyse.

**12.2 Begehung.** Termin im Büro mit Einsicht in das laufende System: ________________.

**12.3 Rückfragen.** Schriftlich bis ________________ an rj@raphaeljans.ch.

**12.4 Offerte.** Eingang bis ________________.

**12.5 Vergabe.** Entscheid bis ________________, zuerst AP0.

## 13 Beilagen

**13.1 Beilage 1.** Architektur Ist und Soll auf einer Seite.

**13.2 Nach Geheimhaltungsvereinbarung.** Befundkatalog vom 19.09.2026 (120 Befunde mit Beleg), Hub-Audit vom 12.08.2026, Spec Laufzeitschicht vom 30.08.2026, Systemanalyse und Vertiefung vom 11.09.2026, Service-Katalog, Geschäftsmodell.

Raphael Jans, Founder I MD
MSc ETH I SIA
rj@raphaeljans.ch
+41 79 846 11 65
www.raphaeljans.ch
