# JANS AI Zentrum

**Briefing und Offertanfrage für die IT-Architektur**

Raphael Jans Architekten ETH/SIA · Grubenstrasse 37 · 8045 Zürich · Stand 19.09.2026 · Vertraulich, Abgabe nach Geheimhaltungsvereinbarung

## 00 Big Points

**00.1 Worum es geht.** Das Büro betreibt seit März 2026 eine selbst gebaute KI-Betriebsumgebung, den JANS AI Hub. Er trägt heute Studien, Bauleitung, Korrespondenz, Buchhaltung und den Aufbau von Fachwissen. Gebaut hat ihn der Inhaber zusammen mit der KI (Claude Code), ohne IT-Fachperson.

**00.2 Was gesucht ist.** Ein KI- und IT-Ingenieur, der die IT-Architektur darunter fachgerecht neu baut und danach betreut: das JANS AI Zentrum, ein Plattform-Hub mit mehreren Fach-Hubs. Die KI baut weiterhin die Fachinhalte. Die Plattform, auf der sie läuft, kommt künftig vom Spezialisten.

**00.3 Was bleibt und was ersetzt wird.** Die Fachsubstanz bleibt: 51 Skills, 43 Agenten, 19 Wissensbasen, das Stilmodell des Büros, die Prozessketten. Ersetzt wird der «Betriebs-Klebstoff»: Netzlaufwerk als Rückgrat, Eigenbau-Sync, sieben parallele Scheduler, 22 Wächter-Scripts, Schutz über Regeln statt über Technik.

**00.4 Der Befund in Zahlen.** Die Ist-Analyse vom 19.09.2026 belegt 120 Schwachstellen, davon 25 kritisch. 43 % der unbeaufsichtigten Läufe enden mit Fehler (1'091 von 2'543), davon rund 590 an der Anmeldung und rund 480 an der Kontingentgrenze des KI-Abos. Es gibt keine automatisierten Tests ausser zwei Selbsttest-Scripts, keine CI und keine belegte Wiederherstellungsprobe. Die Fachleistung des Systems ist hoch, das Fundament ist es nicht.

**00.5 Ein kleiner Kern zuerst.** Stufe 1 beseitigt nur die kritischen Befunde, auf möglichst wenig neuer Infrastruktur. Jede Ausbaustufe danach braucht einen geschäftlichen Auslöser und eine eigene Freigabe. Es ist ein mehrmonatiges Vorhaben, bestellt wird in Tranchen, zuerst AP0.

**00.6 Was zu offerieren ist.** Elf Pakete für Stufe 1 (AP0 bis AP10) und vier Ausbaupakete (AP11 bis AP14). Offeriert wird je Paket, nicht je Hub: AP0a als Festpreis, AP0b als Kostendach, alles Weitere als Richtpreis mit Annahmen. Offertfrist: ________________.

**00.7 Vertraulichkeit.** Dieses Briefing und Beilage 1 sind nur für die adressierte Firma bestimmt. Weitergabe an Dritte und an Unterauftragnehmer sowie die Eingabe in KI-Dienste Dritter nur mit schriftlicher Zustimmung des Büros. Wer nicht offeriert oder den Zuschlag nicht erhält, löscht die Unterlagen und bestätigt das schriftlich.

## 01 Ausgangslage

**01.1 Das Büro.** Architekturbüro in Zürich, inhabergeführt, mit Ausbauabsicht auf einige Mitarbeitende. Eine Aktiengesellschaft ist in Gründung, es entstehen zwei Rechtsträger. Ein Teil der Bauherrschaften, namentlich im Gesundheitswesen, stellt erhöhte Anforderungen an Vertraulichkeit.

**01.2 Der Hub in Zahlen.** Stand 19.09.2026, gemessen am Repository und an den Betriebsjournalen.

| Grösse | Wert |
|---|---|
| Skills, Agenten, Commands | 51, 43, 13 |
| Verhaltensregeln (Rules) | 29, davon 24 in jeder Session geladen |
| Wissensbasen | 19 mit 1'656 Artikeln (Quellenpflicht, Statusmodell) |
| Eigenbau-Connectoren | 19 (Microsoft 365, bexio, Geodaten, Behördenportale und weitere) |
| Geplante Routinen | 46 Task-Definitionen (41 verschiedene), dazu rund 30 launchd-Jobs |
| Shell-Scripts | 84 mit 12'420 Zeilen |
| Repository | 11'865 Commits seit 23.03.2026, 5'605 Dateien |
| Unbeaufsichtigte Läufe | 2'543 in 7.5 Wochen, davon 43 % mit Fehler |

**01.3 Ist-Eckdaten.** Was für die Richtpreise zählt. Unbekanntes wird in AP0 erhoben und steht in der Offerte als Annahme.

| Eckwert | Stand |
|---|---|
| Arbeitsplätze | 3 Macs: zwei Apple Silicon (32 GB und 16 GB) mit macOS 27, ein Intel-Gerät (32 GB), Versionsstand in AP0 |
| Dateiserver | Synology 4-Bay, Baureihe 2018, 6 TB, 93 % belegt; RAID, Plattenalter und Backup-Stand in AP0 |
| Netz | OPNsense, Büro-LAN und WLAN, Fernzugang über Tailscale; Anschluss, Bandbreite und Regelwerk in AP0 |
| Microsoft 365 | ein Tenant, im Hub eingebunden 2 Benutzerpostfächer und 2 Gruppenadressen, SharePoint-Pool 1 TB zu 79 % belegt, 20 Sites; Tenant-Inventar und Lizenzstufe in AP0 |
| Buchhaltung | bexio mit API-Zugang |
| KI | Claude, ein Max-Abo und ein Team-Abo mit zwei Plätzen; kein API-Bezug |
| Code-Ablage | privates Repository bei einem externen Git-Hoster, rund 500 MB Arbeitsbaum |
| Geräteverwaltung | keine; Stand Apple Business Manager in AP0 zu klären |
| Zu migrieren | Zielzahl der Routinen legt das Büro vor AP6 fest (Aufsicht, operative Jobs, Lern-Loops) |

