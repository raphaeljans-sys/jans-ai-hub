---
quelle: "PL - 02_Recht_Norm/02_Normen/SIA_Norm/SIA_Merkblaetter/MERKBLAETTER/2004_d.pdf"
herausgeber: SIA, Schweizerischer Ingenieur- und Architekten-Verein, Zürich
ausgabe: "Merkblatt SIA 2004, Ausgabe März 1992"
gelesen: "S. 1-15 vollständig (Deckblatt, Gültigkeitsvermerk, Verfasserliste, Copyright, Inhaltsverzeichnis, Ziff. 0 Einleitung, Ziff. 1 Datenfelder, Ziff. 2 Allgemeines, Ziff. 3 und 4 Beispiele)"
datenstand: "1992"
status: established
last_updated: 2026-07-19
links: [[REGISTER]]
---

# SIA 2004 — Merkblatt zur Empfehlung SIA 451 «Informatik-Datenformate für Leistungsverzeichnisse»

## Das Wichtigste in 3 Sätzen
Das Merkblatt ergänzt und präzisiert die Empfehlung SIA 451 «Informatik-Datenformate für Leistungsverzeichnisse», Ausgabe 1989, und muss zwingend zusammen mit dieser Empfehlung gelesen werden (Ziff. 0 1, S. 5). Es legt als Übergangsregelung fest, wie die Datenfelder eines LV-Datenaustauschs zu füllen und zu interpretieren sind, damit unterschiedliche Auslegungen ausgeschlossen werden und der Austausch zwischen Anwenderprogrammen nach den «Minimalanforderungen '89» reibungslos funktioniert (Ziff. 0 2, S. 5). Das Merkblatt wurde im März 1992 zum Druck freigegeben, seine Gültigkeitsdauer wurde von der Kommission für Informatik auf drei Jahre festgelegt (Gültigkeitsvermerk, S. 2).

## Geltungsbereich
- Ergänzung zur Empfehlung SIA 451, Ausgabe 1989; nur zusammen mit dieser anwendbar (Ziff. 0 1, S. 5).
- Präzisiert zugleich die «Minimalanforderungen '89 für Anwenderprogramme NPK Bau» aus der CRB-Broschüre «NPK-Informationen für Anwender», Ausgabe 1989 (Ziff. 0 1, S. 5; Deckblatt-Vermerk S. 1).
- Ausdrücklich als Übergangsregelung deklariert; eine spätere Ergänzung des Merkblatts bzw. Revision der Empfehlung SIA 451 im Hinblick auf das internationale EDIFACT-Modell (Arbeitsgruppe MD5, Western European EDIFACT Board) wird angekündigt (Ziff. 0 2, S. 5).
- SIA-Merkblätter geben laut Vorspann die Ansichten der beauftragten Fachleute wieder und sind nur eine beschränkte Zeit gültig (S. 2).

