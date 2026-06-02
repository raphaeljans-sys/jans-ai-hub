# Gutenberg Block Template — Projektseite

Dieses Template beschreibt die exakte Block-Struktur fuer Projektseiten auf raphaeljans.ch.
Es basiert auf der analysierten Struktur der bestehenden 20 Projekte.

## Vollstaendiges Template

Der Content besteht aus diesen Bloecken in dieser Reihenfolge:

1. **Hero-Gallery** (2 Spalten, wide) — die ersten 2 Hauptbilder
2. **Detail-Gallery** (4 Spalten, wide) — weitere Bilder (Plaene, Details, Renderings)
3. **Text-Bloecke** — Untertitel (z.B. "Competition: 3rd place") und Beschreibung

## Block-Markup

### 1. Hero-Gallery (2 Spalten)

```html
<!-- wp:gallery {"linkTo":"none","columns":2,"align":"wide","className":"wp-block-gallery-1"} -->
<figure class="wp-block-gallery alignwide has-nested-images columns-2 wp-block-gallery-1 is-layout-flex wp-block-gallery-is-layout-flex">

{{HERO_IMAGES}}

</figure>
<!-- /wp:gallery -->
```

### 2. Detail-Gallery (4 Spalten)

```html
<!-- wp:gallery {"linkTo":"none","columns":4,"align":"wide","className":"wp-block-gallery-2"} -->
<figure class="wp-block-gallery alignwide has-nested-images columns-4 wp-block-gallery-2 is-layout-flex wp-block-gallery-is-layout-flex">

{{DETAIL_IMAGES}}

</figure>
<!-- /wp:gallery -->
```

### 3. Text-Bloecke

```html
<!-- wp:paragraph -->
<p>{{SUBTITLE}}</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>{{DESCRIPTION}}</p>
<!-- /wp:paragraph -->
```

## Bild-Block (Landscape)

Fuer Bilder mit Breite > Hoehe:

```html
<!-- wp:image {"id":{{MEDIA_ID}},"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large wp-lightbox-container">
<img loading="lazy" decoding="async" src="{{IMAGE_URL}}" alt="{{ALT_TEXT}}" class="wp-image-{{MEDIA_ID}}" style="{{MARGIN_TOP_STYLE}}" />
<figcaption class="wp-element-caption">{{CAPTION}}<span class="wp-block-image__alt-text">{{SUBCAPTION}}</span></figcaption>
</figure>
<!-- /wp:image -->
```

## Bild-Block (Portrait)

Fuer Bilder mit Hoehe > Breite — zusaetzliche Klasse `is-thumbnail-vertical`:

```html
<!-- wp:image {"id":{{MEDIA_ID}},"sizeSlug":"large","linkDestination":"none","className":"is-thumbnail-vertical"} -->
<figure class="wp-block-image size-large wp-lightbox-container is-thumbnail-vertical">
<img loading="lazy" decoding="async" src="{{IMAGE_URL}}" alt="{{ALT_TEXT}}" class="wp-image-{{MEDIA_ID}}" />
<figcaption class="wp-element-caption">{{CAPTION}}<span class="wp-block-image__alt-text">{{SUBCAPTION}}</span></figcaption>
</figure>
<!-- /wp:image -->
```

## Platzhalter-Tokens

| Token | Beschreibung | Beispiel |
|---|---|---|
| `{{MEDIA_ID}}` | WordPress Media-ID (nach Upload) | `564` |
| `{{IMAGE_URL}}` | Volle URL zum Bild | `https://raphaeljans.ch/wp-content/uploads/2026/04/bild.jpg` |
| `{{ALT_TEXT}}` | Alt-Text des Bildes | `Ansicht Suedost` |
| `{{CAPTION}}` | Hauptbeschriftung | `Situation` |
| `{{SUBCAPTION}}` | Zusatzinfo in span | `Rendering` |
| `{{SUBTITLE}}` | Untertitel/Auszeichnung | `Competition: 3rd place` |
| `{{DESCRIPTION}}` | Projektbeschreibung (1-3 Absaetze) | Freitext |
| `{{MARGIN_TOP_STYLE}}` | Vertikale Ausrichtung | `margin-top: 17.6%;` |
| `{{HERO_IMAGES}}` | Zusammengesetzte Bild-Bloecke | 2 Bild-Bloecke |
| `{{DETAIL_IMAGES}}` | Zusammengesetzte Bild-Bloecke | 4+ Bild-Bloecke |

## Orientierungs-Logik

```
IF image_height > image_width:
  → Portrait → Klasse "is-thumbnail-vertical" hinzufuegen
  → Kein margin-top noetig
ELSE:
  → Landscape → Standard-Klassen
  → margin-top berechnen wenn in gemischter Gallery mit Portrait-Bildern
```

## Margin-Top Berechnung (fuer gemischte Galleries)

Wenn in einer Gallery-Zeile Landscape neben Portrait steht:

```
margin_top_percent = ((max_height_in_row - this_height) / max_height_in_row) * 50
style="margin-top: {margin_top_percent}%;"
```

Nur auf Landscape-Bilder anwenden, die neben hoeheren Portrait-Bildern stehen.

## Typische Bild-Verteilung

| Galerie | Spalten | Typische Bilder |
|---|---|---|
| Hero | 2 | 1 Hauptansicht (Landscape) + 1 Detail (Portrait oder Landscape) |
| Detail | 4 | Grundrisse, Schnitte, Renderings, Fotos — gemischt |

## Figcaption-Konvention

- **Caption**: Beschreibt WAS zu sehen ist (z.B. "Situation", "Grundriss EG", "Ansicht Nord")
- **Subcaption** (span): Beschreibt den TYP (z.B. "Rendering", "Foto: Hannes Henz", "Modell")
- Beide sind optional — leere Strings sind erlaubt
