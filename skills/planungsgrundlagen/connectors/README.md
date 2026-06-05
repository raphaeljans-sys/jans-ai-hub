# Geo-ZH-Connector — Planungsgrundlagen

Beschafft amtliche Geodaten zu einer Parzelle/Adresse. Standalone Node-Script (Node 18+,
nutzt globales `fetch`). Keine API-Keys noetig fuer EGRID/OEREB.

## Validierte Kette

```
Adresse  --(api3.geo.admin.ch SearchServer)-->  Koordinate LV95
Koordinate  --(identify ch.swisstopo-vd.amtliche-vermessung)-->  EGRID + Parzelle + BFS
EGRID  --(maps.zh.ch/oereb/v2/extract/pdf.pdf?EGRID=)-->  OEREB-Auszug (PDF)
```

Quelle der OEREB-URL: Fachstelle GIS Kt. ZH (Hannah Gies) — **kein Login noetig**.

## Aufrufe

```bash
# Nur EGRID + Parzelleninfo (maschinenlesbar)
node geo-zh.mjs --adresse "Giebelweg 12, Langnau am Albis" --json

# OEREB-Auszug ziehen und in mehrere Ordner ablegen
node geo-zh.mjs --adresse "Giebelweg 12 Langnau am Albis" --oereb \
  --out "/pfad/PL - 01 Kartenportale/OEREB-Auszug" \
  --out "/pfad/2621 Giebelweg 12/01_Plaene/99 Plangrundlage"

# Direkt per bekanntem EGRID
node geo-zh.mjs --egrid CH879777718909 --oereb --out "/pfad/Ziel"
```

## Flags

| Flag | Bedeutung |
|---|---|
| `--adresse <text>` | "Strasse Nr Ort" — Ort erhoeht die Treffsicherheit |
| `--plz <nnnn>` | optional, schaerft die Adresssuche |
| `--egrid <CH…>` | EGRID direkt setzen (ueberspringt Geocoding/Identify) |
| `--oereb` | OEREB-Auszug als PDF herunterladen |
| `--out <dir>` | Zielordner (mehrfach moeglich) |
| `--kanton <zh>` | OEREB-Service-Kanton (default: aus BFS abgeleitet) |
| `--json` / `--quiet` | Ausgabesteuerung |

## Dateinamen-Konvention

Der ZH-Server liefert via `content-disposition` bereits den JANS-Standardnamen:
`Oereb-Auszug_<BFS>_<Parzelle>_<JJJJ-MM-TT>.pdf` (z.B. `Oereb-Auszug_136_3338_2026-06-05.pdf`).
Der Connector uebernimmt diesen Namen unveraendert.

## Grenzen / TODO

- **Nur Kanton ZH validiert.** Jeder Kanton hat einen eigenen OEREB-Service;
  weitere Endpunkte (z.B. SZ) in `OEREB_SERVICE` ergaenzen, sobald gebraucht.
- Erweiterbar auf Zonenplan-, Hoehenmodell-, Orthofoto-Bezug ueber dieselben
  geo.admin/zh.ch-Endpunkte (Roadmap im Skill `planungsgrundlagen`).
- EGRID wird **nie erfunden**: bei 0 Treffern bricht der Connector ab (Rule
  `identifikatoren-verifizieren`).
