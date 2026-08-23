---
title: "Inventar buero-referenzen / 30_Lichtplanung"
korpus: buero-referenzen
sektion: /Volumes/daten/04_Buero/10_Referenzenbibliothek/30_Lichtplanung
last_updated: 2026-08-23
status: established
---

# Inventar: 30_Lichtplanung (Korpus buero-referenzen)

## Kurzbefund

Die Sektion ist **eine einzige Datei**, kein Ordnerbaum: `101018_Lichtliteratur.indd`
(Adobe InDesign Document, 356 KB, Dateidatum 18.10.2010, Ordner selbst vom 25.10.2010).
Keine Unterordner, keine weiteren Formate, keine PDFs, keine Bilder.

Die Datei ist kein Lichtplanungs-Dossier, sondern ein **angefangenes Layout-Blatt einer
Literaturliste** («Lichtliteratur»). Sie wurde mit Adobe InDesign 7.0 (CS5) erstellt,
umfasst laut Dokumentstruktur einen Spread, nutzt Minion Pro und Myriad Pro und enthaelt
**keine verknuepften Bilder oder platzierten Dateien** (im Binaerinhalt sind keine
Link-Pfade zu jpg/tif/psd/pdf/ai auffindbar).

Der gesamte Textbestand des Dokuments besteht aus **genau einem Literatureintrag**, offenbar
aus einer Verlagsseite (Fraunhofer IRB Verlag) uebernommen: Titel, bibliografische Angaben,
Verlagspreise, Schlagwoerter, Klappentext und das vollstaendige Inhaltsverzeichnis. Weitere
Eintraege sind nicht vorhanden; im ganzen File kommt «ISBN» genau einmal und «Verlag» genau
einmal vor. Das Blatt ist also im Ansatz stecken geblieben.

