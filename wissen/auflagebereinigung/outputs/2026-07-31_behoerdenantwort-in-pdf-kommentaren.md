---
title: Behördenantworten können ihren ganzen Gehalt in PDF-Kommentaren tragen
status: belegt
last_updated: 2026-07-31
sources:
  - "E-Mail M. Gantenbein (Stadt Zürich Schutz & Rettung, Brandschutzexperte) an R. Jans, 31.07.2026 07:59:52, Betreff «2026-07-31 AW Ziff 16», 2 Anhänge"
  - "PDF «260723 KISPI_Therapiestation_1OG_Stellungahme_Auflagenbereinigung_sign_signed_signed.pdf», 16 Seiten, 16 Annotationen (Gantenbein/Frauenfelder), Rückversand 31.07.2026"
  - "wissen/normen/destillate/vkf-brandschutznorm-1-15de-bspub57.md (Art. 10, 11, 12 VKF-BSN 1-15de:2015)"
  - "Bauentscheid 1171/26 vom 08.06.2026, Auflage Ziff. 16 (KISPI Umnutzung Etage B, Therapiestation 1.OG)"
links:
  - "[[auflagen-extraktor-arbeitsweise]]"
  - "[[eingabewege-feuerpolizei-zh]]"
---

# Behördenantworten können ihren ganzen Gehalt in PDF-Kommentaren tragen

## Der Fall

Zur Auflage Ziff. 16 des Bauentscheids 1171/26 hatte JANS der Feuerpolizei zwei Dokumente
zugestellt: den revidierten Brandschutzplan und die Stellungnahme Brandschutz der Gruner AG
(Fassung 23.07.2026, Version 1.1 Auflagenbereinigung). Die Antwort der Brandschutzbehörde am
31.07.2026 bestand im Fliesstext aus **drei Sätzen**:

> Die im Anhang aufgeführten Unterlagen haben wir im Sinne der VKF-Brandschutzvorschriften
> auf Vollständigkeit, Nachvollziehbarkeit und Plausibilität kontrolliert. Zum revidierten
> Brandschutzplan haben wir keine Anmerkungen mehr, die Stellungnahme ist entsprechend zu
> überarbeiten (siehe Anhang).

Was «entsprechend» heisst, steht **nirgends im Mailtext**. Es steht in 16 PDF-Annotationen,
verteilt über fünf Seiten des zurückgesandten Dokuments, davon fünf mit Text und drei
Stempel «Frage» ohne Text.

## Die zwei operativen Lehren

**1. Der Anhang ist die Verfügung, nicht die Beilage.** Die Rule `auto-verbesserungen` 260709
verlangt bereits, Anhänge als Pflichtlektüre zu behandeln. Dieser Fall verschärft das: es
genügt nicht, das PDF zu öffnen und seinen Fliesstext zu lesen — die **Annotationsebene** muss
eigens ausgelesen werden. Wer das PDF nur ablegt, legt eine Auflage ab, die er nie gesehen
hat. Praktisch: bei jeder Behördenrückmeldung mit PDF-Anhang die Kommentare programmatisch
extrahieren (`pypdf`, Feld `/Annots`, Filter auf `/Contents` und `/T`), nicht auf die visuelle
Durchsicht vertrauen — Freitextfelder liegen im Layout oft über dem Fliesstext und
verschwinden in der reinen Textextraktion (`pdftotext` mischt sie mitten in fremde Absätze).

**2. Ein unveränderter Rückversand ist ein Befund.** Der mitgeschickte Brandschutzplan war
**byte-identisch** (SHA1-Vergleich gegen die abgelegte Fassung) mit dem eingereichten. Das ist
der technische Beleg für «keine Anmerkungen mehr» und rechtfertigt, den Plan **nicht** ein
zweites Mal abzulegen. Umgekehrt heisst eine abweichende Prüfsumme bei gleichem Dateinamen:
das Dokument trägt neue Information und darf **nie** unter dem Originalnamen abgelegt werden,
sonst überschreibt es die Ausgangsfassung. Im Fall lagen beide Fassungen unter identischem
Dateinamen; abgelegt wurde mit Datumspräfix und Zusatz «kommentiert».

## Fachlicher Nebenertrag: der Verweis «Art. 12»

Drei der fünf Kommentare bestehen nur aus «Art. 12» bzw. «Art. 12!». Aufgelöst über die
Normen-KB: **Art. 12 VKF-Brandschutznorm 1-15de:2015 regelt das Nachweisverfahren** — zulässig
bei Erfüllung der Schutzziele und ganzheitlicher Betrachtungsweise, wobei die
Brandschutzbehörde auf **Vollständigkeit, Nachvollziehbarkeit und Plausibilität** prüft. Das
sind wörtlich die drei Kriterien, die Gantenbein im Mailtext nennt. Die Kommentare stehen bei
der Beurteilung nach Löschanlagenkonzept (Standardkonzept nach Art. 10) und bei der
Nutzungsdefinition.

**Als Lesart festgehalten, nicht als Feststellung:** naheliegend ist, dass die Behörde die
Deklaration als Nachweisverfahren nach Art. 12 erwartet, statt die Beurteilung allein auf das
Standardkonzept nach Art. 10 zu stützen. Bestätigen muss das die Verfasserin der Stellungnahme
(Gruner) bei der Behörde — ein Ein-Wort-Kommentar trägt keine Auslegung. Offen in
`QUESTIONS.md` vermerkt.

## Übertragbarkeit

Gilt für jede Rückmeldung einer Amts- oder Fachstelle mit PDF-Anhang, insbesondere
Feuerpolizei, AfB, UGZ und Denkmalpflege, und damit für den ganzen Skill
`auflagebereinigung` (Schritt 1, Agent `auflagen-extraktor`). Der Extraktionsschritt gehört
vor die Zuteilung an Planer und Amt — eine nicht gelesene Annotation erzeugt keine
Deliverable-Zeile und fällt in der ganzen nachgelagerten Kette aus.