**01.4 Das Geschäftsmodell.** Sechs produktisierte Dienstleistungen stehen im Service-Katalog: Machbarkeits-Studio, Immobilienbewertung, Ankaufsprüfung, Bauleitungs-Backend, Wettbewerbs-Fabrik, Energie-Vorabklärung. Ziel sind Fixpreisprodukte, ein Backend für Partnerbüros und interaktive, gehostete Studien für Bauherrschaften. Dafür braucht es später Mehrbenutzerbetrieb, Mandantentrennung und ein Kundenportal.

**01.5 Vorhandene Unterlagen.** Der Hub hat sich selbst gründlich untersucht: Hub-Audit vom 12.08.2026, Spec zur Laufzeitschicht vom 30.08.2026, Systemanalyse vom 11.09.2026 mit Zielbild und Migrationsplan, dazu eine Betriebs-Chronik mit rund 95 datierten Einträgen (Vorfälle, Eingriffe, Lehren). Diese Unterlagen und der Befundkatalog vom 19.09.2026 liegen an der Begehung zur Einsicht auf.

## 02 Was erhalten bleibt

**02.1 Die Fachsubstanz.** Die Fach-Skills mit ihren Prozessketten, die Wissensbasen mit Quellenpflicht und Statusmodell, das Stilmodell des Büros, die Kontierungsregeln und die Geodaten-Kette. Alles liegt als Markdown und Code vor und ist plattformneutral.

**02.2 Die Betriebskultur.** Jeder Vorfall ist mit Messwert, Ursache und Lehre dokumentiert. Eingriffe sind umkehrbar, Zahlungen ausgeschlossen, heikle Aufgaben laufen nur nach Freigabe. Diese Regeln sind die Anforderungen an die neue Plattform, künftig technisch durchgesetzt.

**02.3 Worauf der Umbau bauen kann.** Fernzugang ausschliesslich über Tailscale, nach Kenntnis des Büros ohne Portweiterleitungen (Regelwerk der Firewall in AP0 zu verifizieren). Secrets nie im Repository. Ein Lauf-Journal mit Kosten, Dauer und Ergebnis je Lauf. Ein fertiges Zielbild für den Umbau der Datenhaltung. Jeder Betriebswert ist gemessen und datiert, das erleichtert die Abnahme.

## 03 Befund: neun Querschnittsthemen

**03.1 Ein Netzlaufwerk als Rückgrat.** Skills, Regeln, Wissen, Logbuch und Queues liegen auf einer SMB-Freigabe. Reisst der Mount ab, ist die Station für den ganzen Hub blind. Belegt sind sieben Ausfalltage in sechs Wochen. Am 17.09.2026 fehlte der Mount auf der mobilen Station knapp sechs Stunden am Stück. 730 Zeilen verdrahten den Pfad fest.

**03.2 Kein Job-System.** Sieben Feuermechanismen und fünf dateibasierte Queues laufen nebeneinander, ohne gemeinsamen Zustand, ohne Retry-Grenze, ohne Idempotenz. Die Folgen: die Fehlläufe aus 00.4, über 600 ertraglose Läufe in einer Nacht, vier Tage ohne Tagesbriefing, 66 Stunden Ausfall der Aufsicht, weil der Scheduler eine Desktop-App mit persönlichem Login ist. Knapp die Hälfte aller Läufe kam von Ad-hoc-Treibern ausserhalb des Repositorys.

**03.3 Identität und Berechtigung ohne Least Privilege.** Die Automatik arbeitet mit sehr weiten Rechten auf Umsysteme und Stationen, Zugänge werden von Hand zwischen den Geräten verteilt, eine Geräteverwaltung fehlt. Die Details stehen im Befundkatalog.

**03.4 Agentische Risiken sind nicht adressiert.** Das System verarbeitet regelmässig Inhalte aus externen Quellen und kann Aktionen mit Aussenwirkung auslösen. Lesende und handelnde Rolle sind nicht getrennt, Prompt-Injection ist nirgends berücksichtigt, der Schutz schreibender Aktionen ist organisatorisch statt technisch gelöst. Die Details stehen im Befundkatalog.

**03.5 Datenschutz ohne Rahmen.** Personendaten Dritter liegen in Beständen, die dafür nicht vorgesehen sind, und werden mit diesen extern gesichert. Datenklassen, Bearbeitungsverzeichnis, Auftragsbearbeitungsverträge und Löschkonzept fehlen. Ausschlusslisten für heikle Ordner bestehen nur als Text.

**03.6 Backup und Notfall nicht belegt.** Für die Bürodaten ist keine getestete 3-2-1-Sicherung dokumentiert, für Microsoft 365 und bexio gar keine Sicherung. Wiederherstellungsziele und ein Notfallplan fehlen. Die Always-On-Station übersteht keinen unbeaufsichtigten Neustart, eine USV ist nicht dokumentiert.