## Kernziffern (mit Fundstelle)
- **Ziff. 1 1 (Übersicht)** — Ein Feld enthält entweder Daten oder ist leer; leere Felder werden mit Spaces (ASCII 32) gefüllt, nicht angewendete Stellen numerischer Felder mit Nullen. Ein als zwingend bezeichnetes numerisches Feld muss belegt sein, darf dabei aber durchgehend aus Nullen bestehen (S. 6).
- **Ziff. 1 1 (Feld 1 Recordart)** — Verwendet werden A (Headerrecord), G (Positionsrecord), Z (Schlussrecord); übrige Recordarten aus SIA 451 sind zulässig, dürfen aber ignoriert werden (S. 6).
- **Ziff. 1 2 (Feld 2 Katalog)** — Drei Subfelder: Kapitel 3 Stellen numerisch, Sprache 1 Stelle numerisch (je Datei nur eine Sprache), Jahr 2 Stellen numerisch als Versionsjahr des Kapitels in den CRB-Daten; je Kapitel innerhalb desselben LV nur ein Versionsjahr zulässig (S. 6).
- **Ziff. 1 2 (Feld 3 Leistungsposition)** — Zwei Subfelder à 3 Stellen numerisch (Hauptposition, Unterposition); übergeordnete Bestandteile wie Unterpositions-Untergruppe, -Gruppe, Hauptposition, Unterabschnitts- und Abschnittstitel müssen mit übertragen werden (S. 6-7).
- **Ziff. 1 2 (Felder 4/5)** — Variablennummer 2 Stellen numerisch zwingend; Zeilennummer 2 Stellen numerisch, beginnt bei jeder neuen Position und jeder neuen Variablen mit 01 (S. 7).
- **Ziff. 1 2 (Felder 6/7)** — Objektgliederung und Positionslage je 6 Stellen alphanumerisch, führende Spaces unzulässig, eingebettete Spaces erlaubt; Anwendung nur bei Leistungspositionen/Teilmengen zulässig (S. 7).
- **Ziff. 1 2 (Felder 8, 9, 10, 11, 12, 17, 20, 24)** — Dürfen ignoriert werden, weil sie nicht Bestandteil der «Minimalanforderungen '89» sind bzw. redundant sind (Feld 11 Positionsart) (S. 7-9).
- **Ziff. 1 2 (Feld 13 Mengenart)** — 1 Stelle alphanumerisch, zwingend bei Mengen und Teilmengen; A = Vorausmass durch Planer, W = Per-Position (Preisanfrage für eine Mengeneinheit, Menge immer auf 1 gesetzt). Nicht interpretierbare Codes werden umgewandelt: B bis N als Code A, Q bis U als Code W (S. 8).
- **Ziff. 1 2 (Feld 15 Menge / Feld 19 Preis)** — Menge 13 Stellen numerisch (10 Vor-, 3 Nachkommastellen), Preis 12 Stellen numerisch (10 Vor-, 2 Nachkommastellen), beide ohne Dezimalkomma und ohne Tausendergliederung; Vorzeichenfelder 14 bzw. 18 (+/-) sind zwingend, falls das Wertfeld angewendet ist (S. 8).
- **Ziff. 1 2 (Feld 21 BKP-Code)** — Bei Kostengliederung nach CRB-Norm SN 506 500 «Baukostenplan BKP», Ausgabe 1989: 5 Stellen ohne Punkt, zulässig sind die Ziffern 0 bis 9; der Code steht links im Feld, der Rest wird mit Spaces belegt, ausgewertet wird das Feld alphanumerisch. Das Feld ist entweder im gesamten Leistungsverzeichnis leer oder im gesamten Leistungsverzeichnis gefüllt (S. 8).
- **Ziff. 1 2 (Feld 22 Elementcode)** — 6 Stellen, wovon nur die ersten zwei angewendet werden (1. Stelle alphanumerisch, 2. numerisch); Codes nach CRB-Norm SN 506 502 «Elementkostengliederung EKG», Ausgabe 1991; Anwendung nur bei Leistungspositionen/Teilmengen zulässig (S. 9).
- **Ziff. 1 2 (Feld 23 Positionstext)** — 30 Stellen alphanumerisch; bei Reservepositionen und Positionen aus dem BAUHANDBUCH (CRB-Publikationscodes 02, 03, 07) sowie bei offenen und Überschreibvariablen ist der vollständige Text zu übertragen, bei geschlossenen Variablen erfolgt keine Textübertragung (S. 9).
- **Ziff. 1 4 (Feld 3 Schnittstellenversion)** — 6 Stellen; zur Kennzeichnung der Version wird «200492» verwendet, d.h. nach Merkblatt SIA 2004, 1992, abgestimmt auf die Broschüre «NPK-Informationen für Anwender», Ausgabe 1989 (S. 9).
- **Ziff. 1 4 (Feld 24 Herstellerangaben)** — Vier Subfelder: 15 Stellen LV-Identifikation inkl. Nachtragsidentifikation, 20 Stellen Telefonnummer des Software-Herstellers, 30 Stellen Name des Herstellers, 20 Stellen Software-Programmversion (S. 10).
- **Ziff. 1 3 (U: Kommentarrecord)** — Anwendung fakultativ, Bedeutung herstellerabhängig; eindeutige Interpretation über die Telefonnummer des Herstellers im Headerrecord-Feld 24 (S. 9).
- **Ziff. 1 5 (Z: Schlussrecord, Feld 15)** — Anzahl Übertragungsrecords 13 Stellen numerisch ohne Dezimalstellen; gezählt werden sämtliche A-, G-, U- und Z-Records sowie allfällige nicht interpretierbare Records (S. 10).
- **Ziff. 2 (Allgemeines)** — Erster Record der Datei ist immer der A-Record, letzter immer der Z-Record; je Datei nur ein A- und ein Z-Record (S. 11).
- **Ziff. 2 1 (Schlüssel für G-Records)** — Achtteiliger Sortierschlüssel in dieser Reihenfolge: Feld 21 BKP-Code, Feld 2 Katalog, Feld 3 Leistungsposition, Feld 4 Variable, Feld 5 Zeilennummer, Feld 6 Objektgliederung, Feld 7 Positionslage, Feld 22 Elementcode. Der BKP-Code ist dem Kapitel übergeordnet, weshalb dasselbe Kapitel und dieselben Leistungspositionen im LV mehrfach vorkommen können (S. 11).
- **Ziff. 2 2 (Mengengliederung)** — Mengenangaben stehen immer auf dem letzten Datensatz einer Position; bei Mengengliederung/Teilmengen werden Positions-, Variablen- und Zeilennummer wiederholt (S. 11).
- **Ziff. 2 3 (Positionstexte)** — Eine Position nach Empfehlung SIA 451 beginnt immer mit der Zeilennummer 01 (S. 12).
- **Ziff. 2 4 (Zeichensatz)** — Nur die in SIA 451, Anhang A1, grau hinterlegten Zeichen aus ASCII, Code Page 850 (S. 13).
- **Ziff. 2 5 (Datenträger, Dateinamen)** — Standarddatenträger 3½"-Disketten (IBM-PC-Format, 2HD, 1,44 MB); nur ein Leistungsverzeichnis je Datenträger; Dateiname der zu übertragenden Datei lautet «SIA451», abgelegt im Hauptverzeichnis (Root) (S. 13).
- **Ziff. 2 6 / 2 7 (Wertebereich, Softwarebeschränkungen)** — Die Software muss beim Einlesen prüfen, ob sie die übertragenen Werte verarbeiten kann (Produkt aus Menge und Preis max. 20 Vorkommastellen) und ob Softwarebeschränkungen bei BKP-Codes, NPK-Kapiteln, NPK-Kapiteln pro BKP-Code, Teilobjekten und Positionslagen verletzt werden; bei Überschreitung muss eine Warnung erfolgen (S. 13).

