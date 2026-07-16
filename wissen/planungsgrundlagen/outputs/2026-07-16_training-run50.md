# Trainings-Lauf 50 — KB Planungsgrundlagen (2026-07-16)

**Domaenen:** Kartenportale (PL-01, Prioritaet) + Energie (PL-04, Prioritaet) — 2 Domaenen
gemaess Token-Vollgas-Vorgabe (`training/PROGRAMM.md`), Rotationsprioritaet Kartenportale+Energie.

## Schritt 0 — Zeitstempel-Scan (Standard seit Run 49)

`find "PL - 01..." "PL - 04..." -newermt "2026-07-10" -type f` foerderte **keine** neuen Dateien
zutage — beide Domaenen sind seit dem letzten Abgleich unveraendert.

## Schritt 0b — Systematischer Ordner-Delta-Scan (neu in diesem Lauf)

Da der Zeitstempel-Scan leer blieb, wurde zusaetzlich ein Datei-/Ordnernamen-Abgleich gefahren:
alle Unterordner von PL-01 (2. und 3. Ebene) sowie PL-04 gegen den kompletten Wiki-Text der
jeweiligen Domaene geprueft (grep -i je Ordnername). Ergebnis:

- **PL-04 Energie:** keine echten Treffer — alle "unbekannten" Ordner erwiesen sich als bereits
  dokumentiert (Namensschreibweise-Differenzen, z.B. "Waermetechnischen" vs. "waermetechnische").
  Das Curriculum ist fuer PL-04 nach 39 Fragen (E1-E39) inhaltlich praktisch ausgeschoepft.
- **PL-01 Kartenportale:** vier echte, bisher nie erschlossene Kandidaten gefunden:
  1. `Objektschutz/_schutz-vor-naturgefahren.ch/Naturgefahren Konzept/` — enthaelt einen realen
     JANS-Projektbeleg (`2304RE20_Naturgefahren_Objektschutzkonzept.pdf/.indd`) sowie ein
     allgemeines Konzept-PDF.
  2. `KtLU Luzern/Gemeinden Luzern Stadt/Klimafreundlichheizen.ch/` — 1 Screenshot, unbekanntes
     Web-Tool.
  3. `KtLU Luzern/Gemeinden Luzern Stadt/Stadt Luzern 3D-Stadtmodell/` — 7 Screenshots +
     `_Stadt Luzern Stadt Modell.docx`.
  4. `Grundstueckkataster/Regensdorf/*/Lieferschein.pdf` (4 Stueck, LIDAR/DTM/AV/
     Abstandslinien-OGD) — reale Bestell-Lieferscheine, potenzielle Preis-/Fristangaben.

**Alle vier blieben technisch unlesbar.** Read-Tool, `cp`, `pdftotext` und selbst `file` scheiterten
durchgehend mit `EDEADLK` / "Resource deadlock avoided" — trotz korrekter Dateigroessen auf der
Platte (kein Cloud-Platzhalter). Andere PL-01-Ordner (inkl. der PL-04-Datei `megasol.ch/
Photovotaik_https.docx`) blieben im selben Lauf problemlos lesbar — es handelt sich also nicht um
ein generelles Mount-Problem, sondern um einen lokal auf diese Unterordner beschraenkten
OneDrive-File-Provider-Deadlock (mehrere `mdworker_shared`-Prozesse liefen zeitgleich, vermutlich
Spotlight-Reindexierung). Praezedenzfall: die Lignum-Erdbeben-PDF war in Run 28 identisch
blockiert und liess sich in Run 30 problemlos lesen ("reines Sync-Timing"). Als **K41-K44** in
`training/curriculum.md` + `wiki/QUESTIONS.md` Abschnitt A fuer den naechsten Lauf vorgemerkt —
kein erfundener Inhalt, ehrliche technische Luecke.

## Domaene 2 — Energie (PL-04): E39-Rest — GreenPV ist laengst abgeschlossen

Run 49 hatte den GreenPV-Foliensatz (Workshop 2, 15.06.2022, S. 1-29 von 46) ausgewertet und als
offen vermerkt: "Studie selbst noch nicht abgeschlossen (Workshop 2 von 3)", S. 30-46 sowie ein
"moeglicher Workshop-3-Schlussbericht" seien noch nicht gesucht. Eine WebSearch dieses Laufs
klaerte das: das Projekt lief unter Leitung Gianrico Settembrini seit 12/2021 und wurde **im
Sommer 2024 mit einer oeffentlichen Schlussbroschuere abgeschlossen** (HSLU Institut fuer
Gebaeudetechnik und Energie IGE, `502400-greenpv-broschuere-20240827-web.pdf`, 27.08.2024,
92 Druckseiten / 47 PDF-Seiten). Die Broschuere wurde per `curl` heruntergeladen und **vollstaendig
volltext ausgewertet** (nicht nur die offen gefuehrten S. 30-46 des alten Foliensatzes, sondern das
komplette, ueberarbeitete Endprodukt).