**03.7 Die Überwachung hängt am Überwachten.** Wächter schreiben ihren Zustand auf das NAS, das sie überwachen. Es gibt einen einzigen, abhängigen Alarmkanal, der mehrfach still ausfiel. Ein Fernzugangs-Ausfall von vier Tagen wurde viermal korrekt gemessen und nie gemeldet. Ein Buchhaltungszugang war 36 Tage tot.

**03.8 Kein Engineering-Fundament.** Keine CI, kein Lockfile, kein Staging. Skills und Regeln werden direkt in Produktion editiert und wirken sofort auf allen Stationen und in allen Nachtläufen. Der Grundkontext jeder Session ist trotz zweier Diäten auf 151 kB gewachsen.

**03.9 Auf eine Person verdrahtet.** Ein Benutzer, eine Identität, ein Absender, ein Logbuch. Für Mitarbeitende gäbe es heute nur vollen Zugriff ohne Rollenmodell. Ein Kundenportal mit Anmeldung, Ablaufdatum und Zugriffsprotokoll fehlt. Zwei Rechtsträger und Partnerbüros lassen sich so nicht abbilden.

## 04 Zielbild: eine Plattform, mehrere Hubs

**04.1 Grundsatz.** Das JANS AI Zentrum besteht aus einem Plattform-Hub, den der Ingenieur baut und verantwortet, und aus Fach-Hubs, die das Büro mit der KI auf dieser Plattform weiterbaut. Beilage 1 zeigt Ist und Soll auf einer Seite.

**04.2 Hubs sind Grenzen, keine Systeme.** Ein Hub ist ein Namensraum mit eigenem Berechtigungsprofil und eigenem Datenraum.

**04.3 Die Hubs in drei Gruppen.**

| Gruppe | Hub | Zweck | Nutzer |
|---|---|---|---|
| Fundament | Plattform-Hub | Identität, Laufzeit, Daten, Integration, Sicherheit, Monitoring, Delivery | Ingenieur, Inhaber |
| Fundament | Aufsichts-Hub | Tagesbriefing, Fristen, Logbuch, Freigabe-Inbox, Cockpit | Inhaber |
| Facharbeit | Wissens-Hub | Normen, Baurecht, Kennwerte, Lern-Loops, Suche | alle intern, lesend |
| Facharbeit | Studien-Hub | Machbarkeit, Volumen, Bewertung, Ankauf, Energie | Inhaber, Mitarbeitende |
| Facharbeit | Projekt-Hub | Ausschreibung bis Kostenkontrolle, Protokolle, Pendenzen | Inhaber, Mitarbeitende je Projekt |
| Facharbeit | Wettbewerbs-Hub | Programm, Flächennachweis, Konformität, Bericht, Plakat | Inhaber, Mitarbeitende |
| Geschäft | Finanz-Hub | bexio, Mahnwesen, Zahlungsabgleich, zwei Rechtsträger | Inhaber, Treuhand lesend |
| Geschäft | Akquise- und Stimm-Hub | Stilmodell als Dienst, Website, LinkedIn, Leads | Inhaber, Mitarbeitende ohne Korpus |
| Geschäft | Kundenportal | Studios und Berichte mit Anmeldung, Ablauf, Protokoll | Bauherrschaften, Partner |

**04.4 Zwei Hubs mit Sonderstatus.** Der Aufsichts-Hub liest täglich fremde Inhalte und handelt nach aussen. Er ist der risikoreichste Hub, wird zuerst migriert und erhält die Trennung von Leser und Handelndem zuerst. Der Projekt-Hub trägt die laufenden Bauprojekte mit Fristen. Er darf im Umbau nie stehen und wird zuletzt angefasst.

**04.5 Datenklassen.** K1 öffentlich, K2 intern, K3 vertraulich (Projekt, Kunde), K4 Personen- und Finanzdaten, dazu die Achse «lizenzgebunden» für Normen- und Buchdestillate, die nie extern gespiegelt werden. Je Klasse ist festzulegen, was in den KI-Kontext, in Git und in die Cloud darf. Die zwei Rechtsträger sind Mandanten im Projekt- und im Finanz-Hub. Das Mandantenfeld gehört ab dem ersten Datenbankschema ins Datenmodell.

**04.6 In Stufe 1 technisch erzwungen.** Drei Zonen: die Plattform; eine Inhaber-Zone für Finanzen, Stilkorpus und Kontaktregister; die übrige Facharbeit. Dazu die Trennung von Leser und Handelndem. Alle übrigen Hub-Grenzen sind in Stufe 1 Namenskonvention (Ordner, Job-Kennzeichen, Schema-Präfix) und werden erst mit AP14 technisch getrennt. AP0 darf die Zahl der Zonen und Identitäten senken.

**04.7 Die Schichten des Plattform-Hubs.**

| Schicht | Anforderung | Ersetzt heute |
|---|---|---|
| Identität und Geräte | ein Konto je Person, MFA, schlanke Geräteverwaltung, Rollen | von Hand verteilte Zugänge |
| Job-System | ein Scheduler mit Zustand, Retry, Timeout, Budget, Nachholen | 7 Scheduler, 5 Datei-Queues, Desktop-App |
| Agenten-Laufzeit | definierte Umgebung, Profil je Jobklasse, Sandbox | weite Rechte, Schutz organisatorisch |
| Daten | Git für Code und Wissen, Datenbank für Register, Objektspeicher | alles in einem Repository auf SMB |
| Integration | Secrets-Speicher, geprüfte Connectoren, später MCP-Server | 19 Einzel-CLIs, verstreute Zugänge |
| Sicherheit und DSG | Freigabeschicht ausserhalb der KI, Audit-Log, Datenklassen | organisatorische Regeln |
| Backup und Notfall | 3-2-1, Restore-Probe, RPO und RTO, M365 und bexio | unbelegte Einzelaussage |
| Monitoring und Alarm | unabhängig vom Überwachten, Push-Alarm, Kosten je Lauf | Wächter-Scripts, ein abhängiger Alarmkanal |
| Delivery | Review, CI, Evals, Staging, Releases | Edit direkt in Produktion |
| Wissensdienst (Ausbau) | Volltext- und Vektorsuche über alle Wissensbasen | Suche über Dateien, Register über 1 MB |

