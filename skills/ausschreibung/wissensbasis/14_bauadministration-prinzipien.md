# 14 Bauadministrations-Prinzipien (Referenzmodell BBase)

Angelegt 07.09.2026 aus dem Web-Scan von bbase.ch (31 Seiten, 15 Handbuecher). Zweck: Pruefraster fuer den Bauleitungs-Harness (honorarberechnung-sia102, ausschreibung, offertenpruefung, werkvertrag, unternehmerkontrolle, kostenkontrolle). Die nummerierten Prinzipien 04.1 bis 04.42 sind die Pruefpositionen; der Loop bauleitung-training prueft je Lauf einen Skill dagegen und traegt Luecken in wissensluecken.md ein. Textextrakte der Handbuecher: referenzen/bbase-handbuecher/. Nichts hieraus wird woertlich in ausgehende Dokumente uebernommen.


Datum: 07.09.2026
Quelle: https://www.bbase.ch (BBase, Bau- und Büroadministration, PMS Informatik AG, Riedhofstrasse 53, 8408 Winterthur)
Zweck: fachliches Modell der Bauleitung und Bauadministration aus der Website und den verlinkten Handbüchern destillieren, als Vergleichsgrundlage für die JANS-Skills (honorarberechnung-sia102, ausschreibung, werkvertrag, unternehmerkontrolle, kostenkontrolle, pendenzenliste, protokoll, terminplanung).
Regel: Es wird nur wiedergegeben, was die Website oder die verlinkten PDFs sagen. Was dort nicht steht, ist als «nicht belegt» markiert. Wertungen der Software unterbleiben.

## 00 Umfang des Scans

00.1 Gescannte HTML-Seiten (31): index.php, konzept, stammdaten, notizen-pendenzen-protokolle, terminplanung, kostenplanung, ausschreibung, kostenkontrolle, auftragsverwaltung, honorar, lizenzen, schulungen, infotheken.php, support, geschichte, ueber-uns, referenzen.php, tipps, tipps-allgemein, tipps-kostenplanung, tipps-kostenplanung-ebkph, tipps-kostenplanung-vergabeeinheiten, tipps-ausfuehrung, tipps-ausfuehrung-blickfangzeichnungen, tipps-kostenkontrolle, tipps-kostenkontrolle-kostengliederung, tipps-auftrag, tipps-auftrag-chefzahlen, tipps-auftrag-qr-rechnung, tipps-auftrag-rechnungsversand, tipps-auftrag-jahreswechsel.

