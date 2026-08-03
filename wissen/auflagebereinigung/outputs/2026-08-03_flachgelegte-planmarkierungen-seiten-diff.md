---
title: Flachgelegte Planmarkierungen findet nur der Seiten-Diff gegen die eigene Abgabefassung
status: belegt
last_updated: 2026-08-03
sources:
  - "E-Mail SRZ-Feuerpolizei (i.A. J. Wälchli) an J. Ziegel (Gruner AG), Cc R. Jans und M. Gantenbein, 03.08.2026 16:30, Betreff «Genehmigung», 4 Anhänge"
  - "Schreiben «Genehmigung», Stadt Zürich Schutz & Rettung, 03.08.2026 / RAI, Bauentscheid 1171/26, Ziff. 18 und 19, Kontaktperson M. Gantenbein"
  - "PDF «Bemerkungen II.1b 01 Detailpläne Feuerpolizei Architektur.pdf», 15 Blätter, 5'146'099 Bytes, Rückversand 03.08.2026"
  - "Eigene Abgabefassung «II.1b 01 Detailpläne Feuerpolizei Architektur.pdf», 5'135'127 Bytes, 23.07.2026, SharePoint 2619 KISPI, Ordner «II.1b SRZ Feuerpolizei/01 Plangrundlagen Abgabe/»"
  - "VKF-Brandschutzrichtlinie 14-15de «Verwendung von Baustoffen», Fassung 01.01.2017 (IOTH-Beschluss 22.09.2016), Ziff. 4.2"
links:
  - "[[behoerdenantwort-in-pdf-kommentaren]]"
  - "[[auflagen-extraktor-arbeitsweise]]"
  - "[[eingabewege-feuerpolizei-zh]]"
---

# Flachgelegte Planmarkierungen findet nur der Seiten-Diff gegen die eigene Abgabefassung

## Verhältnis zum Fall vom 31.07.2026

Der Report [[behoerdenantwort-in-pdf-kommentaren]] hält fest, dass der materielle Gehalt einer
Behördenantwort in den **PDF-Annotationen** des zurückgesandten Dokuments stecken kann, während
der Mailtext nur «siehe Anhang» sagt. Der Fall vom 03.08.2026 ist die **härtere Variante
desselben Musters**: Auch hier trägt der Mailtext nichts, aber diesmal sind die Bemerkungen
**keine Annotationsobjekte mehr**, sondern in die Seiten eingebrannt. Wer nach `/Annots` sucht,
findet null Treffer und schliesst daraus fälschlich, es gebe keine Bemerkungen.

## Der Fall

Die Feuerpolizei genehmigte am 03.08.2026 die Auflagen Ziff. 18 (automatische Schiebetüren) und
Ziff. 19 (brandschutzrelevante Innenwandkonstruktionen) des Bauentscheids 1171/26 mit dem Satz:
«Die Auflagen gemäss den oben genannten Ziffern sind **mit Anmerkungen** erfüllt.» Welche
Anmerkungen, steht im Schreiben nicht. Von den vier Anhängen trägt einer den Dateinamen-Präfix
«Bemerkungen».

Die Prüfung des Rückläufers auf PDF-Annotationen ergab: **`/Annots` kommt im ganzen Dokument
nicht vor**, die enthaltenen `/Subtype`-Objekte sind ausschliesslich `Image`, `Form`,
`CIDFontType0C` und `XML`. Nach der Methode vom 31.07. wäre der Befund «keine Bemerkungen»
gewesen, und das wäre falsch gewesen.

## Was funktioniert hat

Der Grössenvergleich gegen die eigene Abgabefassung war das erste belastbare Signal:
5'146'099 gegen 5'135'127 Bytes, also **10'972 Bytes Zuwachs** in einer Datei, die inhaltlich
identisch sein müsste. Danach der Seiten-Diff:

    pdftoppm -r 60 -png orig.pdf o
    pdftoppm -r 60 -png neu.pdf  n
    # je Seite md5 vergleichen

Ergebnis: **7 von 15 Blättern** unterscheiden sich (33.22, 33.23, 33.26, 33.27, 33.31, 33.32,
33.33), 8 sind identisch. Gelesen werden mussten damit 7 Blätter statt 15. Die beiden
mitgesandten Türblätter (`II.1b 02`, `II.1b 03`) kamen **byte-identisch** zurück, sind also
nachweislich unbeanstandet: Auch das ist ein Befund, und er entsteht ohne einen einzigen Blick
ins Dokument.

## Die abgelesenen Anmerkungen (Fall 2619, zur Illustration der Typik)

Zwei Zeichenfarben mit unterschiedlicher Bedeutung: **rot** für Bestätigung (Häkchen) und für
den kurzen Zweifel («?» neben einer VKF-Nummer), **violett** für die ausformulierte Auflage in
einem Textkasten.

- 33.22 «EI 30?» am Anschluss der Schiebetüre an die **bestehende** Fluchtwegwand
- 33.23 «?» bei VKF-Nr. 22636, Markierung der VKF-Nr. 25973 und 26925
- 33.26 «Anschluss mit Systemhersteller klären» am Bodenanschluss der neuen Leichtbauwand
- 33.27 «Der Anschluss ist durch den Systemhersteller **schriftlich** bestätigen zu lassen»
- 33.31 «?» bei W430-00 / VKF-Nr. 22636
- 33.32 «im Horizontalen Fluchtweg RF3?» am Bodendeckbelag
- 33.33 sechs bestätigende Häkchen plus Markierung am Bodenanschluss DT-TEH

## Die drei verallgemeinerbaren Lehren

1. **Ein fehlender Annotationsbefund ist kein Nullbefund.** Prüfe immer beide Wege: erst
   `/Annots`, dann den Seiten-Diff. Erst wenn beide leer sind, ist das Dokument unverändert.
   (Gleiche Fehlerfamilie wie die Lehre vom 01.08.2026: «die Quelle liefert nichts» und «die
   Quelle ist kaputt» sehen im Extrakt identisch aus.)
2. **Die eigene Abgabefassung ist das Prüfmittel.** Sie muss dafür auffindbar und
   unverändert archiviert sein. Das ist ein zusätzliches Argument für die getrennten Ordner
   `01 Plangrundlagen Abgabe/` und `02 Stellungnahmen <Amt>/` je Auflagenstrang.
3. **Zwischen «abklären» und «schriftlich bestätigen lassen» liegt die Auflage.** Wer die
   Markierung paraphrasiert, verliert genau das Wort, das den Nachweis erzwingt. Der
   Wortlaut der Behörde wird übernommen, nicht zusammengefasst (Rule `jans-dna`,
   Fachsignatur: materiellen Wortlaut einer Behörden-Auflage übernehmen).

## Nachweis-Wirkung

Die Genehmigung ist erteilt; die Anmerkungen sind Ausführungs- und Abnahmethemen, nicht
Bewilligungshindernisse. Das Schreiben hält zusätzlich fest: «Nachträgliche Abweichungen sind
uns vor der Ausführung bekanntzugeben.» Der Punkt 33.32 ist mit VKF-BRL 14-15de, Ziff. 4.2
bereits beantwortet (im horizontalen Fluchtweg genügt RF3, RF2 erst im Hochhaus); die Punkte
33.26 und 33.27 verlangen eine Herstellererklärung in Schriftform; 33.22 ist der einzige Punkt
mit Bezug auf den **Bestand** und damit der einzige, der eine Abklärung am Objekt statt beim
Lieferanten auslösen kann.