**04.8 Das Zielbild ist ein Vorschlag.** Hub-Schnitt, Zonen und Schichten sind die Sicht des Büros. AP0 bestätigt oder korrigiert sie.

## 05 Leitplanken

**05.1 Substanz vor Plattform.** Fach-Skills, Wissensbasen und Stilmodell werden nicht neu geschrieben. Markdown bleibt das Autorenformat.

**05.2 Kleiner Kern.** Ein Host, eine Datenbank, wenige gemanagte Dienste. Die Obergrenze der selbst betriebenen Dienste wird in AP0 festgelegt und gilt danach. Je Schicht ein Architekturentscheid mit Alternative und Ausstiegsweg.

**05.3 Standard vor Eigenbau, gemanagt vor selbst betrieben.** Das gilt, wo ein Dienst mit Standort Schweiz oder EU genügt.

**05.4 Risiko zuerst.** Backup, Alarm, Schlüssel und Geräte kommen vor dem Umbau von Daten und Laufzeit. Sofortmassnahmen sind additiv und einzeln abschaltbar.

**05.5 KI-bedienbar, aber geführt.** Alles ist per CLI, API oder Infrastructure as Code bedienbar, damit die KI weiterarbeiten kann. Änderungen an Plattform, Policy und Profilen laufen über Review und CI, auch für Bots.

**05.6 Minimaler Eigenbetrieb.** Das Büro hat keine IT-Fachperson und stellt keine an. Gesucht ist eine Lösung mit Wartungsvertrag. Das Zeitbudget des Inhabers je Woche ist Teil der Planung.

**05.7 Claude bleibt die KI-Engine.** Der Bezugsweg (Abo, API, Cloud-Region) ist ein Entscheid von AP0. Die Kosten der KI-Nutzung trägt das Büro direkt, sie sind nicht Teil der Paketpreise.

**05.8 Datenhoheit.** Schweizer DSG, Datenstandort Schweiz oder EU bevorzugt. Die Geheimhaltungsklauseln der Bauherrschaften prüft das Büro mit einer Rechtsfachperson vor jedem Standortentscheid.

**05.9 macOS bleibt.** ArchiCAD, Cinema 4D, InDesign und Rhino sind an Macs gebunden. Die Macs bleiben Arbeitsplätze, einer dient als Mac-Worker der Plattform. Die Festplattenverschlüsselung wird nirgends abgebaut. Der Mailweg (heute über den Mail-Client) ist ein Entscheid von AP0.

**05.10 Microsoft 365 und bexio bleiben.** SharePoint ist die Projektablage, bexio die Buchhaltung.

**05.11 Etappen mit Rückfallweg und Haltepunkten.** Kein Big Bang. Parallelbetrieb, bis die Abnahme je Etappe gemessen ist. Nach jeder Etappe kann das Büro anhalten.

**05.12 Baustopp und eingefrorene Schnittstellen.** Ab Auftrag AP0 entstehen im Hub keine neuen Wächter, Scheduler und Queues mehr. Ab Beginn AP5 sind die Schnittstellen zur Plattform eingefroren (Pfadauflösung, Job-Definitionen, Berechtigungseinstellungen, Aufrufe der Connectoren), Änderungen laufen über ein vereinbartes Verfahren. So bleibt der Stand, den AP0 verifiziert, bis zur Abnahme gültig.

**05.13 Übergabefähig.** Code, Konfiguration und Dokumentation liegen im Repository des Büros. Kein proprietärer Lock-in, dokumentierter Ausstieg, Nachbau durch eine zweite Fachperson möglich.

## 06 Leistungspakete

**06.1 Übersicht.** AP0 bis AP10 bilden Stufe 1. AP11 bis AP14 sind Ausbaupakete und werden einzeln bei ihrem Auslöser bestellt.

| Nr. | Paket | Ergebnis | Wer baut |
|---|---|---|---|
| AP0 | Audit, Zielarchitektur, Sofortmassnahmen | verifizierte Befunde, Architekturentscheid, Festpreise | Ingenieur |
| AP1 | Host, Netz, Geräte | neustartfeste Zentrale, Zonen, Geräteverwaltung | Ingenieur |
| AP2 | Backup, Restore, Notfallhandbuch | 3-2-1 mit Restore-Probe, RPO und RTO | Ingenieur |
| AP3 | Monitoring und Alarm | Ausfall in 15 Minuten gemeldet | Ingenieur |
| AP4 | Secrets und Least Privilege | ein Secrets-Speicher, Minimalrechte | Ingenieur |
| AP5 | Daten und Sync | Git als einzige Quelle, Register in der Datenbank | gemeinsam |
| AP6 | Job-System und Agenten-Laufzeit | ein Scheduler, eine Laufzeit | gemeinsam |
| AP7 | Agentische Sicherheit und Freigabeschicht | Leser und Handelnder getrennt, Audit-Log | Ingenieur |
| AP8 | Datenschutz nach DSG | Datenklassen, Verzeichnis, Verträge | gemeinsam |
| AP9 | Delivery: Review, CI, Evals | geprüfte Releases | gemeinsam |
| AP10 | Rückbau, Übergabe, Wartung | Klebstoff stillgelegt, Wartungsvertrag | Ingenieur |
| AP11 | Studio-Hosting mit Anmeldung | verkaufbares Kundenstudio | Ingenieur |
| AP12 | Wissensplattform mit Hybrid-Suche | Suche über alle Wissensbasen | gemeinsam |
| AP13 | Integrations-Hub (MCP) | typisierte Werkzeuge je Domäne | gemeinsam |
| AP14 | Mitarbeitende, Mandanten, Portal | Rollen, Mandantenräume, Portal | Ingenieur |

