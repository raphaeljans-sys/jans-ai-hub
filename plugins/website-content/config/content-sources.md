# Content-Quellen — Website Content Agent

## Primaere Quelle: Dropbox

```
~/Library/CloudStorage/Dropbox/WEBSEITE JANS/01 CONTENT Agent/02_prozess PROJEKTE/
```

### Ordner-Prefix-Konvention

| Prefix | Bedeutung | Beispiel |
|---|---|---|
| PR | Projekt (gebaut/in Planung) | PR Schoental, PR Ardez |
| WB | Wettbewerb | WB Luzern, WB Davos |
| ST | Studie | ST Hochhausstudie |
| OB | Objekt (Moebel/Kleinobjekt) | OB Topographie |

### Bildnamens-Konvention

| Muster | Bedeutung | Verwendung |
|---|---|---|
| `YYMM_Projekt_P1.jpg` ... `_PNN.jpg` | Projektbilder (nummeriert) | Gallery-Bilder, sortiert nach Nummer |
| `XXXX_News_BFront.jpg` | Teaser-Bild (Frontansicht) | News-Teaser |
| `XXXX_Projekt.jpg` | Projekt-Teaser | Featured Image auf WordPress |
| `XXXX_News_BFront_CK.jpg` | Bearbeitete Version (CK = Claudia Klein) | Alternative Teaser-Version |

### Weitere Dropbox-Ordner (Kontext)

| Pfad | Inhalt |
|---|---|
| `00 KOMMUNIKATION Agent/` | Korrespondenz mit Webentwicklern |
| `02 CI PROZESS Agent/` | Corporate Identity, Branding |
| `03 GRAFIK Agent/` | Logo, Visitenkarten, Portraits |
| `04 WEBDESIGN Agent/02_CSS/` | CSS-Vorgaben (PDF + InDesign) |
| `04 WEBDESIGN Agent/00 Layout/` | Layout-Entwuerfe (PDF + InDesign) |
| `05 SEO Agent/` | SEO-Analysen und -Strategien |
| `06 REFERENZ Agent/` | Grafik- und Web-Referenzen |

## Sekundaere Quelle: OneDrive (Legacy)

```
~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/WE - 01 Content/_build by Wordpress/
```

Nummerierte Ordner (z.B. `031001_Ardez`, `032201_Grossmuenster`).
Aeltere Struktur, wird schrittweise durch Dropbox ersetzt.

## Teaser-Bilder

Teaser-Bilder (fuer die Projektuebersicht auf der Website) liegen separat:

**Dropbox:**
```
01 CONTENT Agent/02_prozess PROJEKTE/<Projektname>/XXXX_Projekt.jpg
```

**OneDrive:**
```
WE - 01 Content/_build by Wordpress/030000_Projekte_Teaserpictures/
```

## Workflow

1. Agent fragt: "Welche Quelle? Dropbox (Standard) oder OneDrive?"
2. Listet verfuegbare Projektordner auf
3. User waehlt Projekt
4. Agent scannt Ordner: Bilder zaehlen, Orientierung pruefen, Teaser identifizieren
