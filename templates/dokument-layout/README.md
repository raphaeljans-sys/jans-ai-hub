# Dokument-Layout-Vorlage

Generator-Vorlage zur Erstellung von DOCX/PDF-Dokumenten im JANS-Standard-Layout.

## Layout-Konvention

Verbindlich definiert in: `/Volumes/daten/jans-ai-hub/rules/dokument-layout-standard.md`

Kurzfassung:
- **A4**, 20 mm Raender
- **Cambria 11 pt** durchgaengig schwarz
- **Keine Farben, keine Tabellenrahmen, keine Hintergrundflaechen**
- H1 18 pt fett, H2 12 pt fett
- Bullets mit Bindestrich, nummerierte Listen mit "1."
- Footer: Verfasser links, Seite X von Y rechts

## Verwendung

### 1. Vorlage kopieren

```bash
cp /Volumes/daten/jans-ai-hub/templates/dokument-layout/build-document.template.js /tmp/build_<projekt>.js
```

### 2. Anpassen

Im kopierten Skript:
- `OUT` auf Ziel-Pfad anpassen (Konvention: `YYMMDD_titel.docx`)
- Im `INHALT`-Bereich Dokument-Inhalt mit den Helper-Funktionen befuellen:
  - `h1(text)` — Titel
  - `h2(text)` — Abschnitt
  - `para(text, opts)` — Absatz
  - `paraRich([runs], opts)` — Absatz mit gemischter Formatierung
  - `stamm(label, wert)` — Label/Wert-Zeile (z.B. Stammdaten)
  - `itemBold(praefix, text)` — Bullet mit fettem Praefix
  - `itemNum(text)` — Nummeriertes Item
  - `tcell(text, w, opts)` — Borderlose Tabellenzelle
  - `layoutTable(widths, rows)` — Borderlose Tabelle (fuer Spalten-Ausrichtung)
  - `footer(verfasserzeile)` — Standard-Footer

### 3. Bauen

```bash
NODE_PATH=$(npm root -g) node /tmp/build_<projekt>.js
```

### 4. PDF erzeugen

```bash
cd <ausgabe-ordner>
soffice --headless --convert-to pdf "YYMMDD_titel.docx"
```

### 5. Pruefen

```bash
pdfinfo "YYMMDD_titel.pdf" | grep Pages
pdftoppm -jpeg -r 80 "YYMMDD_titel.pdf" /tmp/preview
# Visuell pruefen mit: open /tmp/preview-1.jpg
```

## Voraussetzungen

- Node.js: `node --version` (mind. 18.x)
- docx-Modul: `npm install -g docx` (einmal pro Station)
- LibreOffice: `which soffice` (fuer PDF-Konvertierung)
- Poppler: `which pdfinfo` (fuer Seitenpruefung)

## Beispiel

Ein vollstaendiges Beispiel im Standard-Layout liegt unter:
```
/Volumes/daten/jans-ai-hub/output/offertenpruefung/2026/260505_2619_Kispi_Therapiestation_Kuecheneinrichtung_Gastro-Online/260505_Entscheidungshilfe_Bauherrschaft_Kispi-Therapiestation_Gastro-Online.docx
```

## Anpassungen

Wenn ein Dokument explizit ein anderes Layout braucht (Buerokorrespondenz mit Logo, Print-Vorlage mit Akzentfarbe, etc.):
- Vorlage kopieren und gezielt anpassen
- Die Layout-Rule (`dokument-layout-standard.md`) NICHT aendern, sie ist der Default
- Die Anpassung im jeweiligen Build-Skript dokumentieren