**06.2 Vorschlagswerte.** Die Abnahmewerte unten sind Vorschlagswerte des Büros. Der Ingenieur bestätigt sie in der Offerte oder ersetzt sie mit Begründung. Das Werkzeug je Paket wählt der Ingenieur.

**06.3 Gemeinsame Pakete.** Bei «gemeinsam» liefert der Ingenieur den Plattformteil, eine Migrationsanleitung und zwei bis drei Referenzmigrationen. Das Büro migriert den Rest mit der KI. Abgenommen und bezahlt wird der Plattformteil an den Referenzfällen, die Migration wird gemeinsam abgenommen.

**AP0 Audit, Zielarchitektur, Sofortmassnahmen.** Ziel: ein verifizierter Befund, ein Architekturentscheid und verbindliche Preise für AP1 bis AP10. Inhalt: Verifikation am lebenden System samt NAS, Firewall, Fernzugang, Identitätsdienst und Code-Ablage; Bedrohungsmodell; Abhängigkeitskarte aller Routinen mit Streichliste; Datenklassen; Kostenmodell der KI-Nutzung in drei Szenarien, auch mit nur fünf bis zehn unbeaufsichtigten Jobs; Zielarchitektur mit zwei Varianten und den Kosten über drei Jahre; moderierter Entscheid-Workshop. AP0 wird geteilt offeriert: AP0a Audit und Zielarchitektur als Festpreis, AP0b Sofortmassnahmen als Kostendach (Backup-Nachweis, zweiter Alarmkanal, Zwischenschutz: Sende- und Buchungszugänge aus den unbeaufsichtigten Profilen nehmen, Sperrliste). Vor der nachgewiesenen Wiederherstellung einer Datei greift der Ingenieur nicht schreibend in NAS und Stationen ein. Abnahme: Jeder kritische Befund ist einem Paket zugeordnet, je Schicht liegt ein Architekturentscheid vor.

**AP1 Host, Netz, Geräte.** Ziel: eine Zentrale, die ohne Person wieder anläuft. Randbedingungen: kleiner, headless betriebener Linux-Host oder gleichwertige VM in der Schweiz oder EU, verschlüsselt, USV, Konfiguration als Code; Netz in Zonen, Fernzugang als Systemdienst nach Least Privilege; schlanke Geräteverwaltung für die Macs mit Schlüssel-Hinterlegung und Fernlöschung, Grundinstallation aller Stationen nach Standard. Abnahme: Stecker-Probe für Host und Plattformdienste bestanden (ohne Person innert 10 Minuten zurück, Datenträger bleiben verschlüsselt), der Mac-Worker meldet sich nach Anmeldung selbst zurück; Host in zwei Stunden aus dem Repository neu aufgesetzt; Zugänge eines verlorenen Geräts innert einer Stunde widerrufen, Sperrbefehl abgesetzt.

**AP2 Backup, Restore, Notfallhandbuch.** Ziel: Wiederherstellbarkeit ist nachgewiesen statt behauptet. Randbedingungen: Dateninventar mit RPO und RTO je Klasse; 3-2-1 für Bürodaten, Host und Microsoft 365 mit verschlüsseltem Ziel ausser Haus, periodischer bexio-Export; Kapazitäts- und Nachfolgeentscheid für das NAS, Speicherstrategie für den SharePoint-Pool; Berechtigungsmodell des Dateiservers je Person, Dienst und Datenklasse; Löschkonzept, das mit unveränderbaren Sicherungen vereinbar ist; Notfallhandbuch je Szenario samt Stellvertretung. Abnahme: protokollierte Wiederherstellung je Datenklasse, bexio-Export erzeugt und auf Lesbarkeit geprüft, RPO und RTO vom Inhaber unterschrieben und in der Probe eingehalten, eine Notfallübung durchgeführt.

**AP3 Monitoring und Alarm.** Ziel: Jeder Ausfall wird innert Minuten gemeldet, auch wenn NAS, Tunnel, Mail-Client oder KI-Kontingent betroffen sind. Randbedingungen: Überwachung ausserhalb der überwachten Systeme; Erfolgs-Heartbeat je Job, Erreichbarkeit von aussen, echter Lese-Check je Connector, Ablauf aller Tokens und Zertifikate, Zustand und Füllstand von NAS und SharePoint, Uhrendrift der Stationen; keine Dashboard-Landschaft. Abnahme: Simulierter Ausfall von Host, NAS, Tunnel und einem Aufsichtsjob löst je innert 15 Minuten einen Alarm aus, den der Push-Dienst als zugestellt quittiert.