**Zentrale neue, belegte Fakten** (→ NEU §6b `[[energie-pv-eignung-typenwahl]]`):

- **Take-Home Messages** mit prozentgenauen Kennzahlen: eine unverschattete, nach Sueden
  ausgerichtete PV-Fassade produziert **20 % weniger** Strom im Jahr als eine 5°-Dachanlage,
  aber **43 % mehr** im Winter. Fassadenbegruenungen rentieren sich fuer private Investoren
  wirtschaftlich nicht, liefern aber gesamtgesellschaftlichen Mehrwert. Eine gezielte Kombination
  PV+Begruenung an der Fassade senkt die THGE um **>25 %** bei nur **~9 %** Mehraufwand bei den
  Lebenszykluskosten.
- **8 Empfehlungen zur Systemwahl** — ein direkt nutzbares Planungsraster (Standort zuerst,
  Fachleute fruehzeitig, Projektziele klar, geschoss-/fassadenspezifisch planen, Low-Tech vor
  High-Tech, PV sinnvoll einsetzen, Systeme kombinieren, Begruenungspotential steigern).
- **Vollstaendiger Vorteile-/Hemmnisse-/Systemvergleich** Dach vs. Fassade vs. Aussenraum, je fuer
  Begruenung und PV separat — ergaenzt die bisherige, nur PV-fokussierte Typenwahl-Logik (§1) um
  die Begruenungsseite.
- **Brandschutz-Systematik nach Gebaeudehoehe** (bis 11 m / bis 30 m / Hochhaus >30 m,
  RF-Klassen), inkl. der praktisch wichtigen **Hochhaus-Luecke**: PV-Fassaden lassen sich keiner
  Standardkonzept-Kategorie zuordnen, individuelles Brandschutzkonzept mit der Behoerde zwingend.
- **Zwei reale Schweizer Fallbeispiele mit belegten Kostenkennwerten** — PV-Fassade Sanierung
  Hochhaus Holenackerstrasse 65 Bern (CHF 1.1 Mio ≈ CHF 1'400/m², 8 mit der Brandschutzbehoerde
  vereinbarte Schutzziele im Wortlaut) und Fassadenbegruenung Hauptsitz Sky-Frame Frauenfeld
  (1'100 m² begruente Flaeche, CHF 450'000 Bepflanzung/Substrat, CHF 10-20/m²·a Unterhalt,
  Pflegeaufwand 2×/Jahr à 2 Tage/3-4 Personen) — beide direkt als Kostenanker fuer JANS-
  Devisierungen nutzbar.
- **SIA-112:2014-Planungs-Checkliste** (6 Phasen Strategische Planung bis Bewirtschaftung) als
  fertiges Pruefraster.

Status des Artikels von `emerging` auf **established** gehoben — es handelt sich nicht mehr um
einen Zwischenstand, sondern um eine offiziell publizierte, im Auftrag von BFE + Stadt Zuerich +
Stadt St. Gallen erstellte Schlusspublikation mit benannten Autoren und Kontaktstellen.

## Verifikations-Verdikt

Status-Hebung `emerging` → `established` bei `[[energie-pv-eignung-typenwahl]]` §6/§6b: kein
separater Adversarial-Verify-Lauf noetig, da die Quelle selbst bereits die hoechste in dieser KB
akzeptierte Evidenzstufe darstellt (offiziell publizierte Fachhochschul-Schlusspublikation im
Auftrag von Bund + zwei Staedten, mit Autoren-/Kontaktangaben, keine Grauliteratur/kein
Marketingdokument) — die Kennzahlen wurden wortgetreu bzw. direkt aus dem Originaltext
uebernommen, nicht interpretiert oder hochgerechnet.

## Naechste Schritte

- K41-K44 (Naturgefahren-Konzept-Ordner mit realem Projektbeleg, Klimafreundlichheizen.ch,
  Stadt Luzern 3D-Stadtmodell, Regensdorf-Lieferscheine) im naechsten Lauf erneut versuchen —
  der OneDrive-Sync-Blocker war lauf-uebergreifend konstant, sollte sich aber analog zum
  Lignum-Erdbeben-Praezedenzfall von selbst aufloesen.
- Der zitierte "technische Bericht" der GreenPV-Studie (detailliertere Grundlagen/Berechnungen,
  von der Broschuere selbst mehrfach als Vertiefungs-Fundstelle genannt) ist noch nicht gesucht/
  gelesen — bei Bedarf (reales JANS-Fassaden-PV-/Begruenungs-Projekt) nachziehen.
- PL-04 Energie ist nach diesem Lauf inhaltlich weitgehend ausgeschoepft (kein Ordner-Delta mehr
  gefunden) — kuenftige Laeufe eher Refresh-Checks (MuKEn-ZH-Stand, Pronovo-Foerdersaetze) als
  neue Ordner-Erschliessung.
