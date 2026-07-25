# Training Run 30 — Recht & Norm + Brandschutz (Token-Vollgas)

## Vorlauf-Notiz

Beim Einstieg wurde ein orphaned Vorlauf entdeckt: **Run 29** (Kartenportale + Energie, K20/K21 +
E18-E26) war inhaltlich bereits vollstaendig ausgefuehrt und per NAS-Selfcommit `74cb18e6`
gesichert, aber ohne Output-Report/CHANGELOG-Eintrag. Nachgetragen als
`outputs/2026-07-13_training-run29.md` + CHANGELOG-Eintrag, bevor dieser Lauf begann.

## Domaenen dieses Laufs

Rotation nach Run 29 (Kartenportale + Energie): **Recht & Norm (PL-02) + Brandschutz (PL-03)**.

## Vorgehen

Da beide Domaenen nach 29 Laeufen bereits sehr weit erschlossen sind (21 Recht/Norm- und
25 Brandschutz-Lektionen im Curriculum), wurde zuerst die vollstaendige Ordnerstruktur von
`PL - 02_Recht_Norm/` und `PL - 03 Brandschutz/` gegen das Curriculum abgeglichen, um wirklich
unerschlossene Einzelordner/-dateien zu finden — statt bereits dokumentierte Themen zu wiederholen.
Gefunden: sechs genuine Neufunde (fuenf Recht/Norm, ein Brandschutz-Delta) plus die geloeste
technische Restaufgabe B25.

## Recht & Norm — sechs Fragen/Funde (R22-R26)

1. **2-Stunden-Schatten-Grobnachweis Kt. ZH** (`03_Arbeitshilfen/2h Schatten/`): § 284 Abs. 4
   PBG / § 30 ABV, Konstruktionsverfahren L=H·cot β, Azimut/Sonnenhoehe-Tabelle mittlere
   Wintertage → NEU [[recht-norm-arbeitshilfen-planungsdetails]] §1.
2. **Post-Briefkastenanlage** (`03_Arbeitshilfen/Post Briefkastenanlage/`): UVEK-Postverordnung
   1998, Standort je Gebaeudetyp, Mindestmasse Brief-/Ablagefach, Paketboxen → NEU
   [[recht-norm-arbeitshilfen-planungsdetails]] §2.
3. **Absturzsicherungen im Hochbau** (`04_Merkblätter/Absturzsicherungen Richtlinie.pdf`):
   Richtlinie Stadt Zuerich 1.6.2019 — Gelaender/Bruestungshoehen 100/90 cm, kindersicher/nicht
   kindersicher, Handlauf-Pflicht, 15-%-Abweichungsschwelle bei Bestand → NEU
   [[recht-norm-arbeitshilfen-planungsdetails]] §3.
4. **Zimmerzaehlung ZH-Wohnbaufoerderung** (`01_Gesetze/06_Wohnbauförderung/Zimmerzählung
   Wohnungen.pdf`): kantonales Merkblatt 15 (Mai 2017), halbe-Zimmer-Definition — eigenstaendiges
   kantonales Subventions-Instrument, kein Delta zur bereits dokumentierten Bundes-WBS-2015-Tabelle
   → Ergaenzung §2b [[recht-norm-raumprogramm-referenzwerke]].
5. **STWEG-Teilungsplan/digitale Aufteilungsplan-Empfehlung/Wertquoten-Benchmark**
   (`03_Arbeitshilfen/Teilungsplan Stockwerkeigentum Empfehlung/`): drei Materialien in einem
   Ordner — reales JANS-5-Phasen-Vorgehen (Ebmatingen/WOMA, 27.10.2025), amtliche
   swisstopo-Empfehlung "Digitale Dokumentation Stockwerkeigentum – Aufteilungsplan" (05.05.2020,
   INTERLIS DM.StWE, Plan-Pflichtinhalt Situationsplan/Stockwerk-Plaene/Gebaeudeschnitte), reale
   Wertquotenberechnung Hafenstrasse 46 Romanshorn (gewichtete Flaechen-Faktoren-Methode,
   Faktoren 0.20-1.20 je Nutzungsart/Geschoss) → NEU
   [[recht-norm-stweg-teilungsplan-wertquoten]], speist Skill `stockwerkeigentum` + Agent
   `wertquoten-rechner`.