**AP4 Secrets und Least Privilege.** Ziel: Ein verlorenes Gerät oder ein kompromittierter Zugang gefährdet nicht mehr das Ganze. Randbedingungen: ein Secrets-Speicher als einzige Quelle mit Inventar, Rotation und Ablaufüberwachung; Rechte der Microsoft-365-Anbindung auf das Nötige zugeschnitten und getrennt nach Lesen, Schreiben und Senden; Schlüssel je Gerät und nicht exportierbar; Zugriffsschutz der Code-Ablage nach Stand der Technik. Abnahme: Alle Secrets liegen ausschliesslich im Secrets-Speicher, jede Anbindung arbeitet mit dokumentierten Minimalrechten, alte Zugänge erst deaktiviert und nach 30 Tagen gelöscht.

**AP5 Daten und Sync.** Ziel: Der Hub arbeitet auf jeder Station ohne Netzlaufwerk. Randbedingungen: aufbauend auf der vorhandenen Systemanalyse, Git als einzige Quelle mit lokalen Klonen und Pfadauflösung per Konfiguration; Schnitt des Repositorys in Plattform, Harness, Wissen und Privates, in einem Zug mit dem Neuaufsetzen auf bereinigtem Stand (altes Repository eingefroren); Branch-Schutz auch für Bots, CI-Gerüst und Prüfung auf Secrets und Personendaten ab dem ersten Tag; Register, Journale und Telemetrie in die Datenbank, mit Kommandozeile für die Agenten und lesbarem Export; Binärdaten in den Objektspeicher; Hub-Ausgaben serverseitig in SharePoint statt über lokale Sync-Ordner. Abnahme: Alle Stationen arbeiten bei ausgehängtem NAS, kein Status-Commit mehr, 14 Tage ohne Divergenz an den Referenzfällen.

**AP6 Job-System und Agenten-Laufzeit.** Ziel: Ein einziges Job-System ersetzt die sieben Scheduler und fünf Queues. Randbedingungen: Zustand, Obergrenze für Wiederholungen, Timeout, Idempotenz, Budget je Lauf, Nachholen, Abbruch bei fehlendem Ertrag; eine Laufzeit mit gepinnter Version und genau einer Anmeldungsquelle, je Jobklasse umstellbar zwischen Abo und API (Entscheid aus AP0 ist Vorbedingung); Mac-Worker unter eigenem Benutzer mit dediziertem Konto, der Aufträge abholt, statt von aussen angesprochen zu werden; Aufsicht zuerst und im Schattenbetrieb (beide Systeme erzeugen, nur das alte sendet), mit Leserprofil und Freigabeschicht im Beobachtungsmodus; operative Jobs danach, Lern-Loops zuletzt; getrennte Kontingente für operative und lernende Läufe; ein Weg, unterwegs Aufträge einzureichen. Abnahme: Fehlläufe mit Ursache in der Plattform (Scheduler, Laufzeit, Secrets, Netz) unter 5 % über 14 Tage, Ausfälle des KI-Anbieters sowie Anmelde- und Kontingentfehler des gewählten Bezugswegs getrennt ausgewiesen; kein Doppellauf; Tagesbriefing und Fristen-Radar 14 Tage in Folge geliefert; jede Routine mit Takt, letztem Ergebnis und nächstem Lauf an einem Ort sichtbar.

**AP7 Agentische Sicherheit und Freigabeschicht.** Ziel: Eine präparierte Mail oder ein präpariertes Dokument kann keine Aussenwirkung auslösen. Randbedingungen: Berechtigungsprofile je Jobklasse, vom werkzeuglosen Leser bis zum aussenwirksamen Profil, für interaktive Sitzungen eine empfohlene Konfiguration; Freigabeschicht ausserhalb der KI für Senden, Buchen, Mahnen und das Ändern von Berechtigungen, mit Regeln als Code, Betrags- und Mengengrenzen und Freigabe per Push, zuerst beobachtend, dann erzwingend; die Schreibzugänge zu Mailversand und Buchhaltung liegen in der Freigabeschicht; signierte Aufträge; Audit-Log ausserhalb der Schreibreichweite der Agenten; Testkonten stellt das Büro bei. Abnahme: Das Leserprofil hat nachweislich keine Werkzeuge und keinen Netzausgang, aussenwirksame Aktionen sind nur über die Freigabeschicht möglich (Konfigurationsnachweis); eine Suite mit präparierten Mails und Dokumenten, vom Ingenieur erstellt und vom Büro erweiterbar, löst in der CI weder eine Aktion noch einen Datenabfluss aus; die Freigabeschicht verweigert bei eigenem Ausfall jede Aktion; Policy und Profile ändern nur benannte Personen.

**AP8 Datenschutz nach DSG.** Ziel: ein tragfähiger Rahmen für Mitarbeitende, Partner und Bauherrschaften. Randbedingungen: Datenklassen (Festlegung bereits in AP0), Bearbeitungsverzeichnis, Übersicht der Auftragsbearbeiter mit Datenstandort, Lösch- und Aufbewahrungskonzept, Folgenabschätzung für das agentische System, Ablauf bei einer Verletzung der Datensicherheit; Personendaten aus Grundkontext und Repository in einen zugriffsgesteuerten, löschfähigen Speicher; technisch erzwungene Ausschlusslisten. Juristische Fragen benennt der Ingenieur, beantworten muss sie eine Rechtsfachperson, die das Büro früh beizieht. Die Vertragslage der heutigen KI-Nutzung klärt das Büro als Vorleistung. Abnahme: Ein gesperrter Ordner ist für Inventar- und Lernläufe technisch nicht lesbar, ein Commit mit Personendaten oder Secret wird abgewiesen, Verzeichnis und Verträge liegen vor.

