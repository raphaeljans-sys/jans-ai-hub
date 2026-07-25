# Roh-Beleg: 2518 Grubenackerstrasse 7 — dünner Einzelfall, unverifiziert

Quelle: SharePoint `AR - 01 Projekte/2518_Grubenackerstrasse_7/04_KostenTermine/1_Kosten/
2_Kostenschätzung/230405_GKS/230405_GKS.docx`. Extrahiert Run 2 (25.07.2026) durch Subagent.

## Wichtiger Vorbefund: Fehlablage im Projektordner

Der Unterordner `2_Kostenschätzung/230324 Kostenvergleich Liftposition/` enthält KEINE Daten
zu Grubenackerstrasse 7, sondern zu zwei fremden Projekten ("Abbruch & Neubau EFH Reckholdern
20", Bauherr Hans Wild; "Sanierung WEZ Laternengasse 5 / Grossmünsterplatz 7", Nova Property
Fund Management AG). Nicht als Quelle verwendet (Rule `identifikatoren-verifizieren`). Der
Ordner `4_Baukosten` und `7_Nebenkostenrechnung` sind bestätigt leer.
**Empfehlung an Raphael:** Ordner bei Gelegenheit bereinigen (ausserhalb Scope dieses
Read-only-Loops, keine Aktion durch Claude).

## Auswertung 230405_GKS.docx

Volltext des Dokuments (eine Seite, Autor Raphael Jans, erstellt 05.04.2023):

```
GKS
rj 230405

TG: 94.0m2 x 3m         = 282 m3
ZG: 3.9m2 x 1.7m        = 7 m3
UG: 111.3m2 x 3.0m      = 334 m3
EG: 180.0m2 x 3.0m      = 540 m3
OG: 50m2 x 10.1m        = 505 m3
Total:                  = 1668 m3

1668m3 x CHF 950.-   = 1'584'600.- / 1.6 Mio
1668m3 x CHF 1050.-  = 1'751'400.- / 1.75 Mio
```

- Nutzung: **fehlend** — nicht im Dokument genannt (nur Ordnername "Grubenackerstrasse 7",
  nicht im Dokument selbst verifiziert)
- Standard: nicht ausgewiesen
- Region/Ort: fehlend im Dokument
- Preisstand: 05.04.2023
- GV: **nicht SIA-416-verifiziert** — einfache Fläche-mal-Höhe-Rechnung je Geschoss
  (TG/ZG/UG/EG/OG), ohne Bezug auf SIA 416. Als "rohes Volumen 1668 m³" dokumentiert, nicht
  als GV übernommen.
- BKP 1–5: **fehlend** — keine Gliederung, nur zwei pauschale CHF/m³-Multiplikationen
- MWSt-Status: nicht vermerkt
- Bauherrschaft: fehlend im Dokument (nicht recherchiert, ausserhalb Auftragsumfang)
- Gesamtkosten: Bandbreite CHF 1.58–1.75 Mio (950–1'050 CHF/m³ auf rohes Volumen)

## Einordnung für die Kennwerte-KB

Datenqualität zu dünn für eine Promotion auf "belegt": kein SIA-416-GV, keine BKP-Gliederung,
Nutzung unbekannt, Bauherrschaft unbekannt. Wird als **Einzelfall n=1, unverifiziert** in
`wiki/kennwerte.md` unter "Erste reale Datenpunkte" mit vollem Kaveat geführt (950–1'050
CHF/m³ auf rohem, nicht normkonformem Volumen) — NICHT zur Bildung eines Medians mit dem
Seed-Band verwendet, da die Provenienzkette zu schwach ist.

Abrufdatum: 2026-07-25.