**Methodik der Sichtung:** `.indd` ist ein proprietaeres Binaerformat, `pdftotext`/`textutil`
greifen nicht. Der Textbestand wurde ueber eine Byte-Extraktion des Story-Streams mit
Dekodierung nach MacRoman gewonnen (Fundstelle Byte-Offset 249'882 ff.) und anschliessend
gegen die ASCII-Stringliste gegengeprueft. Das Layout selbst (Position, Seitenzahl,
Gestaltung) ist damit nicht rekonstruiert, der Wortlaut des Eintrags dagegen vollstaendig.

**Datenschutz:** nichts Heikles. Keine Vertraege, keine Bewerbungen, keine Personal-, Adress-
oder Honorardaten. Der genannte Autor ist der Verfasser eines veroeffentlichten Fachbuchs,
also eine bibliografische Angabe.

## Triage

| Datei / Gruppe | Stufe | Begruendung |
|---|---|---|
| `101018_Lichtliteratur.indd` — Layout-Blatt Literaturliste, ein Eintrag (Fraunhofer IRB Verlag, Tageslichtqualitaet in Innenraeumen) | **P2** | Inhaltlich ergiebig ist nicht das Layout, sondern der darin konservierte Kriterienkatalog fuer Tageslichtqualitaet und die acht Raum-Standardfaelle. Beides ist als Denkraster fuer fruehe Projektphasen direkt brauchbar, liefert aber **keine Zahlenwerte, Grenzwerte oder Normverweise** — es ist ein Klappentext plus Inhaltsverzeichnis, keine Fachquelle. Darum nicht P1: zitierfaehig ist daraus nur die Existenz und Gliederung der Quelle, nicht eine Aussage ueber Tageslicht. |
| Layout-/Font-/Farbmetadaten des Dokuments (InDesign 7.0, Minion Pro, Myriad Pro, Farbfelder Schwarz/Passermarken) | **X** | Reine Werkzeug-Metadaten ohne Fachwert. |

Gesichtet: 1 Datei. P1: 0 · P2: 1 · P3: 0 · verworfen: 0 (die X-Zeile ist ein Bestandteil
derselben Datei, keine eigene Datei).

## Was hier fuer JANS drinsteckt

Belegt aus dem Dokumenttext, nicht ergaenzt:

1. **Ein elfteiliger Kriterienkatalog fuer Tageslichtqualitaet in Innenraeumen.** Das
   Inhaltsverzeichnis fuehrt unter «Objektive Bewertungskriterien» auf: mittlerer
   Tageslichtquotient D · Tageslichtquotient in 4 m Raumtiefe D4 · Gleichmaessigkeit G ·
   Tageslichtsituation bei Sonne · Kontrastreduzierung · Gesichtsfeldkontraste · Unified
   Glare Rating UGR · Aussenbezug · Tageslichtautonomie TLA · Regelbarkeit · Einfachheit.
   Das ist eine brauchbare Checkliste dafuer, welche Groessen man bei einer Tageslicht-Aussage
   ueberhaupt trennen muss — besonders die Unterscheidung zwischen **mittlerem** Quotienten
   und dem Quotienten **in 4 m Raumtiefe**, weil erst der zweite die Frage «wie tief darf der
   Raum werden» beantwortet. Fuer Wettbewerb, Machbarkeit und Healthcare-Raumtiefen relevant.

2. **Acht Standardfaelle der Raumbelichtung als Systematik.** Das Buch gliedert nach
   Belichtungsgeometrie: einseitig ohne Verbauung (Fall 1) · zweiseitig ueber Eck unverbaut
   (2) · zweiseitig gegenueber unverbaut (3) · einseitig mit gegenueberliegender Blockbebauung
   (4) · einseitig in Atriumsituation (5) · von oben ueber Einzeloberlichter (6) · von oben
   ueber Dachsheds (7) · von oben ueber Dachlaternen (8). Diese Typologie ist als Raster fuer
   fruehe Volumen- und Grundrissvarianten unmittelbar uebertragbar: sie benennt genau die
   staedtebaulichen Situationen (Blockbebauung gegenueber, Atrium), die in Zuercher
   Verdichtungslagen ueber die Belichtung entscheiden.

3. **Die Kernaussage des Klappentexts:** die wirkungsvollsten Massnahmen zur besseren
   Tageslichtnutzung liegen laut Verlagstext in einer **tageslicht-optimierten Bauweise**,
   also in Geometrie und Raumorganisation, nicht in nachtraeglicher Technik. Als Schlagwoerter
   nennt der Eintrag Tageslichtnutzung, Innenraum, Lichtqualitaet, Computersimulation,
   Gebaeudegeometrie, Raumorganisation. Das stuetzt die Argumentation gegenueber Bauherrschaften,
   dass Belichtung eine Entwurfs- und keine Ausbaufrage ist — als **Verlagsaussage** zitierbar,
   nicht als geprueftes Ergebnis.

4. **Methodisch bemerkenswert, aber nicht uebernehmbar:** die Arbeit arbeitet mit
   Computersimulation im Programm **Radiance**, mit statistischer Versuchsplanung
   (2-Stufen- und 3-Stufen-Plaene, ein 2^(9-4)-Plan, Adaequatheitstest) und liefert
   Regressionspolynome, mit denen sich die lichttechnische Wirkung geometrischer und
   optischer Parameter «auf Knopfdruck» abschaetzen lassen soll. Die Polynome selbst
   stehen **nicht** in dieser Datei — wer sie braucht, muss die Quelle beschaffen.

5. **Quellenhinweis fuer eine allfaellige Beschaffung** (bibliografisch, Stand des Eintrags
   von 2010): Friedrich Sick, «Einfluss elementarer architektonischer Massnahmen auf die
   Tageslichtqualitaet in Innenraeumen», Reihe Wissenschaft Band 7, Fraunhofer IRB Verlag,
   2003, 112 Seiten, ISBN 978-3-8167-6290-4; im Eintrag mit EUR 27.00 (Druck) bzw. EUR 22.00
   (PDF) vermerkt. Preise und Lieferbarkeit sind 2010er Stand und heute nicht mehr belastbar.

**Grenze der Sektion, ehrlich benannt:** «30_Lichtplanung» enthaelt **keine** Lichtplanung im
engeren Sinn. Keine Kunstlicht-Unterlagen, keine Leuchtenkataloge, keine Beleuchtungsstaerken,
keine EN 12464 oder SIA-Bezuege, keine Projektbeispiele. Wer im Buero eine Lichtplanungs-
Grundlage sucht, findet sie hier nicht; die Sektion ist ein 2010 begonnener und nicht
weitergefuehrter Sammelansatz mit genau einem Fund.