**AP9 Delivery: Review, CI, Evals.** Ziel: Die KI baut weiter, aber Änderungen erreichen die Produktion nur geprüft und rückholbar. Randbedingungen: Versions-Tags und Rollback für Plattform und Harness, Produktion zieht nur freigegebene Stände; Lern-Loops schreiben in einen Staging-Zweig mit Diff-Gate, die Selbstverbesserung erzeugt Vorschläge statt Direkt-Edits; festgelegt ist, welche Änderungsklassen nach grüner Prüfung automatisch übernommen werden und welche der Inhaber freigibt, auf dem Telefon, mit einem Klick und Frist; Evaluations-Suite aus den vorhandenen Goldstandards, Tests der fachlichen Rechenkerne, gepinnte Werkzeuge. Abnahme: Direkter Push in die Produktion ist auch für Bots gesperrt, ein Grundkontext von mehr als 100 kB blockiert die Übernahme, Rollback in 10 Minuten vorgeführt.

**AP10 Rückbau, Übergabe, Wartung.** Ziel: Der Klebstoff ist stillgelegt und der Betrieb betreut. Randbedingungen: Stilllegen mit 60 Tagen Vorhaltung; Runbooks aus der Betriebs-Chronik, auch für Sicherheitsvorfälle; Schulung des Inhabers; Wartungsvertrag für den Plattform-Hub mit Reaktionszeiten, Patch-Fenstern, Stellvertretung und halbjährlichem Review. Fach-Hubs und Inhalte der Routinen verantwortet das Büro, Ausfälle von Drittdiensten sind von den Reaktionszeiten ausgenommen. Servicezeiten: ________________. Abnahme: Eine zweite Fachperson, die das Büro stellt, baut einen Dienst aus dem Repository nach; der Betriebsaufwand des Inhabers ist in AP0 gemessen und wird nach drei Monaten im Rahmen der Wartung nachgemessen.

**AP11 Studio-Hosting mit Anmeldung.** Auslöser: der nächste zahlende Studio-Kunde. Statisches Hosting in der Schweiz oder EU hinter Anmeldung, mit Ablaufdatum, Widerruf, Zugriffsprotokoll und Deployment aus versionierter Quelle. Rechenkern aus einer Quelle mit Paritätstests. Dieses Paket ist klein und darf früh kommen, weil es das nächste verkaufbare Produkt trägt.

**AP12 Wissensplattform mit Hybrid-Suche.** Auslöser: messbar bremsendes Retrieval. Volltext- und Vektorsuche über alle Wissensbasen, Provenienz mit Dokument-ID und Quellversion, Evaluations-Sets je Wissensbasis, Auslieferung als ein Werkzeug für die Agenten. Die Erschliessung des Archivs mit 1.9 TB ist ein eigenes Vorhaben und nicht Teil dieses Pakets.

**AP13 Integrations-Hub (MCP).** Auslöser: neue Integrationen oder Mitarbeitende, die dieselben Werkzeuge brauchen. Typisierte MCP-Server je Domäne, gemeinsames Connector-SDK, Katalog als Daten, Sanierung der fragilen Portal-Logins.

**AP14 Mitarbeitende, Mandanten, Portal.** Auslöser: erste Anstellung, Start der AG, erster Partnervertrag. Rollen, Zugriff im Namen der anfragenden Person, Mandantenräume, Portal für Partner und Bauherrschaften.

## 07 Rollenteilung

**07.1 Der Ingenieur.** Er baut und verantwortet den Plattform-Hub, setzt die Leitplanken für die KI und nimmt Änderungen an Plattform, Policy und Profilen ab. Er ist selbst Auftragsbearbeiter mit hohen Rechten: benanntes Admin-Konto mit MFA, zeitlich begrenzte Rechte, protokollierte Eingriffe, geregelter Austritt.

**07.2 Das Büro mit der KI.** Es baut die Fach-Hubs weiter, stellt Pfade und Routinen auf die neue Plattform um und liefert Messwerte und Dokumentation zu.

**07.3 Der Inhaber.** Er entscheidet Varianten, Budget, Datenstandort und Freigaben und nimmt jede Etappe ab. Er stellt ________________ Tage je Woche zur Verfügung und entscheidet innert ________________ Arbeitstagen. Verzug auf seiner Seite verlängert die Termine.

**07.4 KI-Werkzeuge des Ingenieurs.** Ihr Einsatz ist erwünscht. Konto, Datenklassen und Vertragsgrundlage werden in der Vereinbarung zur Auftragsbearbeitung geregelt.

## 08 Etappen

**08.1 Übersicht.**

| Etappe | Inhalt | Ergebnis |
|---|---|---|
| E0 | Interesse, Geheimhaltung, Begehung, Offerte | Auftrag AP0 |
| E1 | AP0 mit Sofortmassnahmen | Architekturentscheid, Festpreise |
| E2 | Risiko zuerst: AP1 bis AP4 | gesicherte Daten, Alarm, enge Rechte (Haltepunkt) |
| E3 | Daten und Laufzeit: AP5, AP6, danach vier Wochen Messung | ein Job-System ohne SMB (Haltepunkt) |
| E4 | Härtung: AP7, AP8, AP9 | Freigabeschicht, DSG-Rahmen, geprüfte Releases |
| E5 | AP10 | Klebstoff stillgelegt, betreuter Betrieb |
| Ausbau | AP11 bis AP14 je bei Auslöser | verkaufbare Produkte, Team, Mandanten |

