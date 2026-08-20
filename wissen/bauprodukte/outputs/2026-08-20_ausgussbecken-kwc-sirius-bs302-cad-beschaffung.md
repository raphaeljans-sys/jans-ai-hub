---
title: Ausgussbecken KWC/Franke SIRIUS BS302, Identifikation und CAD-Beschaffung beim Hersteller
status: belegt
last_updated: 2026-08-20
sources:
  - KWC Professional Produktdatenblatt 207.0000.057-de_DE.pdf, Druckdatum 13.08.2026
  - KWC Professional Produktseite kwc-professional.com/en/sirius_p207.0000.057
  - Sanitas Troesch Shop, Artikel 7362 111.000.000 (Handelsnummer CH)
  - Projekt 2619 KISPI, Umbau PPTS (Anwendungsfall)
links: [duschwanne-nischeneinbau-rohlichtmass]
---

# Ausgussbecken SIRIUS BS302: Identifikation und CAD-Beschaffung

Anwendungsfall 2619 KISPI, Umbauprojekt PPTS (20.08.2026). Verallgemeinerbar:

## 1. Marken- und Nummernkette (belegt)

Das im Schweizer Sanitaerhandel als «Franke SIRIUS BS302» gefuehrte Ausgussbecken
laeuft beim Hersteller heute unter **DELABIE | KWC Professional**. Drei Nummern
bezeichnen dasselbe Produkt und sind nicht austauschbar zu verwenden:

- **7362 111.000.000** Handelsnummer Sanitas Troesch (die Nummer, die in Devis und
  Bestellungen auftaucht)
- **207.0000.057** Hersteller-Artikelnummer, Ausfuehrung **mit** Edelstahl-Klapprost
- **2000090080** Hersteller-Artikelnummer, Ausfuehrung **ohne** Klapprost
- EAN/GTIN 7612979000344

Wer nur «BS302» sucht, trifft beide Ausfuehrungen. Der Klapprost entscheidet die Nummer.

## 2. Der Beschaffungsweg fuer Hersteller-CAD (wiederverwendbar)

KWC Professional legt saemtliche Produktunterlagen offen unter einem festen
URL-Muster ab, ohne Login und ohne Formular:

    https://kwc-professional.com/assets-original/products/<ArtNr>/...

Fuer 207.0000.057 belegt:

- `PRD_AR_Snks_SIRIUSUtilitySink_BS302.dwg` (AutoCAD 2013-2017, 706 kB)
- `data_sheets/207.0000.057-de_DE.pdf` (Datenblatt mit Massskizze)
- `technical-drawing_207.0000.057_1.tif` (Massblatt, 5250 x 5250 px, 1 bit)
- `2000090080/mounting-instruction_2030058418.pdf` (Montageanleitung; liegt unter der
  Artikelnummer der Grundausfuehrung, nicht unter der des Klapprost-Modells)

**Vorgehen:** Produktseite `kwc-professional.com/en/<serie>_p<ArtNr>` abrufen, die
Download-Tabelle auslesen, Dateien per `curl -sSL` ziehen. Die DWG kommt als
AutoCAD-2013-Format und ist in ArchiCAD direkt lesbar; eine Konvertierung entfaellt.

Das Muster ist auf andere KWC/DELABIE-Sanitaerapparate uebertragbar und ersetzt die
Anfrage beim Lieferanten. Ob andere Hersteller (Franke Kitchen Systems, Schmidlin,
Laufen) denselben offenen Weg bieten, ist nicht geprueft.

## 3. Massgrundlage BS302 (aus dem Datenblatt)

Gesamt 500 x 215 x 400 mm (B x H x T), Becken 420 x 170 x 320 mm, Spritzschutz-
Aufkantung 40 mm, Ablauf hinten rechts, Auslauf 105 mm von der Wand, Standrohrventil
G 1 1/2 B, Ablaufbohrung DN 40, kein Ueberlauf, Wandmontage auf lose beiliegenden
Konsolen, CNS 1.4301 V2A, 1.2 mm, seidenmatt. Das Massblatt liefert Vorderansicht,
Seitenschnitt und Draufsicht bemasst, also die drei Ansichten, die ein Raumplan
1:20 braucht.

## 4. Abgrenzung zum Spital-Ausguss (Befund aus dem Anwendungsfall)

Im KISPI-Neubau ist im Raumtyp «Ausguss, Steckbeckenautomat, Entsorgung» (AT 568)
nicht dieses Becken gesetzt, sondern **Apparatetyp 7.1, Ausguss mit Ringspuelung und
Pumpe** (Position 2510-035). Ein einfaches Wandausgussbecken mit Klapprost und ein
Spitalausguss mit Ringspuelung sind hygienisch und installationstechnisch nicht
dasselbe. Bei Umbauten in Spitalbauten deshalb immer zuerst klaeren, welcher der
beiden Typen der Nutzer verlangt, bevor ein Apparat ausgeschrieben wird.
