# Roh-Beleg: Zürcher Index der Wohnbaupreise — Nachtrag Stand 01.10.2025

Ergänzung zu `raw/zuercher-index-wohnbaukosten-1939-2025.md` (Run 8, 27.07.2026), nicht als
Projekt-Einzelfall, sondern als Fortschreibung des dort geführten Baupreisindex (Stufe 4,
`training/PROGRAMM.md`). Gefunden Run 16 (17.08.2026), Hauptkontext (WebSearch + WebFetch,
kein OneDrive/SharePoint-Zugriff nötig).

## Quelle

- Primärquelle direkt (bisher nur über die HEV-SZ-Kopie bekannt): Stadt Zürich, Statistik Stadt
  Zürich, Medienmitteilung «Zürcher Index der Wohnbaupreise Oktober 2025»,
  `https://www.stadt-zuerich.ch/de/aktuell/news/2026/zuercher-index-der-wohnbaupreise-oktober.html`
  (WebFetch erfolgreich, Volltext gelesen). Abrufdatum: 2026-08-17.
- Die bisher in dieser KB geführte HEV-SZ-Kopie (`https://www.hev-sz.ch/fileadmin/Files/
  Dokumente/Statistiken/1.5.pdf`, Stand-Vermerk im PDF-Kopf «01.01.2026/se») wurde am selben
  Tag erneut geladen und per `pdftotext -layout` geprüft — **unverändert seit dem letzten Abruf
  27.07.2026**, endet weiterhin bei 01.04.2025 = 1210.4 (Basis 1939=100). Die Sekundärquelle
  ist damit noch nicht auf den neusten Stand nachgezogen; der Primärquelle-Wert unten ist
  aktueller.

## Neuer Datenpunkt (offiziell, direkt aus der Medienmitteilung)

| Stichdatum | Indexwert | Basisperiode | Veränderung ggü. Vorperiode (01.04.2025) |
|---|---|---|---|
| 01.10.2025 | 116.1 Punkte | April 2020 = 100 | +0.3 % |

Deckt sich exakt mit der in dieser KB bereits geführten Basis-2020-Spalte (01.04.2025 = 115.8,
Basis 2020=100) — 115.8 × 1.003 = 116.1, rechnerisch konsistent. Gleiche amtliche Reihe, keine
neue Methodik.

## Umrechnung auf Basis 1939=100 (rechnerisch, nicht aus der Quelle selbst)

Die Medienmitteilung nennt nur die Basis-2020-Spalte. Umrechnung über den bekannten,
belegten Kettenfaktor der beiden Basen (aus `raw/zuercher-index-wohnbaukosten-1939-2025.md`:
01.04.2025 = 1210.4 [Basis 1939] = 115.8 [Basis 2020] → Faktor 1210.4/115.8 = 10.4525):

**01.10.2025 ≈ 116.1 × 10.4525 ≈ 1'213.5 (Basis 1939=100)** — als **rechnerisch abgeleiteter**
Wert gekennzeichnet, nicht als Primärquellen-Zahl.

## Auswirkung auf die Stufe-4-Tabelle in `wiki/kennwerte.md`

Neuster Anker verschiebt sich von 01.04.2025 (1210.4) auf 01.10.2025 (≈1'213.5) — eine
Verschiebung von nur **+0.26 %**. Damit liegt der bisher als "nach dem letzten Anker, keine
Extrapolation nötig" geführte Fall **8155 Niederhasli** (Preisstand 07/2025) jetzt zwischen
zwei bekannten Stützstellen: Interpolation ergibt einen Faktor von **1.0013** (+0.13 %) auf
den neuen Anker, also 1'032 → ≈1'033 CHF/m³ — **innerhalb der Rundungstoleranz, keine
inhaltliche Änderung**. Bewusst NICHT in der Kennwerte-Tabelle nachgetragen (Änderung liegt
unter der Darstellungsgenauigkeit der KB, würde nur Bearbeitungsrisiko ohne Erkenntnisgewinn
schaffen); der neue Anker ist unten in `wiki/kennwerte.md` als Fussnote dokumentiert, für den
Fall, dass eine grössere Publikationslücke (z.B. der nächste April-Stand) eine echte
Neuberechnung rechtfertigt.

## Ungeklärtes Signal — NICHT verwendet, nur vermerkt für einen künftigen Lauf

Eine WebSearch-KI-Zusammenfassung (nicht die Primärquelle selbst) deutete einen Stand
01.04.2026 (116.8 Punkte, Basis 2020=100, bzw. eine Rebasierung auf 100.6 Punkte Basis
Oktober-2025=100) an. Ein direkter Fetch-Versuch auf eine mutmassliche Pressemitteilungs-URL
(`.../zuercher-index-der-wohnbaupreise-april.html`) ergab **404 — nicht vorhanden**, die
offizielle BFS-Medienmitteilung (`dam-api.bfs.admin.ch/hub/api/dam/assets/26565755/master`)
erwies sich als Alt-Dokument von 2023 (Fehltreffer der Suche, falscher Asset). **Kein
Kennwert daraus übernommen** (Rule «Kennwerte nie raten» — unbestätigtes KI-Suchergebnis
ist kein Beleg). Für einen künftigen Lauf: direkt `https://www.stadt-zuerich.ch/ziw`
(von der Primärquelle selbst als Datenportal genannt) aufsuchen, sobald der April-2026-Stand
fällig sein sollte (Publikationsrhythmus laut Quelle: Juni/Juli für den Oktober-Stand,
analog vermutlich Dezember/Januar für den April-Stand — nicht verifiziert).
