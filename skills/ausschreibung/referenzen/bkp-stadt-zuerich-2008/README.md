# BKP-Katalog Stadt Zürich (Stand 2008) — Ordnernamen-Referenz

**`BKP-Katalog-Stadt-Zuerich-2008.pdf`** — Baukostenplan BKP Hochbau, Amt für Hochbauten
der Stadt Zürich (Stand 2008). Massgebend für die **Benennung der Gewerk-Ordner** in der
JANS-Projektablage (`03 BKP/<Gewerk>/`).

## Konvention Gewerk-Ordner

Der **übergeordnete Gewerk-Ordner** trägt die 3-stellige BKP-Gruppen-Position „… gesamt"
mit dem Gruppentitel — **nicht** eine feinere Unterposition. Beispiel Sanitär:

- richtig: **`250 Sanitäranlagen`**
- falsch: ~~`251.00 Sanitärarmaturen`~~ (251 ist nur die Unterposition „Allgemeine Sanitärapparate")

Die feineren Positionen (251 ff.) erscheinen im **LV** (Positionsstruktur), nicht im Ordnernamen.

## Gruppen-Übersicht (3-stellige „… gesamt"-Positionen → Ordnername)

| BKP | Gewerk-Ordnername |
|---|---|
| 110 | Räumungen, Terrainvorbereitungen |
| 210 | Rohbau 1 (211 Baumeisterarbeiten) |
| 220 | Rohbau 2 |
| 230 | Elektroanlagen |
| 240 | Heizungs-, Lüftungs-, Klima- und Kälteanlagen |
| **250** | **Sanitäranlagen** |
| 258 | Kücheneinrichtungen (Unterposition von 25) |

## Gruppe 25 Sanitäranlagen — Feinstruktur (für LV-Positionen)

- **250** Sanitäranlagen gesamt
- **251** Allgemeine Sanitärapparate (.0 Lieferung · .1 Montage)
- **252** Spezielle Sanitärapparate
- **253** Sanitäre Ver- und Entsorgung (.0 Kalt-/Warmwasser · .1 Wasseraufbereitung · .2 Abwasser · .4 Brandlöscheinrichtungen · .5 Gas techn. · .6 Gas medizintechnisch)
- **254** Sanitärleitungen
- **255** Dämmungen Sanitärinstallationen
- **256** Sanitärinstallationselemente
- **257** Elektro- und Pneumatik
- **258** Kücheneinrichtungen
- **259** Übriges / Sammelvergabe Sanitär 250/259

## Verhältnis zu BKP 2017 (CRB)

- **Ordnernamen** der Gewerk-Ordner: Stadt-Zürich-BKP 2008 (dieses Dokument), 3-stellige Gruppe.
- **LV-Positionscodes**: weiterhin CRB BKP 2017 zulässig; bei JANS-Projektablage hat die
  Stadt-ZH-Systematik für die Ordnerbenennung Vorrang. Quelle BKP 2017: `references/bkp-2017/`.