**Bewusst nicht vertieft** (niedriger Ertrag/generisch, Zeit lieber in die obigen Funde investiert):
`03_Arbeitshilfen/Speziale Bauteile planen` (Tennis.pdf/Anlieferung_Coop.pdf, sehr nischig),
`04_Merkblätter/` restliche Masse (ueberwiegend generisches Firmen-/CAD-Administrationsmaterial
"Projektadmin AHB", kein Planungsgrundlagen-Bezug), `01_Gesetze/07_Skizzen Referenzen` (ein
einzelnes Foto ohne erkennbaren Fachbezug).

## Brandschutz — B25 geloest + ein Delta-Check (B25-B26)

1. **B25 GELOEST:** `06 Lignum Brandschutz/Lignum Erdbeben/Erdbebengerechte_Holzbauten_d.pdf` war
   seit Run 24 wiederholt als OneDrive-Cloud-Platzhalter unlesbar («Resource deadlock avoided»);
   in diesem Lauf war die Datei vollstaendig heruntergeladen (1.3 MB) und liess sich lesen — reines
   Sync-Timing, kein inhaltliches Problem. Inhalt: **"Erdbebengerechte mehrgeschossige
   Holzbauten"** (Lignum/SIA/SGEB/usic/HEV Schweiz, 2010) — SIA 260-267 (2003)/261/265,
   Ersatzkraft- vs. Antwortspektrenverfahren, Grundschwingzeit-Schaetzformel T1=2√u (261.39, fuer
   Holzbau treffender als die generische 261.38), duktiles Tragwerksverhalten via Kapazitaets-
   bemessung der Verbindungen Beplankung↔Rippen, Bestand → Merkblatt SIA 2018 (2004) → NEU §5m
   [[brandschutz-pl03-wegweiser]].
2. **Lignatec "Bauten in Holz — Brandschutz-Anforderungen"** (`06 Lignum Brandschutz/Lignum
   Bauten in Holz -  Brandschutzanforderungen/`): geprueft gegen den bereits dokumentierten §4b
   (Tragwerk-/Brandabschnitts-Feuerwiderstand nach Gebaeudehoehe×Nutzung) — **kein Delta,
   sondern eine eigenstaendige holzbau-spezifische Fassung derselben Tabelle**, aufgeschluesselt
   nach Geschosszahl (1/2/3/4/5-6/7-8) × Nutzung × Konzept (baulich/Sprinkler). Healthcare-
   Kernbefund: Beherbergungsbetriebe [a] (Krankenhaus/Alters-/Pflegeheim) sind die einzige
   Kategorie mit Anforderung bereits ab 1 Geschoss (EI60(nbb)); bei Hotels [b] reduziert eine
   Sprinkleranlage die Anforderung, bei [a] **nicht**. 5-6-geschossige Holzbauten brauchen
   zusaetzlich einen anerkannten Fachingenieur + Brandschutzkonzept vor Baubeginn → NEU §5n
   [[brandschutz-pl03-wegweiser]].

## Ehrlichkeit zum Umfang

Insgesamt 8 belegte Funde (6 Recht/Norm inkl. eines Delta-Checks ohne Delta, 2 Brandschutz) statt
der als Token-Vollgas-Zielwert genannten 10-16 Fragen. Grund: beide Domaenen sind nach 29 Laeufen
so weit erschlossen, dass die verbleibenden ungenutzten PDF-Ordner entweder bereits inhaltlich
abgedeckt sind oder generisches Firmen-/Verwaltungsmaterial ohne Planungsgrundlagen-Bezug enthalten
(padding mit Nicht-Funden haette die Qualitaet gesenkt, nicht die Abdeckung erhoeht). Alle
gefundenen Quellen wurden vollstaendig ausgewertet statt oberflaechlich mehrere angerissen.

## Register-Stand

`curriculum.md` (R22-R26, B25-B26), `wiki/QUESTIONS.md` (Abschnitte B und C), `wiki/INDEX.md`
(drei neue Artikel + zwei Ergaenzungen + Brandschutz-Wegweiser-Eintrag aktualisiert),
`raw/_INGESTED.md` (acht neue Zeilen) nachgefuehrt.

## Naechster Schritt

Rotation weiter mit Run 31 (Kartenportale + Energie). Fuer Brandschutz bleibt als optionale
Restaufgabe: Blaues-Buch-Kap.-18-Ordner ist laut §5e nur mit 2 von >10 Seiten belegt (technische
Luecke, Ordner enthaelt tatsaechlich nicht mehr Material — siehe B24). Fuer Recht & Norm:
`04_Merkblätter/eco/Nachhaltiges Bauen/` (mehrschichtige KBOB/eco-bau-Merkblattsammlung) wurde in
diesem Lauf nicht vertieft — bei Bedarf fuer ein spaeteres Nachhaltigkeits-/Oekobilanz-Thema
pruefen.