**08.2 Beginn AP0.** Gewünscht: ________________.

**08.3 Abschluss Stufe 1.** Gewünscht: ________________.

## 09 Anforderungen an die Offerte

**09.1 Form.** PDF, höchstens zehn Seiten, dazu das Preisblatt je Paket.

**09.2 Preise.** AP0a als Festpreis, AP0b als Kostendach. AP1 bis AP14 je als Richtpreis-Bandbreite in Ingenieurtagen mit Annahmen; verbindlich werden AP1 bis AP10 als Ergebnis von AP0. Wartung als Richtwert je Monat mit Leistungsumfang. Stundenansätze nach Funktion. Alle Preise in CHF, exklusive MWST, MWST ausgewiesen. Wo die KI-Bearbeitbarkeit des Systems Ihnen Aufwand spart, weisen Sie das aus.

**09.3 Eigenleistung und Zeitbedarf.** Je Paket die vorausgesetzte Eigenleistung des Büros mit der KI in Tagen und der Zeitbedarf des Inhabers je Woche, samt Wartungsfenstern.

**09.4 Lösungsansatz.** Auf höchstens einer Seite: die Architektur, die Sie vorschlagen würden, die wichtigste Alternative und der Grund, weshalb Sie sie verwerfen. Dazu die kleinste sinnvolle Erstbestellung. Die ausgearbeiteten Varianten sind Ergebnis von AP0 und nicht Teil der Offerte.

**09.5 Team.** Wer arbeitet, mit welcher Erfahrung in agentischen Systemen, macOS-Flotten als Worker, Microsoft Entra und Graph unter Least Privilege und im KMU-Betrieb. Bietergemeinschaften und Unterauftragnehmer sind zugelassen, etwa klassische KMU-IT für AP1 bis AP4 und eine Spezialistin oder ein Spezialist für AP5 bis AP9. Stellvertretung ist nur für den Wartungsvertrag verlangt.

**09.6 Eigentum.** Sämtliche Arbeitsergebnisse gehören dem Büro und liegen in seinem Repository.

**09.7 Vertraulichkeit und Datenschutz.** Vereinbarung zur Auftragsbearbeitung mit dem Auftrag AP0. Zugriff nur mit persönlichen, protokollierten Konten.

**09.8 Haftung.** Nachweis der Berufshaftpflicht. Eine Haftung für Datenverlust setzt die in AP2 nachgewiesene Sicherung voraus.

**09.9 Bindefrist.** Drei Monate ab Offertdatum für AP0, die Stundenansätze und den Richtwert der Wartung.

## 10 Sechs Fragen, die die Offerte beantwortet

**10.1 Standort der Plattform.** Eigener Host im Büro, VM in der Schweiz beziehungsweise in der EU oder Mischform? Ab welcher Grösse oder welchem Risiko raten Sie zum einen oder anderen?

**10.2 Bezugsform der KI.** Welche Bezugsform empfehlen Sie für unbeaufsichtigte Läufe, mit welchen Kosten und Vertragsbedingungen? Das Journal weist rund USD 2'400 API-Äquivalent in 7.5 Wochen aus, vor Bereinigung der Fehlläufe und ohne die App-Routinen.

**10.3 Agentische Sicherheit.** Wie trennen Sie lesende von handelnden Agenten, wo liegen die Schreibzugänge, wie weisen Sie die Wirkung wiederkehrend nach?

**10.4 Mac-Worker.** Wie betreiben Sie CAD, Render und allenfalls Mailversand als Dienst neben interaktiver Arbeit, nach einem Neustart und ohne ruhende Secrets?

**10.5 Streichen.** Welche der 84 Scripts und 22 Wächter streichen Sie ersatzlos, welche übernehmen Sie als Anforderung? Was würden Sie für ein Büro mit ein bis sechs Personen ganz weglassen?

**10.6 Widerspruch.** Welche Risiken fehlen in diesem Briefing, und welche Annahmen halten Sie für falsch?

## 11 Bewertung der Offerten

**11.1 Gewichtung.** Der Preis wird an AP0, den Stundenansätzen und dem Richtwert der Wartung gemessen, nicht an den unverbindlichen Richtpreisen.

| Kriterium | Gewicht |
|---|---|
| Verständnis und Qualität des Lösungsansatzes | 30 % |
| Erfahrung und Referenzen | 20 % |
| Preis und Kostentransparenz | 20 % |
| Betriebskonzept und Wartung | 15 % |
| Vorgehen, Etappierung, Risiko | 15 % |

## 12 Ablauf

**12.1 Begehung.** Termin im Büro mit Einsicht in das laufende System und in Befundkatalog, Hub-Audit und Systemanalyse: ________________.

**12.2 Rückfragen.** Schriftlich bis ________________ an rj@raphaeljans.ch.

**12.3 Offerte.** Eingang bis ________________.

**12.4 Vergabe.** Entscheid bis ________________, zuerst AP0.

## 13 Beilagen

**13.1 Beilage 1.** Architektur Ist und Soll auf einer Seite.

**13.2 Zur Einsicht an der Begehung.** Befundkatalog vom 19.09.2026 (120 Befunde mit Beleg), Hub-Audit vom 12.08.2026, Spec Laufzeitschicht vom 30.08.2026, Systemanalyse und Vertiefung vom 11.09.2026, Service-Katalog, Geschäftsmodell.

Freundliche Grüsse

Raphael Jans, Founder I MD
MSc ETH I SIA
rj@raphaeljans.ch
+41 79 846 11 65
www.raphaeljans.ch
