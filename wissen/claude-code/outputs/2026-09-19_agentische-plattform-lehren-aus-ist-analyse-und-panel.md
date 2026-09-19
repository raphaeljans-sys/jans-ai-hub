---
title: Lehren für agentische Plattformen aus der Hub-Ist-Analyse und dem Zielarchitektur-Panel
date: 2026-09-19
status: emerging
sources:
  - docs/konzepte/260919-Briefing-IT-Ingenieur-JANS-AI-Zentrum/260919-Anhang-Befundkatalog-intern.md
  - docs/konzepte/260919-Briefing-IT-Ingenieur-JANS-AI-Zentrum/260919-Briefing-IT-Ingenieur-JANS-AI-Zentrum.md
  - docs/konzepte/260919-Briefing-IT-Ingenieur-JANS-AI-Zentrum/260919-Begleitnotiz-intern-Entscheide-vor-Versand.md
links:
  - "[[kontext-architektur]]"
---

# Lehren für agentische Plattformen (Rücklauf aus dem Briefing IT-Ingenieur, 19.09.2026)

Wissens-Rücklauf nach Rule `wissens-ruecklauf`. Quelle sind zehn belegte Ist-Analysen des Hub und ein
Panel aus drei Zielarchitektur-Entwürfen mit drei Richtern. Hier steht nur das Verallgemeinerbare; die
Befunde selbst liegen im Befundkatalog.

## 01 Ein Policy-Gate wirkt nur mit Credential-Isolation

Eine Freigabeschicht vor schreibenden Aktionen (senden, buchen, Berechtigungen ändern) ist wirkungslos,
solange der Agent die Schreibzugänge selbst hält (CLI mit injiziertem Secret, Token im Home). Er kann
das Gate dann umgehen. Tragfähig ist nur: der Agent ruft ein typisiertes Werkzeug oder einen Proxy mit
Endpunkt-Allowlist, und nur dieser Dienst hält das Token. Als Abnahmekriterium formulieren, nicht als
Absicht. Dazu gehört ein Test, dass das Gate bei eigenem Ausfall verweigert (fail-closed).

## 02 Lesender und handelnder Agent gehören getrennt, zuerst in der Aufsicht

Der risikoreichste Baustein ist derjenige, der täglich fremde Inhalte liest (Mail, Anhänge, Portale) und
zugleich nach aussen handeln darf. Das Muster: ein werkzeugloser Leser extrahiert strukturierte Daten,
nur diese erreichen den handelnden Agenten. «Bekannter Empfänger» ist kein Schutz gegen Abfluss an
bekannte Dritte. Opt-out-Fenster (Schweigen gilt als Zustimmung) sind bei injection-exponierten Läufen
besonders heikel.

## 03 Profile gelten auch für interaktive Sitzungen

Berechtigungsprofile nur für unbeaufsichtigte Läufe lassen die grösste Fläche offen: interaktive
Sitzungen mit pauschalem Shell-, Schreib- und MCP-Recht, Desktop-Steuerung und nicht genutzte
Cloud-Connectoren mit Senderecht. Ungenutzte Connectoren deaktivieren.

## 04 Hubs sind Grenzen, keine Systeme

Ein fachlicher Hub-Schnitt (hier neun Domänen) beschreibt Namensräume, Berechtigungsprofile,
Dienstidentitäten und Datenräume. Technisch erzwungen werden wenige Vertrauenszonen. Wer Hubs als
Systeme ausschreibt, bekommt neun Teilprojekte offeriert. Darum je Arbeitspaket offerieren lassen.

## 05 Kleiner Kern mit geschäftlichem Auslöser je Ausbaustufe

Gegen den Zweitsystem-Effekt helfen: eine ausdrückliche Liste, was nicht in Stufe 1 gehört, ein
geschäftlicher Auslöser je Ausbaustufe (erste Anstellung, erster zahlender Kunde), die Zahl der selbst
betriebenen Dienste als Abnahmekriterium und ein Architekturentscheid je Schicht mit Ausstiegsweg.
Self-Hosting ersetzt Script-Wildwuchs durch Dienste-Wildwuchs, Cloud-first durch Anbieter-Wildwuchs.

## 06 Kennzahlen, die sich als Abnahmekriterium nicht eignen

Eine Fehllaufquote ohne Ausklammerung von Kontingent-Ereignissen ist unter einem Abo nicht erfüllbar
(hier waren 477 von 1'091 Fehlläufen Limit-Ereignisse). Solche Läufe als «aufgeschoben» zählen.
Kriterien ausserhalb der Kontrolle des Auftragnehmers (schriftliche Auskunft eines Anbieters) gehören
als Meilenstein mit Rückfallregel formuliert, nicht als Abnahme. Ein Red-Team-Test mit zehn Proben
belegt kein «null»; nötig ist eine wiederkehrende Suite in der CI mit zwei Messgrössen
(Aussenwirkungen und Datenabflüsse).

## 07 Der Engpass ist der Mensch, nicht die Maschine

Review-Pflicht ohne Review-Ökonomie verschiebt den Freigabe-Engpass zum Review-Engpass. Festlegen,
welche Änderungsklassen nach grüner Prüfung automatisch übernommen werden und welche ein Mensch
freigibt, und dafür eine Oberfläche vorsehen, die auf dem Telefon mit einem Klick funktioniert.
Während eines Umbaus gilt ein Baustopp für neuen Betriebs-Klebstoff, sonst bewegt sich das Ziel täglich.

## 08 Werkzeugbefund

`skills/studien-generator/tools/md2docx.py` weicht vom Dokument-Layout-Standard ab (Tabellen mit Rahmen
und grauem Kopf, Titel in Theme-Schrift, keine Fusszeile). Für das Erzeugnis vom 19.09.2026 lokal
nachbearbeitet; die Angleichung des Konverters ist als eigener Auftrag vorgemerkt.
