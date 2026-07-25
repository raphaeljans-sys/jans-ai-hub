# Studie 2622 — Bahnhofstrasse 27, Wangen SZ · Grobkosten & Kaufpreis (19.06.2026)

Arbeits-/Repro-Bundle zur Grobkostenschaetzung der Folgekosten (10 J) und der bereinigten
Kaufpreisempfehlung nach der Besichtigung vom 19.06.2026. Damit kein Wissensstand verloren geht,
ist alles hier versioniert (GitHub-Backup) und reproduzierbar.

## Dateien

| Datei | Inhalt | Praesentierbar |
|---|---|---|
| `260619_Grobkostenschaetzung_Folgekosten_*.pdf` | A4: Folgekosten Block A (Instandsetzung) + B (Dachausbau), Zeithorizont | ja |
| `260619_Kaufpreisempfehlung-bereinigt_*.pdf` | A4: bereinigte Kaufpreisempfehlung (Kaufpreis-Wasserfall) | ja |
| `260619_Brandschutz-Vorabklaerung_Treppenhaus_*.pdf` | A4: Brandschutz-Vorabklaerung Treppenhausbreite 1.0 m (VKF 16-15), Abweichung + Kompensation | ja |
| `260619_Repro_Wissensstand_*.md` / `.pdf` | vollstaendiger Wissensstand: Daten, Methodik, Kennwerte, Ergebnisse, offene Punkte | Doku |
| `260619_Kostenmodell_*.config.json` | maschinell reproduzierbare Eingaben/Kennwerte/Ergebnisse | nein |
| `folgekosten.html` / `kaufpreisempfehlung.html` / `brandschutz_vorabklaerung.html` | Render-Quellen | nein |

## Reproduktion

```bash
python3 -m weasyprint folgekosten.html        260619_Grobkostenschaetzung_Folgekosten_Bahnhofstrasse-27_Wangen-SZ.pdf
python3 -m weasyprint kaufpreisempfehlung.html 260619_Kaufpreisempfehlung-bereinigt_Bahnhofstrasse-27_Wangen-SZ.pdf
```

## SharePoint-Ablage (Zielordner)

`sites/JANS.PROJEKTE/03 Studien/2622 Bahnhofstrasse 27 Wangen SZ/`
- Kosten-/Kaufpreis-A4 → `09_Dokumente/04_Bewertung/`
- Brandschutz-Vorabklaerung → `09_Dokumente/02_Baurecht/`
- Repro-Record + Konfig → `09_Dokumente/06_Arbeitsdokumente/`
- (Kopie der A4 in `02_Korrespondenz/260609_KV Dachausbau/` sinnvoll, da KV-Thread)

## Kernergebnis

- Folgekosten 10 J: **CHF 0.95–1.6 Mio** (Block A 0.46–0.84 + Block B 0.47–0.75) ≈ 31–53 % des Kaufpreises.
- Bereinigte Kaufpreisempfehlung (Halten): **~CHF 2.35 Mio** (Ziel 2.25 / Limite 2.50).
