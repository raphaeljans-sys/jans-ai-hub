# Design System — raphaeljans.ch

Quelle: theme.json des JANS Block-Themes (WordPress 6.9.4)

## Schriften (aus theme.json)

| Schrift | Font-Family | Gewicht | Slug | Verwendung |
|---|---|---|---|---|
| DM Sans | "DM Sans", sans-serif | 800 | `dm-sans` | Body, Titel, Fliesstext |
| Fragment Mono | "Fragment Mono", monospace | 400 | `fragment-mono` | Navigation, Labels, Monospace |

## Schriftgroessen (aus theme.json)

| Name | Slug | Groesse |
|---|---|---|
| Small | `small` | 0.9375rem (15px) |
| Medium | `medium` | 1.125rem (18px) |
| Large | `large` | 1.75rem (28px) |
| Extra Large | `x-large` | 3.125rem (50px) |

## Farben (aus theme.json)

Minimalistisch — Base/Contrast adaptiv:
- Base: Weiss (hell) / adaptiv
- Contrast: Schwarz/Dunkelgrau
- Transparent: fuer Overlays

## Layout (aus theme.json)

| Einstellung | Wert |
|---|---|
| Content-Breite | 645px |
| Wide-Breite | 9999px (= unbegrenzt) |

## Spacing-System (aus theme.json)

| Name | Slug | Wert |
|---|---|---|
| Tiny | `10` | 10px |
| X-Small | `20` | 15px |
| Small | `30` | clamp(20px, 4vw, 30px) |
| Regular | `40` | clamp(30px, 4vw, 40px) |
| Large | `50` | clamp(40px, 6vw, 70px) |
| X-Large | `60` | clamp(50px, 8vw, 100px) |
| XX-Large | `80` | clamp(70px, 10vw, 140px) |

## Single Template (fuer Projekte)

Das `single` Template wird fuer ALLE Projekte verwendet:

```
Header (sticky)
  ↓
Post-Title (DM Sans, large, font-weight 400)
ACF Project Location Block
  ↓
Spacer (15px, nur Mobile)
  ↓
Post-Content (alignwide, contentSize 1100px, wideSize 9999px)
  ↓
Spacer (spacing-60)
Footer
```

Der Content-Bereich ist der Teil den wir befuellen — mit `contentSize: 1100px` und `wideSize: 9999px`.

## Bestehende Content-Patterns (aus Analyse der 20 Projekte)

Von den 20 Projekten haben nur 4 echten Content. Sie verwenden 3 verschiedene Patterns:

### Pattern A: Gallery (Projekt #111)
- `wp-block-gallery columns-2 alignwide` (Hero, 2 Bilder)
- `wp-block-gallery columns-4 alignwide` (Detail, 4-5 Bilder)
- `wp-paragraph` (Text)
- Nutzt `is-thumbnail-vertical`, `margin-top` Styles, Lightbox

### Pattern B: Hero + Slider (Projekt #110)
- `wp-block-group alignwide` > `wp-block-image aligncenter` (Hero Einzelbild)
- `jans-image-slider-gallery` (Custom Embla.js Slider, 7 Slides)
- `wp-paragraph` (Text)

### Pattern C: Hero + Columns + Slider (Projekt #89)
- `wp-block-image aligncenter size-full` (Hero Einzelbild, Fullwidth)
- `wp-block-columns` in `wp-block-group alignwide` (4er-Grid, aspect-ratio:1)
- `jans-image-slider-gallery` (Custom Slider, 5 Slides)
- Spacing: `wp--preset--spacing--60`

### Pattern D: Text + Columns (Projekt #104)
- `wp-paragraph` (Text zuerst)
- `wp-block-columns alignwide` (2 Spalten, 2 Bilder)

## Custom Block: jans-image-slider-gallery

Dein Theme hat einen eigenen Slider-Block basierend auf Embla.js:
- CSS-Klasse: `jans-image-slider-gallery`
- Data-Attribute: `data-embla-options`, `data-embla-viewport`
- Navigation: Prev/Next Buttons
- Slides: `jans-image-slider-gallery__slide` > `jans-image-slider-gallery__figure` > `img`
- Kein Standard-WordPress-Block — muss ueber den Block-Editor eingefuegt werden

## Figcaption-Struktur (2 Varianten gefunden)

### Variante 1 (Pattern A + B):
```html
<figcaption class="wp-element-caption">
  Caption Text
  <span class="wp-block-image__alt-text">Subcaption</span>
</figcaption>
```

### Variante 2 (Pattern C):
```html
<figcaption>
  <strong>Caption</strong><br>Subcaption
</figcaption>
```

## CSS-Vorgaben (Referenz)

Detaillierte CSS-Vorgaben vom Webdesigner:
```
~/Library/CloudStorage/Dropbox/WEBSEITE JANS/04 WEBDESIGN Agent/02_CSS/CSS Vorgaben.pdf
```

Layout-Entwuerfe:
```
~/Library/CloudStorage/Dropbox/WEBSEITE JANS/04 WEBDESIGN Agent/00 Layout/
```