## JANS-Praxis-Transfer
- **`ausschreibung`:** Das Merkblatt ist die Feld-für-Feld-Lesart der SIA-451-Schnittstelle und damit die historische Grundlage der NPK-/LV-Datenaustauschdateien (Dateiname «SIA451», Ziff. 2 5, S. 13). Für den JANS-.crbx-/SIA-451-Parser der Bauleitungs-Wissensbasis liefert es die verbindliche Definition der Feldlängen und Füllregeln (Ziff. 1, S. 6-9) sowie die Sortierlogik der Positionen (Ziff. 2 1, S. 11).
- **`ausschreibung` / `kostenkontrolle`:** Die Regel, dass Feld 21 (BKP-Code) entweder im gesamten Leistungsverzeichnis leer oder im gesamten Leistungsverzeichnis gefüllt sein muss (Ziff. 1 2, S. 8), erklärt, warum LV-Dateien entweder durchgehend BKP-gegliedert oder gar nicht BKP-gegliedert vorliegen. Der BKP-Code ist dem NPK-Kapitel übergeordnet (Ziff. 2 1, S. 11) — dasselbe Kapitel kann daher unter mehreren BKP-Positionen auftreten.
- **`kostenschaetzung` / Rule `bkp-2017-referenz`:** Das Merkblatt referenziert die BKP-Ausgabe 1989 (SN 506 500) und die EKG-Ausgabe 1991 (SN 506 502) (Ziff. 1 2, S. 8-9). Für aktuelle JANS-Arbeiten gilt weiterhin die im Hub hinterlegte BKP-2017-Liste; das Merkblatt ist hier nur historische Einordnung, keine aktuelle Codequelle.
- **Gültigkeit:** Die Gültigkeitsdauer wurde 1992 auf drei Jahre festgelegt (S. 2). Das Dokument ist damit formal abgelaufen und beschreibt zudem eine Datenträger-Praxis (3½"-Disketten, Ziff. 2 5, S. 13), die überholt ist. Für heutige Ausschreibungen darf es nicht als geltende Schnittstellenvorgabe zitiert werden; der aktuelle Stand der SIA-451-/CRB-Schnittstelle ist separat zu verifizieren.

## Offene Punkte
- Ob und durch welches Dokument das Merkblatt SIA 2004 formell ersetzt oder aufgehoben wurde, geht aus dem PDF nicht hervor — im Dokument steht kein Ersetzt-Vermerk. Der aktuelle Stand der SIA-451-Schnittstelle (bzw. deren Nachfolge, z.B. CRB-Datenformate) ist im Normen-Register noch zu klären.
- Die Empfehlung SIA 451, Ausgabe 1989, selbst liegt diesem Destillat nicht vor; insbesondere Anhang A1 (Zeichensatz, verwiesen in Ziff. 2 4, S. 13) und die vollständige Feldliste sind nur aus SIA 451 nachvollziehbar.
- Die CRB-Broschüre «NPK-Informationen für Anwender», Ausgabe 1989, inkl. Anhang 3 (erlaubte Mengeneinheiten, verwiesen in Ziff. 1 2 Feld 16, S. 8), wurde nicht gelesen.
- Die Beispieldateien Ziff. 3 und 4 (S. 14-15) wurden gesichtet, aber nicht Zeichen für Zeichen validiert; sie sind als Referenz-Datensätze im Original nachzuschlagen.
