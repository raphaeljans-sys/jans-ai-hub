# NPK-2000-Struktur-Vorbilder

Aufbereitete Gliederungen aus dem alten Katalog **NPK 2000 / BHB 1996**
(`08_Bauleitung/Ausschreibungvorlagen/NPK 2000  BHB 1996/`).

## ⚠️ Status: nur Struktur, nicht Inhalt

- **Preise = Basis 1996** → reiner Richtwert, NIE als aktueller Preis verwenden.
- **Texte teils veraltet** → aktuelle Formulierungen aus NPK-Wegleitung 2020 + `.crbx`-Goldstandards.
- **Gültig bleibt die Gliederung** (Positionslogik HP.UP.Var, Kapitelaufbau) als Vorbild.

## Verwendung

Wenn für ein Gewerk (noch) kein `.crbx`-Goldstandard vorliegt, dient die
NPK-2000-Struktur als Gerüst: Positionsnummerierung und Abschnittslogik
übernehmen, Texte/Mengen/Preise aktuell befüllen.

## Konverter

```bash
soffice --headless --convert-to csv:"Text - txt - csv (StarCalc)" "<kapitel>.xls"
python3 ../../tools/npk2000_struktur.py "<kapitel>.csv" -o "<kapitel>-struktur.md"
```

## Vorhandene Beispiele

- `672-maler-struktur.md` — Maler
- `314-maurer-struktur.md` — Maurerarbeiten

Der vollständige Katalog (109 Kapitel) liegt im Archiv und kann bei Bedarf
kapitelweise konvertiert werden.

## Rangfolge der LV-Grundlagen (verbindlich)

1. **`.crbx`-Goldstandard** (eigene JANS-LVs) — höchste Priorität
2. **NPK-Wegleitung 2020** (offizielle CRB-Quelle, im Archiv)
3. **NPK-2000-Struktur** (dieser Ordner) — nur Gerüst, wenn 1+2 fehlen
4. **BUB5BN_1 Beschrieb-Texte** (Word) — Materialformulierungen