00.2 Gescannte PDF-Handbücher und Musterberichte (15, alle unter https://www.bbase.ch/assets/pdf/...): 1.10_BR_BBaseKurzinfo.pdf; bauadministration/3.47_Bauen_im_Bestand.pdf; 3.48_BR_BauKostenSystem_Plus.pdf; 3.91_Notizen_Pendenzen_und_Protokolle.pdf; 5.11_BR_Adressen.pdf; 5.15_BR_Unternehmerliste.pdf; 5.34_BR_Grobkosten.pdf; 5.51_BR_Ausschreibung.pdf (57 Seiten); 5.57_BR_Submittentenliste.pdf; 5.61_BR_Budgetkontrolle.pdf (40 Seiten); 5.66_BR_Unternehmerkontrolle.pdf (29 Seiten); bueroadministration/3.19_BR_Betriebskosten.pdf; 5.81_BR_Honorar.pdf (33 Seiten); 5.82_BR_Journal.pdf; 5.83_BR_Auftrag.pdf.

00.3 Nicht erreichbar oder nicht auswertbar: Alle Seiten und PDFs waren erreichbar (HTTP 200). Nicht auswertbar sind die Beispielseiten in 5.66_BR_Unternehmerkontrolle.pdf (Seiten 13 bis 29), 5.51_BR_Ausschreibung.pdf (Seiten 32 bis 57) und 5.81_BR_Honorar.pdf (Seiten 13 bis 33): sie sind als Bilder eingebettet und tragen keinen extrahierbaren Text. Genau dort stünden die Werkvertrags-, Offertvergleichs- und Honorarformulare mit ihren Feldern. Die Feldangaben zu Werkvertrag und Schlussrechnung stammen deshalb aus den Textteilen der Handbücher und aus dem Textbeispiel der Budgetkontrolle. Die Tipps-Unterseiten verweisen auf «Anleitung öffnen» und «Merkblatt öffnen» ohne verlinkte Datei im HTML; diese Anleitungen konnten nicht geholt werden. Bewusst nicht geholt: anfrage.html, kontakt.html, impressum.html, datenschutz.html, tipps-installation/-mac/-windows/-excel, tipps-allgemein-cloud/-edongle/-homeoffice, tipps-auftrag-mitarbeiterwechsel/-monatsstunden, bbasefernsteuerung.html (technisch, ohne fachlichen Gehalt).

00.4 Stand der Quellen: Website-Texte Stand 2025/2026 (Version 8.74 vom 28.11.2025), Handbücher zwischen 2010 (Budgetkontrolle, mit BKP 2001) und 2024 (Unternehmerkontrolle). Die Website nennt für den Kostenvoranschlag inzwischen BKP 2020.

## 01 Das Gesamtmodell: Lebenszyklus entlang der SIA-Phasen

01.1 Grundsatz. BBase «folgt dem Planungs- und Bauprozess gemäss SIA Honorarordnung 102/105» und deckt «von der Analyse über die Projektierung und Ausführung bis zur Abrechnung» den ganzen Lebenszyklus ab (Kurzinfo 1.10; konzept.html). Jede Phase hat ein Werkzeug, die Daten fliessen weiter: «Mit den lückenlosen Werkzeugen von BBase wird die digitale Kette nie unterbrochen» (konzept.html).

01.2 Zuordnung der Module zu den SIA-Phasen (Kurzinfo 1.10):
Phase 1 bis 2 (Vorstudien): BBaseGrobkosten (entwurfsbegleitende Kostenprognose Neubau, Ersatz für die kubische Berechnung, verknüpft mit Betriebs- und Unterhaltskosten) und BBaseHonorar (Offerte, Vertrag, Leistungsnachweis SIA 102/105).
Vorprojekt: BBaseBauerneuerung (Zustandsanalyse, Massnahmen, Kostenschätzung Umbau).
Phase 3 (Bauprojekt): BBaseBauKostenSystem Plus (Bauteile, BKP, eBKP-H) und BBaseKostenvoranschlag (BKP, Baubeschrieb, Folgekosten).
Phase 4 (Ausschreibung): BBaseAusschreibung (LV, Offertvergleich, Werkvertrag). Wörtlich: «Vergleich der Angebote bezüglich der Qualitäten und Quantitäten, der Einheitspreise und Rabatte, der Wirtschaftlichkeit und der Fristen. Erstellen der Vergabeanträge. Aufstellen der Verträge mit den Unternehmern und Lieferanten.»
Phase 5 (Realisierung): BBaseUnternehmerkontrolle (Ausmass und Unternehmer-Dossier: «Kontrolle von Leistungsaufstellungen und Rechnungen. Abschluss der Unternehmerrechnungen. Prüfen des Bauwerks oder von Bauwerksteilen, Festhalten von Mängeln, Anordnen von Massnahmen und Fristen zu deren Behebung. Erstellen der Abnahmeprotokolle. Einholen und Kontrollieren der Bank- oder gleichwertigen Garantien») und BBaseBaubuchhaltung («Führen der Baubuchhaltung, Gliederung in Übereinstimmung mit dem Kostenvoranschlag. Periodische Kostenrapporte, Vergleich von Zahlungen und Verpflichtungen. Erstellen der Liste der Garantieverfalldaten. Aufstellen, Nachprüfen und Bereinigen der Schlussabrechnung gemäss Gliederung nach BKP und Vergabeeinheiten. Gegenüberstellen mit dem Kostenvoranschlag. Bestimmen der sich aus den Gesamtkosten des Bauwerks ergebenden Kennwerte»).
Phasenübergreifend: Projektverwaltung, Adressverwaltung, Unternehmerliste, Notizen/Pendenzen/Protokolle, Journal, Auftrag.

01.3 Vier Phasen der Ausführungskette (5.51, Kap. 1.4): Phase 1 Ausschreibung (AS), Phase 2 Offertvergleich/Vergabe (VG), Phase 3 Werkvertrag (WV), Phase 4 Unternehmerkontrolle mit Mutationen und Schlussrechnung (UK, SR). Jedes Folgedokument wird als Kopie des Vorgängers angelegt, «damit das Original unverändert bleibt».

01.4 Dokumentprinzip. Alle Daten liegen «thematisch gegliedert in einzelnen BBaseVorlagen (Arbeitsmappen)», gespeichert als Excel/Word-Dateien; Berechnungsvorschläge des Systems (schwarz) können durch Anwendereinträge (rot) überschrieben werden, nach Löschen des Eintrags kehrt der Vorschlag zurück (konzept.html). Es gibt Standardvorlagen, daraus abgeleitete Bürovorlagen und Projektvorlagen (5.51, 5.57, 5.81).

## 02 Die Kernobjekte der Datenstruktur

02.1 Projekt (Projektliste, Projektverwaltung). Bauherr- und Objektadresse, Kurzbeschrieb (Standort, Bauart, Konstruktion), Termine (Beginn, Rohbauvollendung, Bezug), Preisstand/Index, Kostendaten, Kennwerte (Beschrieb, Flächen, BKP, Index), Projektart, Bauwerksart, Raumprogramm (stammdaten.html; 5.51 Kap. 1.4; 5.61 Beispiel «Hinweise KV»). Die Projektdaten werden «in alle Ausschreibungen abgefüllt».

02.2 Adresse. Neben den üblichen Adressfeldern führt BBase eigene Klassierungen: Adressart (Unternehmer, Behörden, Planer usw.), Vergabeeinheit (Baumeister, Zimmermann, Maler usw.), BKP, Projektnummer; Bank/Post, IBAN (Kontonummer-Feld seit IBAN leer zu lassen); Sachbearbeiter mit Telefon und E-Mail (stammdaten.html; 5.11; 5.61 Beispiel). Korrespondenz nach SN 010130 (Post-Richtlinien).

02.3 Vergabeeinheit (VE). Zentrales Bindeglied: «Unternehmer oder Werkgruppe welche mit einem bestimmten Begriff wie z.B. Baumeister, Maler, Gärtner, Bauingenieur, Gemeindewerke, usw. bezeichnet werden. Dient als übergeordnete Gliederungsstruktur für das Zusammenfassen von Leistungen und Kosten» (5.51 Begriffe). Kürzel zweistellig (AU Aushub, BM Baumeister, GR Gerüste, FE Fenster, SR Schreiner, ZI Zimmermann, GA Gärtner, AR Architekt). Jede VE trägt in der Baubuchhaltung Vergabesummen «Vertrag, Nachtrag, Teuerung, Regie usw.» (kostenplanung.html). Rat des Handbuchs: wenige, standardisierte VE-Bezeichnungen verwenden (5.11 Kap. 2.3, «Weniger ist mehr»).

02.4 Konto. Kleinste Budgeteinheit, dem BKP untergeordnet: Notation «BKP-Laufnummer» wie 211-01 Baumeisterarbeiten, 211.1-02 Gerüste, 221-01 Aussenfenster, 291-01 Honorar Architekt. Bis zu 99 Konti pro BKP-Untergruppe; Kontobezeichnung frei (BKP-Gattung oder eigene Definition). Alle Konti werden auf BKP 1-, 2- und 3-stellig summiert (kostenplanung.html; 5.61 Kap. 1.2). Jedem Konto kann eine VE angefügt werden.

02.5 Gliederungen (horizontal). Finanzierungsgliederung FG (teilt den Totalbetrag eines Kontos auf: Käufer, werterhaltend/wertvermehrend, Eigenmittel/Subvention, Etappen), Objektgliederung OGL (zählt Teilobjekte zusammen, zwingend für Kennwerte), Zahlungskonti ZK (Baukredit, Eigenmittel, WIR, Käufer; zeigen den Kapitalfluss quer über alle Konti) (5.61 Kap. 1.3). Im LV zusätzlich: Positionslage PSL, Kostenartengliederung KAG, Elementgliederung EGL, je sechsstellig alphanumerisch (5.51 Begriffe).

02.6 Bauteil und Komponente (BKS Plus). Projektspezifische Bauteile mit frei wählbarer Detaillierung; einfache Bauteile als Textbaustein plus globale Kosten (Budgetposition), komplexe Bauteile mit Konstruktionsarten, Schichtaufbauten, Komponenten, Mengen, Ausmasstabellen, Zuschlägen und Einheitspreisen. Jedes Bauteil trägt die Zuordnung zu BKP, eBKP-H und VE, optional zu bis zu drei FG (3.48).

02.7 Leistungsverzeichnis und Position (NPK-Struktur nach IfA18). Kapitel (dreistellig, NPK-Kapitelnummer, Sprachcode, Ausgabejahr, Versionsjahr), Abschnitt (xx00), Unterabschnitt (xx0), Hauptposition (dreistellig), Unterposition (dreistellig, keine Nullen), Reservekapitel 9xx, Reserveposition xx9 (Kennzeichen R), Variablen, Varianten, Wiederholungsposition. Spalten: Pos, UP, Text, EH (Einheit), MA (Mengenart), PRV (preisrelevante Vorbemerkung), KAL (Kalkulationsgrundlage, 6 Stellen), OGL, PSL, KAG, EGL, VAR, ERT (Einrichtungstyp), R. Laufnummer siebenstellig (Kapitel plus Folgenummer plus Prüfsumme). Mengenarten nach SIA 451: A Vorausmass einzurechnen, B Festmenge, D Vorausmass nur auf Anweisung, E Per-Position ohne Menge; Primärvarianten J/K/M, Eventualvarianten Q/R/U. Ausmasstabelle je Mengenzeile mit Faktor, Länge, Breite, Höhe, Rundung (5.51 Kap. 1.5 und Begriffe).

02.8 Submittent. Unternehmeradresse je VE in der Submittentenliste (Tabellen Grundlage, Deckblatt, Submittenten nach VE, Notizen); Grundlage für die Besprechung mit dem Bauherrn, wer eingeladen wird; wird ohne Neuerfassung in die Ausschreibung übernommen (5.57).

02.9 Angebot, Offertvergleich, Favorit. Einheitspreise und Konditionen je Unternehmer in Spalten; Vergleich gegen KV-Preise (auf Position, Abschnitt oder Bruttototal); Abweichung in Prozent oder absolut zum Favoriten (5.51 Kap. 1.5 Phase 2).

02.10 Werkvertrag. Deckblatt mit Nettosumme, Inhaltsverzeichnis, Unterschriftenfeld; Unternehmerblatt, Hinweise, Struktur, Konditionenmodell aus der Ausschreibung; LV mit Favoritenpreisen; Vertragsbrief an Bauherr und Unternehmer mit Eingabetermin und Arbeitsgattung (5.66 Kap. 1.2; 5.51 Phase 3).

02.11 Nachtrag und Abzug (Unternehmerkontrolle). Vier Buchungstypen: ERBR Ergänzung brutto, ERNE Ergänzung netto, ABBR Abzug brutto, ABNE Abzug netto; sie verändern die Vertragssumme; Nachtragsangebote «sind mit eigenen Leistungsverzeichnissen einzuholen» (5.66 Begriffe; 5.51 Begriff Nachtragsangebot).

02.12 Ausmass. Wird im LV je Position erfasst; ohne LV erfolgt der Vergleich auf Kapitelebene (5.66 Kap. 1.2).

02.13 Mutation (Baubuchhaltung). Bestellungs- oder Projektänderung als Mehr-/Minderkosten oder Umbuchung im KV, parallel als Nachtrag beim Unternehmer; dokumentiert im Änderungsprotokoll (kostenkontrolle.html; 5.61 Beispiel).

02.14 Zahlung. Zahlungsantrag je VE mit Zahlungskonto, Empfänger-Bankverbindung, Teilbeträgen je Konto, Belegnummer, Rechnungsnummer und Rechnungsdatum, «vor Skonto», Verweis auf Konditionen, Abzüge und MwSt in der beiliegenden Rechnung; Sammel-Zahlungsauftrag an die Bank mit Beleg, VE, Unternehmer, Rechnungsnummer, Fälligkeit, Betrag (5.61 Beispiel).

02.15 Auftrag (Büroseite). Auftragskarte mit Kunden- und Objektadresse, Konditionen, Terminen, Mitarbeiterstamm, Vorgaben, Leistungen, Abrechnungen; Kostenarten H Honorar, D Dritte, S Spesen; Buchungsarten V Vorgabe, B Aufwand, A Abrechnung; Profitcenter, Auftragsklassen, Positionsstruktur 0.x (nicht auftragsbezogen), 1.x bis 8.x (SIA-102-Phasen), 9.x (Spesen) (5.83 Kap. 1.1).

## 03 Module im Detail

### 03.1 Stammdaten (stammdaten.html; 5.11; 5.15)

Zweck: eine gemeinsame Adress- und Projektbasis für Bau- und Büroadministration; «Gemeinsam mit der Bauadministration werden in der Auftragsverwaltung die gleichen Stammdaten verwendet» (konzept.html).
Objekte: Adressliste, Liste der Vergabeeinheiten, Projektliste, BKP-Kostengliederung mit Textbausteinen, Unternehmerliste (Projektbeteiligte gegliedert nach Bauherrschaft, Behörden, Planungsteam, Unternehmer; Tabellenform und Blockform).
Workflow: Adressen zentral pflegen, Synchronisation mit Mac-Adressbuch/Outlook/Smartphone; Projektverwaltung als «Know-How-Sammlung», Kennwerte abgeschlossener Projekte für neue Projekte.
Kontrolle: laufende Nachführung der Unternehmerliste, eine Datenquelle statt paralleler Listen (5.15 Kap. 1.1).
Norm: SN 010130 (Post), BKP, NPK-Texte, BFS-Bauteilkatalog.

### 03.2 Notizen, Pendenzen und Protokolle (notizen-pendenzen-protokolle.html; 3.91)

Zweck: Entscheide und Informationen «zum Zeitpunkt des Auftretens oft noch nicht relevant» strukturiert festhalten, damit sie später greifbar sind.
Objekte: Aktennotiz (Projektinformation) mit Zuordnungen Phase, Bauteil/Lage, Vergabeeinheit, Konto/BKP; Anhänge (E-Mails, PDF, Links, Bilder); Pendenz mit Zuständigkeit, Priorität, Termin, Status, Erledigungsbemerkung; Sitzung mit Protokollkopf (Titel, Thema, Zeit, Ort, Teilnehmer) und Traktanden (Aktennotiz oder reiner Text); Protokoll mit Kommentaren und Pendenzen je Traktandum; Protokollvorlage.
Workflow: Notiz erfassen, filtern nach Zuordnung, Pendenz zuweisen, Mitarbeiter erledigt mit Bemerkung und Status «erledigt», Verfasser erhält Meldung; Traktanden aus Notizen, Einladung als PDF, Protokoll als PDF, Gruppen- oder Einzelversand per E-Mail.
Kontrolle: Projektleitung sieht offene und erledigte Aufgaben; zentrale Speicherung verteilt Änderungen an alle.
Beispiel im Handbuch: Bauherrenwunsch Küchenabdeckung Andeerer Granit an der ersten Sitzung, abgelegt unter BKP 258 Kücheneinrichtungen, später vom Küchenplaner gefunden (3.91).

### 03.3 Terminplanung (terminplanung.html)

Zweck: generelle Termine und Ablaufkonzept für Projektierung, Realisierung und Abschluss.
Objekte: Ablaufplan (Balkendiagramm im Monatsmassstab, verknüpfte Vorgänge), Wochenplan/Monatsplan für die Ausführung; Vorlage mit dem ganzen Bauprozess.
Prinzip: die fünf Partner Bauherr, Benutzer, Behörden, Planer und Baustelle (alle Unternehmer) werden «einzeln aufgeführt».
Nicht belegt: Felder je Vorgang, Abhängigkeitstypen, Kapazitäten, Verknüpfung zu Kosten oder Zahlungsplan.

### 03.4 Kostenplanung (kostenplanung.html; 5.34; 3.47; 3.48; 5.61)

Zweck: «Design to Cost» von der ersten Entwurfsphase an; «Zum Zeitpunkt der Ausschreibung können nur noch Einsparungen von ca. 2% realisiert werden. Die kostenrelevanten Entscheide müssen deshalb früh gefällt werden.» Grösster Einfluss in Phase 3 Projektierung (3.48).
Vier Werkzeuge:
Grobkosten (Phase 1 bis 2): Nutzungsarten mit Teilflächen nach SIA 416, rund 100 kostenrelevante Kriterien (Stufen einfach, mittel, hoch, extra), konstante Kennwerte statt Datenbank; sieben Kostengruppen mit eigenen Bezugsmengen (Grundstück, Erdbau/Tiefengründung, Unterstützung, Gebäude «in die Luft gestellt», nutzungsspezifische Einrichtung, Umgebung, Nebenkosten ohne MwSt); Bezugsmengen GSF, GGF, UF usw.; Folgekosten nach SIA D0165 (Verzinsung, Verwaltung, Betrieb, Instandsetzung, Abschreibung, Rückstellung bis Nettomietkosten).
Bauerneuerung (Umbau): Begehung mit Datenblättern (IPBau-Modell, 50 Elemente, Zustandscodes a bis d), Zustandsbericht, Massnahmenplanung mit Varianten, geometrische Koeffizienten, Schwierigkeitsgrad, Baukostenindex; Eingriffe lösen Folgemassnahmen aus (schlechte Fassade schlägt automatisch Gerüst und Bauplatzinstallation vor); Zuordnung zu BKP und VE; Übernahme in BKS.
BauKostenSystem Plus (Phase 3): Bauteile statt reiner Elementmethode; Detaillierung nach Betrag und Unsicherheit («Klumpenrisiko» vermindern); jedes Bauteil mit Schlüssel zu BKP, eBKP-H, VE, FG; KV nach BKP entsteht automatisch parallel, optional nach eBKP-H; Bauteilbeschriebe je VE als Rohdevis in die Ausschreibung.
Kostenvoranschlag: bekannte Beträge zusammentragen (nicht entwickeln), Checklisten und Suchbegriffe aus «BKP Information für Anwender», KV zugleich als Baubeschrieb; Konti vertikal, Gliederungen horizontal; Genauigkeit ausweisen; MwSt inklusive mit ausgewiesener MwSt-Spalte, Satz je Position einstellbar (0 % bei Grundstück); Ausscheiden über BKP 57 möglich, «kann nicht empfohlen werden».
Kontrollen: Ratifizierung fixiert den KV, danach nur noch Mutationen; Regeln für FG (Summe der Teilbeträge bleibt Totalbetrag, Differenzen auf allen FG ausgeglichen) und für OGL (zusammenhängende Flächen, eine Bauwerksart, getrennte Unternehmerrechnungen, Berechnung mit BKS; Tiefgarage plus Wohnhaus ist keine OGL, weil die Rechnungen nicht getrennt sind).
Kennzahlen/Auswertungen: Investition, Finanzierung, Betriebskosten, Varianten, Rohdevis, Budget; Finanzierung mit Eigen-/Fremdmittelanteilen, Bruttomietkosten, Nettomietkosten, Mieterspiegel.
Normen: BKP 2001/2020 (SN 506 500), eBKP-H, EKG, SIA 416, SIA 102 Art. 4.32 (KV mit Ausmass und geschätzten Preisen, Genauigkeit mangels Vereinbarung +/- 10 %, Unvorhergesehenes separat), SIA D0165, SIA 480, SIA 450, SIA D0163, IPBau, BFS, Zürcher Index der Wohnbaupreise, Schweizerischer Baupreisindex.

### 03.5 Ausschreibung, Offertvergleich, Werkvertrag (ausschreibung.html; 5.51; 5.57)

Zweck: «Mit einer präzisen Ausschreibung müssen bei minimalem Aufwand vergleichbare Angebote eingeholt werden. Die darin dokumentierte Aufgabe muss mit Hilfe von Quantität (Menge), Qualität (Beschrieb) und Grafik (Pläne) eine abschliessende und allgemein verständliche Grundlage für die Werkverträge (Preis) bilden.»
Aufbau in drei Schritten: 1. Bürovorlage (Layout, Deckblatt, Allgemeine Vertragsbedingungen AVB inkl. Eignungs-/Zuschlagskriterien und Abweichungen zur SIA 118, Konditionenmodell, allgemeine Abzüge; mehrere Bürovorlagen für private und öffentliche Bauherren), 2. Projektvorlage (Objektspezifische Bestimmungen OSB: Bauwerk, Gliederungen, Baugrund, örtliche Gegebenheiten, Verfahrensart, Bauablauf, Planungsteam; alternativ NPK 102 Besondere Bestimmungen), 3. Ausschreibungsdatei je Arbeitsgattung/VE (Unternehmerspezifische Bestimmungen USB: Verfahrensart, Fristen, Unterlagen, Konditionenmodell, Abzüge, Normen und Regelwerke; Unternehmerangaben UN: Adresse, Sachbearbeiter, Versicherung, Referenzen, Selbstdeklaration; LV als NPK oder Eigentext; Auswertung mit Zwischentotalen und Konditionenmodell).
Tabellenblätter: Grundlage, Submittent, Offertbrief, Deckblatt, AVB, OSB, Planung, USB, UN, Auswertung, LV je Kapitel; im VG zusätzlich Vergabe, Abgebot, Bestätigung, Absage; im WV Vertragsbrief und Deckblatt WV.
Datenaustausch: SIA 451 (IfA18) tauscht nur Kapitelnummer, Sprache, Ausgabe-/Versionsjahr, Positionsnummern (keine Texte), Konditionenmodell, R-Positionen, Variablen, Bilder, Mengen, PRD und Preise; Bedingungen, Hinweise, Zuschlagskriterien, Ergänzungen zur SIA 118, Adresslisten und Pläne müssen weiterhin als Papier/PDF mitgehen. Alternativ Excel-Export der ganzen Ausschreibung mit Schutz, der Struktur und Inhalt fixiert. Angebote lassen sich nur importieren, «wenn nach dem Export keine Veränderungen im Dokument der Ausschreibung vorgenommen wurden».
Offertvergleich: Preise je Unternehmer in Spalten, Vergleich zu KV-Preisen, Favorit bestimmen, Filter für Einheitspreis-Abweichungen (Prozent oder absolut), Abgebotsrunde mit Rangierung und neutraler Übersichtstabelle, Auftragsbestätigung für den Favoriten, Absagebriefe wahlweise mit Firma und Betrag der Vergabe.
Kontrollen: Vor Export/Druck «muss die Vollständigkeit der Auswertung und Leistungsverzeichnisse überprüft werden»; Exportdatei, welche die Minimalanforderungen nicht erfüllt, wird nicht exportiert; CRB-Prüfprogramm erstellt Testprotokoll; Normpositionstexte dürfen nicht verändert werden; Probelauf mit dem Unternehmer empfohlen; nur aktuelle NPK-Versionen.
Vergütungsart: Akkord (Ausmass) und Regie (Aufwand) sind im NPK nur im Text sichtbar; sollen sie unterschieden werden, «muss für Arbeiten nach Ausmass und für jene nach Aufwand je ein separates Leistungsverzeichnis erstellt werden».
Normen: SIA 451/IfA18, SIA 450, SIA 118, SIA 1023 Werkvertrag, NPK Bau, ABB, NPK 102, CRB-Merkblätter zum Devisieren (01.05 Datenidentität, 02.05 Grundsätze der Devisierung, 03.05 Kostengrundlagen, 04.05 Ausmassbereiche, 06.05 geschlossene Positionen usw.), MwSt-Branchenbroschüre Baugewerbe 610.540-04.

### 03.6 Unternehmerkontrolle (5.66; kostenkontrolle.html)

Zweck: «Erstellen eines Werkvertrages mit Grundlagen aus der Ausschreibung und dem Offertvergleich. Kostenkontrolle im Vertrag mit Erfassen von Nachträgen und Ausmass als Basis für die Abrechnung. Erstellen der Schlussrechnung mit Garantieschein, Anforderung und Beurteilung des Unternehmers und der Bauleitung.»
Objekte: Werkvertrag (aus Werkvertragsdatei), LV mit Ausmass und Nachträgen, Nachtrag/Abzug brutto oder netto (ERBR, ERNE, ABBR, ABNE), Auswertung Vertrag/Abrechnung, Schlussrechnung, Garantieschein, Beurteilung Unternehmer, Beurteilung Bauleitung.
Workflow: Werkvertrag versenden (Begleitbrief mit Eingabetermin und Arbeitsgattung an Bauherr und Unternehmer), Nachträge und Abzüge protokollieren, Ausmasse erfassen, Vergleich Vertrag/Abrechnung «in Prozent» je Kapitel, Abschnitt und Total, Restbetrag berechnen, Schlussrechnung mit Begleitbrief für den Garantieschein, Gegenzeichnung durch den Unternehmer.
Kontrollen: Ohne LV nur Vergleich auf Kapitelebene; Summen der Ergänzungen und Abzüge separat ausgewiesen; Garantieschein «nach SIA 118»; je Unternehmer eine eigene Unternehmerbuchhaltung.
Nicht belegt: Prozentsätze für Rückbehalt/Garantie, Skonto-Logik, Zahlungsfristen (Beispielseiten sind Bilder).

### 03.7 Budgetkontrolle und Baubuchhaltung (kostenkontrolle.html; 5.61)

Zweck: Zahlungen und Verpflichtungen gegen den ratifizierten KV überwachen und jederzeit eine Kostenerwartung liefern.
Grundprinzip: Trennung der Sichten «Bauherr - Architekt» (Budgetkontrolle nach BKP) und «Bauleitung - Unternehmer» (Ausführungskontrolle nach NPK). «Die Ausführungskontrolle des Unternehmers (NPK) ist konsequent von der Budgetkontrolle des Kostenvoranschlages (BKP) getrennt.»
Belege: Vergabeantrag (mit Anhang je Konto), Änderungsprotokoll/Mehrkostenprotokoll (mit Anhang je VE und Konto), Zahlungsantrag (je VE, mit Anhang je Konto), Zahlungsauftrag (Sammelauftrag an die Bank), Kontoauszug je VE, Kostenrapport (BKP 1-, 2-, 3-stellig mit Konti), Preisstandanpassung.
Vergabeantrag: «Vergabeanträge mit vergleichbarer KV-Summe als Grundlage (KV abzüglich Rückstellungen für Regie, Teuerung oder Ausmassreserve) ermöglichen die verlässliche Beurteilung des Werkvertrages im vorliegenden Budget.» Im Beispiel: Werkvertrag 99'450 plus Diverse (Regie, Ausmassreserve, Rundung, Teuerung) 1'550 = vergleichbare KV-Summe 101'000; Unterschrift Architekt und Bauherr; Beilage Offertvergleich.
Kontoauszug je VE: Total vergleichbare KV-Summe; anfängliche Vergabe oder Hauptvertrag; nachträgliche Vergabe oder Nachtrag; Total Vergabe (in Prozent des KV); berücksichtigte Leistungen; Rückbehalt (Beispiel 10 %); Total Guthaben; Total gebuchte Zahlungen; Bemerkungen; je Konto die Spalten Vertrag, Diverse, Total.
Kostenrapport-Spalten: Total KV Original, Mutationen, Total KV mutiert, Vergabe, Zahlungen, Abgrenzung, Kostenerwartung, Prozent; Markierungen «ok», «!», «!!!» je Konto.
Preisstandanpassung: Kostenstand KV mit Index und Punkten, nicht teuerungsberechtigte Kosten abziehen (Grundstück), Kostenstand Abrechnung, Anrechnung von 50 % der Index-Teuerung, Minder-/Mehrkosten in Prozent.
Zahlungsantrag: Zahlungskonto (z.B. BK Baukredit Fremdkapital), Empfänger mit Bankverbindung, Teilbeträge je Konto, Beleg-Nr., Akontorechnung-Nr. und Datum «(vor Skonto)», Hinweis «Details betreffend Konditionen, Abzüge und Mehrwertsteuer gemäss beiliegender Rechnung», Total gebuchte Zahlungen der VE inkl. aktueller Zahlung; Anhang mit Zahlungen bisher, Zahlung aktuell, vergleichbare KV-Summe, Kostenunterschreitung in Prozent.
Kontrollen: Nach Ratifizierung «ist die Kostenzusammenstellung fixiert. Abweichungen führen anschliessend zu Mutationen»; Abrechnung nur mit dreistelligen BKP-Gruppen («Wer will schon die Abschlags- und Schlusszahlungen des Baumeisters auf die Konti 211.0 bis 211.7 aufschlüsseln?»); Vergabeantrag und Zahlungsantrag tragen Unterschrift Architekt und Bauherr; Solidarbürgschaft wird automatisch berechnet; Baubuchhaltung enthält «einfache Aufwandbuchungen» und ist «nicht geeignet für Bilanzen oder Erfolgsrechnungen».
Haftungsregeln (aus Gerichtsentscheiden, 5.61 Kap. 1.1): «Vor Baubeginn muss zwingend ein Kostenvoranschlag erfasst werden»; «Jede Kostenprognose muss mit Angaben zur Genauigkeit (Toleranzrahmen) ergänzt werden, sonst gilt Nulltoleranz»; «Die Kostenprognosen sind einzuhalten.»
Normen: BKP SN 506 500, SIA 102 (2003) Art. 4.32, SIA V1018 Kostengarantie, SIA 416, SIA 450, SIA 480, SIA D083, SIA D165, SIA D510, KUB/SVIT Bauherrenberater, MwSt-Wegleitung 610.525.

### 03.8 Unternehmerdossier: Abnahme, Schlussrechnung, Garantie (kostenkontrolle.html)

Formulare, einfügbar in Ausschreibung, Vergabe oder Werkvertrag, automatisch mit Projektdaten und Unternehmeradresse gefüllt:
Lieferschein (Liste der Materiallieferungen mit Übermittlungstexten);
Aufgebot zur Bauabnahme «vor Ingebrauchnahme» oder «Weiterbau des Werkes», mit Terminen, Ort und Präsenzliste;
Abnahmebericht als Protokoll-Tabelle, vor Ort ausgefüllt und unterzeichnet;
Schlussrechnung als Formular für den Restbetrag, berechnet die Solidarbürgschaft, listet offene Pendenzen, vom Unternehmer «per Saldo aller Ansprüche» gegengezeichnet;
Mängelrüge nach SIA, je Unternehmer, als PDF an den Bauherrn;
Beurteilung Unternehmer (Qualitätsmanagement der Bauleitung) und Gegenstück Beurteilung Bauleitung (vom Unternehmer ausgefüllt).
Zudem: «Erstellen der Liste der Garantieverfalldaten» und «Einholen und Kontrollieren der Bank- oder gleichwertigen Garantien» (Kurzinfo 1.10).

### 03.9 Honorar (honorar.html; 5.81)

Zweck: Honorarofferten, Leistungsbeschriebe, Vertragsgrundlagen, Leistungsnachweis nach SIA 102 (2014), SIA 105 (2014) oder eigenen Festlegungen; Werte als Vorgabe in die Auftragsverwaltung und in den KV (BKP 29x) übernehmen.
Vorlagen: HonorarSIA102, HonorarSIA105, HonorarStd (nach Aufwand), HonorarHinweise (AGB, Vertragsbedingungen nach SIA 102/105 und KBOB-Leitfaden), Deckblatt Offerte, Deckblatt HV (Honorarvertrag).
Tabellenblätter: Grundlage (Währung, MwSt-Satz, Stundenansätze, Rundungsfaktor, Schwierigkeitsgrad, Anpassungsfaktor, Koeffizienten Z1 und Z2, Teamfaktor, Sonderleistungen, Umbaufaktor, Baukategorie, Kostenindex), Deckblatt, Hinweise (Ziel, Zweck, Vertragsbestandteile, Pflichten, Rechte, Vergütungsregeln, Versicherungen), Offerte (Zusammenfassung getrennt nach Grund- und Zusatzleistungen, Stundenansätze der Mitarbeiter, Nebenkosten Spesen und Auslagen), Leistung (Textbausteine in 6 Phasen, Kalkulation über Prozentanteile oder Stundenaufwand, als Checkliste für die Arbeitsaufteilung nutzbar), Nachweis (Teilleistungen 0 bis 100 % bewerten, erledigte Leistung abzüglich Akonto = Guthaben; Liste Akontozahlungen als Rechnungsbeilage und Soll/Ist-Grundlage), Notizen.
Methodenregel: Grundleistungen «nach den Baukosten» nur für Phasen 3 bis 5; Zusatzleistungen «nach dem Aufwand» für Phasen 1 bis 6; bei Studien, Spezialaufgaben und Kleinprojekten unter 500'000 Franken kann die SIA-Formel nicht verwendet werden, Honorar nach Aufwand. Kartellrechtlicher Hintergrund (seit 2003 Baukosten-Zeitaufwand-Methode; 2020 neue Ordnung; 2014 bleibt bei gegenseitigem Einverständnis nutzbar) wird genannt.
Begriffe: aufwandbestimmende Baukosten («in der Regel die wirklichen Kosten des ausgeführten Bauwerks gemäss Bauabrechnung, nach Abzug der vertraglich vereinbarten Rabatte», ohne Honorare, MwSt, Grunderwerb, Finanzierung, Gebühren, Versicherungen, Wettbewerbskosten usw.), Baukategorie I bis VII, Freiraumkategorie I bis IV (SIA 105), Qualifikationskategorien A bis G mit Stufen 1 bis 3 (Funktion im Auftrag, nicht Stellung in der Firma), Anpassungsfaktor (auch für Rabatte), Umbaufaktor.
Normen: SIA 102 (2014), SIA 105 (2014), SIA 112 Leistungsmodell, SIA 1012/1 bis 4 Planerverträge, SIA D0218 Gemeinkosten und Arbeitsstunden, SIA D0233 Lohnerhebung, SIA Kennzahlenerhebung 2012, KBOB-Leitfaden Beschaffung Planerleistungen 2010.

### 03.10 Auftragsverwaltung, Journal, Kostenrechnung (auftragsverwaltung.html; 5.83; 5.82; 3.19)

Zweck: Vor- und Nachkalkulation, Rechnung, Inkasso, Chefzahlen; «Alle führen ihre Stundenlisten - nur wenige werten die Sammlung aus.»
Objekte: Auftragskarte, Buchungsliste (Datenbank), persönliche Journale, Monatsabrechnung, Arbeitszeitstatistik (Soll/Ist, Ferien, Über-/Unterzeit), Verrechnungsplan/Zahlungsplan, Rapporte (visierte Buchungen), Rechnungen (Honorar, Spesen, Pauschal, Stunden; QR-Rechnung; Versand als PDF per E-Mail), Debitorenliste, Fälligkeitsliste, Kontoauszüge, Mahnungen, MwSt-Liste.
Kostenarten H Honorar (Stunden mal Selbstkostenansatz), D Dritte (weiterverrechenbar), S Spesen; Buchungsarten V Vorgabe (Offerte/Vertrag, um Nachträge zu erhöhen), B Aufwand, A Abrechnung.
Auswertungen: Guthaben, angefangene Arbeiten, Restleistung, Auslastung, Nachkalkulation, Ertrag; Umsatzvorschau 12 Monate; Chefzahlen (Gemeinkostenfaktor gegen Honorarkalkulation, Produktivität, Rentabilität).
Betriebskostenrechnung: summarische Zuschlagskalkulation auf AHV-Lohnsumme mit Zuschlägen für Personalaufwand, Gemeinkosten, Risiko und Gewinn, dividiert durch Präsenzzeit; Struktur nach SIA 1041 (2003) Kontenplan; Benchmarks SIA-Kennzahlen 2012.
Ziele (5.83): konkurrenzfähige Honorarofferten, leistungsorientierte Honorargestaltung, wirtschaftliche Steuerung, Grundlagen für Spezialitäten, Planung der Zukunft.
Rechtsbezug: Arbeitszeitdokumentation nach ArG 46 und ArGV1 73, fünf Jahre Aufbewahrung; Fall Zürcher Westumfahrung (Originalstundenrapporte mit Visum jederzeit vorlegbar).

## 04 Prinzipien der Bauadministration (destilliert, mit Quelle)

### Phase Honorar und Vertrag Planer

04.1 Der Prozess folgt den SIA-Phasen. Jede Phase hat ein definiertes Erzeugnis (Grobkosten, Kostenschätzung, KV, LV, Werkvertrag, Schlussrechnung), und die Daten einer Phase sind der Input der nächsten. Quelle: https://www.bbase.ch/assets/pdf/1.10_BR_BBaseKurzinfo.pdf; https://www.bbase.ch/konzept.html

04.2 Honorar nach Baukosten nur für Phasen 3 bis 5, alles andere nach Aufwand. Grundleistungen «nach den Baukosten» gelten für Phasen 3 bis 5; Zusatzleistungen und die Phasen 1, 2 und 6 werden nach Zeitaufwand mit büroeigenen Stundenansätzen kalkuliert; unter 500'000 Franken Bausumme ist die SIA-Formel nicht anwendbar. Quelle: https://www.bbase.ch/assets/pdf/bueroadministration/5.81_BR_Honorar.pdf

04.3 Die Honorarofferte ist zugleich Vertragsbeilage, Leistungsbeschrieb und Nachkalkulationsvorgabe. Die Offerte wird als Vorgabe in die Auftragsverwaltung importiert und ins KV-Konto 29x übernommen; der Leistungsnachweis (Teilleistungen 0 bis 100 %) abzüglich Akonto ergibt das Guthaben und ist Rechnungsbeilage. Quelle: https://www.bbase.ch/honorar.html; 5.81

04.4 Aufwandbestimmende Baukosten sind die abgerechneten Baukosten nach Abzug der Rabatte, ohne Honorare, MwSt, Landerwerb, Finanzierung, Gebühren und Versicherungen. Quelle: 5.81, Begriffe

04.5 Faktoren sind explizit und einzeln ausgewiesen: Baukategorie, Schwierigkeitsgrad, Anpassungsfaktor (auch als Rabattträger), Z1/Z2, Teamfaktor, Umbaufaktor, Sonderleistungen, Qualifikationskategorie nach Funktion im Auftrag. Quelle: 5.81

04.6 Stundenansätze kommen aus der eigenen Betriebskostenrechnung (Zuschlagskalkulation auf AHV-Lohnsumme, SIA 1041, SIA-Kennzahlen als Benchmark), nicht aus Annahmen. Quelle: https://www.bbase.ch/auftragsverwaltung.html; 3.19

### Phase Kostenplanung und Kostenvoranschlag

04.7 Kosten früh beeinflussen: Bei der Ausschreibung sind nur noch rund 2 % Einsparung möglich; der grösste Hebel liegt in Phase 3. Quelle: https://www.bbase.ch/kostenplanung.html; 3.48

04.8 Jede Kostenaussage hat drei Teile: Menge (Quantität), Beschrieb (Qualität) und Plan/Skizze (Grafik). «Fehlt ein Teil der Information ist das Ergebnis nichts wert.» Quelle: 5.61 Kap. 1.1; 5.34 Kap. 1.1

04.9 Jede Kostenprognose trägt Genauigkeit, Preisstand (Index mit Datum und Punkten), MwSt-Behandlung und den Betrag für Unvorhergesehenes. Ohne Toleranzrahmen «gilt Nulltoleranz». Quelle: 5.61 Kap. 1.1 und Beispiel «Infos, Kostengliederung KV»

04.10 Der KV ist Kontenplan und Budget zugleich; nach Ratifizierung durch den Bauherrn ist er fixiert, jede Abweichung wird als Mutation gebucht, nie durch Überschreiben. Quelle: 5.61 Kap. 1.1 «Regeln schaffen Klarheit»

04.11 Konti vertikal, Gliederungen horizontal. Bis zu 99 Konti pro BKP-Untergruppe mit sprechender Bezeichnung; FG teilt (Käufer, werterhaltend/wertvermehrend, Subvention, Etappen), OGL zählt zusammen (nur für echte Teilobjekte mit getrennten Rechnungen), ZK zeigt den Kapitalfluss. Quelle: https://www.bbase.ch/kostenplanung.html; 5.61 Kap. 1.2 und 1.3

04.12 Abrechnen auf BKP dreistellig, Checkliste auf vierstellig. Die Gattungen dienen dem lückenlosen Sammeln, die Kostenüberwachung läuft auf Untergruppen-Ebene. Quelle: 5.61 Kap. 1.2

04.13 BKP für die Kommunikation, eBKP-H für Kennwerte: Kosten im BKP erfassen, eBKP-H-Auswertung automatisch ableiten; ein KV nur nach eBKP-H taugt nicht für die Kostenkontrolle mit Unternehmern. Quelle: https://www.bbase.ch/tipps-kostenplanung-ebkph.html

04.14 Kennwerte brauchen scharf definierte Kostengruppen und Bezugsmengen nach SIA 416; Kubikmeterpreise nach SIA 116 und Gebäudevolumenpreise nach SIA 416 sind keine vergleichbaren Kennwerte (Streuung 20 bis 50 %). Quelle: 5.34 Kap. 1.1 und 1.2

04.15 Investition und Folgekosten zusammen ausweisen (Design to Cost): Finanzierung, Verzinsung, Verwaltung, Betrieb, Instandsetzung, Abschreibung, Rückstellung bis zu Nettomietkosten und Mieterspiegel, nach SIA D0165. Quelle: https://www.bbase.ch/kostenplanung.html; 5.61 Beispiel Finanzierung

04.16 Bauen im Bestand beginnt mit der Zustandserfassung (Elemente, Abnutzungsgrad a bis d), gefolgt von Massnahmenplan mit Varianten; Eingriffe lösen Folgemassnahmen aus (Fassade zieht Gerüst und Installation nach). Quelle: https://www.bbase.ch/assets/pdf/bauadministration/3.47_Bauen_im_Bestand.pdf

### Phase Ausschreibung und Vergabe

04.17 Die Vergabeeinheit ist die Einheit der Ausführung, unabhängig vom BKP. Sie bündelt Konti aus verschiedenen BKP-Untergruppen zu einem Vertrag («WER welche Leistungen ausführt»); Adressen, Submittentenliste, LV, Offertvergleich, Werkvertrag, Vergabeantrag, Kontoauszug und Zahlungsantrag laufen alle über die VE. Quelle: https://www.bbase.ch/tipps-kostenplanung-vergabeeinheiten.html; 5.61 Kap. 1.2; 5.51 Begriffe

04.18 Drei Bestimmungsebenen in jeder Ausschreibung: AVB (Büro, inkl. Eignungs-/Zuschlagskriterien und Abweichungen zur SIA 118), OSB (Objekt) und USB (Arbeitsgattung: Verfahren, Fristen, Unterlagen, Konditionenmodell, Abzüge, Normen). Dazu UN mit Selbstdeklaration des Unternehmers. Quelle: https://www.bbase.ch/assets/pdf/bauadministration/5.51_BR_Ausschreibung.pdf Kap. 1.5

04.19 Die Submittentenliste wird mit dem Bauherrn besprochen und vor der Ausschreibung bereinigt; sie ist Grundlage des Offertvergleichs, nicht eine Nacherfassung. Quelle: https://www.bbase.ch/assets/pdf/bauadministration/5.57_BR_Submittentenliste.pdf

04.20 Mengenarten sind zu deklarieren (A/B/D/E, Primär- und Eventualvarianten J/K/M und Q/R/U); jede Mengenzeile hat eine nachvollziehbare Ausmasstabelle (Faktor, Länge, Breite, Höhe, Rundung); Ausmass- und Regiepositionen gehören in getrennte LV. Quelle: 5.51 Begriffe und Kap. 1.5

04.21 Ausschreibung vor Versand auf Vollständigkeit prüfen; die exportierte Ausschreibung ist eingefroren, sonst ist der Import der Angebote nicht möglich; Normtexte werden nie verändert; Angebote werden beim Einlesen auf Vollständigkeit kontrolliert. Quelle: 5.51 Kap. 1.3 und 1.5

04.22 Offertvergleich gegen den KV und gegen den Favoriten, positionsweise mit Abweichungsfilter (Prozent oder absolut); danach Abgebotsrunde mit Rangierung und neutraler Übersicht, Auftragsbestätigung und Absagen aus demselben Dokument. Quelle: 5.51 Kap. 1.5 Phase 2

04.23 Der Vergabeantrag vergleicht die Vergabesumme mit der «vergleichbaren KV-Summe» (KV abzüglich Rückstellungen für Regie, Teuerung, Ausmassreserve) und wird von Architekt und Bauherr unterschrieben, Beilage Offertvergleich. Quelle: https://www.bbase.ch/kostenkontrolle.html; 5.61 Beispiel Vergabeantrag

### Phase Werkvertrag

04.24 Der Werkvertrag ist eine Kopie des Offertvergleichs mit Favoritenpreisen; Original bleibt unverändert. Deckblatt mit Nettosumme und Unterschriften, Unternehmerblatt, Hinweise, Struktur, Konditionenmodell, Vertragsbrief an Bauherr und Unternehmer. Quelle: 5.51 Phase 3; https://www.bbase.ch/assets/pdf/bauadministration/5.66_BR_Unternehmerkontrolle.pdf Kap. 1.2

04.25 Quereinstieg ist erlaubt: Werkverträge ohne LV (auf Stufe Zwischentotale) und Schlussabrechnungen ohne Werkvertrag sind möglich; der Vergleich erfolgt dann auf Kapitelebene. Quelle: https://www.bbase.ch/konzept.html; 5.66 Kap. 1.2

04.26 Normbezug im Werkvertrag: SIA 118, SIA 1023 Werkvertrag, Abweichungen zur SIA 118 in den AVB explizit benennen; MwSt nach Branchenbroschüre Baugewerbe. Quelle: 5.66 Anhang 3.1; 5.51 Kap. 1.6 AVB

### Phase Ausführungskontrolle (Ausmass, Regie, Nachträge, Akonto)

04.27 Zwei getrennte Buchhaltungen: Unternehmerbuchhaltung je Leistungsträger (nach NPK, Vertrag/Nachtrag/Ausmass/Abrechnung) und Baubuchhaltung des Bauherrn (nach BKP, KV/Mutation/Vergabe/Zahlung). Beide sind über die VE verbunden, aber nie vermischt. Quelle: https://www.bbase.ch/kostenkontrolle.html

04.28 Nachträge und Abzüge sind typisiert (Ergänzung/Abzug, brutto/netto), werden protokolliert, verändern die Vertragssumme und werden mit eigenem LV eingeholt. Jede Mutation ist zugleich Mehr-/Minderkosten im KV (Änderungsprotokoll mit Unterschrift Architekt und Bauherr) und Nachtrag beim Unternehmer. Quelle: 5.66 Begriffe; 5.51 Begriff Nachtragsangebot; 5.61 Beispiel Änderungsprotokoll

04.29 Regie, Teuerung und Ausmassreserve werden als «Diverse» neben dem Vertrag geführt, im KV zurückgestellt und je Konto getrennt ausgewiesen (Spalten Vertrag, Diverse, Total). Quelle: 5.61 Beispiel Kontoauszug und Vergabeantrag

04.30 Akontozahlung ist ein formaler Beleg: Zahlungsantrag je VE mit Zahlungskonto, Empfängerbank, Beleg-Nr., Rechnungs-Nr. und Datum, Betrag «vor Skonto», Teilbeträge je Konto; Konditionen, Abzüge und MwSt gemäss beiliegender Rechnung; Sammel-Zahlungsauftrag an die Bank mit Fälligkeit; Unterschrift Architekt und Bauherr. Quelle: 5.61 Beispiel Zahlungsantrag und Zahlungsauftrag

04.31 Der Kontoauszug je VE zeigt die Kette Vergabe (Hauptvertrag plus Nachträge) minus berücksichtigte Leistungen, Rückbehalt (Beispiel 10 %), Guthaben, gebuchte Zahlungen. Quelle: 5.61 Beispiel «Vergabeeinheit mit Buchungen»

### Phase Kostenkontrolle und Bauabrechnung

04.32 Der Kostenrapport führt je Konto die Spalten KV Original, Mutationen, KV mutiert, Vergabe, Zahlungen, Abgrenzung, Kostenerwartung und Prozent, summiert auf BKP 3-, 2- und 1-stellig, mit Ampelmarkierung (ok, !, !!!). Quelle: 5.61 Beispiel Kostenrapport

04.33 Preisstandanpassung ist Teil der Abrechnung: Kostenstand KV und Abrechnung mit Indexpunkten, nicht teuerungsberechtigte Kosten (Grundstück) ausscheiden, Anrechnung eines vereinbarten Anteils der Index-Teuerung (Beispiel 50 %), Ergebnis als Minder-/Mehrkosten in Prozent. Quelle: 5.61 Beispiel Preisstandanpassung

04.34 MwSt im KV inklusive führen, aber je Position sichtbar ausweisen (Satz je Position, 0 % Grundstück); Ausscheiden über BKP 57 ist möglich, wird aber nicht empfohlen; Vorsteuerfragen gehören in die Finanzbuchhaltung. Quelle: 5.61 Kap. 1.4

04.35 Die Bauabrechnung ist der direkte Vergleich zu Budget und KV, gegliedert nach BKP und VE, und liefert die Kennwerte des Bauwerks zurück in die Projektverwaltung. Quelle: Kurzinfo 1.10; https://www.bbase.ch/kostenkontrolle.html

### Phase Abschluss und Garantie

04.36 Abnahme ist ein Formularprozess: Aufgebot (vor Ingebrauchnahme oder bei Weiterbau, mit Termin, Ort, Präsenzliste), Abnahmebericht als Tabelle vor Ort unterzeichnet, Mängelrüge nach SIA je Unternehmer als PDF an den Bauherrn, Mängel mit Massnahmen und Fristen. Quelle: https://www.bbase.ch/kostenkontrolle.html; Kurzinfo 1.10

04.37 Die Schlussrechnung ist das Resultat aller Einträge (Werkvertrag, Nachträge, Ausmasse, Zahlungen), berechnet Restbetrag und Solidarbürgschaft/Garantieschein nach SIA 118, listet offene Pendenzen und wird vom Unternehmer «per Saldo aller Ansprüche» gegengezeichnet. Quelle: https://www.bbase.ch/kostenkontrolle.html; 5.66 Kap. 1.2

04.38 Garantien werden aktiv verwaltet: Bank- oder gleichwertige Garantien einholen und kontrollieren, Liste der Garantieverfalldaten führen. Quelle: Kurzinfo 1.10

04.39 Abschluss mit Feedback in beide Richtungen: Beurteilung Unternehmer durch die Bauleitung und Beurteilung Bauleitung durch den Unternehmer. Quelle: https://www.bbase.ch/kostenkontrolle.html; 5.66 Kap. 1.2

### Querschnitt: Dokumentation und Organisation

04.40 Jede Projektinformation trägt Zuordnungen (Phase, Bauteil/Lage, VE, Konto/BKP); aus einer Notiz wird per Klick eine Pendenz mit Zuständigkeit, Priorität, Termin und Status; Traktanden und Protokolle entstehen aus denselben Notizen. Quelle: https://www.bbase.ch/notizen-pendenzen-protokolle.html; 3.91

04.41 Im Terminplan werden die fünf Partner Bauherr, Benutzer, Behörden, Planer und Baustelle je als eigene Zeile geführt. Quelle: https://www.bbase.ch/terminplanung.html

04.42 Stunden sind Belege: Arbeitszeit nach ArG lückenlos dokumentieren und fünf Jahre aufbewahren; visierte Originalrapporte müssen vorlegbar sein (Fall Zürcher Westumfahrung). Quelle: 5.83 Kap. 1.1

## 05 Datenfelder je Objekt (für den Vergleich mit den JANS-Skills)

05.1 Projekt: Projektnummer, Objektbezeichnung, Objektadresse, Bauherr mit Adresse und Sachbearbeiter, Projektleiter/Sachbearbeiter Architekt, Bauleiter, Projektart (Neubau/Umbau), Bauwerksart (BFS-Code, z.B. 11 Wohnen), Projektinfo, Raumprogramm, Konstruktion, Baubeginn, Rohbauvollendung, Bezug, Projektstand, Genauigkeit, Währung, Preisstand (Index, Datum, Punkte), MwSt-Satz und -Behandlung, allgemeiner Zuschlag, FG-Anteile, OGL, ZK. Quelle: 5.61 Beispiel Deckblatt und Hinweise KV; 5.51 Kap. 1.4.

05.2 Adresse/Unternehmer: Firma, Zusatz, Strasse, Postfach, PLZ, Ort, Telefon, Fax, Natel, E-Mail; Sachbearbeiter mit Telefon und E-Mail; Bank/Post, IBAN; Adressart; Vergabeeinheit; BKP; Projektnummer; Reservefelder. Quelle: 5.11; 5.61 Beispiel Kontoauszug.

05.3 Konto: Kontonummer (BKP plus Laufnummer), Bezeichnung, Beschriebsgruppen mit Teilbeträgen (Kennzeichen A eingerechnet oder Eventualposition), VE-Kürzel, Total KV, Prozentanteil, MwSt-Betrag, FG-Spalten. Quelle: 5.61 Beispiel Baubeschrieb KV.

05.4 Vergabeeinheit (Kontoauszug): Kürzel, Bezeichnung, Firma und Kontakt, Bank, vergleichbare KV-Summe, anfängliche Vergabe/Hauptvertrag, nachträgliche Vergabe/Nachtrag, Total Vergabe (in Prozent), berücksichtigte Leistungen, Rückbehalt (Prozent und Betrag), Total Guthaben, Total gebuchte Zahlungen, Bemerkungen; je Konto Vertrag, Diverse, Total. Quelle: 5.61 Beispiel.

05.5 Vergabeantrag: Nummer, Datum, VE, Unternehmer, betroffene Konti, Werkvertrag-Nr. und Datum, Vertragssumme, Diverse (Regie, Ausmassreserve, Rundung, Teuerung), vergleichbare KV-Summe, Mutationen, Total KV/Vergabe, Begründung, Unterschriften Architekt und Bauherr, Beilagen. Quelle: 5.61 Beispiel.

05.6 Änderungsprotokoll (Mutation): Nummer, Datum, Bezug auf Besprechung, Beschrieb der Mutation, Konti, Summe Nachtragsbuchungen (Vertrag), Summe Diverse, Summe Mehr-/Minderkosten, Summe Umbuchungen (Konto 581-01 Reserven), Total KV mutiert per Datum, Unterschriften. Quelle: 5.61 Beispiel.

05.7 Zahlungsantrag/Zahlungsauftrag: Nummer, Datum, VE, Zahlungskonto (Bezeichnung, Bank, Kontonummer), Empfänger mit Bank und Kontonummer, Teilbeträge je Konto, Beleg-Nr., Rechnungs-Nr., Rechnungsdatum, Betrag vor Skonto, Total gebuchte Zahlungen der VE, Fälligkeit, Saldo Zahlungskonto, Unterschriften, Beilagen (Kontoauszug, Rechnung, Einzahlungsschein). Quelle: 5.61 Beispiel.

05.8 Kostenrapport: je Konto/BKP Total KV Original, Mutationen, Total KV mutiert, Vergabe, Zahlungen, Abgrenzung, Kostenerwartung, Prozent, Unternehmer, Statusmarke. Quelle: 5.61 Beispiel.

05.9 Ausschreibung: Titel, Untertitel, Inhalt, Dokumentdatum, Korrespondenz- und Eingabedatum, Begleittext Export; Submittenten (Adressen je VE); Planungsteam; AVB; OSB; USB (Verfahrensart, Fristen, Unterlagen, Konditionenmodell, Abzüge, Normen); UN (Adresse, Sachbearbeiter, Versicherung, Referenzen, Selbstdeklaration); Auswertung (Kapitel, Abschnittstitel, Zwischentotale, Konditionenmodell); LV-Positionen mit Menge, Mengenart, Einheit, Einheitspreis, Betrag, Ausmasstabelle, Bild, Gliederungen. Quelle: 5.51 Kap. 1.5 und 1.6.

05.10 Offertvergleich: je Unternehmer Einheitspreise und Konditionen in Spalten; KV-Preise auf Position, Abschnitt oder Bruttototal; Favorit; Abweichung Prozent/absolut; Rangierung; Nettobetrag. Quelle: 5.51 Phase 2. Nicht belegt: die Einzelfelder des Konditionenmodells (Rabatt, Skonto, MwSt, Baureinigung, Teuerung, Bauherrenabzüge) sind auf den Beispielseiten nur als Bild vorhanden; das Handbuch nennt «Konditionenmodell», «allgemeine Abzüge», «Rabatte», «Skonto» und «Nettosumme» als Begriffe.

05.11 Werkvertrag: Nettosumme (Deckblatt), Inhaltsverzeichnis, Unterschriften Bauherr/Unternehmer, Unternehmerblatt, Hinweise, Struktur, Konditionenmodell, LV mit Favoritenpreisen, Vertragsbrief mit Eingabetermin und Arbeitsgattung. Quelle: 5.66 Kap. 1.2; 5.51. Nicht belegt: Garantierückbehalt-Prozent, Zahlungsplan/Akontoraten, Termine und Konventionalstrafen, Versicherungsnachweise als Felder.

05.12 Unternehmerkontrolle: je Position Vertragsmenge und Ausmass, Nachträge ERBR/ERNE, Abzüge ABBR/ABNE mit Protokoll, Auswertung je Kapitel/Abschnitt/Total mit Vergleich Vertrag/Abrechnung in Prozent, Summen Ergänzungen und Abzüge, Restbetrag, Zahlungen. Quelle: 5.66 Kap. 1.2.

05.13 Schlussrechnung: Restbetrag, Solidarbürgschaft/Garantieschein nach SIA 118, offene Pendenzen, Gegenzeichnung «per Saldo aller Ansprüche», Begleitbrief Garantieschein, Beurteilung Unternehmer, Beurteilung Bauleitung. Quelle: kostenkontrolle.html; 5.66.

05.14 Abnahme: Aufgebot (Art vor Ingebrauchnahme/Weiterbau, Termin, Ort, Präsenzliste), Abnahmebericht als Tabelle mit Unterschrift, Mängelrüge je Unternehmer, Massnahmen und Fristen, Garantieverfalldaten. Quelle: kostenkontrolle.html; Kurzinfo 1.10.

05.15 Honorarofferte: Objekt-, Bauherr-, Verfasseradresse, Datum, Inhalt, Baukategorie, aufwandbestimmende Baukosten, Kostenindex, Schwierigkeitsgrad, Anpassungsfaktor, Z1, Z2, Teamfaktor, Sonderleistungen, Umbaufaktor, Rundung, Währung, MwSt-Satz, Stundenansätze je Mitarbeiter/Qualifikationskategorie, Grundleistungen je Phase 3 bis 5 mit Prozentanteilen, Zusatzleistungen je Phase 1 bis 6 nach Aufwand, Nebenkosten (Spesen, Auslagen), Total; Nachweis mit Teilleistung in Prozent, erledigte Leistung, Akontozahlungen, Guthaben. Quelle: 5.81 Kap. 1.2.

05.16 Pendenz: Zuordnungen (Phase, Bauteil/Lage, VE, Konto/BKP), Beschreibung, Anhänge, Zuständigkeit, Priorität, Termin, Status, Erledigungsbemerkung, Verfasser. Protokoll: Titel, Thema, Zeit, Ort, Teilnehmer, Traktanden mit Unterpunkten, Kommentare, Pendenzen. Quelle: 3.91.

05.17 Auftrag (Büro): Auftragsnummer, Profitcenter, Auftragsklasse, Kunden- und Objektadresse, Konditionen, Termine, Mitarbeiter, Positionsstruktur (0.x, 1.x bis 8.x, 9.x), Kostenart H/D/S, Buchungsart V/B/A, Vorgabe, Aufwand, Abrechnung, Rechnungsnummer, MwSt-Satz, Zahlungskonditionen, Mahnkriterien, Zahlungsplan. Quelle: 5.83.

## 06 Nicht belegt (auf der Website und in den PDFs nicht auffindbar)

06.1 Konkrete Prozentsätze oder Regeln für Garantierückbehalt, Skonto, Rabatt, Baureinigungs- oder Bauherrenabzüge; nur das Beispiel «Rückbehalt 10.0 %» im Kontoauszug und die Begriffe.
06.2 Ein Zahlungsplan oder Akontoraster im Werkvertrag (Zahlungsplan existiert nur auf der Büroseite für Honorarrechnungen).
06.3 Regierapporte als eigenes Objekt (Regie erscheint nur als Rückstellung «Diverse» und als Vergütungsart mit separatem LV).
06.4 Ein Baujournal/Bautagebuch; das Modul Notizen/Pendenzen/Protokolle deckt Aktennotizen, Pendenzen und Sitzungsprotokolle ab.
06.5 Terminplan-Felder, Verknüpfung Termine zu Kosten oder Zahlungen, Bauprogramm-Struktur nach Gewerken.
06.6 Ein Freigabe-/Visum-Workflow mit Rollen und Sperren im System; die Kontrolle läuft über Unterschriften auf Vergabeantrag, Änderungsprotokoll und Zahlungsantrag (Architekt und Bauherr) sowie über Plausibilitätsregeln (Vollständigkeit vor Export, eingefrorene Ausschreibung, FG/OGL-Regeln).
06.7 eBKP-H als Kontrollstruktur in der Ausführung (nur als Auswertung der Kostenplanung).
06.8 Schnittstellen zu Finanzbuchhaltung, bexio oder E-Banking über den Zahlungsauftrag hinaus.
06.9 Die Inhalte der «Anleitung öffnen»/«Merkblatt öffnen» auf den Tipps-Seiten (kein Link im HTML).

## 07 Beobachtungen für den Abgleich mit den JANS-Skills (ohne Wertung der Software)

07.1 Die Vergabeeinheit als Klammer über Konti, Adresse, LV, Vertrag, Nachtrag, Zahlung und Kostenrapport ist das strukturelle Kernstück; die JANS-Los-Nummerierung (bürointerne Los-Nummern, Rule bkp-2017-referenz) übernimmt eine ähnliche Rolle und könnte explizit als VE-Kürzel mit Kontenzuordnung geführt werden.
07.2 Die Trennung Unternehmerbuchhaltung (NPK, Skill unternehmerkontrolle) und Baubuchhaltung (BKP, Skill kostenkontrolle) entspricht der JANS-Skill-Aufteilung; das Bindeglied «vergleichbare KV-Summe = KV minus Rückstellungen Regie/Teuerung/Ausmassreserve» und der Vergabeantrag mit Bauherren-Unterschrift sind als Prinzip prüfenswert.
07.3 Die Belegkette Vergabeantrag, Änderungsprotokoll, Zahlungsantrag, Zahlungsauftrag mit doppelter Unterschrift ist ein klares Muster für die Bauherrenkommunikation in kostenkontrolle und unternehmerkontrolle.
07.4 Die drei Bestimmungsebenen AVB/OSB/USB plus UN-Selbstdeklaration und die Mengenart-Codes nach SIA 451 sind Strukturen, die im Skill ausschreibung als Checkliste dienen können.
07.5 Honorar: die Regel «Baukosten nur Phasen 3 bis 5, sonst Aufwand, unter 500'000 Franken nie Formel» und die Faktorliste (Baukategorie, Schwierigkeitsgrad, Anpassungsfaktor als Rabattträger, Z1/Z2, Teamfaktor, Umbaufaktor) sind gegen honorarberechnung-sia102 abzugleichen; Normbezug ist SIA 102 (2014), die Website nennt die Ordnung 2020 nur als Hintergrund.

## 08 Quellenverzeichnis

https://www.bbase.ch/index.php
https://www.bbase.ch/konzept.html
https://www.bbase.ch/stammdaten.html
https://www.bbase.ch/notizen-pendenzen-protokolle.html
https://www.bbase.ch/terminplanung.html
https://www.bbase.ch/kostenplanung.html
https://www.bbase.ch/ausschreibung.html
https://www.bbase.ch/kostenkontrolle.html
https://www.bbase.ch/auftragsverwaltung.html
https://www.bbase.ch/honorar.html
https://www.bbase.ch/lizenzen.html
https://www.bbase.ch/schulungen.html
https://www.bbase.ch/infotheken.php
https://www.bbase.ch/geschichte.html
https://www.bbase.ch/referenzen.php
https://www.bbase.ch/tipps-kostenplanung-ebkph.html
https://www.bbase.ch/tipps-kostenplanung-vergabeeinheiten.html
https://www.bbase.ch/tipps-kostenkontrolle-kostengliederung.html
https://www.bbase.ch/tipps-ausfuehrung-blickfangzeichnungen.html
https://www.bbase.ch/tipps-auftrag-chefzahlen.html
https://www.bbase.ch/tipps-auftrag-qr-rechnung.html
https://www.bbase.ch/tipps-auftrag-rechnungsversand.html
https://www.bbase.ch/tipps-auftrag-jahreswechsel.html
https://www.bbase.ch/assets/pdf/1.10_BR_BBaseKurzinfo.pdf
https://www.bbase.ch/assets/pdf/bauadministration/3.47_Bauen_im_Bestand.pdf
https://www.bbase.ch/assets/pdf/bauadministration/3.48_BR_BauKostenSystem_Plus.pdf
https://www.bbase.ch/assets/pdf/bauadministration/3.91_Notizen_Pendenzen_und_Protokolle.pdf
https://www.bbase.ch/assets/pdf/bauadministration/5.11_BR_Adressen.pdf
https://www.bbase.ch/assets/pdf/bauadministration/5.15_BR_Unternehmerliste.pdf
https://www.bbase.ch/assets/pdf/bauadministration/5.34_BR_Grobkosten.pdf
https://www.bbase.ch/assets/pdf/bauadministration/5.51_BR_Ausschreibung.pdf
https://www.bbase.ch/assets/pdf/bauadministration/5.57_BR_Submittentenliste.pdf
https://www.bbase.ch/assets/pdf/bauadministration/5.61_BR_Budgetkontrolle.pdf
https://www.bbase.ch/assets/pdf/bauadministration/5.66_BR_Unternehmerkontrolle.pdf
https://www.bbase.ch/assets/pdf/bueroadministration/3.19_BR_Betriebskosten.pdf
https://www.bbase.ch/assets/pdf/bueroadministration/5.81_BR_Honorar.pdf
https://www.bbase.ch/assets/pdf/bueroadministration/5.82_BR_Journal.pdf
https://www.bbase.ch/assets/pdf/bueroadministration/5.83_BR_Auftrag.pdf

Rohdaten (HTML-Text und PDF-Text) liegen unter /private/tmp/claude-501/-Users-raphaeljans-Developer-jans-ai-hub/d1850cba-317b-4fa1-bc95-6e2ddb0ff3ce/scratchpad/bbase/ (html/ und pdf/).
